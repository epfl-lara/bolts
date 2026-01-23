; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62276 () Bool)

(assert start!62276)

(declare-fun b!635911 () Bool)

(declare-fun b_free!18637 () Bool)

(declare-fun b_next!18661 () Bool)

(assert (=> b!635911 (= b_free!18637 (not b_next!18661))))

(declare-fun tp!197885 () Bool)

(declare-fun b_and!62431 () Bool)

(assert (=> b!635911 (= tp!197885 b_and!62431)))

(declare-fun b!635904 () Bool)

(declare-fun b_free!18639 () Bool)

(declare-fun b_next!18663 () Bool)

(assert (=> b!635904 (= b_free!18639 (not b_next!18663))))

(declare-fun tp!197881 () Bool)

(declare-fun b_and!62433 () Bool)

(assert (=> b!635904 (= tp!197881 b_and!62433)))

(declare-fun b!635900 () Bool)

(declare-fun b_free!18641 () Bool)

(declare-fun b_next!18665 () Bool)

(assert (=> b!635900 (= b_free!18641 (not b_next!18665))))

(declare-fun tp!197890 () Bool)

(declare-fun b_and!62435 () Bool)

(assert (=> b!635900 (= tp!197890 b_and!62435)))

(declare-fun b!635906 () Bool)

(declare-fun b_free!18643 () Bool)

(declare-fun b_next!18667 () Bool)

(assert (=> b!635906 (= b_free!18643 (not b_next!18667))))

(declare-fun tp!197886 () Bool)

(declare-fun b_and!62437 () Bool)

(assert (=> b!635906 (= tp!197886 b_and!62437)))

(declare-fun b!635886 () Bool)

(declare-fun e!387098 () Bool)

(declare-fun e!387106 () Bool)

(assert (=> b!635886 (= e!387098 e!387106)))

(declare-fun b!635887 () Bool)

(declare-fun e!387099 () Bool)

(declare-fun e!387088 () Bool)

(assert (=> b!635887 (= e!387099 e!387088)))

(declare-fun b!635888 () Bool)

(declare-fun e!387102 () Bool)

(declare-fun e!387085 () Bool)

(assert (=> b!635888 (= e!387102 e!387085)))

(declare-fun b!635889 () Bool)

(declare-fun e!387104 () Bool)

(assert (=> b!635889 (= e!387104 e!387102)))

(declare-fun res!276282 () Bool)

(declare-fun e!387094 () Bool)

(assert (=> start!62276 (=> (not res!276282) (not e!387094))))

(declare-fun lt!271746 () Int)

(assert (=> start!62276 (= res!276282 (> lt!271746 0))))

