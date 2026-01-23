; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143042 () Bool)

(assert start!143042)

(declare-fun b!1539743 () Bool)

(declare-fun b_free!40215 () Bool)

(declare-fun b_next!40919 () Bool)

(assert (=> b!1539743 (= b_free!40215 (not b_next!40919))))

(declare-fun tp!445790 () Bool)

(declare-fun b_and!107093 () Bool)

(assert (=> b!1539743 (= tp!445790 b_and!107093)))

(declare-fun b!1539777 () Bool)

(declare-fun b_free!40217 () Bool)

(declare-fun b_next!40921 () Bool)

(assert (=> b!1539777 (= b_free!40217 (not b_next!40921))))

(declare-fun tp!445804 () Bool)

(declare-fun b_and!107095 () Bool)

(assert (=> b!1539777 (= tp!445804 b_and!107095)))

(declare-fun b_free!40219 () Bool)

(declare-fun b_next!40923 () Bool)

(assert (=> b!1539777 (= b_free!40219 (not b_next!40923))))

(declare-fun tp!445793 () Bool)

(declare-fun b_and!107097 () Bool)

(assert (=> b!1539777 (= tp!445793 b_and!107097)))

(declare-fun b!1539769 () Bool)

(declare-fun b_free!40221 () Bool)

(declare-fun b_next!40925 () Bool)

(assert (=> b!1539769 (= b_free!40221 (not b_next!40925))))

(declare-fun tp!445789 () Bool)

(declare-fun b_and!107099 () Bool)

(assert (=> b!1539769 (= tp!445789 b_and!107099)))

(declare-fun b!1539770 () Bool)

(declare-fun b_free!40223 () Bool)

(declare-fun b_next!40927 () Bool)

(assert (=> b!1539770 (= b_free!40223 (not b_next!40927))))

(declare-fun tp!445797 () Bool)

(declare-fun b_and!107101 () Bool)

(assert (=> b!1539770 (= tp!445797 b_and!107101)))

(declare-fun b!1539747 () Bool)

(declare-fun b_free!40225 () Bool)

(declare-fun b_next!40929 () Bool)

(assert (=> b!1539747 (= b_free!40225 (not b_next!40929))))

(declare-fun tp!445808 () Bool)

(declare-fun b_and!107103 () Bool)

(assert (=> b!1539747 (= tp!445808 b_and!107103)))

(declare-fun b!1539748 () Bool)

(declare-fun b_free!40227 () Bool)

(declare-fun b_next!40931 () Bool)

(assert (=> b!1539748 (= b_free!40227 (not b_next!40931))))

(declare-fun tp!445799 () Bool)

(declare-fun b_and!107105 () Bool)

(assert (=> b!1539748 (= tp!445799 b_and!107105)))

(declare-fun b!1539774 () Bool)

(declare-fun b_free!40229 () Bool)

(declare-fun b_next!40933 () Bool)

(assert (=> b!1539774 (= b_free!40229 (not b_next!40933))))

(declare-fun tp!445785 () Bool)

(declare-fun b_and!107107 () Bool)

(assert (=> b!1539774 (= tp!445785 b_and!107107)))

