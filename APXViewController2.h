//
//  APXViewController2.h
//  Dileep iOS TestApp
//
//  Created by Dileep on 10/10/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomData : NSObject

@property (nonatomic, copy) NSString *title;

- (instancetype)initWithTitle:(NSString *)title;

@end


@interface APXViewController2: UIViewController<UICollectionViewDelegate,UICollectionViewDataSource> 

@property (nonatomic,strong) NSArray *horizontalData;
@property (nonatomic,strong) NSArray *verticalData;
@property (nonatomic,strong) UICollectionView *horizontalCollectionView;
@property (nonatomic,strong) UICollectionView *verticalCollectionView;

@end



@interface CustomCell : UICollectionViewCell

@property (nonatomic, strong) CustomData *data;
@property (nonatomic, strong) UILabel *titleLabel;
 
@end


@interface DetailViewController : UIViewController

@property (nonatomic, strong) CustomData *selectedTitle;
@property (nonatomic, strong) UILabel *titleLable;

@end


NS_ASSUME_NONNULL_END
