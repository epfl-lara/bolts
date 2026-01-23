; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111790 () Bool)

(assert start!111790)

(declare-fun b!1281717 () Bool)

(declare-fun b_free!29831 () Bool)

(declare-fun b_next!30535 () Bool)

(assert (=> b!1281717 (= b_free!29831 (not b_next!30535))))

(declare-fun tp!371766 () Bool)

(declare-fun b_and!84975 () Bool)

(assert (=> b!1281717 (= tp!371766 b_and!84975)))

(declare-fun b!1281705 () Bool)

(declare-fun b_free!29833 () Bool)

(declare-fun b_next!30537 () Bool)

(assert (=> b!1281705 (= b_free!29833 (not b_next!30537))))

(declare-fun tp!371774 () Bool)

(declare-fun b_and!84977 () Bool)

(assert (=> b!1281705 (= tp!371774 b_and!84977)))

(declare-fun b!1281706 () Bool)

(declare-fun b_free!29835 () Bool)

(declare-fun b_next!30539 () Bool)

(assert (=> b!1281706 (= b_free!29835 (not b_next!30539))))

(declare-fun tp!371772 () Bool)

(declare-fun b_and!84979 () Bool)

(assert (=> b!1281706 (= tp!371772 b_and!84979)))

(declare-fun b!1281714 () Bool)

(declare-fun b_free!29837 () Bool)

(declare-fun b_next!30541 () Bool)

(assert (=> b!1281714 (= b_free!29837 (not b_next!30541))))

(declare-fun tp!371765 () Bool)

(declare-fun b_and!84981 () Bool)

(assert (=> b!1281714 (= tp!371765 b_and!84981)))

(declare-fun b!1281703 () Bool)

(declare-fun e!821472 () Bool)

(declare-fun e!821462 () Bool)

(declare-datatypes ((Regex!3487 0))(
  ( (ElementMatch!3487 (c!211357 (_ BitVec 16))) (Concat!5751 (regOne!7486 Regex!3487) (regTwo!7486 Regex!3487)) (EmptyExpr!3487) (Star!3487 (reg!3816 Regex!3487)) (EmptyLang!3487) (Union!3487 (regOne!7487 Regex!3487) (regTwo!7487 Regex!3487)) )
))
(declare-datatypes ((List!12717 0))(
  ( (Nil!12651) (Cons!12651 (h!18052 Regex!3487) (t!116525 List!12717)) )
))
(declare-datatypes ((Context!1094 0))(
  ( (Context!1095 (exprs!1047 List!12717)) )
))
(declare-datatypes ((tuple3!1148 0))(
  ( (tuple3!1149 (_1!7140 Regex!3487) (_2!7140 Context!1094) (_3!865 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!12550 0))(
  ( (tuple2!12551 (_1!7141 tuple3!1148) (_2!7141 (InoxSet Context!1094))) )
))
(declare-datatypes ((List!12718 0))(
  ( (Nil!12652) (Cons!12652 (h!18053 tuple2!12550) (t!116526 List!12718)) )
))
(declare-datatypes ((array!4725 0))(
  ( (array!4726 (arr!2108 (Array (_ BitVec 32) List!12718)) (size!10327 (_ BitVec 32))) )
))
(declare-datatypes ((array!4727 0))(
  ( (array!4728 (arr!2109 (Array (_ BitVec 32) (_ BitVec 64))) (size!10328 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2660 0))(
  ( (LongMapFixedSize!2661 (defaultEntry!1690 Int) (mask!4156 (_ BitVec 32)) (extraKeys!1577 (_ BitVec 32)) (zeroValue!1587 List!12718) (minValue!1587 List!12718) (_size!2741 (_ BitVec 32)) (_keys!1624 array!4727) (_values!1609 array!4725) (_vacant!1391 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5205 0))(
  ( (Cell!5206 (v!20943 LongMapFixedSize!2660)) )
))
(declare-datatypes ((MutLongMap!1330 0))(
  ( (LongMap!1330 (underlying!2867 Cell!5205)) (MutLongMapExt!1329 (__x!8294 Int)) )
))
(declare-fun lt!423058 () MutLongMap!1330)

(get-info :version)

(assert (=> b!1281703 (= e!821472 (and e!821462 ((_ is LongMap!1330) lt!423058)))))

(declare-datatypes ((Cell!5207 0))(
  ( (Cell!5208 (v!20944 MutLongMap!1330)) )
))
(declare-datatypes ((Hashable!1274 0))(
  ( (HashableExt!1273 (__x!8295 Int)) )
))
(declare-datatypes ((MutableMap!1274 0))(
  ( (MutableMapExt!1273 (__x!8296 Int)) (HashMap!1274 (underlying!2868 Cell!5207) (hashF!3193 Hashable!1274) (_size!2742 (_ BitVec 32)) (defaultValue!1434 Int)) )
))
(declare-datatypes ((CacheDown!746 0))(
  ( (CacheDown!747 (cache!1655 MutableMap!1274)) )
))
(declare-fun cacheDown!356 () CacheDown!746)

(assert (=> b!1281703 (= lt!423058 (v!20944 (underlying!2868 (cache!1655 cacheDown!356))))))

(declare-fun e!821456 () Bool)

(declare-datatypes ((Hashable!1275 0))(
  ( (HashableExt!1274 (__x!8297 Int)) )
))
(declare-datatypes ((tuple2!12552 0))(
  ( (tuple2!12553 (_1!7142 Context!1094) (_2!7142 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!12554 0))(
  ( (tuple2!12555 (_1!7143 tuple2!12552) (_2!7143 (InoxSet Context!1094))) )
))
(declare-datatypes ((List!12719 0))(
  ( (Nil!12653) (Cons!12653 (h!18054 tuple2!12554) (t!116527 List!12719)) )
))
(declare-datatypes ((array!4729 0))(
  ( (array!4730 (arr!2110 (Array (_ BitVec 32) List!12719)) (size!10329 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2662 0))(
  ( (LongMapFixedSize!2663 (defaultEntry!1691 Int) (mask!4157 (_ BitVec 32)) (extraKeys!1578 (_ BitVec 32)) (zeroValue!1588 List!12719) (minValue!1588 List!12719) (_size!2743 (_ BitVec 32)) (_keys!1625 array!4727) (_values!1610 array!4729) (_vacant!1392 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5209 0))(
  ( (Cell!5210 (v!20945 LongMapFixedSize!2662)) )
))
(declare-datatypes ((MutLongMap!1331 0))(
  ( (LongMap!1331 (underlying!2869 Cell!5209)) (MutLongMapExt!1330 (__x!8298 Int)) )
))
(declare-datatypes ((Cell!5211 0))(
  ( (Cell!5212 (v!20946 MutLongMap!1331)) )
))
(declare-datatypes ((MutableMap!1275 0))(
  ( (MutableMapExt!1274 (__x!8299 Int)) (HashMap!1275 (underlying!2870 Cell!5211) (hashF!3194 Hashable!1275) (_size!2744 (_ BitVec 32)) (defaultValue!1435 Int)) )
))
(declare-datatypes ((CacheUp!744 0))(
  ( (CacheUp!745 (cache!1656 MutableMap!1275)) )
))
(declare-fun cacheUp!343 () CacheUp!744)

(declare-fun e!821468 () Bool)

(declare-fun tp!371770 () Bool)

(declare-fun tp!371777 () Bool)

(declare-fun array_inv!1532 (array!4727) Bool)

(declare-fun array_inv!1533 (array!4729) Bool)

(assert (=> b!1281705 (= e!821468 (and tp!371774 tp!371770 tp!371777 (array_inv!1532 (_keys!1625 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343))))))) (array_inv!1533 (_values!1610 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343))))))) e!821456))))

(declare-fun mapNonEmpty!6381 () Bool)

(declare-fun mapRes!6381 () Bool)

(declare-fun tp!371767 () Bool)

(declare-fun tp!371768 () Bool)

(assert (=> mapNonEmpty!6381 (= mapRes!6381 (and tp!371767 tp!371768))))

(declare-fun mapValue!6382 () List!12719)

(declare-fun mapRest!6382 () (Array (_ BitVec 32) List!12719))

(declare-fun mapKey!6382 () (_ BitVec 32))

(assert (=> mapNonEmpty!6381 (= (arr!2110 (_values!1610 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343))))))) (store mapRest!6382 mapKey!6382 mapValue!6382))))

(declare-fun tp!371764 () Bool)

(declare-fun e!821461 () Bool)

(declare-fun tp!371771 () Bool)

(declare-fun e!821466 () Bool)

(declare-fun array_inv!1534 (array!4725) Bool)

(assert (=> b!1281706 (= e!821461 (and tp!371772 tp!371764 tp!371771 (array_inv!1532 (_keys!1624 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356))))))) (array_inv!1534 (_values!1609 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356))))))) e!821466))))

(declare-fun mapNonEmpty!6382 () Bool)

(declare-fun mapRes!6382 () Bool)

(declare-fun tp!371776 () Bool)

(declare-fun tp!371775 () Bool)

(assert (=> mapNonEmpty!6382 (= mapRes!6382 (and tp!371776 tp!371775))))

(declare-fun mapRest!6381 () (Array (_ BitVec 32) List!12718))

(declare-fun mapValue!6381 () List!12718)

(declare-fun mapKey!6381 () (_ BitVec 32))

(assert (=> mapNonEmpty!6382 (= (arr!2108 (_values!1609 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356))))))) (store mapRest!6381 mapKey!6381 mapValue!6381))))

(declare-fun b!1281707 () Bool)

(declare-fun tp!371769 () Bool)

(assert (=> b!1281707 (= e!821466 (and tp!371769 mapRes!6382))))

(declare-fun condMapEmpty!6382 () Bool)

(declare-fun mapDefault!6382 () List!12718)

(assert (=> b!1281707 (= condMapEmpty!6382 (= (arr!2108 (_values!1609 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356))))))) ((as const (Array (_ BitVec 32) List!12718)) mapDefault!6382)))))

(declare-fun mapIsEmpty!6381 () Bool)

(assert (=> mapIsEmpty!6381 mapRes!6381))

(declare-fun b!1281708 () Bool)

(declare-fun e!821463 () Bool)

(declare-fun e!821473 () Bool)

(declare-fun lt!423057 () MutLongMap!1331)

(assert (=> b!1281708 (= e!821463 (and e!821473 ((_ is LongMap!1331) lt!423057)))))

(assert (=> b!1281708 (= lt!423057 (v!20946 (underlying!2870 (cache!1656 cacheUp!343))))))

(declare-fun b!1281709 () Bool)

(declare-datatypes ((List!12720 0))(
  ( (Nil!12654) (Cons!12654 (h!18055 (_ BitVec 16)) (t!116528 List!12720)) )
))
(declare-datatypes ((TokenValue!2264 0))(
  ( (FloatLiteralValue!4528 (text!16293 List!12720)) (TokenValueExt!2263 (__x!8300 Int)) (Broken!11320 (value!71564 List!12720)) (Object!2329) (End!2264) (Def!2264) (Underscore!2264) (Match!2264) (Else!2264) (Error!2264) (Case!2264) (If!2264) (Extends!2264) (Abstract!2264) (Class!2264) (Val!2264) (DelimiterValue!4528 (del!2324 List!12720)) (KeywordValue!2270 (value!71565 List!12720)) (CommentValue!4528 (value!71566 List!12720)) (WhitespaceValue!4528 (value!71567 List!12720)) (IndentationValue!2264 (value!71568 List!12720)) (String!15553) (Int32!2264) (Broken!11321 (value!71569 List!12720)) (Boolean!2265) (Unit!18950) (OperatorValue!2267 (op!2324 List!12720)) (IdentifierValue!4528 (value!71570 List!12720)) (IdentifierValue!4529 (value!71571 List!12720)) (WhitespaceValue!4529 (value!71572 List!12720)) (True!4528) (False!4528) (Broken!11322 (value!71573 List!12720)) (Broken!11323 (value!71574 List!12720)) (True!4529) (RightBrace!2264) (RightBracket!2264) (Colon!2264) (Null!2264) (Comma!2264) (LeftBracket!2264) (False!4529) (LeftBrace!2264) (ImaginaryLiteralValue!2264 (text!16294 List!12720)) (StringLiteralValue!6792 (value!71575 List!12720)) (EOFValue!2264 (value!71576 List!12720)) (IdentValue!2264 (value!71577 List!12720)) (DelimiterValue!4529 (value!71578 List!12720)) (DedentValue!2264 (value!71579 List!12720)) (NewLineValue!2264 (value!71580 List!12720)) (IntegerValue!6792 (value!71581 (_ BitVec 32)) (text!16295 List!12720)) (IntegerValue!6793 (value!71582 Int) (text!16296 List!12720)) (Times!2264) (Or!2264) (Equal!2264) (Minus!2264) (Broken!11324 (value!71583 List!12720)) (And!2264) (Div!2264) (LessEqual!2264) (Mod!2264) (Concat!5752) (Not!2264) (Plus!2264) (SpaceValue!2264 (value!71584 List!12720)) (IntegerValue!6794 (value!71585 Int) (text!16297 List!12720)) (StringLiteralValue!6793 (text!16298 List!12720)) (FloatLiteralValue!4529 (text!16299 List!12720)) (BytesLiteralValue!2264 (value!71586 List!12720)) (CommentValue!4529 (value!71587 List!12720)) (StringLiteralValue!6794 (value!71588 List!12720)) (ErrorTokenValue!2264 (msg!2325 List!12720)) )
))
(declare-datatypes ((String!15554 0))(
  ( (String!15555 (value!71589 String)) )
))
(declare-datatypes ((IArray!8321 0))(
  ( (IArray!8322 (innerList!4218 List!12720)) )
))
(declare-datatypes ((Conc!4158 0))(
  ( (Node!4158 (left!10946 Conc!4158) (right!11276 Conc!4158) (csize!8546 Int) (cheight!4369 Int)) (Leaf!6441 (xs!6869 IArray!8321) (csize!8547 Int)) (Empty!4158) )
))
(declare-datatypes ((BalanceConc!8256 0))(
  ( (BalanceConc!8257 (c!211358 Conc!4158)) )
))
(declare-datatypes ((TokenValueInjection!4188 0))(
  ( (TokenValueInjection!4189 (toValue!3341 Int) (toChars!3200 Int)) )
))
(declare-datatypes ((Rule!4148 0))(
  ( (Rule!4149 (regex!2174 Regex!3487) (tag!2436 String!15554) (isSeparator!2174 Bool) (transformation!2174 TokenValueInjection!4188)) )
))
(declare-datatypes ((Token!4010 0))(
  ( (Token!4011 (value!71590 TokenValue!2264) (rule!3913 Rule!4148) (size!10330 Int) (originalCharacters!3036 List!12720)) )
))
(declare-datatypes ((List!12721 0))(
  ( (Nil!12655) (Cons!12655 (h!18056 Token!4010) (t!116529 List!12721)) )
))
(declare-datatypes ((IArray!8323 0))(
  ( (IArray!8324 (innerList!4219 List!12721)) )
))
(declare-datatypes ((Conc!4159 0))(
  ( (Node!4159 (left!10947 Conc!4159) (right!11277 Conc!4159) (csize!8548 Int) (cheight!4370 Int)) (Leaf!6442 (xs!6870 IArray!8323) (csize!8549 Int)) (Empty!4159) )
))
(declare-datatypes ((List!12722 0))(
  ( (Nil!12656) (Cons!12656 (h!18057 Rule!4148) (t!116530 List!12722)) )
))
(declare-datatypes ((BalanceConc!8258 0))(
  ( (BalanceConc!8259 (c!211359 Conc!4159)) )
))
(declare-datatypes ((PrintableTokens!752 0))(
  ( (PrintableTokens!753 (rules!9952 List!12722) (tokens!1701 BalanceConc!8258)) )
))
(declare-datatypes ((Option!2532 0))(
  ( (None!2531) (Some!2531 (v!20947 PrintableTokens!752)) )
))
(declare-fun e!821465 () Option!2532)

