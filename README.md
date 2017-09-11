# pipreqs-in-a-container

If you have a project without Python requirements, use this image to create a `requirements.txt` file.

## Usage

Mount your Python project at `/project`, and your project's requirements will be figured out and displayed.

## Example

If you want to add a `requirements.txt` file to a project:

```
docker run --rm -v /YOUR/LOCAL/PROJECT:/project azlyth/docker-pipreqs > requirements.txt
```
