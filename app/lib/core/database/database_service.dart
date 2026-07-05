import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
static final DatabaseService instance = DatabaseService._init();

static Database? _database;

DatabaseService._init();

Future<Database> get database async {
if (_database != null) return _database!;

```
_database = await _initDB('stock_saathi.db');
return _database!;
```

}

Future<Database> _initDB(String filePath) async {
final dbPath = await getDatabasesPath();

```
final path = join(dbPath, filePath);

return await openDatabase(
  path,
  version: 1,
  onCreate: _createDB,
);
```

}

Future _createDB(Database db, int version) async {
await db.execute('''
CREATE TABLE products(
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL,
sku TEXT NOT NULL,
price REAL NOT NULL,
stock_quantity INTEGER NOT NULL,
low_stock_threshold INTEGER NOT NULL
)
''');
}

Future<int> insertProduct(Map<String, dynamic> product) async {
final db = await instance.database;

```
return await db.insert(
  'products',
  product,
  conflictAlgorithm: ConflictAlgorithm.replace,
);
```

}

Future<List<Map<String, dynamic>>> getProducts() async {
final db = await instance.database;

```
return await db.query('products');
```

}

Future<int> updateProduct(
int id,
Map<String, dynamic> product,
) async {
final db = await instance.database;

```
return await db.update(
  'products',
  product,
  where: 'id = ?',
  whereArgs: [id],
);
```

}

Future<int> deleteProduct(int id) async {
final db = await instance.database;

```
return await db.delete(
  'products',
  where: 'id = ?',
  whereArgs: [id],
);
```

}
}
