
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITabBarDelegate {
   
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultDeck.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = "\(defaultDeck[indexPath.row])"
        cell.imageView?.image = UIImage(named: defaultDeck[indexPath.row])
        return cell
    }
    func tableView( tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(175)
    }
    



}


