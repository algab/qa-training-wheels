describe "Login Forms" do
  it "Login successful" do
    visit "/login"
    
    find("#userId").set "stark"
    find("#passId").set "jarvis!"

    click_button "Login"

    expect(find("#flash").visible?).to be true
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "User not found" do
    visit "/login"

    find("#userId").set "steve"
    find("#passId").set "jarvis!"

    click_button "Login"

    expect(find("#flash").visible?).to be true
    expect(find("#flash")).to have_content "O usuário informado não está cadastrado!"
  end

  it "Password is wrong" do
    visit "/login"

    find("#userId").set "stark"
    find("#passId").set "jarvis"

    click_button "Login"

    expect(find("#flash").visible?).to be true
    expect(find("#flash")).to have_content "Senha é invalida!"
  end
end
