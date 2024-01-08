//
//  APXViewController3.m
//  Dileep iOS TestApp
//
//  Created by Dileep on 10/10/23.
//

#import "APXViewController3.h"

@interface APXViewController3 ()

@end

@implementation APXViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.engTVSeries = @[
        @"Friends", @"Game of Thrones", @"How I met your mother", @"Mouse", @"Breaking Bad",
        @"Stranger Things", @"Sherlock", @"The Office", @"The Big Bang Theory", @"Seinfeld",
        @"Modern Family", @"Black Mirror", @"The Mandalorian", @"The Witcher", @"The Simpsons",
        @"The Sopranos", @"The Handmaid's Tale", @"Westworld", @"The X-Files", @"Lost",
        @"The Walking Dead", @"Grey's Anatomy", @"M*A*S*H", @"Dexter", @"The Twilight Zone",
        @"House", @"The Office (US)", @"Fargo", @"The Wire", @"The Crown", @"The West Wing",
        @"The Fresh Prince of Bel-Air", @"The Simpsons", @"Breaking Bad", @"Stranger Things",
        @"Sherlock", @"Black Mirror", @"The Mandalorian", @"The Witcher", @"The Handmaid's Tale",
        @"Westworld", @"The X-Files", @"Lost", @"The Walking Dead", @"Grey's Anatomy", @"Dexter"
    ];
    
    UITableView *tView = [[UITableView alloc] init];
    tView.backgroundColor = [UIColor whiteColor];
    tView.separatorColor = [UIColor whiteColor];
    tView.translatesAutoresizingMaskIntoConstraints = NO;
    [tView registerClass:[HundredTableViewCell class] forCellReuseIdentifier:@"tableviewcell"];
    
    self.tableView = tView;
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.view addSubview:self.tableView];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
        [self.tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor],
        [self.tableView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor],
        [self.tableView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor]]
    ];
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath { 
    
    HundredTableViewCell *tvCell = [tableView dequeueReusableCellWithIdentifier:@"tableviewcell" forIndexPath:indexPath];
    tvCell.seriesLabel.text = self.engTVSeries[indexPath.row];
    tvCell.backgroundColor = [UIColor whiteColor];
    
    return tvCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *text = self.engTVSeries[indexPath.row];
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = UIColor.whiteColor;
    self.view.backgroundColor = UIColor.whiteColor;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 144)];
    label.text = text;
    label.textColor = [UIColor blackColor];
    label.textAlignment = NSTextAlignmentCenter;
    
    [viewController.view addSubview:label];
    label.center = viewController.view.center;
    
    [self.navigationController pushViewController:viewController animated:YES];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 75;
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.engTVSeries.count;
}


@end


@implementation HundredTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if(self){
        [self setupView];
    }
    return self;
}

- (void) setupView{
    
    self.cellView = [[UIView alloc] init];
    self.cellView.backgroundColor = [[UIColor systemBlueColor] colorWithAlphaComponent:0.8];
    self.cellView.layer.cornerRadius = 10;
    self.cellView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.contentView addSubview:self.cellView];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [NSLayoutConstraint activateConstraints:@[
      [self.cellView.topAnchor constraintEqualToAnchor:self.topAnchor constant:20],
      [self.cellView.leftAnchor constraintEqualToAnchor:self.leftAnchor constant:10],
      [self.cellView.rightAnchor constraintEqualToAnchor:self.rightAnchor constant:-10],
      [self.cellView.bottomAnchor constraintEqualToAnchor:self.bottomAnchor]
    ]];
    
    
    self.seriesLabel = [[UILabel alloc] init];
    self.seriesLabel.textColor = [UIColor whiteColor];
    self.seriesLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.cellView addSubview:self.seriesLabel];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.seriesLabel.heightAnchor constraintEqualToConstant:200],
        [self.seriesLabel.widthAnchor constraintEqualToConstant:200],
        [self.seriesLabel.centerYAnchor constraintEqualToAnchor:self.cellView.centerYAnchor],
        [self.seriesLabel.leftAnchor constraintEqualToAnchor:self.cellView.leftAnchor constant:20]
    ]];
    
}

@end


