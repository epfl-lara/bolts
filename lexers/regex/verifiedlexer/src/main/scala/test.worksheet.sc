import scala.collection.immutable.LazyList.cons
object Utils {
  def maxBigInt(a: BigInt, b: BigInt): BigInt = if (a >= b) a else b
  def maxLong(a: Long, b: Long): Long = if (a >= b) a else b
}

trait IDGiver[C] {
  def id(c: C): Long
  val MAX_ID = Int.MaxValue
  // @law def smallEnough(c: C): Boolean = id(c) >= 0 && id(c) <= MAX_ID
  // @law def uniqueness(c1: C, c2: C): Boolean = if (id(c1) == id(c2)) then c1 == c2 else true
}

abstract sealed class Regex[C] {}
case class ElementMatch[C](c: C) extends Regex[C]
case class Star[C](reg: Regex[C]) extends Regex[C]
case class Union[C](regOne: Regex[C], regTwo: Regex[C]) extends Regex[C]
case class Concat[C](regOne: Regex[C], regTwo: Regex[C]) extends Regex[C]

/** Regex that accepts only the empty string: represents the language {""}
  */
case class EmptyExpr[C]() extends Regex[C]

/** Regex that accepts nothing: represents the empty language
  */
case class EmptyLang[C]() extends Regex[C]

val INT_MAX_VALUE: BigInt = 2147483647
val INT_MAX_VALUE_L: Long = 2147483647L

def nullable[C](r: Regex[C]): Boolean = {
    r match {
      case EmptyExpr()        => true
      case EmptyLang()        => false
      case ElementMatch(c)    => false
      case Star(r)            => true
      case Union(rOne, rTwo)  => nullable(rOne) || nullable(rTwo)
      case Concat(rOne, rTwo) => nullable(rOne) && nullable(rTwo)
    }
  }

   def isEmptyExpr[C](r: Regex[C]): Boolean = {
    r match {
      case EmptyExpr() => true
      case _           => false
    }
  }
  def isEmptyLang[C](r: Regex[C]): Boolean = {
    r match {
      case EmptyLang() => true
      case _           => false
    }
  }
  def isElementMatch[C](r: Regex[C]): Boolean = {
    r match {
      case ElementMatch(_) => true
      case _               => false
    }
  }
  def elementMatchIsChar[C](r: Regex[C], c: C): Boolean = {
    require(isElementMatch(r))
    r match {
      case ElementMatch(cc) => c == cc
    }
  }
  def isStar[C](r: Regex[C]): Boolean = {
    r match {
      case Star(_) => true
      case _       => false
    }
  }
  def isUnion[C](r: Regex[C]): Boolean = {
    r match {
      case Union(_, _) => true
      case _           => false
    }
  }
  def unionInnersEquals[C](r: Regex[C], r1: Regex[C], r2: Regex[C]): Boolean = {
    require(isUnion(r))
    r match {
      case Union(rOne, rTwo) => r1 == rOne && r2 == rTwo
    }
  }

  def isConcat[C](r: Regex[C]): Boolean = {
    r match {
      case Concat(_, _) => true
      case _            => false
    }
  }

def validRegex[C](r: Regex[C]): Boolean = r match {
  case ElementMatch(c)    => true
  case Star(r)            => !nullable(r) && !isEmptyLang(r) && validRegex(r)
  case Union(rOne, rTwo)  => validRegex(rOne) && validRegex(rTwo)
  case Concat(rOne, rTwo) => validRegex(rOne) && validRegex(rTwo)
  case EmptyExpr()        => true
  case EmptyLang()        => true
}

