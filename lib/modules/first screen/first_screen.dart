import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motoon_task1/models/grid_item.dart';
import 'package:motoon_task1/models/list_item.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final List<String> radio_list = [
      'Tixico 2.0',
      'Project Grail',
      'Brandon test',
      'Epsome Salt'
    ];
    var _value = '';
    return Center(
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      'Wiki Lists',
                      style: themeData.textTheme.headline4,
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 1.5,
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 15),
                        itemCount: data.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            padding: const EdgeInsets.only(left: 15.0),
                            decoration: BoxDecoration(
                                color: data[index].background,
                                borderRadius: BorderRadius.circular(25)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  data[index].icon,
                                  color: Colors.white,
                                ),
                                Text(
                                  "${data[index].title}",
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Recently Opened Wikis',
                      style: TextStyle(
                          color: Color(0xffFFC0A1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: list_data.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  NetworkImage("${list_data[index].image}"),
                            ),
                            title: Text("${list_data[index].title}"),
                          );
                        }),
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Channel / Group',
                          style: TextStyle(
                              color: Color(0xffFFC0A1),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.green,
                                width: 2,
                                style: BorderStyle.solid)),
                        width: 20,
                        height: 20,
                        child: const Icon(
                          Icons.add,
                          color: Colors.green,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: list_data.length,
                      itemBuilder: (context, index) => RadioListTile(
                        secondary: Icon(Icons.more_vert_rounded),
                        title: Text(radio_list[index]),
                        onChanged: (value) {
                          setState(() {
                            _value = value.toString();
                          });
                        },
                        value: _value,
                        groupValue: radio_list[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
