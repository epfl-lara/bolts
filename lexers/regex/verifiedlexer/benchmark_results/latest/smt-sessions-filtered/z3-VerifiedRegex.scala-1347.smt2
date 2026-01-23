; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71490 () Bool)

(assert start!71490)

(declare-fun b!771445 () Bool)

(declare-fun b_free!24397 () Bool)

(declare-fun b_next!24461 () Bool)

(assert (=> b!771445 (= b_free!24397 (not b_next!24461))))

(declare-fun tp!252740 () Bool)

(declare-fun b_and!71877 () Bool)

(assert (=> b!771445 (= tp!252740 b_and!71877)))

(declare-fun b!771477 () Bool)

(declare-fun b_free!24399 () Bool)

(declare-fun b_next!24463 () Bool)

(assert (=> b!771477 (= b_free!24399 (not b_next!24463))))

(declare-fun tp!252738 () Bool)

(declare-fun b_and!71879 () Bool)

(assert (=> b!771477 (= tp!252738 b_and!71879)))

(declare-fun b_free!24401 () Bool)

(declare-fun b_next!24465 () Bool)

(assert (=> b!771477 (= b_free!24401 (not b_next!24465))))

(declare-fun tp!252732 () Bool)

(declare-fun b_and!71881 () Bool)

(assert (=> b!771477 (= tp!252732 b_and!71881)))

(declare-fun b!771440 () Bool)

(declare-fun b_free!24403 () Bool)

(declare-fun b_next!24467 () Bool)

(assert (=> b!771440 (= b_free!24403 (not b_next!24467))))

(declare-fun tp!252722 () Bool)

(declare-fun b_and!71883 () Bool)

(assert (=> b!771440 (= tp!252722 b_and!71883)))

(declare-fun b!771439 () Bool)

(declare-fun b_free!24405 () Bool)

(declare-fun b_next!24469 () Bool)

(assert (=> b!771439 (= b_free!24405 (not b_next!24469))))

(declare-fun tp!252741 () Bool)

(declare-fun b_and!71885 () Bool)

(assert (=> b!771439 (= tp!252741 b_and!71885)))

(declare-fun b!771450 () Bool)

(declare-fun b_free!24407 () Bool)

(declare-fun b_next!24471 () Bool)

(assert (=> b!771450 (= b_free!24407 (not b_next!24471))))

(declare-fun tp!252725 () Bool)

(declare-fun b_and!71887 () Bool)

(assert (=> b!771450 (= tp!252725 b_and!71887)))

(declare-fun b!771464 () Bool)

(declare-fun b_free!24409 () Bool)

(declare-fun b_next!24473 () Bool)

(assert (=> b!771464 (= b_free!24409 (not b_next!24473))))

(declare-fun tp!252716 () Bool)

(declare-fun b_and!71889 () Bool)

(assert (=> b!771464 (= tp!252716 b_and!71889)))

(declare-fun b!771468 () Bool)

(declare-fun b_free!24411 () Bool)

(declare-fun b_next!24475 () Bool)

(assert (=> b!771468 (= b_free!24411 (not b_next!24475))))

(declare-fun tp!252723 () Bool)

(declare-fun b_and!71891 () Bool)

(assert (=> b!771468 (= tp!252723 b_and!71891)))

(declare-fun tp!252739 () Bool)

(declare-fun e!497118 () Bool)

(declare-fun tp!252721 () Bool)

(declare-datatypes ((C!4580 0))(
  ( (C!4581 (val!2520 Int)) )
))
(declare-datatypes ((Regex!1989 0))(
  ( (ElementMatch!1989 (c!130273 C!4580)) (Concat!3670 (regOne!4490 Regex!1989) (regTwo!4490 Regex!1989)) (EmptyExpr!1989) (Star!1989 (reg!2318 Regex!1989)) (EmptyLang!1989) (Union!1989 (regOne!4491 Regex!1989) (regTwo!4491 Regex!1989)) )
))
(declare-datatypes ((List!8606 0))(
  ( (Nil!8592) (Cons!8592 (h!13993 Regex!1989) (t!91888 List!8606)) )
))
(declare-datatypes ((Context!782 0))(
  ( (Context!783 (exprs!891 List!8606)) )
))
(declare-datatypes ((tuple3!990 0))(
  ( (tuple3!991 (_1!5785 Regex!1989) (_2!5785 Context!782) (_3!770 C!4580)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!10030 0))(
  ( (tuple2!10031 (_1!5786 tuple3!990) (_2!5786 (InoxSet Context!782))) )
))
(declare-datatypes ((List!8607 0))(
  ( (Nil!8593) (Cons!8593 (h!13994 tuple2!10030) (t!91889 List!8607)) )
))
(declare-datatypes ((array!4179 0))(
  ( (array!4180 (arr!1865 (Array (_ BitVec 32) List!8607)) (size!6986 (_ BitVec 32))) )
))
(declare-datatypes ((array!4181 0))(
  ( (array!4182 (arr!1866 (Array (_ BitVec 32) (_ BitVec 64))) (size!6987 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2372 0))(
  ( (LongMapFixedSize!2373 (defaultEntry!1542 Int) (mask!3065 (_ BitVec 32)) (extraKeys!1433 (_ BitVec 32)) (zeroValue!1443 List!8607) (minValue!1443 List!8607) (_size!2481 (_ BitVec 32)) (_keys!1480 array!4181) (_values!1465 array!4179) (_vacant!1247 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4685 0))(
  ( (Cell!4686 (v!18725 LongMapFixedSize!2372)) )
))
(declare-datatypes ((MutLongMap!1186 0))(
  ( (LongMap!1186 (underlying!2555 Cell!4685)) (MutLongMapExt!1185 (__x!6906 Int)) )
))
(declare-datatypes ((Cell!4687 0))(
  ( (Cell!4688 (v!18726 MutLongMap!1186)) )
))
(declare-datatypes ((Hashable!1158 0))(
  ( (HashableExt!1157 (__x!6907 Int)) )
))
(declare-datatypes ((MutableMap!1158 0))(
  ( (MutableMapExt!1157 (__x!6908 Int)) (HashMap!1158 (underlying!2556 Cell!4687) (hashF!3066 Hashable!1158) (_size!2482 (_ BitVec 32)) (defaultValue!1309 Int)) )
))
(declare-datatypes ((CacheDown!662 0))(
  ( (CacheDown!663 (cache!1545 MutableMap!1158)) )
))
(declare-fun cacheDown!666 () CacheDown!662)

(declare-fun e!497103 () Bool)

(declare-fun array_inv!1353 (array!4181) Bool)

(declare-fun array_inv!1354 (array!4179) Bool)

(assert (=> b!771439 (= e!497103 (and tp!252741 tp!252721 tp!252739 (array_inv!1353 (_keys!1480 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666))))))) (array_inv!1354 (_values!1465 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666))))))) e!497118))))

(declare-fun e!497122 () Bool)

(declare-fun e!497102 () Bool)

(assert (=> b!771440 (= e!497122 (and e!497102 tp!252722))))

(declare-fun mapNonEmpty!5798 () Bool)

(declare-fun mapRes!5799 () Bool)

(declare-fun tp!252720 () Bool)

(declare-fun tp!252717 () Bool)

(assert (=> mapNonEmpty!5798 (= mapRes!5799 (and tp!252720 tp!252717))))

(declare-datatypes ((tuple2!10032 0))(
  ( (tuple2!10033 (_1!5787 Context!782) (_2!5787 C!4580)) )
))
(declare-datatypes ((tuple2!10034 0))(
  ( (tuple2!10035 (_1!5788 tuple2!10032) (_2!5788 (InoxSet Context!782))) )
))
(declare-datatypes ((List!8608 0))(
  ( (Nil!8594) (Cons!8594 (h!13995 tuple2!10034) (t!91890 List!8608)) )
))
(declare-fun mapValue!5799 () List!8608)

(declare-datatypes ((array!4183 0))(
  ( (array!4184 (arr!1867 (Array (_ BitVec 32) List!8608)) (size!6988 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2374 0))(
  ( (LongMapFixedSize!2375 (defaultEntry!1543 Int) (mask!3066 (_ BitVec 32)) (extraKeys!1434 (_ BitVec 32)) (zeroValue!1444 List!8608) (minValue!1444 List!8608) (_size!2483 (_ BitVec 32)) (_keys!1481 array!4181) (_values!1466 array!4183) (_vacant!1248 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4689 0))(
  ( (Cell!4690 (v!18727 LongMapFixedSize!2374)) )
))
(declare-datatypes ((MutLongMap!1187 0))(
  ( (LongMap!1187 (underlying!2557 Cell!4689)) (MutLongMapExt!1186 (__x!6909 Int)) )
))
(declare-datatypes ((Cell!4691 0))(
  ( (Cell!4692 (v!18728 MutLongMap!1187)) )
))
(declare-datatypes ((Hashable!1159 0))(
  ( (HashableExt!1158 (__x!6910 Int)) )
))
(declare-datatypes ((MutableMap!1159 0))(
  ( (MutableMapExt!1158 (__x!6911 Int)) (HashMap!1159 (underlying!2558 Cell!4691) (hashF!3067 Hashable!1159) (_size!2484 (_ BitVec 32)) (defaultValue!1310 Int)) )
))
(declare-datatypes ((CacheUp!656 0))(
  ( (CacheUp!657 (cache!1546 MutableMap!1159)) )
))
(declare-fun cacheUp!653 () CacheUp!656)

(declare-fun mapKey!5799 () (_ BitVec 32))

(declare-fun mapRest!5800 () (Array (_ BitVec 32) List!8608))

(assert (=> mapNonEmpty!5798 (= (arr!1867 (_values!1466 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653))))))) (store mapRest!5800 mapKey!5799 mapValue!5799))))

(declare-fun b!771441 () Bool)

(declare-fun e!497089 () Bool)

(declare-fun e!497098 () Bool)

(declare-fun tp!252715 () Bool)

(assert (=> b!771441 (= e!497089 (and e!497098 tp!252715))))

(declare-fun b!771442 () Bool)

(declare-fun e!497099 () Bool)

(declare-fun e!497104 () Bool)

(assert (=> b!771442 (= e!497099 e!497104)))

(declare-fun b!771443 () Bool)

(declare-fun e!497097 () Bool)

