using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Get_Your_TA.Models
{
    public class Detail
    {
        private string user_id { get; set; }
        private string ta_type { get; set; }
        private string start_date { get; set; }
        private string end_date { get; set; }
        private string start_time { get; set; }
        private string end_time { get; set; }
        private string origin { get; set; }
        private string destination { get; set; }
        private string stay { get; set; }
        private string vehicle { get; set; }
        private string distance { get; set; }
        private string fare { get; set; }
        private string remarks { get; set; }
        private string hours { get; set; }
        private string DA_rate { get; set; }
        private string DA { get; set; }
        private string DA_percent { get; set; }
        private string total { get; set; }
    }
}