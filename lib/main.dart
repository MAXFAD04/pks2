import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Авторизация',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _rememberMe = false;

  void _login() {
    print('Логин: ${_loginController.text}');
    print('Пароль: ${_passwordController.text}');
    print('Запомнить меня: $_rememberMe');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Авторизация'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text(
              'Авторизация',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
            
            SizedBox(height: 20),
            TextField(
              controller: _loginController,
              decoration: InputDecoration(labelText: 'Логин'),
            ),
           
           
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Пароль'),
              obscureText: true,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (bool? value) {
                    setState(() {
                      _rememberMe = value!;
                    });
                  },
                ),
                Text('Запомнить меня'),
              ],
            ),
            
            
            SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 40),),
              onPressed: _login,
              child: Text('Войти'),
            ),
            
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 40),),
              onPressed: _login,
              child: Text('Регистрация'),
            ),
            
          
            TextButton(
              onPressed: () {
                // Логика для восстановления пароля
              },
              child: Text('Восстановление пароля'),
            ),
          ],
        ),
      ),
    );
  }
}
