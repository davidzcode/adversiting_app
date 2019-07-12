import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'CustomBottomNav.dart';
import 'VerTodos.dart';
import 'custom_icons.dart';
import 'CategoriesScreen.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MaterialApp(
    title: 'Adversiting App',
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: CustomBottomNav(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomeScreenTopContainer(),
            HomeScreenBottomContainer("Temas Populares",
                [
                  "Play Station",
                  "Joyas",
                  "Electronica"
                ],
                [
                  "https://cdn.vox-cdn.com/thumbor/hkEmn3I0RKrlC2a3yvWZDnGogbM=/0x0:2040x1360/1200x800/filters:focal(873x1034:1199x1360)/cdn.vox-cdn.com/uploads/chorus_image/image/56030491/awebster_080217_1891_7286.0.jpg",
                  "https://www.dhresource.com/0x0s/f2-albu-g4-M00-FB-E3-rBVaEVe-qX2ABjNHAAMiAhhMwxE456.jpg/conjunto-de-joyas-vintage-nj-578-cobre-antiguo.jpg",
                  "http://setup-pc.es/wp-content/uploads/2018/09/setup-pc_tpv_soluciones_punto_de_venta_02.jpg"
                ]),
            HomeScreenBottomContainer("Tipos de Anuncio",
                [
                  "Coches",
                  "Trabajos",
                  "Propiedades"
                ],
                [
                  "https://cms-img.coverfox.com/closeup-headlights-red-vintage-car-exhibition-508127503(1200x628).jpg",
                  "https://cdn.pembrokeshire.gov.uk/images/apply-jobs-eng.jpg",
                  "https://www.architecture.com/-/media/a2956208e1a44fd2b1aea5b89df6f7f6.jpg"
                ]),
          ],
        ),
      ),
    );
  }
}

class HomeScreenTopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 14),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(height: 50.0,),
              Row(
                children: <Widget>[
                  Text("Explora",style: TextStyle(fontSize: 25.0),),
                ],
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Row(
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (contex) => CategoriesScreen("Motor")));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  height: 108.0,
                  width: 108.0,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.home,color: Colors.white,),
                            Text("Motor",style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesScreen("Etiquetas")));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(5.0))
                            ),
                            height: 50.0,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.flight,color: Colors.white,size: 20.0,),
                                SizedBox(width: 5.0,),
                                Text("Etiquetas",style: TextStyle(color: Colors.white,fontSize: 12.0),),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesScreen("Propiedades")));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            decoration: BoxDecoration(
                                color: Colors.lightBlueAccent,
                                borderRadius: BorderRadius.all(Radius.circular(5.0))
                            ),
                            height: 50.0,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.home,color: Colors.white, size: 20.0,),
                                SizedBox(width: 5.0,),
                                Text("Propiedades",style: TextStyle(color: Colors.white,fontSize: 12.0),),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 8.0,),
                    Row(
                      children: <Widget>[
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesScreen("Servicios") ));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.all(Radius.circular(5.0))
                          ),
                          height: 50.0,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.settings,color: Colors.white, size: 20.0,),
                              SizedBox(width: 5.0,),
                              Text("Servicios",style: TextStyle(color: Colors.white,fontSize: 12.0),),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesScreen("Trabajos")));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(Radius.circular(5.0))
                          ),
                          height: 50.0,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.flight,color: Colors.white, size: 20.0,),
                              SizedBox(width: 5.0,),
                              Text("Trabajos",style: TextStyle(color: Colors.white,fontSize: 12.0),),
                            ],
                          ),
                        ),
                      ),

                    ],),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class HomeScreenBottomContainer extends StatelessWidget {
  final String nombreSlide;
  final List<String> nameCard, imageUrl;

  HomeScreenBottomContainer(this.nombreSlide, this.nameCard, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 14),
            child: Row(
              children: <Widget>[
                Text(nombreSlide,style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                InkWell(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => VerTodos(nombreSlide)));},child: Text("Ver todos",style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold),))
              ],
            ),
          ),
          Container(
            height: 170.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CustomCards(nameCard[0],imageUrl[0]),
                CustomCards(nameCard[1],imageUrl[1]),
                CustomCards(nameCard[2],imageUrl[2]),
                CustomCards(nameCard[2],imageUrl[2]),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomCards extends StatelessWidget {
  final String nameCard, imageUrl;

  CustomCards(this.nameCard, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height:120.0,
                        width: 100.0,
                        child: Image.network(imageUrl,fit: BoxFit.cover,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.0,),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(nameCard, textAlign: TextAlign.left, style: TextStyle(fontSize: 12.0,color: Colors.black,fontWeight: FontWeight.bold,),),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}






