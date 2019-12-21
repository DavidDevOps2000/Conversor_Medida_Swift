//
//  ViewController.swift
//  Conversor
//
//  Created by Dav on 13/11/19.
//  Copyright © 2019 Dav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    /*Top*/
    @IBOutlet var topo:UIView!
    
    @IBOutlet var numInput:UITextField!/* Valor Digitado */
    @IBOutlet var nomeMed:UILabel!/* Nome do Medidor */
    @IBOutlet var btnNext:UIButton!/* Botao Proximo */
    @IBOutlet var btnPrev:UIButton!/* Botao Voltar */
    
    @IBOutlet var btnRight:UIButton!/* Opção 1 */
    @IBOutlet var btnLeft:UIButton!/* Opção  2 */
    
    /*Footer*/
    @IBOutlet var resulMed:UILabel!/* Nome do Resultado */
    @IBOutlet var resulNum:UILabel!/* Valor do Resultado */
    var resultado:Double = 0.00
    var numEntrada = 0.0
    var null = ""
    
    
    
    @IBAction func calcRight(){//Botao conversor Direito
        if numInput.text != null{
            let numEntrada = Double(numInput.text!)!
            
            if nomeMed.text! == "Temperatura" {
                resultado = (numEntrada * 1.8) + 32
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "Fareheit"
                
            }else if nomeMed.text! == "Peso" {
                resultado = (numEntrada /  2.205)
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "Kilograma"
                
            }else if nomeMed.text! == "Moeda" {
                resultado = (numEntrada * 4.2)
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "Real"
                
            }
            else if nomeMed.text! == "Distancia" {
                resultado = (numEntrada / 1000)
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "KM"
                
            }else if nomeMed.text! == "Area" {
                resultado = (numEntrada * 100)
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "Hectares"
                
            }else if nomeMed.text! == "Volume" {
                resultado = (numEntrada * 100)
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "Metros²"
                
            }else {/*Velocidade*/
                resultado = (numEntrada / 1.609)
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "KM"
                
            }
            
        }else{
            resulMed.text!="Campo Nulo"
            resulMed.textColor = UIColor.red

            
        }
    }
    
    
    
    @IBAction func calcLeft(){//Botao conversor Esquerdo
        if numInput.text != null{
            let numEntrada = Double(numInput.text!)!
            
            if nomeMed.text! == "Temperatura" {
                resultado = (numEntrada - 32) / 1.8
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "Celsius"
                
            }else if nomeMed.text! == "Peso" {
                resultado = (numEntrada * 2.205)
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "Libra"
                
            }else if nomeMed.text! == "Moeda" {
                resultado = (numEntrada / 4.15)
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "Dolar"
                
            }
            else if nomeMed.text! == "Distancia" {
                resultado = (numEntrada * 1000)
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "Metros"
                
            }else if nomeMed.text! == "Area" {
                resultado = (numEntrada / 100)
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "KM²"
                
            }else if nomeMed.text! == "Volume" {
                resultado = (numEntrada / 1000)
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "Metros²"
                
            }else {/*Velocidade*/
                resultado = (numEntrada / 1.609)
                resulNum.text! = String(format:"%.2f", resultado)
                resulMed.text! = "KM"
                
            }
            
        }else{
            resulMed.textColor = UIColor.red
            resulMed.text!="Campo Nulo"
        }
    }
    
    
    @IBAction func  prox(){
        switch nomeMed.text!{
        case "Temperatura":
            nomeMed.text = "Peso"
            btnRight.setTitle("Kilograma", for: .normal)
            btnLeft.setTitle("Libra", for: .normal)
            topo.backgroundColor = UIColor.red
            resulNum.textColor = UIColor.red
            
        case "Peso":
            nomeMed.text = "Moeda"
            btnRight.setTitle("Real", for: .normal)
            btnLeft.setTitle("Dolar", for: .normal)
            topo.backgroundColor = UIColor.green
            resulNum.textColor = UIColor.green
            
        case "Moeda":
            nomeMed.text = "Distancia"
            btnRight.setTitle("KM", for: .normal)
            btnLeft.setTitle("Metro", for: .normal)
            topo.backgroundColor = UIColor.orange
            resulNum.textColor = UIColor.orange
            
        case "Distancia":
            nomeMed.text = "Area"
            btnRight.setTitle("Hectare", for: .normal)
            btnLeft.setTitle("KM²", for: .normal)
            topo.backgroundColor = UIColor.blue
            resulNum.textColor = UIColor.blue
        case "Area":
            nomeMed.text = "Volume"
            btnRight.setTitle("Metros³", for: .normal)
            btnLeft.setTitle("Litros", for: .normal)
            topo.backgroundColor = UIColor.purple
            resulNum.textColor = UIColor.purple
        case "Volume":
            nomeMed.text = "Velocidade"
            btnRight.setTitle("KM", for: .normal)
            btnLeft.setTitle("Milha", for: .normal)
            topo.backgroundColor = UIColor.brown
            resulNum.textColor = UIColor.brown
        default:
            nomeMed.text = "Temperatura"
            btnRight.setTitle("Farenheit", for: .normal)
            btnLeft.setTitle("Celsius", for: .normal)
            topo.backgroundColor = UIColor.orange
            resulNum.textColor = UIColor.orange
            
        }
    }
    
    @IBAction func prev(){
        switch nomeMed.text!{
        case "Temperatura":
            nomeMed.text = "Velocidade"
            btnRight.setTitle("KM", for: .normal)
            btnLeft.setTitle("Milha", for: .normal)
            topo.backgroundColor = UIColor.brown
            resulNum.textColor = UIColor.brown
            
        case "Velocidade":
            nomeMed.text = "Volume"
            btnRight.setTitle("Metros³", for: .normal)
            btnLeft.setTitle("Litros", for: .normal)
            topo.backgroundColor = UIColor.purple
            resulNum.textColor = UIColor.purple
            
        case "Volume":
            nomeMed.text = "Area"
            btnRight.setTitle("Hectare", for: .normal)
            btnLeft.setTitle("KM²", for: .normal)
            topo.backgroundColor = UIColor.blue
            resulNum.textColor = UIColor.blue
            
        case "Area":
            nomeMed.text = "Distancia"
            btnRight.setTitle("KM", for: .normal)
            btnLeft.setTitle("Metro", for: .normal)
            topo.backgroundColor = UIColor.purple
            resulNum.textColor = UIColor.purple
            
        case "Distancia":
            nomeMed.text = "Moeda"
            btnRight.setTitle("Real", for: .normal)
            btnLeft.setTitle("Dolar", for: .normal)
            topo.backgroundColor = UIColor.green
            resulNum.textColor = UIColor.green
            
        case "Moeda":
            nomeMed.text = "Peso"
            btnRight.setTitle("Kilograma", for: .normal)
            btnLeft.setTitle("Libra", for: .normal)
            topo.backgroundColor = UIColor.red
            resulNum.textColor = UIColor.red
        default:
            nomeMed.text = "Temperatura"
            btnRight.setTitle("Farenheit", for: .normal)
            btnLeft.setTitle("Celsius", for: .normal)
            topo.backgroundColor = UIColor.orange
        }
        
    }
    
    
    
    
}




