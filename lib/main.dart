import 'package:flutter/material.dart';

void main() {
  runApp(CloneMessenger());
}

class CloneMessenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clone Messenger',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool _enabled = false;
  @override
  Widget build(BuildContext context) {
    var _onPressed;
    if (_enabled) {
      _onPressed = () {};
    }

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 16.0,
                              bottom: 16.0,
                            ),
                            child: Image.asset(
                              'assets/logo.png',
                              width: 108,
                              height: 108,
                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Número de teléfono o corraeo electrónico',
                        ),
                      ),
                      Divider(
                        height: 1,
                        color: Colors.grey,
                        thickness: 0.3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            hintText: 'Contraseña',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: FlatButton(
                          disabledColor: Colors.grey[300],
                          disabledTextColor: Colors.grey,
                          textColor: Colors.white,
                          height: 44.0,
                          color: Color(0xFF0084FD),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onPressed: _onPressed,
                          child: Text(
                            'INICIAR SESIÓN',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: FlatButton(
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.grey,
                          height: 44.0,
                          color: Color(0xFF49CC1E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onPressed: () {},
                          child: Text(
                            'CREAR CUENTA NUEVA',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Center(
                          child: Text(
                            '¿OLVIDASTE TU CONTRASEÑA?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
