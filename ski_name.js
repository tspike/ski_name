$(function() {
  var $initials = $('#initials');
  var NAMES = [
  { 'A': 'Dodgy',
    'B': 'Creamy',
    'C': 'Deep',
    'D': 'Bumpy',
    'E': 'Craggy',
    'F': 'Fatty',
    'G': 'Sketchy',
    'H': 'Krunky',
    'I': 'Slushy',
    'J': 'Sick',
    'K': 'Steezy',
    'L': 'Wobbly',
    'M': 'Gnarly',
    'N': 'Fluffy',
    'O': 'Fresh',
    'P': 'Manky',
    'Q': 'Fugly',
    'R': 'Rad',
    'S': 'Dank',
    'T': 'Iffy',
    'U': 'Buttery',
    'V': 'Snowy',
    'W': 'Powdery',
    'X': 'Dreamy',
    'Y': 'Crazy',
    'Z': 'Steep' },

  { 'A': 'Stash',
    'B': 'Crust',
    'C': 'Crud',
    'D': 'Brah',
    'E': 'Faceshot',
    'F': 'Glade',
    'G': 'Kicker',
    'H': 'Quiver',
    'I': 'Scraper',
    'J': 'Stick',
    'K': 'Plank',
    'L': 'Gaper',
    'M': 'Chatter',
    'N': 'Snotsicle',
    'O': 'Bum',
    'P': 'Leg',
    'Q': 'Pole',
    'R': 'Drop',
    'S': 'Run',
    'T': 'Bowl',
    'U': 'Foot',
    'V': 'Toe',
    'W': 'Poser',
    'X': 'Turn',
    'Y': 'Ass',
    'Z': 'Roll' },

  { 'A': 'Huckowitz',
    'B': 'don Planketti',
    'C': 'Slamsky',
    'D': 'Dupree',
    'E': 'McChickenhead',
    'F': 'van Yardsale',
    'G': 'Mac Deathcookie',
    'H': 'de la Gnar Gnar',
    'I': 'du Chute',
    'J': "O'Christie",
    'K': 'von Biffer',
    'L': 'Vandensproing',
    'M': 'McCruiser',
    'N': 'Smearez',
    'O': 'Mogulberg',
    'P': 'Phatterson',
    'Q': 'LaFlex',
    'R': 'Edgegrinder',
    'S': 'McFaceplant',
    'T': 'Chowderston',
    'U': 'Powderson',
    'V': 'McFreshy',
    'W': 'Camberson',
    'X': 'Rockerson',
    'Y': 'McFakie',
    'Z': 'de la Pow Pow' }];

  var get_name_for = function(letters) {
    if (letters.length > 3 || letters.length < 0) {
      throw "Initials must be between 0 and 3 letters";
    }
    letters = letters.split('');
    var full_name = "";
    for (var i=0; i<letters.length; i++) {
      var this_name = NAMES[i][letters[i].toUpperCase()];
      if (this_name) {
        full_name += this_name + ' ';
      }
    }
    return full_name.slice(0, full_name.length-1);
  };

  $initials.on('keyup', function() {
    if ($initials.val().length > 0 && $initials.val().length < 4) {
      $('.name-container').removeClass('hidden');
      $('#the-name').text(get_name_for($initials.val()));
    } else {
      $('.name-container').addClass('hidden');
    }
  });

  $.backstretch('flatirons.jpg');
});
