﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Text;
using System.ServiceModel.Configuration;
using System.Globalization;
using System.ServiceModel;

using Itron.Ami.Facade.WebServices.Data.V200810.ClientProxy;
using Itron.Ami.CEWebServiceClient.Base;
using CommonClientProxy = Itron.Ami.Facade.WebServices.Common.V200810.ClientProxy;
using Itron.Ami.Facade.WebServices.Provisioning.V200908.ClientProxy;



namespace Itron.Ami.CEWebServiceClient.External
{
    public class ChangeConfigurationGroup : ExternalAction
    {

        #region Public Methods

        public ChangeConfigurationGroup(List<string> lststrESNs,
            string strGroupName)
        {
            CreateRequest(lststrESNs, strGroupName);
        }

        internal override void Invoke()
        {
            this.m_client = ExternalClientFactory.ConstructProvisioningServiceClient(ExternalLib.Endpoint.ProvisioningEndpointName, ExternalLib.Endpoint.ExternalUserName, ExternalLib.Endpoint.ExternalUserPassword);
            m_Result = this.m_client.ServiceClient.ChangeConfigurationGroup(m_ConfigGroupInput);
            this.m_client.ServiceClient.Close();
        }

        internal override void Abort()
        {
            if ((null != this.m_client) &&
                (null != this.m_client.ServiceClient) &&
                (this.m_client.ServiceClient.State != CommunicationState.Closed))
            {
                this._aborted = true;
                this.m_client.ServiceClient.Abort();
            }
        }

        #endregion

        #region Public Properties

        public ProvisioningResult Result
        {
            get
            {
                return m_Result;
            }
        }

        #endregion

        #region Private Methods

        private void CreateRequest(List<string> lststrESNs, string strGroupName)
        {
            m_ConfigGroupInput = new ChangeConfigurationGroupInput();

            m_ConfigGroupInput.ElectronicSerialNumbers = lststrESNs.ToArray();
            m_ConfigGroupInput.GroupName = strGroupName; 
        }

        #endregion


        #region Members

        private List<string> m_lstESNs = new List<string>();
        private ChangeConfigurationGroupInput m_ConfigGroupInput;
        private Client<ProvisioningServiceClient> m_client = null;
        private ProvisioningResult m_Result = null;

        #endregion

    }


}