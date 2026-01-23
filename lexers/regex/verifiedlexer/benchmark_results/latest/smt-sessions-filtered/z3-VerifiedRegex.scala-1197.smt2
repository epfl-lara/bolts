; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62280 () Bool)

(assert start!62280)

(declare-fun b!636078 () Bool)

(declare-fun b_free!18653 () Bool)

(declare-fun b_next!18677 () Bool)

(assert (=> b!636078 (= b_free!18653 (not b_next!18677))))

(declare-fun tp!197986 () Bool)

(declare-fun b_and!62447 () Bool)

(assert (=> b!636078 (= tp!197986 b_and!62447)))

(declare-fun b!636071 () Bool)

(declare-fun b_free!18655 () Bool)

(declare-fun b_next!18679 () Bool)

(assert (=> b!636071 (= b_free!18655 (not b_next!18679))))

(declare-fun tp!197978 () Bool)

(declare-fun b_and!62449 () Bool)

(assert (=> b!636071 (= tp!197978 b_and!62449)))

(declare-fun b!636063 () Bool)

(declare-fun b_free!18657 () Bool)

(declare-fun b_next!18681 () Bool)

(assert (=> b!636063 (= b_free!18657 (not b_next!18681))))

(declare-fun tp!197989 () Bool)

(declare-fun b_and!62451 () Bool)

(assert (=> b!636063 (= tp!197989 b_and!62451)))

(declare-fun b!636069 () Bool)

(declare-fun b_free!18659 () Bool)

(declare-fun b_next!18683 () Bool)

(assert (=> b!636069 (= b_free!18659 (not b_next!18683))))

(declare-fun tp!197985 () Bool)

(declare-fun b_and!62453 () Bool)

(assert (=> b!636069 (= tp!197985 b_and!62453)))

(declare-fun b!636052 () Bool)

(declare-fun e!387237 () Bool)

(declare-fun tp!197979 () Bool)

(declare-fun mapRes!2514 () Bool)

(assert (=> b!636052 (= e!387237 (and tp!197979 mapRes!2514))))

(declare-fun condMapEmpty!2515 () Bool)

