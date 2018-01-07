<template>
  <main>
    <div class="container">
      <hr>
      <h1>Pizzerior i databasen: {{ pizzeriaCount }}</h1>
      <PizzeriaLink v-for="(pizzeria, index) in pizzerias" :key="pizzeria.id" v-bind:index="index" v-bind:pizzeria="pizzeria"></PizzeriaLink>
      <hr>
    </div> <!-- /container -->
  </main>
</template>

<script>
import axios from 'axios'
import PizzeriaLink from '@/components/PizzeriaLink'

export default {
  name: 'PizzeriaList',
  components: {
    'PizzeriaLink': PizzeriaLink
  },
  data () {
    return {
      pizzerias: [],
      pizzeriaCount: 0,
      errors: []
    }
  },
  // Fetches posts when the component is created.
  created () {
    axios.get(process.env.BACKEND_URL + `/pizzeria`)
    .then(response => {
      // JSON responses are automatically parsed.
      this.pizzerias = response.data
      this.pizzeriaCount = this.pizzerias.length
    })
    .catch(e => {
      this.errors.push(e)
    })
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
