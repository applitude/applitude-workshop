import UIKit

class ViewController: UIViewController {

    private let svadaArray = [
        ["Gitt", "Under hensyntagen til", "I lys av", "Vedrørende", "Grunnet", "I betraktning av", "Forutsatt"],
        ["en integrert", "en optimal", "en sømløs", "en implisitt", "en proaktiv", "en betydelig", "en økt"],
        ["målsetting", "effekt", "struktur", "agenda", "tidshorisont", "overveielse", "mobilitet"],
        ["synliggjøres", "tas det høyde for", "iverksettes", "identifiseres", "initieres", "lokaliseres", "kommuniseres"],
        ["potensialet", "risikofaktorene", "fokus", "synergieffekten", "incitamentet", "forankringen", "insentivene"],
        ["innenfor rammen av", "som en følge av", "for så vidt gjelder", "med henblikk på", "i forhold til", "hva angår", "parallelt med"],
        ["en samlet vurdering", "forholdene", "konseptet", "ressurssituasjonen", "tilgjengeliggjøringen", "føringene", "evalueringen"]
    ]
    
    private let colors = [UIColor.blue, UIColor.white, UIColor.brown, UIColor.red, UIColor.orange, UIColor.green, UIColor.purple, UIColor.cyan, UIColor.yellow]
    
    @IBOutlet private var svadaLabel: UILabel!
    @IBOutlet private var generateButton: UIButton!
    
    @IBAction func generateButtonTapped(_ sender: UIButton) {
        oppdaterSvadaView();
    }
    
    public func oppdaterSvadaView() {
        let randomIndeks = Int(arc4random_uniform(UInt32(colors.count)));
        self.view.backgroundColor = colors[randomIndeks];
    
        svadaLabel.text = generateSentence()
    }

    override func viewDidLoad() {
        let appDelegateRef = UIApplication.shared.delegate as! AppDelegate
        
        appDelegateRef.referanseTilVc = self;
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func generateSentence() -> String {
        var sentence = ""
        for index in 0 ..< svadaArray.count {
            let randomPhrase = Int(arc4random_uniform(UInt32(svadaArray.count)))
            sentence += svadaArray[index][randomPhrase]
            sentence += index != svadaArray.count - 1 ? " " : "."
        }
        print(sentence);
        return sentence
    }

}
