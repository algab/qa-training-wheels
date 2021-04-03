describe "Alerts JS", :alerts do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/javascript_alerts"
  end

  it "Alert" do
    click_button "Alerta"
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "Isto é uma mensagem de alerta"
  end

  it "Alert confirm" do
    click_button "Confirma"

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "E ai confirma?"

    page.driver.browser.switch_to.alert.accept

    expect(page).to have_content "Mensagem confirmada"
  end

  it "Alert cancel" do
    click_button "Confirma"

    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "E ai confirma?"

    page.driver.browser.switch_to.alert.dismiss

    expect(page).to have_content "Mensagem não confirmada"
  end

  it "Accept prompt" do
    accept_prompt(with: "Álvaro") do
      click_button "Prompt"
    end
    expect(page).to have_content "Olá, Álvaro"
  end

  it "Dismiss prompt" do
    dismiss_prompt(with: "Álvaro") do
      click_button "Prompt"
    end
    expect(page).to have_content "Olá, null"
  end
end
