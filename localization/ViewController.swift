//
//  ViewController.swift
//  localization
//
//  Created by Admin on 30/10/23.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var languagepicker: UIPickerView!
    
    let languages = ["English", "Tamil", "Japanese"]
    override func viewDidLoad() {
        super.viewDidLoad()
        languagepicker.dataSource = self
        languagepicker.delegate = self
    }
    
    
    
    // MARK: - UIPickerViewDataSource Methods
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return languages.count
    }
    
    // MARK: - UIPickerViewDelegate Methods
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return languages[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedLanguage = languages[row]
        // Set the app's language/locale based on the selected language
            if selectedLanguage == "English" {
                label.text = "ILA Resource Collections offer evidence-based, practitioner-friendly content carefully curated from recorded sessions, peer-reviewed journal articles, magazine features, and research-based instructional practices."

            } else if selectedLanguage == "Tamil" {
                label.text = "பல நூற்றாண்டுகளாக செய்யுள் வடிவமே தமிழ் இலக்கியங்களிலும், தத்துவங்களிலும் பயன்படுத்தப்பட்டது. உரை வடிவம் இலக்கணங்களுக்கும், செய்யுள் விளக்கம் கூறவதற்கும், சாசனங்கள் (records) பதிவு செய்வதற்கும் பயன்படுத்தப்பட்டது. 20ஆம் நூற்றாண்டிலேயே உரை வடிவம் வளர்ச்சி பெற்று, மக்களின் பல்வேறுபட்ட தேவைகளுக்கும் பயன்படுகின்றது. கட்டுரையே உரைநடை வெளிப்பாட்டின் முக்கிய வடிவம் ஆகும்."
            } else if selectedLanguage == "Japanese" {
                label.text = "順帝昇明二年，倭王武遣使上表曰：封國偏遠，作藩于外，自昔祖禰，躬擐甲冑，跋渉山川，不遑寧處。東征毛人五十國，西服衆夷六十六國，渡平海北九十五國，王道融泰，廓土遐畿，累葉朝宗，不愆于歳。臣雖下愚，忝胤先緒，驅率所統，歸崇天極，道逕百濟，裝治船舫，而句驪無道，圖欲見吞，掠抄邊隸，虔劉不已，毎致稽滯，以失良風。雖曰進路，或通或不。臣亡考濟實忿寇讎，壅塞天路，控弦百萬，義聲感激，方欲大舉，奄喪父兄，使垂成之功，不獲一簣。居在諒闇，不動兵甲，是以偃息未捷。至今欲練甲治兵，申父兄之志，義士虎賁，文武效功，白刃交前，亦所不顧。若以帝德覆載，摧此強敵，克靖方難，無替前功。竊自假開府儀同三司，其餘咸各假授，以勸忠節。詔除武使持節督倭、新羅、任那、加羅、秦韓六國諸軍事、安東大將軍、倭國王。至齊建元中，及梁武帝時，并來朝貢"
               
            }
        

    }
    

}


