FROM wiremock/wiremock:latest
COPY wiremock/mappings /home/wiremock/mappings
COPY wiremock/responses /home/wiremock/__files

EXPOSE 8080
CMD ["--port", "8080", "--verbose", "--global-response-templating"]
