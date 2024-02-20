# Используем FROM openjdk:17-jdk-slim как базовый образ
FROM openjdk:17-jdk-slim

# Установка рабочей директории в /app
WORKDIR /app

# Копируем собранный jar-файл в контейнер
COPY target/spring-boot_exception-0.0.1-SNAPSHOT.jar ./app.jar

# Открываем порт, на котором работает приложение
EXPOSE 8080

# Команда для запуска приложения
CMD ["java", "-jar", "app.jar"]