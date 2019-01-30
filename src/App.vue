<template>
  <div id="app">
    <Header/>
    <div class="wrapper">
      <About/>
      <Portfolio/>
      <Contact/>
    </div>
    <Footer/>
  </div>
</template>

<script>
import Header from './components/Header';
import About from './components/About';
import Portfolio from './components/Portfolio';
import Contact from './components/Contact';
import Footer from './components/Footer';

export default {
  name: 'app',
  components: {
    Header,
    About,
    Portfolio,
    Contact,
    Footer
  }
}
</script>
