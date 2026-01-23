; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111242 () Bool)

(assert start!111242)

(declare-fun b!1259021 () Bool)

(declare-fun b_free!29799 () Bool)

(declare-fun b_next!30503 () Bool)

(assert (=> b!1259021 (= b_free!29799 (not b_next!30503))))

(declare-fun tp!371132 () Bool)

(declare-fun b_and!84943 () Bool)

(assert (=> b!1259021 (= tp!371132 b_and!84943)))

(declare-fun b!1259029 () Bool)

(declare-fun b_free!29801 () Bool)

(declare-fun b_next!30505 () Bool)

(assert (=> b!1259029 (= b_free!29801 (not b_next!30505))))

(declare-fun tp!371128 () Bool)

(declare-fun b_and!84945 () Bool)

(assert (=> b!1259029 (= tp!371128 b_and!84945)))

(declare-fun b!1259024 () Bool)

(declare-fun b_free!29803 () Bool)

(declare-fun b_next!30507 () Bool)

(assert (=> b!1259024 (= b_free!29803 (not b_next!30507))))

(declare-fun tp!371135 () Bool)

(declare-fun b_and!84947 () Bool)

(assert (=> b!1259024 (= tp!371135 b_and!84947)))

(declare-fun b!1259027 () Bool)

(declare-fun b_free!29805 () Bool)

(declare-fun b_next!30509 () Bool)

(assert (=> b!1259027 (= b_free!29805 (not b_next!30509))))

(declare-fun tp!371131 () Bool)

(declare-fun b_and!84949 () Bool)

(assert (=> b!1259027 (= tp!371131 b_and!84949)))

(declare-fun b!1259016 () Bool)

(declare-fun e!801650 () Bool)

(declare-datatypes ((List!12685 0))(
  ( (Nil!12619) (Cons!12619 (h!18020 (_ BitVec 16)) (t!116059 List!12685)) )
))
(declare-datatypes ((TokenValue!2258 0))(
  ( (FloatLiteralValue!4516 (text!16251 List!12685)) (TokenValueExt!2257 (__x!8258 Int)) (Broken!11290 (value!71085 List!12685)) (Object!2323) (End!2258) (Def!2258) (Underscore!2258) (Match!2258) (Else!2258) (Error!2258) (Case!2258) (If!2258) (Extends!2258) (Abstract!2258) (Class!2258) (Val!2258) (DelimiterValue!4516 (del!2318 List!12685)) (KeywordValue!2264 (value!71086 List!12685)) (CommentValue!4516 (value!71087 List!12685)) (WhitespaceValue!4516 (value!71088 List!12685)) (IndentationValue!2258 (value!71089 List!12685)) (String!15523) (Int32!2258) (Broken!11291 (value!71090 List!12685)) (Boolean!2259) (Unit!18888) (OperatorValue!2261 (op!2318 List!12685)) (IdentifierValue!4516 (value!71091 List!12685)) (IdentifierValue!4517 (value!71092 List!12685)) (WhitespaceValue!4517 (value!71093 List!12685)) (True!4516) (False!4516) (Broken!11292 (value!71094 List!12685)) (Broken!11293 (value!71095 List!12685)) (True!4517) (RightBrace!2258) (RightBracket!2258) (Colon!2258) (Null!2258) (Comma!2258) (LeftBracket!2258) (False!4517) (LeftBrace!2258) (ImaginaryLiteralValue!2258 (text!16252 List!12685)) (StringLiteralValue!6774 (value!71096 List!12685)) (EOFValue!2258 (value!71097 List!12685)) (IdentValue!2258 (value!71098 List!12685)) (DelimiterValue!4517 (value!71099 List!12685)) (DedentValue!2258 (value!71100 List!12685)) (NewLineValue!2258 (value!71101 List!12685)) (IntegerValue!6774 (value!71102 (_ BitVec 32)) (text!16253 List!12685)) (IntegerValue!6775 (value!71103 Int) (text!16254 List!12685)) (Times!2258) (Or!2258) (Equal!2258) (Minus!2258) (Broken!11294 (value!71104 List!12685)) (And!2258) (Div!2258) (LessEqual!2258) (Mod!2258) (Concat!5739) (Not!2258) (Plus!2258) (SpaceValue!2258 (value!71105 List!12685)) (IntegerValue!6776 (value!71106 Int) (text!16255 List!12685)) (StringLiteralValue!6775 (text!16256 List!12685)) (FloatLiteralValue!4517 (text!16257 List!12685)) (BytesLiteralValue!2258 (value!71107 List!12685)) (CommentValue!4517 (value!71108 List!12685)) (StringLiteralValue!6776 (value!71109 List!12685)) (ErrorTokenValue!2258 (msg!2319 List!12685)) )
))
(declare-datatypes ((Regex!3481 0))(
  ( (ElementMatch!3481 (c!209060 (_ BitVec 16))) (Concat!5740 (regOne!7474 Regex!3481) (regTwo!7474 Regex!3481)) (EmptyExpr!3481) (Star!3481 (reg!3810 Regex!3481)) (EmptyLang!3481) (Union!3481 (regOne!7475 Regex!3481) (regTwo!7475 Regex!3481)) )
))
(declare-datatypes ((String!15524 0))(
  ( (String!15525 (value!71110 String)) )
))
(declare-datatypes ((IArray!8301 0))(
  ( (IArray!8302 (innerList!4208 List!12685)) )
))
(declare-datatypes ((Conc!4148 0))(
  ( (Node!4148 (left!10925 Conc!4148) (right!11255 Conc!4148) (csize!8526 Int) (cheight!4359 Int)) (Leaf!6428 (xs!6859 IArray!8301) (csize!8527 Int)) (Empty!4148) )
))
(declare-datatypes ((BalanceConc!8236 0))(
  ( (BalanceConc!8237 (c!209061 Conc!4148)) )
))
(declare-datatypes ((TokenValueInjection!4176 0))(
  ( (TokenValueInjection!4177 (toValue!3331 Int) (toChars!3190 Int)) )
))
(declare-datatypes ((Rule!4136 0))(
  ( (Rule!4137 (regex!2168 Regex!3481) (tag!2430 String!15524) (isSeparator!2168 Bool) (transformation!2168 TokenValueInjection!4176)) )
))
(declare-datatypes ((List!12686 0))(
  ( (Nil!12620) (Cons!12620 (h!18021 Rule!4136) (t!116060 List!12686)) )
))
(declare-fun lt!421229 () List!12686)

(declare-datatypes ((Token!3998 0))(
  ( (Token!3999 (value!71111 TokenValue!2258) (rule!3599 Rule!4136) (size!9995 Int) (originalCharacters!2722 List!12685)) )
))
(declare-datatypes ((List!12687 0))(
  ( (Nil!12621) (Cons!12621 (h!18022 Token!3998) (t!116061 List!12687)) )
))
(declare-datatypes ((IArray!8303 0))(
  ( (IArray!8304 (innerList!4209 List!12687)) )
))
(declare-datatypes ((Conc!4149 0))(
  ( (Node!4149 (left!10926 Conc!4149) (right!11256 Conc!4149) (csize!8528 Int) (cheight!4360 Int)) (Leaf!6429 (xs!6860 IArray!8303) (csize!8529 Int)) (Empty!4149) )
))
(declare-datatypes ((BalanceConc!8238 0))(
  ( (BalanceConc!8239 (c!209062 Conc!4149)) )
))
(declare-fun lt!421230 () BalanceConc!8238)

(declare-datatypes ((LexerInterface!1863 0))(
  ( (LexerInterfaceExt!1860 (__x!8259 Int)) (Lexer!1861) )
))
(declare-fun rulesProduceEachTokenIndividually!777 (LexerInterface!1863 List!12686 BalanceConc!8238) Bool)

(assert (=> b!1259016 (= e!801650 (not (rulesProduceEachTokenIndividually!777 Lexer!1861 lt!421229 lt!421230)))))

(declare-fun b!1259017 () Bool)

(declare-fun res!557295 () Bool)

(declare-fun e!801642 () Bool)

(assert (=> b!1259017 (=> (not res!557295) (not e!801642))))

(declare-fun rulesInvariant!1736 (LexerInterface!1863 List!12686) Bool)

(assert (=> b!1259017 (= res!557295 (rulesInvariant!1736 Lexer!1861 lt!421229))))

(declare-fun b!1259018 () Bool)

(declare-fun e!801652 () Bool)

(declare-fun e!801645 () Bool)

(assert (=> b!1259018 (= e!801652 e!801645)))

(declare-fun mapIsEmpty!6345 () Bool)

(declare-fun mapRes!6346 () Bool)

(assert (=> mapIsEmpty!6345 mapRes!6346))

(declare-fun b!1259019 () Bool)

(declare-fun e!801654 () Bool)

(declare-datatypes ((List!12688 0))(
  ( (Nil!12622) (Cons!12622 (h!18023 Regex!3481) (t!116062 List!12688)) )
))
(declare-datatypes ((Context!1086 0))(
  ( (Context!1087 (exprs!1043 List!12688)) )
))
(declare-datatypes ((tuple2!12526 0))(
  ( (tuple2!12527 (_1!7120 Context!1086) (_2!7120 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!12528 0))(
  ( (tuple2!12529 (_1!7121 tuple2!12526) (_2!7121 (InoxSet Context!1086))) )
))
(declare-datatypes ((List!12689 0))(
  ( (Nil!12623) (Cons!12623 (h!18024 tuple2!12528) (t!116063 List!12689)) )
))
(declare-datatypes ((array!4695 0))(
  ( (array!4696 (arr!2093 (Array (_ BitVec 32) List!12689)) (size!9996 (_ BitVec 32))) )
))
(declare-datatypes ((array!4697 0))(
  ( (array!4698 (arr!2094 (Array (_ BitVec 32) (_ BitVec 64))) (size!9997 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2644 0))(
  ( (LongMapFixedSize!2645 (defaultEntry!1682 Int) (mask!4145 (_ BitVec 32)) (extraKeys!1569 (_ BitVec 32)) (zeroValue!1579 List!12689) (minValue!1579 List!12689) (_size!2725 (_ BitVec 32)) (_keys!1616 array!4697) (_values!1601 array!4695) (_vacant!1383 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5173 0))(
  ( (Cell!5174 (v!20865 LongMapFixedSize!2644)) )
))
(declare-datatypes ((MutLongMap!1322 0))(
  ( (LongMap!1322 (underlying!2851 Cell!5173)) (MutLongMapExt!1321 (__x!8260 Int)) )
))
(declare-fun lt!421231 () MutLongMap!1322)

(get-info :version)

(assert (=> b!1259019 (= e!801654 (and e!801652 ((_ is LongMap!1322) lt!421231)))))

(declare-datatypes ((Hashable!1266 0))(
  ( (HashableExt!1265 (__x!8261 Int)) )
))
(declare-datatypes ((Cell!5175 0))(
  ( (Cell!5176 (v!20866 MutLongMap!1322)) )
))
(declare-datatypes ((MutableMap!1266 0))(
  ( (MutableMapExt!1265 (__x!8262 Int)) (HashMap!1266 (underlying!2852 Cell!5175) (hashF!3185 Hashable!1266) (_size!2726 (_ BitVec 32)) (defaultValue!1426 Int)) )
))
(declare-datatypes ((CacheUp!736 0))(
  ( (CacheUp!737 (cache!1647 MutableMap!1266)) )
))
(declare-fun cacheUp!343 () CacheUp!736)

(assert (=> b!1259019 (= lt!421231 (v!20866 (underlying!2852 (cache!1647 cacheUp!343))))))

(declare-fun res!557293 () Bool)

(assert (=> start!111242 (=> (not res!557293) (not e!801642))))

(declare-fun isEmpty!7511 (List!12686) Bool)

(assert (=> start!111242 (= res!557293 (not (isEmpty!7511 lt!421229)))))

(declare-datatypes ((JsonLexer!352 0))(
  ( (JsonLexer!353) )
))
(declare-fun rules!109 (JsonLexer!352) List!12686)

(assert (=> start!111242 (= lt!421229 (rules!109 JsonLexer!353))))

(assert (=> start!111242 e!801642))

(declare-fun e!801648 () Bool)

(declare-fun inv!17014 (CacheUp!736) Bool)

(assert (=> start!111242 (and (inv!17014 cacheUp!343) e!801648)))

(declare-datatypes ((tuple3!1132 0))(
  ( (tuple3!1133 (_1!7122 Regex!3481) (_2!7122 Context!1086) (_3!857 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!12530 0))(
  ( (tuple2!12531 (_1!7123 tuple3!1132) (_2!7123 (InoxSet Context!1086))) )
))
(declare-datatypes ((List!12690 0))(
  ( (Nil!12624) (Cons!12624 (h!18025 tuple2!12530) (t!116064 List!12690)) )
))
(declare-datatypes ((array!4699 0))(
  ( (array!4700 (arr!2095 (Array (_ BitVec 32) List!12690)) (size!9998 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2646 0))(
  ( (LongMapFixedSize!2647 (defaultEntry!1683 Int) (mask!4146 (_ BitVec 32)) (extraKeys!1570 (_ BitVec 32)) (zeroValue!1580 List!12690) (minValue!1580 List!12690) (_size!2727 (_ BitVec 32)) (_keys!1617 array!4697) (_values!1602 array!4699) (_vacant!1384 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5177 0))(
  ( (Cell!5178 (v!20867 LongMapFixedSize!2646)) )
))
(declare-datatypes ((MutLongMap!1323 0))(
  ( (LongMap!1323 (underlying!2853 Cell!5177)) (MutLongMapExt!1322 (__x!8263 Int)) )
))
(declare-datatypes ((Cell!5179 0))(
  ( (Cell!5180 (v!20868 MutLongMap!1323)) )
))
(declare-datatypes ((Hashable!1267 0))(
  ( (HashableExt!1266 (__x!8264 Int)) )
))
(declare-datatypes ((MutableMap!1267 0))(
  ( (MutableMapExt!1266 (__x!8265 Int)) (HashMap!1267 (underlying!2854 Cell!5179) (hashF!3186 Hashable!1267) (_size!2728 (_ BitVec 32)) (defaultValue!1427 Int)) )
))
(declare-datatypes ((CacheDown!738 0))(
  ( (CacheDown!739 (cache!1648 MutableMap!1267)) )
))
(declare-fun cacheDown!356 () CacheDown!738)

(declare-fun e!801656 () Bool)

(declare-fun inv!17015 (CacheDown!738) Bool)

(assert (=> start!111242 (and (inv!17015 cacheDown!356) e!801656)))

(declare-fun b!1259020 () Bool)

(declare-fun e!801643 () Bool)

(declare-fun e!801644 () Bool)

(declare-fun lt!421228 () MutLongMap!1323)

(assert (=> b!1259020 (= e!801643 (and e!801644 ((_ is LongMap!1323) lt!421228)))))

(assert (=> b!1259020 (= lt!421228 (v!20868 (underlying!2854 (cache!1648 cacheDown!356))))))

(declare-fun tp!371129 () Bool)

(declare-fun e!801649 () Bool)

(declare-fun tp!371122 () Bool)

(declare-fun e!801641 () Bool)

(declare-fun array_inv!1522 (array!4697) Bool)

(declare-fun array_inv!1523 (array!4699) Bool)

(assert (=> b!1259021 (= e!801641 (and tp!371132 tp!371129 tp!371122 (array_inv!1522 (_keys!1617 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356))))))) (array_inv!1523 (_values!1602 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356))))))) e!801649))))

(declare-fun b!1259022 () Bool)

(declare-fun e!801658 () Bool)

(assert (=> b!1259022 (= e!801658 e!801641)))

(declare-fun b!1259023 () Bool)

(assert (=> b!1259023 (= e!801642 e!801650)))

(declare-fun res!557294 () Bool)

(assert (=> b!1259023 (=> (not res!557294) (not e!801650))))

(declare-datatypes ((tuple3!1134 0))(
  ( (tuple3!1135 (_1!7124 Bool) (_2!7124 CacheUp!736) (_3!858 CacheDown!738)) )
))
(declare-fun rulesProduceEachTokenIndividuallyMem!31 (LexerInterface!1863 List!12686 BalanceConc!8238 CacheUp!736 CacheDown!738) tuple3!1134)

(assert (=> b!1259023 (= res!557294 (_1!7124 (rulesProduceEachTokenIndividuallyMem!31 Lexer!1861 lt!421229 lt!421230 cacheUp!343 cacheDown!356)))))

(declare-fun singletonSeq!760 (Token!3998) BalanceConc!8238)

(declare-fun apply!2707 (TokenValueInjection!4176 BalanceConc!8236) TokenValue!2258)

(declare-datatypes ((KeywordValueInjection!154 0))(
  ( (KeywordValueInjection!155) )
))
(declare-fun injection!9 (KeywordValueInjection!154) TokenValueInjection!4176)

(declare-fun singletonSeq!761 ((_ BitVec 16)) BalanceConc!8236)

(declare-fun rBracketRule!0 (JsonLexer!352) Rule!4136)

(assert (=> b!1259023 (= lt!421230 (singletonSeq!760 (Token!3999 (apply!2707 (injection!9 KeywordValueInjection!155) (singletonSeq!761 #x005D)) (rBracketRule!0 JsonLexer!353) 1 (Cons!12619 #x005D Nil!12619))))))

(declare-fun e!801651 () Bool)

(declare-fun e!801657 () Bool)

(declare-fun tp!371127 () Bool)

(declare-fun tp!371130 () Bool)

(declare-fun array_inv!1524 (array!4695) Bool)

(assert (=> b!1259024 (= e!801657 (and tp!371135 tp!371127 tp!371130 (array_inv!1522 (_keys!1616 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343))))))) (array_inv!1524 (_values!1601 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343))))))) e!801651))))

