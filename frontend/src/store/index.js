import Vue from 'vue'
import Vuex from 'vuex'
import { state, getters, mutations } from './mutations'
import plugins from './plugins'

Vue.use(Vuex)

export default new Vuex.Store({
  state,
  getters,
  mutations,
  plugins
})
