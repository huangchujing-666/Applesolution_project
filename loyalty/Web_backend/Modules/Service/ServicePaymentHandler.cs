﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Palmary.Loyalty.Common;
using Palmary.Loyalty.BO.Database;
using Palmary.Loyalty.BO.Modules.Service;
using Palmary.Loyalty.BO.DataTransferObjects.DB;
using Palmary.Loyalty.Web_backend.ObjectModels.Infrastructure.ExtJsEntity;
using Palmary.Loyalty.Web_backend.ObjectModels.Infrastructure.PayoadKey;
using Palmary.Loyalty.Web_backend.Modules.Utility;
using Palmary.Loyalty.Web_backend.Modules.GlobalHandlers;


namespace Palmary.Loyalty.Web_backend.Modules.Service
{
    public class ServicePaymentHandler : IHandler
    {
        public string LoadListDataToExtJSJson(int prefix_id, int startRowIndex, int rowLimit, List<SearchParmObject> searchParmList, string sortColumn, CommonConstant.SortOrder sortOrder, ref int rowTotal)
        {
            var servicePaymentManager = new ServicePaymentManager();

            var resultCode = CommonConstant.SystemCode.undefine;
            var resultList = servicePaymentManager.GetList(prefix_id, startRowIndex, rowLimit, searchParmList, sortColumn, sortOrder, ref resultCode, ref rowTotal).ToList();
            var resultDataList = resultList.Select(
                x => new
                {
                    id = x.payment_id,
                    
                    invoice_no = x.invoice_no,
                    service_name = x.member_service_name,
                    payment_method_name = x.payment_method_name,
                    fee = 1, //x.fee,
                    crt_date = x.crt_date.ToString("yyyy-MM-dd HH:mm:ss.fff"),
                    href = "new com.embraiz.tag().openNewTag('EDIT_S:" + x.payment_id + "','Service: " + x.payment_id + "','com.palmary.service.js.edit','iconRole16','iconRole16','iconRole16','" + x.payment_id + "')"
                }
            );

            rowTotal = resultDataList.Count();
            return resultDataList.ToJson();
        }
    }
}