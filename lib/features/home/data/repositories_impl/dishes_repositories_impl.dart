import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:progettoflutter/features/home/domain/repositories/dishes_repository.dart';
import '../models/dishes.dart';

class DishesRepositoryImpl implements DishesRepository{

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<List<Dishes>> getDishes()  async{
     var collection = await  _firestore.collection('dishes').get();
     List<Dishes> items = collection.docs.map((e) {
       var data = e.data();
     return Dishes (
         id : e.id ,
         description : data['description'],
         category : data['category'],
         price : data['price'],
         name : data['name'],
         image : data['image'],
      );
     }
     ).toList();
     return items;
  }
}