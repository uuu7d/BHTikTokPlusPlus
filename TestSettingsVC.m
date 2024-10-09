#import "TestSettingsVC.h"

@interface TestSettingsVC ()

@end

@implementation TestSettingsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *staticTable = [[UITableView alloc] init];
    staticTable.translatesAutoresizingMaskIntoConstraints = false;
    [self.view addSubview:staticTable];
    [NSLayoutConstraint activateConstraints:@[
        [staticTable.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
        [staticTable.trailingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.trailingAnchor],
        [staticTable.leadingAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leadingAnchor],
        [staticTable.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor],
           ]];
    staticTable.dataSource = self;
    staticTable.delegate = self;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5; // We'll have only one section
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [NSString stringWithFormat:@"Hello %ld", (long)section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0: // Feed section
            return 7; // The number of items in the Feed array
        case 1: // Profile section
            return 9; // The number of items in the Profile array
        case 2: // Confirm section
            return 8; // The number of items in the Confirm array
        case 3: // Other section
            return 10; // The number of items in the Other array
        case 4:
            return 2;
        default:
            return 0; // Fallback for unexpected section
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0:
                return [self createSwitchCellWithTitle:@"Hide Ads"
                                                  Detail:@"Hide all ads from the app"
                                                    Key:@"hide_ads"];
            case 1:
                return [self createSwitchCellWithTitle:@"Download Button"
                                                  Detail:@"Enable download button for videos"
                                                    Key:@"download_button"];
            case 2:
                return [self createSwitchCellWithTitle:@"Share Sheet"
                                                  Detail:@"Enable sharing options in share sheet"
                                                    Key:@"share_sheet"];
            case 3:
                return [self createSwitchCellWithTitle:@"Remove Watermark"
                                                  Detail:@"Remove the TikTok watermark from videos"
                                                    Key:@"remove_watermark"];
            case 4:
                return [self createSwitchCellWithTitle:@"Show/Hide UI Button"
                                                  Detail:@"Show or hide the UI button"
                                                    Key:@"remove_elements_button"];
            case 5:
                return [self createSwitchCellWithTitle:@"Change Upload Region"
                                                  Detail:@"Change the upload region"
                                                    Key:@"upload_region"];
            case 6:
                return [self createSwitchCellWithTitle:@"Auto Play Next Video"
                                                  Detail:@"Automatically play the next video"
                                                    Key:@"auto_play"];
            default:
                break;
        }
    } else if (indexPath.section == 1) {
        switch (indexPath.row) {
            case 0:
                return [self createSwitchCellWithTitle:@"Stop Playback"
                                                  Detail:@"Stop video playback automatically"
                                                    Key:@"stop_play"];
            case 1:
                return [self createSwitchCellWithTitle:@"Show Progress Bar"
                                                  Detail:@"Display progress bar on video playback"
                                                    Key:@"show_progress_bar"];
            case 2:
                return [self createSwitchCellWithTitle:@"Transparent Comments"
                                                  Detail:@"Make comments transparent"
                                                    Key:@"transparent_comment"];
            case 3:
                return [self createSwitchCellWithTitle:@"Show Usernames"
                                                  Detail:@"Display usernames on videos"
                                                    Key:@"show_username"];
            case 4:
                return [self createSwitchCellWithTitle:@"Disable Pull to Refresh"
                                                  Detail:@"Disable pull to refresh functionality"
                                                    Key:@"pull_to_refresh"];
            case 5:
                return [self createSwitchCellWithTitle:@"Disable Sensitive Content"
                                                  Detail:@"Disable sensitive content filter"
                                                    Key:@"disable_unsensitive"];
            case 6:
                return [self createSwitchCellWithTitle:@"Disable Warnings"
                                                  Detail:@"Disable TikTok warnings"
                                                    Key:@"disable_warnings"];
            case 7:
                return [self createSwitchCellWithTitle:@"Disable Live Streaming"
                                                  Detail:@"Disable live video streaming"
                                                    Key:@"disable_live"];
            case 8:
                return [self createSwitchCellWithTitle:@"Skip Recommendations"
                                                  Detail:@"Skip recommended videos"
                                                    Key:@"skip_recommendations"];
            default:
                break;
        }
    } else if (indexPath.section == 2) {
        switch (indexPath.row) {
            case 0:
                return [self createSwitchCellWithTitle:@"Like Confirmation"
                                                  Detail:@"Confirm before liking a video"
                                                    Key:@"like_confirm"];
            case 1:
                return [self createSwitchCellWithTitle:@"Like Comment Confirmation"
                                                  Detail:@"Confirm before liking a comment"
                                                    Key:@"like_comment_confirm"];
            case 2:
                return [self createSwitchCellWithTitle:@"Dislike Comment Confirmation"
                                                  Detail:@"Confirm before disliking a comment"
                                                    Key:@"dislike_comment_confirm"];
            case 3:
                return [self createSwitchCellWithTitle:@"Follow Confirmation"
                                                  Detail:@"Confirm before following a user"
                                                    Key:@"follow_confirm"];
            case 4:
                return [self createSwitchCellWithTitle:@"Profile Save"
                                                  Detail:@"Save profile details to clipboard"
                                                    Key:@"save_profile"];
            case 5:
                return [self createSwitchCellWithTitle:@"Profile Copy"
                                                  Detail:@"Copy profile information"
                                                    Key:@"copy_profile_information"];
            case 6:
                return [self createSwitchCellWithTitle:@"Video Like Count"
                                                  Detail:@"Show the number of likes on videos"
                                                    Key:@"video_like_count"];
            case 7:
                return [self createSwitchCellWithTitle:@"Video Upload Date"
                                                  Detail:@"Show the date videos were uploaded"
                                                    Key:@"video_upload_date"];
            default:
                break;
        }
    } else if (indexPath.section == 3) {
        switch (indexPath.row) {
            case 0:
                return [self createSwitchCellWithTitle:@"Always Open Safari"
                                                  Detail:@"Always open links in Safari"
                                                    Key:@"openInBrowser"];
            case 1:
                return [self createSwitchCellWithTitle:@"Enable Region Changing"
                                                  Detail:@"Enable region changing functionality"
                                                    Key:@"en_region"];
            case 2:
                return [self createSwitchCellWithTitle:@"Enable Speed Adjustments"
                                                  Detail:@"Enable speed adjustments for videos"
                                                    Key:@"en_speed"];
            case 3:
                return [self createSwitchCellWithTitle:@"Enable Live Actions"
                                                  Detail:@"Enable special live video actions"
                                                    Key:@"en_livefunc"];
            case 4:
                return [self createSwitchCellWithTitle:@"Enable Fake Changes"
                                                  Detail:@"Enable fake profile changes"
                                                    Key:@"en_fake"];
            case 5:
                return [self createSwitchCellWithTitle:@"Fake Verified"
                                                  Detail:@"Make your account appear verified"
                                                    Key:@"fake_verify"];
            case 6:
                return [self createSwitchCellWithTitle:@"Extended Bio"
                                                  Detail:@"Extend bio section of your profile"
                                                    Key:@"extended_bio"];
            case 7:
                return [self createSwitchCellWithTitle:@"Extended Comments"
                                                  Detail:@"Extend the length of your comments"
                                                    Key:@"extendedComment"];
            case 8:
                return [self createSwitchCellWithTitle:@"Upload HD"
                                                  Detail:@"Upload videos in HD quality"
                                                    Key:@"upload_hd"];
            case 9:
                return [self createSwitchCellWithTitle:@"App Lock"
                                                  Detail:@"Lock the app with a passcode"
                                                    Key:@"padlock"];
            default:
                break;
        }
    }
    return [UITableViewCell new]; // Fallback if no match
}

- (UITableViewCell *)createSwitchCellWithTitle:(NSString *)title Detail:(NSString*)detail Key:(NSString*)key {
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];

    
    UISwitch *switchView = [[UISwitch alloc] init];
    [cell.contentView addSubview:switchView];
    cell.accessoryView = switchView;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    switchView.on = [defaults boolForKey:key];
    switchView.accessibilityLabel = key;
    [switchView addTarget:self action:@selector(switchToggled:) forControlEvents:UIControlEventValueChanged];
    

    // Configure the switch (optional)
    switchView.onTintColor = [UIColor greenColor];
    switchView.thumbTintColor = [UIColor whiteColor];
    
    // Set the cell's text label (optional)
    cell.textLabel.text = title;
    cell.detailTextLabel.text = detail;  // Set the description text
    cell.detailTextLabel.textColor = [UIColor grayColor];
    return cell;
    
}

- (void)switchToggled:(UISwitch *)sender {
    
    NSString *key = sender.accessibilityLabel;
    
    // Save the switch state to NSUserDefaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:sender.isOn forKey:key];
    [defaults synchronize];
}

@end
