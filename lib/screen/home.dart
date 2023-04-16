import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Item {
  String title;
  bool isselected = false;

  Item({required this.title, required this.isselected});
}

class HomeScreen extends StatelessWidget {
  final dataList = <Item>[
    Item(title: "Aadhar Card", isselected: false),
    Item(title: "Pan Card", isselected: false),
    Item(title: "Bike", isselected: false),
    Item(title: "Canceled Cheque ", isselected: false),
  ].obs;

  final selectedItem = <Item>[].obs;

  String name;
  String address;
  String phoneNumber;
  HomeScreen(
      {super.key,
      required this.name,
      required this.address,
      required this.phoneNumber});
  final Rxn<bool> selected = Rxn<bool>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title: Text(
            "HANDOVER VEHICLE",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 15,
                      blurStyle: BlurStyle.outer),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/image.png"),
                      radius: 50,
                    ),
                  ),
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "+91 ${phoneNumber}",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black45),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange[700],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange[700],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange[700],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange[700],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey[700],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    endIndent: 20,
                    indent: 20,
                    color: Colors.black38,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Address",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black38,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 8),
                        Text(
                          address,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
              width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 228, 255, 154),
              child: Text(
                "Required Documents",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Obx(
              () => Container(
                margin: EdgeInsets.only(left: 2),
                child: Column(
                  children: generatedItems(),
                ),
              ),
            ),
            // const SizedBox(height: 0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Please enter OTP. Rush wheels shared with Rider",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 228, 255, 154),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                            "5",
                            style: TextStyle(fontSize: 20),
                          )),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 228, 255, 154),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                            "5",
                            style: TextStyle(fontSize: 20),
                          )),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 228, 255, 154),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                            "5",
                            style: TextStyle(fontSize: 20),
                          )),
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 228, 255, 154),
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: Text(
                            "5",
                            style: TextStyle(fontSize: 20),
                          )),
                        ),
                        Icon(Icons.check_circle, color: Colors.green, size: 45)
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    // margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(children: [
                      Obx(
                        () => Checkbox(
                          activeColor: Color.fromARGB(255, 33, 103, 243),
                          value: selected.value == true,
                          onChanged: (val) {
                            val == true
                                ? selected.value = true
                                : selected.value = false;
                          },
                        ),
                      ),
                      Container(
                        width: 290,
                        child: Text(
                          "I have received above checked documents from rider",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      )
                    ]),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange[600]),
                    ),
                    onPressed: () {
                      selectedItem.clear();
                      selectedItem
                          .addAll(dataList.where((p0) => p0.isselected));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: Center(
                        child: Text(
                          "Submit",
                          style: TextStyle(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                      child: Text(
                    "* Note: 3 documents are Mondatory",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w400),
                  ))
                ],
              ),
            ),
          ]),
        ));
  }

  List<Widget> generatedItems() {
    final result = <Widget>[];
    for (int i = 0; i < dataList.length; i++) {
      result.add(CheckboxListTile(
          enabled: true,
          title: Text(
            dataList[i].title,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          value: dataList[i].isselected,
          checkColor: Colors.white,
          activeColor: Color.fromARGB(255, 33, 103, 243),
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (v) {
            dataList[i].isselected = v ?? false;
            dataList.refresh();
          }));
    }
    return result;
  }
}
