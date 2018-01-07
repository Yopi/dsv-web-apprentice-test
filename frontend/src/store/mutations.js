export const STORAGE_KEY = 'pizzeria-vuejs'

if (navigator.userAgent.indexOf('PhantomJS') > -1) {
  window.localStorage.clear()
}

export const state = {
  user: JSON.parse(window.localStorage.getItem(STORAGE_KEY) || '{"user": {}, "cart": []}')
}

export const getters = {
  getUser: state => {
    if (state.user && state.user.user && state.user.user.name) {
      return state.user.user
    }

    return false
  },

  getCart: state => {
    if (state.user && state.user.cart) {
      return state.user.cart
    }

    return false
  },

  getOrder: state => {
    if (state.user && state.user.order) {
      return state.user.order
    }

    return {}
  }
}

export const mutations = {
  setUser (state, { user }) {
    state.user.user = user
  },

  clearSession (state) {
    state.user.user = {}
  },

  addToCart (state, { item }) {
    if (!state.user.cart) {
      state.user.cart = []
    }

    state.user.cart.push(item)
  },

  clearCart (state) {
    state.user.cart = []
  },

  storeOrder (state, { order }) {
    state.user.order = order
  }
}
