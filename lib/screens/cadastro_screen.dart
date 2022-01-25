import 'package:flutter/material.dart';
import 'package:orkut_app/screens/login_screen.dart';
import 'package:orkut_app/widgets/bezier_widget.dart';

class CadastroScreen extends StatelessWidget {
  const CadastroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                BezierWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Olá",
                    style: TextStyle(
                        color: Color.fromRGBO(237, 37, 144, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Seja bem vindo(a)!",
                    style: TextStyle(
                        color: Color.fromRGBO(237, 37, 144, 1),
                        fontSize: 14
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
                  child: TextFormField(
                    //keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(color: Color.fromRGBO(237, 37, 144, 1))
                        ),
                        labelText: "Nome",
                        labelStyle: TextStyle(color: Color.fromRGBO(237, 37, 144, 1))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 35),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(color: Color.fromRGBO(237, 37, 144, 1))
                        ),
                        labelText: "Email",
                        labelStyle: TextStyle(color: Color.fromRGBO(237, 37, 144, 1))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 23),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide(color: Color.fromRGBO(237, 37, 144, 1))
                        ),
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Color.fromRGBO(237, 37, 144, 1)),
                        suffixIcon: Icon(Icons.visibility)
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 18, bottom: 29),
                    child: SizedBox(
                      height: 44,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(237, 37, 144, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                          onPressed: (){},
                          child: Text("Cadastrar")
                      ),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:8 ),
                        child: Text("Ou entre com", style: TextStyle(color: Colors.black54),),
                      ),
                      Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          )
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 23,),
                    child: SizedBox(
                      height: 44,
                      child: ElevatedButton.icon(
                          icon: Image.asset("images/google.png"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                                side: BorderSide(color: Colors.grey)
                            ),
                          ),
                          onPressed: (){},
                          label: Text("Entrar com o Google", style: TextStyle(color: Colors.black54),)
                      ),
                    )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18, bottom: 135),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Já possui uma conta?", style: TextStyle(color: Colors.black54),),
                      TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                          },
                          child: Text("Entre agora", style: TextStyle(color: Color.fromRGBO(237, 37, 144, 1), fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
