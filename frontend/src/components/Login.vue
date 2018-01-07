<template>
  <main>
    <div class="container">
      <h2>Logga in</h2>
      <form v-on:submit.prevent="login">
        <div class="form-group row">
          <label for="email" class="col-sm-2 col-form-label">E-post</label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="email" placeholder="goran@system.se" required>
          </div>
        </div>
        <div class="form-group row">
          <label for="password" class="col-sm-2 col-form-label">Lösenord</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="password" placeholder="•••••••••" required>
          </div>
        </div>
       <button type="submit" class="btn btn-primary mb-2">Logga in</button>
       <p class="text-danger"></p>
      </form>
      <router-link to="/register" tag="button" class="btn btn-outline-success">
        Skapa konto
      </router-link>
    </div>
  </main>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Login',
  data () {
    return {
      errors: []
    }
  },
  methods: {
    login: function (event) {
      const form = event.target
      axios.post(process.env.BACKEND_URL + `/login`, {
        email: form.elements[0].value,
        password: form.elements[1].value
      }, { withCredentials: true })
      .then(response => {
        const user = response.data.user
        this.$store.commit('setUser', { user })
        if (this.$route.query.pizzeria) {
          this.$router.push({ name: 'Pizzeria', params: { id: this.$route.query.pizzeria } })
        } else {
          this.$router.push('/pizzerias')
        }
      })
      .catch(e => {
        this.errors.push(e)
      })
    }
  }
}
</script>

<style scoped>
</style>
