<template>
  <section id="cv">
    <div class="cv">
      <div class="row">
        <div class="column">
          <h1 class="section-header">Curriculum vitae</h1>
        </div>
      </div>

      <div
        class="row cv__section"
        v-for="(section, index) in sections"
        :key="index">

        <div class="column small-12 medium-2 medium-offset-1">
          <h2 class="cv__section-title">{{ index }}</h2>
        </div>

        <div class="column small-12 medium-8">
            <div
              class="cv__entry"
              v-for="item in section"
              :key="item.title">
              <p class="cv__date">{{ item.start }} - Nuvarande</p>
              <h3 class="cv__place">{{ item.work }}</h3>
              <h4 class="cv__title">{{ item.title }}</h4>
              <p>{{ item.description }}</p>
            </div>
        </div>

      </div>

    </div>
  </section>
</template>

<script>
export default {
  name: 'Cv',
  data: function() {
    return {
      sections: {
        Arbete: [
          { title: 'Backendutvecklare',
             work: 'Marton International AB, Hemverket',
             place: 'Göteborg',
             start: 'Augusti 2017',
             end: 'Nuvarande',
             description: 'Arbetar som Backend utvecklare med fokus på internt mäklarsystem. Mäklarsystemet hanterar objekt, köpare och säljare, budgivning samt publicerar annonser till diverse plattformar bland annat Hemnet, Blocket Bostad och Finn.no.' },
           { title: 'Systemadministratör, webbutvecklare',
             work: 'Lesley Cosmetics AB, Mary Kay',
             place: 'Mölndal',
             start: 'Februari 2012',
             end: 'Augusti 2017',
             description: 'Arbetade som webbutvecklare och systemadministratör. Arbetade mest med interna webbsystem där jag använde Drupal, CakePHP, jQuery och utvecklar mot API hos bl.a. Bizwizard och Mandrill. Tog även fram responsiva e-postmallar för företagets utskick via Bizwizard. Skötte drift av interna Linuxservrar, samt utförde allmän IT-support för användare. Började i februari.' },
           { title: 'Frontendutvecklare',
             work: 'Wallmander & Co',
             place: 'Göteborg',
             start: 'Augusti 2011',
             end: 'November 2011',
             description: 'Arbetade som frontendutvecklare där jag tog fram statiska sidor med all CSS och JS utifrån PSD-filer. De statiska sidorna omsattes sedan till wordpress teman av två andra utvecklare. Arbetade mellan augusti och november.' },
           { title: 'SEO tekniker',
             work: 'Be Better Online',
             place: 'Göteborg',
             start: 'Juli 2011',
             end: 'Augusti 2011',
             description: 'Började i juli efter avslutad praktik på samma ställe. Huvudsyssla var länkbygge åt kunder. Slutade i augusti.' },
           { title: 'Praktik',
             work: 'Be Better Online',
             place: 'Göteborg',
             start: 'December 2010',
             end: 'Juli 2011',
             description: 'Praktik från december till juli. Företagets huvudinriktning är sökmotoroptimering, men jag utvecklade bland annat deras kundcenter i Zend, samt en nyinstallation av en Joomlasida med e-handel. Gjorde även ett par nyinstallationer av små sidor i Wordpress.' }
         ],
        Utbildning: [
          { title: 'Webbutvecklare 2 år',
             work: 'KY-Akademien',
             place: 'Göteborg',
             start: 'Augusti 2009',
             end: 'Juli 2011',
             description: 'KY-utbildning i webbutveckling. Examen juli 2011.' },
           { title: 'Civilingenjör Kemiteknik (180/200)',
             work: 'Chalmers tekniska högskola',
             place: 'Göteborg',
             start: 'Augusti 2005',
             end: 'Oktober 2008',
             description: 'Avbrutit studierna 20081001. Har läst alla kurser på utbildningens första tre år med inriktningen Process under 6:e terminen. Har skrivit kandidatarbete vid institutionen för Energiteknik, men ej avlagt kandidatexamen. Har klarat kurser totalt värda 133.5 högskolepoäng.' },
           { title: 'Studentexamen',
             work: 'Elof Lindälvs gymnasium',
             place: 'Kungsbacka',
             start: 'Augusti 2002',
             end: 'Juli 2005',
             description: 'Naturvetenskapliga linjen med inriktning natur.' }
         ],
        'Föreningsuppdrag': [
          { title: 'Webmaster',
             work: 'Chalmers Sångkör',
             place: 'Göteborg',
             start: 'Januari 2009',
             end: 'Maj 2014',
             description: 'Webmaster för Chalmers Sångkörs hemsida. Skötte drift och adminstration av den gamla Drupal 6 hemsidan. Var en del av gruppen som utvecklade deras nya hemsida i Drupal 7. Utvecklade även ett biljettbokningssystem i CakePHP 2. Skapade och skötte e-postlista och e-postmallar för de som önskade information om körens uppsjungningar. E-postlistan driftades på Mailchimp.' },
           { title: 'IT-ansvarig',
             work: 'KARG',
             place: 'Göteborg',
             start: 'September 2007',
             end: 'Augusti 2008',
             description: 'Jag var IT-Ansvarig för KARG, Kemis arbetsmarknadsgrupp. Karg ordnar företagspresentationer, studiebesök och KARM, som är kemisektionernas arbetsmarknadsdag. På Karm kommer 10-15 företag till kemi på företagsmässa. Jag skapade en enkel hemsida och skötte IT-support under föreläsningar och under KARM.' }
         ],
        'Övrigt': [
          { title: 'Arbetsmiljöombud',
             work: 'Lesley Cosmetics AB, Mary Kay',
             place: 'Mölndal',
             start: 'November 2016',
             end: 'Nuvarande',
             description: 'I november blev jag vald till arbetsmiljöombud/skyddsombud på Lesley Cosmetics.' },
           { title: 'Bättre arbetsmiljö - BAM',
             work: 'Prevent',
             place: 'Göteborg',
             start: 'Januari 2017',
             description: 'Utbildning för grunderna inom arbetsmiljö. Utbildningen vänder sig till chefer, skyddsombud/arbetsmiljöombud. Utbildningen är 3 dagar.' }
         ]
       }
    }
  }
}
</script>
