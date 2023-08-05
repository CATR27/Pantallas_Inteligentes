import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../data/data.dart';
import 'details_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<bool> _isPressedList;
  late List<Color> _buttonColors;

  @override
  void initState() {
    super.initState();
    _isPressedList = List.generate(images.length, (index) => false);
    _buttonColors = List.generate(
      images.length,
      (index) => Colors.transparent,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart TV APPS'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 21, 21, 21),
      ),
      body: Stack(
        children: [
          // Fondo de imagen (reemplaza la URL con la imagen deseada)
          Image.network(
            'https://wallpapercave.com/wp/wp2757874.gif',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 20, // Espacio desde la parte superior
            left: 20, // Espacio desde la izquierda
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30, // Tamaño del avatar
                  backgroundImage: NetworkImage(
                    'https://scontent.fqro3-1.fna.fbcdn.net/v/t39.30808-6/343393912_563683579086226_7716135806125796726_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFtbcSL5STs0XD-jHW_6efzDLfuv9IjkkwMt-6_0iOSTGGMBBB0HRNsocln-ZKMbQ4-5TZyM_bwCzn3LJ7A1vCR&_nc_ohc=cK0hNTSLYF8AX9cfhpW&_nc_ht=scontent.fqro3-1.fna&oh=00_AfAGLaDrEN1rSBSakqfMfro1XTUxMHuUPeFsY9JtojB2Zg&oe=64D1CF3C',
                  ),
                ),
                SizedBox(height: 20), // Espacio entre el avatar y los botones
                ElevatedButton(
                  onPressed: () {
                    // Lógica para el botón 1
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(0, 201, 201, 201),
                    elevation: 5, // Agregar elevación para el efecto 3D
                    shadowColor: Colors.black, // Color de la sombra
                    padding: const EdgeInsets.all(0), // Ajustar el padding
                    shape: CircleBorder(), // Forma circular
                  ),
                  child: Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10), // Espacio entre los botones
                ElevatedButton(
                  onPressed: () {
                    // Lógica para el botón 2
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 5,
                    shadowColor: Colors.black,
                    padding: const EdgeInsets.all(0),
                    shape: CircleBorder(),
                  ),
                  child: Icon(
                    Icons.settings,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10), // Espacio entre los botones
                ElevatedButton(
                  onPressed: () {
                    // Lógica para el botón 3
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    elevation: 5,
                    shadowColor: Colors.black,
                    padding: const EdgeInsets.all(0),
                    shape: CircleBorder(),
                  ),
                  child: Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 2, // Espacio desde la parte superior
            right: 0, // Alinear a la derecha
            bottom: 90, // Expandir hacia abajo hasta las cuadriculas
            left: 90, // Espacio desde el lado izquierdo de las cuadriculas

            child: Container(
              width: double.infinity, // Llenar el espacio horizontal
              height: double.infinity, // Llenar el espacio vertical
              child: Stack(
                children: [
                  // Imagen en el centro (URL de la nueva imagen)
                  Image.network(
                    'https://scontent.fqro3-1.fna.fbcdn.net/v/t31.18172-8/22555661_1024068024399547_8270732035146387435_o.jpg?_nc_cat=106&ccb=1-7&_nc_sid=19026a&_nc_eui2=AeHMha-voSMmRCyAf-9GPDFIQOTlInn7smdA5OUiefuyZwJ7eBaEkqU0YoeWbHSpEozlGOb9Eo0RHjtQO5ovxch1&_nc_ohc=2Niat2JGz2oAX9KIW-A&_nc_ht=scontent.fqro3-1.fna&oh=00_AfDqGUNuEeixovImifaqcy2BK90IkrkUe4KFX_c-SxcWfw&oe=64F53529',
                    fit: BoxFit.cover,
                    alignment: Alignment.topRight, 
                     // Alineación de la imagen
                  ),
                  Positioned(
                    bottom: 120, // Espacio desde la parte inferior
                    left: 20, // Espacio desde la izquierda
                    child: ElevatedButton(
                      onPressed: () {
                        // Lógica para el botón "Ver ahora"
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 43, 43, 43),
                        elevation: 5,
                        shadowColor: const Color.fromARGB(255, 49, 49, 49),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.play_circle_filled,
                            size: 24,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5), // Espacio entre el icono y el texto
                          Text(
                            'Ver ahora',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0, // Colocar en la parte inferior
            left: 0,
            right: 0,
            child: Container(
              height: 140, // Altura de la fila deslizable
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTapDown: (_) {
                      setState(() {
                        _isPressedList[index] = true;
                        _buttonColors[index] = Colors.deepPurple;
                      });
                    },
                    onTapUp: (_) {
                      setState(() {
                        _isPressedList[index] = false;
                        _buttonColors[index] = Color.fromARGB(0, 243, 243, 243);
                      });
                    },
                    onTapCancel: () {
                      setState(() {
                        _isPressedList[index] = false;
                        _buttonColors[index] = Colors.transparent;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 150),
                      transform: Matrix4.identity()
                        ..scale(_isPressedList[index] ? 0.95 : 1.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => DetailsScreen(
                                url: links[index],
                              ),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: _buttonColors[index],
                          elevation: 3,
                          padding: const EdgeInsets.all(8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: Image.network(
                          images[index],
                          height: 85, // Altura más pequeña
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