(declare-fun lt!423060 () List!12722)

(declare-fun lt!423059 () BalanceConc!8258)

(declare-fun printableTokensFromTokens!24 (List!12722 BalanceConc!8258) Option!2532)

(assert (=> b!1281709 (= e!821465 (printableTokensFromTokens!24 lt!423060 lt!423059))))

(declare-fun b!1281710 () Bool)

(declare-fun e!821459 () Bool)

(assert (=> b!1281710 (= e!821473 e!821459)))

(declare-fun b!1281711 () Bool)

(declare-fun e!821471 () Bool)

(assert (=> b!1281711 (= e!821462 e!821471)))

(declare-fun b!1281712 () Bool)

(assert (=> b!1281712 (= e!821465 None!2531)))

(declare-fun b!1281713 () Bool)

(declare-fun res!575218 () Bool)

(declare-fun e!821458 () Bool)

(assert (=> b!1281713 (=> (not res!575218) (not e!821458))))

(declare-datatypes ((LexerInterface!1869 0))(
  ( (LexerInterfaceExt!1866 (__x!8301 Int)) (Lexer!1867) )
))
(declare-fun rulesInvariant!1742 (LexerInterface!1869 List!12722) Bool)

(assert (=> b!1281713 (= res!575218 (rulesInvariant!1742 Lexer!1867 lt!423060))))

(declare-fun e!821460 () Bool)

(assert (=> b!1281714 (= e!821460 (and e!821463 tp!371765))))

(declare-fun b!1281715 () Bool)

(declare-fun e!821467 () Bool)

(declare-fun e!821470 () Bool)

(assert (=> b!1281715 (= e!821467 e!821470)))

(declare-fun b!1281716 () Bool)

(assert (=> b!1281716 (= e!821459 e!821468)))

(declare-fun b!1281704 () Bool)

(declare-fun e!821457 () Bool)

(assert (=> b!1281704 (= e!821457 e!821460)))

(declare-fun res!575216 () Bool)

(assert (=> start!111790 (=> (not res!575216) (not e!821458))))

(declare-fun isEmpty!7524 (List!12722) Bool)

(assert (=> start!111790 (= res!575216 (not (isEmpty!7524 lt!423060)))))

(declare-datatypes ((JsonLexer!364 0))(
  ( (JsonLexer!365) )
))
(declare-fun rules!109 (JsonLexer!364) List!12722)

(assert (=> start!111790 (= lt!423060 (rules!109 JsonLexer!365))))

(assert (=> start!111790 e!821458))

(declare-fun inv!17045 (CacheUp!744) Bool)

(assert (=> start!111790 (and (inv!17045 cacheUp!343) e!821457)))

(declare-fun inv!17046 (CacheDown!746) Bool)

(assert (=> start!111790 (and (inv!17046 cacheDown!356) e!821467)))

(assert (=> b!1281717 (= e!821470 (and e!821472 tp!371766))))

(declare-fun b!1281718 () Bool)

(declare-fun tp!371773 () Bool)

(assert (=> b!1281718 (= e!821456 (and tp!371773 mapRes!6381))))

(declare-fun condMapEmpty!6381 () Bool)

(declare-fun mapDefault!6381 () List!12719)

(assert (=> b!1281718 (= condMapEmpty!6381 (= (arr!2110 (_values!1610 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343))))))) ((as const (Array (_ BitVec 32) List!12719)) mapDefault!6381)))))

(declare-fun mapIsEmpty!6382 () Bool)

(assert (=> mapIsEmpty!6382 mapRes!6382))

(declare-fun b!1281719 () Bool)

(declare-fun e!821455 () Bool)

(assert (=> b!1281719 (= e!821458 e!821455)))

(declare-fun res!575217 () Bool)

(assert (=> b!1281719 (=> (not res!575217) (not e!821455))))

(declare-fun lt!423061 () Option!2532)

(declare-fun isEmpty!7525 (Option!2532) Bool)

(assert (=> b!1281719 (= res!575217 (not (isEmpty!7525 lt!423061)))))

(assert (=> b!1281719 (= lt!423061 e!821465)))

(declare-fun c!211356 () Bool)

(declare-datatypes ((tuple3!1150 0))(
  ( (tuple3!1151 (_1!7144 Bool) (_2!7144 CacheUp!744) (_3!866 CacheDown!746)) )
))
(declare-fun rulesProduceEachTokenIndividuallyMem!35 (LexerInterface!1869 List!12722 BalanceConc!8258 CacheUp!744 CacheDown!746) tuple3!1150)

(assert (=> b!1281719 (= c!211356 (not (_1!7144 (rulesProduceEachTokenIndividuallyMem!35 Lexer!1867 lt!423060 lt!423059 cacheUp!343 cacheDown!356))))))

(declare-fun singletonSeq!770 (Token!4010) BalanceConc!8258)

(declare-fun apply!2715 (TokenValueInjection!4188 BalanceConc!8256) TokenValue!2264)

(declare-datatypes ((KeywordValueInjection!166 0))(
  ( (KeywordValueInjection!167) )
))
(declare-fun injection!9 (KeywordValueInjection!166) TokenValueInjection!4188)

(declare-fun singletonSeq!771 ((_ BitVec 16)) BalanceConc!8256)

(declare-fun rBracketRule!0 (JsonLexer!364) Rule!4148)

(assert (=> b!1281719 (= lt!423059 (singletonSeq!770 (Token!4011 (apply!2715 (injection!9 KeywordValueInjection!167) (singletonSeq!771 #x005D)) (rBracketRule!0 JsonLexer!365) 1 (Cons!12654 #x005D Nil!12654))))))

(declare-fun b!1281720 () Bool)

(assert (=> b!1281720 (= e!821471 e!821461)))

(declare-fun b!1281721 () Bool)

(declare-fun usesJsonRules!0 (PrintableTokens!752) Bool)

(declare-fun get!4177 (Option!2532) PrintableTokens!752)

(assert (=> b!1281721 (= e!821455 (not (usesJsonRules!0 (get!4177 lt!423061))))))

(assert (= (and start!111790 res!575216) b!1281713))

(assert (= (and b!1281713 res!575218) b!1281719))

(assert (= (and b!1281719 c!211356) b!1281712))

(assert (= (and b!1281719 (not c!211356)) b!1281709))

(assert (= (and b!1281719 res!575217) b!1281721))

(assert (= (and b!1281718 condMapEmpty!6381) mapIsEmpty!6381))

(assert (= (and b!1281718 (not condMapEmpty!6381)) mapNonEmpty!6381))

(assert (= b!1281705 b!1281718))

(assert (= b!1281716 b!1281705))

(assert (= b!1281710 b!1281716))

(assert (= (and b!1281708 ((_ is LongMap!1331) (v!20946 (underlying!2870 (cache!1656 cacheUp!343))))) b!1281710))

(assert (= b!1281714 b!1281708))

(assert (= (and b!1281704 ((_ is HashMap!1275) (cache!1656 cacheUp!343))) b!1281714))

(assert (= start!111790 b!1281704))

(assert (= (and b!1281707 condMapEmpty!6382) mapIsEmpty!6382))

(assert (= (and b!1281707 (not condMapEmpty!6382)) mapNonEmpty!6382))

(assert (= b!1281706 b!1281707))

(assert (= b!1281720 b!1281706))

(assert (= b!1281711 b!1281720))

(assert (= (and b!1281703 ((_ is LongMap!1330) (v!20944 (underlying!2868 (cache!1655 cacheDown!356))))) b!1281711))

(assert (= b!1281717 b!1281703))

(assert (= (and b!1281715 ((_ is HashMap!1274) (cache!1655 cacheDown!356))) b!1281717))

(assert (= start!111790 b!1281715))

(declare-fun m!1432431 () Bool)

(assert (=> mapNonEmpty!6381 m!1432431))

(declare-fun m!1432433 () Bool)

(assert (=> b!1281709 m!1432433))

(declare-fun m!1432435 () Bool)

(assert (=> b!1281721 m!1432435))

(assert (=> b!1281721 m!1432435))

(declare-fun m!1432437 () Bool)

(assert (=> b!1281721 m!1432437))

(declare-fun m!1432439 () Bool)

(assert (=> mapNonEmpty!6382 m!1432439))

(declare-fun m!1432441 () Bool)

(assert (=> b!1281705 m!1432441))

(declare-fun m!1432443 () Bool)

(assert (=> b!1281705 m!1432443))

(declare-fun m!1432445 () Bool)

(assert (=> start!111790 m!1432445))

(declare-fun m!1432447 () Bool)

(assert (=> start!111790 m!1432447))

(declare-fun m!1432449 () Bool)

(assert (=> start!111790 m!1432449))

(declare-fun m!1432451 () Bool)

(assert (=> start!111790 m!1432451))

(declare-fun m!1432453 () Bool)

(assert (=> b!1281706 m!1432453))

(declare-fun m!1432455 () Bool)

(assert (=> b!1281706 m!1432455))

(declare-fun m!1432457 () Bool)

(assert (=> b!1281719 m!1432457))

(assert (=> b!1281719 m!1432457))

(declare-fun m!1432459 () Bool)

(assert (=> b!1281719 m!1432459))

(declare-fun m!1432461 () Bool)

(assert (=> b!1281719 m!1432461))

(declare-fun m!1432463 () Bool)

(assert (=> b!1281719 m!1432463))

(assert (=> b!1281719 m!1432459))

(declare-fun m!1432465 () Bool)

(assert (=> b!1281719 m!1432465))

(declare-fun m!1432467 () Bool)

(assert (=> b!1281719 m!1432467))

(declare-fun m!1432469 () Bool)

(assert (=> b!1281719 m!1432469))

(declare-fun m!1432471 () Bool)

(assert (=> b!1281713 m!1432471))

(check-sat (not mapNonEmpty!6381) (not b_next!30535) (not b!1281707) (not b_next!30541) b_and!84979 (not start!111790) (not b!1281713) (not b_next!30539) (not b!1281706) b_and!84977 (not b!1281719) (not b!1281721) (not mapNonEmpty!6382) (not b!1281709) b_and!84975 b_and!84981 (not b!1281718) (not b!1281705) (not b_next!30537))
(check-sat b_and!84975 (not b_next!30535) b_and!84981 (not b_next!30541) b_and!84979 (not b_next!30539) (not b_next!30537) b_and!84977)
(get-model)

(declare-fun b!1281733 () Bool)

(declare-fun e!821480 () Bool)

(declare-fun lt!423064 () Option!2532)

(assert (=> b!1281733 (= e!821480 (= (tokens!1701 (get!4177 lt!423064)) lt!423059))))

(declare-fun b!1281732 () Bool)

(declare-fun e!821481 () Bool)

(assert (=> b!1281732 (= e!821481 e!821480)))

(declare-fun res!575223 () Bool)

(assert (=> b!1281732 (=> (not res!575223) (not e!821480))))

(assert (=> b!1281732 (= res!575223 (= (rules!9952 (get!4177 lt!423064)) lt!423060))))

(declare-fun b!1281730 () Bool)

(declare-fun e!821482 () Option!2532)

(assert (=> b!1281730 (= e!821482 (Some!2531 (PrintableTokens!753 lt!423060 lt!423059)))))

(declare-fun d!361169 () Bool)

(assert (=> d!361169 e!821481))

(declare-fun res!575224 () Bool)

(assert (=> d!361169 (=> res!575224 e!821481)))

(assert (=> d!361169 (= res!575224 (isEmpty!7525 lt!423064))))

(assert (=> d!361169 (= lt!423064 e!821482)))

(declare-fun c!211362 () Bool)

(declare-fun separableTokens!162 (LexerInterface!1869 BalanceConc!8258 List!12722) Bool)

(assert (=> d!361169 (= c!211362 (separableTokens!162 Lexer!1867 lt!423059 lt!423060))))

(assert (=> d!361169 (not (isEmpty!7524 lt!423060))))

(assert (=> d!361169 (= (printableTokensFromTokens!24 lt!423060 lt!423059) lt!423064)))

(declare-fun b!1281731 () Bool)

(assert (=> b!1281731 (= e!821482 None!2531)))

(assert (= (and d!361169 c!211362) b!1281730))

(assert (= (and d!361169 (not c!211362)) b!1281731))

(assert (= (and d!361169 (not res!575224)) b!1281732))

(assert (= (and b!1281732 res!575223) b!1281733))

(declare-fun m!1432473 () Bool)

(assert (=> b!1281733 m!1432473))

(assert (=> b!1281732 m!1432473))

(declare-fun m!1432475 () Bool)

(assert (=> d!361169 m!1432475))

(declare-fun m!1432477 () Bool)

(assert (=> d!361169 m!1432477))

(assert (=> d!361169 m!1432445))

(assert (=> b!1281709 d!361169))

(declare-fun d!361171 () Bool)

(assert (=> d!361171 (= (array_inv!1532 (_keys!1624 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356))))))) (bvsge (size!10328 (_keys!1624 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356))))))) #b00000000000000000000000000000000))))

(assert (=> b!1281706 d!361171))

(declare-fun d!361173 () Bool)

(assert (=> d!361173 (= (array_inv!1534 (_values!1609 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356))))))) (bvsge (size!10327 (_values!1609 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356))))))) #b00000000000000000000000000000000))))

(assert (=> b!1281706 d!361173))

(declare-fun d!361175 () Bool)

(declare-fun e!821485 () Bool)

(assert (=> d!361175 e!821485))

(declare-fun res!575227 () Bool)

(assert (=> d!361175 (=> (not res!575227) (not e!821485))))

(declare-fun lt!423067 () BalanceConc!8256)

(declare-fun list!4722 (BalanceConc!8256) List!12720)

