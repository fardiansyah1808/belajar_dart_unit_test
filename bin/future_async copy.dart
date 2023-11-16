Future<void> hello() {
  return Future.delayed(Duration(seconds: 3), () {
    print("Fardi Anjayy Ansyah");
  });
}

void main() {
  hello();
  print("Done");
}
