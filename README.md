# Package updating module

**Manages package updates and removals

## Classes

* packageupdate::latest
* packageupdate::absent

### packageupdate::latest

Updates the packages listed as parameters to the latest version

### packageupdate::absent

Removes the packages listed as parameters

## Usage:

  class {'::packageupdate::latest' :
    packagelist => ['package1','package2',...],
  }

  class {'::packageupdate::absent' :
    packagelist => ['package1','package2',...],
  }

The class sends notifications if a listed package is defined elsewhere.
The package definitions listed in the notifications are not managed by the
two classes.


