import 'package:fluter_aplication_1/modelos/popular_model.dart';
import 'package:fluter_aplication_1/network/popular_api.dart';
import 'package:flutter/material.dart';


class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  PopularApi? popularApi;

  @override
  void initState(){
    super.initState();
    popularApi = PopularApi();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Popular movies'),),
      body: FutureBuilder(
        future: popularApi!.getAllPopular(),
        builder: (context, AsyncSnapshot<List<TopLevel>?> snapshot) {
          if(snapshot.hasData){
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                childAspectRatio: .7,
                crossAxisSpacing: 10
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Text(snapshot.data![index].title!);
              },
            );
          }else{
            if(snapshot.hasError){
              return Center(child: Text('Algo salio mal'),);
            }
            else{
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }
        },
        ),
    );
  }
  
  Widget cardPopular(TopLevel topLevel){
    return Container(
      color: Colors.black,
      child: FadeInImage(
        fit: BoxFit.fill,
        image: NetworkImage('https://image.tmdb.org/t/p/w500/${topLevel.posterPath}'),
        placeholder: AssetImage('assets/Loading_splash.gif'),
      ),
    );
  }
}