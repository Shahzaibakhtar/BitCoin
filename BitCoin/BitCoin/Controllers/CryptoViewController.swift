//
//  CryptoViewController.swift
//  BitCoin
//
//  Created by Shahzaib Akhtar on 9/19/21.
//
import UIKit
import WebKit
class CryptoViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(refreshData), userInfo: nil, repeats: true)
        SVGtoImage(SVGURL: "https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/btc.svg")
    }
    func SVGtoImage(SVGURL: String){
        let path = SVGURL
        let webView = WKWebView(frame: self.view.bounds)
        let request = URLRequest(url: URL(string: path)!)
        webView.load(request)
        self.bitCoinLogo.addSubview(webView)
    }
    var ppath: String?
    @IBOutlet weak var piceLabel: UILabel!

    @objc func refreshData() -> Void
    {
        Secretary.shared.getDogData(url: URLofBTC.url.rawValue) { btcdm, error in
           // self.SVGtoImage(SVGURL: (String(btcdm!.logo_url)))
            self.piceLabel.text = btcdm?.price
        }
    }
    @IBOutlet weak var bitCoinLogo: WKWebView!
}
