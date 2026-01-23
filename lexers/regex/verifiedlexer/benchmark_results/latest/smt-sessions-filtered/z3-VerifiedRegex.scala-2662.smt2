; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143578 () Bool)

(assert start!143578)

(declare-fun b!1546817 () Bool)

(declare-fun b_free!40675 () Bool)

(declare-fun b_next!41379 () Bool)

(assert (=> b!1546817 (= b_free!40675 (not b_next!41379))))

(declare-fun tp!450608 () Bool)

(declare-fun b_and!107765 () Bool)

(assert (=> b!1546817 (= tp!450608 b_and!107765)))

(declare-fun b!1546837 () Bool)

(declare-fun b_free!40677 () Bool)

(declare-fun b_next!41381 () Bool)

(assert (=> b!1546837 (= b_free!40677 (not b_next!41381))))

(declare-fun tp!450626 () Bool)

(declare-fun b_and!107767 () Bool)

(assert (=> b!1546837 (= tp!450626 b_and!107767)))

(declare-fun b!1546807 () Bool)

(declare-fun b_free!40679 () Bool)

(declare-fun b_next!41383 () Bool)

(assert (=> b!1546807 (= b_free!40679 (not b_next!41383))))

(declare-fun tp!450607 () Bool)

(declare-fun b_and!107769 () Bool)

(assert (=> b!1546807 (= tp!450607 b_and!107769)))

(declare-fun b!1546839 () Bool)

(declare-fun b_free!40681 () Bool)

(declare-fun b_next!41385 () Bool)

(assert (=> b!1546839 (= b_free!40681 (not b_next!41385))))

(declare-fun tp!450627 () Bool)

(declare-fun b_and!107771 () Bool)

(assert (=> b!1546839 (= tp!450627 b_and!107771)))

(declare-fun b!1546810 () Bool)

(declare-fun b_free!40683 () Bool)

(declare-fun b_next!41387 () Bool)

(assert (=> b!1546810 (= b_free!40683 (not b_next!41387))))

(declare-fun tp!450628 () Bool)

(declare-fun b_and!107773 () Bool)

(assert (=> b!1546810 (= tp!450628 b_and!107773)))

(declare-fun b_free!40685 () Bool)

(declare-fun b_next!41389 () Bool)

(assert (=> b!1546810 (= b_free!40685 (not b_next!41389))))

(declare-fun tp!450629 () Bool)

(declare-fun b_and!107775 () Bool)

(assert (=> b!1546810 (= tp!450629 b_and!107775)))

(declare-fun b!1546843 () Bool)

(declare-fun b_free!40687 () Bool)

(declare-fun b_next!41391 () Bool)

(assert (=> b!1546843 (= b_free!40687 (not b_next!41391))))

(declare-fun tp!450615 () Bool)

(declare-fun b_and!107777 () Bool)

(assert (=> b!1546843 (= tp!450615 b_and!107777)))

(declare-fun b!1546815 () Bool)

(declare-fun b_free!40689 () Bool)

(declare-fun b_next!41393 () Bool)

(assert (=> b!1546815 (= b_free!40689 (not b_next!41393))))

(declare-fun tp!450604 () Bool)

(declare-fun b_and!107779 () Bool)

(assert (=> b!1546815 (= tp!450604 b_and!107779)))

(declare-fun b!1546851 () Bool)

(declare-fun e!991003 () Bool)

(assert (=> b!1546851 (= e!991003 true)))

(declare-fun b!1546850 () Bool)

(declare-fun e!991002 () Bool)

(assert (=> b!1546850 (= e!991002 e!991003)))

(declare-fun b!1546809 () Bool)

(assert (=> b!1546809 e!991002))

(assert (= b!1546850 b!1546851))

(assert (= b!1546809 b!1546850))

(declare-fun order!9657 () Int)

(declare-fun order!9655 () Int)

