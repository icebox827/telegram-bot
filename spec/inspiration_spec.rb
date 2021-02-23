# ./spec/inspiration_spec.rb
require './lib/inspiration'

describe Inspiration do
  context '#random_quotes' do
    it 'Display random quotes' do
      inspiration = Inspiration.new.random_quotes
      expect(inspiration).to eq inspiration
    end
  end

  context '#random_quotes' do
    it 'Not display random quotes' do
      inspiration = Inspiration.new
      expect(inspiration).to_not eq Inspiration.new.random_quotes
    end
  end
end
