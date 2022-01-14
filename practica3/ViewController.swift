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
    var propinaSeleccionada:Int?
    
    @IBOutlet weak var totalPropina: UILabel!
    @IBOutlet weak var tableViewm: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewm.dataSource = self
        tableViewm.delegate = self
    }
    @IBAction func Calcular(_ sender: Any) {
        print("calcular")
        /*let total:Double?
        total = (importeTotal*propinaSeleccionada)/100
        totalPropina.text = "total: \(total)"*/
    }
}


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
        print("\(ListOpciones[indexPath.row])")
        propinaSeleccionada = ListOpciones[indexPath.row]
    }
}
    
    


