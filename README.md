# XSA_DELETE_SERVICES

Assumptions:
    Both programs assume the xs CLI can be accessed with "xs"
    **Both programs assume that the user is ALREADY signed in to the target space using XS CLI. It makes use of the existing session instead of having to handle login**

Running these programs:
  To delete services, run the program "delete_services.sh"
  This can be run using the following "dash delete_services.sh"
          Running like this will delete all hana services that follow the naming format of the temporary services
          Don't worry, you will be prompted with a (y/n) before the services are actually deleted
  To delete the services of a specific developer run to program "delete_services.sh" with option -d specified like so
          "dash delete_services.sh -d <dev username>

options:
-d : this option can be used to search (or delete) a specific developer's services

