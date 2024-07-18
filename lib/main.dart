import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:provider/provider.dart';

import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';
import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();
  await initFirebase();
  await FlutterFlowTheme.initialize();

  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  late Stream<BaseAuthUser> userStream;

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = dnotasFirebaseUserStream()
      ..listen((user) {
        _appStateNotifier.update(user);
      });
    jwtTokenStream.listen((_) {});

    Future.delayed(
      const Duration(milliseconds: 1000),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dnotas',
      localizationsDelegates: const [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('pt'),
        Locale('en'),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

class DeepLinkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DeepLinkHomePage(title: 'DeepLink Demo'),
    );
  }
}

class DeepLinkHomePage extends StatefulWidget {
  DeepLinkHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _DeepLinkHomePageState createState() => _DeepLinkHomePageState();
}

class _DeepLinkHomePageState extends State<DeepLinkHomePage> {
  static const platformMethodChannel =
      const MethodChannel("mainDeeplinkChannel");
  String deeplinkResult = "";

  Future<Null> _sendDeeplink() async {
    String _message = "";
    try {
      int amount = 100;
      bool editableAmount = false; //true, false
      int? installmentCount; //número de 2 a 18
      String transactionType = "DEBIT"; //DEBIT, CREDIT, VOUCHER
      String? installmentType; //MERCHANT, ISSUER, NONE
      int? orderId;
      String returnScheme = "flutterdeeplinkdemo";

      await platformMethodChannel.invokeMethod('sendDeeplink', {
        "amount": amount,
        "editableAmount": editableAmount,
        "installmentCount": installmentCount,
        "transactionType": transactionType,
        "installmentType": installmentType,
        "orderId": orderId,
        "returnScheme": returnScheme
      });
    } on PlatformException catch (e) {
      _message = "Erro ao enviar deeplink: ${e.message}.";
    }
    setState(() {
      deeplinkResult = _message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _sendDeeplink,
              child: const Text('Enviar deeplink', style: TextStyle(fontSize: 20)),
            ),
            Text(deeplinkResult),
          ],
        ),
      ),
    );
  }
}
