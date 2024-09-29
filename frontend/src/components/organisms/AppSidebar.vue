<script setup>

import Icon from "../atoms/Icon.vue";
import BoardList from "../molecules/BoardList.vue";
import ThemeSwitcher from "../molecules/ThemeSwitcher.vue";
</script>

<template>
  <div class="flex flex-col justify-between bg-white w-1/6">
    <div class="flex flex-col">
      <div class="flex ml-10 mt-10 gap-4 items-baseline">
        <Icon/>
        <span class="font-bold text-3xl">kanban</span>
      </div>
      <div class="mt-14">
        <BoardList/>
      </div>
    </div>
    <div class="pl-10 pr-10 pb-8">
      <ThemeSwitcher/>
      <div class="flex flex-row items-center mt-10 gap-4">
        <i class="pi pi-arrow-left"/>
        <span class="text-xl text-gray font-bold">Hide Sidebar</span>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>