import stainless.lang._
import stainless.annotation._

object BuggyNewMaskComputation {

  val MAX_MASK: Int = 0x3fffffff

  def validMask(mask: Int): Boolean = {
    (mask == 0x00000007 ||
      mask == 0x0000000f ||
      mask == 0x0000001f ||
      mask == 0x0000003f ||
      mask == 0x0000007f ||
      mask == 0x000000ff ||
      mask == 0x000001ff ||
      mask == 0x000003ff ||
      mask == 0x000007ff ||
      mask == 0x00000fff ||
      mask == 0x00001fff ||
      mask == 0x00003fff ||
      mask == 0x00007fff ||
      mask == 0x0000ffff ||
      mask == 0x0001ffff ||
      mask == 0x0003ffff ||
      mask == 0x0007ffff ||
      mask == 0x000fffff ||
      mask == 0x001fffff ||
      mask == 0x003fffff ||
      mask == 0x007fffff ||
      mask == 0x00ffffff ||
      mask == 0x01ffffff ||
      mask == 0x03ffffff ||
      mask == 0x07ffffff ||
      mask == 0x0fffffff ||
      mask == 0x1fffffff ||
      mask == 0x3fffffff) && mask <= MAX_MASK // MAX is MAX_MASK

  }

  @pure
  def fixedComputeNewMask(oldMask: Int, _vacant: Int, _size: Int): Int = {
    require(validMask(oldMask))
    require(_size >= 0 && _size <= oldMask + 1)
    require(_vacant >= 0)
    var m = oldMask
    if (2 * (_size + _vacant) >= oldMask && !(5 * _vacant > oldMask)) {
      m = ((m << 1) + 1) & MAX_MASK
    }
    while (m > 8 && 8 * _size < m && ((m >> 1) & MAX_MASK) >= _size) {
      decreases(m)
      m = m >>> 1
    }
    m
  } ensuring (res => validMask(res) && _size <= res + 1)

  val IndexMask: Int = MAX_MASK

  def originalNewMask(mask: Int, _size: Int, _vacant: Int) = {
    require(validMask(mask))
    require(_size >= 0 && _size <= mask + 1)
    require(_vacant >= 0)
    var m = mask
    if (2 * (_size + _vacant) >= mask && !(5 * _vacant > mask)) m = ((m << 1) + 1) & IndexMask
    while (m > 8 && 8 * _size < m) {
      decreases(m)
      m = m >>> 1
    }
    m
  } ensuring (res => validMask(res) && _size <= res + 1) // Stainless finds a counterexample
  // [Warning ] Found counter-example:
  // [Warning ]   _vacant: Int -> 10256777
  // [Warning ]   mask: Int    -> 1073741823 
  // [Warning ]   _size: Int   -> 603979777
}
