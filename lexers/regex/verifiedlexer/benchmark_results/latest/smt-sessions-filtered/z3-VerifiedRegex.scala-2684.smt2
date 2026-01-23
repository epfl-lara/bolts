; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!144364 () Bool)

(assert start!144364)

(declare-fun b!1556575 () Bool)

(declare-fun b_free!41415 () Bool)

(declare-fun b_next!42119 () Bool)

(assert (=> b!1556575 (= b_free!41415 (not b_next!42119))))

(declare-fun tp!456554 () Bool)

(declare-fun b_and!108597 () Bool)

(assert (=> b!1556575 (= tp!456554 b_and!108597)))

(declare-fun b!1556539 () Bool)

(declare-fun b_free!41417 () Bool)

(declare-fun b_next!42121 () Bool)

(assert (=> b!1556539 (= b_free!41417 (not b_next!42121))))

(declare-fun tp!456577 () Bool)

(declare-fun b_and!108599 () Bool)

(assert (=> b!1556539 (= tp!456577 b_and!108599)))

(declare-fun b_free!41419 () Bool)

(declare-fun b_next!42123 () Bool)

(assert (=> b!1556539 (= b_free!41419 (not b_next!42123))))

(declare-fun tp!456561 () Bool)

(declare-fun b_and!108601 () Bool)

(assert (=> b!1556539 (= tp!456561 b_and!108601)))

(declare-fun b!1556572 () Bool)

(declare-fun b_free!41421 () Bool)

(declare-fun b_next!42125 () Bool)

(assert (=> b!1556572 (= b_free!41421 (not b_next!42125))))

(declare-fun tp!456578 () Bool)

(declare-fun b_and!108603 () Bool)

(assert (=> b!1556572 (= tp!456578 b_and!108603)))

(declare-fun b!1556544 () Bool)

(declare-fun b_free!41423 () Bool)

(declare-fun b_next!42127 () Bool)

(assert (=> b!1556544 (= b_free!41423 (not b_next!42127))))

(declare-fun tp!456571 () Bool)

(declare-fun b_and!108605 () Bool)

(assert (=> b!1556544 (= tp!456571 b_and!108605)))

(declare-fun b!1556574 () Bool)

(declare-fun b_free!41425 () Bool)

(declare-fun b_next!42129 () Bool)

(assert (=> b!1556574 (= b_free!41425 (not b_next!42129))))

(declare-fun tp!456569 () Bool)

(declare-fun b_and!108607 () Bool)

(assert (=> b!1556574 (= tp!456569 b_and!108607)))

(declare-fun b!1556552 () Bool)

(declare-fun b_free!41427 () Bool)

(declare-fun b_next!42131 () Bool)

(assert (=> b!1556552 (= b_free!41427 (not b_next!42131))))

(declare-fun tp!456552 () Bool)

(declare-fun b_and!108609 () Bool)

(assert (=> b!1556552 (= tp!456552 b_and!108609)))

(declare-fun b!1556541 () Bool)

(declare-fun b_free!41429 () Bool)

(declare-fun b_next!42133 () Bool)

(assert (=> b!1556541 (= b_free!41429 (not b_next!42133))))

(declare-fun tp!456564 () Bool)

(declare-fun b_and!108611 () Bool)

(assert (=> b!1556541 (= tp!456564 b_and!108611)))

(declare-fun b!1556585 () Bool)

(declare-fun e!998870 () Bool)

(assert (=> b!1556585 (= e!998870 true)))

(declare-fun b!1556584 () Bool)

(declare-fun e!998869 () Bool)

(assert (=> b!1556584 (= e!998869 e!998870)))

(declare-fun b!1556546 () Bool)

(assert (=> b!1556546 e!998869))

(assert (= b!1556584 b!1556585))

(assert (= b!1556546 b!1556584))

(declare-datatypes ((List!16905 0))(
  ( (Nil!16837) (Cons!16837 (h!22238 (_ BitVec 16)) (t!141384 List!16905)) )
))
(declare-datatypes ((TokenValue!3041 0))(
  ( (FloatLiteralValue!6082 (text!21732 List!16905)) (TokenValueExt!3040 (__x!11223 Int)) (Broken!15205 (value!93714 List!16905)) (Object!3108) (End!3041) (Def!3041) (Underscore!3041) (Match!3041) (Else!3041) (Error!3041) (Case!3041) (If!3041) (Extends!3041) (Abstract!3041) (Class!3041) (Val!3041) (DelimiterValue!6082 (del!3101 List!16905)) (KeywordValue!3047 (value!93715 List!16905)) (CommentValue!6082 (value!93716 List!16905)) (WhitespaceValue!6082 (value!93717 List!16905)) (IndentationValue!3041 (value!93718 List!16905)) (String!19492) (Int32!3041) (Broken!15206 (value!93719 List!16905)) (Boolean!3042) (Unit!26081) (OperatorValue!3044 (op!3101 List!16905)) (IdentifierValue!6082 (value!93720 List!16905)) (IdentifierValue!6083 (value!93721 List!16905)) (WhitespaceValue!6083 (value!93722 List!16905)) (True!6082) (False!6082) (Broken!15207 (value!93723 List!16905)) (Broken!15208 (value!93724 List!16905)) (True!6083) (RightBrace!3041) (RightBracket!3041) (Colon!3041) (Null!3041) (Comma!3041) (LeftBracket!3041) (False!6083) (LeftBrace!3041) (ImaginaryLiteralValue!3041 (text!21733 List!16905)) (StringLiteralValue!9123 (value!93725 List!16905)) (EOFValue!3041 (value!93726 List!16905)) (IdentValue!3041 (value!93727 List!16905)) (DelimiterValue!6083 (value!93728 List!16905)) (DedentValue!3041 (value!93729 List!16905)) (NewLineValue!3041 (value!93730 List!16905)) (IntegerValue!9123 (value!93731 (_ BitVec 32)) (text!21734 List!16905)) (IntegerValue!9124 (value!93732 Int) (text!21735 List!16905)) (Times!3041) (Or!3041) (Equal!3041) (Minus!3041) (Broken!15209 (value!93733 List!16905)) (And!3041) (Div!3041) (LessEqual!3041) (Mod!3041) (Concat!7320) (Not!3041) (Plus!3041) (SpaceValue!3041 (value!93734 List!16905)) (IntegerValue!9125 (value!93735 Int) (text!21736 List!16905)) (StringLiteralValue!9124 (text!21737 List!16905)) (FloatLiteralValue!6083 (text!21738 List!16905)) (BytesLiteralValue!3041 (value!93736 List!16905)) (CommentValue!6083 (value!93737 List!16905)) (StringLiteralValue!9125 (value!93738 List!16905)) (ErrorTokenValue!3041 (msg!3102 List!16905)) )
))
(declare-datatypes ((C!8736 0))(
  ( (C!8737 (val!4940 Int)) )
))
(declare-datatypes ((List!16906 0))(
  ( (Nil!16838) (Cons!16838 (h!22239 C!8736) (t!141385 List!16906)) )
))
(declare-datatypes ((IArray!11143 0))(
  ( (IArray!11144 (innerList!5629 List!16906)) )
))
(declare-datatypes ((Conc!5569 0))(
  ( (Node!5569 (left!13683 Conc!5569) (right!14013 Conc!5569) (csize!11368 Int) (cheight!5780 Int)) (Leaf!8254 (xs!8369 IArray!11143) (csize!11369 Int)) (Empty!5569) )
))
(declare-datatypes ((BalanceConc!11080 0))(
  ( (BalanceConc!11081 (c!252851 Conc!5569)) )
))
(declare-datatypes ((Regex!4279 0))(
  ( (ElementMatch!4279 (c!252852 C!8736)) (Concat!7321 (regOne!9070 Regex!4279) (regTwo!9070 Regex!4279)) (EmptyExpr!4279) (Star!4279 (reg!4608 Regex!4279)) (EmptyLang!4279) (Union!4279 (regOne!9071 Regex!4279) (regTwo!9071 Regex!4279)) )
))
(declare-datatypes ((String!19493 0))(
  ( (String!19494 (value!93739 String)) )
))
(declare-datatypes ((TokenValueInjection!5742 0))(
  ( (TokenValueInjection!5743 (toValue!4324 Int) (toChars!4183 Int)) )
))
(declare-datatypes ((Rule!5702 0))(
  ( (Rule!5703 (regex!2951 Regex!4279) (tag!3215 String!19493) (isSeparator!2951 Bool) (transformation!2951 TokenValueInjection!5742)) )
))
(declare-fun rule!240 () Rule!5702)

(declare-fun order!9925 () Int)

(declare-fun order!9923 () Int)

(declare-fun lambda!65901 () Int)

(declare-fun dynLambda!7471 (Int Int) Int)

(declare-fun dynLambda!7472 (Int Int) Int)

(assert (=> b!1556585 (< (dynLambda!7471 order!9923 (toValue!4324 (transformation!2951 rule!240))) (dynLambda!7472 order!9925 lambda!65901))))

(declare-fun order!9927 () Int)

(declare-fun dynLambda!7473 (Int Int) Int)

(assert (=> b!1556585 (< (dynLambda!7473 order!9927 (toChars!4183 (transformation!2951 rule!240))) (dynLambda!7472 order!9925 lambda!65901))))

(declare-fun mapIsEmpty!8415 () Bool)

(declare-fun mapRes!8415 () Bool)

(assert (=> mapIsEmpty!8415 mapRes!8415))

(declare-fun b!1556537 () Bool)

(declare-fun e!998832 () Bool)

(declare-fun e!998836 () Bool)

(assert (=> b!1556537 (= e!998832 e!998836)))

(declare-fun res!694675 () Bool)

(assert (=> b!1556537 (=> (not res!694675) (not e!998836))))

(declare-fun lt!539010 () List!16906)

(declare-fun totalInput!568 () BalanceConc!11080)

(declare-fun isSuffix!378 (List!16906 List!16906) Bool)

(declare-fun list!6498 (BalanceConc!11080) List!16906)

(assert (=> b!1556537 (= res!694675 (isSuffix!378 lt!539010 (list!6498 totalInput!568)))))

(declare-fun input!1676 () BalanceConc!11080)

(assert (=> b!1556537 (= lt!539010 (list!6498 input!1676))))

(declare-fun b!1556538 () Bool)

(declare-fun res!694683 () Bool)

(declare-fun e!998851 () Bool)

(assert (=> b!1556538 (=> res!694683 e!998851)))

(declare-fun lt!539021 () Bool)

(assert (=> b!1556538 (= res!694683 (not lt!539021))))

(declare-fun e!998855 () Bool)

(assert (=> b!1556539 (= e!998855 (and tp!456577 tp!456561))))

(declare-fun b!1556540 () Bool)

(declare-fun e!998833 () Bool)

(declare-datatypes ((tuple2!16328 0))(
  ( (tuple2!16329 (_1!9514 List!16906) (_2!9514 List!16906)) )
))
(declare-fun lt!539015 () tuple2!16328)

(declare-fun matchR!1881 (Regex!4279 List!16906) Bool)

(assert (=> b!1556540 (= e!998833 (matchR!1881 (regex!2951 rule!240) (_1!9514 lt!539015)))))

