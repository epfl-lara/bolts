; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66552 () Bool)

(assert start!66552)

(declare-fun b!697097 () Bool)

(declare-fun b_free!20017 () Bool)

(declare-fun b_next!20081 () Bool)

(assert (=> b!697097 (= b_free!20017 (not b_next!20081))))

(declare-fun tp!211972 () Bool)

(declare-fun b_and!63811 () Bool)

(assert (=> b!697097 (= tp!211972 b_and!63811)))

(declare-fun b!697116 () Bool)

(declare-fun b_free!20019 () Bool)

(declare-fun b_next!20083 () Bool)

(assert (=> b!697116 (= b_free!20019 (not b_next!20083))))

(declare-fun tp!211975 () Bool)

(declare-fun b_and!63813 () Bool)

(assert (=> b!697116 (= tp!211975 b_and!63813)))

(declare-fun b!697113 () Bool)

(declare-fun b_free!20021 () Bool)

(declare-fun b_next!20085 () Bool)

(assert (=> b!697113 (= b_free!20021 (not b_next!20085))))

(declare-fun tp!211982 () Bool)

(declare-fun b_and!63815 () Bool)

(assert (=> b!697113 (= tp!211982 b_and!63815)))

(declare-fun b_free!20023 () Bool)

(declare-fun b_next!20087 () Bool)

(assert (=> b!697113 (= b_free!20023 (not b_next!20087))))

(declare-fun tp!211969 () Bool)

(declare-fun b_and!63817 () Bool)

(assert (=> b!697113 (= tp!211969 b_and!63817)))

(declare-fun b!697119 () Bool)

(declare-fun b_free!20025 () Bool)

(declare-fun b_next!20089 () Bool)

(assert (=> b!697119 (= b_free!20025 (not b_next!20089))))

(declare-fun tp!211959 () Bool)

(declare-fun b_and!63819 () Bool)

(assert (=> b!697119 (= tp!211959 b_and!63819)))

(declare-fun b!697109 () Bool)

(declare-fun b_free!20027 () Bool)

(declare-fun b_next!20091 () Bool)

(assert (=> b!697109 (= b_free!20027 (not b_next!20091))))

(declare-fun tp!211967 () Bool)

(declare-fun b_and!63821 () Bool)

(assert (=> b!697109 (= tp!211967 b_and!63821)))

(declare-fun b!697111 () Bool)

(declare-fun b_free!20029 () Bool)

(declare-fun b_next!20093 () Bool)

(assert (=> b!697111 (= b_free!20029 (not b_next!20093))))

(declare-fun tp!211973 () Bool)

(declare-fun b_and!63823 () Bool)

(assert (=> b!697111 (= tp!211973 b_and!63823)))

(declare-fun b!697108 () Bool)

(declare-fun b_free!20031 () Bool)

(declare-fun b_next!20095 () Bool)

(assert (=> b!697108 (= b_free!20031 (not b_next!20095))))

(declare-fun tp!211983 () Bool)

(declare-fun b_and!63825 () Bool)

(assert (=> b!697108 (= tp!211983 b_and!63825)))

(declare-fun b!697088 () Bool)

(declare-fun e!439475 () Bool)

(declare-fun e!439499 () Bool)

(assert (=> b!697088 (= e!439475 e!439499)))

(declare-fun b!697089 () Bool)

(declare-fun e!439492 () Bool)

(declare-fun e!439503 () Bool)

(assert (=> b!697089 (= e!439492 e!439503)))

(declare-fun b!697090 () Bool)

(declare-fun e!439493 () Bool)

(declare-fun e!439508 () Bool)

