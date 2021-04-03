describe "Upload" do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/upload"
    @file = Dir.pwd + "/spec/fixtures/arquivo.txt"
    @image = Dir.pwd + "/spec/fixtures/groot.png"
  end

  it "Upload file text" do
    attach_file("file-upload", @file)
    click_button "Upload"
    div_file = find("#uploaded-file")
    expect(div_file.text).to eql "arquivo.txt"
  end

  it "Upload file image" do
    attach_file("file-upload", @image)
    click_button "Upload"
    img = find("#new-image")
    expect(img[:src]).to include "/uploads/groot.png"
  end

  after(:each) do
    sleep 2
  end
end
