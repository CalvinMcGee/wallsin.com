<template>
  <div>
    <Header/>
    <div class="wrapper">
      <About/>
      <Cv/>
      <Portfolio/>
      <Contact/>
    </div>
    <Footer/>
  </div>
</template>

<script>
import Header from '../components/Header';
import About from '../components/About';
import Cv from '../components/Cv';
import Portfolio from '../components/Portfolio';
import Contact from '../components/Contact';
import Footer from '../components/Footer';

export default {
  components: {
    Header,
    About,
    Cv,
    Portfolio,
    Contact,
    Footer
  }
}
</script>
