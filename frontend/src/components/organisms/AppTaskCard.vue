<script setup>
import Card from "primevue/card";
import {computed} from "vue";

const props = defineProps({
  task: {
    type: Object,
    required: true
  }
})
const completedSubTasks = computed(() => {
  return props.task.subTasks.filter(subTask => subTask.done)
})
</script>

<template>
  <Card>
    <template #title>
      {{task.name}}
    </template>
    <template #content>
      {{completedSubTasks.length}} of {{task.subTasks.length}}
    </template>
  </Card>
</template>

<style scoped>

</style>