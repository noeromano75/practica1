//
//  ViewController.swift
//  practica3
//
//  Created by Noe Romano Vazquez on 13/01/22.
//  Copyright © 2022 noeromano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var importeTotal: UITextField!

    var ListOpciones = [10,15,20]
    var propinaSeleccionada=10
    
    @IBOutlet weak var totalPropina: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //tableViewm.dataSource = self
        //tableViewm.delegate = self
        
        pickerView.dataSource=self
        pickerView.delegate=self
    }
    @IBAction func Calcular(_ sender: Any) {
        print("calcular")
        if let valor = importeTotal.text{
            //let total = Float(valor * propinaSeleccionada)/100
            
            
            let total = (Int(valor)! + (Int(valor)! * Int(propinaSeleccionada)) / 100)
            totalPropina.text = "total: \(total)"
        }
        

    }
}

extension ViewController : UIPickerViewDataSource, UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ListOpciones.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        propinaSeleccionada = ListOpciones[row]
        print(propinaSeleccionada)
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(ListOpciones[row])"
    }
}




























/*
extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ListOpciones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = "\(ListOpciones[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        propinaSeleccionada = ListOpciones[indexPath.row]
        print("\(self.propinaSeleccionada ?? 0)")
    }
}
 */
    
    