(declare-datatypes ((tuple2!10036 0))(
  ( (tuple2!10037 (_1!5789 (InoxSet Context!782)) (_2!5789 Int)) )
))
(declare-datatypes ((tuple2!10038 0))(
  ( (tuple2!10039 (_1!5790 tuple2!10036) (_2!5790 Int)) )
))
(declare-datatypes ((List!8609 0))(
  ( (Nil!8595) (Cons!8595 (h!13996 tuple2!10038) (t!91891 List!8609)) )
))
(declare-datatypes ((List!8610 0))(
  ( (Nil!8596) (Cons!8596 (h!13997 (_ BitVec 16)) (t!91892 List!8610)) )
))
(declare-datatypes ((TokenValue!1681 0))(
  ( (FloatLiteralValue!3362 (text!12212 List!8610)) (TokenValueExt!1680 (__x!6912 Int)) (Broken!8405 (value!52300 List!8610)) (Object!1694) (End!1681) (Def!1681) (Underscore!1681) (Match!1681) (Else!1681) (Error!1681) (Case!1681) (If!1681) (Extends!1681) (Abstract!1681) (Class!1681) (Val!1681) (DelimiterValue!3362 (del!1741 List!8610)) (KeywordValue!1687 (value!52301 List!8610)) (CommentValue!3362 (value!52302 List!8610)) (WhitespaceValue!3362 (value!52303 List!8610)) (IndentationValue!1681 (value!52304 List!8610)) (String!10156) (Int32!1681) (Broken!8406 (value!52305 List!8610)) (Boolean!1682) (Unit!13117) (OperatorValue!1684 (op!1741 List!8610)) (IdentifierValue!3362 (value!52306 List!8610)) (IdentifierValue!3363 (value!52307 List!8610)) (WhitespaceValue!3363 (value!52308 List!8610)) (True!3362) (False!3362) (Broken!8407 (value!52309 List!8610)) (Broken!8408 (value!52310 List!8610)) (True!3363) (RightBrace!1681) (RightBracket!1681) (Colon!1681) (Null!1681) (Comma!1681) (LeftBracket!1681) (False!3363) (LeftBrace!1681) (ImaginaryLiteralValue!1681 (text!12213 List!8610)) (StringLiteralValue!5043 (value!52311 List!8610)) (EOFValue!1681 (value!52312 List!8610)) (IdentValue!1681 (value!52313 List!8610)) (DelimiterValue!3363 (value!52314 List!8610)) (DedentValue!1681 (value!52315 List!8610)) (NewLineValue!1681 (value!52316 List!8610)) (IntegerValue!5043 (value!52317 (_ BitVec 32)) (text!12214 List!8610)) (IntegerValue!5044 (value!52318 Int) (text!12215 List!8610)) (Times!1681) (Or!1681) (Equal!1681) (Minus!1681) (Broken!8409 (value!52319 List!8610)) (And!1681) (Div!1681) (LessEqual!1681) (Mod!1681) (Concat!3671) (Not!1681) (Plus!1681) (SpaceValue!1681 (value!52320 List!8610)) (IntegerValue!5045 (value!52321 Int) (text!12216 List!8610)) (StringLiteralValue!5044 (text!12217 List!8610)) (FloatLiteralValue!3363 (text!12218 List!8610)) (BytesLiteralValue!1681 (value!52322 List!8610)) (CommentValue!3363 (value!52323 List!8610)) (StringLiteralValue!5045 (value!52324 List!8610)) (ErrorTokenValue!1681 (msg!1742 List!8610)) )
))
(declare-datatypes ((String!10157 0))(
  ( (String!10158 (value!52325 String)) )
))
(declare-datatypes ((List!8611 0))(
  ( (Nil!8597) (Cons!8597 (h!13998 C!4580) (t!91893 List!8611)) )
))
(declare-datatypes ((IArray!5773 0))(
  ( (IArray!5774 (innerList!2944 List!8611)) )
))
(declare-datatypes ((Conc!2886 0))(
  ( (Node!2886 (left!6395 Conc!2886) (right!6725 Conc!2886) (csize!6002 Int) (cheight!3097 Int)) (Leaf!4234 (xs!5573 IArray!5773) (csize!6003 Int)) (Empty!2886) )
))
(declare-datatypes ((BalanceConc!5784 0))(
  ( (BalanceConc!5785 (c!130274 Conc!2886)) )
))
(declare-datatypes ((TokenValueInjection!3098 0))(
  ( (TokenValueInjection!3099 (toValue!2629 Int) (toChars!2488 Int)) )
))
(declare-datatypes ((Rule!3074 0))(
  ( (Rule!3075 (regex!1637 Regex!1989) (tag!1899 String!10157) (isSeparator!1637 Bool) (transformation!1637 TokenValueInjection!3098)) )
))
(declare-datatypes ((Token!2948 0))(
  ( (Token!2949 (value!52326 TokenValue!1681) (rule!2762 Rule!3074) (size!6989 Int) (originalCharacters!1899 List!8611)) )
))
(declare-datatypes ((tuple2!10040 0))(
  ( (tuple2!10041 (_1!5791 Token!2948) (_2!5791 BalanceConc!5784)) )
))
(declare-datatypes ((Option!1873 0))(
  ( (None!1872) (Some!1872 (v!18729 tuple2!10040)) )
))
(declare-datatypes ((Hashable!1160 0))(
  ( (HashableExt!1159 (__x!6913 Int)) )
))
(declare-datatypes ((array!4185 0))(
  ( (array!4186 (arr!1868 (Array (_ BitVec 32) List!8609)) (size!6990 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2376 0))(
  ( (LongMapFixedSize!2377 (defaultEntry!1544 Int) (mask!3067 (_ BitVec 32)) (extraKeys!1435 (_ BitVec 32)) (zeroValue!1445 List!8609) (minValue!1445 List!8609) (_size!2485 (_ BitVec 32)) (_keys!1482 array!4181) (_values!1467 array!4185) (_vacant!1249 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4693 0))(
  ( (Cell!4694 (v!18730 LongMapFixedSize!2376)) )
))
(declare-datatypes ((MutLongMap!1188 0))(
  ( (LongMap!1188 (underlying!2559 Cell!4693)) (MutLongMapExt!1187 (__x!6914 Int)) )
))
(declare-datatypes ((Cell!4695 0))(
  ( (Cell!4696 (v!18731 MutLongMap!1188)) )
))
(declare-datatypes ((MutableMap!1160 0))(
  ( (MutableMapExt!1159 (__x!6915 Int)) (HashMap!1160 (underlying!2560 Cell!4695) (hashF!3068 Hashable!1160) (_size!2486 (_ BitVec 32)) (defaultValue!1311 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!324 0))(
  ( (CacheFindLongestMatch!325 (cache!1547 MutableMap!1160) (totalInput!2123 BalanceConc!5784)) )
))
(declare-datatypes ((tuple4!550 0))(
  ( (tuple4!551 (_1!5792 Option!1873) (_2!5792 CacheUp!656) (_3!771 CacheDown!662) (_4!275 CacheFindLongestMatch!324)) )
))
(declare-fun lt!313764 () tuple4!550)

(declare-fun valid!961 (CacheFindLongestMatch!324) Bool)

(assert (=> b!771443 (= e!497097 (valid!961 (_4!275 lt!313764)))))

(declare-fun b!771444 () Bool)

(declare-fun res!338152 () Bool)

(declare-fun e!497123 () Bool)

(assert (=> b!771444 (=> res!338152 e!497123)))

(declare-datatypes ((List!8612 0))(
  ( (Nil!8598) (Cons!8598 (h!13999 Rule!3074) (t!91894 List!8612)) )
))
(declare-fun rulesArg!343 () List!8612)

(declare-fun isEmpty!5217 (List!8612) Bool)

(assert (=> b!771444 (= res!338152 (isEmpty!5217 (t!91894 rulesArg!343)))))

(declare-fun e!497090 () Bool)

(declare-fun e!497109 () Bool)

(assert (=> b!771445 (= e!497090 (and e!497109 tp!252740))))

(declare-fun b!771446 () Bool)

(assert (=> b!771446 (= e!497123 e!497097)))

(declare-fun res!338142 () Bool)

(assert (=> b!771446 (=> (not res!338142) (not e!497097))))

(declare-fun valid!962 (CacheUp!656) Bool)

(assert (=> b!771446 (= res!338142 (valid!962 (_2!5792 lt!313764)))))

(declare-fun b!771447 () Bool)

(declare-fun e!497121 () Bool)

(declare-fun e!497107 () Bool)

(assert (=> b!771447 (= e!497121 e!497107)))

(declare-fun b!771448 () Bool)

(declare-fun e!497093 () Bool)

(assert (=> b!771448 (= e!497093 e!497122)))

(declare-fun b!771449 () Bool)

(declare-fun e!497120 () Bool)

(declare-fun e!497113 () Bool)

(assert (=> b!771449 (= e!497120 (not e!497113))))

(declare-fun res!338145 () Bool)

(assert (=> b!771449 (=> res!338145 e!497113)))

(get-info :version)

(assert (=> b!771449 (= res!338145 (or (and ((_ is Cons!8598) rulesArg!343) ((_ is Nil!8598) (t!91894 rulesArg!343))) (not ((_ is Cons!8598) rulesArg!343))))))

(declare-fun lt!313765 () List!8611)

(declare-fun isPrefix!993 (List!8611 List!8611) Bool)

(assert (=> b!771449 (isPrefix!993 lt!313765 lt!313765)))

(declare-datatypes ((Unit!13118 0))(
  ( (Unit!13119) )
))
(declare-fun lt!313766 () Unit!13118)

(declare-fun lemmaIsPrefixRefl!704 (List!8611 List!8611) Unit!13118)

(assert (=> b!771449 (= lt!313766 (lemmaIsPrefixRefl!704 lt!313765 lt!313765))))

(declare-fun e!497091 () Bool)

(assert (=> b!771450 (= e!497104 (and e!497091 tp!252725))))

(declare-fun b!771451 () Bool)

(declare-fun e!497117 () Bool)

(declare-fun e!497106 () Bool)

(assert (=> b!771451 (= e!497117 e!497106)))

(declare-fun b!771452 () Bool)

(declare-fun tp!252718 () Bool)

(declare-fun mapRes!5800 () Bool)

(assert (=> b!771452 (= e!497118 (and tp!252718 mapRes!5800))))

(declare-fun condMapEmpty!5799 () Bool)

(declare-fun mapDefault!5798 () List!8607)

(assert (=> b!771452 (= condMapEmpty!5799 (= (arr!1865 (_values!1465 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8607)) mapDefault!5798)))))

(declare-fun mapIsEmpty!5798 () Bool)

(assert (=> mapIsEmpty!5798 mapRes!5800))

(declare-fun b!771453 () Bool)

(declare-fun res!338143 () Bool)

(assert (=> b!771453 (=> (not res!338143) (not e!497120))))

(declare-fun valid!963 (CacheDown!662) Bool)

(assert (=> b!771453 (= res!338143 (valid!963 cacheDown!666))))

(declare-fun b!771454 () Bool)

(declare-fun e!497096 () Bool)

(declare-fun tp!252719 () Bool)

(declare-fun mapRes!5798 () Bool)

(assert (=> b!771454 (= e!497096 (and tp!252719 mapRes!5798))))

(declare-fun condMapEmpty!5800 () Bool)

(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!324)

(declare-fun mapDefault!5800 () List!8609)

(assert (=> b!771454 (= condMapEmpty!5800 (= (arr!1868 (_values!1467 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8609)) mapDefault!5800)))))

(declare-fun mapNonEmpty!5799 () Bool)

(declare-fun tp!252737 () Bool)

(declare-fun tp!252729 () Bool)

(assert (=> mapNonEmpty!5799 (= mapRes!5798 (and tp!252737 tp!252729))))

(declare-fun mapValue!5798 () List!8609)

(declare-fun mapKey!5800 () (_ BitVec 32))

(declare-fun mapRest!5799 () (Array (_ BitVec 32) List!8609))

(assert (=> mapNonEmpty!5799 (= (arr!1868 (_values!1467 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))) (store mapRest!5799 mapKey!5800 mapValue!5798))))

(declare-fun e!497105 () Bool)

(declare-fun e!497114 () Bool)

(declare-fun b!771455 () Bool)

(declare-fun inv!10925 (BalanceConc!5784) Bool)

(assert (=> b!771455 (= e!497114 (and e!497090 (inv!10925 (totalInput!2123 cacheFindLongestMatch!134)) e!497105))))

(declare-fun b!771456 () Bool)

(declare-fun e!497116 () Bool)

(assert (=> b!771456 (= e!497106 e!497116)))

(declare-fun b!771457 () Bool)

(declare-fun res!338141 () Bool)

(assert (=> b!771457 (=> (not res!338141) (not e!497097))))

(assert (=> b!771457 (= res!338141 (valid!963 (_3!771 lt!313764)))))

(declare-fun b!771458 () Bool)

(declare-fun res!338149 () Bool)

(declare-fun e!497111 () Bool)

(assert (=> b!771458 (=> (not res!338149) (not e!497111))))

(declare-datatypes ((LexerInterface!1440 0))(
  ( (LexerInterfaceExt!1437 (__x!6916 Int)) (Lexer!1438) )
))
(declare-fun thiss!15653 () LexerInterface!1440)

(declare-fun rulesValidInductive!582 (LexerInterface!1440 List!8612) Bool)

(assert (=> b!771458 (= res!338149 (rulesValidInductive!582 thiss!15653 rulesArg!343))))

(declare-fun b!771459 () Bool)

(declare-fun lt!313768 () MutLongMap!1188)

(assert (=> b!771459 (= e!497109 (and e!497117 ((_ is LongMap!1188) lt!313768)))))

(assert (=> b!771459 (= lt!313768 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))

(declare-fun b!771460 () Bool)

(declare-fun e!497095 () Bool)

(declare-fun e!497092 () Bool)

(assert (=> b!771460 (= e!497095 e!497092)))

(declare-fun b!771461 () Bool)

(declare-fun e!497108 () Bool)

(assert (=> b!771461 (= e!497108 e!497121)))

(declare-fun b!771462 () Bool)

(declare-fun res!338146 () Bool)

(assert (=> b!771462 (=> (not res!338146) (not e!497120))))

(assert (=> b!771462 (= res!338146 (valid!961 cacheFindLongestMatch!134))))

(declare-fun b!771463 () Bool)

(declare-fun lt!313763 () MutLongMap!1187)

(assert (=> b!771463 (= e!497091 (and e!497108 ((_ is LongMap!1187) lt!313763)))))

(assert (=> b!771463 (= lt!313763 (v!18728 (underlying!2558 (cache!1546 cacheUp!653))))))

(declare-fun tp!252731 () Bool)

(declare-fun tp!252735 () Bool)

(declare-fun array_inv!1355 (array!4185) Bool)

(assert (=> b!771464 (= e!497116 (and tp!252716 tp!252735 tp!252731 (array_inv!1353 (_keys!1482 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))) (array_inv!1355 (_values!1467 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))) e!497096))))

(declare-fun b!771465 () Bool)

(declare-fun e!497101 () Bool)

(declare-fun input!1432 () BalanceConc!5784)

(declare-fun tp!252734 () Bool)

(declare-fun inv!10926 (Conc!2886) Bool)

(assert (=> b!771465 (= e!497101 (and (inv!10926 (c!130274 input!1432)) tp!252734))))

(declare-fun res!338148 () Bool)

(assert (=> start!71490 (=> (not res!338148) (not e!497111))))

(assert (=> start!71490 (= res!338148 ((_ is Lexer!1438) thiss!15653))))

(assert (=> start!71490 e!497111))

(assert (=> start!71490 e!497089))

(assert (=> start!71490 (and (inv!10925 input!1432) e!497101)))

(declare-fun inv!10927 (CacheFindLongestMatch!324) Bool)

(assert (=> start!71490 (and (inv!10927 cacheFindLongestMatch!134) e!497114)))

(assert (=> start!71490 true))

(declare-fun inv!10928 (CacheUp!656) Bool)

(assert (=> start!71490 (and (inv!10928 cacheUp!653) e!497099)))

(declare-fun totalInput!472 () BalanceConc!5784)

(declare-fun e!497094 () Bool)

(assert (=> start!71490 (and (inv!10925 totalInput!472) e!497094)))

(declare-fun inv!10929 (CacheDown!662) Bool)

(assert (=> start!71490 (and (inv!10929 cacheDown!666) e!497093)))

(declare-fun b!771466 () Bool)

(declare-fun tp!252733 () Bool)

(assert (=> b!771466 (= e!497105 (and (inv!10926 (c!130274 (totalInput!2123 cacheFindLongestMatch!134))) tp!252733))))

(declare-fun b!771467 () Bool)

(declare-fun res!338147 () Bool)

(assert (=> b!771467 (=> (not res!338147) (not e!497111))))

(assert (=> b!771467 (= res!338147 (not (isEmpty!5217 rulesArg!343)))))

(declare-fun tp!252726 () Bool)

(declare-fun e!497110 () Bool)

(declare-fun tp!252724 () Bool)

(declare-fun array_inv!1356 (array!4183) Bool)

(assert (=> b!771468 (= e!497107 (and tp!252723 tp!252726 tp!252724 (array_inv!1353 (_keys!1481 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653))))))) (array_inv!1356 (_values!1466 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653))))))) e!497110))))

(declare-fun b!771469 () Bool)

(assert (=> b!771469 (= e!497113 e!497123)))

(declare-fun res!338151 () Bool)

(assert (=> b!771469 (=> res!338151 e!497123)))

(assert (=> b!771469 (= res!338151 (not (rulesValidInductive!582 thiss!15653 (t!91894 rulesArg!343))))))

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!66 (LexerInterface!1440 Rule!3074 BalanceConc!5784 BalanceConc!5784 CacheUp!656 CacheDown!662 CacheFindLongestMatch!324) tuple4!550)

(assert (=> b!771469 (= lt!313764 (maxPrefixOneRuleZipperSequenceV2Mem!66 thiss!15653 (h!13999 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(declare-fun b!771470 () Bool)

(declare-fun res!338150 () Bool)

(assert (=> b!771470 (=> (not res!338150) (not e!497120))))

(assert (=> b!771470 (= res!338150 (= (totalInput!2123 cacheFindLongestMatch!134) totalInput!472))))

(declare-fun b!771471 () Bool)

(declare-fun lt!313767 () MutLongMap!1186)

(assert (=> b!771471 (= e!497102 (and e!497095 ((_ is LongMap!1186) lt!313767)))))

(assert (=> b!771471 (= lt!313767 (v!18726 (underlying!2556 (cache!1545 cacheDown!666))))))

(declare-fun b!771472 () Bool)

(assert (=> b!771472 (= e!497092 e!497103)))

(declare-fun b!771473 () Bool)

(declare-fun tp!252736 () Bool)

(assert (=> b!771473 (= e!497110 (and tp!252736 mapRes!5799))))

(declare-fun condMapEmpty!5798 () Bool)

(declare-fun mapDefault!5799 () List!8608)

(assert (=> b!771473 (= condMapEmpty!5798 (= (arr!1867 (_values!1466 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8608)) mapDefault!5799)))))

(declare-fun b!771474 () Bool)

(declare-fun tp!252742 () Bool)

(assert (=> b!771474 (= e!497094 (and (inv!10926 (c!130274 totalInput!472)) tp!252742))))

(declare-fun b!771475 () Bool)

(declare-fun res!338144 () Bool)

(assert (=> b!771475 (=> (not res!338144) (not e!497120))))

(assert (=> b!771475 (= res!338144 (valid!962 cacheUp!653))))

(declare-fun b!771476 () Bool)

(assert (=> b!771476 (= e!497111 e!497120)))

(declare-fun res!338153 () Bool)

(assert (=> b!771476 (=> (not res!338153) (not e!497120))))

(declare-fun isSuffix!218 (List!8611 List!8611) Bool)

(declare-fun list!3438 (BalanceConc!5784) List!8611)

(assert (=> b!771476 (= res!338153 (isSuffix!218 lt!313765 (list!3438 totalInput!472)))))

(assert (=> b!771476 (= lt!313765 (list!3438 input!1432))))

(declare-fun e!497124 () Bool)

(assert (=> b!771477 (= e!497124 (and tp!252738 tp!252732))))

(declare-fun mapIsEmpty!5799 () Bool)

(assert (=> mapIsEmpty!5799 mapRes!5799))

(declare-fun mapIsEmpty!5800 () Bool)

(assert (=> mapIsEmpty!5800 mapRes!5798))

(declare-fun tp!252730 () Bool)

(declare-fun b!771478 () Bool)

(declare-fun inv!10924 (String!10157) Bool)

(declare-fun inv!10930 (TokenValueInjection!3098) Bool)

(assert (=> b!771478 (= e!497098 (and tp!252730 (inv!10924 (tag!1899 (h!13999 rulesArg!343))) (inv!10930 (transformation!1637 (h!13999 rulesArg!343))) e!497124))))

(declare-fun mapNonEmpty!5800 () Bool)

(declare-fun tp!252727 () Bool)

(declare-fun tp!252728 () Bool)

(assert (=> mapNonEmpty!5800 (= mapRes!5800 (and tp!252727 tp!252728))))

(declare-fun mapValue!5800 () List!8607)

(declare-fun mapRest!5798 () (Array (_ BitVec 32) List!8607))

(declare-fun mapKey!5798 () (_ BitVec 32))

(assert (=> mapNonEmpty!5800 (= (arr!1865 (_values!1465 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666))))))) (store mapRest!5798 mapKey!5798 mapValue!5800))))