(declare-datatypes ((List!6744 0))(
  ( (Nil!6730) (Cons!6730 (h!12131 (_ BitVec 16)) (t!84096 List!6744)) )
))
(declare-datatypes ((TokenValue!1396 0))(
  ( (FloatLiteralValue!2792 (text!10217 List!6744)) (TokenValueExt!1395 (__x!4764 Int)) (Broken!6980 (value!43942 List!6744)) (Object!1409) (End!1396) (Def!1396) (Underscore!1396) (Match!1396) (Else!1396) (Error!1396) (Case!1396) (If!1396) (Extends!1396) (Abstract!1396) (Class!1396) (Val!1396) (DelimiterValue!2792 (del!1456 List!6744)) (KeywordValue!1402 (value!43943 List!6744)) (CommentValue!2792 (value!43944 List!6744)) (WhitespaceValue!2792 (value!43945 List!6744)) (IndentationValue!1396 (value!43946 List!6744)) (String!8717) (Int32!1396) (Broken!6981 (value!43947 List!6744)) (Boolean!1397) (Unit!11795) (OperatorValue!1399 (op!1456 List!6744)) (IdentifierValue!2792 (value!43948 List!6744)) (IdentifierValue!2793 (value!43949 List!6744)) (WhitespaceValue!2793 (value!43950 List!6744)) (True!2792) (False!2792) (Broken!6982 (value!43951 List!6744)) (Broken!6983 (value!43952 List!6744)) (True!2793) (RightBrace!1396) (RightBracket!1396) (Colon!1396) (Null!1396) (Comma!1396) (LeftBracket!1396) (False!2793) (LeftBrace!1396) (ImaginaryLiteralValue!1396 (text!10218 List!6744)) (StringLiteralValue!4188 (value!43953 List!6744)) (EOFValue!1396 (value!43954 List!6744)) (IdentValue!1396 (value!43955 List!6744)) (DelimiterValue!2793 (value!43956 List!6744)) (DedentValue!1396 (value!43957 List!6744)) (NewLineValue!1396 (value!43958 List!6744)) (IntegerValue!4188 (value!43959 (_ BitVec 32)) (text!10219 List!6744)) (IntegerValue!4189 (value!43960 Int) (text!10220 List!6744)) (Times!1396) (Or!1396) (Equal!1396) (Minus!1396) (Broken!6984 (value!43961 List!6744)) (And!1396) (Div!1396) (LessEqual!1396) (Mod!1396) (Concat!3093) (Not!1396) (Plus!1396) (SpaceValue!1396 (value!43962 List!6744)) (IntegerValue!4190 (value!43963 Int) (text!10221 List!6744)) (StringLiteralValue!4189 (text!10222 List!6744)) (FloatLiteralValue!2793 (text!10223 List!6744)) (BytesLiteralValue!1396 (value!43964 List!6744)) (CommentValue!2793 (value!43965 List!6744)) (StringLiteralValue!4190 (value!43966 List!6744)) (ErrorTokenValue!1396 (msg!1457 List!6744)) )
))
(declare-datatypes ((Regex!1697 0))(
  ( (ElementMatch!1697 (c!116488 (_ BitVec 16))) (Concat!3094 (regOne!3906 Regex!1697) (regTwo!3906 Regex!1697)) (EmptyExpr!1697) (Star!1697 (reg!2026 Regex!1697)) (EmptyLang!1697) (Union!1697 (regOne!3907 Regex!1697) (regTwo!3907 Regex!1697)) )
))
(declare-datatypes ((String!8718 0))(
  ( (String!8719 (value!43967 String)) )
))
(declare-datatypes ((IArray!4505 0))(
  ( (IArray!4506 (innerList!2310 List!6744)) )
))
(declare-datatypes ((Conc!2252 0))(
  ( (Node!2252 (left!5382 Conc!2252) (right!5712 Conc!2252) (csize!4734 Int) (cheight!2463 Int)) (Leaf!3449 (xs!4893 IArray!4505) (csize!4735 Int)) (Empty!2252) )
))
(declare-datatypes ((BalanceConc!4516 0))(
  ( (BalanceConc!4517 (c!116489 Conc!2252)) )
))
(declare-datatypes ((TokenValueInjection!2544 0))(
  ( (TokenValueInjection!2545 (toValue!2303 Int) (toChars!2162 Int)) )
))
(declare-datatypes ((Rule!2524 0))(
  ( (Rule!2525 (regex!1362 Regex!1697) (tag!1624 String!8718) (isSeparator!1362 Bool) (transformation!1362 TokenValueInjection!2544)) )
))
(declare-datatypes ((Token!2446 0))(
  ( (Token!2447 (value!43968 TokenValue!1396) (rule!2157 Rule!2524) (size!5293 Int) (originalCharacters!1394 List!6744)) )
))
(declare-datatypes ((List!6745 0))(
  ( (Nil!6731) (Cons!6731 (h!12132 Token!2446) (t!84097 List!6745)) )
))
(declare-datatypes ((IArray!4507 0))(
  ( (IArray!4508 (innerList!2311 List!6745)) )
))
(declare-datatypes ((Conc!2253 0))(
  ( (Node!2253 (left!5383 Conc!2253) (right!5713 Conc!2253) (csize!4736 Int) (cheight!2464 Int)) (Leaf!3450 (xs!4894 IArray!4507) (csize!4737 Int)) (Empty!2253) )
))
(declare-datatypes ((List!6746 0))(
  ( (Nil!6732) (Cons!6732 (h!12133 Rule!2524) (t!84098 List!6746)) )
))
(declare-datatypes ((BalanceConc!4518 0))(
  ( (BalanceConc!4519 (c!116490 Conc!2253)) )
))
(declare-datatypes ((PrintableTokens!104 0))(
  ( (PrintableTokens!105 (rules!8181 List!6746) (tokens!1189 BalanceConc!4518)) )
))
(declare-fun printableTokens!2 () PrintableTokens!104)

(declare-fun size!5294 (PrintableTokens!104) Int)

(assert (=> start!62276 (= lt!271746 (size!5294 printableTokens!2))))

(assert (=> start!62276 e!387094))

(declare-fun e!387093 () Bool)

(declare-fun inv!8592 (PrintableTokens!104) Bool)

(assert (=> start!62276 (and (inv!8592 printableTokens!2) e!387093)))

