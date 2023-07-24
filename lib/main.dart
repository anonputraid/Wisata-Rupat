import 'package:flutter/material.dart';
import 'package:wisata_rupat/Model/rupatPlaces.dart';

void main() {
  runApp(setup());
}


class setup extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Tentang Rupat",
      theme: ThemeData(
        fontFamily: "Boogaloo",
      ),
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth <= 600){
            return mainPages();
          } else if(constraints.maxWidth <= 1130) {
            return mainPagesGrid(3);
          } else {
            return mainPagesGrid(5);
          }
        },
      ),
    );
  }
}

class mainPages extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tentang Rupat"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text("Tempat Tempat Wisata", style: TextStyle(fontSize: 20),),
                  );
                },
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(), // Matikan scrolling ListView agar tidak saling bersaing dengan SingleChildScrollView
                  shrinkWrap: true, // Atur ListView agar hanya mengambil ruang yang diperlukan
                  itemBuilder: (BuildContext context, int index) {
                    final RupatPlaces place = RupatPlacesList[index];

                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return detailWisata(place);
                        }));
                      },
                      child: Card(
                        child: Row(
                          children: [
                            Expanded(
                              child: Image.asset("${place.imageAsset}"),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${place.name}", style: TextStyle(fontSize: 18)),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child: Icon(Icons.add_location_alt_outlined, size: 13, color: Colors.greenAccent),
                                          ),
                                          WidgetSpan(
                                            child: SizedBox(width: 8), // Memberikan margin horizontal 8 piksel
                                          ),
                                          TextSpan(text: "${place.location}", style: TextStyle(fontSize: 13, color: Colors.grey)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: RupatPlacesList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                ),
              ),

              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text("Tempat Tempat Penginapan", style: TextStyle(fontSize: 20),),
                  );
                },
              ),

              ListView.separated(
                physics: NeverScrollableScrollPhysics(), // Matikan scrolling ListView agar tidak saling bersaing dengan SingleChildScrollView
                shrinkWrap: true, // Atur ListView agar hanya mengambil ruang yang diperlukan
                itemBuilder: (BuildContext context, int index) {
                  final RupatPenginapan penginapan = RupatPenginapanList[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return detailPenginapan(penginapan);
                      }));
                    },
                    child: Card(
                      child: Row(
                        children: [
                          Expanded(
                            child: Image.asset("${penginapan.imageAsset}"),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${penginapan.name}", style: TextStyle(fontSize: 18)),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Icon(Icons.add_location_alt_outlined, size: 13, color: Colors.greenAccent),
                                        ),
                                        WidgetSpan(
                                          child: SizedBox(width: 8), // Memberikan margin horizontal 8 piksel
                                        ),
                                        TextSpan(text: "${penginapan.location}", style: TextStyle(fontSize: 13, color: Colors.grey)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: RupatPenginapanList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class mainPagesGrid extends StatelessWidget{
  final int countGrid;

  mainPagesGrid(this.countGrid);

  Widget build(BuildContext context){
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Tentang Rupat"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(24),
              child: Text("Tempat Tempat Wisata", style: TextStyle(fontSize: 20),),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.all(24),
              child: GridView.count(
                crossAxisCount: countGrid,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: RupatPlacesList.map((places){
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return detailWisata(places);
                      }));
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(places.imageAsset, fit: BoxFit.cover,),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(places.name),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(places.location, textAlign: TextAlign.center,),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.all(24),
              child: Text("Tempat Tempat Penginapan", style: TextStyle(fontSize: 20),),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.all(24),
              child: GridView.count(
                crossAxisCount: countGrid,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: RupatPenginapanList.map((penginapan){
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return detailPenginapan(penginapan);
                      }));
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(penginapan.imageAsset, fit: BoxFit.cover,),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(penginapan.name),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(penginapan.location, textAlign: TextAlign.center,),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Controller
class detailWisata extends StatelessWidget{

  final RupatPlaces place;

  detailWisata(this.place);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Wisata"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth <= 600){
            return mobileDetailWisata(place);
          } else {
            return desktopDetailWisata(place);
          }
        },
      ),
    );
  }
}

// Controller
class detailPenginapan extends StatelessWidget{
  final RupatPenginapan penginapan;

  detailPenginapan(this.penginapan);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Penginapan"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxWidth <= 600){
            return mobileDetailPenginapan(penginapan);
          } else {
            return desktopDetailPenginapan(penginapan);
          }
        },
      ),
    );
  }
}

class desktopDetailWisata extends StatefulWidget{

  final RupatPlaces places;

  desktopDetailWisata(this.places);

  @override
  State<desktopDetailWisata> createState() => _desktopDetailWisataState();
}

