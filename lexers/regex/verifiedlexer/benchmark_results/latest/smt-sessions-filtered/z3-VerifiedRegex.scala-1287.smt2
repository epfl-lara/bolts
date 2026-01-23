; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66616 () Bool)

(assert start!66616)

(declare-fun b!697995 () Bool)

(declare-fun b_free!20085 () Bool)

(declare-fun b_next!20149 () Bool)

(assert (=> b!697995 (= b_free!20085 (not b_next!20149))))

(declare-fun tp!212531 () Bool)

(declare-fun b_and!63879 () Bool)

(assert (=> b!697995 (= tp!212531 b_and!63879)))

(declare-fun b!697989 () Bool)

(declare-fun b_free!20087 () Bool)

(declare-fun b_next!20151 () Bool)

(assert (=> b!697989 (= b_free!20087 (not b_next!20151))))

(declare-fun tp!212528 () Bool)

(declare-fun b_and!63881 () Bool)

(assert (=> b!697989 (= tp!212528 b_and!63881)))

(declare-fun b_free!20089 () Bool)

(declare-fun b_next!20153 () Bool)

(assert (=> b!697989 (= b_free!20089 (not b_next!20153))))

(declare-fun tp!212526 () Bool)

(declare-fun b_and!63883 () Bool)

(assert (=> b!697989 (= tp!212526 b_and!63883)))

(declare-fun b!697969 () Bool)

(declare-fun b_free!20091 () Bool)

(declare-fun b_next!20155 () Bool)

(assert (=> b!697969 (= b_free!20091 (not b_next!20155))))

(declare-fun tp!212543 () Bool)

(declare-fun b_and!63885 () Bool)

(assert (=> b!697969 (= tp!212543 b_and!63885)))

(declare-fun b!697957 () Bool)

(declare-fun b_free!20093 () Bool)

(declare-fun b_next!20157 () Bool)

(assert (=> b!697957 (= b_free!20093 (not b_next!20157))))

(declare-fun tp!212527 () Bool)

(declare-fun b_and!63887 () Bool)

(assert (=> b!697957 (= tp!212527 b_and!63887)))

(declare-fun b!697966 () Bool)

(declare-fun b_free!20095 () Bool)

(declare-fun b_next!20159 () Bool)

(assert (=> b!697966 (= b_free!20095 (not b_next!20159))))

(declare-fun tp!212540 () Bool)

(declare-fun b_and!63889 () Bool)

(assert (=> b!697966 (= tp!212540 b_and!63889)))

(declare-fun b!697959 () Bool)

(declare-fun b_free!20097 () Bool)

(declare-fun b_next!20161 () Bool)

(assert (=> b!697959 (= b_free!20097 (not b_next!20161))))

(declare-fun tp!212550 () Bool)

(declare-fun b_and!63891 () Bool)

(assert (=> b!697959 (= tp!212550 b_and!63891)))

(declare-fun b!697980 () Bool)

(declare-fun b_free!20099 () Bool)

(declare-fun b_next!20163 () Bool)

(assert (=> b!697980 (= b_free!20099 (not b_next!20163))))

(declare-fun tp!212523 () Bool)

(declare-fun b_and!63893 () Bool)

(assert (=> b!697980 (= tp!212523 b_and!63893)))

(declare-fun b!697950 () Bool)

(declare-fun e!440210 () Bool)

(declare-fun e!440211 () Bool)

(declare-datatypes ((C!4340 0))(
  ( (C!4341 (val!2400 Int)) )
))
(declare-datatypes ((Regex!1869 0))(
  ( (ElementMatch!1869 (c!121979 C!4340)) (Concat!3441 (regOne!4250 Regex!1869) (regTwo!4250 Regex!1869)) (EmptyExpr!1869) (Star!1869 (reg!2198 Regex!1869)) (EmptyLang!1869) (Union!1869 (regOne!4251 Regex!1869) (regTwo!4251 Regex!1869)) )
))
(declare-datatypes ((List!7707 0))(
  ( (Nil!7693) (Cons!7693 (h!13094 Regex!1869) (t!87530 List!7707)) )
))
(declare-datatypes ((Context!542 0))(
  ( (Context!543 (exprs!771 List!7707)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!8212 0))(
  ( (tuple2!8213 (_1!4566 (InoxSet Context!542)) (_2!4566 Int)) )
))
(declare-datatypes ((tuple2!8214 0))(
  ( (tuple2!8215 (_1!4567 tuple2!8212) (_2!4567 Int)) )
))
(declare-datatypes ((array!3107 0))(
  ( (array!3108 (arr!1401 (Array (_ BitVec 32) (_ BitVec 64))) (size!6270 (_ BitVec 32))) )
))
(declare-datatypes ((List!7708 0))(
  ( (Nil!7694) (Cons!7694 (h!13095 tuple2!8214) (t!87531 List!7708)) )
))
(declare-datatypes ((array!3109 0))(
  ( (array!3110 (arr!1402 (Array (_ BitVec 32) List!7708)) (size!6271 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1684 0))(
  ( (LongMapFixedSize!1685 (defaultEntry!1198 Int) (mask!2661 (_ BitVec 32)) (extraKeys!1089 (_ BitVec 32)) (zeroValue!1099 List!7708) (minValue!1099 List!7708) (_size!1793 (_ BitVec 32)) (_keys!1136 array!3107) (_values!1121 array!3109) (_vacant!903 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3309 0))(
  ( (Cell!3310 (v!17821 LongMapFixedSize!1684)) )
))
(declare-datatypes ((MutLongMap!842 0))(
  ( (LongMap!842 (underlying!1867 Cell!3309)) (MutLongMapExt!841 (__x!5666 Int)) )
))
(declare-fun lt!286362 () MutLongMap!842)

(get-info :version)

(assert (=> b!697950 (= e!440210 (and e!440211 ((_ is LongMap!842) lt!286362)))))

(declare-datatypes ((List!7709 0))(
  ( (Nil!7695) (Cons!7695 (h!13096 C!4340) (t!87532 List!7709)) )
))
(declare-datatypes ((IArray!5389 0))(
  ( (IArray!5390 (innerList!2752 List!7709)) )
))
(declare-datatypes ((Hashable!814 0))(
  ( (HashableExt!813 (__x!5667 Int)) )
))
(declare-datatypes ((Conc!2694 0))(
  ( (Node!2694 (left!6073 Conc!2694) (right!6403 Conc!2694) (csize!5618 Int) (cheight!2905 Int)) (Leaf!3982 (xs!5347 IArray!5389) (csize!5619 Int)) (Empty!2694) )
))
(declare-datatypes ((BalanceConc!5400 0))(
  ( (BalanceConc!5401 (c!121980 Conc!2694)) )
))
(declare-datatypes ((Cell!3311 0))(
  ( (Cell!3312 (v!17822 MutLongMap!842)) )
))
(declare-datatypes ((MutableMap!814 0))(
  ( (MutableMapExt!813 (__x!5668 Int)) (HashMap!814 (underlying!1868 Cell!3311) (hashF!2722 Hashable!814) (_size!1794 (_ BitVec 32)) (defaultValue!965 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!92 0))(
  ( (CacheFindLongestMatch!93 (cache!1201 MutableMap!814) (totalInput!1833 BalanceConc!5400)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!92)

(assert (=> b!697950 (= lt!286362 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))

(declare-fun b!697951 () Bool)

(declare-fun e!440185 () Bool)

(declare-fun e!440175 () Bool)

(assert (=> b!697951 (= e!440185 (not e!440175))))

(declare-fun res!315658 () Bool)

(assert (=> b!697951 (=> res!315658 e!440175)))

(declare-fun lt!286363 () List!7709)

(declare-fun lt!286359 () List!7709)

(declare-fun isSuffix!145 (List!7709 List!7709) Bool)

(assert (=> b!697951 (= res!315658 (not (isSuffix!145 lt!286363 lt!286359)))))

(declare-fun lt!286360 () List!7709)

(assert (=> b!697951 (isSuffix!145 lt!286363 lt!286360)))

(declare-datatypes ((Unit!12707 0))(
  ( (Unit!12708) )
))
(declare-fun lt!286365 () Unit!12707)

(declare-fun lt!286361 () List!7709)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!145 (List!7709 List!7709) Unit!12707)

(assert (=> b!697951 (= lt!286365 (lemmaConcatTwoListThenFSndIsSuffix!145 lt!286361 lt!286363))))

(declare-fun b!697952 () Bool)

(declare-fun e!440207 () Bool)

(declare-datatypes ((tuple3!764 0))(
  ( (tuple3!765 (_1!4568 Regex!1869) (_2!4568 Context!542) (_3!460 C!4340)) )
))
(declare-datatypes ((tuple2!8216 0))(
  ( (tuple2!8217 (_1!4569 tuple3!764) (_2!4569 (InoxSet Context!542))) )
))
(declare-datatypes ((List!7710 0))(
  ( (Nil!7696) (Cons!7696 (h!13097 tuple2!8216) (t!87533 List!7710)) )
))
(declare-datatypes ((array!3111 0))(
  ( (array!3112 (arr!1403 (Array (_ BitVec 32) List!7710)) (size!6272 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1686 0))(
  ( (LongMapFixedSize!1687 (defaultEntry!1199 Int) (mask!2662 (_ BitVec 32)) (extraKeys!1090 (_ BitVec 32)) (zeroValue!1100 List!7710) (minValue!1100 List!7710) (_size!1795 (_ BitVec 32)) (_keys!1137 array!3107) (_values!1122 array!3111) (_vacant!904 (_ BitVec 32))) )
))
(declare-datatypes ((List!7711 0))(
  ( (Nil!7697) (Cons!7697 (h!13098 (_ BitVec 16)) (t!87534 List!7711)) )
))
(declare-datatypes ((TokenValue!1572 0))(
  ( (FloatLiteralValue!3144 (text!11449 List!7711)) (TokenValueExt!1571 (__x!5669 Int)) (Broken!7860 (value!49189 List!7711)) (Object!1585) (End!1572) (Def!1572) (Underscore!1572) (Match!1572) (Else!1572) (Error!1572) (Case!1572) (If!1572) (Extends!1572) (Abstract!1572) (Class!1572) (Val!1572) (DelimiterValue!3144 (del!1632 List!7711)) (KeywordValue!1578 (value!49190 List!7711)) (CommentValue!3144 (value!49191 List!7711)) (WhitespaceValue!3144 (value!49192 List!7711)) (IndentationValue!1572 (value!49193 List!7711)) (String!9589) (Int32!1572) (Broken!7861 (value!49194 List!7711)) (Boolean!1573) (Unit!12709) (OperatorValue!1575 (op!1632 List!7711)) (IdentifierValue!3144 (value!49195 List!7711)) (IdentifierValue!3145 (value!49196 List!7711)) (WhitespaceValue!3145 (value!49197 List!7711)) (True!3144) (False!3144) (Broken!7862 (value!49198 List!7711)) (Broken!7863 (value!49199 List!7711)) (True!3145) (RightBrace!1572) (RightBracket!1572) (Colon!1572) (Null!1572) (Comma!1572) (LeftBracket!1572) (False!3145) (LeftBrace!1572) (ImaginaryLiteralValue!1572 (text!11450 List!7711)) (StringLiteralValue!4716 (value!49200 List!7711)) (EOFValue!1572 (value!49201 List!7711)) (IdentValue!1572 (value!49202 List!7711)) (DelimiterValue!3145 (value!49203 List!7711)) (DedentValue!1572 (value!49204 List!7711)) (NewLineValue!1572 (value!49205 List!7711)) (IntegerValue!4716 (value!49206 (_ BitVec 32)) (text!11451 List!7711)) (IntegerValue!4717 (value!49207 Int) (text!11452 List!7711)) (Times!1572) (Or!1572) (Equal!1572) (Minus!1572) (Broken!7864 (value!49208 List!7711)) (And!1572) (Div!1572) (LessEqual!1572) (Mod!1572) (Concat!3442) (Not!1572) (Plus!1572) (SpaceValue!1572 (value!49209 List!7711)) (IntegerValue!4718 (value!49210 Int) (text!11453 List!7711)) (StringLiteralValue!4717 (text!11454 List!7711)) (FloatLiteralValue!3145 (text!11455 List!7711)) (BytesLiteralValue!1572 (value!49211 List!7711)) (CommentValue!3145 (value!49212 List!7711)) (StringLiteralValue!4718 (value!49213 List!7711)) (ErrorTokenValue!1572 (msg!1633 List!7711)) )
))
(declare-datatypes ((String!9590 0))(
  ( (String!9591 (value!49214 String)) )
))
(declare-datatypes ((TokenValueInjection!2880 0))(
  ( (TokenValueInjection!2881 (toValue!2492 Int) (toChars!2351 Int)) )
))
(declare-datatypes ((Rule!2856 0))(
  ( (Rule!2857 (regex!1528 Regex!1869) (tag!1790 String!9590) (isSeparator!1528 Bool) (transformation!1528 TokenValueInjection!2880)) )
))
(declare-datatypes ((Token!2754 0))(
  ( (Token!2755 (value!49215 TokenValue!1572) (rule!2566 Rule!2856) (size!6273 Int) (originalCharacters!1802 List!7709)) )
))
(declare-datatypes ((tuple2!8218 0))(
  ( (tuple2!8219 (_1!4570 Token!2754) (_2!4570 BalanceConc!5400)) )
))
(declare-datatypes ((Option!1724 0))(
  ( (None!1723) (Some!1723 (v!17823 tuple2!8218)) )
))
(declare-datatypes ((Hashable!815 0))(
  ( (HashableExt!814 (__x!5670 Int)) )
))
(declare-datatypes ((tuple2!8220 0))(
  ( (tuple2!8221 (_1!4571 Context!542) (_2!4571 C!4340)) )
))
(declare-datatypes ((tuple2!8222 0))(
  ( (tuple2!8223 (_1!4572 tuple2!8220) (_2!4572 (InoxSet Context!542))) )
))
(declare-datatypes ((List!7712 0))(
  ( (Nil!7698) (Cons!7698 (h!13099 tuple2!8222) (t!87535 List!7712)) )
))
(declare-datatypes ((array!3113 0))(
  ( (array!3114 (arr!1404 (Array (_ BitVec 32) List!7712)) (size!6274 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1688 0))(
  ( (LongMapFixedSize!1689 (defaultEntry!1200 Int) (mask!2663 (_ BitVec 32)) (extraKeys!1091 (_ BitVec 32)) (zeroValue!1101 List!7712) (minValue!1101 List!7712) (_size!1796 (_ BitVec 32)) (_keys!1138 array!3107) (_values!1123 array!3113) (_vacant!905 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3313 0))(
  ( (Cell!3314 (v!17824 LongMapFixedSize!1688)) )
))
(declare-datatypes ((MutLongMap!843 0))(
  ( (LongMap!843 (underlying!1869 Cell!3313)) (MutLongMapExt!842 (__x!5671 Int)) )
))
(declare-datatypes ((Cell!3315 0))(
  ( (Cell!3316 (v!17825 MutLongMap!843)) )
))
(declare-datatypes ((MutableMap!815 0))(
  ( (MutableMapExt!814 (__x!5672 Int)) (HashMap!815 (underlying!1870 Cell!3315) (hashF!2723 Hashable!815) (_size!1797 (_ BitVec 32)) (defaultValue!966 Int)) )
))
(declare-datatypes ((CacheUp!426 0))(
  ( (CacheUp!427 (cache!1202 MutableMap!815)) )
))
(declare-datatypes ((Cell!3317 0))(
  ( (Cell!3318 (v!17826 LongMapFixedSize!1686)) )
))
(declare-datatypes ((MutLongMap!844 0))(
  ( (LongMap!844 (underlying!1871 Cell!3317)) (MutLongMapExt!843 (__x!5673 Int)) )
))
(declare-datatypes ((Cell!3319 0))(
  ( (Cell!3320 (v!17827 MutLongMap!844)) )
))
(declare-datatypes ((Hashable!816 0))(
  ( (HashableExt!815 (__x!5674 Int)) )
))
(declare-datatypes ((MutableMap!816 0))(
  ( (MutableMapExt!815 (__x!5675 Int)) (HashMap!816 (underlying!1872 Cell!3319) (hashF!2724 Hashable!816) (_size!1798 (_ BitVec 32)) (defaultValue!967 Int)) )
))
(declare-datatypes ((CacheDown!436 0))(
  ( (CacheDown!437 (cache!1203 MutableMap!816)) )
))
(declare-datatypes ((tuple4!156 0))(
  ( (tuple4!157 (_1!4573 Option!1724) (_2!4573 CacheUp!426) (_3!461 CacheDown!436) (_4!78 CacheFindLongestMatch!92)) )
))
(declare-fun lt!286367 () tuple4!156)

(declare-fun totalInput!378 () BalanceConc!5400)

(assert (=> b!697952 (= e!440207 (= (totalInput!1833 (_4!78 lt!286367)) totalInput!378))))

(declare-fun b!697953 () Bool)

(declare-fun e!440183 () Bool)

(assert (=> b!697953 (= e!440211 e!440183)))

(declare-fun b!697954 () Bool)

(declare-fun e!440190 () Bool)

(declare-fun e!440178 () Bool)

(assert (=> b!697954 (= e!440190 e!440178)))

(declare-fun b!697955 () Bool)

(declare-fun e!440186 () Bool)

(assert (=> b!697955 (= e!440186 e!440185)))

(declare-fun res!315646 () Bool)

(assert (=> b!697955 (=> (not res!315646) (not e!440185))))

(declare-datatypes ((List!7713 0))(
  ( (Nil!7699) (Cons!7699 (h!13100 Token!2754) (t!87536 List!7713)) )
))
(declare-datatypes ((IArray!5391 0))(
  ( (IArray!5392 (innerList!2753 List!7713)) )
))
(declare-datatypes ((Conc!2695 0))(
  ( (Node!2695 (left!6074 Conc!2695) (right!6404 Conc!2695) (csize!5620 Int) (cheight!2906 Int)) (Leaf!3983 (xs!5348 IArray!5391) (csize!5621 Int)) (Empty!2695) )
))
(declare-datatypes ((BalanceConc!5402 0))(
  ( (BalanceConc!5403 (c!121981 Conc!2695)) )
))
(declare-fun acc!372 () BalanceConc!5402)

(declare-datatypes ((tuple2!8224 0))(
  ( (tuple2!8225 (_1!4574 BalanceConc!5402) (_2!4574 BalanceConc!5400)) )
))
(declare-fun lt!286366 () tuple2!8224)

(declare-fun lt!286368 () tuple2!8224)

(declare-fun list!3200 (BalanceConc!5402) List!7713)

(declare-fun ++!2000 (BalanceConc!5402 BalanceConc!5402) BalanceConc!5402)

(assert (=> b!697955 (= res!315646 (= (list!3200 (_1!4574 lt!286368)) (list!3200 (++!2000 acc!372 (_1!4574 lt!286366)))))))

(declare-fun input!870 () BalanceConc!5400)

(declare-datatypes ((List!7714 0))(
  ( (Nil!7700) (Cons!7700 (h!13101 Rule!2856) (t!87537 List!7714)) )
))
(declare-fun rules!1486 () List!7714)

(declare-datatypes ((LexerInterface!1341 0))(
  ( (LexerInterfaceExt!1338 (__x!5676 Int)) (Lexer!1339) )
))
(declare-fun thiss!12529 () LexerInterface!1341)

(declare-fun lexRec!181 (LexerInterface!1341 List!7714 BalanceConc!5400) tuple2!8224)

(assert (=> b!697955 (= lt!286366 (lexRec!181 thiss!12529 rules!1486 input!870))))

(assert (=> b!697955 (= lt!286368 (lexRec!181 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!697956 () Bool)

(declare-fun e!440193 () Bool)

(declare-fun tp!212542 () Bool)

(declare-fun mapRes!3398 () Bool)

(assert (=> b!697956 (= e!440193 (and tp!212542 mapRes!3398))))

(declare-fun condMapEmpty!3399 () Bool)

(declare-fun mapDefault!3398 () List!7708)

(assert (=> b!697956 (= condMapEmpty!3399 (= (arr!1402 (_values!1121 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7708)) mapDefault!3398)))))

(declare-fun e!440205 () Bool)

(assert (=> b!697957 (= e!440205 (and e!440210 tp!212527))))

(declare-fun e!440191 () Bool)

(declare-fun e!440172 () Bool)

(declare-fun b!697958 () Bool)

(declare-fun inv!9828 (BalanceConc!5400) Bool)

(assert (=> b!697958 (= e!440172 (and e!440205 (inv!9828 (totalInput!1833 cacheFindLongestMatch!74)) e!440191))))

(declare-fun e!440189 () Bool)

(declare-fun e!440192 () Bool)

(declare-fun tp!212539 () Bool)

(declare-fun cacheDown!515 () CacheDown!436)

(declare-fun tp!212522 () Bool)

(declare-fun array_inv!1031 (array!3107) Bool)

(declare-fun array_inv!1032 (array!3111) Bool)

(assert (=> b!697959 (= e!440192 (and tp!212550 tp!212522 tp!212539 (array_inv!1031 (_keys!1137 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515))))))) (array_inv!1032 (_values!1122 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515))))))) e!440189))))

(declare-fun b!697960 () Bool)

(declare-fun e!440177 () Bool)

(declare-fun e!440204 () Bool)

(assert (=> b!697960 (= e!440177 e!440204)))

(declare-fun res!315649 () Bool)

(assert (=> b!697960 (=> (not res!315649) (not e!440204))))

(assert (=> b!697960 (= res!315649 (= lt!286359 lt!286360))))

(declare-fun ++!2001 (List!7709 List!7709) List!7709)

(assert (=> b!697960 (= lt!286360 (++!2001 lt!286361 lt!286363))))

(declare-fun list!3201 (BalanceConc!5400) List!7709)

(assert (=> b!697960 (= lt!286359 (list!3201 totalInput!378))))

(assert (=> b!697960 (= lt!286363 (list!3201 input!870))))

(declare-fun treated!50 () BalanceConc!5400)

(assert (=> b!697960 (= lt!286361 (list!3201 treated!50))))

(declare-fun tp!212536 () Bool)

(declare-fun e!440208 () Bool)

(declare-fun b!697961 () Bool)

(declare-fun e!440180 () Bool)

(declare-fun inv!9826 (String!9590) Bool)

(declare-fun inv!9829 (TokenValueInjection!2880) Bool)

(assert (=> b!697961 (= e!440208 (and tp!212536 (inv!9826 (tag!1790 (h!13101 rules!1486))) (inv!9829 (transformation!1528 (h!13101 rules!1486))) e!440180))))

(declare-fun b!697962 () Bool)

(declare-fun e!440199 () Bool)

(declare-fun e!440181 () Bool)

(declare-fun lt!286369 () MutLongMap!843)

(assert (=> b!697962 (= e!440199 (and e!440181 ((_ is LongMap!843) lt!286369)))))

(declare-fun cacheUp!502 () CacheUp!426)

(assert (=> b!697962 (= lt!286369 (v!17825 (underlying!1870 (cache!1202 cacheUp!502))))))

(declare-fun b!697963 () Bool)

(declare-fun tp!212530 () Bool)

(declare-fun mapRes!3400 () Bool)

(assert (=> b!697963 (= e!440189 (and tp!212530 mapRes!3400))))

(declare-fun condMapEmpty!3400 () Bool)

(declare-fun mapDefault!3400 () List!7710)

(assert (=> b!697963 (= condMapEmpty!3400 (= (arr!1403 (_values!1122 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7710)) mapDefault!3400)))))

(declare-fun b!697964 () Bool)

(declare-fun tp!212529 () Bool)

(declare-fun inv!9830 (Conc!2694) Bool)

(assert (=> b!697964 (= e!440191 (and (inv!9830 (c!121980 (totalInput!1833 cacheFindLongestMatch!74))) tp!212529))))

(declare-fun b!697965 () Bool)

(declare-fun e!440201 () Bool)

(declare-fun tp!212546 () Bool)

(assert (=> b!697965 (= e!440201 (and (inv!9830 (c!121980 totalInput!378)) tp!212546))))

(declare-fun tp!212535 () Bool)

(declare-fun e!440203 () Bool)

(declare-fun tp!212537 () Bool)

(declare-fun array_inv!1033 (array!3109) Bool)

(assert (=> b!697966 (= e!440203 (and tp!212540 tp!212537 tp!212535 (array_inv!1031 (_keys!1136 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))) (array_inv!1033 (_values!1121 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))) e!440193))))

(declare-fun b!697967 () Bool)

(declare-fun res!315663 () Bool)

(assert (=> b!697967 (=> (not res!315663) (not e!440185))))

(declare-fun valid!712 (CacheFindLongestMatch!92) Bool)

(assert (=> b!697967 (= res!315663 (valid!712 cacheFindLongestMatch!74))))

(declare-fun res!315650 () Bool)

(assert (=> start!66616 (=> (not res!315650) (not e!440177))))

(assert (=> start!66616 (= res!315650 ((_ is Lexer!1339) thiss!12529))))

(assert (=> start!66616 e!440177))

(declare-fun e!440176 () Bool)

(declare-fun inv!9831 (BalanceConc!5402) Bool)

(assert (=> start!66616 (and (inv!9831 acc!372) e!440176)))

(declare-fun e!440184 () Bool)

(assert (=> start!66616 (and (inv!9828 treated!50) e!440184)))

(assert (=> start!66616 (and (inv!9828 totalInput!378) e!440201)))

(declare-fun e!440173 () Bool)

(assert (=> start!66616 (and (inv!9828 input!870) e!440173)))

(declare-fun e!440187 () Bool)

(assert (=> start!66616 e!440187))

(assert (=> start!66616 true))

(declare-fun e!440202 () Bool)

(declare-fun inv!9832 (CacheUp!426) Bool)

(assert (=> start!66616 (and (inv!9832 cacheUp!502) e!440202)))

(declare-fun e!440196 () Bool)

(declare-fun inv!9833 (CacheDown!436) Bool)

(assert (=> start!66616 (and (inv!9833 cacheDown!515) e!440196)))

(declare-fun inv!9834 (CacheFindLongestMatch!92) Bool)

(assert (=> start!66616 (and (inv!9834 cacheFindLongestMatch!74) e!440172)))

(declare-fun b!697968 () Bool)

(declare-fun res!315648 () Bool)

(assert (=> b!697968 (=> res!315648 e!440207)))

(assert (=> b!697968 (= res!315648 (not (valid!712 (_4!78 lt!286367))))))

(declare-fun e!440209 () Bool)

(declare-fun e!440206 () Bool)

(assert (=> b!697969 (= e!440209 (and e!440206 tp!212543))))

(declare-fun b!697970 () Bool)

(declare-fun res!315653 () Bool)

(assert (=> b!697970 (=> (not res!315653) (not e!440185))))

(assert (=> b!697970 (= res!315653 (= (totalInput!1833 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!697971 () Bool)

(assert (=> b!697971 (= e!440196 e!440209)))

(declare-fun b!697972 () Bool)

(declare-fun e!440194 () Bool)

(assert (=> b!697972 (= e!440181 e!440194)))

(declare-fun b!697973 () Bool)

(declare-fun e!440182 () Bool)

(assert (=> b!697973 (= e!440194 e!440182)))

(declare-fun b!697974 () Bool)

(declare-fun res!315662 () Bool)

(assert (=> b!697974 (=> (not res!315662) (not e!440185))))

(assert (=> b!697974 (= res!315662 (= (list!3201 (_2!4574 lt!286368)) (list!3201 (_2!4574 lt!286366))))))

(declare-fun b!697975 () Bool)

(declare-fun res!315656 () Bool)

(assert (=> b!697975 (=> (not res!315656) (not e!440185))))

(declare-fun valid!713 (CacheUp!426) Bool)

(assert (=> b!697975 (= res!315656 (valid!713 cacheUp!502))))

(declare-fun b!697976 () Bool)

(declare-fun res!315655 () Bool)

(assert (=> b!697976 (=> (not res!315655) (not e!440185))))

(declare-fun valid!714 (CacheDown!436) Bool)

(assert (=> b!697976 (= res!315655 (valid!714 cacheDown!515))))

(declare-fun mapNonEmpty!3398 () Bool)

(declare-fun tp!212533 () Bool)

(declare-fun tp!212548 () Bool)

(assert (=> mapNonEmpty!3398 (= mapRes!3400 (and tp!212533 tp!212548))))

(declare-fun mapRest!3400 () (Array (_ BitVec 32) List!7710))

(declare-fun mapKey!3398 () (_ BitVec 32))

(declare-fun mapValue!3399 () List!7710)

(assert (=> mapNonEmpty!3398 (= (arr!1403 (_values!1122 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515))))))) (store mapRest!3400 mapKey!3398 mapValue!3399))))

(declare-fun b!697977 () Bool)

(declare-fun tp!212534 () Bool)

(assert (=> b!697977 (= e!440184 (and (inv!9830 (c!121980 treated!50)) tp!212534))))

(declare-fun mapIsEmpty!3398 () Bool)

(assert (=> mapIsEmpty!3398 mapRes!3398))

(declare-fun b!697978 () Bool)

(declare-fun e!440179 () Bool)

(assert (=> b!697978 (= e!440179 e!440207)))

(declare-fun res!315659 () Bool)

(assert (=> b!697978 (=> res!315659 e!440207)))

(declare-fun rulesValidInductive!531 (LexerInterface!1341 List!7714) Bool)

(assert (=> b!697978 (= res!315659 (not (rulesValidInductive!531 thiss!12529 rules!1486)))))

(declare-fun lt!286364 () tuple4!156)

(declare-fun maxPrefixZipperSequenceV2Mem!14 (LexerInterface!1341 List!7714 BalanceConc!5400 BalanceConc!5400 CacheUp!426 CacheDown!436 CacheFindLongestMatch!92) tuple4!156)

(assert (=> b!697978 (= lt!286364 (maxPrefixZipperSequenceV2Mem!14 thiss!12529 rules!1486 input!870 totalInput!378 (_2!4573 lt!286367) (_3!461 lt!286367) (_4!78 lt!286367)))))

(declare-fun lt!286372 () tuple2!8224)

(assert (=> b!697978 (= lt!286372 (lexRec!181 thiss!12529 rules!1486 (_2!4570 (v!17823 (_1!4573 lt!286367)))))))

(declare-fun b!697979 () Bool)

(declare-fun e!440200 () Bool)

(declare-fun tp!212524 () Bool)

(declare-fun mapRes!3399 () Bool)

(assert (=> b!697979 (= e!440200 (and tp!212524 mapRes!3399))))

(declare-fun condMapEmpty!3398 () Bool)

(declare-fun mapDefault!3399 () List!7712)

(assert (=> b!697979 (= condMapEmpty!3398 (= (arr!1404 (_values!1123 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7712)) mapDefault!3399)))))

(declare-fun e!440188 () Bool)

(assert (=> b!697980 (= e!440188 (and e!440199 tp!212523))))

(declare-fun b!697981 () Bool)

(declare-fun res!315652 () Bool)

(assert (=> b!697981 (=> res!315652 e!440207)))

(assert (=> b!697981 (= res!315652 (not (valid!713 (_2!4573 lt!286367))))))

(declare-fun b!697982 () Bool)

(assert (=> b!697982 (= e!440204 e!440186)))

(declare-fun res!315660 () Bool)

(assert (=> b!697982 (=> (not res!315660) (not e!440186))))

(declare-fun lt!286371 () tuple2!8224)

(assert (=> b!697982 (= res!315660 (= (list!3200 (_1!4574 lt!286371)) (list!3200 acc!372)))))

(assert (=> b!697982 (= lt!286371 (lexRec!181 thiss!12529 rules!1486 treated!50))))

(declare-fun b!697983 () Bool)

(declare-fun tp!212551 () Bool)

(assert (=> b!697983 (= e!440173 (and (inv!9830 (c!121980 input!870)) tp!212551))))

(declare-fun b!697984 () Bool)

(assert (=> b!697984 (= e!440202 e!440188)))

(declare-fun b!697985 () Bool)

(assert (=> b!697985 (= e!440183 e!440203)))

(declare-fun b!697986 () Bool)

(declare-fun res!315657 () Bool)

(assert (=> b!697986 (=> (not res!315657) (not e!440177))))

(declare-fun isEmpty!4919 (List!7714) Bool)

(assert (=> b!697986 (= res!315657 (not (isEmpty!4919 rules!1486)))))

(declare-fun b!697987 () Bool)

(declare-fun res!315661 () Bool)

(assert (=> b!697987 (=> (not res!315661) (not e!440186))))

(declare-fun isEmpty!4920 (List!7709) Bool)

(assert (=> b!697987 (= res!315661 (isEmpty!4920 (list!3201 (_2!4574 lt!286371))))))

(declare-fun mapIsEmpty!3399 () Bool)

(assert (=> mapIsEmpty!3399 mapRes!3399))

(declare-fun mapNonEmpty!3399 () Bool)

(declare-fun tp!212547 () Bool)

(declare-fun tp!212544 () Bool)

(assert (=> mapNonEmpty!3399 (= mapRes!3398 (and tp!212547 tp!212544))))

(declare-fun mapRest!3399 () (Array (_ BitVec 32) List!7708))

(declare-fun mapValue!3398 () List!7708)

(declare-fun mapKey!3400 () (_ BitVec 32))

(assert (=> mapNonEmpty!3399 (= (arr!1402 (_values!1121 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))) (store mapRest!3399 mapKey!3400 mapValue!3398))))

(declare-fun b!697988 () Bool)

(declare-fun lt!286370 () MutLongMap!844)

(assert (=> b!697988 (= e!440206 (and e!440190 ((_ is LongMap!844) lt!286370)))))

(assert (=> b!697988 (= lt!286370 (v!17827 (underlying!1872 (cache!1203 cacheDown!515))))))

(assert (=> b!697989 (= e!440180 (and tp!212528 tp!212526))))

(declare-fun b!697990 () Bool)

(declare-fun res!315654 () Bool)

(assert (=> b!697990 (=> (not res!315654) (not e!440177))))

(declare-fun rulesInvariant!1268 (LexerInterface!1341 List!7714) Bool)

(assert (=> b!697990 (= res!315654 (rulesInvariant!1268 thiss!12529 rules!1486))))

(declare-fun mapNonEmpty!3400 () Bool)

(declare-fun tp!212538 () Bool)

(declare-fun tp!212549 () Bool)

(assert (=> mapNonEmpty!3400 (= mapRes!3399 (and tp!212538 tp!212549))))

(declare-fun mapValue!3400 () List!7712)

(declare-fun mapKey!3399 () (_ BitVec 32))

(declare-fun mapRest!3398 () (Array (_ BitVec 32) List!7712))

(assert (=> mapNonEmpty!3400 (= (arr!1404 (_values!1123 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502))))))) (store mapRest!3398 mapKey!3399 mapValue!3400))))

