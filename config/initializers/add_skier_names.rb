=begin
Copyright Tres Spicher

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
=end

NAMES = [
  {:position => 'first', :initial => 'A', :full => 'Dodgy'},
  {:position => 'first', :initial => 'B', :full => 'Creamy'},
  {:position => 'first', :initial => 'C', :full => 'Deep'},
  {:position => 'first', :initial => 'D', :full => 'Bumpy'},
  {:position => 'first', :initial => 'E', :full => 'Craggy'},
  {:position => 'first', :initial => 'F', :full => 'Fatty'},
  {:position => 'first', :initial => 'G', :full => 'Sketchy'},
  {:position => 'first', :initial => 'H', :full => 'Krunky'},
  {:position => 'first', :initial => 'I', :full => 'Slushy'},
  {:position => 'first', :initial => 'J', :full => 'Sick'},
  {:position => 'first', :initial => 'K', :full => 'Steezy'},
  {:position => 'first', :initial => 'L', :full => 'Wobbly'},
  {:position => 'first', :initial => 'M', :full => 'Gnarly'},
  {:position => 'first', :initial => 'N', :full => 'Fluffy'},
  {:position => 'first', :initial => 'O', :full => 'Fresh'},
  {:position => 'first', :initial => 'P', :full => 'Manky'},
  {:position => 'first', :initial => 'Q', :full => 'Fugly'},
  {:position => 'first', :initial => 'R', :full => 'Rad'},
  {:position => 'first', :initial => 'S', :full => 'Dank'},
  {:position => 'first', :initial => 'T', :full => 'Iffy'},
  {:position => 'first', :initial => 'U', :full => 'Buttery'},
  {:position => 'first', :initial => 'V', :full => 'Snowy'},
  {:position => 'first', :initial => 'W', :full => 'Powdery'},
  {:position => 'first', :initial => 'X', :full => 'Dreamy'},
  {:position => 'first', :initial => 'Y', :full => 'Crazy'},
  {:position => 'first', :initial => 'Z', :full => 'Steep'},

  {:position => 'middle', :initial => 'A', :full => 'Stash'},
  {:position => 'middle', :initial => 'B', :full => 'Crust'},
  {:position => 'middle', :initial => 'C', :full => 'Crud'},
  {:position => 'middle', :initial => 'D', :full => 'Brah'},
  {:position => 'middle', :initial => 'E', :full => 'Faceshot'},
  {:position => 'middle', :initial => 'F', :full => 'Glade'},
  {:position => 'middle', :initial => 'G', :full => 'Kicker'},
  {:position => 'middle', :initial => 'H', :full => 'Quiver'},
  {:position => 'middle', :initial => 'I', :full => 'Scraper'},
  {:position => 'middle', :initial => 'J', :full => 'Stick'},
  {:position => 'middle', :initial => 'K', :full => 'Plank'},
  {:position => 'middle', :initial => 'L', :full => 'Gaper'},
  {:position => 'middle', :initial => 'M', :full => 'Chatter'},
  {:position => 'middle', :initial => 'N', :full => 'Snotsicle'},
  {:position => 'middle', :initial => 'O', :full => 'Bum'},
  {:position => 'middle', :initial => 'P', :full => 'Leg'},
  {:position => 'middle', :initial => 'Q', :full => 'Pole'},
  {:position => 'middle', :initial => 'R', :full => 'Drop'},
  {:position => 'middle', :initial => 'S', :full => 'Run'},
  {:position => 'middle', :initial => 'T', :full => 'Bowl'},
  {:position => 'middle', :initial => 'U', :full => 'Foot'},
  {:position => 'middle', :initial => 'V', :full => 'Toe'},
  {:position => 'middle', :initial => 'W', :full => 'Poser'},
  {:position => 'middle', :initial => 'X', :full => 'Turn'},
  {:position => 'middle', :initial => 'Y', :full => 'Ass'},
  {:position => 'middle', :initial => 'Z', :full => 'Roll'},

  {:position => 'last', :initial => 'A', :full => 'Huckowitz'},
  {:position => 'last', :initial => 'B', :full => 'don Planketti'},
  {:position => 'last', :initial => 'C', :full => 'Slamsky'},
  {:position => 'last', :initial => 'D', :full => 'Dupree'},
  {:position => 'last', :initial => 'E', :full => 'McChickenhead'},
  {:position => 'last', :initial => 'F', :full => 'van Yardsale'},
  {:position => 'last', :initial => 'G', :full => 'Mac Deathcookie'},
  {:position => 'last', :initial => 'H', :full => 'de la Gnar Gnar'},
  {:position => 'last', :initial => 'I', :full => 'du Chute'},
  {:position => 'last', :initial => 'J', :full => "O'Christie"},
  {:position => 'last', :initial => 'K', :full => 'von Biffer'},
  {:position => 'last', :initial => 'L', :full => 'Vandensproing'},
  {:position => 'last', :initial => 'M', :full => 'McCruiser'},
  {:position => 'last', :initial => 'N', :full => 'Smearez'},
  {:position => 'last', :initial => 'O', :full => 'Mogulberg'},
  {:position => 'last', :initial => 'P', :full => 'Phatterson'},
  {:position => 'last', :initial => 'Q', :full => 'LaFlex'},
  {:position => 'last', :initial => 'R', :full => 'Edgegrinder'},
  {:position => 'last', :initial => 'S', :full => 'McFaceplant'},
  {:position => 'last', :initial => 'T', :full => 'Chowderston'},
  {:position => 'last', :initial => 'U', :full => 'Powderson'},
  {:position => 'last', :initial => 'V', :full => 'McFreshy'},
  {:position => 'last', :initial => 'W', :full => 'Camberson'},
  {:position => 'last', :initial => 'X', :full => 'Rockerson'},
  {:position => 'last', :initial => 'Y', :full => 'McFakie'},
  {:position => 'last', :initial => 'Z', :full => 'de la Pow Pow'} ]

Name.delete_all

NAMES.each do |name|
  n = Name.new(name)
  unless n.save
    raise 'Error! #{n.errors}'
  end
end