(declare-datatypes ((List!16907 0))(
  ( (Nil!16839) (Cons!16839 (h!22240 Regex!4279) (t!141386 List!16907)) )
))
(declare-datatypes ((Context!1594 0))(
  ( (Context!1595 (exprs!1297 List!16907)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1802 0))(
  ( (tuple3!1803 (_1!9515 (InoxSet Context!1594)) (_2!9515 Int) (_3!1350 Int)) )
))
(declare-datatypes ((tuple2!16330 0))(
  ( (tuple2!16331 (_1!9516 tuple3!1802) (_2!9516 Int)) )
))
(declare-datatypes ((List!16908 0))(
  ( (Nil!16840) (Cons!16840 (h!22241 tuple2!16330) (t!141387 List!16908)) )
))
(declare-datatypes ((array!6198 0))(
  ( (array!6199 (arr!2762 (Array (_ BitVec 32) List!16908)) (size!13639 (_ BitVec 32))) )
))
(declare-datatypes ((array!6200 0))(
  ( (array!6201 (arr!2763 (Array (_ BitVec 32) (_ BitVec 64))) (size!13640 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3616 0))(
  ( (LongMapFixedSize!3617 (defaultEntry!2168 Int) (mask!5036 (_ BitVec 32)) (extraKeys!2055 (_ BitVec 32)) (zeroValue!2065 List!16908) (minValue!2065 List!16908) (_size!3697 (_ BitVec 32)) (_keys!2102 array!6200) (_values!2087 array!6198) (_vacant!1869 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7117 0))(
  ( (Cell!7118 (v!23686 LongMapFixedSize!3616)) )
))
(declare-datatypes ((Hashable!1752 0))(
  ( (HashableExt!1751 (__x!11224 Int)) )
))
(declare-datatypes ((MutLongMap!1808 0))(
  ( (LongMap!1808 (underlying!3825 Cell!7117)) (MutLongMapExt!1807 (__x!11225 Int)) )
))
(declare-datatypes ((Cell!7119 0))(
  ( (Cell!7120 (v!23687 MutLongMap!1808)) )
))
(declare-datatypes ((MutableMap!1752 0))(
  ( (MutableMapExt!1751 (__x!11226 Int)) (HashMap!1752 (underlying!3826 Cell!7119) (hashF!3671 Hashable!1752) (_size!3698 (_ BitVec 32)) (defaultValue!1912 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!494 0))(
  ( (CacheFurthestNullable!495 (cache!2133 MutableMap!1752) (totalInput!2470 BalanceConc!11080)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!494)

(declare-fun e!998834 () Bool)

(declare-fun e!998858 () Bool)

(declare-fun e!998856 () Bool)

(declare-fun b!1556542 () Bool)

(declare-fun inv!22121 (BalanceConc!11080) Bool)

(assert (=> b!1556542 (= e!998858 (and e!998856 (inv!22121 (totalInput!2470 cacheFurthestNullable!103)) e!998834))))

(declare-fun b!1556543 () Bool)

(declare-fun e!998841 () Bool)

(declare-fun tp!456559 () Bool)

(declare-fun inv!22122 (Conc!5569) Bool)

(assert (=> b!1556543 (= e!998841 (and (inv!22122 (c!252851 input!1676)) tp!456559))))

(declare-datatypes ((tuple2!16332 0))(
  ( (tuple2!16333 (_1!9517 Context!1594) (_2!9517 C!8736)) )
))
(declare-datatypes ((tuple2!16334 0))(
  ( (tuple2!16335 (_1!9518 tuple2!16332) (_2!9518 (InoxSet Context!1594))) )
))
(declare-datatypes ((List!16909 0))(
  ( (Nil!16841) (Cons!16841 (h!22242 tuple2!16334) (t!141388 List!16909)) )
))
(declare-datatypes ((array!6202 0))(
  ( (array!6203 (arr!2764 (Array (_ BitVec 32) List!16909)) (size!13641 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1753 0))(
  ( (HashableExt!1752 (__x!11227 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3618 0))(
  ( (LongMapFixedSize!3619 (defaultEntry!2169 Int) (mask!5037 (_ BitVec 32)) (extraKeys!2056 (_ BitVec 32)) (zeroValue!2066 List!16909) (minValue!2066 List!16909) (_size!3699 (_ BitVec 32)) (_keys!2103 array!6200) (_values!2088 array!6202) (_vacant!1870 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7121 0))(
  ( (Cell!7122 (v!23688 LongMapFixedSize!3618)) )
))
(declare-datatypes ((MutLongMap!1809 0))(
  ( (LongMap!1809 (underlying!3827 Cell!7121)) (MutLongMapExt!1808 (__x!11228 Int)) )
))
(declare-datatypes ((Cell!7123 0))(
  ( (Cell!7124 (v!23689 MutLongMap!1809)) )
))
(declare-datatypes ((MutableMap!1753 0))(
  ( (MutableMapExt!1752 (__x!11229 Int)) (HashMap!1753 (underlying!3828 Cell!7123) (hashF!3672 Hashable!1753) (_size!3700 (_ BitVec 32)) (defaultValue!1913 Int)) )
))
(declare-datatypes ((CacheUp!1066 0))(
  ( (CacheUp!1067 (cache!2134 MutableMap!1753)) )
))
(declare-fun cacheUp!755 () CacheUp!1066)

(declare-fun tp!456572 () Bool)

(declare-fun e!998839 () Bool)

(declare-fun e!998848 () Bool)

(declare-fun tp!456556 () Bool)

(declare-fun array_inv!1986 (array!6200) Bool)

(declare-fun array_inv!1987 (array!6202) Bool)

(assert (=> b!1556544 (= e!998839 (and tp!456571 tp!456556 tp!456572 (array_inv!1986 (_keys!2103 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755))))))) (array_inv!1987 (_values!2088 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755))))))) e!998848))))

(declare-fun b!1556545 () Bool)

(declare-fun e!998829 () Bool)

(assert (=> b!1556545 (= e!998836 e!998829)))

(declare-fun res!694674 () Bool)

(assert (=> b!1556545 (=> (not res!694674) (not e!998829))))

(declare-datatypes ((tuple3!1804 0))(
  ( (tuple3!1805 (_1!9519 Regex!4279) (_2!9519 Context!1594) (_3!1351 C!8736)) )
))
(declare-datatypes ((tuple2!16336 0))(
  ( (tuple2!16337 (_1!9520 tuple3!1804) (_2!9520 (InoxSet Context!1594))) )
))
(declare-datatypes ((List!16910 0))(
  ( (Nil!16842) (Cons!16842 (h!22243 tuple2!16336) (t!141389 List!16910)) )
))
(declare-datatypes ((array!6204 0))(
  ( (array!6205 (arr!2765 (Array (_ BitVec 32) List!16910)) (size!13642 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3620 0))(
  ( (LongMapFixedSize!3621 (defaultEntry!2170 Int) (mask!5038 (_ BitVec 32)) (extraKeys!2057 (_ BitVec 32)) (zeroValue!2067 List!16910) (minValue!2067 List!16910) (_size!3701 (_ BitVec 32)) (_keys!2104 array!6200) (_values!2089 array!6204) (_vacant!1871 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7125 0))(
  ( (Cell!7126 (v!23690 LongMapFixedSize!3620)) )
))
(declare-datatypes ((tuple2!16338 0))(
  ( (tuple2!16339 (_1!9521 BalanceConc!11080) (_2!9521 BalanceConc!11080)) )
))
(declare-datatypes ((MutLongMap!1810 0))(
  ( (LongMap!1810 (underlying!3829 Cell!7125)) (MutLongMapExt!1809 (__x!11230 Int)) )
))
(declare-datatypes ((Cell!7127 0))(
  ( (Cell!7128 (v!23691 MutLongMap!1810)) )
))
(declare-datatypes ((Hashable!1754 0))(
  ( (HashableExt!1753 (__x!11231 Int)) )
))
(declare-datatypes ((MutableMap!1754 0))(
  ( (MutableMapExt!1753 (__x!11232 Int)) (HashMap!1754 (underlying!3830 Cell!7127) (hashF!3673 Hashable!1754) (_size!3702 (_ BitVec 32)) (defaultValue!1914 Int)) )
))
(declare-datatypes ((CacheDown!1072 0))(
  ( (CacheDown!1073 (cache!2135 MutableMap!1754)) )
))
(declare-datatypes ((tuple4!898 0))(
  ( (tuple4!899 (_1!9522 tuple2!16338) (_2!9522 CacheUp!1066) (_3!1352 CacheDown!1072) (_4!449 CacheFurthestNullable!494)) )
))
(declare-fun lt!539014 () tuple4!898)

(declare-fun isEmpty!10124 (BalanceConc!11080) Bool)

(assert (=> b!1556545 (= res!694674 (not (isEmpty!10124 (_1!9521 (_1!9522 lt!539014)))))))

(declare-fun cacheDown!768 () CacheDown!1072)

(declare-fun findLongestMatchWithZipperSequenceV3Mem!52 (Regex!4279 BalanceConc!11080 BalanceConc!11080 CacheUp!1066 CacheDown!1072 CacheFurthestNullable!494) tuple4!898)

(assert (=> b!1556545 (= lt!539014 (findLongestMatchWithZipperSequenceV3Mem!52 (regex!2951 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun res!694673 () Bool)

(declare-fun e!998850 () Bool)

(assert (=> b!1556546 (=> res!694673 e!998850)))

(declare-fun Forall!611 (Int) Bool)

(assert (=> b!1556546 (= res!694673 (not (Forall!611 lambda!65901)))))

(declare-datatypes ((Token!5478 0))(
  ( (Token!5479 (value!93740 TokenValue!3041) (rule!4734 Rule!5702) (size!13643 Int) (originalCharacters!3770 List!16906)) )
))
(declare-datatypes ((tuple2!16340 0))(
  ( (tuple2!16341 (_1!9523 Token!5478) (_2!9523 List!16906)) )
))
(declare-fun lt!539025 () tuple2!16340)

(declare-fun e!998849 () Bool)

(declare-fun b!1556547 () Bool)

(declare-fun lt!539016 () TokenValue!3041)

(assert (=> b!1556547 (= e!998849 (or (not (= (value!93740 (_1!9523 lt!539025)) lt!539016)) (= (rule!4734 (_1!9523 lt!539025)) rule!240)))))

(declare-datatypes ((Option!3040 0))(
  ( (None!3039) (Some!3039 (v!23692 tuple2!16340)) )
))
(declare-fun lt!539018 () Option!3040)

(declare-fun get!4852 (Option!3040) tuple2!16340)

(assert (=> b!1556547 (= lt!539025 (get!4852 lt!539018))))

(declare-fun mapNonEmpty!8415 () Bool)

(declare-fun mapRes!8417 () Bool)

(declare-fun tp!456566 () Bool)

(declare-fun tp!456558 () Bool)

(assert (=> mapNonEmpty!8415 (= mapRes!8417 (and tp!456566 tp!456558))))

(declare-fun mapValue!8415 () List!16908)

(declare-fun mapKey!8416 () (_ BitVec 32))

(declare-fun mapRest!8416 () (Array (_ BitVec 32) List!16908))

(assert (=> mapNonEmpty!8415 (= (arr!2762 (_values!2087 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))) (store mapRest!8416 mapKey!8416 mapValue!8415))))

(declare-fun b!1556548 () Bool)

(declare-fun res!694670 () Bool)

(assert (=> b!1556548 (=> (not res!694670) (not e!998832))))

(declare-fun valid!1455 (CacheDown!1072) Bool)

(assert (=> b!1556548 (= res!694670 (valid!1455 cacheDown!768))))

(declare-fun b!1556549 () Bool)

(declare-fun e!998831 () Bool)

(declare-fun e!998853 () Bool)

(assert (=> b!1556549 (= e!998831 e!998853)))

(declare-fun b!1556550 () Bool)

(declare-fun e!998828 () Bool)

(declare-fun tp!456575 () Bool)

(assert (=> b!1556550 (= e!998828 (and tp!456575 mapRes!8417))))

(declare-fun condMapEmpty!8417 () Bool)

(declare-fun mapDefault!8415 () List!16908)

(assert (=> b!1556550 (= condMapEmpty!8417 (= (arr!2762 (_values!2087 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16908)) mapDefault!8415)))))

(declare-fun b!1556551 () Bool)

(declare-fun res!694671 () Bool)

(assert (=> b!1556551 (=> (not res!694671) (not e!998836))))

(assert (=> b!1556551 (= res!694671 (= (totalInput!2470 cacheFurthestNullable!103) totalInput!568))))

(declare-fun e!998862 () Bool)

(assert (=> b!1556552 (= e!998856 (and e!998862 tp!456552))))

(declare-fun b!1556553 () Bool)

(declare-fun tp!456570 () Bool)

(assert (=> b!1556553 (= e!998848 (and tp!456570 mapRes!8415))))

(declare-fun condMapEmpty!8415 () Bool)

(declare-fun mapDefault!8417 () List!16909)

(assert (=> b!1556553 (= condMapEmpty!8415 (= (arr!2764 (_values!2088 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16909)) mapDefault!8417)))))

(declare-fun b!1556554 () Bool)

(declare-fun e!998843 () Bool)

(declare-fun e!998857 () Bool)

(assert (=> b!1556554 (= e!998843 e!998857)))

(declare-fun b!1556555 () Bool)

(declare-fun tp!456562 () Bool)

(assert (=> b!1556555 (= e!998834 (and (inv!22122 (c!252851 (totalInput!2470 cacheFurthestNullable!103))) tp!456562))))

(declare-fun b!1556556 () Bool)

(assert (=> b!1556556 (= e!998829 (not e!998850))))

(declare-fun res!694672 () Bool)

(assert (=> b!1556556 (=> res!694672 e!998850)))

(declare-fun semiInverseModEq!1115 (Int Int) Bool)

(assert (=> b!1556556 (= res!694672 (not (semiInverseModEq!1115 (toChars!4183 (transformation!2951 rule!240)) (toValue!4324 (transformation!2951 rule!240)))))))

(declare-datatypes ((Unit!26082 0))(
  ( (Unit!26083) )
))
(declare-fun lt!539020 () Unit!26082)

(declare-fun lemmaInv!429 (TokenValueInjection!5742) Unit!26082)

(assert (=> b!1556556 (= lt!539020 (lemmaInv!429 (transformation!2951 rule!240)))))

(assert (=> b!1556556 e!998833))

(declare-fun res!694681 () Bool)

(assert (=> b!1556556 (=> res!694681 e!998833)))

(declare-fun isEmpty!10125 (List!16906) Bool)

(assert (=> b!1556556 (= res!694681 (isEmpty!10125 (_1!9514 lt!539015)))))

(declare-fun findLongestMatchInner!335 (Regex!4279 List!16906 Int List!16906 List!16906 Int) tuple2!16328)

(declare-fun size!13644 (List!16906) Int)

(assert (=> b!1556556 (= lt!539015 (findLongestMatchInner!335 (regex!2951 rule!240) Nil!16838 (size!13644 Nil!16838) lt!539010 lt!539010 (size!13644 lt!539010)))))

(declare-fun lt!539012 () Unit!26082)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!319 (Regex!4279 List!16906) Unit!26082)

(assert (=> b!1556556 (= lt!539012 (longestMatchIsAcceptedByMatchOrIsEmpty!319 (regex!2951 rule!240) lt!539010))))

(declare-fun b!1556557 () Bool)

(declare-fun e!998837 () Bool)

(declare-fun e!998859 () Bool)

(assert (=> b!1556557 (= e!998837 e!998859)))

(declare-fun mapIsEmpty!8416 () Bool)

(assert (=> mapIsEmpty!8416 mapRes!8417))

(declare-fun mapNonEmpty!8416 () Bool)

(declare-fun mapRes!8416 () Bool)

(declare-fun tp!456573 () Bool)

(declare-fun tp!456557 () Bool)

(assert (=> mapNonEmpty!8416 (= mapRes!8416 (and tp!456573 tp!456557))))

(declare-fun mapValue!8416 () List!16910)

(declare-fun mapKey!8417 () (_ BitVec 32))

(declare-fun mapRest!8417 () (Array (_ BitVec 32) List!16910))

(assert (=> mapNonEmpty!8416 (= (arr!2765 (_values!2089 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768))))))) (store mapRest!8417 mapKey!8417 mapValue!8416))))

(declare-fun b!1556558 () Bool)

(declare-fun e!998845 () Bool)

(assert (=> b!1556558 (= e!998845 e!998839)))

(declare-fun b!1556559 () Bool)

(declare-fun e!998847 () Bool)

(declare-fun tp!456560 () Bool)

(assert (=> b!1556559 (= e!998847 (and tp!456560 mapRes!8416))))

(declare-fun condMapEmpty!8416 () Bool)

(declare-fun mapDefault!8416 () List!16910)

(assert (=> b!1556559 (= condMapEmpty!8416 (= (arr!2765 (_values!2089 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16910)) mapDefault!8416)))))

(declare-fun b!1556560 () Bool)

(declare-fun e!998864 () Bool)

(declare-fun e!998835 () Bool)

(declare-fun lt!539009 () MutLongMap!1809)

(get-info :version)

(assert (=> b!1556560 (= e!998864 (and e!998835 ((_ is LongMap!1809) lt!539009)))))

(assert (=> b!1556560 (= lt!539009 (v!23689 (underlying!3828 (cache!2134 cacheUp!755))))))

(declare-fun b!1556561 () Bool)

(declare-fun res!694677 () Bool)

(assert (=> b!1556561 (=> (not res!694677) (not e!998832))))

(declare-fun valid!1456 (CacheFurthestNullable!494) Bool)

(assert (=> b!1556561 (= res!694677 (valid!1456 cacheFurthestNullable!103))))

(declare-fun b!1556562 () Bool)

(declare-fun e!998842 () Bool)

(declare-fun tp!456568 () Bool)

(assert (=> b!1556562 (= e!998842 (and (inv!22122 (c!252851 totalInput!568)) tp!456568))))

(declare-fun b!1556563 () Bool)

(declare-fun e!998860 () Bool)

(declare-fun e!998840 () Bool)

(assert (=> b!1556563 (= e!998860 e!998840)))

(declare-fun b!1556564 () Bool)

(declare-fun e!998861 () Bool)

(declare-fun lt!539019 () MutLongMap!1808)

(assert (=> b!1556564 (= e!998862 (and e!998861 ((_ is LongMap!1808) lt!539019)))))

(assert (=> b!1556564 (= lt!539019 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))

(declare-fun b!1556565 () Bool)

(assert (=> b!1556565 (= e!998861 e!998843)))

(declare-fun b!1556566 () Bool)

(declare-fun res!694678 () Bool)

(assert (=> b!1556566 (=> (not res!694678) (not e!998832))))

(declare-datatypes ((LexerInterface!2587 0))(
  ( (LexerInterfaceExt!2584 (__x!11233 Int)) (Lexer!2585) )
))
(declare-fun thiss!16438 () LexerInterface!2587)

(declare-fun ruleValid!686 (LexerInterface!2587 Rule!5702) Bool)

(assert (=> b!1556566 (= res!694678 (ruleValid!686 thiss!16438 rule!240))))

(declare-fun b!1556567 () Bool)

(declare-fun res!694680 () Bool)

(assert (=> b!1556567 (=> (not res!694680) (not e!998832))))

(declare-fun valid!1457 (CacheUp!1066) Bool)

(assert (=> b!1556567 (= res!694680 (valid!1457 cacheUp!755))))

(declare-fun b!1556568 () Bool)

(declare-fun e!998852 () Bool)

(declare-fun e!998838 () Bool)

(declare-fun lt!539026 () MutLongMap!1810)

(assert (=> b!1556568 (= e!998852 (and e!998838 ((_ is LongMap!1810) lt!539026)))))

(assert (=> b!1556568 (= lt!539026 (v!23691 (underlying!3830 (cache!2135 cacheDown!768))))))

(declare-fun b!1556569 () Bool)

(assert (=> b!1556569 (= e!998850 e!998851)))

(declare-fun res!694669 () Bool)

(assert (=> b!1556569 (=> res!694669 e!998851)))

(declare-fun isDefined!2443 (Option!3040) Bool)

(assert (=> b!1556569 (= res!694669 (not (= lt!539021 (isDefined!2443 lt!539018))))))

(declare-fun lt!539011 () Int)

(declare-fun lt!539017 () List!16906)

(declare-datatypes ((tuple2!16342 0))(
  ( (tuple2!16343 (_1!9524 Token!5478) (_2!9524 BalanceConc!11080)) )
))
(declare-datatypes ((Option!3041 0))(
  ( (None!3040) (Some!3040 (v!23693 tuple2!16342)) )
))
(declare-fun isDefined!2444 (Option!3041) Bool)

(assert (=> b!1556569 (= lt!539021 (isDefined!2444 (Some!3040 (tuple2!16343 (Token!5479 lt!539016 rule!240 lt!539011 lt!539017) (_2!9521 (_1!9522 lt!539014))))))))

(declare-fun maxPrefixOneRule!705 (LexerInterface!2587 Rule!5702 List!16906) Option!3040)

(assert (=> b!1556569 (= lt!539018 (maxPrefixOneRule!705 thiss!16438 rule!240 lt!539010))))

(declare-fun size!13645 (BalanceConc!11080) Int)

(assert (=> b!1556569 (= lt!539011 (size!13645 (_1!9521 (_1!9522 lt!539014))))))

(declare-fun apply!4112 (TokenValueInjection!5742 BalanceConc!11080) TokenValue!3041)

(assert (=> b!1556569 (= lt!539016 (apply!4112 (transformation!2951 rule!240) (_1!9521 (_1!9522 lt!539014))))))

(declare-fun lt!539024 () Unit!26082)

(declare-fun lt!539023 () BalanceConc!11080)

(declare-fun ForallOf!213 (Int BalanceConc!11080) Unit!26082)

(assert (=> b!1556569 (= lt!539024 (ForallOf!213 lambda!65901 lt!539023))))

(declare-fun seqFromList!1776 (List!16906) BalanceConc!11080)

(assert (=> b!1556569 (= lt!539023 (seqFromList!1776 lt!539017))))

(assert (=> b!1556569 (= lt!539017 (list!6498 (_1!9521 (_1!9522 lt!539014))))))

(declare-fun lt!539013 () Unit!26082)

(assert (=> b!1556569 (= lt!539013 (ForallOf!213 lambda!65901 (_1!9521 (_1!9522 lt!539014))))))

(declare-fun b!1556570 () Bool)

(assert (=> b!1556570 (= e!998838 e!998831)))

(declare-fun b!1556571 () Bool)

(declare-fun e!998844 () Bool)

(declare-fun tp!456555 () Bool)

(declare-fun inv!22115 (String!19493) Bool)

(declare-fun inv!22123 (TokenValueInjection!5742) Bool)

(assert (=> b!1556571 (= e!998844 (and tp!456555 (inv!22115 (tag!3215 rule!240)) (inv!22123 (transformation!2951 rule!240)) e!998855))))

(assert (=> b!1556572 (= e!998859 (and e!998864 tp!456578))))

(declare-fun res!694679 () Bool)

(assert (=> start!144364 (=> (not res!694679) (not e!998832))))

(assert (=> start!144364 (= res!694679 ((_ is Lexer!2585) thiss!16438))))

(assert (=> start!144364 e!998832))

(assert (=> start!144364 (and (inv!22121 totalInput!568) e!998842)))

(declare-fun inv!22124 (CacheUp!1066) Bool)

(assert (=> start!144364 (and (inv!22124 cacheUp!755) e!998837)))

(declare-fun inv!22125 (CacheFurthestNullable!494) Bool)

(assert (=> start!144364 (and (inv!22125 cacheFurthestNullable!103) e!998858)))

(assert (=> start!144364 (and (inv!22121 input!1676) e!998841)))

(assert (=> start!144364 e!998844))

(declare-fun inv!22126 (CacheDown!1072) Bool)

(assert (=> start!144364 (and (inv!22126 cacheDown!768) e!998860)))

(assert (=> start!144364 true))

(declare-fun tp!456565 () Bool)

(declare-fun tp!456567 () Bool)

(declare-fun array_inv!1988 (array!6198) Bool)

(assert (=> b!1556541 (= e!998857 (and tp!456564 tp!456565 tp!456567 (array_inv!1986 (_keys!2102 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))) (array_inv!1988 (_values!2087 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))) e!998828))))

(declare-fun b!1556573 () Bool)

(declare-fun res!694682 () Bool)

(assert (=> b!1556573 (=> res!694682 e!998851)))

(assert (=> b!1556573 (= res!694682 (not (= (list!6498 lt!539023) lt!539017)))))

(declare-fun mapIsEmpty!8417 () Bool)

(assert (=> mapIsEmpty!8417 mapRes!8416))

(declare-fun tp!456576 () Bool)

(declare-fun tp!456574 () Bool)

(declare-fun array_inv!1989 (array!6204) Bool)

(assert (=> b!1556574 (= e!998853 (and tp!456569 tp!456574 tp!456576 (array_inv!1986 (_keys!2104 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768))))))) (array_inv!1989 (_values!2089 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768))))))) e!998847))))

(assert (=> b!1556575 (= e!998840 (and e!998852 tp!456554))))

(declare-fun mapNonEmpty!8417 () Bool)

(declare-fun tp!456553 () Bool)

(declare-fun tp!456563 () Bool)

(assert (=> mapNonEmpty!8417 (= mapRes!8415 (and tp!456553 tp!456563))))

(declare-fun mapValue!8417 () List!16909)

(declare-fun mapRest!8415 () (Array (_ BitVec 32) List!16909))

(declare-fun mapKey!8415 () (_ BitVec 32))

(assert (=> mapNonEmpty!8417 (= (arr!2764 (_values!2088 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755))))))) (store mapRest!8415 mapKey!8415 mapValue!8417))))

(declare-fun b!1556576 () Bool)

(assert (=> b!1556576 (= e!998851 e!998849)))

(declare-fun res!694676 () Bool)

(assert (=> b!1556576 (=> res!694676 e!998849)))

(assert (=> b!1556576 (= res!694676 (not (= (apply!4112 (transformation!2951 rule!240) lt!539023) lt!539016)))))

(declare-fun lt!539022 () Unit!26082)

(declare-fun lemmaEqSameImage!151 (TokenValueInjection!5742 BalanceConc!11080 BalanceConc!11080) Unit!26082)

(assert (=> b!1556576 (= lt!539022 (lemmaEqSameImage!151 (transformation!2951 rule!240) (_1!9521 (_1!9522 lt!539014)) lt!539023))))

(declare-fun b!1556577 () Bool)

(assert (=> b!1556577 (= e!998835 e!998845)))

(assert (= (and start!144364 res!694679) b!1556566))

(assert (= (and b!1556566 res!694678) b!1556567))

(assert (= (and b!1556567 res!694680) b!1556548))

(assert (= (and b!1556548 res!694670) b!1556561))

(assert (= (and b!1556561 res!694677) b!1556537))

(assert (= (and b!1556537 res!694675) b!1556551))

(assert (= (and b!1556551 res!694671) b!1556545))

(assert (= (and b!1556545 res!694674) b!1556556))

(assert (= (and b!1556556 (not res!694681)) b!1556540))

(assert (= (and b!1556556 (not res!694672)) b!1556546))

(assert (= (and b!1556546 (not res!694673)) b!1556569))

(assert (= (and b!1556569 (not res!694669)) b!1556538))

(assert (= (and b!1556538 (not res!694683)) b!1556573))

(assert (= (and b!1556573 (not res!694682)) b!1556576))

(assert (= (and b!1556576 (not res!694676)) b!1556547))

(assert (= start!144364 b!1556562))

(assert (= (and b!1556553 condMapEmpty!8415) mapIsEmpty!8415))

(assert (= (and b!1556553 (not condMapEmpty!8415)) mapNonEmpty!8417))

(assert (= b!1556544 b!1556553))

(assert (= b!1556558 b!1556544))

(assert (= b!1556577 b!1556558))

(assert (= (and b!1556560 ((_ is LongMap!1809) (v!23689 (underlying!3828 (cache!2134 cacheUp!755))))) b!1556577))

(assert (= b!1556572 b!1556560))

(assert (= (and b!1556557 ((_ is HashMap!1753) (cache!2134 cacheUp!755))) b!1556572))

(assert (= start!144364 b!1556557))

(assert (= (and b!1556550 condMapEmpty!8417) mapIsEmpty!8416))

(assert (= (and b!1556550 (not condMapEmpty!8417)) mapNonEmpty!8415))

(assert (= b!1556541 b!1556550))

(assert (= b!1556554 b!1556541))

(assert (= b!1556565 b!1556554))

(assert (= (and b!1556564 ((_ is LongMap!1808) (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))) b!1556565))

(assert (= b!1556552 b!1556564))

(assert (= (and b!1556542 ((_ is HashMap!1752) (cache!2133 cacheFurthestNullable!103))) b!1556552))

(assert (= b!1556542 b!1556555))

(assert (= start!144364 b!1556542))

(assert (= start!144364 b!1556543))

(assert (= b!1556571 b!1556539))

(assert (= start!144364 b!1556571))

(assert (= (and b!1556559 condMapEmpty!8416) mapIsEmpty!8417))

(assert (= (and b!1556559 (not condMapEmpty!8416)) mapNonEmpty!8416))

(assert (= b!1556574 b!1556559))

(assert (= b!1556549 b!1556574))

(assert (= b!1556570 b!1556549))

(assert (= (and b!1556568 ((_ is LongMap!1810) (v!23691 (underlying!3830 (cache!2135 cacheDown!768))))) b!1556570))

(assert (= b!1556575 b!1556568))

(assert (= (and b!1556563 ((_ is HashMap!1754) (cache!2135 cacheDown!768))) b!1556575))

(assert (= start!144364 b!1556563))

(declare-fun m!1828848 () Bool)

(assert (=> mapNonEmpty!8415 m!1828848))

(declare-fun m!1828850 () Bool)

(assert (=> start!144364 m!1828850))

(declare-fun m!1828852 () Bool)

(assert (=> start!144364 m!1828852))

(declare-fun m!1828854 () Bool)

(assert (=> start!144364 m!1828854))

(declare-fun m!1828856 () Bool)

(assert (=> start!144364 m!1828856))

(declare-fun m!1828858 () Bool)

(assert (=> start!144364 m!1828858))

(declare-fun m!1828860 () Bool)

(assert (=> b!1556555 m!1828860))

(declare-fun m!1828862 () Bool)

(assert (=> b!1556576 m!1828862))

(declare-fun m!1828864 () Bool)

(assert (=> b!1556576 m!1828864))

(declare-fun m!1828866 () Bool)

(assert (=> b!1556573 m!1828866))

(declare-fun m!1828868 () Bool)

(assert (=> mapNonEmpty!8417 m!1828868))

(declare-fun m!1828870 () Bool)

(assert (=> b!1556543 m!1828870))

(declare-fun m!1828872 () Bool)

(assert (=> b!1556548 m!1828872))

(declare-fun m!1828874 () Bool)

(assert (=> b!1556537 m!1828874))

(assert (=> b!1556537 m!1828874))

(declare-fun m!1828876 () Bool)

(assert (=> b!1556537 m!1828876))

(declare-fun m!1828878 () Bool)

(assert (=> b!1556537 m!1828878))

(declare-fun m!1828880 () Bool)

(assert (=> b!1556540 m!1828880))

(declare-fun m!1828882 () Bool)

(assert (=> mapNonEmpty!8416 m!1828882))

(declare-fun m!1828884 () Bool)

(assert (=> b!1556542 m!1828884))

(declare-fun m!1828886 () Bool)

(assert (=> b!1556566 m!1828886))

(declare-fun m!1828888 () Bool)

(assert (=> b!1556569 m!1828888))

(declare-fun m!1828890 () Bool)

(assert (=> b!1556569 m!1828890))

(declare-fun m!1828892 () Bool)

(assert (=> b!1556569 m!1828892))

(declare-fun m!1828894 () Bool)

(assert (=> b!1556569 m!1828894))

(declare-fun m!1828896 () Bool)

(assert (=> b!1556569 m!1828896))

(declare-fun m!1828898 () Bool)

(assert (=> b!1556569 m!1828898))

(declare-fun m!1828900 () Bool)

(assert (=> b!1556569 m!1828900))

(declare-fun m!1828902 () Bool)

(assert (=> b!1556569 m!1828902))

(declare-fun m!1828904 () Bool)

(assert (=> b!1556569 m!1828904))

(declare-fun m!1828906 () Bool)

