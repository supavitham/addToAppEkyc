import 'package:add_to_app_flutter_module/bloc/addressBloc.dart';
import 'package:add_to_app_flutter_module/screen/e_kyc_screen.dart';
import 'package:add_to_app_flutter_module/screen/start_screen.dart';
import 'package:add_to_app_flutter_module/utility/lang/translations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configLoading();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await dotenv.load(fileName: "packages/add_to_app_flutter_module/assets/.env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (_) => AddressBloc(),
      child: GetMaterialApp(
        title: 'GB E-KYC',
        builder: EasyLoading.init(),
        translations: Messages(),
        // locale: Get.deviceLocale,
        locale: const Locale('th', 'TH'),
        fallbackLocale: const Locale('th', 'TH'),
        debugShowCheckedModeBanner: false,
        home: const EKYCScreen(),
        theme: ThemeData(
          primaryColor: const Color(0xFF02416D),
          colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
          unselectedWidgetColor: const Color(0xFF00598A),
          fontFamily: 'Kanit',
          dividerTheme: const DividerThemeData(color: Colors.grey, space: 0),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            elevation: 1,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 17, fontFamily: 'kanit'),
            iconTheme: IconThemeData(color: Colors.black),
          ),
          buttonTheme: ButtonThemeData(
            height: 50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            textTheme: ButtonTextTheme.accent,
          ),
          inputDecorationTheme: InputDecorationTheme(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFF02416D), width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFF02416D)),
              borderRadius: BorderRadius.circular(8),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            filled: true,
            fillColor: Colors.white,
            labelStyle: const TextStyle(fontSize: 16, color: Colors.black54),
            hintStyle: const TextStyle(color: Colors.grey),
            counterStyle: const TextStyle(fontSize: 0),
          ),
          textTheme: const TextTheme(button: TextStyle(fontSize: 17)),
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Color(0xFF02416D),
          ),
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}

void configLoading() {
  EasyLoading.instance
    ..loadingStyle = EasyLoadingStyle.light
  // ..maskType = EasyLoadingMaskType.custom
  // ..maskColor = Colors.black.withOpacity(0.1)
    ..radius = 10
    ..contentPadding = const EdgeInsets.all(14)
    ..indicatorWidget = Container(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(color: Colors.transparent, shape: BoxShape.circle),
      child: const LoadingIndicator(
        indicatorType: Indicator.ballRotateChase,
        colors: [Color(0xFFFF9F02)],
        strokeWidth: 4,
      ),
    )
    ..userInteractions = false
    ..dismissOnTap = false;
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> with AfterLayoutMixin {
//   int _counter = 0;
//   String? hostRegister;
//   String? hostGateway;
//   String? authorization2;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   // Future<void> loadENV() async {
//   //   await dotenv.load(fileName: ".env");
//   // }
//
//   @override
//   Future<void> afterFirstLayout(BuildContext context) async {
//     // await loadENV();
//     hostRegister = dotenv.env['host3003'];
//     hostGateway = dotenv.env['host3006'];
//     authorization2 = dotenv.env['authorization2'];
//     print("hostRegister22>>>> $hostRegister -- $hostGateway -- $authorization2");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'test You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//             Text("${hostRegister ?? ""} ${hostGateway ?? ""}${authorization2 ?? ""}")
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
