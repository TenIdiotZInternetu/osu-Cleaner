   M S B A M L   `   `   `  ????J  Fosu!cleaner_wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:osu_cleaner_wpfosu_cleaner_wpf  5   	   E'clr-namespace:osu_cleaner_wpf.Converterosu_cleaner_wpf.Converter  5   	        osu_cleaner_wpf.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:osu_cleaner_wpf     5   	   ;convert'clr-namespace:osu_cleaner_wpf.Converter     5   	     ? Title$  osu!Cleaner??5	   	   $	??200??6   $	??400??6*   ???	#FF272727$	??210??6M   $	??210??6]   $	??315??6m    ? WindowStartupLocation$ CenterScreen=?6|    ? 	Resources 5      2   ,osu_cleaner_wpf.Converter.WaterMarkConverter   waterMarkConverter2  ,osu_cleaner_wpf.Converter.ActivnessConverter  activnessConverter ?? 
TargetType  watermarkLabelStyle  
labelStyle ?? BasedOn ?? Property ?? Value  popupLabelStyle  dialogButtonStyle  ButtonStyle  cleanButtonStyle??%?  &	        &	      &	 &     7  &	 ?     7  '?? W    &	 ?    7  &	 0    7  '? ?      5   
   6%     5   
   6%   ?? 5   
   " ??6   8   .?5      ??  ? ??$ Italic$?6*   ?? 5       ? ?? ?	#FF1515156+   ?? 5       ? ??$ 5,0,10,0q?6'   5      ?? 5   
   " ??6   8   .?5      ??  ? ??$ Enter existing directory!??6(   ?? 5       ? ??$
 Bold"?6+   5      ?? 5   
   " ??6   .?5      ??  ? ??
 ?????6+   ?? 5       ? ?? 6+   Z? ?? 5       ? ?? ?	#FF7070706,   ?? 5        ? ??$ 5,0,10,0q?6'   ?? 5!       ? ??$ 1??6,   ?? 5"       ? ??$ 2??60   ?? 5#       ? ??$ 22??6'   5$      ?? 5&   
   " ??6   8   .?5'      ??  ? ??$ . . .??6(   ?? 5(       ? ??$ 3??6,   ?? 5)       ?@?ToolTip$ Browse folders??6(   5*      ?? 5,   
   " ??6)   8   .?5-      ??  ? ?? ?	#FFBF27B86+   ?? 5.       ?@?ToolTip$/ )Remove folders without .osu files in them??6(   -   5        50      ?? 52   
   " ?6   .?53      ??  ? ??$ Right=?6*   ?? 54       ?@?VerticalOffset$ -2??6/   ?? 55       ?@?HorizontalOffset$	 -20??61   56      58      .??5:      ?  ? ColumnDefinitions 5;   
   ?? 5<      $??10 ?6   ?? 5=      $??* ?6   ?? 5>      $??65 ?6   ?? 5?      $??35 ?6   ?? 5@      $??10 ?6    ? RowDefinitions 5B   
   ?? 5C      $??10 ?6   ?? 5D      $
??Auto ?6   ?? 5E      $
??Auto ?6   ?? 5F      $
??Auto ?6   ?? 5G      $
??Auto ?6   ?? 5H      $??40 ?6   ?? 5I      $??10 ?6   .+?5L   
   ?? #??[ 6   $??1??64   $#??Enter your osu!\Songs folder:??6B   $??0,0,0,-3q?6j   ?? 5N   
   #??[ 6   $??2??6=   .??6J   *(ex.: "C:\Users\AppData\Local\osu!\Songs"??5O      `? 5P      	 `? 	Converter#	 [  6   .1?5Q      ?? 
 ?? ElementName$
 textbox1??6    ?? Path$
 Text?65   ?? 5R      $
 textbox1??6   $ 	IsFocused?65   5S      5U      ?? 5V   
   -   5         ??Name$ textbox1??5V      $??2??6$   ? 5W   
   -   5         ?Name$ tb1Popup??5W       ? PlacementTarget 6"   ?? $
 textbox1??.??5X      ?? ???	#FF4B4B4B
???  ??._?5Y      ?? #??[ 6   5Z      5[      ?? 5]   
   -   5        $??dialogButton1??5]      #??[ 6&   $??2??6Q   6^   ?? 5_   
   -   5        $??backupCheck??5_      $??3??6&   $??1??63    d? 	IsChecked$
 TrueY?6C   
???????$??	4,14,0,-1q?6g   $??	-2,-6,0,0q?5`      .??5a      ?? #??[ 6   $??Set up backup folder??68   5b      ?? 5d   
   #??[ 6   $??4??6=   ??5e      ?? $
 textbox2??$ 	IsEnabled? ?? 	Converter# [ ??5f      `? 5g      #	 [  6   .1?5h      ?? $
 textbox2??6   $
 Text?65   ?? 5i      $
 textbox2??6   $ 	IsFocused?65   5j      .??5k       ex.: "C:\Desktop\SongsBackup"5n      ?? 5o   
   -   5        $??textbox2??5o      $??4??6"   {?6/   ?? $
 backupCheck??$ 	IsChecked?? 5p   
   -   5        $ tb2Popup??5p       6"   ?? $
 textbox2??.??5q      ?? ???	#FF4B4B4B
???  ??._?5r      ?? #??[ 6   5s      5t      ?? 5v   
   -   5        $??dialogButton2??5v      #??[ 6&   $??4??6Q   {?5w      ?? $
 backupCheck??$ 	IsChecked?6O   ?? 5y   
   #??[ 6   $??5??6;   $??2??6H   $??2??6X   $??0,15,0,0q?5z      $??Clean!??6#   $
??Bold"?64   5{      5|      