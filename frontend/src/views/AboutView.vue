<template>
  <!-- trending-gameplay -->
  <section class="trending-gamepay-area">
      <div class="container">
          <div class="row align-items-center mb-30">
              <div class="col-sm-6">
                  <div class="hf-section-title">
                      <h4 class="title">Trending quests</h4>
                  </div>
              </div>
              <div class="col-sm-6 d-none d-sm-block">

              </div>
          </div>

          <div class="row">

              <div class="col-lg-4 col-md-6">
                  <QuestCardComp filename="Axie.png" title="Axie"/>
              </div>
              <div class="col-lg-4 col-md-6">
                  <QuestCardComp filename="BigTime.jpg" title="Illuvium"/>
              </div>
              <div class="col-lg-4 col-md-6">
                  <QuestCardComp filename="EVIO.jpg" title="Ev.io"/>
              </div>
              <div class="col-lg-4 col-md-6">
                  <QuestCardComp filename="illuvium2.jpg" title="Illuvium"/>
              </div>
              <div class="col-lg-4 col-md-6">
                  <QuestCardComp filename="staratlas.png" title="Star Atlas"/>
              </div>
              <div class="col-lg-4 col-md-6">
                  <QuestCardComp filename="Sandbox.jpg" title="Sandbox"/>
              </div>
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
