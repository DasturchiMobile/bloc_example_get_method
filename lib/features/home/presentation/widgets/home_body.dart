import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  void initState() {
    context.read<HomeBloc>().add(HomeFetchDataEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if(state is HomeSuccessState){
          return SafeArea(
            child: ListView.builder(
                itemCount: state.homeModel.results?.length ?? 0,
                itemBuilder: (context, index){
                  return Container(
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: 200,
                    color: Colors.green,
                    child: Text(state.homeModel.results?[index].fromLocation.toString() ?? ""),
                  );
                }),
          );
        }
        if(state is HomeErrorState){
          return Container(
            height: 100,
            width: 200,
            color: Colors.red,
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
