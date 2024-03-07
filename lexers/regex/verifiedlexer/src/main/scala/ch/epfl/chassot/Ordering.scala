/** Author: Samuel Chassot
*/

package ch.epfl.chassot

import stainless.annotation._


trait Ordering[T]:
  def compare(x: T, y: T): Int

  @law def inverse(x: T, y: T): Boolean =
    sign(compare(x, y)) == -sign(compare(y, x))

  @law def transitive(x: T, y: T, z: T): Boolean =
    if (compare(x, y) > 0 && compare(y, z) > 0) then compare(x, z) > 0 else if (compare(x, y) < 0 && compare(y, z) < 0) then compare(x, z) < 0 else true

  @law def consistent(x: T, y: T, z: T): Boolean =
    if compare(x, y) == 0 then sign(compare(x, z)) == sign(compare(y, z)) else true

  @law def equalsMeansEquals(x: T, y: T): Boolean =
    (compare(x, y) == 0) == (x == y)

  final def sign(x: Int): BigInt =
    if x < 0 then -1 else if x > 0 then 1 else 0

end Ordering