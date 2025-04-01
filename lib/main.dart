import 'package:clerk_flutter/clerk_flutter.dart';
import 'package:flutter/material.dart';
import 'package:zego_cloud_app/data/config/env_config.dart';
import 'package:zego_cloud_app/presentation/join_meeting_page.dart';
import 'package:zego_cloud_app/presentation/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvConfig().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => ClerkAuth(
    config: ClerkAuthConfig(publishableKey: EnvConfig().clerkKey),
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ClerkErrorListener(
        child: ClerkAuthBuilder(
          signedInBuilder: (context, authState) {
            final user = authState.user!;
            return JoinMeetingPage(email: user.email!);
          },
          signedOutBuilder: (context, authState) => LoginPage(),
        ),
      ),
    ),
  );
}
