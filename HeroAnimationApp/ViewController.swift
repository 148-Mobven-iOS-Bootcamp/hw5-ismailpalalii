//
//  ViewController.swift
//  HeroAnimationApp
//
//  Created by ismail palali on 16.01.2022.
//

import UIKit
import Hero

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
   
    // MARK: - Add city name and image array
    var cityName = [String]()
    var cityDescription = [String]()
    var selectedCityName = ""
    var selectedCityImage = UIImage()
    var cityImage = [UIImage]()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayAddObject()
        navigationItem.title = "Ancient Cities Guide"
    }
    
    func arrayAddObject() {
        cityName.append("Petra Antik Kenti, Ürdün")
        cityName.append("Göbeklitepe, Türkiye")
        cityName.append("Persepolis, İran")
        cityName.append("Atina Akropolisi, Yunanistan")
        cityName.append("Teotihuacan, Meksika")
        
        cityImage.append(UIImage(named:"petra.jpg")!)
        cityImage.append(UIImage(named:"gobeklitepe.jpg")!)
        cityImage.append(UIImage(named:"persepolis.jpg")!)
        cityImage.append(UIImage(named:"atina.jpg")!)
        cityImage.append(UIImage(named:"teotihuacan.jpg")!)
        
        cityDescription.append("Geçmişi MÖ 400 yılına dayanan Petra Antik Kenti, göçmen kabilelerden oluşan Nebati Krallığı’nın başkentiydi. Basra Körfezi’ne kadar uzanan önemli bir ticaret yolunda bulunan bu kent, Romalıların işgali ile çok büyük hasar gördü. Dönemine göre oldukça ileri sayılan bir kültüre ev sahipliği yapan kent, farklı kültürlerin ve toplumların etkisi altında günümüze kadar varlığını sürdürdü. Bugün şehirde antik tiyatro, tapınak ve Roma dönemine ait eserleri görmek mümkün. Dikkat çekici mimarisi ve büyüleyici görüntüsü ile Petra, birçok film için de çekim mekanı olarak tercih ediliyor. ")
        cityDescription.append("Şanlıurfa sınırları içerisinde yer alan Göbeklitepe, 12.000 yıllık geçmişiyle bugün dünyanın bilinen en eski ve en büyük antik kentlerinden biri. T biçimli dikilitaşların ön plana çıktığı ve birbirinden farklı geometrik biçimlerdeki anıtsal mimari yapıları ile yerleşik hayata geçişin tablosunu sunan bu kent, insan elinden çıkmış en eski yer olarak biliniyor. Tamamı koruma altına alınan kentte yeni kazılar da devam ediyor.  ")
        cityDescription.append("İran’da dönemin kralı I. Darius tarafından MÖ 521 yılında yapımı başlatılan Persepolis, muazzam kent yapısının içerisinde kral mezarları, tapınakları ve sarayları barındırıyor. Persepolis Antik Kenti’nde sütun kaideler ve Perslerin inançlarını yansıtan heykeller yer alıyor. Perslerin günlük yaşamına dair ipuçları veren Persepolis, kralın yaptırdığı değerli eserlere de ev sahipliği yapmış bir kent olarak biliniyor. ")
        cityDescription.append("Tanrıça Athena’ya adanmış ve kendi çağının en büyük tapınağı olarak bilinen Atina Akropolisi’ni içerisinde barındıran alan; Parthenon, Propylaion, Athena Tapınağı ve Erekhtheion’dan oluşuyor. Hem saldırılardan korunmak hem de tanrıları kutsamak adına şehir merkezindeki yüksek kayalığa inşa edilen Atina Akropolisi’nin içerisinde yer alan Dionyssos Tiyatrosu, Nike Tapınağı ve Odeon of Heredot Atticus mutlaka görülmesi gereken yerler arasında bulunuyor. ")
        cityDescription.append("Tanrıların doğduğu yer anlamına gelen Teotihuacan, Mexico City’de yer alıyor. Efsaneye göre tanrıların oturup insanları yaratmak için plan yaptığı bu antik kentte çok fazla yazılı belgeye rastlanmaması, Teotihuacan’ın üzerindeki gizemi arttıran en önemli unsurlandan biri. MS 1. ve 7. yüzyıllar arasında kurulan antik kentin içerisinde bulunan Güneş ve Ay Piramidi arkeolojik açıdan büyük önem taşıyor.")
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityName.count
    }
}
