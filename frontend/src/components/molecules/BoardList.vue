<script setup>

import BoardItem from "./BoardItem.vue";
import {ref} from "vue";

const boards = ref([
    {
      id: 1,
      name: "example"
    },
  {
    id: 2,
    name: "test"
  }
])
const selectedBoard = ref(null)
</script>

<template>
  <div class="pr-10">
    <div>
      <span class="text-xl uppercase ml-10 font-bold text-gray tracking-wider">All boards ({{boards.length}})</span>
      <div class="mt-5">
        <BoardItem v-for="board in boards" :board v-model="selectedBoard">{{board.name}}</BoardItem>
      </div>
    </div>
  </div>
</template>

<style scoped>

</style>