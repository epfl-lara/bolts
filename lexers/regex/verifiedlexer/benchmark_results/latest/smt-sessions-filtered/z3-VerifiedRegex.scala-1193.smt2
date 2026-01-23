; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62036 () Bool)

(assert start!62036)

(declare-fun b!633304 () Bool)

(declare-fun b_free!18577 () Bool)

(declare-fun b_next!18593 () Bool)

(assert (=> b!633304 (= b_free!18577 (not b_next!18593))))

(declare-fun tp!197447 () Bool)

(declare-fun b_and!62371 () Bool)

(assert (=> b!633304 (= tp!197447 b_and!62371)))

(declare-fun b!633282 () Bool)

(declare-fun b_free!18579 () Bool)

(declare-fun b_next!18595 () Bool)

(assert (=> b!633282 (= b_free!18579 (not b_next!18595))))

(declare-fun tp!197434 () Bool)

(declare-fun b_and!62373 () Bool)

(assert (=> b!633282 (= tp!197434 b_and!62373)))

(declare-fun b!633284 () Bool)

(declare-fun b_free!18581 () Bool)

(declare-fun b_next!18597 () Bool)

(assert (=> b!633284 (= b_free!18581 (not b_next!18597))))

(declare-fun tp!197438 () Bool)

(declare-fun b_and!62375 () Bool)

(assert (=> b!633284 (= tp!197438 b_and!62375)))

(declare-fun b!633294 () Bool)

(declare-fun b_free!18583 () Bool)

(declare-fun b_next!18599 () Bool)

(assert (=> b!633294 (= b_free!18583 (not b_next!18599))))

(declare-fun tp!197448 () Bool)

(declare-fun b_and!62377 () Bool)

(assert (=> b!633294 (= tp!197448 b_and!62377)))

(declare-fun e!384769 () Bool)

(declare-fun e!384783 () Bool)

(assert (=> b!633282 (= e!384769 (and e!384783 tp!197434))))

(declare-fun b!633283 () Bool)

(declare-fun res!274553 () Bool)

(declare-fun e!384780 () Bool)

(assert (=> b!633283 (=> (not res!274553) (not e!384780))))

