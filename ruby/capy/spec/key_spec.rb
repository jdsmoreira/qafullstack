describe "Teclado", :key do
  before(:each) do
    visit "/key_presses"
  end

  it "enviando teclas" do
    # %i para criar um array de simbolos
    teclas = %i[tab escape space enter shift control alt]

    teclas.each do |t|
      find("#campo-id").send_keys t
      expect(page).to have_content "You entered: " + t.to_s.upcase
      sleep 1
    end
  end

  it "enviando letras" do
    # %i para criar um array de strings
    letras = %w[a s d f g h j k l]

    letras.each do |l|
      find("#campo-id").send_keys l
      expect(page).to have_content "You entered: " + l.upcase
      sleep 1
    end
  end
end