(assert (=> d!361175 (= res!575227 (= (list!4722 lt!423067) (Cons!12654 #x005D Nil!12654)))))

(declare-fun singleton!327 ((_ BitVec 16)) BalanceConc!8256)

(assert (=> d!361175 (= lt!423067 (singleton!327 #x005D))))

(assert (=> d!361175 (= (singletonSeq!771 #x005D) lt!423067)))

(declare-fun b!1281736 () Bool)

(declare-fun isBalanced!1217 (Conc!4158) Bool)

(assert (=> b!1281736 (= e!821485 (isBalanced!1217 (c!211358 lt!423067)))))

(assert (= (and d!361175 res!575227) b!1281736))

(declare-fun m!1432479 () Bool)

(assert (=> d!361175 m!1432479))

(declare-fun m!1432481 () Bool)

(assert (=> d!361175 m!1432481))

(declare-fun m!1432483 () Bool)

(assert (=> b!1281736 m!1432483))

(assert (=> b!1281719 d!361175))

(declare-fun d!361177 () Bool)

(assert (=> d!361177 (= (isEmpty!7525 lt!423061) (not ((_ is Some!2531) lt!423061)))))

(assert (=> b!1281719 d!361177))

(declare-fun d!361179 () Bool)

(assert (=> d!361179 true))

(assert (=> d!361179 true))

(assert (=> d!361179 true))

(assert (=> d!361179 true))

(declare-fun b!1281759 () Bool)

(declare-fun e!821500 () Bool)

(declare-fun x!249463 () BalanceConc!8256)

(declare-fun tp!371784 () Bool)

(declare-fun inv!17047 (Conc!4158) Bool)

(assert (=> b!1281759 (= e!821500 (and (inv!17047 (c!211358 x!249463)) tp!371784))))

(declare-fun inst!1030 () Bool)

(declare-fun inv!17048 (BalanceConc!8256) Bool)

(declare-fun toCharacters!4 (KeywordValueInjection!166 TokenValue!2264) BalanceConc!8256)

(declare-fun toValue!11 (KeywordValueInjection!166 BalanceConc!8256) TokenValue!2264)

(assert (=> d!361179 (= inst!1030 (=> (and (inv!17048 x!249463) e!821500) (= (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (list!4722 x!249463))))))

(assert (= d!361179 b!1281759))

(declare-fun m!1432485 () Bool)

(assert (=> b!1281759 m!1432485))

(declare-fun m!1432487 () Bool)

(assert (=> d!361179 m!1432487))

(declare-fun m!1432489 () Bool)

(assert (=> d!361179 m!1432489))

(declare-fun m!1432491 () Bool)

(assert (=> d!361179 m!1432491))

(declare-fun m!1432493 () Bool)

(assert (=> d!361179 m!1432493))

(declare-fun m!1432495 () Bool)

(assert (=> d!361179 m!1432495))

(assert (=> d!361179 m!1432489))

(assert (=> d!361179 m!1432493))

(declare-fun res!575236 () Bool)

(declare-fun e!821501 () Bool)

(assert (=> d!361179 (=> res!575236 e!821501)))

(declare-fun x!249464 () BalanceConc!8256)

(declare-fun x!249465 () BalanceConc!8256)

(assert (=> d!361179 (= res!575236 (not (= (list!4722 x!249464) (list!4722 x!249465))))))

(declare-fun inst!1031 () Bool)

(declare-fun e!821503 () Bool)

(declare-fun e!821502 () Bool)

(assert (=> d!361179 (= inst!1031 (=> (and (inv!17048 x!249464) e!821503 (inv!17048 x!249465) e!821502) e!821501))))

(declare-fun b!1281760 () Bool)

(assert (=> b!1281760 (= e!821501 (= (toValue!11 KeywordValueInjection!167 x!249464) (toValue!11 KeywordValueInjection!167 x!249465)))))

(declare-fun b!1281761 () Bool)

(declare-fun tp!371785 () Bool)

(assert (=> b!1281761 (= e!821503 (and (inv!17047 (c!211358 x!249464)) tp!371785))))

(declare-fun b!1281762 () Bool)

(declare-fun tp!371786 () Bool)

(assert (=> b!1281762 (= e!821502 (and (inv!17047 (c!211358 x!249465)) tp!371786))))

(assert (= (and d!361179 (not res!575236)) b!1281760))

(assert (= d!361179 b!1281761))

(assert (= d!361179 b!1281762))

(declare-fun m!1432497 () Bool)

(assert (=> d!361179 m!1432497))

(declare-fun m!1432499 () Bool)

(assert (=> d!361179 m!1432499))

(declare-fun m!1432501 () Bool)

(assert (=> d!361179 m!1432501))

(declare-fun m!1432503 () Bool)

(assert (=> d!361179 m!1432503))

(declare-fun m!1432505 () Bool)

(assert (=> b!1281760 m!1432505))

(declare-fun m!1432507 () Bool)

(assert (=> b!1281760 m!1432507))

(declare-fun m!1432509 () Bool)

(assert (=> b!1281761 m!1432509))

(declare-fun m!1432511 () Bool)

(assert (=> b!1281762 m!1432511))

(declare-fun bs!327201 () Bool)

(declare-fun neg-inst!1031 () Bool)

(declare-fun s!216135 () Bool)

(assert (= bs!327201 (and neg-inst!1031 s!216135)))

(assert (=> bs!327201 (=> true (= (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (list!4722 x!249463)))))

(assert (=> m!1432491 m!1432489))

(assert (=> m!1432491 m!1432493))

(assert (=> m!1432491 m!1432495))

(assert (=> m!1432491 s!216135))

(assert (=> m!1432489 s!216135))

(declare-fun bs!327202 () Bool)

(assert (= bs!327202 (and neg-inst!1031 d!361179)))

(assert (=> bs!327202 (= true inst!1030)))

(declare-fun bs!327203 () Bool)

(declare-fun neg-inst!1030 () Bool)

(declare-fun s!216137 () Bool)

(assert (= bs!327203 (and neg-inst!1030 s!216137)))

(declare-fun res!575237 () Bool)

(declare-fun e!821504 () Bool)

(assert (=> bs!327203 (=> res!575237 e!821504)))

(assert (=> bs!327203 (= res!575237 (not (= (list!4722 x!249465) (list!4722 x!249465))))))

(assert (=> bs!327203 (=> true e!821504)))

(declare-fun b!1281763 () Bool)

(assert (=> b!1281763 (= e!821504 (= (toValue!11 KeywordValueInjection!167 x!249465) (toValue!11 KeywordValueInjection!167 x!249465)))))

(assert (= (and bs!327203 (not res!575237)) b!1281763))

(assert (=> m!1432507 m!1432499))

(assert (=> m!1432507 m!1432499))

(assert (=> m!1432507 s!216137))

(assert (=> m!1432507 s!216137))

(declare-fun bs!327204 () Bool)

(declare-fun s!216139 () Bool)

(assert (= bs!327204 (and neg-inst!1030 s!216139)))

(declare-fun res!575238 () Bool)

(declare-fun e!821505 () Bool)

(assert (=> bs!327204 (=> res!575238 e!821505)))

(assert (=> bs!327204 (= res!575238 (not (= (list!4722 x!249465) (list!4722 lt!423067))))))

(assert (=> bs!327204 (=> true e!821505)))

(declare-fun b!1281764 () Bool)

(assert (=> b!1281764 (= e!821505 (= (toValue!11 KeywordValueInjection!167 x!249465) (toValue!11 KeywordValueInjection!167 lt!423067)))))

(assert (= (and bs!327204 (not res!575238)) b!1281764))

(declare-fun bs!327205 () Bool)

(assert (= bs!327205 (and m!1432479 m!1432507)))

(assert (=> bs!327205 m!1432499))

(assert (=> bs!327205 m!1432479))

(assert (=> bs!327205 s!216139))

(declare-fun bs!327206 () Bool)

(declare-fun s!216141 () Bool)

(assert (= bs!327206 (and neg-inst!1030 s!216141)))

(declare-fun res!575239 () Bool)

(declare-fun e!821506 () Bool)

(assert (=> bs!327206 (=> res!575239 e!821506)))

(assert (=> bs!327206 (= res!575239 (not (= (list!4722 lt!423067) (list!4722 lt!423067))))))

(assert (=> bs!327206 (=> true e!821506)))

(declare-fun b!1281765 () Bool)

(assert (=> b!1281765 (= e!821506 (= (toValue!11 KeywordValueInjection!167 lt!423067) (toValue!11 KeywordValueInjection!167 lt!423067)))))

(assert (= (and bs!327206 (not res!575239)) b!1281765))

(assert (=> m!1432479 s!216141))

(declare-fun bs!327207 () Bool)

(declare-fun s!216143 () Bool)

(assert (= bs!327207 (and neg-inst!1030 s!216143)))

(declare-fun res!575240 () Bool)

(declare-fun e!821507 () Bool)

(assert (=> bs!327207 (=> res!575240 e!821507)))

(assert (=> bs!327207 (= res!575240 (not (= (list!4722 lt!423067) (list!4722 x!249465))))))

(assert (=> bs!327207 (=> true e!821507)))

(declare-fun b!1281766 () Bool)

(assert (=> b!1281766 (= e!821507 (= (toValue!11 KeywordValueInjection!167 lt!423067) (toValue!11 KeywordValueInjection!167 x!249465)))))

(assert (= (and bs!327207 (not res!575240)) b!1281766))

(assert (=> bs!327205 m!1432479))

(assert (=> bs!327205 m!1432499))

(assert (=> bs!327205 s!216143))

(assert (=> m!1432479 s!216141))

(declare-fun bs!327208 () Bool)

(declare-fun s!216145 () Bool)

(assert (= bs!327208 (and neg-inst!1030 s!216145)))

(declare-fun res!575241 () Bool)

(declare-fun e!821508 () Bool)

(assert (=> bs!327208 (=> res!575241 e!821508)))

(assert (=> bs!327208 (= res!575241 (not (= (list!4722 x!249465) (list!4722 x!249463))))))

(assert (=> bs!327208 (=> true e!821508)))

(declare-fun b!1281767 () Bool)

(assert (=> b!1281767 (= e!821508 (= (toValue!11 KeywordValueInjection!167 x!249465) (toValue!11 KeywordValueInjection!167 x!249463)))))

(assert (= (and bs!327208 (not res!575241)) b!1281767))

(declare-fun bs!327209 () Bool)

(assert (= bs!327209 (and m!1432491 m!1432507)))

(assert (=> bs!327209 m!1432499))

(assert (=> bs!327209 m!1432491))

(assert (=> bs!327209 s!216145))

(declare-fun bs!327210 () Bool)

(declare-fun s!216147 () Bool)

(assert (= bs!327210 (and neg-inst!1030 s!216147)))

(declare-fun res!575242 () Bool)

(declare-fun e!821509 () Bool)

(assert (=> bs!327210 (=> res!575242 e!821509)))

(assert (=> bs!327210 (= res!575242 (not (= (list!4722 lt!423067) (list!4722 x!249463))))))

(assert (=> bs!327210 (=> true e!821509)))

(declare-fun b!1281768 () Bool)

(assert (=> b!1281768 (= e!821509 (= (toValue!11 KeywordValueInjection!167 lt!423067) (toValue!11 KeywordValueInjection!167 x!249463)))))

(assert (= (and bs!327210 (not res!575242)) b!1281768))

(declare-fun bs!327211 () Bool)

(assert (= bs!327211 (and m!1432491 m!1432479)))

(assert (=> bs!327211 m!1432479))

(assert (=> bs!327211 m!1432491))

(assert (=> bs!327211 s!216147))

(declare-fun bs!327212 () Bool)

(declare-fun s!216149 () Bool)

(assert (= bs!327212 (and neg-inst!1030 s!216149)))

(declare-fun res!575243 () Bool)

(declare-fun e!821510 () Bool)

(assert (=> bs!327212 (=> res!575243 e!821510)))

(assert (=> bs!327212 (= res!575243 (not (= (list!4722 x!249463) (list!4722 x!249463))))))

(assert (=> bs!327212 (=> true e!821510)))

(declare-fun b!1281769 () Bool)

(assert (=> b!1281769 (= e!821510 (= (toValue!11 KeywordValueInjection!167 x!249463) (toValue!11 KeywordValueInjection!167 x!249463)))))

(assert (= (and bs!327212 (not res!575243)) b!1281769))

(assert (=> m!1432491 s!216149))

(declare-fun bs!327213 () Bool)

(declare-fun s!216151 () Bool)

(assert (= bs!327213 (and neg-inst!1030 s!216151)))

(declare-fun res!575244 () Bool)

(declare-fun e!821511 () Bool)

(assert (=> bs!327213 (=> res!575244 e!821511)))

(assert (=> bs!327213 (= res!575244 (not (= (list!4722 x!249463) (list!4722 x!249465))))))

(assert (=> bs!327213 (=> true e!821511)))

(declare-fun b!1281770 () Bool)

(assert (=> b!1281770 (= e!821511 (= (toValue!11 KeywordValueInjection!167 x!249463) (toValue!11 KeywordValueInjection!167 x!249465)))))

(assert (= (and bs!327213 (not res!575244)) b!1281770))

(assert (=> bs!327209 m!1432491))

(assert (=> bs!327209 m!1432499))

(assert (=> bs!327209 s!216151))

(declare-fun bs!327214 () Bool)

(declare-fun s!216153 () Bool)

(assert (= bs!327214 (and neg-inst!1030 s!216153)))

(declare-fun res!575245 () Bool)

(declare-fun e!821512 () Bool)

(assert (=> bs!327214 (=> res!575245 e!821512)))

(assert (=> bs!327214 (= res!575245 (not (= (list!4722 x!249463) (list!4722 lt!423067))))))

(assert (=> bs!327214 (=> true e!821512)))

(declare-fun b!1281771 () Bool)

(assert (=> b!1281771 (= e!821512 (= (toValue!11 KeywordValueInjection!167 x!249463) (toValue!11 KeywordValueInjection!167 lt!423067)))))

(assert (= (and bs!327214 (not res!575245)) b!1281771))

(assert (=> bs!327211 m!1432491))

(assert (=> bs!327211 m!1432479))

(assert (=> bs!327211 s!216153))

(assert (=> m!1432491 s!216149))

(declare-fun bs!327215 () Bool)

(declare-fun s!216155 () Bool)

(assert (= bs!327215 (and neg-inst!1030 s!216155)))

(declare-fun res!575246 () Bool)

(declare-fun e!821513 () Bool)

(assert (=> bs!327215 (=> res!575246 e!821513)))

(assert (=> bs!327215 (= res!575246 (not (= (list!4722 x!249465) (list!4722 x!249464))))))

(assert (=> bs!327215 (=> true e!821513)))

(declare-fun b!1281772 () Bool)

(assert (=> b!1281772 (= e!821513 (= (toValue!11 KeywordValueInjection!167 x!249465) (toValue!11 KeywordValueInjection!167 x!249464)))))

(assert (= (and bs!327215 (not res!575246)) b!1281772))

(declare-fun bs!327216 () Bool)

(assert (= bs!327216 (and m!1432505 m!1432507)))

(assert (=> bs!327216 m!1432499))

(assert (=> bs!327216 m!1432497))

(assert (=> bs!327216 s!216155))

(declare-fun bs!327217 () Bool)

(declare-fun s!216157 () Bool)

(assert (= bs!327217 (and neg-inst!1030 s!216157)))

(declare-fun res!575247 () Bool)

(declare-fun e!821514 () Bool)

(assert (=> bs!327217 (=> res!575247 e!821514)))

(assert (=> bs!327217 (= res!575247 (not (= (list!4722 x!249463) (list!4722 x!249464))))))

(assert (=> bs!327217 (=> true e!821514)))

(declare-fun b!1281773 () Bool)

(assert (=> b!1281773 (= e!821514 (= (toValue!11 KeywordValueInjection!167 x!249463) (toValue!11 KeywordValueInjection!167 x!249464)))))

(assert (= (and bs!327217 (not res!575247)) b!1281773))

(declare-fun bs!327218 () Bool)

(assert (= bs!327218 (and m!1432505 m!1432491)))

(assert (=> bs!327218 m!1432491))

(assert (=> bs!327218 m!1432497))

(assert (=> bs!327218 s!216157))

(declare-fun bs!327219 () Bool)

(declare-fun s!216159 () Bool)

(assert (= bs!327219 (and neg-inst!1030 s!216159)))

(declare-fun res!575248 () Bool)

(declare-fun e!821515 () Bool)

(assert (=> bs!327219 (=> res!575248 e!821515)))

(assert (=> bs!327219 (= res!575248 (not (= (list!4722 lt!423067) (list!4722 x!249464))))))

(assert (=> bs!327219 (=> true e!821515)))

(declare-fun b!1281774 () Bool)

(assert (=> b!1281774 (= e!821515 (= (toValue!11 KeywordValueInjection!167 lt!423067) (toValue!11 KeywordValueInjection!167 x!249464)))))

(assert (= (and bs!327219 (not res!575248)) b!1281774))

(declare-fun bs!327220 () Bool)

(assert (= bs!327220 (and m!1432505 m!1432479)))

(assert (=> bs!327220 m!1432479))

(assert (=> bs!327220 m!1432497))

(assert (=> bs!327220 s!216159))

(declare-fun bs!327221 () Bool)

(declare-fun s!216161 () Bool)

(assert (= bs!327221 (and neg-inst!1030 s!216161)))

(declare-fun res!575249 () Bool)

(declare-fun e!821516 () Bool)

(assert (=> bs!327221 (=> res!575249 e!821516)))

(assert (=> bs!327221 (= res!575249 (not (= (list!4722 x!249464) (list!4722 x!249464))))))

(assert (=> bs!327221 (=> true e!821516)))

(declare-fun b!1281775 () Bool)

(assert (=> b!1281775 (= e!821516 (= (toValue!11 KeywordValueInjection!167 x!249464) (toValue!11 KeywordValueInjection!167 x!249464)))))

(assert (= (and bs!327221 (not res!575249)) b!1281775))

(assert (=> m!1432505 m!1432497))

(assert (=> m!1432505 m!1432497))

(assert (=> m!1432505 s!216161))

(declare-fun bs!327222 () Bool)

(declare-fun s!216163 () Bool)

(assert (= bs!327222 (and neg-inst!1030 s!216163)))

(declare-fun res!575250 () Bool)

(declare-fun e!821517 () Bool)

(assert (=> bs!327222 (=> res!575250 e!821517)))

(assert (=> bs!327222 (= res!575250 (not (= (list!4722 x!249464) (list!4722 x!249465))))))

(assert (=> bs!327222 (=> true e!821517)))

(declare-fun b!1281776 () Bool)

(assert (=> b!1281776 (= e!821517 (= (toValue!11 KeywordValueInjection!167 x!249464) (toValue!11 KeywordValueInjection!167 x!249465)))))

(assert (= (and bs!327222 (not res!575250)) b!1281776))

(assert (=> bs!327216 m!1432497))

(assert (=> bs!327216 m!1432499))

(assert (=> bs!327216 s!216163))

(declare-fun bs!327223 () Bool)

(declare-fun s!216165 () Bool)

(assert (= bs!327223 (and neg-inst!1030 s!216165)))

(declare-fun res!575251 () Bool)

(declare-fun e!821518 () Bool)

(assert (=> bs!327223 (=> res!575251 e!821518)))

(assert (=> bs!327223 (= res!575251 (not (= (list!4722 x!249464) (list!4722 x!249463))))))

(assert (=> bs!327223 (=> true e!821518)))

(declare-fun b!1281777 () Bool)

(assert (=> b!1281777 (= e!821518 (= (toValue!11 KeywordValueInjection!167 x!249464) (toValue!11 KeywordValueInjection!167 x!249463)))))

(assert (= (and bs!327223 (not res!575251)) b!1281777))

(assert (=> bs!327218 m!1432497))

(assert (=> bs!327218 m!1432491))

(assert (=> bs!327218 s!216165))

(declare-fun bs!327224 () Bool)

(declare-fun s!216167 () Bool)

(assert (= bs!327224 (and neg-inst!1030 s!216167)))

(declare-fun res!575252 () Bool)

(declare-fun e!821519 () Bool)

(assert (=> bs!327224 (=> res!575252 e!821519)))

(assert (=> bs!327224 (= res!575252 (not (= (list!4722 x!249464) (list!4722 lt!423067))))))

(assert (=> bs!327224 (=> true e!821519)))

(declare-fun b!1281778 () Bool)

(assert (=> b!1281778 (= e!821519 (= (toValue!11 KeywordValueInjection!167 x!249464) (toValue!11 KeywordValueInjection!167 lt!423067)))))

(assert (= (and bs!327224 (not res!575252)) b!1281778))

(assert (=> bs!327220 m!1432497))

(assert (=> bs!327220 m!1432479))

(assert (=> bs!327220 s!216167))

(assert (=> m!1432505 s!216161))

(assert (=> m!1432497 s!216161))

(declare-fun bs!327225 () Bool)

(assert (= bs!327225 (and m!1432497 m!1432507)))

(assert (=> bs!327225 s!216155))

(declare-fun bs!327226 () Bool)

(assert (= bs!327226 (and m!1432497 m!1432491)))

(assert (=> bs!327226 s!216157))

(declare-fun bs!327227 () Bool)

(assert (= bs!327227 (and m!1432497 m!1432479)))

(assert (=> bs!327227 s!216159))

(declare-fun bs!327228 () Bool)

(assert (= bs!327228 (and m!1432497 m!1432505)))

(assert (=> bs!327228 s!216161))

(assert (=> m!1432497 s!216161))

(assert (=> bs!327225 s!216163))

(assert (=> bs!327226 s!216165))

(assert (=> bs!327227 s!216167))

(assert (=> bs!327228 s!216161))

(declare-fun bs!327229 () Bool)

(declare-fun s!216169 () Bool)

(assert (= bs!327229 (and neg-inst!1030 s!216169)))

(declare-fun res!575253 () Bool)

(declare-fun e!821520 () Bool)

(assert (=> bs!327229 (=> res!575253 e!821520)))

(assert (=> bs!327229 (= res!575253 (not (= (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))))))))

(assert (=> bs!327229 (=> true e!821520)))

(declare-fun b!1281779 () Bool)

(assert (=> b!1281779 (= e!821520 (= (toValue!11 KeywordValueInjection!167 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (toValue!11 KeywordValueInjection!167 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463)))))))

(assert (= (and bs!327229 (not res!575253)) b!1281779))

(assert (=> m!1432495 s!216169))

(declare-fun bs!327230 () Bool)

(declare-fun s!216171 () Bool)

(assert (= bs!327230 (and neg-inst!1030 s!216171)))

(declare-fun res!575254 () Bool)

(declare-fun e!821521 () Bool)

(assert (=> bs!327230 (=> res!575254 e!821521)))

(assert (=> bs!327230 (= res!575254 (not (= (list!4722 lt!423067) (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))))))))

(assert (=> bs!327230 (=> true e!821521)))

(declare-fun b!1281780 () Bool)

(assert (=> b!1281780 (= e!821521 (= (toValue!11 KeywordValueInjection!167 lt!423067) (toValue!11 KeywordValueInjection!167 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463)))))))

(assert (= (and bs!327230 (not res!575254)) b!1281780))

(declare-fun bs!327231 () Bool)

(assert (= bs!327231 (and m!1432495 m!1432479)))

(assert (=> bs!327231 m!1432479))

(assert (=> bs!327231 m!1432495))

(assert (=> bs!327231 s!216171))

(declare-fun bs!327232 () Bool)

(declare-fun s!216173 () Bool)

(assert (= bs!327232 (and neg-inst!1030 s!216173)))

(declare-fun res!575255 () Bool)

(declare-fun e!821522 () Bool)

(assert (=> bs!327232 (=> res!575255 e!821522)))

(assert (=> bs!327232 (= res!575255 (not (= (list!4722 x!249463) (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))))))))

(assert (=> bs!327232 (=> true e!821522)))

(declare-fun b!1281781 () Bool)

(assert (=> b!1281781 (= e!821522 (= (toValue!11 KeywordValueInjection!167 x!249463) (toValue!11 KeywordValueInjection!167 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463)))))))

(assert (= (and bs!327232 (not res!575255)) b!1281781))

(declare-fun bs!327233 () Bool)

(assert (= bs!327233 (and m!1432495 m!1432491)))

(assert (=> bs!327233 m!1432491))

(assert (=> bs!327233 m!1432495))

(assert (=> bs!327233 s!216173))

(declare-fun bs!327234 () Bool)

(declare-fun s!216175 () Bool)

(assert (= bs!327234 (and neg-inst!1030 s!216175)))

(declare-fun res!575256 () Bool)

(declare-fun e!821523 () Bool)

(assert (=> bs!327234 (=> res!575256 e!821523)))

(assert (=> bs!327234 (= res!575256 (not (= (list!4722 x!249465) (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))))))))

(assert (=> bs!327234 (=> true e!821523)))

(declare-fun b!1281782 () Bool)

(assert (=> b!1281782 (= e!821523 (= (toValue!11 KeywordValueInjection!167 x!249465) (toValue!11 KeywordValueInjection!167 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463)))))))