(assert (=> b!1556561 m!1828906))

(declare-fun m!1828908 () Bool)

(assert (=> b!1556541 m!1828908))

(declare-fun m!1828910 () Bool)

(assert (=> b!1556541 m!1828910))

(declare-fun m!1828912 () Bool)

(assert (=> b!1556545 m!1828912))

(declare-fun m!1828914 () Bool)

(assert (=> b!1556545 m!1828914))

(declare-fun m!1828916 () Bool)

(assert (=> b!1556544 m!1828916))

(declare-fun m!1828918 () Bool)

(assert (=> b!1556544 m!1828918))

(declare-fun m!1828920 () Bool)

(assert (=> b!1556556 m!1828920))

(declare-fun m!1828922 () Bool)

(assert (=> b!1556556 m!1828922))

(declare-fun m!1828924 () Bool)

(assert (=> b!1556556 m!1828924))

(declare-fun m!1828926 () Bool)

(assert (=> b!1556556 m!1828926))

(declare-fun m!1828928 () Bool)

(assert (=> b!1556556 m!1828928))

(declare-fun m!1828930 () Bool)

(assert (=> b!1556556 m!1828930))

(assert (=> b!1556556 m!1828926))

(assert (=> b!1556556 m!1828928))

(declare-fun m!1828932 () Bool)

(assert (=> b!1556556 m!1828932))

(declare-fun m!1828934 () Bool)

(assert (=> b!1556562 m!1828934))

(declare-fun m!1828936 () Bool)

(assert (=> b!1556574 m!1828936))

(declare-fun m!1828938 () Bool)

(assert (=> b!1556574 m!1828938))

(declare-fun m!1828940 () Bool)

(assert (=> b!1556571 m!1828940))

(declare-fun m!1828942 () Bool)

(assert (=> b!1556571 m!1828942))

(declare-fun m!1828944 () Bool)

(assert (=> b!1556567 m!1828944))

(declare-fun m!1828946 () Bool)

(assert (=> b!1556546 m!1828946))

(declare-fun m!1828948 () Bool)

(assert (=> b!1556547 m!1828948))

(check-sat b_and!108607 (not b!1556546) (not b!1556540) (not b!1556541) (not b_next!42133) (not b!1556566) b_and!108601 (not b_next!42127) (not b_next!42125) (not b_next!42121) (not b!1556559) b_and!108597 (not b!1556561) (not mapNonEmpty!8417) (not b!1556537) (not start!144364) (not b!1556543) b_and!108609 (not b!1556555) (not b!1556548) (not b!1556545) (not b_next!42123) (not b!1556573) b_and!108603 b_and!108611 b_and!108599 (not b_next!42131) (not b!1556556) (not b_next!42129) (not mapNonEmpty!8415) (not b!1556567) (not b!1556553) (not b!1556571) (not b!1556569) (not b!1556542) (not b!1556576) (not b_next!42119) (not b!1556544) (not mapNonEmpty!8416) (not b!1556574) (not b!1556547) (not b!1556550) (not b!1556562) b_and!108605)
(check-sat b_and!108609 b_and!108607 (not b_next!42123) (not b_next!42131) (not b_next!42129) (not b_next!42119) (not b_next!42133) b_and!108601 (not b_next!42127) (not b_next!42125) (not b_next!42121) b_and!108597 b_and!108605 b_and!108603 b_and!108611 b_and!108599)
(get-model)

(declare-fun d!461623 () Bool)

(declare-fun validCacheMapDown!163 (MutableMap!1754) Bool)

(assert (=> d!461623 (= (valid!1455 cacheDown!768) (validCacheMapDown!163 (cache!2135 cacheDown!768)))))

(declare-fun bs!388727 () Bool)

(assert (= bs!388727 d!461623))

(declare-fun m!1828950 () Bool)

(assert (=> bs!388727 m!1828950))

(assert (=> b!1556548 d!461623))

(declare-fun d!461625 () Bool)

(declare-fun dynLambda!7474 (Int BalanceConc!11080) TokenValue!3041)

(assert (=> d!461625 (= (apply!4112 (transformation!2951 rule!240) lt!539023) (dynLambda!7474 (toValue!4324 (transformation!2951 rule!240)) lt!539023))))

(declare-fun b_lambda!48887 () Bool)

(assert (=> (not b_lambda!48887) (not d!461625)))

(declare-fun t!141391 () Bool)

(declare-fun tb!87329 () Bool)

(assert (=> (and b!1556539 (= (toValue!4324 (transformation!2951 rule!240)) (toValue!4324 (transformation!2951 rule!240))) t!141391) tb!87329))

(declare-fun result!105464 () Bool)

(declare-fun inv!21 (TokenValue!3041) Bool)

(assert (=> tb!87329 (= result!105464 (inv!21 (dynLambda!7474 (toValue!4324 (transformation!2951 rule!240)) lt!539023)))))

(declare-fun m!1828952 () Bool)

(assert (=> tb!87329 m!1828952))

(assert (=> d!461625 t!141391))

(declare-fun b_and!108613 () Bool)

(assert (= b_and!108599 (and (=> t!141391 result!105464) b_and!108613)))

(declare-fun m!1828954 () Bool)

(assert (=> d!461625 m!1828954))

(assert (=> b!1556576 d!461625))

(declare-fun b!1556594 () Bool)

(declare-fun e!998878 () Bool)

(assert (=> b!1556594 (= e!998878 true)))

(declare-fun d!461627 () Bool)

(assert (=> d!461627 e!998878))

(assert (= d!461627 b!1556594))

(declare-fun lambda!65904 () Int)

(declare-fun order!9929 () Int)

(declare-fun dynLambda!7475 (Int Int) Int)

(assert (=> b!1556594 (< (dynLambda!7471 order!9923 (toValue!4324 (transformation!2951 rule!240))) (dynLambda!7475 order!9929 lambda!65904))))

(assert (=> b!1556594 (< (dynLambda!7473 order!9927 (toChars!4183 (transformation!2951 rule!240))) (dynLambda!7475 order!9929 lambda!65904))))

(assert (=> d!461627 (= (dynLambda!7474 (toValue!4324 (transformation!2951 rule!240)) (_1!9521 (_1!9522 lt!539014))) (dynLambda!7474 (toValue!4324 (transformation!2951 rule!240)) lt!539023))))

(declare-fun lt!539029 () Unit!26082)

(declare-fun Forall2of!43 (Int BalanceConc!11080 BalanceConc!11080) Unit!26082)

(assert (=> d!461627 (= lt!539029 (Forall2of!43 lambda!65904 (_1!9521 (_1!9522 lt!539014)) lt!539023))))

(assert (=> d!461627 (= (list!6498 (_1!9521 (_1!9522 lt!539014))) (list!6498 lt!539023))))

(assert (=> d!461627 (= (lemmaEqSameImage!151 (transformation!2951 rule!240) (_1!9521 (_1!9522 lt!539014)) lt!539023) lt!539029)))

(declare-fun b_lambda!48889 () Bool)

(assert (=> (not b_lambda!48889) (not d!461627)))

(declare-fun t!141393 () Bool)

(declare-fun tb!87331 () Bool)

(assert (=> (and b!1556539 (= (toValue!4324 (transformation!2951 rule!240)) (toValue!4324 (transformation!2951 rule!240))) t!141393) tb!87331))

(declare-fun result!105468 () Bool)

(assert (=> tb!87331 (= result!105468 (inv!21 (dynLambda!7474 (toValue!4324 (transformation!2951 rule!240)) (_1!9521 (_1!9522 lt!539014)))))))

(declare-fun m!1828956 () Bool)

(assert (=> tb!87331 m!1828956))

(assert (=> d!461627 t!141393))

(declare-fun b_and!108615 () Bool)

(assert (= b_and!108613 (and (=> t!141393 result!105468) b_and!108615)))

(declare-fun b_lambda!48891 () Bool)

(assert (=> (not b_lambda!48891) (not d!461627)))

(assert (=> d!461627 t!141391))

(declare-fun b_and!108617 () Bool)

(assert (= b_and!108615 (and (=> t!141391 result!105464) b_and!108617)))

(declare-fun m!1828958 () Bool)

(assert (=> d!461627 m!1828958))

(assert (=> d!461627 m!1828896))

(declare-fun m!1828960 () Bool)

(assert (=> d!461627 m!1828960))

(assert (=> d!461627 m!1828954))

(assert (=> d!461627 m!1828866))

(assert (=> b!1556576 d!461627))

(declare-fun b!1556623 () Bool)

(declare-fun res!694706 () Bool)

(declare-fun e!998894 () Bool)

(assert (=> b!1556623 (=> res!694706 e!998894)))

(declare-fun e!998895 () Bool)

(assert (=> b!1556623 (= res!694706 e!998895)))

(declare-fun res!694711 () Bool)

(assert (=> b!1556623 (=> (not res!694711) (not e!998895))))

(declare-fun lt!539032 () Bool)

(assert (=> b!1556623 (= res!694711 lt!539032)))

(declare-fun b!1556624 () Bool)

(declare-fun res!694709 () Bool)

(assert (=> b!1556624 (=> (not res!694709) (not e!998895))))

(declare-fun tail!2210 (List!16906) List!16906)

(assert (=> b!1556624 (= res!694709 (isEmpty!10125 (tail!2210 (_1!9514 lt!539015))))))

(declare-fun b!1556625 () Bool)

(declare-fun head!3115 (List!16906) C!8736)

(assert (=> b!1556625 (= e!998895 (= (head!3115 (_1!9514 lt!539015)) (c!252852 (regex!2951 rule!240))))))

(declare-fun b!1556626 () Bool)

(declare-fun e!998899 () Bool)

(assert (=> b!1556626 (= e!998899 (not lt!539032))))

(declare-fun b!1556627 () Bool)

(declare-fun res!694710 () Bool)

(declare-fun e!998897 () Bool)

(assert (=> b!1556627 (=> res!694710 e!998897)))

(assert (=> b!1556627 (= res!694710 (not (isEmpty!10125 (tail!2210 (_1!9514 lt!539015)))))))

(declare-fun b!1556628 () Bool)

(declare-fun res!694712 () Bool)

(assert (=> b!1556628 (=> res!694712 e!998894)))

(assert (=> b!1556628 (= res!694712 (not ((_ is ElementMatch!4279) (regex!2951 rule!240))))))

(assert (=> b!1556628 (= e!998899 e!998894)))

(declare-fun b!1556629 () Bool)

(declare-fun e!998898 () Bool)

(assert (=> b!1556629 (= e!998898 e!998899)))

(declare-fun c!252860 () Bool)

(assert (=> b!1556629 (= c!252860 ((_ is EmptyLang!4279) (regex!2951 rule!240)))))

(declare-fun b!1556630 () Bool)

(declare-fun e!998896 () Bool)

(assert (=> b!1556630 (= e!998896 e!998897)))

(declare-fun res!694708 () Bool)

(assert (=> b!1556630 (=> res!694708 e!998897)))

(declare-fun call!102066 () Bool)

(assert (=> b!1556630 (= res!694708 call!102066)))

(declare-fun b!1556631 () Bool)

(declare-fun e!998900 () Bool)

(declare-fun derivativeStep!1024 (Regex!4279 C!8736) Regex!4279)

(assert (=> b!1556631 (= e!998900 (matchR!1881 (derivativeStep!1024 (regex!2951 rule!240) (head!3115 (_1!9514 lt!539015))) (tail!2210 (_1!9514 lt!539015))))))

(declare-fun b!1556632 () Bool)

(declare-fun res!694707 () Bool)

(assert (=> b!1556632 (=> (not res!694707) (not e!998895))))

(assert (=> b!1556632 (= res!694707 (not call!102066))))

(declare-fun b!1556633 () Bool)

(assert (=> b!1556633 (= e!998897 (not (= (head!3115 (_1!9514 lt!539015)) (c!252852 (regex!2951 rule!240)))))))

(declare-fun bm!102061 () Bool)

(assert (=> bm!102061 (= call!102066 (isEmpty!10125 (_1!9514 lt!539015)))))

(declare-fun b!1556634 () Bool)

(assert (=> b!1556634 (= e!998898 (= lt!539032 call!102066))))

(declare-fun b!1556636 () Bool)

(declare-fun nullable!1272 (Regex!4279) Bool)

(assert (=> b!1556636 (= e!998900 (nullable!1272 (regex!2951 rule!240)))))

(declare-fun b!1556635 () Bool)

(assert (=> b!1556635 (= e!998894 e!998896)))

(declare-fun res!694713 () Bool)

(assert (=> b!1556635 (=> (not res!694713) (not e!998896))))

(assert (=> b!1556635 (= res!694713 (not lt!539032))))

(declare-fun d!461629 () Bool)

(assert (=> d!461629 e!998898))

(declare-fun c!252861 () Bool)

(assert (=> d!461629 (= c!252861 ((_ is EmptyExpr!4279) (regex!2951 rule!240)))))

(assert (=> d!461629 (= lt!539032 e!998900)))

(declare-fun c!252859 () Bool)

(assert (=> d!461629 (= c!252859 (isEmpty!10125 (_1!9514 lt!539015)))))

(declare-fun validRegex!1713 (Regex!4279) Bool)

(assert (=> d!461629 (validRegex!1713 (regex!2951 rule!240))))

(assert (=> d!461629 (= (matchR!1881 (regex!2951 rule!240) (_1!9514 lt!539015)) lt!539032)))

(assert (= (and d!461629 c!252859) b!1556636))

(assert (= (and d!461629 (not c!252859)) b!1556631))

(assert (= (and d!461629 c!252861) b!1556634))

(assert (= (and d!461629 (not c!252861)) b!1556629))

(assert (= (and b!1556629 c!252860) b!1556626))

(assert (= (and b!1556629 (not c!252860)) b!1556628))

(assert (= (and b!1556628 (not res!694712)) b!1556623))

(assert (= (and b!1556623 res!694711) b!1556632))

(assert (= (and b!1556632 res!694707) b!1556624))

(assert (= (and b!1556624 res!694709) b!1556625))

(assert (= (and b!1556623 (not res!694706)) b!1556635))

(assert (= (and b!1556635 res!694713) b!1556630))

(assert (= (and b!1556630 (not res!694708)) b!1556627))

(assert (= (and b!1556627 (not res!694710)) b!1556633))

(assert (= (or b!1556634 b!1556630 b!1556632) bm!102061))

(assert (=> d!461629 m!1828920))

(declare-fun m!1828962 () Bool)

(assert (=> d!461629 m!1828962))

(assert (=> bm!102061 m!1828920))

(declare-fun m!1828964 () Bool)

(assert (=> b!1556625 m!1828964))

(declare-fun m!1828966 () Bool)

(assert (=> b!1556627 m!1828966))

(assert (=> b!1556627 m!1828966))

(declare-fun m!1828968 () Bool)

(assert (=> b!1556627 m!1828968))

(assert (=> b!1556624 m!1828966))

(assert (=> b!1556624 m!1828966))

(assert (=> b!1556624 m!1828968))

(declare-fun m!1828970 () Bool)

(assert (=> b!1556636 m!1828970))

(assert (=> b!1556633 m!1828964))

(assert (=> b!1556631 m!1828964))

(assert (=> b!1556631 m!1828964))

(declare-fun m!1828972 () Bool)

(assert (=> b!1556631 m!1828972))

(assert (=> b!1556631 m!1828966))

(assert (=> b!1556631 m!1828972))

(assert (=> b!1556631 m!1828966))

(declare-fun m!1828974 () Bool)

(assert (=> b!1556631 m!1828974))

(assert (=> b!1556540 d!461629))

(declare-fun d!461631 () Bool)

(declare-fun isEmpty!10126 (Option!3040) Bool)

(assert (=> d!461631 (= (isDefined!2443 lt!539018) (not (isEmpty!10126 lt!539018)))))

(declare-fun bs!388728 () Bool)

(assert (= bs!388728 d!461631))

(declare-fun m!1828976 () Bool)

(assert (=> bs!388728 m!1828976))

(assert (=> b!1556569 d!461631))

(declare-fun d!461633 () Bool)

(declare-fun isEmpty!10127 (Option!3041) Bool)

(assert (=> d!461633 (= (isDefined!2444 (Some!3040 (tuple2!16343 (Token!5479 lt!539016 rule!240 lt!539011 lt!539017) (_2!9521 (_1!9522 lt!539014))))) (not (isEmpty!10127 (Some!3040 (tuple2!16343 (Token!5479 lt!539016 rule!240 lt!539011 lt!539017) (_2!9521 (_1!9522 lt!539014)))))))))

(declare-fun bs!388729 () Bool)

(assert (= bs!388729 d!461633))

(declare-fun m!1828978 () Bool)

(assert (=> bs!388729 m!1828978))

(assert (=> b!1556569 d!461633))

(declare-fun d!461635 () Bool)

(declare-fun dynLambda!7476 (Int BalanceConc!11080) Bool)

(assert (=> d!461635 (dynLambda!7476 lambda!65901 (_1!9521 (_1!9522 lt!539014)))))

(declare-fun lt!539035 () Unit!26082)

(declare-fun choose!9289 (Int BalanceConc!11080) Unit!26082)

(assert (=> d!461635 (= lt!539035 (choose!9289 lambda!65901 (_1!9521 (_1!9522 lt!539014))))))

(assert (=> d!461635 (Forall!611 lambda!65901)))

(assert (=> d!461635 (= (ForallOf!213 lambda!65901 (_1!9521 (_1!9522 lt!539014))) lt!539035)))

(declare-fun b_lambda!48893 () Bool)

(assert (=> (not b_lambda!48893) (not d!461635)))

(declare-fun bs!388730 () Bool)

(assert (= bs!388730 d!461635))

(declare-fun m!1828980 () Bool)

(assert (=> bs!388730 m!1828980))

(declare-fun m!1828982 () Bool)

(assert (=> bs!388730 m!1828982))

(assert (=> bs!388730 m!1828946))

(assert (=> b!1556569 d!461635))

(declare-fun d!461637 () Bool)

(declare-fun fromListB!763 (List!16906) BalanceConc!11080)

(assert (=> d!461637 (= (seqFromList!1776 lt!539017) (fromListB!763 lt!539017))))

(declare-fun bs!388731 () Bool)

(assert (= bs!388731 d!461637))

(declare-fun m!1828984 () Bool)

(assert (=> bs!388731 m!1828984))

(assert (=> b!1556569 d!461637))

(declare-fun d!461639 () Bool)

(declare-fun lt!539038 () Int)

(assert (=> d!461639 (= lt!539038 (size!13644 (list!6498 (_1!9521 (_1!9522 lt!539014)))))))

(declare-fun size!13646 (Conc!5569) Int)

(assert (=> d!461639 (= lt!539038 (size!13646 (c!252851 (_1!9521 (_1!9522 lt!539014)))))))

(assert (=> d!461639 (= (size!13645 (_1!9521 (_1!9522 lt!539014))) lt!539038)))

(declare-fun bs!388732 () Bool)

(assert (= bs!388732 d!461639))

(assert (=> bs!388732 m!1828896))

(assert (=> bs!388732 m!1828896))

(declare-fun m!1828986 () Bool)

(assert (=> bs!388732 m!1828986))

(declare-fun m!1828988 () Bool)

(assert (=> bs!388732 m!1828988))

(assert (=> b!1556569 d!461639))

(declare-fun d!461641 () Bool)

(declare-fun list!6499 (Conc!5569) List!16906)

(assert (=> d!461641 (= (list!6498 (_1!9521 (_1!9522 lt!539014))) (list!6499 (c!252851 (_1!9521 (_1!9522 lt!539014)))))))

(declare-fun bs!388733 () Bool)

(assert (= bs!388733 d!461641))

(declare-fun m!1828990 () Bool)

(assert (=> bs!388733 m!1828990))

(assert (=> b!1556569 d!461641))

(declare-fun b!1556655 () Bool)

(declare-fun e!998912 () Bool)

(declare-fun e!998909 () Bool)

(assert (=> b!1556655 (= e!998912 e!998909)))

(declare-fun res!694729 () Bool)

(assert (=> b!1556655 (=> (not res!694729) (not e!998909))))

(declare-fun lt!539052 () Option!3040)

(declare-fun charsOf!1648 (Token!5478) BalanceConc!11080)

(assert (=> b!1556655 (= res!694729 (matchR!1881 (regex!2951 rule!240) (list!6498 (charsOf!1648 (_1!9523 (get!4852 lt!539052))))))))

(declare-fun b!1556656 () Bool)

(declare-fun res!694734 () Bool)

(assert (=> b!1556656 (=> (not res!694734) (not e!998909))))

(declare-fun ++!4416 (List!16906 List!16906) List!16906)

(assert (=> b!1556656 (= res!694734 (= (++!4416 (list!6498 (charsOf!1648 (_1!9523 (get!4852 lt!539052)))) (_2!9523 (get!4852 lt!539052))) lt!539010))))

(declare-fun b!1556657 () Bool)

(declare-fun res!694728 () Bool)

(assert (=> b!1556657 (=> (not res!694728) (not e!998909))))

(assert (=> b!1556657 (= res!694728 (= (rule!4734 (_1!9523 (get!4852 lt!539052))) rule!240))))

(declare-fun b!1556658 () Bool)

(declare-fun e!998910 () Bool)

(assert (=> b!1556658 (= e!998910 (matchR!1881 (regex!2951 rule!240) (_1!9514 (findLongestMatchInner!335 (regex!2951 rule!240) Nil!16838 (size!13644 Nil!16838) lt!539010 lt!539010 (size!13644 lt!539010)))))))

(declare-fun b!1556659 () Bool)

(assert (=> b!1556659 (= e!998909 (= (size!13643 (_1!9523 (get!4852 lt!539052))) (size!13644 (originalCharacters!3770 (_1!9523 (get!4852 lt!539052))))))))

(declare-fun b!1556660 () Bool)

(declare-fun res!694732 () Bool)

