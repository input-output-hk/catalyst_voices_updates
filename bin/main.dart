import 'package:static_shock/static_shock.dart';

Future<void> main(List<String> arguments) async {
  final staticShock = StaticShock()
    ..pick(ExtensionPicker("html"))
    ..pick(ExtensionPicker("jpeg"))
    ..pick(DirectoryPicker.parse("images"))
    ..plugin(const MarkdownPlugin())
    ..plugin(const JinjaPlugin())
    ..plugin(const PrettyUrlsPlugin())
    ..plugin(const RedirectsPlugin())
    ..plugin(const SassPlugin())
    ..plugin(
      DraftingPlugin(
        showDrafts: arguments.contains("preview"),
      ),
    )
    ..plugin(
      RssPlugin(
        site: RssSiteConfiguration(
          title: "Catalyst Updates",
          description: "Discover the latest features in our Catalyst apps.",
          homePageUrl: "",
        ),
        pageToRssItemMapper: (RssSiteConfiguration config, Page page) {
          return defaultPageToRssItemMapper(config, page)?.copyWith(
            author: page.data["author"],
          );
        },
      ),
    );

  await staticShock.generateSite();
}
