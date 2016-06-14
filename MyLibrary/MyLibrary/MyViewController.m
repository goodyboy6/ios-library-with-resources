#import "MyViewController.h"
#import "masonry.h"

@implementation MyViewController

- (id)init {
    NSBundle *bundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:@"MyLibraryResources" withExtension:@"bundle"]];
    if ((self = [super initWithNibName:@"MyViewController" bundle:bundle])) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *img = [UIImage imageNamed:@"MyLibraryResources.bundle/img1"];
    UIImageView *imgView = [[UIImageView alloc] initWithImage:img];
    imgView.frame = self.view.bounds;
    imgView.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imgView];
    
    [imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

@end