(declare-fun b!697991 () Bool)

(assert (=> b!697991 (= e!440178 e!440192)))

(declare-fun mapIsEmpty!3400 () Bool)

(assert (=> mapIsEmpty!3400 mapRes!3400))

(declare-fun b!697992 () Bool)

(declare-fun tp!212541 () Bool)

(assert (=> b!697992 (= e!440187 (and e!440208 tp!212541))))

(declare-fun b!697993 () Bool)

(declare-fun res!315647 () Bool)

(assert (=> b!697993 (=> res!315647 e!440207)))

(assert (=> b!697993 (= res!315647 (not (valid!714 (_3!461 lt!286367))))))

(declare-fun b!697994 () Bool)

(declare-fun tp!212532 () Bool)

(declare-fun inv!9835 (Conc!2695) Bool)

(assert (=> b!697994 (= e!440176 (and (inv!9835 (c!121981 acc!372)) tp!212532))))

(declare-fun tp!212525 () Bool)

(declare-fun tp!212545 () Bool)

(declare-fun array_inv!1034 (array!3113) Bool)

(assert (=> b!697995 (= e!440182 (and tp!212531 tp!212525 tp!212545 (array_inv!1031 (_keys!1138 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502))))))) (array_inv!1034 (_values!1123 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502))))))) e!440200))))

(declare-fun b!697996 () Bool)

(assert (=> b!697996 (= e!440175 e!440179)))

(declare-fun res!315651 () Bool)

(assert (=> b!697996 (=> res!315651 e!440179)))

(assert (=> b!697996 (= res!315651 (not ((_ is Some!1723) (_1!4573 lt!286367))))))

