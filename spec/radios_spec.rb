describe "Radios Button" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/radios"
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
