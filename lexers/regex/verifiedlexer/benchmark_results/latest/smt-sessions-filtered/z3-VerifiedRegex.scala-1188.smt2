; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61958 () Bool)

(assert start!61958)

(declare-fun b!632362 () Bool)

(declare-fun b_free!18493 () Bool)

(declare-fun b_next!18509 () Bool)

(assert (=> b!632362 (= b_free!18493 (not b_next!18509))))

(declare-fun tp!196891 () Bool)

(declare-fun b_and!62287 () Bool)

(assert (=> b!632362 (= tp!196891 b_and!62287)))

(declare-fun b!632360 () Bool)

(declare-fun b_free!18495 () Bool)

(declare-fun b_next!18511 () Bool)

(assert (=> b!632360 (= b_free!18495 (not b_next!18511))))

(declare-fun tp!196889 () Bool)

(declare-fun b_and!62289 () Bool)

(assert (=> b!632360 (= tp!196889 b_and!62289)))

(declare-fun b!632368 () Bool)

(declare-fun b_free!18497 () Bool)

(declare-fun b_next!18513 () Bool)

(assert (=> b!632368 (= b_free!18497 (not b_next!18513))))

(declare-fun tp!196893 () Bool)

(declare-fun b_and!62291 () Bool)

(assert (=> b!632368 (= tp!196893 b_and!62291)))

(declare-fun b!632377 () Bool)

(declare-fun b_free!18499 () Bool)

(declare-fun b_next!18515 () Bool)

(assert (=> b!632377 (= b_free!18499 (not b_next!18515))))

(declare-fun tp!196888 () Bool)

(declare-fun b_and!62293 () Bool)

(assert (=> b!632377 (= tp!196888 b_and!62293)))

(declare-fun b!632359 () Bool)

(declare-fun res!274273 () Bool)

(declare-fun e!383954 () Bool)

(assert (=> b!632359 (=> (not res!274273) (not e!383954))))

