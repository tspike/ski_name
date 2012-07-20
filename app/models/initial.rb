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

class Initial
  include ActiveAttr::Model

  attribute :initials

  validates :initials, :presence => true, :length => { :is => 3 }

  def skier_name
    first = Name.where(:position => 'first', :initial => self.initials[0]).first
    middle = Name.where(:position => 'middle', :initial => self.initials[1]).first
    last = Name.where(:position => 'last', :initial => self.initials[2]).first
    "#{first} #{middle} #{last}"
  end
end