(declare-datatypes ((List!16651 0))(
  ( (Nil!16583) (Cons!16583 (h!21984 (_ BitVec 16)) (t!141054 List!16651)) )
))
(declare-datatypes ((TokenValue!2997 0))(
  ( (FloatLiteralValue!5994 (text!21424 List!16651)) (TokenValueExt!2996 (__x!10781 Int)) (Broken!14985 (value!92479 List!16651)) (Object!3064) (End!2997) (Def!2997) (Underscore!2997) (Match!2997) (Else!2997) (Error!2997) (Case!2997) (If!2997) (Extends!2997) (Abstract!2997) (Class!2997) (Val!2997) (DelimiterValue!5994 (del!3057 List!16651)) (KeywordValue!3003 (value!92480 List!16651)) (CommentValue!5994 (value!92481 List!16651)) (WhitespaceValue!5994 (value!92482 List!16651)) (IndentationValue!2997 (value!92483 List!16651)) (String!19272) (Int32!2997) (Broken!14986 (value!92484 List!16651)) (Boolean!2998) (Unit!25938) (OperatorValue!3000 (op!3057 List!16651)) (IdentifierValue!5994 (value!92485 List!16651)) (IdentifierValue!5995 (value!92486 List!16651)) (WhitespaceValue!5995 (value!92487 List!16651)) (True!5994) (False!5994) (Broken!14987 (value!92488 List!16651)) (Broken!14988 (value!92489 List!16651)) (True!5995) (RightBrace!2997) (RightBracket!2997) (Colon!2997) (Null!2997) (Comma!2997) (LeftBracket!2997) (False!5995) (LeftBrace!2997) (ImaginaryLiteralValue!2997 (text!21425 List!16651)) (StringLiteralValue!8991 (value!92490 List!16651)) (EOFValue!2997 (value!92491 List!16651)) (IdentValue!2997 (value!92492 List!16651)) (DelimiterValue!5995 (value!92493 List!16651)) (DedentValue!2997 (value!92494 List!16651)) (NewLineValue!2997 (value!92495 List!16651)) (IntegerValue!8991 (value!92496 (_ BitVec 32)) (text!21426 List!16651)) (IntegerValue!8992 (value!92497 Int) (text!21427 List!16651)) (Times!2997) (Or!2997) (Equal!2997) (Minus!2997) (Broken!14989 (value!92498 List!16651)) (And!2997) (Div!2997) (LessEqual!2997) (Mod!2997) (Concat!7232) (Not!2997) (Plus!2997) (SpaceValue!2997 (value!92499 List!16651)) (IntegerValue!8993 (value!92500 Int) (text!21428 List!16651)) (StringLiteralValue!8992 (text!21429 List!16651)) (FloatLiteralValue!5995 (text!21430 List!16651)) (BytesLiteralValue!2997 (value!92501 List!16651)) (CommentValue!5995 (value!92502 List!16651)) (StringLiteralValue!8993 (value!92503 List!16651)) (ErrorTokenValue!2997 (msg!3058 List!16651)) )
))
(declare-datatypes ((C!8648 0))(
  ( (C!8649 (val!4896 Int)) )
))
(declare-datatypes ((List!16652 0))(
  ( (Nil!16584) (Cons!16584 (h!21985 C!8648) (t!141055 List!16652)) )
))
(declare-datatypes ((IArray!11055 0))(
  ( (IArray!11056 (innerList!5585 List!16652)) )
))
(declare-datatypes ((Conc!5525 0))(
  ( (Node!5525 (left!13531 Conc!5525) (right!13861 Conc!5525) (csize!11280 Int) (cheight!5736 Int)) (Leaf!8188 (xs!8325 IArray!11055) (csize!11281 Int)) (Empty!5525) )
))
(declare-datatypes ((BalanceConc!10992 0))(
  ( (BalanceConc!10993 (c!252133 Conc!5525)) )
))
(declare-datatypes ((Regex!4235 0))(
  ( (ElementMatch!4235 (c!252134 C!8648)) (Concat!7233 (regOne!8982 Regex!4235) (regTwo!8982 Regex!4235)) (EmptyExpr!4235) (Star!4235 (reg!4564 Regex!4235)) (EmptyLang!4235) (Union!4235 (regOne!8983 Regex!4235) (regTwo!8983 Regex!4235)) )
))
(declare-datatypes ((String!19273 0))(
  ( (String!19274 (value!92504 String)) )
))
(declare-datatypes ((TokenValueInjection!5654 0))(
  ( (TokenValueInjection!5655 (toValue!4270 Int) (toChars!4129 Int)) )
))
(declare-datatypes ((Rule!5614 0))(
  ( (Rule!5615 (regex!2907 Regex!4235) (tag!3171 String!19273) (isSeparator!2907 Bool) (transformation!2907 TokenValueInjection!5654)) )
))
(declare-fun rule!240 () Rule!5614)

(declare-fun lambda!65463 () Int)

(declare-fun dynLambda!7322 (Int Int) Int)

(declare-fun dynLambda!7323 (Int Int) Int)

(assert (=> b!1546851 (< (dynLambda!7322 order!9655 (toValue!4270 (transformation!2907 rule!240))) (dynLambda!7323 order!9657 lambda!65463))))

(declare-fun order!9659 () Int)

(declare-fun dynLambda!7324 (Int Int) Int)

(assert (=> b!1546851 (< (dynLambda!7324 order!9659 (toChars!4129 (transformation!2907 rule!240))) (dynLambda!7323 order!9657 lambda!65463))))

