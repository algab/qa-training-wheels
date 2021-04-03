describe "Login 2", :login2 do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/login2"
  end

  it "Login with birthdate" do    
    find("#userId").set "stark"
    find("#passId").set "jarvis!"

    login_form = find("#login")

    case login_form
    when /Dia/
      find("#day").set "29"
    when /Mês/
      find("#month").set "05"
    else /Ano/
      find("#year").set "1970"
    end

    click_button "Login"

    expect(find("#flash").visible?).to be true
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end
end
