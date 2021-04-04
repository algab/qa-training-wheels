describe "IDs Dynamic", :dynamic do
  before(:each) do
    visit "/access"
  end

  it "Register" do
    find("input[id$=UsernameInput]").set "Álvaro"
    find("input[id^=PasswordInput]").set "123456"
    find("a[id*=GetStartedButton]").click

    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
  end
end
