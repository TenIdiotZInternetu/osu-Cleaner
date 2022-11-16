using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Media;

namespace osu_cleaner_wpf.Converter
{
    class ActivnessConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            bool isActive = (bool)value;

            if (isActive)
            {
                return (SolidColorBrush)(new BrushConverter().ConvertFrom("#FF151515"));
            }
            else
            {
                return (SolidColorBrush)(new BrushConverter().ConvertFrom("#FF4B4B4B"));
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
