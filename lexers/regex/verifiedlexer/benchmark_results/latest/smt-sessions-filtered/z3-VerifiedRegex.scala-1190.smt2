; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61966 () Bool)

(assert start!61966)

(declare-fun b!632641 () Bool)

(declare-fun b_free!18525 () Bool)

(declare-fun b_next!18541 () Bool)

(assert (=> b!632641 (= b_free!18525 (not b_next!18541))))

(declare-fun tp!197077 () Bool)

(declare-fun b_and!62319 () Bool)

(assert (=> b!632641 (= tp!197077 b_and!62319)))

(declare-fun b!632636 () Bool)

(declare-fun b_free!18527 () Bool)

(declare-fun b_next!18543 () Bool)

(assert (=> b!632636 (= b_free!18527 (not b_next!18543))))

(declare-fun tp!197078 () Bool)

(declare-fun b_and!62321 () Bool)

(assert (=> b!632636 (= tp!197078 b_and!62321)))

(declare-fun b!632626 () Bool)

(declare-fun b_free!18529 () Bool)

(declare-fun b_next!18545 () Bool)

(assert (=> b!632626 (= b_free!18529 (not b_next!18545))))

(declare-fun tp!197087 () Bool)

(declare-fun b_and!62323 () Bool)

(assert (=> b!632626 (= tp!197087 b_and!62323)))

(declare-fun b!632638 () Bool)

(declare-fun b_free!18531 () Bool)

(declare-fun b_next!18547 () Bool)

(assert (=> b!632638 (= b_free!18531 (not b_next!18547))))

(declare-fun tp!197084 () Bool)

(declare-fun b_and!62325 () Bool)

(assert (=> b!632638 (= tp!197084 b_and!62325)))

(declare-fun b!632619 () Bool)

(declare-fun res!274343 () Bool)

(declare-fun e!384209 () Bool)

(assert (=> b!632619 (=> res!274343 e!384209)))

