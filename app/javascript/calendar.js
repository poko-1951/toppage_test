import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import interactionPlugin from '@fullcalendar/interaction';
import googleCalendarPlugin from '@fullcalendar/google-calendar';

document.addEventListener('turbolinks:load', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new Calendar(calendarEl, {
    plugins: [ dayGridPlugin, interactionPlugin, googleCalendarPlugin ],
    googleCalendarApiKey: 'AIzaSyAzYO_CSrQkpN_IJ7JcFf0Ru4A9Ufdf7GE',
    events: {
      googleCalendarId: 'go.k0624@gmail.com'
  }
  });

  calendar.render();
});