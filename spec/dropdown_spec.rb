describe "Element Select" do
  it "Select item simple" do
    visit "/dropdown"
    select("Loki", from: "dropdown")
  end

  it "Select item with find" do
    visit "/dropdown"
    drop = find(".avenger-list")
    drop.find("option", text: "Scott Lang").select_option
  end

  it "Any item" do
    visit "/dropdown"
    drop = find(".avenger-list")
    drop.all("option").sample.select_option
  end
end
