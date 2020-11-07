<#
MIT License

Copyright (c) 2020 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
#>

$car = @{'wheels' = 'null'; 'doors' = 'null'; 'cylinders' = 'null'}
function addWheels {
  param(
    [hashtable] $car,
    [int] $wheelsIn
  )
  process {
    $car.wheels += $wheelsIn
  }
}
function addDoors {
  param(
    [hashtable] $car,
    [int] $doorsIn
  )
  process {
    $car.doors += $doorsIn
  }
}
function addCylinders {
  param(
    [hashtable] $car,
    [int] $cylindersIn
  )
  process {
    $car.cylinders += $cylindersIn
  }
}
function deleteWheels {
  param(
    [hashtable] $car,
    [int] $wheelsIn
  )
  process {
    $car.wheels -= $wheelsIn
  }
}
function deleteDoors {
  param(
    [hashtable] $car,
    [int] $doorsIn
  )
  process {
    $car.doors -= $doorsIn
  }
}
function deleteCylinders {
  param(
    [hashtable] $car,
    [int] $cylindersIn
  )
  process {
    $car.cylinders -= $cylindersIn
  }
}


echo "Creating car."
$subaru = $car
$subaru = $subaru.keys | foreach{$r=@{}}{$r[$_] = 4}{$r}
echo "Wheel check:  $($subaru.wheels)"
echo "Door check:  $($subaru.doors)"
echo "Cylinder check:  $($subaru.cylinders)"
echo ""
echo "Adding wheel directly to car object."
$subaru.wheels = 5
echo "Wheel check:  $($subaru.wheels)"
echo "Door check:  $($subaru.doors)"
echo "Cylinder check:  $($subaru.cylinders)"
echo ""
echo "Removing wheel using class object."
deleteWheels $subaru 1
echo "Wheel check:  $($subaru.wheels)"
echo "Door check:  $($subaru.doors)"
echo "Cylinder check:  $($subaru.cylinders)"
echo ""