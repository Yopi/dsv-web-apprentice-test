<template>
  <div>
    <h2>{{ menu[0].food_type }}</h2>
    <div class="row">
      <ul class="list-group">
        <MenuItem v-for="item in menu" :key="item.id" v-bind:item="item"></MenuItem>
      </ul>
    </div>
  </div> <!-- /container -->
</template>

<script>
import MenuItem from '@/components/MenuItem'

export default {
  name: 'Menu',
  components: {
    'MenuItem': MenuItem
  },
  props: ['menu'],
  data () {
    return {
      errors: []
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
div {
  margin-top: 15px;
}
ul {
  width: 100%;
}
</style>
