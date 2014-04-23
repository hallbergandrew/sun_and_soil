require 'spec_helper'


describe Nonprofit do
  it { should have_many :charges }
  it { should validate_presence_of :name }
end
