import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'Animation.dart';
import 'HomePage.dart';
import 'InfoPage1.dart';

class FormPage extends StatefulWidget {
  FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final t = TextEditingController();
  Icon s = const Icon(Icons.search);
  Widget tit = const Text('Details');
  bool ct = true;
  String ss = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 230, 158),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () async {
              FocusScope.of(context).unfocus();
              await Future.delayed(const Duration(milliseconds: 100), () {});
              Navigator.push(context, AnimatePage(widget: HomePage()));
            },
            icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        elevation: 0,
        backgroundColor: Colors.amber,
        title: TextField(
          controller: t,
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Search",
          ),
          onChanged: (t) {
            setState(() {
              ss = t;
            });
          },
        ),
      ),
      body: Material(
        color: const Color.fromARGB(255, 254, 230, 158),
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('users').snapshots(),
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
                      if (data['id'].toString() == "") {
                        if (ss.isEmpty) {
                          return Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  child: Text('${data['age']}'),
                                  backgroundColor: Colors.green,
                                ),
                                title: Text(data['name']),
                                subtitle: Text(
                                    "CITY : ${data['city']}   JOB : ${data['job']}"),
                                hoverColor: Colors.black54,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      AnimatePage(
                                          widget: Info1Page(id: data['fid'])));
                                },
                              ),
                              const Divider(
                                color: Color.fromARGB(255, 89, 30, 9),
                              ),
                            ],
                          );
                        } else if (data['name']
                            .toString()
                            .toLowerCase()
                            .startsWith(ss.toLowerCase())) {
                          return Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  child: Text('${data['age']}'),
                                  backgroundColor: Colors.green,
                                ),
                                title: Text(data['name']),
                                subtitle: Text(
                                    "CITY : ${data['city']}   JOB : ${data['job']}"),
                                hoverColor: Colors.black54,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      AnimatePage(
                                          widget: Info1Page(id: data['fid'])));
                                },
                              ),
                              const Divider(
                                color: Color.fromARGB(255, 89, 30, 9),
                              ),
                            ],
                          );
                        } else {
                          return Container();
                        }
                      } else {
                        return Container();
                      }
                    },
                  );
          },
        ),
      ),
    );
  }
}
