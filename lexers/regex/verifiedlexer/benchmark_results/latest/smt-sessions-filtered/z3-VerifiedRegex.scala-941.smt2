; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47818 () Bool)

(assert start!47818)

(declare-fun b!521697 () Bool)

(declare-fun b_free!13701 () Bool)

(declare-fun b_next!13717 () Bool)

(assert (=> b!521697 (= b_free!13701 (not b_next!13717))))

(declare-fun tp!162484 () Bool)

(declare-fun b_and!51195 () Bool)

(assert (=> b!521697 (= tp!162484 b_and!51195)))

(declare-fun b!521714 () Bool)

(declare-fun b_free!13703 () Bool)

(declare-fun b_next!13719 () Bool)

(assert (=> b!521714 (= b_free!13703 (not b_next!13719))))

(declare-fun tp!162479 () Bool)

(declare-fun b_and!51197 () Bool)

(assert (=> b!521714 (= tp!162479 b_and!51197)))

(declare-fun b!521700 () Bool)

(declare-fun b_free!13705 () Bool)

(declare-fun b_next!13721 () Bool)

(assert (=> b!521700 (= b_free!13705 (not b_next!13721))))

(declare-fun tp!162467 () Bool)

(declare-fun b_and!51199 () Bool)

(assert (=> b!521700 (= tp!162467 b_and!51199)))

(declare-fun b!521719 () Bool)

(declare-fun b_free!13707 () Bool)

(declare-fun b_next!13723 () Bool)

(assert (=> b!521719 (= b_free!13707 (not b_next!13723))))

(declare-fun tp!162463 () Bool)

(declare-fun b_and!51201 () Bool)

(assert (=> b!521719 (= tp!162463 b_and!51201)))

(declare-fun b!521718 () Bool)

(declare-fun b_free!13709 () Bool)

(declare-fun b_next!13725 () Bool)

(assert (=> b!521718 (= b_free!13709 (not b_next!13725))))

(declare-fun tp!162487 () Bool)

(declare-fun b_and!51203 () Bool)

(assert (=> b!521718 (= tp!162487 b_and!51203)))

(declare-fun b_free!13711 () Bool)

(declare-fun b_next!13727 () Bool)

(assert (=> b!521718 (= b_free!13711 (not b_next!13727))))

(declare-fun tp!162488 () Bool)

(declare-fun b_and!51205 () Bool)

(assert (=> b!521718 (= tp!162488 b_and!51205)))

(declare-fun b!521707 () Bool)

(declare-fun b_free!13713 () Bool)

(declare-fun b_next!13729 () Bool)

(assert (=> b!521707 (= b_free!13713 (not b_next!13729))))

(declare-fun tp!162473 () Bool)

(declare-fun b_and!51207 () Bool)

(assert (=> b!521707 (= tp!162473 b_and!51207)))

(declare-fun b!521720 () Bool)

(declare-fun b_free!13715 () Bool)

(declare-fun b_next!13731 () Bool)

(assert (=> b!521720 (= b_free!13715 (not b_next!13731))))

(declare-fun tp!162470 () Bool)

(declare-fun b_and!51209 () Bool)

(assert (=> b!521720 (= tp!162470 b_and!51209)))

(declare-fun res!221528 () Bool)

(declare-fun e!312891 () Bool)

(assert (=> start!47818 (=> (not res!221528) (not e!312891))))

(declare-datatypes ((LexerInterface!764 0))(
  ( (LexerInterfaceExt!761 (__x!3528 Int)) (Lexer!762) )
))
(declare-fun thiss!12147 () LexerInterface!764)

(get-info :version)

(assert (=> start!47818 (= res!221528 ((_ is Lexer!762) thiss!12147))))

(assert (=> start!47818 e!312891))

