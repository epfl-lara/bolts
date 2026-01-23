; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71282 () Bool)

(assert start!71282)

(declare-fun b!768414 () Bool)

(declare-fun b_free!24061 () Bool)

(declare-fun b_next!24125 () Bool)

(assert (=> b!768414 (= b_free!24061 (not b_next!24125))))

(declare-fun tp!250261 () Bool)

(declare-fun b_and!71541 () Bool)

(assert (=> b!768414 (= tp!250261 b_and!71541)))

(declare-fun b!768423 () Bool)

(declare-fun b_free!24063 () Bool)

(declare-fun b_next!24127 () Bool)

(assert (=> b!768423 (= b_free!24063 (not b_next!24127))))

(declare-fun tp!250277 () Bool)

(declare-fun b_and!71543 () Bool)

(assert (=> b!768423 (= tp!250277 b_and!71543)))

(declare-fun b!768425 () Bool)

(declare-fun b_free!24065 () Bool)

(declare-fun b_next!24129 () Bool)

(assert (=> b!768425 (= b_free!24065 (not b_next!24129))))

(declare-fun tp!250271 () Bool)

(declare-fun b_and!71545 () Bool)

(assert (=> b!768425 (= tp!250271 b_and!71545)))

(declare-fun b_free!24067 () Bool)

(declare-fun b_next!24131 () Bool)

(assert (=> b!768425 (= b_free!24067 (not b_next!24131))))

(declare-fun tp!250267 () Bool)

(declare-fun b_and!71547 () Bool)

(assert (=> b!768425 (= tp!250267 b_and!71547)))

(declare-fun b!768424 () Bool)

(declare-fun b_free!24069 () Bool)

(declare-fun b_next!24133 () Bool)

(assert (=> b!768424 (= b_free!24069 (not b_next!24133))))

(declare-fun tp!250273 () Bool)

(declare-fun b_and!71549 () Bool)

(assert (=> b!768424 (= tp!250273 b_and!71549)))

(declare-fun b!768416 () Bool)

(declare-fun b_free!24071 () Bool)

(declare-fun b_next!24135 () Bool)

(assert (=> b!768416 (= b_free!24071 (not b_next!24135))))

(declare-fun tp!250268 () Bool)

(declare-fun b_and!71551 () Bool)

(assert (=> b!768416 (= tp!250268 b_and!71551)))

(declare-fun b!768420 () Bool)

(declare-fun b_free!24073 () Bool)

(declare-fun b_next!24137 () Bool)

(assert (=> b!768420 (= b_free!24073 (not b_next!24137))))

(declare-fun tp!250260 () Bool)

(declare-fun b_and!71553 () Bool)

(assert (=> b!768420 (= tp!250260 b_and!71553)))

(declare-fun b!768411 () Bool)

(declare-fun b_free!24075 () Bool)

(declare-fun b_next!24139 () Bool)

(assert (=> b!768411 (= b_free!24075 (not b_next!24139))))

(declare-fun tp!250255 () Bool)

(declare-fun b_and!71555 () Bool)

(assert (=> b!768411 (= tp!250255 b_and!71555)))

(declare-fun b!768404 () Bool)

