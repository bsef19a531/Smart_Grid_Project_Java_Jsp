<%@ page session="false" %>
<%@ page import="smartgrid.services.ServiceDAO" %>
<%@ page import="smartgrid.services.SingleService" %>
<%@ page import="java.util.ArrayList" %>

<% String service_name = request.getParameter( "name" ); %>

<jsp:include page="layout/header.jsp" />

<div class="services-wrapper">
    <div class="services">
        <div class="services-heading">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <div class="page-title">
                            <h1><%= service_name %></h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="services-list">
            <div class="container">
                <div class="row">
                    <%
                        ArrayList<SingleService> t = ServiceDAO.getAllServices( service_name );
                        for ( SingleService service: t ) {
                    %>
                        <div class="col-lg-8 offset-lg-2">
                            <div class="services-list-single-wrapper">
                                <div class="services-list-single services-list-single-1">
                                    <div class="services-list-single-content">
                                        <h3><%= service.getName() %></h3>
                                        <h5><%= service.getProvider() %></h5>
                                        <div class="rating" data-rating="<%= ( service.getRating() * 20 ) %>"></div>
                                    </div>
                                    <div class="services-list-single-button">
                                        <a class="button" href="single-service.jsp?id=<%= service.getId() %>">
                                            <span>Read More</span>    
                                        </a>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    <% } %>
                </div>
            </div>
        </div>        
    </div>
</div>



<jsp:include page="layout/footer.jsp" />
