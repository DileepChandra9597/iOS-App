//
//  APXViewController3.h
//  Dileep iOS TestApp
//
//  Created by Dileep on 10/10/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface APXViewController3 : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) UITableView *tableView;
@property(nonatomic,strong) NSArray *engTVSeries;

@end


@interface HundredTableViewCell : UITableViewCell

@property(nonatomic,strong) UIView *cellView;
@property(nonatomic,strong) UILabel *seriesLabel;

- (void)setupView;

@end

NS_ASSUME_NONNULL_END
