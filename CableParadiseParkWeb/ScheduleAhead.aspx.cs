using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CableParadiseParkWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private bool checkDate()
        {
            try
            {
                int day, month, year, startYear, endYear;
                bool isDateValid = false;
                startYear = 2018; //earliest year valid
                endYear = 9999; //latest year valid

                day = Convert.ToInt32(TextBox3.Text);
                month = Convert.ToInt32(TextBox5.Text);
                year = Convert.ToInt32(TextBox6.Text);

                if (year >= startYear && year <= endYear)
                {
                    if ((day >= 1 && day <= 31) && (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12))
                    {
                        isDateValid = true;
                    }
                    else if ((day >= 1 && day <= 30) && (month == 4 || month == 6 || month == 9 || month == 11))
                    {
                        isDateValid = true;
                    }
                    else if ((day >= 1 && day <= 28) && (month == 2))
                    {
                        isDateValid = true;
                    }
                    else if (day == 29 && month == 2 && (year % 400 == 0 || year % 100 != 0))
                    {
                        isDateValid = true;
                    }
                }
                return isDateValid;
            }
            catch(Exception e)
            {
                return false;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(checkDate())
            {
                
            }
            
        }
    }
}