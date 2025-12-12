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

    case object MemoHashable extends Hashable[MemoKey] {
        def hash(x: MemoKey): Long = {
            1L
        }
    }

    def emptyMemo: HashMap[MemoKey, (BigInt, List[(BigInt, BigInt)])] =
        MutableHashMap.getEmptyHashMap(
            (_: MemoKey) => (BigInt(0), Nil[(BigInt, BigInt)]()),
            MemoHashable
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

    // def lemmaMemoValidUpdate(
    //     s1: List[BigInt],
    //     s2: List[BigInt],
    //     ma: BigInt,
    //     mi: BigInt,
    //     g: BigInt,
    //     memo: HashMap[MemoKey, (BigInt, List[(BigInt, BigInt)])],
    //     i: BigInt,
    //     j: BigInt,
    //     res: (BigInt, List[(BigInt, BigInt)])
    // ): Unit = {
    //     // require(g <= mi && mi <= ma)
    //     require(s1.forall(_ != BigInt(0)))
    //     require(s2.forall(_ != BigInt(0)))
    //     require(memoIsValid(s1, s2, ma, mi, g, memo))
    //     require(BigInt(0) <= i && i <= s1.length && BigInt(0) <= j && j <= s2.length)
    //     require(res == nw_rec(s1, s2, i, j, ma, mi, g))

    //     ghostExpr(MutableHashMap.lemmaUpdatePreservesForallPairs(
    //     memo,
    //     MemoKey(i, j),
    //     res, 
    //     p => validKeyValuePair(s1, s2, ma, mi, g, p)
    //     ))

    //     val _ = memo.update(MemoKey(i, j), res)
    //     ()
    // }.ensuring(_ =>
    //     memoIsValid(s1, s2, ma, mi, g, memo)
    // )

    // def nwMemoized(
    //     s1: List[BigInt],
    //     s2: List[BigInt],
    //     i: BigInt,
    //     j: BigInt,
    //     ma: BigInt,
    //     mi: BigInt,
    //     g: BigInt,
    //     memo: HashMap[MemoKey, (BigInt, List[(BigInt, BigInt)])]
    // ): (BigInt, List[(BigInt, BigInt)]) = {
    //     // require(g <= mi && mi <= ma)
    //     require(s1.forall(x => x != BigInt(0)))
    //     require(s2.forall(x => x != BigInt(0)))
    //     require(BigInt(0) <= i && i <= s1.length && BigInt(0) <= j && j <= s2.length)
    //     require(memoIsValid(s1, s2, ma, mi, g, memo))
    //     decreases(s1.length + s2.length - i - j)

    //     val key = MemoKey(i, j)
    //     if (memo.contains(key)) then
    //         ghostExpr(lemmaMemoValidContains(s1, s2, ma, mi, g, memo, i, j))
    //         val (score, alignment) = memo(key)
    //         (score, alignment)
    //     else if (i == s1.length && j == s2.length) then
    //         val result = (BigInt(0), Nil[(BigInt, BigInt)]())
    //         lemmaMemoValidUpdate(s1, s2, ma, mi, g, memo, i, j, result)
    //         (result._1, result._2)
    //     else if (i == s1.length) then
    //         val (recJScore, recJAl) = nwMemoized(s1, s2, s1.length, j+1, ma, mi, g, memo)
    //         lemmaApplyForallNot0(s2, j)
    //         lemmaDropForallNot0(s1, i)
    //         lemmaDropForallNot0(s2, j)

    //         val ins = (recJScore + match_score((BigInt(0), s2(j)), ma, mi, g), (BigInt(0), s2(j)) :: recJAl)
    //         lemmaApplyDrop(s2, j)
    //         lemmaMemoValidUpdate(s1, s2, ma, mi, g, memo, i, j, ins)
    //         (ins._1, ins._2)
    //     else if (j == s2.length) then
    //         val (recIScore, recIAl) = nwMemoized(s1, s2, i+1, s2.length, ma, mi, g, memo)
    //         lemmaApplyForallNot0(s1, i)
    //         lemmaDropForallNot0(s1, i)
    //         lemmaDropForallNot0(s2, j)

    //         val del = (recIScore + match_score((s1(i), BigInt(0)), ma, mi, g), (s1(i), BigInt(0)) :: recIAl)
    //         lemmaApplyDrop(s1, i)
    //         lemmaMemoValidUpdate(s1, s2, ma, mi, g, memo, i, j, del)
    //         (del._1, del._2)
    //     else
    //         val (recJScore, recJAl) = nwMemoized(s1, s2, i, j+1, ma, mi, g, memo)
    //         lemmaApplyForallNot0(s2, j)
    //         lemmaDropForallNot0(s2, j)
    //         val (recIScore, recIAl) = nwMemoized(s1, s2, i+1, j, ma, mi, g, memo)
    //         lemmaApplyForallNot0(s1, i)
    //         lemmaDropForallNot0(s1, i)
    //         val (recIJScore, recIJAl) = nwMemoized(s1, s2, i+1, j+1, ma, mi, g, memo)

    //         val ins = (recJScore + match_score((BigInt(0), s2(j)), ma, mi, g), (BigInt(0), s2(j)) :: recJAl)

    //         val del = (recIScore + match_score((s1(i), BigInt(0)), ma, mi, g), (s1(i), BigInt(0)) :: recIAl)

    //         val mat = (recIJScore + match_score((s1(i), s2(j)), ma, mi, g), (s1(i), s2(j)) :: recIJAl)

    //         lemmaApplyDrop(s1, i)
    //         lemmaApplyDrop(s2, j)
    //         val result = if mat._1 >= ins._1 && mat._1 >= del._1 then
    //             mat
    //         else if (del._1 >= ins._1 && del._1 >= mat._1) then
    //             del
    //         else if (ins._1 >= del._1 && ins._1 >= mat._1) then
    //             ins
    //         else mat
    //         lemmaMemoValidUpdate(s1, s2, ma, mi, g, memo, i, j, result)
    //         (result._1, result._2)
    // }.ensuring(res =>
    //     memo.contains(MemoKey(i, j)) &&
    //     memo(MemoKey(i, j)) == (res._1, res._2) &&
    //     memoIsValid(s1, s2, ma, mi, g, memo) &&
    //     res._1 == nw_rec(s1, s2, i, j, ma, mi, g)._1 &&
    //     res._2 == nw_rec(s1, s2, i, j, ma, mi, g)._2
    // )

    // def nwMemoizedWrapper(
    //     s1: List[BigInt],
    //     s2: List[BigInt],
    //     ma: BigInt,
    //     mi: BigInt,
    //     g: BigInt
    // ): (BigInt, List[(BigInt, BigInt)]) = {
    //     // require(g <= mi && mi <= ma)
    //     require(s1.forall(x => x != BigInt(0)))
    //     require(s2.forall(x => x != BigInt(0)))
    //     val emptyMemo = MemoHashable.emptyMemo
    //     assert(memoIsValid(s1, s2, ma, mi, g, emptyMemo))
    //     val (score, alignment) = nwMemoized(s1, s2, BigInt(0), BigInt(0), ma, mi, g, emptyMemo)
    //     (score, alignment)
    // }.ensuring(res =>
    //     res._1 == nw_rec(s1, s2, BigInt(0), BigInt(0), ma, mi, g)._1 &&
    //     res._2 == nw_rec(s1, s2, BigInt(0), BigInt(0), ma, mi, g)._2
    // )

    // def lemmaEquivEmpty(
    //     ma: BigInt,
    //     mi: BigInt,
    //     g: BigInt
    // ): Unit = {
    //     // require(g <= mi && mi <= ma)
    //     val emptyMemo = MemoHashable.emptyMemo
    //     assert(memoIsValid(Nil(), Nil(), ma, mi, g, emptyMemo))
    // }.ensuring(_ =>
    //     nwMemoized(Nil(), Nil(), BigInt(0), BigInt(0), ma, mi, g, MemoHashable.emptyMemo)._1 == nw_rec(Nil(), Nil(), BigInt(0), BigInt(0), ma, mi, g)._1 &&
    //     nwMemoized(Nil(), Nil(), BigInt(0), BigInt(0), ma, mi, g, MemoHashable.emptyMemo)._2 == nw_rec(Nil(), Nil(), BigInt(0), BigInt(0), ma, mi, g)._2
    // )

    // def lemmaEquivSingleS1(
    //     x: BigInt,
    //     ma: BigInt,
    //     mi: BigInt,
    //     g: BigInt
    // ): Unit = {
    //     // require(g <= mi && mi <= ma)
    //     require(x != BigInt(0))
    //     val s1 = List(x)
    //     val s2: List[BigInt] = Nil()
    //     val emptyMemo = MemoHashable.emptyMemo
    //     assert(memoIsValid(s1, s2, ma, mi, g, emptyMemo))
    // }.ensuring(_ =>
    //     nwMemoized(List(x), Nil(), BigInt(0), BigInt(0), ma, mi, g, MemoHashable.emptyMemo)._1 == nw_rec(List(x), Nil(), BigInt(0), BigInt(0), ma, mi, g)._1 &&
    //     nwMemoized(List(x), Nil(), BigInt(0), BigInt(0), ma, mi, g, MemoHashable.emptyMemo)._2 == nw_rec(List(x), Nil(), BigInt(0), BigInt(0), ma, mi, g)._2
    // )

    // def lemmaEquivSingleS2(
    //     y: BigInt,
    //     ma: BigInt,
    //     mi: BigInt,
    //     g: BigInt
    // ): Unit = {
    //     // require(g <= mi && mi <= ma)
    //     require(y != BigInt(0))
    //     val emptyMemo = MemoHashable.emptyMemo
    //     assert(memoIsValid(Nil(), List(y), ma, mi, g, emptyMemo))
    // }.ensuring(_ =>
    //     nwMemoized(Nil(), List(y), BigInt(0), BigInt(0), ma, mi, g, MemoHashable.emptyMemo)._1 == nw_rec(Nil(), List(y), BigInt(0), BigInt(0), ma, mi, g)._1 &&
    //     nwMemoized(Nil(), List(y), BigInt(0), BigInt(0), ma, mi, g, MemoHashable.emptyMemo)._2 == nw_rec(Nil(), List(y), BigInt(0), BigInt(0), ma, mi, g)._2
    // )
}