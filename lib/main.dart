import 'package:flutter/material.dart';

void main() => runApp(InstitutoImpressao3DWebsite());

class InstitutoImpressao3DWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instituto Impressão 3D',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instituto Impressão 3D"),
        backgroundColor: Colors.deepPurple,
        actions: [
          TextButton(onPressed: () {}, child: Text("Sobre", style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: Text("Mentoria", style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: Text("Contato", style: TextStyle(color: Colors.white))),
        ],
      ),
      body: ListView(
        children: [
          HeroSection(),
          MentoriaSection(),
          ContatoSection(),
          Footer(),
        ],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 60),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bruno_braga_action.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Text("Instituto Impressão 3D",
                style: TextStyle(color: Colors.white, fontSize: 36)),
            SizedBox(height: 10),
            Text("Transformando ideias em realidade com tecnologia e mentoria",
                style: TextStyle(color: Colors.white70, fontSize: 20)),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text("Fale com a gente"),
            )
          ],
        ),
      ),
    );
  }
}

class MentoriaSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Mentoria 3D", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(
            "Nossa mentoria acompanha projetos desde a modelagem até a impressão em 3D, com suporte técnico e estratégico personalizado para transformar ideias em soluções reais.",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class ContatoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Fale com a gente", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text("Envie um e-mail para contato@impressao3d.org ou preencha o formulário no site."),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.deepPurple,
      child: Center(
        child: Text(
          "© 2025 Instituto Impressão 3D",
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