(assert (=> b!697996 (= lt!286367 (maxPrefixZipperSequenceV2Mem!14 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(assert (= (and start!66616 res!315650) b!697986))

(assert (= (and b!697986 res!315657) b!697990))

(assert (= (and b!697990 res!315654) b!697960))

(assert (= (and b!697960 res!315649) b!697982))

(assert (= (and b!697982 res!315660) b!697987))

(assert (= (and b!697987 res!315661) b!697955))

(assert (= (and b!697955 res!315646) b!697974))

(assert (= (and b!697974 res!315662) b!697975))

(assert (= (and b!697975 res!315656) b!697976))

(assert (= (and b!697976 res!315655) b!697967))

(assert (= (and b!697967 res!315663) b!697970))

(assert (= (and b!697970 res!315653) b!697951))

(assert (= (and b!697951 (not res!315658)) b!697996))

(assert (= (and b!697996 (not res!315651)) b!697978))

(assert (= (and b!697978 (not res!315659)) b!697981))

(assert (= (and b!697981 (not res!315652)) b!697993))

(assert (= (and b!697993 (not res!315647)) b!697968))

(assert (= (and b!697968 (not res!315648)) b!697952))

(assert (= start!66616 b!697994))

(assert (= start!66616 b!697977))

(assert (= start!66616 b!697965))

(assert (= start!66616 b!697983))

(assert (= b!697961 b!697989))

(assert (= b!697992 b!697961))

(assert (= (and start!66616 ((_ is Cons!7700) rules!1486)) b!697992))

(assert (= (and b!697979 condMapEmpty!3398) mapIsEmpty!3399))

(assert (= (and b!697979 (not condMapEmpty!3398)) mapNonEmpty!3400))

(assert (= b!697995 b!697979))

(assert (= b!697973 b!697995))

(assert (= b!697972 b!697973))

(assert (= (and b!697962 ((_ is LongMap!843) (v!17825 (underlying!1870 (cache!1202 cacheUp!502))))) b!697972))

(assert (= b!697980 b!697962))

(assert (= (and b!697984 ((_ is HashMap!815) (cache!1202 cacheUp!502))) b!697980))

(assert (= start!66616 b!697984))

(assert (= (and b!697963 condMapEmpty!3400) mapIsEmpty!3400))

(assert (= (and b!697963 (not condMapEmpty!3400)) mapNonEmpty!3398))

(assert (= b!697959 b!697963))

(assert (= b!697991 b!697959))

(assert (= b!697954 b!697991))

(assert (= (and b!697988 ((_ is LongMap!844) (v!17827 (underlying!1872 (cache!1203 cacheDown!515))))) b!697954))

(assert (= b!697969 b!697988))

(assert (= (and b!697971 ((_ is HashMap!816) (cache!1203 cacheDown!515))) b!697969))

(assert (= start!66616 b!697971))

(assert (= (and b!697956 condMapEmpty!3399) mapIsEmpty!3398))

(assert (= (and b!697956 (not condMapEmpty!3399)) mapNonEmpty!3399))

(assert (= b!697966 b!697956))

(assert (= b!697985 b!697966))

(assert (= b!697953 b!697985))

(assert (= (and b!697950 ((_ is LongMap!842) (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))) b!697953))

(assert (= b!697957 b!697950))

(assert (= (and b!697958 ((_ is HashMap!814) (cache!1201 cacheFindLongestMatch!74))) b!697957))

(assert (= b!697958 b!697964))

(assert (= start!66616 b!697958))

(declare-fun m!953569 () Bool)

(assert (=> mapNonEmpty!3398 m!953569))

(declare-fun m!953571 () Bool)

(assert (=> b!697960 m!953571))

(declare-fun m!953573 () Bool)

(assert (=> b!697960 m!953573))

(declare-fun m!953575 () Bool)

(assert (=> b!697960 m!953575))

(declare-fun m!953577 () Bool)

(assert (=> b!697960 m!953577))

(declare-fun m!953579 () Bool)

(assert (=> b!697975 m!953579))

(declare-fun m!953581 () Bool)

(assert (=> b!697959 m!953581))

(declare-fun m!953583 () Bool)

(assert (=> b!697959 m!953583))

(declare-fun m!953585 () Bool)

(assert (=> b!697995 m!953585))

(declare-fun m!953587 () Bool)

(assert (=> b!697995 m!953587))

(declare-fun m!953589 () Bool)

(assert (=> mapNonEmpty!3400 m!953589))

(declare-fun m!953591 () Bool)

(assert (=> b!697958 m!953591))

(declare-fun m!953593 () Bool)

(assert (=> b!697965 m!953593))

(declare-fun m!953595 () Bool)

(assert (=> start!66616 m!953595))

(declare-fun m!953597 () Bool)

(assert (=> start!66616 m!953597))

(declare-fun m!953599 () Bool)

(assert (=> start!66616 m!953599))

(declare-fun m!953601 () Bool)

(assert (=> start!66616 m!953601))

(declare-fun m!953603 () Bool)

(assert (=> start!66616 m!953603))

(declare-fun m!953605 () Bool)

(assert (=> start!66616 m!953605))

(declare-fun m!953607 () Bool)

(assert (=> start!66616 m!953607))

(declare-fun m!953609 () Bool)

(assert (=> b!697966 m!953609))

(declare-fun m!953611 () Bool)

(assert (=> b!697966 m!953611))

(declare-fun m!953613 () Bool)

(assert (=> b!697986 m!953613))

(declare-fun m!953615 () Bool)

(assert (=> b!697968 m!953615))

(declare-fun m!953617 () Bool)

(assert (=> b!697987 m!953617))

(assert (=> b!697987 m!953617))

(declare-fun m!953619 () Bool)

(assert (=> b!697987 m!953619))

(declare-fun m!953621 () Bool)

(assert (=> b!697996 m!953621))

(declare-fun m!953623 () Bool)

(assert (=> b!697983 m!953623))

(declare-fun m!953625 () Bool)

(assert (=> mapNonEmpty!3399 m!953625))

(declare-fun m!953627 () Bool)

(assert (=> b!697974 m!953627))

(declare-fun m!953629 () Bool)

(assert (=> b!697974 m!953629))

(declare-fun m!953631 () Bool)

(assert (=> b!697951 m!953631))

(declare-fun m!953633 () Bool)

(assert (=> b!697951 m!953633))

(declare-fun m!953635 () Bool)

(assert (=> b!697951 m!953635))

(declare-fun m!953637 () Bool)

(assert (=> b!697990 m!953637))

(declare-fun m!953639 () Bool)

(assert (=> b!697994 m!953639))

(declare-fun m!953641 () Bool)

(assert (=> b!697982 m!953641))

(declare-fun m!953643 () Bool)

(assert (=> b!697982 m!953643))

(declare-fun m!953645 () Bool)

(assert (=> b!697982 m!953645))

(declare-fun m!953647 () Bool)

(assert (=> b!697967 m!953647))

(declare-fun m!953649 () Bool)

(assert (=> b!697976 m!953649))

(declare-fun m!953651 () Bool)

(assert (=> b!697993 m!953651))

(declare-fun m!953653 () Bool)

(assert (=> b!697978 m!953653))

(declare-fun m!953655 () Bool)

(assert (=> b!697978 m!953655))

(declare-fun m!953657 () Bool)

(assert (=> b!697978 m!953657))

(declare-fun m!953659 () Bool)

(assert (=> b!697955 m!953659))

(declare-fun m!953661 () Bool)

(assert (=> b!697955 m!953661))

(assert (=> b!697955 m!953661))

(declare-fun m!953663 () Bool)

(assert (=> b!697955 m!953663))

(declare-fun m!953665 () Bool)

(assert (=> b!697955 m!953665))

(declare-fun m!953667 () Bool)

(assert (=> b!697955 m!953667))

(declare-fun m!953669 () Bool)

(assert (=> b!697981 m!953669))

(declare-fun m!953671 () Bool)

(assert (=> b!697977 m!953671))

(declare-fun m!953673 () Bool)

(assert (=> b!697961 m!953673))

(declare-fun m!953675 () Bool)

(assert (=> b!697961 m!953675))

(declare-fun m!953677 () Bool)

(assert (=> b!697964 m!953677))

(check-sat b_and!63887 (not b!697995) (not b!697977) (not b!697981) (not b!697974) (not start!66616) (not b!697967) (not b_next!20157) (not b_next!20161) (not b!697992) (not b_next!20151) (not b!697983) (not b!697979) (not mapNonEmpty!3399) b_and!63881 (not b!697966) b_and!63883 (not b!697959) (not b_next!20159) (not b!697956) (not mapNonEmpty!3400) (not b!697965) (not b!697996) (not b!697976) (not b!697958) (not b_next!20153) b_and!63885 (not b!697982) (not b!697975) b_and!63889 (not b!697978) (not b!697994) (not b!697987) (not b!697960) (not b!697968) (not b!697986) (not b_next!20149) b_and!63893 (not b_next!20155) (not b!697955) (not mapNonEmpty!3398) (not b!697964) (not b!697963) (not b!697993) (not b!697990) (not b!697961) b_and!63891 (not b_next!20163) (not b!697951) b_and!63879)
(check-sat (not b_next!20151) b_and!63887 b_and!63881 b_and!63883 (not b_next!20159) b_and!63889 (not b_next!20157) b_and!63879 (not b_next!20161) (not b_next!20153) b_and!63885 (not b_next!20149) b_and!63893 (not b_next!20155) b_and!63891 (not b_next!20163))
(get-model)

(declare-fun d!233492 () Bool)

(declare-fun res!315668 () Bool)

(declare-fun e!440214 () Bool)

(assert (=> d!233492 (=> (not res!315668) (not e!440214))))

(assert (=> d!233492 (= res!315668 ((_ is HashMap!814) (cache!1201 cacheFindLongestMatch!74)))))

(assert (=> d!233492 (= (inv!9834 cacheFindLongestMatch!74) e!440214)))

(declare-fun b!697999 () Bool)

(declare-fun validCacheMapFindLongestMatch!13 (MutableMap!814 BalanceConc!5400) Bool)

(assert (=> b!697999 (= e!440214 (validCacheMapFindLongestMatch!13 (cache!1201 cacheFindLongestMatch!74) (totalInput!1833 cacheFindLongestMatch!74)))))

(assert (= (and d!233492 res!315668) b!697999))

(declare-fun m!953679 () Bool)

(assert (=> b!697999 m!953679))

(assert (=> start!66616 d!233492))

(declare-fun d!233494 () Bool)

(declare-fun isBalanced!708 (Conc!2695) Bool)

(assert (=> d!233494 (= (inv!9831 acc!372) (isBalanced!708 (c!121981 acc!372)))))

(declare-fun bs!138021 () Bool)

(assert (= bs!138021 d!233494))

(declare-fun m!953681 () Bool)

(assert (=> bs!138021 m!953681))

(assert (=> start!66616 d!233494))

(declare-fun d!233496 () Bool)

(declare-fun isBalanced!709 (Conc!2694) Bool)

(assert (=> d!233496 (= (inv!9828 input!870) (isBalanced!709 (c!121980 input!870)))))

(declare-fun bs!138022 () Bool)

(assert (= bs!138022 d!233496))

(declare-fun m!953683 () Bool)

(assert (=> bs!138022 m!953683))

(assert (=> start!66616 d!233496))

(declare-fun d!233498 () Bool)

(declare-fun res!315671 () Bool)

(declare-fun e!440217 () Bool)

(assert (=> d!233498 (=> (not res!315671) (not e!440217))))

(assert (=> d!233498 (= res!315671 ((_ is HashMap!816) (cache!1203 cacheDown!515)))))

(assert (=> d!233498 (= (inv!9833 cacheDown!515) e!440217)))

(declare-fun b!698002 () Bool)

(declare-fun validCacheMapDown!67 (MutableMap!816) Bool)

(assert (=> b!698002 (= e!440217 (validCacheMapDown!67 (cache!1203 cacheDown!515)))))

(assert (= (and d!233498 res!315671) b!698002))

(declare-fun m!953685 () Bool)

(assert (=> b!698002 m!953685))

(assert (=> start!66616 d!233498))

(declare-fun d!233500 () Bool)

(assert (=> d!233500 (= (inv!9828 treated!50) (isBalanced!709 (c!121980 treated!50)))))

(declare-fun bs!138023 () Bool)

(assert (= bs!138023 d!233500))

(declare-fun m!953687 () Bool)

(assert (=> bs!138023 m!953687))

(assert (=> start!66616 d!233500))

(declare-fun d!233502 () Bool)

(declare-fun res!315674 () Bool)

(declare-fun e!440220 () Bool)

(assert (=> d!233502 (=> (not res!315674) (not e!440220))))

(assert (=> d!233502 (= res!315674 ((_ is HashMap!815) (cache!1202 cacheUp!502)))))

(assert (=> d!233502 (= (inv!9832 cacheUp!502) e!440220)))

(declare-fun b!698005 () Bool)

(declare-fun validCacheMapUp!67 (MutableMap!815) Bool)

(assert (=> b!698005 (= e!440220 (validCacheMapUp!67 (cache!1202 cacheUp!502)))))

(assert (= (and d!233502 res!315674) b!698005))

(declare-fun m!953689 () Bool)

(assert (=> b!698005 m!953689))

(assert (=> start!66616 d!233502))

(declare-fun d!233504 () Bool)

(assert (=> d!233504 (= (inv!9828 totalInput!378) (isBalanced!709 (c!121980 totalInput!378)))))

(declare-fun bs!138024 () Bool)

(assert (= bs!138024 d!233504))

(declare-fun m!953691 () Bool)

(assert (=> bs!138024 m!953691))

(assert (=> start!66616 d!233504))

(declare-fun d!233506 () Bool)

(declare-fun res!315677 () Bool)

(declare-fun e!440223 () Bool)

(assert (=> d!233506 (=> (not res!315677) (not e!440223))))

(declare-fun rulesValid!534 (LexerInterface!1341 List!7714) Bool)

(assert (=> d!233506 (= res!315677 (rulesValid!534 thiss!12529 rules!1486))))

(assert (=> d!233506 (= (rulesInvariant!1268 thiss!12529 rules!1486) e!440223)))

(declare-fun b!698008 () Bool)

(declare-datatypes ((List!7715 0))(
  ( (Nil!7701) (Cons!7701 (h!13102 String!9590) (t!87538 List!7715)) )
))
(declare-fun noDuplicateTag!534 (LexerInterface!1341 List!7714 List!7715) Bool)

(assert (=> b!698008 (= e!440223 (noDuplicateTag!534 thiss!12529 rules!1486 Nil!7701))))

(assert (= (and d!233506 res!315677) b!698008))

(declare-fun m!953693 () Bool)

(assert (=> d!233506 m!953693))

(declare-fun m!953695 () Bool)

(assert (=> b!698008 m!953695))

(assert (=> b!697990 d!233506))

(declare-fun d!233508 () Bool)

(declare-fun e!440226 () Bool)

(assert (=> d!233508 e!440226))

(declare-fun res!315680 () Bool)

(assert (=> d!233508 (=> res!315680 e!440226)))

(declare-fun lt!286375 () Bool)

(assert (=> d!233508 (= res!315680 (not lt!286375))))

(declare-fun drop!361 (List!7709 Int) List!7709)

(declare-fun size!6275 (List!7709) Int)

(assert (=> d!233508 (= lt!286375 (= lt!286363 (drop!361 lt!286359 (- (size!6275 lt!286359) (size!6275 lt!286363)))))))

(assert (=> d!233508 (= (isSuffix!145 lt!286363 lt!286359) lt!286375)))

(declare-fun b!698011 () Bool)

(assert (=> b!698011 (= e!440226 (>= (size!6275 lt!286359) (size!6275 lt!286363)))))

(assert (= (and d!233508 (not res!315680)) b!698011))

(declare-fun m!953697 () Bool)

(assert (=> d!233508 m!953697))

(declare-fun m!953699 () Bool)

(assert (=> d!233508 m!953699))

(declare-fun m!953701 () Bool)

(assert (=> d!233508 m!953701))

(assert (=> b!698011 m!953697))

(assert (=> b!698011 m!953699))

(assert (=> b!697951 d!233508))

(declare-fun d!233510 () Bool)

(declare-fun e!440227 () Bool)

(assert (=> d!233510 e!440227))

(declare-fun res!315681 () Bool)

(assert (=> d!233510 (=> res!315681 e!440227)))

(declare-fun lt!286376 () Bool)

(assert (=> d!233510 (= res!315681 (not lt!286376))))

(assert (=> d!233510 (= lt!286376 (= lt!286363 (drop!361 lt!286360 (- (size!6275 lt!286360) (size!6275 lt!286363)))))))

(assert (=> d!233510 (= (isSuffix!145 lt!286363 lt!286360) lt!286376)))

(declare-fun b!698012 () Bool)

(assert (=> b!698012 (= e!440227 (>= (size!6275 lt!286360) (size!6275 lt!286363)))))

(assert (= (and d!233510 (not res!315681)) b!698012))

(declare-fun m!953703 () Bool)

(assert (=> d!233510 m!953703))

(assert (=> d!233510 m!953699))

(declare-fun m!953705 () Bool)

(assert (=> d!233510 m!953705))

(assert (=> b!698012 m!953703))

(assert (=> b!698012 m!953699))

(assert (=> b!697951 d!233510))

(declare-fun d!233512 () Bool)

(assert (=> d!233512 (isSuffix!145 lt!286363 (++!2001 lt!286361 lt!286363))))

(declare-fun lt!286379 () Unit!12707)

(declare-fun choose!4702 (List!7709 List!7709) Unit!12707)

(assert (=> d!233512 (= lt!286379 (choose!4702 lt!286361 lt!286363))))

(assert (=> d!233512 (= (lemmaConcatTwoListThenFSndIsSuffix!145 lt!286361 lt!286363) lt!286379)))

(declare-fun bs!138025 () Bool)

(assert (= bs!138025 d!233512))

(assert (=> bs!138025 m!953571))

(assert (=> bs!138025 m!953571))

(declare-fun m!953707 () Bool)

(assert (=> bs!138025 m!953707))

(declare-fun m!953709 () Bool)

(assert (=> bs!138025 m!953709))

(assert (=> b!697951 d!233512))

(declare-fun d!233514 () Bool)

(declare-fun list!3202 (Conc!2694) List!7709)

(assert (=> d!233514 (= (list!3201 (_2!4574 lt!286368)) (list!3202 (c!121980 (_2!4574 lt!286368))))))

(declare-fun bs!138026 () Bool)

(assert (= bs!138026 d!233514))

(declare-fun m!953711 () Bool)

(assert (=> bs!138026 m!953711))

(assert (=> b!697974 d!233514))

(declare-fun d!233516 () Bool)

(assert (=> d!233516 (= (list!3201 (_2!4574 lt!286366)) (list!3202 (c!121980 (_2!4574 lt!286366))))))

(declare-fun bs!138027 () Bool)

(assert (= bs!138027 d!233516))

(declare-fun m!953713 () Bool)

(assert (=> bs!138027 m!953713))

(assert (=> b!697974 d!233516))

(declare-fun d!233518 () Bool)

(assert (=> d!233518 (= (valid!713 cacheUp!502) (validCacheMapUp!67 (cache!1202 cacheUp!502)))))

(declare-fun bs!138028 () Bool)

(assert (= bs!138028 d!233518))

(assert (=> bs!138028 m!953689))

(assert (=> b!697975 d!233518))

(declare-fun d!233520 () Bool)

(declare-fun e!440230 () Bool)

(assert (=> d!233520 e!440230))

(declare-fun res!315691 () Bool)

(assert (=> d!233520 (=> (not res!315691) (not e!440230))))

(declare-fun appendAssocInst!139 (Conc!2695 Conc!2695) Bool)

(assert (=> d!233520 (= res!315691 (appendAssocInst!139 (c!121981 acc!372) (c!121981 (_1!4574 lt!286366))))))

(declare-fun lt!286382 () BalanceConc!5402)

(declare-fun ++!2002 (Conc!2695 Conc!2695) Conc!2695)

(assert (=> d!233520 (= lt!286382 (BalanceConc!5403 (++!2002 (c!121981 acc!372) (c!121981 (_1!4574 lt!286366)))))))

(assert (=> d!233520 (= (++!2000 acc!372 (_1!4574 lt!286366)) lt!286382)))

(declare-fun b!698022 () Bool)

(declare-fun res!315692 () Bool)

(assert (=> b!698022 (=> (not res!315692) (not e!440230))))

(declare-fun height!325 (Conc!2695) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!698022 (= res!315692 (<= (height!325 (++!2002 (c!121981 acc!372) (c!121981 (_1!4574 lt!286366)))) (+ (max!0 (height!325 (c!121981 acc!372)) (height!325 (c!121981 (_1!4574 lt!286366)))) 1)))))

(declare-fun b!698024 () Bool)

(declare-fun ++!2003 (List!7713 List!7713) List!7713)

(assert (=> b!698024 (= e!440230 (= (list!3200 lt!286382) (++!2003 (list!3200 acc!372) (list!3200 (_1!4574 lt!286366)))))))

(declare-fun b!698021 () Bool)

(declare-fun res!315690 () Bool)

(assert (=> b!698021 (=> (not res!315690) (not e!440230))))

(assert (=> b!698021 (= res!315690 (isBalanced!708 (++!2002 (c!121981 acc!372) (c!121981 (_1!4574 lt!286366)))))))

(declare-fun b!698023 () Bool)

(declare-fun res!315693 () Bool)

(assert (=> b!698023 (=> (not res!315693) (not e!440230))))

(assert (=> b!698023 (= res!315693 (>= (height!325 (++!2002 (c!121981 acc!372) (c!121981 (_1!4574 lt!286366)))) (max!0 (height!325 (c!121981 acc!372)) (height!325 (c!121981 (_1!4574 lt!286366))))))))

(assert (= (and d!233520 res!315691) b!698021))

(assert (= (and b!698021 res!315690) b!698022))

(assert (= (and b!698022 res!315692) b!698023))

(assert (= (and b!698023 res!315693) b!698024))

(declare-fun m!953715 () Bool)

(assert (=> b!698021 m!953715))

(assert (=> b!698021 m!953715))

(declare-fun m!953717 () Bool)

(assert (=> b!698021 m!953717))

(declare-fun m!953719 () Bool)

(assert (=> b!698024 m!953719))

(assert (=> b!698024 m!953643))

(declare-fun m!953721 () Bool)

(assert (=> b!698024 m!953721))

(assert (=> b!698024 m!953643))

(assert (=> b!698024 m!953721))

(declare-fun m!953723 () Bool)

(assert (=> b!698024 m!953723))

(declare-fun m!953725 () Bool)

(assert (=> d!233520 m!953725))

(assert (=> d!233520 m!953715))

(declare-fun m!953727 () Bool)

(assert (=> b!698023 m!953727))

(assert (=> b!698023 m!953727))

(declare-fun m!953729 () Bool)

(assert (=> b!698023 m!953729))

(declare-fun m!953731 () Bool)

(assert (=> b!698023 m!953731))

(assert (=> b!698023 m!953715))

(declare-fun m!953733 () Bool)

(assert (=> b!698023 m!953733))

(assert (=> b!698023 m!953715))

(assert (=> b!698023 m!953729))

(assert (=> b!698022 m!953727))

(assert (=> b!698022 m!953727))

(assert (=> b!698022 m!953729))

(assert (=> b!698022 m!953731))

(assert (=> b!698022 m!953715))

(assert (=> b!698022 m!953733))

(assert (=> b!698022 m!953715))

(assert (=> b!698022 m!953729))

(assert (=> b!697955 d!233520))

(declare-fun d!233522 () Bool)

(declare-fun list!3203 (Conc!2695) List!7713)

(assert (=> d!233522 (= (list!3200 (_1!4574 lt!286368)) (list!3203 (c!121981 (_1!4574 lt!286368))))))

(declare-fun bs!138029 () Bool)

(assert (= bs!138029 d!233522))

(declare-fun m!953735 () Bool)

(assert (=> bs!138029 m!953735))

(assert (=> b!697955 d!233522))

(declare-fun b!698039 () Bool)

(declare-fun e!440241 () Bool)

(declare-fun lt!286390 () tuple2!8224)

(assert (=> b!698039 (= e!440241 (= (list!3201 (_2!4574 lt!286390)) (list!3201 input!870)))))

(declare-fun b!698040 () Bool)

(declare-fun e!440240 () Bool)

(declare-datatypes ((tuple2!8226 0))(
  ( (tuple2!8227 (_1!4575 List!7713) (_2!4575 List!7709)) )
))
(declare-fun lexList!329 (LexerInterface!1341 List!7714 List!7709) tuple2!8226)

(assert (=> b!698040 (= e!440240 (= (list!3201 (_2!4574 lt!286390)) (_2!4575 (lexList!329 thiss!12529 rules!1486 (list!3201 input!870)))))))

(declare-fun b!698041 () Bool)

(declare-fun res!315702 () Bool)

(assert (=> b!698041 (=> (not res!315702) (not e!440240))))

(assert (=> b!698041 (= res!315702 (= (list!3200 (_1!4574 lt!286390)) (_1!4575 (lexList!329 thiss!12529 rules!1486 (list!3201 input!870)))))))

(declare-fun b!698042 () Bool)

(declare-fun e!440239 () tuple2!8224)

(declare-fun lt!286389 () tuple2!8224)

(declare-fun lt!286391 () Option!1724)

(declare-fun prepend!265 (BalanceConc!5402 Token!2754) BalanceConc!5402)

(assert (=> b!698042 (= e!440239 (tuple2!8225 (prepend!265 (_1!4574 lt!286389) (_1!4570 (v!17823 lt!286391))) (_2!4574 lt!286389)))))

(assert (=> b!698042 (= lt!286389 (lexRec!181 thiss!12529 rules!1486 (_2!4570 (v!17823 lt!286391))))))

(declare-fun b!698043 () Bool)

(declare-fun e!440242 () Bool)

(declare-fun isEmpty!4921 (BalanceConc!5402) Bool)

(assert (=> b!698043 (= e!440242 (not (isEmpty!4921 (_1!4574 lt!286390))))))

(declare-fun d!233524 () Bool)

(assert (=> d!233524 e!440240))

(declare-fun res!315700 () Bool)

(assert (=> d!233524 (=> (not res!315700) (not e!440240))))

(assert (=> d!233524 (= res!315700 e!440241)))

(declare-fun c!121990 () Bool)

(declare-fun size!6276 (BalanceConc!5402) Int)

(assert (=> d!233524 (= c!121990 (> (size!6276 (_1!4574 lt!286390)) 0))))

(assert (=> d!233524 (= lt!286390 e!440239)))

(declare-fun c!121991 () Bool)

(assert (=> d!233524 (= c!121991 ((_ is Some!1723) lt!286391))))

(declare-fun maxPrefixZipperSequence!463 (LexerInterface!1341 List!7714 BalanceConc!5400) Option!1724)

(assert (=> d!233524 (= lt!286391 (maxPrefixZipperSequence!463 thiss!12529 rules!1486 input!870))))

(assert (=> d!233524 (= (lexRec!181 thiss!12529 rules!1486 input!870) lt!286390)))

(declare-fun b!698044 () Bool)

(assert (=> b!698044 (= e!440241 e!440242)))

(declare-fun res!315701 () Bool)

(declare-fun size!6277 (BalanceConc!5400) Int)

(assert (=> b!698044 (= res!315701 (< (size!6277 (_2!4574 lt!286390)) (size!6277 input!870)))))

(assert (=> b!698044 (=> (not res!315701) (not e!440242))))

(declare-fun b!698045 () Bool)

(assert (=> b!698045 (= e!440239 (tuple2!8225 (BalanceConc!5403 Empty!2695) input!870))))

(assert (= (and d!233524 c!121991) b!698042))

(assert (= (and d!233524 (not c!121991)) b!698045))

(assert (= (and d!233524 c!121990) b!698044))

(assert (= (and d!233524 (not c!121990)) b!698039))

(assert (= (and b!698044 res!315701) b!698043))

(assert (= (and d!233524 res!315700) b!698041))

(assert (= (and b!698041 res!315702) b!698040))

(declare-fun m!953737 () Bool)

(assert (=> b!698042 m!953737))

(declare-fun m!953739 () Bool)

(assert (=> b!698042 m!953739))

(declare-fun m!953741 () Bool)

(assert (=> b!698043 m!953741))

(declare-fun m!953743 () Bool)

(assert (=> b!698039 m!953743))

(assert (=> b!698039 m!953575))

(declare-fun m!953745 () Bool)

(assert (=> d!233524 m!953745))

(declare-fun m!953747 () Bool)

(assert (=> d!233524 m!953747))

(declare-fun m!953749 () Bool)

(assert (=> b!698044 m!953749))

(declare-fun m!953751 () Bool)

(assert (=> b!698044 m!953751))

(declare-fun m!953753 () Bool)

(assert (=> b!698041 m!953753))

(assert (=> b!698041 m!953575))

(assert (=> b!698041 m!953575))

(declare-fun m!953755 () Bool)

(assert (=> b!698041 m!953755))

(assert (=> b!698040 m!953743))

(assert (=> b!698040 m!953575))

(assert (=> b!698040 m!953575))

(assert (=> b!698040 m!953755))

(assert (=> b!697955 d!233524))

(declare-fun b!698046 () Bool)

(declare-fun e!440245 () Bool)

(declare-fun lt!286393 () tuple2!8224)

(assert (=> b!698046 (= e!440245 (= (list!3201 (_2!4574 lt!286393)) (list!3201 totalInput!378)))))

(declare-fun e!440244 () Bool)

(declare-fun b!698047 () Bool)

(assert (=> b!698047 (= e!440244 (= (list!3201 (_2!4574 lt!286393)) (_2!4575 (lexList!329 thiss!12529 rules!1486 (list!3201 totalInput!378)))))))

(declare-fun b!698048 () Bool)

(declare-fun res!315705 () Bool)

(assert (=> b!698048 (=> (not res!315705) (not e!440244))))

(assert (=> b!698048 (= res!315705 (= (list!3200 (_1!4574 lt!286393)) (_1!4575 (lexList!329 thiss!12529 rules!1486 (list!3201 totalInput!378)))))))

(declare-fun b!698049 () Bool)

(declare-fun e!440243 () tuple2!8224)

(declare-fun lt!286392 () tuple2!8224)

(declare-fun lt!286394 () Option!1724)

(assert (=> b!698049 (= e!440243 (tuple2!8225 (prepend!265 (_1!4574 lt!286392) (_1!4570 (v!17823 lt!286394))) (_2!4574 lt!286392)))))

(assert (=> b!698049 (= lt!286392 (lexRec!181 thiss!12529 rules!1486 (_2!4570 (v!17823 lt!286394))))))

(declare-fun b!698050 () Bool)

(declare-fun e!440246 () Bool)

(assert (=> b!698050 (= e!440246 (not (isEmpty!4921 (_1!4574 lt!286393))))))

(declare-fun d!233526 () Bool)

(assert (=> d!233526 e!440244))

(declare-fun res!315703 () Bool)

(assert (=> d!233526 (=> (not res!315703) (not e!440244))))

(assert (=> d!233526 (= res!315703 e!440245)))

(declare-fun c!121992 () Bool)

(assert (=> d!233526 (= c!121992 (> (size!6276 (_1!4574 lt!286393)) 0))))

(assert (=> d!233526 (= lt!286393 e!440243)))

(declare-fun c!121993 () Bool)

(assert (=> d!233526 (= c!121993 ((_ is Some!1723) lt!286394))))

(assert (=> d!233526 (= lt!286394 (maxPrefixZipperSequence!463 thiss!12529 rules!1486 totalInput!378))))

(assert (=> d!233526 (= (lexRec!181 thiss!12529 rules!1486 totalInput!378) lt!286393)))

(declare-fun b!698051 () Bool)

(assert (=> b!698051 (= e!440245 e!440246)))

(declare-fun res!315704 () Bool)

(assert (=> b!698051 (= res!315704 (< (size!6277 (_2!4574 lt!286393)) (size!6277 totalInput!378)))))

(assert (=> b!698051 (=> (not res!315704) (not e!440246))))

(declare-fun b!698052 () Bool)

(assert (=> b!698052 (= e!440243 (tuple2!8225 (BalanceConc!5403 Empty!2695) totalInput!378))))

(assert (= (and d!233526 c!121993) b!698049))

(assert (= (and d!233526 (not c!121993)) b!698052))

(assert (= (and d!233526 c!121992) b!698051))

(assert (= (and d!233526 (not c!121992)) b!698046))

(assert (= (and b!698051 res!315704) b!698050))

(assert (= (and d!233526 res!315703) b!698048))

(assert (= (and b!698048 res!315705) b!698047))

(declare-fun m!953757 () Bool)

(assert (=> b!698049 m!953757))

(declare-fun m!953759 () Bool)

(assert (=> b!698049 m!953759))

(declare-fun m!953761 () Bool)

(assert (=> b!698050 m!953761))

(declare-fun m!953763 () Bool)

(assert (=> b!698046 m!953763))

(assert (=> b!698046 m!953573))

(declare-fun m!953765 () Bool)

(assert (=> d!233526 m!953765))

(declare-fun m!953767 () Bool)

(assert (=> d!233526 m!953767))

(declare-fun m!953769 () Bool)

(assert (=> b!698051 m!953769))

(declare-fun m!953771 () Bool)

(assert (=> b!698051 m!953771))

(declare-fun m!953773 () Bool)

(assert (=> b!698048 m!953773))

(assert (=> b!698048 m!953573))

(assert (=> b!698048 m!953573))

(declare-fun m!953775 () Bool)

(assert (=> b!698048 m!953775))

(assert (=> b!698047 m!953763))

(assert (=> b!698047 m!953573))

(assert (=> b!698047 m!953573))

(assert (=> b!698047 m!953775))

(assert (=> b!697955 d!233526))

(declare-fun d!233528 () Bool)

(assert (=> d!233528 (= (list!3200 (++!2000 acc!372 (_1!4574 lt!286366))) (list!3203 (c!121981 (++!2000 acc!372 (_1!4574 lt!286366)))))))

(declare-fun bs!138030 () Bool)

(assert (= bs!138030 d!233528))

(declare-fun m!953777 () Bool)

(assert (=> bs!138030 m!953777))

(assert (=> b!697955 d!233528))

(declare-fun d!233530 () Bool)

(assert (=> d!233530 (= (valid!714 cacheDown!515) (validCacheMapDown!67 (cache!1203 cacheDown!515)))))

(declare-fun bs!138031 () Bool)

(assert (= bs!138031 d!233530))

(assert (=> bs!138031 m!953685))

(assert (=> b!697976 d!233530))

(declare-fun d!233532 () Bool)

(declare-fun c!121996 () Bool)

(assert (=> d!233532 (= c!121996 ((_ is Node!2694) (c!121980 treated!50)))))

(declare-fun e!440251 () Bool)

(assert (=> d!233532 (= (inv!9830 (c!121980 treated!50)) e!440251)))

(declare-fun b!698059 () Bool)

(declare-fun inv!9836 (Conc!2694) Bool)

(assert (=> b!698059 (= e!440251 (inv!9836 (c!121980 treated!50)))))

(declare-fun b!698060 () Bool)

(declare-fun e!440252 () Bool)

(assert (=> b!698060 (= e!440251 e!440252)))

(declare-fun res!315708 () Bool)

(assert (=> b!698060 (= res!315708 (not ((_ is Leaf!3982) (c!121980 treated!50))))))

(assert (=> b!698060 (=> res!315708 e!440252)))

(declare-fun b!698061 () Bool)

(declare-fun inv!9837 (Conc!2694) Bool)

(assert (=> b!698061 (= e!440252 (inv!9837 (c!121980 treated!50)))))

(assert (= (and d!233532 c!121996) b!698059))

(assert (= (and d!233532 (not c!121996)) b!698060))

(assert (= (and b!698060 (not res!315708)) b!698061))

(declare-fun m!953779 () Bool)

(assert (=> b!698059 m!953779))

(declare-fun m!953781 () Bool)

(assert (=> b!698061 m!953781))

(assert (=> b!697977 d!233532))

(declare-fun d!233534 () Bool)

(assert (=> d!233534 (= (valid!714 (_3!461 lt!286367)) (validCacheMapDown!67 (cache!1203 (_3!461 lt!286367))))))

(declare-fun bs!138032 () Bool)

(assert (= bs!138032 d!233534))

(declare-fun m!953783 () Bool)

(assert (=> bs!138032 m!953783))

(assert (=> b!697993 d!233534))

(declare-fun d!233536 () Bool)

(assert (=> d!233536 (= (array_inv!1031 (_keys!1138 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502))))))) (bvsge (size!6270 (_keys!1138 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!697995 d!233536))

(declare-fun d!233538 () Bool)

(assert (=> d!233538 (= (array_inv!1034 (_values!1123 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502))))))) (bvsge (size!6274 (_values!1123 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!697995 d!233538))

(declare-fun d!233540 () Bool)

(assert (=> d!233540 (= (inv!9828 (totalInput!1833 cacheFindLongestMatch!74)) (isBalanced!709 (c!121980 (totalInput!1833 cacheFindLongestMatch!74))))))

(declare-fun bs!138033 () Bool)

(assert (= bs!138033 d!233540))

(declare-fun m!953785 () Bool)

(assert (=> bs!138033 m!953785))

(assert (=> b!697958 d!233540))

(declare-fun d!233542 () Bool)

(declare-fun c!121999 () Bool)

(assert (=> d!233542 (= c!121999 ((_ is Node!2695) (c!121981 acc!372)))))

(declare-fun e!440257 () Bool)

(assert (=> d!233542 (= (inv!9835 (c!121981 acc!372)) e!440257)))

(declare-fun b!698068 () Bool)

(declare-fun inv!9838 (Conc!2695) Bool)

(assert (=> b!698068 (= e!440257 (inv!9838 (c!121981 acc!372)))))

(declare-fun b!698069 () Bool)

(declare-fun e!440258 () Bool)

(assert (=> b!698069 (= e!440257 e!440258)))

(declare-fun res!315711 () Bool)

(assert (=> b!698069 (= res!315711 (not ((_ is Leaf!3983) (c!121981 acc!372))))))

(assert (=> b!698069 (=> res!315711 e!440258)))

(declare-fun b!698070 () Bool)

(declare-fun inv!9839 (Conc!2695) Bool)

(assert (=> b!698070 (= e!440258 (inv!9839 (c!121981 acc!372)))))

(assert (= (and d!233542 c!121999) b!698068))

(assert (= (and d!233542 (not c!121999)) b!698069))

(assert (= (and b!698069 (not res!315711)) b!698070))

(declare-fun m!953787 () Bool)

(assert (=> b!698068 m!953787))

(declare-fun m!953789 () Bool)

(assert (=> b!698070 m!953789))

(assert (=> b!697994 d!233542))

(declare-fun call!43672 () tuple4!156)

(declare-fun bm!43667 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!7 (LexerInterface!1341 Rule!2856 BalanceConc!5400 BalanceConc!5400 CacheUp!426 CacheDown!436 CacheFindLongestMatch!92) tuple4!156)

(assert (=> bm!43667 (= call!43672 (maxPrefixOneRuleZipperSequenceV2Mem!7 thiss!12529 (h!13101 rules!1486) input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!698083 () Bool)

(declare-datatypes ((tuple4!158 0))(
  ( (tuple4!159 (_1!4576 Option!1724) (_2!4576 CacheUp!426) (_3!462 CacheFindLongestMatch!92) (_4!79 CacheDown!436)) )
))
(declare-fun e!440264 () tuple4!158)

(declare-fun lt!286420 () tuple4!156)

(assert (=> b!698083 (= e!440264 (tuple4!159 (_1!4573 lt!286420) (_2!4573 lt!286420) (_4!78 lt!286420) (_3!461 lt!286420)))))

(assert (=> b!698083 (= lt!286420 call!43672)))

(declare-fun b!698084 () Bool)

(declare-fun res!315721 () Bool)

(declare-fun e!440263 () Bool)

(assert (=> b!698084 (=> (not res!315721) (not e!440263))))

(declare-fun lt!286415 () tuple4!156)

(assert (=> b!698084 (= res!315721 (valid!712 (_4!78 lt!286415)))))

(declare-fun b!698085 () Bool)

(assert (=> b!698085 (= e!440263 (= (totalInput!1833 (_4!78 lt!286415)) totalInput!378))))

(declare-fun b!698086 () Bool)

(declare-fun res!315723 () Bool)

(assert (=> b!698086 (=> (not res!315723) (not e!440263))))

(assert (=> b!698086 (= res!315723 (valid!713 (_2!4573 lt!286415)))))

(declare-fun b!698087 () Bool)

(declare-fun lt!286417 () tuple4!156)

(declare-fun lt!286416 () tuple4!156)

(assert (=> b!698087 (= e!440264 (tuple4!159 (ite (and ((_ is None!1723) (_1!4573 lt!286417)) ((_ is None!1723) (_1!4573 lt!286416))) None!1723 (ite ((_ is None!1723) (_1!4573 lt!286416)) (_1!4573 lt!286417) (ite ((_ is None!1723) (_1!4573 lt!286417)) (_1!4573 lt!286416) (ite (>= (size!6273 (_1!4570 (v!17823 (_1!4573 lt!286417)))) (size!6273 (_1!4570 (v!17823 (_1!4573 lt!286416))))) (_1!4573 lt!286417) (_1!4573 lt!286416))))) (_2!4573 lt!286416) (_4!78 lt!286416) (_3!461 lt!286416)))))

(assert (=> b!698087 (= lt!286417 call!43672)))

(assert (=> b!698087 (= lt!286416 (maxPrefixZipperSequenceV2Mem!14 thiss!12529 (t!87537 rules!1486) input!870 totalInput!378 (_2!4573 lt!286417) (_3!461 lt!286417) (_4!78 lt!286417)))))

(declare-fun d!233544 () Bool)

(assert (=> d!233544 e!440263))

(declare-fun res!315720 () Bool)

(assert (=> d!233544 (=> (not res!315720) (not e!440263))))

(declare-fun maxPrefixZipperSequenceV2!133 (LexerInterface!1341 List!7714 BalanceConc!5400 BalanceConc!5400) Option!1724)

(assert (=> d!233544 (= res!315720 (= (_1!4573 lt!286415) (maxPrefixZipperSequenceV2!133 thiss!12529 rules!1486 input!870 totalInput!378)))))

(declare-fun lt!286414 () tuple4!158)

(assert (=> d!233544 (= lt!286415 (tuple4!157 (_1!4576 lt!286414) (_2!4576 lt!286414) (_4!79 lt!286414) (_3!462 lt!286414)))))

(assert (=> d!233544 (= lt!286414 e!440264)))

(declare-fun c!122002 () Bool)

(assert (=> d!233544 (= c!122002 (and ((_ is Cons!7700) rules!1486) ((_ is Nil!7700) (t!87537 rules!1486))))))

(declare-fun lt!286421 () Unit!12707)

(declare-fun lt!286413 () Unit!12707)

(assert (=> d!233544 (= lt!286421 lt!286413)))

(declare-fun lt!286418 () List!7709)

(declare-fun lt!286419 () List!7709)

(declare-fun isPrefix!922 (List!7709 List!7709) Bool)

(assert (=> d!233544 (isPrefix!922 lt!286418 lt!286419)))

(declare-fun lemmaIsPrefixRefl!633 (List!7709 List!7709) Unit!12707)

(assert (=> d!233544 (= lt!286413 (lemmaIsPrefixRefl!633 lt!286418 lt!286419))))

(assert (=> d!233544 (= lt!286419 (list!3201 input!870))))

(assert (=> d!233544 (= lt!286418 (list!3201 input!870))))

(assert (=> d!233544 (rulesValidInductive!531 thiss!12529 rules!1486)))

(assert (=> d!233544 (= (maxPrefixZipperSequenceV2Mem!14 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74) lt!286415)))

(declare-fun b!698088 () Bool)

(declare-fun res!315722 () Bool)

(assert (=> b!698088 (=> (not res!315722) (not e!440263))))

(assert (=> b!698088 (= res!315722 (valid!714 (_3!461 lt!286415)))))

(assert (= (and d!233544 c!122002) b!698083))

(assert (= (and d!233544 (not c!122002)) b!698087))

(assert (= (or b!698083 b!698087) bm!43667))

(assert (= (and d!233544 res!315720) b!698086))

(assert (= (and b!698086 res!315723) b!698088))

(assert (= (and b!698088 res!315722) b!698084))

(assert (= (and b!698084 res!315721) b!698085))

(declare-fun m!953791 () Bool)

(assert (=> b!698086 m!953791))

(declare-fun m!953793 () Bool)

(assert (=> b!698084 m!953793))

(declare-fun m!953795 () Bool)

(assert (=> b!698088 m!953795))

(declare-fun m!953797 () Bool)

(assert (=> d!233544 m!953797))

(assert (=> d!233544 m!953653))

(assert (=> d!233544 m!953575))

(declare-fun m!953799 () Bool)

(assert (=> d!233544 m!953799))

(declare-fun m!953801 () Bool)

(assert (=> d!233544 m!953801))

(declare-fun m!953803 () Bool)

(assert (=> b!698087 m!953803))

(declare-fun m!953805 () Bool)

(assert (=> bm!43667 m!953805))

(assert (=> b!697996 d!233544))

(declare-fun d!233546 () Bool)

(assert (=> d!233546 (= (array_inv!1031 (_keys!1137 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515))))))) (bvsge (size!6270 (_keys!1137 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!697959 d!233546))

(declare-fun d!233548 () Bool)

(assert (=> d!233548 (= (array_inv!1032 (_values!1122 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515))))))) (bvsge (size!6272 (_values!1122 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!697959 d!233548))

(declare-fun d!233550 () Bool)

(assert (=> d!233550 true))

(declare-fun lt!286424 () Bool)

(declare-fun lambda!21607 () Int)

(declare-fun forall!1966 (List!7714 Int) Bool)

(assert (=> d!233550 (= lt!286424 (forall!1966 rules!1486 lambda!21607))))

(declare-fun e!440270 () Bool)

(assert (=> d!233550 (= lt!286424 e!440270)))

(declare-fun res!315729 () Bool)

(assert (=> d!233550 (=> res!315729 e!440270)))

(assert (=> d!233550 (= res!315729 (not ((_ is Cons!7700) rules!1486)))))

(assert (=> d!233550 (= (rulesValidInductive!531 thiss!12529 rules!1486) lt!286424)))

(declare-fun b!698093 () Bool)

(declare-fun e!440269 () Bool)

(assert (=> b!698093 (= e!440270 e!440269)))

(declare-fun res!315728 () Bool)

(assert (=> b!698093 (=> (not res!315728) (not e!440269))))

(declare-fun ruleValid!468 (LexerInterface!1341 Rule!2856) Bool)

(assert (=> b!698093 (= res!315728 (ruleValid!468 thiss!12529 (h!13101 rules!1486)))))

(declare-fun b!698094 () Bool)

(assert (=> b!698094 (= e!440269 (rulesValidInductive!531 thiss!12529 (t!87537 rules!1486)))))

(assert (= (and d!233550 (not res!315729)) b!698093))

(assert (= (and b!698093 res!315728) b!698094))

(declare-fun m!953807 () Bool)

(assert (=> d!233550 m!953807))

(declare-fun m!953809 () Bool)

(assert (=> b!698093 m!953809))

(declare-fun m!953811 () Bool)

(assert (=> b!698094 m!953811))

(assert (=> b!697978 d!233550))

(declare-fun call!43673 () tuple4!156)

(declare-fun bm!43668 () Bool)

(assert (=> bm!43668 (= call!43673 (maxPrefixOneRuleZipperSequenceV2Mem!7 thiss!12529 (h!13101 rules!1486) input!870 totalInput!378 (_2!4573 lt!286367) (_3!461 lt!286367) (_4!78 lt!286367)))))

(declare-fun b!698097 () Bool)

(declare-fun e!440272 () tuple4!158)

(declare-fun lt!286432 () tuple4!156)

(assert (=> b!698097 (= e!440272 (tuple4!159 (_1!4573 lt!286432) (_2!4573 lt!286432) (_4!78 lt!286432) (_3!461 lt!286432)))))

(assert (=> b!698097 (= lt!286432 call!43673)))

(declare-fun b!698098 () Bool)

(declare-fun res!315731 () Bool)

(declare-fun e!440271 () Bool)

(assert (=> b!698098 (=> (not res!315731) (not e!440271))))

(declare-fun lt!286427 () tuple4!156)

(assert (=> b!698098 (= res!315731 (valid!712 (_4!78 lt!286427)))))

(declare-fun b!698099 () Bool)

(assert (=> b!698099 (= e!440271 (= (totalInput!1833 (_4!78 lt!286427)) totalInput!378))))

(declare-fun b!698100 () Bool)

(declare-fun res!315733 () Bool)

(assert (=> b!698100 (=> (not res!315733) (not e!440271))))

(assert (=> b!698100 (= res!315733 (valid!713 (_2!4573 lt!286427)))))

(declare-fun b!698101 () Bool)

(declare-fun lt!286429 () tuple4!156)

(declare-fun lt!286428 () tuple4!156)

(assert (=> b!698101 (= e!440272 (tuple4!159 (ite (and ((_ is None!1723) (_1!4573 lt!286429)) ((_ is None!1723) (_1!4573 lt!286428))) None!1723 (ite ((_ is None!1723) (_1!4573 lt!286428)) (_1!4573 lt!286429) (ite ((_ is None!1723) (_1!4573 lt!286429)) (_1!4573 lt!286428) (ite (>= (size!6273 (_1!4570 (v!17823 (_1!4573 lt!286429)))) (size!6273 (_1!4570 (v!17823 (_1!4573 lt!286428))))) (_1!4573 lt!286429) (_1!4573 lt!286428))))) (_2!4573 lt!286428) (_4!78 lt!286428) (_3!461 lt!286428)))))

(assert (=> b!698101 (= lt!286429 call!43673)))

(assert (=> b!698101 (= lt!286428 (maxPrefixZipperSequenceV2Mem!14 thiss!12529 (t!87537 rules!1486) input!870 totalInput!378 (_2!4573 lt!286429) (_3!461 lt!286429) (_4!78 lt!286429)))))

(declare-fun d!233552 () Bool)

(assert (=> d!233552 e!440271))

(declare-fun res!315730 () Bool)

(assert (=> d!233552 (=> (not res!315730) (not e!440271))))

(assert (=> d!233552 (= res!315730 (= (_1!4573 lt!286427) (maxPrefixZipperSequenceV2!133 thiss!12529 rules!1486 input!870 totalInput!378)))))

(declare-fun lt!286426 () tuple4!158)

(assert (=> d!233552 (= lt!286427 (tuple4!157 (_1!4576 lt!286426) (_2!4576 lt!286426) (_4!79 lt!286426) (_3!462 lt!286426)))))

(assert (=> d!233552 (= lt!286426 e!440272)))

(declare-fun c!122003 () Bool)

(assert (=> d!233552 (= c!122003 (and ((_ is Cons!7700) rules!1486) ((_ is Nil!7700) (t!87537 rules!1486))))))

(declare-fun lt!286433 () Unit!12707)

(declare-fun lt!286425 () Unit!12707)

(assert (=> d!233552 (= lt!286433 lt!286425)))

(declare-fun lt!286430 () List!7709)

(declare-fun lt!286431 () List!7709)

(assert (=> d!233552 (isPrefix!922 lt!286430 lt!286431)))

(assert (=> d!233552 (= lt!286425 (lemmaIsPrefixRefl!633 lt!286430 lt!286431))))

(assert (=> d!233552 (= lt!286431 (list!3201 input!870))))

(assert (=> d!233552 (= lt!286430 (list!3201 input!870))))

(assert (=> d!233552 (rulesValidInductive!531 thiss!12529 rules!1486)))

(assert (=> d!233552 (= (maxPrefixZipperSequenceV2Mem!14 thiss!12529 rules!1486 input!870 totalInput!378 (_2!4573 lt!286367) (_3!461 lt!286367) (_4!78 lt!286367)) lt!286427)))

(declare-fun b!698102 () Bool)

(declare-fun res!315732 () Bool)

(assert (=> b!698102 (=> (not res!315732) (not e!440271))))

(assert (=> b!698102 (= res!315732 (valid!714 (_3!461 lt!286427)))))

(assert (= (and d!233552 c!122003) b!698097))

(assert (= (and d!233552 (not c!122003)) b!698101))

(assert (= (or b!698097 b!698101) bm!43668))

(assert (= (and d!233552 res!315730) b!698100))

(assert (= (and b!698100 res!315733) b!698102))

(assert (= (and b!698102 res!315732) b!698098))

(assert (= (and b!698098 res!315731) b!698099))

(declare-fun m!953813 () Bool)

(assert (=> b!698100 m!953813))

(declare-fun m!953815 () Bool)

(assert (=> b!698098 m!953815))

(declare-fun m!953817 () Bool)

(assert (=> b!698102 m!953817))

(assert (=> d!233552 m!953797))

(assert (=> d!233552 m!953653))

(assert (=> d!233552 m!953575))

(declare-fun m!953819 () Bool)

(assert (=> d!233552 m!953819))

(declare-fun m!953821 () Bool)

(assert (=> d!233552 m!953821))

(declare-fun m!953823 () Bool)

(assert (=> b!698101 m!953823))

(declare-fun m!953825 () Bool)

(assert (=> bm!43668 m!953825))

(assert (=> b!697978 d!233552))

(declare-fun b!698103 () Bool)

(declare-fun e!440275 () Bool)

(declare-fun lt!286435 () tuple2!8224)

(assert (=> b!698103 (= e!440275 (= (list!3201 (_2!4574 lt!286435)) (list!3201 (_2!4570 (v!17823 (_1!4573 lt!286367))))))))

(declare-fun b!698104 () Bool)

(declare-fun e!440274 () Bool)

(assert (=> b!698104 (= e!440274 (= (list!3201 (_2!4574 lt!286435)) (_2!4575 (lexList!329 thiss!12529 rules!1486 (list!3201 (_2!4570 (v!17823 (_1!4573 lt!286367))))))))))

(declare-fun b!698105 () Bool)

(declare-fun res!315736 () Bool)

(assert (=> b!698105 (=> (not res!315736) (not e!440274))))

(assert (=> b!698105 (= res!315736 (= (list!3200 (_1!4574 lt!286435)) (_1!4575 (lexList!329 thiss!12529 rules!1486 (list!3201 (_2!4570 (v!17823 (_1!4573 lt!286367))))))))))

(declare-fun b!698106 () Bool)

(declare-fun e!440273 () tuple2!8224)

(declare-fun lt!286434 () tuple2!8224)

(declare-fun lt!286436 () Option!1724)

(assert (=> b!698106 (= e!440273 (tuple2!8225 (prepend!265 (_1!4574 lt!286434) (_1!4570 (v!17823 lt!286436))) (_2!4574 lt!286434)))))

(assert (=> b!698106 (= lt!286434 (lexRec!181 thiss!12529 rules!1486 (_2!4570 (v!17823 lt!286436))))))

(declare-fun b!698107 () Bool)

(declare-fun e!440276 () Bool)

(assert (=> b!698107 (= e!440276 (not (isEmpty!4921 (_1!4574 lt!286435))))))

(declare-fun d!233554 () Bool)

(assert (=> d!233554 e!440274))

(declare-fun res!315734 () Bool)

(assert (=> d!233554 (=> (not res!315734) (not e!440274))))

(assert (=> d!233554 (= res!315734 e!440275)))

(declare-fun c!122004 () Bool)

(assert (=> d!233554 (= c!122004 (> (size!6276 (_1!4574 lt!286435)) 0))))

(assert (=> d!233554 (= lt!286435 e!440273)))

(declare-fun c!122005 () Bool)

(assert (=> d!233554 (= c!122005 ((_ is Some!1723) lt!286436))))

(assert (=> d!233554 (= lt!286436 (maxPrefixZipperSequence!463 thiss!12529 rules!1486 (_2!4570 (v!17823 (_1!4573 lt!286367)))))))

(assert (=> d!233554 (= (lexRec!181 thiss!12529 rules!1486 (_2!4570 (v!17823 (_1!4573 lt!286367)))) lt!286435)))

(declare-fun b!698108 () Bool)

(assert (=> b!698108 (= e!440275 e!440276)))

(declare-fun res!315735 () Bool)

(assert (=> b!698108 (= res!315735 (< (size!6277 (_2!4574 lt!286435)) (size!6277 (_2!4570 (v!17823 (_1!4573 lt!286367))))))))

(assert (=> b!698108 (=> (not res!315735) (not e!440276))))

(declare-fun b!698109 () Bool)

(assert (=> b!698109 (= e!440273 (tuple2!8225 (BalanceConc!5403 Empty!2695) (_2!4570 (v!17823 (_1!4573 lt!286367)))))))

(assert (= (and d!233554 c!122005) b!698106))

(assert (= (and d!233554 (not c!122005)) b!698109))

(assert (= (and d!233554 c!122004) b!698108))

(assert (= (and d!233554 (not c!122004)) b!698103))

(assert (= (and b!698108 res!315735) b!698107))

(assert (= (and d!233554 res!315734) b!698105))

(assert (= (and b!698105 res!315736) b!698104))

(declare-fun m!953827 () Bool)

(assert (=> b!698106 m!953827))

(declare-fun m!953829 () Bool)

(assert (=> b!698106 m!953829))

(declare-fun m!953831 () Bool)

(assert (=> b!698107 m!953831))

(declare-fun m!953833 () Bool)

(assert (=> b!698103 m!953833))

(declare-fun m!953835 () Bool)

(assert (=> b!698103 m!953835))

(declare-fun m!953837 () Bool)

(assert (=> d!233554 m!953837))

(declare-fun m!953839 () Bool)

(assert (=> d!233554 m!953839))

(declare-fun m!953841 () Bool)

(assert (=> b!698108 m!953841))

(declare-fun m!953843 () Bool)

(assert (=> b!698108 m!953843))

(declare-fun m!953845 () Bool)

(assert (=> b!698105 m!953845))

(assert (=> b!698105 m!953835))

(assert (=> b!698105 m!953835))

(declare-fun m!953847 () Bool)

(assert (=> b!698105 m!953847))

(assert (=> b!698104 m!953833))

(assert (=> b!698104 m!953835))

(assert (=> b!698104 m!953835))

(assert (=> b!698104 m!953847))

(assert (=> b!697978 d!233554))

(declare-fun d!233556 () Bool)

(assert (=> d!233556 (= (inv!9826 (tag!1790 (h!13101 rules!1486))) (= (mod (str.len (value!49214 (tag!1790 (h!13101 rules!1486)))) 2) 0))))

(assert (=> b!697961 d!233556))

(declare-fun d!233558 () Bool)

(declare-fun res!315739 () Bool)

(declare-fun e!440279 () Bool)

(assert (=> d!233558 (=> (not res!315739) (not e!440279))))

(declare-fun semiInverseModEq!577 (Int Int) Bool)

(assert (=> d!233558 (= res!315739 (semiInverseModEq!577 (toChars!2351 (transformation!1528 (h!13101 rules!1486))) (toValue!2492 (transformation!1528 (h!13101 rules!1486)))))))

(assert (=> d!233558 (= (inv!9829 (transformation!1528 (h!13101 rules!1486))) e!440279)))

(declare-fun b!698112 () Bool)

(declare-fun equivClasses!552 (Int Int) Bool)

(assert (=> b!698112 (= e!440279 (equivClasses!552 (toChars!2351 (transformation!1528 (h!13101 rules!1486))) (toValue!2492 (transformation!1528 (h!13101 rules!1486)))))))

(assert (= (and d!233558 res!315739) b!698112))

(declare-fun m!953849 () Bool)

(assert (=> d!233558 m!953849))

(declare-fun m!953851 () Bool)

(assert (=> b!698112 m!953851))

(assert (=> b!697961 d!233558))

(declare-fun b!698122 () Bool)

(declare-fun e!440285 () List!7709)

(assert (=> b!698122 (= e!440285 (Cons!7695 (h!13096 lt!286361) (++!2001 (t!87532 lt!286361) lt!286363)))))

(declare-fun b!698121 () Bool)

(assert (=> b!698121 (= e!440285 lt!286363)))

(declare-fun lt!286439 () List!7709)

(declare-fun e!440284 () Bool)

(declare-fun b!698124 () Bool)

(assert (=> b!698124 (= e!440284 (or (not (= lt!286363 Nil!7695)) (= lt!286439 lt!286361)))))

(declare-fun d!233560 () Bool)

(assert (=> d!233560 e!440284))

(declare-fun res!315745 () Bool)

(assert (=> d!233560 (=> (not res!315745) (not e!440284))))

(declare-fun content!1193 (List!7709) (InoxSet C!4340))

(assert (=> d!233560 (= res!315745 (= (content!1193 lt!286439) ((_ map or) (content!1193 lt!286361) (content!1193 lt!286363))))))

(assert (=> d!233560 (= lt!286439 e!440285)))

(declare-fun c!122008 () Bool)

(assert (=> d!233560 (= c!122008 ((_ is Nil!7695) lt!286361))))

(assert (=> d!233560 (= (++!2001 lt!286361 lt!286363) lt!286439)))

(declare-fun b!698123 () Bool)

(declare-fun res!315744 () Bool)

(assert (=> b!698123 (=> (not res!315744) (not e!440284))))

(assert (=> b!698123 (= res!315744 (= (size!6275 lt!286439) (+ (size!6275 lt!286361) (size!6275 lt!286363))))))

(assert (= (and d!233560 c!122008) b!698121))

(assert (= (and d!233560 (not c!122008)) b!698122))

(assert (= (and d!233560 res!315745) b!698123))

(assert (= (and b!698123 res!315744) b!698124))

(declare-fun m!953853 () Bool)

(assert (=> b!698122 m!953853))

(declare-fun m!953855 () Bool)

(assert (=> d!233560 m!953855))

(declare-fun m!953857 () Bool)

(assert (=> d!233560 m!953857))

(declare-fun m!953859 () Bool)

(assert (=> d!233560 m!953859))

(declare-fun m!953861 () Bool)

(assert (=> b!698123 m!953861))

(declare-fun m!953863 () Bool)

(assert (=> b!698123 m!953863))

(assert (=> b!698123 m!953699))

(assert (=> b!697960 d!233560))

(declare-fun d!233562 () Bool)

(assert (=> d!233562 (= (list!3201 totalInput!378) (list!3202 (c!121980 totalInput!378)))))

(declare-fun bs!138034 () Bool)

(assert (= bs!138034 d!233562))

(declare-fun m!953865 () Bool)

(assert (=> bs!138034 m!953865))

(assert (=> b!697960 d!233562))

(declare-fun d!233564 () Bool)

(assert (=> d!233564 (= (list!3201 input!870) (list!3202 (c!121980 input!870)))))

(declare-fun bs!138035 () Bool)

(assert (= bs!138035 d!233564))

(declare-fun m!953867 () Bool)

(assert (=> bs!138035 m!953867))

(assert (=> b!697960 d!233564))

(declare-fun d!233566 () Bool)

(assert (=> d!233566 (= (list!3201 treated!50) (list!3202 (c!121980 treated!50)))))

(declare-fun bs!138036 () Bool)

(assert (= bs!138036 d!233566))

(declare-fun m!953869 () Bool)

(assert (=> bs!138036 m!953869))

(assert (=> b!697960 d!233566))

(declare-fun d!233568 () Bool)

(assert (=> d!233568 (= (valid!713 (_2!4573 lt!286367)) (validCacheMapUp!67 (cache!1202 (_2!4573 lt!286367))))))

(declare-fun bs!138037 () Bool)

(assert (= bs!138037 d!233568))

(declare-fun m!953871 () Bool)

(assert (=> bs!138037 m!953871))

(assert (=> b!697981 d!233568))

(declare-fun d!233570 () Bool)

(declare-fun c!122009 () Bool)

(assert (=> d!233570 (= c!122009 ((_ is Node!2694) (c!121980 input!870)))))

(declare-fun e!440286 () Bool)

(assert (=> d!233570 (= (inv!9830 (c!121980 input!870)) e!440286)))

(declare-fun b!698125 () Bool)

(assert (=> b!698125 (= e!440286 (inv!9836 (c!121980 input!870)))))

(declare-fun b!698126 () Bool)

(declare-fun e!440287 () Bool)

(assert (=> b!698126 (= e!440286 e!440287)))

(declare-fun res!315746 () Bool)

(assert (=> b!698126 (= res!315746 (not ((_ is Leaf!3982) (c!121980 input!870))))))

(assert (=> b!698126 (=> res!315746 e!440287)))

(declare-fun b!698127 () Bool)

(assert (=> b!698127 (= e!440287 (inv!9837 (c!121980 input!870)))))

(assert (= (and d!233570 c!122009) b!698125))

(assert (= (and d!233570 (not c!122009)) b!698126))

(assert (= (and b!698126 (not res!315746)) b!698127))

(declare-fun m!953873 () Bool)

(assert (=> b!698125 m!953873))

(declare-fun m!953875 () Bool)

(assert (=> b!698127 m!953875))

(assert (=> b!697983 d!233570))

(declare-fun d!233572 () Bool)

(assert (=> d!233572 (= (list!3200 (_1!4574 lt!286371)) (list!3203 (c!121981 (_1!4574 lt!286371))))))

(declare-fun bs!138038 () Bool)

(assert (= bs!138038 d!233572))

(declare-fun m!953877 () Bool)

(assert (=> bs!138038 m!953877))

(assert (=> b!697982 d!233572))

(declare-fun d!233574 () Bool)

(assert (=> d!233574 (= (list!3200 acc!372) (list!3203 (c!121981 acc!372)))))

(declare-fun bs!138039 () Bool)

(assert (= bs!138039 d!233574))

(declare-fun m!953879 () Bool)

(assert (=> bs!138039 m!953879))

(assert (=> b!697982 d!233574))

(declare-fun b!698128 () Bool)

(declare-fun e!440290 () Bool)

(declare-fun lt!286441 () tuple2!8224)

(assert (=> b!698128 (= e!440290 (= (list!3201 (_2!4574 lt!286441)) (list!3201 treated!50)))))

(declare-fun b!698129 () Bool)

(declare-fun e!440289 () Bool)

(assert (=> b!698129 (= e!440289 (= (list!3201 (_2!4574 lt!286441)) (_2!4575 (lexList!329 thiss!12529 rules!1486 (list!3201 treated!50)))))))

(declare-fun b!698130 () Bool)

(declare-fun res!315749 () Bool)

(assert (=> b!698130 (=> (not res!315749) (not e!440289))))

(assert (=> b!698130 (= res!315749 (= (list!3200 (_1!4574 lt!286441)) (_1!4575 (lexList!329 thiss!12529 rules!1486 (list!3201 treated!50)))))))

(declare-fun b!698131 () Bool)

(declare-fun e!440288 () tuple2!8224)

(declare-fun lt!286440 () tuple2!8224)

(declare-fun lt!286442 () Option!1724)

(assert (=> b!698131 (= e!440288 (tuple2!8225 (prepend!265 (_1!4574 lt!286440) (_1!4570 (v!17823 lt!286442))) (_2!4574 lt!286440)))))

(assert (=> b!698131 (= lt!286440 (lexRec!181 thiss!12529 rules!1486 (_2!4570 (v!17823 lt!286442))))))

(declare-fun b!698132 () Bool)

(declare-fun e!440291 () Bool)

(assert (=> b!698132 (= e!440291 (not (isEmpty!4921 (_1!4574 lt!286441))))))

(declare-fun d!233576 () Bool)

(assert (=> d!233576 e!440289))

(declare-fun res!315747 () Bool)

(assert (=> d!233576 (=> (not res!315747) (not e!440289))))

(assert (=> d!233576 (= res!315747 e!440290)))

(declare-fun c!122010 () Bool)

(assert (=> d!233576 (= c!122010 (> (size!6276 (_1!4574 lt!286441)) 0))))

(assert (=> d!233576 (= lt!286441 e!440288)))

(declare-fun c!122011 () Bool)

(assert (=> d!233576 (= c!122011 ((_ is Some!1723) lt!286442))))

(assert (=> d!233576 (= lt!286442 (maxPrefixZipperSequence!463 thiss!12529 rules!1486 treated!50))))

(assert (=> d!233576 (= (lexRec!181 thiss!12529 rules!1486 treated!50) lt!286441)))

(declare-fun b!698133 () Bool)

(assert (=> b!698133 (= e!440290 e!440291)))

(declare-fun res!315748 () Bool)

(assert (=> b!698133 (= res!315748 (< (size!6277 (_2!4574 lt!286441)) (size!6277 treated!50)))))

(assert (=> b!698133 (=> (not res!315748) (not e!440291))))

(declare-fun b!698134 () Bool)

(assert (=> b!698134 (= e!440288 (tuple2!8225 (BalanceConc!5403 Empty!2695) treated!50))))

(assert (= (and d!233576 c!122011) b!698131))

(assert (= (and d!233576 (not c!122011)) b!698134))

(assert (= (and d!233576 c!122010) b!698133))

(assert (= (and d!233576 (not c!122010)) b!698128))

(assert (= (and b!698133 res!315748) b!698132))

(assert (= (and d!233576 res!315747) b!698130))

(assert (= (and b!698130 res!315749) b!698129))

(declare-fun m!953881 () Bool)

(assert (=> b!698131 m!953881))

(declare-fun m!953883 () Bool)

(assert (=> b!698131 m!953883))

(declare-fun m!953885 () Bool)

(assert (=> b!698132 m!953885))

(declare-fun m!953887 () Bool)

(assert (=> b!698128 m!953887))

(assert (=> b!698128 m!953577))

(declare-fun m!953889 () Bool)

(assert (=> d!233576 m!953889))

(declare-fun m!953891 () Bool)

(assert (=> d!233576 m!953891))

(declare-fun m!953893 () Bool)

(assert (=> b!698133 m!953893))

(declare-fun m!953895 () Bool)

(assert (=> b!698133 m!953895))

(declare-fun m!953897 () Bool)

(assert (=> b!698130 m!953897))

(assert (=> b!698130 m!953577))

(assert (=> b!698130 m!953577))

(declare-fun m!953899 () Bool)

(assert (=> b!698130 m!953899))

(assert (=> b!698129 m!953887))

(assert (=> b!698129 m!953577))

(assert (=> b!698129 m!953577))

(assert (=> b!698129 m!953899))

(assert (=> b!697982 d!233576))

(declare-fun d!233578 () Bool)

(declare-fun c!122012 () Bool)

(assert (=> d!233578 (= c!122012 ((_ is Node!2694) (c!121980 totalInput!378)))))

(declare-fun e!440292 () Bool)

(assert (=> d!233578 (= (inv!9830 (c!121980 totalInput!378)) e!440292)))

(declare-fun b!698135 () Bool)

(assert (=> b!698135 (= e!440292 (inv!9836 (c!121980 totalInput!378)))))

(declare-fun b!698136 () Bool)

(declare-fun e!440293 () Bool)

(assert (=> b!698136 (= e!440292 e!440293)))

(declare-fun res!315750 () Bool)

(assert (=> b!698136 (= res!315750 (not ((_ is Leaf!3982) (c!121980 totalInput!378))))))

(assert (=> b!698136 (=> res!315750 e!440293)))

(declare-fun b!698137 () Bool)

(assert (=> b!698137 (= e!440293 (inv!9837 (c!121980 totalInput!378)))))

(assert (= (and d!233578 c!122012) b!698135))

(assert (= (and d!233578 (not c!122012)) b!698136))

(assert (= (and b!698136 (not res!315750)) b!698137))

(declare-fun m!953901 () Bool)

(assert (=> b!698135 m!953901))

(declare-fun m!953903 () Bool)

(assert (=> b!698137 m!953903))

(assert (=> b!697965 d!233578))

(declare-fun d!233580 () Bool)

(declare-fun c!122013 () Bool)

(assert (=> d!233580 (= c!122013 ((_ is Node!2694) (c!121980 (totalInput!1833 cacheFindLongestMatch!74))))))

(declare-fun e!440294 () Bool)

(assert (=> d!233580 (= (inv!9830 (c!121980 (totalInput!1833 cacheFindLongestMatch!74))) e!440294)))

(declare-fun b!698138 () Bool)

(assert (=> b!698138 (= e!440294 (inv!9836 (c!121980 (totalInput!1833 cacheFindLongestMatch!74))))))

(declare-fun b!698139 () Bool)

(declare-fun e!440295 () Bool)

(assert (=> b!698139 (= e!440294 e!440295)))

(declare-fun res!315751 () Bool)

(assert (=> b!698139 (= res!315751 (not ((_ is Leaf!3982) (c!121980 (totalInput!1833 cacheFindLongestMatch!74)))))))

(assert (=> b!698139 (=> res!315751 e!440295)))

(declare-fun b!698140 () Bool)

(assert (=> b!698140 (= e!440295 (inv!9837 (c!121980 (totalInput!1833 cacheFindLongestMatch!74))))))

(assert (= (and d!233580 c!122013) b!698138))

(assert (= (and d!233580 (not c!122013)) b!698139))

(assert (= (and b!698139 (not res!315751)) b!698140))

(declare-fun m!953905 () Bool)

(assert (=> b!698138 m!953905))

(declare-fun m!953907 () Bool)

(assert (=> b!698140 m!953907))

(assert (=> b!697964 d!233580))

(declare-fun d!233582 () Bool)

(assert (=> d!233582 (= (array_inv!1031 (_keys!1136 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))) (bvsge (size!6270 (_keys!1136 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!697966 d!233582))

(declare-fun d!233584 () Bool)

(assert (=> d!233584 (= (array_inv!1033 (_values!1121 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))) (bvsge (size!6271 (_values!1121 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!697966 d!233584))

(declare-fun d!233586 () Bool)

(assert (=> d!233586 (= (isEmpty!4920 (list!3201 (_2!4574 lt!286371))) ((_ is Nil!7695) (list!3201 (_2!4574 lt!286371))))))

(assert (=> b!697987 d!233586))

(declare-fun d!233588 () Bool)

(assert (=> d!233588 (= (list!3201 (_2!4574 lt!286371)) (list!3202 (c!121980 (_2!4574 lt!286371))))))

(declare-fun bs!138040 () Bool)

(assert (= bs!138040 d!233588))

(declare-fun m!953909 () Bool)

(assert (=> bs!138040 m!953909))

(assert (=> b!697987 d!233588))

(declare-fun d!233590 () Bool)

(assert (=> d!233590 (= (valid!712 cacheFindLongestMatch!74) (validCacheMapFindLongestMatch!13 (cache!1201 cacheFindLongestMatch!74) (totalInput!1833 cacheFindLongestMatch!74)))))

(declare-fun bs!138041 () Bool)

(assert (= bs!138041 d!233590))

(assert (=> bs!138041 m!953679))

(assert (=> b!697967 d!233590))

(declare-fun d!233592 () Bool)

(assert (=> d!233592 (= (isEmpty!4919 rules!1486) ((_ is Nil!7700) rules!1486))))

(assert (=> b!697986 d!233592))

(declare-fun d!233594 () Bool)

(assert (=> d!233594 (= (valid!712 (_4!78 lt!286367)) (validCacheMapFindLongestMatch!13 (cache!1201 (_4!78 lt!286367)) (totalInput!1833 (_4!78 lt!286367))))))

(declare-fun bs!138042 () Bool)

(assert (= bs!138042 d!233594))

(declare-fun m!953911 () Bool)

(assert (=> bs!138042 m!953911))

(assert (=> b!697968 d!233594))

(declare-fun setIsEmpty!4067 () Bool)

(declare-fun setRes!4067 () Bool)

(assert (=> setIsEmpty!4067 setRes!4067))

(declare-fun b!698149 () Bool)

(declare-fun e!440304 () Bool)

(declare-fun tp!212561 () Bool)

(assert (=> b!698149 (= e!440304 tp!212561)))

(declare-fun setNonEmpty!4067 () Bool)

(declare-fun tp!212563 () Bool)

(declare-fun setElem!4067 () Context!542)

(declare-fun e!440303 () Bool)

(declare-fun inv!9840 (Context!542) Bool)

(assert (=> setNonEmpty!4067 (= setRes!4067 (and tp!212563 (inv!9840 setElem!4067) e!440303))))

(declare-fun setRest!4067 () (InoxSet Context!542))

(assert (=> setNonEmpty!4067 (= (_2!4572 (h!13099 mapDefault!3399)) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4067 true) setRest!4067))))

(declare-fun e!440302 () Bool)

(assert (=> b!697979 (= tp!212524 e!440302)))

(declare-fun b!698150 () Bool)

(declare-fun tp!212562 () Bool)

(assert (=> b!698150 (= e!440303 tp!212562)))

(declare-fun tp!212560 () Bool)

(declare-fun b!698151 () Bool)

(declare-fun tp_is_empty!3659 () Bool)

(assert (=> b!698151 (= e!440302 (and (inv!9840 (_1!4571 (_1!4572 (h!13099 mapDefault!3399)))) e!440304 tp_is_empty!3659 setRes!4067 tp!212560))))

(declare-fun condSetEmpty!4067 () Bool)

(assert (=> b!698151 (= condSetEmpty!4067 (= (_2!4572 (h!13099 mapDefault!3399)) ((as const (Array Context!542 Bool)) false)))))

(assert (= b!698151 b!698149))

(assert (= (and b!698151 condSetEmpty!4067) setIsEmpty!4067))

(assert (= (and b!698151 (not condSetEmpty!4067)) setNonEmpty!4067))

(assert (= setNonEmpty!4067 b!698150))

(assert (= (and b!697979 ((_ is Cons!7698) mapDefault!3399)) b!698151))

(declare-fun m!953913 () Bool)

(assert (=> setNonEmpty!4067 m!953913))

(declare-fun m!953915 () Bool)

(assert (=> b!698151 m!953915))

(declare-fun setIsEmpty!4072 () Bool)

(declare-fun setRes!4073 () Bool)

(assert (=> setIsEmpty!4072 setRes!4073))

(declare-fun b!698162 () Bool)

(declare-fun e!440316 () Bool)

(declare-fun tp!212582 () Bool)

(assert (=> b!698162 (= e!440316 tp!212582)))

(declare-fun mapNonEmpty!3403 () Bool)

(declare-fun mapRes!3403 () Bool)

(declare-fun tp!212580 () Bool)

(declare-fun e!440313 () Bool)

(assert (=> mapNonEmpty!3403 (= mapRes!3403 (and tp!212580 e!440313))))

(declare-fun mapKey!3403 () (_ BitVec 32))

(declare-fun mapValue!3403 () List!7708)

(declare-fun mapRest!3403 () (Array (_ BitVec 32) List!7708))

(assert (=> mapNonEmpty!3403 (= mapRest!3399 (store mapRest!3403 mapKey!3403 mapValue!3403))))

(declare-fun b!698163 () Bool)

(declare-fun e!440315 () Bool)

(declare-fun setRes!4072 () Bool)

(declare-fun tp!212578 () Bool)

(assert (=> b!698163 (= e!440315 (and setRes!4072 tp!212578))))

(declare-fun condSetEmpty!4073 () Bool)

(declare-fun mapDefault!3403 () List!7708)

(assert (=> b!698163 (= condSetEmpty!4073 (= (_1!4566 (_1!4567 (h!13095 mapDefault!3403))) ((as const (Array Context!542 Bool)) false)))))

(declare-fun setIsEmpty!4073 () Bool)

(assert (=> setIsEmpty!4073 setRes!4072))

(declare-fun condMapEmpty!3403 () Bool)

(assert (=> mapNonEmpty!3399 (= condMapEmpty!3403 (= mapRest!3399 ((as const (Array (_ BitVec 32) List!7708)) mapDefault!3403)))))

(assert (=> mapNonEmpty!3399 (= tp!212547 (and e!440315 mapRes!3403))))

(declare-fun setNonEmpty!4072 () Bool)

(declare-fun e!440314 () Bool)

(declare-fun tp!212581 () Bool)

(declare-fun setElem!4073 () Context!542)

(assert (=> setNonEmpty!4072 (= setRes!4072 (and tp!212581 (inv!9840 setElem!4073) e!440314))))

(declare-fun setRest!4072 () (InoxSet Context!542))

(assert (=> setNonEmpty!4072 (= (_1!4566 (_1!4567 (h!13095 mapDefault!3403))) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4073 true) setRest!4072))))

(declare-fun b!698164 () Bool)

(declare-fun tp!212579 () Bool)

(assert (=> b!698164 (= e!440313 (and setRes!4073 tp!212579))))

(declare-fun condSetEmpty!4072 () Bool)

(assert (=> b!698164 (= condSetEmpty!4072 (= (_1!4566 (_1!4567 (h!13095 mapValue!3403))) ((as const (Array Context!542 Bool)) false)))))

(declare-fun b!698165 () Bool)

(declare-fun tp!212583 () Bool)

(assert (=> b!698165 (= e!440314 tp!212583)))

(declare-fun mapIsEmpty!3403 () Bool)

(assert (=> mapIsEmpty!3403 mapRes!3403))

(declare-fun setNonEmpty!4073 () Bool)

(declare-fun setElem!4072 () Context!542)

(declare-fun tp!212584 () Bool)

(assert (=> setNonEmpty!4073 (= setRes!4073 (and tp!212584 (inv!9840 setElem!4072) e!440316))))

(declare-fun setRest!4073 () (InoxSet Context!542))

(assert (=> setNonEmpty!4073 (= (_1!4566 (_1!4567 (h!13095 mapValue!3403))) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4072 true) setRest!4073))))

(assert (= (and mapNonEmpty!3399 condMapEmpty!3403) mapIsEmpty!3403))

(assert (= (and mapNonEmpty!3399 (not condMapEmpty!3403)) mapNonEmpty!3403))

(assert (= (and b!698164 condSetEmpty!4072) setIsEmpty!4072))

(assert (= (and b!698164 (not condSetEmpty!4072)) setNonEmpty!4073))

(assert (= setNonEmpty!4073 b!698162))

(assert (= (and mapNonEmpty!3403 ((_ is Cons!7694) mapValue!3403)) b!698164))

(assert (= (and b!698163 condSetEmpty!4073) setIsEmpty!4073))

(assert (= (and b!698163 (not condSetEmpty!4073)) setNonEmpty!4072))

(assert (= setNonEmpty!4072 b!698165))

(assert (= (and mapNonEmpty!3399 ((_ is Cons!7694) mapDefault!3403)) b!698163))

(declare-fun m!953917 () Bool)

(assert (=> mapNonEmpty!3403 m!953917))

(declare-fun m!953919 () Bool)

(assert (=> setNonEmpty!4072 m!953919))

(declare-fun m!953921 () Bool)

(assert (=> setNonEmpty!4073 m!953921))

(declare-fun setIsEmpty!4076 () Bool)

(declare-fun setRes!4076 () Bool)

(assert (=> setIsEmpty!4076 setRes!4076))

(declare-fun b!698173 () Bool)

(declare-fun e!440321 () Bool)

(declare-fun tp!212592 () Bool)

(assert (=> b!698173 (= e!440321 tp!212592)))

(declare-fun b!698172 () Bool)

(declare-fun e!440322 () Bool)

(declare-fun tp!212591 () Bool)

(assert (=> b!698172 (= e!440322 (and setRes!4076 tp!212591))))

(declare-fun condSetEmpty!4076 () Bool)

(assert (=> b!698172 (= condSetEmpty!4076 (= (_1!4566 (_1!4567 (h!13095 mapValue!3398))) ((as const (Array Context!542 Bool)) false)))))

(declare-fun tp!212593 () Bool)

(declare-fun setNonEmpty!4076 () Bool)

(declare-fun setElem!4076 () Context!542)

(assert (=> setNonEmpty!4076 (= setRes!4076 (and tp!212593 (inv!9840 setElem!4076) e!440321))))

(declare-fun setRest!4076 () (InoxSet Context!542))

(assert (=> setNonEmpty!4076 (= (_1!4566 (_1!4567 (h!13095 mapValue!3398))) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4076 true) setRest!4076))))

