# background_refresh_status

A Flutter plugin to retrieve background refresh status on iOS.

## Getting Started

### Installation

Add it to your `dependencies` in `pubspec.yaml`:

```
dependencies:
  background_refresh_status: ^0.0.1
```

### Usage

```
import 'package:background_refresh_status/background_refresh_status.dart';

final status = await BackgroundRefreshStatus.status;
```

The possible return values are:

| Value        | Meaning                                                                                |
|--------------|----------------------------------------------------------------------------------------|
| `restricted` | Background updates are unavailable and the user cannot enable them again.              |
| `denied`     | The user explicitly disabled background behavior for this app or for the whole system. |
| `available`  | Background updates are available for the app.                                          |

### Notes
This plugin retrieves the [`backgroundRefreshStatus`](https://developer.apple.com/documentation/uikit/uiapplication/1622994-backgroundrefreshstatus) on iOS. For other platforms, it always returns `Status.available`.