(assert (= (and start!71490 res!338148) b!771458))

(assert (= (and b!771458 res!338149) b!771467))

(assert (= (and b!771467 res!338147) b!771476))

(assert (= (and b!771476 res!338153) b!771475))

(assert (= (and b!771475 res!338144) b!771453))

(assert (= (and b!771453 res!338143) b!771462))

(assert (= (and b!771462 res!338146) b!771470))

(assert (= (and b!771470 res!338150) b!771449))

(assert (= (and b!771449 (not res!338145)) b!771469))

(assert (= (and b!771469 (not res!338151)) b!771444))

(assert (= (and b!771444 (not res!338152)) b!771446))

(assert (= (and b!771446 res!338142) b!771457))

(assert (= (and b!771457 res!338141) b!771443))

(assert (= b!771478 b!771477))

(assert (= b!771441 b!771478))

(assert (= (and start!71490 ((_ is Cons!8598) rulesArg!343)) b!771441))

(assert (= start!71490 b!771465))

(assert (= (and b!771454 condMapEmpty!5800) mapIsEmpty!5800))

(assert (= (and b!771454 (not condMapEmpty!5800)) mapNonEmpty!5799))

(assert (= b!771464 b!771454))

(assert (= b!771456 b!771464))

(assert (= b!771451 b!771456))

(assert (= (and b!771459 ((_ is LongMap!1188) (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))) b!771451))

(assert (= b!771445 b!771459))

(assert (= (and b!771455 ((_ is HashMap!1160) (cache!1547 cacheFindLongestMatch!134))) b!771445))

(assert (= b!771455 b!771466))

(assert (= start!71490 b!771455))

(assert (= (and b!771473 condMapEmpty!5798) mapIsEmpty!5799))

(assert (= (and b!771473 (not condMapEmpty!5798)) mapNonEmpty!5798))

(assert (= b!771468 b!771473))

(assert (= b!771447 b!771468))

(assert (= b!771461 b!771447))

(assert (= (and b!771463 ((_ is LongMap!1187) (v!18728 (underlying!2558 (cache!1546 cacheUp!653))))) b!771461))

(assert (= b!771450 b!771463))

(assert (= (and b!771442 ((_ is HashMap!1159) (cache!1546 cacheUp!653))) b!771450))

(assert (= start!71490 b!771442))

(assert (= start!71490 b!771474))

(assert (= (and b!771452 condMapEmpty!5799) mapIsEmpty!5798))

(assert (= (and b!771452 (not condMapEmpty!5799)) mapNonEmpty!5800))

(assert (= b!771439 b!771452))

(assert (= b!771472 b!771439))

(assert (= b!771460 b!771472))

(assert (= (and b!771471 ((_ is LongMap!1186) (v!18726 (underlying!2556 (cache!1545 cacheDown!666))))) b!771460))

(assert (= b!771440 b!771471))

(assert (= (and b!771448 ((_ is HashMap!1158) (cache!1545 cacheDown!666))) b!771440))

(assert (= start!71490 b!771448))

(declare-fun m!1039975 () Bool)

(assert (=> b!771458 m!1039975))

(declare-fun m!1039977 () Bool)

(assert (=> start!71490 m!1039977))

(declare-fun m!1039979 () Bool)

(assert (=> start!71490 m!1039979))

(declare-fun m!1039981 () Bool)

(assert (=> start!71490 m!1039981))

(declare-fun m!1039983 () Bool)

(assert (=> start!71490 m!1039983))

(declare-fun m!1039985 () Bool)

(assert (=> start!71490 m!1039985))

(declare-fun m!1039987 () Bool)

(assert (=> b!771476 m!1039987))

(assert (=> b!771476 m!1039987))

(declare-fun m!1039989 () Bool)

(assert (=> b!771476 m!1039989))

(declare-fun m!1039991 () Bool)

(assert (=> b!771476 m!1039991))

(declare-fun m!1039993 () Bool)

(assert (=> b!771474 m!1039993))

(declare-fun m!1039995 () Bool)

(assert (=> b!771468 m!1039995))

(declare-fun m!1039997 () Bool)

(assert (=> b!771468 m!1039997))

(declare-fun m!1039999 () Bool)

(assert (=> b!771444 m!1039999))

(declare-fun m!1040001 () Bool)

(assert (=> b!771439 m!1040001))

(declare-fun m!1040003 () Bool)

(assert (=> b!771439 m!1040003))

(declare-fun m!1040005 () Bool)

(assert (=> b!771453 m!1040005))

(declare-fun m!1040007 () Bool)

(assert (=> b!771469 m!1040007))

(declare-fun m!1040009 () Bool)

(assert (=> b!771469 m!1040009))

(declare-fun m!1040011 () Bool)

(assert (=> b!771466 m!1040011))

(declare-fun m!1040013 () Bool)

(assert (=> mapNonEmpty!5798 m!1040013))

(declare-fun m!1040015 () Bool)

(assert (=> b!771446 m!1040015))

(declare-fun m!1040017 () Bool)

(assert (=> b!771449 m!1040017))

(declare-fun m!1040019 () Bool)

(assert (=> b!771449 m!1040019))

(declare-fun m!1040021 () Bool)

(assert (=> b!771443 m!1040021))

(declare-fun m!1040023 () Bool)

(assert (=> b!771464 m!1040023))

(declare-fun m!1040025 () Bool)

(assert (=> b!771464 m!1040025))

(declare-fun m!1040027 () Bool)

(assert (=> mapNonEmpty!5800 m!1040027))

(declare-fun m!1040029 () Bool)

(assert (=> b!771467 m!1040029))

(declare-fun m!1040031 () Bool)

(assert (=> b!771457 m!1040031))

(declare-fun m!1040033 () Bool)

(assert (=> b!771478 m!1040033))

(declare-fun m!1040035 () Bool)

(assert (=> b!771478 m!1040035))

(declare-fun m!1040037 () Bool)

(assert (=> b!771455 m!1040037))

(declare-fun m!1040039 () Bool)

(assert (=> b!771465 m!1040039))

(declare-fun m!1040041 () Bool)

(assert (=> b!771475 m!1040041))

(declare-fun m!1040043 () Bool)

(assert (=> b!771462 m!1040043))

(declare-fun m!1040045 () Bool)

(assert (=> mapNonEmpty!5799 m!1040045))

(check-sat (not b!771443) (not b!771455) (not mapNonEmpty!5798) b_and!71883 (not b!771467) (not b!771454) (not b!771476) (not mapNonEmpty!5800) (not b!771457) (not b_next!24461) (not b!771439) (not b!771464) (not b_next!24469) (not b!771452) (not b!771446) (not b!771469) (not b!771473) (not b_next!24475) (not b_next!24467) (not b!771465) b_and!71877 (not b!771475) (not b_next!24463) (not b!771453) (not b!771468) b_and!71881 b_and!71887 (not b!771478) (not b!771444) (not b!771458) (not b!771441) (not b_next!24465) (not b!771462) b_and!71889 (not b!771466) (not b_next!24473) (not b!771474) (not start!71490) b_and!71891 (not mapNonEmpty!5799) (not b!771449) (not b_next!24471) b_and!71885 b_and!71879)
(check-sat (not b_next!24461) (not b_next!24469) b_and!71883 b_and!71877 (not b_next!24463) (not b_next!24465) b_and!71889 (not b_next!24473) b_and!71891 (not b_next!24471) (not b_next!24475) (not b_next!24467) b_and!71881 b_and!71887 b_and!71885 b_and!71879)
(get-model)

(declare-fun d!251646 () Bool)

(declare-fun c!130277 () Bool)

(assert (=> d!251646 (= c!130277 ((_ is Node!2886) (c!130274 input!1432)))))

(declare-fun e!497129 () Bool)

(assert (=> d!251646 (= (inv!10926 (c!130274 input!1432)) e!497129)))

(declare-fun b!771485 () Bool)

(declare-fun inv!10931 (Conc!2886) Bool)

(assert (=> b!771485 (= e!497129 (inv!10931 (c!130274 input!1432)))))

(declare-fun b!771486 () Bool)

(declare-fun e!497130 () Bool)

(assert (=> b!771486 (= e!497129 e!497130)))

(declare-fun res!338160 () Bool)

(assert (=> b!771486 (= res!338160 (not ((_ is Leaf!4234) (c!130274 input!1432))))))

(assert (=> b!771486 (=> res!338160 e!497130)))

(declare-fun b!771487 () Bool)

(declare-fun inv!10932 (Conc!2886) Bool)

(assert (=> b!771487 (= e!497130 (inv!10932 (c!130274 input!1432)))))

(assert (= (and d!251646 c!130277) b!771485))

(assert (= (and d!251646 (not c!130277)) b!771486))

(assert (= (and b!771486 (not res!338160)) b!771487))

(declare-fun m!1040047 () Bool)

(assert (=> b!771485 m!1040047))

(declare-fun m!1040049 () Bool)

(assert (=> b!771487 m!1040049))

(assert (=> b!771465 d!251646))

(declare-fun d!251648 () Bool)

(declare-fun e!497133 () Bool)

(assert (=> d!251648 e!497133))

(declare-fun res!338163 () Bool)

(assert (=> d!251648 (=> res!338163 e!497133)))

(declare-fun lt!313771 () Bool)

(assert (=> d!251648 (= res!338163 (not lt!313771))))

(declare-fun drop!396 (List!8611 Int) List!8611)

(declare-fun size!6991 (List!8611) Int)

(assert (=> d!251648 (= lt!313771 (= lt!313765 (drop!396 (list!3438 totalInput!472) (- (size!6991 (list!3438 totalInput!472)) (size!6991 lt!313765)))))))

(assert (=> d!251648 (= (isSuffix!218 lt!313765 (list!3438 totalInput!472)) lt!313771)))

(declare-fun b!771490 () Bool)

(assert (=> b!771490 (= e!497133 (>= (size!6991 (list!3438 totalInput!472)) (size!6991 lt!313765)))))

(assert (= (and d!251648 (not res!338163)) b!771490))

(assert (=> d!251648 m!1039987))

(declare-fun m!1040051 () Bool)

(assert (=> d!251648 m!1040051))

(declare-fun m!1040053 () Bool)

(assert (=> d!251648 m!1040053))

(assert (=> d!251648 m!1039987))

(declare-fun m!1040055 () Bool)

(assert (=> d!251648 m!1040055))

(assert (=> b!771490 m!1039987))

(assert (=> b!771490 m!1040051))

(assert (=> b!771490 m!1040053))

(assert (=> b!771476 d!251648))

(declare-fun d!251650 () Bool)

(declare-fun list!3439 (Conc!2886) List!8611)

(assert (=> d!251650 (= (list!3438 totalInput!472) (list!3439 (c!130274 totalInput!472)))))

(declare-fun bs!165963 () Bool)

(assert (= bs!165963 d!251650))

(declare-fun m!1040057 () Bool)

(assert (=> bs!165963 m!1040057))

(assert (=> b!771476 d!251650))

(declare-fun d!251652 () Bool)

(assert (=> d!251652 (= (list!3438 input!1432) (list!3439 (c!130274 input!1432)))))

(declare-fun bs!165964 () Bool)

(assert (= bs!165964 d!251652))

(declare-fun m!1040059 () Bool)

(assert (=> bs!165964 m!1040059))

(assert (=> b!771476 d!251652))

(declare-fun d!251654 () Bool)

(declare-fun validCacheMapUp!103 (MutableMap!1159) Bool)

(assert (=> d!251654 (= (valid!962 (_2!5792 lt!313764)) (validCacheMapUp!103 (cache!1546 (_2!5792 lt!313764))))))

(declare-fun bs!165965 () Bool)

(assert (= bs!165965 d!251654))

(declare-fun m!1040061 () Bool)

(assert (=> bs!165965 m!1040061))

(assert (=> b!771446 d!251654))

(declare-fun d!251656 () Bool)

(assert (=> d!251656 (= (valid!962 cacheUp!653) (validCacheMapUp!103 (cache!1546 cacheUp!653)))))

(declare-fun bs!165966 () Bool)

(assert (= bs!165966 d!251656))

(declare-fun m!1040063 () Bool)

(assert (=> bs!165966 m!1040063))

(assert (=> b!771475 d!251656))

(declare-fun d!251658 () Bool)

(declare-fun res!338166 () Bool)

(declare-fun e!497136 () Bool)

(assert (=> d!251658 (=> (not res!338166) (not e!497136))))

(assert (=> d!251658 (= res!338166 ((_ is HashMap!1158) (cache!1545 cacheDown!666)))))

(assert (=> d!251658 (= (inv!10929 cacheDown!666) e!497136)))

(declare-fun b!771493 () Bool)

(declare-fun validCacheMapDown!103 (MutableMap!1158) Bool)

(assert (=> b!771493 (= e!497136 (validCacheMapDown!103 (cache!1545 cacheDown!666)))))

(assert (= (and d!251658 res!338166) b!771493))

(declare-fun m!1040065 () Bool)

(assert (=> b!771493 m!1040065))

(assert (=> start!71490 d!251658))

(declare-fun d!251660 () Bool)

(declare-fun isBalanced!776 (Conc!2886) Bool)

(assert (=> d!251660 (= (inv!10925 totalInput!472) (isBalanced!776 (c!130274 totalInput!472)))))

(declare-fun bs!165967 () Bool)

(assert (= bs!165967 d!251660))

(declare-fun m!1040067 () Bool)

(assert (=> bs!165967 m!1040067))

(assert (=> start!71490 d!251660))

(declare-fun d!251662 () Bool)

(assert (=> d!251662 (= (inv!10925 input!1432) (isBalanced!776 (c!130274 input!1432)))))

(declare-fun bs!165968 () Bool)

(assert (= bs!165968 d!251662))

(declare-fun m!1040069 () Bool)

(assert (=> bs!165968 m!1040069))

(assert (=> start!71490 d!251662))

(declare-fun d!251664 () Bool)

(declare-fun res!338169 () Bool)

(declare-fun e!497139 () Bool)

(assert (=> d!251664 (=> (not res!338169) (not e!497139))))

(assert (=> d!251664 (= res!338169 ((_ is HashMap!1159) (cache!1546 cacheUp!653)))))

(assert (=> d!251664 (= (inv!10928 cacheUp!653) e!497139)))

(declare-fun b!771496 () Bool)

(assert (=> b!771496 (= e!497139 (validCacheMapUp!103 (cache!1546 cacheUp!653)))))

(assert (= (and d!251664 res!338169) b!771496))

(assert (=> b!771496 m!1040063))

(assert (=> start!71490 d!251664))

(declare-fun d!251666 () Bool)

(declare-fun res!338172 () Bool)

(declare-fun e!497142 () Bool)

(assert (=> d!251666 (=> (not res!338172) (not e!497142))))

(assert (=> d!251666 (= res!338172 ((_ is HashMap!1160) (cache!1547 cacheFindLongestMatch!134)))))

(assert (=> d!251666 (= (inv!10927 cacheFindLongestMatch!134) e!497142)))

(declare-fun b!771499 () Bool)

(declare-fun validCacheMapFindLongestMatch!49 (MutableMap!1160 BalanceConc!5784) Bool)

