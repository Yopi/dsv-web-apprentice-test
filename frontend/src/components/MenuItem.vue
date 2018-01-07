<template>
  <li class="list-group-item d-flex justify-content-between align-items-center">
    <span>
      {{ item.counter }}. {{ item.title }}
      <small>{{ item.ingredients }}</small>
    </span>
    <span>
      <span class="badge badge-primary badge-pill">{{ item.price }}kr</span>
      <button class="btn btn-success btn-sm" v-on:click="addToCart(item, $event)">Köp</button>
    </span>
  </li>
</template>

<script>
export default {
  name: 'MenuItem',
  props: ['item'],
  data () {
    return {
      errors: []
    }
  },
  methods: {
    addToCart: function (item, event) {
      if (this.$store.getters.getUser.name) {
        this.$store.commit('addToCart', { item })
      } else {
        this.$router.push({path: '/login', query: { pizzeria: item.pizzeria_id }})
      }
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
small {
  color: grey;
  margin-left: 15px;
}
</style>
