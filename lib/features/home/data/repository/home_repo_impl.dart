import 'package:bloc_example_get_method/error/failure.dart';
import 'package:bloc_example_get_method/features/home/data/model/home_model.dart';
import 'package:bloc_example_get_method/network/api_client.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl {
  Future<Either<Failure, HomeModel>> fetchData()async{
    final res = await ApiClient().getMethod(pathUrl: "getdata/", isHeader: false);
    if(res.isSuccess){
      return Right(HomeModel.fromJson(res.response));
    }
    return Left(Failure(errorMsg: res.response));
  }
}