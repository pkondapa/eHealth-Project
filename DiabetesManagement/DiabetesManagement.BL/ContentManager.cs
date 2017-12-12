using DiabatesManagement.Domain;
using DiabetesManagement.Provider;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiabetesManagement.BL
{
    public static class ContentManager
    {

        public static List<ResultItem> GetContent(string sWord)
        {
            List<ResultItem> result = new List<ResultItem>();

            try
            {
                MayoClinicProvider mayoClinicProvider = new MayoClinicProvider();
                PubMedProvider pubMedProvider = new PubMedProvider();
                AdaProvider adaProvider = new AdaProvider();

                result.AddRange(mayoClinicProvider.Load(sWord));
                result.AddRange(adaProvider.Load(sWord));
                result.AddRange(pubMedProvider.Load(sWord));
            }
            catch (Exception ex)
            {
                //TODO:
                // ex.Message;
            }


            #region Commented


            //result.Add(new ResultItem() { Content = @"The aim of the present investigation was to assess the benefit of continuous interstitial glucose monitoring with real-time measurement devices (rtCGM) in comparison with other methods of measurement (e.g. blood glucose self-monitoring [BGSM], retrospective CGM) and with variants of rtCGM in diabetes mellitus patients treated with insulin regarding patient-relevant outcomes.
            //    Institute for Quality and Efficiency in Health Care(IQWiG)", SourceUrl = "https://www.ncbi.nlm.nih.gov/pubmedhealth/PMH0090000/", Title = "Continuous Interstitial Glucose Monitoring (CGM) with Real-Time Measurement Devices in Insulin-Dependent Diabetes Mellitus [Internet]irew" });

            //result.Add(new ResultItem() { Content = @"The aim of the present investigation was to assess the benefit of continuous interstitial glucose monitoring with real-time measurement devices (rtCGM) in comparison with other methods of measurement (e.g. blood glucose self-monitoring [BGSM], retrospective CGM) and with variants of rtCGM in diabetes mellitus patients treated with insulin regarding patient-relevant outcomes.
            //    Institute for Quality and Efficiency in Health Care(IQWiG)", SourceUrl = "https://www.ncbi.nlm.nih.gov/pubmedhealth/PMH0090000/", Title = "Continuous Interstitial Glucose Monitoring (CGM) with Real-Time Measurement Devices in Insulin-Dependent Diabetes Mellitus [Internet]irew" });

            //result.Add(new ResultItem() { Content = @"The aim of the present investigation was to assess the benefit of continuous interstitial glucose monitoring with real-time measurement devices (rtCGM) in comparison with other methods of measurement (e.g. blood glucose self-monitoring [BGSM], retrospective CGM) and with variants of rtCGM in diabetes mellitus patients treated with insulin regarding patient-relevant outcomes.
            //    Institute for Quality and Efficiency in Health Care(IQWiG)", SourceUrl = "https://www.ncbi.nlm.nih.gov/pubmedhealth/PMH0090000/", Title = "Continuous Interstitial Glucose Monitoring (CGM) with Real-Time Measurement Devices in Insulin-Dependent Diabetes Mellitus [Internet]irew" });

            //result.Add(new ResultItem() { Content = @"The aim of the present investigation was to assess the benefit of continuous interstitial glucose monitoring with real-time measurement devices (rtCGM) in comparison with other methods of measurement (e.g. blood glucose self-monitoring [BGSM], retrospective CGM) and with variants of rtCGM in diabetes mellitus patients treated with insulin regarding patient-relevant outcomes.
            //    Institute for Quality and Efficiency in Health Care(IQWiG)", SourceUrl = "https://www.ncbi.nlm.nih.gov/pubmedhealth/PMH0090000/", Title = "Continuous Interstitial Glucose Monitoring (CGM) with Real-Time Measurement Devices in Insulin-Dependent Diabetes Mellitus [Internet]irew" });

            //result.Add(new ResultItem() { Content = @"The aim of the present investigation was to assess the benefit of continuous interstitial glucose monitoring with real-time measurement devices (rtCGM) in comparison with other methods of measurement (e.g. blood glucose self-monitoring [BGSM], retrospective CGM) and with variants of rtCGM in diabetes mellitus patients treated with insulin regarding patient-relevant outcomes.
            //    Institute for Quality and Efficiency in Health Care(IQWiG)", SourceUrl = "https://www.ncbi.nlm.nih.gov/pubmedhealth/PMH0090000/", Title = "Continuous Interstitial Glucose Monitoring (CGM) with Real-Time Measurement Devices in Insulin-Dependent Diabetes Mellitus [Internet]irew" });

            //result.Add(new ResultItem() { Content = @"The aim of the present investigation was to assess the benefit of continuous interstitial glucose monitoring with real-time measurement devices (rtCGM) in comparison with other methods of measurement (e.g. blood glucose self-monitoring [BGSM], retrospective CGM) and with variants of rtCGM in diabetes mellitus patients treated with insulin regarding patient-relevant outcomes.
            //    Institute for Quality and Efficiency in Health Care(IQWiG)", SourceUrl = "https://www.ncbi.nlm.nih.gov/pubmedhealth/PMH0090000/", Title = "Continuous Interstitial Glucose Monitoring (CGM) with Real-Time Measurement Devices in Insulin-Dependent Diabetes Mellitus [Internet]irew" });

            //result.Add(new ResultItem() { Content = @"The aim of the present investigation was to assess the benefit of continuous interstitial glucose monitoring with real-time measurement devices (rtCGM) in comparison with other methods of measurement (e.g. blood glucose self-monitoring [BGSM], retrospective CGM) and with variants of rtCGM in diabetes mellitus patients treated with insulin regarding patient-relevant outcomes.
            //    Institute for Quality and Efficiency in Health Care(IQWiG)", SourceUrl = "https://www.ncbi.nlm.nih.gov/pubmedhealth/PMH0090000/", Title = "Continuous Interstitial Glucose Monitoring (CGM) with Real-Time Measurement Devices in Insulin-Dependent Diabetes Mellitus [Internet]irew" });

            //result.Add(new ResultItem() { Content = @"The aim of the present investigation was to assess the benefit of continuous interstitial glucose monitoring with real-time measurement devices (rtCGM) in comparison with other methods of measurement (e.g. blood glucose self-monitoring [BGSM], retrospective CGM) and with variants of rtCGM in diabetes mellitus patients treated with insulin regarding patient-relevant outcomes.
            //    Institute for Quality and Efficiency in Health Care(IQWiG)", SourceUrl = "https://www.ncbi.nlm.nih.gov/pubmedhealth/PMH0090000/", Title = "Continuous Interstitial Glucose Monitoring (CGM) with Real-Time Measurement Devices in Insulin-Dependent Diabetes Mellitus [Internet]irew" });

            //result.Add(new ResultItem() { Content = @"The aim of the present investigation was to assess the benefit of continuous interstitial glucose monitoring with real-time measurement devices (rtCGM) in comparison with other methods of measurement (e.g. blood glucose self-monitoring [BGSM], retrospective CGM) and with variants of rtCGM in diabetes mellitus patients treated with insulin regarding patient-relevant outcomes.
            //    Institute for Quality and Efficiency in Health Care(IQWiG)", SourceUrl = "https://www.ncbi.nlm.nih.gov/pubmedhealth/PMH0090000/", Title = "Continuous Interstitial Glucose Monitoring (CGM) with Real-Time Measurement Devices in Insulin-Dependent Diabetes Mellitus [Internet]irew" });
            #endregion

            return result;
        }

    }
}
