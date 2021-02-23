# ./spec/motivation_spec.rb
require './lib/motivation'

describe Inspiration do
  context '#random_motivation' do
    it 'Display random motivation' do
      motivation = Motivation.new.random_motivation
      expect(motivation).to eq motivation
    end
  end

  context '#random_motivation' do
    it 'Not display random motivation' do
      motivation = Motivation.new
      expect(motivation).to_not eq Motivation.new.random_motivation
    end
  end
end