(declare-datatypes ((Regex!1685 0))(
  ( (ElementMatch!1685 (c!116173 (_ BitVec 16))) (Concat!3070 (regOne!3882 Regex!1685) (regTwo!3882 Regex!1685)) (EmptyExpr!1685) (Star!1685 (reg!2014 Regex!1685)) (EmptyLang!1685) (Union!1685 (regOne!3883 Regex!1685) (regTwo!3883 Regex!1685)) )
))
(declare-datatypes ((String!8660 0))(
  ( (String!8661 (value!43628 String)) )
))
(declare-datatypes ((List!6653 0))(
  ( (Nil!6639) (Cons!6639 (h!12040 (_ BitVec 16)) (t!83578 List!6653)) )
))
(declare-datatypes ((TokenValue!1385 0))(
  ( (FloatLiteralValue!2770 (text!10140 List!6653)) (TokenValueExt!1384 (__x!4683 Int)) (Broken!6925 (value!43629 List!6653)) (Object!1398) (End!1385) (Def!1385) (Underscore!1385) (Match!1385) (Else!1385) (Error!1385) (Case!1385) (If!1385) (Extends!1385) (Abstract!1385) (Class!1385) (Val!1385) (DelimiterValue!2770 (del!1445 List!6653)) (KeywordValue!1391 (value!43630 List!6653)) (CommentValue!2770 (value!43631 List!6653)) (WhitespaceValue!2770 (value!43632 List!6653)) (IndentationValue!1385 (value!43633 List!6653)) (String!8662) (Int32!1385) (Broken!6926 (value!43634 List!6653)) (Boolean!1386) (Unit!11697) (OperatorValue!1388 (op!1445 List!6653)) (IdentifierValue!2770 (value!43635 List!6653)) (IdentifierValue!2771 (value!43636 List!6653)) (WhitespaceValue!2771 (value!43637 List!6653)) (True!2770) (False!2770) (Broken!6927 (value!43638 List!6653)) (Broken!6928 (value!43639 List!6653)) (True!2771) (RightBrace!1385) (RightBracket!1385) (Colon!1385) (Null!1385) (Comma!1385) (LeftBracket!1385) (False!2771) (LeftBrace!1385) (ImaginaryLiteralValue!1385 (text!10141 List!6653)) (StringLiteralValue!4155 (value!43640 List!6653)) (EOFValue!1385 (value!43641 List!6653)) (IdentValue!1385 (value!43642 List!6653)) (DelimiterValue!2771 (value!43643 List!6653)) (DedentValue!1385 (value!43644 List!6653)) (NewLineValue!1385 (value!43645 List!6653)) (IntegerValue!4155 (value!43646 (_ BitVec 32)) (text!10142 List!6653)) (IntegerValue!4156 (value!43647 Int) (text!10143 List!6653)) (Times!1385) (Or!1385) (Equal!1385) (Minus!1385) (Broken!6929 (value!43648 List!6653)) (And!1385) (Div!1385) (LessEqual!1385) (Mod!1385) (Concat!3071) (Not!1385) (Plus!1385) (SpaceValue!1385 (value!43649 List!6653)) (IntegerValue!4157 (value!43650 Int) (text!10144 List!6653)) (StringLiteralValue!4156 (text!10145 List!6653)) (FloatLiteralValue!2771 (text!10146 List!6653)) (BytesLiteralValue!1385 (value!43651 List!6653)) (CommentValue!2771 (value!43652 List!6653)) (StringLiteralValue!4157 (value!43653 List!6653)) (ErrorTokenValue!1385 (msg!1446 List!6653)) )
))
(declare-datatypes ((IArray!4415 0))(
  ( (IArray!4416 (innerList!2265 List!6653)) )
))
(declare-datatypes ((Conc!2207 0))(
  ( (Node!2207 (left!5327 Conc!2207) (right!5657 Conc!2207) (csize!4644 Int) (cheight!2418 Int)) (Leaf!3398 (xs!4848 IArray!4415) (csize!4645 Int)) (Empty!2207) )
))
(declare-datatypes ((BalanceConc!4426 0))(
  ( (BalanceConc!4427 (c!116174 Conc!2207)) )
))
(declare-datatypes ((TokenValueInjection!2522 0))(
  ( (TokenValueInjection!2523 (toValue!2292 Int) (toChars!2151 Int)) )
))
(declare-datatypes ((Rule!2502 0))(
  ( (Rule!2503 (regex!1351 Regex!1685) (tag!1613 String!8660) (isSeparator!1351 Bool) (transformation!1351 TokenValueInjection!2522)) )
))
(declare-datatypes ((List!6654 0))(
  ( (Nil!6640) (Cons!6640 (h!12041 Regex!1685) (t!83579 List!6654)) )
))
(declare-datatypes ((Context!342 0))(
  ( (Context!343 (exprs!671 List!6654)) )
))
(declare-datatypes ((tuple2!7220 0))(
  ( (tuple2!7221 (_1!3881 Context!342) (_2!3881 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7222 0))(
  ( (tuple2!7223 (_1!3882 tuple2!7220) (_2!3882 (InoxSet Context!342))) )
))
(declare-datatypes ((List!6655 0))(
  ( (Nil!6641) (Cons!6641 (h!12042 tuple2!7222) (t!83580 List!6655)) )
))
(declare-datatypes ((Token!2426 0))(
  ( (Token!2427 (value!43654 TokenValue!1385) (rule!2147 Rule!2502) (size!5223 Int) (originalCharacters!1384 List!6653)) )
))
(declare-datatypes ((Hashable!584 0))(
  ( (HashableExt!583 (__x!4684 Int)) )
))
(declare-datatypes ((array!2351 0))(
  ( (array!2352 (arr!1069 (Array (_ BitVec 32) List!6655)) (size!5224 (_ BitVec 32))) )
))
(declare-datatypes ((array!2353 0))(
  ( (array!2354 (arr!1070 (Array (_ BitVec 32) (_ BitVec 64))) (size!5225 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1224 0))(
  ( (LongMapFixedSize!1225 (defaultEntry!968 Int) (mask!2334 (_ BitVec 32)) (extraKeys!859 (_ BitVec 32)) (zeroValue!869 List!6655) (minValue!869 List!6655) (_size!1333 (_ BitVec 32)) (_keys!906 array!2353) (_values!891 array!2351) (_vacant!673 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2389 0))(
  ( (Cell!2390 (v!16714 LongMapFixedSize!1224)) )
))
(declare-datatypes ((MutLongMap!612 0))(
  ( (LongMap!612 (underlying!1407 Cell!2389)) (MutLongMapExt!611 (__x!4685 Int)) )
))
(declare-datatypes ((Cell!2391 0))(
  ( (Cell!2392 (v!16715 MutLongMap!612)) )
))
(declare-datatypes ((MutableMap!584 0))(
  ( (MutableMapExt!583 (__x!4686 Int)) (HashMap!584 (underlying!1408 Cell!2391) (hashF!2492 Hashable!584) (_size!1334 (_ BitVec 32)) (defaultValue!735 Int)) )
))
(declare-datatypes ((CacheUp!246 0))(
  ( (CacheUp!247 (cache!971 MutableMap!584)) )
))
(declare-datatypes ((tuple3!440 0))(
  ( (tuple3!441 (_1!3883 Regex!1685) (_2!3883 Context!342) (_3!271 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7224 0))(
  ( (tuple2!7225 (_1!3884 tuple3!440) (_2!3884 (InoxSet Context!342))) )
))
(declare-datatypes ((List!6656 0))(
  ( (Nil!6642) (Cons!6642 (h!12043 tuple2!7224) (t!83581 List!6656)) )
))
(declare-datatypes ((array!2355 0))(
  ( (array!2356 (arr!1071 (Array (_ BitVec 32) List!6656)) (size!5226 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1226 0))(
  ( (LongMapFixedSize!1227 (defaultEntry!969 Int) (mask!2335 (_ BitVec 32)) (extraKeys!860 (_ BitVec 32)) (zeroValue!870 List!6656) (minValue!870 List!6656) (_size!1335 (_ BitVec 32)) (_keys!907 array!2353) (_values!892 array!2355) (_vacant!674 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2393 0))(
  ( (Cell!2394 (v!16716 LongMapFixedSize!1226)) )
))
(declare-datatypes ((MutLongMap!613 0))(
  ( (LongMap!613 (underlying!1409 Cell!2393)) (MutLongMapExt!612 (__x!4687 Int)) )
))
(declare-datatypes ((Cell!2395 0))(
  ( (Cell!2396 (v!16717 MutLongMap!613)) )
))
(declare-datatypes ((Hashable!585 0))(
  ( (HashableExt!584 (__x!4688 Int)) )
))
(declare-datatypes ((MutableMap!585 0))(
  ( (MutableMapExt!584 (__x!4689 Int)) (HashMap!585 (underlying!1410 Cell!2395) (hashF!2493 Hashable!585) (_size!1336 (_ BitVec 32)) (defaultValue!736 Int)) )
))
(declare-datatypes ((CacheDown!244 0))(
  ( (CacheDown!245 (cache!972 MutableMap!585)) )
))
(declare-datatypes ((List!6657 0))(
  ( (Nil!6643) (Cons!6643 (h!12044 Token!2426) (t!83582 List!6657)) )
))
(declare-datatypes ((IArray!4417 0))(
  ( (IArray!4418 (innerList!2266 List!6657)) )
))
(declare-datatypes ((Conc!2208 0))(
  ( (Node!2208 (left!5328 Conc!2208) (right!5658 Conc!2208) (csize!4646 Int) (cheight!2419 Int)) (Leaf!3399 (xs!4849 IArray!4417) (csize!4647 Int)) (Empty!2208) )
))
(declare-datatypes ((List!6658 0))(
  ( (Nil!6644) (Cons!6644 (h!12045 Rule!2502) (t!83583 List!6658)) )
))
(declare-datatypes ((BalanceConc!4428 0))(
  ( (BalanceConc!4429 (c!116175 Conc!2208)) )
))
(declare-datatypes ((PrintableTokens!84 0))(
  ( (PrintableTokens!85 (rules!8161 List!6658) (tokens!1174 BalanceConc!4428)) )
))
(declare-datatypes ((Option!1636 0))(
  ( (None!1635) (Some!1635 (v!16718 PrintableTokens!84)) )
))
(declare-datatypes ((tuple3!442 0))(
  ( (tuple3!443 (_1!3885 Option!1636) (_2!3885 CacheUp!246) (_3!272 CacheDown!244)) )
))
(declare-fun lt!269976 () tuple3!442)

(declare-fun usesJsonRules!0 (PrintableTokens!84) Bool)

(assert (=> b!632619 (= res!274343 (not (usesJsonRules!0 (v!16718 (_1!3885 lt!269976)))))))

(declare-fun b!632620 () Bool)

(declare-fun e!384205 () Bool)

(declare-fun e!384198 () Bool)

(assert (=> b!632620 (= e!384205 e!384198)))

(declare-fun b!632621 () Bool)

(declare-fun e!384199 () Bool)

(declare-fun tp!197083 () Bool)

(declare-fun mapRes!2417 () Bool)

(assert (=> b!632621 (= e!384199 (and tp!197083 mapRes!2417))))

(declare-fun condMapEmpty!2416 () Bool)

(declare-fun cacheDown!364 () CacheDown!244)

(declare-fun mapDefault!2417 () List!6656)

(assert (=> b!632621 (= condMapEmpty!2416 (= (arr!1071 (_values!892 (v!16716 (underlying!1409 (v!16717 (underlying!1410 (cache!972 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6656)) mapDefault!2417)))))

(declare-fun b!632622 () Bool)

(declare-fun e!384197 () Bool)

(declare-fun tp!197089 () Bool)

(declare-fun mapRes!2416 () Bool)

(assert (=> b!632622 (= e!384197 (and tp!197089 mapRes!2416))))

(declare-fun condMapEmpty!2417 () Bool)

(declare-fun cacheUp!351 () CacheUp!246)

(declare-fun mapDefault!2416 () List!6655)

(assert (=> b!632622 (= condMapEmpty!2417 (= (arr!1069 (_values!891 (v!16714 (underlying!1407 (v!16715 (underlying!1408 (cache!971 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6655)) mapDefault!2416)))))

(declare-fun e!384195 () Bool)

(declare-fun e!384201 () Bool)

(declare-fun printableTokens!2 () PrintableTokens!84)

(declare-fun b!632623 () Bool)

(declare-fun tp!197088 () Bool)

(declare-fun inv!8530 (BalanceConc!4428) Bool)

(assert (=> b!632623 (= e!384201 (and tp!197088 (inv!8530 (tokens!1174 printableTokens!2)) e!384195))))

(declare-fun mapIsEmpty!2416 () Bool)

(assert (=> mapIsEmpty!2416 mapRes!2416))

(declare-fun b!632624 () Bool)

(declare-fun e!384206 () Bool)

(declare-fun e!384200 () Bool)

(assert (=> b!632624 (= e!384206 e!384200)))

(declare-fun mapNonEmpty!2416 () Bool)

(declare-fun tp!197081 () Bool)

(declare-fun tp!197079 () Bool)

(assert (=> mapNonEmpty!2416 (= mapRes!2416 (and tp!197081 tp!197079))))

(declare-fun mapValue!2416 () List!6655)

(declare-fun mapKey!2416 () (_ BitVec 32))

(declare-fun mapRest!2416 () (Array (_ BitVec 32) List!6655))

(assert (=> mapNonEmpty!2416 (= (arr!1069 (_values!891 (v!16714 (underlying!1407 (v!16715 (underlying!1408 (cache!971 cacheUp!351))))))) (store mapRest!2416 mapKey!2416 mapValue!2416))))

(declare-fun mapIsEmpty!2417 () Bool)

(assert (=> mapIsEmpty!2417 mapRes!2417))

(declare-fun b!632625 () Bool)

(declare-fun res!274342 () Bool)

(assert (=> b!632625 (=> res!274342 e!384209)))

(declare-fun lt!269978 () tuple3!442)

(assert (=> b!632625 (= res!274342 (not (usesJsonRules!0 (v!16718 (_1!3885 lt!269978)))))))

(declare-fun tp!197076 () Bool)

(declare-fun e!384207 () Bool)

(declare-fun tp!197085 () Bool)

(declare-fun array_inv!781 (array!2353) Bool)

(declare-fun array_inv!782 (array!2355) Bool)

(assert (=> b!632626 (= e!384207 (and tp!197087 tp!197076 tp!197085 (array_inv!781 (_keys!907 (v!16716 (underlying!1409 (v!16717 (underlying!1410 (cache!972 cacheDown!364))))))) (array_inv!782 (_values!892 (v!16716 (underlying!1409 (v!16717 (underlying!1410 (cache!972 cacheDown!364))))))) e!384199))))

(declare-fun b!632627 () Bool)

(declare-fun e!384204 () Bool)

(declare-fun e!384203 () Bool)

(declare-fun lt!269966 () MutLongMap!612)

(get-info :version)

(assert (=> b!632627 (= e!384204 (and e!384203 ((_ is LongMap!612) lt!269966)))))

(assert (=> b!632627 (= lt!269966 (v!16715 (underlying!1408 (cache!971 cacheUp!351))))))

(declare-fun b!632628 () Bool)

(assert (=> b!632628 (= e!384209 true)))

(declare-datatypes ((List!6659 0))(
  ( (Nil!6645) (Cons!6645 (h!12046 PrintableTokens!84) (t!83584 List!6659)) )
))
(declare-datatypes ((IArray!4419 0))(
  ( (IArray!4420 (innerList!2267 List!6659)) )
))
(declare-datatypes ((Conc!2209 0))(
  ( (Node!2209 (left!5329 Conc!2209) (right!5659 Conc!2209) (csize!4648 Int) (cheight!2420 Int)) (Leaf!3400 (xs!4850 IArray!4419) (csize!4649 Int)) (Empty!2209) )
))
(declare-datatypes ((BalanceConc!4430 0))(
  ( (BalanceConc!4431 (c!116176 Conc!2209)) )
))
(declare-fun lt!269965 () BalanceConc!4430)

(declare-datatypes ((tuple2!7226 0))(
  ( (tuple2!7227 (_1!3886 Int) (_2!3886 PrintableTokens!84)) )
))
(declare-datatypes ((List!6660 0))(
  ( (Nil!6646) (Cons!6646 (h!12047 tuple2!7226) (t!83585 List!6660)) )
))
(declare-datatypes ((IArray!4421 0))(
  ( (IArray!4422 (innerList!2268 List!6660)) )
))
(declare-datatypes ((Conc!2210 0))(
  ( (Node!2210 (left!5330 Conc!2210) (right!5660 Conc!2210) (csize!4650 Int) (cheight!2421 Int)) (Leaf!3401 (xs!4851 IArray!4421) (csize!4651 Int)) (Empty!2210) )
))
(declare-datatypes ((BalanceConc!4432 0))(
  ( (BalanceConc!4433 (c!116177 Conc!2210)) )
))
(declare-fun lt!269974 () BalanceConc!4432)

(declare-fun lambda!17441 () Int)

(declare-fun map!1412 (BalanceConc!4432 Int) BalanceConc!4430)

(assert (=> b!632628 (= lt!269965 (map!1412 lt!269974 lambda!17441))))

(declare-fun b!632629 () Bool)

(declare-fun res!274347 () Bool)

(declare-fun e!384191 () Bool)

(assert (=> b!632629 (=> (not res!274347) (not e!384191))))

(assert (=> b!632629 (= res!274347 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!632630 () Bool)

(declare-fun tp!197086 () Bool)

(declare-fun inv!8531 (Conc!2208) Bool)

(assert (=> b!632630 (= e!384195 (and (inv!8531 (c!116175 (tokens!1174 printableTokens!2))) tp!197086))))

(declare-fun b!632631 () Bool)

(declare-fun e!384208 () Bool)

(declare-fun e!384196 () Bool)

(assert (=> b!632631 (= e!384208 e!384196)))

(declare-fun b!632632 () Bool)

(declare-fun e!384210 () Bool)

(declare-fun e!384192 () Bool)

(assert (=> b!632632 (= e!384210 e!384192)))

(declare-fun b!632634 () Bool)

(assert (=> b!632634 (= e!384203 e!384208)))

(declare-fun res!274346 () Bool)

(declare-fun e!384202 () Bool)

(assert (=> start!61966 (=> (not res!274346) (not e!384202))))

(declare-fun lt!269979 () Int)

(assert (=> start!61966 (= res!274346 (> lt!269979 0))))

(declare-fun size!5227 (PrintableTokens!84) Int)

(assert (=> start!61966 (= lt!269979 (size!5227 printableTokens!2))))

(assert (=> start!61966 e!384202))

(declare-fun inv!8532 (PrintableTokens!84) Bool)

(assert (=> start!61966 (and (inv!8532 printableTokens!2) e!384201)))

(declare-fun inv!8533 (CacheDown!244) Bool)

(assert (=> start!61966 (and (inv!8533 cacheDown!364) e!384205)))

(declare-fun inv!8534 (CacheUp!246) Bool)

(assert (=> start!61966 (and (inv!8534 cacheUp!351) e!384206)))

(declare-fun b!632633 () Bool)

(assert (=> b!632633 (= e!384192 e!384207)))

(declare-fun b!632635 () Bool)

(declare-fun res!274341 () Bool)

(assert (=> b!632635 (=> res!274341 e!384209)))

(declare-fun lt!269967 () tuple3!442)

(assert (=> b!632635 (= res!274341 (not (usesJsonRules!0 (v!16718 (_1!3885 lt!269967)))))))

(assert (=> b!632636 (= e!384200 (and e!384204 tp!197078))))

(declare-fun b!632637 () Bool)

(declare-fun res!274345 () Bool)

(assert (=> b!632637 (=> (not res!274345) (not e!384191))))

(declare-fun lt!269972 () List!6658)

(declare-datatypes ((LexerInterface!1235 0))(
  ( (LexerInterfaceExt!1232 (__x!4690 Int)) (Lexer!1233) )
))
(declare-fun rulesInvariant!1170 (LexerInterface!1235 List!6658) Bool)

(assert (=> b!632637 (= res!274345 (rulesInvariant!1170 Lexer!1233 lt!269972))))

(declare-fun tp!197075 () Bool)

(declare-fun tp!197080 () Bool)

(declare-fun array_inv!783 (array!2351) Bool)

(assert (=> b!632638 (= e!384196 (and tp!197084 tp!197075 tp!197080 (array_inv!781 (_keys!906 (v!16714 (underlying!1407 (v!16715 (underlying!1408 (cache!971 cacheUp!351))))))) (array_inv!783 (_values!891 (v!16714 (underlying!1407 (v!16715 (underlying!1408 (cache!971 cacheUp!351))))))) e!384197))))

(declare-fun mapNonEmpty!2417 () Bool)

(declare-fun tp!197082 () Bool)

(declare-fun tp!197074 () Bool)

(assert (=> mapNonEmpty!2417 (= mapRes!2417 (and tp!197082 tp!197074))))

(declare-fun mapKey!2417 () (_ BitVec 32))

(declare-fun mapRest!2417 () (Array (_ BitVec 32) List!6656))

(declare-fun mapValue!2417 () List!6656)

(assert (=> mapNonEmpty!2417 (= (arr!1071 (_values!892 (v!16716 (underlying!1409 (v!16717 (underlying!1410 (cache!972 cacheDown!364))))))) (store mapRest!2417 mapKey!2417 mapValue!2417))))

(declare-fun b!632639 () Bool)

(declare-fun e!384194 () Bool)

(declare-fun lt!269973 () MutLongMap!613)

(assert (=> b!632639 (= e!384194 (and e!384210 ((_ is LongMap!613) lt!269973)))))

(assert (=> b!632639 (= lt!269973 (v!16717 (underlying!1410 (cache!972 cacheDown!364))))))

(declare-fun b!632640 () Bool)

(assert (=> b!632640 (= e!384202 e!384191)))

(declare-fun res!274344 () Bool)

(assert (=> b!632640 (=> (not res!274344) (not e!384191))))

(declare-fun isEmpty!4638 (List!6658) Bool)

(assert (=> b!632640 (= res!274344 (not (isEmpty!4638 lt!269972)))))

(declare-datatypes ((JsonLexer!156 0))(
  ( (JsonLexer!157) )
))
(declare-fun rules!109 (JsonLexer!156) List!6658)

(assert (=> b!632640 (= lt!269972 (rules!109 JsonLexer!157))))

(assert (=> b!632641 (= e!384198 (and e!384194 tp!197077))))

(declare-fun b!632642 () Bool)

(assert (=> b!632642 (= e!384191 (not e!384209))))

(declare-fun res!274340 () Bool)

(assert (=> b!632642 (=> res!274340 e!384209)))

(assert (=> b!632642 (= res!274340 (or (not ((_ is Some!1635) (_1!3885 lt!269978))) (not ((_ is Some!1635) (_1!3885 lt!269967))) (not ((_ is Some!1635) (_1!3885 lt!269976)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!246 CacheDown!244) tuple3!442)

(assert (=> b!632642 (= lt!269976 (createRightBracketSeparator!0 (_2!3885 lt!269967) (_3!272 lt!269967)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!246 CacheDown!244) tuple3!442)

(assert (=> b!632642 (= lt!269967 (createLeftBracketSeparator!0 (_2!3885 lt!269978) (_3!272 lt!269978)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!246 CacheDown!244) tuple3!442)

(assert (=> b!632642 (= lt!269978 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-fun lambda!17442 () Int)

(declare-fun forall!1678 (BalanceConc!4430 Int) Bool)

(assert (=> b!632642 (forall!1678 (map!1412 lt!269974 lambda!17441) lambda!17442)))

(declare-fun lt!269968 () List!6660)

(declare-datatypes ((Unit!11698 0))(
  ( (Unit!11699) )
))
(declare-fun lt!269970 () Unit!11698)

(declare-fun mapPred!15 (List!6660 Int Int) Unit!11698)

(assert (=> b!632642 (= lt!269970 (mapPred!15 lt!269968 lambda!17441 lambda!17442))))

(declare-fun lt!269975 () Unit!11698)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6660) Unit!11698)

(assert (=> b!632642 (= lt!269975 (lemmaRemoveIdsPreservesRules!0 lt!269968))))

(declare-fun list!2827 (BalanceConc!4432) List!6660)

(assert (=> b!632642 (= lt!269968 (list!2827 lt!269974))))

(declare-fun lt!269980 () BalanceConc!4430)

(declare-fun lambda!17439 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4432) BalanceConc!4432)

(declare-fun map!1413 (BalanceConc!4430 Int) BalanceConc!4432)

(assert (=> b!632642 (= lt!269974 (sortObjectsByID!0 (map!1413 lt!269980 lambda!17439)))))

(declare-fun lt!269971 () List!6659)

(declare-fun lambda!17440 () Int)

(declare-fun lt!269969 () Unit!11698)

(declare-fun mapPred!16 (List!6659 Int Int) Unit!11698)

(assert (=> b!632642 (= lt!269969 (mapPred!16 lt!269971 lambda!17439 lambda!17440))))

(declare-fun lt!269977 () Unit!11698)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6659) Unit!11698)

(assert (=> b!632642 (= lt!269977 (lemmaAddIdsPreservesRules!0 lt!269971))))

(declare-fun list!2828 (BalanceConc!4430) List!6659)

(assert (=> b!632642 (= lt!269971 (list!2828 lt!269980))))

(declare-datatypes ((List!6661 0))(
  ( (Nil!6647) (Cons!6647 (h!12048 Int) (t!83586 List!6661)) )
))
(declare-datatypes ((IArray!4423 0))(
  ( (IArray!4424 (innerList!2269 List!6661)) )
))
(declare-datatypes ((Conc!2211 0))(
  ( (Node!2211 (left!5331 Conc!2211) (right!5661 Conc!2211) (csize!4652 Int) (cheight!2422 Int)) (Leaf!3402 (xs!4852 IArray!4423) (csize!4653 Int)) (Empty!2211) )
))
(declare-datatypes ((BalanceConc!4434 0))(
  ( (BalanceConc!4435 (c!116178 Conc!2211)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!84 Int BalanceConc!4434 BalanceConc!4430) BalanceConc!4430)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4428 Int Int BalanceConc!4434) BalanceConc!4434)

(assert (=> b!632642 (= lt!269980 (slicesMulti!0 printableTokens!2 lt!269979 (indicesOfOpenBraces!0 (tokens!1174 printableTokens!2) lt!269979 0 (BalanceConc!4435 Empty!2211)) (BalanceConc!4431 Empty!2209)))))

(assert (= (and start!61966 res!274346) b!632640))

(assert (= (and b!632640 res!274344) b!632637))

(assert (= (and b!632637 res!274345) b!632629))

(assert (= (and b!632629 res!274347) b!632642))

(assert (= (and b!632642 (not res!274340)) b!632625))

(assert (= (and b!632625 (not res!274342)) b!632635))

(assert (= (and b!632635 (not res!274341)) b!632619))

(assert (= (and b!632619 (not res!274343)) b!632628))

(assert (= b!632623 b!632630))

(assert (= start!61966 b!632623))

(assert (= (and b!632621 condMapEmpty!2416) mapIsEmpty!2417))

(assert (= (and b!632621 (not condMapEmpty!2416)) mapNonEmpty!2417))

(assert (= b!632626 b!632621))

(assert (= b!632633 b!632626))

(assert (= b!632632 b!632633))

(assert (= (and b!632639 ((_ is LongMap!613) (v!16717 (underlying!1410 (cache!972 cacheDown!364))))) b!632632))

(assert (= b!632641 b!632639))

(assert (= (and b!632620 ((_ is HashMap!585) (cache!972 cacheDown!364))) b!632641))

(assert (= start!61966 b!632620))

(assert (= (and b!632622 condMapEmpty!2417) mapIsEmpty!2416))

(assert (= (and b!632622 (not condMapEmpty!2417)) mapNonEmpty!2416))

(assert (= b!632638 b!632622))

(assert (= b!632631 b!632638))

(assert (= b!632634 b!632631))

(assert (= (and b!632627 ((_ is LongMap!612) (v!16715 (underlying!1408 (cache!971 cacheUp!351))))) b!632634))

(assert (= b!632636 b!632627))

(assert (= (and b!632624 ((_ is HashMap!584) (cache!971 cacheUp!351))) b!632636))

(assert (= start!61966 b!632624))

(declare-fun m!903291 () Bool)

(assert (=> b!632629 m!903291))

(declare-fun m!903293 () Bool)

(assert (=> b!632642 m!903293))

(declare-fun m!903295 () Bool)

(assert (=> b!632642 m!903295))

(assert (=> b!632642 m!903293))

(declare-fun m!903297 () Bool)

(assert (=> b!632642 m!903297))

(declare-fun m!903299 () Bool)

(assert (=> b!632642 m!903299))

(declare-fun m!903301 () Bool)

(assert (=> b!632642 m!903301))

(declare-fun m!903303 () Bool)

(assert (=> b!632642 m!903303))

(declare-fun m!903305 () Bool)

(assert (=> b!632642 m!903305))

(declare-fun m!903307 () Bool)

(assert (=> b!632642 m!903307))

(declare-fun m!903309 () Bool)

(assert (=> b!632642 m!903309))

(declare-fun m!903311 () Bool)

(assert (=> b!632642 m!903311))

(declare-fun m!903313 () Bool)

(assert (=> b!632642 m!903313))

(declare-fun m!903315 () Bool)

(assert (=> b!632642 m!903315))

(assert (=> b!632642 m!903309))

(declare-fun m!903317 () Bool)

(assert (=> b!632642 m!903317))

(assert (=> b!632642 m!903307))

(declare-fun m!903319 () Bool)

(assert (=> b!632642 m!903319))

(declare-fun m!903321 () Bool)

(assert (=> b!632642 m!903321))

(declare-fun m!903323 () Bool)

(assert (=> start!61966 m!903323))

(declare-fun m!903325 () Bool)

(assert (=> start!61966 m!903325))

(declare-fun m!903327 () Bool)

(assert (=> start!61966 m!903327))

(declare-fun m!903329 () Bool)

(assert (=> start!61966 m!903329))

(assert (=> b!632628 m!903309))

(declare-fun m!903331 () Bool)

(assert (=> mapNonEmpty!2416 m!903331))

(declare-fun m!903333 () Bool)

(assert (=> b!632630 m!903333))

(declare-fun m!903335 () Bool)

(assert (=> b!632635 m!903335))

(declare-fun m!903337 () Bool)

(assert (=> mapNonEmpty!2417 m!903337))

(declare-fun m!903339 () Bool)

(assert (=> b!632640 m!903339))

(declare-fun m!903341 () Bool)

(assert (=> b!632640 m!903341))

(declare-fun m!903343 () Bool)

(assert (=> b!632623 m!903343))

(declare-fun m!903345 () Bool)

(assert (=> b!632638 m!903345))

(declare-fun m!903347 () Bool)

(assert (=> b!632638 m!903347))

(declare-fun m!903349 () Bool)

(assert (=> b!632626 m!903349))

(declare-fun m!903351 () Bool)

(assert (=> b!632626 m!903351))

(declare-fun m!903353 () Bool)

(assert (=> b!632637 m!903353))

(declare-fun m!903355 () Bool)

(assert (=> b!632625 m!903355))

(declare-fun m!903357 () Bool)

(assert (=> b!632619 m!903357))

(check-sat (not start!61966) (not b!632628) (not b_next!18547) (not b!632637) (not b_next!18541) (not b_next!18545) (not b!632630) (not b!632622) (not b_next!18543) b_and!62323 (not b!632626) (not b!632619) (not b!632642) (not b!632629) (not b!632625) (not b!632635) b_and!62319 (not b!632621) (not mapNonEmpty!2417) (not b!632638) (not b!632623) b_and!62321 b_and!62325 (not mapNonEmpty!2416) (not b!632640))
(check-sat b_and!62319 (not b_next!18547) (not b_next!18541) (not b_next!18545) (not b_next!18543) b_and!62323 b_and!62321 b_and!62325)
