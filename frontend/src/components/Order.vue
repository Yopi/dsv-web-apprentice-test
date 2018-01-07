<template>
  <main>
    <div class="container">
      <h2>Beställning lagd!</h2>
      <div v-show="order">
        <div class="progress">
          <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
        <p>Beställningen innehåller: {{ parseDescription(order.description) }} till en total kostnad av {{ order.amount }}kr.</p>
        <p>Förvänta dig dina pizzor inom klockan {{ addHour(order.created_at) }}.</p>
      </div>
    </div>
  </main>
</template>

<script>
export default {
  name: 'Order',
  data () {
    return {
      errors: []
    }
  },
  computed: {
    order () {
      return this.$store.getters.getOrder
    }
  },
  methods: {
    parseDescription: function (description) {
      return description.replace(/\\n/g, '\r\n')
    },
    // We want it to say 01:01 not 1:1
    padZero: function (number) {
      if (number < 10) {
        return '0' + number
      } else {
        return number
      }
    },
    addHour: function (date) {
      let d = new Date(Date.parse(date) + 3600000)
      console.log(Date.parse(date))
      console.log(Date.parse(date) + 360000)
      return this.padZero(d.getHours()) + ':' + this.padZero(d.getMinutes())
    },
    setProgressBarWidth: function (percentage) {
      document.getElementsByClassName('progress-bar')[0].style.width = percentage + '%'
    }
  },
  mounted: function () {
    this.$nextTick(function () {
      setTimeout(function (t) {
        t.setProgressBarWidth(100)
      }, 100, this)
    })
  }
}
</script>

<style scoped>
.progress-bar {
  width: 0;
  -webkit-transition: width 3600s;
  transition: width 3600s;
}
</style>