(declare-datatypes ((C!3328 0))(
  ( (C!3329 (val!1890 Int)) )
))
(declare-datatypes ((Regex!1203 0))(
  ( (ElementMatch!1203 (c!100725 C!3328)) (Concat!2105 (regOne!2918 Regex!1203) (regTwo!2918 Regex!1203)) (EmptyExpr!1203) (Star!1203 (reg!1532 Regex!1203)) (EmptyLang!1203) (Union!1203 (regOne!2919 Regex!1203) (regTwo!2919 Regex!1203)) )
))
(declare-datatypes ((List!4843 0))(
  ( (Nil!4833) (Cons!4833 (h!10234 Regex!1203) (t!73433 List!4843)) )
))
(declare-datatypes ((Context!282 0))(
  ( (Context!283 (exprs!641 List!4843)) )
))
(declare-datatypes ((tuple3!346 0))(
  ( (tuple3!347 (_1!3189 Regex!1203) (_2!3189 Context!282) (_3!218 C!3328)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!5942 0))(
  ( (tuple2!5943 (_1!3190 tuple3!346) (_2!3190 (InoxSet Context!282))) )
))
(declare-datatypes ((List!4844 0))(
  ( (Nil!4834) (Cons!4834 (h!10235 tuple2!5942) (t!73434 List!4844)) )
))
(declare-datatypes ((array!2127 0))(
  ( (array!2128 (arr!972 (Array (_ BitVec 32) List!4844)) (size!3948 (_ BitVec 32))) )
))
(declare-datatypes ((array!2129 0))(
  ( (array!2130 (arr!973 (Array (_ BitVec 32) (_ BitVec 64))) (size!3949 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1090 0))(
  ( (LongMapFixedSize!1091 (defaultEntry!901 Int) (mask!2018 (_ BitVec 32)) (extraKeys!792 (_ BitVec 32)) (zeroValue!802 List!4844) (minValue!802 List!4844) (_size!1199 (_ BitVec 32)) (_keys!839 array!2129) (_values!824 array!2127) (_vacant!606 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2121 0))(
  ( (Cell!2122 (v!15923 LongMapFixedSize!1090)) )
))
(declare-datatypes ((MutLongMap!545 0))(
  ( (LongMap!545 (underlying!1269 Cell!2121)) (MutLongMapExt!544 (__x!3529 Int)) )
))
(declare-datatypes ((Cell!2123 0))(
  ( (Cell!2124 (v!15924 MutLongMap!545)) )
))
(declare-datatypes ((Hashable!517 0))(
  ( (HashableExt!516 (__x!3530 Int)) )
))
(declare-datatypes ((MutableMap!517 0))(
  ( (MutableMapExt!516 (__x!3531 Int)) (HashMap!517 (underlying!1270 Cell!2123) (hashF!2425 Hashable!517) (_size!1200 (_ BitVec 32)) (defaultValue!668 Int)) )
))
(declare-datatypes ((CacheDown!190 0))(
  ( (CacheDown!191 (cache!904 MutableMap!517)) )
))
(declare-fun cacheDown!462 () CacheDown!190)

(declare-fun e!312901 () Bool)

(declare-fun inv!6108 (CacheDown!190) Bool)

(assert (=> start!47818 (and (inv!6108 cacheDown!462) e!312901)))

(assert (=> start!47818 true))

(declare-datatypes ((List!4845 0))(
  ( (Nil!4835) (Cons!4835 (h!10236 C!3328) (t!73435 List!4845)) )
))
(declare-datatypes ((IArray!3163 0))(
  ( (IArray!3164 (innerList!1639 List!4845)) )
))
(declare-datatypes ((tuple3!348 0))(
  ( (tuple3!349 (_1!3191 (InoxSet Context!282)) (_2!3191 Int) (_3!219 Int)) )
))
(declare-datatypes ((Hashable!518 0))(
  ( (HashableExt!517 (__x!3532 Int)) )
))
(declare-datatypes ((tuple2!5944 0))(
  ( (tuple2!5945 (_1!3192 tuple3!348) (_2!3192 Int)) )
))
(declare-datatypes ((List!4846 0))(
  ( (Nil!4836) (Cons!4836 (h!10237 tuple2!5944) (t!73436 List!4846)) )
))
(declare-datatypes ((array!2131 0))(
  ( (array!2132 (arr!974 (Array (_ BitVec 32) List!4846)) (size!3950 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1092 0))(
  ( (LongMapFixedSize!1093 (defaultEntry!902 Int) (mask!2019 (_ BitVec 32)) (extraKeys!793 (_ BitVec 32)) (zeroValue!803 List!4846) (minValue!803 List!4846) (_size!1201 (_ BitVec 32)) (_keys!840 array!2129) (_values!825 array!2131) (_vacant!607 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2125 0))(
  ( (Cell!2126 (v!15925 LongMapFixedSize!1092)) )
))
(declare-datatypes ((MutLongMap!546 0))(
  ( (LongMap!546 (underlying!1271 Cell!2125)) (MutLongMapExt!545 (__x!3533 Int)) )
))
(declare-datatypes ((Cell!2127 0))(
  ( (Cell!2128 (v!15926 MutLongMap!546)) )
))
(declare-datatypes ((MutableMap!518 0))(
  ( (MutableMapExt!517 (__x!3534 Int)) (HashMap!518 (underlying!1272 Cell!2127) (hashF!2426 Hashable!518) (_size!1202 (_ BitVec 32)) (defaultValue!669 Int)) )
))
(declare-datatypes ((Conc!1581 0))(
  ( (Node!1581 (left!4176 Conc!1581) (right!4506 Conc!1581) (csize!3392 Int) (cheight!1792 Int)) (Leaf!2523 (xs!4216 IArray!3163) (csize!3393 Int)) (Empty!1581) )
))
(declare-datatypes ((BalanceConc!3170 0))(
  ( (BalanceConc!3171 (c!100726 Conc!1581)) )
))
(declare-datatypes ((CacheFurthestNullable!142 0))(
  ( (CacheFurthestNullable!143 (cache!905 MutableMap!518) (totalInput!1729 BalanceConc!3170)) )
))
(declare-fun cacheFurthestNullable!56 () CacheFurthestNullable!142)

(declare-fun e!312890 () Bool)

(declare-fun inv!6109 (CacheFurthestNullable!142) Bool)

(assert (=> start!47818 (and (inv!6109 cacheFurthestNullable!56) e!312890)))

(declare-datatypes ((tuple2!5946 0))(
  ( (tuple2!5947 (_1!3193 Context!282) (_2!3193 C!3328)) )
))
(declare-datatypes ((tuple2!5948 0))(
  ( (tuple2!5949 (_1!3194 tuple2!5946) (_2!3194 (InoxSet Context!282))) )
))
(declare-datatypes ((List!4847 0))(
  ( (Nil!4837) (Cons!4837 (h!10238 tuple2!5948) (t!73437 List!4847)) )
))
(declare-datatypes ((Hashable!519 0))(
  ( (HashableExt!518 (__x!3535 Int)) )
))
(declare-datatypes ((array!2133 0))(
  ( (array!2134 (arr!975 (Array (_ BitVec 32) List!4847)) (size!3951 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1094 0))(
  ( (LongMapFixedSize!1095 (defaultEntry!903 Int) (mask!2020 (_ BitVec 32)) (extraKeys!794 (_ BitVec 32)) (zeroValue!804 List!4847) (minValue!804 List!4847) (_size!1203 (_ BitVec 32)) (_keys!841 array!2129) (_values!826 array!2133) (_vacant!608 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2129 0))(
  ( (Cell!2130 (v!15927 LongMapFixedSize!1094)) )
))
(declare-datatypes ((MutLongMap!547 0))(
  ( (LongMap!547 (underlying!1273 Cell!2129)) (MutLongMapExt!546 (__x!3536 Int)) )
))
(declare-datatypes ((Cell!2131 0))(
  ( (Cell!2132 (v!15928 MutLongMap!547)) )
))
(declare-datatypes ((MutableMap!519 0))(
  ( (MutableMapExt!518 (__x!3537 Int)) (HashMap!519 (underlying!1274 Cell!2131) (hashF!2427 Hashable!519) (_size!1204 (_ BitVec 32)) (defaultValue!670 Int)) )
))
(declare-datatypes ((CacheUp!202 0))(
  ( (CacheUp!203 (cache!906 MutableMap!519)) )
))
(declare-fun cacheUp!449 () CacheUp!202)

(declare-fun e!312885 () Bool)

(declare-fun inv!6110 (CacheUp!202) Bool)

(assert (=> start!47818 (and (inv!6110 cacheUp!449) e!312885)))

(declare-fun e!312878 () Bool)

(assert (=> start!47818 e!312878))

(declare-fun b!521692 () Bool)

(declare-fun e!312896 () Bool)

(declare-fun e!312875 () Bool)

(assert (=> b!521692 (= e!312896 e!312875)))

(declare-fun mapNonEmpty!2115 () Bool)

(declare-fun mapRes!2117 () Bool)

(declare-fun tp!162477 () Bool)

(declare-fun tp!162485 () Bool)

(assert (=> mapNonEmpty!2115 (= mapRes!2117 (and tp!162477 tp!162485))))

(declare-fun mapValue!2116 () List!4847)

(declare-fun mapKey!2116 () (_ BitVec 32))

(declare-fun mapRest!2116 () (Array (_ BitVec 32) List!4847))

(assert (=> mapNonEmpty!2115 (= (arr!975 (_values!826 (v!15927 (underlying!1273 (v!15928 (underlying!1274 (cache!906 cacheUp!449))))))) (store mapRest!2116 mapKey!2116 mapValue!2116))))

(declare-fun b!521693 () Bool)

(declare-fun e!312897 () Bool)

(declare-fun tp!162478 () Bool)

(declare-fun mapRes!2116 () Bool)

(assert (=> b!521693 (= e!312897 (and tp!162478 mapRes!2116))))

(declare-fun condMapEmpty!2115 () Bool)

(declare-fun mapDefault!2116 () List!4844)

(assert (=> b!521693 (= condMapEmpty!2115 (= (arr!972 (_values!824 (v!15923 (underlying!1269 (v!15924 (underlying!1270 (cache!904 cacheDown!462))))))) ((as const (Array (_ BitVec 32) List!4844)) mapDefault!2116)))))

(declare-fun b!521694 () Bool)

(declare-fun e!312895 () Bool)

(assert (=> b!521694 (= e!312875 e!312895)))

(declare-fun b!521695 () Bool)

(declare-fun res!221529 () Bool)

(assert (=> b!521695 (=> (not res!221529) (not e!312891))))

(declare-fun valid!518 (CacheUp!202) Bool)

(assert (=> b!521695 (= res!221529 (valid!518 cacheUp!449))))

(declare-fun b!521696 () Bool)

(declare-fun tp!162486 () Bool)

(declare-fun e!312902 () Bool)

(declare-datatypes ((List!4848 0))(
  ( (Nil!4838) (Cons!4838 (h!10239 (_ BitVec 16)) (t!73438 List!4848)) )
))
(declare-datatypes ((TokenValue!902 0))(
  ( (FloatLiteralValue!1804 (text!6759 List!4848)) (TokenValueExt!901 (__x!3538 Int)) (Broken!4510 (value!29854 List!4848)) (Object!911) (End!902) (Def!902) (Underscore!902) (Match!902) (Else!902) (Error!902) (Case!902) (If!902) (Extends!902) (Abstract!902) (Class!902) (Val!902) (DelimiterValue!1804 (del!962 List!4848)) (KeywordValue!908 (value!29855 List!4848)) (CommentValue!1804 (value!29856 List!4848)) (WhitespaceValue!1804 (value!29857 List!4848)) (IndentationValue!902 (value!29858 List!4848)) (String!6235) (Int32!902) (Broken!4511 (value!29859 List!4848)) (Boolean!903) (Unit!8783) (OperatorValue!905 (op!962 List!4848)) (IdentifierValue!1804 (value!29860 List!4848)) (IdentifierValue!1805 (value!29861 List!4848)) (WhitespaceValue!1805 (value!29862 List!4848)) (True!1804) (False!1804) (Broken!4512 (value!29863 List!4848)) (Broken!4513 (value!29864 List!4848)) (True!1805) (RightBrace!902) (RightBracket!902) (Colon!902) (Null!902) (Comma!902) (LeftBracket!902) (False!1805) (LeftBrace!902) (ImaginaryLiteralValue!902 (text!6760 List!4848)) (StringLiteralValue!2706 (value!29865 List!4848)) (EOFValue!902 (value!29866 List!4848)) (IdentValue!902 (value!29867 List!4848)) (DelimiterValue!1805 (value!29868 List!4848)) (DedentValue!902 (value!29869 List!4848)) (NewLineValue!902 (value!29870 List!4848)) (IntegerValue!2706 (value!29871 (_ BitVec 32)) (text!6761 List!4848)) (IntegerValue!2707 (value!29872 Int) (text!6762 List!4848)) (Times!902) (Or!902) (Equal!902) (Minus!902) (Broken!4514 (value!29873 List!4848)) (And!902) (Div!902) (LessEqual!902) (Mod!902) (Concat!2106) (Not!902) (Plus!902) (SpaceValue!902 (value!29874 List!4848)) (IntegerValue!2708 (value!29875 Int) (text!6763 List!4848)) (StringLiteralValue!2707 (text!6764 List!4848)) (FloatLiteralValue!1805 (text!6765 List!4848)) (BytesLiteralValue!902 (value!29876 List!4848)) (CommentValue!1805 (value!29877 List!4848)) (StringLiteralValue!2708 (value!29878 List!4848)) (ErrorTokenValue!902 (msg!963 List!4848)) )
))
(declare-datatypes ((TokenValueInjection!1572 0))(
  ( (TokenValueInjection!1573 (toValue!1705 Int) (toChars!1564 Int)) )
))
(declare-datatypes ((String!6236 0))(
  ( (String!6237 (value!29879 String)) )
))
(declare-datatypes ((Rule!1556 0))(
  ( (Rule!1557 (regex!878 Regex!1203) (tag!1140 String!6236) (isSeparator!878 Bool) (transformation!878 TokenValueInjection!1572)) )
))
(declare-datatypes ((List!4849 0))(
  ( (Nil!4839) (Cons!4839 (h!10240 Rule!1556) (t!73439 List!4849)) )
))
(declare-fun rules!1345 () List!4849)

(declare-fun e!312898 () Bool)

(declare-fun inv!6107 (String!6236) Bool)

(declare-fun inv!6111 (TokenValueInjection!1572) Bool)

(assert (=> b!521696 (= e!312902 (and tp!162486 (inv!6107 (tag!1140 (h!10240 rules!1345))) (inv!6111 (transformation!878 (h!10240 rules!1345))) e!312898))))

(declare-fun e!312880 () Bool)

(declare-fun e!312889 () Bool)

(assert (=> b!521697 (= e!312880 (and e!312889 tp!162484))))

(declare-fun b!521698 () Bool)

(assert (=> b!521698 (= e!312901 e!312880)))

(declare-fun b!521699 () Bool)

(declare-fun e!312873 () Bool)

(declare-fun tp!162480 () Bool)

(assert (=> b!521699 (= e!312873 (and tp!162480 mapRes!2117))))

(declare-fun condMapEmpty!2116 () Bool)

(declare-fun mapDefault!2117 () List!4847)

(assert (=> b!521699 (= condMapEmpty!2116 (= (arr!975 (_values!826 (v!15927 (underlying!1273 (v!15928 (underlying!1274 (cache!906 cacheUp!449))))))) ((as const (Array (_ BitVec 32) List!4847)) mapDefault!2117)))))

(declare-fun mapIsEmpty!2115 () Bool)

(declare-fun mapRes!2115 () Bool)

(assert (=> mapIsEmpty!2115 mapRes!2115))

(declare-fun tp!162466 () Bool)

(declare-fun tp!162469 () Bool)

(declare-fun e!312883 () Bool)

(declare-fun e!312881 () Bool)

(declare-fun array_inv!707 (array!2129) Bool)

(declare-fun array_inv!708 (array!2131) Bool)

(assert (=> b!521700 (= e!312883 (and tp!162467 tp!162469 tp!162466 (array_inv!707 (_keys!840 (v!15925 (underlying!1271 (v!15926 (underlying!1272 (cache!905 cacheFurthestNullable!56))))))) (array_inv!708 (_values!825 (v!15925 (underlying!1271 (v!15926 (underlying!1272 (cache!905 cacheFurthestNullable!56))))))) e!312881))))

(declare-fun b!521701 () Bool)

(declare-fun e!312892 () Bool)

(assert (=> b!521701 (= e!312885 e!312892)))

(declare-fun b!521702 () Bool)

(declare-fun e!312876 () Bool)

(declare-fun e!312886 () Bool)

(assert (=> b!521702 (= e!312876 e!312886)))

(declare-fun b!521703 () Bool)

(declare-fun e!312888 () Bool)

(declare-fun e!312877 () Bool)

(declare-fun inv!6112 (BalanceConc!3170) Bool)

(assert (=> b!521703 (= e!312890 (and e!312888 (inv!6112 (totalInput!1729 cacheFurthestNullable!56)) e!312877))))

(declare-fun b!521704 () Bool)

(declare-fun res!221531 () Bool)

(assert (=> b!521704 (=> (not res!221531) (not e!312891))))

(declare-fun rulesInvariant!730 (LexerInterface!764 List!4849) Bool)

(assert (=> b!521704 (= res!221531 (rulesInvariant!730 thiss!12147 rules!1345))))

(declare-fun b!521705 () Bool)

(declare-fun e!312884 () Bool)

(assert (=> b!521705 (= e!312884 e!312876)))

(declare-fun mapNonEmpty!2116 () Bool)

(declare-fun tp!162468 () Bool)

(declare-fun tp!162476 () Bool)

(assert (=> mapNonEmpty!2116 (= mapRes!2115 (and tp!162468 tp!162476))))

(declare-fun mapValue!2115 () List!4846)

(declare-fun mapKey!2115 () (_ BitVec 32))

(declare-fun mapRest!2117 () (Array (_ BitVec 32) List!4846))

(assert (=> mapNonEmpty!2116 (= (arr!974 (_values!825 (v!15925 (underlying!1271 (v!15926 (underlying!1272 (cache!905 cacheFurthestNullable!56))))))) (store mapRest!2117 mapKey!2115 mapValue!2115))))

(declare-fun b!521706 () Bool)

(declare-fun tp!162471 () Bool)

(declare-fun inv!6113 (Conc!1581) Bool)

(assert (=> b!521706 (= e!312877 (and (inv!6113 (c!100726 (totalInput!1729 cacheFurthestNullable!56))) tp!162471))))

(declare-fun tp!162483 () Bool)

(declare-fun tp!162472 () Bool)

(declare-fun array_inv!709 (array!2127) Bool)

(assert (=> b!521707 (= e!312886 (and tp!162473 tp!162472 tp!162483 (array_inv!707 (_keys!839 (v!15923 (underlying!1269 (v!15924 (underlying!1270 (cache!904 cacheDown!462))))))) (array_inv!709 (_values!824 (v!15923 (underlying!1269 (v!15924 (underlying!1270 (cache!904 cacheDown!462))))))) e!312897))))

(declare-fun mapNonEmpty!2117 () Bool)

(declare-fun tp!162474 () Bool)

(declare-fun tp!162464 () Bool)

(assert (=> mapNonEmpty!2117 (= mapRes!2116 (and tp!162474 tp!162464))))

(declare-fun mapKey!2117 () (_ BitVec 32))

(declare-fun mapValue!2117 () List!4844)

(declare-fun mapRest!2115 () (Array (_ BitVec 32) List!4844))

(assert (=> mapNonEmpty!2117 (= (arr!972 (_values!824 (v!15923 (underlying!1269 (v!15924 (underlying!1270 (cache!904 cacheDown!462))))))) (store mapRest!2115 mapKey!2117 mapValue!2117))))

(declare-fun b!521708 () Bool)

(declare-fun lt!217162 () MutLongMap!545)

(assert (=> b!521708 (= e!312889 (and e!312884 ((_ is LongMap!545) lt!217162)))))

(assert (=> b!521708 (= lt!217162 (v!15924 (underlying!1270 (cache!904 cacheDown!462))))))

(declare-fun b!521709 () Bool)

(declare-fun e!312894 () Bool)

(assert (=> b!521709 (= e!312894 e!312883)))

(declare-fun mapIsEmpty!2116 () Bool)

(assert (=> mapIsEmpty!2116 mapRes!2116))

(declare-fun b!521710 () Bool)

(declare-fun e!312899 () Bool)

(declare-fun lt!217161 () MutLongMap!547)

(assert (=> b!521710 (= e!312899 (and e!312896 ((_ is LongMap!547) lt!217161)))))

(assert (=> b!521710 (= lt!217161 (v!15928 (underlying!1274 (cache!906 cacheUp!449))))))

(declare-fun b!521711 () Bool)

(declare-fun tp!162475 () Bool)

(assert (=> b!521711 (= e!312878 (and e!312902 tp!162475))))

(declare-fun b!521712 () Bool)

(declare-fun res!221530 () Bool)

(assert (=> b!521712 (=> (not res!221530) (not e!312891))))

(declare-fun valid!519 (CacheDown!190) Bool)

(assert (=> b!521712 (= res!221530 (valid!519 cacheDown!462))))

(declare-fun b!521713 () Bool)

(declare-fun tp!162465 () Bool)

(assert (=> b!521713 (= e!312881 (and tp!162465 mapRes!2115))))

(declare-fun condMapEmpty!2117 () Bool)

(declare-fun mapDefault!2115 () List!4846)

(assert (=> b!521713 (= condMapEmpty!2117 (= (arr!974 (_values!825 (v!15925 (underlying!1271 (v!15926 (underlying!1272 (cache!905 cacheFurthestNullable!56))))))) ((as const (Array (_ BitVec 32) List!4846)) mapDefault!2115)))))

(declare-fun tp!162481 () Bool)

(declare-fun tp!162482 () Bool)

(declare-fun array_inv!710 (array!2133) Bool)

(assert (=> b!521714 (= e!312895 (and tp!162479 tp!162481 tp!162482 (array_inv!707 (_keys!841 (v!15927 (underlying!1273 (v!15928 (underlying!1274 (cache!906 cacheUp!449))))))) (array_inv!710 (_values!826 (v!15927 (underlying!1273 (v!15928 (underlying!1274 (cache!906 cacheUp!449))))))) e!312873))))

(declare-fun b!521715 () Bool)

(declare-fun e!312874 () Bool)

(assert (=> b!521715 (= e!312874 e!312894)))

(declare-fun b!521716 () Bool)

(declare-fun res!221532 () Bool)

(assert (=> b!521716 (=> (not res!221532) (not e!312891))))

(declare-fun isEmpty!3578 (List!4849) Bool)

(assert (=> b!521716 (= res!221532 (not (isEmpty!3578 rules!1345)))))

(declare-fun b!521717 () Bool)

(assert (=> b!521717 (= e!312891 false)))

(declare-fun lt!217160 () Bool)

(declare-fun valid!520 (CacheFurthestNullable!142) Bool)

(assert (=> b!521717 (= lt!217160 (valid!520 cacheFurthestNullable!56))))

(declare-fun mapIsEmpty!2117 () Bool)

(assert (=> mapIsEmpty!2117 mapRes!2117))

(assert (=> b!521718 (= e!312898 (and tp!162487 tp!162488))))

(declare-fun e!312887 () Bool)

(assert (=> b!521719 (= e!312888 (and e!312887 tp!162463))))

(assert (=> b!521720 (= e!312892 (and e!312899 tp!162470))))

(declare-fun b!521721 () Bool)

(declare-fun lt!217163 () MutLongMap!546)

(assert (=> b!521721 (= e!312887 (and e!312874 ((_ is LongMap!546) lt!217163)))))

(assert (=> b!521721 (= lt!217163 (v!15926 (underlying!1272 (cache!905 cacheFurthestNullable!56))))))

(assert (= (and start!47818 res!221528) b!521716))

(assert (= (and b!521716 res!221532) b!521704))

(assert (= (and b!521704 res!221531) b!521695))

(assert (= (and b!521695 res!221529) b!521712))

(assert (= (and b!521712 res!221530) b!521717))

(assert (= (and b!521693 condMapEmpty!2115) mapIsEmpty!2116))

(assert (= (and b!521693 (not condMapEmpty!2115)) mapNonEmpty!2117))

(assert (= b!521707 b!521693))

(assert (= b!521702 b!521707))

(assert (= b!521705 b!521702))

(assert (= (and b!521708 ((_ is LongMap!545) (v!15924 (underlying!1270 (cache!904 cacheDown!462))))) b!521705))

(assert (= b!521697 b!521708))

(assert (= (and b!521698 ((_ is HashMap!517) (cache!904 cacheDown!462))) b!521697))

(assert (= start!47818 b!521698))

(assert (= (and b!521713 condMapEmpty!2117) mapIsEmpty!2115))

(assert (= (and b!521713 (not condMapEmpty!2117)) mapNonEmpty!2116))

(assert (= b!521700 b!521713))

(assert (= b!521709 b!521700))

(assert (= b!521715 b!521709))

(assert (= (and b!521721 ((_ is LongMap!546) (v!15926 (underlying!1272 (cache!905 cacheFurthestNullable!56))))) b!521715))

(assert (= b!521719 b!521721))

(assert (= (and b!521703 ((_ is HashMap!518) (cache!905 cacheFurthestNullable!56))) b!521719))

(assert (= b!521703 b!521706))

(assert (= start!47818 b!521703))

(assert (= (and b!521699 condMapEmpty!2116) mapIsEmpty!2117))

(assert (= (and b!521699 (not condMapEmpty!2116)) mapNonEmpty!2115))

(assert (= b!521714 b!521699))

(assert (= b!521694 b!521714))

(assert (= b!521692 b!521694))

(assert (= (and b!521710 ((_ is LongMap!547) (v!15928 (underlying!1274 (cache!906 cacheUp!449))))) b!521692))

(assert (= b!521720 b!521710))

(assert (= (and b!521701 ((_ is HashMap!519) (cache!906 cacheUp!449))) b!521720))

(assert (= start!47818 b!521701))

(assert (= b!521696 b!521718))

(assert (= b!521711 b!521696))

(assert (= (and start!47818 ((_ is Cons!4839) rules!1345)) b!521711))

(declare-fun m!768003 () Bool)

(assert (=> mapNonEmpty!2115 m!768003))

(declare-fun m!768005 () Bool)

(assert (=> b!521696 m!768005))

(declare-fun m!768007 () Bool)

(assert (=> b!521696 m!768007))

(declare-fun m!768009 () Bool)

(assert (=> start!47818 m!768009))

(declare-fun m!768011 () Bool)

(assert (=> start!47818 m!768011))

(declare-fun m!768013 () Bool)

(assert (=> start!47818 m!768013))

(declare-fun m!768015 () Bool)

(assert (=> mapNonEmpty!2116 m!768015))

(declare-fun m!768017 () Bool)

(assert (=> b!521714 m!768017))

(declare-fun m!768019 () Bool)

(assert (=> b!521714 m!768019))

(declare-fun m!768021 () Bool)

(assert (=> b!521706 m!768021))

(declare-fun m!768023 () Bool)

(assert (=> mapNonEmpty!2117 m!768023))

(declare-fun m!768025 () Bool)

(assert (=> b!521695 m!768025))

(declare-fun m!768027 () Bool)

(assert (=> b!521700 m!768027))

(declare-fun m!768029 () Bool)

(assert (=> b!521700 m!768029))

(declare-fun m!768031 () Bool)

(assert (=> b!521703 m!768031))

(declare-fun m!768033 () Bool)

(assert (=> b!521712 m!768033))

(declare-fun m!768035 () Bool)

(assert (=> b!521704 m!768035))

(declare-fun m!768037 () Bool)

(assert (=> b!521717 m!768037))

(declare-fun m!768039 () Bool)

(assert (=> b!521716 m!768039))

(declare-fun m!768041 () Bool)

(assert (=> b!521707 m!768041))

(declare-fun m!768043 () Bool)

(assert (=> b!521707 m!768043))

(check-sat (not b!521706) b_and!51209 (not b_next!13717) (not b!521711) (not b!521700) (not mapNonEmpty!2115) b_and!51203 (not b!521717) b_and!51201 b_and!51197 (not b_next!13725) (not b!521707) (not mapNonEmpty!2116) (not start!47818) b_and!51205 (not b_next!13729) (not b!521703) (not b!521714) (not b!521713) (not mapNonEmpty!2117) b_and!51199 b_and!51207 (not b_next!13727) (not b_next!13721) (not b_next!13731) (not b!521695) (not b!521699) (not b!521693) b_and!51195 (not b_next!13723) (not b_next!13719) (not b!521716) (not b!521704) (not b!521696) (not b!521712))
(check-sat b_and!51209 b_and!51199 (not b_next!13717) b_and!51203 (not b_next!13719) b_and!51201 b_and!51197 (not b_next!13725) b_and!51205 (not b_next!13729) b_and!51207 (not b_next!13727) (not b_next!13721) (not b_next!13731) b_and!51195 (not b_next!13723))
