; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2172 () Bool)

(assert start!2172)

(declare-fun b!38414 () Bool)

(declare-fun b_free!621 () Bool)

(declare-fun b_next!621 () Bool)

(assert (=> b!38414 (= b_free!621 (not b_next!621))))

(declare-fun tp!26680 () Bool)

(declare-fun b_and!655 () Bool)

(assert (=> b!38414 (= tp!26680 b_and!655)))

(declare-fun b!38396 () Bool)

(declare-fun b_free!623 () Bool)

(declare-fun b_next!623 () Bool)

(assert (=> b!38396 (= b_free!623 (not b_next!623))))

(declare-fun tp!26688 () Bool)

(declare-fun b_and!657 () Bool)

(assert (=> b!38396 (= tp!26688 b_and!657)))

(declare-fun b!38392 () Bool)

(declare-fun b_free!625 () Bool)

(declare-fun b_next!625 () Bool)

(assert (=> b!38392 (= b_free!625 (not b_next!625))))

(declare-fun tp!26678 () Bool)

(declare-fun b_and!659 () Bool)

(assert (=> b!38392 (= tp!26678 b_and!659)))

(declare-fun b!38409 () Bool)

(declare-fun b_free!627 () Bool)

(declare-fun b_next!627 () Bool)

(assert (=> b!38409 (= b_free!627 (not b_next!627))))

(declare-fun tp!26691 () Bool)

(declare-fun b_and!661 () Bool)

(assert (=> b!38409 (= tp!26691 b_and!661)))

(declare-fun b!38402 () Bool)

(declare-fun b_free!629 () Bool)

(declare-fun b_next!629 () Bool)

(assert (=> b!38402 (= b_free!629 (not b_next!629))))

(declare-fun tp!26673 () Bool)

(declare-fun b_and!663 () Bool)

(assert (=> b!38402 (= tp!26673 b_and!663)))

(declare-fun b!38400 () Bool)

(declare-fun b_free!631 () Bool)

(declare-fun b_next!631 () Bool)

(assert (=> b!38400 (= b_free!631 (not b_next!631))))

(declare-fun tp!26685 () Bool)

(declare-fun b_and!665 () Bool)

(assert (=> b!38400 (= tp!26685 b_and!665)))

(declare-fun tp!26674 () Bool)

(declare-fun e!19097 () Bool)

(declare-fun tp!26686 () Bool)

(declare-fun e!19081 () Bool)

