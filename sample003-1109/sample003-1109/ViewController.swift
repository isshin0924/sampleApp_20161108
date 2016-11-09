import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ボタンのサイズを定義.
        let bWidth: CGFloat = 200
        let bHeight: CGFloat = 50
        print(self.view.frame.width/2)
        // 配置する座標を定義(画面の中心).
        let posX: CGFloat = 100
        let posY: CGFloat = 150
        
        // Labelを作成.
        let label: UILabel = UILabel(frame: CGRect(x: posX, y: posY, width: bWidth, height: bHeight))
        
        // UILabelに文字を代入.
        label.text = "Your iPhone's Formating..."
        label.textColor = UIColor.white
        
        // Textを中央寄せにする.
        label.textAlignment = NSTextAlignment.center
        
        // ViewにLabelを追加.
        self.view.addSubview(label)
        
        // 背景色を黒色にする.
        self.view.backgroundColor = UIColor.black
        
        // ProgressViewを作成する.
        let myProgressView: UIProgressView = UIProgressView(frame: CGRect(x:0, y:0, width:280, height:10))
        myProgressView.progressTintColor = UIColor.green
        myProgressView.trackTintColor = UIColor.white
        
        // 座標を設定する.
        myProgressView.layer.position = CGPoint(x: self.view.frame.width/2, y: 200)
        
        // バーの高さを設定する(横に1.0倍,縦に2.0倍).
        myProgressView.transform = CGAffineTransform(scaleX: 1.0, y: 3.0)
        
        // 進捗具合を設定する(0.0~1.0).
        myProgressView.progress = 0.1
        // アニメーションを付ける.
        //myProgressView.setProgress(5.0, animated: true)
        UIView.animate(withDuration: 1, animations: { () -> Void in
            myProgressView.setProgress(1, animated: true)
        }, completion: { (Bool) -> Void in
                let myAlert: UIAlertController = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .alert)
                print("ok")
                // OKのアクションを作成する.
                let myOkAction = UIAlertAction(title: "OK", style: .default) { action in
                    print("Your data all delete!")
                    // UIAlertを発動する.
                    self.present(myAlert, animated: true, completion: nil)
                
            }
        })
        // Viewに追加する.
        self.view.addSubview(myProgressView)
        
        
        //確認用
        print(myProgressView.progress)
        //print(myProgressView.progress.hashValue)
        //print(myProgressView.progress.distance(to: Float(myProgressView.frame.width)))
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