(assert (=> b!771499 (= e!497142 (validCacheMapFindLongestMatch!49 (cache!1547 cacheFindLongestMatch!134) (totalInput!2123 cacheFindLongestMatch!134)))))

(assert (= (and d!251666 res!338172) b!771499))

(declare-fun m!1040071 () Bool)

(assert (=> b!771499 m!1040071))

(assert (=> start!71490 d!251666))

(declare-fun d!251668 () Bool)

(assert (=> d!251668 (= (inv!10925 (totalInput!2123 cacheFindLongestMatch!134)) (isBalanced!776 (c!130274 (totalInput!2123 cacheFindLongestMatch!134))))))

(declare-fun bs!165969 () Bool)

(assert (= bs!165969 d!251668))

(declare-fun m!1040073 () Bool)

(assert (=> bs!165969 m!1040073))

(assert (=> b!771455 d!251668))

(declare-fun d!251670 () Bool)

(declare-fun c!130278 () Bool)

(assert (=> d!251670 (= c!130278 ((_ is Node!2886) (c!130274 (totalInput!2123 cacheFindLongestMatch!134))))))

(declare-fun e!497143 () Bool)

(assert (=> d!251670 (= (inv!10926 (c!130274 (totalInput!2123 cacheFindLongestMatch!134))) e!497143)))

(declare-fun b!771500 () Bool)

(assert (=> b!771500 (= e!497143 (inv!10931 (c!130274 (totalInput!2123 cacheFindLongestMatch!134))))))

(declare-fun b!771501 () Bool)

(declare-fun e!497144 () Bool)

(assert (=> b!771501 (= e!497143 e!497144)))

(declare-fun res!338173 () Bool)

(assert (=> b!771501 (= res!338173 (not ((_ is Leaf!4234) (c!130274 (totalInput!2123 cacheFindLongestMatch!134)))))))

(assert (=> b!771501 (=> res!338173 e!497144)))

(declare-fun b!771502 () Bool)

(assert (=> b!771502 (= e!497144 (inv!10932 (c!130274 (totalInput!2123 cacheFindLongestMatch!134))))))

(assert (= (and d!251670 c!130278) b!771500))

(assert (= (and d!251670 (not c!130278)) b!771501))

(assert (= (and b!771501 (not res!338173)) b!771502))

(declare-fun m!1040075 () Bool)

(assert (=> b!771500 m!1040075))

(declare-fun m!1040077 () Bool)

(assert (=> b!771502 m!1040077))

(assert (=> b!771466 d!251670))

(declare-fun d!251672 () Bool)

(assert (=> d!251672 (= (valid!961 (_4!275 lt!313764)) (validCacheMapFindLongestMatch!49 (cache!1547 (_4!275 lt!313764)) (totalInput!2123 (_4!275 lt!313764))))))

(declare-fun bs!165970 () Bool)

(assert (= bs!165970 d!251672))

(declare-fun m!1040079 () Bool)

(assert (=> bs!165970 m!1040079))

(assert (=> b!771443 d!251672))

(declare-fun d!251674 () Bool)

(assert (=> d!251674 (= (valid!963 cacheDown!666) (validCacheMapDown!103 (cache!1545 cacheDown!666)))))

(declare-fun bs!165971 () Bool)

(assert (= bs!165971 d!251674))

(assert (=> bs!165971 m!1040065))

(assert (=> b!771453 d!251674))

(declare-fun d!251676 () Bool)

(assert (=> d!251676 (= (valid!961 cacheFindLongestMatch!134) (validCacheMapFindLongestMatch!49 (cache!1547 cacheFindLongestMatch!134) (totalInput!2123 cacheFindLongestMatch!134)))))

(declare-fun bs!165972 () Bool)

(assert (= bs!165972 d!251676))

(assert (=> bs!165972 m!1040071))

(assert (=> b!771462 d!251676))

(declare-fun d!251678 () Bool)

(assert (=> d!251678 (= (array_inv!1353 (_keys!1482 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))) (bvsge (size!6987 (_keys!1482 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!771464 d!251678))

(declare-fun d!251680 () Bool)

(assert (=> d!251680 (= (array_inv!1355 (_values!1467 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))) (bvsge (size!6990 (_values!1467 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))) #b00000000000000000000000000000000))))

(assert (=> b!771464 d!251680))

(declare-fun d!251682 () Bool)

(declare-fun c!130279 () Bool)

(assert (=> d!251682 (= c!130279 ((_ is Node!2886) (c!130274 totalInput!472)))))

(declare-fun e!497145 () Bool)

(assert (=> d!251682 (= (inv!10926 (c!130274 totalInput!472)) e!497145)))

(declare-fun b!771503 () Bool)

(assert (=> b!771503 (= e!497145 (inv!10931 (c!130274 totalInput!472)))))

(declare-fun b!771504 () Bool)

(declare-fun e!497146 () Bool)

(assert (=> b!771504 (= e!497145 e!497146)))

(declare-fun res!338174 () Bool)

(assert (=> b!771504 (= res!338174 (not ((_ is Leaf!4234) (c!130274 totalInput!472))))))

(assert (=> b!771504 (=> res!338174 e!497146)))

(declare-fun b!771505 () Bool)

(assert (=> b!771505 (= e!497146 (inv!10932 (c!130274 totalInput!472)))))

(assert (= (and d!251682 c!130279) b!771503))

(assert (= (and d!251682 (not c!130279)) b!771504))

(assert (= (and b!771504 (not res!338174)) b!771505))

(declare-fun m!1040081 () Bool)

(assert (=> b!771503 m!1040081))

(declare-fun m!1040083 () Bool)

(assert (=> b!771505 m!1040083))

(assert (=> b!771474 d!251682))

(declare-fun d!251684 () Bool)

(assert (=> d!251684 (= (isEmpty!5217 (t!91894 rulesArg!343)) ((_ is Nil!8598) (t!91894 rulesArg!343)))))

(assert (=> b!771444 d!251684))

(declare-fun d!251686 () Bool)

(assert (=> d!251686 (= (valid!963 (_3!771 lt!313764)) (validCacheMapDown!103 (cache!1545 (_3!771 lt!313764))))))

(declare-fun bs!165973 () Bool)

(assert (= bs!165973 d!251686))

(declare-fun m!1040085 () Bool)

(assert (=> bs!165973 m!1040085))

(assert (=> b!771457 d!251686))

(declare-fun d!251688 () Bool)

(assert (=> d!251688 (= (array_inv!1353 (_keys!1481 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653))))))) (bvsge (size!6987 (_keys!1481 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!771468 d!251688))

(declare-fun d!251690 () Bool)

(assert (=> d!251690 (= (array_inv!1356 (_values!1466 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653))))))) (bvsge (size!6988 (_values!1466 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653))))))) #b00000000000000000000000000000000))))

(assert (=> b!771468 d!251690))

(declare-fun d!251692 () Bool)

(assert (=> d!251692 (= (array_inv!1353 (_keys!1480 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666))))))) (bvsge (size!6987 (_keys!1480 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!771439 d!251692))

(declare-fun d!251694 () Bool)

(assert (=> d!251694 (= (array_inv!1354 (_values!1465 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666))))))) (bvsge (size!6986 (_values!1465 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666))))))) #b00000000000000000000000000000000))))

(assert (=> b!771439 d!251694))

(declare-fun d!251696 () Bool)

(assert (=> d!251696 (= (isEmpty!5217 rulesArg!343) ((_ is Nil!8598) rulesArg!343))))

(assert (=> b!771467 d!251696))

(declare-fun d!251698 () Bool)

(assert (=> d!251698 true))

(declare-fun lt!313774 () Bool)

(declare-fun lambda!23293 () Int)

(declare-fun forall!2046 (List!8612 Int) Bool)

(assert (=> d!251698 (= lt!313774 (forall!2046 (t!91894 rulesArg!343) lambda!23293))))

(declare-fun e!497151 () Bool)

(assert (=> d!251698 (= lt!313774 e!497151)))

(declare-fun res!338180 () Bool)

(assert (=> d!251698 (=> res!338180 e!497151)))

(assert (=> d!251698 (= res!338180 (not ((_ is Cons!8598) (t!91894 rulesArg!343))))))

(assert (=> d!251698 (= (rulesValidInductive!582 thiss!15653 (t!91894 rulesArg!343)) lt!313774)))

(declare-fun b!771510 () Bool)

(declare-fun e!497152 () Bool)

(assert (=> b!771510 (= e!497151 e!497152)))

(declare-fun res!338179 () Bool)

(assert (=> b!771510 (=> (not res!338179) (not e!497152))))

(declare-fun ruleValid!504 (LexerInterface!1440 Rule!3074) Bool)

(assert (=> b!771510 (= res!338179 (ruleValid!504 thiss!15653 (h!13999 (t!91894 rulesArg!343))))))

(declare-fun b!771511 () Bool)

(assert (=> b!771511 (= e!497152 (rulesValidInductive!582 thiss!15653 (t!91894 (t!91894 rulesArg!343))))))

(assert (= (and d!251698 (not res!338180)) b!771510))

(assert (= (and b!771510 res!338179) b!771511))

(declare-fun m!1040087 () Bool)

(assert (=> d!251698 m!1040087))

(declare-fun m!1040089 () Bool)

(assert (=> b!771510 m!1040089))

(declare-fun m!1040091 () Bool)

(assert (=> b!771511 m!1040091))

(assert (=> b!771469 d!251698))

(declare-fun b!771528 () Bool)

(declare-fun res!338192 () Bool)

(declare-fun e!497160 () Bool)

(assert (=> b!771528 (=> (not res!338192) (not e!497160))))

(declare-fun lt!313791 () tuple4!550)

(assert (=> b!771528 (= res!338192 (valid!963 (_3!771 lt!313791)))))

(declare-fun b!771529 () Bool)

(declare-fun res!338193 () Bool)

(assert (=> b!771529 (=> (not res!338193) (not e!497160))))

(assert (=> b!771529 (= res!338193 (valid!962 (_2!5792 lt!313791)))))

(declare-fun d!251700 () Bool)

(assert (=> d!251700 e!497160))

(declare-fun res!338191 () Bool)

(assert (=> d!251700 (=> (not res!338191) (not e!497160))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!80 (LexerInterface!1440 Rule!3074 BalanceConc!5784 BalanceConc!5784) Option!1873)

(assert (=> d!251700 (= res!338191 (= (_1!5792 lt!313791) (maxPrefixOneRuleZipperSequenceV2!80 thiss!15653 (h!13999 rulesArg!343) input!1432 totalInput!472)))))

(declare-fun e!497159 () Option!1873)

(declare-datatypes ((tuple2!10042 0))(
  ( (tuple2!10043 (_1!5793 BalanceConc!5784) (_2!5793 BalanceConc!5784)) )
))
(declare-datatypes ((tuple4!552 0))(
  ( (tuple4!553 (_1!5794 tuple2!10042) (_2!5794 CacheUp!656) (_3!772 CacheDown!662) (_4!276 CacheFindLongestMatch!324)) )
))
(declare-fun lt!313789 () tuple4!552)

(assert (=> d!251700 (= lt!313791 (tuple4!551 e!497159 (_2!5794 lt!313789) (_3!772 lt!313789) (_4!276 lt!313789)))))

(declare-fun c!130282 () Bool)

(declare-fun isEmpty!5218 (BalanceConc!5784) Bool)

(assert (=> d!251700 (= c!130282 (isEmpty!5218 (_1!5793 (_1!5794 lt!313789))))))

(declare-fun findLongestMatchWithZipperSequenceV2Mem!32 (Regex!1989 BalanceConc!5784 BalanceConc!5784 CacheUp!656 CacheDown!662 CacheFindLongestMatch!324) tuple4!552)

(assert (=> d!251700 (= lt!313789 (findLongestMatchWithZipperSequenceV2Mem!32 (regex!1637 (h!13999 rulesArg!343)) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134))))

(assert (=> d!251700 (ruleValid!504 thiss!15653 (h!13999 rulesArg!343))))

(assert (=> d!251700 (= (maxPrefixOneRuleZipperSequenceV2Mem!66 thiss!15653 (h!13999 rulesArg!343) input!1432 totalInput!472 cacheUp!653 cacheDown!666 cacheFindLongestMatch!134) lt!313791)))

(declare-fun b!771530 () Bool)

(declare-fun res!338194 () Bool)

(assert (=> b!771530 (=> (not res!338194) (not e!497160))))

(assert (=> b!771530 (= res!338194 (valid!961 (_4!275 lt!313791)))))

(declare-fun b!771531 () Bool)

(declare-fun e!497161 () Bool)

(declare-fun lt!313792 () List!8611)

(declare-fun matchR!732 (Regex!1989 List!8611) Bool)

(declare-datatypes ((tuple2!10044 0))(
  ( (tuple2!10045 (_1!5795 List!8611) (_2!5795 List!8611)) )
))
(declare-fun findLongestMatchInner!253 (Regex!1989 List!8611 Int List!8611 List!8611 Int) tuple2!10044)

(assert (=> b!771531 (= e!497161 (matchR!732 (regex!1637 (h!13999 rulesArg!343)) (_1!5795 (findLongestMatchInner!253 (regex!1637 (h!13999 rulesArg!343)) Nil!8597 (size!6991 Nil!8597) lt!313792 lt!313792 (size!6991 lt!313792)))))))

(declare-fun b!771532 () Bool)

(assert (=> b!771532 (= e!497159 None!1872)))

(declare-fun b!771533 () Bool)

(assert (=> b!771533 (= e!497160 (= (totalInput!2123 (_4!275 lt!313791)) totalInput!472))))

(declare-fun b!771534 () Bool)

(declare-fun apply!1780 (TokenValueInjection!3098 BalanceConc!5784) TokenValue!1681)

(declare-fun size!6992 (BalanceConc!5784) Int)

(assert (=> b!771534 (= e!497159 (Some!1872 (tuple2!10041 (Token!2949 (apply!1780 (transformation!1637 (h!13999 rulesArg!343)) (_1!5793 (_1!5794 lt!313789))) (h!13999 rulesArg!343) (size!6992 (_1!5793 (_1!5794 lt!313789))) (list!3438 (_1!5793 (_1!5794 lt!313789)))) (_2!5793 (_1!5794 lt!313789)))))))

(assert (=> b!771534 (= lt!313792 (list!3438 input!1432))))

(declare-fun lt!313790 () Unit!13118)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!237 (Regex!1989 List!8611) Unit!13118)

(assert (=> b!771534 (= lt!313790 (longestMatchIsAcceptedByMatchOrIsEmpty!237 (regex!1637 (h!13999 rulesArg!343)) lt!313792))))

(declare-fun res!338195 () Bool)

(declare-fun isEmpty!5219 (List!8611) Bool)

(assert (=> b!771534 (= res!338195 (isEmpty!5219 (_1!5795 (findLongestMatchInner!253 (regex!1637 (h!13999 rulesArg!343)) Nil!8597 (size!6991 Nil!8597) lt!313792 lt!313792 (size!6991 lt!313792)))))))

(assert (=> b!771534 (=> res!338195 e!497161)))

(assert (=> b!771534 e!497161))

(declare-fun lt!313788 () Unit!13118)

(assert (=> b!771534 (= lt!313788 lt!313790)))

(declare-fun lt!313787 () Unit!13118)

(declare-fun lemmaSemiInverse!307 (TokenValueInjection!3098 BalanceConc!5784) Unit!13118)

(assert (=> b!771534 (= lt!313787 (lemmaSemiInverse!307 (transformation!1637 (h!13999 rulesArg!343)) (_1!5793 (_1!5794 lt!313789))))))

(assert (= (and d!251700 c!130282) b!771532))

(assert (= (and d!251700 (not c!130282)) b!771534))

(assert (= (and b!771534 (not res!338195)) b!771531))

