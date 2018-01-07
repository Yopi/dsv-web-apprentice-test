import Vue from 'vue'
import Router from 'vue-router'
import Index from '@/components/Index'
import Login from '@/components/Login'
import Register from '@/components/Register'
import PizzeriaList from '@/components/PizzeriaList'
import Pizzeria from '@/components/Pizzeria'
import Order from '@/components/Order'
import Profile from '@/components/Profile'

Vue.use(Router)

export default new Router({
  routes: [
    { path: '/', name: 'Index', component: Index },
    { path: '/login', name: 'Login', component: Login },
    { path: '/register', name: 'Register', component: Register },
    { path: '/pizzerias', name: 'Pizzerior', component: PizzeriaList },
    { path: '/pizzeria/:id', name: 'Pizzeria', component: Pizzeria },
    { path: '/order', name: 'Order', component: Order },
    { path: '/profile', name: 'Profile', component: Profile }
  ]
})
