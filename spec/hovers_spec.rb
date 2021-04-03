describe "Mouse Hover" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/hovers"
  end

  it "Image blade" do
    card = find("img[alt=Blade]")
    card.hover
    expect(page).to have_content "Nome: Blade"
  end

  it "Image black panther" do
    card = find("img[alt^=Pantera]")
    card.hover
    expect(page).to have_content "Nome: Pantera Negra"
  end

  it "Image spider man" do
    card = find("img[alt$=Aranha]")
    card.hover
    expect(page).to have_content "Nome: Homem Aranha"
  end

  after(:each) do
    sleep 1
  end
end
