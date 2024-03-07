fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

## iOS

### ios my_app_identifier

```sh
[bundle exec] fastlane ios my_app_identifier
```

Get application bundle id

### ios authenticate

```sh
[bundle exec] fastlane ios authenticate
```

Authenticate in AppStore Connect

### ios sync_certificates

```sh
[bundle exec] fastlane ios sync_certificates
```

Sync certificates

### ios build

```sh
[bundle exec] fastlane ios build
```

Create ipa

### ios beta

```sh
[bundle exec] fastlane ios beta
```

Upload to TestFlight

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
