# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  title        :string
#  overview     :text
#  language     :string
#  genres       :string
#  release_date :date
#  revenue      :integer
#  runtime      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  genre_id     :integer
#

class Movie < ApplicationRecord
end