def regexDepth[C](r: Regex[C]): BigInt = {
  // decreases(r)
  r match {
    case ElementMatch(c)    => BigInt(1)
    case Star(r)            => BigInt(1) + regexDepth(r)
    case Union(rOne, rTwo)  => BigInt(1) + Utils.maxBigInt(regexDepth(rOne), regexDepth(rTwo))
    case Concat(rOne, rTwo) => BigInt(1) + Utils.maxBigInt(regexDepth(rOne), regexDepth(rTwo))
    case EmptyExpr()        => BigInt(1)
    case EmptyLang()        => BigInt(1)
  }
}.ensuring(res =>
  res > 0 && (r match {
    case Union(rOne, rTwo)  => res > regexDepth(rOne) && res > regexDepth(rTwo)
    case Concat(rOne, rTwo) => res > regexDepth(rOne) && res > regexDepth(rTwo)
    case Star(r)            => res > regexDepth(r)
    case _                  => res == BigInt(1)
  })
)

def regexDepthLong[C](r: Regex[C]): Long = {
  require(regexDepth(r) < INT_MAX_VALUE)
  // decreases(r)
  r match {
    case ElementMatch(c)    => 1L
    case Star(r)            => 1L + regexDepthLong(r)
    case Union(rOne, rTwo)  => 1L + Utils.maxLong(regexDepthLong(rOne), regexDepthLong(rTwo))
    case Concat(rOne, rTwo) => 1L + Utils.maxLong(regexDepthLong(rOne), regexDepthLong(rTwo))
    case EmptyExpr()        => 1L
    case EmptyLang()        => 1L
  }
}.ensuring(res =>
  res > 0 && (r match {
    case Union(rOne, rTwo)  => res > regexDepthLong(rOne) && res > regexDepthLong(rTwo)
    case Concat(rOne, rTwo) => res > regexDepthLong(rOne) && res > regexDepthLong(rTwo)
    case Star(r)            => res > regexDepthLong(r)
    case _                  => res == 1L
  })
)

def getUniqueId[C](r: Regex[C])(implicit idC: IDGiver[C]): Long = {
  require(regexDepth(r) <= 30)
  // decreases(r)
  r match {
    case ElementMatch(c) =>
      // assert(idC.smallEnough(c))
      2L * idC.id(c)
    case Star(r)            => 3L + getUniqueId(r)
    case Union(rOne, rTwo)  => 5L + (getUniqueId(rOne) + getUniqueId(rTwo))
    case Concat(rOne, rTwo) => 7L + (getUniqueId(rOne) + getUniqueId(rTwo))
    case EmptyExpr()        => 11L
    case EmptyLang()        => 13L
  }
}.ensuring(res => res >= 0)

object CharIDGiver extends IDGiver[Char] {
  def id(c: Char): Long = c.toLong
}

def constructRegex(l: List[Char]): Regex[Char] = {
  l match {
    case Nil          => EmptyExpr()
    case head :: Nil  => ElementMatch(head)
    case head :: tail => Concat(ElementMatch(head), constructRegex(tail))
  }
}

getUniqueId(Star(ElementMatch('a')))(CharIDGiver)
// Regexc representing the regex (abcd + gejho)*
val r: Regex[Char] = Concat(Star(Union(Concat(Concat(Concat(ElementMatch('a'), ElementMatch('b')), ElementMatch('c')), ElementMatch('d')), Concat(Concat(ElementMatch('g'), ElementMatch('e')), Concat(ElementMatch('j'), ElementMatch('h'))))), ElementMatch('o'))
getUniqueId(r)(CharIDGiver)
regexDepth(r)

val r21 = constructRegex(List('a', 'b', 'c', 'd', 'g', 'e', 'j', 'h', 'o'))
val r22 = constructRegex(List('y', 'v', 'n', 'b', 's', 'l', 'u', 't', 'i', 'o', 'n'))
val r23 = constructRegex(List('a', 'b', 'c', 'd', 'g', 'e', 'j', 'h', 'o', 'y', 'v', 'n', 'b', 's', 'l', 'u', 't', 'i', 'o', 'n'))
val r2 = Star(Concat(r23, Star(Union(Union(r21, r22), r23))))
getUniqueId(r2)(CharIDGiver)
regexDepth(r2)