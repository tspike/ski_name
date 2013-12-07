$(function() {
  var $initials = $('#initials');
  var NAMES = [

  { 'A': 'Sketchy',
    'B': 'Dodgy',
    'C': 'Sick',
    'D': 'Crazy',
    'E': 'Fugly',
    'F': 'Steep',
    'G': 'Craggy',
    'H': 'Fatty',
    'I': 'Bumpy',
    'J': 'Rad',
    'K': 'Manky',
    'L': 'Slushy',
    'M': 'Snowy',
    'N': 'Wobbly',
    'O': 'Iffy',
    'P': 'Dank',
    'Q': 'Dreamy',
    'R': 'Krunky',
    'S': 'Gnarly',
    'T': 'Deep',
    'U': 'Fresh',
    'V': 'Buttery',
    'W': 'Creamy',
    'X': 'Steezy',
    'Y': 'Powdery',
    'Z': 'Fluffy' },

  { 'A': 'Glade',
    'B': 'Brah',
    'C': 'Crud',
    'D': 'Gaper',
    'E': 'Kicker',
    'F': 'Stash',
    'G': 'Bowl',
    'H': 'Crust',
    'I': 'Run',
    'J': 'Poser',
    'K': 'Pole',
    'L': 'Ass',
    'M': 'Snotsicle',
    'N': 'Quiver',
    'O': 'Toe',
    'P': 'Leg',
    'Q': 'Stick',
    'R': 'Turn',
    'S': 'Roll',
    'T': 'Chatter',
    'U': 'Bum',
    'V': 'Foot',
    'W': 'Scraper',
    'X': 'Drop',
    'Y': 'Plank',
    'Z': 'Faceshot' },
 
  { 'A': 'McFaceplant',
    'B': 'don Planketti',
    'C': 'von Biffer',
    'D': 'McCruiser',
    'E': 'Powderson',
    'F': 'LaFlex',
    'G': 'Slamsky',
    'H': 'van Yardsale',
    'I': 'Edgegrinder',
    'J': 'Dupree',
    'K': 'Vandensproing',
    'L': 'de la Gnar Gnar',
    'M': 'du Chute',
    'N': 'Camberson',
    'O': 'McChickenhead',
    'P': 'Phatterson',
    'Q': 'Huckowitz',
    'R': 'Smearez',
    'S': 'de la Pow Pow',
    'T': 'Rockerson',
    'U': 'McFakie',
    'V': 'McFreshy',
    'W': "O'Christie",
    'X': 'Mogulberg',
    'Y': 'Chowderston',
    'Z': 'Mac Deathcookie'}];

  var get_name_for = function(letters) {
    if (letters.length > 3 || letters.length < 0) {
      throw 'Initials must be between 0 and 3 letters';
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
