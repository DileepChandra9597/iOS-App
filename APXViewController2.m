//
//  APXViewController2.m
//  Dileep iOS TestApp
//
//  Created by Dileep on 10/10/23.
//

#import "APXViewController2.h"

@implementation APXViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
     
    self.horizontalData = @[
        [[CustomData alloc] initWithTitle:@"H1"], [[CustomData alloc] initWithTitle:@"H2"], [[CustomData alloc] initWithTitle:@"H3"],
        [[CustomData alloc] initWithTitle:@"H4"], [[CustomData alloc] initWithTitle:@"H5"], [[CustomData alloc] initWithTitle:@"H6"],
        [[CustomData alloc] initWithTitle:@"H7"], [[CustomData alloc] initWithTitle:@"H8"], [[CustomData alloc] initWithTitle:@"H9"],
        [[CustomData alloc] initWithTitle:@"H10"], [[CustomData alloc] initWithTitle:@"H11"],[[CustomData alloc] initWithTitle:@"H12"],
        [[CustomData alloc] initWithTitle:@"H13"], [[CustomData alloc] initWithTitle:@"H14"],[[CustomData alloc] initWithTitle:@"H15"],
        [[CustomData alloc] initWithTitle:@"H16"], [[CustomData alloc] initWithTitle:@"H17"],[[CustomData alloc] initWithTitle:@"H18"],
        [[CustomData alloc] initWithTitle:@"H19"], [[CustomData alloc] initWithTitle:@"H20"]


    ];
    
    self.verticalData = @[
        [[CustomData alloc] initWithTitle:@"V1"], [[CustomData alloc] initWithTitle:@"V2"], [[CustomData alloc] initWithTitle:@"V3"],
        [[CustomData alloc] initWithTitle:@"V4"], [[CustomData alloc] initWithTitle:@"V5"], [[CustomData alloc] initWithTitle:@"V6"],
        [[CustomData alloc] initWithTitle:@"V7"], [[CustomData alloc] initWithTitle:@"V8"], [[CustomData alloc] initWithTitle:@"V9"],
        [[CustomData alloc] initWithTitle:@"V10"], [[CustomData alloc] initWithTitle:@"V11"],[[CustomData alloc]initWithTitle:@"V12"],
        [[CustomData alloc] initWithTitle:@"V13"], [[CustomData alloc] initWithTitle:@"V14"],[[CustomData alloc]initWithTitle:@"V15"],
        [[CustomData alloc] initWithTitle:@"V16"], [[CustomData alloc] initWithTitle:@"V17"],[[CustomData alloc]initWithTitle:@"V18"],
        [[CustomData alloc] initWithTitle:@"V19"], [[CustomData alloc] initWithTitle:@"V20"],[[CustomData alloc] initWithTitle:@"V21"],
        [[CustomData alloc] initWithTitle:@"V22"], [[CustomData alloc] initWithTitle:@"V23"],[[CustomData alloc] initWithTitle:@"V24"],
        [[CustomData alloc] initWithTitle:@"V25"], [[CustomData alloc] initWithTitle:@"V26"],[[CustomData alloc] initWithTitle:@"V27"],
        [[CustomData alloc] initWithTitle:@"V28"], [[CustomData alloc] initWithTitle:@"V29"],[[CustomData alloc] initWithTitle:@"V30"],
        [[CustomData alloc] initWithTitle:@"V31"], [[CustomData alloc] initWithTitle:@"V32"],[[CustomData alloc] initWithTitle:@"V33"],
        [[CustomData alloc] initWithTitle:@"V34"], [[CustomData alloc] initWithTitle:@"V35"],[[CustomData alloc] initWithTitle:@"V36"],
        [[CustomData alloc] initWithTitle:@"V37"], [[CustomData alloc] initWithTitle:@"V38"],[[CustomData alloc] initWithTitle:@"V39"],
        [[CustomData alloc] initWithTitle:@"V40"], [[CustomData alloc] initWithTitle:@"V41"],[[CustomData alloc] initWithTitle:@"V42"],
        [[CustomData alloc] initWithTitle:@"V43"], [[CustomData alloc] initWithTitle:@"V44"],[[CustomData alloc] initWithTitle:@"V45"],
        [[CustomData alloc] initWithTitle:@"V46"], [[CustomData alloc] initWithTitle:@"V47"],[[CustomData alloc] initWithTitle:@"V48"],
        [[CustomData alloc] initWithTitle:@"V49"], [[CustomData alloc] initWithTitle:@"V50"]
    ];
    
    UICollectionViewFlowLayout *hLayout = [[UICollectionViewFlowLayout alloc] init];
    hLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    UICollectionView *hcv = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:hLayout];
    hcv.translatesAutoresizingMaskIntoConstraints = NO;
    [hcv registerClass:[CustomCell class] forCellWithReuseIdentifier:@"horizontalcell"];
    
    UICollectionViewFlowLayout *vLayout = [[UICollectionViewFlowLayout alloc] init];
    vLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    UICollectionView *vcv = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:vLayout];
    vcv.translatesAutoresizingMaskIntoConstraints = NO;
    [vcv registerClass:[CustomCell class] forCellWithReuseIdentifier:@"verticalcell"];
    
    self.horizontalCollectionView = hcv;
    [self.view addSubview:self.horizontalCollectionView];
    self.horizontalCollectionView.dataSource = self;
    self.horizontalCollectionView.delegate = self;
    
    
    self.verticalCollectionView = vcv;
    [self.view addSubview:self.verticalCollectionView];
    self.verticalCollectionView.dataSource = self;
    self.verticalCollectionView.delegate = self;
    
    [self.horizontalCollectionView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:120].active = YES;
    [self.horizontalCollectionView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:40].active = YES;
    [self.horizontalCollectionView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-40].active = YES;
    [self.horizontalCollectionView.heightAnchor constraintEqualToConstant:130].active = YES;
    
    [self.verticalCollectionView.topAnchor constraintEqualToAnchor:self.horizontalCollectionView.bottomAnchor constant:40].active = YES;
    [self.verticalCollectionView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:40].active = YES;
    [self.verticalCollectionView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-40].active = YES;
    [self.verticalCollectionView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor].active = YES;
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if (collectionView == self.horizontalCollectionView) {
        
        return CGSizeMake(collectionView.frame.size.width / 3.2, collectionView.frame.size.width / 3.2);
    } else if (collectionView == self.verticalCollectionView) {

        return CGSizeMake(collectionView.frame.size.width / 2.8, collectionView.frame.size.width / 3);
    }
    return CGSizeMake(collectionView.frame.size.width , collectionView.frame.size.width );

}