(assert (= (and d!251700 res!338191) b!771529))

(assert (= (and b!771529 res!338193) b!771528))

(assert (= (and b!771528 res!338192) b!771530))

(assert (= (and b!771530 res!338194) b!771533))

(declare-fun m!1040093 () Bool)

(assert (=> b!771534 m!1040093))

(declare-fun m!1040095 () Bool)

(assert (=> b!771534 m!1040095))

(declare-fun m!1040097 () Bool)

(assert (=> b!771534 m!1040097))

(declare-fun m!1040099 () Bool)

(assert (=> b!771534 m!1040099))

(declare-fun m!1040101 () Bool)

(assert (=> b!771534 m!1040101))

(assert (=> b!771534 m!1040093))

(assert (=> b!771534 m!1040095))

(declare-fun m!1040103 () Bool)

(assert (=> b!771534 m!1040103))

(assert (=> b!771534 m!1039991))

(declare-fun m!1040105 () Bool)

(assert (=> b!771534 m!1040105))

(declare-fun m!1040107 () Bool)

(assert (=> b!771534 m!1040107))

(declare-fun m!1040109 () Bool)

(assert (=> b!771534 m!1040109))

(declare-fun m!1040111 () Bool)

(assert (=> b!771530 m!1040111))

(declare-fun m!1040113 () Bool)

(assert (=> b!771528 m!1040113))

(assert (=> b!771531 m!1040093))

(assert (=> b!771531 m!1040095))

(assert (=> b!771531 m!1040093))

(assert (=> b!771531 m!1040095))

(assert (=> b!771531 m!1040097))

(declare-fun m!1040115 () Bool)

(assert (=> b!771531 m!1040115))

(declare-fun m!1040117 () Bool)

(assert (=> b!771529 m!1040117))

(declare-fun m!1040119 () Bool)

(assert (=> d!251700 m!1040119))

(declare-fun m!1040121 () Bool)

(assert (=> d!251700 m!1040121))

(declare-fun m!1040123 () Bool)

(assert (=> d!251700 m!1040123))

(declare-fun m!1040125 () Bool)

(assert (=> d!251700 m!1040125))

(assert (=> b!771469 d!251700))

(declare-fun d!251702 () Bool)

(assert (=> d!251702 (= (inv!10924 (tag!1899 (h!13999 rulesArg!343))) (= (mod (str.len (value!52325 (tag!1899 (h!13999 rulesArg!343)))) 2) 0))))

(assert (=> b!771478 d!251702))

(declare-fun d!251704 () Bool)

(declare-fun res!338198 () Bool)

(declare-fun e!497164 () Bool)

(assert (=> d!251704 (=> (not res!338198) (not e!497164))))

(declare-fun semiInverseModEq!613 (Int Int) Bool)

(assert (=> d!251704 (= res!338198 (semiInverseModEq!613 (toChars!2488 (transformation!1637 (h!13999 rulesArg!343))) (toValue!2629 (transformation!1637 (h!13999 rulesArg!343)))))))

(assert (=> d!251704 (= (inv!10930 (transformation!1637 (h!13999 rulesArg!343))) e!497164)))

(declare-fun b!771537 () Bool)

(declare-fun equivClasses!588 (Int Int) Bool)

(assert (=> b!771537 (= e!497164 (equivClasses!588 (toChars!2488 (transformation!1637 (h!13999 rulesArg!343))) (toValue!2629 (transformation!1637 (h!13999 rulesArg!343)))))))

(assert (= (and d!251704 res!338198) b!771537))

(declare-fun m!1040127 () Bool)

(assert (=> d!251704 m!1040127))

(declare-fun m!1040129 () Bool)

(assert (=> b!771537 m!1040129))

(assert (=> b!771478 d!251704))

(declare-fun b!771549 () Bool)

(declare-fun e!497171 () Bool)

(assert (=> b!771549 (= e!497171 (>= (size!6991 lt!313765) (size!6991 lt!313765)))))

(declare-fun b!771548 () Bool)

(declare-fun e!497172 () Bool)

(declare-fun tail!978 (List!8611) List!8611)

(assert (=> b!771548 (= e!497172 (isPrefix!993 (tail!978 lt!313765) (tail!978 lt!313765)))))

(declare-fun d!251706 () Bool)

(assert (=> d!251706 e!497171))

(declare-fun res!338207 () Bool)

(assert (=> d!251706 (=> res!338207 e!497171)))

(declare-fun lt!313795 () Bool)

(assert (=> d!251706 (= res!338207 (not lt!313795))))

(declare-fun e!497173 () Bool)

(assert (=> d!251706 (= lt!313795 e!497173)))

(declare-fun res!338209 () Bool)

(assert (=> d!251706 (=> res!338209 e!497173)))

(assert (=> d!251706 (= res!338209 ((_ is Nil!8597) lt!313765))))

(assert (=> d!251706 (= (isPrefix!993 lt!313765 lt!313765) lt!313795)))

(declare-fun b!771547 () Bool)

(declare-fun res!338210 () Bool)

(assert (=> b!771547 (=> (not res!338210) (not e!497172))))

(declare-fun head!1420 (List!8611) C!4580)

(assert (=> b!771547 (= res!338210 (= (head!1420 lt!313765) (head!1420 lt!313765)))))

(declare-fun b!771546 () Bool)

(assert (=> b!771546 (= e!497173 e!497172)))

(declare-fun res!338208 () Bool)

(assert (=> b!771546 (=> (not res!338208) (not e!497172))))

(assert (=> b!771546 (= res!338208 (not ((_ is Nil!8597) lt!313765)))))

(assert (= (and d!251706 (not res!338209)) b!771546))

(assert (= (and b!771546 res!338208) b!771547))

(assert (= (and b!771547 res!338210) b!771548))

(assert (= (and d!251706 (not res!338207)) b!771549))

(assert (=> b!771549 m!1040053))

(assert (=> b!771549 m!1040053))

(declare-fun m!1040131 () Bool)

(assert (=> b!771548 m!1040131))

(assert (=> b!771548 m!1040131))

(assert (=> b!771548 m!1040131))

(assert (=> b!771548 m!1040131))

(declare-fun m!1040133 () Bool)

(assert (=> b!771548 m!1040133))

(declare-fun m!1040135 () Bool)

(assert (=> b!771547 m!1040135))

(assert (=> b!771547 m!1040135))

(assert (=> b!771449 d!251706))

(declare-fun d!251708 () Bool)

(assert (=> d!251708 (isPrefix!993 lt!313765 lt!313765)))

(declare-fun lt!313798 () Unit!13118)

(declare-fun choose!4877 (List!8611 List!8611) Unit!13118)

(assert (=> d!251708 (= lt!313798 (choose!4877 lt!313765 lt!313765))))

(assert (=> d!251708 (= (lemmaIsPrefixRefl!704 lt!313765 lt!313765) lt!313798)))

(declare-fun bs!165974 () Bool)

(assert (= bs!165974 d!251708))

(assert (=> bs!165974 m!1040017))

(declare-fun m!1040137 () Bool)

(assert (=> bs!165974 m!1040137))

(assert (=> b!771449 d!251708))

(declare-fun bs!165975 () Bool)

(declare-fun d!251710 () Bool)

(assert (= bs!165975 (and d!251710 d!251698)))

(declare-fun lambda!23294 () Int)

(assert (=> bs!165975 (= lambda!23294 lambda!23293)))

(assert (=> d!251710 true))

(declare-fun lt!313799 () Bool)

(assert (=> d!251710 (= lt!313799 (forall!2046 rulesArg!343 lambda!23294))))

(declare-fun e!497174 () Bool)

(assert (=> d!251710 (= lt!313799 e!497174)))

(declare-fun res!338212 () Bool)

(assert (=> d!251710 (=> res!338212 e!497174)))

(assert (=> d!251710 (= res!338212 (not ((_ is Cons!8598) rulesArg!343)))))

(assert (=> d!251710 (= (rulesValidInductive!582 thiss!15653 rulesArg!343) lt!313799)))

(declare-fun b!771550 () Bool)

(declare-fun e!497175 () Bool)

(assert (=> b!771550 (= e!497174 e!497175)))

(declare-fun res!338211 () Bool)

(assert (=> b!771550 (=> (not res!338211) (not e!497175))))

(assert (=> b!771550 (= res!338211 (ruleValid!504 thiss!15653 (h!13999 rulesArg!343)))))

(declare-fun b!771551 () Bool)

(assert (=> b!771551 (= e!497175 (rulesValidInductive!582 thiss!15653 (t!91894 rulesArg!343)))))

(assert (= (and d!251710 (not res!338212)) b!771550))

(assert (= (and b!771550 res!338211) b!771551))

(declare-fun m!1040139 () Bool)

(assert (=> d!251710 m!1040139))

(assert (=> b!771550 m!1040125))

(assert (=> b!771551 m!1040007))

(assert (=> b!771458 d!251710))

(declare-fun tp!252750 () Bool)

(declare-fun b!771560 () Bool)

(declare-fun tp!252749 () Bool)

(declare-fun e!497181 () Bool)

(assert (=> b!771560 (= e!497181 (and (inv!10926 (left!6395 (c!130274 input!1432))) tp!252750 (inv!10926 (right!6725 (c!130274 input!1432))) tp!252749))))

(declare-fun b!771562 () Bool)

(declare-fun e!497180 () Bool)

(declare-fun tp!252751 () Bool)

(assert (=> b!771562 (= e!497180 tp!252751)))

(declare-fun b!771561 () Bool)

(declare-fun inv!10933 (IArray!5773) Bool)

(assert (=> b!771561 (= e!497181 (and (inv!10933 (xs!5573 (c!130274 input!1432))) e!497180))))

(assert (=> b!771465 (= tp!252734 (and (inv!10926 (c!130274 input!1432)) e!497181))))

(assert (= (and b!771465 ((_ is Node!2886) (c!130274 input!1432))) b!771560))

(assert (= b!771561 b!771562))

(assert (= (and b!771465 ((_ is Leaf!4234) (c!130274 input!1432))) b!771561))

(declare-fun m!1040141 () Bool)

(assert (=> b!771560 m!1040141))

(declare-fun m!1040143 () Bool)

(assert (=> b!771560 m!1040143))

(declare-fun m!1040145 () Bool)

(assert (=> b!771561 m!1040145))

(assert (=> b!771465 m!1040039))

(declare-fun b!771573 () Bool)

(declare-fun e!497192 () Bool)

(declare-fun tp!252770 () Bool)

(assert (=> b!771573 (= e!497192 tp!252770)))

(declare-fun setIsEmpty!7049 () Bool)

(declare-fun setRes!7049 () Bool)

(assert (=> setIsEmpty!7049 setRes!7049))

(declare-fun b!771574 () Bool)

(declare-fun e!497191 () Bool)

(declare-fun setRes!7050 () Bool)

(declare-fun tp!252769 () Bool)

(assert (=> b!771574 (= e!497191 (and setRes!7050 tp!252769))))

(declare-fun condSetEmpty!7050 () Bool)

(declare-fun mapDefault!5803 () List!8609)

(assert (=> b!771574 (= condSetEmpty!7050 (= (_1!5789 (_1!5790 (h!13996 mapDefault!5803))) ((as const (Array Context!782 Bool)) false)))))

(declare-fun tp!252766 () Bool)

(declare-fun setNonEmpty!7049 () Bool)

(declare-fun e!497190 () Bool)

(declare-fun setElem!7050 () Context!782)

(declare-fun inv!10934 (Context!782) Bool)

(assert (=> setNonEmpty!7049 (= setRes!7050 (and tp!252766 (inv!10934 setElem!7050) e!497190))))

(declare-fun setRest!7050 () (InoxSet Context!782))

(assert (=> setNonEmpty!7049 (= (_1!5789 (_1!5790 (h!13996 mapDefault!5803))) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7050 true) setRest!7050))))

(declare-fun mapIsEmpty!5803 () Bool)

(declare-fun mapRes!5803 () Bool)

(assert (=> mapIsEmpty!5803 mapRes!5803))

(declare-fun setIsEmpty!7050 () Bool)

(assert (=> setIsEmpty!7050 setRes!7050))

(declare-fun condMapEmpty!5803 () Bool)

(assert (=> mapNonEmpty!5799 (= condMapEmpty!5803 (= mapRest!5799 ((as const (Array (_ BitVec 32) List!8609)) mapDefault!5803)))))

(assert (=> mapNonEmpty!5799 (= tp!252737 (and e!497191 mapRes!5803))))

(declare-fun b!771575 () Bool)

(declare-fun tp!252768 () Bool)

(assert (=> b!771575 (= e!497190 tp!252768)))

(declare-fun tp!252767 () Bool)

(declare-fun setElem!7049 () Context!782)

(declare-fun setNonEmpty!7050 () Bool)

(assert (=> setNonEmpty!7050 (= setRes!7049 (and tp!252767 (inv!10934 setElem!7049) e!497192))))

(declare-fun mapValue!5803 () List!8609)

(declare-fun setRest!7049 () (InoxSet Context!782))

(assert (=> setNonEmpty!7050 (= (_1!5789 (_1!5790 (h!13996 mapValue!5803))) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7049 true) setRest!7049))))

(declare-fun mapNonEmpty!5803 () Bool)

(declare-fun tp!252772 () Bool)

(declare-fun e!497193 () Bool)

(assert (=> mapNonEmpty!5803 (= mapRes!5803 (and tp!252772 e!497193))))

(declare-fun mapKey!5803 () (_ BitVec 32))

(declare-fun mapRest!5803 () (Array (_ BitVec 32) List!8609))

(assert (=> mapNonEmpty!5803 (= mapRest!5799 (store mapRest!5803 mapKey!5803 mapValue!5803))))

(declare-fun b!771576 () Bool)

(declare-fun tp!252771 () Bool)

(assert (=> b!771576 (= e!497193 (and setRes!7049 tp!252771))))

(declare-fun condSetEmpty!7049 () Bool)

(assert (=> b!771576 (= condSetEmpty!7049 (= (_1!5789 (_1!5790 (h!13996 mapValue!5803))) ((as const (Array Context!782 Bool)) false)))))

(assert (= (and mapNonEmpty!5799 condMapEmpty!5803) mapIsEmpty!5803))

(assert (= (and mapNonEmpty!5799 (not condMapEmpty!5803)) mapNonEmpty!5803))

(assert (= (and b!771576 condSetEmpty!7049) setIsEmpty!7049))

(assert (= (and b!771576 (not condSetEmpty!7049)) setNonEmpty!7050))

(assert (= setNonEmpty!7050 b!771573))

(assert (= (and mapNonEmpty!5803 ((_ is Cons!8595) mapValue!5803)) b!771576))

(assert (= (and b!771574 condSetEmpty!7050) setIsEmpty!7050))

(assert (= (and b!771574 (not condSetEmpty!7050)) setNonEmpty!7049))

(assert (= setNonEmpty!7049 b!771575))

(assert (= (and mapNonEmpty!5799 ((_ is Cons!8595) mapDefault!5803)) b!771574))

(declare-fun m!1040147 () Bool)

(assert (=> setNonEmpty!7049 m!1040147))

(declare-fun m!1040149 () Bool)

(assert (=> setNonEmpty!7050 m!1040149))

(declare-fun m!1040151 () Bool)

(assert (=> mapNonEmpty!5803 m!1040151))

(declare-fun setIsEmpty!7053 () Bool)

(declare-fun setRes!7053 () Bool)

(assert (=> setIsEmpty!7053 setRes!7053))

(declare-fun b!771584 () Bool)

(declare-fun e!497198 () Bool)

(declare-fun tp!252781 () Bool)

(assert (=> b!771584 (= e!497198 tp!252781)))

(declare-fun e!497199 () Bool)

