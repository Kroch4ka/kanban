<script setup>
import {ref} from "vue";
import ToggleSwitch from "primevue/toggleswitch";

const isDark = ref(false)
</script>

<template>
  <div class="flex rounded-xl items-center justify-center gap-4 bg-gray-light pt-3 pb-3">
    <i class="pi pi-sun" style="font-size: 20px"/>
    <ToggleSwitch v-model="isDark"/>
    <i class="pi pi-moon" style="font-size: 20px"/>
  </div>
</template>

<style scoped>

</style>