import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _corPrincipal = Colors.green;
  var _corSecundaria = Colors.lightGreen;

  var _titulo = "Frases by Luiz Tiktoker";
  var _texto = "Clique para gerar uma nova frase!";
  var _foto = "images/logo.png";
  List _fotos = ["images/foto1.png", "images/foto2.png", "images/foto3.png"];
  List _frases = [
    "Os erros me ensinaram que tem como errar mais ainda! Não desanime, desanimar é para os fracos. Melhor mesmo é nem tentar!",
    "Se você já acordou desanimado, tenso e algo já deu errado na sua vida. Não se esqueça ainda é de manhã e muita coisa ainda pode dar errado!",
    "Pra Deus nada é impossível, mas lembre-se, você não é Deus!",
    "Já chegou a hora de você esquecer os erros do passado e começar a planejar os erros do futuro!",
    "Você não pode mudar o seu passado, mas você pode estragar o seu futuro!",
    "Coisas ruins vão, porque piores estão por vir!",
    "Dica do dia: Durma até 12h por dia, porque a chance de você fazer merda cai pela metade!",
    "Nunca deixe ninguém dizer que você não consegue, diga você mesmo \"eu não consigo\"",
    "Dica: Não deixe frases motivacionais melhorarem seu dia!",
    "Quando sua mente pensar em desistir, DESISTA!",
    "Confie em si mesmo, pois a maior decepção será você mesmo!",
    "A melhor parte do sonho é saber que você não pode realizá-lo.",
    "O não você já tem, chegou a hora de você buscar a humilhação.",
    "Tá na hora de você levantar, com você ai deitado a vida não vai conseguir te derrubar!",
    "Aquela pessoa que você admira, que você queria que te desse atenção e que olhasse pra você, se arruma direitinho, hoje ela olhar pra você, pode ter certeza, mas ela vai pensar assim \"nossa, como ele é feio\"",
    "Não é porque as coisas deram errado no passado que vai dar certo daqui pra frente!",
    "Tudo na vida passa, nem que seja por cima de você",
    "Você passou o final de semana triste, dormiu sozinho pensando um monte de bobeira, não se preocupe, final de semana que vem será igual!",
    "Se você começou a achar que as pessoas não gostam de você, pare de achar e comece a ter certeza.",
    "Nunca procure a pessoa perfeita, pois ela não existe. Procure a pessoa que gosta de voce, pena que ela também não existe!",
    "Quando tudo parece dar errado e as coisas parecem não caminhar do jeito certo. Lembre-se de duas palavras que podem mudar a sua vida. DESISTA AGORA!",
    "Se tudo parece dar certo e parece estar ao seu favor. Lembre-se, foi num dia de sorte que o Jack ganhou uma passagem para o Titanic."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_titulo),
          backgroundColor: _corPrincipal,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Image.asset(
                  _foto,
                  fit: BoxFit.fitWidth,
                  width: 250,
                ),
              ),
              Text(
                _texto,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 22),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: RaisedButton(
                  color: _corPrincipal,
                  textColor: Colors.white,
                  onPressed: () {
                    var _fraseAleatoria = Random().nextInt(9);
                    var _fotoAleatoria = Random().nextInt(2);
                    setState(() {
                      _foto = _fotos[_fotoAleatoria];
                      _texto = _frases[_fraseAleatoria];
                    });
                  },
                  child: Text("Nova Frase"),
                ),
              ),
            ],
          ),
        ));
  }
}
