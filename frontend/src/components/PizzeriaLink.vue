<template>
  <div class="row">
    <router-link :to="{ name: 'Pizzeria', params: { id: pizzeria.id }}">
      {{ pizzeria.name }}
    </router-link>
    <hr>
  </div> <!-- /container -->
</template>

<script>
export default {
  name: 'PizzeriaLink',
  props: ['pizzeria'],
  data () {
    return {
      errors: []
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