(assert (= (and bs!327234 (not res!575256)) b!1281782))

(declare-fun bs!327235 () Bool)

(assert (= bs!327235 (and m!1432495 m!1432507)))

(assert (=> bs!327235 m!1432499))

(assert (=> bs!327235 m!1432495))

(assert (=> bs!327235 s!216175))

(declare-fun bs!327236 () Bool)

(declare-fun s!216177 () Bool)

(assert (= bs!327236 (and neg-inst!1030 s!216177)))

(declare-fun res!575257 () Bool)

(declare-fun e!821524 () Bool)

(assert (=> bs!327236 (=> res!575257 e!821524)))

(assert (=> bs!327236 (= res!575257 (not (= (list!4722 x!249464) (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))))))))

(assert (=> bs!327236 (=> true e!821524)))

(declare-fun b!1281783 () Bool)

(assert (=> b!1281783 (= e!821524 (= (toValue!11 KeywordValueInjection!167 x!249464) (toValue!11 KeywordValueInjection!167 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463)))))))

(assert (= (and bs!327236 (not res!575257)) b!1281783))

(declare-fun bs!327237 () Bool)

(assert (= bs!327237 (and m!1432495 m!1432505 m!1432497)))

(assert (=> bs!327237 m!1432497))

(assert (=> bs!327237 m!1432495))

(assert (=> bs!327237 s!216177))

(declare-fun bs!327238 () Bool)

(declare-fun s!216179 () Bool)

(assert (= bs!327238 (and neg-inst!1030 s!216179)))

(declare-fun res!575258 () Bool)

(declare-fun e!821525 () Bool)

(assert (=> bs!327238 (=> res!575258 e!821525)))