(assert (=> b!1556660 (=> (not res!694732) (not e!998909))))

(assert (=> b!1556660 (= res!694732 (= (value!93740 (_1!9523 (get!4852 lt!539052))) (apply!4112 (transformation!2951 (rule!4734 (_1!9523 (get!4852 lt!539052)))) (seqFromList!1776 (originalCharacters!3770 (_1!9523 (get!4852 lt!539052)))))))))

(declare-fun b!1556661 () Bool)

(declare-fun e!998911 () Option!3040)

(declare-fun lt!539049 () tuple2!16328)

(assert (=> b!1556661 (= e!998911 (Some!3039 (tuple2!16341 (Token!5479 (apply!4112 (transformation!2951 rule!240) (seqFromList!1776 (_1!9514 lt!539049))) rule!240 (size!13645 (seqFromList!1776 (_1!9514 lt!539049))) (_1!9514 lt!539049)) (_2!9514 lt!539049))))))

(declare-fun lt!539053 () Unit!26082)

(assert (=> b!1556661 (= lt!539053 (longestMatchIsAcceptedByMatchOrIsEmpty!319 (regex!2951 rule!240) lt!539010))))

(declare-fun res!694733 () Bool)

(assert (=> b!1556661 (= res!694733 (isEmpty!10125 (_1!9514 (findLongestMatchInner!335 (regex!2951 rule!240) Nil!16838 (size!13644 Nil!16838) lt!539010 lt!539010 (size!13644 lt!539010)))))))

(assert (=> b!1556661 (=> res!694733 e!998910)))

(assert (=> b!1556661 e!998910))

(declare-fun lt!539050 () Unit!26082)

(assert (=> b!1556661 (= lt!539050 lt!539053)))

(declare-fun lt!539051 () Unit!26082)

(declare-fun lemmaSemiInverse!367 (TokenValueInjection!5742 BalanceConc!11080) Unit!26082)

(assert (=> b!1556661 (= lt!539051 (lemmaSemiInverse!367 (transformation!2951 rule!240) (seqFromList!1776 (_1!9514 lt!539049))))))

(declare-fun b!1556662 () Bool)

(declare-fun res!694730 () Bool)

(assert (=> b!1556662 (=> (not res!694730) (not e!998909))))

(assert (=> b!1556662 (= res!694730 (< (size!13644 (_2!9523 (get!4852 lt!539052))) (size!13644 lt!539010)))))

(declare-fun d!461643 () Bool)

(assert (=> d!461643 e!998912))

(declare-fun res!694731 () Bool)

(assert (=> d!461643 (=> res!694731 e!998912)))

(assert (=> d!461643 (= res!694731 (isEmpty!10126 lt!539052))))

(assert (=> d!461643 (= lt!539052 e!998911)))

(declare-fun c!252864 () Bool)

(assert (=> d!461643 (= c!252864 (isEmpty!10125 (_1!9514 lt!539049)))))

(declare-fun findLongestMatch!263 (Regex!4279 List!16906) tuple2!16328)

(assert (=> d!461643 (= lt!539049 (findLongestMatch!263 (regex!2951 rule!240) lt!539010))))

(assert (=> d!461643 (ruleValid!686 thiss!16438 rule!240)))

(assert (=> d!461643 (= (maxPrefixOneRule!705 thiss!16438 rule!240 lt!539010) lt!539052)))

(declare-fun b!1556663 () Bool)

(assert (=> b!1556663 (= e!998911 None!3039)))

(assert (= (and d!461643 c!252864) b!1556663))

(assert (= (and d!461643 (not c!252864)) b!1556661))

(assert (= (and b!1556661 (not res!694733)) b!1556658))

(assert (= (and d!461643 (not res!694731)) b!1556655))

(assert (= (and b!1556655 res!694729) b!1556656))

(assert (= (and b!1556656 res!694734) b!1556662))

(assert (= (and b!1556662 res!694730) b!1556657))

(assert (= (and b!1556657 res!694728) b!1556660))

(assert (= (and b!1556660 res!694732) b!1556659))

(declare-fun m!1828992 () Bool)

(assert (=> b!1556661 m!1828992))

(declare-fun m!1828994 () Bool)

(assert (=> b!1556661 m!1828994))

(assert (=> b!1556661 m!1828992))

(assert (=> b!1556661 m!1828926))

(assert (=> b!1556661 m!1828926))

(assert (=> b!1556661 m!1828928))

(assert (=> b!1556661 m!1828930))

(assert (=> b!1556661 m!1828992))

(declare-fun m!1828996 () Bool)

(assert (=> b!1556661 m!1828996))

(assert (=> b!1556661 m!1828928))

(declare-fun m!1828998 () Bool)

(assert (=> b!1556661 m!1828998))

(assert (=> b!1556661 m!1828992))

(declare-fun m!1829000 () Bool)

(assert (=> b!1556661 m!1829000))

(assert (=> b!1556661 m!1828932))

(declare-fun m!1829002 () Bool)

(assert (=> b!1556660 m!1829002))

(declare-fun m!1829004 () Bool)

(assert (=> b!1556660 m!1829004))

(assert (=> b!1556660 m!1829004))

(declare-fun m!1829006 () Bool)

(assert (=> b!1556660 m!1829006))

(assert (=> b!1556659 m!1829002))

(declare-fun m!1829008 () Bool)

(assert (=> b!1556659 m!1829008))

(assert (=> b!1556656 m!1829002))

(declare-fun m!1829010 () Bool)

(assert (=> b!1556656 m!1829010))

(assert (=> b!1556656 m!1829010))

(declare-fun m!1829012 () Bool)

(assert (=> b!1556656 m!1829012))

(assert (=> b!1556656 m!1829012))

(declare-fun m!1829014 () Bool)

(assert (=> b!1556656 m!1829014))

(declare-fun m!1829016 () Bool)

(assert (=> d!461643 m!1829016))

(declare-fun m!1829018 () Bool)

(assert (=> d!461643 m!1829018))

(declare-fun m!1829020 () Bool)

(assert (=> d!461643 m!1829020))

(assert (=> d!461643 m!1828886))

(assert (=> b!1556655 m!1829002))

(assert (=> b!1556655 m!1829010))

(assert (=> b!1556655 m!1829010))

(assert (=> b!1556655 m!1829012))

(assert (=> b!1556655 m!1829012))

(declare-fun m!1829022 () Bool)

(assert (=> b!1556655 m!1829022))

(assert (=> b!1556658 m!1828926))

(assert (=> b!1556658 m!1828928))

(assert (=> b!1556658 m!1828926))

(assert (=> b!1556658 m!1828928))

(assert (=> b!1556658 m!1828930))

(declare-fun m!1829024 () Bool)

(assert (=> b!1556658 m!1829024))

(assert (=> b!1556662 m!1829002))

(declare-fun m!1829026 () Bool)

(assert (=> b!1556662 m!1829026))

(assert (=> b!1556662 m!1828928))

(assert (=> b!1556657 m!1829002))

(assert (=> b!1556569 d!461643))

(declare-fun d!461645 () Bool)

(assert (=> d!461645 (= (apply!4112 (transformation!2951 rule!240) (_1!9521 (_1!9522 lt!539014))) (dynLambda!7474 (toValue!4324 (transformation!2951 rule!240)) (_1!9521 (_1!9522 lt!539014))))))

(declare-fun b_lambda!48895 () Bool)

(assert (=> (not b_lambda!48895) (not d!461645)))

(assert (=> d!461645 t!141393))

(declare-fun b_and!108619 () Bool)

(assert (= b_and!108617 (and (=> t!141393 result!105468) b_and!108619)))

(assert (=> d!461645 m!1828958))

(assert (=> b!1556569 d!461645))

(declare-fun d!461647 () Bool)

(assert (=> d!461647 (dynLambda!7476 lambda!65901 lt!539023)))

(declare-fun lt!539054 () Unit!26082)

(assert (=> d!461647 (= lt!539054 (choose!9289 lambda!65901 lt!539023))))

(assert (=> d!461647 (Forall!611 lambda!65901)))

(assert (=> d!461647 (= (ForallOf!213 lambda!65901 lt!539023) lt!539054)))

(declare-fun b_lambda!48897 () Bool)

(assert (=> (not b_lambda!48897) (not d!461647)))

(declare-fun bs!388734 () Bool)

(assert (= bs!388734 d!461647))

(declare-fun m!1829028 () Bool)

(assert (=> bs!388734 m!1829028))

(declare-fun m!1829030 () Bool)

(assert (=> bs!388734 m!1829030))

(assert (=> bs!388734 m!1828946))

(assert (=> b!1556569 d!461647))

(declare-fun d!461649 () Bool)

(assert (=> d!461649 (= (array_inv!1986 (_keys!2102 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))) (bvsge (size!13640 (_keys!2102 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1556541 d!461649))

(declare-fun d!461651 () Bool)

(assert (=> d!461651 (= (array_inv!1988 (_values!2087 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))) (bvsge (size!13639 (_values!2087 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))) #b00000000000000000000000000000000))))

(assert (=> b!1556541 d!461651))

(declare-fun d!461653 () Bool)

(declare-fun isBalanced!1645 (Conc!5569) Bool)

(assert (=> d!461653 (= (inv!22121 (totalInput!2470 cacheFurthestNullable!103)) (isBalanced!1645 (c!252851 (totalInput!2470 cacheFurthestNullable!103))))))

(declare-fun bs!388735 () Bool)

(assert (= bs!388735 d!461653))

(declare-fun m!1829032 () Bool)

(assert (=> bs!388735 m!1829032))

(assert (=> b!1556542 d!461653))

(declare-fun d!461655 () Bool)

(assert (=> d!461655 (= (inv!22115 (tag!3215 rule!240)) (= (mod (str.len (value!93739 (tag!3215 rule!240))) 2) 0))))

(assert (=> b!1556571 d!461655))

(declare-fun d!461657 () Bool)

(declare-fun res!694737 () Bool)

(declare-fun e!998915 () Bool)

(assert (=> d!461657 (=> (not res!694737) (not e!998915))))

(assert (=> d!461657 (= res!694737 (semiInverseModEq!1115 (toChars!4183 (transformation!2951 rule!240)) (toValue!4324 (transformation!2951 rule!240))))))

(assert (=> d!461657 (= (inv!22123 (transformation!2951 rule!240)) e!998915)))

(declare-fun b!1556666 () Bool)

(declare-fun equivClasses!1058 (Int Int) Bool)

(assert (=> b!1556666 (= e!998915 (equivClasses!1058 (toChars!4183 (transformation!2951 rule!240)) (toValue!4324 (transformation!2951 rule!240))))))

(assert (= (and d!461657 res!694737) b!1556666))

(assert (=> d!461657 m!1828922))

(declare-fun m!1829034 () Bool)

(assert (=> b!1556666 m!1829034))

(assert (=> b!1556571 d!461657))

(declare-fun d!461659 () Bool)

(declare-fun validCacheMapFurthestNullable!76 (MutableMap!1752 BalanceConc!11080) Bool)

(assert (=> d!461659 (= (valid!1456 cacheFurthestNullable!103) (validCacheMapFurthestNullable!76 (cache!2133 cacheFurthestNullable!103) (totalInput!2470 cacheFurthestNullable!103)))))

(declare-fun bs!388736 () Bool)

(assert (= bs!388736 d!461659))

(declare-fun m!1829036 () Bool)

(assert (=> bs!388736 m!1829036))

(assert (=> b!1556561 d!461659))

(declare-fun d!461661 () Bool)

(assert (=> d!461661 (= (inv!22121 totalInput!568) (isBalanced!1645 (c!252851 totalInput!568)))))

(declare-fun bs!388737 () Bool)

(assert (= bs!388737 d!461661))

(declare-fun m!1829038 () Bool)

(assert (=> bs!388737 m!1829038))

(assert (=> start!144364 d!461661))

(declare-fun d!461663 () Bool)

(declare-fun res!694740 () Bool)

(declare-fun e!998918 () Bool)

(assert (=> d!461663 (=> (not res!694740) (not e!998918))))

(assert (=> d!461663 (= res!694740 ((_ is HashMap!1754) (cache!2135 cacheDown!768)))))

(assert (=> d!461663 (= (inv!22126 cacheDown!768) e!998918)))

(declare-fun b!1556669 () Bool)

(assert (=> b!1556669 (= e!998918 (validCacheMapDown!163 (cache!2135 cacheDown!768)))))

(assert (= (and d!461663 res!694740) b!1556669))

(assert (=> b!1556669 m!1828950))

(assert (=> start!144364 d!461663))

(declare-fun d!461665 () Bool)

(declare-fun res!694743 () Bool)

(declare-fun e!998921 () Bool)

(assert (=> d!461665 (=> (not res!694743) (not e!998921))))

(assert (=> d!461665 (= res!694743 ((_ is HashMap!1753) (cache!2134 cacheUp!755)))))

(assert (=> d!461665 (= (inv!22124 cacheUp!755) e!998921)))

(declare-fun b!1556672 () Bool)

(declare-fun validCacheMapUp!163 (MutableMap!1753) Bool)

(assert (=> b!1556672 (= e!998921 (validCacheMapUp!163 (cache!2134 cacheUp!755)))))

(assert (= (and d!461665 res!694743) b!1556672))

(declare-fun m!1829040 () Bool)

(assert (=> b!1556672 m!1829040))

(assert (=> start!144364 d!461665))

(declare-fun d!461667 () Bool)

(assert (=> d!461667 (= (inv!22121 input!1676) (isBalanced!1645 (c!252851 input!1676)))))

(declare-fun bs!388738 () Bool)

(assert (= bs!388738 d!461667))

(declare-fun m!1829042 () Bool)

(assert (=> bs!388738 m!1829042))

(assert (=> start!144364 d!461667))

(declare-fun d!461669 () Bool)

(declare-fun res!694746 () Bool)

(declare-fun e!998924 () Bool)

(assert (=> d!461669 (=> (not res!694746) (not e!998924))))

(assert (=> d!461669 (= res!694746 ((_ is HashMap!1752) (cache!2133 cacheFurthestNullable!103)))))

(assert (=> d!461669 (= (inv!22125 cacheFurthestNullable!103) e!998924)))

(declare-fun b!1556675 () Bool)

(assert (=> b!1556675 (= e!998924 (validCacheMapFurthestNullable!76 (cache!2133 cacheFurthestNullable!103) (totalInput!2470 cacheFurthestNullable!103)))))

(assert (= (and d!461669 res!694746) b!1556675))

(assert (=> b!1556675 m!1829036))

(assert (=> start!144364 d!461669))

(declare-fun d!461671 () Bool)

(declare-fun c!252867 () Bool)

(assert (=> d!461671 (= c!252867 ((_ is Node!5569) (c!252851 input!1676)))))

(declare-fun e!998929 () Bool)

(assert (=> d!461671 (= (inv!22122 (c!252851 input!1676)) e!998929)))

(declare-fun b!1556682 () Bool)

(declare-fun inv!22127 (Conc!5569) Bool)

(assert (=> b!1556682 (= e!998929 (inv!22127 (c!252851 input!1676)))))

(declare-fun b!1556683 () Bool)

(declare-fun e!998930 () Bool)

(assert (=> b!1556683 (= e!998929 e!998930)))

(declare-fun res!694749 () Bool)

(assert (=> b!1556683 (= res!694749 (not ((_ is Leaf!8254) (c!252851 input!1676))))))

(assert (=> b!1556683 (=> res!694749 e!998930)))

(declare-fun b!1556684 () Bool)

(declare-fun inv!22128 (Conc!5569) Bool)

(assert (=> b!1556684 (= e!998930 (inv!22128 (c!252851 input!1676)))))

(assert (= (and d!461671 c!252867) b!1556682))

(assert (= (and d!461671 (not c!252867)) b!1556683))

(assert (= (and b!1556683 (not res!694749)) b!1556684))

(declare-fun m!1829044 () Bool)

(assert (=> b!1556682 m!1829044))

(declare-fun m!1829046 () Bool)

(assert (=> b!1556684 m!1829046))

(assert (=> b!1556543 d!461671))

(declare-fun d!461673 () Bool)

(assert (=> d!461673 (= (array_inv!1986 (_keys!2103 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755))))))) (bvsge (size!13640 (_keys!2103 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1556544 d!461673))

(declare-fun d!461675 () Bool)

(assert (=> d!461675 (= (array_inv!1987 (_values!2088 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755))))))) (bvsge (size!13641 (_values!2088 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755))))))) #b00000000000000000000000000000000))))

(assert (=> b!1556544 d!461675))

(declare-fun d!461677 () Bool)

(assert (=> d!461677 (= (list!6498 lt!539023) (list!6499 (c!252851 lt!539023)))))

(declare-fun bs!388739 () Bool)

(assert (= bs!388739 d!461677))

(declare-fun m!1829048 () Bool)

(assert (=> bs!388739 m!1829048))

(assert (=> b!1556573 d!461677))

(declare-fun d!461679 () Bool)

(declare-fun c!252868 () Bool)

(assert (=> d!461679 (= c!252868 ((_ is Node!5569) (c!252851 totalInput!568)))))

(declare-fun e!998931 () Bool)

(assert (=> d!461679 (= (inv!22122 (c!252851 totalInput!568)) e!998931)))

(declare-fun b!1556685 () Bool)

(assert (=> b!1556685 (= e!998931 (inv!22127 (c!252851 totalInput!568)))))

(declare-fun b!1556686 () Bool)

(declare-fun e!998932 () Bool)

(assert (=> b!1556686 (= e!998931 e!998932)))

(declare-fun res!694750 () Bool)

(assert (=> b!1556686 (= res!694750 (not ((_ is Leaf!8254) (c!252851 totalInput!568))))))

(assert (=> b!1556686 (=> res!694750 e!998932)))

(declare-fun b!1556687 () Bool)

(assert (=> b!1556687 (= e!998932 (inv!22128 (c!252851 totalInput!568)))))

(assert (= (and d!461679 c!252868) b!1556685))

(assert (= (and d!461679 (not c!252868)) b!1556686))

(assert (= (and b!1556686 (not res!694750)) b!1556687))

(declare-fun m!1829050 () Bool)

(assert (=> b!1556685 m!1829050))

(declare-fun m!1829052 () Bool)

(assert (=> b!1556687 m!1829052))

(assert (=> b!1556562 d!461679))

(declare-fun d!461681 () Bool)

(declare-fun c!252869 () Bool)

(assert (=> d!461681 (= c!252869 ((_ is Node!5569) (c!252851 (totalInput!2470 cacheFurthestNullable!103))))))

(declare-fun e!998933 () Bool)

(assert (=> d!461681 (= (inv!22122 (c!252851 (totalInput!2470 cacheFurthestNullable!103))) e!998933)))

(declare-fun b!1556688 () Bool)

(assert (=> b!1556688 (= e!998933 (inv!22127 (c!252851 (totalInput!2470 cacheFurthestNullable!103))))))

(declare-fun b!1556689 () Bool)

(declare-fun e!998934 () Bool)

(assert (=> b!1556689 (= e!998933 e!998934)))

(declare-fun res!694751 () Bool)

(assert (=> b!1556689 (= res!694751 (not ((_ is Leaf!8254) (c!252851 (totalInput!2470 cacheFurthestNullable!103)))))))

(assert (=> b!1556689 (=> res!694751 e!998934)))

(declare-fun b!1556690 () Bool)

(assert (=> b!1556690 (= e!998934 (inv!22128 (c!252851 (totalInput!2470 cacheFurthestNullable!103))))))

(assert (= (and d!461681 c!252869) b!1556688))

(assert (= (and d!461681 (not c!252869)) b!1556689))

(assert (= (and b!1556689 (not res!694751)) b!1556690))

(declare-fun m!1829054 () Bool)

(assert (=> b!1556688 m!1829054))

(declare-fun m!1829056 () Bool)

(assert (=> b!1556690 m!1829056))

(assert (=> b!1556555 d!461681))

(declare-fun d!461683 () Bool)

(declare-fun lt!539057 () Bool)

(assert (=> d!461683 (= lt!539057 (isEmpty!10125 (list!6498 (_1!9521 (_1!9522 lt!539014)))))))

(declare-fun isEmpty!10128 (Conc!5569) Bool)

(assert (=> d!461683 (= lt!539057 (isEmpty!10128 (c!252851 (_1!9521 (_1!9522 lt!539014)))))))

(assert (=> d!461683 (= (isEmpty!10124 (_1!9521 (_1!9522 lt!539014))) lt!539057)))

(declare-fun bs!388740 () Bool)

(assert (= bs!388740 d!461683))

(assert (=> bs!388740 m!1828896))

(assert (=> bs!388740 m!1828896))

(declare-fun m!1829058 () Bool)

(assert (=> bs!388740 m!1829058))

(declare-fun m!1829060 () Bool)

(assert (=> bs!388740 m!1829060))

(assert (=> b!1556545 d!461683))

(declare-fun b!1556700 () Bool)

(declare-fun res!694761 () Bool)

(declare-fun e!998937 () Bool)

(assert (=> b!1556700 (=> (not res!694761) (not e!998937))))

(declare-fun lt!539060 () tuple4!898)

(assert (=> b!1556700 (= res!694761 (valid!1457 (_2!9522 lt!539060)))))

(declare-fun b!1556701 () Bool)

(declare-fun res!694763 () Bool)

(assert (=> b!1556701 (=> (not res!694763) (not e!998937))))

(assert (=> b!1556701 (= res!694763 (valid!1456 (_4!449 lt!539060)))))

(declare-fun d!461685 () Bool)

(assert (=> d!461685 e!998937))

(declare-fun res!694762 () Bool)

(assert (=> d!461685 (=> (not res!694762) (not e!998937))))

(assert (=> d!461685 (= res!694762 (= (tuple2!16329 (list!6498 (_1!9521 (_1!9522 lt!539060))) (list!6498 (_2!9521 (_1!9522 lt!539060)))) (findLongestMatch!263 (regex!2951 rule!240) (list!6498 input!1676))))))

