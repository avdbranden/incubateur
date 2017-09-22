# sourced from: https://gist.github.com/esBeee/545653241530f8f2c2e16371bec56f20

document.addEventListener('turbolinks:load', function(event) {
  if (typeof ga === 'function') {
    ga('set', 'location', event.data.url);
    ga('send', 'pageview');
  }
});