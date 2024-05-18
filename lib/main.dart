import 'package:wellnow/Provider/emergencyContactsProvider.dart';
import 'package:wellnow/Services/healthArticleServices.dart';
import 'package:wellnow/Services/notificationServices.dart';
import 'package:wellnow/Provider/imageProvider.dart';
import 'package:wellnow/Provider/obsecureText.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:wellnow/firebase_options.dart';
import 'Provider/bottomNavProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'Provider/themeProvider.dart';
import './Routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  NotificationServicesProvider().initializeNotifications();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<BottomBarProvider>(
      create: (context) => BottomBarProvider(),
    ),
    ChangeNotifierProvider<ImagePickerProvider>(
      create: (context) => ImagePickerProvider(),
    ),
    ChangeNotifierProvider<ThemeProvider>(
      create: (context) => ThemeProvider(),
    ),
    ChangeNotifierProvider<ObsecureProvider>(
      create: (context) => ObsecureProvider(),
    ),
    ChangeNotifierProvider<HealthArticleServices>(
      create: (context) => HealthArticleServices(),
    ),
    ChangeNotifierProvider<EmergencyContactsProvider>(
      create: (context) => EmergencyContactsProvider(),
    ),
    ChangeNotifierProvider<NotificationServicesProvider>(
      create: (context) => NotificationServicesProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeData = Provider.of<ThemeProvider>(context).isDarkMode;

    return MaterialApp.router(
      routerConfig: WellRoutes.router,
      title: 'Well Now',
      debugShowCheckedModeBanner: false,
      theme: themeData
          ? ThemeData(
              primarySwatch: Colors.blueGrey,
              brightness: Brightness.dark,
              primaryColor: Colors.teal,
              scaffoldBackgroundColor: Colors.black, //d color for dark mode
              fontFamily: 'Comfortaa',
              cardColor: Color.fromARGB(255, 142, 208, 201),
              textTheme: TextTheme(
                bodyText1: TextStyle(
                    color: Colors.white), // Set default text color to white
                bodyText2: TextStyle(color: Colors.white),
                // Set default text color to white
                // Add more text styles as needed
              ),
              inputDecorationTheme: InputDecorationTheme(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                hintStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
              ),
              progressIndicatorTheme: ProgressIndicatorThemeData(
                color: Colors.teal,
              ),
              toggleButtonsTheme: ToggleButtonsThemeData(color: Colors.teal),
              switchTheme: SwitchThemeData(
                  trackColor: MaterialStateProperty.all(Colors.teal),
                  thumbColor: MaterialStateProperty.all(Colors.white)),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                backgroundColor: Colors.teal,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.black54,
              ),
            )
          : ThemeData(
              primarySwatch: Colors.teal,
              brightness: Brightness.light,
              primaryColor: Colors.tealAccent,
              cardColor: Color.fromARGB(255, 142, 208, 201),
              scaffoldBackgroundColor: Colors.white, //und color for light mode
              fontFamily: 'Comfortaa',
              textTheme: TextTheme(
                bodyText1: TextStyle(
                    color: Colors.black), // Set default text color to white
                bodyText2: TextStyle(
                    color: Colors.black), // Set default text color to white
                // Add more text styles as needed
              ),
              inputDecorationTheme: InputDecorationTheme(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                hintStyle: TextStyle(color: Colors.black),
                labelStyle: TextStyle(color: Colors.black),
              ),

              toggleButtonsTheme: ToggleButtonsThemeData(color: Colors.teal),
              progressIndicatorTheme: ProgressIndicatorThemeData(
                color: Colors.teal,
              ),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                backgroundColor: Colors.teal,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.black54,
              ),
            ),
      // Replace the above theme definition with your desired white or dark green theme
    );
  }
}
