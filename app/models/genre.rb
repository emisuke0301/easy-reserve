class Genre < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'AllGenre' },
		{ id: 2, name: 'REGGAE' },
		{ id: 3, name: 'HIPHOP' },
		{ id: 4, name: 'R&B' },
		{ id: 5, name: 'SOUL' },
		{ id: 6, name: 'SKA' },
		{ id: 7, name: 'SOKA' },
		{ id: 8, name: 'LATIN' },
		{ id: 9, name: 'DISCO' },
		{ id: 10, name: 'ROCK' },
		{ id: 11, name: 'TECHNO' },
		{ id: 12, name: 'EDM' },
		{ id: 13, name: 'CLASSIC' },
		{ id: 14, name: '歌謡曲' },
    { id: 15, name: 'JPOP' },
		{ id: 16, name: 'Others' }
  ]

  include ActiveHash::Associations
  has_many :events
end