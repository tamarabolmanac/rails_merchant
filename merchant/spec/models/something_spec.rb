require 'spec_helper'

describe Something, :type => :model do
  it { is_expected.to validate_presence_of(:id) }
end
