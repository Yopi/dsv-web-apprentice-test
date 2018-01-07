<template>
  <div id="cart" class="bg-danger border" v-if="cart.length">
    <nav class="navbar navbar-light bg-light">
      <span class="navbar-brand mb-0 h1">Pizzakorg</span>
    </nav>
    <div id="list">
      <ul class="">
        <li v-for="item in cart" class="">
          {{ item.title }}: {{ item.price }}kr
        </li>
      </ul>
    </div>
    <div id="menu">
      <button class="btn btn-success btn-sm" v-on:click="orderCart">Beställ</button>
      <button class="btn btn-warning btn-sm" v-on:click="clearCart">Töm inköp</button>
    </div>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Cart',
  components: {
  },
  computed: {
    cart () {
      return this.$store.getters.getCart
    }
  },
  data () {
    return {
      errors: []
    }
  },
  methods: {
    orderCart: function (event) {
      axios.post(process.env.BACKEND_URL + `/orders`, {
        user: this.$store.getters.getUser,
        pizzas: this.$store.getters.getCart
      }, { withCredentials: true })
      .then(response => {
        let order = response.data.order
        this.$store.commit('storeOrder', { order })
        this.$store.commit('clearCart')
        this.$router.push('/order')
      })
      .catch(e => {
        this.errors.push(e)
      })
    },
    clearCart: function (event) {
      this.$store.commit('clearCart')
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
#cart {
  z-index: 10;
  position: fixed;
  right: 0;
  top: 56px;
  width: 250px;
  color: white;
  padding-bottom: 1em;
}

#menu {
  text-align: center;
}

#list {
  padding: 1em 1em 0;
}

li {
  list-style: none;
  text-align: right;
}
</style>