(assert (=> bs!327238 (= res!575258 (not (= (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (list!4722 x!249465))))))

(assert (=> bs!327238 (=> true e!821525)))

(declare-fun b!1281784 () Bool)

(assert (=> b!1281784 (= e!821525 (= (toValue!11 KeywordValueInjection!167 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (toValue!11 KeywordValueInjection!167 x!249465)))))

(assert (= (and bs!327238 (not res!575258)) b!1281784))

(assert (=> bs!327235 m!1432495))

(assert (=> bs!327235 m!1432499))

(assert (=> bs!327235 s!216179))

(assert (=> m!1432495 s!216169))

(declare-fun bs!327239 () Bool)

(declare-fun s!216181 () Bool)

(assert (= bs!327239 (and neg-inst!1030 s!216181)))

(declare-fun res!575259 () Bool)

(declare-fun e!821526 () Bool)

(assert (=> bs!327239 (=> res!575259 e!821526)))

(assert (=> bs!327239 (= res!575259 (not (= (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (list!4722 x!249463))))))

(assert (=> bs!327239 (=> true e!821526)))

(declare-fun b!1281785 () Bool)

(assert (=> b!1281785 (= e!821526 (= (toValue!11 KeywordValueInjection!167 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (toValue!11 KeywordValueInjection!167 x!249463)))))

(assert (= (and bs!327239 (not res!575259)) b!1281785))

(assert (=> bs!327233 m!1432495))

(assert (=> bs!327233 m!1432491))

(assert (=> bs!327233 s!216181))

(declare-fun bs!327240 () Bool)

(declare-fun s!216183 () Bool)

(assert (= bs!327240 (and neg-inst!1030 s!216183)))

(declare-fun res!575260 () Bool)

(declare-fun e!821527 () Bool)

(assert (=> bs!327240 (=> res!575260 e!821527)))

(assert (=> bs!327240 (= res!575260 (not (= (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (list!4722 lt!423067))))))

(assert (=> bs!327240 (=> true e!821527)))

(declare-fun b!1281786 () Bool)

(assert (=> b!1281786 (= e!821527 (= (toValue!11 KeywordValueInjection!167 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (toValue!11 KeywordValueInjection!167 lt!423067)))))

(assert (= (and bs!327240 (not res!575260)) b!1281786))

(assert (=> bs!327231 m!1432495))

(assert (=> bs!327231 m!1432479))

(assert (=> bs!327231 s!216183))

(declare-fun bs!327241 () Bool)

(declare-fun s!216185 () Bool)

(assert (= bs!327241 (and neg-inst!1030 s!216185)))

(declare-fun res!575261 () Bool)

(declare-fun e!821528 () Bool)

(assert (=> bs!327241 (=> res!575261 e!821528)))

(assert (=> bs!327241 (= res!575261 (not (= (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (list!4722 x!249464))))))

(assert (=> bs!327241 (=> true e!821528)))

(declare-fun b!1281787 () Bool)

(assert (=> b!1281787 (= e!821528 (= (toValue!11 KeywordValueInjection!167 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (toValue!11 KeywordValueInjection!167 x!249464)))))

(assert (= (and bs!327241 (not res!575261)) b!1281787))

(assert (=> bs!327237 m!1432495))

(assert (=> bs!327237 m!1432497))

(assert (=> bs!327237 s!216185))

(declare-fun bs!327242 () Bool)

(assert (= bs!327242 (and m!1432489 m!1432495)))

(assert (=> bs!327242 s!216181))

(declare-fun bs!327243 () Bool)

(assert (= bs!327243 (and m!1432489 m!1432505 m!1432497)))

(assert (=> bs!327243 s!216165))

(declare-fun bs!327244 () Bool)

(assert (= bs!327244 (and m!1432489 m!1432479)))

(assert (=> bs!327244 s!216147))

(assert (=> m!1432489 s!216149))

(declare-fun bs!327245 () Bool)

(assert (= bs!327245 (and m!1432489 m!1432491)))

(assert (=> bs!327245 s!216149))

(declare-fun bs!327246 () Bool)

(assert (= bs!327246 (and m!1432489 m!1432507)))

(assert (=> bs!327246 s!216145))

(assert (=> bs!327243 s!216157))

(assert (=> bs!327244 s!216153))

(assert (=> bs!327242 s!216173))

(assert (=> bs!327245 s!216149))

(assert (=> bs!327246 s!216151))

(assert (=> m!1432489 s!216149))

(declare-fun bs!327247 () Bool)

(assert (= bs!327247 (and m!1432499 m!1432495)))

(assert (=> bs!327247 s!216179))

(assert (=> m!1432499 s!216137))

(declare-fun bs!327248 () Bool)

(assert (= bs!327248 (and m!1432499 m!1432491 m!1432489)))

(assert (=> bs!327248 s!216151))

(declare-fun bs!327249 () Bool)

(assert (= bs!327249 (and m!1432499 m!1432507)))

(assert (=> bs!327249 s!216137))

(declare-fun bs!327250 () Bool)

(assert (= bs!327250 (and m!1432499 m!1432505 m!1432497)))

(assert (=> bs!327250 s!216163))

(declare-fun bs!327251 () Bool)

(assert (= bs!327251 (and m!1432499 m!1432479)))

(assert (=> bs!327251 s!216143))

(assert (=> bs!327247 s!216175))

(assert (=> bs!327248 s!216145))

(assert (=> bs!327250 s!216155))

(assert (=> m!1432499 s!216137))

(assert (=> bs!327249 s!216137))

(assert (=> bs!327251 s!216139))

(declare-fun bs!327252 () Bool)

(assert (= bs!327252 (and neg-inst!1030 d!361179)))

(assert (=> bs!327252 (= true inst!1031)))

(declare-datatypes ((Unit!18951 0))(
  ( (Unit!18952) )
))
(declare-fun lt!423079 () Unit!18951)

(declare-fun Unit!18953 () Unit!18951)

(assert (=> d!361179 (= lt!423079 Unit!18953)))

(declare-fun lambda!50234 () Int)

(declare-fun lambda!50235 () Int)

(declare-fun lambda!50236 () Int)

(declare-fun equivClasses!779 (Int Int) Bool)

(declare-fun Forall2!390 (Int) Bool)

(assert (=> d!361179 (= (equivClasses!779 lambda!50234 lambda!50235) (Forall2!390 lambda!50236))))

(declare-fun lt!423078 () Unit!18951)

(declare-fun Unit!18954 () Unit!18951)

(assert (=> d!361179 (= lt!423078 Unit!18954)))

(assert (=> d!361179 (= (Forall2!390 lambda!50236) inst!1031)))

(declare-fun lt!423076 () Unit!18951)

(declare-fun Unit!18955 () Unit!18951)

(assert (=> d!361179 (= lt!423076 Unit!18955)))

(declare-fun lambda!50233 () Int)

(declare-fun semiInverseModEq!820 (Int Int) Bool)

(declare-fun Forall!488 (Int) Bool)

(assert (=> d!361179 (= (semiInverseModEq!820 lambda!50234 lambda!50235) (Forall!488 lambda!50233))))

(declare-fun lt!423077 () Unit!18951)

(declare-fun Unit!18956 () Unit!18951)

(assert (=> d!361179 (= lt!423077 Unit!18956)))

(assert (=> d!361179 (= (Forall!488 lambda!50233) inst!1030)))

(assert (=> d!361179 (= (injection!9 KeywordValueInjection!167) (TokenValueInjection!4189 lambda!50235 lambda!50234))))

(assert (= neg-inst!1031 inst!1030))

(assert (= neg-inst!1030 inst!1031))

(declare-fun m!1432513 () Bool)

(assert (=> d!361179 m!1432513))

(declare-fun m!1432515 () Bool)

(assert (=> d!361179 m!1432515))

(declare-fun m!1432517 () Bool)

(assert (=> d!361179 m!1432517))

(assert (=> d!361179 m!1432517))

(assert (=> d!361179 m!1432515))

(declare-fun m!1432519 () Bool)

(assert (=> d!361179 m!1432519))

(assert (=> b!1281719 d!361179))

(declare-fun b!1281804 () Bool)

(declare-fun e!821540 () Bool)

(assert (=> b!1281804 (= e!821540 true)))

(declare-fun b!1281803 () Bool)

(declare-fun e!821539 () Bool)

(assert (=> b!1281803 (= e!821539 e!821540)))

(declare-fun b!1281802 () Bool)

(declare-fun e!821538 () Bool)

(assert (=> b!1281802 (= e!821538 e!821539)))

(declare-fun d!361181 () Bool)

(assert (=> d!361181 e!821538))

(assert (= b!1281803 b!1281804))

(assert (= b!1281802 b!1281803))

(assert (= (and d!361181 ((_ is Cons!12656) lt!423060)) b!1281802))

(declare-fun lambda!50239 () Int)

(declare-fun order!7713 () Int)

(declare-fun order!7715 () Int)

(declare-fun dynLambda!5532 (Int Int) Int)

(declare-fun dynLambda!5533 (Int Int) Int)

(assert (=> b!1281804 (< (dynLambda!5532 order!7713 (toValue!3341 (transformation!2174 (h!18057 lt!423060)))) (dynLambda!5533 order!7715 lambda!50239))))

(declare-fun order!7717 () Int)

(declare-fun dynLambda!5534 (Int Int) Int)

(assert (=> b!1281804 (< (dynLambda!5534 order!7717 (toChars!3200 (transformation!2174 (h!18057 lt!423060)))) (dynLambda!5533 order!7715 lambda!50239))))

(assert (=> d!361181 true))

(declare-fun lt!423087 () tuple3!1150)

(declare-fun forall!3208 (BalanceConc!8258 Int) Bool)

(assert (=> d!361181 (= (_1!7144 lt!423087) (forall!3208 lt!423059 lambda!50239))))

(declare-fun e!821531 () tuple3!1150)

(assert (=> d!361181 (= lt!423087 e!821531)))

(declare-fun c!211371 () Bool)

(declare-fun isEmpty!7526 (BalanceConc!8258) Bool)

(assert (=> d!361181 (= c!211371 (isEmpty!7526 lt!423059))))

(assert (=> d!361181 (not (isEmpty!7524 lt!423060))))

(assert (=> d!361181 (= (rulesProduceEachTokenIndividuallyMem!35 Lexer!1867 lt!423060 lt!423059 cacheUp!343 cacheDown!356) lt!423087)))

(declare-fun b!1281792 () Bool)

(assert (=> b!1281792 (= e!821531 (tuple3!1151 true cacheUp!343 cacheDown!356))))

(declare-fun b!1281793 () Bool)

(declare-fun lt!423086 () tuple3!1150)

(declare-fun lt!423088 () tuple3!1150)

(assert (=> b!1281793 (= e!821531 (tuple3!1151 (and (_1!7144 lt!423086) (_1!7144 lt!423088)) (_2!7144 lt!423088) (_3!866 lt!423088)))))

(declare-fun rulesProduceIndividualTokenMem!18 (LexerInterface!1869 List!12722 Token!4010 CacheUp!744 CacheDown!746) tuple3!1150)

(declare-fun head!2178 (BalanceConc!8258) Token!4010)

(assert (=> b!1281793 (= lt!423086 (rulesProduceIndividualTokenMem!18 Lexer!1867 lt!423060 (head!2178 lt!423059) cacheUp!343 cacheDown!356))))

(declare-fun tail!1810 (BalanceConc!8258) BalanceConc!8258)

(assert (=> b!1281793 (= lt!423088 (rulesProduceEachTokenIndividuallyMem!35 Lexer!1867 lt!423060 (tail!1810 lt!423059) (_2!7144 lt!423086) (_3!866 lt!423086)))))

(assert (= (and d!361181 c!211371) b!1281792))

(assert (= (and d!361181 (not c!211371)) b!1281793))

(declare-fun m!1432521 () Bool)

(assert (=> d!361181 m!1432521))

(declare-fun m!1432523 () Bool)

(assert (=> d!361181 m!1432523))

(assert (=> d!361181 m!1432445))

(declare-fun m!1432525 () Bool)

(assert (=> b!1281793 m!1432525))

(assert (=> b!1281793 m!1432525))

(declare-fun m!1432527 () Bool)

(assert (=> b!1281793 m!1432527))

(declare-fun m!1432529 () Bool)

(assert (=> b!1281793 m!1432529))

(assert (=> b!1281793 m!1432529))

(declare-fun m!1432531 () Bool)

(assert (=> b!1281793 m!1432531))

(assert (=> b!1281719 d!361181))

(declare-fun d!361183 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!364) Regex!3487)

(assert (=> d!361183 (= (rBracketRule!0 JsonLexer!365) (Rule!4149 (rBracketRe!0 JsonLexer!365) (String!15555 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!167)))))

(declare-fun bs!327253 () Bool)

(assert (= bs!327253 d!361183))

(declare-fun m!1432533 () Bool)

(assert (=> bs!327253 m!1432533))

(assert (=> bs!327253 m!1432457))

(assert (=> b!1281719 d!361183))

(declare-fun d!361185 () Bool)

(declare-fun dynLambda!5535 (Int BalanceConc!8256) TokenValue!2264)

(assert (=> d!361185 (= (apply!2715 (injection!9 KeywordValueInjection!167) (singletonSeq!771 #x005D)) (dynLambda!5535 (toValue!3341 (injection!9 KeywordValueInjection!167)) (singletonSeq!771 #x005D)))))

(declare-fun b_lambda!36567 () Bool)

(assert (=> (not b_lambda!36567) (not d!361185)))

(declare-fun bs!327254 () Bool)

(assert (= bs!327254 d!361185))

(assert (=> bs!327254 m!1432459))

(declare-fun m!1432535 () Bool)

(assert (=> bs!327254 m!1432535))

(assert (=> b!1281719 d!361185))

(declare-fun d!361187 () Bool)

(declare-fun e!821543 () Bool)

(assert (=> d!361187 e!821543))

(declare-fun res!575264 () Bool)

(assert (=> d!361187 (=> (not res!575264) (not e!821543))))

(declare-fun lt!423091 () BalanceConc!8258)

(declare-fun list!4723 (BalanceConc!8258) List!12721)

(assert (=> d!361187 (= res!575264 (= (list!4723 lt!423091) (Cons!12655 (Token!4011 (apply!2715 (injection!9 KeywordValueInjection!167) (singletonSeq!771 #x005D)) (rBracketRule!0 JsonLexer!365) 1 (Cons!12654 #x005D Nil!12654)) Nil!12655)))))

(declare-fun singleton!328 (Token!4010) BalanceConc!8258)

(assert (=> d!361187 (= lt!423091 (singleton!328 (Token!4011 (apply!2715 (injection!9 KeywordValueInjection!167) (singletonSeq!771 #x005D)) (rBracketRule!0 JsonLexer!365) 1 (Cons!12654 #x005D Nil!12654))))))

(assert (=> d!361187 (= (singletonSeq!770 (Token!4011 (apply!2715 (injection!9 KeywordValueInjection!167) (singletonSeq!771 #x005D)) (rBracketRule!0 JsonLexer!365) 1 (Cons!12654 #x005D Nil!12654))) lt!423091)))

(declare-fun b!1281809 () Bool)

(declare-fun isBalanced!1218 (Conc!4159) Bool)

(assert (=> b!1281809 (= e!821543 (isBalanced!1218 (c!211359 lt!423091)))))

(assert (= (and d!361187 res!575264) b!1281809))

(declare-fun m!1432537 () Bool)

(assert (=> d!361187 m!1432537))

(declare-fun m!1432539 () Bool)

(assert (=> d!361187 m!1432539))

(declare-fun m!1432541 () Bool)

(assert (=> b!1281809 m!1432541))

(assert (=> b!1281719 d!361187))

(declare-fun d!361189 () Bool)

(assert (=> d!361189 (= (array_inv!1532 (_keys!1625 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343))))))) (bvsge (size!10328 (_keys!1625 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343))))))) #b00000000000000000000000000000000))))

(assert (=> b!1281705 d!361189))

(declare-fun d!361191 () Bool)

(assert (=> d!361191 (= (array_inv!1533 (_values!1610 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343))))))) (bvsge (size!10329 (_values!1610 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343))))))) #b00000000000000000000000000000000))))

(assert (=> b!1281705 d!361191))

(declare-fun d!361193 () Bool)

(declare-fun res!575267 () Bool)

(declare-fun e!821546 () Bool)

(assert (=> d!361193 (=> (not res!575267) (not e!821546))))

(declare-fun rulesValid!791 (LexerInterface!1869 List!12722) Bool)

(assert (=> d!361193 (= res!575267 (rulesValid!791 Lexer!1867 lt!423060))))

(assert (=> d!361193 (= (rulesInvariant!1742 Lexer!1867 lt!423060) e!821546)))

(declare-fun b!1281812 () Bool)

(declare-datatypes ((List!12723 0))(
  ( (Nil!12657) (Cons!12657 (h!18058 String!15554) (t!116547 List!12723)) )
))
(declare-fun noDuplicateTag!791 (LexerInterface!1869 List!12722 List!12723) Bool)

(assert (=> b!1281812 (= e!821546 (noDuplicateTag!791 Lexer!1867 lt!423060 Nil!12657))))

(assert (= (and d!361193 res!575267) b!1281812))

(declare-fun m!1432543 () Bool)

(assert (=> d!361193 m!1432543))

(declare-fun m!1432545 () Bool)

(assert (=> b!1281812 m!1432545))

(assert (=> b!1281713 d!361193))

(declare-fun d!361195 () Bool)

(assert (=> d!361195 (= (usesJsonRules!0 (get!4177 lt!423061)) (= (rules!9952 (get!4177 lt!423061)) (rules!109 JsonLexer!365)))))

(declare-fun bs!327255 () Bool)

(assert (= bs!327255 d!361195))

(assert (=> bs!327255 m!1432447))

(assert (=> b!1281721 d!361195))

(declare-fun d!361197 () Bool)

(assert (=> d!361197 (= (get!4177 lt!423061) (v!20947 lt!423061))))

(assert (=> b!1281721 d!361197))

(declare-fun d!361199 () Bool)

(assert (=> d!361199 (= (isEmpty!7524 lt!423060) ((_ is Nil!12656) lt!423060))))

(assert (=> start!111790 d!361199))

(declare-fun d!361201 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!364) Rule!4148)

(declare-fun integerLiteralRule!0 (JsonLexer!364) Rule!4148)

(declare-fun floatLiteralRule!0 (JsonLexer!364) Rule!4148)

(declare-fun trueRule!0 (JsonLexer!364) Rule!4148)

(declare-fun falseRule!0 (JsonLexer!364) Rule!4148)

(declare-fun nullRule!0 (JsonLexer!364) Rule!4148)

(declare-fun jsonstringRule!0 (JsonLexer!364) Rule!4148)

(declare-fun lBraceRule!0 (JsonLexer!364) Rule!4148)

(declare-fun rBraceRule!0 (JsonLexer!364) Rule!4148)

(declare-fun lBracketRule!0 (JsonLexer!364) Rule!4148)

(declare-fun colonRule!0 (JsonLexer!364) Rule!4148)

(declare-fun commaRule!0 (JsonLexer!364) Rule!4148)

(declare-fun eofRule!0 (JsonLexer!364) Rule!4148)

(assert (=> d!361201 (= (rules!109 JsonLexer!365) (Cons!12656 (whitespaceRule!0 JsonLexer!365) (Cons!12656 (integerLiteralRule!0 JsonLexer!365) (Cons!12656 (floatLiteralRule!0 JsonLexer!365) (Cons!12656 (trueRule!0 JsonLexer!365) (Cons!12656 (falseRule!0 JsonLexer!365) (Cons!12656 (nullRule!0 JsonLexer!365) (Cons!12656 (jsonstringRule!0 JsonLexer!365) (Cons!12656 (lBraceRule!0 JsonLexer!365) (Cons!12656 (rBraceRule!0 JsonLexer!365) (Cons!12656 (lBracketRule!0 JsonLexer!365) (Cons!12656 (rBracketRule!0 JsonLexer!365) (Cons!12656 (colonRule!0 JsonLexer!365) (Cons!12656 (commaRule!0 JsonLexer!365) (Cons!12656 (eofRule!0 JsonLexer!365) Nil!12656)))))))))))))))))

(declare-fun bs!327256 () Bool)

(assert (= bs!327256 d!361201))

(declare-fun m!1432547 () Bool)

(assert (=> bs!327256 m!1432547))

(declare-fun m!1432549 () Bool)

(assert (=> bs!327256 m!1432549))

(declare-fun m!1432551 () Bool)

(assert (=> bs!327256 m!1432551))

(declare-fun m!1432553 () Bool)

(assert (=> bs!327256 m!1432553))

(declare-fun m!1432555 () Bool)

(assert (=> bs!327256 m!1432555))

(declare-fun m!1432557 () Bool)

(assert (=> bs!327256 m!1432557))

(declare-fun m!1432559 () Bool)

(assert (=> bs!327256 m!1432559))

(declare-fun m!1432561 () Bool)

(assert (=> bs!327256 m!1432561))

(declare-fun m!1432563 () Bool)

(assert (=> bs!327256 m!1432563))

(declare-fun m!1432565 () Bool)

(assert (=> bs!327256 m!1432565))

(declare-fun m!1432567 () Bool)

(assert (=> bs!327256 m!1432567))

(declare-fun m!1432569 () Bool)

(assert (=> bs!327256 m!1432569))

(assert (=> bs!327256 m!1432465))

(declare-fun m!1432571 () Bool)

(assert (=> bs!327256 m!1432571))

(assert (=> start!111790 d!361201))

(declare-fun d!361203 () Bool)

(declare-fun res!575270 () Bool)

(declare-fun e!821549 () Bool)

(assert (=> d!361203 (=> (not res!575270) (not e!821549))))

(assert (=> d!361203 (= res!575270 ((_ is HashMap!1275) (cache!1656 cacheUp!343)))))

(assert (=> d!361203 (= (inv!17045 cacheUp!343) e!821549)))

(declare-fun b!1281815 () Bool)

(declare-fun validCacheMapUp!121 (MutableMap!1275) Bool)

(assert (=> b!1281815 (= e!821549 (validCacheMapUp!121 (cache!1656 cacheUp!343)))))

(assert (= (and d!361203 res!575270) b!1281815))

(declare-fun m!1432573 () Bool)

(assert (=> b!1281815 m!1432573))

(assert (=> start!111790 d!361203))

(declare-fun d!361205 () Bool)

(declare-fun res!575273 () Bool)

(declare-fun e!821552 () Bool)

(assert (=> d!361205 (=> (not res!575273) (not e!821552))))

(assert (=> d!361205 (= res!575273 ((_ is HashMap!1274) (cache!1655 cacheDown!356)))))

(assert (=> d!361205 (= (inv!17046 cacheDown!356) e!821552)))

(declare-fun b!1281818 () Bool)

(declare-fun validCacheMapDown!121 (MutableMap!1274) Bool)

(assert (=> b!1281818 (= e!821552 (validCacheMapDown!121 (cache!1655 cacheDown!356)))))

(assert (= (and d!361205 res!575273) b!1281818))

(declare-fun m!1432575 () Bool)

(assert (=> b!1281818 m!1432575))

(assert (=> start!111790 d!361205))

(declare-fun e!821565 () Bool)

(declare-fun tp!371798 () Bool)

(declare-fun mapDefault!6385 () List!12719)

(declare-fun b!1281825 () Bool)

(declare-fun setRes!8074 () Bool)

(declare-fun inv!17049 (Context!1094) Bool)

(assert (=> b!1281825 (= e!821565 (and (inv!17049 (_1!7142 (_1!7143 (h!18054 mapDefault!6385)))) setRes!8074 tp!371798))))

(declare-fun condSetEmpty!8074 () Bool)

(assert (=> b!1281825 (= condSetEmpty!8074 (= (_2!7143 (h!18054 mapDefault!6385)) ((as const (Array Context!1094 Bool)) false)))))

(declare-fun mapNonEmpty!6385 () Bool)

(declare-fun mapRes!6385 () Bool)

(declare-fun tp!371801 () Bool)

(declare-fun e!821568 () Bool)

(assert (=> mapNonEmpty!6385 (= mapRes!6385 (and tp!371801 e!821568))))

(declare-fun mapRest!6385 () (Array (_ BitVec 32) List!12719))

(declare-fun mapKey!6385 () (_ BitVec 32))

(declare-fun mapValue!6385 () List!12719)

(assert (=> mapNonEmpty!6385 (= mapRest!6382 (store mapRest!6385 mapKey!6385 mapValue!6385))))

(declare-fun b!1281826 () Bool)

(declare-fun setRes!8075 () Bool)

(declare-fun tp!371797 () Bool)

(assert (=> b!1281826 (= e!821568 (and (inv!17049 (_1!7142 (_1!7143 (h!18054 mapValue!6385)))) setRes!8075 tp!371797))))

(declare-fun condSetEmpty!8075 () Bool)

(assert (=> b!1281826 (= condSetEmpty!8075 (= (_2!7143 (h!18054 mapValue!6385)) ((as const (Array Context!1094 Bool)) false)))))

(declare-fun setNonEmpty!8075 () Bool)

(declare-fun tp!371800 () Bool)

(declare-fun setElem!8075 () Context!1094)

(assert (=> setNonEmpty!8075 (= setRes!8074 (and tp!371800 (inv!17049 setElem!8075)))))

(declare-fun setRest!8075 () (InoxSet Context!1094))

(assert (=> setNonEmpty!8075 (= (_2!7143 (h!18054 mapDefault!6385)) ((_ map or) (store ((as const (Array Context!1094 Bool)) false) setElem!8075 true) setRest!8075))))

(declare-fun setIsEmpty!8074 () Bool)

(assert (=> setIsEmpty!8074 setRes!8075))

(declare-fun setIsEmpty!8075 () Bool)

(assert (=> setIsEmpty!8075 setRes!8074))

(declare-fun mapIsEmpty!6385 () Bool)

(assert (=> mapIsEmpty!6385 mapRes!6385))

(declare-fun condMapEmpty!6385 () Bool)

(assert (=> mapNonEmpty!6381 (= condMapEmpty!6385 (= mapRest!6382 ((as const (Array (_ BitVec 32) List!12719)) mapDefault!6385)))))

(assert (=> mapNonEmpty!6381 (= tp!371767 (and e!821565 mapRes!6385))))

(declare-fun setNonEmpty!8074 () Bool)

(declare-fun tp!371799 () Bool)

(declare-fun setElem!8074 () Context!1094)

(assert (=> setNonEmpty!8074 (= setRes!8075 (and tp!371799 (inv!17049 setElem!8074)))))

(declare-fun setRest!8074 () (InoxSet Context!1094))

(assert (=> setNonEmpty!8074 (= (_2!7143 (h!18054 mapValue!6385)) ((_ map or) (store ((as const (Array Context!1094 Bool)) false) setElem!8074 true) setRest!8074))))

(assert (= (and mapNonEmpty!6381 condMapEmpty!6385) mapIsEmpty!6385))

(assert (= (and mapNonEmpty!6381 (not condMapEmpty!6385)) mapNonEmpty!6385))

(assert (= (and b!1281826 condSetEmpty!8075) setIsEmpty!8074))

(assert (= (and b!1281826 (not condSetEmpty!8075)) setNonEmpty!8074))

(assert (= (and mapNonEmpty!6385 ((_ is Cons!12653) mapValue!6385)) b!1281826))

(assert (= (and b!1281825 condSetEmpty!8074) setIsEmpty!8075))

(assert (= (and b!1281825 (not condSetEmpty!8074)) setNonEmpty!8075))

(assert (= (and mapNonEmpty!6381 ((_ is Cons!12653) mapDefault!6385)) b!1281825))

(declare-fun m!1432577 () Bool)

(assert (=> setNonEmpty!8075 m!1432577))

(declare-fun m!1432579 () Bool)

(assert (=> setNonEmpty!8074 m!1432579))

(declare-fun m!1432581 () Bool)

(assert (=> b!1281825 m!1432581))

(declare-fun m!1432583 () Bool)

(assert (=> mapNonEmpty!6385 m!1432583))

(declare-fun m!1432585 () Bool)

(assert (=> b!1281826 m!1432585))

(declare-fun e!821578 () Bool)

(declare-fun b!1281831 () Bool)

(declare-fun tp!371807 () Bool)

(declare-fun setRes!8078 () Bool)

(assert (=> b!1281831 (= e!821578 (and (inv!17049 (_1!7142 (_1!7143 (h!18054 mapValue!6382)))) setRes!8078 tp!371807))))

(declare-fun condSetEmpty!8078 () Bool)

(assert (=> b!1281831 (= condSetEmpty!8078 (= (_2!7143 (h!18054 mapValue!6382)) ((as const (Array Context!1094 Bool)) false)))))

(declare-fun setIsEmpty!8078 () Bool)

(assert (=> setIsEmpty!8078 setRes!8078))

(declare-fun setNonEmpty!8078 () Bool)

(declare-fun tp!371806 () Bool)

(declare-fun setElem!8078 () Context!1094)

(assert (=> setNonEmpty!8078 (= setRes!8078 (and tp!371806 (inv!17049 setElem!8078)))))

(declare-fun setRest!8078 () (InoxSet Context!1094))

(assert (=> setNonEmpty!8078 (= (_2!7143 (h!18054 mapValue!6382)) ((_ map or) (store ((as const (Array Context!1094 Bool)) false) setElem!8078 true) setRest!8078))))

(assert (=> mapNonEmpty!6381 (= tp!371768 e!821578)))

(assert (= (and b!1281831 condSetEmpty!8078) setIsEmpty!8078))

(assert (= (and b!1281831 (not condSetEmpty!8078)) setNonEmpty!8078))

(assert (= (and mapNonEmpty!6381 ((_ is Cons!12653) mapValue!6382)) b!1281831))

(declare-fun m!1432587 () Bool)

(assert (=> b!1281831 m!1432587))

(declare-fun m!1432589 () Bool)

(assert (=> setNonEmpty!8078 m!1432589))

(declare-fun b!1281836 () Bool)

(declare-fun e!821587 () Bool)

(declare-fun setRes!8081 () Bool)

(declare-fun tp!371812 () Bool)

(assert (=> b!1281836 (= e!821587 (and (inv!17049 (_2!7140 (_1!7141 (h!18053 (zeroValue!1587 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356)))))))))) setRes!8081 tp!371812))))

(declare-fun condSetEmpty!8081 () Bool)

(assert (=> b!1281836 (= condSetEmpty!8081 (= (_2!7141 (h!18053 (zeroValue!1587 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356)))))))) ((as const (Array Context!1094 Bool)) false)))))

(declare-fun setIsEmpty!8081 () Bool)

(assert (=> setIsEmpty!8081 setRes!8081))

(declare-fun setNonEmpty!8081 () Bool)

(declare-fun tp!371813 () Bool)

(declare-fun setElem!8081 () Context!1094)

(assert (=> setNonEmpty!8081 (= setRes!8081 (and tp!371813 (inv!17049 setElem!8081)))))

(declare-fun setRest!8081 () (InoxSet Context!1094))

(assert (=> setNonEmpty!8081 (= (_2!7141 (h!18053 (zeroValue!1587 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356)))))))) ((_ map or) (store ((as const (Array Context!1094 Bool)) false) setElem!8081 true) setRest!8081))))

(assert (=> b!1281706 (= tp!371764 e!821587)))

(assert (= (and b!1281836 condSetEmpty!8081) setIsEmpty!8081))

(assert (= (and b!1281836 (not condSetEmpty!8081)) setNonEmpty!8081))

(assert (= (and b!1281706 ((_ is Cons!12652) (zeroValue!1587 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356)))))))) b!1281836))

(declare-fun m!1432591 () Bool)

(assert (=> b!1281836 m!1432591))

(declare-fun m!1432593 () Bool)

(assert (=> setNonEmpty!8081 m!1432593))

(declare-fun e!821590 () Bool)

(declare-fun tp!371814 () Bool)

(declare-fun setRes!8082 () Bool)

(declare-fun b!1281837 () Bool)

(assert (=> b!1281837 (= e!821590 (and (inv!17049 (_2!7140 (_1!7141 (h!18053 (minValue!1587 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356)))))))))) setRes!8082 tp!371814))))

