describe "First Script" do
  it "Visit Page" do
    visit "/"
    expect(page.title).to eql "Training Wheels Protocol"
  end
end
