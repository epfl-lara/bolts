; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143026 () Bool)

(assert start!143026)

(declare-fun b!1538847 () Bool)

(declare-fun b_free!40087 () Bool)

(declare-fun b_next!40791 () Bool)

(assert (=> b!1538847 (= b_free!40087 (not b_next!40791))))

(declare-fun tp!445112 () Bool)

(declare-fun b_and!106965 () Bool)

(assert (=> b!1538847 (= tp!445112 b_and!106965)))

(declare-fun b!1538856 () Bool)

(declare-fun b_free!40089 () Bool)

(declare-fun b_next!40793 () Bool)

(assert (=> b!1538856 (= b_free!40089 (not b_next!40793))))

(declare-fun tp!445116 () Bool)

(declare-fun b_and!106967 () Bool)

(assert (=> b!1538856 (= tp!445116 b_and!106967)))

(declare-fun b!1538842 () Bool)

(declare-fun b_free!40091 () Bool)

(declare-fun b_next!40795 () Bool)

(assert (=> b!1538842 (= b_free!40091 (not b_next!40795))))

(declare-fun tp!445133 () Bool)

(declare-fun b_and!106969 () Bool)

(assert (=> b!1538842 (= tp!445133 b_and!106969)))

(declare-fun b!1538857 () Bool)

(declare-fun b_free!40093 () Bool)

(declare-fun b_next!40797 () Bool)

(assert (=> b!1538857 (= b_free!40093 (not b_next!40797))))

(declare-fun tp!445139 () Bool)

(declare-fun b_and!106971 () Bool)

(assert (=> b!1538857 (= tp!445139 b_and!106971)))

(declare-fun b!1538859 () Bool)

(declare-fun b_free!40095 () Bool)

(declare-fun b_next!40799 () Bool)

(assert (=> b!1538859 (= b_free!40095 (not b_next!40799))))

(declare-fun tp!445121 () Bool)

(declare-fun b_and!106973 () Bool)

(assert (=> b!1538859 (= tp!445121 b_and!106973)))

(declare-fun b!1538849 () Bool)

(declare-fun b_free!40097 () Bool)

(declare-fun b_next!40801 () Bool)

(assert (=> b!1538849 (= b_free!40097 (not b_next!40801))))

(declare-fun tp!445132 () Bool)

(declare-fun b_and!106975 () Bool)

(assert (=> b!1538849 (= tp!445132 b_and!106975)))

(declare-fun b!1538844 () Bool)

(declare-fun b_free!40099 () Bool)

(declare-fun b_next!40803 () Bool)

(assert (=> b!1538844 (= b_free!40099 (not b_next!40803))))

(declare-fun tp!445127 () Bool)

(declare-fun b_and!106977 () Bool)

(assert (=> b!1538844 (= tp!445127 b_and!106977)))

(declare-fun b_free!40101 () Bool)

(declare-fun b_next!40805 () Bool)

(assert (=> b!1538844 (= b_free!40101 (not b_next!40805))))

(declare-fun tp!445126 () Bool)

(declare-fun b_and!106979 () Bool)

(assert (=> b!1538844 (= tp!445126 b_and!106979)))

(declare-fun b!1538828 () Bool)

(declare-fun res!689505 () Bool)

(declare-fun e!984707 () Bool)

(assert (=> b!1538828 (=> (not res!689505) (not e!984707))))