(assert (=> mapNonEmpty!3399 (= tp!212544 e!440322)))

(assert (= (and b!698172 condSetEmpty!4076) setIsEmpty!4076))

(assert (= (and b!698172 (not condSetEmpty!4076)) setNonEmpty!4076))

(assert (= setNonEmpty!4076 b!698173))

(assert (= (and mapNonEmpty!3399 ((_ is Cons!7694) mapValue!3398)) b!698172))

(declare-fun m!953923 () Bool)

(assert (=> setNonEmpty!4076 m!953923))

(declare-fun tp!212607 () Bool)

(declare-fun e!440330 () Bool)

(declare-fun b!698182 () Bool)

(declare-fun e!440331 () Bool)

(declare-fun setRes!4079 () Bool)

(declare-fun tp!212605 () Bool)

(assert (=> b!698182 (= e!440330 (and tp!212607 (inv!9840 (_2!4568 (_1!4569 (h!13097 (zeroValue!1100 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515)))))))))) e!440331 tp_is_empty!3659 setRes!4079 tp!212605))))

(declare-fun condSetEmpty!4079 () Bool)

(assert (=> b!698182 (= condSetEmpty!4079 (= (_2!4569 (h!13097 (zeroValue!1100 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515)))))))) ((as const (Array Context!542 Bool)) false)))))

