#import "AppDelegate.h"

#import "MyViewController.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    MyViewController *viewController = [[MyViewController alloc] init];
    self.window.rootViewController = viewController;
    
    [self.window makeKeyAndVisible];
    
    UIImage *img = [UIImage imageNamed:@"MyLibraryResources.bundle/img2"];
    UIImageView *imgView = [[UIImageView alloc] initWithImage:img];
    imgView.frame = self.window.bounds;
    imgView.contentMode = UIViewContentModeScaleAspectFit;
    [self.window addSubview:imgView];
    
    return YES;
}

@end
