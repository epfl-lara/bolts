; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143034 () Bool)

(assert start!143034)

(declare-fun b!1539304 () Bool)

(declare-fun b_free!40151 () Bool)

(declare-fun b_next!40855 () Bool)

(assert (=> b!1539304 (= b_free!40151 (not b_next!40855))))

(declare-fun tp!445457 () Bool)

(declare-fun b_and!107029 () Bool)

(assert (=> b!1539304 (= tp!445457 b_and!107029)))

(declare-fun b!1539290 () Bool)

(declare-fun b_free!40153 () Bool)

(declare-fun b_next!40857 () Bool)

(assert (=> b!1539290 (= b_free!40153 (not b_next!40857))))

(declare-fun tp!445472 () Bool)

(declare-fun b_and!107031 () Bool)

(assert (=> b!1539290 (= tp!445472 b_and!107031)))

(declare-fun b!1539286 () Bool)

(declare-fun b_free!40155 () Bool)

(declare-fun b_next!40859 () Bool)

(assert (=> b!1539286 (= b_free!40155 (not b_next!40859))))

(declare-fun tp!445463 () Bool)

(declare-fun b_and!107033 () Bool)

(assert (=> b!1539286 (= tp!445463 b_and!107033)))

(declare-fun b!1539305 () Bool)

(declare-fun b_free!40157 () Bool)

(declare-fun b_next!40861 () Bool)

(assert (=> b!1539305 (= b_free!40157 (not b_next!40861))))

(declare-fun tp!445450 () Bool)

(declare-fun b_and!107035 () Bool)

(assert (=> b!1539305 (= tp!445450 b_and!107035)))

(declare-fun b!1539279 () Bool)

(declare-fun b_free!40159 () Bool)

(declare-fun b_next!40863 () Bool)

(assert (=> b!1539279 (= b_free!40159 (not b_next!40863))))

(declare-fun tp!445454 () Bool)

(declare-fun b_and!107037 () Bool)

(assert (=> b!1539279 (= tp!445454 b_and!107037)))

(declare-fun b!1539297 () Bool)

(declare-fun b_free!40161 () Bool)

(declare-fun b_next!40865 () Bool)

(assert (=> b!1539297 (= b_free!40161 (not b_next!40865))))

(declare-fun tp!445470 () Bool)

(declare-fun b_and!107039 () Bool)

(assert (=> b!1539297 (= tp!445470 b_and!107039)))

(declare-fun b_free!40163 () Bool)

(declare-fun b_next!40867 () Bool)

(assert (=> b!1539297 (= b_free!40163 (not b_next!40867))))

(declare-fun tp!445467 () Bool)

(declare-fun b_and!107041 () Bool)

(assert (=> b!1539297 (= tp!445467 b_and!107041)))

(declare-fun b!1539285 () Bool)

(declare-fun b_free!40165 () Bool)

(declare-fun b_next!40869 () Bool)

(assert (=> b!1539285 (= b_free!40165 (not b_next!40869))))

(declare-fun tp!445474 () Bool)

(declare-fun b_and!107043 () Bool)

(assert (=> b!1539285 (= tp!445474 b_and!107043)))

(declare-fun b!1539272 () Bool)

(declare-fun e!985118 () Bool)

(declare-fun e!985120 () Bool)

(declare-fun tp!445452 () Bool)

(assert (=> b!1539272 (= e!985118 (and e!985120 tp!445452))))

(declare-fun b!1539273 () Bool)

(declare-fun e!985117 () Bool)

(declare-fun e!985112 () Bool)

