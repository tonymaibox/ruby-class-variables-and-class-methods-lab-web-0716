require 'pry'

class Song

	attr_accessor :count, :name, :artist, :genre
	attr_reader

	@@count = 0

	@@genres = []

	@@artists = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@genres << genre
		@@artists << artist
	end

	def self.count
		@@count
	end

	def self.genres
		@@genres.uniq
	end

	def self.artists
		@@artists.uniq
	end

	def self.genre_count
		count_of_genre = {}
		@@genres.collect do |type|
			if count_of_genre.include?(type)
				count_of_genre["#{type}"] += 1
			else
				count_of_genre["#{type}"] = 1
			end
		end
		count_of_genre
	end

	def self.artist_count
		count_of_artists = {}
		@@artists.collect do |instance|
			if count_of_artists.include?(instance)
				count_of_artists["#{instance}"] += 1
			else
				count_of_artists["#{instance}"] = 1
			end
		end
		count_of_artists
	end

end