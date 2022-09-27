//
//  HomeViewController.swift
//  IOS-Calculator
//
//  Created by Mikel Valle on 26/9/22.
//

import UIKit

final class HomeViewController: UIViewController {
//MARK: -Outles
    
    //Numbers
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var number0: UIButton!
    @IBOutlet weak var number1: UIButton!
    @IBOutlet weak var number2: UIButton!
    @IBOutlet weak var number3: UIButton!
    @IBOutlet weak var number4: UIButton!
    @IBOutlet weak var number5: UIButton!
    @IBOutlet weak var number6: UIButton!
    @IBOutlet weak var number7: UIButton!
    @IBOutlet weak var number8: UIButton!
    @IBOutlet weak var number9: UIButton!
    @IBOutlet weak var numberDecimal: UIButton!
    
    
    //Operators
    @IBOutlet weak var operatorsAC: UIButton!
    @IBOutlet weak var operatorsMasMenos: UIButton!
    @IBOutlet weak var operatorsPorcen: UIButton!
    @IBOutlet weak var operatorsResult: UIButton!
    @IBOutlet weak var operatorsMas: UIButton!
    @IBOutlet weak var operatorsMenos: UIButton!
    @IBOutlet weak var operatorsMulti: UIButton!
    @IBOutlet weak var operatorsDivision: UIButton!
    
    
    
    
    
    //Initialization
    init(){
        super.init(nibName: nil, bundle: nil)//La forma que tenemos de asociar un XIB ha un controlador Swift
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")//Es un bloque necesario que sale solo
    }
    
    
    
    
    //Este es el ciclo de vida
    override func viewDidLoad() {
        super.viewDidLoad()

        number0.round()
        number1.round()
        number2.round()
        number3.round()
        number4.round()
        number5.round()
        number6.round()
        number7.round()
        number8.round()
        number9.round()
        numberDecimal.round()
        
        operatorsAC.round()
        operatorsMas.round()
        operatorsMulti.round()
        operatorsMenos.round()
        operatorsDivision.round()
        //Revisa operatorsMasMenos.round()
        operatorsPorcen.round()
        operatorsResult.round()
    }
//MARK - Button Actions
    
    @IBAction func operatorsAcAction(_ sender: Any) {
    }
    @IBAction func operatorsMasMenosAction(_ sender: Any) {
        
    }
    @IBAction func operatorsPorcen(_ sender: Any) {
    }

    @IBAction func operatorsResultAction(_ sender: Any) {
        
    }
    @IBAction func operatorsMasAction(_ sender: Any) {
        
    }
    @IBAction func operatorsMenosAction(_ sender: Any) {
        
    }
    @IBAction func operatorsMultiAction(_ sender: Any) {
        
    }
    @IBAction func operatorsDivisionAction(_ sender: Any) {
        
    }
    @IBAction func numberDecimalAction(_ sender: Any) {
    }
    
    @IBAction func numberAction(_ sender: UIButton) {
        print(sender.tag)
    }
    
    
    
    
    
}