(declare-datatypes ((C!4332 0))(
  ( (C!4333 (val!2396 Int)) )
))
(declare-datatypes ((Regex!1865 0))(
  ( (ElementMatch!1865 (c!121937 C!4332)) (Concat!3434 (regOne!4242 Regex!1865) (regTwo!4242 Regex!1865)) (EmptyExpr!1865) (Star!1865 (reg!2194 Regex!1865)) (EmptyLang!1865) (Union!1865 (regOne!4243 Regex!1865) (regTwo!4243 Regex!1865)) )
))
(declare-datatypes ((List!7679 0))(
  ( (Nil!7665) (Cons!7665 (h!13066 Regex!1865) (t!87502 List!7679)) )
))
(declare-datatypes ((Context!534 0))(
  ( (Context!535 (exprs!767 List!7679)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!8164 0))(
  ( (tuple2!8165 (_1!4534 (InoxSet Context!534)) (_2!4534 Int)) )
))
(declare-datatypes ((tuple2!8166 0))(
  ( (tuple2!8167 (_1!4535 tuple2!8164) (_2!4535 Int)) )
))
(declare-datatypes ((array!3073 0))(
  ( (array!3074 (arr!1386 (Array (_ BitVec 32) (_ BitVec 64))) (size!6249 (_ BitVec 32))) )
))
(declare-datatypes ((List!7680 0))(
  ( (Nil!7666) (Cons!7666 (h!13067 tuple2!8166) (t!87503 List!7680)) )
))
(declare-datatypes ((array!3075 0))(
  ( (array!3076 (arr!1387 (Array (_ BitVec 32) List!7680)) (size!6250 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1662 0))(
  ( (LongMapFixedSize!1663 (defaultEntry!1187 Int) (mask!2648 (_ BitVec 32)) (extraKeys!1078 (_ BitVec 32)) (zeroValue!1088 List!7680) (minValue!1088 List!7680) (_size!1771 (_ BitVec 32)) (_keys!1125 array!3073) (_values!1110 array!3075) (_vacant!892 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3265 0))(
  ( (Cell!3266 (v!17796 LongMapFixedSize!1662)) )
))
(declare-datatypes ((MutLongMap!831 0))(
  ( (LongMap!831 (underlying!1845 Cell!3265)) (MutLongMapExt!830 (__x!5627 Int)) )
))
(declare-fun lt!286127 () MutLongMap!831)

(get-info :version)

(assert (=> b!697090 (= e!439493 (and e!439508 ((_ is LongMap!831) lt!286127)))))

(declare-datatypes ((List!7681 0))(
  ( (Nil!7667) (Cons!7667 (h!13068 C!4332) (t!87504 List!7681)) )
))
(declare-datatypes ((IArray!5377 0))(
  ( (IArray!5378 (innerList!2746 List!7681)) )
))
(declare-datatypes ((Hashable!803 0))(
  ( (HashableExt!802 (__x!5628 Int)) )
))
(declare-datatypes ((Conc!2688 0))(
  ( (Node!2688 (left!6063 Conc!2688) (right!6393 Conc!2688) (csize!5606 Int) (cheight!2899 Int)) (Leaf!3974 (xs!5341 IArray!5377) (csize!5607 Int)) (Empty!2688) )
))
(declare-datatypes ((BalanceConc!5388 0))(
  ( (BalanceConc!5389 (c!121938 Conc!2688)) )
))
(declare-datatypes ((Cell!3267 0))(
  ( (Cell!3268 (v!17797 MutLongMap!831)) )
))
(declare-datatypes ((MutableMap!803 0))(
  ( (MutableMapExt!802 (__x!5629 Int)) (HashMap!803 (underlying!1846 Cell!3267) (hashF!2711 Hashable!803) (_size!1772 (_ BitVec 32)) (defaultValue!954 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!84 0))(
  ( (CacheFindLongestMatch!85 (cache!1190 MutableMap!803) (totalInput!1828 BalanceConc!5388)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!84)

(assert (=> b!697090 (= lt!286127 (v!17797 (underlying!1846 (cache!1190 cacheFindLongestMatch!74))))))

(declare-fun b!697091 () Bool)

(declare-fun e!439474 () Bool)

(declare-fun e!439498 () Bool)

(declare-datatypes ((tuple3!756 0))(
  ( (tuple3!757 (_1!4536 Regex!1865) (_2!4536 Context!534) (_3!452 C!4332)) )
))
(declare-datatypes ((tuple2!8168 0))(
  ( (tuple2!8169 (_1!4537 tuple3!756) (_2!4537 (InoxSet Context!534))) )
))
(declare-datatypes ((List!7682 0))(
  ( (Nil!7668) (Cons!7668 (h!13069 tuple2!8168) (t!87505 List!7682)) )
))
(declare-datatypes ((array!3077 0))(
  ( (array!3078 (arr!1388 (Array (_ BitVec 32) List!7682)) (size!6251 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1664 0))(
  ( (LongMapFixedSize!1665 (defaultEntry!1188 Int) (mask!2649 (_ BitVec 32)) (extraKeys!1079 (_ BitVec 32)) (zeroValue!1089 List!7682) (minValue!1089 List!7682) (_size!1773 (_ BitVec 32)) (_keys!1126 array!3073) (_values!1111 array!3077) (_vacant!893 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3269 0))(
  ( (Cell!3270 (v!17798 LongMapFixedSize!1664)) )
))
(declare-datatypes ((MutLongMap!832 0))(
  ( (LongMap!832 (underlying!1847 Cell!3269)) (MutLongMapExt!831 (__x!5630 Int)) )
))
(declare-fun lt!286132 () MutLongMap!832)

(assert (=> b!697091 (= e!439474 (and e!439498 ((_ is LongMap!832) lt!286132)))))

(declare-datatypes ((Cell!3271 0))(
  ( (Cell!3272 (v!17799 MutLongMap!832)) )
))
(declare-datatypes ((Hashable!804 0))(
  ( (HashableExt!803 (__x!5631 Int)) )
))
(declare-datatypes ((MutableMap!804 0))(
  ( (MutableMapExt!803 (__x!5632 Int)) (HashMap!804 (underlying!1848 Cell!3271) (hashF!2712 Hashable!804) (_size!1774 (_ BitVec 32)) (defaultValue!955 Int)) )
))
(declare-datatypes ((CacheDown!428 0))(
  ( (CacheDown!429 (cache!1191 MutableMap!804)) )
))
(declare-fun cacheDown!515 () CacheDown!428)

(assert (=> b!697091 (= lt!286132 (v!17799 (underlying!1848 (cache!1191 cacheDown!515))))))

(declare-fun b!697092 () Bool)

(declare-fun e!439494 () Bool)

(declare-fun tp!211958 () Bool)

(declare-fun mapRes!3355 () Bool)

(assert (=> b!697092 (= e!439494 (and tp!211958 mapRes!3355))))

(declare-fun condMapEmpty!3355 () Bool)

(declare-fun mapDefault!3354 () List!7682)

(assert (=> b!697092 (= condMapEmpty!3355 (= (arr!1388 (_values!1111 (v!17798 (underlying!1847 (v!17799 (underlying!1848 (cache!1191 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7682)) mapDefault!3354)))))

(declare-fun b!697093 () Bool)

(declare-fun res!315355 () Bool)

(declare-fun e!439483 () Bool)

(assert (=> b!697093 (=> (not res!315355) (not e!439483))))

(declare-datatypes ((List!7683 0))(
  ( (Nil!7669) (Cons!7669 (h!13070 (_ BitVec 16)) (t!87506 List!7683)) )
))
(declare-datatypes ((TokenValue!1569 0))(
  ( (FloatLiteralValue!3138 (text!11428 List!7683)) (TokenValueExt!1568 (__x!5633 Int)) (Broken!7845 (value!49102 List!7683)) (Object!1582) (End!1569) (Def!1569) (Underscore!1569) (Match!1569) (Else!1569) (Error!1569) (Case!1569) (If!1569) (Extends!1569) (Abstract!1569) (Class!1569) (Val!1569) (DelimiterValue!3138 (del!1629 List!7683)) (KeywordValue!1575 (value!49103 List!7683)) (CommentValue!3138 (value!49104 List!7683)) (WhitespaceValue!3138 (value!49105 List!7683)) (IndentationValue!1569 (value!49106 List!7683)) (String!9572) (Int32!1569) (Broken!7846 (value!49107 List!7683)) (Boolean!1570) (Unit!12700) (OperatorValue!1572 (op!1629 List!7683)) (IdentifierValue!3138 (value!49108 List!7683)) (IdentifierValue!3139 (value!49109 List!7683)) (WhitespaceValue!3139 (value!49110 List!7683)) (True!3138) (False!3138) (Broken!7847 (value!49111 List!7683)) (Broken!7848 (value!49112 List!7683)) (True!3139) (RightBrace!1569) (RightBracket!1569) (Colon!1569) (Null!1569) (Comma!1569) (LeftBracket!1569) (False!3139) (LeftBrace!1569) (ImaginaryLiteralValue!1569 (text!11429 List!7683)) (StringLiteralValue!4707 (value!49113 List!7683)) (EOFValue!1569 (value!49114 List!7683)) (IdentValue!1569 (value!49115 List!7683)) (DelimiterValue!3139 (value!49116 List!7683)) (DedentValue!1569 (value!49117 List!7683)) (NewLineValue!1569 (value!49118 List!7683)) (IntegerValue!4707 (value!49119 (_ BitVec 32)) (text!11430 List!7683)) (IntegerValue!4708 (value!49120 Int) (text!11431 List!7683)) (Times!1569) (Or!1569) (Equal!1569) (Minus!1569) (Broken!7849 (value!49121 List!7683)) (And!1569) (Div!1569) (LessEqual!1569) (Mod!1569) (Concat!3435) (Not!1569) (Plus!1569) (SpaceValue!1569 (value!49122 List!7683)) (IntegerValue!4709 (value!49123 Int) (text!11432 List!7683)) (StringLiteralValue!4708 (text!11433 List!7683)) (FloatLiteralValue!3139 (text!11434 List!7683)) (BytesLiteralValue!1569 (value!49124 List!7683)) (CommentValue!3139 (value!49125 List!7683)) (StringLiteralValue!4709 (value!49126 List!7683)) (ErrorTokenValue!1569 (msg!1630 List!7683)) )
))
(declare-datatypes ((String!9573 0))(
  ( (String!9574 (value!49127 String)) )
))
(declare-datatypes ((TokenValueInjection!2874 0))(
  ( (TokenValueInjection!2875 (toValue!2489 Int) (toChars!2348 Int)) )
))
(declare-datatypes ((Rule!2850 0))(
  ( (Rule!2851 (regex!1525 Regex!1865) (tag!1787 String!9573) (isSeparator!1525 Bool) (transformation!1525 TokenValueInjection!2874)) )
))
(declare-datatypes ((List!7684 0))(
  ( (Nil!7670) (Cons!7670 (h!13071 Rule!2850) (t!87507 List!7684)) )
))
(declare-fun rules!1486 () List!7684)

(declare-fun isEmpty!4914 (List!7684) Bool)

(assert (=> b!697093 (= res!315355 (not (isEmpty!4914 rules!1486)))))

(declare-fun mapIsEmpty!3354 () Bool)

(assert (=> mapIsEmpty!3354 mapRes!3355))

(declare-fun e!439482 () Bool)

(declare-fun b!697094 () Bool)

(declare-fun e!439477 () Bool)

(declare-fun e!439510 () Bool)

(declare-fun inv!9797 (BalanceConc!5388) Bool)

(assert (=> b!697094 (= e!439482 (and e!439510 (inv!9797 (totalInput!1828 cacheFindLongestMatch!74)) e!439477))))

(declare-fun b!697095 () Bool)

(declare-fun e!439486 () Bool)

(declare-fun tp!211981 () Bool)

(declare-fun mapRes!3353 () Bool)

(assert (=> b!697095 (= e!439486 (and tp!211981 mapRes!3353))))

(declare-fun condMapEmpty!3354 () Bool)

(declare-fun mapDefault!3355 () List!7680)

(assert (=> b!697095 (= condMapEmpty!3354 (= (arr!1387 (_values!1110 (v!17796 (underlying!1845 (v!17797 (underlying!1846 (cache!1190 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7680)) mapDefault!3355)))))

(declare-fun b!697096 () Bool)

(declare-fun e!439502 () Bool)

(declare-fun e!439500 () Bool)

(assert (=> b!697096 (= e!439502 (not e!439500))))

(declare-fun res!315352 () Bool)

(assert (=> b!697096 (=> res!315352 e!439500)))

(declare-fun lt!286124 () List!7681)

(declare-fun lt!286123 () List!7681)

(declare-fun isSuffix!143 (List!7681 List!7681) Bool)

(assert (=> b!697096 (= res!315352 (not (isSuffix!143 lt!286124 lt!286123)))))

(declare-fun lt!286125 () List!7681)

(assert (=> b!697096 (isSuffix!143 lt!286124 lt!286125)))

(declare-datatypes ((Unit!12701 0))(
  ( (Unit!12702) )
))
(declare-fun lt!286126 () Unit!12701)

(declare-fun lt!286122 () List!7681)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!143 (List!7681 List!7681) Unit!12701)

(assert (=> b!697096 (= lt!286126 (lemmaConcatTwoListThenFSndIsSuffix!143 lt!286122 lt!286124))))

(declare-fun tp!211963 () Bool)

(declare-fun tp!211979 () Bool)

(declare-fun e!439504 () Bool)

(declare-fun array_inv!1021 (array!3073) Bool)

(declare-fun array_inv!1022 (array!3077) Bool)

(assert (=> b!697097 (= e!439504 (and tp!211972 tp!211963 tp!211979 (array_inv!1021 (_keys!1126 (v!17798 (underlying!1847 (v!17799 (underlying!1848 (cache!1191 cacheDown!515))))))) (array_inv!1022 (_values!1111 (v!17798 (underlying!1847 (v!17799 (underlying!1848 (cache!1191 cacheDown!515))))))) e!439494))))

(declare-fun mapNonEmpty!3353 () Bool)

(declare-fun mapRes!3354 () Bool)

(declare-fun tp!211977 () Bool)

(declare-fun tp!211970 () Bool)

(assert (=> mapNonEmpty!3353 (= mapRes!3354 (and tp!211977 tp!211970))))

(declare-datatypes ((tuple2!8170 0))(
  ( (tuple2!8171 (_1!4538 Context!534) (_2!4538 C!4332)) )
))
(declare-datatypes ((tuple2!8172 0))(
  ( (tuple2!8173 (_1!4539 tuple2!8170) (_2!4539 (InoxSet Context!534))) )
))
(declare-datatypes ((List!7685 0))(
  ( (Nil!7671) (Cons!7671 (h!13072 tuple2!8172) (t!87508 List!7685)) )
))
(declare-fun mapRest!3354 () (Array (_ BitVec 32) List!7685))

(declare-fun mapKey!3355 () (_ BitVec 32))

(declare-fun mapValue!3355 () List!7685)

(declare-datatypes ((array!3079 0))(
  ( (array!3080 (arr!1389 (Array (_ BitVec 32) List!7685)) (size!6252 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1666 0))(
  ( (LongMapFixedSize!1667 (defaultEntry!1189 Int) (mask!2650 (_ BitVec 32)) (extraKeys!1080 (_ BitVec 32)) (zeroValue!1090 List!7685) (minValue!1090 List!7685) (_size!1775 (_ BitVec 32)) (_keys!1127 array!3073) (_values!1112 array!3079) (_vacant!894 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3273 0))(
  ( (Cell!3274 (v!17800 LongMapFixedSize!1666)) )
))
(declare-datatypes ((MutLongMap!833 0))(
  ( (LongMap!833 (underlying!1849 Cell!3273)) (MutLongMapExt!832 (__x!5634 Int)) )
))
(declare-datatypes ((Hashable!805 0))(
  ( (HashableExt!804 (__x!5635 Int)) )
))
(declare-datatypes ((Cell!3275 0))(
  ( (Cell!3276 (v!17801 MutLongMap!833)) )
))
(declare-datatypes ((MutableMap!805 0))(
  ( (MutableMapExt!804 (__x!5636 Int)) (HashMap!805 (underlying!1850 Cell!3275) (hashF!2713 Hashable!805) (_size!1776 (_ BitVec 32)) (defaultValue!956 Int)) )
))
(declare-datatypes ((CacheUp!420 0))(
  ( (CacheUp!421 (cache!1192 MutableMap!805)) )
))
(declare-fun cacheUp!502 () CacheUp!420)

(assert (=> mapNonEmpty!3353 (= (arr!1389 (_values!1112 (v!17800 (underlying!1849 (v!17801 (underlying!1850 (cache!1192 cacheUp!502))))))) (store mapRest!3354 mapKey!3355 mapValue!3355))))

(declare-fun b!697098 () Bool)

(declare-fun res!315356 () Bool)

(assert (=> b!697098 (=> (not res!315356) (not e!439502))))

(declare-fun valid!705 (CacheUp!420) Bool)

(assert (=> b!697098 (= res!315356 (valid!705 cacheUp!502))))

(declare-fun b!697099 () Bool)

(declare-fun e!439481 () Bool)

(declare-fun totalInput!378 () BalanceConc!5388)

(declare-fun tp!211961 () Bool)

(declare-fun inv!9798 (Conc!2688) Bool)

(assert (=> b!697099 (= e!439481 (and (inv!9798 (c!121938 totalInput!378)) tp!211961))))

(declare-fun b!697100 () Bool)

(declare-fun e!439495 () Bool)

(assert (=> b!697100 (= e!439500 e!439495)))

(declare-fun res!315359 () Bool)

(assert (=> b!697100 (=> res!315359 e!439495)))

(declare-datatypes ((Token!2748 0))(
  ( (Token!2749 (value!49128 TokenValue!1569) (rule!2563 Rule!2850) (size!6253 Int) (originalCharacters!1799 List!7681)) )
))
(declare-datatypes ((tuple2!8174 0))(
  ( (tuple2!8175 (_1!4540 Token!2748) (_2!4540 BalanceConc!5388)) )
))
(declare-datatypes ((Option!1721 0))(
  ( (None!1720) (Some!1720 (v!17802 tuple2!8174)) )
))
(declare-datatypes ((tuple4!148 0))(
  ( (tuple4!149 (_1!4541 Option!1721) (_2!4541 CacheUp!420) (_3!453 CacheDown!428) (_4!74 CacheFindLongestMatch!84)) )
))
(declare-fun lt!286121 () tuple4!148)

(assert (=> b!697100 (= res!315359 (not ((_ is Some!1720) (_1!4541 lt!286121))))))

(declare-fun input!870 () BalanceConc!5388)

(declare-datatypes ((LexerInterface!1338 0))(
  ( (LexerInterfaceExt!1335 (__x!5637 Int)) (Lexer!1336) )
))
(declare-fun thiss!12529 () LexerInterface!1338)

(declare-fun maxPrefixZipperSequenceV2Mem!12 (LexerInterface!1338 List!7684 BalanceConc!5388 BalanceConc!5388 CacheUp!420 CacheDown!428 CacheFindLongestMatch!84) tuple4!148)

(assert (=> b!697100 (= lt!286121 (maxPrefixZipperSequenceV2Mem!12 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!697101 () Bool)

(declare-fun e!439509 () Bool)

(assert (=> b!697101 (= e!439509 e!439502)))

(declare-fun res!315353 () Bool)

(assert (=> b!697101 (=> (not res!315353) (not e!439502))))

(declare-datatypes ((List!7686 0))(
  ( (Nil!7672) (Cons!7672 (h!13073 Token!2748) (t!87509 List!7686)) )
))
(declare-datatypes ((IArray!5379 0))(
  ( (IArray!5380 (innerList!2747 List!7686)) )
))
(declare-datatypes ((Conc!2689 0))(
  ( (Node!2689 (left!6064 Conc!2689) (right!6394 Conc!2689) (csize!5608 Int) (cheight!2900 Int)) (Leaf!3975 (xs!5342 IArray!5379) (csize!5609 Int)) (Empty!2689) )
))
(declare-datatypes ((BalanceConc!5390 0))(
  ( (BalanceConc!5391 (c!121939 Conc!2689)) )
))
(declare-fun acc!372 () BalanceConc!5390)

(declare-datatypes ((tuple2!8176 0))(
  ( (tuple2!8177 (_1!4542 BalanceConc!5390) (_2!4542 BalanceConc!5388)) )
))
(declare-fun lt!286129 () tuple2!8176)

(declare-fun lt!286128 () tuple2!8176)

(declare-fun list!3194 (BalanceConc!5390) List!7686)

(declare-fun ++!1994 (BalanceConc!5390 BalanceConc!5390) BalanceConc!5390)

(assert (=> b!697101 (= res!315353 (= (list!3194 (_1!4542 lt!286129)) (list!3194 (++!1994 acc!372 (_1!4542 lt!286128)))))))

(declare-fun lexRec!179 (LexerInterface!1338 List!7684 BalanceConc!5388) tuple2!8176)

(assert (=> b!697101 (= lt!286128 (lexRec!179 thiss!12529 rules!1486 input!870))))

(assert (=> b!697101 (= lt!286129 (lexRec!179 thiss!12529 rules!1486 totalInput!378))))

(declare-fun mapIsEmpty!3353 () Bool)

(assert (=> mapIsEmpty!3353 mapRes!3353))

(declare-fun res!315364 () Bool)

(assert (=> start!66552 (=> (not res!315364) (not e!439483))))

(assert (=> start!66552 (= res!315364 ((_ is Lexer!1336) thiss!12529))))

(assert (=> start!66552 e!439483))

(declare-fun e!439507 () Bool)

(declare-fun inv!9799 (BalanceConc!5390) Bool)

(assert (=> start!66552 (and (inv!9799 acc!372) e!439507)))

(declare-fun treated!50 () BalanceConc!5388)

(declare-fun e!439496 () Bool)

(assert (=> start!66552 (and (inv!9797 treated!50) e!439496)))

(assert (=> start!66552 (and (inv!9797 totalInput!378) e!439481)))

(declare-fun e!439512 () Bool)

(assert (=> start!66552 (and (inv!9797 input!870) e!439512)))

(declare-fun e!439476 () Bool)

(assert (=> start!66552 e!439476))

(assert (=> start!66552 true))

(declare-fun e!439506 () Bool)

(declare-fun inv!9800 (CacheUp!420) Bool)

(assert (=> start!66552 (and (inv!9800 cacheUp!502) e!439506)))

(declare-fun inv!9801 (CacheDown!428) Bool)

(assert (=> start!66552 (and (inv!9801 cacheDown!515) e!439492)))

(declare-fun inv!9802 (CacheFindLongestMatch!84) Bool)

(assert (=> start!66552 (and (inv!9802 cacheFindLongestMatch!74) e!439482)))

(declare-fun b!697102 () Bool)

(declare-fun res!315358 () Bool)

(assert (=> b!697102 (=> (not res!315358) (not e!439483))))

(declare-fun rulesInvariant!1265 (LexerInterface!1338 List!7684) Bool)

(assert (=> b!697102 (= res!315358 (rulesInvariant!1265 thiss!12529 rules!1486))))

(declare-fun b!697103 () Bool)

(declare-fun e!439478 () Bool)

(assert (=> b!697103 (= e!439498 e!439478)))

(declare-fun b!697104 () Bool)

(assert (=> b!697104 (= e!439495 true)))

(declare-fun lt!286134 () Bool)

(declare-fun rulesValidInductive!529 (LexerInterface!1338 List!7684) Bool)

(assert (=> b!697104 (= lt!286134 (rulesValidInductive!529 thiss!12529 rules!1486))))

(declare-fun lt!286133 () tuple4!148)

(assert (=> b!697104 (= lt!286133 (maxPrefixZipperSequenceV2Mem!12 thiss!12529 rules!1486 input!870 totalInput!378 (_2!4541 lt!286121) (_3!453 lt!286121) (_4!74 lt!286121)))))

(declare-fun lt!286130 () tuple2!8176)

(assert (=> b!697104 (= lt!286130 (lexRec!179 thiss!12529 rules!1486 (_2!4540 (v!17802 (_1!4541 lt!286121)))))))

(declare-fun b!697105 () Bool)

(declare-fun e!439479 () Bool)

(declare-fun lt!286131 () MutLongMap!833)

(assert (=> b!697105 (= e!439479 (and e!439475 ((_ is LongMap!833) lt!286131)))))

(assert (=> b!697105 (= lt!286131 (v!17801 (underlying!1850 (cache!1192 cacheUp!502))))))

(declare-fun b!697106 () Bool)

(declare-fun e!439480 () Bool)

(assert (=> b!697106 (= e!439506 e!439480)))

(declare-fun b!697107 () Bool)

(declare-fun res!315362 () Bool)

(assert (=> b!697107 (=> (not res!315362) (not e!439502))))

(declare-fun list!3195 (BalanceConc!5388) List!7681)

(assert (=> b!697107 (= res!315362 (= (list!3195 (_2!4542 lt!286129)) (list!3195 (_2!4542 lt!286128))))))

(assert (=> b!697108 (= e!439480 (and e!439479 tp!211983))))

(assert (=> b!697109 (= e!439510 (and e!439493 tp!211967))))

(declare-fun b!697110 () Bool)

(declare-fun e!439488 () Bool)

(assert (=> b!697110 (= e!439483 e!439488)))

(declare-fun res!315361 () Bool)

(assert (=> b!697110 (=> (not res!315361) (not e!439488))))

(assert (=> b!697110 (= res!315361 (= lt!286123 lt!286125))))

(declare-fun ++!1995 (List!7681 List!7681) List!7681)

(assert (=> b!697110 (= lt!286125 (++!1995 lt!286122 lt!286124))))

(assert (=> b!697110 (= lt!286123 (list!3195 totalInput!378))))

(assert (=> b!697110 (= lt!286124 (list!3195 input!870))))

(assert (=> b!697110 (= lt!286122 (list!3195 treated!50))))

(assert (=> b!697111 (= e!439503 (and e!439474 tp!211973))))

(declare-fun mapIsEmpty!3355 () Bool)

(assert (=> mapIsEmpty!3355 mapRes!3354))

(declare-fun b!697112 () Bool)

(declare-fun tp!211984 () Bool)

(declare-fun inv!9803 (Conc!2689) Bool)

(assert (=> b!697112 (= e!439507 (and (inv!9803 (c!121939 acc!372)) tp!211984))))

(declare-fun e!439505 () Bool)

(assert (=> b!697113 (= e!439505 (and tp!211982 tp!211969))))

(declare-fun b!697114 () Bool)

(declare-fun e!439511 () Bool)

(assert (=> b!697114 (= e!439508 e!439511)))

(declare-fun b!697115 () Bool)

(declare-fun e!439497 () Bool)

(assert (=> b!697115 (= e!439499 e!439497)))

(declare-fun e!439491 () Bool)

(declare-fun tp!211956 () Bool)

(declare-fun tp!211980 () Bool)

(declare-fun array_inv!1023 (array!3079) Bool)

(assert (=> b!697116 (= e!439497 (and tp!211975 tp!211980 tp!211956 (array_inv!1021 (_keys!1127 (v!17800 (underlying!1849 (v!17801 (underlying!1850 (cache!1192 cacheUp!502))))))) (array_inv!1023 (_values!1112 (v!17800 (underlying!1849 (v!17801 (underlying!1850 (cache!1192 cacheUp!502))))))) e!439491))))

(declare-fun b!697117 () Bool)

(assert (=> b!697117 (= e!439488 e!439509)))

(declare-fun res!315357 () Bool)

(assert (=> b!697117 (=> (not res!315357) (not e!439509))))

(declare-fun lt!286120 () tuple2!8176)

(assert (=> b!697117 (= res!315357 (= (list!3194 (_1!4542 lt!286120)) (list!3194 acc!372)))))

(assert (=> b!697117 (= lt!286120 (lexRec!179 thiss!12529 rules!1486 treated!50))))

(declare-fun b!697118 () Bool)

(declare-fun res!315363 () Bool)

(assert (=> b!697118 (=> (not res!315363) (not e!439509))))

(declare-fun isEmpty!4915 (List!7681) Bool)

(assert (=> b!697118 (= res!315363 (isEmpty!4915 (list!3195 (_2!4542 lt!286120))))))

(declare-fun mapNonEmpty!3354 () Bool)

(declare-fun tp!211968 () Bool)

(declare-fun tp!211955 () Bool)

(assert (=> mapNonEmpty!3354 (= mapRes!3353 (and tp!211968 tp!211955))))

(declare-fun mapRest!3353 () (Array (_ BitVec 32) List!7680))

(declare-fun mapKey!3353 () (_ BitVec 32))

(declare-fun mapValue!3353 () List!7680)

(assert (=> mapNonEmpty!3354 (= (arr!1387 (_values!1110 (v!17796 (underlying!1845 (v!17797 (underlying!1846 (cache!1190 cacheFindLongestMatch!74))))))) (store mapRest!3353 mapKey!3353 mapValue!3353))))

(declare-fun tp!211965 () Bool)

(declare-fun e!439485 () Bool)

(declare-fun tp!211960 () Bool)

(declare-fun array_inv!1024 (array!3075) Bool)

(assert (=> b!697119 (= e!439485 (and tp!211959 tp!211960 tp!211965 (array_inv!1021 (_keys!1125 (v!17796 (underlying!1845 (v!17797 (underlying!1846 (cache!1190 cacheFindLongestMatch!74))))))) (array_inv!1024 (_values!1110 (v!17796 (underlying!1845 (v!17797 (underlying!1846 (cache!1190 cacheFindLongestMatch!74))))))) e!439486))))

(declare-fun b!697120 () Bool)

(declare-fun tp!211978 () Bool)

(assert (=> b!697120 (= e!439491 (and tp!211978 mapRes!3354))))

(declare-fun condMapEmpty!3353 () Bool)

(declare-fun mapDefault!3353 () List!7685)

(assert (=> b!697120 (= condMapEmpty!3353 (= (arr!1389 (_values!1112 (v!17800 (underlying!1849 (v!17801 (underlying!1850 (cache!1192 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7685)) mapDefault!3353)))))

(declare-fun b!697121 () Bool)

(declare-fun tp!211962 () Bool)

(assert (=> b!697121 (= e!439512 (and (inv!9798 (c!121938 input!870)) tp!211962))))

(declare-fun b!697122 () Bool)

(declare-fun res!315365 () Bool)

(assert (=> b!697122 (=> (not res!315365) (not e!439502))))

(declare-fun valid!706 (CacheFindLongestMatch!84) Bool)

(assert (=> b!697122 (= res!315365 (valid!706 cacheFindLongestMatch!74))))

(declare-fun b!697123 () Bool)

(declare-fun e!439484 () Bool)

(declare-fun tp!211964 () Bool)

(assert (=> b!697123 (= e!439476 (and e!439484 tp!211964))))

(declare-fun b!697124 () Bool)

(declare-fun tp!211971 () Bool)

(declare-fun inv!9796 (String!9573) Bool)

(declare-fun inv!9804 (TokenValueInjection!2874) Bool)

(assert (=> b!697124 (= e!439484 (and tp!211971 (inv!9796 (tag!1787 (h!13071 rules!1486))) (inv!9804 (transformation!1525 (h!13071 rules!1486))) e!439505))))

(declare-fun b!697125 () Bool)

(declare-fun res!315360 () Bool)

(assert (=> b!697125 (=> (not res!315360) (not e!439502))))

(declare-fun valid!707 (CacheDown!428) Bool)

(assert (=> b!697125 (= res!315360 (valid!707 cacheDown!515))))

(declare-fun b!697126 () Bool)

(assert (=> b!697126 (= e!439511 e!439485)))

(declare-fun b!697127 () Bool)

(declare-fun tp!211966 () Bool)

(assert (=> b!697127 (= e!439477 (and (inv!9798 (c!121938 (totalInput!1828 cacheFindLongestMatch!74))) tp!211966))))

(declare-fun mapNonEmpty!3355 () Bool)

(declare-fun tp!211976 () Bool)

(declare-fun tp!211957 () Bool)

(assert (=> mapNonEmpty!3355 (= mapRes!3355 (and tp!211976 tp!211957))))

(declare-fun mapRest!3355 () (Array (_ BitVec 32) List!7682))

(declare-fun mapKey!3354 () (_ BitVec 32))

(declare-fun mapValue!3354 () List!7682)

(assert (=> mapNonEmpty!3355 (= (arr!1388 (_values!1111 (v!17798 (underlying!1847 (v!17799 (underlying!1848 (cache!1191 cacheDown!515))))))) (store mapRest!3355 mapKey!3354 mapValue!3354))))

(declare-fun b!697128 () Bool)

(declare-fun tp!211974 () Bool)

(assert (=> b!697128 (= e!439496 (and (inv!9798 (c!121938 treated!50)) tp!211974))))

(declare-fun b!697129 () Bool)

(assert (=> b!697129 (= e!439478 e!439504)))

(declare-fun b!697130 () Bool)

(declare-fun res!315354 () Bool)

(assert (=> b!697130 (=> (not res!315354) (not e!439502))))

(assert (=> b!697130 (= res!315354 (= (totalInput!1828 cacheFindLongestMatch!74) totalInput!378))))

(assert (= (and start!66552 res!315364) b!697093))

(assert (= (and b!697093 res!315355) b!697102))

(assert (= (and b!697102 res!315358) b!697110))

(assert (= (and b!697110 res!315361) b!697117))

(assert (= (and b!697117 res!315357) b!697118))

(assert (= (and b!697118 res!315363) b!697101))

(assert (= (and b!697101 res!315353) b!697107))

(assert (= (and b!697107 res!315362) b!697098))

(assert (= (and b!697098 res!315356) b!697125))

(assert (= (and b!697125 res!315360) b!697122))

(assert (= (and b!697122 res!315365) b!697130))

(assert (= (and b!697130 res!315354) b!697096))

(assert (= (and b!697096 (not res!315352)) b!697100))

(assert (= (and b!697100 (not res!315359)) b!697104))

(assert (= start!66552 b!697112))

(assert (= start!66552 b!697128))

(assert (= start!66552 b!697099))

(assert (= start!66552 b!697121))

(assert (= b!697124 b!697113))

(assert (= b!697123 b!697124))

(assert (= (and start!66552 ((_ is Cons!7670) rules!1486)) b!697123))

(assert (= (and b!697120 condMapEmpty!3353) mapIsEmpty!3355))

(assert (= (and b!697120 (not condMapEmpty!3353)) mapNonEmpty!3353))

(assert (= b!697116 b!697120))

(assert (= b!697115 b!697116))

(assert (= b!697088 b!697115))

(assert (= (and b!697105 ((_ is LongMap!833) (v!17801 (underlying!1850 (cache!1192 cacheUp!502))))) b!697088))

(assert (= b!697108 b!697105))

(assert (= (and b!697106 ((_ is HashMap!805) (cache!1192 cacheUp!502))) b!697108))

(assert (= start!66552 b!697106))

(assert (= (and b!697092 condMapEmpty!3355) mapIsEmpty!3354))

(assert (= (and b!697092 (not condMapEmpty!3355)) mapNonEmpty!3355))

(assert (= b!697097 b!697092))

(assert (= b!697129 b!697097))

(assert (= b!697103 b!697129))

(assert (= (and b!697091 ((_ is LongMap!832) (v!17799 (underlying!1848 (cache!1191 cacheDown!515))))) b!697103))

(assert (= b!697111 b!697091))

(assert (= (and b!697089 ((_ is HashMap!804) (cache!1191 cacheDown!515))) b!697111))

(assert (= start!66552 b!697089))

(assert (= (and b!697095 condMapEmpty!3354) mapIsEmpty!3353))

(assert (= (and b!697095 (not condMapEmpty!3354)) mapNonEmpty!3354))

(assert (= b!697119 b!697095))

(assert (= b!697126 b!697119))

(assert (= b!697114 b!697126))

(assert (= (and b!697090 ((_ is LongMap!831) (v!17797 (underlying!1846 (cache!1190 cacheFindLongestMatch!74))))) b!697114))

(assert (= b!697109 b!697090))

(assert (= (and b!697094 ((_ is HashMap!803) (cache!1190 cacheFindLongestMatch!74))) b!697109))

(assert (= b!697094 b!697127))

(assert (= start!66552 b!697094))

(declare-fun m!952801 () Bool)

(assert (=> b!697101 m!952801))

(assert (=> b!697101 m!952801))

(declare-fun m!952803 () Bool)

(assert (=> b!697101 m!952803))

(declare-fun m!952805 () Bool)

(assert (=> b!697101 m!952805))

(declare-fun m!952807 () Bool)

(assert (=> b!697101 m!952807))

(declare-fun m!952809 () Bool)

(assert (=> b!697101 m!952809))

(declare-fun m!952811 () Bool)

(assert (=> b!697099 m!952811))

(declare-fun m!952813 () Bool)

(assert (=> b!697122 m!952813))

(declare-fun m!952815 () Bool)

(assert (=> b!697124 m!952815))

(declare-fun m!952817 () Bool)

(assert (=> b!697124 m!952817))

(declare-fun m!952819 () Bool)

(assert (=> b!697104 m!952819))

(declare-fun m!952821 () Bool)

(assert (=> b!697104 m!952821))

(declare-fun m!952823 () Bool)

(assert (=> b!697104 m!952823))

(declare-fun m!952825 () Bool)

(assert (=> start!66552 m!952825))

(declare-fun m!952827 () Bool)

(assert (=> start!66552 m!952827))

(declare-fun m!952829 () Bool)

(assert (=> start!66552 m!952829))

(declare-fun m!952831 () Bool)

(assert (=> start!66552 m!952831))

(declare-fun m!952833 () Bool)

(assert (=> start!66552 m!952833))

(declare-fun m!952835 () Bool)

(assert (=> start!66552 m!952835))

(declare-fun m!952837 () Bool)

(assert (=> start!66552 m!952837))

(declare-fun m!952839 () Bool)

(assert (=> b!697102 m!952839))

(declare-fun m!952841 () Bool)

(assert (=> b!697118 m!952841))

(assert (=> b!697118 m!952841))

(declare-fun m!952843 () Bool)

(assert (=> b!697118 m!952843))

(declare-fun m!952845 () Bool)

(assert (=> b!697121 m!952845))

(declare-fun m!952847 () Bool)

(assert (=> mapNonEmpty!3353 m!952847))

(declare-fun m!952849 () Bool)

(assert (=> b!697110 m!952849))

(declare-fun m!952851 () Bool)

(assert (=> b!697110 m!952851))

(declare-fun m!952853 () Bool)

(assert (=> b!697110 m!952853))

(declare-fun m!952855 () Bool)

(assert (=> b!697110 m!952855))

(declare-fun m!952857 () Bool)

(assert (=> b!697117 m!952857))

(declare-fun m!952859 () Bool)

(assert (=> b!697117 m!952859))

(declare-fun m!952861 () Bool)

(assert (=> b!697117 m!952861))

(declare-fun m!952863 () Bool)

(assert (=> b!697116 m!952863))

(declare-fun m!952865 () Bool)

(assert (=> b!697116 m!952865))

(declare-fun m!952867 () Bool)

(assert (=> b!697125 m!952867))

(declare-fun m!952869 () Bool)

(assert (=> b!697096 m!952869))

(declare-fun m!952871 () Bool)

(assert (=> b!697096 m!952871))

(declare-fun m!952873 () Bool)

(assert (=> b!697096 m!952873))

(declare-fun m!952875 () Bool)

(assert (=> b!697098 m!952875))

(declare-fun m!952877 () Bool)

(assert (=> b!697112 m!952877))

(declare-fun m!952879 () Bool)

(assert (=> mapNonEmpty!3354 m!952879))

(declare-fun m!952881 () Bool)

(assert (=> b!697094 m!952881))

(declare-fun m!952883 () Bool)

(assert (=> b!697128 m!952883))

(declare-fun m!952885 () Bool)

(assert (=> b!697097 m!952885))

(declare-fun m!952887 () Bool)

(assert (=> b!697097 m!952887))

(declare-fun m!952889 () Bool)

(assert (=> b!697093 m!952889))

(declare-fun m!952891 () Bool)

(assert (=> b!697119 m!952891))

(declare-fun m!952893 () Bool)

(assert (=> b!697119 m!952893))

(declare-fun m!952895 () Bool)

(assert (=> mapNonEmpty!3355 m!952895))

(declare-fun m!952897 () Bool)

(assert (=> b!697100 m!952897))

(declare-fun m!952899 () Bool)

(assert (=> b!697107 m!952899))

(declare-fun m!952901 () Bool)

(assert (=> b!697107 m!952901))

(declare-fun m!952903 () Bool)

(assert (=> b!697127 m!952903))

(check-sat (not b!697122) (not b!697112) (not b!697107) (not b!697104) (not b!697097) (not b!697119) (not b!697110) (not b_next!20087) (not b!697100) (not b_next!20095) (not b!697096) (not b_next!20085) (not b!697102) b_and!63817 (not start!66552) b_and!63825 (not b_next!20083) b_and!63811 (not b!697094) (not mapNonEmpty!3353) b_and!63821 (not b!697121) (not b!697098) (not mapNonEmpty!3355) (not b!697127) (not b!697124) (not b!697116) b_and!63819 (not b!697125) (not b!697123) (not b_next!20081) (not b!697095) (not b!697117) (not b_next!20089) (not b!697101) b_and!63823 b_and!63813 (not b!697118) (not b_next!20093) (not b!697093) (not b!697099) (not mapNonEmpty!3354) (not b!697092) b_and!63815 (not b!697128) (not b!697120) (not b_next!20091))
(check-sat (not b_next!20085) b_and!63817 b_and!63811 b_and!63821 b_and!63819 (not b_next!20081) (not b_next!20087) (not b_next!20089) (not b_next!20093) (not b_next!20095) b_and!63825 (not b_next!20083) b_and!63823 b_and!63813 b_and!63815 (not b_next!20091))