(declare-datatypes ((List!6624 0))(
  ( (Nil!6610) (Cons!6610 (h!12011 (_ BitVec 16)) (t!83461 List!6624)) )
))
(declare-datatypes ((TokenValue!1381 0))(
  ( (FloatLiteralValue!2762 (text!10112 List!6624)) (TokenValueExt!1380 (__x!4655 Int)) (Broken!6905 (value!43514 List!6624)) (Object!1394) (End!1381) (Def!1381) (Underscore!1381) (Match!1381) (Else!1381) (Error!1381) (Case!1381) (If!1381) (Extends!1381) (Abstract!1381) (Class!1381) (Val!1381) (DelimiterValue!2762 (del!1441 List!6624)) (KeywordValue!1387 (value!43515 List!6624)) (CommentValue!2762 (value!43516 List!6624)) (WhitespaceValue!2762 (value!43517 List!6624)) (IndentationValue!1381 (value!43518 List!6624)) (String!8640) (Int32!1381) (Broken!6906 (value!43519 List!6624)) (Boolean!1382) (Unit!11689) (OperatorValue!1384 (op!1441 List!6624)) (IdentifierValue!2762 (value!43520 List!6624)) (IdentifierValue!2763 (value!43521 List!6624)) (WhitespaceValue!2763 (value!43522 List!6624)) (True!2762) (False!2762) (Broken!6907 (value!43523 List!6624)) (Broken!6908 (value!43524 List!6624)) (True!2763) (RightBrace!1381) (RightBracket!1381) (Colon!1381) (Null!1381) (Comma!1381) (LeftBracket!1381) (False!2763) (LeftBrace!1381) (ImaginaryLiteralValue!1381 (text!10113 List!6624)) (StringLiteralValue!4143 (value!43525 List!6624)) (EOFValue!1381 (value!43526 List!6624)) (IdentValue!1381 (value!43527 List!6624)) (DelimiterValue!2763 (value!43528 List!6624)) (DedentValue!1381 (value!43529 List!6624)) (NewLineValue!1381 (value!43530 List!6624)) (IntegerValue!4143 (value!43531 (_ BitVec 32)) (text!10114 List!6624)) (IntegerValue!4144 (value!43532 Int) (text!10115 List!6624)) (Times!1381) (Or!1381) (Equal!1381) (Minus!1381) (Broken!6909 (value!43533 List!6624)) (And!1381) (Div!1381) (LessEqual!1381) (Mod!1381) (Concat!3062) (Not!1381) (Plus!1381) (SpaceValue!1381 (value!43534 List!6624)) (IntegerValue!4145 (value!43535 Int) (text!10116 List!6624)) (StringLiteralValue!4144 (text!10117 List!6624)) (FloatLiteralValue!2763 (text!10118 List!6624)) (BytesLiteralValue!1381 (value!43536 List!6624)) (CommentValue!2763 (value!43537 List!6624)) (StringLiteralValue!4145 (value!43538 List!6624)) (ErrorTokenValue!1381 (msg!1442 List!6624)) )
))
(declare-datatypes ((Regex!1681 0))(
  ( (ElementMatch!1681 (c!116155 (_ BitVec 16))) (Concat!3063 (regOne!3874 Regex!1681) (regTwo!3874 Regex!1681)) (EmptyExpr!1681) (Star!1681 (reg!2010 Regex!1681)) (EmptyLang!1681) (Union!1681 (regOne!3875 Regex!1681) (regTwo!3875 Regex!1681)) )
))
(declare-datatypes ((String!8641 0))(
  ( (String!8642 (value!43539 String)) )
))
(declare-datatypes ((IArray!4387 0))(
  ( (IArray!4388 (innerList!2251 List!6624)) )
))
(declare-datatypes ((Conc!2193 0))(
  ( (Node!2193 (left!5311 Conc!2193) (right!5641 Conc!2193) (csize!4616 Int) (cheight!2404 Int)) (Leaf!3382 (xs!4834 IArray!4387) (csize!4617 Int)) (Empty!2193) )
))
(declare-datatypes ((BalanceConc!4398 0))(
  ( (BalanceConc!4399 (c!116156 Conc!2193)) )
))
(declare-datatypes ((TokenValueInjection!2514 0))(
  ( (TokenValueInjection!2515 (toValue!2288 Int) (toChars!2147 Int)) )
))
(declare-datatypes ((Rule!2494 0))(
  ( (Rule!2495 (regex!1347 Regex!1681) (tag!1609 String!8641) (isSeparator!1347 Bool) (transformation!1347 TokenValueInjection!2514)) )
))
(declare-datatypes ((Token!2418 0))(
  ( (Token!2419 (value!43540 TokenValue!1381) (rule!2143 Rule!2494) (size!5205 Int) (originalCharacters!1380 List!6624)) )
))
(declare-datatypes ((List!6625 0))(
  ( (Nil!6611) (Cons!6611 (h!12012 Token!2418) (t!83462 List!6625)) )
))
(declare-datatypes ((IArray!4389 0))(
  ( (IArray!4390 (innerList!2252 List!6625)) )
))
(declare-datatypes ((Conc!2194 0))(
  ( (Node!2194 (left!5312 Conc!2194) (right!5642 Conc!2194) (csize!4618 Int) (cheight!2405 Int)) (Leaf!3383 (xs!4835 IArray!4389) (csize!4619 Int)) (Empty!2194) )
))
(declare-datatypes ((List!6626 0))(
  ( (Nil!6612) (Cons!6612 (h!12013 Rule!2494) (t!83463 List!6626)) )
))
(declare-datatypes ((BalanceConc!4400 0))(
  ( (BalanceConc!4401 (c!116157 Conc!2194)) )
))
(declare-datatypes ((PrintableTokens!76 0))(
  ( (PrintableTokens!77 (rules!8157 List!6626) (tokens!1170 BalanceConc!4400)) )
))
(declare-fun printableTokens!2 () PrintableTokens!76)

(declare-fun usesJsonRules!0 (PrintableTokens!76) Bool)

(assert (=> b!632359 (= res!274273 (usesJsonRules!0 printableTokens!2))))