(declare-fun choose!9290 (Regex!4279 BalanceConc!11080 BalanceConc!11080 CacheUp!1066 CacheDown!1072 CacheFurthestNullable!494) tuple4!898)

(assert (=> d!461685 (= lt!539060 (choose!9290 (regex!2951 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(assert (=> d!461685 (validRegex!1713 (regex!2951 rule!240))))

(assert (=> d!461685 (= (findLongestMatchWithZipperSequenceV3Mem!52 (regex!2951 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103) lt!539060)))

(declare-fun b!1556702 () Bool)

(assert (=> b!1556702 (= e!998937 (= (totalInput!2470 (_4!449 lt!539060)) totalInput!568))))

(declare-fun b!1556699 () Bool)

(declare-fun res!694760 () Bool)

(assert (=> b!1556699 (=> (not res!694760) (not e!998937))))

(assert (=> b!1556699 (= res!694760 (valid!1455 (_3!1352 lt!539060)))))

(assert (= (and d!461685 res!694762) b!1556699))

(assert (= (and b!1556699 res!694760) b!1556700))

(assert (= (and b!1556700 res!694761) b!1556701))

(assert (= (and b!1556701 res!694763) b!1556702))

(declare-fun m!1829062 () Bool)

(assert (=> b!1556700 m!1829062))

(declare-fun m!1829064 () Bool)

(assert (=> b!1556701 m!1829064))

(assert (=> d!461685 m!1828962))

(declare-fun m!1829066 () Bool)

(assert (=> d!461685 m!1829066))

(declare-fun m!1829068 () Bool)

(assert (=> d!461685 m!1829068))

(assert (=> d!461685 m!1828878))

(declare-fun m!1829070 () Bool)

(assert (=> d!461685 m!1829070))

(assert (=> d!461685 m!1828878))

(declare-fun m!1829072 () Bool)

(assert (=> d!461685 m!1829072))

(declare-fun m!1829074 () Bool)

(assert (=> b!1556699 m!1829074))

(assert (=> b!1556545 d!461685))

(declare-fun d!461687 () Bool)

(declare-fun choose!9291 (Int) Bool)

(assert (=> d!461687 (= (Forall!611 lambda!65901) (choose!9291 lambda!65901))))

(declare-fun bs!388741 () Bool)

(assert (= bs!388741 d!461687))

(declare-fun m!1829076 () Bool)

(assert (=> bs!388741 m!1829076))

(assert (=> b!1556546 d!461687))

(declare-fun d!461689 () Bool)

(assert (=> d!461689 (= (array_inv!1986 (_keys!2104 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768))))))) (bvsge (size!13640 (_keys!2104 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1556574 d!461689))

(declare-fun d!461691 () Bool)

(assert (=> d!461691 (= (array_inv!1989 (_values!2089 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768))))))) (bvsge (size!13642 (_values!2089 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768))))))) #b00000000000000000000000000000000))))

(assert (=> b!1556574 d!461691))

(declare-fun d!461693 () Bool)

(declare-fun e!998940 () Bool)

(assert (=> d!461693 e!998940))

(declare-fun res!694766 () Bool)

(assert (=> d!461693 (=> res!694766 e!998940)))

(assert (=> d!461693 (= res!694766 (isEmpty!10125 (_1!9514 (findLongestMatchInner!335 (regex!2951 rule!240) Nil!16838 (size!13644 Nil!16838) lt!539010 lt!539010 (size!13644 lt!539010)))))))

(declare-fun lt!539063 () Unit!26082)

(declare-fun choose!9292 (Regex!4279 List!16906) Unit!26082)

(assert (=> d!461693 (= lt!539063 (choose!9292 (regex!2951 rule!240) lt!539010))))

(assert (=> d!461693 (validRegex!1713 (regex!2951 rule!240))))

(assert (=> d!461693 (= (longestMatchIsAcceptedByMatchOrIsEmpty!319 (regex!2951 rule!240) lt!539010) lt!539063)))

(declare-fun b!1556705 () Bool)

(assert (=> b!1556705 (= e!998940 (matchR!1881 (regex!2951 rule!240) (_1!9514 (findLongestMatchInner!335 (regex!2951 rule!240) Nil!16838 (size!13644 Nil!16838) lt!539010 lt!539010 (size!13644 lt!539010)))))))

(assert (= (and d!461693 (not res!694766)) b!1556705))

(assert (=> d!461693 m!1828962))

(declare-fun m!1829078 () Bool)

(assert (=> d!461693 m!1829078))

(assert (=> d!461693 m!1828928))

(assert (=> d!461693 m!1828926))

(assert (=> d!461693 m!1828998))

(assert (=> d!461693 m!1828926))

(assert (=> d!461693 m!1828928))

(assert (=> d!461693 m!1828930))

(assert (=> b!1556705 m!1828926))

(assert (=> b!1556705 m!1828928))

(assert (=> b!1556705 m!1828926))

(assert (=> b!1556705 m!1828928))

(assert (=> b!1556705 m!1828930))

(assert (=> b!1556705 m!1829024))

(assert (=> b!1556556 d!461693))

(declare-fun d!461695 () Bool)

(declare-fun lt!539066 () Int)

(assert (=> d!461695 (>= lt!539066 0)))

(declare-fun e!998943 () Int)

(assert (=> d!461695 (= lt!539066 e!998943)))

(declare-fun c!252872 () Bool)

(assert (=> d!461695 (= c!252872 ((_ is Nil!16838) Nil!16838))))

(assert (=> d!461695 (= (size!13644 Nil!16838) lt!539066)))

(declare-fun b!1556710 () Bool)

(assert (=> b!1556710 (= e!998943 0)))

(declare-fun b!1556711 () Bool)

(assert (=> b!1556711 (= e!998943 (+ 1 (size!13644 (t!141385 Nil!16838))))))

(assert (= (and d!461695 c!252872) b!1556710))

(assert (= (and d!461695 (not c!252872)) b!1556711))

(declare-fun m!1829080 () Bool)

(assert (=> b!1556711 m!1829080))

(assert (=> b!1556556 d!461695))

(declare-fun d!461697 () Bool)

(declare-fun lt!539067 () Int)

(assert (=> d!461697 (>= lt!539067 0)))

(declare-fun e!998944 () Int)

(assert (=> d!461697 (= lt!539067 e!998944)))

(declare-fun c!252873 () Bool)

(assert (=> d!461697 (= c!252873 ((_ is Nil!16838) lt!539010))))

(assert (=> d!461697 (= (size!13644 lt!539010) lt!539067)))

(declare-fun b!1556712 () Bool)

(assert (=> b!1556712 (= e!998944 0)))

(declare-fun b!1556713 () Bool)

(assert (=> b!1556713 (= e!998944 (+ 1 (size!13644 (t!141385 lt!539010))))))

(assert (= (and d!461697 c!252873) b!1556712))

(assert (= (and d!461697 (not c!252873)) b!1556713))

(declare-fun m!1829082 () Bool)

(assert (=> b!1556713 m!1829082))

(assert (=> b!1556556 d!461697))

(declare-fun bs!388742 () Bool)

(declare-fun d!461699 () Bool)

(assert (= bs!388742 (and d!461699 b!1556546)))

(declare-fun lambda!65907 () Int)

(assert (=> bs!388742 (= lambda!65907 lambda!65901)))

(assert (=> d!461699 true))

(assert (=> d!461699 (< (dynLambda!7473 order!9927 (toChars!4183 (transformation!2951 rule!240))) (dynLambda!7472 order!9925 lambda!65907))))

(assert (=> d!461699 true))

(assert (=> d!461699 (< (dynLambda!7471 order!9923 (toValue!4324 (transformation!2951 rule!240))) (dynLambda!7472 order!9925 lambda!65907))))

(assert (=> d!461699 (= (semiInverseModEq!1115 (toChars!4183 (transformation!2951 rule!240)) (toValue!4324 (transformation!2951 rule!240))) (Forall!611 lambda!65907))))

(declare-fun bs!388743 () Bool)

(assert (= bs!388743 d!461699))

(declare-fun m!1829084 () Bool)

(assert (=> bs!388743 m!1829084))

(assert (=> b!1556556 d!461699))

(declare-fun d!461701 () Bool)

(assert (=> d!461701 (= (isEmpty!10125 (_1!9514 lt!539015)) ((_ is Nil!16838) (_1!9514 lt!539015)))))

(assert (=> b!1556556 d!461701))

(declare-fun b!1556746 () Bool)

(declare-fun e!998967 () Bool)

(declare-fun e!998965 () Bool)

(assert (=> b!1556746 (= e!998967 e!998965)))

(declare-fun res!694771 () Bool)

(assert (=> b!1556746 (=> res!694771 e!998965)))

(declare-fun lt!539125 () tuple2!16328)

(assert (=> b!1556746 (= res!694771 (isEmpty!10125 (_1!9514 lt!539125)))))

(declare-fun b!1556747 () Bool)

(declare-fun e!998962 () tuple2!16328)

(assert (=> b!1556747 (= e!998962 (tuple2!16329 Nil!16838 lt!539010))))

(declare-fun b!1556748 () Bool)

(declare-fun e!998968 () tuple2!16328)

(declare-fun e!998964 () tuple2!16328)

(assert (=> b!1556748 (= e!998968 e!998964)))

(declare-fun c!252886 () Bool)

(assert (=> b!1556748 (= c!252886 (= (size!13644 Nil!16838) (size!13644 lt!539010)))))

(declare-fun b!1556749 () Bool)

(declare-fun c!252890 () Bool)

(declare-fun call!102084 () Bool)

(assert (=> b!1556749 (= c!252890 call!102084)))

(declare-fun lt!539142 () Unit!26082)

(declare-fun lt!539150 () Unit!26082)

(assert (=> b!1556749 (= lt!539142 lt!539150)))

(declare-fun lt!539134 () C!8736)

(declare-fun lt!539149 () List!16906)

