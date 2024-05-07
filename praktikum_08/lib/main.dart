import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:praktikum_08/bloc/login/login_cubit.dart';
import 'package:praktikum_08/ui/splash.dart';
import 'package:praktikum_08/utils/routes.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()), // Provide the LoginCubit
      ],
      child: MaterialApp(
        title: "Praktikum 8", // Update the title to "Praktikum 8"
        debugShowCheckedModeBanner: false,
        navigatorKey: NAV_KEY,
        onGenerateRoute: generateRoute,
        home: const SplashScreen(),
      ),
    );
  }
}
