describe "Drag and Drop" do
  before(:each) do
    visit "/drag_and_drop"    
  end

  it "Spider-man team stark" do
    stark = find(".team-stark .column")
    cap = find(".team-cap .column")

    spider = find("img[alt$=Aranha]")
    spider.drag_to stark

    expect(stark).to have_css "img[alt$=Aranha]"
    expect(cap).not_to have_css "img[alt$=Aranha]"
  end  
end