(declare-fun condSetEmpty!8082 () Bool)

(assert (=> b!1281837 (= condSetEmpty!8082 (= (_2!7141 (h!18053 (minValue!1587 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356)))))))) ((as const (Array Context!1094 Bool)) false)))))

(declare-fun setIsEmpty!8082 () Bool)

(assert (=> setIsEmpty!8082 setRes!8082))

(declare-fun setNonEmpty!8082 () Bool)

(declare-fun tp!371815 () Bool)

(declare-fun setElem!8082 () Context!1094)

(assert (=> setNonEmpty!8082 (= setRes!8082 (and tp!371815 (inv!17049 setElem!8082)))))

(declare-fun setRest!8082 () (InoxSet Context!1094))

(assert (=> setNonEmpty!8082 (= (_2!7141 (h!18053 (minValue!1587 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356)))))))) ((_ map or) (store ((as const (Array Context!1094 Bool)) false) setElem!8082 true) setRest!8082))))

(assert (=> b!1281706 (= tp!371771 e!821590)))

(assert (= (and b!1281837 condSetEmpty!8082) setIsEmpty!8082))

(assert (= (and b!1281837 (not condSetEmpty!8082)) setNonEmpty!8082))

(assert (= (and b!1281706 ((_ is Cons!12652) (minValue!1587 (v!20943 (underlying!2867 (v!20944 (underlying!2868 (cache!1655 cacheDown!356)))))))) b!1281837))

