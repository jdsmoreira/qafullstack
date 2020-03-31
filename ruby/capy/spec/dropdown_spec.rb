describe "Caixa de opções", :dropdown do
  it "item especifico simples" do
    visit "/dropdown"
    #Funciona somente com elemento que tem ID
    select("Loki", from: "dropdown")
    sleep 3 #temporário
  end

  it "item especifico com o find" do
    visit "/dropdown"
    drop = find(".avenger-list")
    drop.find("option", text: "Scott Lang").select_option
    sleep 3 # temporário
  end

  it "qualquer item", :sample do
    visit "/dropdown"
    drop = find(".avenger-list")
    drop.all("option").sample.select_option
  end
end
