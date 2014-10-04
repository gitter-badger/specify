require 'spec_helper'

describe Specify do
  it 'will return version information' do
    expect(Specify.version).to eq "Specify v#{Specify::VERSION}"
  end
end