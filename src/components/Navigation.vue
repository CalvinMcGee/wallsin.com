<template>
  <nav>
    <ul
      class="nav"
      v-for="link in links">

      <li class="nav__list-item">
        <a href="{{ link.link }}" class="nav__link active">
          <span class="nav__icon">
          </span>
          {{ link.name }}
        </a>
      </li>

    </ul>
  </nav>
</template>

<script>
export default {
  name: 'Navigation',
  data: function() {
    return {
      links: [
        { name: 'Hem', link: '/' },
        { name: 'Om mig', link: '#om' },
        { name: 'Curriculum vitae', link: '#cv' },
        { name: 'Portfolio', link: '#portfolio' },
        { name: 'Kontakt', link: '#kontakt' }
      ]
    }
  }
}
</script>
