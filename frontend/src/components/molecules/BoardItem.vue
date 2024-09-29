<script setup>
import BoardItemIcon from "../atoms/BoardItemIcon.vue";
const props = defineProps({
  board: {
    type: Object,
    required: true
  }
})
const model = defineModel()
const onClick = () => {
  model.value = props.board
}
</script>

<template>
  <div @click="onClick" class="flex p-4 pl-10 font-bold flex-row gap-4 items-baseline rounded-r-3xl" :class="{ 'bg-primary text-white': model?.id === board.id }">
    <BoardItemIcon :fill="model?.id === board.id ? '#ffff' : undefined"/>
    <span class="text-xl">{{board.name}}</span>
  </div>
</template>

<style scoped>

</style>