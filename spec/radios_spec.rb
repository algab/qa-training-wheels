describe "Radios Button" do
  before(:each) do
    visit "/radios"
  end
  
  it "Select by id" do
    choose("cap")
  end

  it "Select with find" do
    find("input[value=guardians]").click
  end

  after(:each) do
    sleep 1
  end
end
