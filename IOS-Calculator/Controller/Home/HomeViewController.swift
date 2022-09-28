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
    
    
    //MARK: - Operators
    @IBOutlet weak var operatorsAC: UIButton!
    @IBOutlet weak var operatorsMasMenos: UIButton!
    @IBOutlet weak var operatorsPorcen: UIButton!
    @IBOutlet weak var operatorsResult: UIButton!
    @IBOutlet weak var operatorsMas: UIButton!
    @IBOutlet weak var operatorsMenos: UIButton!
    @IBOutlet weak var operatorsMulti: UIButton!
    @IBOutlet weak var operatorsDivision: UIButton!
    
    //MARK: - Variables
    private var total: Double = 0 //Con está variable almacenamos el resultado de la calculadora
    private var temp: Double = 0 //Valor temporal, no corresponde con el total acumulado
    private var operating = false //Nos indica si se ha seleccionado un operador
    private var decimal = false //Indicamos si el valor es decimal
    private var operation: operationType = .nome //Operación actual.
    
    //MARK: - Constantes
    
    
    private let DecimalSeparator = Locale.current.decimalSeparator
    private let KMaxLength = 9
    private let KMaxValue: Double = 999999999
    private let KMinValue: Double = 0.0000001
    private enum operationType {
        case nome, addiction, substraction, multiplication, division, percent
    }
    
    
    //MARK: -Initialization
    init(){
        super.init(nibName: nil, bundle: nil)//La forma que tenemos de asociar un XIB ha un controlador Swift
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")//Es un bloque necesario que sale solo
    }
    
    
    
    
    //MARK: -Este es el ciclo de vida
    override func viewDidLoad() {
        super.viewDidLoad()
//MARK: - Funciones de los botones
        //Añadimos el redondeo a los botones, siempre añadiendo la extensión del botón especificando dicho efecto
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
        operatorsMasMenos.round()
        operatorsPorcen.round()
        operatorsResult.round()
        
        
        
    }
//MARK: - Button Actions
    
    @IBAction func operatorsAcAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorsMasMenosAction(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func operatorsPorcen(_ sender: UIButton) {
        sender.shine()
    }

    @IBAction func operatorsResultAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorsMasAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorsMenosAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorsMultiAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorsDivisionAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func numberDecimalAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func numberAction(_ sender: UIButton) {
        print(sender.tag)//cambiamos el sender  y le añadimos un print con .tag para que salga un tipo int
        sender.shine()
    }
//Cambiamos el sender a UIButton y le añadimos la función sender.shine, de esta forma haremos que brille cuando lo pulsamos.
}