#pragma mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    if (collectionView == self.horizontalCollectionView) {
        return self.horizontalData.count;

    } else if (collectionView == self.verticalCollectionView) {

        return self.verticalData.count;
    }
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomCell *cell;
    if (collectionView == self.horizontalCollectionView) {
        
        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"horizontalcell" forIndexPath:indexPath];
        cell.contentView.backgroundColor = [[UIColor systemRedColor] colorWithAlphaComponent: 1];
        cell.data = self.horizontalData[indexPath.item];
    }
    else if (collectionView == self.verticalCollectionView) {

        cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"verticalcell" forIndexPath:indexPath];
        cell.contentView.backgroundColor = [[UIColor systemBlueColor] colorWithAlphaComponent:0.85];
        cell.data = self.verticalData[indexPath.item];
    }
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    if (collectionView == self.horizontalCollectionView) {
        
        DetailViewController *detailVC = [[DetailViewController alloc] init];
        detailVC.selectedTitle = self.horizontalData[indexPath.row];
        [self.navigationController pushViewController:detailVC animated:YES];
        
    }else if (collectionView == self.verticalCollectionView) {
        
        DetailViewController *detailVC = [[DetailViewController alloc] init];
        detailVC.selectedTitle = self.verticalData[indexPath.row];
        [self.navigationController pushViewController:detailVC animated:YES];
    }
}


@end



@implementation CustomData

- (instancetype)initWithTitle:(NSString *)title{
    
    self = [super init];
    if(self){
        
        self.title = title;
    }
    return self;
}
@end



@implementation CustomCell

- (void)setData:(CustomData *)data {
    _data = data;
    
    if (data) {
        self.titleLabel.text = data.title;
    }
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        self.titleLabel = [[UILabel alloc] init];
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        self.titleLabel.textColor = [UIColor whiteColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        
        
        [self.contentView addSubview:self.titleLabel];
        [self.titleLabel.topAnchor constraintEqualToAnchor:self.contentView.topAnchor].active = YES;
        [self.titleLabel.leftAnchor constraintEqualToAnchor:self.contentView.leftAnchor].active = YES;
        [self.titleLabel.rightAnchor constraintEqualToAnchor:self.contentView.rightAnchor].active = YES;
        [self.titleLabel.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor].active = YES;
        self.contentView.layer.borderWidth = 0.8;
        self.contentView.layer.borderColor = [UIColor darkGrayColor].CGColor;
        self.contentView.layer.cornerRadius = 10;
    }
    return self;
}

@end

@implementation DetailViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    UILabel *titleLable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 144)];
    titleLable.center = self.view.center;
    titleLable.textAlignment = NSTextAlignmentCenter;
    titleLable.text = self.selectedTitle.title;
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:titleLable];
    
    UIFont *customFont = [UIFont fontWithName:@"Arial" size:100.0]; // Replace 20.0 with the desired font size
    titleLable.font = customFont;
}

@end

