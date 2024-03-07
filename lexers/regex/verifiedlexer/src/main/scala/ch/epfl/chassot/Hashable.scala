/** Author: Samuel Chassot
*/
package ch.epfl.chassot

import stainless.annotation._

trait Hashable[K] {
  @pure
  def hash(k: K): Long
}