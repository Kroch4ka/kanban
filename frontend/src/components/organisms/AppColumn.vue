<script setup>
import draggable from "vuedraggable";
import AppTaskCard from "./AppTaskCard.vue";
import {ref} from "vue";

const column = defineModel()
const log = (event) => console.log(event)
const drag = ref(false)
</script>

<template>
  <div>
    <span class="font-bold uppercase tracking-wider text-2xl text-gray">{{column.name}} ({{column.tasks.length}})</span>
    <draggable @change="log" @start="drag = true" @end="drag = false" class="mt-6 flex flex-col gap-5 h-full" v-model="column.tasks" group="cards" item-key="id">
      <template #item="{element}">
        <AppTaskCard :task="element"/>
      </template>
    </draggable>
  </div>
</template>

<style scoped>

</style>