//: Playground - noun: a place where people can play

// Løsningsforslag for Oppgave


@IBAction private func generateButtonTapped(_ sender: UIButton) {
    let colors = [UIColor.blue, UIColor.white, UIColor.brown, UIColor.red, UIColor.orange, UIColor.green, UIColor.purple, UIColor.cyan, UIColor.yellow]
    
    let randomIndeks = Int(arc4random_uniform(UInt32(colors.count)));
    self.view.backgroundColor = colors[randomIndeks];
    
    
    svadaLabel.text = generateSentence()
}