(assert (=> b!1556749 (= (++!4416 (++!4416 Nil!16838 (Cons!16838 lt!539134 Nil!16838)) lt!539149) lt!539010)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!441 (List!16906 C!8736 List!16906 List!16906) Unit!26082)

(assert (=> b!1556749 (= lt!539150 (lemmaMoveElementToOtherListKeepsConcatEq!441 Nil!16838 lt!539134 lt!539149 lt!539010))))

(assert (=> b!1556749 (= lt!539149 (tail!2210 lt!539010))))

(assert (=> b!1556749 (= lt!539134 (head!3115 lt!539010))))

(declare-fun lt!539140 () Unit!26082)

(declare-fun lt!539147 () Unit!26082)

(assert (=> b!1556749 (= lt!539140 lt!539147)))

(declare-fun isPrefix!1262 (List!16906 List!16906) Bool)

(declare-fun getSuffix!672 (List!16906 List!16906) List!16906)

(assert (=> b!1556749 (isPrefix!1262 (++!4416 Nil!16838 (Cons!16838 (head!3115 (getSuffix!672 lt!539010 Nil!16838)) Nil!16838)) lt!539010)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!115 (List!16906 List!16906) Unit!26082)

(assert (=> b!1556749 (= lt!539147 (lemmaAddHeadSuffixToPrefixStillPrefix!115 Nil!16838 lt!539010))))

(declare-fun lt!539143 () Unit!26082)

(declare-fun lt!539145 () Unit!26082)

(assert (=> b!1556749 (= lt!539143 lt!539145)))

(assert (=> b!1556749 (= lt!539145 (lemmaAddHeadSuffixToPrefixStillPrefix!115 Nil!16838 lt!539010))))

(declare-fun lt!539127 () List!16906)

(assert (=> b!1556749 (= lt!539127 (++!4416 Nil!16838 (Cons!16838 (head!3115 lt!539010) Nil!16838)))))

(declare-fun lt!539132 () Unit!26082)

(declare-fun e!998963 () Unit!26082)

(assert (=> b!1556749 (= lt!539132 e!998963)))

(declare-fun c!252887 () Bool)

(assert (=> b!1556749 (= c!252887 (= (size!13644 Nil!16838) (size!13644 lt!539010)))))

(declare-fun lt!539141 () Unit!26082)

(declare-fun lt!539129 () Unit!26082)

(assert (=> b!1556749 (= lt!539141 lt!539129)))

(assert (=> b!1556749 (<= (size!13644 Nil!16838) (size!13644 lt!539010))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!116 (List!16906 List!16906) Unit!26082)

(assert (=> b!1556749 (= lt!539129 (lemmaIsPrefixThenSmallerEqSize!116 Nil!16838 lt!539010))))

(declare-fun e!998961 () tuple2!16328)

(assert (=> b!1556749 (= e!998964 e!998961)))

(declare-fun bm!102078 () Bool)

(assert (=> bm!102078 (= call!102084 (nullable!1272 (regex!2951 rule!240)))))

(declare-fun b!1556750 () Bool)

(declare-fun e!998966 () tuple2!16328)

(declare-fun lt!539133 () tuple2!16328)

(assert (=> b!1556750 (= e!998966 lt!539133)))

(declare-fun b!1556751 () Bool)

(assert (=> b!1556751 (= e!998965 (>= (size!13644 (_1!9514 lt!539125)) (size!13644 Nil!16838)))))

(declare-fun d!461703 () Bool)

(assert (=> d!461703 e!998967))

(declare-fun res!694772 () Bool)

(assert (=> d!461703 (=> (not res!694772) (not e!998967))))

(assert (=> d!461703 (= res!694772 (= (++!4416 (_1!9514 lt!539125) (_2!9514 lt!539125)) lt!539010))))

(assert (=> d!461703 (= lt!539125 e!998968)))

(declare-fun c!252889 () Bool)

(declare-fun lostCause!390 (Regex!4279) Bool)

(assert (=> d!461703 (= c!252889 (lostCause!390 (regex!2951 rule!240)))))

(declare-fun lt!539137 () Unit!26082)

(declare-fun Unit!26084 () Unit!26082)

(assert (=> d!461703 (= lt!539137 Unit!26084)))

(assert (=> d!461703 (= (getSuffix!672 lt!539010 Nil!16838) lt!539010)))

(declare-fun lt!539144 () Unit!26082)

(declare-fun lt!539124 () Unit!26082)

(assert (=> d!461703 (= lt!539144 lt!539124)))

(declare-fun lt!539148 () List!16906)

(assert (=> d!461703 (= lt!539010 lt!539148)))

(declare-fun lemmaSamePrefixThenSameSuffix!624 (List!16906 List!16906 List!16906 List!16906 List!16906) Unit!26082)

(assert (=> d!461703 (= lt!539124 (lemmaSamePrefixThenSameSuffix!624 Nil!16838 lt!539010 Nil!16838 lt!539148 lt!539010))))

(assert (=> d!461703 (= lt!539148 (getSuffix!672 lt!539010 Nil!16838))))

(declare-fun lt!539151 () Unit!26082)

(declare-fun lt!539135 () Unit!26082)

(assert (=> d!461703 (= lt!539151 lt!539135)))

(assert (=> d!461703 (isPrefix!1262 Nil!16838 (++!4416 Nil!16838 lt!539010))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!787 (List!16906 List!16906) Unit!26082)

(assert (=> d!461703 (= lt!539135 (lemmaConcatTwoListThenFirstIsPrefix!787 Nil!16838 lt!539010))))

(assert (=> d!461703 (validRegex!1713 (regex!2951 rule!240))))

(assert (=> d!461703 (= (findLongestMatchInner!335 (regex!2951 rule!240) Nil!16838 (size!13644 Nil!16838) lt!539010 lt!539010 (size!13644 lt!539010)) lt!539125)))

(declare-fun b!1556752 () Bool)

(declare-fun call!102087 () tuple2!16328)

(assert (=> b!1556752 (= e!998961 call!102087)))

(declare-fun bm!102079 () Bool)

(declare-fun call!102089 () Regex!4279)

(declare-fun call!102086 () C!8736)

(assert (=> bm!102079 (= call!102089 (derivativeStep!1024 (regex!2951 rule!240) call!102086))))

(declare-fun b!1556753 () Bool)

(assert (=> b!1556753 (= e!998961 e!998966)))

(assert (=> b!1556753 (= lt!539133 call!102087)))

(declare-fun c!252891 () Bool)

(assert (=> b!1556753 (= c!252891 (isEmpty!10125 (_1!9514 lt!539133)))))

(declare-fun bm!102080 () Bool)

(declare-fun call!102090 () Unit!26082)

(declare-fun lemmaIsPrefixRefl!892 (List!16906 List!16906) Unit!26082)

(assert (=> bm!102080 (= call!102090 (lemmaIsPrefixRefl!892 lt!539010 lt!539010))))

(declare-fun b!1556754 () Bool)

(declare-fun c!252888 () Bool)

(assert (=> b!1556754 (= c!252888 call!102084)))

(declare-fun lt!539130 () Unit!26082)

(declare-fun lt!539131 () Unit!26082)

(assert (=> b!1556754 (= lt!539130 lt!539131)))

(assert (=> b!1556754 (= lt!539010 Nil!16838)))

(declare-fun call!102083 () Unit!26082)

(assert (=> b!1556754 (= lt!539131 call!102083)))

(declare-fun lt!539139 () Unit!26082)

(declare-fun lt!539136 () Unit!26082)

(assert (=> b!1556754 (= lt!539139 lt!539136)))

(declare-fun call!102085 () Bool)

(assert (=> b!1556754 call!102085))

(assert (=> b!1556754 (= lt!539136 call!102090)))

(assert (=> b!1556754 (= e!998964 e!998962)))

(declare-fun bm!102081 () Bool)

(declare-fun call!102088 () List!16906)

(assert (=> bm!102081 (= call!102087 (findLongestMatchInner!335 call!102089 lt!539127 (+ (size!13644 Nil!16838) 1) call!102088 lt!539010 (size!13644 lt!539010)))))

(declare-fun b!1556755 () Bool)

(assert (=> b!1556755 (= e!998968 (tuple2!16329 Nil!16838 lt!539010))))

(declare-fun b!1556756 () Bool)

(assert (=> b!1556756 (= e!998962 (tuple2!16329 Nil!16838 Nil!16838))))

(declare-fun bm!102082 () Bool)

(assert (=> bm!102082 (= call!102086 (head!3115 lt!539010))))

(declare-fun bm!102083 () Bool)

(assert (=> bm!102083 (= call!102088 (tail!2210 lt!539010))))

(declare-fun b!1556757 () Bool)

(declare-fun Unit!26085 () Unit!26082)

(assert (=> b!1556757 (= e!998963 Unit!26085)))

(declare-fun b!1556758 () Bool)

(declare-fun Unit!26086 () Unit!26082)

(assert (=> b!1556758 (= e!998963 Unit!26086)))

(declare-fun lt!539138 () Unit!26082)

(assert (=> b!1556758 (= lt!539138 call!102090)))

(assert (=> b!1556758 call!102085))

(declare-fun lt!539146 () Unit!26082)

(assert (=> b!1556758 (= lt!539146 lt!539138)))

(declare-fun lt!539128 () Unit!26082)

(assert (=> b!1556758 (= lt!539128 call!102083)))

(assert (=> b!1556758 (= lt!539010 Nil!16838)))

(declare-fun lt!539126 () Unit!26082)

(assert (=> b!1556758 (= lt!539126 lt!539128)))

(assert (=> b!1556758 false))

(declare-fun b!1556759 () Bool)

(assert (=> b!1556759 (= e!998966 (tuple2!16329 Nil!16838 lt!539010))))

(declare-fun bm!102084 () Bool)

(assert (=> bm!102084 (= call!102085 (isPrefix!1262 lt!539010 lt!539010))))

(declare-fun bm!102085 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!126 (List!16906 List!16906 List!16906) Unit!26082)

(assert (=> bm!102085 (= call!102083 (lemmaIsPrefixSameLengthThenSameList!126 lt!539010 Nil!16838 lt!539010))))

(assert (= (and d!461703 c!252889) b!1556755))

(assert (= (and d!461703 (not c!252889)) b!1556748))

(assert (= (and b!1556748 c!252886) b!1556754))

(assert (= (and b!1556748 (not c!252886)) b!1556749))

(assert (= (and b!1556754 c!252888) b!1556756))

(assert (= (and b!1556754 (not c!252888)) b!1556747))

(assert (= (and b!1556749 c!252887) b!1556758))

(assert (= (and b!1556749 (not c!252887)) b!1556757))

(assert (= (and b!1556749 c!252890) b!1556753))

(assert (= (and b!1556749 (not c!252890)) b!1556752))

(assert (= (and b!1556753 c!252891) b!1556759))

(assert (= (and b!1556753 (not c!252891)) b!1556750))

(assert (= (or b!1556753 b!1556752) bm!102083))

(assert (= (or b!1556753 b!1556752) bm!102082))

(assert (= (or b!1556753 b!1556752) bm!102079))

(assert (= (or b!1556753 b!1556752) bm!102081))

(assert (= (or b!1556754 b!1556758) bm!102085))

(assert (= (or b!1556754 b!1556758) bm!102080))

(assert (= (or b!1556754 b!1556749) bm!102078))

(assert (= (or b!1556754 b!1556758) bm!102084))

(assert (= (and d!461703 res!694772) b!1556746))

(assert (= (and b!1556746 (not res!694771)) b!1556751))

(declare-fun m!1829086 () Bool)

(assert (=> bm!102085 m!1829086))

(declare-fun m!1829088 () Bool)

(assert (=> b!1556753 m!1829088))

(declare-fun m!1829090 () Bool)

(assert (=> b!1556746 m!1829090))

(declare-fun m!1829092 () Bool)

(assert (=> bm!102083 m!1829092))

(declare-fun m!1829094 () Bool)

(assert (=> bm!102080 m!1829094))

(declare-fun m!1829096 () Bool)

(assert (=> b!1556751 m!1829096))

(assert (=> b!1556751 m!1828926))

(assert (=> bm!102078 m!1828970))

(declare-fun m!1829098 () Bool)

(assert (=> bm!102079 m!1829098))

(declare-fun m!1829100 () Bool)

(assert (=> d!461703 m!1829100))

(declare-fun m!1829102 () Bool)

(assert (=> d!461703 m!1829102))

(declare-fun m!1829104 () Bool)

(assert (=> d!461703 m!1829104))

(declare-fun m!1829106 () Bool)

(assert (=> d!461703 m!1829106))

(assert (=> d!461703 m!1828962))

(declare-fun m!1829108 () Bool)

(assert (=> d!461703 m!1829108))

(declare-fun m!1829110 () Bool)

(assert (=> d!461703 m!1829110))

(assert (=> d!461703 m!1829104))

(declare-fun m!1829112 () Bool)

(assert (=> d!461703 m!1829112))

(assert (=> bm!102081 m!1828928))

(declare-fun m!1829114 () Bool)

(assert (=> bm!102081 m!1829114))

(declare-fun m!1829116 () Bool)

(assert (=> bm!102084 m!1829116))

(declare-fun m!1829118 () Bool)

(assert (=> b!1556749 m!1829118))

(declare-fun m!1829120 () Bool)

(assert (=> b!1556749 m!1829120))

(declare-fun m!1829122 () Bool)

(assert (=> b!1556749 m!1829122))

(declare-fun m!1829124 () Bool)

(assert (=> b!1556749 m!1829124))

(assert (=> b!1556749 m!1829100))

(assert (=> b!1556749 m!1829122))

(assert (=> b!1556749 m!1829100))

(declare-fun m!1829126 () Bool)

(assert (=> b!1556749 m!1829126))

(declare-fun m!1829128 () Bool)

(assert (=> b!1556749 m!1829128))

(declare-fun m!1829130 () Bool)

(assert (=> b!1556749 m!1829130))

(assert (=> b!1556749 m!1828928))

(declare-fun m!1829132 () Bool)

(assert (=> b!1556749 m!1829132))

(declare-fun m!1829134 () Bool)

(assert (=> b!1556749 m!1829134))

(assert (=> b!1556749 m!1829128))

(assert (=> b!1556749 m!1829092))

(assert (=> b!1556749 m!1828926))

(declare-fun m!1829136 () Bool)

(assert (=> b!1556749 m!1829136))

(assert (=> bm!102082 m!1829120))

(assert (=> b!1556556 d!461703))

(declare-fun d!461705 () Bool)

(declare-fun e!998971 () Bool)

(assert (=> d!461705 e!998971))

(declare-fun res!694775 () Bool)

(assert (=> d!461705 (=> (not res!694775) (not e!998971))))

(assert (=> d!461705 (= res!694775 (semiInverseModEq!1115 (toChars!4183 (transformation!2951 rule!240)) (toValue!4324 (transformation!2951 rule!240))))))

(declare-fun Unit!26087 () Unit!26082)

(assert (=> d!461705 (= (lemmaInv!429 (transformation!2951 rule!240)) Unit!26087)))

(declare-fun b!1556762 () Bool)

(assert (=> b!1556762 (= e!998971 (equivClasses!1058 (toChars!4183 (transformation!2951 rule!240)) (toValue!4324 (transformation!2951 rule!240))))))

(assert (= (and d!461705 res!694775) b!1556762))

(assert (=> d!461705 m!1828922))

(assert (=> b!1556762 m!1829034))

(assert (=> b!1556556 d!461705))

(declare-fun d!461707 () Bool)

(assert (=> d!461707 (= (get!4852 lt!539018) (v!23692 lt!539018))))

(assert (=> b!1556547 d!461707))

(declare-fun d!461709 () Bool)

(declare-fun e!998974 () Bool)

(assert (=> d!461709 e!998974))

(declare-fun res!694778 () Bool)

(assert (=> d!461709 (=> res!694778 e!998974)))

(declare-fun lt!539154 () Bool)

(assert (=> d!461709 (= res!694778 (not lt!539154))))

(declare-fun drop!787 (List!16906 Int) List!16906)

(assert (=> d!461709 (= lt!539154 (= lt!539010 (drop!787 (list!6498 totalInput!568) (- (size!13644 (list!6498 totalInput!568)) (size!13644 lt!539010)))))))

(assert (=> d!461709 (= (isSuffix!378 lt!539010 (list!6498 totalInput!568)) lt!539154)))

(declare-fun b!1556765 () Bool)

(assert (=> b!1556765 (= e!998974 (>= (size!13644 (list!6498 totalInput!568)) (size!13644 lt!539010)))))

(assert (= (and d!461709 (not res!694778)) b!1556765))

(assert (=> d!461709 m!1828874))

(declare-fun m!1829138 () Bool)

(assert (=> d!461709 m!1829138))

(assert (=> d!461709 m!1828928))

(assert (=> d!461709 m!1828874))

(declare-fun m!1829140 () Bool)

(assert (=> d!461709 m!1829140))

(assert (=> b!1556765 m!1828874))

(assert (=> b!1556765 m!1829138))

(assert (=> b!1556765 m!1828928))

(assert (=> b!1556537 d!461709))

(declare-fun d!461711 () Bool)

(assert (=> d!461711 (= (list!6498 totalInput!568) (list!6499 (c!252851 totalInput!568)))))

(declare-fun bs!388744 () Bool)

(assert (= bs!388744 d!461711))

(declare-fun m!1829142 () Bool)

(assert (=> bs!388744 m!1829142))

(assert (=> b!1556537 d!461711))

(declare-fun d!461713 () Bool)

(assert (=> d!461713 (= (list!6498 input!1676) (list!6499 (c!252851 input!1676)))))

(declare-fun bs!388745 () Bool)

(assert (= bs!388745 d!461713))

(declare-fun m!1829144 () Bool)

(assert (=> bs!388745 m!1829144))

(assert (=> b!1556537 d!461713))

(declare-fun d!461715 () Bool)

(declare-fun res!694783 () Bool)

(declare-fun e!998977 () Bool)

(assert (=> d!461715 (=> (not res!694783) (not e!998977))))

(assert (=> d!461715 (= res!694783 (validRegex!1713 (regex!2951 rule!240)))))

(assert (=> d!461715 (= (ruleValid!686 thiss!16438 rule!240) e!998977)))

(declare-fun b!1556770 () Bool)

(declare-fun res!694784 () Bool)

(assert (=> b!1556770 (=> (not res!694784) (not e!998977))))

(assert (=> b!1556770 (= res!694784 (not (nullable!1272 (regex!2951 rule!240))))))

(declare-fun b!1556771 () Bool)

(assert (=> b!1556771 (= e!998977 (not (= (tag!3215 rule!240) (String!19494 ""))))))

(assert (= (and d!461715 res!694783) b!1556770))

(assert (= (and b!1556770 res!694784) b!1556771))

(assert (=> d!461715 m!1828962))

(assert (=> b!1556770 m!1828970))

(assert (=> b!1556566 d!461715))

(declare-fun d!461717 () Bool)

(assert (=> d!461717 (= (valid!1457 cacheUp!755) (validCacheMapUp!163 (cache!2134 cacheUp!755)))))

(declare-fun bs!388746 () Bool)

(assert (= bs!388746 d!461717))

(assert (=> bs!388746 m!1829040))

(assert (=> b!1556567 d!461717))

(declare-fun condMapEmpty!8420 () Bool)

(declare-fun mapDefault!8420 () List!16910)

(assert (=> mapNonEmpty!8416 (= condMapEmpty!8420 (= mapRest!8417 ((as const (Array (_ BitVec 32) List!16910)) mapDefault!8420)))))

(declare-fun e!998994 () Bool)

(declare-fun mapRes!8420 () Bool)

(assert (=> mapNonEmpty!8416 (= tp!456573 (and e!998994 mapRes!8420))))

(declare-fun mapIsEmpty!8420 () Bool)

(assert (=> mapIsEmpty!8420 mapRes!8420))

(declare-fun setRes!10919 () Bool)

(declare-fun e!998993 () Bool)

(declare-fun b!1556786 () Bool)

(declare-fun tp_is_empty!7071 () Bool)

(declare-fun tp!456606 () Bool)

(declare-fun tp!456607 () Bool)

(declare-fun inv!22129 (Context!1594) Bool)

(assert (=> b!1556786 (= e!998994 (and tp!456607 (inv!22129 (_2!9519 (_1!9520 (h!22243 mapDefault!8420)))) e!998993 tp_is_empty!7071 setRes!10919 tp!456606))))

(declare-fun condSetEmpty!10919 () Bool)

(assert (=> b!1556786 (= condSetEmpty!10919 (= (_2!9520 (h!22243 mapDefault!8420)) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun mapNonEmpty!8420 () Bool)

(declare-fun tp!456610 () Bool)

(declare-fun e!998995 () Bool)

(assert (=> mapNonEmpty!8420 (= mapRes!8420 (and tp!456610 e!998995))))

(declare-fun mapRest!8420 () (Array (_ BitVec 32) List!16910))

(declare-fun mapValue!8420 () List!16910)

(declare-fun mapKey!8420 () (_ BitVec 32))

(assert (=> mapNonEmpty!8420 (= mapRest!8417 (store mapRest!8420 mapKey!8420 mapValue!8420))))

(declare-fun tp!456601 () Bool)

(declare-fun b!1556787 () Bool)

(declare-fun setRes!10918 () Bool)

(declare-fun tp!456608 () Bool)

(declare-fun e!998992 () Bool)

(assert (=> b!1556787 (= e!998995 (and tp!456608 (inv!22129 (_2!9519 (_1!9520 (h!22243 mapValue!8420)))) e!998992 tp_is_empty!7071 setRes!10918 tp!456601))))

(declare-fun condSetEmpty!10918 () Bool)

(assert (=> b!1556787 (= condSetEmpty!10918 (= (_2!9520 (h!22243 mapValue!8420)) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun setIsEmpty!10918 () Bool)

(assert (=> setIsEmpty!10918 setRes!10919))

(declare-fun b!1556788 () Bool)

(declare-fun e!998991 () Bool)

(declare-fun tp!456602 () Bool)

(assert (=> b!1556788 (= e!998991 tp!456602)))

(declare-fun b!1556789 () Bool)

(declare-fun e!998990 () Bool)

(declare-fun tp!456603 () Bool)

(assert (=> b!1556789 (= e!998990 tp!456603)))

(declare-fun b!1556790 () Bool)

(declare-fun tp!456605 () Bool)

(assert (=> b!1556790 (= e!998993 tp!456605)))

(declare-fun setNonEmpty!10918 () Bool)

(declare-fun tp!456609 () Bool)

(declare-fun setElem!10918 () Context!1594)

(assert (=> setNonEmpty!10918 (= setRes!10919 (and tp!456609 (inv!22129 setElem!10918) e!998990))))

(declare-fun setRest!10918 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10918 (= (_2!9520 (h!22243 mapDefault!8420)) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10918 true) setRest!10918))))

(declare-fun setIsEmpty!10919 () Bool)

(assert (=> setIsEmpty!10919 setRes!10918))

(declare-fun b!1556791 () Bool)

(declare-fun tp!456604 () Bool)

(assert (=> b!1556791 (= e!998992 tp!456604)))

(declare-fun setNonEmpty!10919 () Bool)

(declare-fun setElem!10919 () Context!1594)

(declare-fun tp!456611 () Bool)

(assert (=> setNonEmpty!10919 (= setRes!10918 (and tp!456611 (inv!22129 setElem!10919) e!998991))))

(declare-fun setRest!10919 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10919 (= (_2!9520 (h!22243 mapValue!8420)) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10919 true) setRest!10919))))

(assert (= (and mapNonEmpty!8416 condMapEmpty!8420) mapIsEmpty!8420))

(assert (= (and mapNonEmpty!8416 (not condMapEmpty!8420)) mapNonEmpty!8420))

(assert (= b!1556787 b!1556791))

(assert (= (and b!1556787 condSetEmpty!10918) setIsEmpty!10919))

(assert (= (and b!1556787 (not condSetEmpty!10918)) setNonEmpty!10919))

(assert (= setNonEmpty!10919 b!1556788))

(assert (= (and mapNonEmpty!8420 ((_ is Cons!16842) mapValue!8420)) b!1556787))

(assert (= b!1556786 b!1556790))

(assert (= (and b!1556786 condSetEmpty!10919) setIsEmpty!10918))

(assert (= (and b!1556786 (not condSetEmpty!10919)) setNonEmpty!10918))

(assert (= setNonEmpty!10918 b!1556789))

(assert (= (and mapNonEmpty!8416 ((_ is Cons!16842) mapDefault!8420)) b!1556786))

(declare-fun m!1829146 () Bool)

(assert (=> b!1556787 m!1829146))

(declare-fun m!1829148 () Bool)

(assert (=> b!1556786 m!1829148))

(declare-fun m!1829150 () Bool)

(assert (=> mapNonEmpty!8420 m!1829150))

(declare-fun m!1829152 () Bool)

(assert (=> setNonEmpty!10918 m!1829152))

(declare-fun m!1829154 () Bool)

(assert (=> setNonEmpty!10919 m!1829154))

(declare-fun b!1556800 () Bool)

(declare-fun e!999004 () Bool)

(declare-fun tp!456624 () Bool)

(assert (=> b!1556800 (= e!999004 tp!456624)))

(declare-fun setElem!10922 () Context!1594)

(declare-fun setRes!10922 () Bool)

(declare-fun tp!456622 () Bool)

(declare-fun setNonEmpty!10922 () Bool)

(assert (=> setNonEmpty!10922 (= setRes!10922 (and tp!456622 (inv!22129 setElem!10922) e!999004))))

(declare-fun setRest!10922 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10922 (= (_2!9520 (h!22243 mapValue!8416)) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10922 true) setRest!10922))))

(declare-fun setIsEmpty!10922 () Bool)

(assert (=> setIsEmpty!10922 setRes!10922))

(declare-fun tp!456626 () Bool)

(declare-fun e!999002 () Bool)

(declare-fun tp!456625 () Bool)

(declare-fun e!999003 () Bool)

(declare-fun b!1556801 () Bool)

(assert (=> b!1556801 (= e!999002 (and tp!456626 (inv!22129 (_2!9519 (_1!9520 (h!22243 mapValue!8416)))) e!999003 tp_is_empty!7071 setRes!10922 tp!456625))))

(declare-fun condSetEmpty!10922 () Bool)

(assert (=> b!1556801 (= condSetEmpty!10922 (= (_2!9520 (h!22243 mapValue!8416)) ((as const (Array Context!1594 Bool)) false)))))

(assert (=> mapNonEmpty!8416 (= tp!456557 e!999002)))

(declare-fun b!1556802 () Bool)

(declare-fun tp!456623 () Bool)

(assert (=> b!1556802 (= e!999003 tp!456623)))

(assert (= b!1556801 b!1556802))

(assert (= (and b!1556801 condSetEmpty!10922) setIsEmpty!10922))

(assert (= (and b!1556801 (not condSetEmpty!10922)) setNonEmpty!10922))

(assert (= setNonEmpty!10922 b!1556800))

(assert (= (and mapNonEmpty!8416 ((_ is Cons!16842) mapValue!8416)) b!1556801))

(declare-fun m!1829156 () Bool)

(assert (=> setNonEmpty!10922 m!1829156))

(declare-fun m!1829158 () Bool)

(assert (=> b!1556801 m!1829158))

(declare-fun b!1556803 () Bool)

(declare-fun e!999007 () Bool)

(declare-fun tp!456629 () Bool)

(assert (=> b!1556803 (= e!999007 tp!456629)))

(declare-fun setNonEmpty!10923 () Bool)

(declare-fun tp!456627 () Bool)

(declare-fun setRes!10923 () Bool)

(declare-fun setElem!10923 () Context!1594)

(assert (=> setNonEmpty!10923 (= setRes!10923 (and tp!456627 (inv!22129 setElem!10923) e!999007))))

(declare-fun setRest!10923 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10923 (= (_2!9520 (h!22243 mapDefault!8416)) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10923 true) setRest!10923))))

(declare-fun setIsEmpty!10923 () Bool)

(assert (=> setIsEmpty!10923 setRes!10923))

(declare-fun tp!456631 () Bool)

(declare-fun b!1556804 () Bool)

(declare-fun tp!456630 () Bool)

(declare-fun e!999006 () Bool)

(declare-fun e!999005 () Bool)

(assert (=> b!1556804 (= e!999005 (and tp!456631 (inv!22129 (_2!9519 (_1!9520 (h!22243 mapDefault!8416)))) e!999006 tp_is_empty!7071 setRes!10923 tp!456630))))

(declare-fun condSetEmpty!10923 () Bool)

(assert (=> b!1556804 (= condSetEmpty!10923 (= (_2!9520 (h!22243 mapDefault!8416)) ((as const (Array Context!1594 Bool)) false)))))

(assert (=> b!1556559 (= tp!456560 e!999005)))

(declare-fun b!1556805 () Bool)

(declare-fun tp!456628 () Bool)

(assert (=> b!1556805 (= e!999006 tp!456628)))

(assert (= b!1556804 b!1556805))

(assert (= (and b!1556804 condSetEmpty!10923) setIsEmpty!10923))

(assert (= (and b!1556804 (not condSetEmpty!10923)) setNonEmpty!10923))

(assert (= setNonEmpty!10923 b!1556803))

(assert (= (and b!1556559 ((_ is Cons!16842) mapDefault!8416)) b!1556804))

(declare-fun m!1829160 () Bool)

(assert (=> setNonEmpty!10923 m!1829160))

(declare-fun m!1829162 () Bool)

(assert (=> b!1556804 m!1829162))

(declare-fun setIsEmpty!10926 () Bool)

(declare-fun setRes!10926 () Bool)

(assert (=> setIsEmpty!10926 setRes!10926))

(declare-fun e!999012 () Bool)

(assert (=> b!1556550 (= tp!456575 e!999012)))

(declare-fun b!1556813 () Bool)

(declare-fun e!999013 () Bool)

(declare-fun tp!456638 () Bool)

(assert (=> b!1556813 (= e!999013 tp!456638)))

(declare-fun b!1556812 () Bool)

(declare-fun tp!456640 () Bool)

(assert (=> b!1556812 (= e!999012 (and setRes!10926 tp!456640))))

(declare-fun condSetEmpty!10926 () Bool)

(assert (=> b!1556812 (= condSetEmpty!10926 (= (_1!9515 (_1!9516 (h!22241 mapDefault!8415))) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun setElem!10926 () Context!1594)

(declare-fun tp!456639 () Bool)

(declare-fun setNonEmpty!10926 () Bool)

(assert (=> setNonEmpty!10926 (= setRes!10926 (and tp!456639 (inv!22129 setElem!10926) e!999013))))

(declare-fun setRest!10926 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10926 (= (_1!9515 (_1!9516 (h!22241 mapDefault!8415))) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10926 true) setRest!10926))))

(assert (= (and b!1556812 condSetEmpty!10926) setIsEmpty!10926))

(assert (= (and b!1556812 (not condSetEmpty!10926)) setNonEmpty!10926))

(assert (= setNonEmpty!10926 b!1556813))

(assert (= (and b!1556550 ((_ is Cons!16840) mapDefault!8415)) b!1556812))

(declare-fun m!1829164 () Bool)

(assert (=> setNonEmpty!10926 m!1829164))

(declare-fun setIsEmpty!10927 () Bool)

(declare-fun setRes!10927 () Bool)

(assert (=> setIsEmpty!10927 setRes!10927))

(declare-fun e!999014 () Bool)

(assert (=> b!1556541 (= tp!456565 e!999014)))

(declare-fun b!1556815 () Bool)

(declare-fun e!999015 () Bool)

(declare-fun tp!456641 () Bool)

(assert (=> b!1556815 (= e!999015 tp!456641)))

(declare-fun b!1556814 () Bool)

(declare-fun tp!456643 () Bool)

(assert (=> b!1556814 (= e!999014 (and setRes!10927 tp!456643))))

(declare-fun condSetEmpty!10927 () Bool)

(assert (=> b!1556814 (= condSetEmpty!10927 (= (_1!9515 (_1!9516 (h!22241 (zeroValue!2065 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))))) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun setNonEmpty!10927 () Bool)

(declare-fun setElem!10927 () Context!1594)

(declare-fun tp!456642 () Bool)

(assert (=> setNonEmpty!10927 (= setRes!10927 (and tp!456642 (inv!22129 setElem!10927) e!999015))))

(declare-fun setRest!10927 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10927 (= (_1!9515 (_1!9516 (h!22241 (zeroValue!2065 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10927 true) setRest!10927))))

(assert (= (and b!1556814 condSetEmpty!10927) setIsEmpty!10927))

(assert (= (and b!1556814 (not condSetEmpty!10927)) setNonEmpty!10927))

(assert (= setNonEmpty!10927 b!1556815))

(assert (= (and b!1556541 ((_ is Cons!16840) (zeroValue!2065 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103)))))))) b!1556814))

(declare-fun m!1829166 () Bool)

(assert (=> setNonEmpty!10927 m!1829166))

(declare-fun setIsEmpty!10928 () Bool)

(declare-fun setRes!10928 () Bool)

(assert (=> setIsEmpty!10928 setRes!10928))

(declare-fun e!999016 () Bool)

(assert (=> b!1556541 (= tp!456567 e!999016)))

(declare-fun b!1556817 () Bool)

(declare-fun e!999017 () Bool)

(declare-fun tp!456644 () Bool)

(assert (=> b!1556817 (= e!999017 tp!456644)))

(declare-fun b!1556816 () Bool)

(declare-fun tp!456646 () Bool)

(assert (=> b!1556816 (= e!999016 (and setRes!10928 tp!456646))))

(declare-fun condSetEmpty!10928 () Bool)

