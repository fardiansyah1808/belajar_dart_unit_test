import 'package:belajar_dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/scaffolding.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import 'mock_object_test.mocks.dart';

void main() {
  group("Book Service", () {
    var bookRepository = MockBookRepository();
    var bookService = BookService(bookRepository);

    test("New book is Saved", () {
      bookService.save("1", "Grand Theft Auto", 99000);
      verify(bookRepository.save(Book("1", "Grand Theft Auto", 99000)));
    });
  });
}
