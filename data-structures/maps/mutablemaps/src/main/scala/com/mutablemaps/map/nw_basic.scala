import stainless.lang.*
import stainless.collection.*
import stainless.annotation.*

// The characters of our alphabet are the BigInts where 0 represents the gaps
// Sequences are defined by List of BigInts without any 0s
// Alignments are list of the pairs of matches of characters and gaps. No gap-gap pairs are allowed

/*  
We omit Nil() for convenience
 (1 :: 2 :: 3 :: 4)
 (2 :: 1 :: 2 :: 4)

 an alignment would be

 1 2 3 _ 4  (so we take all pairs of each column, namely)
 2 1 _ 2 4

 (1, 2) (2, 1) (3, 0) (0, 2), (4, 4)
*/ 


// an alignment sequence is valid if no element is (0,0)
inline def is_valid_align_seq(al: List[(BigInt, BigInt)]) : Boolean = {
    al.forall(pair => pair._1 != BigInt(0) || pair._2 != BigInt(0))
}

def is_valid_alignment(s1: List[BigInt], s2: List[BigInt], al : List[(BigInt, BigInt)]) : Boolean = {
    // original string has no gaps
    require(s1.forall(_ != BigInt(0)))
    require(s2.forall(_ != BigInt(0)))
    // ∀ (l, r), !(l == 0 /\ r == 0), demorgan
    require(is_valid_align_seq(al))
    decreases(al.length)

    (s1, s2, al) match
        // ε, ε, []
        case (Nil(), Nil(), Nil()) => true
        // at least one of s₁, s₂ != ε but alignment is empty
        case ( _, _, Nil()) => false
        // s₁ == s₂ == ε but alignment is nonempty
        case (Nil(), Nil(), z::zs) => false
        // x ...  <- we have this situation
        // _ _ _ 
        // so it must be the case that (x, 0) == z
        case (x::xs, Nil(), z::zs) => 
            if z == (x, BigInt(0)) then is_valid_alignment(xs, Nil(), zs)
            else false
        // _ _ _  <- we have this situation
        // y ... 
        // so it must be the case that (0, y) == z
        case (Nil(), y::ys, z::zs) =>
            if z == (BigInt(0), y) then is_valid_alignment(Nil(), ys, zs)
            else false
        // we have 
        // x :: xs1 :: xs2 :: ...
        // y :: ys1 :: ys2 :: ...
        // one of three cases must hold true
        // (x, 0) == z \/ (0, y) == z \/ (x, y) == z 
        case (x::xs, y::ys, z::zs) => 
            if      z == (x, BigInt(0)) then is_valid_alignment(xs, s2, zs)
            else if z == (BigInt(0), y) then is_valid_alignment(s1, ys, zs)
            else if z == (x,         y) then is_valid_alignment(xs, ys, zs)
            else                             false    
}.ensuring(res => !(res == true) || (al.length <= s1.length + s2.length))

// Defines the alignment score dependent on three fixed values for match, mismatch and gap
// pair: some alignment of two individual chars in a string
def match_score(pair : (BigInt, BigInt), ma : BigInt, mi : BigInt, g : BigInt) : BigInt = {
    // same constraint
    require(pair._1 != BigInt(0) || pair._2 != BigInt(0))
    // require(g <= mi && mi <= ma) // if you have this then you only get that the alignment is "good" for some metric of goodness
    pair match {
        case (BigInt(0), _) => g // gap
        case (_, BigInt(0)) => g // gap
        case (x, y) if x == y => ma // match
        case (x, y) if x != y => mi // mismatch
    }
}

// Sets the alignment score to the sum of the pairwise alignments
def alignment_score(al: List[(BigInt, BigInt)], ma: BigInt, mi: BigInt, g : BigInt) : BigInt = {
    require(is_valid_align_seq(al))
    // require(g <= mi && mi <= ma)
    decreases(al.length)
    // fold, basically
    al match
        case Nil() => BigInt(0)
        case x::xs => alignment_score(xs, ma, mi, g) + match_score(x, ma, mi, g)
}
// .ensuring(res => (g*al.length <= res && res <= ma*al.length))
    