(assert (=> b!1556816 (= condSetEmpty!10928 (= (_1!9515 (_1!9516 (h!22241 (minValue!2065 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))))) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun tp!456645 () Bool)

(declare-fun setElem!10928 () Context!1594)

(declare-fun setNonEmpty!10928 () Bool)

(assert (=> setNonEmpty!10928 (= setRes!10928 (and tp!456645 (inv!22129 setElem!10928) e!999017))))

(declare-fun setRest!10928 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10928 (= (_1!9515 (_1!9516 (h!22241 (minValue!2065 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103))))))))) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10928 true) setRest!10928))))

(assert (= (and b!1556816 condSetEmpty!10928) setIsEmpty!10928))

(assert (= (and b!1556816 (not condSetEmpty!10928)) setNonEmpty!10928))

(assert (= setNonEmpty!10928 b!1556817))

(assert (= (and b!1556541 ((_ is Cons!16840) (minValue!2065 (v!23686 (underlying!3825 (v!23687 (underlying!3826 (cache!2133 cacheFurthestNullable!103)))))))) b!1556816))

(declare-fun m!1829168 () Bool)

(assert (=> setNonEmpty!10928 m!1829168))

(declare-fun b!1556828 () Bool)

(declare-fun e!999020 () Bool)

(assert (=> b!1556828 (= e!999020 tp_is_empty!7071)))

(assert (=> b!1556571 (= tp!456555 e!999020)))

(declare-fun b!1556831 () Bool)

(declare-fun tp!456658 () Bool)

(declare-fun tp!456657 () Bool)

(assert (=> b!1556831 (= e!999020 (and tp!456658 tp!456657))))

(declare-fun b!1556830 () Bool)

(declare-fun tp!456661 () Bool)

(assert (=> b!1556830 (= e!999020 tp!456661)))

(declare-fun b!1556829 () Bool)

(declare-fun tp!456660 () Bool)

(declare-fun tp!456659 () Bool)

(assert (=> b!1556829 (= e!999020 (and tp!456660 tp!456659))))

(assert (= (and b!1556571 ((_ is ElementMatch!4279) (regex!2951 rule!240))) b!1556828))

(assert (= (and b!1556571 ((_ is Concat!7321) (regex!2951 rule!240))) b!1556829))

(assert (= (and b!1556571 ((_ is Star!4279) (regex!2951 rule!240))) b!1556830))

(assert (= (and b!1556571 ((_ is Union!4279) (regex!2951 rule!240))) b!1556831))

(declare-fun e!999029 () Bool)

(assert (=> b!1556553 (= tp!456570 e!999029)))

(declare-fun b!1556840 () Bool)

(declare-fun e!999027 () Bool)

(declare-fun tp!456671 () Bool)

(assert (=> b!1556840 (= e!999027 tp!456671)))

(declare-fun tp!456673 () Bool)

(declare-fun e!999028 () Bool)

(declare-fun b!1556841 () Bool)

(declare-fun setRes!10931 () Bool)

(assert (=> b!1556841 (= e!999029 (and (inv!22129 (_1!9517 (_1!9518 (h!22242 mapDefault!8417)))) e!999028 tp_is_empty!7071 setRes!10931 tp!456673))))

(declare-fun condSetEmpty!10931 () Bool)

(assert (=> b!1556841 (= condSetEmpty!10931 (= (_2!9518 (h!22242 mapDefault!8417)) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun setIsEmpty!10931 () Bool)

(assert (=> setIsEmpty!10931 setRes!10931))

(declare-fun b!1556842 () Bool)

(declare-fun tp!456672 () Bool)

(assert (=> b!1556842 (= e!999028 tp!456672)))

(declare-fun setElem!10931 () Context!1594)

(declare-fun tp!456670 () Bool)

(declare-fun setNonEmpty!10931 () Bool)

(assert (=> setNonEmpty!10931 (= setRes!10931 (and tp!456670 (inv!22129 setElem!10931) e!999027))))

(declare-fun setRest!10931 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10931 (= (_2!9518 (h!22242 mapDefault!8417)) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10931 true) setRest!10931))))

(assert (= b!1556841 b!1556842))

(assert (= (and b!1556841 condSetEmpty!10931) setIsEmpty!10931))

(assert (= (and b!1556841 (not condSetEmpty!10931)) setNonEmpty!10931))

(assert (= setNonEmpty!10931 b!1556840))

(assert (= (and b!1556553 ((_ is Cons!16841) mapDefault!8417)) b!1556841))

(declare-fun m!1829170 () Bool)

(assert (=> b!1556841 m!1829170))

(declare-fun m!1829172 () Bool)

(assert (=> setNonEmpty!10931 m!1829172))

(declare-fun tp!456680 () Bool)

(declare-fun e!999034 () Bool)

(declare-fun tp!456682 () Bool)

(declare-fun b!1556851 () Bool)

(assert (=> b!1556851 (= e!999034 (and (inv!22122 (left!13683 (c!252851 input!1676))) tp!456682 (inv!22122 (right!14013 (c!252851 input!1676))) tp!456680))))

(declare-fun b!1556853 () Bool)

(declare-fun e!999035 () Bool)

(declare-fun tp!456681 () Bool)

(assert (=> b!1556853 (= e!999035 tp!456681)))

(declare-fun b!1556852 () Bool)

(declare-fun inv!22130 (IArray!11143) Bool)

(assert (=> b!1556852 (= e!999034 (and (inv!22130 (xs!8369 (c!252851 input!1676))) e!999035))))

(assert (=> b!1556543 (= tp!456559 (and (inv!22122 (c!252851 input!1676)) e!999034))))

(assert (= (and b!1556543 ((_ is Node!5569) (c!252851 input!1676))) b!1556851))

(assert (= b!1556852 b!1556853))

(assert (= (and b!1556543 ((_ is Leaf!8254) (c!252851 input!1676))) b!1556852))

(declare-fun m!1829174 () Bool)

(assert (=> b!1556851 m!1829174))

(declare-fun m!1829176 () Bool)

(assert (=> b!1556851 m!1829176))

(declare-fun m!1829178 () Bool)

(assert (=> b!1556852 m!1829178))

(assert (=> b!1556543 m!1828870))

(declare-fun e!999038 () Bool)

(assert (=> b!1556544 (= tp!456556 e!999038)))

(declare-fun b!1556854 () Bool)

(declare-fun e!999036 () Bool)

(declare-fun tp!456684 () Bool)

(assert (=> b!1556854 (= e!999036 tp!456684)))

(declare-fun setRes!10932 () Bool)

(declare-fun tp!456686 () Bool)

(declare-fun b!1556855 () Bool)

(declare-fun e!999037 () Bool)

(assert (=> b!1556855 (= e!999038 (and (inv!22129 (_1!9517 (_1!9518 (h!22242 (zeroValue!2066 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755)))))))))) e!999037 tp_is_empty!7071 setRes!10932 tp!456686))))

(declare-fun condSetEmpty!10932 () Bool)

(assert (=> b!1556855 (= condSetEmpty!10932 (= (_2!9518 (h!22242 (zeroValue!2066 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755)))))))) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun setIsEmpty!10932 () Bool)

(assert (=> setIsEmpty!10932 setRes!10932))

(declare-fun b!1556856 () Bool)

(declare-fun tp!456685 () Bool)

(assert (=> b!1556856 (= e!999037 tp!456685)))

(declare-fun setElem!10932 () Context!1594)

(declare-fun setNonEmpty!10932 () Bool)

(declare-fun tp!456683 () Bool)

(assert (=> setNonEmpty!10932 (= setRes!10932 (and tp!456683 (inv!22129 setElem!10932) e!999036))))

(declare-fun setRest!10932 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10932 (= (_2!9518 (h!22242 (zeroValue!2066 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10932 true) setRest!10932))))

(assert (= b!1556855 b!1556856))

(assert (= (and b!1556855 condSetEmpty!10932) setIsEmpty!10932))

(assert (= (and b!1556855 (not condSetEmpty!10932)) setNonEmpty!10932))

(assert (= setNonEmpty!10932 b!1556854))

(assert (= (and b!1556544 ((_ is Cons!16841) (zeroValue!2066 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755)))))))) b!1556855))

(declare-fun m!1829180 () Bool)

(assert (=> b!1556855 m!1829180))

(declare-fun m!1829182 () Bool)

(assert (=> setNonEmpty!10932 m!1829182))

(declare-fun e!999041 () Bool)

(assert (=> b!1556544 (= tp!456572 e!999041)))

(declare-fun b!1556857 () Bool)

(declare-fun e!999039 () Bool)

(declare-fun tp!456688 () Bool)

(assert (=> b!1556857 (= e!999039 tp!456688)))

(declare-fun tp!456690 () Bool)

(declare-fun e!999040 () Bool)

(declare-fun b!1556858 () Bool)

(declare-fun setRes!10933 () Bool)

(assert (=> b!1556858 (= e!999041 (and (inv!22129 (_1!9517 (_1!9518 (h!22242 (minValue!2066 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755)))))))))) e!999040 tp_is_empty!7071 setRes!10933 tp!456690))))

(declare-fun condSetEmpty!10933 () Bool)

(assert (=> b!1556858 (= condSetEmpty!10933 (= (_2!9518 (h!22242 (minValue!2066 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755)))))))) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun setIsEmpty!10933 () Bool)

(assert (=> setIsEmpty!10933 setRes!10933))

(declare-fun b!1556859 () Bool)

(declare-fun tp!456689 () Bool)

(assert (=> b!1556859 (= e!999040 tp!456689)))

(declare-fun setElem!10933 () Context!1594)

(declare-fun tp!456687 () Bool)

(declare-fun setNonEmpty!10933 () Bool)

(assert (=> setNonEmpty!10933 (= setRes!10933 (and tp!456687 (inv!22129 setElem!10933) e!999039))))

(declare-fun setRest!10933 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10933 (= (_2!9518 (h!22242 (minValue!2066 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755)))))))) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10933 true) setRest!10933))))

(assert (= b!1556858 b!1556859))

(assert (= (and b!1556858 condSetEmpty!10933) setIsEmpty!10933))

(assert (= (and b!1556858 (not condSetEmpty!10933)) setNonEmpty!10933))

(assert (= setNonEmpty!10933 b!1556857))

(assert (= (and b!1556544 ((_ is Cons!16841) (minValue!2066 (v!23688 (underlying!3827 (v!23689 (underlying!3828 (cache!2134 cacheUp!755)))))))) b!1556858))

(declare-fun m!1829184 () Bool)

(assert (=> b!1556858 m!1829184))

(declare-fun m!1829186 () Bool)

(assert (=> setNonEmpty!10933 m!1829186))

(declare-fun tp!456691 () Bool)

(declare-fun e!999042 () Bool)

(declare-fun tp!456693 () Bool)

(declare-fun b!1556860 () Bool)

(assert (=> b!1556860 (= e!999042 (and (inv!22122 (left!13683 (c!252851 totalInput!568))) tp!456693 (inv!22122 (right!14013 (c!252851 totalInput!568))) tp!456691))))

(declare-fun b!1556862 () Bool)

(declare-fun e!999043 () Bool)

(declare-fun tp!456692 () Bool)

(assert (=> b!1556862 (= e!999043 tp!456692)))

(declare-fun b!1556861 () Bool)

(assert (=> b!1556861 (= e!999042 (and (inv!22130 (xs!8369 (c!252851 totalInput!568))) e!999043))))

(assert (=> b!1556562 (= tp!456568 (and (inv!22122 (c!252851 totalInput!568)) e!999042))))

(assert (= (and b!1556562 ((_ is Node!5569) (c!252851 totalInput!568))) b!1556860))

(assert (= b!1556861 b!1556862))

(assert (= (and b!1556562 ((_ is Leaf!8254) (c!252851 totalInput!568))) b!1556861))

(declare-fun m!1829188 () Bool)

(assert (=> b!1556860 m!1829188))

(declare-fun m!1829190 () Bool)

(assert (=> b!1556860 m!1829190))

(declare-fun m!1829192 () Bool)

(assert (=> b!1556861 m!1829192))

(assert (=> b!1556562 m!1828934))

(declare-fun tp!456696 () Bool)

(declare-fun b!1556863 () Bool)

(declare-fun e!999044 () Bool)

(declare-fun tp!456694 () Bool)

(assert (=> b!1556863 (= e!999044 (and (inv!22122 (left!13683 (c!252851 (totalInput!2470 cacheFurthestNullable!103)))) tp!456696 (inv!22122 (right!14013 (c!252851 (totalInput!2470 cacheFurthestNullable!103)))) tp!456694))))

(declare-fun b!1556865 () Bool)

(declare-fun e!999045 () Bool)

(declare-fun tp!456695 () Bool)

(assert (=> b!1556865 (= e!999045 tp!456695)))

(declare-fun b!1556864 () Bool)

(assert (=> b!1556864 (= e!999044 (and (inv!22130 (xs!8369 (c!252851 (totalInput!2470 cacheFurthestNullable!103)))) e!999045))))

(assert (=> b!1556555 (= tp!456562 (and (inv!22122 (c!252851 (totalInput!2470 cacheFurthestNullable!103))) e!999044))))

(assert (= (and b!1556555 ((_ is Node!5569) (c!252851 (totalInput!2470 cacheFurthestNullable!103)))) b!1556863))

(assert (= b!1556864 b!1556865))

(assert (= (and b!1556555 ((_ is Leaf!8254) (c!252851 (totalInput!2470 cacheFurthestNullable!103)))) b!1556864))

(declare-fun m!1829194 () Bool)

(assert (=> b!1556863 m!1829194))

(declare-fun m!1829196 () Bool)

(assert (=> b!1556863 m!1829196))

(declare-fun m!1829198 () Bool)

(assert (=> b!1556864 m!1829198))

(assert (=> b!1556555 m!1828860))

(declare-fun b!1556866 () Bool)

(declare-fun e!999048 () Bool)

(declare-fun tp!456699 () Bool)

(assert (=> b!1556866 (= e!999048 tp!456699)))

(declare-fun setRes!10934 () Bool)

(declare-fun tp!456697 () Bool)

(declare-fun setNonEmpty!10934 () Bool)

(declare-fun setElem!10934 () Context!1594)

(assert (=> setNonEmpty!10934 (= setRes!10934 (and tp!456697 (inv!22129 setElem!10934) e!999048))))

(declare-fun setRest!10934 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10934 (= (_2!9520 (h!22243 (zeroValue!2067 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10934 true) setRest!10934))))

(declare-fun setIsEmpty!10934 () Bool)

(assert (=> setIsEmpty!10934 setRes!10934))

(declare-fun tp!456700 () Bool)

(declare-fun e!999047 () Bool)

(declare-fun b!1556867 () Bool)

(declare-fun e!999046 () Bool)

(declare-fun tp!456701 () Bool)

(assert (=> b!1556867 (= e!999046 (and tp!456701 (inv!22129 (_2!9519 (_1!9520 (h!22243 (zeroValue!2067 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768)))))))))) e!999047 tp_is_empty!7071 setRes!10934 tp!456700))))

(declare-fun condSetEmpty!10934 () Bool)

(assert (=> b!1556867 (= condSetEmpty!10934 (= (_2!9520 (h!22243 (zeroValue!2067 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768)))))))) ((as const (Array Context!1594 Bool)) false)))))

(assert (=> b!1556574 (= tp!456574 e!999046)))

(declare-fun b!1556868 () Bool)

(declare-fun tp!456698 () Bool)

(assert (=> b!1556868 (= e!999047 tp!456698)))

(assert (= b!1556867 b!1556868))

(assert (= (and b!1556867 condSetEmpty!10934) setIsEmpty!10934))

(assert (= (and b!1556867 (not condSetEmpty!10934)) setNonEmpty!10934))

(assert (= setNonEmpty!10934 b!1556866))

(assert (= (and b!1556574 ((_ is Cons!16842) (zeroValue!2067 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768)))))))) b!1556867))

(declare-fun m!1829200 () Bool)

(assert (=> setNonEmpty!10934 m!1829200))

(declare-fun m!1829202 () Bool)

(assert (=> b!1556867 m!1829202))

(declare-fun b!1556869 () Bool)

(declare-fun e!999051 () Bool)

(declare-fun tp!456704 () Bool)

(assert (=> b!1556869 (= e!999051 tp!456704)))

(declare-fun setElem!10935 () Context!1594)

(declare-fun setNonEmpty!10935 () Bool)

(declare-fun setRes!10935 () Bool)

(declare-fun tp!456702 () Bool)

(assert (=> setNonEmpty!10935 (= setRes!10935 (and tp!456702 (inv!22129 setElem!10935) e!999051))))

(declare-fun setRest!10935 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10935 (= (_2!9520 (h!22243 (minValue!2067 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768)))))))) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10935 true) setRest!10935))))

(declare-fun setIsEmpty!10935 () Bool)

(assert (=> setIsEmpty!10935 setRes!10935))

(declare-fun tp!456706 () Bool)

(declare-fun tp!456705 () Bool)

(declare-fun e!999049 () Bool)

(declare-fun e!999050 () Bool)

(declare-fun b!1556870 () Bool)

(assert (=> b!1556870 (= e!999049 (and tp!456706 (inv!22129 (_2!9519 (_1!9520 (h!22243 (minValue!2067 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768)))))))))) e!999050 tp_is_empty!7071 setRes!10935 tp!456705))))

(declare-fun condSetEmpty!10935 () Bool)

(assert (=> b!1556870 (= condSetEmpty!10935 (= (_2!9520 (h!22243 (minValue!2067 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768)))))))) ((as const (Array Context!1594 Bool)) false)))))

(assert (=> b!1556574 (= tp!456576 e!999049)))

(declare-fun b!1556871 () Bool)

(declare-fun tp!456703 () Bool)

(assert (=> b!1556871 (= e!999050 tp!456703)))

(assert (= b!1556870 b!1556871))

(assert (= (and b!1556870 condSetEmpty!10935) setIsEmpty!10935))

(assert (= (and b!1556870 (not condSetEmpty!10935)) setNonEmpty!10935))

(assert (= setNonEmpty!10935 b!1556869))

(assert (= (and b!1556574 ((_ is Cons!16842) (minValue!2067 (v!23690 (underlying!3829 (v!23691 (underlying!3830 (cache!2135 cacheDown!768)))))))) b!1556870))

(declare-fun m!1829204 () Bool)

(assert (=> setNonEmpty!10935 m!1829204))

(declare-fun m!1829206 () Bool)

(assert (=> b!1556870 m!1829206))

(declare-fun setIsEmpty!10940 () Bool)

(declare-fun setRes!10941 () Bool)

(assert (=> setIsEmpty!10940 setRes!10941))

(declare-fun mapIsEmpty!8423 () Bool)

(declare-fun mapRes!8423 () Bool)

(assert (=> mapIsEmpty!8423 mapRes!8423))

(declare-fun b!1556882 () Bool)

(declare-fun e!999062 () Bool)

(declare-fun tp!456727 () Bool)

(assert (=> b!1556882 (= e!999062 (and setRes!10941 tp!456727))))

(declare-fun condSetEmpty!10940 () Bool)

(declare-fun mapDefault!8423 () List!16908)

(assert (=> b!1556882 (= condSetEmpty!10940 (= (_1!9515 (_1!9516 (h!22241 mapDefault!8423))) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun setElem!10940 () Context!1594)

(declare-fun setRes!10940 () Bool)

(declare-fun tp!456723 () Bool)

(declare-fun setNonEmpty!10940 () Bool)

(declare-fun e!999063 () Bool)

(assert (=> setNonEmpty!10940 (= setRes!10940 (and tp!456723 (inv!22129 setElem!10940) e!999063))))

(declare-fun mapValue!8423 () List!16908)

(declare-fun setRest!10941 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10940 (= (_1!9515 (_1!9516 (h!22241 mapValue!8423))) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10940 true) setRest!10941))))

(declare-fun e!999061 () Bool)

(declare-fun tp!456722 () Bool)

(declare-fun setElem!10941 () Context!1594)

(declare-fun setNonEmpty!10941 () Bool)

(assert (=> setNonEmpty!10941 (= setRes!10941 (and tp!456722 (inv!22129 setElem!10941) e!999061))))

(declare-fun setRest!10940 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10941 (= (_1!9515 (_1!9516 (h!22241 mapDefault!8423))) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10941 true) setRest!10940))))

(declare-fun b!1556883 () Bool)

(declare-fun tp!456726 () Bool)

(assert (=> b!1556883 (= e!999063 tp!456726)))

(declare-fun setIsEmpty!10941 () Bool)

(assert (=> setIsEmpty!10941 setRes!10940))

(declare-fun b!1556884 () Bool)

(declare-fun tp!456724 () Bool)

(assert (=> b!1556884 (= e!999061 tp!456724)))

(declare-fun b!1556885 () Bool)

(declare-fun e!999060 () Bool)

(declare-fun tp!456721 () Bool)

(assert (=> b!1556885 (= e!999060 (and setRes!10940 tp!456721))))

(declare-fun condSetEmpty!10941 () Bool)

