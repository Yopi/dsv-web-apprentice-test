<template>
  <main>
    <div class="container" v-if="user">
      <h2>Uppdatera ditt konto</h2>
      <form v-on:submit.prevent="update">
        <div class="form-group row">
          <label for="email" class="col-sm-2 col-form-label">E-post</label>
          <div class="col-sm-10">
            <input type="email" class="form-control" id="email" v-bind:value="user.email">
          </div>
        </div>
        <div class="form-group row">
          <label for="name" class="col-sm-2 col-form-label">Namn</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="name" v-bind:value="user.name" required>
          </div>
        </div>
        <div class="form-group row">
          <label for="address" class="col-sm-2 col-form-label">Adress</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" id="address" v-bind:value="user.address" required>
          </div>
        </div>
        <div class="form-group row">
          <label for="password" class="col-sm-2 col-form-label">Lösenord</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="password" placeholder="•••••••••">
          </div>
        </div>
        <div class="form-group row">
          <label for="password-confirmation" class="col-sm-2 col-form-label">Lösenordskonfirmation</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" id="password-confirmation" placeholder="•••••••••">
          </div>
        </div>
        <div class="col-auto">
        </div>
        <button type="submit" class="btn btn-primary mb-2">Uppdatera</button>
        <p class="text-danger"></p>
      </form>
      <h2>Du har handlat för totalt: {{ totalAmount(orders) }}kr</h2>
      <p>Dina senaste ordrar:</p>
      <div class="list-group">
        <div class="list-group-item list-group-item-action flex-column align-items-start" v-for="order in orders">
          <div class="d-flex w-100 justify-content-between">
            <h5 class="mb-1">{{ order.number_of_pizzas }} pizzor till priset av {{ order.amount }}</h5>
            <small>{{ parseDate(order.created_at) }}</small>
          </div>
          <p class="mb-1">{{ order.description }}</p>
        </div>
      </div>
    </div>
    <div class="container" v-else>
      <h1>Logga in för att se din profil</h1>
    </div>
  </main>
</template>

<script>
import axios from 'axios'
import helpers from '@/helpers'

export default {
  name: 'Profile',
  data () {
    return {
      errors: [],
      orders: []
    }
  },
  computed: {
    user () {
      return this.$store.getters.getUser
    }
  },
  methods: {
    totalAmount: function (orders) {
      if (!orders) {
        orders = [0]
      }

      return orders.reduce((acc, curr) => acc + curr.amount, 0)
    },
    parseDate: function (date) {
      let d = new Date(Date.parse(date))
      return d.toLocaleString()
    },
    update: function (event) {
      const form = event.target
      let userData = {
        email: form.elements[0].value,
        name: form.elements[1].value,
        address: form.elements[2].value
      }

      if (form.elements[3].value) {
        userData['password'] = form.elements[3].value
        userData['password_confirmation'] = form.elements[4].value
      }

      axios.patch(process.env.BACKEND_URL + `/user/` + this.user.id, {
        user: userData
      }, { withCredentials: true })
      .then(response => {
        document.getElementsByClassName('text-danger')[0].innerHTML = ''
        const user = response.data.user
        this.$store.commit('setUser', { user })
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
  },
  created () {
    axios.get(process.env.BACKEND_URL + `/orders`, { withCredentials: true })
    .then(response => {
      console.log(response)
      this.orders = response.data.orders
    })
    .catch(e => {
      this.errors.push(e)
    })
  }
}
</script>

<style scoped>
</style>