(declare-fun b!1259025 () Bool)

(assert (=> b!1259025 (= e!801645 e!801657)))

(declare-fun b!1259026 () Bool)

(declare-fun e!801653 () Bool)

(assert (=> b!1259026 (= e!801656 e!801653)))

(declare-fun mapIsEmpty!6346 () Bool)

(declare-fun mapRes!6345 () Bool)

(assert (=> mapIsEmpty!6346 mapRes!6345))

(assert (=> b!1259027 (= e!801653 (and e!801643 tp!371131))))

(declare-fun b!1259028 () Bool)

(declare-fun res!557296 () Bool)

(assert (=> b!1259028 (=> (not res!557296) (not e!801650))))

(declare-fun rulesProduceEachTokenIndividuallyList!665 (LexerInterface!1863 List!12686 List!12687) Bool)

(declare-fun list!4711 (BalanceConc!8238) List!12687)

(assert (=> b!1259028 (= res!557296 (rulesProduceEachTokenIndividuallyList!665 Lexer!1861 lt!421229 (list!4711 lt!421230)))))

(declare-fun e!801655 () Bool)

(assert (=> b!1259029 (= e!801655 (and e!801654 tp!371128))))

(declare-fun b!1259030 () Bool)

(assert (=> b!1259030 (= e!801648 e!801655)))

(declare-fun mapNonEmpty!6345 () Bool)

(declare-fun tp!371126 () Bool)

(declare-fun tp!371123 () Bool)

(assert (=> mapNonEmpty!6345 (= mapRes!6346 (and tp!371126 tp!371123))))

(declare-fun mapKey!6346 () (_ BitVec 32))

(declare-fun mapRest!6346 () (Array (_ BitVec 32) List!12689))

(declare-fun mapValue!6346 () List!12689)

(assert (=> mapNonEmpty!6345 (= (arr!2093 (_values!1601 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343))))))) (store mapRest!6346 mapKey!6346 mapValue!6346))))

(declare-fun mapNonEmpty!6346 () Bool)

(declare-fun tp!371125 () Bool)

(declare-fun tp!371134 () Bool)

(assert (=> mapNonEmpty!6346 (= mapRes!6345 (and tp!371125 tp!371134))))

(declare-fun mapRest!6345 () (Array (_ BitVec 32) List!12690))

(declare-fun mapKey!6345 () (_ BitVec 32))

(declare-fun mapValue!6345 () List!12690)

(assert (=> mapNonEmpty!6346 (= (arr!2095 (_values!1602 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356))))))) (store mapRest!6345 mapKey!6345 mapValue!6345))))

(declare-fun b!1259031 () Bool)

(assert (=> b!1259031 (= e!801644 e!801658)))

(declare-fun b!1259032 () Bool)

(declare-fun tp!371133 () Bool)

(assert (=> b!1259032 (= e!801649 (and tp!371133 mapRes!6345))))

(declare-fun condMapEmpty!6345 () Bool)

(declare-fun mapDefault!6346 () List!12690)

(assert (=> b!1259032 (= condMapEmpty!6345 (= (arr!2095 (_values!1602 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356))))))) ((as const (Array (_ BitVec 32) List!12690)) mapDefault!6346)))))

(declare-fun b!1259033 () Bool)

(declare-fun tp!371124 () Bool)

(assert (=> b!1259033 (= e!801651 (and tp!371124 mapRes!6346))))

(declare-fun condMapEmpty!6346 () Bool)

(declare-fun mapDefault!6345 () List!12689)

(assert (=> b!1259033 (= condMapEmpty!6346 (= (arr!2093 (_values!1601 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343))))))) ((as const (Array (_ BitVec 32) List!12689)) mapDefault!6345)))))

(assert (= (and start!111242 res!557293) b!1259017))

(assert (= (and b!1259017 res!557295) b!1259023))

(assert (= (and b!1259023 res!557294) b!1259028))

(assert (= (and b!1259028 res!557296) b!1259016))

(assert (= (and b!1259033 condMapEmpty!6346) mapIsEmpty!6345))

(assert (= (and b!1259033 (not condMapEmpty!6346)) mapNonEmpty!6345))

(assert (= b!1259024 b!1259033))

(assert (= b!1259025 b!1259024))

(assert (= b!1259018 b!1259025))

(assert (= (and b!1259019 ((_ is LongMap!1322) (v!20866 (underlying!2852 (cache!1647 cacheUp!343))))) b!1259018))

(assert (= b!1259029 b!1259019))

(assert (= (and b!1259030 ((_ is HashMap!1266) (cache!1647 cacheUp!343))) b!1259029))

(assert (= start!111242 b!1259030))

(assert (= (and b!1259032 condMapEmpty!6345) mapIsEmpty!6346))

(assert (= (and b!1259032 (not condMapEmpty!6345)) mapNonEmpty!6346))

(assert (= b!1259021 b!1259032))

(assert (= b!1259022 b!1259021))

(assert (= b!1259031 b!1259022))

(assert (= (and b!1259020 ((_ is LongMap!1323) (v!20868 (underlying!2854 (cache!1648 cacheDown!356))))) b!1259031))

(assert (= b!1259027 b!1259020))

(assert (= (and b!1259026 ((_ is HashMap!1267) (cache!1648 cacheDown!356))) b!1259027))

(assert (= start!111242 b!1259026))

(declare-fun m!1417463 () Bool)

(assert (=> mapNonEmpty!6345 m!1417463))

(declare-fun m!1417465 () Bool)

(assert (=> b!1259021 m!1417465))

(declare-fun m!1417467 () Bool)

(assert (=> b!1259021 m!1417467))

(declare-fun m!1417469 () Bool)

(assert (=> b!1259016 m!1417469))

(declare-fun m!1417471 () Bool)

(assert (=> start!111242 m!1417471))

(declare-fun m!1417473 () Bool)

(assert (=> start!111242 m!1417473))

(declare-fun m!1417475 () Bool)

(assert (=> start!111242 m!1417475))

(declare-fun m!1417477 () Bool)

(assert (=> start!111242 m!1417477))

(declare-fun m!1417479 () Bool)

(assert (=> mapNonEmpty!6346 m!1417479))

(declare-fun m!1417481 () Bool)

(assert (=> b!1259023 m!1417481))

(declare-fun m!1417483 () Bool)

(assert (=> b!1259023 m!1417483))

(assert (=> b!1259023 m!1417481))

(declare-fun m!1417485 () Bool)

(assert (=> b!1259023 m!1417485))

(declare-fun m!1417487 () Bool)

(assert (=> b!1259023 m!1417487))

(assert (=> b!1259023 m!1417485))

(declare-fun m!1417489 () Bool)

(assert (=> b!1259023 m!1417489))

(declare-fun m!1417491 () Bool)

(assert (=> b!1259023 m!1417491))

(declare-fun m!1417493 () Bool)

(assert (=> b!1259017 m!1417493))

(declare-fun m!1417495 () Bool)

(assert (=> b!1259028 m!1417495))

(assert (=> b!1259028 m!1417495))

(declare-fun m!1417497 () Bool)

(assert (=> b!1259028 m!1417497))

(declare-fun m!1417499 () Bool)

(assert (=> b!1259024 m!1417499))

(declare-fun m!1417501 () Bool)

(assert (=> b!1259024 m!1417501))

(check-sat (not mapNonEmpty!6345) (not b_next!30503) (not b!1259028) (not mapNonEmpty!6346) (not b!1259021) (not b!1259024) (not b!1259023) (not start!111242) b_and!84947 (not b_next!30505) b_and!84943 (not b!1259016) (not b_next!30507) b_and!84945 (not b!1259032) b_and!84949 (not b_next!30509) (not b!1259033) (not b!1259017))
(check-sat (not b_next!30503) b_and!84947 (not b_next!30505) b_and!84943 (not b_next!30507) b_and!84945 b_and!84949 (not b_next!30509))
(get-model)

(declare-fun b!1259050 () Bool)

(declare-fun e!801673 () Bool)

(assert (=> b!1259050 (= e!801673 true)))

(declare-fun b!1259049 () Bool)

(declare-fun e!801672 () Bool)

(assert (=> b!1259049 (= e!801672 e!801673)))

(declare-fun b!1259048 () Bool)

(declare-fun e!801671 () Bool)

(assert (=> b!1259048 (= e!801671 e!801672)))

(declare-fun d!355852 () Bool)

(assert (=> d!355852 e!801671))

(assert (= b!1259049 b!1259050))

(assert (= b!1259048 b!1259049))

(assert (= (and d!355852 ((_ is Cons!12620) lt!421229)) b!1259048))

(declare-fun order!7687 () Int)

(declare-fun lambda!49870 () Int)

(declare-fun order!7685 () Int)

(declare-fun dynLambda!5510 (Int Int) Int)

(declare-fun dynLambda!5511 (Int Int) Int)

(assert (=> b!1259050 (< (dynLambda!5510 order!7685 (toValue!3331 (transformation!2168 (h!18021 lt!421229)))) (dynLambda!5511 order!7687 lambda!49870))))

(declare-fun order!7689 () Int)

(declare-fun dynLambda!5512 (Int Int) Int)

(assert (=> b!1259050 (< (dynLambda!5512 order!7689 (toChars!3190 (transformation!2168 (h!18021 lt!421229)))) (dynLambda!5511 order!7687 lambda!49870))))

(assert (=> d!355852 true))

(declare-fun lt!421234 () Bool)

(declare-fun forall!3203 (List!12687 Int) Bool)

(assert (=> d!355852 (= lt!421234 (forall!3203 (list!4711 lt!421230) lambda!49870))))

(declare-fun e!801664 () Bool)

(assert (=> d!355852 (= lt!421234 e!801664)))

(declare-fun res!557301 () Bool)

(assert (=> d!355852 (=> res!557301 e!801664)))

(assert (=> d!355852 (= res!557301 (not ((_ is Cons!12621) (list!4711 lt!421230))))))

(assert (=> d!355852 (not (isEmpty!7511 lt!421229))))

(assert (=> d!355852 (= (rulesProduceEachTokenIndividuallyList!665 Lexer!1861 lt!421229 (list!4711 lt!421230)) lt!421234)))

(declare-fun b!1259038 () Bool)

(declare-fun e!801663 () Bool)

(assert (=> b!1259038 (= e!801664 e!801663)))

(declare-fun res!557302 () Bool)

(assert (=> b!1259038 (=> (not res!557302) (not e!801663))))

(declare-fun rulesProduceIndividualToken!852 (LexerInterface!1863 List!12686 Token!3998) Bool)

(assert (=> b!1259038 (= res!557302 (rulesProduceIndividualToken!852 Lexer!1861 lt!421229 (h!18022 (list!4711 lt!421230))))))

(declare-fun b!1259039 () Bool)

(assert (=> b!1259039 (= e!801663 (rulesProduceEachTokenIndividuallyList!665 Lexer!1861 lt!421229 (t!116061 (list!4711 lt!421230))))))

(assert (= (and d!355852 (not res!557301)) b!1259038))

(assert (= (and b!1259038 res!557302) b!1259039))

(assert (=> d!355852 m!1417495))

(declare-fun m!1417503 () Bool)

(assert (=> d!355852 m!1417503))

(assert (=> d!355852 m!1417471))

(declare-fun m!1417505 () Bool)

(assert (=> b!1259038 m!1417505))

(declare-fun m!1417507 () Bool)

(assert (=> b!1259039 m!1417507))

(assert (=> b!1259028 d!355852))

(declare-fun d!355854 () Bool)

(declare-fun list!4712 (Conc!4149) List!12687)

(assert (=> d!355854 (= (list!4711 lt!421230) (list!4712 (c!209062 lt!421230)))))

(declare-fun bs!291280 () Bool)

(assert (= bs!291280 d!355854))

(declare-fun m!1417509 () Bool)

(assert (=> bs!291280 m!1417509))

(assert (=> b!1259028 d!355854))

(declare-fun d!355856 () Bool)

(assert (=> d!355856 (= (isEmpty!7511 lt!421229) ((_ is Nil!12620) lt!421229))))

(assert (=> start!111242 d!355856))

(declare-fun d!355858 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!352) Rule!4136)

(declare-fun integerLiteralRule!0 (JsonLexer!352) Rule!4136)

(declare-fun floatLiteralRule!0 (JsonLexer!352) Rule!4136)

(declare-fun trueRule!0 (JsonLexer!352) Rule!4136)

(declare-fun falseRule!0 (JsonLexer!352) Rule!4136)

(declare-fun nullRule!0 (JsonLexer!352) Rule!4136)

(declare-fun jsonstringRule!0 (JsonLexer!352) Rule!4136)

(declare-fun lBraceRule!0 (JsonLexer!352) Rule!4136)

(declare-fun rBraceRule!0 (JsonLexer!352) Rule!4136)

(declare-fun lBracketRule!0 (JsonLexer!352) Rule!4136)

(declare-fun colonRule!0 (JsonLexer!352) Rule!4136)

(declare-fun commaRule!0 (JsonLexer!352) Rule!4136)

