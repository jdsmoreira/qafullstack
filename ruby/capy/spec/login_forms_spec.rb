describe "forms", :smoke do
  it "login com sucesso" do
    visit "/login"

    fill_in "userId", with: "stark"
    fill_in "password", with: "jarvis!"

    click_button "Login"

    expect(find("#flash").visible?).to be true

    #Verifica se na string contém o texto
    expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"

    #Verifica se no elemento contém o conteudo verificado
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "senha incorreta" do
    visit "/login"

    fill_in "userId", with: "stark"
    fill_in "password", with: "jarvis1"

    click_button "Login"

    expect(find("#flash").visible?).to be true

    expect(find("#flash")).to have_content "Senha é invalida!"
  end

  it "usuário não cadastrado" do
    visit "/login"

    fill_in "userId", with: "stark1"
    fill_in "password", with: "jarvis1"

    click_button "Login"

    expect(find("#flash").visible?).to be true

    expect(find("#flash")).to have_content "O usuário informado não está cadastrado!"
  end
end
