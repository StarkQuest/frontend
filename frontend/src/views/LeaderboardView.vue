<template>
  <!-- trending-gameplay -->
  <section class="trending-gamepay-area">
      <div class="container">
          <div class="row align-items-center mb-30">
              <div class="col-sm-6">
                  <div class="hf-section-title">
                      <h4 class="title">Best of the Week</h4>
                  </div>
              </div>
              <div class="col-sm-6 d-none d-sm-block">
              </div>
          </div>
          <div class="row">
            <div class="name">Player1</div><div class="score">430</div>
          </div>

          <div class="row">
            <div class="name">Player2</div><div class="score">580</div>
          </div>

          <div class="row">
            <div class="name">Player3</div><div class="score">310</div>
          </div>

          <div class="row">
            <div class="name">Player4</div><div class="score">640</div>
          </div>

          <div class="row">
            <div class="name">Player5</div><div class="score">495</div>
          </div>
      </div>
  </section>
  <!-- trending-gameplay-end -->

</template>

<script>
import QuestCardComp from '../components/QuestCardComp.vue'

export default {
  name: 'Quests',
  components: {
    QuestCardComp
  }
}

</script>

<style>

</style>
