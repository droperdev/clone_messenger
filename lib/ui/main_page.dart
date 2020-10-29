import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/users/1.jpg',
            ),
          ),
        ),
        title: Text(
          'Chats',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.camera_alt,
              size: 20,
              color: Colors.black,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.edit,
              size: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        right: 8.0,
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Buscar',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 118,
                alignment: Alignment.topCenter,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: EdgeInsets.all(8),
                      width: 64,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: index == 0
                                ? Icon(
                                    Icons.video_call,
                                    size: 32,
                                    color: Colors.black,
                                  )
                                : Container(
                                    margin: EdgeInsets.only(
                                      left: 46,
                                      top: 46,
                                    ),
                                    width: 12,
                                    height: 12,
                                    alignment: Alignment.bottomRight,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.white,
                                            spreadRadius: 4),
                                      ],
                                      color: Colors.green,
                                    ),
                                  ),
                            backgroundColor: Colors.grey[200],
                            backgroundImage: index == 0
                                ? null
                                : AssetImage(
                                    'assets/users/2.jpg',
                                  ),
                          ),
                          SizedBox(height: 6),
                          RichText(
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              text:
                                  index == 0 ? 'Crear sala' : 'Juan Perez Diaz',
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return InkWell(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/users/4.jpg',
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 30,
                            top: 30,
                          ),
                          width: 12,
                          height: 12,
                          alignment: Alignment.bottomRight,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(color: Colors.white, spreadRadius: 4),
                            ],
                            color: Colors.green,
                          ),
                        ),
                      ),
                      title: Text('Bruno Asencio'),
                      subtitle: Text('Gracias por el producto, está genial.'),
                      trailing: Text('mar.'),
                    ),
                    onTap: () {
                      print('hola');
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            label: "Chats",
            icon: Icon(Icons.messenger),
          ),
          BottomNavigationBarItem(
            label: "Personas",
            icon: Icon(Icons.group),
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}
