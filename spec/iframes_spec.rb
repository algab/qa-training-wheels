describe "iframes", :iframe do
  describe "good" do
    before(:each) do
      visit "/nice_iframe"
    end

    it "add to cart" do
      within_frame("burgerId") do
        prd = find(".menu-item-info-box", text: "REFRIGERANTE")
        prd.find("a").click
        expect(find("#cart")).to have_content "R$ 4,50"
      end
    end
  end

  describe "bad" do
    before(:each) do
      visit "/bad_iframe"
    end

    it "cart is empty" do
      script = '$(".box-iframe").attr("id", "tempId")'
      page.execute_script(script)
      within_frame("tempId") do
        expect(find("#cart")).to have_content "Seu carrinho está vazio!"
      end
    end
  end
end
