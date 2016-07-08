import UIKit

class ViewController: UIViewController {


    var Timer = NSTimer()
    var time = 0;
    
    
    
    @IBOutlet var ResultLabel: UILabel!
    func IncreaseTimer()
    {
        time++
        ResultLabel.text = "\(time)"
    }

    
    
    
    @IBAction func play(sender: AnyObject) {
    
        Timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("IncreaseTimer"), userInfo: nil, repeats: true)
    
    }
    
    
    
    @IBAction func pause(sender: AnyObject) {
    
    Timer.invalidate()
    
    }
    
    
    @IBAction func reset(sender: AnyObject) {
    
    
    
    
    Timer.invalidate()
        
    time=0
        
    ResultLabel.text = "0"
        
        
        
 
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

