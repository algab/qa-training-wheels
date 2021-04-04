describe "Tables", :tabs do
  before(:each) do
    visit "/tables"
  end

  it "view Robert Downey Jr salary" do
    actors = all("table tbody tr")
    actor = actors.detect { |actor| actor.text.include?("Robert Downey Jr") }
    expect(actor.text).to include "10.000.000"
  end

  it "view Vin Diesel salary" do
    actor = find("table tbody tr", text: "@vindiesel")
    expect(actor).to have_content "10.000.000"
  end

  it "view Velozes e Furiosos film" do
    actor = find("table tbody tr", text: "@vindiesel")
    movie = actor.all("td")[2].text
    expect(movie).to eql "Velozes e Furiosos"
  end

  it "view Chris Evans" do
    actor = find("table tbody tr", text: "Chris Evans")
    nick = actor.all("td")[4].text
    expect(nick).to eql "@teamcevans"
  end

  it "select Chris Pratt to edit" do
    actor = find("table tbody tr", text: "Chris Pratt")
    actor.find("a", text: "edit").click
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "Chris Pratt foi selecionado para edição!"
  end

  it "select Chris Pratt to remove" do
    actor = find("table tbody tr", text: "Chris Pratt")
    actor.find("a", text: "delete").click
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "Chris Pratt foi selecionado para remoção!"
  end
end
