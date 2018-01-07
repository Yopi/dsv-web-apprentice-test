<template>
  <div id="app">
     <nav class="navbar navbar-expand-md navbar-dark bg-dark">
      <router-link to="/" class="navbar-brand">
        Pizzabeställning.nu
      </router-link>
      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <router-link to="/" tag="li" class="nav-item" active-class="active" exact>
            <a class="nav-link">Hem</a>
          </router-link>

          <router-link to="/pizzerias" tag="li" class="nav-item" active-class="active">
            <a class="nav-link">Pizzerior</a>
          </router-link>
        </ul>
        <ul class="navbar-nav" v-if="Object.keys(user).length >= 2">
          <router-link to="/profile" tag="li" class="nav-item" active-class="active" exact>
            <a class="nav-link">
              {{ user.name }}
            </a>
          </router-link>
        </ul>
        <div v-if="Object.keys(user).length < 2">
          <form v-on:submit.prevent="login($event)" class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Användarnamn">
            <input class="form-control mr-sm-2" type="password" placeholder="Lösenord">
            <button class="btn btn-outline-success my-sm-0" type="submit">Logga in</button>
            &nbsp;
            <router-link to="/register" tag="button" class="btn btn-outline-success">
              Skapa konto
            </router-link>
          </form>
        </div>
        <div v-else>
          <button v-on:click="logout" class="btn btn-outline-success">
            Logga ut
          </button>
        </div>
      </div>
    </nav>
    <router-view/>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'app',
  data () {
    return {
      errors: []
    }
  },
  computed: {
    user () {
      return this.$store.getters.getUser
    }
  },
  methods: {
    // Logins to the backend, saves to state store if works otherwise show error message
    login: function (event) {
      const form = event.target
      axios.post(process.env.BACKEND_URL + `/login`, {
        email: form.elements[0].value,
        password: form.elements[1].value
      }, { withCredentials: true })
      .then(response => {
        const user = response.data.user
        this.$store.commit('setUser', { user })
      })
      .catch(e => {
        this.errors.push(e)
      })
    },
    // Clear session store
    logout: function (event) {
      this.$store.commit('clearSession')
    }
  }
}
</script>
<style>
.username {
  color: white;
}
.container {
  margin-top: 15px;
}
</style>