(declare-fun eofRule!0 (JsonLexer!352) Rule!4136)

(assert (=> d!355858 (= (rules!109 JsonLexer!353) (Cons!12620 (whitespaceRule!0 JsonLexer!353) (Cons!12620 (integerLiteralRule!0 JsonLexer!353) (Cons!12620 (floatLiteralRule!0 JsonLexer!353) (Cons!12620 (trueRule!0 JsonLexer!353) (Cons!12620 (falseRule!0 JsonLexer!353) (Cons!12620 (nullRule!0 JsonLexer!353) (Cons!12620 (jsonstringRule!0 JsonLexer!353) (Cons!12620 (lBraceRule!0 JsonLexer!353) (Cons!12620 (rBraceRule!0 JsonLexer!353) (Cons!12620 (lBracketRule!0 JsonLexer!353) (Cons!12620 (rBracketRule!0 JsonLexer!353) (Cons!12620 (colonRule!0 JsonLexer!353) (Cons!12620 (commaRule!0 JsonLexer!353) (Cons!12620 (eofRule!0 JsonLexer!353) Nil!12620)))))))))))))))))

(declare-fun bs!291281 () Bool)

(assert (= bs!291281 d!355858))

(declare-fun m!1417511 () Bool)

(assert (=> bs!291281 m!1417511))

(declare-fun m!1417513 () Bool)

(assert (=> bs!291281 m!1417513))

(declare-fun m!1417515 () Bool)

(assert (=> bs!291281 m!1417515))

(assert (=> bs!291281 m!1417491))

(declare-fun m!1417517 () Bool)

(assert (=> bs!291281 m!1417517))

(declare-fun m!1417519 () Bool)

(assert (=> bs!291281 m!1417519))

(declare-fun m!1417521 () Bool)

(assert (=> bs!291281 m!1417521))

(declare-fun m!1417523 () Bool)

(assert (=> bs!291281 m!1417523))

(declare-fun m!1417525 () Bool)

(assert (=> bs!291281 m!1417525))

(declare-fun m!1417527 () Bool)

(assert (=> bs!291281 m!1417527))

(declare-fun m!1417529 () Bool)

(assert (=> bs!291281 m!1417529))

(declare-fun m!1417531 () Bool)

(assert (=> bs!291281 m!1417531))

(declare-fun m!1417533 () Bool)

(assert (=> bs!291281 m!1417533))

(declare-fun m!1417535 () Bool)

(assert (=> bs!291281 m!1417535))

(assert (=> start!111242 d!355858))

(declare-fun d!355860 () Bool)

(declare-fun res!557305 () Bool)

(declare-fun e!801676 () Bool)

(assert (=> d!355860 (=> (not res!557305) (not e!801676))))

(assert (=> d!355860 (= res!557305 ((_ is HashMap!1266) (cache!1647 cacheUp!343)))))

(assert (=> d!355860 (= (inv!17014 cacheUp!343) e!801676)))

(declare-fun b!1259055 () Bool)

(declare-fun validCacheMapUp!119 (MutableMap!1266) Bool)

(assert (=> b!1259055 (= e!801676 (validCacheMapUp!119 (cache!1647 cacheUp!343)))))

(assert (= (and d!355860 res!557305) b!1259055))

(declare-fun m!1417537 () Bool)

(assert (=> b!1259055 m!1417537))

(assert (=> start!111242 d!355860))

(declare-fun d!355862 () Bool)

(declare-fun res!557308 () Bool)

(declare-fun e!801679 () Bool)

(assert (=> d!355862 (=> (not res!557308) (not e!801679))))

(assert (=> d!355862 (= res!557308 ((_ is HashMap!1267) (cache!1648 cacheDown!356)))))

(assert (=> d!355862 (= (inv!17015 cacheDown!356) e!801679)))

(declare-fun b!1259058 () Bool)

(declare-fun validCacheMapDown!119 (MutableMap!1267) Bool)

(assert (=> b!1259058 (= e!801679 (validCacheMapDown!119 (cache!1648 cacheDown!356)))))

(assert (= (and d!355862 res!557308) b!1259058))

(declare-fun m!1417539 () Bool)

(assert (=> b!1259058 m!1417539))

(assert (=> start!111242 d!355862))

(declare-fun d!355864 () Bool)

(declare-fun e!801682 () Bool)

(assert (=> d!355864 e!801682))

(declare-fun res!557311 () Bool)

(assert (=> d!355864 (=> (not res!557311) (not e!801682))))

(declare-fun lt!421237 () BalanceConc!8236)

(declare-fun list!4713 (BalanceConc!8236) List!12685)

