using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using Microsoft.WindowsAPICodePack.Dialogs;
using System.IO;
using Microsoft.WindowsAPICodePack.Shell.PropertySystem;

namespace osu_cleaner_wpf
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void dialogButton_ShowDialog(object sender, RoutedEventArgs e)
        {
            CommonOpenFileDialog ofd = new CommonOpenFileDialog() { IsFolderPicker = true };

            if (ofd.ShowDialog() == CommonFileDialogResult.Ok)
            {
                if (sender.Equals(dialogButton1))
                {
                    textbox1.Text = ofd.FileName;
                }
                else if (sender.Equals(dialogButton2))
                {
                    textbox2.Text = ofd.FileName;
                }
            }
        }

        private void Clean(object sender, RoutedEventArgs e)
        {
            bool abort = false;
            bool backup = true;
            string sourcePath = @textbox1.Text;
            string backupPath = @textbox2.Text;

            if (!Directory.Exists(sourcePath))
            {
                textbox1.BorderBrush = Brushes.Red;
                tb1Popup.IsOpen = true;
                textbox1.TextChanged += TextBox_TextChanged;
                this.LocationChanged += HidePopups;
                abort = true;
            }
            if (!Directory.Exists(backupPath) && backupCheck.IsChecked == true)
            {
                textbox2.BorderBrush = Brushes.Red;
                tb2Popup.IsOpen = true;
                textbox2.TextChanged += TextBox_TextChanged;
                this.LocationChanged += HidePopups;
                abort = true;
            }

            if (abort) 
                return;

            InProgressWindow ipWindow = new InProgressWindow();
            ipWindow.boxLabel.Content = "Moving files...";

            if (!sourcePath.Contains(@"osu!\Songs"))
            {
                WarningWindow warnWin = new WarningWindow();

                warnWin.Messages.Add(@"Entered path doesn't match the usual ""osu!\Songs"" pattern!");
                warnWin.Messages.Add("Are you sure this is your osu! Songs folder?");

                if (warnWin.ShowDialog() == false)
                    return; 
            }

            if (backupCheck.IsChecked == false)
            {
                WarningWindow warnWin = new WarningWindow();

                warnWin.Messages.Add(@"All of the satisfactory Songs folders will be lost");
                warnWin.Messages.Add("Are you sure you want to continue without a backup folder?");

                if (warnWin.ShowDialog() == false)
                    return;

                ipWindow.boxLabel.Content = "Removing files...";
                backup = false;
            }

            this.IsEnabled = false;
            ipWindow.Show();
            return;

            string[] songsDirectories = Directory.EnumerateDirectories(sourcePath).ToArray<string>();

            foreach (string sD in songsDirectories)
            {
                string[] osuFiles = Directory.EnumerateFiles(sD, "*.osu").ToArray<string>();

                if (osuFiles.Length == 0)
                {
                    string songFileName = Path.GetFileName(sD);

                    if (!backup)
                    {
                        Directory.Delete(sD, true);
                    }
                    else 
                    {
                        Directory.Move(sD, Path.Combine(backupPath, songFileName));
                    }
                }
            }
        }

        private void HidePopups(object sender, EventArgs e)
        {
            tb1Popup.IsOpen = false;
            tb2Popup.IsOpen = false;
            this.LocationChanged -= HidePopups;
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            TextBox TB = sender as TextBox;
            TB.BorderBrush = (Brush)(new BrushConverter().ConvertFromString("#FF707070"));

            switch (TB.Name)
            {
                case "textbox1":
                    tb1Popup.IsOpen = false;
                    break;

                case "textbox2":
                    tb2Popup.IsOpen = false;
                    break;
            }
            
            TB.TextChanged -= TextBox_TextChanged;
        }
    }
}
