class Project < ApplicationRecord
    belongs_to :artist
    has_and_belongs_to_many :artists
    end