(declare-datatypes ((C!4540 0))(
  ( (C!4541 (val!2500 Int)) )
))
(declare-datatypes ((List!8480 0))(
  ( (Nil!8466) (Cons!8466 (h!13867 (_ BitVec 16)) (t!91762 List!8480)) )
))
(declare-datatypes ((TokenValue!1665 0))(
  ( (FloatLiteralValue!3330 (text!12100 List!8480)) (TokenValueExt!1664 (__x!6705 Int)) (Broken!8325 (value!51850 List!8480)) (Object!1678) (End!1665) (Def!1665) (Underscore!1665) (Match!1665) (Else!1665) (Error!1665) (Case!1665) (If!1665) (Extends!1665) (Abstract!1665) (Class!1665) (Val!1665) (DelimiterValue!3330 (del!1725 List!8480)) (KeywordValue!1671 (value!51851 List!8480)) (CommentValue!3330 (value!51852 List!8480)) (WhitespaceValue!3330 (value!51853 List!8480)) (IndentationValue!1665 (value!51854 List!8480)) (String!10068) (Int32!1665) (Broken!8326 (value!51855 List!8480)) (Boolean!1666) (Unit!13077) (OperatorValue!1668 (op!1725 List!8480)) (IdentifierValue!3330 (value!51856 List!8480)) (IdentifierValue!3331 (value!51857 List!8480)) (WhitespaceValue!3331 (value!51858 List!8480)) (True!3330) (False!3330) (Broken!8327 (value!51859 List!8480)) (Broken!8328 (value!51860 List!8480)) (True!3331) (RightBrace!1665) (RightBracket!1665) (Colon!1665) (Null!1665) (Comma!1665) (LeftBracket!1665) (False!3331) (LeftBrace!1665) (ImaginaryLiteralValue!1665 (text!12101 List!8480)) (StringLiteralValue!4995 (value!51861 List!8480)) (EOFValue!1665 (value!51862 List!8480)) (IdentValue!1665 (value!51863 List!8480)) (DelimiterValue!3331 (value!51864 List!8480)) (DedentValue!1665 (value!51865 List!8480)) (NewLineValue!1665 (value!51866 List!8480)) (IntegerValue!4995 (value!51867 (_ BitVec 32)) (text!12102 List!8480)) (IntegerValue!4996 (value!51868 Int) (text!12103 List!8480)) (Times!1665) (Or!1665) (Equal!1665) (Minus!1665) (Broken!8329 (value!51869 List!8480)) (And!1665) (Div!1665) (LessEqual!1665) (Mod!1665) (Concat!3634) (Not!1665) (Plus!1665) (SpaceValue!1665 (value!51870 List!8480)) (IntegerValue!4997 (value!51871 Int) (text!12104 List!8480)) (StringLiteralValue!4996 (text!12105 List!8480)) (FloatLiteralValue!3331 (text!12106 List!8480)) (BytesLiteralValue!1665 (value!51872 List!8480)) (CommentValue!3331 (value!51873 List!8480)) (StringLiteralValue!4997 (value!51874 List!8480)) (ErrorTokenValue!1665 (msg!1726 List!8480)) )
))
(declare-datatypes ((List!8481 0))(
  ( (Nil!8467) (Cons!8467 (h!13868 C!4540) (t!91763 List!8481)) )
))
(declare-datatypes ((IArray!5737 0))(
  ( (IArray!5738 (innerList!2926 List!8481)) )
))
(declare-datatypes ((Conc!2868 0))(
  ( (Node!2868 (left!6359 Conc!2868) (right!6689 Conc!2868) (csize!5966 Int) (cheight!3079 Int)) (Leaf!4206 (xs!5555 IArray!5737) (csize!5967 Int)) (Empty!2868) )
))
(declare-datatypes ((BalanceConc!5748 0))(
  ( (BalanceConc!5749 (c!130209 Conc!2868)) )
))
(declare-datatypes ((TokenValueInjection!3066 0))(
  ( (TokenValueInjection!3067 (toValue!2613 Int) (toChars!2472 Int)) )
))
(declare-datatypes ((Regex!1969 0))(
  ( (ElementMatch!1969 (c!130210 C!4540)) (Concat!3635 (regOne!4450 Regex!1969) (regTwo!4450 Regex!1969)) (EmptyExpr!1969) (Star!1969 (reg!2298 Regex!1969)) (EmptyLang!1969) (Union!1969 (regOne!4451 Regex!1969) (regTwo!4451 Regex!1969)) )
))
(declare-datatypes ((String!10069 0))(
  ( (String!10070 (value!51875 String)) )
))
(declare-datatypes ((Rule!3042 0))(
  ( (Rule!3043 (regex!1621 Regex!1969) (tag!1883 String!10069) (isSeparator!1621 Bool) (transformation!1621 TokenValueInjection!3066)) )
))
(declare-datatypes ((List!8482 0))(
  ( (Nil!8468) (Cons!8468 (h!13869 Rule!3042) (t!91764 List!8482)) )
))
(declare-fun rulesArg!343 () List!8482)

(declare-fun e!494400 () Bool)

(declare-fun tp!250258 () Bool)

(declare-fun e!494380 () Bool)

(declare-fun inv!10783 (String!10069) Bool)

(declare-fun inv!10785 (TokenValueInjection!3066) Bool)

(assert (=> b!768404 (= e!494380 (and tp!250258 (inv!10783 (tag!1883 (h!13869 rulesArg!343))) (inv!10785 (transformation!1621 (h!13869 rulesArg!343))) e!494400))))

(declare-fun b!768405 () Bool)

(declare-fun e!494369 () Bool)

(declare-fun e!494393 () Bool)

(assert (=> b!768405 (= e!494369 e!494393)))

(declare-fun b!768406 () Bool)

(declare-fun e!494397 () Bool)

(declare-fun e!494372 () Bool)

