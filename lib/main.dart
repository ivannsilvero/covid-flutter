import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF3b83bd);
const kSecundaryColor = Color(0xFF008F39);
const kTertiaryColor = Color(0xFFFFFFFF);
const kQuaternaryColor = Color(0xFF00ea38);
const kQuinaryColor = Color(0xFF00ea38);

class Strings {
  static const String monitoring = 'Covid-App';
  static const String warning = 'Advertencias';
  static const String profile = 'Perfil';
  static const String ecosensing = 'Coronavirus';
  static const String subtitle =
      'Monitoreo de sistemas de agro-acuicultura integrada';
  static const String temperature = 'Covid-19';
  static const String humidity = 'Prevención';
  static const String flow = 'Contagio';
  static const String ph = 'Síntomas';
  static const String subtitle1 =
      'Toda la información que podés encontrar para ayudarnos a prevenir';
  static const String subtitle2 =
      '¡Oye tú! Que bueno tenerte aquí. ¿Quieres conocer chicas por tu zona? ;)';
  static const String subtitle3 = 'Haga clic para obtener\nmas información';
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kTertiaryColor,
        scaffoldBackgroundColor: kTertiaryColor,
        fontFamily: 'FredokaOne',
        textTheme: TextTheme(bodyText2: TextStyle(color: kTertiaryColor)),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Covid-App',
      home: Scaffold(
        body: MonitoringScreen(),
      ),
    );
  }
}

class MonitoringScreen extends StatefulWidget {
  @override
  _MonitoringScreenState createState() => _MonitoringScreenState();
}

class _MonitoringScreenState extends State<MonitoringScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        elevation: 1.0,
        title: const Text(Strings.monitoring,
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildYourOwnTest(screenHeight),
          _buildYourOwnTest2(screenHeight),
          _buildYourOwnTest3(screenHeight),
          _buildYourOwnTest4(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/hospital.jpg'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  Strings.ecosensing,
                  style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 35.0,
                    fontFamily: 'Bungee',
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Strings.subtitle1,
                  style: const TextStyle(
                    color: kPrimaryColor,
                    fontSize: 22.0,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildYourOwnTest(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kPrimaryColor, kPrimaryColor],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/images/xd.png'),
            Expanded(child: SizedBox()),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Strings.temperature,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  Strings.subtitle3,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Covid()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildYourOwnTest2(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kPrimaryColor, kPrimaryColor],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/images/xd.png'),
            Expanded(child: SizedBox()),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Strings.flow,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  Strings.subtitle3,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contagio()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildYourOwnTest3(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kPrimaryColor, kPrimaryColor],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/images/xd.png'),
            Expanded(child: SizedBox()),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Strings.humidity,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  Strings.subtitle3,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Prevencion()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildYourOwnTest4(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kPrimaryColor, kPrimaryColor],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/images/xd.png'),
            Expanded(child: SizedBox()),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  Strings.ph,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  Strings.subtitle3,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sintomas()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Covid extends StatefulWidget {
  @override
  _CovidState createState() => _CovidState();
}

class _CovidState extends State<Covid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kTertiaryColor,
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        elevation: 1.0,
        title: const Text(Strings.monitoring,
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(),
          _buildHeader2(),
        ],
      ),
    );
  }

  SliverPadding _buildHeader() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          Strings.temperature,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }

  SliverPadding _buildHeader2() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          "La COVID‑19 es la enfermedad infecciosa causada por el coronavirus que se ha descubierto a principios de enero por científicos chinos. Actualmente la COVID‑19 es una pandemia que afecta a muchos países de todo el mundo.Los coronavirus son una gran familia de virus, la mayoría de los cuales son inofensivos para los humanos. Se sabe que cuatro tipos causan resfriados y otros dos tipos pueden causar infecciones pulmonares graves (SARS y MERS) similares a COVID-19. Los coronavirus llevan su nombre por las puntas en forma de corona que tienen en su superficie.Como todos los virus, necesita células de seres vivos para multiplicarse. Este virus parece apuntar a las células de los pulmones, y posiblemente a otras células del sistema respiratorio también. Las células infectadas por el virus producirán más partículas de virus, que luego se pueden transmitir a otras personas al toser, por ejemplo.",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}

class Contagio extends StatefulWidget {
  @override
  _ContagioState createState() => _ContagioState();
}

class _ContagioState extends State<Contagio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kTertiaryColor,
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        elevation: 1.0,
        title: const Text(Strings.monitoring,
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(),
          _buildHeader2(),
        ],
      ),
    );
  }

  SliverPadding _buildHeader() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          Strings.flow,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }

  SliverPadding _buildHeader2() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          "Una persona puede contraer la COVID‑19 por contacto con otra que esté infectada por el virus.La enfermedad se propaga principalmente de persona a persona a través de las gotículas que salen despedidas de la nariz o la boca de una persona infectada al toser, estornudar o hablar. Estas gotículas son relativamente pesadas, no llegan muy lejos y caen rápidamente al suelo. Una persona puede contraer la COVID‑19 si inhala las gotículas procedentes de una persona infectada por el virus. Por eso es importante mantenerse al menos a un metro (3 pies) de distancia de los demás.",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}

class Prevencion extends StatefulWidget {
  @override
  _PrevencionState createState() => _PrevencionState();
}

class _PrevencionState extends State<Prevencion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kTertiaryColor,
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        elevation: 1.0,
        title: const Text(Strings.monitoring,
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(),
          _buildHeader2(),
        ],
      ),
    );
  }

  SliverPadding _buildHeader() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          Strings.humidity,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }

  SliverPadding _buildHeader2() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          "Aunque todavía no hay vacunas para prevenir la infección, hay algunas medidas que se pueden tomar para reducir el riesgo de infección, que son las precauciones estándar para evitar los virus respiratorios: \n\n-Lavarse las manos con agua y jabón con frecuencia, o usar un desinfectante para manos a base de alcohol\n\n-Cubrirse la boca y la nariz con el codo o un pañuelo descartable al toser o estornudar\n\n-Evitar tocarse los ojos, la nariz y la boca si las manos no están limpias\n\n-Evitar tener contacto con cualquier persona que esté enferma\n\n-Evitar tener contacto con cualquier persona que esté enferma",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}

class Sintomas extends StatefulWidget {
  @override
  _SintomasState createState() => _SintomasState();
}

class _SintomasState extends State<Sintomas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: kTertiaryColor,
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        elevation: 1.0,
        title: const Text(Strings.monitoring,
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(),
          _buildHeader2(),
        ],
      ),
    );
  }

  SliverPadding _buildHeader() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          Strings.ph,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }

  SliverPadding _buildHeader2() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          "La COVID-19 afecta de distintas maneras en función de cada persona. La mayoría de las personas que se contagian presentan síntomas de de intensidad leve o moderada, y se recuperan sin necesidad de hospitalización. Los síntomas más habituales son los siguientes:\n\n-Tos seca\n\n-Fiebre\n\n-Cansancio",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15.0,
          ),
        ),
      ),
    );
  }
}
