# zego_cloud_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Environment Variables

This application requires a `.env` file in the root directory with the following configuration parameters:

## Required Environment Variables

Create a `.env` file in the root directory of the project with the following variables:

```
ZEGO_APP_ID=279954850
ZEGO_APP_SIGN=a696c7c482d5e92a689d96cfe70bdc89cab74cf69d11f448d92a299af8e6c491
CLERK_KEY=pk_test_Y2hlZXJmdWwtc2t1bmstNDEuY2xlcmsuYWNjb3VudHMuZGV2JA
```

## Important Notes

- The `.env` file is not included in the repository for security reasons
- You must create this file manually before running the application
- Without these environment variables, the application will not function properly
- Make sure to never commit your `.env` file to version control

## Getting Started

1. Copy the variables above into a new file named `.env` in the root directory
2. Ensure there are no spaces around the equal signs
3. Run the application as normal