(declare-datatypes ((List!8483 0))(
  ( (Nil!8469) (Cons!8469 (h!13870 Regex!1969) (t!91765 List!8483)) )
))
(declare-datatypes ((Context!742 0))(
  ( (Context!743 (exprs!871 List!8483)) )
))
(declare-datatypes ((tuple2!9828 0))(
  ( (tuple2!9829 (_1!5659 Context!742) (_2!5659 C!4540)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!9830 0))(
  ( (tuple2!9831 (_1!5660 tuple2!9828) (_2!5660 (InoxSet Context!742))) )
))
(declare-datatypes ((List!8484 0))(
  ( (Nil!8470) (Cons!8470 (h!13871 tuple2!9830) (t!91766 List!8484)) )
))
(declare-datatypes ((array!4011 0))(
  ( (array!4012 (arr!1789 (Array (_ BitVec 32) (_ BitVec 64))) (size!6900 (_ BitVec 32))) )
))
(declare-datatypes ((array!4013 0))(
  ( (array!4014 (arr!1790 (Array (_ BitVec 32) List!8484)) (size!6901 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2260 0))(
  ( (LongMapFixedSize!2261 (defaultEntry!1486 Int) (mask!2999 (_ BitVec 32)) (extraKeys!1377 (_ BitVec 32)) (zeroValue!1387 List!8484) (minValue!1387 List!8484) (_size!2369 (_ BitVec 32)) (_keys!1424 array!4011) (_values!1409 array!4013) (_vacant!1191 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4461 0))(
  ( (Cell!4462 (v!18609 LongMapFixedSize!2260)) )
))
(declare-datatypes ((MutLongMap!1130 0))(
  ( (LongMap!1130 (underlying!2443 Cell!4461)) (MutLongMapExt!1129 (__x!6706 Int)) )
))
(declare-fun lt!313331 () MutLongMap!1130)

(get-info :version)

(assert (=> b!768406 (= e!494397 (and e!494372 ((_ is LongMap!1130) lt!313331)))))

(declare-datatypes ((Cell!4463 0))(
  ( (Cell!4464 (v!18610 MutLongMap!1130)) )
))
(declare-datatypes ((Hashable!1102 0))(
  ( (HashableExt!1101 (__x!6707 Int)) )
))
(declare-datatypes ((MutableMap!1102 0))(
  ( (MutableMapExt!1101 (__x!6708 Int)) (HashMap!1102 (underlying!2444 Cell!4463) (hashF!3010 Hashable!1102) (_size!2370 (_ BitVec 32)) (defaultValue!1253 Int)) )
))
(declare-datatypes ((CacheUp!618 0))(
  ( (CacheUp!619 (cache!1489 MutableMap!1102)) )
))
(declare-fun cacheUp!653 () CacheUp!618)

(assert (=> b!768406 (= lt!313331 (v!18610 (underlying!2444 (cache!1489 cacheUp!653))))))

(declare-fun mapNonEmpty!5582 () Bool)

(declare-fun mapRes!5582 () Bool)

(declare-fun tp!250259 () Bool)

(declare-fun tp!250280 () Bool)

(assert (=> mapNonEmpty!5582 (= mapRes!5582 (and tp!250259 tp!250280))))

(declare-fun mapKey!5583 () (_ BitVec 32))

(declare-datatypes ((tuple3!952 0))(
  ( (tuple3!953 (_1!5661 Regex!1969) (_2!5661 Context!742) (_3!745 C!4540)) )
))
(declare-datatypes ((tuple2!9832 0))(
  ( (tuple2!9833 (_1!5662 tuple3!952) (_2!5662 (InoxSet Context!742))) )
))
(declare-datatypes ((List!8485 0))(
  ( (Nil!8471) (Cons!8471 (h!13872 tuple2!9832) (t!91767 List!8485)) )
))
(declare-datatypes ((array!4015 0))(
  ( (array!4016 (arr!1791 (Array (_ BitVec 32) List!8485)) (size!6902 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2262 0))(
  ( (LongMapFixedSize!2263 (defaultEntry!1487 Int) (mask!3000 (_ BitVec 32)) (extraKeys!1378 (_ BitVec 32)) (zeroValue!1388 List!8485) (minValue!1388 List!8485) (_size!2371 (_ BitVec 32)) (_keys!1425 array!4011) (_values!1410 array!4015) (_vacant!1192 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4465 0))(
  ( (Cell!4466 (v!18611 LongMapFixedSize!2262)) )
))
(declare-datatypes ((MutLongMap!1131 0))(
  ( (LongMap!1131 (underlying!2445 Cell!4465)) (MutLongMapExt!1130 (__x!6709 Int)) )
))
(declare-datatypes ((Cell!4467 0))(
  ( (Cell!4468 (v!18612 MutLongMap!1131)) )
))
(declare-datatypes ((Hashable!1103 0))(
  ( (HashableExt!1102 (__x!6710 Int)) )
))
(declare-datatypes ((MutableMap!1103 0))(
  ( (MutableMapExt!1102 (__x!6711 Int)) (HashMap!1103 (underlying!2446 Cell!4467) (hashF!3011 Hashable!1103) (_size!2372 (_ BitVec 32)) (defaultValue!1254 Int)) )
))
(declare-datatypes ((CacheDown!624 0))(
  ( (CacheDown!625 (cache!1490 MutableMap!1103)) )
))
(declare-fun cacheDown!666 () CacheDown!624)

(declare-fun mapRest!5584 () (Array (_ BitVec 32) List!8485))

(declare-fun mapValue!5584 () List!8485)

(assert (=> mapNonEmpty!5582 (= (arr!1791 (_values!1410 (v!18611 (underlying!2445 (v!18612 (underlying!2446 (cache!1490 cacheDown!666))))))) (store mapRest!5584 mapKey!5583 mapValue!5584))))

(declare-fun mapIsEmpty!5582 () Bool)

(assert (=> mapIsEmpty!5582 mapRes!5582))

(declare-fun mapIsEmpty!5583 () Bool)

(declare-fun mapRes!5583 () Bool)

(assert (=> mapIsEmpty!5583 mapRes!5583))

(declare-fun b!768407 () Bool)

(declare-fun e!494382 () Bool)

(declare-fun e!494377 () Bool)

(declare-fun lt!313334 () MutLongMap!1131)

(assert (=> b!768407 (= e!494382 (and e!494377 ((_ is LongMap!1131) lt!313334)))))

(assert (=> b!768407 (= lt!313334 (v!18612 (underlying!2446 (cache!1490 cacheDown!666))))))

(declare-fun e!494399 () Bool)

(declare-fun b!768408 () Bool)

(declare-datatypes ((tuple2!9834 0))(
  ( (tuple2!9835 (_1!5663 (InoxSet Context!742)) (_2!5663 Int)) )
))
(declare-datatypes ((tuple2!9836 0))(
  ( (tuple2!9837 (_1!5664 tuple2!9834) (_2!5664 Int)) )
))
(declare-datatypes ((List!8486 0))(
  ( (Nil!8472) (Cons!8472 (h!13873 tuple2!9836) (t!91768 List!8486)) )
))
(declare-datatypes ((array!4017 0))(
  ( (array!4018 (arr!1792 (Array (_ BitVec 32) List!8486)) (size!6903 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1104 0))(
  ( (HashableExt!1103 (__x!6712 Int)) )
))
(declare-datatypes ((LongMapFixedSize!2264 0))(
  ( (LongMapFixedSize!2265 (defaultEntry!1488 Int) (mask!3001 (_ BitVec 32)) (extraKeys!1379 (_ BitVec 32)) (zeroValue!1389 List!8486) (minValue!1389 List!8486) (_size!2373 (_ BitVec 32)) (_keys!1426 array!4011) (_values!1411 array!4017) (_vacant!1193 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4469 0))(
  ( (Cell!4470 (v!18613 LongMapFixedSize!2264)) )
))
(declare-datatypes ((MutLongMap!1132 0))(
  ( (LongMap!1132 (underlying!2447 Cell!4469)) (MutLongMapExt!1131 (__x!6713 Int)) )
))
(declare-datatypes ((Cell!4471 0))(
  ( (Cell!4472 (v!18614 MutLongMap!1132)) )
))
(declare-datatypes ((MutableMap!1104 0))(
  ( (MutableMapExt!1103 (__x!6714 Int)) (HashMap!1104 (underlying!2448 Cell!4471) (hashF!3012 Hashable!1104) (_size!2374 (_ BitVec 32)) (defaultValue!1255 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!288 0))(
  ( (CacheFindLongestMatch!289 (cache!1491 MutableMap!1104) (totalInput!2103 BalanceConc!5748)) )
))
(declare-fun cacheFindLongestMatch!134 () CacheFindLongestMatch!288)

(declare-fun e!494388 () Bool)

(declare-fun e!494392 () Bool)

(declare-fun inv!10786 (BalanceConc!5748) Bool)

(assert (=> b!768408 (= e!494399 (and e!494388 (inv!10786 (totalInput!2103 cacheFindLongestMatch!134)) e!494392))))

(declare-fun b!768409 () Bool)

(declare-fun res!337377 () Bool)

(declare-fun e!494376 () Bool)

(assert (=> b!768409 (=> (not res!337377) (not e!494376))))

(declare-fun valid!923 (CacheDown!624) Bool)

(assert (=> b!768409 (= res!337377 (valid!923 cacheDown!666))))

(declare-fun b!768410 () Bool)

(declare-fun e!494383 () Bool)

(declare-fun tp!250276 () Bool)

(declare-fun mapRes!5584 () Bool)

(assert (=> b!768410 (= e!494383 (and tp!250276 mapRes!5584))))

(declare-fun condMapEmpty!5584 () Bool)

(declare-fun mapDefault!5584 () List!8486)

(assert (=> b!768410 (= condMapEmpty!5584 (= (arr!1792 (_values!1411 (v!18613 (underlying!2447 (v!18614 (underlying!2448 (cache!1491 cacheFindLongestMatch!134))))))) ((as const (Array (_ BitVec 32) List!8486)) mapDefault!5584)))))

(declare-fun e!494378 () Bool)

(assert (=> b!768411 (= e!494378 (and e!494382 tp!250255))))

(declare-fun b!768412 () Bool)

(declare-fun e!494389 () Bool)

(declare-fun e!494371 () Bool)

(assert (=> b!768412 (= e!494389 e!494371)))

(declare-fun res!337372 () Bool)

(assert (=> start!71282 (=> (not res!337372) (not e!494376))))

(declare-datatypes ((LexerInterface!1423 0))(
  ( (LexerInterfaceExt!1420 (__x!6715 Int)) (Lexer!1421) )
))
(declare-fun thiss!15653 () LexerInterface!1423)

(assert (=> start!71282 (= res!337372 ((_ is Lexer!1421) thiss!15653))))

(assert (=> start!71282 e!494376))

(declare-fun e!494386 () Bool)

(assert (=> start!71282 e!494386))

(declare-fun input!1432 () BalanceConc!5748)

(declare-fun e!494370 () Bool)

(assert (=> start!71282 (and (inv!10786 input!1432) e!494370)))

(declare-fun inv!10787 (CacheFindLongestMatch!288) Bool)

(assert (=> start!71282 (and (inv!10787 cacheFindLongestMatch!134) e!494399)))

(assert (=> start!71282 true))

(declare-fun e!494398 () Bool)

(declare-fun inv!10788 (CacheUp!618) Bool)

(assert (=> start!71282 (and (inv!10788 cacheUp!653) e!494398)))

(declare-fun totalInput!472 () BalanceConc!5748)

(declare-fun e!494375 () Bool)

(assert (=> start!71282 (and (inv!10786 totalInput!472) e!494375)))

(declare-fun e!494390 () Bool)

(declare-fun inv!10789 (CacheDown!624) Bool)

(assert (=> start!71282 (and (inv!10789 cacheDown!666) e!494390)))

(declare-fun b!768413 () Bool)

(declare-fun tp!250263 () Bool)

(declare-fun inv!10790 (Conc!2868) Bool)

(assert (=> b!768413 (= e!494370 (and (inv!10790 (c!130209 input!1432)) tp!250263))))

(declare-fun e!494379 () Bool)

(assert (=> b!768414 (= e!494388 (and e!494379 tp!250261))))

(declare-fun b!768415 () Bool)

(declare-fun e!494374 () Bool)

(assert (=> b!768415 (= e!494398 e!494374)))

(declare-fun tp!250278 () Bool)

(declare-fun e!494396 () Bool)

(declare-fun tp!250264 () Bool)

(declare-fun array_inv!1299 (array!4011) Bool)

(declare-fun array_inv!1300 (array!4013) Bool)

(assert (=> b!768416 (= e!494371 (and tp!250268 tp!250264 tp!250278 (array_inv!1299 (_keys!1424 (v!18609 (underlying!2443 (v!18610 (underlying!2444 (cache!1489 cacheUp!653))))))) (array_inv!1300 (_values!1409 (v!18609 (underlying!2443 (v!18610 (underlying!2444 (cache!1489 cacheUp!653))))))) e!494396))))

(declare-fun b!768417 () Bool)

(assert (=> b!768417 (= e!494372 e!494389)))

(declare-fun b!768418 () Bool)

(declare-fun e!494394 () Bool)

(assert (=> b!768418 (= e!494377 e!494394)))

(declare-fun b!768419 () Bool)

(declare-fun tp!250281 () Bool)

(assert (=> b!768419 (= e!494396 (and tp!250281 mapRes!5583))))

(declare-fun condMapEmpty!5582 () Bool)

(declare-fun mapDefault!5582 () List!8484)

(assert (=> b!768419 (= condMapEmpty!5582 (= (arr!1790 (_values!1409 (v!18609 (underlying!2443 (v!18610 (underlying!2444 (cache!1489 cacheUp!653))))))) ((as const (Array (_ BitVec 32) List!8484)) mapDefault!5582)))))

(declare-fun mapNonEmpty!5583 () Bool)

(declare-fun tp!250274 () Bool)

(declare-fun tp!250275 () Bool)

(assert (=> mapNonEmpty!5583 (= mapRes!5583 (and tp!250274 tp!250275))))

(declare-fun mapValue!5582 () List!8484)

(declare-fun mapRest!5582 () (Array (_ BitVec 32) List!8484))

(declare-fun mapKey!5584 () (_ BitVec 32))

(assert (=> mapNonEmpty!5583 (= (arr!1790 (_values!1409 (v!18609 (underlying!2443 (v!18610 (underlying!2444 (cache!1489 cacheUp!653))))))) (store mapRest!5582 mapKey!5584 mapValue!5582))))

(assert (=> b!768420 (= e!494374 (and e!494397 tp!250260))))

(declare-fun mapIsEmpty!5584 () Bool)

(assert (=> mapIsEmpty!5584 mapRes!5584))

(declare-fun b!768421 () Bool)

(declare-fun res!337375 () Bool)

(assert (=> b!768421 (=> (not res!337375) (not e!494376))))

(declare-fun isEmpty!5200 (List!8482) Bool)

(assert (=> b!768421 (= res!337375 (not (isEmpty!5200 rulesArg!343)))))

(declare-fun b!768422 () Bool)

(declare-fun res!337376 () Bool)

(assert (=> b!768422 (=> (not res!337376) (not e!494376))))

(declare-fun valid!924 (CacheUp!618) Bool)

(assert (=> b!768422 (= res!337376 (valid!924 cacheUp!653))))

(declare-fun tp!250270 () Bool)

(declare-fun tp!250272 () Bool)

(declare-fun e!494387 () Bool)

(declare-fun e!494391 () Bool)

(declare-fun array_inv!1301 (array!4015) Bool)

(assert (=> b!768423 (= e!494391 (and tp!250277 tp!250272 tp!250270 (array_inv!1299 (_keys!1425 (v!18611 (underlying!2445 (v!18612 (underlying!2446 (cache!1490 cacheDown!666))))))) (array_inv!1301 (_values!1410 (v!18611 (underlying!2445 (v!18612 (underlying!2446 (cache!1490 cacheDown!666))))))) e!494387))))

(declare-fun tp!250266 () Bool)

(declare-fun e!494385 () Bool)

(declare-fun tp!250265 () Bool)

(declare-fun array_inv!1302 (array!4017) Bool)

(assert (=> b!768424 (= e!494385 (and tp!250273 tp!250265 tp!250266 (array_inv!1299 (_keys!1426 (v!18613 (underlying!2447 (v!18614 (underlying!2448 (cache!1491 cacheFindLongestMatch!134))))))) (array_inv!1302 (_values!1411 (v!18613 (underlying!2447 (v!18614 (underlying!2448 (cache!1491 cacheFindLongestMatch!134))))))) e!494383))))

(assert (=> b!768425 (= e!494400 (and tp!250271 tp!250267))))

(declare-fun b!768426 () Bool)

(assert (=> b!768426 (= e!494394 e!494391)))

(declare-fun mapNonEmpty!5584 () Bool)

(declare-fun tp!250256 () Bool)

(declare-fun tp!250279 () Bool)

(assert (=> mapNonEmpty!5584 (= mapRes!5584 (and tp!250256 tp!250279))))

(declare-fun mapValue!5583 () List!8486)

(declare-fun mapKey!5582 () (_ BitVec 32))

(declare-fun mapRest!5583 () (Array (_ BitVec 32) List!8486))

(assert (=> mapNonEmpty!5584 (= (arr!1792 (_values!1411 (v!18613 (underlying!2447 (v!18614 (underlying!2448 (cache!1491 cacheFindLongestMatch!134))))))) (store mapRest!5583 mapKey!5582 mapValue!5583))))

(declare-fun b!768427 () Bool)

(declare-fun tp!250257 () Bool)

(assert (=> b!768427 (= e!494392 (and (inv!10790 (c!130209 (totalInput!2103 cacheFindLongestMatch!134))) tp!250257))))

(declare-fun b!768428 () Bool)

(assert (=> b!768428 (= e!494393 e!494385)))

(declare-fun b!768429 () Bool)

(declare-fun tp!250262 () Bool)

(assert (=> b!768429 (= e!494375 (and (inv!10790 (c!130209 totalInput!472)) tp!250262))))

(declare-fun b!768430 () Bool)

(declare-fun res!337373 () Bool)

(assert (=> b!768430 (=> (not res!337373) (not e!494376))))

(declare-fun isSuffix!206 (List!8481 List!8481) Bool)

(declare-fun list!3422 (BalanceConc!5748) List!8481)

(assert (=> b!768430 (= res!337373 (isSuffix!206 (list!3422 input!1432) (list!3422 totalInput!472)))))

(declare-fun b!768431 () Bool)

(declare-fun res!337374 () Bool)

(assert (=> b!768431 (=> (not res!337374) (not e!494376))))

(declare-fun rulesValidInductive!570 (LexerInterface!1423 List!8482) Bool)

(assert (=> b!768431 (= res!337374 (rulesValidInductive!570 thiss!15653 rulesArg!343))))

(declare-fun b!768432 () Bool)

(declare-fun tp!250282 () Bool)

(assert (=> b!768432 (= e!494387 (and tp!250282 mapRes!5582))))

(declare-fun condMapEmpty!5583 () Bool)

(declare-fun mapDefault!5583 () List!8485)

(assert (=> b!768432 (= condMapEmpty!5583 (= (arr!1791 (_values!1410 (v!18611 (underlying!2445 (v!18612 (underlying!2446 (cache!1490 cacheDown!666))))))) ((as const (Array (_ BitVec 32) List!8485)) mapDefault!5583)))))

(declare-fun b!768433 () Bool)

(declare-fun tp!250269 () Bool)

(assert (=> b!768433 (= e!494386 (and e!494380 tp!250269))))

(declare-fun b!768434 () Bool)

(declare-fun lt!313332 () MutLongMap!1132)

(assert (=> b!768434 (= e!494379 (and e!494369 ((_ is LongMap!1132) lt!313332)))))

(assert (=> b!768434 (= lt!313332 (v!18614 (underlying!2448 (cache!1491 cacheFindLongestMatch!134))))))

(declare-fun b!768435 () Bool)

(assert (=> b!768435 (= e!494390 e!494378)))

(declare-fun b!768436 () Bool)

(assert (=> b!768436 (= e!494376 false)))

(declare-fun lt!313333 () Bool)

(declare-fun valid!925 (CacheFindLongestMatch!288) Bool)

(assert (=> b!768436 (= lt!313333 (valid!925 cacheFindLongestMatch!134))))

(assert (= (and start!71282 res!337372) b!768431))

(assert (= (and b!768431 res!337374) b!768421))

(assert (= (and b!768421 res!337375) b!768430))

(assert (= (and b!768430 res!337373) b!768422))

(assert (= (and b!768422 res!337376) b!768409))

(assert (= (and b!768409 res!337377) b!768436))

(assert (= b!768404 b!768425))

(assert (= b!768433 b!768404))

(assert (= (and start!71282 ((_ is Cons!8468) rulesArg!343)) b!768433))

(assert (= start!71282 b!768413))

(assert (= (and b!768410 condMapEmpty!5584) mapIsEmpty!5584))

(assert (= (and b!768410 (not condMapEmpty!5584)) mapNonEmpty!5584))

(assert (= b!768424 b!768410))

(assert (= b!768428 b!768424))

(assert (= b!768405 b!768428))

(assert (= (and b!768434 ((_ is LongMap!1132) (v!18614 (underlying!2448 (cache!1491 cacheFindLongestMatch!134))))) b!768405))

(assert (= b!768414 b!768434))

(assert (= (and b!768408 ((_ is HashMap!1104) (cache!1491 cacheFindLongestMatch!134))) b!768414))

(assert (= b!768408 b!768427))

(assert (= start!71282 b!768408))

(assert (= (and b!768419 condMapEmpty!5582) mapIsEmpty!5583))

(assert (= (and b!768419 (not condMapEmpty!5582)) mapNonEmpty!5583))

(assert (= b!768416 b!768419))

(assert (= b!768412 b!768416))

(assert (= b!768417 b!768412))

(assert (= (and b!768406 ((_ is LongMap!1130) (v!18610 (underlying!2444 (cache!1489 cacheUp!653))))) b!768417))

(assert (= b!768420 b!768406))

(assert (= (and b!768415 ((_ is HashMap!1102) (cache!1489 cacheUp!653))) b!768420))

(assert (= start!71282 b!768415))

(assert (= start!71282 b!768429))

(assert (= (and b!768432 condMapEmpty!5583) mapIsEmpty!5582))

(assert (= (and b!768432 (not condMapEmpty!5583)) mapNonEmpty!5582))

(assert (= b!768423 b!768432))

(assert (= b!768426 b!768423))

(assert (= b!768418 b!768426))

(assert (= (and b!768407 ((_ is LongMap!1131) (v!18612 (underlying!2446 (cache!1490 cacheDown!666))))) b!768418))

(assert (= b!768411 b!768407))

(assert (= (and b!768435 ((_ is HashMap!1103) (cache!1490 cacheDown!666))) b!768411))

(assert (= start!71282 b!768435))

(declare-fun m!1038083 () Bool)

(assert (=> b!768413 m!1038083))

(declare-fun m!1038085 () Bool)

(assert (=> b!768409 m!1038085))

(declare-fun m!1038087 () Bool)

(assert (=> b!768416 m!1038087))

(declare-fun m!1038089 () Bool)

(assert (=> b!768416 m!1038089))

(declare-fun m!1038091 () Bool)

(assert (=> mapNonEmpty!5582 m!1038091))

(declare-fun m!1038093 () Bool)

(assert (=> b!768429 m!1038093))

(declare-fun m!1038095 () Bool)

(assert (=> b!768423 m!1038095))

(declare-fun m!1038097 () Bool)

(assert (=> b!768423 m!1038097))

(declare-fun m!1038099 () Bool)

(assert (=> b!768431 m!1038099))

(declare-fun m!1038101 () Bool)

(assert (=> b!768427 m!1038101))

(declare-fun m!1038103 () Bool)

(assert (=> b!768422 m!1038103))

(declare-fun m!1038105 () Bool)

(assert (=> mapNonEmpty!5584 m!1038105))

(declare-fun m!1038107 () Bool)

(assert (=> b!768421 m!1038107))

(declare-fun m!1038109 () Bool)

(assert (=> b!768430 m!1038109))

(declare-fun m!1038111 () Bool)

(assert (=> b!768430 m!1038111))

(assert (=> b!768430 m!1038109))

(assert (=> b!768430 m!1038111))

(declare-fun m!1038113 () Bool)

(assert (=> b!768430 m!1038113))

(declare-fun m!1038115 () Bool)

(assert (=> b!768436 m!1038115))

(declare-fun m!1038117 () Bool)

(assert (=> b!768424 m!1038117))

(declare-fun m!1038119 () Bool)

(assert (=> b!768424 m!1038119))

(declare-fun m!1038121 () Bool)

(assert (=> mapNonEmpty!5583 m!1038121))

(declare-fun m!1038123 () Bool)

(assert (=> b!768404 m!1038123))

(declare-fun m!1038125 () Bool)

(assert (=> b!768404 m!1038125))

(declare-fun m!1038127 () Bool)

(assert (=> start!71282 m!1038127))

(declare-fun m!1038129 () Bool)

(assert (=> start!71282 m!1038129))

(declare-fun m!1038131 () Bool)

(assert (=> start!71282 m!1038131))

(declare-fun m!1038133 () Bool)

(assert (=> start!71282 m!1038133))

(declare-fun m!1038135 () Bool)

(assert (=> start!71282 m!1038135))

(declare-fun m!1038137 () Bool)

(assert (=> b!768408 m!1038137))

(check-sat (not b_next!24133) (not b!768436) (not b!768404) (not b_next!24137) b_and!71551 (not b_next!24127) b_and!71541 (not b_next!24125) (not b_next!24131) (not b!768416) b_and!71543 (not b!768421) (not b!768422) (not b!768429) (not b!768409) (not b_next!24129) (not start!71282) (not b!768410) (not b!768431) b_and!71553 b_and!71555 (not b!768413) (not b!768427) (not b!768433) b_and!71545 (not b!768432) b_and!71547 (not mapNonEmpty!5582) (not b_next!24135) (not b!768408) (not mapNonEmpty!5584) (not b!768430) (not b!768424) (not b_next!24139) (not b!768423) (not mapNonEmpty!5583) b_and!71549 (not b!768419))
(check-sat (not b_next!24129) (not b_next!24133) b_and!71553 b_and!71555 (not b_next!24137) b_and!71551 (not b_next!24135) (not b_next!24127) b_and!71541 (not b_next!24125) (not b_next!24131) b_and!71543 (not b_next!24139) b_and!71549 b_and!71545 b_and!71547)
