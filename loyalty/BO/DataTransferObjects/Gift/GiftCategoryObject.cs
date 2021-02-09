﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Palmary.Loyalty.BO.DataTransferObjects.Gift
{
    public class GiftCategoryObject
    {
        public int category_id { get; set; }
        public int parent_id { get; set; }
        public int leaf { get; set; }
        public string photo_file_name { get; set; }
        public string photo_file_extension { get; set; }
        public int display_order { get; set; }
        public int status { get; set; }
        public DateTime crt_date { get; set; }
        public int crt_by_type { get; set; }
        public int crt_by { get; set; }
        public DateTime upd_date { get; set; }
        public int upd_by_type { get; set; }
        public int upd_by { get; set; }
        public int record_status { get; set; }

        public string name { get; set; }
    }
}
