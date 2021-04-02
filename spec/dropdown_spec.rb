describe "Element Select" do
  it "Select item simple" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    select("Loki", from: "dropdown")
  end

  it "Select item with find" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    drop = find(".avenger-list")
    drop.find("option", text: "Scott Lang").select_option
  end

  it "Any item" do
    visit "https://training-wheels-protocol.herokuapp.com/dropdown"
    drop = find(".avenger-list")
    drop.all("option").sample.select_option
  end
end
