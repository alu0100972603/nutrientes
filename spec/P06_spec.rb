require "spec_helper"

RSpec.describe P06 do
  it "has a version number" do
    expect(P06::VERSION).not_to be nil
  end
  before :all do
    @alimento = Alimento.new
  end
end