(declare-fun setIsEmpty!4079 () Bool)

(assert (=> setIsEmpty!4079 setRes!4079))

(declare-fun tp!212606 () Bool)

(declare-fun setElem!4079 () Context!542)

(declare-fun setNonEmpty!4079 () Bool)

(declare-fun e!440329 () Bool)

(assert (=> setNonEmpty!4079 (= setRes!4079 (and tp!212606 (inv!9840 setElem!4079) e!440329))))

(declare-fun setRest!4079 () (InoxSet Context!542))

(assert (=> setNonEmpty!4079 (= (_2!4569 (h!13097 (zeroValue!1100 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4079 true) setRest!4079))))

(declare-fun b!698184 () Bool)

(declare-fun tp!212604 () Bool)

(assert (=> b!698184 (= e!440329 tp!212604)))

(declare-fun b!698183 () Bool)

(declare-fun tp!212608 () Bool)

(assert (=> b!698183 (= e!440331 tp!212608)))

(assert (=> b!697959 (= tp!212522 e!440330)))

(assert (= b!698182 b!698183))

(assert (= (and b!698182 condSetEmpty!4079) setIsEmpty!4079))

(assert (= (and b!698182 (not condSetEmpty!4079)) setNonEmpty!4079))

(assert (= setNonEmpty!4079 b!698184))

(assert (= (and b!697959 ((_ is Cons!7696) (zeroValue!1100 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515)))))))) b!698182))