(declare-fun m!1432595 () Bool)

(assert (=> b!1281837 m!1432595))

(declare-fun m!1432597 () Bool)

(assert (=> setNonEmpty!8082 m!1432597))

(declare-fun e!821593 () Bool)

(declare-fun setRes!8083 () Bool)

(declare-fun tp!371817 () Bool)

(declare-fun b!1281838 () Bool)

(assert (=> b!1281838 (= e!821593 (and (inv!17049 (_1!7142 (_1!7143 (h!18054 (zeroValue!1588 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343)))))))))) setRes!8083 tp!371817))))

(declare-fun condSetEmpty!8083 () Bool)

(assert (=> b!1281838 (= condSetEmpty!8083 (= (_2!7143 (h!18054 (zeroValue!1588 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343)))))))) ((as const (Array Context!1094 Bool)) false)))))

(declare-fun setIsEmpty!8083 () Bool)

(assert (=> setIsEmpty!8083 setRes!8083))

(declare-fun setNonEmpty!8083 () Bool)

(declare-fun tp!371816 () Bool)

(declare-fun setElem!8083 () Context!1094)

(assert (=> setNonEmpty!8083 (= setRes!8083 (and tp!371816 (inv!17049 setElem!8083)))))

(declare-fun setRest!8083 () (InoxSet Context!1094))

(assert (=> setNonEmpty!8083 (= (_2!7143 (h!18054 (zeroValue!1588 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343)))))))) ((_ map or) (store ((as const (Array Context!1094 Bool)) false) setElem!8083 true) setRest!8083))))

(assert (=> b!1281705 (= tp!371770 e!821593)))

(assert (= (and b!1281838 condSetEmpty!8083) setIsEmpty!8083))

(assert (= (and b!1281838 (not condSetEmpty!8083)) setNonEmpty!8083))

(assert (= (and b!1281705 ((_ is Cons!12653) (zeroValue!1588 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343)))))))) b!1281838))

(declare-fun m!1432599 () Bool)

(assert (=> b!1281838 m!1432599))

(declare-fun m!1432601 () Bool)

(assert (=> setNonEmpty!8083 m!1432601))

(declare-fun setRes!8084 () Bool)

(declare-fun tp!371819 () Bool)

(declare-fun e!821596 () Bool)

(declare-fun b!1281839 () Bool)

(assert (=> b!1281839 (= e!821596 (and (inv!17049 (_1!7142 (_1!7143 (h!18054 (minValue!1588 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343)))))))))) setRes!8084 tp!371819))))

(declare-fun condSetEmpty!8084 () Bool)

(assert (=> b!1281839 (= condSetEmpty!8084 (= (_2!7143 (h!18054 (minValue!1588 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343)))))))) ((as const (Array Context!1094 Bool)) false)))))

(declare-fun setIsEmpty!8084 () Bool)

(assert (=> setIsEmpty!8084 setRes!8084))

(declare-fun setNonEmpty!8084 () Bool)

(declare-fun tp!371818 () Bool)

(declare-fun setElem!8084 () Context!1094)

(assert (=> setNonEmpty!8084 (= setRes!8084 (and tp!371818 (inv!17049 setElem!8084)))))

(declare-fun setRest!8084 () (InoxSet Context!1094))

(assert (=> setNonEmpty!8084 (= (_2!7143 (h!18054 (minValue!1588 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343)))))))) ((_ map or) (store ((as const (Array Context!1094 Bool)) false) setElem!8084 true) setRest!8084))))

(assert (=> b!1281705 (= tp!371777 e!821596)))

(assert (= (and b!1281839 condSetEmpty!8084) setIsEmpty!8084))

(assert (= (and b!1281839 (not condSetEmpty!8084)) setNonEmpty!8084))

(assert (= (and b!1281705 ((_ is Cons!12653) (minValue!1588 (v!20945 (underlying!2869 (v!20946 (underlying!2870 (cache!1656 cacheUp!343)))))))) b!1281839))

(declare-fun m!1432603 () Bool)

(assert (=> b!1281839 m!1432603))

(declare-fun m!1432605 () Bool)

(assert (=> setNonEmpty!8084 m!1432605))

(declare-fun tp!371821 () Bool)

(declare-fun b!1281840 () Bool)

(declare-fun e!821599 () Bool)

(declare-fun setRes!8085 () Bool)

(assert (=> b!1281840 (= e!821599 (and (inv!17049 (_1!7142 (_1!7143 (h!18054 mapDefault!6381)))) setRes!8085 tp!371821))))

(declare-fun condSetEmpty!8085 () Bool)

(assert (=> b!1281840 (= condSetEmpty!8085 (= (_2!7143 (h!18054 mapDefault!6381)) ((as const (Array Context!1094 Bool)) false)))))

(declare-fun setIsEmpty!8085 () Bool)

(assert (=> setIsEmpty!8085 setRes!8085))

(declare-fun setNonEmpty!8085 () Bool)

(declare-fun tp!371820 () Bool)

(declare-fun setElem!8085 () Context!1094)

(assert (=> setNonEmpty!8085 (= setRes!8085 (and tp!371820 (inv!17049 setElem!8085)))))

(declare-fun setRest!8085 () (InoxSet Context!1094))

(assert (=> setNonEmpty!8085 (= (_2!7143 (h!18054 mapDefault!6381)) ((_ map or) (store ((as const (Array Context!1094 Bool)) false) setElem!8085 true) setRest!8085))))

(assert (=> b!1281718 (= tp!371773 e!821599)))

(assert (= (and b!1281840 condSetEmpty!8085) setIsEmpty!8085))

(assert (= (and b!1281840 (not condSetEmpty!8085)) setNonEmpty!8085))

(assert (= (and b!1281718 ((_ is Cons!12653) mapDefault!6381)) b!1281840))

(declare-fun m!1432607 () Bool)

(assert (=> b!1281840 m!1432607))

(declare-fun m!1432609 () Bool)

(assert (=> setNonEmpty!8085 m!1432609))

(declare-fun tp!371822 () Bool)

(declare-fun e!821602 () Bool)

(declare-fun setRes!8086 () Bool)

(declare-fun b!1281841 () Bool)

(assert (=> b!1281841 (= e!821602 (and (inv!17049 (_2!7140 (_1!7141 (h!18053 mapDefault!6382)))) setRes!8086 tp!371822))))

(declare-fun condSetEmpty!8086 () Bool)

(assert (=> b!1281841 (= condSetEmpty!8086 (= (_2!7141 (h!18053 mapDefault!6382)) ((as const (Array Context!1094 Bool)) false)))))

(declare-fun setIsEmpty!8086 () Bool)

(assert (=> setIsEmpty!8086 setRes!8086))

(declare-fun setNonEmpty!8086 () Bool)

(declare-fun tp!371823 () Bool)

(declare-fun setElem!8086 () Context!1094)

(assert (=> setNonEmpty!8086 (= setRes!8086 (and tp!371823 (inv!17049 setElem!8086)))))

(declare-fun setRest!8086 () (InoxSet Context!1094))

(assert (=> setNonEmpty!8086 (= (_2!7141 (h!18053 mapDefault!6382)) ((_ map or) (store ((as const (Array Context!1094 Bool)) false) setElem!8086 true) setRest!8086))))

(assert (=> b!1281707 (= tp!371769 e!821602)))

(assert (= (and b!1281841 condSetEmpty!8086) setIsEmpty!8086))

(assert (= (and b!1281841 (not condSetEmpty!8086)) setNonEmpty!8086))

(assert (= (and b!1281707 ((_ is Cons!12652) mapDefault!6382)) b!1281841))

(declare-fun m!1432611 () Bool)

(assert (=> b!1281841 m!1432611))

(declare-fun m!1432613 () Bool)

(assert (=> setNonEmpty!8086 m!1432613))

(declare-fun e!821621 () Bool)

(declare-fun b!1281848 () Bool)

(declare-fun setRes!8092 () Bool)

(declare-fun tp!371834 () Bool)

(declare-fun mapValue!6388 () List!12718)

(assert (=> b!1281848 (= e!821621 (and (inv!17049 (_2!7140 (_1!7141 (h!18053 mapValue!6388)))) setRes!8092 tp!371834))))

(declare-fun condSetEmpty!8091 () Bool)

(assert (=> b!1281848 (= condSetEmpty!8091 (= (_2!7141 (h!18053 mapValue!6388)) ((as const (Array Context!1094 Bool)) false)))))

(declare-fun setIsEmpty!8091 () Bool)

(assert (=> setIsEmpty!8091 setRes!8092))

(declare-fun tp!371838 () Bool)

(declare-fun setRes!8091 () Bool)

(declare-fun e!821616 () Bool)

(declare-fun mapDefault!6388 () List!12718)

(declare-fun b!1281849 () Bool)

(assert (=> b!1281849 (= e!821616 (and (inv!17049 (_2!7140 (_1!7141 (h!18053 mapDefault!6388)))) setRes!8091 tp!371838))))

(declare-fun condSetEmpty!8092 () Bool)

(assert (=> b!1281849 (= condSetEmpty!8092 (= (_2!7141 (h!18053 mapDefault!6388)) ((as const (Array Context!1094 Bool)) false)))))

(declare-fun condMapEmpty!6388 () Bool)

(assert (=> mapNonEmpty!6382 (= condMapEmpty!6388 (= mapRest!6381 ((as const (Array (_ BitVec 32) List!12718)) mapDefault!6388)))))

(declare-fun mapRes!6388 () Bool)

(assert (=> mapNonEmpty!6382 (= tp!371776 (and e!821616 mapRes!6388))))

(declare-fun setNonEmpty!8091 () Bool)

(declare-fun tp!371835 () Bool)

(declare-fun setElem!8091 () Context!1094)

(assert (=> setNonEmpty!8091 (= setRes!8091 (and tp!371835 (inv!17049 setElem!8091)))))

(declare-fun setRest!8092 () (InoxSet Context!1094))

(assert (=> setNonEmpty!8091 (= (_2!7141 (h!18053 mapDefault!6388)) ((_ map or) (store ((as const (Array Context!1094 Bool)) false) setElem!8091 true) setRest!8092))))

(declare-fun mapIsEmpty!6388 () Bool)

(assert (=> mapIsEmpty!6388 mapRes!6388))

(declare-fun setNonEmpty!8092 () Bool)

(declare-fun tp!371836 () Bool)

(declare-fun setElem!8092 () Context!1094)

(assert (=> setNonEmpty!8092 (= setRes!8092 (and tp!371836 (inv!17049 setElem!8092)))))

(declare-fun setRest!8091 () (InoxSet Context!1094))

(assert (=> setNonEmpty!8092 (= (_2!7141 (h!18053 mapValue!6388)) ((_ map or) (store ((as const (Array Context!1094 Bool)) false) setElem!8092 true) setRest!8091))))

(declare-fun setIsEmpty!8092 () Bool)

(assert (=> setIsEmpty!8092 setRes!8091))

(declare-fun mapNonEmpty!6388 () Bool)

(declare-fun tp!371837 () Bool)

(assert (=> mapNonEmpty!6388 (= mapRes!6388 (and tp!371837 e!821621))))

(declare-fun mapRest!6388 () (Array (_ BitVec 32) List!12718))

(declare-fun mapKey!6388 () (_ BitVec 32))

(assert (=> mapNonEmpty!6388 (= mapRest!6381 (store mapRest!6388 mapKey!6388 mapValue!6388))))

(assert (= (and mapNonEmpty!6382 condMapEmpty!6388) mapIsEmpty!6388))

(assert (= (and mapNonEmpty!6382 (not condMapEmpty!6388)) mapNonEmpty!6388))

(assert (= (and b!1281848 condSetEmpty!8091) setIsEmpty!8091))

(assert (= (and b!1281848 (not condSetEmpty!8091)) setNonEmpty!8092))

(assert (= (and mapNonEmpty!6388 ((_ is Cons!12652) mapValue!6388)) b!1281848))

(assert (= (and b!1281849 condSetEmpty!8092) setIsEmpty!8092))

(assert (= (and b!1281849 (not condSetEmpty!8092)) setNonEmpty!8091))

(assert (= (and mapNonEmpty!6382 ((_ is Cons!12652) mapDefault!6388)) b!1281849))

(declare-fun m!1432615 () Bool)

(assert (=> setNonEmpty!8092 m!1432615))

(declare-fun m!1432617 () Bool)

(assert (=> setNonEmpty!8091 m!1432617))

(declare-fun m!1432619 () Bool)

(assert (=> mapNonEmpty!6388 m!1432619))

(declare-fun m!1432621 () Bool)

(assert (=> b!1281848 m!1432621))

(declare-fun m!1432623 () Bool)

(assert (=> b!1281849 m!1432623))

(declare-fun e!821623 () Bool)

(declare-fun b!1281850 () Bool)

(declare-fun tp!371839 () Bool)

(declare-fun setRes!8093 () Bool)

(assert (=> b!1281850 (= e!821623 (and (inv!17049 (_2!7140 (_1!7141 (h!18053 mapValue!6381)))) setRes!8093 tp!371839))))

(declare-fun condSetEmpty!8093 () Bool)

(assert (=> b!1281850 (= condSetEmpty!8093 (= (_2!7141 (h!18053 mapValue!6381)) ((as const (Array Context!1094 Bool)) false)))))

(declare-fun setIsEmpty!8093 () Bool)

(assert (=> setIsEmpty!8093 setRes!8093))

(declare-fun setNonEmpty!8093 () Bool)

(declare-fun tp!371840 () Bool)

(declare-fun setElem!8093 () Context!1094)

(assert (=> setNonEmpty!8093 (= setRes!8093 (and tp!371840 (inv!17049 setElem!8093)))))

(declare-fun setRest!8093 () (InoxSet Context!1094))

(assert (=> setNonEmpty!8093 (= (_2!7141 (h!18053 mapValue!6381)) ((_ map or) (store ((as const (Array Context!1094 Bool)) false) setElem!8093 true) setRest!8093))))

(assert (=> mapNonEmpty!6382 (= tp!371775 e!821623)))

(assert (= (and b!1281850 condSetEmpty!8093) setIsEmpty!8093))

(assert (= (and b!1281850 (not condSetEmpty!8093)) setNonEmpty!8093))

(assert (= (and mapNonEmpty!6382 ((_ is Cons!12652) mapValue!6381)) b!1281850))

(declare-fun m!1432625 () Bool)

(assert (=> b!1281850 m!1432625))

(declare-fun m!1432627 () Bool)

(assert (=> setNonEmpty!8093 m!1432627))

(declare-fun b_lambda!36569 () Bool)

(assert (= b_lambda!36567 (or d!361179 b_lambda!36569)))

(declare-fun bs!327257 () Bool)

(declare-fun d!361207 () Bool)

(assert (= bs!327257 (and d!361207 d!361179)))

