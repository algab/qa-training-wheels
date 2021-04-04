describe "Keyboard", :key do
  before(:each) do
    visit "/key_presses"
  end

  it "Simulate keyboard" do
    keys = %i[tab escape space alt enter shift control]
    keys.each do |key|
      find("#campo-id").send_keys key
      expect(page).to have_content "You entered: " + key.to_s.upcase
    end
  end

  it "Send letters" do
    letters = %w[a s d f g h j k l]
    letters.each do |letter|
      find("#campo-id").send_keys letter
      expect(page).to have_content "You entered: " + letter.to_s.upcase
    end  
  end
end
