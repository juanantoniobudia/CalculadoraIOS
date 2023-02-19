//
//  HomeViewController.swift
//  CalculadoraiOS
//
//  Created by Juan Antonio Ortega Budia on 14/03/22.
//

import UIKit
//creo la clase como new fille - cocoatouchclass  y meto el xib en vista y el controller en controller
//declaro la clase como final para evitar extenciones que hereden de esta clase
final class HomeViewController: UIViewController {
    /*MARK: - Initialization
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }*/
    

    
    // MARK: - Outlets
    //resultado
    @IBOutlet weak var resultLabel: UILabel!
    //números
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
    //operadores
    @IBOutlet weak var operatorAc: UIButton!
    @IBOutlet weak var operatorPlusMinus: UIButton!
    @IBOutlet weak var operatorPercent: UIButton!
    @IBOutlet weak var operatorResult: UIButton!
    @IBOutlet weak var operatorAddition: UIButton!
    @IBOutlet weak var operatorSubstraction: UIButton!
    @IBOutlet weak var operatorMultiplication: UIButton!
    @IBOutlet weak var operatorDivision: UIButton!
    
    
    // MARK: -Initialitation
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //UI redondeo botones
        number0.round()
        number1.round()
        number2.round()
        number3.round()
        number4.round()
        number5.round()
        number7.round()
        number8.round()
        number9.round()
        numberDecimal.round()
        operatorAc.round()
        operatorPlusMinus.round()
        operatorPercent.round()
        operatorResult.round()
        operatorAddition.round()
        operatorSubstraction.round()
        operatorMultiplication.round()
        operatorDivision.round()

    }
    
    // MARK: - Button Actions
    @IBAction func operatorAcAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorPulsMinusAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorPercentAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorDivisionAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorMultiplicationAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorSubstractionAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorAdditionAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func operatorResultAction(_ sender: UIButton) {
        sender.shine()
    }
    @IBAction func numberDecimalAction(_ sender: UIButton) {
        sender.shine()
    }
    
    //creo una accion común para todas las teclas números
    //cambio a los botones la propiedad tag con el numero que representan para que la recoja en esta funcion comun y cambie según pulso uno u otro el valor
    //todos los botones los asocio a esta action tirando flechas desde cada uno a esta misma
    @IBAction func numberAction(_ sender: UIButton) {
        //let valor = sender.tag
        //print (valor)
    }
    

}