(declare-fun e!383962 () Bool)

(declare-fun e!383949 () Bool)

(assert (=> b!632360 (= e!383962 (and e!383949 tp!196889))))

(declare-fun b!632361 () Bool)

(declare-fun res!274275 () Bool)

(assert (=> b!632361 (=> (not res!274275) (not e!383954))))

(declare-fun lt!269800 () List!6626)

(declare-datatypes ((LexerInterface!1232 0))(
  ( (LexerInterfaceExt!1229 (__x!4656 Int)) (Lexer!1230) )
))
(declare-fun rulesInvariant!1167 (LexerInterface!1232 List!6626) Bool)

(assert (=> b!632361 (= res!274275 (rulesInvariant!1167 Lexer!1230 lt!269800))))

(declare-datatypes ((List!6627 0))(
  ( (Nil!6613) (Cons!6613 (h!12014 Regex!1681) (t!83464 List!6627)) )
))
(declare-datatypes ((Context!334 0))(
  ( (Context!335 (exprs!667 List!6627)) )
))
(declare-datatypes ((tuple3!428 0))(
  ( (tuple3!429 (_1!3863 Regex!1681) (_2!3863 Context!334) (_3!265 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7196 0))(
  ( (tuple2!7197 (_1!3864 tuple3!428) (_2!3864 (InoxSet Context!334))) )
))
(declare-datatypes ((List!6628 0))(
  ( (Nil!6614) (Cons!6614 (h!12015 tuple2!7196) (t!83465 List!6628)) )
))
(declare-datatypes ((array!2329 0))(
  ( (array!2330 (arr!1058 (Array (_ BitVec 32) List!6628)) (size!5206 (_ BitVec 32))) )
))
(declare-datatypes ((array!2331 0))(
  ( (array!2332 (arr!1059 (Array (_ BitVec 32) (_ BitVec 64))) (size!5207 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1210 0))(
  ( (LongMapFixedSize!1211 (defaultEntry!961 Int) (mask!2325 (_ BitVec 32)) (extraKeys!852 (_ BitVec 32)) (zeroValue!862 List!6628) (minValue!862 List!6628) (_size!1319 (_ BitVec 32)) (_keys!899 array!2331) (_values!884 array!2329) (_vacant!666 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2361 0))(
  ( (Cell!2362 (v!16698 LongMapFixedSize!1210)) )
))
(declare-datatypes ((MutLongMap!605 0))(
  ( (LongMap!605 (underlying!1393 Cell!2361)) (MutLongMapExt!604 (__x!4657 Int)) )
))
(declare-datatypes ((Cell!2363 0))(
  ( (Cell!2364 (v!16699 MutLongMap!605)) )
))
(declare-datatypes ((Hashable!577 0))(
  ( (HashableExt!576 (__x!4658 Int)) )
))
(declare-datatypes ((MutableMap!577 0))(
  ( (MutableMapExt!576 (__x!4659 Int)) (HashMap!577 (underlying!1394 Cell!2363) (hashF!2485 Hashable!577) (_size!1320 (_ BitVec 32)) (defaultValue!728 Int)) )
))
(declare-datatypes ((CacheDown!236 0))(
  ( (CacheDown!237 (cache!964 MutableMap!577)) )
))
(declare-fun cacheDown!364 () CacheDown!236)

(declare-fun e!383955 () Bool)

(declare-fun e!383945 () Bool)

(declare-fun tp!196882 () Bool)

(declare-fun tp!196892 () Bool)

(declare-fun array_inv!771 (array!2331) Bool)

(declare-fun array_inv!772 (array!2329) Bool)

(assert (=> b!632362 (= e!383945 (and tp!196891 tp!196882 tp!196892 (array_inv!771 (_keys!899 (v!16698 (underlying!1393 (v!16699 (underlying!1394 (cache!964 cacheDown!364))))))) (array_inv!772 (_values!884 (v!16698 (underlying!1393 (v!16699 (underlying!1394 (cache!964 cacheDown!364))))))) e!383955))))

(declare-fun b!632363 () Bool)

(declare-fun e!383960 () Bool)

(declare-fun tp!196896 () Bool)

(declare-fun mapRes!2393 () Bool)

(assert (=> b!632363 (= e!383960 (and tp!196896 mapRes!2393))))

(declare-fun condMapEmpty!2393 () Bool)

(declare-datatypes ((Hashable!578 0))(
  ( (HashableExt!577 (__x!4660 Int)) )
))
(declare-datatypes ((tuple2!7198 0))(
  ( (tuple2!7199 (_1!3865 Context!334) (_2!3865 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7200 0))(
  ( (tuple2!7201 (_1!3866 tuple2!7198) (_2!3866 (InoxSet Context!334))) )
))
(declare-datatypes ((List!6629 0))(
  ( (Nil!6615) (Cons!6615 (h!12016 tuple2!7200) (t!83466 List!6629)) )
))
(declare-datatypes ((array!2333 0))(
  ( (array!2334 (arr!1060 (Array (_ BitVec 32) List!6629)) (size!5208 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1212 0))(
  ( (LongMapFixedSize!1213 (defaultEntry!962 Int) (mask!2326 (_ BitVec 32)) (extraKeys!853 (_ BitVec 32)) (zeroValue!863 List!6629) (minValue!863 List!6629) (_size!1321 (_ BitVec 32)) (_keys!900 array!2331) (_values!885 array!2333) (_vacant!667 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2365 0))(
  ( (Cell!2366 (v!16700 LongMapFixedSize!1212)) )
))
(declare-datatypes ((MutLongMap!606 0))(
  ( (LongMap!606 (underlying!1395 Cell!2365)) (MutLongMapExt!605 (__x!4661 Int)) )
))
(declare-datatypes ((Cell!2367 0))(
  ( (Cell!2368 (v!16701 MutLongMap!606)) )
))
(declare-datatypes ((MutableMap!578 0))(
  ( (MutableMapExt!577 (__x!4662 Int)) (HashMap!578 (underlying!1396 Cell!2367) (hashF!2486 Hashable!578) (_size!1322 (_ BitVec 32)) (defaultValue!729 Int)) )
))
(declare-datatypes ((CacheUp!240 0))(
  ( (CacheUp!241 (cache!965 MutableMap!578)) )
))
(declare-fun cacheUp!351 () CacheUp!240)

(declare-fun mapDefault!2393 () List!6629)

(assert (=> b!632363 (= condMapEmpty!2393 (= (arr!1060 (_values!885 (v!16700 (underlying!1395 (v!16701 (underlying!1396 (cache!965 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6629)) mapDefault!2393)))))

(declare-fun res!274272 () Bool)

(declare-fun e!383961 () Bool)

(assert (=> start!61958 (=> (not res!274272) (not e!383961))))

(declare-fun lt!269795 () Int)

(assert (=> start!61958 (= res!274272 (> lt!269795 0))))

(declare-fun size!5209 (PrintableTokens!76) Int)

(assert (=> start!61958 (= lt!269795 (size!5209 printableTokens!2))))

(assert (=> start!61958 e!383961))

(declare-fun e!383957 () Bool)

(declare-fun inv!8510 (PrintableTokens!76) Bool)

(assert (=> start!61958 (and (inv!8510 printableTokens!2) e!383957)))

(declare-fun e!383964 () Bool)

(declare-fun inv!8511 (CacheDown!236) Bool)

(assert (=> start!61958 (and (inv!8511 cacheDown!364) e!383964)))

(declare-fun e!383956 () Bool)

(declare-fun inv!8512 (CacheUp!240) Bool)

(assert (=> start!61958 (and (inv!8512 cacheUp!351) e!383956)))

(declare-fun b!632364 () Bool)

(assert (=> b!632364 (= e!383961 e!383954)))

(declare-fun res!274274 () Bool)

(assert (=> b!632364 (=> (not res!274274) (not e!383954))))

(declare-fun isEmpty!4634 (List!6626) Bool)

(assert (=> b!632364 (= res!274274 (not (isEmpty!4634 lt!269800)))))

(declare-datatypes ((JsonLexer!148 0))(
  ( (JsonLexer!149) )
))
(declare-fun rules!109 (JsonLexer!148) List!6626)

(assert (=> b!632364 (= lt!269800 (rules!109 JsonLexer!149))))

(declare-fun b!632365 () Bool)

(declare-fun e!383951 () Bool)

(declare-fun e!383952 () Bool)

(assert (=> b!632365 (= e!383951 e!383952)))

(declare-fun b!632366 () Bool)

(declare-fun e!383950 () Bool)

(declare-fun e!383946 () Bool)

(assert (=> b!632366 (= e!383950 e!383946)))

(declare-fun b!632367 () Bool)

(declare-fun e!383963 () Bool)

(declare-fun lt!269796 () MutLongMap!605)

(get-info :version)

(assert (=> b!632367 (= e!383963 (and e!383950 ((_ is LongMap!605) lt!269796)))))

(assert (=> b!632367 (= lt!269796 (v!16699 (underlying!1394 (cache!964 cacheDown!364))))))

(declare-fun e!383958 () Bool)

(assert (=> b!632368 (= e!383958 (and e!383963 tp!196893))))

(declare-fun b!632369 () Bool)

(assert (=> b!632369 (= e!383956 e!383962)))

(declare-fun mapNonEmpty!2392 () Bool)

(declare-fun tp!196897 () Bool)

(declare-fun tp!196894 () Bool)

(assert (=> mapNonEmpty!2392 (= mapRes!2393 (and tp!196897 tp!196894))))

(declare-fun mapKey!2393 () (_ BitVec 32))

(declare-fun mapValue!2393 () List!6629)

(declare-fun mapRest!2393 () (Array (_ BitVec 32) List!6629))

(assert (=> mapNonEmpty!2392 (= (arr!1060 (_values!885 (v!16700 (underlying!1395 (v!16701 (underlying!1396 (cache!965 cacheUp!351))))))) (store mapRest!2393 mapKey!2393 mapValue!2393))))

(declare-fun b!632370 () Bool)

(declare-fun e!383953 () Bool)

(assert (=> b!632370 (= e!383953 e!383951)))

(declare-fun b!632371 () Bool)

(assert (=> b!632371 (= e!383964 e!383958)))

(declare-fun mapIsEmpty!2392 () Bool)

(assert (=> mapIsEmpty!2392 mapRes!2393))

(declare-fun b!632372 () Bool)

(declare-fun tp!196884 () Bool)

(declare-fun e!383947 () Bool)

(declare-fun inv!8513 (BalanceConc!4400) Bool)

(assert (=> b!632372 (= e!383957 (and tp!196884 (inv!8513 (tokens!1170 printableTokens!2)) e!383947))))

(declare-fun b!632373 () Bool)

(declare-fun tp!196887 () Bool)

(declare-fun mapRes!2392 () Bool)

(assert (=> b!632373 (= e!383955 (and tp!196887 mapRes!2392))))

(declare-fun condMapEmpty!2392 () Bool)

(declare-fun mapDefault!2392 () List!6628)

(assert (=> b!632373 (= condMapEmpty!2392 (= (arr!1058 (_values!884 (v!16698 (underlying!1393 (v!16699 (underlying!1394 (cache!964 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6628)) mapDefault!2392)))))

(declare-fun b!632374 () Bool)

(declare-fun tp!196890 () Bool)

(declare-fun inv!8514 (Conc!2194) Bool)

(assert (=> b!632374 (= e!383947 (and (inv!8514 (c!116157 (tokens!1170 printableTokens!2))) tp!196890))))

(declare-fun b!632375 () Bool)

(assert (=> b!632375 (= e!383946 e!383945)))

(declare-fun mapIsEmpty!2393 () Bool)

(assert (=> mapIsEmpty!2393 mapRes!2392))

(declare-fun mapNonEmpty!2393 () Bool)

(declare-fun tp!196883 () Bool)

(declare-fun tp!196886 () Bool)

(assert (=> mapNonEmpty!2393 (= mapRes!2392 (and tp!196883 tp!196886))))

(declare-fun mapValue!2392 () List!6628)

(declare-fun mapRest!2392 () (Array (_ BitVec 32) List!6628))

(declare-fun mapKey!2392 () (_ BitVec 32))

(assert (=> mapNonEmpty!2393 (= (arr!1058 (_values!884 (v!16698 (underlying!1393 (v!16699 (underlying!1394 (cache!964 cacheDown!364))))))) (store mapRest!2392 mapKey!2392 mapValue!2392))))

(declare-fun b!632376 () Bool)

(assert (=> b!632376 (= e!383954 (not true))))

(declare-datatypes ((Option!1634 0))(
  ( (None!1633) (Some!1633 (v!16702 PrintableTokens!76)) )
))
(declare-datatypes ((tuple3!430 0))(
  ( (tuple3!431 (_1!3867 Option!1634) (_2!3867 CacheUp!240) (_3!266 CacheDown!236)) )
))
(declare-fun lt!269799 () tuple3!430)

(declare-fun createCommaNewLineSeparator!0 (CacheUp!240 CacheDown!236) tuple3!430)

(assert (=> b!632376 (= lt!269799 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-datatypes ((tuple2!7202 0))(
  ( (tuple2!7203 (_1!3868 Int) (_2!3868 PrintableTokens!76)) )
))
(declare-datatypes ((List!6630 0))(
  ( (Nil!6616) (Cons!6616 (h!12017 tuple2!7202) (t!83467 List!6630)) )
))
(declare-datatypes ((IArray!4391 0))(
  ( (IArray!4392 (innerList!2253 List!6630)) )
))
(declare-datatypes ((Conc!2195 0))(
  ( (Node!2195 (left!5313 Conc!2195) (right!5643 Conc!2195) (csize!4620 Int) (cheight!2406 Int)) (Leaf!3384 (xs!4836 IArray!4391) (csize!4621 Int)) (Empty!2195) )
))
(declare-datatypes ((BalanceConc!4402 0))(
  ( (BalanceConc!4403 (c!116158 Conc!2195)) )
))
(declare-fun lt!269792 () BalanceConc!4402)

(declare-fun lambda!17365 () Int)

(declare-fun lambda!17366 () Int)

(declare-datatypes ((List!6631 0))(
  ( (Nil!6617) (Cons!6617 (h!12018 PrintableTokens!76) (t!83468 List!6631)) )
))
(declare-datatypes ((IArray!4393 0))(
  ( (IArray!4394 (innerList!2254 List!6631)) )
))
(declare-datatypes ((Conc!2196 0))(
  ( (Node!2196 (left!5314 Conc!2196) (right!5644 Conc!2196) (csize!4622 Int) (cheight!2407 Int)) (Leaf!3385 (xs!4837 IArray!4393) (csize!4623 Int)) (Empty!2196) )
))
(declare-datatypes ((BalanceConc!4404 0))(
  ( (BalanceConc!4405 (c!116159 Conc!2196)) )
))
(declare-fun forall!1676 (BalanceConc!4404 Int) Bool)

(declare-fun map!1406 (BalanceConc!4402 Int) BalanceConc!4404)

(assert (=> b!632376 (forall!1676 (map!1406 lt!269792 lambda!17365) lambda!17366)))

(declare-fun lt!269797 () List!6630)

(declare-datatypes ((Unit!11690 0))(
  ( (Unit!11691) )
))
(declare-fun lt!269789 () Unit!11690)

(declare-fun mapPred!11 (List!6630 Int Int) Unit!11690)

(assert (=> b!632376 (= lt!269789 (mapPred!11 lt!269797 lambda!17365 lambda!17366))))

(declare-fun lt!269798 () Unit!11690)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6630) Unit!11690)

(assert (=> b!632376 (= lt!269798 (lemmaRemoveIdsPreservesRules!0 lt!269797))))

(declare-fun list!2823 (BalanceConc!4402) List!6630)

(assert (=> b!632376 (= lt!269797 (list!2823 lt!269792))))

(declare-fun lt!269794 () BalanceConc!4404)

(declare-fun lambda!17363 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4402) BalanceConc!4402)

(declare-fun map!1407 (BalanceConc!4404 Int) BalanceConc!4402)

(assert (=> b!632376 (= lt!269792 (sortObjectsByID!0 (map!1407 lt!269794 lambda!17363)))))

(declare-fun lambda!17364 () Int)

(declare-fun lt!269791 () Unit!11690)

(declare-fun lt!269790 () List!6631)

(declare-fun mapPred!12 (List!6631 Int Int) Unit!11690)

(assert (=> b!632376 (= lt!269791 (mapPred!12 lt!269790 lambda!17363 lambda!17364))))

(declare-fun lt!269788 () Unit!11690)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6631) Unit!11690)

(assert (=> b!632376 (= lt!269788 (lemmaAddIdsPreservesRules!0 lt!269790))))

(declare-fun list!2824 (BalanceConc!4404) List!6631)

(assert (=> b!632376 (= lt!269790 (list!2824 lt!269794))))

(declare-datatypes ((List!6632 0))(
  ( (Nil!6618) (Cons!6618 (h!12019 Int) (t!83469 List!6632)) )
))
(declare-datatypes ((IArray!4395 0))(
  ( (IArray!4396 (innerList!2255 List!6632)) )
))
(declare-datatypes ((Conc!2197 0))(
  ( (Node!2197 (left!5315 Conc!2197) (right!5645 Conc!2197) (csize!4624 Int) (cheight!2408 Int)) (Leaf!3386 (xs!4838 IArray!4395) (csize!4625 Int)) (Empty!2197) )
))
(declare-datatypes ((BalanceConc!4406 0))(
  ( (BalanceConc!4407 (c!116160 Conc!2197)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!76 Int BalanceConc!4406 BalanceConc!4404) BalanceConc!4404)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4400 Int Int BalanceConc!4406) BalanceConc!4406)

(assert (=> b!632376 (= lt!269794 (slicesMulti!0 printableTokens!2 lt!269795 (indicesOfOpenBraces!0 (tokens!1170 printableTokens!2) lt!269795 0 (BalanceConc!4407 Empty!2197)) (BalanceConc!4405 Empty!2196)))))

(declare-fun tp!196895 () Bool)

(declare-fun tp!196885 () Bool)

(declare-fun array_inv!773 (array!2333) Bool)

(assert (=> b!632377 (= e!383952 (and tp!196888 tp!196885 tp!196895 (array_inv!771 (_keys!900 (v!16700 (underlying!1395 (v!16701 (underlying!1396 (cache!965 cacheUp!351))))))) (array_inv!773 (_values!885 (v!16700 (underlying!1395 (v!16701 (underlying!1396 (cache!965 cacheUp!351))))))) e!383960))))

(declare-fun b!632378 () Bool)

(declare-fun lt!269793 () MutLongMap!606)

(assert (=> b!632378 (= e!383949 (and e!383953 ((_ is LongMap!606) lt!269793)))))

(assert (=> b!632378 (= lt!269793 (v!16701 (underlying!1396 (cache!965 cacheUp!351))))))

(assert (= (and start!61958 res!274272) b!632364))

(assert (= (and b!632364 res!274274) b!632361))

(assert (= (and b!632361 res!274275) b!632359))

(assert (= (and b!632359 res!274273) b!632376))

(assert (= b!632372 b!632374))

(assert (= start!61958 b!632372))

(assert (= (and b!632373 condMapEmpty!2392) mapIsEmpty!2393))

(assert (= (and b!632373 (not condMapEmpty!2392)) mapNonEmpty!2393))

(assert (= b!632362 b!632373))

(assert (= b!632375 b!632362))

(assert (= b!632366 b!632375))

(assert (= (and b!632367 ((_ is LongMap!605) (v!16699 (underlying!1394 (cache!964 cacheDown!364))))) b!632366))

(assert (= b!632368 b!632367))

(assert (= (and b!632371 ((_ is HashMap!577) (cache!964 cacheDown!364))) b!632368))

(assert (= start!61958 b!632371))

(assert (= (and b!632363 condMapEmpty!2393) mapIsEmpty!2392))

(assert (= (and b!632363 (not condMapEmpty!2393)) mapNonEmpty!2392))

(assert (= b!632377 b!632363))

(assert (= b!632365 b!632377))

(assert (= b!632370 b!632365))

(assert (= (and b!632378 ((_ is LongMap!606) (v!16701 (underlying!1396 (cache!965 cacheUp!351))))) b!632370))

(assert (= b!632360 b!632378))

(assert (= (and b!632369 ((_ is HashMap!578) (cache!965 cacheUp!351))) b!632360))

(assert (= start!61958 b!632369))

(declare-fun m!903045 () Bool)

(assert (=> b!632374 m!903045))

(declare-fun m!903047 () Bool)

(assert (=> mapNonEmpty!2392 m!903047))

(declare-fun m!903049 () Bool)

(assert (=> b!632377 m!903049))

(declare-fun m!903051 () Bool)

(assert (=> b!632377 m!903051))

(declare-fun m!903053 () Bool)

(assert (=> b!632361 m!903053))

(declare-fun m!903055 () Bool)

(assert (=> b!632359 m!903055))

(declare-fun m!903057 () Bool)

(assert (=> b!632362 m!903057))

(declare-fun m!903059 () Bool)

(assert (=> b!632362 m!903059))

(declare-fun m!903061 () Bool)

(assert (=> b!632372 m!903061))

(declare-fun m!903063 () Bool)

(assert (=> b!632376 m!903063))

(declare-fun m!903065 () Bool)

(assert (=> b!632376 m!903065))

(declare-fun m!903067 () Bool)

(assert (=> b!632376 m!903067))

(declare-fun m!903069 () Bool)

(assert (=> b!632376 m!903069))

(assert (=> b!632376 m!903063))

(declare-fun m!903071 () Bool)

(assert (=> b!632376 m!903071))

(declare-fun m!903073 () Bool)

(assert (=> b!632376 m!903073))

(declare-fun m!903075 () Bool)

(assert (=> b!632376 m!903075))

(declare-fun m!903077 () Bool)

(assert (=> b!632376 m!903077))

(declare-fun m!903079 () Bool)

(assert (=> b!632376 m!903079))

(assert (=> b!632376 m!903077))

(declare-fun m!903081 () Bool)

(assert (=> b!632376 m!903081))

(declare-fun m!903083 () Bool)

(assert (=> b!632376 m!903083))

(assert (=> b!632376 m!903081))

(declare-fun m!903085 () Bool)

(assert (=> b!632376 m!903085))

(declare-fun m!903087 () Bool)

(assert (=> b!632376 m!903087))

(declare-fun m!903089 () Bool)

(assert (=> start!61958 m!903089))

(declare-fun m!903091 () Bool)

(assert (=> start!61958 m!903091))

(declare-fun m!903093 () Bool)

(assert (=> start!61958 m!903093))

(declare-fun m!903095 () Bool)

(assert (=> start!61958 m!903095))

(declare-fun m!903097 () Bool)

(assert (=> b!632364 m!903097))

(declare-fun m!903099 () Bool)

(assert (=> b!632364 m!903099))

(declare-fun m!903101 () Bool)

(assert (=> mapNonEmpty!2393 m!903101))

(check-sat (not b_next!18509) (not b!632359) (not mapNonEmpty!2393) (not b_next!18511) (not b!632374) (not b!632376) (not b_next!18515) b_and!62289 (not mapNonEmpty!2392) (not b!632372) (not b!632373) (not b!632363) (not b_next!18513) (not b!632362) (not b!632364) b_and!62293 b_and!62291 (not b!632361) (not start!61958) b_and!62287 (not b!632377))
(check-sat (not b_next!18509) (not b_next!18511) (not b_next!18515) b_and!62289 (not b_next!18513) b_and!62287 b_and!62293 b_and!62291)
