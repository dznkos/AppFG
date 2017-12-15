//
//  ViewController.swift
//  AppFulGol
//
//  Created by Goes on 12/15/17.
//  Copyright © 2017 wips. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{

    
    @IBOutlet weak var tlbProxPF: UITableView!
    
    var arrayPF = [ProxPFBE]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayPF.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ProxPFTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ProxPFTableViewCell
        cell.objProxPF = self.arrayPF[indexPath.row]
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let obj1 = ProxPFBE.crearPartido(equipo1: "Flamengo", equipo2: "Sport Rosario", urlImgEquipo1: "https://upload.wikimedia.org/wikipedia/commons/2/2e/Gremio-Logo.png", urlImgEquipo2: "https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/0007/9057/brand.gif?itok=71ONQF4g", espJugador: "02", campo: "Pata rota 82", hora: "06:00 pm", distancia: "400 m")
        let obj2 = ProxPFBE.crearPartido(equipo1: "Gremio", equipo2: "Corinthians", urlImgEquipo1: "https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/0007/9057/brand.gif?itok=71ONQF4g", urlImgEquipo2: "https://upload.wikimedia.org/wikipedia/commons/2/2e/Gremio-Logo.png", espJugador: "04", campo: "San Francisco FC", hora: "12:00 pm", distancia: "700 m")
        let obj3 = ProxPFBE.crearPartido(equipo1: "Sao Paulo", equipo2: "Sport Boys", urlImgEquipo1: "https://upload.wikimedia.org/wikipedia/commons/2/2e/Gremio-Logo.png", urlImgEquipo2: "https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/0007/9057/brand.gif?itok=71ONQF4g", espJugador: "06", campo: "Atahualpa 2003", hora: "07:00 pm", distancia: "1 k")
        let obj4 = ProxPFBE.crearPartido(equipo1: "Fluminense", equipo2: "Sao Paulo", urlImgEquipo1: "https://upload.wikimedia.org/wikipedia/commons/2/2e/Gremio-Logo.png", urlImgEquipo2: "https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/0007/9057/brand.gif?itok=71ONQF4g", espJugador: "07", campo: "Innestable", hora: "09:00 am", distancia: "1.5 k")
        let obj5 = ProxPFBE.crearPartido(equipo1: "Sao Paulo", equipo2: "Atletico Nacional", urlImgEquipo1: "https://upload.wikimedia.org/wikipedia/commons/2/2e/Gremio-Logo.png", urlImgEquipo2: "https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/0007/9057/brand.gif?itok=71ONQF4g", espJugador: "09", campo: "Fulbitodcalletano", hora: "05:00 pm", distancia: "2 k")
        
        self.arrayPF.append(obj1)
        self.arrayPF.append(obj2)
        self.arrayPF.append(obj3)
        self.arrayPF.append(obj4)
        self.arrayPF.append(obj5)
        self.tlbProxPF.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