(assert (=> mapNonEmpty!5799 (= tp!252729 e!497199)))

(declare-fun b!771583 () Bool)

(declare-fun tp!252780 () Bool)

(assert (=> b!771583 (= e!497199 (and setRes!7053 tp!252780))))

(declare-fun condSetEmpty!7053 () Bool)

(assert (=> b!771583 (= condSetEmpty!7053 (= (_1!5789 (_1!5790 (h!13996 mapValue!5798))) ((as const (Array Context!782 Bool)) false)))))

(declare-fun setElem!7053 () Context!782)

(declare-fun setNonEmpty!7053 () Bool)

(declare-fun tp!252779 () Bool)

(assert (=> setNonEmpty!7053 (= setRes!7053 (and tp!252779 (inv!10934 setElem!7053) e!497198))))

(declare-fun setRest!7053 () (InoxSet Context!782))

(assert (=> setNonEmpty!7053 (= (_1!5789 (_1!5790 (h!13996 mapValue!5798))) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7053 true) setRest!7053))))

(assert (= (and b!771583 condSetEmpty!7053) setIsEmpty!7053))

(assert (= (and b!771583 (not condSetEmpty!7053)) setNonEmpty!7053))

(assert (= setNonEmpty!7053 b!771584))

(assert (= (and mapNonEmpty!5799 ((_ is Cons!8595) mapValue!5798)) b!771583))

(declare-fun m!1040153 () Bool)

(assert (=> setNonEmpty!7053 m!1040153))

(declare-fun e!497201 () Bool)

(declare-fun tp!252783 () Bool)

(declare-fun b!771585 () Bool)

(declare-fun tp!252782 () Bool)

(assert (=> b!771585 (= e!497201 (and (inv!10926 (left!6395 (c!130274 (totalInput!2123 cacheFindLongestMatch!134)))) tp!252783 (inv!10926 (right!6725 (c!130274 (totalInput!2123 cacheFindLongestMatch!134)))) tp!252782))))

(declare-fun b!771587 () Bool)

(declare-fun e!497200 () Bool)

(declare-fun tp!252784 () Bool)

(assert (=> b!771587 (= e!497200 tp!252784)))

(declare-fun b!771586 () Bool)

(assert (=> b!771586 (= e!497201 (and (inv!10933 (xs!5573 (c!130274 (totalInput!2123 cacheFindLongestMatch!134)))) e!497200))))

(assert (=> b!771466 (= tp!252733 (and (inv!10926 (c!130274 (totalInput!2123 cacheFindLongestMatch!134))) e!497201))))

(assert (= (and b!771466 ((_ is Node!2886) (c!130274 (totalInput!2123 cacheFindLongestMatch!134)))) b!771585))

(assert (= b!771586 b!771587))

(assert (= (and b!771466 ((_ is Leaf!4234) (c!130274 (totalInput!2123 cacheFindLongestMatch!134)))) b!771586))

(declare-fun m!1040155 () Bool)

(assert (=> b!771585 m!1040155))

(declare-fun m!1040157 () Bool)

(assert (=> b!771585 m!1040157))

(declare-fun m!1040159 () Bool)

(assert (=> b!771586 m!1040159))

(assert (=> b!771466 m!1040011))

(declare-fun e!497210 () Bool)

(assert (=> b!771473 (= tp!252736 e!497210)))

(declare-fun tp_is_empty!3731 () Bool)

(declare-fun tp!252793 () Bool)

(declare-fun e!497208 () Bool)

(declare-fun setRes!7056 () Bool)

(declare-fun b!771596 () Bool)

(assert (=> b!771596 (= e!497210 (and (inv!10934 (_1!5787 (_1!5788 (h!13995 mapDefault!5799)))) e!497208 tp_is_empty!3731 setRes!7056 tp!252793))))

(declare-fun condSetEmpty!7056 () Bool)

(assert (=> b!771596 (= condSetEmpty!7056 (= (_2!5788 (h!13995 mapDefault!5799)) ((as const (Array Context!782 Bool)) false)))))

(declare-fun setIsEmpty!7056 () Bool)

(assert (=> setIsEmpty!7056 setRes!7056))

(declare-fun e!497209 () Bool)

(declare-fun setElem!7056 () Context!782)

(declare-fun tp!252796 () Bool)

(declare-fun setNonEmpty!7056 () Bool)

(assert (=> setNonEmpty!7056 (= setRes!7056 (and tp!252796 (inv!10934 setElem!7056) e!497209))))

(declare-fun setRest!7056 () (InoxSet Context!782))

(assert (=> setNonEmpty!7056 (= (_2!5788 (h!13995 mapDefault!5799)) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7056 true) setRest!7056))))

(declare-fun b!771597 () Bool)

(declare-fun tp!252794 () Bool)

(assert (=> b!771597 (= e!497208 tp!252794)))

(declare-fun b!771598 () Bool)

(declare-fun tp!252795 () Bool)

(assert (=> b!771598 (= e!497209 tp!252795)))

(assert (= b!771596 b!771597))

(assert (= (and b!771596 condSetEmpty!7056) setIsEmpty!7056))

(assert (= (and b!771596 (not condSetEmpty!7056)) setNonEmpty!7056))

(assert (= setNonEmpty!7056 b!771598))

(assert (= (and b!771473 ((_ is Cons!8594) mapDefault!5799)) b!771596))

(declare-fun m!1040161 () Bool)

(assert (=> b!771596 m!1040161))

(declare-fun m!1040163 () Bool)

(assert (=> setNonEmpty!7056 m!1040163))

(declare-fun setIsEmpty!7057 () Bool)

(declare-fun setRes!7057 () Bool)

(assert (=> setIsEmpty!7057 setRes!7057))

(declare-fun b!771600 () Bool)

(declare-fun e!497211 () Bool)

(declare-fun tp!252799 () Bool)

(assert (=> b!771600 (= e!497211 tp!252799)))

(declare-fun e!497212 () Bool)

(assert (=> b!771454 (= tp!252719 e!497212)))

(declare-fun b!771599 () Bool)

(declare-fun tp!252798 () Bool)

(assert (=> b!771599 (= e!497212 (and setRes!7057 tp!252798))))

(declare-fun condSetEmpty!7057 () Bool)

(assert (=> b!771599 (= condSetEmpty!7057 (= (_1!5789 (_1!5790 (h!13996 mapDefault!5800))) ((as const (Array Context!782 Bool)) false)))))

(declare-fun setElem!7057 () Context!782)

(declare-fun tp!252797 () Bool)

(declare-fun setNonEmpty!7057 () Bool)

(assert (=> setNonEmpty!7057 (= setRes!7057 (and tp!252797 (inv!10934 setElem!7057) e!497211))))

(declare-fun setRest!7057 () (InoxSet Context!782))

(assert (=> setNonEmpty!7057 (= (_1!5789 (_1!5790 (h!13996 mapDefault!5800))) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7057 true) setRest!7057))))

(assert (= (and b!771599 condSetEmpty!7057) setIsEmpty!7057))

(assert (= (and b!771599 (not condSetEmpty!7057)) setNonEmpty!7057))

(assert (= setNonEmpty!7057 b!771600))

(assert (= (and b!771454 ((_ is Cons!8595) mapDefault!5800)) b!771599))

(declare-fun m!1040165 () Bool)

(assert (=> setNonEmpty!7057 m!1040165))

(declare-fun setIsEmpty!7058 () Bool)

(declare-fun setRes!7058 () Bool)

(assert (=> setIsEmpty!7058 setRes!7058))

(declare-fun b!771602 () Bool)

(declare-fun e!497213 () Bool)

(declare-fun tp!252802 () Bool)

(assert (=> b!771602 (= e!497213 tp!252802)))

(declare-fun e!497214 () Bool)

(assert (=> b!771464 (= tp!252735 e!497214)))

(declare-fun b!771601 () Bool)

(declare-fun tp!252801 () Bool)

(assert (=> b!771601 (= e!497214 (and setRes!7058 tp!252801))))

(declare-fun condSetEmpty!7058 () Bool)

(assert (=> b!771601 (= condSetEmpty!7058 (= (_1!5789 (_1!5790 (h!13996 (zeroValue!1445 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))))) ((as const (Array Context!782 Bool)) false)))))

(declare-fun setElem!7058 () Context!782)

(declare-fun setNonEmpty!7058 () Bool)

(declare-fun tp!252800 () Bool)

(assert (=> setNonEmpty!7058 (= setRes!7058 (and tp!252800 (inv!10934 setElem!7058) e!497213))))

(declare-fun setRest!7058 () (InoxSet Context!782))

(assert (=> setNonEmpty!7058 (= (_1!5789 (_1!5790 (h!13996 (zeroValue!1445 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7058 true) setRest!7058))))

(assert (= (and b!771601 condSetEmpty!7058) setIsEmpty!7058))

(assert (= (and b!771601 (not condSetEmpty!7058)) setNonEmpty!7058))

(assert (= setNonEmpty!7058 b!771602))

(assert (= (and b!771464 ((_ is Cons!8595) (zeroValue!1445 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134)))))))) b!771601))

(declare-fun m!1040167 () Bool)

(assert (=> setNonEmpty!7058 m!1040167))

(declare-fun setIsEmpty!7059 () Bool)

(declare-fun setRes!7059 () Bool)

(assert (=> setIsEmpty!7059 setRes!7059))

(declare-fun b!771604 () Bool)

(declare-fun e!497215 () Bool)

(declare-fun tp!252805 () Bool)

(assert (=> b!771604 (= e!497215 tp!252805)))

(declare-fun e!497216 () Bool)

(assert (=> b!771464 (= tp!252731 e!497216)))

(declare-fun b!771603 () Bool)

(declare-fun tp!252804 () Bool)

(assert (=> b!771603 (= e!497216 (and setRes!7059 tp!252804))))

(declare-fun condSetEmpty!7059 () Bool)

(assert (=> b!771603 (= condSetEmpty!7059 (= (_1!5789 (_1!5790 (h!13996 (minValue!1445 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))))) ((as const (Array Context!782 Bool)) false)))))

(declare-fun tp!252803 () Bool)

(declare-fun setNonEmpty!7059 () Bool)

(declare-fun setElem!7059 () Context!782)

(assert (=> setNonEmpty!7059 (= setRes!7059 (and tp!252803 (inv!10934 setElem!7059) e!497215))))

(declare-fun setRest!7059 () (InoxSet Context!782))

(assert (=> setNonEmpty!7059 (= (_1!5789 (_1!5790 (h!13996 (minValue!1445 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134))))))))) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7059 true) setRest!7059))))

(assert (= (and b!771603 condSetEmpty!7059) setIsEmpty!7059))

(assert (= (and b!771603 (not condSetEmpty!7059)) setNonEmpty!7059))

(assert (= setNonEmpty!7059 b!771604))

(assert (= (and b!771464 ((_ is Cons!8595) (minValue!1445 (v!18730 (underlying!2559 (v!18731 (underlying!2560 (cache!1547 cacheFindLongestMatch!134)))))))) b!771603))

(declare-fun m!1040169 () Bool)

(assert (=> setNonEmpty!7059 m!1040169))

(declare-fun tp!252807 () Bool)

(declare-fun tp!252806 () Bool)

(declare-fun e!497218 () Bool)

(declare-fun b!771605 () Bool)

(assert (=> b!771605 (= e!497218 (and (inv!10926 (left!6395 (c!130274 totalInput!472))) tp!252807 (inv!10926 (right!6725 (c!130274 totalInput!472))) tp!252806))))

(declare-fun b!771607 () Bool)

(declare-fun e!497217 () Bool)

(declare-fun tp!252808 () Bool)

(assert (=> b!771607 (= e!497217 tp!252808)))

(declare-fun b!771606 () Bool)

(assert (=> b!771606 (= e!497218 (and (inv!10933 (xs!5573 (c!130274 totalInput!472))) e!497217))))

(assert (=> b!771474 (= tp!252742 (and (inv!10926 (c!130274 totalInput!472)) e!497218))))

(assert (= (and b!771474 ((_ is Node!2886) (c!130274 totalInput!472))) b!771605))

(assert (= b!771606 b!771607))

(assert (= (and b!771474 ((_ is Leaf!4234) (c!130274 totalInput!472))) b!771606))

(declare-fun m!1040171 () Bool)

(assert (=> b!771605 m!1040171))

(declare-fun m!1040173 () Bool)

(assert (=> b!771605 m!1040173))

(declare-fun m!1040175 () Bool)

(assert (=> b!771606 m!1040175))

(assert (=> b!771474 m!1039993))

(declare-fun b!771622 () Bool)

(declare-fun e!497233 () Bool)

(declare-fun tp!252831 () Bool)

(assert (=> b!771622 (= e!497233 tp!252831)))

(declare-fun b!771623 () Bool)

(declare-fun e!497231 () Bool)

(declare-fun tp!252838 () Bool)

(assert (=> b!771623 (= e!497231 tp!252838)))

(declare-fun tp!252841 () Bool)

(declare-fun setRes!7065 () Bool)

(declare-fun mapDefault!5806 () List!8607)

(declare-fun b!771624 () Bool)

(declare-fun e!497232 () Bool)

(declare-fun tp!252839 () Bool)

(declare-fun e!497236 () Bool)

(assert (=> b!771624 (= e!497232 (and tp!252841 (inv!10934 (_2!5785 (_1!5786 (h!13994 mapDefault!5806)))) e!497236 tp_is_empty!3731 setRes!7065 tp!252839))))

(declare-fun condSetEmpty!7064 () Bool)

(assert (=> b!771624 (= condSetEmpty!7064 (= (_2!5786 (h!13994 mapDefault!5806)) ((as const (Array Context!782 Bool)) false)))))

(declare-fun mapIsEmpty!5806 () Bool)

(declare-fun mapRes!5806 () Bool)

(assert (=> mapIsEmpty!5806 mapRes!5806))

(declare-fun condMapEmpty!5806 () Bool)

(assert (=> mapNonEmpty!5800 (= condMapEmpty!5806 (= mapRest!5798 ((as const (Array (_ BitVec 32) List!8607)) mapDefault!5806)))))

(assert (=> mapNonEmpty!5800 (= tp!252727 (and e!497232 mapRes!5806))))

(declare-fun setIsEmpty!7064 () Bool)

(assert (=> setIsEmpty!7064 setRes!7065))

(declare-fun b!771625 () Bool)

(declare-fun tp!252835 () Bool)

(assert (=> b!771625 (= e!497236 tp!252835)))

(declare-fun mapNonEmpty!5806 () Bool)

(declare-fun tp!252836 () Bool)

(declare-fun e!497235 () Bool)

(assert (=> mapNonEmpty!5806 (= mapRes!5806 (and tp!252836 e!497235))))

(declare-fun mapRest!5806 () (Array (_ BitVec 32) List!8607))

(declare-fun mapValue!5806 () List!8607)

(declare-fun mapKey!5806 () (_ BitVec 32))

(assert (=> mapNonEmpty!5806 (= mapRest!5798 (store mapRest!5806 mapKey!5806 mapValue!5806))))

(declare-fun b!771626 () Bool)

(declare-fun setRes!7064 () Bool)

(declare-fun tp!252832 () Bool)

(declare-fun tp!252833 () Bool)

(assert (=> b!771626 (= e!497235 (and tp!252832 (inv!10934 (_2!5785 (_1!5786 (h!13994 mapValue!5806)))) e!497231 tp_is_empty!3731 setRes!7064 tp!252833))))

(declare-fun condSetEmpty!7065 () Bool)

(assert (=> b!771626 (= condSetEmpty!7065 (= (_2!5786 (h!13994 mapValue!5806)) ((as const (Array Context!782 Bool)) false)))))

(declare-fun tp!252837 () Bool)