(declare-datatypes ((List!6704 0))(
  ( (Nil!6690) (Cons!6690 (h!12091 (_ BitVec 16)) (t!83813 List!6704)) )
))
(declare-datatypes ((TokenValue!1391 0))(
  ( (FloatLiteralValue!2782 (text!10182 List!6704)) (TokenValueExt!1390 (__x!4726 Int)) (Broken!6955 (value!43799 List!6704)) (Object!1404) (End!1391) (Def!1391) (Underscore!1391) (Match!1391) (Else!1391) (Error!1391) (Case!1391) (If!1391) (Extends!1391) (Abstract!1391) (Class!1391) (Val!1391) (DelimiterValue!2782 (del!1451 List!6704)) (KeywordValue!1397 (value!43800 List!6704)) (CommentValue!2782 (value!43801 List!6704)) (WhitespaceValue!2782 (value!43802 List!6704)) (IndentationValue!1391 (value!43803 List!6704)) (String!8690) (Int32!1391) (Broken!6956 (value!43804 List!6704)) (Boolean!1392) (Unit!11721) (OperatorValue!1394 (op!1451 List!6704)) (IdentifierValue!2782 (value!43805 List!6704)) (IdentifierValue!2783 (value!43806 List!6704)) (WhitespaceValue!2783 (value!43807 List!6704)) (True!2782) (False!2782) (Broken!6957 (value!43808 List!6704)) (Broken!6958 (value!43809 List!6704)) (True!2783) (RightBrace!1391) (RightBracket!1391) (Colon!1391) (Null!1391) (Comma!1391) (LeftBracket!1391) (False!2783) (LeftBrace!1391) (ImaginaryLiteralValue!1391 (text!10183 List!6704)) (StringLiteralValue!4173 (value!43810 List!6704)) (EOFValue!1391 (value!43811 List!6704)) (IdentValue!1391 (value!43812 List!6704)) (DelimiterValue!2783 (value!43813 List!6704)) (DedentValue!1391 (value!43814 List!6704)) (NewLineValue!1391 (value!43815 List!6704)) (IntegerValue!4173 (value!43816 (_ BitVec 32)) (text!10184 List!6704)) (IntegerValue!4174 (value!43817 Int) (text!10185 List!6704)) (Times!1391) (Or!1391) (Equal!1391) (Minus!1391) (Broken!6959 (value!43818 List!6704)) (And!1391) (Div!1391) (LessEqual!1391) (Mod!1391) (Concat!3082) (Not!1391) (Plus!1391) (SpaceValue!1391 (value!43819 List!6704)) (IntegerValue!4175 (value!43820 Int) (text!10186 List!6704)) (StringLiteralValue!4174 (text!10187 List!6704)) (FloatLiteralValue!2783 (text!10188 List!6704)) (BytesLiteralValue!1391 (value!43821 List!6704)) (CommentValue!2783 (value!43822 List!6704)) (StringLiteralValue!4175 (value!43823 List!6704)) (ErrorTokenValue!1391 (msg!1452 List!6704)) )
))
(declare-datatypes ((Regex!1691 0))(
  ( (ElementMatch!1691 (c!116256 (_ BitVec 16))) (Concat!3083 (regOne!3894 Regex!1691) (regTwo!3894 Regex!1691)) (EmptyExpr!1691) (Star!1691 (reg!2020 Regex!1691)) (EmptyLang!1691) (Union!1691 (regOne!3895 Regex!1691) (regTwo!3895 Regex!1691)) )
))
(declare-datatypes ((String!8691 0))(
  ( (String!8692 (value!43824 String)) )
))
(declare-datatypes ((IArray!4469 0))(
  ( (IArray!4470 (innerList!2292 List!6704)) )
))
(declare-datatypes ((Conc!2234 0))(
  ( (Node!2234 (left!5359 Conc!2234) (right!5689 Conc!2234) (csize!4698 Int) (cheight!2445 Int)) (Leaf!3428 (xs!4875 IArray!4469) (csize!4699 Int)) (Empty!2234) )
))
(declare-datatypes ((BalanceConc!4480 0))(
  ( (BalanceConc!4481 (c!116257 Conc!2234)) )
))
(declare-datatypes ((TokenValueInjection!2534 0))(
  ( (TokenValueInjection!2535 (toValue!2298 Int) (toChars!2157 Int)) )
))
(declare-datatypes ((Rule!2514 0))(
  ( (Rule!2515 (regex!1357 Regex!1691) (tag!1619 String!8691) (isSeparator!1357 Bool) (transformation!1357 TokenValueInjection!2534)) )
))
(declare-datatypes ((Token!2438 0))(
  ( (Token!2439 (value!43825 TokenValue!1391) (rule!2153 Rule!2514) (size!5255 Int) (originalCharacters!1390 List!6704)) )
))
(declare-datatypes ((List!6705 0))(
  ( (Nil!6691) (Cons!6691 (h!12092 Token!2438) (t!83814 List!6705)) )
))
(declare-datatypes ((IArray!4471 0))(
  ( (IArray!4472 (innerList!2293 List!6705)) )
))
(declare-datatypes ((Conc!2235 0))(
  ( (Node!2235 (left!5360 Conc!2235) (right!5690 Conc!2235) (csize!4700 Int) (cheight!2446 Int)) (Leaf!3429 (xs!4876 IArray!4471) (csize!4701 Int)) (Empty!2235) )
))
(declare-datatypes ((List!6706 0))(
  ( (Nil!6692) (Cons!6692 (h!12093 Rule!2514) (t!83815 List!6706)) )
))
(declare-datatypes ((BalanceConc!4482 0))(
  ( (BalanceConc!4483 (c!116258 Conc!2235)) )
))
(declare-datatypes ((PrintableTokens!96 0))(
  ( (PrintableTokens!97 (rules!8169 List!6706) (tokens!1180 BalanceConc!4482)) )
))
(declare-fun printableTokens!2 () PrintableTokens!96)

(declare-fun usesJsonRules!0 (PrintableTokens!96) Bool)

(assert (=> b!633283 (= res!274553 (usesJsonRules!0 printableTokens!2))))