(assert (=> d!355864 (= res!557311 (= (list!4713 lt!421237) (Cons!12619 #x005D Nil!12619)))))

(declare-fun singleton!321 ((_ BitVec 16)) BalanceConc!8236)

(assert (=> d!355864 (= lt!421237 (singleton!321 #x005D))))

(assert (=> d!355864 (= (singletonSeq!761 #x005D) lt!421237)))

(declare-fun b!1259061 () Bool)

(declare-fun isBalanced!1211 (Conc!4148) Bool)

(assert (=> b!1259061 (= e!801682 (isBalanced!1211 (c!209061 lt!421237)))))

(assert (= (and d!355864 res!557311) b!1259061))

(declare-fun m!1417541 () Bool)

(assert (=> d!355864 m!1417541))

(declare-fun m!1417543 () Bool)

(assert (=> d!355864 m!1417543))

(declare-fun m!1417545 () Bool)

(assert (=> b!1259061 m!1417545))

(assert (=> b!1259023 d!355864))

(declare-fun d!355866 () Bool)

(assert (=> d!355866 true))

(assert (=> d!355866 true))

(assert (=> d!355866 true))

(assert (=> d!355866 true))

(declare-fun b!1259084 () Bool)

(declare-fun e!801697 () Bool)

(declare-fun x!245945 () BalanceConc!8236)

(declare-fun tp!371142 () Bool)

(declare-fun inv!17016 (Conc!4148) Bool)

(assert (=> b!1259084 (= e!801697 (and (inv!17016 (c!209061 x!245945)) tp!371142))))

(declare-fun inst!958 () Bool)

(declare-fun inv!17017 (BalanceConc!8236) Bool)

(declare-fun toCharacters!4 (KeywordValueInjection!154 TokenValue!2258) BalanceConc!8236)

(declare-fun toValue!11 (KeywordValueInjection!154 BalanceConc!8236) TokenValue!2258)

(assert (=> d!355866 (= inst!958 (=> (and (inv!17017 x!245945) e!801697) (= (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (list!4713 x!245945))))))

(assert (= d!355866 b!1259084))

(declare-fun m!1417547 () Bool)

(assert (=> b!1259084 m!1417547))

(declare-fun m!1417549 () Bool)

(assert (=> d!355866 m!1417549))

(declare-fun m!1417551 () Bool)

(assert (=> d!355866 m!1417551))

(declare-fun m!1417553 () Bool)

(assert (=> d!355866 m!1417553))

(declare-fun m!1417555 () Bool)

(assert (=> d!355866 m!1417555))

(declare-fun m!1417557 () Bool)

(assert (=> d!355866 m!1417557))

(assert (=> d!355866 m!1417551))

(assert (=> d!355866 m!1417553))

(declare-fun res!557320 () Bool)

(declare-fun e!801700 () Bool)

(assert (=> d!355866 (=> res!557320 e!801700)))

(declare-fun x!245946 () BalanceConc!8236)

(declare-fun x!245947 () BalanceConc!8236)

(assert (=> d!355866 (= res!557320 (not (= (list!4713 x!245946) (list!4713 x!245947))))))

(declare-fun e!801699 () Bool)

(declare-fun e!801698 () Bool)

(declare-fun inst!959 () Bool)

(assert (=> d!355866 (= inst!959 (=> (and (inv!17017 x!245946) e!801699 (inv!17017 x!245947) e!801698) e!801700))))

(declare-fun b!1259085 () Bool)

(assert (=> b!1259085 (= e!801700 (= (toValue!11 KeywordValueInjection!155 x!245946) (toValue!11 KeywordValueInjection!155 x!245947)))))

(declare-fun b!1259086 () Bool)

(declare-fun tp!371144 () Bool)

(assert (=> b!1259086 (= e!801699 (and (inv!17016 (c!209061 x!245946)) tp!371144))))

(declare-fun b!1259087 () Bool)

(declare-fun tp!371143 () Bool)

(assert (=> b!1259087 (= e!801698 (and (inv!17016 (c!209061 x!245947)) tp!371143))))

(assert (= (and d!355866 (not res!557320)) b!1259085))

(assert (= d!355866 b!1259086))

(assert (= d!355866 b!1259087))

(declare-fun m!1417559 () Bool)

(assert (=> d!355866 m!1417559))

(declare-fun m!1417561 () Bool)

(assert (=> d!355866 m!1417561))

(declare-fun m!1417563 () Bool)

(assert (=> d!355866 m!1417563))

(declare-fun m!1417565 () Bool)

(assert (=> d!355866 m!1417565))

(declare-fun m!1417567 () Bool)

(assert (=> b!1259085 m!1417567))

(declare-fun m!1417569 () Bool)

(assert (=> b!1259085 m!1417569))

(declare-fun m!1417571 () Bool)

(assert (=> b!1259086 m!1417571))

(declare-fun m!1417573 () Bool)

(assert (=> b!1259087 m!1417573))

(declare-fun bs!291282 () Bool)

(declare-fun neg-inst!959 () Bool)

(declare-fun s!183811 () Bool)

(assert (= bs!291282 (and neg-inst!959 s!183811)))

(assert (=> bs!291282 (=> true (= (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (list!4713 x!245945)))))

(assert (=> m!1417551 m!1417553))

(assert (=> m!1417551 m!1417555))

(assert (=> m!1417551 m!1417549))

(assert (=> m!1417551 s!183811))

(assert (=> m!1417549 s!183811))

(declare-fun bs!291283 () Bool)

(assert (= bs!291283 (and neg-inst!959 d!355866)))

(assert (=> bs!291283 (= true inst!958)))

(declare-fun bs!291284 () Bool)

(declare-fun neg-inst!958 () Bool)

(declare-fun s!183813 () Bool)

(assert (= bs!291284 (and neg-inst!958 s!183813)))

(declare-fun res!557321 () Bool)

(declare-fun e!801701 () Bool)

(assert (=> bs!291284 (=> res!557321 e!801701)))

(assert (=> bs!291284 (= res!557321 (not (= (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))))))))

(assert (=> bs!291284 (=> true e!801701)))

(declare-fun b!1259088 () Bool)

(assert (=> b!1259088 (= e!801701 (= (toValue!11 KeywordValueInjection!155 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (toValue!11 KeywordValueInjection!155 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945)))))))

(assert (= (and bs!291284 (not res!557321)) b!1259088))

(assert (=> m!1417555 s!183813))

(assert (=> m!1417555 s!183813))

(declare-fun bs!291285 () Bool)

(declare-fun s!183815 () Bool)

(assert (= bs!291285 (and neg-inst!958 s!183815)))

(declare-fun res!557322 () Bool)

(declare-fun e!801702 () Bool)

(assert (=> bs!291285 (=> res!557322 e!801702)))

(assert (=> bs!291285 (= res!557322 (not (= (list!4713 x!245946) (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))))))))

(assert (=> bs!291285 (=> true e!801702)))

(declare-fun b!1259089 () Bool)

(assert (=> b!1259089 (= e!801702 (= (toValue!11 KeywordValueInjection!155 x!245946) (toValue!11 KeywordValueInjection!155 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945)))))))

(assert (= (and bs!291285 (not res!557322)) b!1259089))

(declare-fun bs!291286 () Bool)

(assert (= bs!291286 (and m!1417567 m!1417555)))

(assert (=> bs!291286 m!1417559))

(assert (=> bs!291286 m!1417555))

(assert (=> bs!291286 s!183815))

(declare-fun bs!291287 () Bool)

(declare-fun s!183817 () Bool)

(assert (= bs!291287 (and neg-inst!958 s!183817)))

(declare-fun res!557323 () Bool)

(declare-fun e!801703 () Bool)

(assert (=> bs!291287 (=> res!557323 e!801703)))

(assert (=> bs!291287 (= res!557323 (not (= (list!4713 x!245946) (list!4713 x!245946))))))

(assert (=> bs!291287 (=> true e!801703)))

(declare-fun b!1259090 () Bool)

(assert (=> b!1259090 (= e!801703 (= (toValue!11 KeywordValueInjection!155 x!245946) (toValue!11 KeywordValueInjection!155 x!245946)))))

(assert (= (and bs!291287 (not res!557323)) b!1259090))

(assert (=> m!1417567 m!1417559))

(assert (=> m!1417567 m!1417559))

(assert (=> m!1417567 s!183817))

(declare-fun bs!291288 () Bool)

(declare-fun s!183819 () Bool)

(assert (= bs!291288 (and neg-inst!958 s!183819)))

(declare-fun res!557324 () Bool)

(declare-fun e!801704 () Bool)

(assert (=> bs!291288 (=> res!557324 e!801704)))

(assert (=> bs!291288 (= res!557324 (not (= (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (list!4713 x!245946))))))

(assert (=> bs!291288 (=> true e!801704)))

(declare-fun b!1259091 () Bool)

(assert (=> b!1259091 (= e!801704 (= (toValue!11 KeywordValueInjection!155 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (toValue!11 KeywordValueInjection!155 x!245946)))))

(assert (= (and bs!291288 (not res!557324)) b!1259091))

(assert (=> bs!291286 m!1417555))

(assert (=> bs!291286 m!1417559))

(assert (=> bs!291286 s!183819))

(assert (=> m!1417567 s!183817))

(declare-fun bs!291289 () Bool)

(declare-fun s!183821 () Bool)

(assert (= bs!291289 (and neg-inst!958 s!183821)))

(declare-fun res!557325 () Bool)

(declare-fun e!801705 () Bool)

(assert (=> bs!291289 (=> res!557325 e!801705)))

(assert (=> bs!291289 (= res!557325 (not (= (list!4713 x!245947) (list!4713 x!245946))))))

(assert (=> bs!291289 (=> true e!801705)))

(declare-fun b!1259092 () Bool)

(assert (=> b!1259092 (= e!801705 (= (toValue!11 KeywordValueInjection!155 x!245947) (toValue!11 KeywordValueInjection!155 x!245946)))))

(assert (= (and bs!291289 (not res!557325)) b!1259092))

(declare-fun bs!291290 () Bool)

(assert (= bs!291290 (and m!1417561 m!1417567)))

(assert (=> bs!291290 m!1417561))

(assert (=> bs!291290 m!1417559))

(assert (=> bs!291290 s!183821))

(declare-fun bs!291291 () Bool)

(declare-fun s!183823 () Bool)

(assert (= bs!291291 (and neg-inst!958 s!183823)))

(declare-fun res!557326 () Bool)

(declare-fun e!801706 () Bool)

(assert (=> bs!291291 (=> res!557326 e!801706)))

(assert (=> bs!291291 (= res!557326 (not (= (list!4713 x!245947) (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))))))))

(assert (=> bs!291291 (=> true e!801706)))

(declare-fun b!1259093 () Bool)

(assert (=> b!1259093 (= e!801706 (= (toValue!11 KeywordValueInjection!155 x!245947) (toValue!11 KeywordValueInjection!155 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945)))))))

(assert (= (and bs!291291 (not res!557326)) b!1259093))

(declare-fun bs!291292 () Bool)

(assert (= bs!291292 (and m!1417561 m!1417555)))

(assert (=> bs!291292 m!1417561))

(assert (=> bs!291292 m!1417555))

(assert (=> bs!291292 s!183823))

(declare-fun bs!291293 () Bool)

(declare-fun s!183825 () Bool)

(assert (= bs!291293 (and neg-inst!958 s!183825)))

(declare-fun res!557327 () Bool)

(declare-fun e!801707 () Bool)

(assert (=> bs!291293 (=> res!557327 e!801707)))

(assert (=> bs!291293 (= res!557327 (not (= (list!4713 x!245947) (list!4713 x!245947))))))

(assert (=> bs!291293 (=> true e!801707)))

(declare-fun b!1259094 () Bool)

(assert (=> b!1259094 (= e!801707 (= (toValue!11 KeywordValueInjection!155 x!245947) (toValue!11 KeywordValueInjection!155 x!245947)))))

(assert (= (and bs!291293 (not res!557327)) b!1259094))

(assert (=> m!1417561 s!183825))

(declare-fun bs!291294 () Bool)

(declare-fun s!183827 () Bool)

(assert (= bs!291294 (and neg-inst!958 s!183827)))

(declare-fun res!557328 () Bool)

(declare-fun e!801708 () Bool)

(assert (=> bs!291294 (=> res!557328 e!801708)))

(assert (=> bs!291294 (= res!557328 (not (= (list!4713 x!245946) (list!4713 x!245947))))))

(assert (=> bs!291294 (=> true e!801708)))

(declare-fun b!1259095 () Bool)

(assert (=> b!1259095 (= e!801708 (= (toValue!11 KeywordValueInjection!155 x!245946) (toValue!11 KeywordValueInjection!155 x!245947)))))

(assert (= (and bs!291294 (not res!557328)) b!1259095))

(assert (=> bs!291290 m!1417559))

(assert (=> bs!291290 m!1417561))

(assert (=> bs!291290 s!183827))

(declare-fun bs!291295 () Bool)

(declare-fun s!183829 () Bool)

(assert (= bs!291295 (and neg-inst!958 s!183829)))

(declare-fun res!557329 () Bool)

(declare-fun e!801709 () Bool)

(assert (=> bs!291295 (=> res!557329 e!801709)))

(assert (=> bs!291295 (= res!557329 (not (= (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (list!4713 x!245947))))))

(assert (=> bs!291295 (=> true e!801709)))

(declare-fun b!1259096 () Bool)

(assert (=> b!1259096 (= e!801709 (= (toValue!11 KeywordValueInjection!155 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (toValue!11 KeywordValueInjection!155 x!245947)))))

(assert (= (and bs!291295 (not res!557329)) b!1259096))

(assert (=> bs!291292 m!1417555))

(assert (=> bs!291292 m!1417561))

(assert (=> bs!291292 s!183829))

(assert (=> m!1417561 s!183825))

(declare-fun bs!291296 () Bool)

(assert (= bs!291296 (and m!1417559 m!1417567)))

(assert (=> bs!291296 s!183817))

(declare-fun bs!291297 () Bool)

(assert (= bs!291297 (and m!1417559 m!1417555)))

(assert (=> bs!291297 s!183815))

(declare-fun bs!291298 () Bool)

(assert (= bs!291298 (and m!1417559 m!1417561)))

(assert (=> bs!291298 s!183827))

(assert (=> m!1417559 s!183817))

(assert (=> bs!291296 s!183817))

(assert (=> bs!291297 s!183819))

(assert (=> bs!291298 s!183821))

(assert (=> m!1417559 s!183817))

(declare-fun bs!291299 () Bool)

(declare-fun s!183831 () Bool)

(assert (= bs!291299 (and neg-inst!958 s!183831)))

(declare-fun res!557330 () Bool)

(declare-fun e!801710 () Bool)

(assert (=> bs!291299 (=> res!557330 e!801710)))

(assert (=> bs!291299 (= res!557330 (not (= (list!4713 lt!421237) (list!4713 x!245946))))))

(assert (=> bs!291299 (=> true e!801710)))

(declare-fun b!1259097 () Bool)

(assert (=> b!1259097 (= e!801710 (= (toValue!11 KeywordValueInjection!155 lt!421237) (toValue!11 KeywordValueInjection!155 x!245946)))))

(assert (= (and bs!291299 (not res!557330)) b!1259097))

(declare-fun bs!291300 () Bool)

(assert (= bs!291300 (and m!1417541 m!1417567 m!1417559)))

(assert (=> bs!291300 m!1417541))

(assert (=> bs!291300 m!1417559))

(assert (=> bs!291300 s!183831))

(declare-fun bs!291301 () Bool)

(declare-fun s!183833 () Bool)

(assert (= bs!291301 (and neg-inst!958 s!183833)))

(declare-fun res!557331 () Bool)

(declare-fun e!801711 () Bool)

(assert (=> bs!291301 (=> res!557331 e!801711)))

(assert (=> bs!291301 (= res!557331 (not (= (list!4713 lt!421237) (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))))))))

(assert (=> bs!291301 (=> true e!801711)))

(declare-fun b!1259098 () Bool)

(assert (=> b!1259098 (= e!801711 (= (toValue!11 KeywordValueInjection!155 lt!421237) (toValue!11 KeywordValueInjection!155 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945)))))))

(assert (= (and bs!291301 (not res!557331)) b!1259098))

(declare-fun bs!291302 () Bool)

(assert (= bs!291302 (and m!1417541 m!1417555)))

(assert (=> bs!291302 m!1417541))

(assert (=> bs!291302 m!1417555))

(assert (=> bs!291302 s!183833))

(declare-fun bs!291303 () Bool)

(declare-fun s!183835 () Bool)

(assert (= bs!291303 (and neg-inst!958 s!183835)))

(declare-fun res!557332 () Bool)

(declare-fun e!801712 () Bool)

(assert (=> bs!291303 (=> res!557332 e!801712)))

(assert (=> bs!291303 (= res!557332 (not (= (list!4713 lt!421237) (list!4713 x!245947))))))

(assert (=> bs!291303 (=> true e!801712)))

(declare-fun b!1259099 () Bool)

(assert (=> b!1259099 (= e!801712 (= (toValue!11 KeywordValueInjection!155 lt!421237) (toValue!11 KeywordValueInjection!155 x!245947)))))

(assert (= (and bs!291303 (not res!557332)) b!1259099))

(declare-fun bs!291304 () Bool)

(assert (= bs!291304 (and m!1417541 m!1417561)))

(assert (=> bs!291304 m!1417541))

(assert (=> bs!291304 m!1417561))

(assert (=> bs!291304 s!183835))

(declare-fun bs!291305 () Bool)

(declare-fun s!183837 () Bool)

(assert (= bs!291305 (and neg-inst!958 s!183837)))

(declare-fun res!557333 () Bool)

(declare-fun e!801713 () Bool)

(assert (=> bs!291305 (=> res!557333 e!801713)))

(assert (=> bs!291305 (= res!557333 (not (= (list!4713 lt!421237) (list!4713 lt!421237))))))

(assert (=> bs!291305 (=> true e!801713)))

(declare-fun b!1259100 () Bool)

(assert (=> b!1259100 (= e!801713 (= (toValue!11 KeywordValueInjection!155 lt!421237) (toValue!11 KeywordValueInjection!155 lt!421237)))))

(assert (= (and bs!291305 (not res!557333)) b!1259100))

(assert (=> m!1417541 s!183837))

(declare-fun bs!291306 () Bool)

(declare-fun s!183839 () Bool)

(assert (= bs!291306 (and neg-inst!958 s!183839)))

(declare-fun res!557334 () Bool)

(declare-fun e!801714 () Bool)

(assert (=> bs!291306 (=> res!557334 e!801714)))

(assert (=> bs!291306 (= res!557334 (not (= (list!4713 x!245946) (list!4713 lt!421237))))))

(assert (=> bs!291306 (=> true e!801714)))

(declare-fun b!1259101 () Bool)

(assert (=> b!1259101 (= e!801714 (= (toValue!11 KeywordValueInjection!155 x!245946) (toValue!11 KeywordValueInjection!155 lt!421237)))))

(assert (= (and bs!291306 (not res!557334)) b!1259101))

(assert (=> bs!291300 m!1417559))

(assert (=> bs!291300 m!1417541))

(assert (=> bs!291300 s!183839))

(declare-fun bs!291307 () Bool)

(declare-fun s!183841 () Bool)

(assert (= bs!291307 (and neg-inst!958 s!183841)))

(declare-fun res!557335 () Bool)

(declare-fun e!801715 () Bool)

(assert (=> bs!291307 (=> res!557335 e!801715)))

(assert (=> bs!291307 (= res!557335 (not (= (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (list!4713 lt!421237))))))

(assert (=> bs!291307 (=> true e!801715)))

(declare-fun b!1259102 () Bool)

(assert (=> b!1259102 (= e!801715 (= (toValue!11 KeywordValueInjection!155 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (toValue!11 KeywordValueInjection!155 lt!421237)))))

(assert (= (and bs!291307 (not res!557335)) b!1259102))

(assert (=> bs!291302 m!1417555))

(assert (=> bs!291302 m!1417541))

(assert (=> bs!291302 s!183841))

(declare-fun bs!291308 () Bool)

(declare-fun s!183843 () Bool)

(assert (= bs!291308 (and neg-inst!958 s!183843)))

(declare-fun res!557336 () Bool)

(declare-fun e!801716 () Bool)

(assert (=> bs!291308 (=> res!557336 e!801716)))

(assert (=> bs!291308 (= res!557336 (not (= (list!4713 x!245947) (list!4713 lt!421237))))))

(assert (=> bs!291308 (=> true e!801716)))

(declare-fun b!1259103 () Bool)

(assert (=> b!1259103 (= e!801716 (= (toValue!11 KeywordValueInjection!155 x!245947) (toValue!11 KeywordValueInjection!155 lt!421237)))))

(assert (= (and bs!291308 (not res!557336)) b!1259103))

(assert (=> bs!291304 m!1417561))

(assert (=> bs!291304 m!1417541))

(assert (=> bs!291304 s!183843))

(assert (=> m!1417541 s!183837))

(declare-fun bs!291309 () Bool)

(declare-fun s!183845 () Bool)

(assert (= bs!291309 (and neg-inst!958 s!183845)))

(declare-fun res!557337 () Bool)

(declare-fun e!801717 () Bool)

(assert (=> bs!291309 (=> res!557337 e!801717)))

(assert (=> bs!291309 (= res!557337 (not (= (list!4713 x!245945) (list!4713 x!245945))))))

(assert (=> bs!291309 (=> true e!801717)))

(declare-fun b!1259104 () Bool)

(assert (=> b!1259104 (= e!801717 (= (toValue!11 KeywordValueInjection!155 x!245945) (toValue!11 KeywordValueInjection!155 x!245945)))))

(assert (= (and bs!291309 (not res!557337)) b!1259104))

(assert (=> m!1417551 m!1417549))

(assert (=> m!1417551 m!1417549))

(assert (=> m!1417551 s!183845))

(declare-fun bs!291310 () Bool)

(declare-fun s!183847 () Bool)

(assert (= bs!291310 (and neg-inst!958 s!183847)))

(declare-fun res!557338 () Bool)

(declare-fun e!801718 () Bool)

(assert (=> bs!291310 (=> res!557338 e!801718)))

(assert (=> bs!291310 (= res!557338 (not (= (list!4713 x!245945) (list!4713 x!245946))))))

(assert (=> bs!291310 (=> true e!801718)))

(declare-fun b!1259105 () Bool)

(assert (=> b!1259105 (= e!801718 (= (toValue!11 KeywordValueInjection!155 x!245945) (toValue!11 KeywordValueInjection!155 x!245946)))))

(assert (= (and bs!291310 (not res!557338)) b!1259105))

(declare-fun bs!291311 () Bool)

(assert (= bs!291311 (and m!1417551 m!1417567 m!1417559)))

(assert (=> bs!291311 m!1417549))

(assert (=> bs!291311 m!1417559))

(assert (=> bs!291311 s!183847))

(declare-fun bs!291312 () Bool)

(declare-fun s!183849 () Bool)

(assert (= bs!291312 (and neg-inst!958 s!183849)))

(declare-fun res!557339 () Bool)

(declare-fun e!801719 () Bool)

(assert (=> bs!291312 (=> res!557339 e!801719)))

(assert (=> bs!291312 (= res!557339 (not (= (list!4713 x!245945) (list!4713 x!245947))))))

(assert (=> bs!291312 (=> true e!801719)))

(declare-fun b!1259106 () Bool)

(assert (=> b!1259106 (= e!801719 (= (toValue!11 KeywordValueInjection!155 x!245945) (toValue!11 KeywordValueInjection!155 x!245947)))))

(assert (= (and bs!291312 (not res!557339)) b!1259106))

(declare-fun bs!291313 () Bool)

(assert (= bs!291313 (and m!1417551 m!1417561)))

(assert (=> bs!291313 m!1417549))

(assert (=> bs!291313 m!1417561))

(assert (=> bs!291313 s!183849))

(declare-fun bs!291314 () Bool)

(declare-fun s!183851 () Bool)

(assert (= bs!291314 (and neg-inst!958 s!183851)))

(declare-fun res!557340 () Bool)

(declare-fun e!801720 () Bool)

(assert (=> bs!291314 (=> res!557340 e!801720)))

(assert (=> bs!291314 (= res!557340 (not (= (list!4713 x!245945) (list!4713 lt!421237))))))

(assert (=> bs!291314 (=> true e!801720)))

(declare-fun b!1259107 () Bool)

(assert (=> b!1259107 (= e!801720 (= (toValue!11 KeywordValueInjection!155 x!245945) (toValue!11 KeywordValueInjection!155 lt!421237)))))

(assert (= (and bs!291314 (not res!557340)) b!1259107))

(declare-fun bs!291315 () Bool)

(assert (= bs!291315 (and m!1417551 m!1417541)))

(assert (=> bs!291315 m!1417549))

(assert (=> bs!291315 m!1417541))

(assert (=> bs!291315 s!183851))

(declare-fun bs!291316 () Bool)

(declare-fun s!183853 () Bool)

(assert (= bs!291316 (and neg-inst!958 s!183853)))

(declare-fun res!557341 () Bool)

(declare-fun e!801721 () Bool)

(assert (=> bs!291316 (=> res!557341 e!801721)))

(assert (=> bs!291316 (= res!557341 (not (= (list!4713 x!245945) (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))))))))

(assert (=> bs!291316 (=> true e!801721)))

(declare-fun b!1259108 () Bool)

(assert (=> b!1259108 (= e!801721 (= (toValue!11 KeywordValueInjection!155 x!245945) (toValue!11 KeywordValueInjection!155 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945)))))))

(assert (= (and bs!291316 (not res!557341)) b!1259108))

(declare-fun bs!291317 () Bool)

(assert (= bs!291317 (and m!1417551 m!1417555)))

(assert (=> bs!291317 m!1417549))

(assert (=> bs!291317 m!1417555))

(assert (=> bs!291317 s!183853))

(declare-fun bs!291318 () Bool)

(declare-fun s!183855 () Bool)

(assert (= bs!291318 (and neg-inst!958 s!183855)))

(declare-fun res!557342 () Bool)

(declare-fun e!801722 () Bool)

(assert (=> bs!291318 (=> res!557342 e!801722)))

(assert (=> bs!291318 (= res!557342 (not (= (list!4713 x!245946) (list!4713 x!245945))))))

(assert (=> bs!291318 (=> true e!801722)))

(declare-fun b!1259109 () Bool)

(assert (=> b!1259109 (= e!801722 (= (toValue!11 KeywordValueInjection!155 x!245946) (toValue!11 KeywordValueInjection!155 x!245945)))))

(assert (= (and bs!291318 (not res!557342)) b!1259109))

(assert (=> bs!291311 m!1417559))

(assert (=> bs!291311 m!1417549))

(assert (=> bs!291311 s!183855))

(assert (=> m!1417551 s!183845))

(declare-fun bs!291319 () Bool)

(declare-fun s!183857 () Bool)

(assert (= bs!291319 (and neg-inst!958 s!183857)))

(declare-fun res!557343 () Bool)

(declare-fun e!801723 () Bool)

(assert (=> bs!291319 (=> res!557343 e!801723)))

(assert (=> bs!291319 (= res!557343 (not (= (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (list!4713 x!245945))))))

(assert (=> bs!291319 (=> true e!801723)))

(declare-fun b!1259110 () Bool)

(assert (=> b!1259110 (= e!801723 (= (toValue!11 KeywordValueInjection!155 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (toValue!11 KeywordValueInjection!155 x!245945)))))

(assert (= (and bs!291319 (not res!557343)) b!1259110))

(assert (=> bs!291317 m!1417555))

(assert (=> bs!291317 m!1417549))

(assert (=> bs!291317 s!183857))

(declare-fun bs!291320 () Bool)

(declare-fun s!183859 () Bool)

(assert (= bs!291320 (and neg-inst!958 s!183859)))

(declare-fun res!557344 () Bool)

(declare-fun e!801724 () Bool)

(assert (=> bs!291320 (=> res!557344 e!801724)))

(assert (=> bs!291320 (= res!557344 (not (= (list!4713 lt!421237) (list!4713 x!245945))))))

(assert (=> bs!291320 (=> true e!801724)))

(declare-fun b!1259111 () Bool)

(assert (=> b!1259111 (= e!801724 (= (toValue!11 KeywordValueInjection!155 lt!421237) (toValue!11 KeywordValueInjection!155 x!245945)))))

(assert (= (and bs!291320 (not res!557344)) b!1259111))

(assert (=> bs!291315 m!1417541))

(assert (=> bs!291315 m!1417549))

(assert (=> bs!291315 s!183859))

(declare-fun bs!291321 () Bool)

(declare-fun s!183861 () Bool)

(assert (= bs!291321 (and neg-inst!958 s!183861)))

(declare-fun res!557345 () Bool)

(declare-fun e!801725 () Bool)

(assert (=> bs!291321 (=> res!557345 e!801725)))

(assert (=> bs!291321 (= res!557345 (not (= (list!4713 x!245947) (list!4713 x!245945))))))

(assert (=> bs!291321 (=> true e!801725)))

(declare-fun b!1259112 () Bool)

(assert (=> b!1259112 (= e!801725 (= (toValue!11 KeywordValueInjection!155 x!245947) (toValue!11 KeywordValueInjection!155 x!245945)))))

(assert (= (and bs!291321 (not res!557345)) b!1259112))

(assert (=> bs!291313 m!1417561))

(assert (=> bs!291313 m!1417549))

(assert (=> bs!291313 s!183861))

(assert (=> m!1417569 s!183825))

(declare-fun bs!291322 () Bool)

(assert (= bs!291322 (and m!1417569 m!1417555)))

(assert (=> bs!291322 s!183823))

(declare-fun bs!291323 () Bool)

(assert (= bs!291323 (and m!1417569 m!1417561)))

(assert (=> bs!291323 s!183825))

(declare-fun bs!291324 () Bool)

(assert (= bs!291324 (and m!1417569 m!1417567 m!1417559)))

(assert (=> bs!291324 s!183821))

(declare-fun bs!291325 () Bool)

(assert (= bs!291325 (and m!1417569 m!1417541)))

(assert (=> bs!291325 s!183843))

(declare-fun bs!291326 () Bool)

(assert (= bs!291326 (and m!1417569 m!1417551)))

(assert (=> bs!291326 s!183861))

(assert (=> m!1417569 s!183825))

(assert (=> bs!291322 s!183829))

(assert (=> bs!291325 s!183835))

(assert (=> bs!291323 s!183825))

(assert (=> bs!291324 s!183827))

(assert (=> bs!291326 s!183849))

(declare-fun bs!291327 () Bool)

(assert (= bs!291327 (and m!1417549 m!1417561 m!1417569)))

(assert (=> bs!291327 s!183849))

(declare-fun bs!291328 () Bool)

(assert (= bs!291328 (and m!1417549 m!1417567 m!1417559)))

(assert (=> bs!291328 s!183847))

(assert (=> m!1417549 s!183845))

(declare-fun bs!291329 () Bool)

(assert (= bs!291329 (and m!1417549 m!1417555)))

(assert (=> bs!291329 s!183853))

(declare-fun bs!291330 () Bool)

(assert (= bs!291330 (and m!1417549 m!1417541)))

(assert (=> bs!291330 s!183851))

(declare-fun bs!291331 () Bool)

(assert (= bs!291331 (and m!1417549 m!1417551)))

(assert (=> bs!291331 s!183845))

(assert (=> bs!291328 s!183855))

(assert (=> bs!291327 s!183861))

(assert (=> bs!291330 s!183859))

(assert (=> m!1417549 s!183845))

(assert (=> bs!291329 s!183857))

(assert (=> bs!291331 s!183845))

(declare-fun bs!291332 () Bool)

(assert (= bs!291332 (and neg-inst!958 d!355866)))

(assert (=> bs!291332 (= true inst!959)))

(declare-datatypes ((Unit!18889 0))(
  ( (Unit!18890) )
))
(declare-fun lt!421248 () Unit!18889)

(declare-fun Unit!18891 () Unit!18889)

(assert (=> d!355866 (= lt!421248 Unit!18891)))

(declare-fun lambda!49892 () Int)

(declare-fun lambda!49893 () Int)

(declare-fun lambda!49894 () Int)

(declare-fun equivClasses!775 (Int Int) Bool)

(declare-fun Forall2!386 (Int) Bool)

(assert (=> d!355866 (= (equivClasses!775 lambda!49892 lambda!49893) (Forall2!386 lambda!49894))))

(declare-fun lt!421249 () Unit!18889)

(declare-fun Unit!18892 () Unit!18889)

(assert (=> d!355866 (= lt!421249 Unit!18892)))

(assert (=> d!355866 (= (Forall2!386 lambda!49894) inst!959)))

(declare-fun lt!421247 () Unit!18889)

(declare-fun Unit!18893 () Unit!18889)

(assert (=> d!355866 (= lt!421247 Unit!18893)))

(declare-fun lambda!49891 () Int)

(declare-fun semiInverseModEq!816 (Int Int) Bool)

(declare-fun Forall!484 (Int) Bool)

(assert (=> d!355866 (= (semiInverseModEq!816 lambda!49892 lambda!49893) (Forall!484 lambda!49891))))

(declare-fun lt!421246 () Unit!18889)

(declare-fun Unit!18894 () Unit!18889)

(assert (=> d!355866 (= lt!421246 Unit!18894)))

(assert (=> d!355866 (= (Forall!484 lambda!49891) inst!958)))

(assert (=> d!355866 (= (injection!9 KeywordValueInjection!155) (TokenValueInjection!4177 lambda!49893 lambda!49892))))

(assert (= neg-inst!959 inst!958))

(assert (= neg-inst!958 inst!959))

(declare-fun m!1417575 () Bool)

(assert (=> d!355866 m!1417575))

(assert (=> d!355866 m!1417575))

(declare-fun m!1417577 () Bool)

(assert (=> d!355866 m!1417577))

(declare-fun m!1417579 () Bool)

(assert (=> d!355866 m!1417579))

(declare-fun m!1417581 () Bool)

(assert (=> d!355866 m!1417581))

(assert (=> d!355866 m!1417579))

(assert (=> b!1259023 d!355866))

(declare-fun d!355868 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!352) Regex!3481)

(assert (=> d!355868 (= (rBracketRule!0 JsonLexer!353) (Rule!4137 (rBracketRe!0 JsonLexer!353) (String!15525 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!155)))))

(declare-fun bs!291333 () Bool)

(assert (= bs!291333 d!355868))

(declare-fun m!1417583 () Bool)

(assert (=> bs!291333 m!1417583))

(assert (=> bs!291333 m!1417481))

(assert (=> b!1259023 d!355868))

(declare-fun d!355870 () Bool)

(declare-fun dynLambda!5513 (Int BalanceConc!8236) TokenValue!2258)

(assert (=> d!355870 (= (apply!2707 (injection!9 KeywordValueInjection!155) (singletonSeq!761 #x005D)) (dynLambda!5513 (toValue!3331 (injection!9 KeywordValueInjection!155)) (singletonSeq!761 #x005D)))))

(declare-fun b_lambda!36503 () Bool)

(assert (=> (not b_lambda!36503) (not d!355870)))

(declare-fun bs!291334 () Bool)

(assert (= bs!291334 d!355870))

(assert (=> bs!291334 m!1417485))

(declare-fun m!1417585 () Bool)

(assert (=> bs!291334 m!1417585))

(assert (=> b!1259023 d!355870))

(declare-fun bs!291335 () Bool)

(declare-fun d!355872 () Bool)

(assert (= bs!291335 (and d!355872 d!355852)))

(declare-fun lambda!49897 () Int)

(assert (=> bs!291335 (= lambda!49897 lambda!49870)))

(declare-fun b!1259121 () Bool)

(declare-fun e!801731 () Bool)

(assert (=> b!1259121 (= e!801731 true)))

(declare-fun b!1259120 () Bool)

(declare-fun e!801730 () Bool)

(assert (=> b!1259120 (= e!801730 e!801731)))

(declare-fun b!1259119 () Bool)

(declare-fun e!801729 () Bool)

(assert (=> b!1259119 (= e!801729 e!801730)))

(assert (=> d!355872 e!801729))

(assert (= b!1259120 b!1259121))

(assert (= b!1259119 b!1259120))

(assert (= (and d!355872 ((_ is Cons!12620) lt!421229)) b!1259119))

(assert (=> b!1259121 (< (dynLambda!5510 order!7685 (toValue!3331 (transformation!2168 (h!18021 lt!421229)))) (dynLambda!5511 order!7687 lambda!49897))))

(assert (=> b!1259121 (< (dynLambda!5512 order!7689 (toChars!3190 (transformation!2168 (h!18021 lt!421229)))) (dynLambda!5511 order!7687 lambda!49897))))

(assert (=> d!355872 true))

(declare-fun lt!421256 () tuple3!1134)

(declare-fun forall!3204 (BalanceConc!8238 Int) Bool)

(assert (=> d!355872 (= (_1!7124 lt!421256) (forall!3204 lt!421230 lambda!49897))))

(declare-fun e!801728 () tuple3!1134)

(assert (=> d!355872 (= lt!421256 e!801728)))

(declare-fun c!209072 () Bool)

(declare-fun isEmpty!7512 (BalanceConc!8238) Bool)

(assert (=> d!355872 (= c!209072 (isEmpty!7512 lt!421230))))

(assert (=> d!355872 (not (isEmpty!7511 lt!421229))))

(assert (=> d!355872 (= (rulesProduceEachTokenIndividuallyMem!31 Lexer!1861 lt!421229 lt!421230 cacheUp!343 cacheDown!356) lt!421256)))

(declare-fun b!1259117 () Bool)

(assert (=> b!1259117 (= e!801728 (tuple3!1135 true cacheUp!343 cacheDown!356))))

(declare-fun b!1259118 () Bool)

(declare-fun lt!421258 () tuple3!1134)

(declare-fun lt!421257 () tuple3!1134)

(assert (=> b!1259118 (= e!801728 (tuple3!1135 (and (_1!7124 lt!421258) (_1!7124 lt!421257)) (_2!7124 lt!421257) (_3!858 lt!421257)))))

(declare-fun rulesProduceIndividualTokenMem!16 (LexerInterface!1863 List!12686 Token!3998 CacheUp!736 CacheDown!738) tuple3!1134)

(declare-fun head!2175 (BalanceConc!8238) Token!3998)

(assert (=> b!1259118 (= lt!421258 (rulesProduceIndividualTokenMem!16 Lexer!1861 lt!421229 (head!2175 lt!421230) cacheUp!343 cacheDown!356))))

(declare-fun tail!1807 (BalanceConc!8238) BalanceConc!8238)

(assert (=> b!1259118 (= lt!421257 (rulesProduceEachTokenIndividuallyMem!31 Lexer!1861 lt!421229 (tail!1807 lt!421230) (_2!7124 lt!421258) (_3!858 lt!421258)))))

(assert (= (and d!355872 c!209072) b!1259117))

(assert (= (and d!355872 (not c!209072)) b!1259118))

(declare-fun m!1417587 () Bool)

(assert (=> d!355872 m!1417587))

(declare-fun m!1417589 () Bool)

(assert (=> d!355872 m!1417589))

(assert (=> d!355872 m!1417471))

(declare-fun m!1417591 () Bool)

(assert (=> b!1259118 m!1417591))

(assert (=> b!1259118 m!1417591))

(declare-fun m!1417593 () Bool)

(assert (=> b!1259118 m!1417593))

(declare-fun m!1417595 () Bool)

(assert (=> b!1259118 m!1417595))

(assert (=> b!1259118 m!1417595))

(declare-fun m!1417597 () Bool)

(assert (=> b!1259118 m!1417597))

(assert (=> b!1259023 d!355872))

(declare-fun d!355874 () Bool)

(declare-fun e!801734 () Bool)

(assert (=> d!355874 e!801734))

(declare-fun res!557348 () Bool)

(assert (=> d!355874 (=> (not res!557348) (not e!801734))))

(declare-fun lt!421261 () BalanceConc!8238)

(assert (=> d!355874 (= res!557348 (= (list!4711 lt!421261) (Cons!12621 (Token!3999 (apply!2707 (injection!9 KeywordValueInjection!155) (singletonSeq!761 #x005D)) (rBracketRule!0 JsonLexer!353) 1 (Cons!12619 #x005D Nil!12619)) Nil!12621)))))

(declare-fun singleton!322 (Token!3998) BalanceConc!8238)

(assert (=> d!355874 (= lt!421261 (singleton!322 (Token!3999 (apply!2707 (injection!9 KeywordValueInjection!155) (singletonSeq!761 #x005D)) (rBracketRule!0 JsonLexer!353) 1 (Cons!12619 #x005D Nil!12619))))))

(assert (=> d!355874 (= (singletonSeq!760 (Token!3999 (apply!2707 (injection!9 KeywordValueInjection!155) (singletonSeq!761 #x005D)) (rBracketRule!0 JsonLexer!353) 1 (Cons!12619 #x005D Nil!12619))) lt!421261)))

(declare-fun b!1259124 () Bool)

(declare-fun isBalanced!1212 (Conc!4149) Bool)

(assert (=> b!1259124 (= e!801734 (isBalanced!1212 (c!209062 lt!421261)))))

(assert (= (and d!355874 res!557348) b!1259124))

(declare-fun m!1417599 () Bool)

(assert (=> d!355874 m!1417599))

(declare-fun m!1417601 () Bool)

(assert (=> d!355874 m!1417601))

(declare-fun m!1417603 () Bool)

(assert (=> b!1259124 m!1417603))

(assert (=> b!1259023 d!355874))

(declare-fun d!355876 () Bool)

(declare-fun res!557351 () Bool)

(declare-fun e!801737 () Bool)

(assert (=> d!355876 (=> (not res!557351) (not e!801737))))

(declare-fun rulesValid!787 (LexerInterface!1863 List!12686) Bool)

(assert (=> d!355876 (= res!557351 (rulesValid!787 Lexer!1861 lt!421229))))

(assert (=> d!355876 (= (rulesInvariant!1736 Lexer!1861 lt!421229) e!801737)))

(declare-fun b!1259127 () Bool)

(declare-datatypes ((List!12691 0))(
  ( (Nil!12625) (Cons!12625 (h!18026 String!15524) (t!116087 List!12691)) )
))
(declare-fun noDuplicateTag!787 (LexerInterface!1863 List!12686 List!12691) Bool)

(assert (=> b!1259127 (= e!801737 (noDuplicateTag!787 Lexer!1861 lt!421229 Nil!12625))))

(assert (= (and d!355876 res!557351) b!1259127))

(declare-fun m!1417605 () Bool)

(assert (=> d!355876 m!1417605))

(declare-fun m!1417607 () Bool)

(assert (=> b!1259127 m!1417607))

(assert (=> b!1259017 d!355876))

(declare-fun d!355878 () Bool)

(assert (=> d!355878 (= (array_inv!1522 (_keys!1617 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356))))))) (bvsge (size!9997 (_keys!1617 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356))))))) #b00000000000000000000000000000000))))

(assert (=> b!1259021 d!355878))

(declare-fun d!355880 () Bool)

(assert (=> d!355880 (= (array_inv!1523 (_values!1602 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356))))))) (bvsge (size!9998 (_values!1602 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356))))))) #b00000000000000000000000000000000))))

(assert (=> b!1259021 d!355880))

(declare-fun bs!291336 () Bool)

(declare-fun d!355882 () Bool)

(assert (= bs!291336 (and d!355882 d!355852)))

(declare-fun lambda!49902 () Int)

(assert (=> bs!291336 (= lambda!49902 lambda!49870)))

(declare-fun bs!291337 () Bool)

(assert (= bs!291337 (and d!355882 d!355872)))

(assert (=> bs!291337 (= lambda!49902 lambda!49897)))

(declare-fun b!1259133 () Bool)

(declare-fun e!801743 () Bool)

(assert (=> b!1259133 (= e!801743 true)))

(declare-fun b!1259132 () Bool)

(declare-fun e!801742 () Bool)

(assert (=> b!1259132 (= e!801742 e!801743)))

(declare-fun b!1259131 () Bool)

(declare-fun e!801741 () Bool)

(assert (=> b!1259131 (= e!801741 e!801742)))

(assert (=> d!355882 e!801741))

(assert (= b!1259132 b!1259133))

(assert (= b!1259131 b!1259132))

(assert (= (and d!355882 ((_ is Cons!12620) lt!421229)) b!1259131))

(assert (=> b!1259133 (< (dynLambda!5510 order!7685 (toValue!3331 (transformation!2168 (h!18021 lt!421229)))) (dynLambda!5511 order!7687 lambda!49902))))

(assert (=> b!1259133 (< (dynLambda!5512 order!7689 (toChars!3190 (transformation!2168 (h!18021 lt!421229)))) (dynLambda!5511 order!7687 lambda!49902))))

(assert (=> d!355882 true))

(declare-fun e!801740 () Bool)

(assert (=> d!355882 e!801740))

(declare-fun res!557354 () Bool)

(assert (=> d!355882 (=> (not res!557354) (not e!801740))))

(declare-fun lt!421264 () Bool)

(assert (=> d!355882 (= res!557354 (= lt!421264 (forall!3203 (list!4711 lt!421230) lambda!49902)))))

(assert (=> d!355882 (= lt!421264 (forall!3204 lt!421230 lambda!49902))))

(assert (=> d!355882 (not (isEmpty!7511 lt!421229))))

(assert (=> d!355882 (= (rulesProduceEachTokenIndividually!777 Lexer!1861 lt!421229 lt!421230) lt!421264)))

(declare-fun b!1259130 () Bool)

(assert (=> b!1259130 (= e!801740 (= lt!421264 (rulesProduceEachTokenIndividuallyList!665 Lexer!1861 lt!421229 (list!4711 lt!421230))))))

(assert (= (and d!355882 res!557354) b!1259130))

(assert (=> d!355882 m!1417495))

(assert (=> d!355882 m!1417495))

(declare-fun m!1417609 () Bool)

(assert (=> d!355882 m!1417609))

(declare-fun m!1417611 () Bool)

(assert (=> d!355882 m!1417611))

(assert (=> d!355882 m!1417471))

(assert (=> b!1259130 m!1417495))

(assert (=> b!1259130 m!1417495))

(assert (=> b!1259130 m!1417497))

(assert (=> b!1259016 d!355882))

(declare-fun d!355884 () Bool)

(assert (=> d!355884 (= (array_inv!1522 (_keys!1616 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343))))))) (bvsge (size!9997 (_keys!1616 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343))))))) #b00000000000000000000000000000000))))

(assert (=> b!1259024 d!355884))

(declare-fun d!355886 () Bool)

(assert (=> d!355886 (= (array_inv!1524 (_values!1601 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343))))))) (bvsge (size!9996 (_values!1601 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343))))))) #b00000000000000000000000000000000))))

(assert (=> b!1259024 d!355886))

(declare-fun mapDefault!6349 () List!12690)

(declare-fun e!801757 () Bool)

(declare-fun b!1259140 () Bool)

(declare-fun setRes!8027 () Bool)

(declare-fun tp!371157 () Bool)

(declare-fun inv!17018 (Context!1086) Bool)

(assert (=> b!1259140 (= e!801757 (and (inv!17018 (_2!7122 (_1!7123 (h!18025 mapDefault!6349)))) setRes!8027 tp!371157))))

(declare-fun condSetEmpty!8027 () Bool)

(assert (=> b!1259140 (= condSetEmpty!8027 (= (_2!7123 (h!18025 mapDefault!6349)) ((as const (Array Context!1086 Bool)) false)))))

(declare-fun setIsEmpty!8026 () Bool)

(declare-fun setRes!8026 () Bool)

(assert (=> setIsEmpty!8026 setRes!8026))

(declare-fun setNonEmpty!8026 () Bool)

(declare-fun tp!371156 () Bool)

(declare-fun setElem!8027 () Context!1086)

(assert (=> setNonEmpty!8026 (= setRes!8027 (and tp!371156 (inv!17018 setElem!8027)))))

(declare-fun setRest!8027 () (InoxSet Context!1086))

(assert (=> setNonEmpty!8026 (= (_2!7123 (h!18025 mapDefault!6349)) ((_ map or) (store ((as const (Array Context!1086 Bool)) false) setElem!8027 true) setRest!8027))))

(declare-fun mapNonEmpty!6349 () Bool)

(declare-fun mapRes!6349 () Bool)

(declare-fun tp!371155 () Bool)

(declare-fun e!801760 () Bool)

(assert (=> mapNonEmpty!6349 (= mapRes!6349 (and tp!371155 e!801760))))

(declare-fun mapRest!6349 () (Array (_ BitVec 32) List!12690))

(declare-fun mapKey!6349 () (_ BitVec 32))

(declare-fun mapValue!6349 () List!12690)

(assert (=> mapNonEmpty!6349 (= mapRest!6345 (store mapRest!6349 mapKey!6349 mapValue!6349))))

(declare-fun setIsEmpty!8027 () Bool)

(assert (=> setIsEmpty!8027 setRes!8027))

(declare-fun setNonEmpty!8027 () Bool)

(declare-fun tp!371158 () Bool)

(declare-fun setElem!8026 () Context!1086)

(assert (=> setNonEmpty!8027 (= setRes!8026 (and tp!371158 (inv!17018 setElem!8026)))))

(declare-fun setRest!8026 () (InoxSet Context!1086))

(assert (=> setNonEmpty!8027 (= (_2!7123 (h!18025 mapValue!6349)) ((_ map or) (store ((as const (Array Context!1086 Bool)) false) setElem!8026 true) setRest!8026))))

(declare-fun condMapEmpty!6349 () Bool)

(assert (=> mapNonEmpty!6346 (= condMapEmpty!6349 (= mapRest!6345 ((as const (Array (_ BitVec 32) List!12690)) mapDefault!6349)))))

(assert (=> mapNonEmpty!6346 (= tp!371125 (and e!801757 mapRes!6349))))

(declare-fun tp!371159 () Bool)

(declare-fun b!1259141 () Bool)

(assert (=> b!1259141 (= e!801760 (and (inv!17018 (_2!7122 (_1!7123 (h!18025 mapValue!6349)))) setRes!8026 tp!371159))))

(declare-fun condSetEmpty!8026 () Bool)

(assert (=> b!1259141 (= condSetEmpty!8026 (= (_2!7123 (h!18025 mapValue!6349)) ((as const (Array Context!1086 Bool)) false)))))

(declare-fun mapIsEmpty!6349 () Bool)

(assert (=> mapIsEmpty!6349 mapRes!6349))

(assert (= (and mapNonEmpty!6346 condMapEmpty!6349) mapIsEmpty!6349))

(assert (= (and mapNonEmpty!6346 (not condMapEmpty!6349)) mapNonEmpty!6349))

(assert (= (and b!1259141 condSetEmpty!8026) setIsEmpty!8026))

(assert (= (and b!1259141 (not condSetEmpty!8026)) setNonEmpty!8027))

(assert (= (and mapNonEmpty!6349 ((_ is Cons!12624) mapValue!6349)) b!1259141))

(assert (= (and b!1259140 condSetEmpty!8027) setIsEmpty!8027))

(assert (= (and b!1259140 (not condSetEmpty!8027)) setNonEmpty!8026))

(assert (= (and mapNonEmpty!6346 ((_ is Cons!12624) mapDefault!6349)) b!1259140))

(declare-fun m!1417613 () Bool)

(assert (=> b!1259141 m!1417613))

(declare-fun m!1417615 () Bool)

(assert (=> setNonEmpty!8027 m!1417615))

(declare-fun m!1417617 () Bool)

(assert (=> setNonEmpty!8026 m!1417617))

(declare-fun m!1417619 () Bool)

(assert (=> b!1259140 m!1417619))

(declare-fun m!1417621 () Bool)

(assert (=> mapNonEmpty!6349 m!1417621))

(declare-fun e!801770 () Bool)

(declare-fun b!1259146 () Bool)

(declare-fun setRes!8030 () Bool)

(declare-fun tp!371165 () Bool)

(assert (=> b!1259146 (= e!801770 (and (inv!17018 (_2!7122 (_1!7123 (h!18025 mapValue!6345)))) setRes!8030 tp!371165))))

(declare-fun condSetEmpty!8030 () Bool)

(assert (=> b!1259146 (= condSetEmpty!8030 (= (_2!7123 (h!18025 mapValue!6345)) ((as const (Array Context!1086 Bool)) false)))))

(declare-fun setIsEmpty!8030 () Bool)

(assert (=> setIsEmpty!8030 setRes!8030))

(declare-fun setNonEmpty!8030 () Bool)

(declare-fun tp!371164 () Bool)

(declare-fun setElem!8030 () Context!1086)

(assert (=> setNonEmpty!8030 (= setRes!8030 (and tp!371164 (inv!17018 setElem!8030)))))

(declare-fun setRest!8030 () (InoxSet Context!1086))

(assert (=> setNonEmpty!8030 (= (_2!7123 (h!18025 mapValue!6345)) ((_ map or) (store ((as const (Array Context!1086 Bool)) false) setElem!8030 true) setRest!8030))))

(assert (=> mapNonEmpty!6346 (= tp!371134 e!801770)))

(assert (= (and b!1259146 condSetEmpty!8030) setIsEmpty!8030))

(assert (= (and b!1259146 (not condSetEmpty!8030)) setNonEmpty!8030))

(assert (= (and mapNonEmpty!6346 ((_ is Cons!12624) mapValue!6345)) b!1259146))

(declare-fun m!1417623 () Bool)

(assert (=> b!1259146 m!1417623))

(declare-fun m!1417625 () Bool)

(assert (=> setNonEmpty!8030 m!1417625))

(declare-fun condMapEmpty!6352 () Bool)

(declare-fun mapDefault!6352 () List!12689)

(assert (=> mapNonEmpty!6345 (= condMapEmpty!6352 (= mapRest!6346 ((as const (Array (_ BitVec 32) List!12689)) mapDefault!6352)))))

(declare-fun e!801784 () Bool)

(declare-fun mapRes!6352 () Bool)

(assert (=> mapNonEmpty!6345 (= tp!371126 (and e!801784 mapRes!6352))))

(declare-fun setNonEmpty!8035 () Bool)

(declare-fun setRes!8035 () Bool)

(declare-fun tp!371178 () Bool)

(declare-fun setElem!8035 () Context!1086)

(assert (=> setNonEmpty!8035 (= setRes!8035 (and tp!371178 (inv!17018 setElem!8035)))))

(declare-fun mapValue!6352 () List!12689)

(declare-fun setRest!8035 () (InoxSet Context!1086))

(assert (=> setNonEmpty!8035 (= (_2!7121 (h!18024 mapValue!6352)) ((_ map or) (store ((as const (Array Context!1086 Bool)) false) setElem!8035 true) setRest!8035))))

(declare-fun setNonEmpty!8036 () Bool)

(declare-fun setRes!8036 () Bool)

(declare-fun tp!371180 () Bool)

(declare-fun setElem!8036 () Context!1086)

(assert (=> setNonEmpty!8036 (= setRes!8036 (and tp!371180 (inv!17018 setElem!8036)))))

(declare-fun setRest!8036 () (InoxSet Context!1086))

(assert (=> setNonEmpty!8036 (= (_2!7121 (h!18024 mapDefault!6352)) ((_ map or) (store ((as const (Array Context!1086 Bool)) false) setElem!8036 true) setRest!8036))))

(declare-fun mapNonEmpty!6352 () Bool)

(declare-fun tp!371177 () Bool)

(declare-fun e!801785 () Bool)

(assert (=> mapNonEmpty!6352 (= mapRes!6352 (and tp!371177 e!801785))))

(declare-fun mapRest!6352 () (Array (_ BitVec 32) List!12689))

(declare-fun mapKey!6352 () (_ BitVec 32))

(assert (=> mapNonEmpty!6352 (= mapRest!6346 (store mapRest!6352 mapKey!6352 mapValue!6352))))

(declare-fun setIsEmpty!8035 () Bool)

(assert (=> setIsEmpty!8035 setRes!8036))

(declare-fun b!1259153 () Bool)

(declare-fun tp!371179 () Bool)

(assert (=> b!1259153 (= e!801784 (and (inv!17018 (_1!7120 (_1!7121 (h!18024 mapDefault!6352)))) setRes!8036 tp!371179))))

(declare-fun condSetEmpty!8035 () Bool)

(assert (=> b!1259153 (= condSetEmpty!8035 (= (_2!7121 (h!18024 mapDefault!6352)) ((as const (Array Context!1086 Bool)) false)))))

(declare-fun tp!371176 () Bool)

(declare-fun b!1259154 () Bool)

(assert (=> b!1259154 (= e!801785 (and (inv!17018 (_1!7120 (_1!7121 (h!18024 mapValue!6352)))) setRes!8035 tp!371176))))

(declare-fun condSetEmpty!8036 () Bool)

(assert (=> b!1259154 (= condSetEmpty!8036 (= (_2!7121 (h!18024 mapValue!6352)) ((as const (Array Context!1086 Bool)) false)))))

(declare-fun mapIsEmpty!6352 () Bool)

(assert (=> mapIsEmpty!6352 mapRes!6352))

(declare-fun setIsEmpty!8036 () Bool)

(assert (=> setIsEmpty!8036 setRes!8035))

(assert (= (and mapNonEmpty!6345 condMapEmpty!6352) mapIsEmpty!6352))

(assert (= (and mapNonEmpty!6345 (not condMapEmpty!6352)) mapNonEmpty!6352))

(assert (= (and b!1259154 condSetEmpty!8036) setIsEmpty!8036))

(assert (= (and b!1259154 (not condSetEmpty!8036)) setNonEmpty!8035))

(assert (= (and mapNonEmpty!6352 ((_ is Cons!12623) mapValue!6352)) b!1259154))

(assert (= (and b!1259153 condSetEmpty!8035) setIsEmpty!8035))

(assert (= (and b!1259153 (not condSetEmpty!8035)) setNonEmpty!8036))

(assert (= (and mapNonEmpty!6345 ((_ is Cons!12623) mapDefault!6352)) b!1259153))

(declare-fun m!1417627 () Bool)

(assert (=> setNonEmpty!8035 m!1417627))

(declare-fun m!1417629 () Bool)

(assert (=> b!1259153 m!1417629))

(declare-fun m!1417631 () Bool)

(assert (=> mapNonEmpty!6352 m!1417631))

(declare-fun m!1417633 () Bool)

(assert (=> b!1259154 m!1417633))

(declare-fun m!1417635 () Bool)

(assert (=> setNonEmpty!8036 m!1417635))

(declare-fun tp!371185 () Bool)

(declare-fun b!1259159 () Bool)

(declare-fun e!801795 () Bool)

(declare-fun setRes!8039 () Bool)

(assert (=> b!1259159 (= e!801795 (and (inv!17018 (_1!7120 (_1!7121 (h!18024 mapValue!6346)))) setRes!8039 tp!371185))))

(declare-fun condSetEmpty!8039 () Bool)

(assert (=> b!1259159 (= condSetEmpty!8039 (= (_2!7121 (h!18024 mapValue!6346)) ((as const (Array Context!1086 Bool)) false)))))

(declare-fun setIsEmpty!8039 () Bool)

(assert (=> setIsEmpty!8039 setRes!8039))

(declare-fun setNonEmpty!8039 () Bool)

(declare-fun tp!371186 () Bool)

(declare-fun setElem!8039 () Context!1086)

(assert (=> setNonEmpty!8039 (= setRes!8039 (and tp!371186 (inv!17018 setElem!8039)))))

(declare-fun setRest!8039 () (InoxSet Context!1086))

(assert (=> setNonEmpty!8039 (= (_2!7121 (h!18024 mapValue!6346)) ((_ map or) (store ((as const (Array Context!1086 Bool)) false) setElem!8039 true) setRest!8039))))

(assert (=> mapNonEmpty!6345 (= tp!371123 e!801795)))

(assert (= (and b!1259159 condSetEmpty!8039) setIsEmpty!8039))

(assert (= (and b!1259159 (not condSetEmpty!8039)) setNonEmpty!8039))

(assert (= (and mapNonEmpty!6345 ((_ is Cons!12623) mapValue!6346)) b!1259159))

(declare-fun m!1417637 () Bool)

(assert (=> b!1259159 m!1417637))

(declare-fun m!1417639 () Bool)

(assert (=> setNonEmpty!8039 m!1417639))

(declare-fun tp!371188 () Bool)

(declare-fun setRes!8040 () Bool)

(declare-fun e!801800 () Bool)

(declare-fun b!1259160 () Bool)

(assert (=> b!1259160 (= e!801800 (and (inv!17018 (_2!7122 (_1!7123 (h!18025 (zeroValue!1580 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356)))))))))) setRes!8040 tp!371188))))

(declare-fun condSetEmpty!8040 () Bool)

(assert (=> b!1259160 (= condSetEmpty!8040 (= (_2!7123 (h!18025 (zeroValue!1580 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356)))))))) ((as const (Array Context!1086 Bool)) false)))))

