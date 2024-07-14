import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'Animation.dart';
import 'FormPage.dart';
import 'imagestorage.dart';

class Info1Page extends StatefulWidget {
  final String id;

  const Info1Page({Key? key, required this.id}) : super(key: key);

  @override
  State<Info1Page> createState() => _Info1PagwState();
}

class _Info1PagwState extends State<Info1Page> {
  int index = 0;
  Storage storage = Storage();
  final ID = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 230, 158),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () async {
              FocusScope.of(context).unfocus();
              await Future.delayed(const Duration(milliseconds: 100), () {});
              Navigator.push(context, AnimatePage(widget: FormPage()));
            },
            icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        elevation: 0,
        backgroundColor: Colors.amber,
        title: const Text('Details'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Info',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Photo',
            icon: Icon(Icons.photo),
          )
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        showSelectedLabels: true,
        backgroundColor: const Color(0xFFFFC107),
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.deepOrange.withOpacity(0.5),
      ),
      body: index == 0
          ? Material(
              color: const Color.fromARGB(255, 254, 230, 158),
              child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('users')
                      .snapshots(),
                  builder: (context, snapshot) {
                    return (snapshot.connectionState == ConnectionState.waiting)
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : ListView.builder(
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              var data = snapshot.data!.docs[index].data()
                                  as Map<String, dynamic>;
                              if (data['fid'].toString() == widget.id) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 5),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black45, width: 5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'பெயர் : ${data['name']}',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black45, width: 5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'வயது : ${data['age'].toString()}',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black45, width: 5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'பிறந்த தேதி : ${(data['dob']).toDate()}',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15,
                                        left: 15,
                                        right: 15,
                                        bottom: 1),
                                    child: Container(
                                      height: 40,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black45, width: 5),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'நட்சத்திரம் : ${data['star']}',
                                          style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black54),
                                        ),
                                      ),
                                    ),
                                  ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black45, width: 5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'பிரிவு : ${data['div']}',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black45, width: 5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'தந்தை : ${data['father']}',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black45, width: 5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'தாய் :  : ${data['mother']}',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black45, width: 5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'கல்வி : ${data['study']}',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black45, width: 5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'வேலை : ${data['job']}',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black45, width: 5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'ஊர் : ${data['city']}',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black45, width: 5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'அலைபேசி : ${data['phone']}',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black45, width: 5),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'சம்பளம் : ₹${data['salary'].toString()}',
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: TextField(
                                        controller: ID,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Give ID",
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15,
                                          left: 15,
                                          right: 15,
                                          bottom: 1),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () async {
                                              try {
                                                final docuser =
                                                    FirebaseFirestore.instance
                                                        .collection('users')
                                                        .doc(widget.id);
                                                docuser.update({'id': ID.text});
                                                _success(context);
                                              } catch (_) {
                                                _error(context);
                                              }
                                            },
                                            child: const Text(
                                              'ACCEPT',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.green),
                                          ),
                                          const SizedBox(width: 24),
                                          ElevatedButton(
                                            onPressed: () {
                                              try {
                                                final docuser =
                                                    FirebaseFirestore.instance
                                                        .collection('users')
                                                        .doc(widget.id);
                                                storage.deletefile(
                                                    widget.id + '1');
                                                storage.deletefile(
                                                    widget.id + '2');
                                                docuser.delete();
                                                _success1(context);
                                              } catch (_) {
                                                _error(context);
                                              }
                                            },
                                            child: const Text(
                                              'REJECT',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.red),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Developed by KalyanRaj',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Icon(
                                          Icons.info,
                                          size: 10,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              } else {
                                return Container();
                              }
                            });
                  }),
            )
          : Material(
              color: const Color.fromARGB(255, 254, 230, 158),
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                    left: 20,
                    right: 20,
                  ),
                  child: ListView(
                    children: [
                      const SizedBox(height: 24),
                      FutureBuilder(
                          future: storage.downloadURL(widget.id + '1'),
                          builder: (BuildContext context,
                              AsyncSnapshot<String> snapshot) {
                            if (snapshot.connectionState ==
                                    ConnectionState.waiting &&
                                snapshot.hasData) {
                              return const CircularProgressIndicator();
                            }
                            if (snapshot.connectionState ==
                                    ConnectionState.done &&
                                snapshot.hasData) {
                              return Card(
                                child: Image.network(
                                  snapshot.data!,
                                  fit: BoxFit.cover,
                                ),
                              );
                            } else {
                              return Container();
                            }
                          }),
                      const SizedBox(
                        height: 24,
                      ),
                      FutureBuilder(
                        future: storage.downloadURL(widget.id + '2'),
                        builder: (BuildContext context,
                            AsyncSnapshot<String> snapshot) {
                          if (snapshot.connectionState ==
                                  ConnectionState.waiting &&
                              snapshot.hasData) {
                            return const CircularProgressIndicator();
                          }
                          if (snapshot.connectionState ==
                                  ConnectionState.done &&
                              snapshot.hasData) {
                            return Card(
                              child: Image.network(
                                snapshot.data!,
                                fit: BoxFit.cover,
                              ),
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, left: 15, right: 15, bottom: 1),
                        child: TextField(
                          controller: ID,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Give ID",
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, left: 15, right: 15, bottom: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                try {
                                  final docuser = FirebaseFirestore.instance
                                      .collection('users')
                                      .doc(widget.id);
                                  docuser.update({'id': ID.text});
                                  _success(context);
                                } catch (_) {
                                  _error(context);
                                }
                              },
                              child: const Text(
                                'ACCEPT',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green),
                            ),
                            const SizedBox(width: 24),
                            ElevatedButton(
                              onPressed: () {
                                try {
                                  final docuser = FirebaseFirestore.instance
                                      .collection('users')
                                      .doc(widget.id);
                                  storage.deletefile(widget.id + '1');
                                  storage.deletefile(widget.id + '2');
                                  docuser.delete();
                                  _success1(context);
                                } catch (_) {
                                  _error(context);
                                }
                              },
                              child: const Text(
                                'REJECT',
                                style: TextStyle(color: Colors.white),
                              ),
                              style:
                                  ElevatedButton.styleFrom(primary: Colors.red),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Developed by KalyanRaj',
                            style: TextStyle(fontSize: 10),
                          ),
                          Icon(
                            Icons.info,
                            size: 10,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}

_success(BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        padding: const EdgeInsets.all(25),
        height: 120,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 88, 216, 95),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 30,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Vaildated ID",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'User can now login.',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}

_success1(BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        padding: const EdgeInsets.all(25),
        height: 120,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 88, 216, 95),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 30,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Deleted ID",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Fraud ID deleted.',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}

_error(BuildContext context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        padding: const EdgeInsets.all(25),
        height: 110,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 194, 65, 65),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.error_outline,
              color: Colors.white,
              size: 30,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Failed",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'The operation wasnt carried out.',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}
