# background_refresh_status

A Flutter plugin to retrieve background refresh status on iOS.

## Getting Started

### Installation
For now, the package is not available on [pub.dev](https://pub.dev), so you can use it directly from GitHub:

```
dependencies:
  background_refresh_status:
    git: 
      url: https://github.com/markszente/background_refresh_status.git
```

### Usage

```
import 'package:background_refresh_status/background_refresh_status.dart';

final status = await BackgroundRefreshStatus.status;
```

### Notes
This plugin retrieves the [`backgroundRefreshStatus`](https://developer.apple.com/documentation/uikit/uiapplication/1622994-backgroundrefreshstatus) on iOS. For other platforms, it always returns `Status.available`.