(declare-datatypes ((C!8588 0))(
  ( (C!8589 (val!4866 Int)) )
))
(declare-datatypes ((Regex!4205 0))(
  ( (ElementMatch!4205 (c!251651 C!8588)) (Concat!7176 (regOne!8922 Regex!4205) (regTwo!8922 Regex!4205)) (EmptyExpr!4205) (Star!4205 (reg!4534 Regex!4205)) (EmptyLang!4205) (Union!4205 (regOne!8923 Regex!4205) (regTwo!8923 Regex!4205)) )
))
(declare-datatypes ((List!16465 0))(
  ( (Nil!16397) (Cons!16397 (h!21798 Regex!4205) (t!140671 List!16465)) )
))
(declare-datatypes ((Context!1446 0))(
  ( (Context!1447 (exprs!1223 List!16465)) )
))
(declare-datatypes ((tuple2!15470 0))(
  ( (tuple2!15471 (_1!8886 Context!1446) (_2!8886 C!8588)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15472 0))(
  ( (tuple2!15473 (_1!8887 tuple2!15470) (_2!8887 (InoxSet Context!1446))) )
))
(declare-datatypes ((List!16466 0))(
  ( (Nil!16398) (Cons!16398 (h!21799 tuple2!15472) (t!140672 List!16466)) )
))
(declare-datatypes ((array!5588 0))(
  ( (array!5589 (arr!2485 (Array (_ BitVec 32) List!16466)) (size!13250 (_ BitVec 32))) )
))
(declare-datatypes ((array!5590 0))(
  ( (array!5591 (arr!2486 (Array (_ BitVec 32) (_ BitVec 64))) (size!13251 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3210 0))(
  ( (LongMapFixedSize!3211 (defaultEntry!1965 Int) (mask!4796 (_ BitVec 32)) (extraKeys!1852 (_ BitVec 32)) (zeroValue!1862 List!16466) (minValue!1862 List!16466) (_size!3291 (_ BitVec 32)) (_keys!1899 array!5590) (_values!1884 array!5588) (_vacant!1666 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6305 0))(
  ( (Cell!6306 (v!23208 LongMapFixedSize!3210)) )
))
(declare-datatypes ((MutLongMap!1605 0))(
  ( (LongMap!1605 (underlying!3419 Cell!6305)) (MutLongMapExt!1604 (__x!10488 Int)) )
))
(declare-fun lt!533869 () MutLongMap!1605)

(get-info :version)

(assert (=> b!1539273 (= e!985117 (and e!985112 ((_ is LongMap!1605) lt!533869)))))

(declare-datatypes ((Cell!6307 0))(
  ( (Cell!6308 (v!23209 MutLongMap!1605)) )
))
(declare-datatypes ((Hashable!1549 0))(
  ( (HashableExt!1548 (__x!10489 Int)) )
))
(declare-datatypes ((MutableMap!1549 0))(
  ( (MutableMapExt!1548 (__x!10490 Int)) (HashMap!1549 (underlying!3420 Cell!6307) (hashF!3468 Hashable!1549) (_size!3292 (_ BitVec 32)) (defaultValue!1709 Int)) )
))
(declare-datatypes ((CacheUp!930 0))(
  ( (CacheUp!931 (cache!1930 MutableMap!1549)) )
))
(declare-fun cacheUp!695 () CacheUp!930)

(assert (=> b!1539273 (= lt!533869 (v!23209 (underlying!3420 (cache!1930 cacheUp!695))))))

(declare-fun b!1539274 () Bool)

(declare-fun e!985119 () Bool)

(declare-fun tp!445449 () Bool)

(declare-fun mapRes!7574 () Bool)

(assert (=> b!1539274 (= e!985119 (and tp!445449 mapRes!7574))))

(declare-fun condMapEmpty!7573 () Bool)

(declare-datatypes ((tuple3!1532 0))(
  ( (tuple3!1533 (_1!8888 Regex!4205) (_2!8888 Context!1446) (_3!1151 C!8588)) )
))
(declare-datatypes ((tuple2!15474 0))(
  ( (tuple2!15475 (_1!8889 tuple3!1532) (_2!8889 (InoxSet Context!1446))) )
))
(declare-datatypes ((List!16467 0))(
  ( (Nil!16399) (Cons!16399 (h!21800 tuple2!15474) (t!140673 List!16467)) )
))
(declare-datatypes ((array!5592 0))(
  ( (array!5593 (arr!2487 (Array (_ BitVec 32) List!16467)) (size!13252 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3212 0))(
  ( (LongMapFixedSize!3213 (defaultEntry!1966 Int) (mask!4797 (_ BitVec 32)) (extraKeys!1853 (_ BitVec 32)) (zeroValue!1863 List!16467) (minValue!1863 List!16467) (_size!3293 (_ BitVec 32)) (_keys!1900 array!5590) (_values!1885 array!5592) (_vacant!1667 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6309 0))(
  ( (Cell!6310 (v!23210 LongMapFixedSize!3212)) )
))
(declare-datatypes ((MutLongMap!1606 0))(
  ( (LongMap!1606 (underlying!3421 Cell!6309)) (MutLongMapExt!1605 (__x!10491 Int)) )
))
(declare-datatypes ((Cell!6311 0))(
  ( (Cell!6312 (v!23211 MutLongMap!1606)) )
))
(declare-datatypes ((Hashable!1550 0))(
  ( (HashableExt!1549 (__x!10492 Int)) )
))
(declare-datatypes ((MutableMap!1550 0))(
  ( (MutableMapExt!1549 (__x!10493 Int)) (HashMap!1550 (underlying!3422 Cell!6311) (hashF!3469 Hashable!1550) (_size!3294 (_ BitVec 32)) (defaultValue!1710 Int)) )
))
(declare-datatypes ((CacheDown!938 0))(
  ( (CacheDown!939 (cache!1931 MutableMap!1550)) )
))
(declare-fun cacheDown!708 () CacheDown!938)

(declare-fun mapDefault!7573 () List!16467)

(assert (=> b!1539274 (= condMapEmpty!7573 (= (arr!2487 (_values!1885 (v!23210 (underlying!3421 (v!23211 (underlying!3422 (cache!1931 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16467)) mapDefault!7573)))))

(declare-fun b!1539275 () Bool)

(declare-fun res!689607 () Bool)

(declare-fun e!985114 () Bool)

(assert (=> b!1539275 (=> (not res!689607) (not e!985114))))

(declare-datatypes ((LexerInterface!2531 0))(
  ( (LexerInterfaceExt!2528 (__x!10494 Int)) (Lexer!2529) )
))
(declare-fun thiss!15733 () LexerInterface!2531)

(declare-datatypes ((List!16468 0))(
  ( (Nil!16400) (Cons!16400 (h!21801 (_ BitVec 16)) (t!140674 List!16468)) )
))
(declare-datatypes ((TokenValue!2971 0))(
  ( (FloatLiteralValue!5942 (text!21242 List!16468)) (TokenValueExt!2970 (__x!10495 Int)) (Broken!14855 (value!91745 List!16468)) (Object!3038) (End!2971) (Def!2971) (Underscore!2971) (Match!2971) (Else!2971) (Error!2971) (Case!2971) (If!2971) (Extends!2971) (Abstract!2971) (Class!2971) (Val!2971) (DelimiterValue!5942 (del!3031 List!16468)) (KeywordValue!2977 (value!91746 List!16468)) (CommentValue!5942 (value!91747 List!16468)) (WhitespaceValue!5942 (value!91748 List!16468)) (IndentationValue!2971 (value!91749 List!16468)) (String!19134) (Int32!2971) (Broken!14856 (value!91750 List!16468)) (Boolean!2972) (Unit!25869) (OperatorValue!2974 (op!3031 List!16468)) (IdentifierValue!5942 (value!91751 List!16468)) (IdentifierValue!5943 (value!91752 List!16468)) (WhitespaceValue!5943 (value!91753 List!16468)) (True!5942) (False!5942) (Broken!14857 (value!91754 List!16468)) (Broken!14858 (value!91755 List!16468)) (True!5943) (RightBrace!2971) (RightBracket!2971) (Colon!2971) (Null!2971) (Comma!2971) (LeftBracket!2971) (False!5943) (LeftBrace!2971) (ImaginaryLiteralValue!2971 (text!21243 List!16468)) (StringLiteralValue!8913 (value!91756 List!16468)) (EOFValue!2971 (value!91757 List!16468)) (IdentValue!2971 (value!91758 List!16468)) (DelimiterValue!5943 (value!91759 List!16468)) (DedentValue!2971 (value!91760 List!16468)) (NewLineValue!2971 (value!91761 List!16468)) (IntegerValue!8913 (value!91762 (_ BitVec 32)) (text!21244 List!16468)) (IntegerValue!8914 (value!91763 Int) (text!21245 List!16468)) (Times!2971) (Or!2971) (Equal!2971) (Minus!2971) (Broken!14859 (value!91764 List!16468)) (And!2971) (Div!2971) (LessEqual!2971) (Mod!2971) (Concat!7177) (Not!2971) (Plus!2971) (SpaceValue!2971 (value!91765 List!16468)) (IntegerValue!8915 (value!91766 Int) (text!21246 List!16468)) (StringLiteralValue!8914 (text!21247 List!16468)) (FloatLiteralValue!5943 (text!21248 List!16468)) (BytesLiteralValue!2971 (value!91767 List!16468)) (CommentValue!5943 (value!91768 List!16468)) (StringLiteralValue!8915 (value!91769 List!16468)) (ErrorTokenValue!2971 (msg!3032 List!16468)) )
))
(declare-datatypes ((List!16469 0))(
  ( (Nil!16401) (Cons!16401 (h!21802 C!8588) (t!140675 List!16469)) )
))
(declare-datatypes ((IArray!11001 0))(
  ( (IArray!11002 (innerList!5558 List!16469)) )
))
(declare-datatypes ((Conc!5498 0))(
  ( (Node!5498 (left!13469 Conc!5498) (right!13799 Conc!5498) (csize!11226 Int) (cheight!5709 Int)) (Leaf!8146 (xs!8298 IArray!11001) (csize!11227 Int)) (Empty!5498) )
))
(declare-datatypes ((BalanceConc!10938 0))(
  ( (BalanceConc!10939 (c!251652 Conc!5498)) )
))
(declare-datatypes ((String!19135 0))(
  ( (String!19136 (value!91770 String)) )
))
(declare-datatypes ((TokenValueInjection!5602 0))(
  ( (TokenValueInjection!5603 (toValue!4242 Int) (toChars!4101 Int)) )
))
(declare-datatypes ((Rule!5562 0))(
  ( (Rule!5563 (regex!2881 Regex!4205) (tag!3145 String!19135) (isSeparator!2881 Bool) (transformation!2881 TokenValueInjection!5602)) )
))
(declare-datatypes ((List!16470 0))(
  ( (Nil!16402) (Cons!16402 (h!21803 Rule!5562) (t!140676 List!16470)) )
))
(declare-fun rulesArg!359 () List!16470)

(declare-fun rulesValidInductive!882 (LexerInterface!2531 List!16470) Bool)

(assert (=> b!1539275 (= res!689607 (rulesValidInductive!882 thiss!15733 rulesArg!359))))

(declare-fun b!1539276 () Bool)

(declare-fun res!689606 () Bool)

(declare-fun e!985094 () Bool)

(assert (=> b!1539276 (=> (not res!689606) (not e!985094))))

(declare-fun valid!1301 (CacheDown!938) Bool)

(assert (=> b!1539276 (= res!689606 (valid!1301 cacheDown!708))))

(declare-fun input!1460 () BalanceConc!10938)

(declare-datatypes ((Hashable!1551 0))(
  ( (HashableExt!1550 (__x!10496 Int)) )
))
(declare-datatypes ((tuple3!1534 0))(
  ( (tuple3!1535 (_1!8890 (InoxSet Context!1446)) (_2!8890 Int) (_3!1152 Int)) )
))
(declare-datatypes ((tuple2!15476 0))(
  ( (tuple2!15477 (_1!8891 tuple3!1534) (_2!8891 Int)) )
))
(declare-datatypes ((List!16471 0))(
  ( (Nil!16403) (Cons!16403 (h!21804 tuple2!15476) (t!140677 List!16471)) )
))
(declare-datatypes ((array!5594 0))(
  ( (array!5595 (arr!2488 (Array (_ BitVec 32) List!16471)) (size!13253 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3214 0))(
  ( (LongMapFixedSize!3215 (defaultEntry!1967 Int) (mask!4798 (_ BitVec 32)) (extraKeys!1854 (_ BitVec 32)) (zeroValue!1864 List!16471) (minValue!1864 List!16471) (_size!3295 (_ BitVec 32)) (_keys!1901 array!5590) (_values!1886 array!5594) (_vacant!1668 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6313 0))(
  ( (Cell!6314 (v!23212 LongMapFixedSize!3214)) )
))
(declare-datatypes ((Token!5402 0))(
  ( (Token!5403 (value!91771 TokenValue!2971) (rule!4685 Rule!5562) (size!13254 Int) (originalCharacters!3732 List!16469)) )
))
(declare-datatypes ((tuple2!15478 0))(
  ( (tuple2!15479 (_1!8892 Token!5402) (_2!8892 BalanceConc!10938)) )
))
(declare-datatypes ((Option!2969 0))(
  ( (None!2968) (Some!2968 (v!23213 tuple2!15478)) )
))
(declare-datatypes ((MutLongMap!1607 0))(
  ( (LongMap!1607 (underlying!3423 Cell!6313)) (MutLongMapExt!1606 (__x!10497 Int)) )
))
(declare-datatypes ((Cell!6315 0))(
  ( (Cell!6316 (v!23214 MutLongMap!1607)) )
))
(declare-datatypes ((MutableMap!1551 0))(
  ( (MutableMapExt!1550 (__x!10498 Int)) (HashMap!1551 (underlying!3424 Cell!6315) (hashF!3470 Hashable!1551) (_size!3296 (_ BitVec 32)) (defaultValue!1711 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!358 0))(
  ( (CacheFurthestNullable!359 (cache!1932 MutableMap!1551) (totalInput!2371 BalanceConc!10938)) )
))
(declare-datatypes ((tuple4!770 0))(
  ( (tuple4!771 (_1!8893 Option!2969) (_2!8893 CacheUp!930) (_3!1153 CacheDown!938) (_4!385 CacheFurthestNullable!358)) )
))
(declare-fun call!101570 () tuple4!770)

(declare-fun totalInput!496 () BalanceConc!10938)

(declare-fun bm!101565 () Bool)

(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!358)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!28 (LexerInterface!2531 Rule!5562 BalanceConc!10938 BalanceConc!10938 CacheUp!930 CacheDown!938 CacheFurthestNullable!358) tuple4!770)

(assert (=> bm!101565 (= call!101570 (maxPrefixOneRuleZipperSequenceV3Mem!28 thiss!15733 (h!21803 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun b!1539277 () Bool)

(declare-fun e!985092 () Bool)

(declare-fun e!985108 () Bool)

(assert (=> b!1539277 (= e!985092 e!985108)))

(declare-fun b!1539278 () Bool)

(declare-fun e!985124 () Bool)

(declare-fun e!985116 () Bool)

(assert (=> b!1539278 (= e!985124 e!985116)))

(declare-fun e!985110 () Bool)

(assert (=> b!1539279 (= e!985110 (and e!985117 tp!445454))))

(declare-fun b!1539280 () Bool)

(declare-fun e!985106 () Bool)

(assert (=> b!1539280 (= e!985106 e!985092)))

(declare-fun mapNonEmpty!7572 () Bool)

(declare-fun mapRes!7573 () Bool)

(declare-fun tp!445466 () Bool)

(declare-fun tp!445469 () Bool)

(assert (=> mapNonEmpty!7572 (= mapRes!7573 (and tp!445466 tp!445469))))

(declare-fun mapKey!7573 () (_ BitVec 32))

(declare-fun mapRest!7573 () (Array (_ BitVec 32) List!16471))

(declare-fun mapValue!7574 () List!16471)

(assert (=> mapNonEmpty!7572 (= (arr!2488 (_values!1886 (v!23212 (underlying!3423 (v!23214 (underlying!3424 (cache!1932 cacheFurthestNullable!81))))))) (store mapRest!7573 mapKey!7573 mapValue!7574))))

(declare-fun b!1539282 () Bool)

(declare-datatypes ((tuple4!772 0))(
  ( (tuple4!773 (_1!8894 Option!2969) (_2!8894 CacheUp!930) (_3!1154 CacheFurthestNullable!358) (_4!386 CacheDown!938)) )
))
(declare-fun e!985121 () tuple4!772)

(declare-datatypes ((tuple2!15480 0))(
  ( (tuple2!15481 (_1!8895 Option!2969) (_2!8895 Option!2969)) )
))
(declare-fun lt!533865 () tuple2!15480)

(declare-fun lt!533864 () tuple4!770)

(assert (=> b!1539282 (= e!985121 (tuple4!773 (ite (and ((_ is None!2968) (_1!8895 lt!533865)) ((_ is None!2968) (_2!8895 lt!533865))) None!2968 (ite ((_ is None!2968) (_2!8895 lt!533865)) (_1!8895 lt!533865) (ite ((_ is None!2968) (_1!8895 lt!533865)) (_2!8895 lt!533865) (ite (>= (size!13254 (_1!8892 (v!23213 (_1!8895 lt!533865)))) (size!13254 (_1!8892 (v!23213 (_2!8895 lt!533865))))) (_1!8895 lt!533865) (_2!8895 lt!533865))))) (_2!8893 lt!533864) (_4!385 lt!533864) (_3!1153 lt!533864)))))

(declare-fun lt!533873 () tuple4!770)

(assert (=> b!1539282 (= lt!533873 call!101570)))

(declare-fun maxPrefixZipperSequenceV3Mem!40 (LexerInterface!2531 List!16470 BalanceConc!10938 BalanceConc!10938 CacheUp!930 CacheDown!938 CacheFurthestNullable!358) tuple4!770)

(assert (=> b!1539282 (= lt!533864 (maxPrefixZipperSequenceV3Mem!40 thiss!15733 (t!140676 rulesArg!359) input!1460 totalInput!496 (_2!8893 lt!533873) (_3!1153 lt!533873) (_4!385 lt!533873)))))

(assert (=> b!1539282 (= lt!533865 (tuple2!15481 (_1!8893 lt!533873) (_1!8893 lt!533864)))))

(declare-fun b!1539283 () Bool)

(assert (=> b!1539283 (= e!985114 e!985094)))

(declare-fun res!689605 () Bool)

(assert (=> b!1539283 (=> (not res!689605) (not e!985094))))

(declare-fun lt!533866 () List!16469)

(declare-fun isSuffix!330 (List!16469 List!16469) Bool)

(declare-fun list!6426 (BalanceConc!10938) List!16469)

(assert (=> b!1539283 (= res!689605 (isSuffix!330 lt!533866 (list!6426 totalInput!496)))))

(assert (=> b!1539283 (= lt!533866 (list!6426 input!1460))))

(declare-fun b!1539284 () Bool)

(declare-fun e!985105 () Bool)

(declare-fun e!985122 () Bool)

(assert (=> b!1539284 (= e!985105 e!985122)))

(declare-fun mapIsEmpty!7572 () Bool)

(declare-fun mapRes!7572 () Bool)

(assert (=> mapIsEmpty!7572 mapRes!7572))

(declare-fun tp!445451 () Bool)

(declare-fun tp!445455 () Bool)

(declare-fun array_inv!1789 (array!5590) Bool)

(declare-fun array_inv!1790 (array!5592) Bool)

(assert (=> b!1539285 (= e!985108 (and tp!445474 tp!445451 tp!445455 (array_inv!1789 (_keys!1900 (v!23210 (underlying!3421 (v!23211 (underlying!3422 (cache!1931 cacheDown!708))))))) (array_inv!1790 (_values!1885 (v!23210 (underlying!3421 (v!23211 (underlying!3422 (cache!1931 cacheDown!708))))))) e!985119))))

(declare-fun e!985113 () Bool)

(declare-fun tp!445465 () Bool)

(declare-fun tp!445448 () Bool)

(declare-fun array_inv!1791 (array!5594) Bool)

(assert (=> b!1539286 (= e!985116 (and tp!445463 tp!445465 tp!445448 (array_inv!1789 (_keys!1901 (v!23212 (underlying!3423 (v!23214 (underlying!3424 (cache!1932 cacheFurthestNullable!81))))))) (array_inv!1791 (_values!1886 (v!23212 (underlying!3423 (v!23214 (underlying!3424 (cache!1932 cacheFurthestNullable!81))))))) e!985113))))

(declare-fun mapNonEmpty!7573 () Bool)

(declare-fun tp!445456 () Bool)

(declare-fun tp!445458 () Bool)

(assert (=> mapNonEmpty!7573 (= mapRes!7572 (and tp!445456 tp!445458))))

(declare-fun mapKey!7574 () (_ BitVec 32))

(declare-fun mapValue!7573 () List!16466)

(declare-fun mapRest!7574 () (Array (_ BitVec 32) List!16466))

(assert (=> mapNonEmpty!7573 (= (arr!2485 (_values!1884 (v!23208 (underlying!3419 (v!23209 (underlying!3420 (cache!1930 cacheUp!695))))))) (store mapRest!7574 mapKey!7574 mapValue!7573))))

(declare-fun b!1539287 () Bool)

(declare-fun e!985123 () Bool)

(assert (=> b!1539287 (= e!985123 e!985124)))

(declare-fun b!1539288 () Bool)

(declare-fun e!985109 () Bool)

(assert (=> b!1539288 (= e!985109 e!985110)))

(declare-fun b!1539289 () Bool)

(declare-fun e!985125 () Bool)

(declare-fun tp!445473 () Bool)

(declare-fun inv!21661 (Conc!5498) Bool)

(assert (=> b!1539289 (= e!985125 (and (inv!21661 (c!251652 input!1460)) tp!445473))))

(declare-fun e!985093 () Bool)

(assert (=> b!1539290 (= e!985122 (and e!985093 tp!445472))))

(declare-fun b!1539291 () Bool)

(declare-fun res!689602 () Bool)

(assert (=> b!1539291 (=> (not res!689602) (not e!985094))))

(declare-fun valid!1302 (CacheUp!930) Bool)

(assert (=> b!1539291 (= res!689602 (valid!1302 cacheUp!695))))

(declare-fun e!985100 () Bool)

(declare-fun b!1539292 () Bool)

(declare-fun e!985102 () Bool)

(declare-fun e!985099 () Bool)

(declare-fun inv!21662 (BalanceConc!10938) Bool)

(assert (=> b!1539292 (= e!985100 (and e!985099 (inv!21662 (totalInput!2371 cacheFurthestNullable!81)) e!985102))))

(declare-fun b!1539293 () Bool)

(declare-fun e!985101 () Bool)

(declare-fun tp!445464 () Bool)

(assert (=> b!1539293 (= e!985101 (and (inv!21661 (c!251652 totalInput!496)) tp!445464))))

(declare-fun b!1539294 () Bool)

(declare-fun tp!445468 () Bool)

(assert (=> b!1539294 (= e!985113 (and tp!445468 mapRes!7573))))

(declare-fun condMapEmpty!7574 () Bool)

(declare-fun mapDefault!7572 () List!16471)

(assert (=> b!1539294 (= condMapEmpty!7574 (= (arr!2488 (_values!1886 (v!23212 (underlying!3423 (v!23214 (underlying!3424 (cache!1932 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16471)) mapDefault!7572)))))

(declare-fun b!1539295 () Bool)

(declare-fun e!985107 () Bool)

(declare-fun e!985096 () Bool)

(assert (=> b!1539295 (= e!985107 e!985096)))

(declare-fun b!1539296 () Bool)

(declare-fun lt!533868 () Bool)

(declare-fun lt!533867 () Bool)

(assert (=> b!1539296 (= e!985094 (not (or (not (= lt!533868 lt!533867)) (not lt!533868) lt!533867)))))

(declare-datatypes ((tuple2!15482 0))(
  ( (tuple2!15483 (_1!8896 Token!5402) (_2!8896 List!16469)) )
))
(declare-datatypes ((Option!2970 0))(
  ( (None!2969) (Some!2969 (v!23215 tuple2!15482)) )
))
(declare-fun isDefined!2381 (Option!2970) Bool)

(declare-fun maxPrefixZipper!270 (LexerInterface!2531 List!16470 List!16469) Option!2970)

(assert (=> b!1539296 (= lt!533867 (isDefined!2381 (maxPrefixZipper!270 thiss!15733 rulesArg!359 lt!533866)))))

(declare-fun isDefined!2382 (Option!2969) Bool)

(assert (=> b!1539296 (= lt!533868 (isDefined!2382 (_1!8894 e!985121)))))

(declare-fun c!251650 () Bool)

(assert (=> b!1539296 (= c!251650 (and ((_ is Cons!16402) rulesArg!359) ((_ is Nil!16402) (t!140676 rulesArg!359))))))

(declare-fun isPrefix!1244 (List!16469 List!16469) Bool)

(assert (=> b!1539296 (isPrefix!1244 lt!533866 lt!533866)))

(declare-datatypes ((Unit!25870 0))(
  ( (Unit!25871) )
))
(declare-fun lt!533874 () Unit!25870)

(declare-fun lemmaIsPrefixRefl!874 (List!16469 List!16469) Unit!25870)

(assert (=> b!1539296 (= lt!533874 (lemmaIsPrefixRefl!874 lt!533866 lt!533866))))

(declare-fun e!985104 () Bool)

(assert (=> b!1539297 (= e!985104 (and tp!445470 tp!445467))))

(declare-fun b!1539298 () Bool)

(declare-fun e!985115 () Bool)

(declare-fun tp!445459 () Bool)

(assert (=> b!1539298 (= e!985115 (and tp!445459 mapRes!7572))))

(declare-fun condMapEmpty!7572 () Bool)

(declare-fun mapDefault!7574 () List!16466)

(assert (=> b!1539298 (= condMapEmpty!7572 (= (arr!2485 (_values!1884 (v!23208 (underlying!3419 (v!23209 (underlying!3420 (cache!1930 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16466)) mapDefault!7574)))))

(declare-fun mapNonEmpty!7574 () Bool)

(declare-fun tp!445460 () Bool)

(declare-fun tp!445471 () Bool)

(assert (=> mapNonEmpty!7574 (= mapRes!7574 (and tp!445460 tp!445471))))

(declare-fun mapValue!7572 () List!16467)

(declare-fun mapRest!7572 () (Array (_ BitVec 32) List!16467))

(declare-fun mapKey!7572 () (_ BitVec 32))

(assert (=> mapNonEmpty!7574 (= (arr!2487 (_values!1885 (v!23210 (underlying!3421 (v!23211 (underlying!3422 (cache!1931 cacheDown!708))))))) (store mapRest!7572 mapKey!7572 mapValue!7572))))

(declare-fun b!1539299 () Bool)

(declare-fun lt!533872 () MutLongMap!1606)

(assert (=> b!1539299 (= e!985093 (and e!985106 ((_ is LongMap!1606) lt!533872)))))

(assert (=> b!1539299 (= lt!533872 (v!23211 (underlying!3422 (cache!1931 cacheDown!708))))))

(declare-fun b!1539300 () Bool)

(declare-fun res!689603 () Bool)

(assert (=> b!1539300 (=> (not res!689603) (not e!985114))))

(declare-fun isEmpty!10019 (List!16470) Bool)

(assert (=> b!1539300 (= res!689603 (not (isEmpty!10019 rulesArg!359)))))

(declare-fun b!1539301 () Bool)

(assert (=> b!1539301 (= e!985112 e!985107)))

(declare-fun b!1539302 () Bool)

(declare-fun res!689601 () Bool)

(assert (=> b!1539302 (=> (not res!689601) (not e!985094))))

(declare-fun valid!1303 (CacheFurthestNullable!358) Bool)

(assert (=> b!1539302 (= res!689601 (valid!1303 cacheFurthestNullable!81))))

(declare-fun b!1539281 () Bool)

(declare-fun e!985103 () Bool)

(declare-fun lt!533870 () MutLongMap!1607)

(assert (=> b!1539281 (= e!985103 (and e!985123 ((_ is LongMap!1607) lt!533870)))))

(assert (=> b!1539281 (= lt!533870 (v!23214 (underlying!3424 (cache!1932 cacheFurthestNullable!81))))))

(declare-fun res!689608 () Bool)

(assert (=> start!143034 (=> (not res!689608) (not e!985114))))

(assert (=> start!143034 (= res!689608 ((_ is Lexer!2529) thiss!15733))))

(assert (=> start!143034 e!985114))

(declare-fun inv!21663 (CacheUp!930) Bool)

(assert (=> start!143034 (and (inv!21663 cacheUp!695) e!985109)))

(assert (=> start!143034 (and (inv!21662 input!1460) e!985125)))

(declare-fun inv!21664 (CacheDown!938) Bool)

(assert (=> start!143034 (and (inv!21664 cacheDown!708) e!985105)))

(assert (=> start!143034 true))

(assert (=> start!143034 (and (inv!21662 totalInput!496) e!985101)))

(assert (=> start!143034 e!985118))

(declare-fun inv!21665 (CacheFurthestNullable!358) Bool)

(assert (=> start!143034 (and (inv!21665 cacheFurthestNullable!81) e!985100)))

(declare-fun mapIsEmpty!7573 () Bool)

(assert (=> mapIsEmpty!7573 mapRes!7573))

(declare-fun b!1539303 () Bool)

(declare-fun tp!445461 () Bool)

(assert (=> b!1539303 (= e!985102 (and (inv!21661 (c!251652 (totalInput!2371 cacheFurthestNullable!81))) tp!445461))))

(assert (=> b!1539304 (= e!985099 (and e!985103 tp!445457))))

(declare-fun mapIsEmpty!7574 () Bool)

(assert (=> mapIsEmpty!7574 mapRes!7574))

(declare-fun tp!445462 () Bool)

(declare-fun tp!445453 () Bool)

(declare-fun array_inv!1792 (array!5588) Bool)

(assert (=> b!1539305 (= e!985096 (and tp!445450 tp!445453 tp!445462 (array_inv!1789 (_keys!1899 (v!23208 (underlying!3419 (v!23209 (underlying!3420 (cache!1930 cacheUp!695))))))) (array_inv!1792 (_values!1884 (v!23208 (underlying!3419 (v!23209 (underlying!3420 (cache!1930 cacheUp!695))))))) e!985115))))

(declare-fun tp!445475 () Bool)

(declare-fun b!1539306 () Bool)

(declare-fun inv!21654 (String!19135) Bool)

(declare-fun inv!21666 (TokenValueInjection!5602) Bool)

(assert (=> b!1539306 (= e!985120 (and tp!445475 (inv!21654 (tag!3145 (h!21803 rulesArg!359))) (inv!21666 (transformation!2881 (h!21803 rulesArg!359))) e!985104))))

(declare-fun b!1539307 () Bool)

(declare-fun lt!533871 () tuple4!770)

(assert (=> b!1539307 (= e!985121 (tuple4!773 (_1!8893 lt!533871) (_2!8893 lt!533871) (_4!385 lt!533871) (_3!1153 lt!533871)))))

(assert (=> b!1539307 (= lt!533871 call!101570)))

(declare-fun b!1539308 () Bool)

(declare-fun res!689604 () Bool)

(assert (=> b!1539308 (=> (not res!689604) (not e!985094))))

(assert (=> b!1539308 (= res!689604 (= (totalInput!2371 cacheFurthestNullable!81) totalInput!496))))

(assert (= (and start!143034 res!689608) b!1539275))

(assert (= (and b!1539275 res!689607) b!1539300))

(assert (= (and b!1539300 res!689603) b!1539283))

(assert (= (and b!1539283 res!689605) b!1539291))

(assert (= (and b!1539291 res!689602) b!1539276))

(assert (= (and b!1539276 res!689606) b!1539302))

(assert (= (and b!1539302 res!689601) b!1539308))

(assert (= (and b!1539308 res!689604) b!1539296))

(assert (= (and b!1539296 c!251650) b!1539307))

(assert (= (and b!1539296 (not c!251650)) b!1539282))

(assert (= (or b!1539307 b!1539282) bm!101565))

(assert (= (and b!1539298 condMapEmpty!7572) mapIsEmpty!7572))

(assert (= (and b!1539298 (not condMapEmpty!7572)) mapNonEmpty!7573))

(assert (= b!1539305 b!1539298))

(assert (= b!1539295 b!1539305))

(assert (= b!1539301 b!1539295))

(assert (= (and b!1539273 ((_ is LongMap!1605) (v!23209 (underlying!3420 (cache!1930 cacheUp!695))))) b!1539301))

(assert (= b!1539279 b!1539273))

(assert (= (and b!1539288 ((_ is HashMap!1549) (cache!1930 cacheUp!695))) b!1539279))

(assert (= start!143034 b!1539288))

(assert (= start!143034 b!1539289))

(assert (= (and b!1539274 condMapEmpty!7573) mapIsEmpty!7574))

(assert (= (and b!1539274 (not condMapEmpty!7573)) mapNonEmpty!7574))

(assert (= b!1539285 b!1539274))

(assert (= b!1539277 b!1539285))

(assert (= b!1539280 b!1539277))

(assert (= (and b!1539299 ((_ is LongMap!1606) (v!23211 (underlying!3422 (cache!1931 cacheDown!708))))) b!1539280))

(assert (= b!1539290 b!1539299))

(assert (= (and b!1539284 ((_ is HashMap!1550) (cache!1931 cacheDown!708))) b!1539290))

(assert (= start!143034 b!1539284))

(assert (= start!143034 b!1539293))

(assert (= b!1539306 b!1539297))

(assert (= b!1539272 b!1539306))

(assert (= (and start!143034 ((_ is Cons!16402) rulesArg!359)) b!1539272))

(assert (= (and b!1539294 condMapEmpty!7574) mapIsEmpty!7573))

(assert (= (and b!1539294 (not condMapEmpty!7574)) mapNonEmpty!7572))

(assert (= b!1539286 b!1539294))

(assert (= b!1539278 b!1539286))

(assert (= b!1539287 b!1539278))

(assert (= (and b!1539281 ((_ is LongMap!1607) (v!23214 (underlying!3424 (cache!1932 cacheFurthestNullable!81))))) b!1539287))

(assert (= b!1539304 b!1539281))

(assert (= (and b!1539292 ((_ is HashMap!1551) (cache!1932 cacheFurthestNullable!81))) b!1539304))

(assert (= b!1539292 b!1539303))

(assert (= start!143034 b!1539292))

(declare-fun m!1813588 () Bool)

(assert (=> bm!101565 m!1813588))

(declare-fun m!1813590 () Bool)

(assert (=> b!1539296 m!1813590))

(declare-fun m!1813592 () Bool)

(assert (=> b!1539296 m!1813592))

(declare-fun m!1813594 () Bool)

(assert (=> b!1539296 m!1813594))

(declare-fun m!1813596 () Bool)

(assert (=> b!1539296 m!1813596))

(declare-fun m!1813598 () Bool)

(assert (=> b!1539296 m!1813598))

(assert (=> b!1539296 m!1813590))

(declare-fun m!1813600 () Bool)

(assert (=> b!1539282 m!1813600))

(declare-fun m!1813602 () Bool)

(assert (=> b!1539306 m!1813602))

(declare-fun m!1813604 () Bool)

(assert (=> b!1539306 m!1813604))

(declare-fun m!1813606 () Bool)

(assert (=> b!1539286 m!1813606))

(declare-fun m!1813608 () Bool)

(assert (=> b!1539286 m!1813608))

(declare-fun m!1813610 () Bool)

(assert (=> mapNonEmpty!7573 m!1813610))

(declare-fun m!1813612 () Bool)

(assert (=> start!143034 m!1813612))

(declare-fun m!1813614 () Bool)

(assert (=> start!143034 m!1813614))

(declare-fun m!1813616 () Bool)

(assert (=> start!143034 m!1813616))

(declare-fun m!1813618 () Bool)

(assert (=> start!143034 m!1813618))

(declare-fun m!1813620 () Bool)

(assert (=> start!143034 m!1813620))

(declare-fun m!1813622 () Bool)

(assert (=> b!1539293 m!1813622))

(declare-fun m!1813624 () Bool)

(assert (=> b!1539291 m!1813624))

(declare-fun m!1813626 () Bool)

(assert (=> b!1539283 m!1813626))

(assert (=> b!1539283 m!1813626))

(declare-fun m!1813628 () Bool)

(assert (=> b!1539283 m!1813628))

(declare-fun m!1813630 () Bool)

(assert (=> b!1539283 m!1813630))

(declare-fun m!1813632 () Bool)

(assert (=> b!1539289 m!1813632))

(declare-fun m!1813634 () Bool)

(assert (=> b!1539275 m!1813634))

(declare-fun m!1813636 () Bool)

(assert (=> b!1539300 m!1813636))

(declare-fun m!1813638 () Bool)

(assert (=> b!1539276 m!1813638))

(declare-fun m!1813640 () Bool)

(assert (=> b!1539305 m!1813640))

(declare-fun m!1813642 () Bool)

(assert (=> b!1539305 m!1813642))

(declare-fun m!1813644 () Bool)

(assert (=> mapNonEmpty!7574 m!1813644))

(declare-fun m!1813646 () Bool)

(assert (=> b!1539292 m!1813646))

(declare-fun m!1813648 () Bool)

(assert (=> b!1539285 m!1813648))

(declare-fun m!1813650 () Bool)

(assert (=> b!1539285 m!1813650))

(declare-fun m!1813652 () Bool)

(assert (=> b!1539303 m!1813652))

(declare-fun m!1813654 () Bool)

(assert (=> mapNonEmpty!7572 m!1813654))

(declare-fun m!1813656 () Bool)

(assert (=> b!1539302 m!1813656))

(check-sat (not b_next!40857) (not bm!101565) (not b!1539306) (not mapNonEmpty!7572) (not b!1539300) (not b!1539275) (not b_next!40865) (not b!1539298) (not b!1539272) (not b!1539303) (not b_next!40859) (not start!143034) b_and!107029 (not b_next!40867) b_and!107043 (not b!1539294) (not b!1539293) (not b_next!40861) (not b!1539274) (not mapNonEmpty!7574) b_and!107039 (not b!1539291) (not b!1539305) (not b!1539276) (not b_next!40855) (not b!1539286) (not b!1539292) (not b!1539283) (not b!1539296) (not b!1539289) (not b!1539282) (not b!1539302) b_and!107031 (not b_next!40869) (not mapNonEmpty!7573) b_and!107037 b_and!107035 (not b!1539285) b_and!107033 b_and!107041 (not b_next!40863))
(check-sat b_and!107029 (not b_next!40857) (not b_next!40861) b_and!107039 (not b_next!40855) b_and!107031 (not b_next!40869) (not b_next!40865) (not b_next!40859) (not b_next!40867) b_and!107043 b_and!107037 b_and!107035 b_and!107033 b_and!107041 (not b_next!40863))
