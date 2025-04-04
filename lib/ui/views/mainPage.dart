import 'package:flutter/material.dart';
import 'package:flutter_application_9/data/entity/films.dart';
import 'package:flutter_application_9/ui/cubit/mainPage_cubit.dart';
import 'package:flutter_application_9/ui/views/detailPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {


@override
  void initState() {
    context.read<MainpageCubit>().uploadFilm();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Film List"),),
      body: BlocBuilder<MainpageCubit,List<Film>>(
        builder: (context,filmsList){
          if(filmsList.isNotEmpty){
            return GridView.builder(
              itemCount: filmsList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.8),
              itemBuilder: (context, index) {
                var film=filmsList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage(film: film)));
                  },
                  child: Card(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("images/${film.picture}"),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${film.price}\$"),
                            ElevatedButton(onPressed: (){
                              print("${film.name} added to cart");
                            }, child: Text("ADD TO CART", style: TextStyle(fontSize: 10),)),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }
          else{
            return const Center();
          }
        }
        ),
    );
  }
}