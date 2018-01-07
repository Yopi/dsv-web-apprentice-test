<template>
  <main>
    <div class="container">
      <h2>Registrera ett konto</h2>
      <form v-on:submit.prevent="signup($event)">
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
        <div class="form-group row">
          <label for="password-confirmation" class="col-sm-2 col-form-label">Lösenordskonfirmation</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="password-confirmation" placeholder="•••••••••" required>
          </div>
        </div>
        <div class="form-group row">
          <label for="name" class="col-sm-2 col-form-label">Namn</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="name" placeholder="Göran Johansson" required>
          </div>
        </div>
        <div class="form-group row">
          <label for="address" class="col-sm-2 col-form-label">Adress</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="address" placeholder="Gata 1, 123 44, Vivalla" required>
          </div>
        </div>
        <div class="col-auto">
        </div>
        <button type="submit" class="btn btn-primary mb-2">Registrera</button>
        <p class="text-danger"></p>
      </form>
    </div>
  </main>
</template>

<script>
import axios from 'axios'
import helpers from '@/helpers'

export default {
  name: 'Register',
  data () {
    return {
      errors: []
    }
  },
  methods: {
    signup: function (event) {
      const form = event.target
      axios.post(process.env.BACKEND_URL + `/users`, {
        user: {
          email: form.elements[0].value,
          password: form.elements[1].value,
          password_confirmation: form.elements[2].value,
          name: form.elements[3].value,
          address: form.elements[4].value
        }
      }, { withCredentials: true })
      .then(response => {
        document.getElementsByClassName('text-danger')[0].innerHTML = ''
        const user = response.data.user
        this.$store.commit('setUser', { user })
        this.$router.push('/')
      })
      .catch(e => {
        if (e.response) {
          var errors = ''
          for (var error in e.response.data.error) {
            errors = errors + error + ' ' + e.response.data.error[error] + '. '
          }

          document.getElementsByClassName('text-danger')[0].innerHTML = helpers.toSentenceCase(errors)
        }
        this.errors.push(e)
      })
    }
  }
}
</script>

<style scoped>
.container {
  margin-top: 15px;
}
</style>