// Creates a recursively generated maximal alignment and the score of that alignment in one traversal
// So far proved: Termination, Access protected, Creates a Valid Alignment
def nw_rec(s1 : List[BigInt], s2: List[BigInt], i : BigInt, j : BigInt, ma: BigInt, mi: BigInt, g: BigInt) : (BigInt, List[(BigInt, BigInt)]) = {
    // require(g <= mi && mi <= ma)
    // less formally, neither s1 nor s2 contain gaps
    require(s1.forall(x => x != BigInt(0))) // forall i : s1(i) != 0 
    require(s2.forall(x => x != BigInt(0))) // forall j : s2(j) != 0
    // "backwards" N-W traversal. this means our bottom-right corner is (0,0) and we traverse towards the top-left
    require(BigInt(0) <= i && i <= s1.length && 
            BigInt(0) <= j && j <= s2.length)
    // TODO: explain me!
    decreases(s1.length + s2.length - i - j)
    // bottom-right corner: both strings are empty
    if (i == s1.length && j == s2.length) then (BigInt(0), Nil())
    // F(s1.length, j) ∀ j
    else if (i == s1.length) then
        // move one char in the second string
        val rec_j = nw_rec(s1, s2, s1.length, j+1, ma, mi, g)
        // is a valid sub-alignment
        assert(is_valid_align_seq(rec_j._2))

        lemmaApplyForallNot0(s2, j)
        lemmaDropForallNot0(s1, i)
        lemmaDropForallNot0(s2, j)

        val ins = (rec_j._1 + match_score((BigInt(0), s2(j)), ma, mi, g), (BigInt(0), s2(j)) :: rec_j._2)
        lemmaAppendAllPairsNot0(rec_j._2, (BigInt(0), s2(j)))
        lemmaApplyDrop(s2, j)
        ins
    // F(i, s2.length) ∀ i
    else if (j == s2.length) then 
        val rec_i = nw_rec(s1, s2, i+1, s2.length, ma, mi, g)
        assert(rec_i._2.forall(x => x._1 != BigInt(0) || x._2 != BigInt(0)))
        lemmaApplyForallNot0(s1, i)
        lemmaDropForallNot0(s1, i)
        lemmaDropForallNot0(s2, j)

        val del = (rec_i._1 + match_score((s1(i), BigInt(0)), ma, mi, g), (s1(i), BigInt(0)) :: rec_i._2)
        lemmaAppendAllPairsNot0(rec_i._2, (s1(i), BigInt(0)))
        lemmaApplyDrop(s1, i)
        del
    else
        val rec_j = nw_rec(s1, s2, i, j+1, ma, mi, g)
        lemmaApplyForallNot0(s2, j)
        lemmaDropForallNot0(s2, j)
        val rec_i = nw_rec(s1, s2, i+1, j, ma, mi, g)
        lemmaApplyForallNot0(s1, i)
        lemmaDropForallNot0(s1, i)
        val rec_ij = nw_rec(s1, s2, i+1, j+1, ma, mi, g)

        val ins = (rec_j._1 + match_score((BigInt(0), s2(j)), ma, mi, g), (BigInt(0), s2(j)) :: rec_j._2)
        lemmaAppendAllPairsNot0(rec_j._2, (BigInt(0), s2(j)))

        val del = (rec_i._1 + match_score((s1(i), BigInt(0)), ma, mi, g), (s1(i), BigInt(0)) :: rec_i._2)
        lemmaAppendAllPairsNot0(rec_i._2, (s1(i), BigInt(0)))

        val mat = (rec_ij._1 + match_score((s1(i), s2(j)), ma, mi, g), (s1(i), s2(j)) :: rec_ij._2)
        lemmaAppendAllPairsNot0(rec_ij._2, (s1(i), s2(j)))

        lemmaApplyDrop(s1, i)
        lemmaApplyDrop(s2, j)
        // max fn
        if mat._1 >= ins._1 && mat._1 >= del._1 then 
            mat
        else if (del._1 >= ins._1 && del._1 >= mat._1) then 
            del
        else if (ins._1 >= del._1 && ins._1 >= mat._1) then 
            ins
        else mat
}.ensuring(res =>
    // require(g <= mi && mi <= ma)
    res._2.forall(x => x._1 != BigInt(0) || x._2 != BigInt(0)) &&
    is_valid_alignment(s1.drop(i), s2.drop(j), res._2) &&
    alignment_score(res._2, ma, mi, g) == res._1)