(declare-fun m!953925 () Bool)

(assert (=> b!698182 m!953925))

(declare-fun m!953927 () Bool)

(assert (=> setNonEmpty!4079 m!953927))

(declare-fun e!440333 () Bool)

(declare-fun b!698185 () Bool)

(declare-fun tp!212612 () Bool)

(declare-fun e!440334 () Bool)

(declare-fun setRes!4080 () Bool)

(declare-fun tp!212610 () Bool)

(assert (=> b!698185 (= e!440333 (and tp!212612 (inv!9840 (_2!4568 (_1!4569 (h!13097 (minValue!1100 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515)))))))))) e!440334 tp_is_empty!3659 setRes!4080 tp!212610))))

(declare-fun condSetEmpty!4080 () Bool)

(assert (=> b!698185 (= condSetEmpty!4080 (= (_2!4569 (h!13097 (minValue!1100 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515)))))))) ((as const (Array Context!542 Bool)) false)))))

(declare-fun setIsEmpty!4080 () Bool)

(assert (=> setIsEmpty!4080 setRes!4080))

(declare-fun setElem!4080 () Context!542)

(declare-fun tp!212611 () Bool)

(declare-fun e!440332 () Bool)

(declare-fun setNonEmpty!4080 () Bool)

(assert (=> setNonEmpty!4080 (= setRes!4080 (and tp!212611 (inv!9840 setElem!4080) e!440332))))

(declare-fun setRest!4080 () (InoxSet Context!542))

