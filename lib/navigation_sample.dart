import 'package:flutter/material.dart';

import 'bean/ProductBean.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text('去看看'),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondScreen()));
        });
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation App'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('看什么看'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class ProductGenerateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('去血拼啊'),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductListScreen(
                      productList: generateProductList(),
                    )));
      },
    );
  }

  List<ProductBean> generateProductList() {
    return List.generate(20, (i) => ProductBean('商品 $i', '编号为$i'));
  }
}

class ProductListScreen extends StatelessWidget {
  final List<ProductBean> productList;

  const ProductListScreen({Key key, this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation App List'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(productList[index].title),
              onTap: () {
                _navigateToDetail(context, index);
              },
            );
          }),
    );
  }

  //等待返回值
  _navigateToDetail(BuildContext context, int index) async{
    final result = await Navigator.push(context, MaterialPageRoute(
        builder: (context) => ProductDetailScreen(
          product: productList[index],
        )));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text(result)));
  }

}

class ProductDetailScreen extends StatelessWidget {
  final ProductBean product;

  ProductDetailScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation App Detail'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: ListTile(
          title: Text(
            product.title,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(product.description),
          leading: Icon(Icons.directions_bike, color: Colors.orange),
          onTap: (){
            Navigator.pop(context, product.description);
          },
        ),
      ),
    );
  }
}

class NavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = ProductGenerateScreen();
    return MaterialApp(
      title: 'Navigation App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigation App'),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
