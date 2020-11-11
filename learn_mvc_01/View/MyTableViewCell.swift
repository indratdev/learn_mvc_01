import UIKit

class MyTableViewCell: UITableViewCell {

   static let identifier = "MVCTableViewCell"
    
    var mcvModel: MVCModel! {
        didSet {
            textLabel?.text = "\(mcvModel.firstname) \(mcvModel.lastName)"
            if mcvModel.skillLevel <= 20 {
                detailTextLabel?.text = "junior"
            }else if mcvModel.skillLevel <= 50 {
                detailTextLabel?.text = "mid level"
            }else{
                detailTextLabel?.text = "senior"
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init code has not been implemented")
    }

}