(declare-datatypes ((List!6707 0))(
  ( (Nil!6693) (Cons!6693 (h!12094 Regex!1691) (t!83816 List!6707)) )
))
(declare-datatypes ((Context!354 0))(
  ( (Context!355 (exprs!677 List!6707)) )
))
(declare-datatypes ((tuple3!464 0))(
  ( (tuple3!465 (_1!3914 Regex!1691) (_2!3914 Context!354) (_3!283 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7262 0))(
  ( (tuple2!7263 (_1!3915 tuple3!464) (_2!3915 (InoxSet Context!354))) )
))
(declare-datatypes ((List!6708 0))(
  ( (Nil!6694) (Cons!6694 (h!12095 tuple2!7262) (t!83817 List!6708)) )
))
(declare-datatypes ((array!2388 0))(
  ( (array!2389 (arr!1086 (Array (_ BitVec 32) List!6708)) (size!5256 (_ BitVec 32))) )
))
(declare-datatypes ((array!2390 0))(
  ( (array!2391 (arr!1087 (Array (_ BitVec 32) (_ BitVec 64))) (size!5257 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1246 0))(
  ( (LongMapFixedSize!1247 (defaultEntry!979 Int) (mask!2348 (_ BitVec 32)) (extraKeys!870 (_ BitVec 32)) (zeroValue!880 List!6708) (minValue!880 List!6708) (_size!1355 (_ BitVec 32)) (_keys!917 array!2390) (_values!902 array!2388) (_vacant!684 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2433 0))(
  ( (Cell!2434 (v!16750 LongMapFixedSize!1246)) )
))
(declare-datatypes ((MutLongMap!623 0))(
  ( (LongMap!623 (underlying!1429 Cell!2433)) (MutLongMapExt!622 (__x!4727 Int)) )
))
(declare-datatypes ((Cell!2435 0))(
  ( (Cell!2436 (v!16751 MutLongMap!623)) )
))
(declare-datatypes ((Hashable!595 0))(
  ( (HashableExt!594 (__x!4728 Int)) )
))
(declare-datatypes ((MutableMap!595 0))(
  ( (MutableMapExt!594 (__x!4729 Int)) (HashMap!595 (underlying!1430 Cell!2435) (hashF!2503 Hashable!595) (_size!1356 (_ BitVec 32)) (defaultValue!746 Int)) )
))
(declare-datatypes ((CacheDown!256 0))(
  ( (CacheDown!257 (cache!982 MutableMap!595)) )
))
(declare-fun cacheDown!364 () CacheDown!256)

(declare-fun e!384773 () Bool)

(declare-fun tp!197440 () Bool)

(declare-fun tp!197446 () Bool)

(declare-fun e!384786 () Bool)

(declare-fun array_inv!792 (array!2390) Bool)

(declare-fun array_inv!793 (array!2388) Bool)

(assert (=> b!633284 (= e!384786 (and tp!197438 tp!197446 tp!197440 (array_inv!792 (_keys!917 (v!16750 (underlying!1429 (v!16751 (underlying!1430 (cache!982 cacheDown!364))))))) (array_inv!793 (_values!902 (v!16750 (underlying!1429 (v!16751 (underlying!1430 (cache!982 cacheDown!364))))))) e!384773))))

(declare-fun b!633285 () Bool)

(declare-fun e!384790 () Bool)

(declare-fun tp!197435 () Bool)

(declare-fun mapRes!2458 () Bool)

(assert (=> b!633285 (= e!384790 (and tp!197435 mapRes!2458))))

(declare-fun condMapEmpty!2458 () Bool)

(declare-datatypes ((Hashable!596 0))(
  ( (HashableExt!595 (__x!4730 Int)) )
))
(declare-datatypes ((tuple2!7264 0))(
  ( (tuple2!7265 (_1!3916 Context!354) (_2!3916 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7266 0))(
  ( (tuple2!7267 (_1!3917 tuple2!7264) (_2!3917 (InoxSet Context!354))) )
))
(declare-datatypes ((List!6709 0))(
  ( (Nil!6695) (Cons!6695 (h!12096 tuple2!7266) (t!83818 List!6709)) )
))
(declare-datatypes ((array!2392 0))(
  ( (array!2393 (arr!1088 (Array (_ BitVec 32) List!6709)) (size!5258 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1248 0))(
  ( (LongMapFixedSize!1249 (defaultEntry!980 Int) (mask!2349 (_ BitVec 32)) (extraKeys!871 (_ BitVec 32)) (zeroValue!881 List!6709) (minValue!881 List!6709) (_size!1357 (_ BitVec 32)) (_keys!918 array!2390) (_values!903 array!2392) (_vacant!685 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2437 0))(
  ( (Cell!2438 (v!16752 LongMapFixedSize!1248)) )
))
(declare-datatypes ((MutLongMap!624 0))(
  ( (LongMap!624 (underlying!1431 Cell!2437)) (MutLongMapExt!623 (__x!4731 Int)) )
))
(declare-datatypes ((Cell!2439 0))(
  ( (Cell!2440 (v!16753 MutLongMap!624)) )
))
(declare-datatypes ((MutableMap!596 0))(
  ( (MutableMapExt!595 (__x!4732 Int)) (HashMap!596 (underlying!1432 Cell!2439) (hashF!2504 Hashable!596) (_size!1358 (_ BitVec 32)) (defaultValue!747 Int)) )
))
(declare-datatypes ((CacheUp!256 0))(
  ( (CacheUp!257 (cache!983 MutableMap!596)) )
))
(declare-fun cacheUp!351 () CacheUp!256)

(declare-fun mapDefault!2459 () List!6709)

(assert (=> b!633285 (= condMapEmpty!2458 (= (arr!1088 (_values!903 (v!16752 (underlying!1431 (v!16753 (underlying!1432 (cache!983 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6709)) mapDefault!2459)))))

(declare-fun mapNonEmpty!2458 () Bool)

(declare-fun tp!197436 () Bool)

(declare-fun tp!197442 () Bool)

(assert (=> mapNonEmpty!2458 (= mapRes!2458 (and tp!197436 tp!197442))))

(declare-fun mapRest!2459 () (Array (_ BitVec 32) List!6709))

(declare-fun mapValue!2459 () List!6709)

(declare-fun mapKey!2458 () (_ BitVec 32))

(assert (=> mapNonEmpty!2458 (= (arr!1088 (_values!903 (v!16752 (underlying!1431 (v!16753 (underlying!1432 (cache!983 cacheUp!351))))))) (store mapRest!2459 mapKey!2458 mapValue!2459))))

(declare-fun b!633286 () Bool)

(declare-fun res!274550 () Bool)

(declare-fun e!384787 () Bool)

(assert (=> b!633286 (=> res!274550 e!384787)))

(declare-datatypes ((Option!1641 0))(
  ( (None!1640) (Some!1640 (v!16754 PrintableTokens!96)) )
))
(declare-datatypes ((tuple3!466 0))(
  ( (tuple3!467 (_1!3918 Option!1641) (_2!3918 CacheUp!256) (_3!284 CacheDown!256)) )
))
(declare-fun lt!270477 () tuple3!466)

(assert (=> b!633286 (= res!274550 (not (usesJsonRules!0 (v!16754 (_1!3918 lt!270477)))))))

(declare-fun b!633287 () Bool)

(declare-fun e!384778 () Bool)

(declare-fun e!384777 () Bool)

(assert (=> b!633287 (= e!384778 e!384777)))

(declare-fun b!633288 () Bool)

(declare-fun e!384788 () Bool)

(declare-fun e!384781 () Bool)

(assert (=> b!633288 (= e!384788 e!384781)))

(declare-fun b!633289 () Bool)

(declare-fun tp!197441 () Bool)

(declare-fun e!384785 () Bool)

(declare-fun e!384789 () Bool)

(declare-fun inv!8560 (BalanceConc!4482) Bool)

(assert (=> b!633289 (= e!384789 (and tp!197441 (inv!8560 (tokens!1180 printableTokens!2)) e!384785))))

(declare-fun res!274555 () Bool)

(declare-fun e!384775 () Bool)

(assert (=> start!62036 (=> (not res!274555) (not e!384775))))

(declare-fun lt!270466 () Int)

(assert (=> start!62036 (= res!274555 (> lt!270466 0))))

(declare-fun size!5259 (PrintableTokens!96) Int)

(assert (=> start!62036 (= lt!270466 (size!5259 printableTokens!2))))

(assert (=> start!62036 e!384775))

(declare-fun inv!8561 (PrintableTokens!96) Bool)

(assert (=> start!62036 (and (inv!8561 printableTokens!2) e!384789)))

(declare-fun e!384782 () Bool)

(declare-fun inv!8562 (CacheDown!256) Bool)

(assert (=> start!62036 (and (inv!8562 cacheDown!364) e!384782)))

(declare-fun inv!8563 (CacheUp!256) Bool)

(assert (=> start!62036 (and (inv!8563 cacheUp!351) e!384778)))

(declare-fun b!633290 () Bool)

(assert (=> b!633290 (= e!384781 e!384786)))

(declare-fun b!633291 () Bool)

(declare-fun res!274548 () Bool)

(assert (=> b!633291 (=> (not res!274548) (not e!384780))))

(declare-fun lt!270473 () List!6706)

(declare-datatypes ((LexerInterface!1239 0))(
  ( (LexerInterfaceExt!1236 (__x!4733 Int)) (Lexer!1237) )
))
(declare-fun rulesInvariant!1174 (LexerInterface!1239 List!6706) Bool)

(assert (=> b!633291 (= res!274548 (rulesInvariant!1174 Lexer!1237 lt!270473))))

(declare-fun b!633292 () Bool)

(declare-fun e!384771 () Bool)

(assert (=> b!633292 (= e!384787 e!384771)))

(declare-fun res!274547 () Bool)

(assert (=> b!633292 (=> res!274547 e!384771)))

(declare-datatypes ((List!6710 0))(
  ( (Nil!6696) (Cons!6696 (h!12097 PrintableTokens!96) (t!83819 List!6710)) )
))
(declare-datatypes ((IArray!4473 0))(
  ( (IArray!4474 (innerList!2294 List!6710)) )
))
(declare-datatypes ((Conc!2236 0))(
  ( (Node!2236 (left!5361 Conc!2236) (right!5691 Conc!2236) (csize!4702 Int) (cheight!2447 Int)) (Leaf!3430 (xs!4877 IArray!4473) (csize!4703 Int)) (Empty!2236) )
))
(declare-datatypes ((BalanceConc!4484 0))(
  ( (BalanceConc!4485 (c!116259 Conc!2236)) )
))
(declare-fun lt!270472 () BalanceConc!4484)

(declare-fun lambda!17655 () Int)

(declare-fun forall!1688 (BalanceConc!4484 Int) Bool)

(assert (=> b!633292 (= res!274547 (not (forall!1688 lt!270472 lambda!17655)))))

(declare-fun lt!270465 () PrintableTokens!96)

(declare-fun emptyPrintableTokens!3 (List!6706) PrintableTokens!96)

(assert (=> b!633292 (= lt!270465 (emptyPrintableTokens!3 lt!270473))))

(declare-datatypes ((tuple2!7268 0))(
  ( (tuple2!7269 (_1!3919 Int) (_2!3919 PrintableTokens!96)) )
))
(declare-datatypes ((List!6711 0))(
  ( (Nil!6697) (Cons!6697 (h!12098 tuple2!7268) (t!83820 List!6711)) )
))
(declare-datatypes ((IArray!4475 0))(
  ( (IArray!4476 (innerList!2295 List!6711)) )
))
(declare-datatypes ((Conc!2237 0))(
  ( (Node!2237 (left!5362 Conc!2237) (right!5692 Conc!2237) (csize!4704 Int) (cheight!2448 Int)) (Leaf!3431 (xs!4878 IArray!4475) (csize!4705 Int)) (Empty!2237) )
))
(declare-datatypes ((BalanceConc!4486 0))(
  ( (BalanceConc!4487 (c!116260 Conc!2237)) )
))
(declare-fun lt!270479 () BalanceConc!4486)

(declare-fun lambda!17654 () Int)

(declare-fun map!1429 (BalanceConc!4486 Int) BalanceConc!4484)

(assert (=> b!633292 (= lt!270472 (map!1429 lt!270479 lambda!17654))))

(declare-fun b!633293 () Bool)

(declare-fun e!384774 () Bool)

(declare-fun e!384779 () Bool)

(assert (=> b!633293 (= e!384774 e!384779)))

(declare-fun e!384784 () Bool)

(assert (=> b!633294 (= e!384777 (and e!384784 tp!197448))))

(declare-fun mapIsEmpty!2458 () Bool)

(assert (=> mapIsEmpty!2458 mapRes!2458))

(declare-fun mapIsEmpty!2459 () Bool)

(declare-fun mapRes!2459 () Bool)

(assert (=> mapIsEmpty!2459 mapRes!2459))

(declare-fun b!633295 () Bool)

(declare-fun tp!197444 () Bool)

(declare-fun inv!8564 (Conc!2235) Bool)

(assert (=> b!633295 (= e!384785 (and (inv!8564 (c!116258 (tokens!1180 printableTokens!2))) tp!197444))))

(declare-fun b!633296 () Bool)

(assert (=> b!633296 (= e!384782 e!384769)))

(declare-fun b!633297 () Bool)

(declare-fun tp!197449 () Bool)

(assert (=> b!633297 (= e!384773 (and tp!197449 mapRes!2459))))

(declare-fun condMapEmpty!2459 () Bool)

(declare-fun mapDefault!2458 () List!6708)

(assert (=> b!633297 (= condMapEmpty!2459 (= (arr!1086 (_values!902 (v!16750 (underlying!1429 (v!16751 (underlying!1430 (cache!982 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6708)) mapDefault!2458)))))

(declare-fun b!633298 () Bool)

(declare-fun e!384770 () Bool)

(assert (=> b!633298 (= e!384770 e!384774)))

(declare-fun mapNonEmpty!2459 () Bool)

(declare-fun tp!197445 () Bool)

(declare-fun tp!197437 () Bool)

(assert (=> mapNonEmpty!2459 (= mapRes!2459 (and tp!197445 tp!197437))))

(declare-fun mapKey!2459 () (_ BitVec 32))

(declare-fun mapValue!2458 () List!6708)

(declare-fun mapRest!2458 () (Array (_ BitVec 32) List!6708))

(assert (=> mapNonEmpty!2459 (= (arr!1086 (_values!902 (v!16750 (underlying!1429 (v!16751 (underlying!1430 (cache!982 cacheDown!364))))))) (store mapRest!2458 mapKey!2459 mapValue!2458))))

(declare-fun b!633299 () Bool)

(declare-fun lt!270464 () MutLongMap!624)

(get-info :version)

(assert (=> b!633299 (= e!384784 (and e!384770 ((_ is LongMap!624) lt!270464)))))

(assert (=> b!633299 (= lt!270464 (v!16753 (underlying!1432 (cache!983 cacheUp!351))))))

(declare-fun b!633300 () Bool)

(declare-fun res!274554 () Bool)

(assert (=> b!633300 (=> res!274554 e!384787)))

(declare-fun lt!270468 () tuple3!466)

(assert (=> b!633300 (= res!274554 (not (usesJsonRules!0 (v!16754 (_1!3918 lt!270468)))))))

(declare-fun b!633301 () Bool)

(assert (=> b!633301 (= e!384775 e!384780)))

(declare-fun res!274551 () Bool)

(assert (=> b!633301 (=> (not res!274551) (not e!384780))))

(declare-fun isEmpty!4644 (List!6706) Bool)

(assert (=> b!633301 (= res!274551 (not (isEmpty!4644 lt!270473)))))

(declare-datatypes ((JsonLexer!162 0))(
  ( (JsonLexer!163) )
))
(declare-fun rules!109 (JsonLexer!162) List!6706)

(assert (=> b!633301 (= lt!270473 (rules!109 JsonLexer!163))))

(declare-fun b!633302 () Bool)

(declare-fun res!274549 () Bool)

(assert (=> b!633302 (=> res!274549 e!384787)))

(declare-fun lt!270462 () tuple3!466)

(assert (=> b!633302 (= res!274549 (not (usesJsonRules!0 (v!16754 (_1!3918 lt!270462)))))))

(declare-fun b!633303 () Bool)

(assert (=> b!633303 (= e!384780 (not e!384787))))

(declare-fun res!274552 () Bool)

(assert (=> b!633303 (=> res!274552 e!384787)))

(assert (=> b!633303 (= res!274552 (or (not ((_ is Some!1640) (_1!3918 lt!270468))) (not ((_ is Some!1640) (_1!3918 lt!270462))) (not ((_ is Some!1640) (_1!3918 lt!270477)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!256 CacheDown!256) tuple3!466)

(assert (=> b!633303 (= lt!270477 (createRightBracketSeparator!0 (_2!3918 lt!270462) (_3!284 lt!270462)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!256 CacheDown!256) tuple3!466)

(assert (=> b!633303 (= lt!270462 (createLeftBracketSeparator!0 (_2!3918 lt!270468) (_3!284 lt!270468)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!256 CacheDown!256) tuple3!466)

(assert (=> b!633303 (= lt!270468 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(assert (=> b!633303 (forall!1688 (map!1429 lt!270479 lambda!17654) lambda!17655)))

(declare-datatypes ((Unit!11722 0))(
  ( (Unit!11723) )
))
(declare-fun lt!270475 () Unit!11722)

(declare-fun lt!270469 () List!6711)

(declare-fun mapPred!25 (List!6711 Int Int) Unit!11722)

(assert (=> b!633303 (= lt!270475 (mapPred!25 lt!270469 lambda!17654 lambda!17655))))

(declare-fun lt!270470 () Unit!11722)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6711) Unit!11722)

(assert (=> b!633303 (= lt!270470 (lemmaRemoveIdsPreservesRules!0 lt!270469))))

(declare-fun list!2840 (BalanceConc!4486) List!6711)

(assert (=> b!633303 (= lt!270469 (list!2840 lt!270479))))

(declare-fun lt!270476 () BalanceConc!4484)

(declare-fun lambda!17652 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4486) BalanceConc!4486)

(declare-fun map!1430 (BalanceConc!4484 Int) BalanceConc!4486)

(assert (=> b!633303 (= lt!270479 (sortObjectsByID!0 (map!1430 lt!270476 lambda!17652)))))

(declare-fun lt!270474 () List!6710)

(declare-fun lt!270467 () Unit!11722)

(declare-fun lambda!17653 () Int)

(declare-fun mapPred!26 (List!6710 Int Int) Unit!11722)

(assert (=> b!633303 (= lt!270467 (mapPred!26 lt!270474 lambda!17652 lambda!17653))))

(declare-fun lt!270478 () Unit!11722)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6710) Unit!11722)

(assert (=> b!633303 (= lt!270478 (lemmaAddIdsPreservesRules!0 lt!270474))))

(declare-fun list!2841 (BalanceConc!4484) List!6710)

(assert (=> b!633303 (= lt!270474 (list!2841 lt!270476))))

(declare-datatypes ((List!6712 0))(
  ( (Nil!6698) (Cons!6698 (h!12099 Int) (t!83821 List!6712)) )
))
(declare-datatypes ((IArray!4477 0))(
  ( (IArray!4478 (innerList!2296 List!6712)) )
))
(declare-datatypes ((Conc!2238 0))(
  ( (Node!2238 (left!5363 Conc!2238) (right!5693 Conc!2238) (csize!4706 Int) (cheight!2449 Int)) (Leaf!3432 (xs!4879 IArray!4477) (csize!4707 Int)) (Empty!2238) )
))
(declare-datatypes ((BalanceConc!4488 0))(
  ( (BalanceConc!4489 (c!116261 Conc!2238)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!96 Int BalanceConc!4488 BalanceConc!4484) BalanceConc!4484)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4482 Int Int BalanceConc!4488) BalanceConc!4488)

(assert (=> b!633303 (= lt!270476 (slicesMulti!0 printableTokens!2 lt!270466 (indicesOfOpenBraces!0 (tokens!1180 printableTokens!2) lt!270466 0 (BalanceConc!4489 Empty!2238)) (BalanceConc!4485 Empty!2236)))))

(declare-fun tp!197443 () Bool)

(declare-fun tp!197439 () Bool)

(declare-fun array_inv!794 (array!2392) Bool)

(assert (=> b!633304 (= e!384779 (and tp!197447 tp!197443 tp!197439 (array_inv!792 (_keys!918 (v!16752 (underlying!1431 (v!16753 (underlying!1432 (cache!983 cacheUp!351))))))) (array_inv!794 (_values!903 (v!16752 (underlying!1431 (v!16753 (underlying!1432 (cache!983 cacheUp!351))))))) e!384790))))

(declare-fun b!633305 () Bool)

(declare-fun lt!270463 () MutLongMap!623)

(assert (=> b!633305 (= e!384783 (and e!384788 ((_ is LongMap!623) lt!270463)))))

(assert (=> b!633305 (= lt!270463 (v!16751 (underlying!1430 (cache!982 cacheDown!364))))))

(declare-fun b!633306 () Bool)

(assert (=> b!633306 (= e!384771 true)))

(declare-fun lt!270471 () Bool)

(assert (=> b!633306 (= lt!270471 (usesJsonRules!0 lt!270465))))

(assert (= (and start!62036 res!274555) b!633301))

(assert (= (and b!633301 res!274551) b!633291))

(assert (= (and b!633291 res!274548) b!633283))

(assert (= (and b!633283 res!274553) b!633303))

(assert (= (and b!633303 (not res!274552)) b!633300))

(assert (= (and b!633300 (not res!274554)) b!633302))

(assert (= (and b!633302 (not res!274549)) b!633286))

(assert (= (and b!633286 (not res!274550)) b!633292))

(assert (= (and b!633292 (not res!274547)) b!633306))

(assert (= b!633289 b!633295))

(assert (= start!62036 b!633289))

(assert (= (and b!633297 condMapEmpty!2459) mapIsEmpty!2459))

(assert (= (and b!633297 (not condMapEmpty!2459)) mapNonEmpty!2459))

(assert (= b!633284 b!633297))

(assert (= b!633290 b!633284))

(assert (= b!633288 b!633290))

(assert (= (and b!633305 ((_ is LongMap!623) (v!16751 (underlying!1430 (cache!982 cacheDown!364))))) b!633288))

(assert (= b!633282 b!633305))

(assert (= (and b!633296 ((_ is HashMap!595) (cache!982 cacheDown!364))) b!633282))

(assert (= start!62036 b!633296))

(assert (= (and b!633285 condMapEmpty!2458) mapIsEmpty!2458))

(assert (= (and b!633285 (not condMapEmpty!2458)) mapNonEmpty!2458))

(assert (= b!633304 b!633285))

(assert (= b!633293 b!633304))

(assert (= b!633298 b!633293))

(assert (= (and b!633299 ((_ is LongMap!624) (v!16753 (underlying!1432 (cache!983 cacheUp!351))))) b!633298))

(assert (= b!633294 b!633299))

(assert (= (and b!633287 ((_ is HashMap!596) (cache!983 cacheUp!351))) b!633294))

(assert (= start!62036 b!633287))

(declare-fun m!904099 () Bool)

(assert (=> b!633301 m!904099))

(declare-fun m!904101 () Bool)

(assert (=> b!633301 m!904101))

(declare-fun m!904103 () Bool)

(assert (=> b!633283 m!904103))

(declare-fun m!904105 () Bool)

(assert (=> b!633289 m!904105))

(declare-fun m!904107 () Bool)

(assert (=> b!633303 m!904107))

(declare-fun m!904109 () Bool)

(assert (=> b!633303 m!904109))

(declare-fun m!904111 () Bool)

(assert (=> b!633303 m!904111))

(declare-fun m!904113 () Bool)

(assert (=> b!633303 m!904113))

(declare-fun m!904115 () Bool)

(assert (=> b!633303 m!904115))

(declare-fun m!904117 () Bool)

(assert (=> b!633303 m!904117))

(declare-fun m!904119 () Bool)

(assert (=> b!633303 m!904119))

(declare-fun m!904121 () Bool)

(assert (=> b!633303 m!904121))

(declare-fun m!904123 () Bool)

(assert (=> b!633303 m!904123))

(assert (=> b!633303 m!904119))

(declare-fun m!904125 () Bool)

(assert (=> b!633303 m!904125))

(declare-fun m!904127 () Bool)

(assert (=> b!633303 m!904127))

(declare-fun m!904129 () Bool)

(assert (=> b!633303 m!904129))

(declare-fun m!904131 () Bool)

(assert (=> b!633303 m!904131))

(assert (=> b!633303 m!904115))

(declare-fun m!904133 () Bool)

(assert (=> b!633303 m!904133))

(declare-fun m!904135 () Bool)

(assert (=> b!633303 m!904135))

(assert (=> b!633303 m!904107))

(declare-fun m!904137 () Bool)

(assert (=> b!633286 m!904137))

(declare-fun m!904139 () Bool)

(assert (=> b!633306 m!904139))

(declare-fun m!904141 () Bool)

(assert (=> b!633304 m!904141))

(declare-fun m!904143 () Bool)

(assert (=> b!633304 m!904143))

(declare-fun m!904145 () Bool)

(assert (=> b!633295 m!904145))

(declare-fun m!904147 () Bool)

(assert (=> b!633284 m!904147))

(declare-fun m!904149 () Bool)

(assert (=> b!633284 m!904149))

(declare-fun m!904151 () Bool)

(assert (=> b!633300 m!904151))

(declare-fun m!904153 () Bool)

(assert (=> b!633292 m!904153))

(declare-fun m!904155 () Bool)

(assert (=> b!633292 m!904155))

(assert (=> b!633292 m!904119))

(declare-fun m!904157 () Bool)

(assert (=> mapNonEmpty!2459 m!904157))

(declare-fun m!904159 () Bool)

(assert (=> mapNonEmpty!2458 m!904159))

(declare-fun m!904161 () Bool)

(assert (=> b!633291 m!904161))

(declare-fun m!904163 () Bool)

(assert (=> b!633302 m!904163))

(declare-fun m!904165 () Bool)

(assert (=> start!62036 m!904165))

(declare-fun m!904167 () Bool)

(assert (=> start!62036 m!904167))

(declare-fun m!904169 () Bool)

(assert (=> start!62036 m!904169))

(declare-fun m!904171 () Bool)

(assert (=> start!62036 m!904171))

(check-sat (not start!62036) (not b!633306) b_and!62371 (not b!633283) (not b_next!18593) (not b!633291) (not b!633304) (not b!633285) b_and!62375 (not b!633302) (not b_next!18599) (not b!633295) (not b_next!18597) (not b!633303) (not b!633297) (not b_next!18595) (not b!633286) (not b!633301) (not mapNonEmpty!2459) b_and!62373 (not b!633300) (not b!633292) (not mapNonEmpty!2458) b_and!62377 (not b!633289) (not b!633284))
(check-sat (not b_next!18597) (not b_next!18595) b_and!62371 b_and!62373 (not b_next!18593) b_and!62375 b_and!62377 (not b_next!18599))
