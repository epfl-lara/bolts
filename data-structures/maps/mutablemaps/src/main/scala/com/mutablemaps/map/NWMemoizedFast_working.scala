import stainless.lang.*
import stainless.collection.*
import stainless.annotation.*
import scala.math.max

import com.mutablemaps.map.MutableHashMap._
import com.mutablemaps.map.MutableHashMap
import com.mutablemaps.map.Hashable
import com.mutablemaps.map.TupleListOpsGenK

import stainless.lang.StaticChecks._
import stainless.lang.{ghost => ghostExpr, _}

object NWMemoizedFast {
    // Wrapper type
    case class MemoKey(i: BigInt, j: BigInt)

    def emptyMemo(hashF: Hashable[MemoKey]): HashMap[MemoKey, (BigInt, List[(BigInt, BigInt)])] =
        MutableHashMap.getEmptyHashMap(
            (_: MemoKey) => (BigInt(0), Nil[(BigInt, BigInt)]()),
            hashF
        )

    def validKeyValuePair(s1: List[BigInt], s2: List[BigInt], ma: BigInt, mi: BigInt, g: BigInt, p: (MemoKey, (BigInt, List[(BigInt, BigInt)]))): Boolean = {
        val i = p._1.i
        val j = p._1.j
        BigInt(0) <= i && i <= s1.length &&
        BigInt(0) <= j && j <= s2.length &&
        p._2 == nw_rec(s1, s2, i, j, ma, mi, g)
    }

    @ghost
    def memoIsValid(
        s1: List[BigInt],
        s2: List[BigInt],
        ma: BigInt,
        mi: BigInt,
        g: BigInt,
        memo: HashMap[MemoKey, (BigInt, List[(BigInt, BigInt)])]
    ): Boolean = {
        // // require(g <= mi && mi <= ma)
        require(s1.forall(_ != BigInt(0)))
        require(s2.forall(_ != BigInt(0)))
        memo.valid &&
        TupleListOpsGenK.invariantList(memo.map.toList) &&
        memo.map.forall(validKeyValuePair(s1, s2, ma, mi, g, _))
    }

    @ghost
    def lemmaMemoValidContains(
        s1: List[BigInt],
        s2: List[BigInt],
        ma: BigInt,
        mi: BigInt,
        g: BigInt,
        memo: HashMap[MemoKey, (BigInt, List[(BigInt, BigInt)])],
        i: BigInt,
        j: BigInt
    ): Unit = {
        // // require(g <= mi && mi <= ma)
        require(s1.forall(_ != BigInt(0)))
        require(s2.forall(_ != BigInt(0)))
        require(memoIsValid(s1, s2, ma, mi, g, memo))
        require(memo.contains(MemoKey(i, j)))
        val key = MemoKey(i, j)
        MutableHashMap.lemmaForallPairsThenForLookup[MemoKey, (BigInt, List[(BigInt, BigInt)])](
        memo,
        key,
        p => validKeyValuePair(s1, s2, ma, mi, g, p)
        )
    }.ensuring(_ =>
        memo(MemoKey(i, j)) == nw_rec(s1, s2, i, j, ma, mi, g) &&
        BigInt(0) <= i && i <= s1.length &&
        BigInt(0) <= j && j <= s2.length
    )
}