(declare-datatypes ((C!8580 0))(
  ( (C!8581 (val!4862 Int)) )
))
(declare-datatypes ((Regex!4201 0))(
  ( (ElementMatch!4201 (c!251627 C!8580)) (Concat!7168 (regOne!8914 Regex!4201) (regTwo!8914 Regex!4201)) (EmptyExpr!4201) (Star!4201 (reg!4530 Regex!4201)) (EmptyLang!4201) (Union!4201 (regOne!8915 Regex!4201) (regTwo!8915 Regex!4201)) )
))
(declare-datatypes ((List!16437 0))(
  ( (Nil!16369) (Cons!16369 (h!21770 Regex!4201) (t!140643 List!16437)) )
))
(declare-datatypes ((Context!1438 0))(
  ( (Context!1439 (exprs!1219 List!16437)) )
))
(declare-datatypes ((array!5556 0))(
  ( (array!5557 (arr!2469 (Array (_ BitVec 32) (_ BitVec 64))) (size!13230 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!1516 0))(
  ( (tuple3!1517 (_1!8844 Regex!4201) (_2!8844 Context!1438) (_3!1135 C!8580)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15418 0))(
  ( (tuple2!15419 (_1!8845 tuple3!1516) (_2!8845 (InoxSet Context!1438))) )
))
(declare-datatypes ((List!16438 0))(
  ( (Nil!16370) (Cons!16370 (h!21771 tuple2!15418) (t!140644 List!16438)) )
))
(declare-datatypes ((array!5558 0))(
  ( (array!5559 (arr!2470 (Array (_ BitVec 32) List!16438)) (size!13231 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3186 0))(
  ( (LongMapFixedSize!3187 (defaultEntry!1953 Int) (mask!4782 (_ BitVec 32)) (extraKeys!1840 (_ BitVec 32)) (zeroValue!1850 List!16438) (minValue!1850 List!16438) (_size!3267 (_ BitVec 32)) (_keys!1887 array!5556) (_values!1872 array!5558) (_vacant!1654 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6257 0))(
  ( (Cell!6258 (v!23178 LongMapFixedSize!3186)) )
))
(declare-datatypes ((MutLongMap!1593 0))(
  ( (LongMap!1593 (underlying!3395 Cell!6257)) (MutLongMapExt!1592 (__x!10444 Int)) )
))
(declare-datatypes ((Cell!6259 0))(
  ( (Cell!6260 (v!23179 MutLongMap!1593)) )
))
(declare-datatypes ((Hashable!1537 0))(
  ( (HashableExt!1536 (__x!10445 Int)) )
))
(declare-datatypes ((MutableMap!1537 0))(
  ( (MutableMapExt!1536 (__x!10446 Int)) (HashMap!1537 (underlying!3396 Cell!6259) (hashF!3456 Hashable!1537) (_size!3268 (_ BitVec 32)) (defaultValue!1697 Int)) )
))
(declare-datatypes ((CacheDown!930 0))(
  ( (CacheDown!931 (cache!1918 MutableMap!1537)) )
))
(declare-fun cacheDown!708 () CacheDown!930)

(declare-fun valid!1293 (CacheDown!930) Bool)

(assert (=> b!1538828 (= res!689505 (valid!1293 cacheDown!708))))

(declare-fun b!1538829 () Bool)

(declare-fun e!984708 () Bool)

(declare-fun e!984714 () Bool)

(assert (=> b!1538829 (= e!984708 e!984714)))

(declare-fun b!1538830 () Bool)

(declare-fun e!984690 () Bool)

(assert (=> b!1538830 (= e!984690 e!984707)))

(declare-fun res!689508 () Bool)

(assert (=> b!1538830 (=> (not res!689508) (not e!984707))))

(declare-datatypes ((List!16439 0))(
  ( (Nil!16371) (Cons!16371 (h!21772 C!8580) (t!140645 List!16439)) )
))
(declare-fun lt!533741 () List!16439)

(declare-datatypes ((IArray!10993 0))(
  ( (IArray!10994 (innerList!5554 List!16439)) )
))
(declare-datatypes ((Conc!5494 0))(
  ( (Node!5494 (left!13463 Conc!5494) (right!13793 Conc!5494) (csize!11218 Int) (cheight!5705 Int)) (Leaf!8140 (xs!8294 IArray!10993) (csize!11219 Int)) (Empty!5494) )
))
(declare-datatypes ((BalanceConc!10930 0))(
  ( (BalanceConc!10931 (c!251628 Conc!5494)) )
))
(declare-fun totalInput!496 () BalanceConc!10930)

(declare-fun isSuffix!326 (List!16439 List!16439) Bool)

(declare-fun list!6422 (BalanceConc!10930) List!16439)

(assert (=> b!1538830 (= res!689508 (isSuffix!326 lt!533741 (list!6422 totalInput!496)))))

(declare-fun input!1460 () BalanceConc!10930)

(assert (=> b!1538830 (= lt!533741 (list!6422 input!1460))))

(declare-fun res!689511 () Bool)

(assert (=> start!143026 (=> (not res!689511) (not e!984690))))

(declare-datatypes ((LexerInterface!2527 0))(
  ( (LexerInterfaceExt!2524 (__x!10447 Int)) (Lexer!2525) )
))
(declare-fun thiss!15733 () LexerInterface!2527)

(get-info :version)

(assert (=> start!143026 (= res!689511 ((_ is Lexer!2525) thiss!15733))))

(assert (=> start!143026 e!984690))

(declare-datatypes ((tuple2!15420 0))(
  ( (tuple2!15421 (_1!8846 Context!1438) (_2!8846 C!8580)) )
))
(declare-datatypes ((tuple2!15422 0))(
  ( (tuple2!15423 (_1!8847 tuple2!15420) (_2!8847 (InoxSet Context!1438))) )
))
(declare-datatypes ((List!16440 0))(
  ( (Nil!16372) (Cons!16372 (h!21773 tuple2!15422) (t!140646 List!16440)) )
))
(declare-datatypes ((array!5560 0))(
  ( (array!5561 (arr!2471 (Array (_ BitVec 32) List!16440)) (size!13232 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3188 0))(
  ( (LongMapFixedSize!3189 (defaultEntry!1954 Int) (mask!4783 (_ BitVec 32)) (extraKeys!1841 (_ BitVec 32)) (zeroValue!1851 List!16440) (minValue!1851 List!16440) (_size!3269 (_ BitVec 32)) (_keys!1888 array!5556) (_values!1873 array!5560) (_vacant!1655 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6261 0))(
  ( (Cell!6262 (v!23180 LongMapFixedSize!3188)) )
))
(declare-datatypes ((MutLongMap!1594 0))(
  ( (LongMap!1594 (underlying!3397 Cell!6261)) (MutLongMapExt!1593 (__x!10448 Int)) )
))
(declare-datatypes ((Cell!6263 0))(
  ( (Cell!6264 (v!23181 MutLongMap!1594)) )
))
(declare-datatypes ((Hashable!1538 0))(
  ( (HashableExt!1537 (__x!10449 Int)) )
))
(declare-datatypes ((MutableMap!1538 0))(
  ( (MutableMapExt!1537 (__x!10450 Int)) (HashMap!1538 (underlying!3398 Cell!6263) (hashF!3457 Hashable!1538) (_size!3270 (_ BitVec 32)) (defaultValue!1698 Int)) )
))
(declare-datatypes ((CacheUp!922 0))(
  ( (CacheUp!923 (cache!1919 MutableMap!1538)) )
))
(declare-fun cacheUp!695 () CacheUp!922)

(declare-fun e!984700 () Bool)

(declare-fun inv!21636 (CacheUp!922) Bool)

(assert (=> start!143026 (and (inv!21636 cacheUp!695) e!984700)))

(declare-fun e!984699 () Bool)

(declare-fun inv!21637 (BalanceConc!10930) Bool)

(assert (=> start!143026 (and (inv!21637 input!1460) e!984699)))

(declare-fun e!984712 () Bool)

(declare-fun inv!21638 (CacheDown!930) Bool)

(assert (=> start!143026 (and (inv!21638 cacheDown!708) e!984712)))

(assert (=> start!143026 true))

(declare-fun e!984709 () Bool)

(assert (=> start!143026 (and (inv!21637 totalInput!496) e!984709)))

(declare-fun e!984717 () Bool)

(assert (=> start!143026 e!984717))

(declare-datatypes ((tuple3!1518 0))(
  ( (tuple3!1519 (_1!8848 (InoxSet Context!1438)) (_2!8848 Int) (_3!1136 Int)) )
))
(declare-datatypes ((tuple2!15424 0))(
  ( (tuple2!15425 (_1!8849 tuple3!1518) (_2!8849 Int)) )
))
(declare-datatypes ((List!16441 0))(
  ( (Nil!16373) (Cons!16373 (h!21774 tuple2!15424) (t!140647 List!16441)) )
))
(declare-datatypes ((array!5562 0))(
  ( (array!5563 (arr!2472 (Array (_ BitVec 32) List!16441)) (size!13233 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3190 0))(
  ( (LongMapFixedSize!3191 (defaultEntry!1955 Int) (mask!4784 (_ BitVec 32)) (extraKeys!1842 (_ BitVec 32)) (zeroValue!1852 List!16441) (minValue!1852 List!16441) (_size!3271 (_ BitVec 32)) (_keys!1889 array!5556) (_values!1874 array!5562) (_vacant!1656 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1539 0))(
  ( (HashableExt!1538 (__x!10451 Int)) )
))
(declare-datatypes ((Cell!6265 0))(
  ( (Cell!6266 (v!23182 LongMapFixedSize!3190)) )
))
(declare-datatypes ((MutLongMap!1595 0))(
  ( (LongMap!1595 (underlying!3399 Cell!6265)) (MutLongMapExt!1594 (__x!10452 Int)) )
))
(declare-datatypes ((Cell!6267 0))(
  ( (Cell!6268 (v!23183 MutLongMap!1595)) )
))
(declare-datatypes ((MutableMap!1539 0))(
  ( (MutableMapExt!1538 (__x!10453 Int)) (HashMap!1539 (underlying!3400 Cell!6267) (hashF!3458 Hashable!1539) (_size!3272 (_ BitVec 32)) (defaultValue!1699 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!350 0))(
  ( (CacheFurthestNullable!351 (cache!1920 MutableMap!1539) (totalInput!2367 BalanceConc!10930)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!350)

(declare-fun e!984694 () Bool)

(declare-fun inv!21639 (CacheFurthestNullable!350) Bool)

(assert (=> start!143026 (and (inv!21639 cacheFurthestNullable!81) e!984694)))

(declare-fun b!1538831 () Bool)

(declare-fun res!689507 () Bool)

(assert (=> b!1538831 (=> (not res!689507) (not e!984707))))

(assert (=> b!1538831 (= res!689507 (= (totalInput!2367 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1538832 () Bool)

(declare-fun e!984715 () Bool)

(declare-fun tp!445125 () Bool)

(assert (=> b!1538832 (= e!984717 (and e!984715 tp!445125))))

(declare-fun b!1538833 () Bool)

(declare-fun e!984686 () Bool)

(declare-fun tp!445129 () Bool)

(declare-fun mapRes!7537 () Bool)

(assert (=> b!1538833 (= e!984686 (and tp!445129 mapRes!7537))))

(declare-fun condMapEmpty!7538 () Bool)

(declare-fun mapDefault!7537 () List!16441)

(assert (=> b!1538833 (= condMapEmpty!7538 (= (arr!2472 (_values!1874 (v!23182 (underlying!3399 (v!23183 (underlying!3400 (cache!1920 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16441)) mapDefault!7537)))))

(declare-fun b!1538834 () Bool)

(declare-fun res!689506 () Bool)

(assert (=> b!1538834 (=> (not res!689506) (not e!984690))))

(declare-datatypes ((List!16442 0))(
  ( (Nil!16374) (Cons!16374 (h!21775 (_ BitVec 16)) (t!140648 List!16442)) )
))
(declare-datatypes ((TokenValue!2967 0))(
  ( (FloatLiteralValue!5934 (text!21214 List!16442)) (TokenValueExt!2966 (__x!10454 Int)) (Broken!14835 (value!91631 List!16442)) (Object!3034) (End!2967) (Def!2967) (Underscore!2967) (Match!2967) (Else!2967) (Error!2967) (Case!2967) (If!2967) (Extends!2967) (Abstract!2967) (Class!2967) (Val!2967) (DelimiterValue!5934 (del!3027 List!16442)) (KeywordValue!2973 (value!91632 List!16442)) (CommentValue!5934 (value!91633 List!16442)) (WhitespaceValue!5934 (value!91634 List!16442)) (IndentationValue!2967 (value!91635 List!16442)) (String!19114) (Int32!2967) (Broken!14836 (value!91636 List!16442)) (Boolean!2968) (Unit!25859) (OperatorValue!2970 (op!3027 List!16442)) (IdentifierValue!5934 (value!91637 List!16442)) (IdentifierValue!5935 (value!91638 List!16442)) (WhitespaceValue!5935 (value!91639 List!16442)) (True!5934) (False!5934) (Broken!14837 (value!91640 List!16442)) (Broken!14838 (value!91641 List!16442)) (True!5935) (RightBrace!2967) (RightBracket!2967) (Colon!2967) (Null!2967) (Comma!2967) (LeftBracket!2967) (False!5935) (LeftBrace!2967) (ImaginaryLiteralValue!2967 (text!21215 List!16442)) (StringLiteralValue!8901 (value!91642 List!16442)) (EOFValue!2967 (value!91643 List!16442)) (IdentValue!2967 (value!91644 List!16442)) (DelimiterValue!5935 (value!91645 List!16442)) (DedentValue!2967 (value!91646 List!16442)) (NewLineValue!2967 (value!91647 List!16442)) (IntegerValue!8901 (value!91648 (_ BitVec 32)) (text!21216 List!16442)) (IntegerValue!8902 (value!91649 Int) (text!21217 List!16442)) (Times!2967) (Or!2967) (Equal!2967) (Minus!2967) (Broken!14839 (value!91650 List!16442)) (And!2967) (Div!2967) (LessEqual!2967) (Mod!2967) (Concat!7169) (Not!2967) (Plus!2967) (SpaceValue!2967 (value!91651 List!16442)) (IntegerValue!8903 (value!91652 Int) (text!21218 List!16442)) (StringLiteralValue!8902 (text!21219 List!16442)) (FloatLiteralValue!5935 (text!21220 List!16442)) (BytesLiteralValue!2967 (value!91653 List!16442)) (CommentValue!5935 (value!91654 List!16442)) (StringLiteralValue!8903 (value!91655 List!16442)) (ErrorTokenValue!2967 (msg!3028 List!16442)) )
))
(declare-datatypes ((String!19115 0))(
  ( (String!19116 (value!91656 String)) )
))
(declare-datatypes ((TokenValueInjection!5594 0))(
  ( (TokenValueInjection!5595 (toValue!4238 Int) (toChars!4097 Int)) )
))
(declare-datatypes ((Rule!5554 0))(
  ( (Rule!5555 (regex!2877 Regex!4201) (tag!3141 String!19115) (isSeparator!2877 Bool) (transformation!2877 TokenValueInjection!5594)) )
))
(declare-datatypes ((List!16443 0))(
  ( (Nil!16375) (Cons!16375 (h!21776 Rule!5554) (t!140649 List!16443)) )
))
(declare-fun rulesArg!359 () List!16443)

(declare-fun rulesValidInductive!880 (LexerInterface!2527 List!16443) Bool)

(assert (=> b!1538834 (= res!689506 (rulesValidInductive!880 thiss!15733 rulesArg!359))))

(declare-fun b!1538835 () Bool)

(declare-fun e!984703 () Bool)

(declare-fun e!984711 () Bool)

(assert (=> b!1538835 (= e!984703 e!984711)))

(declare-fun b!1538836 () Bool)

(declare-fun res!689510 () Bool)

(assert (=> b!1538836 (=> (not res!689510) (not e!984707))))

(declare-fun valid!1294 (CacheUp!922) Bool)

(assert (=> b!1538836 (= res!689510 (valid!1294 cacheUp!695))))

(declare-fun mapIsEmpty!7536 () Bool)

(assert (=> mapIsEmpty!7536 mapRes!7537))

(declare-fun b!1538837 () Bool)

(assert (=> b!1538837 (= e!984707 (not true))))

(declare-datatypes ((Token!5394 0))(
  ( (Token!5395 (value!91657 TokenValue!2967) (rule!4681 Rule!5554) (size!13234 Int) (originalCharacters!3728 List!16439)) )
))
(declare-datatypes ((tuple2!15426 0))(
  ( (tuple2!15427 (_1!8850 Token!5394) (_2!8850 BalanceConc!10930)) )
))
(declare-datatypes ((Option!2963 0))(
  ( (None!2962) (Some!2962 (v!23184 tuple2!15426)) )
))
(declare-datatypes ((tuple4!754 0))(
  ( (tuple4!755 (_1!8851 Option!2963) (_2!8851 CacheUp!922) (_3!1137 CacheFurthestNullable!350) (_4!377 CacheDown!930)) )
))
(declare-fun lt!533738 () tuple4!754)

(declare-fun e!984697 () tuple4!754)

(assert (=> b!1538837 (= lt!533738 e!984697)))

(declare-fun c!251626 () Bool)

(assert (=> b!1538837 (= c!251626 (and ((_ is Cons!16375) rulesArg!359) ((_ is Nil!16375) (t!140649 rulesArg!359))))))

(declare-fun isPrefix!1241 (List!16439 List!16439) Bool)

(assert (=> b!1538837 (isPrefix!1241 lt!533741 lt!533741)))

(declare-datatypes ((Unit!25860 0))(
  ( (Unit!25861) )
))
(declare-fun lt!533742 () Unit!25860)

(declare-fun lemmaIsPrefixRefl!871 (List!16439 List!16439) Unit!25860)

(assert (=> b!1538837 (= lt!533742 (lemmaIsPrefixRefl!871 lt!533741 lt!533741))))

(declare-fun b!1538838 () Bool)

(declare-fun e!984687 () Bool)

(declare-fun e!984684 () Bool)

(declare-fun lt!533739 () MutLongMap!1594)

(assert (=> b!1538838 (= e!984687 (and e!984684 ((_ is LongMap!1594) lt!533739)))))

(assert (=> b!1538838 (= lt!533739 (v!23181 (underlying!3398 (cache!1919 cacheUp!695))))))

(declare-fun b!1538839 () Bool)

(declare-fun e!984706 () Bool)

(declare-fun e!984716 () Bool)

(declare-fun lt!533736 () MutLongMap!1595)

(assert (=> b!1538839 (= e!984706 (and e!984716 ((_ is LongMap!1595) lt!533736)))))

(assert (=> b!1538839 (= lt!533736 (v!23183 (underlying!3400 (cache!1920 cacheFurthestNullable!81))))))

(declare-fun b!1538840 () Bool)

(declare-fun e!984710 () Bool)

(declare-fun tp!445124 () Bool)

(declare-fun mapRes!7538 () Bool)

(assert (=> b!1538840 (= e!984710 (and tp!445124 mapRes!7538))))

(declare-fun condMapEmpty!7537 () Bool)

(declare-fun mapDefault!7538 () List!16440)

(assert (=> b!1538840 (= condMapEmpty!7537 (= (arr!2471 (_values!1873 (v!23180 (underlying!3397 (v!23181 (underlying!3398 (cache!1919 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16440)) mapDefault!7538)))))

(declare-fun b!1538841 () Bool)

(declare-fun tp!445131 () Bool)

(declare-fun inv!21640 (Conc!5494) Bool)

(assert (=> b!1538841 (= e!984699 (and (inv!21640 (c!251628 input!1460)) tp!445131))))

(declare-fun e!984696 () Bool)

(assert (=> b!1538842 (= e!984696 (and e!984706 tp!445133))))

(declare-fun b!1538843 () Bool)

(declare-fun e!984695 () Bool)

(declare-fun tp!445120 () Bool)

(declare-fun inv!21634 (String!19115) Bool)

(declare-fun inv!21641 (TokenValueInjection!5594) Bool)

(assert (=> b!1538843 (= e!984715 (and tp!445120 (inv!21634 (tag!3141 (h!21776 rulesArg!359))) (inv!21641 (transformation!2877 (h!21776 rulesArg!359))) e!984695))))

(declare-fun mapNonEmpty!7536 () Bool)

(declare-fun mapRes!7536 () Bool)

(declare-fun tp!445117 () Bool)

(declare-fun tp!445134 () Bool)

(assert (=> mapNonEmpty!7536 (= mapRes!7536 (and tp!445117 tp!445134))))

(declare-fun mapValue!7538 () List!16438)

(declare-fun mapRest!7536 () (Array (_ BitVec 32) List!16438))

(declare-fun mapKey!7536 () (_ BitVec 32))

(assert (=> mapNonEmpty!7536 (= (arr!2470 (_values!1872 (v!23178 (underlying!3395 (v!23179 (underlying!3396 (cache!1918 cacheDown!708))))))) (store mapRest!7536 mapKey!7536 mapValue!7538))))

(assert (=> b!1538844 (= e!984695 (and tp!445127 tp!445126))))

(declare-fun bm!101553 () Bool)

(declare-datatypes ((tuple4!756 0))(
  ( (tuple4!757 (_1!8852 Option!2963) (_2!8852 CacheUp!922) (_3!1138 CacheDown!930) (_4!378 CacheFurthestNullable!350)) )
))
(declare-fun call!101558 () tuple4!756)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!25 (LexerInterface!2527 Rule!5554 BalanceConc!10930 BalanceConc!10930 CacheUp!922 CacheDown!930 CacheFurthestNullable!350) tuple4!756)

(assert (=> bm!101553 (= call!101558 (maxPrefixOneRuleZipperSequenceV3Mem!25 thiss!15733 (h!21776 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun b!1538845 () Bool)

(declare-fun e!984704 () Bool)

(declare-fun tp!445115 () Bool)

(assert (=> b!1538845 (= e!984704 (and (inv!21640 (c!251628 (totalInput!2367 cacheFurthestNullable!81))) tp!445115))))

(declare-fun b!1538846 () Bool)

(declare-fun e!984688 () Bool)

(declare-fun lt!533737 () MutLongMap!1593)

(assert (=> b!1538846 (= e!984688 (and e!984703 ((_ is LongMap!1593) lt!533737)))))

(assert (=> b!1538846 (= lt!533737 (v!23179 (underlying!3396 (cache!1918 cacheDown!708))))))

(declare-fun tp!445118 () Bool)

(declare-fun tp!445128 () Bool)

(declare-fun e!984713 () Bool)

(declare-fun array_inv!1778 (array!5556) Bool)

(declare-fun array_inv!1779 (array!5562) Bool)

(assert (=> b!1538847 (= e!984713 (and tp!445112 tp!445128 tp!445118 (array_inv!1778 (_keys!1889 (v!23182 (underlying!3399 (v!23183 (underlying!3400 (cache!1920 cacheFurthestNullable!81))))))) (array_inv!1779 (_values!1874 (v!23182 (underlying!3399 (v!23183 (underlying!3400 (cache!1920 cacheFurthestNullable!81))))))) e!984686))))

(declare-fun b!1538848 () Bool)

(declare-fun e!984691 () Bool)

(assert (=> b!1538848 (= e!984712 e!984691)))

(assert (=> b!1538849 (= e!984691 (and e!984688 tp!445132))))

(declare-fun b!1538850 () Bool)

(declare-fun e!984685 () Bool)

(assert (=> b!1538850 (= e!984711 e!984685)))

(declare-fun b!1538851 () Bool)

(declare-fun e!984693 () Bool)

(assert (=> b!1538851 (= e!984716 e!984693)))

(declare-fun mapIsEmpty!7537 () Bool)

(assert (=> mapIsEmpty!7537 mapRes!7536))

(declare-fun b!1538852 () Bool)

(assert (=> b!1538852 (= e!984694 (and e!984696 (inv!21637 (totalInput!2367 cacheFurthestNullable!81)) e!984704))))

(declare-fun b!1538853 () Bool)

(assert (=> b!1538853 (= e!984684 e!984708)))

(declare-fun b!1538854 () Bool)

(assert (=> b!1538854 (= e!984693 e!984713)))

(declare-fun b!1538855 () Bool)

(declare-datatypes ((tuple2!15428 0))(
  ( (tuple2!15429 (_1!8853 Option!2963) (_2!8853 Option!2963)) )
))
(declare-fun lt!533734 () tuple2!15428)

(declare-fun lt!533740 () tuple4!756)

(assert (=> b!1538855 (= e!984697 (tuple4!755 (ite (and ((_ is None!2962) (_1!8853 lt!533734)) ((_ is None!2962) (_2!8853 lt!533734))) None!2962 (ite ((_ is None!2962) (_2!8853 lt!533734)) (_1!8853 lt!533734) (ite ((_ is None!2962) (_1!8853 lt!533734)) (_2!8853 lt!533734) (ite (>= (size!13234 (_1!8850 (v!23184 (_1!8853 lt!533734)))) (size!13234 (_1!8850 (v!23184 (_2!8853 lt!533734))))) (_1!8853 lt!533734) (_2!8853 lt!533734))))) (_2!8852 lt!533740) (_4!378 lt!533740) (_3!1138 lt!533740)))))

(declare-fun lt!533735 () tuple4!756)

(assert (=> b!1538855 (= lt!533735 call!101558)))

(declare-fun maxPrefixZipperSequenceV3Mem!36 (LexerInterface!2527 List!16443 BalanceConc!10930 BalanceConc!10930 CacheUp!922 CacheDown!930 CacheFurthestNullable!350) tuple4!756)

(assert (=> b!1538855 (= lt!533740 (maxPrefixZipperSequenceV3Mem!36 thiss!15733 (t!140649 rulesArg!359) input!1460 totalInput!496 (_2!8852 lt!533735) (_3!1138 lt!533735) (_4!378 lt!533735)))))

(assert (=> b!1538855 (= lt!533734 (tuple2!15429 (_1!8852 lt!533735) (_1!8852 lt!533740)))))

(declare-fun mapNonEmpty!7537 () Bool)

(declare-fun tp!445137 () Bool)

(declare-fun tp!445119 () Bool)

(assert (=> mapNonEmpty!7537 (= mapRes!7538 (and tp!445137 tp!445119))))

(declare-fun mapValue!7536 () List!16440)

(declare-fun mapKey!7537 () (_ BitVec 32))

(declare-fun mapRest!7538 () (Array (_ BitVec 32) List!16440))

(assert (=> mapNonEmpty!7537 (= (arr!2471 (_values!1873 (v!23180 (underlying!3397 (v!23181 (underlying!3398 (cache!1919 cacheUp!695))))))) (store mapRest!7538 mapKey!7537 mapValue!7536))))

(declare-fun e!984689 () Bool)

(declare-fun tp!445135 () Bool)

(declare-fun tp!445138 () Bool)

(declare-fun array_inv!1780 (array!5558) Bool)

(assert (=> b!1538856 (= e!984685 (and tp!445116 tp!445138 tp!445135 (array_inv!1778 (_keys!1887 (v!23178 (underlying!3395 (v!23179 (underlying!3396 (cache!1918 cacheDown!708))))))) (array_inv!1780 (_values!1872 (v!23178 (underlying!3395 (v!23179 (underlying!3396 (cache!1918 cacheDown!708))))))) e!984689))))

(declare-fun mapIsEmpty!7538 () Bool)

(assert (=> mapIsEmpty!7538 mapRes!7538))

(declare-fun e!984698 () Bool)

(assert (=> b!1538857 (= e!984698 (and e!984687 tp!445139))))

(declare-fun b!1538858 () Bool)

(declare-fun tp!445122 () Bool)

(assert (=> b!1538858 (= e!984689 (and tp!445122 mapRes!7536))))

(declare-fun condMapEmpty!7536 () Bool)

(declare-fun mapDefault!7536 () List!16438)

(assert (=> b!1538858 (= condMapEmpty!7536 (= (arr!2470 (_values!1872 (v!23178 (underlying!3395 (v!23179 (underlying!3396 (cache!1918 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16438)) mapDefault!7536)))))

(declare-fun tp!445123 () Bool)

(declare-fun tp!445136 () Bool)

(declare-fun array_inv!1781 (array!5560) Bool)

(assert (=> b!1538859 (= e!984714 (and tp!445121 tp!445136 tp!445123 (array_inv!1778 (_keys!1888 (v!23180 (underlying!3397 (v!23181 (underlying!3398 (cache!1919 cacheUp!695))))))) (array_inv!1781 (_values!1873 (v!23180 (underlying!3397 (v!23181 (underlying!3398 (cache!1919 cacheUp!695))))))) e!984710))))

(declare-fun b!1538860 () Bool)

(declare-fun res!689512 () Bool)

(assert (=> b!1538860 (=> (not res!689512) (not e!984690))))

(declare-fun isEmpty!10016 (List!16443) Bool)

(assert (=> b!1538860 (= res!689512 (not (isEmpty!10016 rulesArg!359)))))

(declare-fun b!1538861 () Bool)

(declare-fun lt!533733 () tuple4!756)

(assert (=> b!1538861 (= e!984697 (tuple4!755 (_1!8852 lt!533733) (_2!8852 lt!533733) (_4!378 lt!533733) (_3!1138 lt!533733)))))

(assert (=> b!1538861 (= lt!533733 call!101558)))

(declare-fun b!1538862 () Bool)

(declare-fun tp!445114 () Bool)

(assert (=> b!1538862 (= e!984709 (and (inv!21640 (c!251628 totalInput!496)) tp!445114))))

(declare-fun b!1538863 () Bool)

(assert (=> b!1538863 (= e!984700 e!984698)))

(declare-fun mapNonEmpty!7538 () Bool)

(declare-fun tp!445113 () Bool)

(declare-fun tp!445130 () Bool)

(assert (=> mapNonEmpty!7538 (= mapRes!7537 (and tp!445113 tp!445130))))

(declare-fun mapValue!7537 () List!16441)

(declare-fun mapRest!7537 () (Array (_ BitVec 32) List!16441))

(declare-fun mapKey!7538 () (_ BitVec 32))

(assert (=> mapNonEmpty!7538 (= (arr!2472 (_values!1874 (v!23182 (underlying!3399 (v!23183 (underlying!3400 (cache!1920 cacheFurthestNullable!81))))))) (store mapRest!7537 mapKey!7538 mapValue!7537))))

(declare-fun b!1538864 () Bool)

(declare-fun res!689509 () Bool)

(assert (=> b!1538864 (=> (not res!689509) (not e!984707))))

(declare-fun valid!1295 (CacheFurthestNullable!350) Bool)

(assert (=> b!1538864 (= res!689509 (valid!1295 cacheFurthestNullable!81))))

(assert (= (and start!143026 res!689511) b!1538834))

(assert (= (and b!1538834 res!689506) b!1538860))

(assert (= (and b!1538860 res!689512) b!1538830))

(assert (= (and b!1538830 res!689508) b!1538836))

(assert (= (and b!1538836 res!689510) b!1538828))

(assert (= (and b!1538828 res!689505) b!1538864))

(assert (= (and b!1538864 res!689509) b!1538831))

(assert (= (and b!1538831 res!689507) b!1538837))

(assert (= (and b!1538837 c!251626) b!1538861))

(assert (= (and b!1538837 (not c!251626)) b!1538855))

(assert (= (or b!1538861 b!1538855) bm!101553))

(assert (= (and b!1538840 condMapEmpty!7537) mapIsEmpty!7538))

(assert (= (and b!1538840 (not condMapEmpty!7537)) mapNonEmpty!7537))

(assert (= b!1538859 b!1538840))

(assert (= b!1538829 b!1538859))

(assert (= b!1538853 b!1538829))

(assert (= (and b!1538838 ((_ is LongMap!1594) (v!23181 (underlying!3398 (cache!1919 cacheUp!695))))) b!1538853))

(assert (= b!1538857 b!1538838))

(assert (= (and b!1538863 ((_ is HashMap!1538) (cache!1919 cacheUp!695))) b!1538857))

(assert (= start!143026 b!1538863))

(assert (= start!143026 b!1538841))

(assert (= (and b!1538858 condMapEmpty!7536) mapIsEmpty!7537))

(assert (= (and b!1538858 (not condMapEmpty!7536)) mapNonEmpty!7536))

(assert (= b!1538856 b!1538858))

(assert (= b!1538850 b!1538856))

(assert (= b!1538835 b!1538850))

(assert (= (and b!1538846 ((_ is LongMap!1593) (v!23179 (underlying!3396 (cache!1918 cacheDown!708))))) b!1538835))

(assert (= b!1538849 b!1538846))

(assert (= (and b!1538848 ((_ is HashMap!1537) (cache!1918 cacheDown!708))) b!1538849))

(assert (= start!143026 b!1538848))

(assert (= start!143026 b!1538862))

(assert (= b!1538843 b!1538844))

(assert (= b!1538832 b!1538843))

(assert (= (and start!143026 ((_ is Cons!16375) rulesArg!359)) b!1538832))

(assert (= (and b!1538833 condMapEmpty!7538) mapIsEmpty!7536))

(assert (= (and b!1538833 (not condMapEmpty!7538)) mapNonEmpty!7538))

(assert (= b!1538847 b!1538833))

(assert (= b!1538854 b!1538847))

(assert (= b!1538851 b!1538854))

(assert (= (and b!1538839 ((_ is LongMap!1595) (v!23183 (underlying!3400 (cache!1920 cacheFurthestNullable!81))))) b!1538851))

(assert (= b!1538842 b!1538839))

(assert (= (and b!1538852 ((_ is HashMap!1539) (cache!1920 cacheFurthestNullable!81))) b!1538842))

(assert (= b!1538852 b!1538845))

(assert (= start!143026 b!1538852))

(declare-fun m!1813322 () Bool)

(assert (=> b!1538834 m!1813322))

(declare-fun m!1813324 () Bool)

(assert (=> b!1538862 m!1813324))

(declare-fun m!1813326 () Bool)

(assert (=> start!143026 m!1813326))

(declare-fun m!1813328 () Bool)

(assert (=> start!143026 m!1813328))

(declare-fun m!1813330 () Bool)

(assert (=> start!143026 m!1813330))

(declare-fun m!1813332 () Bool)

(assert (=> start!143026 m!1813332))

(declare-fun m!1813334 () Bool)

(assert (=> start!143026 m!1813334))

(declare-fun m!1813336 () Bool)

(assert (=> b!1538847 m!1813336))

(declare-fun m!1813338 () Bool)

(assert (=> b!1538847 m!1813338))

(declare-fun m!1813340 () Bool)

(assert (=> b!1538860 m!1813340))

(declare-fun m!1813342 () Bool)

(assert (=> mapNonEmpty!7537 m!1813342))

(declare-fun m!1813344 () Bool)

(assert (=> bm!101553 m!1813344))

(declare-fun m!1813346 () Bool)

(assert (=> b!1538830 m!1813346))

(assert (=> b!1538830 m!1813346))

(declare-fun m!1813348 () Bool)

(assert (=> b!1538830 m!1813348))

(declare-fun m!1813350 () Bool)

(assert (=> b!1538830 m!1813350))

(declare-fun m!1813352 () Bool)

(assert (=> b!1538859 m!1813352))

(declare-fun m!1813354 () Bool)

(assert (=> b!1538859 m!1813354))

(declare-fun m!1813356 () Bool)

(assert (=> b!1538852 m!1813356))

(declare-fun m!1813358 () Bool)

(assert (=> b!1538841 m!1813358))

(declare-fun m!1813360 () Bool)

(assert (=> b!1538843 m!1813360))

(declare-fun m!1813362 () Bool)

(assert (=> b!1538843 m!1813362))

(declare-fun m!1813364 () Bool)

(assert (=> b!1538845 m!1813364))

(declare-fun m!1813366 () Bool)

(assert (=> b!1538856 m!1813366))

(declare-fun m!1813368 () Bool)

(assert (=> b!1538856 m!1813368))

(declare-fun m!1813370 () Bool)

(assert (=> b!1538837 m!1813370))

(declare-fun m!1813372 () Bool)

(assert (=> b!1538837 m!1813372))

(declare-fun m!1813374 () Bool)

(assert (=> mapNonEmpty!7538 m!1813374))

(declare-fun m!1813376 () Bool)

(assert (=> b!1538828 m!1813376))

(declare-fun m!1813378 () Bool)

(assert (=> b!1538864 m!1813378))

(declare-fun m!1813380 () Bool)

(assert (=> b!1538855 m!1813380))

(declare-fun m!1813382 () Bool)

(assert (=> mapNonEmpty!7536 m!1813382))

(declare-fun m!1813384 () Bool)

(assert (=> b!1538836 m!1813384))

(check-sat b_and!106967 (not mapNonEmpty!7537) (not b!1538836) (not b_next!40799) (not b!1538841) (not b!1538852) b_and!106965 b_and!106979 (not mapNonEmpty!7538) (not b!1538830) b_and!106969 (not b_next!40791) (not b!1538843) (not b_next!40805) (not b!1538858) (not bm!101553) (not b!1538859) (not start!143026) (not b_next!40797) (not b!1538837) (not mapNonEmpty!7536) (not b!1538862) (not b_next!40795) (not b!1538847) b_and!106973 b_and!106971 (not b!1538856) (not b!1538840) (not b!1538860) b_and!106977 (not b!1538828) (not b!1538845) (not b_next!40801) (not b!1538864) (not b!1538834) (not b!1538832) b_and!106975 (not b!1538855) (not b_next!40803) (not b_next!40793) (not b!1538833))
(check-sat b_and!106967 (not b_next!40797) (not b_next!40799) b_and!106965 b_and!106979 (not b_next!40795) b_and!106969 (not b_next!40791) b_and!106977 (not b_next!40805) (not b_next!40801) b_and!106975 (not b_next!40803) (not b_next!40793) b_and!106973 b_and!106971)
