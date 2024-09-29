import { createApp } from 'vue'
import 'primeicons/primeicons.css'
import './style.css'
import PrimeVue from "primevue/config";
import App from './App.vue'
import Aura from '@primevue/themes/aura';

createApp(App)
    .use(PrimeVue, {
        theme: {
            preset: Aura,
            options: {
                darkModeSelector: '.dark',
            }
        }
    }).mount('#app')