class _desktopDetailWisataState extends State<desktopDetailWisata> {
  final _scrollController = ScrollController();

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 10,
        ),
        width: 500,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 15),
                child: Text("${widget.places.name}"),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Image.asset(widget.places.imageAsset, width: 400,),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                          children: [
                            Icon(Icons.date_range_outlined),
                            Text(widget.places.openDays),
                          ],
                        ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Icon(Icons.timer),
                          Text(widget.places.openTime),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Icon(Icons.payments),
                          Text(widget.places.ticketPrice),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(widget.places.description, textAlign: TextAlign.center,),
              ),

              Container(
                padding: EdgeInsets.all(10),
                width: 500,
                height: 150,
                child: Scrollbar(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: widget.places.imageUrls.length,
                      separatorBuilder: (context, index) => SizedBox(width: 10), // Adjust the width as needed
                      itemBuilder: (context, index) {
                        String url = widget.places.imageUrls[index];
                        return Image.asset(url);
                      },
                    ),
                  ),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}

class mobileDetailWisata extends StatelessWidget{
  final RupatPlaces place;

  mobileDetailWisata(this.place);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints)
                {
                  return Image.asset("${place.imageAsset}", width: MediaQuery.of(context).size.width,
                  );
                }
            ),

            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints){
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [ BoxShadow(
                        offset: Offset(0, 3),
                        color: Colors.black.withOpacity(0.8),
                        blurRadius: 10,
                      ),],

                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text("${place.name}", style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                            margin: EdgeInsets.only(bottom: 20),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(Icons.date_range),
                                    Text("${place.openDays}"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(Icons.access_time_filled_outlined),
                                    Text("${place.openTime}"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(Icons.payments),
                                    Text("${place.ticketPrice}"),
                                  ],
                                ),
                              ),

                            ],
                          ),

                          Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text("${place.description}", style: TextStyle(fontSize: 13), textAlign: TextAlign.center,)
                          ),
                        ],
                      ),
                    ),
                  );
                }
            ),

            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints){
                  return Container(
                    child: Column(
                      children: [
                        LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints){
                              return Container(
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.only(bottom: 20),
                                child: Text("PortFolio ${place.name}",style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
                              );
                            }
                        ),

                        LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            return SizedBox(
                              height: 150,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: place.imageUrls.map((url){
                                  return Container(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset(url),
                                  );
                                }).toList(),
                              ),
                            );
                          },
                        ),

                      ],
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}


class desktopDetailPenginapan extends StatefulWidget{

  final RupatPenginapan penginapan;

  desktopDetailPenginapan(this.penginapan);

  @override
  State<desktopDetailPenginapan> createState() => _desktopDetailPenginapanState();
}

class _desktopDetailPenginapanState extends State<desktopDetailPenginapan> {
  final _scrollController = ScrollController();

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 10,
          ),
          width: 500,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 15),
                  child: Text("${widget.penginapan.name}"),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Image.asset(widget.penginapan.imageAsset, width: 400,),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Icon(Icons.date_range_outlined),
                            Text(widget.penginapan.openDays),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Icon(Icons.telegram),
                            Text(widget.penginapan.noHP),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(widget.penginapan.description, textAlign: TextAlign.center,),
                ),

                Container(
                  padding: EdgeInsets.all(10),
                  width: 500,
                  height: 150,
                  child: Scrollbar(
                    controller: _scrollController,
                    child: ListView.separated(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: widget.penginapan.imageUrls.length,
                      separatorBuilder: (context, index) => SizedBox(width: 10), // Adjust the width as needed
                      itemBuilder: (context, index) {
                        String url = widget.penginapan.imageUrls[index];
                        return Image.asset(url);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class mobileDetailPenginapan extends StatelessWidget {
  final RupatPenginapan penginapan;

  mobileDetailPenginapan(this.penginapan);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints)
                {
                  return Image.asset("${penginapan.imageAsset}", width: MediaQuery.of(context).size.width,
                  );
                }
            ),

            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints){
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [ BoxShadow(
                        offset: Offset(0, 3),
                        color: Colors.black.withOpacity(0.8),
                        blurRadius: 10,
                      ),],

                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text("${penginapan.name}", style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                            margin: EdgeInsets.only(bottom: 20),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(Icons.date_range),
                                    Text("${penginapan.openDays}"),
                                  ],
                                ),
                              ),

                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(Icons.telegram),
                                    Text("${penginapan.noHP}"),
                                  ],
                                ),
                              ),

                            ],
                          ),

                          Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text("${penginapan.description}", style: TextStyle(fontSize: 13), textAlign: TextAlign.center,)
                          ),
                        ],
                      ),
                    ),
                  );
                }
            ),

            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints){
                  return Container(
                    child: Column(
                      children: [
                        LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints){
                              return Container(
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.only(bottom: 20),
                                child: Text("PortFolio ${penginapan.name}",style: TextStyle(fontSize: 18), textAlign: TextAlign.center,),
                              );
                            }
                        ),

                        LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            return SizedBox(
                              height: 150,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: penginapan.imageUrls.map((url){
                                  return Container(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset(url),
                                  );
                                }).toList(),
                              ),
                            );
                          },
                        ),

                      ],
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}