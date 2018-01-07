<template>
  <main>
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1 class="display-3">Välkommen till Pizzeriabeställning.nu</h1>
        <p>Här kan du söka efter dina lokala pizzerior och beställa pizza som levereras hela vägen hem till din dörr!</p>
        <p>
          <router-link to="/pizzerias" class="btn btn-primary btn-lg">Visa pizzerior &raquo;</router-link>
        </p>
      </div>
    </div>
  </main>
</template>

<script>
export default {
  name: 'Index',
  data () {
    return {}
  }
}
</script>

<style scoped>
</style>