(declare-fun setElem!7065 () Context!782)

(declare-fun setNonEmpty!7064 () Bool)

(assert (=> setNonEmpty!7064 (= setRes!7065 (and tp!252837 (inv!10934 setElem!7065) e!497233))))

(declare-fun setRest!7064 () (InoxSet Context!782))

(assert (=> setNonEmpty!7064 (= (_2!5786 (h!13994 mapDefault!5806)) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7065 true) setRest!7064))))

(declare-fun setElem!7064 () Context!782)

(declare-fun setNonEmpty!7065 () Bool)

(declare-fun tp!252840 () Bool)

(declare-fun e!497234 () Bool)

(assert (=> setNonEmpty!7065 (= setRes!7064 (and tp!252840 (inv!10934 setElem!7064) e!497234))))

(declare-fun setRest!7065 () (InoxSet Context!782))

(assert (=> setNonEmpty!7065 (= (_2!5786 (h!13994 mapValue!5806)) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7064 true) setRest!7065))))

(declare-fun setIsEmpty!7065 () Bool)

(assert (=> setIsEmpty!7065 setRes!7064))

(declare-fun b!771627 () Bool)

(declare-fun tp!252834 () Bool)

(assert (=> b!771627 (= e!497234 tp!252834)))

(assert (= (and mapNonEmpty!5800 condMapEmpty!5806) mapIsEmpty!5806))

(assert (= (and mapNonEmpty!5800 (not condMapEmpty!5806)) mapNonEmpty!5806))

(assert (= b!771626 b!771623))

(assert (= (and b!771626 condSetEmpty!7065) setIsEmpty!7065))

(assert (= (and b!771626 (not condSetEmpty!7065)) setNonEmpty!7065))

(assert (= setNonEmpty!7065 b!771627))

(assert (= (and mapNonEmpty!5806 ((_ is Cons!8593) mapValue!5806)) b!771626))

(assert (= b!771624 b!771625))

(assert (= (and b!771624 condSetEmpty!7064) setIsEmpty!7064))

(assert (= (and b!771624 (not condSetEmpty!7064)) setNonEmpty!7064))

(assert (= setNonEmpty!7064 b!771622))

(assert (= (and mapNonEmpty!5800 ((_ is Cons!8593) mapDefault!5806)) b!771624))

(declare-fun m!1040177 () Bool)

(assert (=> setNonEmpty!7064 m!1040177))

(declare-fun m!1040179 () Bool)

(assert (=> setNonEmpty!7065 m!1040179))

(declare-fun m!1040181 () Bool)

(assert (=> b!771626 m!1040181))

(declare-fun m!1040183 () Bool)

(assert (=> b!771624 m!1040183))

(declare-fun m!1040185 () Bool)

(assert (=> mapNonEmpty!5806 m!1040185))

(declare-fun setIsEmpty!7068 () Bool)

(declare-fun setRes!7068 () Bool)

(assert (=> setIsEmpty!7068 setRes!7068))

(declare-fun setElem!7068 () Context!782)

(declare-fun e!497243 () Bool)

(declare-fun tp!252853 () Bool)

(declare-fun setNonEmpty!7068 () Bool)

(assert (=> setNonEmpty!7068 (= setRes!7068 (and tp!252853 (inv!10934 setElem!7068) e!497243))))

(declare-fun setRest!7068 () (InoxSet Context!782))

(assert (=> setNonEmpty!7068 (= (_2!5786 (h!13994 mapValue!5800)) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7068 true) setRest!7068))))

(declare-fun b!771636 () Bool)

(declare-fun e!497244 () Bool)

(declare-fun tp!252854 () Bool)

(assert (=> b!771636 (= e!497244 tp!252854)))

(declare-fun tp!252856 () Bool)

(declare-fun tp!252855 () Bool)

(declare-fun b!771637 () Bool)

(declare-fun e!497245 () Bool)

(assert (=> b!771637 (= e!497245 (and tp!252856 (inv!10934 (_2!5785 (_1!5786 (h!13994 mapValue!5800)))) e!497244 tp_is_empty!3731 setRes!7068 tp!252855))))

(declare-fun condSetEmpty!7068 () Bool)

(assert (=> b!771637 (= condSetEmpty!7068 (= (_2!5786 (h!13994 mapValue!5800)) ((as const (Array Context!782 Bool)) false)))))

(declare-fun b!771638 () Bool)

(declare-fun tp!252852 () Bool)

(assert (=> b!771638 (= e!497243 tp!252852)))

(assert (=> mapNonEmpty!5800 (= tp!252728 e!497245)))

(assert (= b!771637 b!771636))

(assert (= (and b!771637 condSetEmpty!7068) setIsEmpty!7068))

(assert (= (and b!771637 (not condSetEmpty!7068)) setNonEmpty!7068))

(assert (= setNonEmpty!7068 b!771638))

(assert (= (and mapNonEmpty!5800 ((_ is Cons!8593) mapValue!5800)) b!771637))

(declare-fun m!1040187 () Bool)

(assert (=> setNonEmpty!7068 m!1040187))

(declare-fun m!1040189 () Bool)

(assert (=> b!771637 m!1040189))

(declare-fun e!497260 () Bool)

(declare-fun e!497262 () Bool)

(declare-fun tp!252877 () Bool)

(declare-fun setRes!7073 () Bool)

(declare-fun b!771653 () Bool)

(declare-fun mapValue!5809 () List!8608)

(assert (=> b!771653 (= e!497262 (and (inv!10934 (_1!5787 (_1!5788 (h!13995 mapValue!5809)))) e!497260 tp_is_empty!3731 setRes!7073 tp!252877))))

(declare-fun condSetEmpty!7074 () Bool)

(assert (=> b!771653 (= condSetEmpty!7074 (= (_2!5788 (h!13995 mapValue!5809)) ((as const (Array Context!782 Bool)) false)))))

(declare-fun condMapEmpty!5809 () Bool)

(declare-fun mapDefault!5809 () List!8608)

(assert (=> mapNonEmpty!5798 (= condMapEmpty!5809 (= mapRest!5800 ((as const (Array (_ BitVec 32) List!8608)) mapDefault!5809)))))

(declare-fun e!497263 () Bool)

(declare-fun mapRes!5809 () Bool)

(assert (=> mapNonEmpty!5798 (= tp!252720 (and e!497263 mapRes!5809))))

(declare-fun mapNonEmpty!5809 () Bool)

(declare-fun tp!252876 () Bool)

(assert (=> mapNonEmpty!5809 (= mapRes!5809 (and tp!252876 e!497262))))

(declare-fun mapRest!5809 () (Array (_ BitVec 32) List!8608))

(declare-fun mapKey!5809 () (_ BitVec 32))

(assert (=> mapNonEmpty!5809 (= mapRest!5800 (store mapRest!5809 mapKey!5809 mapValue!5809))))

(declare-fun b!771654 () Bool)

(declare-fun tp!252880 () Bool)

(assert (=> b!771654 (= e!497260 tp!252880)))

(declare-fun b!771655 () Bool)

(declare-fun e!497261 () Bool)

(declare-fun tp!252883 () Bool)

(assert (=> b!771655 (= e!497261 tp!252883)))

(declare-fun setIsEmpty!7073 () Bool)

(assert (=> setIsEmpty!7073 setRes!7073))

(declare-fun setNonEmpty!7073 () Bool)

(declare-fun tp!252875 () Bool)

(declare-fun setElem!7073 () Context!782)

(declare-fun setRes!7074 () Bool)

(assert (=> setNonEmpty!7073 (= setRes!7074 (and tp!252875 (inv!10934 setElem!7073) e!497261))))

(declare-fun setRest!7074 () (InoxSet Context!782))

(assert (=> setNonEmpty!7073 (= (_2!5788 (h!13995 mapDefault!5809)) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7073 true) setRest!7074))))

(declare-fun b!771656 () Bool)

(declare-fun tp!252878 () Bool)

(declare-fun e!497259 () Bool)

(assert (=> b!771656 (= e!497263 (and (inv!10934 (_1!5787 (_1!5788 (h!13995 mapDefault!5809)))) e!497259 tp_is_empty!3731 setRes!7074 tp!252878))))

(declare-fun condSetEmpty!7073 () Bool)

(assert (=> b!771656 (= condSetEmpty!7073 (= (_2!5788 (h!13995 mapDefault!5809)) ((as const (Array Context!782 Bool)) false)))))

(declare-fun mapIsEmpty!5809 () Bool)

(assert (=> mapIsEmpty!5809 mapRes!5809))

(declare-fun b!771657 () Bool)

(declare-fun e!497258 () Bool)

(declare-fun tp!252879 () Bool)

(assert (=> b!771657 (= e!497258 tp!252879)))

(declare-fun setIsEmpty!7074 () Bool)

(assert (=> setIsEmpty!7074 setRes!7074))

(declare-fun b!771658 () Bool)

(declare-fun tp!252881 () Bool)

(assert (=> b!771658 (= e!497259 tp!252881)))

(declare-fun setElem!7074 () Context!782)

(declare-fun tp!252882 () Bool)

(declare-fun setNonEmpty!7074 () Bool)

(assert (=> setNonEmpty!7074 (= setRes!7073 (and tp!252882 (inv!10934 setElem!7074) e!497258))))

(declare-fun setRest!7073 () (InoxSet Context!782))

(assert (=> setNonEmpty!7074 (= (_2!5788 (h!13995 mapValue!5809)) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7074 true) setRest!7073))))

(assert (= (and mapNonEmpty!5798 condMapEmpty!5809) mapIsEmpty!5809))

(assert (= (and mapNonEmpty!5798 (not condMapEmpty!5809)) mapNonEmpty!5809))

(assert (= b!771653 b!771654))

(assert (= (and b!771653 condSetEmpty!7074) setIsEmpty!7073))

(assert (= (and b!771653 (not condSetEmpty!7074)) setNonEmpty!7074))

(assert (= setNonEmpty!7074 b!771657))

(assert (= (and mapNonEmpty!5809 ((_ is Cons!8594) mapValue!5809)) b!771653))

(assert (= b!771656 b!771658))

(assert (= (and b!771656 condSetEmpty!7073) setIsEmpty!7074))

(assert (= (and b!771656 (not condSetEmpty!7073)) setNonEmpty!7073))

(assert (= setNonEmpty!7073 b!771655))

(assert (= (and mapNonEmpty!5798 ((_ is Cons!8594) mapDefault!5809)) b!771656))

(declare-fun m!1040191 () Bool)

(assert (=> mapNonEmpty!5809 m!1040191))

(declare-fun m!1040193 () Bool)

(assert (=> b!771653 m!1040193))

(declare-fun m!1040195 () Bool)

(assert (=> setNonEmpty!7073 m!1040195))

(declare-fun m!1040197 () Bool)

(assert (=> b!771656 m!1040197))

(declare-fun m!1040199 () Bool)

(assert (=> setNonEmpty!7074 m!1040199))

(declare-fun e!497266 () Bool)

(assert (=> mapNonEmpty!5798 (= tp!252717 e!497266)))

(declare-fun setRes!7075 () Bool)

(declare-fun e!497264 () Bool)

(declare-fun b!771659 () Bool)

(declare-fun tp!252884 () Bool)

(assert (=> b!771659 (= e!497266 (and (inv!10934 (_1!5787 (_1!5788 (h!13995 mapValue!5799)))) e!497264 tp_is_empty!3731 setRes!7075 tp!252884))))

(declare-fun condSetEmpty!7075 () Bool)

(assert (=> b!771659 (= condSetEmpty!7075 (= (_2!5788 (h!13995 mapValue!5799)) ((as const (Array Context!782 Bool)) false)))))

(declare-fun setIsEmpty!7075 () Bool)

(assert (=> setIsEmpty!7075 setRes!7075))

(declare-fun setElem!7075 () Context!782)

(declare-fun tp!252887 () Bool)

(declare-fun setNonEmpty!7075 () Bool)

(declare-fun e!497265 () Bool)

(assert (=> setNonEmpty!7075 (= setRes!7075 (and tp!252887 (inv!10934 setElem!7075) e!497265))))

(declare-fun setRest!7075 () (InoxSet Context!782))

(assert (=> setNonEmpty!7075 (= (_2!5788 (h!13995 mapValue!5799)) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7075 true) setRest!7075))))

(declare-fun b!771660 () Bool)

(declare-fun tp!252885 () Bool)

(assert (=> b!771660 (= e!497264 tp!252885)))

(declare-fun b!771661 () Bool)

(declare-fun tp!252886 () Bool)

(assert (=> b!771661 (= e!497265 tp!252886)))

(assert (= b!771659 b!771660))

(assert (= (and b!771659 condSetEmpty!7075) setIsEmpty!7075))

(assert (= (and b!771659 (not condSetEmpty!7075)) setNonEmpty!7075))

(assert (= setNonEmpty!7075 b!771661))

(assert (= (and mapNonEmpty!5798 ((_ is Cons!8594) mapValue!5799)) b!771659))

(declare-fun m!1040201 () Bool)

(assert (=> b!771659 m!1040201))

(declare-fun m!1040203 () Bool)

(assert (=> setNonEmpty!7075 m!1040203))

(declare-fun b!771672 () Bool)

(declare-fun b_free!24413 () Bool)

(declare-fun b_next!24477 () Bool)

(assert (=> b!771672 (= b_free!24413 (not b_next!24477))))

(declare-fun tp!252899 () Bool)

(declare-fun b_and!71893 () Bool)

(assert (=> b!771672 (= tp!252899 b_and!71893)))

(declare-fun b_free!24415 () Bool)

(declare-fun b_next!24479 () Bool)

(assert (=> b!771672 (= b_free!24415 (not b_next!24479))))

(declare-fun tp!252896 () Bool)

(declare-fun b_and!71895 () Bool)

(assert (=> b!771672 (= tp!252896 b_and!71895)))

(declare-fun e!497278 () Bool)

(assert (=> b!771672 (= e!497278 (and tp!252899 tp!252896))))

(declare-fun e!497276 () Bool)

(declare-fun tp!252898 () Bool)

(declare-fun b!771671 () Bool)

(assert (=> b!771671 (= e!497276 (and tp!252898 (inv!10924 (tag!1899 (h!13999 (t!91894 rulesArg!343)))) (inv!10930 (transformation!1637 (h!13999 (t!91894 rulesArg!343)))) e!497278))))

(declare-fun b!771670 () Bool)

(declare-fun e!497275 () Bool)

(declare-fun tp!252897 () Bool)

(assert (=> b!771670 (= e!497275 (and e!497276 tp!252897))))

(assert (=> b!771441 (= tp!252715 e!497275)))

(assert (= b!771671 b!771672))

(assert (= b!771670 b!771671))

(assert (= (and b!771441 ((_ is Cons!8598) (t!91894 rulesArg!343))) b!771670))

(declare-fun m!1040205 () Bool)

(assert (=> b!771671 m!1040205))

(declare-fun m!1040207 () Bool)

(assert (=> b!771671 m!1040207))

(declare-fun setIsEmpty!7076 () Bool)

(declare-fun setRes!7076 () Bool)

(assert (=> setIsEmpty!7076 setRes!7076))

(declare-fun e!497279 () Bool)

(declare-fun tp!252901 () Bool)

(declare-fun setNonEmpty!7076 () Bool)

(declare-fun setElem!7076 () Context!782)

(assert (=> setNonEmpty!7076 (= setRes!7076 (and tp!252901 (inv!10934 setElem!7076) e!497279))))

(declare-fun setRest!7076 () (InoxSet Context!782))

(assert (=> setNonEmpty!7076 (= (_2!5786 (h!13994 mapDefault!5798)) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7076 true) setRest!7076))))

(declare-fun b!771673 () Bool)

(declare-fun e!497280 () Bool)

