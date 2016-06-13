#import "MyViewController.h"

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
    imgView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imgView];
}

@end