(assert (=> setNonEmpty!4080 (= (_2!4569 (h!13097 (minValue!1100 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4080 true) setRest!4080))))

(declare-fun b!698187 () Bool)

(declare-fun tp!212609 () Bool)

(assert (=> b!698187 (= e!440332 tp!212609)))

(declare-fun b!698186 () Bool)

(declare-fun tp!212613 () Bool)

(assert (=> b!698186 (= e!440334 tp!212613)))

(assert (=> b!697959 (= tp!212539 e!440333)))

(assert (= b!698185 b!698186))

(assert (= (and b!698185 condSetEmpty!4080) setIsEmpty!4080))

(assert (= (and b!698185 (not condSetEmpty!4080)) setNonEmpty!4080))

(assert (= setNonEmpty!4080 b!698187))

(assert (= (and b!697959 ((_ is Cons!7696) (minValue!1100 (v!17826 (underlying!1871 (v!17827 (underlying!1872 (cache!1203 cacheDown!515)))))))) b!698185))

(declare-fun m!953929 () Bool)

(assert (=> b!698185 m!953929))

(declare-fun m!953931 () Bool)

(assert (=> setNonEmpty!4080 m!953931))

(declare-fun e!440337 () Bool)

(assert (=> b!697961 (= tp!212536 e!440337)))

(declare-fun b!698199 () Bool)

(declare-fun tp!212625 () Bool)

(declare-fun tp!212626 () Bool)

(assert (=> b!698199 (= e!440337 (and tp!212625 tp!212626))))

(declare-fun b!698198 () Bool)

(assert (=> b!698198 (= e!440337 tp_is_empty!3659)))

(declare-fun b!698200 () Bool)

(declare-fun tp!212628 () Bool)

(assert (=> b!698200 (= e!440337 tp!212628)))

(declare-fun b!698201 () Bool)

(declare-fun tp!212624 () Bool)

(declare-fun tp!212627 () Bool)

(assert (=> b!698201 (= e!440337 (and tp!212624 tp!212627))))

(assert (= (and b!697961 ((_ is ElementMatch!1869) (regex!1528 (h!13101 rules!1486)))) b!698198))

(assert (= (and b!697961 ((_ is Concat!3441) (regex!1528 (h!13101 rules!1486)))) b!698199))

(assert (= (and b!697961 ((_ is Star!1869) (regex!1528 (h!13101 rules!1486)))) b!698200))

(assert (= (and b!697961 ((_ is Union!1869) (regex!1528 (h!13101 rules!1486)))) b!698201))

(declare-fun tp!212635 () Bool)

(declare-fun e!440343 () Bool)

(declare-fun tp!212637 () Bool)

(declare-fun b!698210 () Bool)

(assert (=> b!698210 (= e!440343 (and (inv!9830 (left!6073 (c!121980 input!870))) tp!212635 (inv!9830 (right!6403 (c!121980 input!870))) tp!212637))))

(declare-fun b!698212 () Bool)

(declare-fun e!440342 () Bool)

(declare-fun tp!212636 () Bool)

(assert (=> b!698212 (= e!440342 tp!212636)))

(declare-fun b!698211 () Bool)

(declare-fun inv!9841 (IArray!5389) Bool)

(assert (=> b!698211 (= e!440343 (and (inv!9841 (xs!5347 (c!121980 input!870))) e!440342))))

(assert (=> b!697983 (= tp!212551 (and (inv!9830 (c!121980 input!870)) e!440343))))

(assert (= (and b!697983 ((_ is Node!2694) (c!121980 input!870))) b!698210))

(assert (= b!698211 b!698212))

(assert (= (and b!697983 ((_ is Leaf!3982) (c!121980 input!870))) b!698211))

(declare-fun m!953933 () Bool)

(assert (=> b!698210 m!953933))

(declare-fun m!953935 () Bool)

(assert (=> b!698210 m!953935))

(declare-fun m!953937 () Bool)

(assert (=> b!698211 m!953937))

(assert (=> b!697983 m!953623))

(declare-fun mapIsEmpty!3406 () Bool)

(declare-fun mapRes!3406 () Bool)

(assert (=> mapIsEmpty!3406 mapRes!3406))

(declare-fun b!698227 () Bool)

(declare-fun e!440361 () Bool)

(declare-fun tp!212662 () Bool)

(assert (=> b!698227 (= e!440361 tp!212662)))

(declare-fun e!440359 () Bool)

(declare-fun tp!212656 () Bool)

(declare-fun b!698228 () Bool)

(declare-fun setRes!4086 () Bool)

(declare-fun e!440357 () Bool)

(declare-fun mapValue!3406 () List!7712)

(assert (=> b!698228 (= e!440357 (and (inv!9840 (_1!4571 (_1!4572 (h!13099 mapValue!3406)))) e!440359 tp_is_empty!3659 setRes!4086 tp!212656))))

(declare-fun condSetEmpty!4085 () Bool)

(assert (=> b!698228 (= condSetEmpty!4085 (= (_2!4572 (h!13099 mapValue!3406)) ((as const (Array Context!542 Bool)) false)))))

(declare-fun b!698229 () Bool)

(declare-fun e!440358 () Bool)

(declare-fun tp!212664 () Bool)

(assert (=> b!698229 (= e!440358 tp!212664)))

(declare-fun b!698230 () Bool)

(declare-fun e!440356 () Bool)

(declare-fun tp!212659 () Bool)

(assert (=> b!698230 (= e!440356 tp!212659)))

(declare-fun setIsEmpty!4086 () Bool)

(assert (=> setIsEmpty!4086 setRes!4086))

(declare-fun mapDefault!3406 () List!7712)

(declare-fun tp!212661 () Bool)

(declare-fun e!440360 () Bool)

(declare-fun setRes!4085 () Bool)

(declare-fun b!698231 () Bool)

(assert (=> b!698231 (= e!440360 (and (inv!9840 (_1!4571 (_1!4572 (h!13099 mapDefault!3406)))) e!440361 tp_is_empty!3659 setRes!4085 tp!212661))))

(declare-fun condSetEmpty!4086 () Bool)

(assert (=> b!698231 (= condSetEmpty!4086 (= (_2!4572 (h!13099 mapDefault!3406)) ((as const (Array Context!542 Bool)) false)))))

(declare-fun setIsEmpty!4085 () Bool)

(assert (=> setIsEmpty!4085 setRes!4085))

(declare-fun condMapEmpty!3406 () Bool)

(assert (=> mapNonEmpty!3400 (= condMapEmpty!3406 (= mapRest!3398 ((as const (Array (_ BitVec 32) List!7712)) mapDefault!3406)))))

(assert (=> mapNonEmpty!3400 (= tp!212538 (and e!440360 mapRes!3406))))

(declare-fun mapNonEmpty!3406 () Bool)

(declare-fun tp!212660 () Bool)

(assert (=> mapNonEmpty!3406 (= mapRes!3406 (and tp!212660 e!440357))))

(declare-fun mapRest!3406 () (Array (_ BitVec 32) List!7712))

(declare-fun mapKey!3406 () (_ BitVec 32))

(assert (=> mapNonEmpty!3406 (= mapRest!3398 (store mapRest!3406 mapKey!3406 mapValue!3406))))

(declare-fun setElem!4085 () Context!542)

(declare-fun setNonEmpty!4085 () Bool)

(declare-fun tp!212658 () Bool)

(assert (=> setNonEmpty!4085 (= setRes!4085 (and tp!212658 (inv!9840 setElem!4085) e!440358))))

(declare-fun setRest!4086 () (InoxSet Context!542))

(assert (=> setNonEmpty!4085 (= (_2!4572 (h!13099 mapDefault!3406)) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4085 true) setRest!4086))))

(declare-fun b!698232 () Bool)

(declare-fun tp!212657 () Bool)

(assert (=> b!698232 (= e!440359 tp!212657)))

(declare-fun tp!212663 () Bool)

(declare-fun setElem!4086 () Context!542)

(declare-fun setNonEmpty!4086 () Bool)

(assert (=> setNonEmpty!4086 (= setRes!4086 (and tp!212663 (inv!9840 setElem!4086) e!440356))))

(declare-fun setRest!4085 () (InoxSet Context!542))

(assert (=> setNonEmpty!4086 (= (_2!4572 (h!13099 mapValue!3406)) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4086 true) setRest!4085))))

(assert (= (and mapNonEmpty!3400 condMapEmpty!3406) mapIsEmpty!3406))

(assert (= (and mapNonEmpty!3400 (not condMapEmpty!3406)) mapNonEmpty!3406))

(assert (= b!698228 b!698232))

(assert (= (and b!698228 condSetEmpty!4085) setIsEmpty!4086))

(assert (= (and b!698228 (not condSetEmpty!4085)) setNonEmpty!4086))

(assert (= setNonEmpty!4086 b!698230))

(assert (= (and mapNonEmpty!3406 ((_ is Cons!7698) mapValue!3406)) b!698228))

(assert (= b!698231 b!698227))

(assert (= (and b!698231 condSetEmpty!4086) setIsEmpty!4085))

(assert (= (and b!698231 (not condSetEmpty!4086)) setNonEmpty!4085))

(assert (= setNonEmpty!4085 b!698229))

(assert (= (and mapNonEmpty!3400 ((_ is Cons!7698) mapDefault!3406)) b!698231))

(declare-fun m!953939 () Bool)

(assert (=> setNonEmpty!4086 m!953939))

(declare-fun m!953941 () Bool)

(assert (=> b!698228 m!953941))

(declare-fun m!953943 () Bool)

(assert (=> mapNonEmpty!3406 m!953943))

(declare-fun m!953945 () Bool)

(assert (=> b!698231 m!953945))

(declare-fun m!953947 () Bool)

(assert (=> setNonEmpty!4085 m!953947))

(declare-fun setIsEmpty!4087 () Bool)

(declare-fun setRes!4087 () Bool)

(assert (=> setIsEmpty!4087 setRes!4087))

(declare-fun b!698233 () Bool)

(declare-fun e!440364 () Bool)

(declare-fun tp!212666 () Bool)

(assert (=> b!698233 (= e!440364 tp!212666)))

(declare-fun setNonEmpty!4087 () Bool)

(declare-fun setElem!4087 () Context!542)

(declare-fun e!440363 () Bool)

(declare-fun tp!212668 () Bool)

(assert (=> setNonEmpty!4087 (= setRes!4087 (and tp!212668 (inv!9840 setElem!4087) e!440363))))

(declare-fun setRest!4087 () (InoxSet Context!542))

(assert (=> setNonEmpty!4087 (= (_2!4572 (h!13099 mapValue!3400)) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4087 true) setRest!4087))))

(declare-fun e!440362 () Bool)

(assert (=> mapNonEmpty!3400 (= tp!212549 e!440362)))

(declare-fun b!698234 () Bool)

(declare-fun tp!212667 () Bool)

(assert (=> b!698234 (= e!440363 tp!212667)))

(declare-fun b!698235 () Bool)

(declare-fun tp!212665 () Bool)

(assert (=> b!698235 (= e!440362 (and (inv!9840 (_1!4571 (_1!4572 (h!13099 mapValue!3400)))) e!440364 tp_is_empty!3659 setRes!4087 tp!212665))))

(declare-fun condSetEmpty!4087 () Bool)

(assert (=> b!698235 (= condSetEmpty!4087 (= (_2!4572 (h!13099 mapValue!3400)) ((as const (Array Context!542 Bool)) false)))))

(assert (= b!698235 b!698233))

(assert (= (and b!698235 condSetEmpty!4087) setIsEmpty!4087))

(assert (= (and b!698235 (not condSetEmpty!4087)) setNonEmpty!4087))

(assert (= setNonEmpty!4087 b!698234))

(assert (= (and mapNonEmpty!3400 ((_ is Cons!7698) mapValue!3400)) b!698235))

(declare-fun m!953949 () Bool)

(assert (=> setNonEmpty!4087 m!953949))

(declare-fun m!953951 () Bool)

(assert (=> b!698235 m!953951))

(declare-fun tp!212672 () Bool)

(declare-fun tp!212670 () Bool)

(declare-fun setRes!4088 () Bool)

(declare-fun e!440366 () Bool)

(declare-fun b!698236 () Bool)

(declare-fun e!440367 () Bool)

(assert (=> b!698236 (= e!440366 (and tp!212672 (inv!9840 (_2!4568 (_1!4569 (h!13097 mapDefault!3400)))) e!440367 tp_is_empty!3659 setRes!4088 tp!212670))))

(declare-fun condSetEmpty!4088 () Bool)

(assert (=> b!698236 (= condSetEmpty!4088 (= (_2!4569 (h!13097 mapDefault!3400)) ((as const (Array Context!542 Bool)) false)))))

(declare-fun setIsEmpty!4088 () Bool)

(assert (=> setIsEmpty!4088 setRes!4088))

(declare-fun setElem!4088 () Context!542)

(declare-fun tp!212671 () Bool)

(declare-fun e!440365 () Bool)

(declare-fun setNonEmpty!4088 () Bool)

(assert (=> setNonEmpty!4088 (= setRes!4088 (and tp!212671 (inv!9840 setElem!4088) e!440365))))

(declare-fun setRest!4088 () (InoxSet Context!542))

(assert (=> setNonEmpty!4088 (= (_2!4569 (h!13097 mapDefault!3400)) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4088 true) setRest!4088))))

(declare-fun b!698238 () Bool)

(declare-fun tp!212669 () Bool)

(assert (=> b!698238 (= e!440365 tp!212669)))

(declare-fun b!698237 () Bool)

(declare-fun tp!212673 () Bool)

(assert (=> b!698237 (= e!440367 tp!212673)))

(assert (=> b!697963 (= tp!212530 e!440366)))

(assert (= b!698236 b!698237))

(assert (= (and b!698236 condSetEmpty!4088) setIsEmpty!4088))

(assert (= (and b!698236 (not condSetEmpty!4088)) setNonEmpty!4088))

(assert (= setNonEmpty!4088 b!698238))

(assert (= (and b!697963 ((_ is Cons!7696) mapDefault!3400)) b!698236))

(declare-fun m!953953 () Bool)

(assert (=> b!698236 m!953953))

(declare-fun m!953955 () Bool)

(assert (=> setNonEmpty!4088 m!953955))

(declare-fun e!440369 () Bool)

(declare-fun tp!212674 () Bool)

(declare-fun tp!212676 () Bool)

(declare-fun b!698239 () Bool)

(assert (=> b!698239 (= e!440369 (and (inv!9830 (left!6073 (c!121980 totalInput!378))) tp!212674 (inv!9830 (right!6403 (c!121980 totalInput!378))) tp!212676))))

(declare-fun b!698241 () Bool)

(declare-fun e!440368 () Bool)

(declare-fun tp!212675 () Bool)

(assert (=> b!698241 (= e!440368 tp!212675)))

(declare-fun b!698240 () Bool)

(assert (=> b!698240 (= e!440369 (and (inv!9841 (xs!5347 (c!121980 totalInput!378))) e!440368))))

(assert (=> b!697965 (= tp!212546 (and (inv!9830 (c!121980 totalInput!378)) e!440369))))

(assert (= (and b!697965 ((_ is Node!2694) (c!121980 totalInput!378))) b!698239))

(assert (= b!698240 b!698241))

(assert (= (and b!697965 ((_ is Leaf!3982) (c!121980 totalInput!378))) b!698240))

(declare-fun m!953957 () Bool)

(assert (=> b!698239 m!953957))

(declare-fun m!953959 () Bool)

(assert (=> b!698239 m!953959))

(declare-fun m!953961 () Bool)

(assert (=> b!698240 m!953961))

(assert (=> b!697965 m!953593))

(declare-fun b!698242 () Bool)

(declare-fun e!440371 () Bool)

(declare-fun tp!212677 () Bool)

(declare-fun tp!212679 () Bool)

(assert (=> b!698242 (= e!440371 (and (inv!9830 (left!6073 (c!121980 (totalInput!1833 cacheFindLongestMatch!74)))) tp!212677 (inv!9830 (right!6403 (c!121980 (totalInput!1833 cacheFindLongestMatch!74)))) tp!212679))))

(declare-fun b!698244 () Bool)

(declare-fun e!440370 () Bool)

(declare-fun tp!212678 () Bool)

(assert (=> b!698244 (= e!440370 tp!212678)))

(declare-fun b!698243 () Bool)

(assert (=> b!698243 (= e!440371 (and (inv!9841 (xs!5347 (c!121980 (totalInput!1833 cacheFindLongestMatch!74)))) e!440370))))

(assert (=> b!697964 (= tp!212529 (and (inv!9830 (c!121980 (totalInput!1833 cacheFindLongestMatch!74))) e!440371))))

(assert (= (and b!697964 ((_ is Node!2694) (c!121980 (totalInput!1833 cacheFindLongestMatch!74)))) b!698242))

(assert (= b!698243 b!698244))

(assert (= (and b!697964 ((_ is Leaf!3982) (c!121980 (totalInput!1833 cacheFindLongestMatch!74)))) b!698243))

(declare-fun m!953963 () Bool)

(assert (=> b!698242 m!953963))

(declare-fun m!953965 () Bool)

(assert (=> b!698242 m!953965))

(declare-fun m!953967 () Bool)

(assert (=> b!698243 m!953967))

(assert (=> b!697964 m!953677))

(declare-fun e!440386 () Bool)

(declare-fun setRes!4093 () Bool)

(declare-fun b!698259 () Bool)

(declare-fun tp!212712 () Bool)

(declare-fun mapValue!3409 () List!7710)

(declare-fun e!440387 () Bool)

(declare-fun tp!212711 () Bool)

(assert (=> b!698259 (= e!440387 (and tp!212712 (inv!9840 (_2!4568 (_1!4569 (h!13097 mapValue!3409)))) e!440386 tp_is_empty!3659 setRes!4093 tp!212711))))

(declare-fun condSetEmpty!4093 () Bool)

(assert (=> b!698259 (= condSetEmpty!4093 (= (_2!4569 (h!13097 mapValue!3409)) ((as const (Array Context!542 Bool)) false)))))

(declare-fun b!698260 () Bool)

(declare-fun e!440384 () Bool)

(declare-fun tp!212705 () Bool)

(assert (=> b!698260 (= e!440384 tp!212705)))

(declare-fun mapIsEmpty!3409 () Bool)

(declare-fun mapRes!3409 () Bool)

(assert (=> mapIsEmpty!3409 mapRes!3409))

(declare-fun setIsEmpty!4093 () Bool)

(assert (=> setIsEmpty!4093 setRes!4093))

(declare-fun mapNonEmpty!3409 () Bool)

(declare-fun tp!212708 () Bool)

(assert (=> mapNonEmpty!3409 (= mapRes!3409 (and tp!212708 e!440387))))

(declare-fun mapKey!3409 () (_ BitVec 32))

(declare-fun mapRest!3409 () (Array (_ BitVec 32) List!7710))

(assert (=> mapNonEmpty!3409 (= mapRest!3400 (store mapRest!3409 mapKey!3409 mapValue!3409))))

(declare-fun b!698262 () Bool)

(declare-fun tp!212709 () Bool)

(assert (=> b!698262 (= e!440386 tp!212709)))

(declare-fun e!440389 () Bool)

(declare-fun b!698263 () Bool)

(declare-fun tp!212710 () Bool)

(declare-fun mapDefault!3409 () List!7710)

(declare-fun e!440385 () Bool)

(declare-fun setRes!4094 () Bool)

(declare-fun tp!212703 () Bool)

(assert (=> b!698263 (= e!440389 (and tp!212710 (inv!9840 (_2!4568 (_1!4569 (h!13097 mapDefault!3409)))) e!440385 tp_is_empty!3659 setRes!4094 tp!212703))))

(declare-fun condSetEmpty!4094 () Bool)

(assert (=> b!698263 (= condSetEmpty!4094 (= (_2!4569 (h!13097 mapDefault!3409)) ((as const (Array Context!542 Bool)) false)))))

(declare-fun condMapEmpty!3409 () Bool)

(assert (=> mapNonEmpty!3398 (= condMapEmpty!3409 (= mapRest!3400 ((as const (Array (_ BitVec 32) List!7710)) mapDefault!3409)))))

(assert (=> mapNonEmpty!3398 (= tp!212533 (and e!440389 mapRes!3409))))

(declare-fun b!698261 () Bool)

(declare-fun e!440388 () Bool)

(declare-fun tp!212706 () Bool)

(assert (=> b!698261 (= e!440388 tp!212706)))

(declare-fun setIsEmpty!4094 () Bool)

(assert (=> setIsEmpty!4094 setRes!4094))

(declare-fun tp!212702 () Bool)

(declare-fun setElem!4093 () Context!542)

(declare-fun setNonEmpty!4093 () Bool)

(assert (=> setNonEmpty!4093 (= setRes!4093 (and tp!212702 (inv!9840 setElem!4093) e!440388))))

(declare-fun setRest!4094 () (InoxSet Context!542))

(assert (=> setNonEmpty!4093 (= (_2!4569 (h!13097 mapValue!3409)) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4093 true) setRest!4094))))

(declare-fun setNonEmpty!4094 () Bool)

(declare-fun tp!212707 () Bool)

(declare-fun setElem!4094 () Context!542)

(assert (=> setNonEmpty!4094 (= setRes!4094 (and tp!212707 (inv!9840 setElem!4094) e!440384))))

(declare-fun setRest!4093 () (InoxSet Context!542))

(assert (=> setNonEmpty!4094 (= (_2!4569 (h!13097 mapDefault!3409)) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4094 true) setRest!4093))))

(declare-fun b!698264 () Bool)

(declare-fun tp!212704 () Bool)

(assert (=> b!698264 (= e!440385 tp!212704)))

(assert (= (and mapNonEmpty!3398 condMapEmpty!3409) mapIsEmpty!3409))

(assert (= (and mapNonEmpty!3398 (not condMapEmpty!3409)) mapNonEmpty!3409))

(assert (= b!698259 b!698262))

(assert (= (and b!698259 condSetEmpty!4093) setIsEmpty!4093))

(assert (= (and b!698259 (not condSetEmpty!4093)) setNonEmpty!4093))

(assert (= setNonEmpty!4093 b!698261))

(assert (= (and mapNonEmpty!3409 ((_ is Cons!7696) mapValue!3409)) b!698259))

(assert (= b!698263 b!698264))

(assert (= (and b!698263 condSetEmpty!4094) setIsEmpty!4094))

(assert (= (and b!698263 (not condSetEmpty!4094)) setNonEmpty!4094))

(assert (= setNonEmpty!4094 b!698260))

(assert (= (and mapNonEmpty!3398 ((_ is Cons!7696) mapDefault!3409)) b!698263))

(declare-fun m!953969 () Bool)

(assert (=> b!698263 m!953969))

(declare-fun m!953971 () Bool)

(assert (=> b!698259 m!953971))

(declare-fun m!953973 () Bool)

(assert (=> mapNonEmpty!3409 m!953973))

(declare-fun m!953975 () Bool)

(assert (=> setNonEmpty!4094 m!953975))

(declare-fun m!953977 () Bool)

(assert (=> setNonEmpty!4093 m!953977))

(declare-fun tp!212714 () Bool)

(declare-fun tp!212716 () Bool)

(declare-fun e!440392 () Bool)

(declare-fun e!440391 () Bool)

(declare-fun setRes!4095 () Bool)

(declare-fun b!698265 () Bool)

