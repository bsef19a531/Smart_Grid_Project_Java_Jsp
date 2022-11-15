<%@ page session="false" %>

<%@ page import="smartgrid.services.ServiceDAO" %>
<%@ page import="smartgrid.services.SingleService" %>

<jsp:include page="layout/header.jsp" />

<% 
    int service_id = Integer.parseInt( request.getParameter( "id" ) ); 
    SingleService service = ServiceDAO.getSingleService( service_id );
%>

<div class="services-wrapper">
    <div class="services">
        <div class="services-heading">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="page-title">
                            <h1>Services</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="services-content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="services-content-inner">
                            <h3><%= service.getName() %></h3>
                            <h6>Provided by: <%= service.getProvider() %></h6>
                            <p><%= service.getDescription() %></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </div>
</div>

<jsp:include page="layout/footer.jsp" />