(declare-fun setIsEmpty!8040 () Bool)

(assert (=> setIsEmpty!8040 setRes!8040))

(declare-fun setNonEmpty!8040 () Bool)

(declare-fun tp!371187 () Bool)

(declare-fun setElem!8040 () Context!1086)

(assert (=> setNonEmpty!8040 (= setRes!8040 (and tp!371187 (inv!17018 setElem!8040)))))

(declare-fun setRest!8040 () (InoxSet Context!1086))

(assert (=> setNonEmpty!8040 (= (_2!7123 (h!18025 (zeroValue!1580 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356)))))))) ((_ map or) (store ((as const (Array Context!1086 Bool)) false) setElem!8040 true) setRest!8040))))

(assert (=> b!1259021 (= tp!371129 e!801800)))

(assert (= (and b!1259160 condSetEmpty!8040) setIsEmpty!8040))

(assert (= (and b!1259160 (not condSetEmpty!8040)) setNonEmpty!8040))

(assert (= (and b!1259021 ((_ is Cons!12624) (zeroValue!1580 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356)))))))) b!1259160))

(declare-fun m!1417641 () Bool)

(assert (=> b!1259160 m!1417641))

(declare-fun m!1417643 () Bool)

(assert (=> setNonEmpty!8040 m!1417643))

