describe "First Script" do
  it "Visit Page" do
    visit "https://training-wheels-protocol.herokuapp.com"
    expect(page.title).to eql "Training Wheels Protocol"
  end
end
