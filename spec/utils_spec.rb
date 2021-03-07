# ./spec/utils_spec.rb
require './lib/utils'

describe PickOne do
  context '#rand_string' do
    it 'return a random string' do
      arr = %w[Hello World bot]
      expect(PickOne.rand_string(arr)).to be_an String
    end
  end
end