(declare-datatypes ((Regex!191 0))(
  ( (ElementMatch!191 (c!15738 (_ BitVec 16))) (Concat!312 (regOne!894 Regex!191) (regTwo!894 Regex!191)) (EmptyExpr!191) (Star!191 (reg!520 Regex!191)) (EmptyLang!191) (Union!191 (regOne!895 Regex!191) (regTwo!895 Regex!191)) )
))
(declare-datatypes ((List!439 0))(
  ( (Nil!437) (Cons!437 (h!5833 Regex!191) (t!15335 List!439)) )
))
(declare-datatypes ((Context!98 0))(
  ( (Context!99 (exprs!549 List!439)) )
))
(declare-datatypes ((tuple3!120 0))(
  ( (tuple3!121 (_1!298 Regex!191) (_2!298 Context!98) (_3!66 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!464 0))(
  ( (tuple2!465 (_1!299 tuple3!120) (_2!299 (InoxSet Context!98))) )
))
(declare-datatypes ((List!440 0))(
  ( (Nil!438) (Cons!438 (h!5834 tuple2!464) (t!15336 List!440)) )
))
(declare-datatypes ((array!442 0))(
  ( (array!443 (arr!228 (Array (_ BitVec 32) List!440)) (size!487 (_ BitVec 32))) )
))
(declare-datatypes ((array!444 0))(
  ( (array!445 (arr!229 (Array (_ BitVec 32) (_ BitVec 64))) (size!488 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!250 0))(
  ( (LongMapFixedSize!251 (defaultEntry!463 Int) (mask!822 (_ BitVec 32)) (extraKeys!371 (_ BitVec 32)) (zeroValue!381 List!440) (minValue!381 List!440) (_size!382 (_ BitVec 32)) (_keys!416 array!444) (_values!403 array!442) (_vacant!185 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!489 0))(
  ( (Cell!490 (v!12223 LongMapFixedSize!250)) )
))
(declare-datatypes ((MutLongMap!125 0))(
  ( (LongMap!125 (underlying!445 Cell!489)) (MutLongMapExt!124 (__x!799 Int)) )
))
(declare-datatypes ((Cell!491 0))(
  ( (Cell!492 (v!12224 MutLongMap!125)) )
))
(declare-datatypes ((Hashable!121 0))(
  ( (HashableExt!120 (__x!800 Int)) )
))
(declare-datatypes ((MutableMap!121 0))(
  ( (MutableMapExt!120 (__x!801 Int)) (HashMap!121 (underlying!446 Cell!491) (hashF!1989 Hashable!121) (_size!383 (_ BitVec 32)) (defaultValue!270 Int)) )
))
(declare-datatypes ((CacheDown!84 0))(
  ( (CacheDown!85 (cache!606 MutableMap!121)) )
))
(declare-fun cacheDown!333 () CacheDown!84)

(declare-fun array_inv!142 (array!444) Bool)

(declare-fun array_inv!143 (array!442) Bool)

(assert (=> b!38392 (= e!19081 (and tp!26678 tp!26674 tp!26686 (array_inv!142 (_keys!416 (v!12223 (underlying!445 (v!12224 (underlying!446 (cache!606 cacheDown!333))))))) (array_inv!143 (_values!403 (v!12223 (underlying!445 (v!12224 (underlying!446 (cache!606 cacheDown!333))))))) e!19097))))

(declare-fun b!38393 () Bool)

(declare-fun e!19079 () Bool)

(declare-fun e!19088 () Bool)

(assert (=> b!38393 (= e!19079 e!19088)))

(declare-fun mapIsEmpty!445 () Bool)

(declare-fun mapRes!447 () Bool)

(assert (=> mapIsEmpty!445 mapRes!447))

(declare-fun b!38394 () Bool)

(declare-fun e!19090 () Bool)

(declare-fun e!19089 () Bool)

(declare-datatypes ((tuple3!122 0))(
  ( (tuple3!123 (_1!300 (InoxSet Context!98)) (_2!300 Int) (_3!67 Int)) )
))
(declare-datatypes ((tuple2!466 0))(
  ( (tuple2!467 (_1!301 tuple3!122) (_2!301 Int)) )
))
(declare-datatypes ((List!441 0))(
  ( (Nil!439) (Cons!439 (h!5835 tuple2!466) (t!15337 List!441)) )
))
(declare-datatypes ((array!446 0))(
  ( (array!447 (arr!230 (Array (_ BitVec 32) List!441)) (size!489 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!252 0))(
  ( (LongMapFixedSize!253 (defaultEntry!464 Int) (mask!823 (_ BitVec 32)) (extraKeys!372 (_ BitVec 32)) (zeroValue!382 List!441) (minValue!382 List!441) (_size!384 (_ BitVec 32)) (_keys!417 array!444) (_values!404 array!446) (_vacant!186 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!493 0))(
  ( (Cell!494 (v!12225 LongMapFixedSize!252)) )
))
(declare-datatypes ((MutLongMap!126 0))(
  ( (LongMap!126 (underlying!447 Cell!493)) (MutLongMapExt!125 (__x!802 Int)) )
))
(declare-fun lt!3358 () MutLongMap!126)

(get-info :version)

(assert (=> b!38394 (= e!19090 (and e!19089 ((_ is LongMap!126) lt!3358)))))

(declare-datatypes ((List!442 0))(
  ( (Nil!440) (Cons!440 (h!5836 (_ BitVec 16)) (t!15338 List!442)) )
))
(declare-datatypes ((IArray!131 0))(
  ( (IArray!132 (innerList!123 List!442)) )
))
(declare-datatypes ((Conc!65 0))(
  ( (Node!65 (left!442 Conc!65) (right!772 Conc!65) (csize!360 Int) (cheight!276 Int)) (Leaf!239 (xs!2644 IArray!131) (csize!361 Int)) (Empty!65) )
))
(declare-datatypes ((BalanceConc!130 0))(
  ( (BalanceConc!131 (c!15739 Conc!65)) )
))
(declare-datatypes ((Hashable!122 0))(
  ( (HashableExt!121 (__x!803 Int)) )
))
(declare-datatypes ((Cell!495 0))(
  ( (Cell!496 (v!12226 MutLongMap!126)) )
))
(declare-datatypes ((MutableMap!122 0))(
  ( (MutableMapExt!121 (__x!804 Int)) (HashMap!122 (underlying!448 Cell!495) (hashF!1990 Hashable!122) (_size!385 (_ BitVec 32)) (defaultValue!271 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!30 0))(
  ( (CacheFurthestNullable!31 (cache!607 MutableMap!122) (totalInput!1492 BalanceConc!130)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!30)

(assert (=> b!38394 (= lt!3358 (v!12226 (underlying!448 (cache!607 cacheFurthestNullable!45))))))

(declare-fun e!19102 () Bool)

(declare-fun e!19095 () Bool)

(declare-fun e!19094 () Bool)

(declare-fun b!38395 () Bool)

(declare-fun inv!747 (BalanceConc!130) Bool)

(assert (=> b!38395 (= e!19095 (and e!19102 (inv!747 (totalInput!1492 cacheFurthestNullable!45)) e!19094))))

(declare-fun e!19082 () Bool)

(declare-fun e!19084 () Bool)

(assert (=> b!38396 (= e!19082 (and e!19084 tp!26688))))

(declare-fun b!38397 () Bool)

(declare-fun e!19080 () Bool)

(declare-fun e!19092 () Bool)

(assert (=> b!38397 (= e!19080 e!19092)))

(declare-fun b!38398 () Bool)

(declare-fun e!19086 () Bool)

(assert (=> b!38398 (= e!19086 false)))

(declare-fun lt!3360 () Bool)

(declare-fun valid!133 (CacheFurthestNullable!30) Bool)

(assert (=> b!38398 (= lt!3360 (valid!133 cacheFurthestNullable!45))))

(declare-fun b!38399 () Bool)

(declare-fun e!19087 () Bool)

(declare-fun e!19098 () Bool)

(assert (=> b!38399 (= e!19087 e!19098)))

(declare-fun tp!26676 () Bool)

(declare-fun tp!26683 () Bool)

(declare-fun e!19078 () Bool)

(declare-fun array_inv!144 (array!446) Bool)

(assert (=> b!38400 (= e!19088 (and tp!26685 tp!26676 tp!26683 (array_inv!142 (_keys!417 (v!12225 (underlying!447 (v!12226 (underlying!448 (cache!607 cacheFurthestNullable!45))))))) (array_inv!144 (_values!404 (v!12225 (underlying!447 (v!12226 (underlying!448 (cache!607 cacheFurthestNullable!45))))))) e!19078))))

(declare-fun b!38401 () Bool)

(declare-fun res!28552 () Bool)

(assert (=> b!38401 (=> (not res!28552) (not e!19086))))

(declare-datatypes ((Hashable!123 0))(
  ( (HashableExt!122 (__x!805 Int)) )
))
(declare-datatypes ((tuple2!468 0))(
  ( (tuple2!469 (_1!302 Context!98) (_2!302 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!470 0))(
  ( (tuple2!471 (_1!303 tuple2!468) (_2!303 (InoxSet Context!98))) )
))
(declare-datatypes ((List!443 0))(
  ( (Nil!441) (Cons!441 (h!5837 tuple2!470) (t!15339 List!443)) )
))
(declare-datatypes ((array!448 0))(
  ( (array!449 (arr!231 (Array (_ BitVec 32) List!443)) (size!490 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!254 0))(
  ( (LongMapFixedSize!255 (defaultEntry!465 Int) (mask!824 (_ BitVec 32)) (extraKeys!373 (_ BitVec 32)) (zeroValue!383 List!443) (minValue!383 List!443) (_size!386 (_ BitVec 32)) (_keys!418 array!444) (_values!405 array!448) (_vacant!187 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!497 0))(
  ( (Cell!498 (v!12227 LongMapFixedSize!254)) )
))
(declare-datatypes ((MutLongMap!127 0))(
  ( (LongMap!127 (underlying!449 Cell!497)) (MutLongMapExt!126 (__x!806 Int)) )
))
(declare-datatypes ((Cell!499 0))(
  ( (Cell!500 (v!12228 MutLongMap!127)) )
))
(declare-datatypes ((MutableMap!123 0))(
  ( (MutableMapExt!122 (__x!807 Int)) (HashMap!123 (underlying!450 Cell!499) (hashF!1991 Hashable!123) (_size!387 (_ BitVec 32)) (defaultValue!272 Int)) )
))
(declare-datatypes ((CacheUp!84 0))(
  ( (CacheUp!85 (cache!608 MutableMap!123)) )
))
(declare-fun cacheUp!320 () CacheUp!84)

(declare-fun valid!134 (CacheUp!84) Bool)

(assert (=> b!38401 (= res!28552 (valid!134 cacheUp!320))))

(declare-fun e!19085 () Bool)

(declare-fun tp!26690 () Bool)

(declare-fun tp!26675 () Bool)

(declare-fun array_inv!145 (array!448) Bool)

(assert (=> b!38402 (= e!19098 (and tp!26673 tp!26690 tp!26675 (array_inv!142 (_keys!418 (v!12227 (underlying!449 (v!12228 (underlying!450 (cache!608 cacheUp!320))))))) (array_inv!145 (_values!405 (v!12227 (underlying!449 (v!12228 (underlying!450 (cache!608 cacheUp!320))))))) e!19085))))

(declare-fun b!38403 () Bool)

(declare-fun tp!26692 () Bool)

(assert (=> b!38403 (= e!19097 (and tp!26692 mapRes!447))))

(declare-fun condMapEmpty!445 () Bool)

(declare-fun mapDefault!447 () List!440)

(assert (=> b!38403 (= condMapEmpty!445 (= (arr!228 (_values!403 (v!12223 (underlying!445 (v!12224 (underlying!446 (cache!606 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!440)) mapDefault!447)))))

(declare-fun mapNonEmpty!445 () Bool)

(declare-fun mapRes!446 () Bool)

(declare-fun tp!26677 () Bool)

(declare-fun tp!26672 () Bool)

(assert (=> mapNonEmpty!445 (= mapRes!446 (and tp!26677 tp!26672))))

(declare-fun mapKey!446 () (_ BitVec 32))

(declare-fun mapRest!446 () (Array (_ BitVec 32) List!443))

(declare-fun mapValue!445 () List!443)

(assert (=> mapNonEmpty!445 (= (arr!231 (_values!405 (v!12227 (underlying!449 (v!12228 (underlying!450 (cache!608 cacheUp!320))))))) (store mapRest!446 mapKey!446 mapValue!445))))

(declare-fun b!38404 () Bool)

(declare-fun tp!26679 () Bool)

(assert (=> b!38404 (= e!19085 (and tp!26679 mapRes!446))))

(declare-fun condMapEmpty!447 () Bool)

(declare-fun mapDefault!446 () List!443)

(assert (=> b!38404 (= condMapEmpty!447 (= (arr!231 (_values!405 (v!12227 (underlying!449 (v!12228 (underlying!450 (cache!608 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!443)) mapDefault!446)))))

(declare-fun b!38405 () Bool)

(assert (=> b!38405 (= e!19089 e!19079)))

(declare-fun b!38406 () Bool)

(declare-fun res!28553 () Bool)

(assert (=> b!38406 (=> (not res!28553) (not e!19086))))

(declare-fun valid!135 (CacheDown!84) Bool)

(assert (=> b!38406 (= res!28553 (valid!135 cacheDown!333))))

(declare-fun b!38407 () Bool)

(declare-fun tp!26687 () Bool)

(declare-fun mapRes!445 () Bool)

(assert (=> b!38407 (= e!19078 (and tp!26687 mapRes!445))))

(declare-fun condMapEmpty!446 () Bool)

(declare-fun mapDefault!445 () List!441)

(assert (=> b!38407 (= condMapEmpty!446 (= (arr!230 (_values!404 (v!12225 (underlying!447 (v!12226 (underlying!448 (cache!607 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!441)) mapDefault!445)))))

(declare-fun b!38408 () Bool)

(declare-fun e!19101 () Bool)

(assert (=> b!38408 (= e!19101 e!19081)))

(assert (=> b!38409 (= e!19102 (and e!19090 tp!26691))))

(declare-fun mapIsEmpty!446 () Bool)

(assert (=> mapIsEmpty!446 mapRes!445))

(declare-fun b!38410 () Bool)

(declare-fun res!28551 () Bool)

(assert (=> b!38410 (=> (not res!28551) (not e!19086))))

(declare-datatypes ((TokenValue!121 0))(
  ( (FloatLiteralValue!242 (text!1292 List!442)) (TokenValueExt!120 (__x!808 Int)) (Broken!605 (value!6512 List!442)) (Object!122) (End!121) (Def!121) (Underscore!121) (Match!121) (Else!121) (Error!121) (Case!121) (If!121) (Extends!121) (Abstract!121) (Class!121) (Val!121) (DelimiterValue!242 (del!181 List!442)) (KeywordValue!127 (value!6513 List!442)) (CommentValue!242 (value!6514 List!442)) (WhitespaceValue!242 (value!6515 List!442)) (IndentationValue!121 (value!6516 List!442)) (String!888) (Int32!121) (Broken!606 (value!6517 List!442)) (Boolean!122) (Unit!213) (OperatorValue!124 (op!181 List!442)) (IdentifierValue!242 (value!6518 List!442)) (IdentifierValue!243 (value!6519 List!442)) (WhitespaceValue!243 (value!6520 List!442)) (True!242) (False!242) (Broken!607 (value!6521 List!442)) (Broken!608 (value!6522 List!442)) (True!243) (RightBrace!121) (RightBracket!121) (Colon!121) (Null!121) (Comma!121) (LeftBracket!121) (False!243) (LeftBrace!121) (ImaginaryLiteralValue!121 (text!1293 List!442)) (StringLiteralValue!363 (value!6523 List!442)) (EOFValue!121 (value!6524 List!442)) (IdentValue!121 (value!6525 List!442)) (DelimiterValue!243 (value!6526 List!442)) (DedentValue!121 (value!6527 List!442)) (NewLineValue!121 (value!6528 List!442)) (IntegerValue!363 (value!6529 (_ BitVec 32)) (text!1294 List!442)) (IntegerValue!364 (value!6530 Int) (text!1295 List!442)) (Times!121) (Or!121) (Equal!121) (Minus!121) (Broken!609 (value!6531 List!442)) (And!121) (Div!121) (LessEqual!121) (Mod!121) (Concat!313) (Not!121) (Plus!121) (SpaceValue!121 (value!6532 List!442)) (IntegerValue!365 (value!6533 Int) (text!1296 List!442)) (StringLiteralValue!364 (text!1297 List!442)) (FloatLiteralValue!243 (text!1298 List!442)) (BytesLiteralValue!121 (value!6534 List!442)) (CommentValue!243 (value!6535 List!442)) (StringLiteralValue!365 (value!6536 List!442)) (ErrorTokenValue!121 (msg!182 List!442)) )
))
(declare-datatypes ((String!889 0))(
  ( (String!890 (value!6537 String)) )
))
(declare-datatypes ((TokenValueInjection!66 0))(
  ( (TokenValueInjection!67 (toValue!610 Int) (toChars!469 Int)) )
))
(declare-datatypes ((Rule!62 0))(
  ( (Rule!63 (regex!131 Regex!191) (tag!309 String!889) (isSeparator!131 Bool) (transformation!131 TokenValueInjection!66)) )
))
(declare-datatypes ((List!444 0))(
  ( (Nil!442) (Cons!442 (h!5838 Rule!62) (t!15340 List!444)) )
))
(declare-fun lt!3357 () List!444)

(declare-datatypes ((LexerInterface!28 0))(
  ( (LexerInterfaceExt!25 (__x!809 Int)) (Lexer!26) )
))
(declare-fun rulesInvariant!21 (LexerInterface!28 List!444) Bool)

(assert (=> b!38410 (= res!28551 (rulesInvariant!21 Lexer!26 lt!3357))))

(declare-fun b!38411 () Bool)

(declare-fun e!19100 () Bool)

(assert (=> b!38411 (= e!19100 e!19082)))

(declare-fun res!28550 () Bool)

(assert (=> start!2172 (=> (not res!28550) (not e!19086))))

(declare-fun isEmpty!100 (List!444) Bool)

(assert (=> start!2172 (= res!28550 (not (isEmpty!100 lt!3357)))))

(declare-datatypes ((JsonLexer!24 0))(
  ( (JsonLexer!25) )
))
(declare-fun rules!109 (JsonLexer!24) List!444)

(assert (=> start!2172 (= lt!3357 (rules!109 JsonLexer!25))))

(assert (=> start!2172 e!19086))

(declare-fun inv!748 (CacheUp!84) Bool)

(assert (=> start!2172 (and (inv!748 cacheUp!320) e!19100)))

(declare-fun inv!749 (CacheDown!84) Bool)

(assert (=> start!2172 (and (inv!749 cacheDown!333) e!19080)))

(declare-fun inv!750 (CacheFurthestNullable!30) Bool)

(assert (=> start!2172 (and (inv!750 cacheFurthestNullable!45) e!19095)))

(declare-fun b!38412 () Bool)

(declare-fun tp!26693 () Bool)

(declare-fun inv!751 (Conc!65) Bool)

(assert (=> b!38412 (= e!19094 (and (inv!751 (c!15739 (totalInput!1492 cacheFurthestNullable!45))) tp!26693))))

(declare-fun b!38413 () Bool)

(declare-fun e!19103 () Bool)

(assert (=> b!38413 (= e!19103 e!19101)))

(declare-fun e!19099 () Bool)

(assert (=> b!38414 (= e!19092 (and e!19099 tp!26680))))

(declare-fun mapNonEmpty!446 () Bool)

(declare-fun tp!26682 () Bool)

(declare-fun tp!26684 () Bool)

(assert (=> mapNonEmpty!446 (= mapRes!445 (and tp!26682 tp!26684))))

(declare-fun mapRest!447 () (Array (_ BitVec 32) List!441))

(declare-fun mapValue!447 () List!441)

(declare-fun mapKey!447 () (_ BitVec 32))

(assert (=> mapNonEmpty!446 (= (arr!230 (_values!404 (v!12225 (underlying!447 (v!12226 (underlying!448 (cache!607 cacheFurthestNullable!45))))))) (store mapRest!447 mapKey!447 mapValue!447))))

(declare-fun b!38415 () Bool)

(declare-fun lt!3359 () MutLongMap!125)

(assert (=> b!38415 (= e!19099 (and e!19103 ((_ is LongMap!125) lt!3359)))))

(assert (=> b!38415 (= lt!3359 (v!12224 (underlying!446 (cache!606 cacheDown!333))))))

(declare-fun b!38416 () Bool)

(declare-fun e!19096 () Bool)

(assert (=> b!38416 (= e!19096 e!19087)))

(declare-fun mapNonEmpty!447 () Bool)

(declare-fun tp!26681 () Bool)

(declare-fun tp!26689 () Bool)

(assert (=> mapNonEmpty!447 (= mapRes!447 (and tp!26681 tp!26689))))

(declare-fun mapValue!446 () List!440)

(declare-fun mapRest!445 () (Array (_ BitVec 32) List!440))

(declare-fun mapKey!445 () (_ BitVec 32))

(assert (=> mapNonEmpty!447 (= (arr!228 (_values!403 (v!12223 (underlying!445 (v!12224 (underlying!446 (cache!606 cacheDown!333))))))) (store mapRest!445 mapKey!445 mapValue!446))))

(declare-fun b!38417 () Bool)

(declare-fun lt!3361 () MutLongMap!127)

(assert (=> b!38417 (= e!19084 (and e!19096 ((_ is LongMap!127) lt!3361)))))

(assert (=> b!38417 (= lt!3361 (v!12228 (underlying!450 (cache!608 cacheUp!320))))))

(declare-fun mapIsEmpty!447 () Bool)

(assert (=> mapIsEmpty!447 mapRes!446))

(assert (= (and start!2172 res!28550) b!38410))

(assert (= (and b!38410 res!28551) b!38401))

(assert (= (and b!38401 res!28552) b!38406))

(assert (= (and b!38406 res!28553) b!38398))

(assert (= (and b!38404 condMapEmpty!447) mapIsEmpty!447))

(assert (= (and b!38404 (not condMapEmpty!447)) mapNonEmpty!445))

(assert (= b!38402 b!38404))

(assert (= b!38399 b!38402))

(assert (= b!38416 b!38399))

(assert (= (and b!38417 ((_ is LongMap!127) (v!12228 (underlying!450 (cache!608 cacheUp!320))))) b!38416))

(assert (= b!38396 b!38417))

(assert (= (and b!38411 ((_ is HashMap!123) (cache!608 cacheUp!320))) b!38396))

(assert (= start!2172 b!38411))

(assert (= (and b!38403 condMapEmpty!445) mapIsEmpty!445))

(assert (= (and b!38403 (not condMapEmpty!445)) mapNonEmpty!447))

(assert (= b!38392 b!38403))

(assert (= b!38408 b!38392))

(assert (= b!38413 b!38408))

(assert (= (and b!38415 ((_ is LongMap!125) (v!12224 (underlying!446 (cache!606 cacheDown!333))))) b!38413))

(assert (= b!38414 b!38415))

(assert (= (and b!38397 ((_ is HashMap!121) (cache!606 cacheDown!333))) b!38414))

(assert (= start!2172 b!38397))

(assert (= (and b!38407 condMapEmpty!446) mapIsEmpty!446))

(assert (= (and b!38407 (not condMapEmpty!446)) mapNonEmpty!446))

(assert (= b!38400 b!38407))

(assert (= b!38393 b!38400))

(assert (= b!38405 b!38393))

(assert (= (and b!38394 ((_ is LongMap!126) (v!12226 (underlying!448 (cache!607 cacheFurthestNullable!45))))) b!38405))

(assert (= b!38409 b!38394))

(assert (= (and b!38395 ((_ is HashMap!122) (cache!607 cacheFurthestNullable!45))) b!38409))

(assert (= b!38395 b!38412))

(assert (= start!2172 b!38395))

(declare-fun m!12502 () Bool)

(assert (=> mapNonEmpty!446 m!12502))

(declare-fun m!12504 () Bool)

(assert (=> b!38398 m!12504))

(declare-fun m!12506 () Bool)

(assert (=> b!38401 m!12506))

(declare-fun m!12508 () Bool)

(assert (=> b!38402 m!12508))

(declare-fun m!12510 () Bool)

(assert (=> b!38402 m!12510))

(declare-fun m!12512 () Bool)

(assert (=> b!38395 m!12512))

(declare-fun m!12514 () Bool)

(assert (=> b!38406 m!12514))

(declare-fun m!12516 () Bool)

(assert (=> mapNonEmpty!445 m!12516))

(declare-fun m!12518 () Bool)

(assert (=> b!38412 m!12518))

(declare-fun m!12520 () Bool)

(assert (=> b!38410 m!12520))

(declare-fun m!12522 () Bool)

(assert (=> b!38400 m!12522))

(declare-fun m!12524 () Bool)

(assert (=> b!38400 m!12524))

(declare-fun m!12526 () Bool)

(assert (=> start!2172 m!12526))

(declare-fun m!12528 () Bool)

(assert (=> start!2172 m!12528))

(declare-fun m!12530 () Bool)

(assert (=> start!2172 m!12530))

(declare-fun m!12532 () Bool)

(assert (=> start!2172 m!12532))

(declare-fun m!12534 () Bool)

(assert (=> start!2172 m!12534))

(declare-fun m!12536 () Bool)

(assert (=> b!38392 m!12536))

(declare-fun m!12538 () Bool)

(assert (=> b!38392 m!12538))

(declare-fun m!12540 () Bool)

(assert (=> mapNonEmpty!447 m!12540))

(check-sat (not mapNonEmpty!446) (not b!38392) (not b!38403) (not b!38400) (not b!38398) (not b!38412) (not start!2172) (not b!38410) b_and!663 (not b!38402) b_and!661 (not b_next!631) (not b!38404) (not b!38395) (not b_next!621) (not mapNonEmpty!447) b_and!665 (not b!38401) b_and!655 (not b_next!623) (not b!38407) b_and!657 (not b!38406) b_and!659 (not b_next!629) (not b_next!625) (not mapNonEmpty!445) (not b_next!627))
(check-sat b_and!655 b_and!663 (not b_next!623) b_and!657 b_and!661 (not b_next!631) (not b_next!621) b_and!665 b_and!659 (not b_next!629) (not b_next!625) (not b_next!627))
