import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('注册'),),
      body: SafeArea(
        minimum: const EdgeInsets.all(15),
        child: ListView(children:  <Widget> [
          const TextField(
            decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名',),
          ),
          const SizedBox(height: 10,),
          TextField(
            obscureText: !showPassword,
            decoration: InputDecoration(labelText: '密码', hintText: '请输入密码', suffixIcon: IconButton(onPressed: () {
              setState(() {
                showPassword = !showPassword;
              });
            }, icon: Icon(showPassword? Icons.visibility_off: Icons.visibility),),),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green),), child: const Text('登录', style:  TextStyle(color: Colors.white),),  onPressed: () {
      
          },),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
            const Text('还没有账号，',),
            TextButton(child: const Text('去注册', style:  TextStyle(color: Colors.green),), onPressed: () {
              Navigator.pushNamed(context, 'register');
            }),
          ],),
        ],),
      ),
    );
  }
}