(declare-datatypes ((List!6747 0))(
  ( (Nil!6733) (Cons!6733 (h!12134 Regex!1697) (t!84099 List!6747)) )
))
(declare-datatypes ((Context!366 0))(
  ( (Context!367 (exprs!683 List!6747)) )
))
(declare-datatypes ((tuple3!484 0))(
  ( (tuple3!485 (_1!3942 Regex!1697) (_2!3942 Context!366) (_3!293 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7298 0))(
  ( (tuple2!7299 (_1!3943 tuple3!484) (_2!3943 (InoxSet Context!366))) )
))
(declare-datatypes ((List!6748 0))(
  ( (Nil!6734) (Cons!6734 (h!12135 tuple2!7298) (t!84100 List!6748)) )
))
(declare-datatypes ((array!2423 0))(
  ( (array!2424 (arr!1102 (Array (_ BitVec 32) List!6748)) (size!5295 (_ BitVec 32))) )
))
(declare-datatypes ((array!2425 0))(
  ( (array!2426 (arr!1103 (Array (_ BitVec 32) (_ BitVec 64))) (size!5296 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1266 0))(
  ( (LongMapFixedSize!1267 (defaultEntry!989 Int) (mask!2361 (_ BitVec 32)) (extraKeys!880 (_ BitVec 32)) (zeroValue!890 List!6748) (minValue!890 List!6748) (_size!1375 (_ BitVec 32)) (_keys!927 array!2425) (_values!912 array!2423) (_vacant!694 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2473 0))(
  ( (Cell!2474 (v!16826 LongMapFixedSize!1266)) )
))
(declare-datatypes ((MutLongMap!633 0))(
  ( (LongMap!633 (underlying!1449 Cell!2473)) (MutLongMapExt!632 (__x!4765 Int)) )
))
(declare-datatypes ((Cell!2475 0))(
  ( (Cell!2476 (v!16827 MutLongMap!633)) )
))
(declare-datatypes ((Hashable!605 0))(
  ( (HashableExt!604 (__x!4766 Int)) )
))
(declare-datatypes ((MutableMap!605 0))(
  ( (MutableMapExt!604 (__x!4767 Int)) (HashMap!605 (underlying!1450 Cell!2475) (hashF!2513 Hashable!605) (_size!1376 (_ BitVec 32)) (defaultValue!756 Int)) )
))
(declare-datatypes ((CacheDown!266 0))(
  ( (CacheDown!267 (cache!992 MutableMap!605)) )
))
(declare-fun cacheDown!364 () CacheDown!266)

(declare-fun e!387107 () Bool)

(declare-fun inv!8593 (CacheDown!266) Bool)

(assert (=> start!62276 (and (inv!8593 cacheDown!364) e!387107)))

(declare-datatypes ((Hashable!606 0))(
  ( (HashableExt!605 (__x!4768 Int)) )
))
(declare-datatypes ((tuple2!7300 0))(
  ( (tuple2!7301 (_1!3944 Context!366) (_2!3944 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7302 0))(
  ( (tuple2!7303 (_1!3945 tuple2!7300) (_2!3945 (InoxSet Context!366))) )
))
(declare-datatypes ((List!6749 0))(
  ( (Nil!6735) (Cons!6735 (h!12136 tuple2!7302) (t!84101 List!6749)) )
))
(declare-datatypes ((array!2427 0))(
  ( (array!2428 (arr!1104 (Array (_ BitVec 32) List!6749)) (size!5297 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1268 0))(
  ( (LongMapFixedSize!1269 (defaultEntry!990 Int) (mask!2362 (_ BitVec 32)) (extraKeys!881 (_ BitVec 32)) (zeroValue!891 List!6749) (minValue!891 List!6749) (_size!1377 (_ BitVec 32)) (_keys!928 array!2425) (_values!913 array!2427) (_vacant!695 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2477 0))(
  ( (Cell!2478 (v!16828 LongMapFixedSize!1268)) )
))
(declare-datatypes ((MutLongMap!634 0))(
  ( (LongMap!634 (underlying!1451 Cell!2477)) (MutLongMapExt!633 (__x!4769 Int)) )
))
(declare-datatypes ((Cell!2479 0))(
  ( (Cell!2480 (v!16829 MutLongMap!634)) )
))
(declare-datatypes ((MutableMap!606 0))(
  ( (MutableMapExt!605 (__x!4770 Int)) (HashMap!606 (underlying!1452 Cell!2479) (hashF!2514 Hashable!606) (_size!1378 (_ BitVec 32)) (defaultValue!757 Int)) )
))
(declare-datatypes ((CacheUp!266 0))(
  ( (CacheUp!267 (cache!993 MutableMap!606)) )
))
(declare-fun cacheUp!351 () CacheUp!266)

(declare-fun inv!8594 (CacheUp!266) Bool)

(assert (=> start!62276 (and (inv!8594 cacheUp!351) e!387098)))

(declare-fun b!635890 () Bool)

(declare-fun e!387100 () Bool)

(assert (=> b!635890 (= e!387100 true)))

(declare-fun lt!271754 () Bool)

(declare-datatypes ((Option!1645 0))(
  ( (None!1644) (Some!1644 (v!16830 PrintableTokens!104)) )
))
(declare-fun lt!271759 () Option!1645)

(declare-fun usesJsonRules!0 (PrintableTokens!104) Bool)

(assert (=> b!635890 (= lt!271754 (usesJsonRules!0 (v!16830 lt!271759)))))

(declare-fun lt!271750 () BalanceConc!4516)

(declare-fun print!491 (PrintableTokens!104) BalanceConc!4516)

(assert (=> b!635890 (= lt!271750 (print!491 (v!16830 lt!271759)))))

(declare-fun b!635891 () Bool)

(declare-fun e!387086 () Bool)

(declare-fun tp!197884 () Bool)

(declare-fun mapRes!2502 () Bool)

(assert (=> b!635891 (= e!387086 (and tp!197884 mapRes!2502))))

(declare-fun condMapEmpty!2503 () Bool)

(declare-fun mapDefault!2503 () List!6749)

(assert (=> b!635891 (= condMapEmpty!2503 (= (arr!1104 (_values!913 (v!16828 (underlying!1451 (v!16829 (underlying!1452 (cache!993 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6749)) mapDefault!2503)))))

(declare-fun b!635892 () Bool)

(declare-fun res!276281 () Bool)

(declare-fun e!387089 () Bool)

(assert (=> b!635892 (=> res!276281 e!387089)))

(declare-datatypes ((tuple3!486 0))(
  ( (tuple3!487 (_1!3946 Option!1645) (_2!3946 CacheUp!266) (_3!294 CacheDown!266)) )
))
(declare-fun lt!271747 () tuple3!486)

(assert (=> b!635892 (= res!276281 (not (usesJsonRules!0 (v!16830 (_1!3946 lt!271747)))))))

(declare-fun b!635893 () Bool)

(declare-fun e!387103 () Bool)

(assert (=> b!635893 (= e!387088 e!387103)))

(declare-fun e!387095 () Bool)

(declare-fun b!635894 () Bool)

(declare-fun tp!197891 () Bool)

(declare-fun inv!8595 (BalanceConc!4518) Bool)

(assert (=> b!635894 (= e!387093 (and tp!197891 (inv!8595 (tokens!1189 printableTokens!2)) e!387095))))

(declare-fun mapNonEmpty!2502 () Bool)

(declare-fun tp!197892 () Bool)

(declare-fun tp!197880 () Bool)

(assert (=> mapNonEmpty!2502 (= mapRes!2502 (and tp!197892 tp!197880))))

(declare-fun mapValue!2502 () List!6749)

(declare-fun mapRest!2503 () (Array (_ BitVec 32) List!6749))

(declare-fun mapKey!2503 () (_ BitVec 32))

(assert (=> mapNonEmpty!2502 (= (arr!1104 (_values!913 (v!16828 (underlying!1451 (v!16829 (underlying!1452 (cache!993 cacheUp!351))))))) (store mapRest!2503 mapKey!2503 mapValue!2502))))

(declare-fun b!635895 () Bool)

(declare-fun res!276286 () Bool)

(declare-fun e!387096 () Bool)

(assert (=> b!635895 (=> (not res!276286) (not e!387096))))

(assert (=> b!635895 (= res!276286 (usesJsonRules!0 printableTokens!2))))

(declare-fun mapNonEmpty!2503 () Bool)

(declare-fun mapRes!2503 () Bool)

(declare-fun tp!197888 () Bool)

(declare-fun tp!197879 () Bool)

(assert (=> mapNonEmpty!2503 (= mapRes!2503 (and tp!197888 tp!197879))))

(declare-fun mapRest!2502 () (Array (_ BitVec 32) List!6748))

(declare-fun mapKey!2502 () (_ BitVec 32))

(declare-fun mapValue!2503 () List!6748)

(assert (=> mapNonEmpty!2503 (= (arr!1102 (_values!912 (v!16826 (underlying!1449 (v!16827 (underlying!1450 (cache!992 cacheDown!364))))))) (store mapRest!2502 mapKey!2502 mapValue!2503))))

(declare-fun b!635896 () Bool)

(declare-fun e!387101 () Bool)

(assert (=> b!635896 (= e!387089 e!387101)))

(declare-fun res!276279 () Bool)

(assert (=> b!635896 (=> res!276279 e!387101)))

(declare-fun lt!271748 () Option!1645)

(get-info :version)

(assert (=> b!635896 (= res!276279 (not ((_ is Some!1644) lt!271748)))))

(declare-fun lt!271749 () List!6746)

(declare-datatypes ((tuple2!7304 0))(
  ( (tuple2!7305 (_1!3947 Int) (_2!3947 PrintableTokens!104)) )
))
(declare-datatypes ((List!6750 0))(
  ( (Nil!6736) (Cons!6736 (h!12137 tuple2!7304) (t!84102 List!6750)) )
))
(declare-datatypes ((IArray!4509 0))(
  ( (IArray!4510 (innerList!2312 List!6750)) )
))
(declare-datatypes ((Conc!2254 0))(
  ( (Node!2254 (left!5384 Conc!2254) (right!5714 Conc!2254) (csize!4738 Int) (cheight!2465 Int)) (Leaf!3451 (xs!4895 IArray!4509) (csize!4739 Int)) (Empty!2254) )
))
(declare-datatypes ((BalanceConc!4520 0))(
  ( (BalanceConc!4521 (c!116491 Conc!2254)) )
))
(declare-fun lt!271760 () BalanceConc!4520)

(declare-fun lambda!17983 () Int)

(declare-datatypes ((List!6751 0))(
  ( (Nil!6737) (Cons!6737 (h!12138 PrintableTokens!104) (t!84103 List!6751)) )
))
(declare-datatypes ((IArray!4511 0))(
  ( (IArray!4512 (innerList!2313 List!6751)) )
))
(declare-datatypes ((Conc!2255 0))(
  ( (Node!2255 (left!5385 Conc!2255) (right!5715 Conc!2255) (csize!4740 Int) (cheight!2466 Int)) (Leaf!3452 (xs!4896 IArray!4511) (csize!4741 Int)) (Empty!2255) )
))
(declare-datatypes ((BalanceConc!4522 0))(
  ( (BalanceConc!4523 (c!116492 Conc!2255)) )
))
(declare-fun recombineSlicesWithSep!0 (BalanceConc!4522 PrintableTokens!104 PrintableTokens!104) Option!1645)

(declare-fun map!1446 (BalanceConc!4520 Int) BalanceConc!4522)

(declare-fun emptyPrintableTokens!6 (List!6746) PrintableTokens!104)

(assert (=> b!635896 (= lt!271748 (recombineSlicesWithSep!0 (map!1446 lt!271760 lambda!17983) (v!16830 (_1!3946 lt!271747)) (emptyPrintableTokens!6 lt!271749)))))

(declare-fun mapIsEmpty!2502 () Bool)

(assert (=> mapIsEmpty!2502 mapRes!2502))

(declare-fun b!635897 () Bool)

(assert (=> b!635897 (= e!387101 e!387100)))

(declare-fun res!276287 () Bool)

(assert (=> b!635897 (=> res!276287 e!387100)))

(assert (=> b!635897 (= res!276287 (not ((_ is Some!1644) lt!271759)))))

(declare-fun lt!271757 () tuple3!486)

(declare-fun lt!271755 () tuple3!486)

(declare-fun encloseInSep!0 (PrintableTokens!104 PrintableTokens!104 PrintableTokens!104) Option!1645)

(assert (=> b!635897 (= lt!271759 (encloseInSep!0 (v!16830 lt!271748) (v!16830 (_1!3946 lt!271757)) (v!16830 (_1!3946 lt!271755))))))

(declare-fun b!635898 () Bool)

(declare-fun res!276285 () Bool)

(assert (=> b!635898 (=> res!276285 e!387089)))

(assert (=> b!635898 (= res!276285 (not (usesJsonRules!0 (v!16830 (_1!3946 lt!271757)))))))

(declare-fun b!635899 () Bool)

(declare-fun e!387091 () Bool)

(declare-fun lt!271744 () MutLongMap!634)

(assert (=> b!635899 (= e!387091 (and e!387099 ((_ is LongMap!634) lt!271744)))))

(assert (=> b!635899 (= lt!271744 (v!16829 (underlying!1452 (cache!993 cacheUp!351))))))

(declare-fun tp!197893 () Bool)

(declare-fun tp!197882 () Bool)

(declare-fun array_inv!801 (array!2425) Bool)

(declare-fun array_inv!802 (array!2427) Bool)

(assert (=> b!635900 (= e!387103 (and tp!197890 tp!197893 tp!197882 (array_inv!801 (_keys!928 (v!16828 (underlying!1451 (v!16829 (underlying!1452 (cache!993 cacheUp!351))))))) (array_inv!802 (_values!913 (v!16828 (underlying!1451 (v!16829 (underlying!1452 (cache!993 cacheUp!351))))))) e!387086))))

(declare-fun b!635901 () Bool)

(declare-fun res!276278 () Bool)

(assert (=> b!635901 (=> res!276278 e!387089)))

(assert (=> b!635901 (= res!276278 (not (usesJsonRules!0 (v!16830 (_1!3946 lt!271755)))))))

(declare-fun b!635902 () Bool)

(declare-fun res!276280 () Bool)

(assert (=> b!635902 (=> (not res!276280) (not e!387096))))

(declare-datatypes ((LexerInterface!1242 0))(
  ( (LexerInterfaceExt!1239 (__x!4771 Int)) (Lexer!1240) )
))
(declare-fun rulesInvariant!1177 (LexerInterface!1242 List!6746) Bool)

(assert (=> b!635902 (= res!276280 (rulesInvariant!1177 Lexer!1240 lt!271749))))

(declare-fun b!635903 () Bool)

(declare-fun tp!197878 () Bool)

(declare-fun inv!8596 (Conc!2253) Bool)

(assert (=> b!635903 (= e!387095 (and (inv!8596 (c!116490 (tokens!1189 printableTokens!2))) tp!197878))))

(assert (=> b!635904 (= e!387106 (and e!387091 tp!197881))))

(declare-fun b!635905 () Bool)

(declare-fun e!387090 () Bool)

(assert (=> b!635905 (= e!387107 e!387090)))

(declare-fun tp!197883 () Bool)

(declare-fun e!387105 () Bool)

(declare-fun tp!197889 () Bool)

(declare-fun array_inv!803 (array!2423) Bool)

(assert (=> b!635906 (= e!387085 (and tp!197886 tp!197883 tp!197889 (array_inv!801 (_keys!927 (v!16826 (underlying!1449 (v!16827 (underlying!1450 (cache!992 cacheDown!364))))))) (array_inv!803 (_values!912 (v!16826 (underlying!1449 (v!16827 (underlying!1450 (cache!992 cacheDown!364))))))) e!387105))))

(declare-fun b!635907 () Bool)

(declare-fun tp!197887 () Bool)

(assert (=> b!635907 (= e!387105 (and tp!197887 mapRes!2503))))

(declare-fun condMapEmpty!2502 () Bool)

(declare-fun mapDefault!2502 () List!6748)

(assert (=> b!635907 (= condMapEmpty!2502 (= (arr!1102 (_values!912 (v!16826 (underlying!1449 (v!16827 (underlying!1450 (cache!992 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6748)) mapDefault!2502)))))

(declare-fun b!635908 () Bool)

(declare-fun e!387087 () Bool)

(declare-fun lt!271745 () MutLongMap!633)

(assert (=> b!635908 (= e!387087 (and e!387104 ((_ is LongMap!633) lt!271745)))))

(assert (=> b!635908 (= lt!271745 (v!16827 (underlying!1450 (cache!992 cacheDown!364))))))

(declare-fun mapIsEmpty!2503 () Bool)

(assert (=> mapIsEmpty!2503 mapRes!2503))

(declare-fun b!635909 () Bool)

(assert (=> b!635909 (= e!387096 (not e!387089))))

(declare-fun res!276283 () Bool)

(assert (=> b!635909 (=> res!276283 e!387089)))

(assert (=> b!635909 (= res!276283 (or (not ((_ is Some!1644) (_1!3946 lt!271747))) (not ((_ is Some!1644) (_1!3946 lt!271757))) (not ((_ is Some!1644) (_1!3946 lt!271755)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!266 CacheDown!266) tuple3!486)

(assert (=> b!635909 (= lt!271755 (createRightBracketSeparator!0 (_2!3946 lt!271757) (_3!294 lt!271757)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!266 CacheDown!266) tuple3!486)

(assert (=> b!635909 (= lt!271757 (createLeftBracketSeparator!0 (_2!3946 lt!271747) (_3!294 lt!271747)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!266 CacheDown!266) tuple3!486)

(assert (=> b!635909 (= lt!271747 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-fun lambda!17984 () Int)

(declare-fun forall!1706 (BalanceConc!4522 Int) Bool)

(assert (=> b!635909 (forall!1706 (map!1446 lt!271760 lambda!17983) lambda!17984)))

(declare-fun lt!271751 () List!6750)

(declare-datatypes ((Unit!11796 0))(
  ( (Unit!11797) )
))
(declare-fun lt!271758 () Unit!11796)

(declare-fun mapPred!31 (List!6750 Int Int) Unit!11796)

(assert (=> b!635909 (= lt!271758 (mapPred!31 lt!271751 lambda!17983 lambda!17984))))

(declare-fun lt!271756 () Unit!11796)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6750) Unit!11796)

(assert (=> b!635909 (= lt!271756 (lemmaRemoveIdsPreservesRules!0 lt!271751))))

(declare-fun list!2855 (BalanceConc!4520) List!6750)

(assert (=> b!635909 (= lt!271751 (list!2855 lt!271760))))

(declare-fun lt!271753 () BalanceConc!4522)

(declare-fun lambda!17981 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4520) BalanceConc!4520)

(declare-fun map!1447 (BalanceConc!4522 Int) BalanceConc!4520)

(assert (=> b!635909 (= lt!271760 (sortObjectsByID!0 (map!1447 lt!271753 lambda!17981)))))

(declare-fun lambda!17982 () Int)

(declare-fun lt!271742 () List!6751)

(declare-fun lt!271743 () Unit!11796)

(declare-fun mapPred!32 (List!6751 Int Int) Unit!11796)

(assert (=> b!635909 (= lt!271743 (mapPred!32 lt!271742 lambda!17981 lambda!17982))))

(declare-fun lt!271752 () Unit!11796)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6751) Unit!11796)

(assert (=> b!635909 (= lt!271752 (lemmaAddIdsPreservesRules!0 lt!271742))))

(declare-fun list!2856 (BalanceConc!4522) List!6751)

(assert (=> b!635909 (= lt!271742 (list!2856 lt!271753))))

(declare-datatypes ((List!6752 0))(
  ( (Nil!6738) (Cons!6738 (h!12139 Int) (t!84104 List!6752)) )
))
(declare-datatypes ((IArray!4513 0))(
  ( (IArray!4514 (innerList!2314 List!6752)) )
))
(declare-datatypes ((Conc!2256 0))(
  ( (Node!2256 (left!5386 Conc!2256) (right!5716 Conc!2256) (csize!4742 Int) (cheight!2467 Int)) (Leaf!3453 (xs!4897 IArray!4513) (csize!4743 Int)) (Empty!2256) )
))
(declare-datatypes ((BalanceConc!4524 0))(
  ( (BalanceConc!4525 (c!116493 Conc!2256)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!104 Int BalanceConc!4524 BalanceConc!4522) BalanceConc!4522)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4518 Int Int BalanceConc!4524) BalanceConc!4524)

(assert (=> b!635909 (= lt!271753 (slicesMulti!0 printableTokens!2 lt!271746 (indicesOfOpenBraces!0 (tokens!1189 printableTokens!2) lt!271746 0 (BalanceConc!4525 Empty!2256)) (BalanceConc!4523 Empty!2255)))))

(declare-fun b!635910 () Bool)

(assert (=> b!635910 (= e!387094 e!387096)))

(declare-fun res!276284 () Bool)

(assert (=> b!635910 (=> (not res!276284) (not e!387096))))

(declare-fun isEmpty!4658 (List!6746) Bool)

(assert (=> b!635910 (= res!276284 (not (isEmpty!4658 lt!271749)))))

(declare-datatypes ((JsonLexer!170 0))(
  ( (JsonLexer!171) )
))
(declare-fun rules!109 (JsonLexer!170) List!6746)

(assert (=> b!635910 (= lt!271749 (rules!109 JsonLexer!171))))

(assert (=> b!635911 (= e!387090 (and e!387087 tp!197885))))

(assert (= (and start!62276 res!276282) b!635910))

(assert (= (and b!635910 res!276284) b!635902))

(assert (= (and b!635902 res!276280) b!635895))

(assert (= (and b!635895 res!276286) b!635909))

(assert (= (and b!635909 (not res!276283)) b!635892))

(assert (= (and b!635892 (not res!276281)) b!635898))

(assert (= (and b!635898 (not res!276285)) b!635901))

(assert (= (and b!635901 (not res!276278)) b!635896))

(assert (= (and b!635896 (not res!276279)) b!635897))

(assert (= (and b!635897 (not res!276287)) b!635890))

(assert (= b!635894 b!635903))

(assert (= start!62276 b!635894))

(assert (= (and b!635907 condMapEmpty!2502) mapIsEmpty!2503))

(assert (= (and b!635907 (not condMapEmpty!2502)) mapNonEmpty!2503))

(assert (= b!635906 b!635907))

(assert (= b!635888 b!635906))

(assert (= b!635889 b!635888))

(assert (= (and b!635908 ((_ is LongMap!633) (v!16827 (underlying!1450 (cache!992 cacheDown!364))))) b!635889))

(assert (= b!635911 b!635908))

(assert (= (and b!635905 ((_ is HashMap!605) (cache!992 cacheDown!364))) b!635911))

(assert (= start!62276 b!635905))

(assert (= (and b!635891 condMapEmpty!2503) mapIsEmpty!2502))

(assert (= (and b!635891 (not condMapEmpty!2503)) mapNonEmpty!2502))

(assert (= b!635900 b!635891))

(assert (= b!635893 b!635900))

(assert (= b!635887 b!635893))

(assert (= (and b!635899 ((_ is LongMap!634) (v!16829 (underlying!1452 (cache!993 cacheUp!351))))) b!635887))

(assert (= b!635904 b!635899))

(assert (= (and b!635886 ((_ is HashMap!606) (cache!993 cacheUp!351))) b!635904))

(assert (= start!62276 b!635886))

(declare-fun m!906611 () Bool)

(assert (=> b!635903 m!906611))

(declare-fun m!906613 () Bool)

(assert (=> b!635894 m!906613))

(declare-fun m!906615 () Bool)

(assert (=> b!635895 m!906615))

(declare-fun m!906617 () Bool)

(assert (=> b!635896 m!906617))

(declare-fun m!906619 () Bool)

(assert (=> b!635896 m!906619))

(assert (=> b!635896 m!906617))

(assert (=> b!635896 m!906619))

(declare-fun m!906621 () Bool)

(assert (=> b!635896 m!906621))

(declare-fun m!906623 () Bool)

(assert (=> b!635898 m!906623))

(declare-fun m!906625 () Bool)

(assert (=> b!635910 m!906625))

(declare-fun m!906627 () Bool)

(assert (=> b!635910 m!906627))

(declare-fun m!906629 () Bool)

(assert (=> b!635901 m!906629))

(declare-fun m!906631 () Bool)

(assert (=> b!635890 m!906631))

(declare-fun m!906633 () Bool)

(assert (=> b!635890 m!906633))

(declare-fun m!906635 () Bool)

(assert (=> b!635902 m!906635))

(declare-fun m!906637 () Bool)

(assert (=> b!635909 m!906637))

(declare-fun m!906639 () Bool)

(assert (=> b!635909 m!906639))

(declare-fun m!906641 () Bool)

(assert (=> b!635909 m!906641))

(declare-fun m!906643 () Bool)

(assert (=> b!635909 m!906643))

(assert (=> b!635909 m!906617))

(declare-fun m!906645 () Bool)

(assert (=> b!635909 m!906645))

(declare-fun m!906647 () Bool)

(assert (=> b!635909 m!906647))

(assert (=> b!635909 m!906647))

(declare-fun m!906649 () Bool)

(assert (=> b!635909 m!906649))

(declare-fun m!906651 () Bool)

(assert (=> b!635909 m!906651))

(declare-fun m!906653 () Bool)

(assert (=> b!635909 m!906653))

(declare-fun m!906655 () Bool)

(assert (=> b!635909 m!906655))

(declare-fun m!906657 () Bool)

(assert (=> b!635909 m!906657))

(declare-fun m!906659 () Bool)

(assert (=> b!635909 m!906659))

(assert (=> b!635909 m!906651))

(declare-fun m!906661 () Bool)

(assert (=> b!635909 m!906661))

(assert (=> b!635909 m!906617))

(declare-fun m!906663 () Bool)

(assert (=> b!635909 m!906663))

(declare-fun m!906665 () Bool)

(assert (=> b!635900 m!906665))

(declare-fun m!906667 () Bool)

(assert (=> b!635900 m!906667))

(declare-fun m!906669 () Bool)

(assert (=> mapNonEmpty!2502 m!906669))

(declare-fun m!906671 () Bool)

(assert (=> b!635892 m!906671))

(declare-fun m!906673 () Bool)

(assert (=> b!635897 m!906673))

(declare-fun m!906675 () Bool)

(assert (=> mapNonEmpty!2503 m!906675))

(declare-fun m!906677 () Bool)

(assert (=> b!635906 m!906677))

(declare-fun m!906679 () Bool)

(assert (=> b!635906 m!906679))

(declare-fun m!906681 () Bool)

(assert (=> start!62276 m!906681))

(declare-fun m!906683 () Bool)

(assert (=> start!62276 m!906683))

(declare-fun m!906685 () Bool)

(assert (=> start!62276 m!906685))

(declare-fun m!906687 () Bool)

(assert (=> start!62276 m!906687))

(check-sat (not b!635902) (not b!635906) (not b!635896) (not b_next!18661) (not mapNonEmpty!2503) (not b!635890) (not b!635900) b_and!62433 b_and!62435 (not b!635897) (not b!635895) (not b!635901) (not b!635910) (not b!635909) (not b!635898) (not b!635907) (not b_next!18663) (not b!635903) (not b_next!18667) (not mapNonEmpty!2502) b_and!62437 (not b_next!18665) b_and!62431 (not b!635891) (not start!62276) (not b!635894) (not b!635892))
(check-sat (not b_next!18661) (not b_next!18663) (not b_next!18667) b_and!62433 b_and!62435 b_and!62437 (not b_next!18665) b_and!62431)
