.PHONY: build run clean

# Define the image name and tag
IMAGE_NAME=rocinante0v0/data550_report:latest

# Build the Docker image
build:
	docker build -t $$(IMAGE_NAME) .

# Run the Docker container and mount the local Report folder
run:
	docker run --rm -v $$(PWD)/Report:/project/Report $$(IMAGE_NAME)

# Clean generated reports
clean:
	rm -f Report/*.html

