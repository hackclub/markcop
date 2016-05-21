# Markcop [![Circle CI](https://circleci.com/gh/hackclub/markcop.svg?style=svg)](https://circleci.com/gh/hackclub/markcop)

Markcop is our friendly Markdown enforcer.

## Contributing

To make your first contribution to a Hack Club repo, please read over
[our contribution guidelines](https://github.com/hackclub/hackclub/blob/master/CONTRIBUTING.md).

The following is a guide for contributing a new markdown test to this repo.

1. Add a function that takes the file name as the its first argument, and the
   file contents as the second

   ```bash
   # Markdown checking functions

   function my_check {
     file_name="$1"
     my_check_errors_in_file=false
     for line in $(echo "$2"); do
       my_check_errors_in_file=true
       # Failed checks should print red 'x's
       printf "${RED}x${NC}"
       errors="${errors}\n${line} fails my_check!"
     done

     if [ $my_check_errors_in_file = true ]; then
       return 1
     fi

     # Successful checks should print green dots
     printf "${GREEN}.${NC}"
     return 0
   }
   ```

2. Add the function name to the `CHECKS` array

   ```
   CHECKS=(my_check
           trailing_whitespace
           malformed_header
           header_missing_newline
           long_line
           missing_link
           eof_newline)
   ```

## Running It

Copy and paste the following into your terminal to run Markcop on all of the Markdown in your current git repo (must have Docker installed):

    docker run -v $(pwd):/app hackclub/markcop

If you'd like to only run Markcop on specific files, you can pass in the files to check as arguments. Example:

    docker run -v $(pwd):/app hackclub/markcop README.md CONTRIBUTING.md

## Development

Run the following to run Markcop in its Docker container in development (make
sure to run this from the root of the repo):

    docker run -v $(pwd):/app -v $(pwd):/markcop hackclub/markcop

## License

See [LICENSE](LICENSE).
