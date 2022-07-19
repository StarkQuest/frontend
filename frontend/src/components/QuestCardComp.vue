<template>
    <div class="trending-gameplay-item mb-50">
        <div class="gameplay-thumb">
            <a href="https://www.youtube.com/watch?v=ssrNcwxALS4" class="popup-video">
                <img :src="require(`../assets/img/images/${filename}`)" alt="">
            </a>
            <div class="treand-gameplay-overlay">
                <ul>
                    <li class="duration">01 :45</li>
                    <li class="quality">hd</li>
                </ul>
            </div>
        </div>
        <div class="d-block d-sm-flex align-items-start">
            <div class="gameplay-content">
                <h5 class="title"><a href="#">{{ title }}</a></h5>
                <div class="gameplay-meta">
                    <ul>
                        <li>Reputation score: 232</li>
                        <li>Token used: {{ title }}</li>
                    </ul>
                </div>
            </div>
            <div class="gameplay-status">
                <span>lives</span>
            </div>
        </div>
    </div>
</template>

<script>
export default {
  name: 'QuestsCard',
  props: ['filename', 'title']
}
</script>

<style>

</style>