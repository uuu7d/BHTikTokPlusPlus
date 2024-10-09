#import "CountryTable.h"

@interface CountryTable () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *regionTitles; // Holds the country names
@property (nonatomic, strong) NSArray *regionCodes;  // Holds the dictionaries of country details
@property (nonatomic, strong) UITableView *tableView; // The table view to show the list

@end

@implementation CountryTable

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Regions";
    // Initialize the arrays
    self.regionTitles = @[@"Saudi Arabia 🇸🇦", @"Taiwan 🇹🇼", @"Hong Kong 🇭🇰", @"Macao 🇲🇴", @"Japan 🇯🇵", @"South Korea 🇰🇷", @"United Kingdom 🇬🇧", @"United States 🇺🇸", @"Australia 🇦🇺", @"Canada 🇨🇦", @"Argentina 🇦🇷", @"Philippines 🇵🇭", @"Laos 🇱🇦", @"Malaysia 🇲🇾", @"Thailand 🇹🇭", @"Singapore 🇸🇬", @"Indonesia 🇮🇩", @"Vietnam 🇻🇳", @"Anguilla 🇦🇮", @"Panama 🇵🇦", @"Germany 🇩🇪", @"Russia 🇷🇺", @"France 🇫🇷", @"Finland 🇫🇮", @"Italy 🇮🇹", @"Pakistan 🇵🇰", @"Denmark 🇩🇰", @"Norway 🇳🇴", @"Sudan 🇸🇩", @"Romania 🇷🇴", @"United Arab Emirates 🇦🇪", @"Egypt 🇪🇬", @"Lebanon 🇱🇧", @"Mexico 🇲🇽", @"Brazil 🇧🇷", @"Turkey 🇹🇷", @"Kuwait 🇰🇼", @"Algeria 🇩🇿"];
    
    self.regionCodes = @[
        @{@"area": @"Saudi Arabia 🇸🇦", @"code": @"SA", @"mcc": @"420", @"mnc": @"01"},
        @{@"area": @"Taiwan 🇹🇼", @"code": @"TW", @"mcc": @"466", @"mnc": @"01"},
        @{@"area": @"Hong Kong 🇭🇰", @"code": @"HK", @"mcc": @"454", @"mnc": @"00"},
        @{@"area": @"Macao 🇲🇴", @"code": @"MO", @"mcc": @"455", @"mnc": @"00"},
        @{@"area": @"Japan 🇯🇵", @"code": @"JP", @"mcc": @"440", @"mnc": @"00"},
        @{@"area": @"South Korea 🇰🇷", @"code": @"KR", @"mcc": @"450", @"mnc": @"05"},
        @{@"area": @"United Kingdom 🇬🇧", @"code": @"GB", @"mcc": @"234", @"mnc": @"30"},
        @{@"area": @"United States 🇺🇸", @"code": @"US", @"mcc": @"310", @"mnc": @"00"},
        @{@"area": @"Australia 🇦🇺", @"code": @"AU", @"mcc": @"505", @"mnc": @"02"},
        @{@"area": @"Canada 🇨🇦", @"code": @"CA", @"mcc": @"302", @"mnc": @"720"},
        @{@"area": @"Argentina 🇦🇷", @"code": @"AR", @"mcc": @"722", @"mnc": @"07"},
        @{@"area": @"Philippines 🇵🇭", @"code": @"PH", @"mcc": @"515", @"mnc": @"02"},
        @{@"area": @"Laos 🇱🇦", @"code": @"LA", @"mcc": @"457", @"mnc": @"01"},
        @{@"area": @"Malaysia 🇲🇾", @"code": @"MY", @"mcc": @"502", @"mnc": @"13"},
        @{@"area": @"Thailand 🇹🇭", @"code": @"TH", @"mcc": @"520", @"mnc": @"18"},
        @{@"area": @"Singapore 🇸🇬", @"code": @"SG", @"mcc": @"525", @"mnc": @"01"},
        @{@"area": @"Indonesia 🇮🇩", @"code": @"ID", @"mcc": @"510", @"mnc": @"01"},
        @{@"area": @"Vietnam 🇻🇳", @"code": @"VN", @"mcc": @"452", @"mnc": @"01"},
        @{@"area": @"Anguilla 🇦🇮", @"code": @"AI", @"mcc": @"365", @"mnc": @"840"},
        @{@"area": @"Panama 🇵🇦", @"code": @"PA", @"mcc": @"714", @"mnc": @"04"},
        @{@"area": @"Germany 🇩🇪", @"code": @"DE", @"mcc": @"262", @"mnc": @"01"},
        @{@"area": @"Russia 🇷🇺", @"code": @"RU", @"mcc": @"250", @"mnc": @"01"},
        @{@"area": @"France 🇫🇷", @"code": @"FR", @"mcc": @"208", @"mnc": @"10"},
        @{@"area": @"Finland 🇫🇮", @"code": @"FI", @"mcc": @"244", @"mnc": @"91"},
        @{@"area": @"Italy 🇮🇹", @"code": @"IT", @"mcc": @"222", @"mnc": @"10"},
        @{@"area": @"Pakistan 🇵🇰", @"code": @"PK", @"mcc": @"410", @"mnc": @"01"},
        @{@"area": @"Denmark 🇩🇰", @"code": @"DK", @"mcc": @"238", @"mnc": @"01"},
        @{@"area": @"Norway 🇳🇴", @"code": @"NO", @"mcc": @"242", @"mnc": @"01"},
        @{@"area": @"Sudan 🇸🇩", @"code": @"SD", @"mcc": @"634", @"mnc": @"01"},
        @{@"area": @"Romania 🇷🇴", @"code": @"RO", @"mcc": @"226", @"mnc": @"01"},
        @{@"area": @"United Arab Emirates 🇦🇪", @"code": @"AE", @"mcc": @"424", @"mnc": @"02"},
        @{@"area": @"Egypt 🇪🇬", @"code": @"EG", @"mcc": @"602", @"mnc": @"01"},
        @{@"area": @"Lebanon 🇱🇧", @"code": @"LB", @"mcc": @"415", @"mnc": @"01"},
        @{@"area": @"Mexico 🇲🇽", @"code": @"MX", @"mcc": @"334", @"mnc": @"030"},
        @{@"area": @"Brazil 🇧🇷", @"code": @"BR", @"mcc": @"724", @"mnc": @"06"},
        @{@"area": @"Turkey 🇹🇷", @"code": @"TR", @"mcc": @"286", @"mnc": @"01"},
        @{@"area": @"Kuwait 🇰🇼", @"code": @"KW", @"mcc": @"419", @"mnc": @"02"},
        @{@"area": @"Algeria 🇩🇿", @"code": @"DZ", @"mcc": @"603", @"mnc": @"01"}
    ];
    
    
    // Initialize the table view
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableView DataSource

// Number of rows should be equal to the number of countries in the list
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.regionTitles.count;
}

// Configure the cell to display the country name
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    // Set the country name in the cell
    cell.textLabel.text = self.regionTitles[indexPath.row];
    
    return cell;
}

#pragma mark - UITableView Delegate

// Handle selection of a row
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // Get the selected country's dictionary
    NSDictionary *selectedRegion = self.regionCodes[indexPath.row];
    
    // Save the selected country dictionary to NSUserDefaults under the key "region"
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:selectedRegion forKey:@"region"];
    [defaults synchronize];
    
    // Print the selected country to confirm
    NSLog(@"Selected region: %@", selectedRegion);
    
    // Show a simple alert to indicate success
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Region Selected"
                                                                   message:[NSString stringWithFormat:@"You selected: %@", self.regionTitles[indexPath.row]]
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"RegionSelectedNotification"
                                                        object:nil
                                                      userInfo:@{@"region": selectedRegion}];
}

@end
