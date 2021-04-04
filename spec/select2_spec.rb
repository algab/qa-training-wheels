describe "Select2", :select2 do
  describe("single") do
    before(:each) do
      visit "/apps/select2/single.html"
    end

    it "Select actor by name" do
      find(".select2-selection--single").click
      find(".select2-results__options", text: "Adam Sandler").click
    end

    it "Search and click actor" do
      find(".select2-selection--single").click
      find(".select2-search__field").set "Chris Rock"
      find(".select2-results__options").click
    end
  end

  describe("multiple") do
    before(:each) do
      visit "/apps/select2/multi.html"
    end

    it "Select actors" do
      actors = ["Jim Carrey", "Owen Wilson", "Kevin James"]
      actors.each do |actor|
        select(actor)      
      end
    end

    def select(actor)
      find(".select2-selection--multiple").click
      find(".select2-search__field").set actor
      find(".select2-results__options").click
    end
  end
end