(declare-datatypes ((C!8596 0))(
  ( (C!8597 (val!4870 Int)) )
))
(declare-datatypes ((Regex!4209 0))(
  ( (ElementMatch!4209 (c!251675 C!8596)) (Concat!7184 (regOne!8930 Regex!4209) (regTwo!8930 Regex!4209)) (EmptyExpr!4209) (Star!4209 (reg!4538 Regex!4209)) (EmptyLang!4209) (Union!4209 (regOne!8931 Regex!4209) (regTwo!8931 Regex!4209)) )
))
(declare-datatypes ((List!16493 0))(
  ( (Nil!16425) (Cons!16425 (h!21826 Regex!4209) (t!140699 List!16493)) )
))
(declare-datatypes ((Context!1454 0))(
  ( (Context!1455 (exprs!1227 List!16493)) )
))
(declare-datatypes ((tuple2!15518 0))(
  ( (tuple2!15519 (_1!8925 Context!1454) (_2!8925 C!8596)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15520 0))(
  ( (tuple2!15521 (_1!8926 tuple2!15518) (_2!8926 (InoxSet Context!1454))) )
))
(declare-datatypes ((List!16494 0))(
  ( (Nil!16426) (Cons!16426 (h!21827 tuple2!15520) (t!140700 List!16494)) )
))
(declare-datatypes ((array!5620 0))(
  ( (array!5621 (arr!2501 (Array (_ BitVec 32) List!16494)) (size!13270 (_ BitVec 32))) )
))
(declare-datatypes ((array!5622 0))(
  ( (array!5623 (arr!2502 (Array (_ BitVec 32) (_ BitVec 64))) (size!13271 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3234 0))(
  ( (LongMapFixedSize!3235 (defaultEntry!1977 Int) (mask!4810 (_ BitVec 32)) (extraKeys!1864 (_ BitVec 32)) (zeroValue!1874 List!16494) (minValue!1874 List!16494) (_size!3315 (_ BitVec 32)) (_keys!1911 array!5622) (_values!1896 array!5620) (_vacant!1678 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6353 0))(
  ( (Cell!6354 (v!23238 LongMapFixedSize!3234)) )
))
(declare-datatypes ((MutLongMap!1617 0))(
  ( (LongMap!1617 (underlying!3443 Cell!6353)) (MutLongMapExt!1616 (__x!10532 Int)) )
))
(declare-datatypes ((Cell!6355 0))(
  ( (Cell!6356 (v!23239 MutLongMap!1617)) )
))
(declare-datatypes ((Hashable!1561 0))(
  ( (HashableExt!1560 (__x!10533 Int)) )
))
(declare-datatypes ((MutableMap!1561 0))(
  ( (MutableMapExt!1560 (__x!10534 Int)) (HashMap!1561 (underlying!3444 Cell!6355) (hashF!3480 Hashable!1561) (_size!3316 (_ BitVec 32)) (defaultValue!1721 Int)) )
))
(declare-datatypes ((CacheUp!938 0))(
  ( (CacheUp!939 (cache!1942 MutableMap!1561)) )
))
(declare-fun cacheUp!695 () CacheUp!938)

(declare-fun tp!445786 () Bool)

(declare-fun e!985529 () Bool)

(declare-fun tp!445806 () Bool)

(declare-fun e!985550 () Bool)

(declare-fun array_inv!1799 (array!5622) Bool)

(declare-fun array_inv!1800 (array!5620) Bool)

(assert (=> b!1539743 (= e!985529 (and tp!445790 tp!445786 tp!445806 (array_inv!1799 (_keys!1911 (v!23238 (underlying!3443 (v!23239 (underlying!3444 (cache!1942 cacheUp!695))))))) (array_inv!1800 (_values!1896 (v!23238 (underlying!3443 (v!23239 (underlying!3444 (cache!1942 cacheUp!695))))))) e!985550))))

(declare-fun b!1539744 () Bool)

(declare-fun res!689727 () Bool)

(declare-fun e!985555 () Bool)

(assert (=> b!1539744 (=> (not res!689727) (not e!985555))))

(declare-datatypes ((tuple3!1548 0))(
  ( (tuple3!1549 (_1!8927 Regex!4209) (_2!8927 Context!1454) (_3!1166 C!8596)) )
))
(declare-datatypes ((tuple2!15522 0))(
  ( (tuple2!15523 (_1!8928 tuple3!1548) (_2!8928 (InoxSet Context!1454))) )
))
(declare-datatypes ((List!16495 0))(
  ( (Nil!16427) (Cons!16427 (h!21828 tuple2!15522) (t!140701 List!16495)) )
))
(declare-datatypes ((array!5624 0))(
  ( (array!5625 (arr!2503 (Array (_ BitVec 32) List!16495)) (size!13272 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3236 0))(
  ( (LongMapFixedSize!3237 (defaultEntry!1978 Int) (mask!4811 (_ BitVec 32)) (extraKeys!1865 (_ BitVec 32)) (zeroValue!1875 List!16495) (minValue!1875 List!16495) (_size!3317 (_ BitVec 32)) (_keys!1912 array!5622) (_values!1897 array!5624) (_vacant!1679 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6357 0))(
  ( (Cell!6358 (v!23240 LongMapFixedSize!3236)) )
))
(declare-datatypes ((MutLongMap!1618 0))(
  ( (LongMap!1618 (underlying!3445 Cell!6357)) (MutLongMapExt!1617 (__x!10535 Int)) )
))
(declare-datatypes ((Cell!6359 0))(
  ( (Cell!6360 (v!23241 MutLongMap!1618)) )
))
(declare-datatypes ((Hashable!1562 0))(
  ( (HashableExt!1561 (__x!10536 Int)) )
))
(declare-datatypes ((MutableMap!1562 0))(
  ( (MutableMapExt!1561 (__x!10537 Int)) (HashMap!1562 (underlying!3446 Cell!6359) (hashF!3481 Hashable!1562) (_size!3318 (_ BitVec 32)) (defaultValue!1722 Int)) )
))
(declare-datatypes ((CacheDown!946 0))(
  ( (CacheDown!947 (cache!1943 MutableMap!1562)) )
))
(declare-fun cacheDown!708 () CacheDown!946)

(declare-fun valid!1308 (CacheDown!946) Bool)

(assert (=> b!1539744 (= res!689727 (valid!1308 cacheDown!708))))

(declare-fun b!1539745 () Bool)

(declare-fun e!985525 () Bool)

(declare-fun e!985546 () Bool)

(assert (=> b!1539745 (= e!985525 e!985546)))

(declare-fun e!985540 () Bool)

(declare-fun e!985522 () Bool)

(declare-fun tp!445792 () Bool)

(declare-fun tp!445794 () Bool)

(declare-fun array_inv!1801 (array!5624) Bool)

(assert (=> b!1539747 (= e!985540 (and tp!445808 tp!445794 tp!445792 (array_inv!1799 (_keys!1912 (v!23240 (underlying!3445 (v!23241 (underlying!3446 (cache!1943 cacheDown!708))))))) (array_inv!1801 (_values!1897 (v!23240 (underlying!3445 (v!23241 (underlying!3446 (cache!1943 cacheDown!708))))))) e!985522))))

(declare-fun e!985528 () Bool)

(declare-fun e!985556 () Bool)

(assert (=> b!1539748 (= e!985528 (and e!985556 tp!445799))))

(declare-fun b!1539749 () Bool)

(declare-fun e!985530 () Bool)

(assert (=> b!1539749 (= e!985530 true)))

(declare-fun lt!534035 () Bool)

(declare-fun e!985547 () Bool)

(assert (=> b!1539749 (= lt!534035 e!985547)))

(declare-fun res!689733 () Bool)

(assert (=> b!1539749 (=> res!689733 e!985547)))

(declare-fun lt!534028 () Bool)

(assert (=> b!1539749 (= res!689733 (not lt!534028))))

(declare-fun b!1539750 () Bool)

(declare-fun e!985552 () Bool)

(assert (=> b!1539750 (= e!985552 e!985540)))

(declare-fun b!1539751 () Bool)

(declare-fun e!985542 () Bool)

(assert (=> b!1539751 (= e!985547 e!985542)))

(declare-fun res!689725 () Bool)

(assert (=> b!1539751 (=> (not res!689725) (not e!985542))))

(declare-datatypes ((List!16496 0))(
  ( (Nil!16428) (Cons!16428 (h!21829 (_ BitVec 16)) (t!140702 List!16496)) )
))
(declare-datatypes ((TokenValue!2975 0))(
  ( (FloatLiteralValue!5950 (text!21270 List!16496)) (TokenValueExt!2974 (__x!10538 Int)) (Broken!14875 (value!91859 List!16496)) (Object!3042) (End!2975) (Def!2975) (Underscore!2975) (Match!2975) (Else!2975) (Error!2975) (Case!2975) (If!2975) (Extends!2975) (Abstract!2975) (Class!2975) (Val!2975) (DelimiterValue!5950 (del!3035 List!16496)) (KeywordValue!2981 (value!91860 List!16496)) (CommentValue!5950 (value!91861 List!16496)) (WhitespaceValue!5950 (value!91862 List!16496)) (IndentationValue!2975 (value!91863 List!16496)) (String!19154) (Int32!2975) (Broken!14876 (value!91864 List!16496)) (Boolean!2976) (Unit!25877) (OperatorValue!2978 (op!3035 List!16496)) (IdentifierValue!5950 (value!91865 List!16496)) (IdentifierValue!5951 (value!91866 List!16496)) (WhitespaceValue!5951 (value!91867 List!16496)) (True!5950) (False!5950) (Broken!14877 (value!91868 List!16496)) (Broken!14878 (value!91869 List!16496)) (True!5951) (RightBrace!2975) (RightBracket!2975) (Colon!2975) (Null!2975) (Comma!2975) (LeftBracket!2975) (False!5951) (LeftBrace!2975) (ImaginaryLiteralValue!2975 (text!21271 List!16496)) (StringLiteralValue!8925 (value!91870 List!16496)) (EOFValue!2975 (value!91871 List!16496)) (IdentValue!2975 (value!91872 List!16496)) (DelimiterValue!5951 (value!91873 List!16496)) (DedentValue!2975 (value!91874 List!16496)) (NewLineValue!2975 (value!91875 List!16496)) (IntegerValue!8925 (value!91876 (_ BitVec 32)) (text!21272 List!16496)) (IntegerValue!8926 (value!91877 Int) (text!21273 List!16496)) (Times!2975) (Or!2975) (Equal!2975) (Minus!2975) (Broken!14879 (value!91878 List!16496)) (And!2975) (Div!2975) (LessEqual!2975) (Mod!2975) (Concat!7185) (Not!2975) (Plus!2975) (SpaceValue!2975 (value!91879 List!16496)) (IntegerValue!8927 (value!91880 Int) (text!21274 List!16496)) (StringLiteralValue!8926 (text!21275 List!16496)) (FloatLiteralValue!5951 (text!21276 List!16496)) (BytesLiteralValue!2975 (value!91881 List!16496)) (CommentValue!5951 (value!91882 List!16496)) (StringLiteralValue!8927 (value!91883 List!16496)) (ErrorTokenValue!2975 (msg!3036 List!16496)) )
))
(declare-datatypes ((List!16497 0))(
  ( (Nil!16429) (Cons!16429 (h!21830 C!8596) (t!140703 List!16497)) )
))
(declare-datatypes ((IArray!11009 0))(
  ( (IArray!11010 (innerList!5562 List!16497)) )
))
(declare-datatypes ((Conc!5502 0))(
  ( (Node!5502 (left!13475 Conc!5502) (right!13805 Conc!5502) (csize!11234 Int) (cheight!5713 Int)) (Leaf!8152 (xs!8302 IArray!11009) (csize!11235 Int)) (Empty!5502) )
))
(declare-datatypes ((BalanceConc!10946 0))(
  ( (BalanceConc!10947 (c!251676 Conc!5502)) )
))
(declare-datatypes ((String!19155 0))(
  ( (String!19156 (value!91884 String)) )
))
(declare-datatypes ((TokenValueInjection!5610 0))(
  ( (TokenValueInjection!5611 (toValue!4246 Int) (toChars!4105 Int)) )
))
(declare-datatypes ((Rule!5570 0))(
  ( (Rule!5571 (regex!2885 Regex!4209) (tag!3149 String!19155) (isSeparator!2885 Bool) (transformation!2885 TokenValueInjection!5610)) )
))
(declare-datatypes ((Token!5410 0))(
  ( (Token!5411 (value!91885 TokenValue!2975) (rule!4689 Rule!5570) (size!13273 Int) (originalCharacters!3736 List!16497)) )
))
(declare-datatypes ((tuple2!15524 0))(
  ( (tuple2!15525 (_1!8929 Token!5410) (_2!8929 BalanceConc!10946)) )
))
(declare-fun lt!534038 () tuple2!15524)

(declare-datatypes ((tuple2!15526 0))(
  ( (tuple2!15527 (_1!8930 Token!5410) (_2!8930 List!16497)) )
))
(declare-fun lt!534041 () tuple2!15526)

(assert (=> b!1539751 (= res!689725 (= (_1!8929 lt!534038) (_1!8930 lt!534041)))))

(declare-datatypes ((Option!2975 0))(
  ( (None!2974) (Some!2974 (v!23242 tuple2!15526)) )
))
(declare-fun lt!534029 () Option!2975)

(declare-fun get!4789 (Option!2975) tuple2!15526)

(assert (=> b!1539751 (= lt!534041 (get!4789 lt!534029))))

(declare-datatypes ((Option!2976 0))(
  ( (None!2975) (Some!2975 (v!23243 tuple2!15524)) )
))
(declare-datatypes ((tuple3!1550 0))(
  ( (tuple3!1551 (_1!8931 (InoxSet Context!1454)) (_2!8931 Int) (_3!1167 Int)) )
))
(declare-datatypes ((Hashable!1563 0))(
  ( (HashableExt!1562 (__x!10539 Int)) )
))
(declare-datatypes ((tuple2!15528 0))(
  ( (tuple2!15529 (_1!8932 tuple3!1550) (_2!8932 Int)) )
))
(declare-datatypes ((List!16498 0))(
  ( (Nil!16430) (Cons!16430 (h!21831 tuple2!15528) (t!140704 List!16498)) )
))
(declare-datatypes ((array!5626 0))(
  ( (array!5627 (arr!2504 (Array (_ BitVec 32) List!16498)) (size!13274 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3238 0))(
  ( (LongMapFixedSize!3239 (defaultEntry!1979 Int) (mask!4812 (_ BitVec 32)) (extraKeys!1866 (_ BitVec 32)) (zeroValue!1876 List!16498) (minValue!1876 List!16498) (_size!3319 (_ BitVec 32)) (_keys!1913 array!5622) (_values!1898 array!5626) (_vacant!1680 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6361 0))(
  ( (Cell!6362 (v!23244 LongMapFixedSize!3238)) )
))
(declare-datatypes ((MutLongMap!1619 0))(
  ( (LongMap!1619 (underlying!3447 Cell!6361)) (MutLongMapExt!1618 (__x!10540 Int)) )
))
(declare-datatypes ((Cell!6363 0))(
  ( (Cell!6364 (v!23245 MutLongMap!1619)) )
))
(declare-datatypes ((MutableMap!1563 0))(
  ( (MutableMapExt!1562 (__x!10541 Int)) (HashMap!1563 (underlying!3448 Cell!6363) (hashF!3482 Hashable!1563) (_size!3320 (_ BitVec 32)) (defaultValue!1723 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!366 0))(
  ( (CacheFurthestNullable!367 (cache!1944 MutableMap!1563) (totalInput!2375 BalanceConc!10946)) )
))
(declare-datatypes ((tuple4!784 0))(
  ( (tuple4!785 (_1!8933 Option!2976) (_2!8933 CacheUp!938) (_3!1168 CacheFurthestNullable!366) (_4!392 CacheDown!946)) )
))
(declare-fun lt!534039 () tuple4!784)

(declare-fun get!4790 (Option!2976) tuple2!15524)

(assert (=> b!1539751 (= lt!534038 (get!4790 (_1!8933 lt!534039)))))

(declare-fun b!1539752 () Bool)

(declare-fun e!985526 () Bool)

(assert (=> b!1539752 (= e!985526 e!985528)))

(declare-fun mapIsEmpty!7608 () Bool)

(declare-fun mapRes!7608 () Bool)

(assert (=> mapIsEmpty!7608 mapRes!7608))

(declare-fun b!1539753 () Bool)

(declare-fun e!985553 () Bool)

(declare-fun e!985538 () Bool)

(assert (=> b!1539753 (= e!985553 e!985538)))

(declare-fun b!1539754 () Bool)

(declare-fun res!689734 () Bool)

(assert (=> b!1539754 (=> (not res!689734) (not e!985555))))

(declare-fun valid!1309 (CacheUp!938) Bool)

(assert (=> b!1539754 (= res!689734 (valid!1309 cacheUp!695))))

(declare-fun b!1539755 () Bool)

(declare-fun e!985527 () Bool)

(declare-fun totalInput!496 () BalanceConc!10946)

(declare-fun tp!445784 () Bool)

(declare-fun inv!21683 (Conc!5502) Bool)

(assert (=> b!1539755 (= e!985527 (and (inv!21683 (c!251676 totalInput!496)) tp!445784))))

(declare-fun mapIsEmpty!7609 () Bool)

(declare-fun mapRes!7610 () Bool)

(assert (=> mapIsEmpty!7609 mapRes!7610))

(declare-fun b!1539756 () Bool)

(declare-fun tp!445791 () Bool)

(assert (=> b!1539756 (= e!985522 (and tp!445791 mapRes!7608))))

(declare-fun condMapEmpty!7608 () Bool)

(declare-fun mapDefault!7608 () List!16495)

(assert (=> b!1539756 (= condMapEmpty!7608 (= (arr!2503 (_values!1897 (v!23240 (underlying!3445 (v!23241 (underlying!3446 (cache!1943 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16495)) mapDefault!7608)))))

(declare-fun b!1539757 () Bool)

(declare-fun tp!445801 () Bool)

(assert (=> b!1539757 (= e!985550 (and tp!445801 mapRes!7610))))

(declare-fun condMapEmpty!7610 () Bool)

(declare-fun mapDefault!7610 () List!16494)

(assert (=> b!1539757 (= condMapEmpty!7610 (= (arr!2501 (_values!1896 (v!23238 (underlying!3443 (v!23239 (underlying!3444 (cache!1942 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16494)) mapDefault!7610)))))

(declare-fun b!1539758 () Bool)

(declare-fun e!985532 () Bool)

(declare-fun input!1460 () BalanceConc!10946)

(declare-fun tp!445807 () Bool)

(assert (=> b!1539758 (= e!985532 (and (inv!21683 (c!251676 input!1460)) tp!445807))))

(declare-fun b!1539759 () Bool)

(declare-fun e!985549 () Bool)

(assert (=> b!1539759 (= e!985549 e!985555)))

(declare-fun res!689730 () Bool)

(assert (=> b!1539759 (=> (not res!689730) (not e!985555))))

(declare-fun lt!534040 () List!16497)

(declare-fun isSuffix!332 (List!16497 List!16497) Bool)

(declare-fun list!6428 (BalanceConc!10946) List!16497)

(assert (=> b!1539759 (= res!689730 (isSuffix!332 lt!534040 (list!6428 totalInput!496)))))

(assert (=> b!1539759 (= lt!534040 (list!6428 input!1460))))

(declare-fun b!1539760 () Bool)

(declare-fun e!985533 () tuple4!784)

(declare-datatypes ((tuple2!15530 0))(
  ( (tuple2!15531 (_1!8934 Option!2976) (_2!8934 Option!2976)) )
))
(declare-fun lt!534031 () tuple2!15530)

(declare-datatypes ((tuple4!786 0))(
  ( (tuple4!787 (_1!8935 Option!2976) (_2!8935 CacheUp!938) (_3!1169 CacheDown!946) (_4!393 CacheFurthestNullable!366)) )
))
(declare-fun lt!534042 () tuple4!786)

(get-info :version)

(assert (=> b!1539760 (= e!985533 (tuple4!785 (ite (and ((_ is None!2975) (_1!8934 lt!534031)) ((_ is None!2975) (_2!8934 lt!534031))) None!2975 (ite ((_ is None!2975) (_2!8934 lt!534031)) (_1!8934 lt!534031) (ite ((_ is None!2975) (_1!8934 lt!534031)) (_2!8934 lt!534031) (ite (>= (size!13273 (_1!8929 (v!23243 (_1!8934 lt!534031)))) (size!13273 (_1!8929 (v!23243 (_2!8934 lt!534031))))) (_1!8934 lt!534031) (_2!8934 lt!534031))))) (_2!8935 lt!534042) (_4!393 lt!534042) (_3!1169 lt!534042)))))

(declare-fun lt!534030 () tuple4!786)

(declare-fun call!101582 () tuple4!786)

(assert (=> b!1539760 (= lt!534030 call!101582)))

(declare-datatypes ((List!16499 0))(
  ( (Nil!16431) (Cons!16431 (h!21832 Rule!5570) (t!140705 List!16499)) )
))
(declare-fun rulesArg!359 () List!16499)

(declare-datatypes ((LexerInterface!2535 0))(
  ( (LexerInterfaceExt!2532 (__x!10542 Int)) (Lexer!2533) )
))
(declare-fun thiss!15733 () LexerInterface!2535)

(declare-fun maxPrefixZipperSequenceV3Mem!42 (LexerInterface!2535 List!16499 BalanceConc!10946 BalanceConc!10946 CacheUp!938 CacheDown!946 CacheFurthestNullable!366) tuple4!786)

(assert (=> b!1539760 (= lt!534042 (maxPrefixZipperSequenceV3Mem!42 thiss!15733 (t!140705 rulesArg!359) input!1460 totalInput!496 (_2!8935 lt!534030) (_3!1169 lt!534030) (_4!393 lt!534030)))))

(assert (=> b!1539760 (= lt!534031 (tuple2!15531 (_1!8935 lt!534030) (_1!8935 lt!534042)))))

(declare-fun b!1539761 () Bool)

(assert (=> b!1539761 (= e!985555 (not e!985530))))

(declare-fun res!689726 () Bool)

(assert (=> b!1539761 (=> res!689726 e!985530)))

(declare-fun isDefined!2385 (Option!2975) Bool)

(assert (=> b!1539761 (= res!689726 (not (= lt!534028 (isDefined!2385 lt!534029))))))

(declare-fun isDefined!2386 (Option!2976) Bool)

(assert (=> b!1539761 (= lt!534028 (isDefined!2386 (_1!8933 lt!534039)))))

(declare-fun maxPrefixZipper!272 (LexerInterface!2535 List!16499 List!16497) Option!2975)

(assert (=> b!1539761 (= lt!534029 (maxPrefixZipper!272 thiss!15733 rulesArg!359 lt!534040))))

(assert (=> b!1539761 (= lt!534039 e!985533)))

(declare-fun c!251674 () Bool)

(assert (=> b!1539761 (= c!251674 (and ((_ is Cons!16431) rulesArg!359) ((_ is Nil!16431) (t!140705 rulesArg!359))))))

(declare-fun isPrefix!1246 (List!16497 List!16497) Bool)

(assert (=> b!1539761 (isPrefix!1246 lt!534040 lt!534040)))

(declare-datatypes ((Unit!25878 0))(
  ( (Unit!25879) )
))
(declare-fun lt!534036 () Unit!25878)

(declare-fun lemmaIsPrefixRefl!876 (List!16497 List!16497) Unit!25878)

(assert (=> b!1539761 (= lt!534036 (lemmaIsPrefixRefl!876 lt!534040 lt!534040))))

(declare-fun b!1539762 () Bool)

(declare-fun e!985544 () Bool)

(declare-fun tp!445798 () Bool)

(declare-fun mapRes!7609 () Bool)

(assert (=> b!1539762 (= e!985544 (and tp!445798 mapRes!7609))))

(declare-fun condMapEmpty!7609 () Bool)

(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!366)

(declare-fun mapDefault!7609 () List!16498)

(assert (=> b!1539762 (= condMapEmpty!7609 (= (arr!2504 (_values!1898 (v!23244 (underlying!3447 (v!23245 (underlying!3448 (cache!1944 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16498)) mapDefault!7609)))))

(declare-fun b!1539763 () Bool)

(declare-fun e!985523 () Bool)

(declare-fun lt!534037 () MutLongMap!1617)

(assert (=> b!1539763 (= e!985556 (and e!985523 ((_ is LongMap!1617) lt!534037)))))

(assert (=> b!1539763 (= lt!534037 (v!23239 (underlying!3444 (cache!1942 cacheUp!695))))))

(declare-fun b!1539764 () Bool)

(declare-fun e!985543 () Bool)

(declare-fun e!985521 () Bool)

(declare-fun lt!534033 () MutLongMap!1618)

(assert (=> b!1539764 (= e!985543 (and e!985521 ((_ is LongMap!1618) lt!534033)))))

(assert (=> b!1539764 (= lt!534033 (v!23241 (underlying!3446 (cache!1943 cacheDown!708))))))

(declare-fun b!1539765 () Bool)

(declare-fun e!985548 () Bool)

(declare-fun tp!445796 () Bool)

(assert (=> b!1539765 (= e!985548 (and (inv!21683 (c!251676 (totalInput!2375 cacheFurthestNullable!81))) tp!445796))))

(declare-fun b!1539766 () Bool)

(declare-fun res!689728 () Bool)

(assert (=> b!1539766 (=> (not res!689728) (not e!985549))))

(declare-fun rulesValidInductive!885 (LexerInterface!2535 List!16499) Bool)

(assert (=> b!1539766 (= res!689728 (rulesValidInductive!885 thiss!15733 rulesArg!359))))

(declare-fun b!1539767 () Bool)

(declare-fun e!985541 () Bool)

(declare-fun e!985539 () Bool)

(declare-fun tp!445805 () Bool)

(assert (=> b!1539767 (= e!985541 (and e!985539 tp!445805))))

(declare-fun b!1539746 () Bool)

(declare-fun e!985524 () Bool)

(assert (=> b!1539746 (= e!985538 e!985524)))

(declare-fun res!689724 () Bool)

(assert (=> start!143042 (=> (not res!689724) (not e!985549))))

(assert (=> start!143042 (= res!689724 ((_ is Lexer!2533) thiss!15733))))

(assert (=> start!143042 e!985549))

(declare-fun inv!21684 (CacheUp!938) Bool)

(assert (=> start!143042 (and (inv!21684 cacheUp!695) e!985526)))

(declare-fun inv!21685 (BalanceConc!10946) Bool)

(assert (=> start!143042 (and (inv!21685 input!1460) e!985532)))

(declare-fun inv!21686 (CacheDown!946) Bool)

(assert (=> start!143042 (and (inv!21686 cacheDown!708) e!985525)))

(assert (=> start!143042 true))

(assert (=> start!143042 (and (inv!21685 totalInput!496) e!985527)))

(assert (=> start!143042 e!985541))

(declare-fun e!985536 () Bool)

(declare-fun inv!21687 (CacheFurthestNullable!366) Bool)

(assert (=> start!143042 (and (inv!21687 cacheFurthestNullable!81) e!985536)))

(declare-fun mapNonEmpty!7608 () Bool)

(declare-fun tp!445811 () Bool)

(declare-fun tp!445810 () Bool)

(assert (=> mapNonEmpty!7608 (= mapRes!7609 (and tp!445811 tp!445810))))

(declare-fun mapValue!7610 () List!16498)

(declare-fun mapKey!7608 () (_ BitVec 32))

(declare-fun mapRest!7608 () (Array (_ BitVec 32) List!16498))

(assert (=> mapNonEmpty!7608 (= (arr!2504 (_values!1898 (v!23244 (underlying!3447 (v!23245 (underlying!3448 (cache!1944 cacheFurthestNullable!81))))))) (store mapRest!7608 mapKey!7608 mapValue!7610))))

(declare-fun b!1539768 () Bool)

(declare-fun e!985537 () Bool)

(declare-fun lt!534034 () MutLongMap!1619)

(assert (=> b!1539768 (= e!985537 (and e!985553 ((_ is LongMap!1619) lt!534034)))))

(assert (=> b!1539768 (= lt!534034 (v!23245 (underlying!3448 (cache!1944 cacheFurthestNullable!81))))))

(declare-fun mapIsEmpty!7610 () Bool)

(assert (=> mapIsEmpty!7610 mapRes!7609))

(declare-fun tp!445802 () Bool)

(declare-fun tp!445809 () Bool)

(declare-fun array_inv!1802 (array!5626) Bool)

(assert (=> b!1539769 (= e!985524 (and tp!445789 tp!445809 tp!445802 (array_inv!1799 (_keys!1913 (v!23244 (underlying!3447 (v!23245 (underlying!3448 (cache!1944 cacheFurthestNullable!81))))))) (array_inv!1802 (_values!1898 (v!23244 (underlying!3447 (v!23245 (underlying!3448 (cache!1944 cacheFurthestNullable!81))))))) e!985544))))

(declare-fun bm!101577 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!32 (LexerInterface!2535 Rule!5570 BalanceConc!10946 BalanceConc!10946 CacheUp!938 CacheDown!946 CacheFurthestNullable!366) tuple4!786)

(assert (=> bm!101577 (= call!101582 (maxPrefixOneRuleZipperSequenceV3Mem!32 thiss!15733 (h!21832 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(assert (=> b!1539770 (= e!985546 (and e!985543 tp!445797))))

(declare-fun b!1539771 () Bool)

(declare-fun e!985534 () Bool)

(assert (=> b!1539771 (= e!985523 e!985534)))

(declare-fun b!1539772 () Bool)

(assert (=> b!1539772 (= e!985521 e!985552)))

(declare-fun b!1539773 () Bool)

(declare-fun e!985545 () Bool)

(assert (=> b!1539773 (= e!985536 (and e!985545 (inv!21685 (totalInput!2375 cacheFurthestNullable!81)) e!985548))))

(assert (=> b!1539774 (= e!985545 (and e!985537 tp!445785))))

(declare-fun b!1539775 () Bool)

(assert (=> b!1539775 (= e!985542 (= (list!6428 (_2!8929 lt!534038)) (_2!8930 lt!534041)))))

(declare-fun b!1539776 () Bool)

(declare-fun res!689731 () Bool)

(assert (=> b!1539776 (=> (not res!689731) (not e!985555))))

(assert (=> b!1539776 (= res!689731 (= (totalInput!2375 cacheFurthestNullable!81) totalInput!496))))

(declare-fun mapNonEmpty!7609 () Bool)

(declare-fun tp!445787 () Bool)

(declare-fun tp!445803 () Bool)

(assert (=> mapNonEmpty!7609 (= mapRes!7608 (and tp!445787 tp!445803))))

(declare-fun mapRest!7609 () (Array (_ BitVec 32) List!16495))

(declare-fun mapKey!7609 () (_ BitVec 32))

(declare-fun mapValue!7608 () List!16495)

(assert (=> mapNonEmpty!7609 (= (arr!2503 (_values!1897 (v!23240 (underlying!3445 (v!23241 (underlying!3446 (cache!1943 cacheDown!708))))))) (store mapRest!7609 mapKey!7609 mapValue!7608))))

(declare-fun e!985551 () Bool)

(assert (=> b!1539777 (= e!985551 (and tp!445804 tp!445793))))

(declare-fun tp!445800 () Bool)

(declare-fun b!1539778 () Bool)

(declare-fun inv!21680 (String!19155) Bool)

(declare-fun inv!21688 (TokenValueInjection!5610) Bool)

(assert (=> b!1539778 (= e!985539 (and tp!445800 (inv!21680 (tag!3149 (h!21832 rulesArg!359))) (inv!21688 (transformation!2885 (h!21832 rulesArg!359))) e!985551))))

(declare-fun b!1539779 () Bool)

(assert (=> b!1539779 (= e!985534 e!985529)))

(declare-fun b!1539780 () Bool)

(declare-fun res!689732 () Bool)

(assert (=> b!1539780 (=> (not res!689732) (not e!985555))))

(declare-fun valid!1310 (CacheFurthestNullable!366) Bool)

(assert (=> b!1539780 (= res!689732 (valid!1310 cacheFurthestNullable!81))))

(declare-fun b!1539781 () Bool)

(declare-fun res!689729 () Bool)

(assert (=> b!1539781 (=> (not res!689729) (not e!985549))))

(declare-fun isEmpty!10021 (List!16499) Bool)

(assert (=> b!1539781 (= res!689729 (not (isEmpty!10021 rulesArg!359)))))

(declare-fun mapNonEmpty!7610 () Bool)

(declare-fun tp!445795 () Bool)

(declare-fun tp!445788 () Bool)

(assert (=> mapNonEmpty!7610 (= mapRes!7610 (and tp!445795 tp!445788))))

(declare-fun mapKey!7610 () (_ BitVec 32))

(declare-fun mapValue!7609 () List!16494)

(declare-fun mapRest!7610 () (Array (_ BitVec 32) List!16494))

(assert (=> mapNonEmpty!7610 (= (arr!2501 (_values!1896 (v!23238 (underlying!3443 (v!23239 (underlying!3444 (cache!1942 cacheUp!695))))))) (store mapRest!7610 mapKey!7610 mapValue!7609))))

(declare-fun b!1539782 () Bool)

(declare-fun lt!534032 () tuple4!786)

(assert (=> b!1539782 (= e!985533 (tuple4!785 (_1!8935 lt!534032) (_2!8935 lt!534032) (_4!393 lt!534032) (_3!1169 lt!534032)))))

(assert (=> b!1539782 (= lt!534032 call!101582)))

(assert (= (and start!143042 res!689724) b!1539766))

(assert (= (and b!1539766 res!689728) b!1539781))

(assert (= (and b!1539781 res!689729) b!1539759))

(assert (= (and b!1539759 res!689730) b!1539754))

(assert (= (and b!1539754 res!689734) b!1539744))

(assert (= (and b!1539744 res!689727) b!1539780))

(assert (= (and b!1539780 res!689732) b!1539776))

(assert (= (and b!1539776 res!689731) b!1539761))

(assert (= (and b!1539761 c!251674) b!1539782))

(assert (= (and b!1539761 (not c!251674)) b!1539760))

(assert (= (or b!1539782 b!1539760) bm!101577))

(assert (= (and b!1539761 (not res!689726)) b!1539749))

(assert (= (and b!1539749 (not res!689733)) b!1539751))

(assert (= (and b!1539751 res!689725) b!1539775))

(assert (= (and b!1539757 condMapEmpty!7610) mapIsEmpty!7609))

(assert (= (and b!1539757 (not condMapEmpty!7610)) mapNonEmpty!7610))

(assert (= b!1539743 b!1539757))

(assert (= b!1539779 b!1539743))

(assert (= b!1539771 b!1539779))

(assert (= (and b!1539763 ((_ is LongMap!1617) (v!23239 (underlying!3444 (cache!1942 cacheUp!695))))) b!1539771))

(assert (= b!1539748 b!1539763))

(assert (= (and b!1539752 ((_ is HashMap!1561) (cache!1942 cacheUp!695))) b!1539748))

(assert (= start!143042 b!1539752))

(assert (= start!143042 b!1539758))

(assert (= (and b!1539756 condMapEmpty!7608) mapIsEmpty!7608))

(assert (= (and b!1539756 (not condMapEmpty!7608)) mapNonEmpty!7609))

(assert (= b!1539747 b!1539756))

(assert (= b!1539750 b!1539747))

(assert (= b!1539772 b!1539750))

(assert (= (and b!1539764 ((_ is LongMap!1618) (v!23241 (underlying!3446 (cache!1943 cacheDown!708))))) b!1539772))

(assert (= b!1539770 b!1539764))

(assert (= (and b!1539745 ((_ is HashMap!1562) (cache!1943 cacheDown!708))) b!1539770))

(assert (= start!143042 b!1539745))

(assert (= start!143042 b!1539755))

(assert (= b!1539778 b!1539777))

(assert (= b!1539767 b!1539778))

(assert (= (and start!143042 ((_ is Cons!16431) rulesArg!359)) b!1539767))

(assert (= (and b!1539762 condMapEmpty!7609) mapIsEmpty!7610))

(assert (= (and b!1539762 (not condMapEmpty!7609)) mapNonEmpty!7608))

(assert (= b!1539769 b!1539762))

(assert (= b!1539746 b!1539769))

(assert (= b!1539753 b!1539746))

(assert (= (and b!1539768 ((_ is LongMap!1619) (v!23245 (underlying!3448 (cache!1944 cacheFurthestNullable!81))))) b!1539753))

(assert (= b!1539774 b!1539768))

(assert (= (and b!1539773 ((_ is HashMap!1563) (cache!1944 cacheFurthestNullable!81))) b!1539774))

(assert (= b!1539773 b!1539765))

(assert (= start!143042 b!1539773))

(declare-fun m!1813882 () Bool)

(assert (=> b!1539754 m!1813882))

(declare-fun m!1813884 () Bool)

(assert (=> b!1539780 m!1813884))

(declare-fun m!1813886 () Bool)

(assert (=> bm!101577 m!1813886))

(declare-fun m!1813888 () Bool)

(assert (=> b!1539775 m!1813888))

(declare-fun m!1813890 () Bool)

(assert (=> b!1539765 m!1813890))

(declare-fun m!1813892 () Bool)

(assert (=> b!1539744 m!1813892))

(declare-fun m!1813894 () Bool)

(assert (=> b!1539781 m!1813894))

(declare-fun m!1813896 () Bool)

(assert (=> b!1539769 m!1813896))

(declare-fun m!1813898 () Bool)

(assert (=> b!1539769 m!1813898))

(declare-fun m!1813900 () Bool)

(assert (=> b!1539747 m!1813900))

(declare-fun m!1813902 () Bool)

(assert (=> b!1539747 m!1813902))

(declare-fun m!1813904 () Bool)

(assert (=> b!1539759 m!1813904))

(assert (=> b!1539759 m!1813904))

(declare-fun m!1813906 () Bool)

(assert (=> b!1539759 m!1813906))

(declare-fun m!1813908 () Bool)

(assert (=> b!1539759 m!1813908))

(declare-fun m!1813910 () Bool)

(assert (=> b!1539766 m!1813910))

(declare-fun m!1813912 () Bool)

(assert (=> b!1539758 m!1813912))

(declare-fun m!1813914 () Bool)

(assert (=> b!1539760 m!1813914))

(declare-fun m!1813916 () Bool)

(assert (=> b!1539743 m!1813916))

(declare-fun m!1813918 () Bool)

(assert (=> b!1539743 m!1813918))

(declare-fun m!1813920 () Bool)

(assert (=> b!1539778 m!1813920))

(declare-fun m!1813922 () Bool)

(assert (=> b!1539778 m!1813922))

(declare-fun m!1813924 () Bool)

(assert (=> b!1539773 m!1813924))

(declare-fun m!1813926 () Bool)

(assert (=> mapNonEmpty!7610 m!1813926))

(declare-fun m!1813928 () Bool)

(assert (=> mapNonEmpty!7609 m!1813928))

(declare-fun m!1813930 () Bool)

(assert (=> b!1539761 m!1813930))

(declare-fun m!1813932 () Bool)

(assert (=> b!1539761 m!1813932))

(declare-fun m!1813934 () Bool)

(assert (=> b!1539761 m!1813934))

(declare-fun m!1813936 () Bool)

(assert (=> b!1539761 m!1813936))

(declare-fun m!1813938 () Bool)

(assert (=> b!1539761 m!1813938))

(declare-fun m!1813940 () Bool)

(assert (=> start!143042 m!1813940))

(declare-fun m!1813942 () Bool)

(assert (=> start!143042 m!1813942))

(declare-fun m!1813944 () Bool)

(assert (=> start!143042 m!1813944))

(declare-fun m!1813946 () Bool)

(assert (=> start!143042 m!1813946))

(declare-fun m!1813948 () Bool)

(assert (=> start!143042 m!1813948))

(declare-fun m!1813950 () Bool)

(assert (=> mapNonEmpty!7608 m!1813950))

(declare-fun m!1813952 () Bool)

(assert (=> b!1539751 m!1813952))

(declare-fun m!1813954 () Bool)

(assert (=> b!1539751 m!1813954))

(declare-fun m!1813956 () Bool)

(assert (=> b!1539755 m!1813956))

(check-sat (not b_next!40925) (not mapNonEmpty!7609) (not b_next!40931) (not b!1539773) (not b!1539758) (not b_next!40921) b_and!107097 (not b!1539759) (not b!1539780) (not b!1539769) (not b!1539754) (not b!1539762) (not b_next!40927) (not b!1539747) (not b!1539760) (not b_next!40919) b_and!107095 (not mapNonEmpty!7610) (not b!1539756) (not b!1539744) (not b!1539743) (not b!1539775) b_and!107103 b_and!107107 (not bm!101577) (not b!1539767) (not b!1539781) (not b!1539755) (not b!1539778) b_and!107099 b_and!107105 (not b!1539765) (not b_next!40929) (not start!143042) b_and!107093 (not b!1539757) (not b!1539761) (not mapNonEmpty!7608) (not b!1539766) (not b_next!40933) b_and!107101 (not b!1539751) (not b_next!40923))
(check-sat (not b_next!40925) (not b_next!40931) b_and!107103 (not b_next!40921) b_and!107107 b_and!107099 b_and!107097 b_and!107105 (not b_next!40929) b_and!107093 (not b_next!40927) (not b_next!40923) (not b_next!40919) b_and!107095 (not b_next!40933) b_and!107101)
