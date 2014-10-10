require 'spec_helper'

describe Status do

  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is not idiomatically correct.
    @status = Status.new(content: "Lorem ipsum", user_id: user.id)
  end

  subject { @status }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }

  describe "when user_id is not present" do
    before { @status.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @status.content = " " }
    it { should_not be_valid }
  end

  describe "with content that is too short" do
    before { @status.content = "a" * 3 }
    it { should_not be_valid }
  end
end
