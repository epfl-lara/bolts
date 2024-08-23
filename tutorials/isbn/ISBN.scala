import stainless._
import stainless.lang._
import stainless.collection._
import stainless.annotation._

object ISBN {
  case class UnvalidatedISBN10(domain: List[BigInt], editor: List[BigInt],
                               publication: List[BigInt], checksum: BigInt)

  case class ValidatedISBN10(isbn: UnvalidatedISBN10):
    require(isISBN10Valid(isbn))

  def validateISBN10Gallimard(isbn: UnvalidatedISBN10): Option[ValidatedISBN10] =
    // Change isISBN10Valid to isbn10RangeValid to get a counterexample
    if !isISBN10Valid(isbn) || isbn.domain != List[BigInt](2)
        || (isbn.editor != List[BigInt](7, 4, 2, 4) && isbn.editor != List[BigInt](0, 7))
      then None()
    else Some(ValidatedISBN10(isbn))

  def isbn10RangeValid(isbn: UnvalidatedISBN10): Boolean =
    isbn.domain.size + isbn.editor.size + isbn.publication.size == 9 &&
    0 <= isbn.checksum && isbn.checksum <= 10 &&
    isbn.domain.forall(x => 0 <= x && x <= 9) &&
    isbn.editor.forall(x => 0 <= x && x <= 9) &&
    isbn.publication.forall(x => 0 <= x && x <= 9)

  def weightedSum(xs: List[BigInt], i: BigInt, acc: BigInt): BigInt =
    xs match
      case Nil() => acc
      case Cons(x, xs) => weightedSum(xs, i - 1, acc + x * i)

  def isISBN10Valid(isbn: UnvalidatedISBN10): Boolean =
    isbn10RangeValid(isbn) && errCode(isbn) == isbn.checksum

  def errCode(isbn: UnvalidatedISBN10): BigInt =
    val domSum = weightedSum(isbn.domain, 10, 0)
    val edSum = weightedSum(isbn.editor, 10 - isbn.domain.size, 0)
    val pubSum = weightedSum(isbn.publication, 10 - isbn.domain.size - isbn.editor.size, 0)
    val r1: BigInt = (domSum + edSum + pubSum) % 11
    if (r1 == 0) 0 else 11 - r1

  def errCodeAndValidity(isbn: ValidatedISBN10): Boolean = {
    assert(isISBN10Valid(isbn.isbn))
    errCode(isbn.isbn) == isbn.isbn.checksum
  }.holds

  @extern
  def main(args: Array[String]): Unit =
    val isbn = UnvalidatedISBN10(List(2), List(7,4,2,4), List(5,1,0,8), 10) // 2-7424-5108-10
    println(errCode(isbn))
}