﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Palmary.Loyalty.BO.DataTransferObjects.Language
{
    public class LanguageObject
    {
        public int lang_id { get; set; }
        public string code { get; set; }
        public string name { get; set; }
        public int display_order { get; set; }
        public int status { get; set; }
        public DateTime crt_date { get; set; }
        public int crt_by_type { get; set; }
        public int crt_by { get; set; }
        public DateTime upd_date { get; set; }
        public int upd_by_type { get; set; }
        public int upd_by { get; set; }
        public int record_status { get; set; }
    }
}