(declare-datatypes ((Hashable!609 0))(
  ( (HashableExt!608 (__x!4780 Int)) )
))
(declare-datatypes ((Regex!1699 0))(
  ( (ElementMatch!1699 (c!116497 (_ BitVec 16))) (Concat!3097 (regOne!3910 Regex!1699) (regTwo!3910 Regex!1699)) (EmptyExpr!1699) (Star!1699 (reg!2028 Regex!1699)) (EmptyLang!1699) (Union!1699 (regOne!3911 Regex!1699) (regTwo!3911 Regex!1699)) )
))
(declare-datatypes ((List!6759 0))(
  ( (Nil!6745) (Cons!6745 (h!12146 Regex!1699) (t!84157 List!6759)) )
))
(declare-datatypes ((Context!370 0))(
  ( (Context!371 (exprs!685 List!6759)) )
))
(declare-datatypes ((tuple2!7312 0))(
  ( (tuple2!7313 (_1!3953 Context!370) (_2!3953 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7314 0))(
  ( (tuple2!7315 (_1!3954 tuple2!7312) (_2!3954 (InoxSet Context!370))) )
))
(declare-datatypes ((List!6760 0))(
  ( (Nil!6746) (Cons!6746 (h!12147 tuple2!7314) (t!84158 List!6760)) )
))
(declare-datatypes ((array!2435 0))(
  ( (array!2436 (arr!1108 (Array (_ BitVec 32) List!6760)) (size!5302 (_ BitVec 32))) )
))
(declare-datatypes ((array!2437 0))(
  ( (array!2438 (arr!1109 (Array (_ BitVec 32) (_ BitVec 64))) (size!5303 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1274 0))(
  ( (LongMapFixedSize!1275 (defaultEntry!993 Int) (mask!2366 (_ BitVec 32)) (extraKeys!884 (_ BitVec 32)) (zeroValue!894 List!6760) (minValue!894 List!6760) (_size!1383 (_ BitVec 32)) (_keys!931 array!2437) (_values!916 array!2435) (_vacant!698 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2489 0))(
  ( (Cell!2490 (v!16836 LongMapFixedSize!1274)) )
))
(declare-datatypes ((MutLongMap!637 0))(
  ( (LongMap!637 (underlying!1457 Cell!2489)) (MutLongMapExt!636 (__x!4781 Int)) )
))
(declare-datatypes ((Cell!2491 0))(
  ( (Cell!2492 (v!16837 MutLongMap!637)) )
))
(declare-datatypes ((MutableMap!609 0))(
  ( (MutableMapExt!608 (__x!4782 Int)) (HashMap!609 (underlying!1458 Cell!2491) (hashF!2517 Hashable!609) (_size!1384 (_ BitVec 32)) (defaultValue!760 Int)) )
))
(declare-datatypes ((CacheUp!270 0))(
  ( (CacheUp!271 (cache!996 MutableMap!609)) )
))
(declare-fun cacheUp!351 () CacheUp!270)

(declare-fun mapDefault!2514 () List!6760)

(assert (=> b!636052 (= condMapEmpty!2515 (= (arr!1108 (_values!916 (v!16836 (underlying!1457 (v!16837 (underlying!1458 (cache!996 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6760)) mapDefault!2514)))))

(declare-fun b!636053 () Bool)

(declare-fun res!276356 () Bool)

(declare-fun e!387242 () Bool)

(assert (=> b!636053 (=> res!276356 e!387242)))

(declare-datatypes ((String!8727 0))(
  ( (String!8728 (value!43999 String)) )
))
(declare-datatypes ((List!6761 0))(
  ( (Nil!6747) (Cons!6747 (h!12148 (_ BitVec 16)) (t!84159 List!6761)) )
))
(declare-datatypes ((TokenValue!1398 0))(
  ( (FloatLiteralValue!2796 (text!10231 List!6761)) (TokenValueExt!1397 (__x!4783 Int)) (Broken!6990 (value!44000 List!6761)) (Object!1411) (End!1398) (Def!1398) (Underscore!1398) (Match!1398) (Else!1398) (Error!1398) (Case!1398) (If!1398) (Extends!1398) (Abstract!1398) (Class!1398) (Val!1398) (DelimiterValue!2796 (del!1458 List!6761)) (KeywordValue!1404 (value!44001 List!6761)) (CommentValue!2796 (value!44002 List!6761)) (WhitespaceValue!2796 (value!44003 List!6761)) (IndentationValue!1398 (value!44004 List!6761)) (String!8729) (Int32!1398) (Broken!6991 (value!44005 List!6761)) (Boolean!1399) (Unit!11799) (OperatorValue!1401 (op!1458 List!6761)) (IdentifierValue!2796 (value!44006 List!6761)) (IdentifierValue!2797 (value!44007 List!6761)) (WhitespaceValue!2797 (value!44008 List!6761)) (True!2796) (False!2796) (Broken!6992 (value!44009 List!6761)) (Broken!6993 (value!44010 List!6761)) (True!2797) (RightBrace!1398) (RightBracket!1398) (Colon!1398) (Null!1398) (Comma!1398) (LeftBracket!1398) (False!2797) (LeftBrace!1398) (ImaginaryLiteralValue!1398 (text!10232 List!6761)) (StringLiteralValue!4194 (value!44011 List!6761)) (EOFValue!1398 (value!44012 List!6761)) (IdentValue!1398 (value!44013 List!6761)) (DelimiterValue!2797 (value!44014 List!6761)) (DedentValue!1398 (value!44015 List!6761)) (NewLineValue!1398 (value!44016 List!6761)) (IntegerValue!4194 (value!44017 (_ BitVec 32)) (text!10233 List!6761)) (IntegerValue!4195 (value!44018 Int) (text!10234 List!6761)) (Times!1398) (Or!1398) (Equal!1398) (Minus!1398) (Broken!6994 (value!44019 List!6761)) (And!1398) (Div!1398) (LessEqual!1398) (Mod!1398) (Concat!3098) (Not!1398) (Plus!1398) (SpaceValue!1398 (value!44020 List!6761)) (IntegerValue!4196 (value!44021 Int) (text!10235 List!6761)) (StringLiteralValue!4195 (text!10236 List!6761)) (FloatLiteralValue!2797 (text!10237 List!6761)) (BytesLiteralValue!1398 (value!44022 List!6761)) (CommentValue!2797 (value!44023 List!6761)) (StringLiteralValue!4196 (value!44024 List!6761)) (ErrorTokenValue!1398 (msg!1459 List!6761)) )
))
(declare-datatypes ((IArray!4519 0))(
  ( (IArray!4520 (innerList!2317 List!6761)) )
))
(declare-datatypes ((Conc!2259 0))(
  ( (Node!2259 (left!5390 Conc!2259) (right!5720 Conc!2259) (csize!4748 Int) (cheight!2470 Int)) (Leaf!3457 (xs!4900 IArray!4519) (csize!4749 Int)) (Empty!2259) )
))
(declare-datatypes ((BalanceConc!4530 0))(
  ( (BalanceConc!4531 (c!116498 Conc!2259)) )
))
(declare-datatypes ((TokenValueInjection!2548 0))(
  ( (TokenValueInjection!2549 (toValue!2305 Int) (toChars!2164 Int)) )
))
(declare-datatypes ((Rule!2528 0))(
  ( (Rule!2529 (regex!1364 Regex!1699) (tag!1626 String!8727) (isSeparator!1364 Bool) (transformation!1364 TokenValueInjection!2548)) )
))
(declare-datatypes ((Token!2450 0))(
  ( (Token!2451 (value!44025 TokenValue!1398) (rule!2159 Rule!2528) (size!5304 Int) (originalCharacters!1396 List!6761)) )
))
(declare-datatypes ((List!6762 0))(
  ( (Nil!6748) (Cons!6748 (h!12149 Rule!2528) (t!84160 List!6762)) )
))
(declare-datatypes ((List!6763 0))(
  ( (Nil!6749) (Cons!6749 (h!12150 Token!2450) (t!84161 List!6763)) )
))
(declare-datatypes ((IArray!4521 0))(
  ( (IArray!4522 (innerList!2318 List!6763)) )
))
(declare-datatypes ((Conc!2260 0))(
  ( (Node!2260 (left!5391 Conc!2260) (right!5721 Conc!2260) (csize!4750 Int) (cheight!2471 Int)) (Leaf!3458 (xs!4901 IArray!4521) (csize!4751 Int)) (Empty!2260) )
))
(declare-datatypes ((BalanceConc!4532 0))(
  ( (BalanceConc!4533 (c!116499 Conc!2260)) )
))
(declare-datatypes ((PrintableTokens!108 0))(
  ( (PrintableTokens!109 (rules!8183 List!6762) (tokens!1191 BalanceConc!4532)) )
))
(declare-datatypes ((tuple3!492 0))(
  ( (tuple3!493 (_1!3955 Regex!1699) (_2!3955 Context!370) (_3!297 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7316 0))(
  ( (tuple2!7317 (_1!3956 tuple3!492) (_2!3956 (InoxSet Context!370))) )
))
(declare-datatypes ((List!6764 0))(
  ( (Nil!6750) (Cons!6750 (h!12151 tuple2!7316) (t!84162 List!6764)) )
))
(declare-datatypes ((array!2439 0))(
  ( (array!2440 (arr!1110 (Array (_ BitVec 32) List!6764)) (size!5305 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1276 0))(
  ( (LongMapFixedSize!1277 (defaultEntry!994 Int) (mask!2367 (_ BitVec 32)) (extraKeys!885 (_ BitVec 32)) (zeroValue!895 List!6764) (minValue!895 List!6764) (_size!1385 (_ BitVec 32)) (_keys!932 array!2437) (_values!917 array!2439) (_vacant!699 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2493 0))(
  ( (Cell!2494 (v!16838 LongMapFixedSize!1276)) )
))
(declare-datatypes ((MutLongMap!638 0))(
  ( (LongMap!638 (underlying!1459 Cell!2493)) (MutLongMapExt!637 (__x!4784 Int)) )
))
(declare-datatypes ((Cell!2495 0))(
  ( (Cell!2496 (v!16839 MutLongMap!638)) )
))
(declare-datatypes ((Hashable!610 0))(
  ( (HashableExt!609 (__x!4785 Int)) )
))
(declare-datatypes ((MutableMap!610 0))(
  ( (MutableMapExt!609 (__x!4786 Int)) (HashMap!610 (underlying!1460 Cell!2495) (hashF!2518 Hashable!610) (_size!1386 (_ BitVec 32)) (defaultValue!761 Int)) )
))
(declare-datatypes ((CacheDown!270 0))(
  ( (CacheDown!271 (cache!997 MutableMap!610)) )
))
(declare-datatypes ((Option!1647 0))(
  ( (None!1646) (Some!1646 (v!16840 PrintableTokens!108)) )
))
(declare-datatypes ((tuple3!494 0))(
  ( (tuple3!495 (_1!3957 Option!1647) (_2!3957 CacheUp!270) (_3!298 CacheDown!270)) )
))
(declare-fun lt!271870 () tuple3!494)

(declare-fun usesJsonRules!0 (PrintableTokens!108) Bool)

(assert (=> b!636053 (= res!276356 (not (usesJsonRules!0 (v!16840 (_1!3957 lt!271870)))))))

(declare-fun b!636054 () Bool)

(declare-fun e!387234 () Bool)

(assert (=> b!636054 (= e!387242 e!387234)))

(declare-fun res!276349 () Bool)

(assert (=> b!636054 (=> res!276349 e!387234)))

(declare-fun lt!271867 () Option!1647)

(get-info :version)

(assert (=> b!636054 (= res!276349 (not ((_ is Some!1646) lt!271867)))))

(declare-datatypes ((tuple2!7318 0))(
  ( (tuple2!7319 (_1!3958 Int) (_2!3958 PrintableTokens!108)) )
))
(declare-datatypes ((List!6765 0))(
  ( (Nil!6751) (Cons!6751 (h!12152 tuple2!7318) (t!84163 List!6765)) )
))
(declare-datatypes ((IArray!4523 0))(
  ( (IArray!4524 (innerList!2319 List!6765)) )
))
(declare-datatypes ((Conc!2261 0))(
  ( (Node!2261 (left!5392 Conc!2261) (right!5722 Conc!2261) (csize!4752 Int) (cheight!2472 Int)) (Leaf!3459 (xs!4902 IArray!4523) (csize!4753 Int)) (Empty!2261) )
))
(declare-datatypes ((BalanceConc!4534 0))(
  ( (BalanceConc!4535 (c!116500 Conc!2261)) )
))
(declare-fun lt!271876 () BalanceConc!4534)

(declare-fun lt!271880 () List!6762)

(declare-fun lambda!18023 () Int)

(declare-datatypes ((List!6766 0))(
  ( (Nil!6752) (Cons!6752 (h!12153 PrintableTokens!108) (t!84164 List!6766)) )
))
(declare-datatypes ((IArray!4525 0))(
  ( (IArray!4526 (innerList!2320 List!6766)) )
))
(declare-datatypes ((Conc!2262 0))(
  ( (Node!2262 (left!5393 Conc!2262) (right!5723 Conc!2262) (csize!4754 Int) (cheight!2473 Int)) (Leaf!3460 (xs!4903 IArray!4525) (csize!4755 Int)) (Empty!2262) )
))
(declare-datatypes ((BalanceConc!4536 0))(
  ( (BalanceConc!4537 (c!116501 Conc!2262)) )
))
(declare-fun recombineSlicesWithSep!0 (BalanceConc!4536 PrintableTokens!108 PrintableTokens!108) Option!1647)

(declare-fun map!1449 (BalanceConc!4534 Int) BalanceConc!4536)

(declare-fun emptyPrintableTokens!7 (List!6762) PrintableTokens!108)

(assert (=> b!636054 (= lt!271867 (recombineSlicesWithSep!0 (map!1449 lt!271876 lambda!18023) (v!16840 (_1!3957 lt!271870)) (emptyPrintableTokens!7 lt!271880)))))

(declare-fun mapIsEmpty!2514 () Bool)

(assert (=> mapIsEmpty!2514 mapRes!2514))

(declare-fun b!636055 () Bool)

(declare-fun res!276348 () Bool)

(declare-fun e!387236 () Bool)

(assert (=> b!636055 (=> (not res!276348) (not e!387236))))

(declare-fun printableTokens!2 () PrintableTokens!108)

(assert (=> b!636055 (= res!276348 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!636056 () Bool)

(declare-fun e!387241 () Bool)

(assert (=> b!636056 (= e!387241 true)))

(declare-fun lt!271865 () List!6763)

(declare-fun lt!271866 () Option!1647)

(declare-fun list!2857 (BalanceConc!4532) List!6763)

(assert (=> b!636056 (= lt!271865 (list!2857 (tokens!1191 (v!16840 lt!271866))))))

(declare-fun lt!271864 () List!6763)

(declare-fun lt!271873 () BalanceConc!4530)

(declare-datatypes ((tuple2!7320 0))(
  ( (tuple2!7321 (_1!3959 BalanceConc!4532) (_2!3959 BalanceConc!4530)) )
))
(declare-datatypes ((LexerInterface!1244 0))(
  ( (LexerInterfaceExt!1241 (__x!4787 Int)) (Lexer!1242) )
))
(declare-fun lex!575 (LexerInterface!1244 List!6762 BalanceConc!4530) tuple2!7320)

(assert (=> b!636056 (= lt!271864 (list!2857 (_1!3959 (lex!575 Lexer!1242 lt!271880 lt!271873))))))

(declare-fun b!636057 () Bool)

(declare-fun e!387238 () Bool)

(assert (=> b!636057 (= e!387238 e!387241)))

(declare-fun res!276351 () Bool)

(assert (=> b!636057 (=> res!276351 e!387241)))

(assert (=> b!636057 (= res!276351 (not (usesJsonRules!0 (v!16840 lt!271866))))))

(declare-fun print!493 (PrintableTokens!108) BalanceConc!4530)

(assert (=> b!636057 (= lt!271873 (print!493 (v!16840 lt!271866)))))

(declare-fun b!636058 () Bool)

(declare-fun res!276353 () Bool)

(assert (=> b!636058 (=> res!276353 e!387242)))

(declare-fun lt!271862 () tuple3!494)

(assert (=> b!636058 (= res!276353 (not (usesJsonRules!0 (v!16840 (_1!3957 lt!271862)))))))

(declare-fun b!636059 () Bool)

(declare-fun e!387230 () Bool)

(declare-fun e!387248 () Bool)

(assert (=> b!636059 (= e!387230 e!387248)))

(declare-fun b!636060 () Bool)

(declare-fun e!387245 () Bool)

(declare-fun e!387251 () Bool)

(declare-fun lt!271877 () MutLongMap!638)

(assert (=> b!636060 (= e!387245 (and e!387251 ((_ is LongMap!638) lt!271877)))))

(declare-fun cacheDown!364 () CacheDown!270)

(assert (=> b!636060 (= lt!271877 (v!16839 (underlying!1460 (cache!997 cacheDown!364))))))

(declare-fun b!636061 () Bool)

(declare-fun res!276352 () Bool)

(assert (=> b!636061 (=> (not res!276352) (not e!387236))))

(declare-fun rulesInvariant!1179 (LexerInterface!1244 List!6762) Bool)

(assert (=> b!636061 (= res!276352 (rulesInvariant!1179 Lexer!1242 lt!271880))))

(declare-fun mapIsEmpty!2515 () Bool)

(declare-fun mapRes!2515 () Bool)

(assert (=> mapIsEmpty!2515 mapRes!2515))

(declare-fun b!636062 () Bool)

(declare-fun res!276355 () Bool)

(assert (=> b!636062 (=> res!276355 e!387241)))

(assert (=> b!636062 (= res!276355 (not (= lt!271880 (rules!8183 (v!16840 lt!271866)))))))

(declare-fun tp!197977 () Bool)

(declare-fun e!387250 () Bool)

(declare-fun tp!197987 () Bool)

(declare-fun e!387246 () Bool)

(declare-fun array_inv!804 (array!2437) Bool)

(declare-fun array_inv!805 (array!2439) Bool)

(assert (=> b!636063 (= e!387246 (and tp!197989 tp!197987 tp!197977 (array_inv!804 (_keys!932 (v!16838 (underlying!1459 (v!16839 (underlying!1460 (cache!997 cacheDown!364))))))) (array_inv!805 (_values!917 (v!16838 (underlying!1459 (v!16839 (underlying!1460 (cache!997 cacheDown!364))))))) e!387250))))

(declare-fun b!636064 () Bool)

(declare-fun e!387229 () Bool)

(assert (=> b!636064 (= e!387229 e!387236)))

(declare-fun res!276350 () Bool)

(assert (=> b!636064 (=> (not res!276350) (not e!387236))))

(declare-fun isEmpty!4659 (List!6762) Bool)

(assert (=> b!636064 (= res!276350 (not (isEmpty!4659 lt!271880)))))

(declare-datatypes ((JsonLexer!172 0))(
  ( (JsonLexer!173) )
))
(declare-fun rules!109 (JsonLexer!172) List!6762)

(assert (=> b!636064 (= lt!271880 (rules!109 JsonLexer!173))))

(declare-fun b!636065 () Bool)

(declare-fun e!387239 () Bool)

(assert (=> b!636065 (= e!387251 e!387239)))

(declare-fun b!636066 () Bool)

(declare-fun e!387233 () Bool)

(declare-fun e!387228 () Bool)

(assert (=> b!636066 (= e!387233 e!387228)))

(declare-fun b!636067 () Bool)

(declare-fun e!387231 () Bool)

(declare-fun tp!197975 () Bool)

(declare-fun inv!8601 (Conc!2260) Bool)

(assert (=> b!636067 (= e!387231 (and (inv!8601 (c!116499 (tokens!1191 printableTokens!2))) tp!197975))))

(declare-fun mapNonEmpty!2514 () Bool)

(declare-fun tp!197974 () Bool)

(declare-fun tp!197980 () Bool)

(assert (=> mapNonEmpty!2514 (= mapRes!2515 (and tp!197974 tp!197980))))

(declare-fun mapValue!2515 () List!6764)

(declare-fun mapRest!2515 () (Array (_ BitVec 32) List!6764))

(declare-fun mapKey!2514 () (_ BitVec 32))

(assert (=> mapNonEmpty!2514 (= (arr!1110 (_values!917 (v!16838 (underlying!1459 (v!16839 (underlying!1460 (cache!997 cacheDown!364))))))) (store mapRest!2515 mapKey!2514 mapValue!2515))))

(declare-fun b!636068 () Bool)

(declare-fun e!387249 () Bool)

(declare-fun e!387243 () Bool)

(declare-fun lt!271875 () MutLongMap!637)

(assert (=> b!636068 (= e!387249 (and e!387243 ((_ is LongMap!637) lt!271875)))))

(assert (=> b!636068 (= lt!271875 (v!16837 (underlying!1458 (cache!996 cacheUp!351))))))

(assert (=> b!636069 (= e!387248 (and e!387245 tp!197985))))

(declare-fun res!276357 () Bool)

(assert (=> start!62280 (=> (not res!276357) (not e!387229))))

(declare-fun lt!271863 () Int)

(assert (=> start!62280 (= res!276357 (> lt!271863 0))))

(declare-fun size!5306 (PrintableTokens!108) Int)

(assert (=> start!62280 (= lt!271863 (size!5306 printableTokens!2))))

(assert (=> start!62280 e!387229))

(declare-fun e!387247 () Bool)

(declare-fun inv!8602 (PrintableTokens!108) Bool)

(assert (=> start!62280 (and (inv!8602 printableTokens!2) e!387247)))

(declare-fun inv!8603 (CacheDown!270) Bool)

(assert (=> start!62280 (and (inv!8603 cacheDown!364) e!387230)))

(declare-fun inv!8604 (CacheUp!270) Bool)

(assert (=> start!62280 (and (inv!8604 cacheUp!351) e!387233)))

(declare-fun b!636070 () Bool)

(assert (=> b!636070 (= e!387234 e!387238)))

(declare-fun res!276358 () Bool)

(assert (=> b!636070 (=> res!276358 e!387238)))

(assert (=> b!636070 (= res!276358 (not ((_ is Some!1646) lt!271866)))))

(declare-fun lt!271868 () tuple3!494)

(declare-fun encloseInSep!0 (PrintableTokens!108 PrintableTokens!108 PrintableTokens!108) Option!1647)

(assert (=> b!636070 (= lt!271866 (encloseInSep!0 (v!16840 lt!271867) (v!16840 (_1!3957 lt!271862)) (v!16840 (_1!3957 lt!271868))))))

(declare-fun tp!197988 () Bool)

(declare-fun tp!197984 () Bool)

(declare-fun e!387244 () Bool)

(declare-fun array_inv!806 (array!2435) Bool)

(assert (=> b!636071 (= e!387244 (and tp!197978 tp!197988 tp!197984 (array_inv!804 (_keys!931 (v!16836 (underlying!1457 (v!16837 (underlying!1458 (cache!996 cacheUp!351))))))) (array_inv!806 (_values!916 (v!16836 (underlying!1457 (v!16837 (underlying!1458 (cache!996 cacheUp!351))))))) e!387237))))

(declare-fun b!636072 () Bool)

(declare-fun e!387232 () Bool)

(assert (=> b!636072 (= e!387243 e!387232)))

(declare-fun b!636073 () Bool)

(declare-fun res!276354 () Bool)

(assert (=> b!636073 (=> res!276354 e!387242)))

(assert (=> b!636073 (= res!276354 (not (usesJsonRules!0 (v!16840 (_1!3957 lt!271868)))))))

(declare-fun b!636074 () Bool)

(declare-fun tp!197981 () Bool)

(declare-fun inv!8605 (BalanceConc!4532) Bool)

(assert (=> b!636074 (= e!387247 (and tp!197981 (inv!8605 (tokens!1191 printableTokens!2)) e!387231))))

(declare-fun mapNonEmpty!2515 () Bool)

(declare-fun tp!197983 () Bool)

(declare-fun tp!197982 () Bool)

(assert (=> mapNonEmpty!2515 (= mapRes!2514 (and tp!197983 tp!197982))))

(declare-fun mapRest!2514 () (Array (_ BitVec 32) List!6760))

(declare-fun mapValue!2514 () List!6760)

(declare-fun mapKey!2515 () (_ BitVec 32))

(assert (=> mapNonEmpty!2515 (= (arr!1108 (_values!916 (v!16836 (underlying!1457 (v!16837 (underlying!1458 (cache!996 cacheUp!351))))))) (store mapRest!2514 mapKey!2515 mapValue!2514))))

(declare-fun b!636075 () Bool)

(declare-fun tp!197976 () Bool)

(assert (=> b!636075 (= e!387250 (and tp!197976 mapRes!2515))))

(declare-fun condMapEmpty!2514 () Bool)

(declare-fun mapDefault!2515 () List!6764)

(assert (=> b!636075 (= condMapEmpty!2514 (= (arr!1110 (_values!917 (v!16838 (underlying!1459 (v!16839 (underlying!1460 (cache!997 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6764)) mapDefault!2515)))))

(declare-fun b!636076 () Bool)

(assert (=> b!636076 (= e!387239 e!387246)))

(declare-fun b!636077 () Bool)

(assert (=> b!636077 (= e!387232 e!387244)))

(assert (=> b!636078 (= e!387228 (and e!387249 tp!197986))))

(declare-fun b!636079 () Bool)

(assert (=> b!636079 (= e!387236 (not e!387242))))

(declare-fun res!276359 () Bool)

(assert (=> b!636079 (=> res!276359 e!387242)))

(assert (=> b!636079 (= res!276359 (or (not ((_ is Some!1646) (_1!3957 lt!271870))) (not ((_ is Some!1646) (_1!3957 lt!271862))) (not ((_ is Some!1646) (_1!3957 lt!271868)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!270 CacheDown!270) tuple3!494)

(assert (=> b!636079 (= lt!271868 (createRightBracketSeparator!0 (_2!3957 lt!271862) (_3!298 lt!271862)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!270 CacheDown!270) tuple3!494)

(assert (=> b!636079 (= lt!271862 (createLeftBracketSeparator!0 (_2!3957 lt!271870) (_3!298 lt!271870)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!270 CacheDown!270) tuple3!494)

(assert (=> b!636079 (= lt!271870 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-fun lambda!18024 () Int)

(declare-fun forall!1707 (BalanceConc!4536 Int) Bool)

(assert (=> b!636079 (forall!1707 (map!1449 lt!271876 lambda!18023) lambda!18024)))

(declare-fun lt!271879 () List!6765)

(declare-datatypes ((Unit!11800 0))(
  ( (Unit!11801) )
))
(declare-fun lt!271861 () Unit!11800)

(declare-fun mapPred!33 (List!6765 Int Int) Unit!11800)

(assert (=> b!636079 (= lt!271861 (mapPred!33 lt!271879 lambda!18023 lambda!18024))))

(declare-fun lt!271872 () Unit!11800)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6765) Unit!11800)

(assert (=> b!636079 (= lt!271872 (lemmaRemoveIdsPreservesRules!0 lt!271879))))

(declare-fun list!2858 (BalanceConc!4534) List!6765)

(assert (=> b!636079 (= lt!271879 (list!2858 lt!271876))))

(declare-fun lt!271878 () BalanceConc!4536)

(declare-fun lambda!18021 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4534) BalanceConc!4534)

(declare-fun map!1450 (BalanceConc!4536 Int) BalanceConc!4534)

(assert (=> b!636079 (= lt!271876 (sortObjectsByID!0 (map!1450 lt!271878 lambda!18021)))))

(declare-fun lt!271874 () Unit!11800)

(declare-fun lambda!18022 () Int)

(declare-fun lt!271869 () List!6766)

(declare-fun mapPred!34 (List!6766 Int Int) Unit!11800)

(assert (=> b!636079 (= lt!271874 (mapPred!34 lt!271869 lambda!18021 lambda!18022))))

(declare-fun lt!271871 () Unit!11800)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6766) Unit!11800)

(assert (=> b!636079 (= lt!271871 (lemmaAddIdsPreservesRules!0 lt!271869))))

(declare-fun list!2859 (BalanceConc!4536) List!6766)

(assert (=> b!636079 (= lt!271869 (list!2859 lt!271878))))

(declare-datatypes ((List!6767 0))(
  ( (Nil!6753) (Cons!6753 (h!12154 Int) (t!84165 List!6767)) )
))
(declare-datatypes ((IArray!4527 0))(
  ( (IArray!4528 (innerList!2321 List!6767)) )
))
(declare-datatypes ((Conc!2263 0))(
  ( (Node!2263 (left!5394 Conc!2263) (right!5724 Conc!2263) (csize!4756 Int) (cheight!2474 Int)) (Leaf!3461 (xs!4904 IArray!4527) (csize!4757 Int)) (Empty!2263) )
))
(declare-datatypes ((BalanceConc!4538 0))(
  ( (BalanceConc!4539 (c!116502 Conc!2263)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!108 Int BalanceConc!4538 BalanceConc!4536) BalanceConc!4536)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4532 Int Int BalanceConc!4538) BalanceConc!4538)

(assert (=> b!636079 (= lt!271878 (slicesMulti!0 printableTokens!2 lt!271863 (indicesOfOpenBraces!0 (tokens!1191 printableTokens!2) lt!271863 0 (BalanceConc!4539 Empty!2263)) (BalanceConc!4537 Empty!2262)))))

(assert (= (and start!62280 res!276357) b!636064))

(assert (= (and b!636064 res!276350) b!636061))

(assert (= (and b!636061 res!276352) b!636055))

(assert (= (and b!636055 res!276348) b!636079))

(assert (= (and b!636079 (not res!276359)) b!636053))

(assert (= (and b!636053 (not res!276356)) b!636058))

(assert (= (and b!636058 (not res!276353)) b!636073))

(assert (= (and b!636073 (not res!276354)) b!636054))

(assert (= (and b!636054 (not res!276349)) b!636070))

(assert (= (and b!636070 (not res!276358)) b!636057))

(assert (= (and b!636057 (not res!276351)) b!636062))

(assert (= (and b!636062 (not res!276355)) b!636056))

(assert (= b!636074 b!636067))

(assert (= start!62280 b!636074))

(assert (= (and b!636075 condMapEmpty!2514) mapIsEmpty!2515))

(assert (= (and b!636075 (not condMapEmpty!2514)) mapNonEmpty!2514))

(assert (= b!636063 b!636075))

(assert (= b!636076 b!636063))

(assert (= b!636065 b!636076))

(assert (= (and b!636060 ((_ is LongMap!638) (v!16839 (underlying!1460 (cache!997 cacheDown!364))))) b!636065))

(assert (= b!636069 b!636060))

(assert (= (and b!636059 ((_ is HashMap!610) (cache!997 cacheDown!364))) b!636069))

(assert (= start!62280 b!636059))

(assert (= (and b!636052 condMapEmpty!2515) mapIsEmpty!2514))

(assert (= (and b!636052 (not condMapEmpty!2515)) mapNonEmpty!2515))

(assert (= b!636071 b!636052))

(assert (= b!636077 b!636071))

(assert (= b!636072 b!636077))

(assert (= (and b!636068 ((_ is LongMap!637) (v!16837 (underlying!1458 (cache!996 cacheUp!351))))) b!636072))

(assert (= b!636078 b!636068))

(assert (= (and b!636066 ((_ is HashMap!609) (cache!996 cacheUp!351))) b!636078))

(assert (= start!62280 b!636066))

(declare-fun m!906773 () Bool)

(assert (=> b!636053 m!906773))

(declare-fun m!906775 () Bool)

(assert (=> b!636061 m!906775))

(declare-fun m!906777 () Bool)

(assert (=> b!636063 m!906777))

(declare-fun m!906779 () Bool)

(assert (=> b!636063 m!906779))

(declare-fun m!906781 () Bool)

(assert (=> b!636073 m!906781))

(declare-fun m!906783 () Bool)

(assert (=> b!636064 m!906783))

(declare-fun m!906785 () Bool)

(assert (=> b!636064 m!906785))

(declare-fun m!906787 () Bool)

(assert (=> b!636057 m!906787))

(declare-fun m!906789 () Bool)

(assert (=> b!636057 m!906789))

(declare-fun m!906791 () Bool)

(assert (=> mapNonEmpty!2515 m!906791))

(declare-fun m!906793 () Bool)

(assert (=> b!636054 m!906793))

(declare-fun m!906795 () Bool)

(assert (=> b!636054 m!906795))

(assert (=> b!636054 m!906793))

(assert (=> b!636054 m!906795))

(declare-fun m!906797 () Bool)

(assert (=> b!636054 m!906797))

(declare-fun m!906799 () Bool)

(assert (=> b!636074 m!906799))

(declare-fun m!906801 () Bool)

(assert (=> b!636079 m!906801))

(declare-fun m!906803 () Bool)

(assert (=> b!636079 m!906803))

(declare-fun m!906805 () Bool)

(assert (=> b!636079 m!906805))

(assert (=> b!636079 m!906793))

(declare-fun m!906807 () Bool)

(assert (=> b!636079 m!906807))

(declare-fun m!906809 () Bool)

(assert (=> b!636079 m!906809))

(declare-fun m!906811 () Bool)

(assert (=> b!636079 m!906811))

(declare-fun m!906813 () Bool)

(assert (=> b!636079 m!906813))

(declare-fun m!906815 () Bool)

(assert (=> b!636079 m!906815))

(declare-fun m!906817 () Bool)

(assert (=> b!636079 m!906817))

(assert (=> b!636079 m!906793))

(declare-fun m!906819 () Bool)

(assert (=> b!636079 m!906819))

(assert (=> b!636079 m!906809))

(declare-fun m!906821 () Bool)

(assert (=> b!636079 m!906821))

(declare-fun m!906823 () Bool)

(assert (=> b!636079 m!906823))

(assert (=> b!636079 m!906813))

(declare-fun m!906825 () Bool)

(assert (=> b!636079 m!906825))

(declare-fun m!906827 () Bool)

(assert (=> b!636079 m!906827))

(declare-fun m!906829 () Bool)

(assert (=> mapNonEmpty!2514 m!906829))

(declare-fun m!906831 () Bool)

(assert (=> b!636058 m!906831))

(declare-fun m!906833 () Bool)

(assert (=> b!636056 m!906833))

(declare-fun m!906835 () Bool)

(assert (=> b!636056 m!906835))

(declare-fun m!906837 () Bool)

(assert (=> b!636056 m!906837))

(declare-fun m!906839 () Bool)

(assert (=> b!636067 m!906839))

(declare-fun m!906841 () Bool)

(assert (=> b!636055 m!906841))

(declare-fun m!906843 () Bool)

(assert (=> start!62280 m!906843))

(declare-fun m!906845 () Bool)

(assert (=> start!62280 m!906845))

(declare-fun m!906847 () Bool)

(assert (=> start!62280 m!906847))

(declare-fun m!906849 () Bool)

(assert (=> start!62280 m!906849))

(declare-fun m!906851 () Bool)

(assert (=> b!636070 m!906851))

(declare-fun m!906853 () Bool)

(assert (=> b!636071 m!906853))

(declare-fun m!906855 () Bool)

(assert (=> b!636071 m!906855))

(check-sat b_and!62453 b_and!62449 (not b!636071) (not b!636061) (not b!636070) (not b_next!18677) (not b!636056) (not b!636055) (not b!636064) (not b!636063) (not b_next!18681) (not mapNonEmpty!2515) (not b!636053) (not b!636074) (not b!636058) (not b!636073) (not b!636079) b_and!62447 (not b!636075) (not mapNonEmpty!2514) (not b!636067) (not start!62280) (not b!636054) (not b_next!18683) b_and!62451 (not b!636052) (not b!636057) (not b_next!18679))
(check-sat b_and!62453 b_and!62449 b_and!62447 (not b_next!18677) (not b_next!18681) (not b_next!18679) (not b_next!18683) b_and!62451)
