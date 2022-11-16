using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using System.Windows.Media;

namespace osu_cleaner_wpf.Converter
{
    public class WaterMarkConverter : IMultiValueConverter
    {
        public object Convert(object[] value, Type targetType, object parameter, CultureInfo culture)
        {
            string boxText = (string)value[0];
            bool isFocused = (bool)value[1];

            if (boxText == "" && !isFocused)
            {
                return (SolidColorBrush)(new BrushConverter().ConvertFrom("#FF8D8D8D"));
            }
            else
            {
                return Brushes.Transparent;
            }
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
