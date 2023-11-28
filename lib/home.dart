//import 'package:ex/constant/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imagePaths =
      List.generate(15, (index) => 'lib/images/img${index + 1}.jpeg');

  final List<Map<String, dynamic>> gridmap = [
    {
      "title": 'India Tshirt Orange 2022 model',
      "prize": '\$300',
      "prize drop": '\$200',
      "discount": '40% off',
      "image": "imagePaths[index]"
    },
    {
      "title": 'CR7 Portugal Tshirt 2022 model',
      "prize": '\$500',
      "prize drop": '\$450',
      "discount": '10% off',
      "image": "imagePaths[index]"
    },
    {
      "title": 'Barcelona Tshirt 2023 Model',
      "prize": '\$400',
      "prize drop": '\$250',
      "discount": '50% off',
      "image": "imagePaths[index]"
    },
    {
      "title": 'Real Madrid Tshirt 2022 model',
      "prize": '\$350',
      "prize drop": '\$250',
      "discount": '10% off',
      "image": "imagePaths[index]"
    },
    {
      "title": 'Benzema Black Tshirt',
      "prize": '\$300',
      "prize drop": '\$200',
      "discount": '25% off',
      "image": "imagePaths[index]"
    },
    {
      "title": 'Real Madrid Women Tshirt',
      "prize": '\$400',
      "prize drop": '\$300',
      "discount": '20% off',
      "image": "imagePaths[index]"
    },
    {
      "title": 'Brazil Tshirt 2023 model',
      "prize": '\$600',
      "prize drop": '\$300',
      "discount": '50% off',
      "image": "imagePaths[index]"
    },
    {
      "title": 'Ronaldo Tshirt 2023 model',
      "prize": '\$800',
      "prize drop": '\$550',
      "discount": '35% off',
      "image": "imagePaths[index]"
    },
    {
      "title": 'Brazil Tshirt With Green Color',
      "prize": '\$400',
      "prize drop": '\$250',
      "discount": '35% off',
      "image": "imagePaths[index]"
    },
    {
      "title": 'France Tshirt 2018 model',
      "prize": '\$150',
      "prize drop": '\$100',
      "discount": '35% off',
      "image": "imagePaths[index]"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 152, 144, 144),
        title: const Text('F O O T B A L L K I T S '),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: TextField(
              style: const TextStyle(
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(88, 92, 89, 1))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  fillColor: const Color.fromARGB(26, 144, 62, 62),
                  filled: true,
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.white, fontSize: 15),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 350,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 124, 123, 120),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(98, 87, 86, 89),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 2))
                        ]),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)
                              ),
                          child: Image(
                            height: 220,
                            width: double.infinity,
                            image: AssetImage(imagePaths[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            "${gridmap.elementAt(index)['title']}"),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 1.0,
                              ),
                              Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          decoration:
                                              TextDecoration.lineThrough),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                "${gridmap.elementAt(index)['prize']}"),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 95),
                                    child: SizedBox(
                                      height: 35,
                                      width: 22,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 35),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                "${gridmap.elementAt(index)['prize drop']}"),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: RichText(
                                      text: TextSpan(
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text:
                                                  "${gridmap.elementAt(index)['discount']}"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