def lemmaGreaterScores(s1 : List[BigInt], s2 : List[BigInt], i : BigInt, j : BigInt, al : List[(BigInt, BigInt)], ma : BigInt, mi : BigInt, g : BigInt): Unit = {
    require(s1.forall(x => x != BigInt(0))) // forall i : s1(i) != 0
    require(s2.forall(x => x != BigInt(0))) // forall j : s2(j) != 0
    require(al.forall(mtc => mtc._1 != BigInt(0) || mtc._2 != BigInt(0))) // alignment correct
    require(BigInt(0) <= i && i <= s1.length && BigInt(0) <= j && j <= s2.length)
    require(lemmaDropForallNot0(s1, i) == () 
         && lemmaDropForallNot0(s2, j) == ())
    // require(g <= mi && mi <= ma)
    require(is_valid_alignment(s1.drop(i), s2.drop(j), al))
    decreases(al.length)

    al match
        case Nil() => ()
        case ((BigInt(0), y)::zs) =>
            assert(BigInt(0) == al.head._1 && al.head._2 == s2.drop(j).head && is_valid_alignment(s1.drop(i), s2.drop(j).tail, zs))
            lemmaDropTail_Plus1(s2,j)
            lemmaGreaterScores(s1, s2, i, j+1, zs, ma, mi, g)
        case ((x, BigInt(0))::zs) => 
            assert(s1.drop(i).head == al.head._1 && al.head._2 == BigInt(0) && is_valid_alignment(s1.drop(i).tail, s2.drop(j), zs))
            lemmaDropTail_Plus1(s1,i)
            lemmaGreaterScores(s1, s2, i+1, j, zs, ma, mi, g)
        case ((x, y)::zs) => 
            assert(s1.drop(i).head == al.head._1 && s2.drop(j).head == al.head._2 && is_valid_alignment(s1.drop(i).tail, s2.drop(j).tail, zs))
            lemmaDropTail_Plus1(s1,i)
            lemmaDropTail_Plus1(s2,j)
            lemmaGreaterScores(s1, s2, i+1, j+1, zs, ma, mi, g)    

}.ensuring(res => 
    nw_rec(s1, s2, i, j, ma, mi, g)._1 >= alignment_score(al, ma, mi, g) 
)



// Lemmas for lists that we could probably find somewhere in stainless for arbitrary predicates
// I tried writing them myself with arbitrary predicates but when I put them inside nw_rec with predicate _ != 0 it failed to understand it had created the same result.
def lemmaDropTail_Plus1(l: List[BigInt], k : BigInt) : Unit = {
    require(BigInt(0) <= k && k < l.length && BigInt(1) <= l.length)
    decreases(k)
    if (k == 0) then ()
    else
        lemmaDropTail_Plus1(l.tail, k-1)
}.ensuring(l.drop(k).tail == l.drop(k+1))



def lemmaApplyForallNot0(l: List[BigInt], k : BigInt) : Unit = {
    require(0 <= k && k < l.length)
    require(l.forall(x => x != BigInt(0)))
    decreases(k)
    if k == 0 then ()
    else
        lemmaApplyForallNot0(l.tail, k-1)
        assert(l.tail(k-1) == l(k))
}.ensuring(_ => l(k) != BigInt(0))

def lemmaDropForallNot0(l: List[BigInt], k : BigInt) : Unit = {
    require(0 <= k && k <= l.length)
    require(l.forall(x => x != BigInt(0)))
    decreases(k)
    if l == Nil() || k == 0 then ()
    else
        lemmaDropForallNot0(l.tail, k-1)
        assert(l.tail.drop(k-1) == l.drop(k))
}.ensuring(_ => l.drop(k).forall(x => x != BigInt(0)))