(declare-fun tp!252902 () Bool)

(assert (=> b!771673 (= e!497280 tp!252902)))

(declare-fun tp!252904 () Bool)

(declare-fun e!497281 () Bool)

(declare-fun tp!252903 () Bool)

(declare-fun b!771674 () Bool)

(assert (=> b!771674 (= e!497281 (and tp!252904 (inv!10934 (_2!5785 (_1!5786 (h!13994 mapDefault!5798)))) e!497280 tp_is_empty!3731 setRes!7076 tp!252903))))

(declare-fun condSetEmpty!7076 () Bool)

(assert (=> b!771674 (= condSetEmpty!7076 (= (_2!5786 (h!13994 mapDefault!5798)) ((as const (Array Context!782 Bool)) false)))))

(declare-fun b!771675 () Bool)

(declare-fun tp!252900 () Bool)

(assert (=> b!771675 (= e!497279 tp!252900)))

(assert (=> b!771452 (= tp!252718 e!497281)))

(assert (= b!771674 b!771673))

(assert (= (and b!771674 condSetEmpty!7076) setIsEmpty!7076))

(assert (= (and b!771674 (not condSetEmpty!7076)) setNonEmpty!7076))

(assert (= setNonEmpty!7076 b!771675))

(assert (= (and b!771452 ((_ is Cons!8593) mapDefault!5798)) b!771674))

(declare-fun m!1040209 () Bool)

(assert (=> setNonEmpty!7076 m!1040209))

(declare-fun m!1040211 () Bool)

(assert (=> b!771674 m!1040211))

(declare-fun e!497284 () Bool)

(assert (=> b!771468 (= tp!252726 e!497284)))

(declare-fun setRes!7077 () Bool)

(declare-fun b!771676 () Bool)

(declare-fun tp!252905 () Bool)

(declare-fun e!497282 () Bool)

(assert (=> b!771676 (= e!497284 (and (inv!10934 (_1!5787 (_1!5788 (h!13995 (zeroValue!1444 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653)))))))))) e!497282 tp_is_empty!3731 setRes!7077 tp!252905))))

(declare-fun condSetEmpty!7077 () Bool)

(assert (=> b!771676 (= condSetEmpty!7077 (= (_2!5788 (h!13995 (zeroValue!1444 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653)))))))) ((as const (Array Context!782 Bool)) false)))))

(declare-fun setIsEmpty!7077 () Bool)

(assert (=> setIsEmpty!7077 setRes!7077))

(declare-fun setElem!7077 () Context!782)

(declare-fun e!497283 () Bool)

(declare-fun tp!252908 () Bool)

(declare-fun setNonEmpty!7077 () Bool)

(assert (=> setNonEmpty!7077 (= setRes!7077 (and tp!252908 (inv!10934 setElem!7077) e!497283))))

(declare-fun setRest!7077 () (InoxSet Context!782))

(assert (=> setNonEmpty!7077 (= (_2!5788 (h!13995 (zeroValue!1444 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7077 true) setRest!7077))))

(declare-fun b!771677 () Bool)

(declare-fun tp!252906 () Bool)

(assert (=> b!771677 (= e!497282 tp!252906)))

(declare-fun b!771678 () Bool)

(declare-fun tp!252907 () Bool)

(assert (=> b!771678 (= e!497283 tp!252907)))

(assert (= b!771676 b!771677))

(assert (= (and b!771676 condSetEmpty!7077) setIsEmpty!7077))

(assert (= (and b!771676 (not condSetEmpty!7077)) setNonEmpty!7077))

(assert (= setNonEmpty!7077 b!771678))

(assert (= (and b!771468 ((_ is Cons!8594) (zeroValue!1444 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653)))))))) b!771676))

(declare-fun m!1040213 () Bool)

(assert (=> b!771676 m!1040213))

(declare-fun m!1040215 () Bool)

(assert (=> setNonEmpty!7077 m!1040215))

(declare-fun e!497287 () Bool)

(assert (=> b!771468 (= tp!252724 e!497287)))

(declare-fun setRes!7078 () Bool)

(declare-fun e!497285 () Bool)

(declare-fun b!771679 () Bool)

(declare-fun tp!252909 () Bool)

(assert (=> b!771679 (= e!497287 (and (inv!10934 (_1!5787 (_1!5788 (h!13995 (minValue!1444 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653)))))))))) e!497285 tp_is_empty!3731 setRes!7078 tp!252909))))

(declare-fun condSetEmpty!7078 () Bool)

(assert (=> b!771679 (= condSetEmpty!7078 (= (_2!5788 (h!13995 (minValue!1444 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653)))))))) ((as const (Array Context!782 Bool)) false)))))

(declare-fun setIsEmpty!7078 () Bool)

(assert (=> setIsEmpty!7078 setRes!7078))

(declare-fun setNonEmpty!7078 () Bool)

(declare-fun e!497286 () Bool)

(declare-fun setElem!7078 () Context!782)

(declare-fun tp!252912 () Bool)

(assert (=> setNonEmpty!7078 (= setRes!7078 (and tp!252912 (inv!10934 setElem!7078) e!497286))))

(declare-fun setRest!7078 () (InoxSet Context!782))

(assert (=> setNonEmpty!7078 (= (_2!5788 (h!13995 (minValue!1444 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653)))))))) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7078 true) setRest!7078))))

(declare-fun b!771680 () Bool)

(declare-fun tp!252910 () Bool)

(assert (=> b!771680 (= e!497285 tp!252910)))

(declare-fun b!771681 () Bool)

(declare-fun tp!252911 () Bool)

(assert (=> b!771681 (= e!497286 tp!252911)))

(assert (= b!771679 b!771680))

(assert (= (and b!771679 condSetEmpty!7078) setIsEmpty!7078))

(assert (= (and b!771679 (not condSetEmpty!7078)) setNonEmpty!7078))

(assert (= setNonEmpty!7078 b!771681))

(assert (= (and b!771468 ((_ is Cons!8594) (minValue!1444 (v!18727 (underlying!2557 (v!18728 (underlying!2558 (cache!1546 cacheUp!653)))))))) b!771679))

(declare-fun m!1040217 () Bool)

(assert (=> b!771679 m!1040217))

(declare-fun m!1040219 () Bool)

(assert (=> setNonEmpty!7078 m!1040219))

(declare-fun setIsEmpty!7079 () Bool)

(declare-fun setRes!7079 () Bool)

(assert (=> setIsEmpty!7079 setRes!7079))

(declare-fun setNonEmpty!7079 () Bool)

(declare-fun setElem!7079 () Context!782)

(declare-fun tp!252914 () Bool)

(declare-fun e!497288 () Bool)

(assert (=> setNonEmpty!7079 (= setRes!7079 (and tp!252914 (inv!10934 setElem!7079) e!497288))))

(declare-fun setRest!7079 () (InoxSet Context!782))

(assert (=> setNonEmpty!7079 (= (_2!5786 (h!13994 (zeroValue!1443 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7079 true) setRest!7079))))

(declare-fun b!771682 () Bool)

(declare-fun e!497289 () Bool)

(declare-fun tp!252915 () Bool)

(assert (=> b!771682 (= e!497289 tp!252915)))

(declare-fun tp!252916 () Bool)

(declare-fun tp!252917 () Bool)

(declare-fun e!497290 () Bool)

(declare-fun b!771683 () Bool)

(assert (=> b!771683 (= e!497290 (and tp!252917 (inv!10934 (_2!5785 (_1!5786 (h!13994 (zeroValue!1443 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666)))))))))) e!497289 tp_is_empty!3731 setRes!7079 tp!252916))))

(declare-fun condSetEmpty!7079 () Bool)

(assert (=> b!771683 (= condSetEmpty!7079 (= (_2!5786 (h!13994 (zeroValue!1443 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666)))))))) ((as const (Array Context!782 Bool)) false)))))

(declare-fun b!771684 () Bool)

(declare-fun tp!252913 () Bool)

(assert (=> b!771684 (= e!497288 tp!252913)))

(assert (=> b!771439 (= tp!252721 e!497290)))

(assert (= b!771683 b!771682))

(assert (= (and b!771683 condSetEmpty!7079) setIsEmpty!7079))

(assert (= (and b!771683 (not condSetEmpty!7079)) setNonEmpty!7079))

(assert (= setNonEmpty!7079 b!771684))

(assert (= (and b!771439 ((_ is Cons!8593) (zeroValue!1443 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666)))))))) b!771683))

(declare-fun m!1040221 () Bool)

(assert (=> setNonEmpty!7079 m!1040221))

(declare-fun m!1040223 () Bool)

(assert (=> b!771683 m!1040223))

(declare-fun setIsEmpty!7080 () Bool)

(declare-fun setRes!7080 () Bool)

(assert (=> setIsEmpty!7080 setRes!7080))

(declare-fun e!497291 () Bool)

(declare-fun setElem!7080 () Context!782)

(declare-fun tp!252919 () Bool)

(declare-fun setNonEmpty!7080 () Bool)

(assert (=> setNonEmpty!7080 (= setRes!7080 (and tp!252919 (inv!10934 setElem!7080) e!497291))))

(declare-fun setRest!7080 () (InoxSet Context!782))

(assert (=> setNonEmpty!7080 (= (_2!5786 (h!13994 (minValue!1443 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666)))))))) ((_ map or) (store ((as const (Array Context!782 Bool)) false) setElem!7080 true) setRest!7080))))

(declare-fun b!771685 () Bool)

(declare-fun e!497292 () Bool)

(declare-fun tp!252920 () Bool)

(assert (=> b!771685 (= e!497292 tp!252920)))

(declare-fun tp!252922 () Bool)

(declare-fun b!771686 () Bool)

(declare-fun e!497293 () Bool)

(declare-fun tp!252921 () Bool)

(assert (=> b!771686 (= e!497293 (and tp!252922 (inv!10934 (_2!5785 (_1!5786 (h!13994 (minValue!1443 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666)))))))))) e!497292 tp_is_empty!3731 setRes!7080 tp!252921))))

(declare-fun condSetEmpty!7080 () Bool)

(assert (=> b!771686 (= condSetEmpty!7080 (= (_2!5786 (h!13994 (minValue!1443 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666)))))))) ((as const (Array Context!782 Bool)) false)))))

(declare-fun b!771687 () Bool)

(declare-fun tp!252918 () Bool)

(assert (=> b!771687 (= e!497291 tp!252918)))

(assert (=> b!771439 (= tp!252739 e!497293)))

(assert (= b!771686 b!771685))

(assert (= (and b!771686 condSetEmpty!7080) setIsEmpty!7080))

(assert (= (and b!771686 (not condSetEmpty!7080)) setNonEmpty!7080))

(assert (= setNonEmpty!7080 b!771687))

(assert (= (and b!771439 ((_ is Cons!8593) (minValue!1443 (v!18725 (underlying!2555 (v!18726 (underlying!2556 (cache!1545 cacheDown!666)))))))) b!771686))

(declare-fun m!1040225 () Bool)

(assert (=> setNonEmpty!7080 m!1040225))

(declare-fun m!1040227 () Bool)

(assert (=> b!771686 m!1040227))

(declare-fun b!771700 () Bool)

(declare-fun e!497296 () Bool)

(declare-fun tp!252935 () Bool)

(assert (=> b!771700 (= e!497296 tp!252935)))

(declare-fun b!771701 () Bool)

(declare-fun tp!252933 () Bool)

(declare-fun tp!252936 () Bool)

(assert (=> b!771701 (= e!497296 (and tp!252933 tp!252936))))

(declare-fun b!771698 () Bool)

(assert (=> b!771698 (= e!497296 tp_is_empty!3731)))

(declare-fun b!771699 () Bool)

(declare-fun tp!252934 () Bool)

(declare-fun tp!252937 () Bool)

(assert (=> b!771699 (= e!497296 (and tp!252934 tp!252937))))

(assert (=> b!771478 (= tp!252730 e!497296)))

(assert (= (and b!771478 ((_ is ElementMatch!1989) (regex!1637 (h!13999 rulesArg!343)))) b!771698))

(assert (= (and b!771478 ((_ is Concat!3670) (regex!1637 (h!13999 rulesArg!343)))) b!771699))

(assert (= (and b!771478 ((_ is Star!1989) (regex!1637 (h!13999 rulesArg!343)))) b!771700))

(assert (= (and b!771478 ((_ is Union!1989) (regex!1637 (h!13999 rulesArg!343)))) b!771701))

(check-sat (not b!771677) (not b!771490) tp_is_empty!3731 (not setNonEmpty!7056) (not b!771625) (not b_next!24479) (not b!771676) (not b!771583) (not b!771487) (not b!771534) (not setNonEmpty!7079) (not b_next!24461) (not b!771575) (not b!771531) (not b!771528) (not b!771493) (not b!771658) (not b!771679) (not b!771686) (not b_next!24469) (not b!771637) (not b!771673) (not b!771700) (not b!771657) (not d!251648) (not b_next!24475) (not b_next!24467) (not b!771603) (not setNonEmpty!7074) (not setNonEmpty!7078) (not b!771683) (not b!771601) (not b!771636) (not d!251662) (not b!771687) (not b!771573) (not b!771505) (not b!771537) (not setNonEmpty!7076) (not d!251698) (not b!771599) (not b!771510) (not b!771584) (not b_next!24477) b_and!71883 (not b!771684) (not setNonEmpty!7049) (not b!771680) (not setNonEmpty!7064) (not b!771549) (not setNonEmpty!7057) (not b!771586) (not b!771503) (not b!771656) (not b!771551) (not b!771606) (not b!771465) (not b!771499) (not d!251652) (not d!251700) (not b!771654) b_and!71877 (not b!771659) (not d!251660) (not d!251668) (not setNonEmpty!7068) (not b!771500) (not b!771624) (not b!771627) (not b!771576) (not b!771605) (not setNonEmpty!7058) (not b!771661) (not b!771685) (not b!771623) (not b!771562) (not b_next!24463) (not b!771548) (not mapNonEmpty!5803) (not setNonEmpty!7075) (not d!251708) (not d!251672) b_and!71893 (not setNonEmpty!7059) (not d!251686) (not b!771511) (not d!251674) b_and!71881 (not mapNonEmpty!5806) b_and!71887 (not b!771607) (not d!251676) (not b!771574) (not b!771496) (not b!771682) (not b!771530) (not b!771587) (not b!771600) (not d!251704) (not b_next!24465) (not b!771653) (not d!251656) (not b!771502) (not b!771597) (not setNonEmpty!7073) (not b!771638) (not b!771485) (not setNonEmpty!7065) (not setNonEmpty!7080) (not b!771598) b_and!71889 (not b!771466) (not b!771660) (not b!771596) (not d!251650) (not b!771626) (not d!251654) (not b_next!24473) (not b!771671) b_and!71895 (not b!771474) (not b!771675) (not b!771681) (not b!771622) b_and!71891 (not b!771604) (not mapNonEmpty!5809) (not b!771550) (not b!771585) (not setNonEmpty!7077) (not b!771560) (not b!771655) (not b!771678) (not b!771547) (not b_next!24471) (not b!771699) (not d!251710) (not b!771561) (not b!771602) (not setNonEmpty!7053) (not b!771670) (not b!771701) (not setNonEmpty!7050) (not b!771674) b_and!71885 (not b!771529) b_and!71879)
(check-sat (not b_next!24479) (not b_next!24461) (not b_next!24469) b_and!71877 (not b_next!24463) b_and!71893 (not b_next!24465) b_and!71889 (not b_next!24473) b_and!71895 b_and!71891 (not b_next!24471) (not b_next!24475) (not b_next!24467) (not b_next!24477) b_and!71883 b_and!71881 b_and!71887 b_and!71885 b_and!71879)
