﻿///////////////////////////////////////////////////////////////////////////////
//                         PROPRIETARY RIGHTS NOTICE:
//
// All rights reserved. This material contains the valuable properties and trade
//                                secrets of
//
//                                Itron, Inc.
//                            West Union, SC., USA,
//
// embodying substantial creative efforts and trade secrets, confidential 
// information, ideas and expressions. No part of which may be reproduced or 
// transmitted in any form or by any means electronic, mechanical, or 
// otherwise.  Including photocopying and recording or in connection with any
// information storage or retrieval system without the permission in writing 
// from Itron, Inc.
//
//                              Copyright © 2008
//                                Itron, Inc.
//////////////////////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;

namespace Itron.Metering.Datafiles
{
    /// <summary>
    /// This class represents a MIF created from a CENTRON device.
    /// </summary>
    public class CENTRONMIF: SCSMIF
    {
        #region Constants

        private const int BASE_ADDRESS = 0x00E8;
        private const int DISPLAY_ADDRESS = 0x023D;
        private const string CENTRON = "CENTRON";

        #endregion

         #region Public Methods

        /// <summary>
        /// Constructor.
        /// </summary>
        /// <param name="strFileName">The full path for the MIF.</param>
        //  Revision History
        //  MM/DD/YY Who Version Issue# Description
        //  -------- --- ------- ------ ---------------------------------------------
        //  10/30/08 jrf 9.50           Created.
        //
        public CENTRONMIF(string strFileName)
            : base(strFileName)
        {
        }

        #endregion

        #region Public Properties

        /// <summary>
        /// This property gets the display schedule from the MIF.
        /// </summary>
        //  Revision History
        //  MM/DD/YY Who Version Issue# Description
        //  -------- --- ------- ------ ---------------------------------------------
        //  10/30/08 jrf 9.50           Created.
        //
        public override Display.Display DisplaySchedule
        {
            get
            {
                if (null == m_DisplaySchedule)
                {
                    ReverseEngineerDisplaySchedule(BASE_ADDRESS, DISPLAY_ADDRESS);
                    m_DisplaySchedule.Type = CENTRON;
                }

                return m_DisplaySchedule;
            }
        }

        #endregion
    }
}
