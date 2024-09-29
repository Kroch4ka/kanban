<script setup>
import AppSidebar from "./components/organisms/AppSidebar.vue";
import AppHeader from "./components/organisms/AppHeader.vue";
import AppBoard from "./components/organisms/AppBoard.vue";
</script>

<template>
  <div class="flex flex-row h-dvh">
    <AppSidebar/>
    <div class="h-dvh flex flex-col basis-full">
      <AppHeader/>
      <div class="basis-full">
        <AppBoard/>
      </div>
    </div>
  </div>
</template>

<style scoped>
</style>
