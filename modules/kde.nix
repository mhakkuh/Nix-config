{ pkgs, ... }:

{
  # Custom KDE color scheme
  home.file.".local/share/color-schemes/Asdasdsad.colors".source =
    ../themes/kde/color-schemes/Asdasdsad.colors;

  # Custom KDE icon theme
  home.file.".local/share/icons/Cyan-Breeze-Dark-Icons".source =
    ../themes/kde/icons/Cyan-Breeze-Dark-Icons;

  # Custom KDE Global Theme
  home.file.".local/share/plasma/look-and-feel/assfucker!".source =
    ../themes/kde/look-and-feel/"assfucker!";

  programs.plasma = {
    enable = true;

    workspace = {
      lookAndFeel = "assfucker!";
      colorScheme = "Asdasdsad";
      iconTheme = "Cyan-Breeze-Dark-Icons";

      cursor = {
        theme = "breeze_cursors";
      };

      wallpaper = ../themes/kde/test3.webp;
    };

    panels = [
      {
        location = "bottom";
        alignment = "left";

        widgets = [
          "org.kde.plasma.kickoff"
          "org.kde.plasma.icontasks"
        ];
      }

      {
        location = "bottom";
        alignment = "right";

        widgets = [
          "org.kde.plasma.systemtray"
          "org.kde.plasma.digitalclock"
        ];
      }
    ];
  };
}