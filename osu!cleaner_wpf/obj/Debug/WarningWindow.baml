   M S B A M L   `   `   `  ????J  Fosu!cleaner_wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:osu_cleaner_wpfosu_cleaner_wpf  5   	   #    osu_cleaner_wpf.WarningWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:osu_cleaner_wpf     5   	   -   5        ???	#FF272727$	??130??5       $	??130??6-   $	??450??6=     ? 
ResizeMode$  NoResize=?6I    ? WindowStartupLocation$ CenterScreen=?5	   	    ? 	Resources 5       ?? 
TargetType   warningButtonStyle  ButtonStyle ?? BasedOn ?? Property ?? Value  noButtonStyle??%/  &	        7  &	 ?     7   ?? 5   
   " ??6   8   .?5      ??  ? ??$ 2??6)   ?? 5       ? ??$ 70??6&   ?? 5       ? ??$ 20??6'   ?? 5       ? ??$ 0,15,0,0q?6'   5      ?? 5   
   " ??6   8   .?5      ??  ? ?? ?	#FFBF27B86+   5      5      .??5      ?  ? RowDefinitions 5   
   ?? 5      $
??Auto ?6   ?? 5      $
??Auto ?6   ?? 5      $
??Auto ?6   ?? 5      $??* ?6    ? ColumnDefinitions 5   
   ?? 5       $??* ?6   ?? 5!      $
??Auto ?6   ?? 5"      $??30 ?6   ?? 5#      $
??Auto ?6   ?? 5$      $??* ?6   .+?5'   
   ??   
labelStyle#??[ 6   $??0??64   $??5??6E   $??Center=?5(   0   ??6   ?? *Messages[0]+60   ?? 5)   
   #??[ 6   $??0??64   $??5??6E   $
??Bold"?6Y   $??1 ??5*   0   $??Center=?6>   $??	0,-10,0,0q?6[   ??6   ?? *Messages[1]+6[   ?? 5,   
   -   5        #??[  5,      $	??Yes??6=   $??1??6K   	 ?? 	IsDefault	 . 5-      ?? 5.   
   #??[ 6   $??No??68   $??3??6F   
 ?? IsCancel
 . $
??Bold"?5/      50      51      