def lemmaAppendAllPairsNot0(l: List[(BigInt, BigInt)], pair: (BigInt, BigInt)) : Unit = {
    require(l.forall(x => x._1 != 0 || x._2 != 0))
    require(pair._1 != 0 || pair._2 != 0)
}.ensuring((pair::l).forall(x => x._1 != 0 || x._2 != 0))

//Lemma probably somewhere in list lemmas stainless??
def lemmaApplyDrop(l: List[BigInt], i : BigInt) : Unit = {
    require(0 <= i && i < l.length)
    decreases(i)
    if l == Nil() || i == 0 then ()
    else
        lemmaApplyDrop(l.tail, i-1)
}.ensuring((l(i) :: l.drop(i+1)) == l.drop(i))


/*
def correctness_rec(s1: List[Int], s2: List[Int], i: Int, j: Int) : Unit = {
    require(0 <= i && i <= s1.length && 0 <= j && j <= s2.length)
    decreases((s1.length-i+1) * (s2.length - j+1))
    (s1, s2) match
        case (Nil, Nil) => nw_rec(Nil,Nil,0,0) == 0
        case (h1::t1, Nil) => 
            correctness_rec(t1, Nil, i-1, j)
            assert(nw_rec(t1,Nil,i,0) == 0)
        case (Nil, h2::t2) => correctness_rec(Nil, t2, i, j-1)
        case (h1::t1, h2:+t2) => 
    }.ensuring(_ => )
*/

// We have changed this to be a predicate that given two sequences and an alignment that it is a valid alignment for those sequences
/*def all_possible_alignments(s1: List[Int], s2: List[Int]) : List[List[(Int,Int)]] = {
    require(s1.forall(_ != 0)) // forall i : s1(i) != 0
    require(s2.forall(_ != 0)) // forall j : s2(j) != 0
    decreases(s1.length + s2.length)
    (s1,s2) match
        case (Nil(), Nil()) => List(Nil())
        case (x::xs, Nil()) => 
            assert((x, 0)._1 != 0)
            all_possible_alignments(xs, Nil()).map(al => 
                lemmaForallAdd((x, 0), al, (a,b) => a != 0 || b != 0)
                (x, 0) :: al) // align the last elem of s1 with gap
        case (Nil(), y::ys) =>
            assert((0, y)._2 != 0)
            all_possible_alignments(Nil(), ys).map( al => 
                lemmaForallAdd((0, y), al, (a,b) => a != 0 || b != 0)
                (0, y) :: al) // align the last elem of s2 with gap
        case (x::xs, y::ys) =>  
            assert((x, 0)._1 != 0)
            assert((0, y)._2 != 0)
            assert((x, y)._1 != 0 && (x, y)._2 != 0)
            all_possible_alignments(xs, ys).map(al => 
                lemmaForallAdd((x, y), al, (a,b) => a != 0 || b != 0)
                (x, y) :: al ) ++ // align the last elem of s1 with last of s2
            all_possible_alignments(xs, s2).map(al =>
                lemmaForallAdd((x, 0), al, (a,b) => a != 0 || b != 0)
                (x, 0) :: al ) ++ // align the last elem of s1 with gap
            all_possible_alignments(s1, ys).map(al =>
                lemmaForallAdd((0, y), al, (a,b) => a != 0 || b != 0)
                (0, y) :: al ) // align the last elem of s2 with gap
}.ensuring(res => res.forall(al => al.forall(pair => pair._1 != 0 || pair._2 != 0)))

/*
class Sequence(s: List[BigInt]):
    require(s.forall(c => c != BigInt(0)))
class Alignment(al: List[(BigInt, BigInt)]):
    require(al.forall(mtc => mtc._1 != BigInt(0) || mtc._2 != BigInt(0)))
*/

def lemmaForallAdd(pt: (Int, Int), s: List[(Int, Int)], p : (Int, Int) => Boolean) : Unit = {
    require(s.forall(x => p(x._1, x._2)) && p(pt._1, pt._2))
}.ensuring((pt::s).forall(x => p(x._1, x._2)))
*/