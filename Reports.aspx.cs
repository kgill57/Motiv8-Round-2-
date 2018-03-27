//------------------------------------------------------------------
// <copyright company="Microsoft">
//     Copyright (c) Microsoft.  All rights reserved.
// </copyright>
//------------------------------------------------------------------
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reports : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void ChooseReport_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;

        if (ChooseReport.SelectedValue == "Application Report")
        {
            ApplicationReport.Visible = true;
            EmployerReport.Visible = false;
            EventPostReport.Visible = false;
            EventReport.Visible = false;
            RewardEarnedReport.Visible = false;
            RewardProviderReport.Visible = false;
            RewardReport.Visible = false;
            TransactionReport.Visible = false;
            UserReport.Visible = false;
        }
        else if (ChooseReport.SelectedValue == "Employer Report")
        {
            ApplicationReport.Visible = false;
            EmployerReport.Visible = true;
            EventPostReport.Visible = false;
            EventReport.Visible = false;
            RewardEarnedReport.Visible = false;
            RewardProviderReport.Visible = false;
            RewardReport.Visible = false;
            TransactionReport.Visible = false;
            UserReport.Visible = false;
        }
        else if (ChooseReport.SelectedValue == "Event Post Report")
        {
            ApplicationReport.Visible = false;
            EmployerReport.Visible = false;
            EventPostReport.Visible = true;
            EventReport.Visible = false;
            RewardEarnedReport.Visible = false;
            RewardProviderReport.Visible = false;
            RewardReport.Visible = false;
            TransactionReport.Visible = false;
            UserReport.Visible = false;
        }
        else if (ChooseReport.SelectedValue == "Event Report")
        {
            ApplicationReport.Visible = false;
            EmployerReport.Visible = false;
            EventPostReport.Visible = false;
            EventReport.Visible = true;
            RewardEarnedReport.Visible = false;
            RewardProviderReport.Visible = false;
            RewardReport.Visible = false;
            TransactionReport.Visible = false;
            UserReport.Visible = false;
        }
        else if (ChooseReport.SelectedValue == "Reward Earned Report")
        {
            ApplicationReport.Visible = false;
            EmployerReport.Visible = false;
            EventPostReport.Visible = false;
            EventReport.Visible = false;
            RewardEarnedReport.Visible = true;
            RewardProviderReport.Visible = false;
            RewardReport.Visible = false;
            TransactionReport.Visible = false;
            UserReport.Visible = false;
        }
        else if (ChooseReport.SelectedValue == "Reward Provider Report")
        {
            ApplicationReport.Visible = false;
            EmployerReport.Visible = false;
            EventPostReport.Visible = false;
            EventReport.Visible = false;
            RewardEarnedReport.Visible = false;
            RewardProviderReport.Visible = true;
            RewardReport.Visible = false;
            TransactionReport.Visible = false;
            UserReport.Visible = false;
        }
        else if (ChooseReport.SelectedValue == "Reward Report")
        {
            ApplicationReport.Visible = false;
            EmployerReport.Visible = false;
            EventPostReport.Visible = false;
            EventReport.Visible = false;
            RewardEarnedReport.Visible = false;
            RewardProviderReport.Visible = false;
            RewardReport.Visible = true;
            TransactionReport.Visible = false;
            UserReport.Visible = false;
        }
        else if (ChooseReport.SelectedValue == "Transaction Report")
        {
            ApplicationReport.Visible = false;
            EmployerReport.Visible = false;
            EventPostReport.Visible = false;
            EventReport.Visible = false;
            RewardEarnedReport.Visible = false;
            RewardProviderReport.Visible = false;
            RewardReport.Visible = false;
            TransactionReport.Visible = true;
            UserReport.Visible = false;
        }
        else if (ChooseReport.SelectedValue == "User Report")
        {
            ApplicationReport.Visible = false;
            EmployerReport.Visible = false;
            EventPostReport.Visible = false;
            EventReport.Visible = false;
            RewardEarnedReport.Visible = false;
            RewardProviderReport.Visible = false;
            RewardReport.Visible = false;
            TransactionReport.Visible = false;
            UserReport.Visible = true;
        }
    }
}
