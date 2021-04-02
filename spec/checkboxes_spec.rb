describe "Element Checkbox" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/checkboxes"
  end

  it "Check an option" do
    check("thor")
  end

  it "Deselect an option" do
    uncheck("antman")
  end

  it "Check with find set true" do
    find("input[value=cap]").set(true)
  end

  it "Deselect with find set true" do
    find("input[value=guardians]").set(false)
  end

  after(:each) do
    sleep 1
  end
end
