# -------- STAGE 1: Build --------
    #FROM maven:3.9-eclipse-temurin-17 as builder

    # Set working directory
    #WORKDIR /app
    
    # # Copy Maven project files
    # COPY pom.xml .
    # COPY src ./src
    
    # # Build the application
    # RUN mvn clean package -DskipTests
    
    # -------- STAGE 2: Run --------
    #FROM eclipse-temurin:17-jdk-alpine
    FROM bellsoft/liberica-openjdk-alpine:21
    
    # Set working directory
    WORKDIR /app
    
    # Copy only the built jar from the builder stage
    #COPY --from=builder /app/target/*.jar app.jar
    COPY *.jar app.jar
    
    # Expose application port
    EXPOSE 8080
    
    # Run the application
    ENTRYPOINT ["java", "-jar", "app.jar"]
    