(declare-datatypes ((List!16653 0))(
  ( (Nil!16585) (Cons!16585 (h!21986 Regex!4235) (t!141056 List!16653)) )
))
(declare-datatypes ((Context!1506 0))(
  ( (Context!1507 (exprs!1253 List!16653)) )
))
(declare-datatypes ((tuple3!1640 0))(
  ( (tuple3!1641 (_1!9122 Regex!4235) (_2!9122 Context!1506) (_3!1234 C!8648)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15776 0))(
  ( (tuple2!15777 (_1!9123 tuple3!1640) (_2!9123 (InoxSet Context!1506))) )
))
(declare-datatypes ((List!16654 0))(
  ( (Nil!16586) (Cons!16586 (h!21987 tuple2!15776) (t!141057 List!16654)) )
))
(declare-datatypes ((array!5838 0))(
  ( (array!5839 (arr!2596 (Array (_ BitVec 32) (_ BitVec 64))) (size!13391 (_ BitVec 32))) )
))
(declare-datatypes ((array!5840 0))(
  ( (array!5841 (arr!2597 (Array (_ BitVec 32) List!16654)) (size!13392 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3372 0))(
  ( (LongMapFixedSize!3373 (defaultEntry!2046 Int) (mask!4892 (_ BitVec 32)) (extraKeys!1933 (_ BitVec 32)) (zeroValue!1943 List!16654) (minValue!1943 List!16654) (_size!3453 (_ BitVec 32)) (_keys!1980 array!5838) (_values!1965 array!5840) (_vacant!1747 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6629 0))(
  ( (Cell!6630 (v!23393 LongMapFixedSize!3372)) )
))
(declare-datatypes ((MutLongMap!1686 0))(
  ( (LongMap!1686 (underlying!3581 Cell!6629)) (MutLongMapExt!1685 (__x!10782 Int)) )
))
(declare-datatypes ((Cell!6631 0))(
  ( (Cell!6632 (v!23394 MutLongMap!1686)) )
))
(declare-datatypes ((Hashable!1630 0))(
  ( (HashableExt!1629 (__x!10783 Int)) )
))
(declare-datatypes ((MutableMap!1630 0))(
  ( (MutableMapExt!1629 (__x!10784 Int)) (HashMap!1630 (underlying!3582 Cell!6631) (hashF!3549 Hashable!1630) (_size!3454 (_ BitVec 32)) (defaultValue!1790 Int)) )
))
(declare-datatypes ((CacheDown!992 0))(
  ( (CacheDown!993 (cache!2011 MutableMap!1630)) )
))
(declare-fun cacheDown!768 () CacheDown!992)

(declare-fun e!990973 () Bool)

(declare-fun e!990981 () Bool)

(declare-fun tp!450625 () Bool)

(declare-fun tp!450619 () Bool)

(declare-fun array_inv!1869 (array!5838) Bool)

(declare-fun array_inv!1870 (array!5840) Bool)

(assert (=> b!1546807 (= e!990981 (and tp!450607 tp!450619 tp!450625 (array_inv!1869 (_keys!1980 (v!23393 (underlying!3581 (v!23394 (underlying!3582 (cache!2011 cacheDown!768))))))) (array_inv!1870 (_values!1965 (v!23393 (underlying!3581 (v!23394 (underlying!3582 (cache!2011 cacheDown!768))))))) e!990973))))

(declare-fun mapNonEmpty!7920 () Bool)

(declare-fun mapRes!7922 () Bool)

(declare-fun tp!450622 () Bool)

(declare-fun tp!450623 () Bool)

(assert (=> mapNonEmpty!7920 (= mapRes!7922 (and tp!450622 tp!450623))))

(declare-fun mapKey!7920 () (_ BitVec 32))

(declare-datatypes ((tuple3!1642 0))(
  ( (tuple3!1643 (_1!9124 (InoxSet Context!1506)) (_2!9124 Int) (_3!1235 Int)) )
))
(declare-datatypes ((tuple2!15778 0))(
  ( (tuple2!15779 (_1!9125 tuple3!1642) (_2!9125 Int)) )
))
(declare-datatypes ((List!16655 0))(
  ( (Nil!16587) (Cons!16587 (h!21988 tuple2!15778) (t!141058 List!16655)) )
))
(declare-fun mapValue!7921 () List!16655)

(declare-fun mapRest!7920 () (Array (_ BitVec 32) List!16655))

(declare-datatypes ((array!5842 0))(
  ( (array!5843 (arr!2598 (Array (_ BitVec 32) List!16655)) (size!13393 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3374 0))(
  ( (LongMapFixedSize!3375 (defaultEntry!2047 Int) (mask!4893 (_ BitVec 32)) (extraKeys!1934 (_ BitVec 32)) (zeroValue!1944 List!16655) (minValue!1944 List!16655) (_size!3455 (_ BitVec 32)) (_keys!1981 array!5838) (_values!1966 array!5842) (_vacant!1748 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6633 0))(
  ( (Cell!6634 (v!23395 LongMapFixedSize!3374)) )
))
(declare-datatypes ((Hashable!1631 0))(
  ( (HashableExt!1630 (__x!10785 Int)) )
))
(declare-datatypes ((MutLongMap!1687 0))(
  ( (LongMap!1687 (underlying!3583 Cell!6633)) (MutLongMapExt!1686 (__x!10786 Int)) )
))
(declare-datatypes ((Cell!6635 0))(
  ( (Cell!6636 (v!23396 MutLongMap!1687)) )
))
(declare-datatypes ((MutableMap!1631 0))(
  ( (MutableMapExt!1630 (__x!10787 Int)) (HashMap!1631 (underlying!3584 Cell!6635) (hashF!3550 Hashable!1631) (_size!3456 (_ BitVec 32)) (defaultValue!1791 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!412 0))(
  ( (CacheFurthestNullable!413 (cache!2012 MutableMap!1631) (totalInput!2409 BalanceConc!10992)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!412)

(assert (=> mapNonEmpty!7920 (= (arr!2598 (_values!1966 (v!23395 (underlying!3583 (v!23396 (underlying!3584 (cache!2012 cacheFurthestNullable!103))))))) (store mapRest!7920 mapKey!7920 mapValue!7921))))

(declare-fun b!1546808 () Bool)

(declare-fun e!990987 () Bool)

(declare-fun e!990997 () Bool)

(assert (=> b!1546808 (= e!990987 e!990997)))

(declare-fun res!691820 () Bool)

(declare-fun e!990975 () Bool)

(assert (=> b!1546809 (=> res!691820 e!990975)))

(declare-fun Forall!588 (Int) Bool)

(assert (=> b!1546809 (= res!691820 (not (Forall!588 lambda!65463)))))

(declare-fun e!990976 () Bool)

(assert (=> b!1546810 (= e!990976 (and tp!450628 tp!450629))))

(declare-fun b!1546811 () Bool)

(declare-fun e!990990 () Bool)

(declare-fun totalInput!568 () BalanceConc!10992)

(declare-fun tp!450624 () Bool)

(declare-fun inv!21854 (Conc!5525) Bool)

(assert (=> b!1546811 (= e!990990 (and (inv!21854 (c!252133 totalInput!568)) tp!450624))))

(declare-fun b!1546812 () Bool)

(declare-fun e!990974 () Bool)

(declare-fun e!990966 () Bool)

(assert (=> b!1546812 (= e!990974 e!990966)))

(declare-fun res!691816 () Bool)

(assert (=> b!1546812 (=> (not res!691816) (not e!990966))))

(declare-fun lt!535691 () List!16652)

(declare-fun isSuffix!349 (List!16652 List!16652) Bool)

(declare-fun list!6453 (BalanceConc!10992) List!16652)

(assert (=> b!1546812 (= res!691816 (isSuffix!349 lt!535691 (list!6453 totalInput!568)))))

(declare-fun input!1676 () BalanceConc!10992)

(assert (=> b!1546812 (= lt!535691 (list!6453 input!1676))))

(declare-fun mapIsEmpty!7920 () Bool)

(declare-fun mapRes!7921 () Bool)

(assert (=> mapIsEmpty!7920 mapRes!7921))

(declare-fun b!1546813 () Bool)

(declare-fun e!990970 () Bool)

(declare-fun e!990993 () Bool)

(declare-datatypes ((tuple2!15780 0))(
  ( (tuple2!15781 (_1!9126 Context!1506) (_2!9126 C!8648)) )
))
(declare-datatypes ((tuple2!15782 0))(
  ( (tuple2!15783 (_1!9127 tuple2!15780) (_2!9127 (InoxSet Context!1506))) )
))
(declare-datatypes ((List!16656 0))(
  ( (Nil!16588) (Cons!16588 (h!21989 tuple2!15782) (t!141059 List!16656)) )
))
(declare-datatypes ((array!5844 0))(
  ( (array!5845 (arr!2599 (Array (_ BitVec 32) List!16656)) (size!13394 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3376 0))(
  ( (LongMapFixedSize!3377 (defaultEntry!2048 Int) (mask!4894 (_ BitVec 32)) (extraKeys!1935 (_ BitVec 32)) (zeroValue!1945 List!16656) (minValue!1945 List!16656) (_size!3457 (_ BitVec 32)) (_keys!1982 array!5838) (_values!1967 array!5844) (_vacant!1749 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6637 0))(
  ( (Cell!6638 (v!23397 LongMapFixedSize!3376)) )
))
(declare-datatypes ((MutLongMap!1688 0))(
  ( (LongMap!1688 (underlying!3585 Cell!6637)) (MutLongMapExt!1687 (__x!10788 Int)) )
))
(declare-fun lt!535693 () MutLongMap!1688)

(get-info :version)

(assert (=> b!1546813 (= e!990970 (and e!990993 ((_ is LongMap!1688) lt!535693)))))

(declare-datatypes ((Hashable!1632 0))(
  ( (HashableExt!1631 (__x!10789 Int)) )
))
(declare-datatypes ((Cell!6639 0))(
  ( (Cell!6640 (v!23398 MutLongMap!1688)) )
))
(declare-datatypes ((MutableMap!1632 0))(
  ( (MutableMapExt!1631 (__x!10790 Int)) (HashMap!1632 (underlying!3586 Cell!6639) (hashF!3551 Hashable!1632) (_size!3458 (_ BitVec 32)) (defaultValue!1792 Int)) )
))
(declare-datatypes ((CacheUp!984 0))(
  ( (CacheUp!985 (cache!2013 MutableMap!1632)) )
))
(declare-fun cacheUp!755 () CacheUp!984)

(assert (=> b!1546813 (= lt!535693 (v!23398 (underlying!3586 (cache!2013 cacheUp!755))))))

(declare-fun b!1546814 () Bool)

(declare-fun e!990979 () Bool)

(assert (=> b!1546814 (= e!990966 e!990979)))

(declare-fun res!691819 () Bool)

(assert (=> b!1546814 (=> (not res!691819) (not e!990979))))

(declare-datatypes ((tuple2!15784 0))(
  ( (tuple2!15785 (_1!9128 BalanceConc!10992) (_2!9128 BalanceConc!10992)) )
))
(declare-datatypes ((tuple4!828 0))(
  ( (tuple4!829 (_1!9129 tuple2!15784) (_2!9129 CacheUp!984) (_3!1236 CacheDown!992) (_4!414 CacheFurthestNullable!412)) )
))
(declare-fun lt!535687 () tuple4!828)

(declare-fun isEmpty!10050 (BalanceConc!10992) Bool)

(assert (=> b!1546814 (= res!691819 (not (isEmpty!10050 (_1!9128 (_1!9129 lt!535687)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!21 (Regex!4235 BalanceConc!10992 BalanceConc!10992 CacheUp!984 CacheDown!992 CacheFurthestNullable!412) tuple4!828)

(assert (=> b!1546814 (= lt!535687 (findLongestMatchWithZipperSequenceV3Mem!21 (regex!2907 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun e!990991 () Bool)

(declare-fun e!990980 () Bool)

(assert (=> b!1546815 (= e!990991 (and e!990980 tp!450604))))

(declare-fun b!1546816 () Bool)

(declare-fun e!990994 () Bool)

(declare-fun e!990967 () Bool)

(assert (=> b!1546816 (= e!990994 e!990967)))

(declare-fun e!990984 () Bool)

(declare-fun tp!450620 () Bool)

(declare-fun tp!450630 () Bool)

(declare-fun array_inv!1871 (array!5842) Bool)

(assert (=> b!1546817 (= e!990967 (and tp!450608 tp!450630 tp!450620 (array_inv!1869 (_keys!1981 (v!23395 (underlying!3583 (v!23396 (underlying!3584 (cache!2012 cacheFurthestNullable!103))))))) (array_inv!1871 (_values!1966 (v!23395 (underlying!3583 (v!23396 (underlying!3584 (cache!2012 cacheFurthestNullable!103))))))) e!990984))))

(declare-fun b!1546818 () Bool)

(declare-fun e!990964 () Bool)

(assert (=> b!1546818 (= e!990964 e!990991)))

(declare-fun b!1546819 () Bool)

(assert (=> b!1546819 (= e!990979 (not e!990975))))

(declare-fun res!691824 () Bool)

(assert (=> b!1546819 (=> res!691824 e!990975)))

(declare-fun semiInverseModEq!1093 (Int Int) Bool)

(assert (=> b!1546819 (= res!691824 (not (semiInverseModEq!1093 (toChars!4129 (transformation!2907 rule!240)) (toValue!4270 (transformation!2907 rule!240)))))))

(declare-datatypes ((Unit!25939 0))(
  ( (Unit!25940) )
))
(declare-fun lt!535688 () Unit!25939)

(declare-fun lemmaInv!403 (TokenValueInjection!5654) Unit!25939)

(assert (=> b!1546819 (= lt!535688 (lemmaInv!403 (transformation!2907 rule!240)))))

(declare-fun e!990983 () Bool)

(assert (=> b!1546819 e!990983))

(declare-fun res!691821 () Bool)

(assert (=> b!1546819 (=> res!691821 e!990983)))

(declare-datatypes ((tuple2!15786 0))(
  ( (tuple2!15787 (_1!9130 List!16652) (_2!9130 List!16652)) )
))
(declare-fun lt!535692 () tuple2!15786)

(declare-fun isEmpty!10051 (List!16652) Bool)

(assert (=> b!1546819 (= res!691821 (isEmpty!10051 (_1!9130 lt!535692)))))

(declare-fun findLongestMatchInner!309 (Regex!4235 List!16652 Int List!16652 List!16652 Int) tuple2!15786)

(declare-fun size!13395 (List!16652) Int)

(assert (=> b!1546819 (= lt!535692 (findLongestMatchInner!309 (regex!2907 rule!240) Nil!16584 (size!13395 Nil!16584) lt!535691 lt!535691 (size!13395 lt!535691)))))

(declare-fun lt!535684 () Unit!25939)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!293 (Regex!4235 List!16652) Unit!25939)

(assert (=> b!1546819 (= lt!535684 (longestMatchIsAcceptedByMatchOrIsEmpty!293 (regex!2907 rule!240) lt!535691))))

(declare-fun b!1546820 () Bool)

(declare-fun e!990965 () Bool)

(declare-fun tp!450616 () Bool)

(assert (=> b!1546820 (= e!990965 (and (inv!21854 (c!252133 (totalInput!2409 cacheFurthestNullable!103))) tp!450616))))

(declare-fun b!1546821 () Bool)

(declare-fun tp!450611 () Bool)

(declare-fun e!990988 () Bool)

(declare-fun inv!21853 (String!19273) Bool)

(declare-fun inv!21855 (TokenValueInjection!5654) Bool)

(assert (=> b!1546821 (= e!990988 (and tp!450611 (inv!21853 (tag!3171 rule!240)) (inv!21855 (transformation!2907 rule!240)) e!990976))))

(declare-fun b!1546822 () Bool)

(declare-fun tp!450621 () Bool)

(declare-fun mapRes!7920 () Bool)

(assert (=> b!1546822 (= e!990973 (and tp!450621 mapRes!7920))))

(declare-fun condMapEmpty!7920 () Bool)

(declare-fun mapDefault!7920 () List!16654)

(assert (=> b!1546822 (= condMapEmpty!7920 (= (arr!2597 (_values!1965 (v!23393 (underlying!3581 (v!23394 (underlying!3582 (cache!2011 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16654)) mapDefault!7920)))))

(declare-fun mapNonEmpty!7921 () Bool)

(declare-fun tp!450614 () Bool)

(declare-fun tp!450613 () Bool)

(assert (=> mapNonEmpty!7921 (= mapRes!7921 (and tp!450614 tp!450613))))

(declare-fun mapKey!7921 () (_ BitVec 32))

(declare-fun mapValue!7920 () List!16656)

(declare-fun mapRest!7922 () (Array (_ BitVec 32) List!16656))

(assert (=> mapNonEmpty!7921 (= (arr!2599 (_values!1967 (v!23397 (underlying!3585 (v!23398 (underlying!3586 (cache!2013 cacheUp!755))))))) (store mapRest!7922 mapKey!7921 mapValue!7920))))

(declare-fun e!990995 () Bool)

(declare-fun b!1546823 () Bool)

(declare-fun e!990963 () Bool)

(declare-fun inv!21856 (BalanceConc!10992) Bool)

(assert (=> b!1546823 (= e!990995 (and e!990963 (inv!21856 (totalInput!2409 cacheFurthestNullable!103)) e!990965))))

(declare-fun b!1546824 () Bool)

(declare-fun e!990989 () Bool)

(declare-fun lt!535685 () MutLongMap!1686)

(assert (=> b!1546824 (= e!990980 (and e!990989 ((_ is LongMap!1686) lt!535685)))))

(assert (=> b!1546824 (= lt!535685 (v!23394 (underlying!3582 (cache!2011 cacheDown!768))))))

(declare-fun b!1546825 () Bool)

(declare-fun res!691817 () Bool)

(assert (=> b!1546825 (=> (not res!691817) (not e!990966))))

(assert (=> b!1546825 (= res!691817 (= (totalInput!2409 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1546826 () Bool)

(declare-fun e!990969 () Bool)

(declare-fun e!990996 () Bool)

(assert (=> b!1546826 (= e!990969 e!990996)))

(declare-fun b!1546827 () Bool)

(declare-fun e!990992 () Bool)

(assert (=> b!1546827 (= e!990989 e!990992)))

(declare-fun b!1546828 () Bool)

(declare-fun tp!450617 () Bool)

(assert (=> b!1546828 (= e!990984 (and tp!450617 mapRes!7922))))

(declare-fun condMapEmpty!7922 () Bool)

(declare-fun mapDefault!7921 () List!16655)

(assert (=> b!1546828 (= condMapEmpty!7922 (= (arr!2598 (_values!1966 (v!23395 (underlying!3583 (v!23396 (underlying!3584 (cache!2012 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16655)) mapDefault!7921)))))

(declare-fun b!1546829 () Bool)

(declare-fun e!990977 () Bool)

(declare-fun e!990968 () Bool)

(declare-fun lt!535686 () MutLongMap!1687)

(assert (=> b!1546829 (= e!990977 (and e!990968 ((_ is LongMap!1687) lt!535686)))))

(assert (=> b!1546829 (= lt!535686 (v!23396 (underlying!3584 (cache!2012 cacheFurthestNullable!103))))))

(declare-fun res!691823 () Bool)

(assert (=> start!143578 (=> (not res!691823) (not e!990974))))

(declare-datatypes ((LexerInterface!2555 0))(
  ( (LexerInterfaceExt!2552 (__x!10791 Int)) (Lexer!2553) )
))
(declare-fun thiss!16438 () LexerInterface!2555)

(assert (=> start!143578 (= res!691823 ((_ is Lexer!2553) thiss!16438))))

(assert (=> start!143578 e!990974))

(assert (=> start!143578 (and (inv!21856 totalInput!568) e!990990)))

(declare-fun inv!21857 (CacheUp!984) Bool)

(assert (=> start!143578 (and (inv!21857 cacheUp!755) e!990987)))

(declare-fun inv!21858 (CacheFurthestNullable!412) Bool)

(assert (=> start!143578 (and (inv!21858 cacheFurthestNullable!103) e!990995)))

(declare-fun e!990986 () Bool)

(assert (=> start!143578 (and (inv!21856 input!1676) e!990986)))

(assert (=> start!143578 e!990988))

(declare-fun inv!21859 (CacheDown!992) Bool)

(assert (=> start!143578 (and (inv!21859 cacheDown!768) e!990964)))

(assert (=> start!143578 true))

(declare-fun mapNonEmpty!7922 () Bool)

(declare-fun tp!450609 () Bool)

(declare-fun tp!450605 () Bool)

(assert (=> mapNonEmpty!7922 (= mapRes!7920 (and tp!450609 tp!450605))))

(declare-fun mapRest!7921 () (Array (_ BitVec 32) List!16654))

(declare-fun mapValue!7922 () List!16654)

(declare-fun mapKey!7922 () (_ BitVec 32))

(assert (=> mapNonEmpty!7922 (= (arr!2597 (_values!1965 (v!23393 (underlying!3581 (v!23394 (underlying!3582 (cache!2011 cacheDown!768))))))) (store mapRest!7921 mapKey!7922 mapValue!7922))))

(declare-fun b!1546830 () Bool)

(declare-fun e!990978 () Bool)

(declare-fun tp!450618 () Bool)

(assert (=> b!1546830 (= e!990978 (and tp!450618 mapRes!7921))))

(declare-fun condMapEmpty!7921 () Bool)

(declare-fun mapDefault!7922 () List!16656)

(assert (=> b!1546830 (= condMapEmpty!7921 (= (arr!2599 (_values!1967 (v!23397 (underlying!3585 (v!23398 (underlying!3586 (cache!2013 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16656)) mapDefault!7922)))))

(declare-fun b!1546831 () Bool)

(assert (=> b!1546831 (= e!990993 e!990969)))

(declare-fun b!1546832 () Bool)

(declare-fun res!691825 () Bool)

(assert (=> b!1546832 (=> (not res!691825) (not e!990974))))

(declare-fun valid!1364 (CacheDown!992) Bool)

(assert (=> b!1546832 (= res!691825 (valid!1364 cacheDown!768))))

(declare-fun b!1546833 () Bool)

(declare-fun res!691818 () Bool)

(assert (=> b!1546833 (=> (not res!691818) (not e!990974))))

(declare-fun ruleValid!660 (LexerInterface!2555 Rule!5614) Bool)

(assert (=> b!1546833 (= res!691818 (ruleValid!660 thiss!16438 rule!240))))

(declare-fun mapIsEmpty!7921 () Bool)

(assert (=> mapIsEmpty!7921 mapRes!7920))

(declare-fun b!1546834 () Bool)

(declare-fun matchR!1853 (Regex!4235 List!16652) Bool)

(assert (=> b!1546834 (= e!990983 (matchR!1853 (regex!2907 rule!240) (_1!9130 lt!535692)))))

(declare-fun b!1546835 () Bool)

(declare-fun res!691815 () Bool)

(assert (=> b!1546835 (=> (not res!691815) (not e!990974))))

(declare-fun valid!1365 (CacheUp!984) Bool)

(assert (=> b!1546835 (= res!691815 (valid!1365 cacheUp!755))))

(declare-fun b!1546836 () Bool)

(declare-fun tp!450612 () Bool)

(assert (=> b!1546836 (= e!990986 (and (inv!21854 (c!252133 input!1676)) tp!450612))))

(assert (=> b!1546837 (= e!990963 (and e!990977 tp!450626))))

(declare-fun b!1546838 () Bool)

(declare-fun res!691822 () Bool)

(assert (=> b!1546838 (=> (not res!691822) (not e!990974))))

(declare-fun valid!1366 (CacheFurthestNullable!412) Bool)

(assert (=> b!1546838 (= res!691822 (valid!1366 cacheFurthestNullable!103))))

(assert (=> b!1546839 (= e!990997 (and e!990970 tp!450627))))

(declare-fun b!1546840 () Bool)

(assert (=> b!1546840 (= e!990992 e!990981)))

(declare-fun mapIsEmpty!7922 () Bool)

(assert (=> mapIsEmpty!7922 mapRes!7922))

(declare-fun b!1546841 () Bool)

(assert (=> b!1546841 (= e!990968 e!990994)))

(declare-fun b!1546842 () Bool)

(assert (=> b!1546842 (= e!990975 (Forall!588 lambda!65463))))

(declare-fun lt!535690 () BalanceConc!10992)

(declare-fun seqFromList!1749 (List!16652) BalanceConc!10992)

(assert (=> b!1546842 (= lt!535690 (seqFromList!1749 (list!6453 (_1!9128 (_1!9129 lt!535687)))))))

(declare-fun lt!535689 () Unit!25939)

(declare-fun ForallOf!186 (Int BalanceConc!10992) Unit!25939)

(assert (=> b!1546842 (= lt!535689 (ForallOf!186 lambda!65463 (_1!9128 (_1!9129 lt!535687))))))

(declare-fun tp!450610 () Bool)

(declare-fun tp!450606 () Bool)

(declare-fun array_inv!1872 (array!5844) Bool)

(assert (=> b!1546843 (= e!990996 (and tp!450615 tp!450606 tp!450610 (array_inv!1869 (_keys!1982 (v!23397 (underlying!3585 (v!23398 (underlying!3586 (cache!2013 cacheUp!755))))))) (array_inv!1872 (_values!1967 (v!23397 (underlying!3585 (v!23398 (underlying!3586 (cache!2013 cacheUp!755))))))) e!990978))))

(assert (= (and start!143578 res!691823) b!1546833))

(assert (= (and b!1546833 res!691818) b!1546835))

(assert (= (and b!1546835 res!691815) b!1546832))

(assert (= (and b!1546832 res!691825) b!1546838))

(assert (= (and b!1546838 res!691822) b!1546812))

(assert (= (and b!1546812 res!691816) b!1546825))

(assert (= (and b!1546825 res!691817) b!1546814))

(assert (= (and b!1546814 res!691819) b!1546819))

(assert (= (and b!1546819 (not res!691821)) b!1546834))

(assert (= (and b!1546819 (not res!691824)) b!1546809))

(assert (= (and b!1546809 (not res!691820)) b!1546842))

(assert (= start!143578 b!1546811))

(assert (= (and b!1546830 condMapEmpty!7921) mapIsEmpty!7920))

(assert (= (and b!1546830 (not condMapEmpty!7921)) mapNonEmpty!7921))

(assert (= b!1546843 b!1546830))

(assert (= b!1546826 b!1546843))

(assert (= b!1546831 b!1546826))

(assert (= (and b!1546813 ((_ is LongMap!1688) (v!23398 (underlying!3586 (cache!2013 cacheUp!755))))) b!1546831))

(assert (= b!1546839 b!1546813))

(assert (= (and b!1546808 ((_ is HashMap!1632) (cache!2013 cacheUp!755))) b!1546839))

(assert (= start!143578 b!1546808))

(assert (= (and b!1546828 condMapEmpty!7922) mapIsEmpty!7922))

(assert (= (and b!1546828 (not condMapEmpty!7922)) mapNonEmpty!7920))

(assert (= b!1546817 b!1546828))

(assert (= b!1546816 b!1546817))

(assert (= b!1546841 b!1546816))

(assert (= (and b!1546829 ((_ is LongMap!1687) (v!23396 (underlying!3584 (cache!2012 cacheFurthestNullable!103))))) b!1546841))

(assert (= b!1546837 b!1546829))

(assert (= (and b!1546823 ((_ is HashMap!1631) (cache!2012 cacheFurthestNullable!103))) b!1546837))

(assert (= b!1546823 b!1546820))

(assert (= start!143578 b!1546823))

(assert (= start!143578 b!1546836))

(assert (= b!1546821 b!1546810))

(assert (= start!143578 b!1546821))

(assert (= (and b!1546822 condMapEmpty!7920) mapIsEmpty!7921))

(assert (= (and b!1546822 (not condMapEmpty!7920)) mapNonEmpty!7922))

(assert (= b!1546807 b!1546822))

(assert (= b!1546840 b!1546807))

(assert (= b!1546827 b!1546840))

(assert (= (and b!1546824 ((_ is LongMap!1686) (v!23394 (underlying!3582 (cache!2011 cacheDown!768))))) b!1546827))

(assert (= b!1546815 b!1546824))

(assert (= (and b!1546818 ((_ is HashMap!1630) (cache!2011 cacheDown!768))) b!1546815))

(assert (= start!143578 b!1546818))

(declare-fun m!1820355 () Bool)

(assert (=> b!1546843 m!1820355))

(declare-fun m!1820357 () Bool)

(assert (=> b!1546843 m!1820357))

(declare-fun m!1820359 () Bool)

(assert (=> mapNonEmpty!7921 m!1820359))

(declare-fun m!1820361 () Bool)

(assert (=> mapNonEmpty!7922 m!1820361))

(declare-fun m!1820363 () Bool)

(assert (=> b!1546842 m!1820363))

(declare-fun m!1820365 () Bool)

(assert (=> b!1546842 m!1820365))

(assert (=> b!1546842 m!1820365))

(declare-fun m!1820367 () Bool)

(assert (=> b!1546842 m!1820367))

(declare-fun m!1820369 () Bool)

(assert (=> b!1546842 m!1820369))

(declare-fun m!1820371 () Bool)

(assert (=> mapNonEmpty!7920 m!1820371))

(declare-fun m!1820373 () Bool)

(assert (=> b!1546833 m!1820373))

(declare-fun m!1820375 () Bool)

(assert (=> b!1546834 m!1820375))

(declare-fun m!1820377 () Bool)

(assert (=> b!1546807 m!1820377))

(declare-fun m!1820379 () Bool)

(assert (=> b!1546807 m!1820379))

(declare-fun m!1820381 () Bool)

(assert (=> b!1546832 m!1820381))

(declare-fun m!1820383 () Bool)

(assert (=> b!1546821 m!1820383))

(declare-fun m!1820385 () Bool)

(assert (=> b!1546821 m!1820385))

(assert (=> b!1546809 m!1820363))

(declare-fun m!1820387 () Bool)

(assert (=> b!1546838 m!1820387))

(declare-fun m!1820389 () Bool)

(assert (=> b!1546811 m!1820389))

(declare-fun m!1820391 () Bool)

(assert (=> start!143578 m!1820391))

(declare-fun m!1820393 () Bool)

(assert (=> start!143578 m!1820393))

(declare-fun m!1820395 () Bool)

(assert (=> start!143578 m!1820395))

(declare-fun m!1820397 () Bool)

(assert (=> start!143578 m!1820397))

(declare-fun m!1820399 () Bool)

(assert (=> start!143578 m!1820399))

(declare-fun m!1820401 () Bool)

(assert (=> b!1546823 m!1820401))

(declare-fun m!1820403 () Bool)

(assert (=> b!1546817 m!1820403))

(declare-fun m!1820405 () Bool)

(assert (=> b!1546817 m!1820405))

(declare-fun m!1820407 () Bool)

(assert (=> b!1546812 m!1820407))

(assert (=> b!1546812 m!1820407))

(declare-fun m!1820409 () Bool)

(assert (=> b!1546812 m!1820409))

(declare-fun m!1820411 () Bool)

(assert (=> b!1546812 m!1820411))

(declare-fun m!1820413 () Bool)

(assert (=> b!1546836 m!1820413))

(declare-fun m!1820415 () Bool)

(assert (=> b!1546835 m!1820415))

(declare-fun m!1820417 () Bool)

(assert (=> b!1546820 m!1820417))

(declare-fun m!1820419 () Bool)

(assert (=> b!1546814 m!1820419))

(declare-fun m!1820421 () Bool)

(assert (=> b!1546814 m!1820421))

(declare-fun m!1820423 () Bool)

(assert (=> b!1546819 m!1820423))

(declare-fun m!1820425 () Bool)

(assert (=> b!1546819 m!1820425))

(declare-fun m!1820427 () Bool)

(assert (=> b!1546819 m!1820427))

(declare-fun m!1820429 () Bool)

(assert (=> b!1546819 m!1820429))

(declare-fun m!1820431 () Bool)

(assert (=> b!1546819 m!1820431))

(assert (=> b!1546819 m!1820425))

(declare-fun m!1820433 () Bool)

(assert (=> b!1546819 m!1820433))

(declare-fun m!1820435 () Bool)

(assert (=> b!1546819 m!1820435))

(assert (=> b!1546819 m!1820423))

(check-sat (not b!1546833) (not b!1546843) (not b_next!41381) (not b!1546807) (not b!1546822) (not b!1546836) (not b!1546819) (not b!1546828) (not b!1546834) b_and!107773 (not b!1546812) b_and!107769 (not b_next!41385) b_and!107765 (not b!1546838) (not b!1546820) (not b!1546832) (not b_next!41379) (not b!1546809) (not b_next!41387) (not b!1546823) (not mapNonEmpty!7920) (not b_next!41383) b_and!107777 b_and!107767 (not mapNonEmpty!7921) (not b!1546817) (not b!1546811) b_and!107779 (not mapNonEmpty!7922) (not b!1546821) (not b_next!41389) (not b_next!41393) (not b!1546835) (not b!1546814) (not b!1546842) b_and!107775 (not b!1546830) (not b_next!41391) b_and!107771 (not start!143578))
(check-sat (not b_next!41381) (not b_next!41379) (not b_next!41387) b_and!107767 b_and!107775 (not b_next!41391) b_and!107771 b_and!107773 b_and!107769 (not b_next!41385) b_and!107765 (not b_next!41383) b_and!107777 b_and!107779 (not b_next!41389) (not b_next!41393))