(declare-fun tp!371190 () Bool)

(declare-fun setRes!8041 () Bool)

(declare-fun b!1259161 () Bool)

(declare-fun e!801803 () Bool)

(assert (=> b!1259161 (= e!801803 (and (inv!17018 (_2!7122 (_1!7123 (h!18025 (minValue!1580 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356)))))))))) setRes!8041 tp!371190))))

(declare-fun condSetEmpty!8041 () Bool)

(assert (=> b!1259161 (= condSetEmpty!8041 (= (_2!7123 (h!18025 (minValue!1580 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356)))))))) ((as const (Array Context!1086 Bool)) false)))))

(declare-fun setIsEmpty!8041 () Bool)

(assert (=> setIsEmpty!8041 setRes!8041))

(declare-fun setNonEmpty!8041 () Bool)

(declare-fun tp!371189 () Bool)

(declare-fun setElem!8041 () Context!1086)

(assert (=> setNonEmpty!8041 (= setRes!8041 (and tp!371189 (inv!17018 setElem!8041)))))

(declare-fun setRest!8041 () (InoxSet Context!1086))

(assert (=> setNonEmpty!8041 (= (_2!7123 (h!18025 (minValue!1580 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356)))))))) ((_ map or) (store ((as const (Array Context!1086 Bool)) false) setElem!8041 true) setRest!8041))))

