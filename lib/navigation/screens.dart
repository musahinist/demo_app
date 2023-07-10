enum Screen {
  spacex("/spacex", "SpaceX"),
  slide("/slide", "Slide"),
  reddit("/reddit", "Reddit");

  const Screen(this.path, this.name);
  final String path;
  final String name;
}
