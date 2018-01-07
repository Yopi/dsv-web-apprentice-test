<template>
  <main>
    <div class="container">
      <h1>{{ pizzeria.name }}</h1>
      <Menu v-for="item in menu" :key="item.id" v-bind:menu="item"></Menu>
      <hr>
    </div> <!-- /container -->
    <Cart></Cart>
  </main>
</template>

<script>
import axios from 'axios'
import Menu from '@/components/Menu'
import Cart from '@/components/Cart'

export default {
  name: 'Pizzeria',
  components: {
    'Menu': Menu,
    'Cart': Cart
  },
  data () {
    return {
      pizzeria: {},
      menu: {},
      errors: []
    }
  },
  // Fetches posts when the component is created.
  created () {
    const pizzeriaId = this.$route.params.id
    axios.get(process.env.BACKEND_URL + `/pizzeria/` + pizzeriaId)
    .then(response => {
      // JSON responses are automatically parsed.
      this.pizzeria = response.data.pizzeria

      var counter = 1
      this.menu = response.data.menu.reduce(function (acc, item) {
        const key = item.food_type
        item.counter = counter++
        acc[key] = acc[key] || []
        acc[key].push(item)
        return acc
      }, {})
    })
    .catch(e => {
      this.errors.push(e)
    })
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
main {
  margin-top: 15px;
}
</style>