(assert (=> b!1259021 (= tp!371122 e!801803)))

(assert (= (and b!1259161 condSetEmpty!8041) setIsEmpty!8041))

(assert (= (and b!1259161 (not condSetEmpty!8041)) setNonEmpty!8041))

(assert (= (and b!1259021 ((_ is Cons!12624) (minValue!1580 (v!20867 (underlying!2853 (v!20868 (underlying!2854 (cache!1648 cacheDown!356)))))))) b!1259161))

(declare-fun m!1417645 () Bool)

(assert (=> b!1259161 m!1417645))

(declare-fun m!1417647 () Bool)

(assert (=> setNonEmpty!8041 m!1417647))

(declare-fun b!1259162 () Bool)

(declare-fun e!801804 () Bool)

(declare-fun setRes!8042 () Bool)

(declare-fun tp!371191 () Bool)

(assert (=> b!1259162 (= e!801804 (and (inv!17018 (_1!7120 (_1!7121 (h!18024 mapDefault!6345)))) setRes!8042 tp!371191))))

(declare-fun condSetEmpty!8042 () Bool)

(assert (=> b!1259162 (= condSetEmpty!8042 (= (_2!7121 (h!18024 mapDefault!6345)) ((as const (Array Context!1086 Bool)) false)))))

(declare-fun setIsEmpty!8042 () Bool)

(assert (=> setIsEmpty!8042 setRes!8042))

(declare-fun setNonEmpty!8042 () Bool)

(declare-fun tp!371192 () Bool)

(declare-fun setElem!8042 () Context!1086)

(assert (=> setNonEmpty!8042 (= setRes!8042 (and tp!371192 (inv!17018 setElem!8042)))))

(declare-fun setRest!8042 () (InoxSet Context!1086))

(assert (=> setNonEmpty!8042 (= (_2!7121 (h!18024 mapDefault!6345)) ((_ map or) (store ((as const (Array Context!1086 Bool)) false) setElem!8042 true) setRest!8042))))

(assert (=> b!1259033 (= tp!371124 e!801804)))

(assert (= (and b!1259162 condSetEmpty!8042) setIsEmpty!8042))

(assert (= (and b!1259162 (not condSetEmpty!8042)) setNonEmpty!8042))

(assert (= (and b!1259033 ((_ is Cons!12623) mapDefault!6345)) b!1259162))

(declare-fun m!1417649 () Bool)

(assert (=> b!1259162 m!1417649))

(declare-fun m!1417651 () Bool)

(assert (=> setNonEmpty!8042 m!1417651))

(declare-fun b!1259163 () Bool)

(declare-fun tp!371193 () Bool)

(declare-fun e!801807 () Bool)

(declare-fun setRes!8043 () Bool)

(assert (=> b!1259163 (= e!801807 (and (inv!17018 (_1!7120 (_1!7121 (h!18024 (zeroValue!1579 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343)))))))))) setRes!8043 tp!371193))))

(declare-fun condSetEmpty!8043 () Bool)

(assert (=> b!1259163 (= condSetEmpty!8043 (= (_2!7121 (h!18024 (zeroValue!1579 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343)))))))) ((as const (Array Context!1086 Bool)) false)))))

(declare-fun setIsEmpty!8043 () Bool)

(assert (=> setIsEmpty!8043 setRes!8043))

(declare-fun setNonEmpty!8043 () Bool)

(declare-fun tp!371194 () Bool)

(declare-fun setElem!8043 () Context!1086)

(assert (=> setNonEmpty!8043 (= setRes!8043 (and tp!371194 (inv!17018 setElem!8043)))))

(declare-fun setRest!8043 () (InoxSet Context!1086))

(assert (=> setNonEmpty!8043 (= (_2!7121 (h!18024 (zeroValue!1579 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343)))))))) ((_ map or) (store ((as const (Array Context!1086 Bool)) false) setElem!8043 true) setRest!8043))))

(assert (=> b!1259024 (= tp!371127 e!801807)))

(assert (= (and b!1259163 condSetEmpty!8043) setIsEmpty!8043))

(assert (= (and b!1259163 (not condSetEmpty!8043)) setNonEmpty!8043))

(assert (= (and b!1259024 ((_ is Cons!12623) (zeroValue!1579 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343)))))))) b!1259163))

(declare-fun m!1417653 () Bool)

(assert (=> b!1259163 m!1417653))

(declare-fun m!1417655 () Bool)

(assert (=> setNonEmpty!8043 m!1417655))

(declare-fun tp!371195 () Bool)

(declare-fun b!1259164 () Bool)

(declare-fun e!801810 () Bool)

(declare-fun setRes!8044 () Bool)

(assert (=> b!1259164 (= e!801810 (and (inv!17018 (_1!7120 (_1!7121 (h!18024 (minValue!1579 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343)))))))))) setRes!8044 tp!371195))))

(declare-fun condSetEmpty!8044 () Bool)

(assert (=> b!1259164 (= condSetEmpty!8044 (= (_2!7121 (h!18024 (minValue!1579 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343)))))))) ((as const (Array Context!1086 Bool)) false)))))

(declare-fun setIsEmpty!8044 () Bool)

(assert (=> setIsEmpty!8044 setRes!8044))

(declare-fun setNonEmpty!8044 () Bool)

(declare-fun tp!371196 () Bool)

(declare-fun setElem!8044 () Context!1086)

(assert (=> setNonEmpty!8044 (= setRes!8044 (and tp!371196 (inv!17018 setElem!8044)))))

(declare-fun setRest!8044 () (InoxSet Context!1086))

(assert (=> setNonEmpty!8044 (= (_2!7121 (h!18024 (minValue!1579 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343)))))))) ((_ map or) (store ((as const (Array Context!1086 Bool)) false) setElem!8044 true) setRest!8044))))

(assert (=> b!1259024 (= tp!371130 e!801810)))

(assert (= (and b!1259164 condSetEmpty!8044) setIsEmpty!8044))

(assert (= (and b!1259164 (not condSetEmpty!8044)) setNonEmpty!8044))

(assert (= (and b!1259024 ((_ is Cons!12623) (minValue!1579 (v!20865 (underlying!2851 (v!20866 (underlying!2852 (cache!1647 cacheUp!343)))))))) b!1259164))

(declare-fun m!1417657 () Bool)

(assert (=> b!1259164 m!1417657))

(declare-fun m!1417659 () Bool)

(assert (=> setNonEmpty!8044 m!1417659))

(declare-fun setRes!8045 () Bool)

(declare-fun tp!371198 () Bool)

(declare-fun b!1259165 () Bool)

(declare-fun e!801815 () Bool)

(assert (=> b!1259165 (= e!801815 (and (inv!17018 (_2!7122 (_1!7123 (h!18025 mapDefault!6346)))) setRes!8045 tp!371198))))

(declare-fun condSetEmpty!8045 () Bool)

(assert (=> b!1259165 (= condSetEmpty!8045 (= (_2!7123 (h!18025 mapDefault!6346)) ((as const (Array Context!1086 Bool)) false)))))

(declare-fun setIsEmpty!8045 () Bool)

(assert (=> setIsEmpty!8045 setRes!8045))

(declare-fun setNonEmpty!8045 () Bool)

(declare-fun tp!371197 () Bool)

(declare-fun setElem!8045 () Context!1086)

(assert (=> setNonEmpty!8045 (= setRes!8045 (and tp!371197 (inv!17018 setElem!8045)))))

(declare-fun setRest!8045 () (InoxSet Context!1086))

(assert (=> setNonEmpty!8045 (= (_2!7123 (h!18025 mapDefault!6346)) ((_ map or) (store ((as const (Array Context!1086 Bool)) false) setElem!8045 true) setRest!8045))))

(assert (=> b!1259032 (= tp!371133 e!801815)))

(assert (= (and b!1259165 condSetEmpty!8045) setIsEmpty!8045))

(assert (= (and b!1259165 (not condSetEmpty!8045)) setNonEmpty!8045))

(assert (= (and b!1259032 ((_ is Cons!12624) mapDefault!6346)) b!1259165))

(declare-fun m!1417661 () Bool)

(assert (=> b!1259165 m!1417661))

(declare-fun m!1417663 () Bool)

(assert (=> setNonEmpty!8045 m!1417663))

(declare-fun b_lambda!36505 () Bool)

