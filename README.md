# JPACRUDProject

# Description
Full-stack website displaying restaurants in Alpena, MI which allows the user to make queries, additions, updates and deletes to the database.

# Technologies Used
- Java
- Spring Boot
- SQL
- JSP
- JPA
- MAMP
- Gradle
- Apache Tomcat
- AWS
- Git

# Lessons Learned

Initial setup included populating the database with MySQL Workbench and constructing an entity class based on the table to be accessed within MySQL (Restaurant). The class contains private fields matched to each row of data in the SQL tables. Each class also consisted of various constructors including a no-arg, getters and setters for each field, and a toString().

The RestaurantDAO is an interface implemented by the RestaurantDaoImpl class with methods declared in the interface. RestaurantDaoImpl is the only class that accesses the database. Using the Entity Manager and related annotations simplified querying MySQL and performing CRUD operations tremendously.

I ran into a lot of issues with the mapping of this project. Need to ensure files are stored in proper pathways and that the controller methods and jsps are uniquely named to avoid confusion.

Got tied up troubleshooting for the weekend and did not have time to style the site or make the UI & UX as intuitive and encompassing as originally planned. Pushed a minimum viable product to meet the requirements and deadline.

JSPs, for this project I directed every view to the restaurant.jsp after a CRUD operation which helped keep the output consistent. This would make it easy to build more complex logic if the website was built out further. There is already come basic c:if and c:choose logic built into some jsps.

I did not get to include Bootstrap or CSS on this project but I did incorporate a single navbar.jsp for a consistent navbar housed in a single file which will make updates much smoother and less error prone.

Each page includes basic Bootstrap for a cleaner user interface. The bottom of every page (except home) contains a duplicate navigation menu with options to move to other functionalities of the site.