(assert (=> b!698265 (= e!440391 (and tp!212716 (inv!9840 (_2!4568 (_1!4569 (h!13097 mapValue!3399)))) e!440392 tp_is_empty!3659 setRes!4095 tp!212714))))

(declare-fun condSetEmpty!4095 () Bool)

(assert (=> b!698265 (= condSetEmpty!4095 (= (_2!4569 (h!13097 mapValue!3399)) ((as const (Array Context!542 Bool)) false)))))

(declare-fun setIsEmpty!4095 () Bool)

(assert (=> setIsEmpty!4095 setRes!4095))

(declare-fun e!440390 () Bool)

(declare-fun tp!212715 () Bool)

(declare-fun setElem!4095 () Context!542)

(declare-fun setNonEmpty!4095 () Bool)

(assert (=> setNonEmpty!4095 (= setRes!4095 (and tp!212715 (inv!9840 setElem!4095) e!440390))))

(declare-fun setRest!4095 () (InoxSet Context!542))

(assert (=> setNonEmpty!4095 (= (_2!4569 (h!13097 mapValue!3399)) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4095 true) setRest!4095))))

(declare-fun b!698267 () Bool)

(declare-fun tp!212713 () Bool)

(assert (=> b!698267 (= e!440390 tp!212713)))

(declare-fun b!698266 () Bool)

(declare-fun tp!212717 () Bool)

(assert (=> b!698266 (= e!440392 tp!212717)))

(assert (=> mapNonEmpty!3398 (= tp!212548 e!440391)))

(assert (= b!698265 b!698266))

(assert (= (and b!698265 condSetEmpty!4095) setIsEmpty!4095))

(assert (= (and b!698265 (not condSetEmpty!4095)) setNonEmpty!4095))

(assert (= setNonEmpty!4095 b!698267))

(assert (= (and mapNonEmpty!3398 ((_ is Cons!7696) mapValue!3399)) b!698265))

(declare-fun m!953979 () Bool)

(assert (=> b!698265 m!953979))

(declare-fun m!953981 () Bool)

(assert (=> setNonEmpty!4095 m!953981))

(declare-fun b!698278 () Bool)

(declare-fun b_free!20101 () Bool)

(declare-fun b_next!20165 () Bool)

(assert (=> b!698278 (= b_free!20101 (not b_next!20165))))

(declare-fun tp!212726 () Bool)

(declare-fun b_and!63895 () Bool)

(assert (=> b!698278 (= tp!212726 b_and!63895)))

(declare-fun b_free!20103 () Bool)

(declare-fun b_next!20167 () Bool)

(assert (=> b!698278 (= b_free!20103 (not b_next!20167))))

(declare-fun tp!212729 () Bool)

(declare-fun b_and!63897 () Bool)

(assert (=> b!698278 (= tp!212729 b_and!63897)))

(declare-fun e!440401 () Bool)

(assert (=> b!698278 (= e!440401 (and tp!212726 tp!212729))))

(declare-fun e!440404 () Bool)

(declare-fun tp!212727 () Bool)

(declare-fun b!698277 () Bool)

(assert (=> b!698277 (= e!440404 (and tp!212727 (inv!9826 (tag!1790 (h!13101 (t!87537 rules!1486)))) (inv!9829 (transformation!1528 (h!13101 (t!87537 rules!1486)))) e!440401))))

(declare-fun b!698276 () Bool)

(declare-fun e!440402 () Bool)

(declare-fun tp!212728 () Bool)

(assert (=> b!698276 (= e!440402 (and e!440404 tp!212728))))

(assert (=> b!697992 (= tp!212541 e!440402)))

(assert (= b!698277 b!698278))

(assert (= b!698276 b!698277))

(assert (= (and b!697992 ((_ is Cons!7700) (t!87537 rules!1486))) b!698276))

(declare-fun m!953983 () Bool)

(assert (=> b!698277 m!953983))

(declare-fun m!953985 () Bool)

(assert (=> b!698277 m!953985))

(declare-fun setIsEmpty!4096 () Bool)

(declare-fun setRes!4096 () Bool)

(assert (=> setIsEmpty!4096 setRes!4096))

(declare-fun b!698280 () Bool)

(declare-fun e!440405 () Bool)

(declare-fun tp!212731 () Bool)

(assert (=> b!698280 (= e!440405 tp!212731)))

(declare-fun b!698279 () Bool)

(declare-fun e!440406 () Bool)

(declare-fun tp!212730 () Bool)

(assert (=> b!698279 (= e!440406 (and setRes!4096 tp!212730))))

(declare-fun condSetEmpty!4096 () Bool)

(assert (=> b!698279 (= condSetEmpty!4096 (= (_1!4566 (_1!4567 (h!13095 (zeroValue!1099 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))))) ((as const (Array Context!542 Bool)) false)))))

(declare-fun setElem!4096 () Context!542)

(declare-fun tp!212732 () Bool)

(declare-fun setNonEmpty!4096 () Bool)

(assert (=> setNonEmpty!4096 (= setRes!4096 (and tp!212732 (inv!9840 setElem!4096) e!440405))))

(declare-fun setRest!4096 () (InoxSet Context!542))

(assert (=> setNonEmpty!4096 (= (_1!4566 (_1!4567 (h!13095 (zeroValue!1099 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4096 true) setRest!4096))))

(assert (=> b!697966 (= tp!212537 e!440406)))

(assert (= (and b!698279 condSetEmpty!4096) setIsEmpty!4096))

(assert (= (and b!698279 (not condSetEmpty!4096)) setNonEmpty!4096))

(assert (= setNonEmpty!4096 b!698280))

(assert (= (and b!697966 ((_ is Cons!7694) (zeroValue!1099 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74)))))))) b!698279))

(declare-fun m!953987 () Bool)

(assert (=> setNonEmpty!4096 m!953987))

(declare-fun setIsEmpty!4097 () Bool)

(declare-fun setRes!4097 () Bool)

(assert (=> setIsEmpty!4097 setRes!4097))

(declare-fun b!698282 () Bool)

(declare-fun e!440407 () Bool)

(declare-fun tp!212734 () Bool)

(assert (=> b!698282 (= e!440407 tp!212734)))

(declare-fun b!698281 () Bool)

(declare-fun e!440408 () Bool)

(declare-fun tp!212733 () Bool)

(assert (=> b!698281 (= e!440408 (and setRes!4097 tp!212733))))

(declare-fun condSetEmpty!4097 () Bool)

(assert (=> b!698281 (= condSetEmpty!4097 (= (_1!4566 (_1!4567 (h!13095 (minValue!1099 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))))) ((as const (Array Context!542 Bool)) false)))))

(declare-fun setNonEmpty!4097 () Bool)

(declare-fun setElem!4097 () Context!542)

(declare-fun tp!212735 () Bool)

(assert (=> setNonEmpty!4097 (= setRes!4097 (and tp!212735 (inv!9840 setElem!4097) e!440407))))

(declare-fun setRest!4097 () (InoxSet Context!542))

(assert (=> setNonEmpty!4097 (= (_1!4566 (_1!4567 (h!13095 (minValue!1099 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4097 true) setRest!4097))))

(assert (=> b!697966 (= tp!212535 e!440408)))

(assert (= (and b!698281 condSetEmpty!4097) setIsEmpty!4097))

(assert (= (and b!698281 (not condSetEmpty!4097)) setNonEmpty!4097))

(assert (= setNonEmpty!4097 b!698282))

(assert (= (and b!697966 ((_ is Cons!7694) (minValue!1099 (v!17821 (underlying!1867 (v!17822 (underlying!1868 (cache!1201 cacheFindLongestMatch!74)))))))) b!698281))

(declare-fun m!953989 () Bool)

(assert (=> setNonEmpty!4097 m!953989))

(declare-fun tp!212738 () Bool)

(declare-fun b!698283 () Bool)

(declare-fun tp!212736 () Bool)

(declare-fun e!440410 () Bool)

(assert (=> b!698283 (= e!440410 (and (inv!9830 (left!6073 (c!121980 treated!50))) tp!212736 (inv!9830 (right!6403 (c!121980 treated!50))) tp!212738))))

(declare-fun b!698285 () Bool)

(declare-fun e!440409 () Bool)

(declare-fun tp!212737 () Bool)

(assert (=> b!698285 (= e!440409 tp!212737)))

(declare-fun b!698284 () Bool)

(assert (=> b!698284 (= e!440410 (and (inv!9841 (xs!5347 (c!121980 treated!50))) e!440409))))

(assert (=> b!697977 (= tp!212534 (and (inv!9830 (c!121980 treated!50)) e!440410))))

(assert (= (and b!697977 ((_ is Node!2694) (c!121980 treated!50))) b!698283))

(assert (= b!698284 b!698285))

(assert (= (and b!697977 ((_ is Leaf!3982) (c!121980 treated!50))) b!698284))

(declare-fun m!953991 () Bool)

(assert (=> b!698283 m!953991))

(declare-fun m!953993 () Bool)

(assert (=> b!698283 m!953993))

(declare-fun m!953995 () Bool)

(assert (=> b!698284 m!953995))

(assert (=> b!697977 m!953671))

(declare-fun setIsEmpty!4098 () Bool)

(declare-fun setRes!4098 () Bool)

(assert (=> setIsEmpty!4098 setRes!4098))

(declare-fun b!698287 () Bool)

(declare-fun e!440411 () Bool)

(declare-fun tp!212740 () Bool)

(assert (=> b!698287 (= e!440411 tp!212740)))

(declare-fun b!698286 () Bool)

(declare-fun e!440412 () Bool)

(declare-fun tp!212739 () Bool)

(assert (=> b!698286 (= e!440412 (and setRes!4098 tp!212739))))

(declare-fun condSetEmpty!4098 () Bool)

(assert (=> b!698286 (= condSetEmpty!4098 (= (_1!4566 (_1!4567 (h!13095 mapDefault!3398))) ((as const (Array Context!542 Bool)) false)))))

(declare-fun tp!212741 () Bool)

(declare-fun setElem!4098 () Context!542)

(declare-fun setNonEmpty!4098 () Bool)

(assert (=> setNonEmpty!4098 (= setRes!4098 (and tp!212741 (inv!9840 setElem!4098) e!440411))))

(declare-fun setRest!4098 () (InoxSet Context!542))

(assert (=> setNonEmpty!4098 (= (_1!4566 (_1!4567 (h!13095 mapDefault!3398))) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4098 true) setRest!4098))))

(assert (=> b!697956 (= tp!212542 e!440412)))

(assert (= (and b!698286 condSetEmpty!4098) setIsEmpty!4098))

(assert (= (and b!698286 (not condSetEmpty!4098)) setNonEmpty!4098))

(assert (= setNonEmpty!4098 b!698287))

(assert (= (and b!697956 ((_ is Cons!7694) mapDefault!3398)) b!698286))

(declare-fun m!953997 () Bool)

(assert (=> setNonEmpty!4098 m!953997))

(declare-fun setIsEmpty!4099 () Bool)

(declare-fun setRes!4099 () Bool)

(assert (=> setIsEmpty!4099 setRes!4099))

(declare-fun b!698288 () Bool)

(declare-fun e!440415 () Bool)

(declare-fun tp!212743 () Bool)

(assert (=> b!698288 (= e!440415 tp!212743)))

(declare-fun tp!212745 () Bool)

(declare-fun setNonEmpty!4099 () Bool)

(declare-fun setElem!4099 () Context!542)

(declare-fun e!440414 () Bool)

(assert (=> setNonEmpty!4099 (= setRes!4099 (and tp!212745 (inv!9840 setElem!4099) e!440414))))

(declare-fun setRest!4099 () (InoxSet Context!542))

(assert (=> setNonEmpty!4099 (= (_2!4572 (h!13099 (zeroValue!1101 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4099 true) setRest!4099))))

(declare-fun e!440413 () Bool)

(assert (=> b!697995 (= tp!212525 e!440413)))

(declare-fun b!698289 () Bool)

(declare-fun tp!212744 () Bool)

(assert (=> b!698289 (= e!440414 tp!212744)))

(declare-fun b!698290 () Bool)

(declare-fun tp!212742 () Bool)

(assert (=> b!698290 (= e!440413 (and (inv!9840 (_1!4571 (_1!4572 (h!13099 (zeroValue!1101 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502)))))))))) e!440415 tp_is_empty!3659 setRes!4099 tp!212742))))

(declare-fun condSetEmpty!4099 () Bool)

(assert (=> b!698290 (= condSetEmpty!4099 (= (_2!4572 (h!13099 (zeroValue!1101 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502)))))))) ((as const (Array Context!542 Bool)) false)))))

(assert (= b!698290 b!698288))

(assert (= (and b!698290 condSetEmpty!4099) setIsEmpty!4099))

(assert (= (and b!698290 (not condSetEmpty!4099)) setNonEmpty!4099))

(assert (= setNonEmpty!4099 b!698289))

(assert (= (and b!697995 ((_ is Cons!7698) (zeroValue!1101 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502)))))))) b!698290))

(declare-fun m!953999 () Bool)

(assert (=> setNonEmpty!4099 m!953999))

(declare-fun m!954001 () Bool)

(assert (=> b!698290 m!954001))

(declare-fun setIsEmpty!4100 () Bool)

(declare-fun setRes!4100 () Bool)

(assert (=> setIsEmpty!4100 setRes!4100))

(declare-fun b!698291 () Bool)

(declare-fun e!440418 () Bool)

(declare-fun tp!212747 () Bool)

(assert (=> b!698291 (= e!440418 tp!212747)))

(declare-fun e!440417 () Bool)

(declare-fun setElem!4100 () Context!542)

(declare-fun tp!212749 () Bool)

(declare-fun setNonEmpty!4100 () Bool)

(assert (=> setNonEmpty!4100 (= setRes!4100 (and tp!212749 (inv!9840 setElem!4100) e!440417))))

(declare-fun setRest!4100 () (InoxSet Context!542))

(assert (=> setNonEmpty!4100 (= (_2!4572 (h!13099 (minValue!1101 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!542 Bool)) false) setElem!4100 true) setRest!4100))))

(declare-fun e!440416 () Bool)

(assert (=> b!697995 (= tp!212545 e!440416)))

(declare-fun b!698292 () Bool)

(declare-fun tp!212748 () Bool)

(assert (=> b!698292 (= e!440417 tp!212748)))

(declare-fun b!698293 () Bool)

(declare-fun tp!212746 () Bool)

(assert (=> b!698293 (= e!440416 (and (inv!9840 (_1!4571 (_1!4572 (h!13099 (minValue!1101 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502)))))))))) e!440418 tp_is_empty!3659 setRes!4100 tp!212746))))

(declare-fun condSetEmpty!4100 () Bool)

(assert (=> b!698293 (= condSetEmpty!4100 (= (_2!4572 (h!13099 (minValue!1101 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502)))))))) ((as const (Array Context!542 Bool)) false)))))

(assert (= b!698293 b!698291))

(assert (= (and b!698293 condSetEmpty!4100) setIsEmpty!4100))

(assert (= (and b!698293 (not condSetEmpty!4100)) setNonEmpty!4100))

(assert (= setNonEmpty!4100 b!698292))

(assert (= (and b!697995 ((_ is Cons!7698) (minValue!1101 (v!17824 (underlying!1869 (v!17825 (underlying!1870 (cache!1202 cacheUp!502)))))))) b!698293))

(declare-fun m!954003 () Bool)

(assert (=> setNonEmpty!4100 m!954003))

(declare-fun m!954005 () Bool)

(assert (=> b!698293 m!954005))

(declare-fun b!698302 () Bool)

(declare-fun e!440424 () Bool)

(declare-fun tp!212758 () Bool)

(declare-fun tp!212757 () Bool)

(assert (=> b!698302 (= e!440424 (and (inv!9835 (left!6074 (c!121981 acc!372))) tp!212758 (inv!9835 (right!6404 (c!121981 acc!372))) tp!212757))))

(declare-fun b!698304 () Bool)

(declare-fun e!440423 () Bool)

(declare-fun tp!212756 () Bool)

(assert (=> b!698304 (= e!440423 tp!212756)))

(declare-fun b!698303 () Bool)

(declare-fun inv!9842 (IArray!5391) Bool)

(assert (=> b!698303 (= e!440424 (and (inv!9842 (xs!5348 (c!121981 acc!372))) e!440423))))

(assert (=> b!697994 (= tp!212532 (and (inv!9835 (c!121981 acc!372)) e!440424))))

(assert (= (and b!697994 ((_ is Node!2695) (c!121981 acc!372))) b!698302))

(assert (= b!698303 b!698304))

(assert (= (and b!697994 ((_ is Leaf!3983) (c!121981 acc!372))) b!698303))

(declare-fun m!954007 () Bool)

(assert (=> b!698302 m!954007))

(declare-fun m!954009 () Bool)

(assert (=> b!698302 m!954009))

(declare-fun m!954011 () Bool)

(assert (=> b!698303 m!954011))

(assert (=> b!697994 m!953639))

(check-sat (not b!698265) (not d!233514) (not b_next!20151) (not b!698149) (not b!697983) (not d!233494) (not d!233590) (not b!698002) (not b!698266) b_and!63887 (not d!233520) (not b!698135) (not b!698229) (not b_next!20165) (not d!233512) b_and!63881 (not b!698106) (not b!698024) (not b!698164) (not d!233566) (not b!698286) (not b!698105) b_and!63883 (not setNonEmpty!4086) (not b!698102) (not setNonEmpty!4079) (not b!698103) (not setNonEmpty!4085) (not b!698243) (not b!698200) (not d!233576) (not b_next!20159) (not b!698231) (not b!698263) (not b!698259) (not b!698131) (not b!698237) (not b!698088) (not b!697965) (not b!698276) (not b!697977) (not setNonEmpty!4080) (not b!698112) (not d!233510) (not d!233572) (not b!698023) (not b!698059) (not b!698048) (not b!698244) (not b!698008) (not b!698199) (not b!698230) (not b!697999) (not b!698101) (not b!698068) (not d!233588) (not bm!43667) (not b!698011) (not b!698211) (not b!698284) (not b_next!20153) b_and!63885 (not b!698228) (not d!233540) (not b!698289) (not b_next!20167) b_and!63889 (not d!233518) (not b!698012) (not b!698201) (not b!698140) (not b!698304) (not b!698151) (not b!698133) (not b!697994) (not b!698292) (not b!698051) (not d!233524) (not b!698125) (not b!698070) (not d!233544) (not b!698094) (not b!698173) (not b!698127) (not b!698098) (not b!698005) (not b!698241) (not setNonEmpty!4099) (not b!698261) (not b!698093) (not d!233550) (not b!698260) (not b!698242) (not b!698123) (not d!233528) (not d!233522) (not d!233558) (not b!698302) (not b!698184) (not b!698183) (not b!698040) (not b!698186) (not d!233560) (not b!698303) (not setNonEmpty!4094) (not b!698282) (not setNonEmpty!4076) (not setNonEmpty!4100) (not b!698084) (not b!698047) (not d!233496) (not b!698132) (not b!698239) (not d!233530) (not setNonEmpty!4096) (not b_next!20149) (not b!698163) b_and!63893 (not b_next!20155) (not b!698130) (not b!698281) (not b!698129) (not b!698232) (not b!697964) (not d!233554) (not b!698138) (not d!233552) (not setNonEmpty!4087) (not b!698264) (not b!698238) (not b!698185) (not b!698100) (not b!698150) (not b!698061) (not b!698227) (not d!233500) (not setNonEmpty!4067) (not b!698039) (not b!698108) (not setNonEmpty!4088) (not b!698234) (not b!698236) (not b!698287) (not d!233562) (not b!698212) (not b!698087) (not b!698041) (not b!698285) (not b!698291) (not b!698280) (not b!698043) (not b!698122) (not d!233564) (not b_next!20157) (not b!698235) (not bm!43668) (not mapNonEmpty!3409) (not b!698277) (not b!698262) (not b!698086) (not d!233516) (not setNonEmpty!4095) (not b!698172) (not b!698210) (not b!698137) (not b!698042) (not b!698128) b_and!63895 (not setNonEmpty!4093) (not b!698288) (not d!233506) (not b!698046) (not b!698021) (not b!698162) (not d!233508) (not b_next!20163) (not b!698050) (not b!698182) (not setNonEmpty!4098) (not setNonEmpty!4073) (not mapNonEmpty!3403) (not b!698049) (not b!698165) b_and!63891 b_and!63879 (not setNonEmpty!4097) (not b!698022) (not setNonEmpty!4072) (not b!698107) (not b!698233) (not d!233574) (not mapNonEmpty!3406) (not b!698290) (not b!698283) (not b!698104) (not b!698187) (not b!698044) (not d!233526) tp_is_empty!3659 (not b!698267) (not b!698279) b_and!63897 (not b_next!20161) (not d!233534) (not b!698293) (not b!698240) (not d!233568) (not d!233594) (not d!233504))
(check-sat (not b_next!20151) b_and!63887 b_and!63883 (not b_next!20159) (not b_next!20157) b_and!63895 b_and!63879 b_and!63881 (not b_next!20165) (not b_next!20153) b_and!63885 (not b_next!20167) b_and!63889 (not b_next!20149) b_and!63893 (not b_next!20155) b_and!63891 (not b_next!20163) (not b_next!20161) b_and!63897)