(assert (= b_lambda!36503 (or d!355866 b_lambda!36505)))

(declare-fun bs!291338 () Bool)

(declare-fun d!355888 () Bool)

(assert (= bs!291338 (and d!355888 d!355866)))

(assert (=> bs!291338 (= (dynLambda!5513 lambda!49893 (singletonSeq!761 #x005D)) (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D)))))

(assert (=> bs!291338 m!1417485))

(declare-fun bs!291339 () Bool)

(declare-fun s!183863 () Bool)

(assert (= bs!291339 (and neg-inst!958 s!183863)))

(declare-fun res!557355 () Bool)

(declare-fun e!801816 () Bool)

(assert (=> bs!291339 (=> res!557355 e!801816)))

(assert (=> bs!291339 (= res!557355 (not (= (list!4713 (singletonSeq!761 #x005D)) (list!4713 x!245945))))))

(assert (=> bs!291339 (=> true e!801816)))

(declare-fun b!1259166 () Bool)

(assert (=> b!1259166 (= e!801816 (= (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D)) (toValue!11 KeywordValueInjection!155 x!245945)))))

(assert (= (and bs!291339 (not res!557355)) b!1259166))

(declare-fun bs!291340 () Bool)

(declare-fun s!183865 () Bool)

(assert (= bs!291340 (and neg-inst!958 s!183865)))

(declare-fun res!557356 () Bool)

(declare-fun e!801817 () Bool)

(assert (=> bs!291340 (=> res!557356 e!801817)))

(assert (=> bs!291340 (= res!557356 (not (= (list!4713 (singletonSeq!761 #x005D)) (list!4713 lt!421237))))))

(assert (=> bs!291340 (=> true e!801817)))

(declare-fun b!1259167 () Bool)

(assert (=> b!1259167 (= e!801817 (= (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D)) (toValue!11 KeywordValueInjection!155 lt!421237)))))

(assert (= (and bs!291340 (not res!557356)) b!1259167))

(declare-fun bs!291341 () Bool)

(declare-fun m!1417667 () Bool)

(assert (= bs!291341 (and m!1417667 m!1417541)))

(assert (=> bs!291341 m!1417667))

(assert (=> bs!291341 m!1417541))

(assert (=> bs!291341 s!183865))

(declare-fun bs!291342 () Bool)

(assert (= bs!291342 (and m!1417667 m!1417551 m!1417549)))

(assert (=> bs!291342 s!183863))

(declare-fun bs!291343 () Bool)

(declare-fun s!183867 () Bool)

(assert (= bs!291343 (and neg-inst!958 s!183867)))

(declare-fun res!557357 () Bool)

(declare-fun e!801818 () Bool)

(assert (=> bs!291343 (=> res!557357 e!801818)))

(assert (=> bs!291343 (= res!557357 (not (= (list!4713 (singletonSeq!761 #x005D)) (list!4713 (singletonSeq!761 #x005D)))))))

(assert (=> bs!291343 (=> true e!801818)))

(declare-fun b!1259168 () Bool)

(assert (=> b!1259168 (= e!801818 (= (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D)) (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D))))))

(assert (= (and bs!291343 (not res!557357)) b!1259168))

(assert (=> m!1417667 s!183867))

(declare-fun bs!291344 () Bool)

(declare-fun s!183869 () Bool)

(assert (= bs!291344 (and neg-inst!958 s!183869)))

(declare-fun res!557358 () Bool)

(declare-fun e!801819 () Bool)

(assert (=> bs!291344 (=> res!557358 e!801819)))

(assert (=> bs!291344 (= res!557358 (not (= (list!4713 (singletonSeq!761 #x005D)) (list!4713 x!245946))))))

(assert (=> bs!291344 (=> true e!801819)))

(declare-fun b!1259169 () Bool)

(assert (=> b!1259169 (= e!801819 (= (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D)) (toValue!11 KeywordValueInjection!155 x!245946)))))

(assert (= (and bs!291344 (not res!557358)) b!1259169))

(declare-fun bs!291345 () Bool)

(assert (= bs!291345 (and m!1417667 m!1417567 m!1417559)))

(assert (=> bs!291345 m!1417667))

(assert (=> bs!291345 m!1417559))

(assert (=> bs!291345 s!183869))

(declare-fun bs!291346 () Bool)

(declare-fun s!183871 () Bool)

(assert (= bs!291346 (and neg-inst!958 s!183871)))

(declare-fun res!557359 () Bool)

(declare-fun e!801820 () Bool)

(assert (=> bs!291346 (=> res!557359 e!801820)))

(assert (=> bs!291346 (= res!557359 (not (= (list!4713 (singletonSeq!761 #x005D)) (list!4713 x!245947))))))

(assert (=> bs!291346 (=> true e!801820)))

(declare-fun b!1259170 () Bool)

(assert (=> b!1259170 (= e!801820 (= (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D)) (toValue!11 KeywordValueInjection!155 x!245947)))))

(assert (= (and bs!291346 (not res!557359)) b!1259170))

(declare-fun bs!291347 () Bool)

(assert (= bs!291347 (and m!1417667 m!1417561 m!1417569)))

(assert (=> bs!291347 m!1417667))

(assert (=> bs!291347 m!1417561))

(assert (=> bs!291347 s!183871))

(declare-fun bs!291348 () Bool)

(declare-fun s!183873 () Bool)

(assert (= bs!291348 (and neg-inst!958 s!183873)))

(declare-fun res!557360 () Bool)

(declare-fun e!801821 () Bool)

(assert (=> bs!291348 (=> res!557360 e!801821)))

(assert (=> bs!291348 (= res!557360 (not (= (list!4713 (singletonSeq!761 #x005D)) (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))))))))

(assert (=> bs!291348 (=> true e!801821)))

(declare-fun b!1259171 () Bool)

(assert (=> b!1259171 (= e!801821 (= (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D)) (toValue!11 KeywordValueInjection!155 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945)))))))

(assert (= (and bs!291348 (not res!557360)) b!1259171))

(declare-fun bs!291349 () Bool)

(assert (= bs!291349 (and m!1417667 m!1417555)))

(assert (=> bs!291349 m!1417667))

(assert (=> bs!291349 m!1417555))

(assert (=> bs!291349 s!183873))

(declare-fun bs!291350 () Bool)

(declare-fun m!1417665 () Bool)

(assert (= bs!291350 (and m!1417667 m!1417665)))

(assert (=> bs!291350 s!183867))

(declare-fun bs!291351 () Bool)

(declare-fun s!183875 () Bool)

(assert (= bs!291351 (and neg-inst!958 s!183875)))

(declare-fun res!557361 () Bool)

(declare-fun e!801822 () Bool)

(assert (=> bs!291351 (=> res!557361 e!801822)))

(assert (=> bs!291351 (= res!557361 (not (= (list!4713 x!245947) (list!4713 (singletonSeq!761 #x005D)))))))

(assert (=> bs!291351 (=> true e!801822)))

(declare-fun b!1259172 () Bool)

(assert (=> b!1259172 (= e!801822 (= (toValue!11 KeywordValueInjection!155 x!245947) (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D))))))

(assert (= (and bs!291351 (not res!557361)) b!1259172))

(assert (=> bs!291347 m!1417561))

(assert (=> bs!291347 m!1417667))

(assert (=> bs!291347 s!183875))

(assert (=> m!1417667 s!183867))

(declare-fun bs!291352 () Bool)

(declare-fun s!183877 () Bool)

(assert (= bs!291352 (and neg-inst!958 s!183877)))

(declare-fun res!557362 () Bool)

(declare-fun e!801823 () Bool)

(assert (=> bs!291352 (=> res!557362 e!801823)))

(assert (=> bs!291352 (= res!557362 (not (= (list!4713 x!245946) (list!4713 (singletonSeq!761 #x005D)))))))

(assert (=> bs!291352 (=> true e!801823)))

(declare-fun b!1259173 () Bool)

(assert (=> b!1259173 (= e!801823 (= (toValue!11 KeywordValueInjection!155 x!245946) (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D))))))

(assert (= (and bs!291352 (not res!557362)) b!1259173))

(assert (=> bs!291345 m!1417559))

(assert (=> bs!291345 m!1417667))

(assert (=> bs!291345 s!183877))

(declare-fun bs!291353 () Bool)

(declare-fun s!183879 () Bool)

(assert (= bs!291353 (and neg-inst!958 s!183879)))

(declare-fun res!557363 () Bool)

(declare-fun e!801824 () Bool)

(assert (=> bs!291353 (=> res!557363 e!801824)))

(assert (=> bs!291353 (= res!557363 (not (= (list!4713 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (list!4713 (singletonSeq!761 #x005D)))))))

(assert (=> bs!291353 (=> true e!801824)))

(declare-fun b!1259174 () Bool)

(assert (=> b!1259174 (= e!801824 (= (toValue!11 KeywordValueInjection!155 (toCharacters!4 KeywordValueInjection!155 (toValue!11 KeywordValueInjection!155 x!245945))) (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D))))))

(assert (= (and bs!291353 (not res!557363)) b!1259174))

(assert (=> bs!291349 m!1417555))

(assert (=> bs!291349 m!1417667))

(assert (=> bs!291349 s!183879))

(declare-fun bs!291354 () Bool)

(declare-fun s!183881 () Bool)

(assert (= bs!291354 (and neg-inst!958 s!183881)))

(declare-fun res!557364 () Bool)

(declare-fun e!801825 () Bool)

(assert (=> bs!291354 (=> res!557364 e!801825)))

(assert (=> bs!291354 (= res!557364 (not (= (list!4713 x!245945) (list!4713 (singletonSeq!761 #x005D)))))))

(assert (=> bs!291354 (=> true e!801825)))

(declare-fun b!1259175 () Bool)

(assert (=> b!1259175 (= e!801825 (= (toValue!11 KeywordValueInjection!155 x!245945) (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D))))))

(assert (= (and bs!291354 (not res!557364)) b!1259175))

(assert (=> bs!291342 m!1417549))

(assert (=> bs!291342 m!1417667))

(assert (=> bs!291342 s!183881))

(declare-fun bs!291355 () Bool)

(declare-fun s!183883 () Bool)

(assert (= bs!291355 (and neg-inst!958 s!183883)))

(declare-fun res!557365 () Bool)

(declare-fun e!801826 () Bool)

(assert (=> bs!291355 (=> res!557365 e!801826)))

(assert (=> bs!291355 (= res!557365 (not (= (list!4713 lt!421237) (list!4713 (singletonSeq!761 #x005D)))))))

(assert (=> bs!291355 (=> true e!801826)))

(declare-fun b!1259176 () Bool)

(assert (=> b!1259176 (= e!801826 (= (toValue!11 KeywordValueInjection!155 lt!421237) (toValue!11 KeywordValueInjection!155 (singletonSeq!761 #x005D))))))

(assert (= (and bs!291355 (not res!557365)) b!1259176))

(assert (=> bs!291341 m!1417541))

(assert (=> bs!291341 m!1417667))

(assert (=> bs!291341 s!183883))

(assert (=> bs!291350 s!183867))

(declare-fun bs!291356 () Bool)

(assert (= bs!291356 (and m!1417665 m!1417551 m!1417549)))

(assert (=> bs!291356 m!1417667))

(assert (=> bs!291356 m!1417549))

(assert (=> bs!291356 s!183863))

(declare-fun bs!291357 () Bool)

(assert (= bs!291357 m!1417665))

(assert (=> bs!291357 s!183867))

(declare-fun bs!291358 () Bool)

(assert (= bs!291358 (and m!1417665 m!1417561 m!1417569)))

(assert (=> bs!291358 s!183871))

(declare-fun bs!291359 () Bool)

(assert (= bs!291359 (and m!1417665 m!1417541)))

(assert (=> bs!291359 s!183865))

(declare-fun bs!291360 () Bool)

(assert (= bs!291360 (and m!1417665 m!1417567 m!1417559)))

(assert (=> bs!291360 s!183869))

(declare-fun bs!291361 () Bool)

(assert (= bs!291361 (and m!1417665 m!1417555)))

(assert (=> bs!291361 s!183873))

(assert (=> bs!291361 s!183879))

(assert (=> bs!291356 s!183881))

(assert (=> bs!291359 s!183883))

(assert (=> bs!291360 s!183877))

(assert (=> bs!291357 s!183867))

(assert (=> bs!291358 s!183875))

(assert (=> bs!291338 m!1417665))

(assert (=> d!355870 d!355888))

(check-sat (not b!1259124) (not b!1259084) (not bs!291321) (not bs!291310) (not b!1259153) (not d!355858) (not b!1259146) (not d!355866) (not bs!291340) (not b!1259141) (not b_next!30503) (not bs!291305) (not b!1259174) (not d!355874) (not b!1259161) (not bs!291299) (not d!355864) (not setNonEmpty!8030) (not b!1259089) (not b!1259106) (not b!1259109) (not bs!291354) (not b!1259092) (not mapNonEmpty!6352) (not bs!291295) (not bs!291338) (not d!355872) (not bs!291316) (not setNonEmpty!8040) (not d!355868) (not bs!291318) (not b!1259101) (not bs!291301) (not bs!291355) (not setNonEmpty!8043) (not bs!291314) (not b!1259112) (not bs!291339) (not b!1259170) (not b!1259171) (not setNonEmpty!8036) (not bs!291282) (not b!1259097) (not b!1259169) (not b!1259111) (not b!1259164) (not b!1259058) b_and!84949 (not b_next!30509) (not bs!291303) (not b!1259104) (not bs!291312) (not b!1259166) (not b!1259131) (not mapNonEmpty!6349) (not d!355876) b_and!84947 (not bs!291320) (not setNonEmpty!8042) (not bs!291285) (not bs!291344) (not bs!291289) (not bs!291346) (not bs!291348) (not b!1259165) (not b_next!30505) (not b!1259175) (not setNonEmpty!8041) (not b!1259173) b_and!84943 (not b!1259055) (not b!1259061) (not b!1259118) (not b!1259100) (not setNonEmpty!8026) (not b!1259119) (not bs!291307) (not b!1259102) (not bs!291353) (not b!1259038) (not bs!291306) (not b!1259085) (not b!1259099) (not bs!291287) (not b!1259093) (not d!355882) (not bs!291319) (not d!355854) (not setNonEmpty!8039) (not bs!291352) (not b!1259096) (not setNonEmpty!8035) (not b!1259090) (not b!1259110) (not setNonEmpty!8027) (not bs!291288) (not b!1259095) (not b!1259172) (not bs!291343) (not b!1259098) (not b!1259108) (not bs!291309) (not b!1259088) (not b!1259091) (not b!1259103) (not b_next!30507) (not b!1259048) (not b!1259167) (not b!1259162) (not b!1259160) (not b!1259163) (not b!1259159) (not b!1259039) (not b!1259094) b_and!84945 (not bs!291294) (not setNonEmpty!8044) (not bs!291284) (not b!1259107) (not b!1259176) (not bs!291351) (not d!355852) (not b!1259154) (not b!1259087) (not b!1259140) (not bs!291291) (not b!1259086) (not bs!291308) (not b!1259168) (not setNonEmpty!8045) (not b!1259127) (not b_lambda!36505) (not b!1259105) (not b!1259130) (not bs!291293))
(check-sat (not b_next!30503) b_and!84947 (not b_next!30505) b_and!84943 (not b_next!30507) b_and!84945 b_and!84949 (not b_next!30509))
