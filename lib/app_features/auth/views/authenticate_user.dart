import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthenticateUser extends ConsumerStatefulWidget {
  const AuthenticateUser({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthenticateUserState();
}

class _AuthenticateUserState extends ConsumerState<AuthenticateUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hello world"),
    );
  }
}
