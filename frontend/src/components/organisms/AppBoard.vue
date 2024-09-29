<script setup>
import Button from "primevue/button";
import AppColumn from "./AppColumn.vue";
import {reactive} from "vue";
import ActionColumn from "./ActionColumn.vue";

const board = reactive({
  columns: [
    {
      id: "1",
      name: "Todo",
      tasks: [
        {
          id: "1",
          name: "First task",
          subTasks: [{
            id: "1",
            name: "First subTask",
            done: false
          }]
        },
        {
          id: "10",
          name: "task",
          subTasks: [{
            id: "10",
            name: "subTask",
            done: false
          }]
        }
      ]
    },
    {
      id: "2",
      name: "Todo-list",
      tasks: [
        {
          id: "2",
          name: "Second task",
          subTasks: []
        }
      ]
    }
  ]
})
</script>

<template>
  <div class="p-8 h-full pb-12 gap-5 grid grid-cols-5" v-if="board.columns.length > 0">
    <AppColumn v-for="(column, i) in board.columns" :key="column.id" v-model="board.columns[i]"/>
    <ActionColumn/>
  </div>
  <div class="flex h-full justify-center flex-col items-center" v-else>
    <div class="flex flex-col gap-5 items-center justify-center">
        <span class="basis-full text-gray font-bold text-2xl">
          This board is empty. Create a new column to get started.
        </span>
      <Button class="basis-full">Add new column</Button>
    </div>
  </div>
</template>

<style scoped>

</style>