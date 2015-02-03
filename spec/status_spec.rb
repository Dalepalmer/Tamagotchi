require('spec_helper')

describe(Status) do
  it { should have_and_belong_to_many(:bands) }
end