(assert (=> bs!327257 (= (dynLambda!5535 lambda!50235 (singletonSeq!771 #x005D)) (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D)))))

(assert (=> bs!327257 m!1432459))

(declare-fun bs!327258 () Bool)

(declare-fun s!216187 () Bool)

(assert (= bs!327258 (and neg-inst!1030 s!216187)))

(declare-fun res!575274 () Bool)

(declare-fun e!821625 () Bool)

(assert (=> bs!327258 (=> res!575274 e!821625)))

(assert (=> bs!327258 (= res!575274 (not (= (list!4722 x!249463) (list!4722 (singletonSeq!771 #x005D)))))))

(assert (=> bs!327258 (=> true e!821625)))

(declare-fun b!1281851 () Bool)

(assert (=> b!1281851 (= e!821625 (= (toValue!11 KeywordValueInjection!167 x!249463) (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D))))))

(assert (= (and bs!327258 (not res!575274)) b!1281851))

(declare-fun bs!327259 () Bool)

(declare-fun m!1432629 () Bool)

(assert (= bs!327259 (and m!1432629 m!1432491 m!1432489)))

(assert (=> bs!327259 m!1432491))

(declare-fun bs!327260 () Bool)

(declare-fun s!216189 () Bool)

(assert (= bs!327260 (and neg-inst!1030 s!216189)))

(declare-fun res!575275 () Bool)

(declare-fun e!821626 () Bool)

(assert (=> bs!327260 (=> res!575275 e!821626)))

(assert (=> bs!327260 (= res!575275 (not (= (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (list!4722 (singletonSeq!771 #x005D)))))))

(assert (=> bs!327260 (=> true e!821626)))

(declare-fun b!1281852 () Bool)

(assert (=> b!1281852 (= e!821626 (= (toValue!11 KeywordValueInjection!167 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))) (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D))))))

(assert (= (and bs!327260 (not res!575275)) b!1281852))

(declare-fun bs!327261 () Bool)

(declare-fun m!1432631 () Bool)

(assert (= bs!327261 (and m!1432631 m!1432495)))

(assert (=> bs!327261 m!1432495))

(assert (=> bs!327261 m!1432631))

(assert (=> bs!327261 s!216189))

(declare-fun bs!327262 () Bool)

(declare-fun s!216191 () Bool)

(assert (= bs!327262 (and neg-inst!1030 s!216191)))

(declare-fun res!575276 () Bool)

(declare-fun e!821627 () Bool)

(assert (=> bs!327262 (=> res!575276 e!821627)))

(assert (=> bs!327262 (= res!575276 (not (= (list!4722 x!249464) (list!4722 (singletonSeq!771 #x005D)))))))

(assert (=> bs!327262 (=> true e!821627)))

(declare-fun b!1281853 () Bool)

(assert (=> b!1281853 (= e!821627 (= (toValue!11 KeywordValueInjection!167 x!249464) (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D))))))

(assert (= (and bs!327262 (not res!575276)) b!1281853))

(declare-fun bs!327263 () Bool)

(assert (= bs!327263 (and m!1432631 m!1432505 m!1432497)))

(assert (=> bs!327263 m!1432497))

(assert (=> bs!327263 m!1432631))

(assert (=> bs!327263 s!216191))

(declare-fun bs!327264 () Bool)

(assert (= bs!327264 (and m!1432631 m!1432491 m!1432489)))

(assert (=> bs!327264 s!216187))

(declare-fun bs!327265 () Bool)

(declare-fun s!216193 () Bool)

(assert (= bs!327265 (and neg-inst!1030 s!216193)))

(declare-fun res!575277 () Bool)

(declare-fun e!821628 () Bool)

(assert (=> bs!327265 (=> res!575277 e!821628)))

(assert (=> bs!327265 (= res!575277 (not (= (list!4722 (singletonSeq!771 #x005D)) (list!4722 (singletonSeq!771 #x005D)))))))

(assert (=> bs!327265 (=> true e!821628)))

(declare-fun b!1281854 () Bool)

(assert (=> b!1281854 (= e!821628 (= (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D)) (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D))))))

(assert (= (and bs!327265 (not res!575277)) b!1281854))

(assert (=> m!1432631 s!216193))

(declare-fun bs!327266 () Bool)

(declare-fun s!216195 () Bool)

(assert (= bs!327266 (and neg-inst!1030 s!216195)))

(declare-fun res!575278 () Bool)

(declare-fun e!821629 () Bool)

(assert (=> bs!327266 (=> res!575278 e!821629)))

(assert (=> bs!327266 (= res!575278 (not (= (list!4722 lt!423067) (list!4722 (singletonSeq!771 #x005D)))))))

(assert (=> bs!327266 (=> true e!821629)))

(declare-fun b!1281855 () Bool)

(assert (=> b!1281855 (= e!821629 (= (toValue!11 KeywordValueInjection!167 lt!423067) (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D))))))

(assert (= (and bs!327266 (not res!575278)) b!1281855))

(declare-fun bs!327267 () Bool)

(assert (= bs!327267 (and m!1432631 m!1432479)))

(assert (=> bs!327267 m!1432479))

(assert (=> bs!327267 m!1432631))

(assert (=> bs!327267 s!216195))

(declare-fun bs!327268 () Bool)

(assert (= bs!327268 (and m!1432631 m!1432629)))

(assert (=> bs!327268 s!216193))

(declare-fun bs!327269 () Bool)

(declare-fun s!216197 () Bool)

(assert (= bs!327269 (and neg-inst!1030 s!216197)))

(declare-fun res!575279 () Bool)

(declare-fun e!821630 () Bool)

(assert (=> bs!327269 (=> res!575279 e!821630)))

(assert (=> bs!327269 (= res!575279 (not (= (list!4722 x!249465) (list!4722 (singletonSeq!771 #x005D)))))))

(assert (=> bs!327269 (=> true e!821630)))

(declare-fun b!1281856 () Bool)

(assert (=> b!1281856 (= e!821630 (= (toValue!11 KeywordValueInjection!167 x!249465) (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D))))))

(assert (= (and bs!327269 (not res!575279)) b!1281856))

(declare-fun bs!327270 () Bool)

(assert (= bs!327270 (and m!1432631 m!1432507 m!1432499)))

(assert (=> bs!327270 m!1432499))

(assert (=> bs!327270 m!1432631))

(assert (=> bs!327270 s!216197))

(declare-fun bs!327271 () Bool)

(declare-fun s!216199 () Bool)

(assert (= bs!327271 (and neg-inst!1030 s!216199)))

(declare-fun res!575280 () Bool)

(declare-fun e!821631 () Bool)

(assert (=> bs!327271 (=> res!575280 e!821631)))

(assert (=> bs!327271 (= res!575280 (not (= (list!4722 (singletonSeq!771 #x005D)) (list!4722 x!249465))))))

(assert (=> bs!327271 (=> true e!821631)))

(declare-fun b!1281857 () Bool)

(assert (=> b!1281857 (= e!821631 (= (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D)) (toValue!11 KeywordValueInjection!167 x!249465)))))

(assert (= (and bs!327271 (not res!575280)) b!1281857))

(assert (=> bs!327270 m!1432631))

(assert (=> bs!327270 m!1432499))

(assert (=> bs!327270 s!216199))

(declare-fun bs!327272 () Bool)

(declare-fun s!216201 () Bool)

(assert (= bs!327272 (and neg-inst!1030 s!216201)))

(declare-fun res!575281 () Bool)

(declare-fun e!821632 () Bool)

(assert (=> bs!327272 (=> res!575281 e!821632)))

(assert (=> bs!327272 (= res!575281 (not (= (list!4722 (singletonSeq!771 #x005D)) (list!4722 lt!423067))))))

(assert (=> bs!327272 (=> true e!821632)))

(declare-fun b!1281858 () Bool)

(assert (=> b!1281858 (= e!821632 (= (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D)) (toValue!11 KeywordValueInjection!167 lt!423067)))))

(assert (= (and bs!327272 (not res!575281)) b!1281858))

(assert (=> bs!327267 m!1432631))

(assert (=> bs!327267 m!1432479))

(assert (=> bs!327267 s!216201))

(declare-fun bs!327273 () Bool)

(declare-fun s!216203 () Bool)

(assert (= bs!327273 (and neg-inst!1030 s!216203)))

(declare-fun res!575282 () Bool)

(declare-fun e!821633 () Bool)

(assert (=> bs!327273 (=> res!575282 e!821633)))

(assert (=> bs!327273 (= res!575282 (not (= (list!4722 (singletonSeq!771 #x005D)) (list!4722 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463))))))))

(assert (=> bs!327273 (=> true e!821633)))

(declare-fun b!1281859 () Bool)

(assert (=> b!1281859 (= e!821633 (= (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D)) (toValue!11 KeywordValueInjection!167 (toCharacters!4 KeywordValueInjection!167 (toValue!11 KeywordValueInjection!167 x!249463)))))))

(assert (= (and bs!327273 (not res!575282)) b!1281859))

(assert (=> bs!327261 m!1432631))

(assert (=> bs!327261 m!1432495))

(assert (=> bs!327261 s!216203))

(assert (=> m!1432631 s!216193))

(declare-fun bs!327274 () Bool)

(declare-fun s!216205 () Bool)

(assert (= bs!327274 (and neg-inst!1030 s!216205)))

(declare-fun res!575283 () Bool)

(declare-fun e!821634 () Bool)

(assert (=> bs!327274 (=> res!575283 e!821634)))

(assert (=> bs!327274 (= res!575283 (not (= (list!4722 (singletonSeq!771 #x005D)) (list!4722 x!249464))))))

(assert (=> bs!327274 (=> true e!821634)))

(declare-fun b!1281860 () Bool)

(assert (=> b!1281860 (= e!821634 (= (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D)) (toValue!11 KeywordValueInjection!167 x!249464)))))

(assert (= (and bs!327274 (not res!575283)) b!1281860))

(assert (=> bs!327263 m!1432631))

(assert (=> bs!327263 m!1432497))

(assert (=> bs!327263 s!216205))

(assert (=> bs!327268 s!216193))

(declare-fun bs!327275 () Bool)

(declare-fun s!216207 () Bool)

(assert (= bs!327275 (and neg-inst!1030 s!216207)))

(declare-fun res!575284 () Bool)

(declare-fun e!821635 () Bool)

(assert (=> bs!327275 (=> res!575284 e!821635)))

(assert (=> bs!327275 (= res!575284 (not (= (list!4722 (singletonSeq!771 #x005D)) (list!4722 x!249463))))))

(assert (=> bs!327275 (=> true e!821635)))

(declare-fun b!1281861 () Bool)

(assert (=> b!1281861 (= e!821635 (= (toValue!11 KeywordValueInjection!167 (singletonSeq!771 #x005D)) (toValue!11 KeywordValueInjection!167 x!249463)))))

(assert (= (and bs!327275 (not res!575284)) b!1281861))

(assert (=> bs!327264 m!1432631))

(assert (=> bs!327264 m!1432491))

(assert (=> bs!327264 s!216207))

(assert (=> bs!327259 m!1432631))

(assert (=> bs!327259 s!216187))

(declare-fun bs!327276 () Bool)

(assert (= bs!327276 (and m!1432629 m!1432507 m!1432499)))

(assert (=> bs!327276 s!216197))

(declare-fun bs!327277 () Bool)

(assert (= bs!327277 (and m!1432629 m!1432505 m!1432497)))

(assert (=> bs!327277 s!216191))

(declare-fun bs!327278 () Bool)

(assert (= bs!327278 (and m!1432629 m!1432495)))

(assert (=> bs!327278 s!216189))

(declare-fun bs!327279 () Bool)

(assert (= bs!327279 (and m!1432629 m!1432479)))

(assert (=> bs!327279 s!216195))

(declare-fun bs!327280 () Bool)

(assert (= bs!327280 m!1432629))

(assert (=> bs!327280 s!216193))

(assert (=> bs!327279 s!216201))

(assert (=> bs!327276 s!216199))

(assert (=> bs!327278 s!216203))

(assert (=> bs!327259 s!216207))

(assert (=> bs!327277 s!216205))

(assert (=> bs!327280 s!216193))

(assert (=> bs!327257 m!1432629))

(assert (=> d!361185 d!361207))

(check-sat (not bs!327275) (not b!1281732) (not b!1281759) (not bs!327239) (not b!1281825) (not bs!327210) (not b!1281768) (not b!1281855) (not b!1281851) (not b!1281860) (not b!1281769) (not bs!327215) (not setNonEmpty!8092) (not b!1281856) (not b!1281779) (not b!1281809) (not b!1281775) (not bs!327266) (not b!1281770) (not b!1281802) (not b!1281858) (not d!361169) (not b!1281762) (not b!1281826) (not bs!327260) (not b!1281854) b_and!84975 (not bs!327272) (not mapNonEmpty!6385) (not b!1281780) (not b!1281840) (not bs!327230) (not b!1281783) (not setNonEmpty!8074) (not bs!327207) (not b!1281784) (not b_next!30535) (not b!1281736) (not setNonEmpty!8084) (not b!1281781) (not b!1281850) (not bs!327265) (not d!361201) (not b!1281848) (not bs!327236) (not b!1281777) (not b!1281761) b_and!84981 (not d!361195) (not b!1281771) (not b!1281765) (not b_next!30541) (not bs!327258) (not bs!327238) (not bs!327214) (not b!1281785) (not setNonEmpty!8083) (not b!1281767) (not b!1281773) (not b!1281861) (not setNonEmpty!8086) (not setNonEmpty!8081) (not d!361175) (not setNonEmpty!8082) (not bs!327269) (not bs!327203) (not bs!327234) b_and!84979 (not b!1281782) (not bs!327241) (not bs!327208) (not b!1281859) (not b!1281760) (not b!1281853) (not mapNonEmpty!6388) (not b!1281841) (not bs!327271) (not bs!327224) (not d!361193) (not b_next!30539) (not d!361183) (not bs!327232) (not setNonEmpty!8093) (not bs!327229) (not bs!327262) (not b!1281766) (not b!1281849) (not b!1281839) (not b!1281787) (not bs!327206) (not b!1281776) (not b!1281763) (not b_next!30537) (not b!1281815) (not d!361181) (not b!1281772) (not b!1281852) (not bs!327221) (not b!1281812) (not b!1281793) (not d!361179) (not b!1281831) (not bs!327217) (not b!1281838) (not bs!327257) (not bs!327213) (not b!1281733) (not bs!327219) b_and!84977 (not setNonEmpty!8075) (not bs!327240) (not bs!327222) (not setNonEmpty!8085) (not bs!327274) (not bs!327201) (not b!1281836) (not d!361187) (not b!1281786) (not b!1281774) (not b_lambda!36569) (not b!1281764) (not b!1281837) (not setNonEmpty!8078) (not setNonEmpty!8091) (not bs!327273) (not bs!327223) (not b!1281857) (not bs!327204) (not bs!327212) (not b!1281778) (not b!1281818))
(check-sat b_and!84975 (not b_next!30535) b_and!84981 (not b_next!30541) b_and!84979 (not b_next!30539) (not b_next!30537) b_and!84977)