(assert (=> b!1556885 (= condSetEmpty!10941 (= (_1!9515 (_1!9516 (h!22241 mapValue!8423))) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun mapNonEmpty!8423 () Bool)

(declare-fun tp!456725 () Bool)

(assert (=> mapNonEmpty!8423 (= mapRes!8423 (and tp!456725 e!999060))))

(declare-fun mapKey!8423 () (_ BitVec 32))

(declare-fun mapRest!8423 () (Array (_ BitVec 32) List!16908))

(assert (=> mapNonEmpty!8423 (= mapRest!8416 (store mapRest!8423 mapKey!8423 mapValue!8423))))

(declare-fun condMapEmpty!8423 () Bool)

(assert (=> mapNonEmpty!8415 (= condMapEmpty!8423 (= mapRest!8416 ((as const (Array (_ BitVec 32) List!16908)) mapDefault!8423)))))

(assert (=> mapNonEmpty!8415 (= tp!456566 (and e!999062 mapRes!8423))))

(assert (= (and mapNonEmpty!8415 condMapEmpty!8423) mapIsEmpty!8423))

(assert (= (and mapNonEmpty!8415 (not condMapEmpty!8423)) mapNonEmpty!8423))

(assert (= (and b!1556885 condSetEmpty!10941) setIsEmpty!10941))

(assert (= (and b!1556885 (not condSetEmpty!10941)) setNonEmpty!10940))

(assert (= setNonEmpty!10940 b!1556883))

(assert (= (and mapNonEmpty!8423 ((_ is Cons!16840) mapValue!8423)) b!1556885))

(assert (= (and b!1556882 condSetEmpty!10940) setIsEmpty!10940))

(assert (= (and b!1556882 (not condSetEmpty!10940)) setNonEmpty!10941))

(assert (= setNonEmpty!10941 b!1556884))

(assert (= (and mapNonEmpty!8415 ((_ is Cons!16840) mapDefault!8423)) b!1556882))

(declare-fun m!1829208 () Bool)

(assert (=> setNonEmpty!10940 m!1829208))

(declare-fun m!1829210 () Bool)

(assert (=> setNonEmpty!10941 m!1829210))

(declare-fun m!1829212 () Bool)

(assert (=> mapNonEmpty!8423 m!1829212))

(declare-fun setIsEmpty!10942 () Bool)

(declare-fun setRes!10942 () Bool)

(assert (=> setIsEmpty!10942 setRes!10942))

(declare-fun e!999064 () Bool)

(assert (=> mapNonEmpty!8415 (= tp!456558 e!999064)))

(declare-fun b!1556887 () Bool)

(declare-fun e!999065 () Bool)

(declare-fun tp!456728 () Bool)

(assert (=> b!1556887 (= e!999065 tp!456728)))

(declare-fun b!1556886 () Bool)

(declare-fun tp!456730 () Bool)

(assert (=> b!1556886 (= e!999064 (and setRes!10942 tp!456730))))

(declare-fun condSetEmpty!10942 () Bool)

(assert (=> b!1556886 (= condSetEmpty!10942 (= (_1!9515 (_1!9516 (h!22241 mapValue!8415))) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun tp!456729 () Bool)

(declare-fun setNonEmpty!10942 () Bool)

(declare-fun setElem!10942 () Context!1594)

(assert (=> setNonEmpty!10942 (= setRes!10942 (and tp!456729 (inv!22129 setElem!10942) e!999065))))

(declare-fun setRest!10942 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10942 (= (_1!9515 (_1!9516 (h!22241 mapValue!8415))) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10942 true) setRest!10942))))

(assert (= (and b!1556886 condSetEmpty!10942) setIsEmpty!10942))

(assert (= (and b!1556886 (not condSetEmpty!10942)) setNonEmpty!10942))

(assert (= setNonEmpty!10942 b!1556887))

(assert (= (and mapNonEmpty!8415 ((_ is Cons!16840) mapValue!8415)) b!1556886))

(declare-fun m!1829214 () Bool)

(assert (=> setNonEmpty!10942 m!1829214))

(declare-fun tp!456753 () Bool)

(declare-fun e!999079 () Bool)

(declare-fun setElem!10948 () Context!1594)

(declare-fun setRes!10948 () Bool)

(declare-fun setNonEmpty!10947 () Bool)

(assert (=> setNonEmpty!10947 (= setRes!10948 (and tp!456753 (inv!22129 setElem!10948) e!999079))))

(declare-fun mapDefault!8426 () List!16909)

(declare-fun setRest!10948 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10947 (= (_2!9518 (h!22242 mapDefault!8426)) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10948 true) setRest!10948))))

(declare-fun mapNonEmpty!8426 () Bool)

(declare-fun mapRes!8426 () Bool)

(declare-fun tp!456749 () Bool)

(declare-fun e!999078 () Bool)

(assert (=> mapNonEmpty!8426 (= mapRes!8426 (and tp!456749 e!999078))))

(declare-fun mapRest!8426 () (Array (_ BitVec 32) List!16909))

(declare-fun mapKey!8426 () (_ BitVec 32))

(declare-fun mapValue!8426 () List!16909)

(assert (=> mapNonEmpty!8426 (= mapRest!8415 (store mapRest!8426 mapKey!8426 mapValue!8426))))

(declare-fun b!1556902 () Bool)

(declare-fun e!999083 () Bool)

(declare-fun tp!456750 () Bool)

(assert (=> b!1556902 (= e!999083 tp!456750)))

(declare-fun setIsEmpty!10947 () Bool)

(assert (=> setIsEmpty!10947 setRes!10948))

(declare-fun mapIsEmpty!8426 () Bool)

(assert (=> mapIsEmpty!8426 mapRes!8426))

(declare-fun e!999081 () Bool)

(declare-fun setRes!10947 () Bool)

(declare-fun setElem!10947 () Context!1594)

(declare-fun tp!456754 () Bool)

(declare-fun setNonEmpty!10948 () Bool)

(assert (=> setNonEmpty!10948 (= setRes!10947 (and tp!456754 (inv!22129 setElem!10947) e!999081))))

(declare-fun setRest!10947 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10948 (= (_2!9518 (h!22242 mapValue!8426)) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10947 true) setRest!10947))))

(declare-fun tp!456757 () Bool)

(declare-fun b!1556903 () Bool)

(assert (=> b!1556903 (= e!999078 (and (inv!22129 (_1!9517 (_1!9518 (h!22242 mapValue!8426)))) e!999083 tp_is_empty!7071 setRes!10947 tp!456757))))

(declare-fun condSetEmpty!10948 () Bool)

(assert (=> b!1556903 (= condSetEmpty!10948 (= (_2!9518 (h!22242 mapValue!8426)) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun tp!456752 () Bool)

(declare-fun b!1556904 () Bool)

(declare-fun e!999082 () Bool)

(declare-fun e!999080 () Bool)

(assert (=> b!1556904 (= e!999082 (and (inv!22129 (_1!9517 (_1!9518 (h!22242 mapDefault!8426)))) e!999080 tp_is_empty!7071 setRes!10948 tp!456752))))

(declare-fun condSetEmpty!10947 () Bool)

(assert (=> b!1556904 (= condSetEmpty!10947 (= (_2!9518 (h!22242 mapDefault!8426)) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun setIsEmpty!10948 () Bool)

(assert (=> setIsEmpty!10948 setRes!10947))

(declare-fun condMapEmpty!8426 () Bool)

(assert (=> mapNonEmpty!8417 (= condMapEmpty!8426 (= mapRest!8415 ((as const (Array (_ BitVec 32) List!16909)) mapDefault!8426)))))

(assert (=> mapNonEmpty!8417 (= tp!456553 (and e!999082 mapRes!8426))))

(declare-fun b!1556905 () Bool)

(declare-fun tp!456751 () Bool)

(assert (=> b!1556905 (= e!999080 tp!456751)))

(declare-fun b!1556906 () Bool)

(declare-fun tp!456756 () Bool)

(assert (=> b!1556906 (= e!999081 tp!456756)))

(declare-fun b!1556907 () Bool)

(declare-fun tp!456755 () Bool)

(assert (=> b!1556907 (= e!999079 tp!456755)))

(assert (= (and mapNonEmpty!8417 condMapEmpty!8426) mapIsEmpty!8426))

(assert (= (and mapNonEmpty!8417 (not condMapEmpty!8426)) mapNonEmpty!8426))

(assert (= b!1556903 b!1556902))

(assert (= (and b!1556903 condSetEmpty!10948) setIsEmpty!10948))

(assert (= (and b!1556903 (not condSetEmpty!10948)) setNonEmpty!10948))

(assert (= setNonEmpty!10948 b!1556906))

(assert (= (and mapNonEmpty!8426 ((_ is Cons!16841) mapValue!8426)) b!1556903))

(assert (= b!1556904 b!1556905))

(assert (= (and b!1556904 condSetEmpty!10947) setIsEmpty!10947))

(assert (= (and b!1556904 (not condSetEmpty!10947)) setNonEmpty!10947))

(assert (= setNonEmpty!10947 b!1556907))

(assert (= (and mapNonEmpty!8417 ((_ is Cons!16841) mapDefault!8426)) b!1556904))

(declare-fun m!1829216 () Bool)

(assert (=> b!1556903 m!1829216))

(declare-fun m!1829218 () Bool)

(assert (=> setNonEmpty!10948 m!1829218))

(declare-fun m!1829220 () Bool)

(assert (=> mapNonEmpty!8426 m!1829220))

(declare-fun m!1829222 () Bool)

(assert (=> setNonEmpty!10947 m!1829222))

(declare-fun m!1829224 () Bool)

(assert (=> b!1556904 m!1829224))

(declare-fun e!999086 () Bool)

(assert (=> mapNonEmpty!8417 (= tp!456563 e!999086)))

(declare-fun b!1556908 () Bool)

(declare-fun e!999084 () Bool)

(declare-fun tp!456759 () Bool)

(assert (=> b!1556908 (= e!999084 tp!456759)))

(declare-fun e!999085 () Bool)

(declare-fun tp!456761 () Bool)

(declare-fun setRes!10949 () Bool)

(declare-fun b!1556909 () Bool)

(assert (=> b!1556909 (= e!999086 (and (inv!22129 (_1!9517 (_1!9518 (h!22242 mapValue!8417)))) e!999085 tp_is_empty!7071 setRes!10949 tp!456761))))

(declare-fun condSetEmpty!10949 () Bool)

(assert (=> b!1556909 (= condSetEmpty!10949 (= (_2!9518 (h!22242 mapValue!8417)) ((as const (Array Context!1594 Bool)) false)))))

(declare-fun setIsEmpty!10949 () Bool)

(assert (=> setIsEmpty!10949 setRes!10949))

(declare-fun b!1556910 () Bool)

(declare-fun tp!456760 () Bool)

(assert (=> b!1556910 (= e!999085 tp!456760)))

(declare-fun setElem!10949 () Context!1594)

(declare-fun setNonEmpty!10949 () Bool)

(declare-fun tp!456758 () Bool)

(assert (=> setNonEmpty!10949 (= setRes!10949 (and tp!456758 (inv!22129 setElem!10949) e!999084))))

(declare-fun setRest!10949 () (InoxSet Context!1594))

(assert (=> setNonEmpty!10949 (= (_2!9518 (h!22242 mapValue!8417)) ((_ map or) (store ((as const (Array Context!1594 Bool)) false) setElem!10949 true) setRest!10949))))

(assert (= b!1556909 b!1556910))

(assert (= (and b!1556909 condSetEmpty!10949) setIsEmpty!10949))

(assert (= (and b!1556909 (not condSetEmpty!10949)) setNonEmpty!10949))

(assert (= setNonEmpty!10949 b!1556908))

(assert (= (and mapNonEmpty!8417 ((_ is Cons!16841) mapValue!8417)) b!1556909))

(declare-fun m!1829226 () Bool)

(assert (=> b!1556909 m!1829226))

(declare-fun m!1829228 () Bool)

(assert (=> setNonEmpty!10949 m!1829228))

(declare-fun b_lambda!48899 () Bool)

(assert (= b_lambda!48895 (or (and b!1556539 b_free!41417) b_lambda!48899)))

(declare-fun b_lambda!48901 () Bool)

(assert (= b_lambda!48889 (or (and b!1556539 b_free!41417) b_lambda!48901)))

(declare-fun b_lambda!48903 () Bool)

(assert (= b_lambda!48893 (or b!1556546 b_lambda!48903)))

(declare-fun bs!388747 () Bool)

(declare-fun d!461719 () Bool)

(assert (= bs!388747 (and d!461719 b!1556546)))

(declare-fun dynLambda!7477 (Int TokenValue!3041) BalanceConc!11080)

(assert (=> bs!388747 (= (dynLambda!7476 lambda!65901 (_1!9521 (_1!9522 lt!539014))) (= (list!6498 (dynLambda!7477 (toChars!4183 (transformation!2951 rule!240)) (dynLambda!7474 (toValue!4324 (transformation!2951 rule!240)) (_1!9521 (_1!9522 lt!539014))))) (list!6498 (_1!9521 (_1!9522 lt!539014)))))))

(declare-fun b_lambda!48911 () Bool)

(assert (=> (not b_lambda!48911) (not bs!388747)))

(declare-fun t!141395 () Bool)

(declare-fun tb!87333 () Bool)

(assert (=> (and b!1556539 (= (toChars!4183 (transformation!2951 rule!240)) (toChars!4183 (transformation!2951 rule!240))) t!141395) tb!87333))

(declare-fun b!1556915 () Bool)

(declare-fun tp!456764 () Bool)

(declare-fun e!999089 () Bool)

(assert (=> b!1556915 (= e!999089 (and (inv!22122 (c!252851 (dynLambda!7477 (toChars!4183 (transformation!2951 rule!240)) (dynLambda!7474 (toValue!4324 (transformation!2951 rule!240)) (_1!9521 (_1!9522 lt!539014)))))) tp!456764))))

(declare-fun result!105486 () Bool)

(assert (=> tb!87333 (= result!105486 (and (inv!22121 (dynLambda!7477 (toChars!4183 (transformation!2951 rule!240)) (dynLambda!7474 (toValue!4324 (transformation!2951 rule!240)) (_1!9521 (_1!9522 lt!539014))))) e!999089))))

(assert (= tb!87333 b!1556915))

(declare-fun m!1829230 () Bool)

(assert (=> b!1556915 m!1829230))

(declare-fun m!1829232 () Bool)

(assert (=> tb!87333 m!1829232))

(assert (=> bs!388747 t!141395))

(declare-fun b_and!108621 () Bool)

(assert (= b_and!108601 (and (=> t!141395 result!105486) b_and!108621)))

(declare-fun b_lambda!48913 () Bool)

(assert (=> (not b_lambda!48913) (not bs!388747)))

(assert (=> bs!388747 t!141393))

(declare-fun b_and!108623 () Bool)

(assert (= b_and!108619 (and (=> t!141393 result!105468) b_and!108623)))

(assert (=> bs!388747 m!1828896))

(declare-fun m!1829234 () Bool)

(assert (=> bs!388747 m!1829234))

(declare-fun m!1829236 () Bool)

(assert (=> bs!388747 m!1829236))

(assert (=> bs!388747 m!1828958))

(assert (=> bs!388747 m!1828958))

(assert (=> bs!388747 m!1829234))

(assert (=> d!461635 d!461719))

(declare-fun b_lambda!48905 () Bool)

(assert (= b_lambda!48887 (or (and b!1556539 b_free!41417) b_lambda!48905)))

(declare-fun b_lambda!48907 () Bool)

(assert (= b_lambda!48891 (or (and b!1556539 b_free!41417) b_lambda!48907)))

(declare-fun b_lambda!48909 () Bool)

(assert (= b_lambda!48897 (or b!1556546 b_lambda!48909)))

(declare-fun bs!388748 () Bool)

(declare-fun d!461721 () Bool)

(assert (= bs!388748 (and d!461721 b!1556546)))

(assert (=> bs!388748 (= (dynLambda!7476 lambda!65901 lt!539023) (= (list!6498 (dynLambda!7477 (toChars!4183 (transformation!2951 rule!240)) (dynLambda!7474 (toValue!4324 (transformation!2951 rule!240)) lt!539023))) (list!6498 lt!539023)))))

(declare-fun b_lambda!48915 () Bool)

(assert (=> (not b_lambda!48915) (not bs!388748)))

(declare-fun t!141397 () Bool)

(declare-fun tb!87335 () Bool)

(assert (=> (and b!1556539 (= (toChars!4183 (transformation!2951 rule!240)) (toChars!4183 (transformation!2951 rule!240))) t!141397) tb!87335))

(declare-fun tp!456765 () Bool)

(declare-fun e!999090 () Bool)

(declare-fun b!1556916 () Bool)

(assert (=> b!1556916 (= e!999090 (and (inv!22122 (c!252851 (dynLambda!7477 (toChars!4183 (transformation!2951 rule!240)) (dynLambda!7474 (toValue!4324 (transformation!2951 rule!240)) lt!539023)))) tp!456765))))

(declare-fun result!105490 () Bool)

(assert (=> tb!87335 (= result!105490 (and (inv!22121 (dynLambda!7477 (toChars!4183 (transformation!2951 rule!240)) (dynLambda!7474 (toValue!4324 (transformation!2951 rule!240)) lt!539023))) e!999090))))

(assert (= tb!87335 b!1556916))

(declare-fun m!1829238 () Bool)

(assert (=> b!1556916 m!1829238))

(declare-fun m!1829240 () Bool)

(assert (=> tb!87335 m!1829240))

(assert (=> bs!388748 t!141397))

(declare-fun b_and!108625 () Bool)

(assert (= b_and!108621 (and (=> t!141397 result!105490) b_and!108625)))

(declare-fun b_lambda!48917 () Bool)

(assert (=> (not b_lambda!48917) (not bs!388748)))

(assert (=> bs!388748 t!141391))

(declare-fun b_and!108627 () Bool)

(assert (= b_and!108623 (and (=> t!141391 result!105464) b_and!108627)))

(assert (=> bs!388748 m!1828866))

(declare-fun m!1829242 () Bool)

(assert (=> bs!388748 m!1829242))

(declare-fun m!1829244 () Bool)

(assert (=> bs!388748 m!1829244))

(assert (=> bs!388748 m!1828954))

(assert (=> bs!388748 m!1828954))

(assert (=> bs!388748 m!1829242))

(assert (=> d!461647 d!461721))

(check-sat (not b_lambda!48901) (not b!1556885) (not b!1556830) (not b!1556543) (not b!1556860) (not b!1556861) b_and!108609 (not b!1556786) (not b!1556685) (not b!1556812) (not d!461687) (not b!1556555) (not b!1556857) (not b!1556817) (not b!1556662) (not setNonEmpty!10919) (not bm!102085) (not bm!102079) b_and!108607 (not b!1556904) (not d!461717) (not b!1556791) (not b!1556672) (not setNonEmpty!10941) (not b!1556908) (not b!1556853) (not d!461713) (not bm!102081) (not b!1556803) (not b!1556902) (not b_next!42123) (not b!1556770) (not d!461685) (not mapNonEmpty!8420) b_and!108603 b_and!108611 (not b!1556711) (not b!1556852) (not b!1556687) (not b!1556699) (not d!461677) (not b!1556701) (not tb!87331) (not b!1556669) (not setNonEmpty!10947) b_and!108625 (not b!1556867) (not b_next!42131) (not d!461641) (not tb!87335) (not b!1556655) (not b!1556666) (not b_next!42129) (not b!1556661) (not b!1556684) (not d!461661) (not setNonEmpty!10918) (not b!1556751) (not b!1556903) (not bs!388748) (not setNonEmpty!10942) (not b!1556713) (not b!1556858) (not d!461643) (not b!1556915) (not bm!102082) (not b!1556882) (not b!1556887) (not b!1556910) (not b!1556682) (not setNonEmpty!10933) (not d!461711) (not bm!102084) (not b!1556886) (not b!1556840) (not setNonEmpty!10935) (not b!1556690) (not bm!102078) (not b_lambda!48905) (not b!1556627) (not b!1556765) (not setNonEmpty!10932) (not b_lambda!48915) (not b!1556916) (not b!1556787) (not b!1556705) (not d!461703) (not setNonEmpty!10931) (not setNonEmpty!10940) (not setNonEmpty!10948) (not b_lambda!48911) (not b!1556746) (not d!461639) (not mapNonEmpty!8426) (not d!461699) (not d!461627) (not b_next!42119) (not b!1556859) (not d!461657) (not tb!87333) (not d!461693) (not d!461667) (not b!1556905) (not b!1556864) (not b!1556789) (not bm!102083) (not b!1556762) (not b!1556865) (not b!1556829) (not b!1556909) (not b_next!42133) (not b!1556884) (not b!1556749) (not b!1556883) (not b!1556815) (not b!1556814) (not b!1556753) (not b!1556660) (not b_lambda!48909) (not bs!388747) (not d!461633) (not bm!102080) tp_is_empty!7071 (not setNonEmpty!10922) (not setNonEmpty!10927) (not b!1556802) (not d!461631) (not b!1556841) (not b!1556871) (not b!1556907) (not b!1556831) (not d!461715) (not d!461647) (not b!1556862) (not b_next!42127) (not b!1556700) (not b!1556813) (not b!1556656) (not b!1556856) (not b!1556631) (not b_next!42125) (not d!461653) (not b_lambda!48907) (not setNonEmpty!10934) (not b_lambda!48917) (not b!1556625) (not b!1556866) (not b!1556854) (not b_next!42121) (not mapNonEmpty!8423) (not setNonEmpty!10923) (not setNonEmpty!10926) (not d!461623) (not b!1556658) (not b!1556855) (not b!1556688) b_and!108627 (not b!1556801) (not b!1556636) (not d!461705) (not b!1556624) (not tb!87329) (not d!461683) (not b!1556804) (not b!1556788) (not d!461659) (not b!1556675) (not d!461637) (not bm!102061) b_and!108597 (not d!461709) (not b!1556863) (not setNonEmpty!10928) (not d!461629) (not b!1556800) (not b!1556562) (not b!1556870) (not b!1556842) b_and!108605 (not b!1556868) (not b_lambda!48913) (not b!1556816) (not b!1556906) (not b!1556659) (not d!461635) (not b_lambda!48903) (not b!1556790) (not b_lambda!48899) (not b!1556869) (not b!1556805) (not b!1556633) (not b!1556851) (not b!1556657) (not setNonEmpty!10949))
(check-sat b_and!108609 b_and!108607 (not b_next!42123) (not b_next!42129) (not b_next!42119) (not b_next!42133) (not b_next!42127) (not b_next!42125) (not b_next!42121) b_and!108627 b_and!108597 b_and!108605 b_and!108603 b_and!108611 b_and!108625 (not b_next!42131))
