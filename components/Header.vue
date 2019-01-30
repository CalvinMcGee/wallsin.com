<template>
  <header>
    <div class="header__container">
      <Navigation />

      <div class="row">
        <div class="column small-centered medium-12 large-9">
          <div class="banner text-center">
            <h1 class="banner__header">Jag är <strong class="banner__header--strong">Joachim Wallsin</strong></h1>
            <p>Jag är en passionerad <strong>Webbutvecklare</strong> som skapar modern <strong>Webb</strong></p>
          </div>
        </div>
      </div>

      <div class="social social--background">
        <ul class="social__list">
          <li class="social__list-item">
            <a href="https://www.facebook.com/joachim.wallsin" class="social__list-link" target="_blank"><i class="fa fa-2x fa-facebook"></i></a>
          </li>
          <li class="social__list-item">
            <a href="https://se.linkedin.com/in/joachim-wallsin-6b47a810" class="social__list-link" target="_blank"><i class="fa fa-2x fa-linkedin"></i></a>
          </li>
          <li class="social__list-item">
            <a href="https://github.com/calvinmcgee" class="social__list-link" target="_blank"><i class="fa fa-2x fa-github"></i></a>
          </li>
        </ul>
      </div>
    </div>
  </header>
</template>

<script>
import Navigation from './Navigation';

export default {
  name: 'Header',
  components: {
    Navigation
  }
}
</script>
