svcutil.exe /t:metadata \\ocn-rd-swcetest\ami\main\bin\Itron.Ami.Facade.WebServices.dll /et:Itron.Ami.Facade.WebServices.Subscriptions.V200908.IExceptionSubscriberServiceProxy /et:Itron.Ami.Facade.WebServices.Subscriptions.V200908.IEventSubscriberServiceProxy /et:Itron.Ami.Facade.WebServices.Subscriptions.V200810.IExceptionSubscriberServiceProxy /et:Itron.Ami.Facade.WebServices.Subscriptions.V200810.IEventSubscriberServiceProxy /et:Itron.Ami.Facade.WebServices.Common.V200810.IRequestStatusChangedServiceProxy /et:Itron.Ami.Facade.WebServices.Data.V200810.IDataSubscriberServiceProxy"

svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.ClientProxy /t:code www.itron.com.ami.2008.06.wsdl www.itron.com.ami.2008.06.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd schemas.microsoft.com.Message.xsd /out:ExternalAPIManagerServiceClientProxy.cs
svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.Common.V200810.ClientProxy /t:code www.itron.com.ami.2008.10.common.wsdl www.itron.com.ami.2008.10.common.xsd www.itron.com.ami.2008.10.security.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd /out:Common200810ClientProxy.cs
svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.Data.V200810.ClientProxy /t:code www.itron.com.ami.2008.10.data.wsdl www.itron.com.ami.2008.10.data.xsd www.itron.com.ami.2008.10.events.xsd www.itron.com.ami.2008.10.common.xsd www.itron.com.ami.2008.10.security.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd /out:Data200810ClientProxy.cs
svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.Control.V200810.ClientProxy /t:code www.itron.com.ami.2008.10.control.wsdl www.itron.com.ami.2008.10.control.xsd www.itron.com.ami.2008.10.common.xsd www.itron.com.ami.2008.10.security.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd /out:Control200810ClientProxy.cs
svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.Han.V200810.ClientProxy /t:code www.itron.com.ami.2008.10.han.wsdl www.itron.com.ami.2008.10.han.xsd www.itron.com.ami.2008.10.common.xsd www.itron.com.ami.2008.10.security.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd /out:Han200810ClientProxy.cs
svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.Provisioning.V200810.ClientProxy /t:code www.itron.com.ami.2008.10.provisioning.wsdl www.itron.com.ami.2008.10.provisioning.xsd www.itron.com.ami.2008.10.common.xsd www.itron.com.ami.2008.10.security.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd /out:Provisioning200810ClientProxy.cs
svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.Provisioning.V200908.ClientProxy /t:code www.itron.com.ami.2009.08.provisioning.wsdl www.itron.com.ami.2009.08.provisioning.xsd www.itron.com.ami.2008.10.common.xsd www.itron.com.ami.2008.10.security.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd /out:Provisioning200908ClientProxy.cs
svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.Subscriptions.V200810.ClientProxy /t:code www.itron.com.ami.2008.10.subscriptions.wsdl www.itron.com.ami.2008.10.subscriptions.xsd www.itron.com.ami.2008.10.events.xsd www.itron.com.ami.2008.10.common.xsd www.itron.com.ami.2008.10.security.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd /out:Subscriptions200810ClientProxy.cs
svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.Subscriptions.V200908.ClientProxy /t:code www.itron.com.ami.2009.08.subscriptions.wsdl www.itron.com.ami.2009.08.subscriptions.xsd www.itron.com.ami.2008.10.events.xsd www.itron.com.ami.2008.10.common.xsd www.itron.com.ami.2008.10.security.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd /out:Subscriptions200908ClientProxy.cs
svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.Membership.V200810.ClientProxy /t:code www.itron.com.ami.2008.10.membership.wsdl www.itron.com.ami.2008.10.membership.xsd www.itron.com.ami.2008.10.common.xsd www.itron.com.ami.2008.10.security.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd schemas.microsoft.com.Message.xsd /out:Membership200810ClientProxy.cs
svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.Reporting.V200810.ClientProxy /t:code www.itron.com.ami.2008.10.reporting.wsdl www.itron.com.ami.2008.10.reporting.xsd www.itron.com.ami.2008.10.common.xsd www.itron.com.ami.2008.10.security.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd /out:Reporting200810ClientProxy.cs
svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.Reporting.V200908.ClientProxy /t:code www.itron.com.ami.2009.08.reporting.wsdl www.itron.com.ami.2009.08.reporting.xsd www.itron.com.ami.2008.10.common.xsd www.itron.com.ami.2008.10.security.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd /out:Reporting200908ClientProxy.cs
svcutil.exe /noconfig /namespace:*,Itron.Ami.Facade.WebServices.Security.V200912.ClientProxy /t:code www.itron.com.ami.2009.12.security.wsdl www.itron.com.ami.2009.12.security.xsd www.itron.com.ami.2008.10.security.xsd www.itron.com.ami.2008.10.common.xsd schemas.microsoft.com.2003.10.Serialization.Arrays.xsd schemas.microsoft.com.2003.10.Serialization.xsd schemas.microsoft.com.Message.xsd /out:OpticalSignedAuthorization2009ClientProxy.cs