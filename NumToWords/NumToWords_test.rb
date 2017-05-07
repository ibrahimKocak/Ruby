require 'rspec'

require './odev'

RSpec.describe do 
	describe 'okunus' do
		it 'tek basamak' do

			expect(yaziyla(9)).to eq "Dokuz "

	end

	it 'iki basamak' do

		expect(yaziyla(12)).to eq "On Iki "

	end

	it 'üç basamak' do
		expect(yaziyla(984)).to eq "Dokuz Yuz Seksen Dort "

	end
	end
end