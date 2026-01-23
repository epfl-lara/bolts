; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!204874 () Bool)

(assert start!204874)

(declare-fun b!2093591 () Bool)

(declare-fun b_free!59857 () Bool)

(declare-fun b_next!60561 () Bool)

(assert (=> b!2093591 (= b_free!59857 (not b_next!60561))))

(declare-fun tp!632217 () Bool)

(declare-fun b_and!168847 () Bool)

(assert (=> b!2093591 (= tp!632217 b_and!168847)))

(declare-fun b!2093596 () Bool)

(declare-fun b_free!59859 () Bool)

(declare-fun b_next!60563 () Bool)

(assert (=> b!2093596 (= b_free!59859 (not b_next!60563))))

(declare-fun tp!632207 () Bool)

(declare-fun b_and!168849 () Bool)

(assert (=> b!2093596 (= tp!632207 b_and!168849)))

(declare-fun b!2093605 () Bool)

(declare-fun b_free!59861 () Bool)

(declare-fun b_next!60565 () Bool)

(assert (=> b!2093605 (= b_free!59861 (not b_next!60565))))

(declare-fun tp!632208 () Bool)

(declare-fun b_and!168851 () Bool)

(assert (=> b!2093605 (= tp!632208 b_and!168851)))

(declare-fun b!2093618 () Bool)

(declare-fun b_free!59863 () Bool)

(declare-fun b_next!60567 () Bool)

(assert (=> b!2093618 (= b_free!59863 (not b_next!60567))))

(declare-fun tp!632216 () Bool)

(declare-fun b_and!168853 () Bool)

(assert (=> b!2093618 (= tp!632216 b_and!168853)))

(declare-fun b!2093593 () Bool)

(declare-fun b_free!59865 () Bool)

(declare-fun b_next!60569 () Bool)

(assert (=> b!2093593 (= b_free!59865 (not b_next!60569))))

(declare-fun tp!632218 () Bool)

(declare-fun b_and!168855 () Bool)

(assert (=> b!2093593 (= tp!632218 b_and!168855)))

(declare-fun b_free!59867 () Bool)

(declare-fun b_next!60571 () Bool)

(assert (=> b!2093593 (= b_free!59867 (not b_next!60571))))

(declare-fun tp!632209 () Bool)

(declare-fun b_and!168857 () Bool)

(assert (=> b!2093593 (= tp!632209 b_and!168857)))

(declare-fun mapNonEmpty!10500 () Bool)

(declare-fun mapRes!10501 () Bool)

(declare-fun tp!632222 () Bool)

(declare-fun tp!632205 () Bool)

(assert (=> mapNonEmpty!10500 (= mapRes!10501 (and tp!632222 tp!632205))))

(declare-datatypes ((C!11212 0))(
  ( (C!11213 (val!6592 Int)) )
))
(declare-datatypes ((Regex!5533 0))(
  ( (ElementMatch!5533 (c!337358 C!11212)) (Concat!9774 (regOne!11578 Regex!5533) (regTwo!11578 Regex!5533)) (EmptyExpr!5533) (Star!5533 (reg!5862 Regex!5533)) (EmptyLang!5533) (Union!5533 (regOne!11579 Regex!5533) (regTwo!11579 Regex!5533)) )
))
(declare-datatypes ((List!23114 0))(
  ( (Nil!23030) (Cons!23030 (h!28431 Regex!5533) (t!195055 List!23114)) )
))
(declare-datatypes ((Context!2206 0))(
  ( (Context!2207 (exprs!1603 List!23114)) )
))
(declare-datatypes ((tuple2!22202 0))(
  ( (tuple2!22203 (_1!12792 Context!2206) (_2!12792 C!11212)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22204 0))(
  ( (tuple2!22205 (_1!12793 tuple2!22202) (_2!12793 (InoxSet Context!2206))) )
))
(declare-datatypes ((List!23115 0))(
  ( (Nil!23031) (Cons!23031 (h!28432 tuple2!22204) (t!195056 List!23115)) )
))
(declare-datatypes ((array!7511 0))(
  ( (array!7512 (arr!3333 (Array (_ BitVec 32) List!23115)) (size!17987 (_ BitVec 32))) )
))
(declare-datatypes ((array!7513 0))(
  ( (array!7514 (arr!3334 (Array (_ BitVec 32) (_ BitVec 64))) (size!17988 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4358 0))(
  ( (LongMapFixedSize!4359 (defaultEntry!2544 Int) (mask!6261 (_ BitVec 32)) (extraKeys!2427 (_ BitVec 32)) (zeroValue!2437 List!23115) (minValue!2437 List!23115) (_size!4409 (_ BitVec 32)) (_keys!2476 array!7513) (_values!2459 array!7511) (_vacant!2240 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8541 0))(
  ( (Cell!8542 (v!27632 LongMapFixedSize!4358)) )
))
(declare-datatypes ((MutLongMap!2179 0))(
  ( (LongMap!2179 (underlying!4553 Cell!8541)) (MutLongMapExt!2178 (__x!14597 Int)) )
))
(declare-datatypes ((Hashable!2093 0))(
  ( (HashableExt!2092 (__x!14598 Int)) )
))
(declare-datatypes ((Cell!8543 0))(
  ( (Cell!8544 (v!27633 MutLongMap!2179)) )
))
(declare-datatypes ((MutableMap!2093 0))(
  ( (MutableMapExt!2092 (__x!14599 Int)) (HashMap!2093 (underlying!4554 Cell!8543) (hashF!4016 Hashable!2093) (_size!4410 (_ BitVec 32)) (defaultValue!2255 Int)) )
))
(declare-datatypes ((CacheUp!1388 0))(
  ( (CacheUp!1389 (cache!2474 MutableMap!2093)) )
))
(declare-fun cacheUp!562 () CacheUp!1388)

(declare-fun mapValue!10501 () List!23115)

(declare-fun mapKey!10500 () (_ BitVec 32))

(declare-fun mapRest!10500 () (Array (_ BitVec 32) List!23115))

(assert (=> mapNonEmpty!10500 (= (arr!3333 (_values!2459 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))) (store mapRest!10500 mapKey!10500 mapValue!10501))))

(declare-fun b!2093589 () Bool)

(declare-fun e!1329079 () Bool)

(declare-fun e!1329092 () Bool)

(assert (=> b!2093589 (= e!1329079 e!1329092)))

(declare-fun b!2093590 () Bool)

(declare-fun e!1329095 () Bool)

(declare-fun tp!632213 () Bool)

(assert (=> b!2093590 (= e!1329095 (and tp!632213 mapRes!10501))))

(declare-fun condMapEmpty!10500 () Bool)

(declare-fun mapDefault!10501 () List!23115)

(assert (=> b!2093590 (= condMapEmpty!10500 (= (arr!3333 (_values!2459 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!23115)) mapDefault!10501)))))

(declare-fun e!1329073 () Bool)

(declare-fun e!1329097 () Bool)

(assert (=> b!2093591 (= e!1329073 (and e!1329097 tp!632217))))

(declare-fun b!2093592 () Bool)

(declare-fun e!1329076 () Bool)

(declare-fun e!1329077 () Bool)

(assert (=> b!2093592 (= e!1329076 e!1329077)))

(declare-fun mapNonEmpty!10501 () Bool)

(declare-fun mapRes!10500 () Bool)

(declare-fun tp!632225 () Bool)

(declare-fun tp!632212 () Bool)

(assert (=> mapNonEmpty!10501 (= mapRes!10500 (and tp!632225 tp!632212))))

(declare-datatypes ((Hashable!2094 0))(
  ( (HashableExt!2093 (__x!14600 Int)) )
))
(declare-datatypes ((tuple3!2454 0))(
  ( (tuple3!2455 (_1!12794 Regex!5533) (_2!12794 Context!2206) (_3!1691 C!11212)) )
))
(declare-datatypes ((tuple2!22206 0))(
  ( (tuple2!22207 (_1!12795 tuple3!2454) (_2!12795 (InoxSet Context!2206))) )
))
(declare-datatypes ((List!23116 0))(
  ( (Nil!23032) (Cons!23032 (h!28433 tuple2!22206) (t!195057 List!23116)) )
))
(declare-datatypes ((array!7515 0))(
  ( (array!7516 (arr!3335 (Array (_ BitVec 32) List!23116)) (size!17989 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4360 0))(
  ( (LongMapFixedSize!4361 (defaultEntry!2545 Int) (mask!6262 (_ BitVec 32)) (extraKeys!2428 (_ BitVec 32)) (zeroValue!2438 List!23116) (minValue!2438 List!23116) (_size!4411 (_ BitVec 32)) (_keys!2477 array!7513) (_values!2460 array!7515) (_vacant!2241 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8545 0))(
  ( (Cell!8546 (v!27634 LongMapFixedSize!4360)) )
))
(declare-datatypes ((MutLongMap!2180 0))(
  ( (LongMap!2180 (underlying!4555 Cell!8545)) (MutLongMapExt!2179 (__x!14601 Int)) )
))
(declare-datatypes ((Cell!8547 0))(
  ( (Cell!8548 (v!27635 MutLongMap!2180)) )
))
(declare-datatypes ((MutableMap!2094 0))(
  ( (MutableMapExt!2093 (__x!14602 Int)) (HashMap!2094 (underlying!4556 Cell!8547) (hashF!4017 Hashable!2094) (_size!4412 (_ BitVec 32)) (defaultValue!2256 Int)) )
))
(declare-datatypes ((CacheDown!1392 0))(
  ( (CacheDown!1393 (cache!2475 MutableMap!2094)) )
))
(declare-fun cacheDown!575 () CacheDown!1392)

(declare-fun mapKey!10501 () (_ BitVec 32))

(declare-fun mapValue!10500 () List!23116)

(declare-fun mapRest!10501 () (Array (_ BitVec 32) List!23116))

(assert (=> mapNonEmpty!10501 (= (arr!3335 (_values!2460 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))) (store mapRest!10501 mapKey!10501 mapValue!10500))))

(declare-fun e!1329080 () Bool)

(assert (=> b!2093593 (= e!1329080 (and tp!632218 tp!632209))))

(declare-fun b!2093594 () Bool)

(declare-fun lt!786714 () MutLongMap!2179)

(get-info :version)

(assert (=> b!2093594 (= e!1329097 (and e!1329076 ((_ is LongMap!2179) lt!786714)))))

(assert (=> b!2093594 (= lt!786714 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))

(declare-fun b!2093595 () Bool)

(declare-fun res!911524 () Bool)

(declare-fun e!1329096 () Bool)

(assert (=> b!2093595 (=> (not res!911524) (not e!1329096))))

(declare-datatypes ((List!23117 0))(
  ( (Nil!23033) (Cons!23033 (h!28434 C!11212) (t!195058 List!23117)) )
))
(declare-datatypes ((IArray!15353 0))(
  ( (IArray!15354 (innerList!7734 List!23117)) )
))
(declare-datatypes ((Conc!7674 0))(
  ( (Node!7674 (left!18059 Conc!7674) (right!18389 Conc!7674) (csize!15578 Int) (cheight!7885 Int)) (Leaf!11208 (xs!10608 IArray!15353) (csize!15579 Int)) (Empty!7674) )
))
(declare-datatypes ((BalanceConc!15110 0))(
  ( (BalanceConc!15111 (c!337359 Conc!7674)) )
))
(declare-fun totalInput!418 () BalanceConc!15110)

(declare-fun treated!60 () BalanceConc!15110)

(declare-fun input!986 () BalanceConc!15110)

(declare-fun list!9383 (BalanceConc!15110) List!23117)

(declare-fun ++!6273 (List!23117 List!23117) List!23117)

(assert (=> b!2093595 (= res!911524 (= (list!9383 totalInput!418) (++!6273 (list!9383 treated!60) (list!9383 input!986))))))

(declare-fun tp!632204 () Bool)

(declare-fun e!1329081 () Bool)

(declare-fun e!1329094 () Bool)

(declare-fun tp!632215 () Bool)

(declare-fun array_inv!2393 (array!7513) Bool)

(declare-fun array_inv!2394 (array!7515) Bool)

(assert (=> b!2093596 (= e!1329094 (and tp!632207 tp!632215 tp!632204 (array_inv!2393 (_keys!2477 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))) (array_inv!2394 (_values!2460 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))) e!1329081))))

(declare-fun b!2093597 () Bool)

(declare-fun res!911517 () Bool)

(declare-fun e!1329082 () Bool)

(assert (=> b!2093597 (=> (not res!911517) (not e!1329082))))

(declare-datatypes ((List!23118 0))(
  ( (Nil!23034) (Cons!23034 (h!28435 (_ BitVec 16)) (t!195059 List!23118)) )
))
(declare-datatypes ((TokenValue!4241 0))(
  ( (FloatLiteralValue!8482 (text!30132 List!23118)) (TokenValueExt!4240 (__x!14603 Int)) (Broken!21205 (value!128619 List!23118)) (Object!4324) (End!4241) (Def!4241) (Underscore!4241) (Match!4241) (Else!4241) (Error!4241) (Case!4241) (If!4241) (Extends!4241) (Abstract!4241) (Class!4241) (Val!4241) (DelimiterValue!8482 (del!4301 List!23118)) (KeywordValue!4247 (value!128620 List!23118)) (CommentValue!8482 (value!128621 List!23118)) (WhitespaceValue!8482 (value!128622 List!23118)) (IndentationValue!4241 (value!128623 List!23118)) (String!26396) (Int32!4241) (Broken!21206 (value!128624 List!23118)) (Boolean!4242) (Unit!37348) (OperatorValue!4244 (op!4301 List!23118)) (IdentifierValue!8482 (value!128625 List!23118)) (IdentifierValue!8483 (value!128626 List!23118)) (WhitespaceValue!8483 (value!128627 List!23118)) (True!8482) (False!8482) (Broken!21207 (value!128628 List!23118)) (Broken!21208 (value!128629 List!23118)) (True!8483) (RightBrace!4241) (RightBracket!4241) (Colon!4241) (Null!4241) (Comma!4241) (LeftBracket!4241) (False!8483) (LeftBrace!4241) (ImaginaryLiteralValue!4241 (text!30133 List!23118)) (StringLiteralValue!12723 (value!128630 List!23118)) (EOFValue!4241 (value!128631 List!23118)) (IdentValue!4241 (value!128632 List!23118)) (DelimiterValue!8483 (value!128633 List!23118)) (DedentValue!4241 (value!128634 List!23118)) (NewLineValue!4241 (value!128635 List!23118)) (IntegerValue!12723 (value!128636 (_ BitVec 32)) (text!30134 List!23118)) (IntegerValue!12724 (value!128637 Int) (text!30135 List!23118)) (Times!4241) (Or!4241) (Equal!4241) (Minus!4241) (Broken!21209 (value!128638 List!23118)) (And!4241) (Div!4241) (LessEqual!4241) (Mod!4241) (Concat!9775) (Not!4241) (Plus!4241) (SpaceValue!4241 (value!128639 List!23118)) (IntegerValue!12725 (value!128640 Int) (text!30136 List!23118)) (StringLiteralValue!12724 (text!30137 List!23118)) (FloatLiteralValue!8483 (text!30138 List!23118)) (BytesLiteralValue!4241 (value!128641 List!23118)) (CommentValue!8483 (value!128642 List!23118)) (StringLiteralValue!12725 (value!128643 List!23118)) (ErrorTokenValue!4241 (msg!4302 List!23118)) )
))
(declare-datatypes ((String!26397 0))(
  ( (String!26398 (value!128644 String)) )
))
(declare-datatypes ((TokenValueInjection!8066 0))(
  ( (TokenValueInjection!8067 (toValue!5810 Int) (toChars!5669 Int)) )
))
(declare-datatypes ((Rule!8010 0))(
  ( (Rule!8011 (regex!4105 Regex!5533) (tag!4595 String!26397) (isSeparator!4105 Bool) (transformation!4105 TokenValueInjection!8066)) )
))
(declare-datatypes ((Token!7758 0))(
  ( (Token!7759 (value!128645 TokenValue!4241) (rule!6417 Rule!8010) (size!17990 Int) (originalCharacters!4910 List!23117)) )
))
(declare-datatypes ((List!23119 0))(
  ( (Nil!23035) (Cons!23035 (h!28436 Token!7758) (t!195060 List!23119)) )
))
(declare-datatypes ((IArray!15355 0))(
  ( (IArray!15356 (innerList!7735 List!23119)) )
))
(declare-datatypes ((Conc!7675 0))(
  ( (Node!7675 (left!18060 Conc!7675) (right!18390 Conc!7675) (csize!15580 Int) (cheight!7886 Int)) (Leaf!11209 (xs!10609 IArray!15355) (csize!15581 Int)) (Empty!7675) )
))
(declare-datatypes ((BalanceConc!15112 0))(
  ( (BalanceConc!15113 (c!337360 Conc!7675)) )
))
(declare-datatypes ((tuple2!22208 0))(
  ( (tuple2!22209 (_1!12796 BalanceConc!15112) (_2!12796 BalanceConc!15110)) )
))
(declare-fun lt!786711 () tuple2!22208)

(declare-fun lt!786712 () tuple2!22208)

(assert (=> b!2093597 (= res!911517 (= (list!9383 (_2!12796 lt!786711)) (list!9383 (_2!12796 lt!786712))))))

(declare-fun b!2093598 () Bool)

(declare-fun e!1329091 () Bool)

(assert (=> b!2093598 (= e!1329096 e!1329091)))

(declare-fun res!911519 () Bool)

(assert (=> b!2093598 (=> (not res!911519) (not e!1329091))))

(declare-fun lt!786715 () tuple2!22208)

(declare-fun acc!382 () BalanceConc!15112)

(declare-fun list!9384 (BalanceConc!15112) List!23119)

(assert (=> b!2093598 (= res!911519 (= (list!9384 (_1!12796 lt!786715)) (list!9384 acc!382)))))

(declare-datatypes ((LexerInterface!3708 0))(
  ( (LexerInterfaceExt!3705 (__x!14604 Int)) (Lexer!3706) )
))
(declare-fun thiss!12889 () LexerInterface!3708)

(declare-datatypes ((List!23120 0))(
  ( (Nil!23036) (Cons!23036 (h!28437 Rule!8010) (t!195061 List!23120)) )
))
(declare-fun rules!1563 () List!23120)

(declare-fun lexRec!502 (LexerInterface!3708 List!23120 BalanceConc!15110) tuple2!22208)

(assert (=> b!2093598 (= lt!786715 (lexRec!502 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2093599 () Bool)

(declare-fun res!911520 () Bool)

(assert (=> b!2093599 (=> (not res!911520) (not e!1329096))))

(declare-fun isEmpty!14204 (List!23120) Bool)

(assert (=> b!2093599 (= res!911520 (not (isEmpty!14204 rules!1563)))))

(declare-fun b!2093600 () Bool)

(declare-fun size!17991 (BalanceConc!15110) Int)

(assert (=> b!2093600 (= e!1329082 (< (size!17991 input!986) 0))))

(declare-fun b!2093601 () Bool)

(declare-fun res!911522 () Bool)

(assert (=> b!2093601 (=> (not res!911522) (not e!1329091))))

(declare-fun isEmpty!14205 (List!23117) Bool)

(assert (=> b!2093601 (= res!911522 (isEmpty!14205 (list!9383 (_2!12796 lt!786715))))))

(declare-fun b!2093602 () Bool)

(declare-fun e!1329093 () Bool)

(declare-fun e!1329087 () Bool)

(assert (=> b!2093602 (= e!1329093 e!1329087)))

(declare-fun b!2093603 () Bool)

(assert (=> b!2093603 (= e!1329092 e!1329094)))

(declare-fun b!2093604 () Bool)

(declare-fun e!1329088 () Bool)

(declare-fun tp!632210 () Bool)

(declare-fun inv!30524 (Conc!7675) Bool)

(assert (=> b!2093604 (= e!1329088 (and (inv!30524 (c!337360 acc!382)) tp!632210))))

(declare-fun tp!632214 () Bool)

(declare-fun tp!632220 () Bool)

(declare-fun e!1329075 () Bool)

(declare-fun array_inv!2395 (array!7511) Bool)

(assert (=> b!2093605 (= e!1329075 (and tp!632208 tp!632214 tp!632220 (array_inv!2393 (_keys!2476 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))) (array_inv!2395 (_values!2459 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))) e!1329095))))

(declare-fun b!2093606 () Bool)

(declare-fun res!911518 () Bool)

(assert (=> b!2093606 (=> (not res!911518) (not e!1329082))))

(declare-fun valid!1725 (CacheDown!1392) Bool)

(assert (=> b!2093606 (= res!911518 (valid!1725 cacheDown!575))))

(declare-fun b!2093607 () Bool)

(declare-fun e!1329098 () Bool)

(declare-fun e!1329090 () Bool)

(declare-fun tp!632211 () Bool)

(assert (=> b!2093607 (= e!1329098 (and e!1329090 tp!632211))))

(declare-fun b!2093608 () Bool)

(declare-fun e!1329085 () Bool)

(declare-fun tp!632206 () Bool)

(declare-fun inv!30525 (Conc!7674) Bool)

(assert (=> b!2093608 (= e!1329085 (and (inv!30525 (c!337359 totalInput!418)) tp!632206))))

(declare-fun b!2093609 () Bool)

(declare-fun e!1329089 () Bool)

(declare-fun tp!632224 () Bool)

(assert (=> b!2093609 (= e!1329089 (and (inv!30525 (c!337359 treated!60)) tp!632224))))

(declare-fun b!2093610 () Bool)

(declare-fun res!911521 () Bool)

(assert (=> b!2093610 (=> (not res!911521) (not e!1329096))))

(declare-fun rulesInvariant!3281 (LexerInterface!3708 List!23120) Bool)

(assert (=> b!2093610 (= res!911521 (rulesInvariant!3281 thiss!12889 rules!1563))))

(declare-fun b!2093611 () Bool)

(declare-fun e!1329086 () Bool)

(declare-fun tp!632221 () Bool)

(assert (=> b!2093611 (= e!1329086 (and (inv!30525 (c!337359 input!986)) tp!632221))))

(declare-fun b!2093612 () Bool)

(declare-fun tp!632223 () Bool)

(assert (=> b!2093612 (= e!1329081 (and tp!632223 mapRes!10500))))

(declare-fun condMapEmpty!10501 () Bool)

(declare-fun mapDefault!10500 () List!23116)

(assert (=> b!2093612 (= condMapEmpty!10501 (= (arr!3335 (_values!2460 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!23116)) mapDefault!10500)))))

(declare-fun tp!632219 () Bool)

(declare-fun b!2093613 () Bool)

(declare-fun inv!30523 (String!26397) Bool)

(declare-fun inv!30526 (TokenValueInjection!8066) Bool)

(assert (=> b!2093613 (= e!1329090 (and tp!632219 (inv!30523 (tag!4595 (h!28437 rules!1563))) (inv!30526 (transformation!4105 (h!28437 rules!1563))) e!1329080))))

(declare-fun b!2093614 () Bool)

(assert (=> b!2093614 (= e!1329091 e!1329082)))

(declare-fun res!911526 () Bool)

(assert (=> b!2093614 (=> (not res!911526) (not e!1329082))))

(declare-fun ++!6274 (BalanceConc!15112 BalanceConc!15112) BalanceConc!15112)

(assert (=> b!2093614 (= res!911526 (= (list!9384 (_1!12796 lt!786711)) (list!9384 (++!6274 acc!382 (_1!12796 lt!786712)))))))

(assert (=> b!2093614 (= lt!786712 (lexRec!502 thiss!12889 rules!1563 input!986))))

(assert (=> b!2093614 (= lt!786711 (lexRec!502 thiss!12889 rules!1563 totalInput!418))))

(declare-fun b!2093615 () Bool)

(declare-fun e!1329078 () Bool)

(declare-fun lt!786713 () MutLongMap!2180)

(assert (=> b!2093615 (= e!1329078 (and e!1329079 ((_ is LongMap!2180) lt!786713)))))

(assert (=> b!2093615 (= lt!786713 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))

(declare-fun mapIsEmpty!10500 () Bool)

(assert (=> mapIsEmpty!10500 mapRes!10501))

(declare-fun b!2093616 () Bool)

(assert (=> b!2093616 (= e!1329077 e!1329075)))

(declare-fun b!2093617 () Bool)

(declare-fun e!1329083 () Bool)

(assert (=> b!2093617 (= e!1329083 e!1329073)))

(assert (=> b!2093618 (= e!1329087 (and e!1329078 tp!632216))))

(declare-fun mapIsEmpty!10501 () Bool)

(assert (=> mapIsEmpty!10501 mapRes!10500))

(declare-fun b!2093619 () Bool)

(declare-fun res!911523 () Bool)

(assert (=> b!2093619 (=> (not res!911523) (not e!1329082))))

(declare-fun valid!1726 (CacheUp!1388) Bool)

(assert (=> b!2093619 (= res!911523 (valid!1726 cacheUp!562))))

(declare-fun res!911525 () Bool)

(assert (=> start!204874 (=> (not res!911525) (not e!1329096))))

(assert (=> start!204874 (= res!911525 ((_ is Lexer!3706) thiss!12889))))

(assert (=> start!204874 e!1329096))

(declare-fun inv!30527 (CacheDown!1392) Bool)

(assert (=> start!204874 (and (inv!30527 cacheDown!575) e!1329093)))

(assert (=> start!204874 true))

(declare-fun inv!30528 (CacheUp!1388) Bool)

(assert (=> start!204874 (and (inv!30528 cacheUp!562) e!1329083)))

(assert (=> start!204874 e!1329098))

(declare-fun inv!30529 (BalanceConc!15110) Bool)

(assert (=> start!204874 (and (inv!30529 totalInput!418) e!1329085)))

(assert (=> start!204874 (and (inv!30529 treated!60) e!1329089)))

(assert (=> start!204874 (and (inv!30529 input!986) e!1329086)))

(declare-fun inv!30530 (BalanceConc!15112) Bool)

(assert (=> start!204874 (and (inv!30530 acc!382) e!1329088)))

(assert (= (and start!204874 res!911525) b!2093599))

(assert (= (and b!2093599 res!911520) b!2093610))

(assert (= (and b!2093610 res!911521) b!2093595))

(assert (= (and b!2093595 res!911524) b!2093598))

(assert (= (and b!2093598 res!911519) b!2093601))

(assert (= (and b!2093601 res!911522) b!2093614))

(assert (= (and b!2093614 res!911526) b!2093597))

(assert (= (and b!2093597 res!911517) b!2093619))

(assert (= (and b!2093619 res!911523) b!2093606))

(assert (= (and b!2093606 res!911518) b!2093600))

(assert (= (and b!2093612 condMapEmpty!10501) mapIsEmpty!10501))

(assert (= (and b!2093612 (not condMapEmpty!10501)) mapNonEmpty!10501))

(assert (= b!2093596 b!2093612))

(assert (= b!2093603 b!2093596))

(assert (= b!2093589 b!2093603))

(assert (= (and b!2093615 ((_ is LongMap!2180) (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))) b!2093589))

(assert (= b!2093618 b!2093615))

(assert (= (and b!2093602 ((_ is HashMap!2094) (cache!2475 cacheDown!575))) b!2093618))

(assert (= start!204874 b!2093602))

(assert (= (and b!2093590 condMapEmpty!10500) mapIsEmpty!10500))

(assert (= (and b!2093590 (not condMapEmpty!10500)) mapNonEmpty!10500))

(assert (= b!2093605 b!2093590))

(assert (= b!2093616 b!2093605))

(assert (= b!2093592 b!2093616))

(assert (= (and b!2093594 ((_ is LongMap!2179) (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))) b!2093592))

(assert (= b!2093591 b!2093594))

(assert (= (and b!2093617 ((_ is HashMap!2093) (cache!2474 cacheUp!562))) b!2093591))

(assert (= start!204874 b!2093617))

(assert (= b!2093613 b!2093593))

(assert (= b!2093607 b!2093613))

(assert (= (and start!204874 ((_ is Cons!23036) rules!1563)) b!2093607))

(assert (= start!204874 b!2093608))

(assert (= start!204874 b!2093609))

(assert (= start!204874 b!2093611))

(assert (= start!204874 b!2093604))

(declare-fun m!2549283 () Bool)

(assert (=> mapNonEmpty!10500 m!2549283))

(declare-fun m!2549285 () Bool)

(assert (=> b!2093608 m!2549285))

(declare-fun m!2549287 () Bool)

(assert (=> b!2093606 m!2549287))

(declare-fun m!2549289 () Bool)

(assert (=> b!2093605 m!2549289))

(declare-fun m!2549291 () Bool)

(assert (=> b!2093605 m!2549291))

(declare-fun m!2549293 () Bool)

(assert (=> b!2093597 m!2549293))

(declare-fun m!2549295 () Bool)

(assert (=> b!2093597 m!2549295))

(declare-fun m!2549297 () Bool)

(assert (=> b!2093614 m!2549297))

(declare-fun m!2549299 () Bool)

(assert (=> b!2093614 m!2549299))

(declare-fun m!2549301 () Bool)

(assert (=> b!2093614 m!2549301))

(declare-fun m!2549303 () Bool)

(assert (=> b!2093614 m!2549303))

(declare-fun m!2549305 () Bool)

(assert (=> b!2093614 m!2549305))

(assert (=> b!2093614 m!2549299))

(declare-fun m!2549307 () Bool)

(assert (=> b!2093619 m!2549307))

(declare-fun m!2549309 () Bool)

(assert (=> b!2093595 m!2549309))

(declare-fun m!2549311 () Bool)

(assert (=> b!2093595 m!2549311))

(declare-fun m!2549313 () Bool)

(assert (=> b!2093595 m!2549313))

(assert (=> b!2093595 m!2549311))

(assert (=> b!2093595 m!2549313))

(declare-fun m!2549315 () Bool)

(assert (=> b!2093595 m!2549315))

(declare-fun m!2549317 () Bool)

(assert (=> b!2093601 m!2549317))

(assert (=> b!2093601 m!2549317))

(declare-fun m!2549319 () Bool)

(assert (=> b!2093601 m!2549319))

(declare-fun m!2549321 () Bool)

(assert (=> start!204874 m!2549321))

(declare-fun m!2549323 () Bool)

(assert (=> start!204874 m!2549323))

(declare-fun m!2549325 () Bool)

(assert (=> start!204874 m!2549325))

(declare-fun m!2549327 () Bool)

(assert (=> start!204874 m!2549327))

(declare-fun m!2549329 () Bool)

(assert (=> start!204874 m!2549329))

(declare-fun m!2549331 () Bool)

(assert (=> start!204874 m!2549331))

(declare-fun m!2549333 () Bool)

(assert (=> b!2093613 m!2549333))

(declare-fun m!2549335 () Bool)

(assert (=> b!2093613 m!2549335))

(declare-fun m!2549337 () Bool)

(assert (=> b!2093598 m!2549337))

(declare-fun m!2549339 () Bool)

(assert (=> b!2093598 m!2549339))

(declare-fun m!2549341 () Bool)

(assert (=> b!2093598 m!2549341))

(declare-fun m!2549343 () Bool)

(assert (=> b!2093604 m!2549343))

(declare-fun m!2549345 () Bool)

(assert (=> b!2093610 m!2549345))

(declare-fun m!2549347 () Bool)

(assert (=> b!2093599 m!2549347))

(declare-fun m!2549349 () Bool)

(assert (=> b!2093609 m!2549349))

(declare-fun m!2549351 () Bool)

(assert (=> b!2093611 m!2549351))

(declare-fun m!2549353 () Bool)

(assert (=> b!2093600 m!2549353))

(declare-fun m!2549355 () Bool)

(assert (=> mapNonEmpty!10501 m!2549355))

(declare-fun m!2549357 () Bool)

(assert (=> b!2093596 m!2549357))

(declare-fun m!2549359 () Bool)

(assert (=> b!2093596 m!2549359))

(check-sat (not b!2093608) (not mapNonEmpty!10500) (not b!2093610) (not b!2093598) b_and!168853 (not b!2093601) (not b_next!60569) (not b!2093606) (not b!2093612) (not b_next!60571) (not b!2093619) (not b!2093611) (not b_next!60563) (not start!204874) b_and!168851 (not b_next!60567) (not b!2093600) (not b!2093607) (not b!2093604) b_and!168847 (not b!2093590) (not b!2093614) b_and!168855 (not b!2093609) (not b!2093599) b_and!168857 b_and!168849 (not b_next!60561) (not b!2093595) (not b!2093597) (not b_next!60565) (not mapNonEmpty!10501) (not b!2093596) (not b!2093605) (not b!2093613))
(check-sat b_and!168847 b_and!168855 b_and!168853 (not b_next!60569) (not b_next!60561) (not b_next!60565) (not b_next!60571) (not b_next!60563) b_and!168851 (not b_next!60567) b_and!168857 b_and!168849)
(get-model)

(declare-fun d!638370 () Bool)

(declare-fun list!9385 (Conc!7674) List!23117)

(assert (=> d!638370 (= (list!9383 totalInput!418) (list!9385 (c!337359 totalInput!418)))))

(declare-fun bs!437618 () Bool)

(assert (= bs!437618 d!638370))

(declare-fun m!2549361 () Bool)

(assert (=> bs!437618 m!2549361))

(assert (=> b!2093595 d!638370))

(declare-fun d!638372 () Bool)

(declare-fun e!1329104 () Bool)

(assert (=> d!638372 e!1329104))

(declare-fun res!911531 () Bool)

(assert (=> d!638372 (=> (not res!911531) (not e!1329104))))

(declare-fun lt!786718 () List!23117)

(declare-fun content!3372 (List!23117) (InoxSet C!11212))

(assert (=> d!638372 (= res!911531 (= (content!3372 lt!786718) ((_ map or) (content!3372 (list!9383 treated!60)) (content!3372 (list!9383 input!986)))))))

(declare-fun e!1329105 () List!23117)

(assert (=> d!638372 (= lt!786718 e!1329105)))

(declare-fun c!337363 () Bool)

(assert (=> d!638372 (= c!337363 ((_ is Nil!23033) (list!9383 treated!60)))))

(assert (=> d!638372 (= (++!6273 (list!9383 treated!60) (list!9383 input!986)) lt!786718)))

(declare-fun b!2093631 () Bool)

(assert (=> b!2093631 (= e!1329104 (or (not (= (list!9383 input!986) Nil!23033)) (= lt!786718 (list!9383 treated!60))))))

(declare-fun b!2093630 () Bool)

(declare-fun res!911532 () Bool)

(assert (=> b!2093630 (=> (not res!911532) (not e!1329104))))

(declare-fun size!17992 (List!23117) Int)

(assert (=> b!2093630 (= res!911532 (= (size!17992 lt!786718) (+ (size!17992 (list!9383 treated!60)) (size!17992 (list!9383 input!986)))))))

(declare-fun b!2093629 () Bool)

(assert (=> b!2093629 (= e!1329105 (Cons!23033 (h!28434 (list!9383 treated!60)) (++!6273 (t!195058 (list!9383 treated!60)) (list!9383 input!986))))))

(declare-fun b!2093628 () Bool)

(assert (=> b!2093628 (= e!1329105 (list!9383 input!986))))

(assert (= (and d!638372 c!337363) b!2093628))

(assert (= (and d!638372 (not c!337363)) b!2093629))

(assert (= (and d!638372 res!911531) b!2093630))

(assert (= (and b!2093630 res!911532) b!2093631))

(declare-fun m!2549363 () Bool)

(assert (=> d!638372 m!2549363))

(assert (=> d!638372 m!2549311))

(declare-fun m!2549365 () Bool)

(assert (=> d!638372 m!2549365))

(assert (=> d!638372 m!2549313))

(declare-fun m!2549367 () Bool)

(assert (=> d!638372 m!2549367))

(declare-fun m!2549369 () Bool)

(assert (=> b!2093630 m!2549369))

(assert (=> b!2093630 m!2549311))

(declare-fun m!2549371 () Bool)

(assert (=> b!2093630 m!2549371))

(assert (=> b!2093630 m!2549313))

(declare-fun m!2549373 () Bool)

(assert (=> b!2093630 m!2549373))

(assert (=> b!2093629 m!2549313))

(declare-fun m!2549375 () Bool)

(assert (=> b!2093629 m!2549375))

(assert (=> b!2093595 d!638372))

(declare-fun d!638374 () Bool)

(assert (=> d!638374 (= (list!9383 treated!60) (list!9385 (c!337359 treated!60)))))

(declare-fun bs!437619 () Bool)

(assert (= bs!437619 d!638374))

(declare-fun m!2549377 () Bool)

(assert (=> bs!437619 m!2549377))

(assert (=> b!2093595 d!638374))

(declare-fun d!638376 () Bool)

(assert (=> d!638376 (= (list!9383 input!986) (list!9385 (c!337359 input!986)))))

(declare-fun bs!437620 () Bool)

(assert (= bs!437620 d!638376))

(declare-fun m!2549379 () Bool)

(assert (=> bs!437620 m!2549379))

(assert (=> b!2093595 d!638376))

(declare-fun d!638378 () Bool)

(declare-fun validCacheMapDown!210 (MutableMap!2094) Bool)

(assert (=> d!638378 (= (valid!1725 cacheDown!575) (validCacheMapDown!210 (cache!2475 cacheDown!575)))))

(declare-fun bs!437621 () Bool)

(assert (= bs!437621 d!638378))

(declare-fun m!2549381 () Bool)

(assert (=> bs!437621 m!2549381))

(assert (=> b!2093606 d!638378))

(declare-fun d!638380 () Bool)

(assert (=> d!638380 (= (array_inv!2393 (_keys!2476 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))) (bvsge (size!17988 (_keys!2476 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2093605 d!638380))

(declare-fun d!638382 () Bool)

(assert (=> d!638382 (= (array_inv!2395 (_values!2459 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))) (bvsge (size!17987 (_values!2459 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2093605 d!638382))

(declare-fun d!638384 () Bool)

(declare-fun c!337366 () Bool)

(assert (=> d!638384 (= c!337366 ((_ is Node!7675) (c!337360 acc!382)))))

(declare-fun e!1329110 () Bool)

(assert (=> d!638384 (= (inv!30524 (c!337360 acc!382)) e!1329110)))

(declare-fun b!2093638 () Bool)

(declare-fun inv!30531 (Conc!7675) Bool)

(assert (=> b!2093638 (= e!1329110 (inv!30531 (c!337360 acc!382)))))

(declare-fun b!2093639 () Bool)

(declare-fun e!1329111 () Bool)

(assert (=> b!2093639 (= e!1329110 e!1329111)))

(declare-fun res!911535 () Bool)

(assert (=> b!2093639 (= res!911535 (not ((_ is Leaf!11209) (c!337360 acc!382))))))

(assert (=> b!2093639 (=> res!911535 e!1329111)))

(declare-fun b!2093640 () Bool)

(declare-fun inv!30532 (Conc!7675) Bool)

(assert (=> b!2093640 (= e!1329111 (inv!30532 (c!337360 acc!382)))))

(assert (= (and d!638384 c!337366) b!2093638))

(assert (= (and d!638384 (not c!337366)) b!2093639))

(assert (= (and b!2093639 (not res!911535)) b!2093640))

(declare-fun m!2549383 () Bool)

(assert (=> b!2093638 m!2549383))

(declare-fun m!2549385 () Bool)

(assert (=> b!2093640 m!2549385))

(assert (=> b!2093604 d!638384))

(declare-fun d!638386 () Bool)

(declare-fun e!1329121 () Bool)

(assert (=> d!638386 e!1329121))

(declare-fun res!911542 () Bool)

(assert (=> d!638386 (=> (not res!911542) (not e!1329121))))

(declare-fun e!1329122 () Bool)

(assert (=> d!638386 (= res!911542 e!1329122)))

(declare-fun c!337373 () Bool)

(declare-fun lt!786725 () tuple2!22208)

(declare-fun size!17993 (BalanceConc!15112) Int)

(assert (=> d!638386 (= c!337373 (> (size!17993 (_1!12796 lt!786725)) 0))))

(declare-fun e!1329120 () tuple2!22208)

(assert (=> d!638386 (= lt!786725 e!1329120)))

(declare-fun c!337372 () Bool)

(declare-datatypes ((tuple2!22210 0))(
  ( (tuple2!22211 (_1!12797 Token!7758) (_2!12797 BalanceConc!15110)) )
))
(declare-datatypes ((Option!4825 0))(
  ( (None!4824) (Some!4824 (v!27636 tuple2!22210)) )
))
(declare-fun lt!786727 () Option!4825)

(assert (=> d!638386 (= c!337372 ((_ is Some!4824) lt!786727))))

(declare-fun maxPrefixZipperSequence!837 (LexerInterface!3708 List!23120 BalanceConc!15110) Option!4825)

(assert (=> d!638386 (= lt!786727 (maxPrefixZipperSequence!837 thiss!12889 rules!1563 totalInput!418))))

(assert (=> d!638386 (= (lexRec!502 thiss!12889 rules!1563 totalInput!418) lt!786725)))

(declare-fun b!2093655 () Bool)

(assert (=> b!2093655 (= e!1329120 (tuple2!22209 (BalanceConc!15113 Empty!7675) totalInput!418))))

(declare-fun b!2093656 () Bool)

(declare-fun lt!786726 () tuple2!22208)

(declare-fun prepend!970 (BalanceConc!15112 Token!7758) BalanceConc!15112)

(assert (=> b!2093656 (= e!1329120 (tuple2!22209 (prepend!970 (_1!12796 lt!786726) (_1!12797 (v!27636 lt!786727))) (_2!12796 lt!786726)))))

(assert (=> b!2093656 (= lt!786726 (lexRec!502 thiss!12889 rules!1563 (_2!12797 (v!27636 lt!786727))))))

(declare-fun b!2093657 () Bool)

(declare-datatypes ((tuple2!22212 0))(
  ( (tuple2!22213 (_1!12798 List!23119) (_2!12798 List!23117)) )
))
(declare-fun lexList!1028 (LexerInterface!3708 List!23120 List!23117) tuple2!22212)

(assert (=> b!2093657 (= e!1329121 (= (list!9383 (_2!12796 lt!786725)) (_2!12798 (lexList!1028 thiss!12889 rules!1563 (list!9383 totalInput!418)))))))

(declare-fun b!2093658 () Bool)

(assert (=> b!2093658 (= e!1329122 (= (list!9383 (_2!12796 lt!786725)) (list!9383 totalInput!418)))))

(declare-fun b!2093659 () Bool)

(declare-fun e!1329123 () Bool)

(declare-fun isEmpty!14206 (BalanceConc!15112) Bool)

(assert (=> b!2093659 (= e!1329123 (not (isEmpty!14206 (_1!12796 lt!786725))))))

(declare-fun b!2093660 () Bool)

(declare-fun res!911544 () Bool)

(assert (=> b!2093660 (=> (not res!911544) (not e!1329121))))

(assert (=> b!2093660 (= res!911544 (= (list!9384 (_1!12796 lt!786725)) (_1!12798 (lexList!1028 thiss!12889 rules!1563 (list!9383 totalInput!418)))))))

(declare-fun b!2093661 () Bool)

(assert (=> b!2093661 (= e!1329122 e!1329123)))

(declare-fun res!911543 () Bool)

(assert (=> b!2093661 (= res!911543 (< (size!17991 (_2!12796 lt!786725)) (size!17991 totalInput!418)))))

(assert (=> b!2093661 (=> (not res!911543) (not e!1329123))))

(assert (= (and d!638386 c!337372) b!2093656))

(assert (= (and d!638386 (not c!337372)) b!2093655))

(assert (= (and d!638386 c!337373) b!2093661))

(assert (= (and d!638386 (not c!337373)) b!2093658))

(assert (= (and b!2093661 res!911543) b!2093659))

(assert (= (and d!638386 res!911542) b!2093660))

(assert (= (and b!2093660 res!911544) b!2093657))

(declare-fun m!2549387 () Bool)

(assert (=> b!2093660 m!2549387))

(assert (=> b!2093660 m!2549309))

(assert (=> b!2093660 m!2549309))

(declare-fun m!2549389 () Bool)

(assert (=> b!2093660 m!2549389))

(declare-fun m!2549391 () Bool)

(assert (=> d!638386 m!2549391))

(declare-fun m!2549393 () Bool)

(assert (=> d!638386 m!2549393))

(declare-fun m!2549395 () Bool)

(assert (=> b!2093656 m!2549395))

(declare-fun m!2549397 () Bool)

(assert (=> b!2093656 m!2549397))

(declare-fun m!2549399 () Bool)

(assert (=> b!2093661 m!2549399))

(declare-fun m!2549401 () Bool)

(assert (=> b!2093661 m!2549401))

(declare-fun m!2549403 () Bool)

(assert (=> b!2093659 m!2549403))

(declare-fun m!2549405 () Bool)

(assert (=> b!2093657 m!2549405))

(assert (=> b!2093657 m!2549309))

(assert (=> b!2093657 m!2549309))

(assert (=> b!2093657 m!2549389))

(assert (=> b!2093658 m!2549405))

(assert (=> b!2093658 m!2549309))

(assert (=> b!2093614 d!638386))

(declare-fun d!638388 () Bool)

(declare-fun e!1329125 () Bool)

(assert (=> d!638388 e!1329125))

(declare-fun res!911545 () Bool)

(assert (=> d!638388 (=> (not res!911545) (not e!1329125))))

(declare-fun e!1329126 () Bool)

(assert (=> d!638388 (= res!911545 e!1329126)))

(declare-fun c!337375 () Bool)

(declare-fun lt!786728 () tuple2!22208)

(assert (=> d!638388 (= c!337375 (> (size!17993 (_1!12796 lt!786728)) 0))))

(declare-fun e!1329124 () tuple2!22208)

(assert (=> d!638388 (= lt!786728 e!1329124)))

(declare-fun c!337374 () Bool)

(declare-fun lt!786730 () Option!4825)

(assert (=> d!638388 (= c!337374 ((_ is Some!4824) lt!786730))))

(assert (=> d!638388 (= lt!786730 (maxPrefixZipperSequence!837 thiss!12889 rules!1563 input!986))))

(assert (=> d!638388 (= (lexRec!502 thiss!12889 rules!1563 input!986) lt!786728)))

(declare-fun b!2093662 () Bool)

(assert (=> b!2093662 (= e!1329124 (tuple2!22209 (BalanceConc!15113 Empty!7675) input!986))))

(declare-fun b!2093663 () Bool)

(declare-fun lt!786729 () tuple2!22208)

(assert (=> b!2093663 (= e!1329124 (tuple2!22209 (prepend!970 (_1!12796 lt!786729) (_1!12797 (v!27636 lt!786730))) (_2!12796 lt!786729)))))

(assert (=> b!2093663 (= lt!786729 (lexRec!502 thiss!12889 rules!1563 (_2!12797 (v!27636 lt!786730))))))

(declare-fun b!2093664 () Bool)

(assert (=> b!2093664 (= e!1329125 (= (list!9383 (_2!12796 lt!786728)) (_2!12798 (lexList!1028 thiss!12889 rules!1563 (list!9383 input!986)))))))

(declare-fun b!2093665 () Bool)

(assert (=> b!2093665 (= e!1329126 (= (list!9383 (_2!12796 lt!786728)) (list!9383 input!986)))))

(declare-fun b!2093666 () Bool)

(declare-fun e!1329127 () Bool)

(assert (=> b!2093666 (= e!1329127 (not (isEmpty!14206 (_1!12796 lt!786728))))))

(declare-fun b!2093667 () Bool)

(declare-fun res!911547 () Bool)

(assert (=> b!2093667 (=> (not res!911547) (not e!1329125))))

(assert (=> b!2093667 (= res!911547 (= (list!9384 (_1!12796 lt!786728)) (_1!12798 (lexList!1028 thiss!12889 rules!1563 (list!9383 input!986)))))))

(declare-fun b!2093668 () Bool)

(assert (=> b!2093668 (= e!1329126 e!1329127)))

(declare-fun res!911546 () Bool)

(assert (=> b!2093668 (= res!911546 (< (size!17991 (_2!12796 lt!786728)) (size!17991 input!986)))))

(assert (=> b!2093668 (=> (not res!911546) (not e!1329127))))

(assert (= (and d!638388 c!337374) b!2093663))

(assert (= (and d!638388 (not c!337374)) b!2093662))

(assert (= (and d!638388 c!337375) b!2093668))

(assert (= (and d!638388 (not c!337375)) b!2093665))

(assert (= (and b!2093668 res!911546) b!2093666))

(assert (= (and d!638388 res!911545) b!2093667))

(assert (= (and b!2093667 res!911547) b!2093664))

(declare-fun m!2549407 () Bool)

(assert (=> b!2093667 m!2549407))

(assert (=> b!2093667 m!2549313))

(assert (=> b!2093667 m!2549313))

(declare-fun m!2549409 () Bool)

(assert (=> b!2093667 m!2549409))

(declare-fun m!2549411 () Bool)

(assert (=> d!638388 m!2549411))

(declare-fun m!2549413 () Bool)

(assert (=> d!638388 m!2549413))

(declare-fun m!2549415 () Bool)

(assert (=> b!2093663 m!2549415))

(declare-fun m!2549417 () Bool)

(assert (=> b!2093663 m!2549417))

(declare-fun m!2549419 () Bool)

(assert (=> b!2093668 m!2549419))

(assert (=> b!2093668 m!2549353))

(declare-fun m!2549421 () Bool)

(assert (=> b!2093666 m!2549421))

(declare-fun m!2549423 () Bool)

(assert (=> b!2093664 m!2549423))

(assert (=> b!2093664 m!2549313))

(assert (=> b!2093664 m!2549313))

(assert (=> b!2093664 m!2549409))

(assert (=> b!2093665 m!2549423))

(assert (=> b!2093665 m!2549313))

(assert (=> b!2093614 d!638388))

(declare-fun d!638390 () Bool)

(declare-fun list!9386 (Conc!7675) List!23119)

(assert (=> d!638390 (= (list!9384 (++!6274 acc!382 (_1!12796 lt!786712))) (list!9386 (c!337360 (++!6274 acc!382 (_1!12796 lt!786712)))))))

(declare-fun bs!437622 () Bool)

(assert (= bs!437622 d!638390))

(declare-fun m!2549425 () Bool)

(assert (=> bs!437622 m!2549425))

(assert (=> b!2093614 d!638390))

(declare-fun d!638392 () Bool)

(assert (=> d!638392 (= (list!9384 (_1!12796 lt!786711)) (list!9386 (c!337360 (_1!12796 lt!786711))))))

(declare-fun bs!437623 () Bool)

(assert (= bs!437623 d!638392))

(declare-fun m!2549427 () Bool)

(assert (=> bs!437623 m!2549427))

(assert (=> b!2093614 d!638392))

(declare-fun b!2093677 () Bool)

(declare-fun res!911559 () Bool)

(declare-fun e!1329130 () Bool)

(assert (=> b!2093677 (=> (not res!911559) (not e!1329130))))

(declare-fun isBalanced!2410 (Conc!7675) Bool)

(declare-fun ++!6275 (Conc!7675 Conc!7675) Conc!7675)

(assert (=> b!2093677 (= res!911559 (isBalanced!2410 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712)))))))

(declare-fun d!638394 () Bool)

(assert (=> d!638394 e!1329130))

(declare-fun res!911556 () Bool)

(assert (=> d!638394 (=> (not res!911556) (not e!1329130))))

(declare-fun appendAssocInst!583 (Conc!7675 Conc!7675) Bool)

(assert (=> d!638394 (= res!911556 (appendAssocInst!583 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712))))))

(declare-fun lt!786733 () BalanceConc!15112)

(assert (=> d!638394 (= lt!786733 (BalanceConc!15113 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712)))))))

(assert (=> d!638394 (= (++!6274 acc!382 (_1!12796 lt!786712)) lt!786733)))

(declare-fun b!2093680 () Bool)

(declare-fun ++!6276 (List!23119 List!23119) List!23119)

(assert (=> b!2093680 (= e!1329130 (= (list!9384 lt!786733) (++!6276 (list!9384 acc!382) (list!9384 (_1!12796 lt!786712)))))))

(declare-fun b!2093679 () Bool)

(declare-fun res!911557 () Bool)

(assert (=> b!2093679 (=> (not res!911557) (not e!1329130))))

(declare-fun height!1220 (Conc!7675) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2093679 (= res!911557 (>= (height!1220 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712)))) (max!0 (height!1220 (c!337360 acc!382)) (height!1220 (c!337360 (_1!12796 lt!786712))))))))

(declare-fun b!2093678 () Bool)

(declare-fun res!911558 () Bool)

(assert (=> b!2093678 (=> (not res!911558) (not e!1329130))))

(assert (=> b!2093678 (= res!911558 (<= (height!1220 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712)))) (+ (max!0 (height!1220 (c!337360 acc!382)) (height!1220 (c!337360 (_1!12796 lt!786712)))) 1)))))

(assert (= (and d!638394 res!911556) b!2093677))

(assert (= (and b!2093677 res!911559) b!2093678))

(assert (= (and b!2093678 res!911558) b!2093679))

(assert (= (and b!2093679 res!911557) b!2093680))

(declare-fun m!2549429 () Bool)

(assert (=> b!2093679 m!2549429))

(declare-fun m!2549431 () Bool)

(assert (=> b!2093679 m!2549431))

(declare-fun m!2549433 () Bool)

(assert (=> b!2093679 m!2549433))

(assert (=> b!2093679 m!2549433))

(declare-fun m!2549435 () Bool)

(assert (=> b!2093679 m!2549435))

(assert (=> b!2093679 m!2549431))

(assert (=> b!2093679 m!2549429))

(declare-fun m!2549437 () Bool)

(assert (=> b!2093679 m!2549437))

(assert (=> b!2093678 m!2549429))

(assert (=> b!2093678 m!2549431))

(assert (=> b!2093678 m!2549433))

(assert (=> b!2093678 m!2549433))

(assert (=> b!2093678 m!2549435))

(assert (=> b!2093678 m!2549431))

(assert (=> b!2093678 m!2549429))

(assert (=> b!2093678 m!2549437))

(declare-fun m!2549439 () Bool)

(assert (=> d!638394 m!2549439))

(assert (=> d!638394 m!2549433))

(declare-fun m!2549441 () Bool)

(assert (=> b!2093680 m!2549441))

(assert (=> b!2093680 m!2549339))

(declare-fun m!2549443 () Bool)

(assert (=> b!2093680 m!2549443))

(assert (=> b!2093680 m!2549339))

(assert (=> b!2093680 m!2549443))

(declare-fun m!2549445 () Bool)

(assert (=> b!2093680 m!2549445))

(assert (=> b!2093677 m!2549433))

(assert (=> b!2093677 m!2549433))

(declare-fun m!2549447 () Bool)

(assert (=> b!2093677 m!2549447))

(assert (=> b!2093614 d!638394))

(declare-fun d!638396 () Bool)

(assert (=> d!638396 (= (inv!30523 (tag!4595 (h!28437 rules!1563))) (= (mod (str.len (value!128644 (tag!4595 (h!28437 rules!1563)))) 2) 0))))

(assert (=> b!2093613 d!638396))

(declare-fun d!638398 () Bool)

(declare-fun res!911562 () Bool)

(declare-fun e!1329133 () Bool)

(assert (=> d!638398 (=> (not res!911562) (not e!1329133))))

(declare-fun semiInverseModEq!1642 (Int Int) Bool)

(assert (=> d!638398 (= res!911562 (semiInverseModEq!1642 (toChars!5669 (transformation!4105 (h!28437 rules!1563))) (toValue!5810 (transformation!4105 (h!28437 rules!1563)))))))

(assert (=> d!638398 (= (inv!30526 (transformation!4105 (h!28437 rules!1563))) e!1329133)))

(declare-fun b!2093683 () Bool)

(declare-fun equivClasses!1569 (Int Int) Bool)

(assert (=> b!2093683 (= e!1329133 (equivClasses!1569 (toChars!5669 (transformation!4105 (h!28437 rules!1563))) (toValue!5810 (transformation!4105 (h!28437 rules!1563)))))))

(assert (= (and d!638398 res!911562) b!2093683))

(declare-fun m!2549449 () Bool)

(assert (=> d!638398 m!2549449))

(declare-fun m!2549451 () Bool)

(assert (=> b!2093683 m!2549451))

(assert (=> b!2093613 d!638398))

(declare-fun d!638400 () Bool)

(assert (=> d!638400 (= (isEmpty!14205 (list!9383 (_2!12796 lt!786715))) ((_ is Nil!23033) (list!9383 (_2!12796 lt!786715))))))

(assert (=> b!2093601 d!638400))

(declare-fun d!638402 () Bool)

(assert (=> d!638402 (= (list!9383 (_2!12796 lt!786715)) (list!9385 (c!337359 (_2!12796 lt!786715))))))

(declare-fun bs!437624 () Bool)

(assert (= bs!437624 d!638402))

(declare-fun m!2549453 () Bool)

(assert (=> bs!437624 m!2549453))

(assert (=> b!2093601 d!638402))

(declare-fun d!638404 () Bool)

(declare-fun c!337381 () Bool)

(assert (=> d!638404 (= c!337381 ((_ is Node!7674) (c!337359 input!986)))))

(declare-fun e!1329138 () Bool)

(assert (=> d!638404 (= (inv!30525 (c!337359 input!986)) e!1329138)))

(declare-fun b!2093690 () Bool)

(declare-fun inv!30533 (Conc!7674) Bool)

(assert (=> b!2093690 (= e!1329138 (inv!30533 (c!337359 input!986)))))

(declare-fun b!2093691 () Bool)

(declare-fun e!1329139 () Bool)

(assert (=> b!2093691 (= e!1329138 e!1329139)))

(declare-fun res!911565 () Bool)

(assert (=> b!2093691 (= res!911565 (not ((_ is Leaf!11208) (c!337359 input!986))))))

(assert (=> b!2093691 (=> res!911565 e!1329139)))

(declare-fun b!2093692 () Bool)

(declare-fun inv!30534 (Conc!7674) Bool)

(assert (=> b!2093692 (= e!1329139 (inv!30534 (c!337359 input!986)))))

(assert (= (and d!638404 c!337381) b!2093690))

(assert (= (and d!638404 (not c!337381)) b!2093691))

(assert (= (and b!2093691 (not res!911565)) b!2093692))

(declare-fun m!2549455 () Bool)

(assert (=> b!2093690 m!2549455))

(declare-fun m!2549457 () Bool)

(assert (=> b!2093692 m!2549457))

(assert (=> b!2093611 d!638404))

(declare-fun d!638406 () Bool)

(declare-fun validCacheMapUp!212 (MutableMap!2093) Bool)

(assert (=> d!638406 (= (valid!1726 cacheUp!562) (validCacheMapUp!212 (cache!2474 cacheUp!562)))))

(declare-fun bs!437625 () Bool)

(assert (= bs!437625 d!638406))

(declare-fun m!2549459 () Bool)

(assert (=> bs!437625 m!2549459))

(assert (=> b!2093619 d!638406))

(declare-fun d!638408 () Bool)

(declare-fun lt!786736 () Int)

(assert (=> d!638408 (= lt!786736 (size!17992 (list!9383 input!986)))))

(declare-fun size!17994 (Conc!7674) Int)

(assert (=> d!638408 (= lt!786736 (size!17994 (c!337359 input!986)))))

(assert (=> d!638408 (= (size!17991 input!986) lt!786736)))

(declare-fun bs!437626 () Bool)

(assert (= bs!437626 d!638408))

(assert (=> bs!437626 m!2549313))

(assert (=> bs!437626 m!2549313))

(assert (=> bs!437626 m!2549373))

(declare-fun m!2549461 () Bool)

(assert (=> bs!437626 m!2549461))

(assert (=> b!2093600 d!638408))

(declare-fun d!638410 () Bool)

(assert (=> d!638410 (= (isEmpty!14204 rules!1563) ((_ is Nil!23036) rules!1563))))

(assert (=> b!2093599 d!638410))

(declare-fun d!638412 () Bool)

(declare-fun res!911568 () Bool)

(declare-fun e!1329142 () Bool)

(assert (=> d!638412 (=> (not res!911568) (not e!1329142))))

(declare-fun rulesValid!1529 (LexerInterface!3708 List!23120) Bool)

(assert (=> d!638412 (= res!911568 (rulesValid!1529 thiss!12889 rules!1563))))

(assert (=> d!638412 (= (rulesInvariant!3281 thiss!12889 rules!1563) e!1329142)))

(declare-fun b!2093695 () Bool)

(declare-datatypes ((List!23121 0))(
  ( (Nil!23037) (Cons!23037 (h!28438 String!26397) (t!195062 List!23121)) )
))
(declare-fun noDuplicateTag!1527 (LexerInterface!3708 List!23120 List!23121) Bool)

(assert (=> b!2093695 (= e!1329142 (noDuplicateTag!1527 thiss!12889 rules!1563 Nil!23037))))

(assert (= (and d!638412 res!911568) b!2093695))

(declare-fun m!2549463 () Bool)

(assert (=> d!638412 m!2549463))

(declare-fun m!2549465 () Bool)

(assert (=> b!2093695 m!2549465))

(assert (=> b!2093610 d!638412))

(declare-fun d!638414 () Bool)

(declare-fun c!337382 () Bool)

(assert (=> d!638414 (= c!337382 ((_ is Node!7674) (c!337359 treated!60)))))

(declare-fun e!1329143 () Bool)

(assert (=> d!638414 (= (inv!30525 (c!337359 treated!60)) e!1329143)))

(declare-fun b!2093696 () Bool)

(assert (=> b!2093696 (= e!1329143 (inv!30533 (c!337359 treated!60)))))

(declare-fun b!2093697 () Bool)

(declare-fun e!1329144 () Bool)

(assert (=> b!2093697 (= e!1329143 e!1329144)))

(declare-fun res!911569 () Bool)

(assert (=> b!2093697 (= res!911569 (not ((_ is Leaf!11208) (c!337359 treated!60))))))

(assert (=> b!2093697 (=> res!911569 e!1329144)))

(declare-fun b!2093698 () Bool)

(assert (=> b!2093698 (= e!1329144 (inv!30534 (c!337359 treated!60)))))

(assert (= (and d!638414 c!337382) b!2093696))

(assert (= (and d!638414 (not c!337382)) b!2093697))

(assert (= (and b!2093697 (not res!911569)) b!2093698))

(declare-fun m!2549467 () Bool)

(assert (=> b!2093696 m!2549467))

(declare-fun m!2549469 () Bool)

(assert (=> b!2093698 m!2549469))

(assert (=> b!2093609 d!638414))

(declare-fun d!638416 () Bool)

(assert (=> d!638416 (= (list!9384 (_1!12796 lt!786715)) (list!9386 (c!337360 (_1!12796 lt!786715))))))

(declare-fun bs!437627 () Bool)

(assert (= bs!437627 d!638416))

(declare-fun m!2549471 () Bool)

(assert (=> bs!437627 m!2549471))

(assert (=> b!2093598 d!638416))

(declare-fun d!638418 () Bool)

(assert (=> d!638418 (= (list!9384 acc!382) (list!9386 (c!337360 acc!382)))))

(declare-fun bs!437628 () Bool)

(assert (= bs!437628 d!638418))

(declare-fun m!2549473 () Bool)

(assert (=> bs!437628 m!2549473))

(assert (=> b!2093598 d!638418))

(declare-fun d!638420 () Bool)

(declare-fun e!1329146 () Bool)

(assert (=> d!638420 e!1329146))

(declare-fun res!911570 () Bool)

(assert (=> d!638420 (=> (not res!911570) (not e!1329146))))

(declare-fun e!1329147 () Bool)

(assert (=> d!638420 (= res!911570 e!1329147)))

(declare-fun c!337384 () Bool)

(declare-fun lt!786737 () tuple2!22208)

(assert (=> d!638420 (= c!337384 (> (size!17993 (_1!12796 lt!786737)) 0))))

(declare-fun e!1329145 () tuple2!22208)

(assert (=> d!638420 (= lt!786737 e!1329145)))

(declare-fun c!337383 () Bool)

(declare-fun lt!786739 () Option!4825)

(assert (=> d!638420 (= c!337383 ((_ is Some!4824) lt!786739))))

(assert (=> d!638420 (= lt!786739 (maxPrefixZipperSequence!837 thiss!12889 rules!1563 treated!60))))

(assert (=> d!638420 (= (lexRec!502 thiss!12889 rules!1563 treated!60) lt!786737)))

(declare-fun b!2093699 () Bool)

(assert (=> b!2093699 (= e!1329145 (tuple2!22209 (BalanceConc!15113 Empty!7675) treated!60))))

(declare-fun b!2093700 () Bool)

(declare-fun lt!786738 () tuple2!22208)

(assert (=> b!2093700 (= e!1329145 (tuple2!22209 (prepend!970 (_1!12796 lt!786738) (_1!12797 (v!27636 lt!786739))) (_2!12796 lt!786738)))))

(assert (=> b!2093700 (= lt!786738 (lexRec!502 thiss!12889 rules!1563 (_2!12797 (v!27636 lt!786739))))))

(declare-fun b!2093701 () Bool)

(assert (=> b!2093701 (= e!1329146 (= (list!9383 (_2!12796 lt!786737)) (_2!12798 (lexList!1028 thiss!12889 rules!1563 (list!9383 treated!60)))))))

(declare-fun b!2093702 () Bool)

(assert (=> b!2093702 (= e!1329147 (= (list!9383 (_2!12796 lt!786737)) (list!9383 treated!60)))))

(declare-fun b!2093703 () Bool)

(declare-fun e!1329148 () Bool)

(assert (=> b!2093703 (= e!1329148 (not (isEmpty!14206 (_1!12796 lt!786737))))))

(declare-fun b!2093704 () Bool)

(declare-fun res!911572 () Bool)

(assert (=> b!2093704 (=> (not res!911572) (not e!1329146))))

(assert (=> b!2093704 (= res!911572 (= (list!9384 (_1!12796 lt!786737)) (_1!12798 (lexList!1028 thiss!12889 rules!1563 (list!9383 treated!60)))))))

(declare-fun b!2093705 () Bool)

(assert (=> b!2093705 (= e!1329147 e!1329148)))

(declare-fun res!911571 () Bool)

(assert (=> b!2093705 (= res!911571 (< (size!17991 (_2!12796 lt!786737)) (size!17991 treated!60)))))

(assert (=> b!2093705 (=> (not res!911571) (not e!1329148))))

(assert (= (and d!638420 c!337383) b!2093700))

(assert (= (and d!638420 (not c!337383)) b!2093699))

(assert (= (and d!638420 c!337384) b!2093705))

(assert (= (and d!638420 (not c!337384)) b!2093702))

(assert (= (and b!2093705 res!911571) b!2093703))

(assert (= (and d!638420 res!911570) b!2093704))

(assert (= (and b!2093704 res!911572) b!2093701))

(declare-fun m!2549475 () Bool)

(assert (=> b!2093704 m!2549475))

(assert (=> b!2093704 m!2549311))

(assert (=> b!2093704 m!2549311))

(declare-fun m!2549477 () Bool)

(assert (=> b!2093704 m!2549477))

(declare-fun m!2549479 () Bool)

(assert (=> d!638420 m!2549479))

(declare-fun m!2549481 () Bool)

(assert (=> d!638420 m!2549481))

(declare-fun m!2549483 () Bool)

(assert (=> b!2093700 m!2549483))

(declare-fun m!2549485 () Bool)

(assert (=> b!2093700 m!2549485))

(declare-fun m!2549487 () Bool)

(assert (=> b!2093705 m!2549487))

(declare-fun m!2549489 () Bool)

(assert (=> b!2093705 m!2549489))

(declare-fun m!2549491 () Bool)

(assert (=> b!2093703 m!2549491))

(declare-fun m!2549493 () Bool)

(assert (=> b!2093701 m!2549493))

(assert (=> b!2093701 m!2549311))

(assert (=> b!2093701 m!2549311))

(assert (=> b!2093701 m!2549477))

(assert (=> b!2093702 m!2549493))

(assert (=> b!2093702 m!2549311))

(assert (=> b!2093598 d!638420))

(declare-fun d!638422 () Bool)

(assert (=> d!638422 (= (list!9383 (_2!12796 lt!786711)) (list!9385 (c!337359 (_2!12796 lt!786711))))))

(declare-fun bs!437629 () Bool)

(assert (= bs!437629 d!638422))

(declare-fun m!2549495 () Bool)

(assert (=> bs!437629 m!2549495))

(assert (=> b!2093597 d!638422))

(declare-fun d!638424 () Bool)

(assert (=> d!638424 (= (list!9383 (_2!12796 lt!786712)) (list!9385 (c!337359 (_2!12796 lt!786712))))))

(declare-fun bs!437630 () Bool)

(assert (= bs!437630 d!638424))

(declare-fun m!2549497 () Bool)

(assert (=> bs!437630 m!2549497))

(assert (=> b!2093597 d!638424))

(declare-fun d!638426 () Bool)

(declare-fun isBalanced!2411 (Conc!7674) Bool)

(assert (=> d!638426 (= (inv!30529 input!986) (isBalanced!2411 (c!337359 input!986)))))

(declare-fun bs!437631 () Bool)

(assert (= bs!437631 d!638426))

(declare-fun m!2549499 () Bool)

(assert (=> bs!437631 m!2549499))

(assert (=> start!204874 d!638426))

(declare-fun d!638428 () Bool)

(declare-fun res!911575 () Bool)

(declare-fun e!1329151 () Bool)

(assert (=> d!638428 (=> (not res!911575) (not e!1329151))))

(assert (=> d!638428 (= res!911575 ((_ is HashMap!2093) (cache!2474 cacheUp!562)))))

(assert (=> d!638428 (= (inv!30528 cacheUp!562) e!1329151)))

(declare-fun b!2093708 () Bool)

(assert (=> b!2093708 (= e!1329151 (validCacheMapUp!212 (cache!2474 cacheUp!562)))))

(assert (= (and d!638428 res!911575) b!2093708))

(assert (=> b!2093708 m!2549459))

(assert (=> start!204874 d!638428))

(declare-fun d!638430 () Bool)

(assert (=> d!638430 (= (inv!30530 acc!382) (isBalanced!2410 (c!337360 acc!382)))))

(declare-fun bs!437632 () Bool)

(assert (= bs!437632 d!638430))

(declare-fun m!2549501 () Bool)

(assert (=> bs!437632 m!2549501))

(assert (=> start!204874 d!638430))

(declare-fun d!638432 () Bool)

(declare-fun res!911578 () Bool)

(declare-fun e!1329154 () Bool)

(assert (=> d!638432 (=> (not res!911578) (not e!1329154))))

(assert (=> d!638432 (= res!911578 ((_ is HashMap!2094) (cache!2475 cacheDown!575)))))

(assert (=> d!638432 (= (inv!30527 cacheDown!575) e!1329154)))

(declare-fun b!2093711 () Bool)

(assert (=> b!2093711 (= e!1329154 (validCacheMapDown!210 (cache!2475 cacheDown!575)))))

(assert (= (and d!638432 res!911578) b!2093711))

(assert (=> b!2093711 m!2549381))

(assert (=> start!204874 d!638432))

(declare-fun d!638434 () Bool)

(assert (=> d!638434 (= (inv!30529 totalInput!418) (isBalanced!2411 (c!337359 totalInput!418)))))

(declare-fun bs!437633 () Bool)

(assert (= bs!437633 d!638434))

(declare-fun m!2549503 () Bool)

(assert (=> bs!437633 m!2549503))

(assert (=> start!204874 d!638434))

(declare-fun d!638436 () Bool)

(assert (=> d!638436 (= (inv!30529 treated!60) (isBalanced!2411 (c!337359 treated!60)))))

(declare-fun bs!437634 () Bool)

(assert (= bs!437634 d!638436))

(declare-fun m!2549505 () Bool)

(assert (=> bs!437634 m!2549505))

(assert (=> start!204874 d!638436))

(declare-fun d!638438 () Bool)

(declare-fun c!337385 () Bool)

(assert (=> d!638438 (= c!337385 ((_ is Node!7674) (c!337359 totalInput!418)))))

(declare-fun e!1329155 () Bool)

(assert (=> d!638438 (= (inv!30525 (c!337359 totalInput!418)) e!1329155)))

(declare-fun b!2093712 () Bool)

(assert (=> b!2093712 (= e!1329155 (inv!30533 (c!337359 totalInput!418)))))

(declare-fun b!2093713 () Bool)

(declare-fun e!1329156 () Bool)

(assert (=> b!2093713 (= e!1329155 e!1329156)))

(declare-fun res!911579 () Bool)

(assert (=> b!2093713 (= res!911579 (not ((_ is Leaf!11208) (c!337359 totalInput!418))))))

(assert (=> b!2093713 (=> res!911579 e!1329156)))

(declare-fun b!2093714 () Bool)

(assert (=> b!2093714 (= e!1329156 (inv!30534 (c!337359 totalInput!418)))))

(assert (= (and d!638438 c!337385) b!2093712))

(assert (= (and d!638438 (not c!337385)) b!2093713))

(assert (= (and b!2093713 (not res!911579)) b!2093714))

(declare-fun m!2549507 () Bool)

(assert (=> b!2093712 m!2549507))

(declare-fun m!2549509 () Bool)

(assert (=> b!2093714 m!2549509))

(assert (=> b!2093608 d!638438))

(declare-fun d!638440 () Bool)

(assert (=> d!638440 (= (array_inv!2393 (_keys!2477 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))) (bvsge (size!17988 (_keys!2477 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2093596 d!638440))

(declare-fun d!638442 () Bool)

(assert (=> d!638442 (= (array_inv!2394 (_values!2460 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))) (bvsge (size!17989 (_values!2460 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2093596 d!638442))

(declare-fun e!1329164 () Bool)

(assert (=> b!2093605 (= tp!632214 e!1329164)))

(declare-fun setIsEmpty!13350 () Bool)

(declare-fun setRes!13350 () Bool)

(assert (=> setIsEmpty!13350 setRes!13350))

(declare-fun e!1329165 () Bool)

(declare-fun b!2093723 () Bool)

(declare-fun tp!632236 () Bool)

(declare-fun tp_is_empty!9347 () Bool)

(declare-fun inv!30535 (Context!2206) Bool)

(assert (=> b!2093723 (= e!1329164 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 (zeroValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))))) e!1329165 tp_is_empty!9347 setRes!13350 tp!632236))))

(declare-fun condSetEmpty!13350 () Bool)

(assert (=> b!2093723 (= condSetEmpty!13350 (= (_2!12793 (h!28432 (zeroValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun b!2093724 () Bool)

(declare-fun e!1329163 () Bool)

(declare-fun tp!632235 () Bool)

(assert (=> b!2093724 (= e!1329163 tp!632235)))

(declare-fun b!2093725 () Bool)

(declare-fun tp!632237 () Bool)

(assert (=> b!2093725 (= e!1329165 tp!632237)))

(declare-fun setNonEmpty!13350 () Bool)

(declare-fun tp!632234 () Bool)

(declare-fun setElem!13350 () Context!2206)

(assert (=> setNonEmpty!13350 (= setRes!13350 (and tp!632234 (inv!30535 setElem!13350) e!1329163))))

(declare-fun setRest!13350 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13350 (= (_2!12793 (h!28432 (zeroValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13350 true) setRest!13350))))

(assert (= b!2093723 b!2093725))

(assert (= (and b!2093723 condSetEmpty!13350) setIsEmpty!13350))

(assert (= (and b!2093723 (not condSetEmpty!13350)) setNonEmpty!13350))

(assert (= setNonEmpty!13350 b!2093724))

(assert (= (and b!2093605 ((_ is Cons!23031) (zeroValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))) b!2093723))

(declare-fun m!2549511 () Bool)

(assert (=> b!2093723 m!2549511))

(declare-fun m!2549513 () Bool)

(assert (=> setNonEmpty!13350 m!2549513))

(declare-fun e!1329167 () Bool)

(assert (=> b!2093605 (= tp!632220 e!1329167)))

(declare-fun setIsEmpty!13351 () Bool)

(declare-fun setRes!13351 () Bool)

(assert (=> setIsEmpty!13351 setRes!13351))

(declare-fun e!1329168 () Bool)

(declare-fun b!2093726 () Bool)

(declare-fun tp!632240 () Bool)

(assert (=> b!2093726 (= e!1329167 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 (minValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))))) e!1329168 tp_is_empty!9347 setRes!13351 tp!632240))))

(declare-fun condSetEmpty!13351 () Bool)

(assert (=> b!2093726 (= condSetEmpty!13351 (= (_2!12793 (h!28432 (minValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun b!2093727 () Bool)

(declare-fun e!1329166 () Bool)

(declare-fun tp!632239 () Bool)

(assert (=> b!2093727 (= e!1329166 tp!632239)))

(declare-fun b!2093728 () Bool)

(declare-fun tp!632241 () Bool)

(assert (=> b!2093728 (= e!1329168 tp!632241)))

(declare-fun tp!632238 () Bool)

(declare-fun setNonEmpty!13351 () Bool)

(declare-fun setElem!13351 () Context!2206)

(assert (=> setNonEmpty!13351 (= setRes!13351 (and tp!632238 (inv!30535 setElem!13351) e!1329166))))

(declare-fun setRest!13351 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13351 (= (_2!12793 (h!28432 (minValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13351 true) setRest!13351))))

(assert (= b!2093726 b!2093728))

(assert (= (and b!2093726 condSetEmpty!13351) setIsEmpty!13351))

(assert (= (and b!2093726 (not condSetEmpty!13351)) setNonEmpty!13351))

(assert (= setNonEmpty!13351 b!2093727))

(assert (= (and b!2093605 ((_ is Cons!23031) (minValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))) b!2093726))

(declare-fun m!2549515 () Bool)

(assert (=> b!2093726 m!2549515))

(declare-fun m!2549517 () Bool)

(assert (=> setNonEmpty!13351 m!2549517))

(declare-fun e!1329174 () Bool)

(declare-fun tp!632249 () Bool)

(declare-fun tp!632250 () Bool)

(declare-fun b!2093737 () Bool)

(assert (=> b!2093737 (= e!1329174 (and (inv!30524 (left!18060 (c!337360 acc!382))) tp!632249 (inv!30524 (right!18390 (c!337360 acc!382))) tp!632250))))

(declare-fun b!2093739 () Bool)

(declare-fun e!1329173 () Bool)

(declare-fun tp!632248 () Bool)

(assert (=> b!2093739 (= e!1329173 tp!632248)))

(declare-fun b!2093738 () Bool)

(declare-fun inv!30536 (IArray!15355) Bool)

(assert (=> b!2093738 (= e!1329174 (and (inv!30536 (xs!10609 (c!337360 acc!382))) e!1329173))))

(assert (=> b!2093604 (= tp!632210 (and (inv!30524 (c!337360 acc!382)) e!1329174))))

(assert (= (and b!2093604 ((_ is Node!7675) (c!337360 acc!382))) b!2093737))

(assert (= b!2093738 b!2093739))

(assert (= (and b!2093604 ((_ is Leaf!11209) (c!337360 acc!382))) b!2093738))

(declare-fun m!2549519 () Bool)

(assert (=> b!2093737 m!2549519))

(declare-fun m!2549521 () Bool)

(assert (=> b!2093737 m!2549521))

(declare-fun m!2549523 () Bool)

(assert (=> b!2093738 m!2549523))

(assert (=> b!2093604 m!2549343))

(declare-fun b!2093750 () Bool)

(declare-fun e!1329177 () Bool)

(assert (=> b!2093750 (= e!1329177 tp_is_empty!9347)))

(declare-fun b!2093753 () Bool)

(declare-fun tp!632264 () Bool)

(declare-fun tp!632261 () Bool)

(assert (=> b!2093753 (= e!1329177 (and tp!632264 tp!632261))))

(declare-fun b!2093752 () Bool)

(declare-fun tp!632263 () Bool)

(assert (=> b!2093752 (= e!1329177 tp!632263)))

(assert (=> b!2093613 (= tp!632219 e!1329177)))

(declare-fun b!2093751 () Bool)

(declare-fun tp!632265 () Bool)

(declare-fun tp!632262 () Bool)

(assert (=> b!2093751 (= e!1329177 (and tp!632265 tp!632262))))

(assert (= (and b!2093613 ((_ is ElementMatch!5533) (regex!4105 (h!28437 rules!1563)))) b!2093750))

(assert (= (and b!2093613 ((_ is Concat!9774) (regex!4105 (h!28437 rules!1563)))) b!2093751))

(assert (= (and b!2093613 ((_ is Star!5533) (regex!4105 (h!28437 rules!1563)))) b!2093752))

(assert (= (and b!2093613 ((_ is Union!5533) (regex!4105 (h!28437 rules!1563)))) b!2093753))

(declare-fun b!2093768 () Bool)

(declare-fun e!1329194 () Bool)

(declare-fun tp!632290 () Bool)

(assert (=> b!2093768 (= e!1329194 tp!632290)))

(declare-fun e!1329190 () Bool)

(declare-fun setRes!13357 () Bool)

(declare-fun setNonEmpty!13356 () Bool)

(declare-fun setElem!13356 () Context!2206)

(declare-fun tp!632294 () Bool)

(assert (=> setNonEmpty!13356 (= setRes!13357 (and tp!632294 (inv!30535 setElem!13356) e!1329190))))

(declare-fun mapValue!10504 () List!23116)

(declare-fun setRest!13356 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13356 (= (_2!12795 (h!28433 mapValue!10504)) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13356 true) setRest!13356))))

(declare-fun e!1329193 () Bool)

(declare-fun setRes!13356 () Bool)

(declare-fun setNonEmpty!13357 () Bool)

(declare-fun tp!632293 () Bool)

(declare-fun setElem!13357 () Context!2206)

(assert (=> setNonEmpty!13357 (= setRes!13356 (and tp!632293 (inv!30535 setElem!13357) e!1329193))))

(declare-fun mapDefault!10504 () List!23116)

(declare-fun setRest!13357 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13357 (= (_2!12795 (h!28433 mapDefault!10504)) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13357 true) setRest!13357))))

(declare-fun condMapEmpty!10504 () Bool)

(assert (=> mapNonEmpty!10501 (= condMapEmpty!10504 (= mapRest!10501 ((as const (Array (_ BitVec 32) List!23116)) mapDefault!10504)))))

(declare-fun e!1329195 () Bool)

(declare-fun mapRes!10504 () Bool)

(assert (=> mapNonEmpty!10501 (= tp!632225 (and e!1329195 mapRes!10504))))

(declare-fun b!2093769 () Bool)

(declare-fun e!1329192 () Bool)

(declare-fun tp!632298 () Bool)

(assert (=> b!2093769 (= e!1329192 tp!632298)))

(declare-fun b!2093770 () Bool)

(declare-fun tp!632295 () Bool)

(assert (=> b!2093770 (= e!1329193 tp!632295)))

(declare-fun mapIsEmpty!10504 () Bool)

(assert (=> mapIsEmpty!10504 mapRes!10504))

(declare-fun setIsEmpty!13356 () Bool)

(assert (=> setIsEmpty!13356 setRes!13356))

(declare-fun b!2093771 () Bool)

(declare-fun tp!632288 () Bool)

(declare-fun tp!632291 () Bool)

(assert (=> b!2093771 (= e!1329195 (and tp!632291 (inv!30535 (_2!12794 (_1!12795 (h!28433 mapDefault!10504)))) e!1329192 tp_is_empty!9347 setRes!13356 tp!632288))))

(declare-fun condSetEmpty!13356 () Bool)

(assert (=> b!2093771 (= condSetEmpty!13356 (= (_2!12795 (h!28433 mapDefault!10504)) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun e!1329191 () Bool)

(declare-fun tp!632296 () Bool)

(declare-fun tp!632289 () Bool)

(declare-fun b!2093772 () Bool)

(assert (=> b!2093772 (= e!1329191 (and tp!632296 (inv!30535 (_2!12794 (_1!12795 (h!28433 mapValue!10504)))) e!1329194 tp_is_empty!9347 setRes!13357 tp!632289))))

(declare-fun condSetEmpty!13357 () Bool)

(assert (=> b!2093772 (= condSetEmpty!13357 (= (_2!12795 (h!28433 mapValue!10504)) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun mapNonEmpty!10504 () Bool)

(declare-fun tp!632292 () Bool)

(assert (=> mapNonEmpty!10504 (= mapRes!10504 (and tp!632292 e!1329191))))

(declare-fun mapRest!10504 () (Array (_ BitVec 32) List!23116))

(declare-fun mapKey!10504 () (_ BitVec 32))

(assert (=> mapNonEmpty!10504 (= mapRest!10501 (store mapRest!10504 mapKey!10504 mapValue!10504))))

(declare-fun setIsEmpty!13357 () Bool)

(assert (=> setIsEmpty!13357 setRes!13357))

(declare-fun b!2093773 () Bool)

(declare-fun tp!632297 () Bool)

(assert (=> b!2093773 (= e!1329190 tp!632297)))

(assert (= (and mapNonEmpty!10501 condMapEmpty!10504) mapIsEmpty!10504))

(assert (= (and mapNonEmpty!10501 (not condMapEmpty!10504)) mapNonEmpty!10504))

(assert (= b!2093772 b!2093768))

(assert (= (and b!2093772 condSetEmpty!13357) setIsEmpty!13357))

(assert (= (and b!2093772 (not condSetEmpty!13357)) setNonEmpty!13356))

(assert (= setNonEmpty!13356 b!2093773))

(assert (= (and mapNonEmpty!10504 ((_ is Cons!23032) mapValue!10504)) b!2093772))

(assert (= b!2093771 b!2093769))

(assert (= (and b!2093771 condSetEmpty!13356) setIsEmpty!13356))

(assert (= (and b!2093771 (not condSetEmpty!13356)) setNonEmpty!13357))

(assert (= setNonEmpty!13357 b!2093770))

(assert (= (and mapNonEmpty!10501 ((_ is Cons!23032) mapDefault!10504)) b!2093771))

(declare-fun m!2549525 () Bool)

(assert (=> setNonEmpty!13356 m!2549525))

(declare-fun m!2549527 () Bool)

(assert (=> b!2093771 m!2549527))

(declare-fun m!2549529 () Bool)

(assert (=> setNonEmpty!13357 m!2549529))

(declare-fun m!2549531 () Bool)

(assert (=> b!2093772 m!2549531))

(declare-fun m!2549533 () Bool)

(assert (=> mapNonEmpty!10504 m!2549533))

(declare-fun setRes!13360 () Bool)

(declare-fun tp!632313 () Bool)

(declare-fun setElem!13360 () Context!2206)

(declare-fun e!1329204 () Bool)

(declare-fun setNonEmpty!13360 () Bool)

(assert (=> setNonEmpty!13360 (= setRes!13360 (and tp!632313 (inv!30535 setElem!13360) e!1329204))))

(declare-fun setRest!13360 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13360 (= (_2!12795 (h!28433 mapValue!10500)) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13360 true) setRest!13360))))

(declare-fun b!2093782 () Bool)

(declare-fun e!1329202 () Bool)

(declare-fun tp!632310 () Bool)

(assert (=> b!2093782 (= e!1329202 tp!632310)))

(declare-fun b!2093783 () Bool)

(declare-fun tp!632311 () Bool)

(assert (=> b!2093783 (= e!1329204 tp!632311)))

(declare-fun tp!632309 () Bool)

(declare-fun e!1329203 () Bool)

(declare-fun b!2093784 () Bool)

(declare-fun tp!632312 () Bool)

(assert (=> b!2093784 (= e!1329203 (and tp!632309 (inv!30535 (_2!12794 (_1!12795 (h!28433 mapValue!10500)))) e!1329202 tp_is_empty!9347 setRes!13360 tp!632312))))

(declare-fun condSetEmpty!13360 () Bool)

(assert (=> b!2093784 (= condSetEmpty!13360 (= (_2!12795 (h!28433 mapValue!10500)) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setIsEmpty!13360 () Bool)

(assert (=> setIsEmpty!13360 setRes!13360))

(assert (=> mapNonEmpty!10501 (= tp!632212 e!1329203)))

(assert (= b!2093784 b!2093782))

(assert (= (and b!2093784 condSetEmpty!13360) setIsEmpty!13360))

(assert (= (and b!2093784 (not condSetEmpty!13360)) setNonEmpty!13360))

(assert (= setNonEmpty!13360 b!2093783))

(assert (= (and mapNonEmpty!10501 ((_ is Cons!23032) mapValue!10500)) b!2093784))

(declare-fun m!2549535 () Bool)

(assert (=> setNonEmpty!13360 m!2549535))

(declare-fun m!2549537 () Bool)

(assert (=> b!2093784 m!2549537))

(declare-fun e!1329207 () Bool)

(declare-fun setNonEmpty!13361 () Bool)

(declare-fun setRes!13361 () Bool)

(declare-fun setElem!13361 () Context!2206)

(declare-fun tp!632318 () Bool)

(assert (=> setNonEmpty!13361 (= setRes!13361 (and tp!632318 (inv!30535 setElem!13361) e!1329207))))

(declare-fun setRest!13361 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13361 (= (_2!12795 (h!28433 mapDefault!10500)) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13361 true) setRest!13361))))

(declare-fun b!2093785 () Bool)

(declare-fun e!1329205 () Bool)

(declare-fun tp!632315 () Bool)

(assert (=> b!2093785 (= e!1329205 tp!632315)))

(declare-fun b!2093786 () Bool)

(declare-fun tp!632316 () Bool)

(assert (=> b!2093786 (= e!1329207 tp!632316)))

(declare-fun tp!632317 () Bool)

(declare-fun e!1329206 () Bool)

(declare-fun tp!632314 () Bool)

(declare-fun b!2093787 () Bool)

(assert (=> b!2093787 (= e!1329206 (and tp!632314 (inv!30535 (_2!12794 (_1!12795 (h!28433 mapDefault!10500)))) e!1329205 tp_is_empty!9347 setRes!13361 tp!632317))))

(declare-fun condSetEmpty!13361 () Bool)

(assert (=> b!2093787 (= condSetEmpty!13361 (= (_2!12795 (h!28433 mapDefault!10500)) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setIsEmpty!13361 () Bool)

(assert (=> setIsEmpty!13361 setRes!13361))

(assert (=> b!2093612 (= tp!632223 e!1329206)))

(assert (= b!2093787 b!2093785))

(assert (= (and b!2093787 condSetEmpty!13361) setIsEmpty!13361))

(assert (= (and b!2093787 (not condSetEmpty!13361)) setNonEmpty!13361))

(assert (= setNonEmpty!13361 b!2093786))

(assert (= (and b!2093612 ((_ is Cons!23032) mapDefault!10500)) b!2093787))

(declare-fun m!2549539 () Bool)

(assert (=> setNonEmpty!13361 m!2549539))

(declare-fun m!2549541 () Bool)

(assert (=> b!2093787 m!2549541))

(declare-fun b!2093796 () Bool)

(declare-fun tp!632325 () Bool)

(declare-fun e!1329212 () Bool)

(declare-fun tp!632327 () Bool)

(assert (=> b!2093796 (= e!1329212 (and (inv!30525 (left!18059 (c!337359 input!986))) tp!632325 (inv!30525 (right!18389 (c!337359 input!986))) tp!632327))))

(declare-fun b!2093798 () Bool)

(declare-fun e!1329213 () Bool)

(declare-fun tp!632326 () Bool)

(assert (=> b!2093798 (= e!1329213 tp!632326)))

(declare-fun b!2093797 () Bool)

(declare-fun inv!30537 (IArray!15353) Bool)

(assert (=> b!2093797 (= e!1329212 (and (inv!30537 (xs!10608 (c!337359 input!986))) e!1329213))))

(assert (=> b!2093611 (= tp!632221 (and (inv!30525 (c!337359 input!986)) e!1329212))))

(assert (= (and b!2093611 ((_ is Node!7674) (c!337359 input!986))) b!2093796))

(assert (= b!2093797 b!2093798))

(assert (= (and b!2093611 ((_ is Leaf!11208) (c!337359 input!986))) b!2093797))

(declare-fun m!2549543 () Bool)

(assert (=> b!2093796 m!2549543))

(declare-fun m!2549545 () Bool)

(assert (=> b!2093796 m!2549545))

(declare-fun m!2549547 () Bool)

(assert (=> b!2093797 m!2549547))

(assert (=> b!2093611 m!2549351))

(declare-fun e!1329215 () Bool)

(assert (=> b!2093590 (= tp!632213 e!1329215)))

(declare-fun setIsEmpty!13362 () Bool)

(declare-fun setRes!13362 () Bool)

(assert (=> setIsEmpty!13362 setRes!13362))

(declare-fun e!1329216 () Bool)

(declare-fun b!2093799 () Bool)

(declare-fun tp!632330 () Bool)

(assert (=> b!2093799 (= e!1329215 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 mapDefault!10501)))) e!1329216 tp_is_empty!9347 setRes!13362 tp!632330))))

(declare-fun condSetEmpty!13362 () Bool)

(assert (=> b!2093799 (= condSetEmpty!13362 (= (_2!12793 (h!28432 mapDefault!10501)) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun b!2093800 () Bool)

(declare-fun e!1329214 () Bool)

(declare-fun tp!632329 () Bool)

(assert (=> b!2093800 (= e!1329214 tp!632329)))

(declare-fun b!2093801 () Bool)

(declare-fun tp!632331 () Bool)

(assert (=> b!2093801 (= e!1329216 tp!632331)))

(declare-fun setNonEmpty!13362 () Bool)

(declare-fun tp!632328 () Bool)

(declare-fun setElem!13362 () Context!2206)

(assert (=> setNonEmpty!13362 (= setRes!13362 (and tp!632328 (inv!30535 setElem!13362) e!1329214))))

(declare-fun setRest!13362 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13362 (= (_2!12793 (h!28432 mapDefault!10501)) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13362 true) setRest!13362))))

(assert (= b!2093799 b!2093801))

(assert (= (and b!2093799 condSetEmpty!13362) setIsEmpty!13362))

(assert (= (and b!2093799 (not condSetEmpty!13362)) setNonEmpty!13362))

(assert (= setNonEmpty!13362 b!2093800))

(assert (= (and b!2093590 ((_ is Cons!23031) mapDefault!10501)) b!2093799))

(declare-fun m!2549549 () Bool)

(assert (=> b!2093799 m!2549549))

(declare-fun m!2549551 () Bool)

(assert (=> setNonEmpty!13362 m!2549551))

(declare-fun tp!632334 () Bool)

(declare-fun b!2093802 () Bool)

(declare-fun tp!632332 () Bool)

(declare-fun e!1329217 () Bool)

(assert (=> b!2093802 (= e!1329217 (and (inv!30525 (left!18059 (c!337359 treated!60))) tp!632332 (inv!30525 (right!18389 (c!337359 treated!60))) tp!632334))))

(declare-fun b!2093804 () Bool)

(declare-fun e!1329218 () Bool)

(declare-fun tp!632333 () Bool)

(assert (=> b!2093804 (= e!1329218 tp!632333)))

(declare-fun b!2093803 () Bool)

(assert (=> b!2093803 (= e!1329217 (and (inv!30537 (xs!10608 (c!337359 treated!60))) e!1329218))))

(assert (=> b!2093609 (= tp!632224 (and (inv!30525 (c!337359 treated!60)) e!1329217))))

(assert (= (and b!2093609 ((_ is Node!7674) (c!337359 treated!60))) b!2093802))

(assert (= b!2093803 b!2093804))

(assert (= (and b!2093609 ((_ is Leaf!11208) (c!337359 treated!60))) b!2093803))

(declare-fun m!2549553 () Bool)

(assert (=> b!2093802 m!2549553))

(declare-fun m!2549555 () Bool)

(assert (=> b!2093802 m!2549555))

(declare-fun m!2549557 () Bool)

(assert (=> b!2093803 m!2549557))

(assert (=> b!2093609 m!2549349))

(declare-fun mapIsEmpty!10507 () Bool)

(declare-fun mapRes!10507 () Bool)

(assert (=> mapIsEmpty!10507 mapRes!10507))

(declare-fun setIsEmpty!13367 () Bool)

(declare-fun setRes!13367 () Bool)

(assert (=> setIsEmpty!13367 setRes!13367))

(declare-fun b!2093819 () Bool)

(declare-fun e!1329232 () Bool)

(declare-fun tp!632356 () Bool)

(assert (=> b!2093819 (= e!1329232 tp!632356)))

(declare-fun b!2093820 () Bool)

(declare-fun e!1329231 () Bool)

(declare-fun tp!632359 () Bool)

(declare-fun mapDefault!10507 () List!23115)

(assert (=> b!2093820 (= e!1329231 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 mapDefault!10507)))) e!1329232 tp_is_empty!9347 setRes!13367 tp!632359))))

(declare-fun condSetEmpty!13367 () Bool)

(assert (=> b!2093820 (= condSetEmpty!13367 (= (_2!12793 (h!28432 mapDefault!10507)) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun tp!632361 () Bool)

(declare-fun setRes!13368 () Bool)

(declare-fun mapValue!10507 () List!23115)

(declare-fun e!1329234 () Bool)

(declare-fun e!1329233 () Bool)

(declare-fun b!2093821 () Bool)

(assert (=> b!2093821 (= e!1329234 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 mapValue!10507)))) e!1329233 tp_is_empty!9347 setRes!13368 tp!632361))))

(declare-fun condSetEmpty!13368 () Bool)

(assert (=> b!2093821 (= condSetEmpty!13368 (= (_2!12793 (h!28432 mapValue!10507)) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setElem!13367 () Context!2206)

(declare-fun tp!632358 () Bool)

(declare-fun e!1329236 () Bool)

(declare-fun setNonEmpty!13367 () Bool)

(assert (=> setNonEmpty!13367 (= setRes!13367 (and tp!632358 (inv!30535 setElem!13367) e!1329236))))

(declare-fun setRest!13367 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13367 (= (_2!12793 (h!28432 mapDefault!10507)) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13367 true) setRest!13367))))

(declare-fun setIsEmpty!13368 () Bool)

(assert (=> setIsEmpty!13368 setRes!13368))

(declare-fun mapNonEmpty!10507 () Bool)

(declare-fun tp!632360 () Bool)

(assert (=> mapNonEmpty!10507 (= mapRes!10507 (and tp!632360 e!1329234))))

(declare-fun mapRest!10507 () (Array (_ BitVec 32) List!23115))

(declare-fun mapKey!10507 () (_ BitVec 32))

(assert (=> mapNonEmpty!10507 (= mapRest!10500 (store mapRest!10507 mapKey!10507 mapValue!10507))))

(declare-fun b!2093822 () Bool)

(declare-fun tp!632355 () Bool)

(assert (=> b!2093822 (= e!1329233 tp!632355)))

(declare-fun b!2093823 () Bool)

(declare-fun tp!632353 () Bool)

(assert (=> b!2093823 (= e!1329236 tp!632353)))

(declare-fun condMapEmpty!10507 () Bool)

(assert (=> mapNonEmpty!10500 (= condMapEmpty!10507 (= mapRest!10500 ((as const (Array (_ BitVec 32) List!23115)) mapDefault!10507)))))

(assert (=> mapNonEmpty!10500 (= tp!632222 (and e!1329231 mapRes!10507))))

(declare-fun b!2093824 () Bool)

(declare-fun e!1329235 () Bool)

(declare-fun tp!632354 () Bool)

(assert (=> b!2093824 (= e!1329235 tp!632354)))

(declare-fun setNonEmpty!13368 () Bool)

(declare-fun setElem!13368 () Context!2206)

(declare-fun tp!632357 () Bool)

(assert (=> setNonEmpty!13368 (= setRes!13368 (and tp!632357 (inv!30535 setElem!13368) e!1329235))))

(declare-fun setRest!13368 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13368 (= (_2!12793 (h!28432 mapValue!10507)) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13368 true) setRest!13368))))

(assert (= (and mapNonEmpty!10500 condMapEmpty!10507) mapIsEmpty!10507))

(assert (= (and mapNonEmpty!10500 (not condMapEmpty!10507)) mapNonEmpty!10507))

(assert (= b!2093821 b!2093822))

(assert (= (and b!2093821 condSetEmpty!13368) setIsEmpty!13368))

(assert (= (and b!2093821 (not condSetEmpty!13368)) setNonEmpty!13368))

(assert (= setNonEmpty!13368 b!2093824))

(assert (= (and mapNonEmpty!10507 ((_ is Cons!23031) mapValue!10507)) b!2093821))

(assert (= b!2093820 b!2093819))

(assert (= (and b!2093820 condSetEmpty!13367) setIsEmpty!13367))

(assert (= (and b!2093820 (not condSetEmpty!13367)) setNonEmpty!13367))

(assert (= setNonEmpty!13367 b!2093823))

(assert (= (and mapNonEmpty!10500 ((_ is Cons!23031) mapDefault!10507)) b!2093820))

(declare-fun m!2549559 () Bool)

(assert (=> b!2093821 m!2549559))

(declare-fun m!2549561 () Bool)

(assert (=> mapNonEmpty!10507 m!2549561))

(declare-fun m!2549563 () Bool)

(assert (=> b!2093820 m!2549563))

(declare-fun m!2549565 () Bool)

(assert (=> setNonEmpty!13367 m!2549565))

(declare-fun m!2549567 () Bool)

(assert (=> setNonEmpty!13368 m!2549567))

(declare-fun e!1329238 () Bool)

(assert (=> mapNonEmpty!10500 (= tp!632205 e!1329238)))

(declare-fun setIsEmpty!13369 () Bool)

(declare-fun setRes!13369 () Bool)

(assert (=> setIsEmpty!13369 setRes!13369))

(declare-fun tp!632364 () Bool)

(declare-fun e!1329239 () Bool)

(declare-fun b!2093825 () Bool)

(assert (=> b!2093825 (= e!1329238 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 mapValue!10501)))) e!1329239 tp_is_empty!9347 setRes!13369 tp!632364))))

(declare-fun condSetEmpty!13369 () Bool)

(assert (=> b!2093825 (= condSetEmpty!13369 (= (_2!12793 (h!28432 mapValue!10501)) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun b!2093826 () Bool)

(declare-fun e!1329237 () Bool)

(declare-fun tp!632363 () Bool)

(assert (=> b!2093826 (= e!1329237 tp!632363)))

(declare-fun b!2093827 () Bool)

(declare-fun tp!632365 () Bool)

(assert (=> b!2093827 (= e!1329239 tp!632365)))

(declare-fun setElem!13369 () Context!2206)

(declare-fun tp!632362 () Bool)

(declare-fun setNonEmpty!13369 () Bool)

(assert (=> setNonEmpty!13369 (= setRes!13369 (and tp!632362 (inv!30535 setElem!13369) e!1329237))))

(declare-fun setRest!13369 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13369 (= (_2!12793 (h!28432 mapValue!10501)) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13369 true) setRest!13369))))

(assert (= b!2093825 b!2093827))

(assert (= (and b!2093825 condSetEmpty!13369) setIsEmpty!13369))

(assert (= (and b!2093825 (not condSetEmpty!13369)) setNonEmpty!13369))

(assert (= setNonEmpty!13369 b!2093826))

(assert (= (and mapNonEmpty!10500 ((_ is Cons!23031) mapValue!10501)) b!2093825))

(declare-fun m!2549569 () Bool)

(assert (=> b!2093825 m!2549569))

(declare-fun m!2549571 () Bool)

(assert (=> setNonEmpty!13369 m!2549571))

(declare-fun tp!632366 () Bool)

(declare-fun e!1329240 () Bool)

(declare-fun tp!632368 () Bool)

(declare-fun b!2093828 () Bool)

(assert (=> b!2093828 (= e!1329240 (and (inv!30525 (left!18059 (c!337359 totalInput!418))) tp!632366 (inv!30525 (right!18389 (c!337359 totalInput!418))) tp!632368))))

(declare-fun b!2093830 () Bool)

(declare-fun e!1329241 () Bool)

(declare-fun tp!632367 () Bool)

(assert (=> b!2093830 (= e!1329241 tp!632367)))

(declare-fun b!2093829 () Bool)

(assert (=> b!2093829 (= e!1329240 (and (inv!30537 (xs!10608 (c!337359 totalInput!418))) e!1329241))))

(assert (=> b!2093608 (= tp!632206 (and (inv!30525 (c!337359 totalInput!418)) e!1329240))))

(assert (= (and b!2093608 ((_ is Node!7674) (c!337359 totalInput!418))) b!2093828))

(assert (= b!2093829 b!2093830))

(assert (= (and b!2093608 ((_ is Leaf!11208) (c!337359 totalInput!418))) b!2093829))

(declare-fun m!2549573 () Bool)

(assert (=> b!2093828 m!2549573))

(declare-fun m!2549575 () Bool)

(assert (=> b!2093828 m!2549575))

(declare-fun m!2549577 () Bool)

(assert (=> b!2093829 m!2549577))

(assert (=> b!2093608 m!2549285))

(declare-fun b!2093841 () Bool)

(declare-fun b_free!59869 () Bool)

(declare-fun b_next!60573 () Bool)

(assert (=> b!2093841 (= b_free!59869 (not b_next!60573))))

(declare-fun tp!632380 () Bool)

(declare-fun b_and!168859 () Bool)

(assert (=> b!2093841 (= tp!632380 b_and!168859)))

(declare-fun b_free!59871 () Bool)

(declare-fun b_next!60575 () Bool)

(assert (=> b!2093841 (= b_free!59871 (not b_next!60575))))

(declare-fun tp!632379 () Bool)

(declare-fun b_and!168861 () Bool)

(assert (=> b!2093841 (= tp!632379 b_and!168861)))

(declare-fun e!1329253 () Bool)

(assert (=> b!2093841 (= e!1329253 (and tp!632380 tp!632379))))

(declare-fun e!1329252 () Bool)

(declare-fun b!2093840 () Bool)

(declare-fun tp!632377 () Bool)

(assert (=> b!2093840 (= e!1329252 (and tp!632377 (inv!30523 (tag!4595 (h!28437 (t!195061 rules!1563)))) (inv!30526 (transformation!4105 (h!28437 (t!195061 rules!1563)))) e!1329253))))

(declare-fun b!2093839 () Bool)

(declare-fun e!1329251 () Bool)

(declare-fun tp!632378 () Bool)

(assert (=> b!2093839 (= e!1329251 (and e!1329252 tp!632378))))

(assert (=> b!2093607 (= tp!632211 e!1329251)))

(assert (= b!2093840 b!2093841))

(assert (= b!2093839 b!2093840))

(assert (= (and b!2093607 ((_ is Cons!23036) (t!195061 rules!1563))) b!2093839))

(declare-fun m!2549579 () Bool)

(assert (=> b!2093840 m!2549579))

(declare-fun m!2549581 () Bool)

(assert (=> b!2093840 m!2549581))

(declare-fun tp!632385 () Bool)

(declare-fun setNonEmpty!13370 () Bool)

(declare-fun setElem!13370 () Context!2206)

(declare-fun setRes!13370 () Bool)

(declare-fun e!1329256 () Bool)

(assert (=> setNonEmpty!13370 (= setRes!13370 (and tp!632385 (inv!30535 setElem!13370) e!1329256))))

(declare-fun setRest!13370 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13370 (= (_2!12795 (h!28433 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13370 true) setRest!13370))))

(declare-fun b!2093842 () Bool)

(declare-fun e!1329254 () Bool)

(declare-fun tp!632382 () Bool)

(assert (=> b!2093842 (= e!1329254 tp!632382)))

(declare-fun b!2093843 () Bool)

(declare-fun tp!632383 () Bool)

(assert (=> b!2093843 (= e!1329256 tp!632383)))

(declare-fun tp!632384 () Bool)

(declare-fun e!1329255 () Bool)

(declare-fun tp!632381 () Bool)

(declare-fun b!2093844 () Bool)

(assert (=> b!2093844 (= e!1329255 (and tp!632381 (inv!30535 (_2!12794 (_1!12795 (h!28433 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))))) e!1329254 tp_is_empty!9347 setRes!13370 tp!632384))))

(declare-fun condSetEmpty!13370 () Bool)

(assert (=> b!2093844 (= condSetEmpty!13370 (= (_2!12795 (h!28433 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setIsEmpty!13370 () Bool)

(assert (=> setIsEmpty!13370 setRes!13370))

(assert (=> b!2093596 (= tp!632215 e!1329255)))

(assert (= b!2093844 b!2093842))

(assert (= (and b!2093844 condSetEmpty!13370) setIsEmpty!13370))

(assert (= (and b!2093844 (not condSetEmpty!13370)) setNonEmpty!13370))

(assert (= setNonEmpty!13370 b!2093843))

(assert (= (and b!2093596 ((_ is Cons!23032) (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))) b!2093844))

(declare-fun m!2549583 () Bool)

(assert (=> setNonEmpty!13370 m!2549583))

(declare-fun m!2549585 () Bool)

(assert (=> b!2093844 m!2549585))

(declare-fun setElem!13371 () Context!2206)

(declare-fun setRes!13371 () Bool)

(declare-fun setNonEmpty!13371 () Bool)

(declare-fun e!1329259 () Bool)

(declare-fun tp!632390 () Bool)

(assert (=> setNonEmpty!13371 (= setRes!13371 (and tp!632390 (inv!30535 setElem!13371) e!1329259))))

(declare-fun setRest!13371 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13371 (= (_2!12795 (h!28433 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13371 true) setRest!13371))))

(declare-fun b!2093845 () Bool)

(declare-fun e!1329257 () Bool)

(declare-fun tp!632387 () Bool)

(assert (=> b!2093845 (= e!1329257 tp!632387)))

(declare-fun b!2093846 () Bool)

(declare-fun tp!632388 () Bool)

(assert (=> b!2093846 (= e!1329259 tp!632388)))

(declare-fun tp!632389 () Bool)

(declare-fun tp!632386 () Bool)

(declare-fun b!2093847 () Bool)

(declare-fun e!1329258 () Bool)

(assert (=> b!2093847 (= e!1329258 (and tp!632386 (inv!30535 (_2!12794 (_1!12795 (h!28433 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))))) e!1329257 tp_is_empty!9347 setRes!13371 tp!632389))))

(declare-fun condSetEmpty!13371 () Bool)

(assert (=> b!2093847 (= condSetEmpty!13371 (= (_2!12795 (h!28433 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setIsEmpty!13371 () Bool)

(assert (=> setIsEmpty!13371 setRes!13371))

(assert (=> b!2093596 (= tp!632204 e!1329258)))

(assert (= b!2093847 b!2093845))

(assert (= (and b!2093847 condSetEmpty!13371) setIsEmpty!13371))

(assert (= (and b!2093847 (not condSetEmpty!13371)) setNonEmpty!13371))

(assert (= setNonEmpty!13371 b!2093846))

(assert (= (and b!2093596 ((_ is Cons!23032) (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))) b!2093847))

(declare-fun m!2549587 () Bool)

(assert (=> setNonEmpty!13371 m!2549587))

(declare-fun m!2549589 () Bool)

(assert (=> b!2093847 m!2549589))

(check-sat (not b!2093785) (not b!2093608) (not b!2093822) (not b!2093724) (not b!2093658) (not b!2093770) (not b!2093845) b_and!168851 (not b_next!60567) (not d!638402) (not b!2093703) (not b!2093666) (not b!2093738) (not b!2093660) (not b!2093678) (not setNonEmpty!13351) (not b!2093827) (not b!2093783) (not d!638406) (not b!2093782) (not b!2093705) (not b!2093751) (not b!2093843) (not b!2093784) (not b!2093604) b_and!168847 (not d!638434) (not b!2093714) (not b!2093798) (not b!2093768) (not b!2093695) (not b!2093727) (not setNonEmpty!13357) (not b!2093679) (not d!638422) (not b!2093803) (not b!2093723) (not d!638374) (not b!2093630) (not b!2093739) b_and!168855 (not b!2093728) (not b!2093752) (not d!638370) (not b!2093804) b_and!168853 (not b_next!60575) (not d!638416) (not b!2093800) (not setNonEmpty!13368) (not b!2093704) (not setNonEmpty!13362) (not b!2093819) (not b!2093847) (not d!638412) (not b!2093609) (not mapNonEmpty!10507) (not d!638408) (not b!2093680) (not b!2093725) (not b_next!60569) (not b!2093773) (not b_next!60573) (not b!2093820) (not b!2093797) (not b!2093825) (not b!2093787) (not b!2093802) (not b!2093799) b_and!168861 (not b!2093664) (not d!638398) (not b!2093824) (not b!2093708) (not b!2093829) b_and!168857 b_and!168849 (not d!638426) (not b!2093844) (not b!2093826) (not b!2093656) (not b!2093701) (not b!2093771) (not b!2093842) (not b_next!60561) (not setNonEmpty!13360) (not b!2093690) (not b!2093823) (not d!638420) (not setNonEmpty!13370) (not b!2093772) (not b!2093711) (not setNonEmpty!13350) (not d!638430) (not b!2093661) (not b!2093683) (not b_next!60565) tp_is_empty!9347 (not d!638388) (not b!2093663) (not b!2093801) (not b!2093698) (not b!2093726) (not b!2093769) (not d!638376) (not d!638424) (not b_next!60571) (not b!2093700) (not d!638392) (not b!2093665) (not b!2093629) (not setNonEmpty!13371) (not b!2093702) (not d!638390) (not b!2093712) (not b!2093638) (not setNonEmpty!13367) (not b!2093667) (not b!2093753) (not d!638394) (not b!2093692) (not d!638386) (not b!2093821) (not d!638436) (not b!2093611) (not b!2093828) (not d!638372) (not setNonEmpty!13356) (not b!2093786) (not d!638378) (not b!2093846) (not setNonEmpty!13361) (not b!2093796) (not b_next!60563) (not b!2093696) (not mapNonEmpty!10504) (not b!2093640) b_and!168859 (not b!2093668) (not b!2093737) (not b!2093657) (not d!638418) (not b!2093659) (not b!2093839) (not b!2093830) (not setNonEmpty!13369) (not b!2093677) (not b!2093840))
(check-sat b_and!168847 b_and!168855 (not b_next!60569) (not b_next!60573) b_and!168861 (not b_next!60561) (not b_next!60565) (not b_next!60571) (not b_next!60563) b_and!168859 b_and!168851 (not b_next!60567) b_and!168853 (not b_next!60575) b_and!168857 b_and!168849)
(get-model)

(declare-fun d!638444 () Bool)

(declare-fun lambda!77879 () Int)

(declare-fun forall!4818 (List!23114 Int) Bool)

(assert (=> d!638444 (= (inv!30535 (_1!12792 (_1!12793 (h!28432 mapValue!10501)))) (forall!4818 (exprs!1603 (_1!12792 (_1!12793 (h!28432 mapValue!10501)))) lambda!77879))))

(declare-fun bs!437635 () Bool)

(assert (= bs!437635 d!638444))

(declare-fun m!2549591 () Bool)

(assert (=> bs!437635 m!2549591))

(assert (=> b!2093825 d!638444))

(declare-fun d!638446 () Bool)

(assert (=> d!638446 (= (inv!30537 (xs!10608 (c!337359 input!986))) (<= (size!17992 (innerList!7734 (xs!10608 (c!337359 input!986)))) 2147483647))))

(declare-fun bs!437636 () Bool)

(assert (= bs!437636 d!638446))

(declare-fun m!2549593 () Bool)

(assert (=> bs!437636 m!2549593))

(assert (=> b!2093797 d!638446))

(declare-fun d!638448 () Bool)

(declare-fun lt!786740 () Int)

(assert (=> d!638448 (= lt!786740 (size!17992 (list!9383 (_2!12796 lt!786737))))))

(assert (=> d!638448 (= lt!786740 (size!17994 (c!337359 (_2!12796 lt!786737))))))

(assert (=> d!638448 (= (size!17991 (_2!12796 lt!786737)) lt!786740)))

(declare-fun bs!437637 () Bool)

(assert (= bs!437637 d!638448))

(assert (=> bs!437637 m!2549493))

(assert (=> bs!437637 m!2549493))

(declare-fun m!2549595 () Bool)

(assert (=> bs!437637 m!2549595))

(declare-fun m!2549597 () Bool)

(assert (=> bs!437637 m!2549597))

(assert (=> b!2093705 d!638448))

(declare-fun d!638450 () Bool)

(declare-fun lt!786741 () Int)

(assert (=> d!638450 (= lt!786741 (size!17992 (list!9383 treated!60)))))

(assert (=> d!638450 (= lt!786741 (size!17994 (c!337359 treated!60)))))

(assert (=> d!638450 (= (size!17991 treated!60) lt!786741)))

(declare-fun bs!437638 () Bool)

(assert (= bs!437638 d!638450))

(assert (=> bs!437638 m!2549311))

(assert (=> bs!437638 m!2549311))

(assert (=> bs!437638 m!2549371))

(declare-fun m!2549599 () Bool)

(assert (=> bs!437638 m!2549599))

(assert (=> b!2093705 d!638450))

(declare-fun bs!437639 () Bool)

(declare-fun d!638452 () Bool)

(assert (= bs!437639 (and d!638452 d!638444)))

(declare-fun lambda!77880 () Int)

(assert (=> bs!437639 (= lambda!77880 lambda!77879)))

(assert (=> d!638452 (= (inv!30535 setElem!13357) (forall!4818 (exprs!1603 setElem!13357) lambda!77880))))

(declare-fun bs!437640 () Bool)

(assert (= bs!437640 d!638452))

(declare-fun m!2549601 () Bool)

(assert (=> bs!437640 m!2549601))

(assert (=> setNonEmpty!13357 d!638452))

(declare-fun d!638454 () Bool)

(assert (=> d!638454 (= (height!1220 (c!337360 (_1!12796 lt!786712))) (ite ((_ is Empty!7675) (c!337360 (_1!12796 lt!786712))) 0 (ite ((_ is Leaf!11209) (c!337360 (_1!12796 lt!786712))) 1 (cheight!7886 (c!337360 (_1!12796 lt!786712))))))))

(assert (=> b!2093678 d!638454))

(declare-fun d!638456 () Bool)

(assert (=> d!638456 (= (height!1220 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712)))) (ite ((_ is Empty!7675) (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712)))) 0 (ite ((_ is Leaf!11209) (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712)))) 1 (cheight!7886 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712)))))))))

(assert (=> b!2093678 d!638456))

(declare-fun d!638458 () Bool)

(assert (=> d!638458 (= (max!0 (height!1220 (c!337360 acc!382)) (height!1220 (c!337360 (_1!12796 lt!786712)))) (ite (< (height!1220 (c!337360 acc!382)) (height!1220 (c!337360 (_1!12796 lt!786712)))) (height!1220 (c!337360 (_1!12796 lt!786712))) (height!1220 (c!337360 acc!382))))))

(assert (=> b!2093678 d!638458))

(declare-fun bm!127855 () Bool)

(declare-fun call!127872 () Conc!7675)

(declare-fun call!127861 () Conc!7675)

(assert (=> bm!127855 (= call!127872 call!127861)))

(declare-fun d!638460 () Bool)

(declare-fun e!1329283 () Bool)

(assert (=> d!638460 e!1329283))

(declare-fun res!911593 () Bool)

(assert (=> d!638460 (=> (not res!911593) (not e!1329283))))

(assert (=> d!638460 (= res!911593 (appendAssocInst!583 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712))))))

(declare-fun lt!786750 () Conc!7675)

(declare-fun e!1329285 () Conc!7675)

(assert (=> d!638460 (= lt!786750 e!1329285)))

(declare-fun c!337405 () Bool)

(assert (=> d!638460 (= c!337405 (= (c!337360 acc!382) Empty!7675))))

(declare-fun e!1329288 () Bool)

(assert (=> d!638460 e!1329288))

(declare-fun res!911592 () Bool)

(assert (=> d!638460 (=> (not res!911592) (not e!1329288))))

(assert (=> d!638460 (= res!911592 (isBalanced!2410 (c!337360 acc!382)))))

(assert (=> d!638460 (= (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712))) lt!786750)))

(declare-fun bm!127856 () Bool)

(declare-fun call!127866 () Conc!7675)

(declare-fun call!127873 () Conc!7675)

(assert (=> bm!127856 (= call!127866 call!127873)))

(declare-fun b!2093890 () Bool)

(declare-fun e!1329287 () Conc!7675)

(declare-fun e!1329282 () Conc!7675)

(assert (=> b!2093890 (= e!1329287 e!1329282)))

(declare-fun c!337406 () Bool)

(declare-fun lt!786752 () Int)

(assert (=> b!2093890 (= c!337406 (< lt!786752 (- 1)))))

(declare-fun bm!127857 () Bool)

(declare-fun call!127860 () Conc!7675)

(declare-fun call!127870 () Conc!7675)

(assert (=> bm!127857 (= call!127860 call!127870)))

(declare-fun call!127864 () Int)

(declare-fun lt!786753 () Conc!7675)

(declare-fun bm!127858 () Bool)

(assert (=> bm!127858 (= call!127864 (height!1220 (ite c!337406 lt!786753 (c!337360 (_1!12796 lt!786712)))))))

(declare-fun b!2093891 () Bool)

(declare-fun e!1329281 () Conc!7675)

(assert (=> b!2093891 (= e!1329281 (c!337360 acc!382))))

(declare-fun bm!127859 () Bool)

(declare-fun call!127863 () Conc!7675)

(declare-fun call!127869 () Conc!7675)

(assert (=> bm!127859 (= call!127863 call!127869)))

(declare-fun b!2093892 () Bool)

(declare-fun e!1329286 () Conc!7675)

(assert (=> b!2093892 (= e!1329286 call!127872)))

(declare-fun bm!127860 () Bool)

(declare-fun call!127874 () Conc!7675)

(assert (=> bm!127860 (= call!127874 call!127870)))

(declare-fun b!2093893 () Bool)

(assert (=> b!2093893 (= e!1329285 e!1329281)))

(declare-fun c!337409 () Bool)

(assert (=> b!2093893 (= c!337409 (= (c!337360 (_1!12796 lt!786712)) Empty!7675))))

(declare-fun bm!127861 () Bool)

(declare-fun call!127862 () Conc!7675)

(assert (=> bm!127861 (= call!127870 call!127862)))

(declare-fun b!2093894 () Bool)

(declare-fun c!337407 () Bool)

(declare-fun call!127871 () Int)

(declare-fun call!127867 () Int)

(assert (=> b!2093894 (= c!337407 (>= call!127871 call!127867))))

(declare-fun e!1329284 () Conc!7675)

(assert (=> b!2093894 (= e!1329282 e!1329284)))

(declare-fun bm!127862 () Bool)

(declare-fun c!337402 () Bool)

(assert (=> bm!127862 (= call!127869 (++!6275 (ite c!337406 (ite c!337407 (right!18390 (c!337360 acc!382)) (right!18390 (right!18390 (c!337360 acc!382)))) (c!337360 acc!382)) (ite c!337406 (c!337360 (_1!12796 lt!786712)) (ite c!337402 (left!18060 (c!337360 (_1!12796 lt!786712))) (left!18060 (left!18060 (c!337360 (_1!12796 lt!786712))))))))))

(declare-fun bm!127863 () Bool)

(declare-fun call!127875 () Conc!7675)

(assert (=> bm!127863 (= call!127875 call!127860)))

(declare-fun bm!127864 () Bool)

(assert (=> bm!127864 (= call!127867 (height!1220 (ite c!337406 (right!18390 (c!337360 acc!382)) (left!18060 (c!337360 (_1!12796 lt!786712))))))))

(declare-fun bm!127865 () Bool)

(assert (=> bm!127865 (= call!127861 call!127873)))

(declare-fun b!2093895 () Bool)

(declare-fun e!1329280 () Conc!7675)

(assert (=> b!2093895 (= e!1329280 call!127866)))

(declare-fun bm!127866 () Bool)

(assert (=> bm!127866 (= call!127871 (height!1220 (ite c!337406 (left!18060 (c!337360 acc!382)) (right!18390 (c!337360 (_1!12796 lt!786712))))))))

(declare-fun b!2093896 () Bool)

(assert (=> b!2093896 (= e!1329284 call!127861)))

(declare-fun b!2093897 () Bool)

(declare-fun e!1329289 () Conc!7675)

(assert (=> b!2093897 (= e!1329289 e!1329280)))

(declare-fun lt!786751 () Conc!7675)

(assert (=> b!2093897 (= lt!786751 call!127863)))

(declare-fun c!337403 () Bool)

(declare-fun call!127865 () Int)

(assert (=> b!2093897 (= c!337403 (= call!127865 (- call!127864 3)))))

(declare-fun b!2093898 () Bool)

(assert (=> b!2093898 (= e!1329280 call!127866)))

(declare-fun bm!127867 () Bool)

(assert (=> bm!127867 (= call!127865 (height!1220 (ite c!337406 (c!337360 acc!382) lt!786751)))))

(declare-fun b!2093899 () Bool)

(assert (=> b!2093899 (= e!1329287 call!127862)))

(declare-fun bm!127868 () Bool)

(declare-fun call!127868 () Conc!7675)

(assert (=> bm!127868 (= call!127868 call!127869)))

(declare-fun b!2093900 () Bool)

(assert (=> b!2093900 (= e!1329288 (isBalanced!2410 (c!337360 (_1!12796 lt!786712))))))

(declare-fun b!2093901 () Bool)

(declare-fun res!911595 () Bool)

(assert (=> b!2093901 (=> (not res!911595) (not e!1329283))))

(assert (=> b!2093901 (= res!911595 (>= (height!1220 lt!786750) (max!0 (height!1220 (c!337360 acc!382)) (height!1220 (c!337360 (_1!12796 lt!786712))))))))

(declare-fun b!2093902 () Bool)

(assert (=> b!2093902 (= e!1329286 call!127872)))

(declare-fun b!2093903 () Bool)

(declare-fun c!337408 () Bool)

(assert (=> b!2093903 (= c!337408 (and (<= (- 1) lt!786752) (<= lt!786752 1)))))

(assert (=> b!2093903 (= lt!786752 (- (height!1220 (c!337360 (_1!12796 lt!786712))) (height!1220 (c!337360 acc!382))))))

(assert (=> b!2093903 (= e!1329281 e!1329287)))

(declare-fun b!2093904 () Bool)

(assert (=> b!2093904 (= e!1329289 call!127860)))

(declare-fun b!2093905 () Bool)

(declare-fun res!911596 () Bool)

(assert (=> b!2093905 (=> (not res!911596) (not e!1329283))))

(assert (=> b!2093905 (= res!911596 (isBalanced!2410 lt!786750))))

(declare-fun b!2093906 () Bool)

(assert (=> b!2093906 (= c!337402 (>= call!127871 call!127867))))

(assert (=> b!2093906 (= e!1329282 e!1329289)))

(declare-fun bm!127869 () Bool)

(declare-fun c!337404 () Bool)

(declare-fun <>!193 (Conc!7675 Conc!7675) Conc!7675)

(assert (=> bm!127869 (= call!127862 (<>!193 (ite c!337408 (c!337360 acc!382) (ite c!337406 (ite c!337404 (left!18060 (right!18390 (c!337360 acc!382))) (left!18060 (c!337360 acc!382))) (ite c!337402 call!127863 (ite c!337403 lt!786751 (right!18390 (left!18060 (c!337360 (_1!12796 lt!786712)))))))) (ite c!337408 (c!337360 (_1!12796 lt!786712)) (ite c!337406 (ite c!337404 lt!786753 (left!18060 (right!18390 (c!337360 acc!382)))) (ite c!337402 (right!18390 (c!337360 (_1!12796 lt!786712))) (ite c!337403 (right!18390 (left!18060 (c!337360 (_1!12796 lt!786712)))) (right!18390 (c!337360 (_1!12796 lt!786712)))))))))))

(declare-fun b!2093907 () Bool)

(declare-fun res!911594 () Bool)

(assert (=> b!2093907 (=> (not res!911594) (not e!1329283))))

(assert (=> b!2093907 (= res!911594 (<= (height!1220 lt!786750) (+ (max!0 (height!1220 (c!337360 acc!382)) (height!1220 (c!337360 (_1!12796 lt!786712)))) 1)))))

(declare-fun b!2093908 () Bool)

(assert (=> b!2093908 (= e!1329284 e!1329286)))

(assert (=> b!2093908 (= lt!786753 call!127868)))

(assert (=> b!2093908 (= c!337404 (= call!127864 (- call!127865 3)))))

(declare-fun b!2093909 () Bool)

(assert (=> b!2093909 (= e!1329283 (= (list!9386 lt!786750) (++!6276 (list!9386 (c!337360 acc!382)) (list!9386 (c!337360 (_1!12796 lt!786712))))))))

(declare-fun b!2093910 () Bool)

(assert (=> b!2093910 (= e!1329285 (c!337360 (_1!12796 lt!786712)))))

(declare-fun bm!127870 () Bool)

(assert (=> bm!127870 (= call!127873 (<>!193 (ite c!337406 (ite (or c!337407 c!337404) (left!18060 (c!337360 acc!382)) call!127874) (ite c!337403 call!127875 lt!786751)) (ite c!337406 (ite c!337407 call!127868 (ite c!337404 call!127874 lt!786753)) (ite c!337403 (right!18390 (c!337360 (_1!12796 lt!786712))) call!127875))))))

(assert (= (and d!638460 res!911592) b!2093900))

(assert (= (and d!638460 c!337405) b!2093910))

(assert (= (and d!638460 (not c!337405)) b!2093893))

(assert (= (and b!2093893 c!337409) b!2093891))

(assert (= (and b!2093893 (not c!337409)) b!2093903))

(assert (= (and b!2093903 c!337408) b!2093899))

(assert (= (and b!2093903 (not c!337408)) b!2093890))

(assert (= (and b!2093890 c!337406) b!2093894))

(assert (= (and b!2093890 (not c!337406)) b!2093906))

(assert (= (and b!2093894 c!337407) b!2093896))

(assert (= (and b!2093894 (not c!337407)) b!2093908))

(assert (= (and b!2093908 c!337404) b!2093892))

(assert (= (and b!2093908 (not c!337404)) b!2093902))

(assert (= (or b!2093892 b!2093902) bm!127860))

(assert (= (or b!2093892 b!2093902) bm!127855))

(assert (= (or b!2093896 b!2093908) bm!127868))

(assert (= (or b!2093896 bm!127855) bm!127865))

(assert (= (and b!2093906 c!337402) b!2093904))

(assert (= (and b!2093906 (not c!337402)) b!2093897))

(assert (= (and b!2093897 c!337403) b!2093898))

(assert (= (and b!2093897 (not c!337403)) b!2093895))

(assert (= (or b!2093898 b!2093895) bm!127863))

(assert (= (or b!2093898 b!2093895) bm!127856))

(assert (= (or b!2093904 b!2093897) bm!127859))

(assert (= (or b!2093904 bm!127863) bm!127857))

(assert (= (or bm!127865 bm!127856) bm!127870))

(assert (= (or bm!127860 bm!127857) bm!127861))

(assert (= (or bm!127868 bm!127859) bm!127862))

(assert (= (or b!2093908 b!2093897) bm!127867))

(assert (= (or b!2093894 b!2093906) bm!127864))

(assert (= (or b!2093894 b!2093906) bm!127866))

(assert (= (or b!2093908 b!2093897) bm!127858))

(assert (= (or b!2093899 bm!127861) bm!127869))

(assert (= (and d!638460 res!911593) b!2093905))

(assert (= (and b!2093905 res!911596) b!2093907))

(assert (= (and b!2093907 res!911594) b!2093901))

(assert (= (and b!2093901 res!911595) b!2093909))

(declare-fun m!2549603 () Bool)

(assert (=> b!2093905 m!2549603))

(declare-fun m!2549605 () Bool)

(assert (=> b!2093901 m!2549605))

(assert (=> b!2093901 m!2549431))

(assert (=> b!2093901 m!2549429))

(assert (=> b!2093901 m!2549431))

(assert (=> b!2093901 m!2549429))

(assert (=> b!2093901 m!2549437))

(declare-fun m!2549607 () Bool)

(assert (=> bm!127870 m!2549607))

(declare-fun m!2549609 () Bool)

(assert (=> bm!127864 m!2549609))

(declare-fun m!2549611 () Bool)

(assert (=> bm!127869 m!2549611))

(declare-fun m!2549613 () Bool)

(assert (=> bm!127866 m!2549613))

(declare-fun m!2549615 () Bool)

(assert (=> b!2093909 m!2549615))

(assert (=> b!2093909 m!2549473))

(declare-fun m!2549617 () Bool)

(assert (=> b!2093909 m!2549617))

(assert (=> b!2093909 m!2549473))

(assert (=> b!2093909 m!2549617))

(declare-fun m!2549619 () Bool)

(assert (=> b!2093909 m!2549619))

(declare-fun m!2549621 () Bool)

(assert (=> bm!127862 m!2549621))

(declare-fun m!2549623 () Bool)

(assert (=> bm!127858 m!2549623))

(declare-fun m!2549625 () Bool)

(assert (=> b!2093900 m!2549625))

(assert (=> b!2093907 m!2549605))

(assert (=> b!2093907 m!2549431))

(assert (=> b!2093907 m!2549429))

(assert (=> b!2093907 m!2549431))

(assert (=> b!2093907 m!2549429))

(assert (=> b!2093907 m!2549437))

(assert (=> b!2093903 m!2549429))

(assert (=> b!2093903 m!2549431))

(assert (=> d!638460 m!2549439))

(assert (=> d!638460 m!2549501))

(declare-fun m!2549627 () Bool)

(assert (=> bm!127867 m!2549627))

(assert (=> b!2093678 d!638460))

(declare-fun d!638462 () Bool)

(assert (=> d!638462 (= (height!1220 (c!337360 acc!382)) (ite ((_ is Empty!7675) (c!337360 acc!382)) 0 (ite ((_ is Leaf!11209) (c!337360 acc!382)) 1 (cheight!7886 (c!337360 acc!382)))))))

(assert (=> b!2093678 d!638462))

(assert (=> b!2093611 d!638404))

(declare-fun b!2093921 () Bool)

(declare-fun e!1329295 () List!23117)

(declare-fun list!9387 (IArray!15353) List!23117)

(assert (=> b!2093921 (= e!1329295 (list!9387 (xs!10608 (c!337359 input!986))))))

(declare-fun b!2093920 () Bool)

(declare-fun e!1329294 () List!23117)

(assert (=> b!2093920 (= e!1329294 e!1329295)))

(declare-fun c!337415 () Bool)

(assert (=> b!2093920 (= c!337415 ((_ is Leaf!11208) (c!337359 input!986)))))

(declare-fun d!638464 () Bool)

(declare-fun c!337414 () Bool)

(assert (=> d!638464 (= c!337414 ((_ is Empty!7674) (c!337359 input!986)))))

(assert (=> d!638464 (= (list!9385 (c!337359 input!986)) e!1329294)))

(declare-fun b!2093919 () Bool)

(assert (=> b!2093919 (= e!1329294 Nil!23033)))

(declare-fun b!2093922 () Bool)

(assert (=> b!2093922 (= e!1329295 (++!6273 (list!9385 (left!18059 (c!337359 input!986))) (list!9385 (right!18389 (c!337359 input!986)))))))

(assert (= (and d!638464 c!337414) b!2093919))

(assert (= (and d!638464 (not c!337414)) b!2093920))

(assert (= (and b!2093920 c!337415) b!2093921))

(assert (= (and b!2093920 (not c!337415)) b!2093922))

(declare-fun m!2549629 () Bool)

(assert (=> b!2093921 m!2549629))

(declare-fun m!2549631 () Bool)

(assert (=> b!2093922 m!2549631))

(declare-fun m!2549633 () Bool)

(assert (=> b!2093922 m!2549633))

(assert (=> b!2093922 m!2549631))

(assert (=> b!2093922 m!2549633))

(declare-fun m!2549635 () Bool)

(assert (=> b!2093922 m!2549635))

(assert (=> d!638376 d!638464))

(declare-fun d!638466 () Bool)

(assert (=> d!638466 true))

(declare-fun lambda!77883 () Int)

(declare-fun order!14433 () Int)

(declare-fun order!14431 () Int)

(declare-fun dynLambda!11238 (Int Int) Int)

(declare-fun dynLambda!11239 (Int Int) Int)

(assert (=> d!638466 (< (dynLambda!11238 order!14431 (toChars!5669 (transformation!4105 (h!28437 rules!1563)))) (dynLambda!11239 order!14433 lambda!77883))))

(assert (=> d!638466 true))

(declare-fun order!14435 () Int)

(declare-fun dynLambda!11240 (Int Int) Int)

(assert (=> d!638466 (< (dynLambda!11240 order!14435 (toValue!5810 (transformation!4105 (h!28437 rules!1563)))) (dynLambda!11239 order!14433 lambda!77883))))

(declare-fun Forall!1035 (Int) Bool)

(assert (=> d!638466 (= (semiInverseModEq!1642 (toChars!5669 (transformation!4105 (h!28437 rules!1563))) (toValue!5810 (transformation!4105 (h!28437 rules!1563)))) (Forall!1035 lambda!77883))))

(declare-fun bs!437641 () Bool)

(assert (= bs!437641 d!638466))

(declare-fun m!2549637 () Bool)

(assert (=> bs!437641 m!2549637))

(assert (=> d!638398 d!638466))

(declare-fun b!2093939 () Bool)

(declare-fun res!911613 () Bool)

(declare-fun e!1329301 () Bool)

(assert (=> b!2093939 (=> (not res!911613) (not e!1329301))))

(assert (=> b!2093939 (= res!911613 (isBalanced!2410 (left!18060 (c!337360 acc!382))))))

(declare-fun b!2093940 () Bool)

(declare-fun res!911611 () Bool)

(assert (=> b!2093940 (=> (not res!911611) (not e!1329301))))

(assert (=> b!2093940 (= res!911611 (isBalanced!2410 (right!18390 (c!337360 acc!382))))))

(declare-fun b!2093941 () Bool)

(declare-fun res!911609 () Bool)

(assert (=> b!2093941 (=> (not res!911609) (not e!1329301))))

(assert (=> b!2093941 (= res!911609 (<= (- (height!1220 (left!18060 (c!337360 acc!382))) (height!1220 (right!18390 (c!337360 acc!382)))) 1))))

(declare-fun b!2093943 () Bool)

(declare-fun e!1329300 () Bool)

(assert (=> b!2093943 (= e!1329300 e!1329301)))

(declare-fun res!911612 () Bool)

(assert (=> b!2093943 (=> (not res!911612) (not e!1329301))))

(assert (=> b!2093943 (= res!911612 (<= (- 1) (- (height!1220 (left!18060 (c!337360 acc!382))) (height!1220 (right!18390 (c!337360 acc!382))))))))

(declare-fun b!2093944 () Bool)

(declare-fun res!911614 () Bool)

(assert (=> b!2093944 (=> (not res!911614) (not e!1329301))))

(declare-fun isEmpty!14207 (Conc!7675) Bool)

(assert (=> b!2093944 (= res!911614 (not (isEmpty!14207 (left!18060 (c!337360 acc!382)))))))

(declare-fun d!638468 () Bool)

(declare-fun res!911610 () Bool)

(assert (=> d!638468 (=> res!911610 e!1329300)))

(assert (=> d!638468 (= res!911610 (not ((_ is Node!7675) (c!337360 acc!382))))))

(assert (=> d!638468 (= (isBalanced!2410 (c!337360 acc!382)) e!1329300)))

(declare-fun b!2093942 () Bool)

(assert (=> b!2093942 (= e!1329301 (not (isEmpty!14207 (right!18390 (c!337360 acc!382)))))))

(assert (= (and d!638468 (not res!911610)) b!2093943))

(assert (= (and b!2093943 res!911612) b!2093941))

(assert (= (and b!2093941 res!911609) b!2093939))

(assert (= (and b!2093939 res!911613) b!2093940))

(assert (= (and b!2093940 res!911611) b!2093944))

(assert (= (and b!2093944 res!911614) b!2093942))

(declare-fun m!2549639 () Bool)

(assert (=> b!2093944 m!2549639))

(declare-fun m!2549641 () Bool)

(assert (=> b!2093939 m!2549641))

(declare-fun m!2549643 () Bool)

(assert (=> b!2093941 m!2549643))

(declare-fun m!2549645 () Bool)

(assert (=> b!2093941 m!2549645))

(declare-fun m!2549647 () Bool)

(assert (=> b!2093940 m!2549647))

(declare-fun m!2549649 () Bool)

(assert (=> b!2093942 m!2549649))

(assert (=> b!2093943 m!2549643))

(assert (=> b!2093943 m!2549645))

(assert (=> d!638430 d!638468))

(declare-fun d!638470 () Bool)

(declare-fun c!337416 () Bool)

(assert (=> d!638470 (= c!337416 ((_ is Node!7674) (left!18059 (c!337359 treated!60))))))

(declare-fun e!1329302 () Bool)

(assert (=> d!638470 (= (inv!30525 (left!18059 (c!337359 treated!60))) e!1329302)))

(declare-fun b!2093945 () Bool)

(assert (=> b!2093945 (= e!1329302 (inv!30533 (left!18059 (c!337359 treated!60))))))

(declare-fun b!2093946 () Bool)

(declare-fun e!1329303 () Bool)

(assert (=> b!2093946 (= e!1329302 e!1329303)))

(declare-fun res!911615 () Bool)

(assert (=> b!2093946 (= res!911615 (not ((_ is Leaf!11208) (left!18059 (c!337359 treated!60)))))))

(assert (=> b!2093946 (=> res!911615 e!1329303)))

(declare-fun b!2093947 () Bool)

(assert (=> b!2093947 (= e!1329303 (inv!30534 (left!18059 (c!337359 treated!60))))))

(assert (= (and d!638470 c!337416) b!2093945))

(assert (= (and d!638470 (not c!337416)) b!2093946))

(assert (= (and b!2093946 (not res!911615)) b!2093947))

(declare-fun m!2549651 () Bool)

(assert (=> b!2093945 m!2549651))

(declare-fun m!2549653 () Bool)

(assert (=> b!2093947 m!2549653))

(assert (=> b!2093802 d!638470))

(declare-fun d!638472 () Bool)

(declare-fun c!337417 () Bool)

(assert (=> d!638472 (= c!337417 ((_ is Node!7674) (right!18389 (c!337359 treated!60))))))

(declare-fun e!1329304 () Bool)

(assert (=> d!638472 (= (inv!30525 (right!18389 (c!337359 treated!60))) e!1329304)))

(declare-fun b!2093948 () Bool)

(assert (=> b!2093948 (= e!1329304 (inv!30533 (right!18389 (c!337359 treated!60))))))

(declare-fun b!2093949 () Bool)

(declare-fun e!1329305 () Bool)

(assert (=> b!2093949 (= e!1329304 e!1329305)))

(declare-fun res!911616 () Bool)

(assert (=> b!2093949 (= res!911616 (not ((_ is Leaf!11208) (right!18389 (c!337359 treated!60)))))))

(assert (=> b!2093949 (=> res!911616 e!1329305)))

(declare-fun b!2093950 () Bool)

(assert (=> b!2093950 (= e!1329305 (inv!30534 (right!18389 (c!337359 treated!60))))))

(assert (= (and d!638472 c!337417) b!2093948))

(assert (= (and d!638472 (not c!337417)) b!2093949))

(assert (= (and b!2093949 (not res!911616)) b!2093950))

(declare-fun m!2549655 () Bool)

(assert (=> b!2093948 m!2549655))

(declare-fun m!2549657 () Bool)

(assert (=> b!2093950 m!2549657))

(assert (=> b!2093802 d!638472))

(declare-fun d!638474 () Bool)

(assert (=> d!638474 (= (list!9383 (_2!12796 lt!786728)) (list!9385 (c!337359 (_2!12796 lt!786728))))))

(declare-fun bs!437642 () Bool)

(assert (= bs!437642 d!638474))

(declare-fun m!2549659 () Bool)

(assert (=> bs!437642 m!2549659))

(assert (=> b!2093664 d!638474))

(declare-fun b!2093961 () Bool)

(declare-fun e!1329313 () Bool)

(declare-fun lt!786761 () tuple2!22212)

(assert (=> b!2093961 (= e!1329313 (= (_2!12798 lt!786761) (list!9383 input!986)))))

(declare-fun b!2093962 () Bool)

(declare-fun e!1329312 () tuple2!22212)

(assert (=> b!2093962 (= e!1329312 (tuple2!22213 Nil!23035 (list!9383 input!986)))))

(declare-fun b!2093963 () Bool)

(declare-datatypes ((tuple2!22214 0))(
  ( (tuple2!22215 (_1!12799 Token!7758) (_2!12799 List!23117)) )
))
(declare-datatypes ((Option!4826 0))(
  ( (None!4825) (Some!4825 (v!27638 tuple2!22214)) )
))
(declare-fun lt!786762 () Option!4826)

(declare-fun lt!786760 () tuple2!22212)

(assert (=> b!2093963 (= e!1329312 (tuple2!22213 (Cons!23035 (_1!12799 (v!27638 lt!786762)) (_1!12798 lt!786760)) (_2!12798 lt!786760)))))

(assert (=> b!2093963 (= lt!786760 (lexList!1028 thiss!12889 rules!1563 (_2!12799 (v!27638 lt!786762))))))

(declare-fun b!2093965 () Bool)

(declare-fun e!1329314 () Bool)

(assert (=> b!2093965 (= e!1329313 e!1329314)))

(declare-fun res!911619 () Bool)

(assert (=> b!2093965 (= res!911619 (< (size!17992 (_2!12798 lt!786761)) (size!17992 (list!9383 input!986))))))

(assert (=> b!2093965 (=> (not res!911619) (not e!1329314))))

(declare-fun b!2093964 () Bool)

(declare-fun isEmpty!14208 (List!23119) Bool)

(assert (=> b!2093964 (= e!1329314 (not (isEmpty!14208 (_1!12798 lt!786761))))))

(declare-fun d!638476 () Bool)

(assert (=> d!638476 e!1329313))

(declare-fun c!337422 () Bool)

(declare-fun size!17995 (List!23119) Int)

(assert (=> d!638476 (= c!337422 (> (size!17995 (_1!12798 lt!786761)) 0))))

(assert (=> d!638476 (= lt!786761 e!1329312)))

(declare-fun c!337423 () Bool)

(assert (=> d!638476 (= c!337423 ((_ is Some!4825) lt!786762))))

(declare-fun maxPrefix!2092 (LexerInterface!3708 List!23120 List!23117) Option!4826)

(assert (=> d!638476 (= lt!786762 (maxPrefix!2092 thiss!12889 rules!1563 (list!9383 input!986)))))

(assert (=> d!638476 (= (lexList!1028 thiss!12889 rules!1563 (list!9383 input!986)) lt!786761)))

(assert (= (and d!638476 c!337423) b!2093963))

(assert (= (and d!638476 (not c!337423)) b!2093962))

(assert (= (and d!638476 c!337422) b!2093965))

(assert (= (and d!638476 (not c!337422)) b!2093961))

(assert (= (and b!2093965 res!911619) b!2093964))

(declare-fun m!2549661 () Bool)

(assert (=> b!2093963 m!2549661))

(declare-fun m!2549663 () Bool)

(assert (=> b!2093965 m!2549663))

(assert (=> b!2093965 m!2549313))

(assert (=> b!2093965 m!2549373))

(declare-fun m!2549665 () Bool)

(assert (=> b!2093964 m!2549665))

(declare-fun m!2549667 () Bool)

(assert (=> d!638476 m!2549667))

(assert (=> d!638476 m!2549313))

(declare-fun m!2549669 () Bool)

(assert (=> d!638476 m!2549669))

(assert (=> b!2093664 d!638476))

(assert (=> b!2093664 d!638376))

(declare-fun bs!437643 () Bool)

(declare-fun d!638478 () Bool)

(assert (= bs!437643 (and d!638478 d!638444)))

(declare-fun lambda!77884 () Int)

(assert (=> bs!437643 (= lambda!77884 lambda!77879)))

(declare-fun bs!437644 () Bool)

(assert (= bs!437644 (and d!638478 d!638452)))

(assert (=> bs!437644 (= lambda!77884 lambda!77880)))

(assert (=> d!638478 (= (inv!30535 (_2!12794 (_1!12795 (h!28433 mapDefault!10500)))) (forall!4818 (exprs!1603 (_2!12794 (_1!12795 (h!28433 mapDefault!10500)))) lambda!77884))))

(declare-fun bs!437645 () Bool)

(assert (= bs!437645 d!638478))

(declare-fun m!2549671 () Bool)

(assert (=> bs!437645 m!2549671))

(assert (=> b!2093787 d!638478))

(declare-fun bs!437646 () Bool)

(declare-fun d!638480 () Bool)

(assert (= bs!437646 (and d!638480 d!638444)))

(declare-fun lambda!77885 () Int)

(assert (=> bs!437646 (= lambda!77885 lambda!77879)))

(declare-fun bs!437647 () Bool)

(assert (= bs!437647 (and d!638480 d!638452)))

(assert (=> bs!437647 (= lambda!77885 lambda!77880)))

(declare-fun bs!437648 () Bool)

(assert (= bs!437648 (and d!638480 d!638478)))

(assert (=> bs!437648 (= lambda!77885 lambda!77884)))

(assert (=> d!638480 (= (inv!30535 (_2!12794 (_1!12795 (h!28433 mapValue!10500)))) (forall!4818 (exprs!1603 (_2!12794 (_1!12795 (h!28433 mapValue!10500)))) lambda!77885))))

(declare-fun bs!437649 () Bool)

(assert (= bs!437649 d!638480))

(declare-fun m!2549673 () Bool)

(assert (=> bs!437649 m!2549673))

(assert (=> b!2093784 d!638480))

(declare-fun bs!437650 () Bool)

(declare-fun d!638482 () Bool)

(assert (= bs!437650 (and d!638482 d!638444)))

(declare-fun lambda!77886 () Int)

(assert (=> bs!437650 (= lambda!77886 lambda!77879)))

(declare-fun bs!437651 () Bool)

(assert (= bs!437651 (and d!638482 d!638452)))

(assert (=> bs!437651 (= lambda!77886 lambda!77880)))

(declare-fun bs!437652 () Bool)

(assert (= bs!437652 (and d!638482 d!638478)))

(assert (=> bs!437652 (= lambda!77886 lambda!77884)))

(declare-fun bs!437653 () Bool)

(assert (= bs!437653 (and d!638482 d!638480)))

(assert (=> bs!437653 (= lambda!77886 lambda!77885)))

(assert (=> d!638482 (= (inv!30535 setElem!13351) (forall!4818 (exprs!1603 setElem!13351) lambda!77886))))

(declare-fun bs!437654 () Bool)

(assert (= bs!437654 d!638482))

(declare-fun m!2549675 () Bool)

(assert (=> bs!437654 m!2549675))

(assert (=> setNonEmpty!13351 d!638482))

(declare-fun bs!437655 () Bool)

(declare-fun d!638484 () Bool)

(assert (= bs!437655 (and d!638484 d!638452)))

(declare-fun lambda!77887 () Int)

(assert (=> bs!437655 (= lambda!77887 lambda!77880)))

(declare-fun bs!437656 () Bool)

(assert (= bs!437656 (and d!638484 d!638480)))

(assert (=> bs!437656 (= lambda!77887 lambda!77885)))

(declare-fun bs!437657 () Bool)

(assert (= bs!437657 (and d!638484 d!638478)))

(assert (=> bs!437657 (= lambda!77887 lambda!77884)))

(declare-fun bs!437658 () Bool)

(assert (= bs!437658 (and d!638484 d!638444)))

(assert (=> bs!437658 (= lambda!77887 lambda!77879)))

(declare-fun bs!437659 () Bool)

(assert (= bs!437659 (and d!638484 d!638482)))

(assert (=> bs!437659 (= lambda!77887 lambda!77886)))

(assert (=> d!638484 (= (inv!30535 (_2!12794 (_1!12795 (h!28433 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))))) (forall!4818 (exprs!1603 (_2!12794 (_1!12795 (h!28433 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))))) lambda!77887))))

(declare-fun bs!437660 () Bool)

(assert (= bs!437660 d!638484))

(declare-fun m!2549677 () Bool)

(assert (=> bs!437660 m!2549677))

(assert (=> b!2093847 d!638484))

(declare-fun b!2093968 () Bool)

(declare-fun e!1329316 () List!23117)

(assert (=> b!2093968 (= e!1329316 (list!9387 (xs!10608 (c!337359 totalInput!418))))))

(declare-fun b!2093967 () Bool)

(declare-fun e!1329315 () List!23117)

(assert (=> b!2093967 (= e!1329315 e!1329316)))

(declare-fun c!337425 () Bool)

(assert (=> b!2093967 (= c!337425 ((_ is Leaf!11208) (c!337359 totalInput!418)))))

(declare-fun d!638486 () Bool)

(declare-fun c!337424 () Bool)

(assert (=> d!638486 (= c!337424 ((_ is Empty!7674) (c!337359 totalInput!418)))))

(assert (=> d!638486 (= (list!9385 (c!337359 totalInput!418)) e!1329315)))

(declare-fun b!2093966 () Bool)

(assert (=> b!2093966 (= e!1329315 Nil!23033)))

(declare-fun b!2093969 () Bool)

(assert (=> b!2093969 (= e!1329316 (++!6273 (list!9385 (left!18059 (c!337359 totalInput!418))) (list!9385 (right!18389 (c!337359 totalInput!418)))))))

(assert (= (and d!638486 c!337424) b!2093966))

(assert (= (and d!638486 (not c!337424)) b!2093967))

(assert (= (and b!2093967 c!337425) b!2093968))

(assert (= (and b!2093967 (not c!337425)) b!2093969))

(declare-fun m!2549679 () Bool)

(assert (=> b!2093968 m!2549679))

(declare-fun m!2549681 () Bool)

(assert (=> b!2093969 m!2549681))

(declare-fun m!2549683 () Bool)

(assert (=> b!2093969 m!2549683))

(assert (=> b!2093969 m!2549681))

(assert (=> b!2093969 m!2549683))

(declare-fun m!2549685 () Bool)

(assert (=> b!2093969 m!2549685))

(assert (=> d!638370 d!638486))

(declare-fun bs!437661 () Bool)

(declare-fun d!638488 () Bool)

(assert (= bs!437661 (and d!638488 d!638452)))

(declare-fun lambda!77888 () Int)

(assert (=> bs!437661 (= lambda!77888 lambda!77880)))

(declare-fun bs!437662 () Bool)

(assert (= bs!437662 (and d!638488 d!638480)))

(assert (=> bs!437662 (= lambda!77888 lambda!77885)))

(declare-fun bs!437663 () Bool)

(assert (= bs!437663 (and d!638488 d!638484)))

(assert (=> bs!437663 (= lambda!77888 lambda!77887)))

(declare-fun bs!437664 () Bool)

(assert (= bs!437664 (and d!638488 d!638478)))

(assert (=> bs!437664 (= lambda!77888 lambda!77884)))

(declare-fun bs!437665 () Bool)

(assert (= bs!437665 (and d!638488 d!638444)))

(assert (=> bs!437665 (= lambda!77888 lambda!77879)))

(declare-fun bs!437666 () Bool)

(assert (= bs!437666 (and d!638488 d!638482)))

(assert (=> bs!437666 (= lambda!77888 lambda!77886)))

(assert (=> d!638488 (= (inv!30535 (_2!12794 (_1!12795 (h!28433 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))))) (forall!4818 (exprs!1603 (_2!12794 (_1!12795 (h!28433 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))))) lambda!77888))))

(declare-fun bs!437667 () Bool)

(assert (= bs!437667 d!638488))

(declare-fun m!2549687 () Bool)

(assert (=> bs!437667 m!2549687))

(assert (=> b!2093844 d!638488))

(declare-fun d!638490 () Bool)

(assert (=> d!638490 (= (list!9384 (_1!12796 lt!786725)) (list!9386 (c!337360 (_1!12796 lt!786725))))))

(declare-fun bs!437668 () Bool)

(assert (= bs!437668 d!638490))

(declare-fun m!2549689 () Bool)

(assert (=> bs!437668 m!2549689))

(assert (=> b!2093660 d!638490))

(declare-fun b!2093970 () Bool)

(declare-fun e!1329318 () Bool)

(declare-fun lt!786764 () tuple2!22212)

(assert (=> b!2093970 (= e!1329318 (= (_2!12798 lt!786764) (list!9383 totalInput!418)))))

(declare-fun b!2093971 () Bool)

(declare-fun e!1329317 () tuple2!22212)

(assert (=> b!2093971 (= e!1329317 (tuple2!22213 Nil!23035 (list!9383 totalInput!418)))))

(declare-fun b!2093972 () Bool)

(declare-fun lt!786765 () Option!4826)

(declare-fun lt!786763 () tuple2!22212)

(assert (=> b!2093972 (= e!1329317 (tuple2!22213 (Cons!23035 (_1!12799 (v!27638 lt!786765)) (_1!12798 lt!786763)) (_2!12798 lt!786763)))))

(assert (=> b!2093972 (= lt!786763 (lexList!1028 thiss!12889 rules!1563 (_2!12799 (v!27638 lt!786765))))))

(declare-fun b!2093974 () Bool)

(declare-fun e!1329319 () Bool)

(assert (=> b!2093974 (= e!1329318 e!1329319)))

(declare-fun res!911620 () Bool)

(assert (=> b!2093974 (= res!911620 (< (size!17992 (_2!12798 lt!786764)) (size!17992 (list!9383 totalInput!418))))))

(assert (=> b!2093974 (=> (not res!911620) (not e!1329319))))

(declare-fun b!2093973 () Bool)

(assert (=> b!2093973 (= e!1329319 (not (isEmpty!14208 (_1!12798 lt!786764))))))

(declare-fun d!638492 () Bool)

(assert (=> d!638492 e!1329318))

(declare-fun c!337426 () Bool)

(assert (=> d!638492 (= c!337426 (> (size!17995 (_1!12798 lt!786764)) 0))))

(assert (=> d!638492 (= lt!786764 e!1329317)))

(declare-fun c!337427 () Bool)

(assert (=> d!638492 (= c!337427 ((_ is Some!4825) lt!786765))))

(assert (=> d!638492 (= lt!786765 (maxPrefix!2092 thiss!12889 rules!1563 (list!9383 totalInput!418)))))

(assert (=> d!638492 (= (lexList!1028 thiss!12889 rules!1563 (list!9383 totalInput!418)) lt!786764)))

(assert (= (and d!638492 c!337427) b!2093972))

(assert (= (and d!638492 (not c!337427)) b!2093971))

(assert (= (and d!638492 c!337426) b!2093974))

(assert (= (and d!638492 (not c!337426)) b!2093970))

(assert (= (and b!2093974 res!911620) b!2093973))

(declare-fun m!2549691 () Bool)

(assert (=> b!2093972 m!2549691))

(declare-fun m!2549693 () Bool)

(assert (=> b!2093974 m!2549693))

(assert (=> b!2093974 m!2549309))

(declare-fun m!2549695 () Bool)

(assert (=> b!2093974 m!2549695))

(declare-fun m!2549697 () Bool)

(assert (=> b!2093973 m!2549697))

(declare-fun m!2549699 () Bool)

(assert (=> d!638492 m!2549699))

(assert (=> d!638492 m!2549309))

(declare-fun m!2549701 () Bool)

(assert (=> d!638492 m!2549701))

(assert (=> b!2093660 d!638492))

(assert (=> b!2093660 d!638370))

(declare-fun d!638494 () Bool)

(declare-fun c!337430 () Bool)

(assert (=> d!638494 (= c!337430 ((_ is Nil!23033) lt!786718))))

(declare-fun e!1329322 () (InoxSet C!11212))

(assert (=> d!638494 (= (content!3372 lt!786718) e!1329322)))

(declare-fun b!2093979 () Bool)

(assert (=> b!2093979 (= e!1329322 ((as const (Array C!11212 Bool)) false))))

(declare-fun b!2093980 () Bool)

(assert (=> b!2093980 (= e!1329322 ((_ map or) (store ((as const (Array C!11212 Bool)) false) (h!28434 lt!786718) true) (content!3372 (t!195058 lt!786718))))))

(assert (= (and d!638494 c!337430) b!2093979))

(assert (= (and d!638494 (not c!337430)) b!2093980))

(declare-fun m!2549703 () Bool)

(assert (=> b!2093980 m!2549703))

(declare-fun m!2549705 () Bool)

(assert (=> b!2093980 m!2549705))

(assert (=> d!638372 d!638494))

(declare-fun d!638496 () Bool)

(declare-fun c!337431 () Bool)

(assert (=> d!638496 (= c!337431 ((_ is Nil!23033) (list!9383 treated!60)))))

(declare-fun e!1329323 () (InoxSet C!11212))

(assert (=> d!638496 (= (content!3372 (list!9383 treated!60)) e!1329323)))

(declare-fun b!2093981 () Bool)

(assert (=> b!2093981 (= e!1329323 ((as const (Array C!11212 Bool)) false))))

(declare-fun b!2093982 () Bool)

(assert (=> b!2093982 (= e!1329323 ((_ map or) (store ((as const (Array C!11212 Bool)) false) (h!28434 (list!9383 treated!60)) true) (content!3372 (t!195058 (list!9383 treated!60)))))))

(assert (= (and d!638496 c!337431) b!2093981))

(assert (= (and d!638496 (not c!337431)) b!2093982))

(declare-fun m!2549707 () Bool)

(assert (=> b!2093982 m!2549707))

(declare-fun m!2549709 () Bool)

(assert (=> b!2093982 m!2549709))

(assert (=> d!638372 d!638496))

(declare-fun d!638498 () Bool)

(declare-fun c!337432 () Bool)

(assert (=> d!638498 (= c!337432 ((_ is Nil!23033) (list!9383 input!986)))))

(declare-fun e!1329324 () (InoxSet C!11212))

(assert (=> d!638498 (= (content!3372 (list!9383 input!986)) e!1329324)))

(declare-fun b!2093983 () Bool)

(assert (=> b!2093983 (= e!1329324 ((as const (Array C!11212 Bool)) false))))

(declare-fun b!2093984 () Bool)

(assert (=> b!2093984 (= e!1329324 ((_ map or) (store ((as const (Array C!11212 Bool)) false) (h!28434 (list!9383 input!986)) true) (content!3372 (t!195058 (list!9383 input!986)))))))

(assert (= (and d!638498 c!337432) b!2093983))

(assert (= (and d!638498 (not c!337432)) b!2093984))

(declare-fun m!2549711 () Bool)

(assert (=> b!2093984 m!2549711))

(declare-fun m!2549713 () Bool)

(assert (=> b!2093984 m!2549713))

(assert (=> d!638372 d!638498))

(declare-fun d!638500 () Bool)

(declare-fun e!1329327 () Bool)

(assert (=> d!638500 e!1329327))

(declare-fun res!911623 () Bool)

(assert (=> d!638500 (=> (not res!911623) (not e!1329327))))

(declare-fun prepend!971 (Conc!7675 Token!7758) Conc!7675)

(assert (=> d!638500 (= res!911623 (isBalanced!2410 (prepend!971 (c!337360 (_1!12796 lt!786738)) (_1!12797 (v!27636 lt!786739)))))))

(declare-fun lt!786768 () BalanceConc!15112)

(assert (=> d!638500 (= lt!786768 (BalanceConc!15113 (prepend!971 (c!337360 (_1!12796 lt!786738)) (_1!12797 (v!27636 lt!786739)))))))

(assert (=> d!638500 (= (prepend!970 (_1!12796 lt!786738) (_1!12797 (v!27636 lt!786739))) lt!786768)))

(declare-fun b!2093987 () Bool)

(assert (=> b!2093987 (= e!1329327 (= (list!9384 lt!786768) (Cons!23035 (_1!12797 (v!27636 lt!786739)) (list!9384 (_1!12796 lt!786738)))))))

(assert (= (and d!638500 res!911623) b!2093987))

(declare-fun m!2549715 () Bool)

(assert (=> d!638500 m!2549715))

(assert (=> d!638500 m!2549715))

(declare-fun m!2549717 () Bool)

(assert (=> d!638500 m!2549717))

(declare-fun m!2549719 () Bool)

(assert (=> b!2093987 m!2549719))

(declare-fun m!2549721 () Bool)

(assert (=> b!2093987 m!2549721))

(assert (=> b!2093700 d!638500))

(declare-fun d!638502 () Bool)

(declare-fun e!1329329 () Bool)

(assert (=> d!638502 e!1329329))

(declare-fun res!911624 () Bool)

(assert (=> d!638502 (=> (not res!911624) (not e!1329329))))

(declare-fun e!1329330 () Bool)

(assert (=> d!638502 (= res!911624 e!1329330)))

(declare-fun c!337435 () Bool)

(declare-fun lt!786769 () tuple2!22208)

(assert (=> d!638502 (= c!337435 (> (size!17993 (_1!12796 lt!786769)) 0))))

(declare-fun e!1329328 () tuple2!22208)

(assert (=> d!638502 (= lt!786769 e!1329328)))

(declare-fun c!337434 () Bool)

(declare-fun lt!786771 () Option!4825)

(assert (=> d!638502 (= c!337434 ((_ is Some!4824) lt!786771))))

(assert (=> d!638502 (= lt!786771 (maxPrefixZipperSequence!837 thiss!12889 rules!1563 (_2!12797 (v!27636 lt!786739))))))

(assert (=> d!638502 (= (lexRec!502 thiss!12889 rules!1563 (_2!12797 (v!27636 lt!786739))) lt!786769)))

(declare-fun b!2093988 () Bool)

(assert (=> b!2093988 (= e!1329328 (tuple2!22209 (BalanceConc!15113 Empty!7675) (_2!12797 (v!27636 lt!786739))))))

(declare-fun b!2093989 () Bool)

(declare-fun lt!786770 () tuple2!22208)

(assert (=> b!2093989 (= e!1329328 (tuple2!22209 (prepend!970 (_1!12796 lt!786770) (_1!12797 (v!27636 lt!786771))) (_2!12796 lt!786770)))))

(assert (=> b!2093989 (= lt!786770 (lexRec!502 thiss!12889 rules!1563 (_2!12797 (v!27636 lt!786771))))))

(declare-fun b!2093990 () Bool)

(assert (=> b!2093990 (= e!1329329 (= (list!9383 (_2!12796 lt!786769)) (_2!12798 (lexList!1028 thiss!12889 rules!1563 (list!9383 (_2!12797 (v!27636 lt!786739)))))))))

(declare-fun b!2093991 () Bool)

(assert (=> b!2093991 (= e!1329330 (= (list!9383 (_2!12796 lt!786769)) (list!9383 (_2!12797 (v!27636 lt!786739)))))))

(declare-fun b!2093992 () Bool)

(declare-fun e!1329331 () Bool)

(assert (=> b!2093992 (= e!1329331 (not (isEmpty!14206 (_1!12796 lt!786769))))))

(declare-fun b!2093993 () Bool)

(declare-fun res!911626 () Bool)

(assert (=> b!2093993 (=> (not res!911626) (not e!1329329))))

(assert (=> b!2093993 (= res!911626 (= (list!9384 (_1!12796 lt!786769)) (_1!12798 (lexList!1028 thiss!12889 rules!1563 (list!9383 (_2!12797 (v!27636 lt!786739)))))))))

(declare-fun b!2093994 () Bool)

(assert (=> b!2093994 (= e!1329330 e!1329331)))

(declare-fun res!911625 () Bool)

(assert (=> b!2093994 (= res!911625 (< (size!17991 (_2!12796 lt!786769)) (size!17991 (_2!12797 (v!27636 lt!786739)))))))

(assert (=> b!2093994 (=> (not res!911625) (not e!1329331))))

(assert (= (and d!638502 c!337434) b!2093989))

(assert (= (and d!638502 (not c!337434)) b!2093988))

(assert (= (and d!638502 c!337435) b!2093994))

(assert (= (and d!638502 (not c!337435)) b!2093991))

(assert (= (and b!2093994 res!911625) b!2093992))

(assert (= (and d!638502 res!911624) b!2093993))

(assert (= (and b!2093993 res!911626) b!2093990))

(declare-fun m!2549723 () Bool)

(assert (=> b!2093993 m!2549723))

(declare-fun m!2549725 () Bool)

(assert (=> b!2093993 m!2549725))

(assert (=> b!2093993 m!2549725))

(declare-fun m!2549727 () Bool)

(assert (=> b!2093993 m!2549727))

(declare-fun m!2549729 () Bool)

(assert (=> d!638502 m!2549729))

(declare-fun m!2549731 () Bool)

(assert (=> d!638502 m!2549731))

(declare-fun m!2549733 () Bool)

(assert (=> b!2093989 m!2549733))

(declare-fun m!2549735 () Bool)

(assert (=> b!2093989 m!2549735))

(declare-fun m!2549737 () Bool)

(assert (=> b!2093994 m!2549737))

(declare-fun m!2549739 () Bool)

(assert (=> b!2093994 m!2549739))

(declare-fun m!2549741 () Bool)

(assert (=> b!2093992 m!2549741))

(declare-fun m!2549743 () Bool)

(assert (=> b!2093990 m!2549743))

(assert (=> b!2093990 m!2549725))

(assert (=> b!2093990 m!2549725))

(assert (=> b!2093990 m!2549727))

(assert (=> b!2093991 m!2549743))

(assert (=> b!2093991 m!2549725))

(assert (=> b!2093700 d!638502))

(declare-fun d!638504 () Bool)

(declare-fun lt!786772 () Int)

(assert (=> d!638504 (= lt!786772 (size!17992 (list!9383 (_2!12796 lt!786728))))))

(assert (=> d!638504 (= lt!786772 (size!17994 (c!337359 (_2!12796 lt!786728))))))

(assert (=> d!638504 (= (size!17991 (_2!12796 lt!786728)) lt!786772)))

(declare-fun bs!437669 () Bool)

(assert (= bs!437669 d!638504))

(assert (=> bs!437669 m!2549423))

(assert (=> bs!437669 m!2549423))

(declare-fun m!2549745 () Bool)

(assert (=> bs!437669 m!2549745))

(declare-fun m!2549747 () Bool)

(assert (=> bs!437669 m!2549747))

(assert (=> b!2093668 d!638504))

(assert (=> b!2093668 d!638408))

(declare-fun d!638506 () Bool)

(declare-fun e!1329332 () Bool)

(assert (=> d!638506 e!1329332))

(declare-fun res!911627 () Bool)

(assert (=> d!638506 (=> (not res!911627) (not e!1329332))))

(assert (=> d!638506 (= res!911627 (isBalanced!2410 (prepend!971 (c!337360 (_1!12796 lt!786726)) (_1!12797 (v!27636 lt!786727)))))))

(declare-fun lt!786773 () BalanceConc!15112)

(assert (=> d!638506 (= lt!786773 (BalanceConc!15113 (prepend!971 (c!337360 (_1!12796 lt!786726)) (_1!12797 (v!27636 lt!786727)))))))

(assert (=> d!638506 (= (prepend!970 (_1!12796 lt!786726) (_1!12797 (v!27636 lt!786727))) lt!786773)))

(declare-fun b!2093995 () Bool)

(assert (=> b!2093995 (= e!1329332 (= (list!9384 lt!786773) (Cons!23035 (_1!12797 (v!27636 lt!786727)) (list!9384 (_1!12796 lt!786726)))))))

(assert (= (and d!638506 res!911627) b!2093995))

(declare-fun m!2549749 () Bool)

(assert (=> d!638506 m!2549749))

(assert (=> d!638506 m!2549749))

(declare-fun m!2549751 () Bool)

(assert (=> d!638506 m!2549751))

(declare-fun m!2549753 () Bool)

(assert (=> b!2093995 m!2549753))

(declare-fun m!2549755 () Bool)

(assert (=> b!2093995 m!2549755))

(assert (=> b!2093656 d!638506))

(declare-fun d!638508 () Bool)

(declare-fun e!1329334 () Bool)

(assert (=> d!638508 e!1329334))

(declare-fun res!911628 () Bool)

(assert (=> d!638508 (=> (not res!911628) (not e!1329334))))

(declare-fun e!1329335 () Bool)

(assert (=> d!638508 (= res!911628 e!1329335)))

(declare-fun c!337437 () Bool)

(declare-fun lt!786774 () tuple2!22208)

(assert (=> d!638508 (= c!337437 (> (size!17993 (_1!12796 lt!786774)) 0))))

(declare-fun e!1329333 () tuple2!22208)

(assert (=> d!638508 (= lt!786774 e!1329333)))

(declare-fun c!337436 () Bool)

(declare-fun lt!786776 () Option!4825)

(assert (=> d!638508 (= c!337436 ((_ is Some!4824) lt!786776))))

(assert (=> d!638508 (= lt!786776 (maxPrefixZipperSequence!837 thiss!12889 rules!1563 (_2!12797 (v!27636 lt!786727))))))

(assert (=> d!638508 (= (lexRec!502 thiss!12889 rules!1563 (_2!12797 (v!27636 lt!786727))) lt!786774)))

(declare-fun b!2093996 () Bool)

(assert (=> b!2093996 (= e!1329333 (tuple2!22209 (BalanceConc!15113 Empty!7675) (_2!12797 (v!27636 lt!786727))))))

(declare-fun b!2093997 () Bool)

(declare-fun lt!786775 () tuple2!22208)

(assert (=> b!2093997 (= e!1329333 (tuple2!22209 (prepend!970 (_1!12796 lt!786775) (_1!12797 (v!27636 lt!786776))) (_2!12796 lt!786775)))))

(assert (=> b!2093997 (= lt!786775 (lexRec!502 thiss!12889 rules!1563 (_2!12797 (v!27636 lt!786776))))))

(declare-fun b!2093998 () Bool)

(assert (=> b!2093998 (= e!1329334 (= (list!9383 (_2!12796 lt!786774)) (_2!12798 (lexList!1028 thiss!12889 rules!1563 (list!9383 (_2!12797 (v!27636 lt!786727)))))))))

(declare-fun b!2093999 () Bool)

(assert (=> b!2093999 (= e!1329335 (= (list!9383 (_2!12796 lt!786774)) (list!9383 (_2!12797 (v!27636 lt!786727)))))))

(declare-fun b!2094000 () Bool)

(declare-fun e!1329336 () Bool)

(assert (=> b!2094000 (= e!1329336 (not (isEmpty!14206 (_1!12796 lt!786774))))))

(declare-fun b!2094001 () Bool)

(declare-fun res!911630 () Bool)

(assert (=> b!2094001 (=> (not res!911630) (not e!1329334))))

(assert (=> b!2094001 (= res!911630 (= (list!9384 (_1!12796 lt!786774)) (_1!12798 (lexList!1028 thiss!12889 rules!1563 (list!9383 (_2!12797 (v!27636 lt!786727)))))))))

(declare-fun b!2094002 () Bool)

(assert (=> b!2094002 (= e!1329335 e!1329336)))

(declare-fun res!911629 () Bool)

(assert (=> b!2094002 (= res!911629 (< (size!17991 (_2!12796 lt!786774)) (size!17991 (_2!12797 (v!27636 lt!786727)))))))

(assert (=> b!2094002 (=> (not res!911629) (not e!1329336))))

(assert (= (and d!638508 c!337436) b!2093997))

(assert (= (and d!638508 (not c!337436)) b!2093996))

(assert (= (and d!638508 c!337437) b!2094002))

(assert (= (and d!638508 (not c!337437)) b!2093999))

(assert (= (and b!2094002 res!911629) b!2094000))

(assert (= (and d!638508 res!911628) b!2094001))

(assert (= (and b!2094001 res!911630) b!2093998))

(declare-fun m!2549757 () Bool)

(assert (=> b!2094001 m!2549757))

(declare-fun m!2549759 () Bool)

(assert (=> b!2094001 m!2549759))

(assert (=> b!2094001 m!2549759))

(declare-fun m!2549761 () Bool)

(assert (=> b!2094001 m!2549761))

(declare-fun m!2549763 () Bool)

(assert (=> d!638508 m!2549763))

(declare-fun m!2549765 () Bool)

(assert (=> d!638508 m!2549765))

(declare-fun m!2549767 () Bool)

(assert (=> b!2093997 m!2549767))

(declare-fun m!2549769 () Bool)

(assert (=> b!2093997 m!2549769))

(declare-fun m!2549771 () Bool)

(assert (=> b!2094002 m!2549771))

(declare-fun m!2549773 () Bool)

(assert (=> b!2094002 m!2549773))

(declare-fun m!2549775 () Bool)

(assert (=> b!2094000 m!2549775))

(declare-fun m!2549777 () Bool)

(assert (=> b!2093998 m!2549777))

(assert (=> b!2093998 m!2549759))

(assert (=> b!2093998 m!2549759))

(assert (=> b!2093998 m!2549761))

(assert (=> b!2093999 m!2549777))

(assert (=> b!2093999 m!2549759))

(assert (=> b!2093656 d!638508))

(declare-fun d!638510 () Bool)

(declare-fun res!911637 () Bool)

(declare-fun e!1329339 () Bool)

(assert (=> d!638510 (=> (not res!911637) (not e!1329339))))

(assert (=> d!638510 (= res!911637 (= (csize!15578 (c!337359 input!986)) (+ (size!17994 (left!18059 (c!337359 input!986))) (size!17994 (right!18389 (c!337359 input!986))))))))

(assert (=> d!638510 (= (inv!30533 (c!337359 input!986)) e!1329339)))

(declare-fun b!2094009 () Bool)

(declare-fun res!911638 () Bool)

(assert (=> b!2094009 (=> (not res!911638) (not e!1329339))))

(assert (=> b!2094009 (= res!911638 (and (not (= (left!18059 (c!337359 input!986)) Empty!7674)) (not (= (right!18389 (c!337359 input!986)) Empty!7674))))))

(declare-fun b!2094010 () Bool)

(declare-fun res!911639 () Bool)

(assert (=> b!2094010 (=> (not res!911639) (not e!1329339))))

(declare-fun height!1221 (Conc!7674) Int)

(assert (=> b!2094010 (= res!911639 (= (cheight!7885 (c!337359 input!986)) (+ (max!0 (height!1221 (left!18059 (c!337359 input!986))) (height!1221 (right!18389 (c!337359 input!986)))) 1)))))

(declare-fun b!2094011 () Bool)

(assert (=> b!2094011 (= e!1329339 (<= 0 (cheight!7885 (c!337359 input!986))))))

(assert (= (and d!638510 res!911637) b!2094009))

(assert (= (and b!2094009 res!911638) b!2094010))

(assert (= (and b!2094010 res!911639) b!2094011))

(declare-fun m!2549779 () Bool)

(assert (=> d!638510 m!2549779))

(declare-fun m!2549781 () Bool)

(assert (=> d!638510 m!2549781))

(declare-fun m!2549783 () Bool)

(assert (=> b!2094010 m!2549783))

(declare-fun m!2549785 () Bool)

(assert (=> b!2094010 m!2549785))

(assert (=> b!2094010 m!2549783))

(assert (=> b!2094010 m!2549785))

(declare-fun m!2549787 () Bool)

(assert (=> b!2094010 m!2549787))

(assert (=> b!2093690 d!638510))

(declare-fun bs!437670 () Bool)

(declare-fun d!638512 () Bool)

(assert (= bs!437670 (and d!638512 d!638452)))

(declare-fun lambda!77889 () Int)

(assert (=> bs!437670 (= lambda!77889 lambda!77880)))

(declare-fun bs!437671 () Bool)

(assert (= bs!437671 (and d!638512 d!638480)))

(assert (=> bs!437671 (= lambda!77889 lambda!77885)))

(declare-fun bs!437672 () Bool)

(assert (= bs!437672 (and d!638512 d!638488)))

(assert (=> bs!437672 (= lambda!77889 lambda!77888)))

(declare-fun bs!437673 () Bool)

(assert (= bs!437673 (and d!638512 d!638484)))

(assert (=> bs!437673 (= lambda!77889 lambda!77887)))

(declare-fun bs!437674 () Bool)

(assert (= bs!437674 (and d!638512 d!638478)))

(assert (=> bs!437674 (= lambda!77889 lambda!77884)))

(declare-fun bs!437675 () Bool)

(assert (= bs!437675 (and d!638512 d!638444)))

(assert (=> bs!437675 (= lambda!77889 lambda!77879)))

(declare-fun bs!437676 () Bool)

(assert (= bs!437676 (and d!638512 d!638482)))

(assert (=> bs!437676 (= lambda!77889 lambda!77886)))

(assert (=> d!638512 (= (inv!30535 (_1!12792 (_1!12793 (h!28432 mapValue!10507)))) (forall!4818 (exprs!1603 (_1!12792 (_1!12793 (h!28432 mapValue!10507)))) lambda!77889))))

(declare-fun bs!437677 () Bool)

(assert (= bs!437677 d!638512))

(declare-fun m!2549789 () Bool)

(assert (=> bs!437677 m!2549789))

(assert (=> b!2093821 d!638512))

(declare-fun b!2094014 () Bool)

(declare-fun e!1329341 () List!23117)

(assert (=> b!2094014 (= e!1329341 (list!9387 (xs!10608 (c!337359 (_2!12796 lt!786711)))))))

(declare-fun b!2094013 () Bool)

(declare-fun e!1329340 () List!23117)

(assert (=> b!2094013 (= e!1329340 e!1329341)))

(declare-fun c!337439 () Bool)

(assert (=> b!2094013 (= c!337439 ((_ is Leaf!11208) (c!337359 (_2!12796 lt!786711))))))

(declare-fun d!638514 () Bool)

(declare-fun c!337438 () Bool)

(assert (=> d!638514 (= c!337438 ((_ is Empty!7674) (c!337359 (_2!12796 lt!786711))))))

(assert (=> d!638514 (= (list!9385 (c!337359 (_2!12796 lt!786711))) e!1329340)))

(declare-fun b!2094012 () Bool)

(assert (=> b!2094012 (= e!1329340 Nil!23033)))

(declare-fun b!2094015 () Bool)

(assert (=> b!2094015 (= e!1329341 (++!6273 (list!9385 (left!18059 (c!337359 (_2!12796 lt!786711)))) (list!9385 (right!18389 (c!337359 (_2!12796 lt!786711))))))))

(assert (= (and d!638514 c!337438) b!2094012))

(assert (= (and d!638514 (not c!337438)) b!2094013))

(assert (= (and b!2094013 c!337439) b!2094014))

(assert (= (and b!2094013 (not c!337439)) b!2094015))

(declare-fun m!2549791 () Bool)

(assert (=> b!2094014 m!2549791))

(declare-fun m!2549793 () Bool)

(assert (=> b!2094015 m!2549793))

(declare-fun m!2549795 () Bool)

(assert (=> b!2094015 m!2549795))

(assert (=> b!2094015 m!2549793))

(assert (=> b!2094015 m!2549795))

(declare-fun m!2549797 () Bool)

(assert (=> b!2094015 m!2549797))

(assert (=> d!638422 d!638514))

(assert (=> b!2093679 d!638454))

(assert (=> b!2093679 d!638456))

(assert (=> b!2093679 d!638458))

(assert (=> b!2093679 d!638460))

(assert (=> b!2093679 d!638462))

(assert (=> b!2093604 d!638384))

(declare-fun d!638516 () Bool)

(declare-fun lt!786779 () Int)

(assert (=> d!638516 (= lt!786779 (size!17995 (list!9384 (_1!12796 lt!786728))))))

(declare-fun size!17996 (Conc!7675) Int)

(assert (=> d!638516 (= lt!786779 (size!17996 (c!337360 (_1!12796 lt!786728))))))

(assert (=> d!638516 (= (size!17993 (_1!12796 lt!786728)) lt!786779)))

(declare-fun bs!437678 () Bool)

(assert (= bs!437678 d!638516))

(assert (=> bs!437678 m!2549407))

(assert (=> bs!437678 m!2549407))

(declare-fun m!2549799 () Bool)

(assert (=> bs!437678 m!2549799))

(declare-fun m!2549801 () Bool)

(assert (=> bs!437678 m!2549801))

(assert (=> d!638388 d!638516))

(declare-fun b!2094032 () Bool)

(declare-fun e!1329354 () Bool)

(declare-fun e!1329358 () Bool)

(assert (=> b!2094032 (= e!1329354 e!1329358)))

(declare-fun res!911654 () Bool)

(assert (=> b!2094032 (=> (not res!911654) (not e!1329358))))

(declare-fun lt!786800 () Option!4825)

(declare-fun get!7219 (Option!4825) tuple2!22210)

(declare-fun get!7220 (Option!4826) tuple2!22214)

(assert (=> b!2094032 (= res!911654 (= (_1!12797 (get!7219 lt!786800)) (_1!12799 (get!7220 (maxPrefix!2092 thiss!12889 rules!1563 (list!9383 input!986))))))))

(declare-fun b!2094034 () Bool)

(declare-fun res!911653 () Bool)

(declare-fun e!1329356 () Bool)

(assert (=> b!2094034 (=> (not res!911653) (not e!1329356))))

(declare-fun e!1329359 () Bool)

(assert (=> b!2094034 (= res!911653 e!1329359)))

(declare-fun res!911652 () Bool)

(assert (=> b!2094034 (=> res!911652 e!1329359)))

(declare-fun isDefined!4053 (Option!4825) Bool)

(assert (=> b!2094034 (= res!911652 (not (isDefined!4053 lt!786800)))))

(declare-fun bm!127873 () Bool)

(declare-fun call!127878 () Option!4825)

(declare-fun maxPrefixOneRuleZipperSequence!424 (LexerInterface!3708 Rule!8010 BalanceConc!15110) Option!4825)

(assert (=> bm!127873 (= call!127878 (maxPrefixOneRuleZipperSequence!424 thiss!12889 (h!28437 rules!1563) input!986))))

(declare-fun b!2094035 () Bool)

(assert (=> b!2094035 (= e!1329358 (= (list!9383 (_2!12797 (get!7219 lt!786800))) (_2!12799 (get!7220 (maxPrefix!2092 thiss!12889 rules!1563 (list!9383 input!986))))))))

(declare-fun b!2094036 () Bool)

(declare-fun e!1329357 () Bool)

(assert (=> b!2094036 (= e!1329359 e!1329357)))

(declare-fun res!911656 () Bool)

(assert (=> b!2094036 (=> (not res!911656) (not e!1329357))))

(declare-fun maxPrefixZipper!413 (LexerInterface!3708 List!23120 List!23117) Option!4826)

(assert (=> b!2094036 (= res!911656 (= (_1!12797 (get!7219 lt!786800)) (_1!12799 (get!7220 (maxPrefixZipper!413 thiss!12889 rules!1563 (list!9383 input!986))))))))

(declare-fun b!2094037 () Bool)

(declare-fun e!1329355 () Option!4825)

(assert (=> b!2094037 (= e!1329355 call!127878)))

(declare-fun b!2094038 () Bool)

(assert (=> b!2094038 (= e!1329357 (= (list!9383 (_2!12797 (get!7219 lt!786800))) (_2!12799 (get!7220 (maxPrefixZipper!413 thiss!12889 rules!1563 (list!9383 input!986))))))))

(declare-fun b!2094039 () Bool)

(assert (=> b!2094039 (= e!1329356 e!1329354)))

(declare-fun res!911657 () Bool)

(assert (=> b!2094039 (=> res!911657 e!1329354)))

(assert (=> b!2094039 (= res!911657 (not (isDefined!4053 lt!786800)))))

(declare-fun d!638518 () Bool)

(assert (=> d!638518 e!1329356))

(declare-fun res!911655 () Bool)

(assert (=> d!638518 (=> (not res!911655) (not e!1329356))))

(declare-fun isDefined!4054 (Option!4826) Bool)

(assert (=> d!638518 (= res!911655 (= (isDefined!4053 lt!786800) (isDefined!4054 (maxPrefixZipper!413 thiss!12889 rules!1563 (list!9383 input!986)))))))

(assert (=> d!638518 (= lt!786800 e!1329355)))

(declare-fun c!337442 () Bool)

(assert (=> d!638518 (= c!337442 (and ((_ is Cons!23036) rules!1563) ((_ is Nil!23036) (t!195061 rules!1563))))))

(declare-datatypes ((Unit!37349 0))(
  ( (Unit!37350) )
))
(declare-fun lt!786798 () Unit!37349)

(declare-fun lt!786794 () Unit!37349)

(assert (=> d!638518 (= lt!786798 lt!786794)))

(declare-fun lt!786799 () List!23117)

(declare-fun lt!786795 () List!23117)

(declare-fun isPrefix!2046 (List!23117 List!23117) Bool)

(assert (=> d!638518 (isPrefix!2046 lt!786799 lt!786795)))

(declare-fun lemmaIsPrefixRefl!1364 (List!23117 List!23117) Unit!37349)

(assert (=> d!638518 (= lt!786794 (lemmaIsPrefixRefl!1364 lt!786799 lt!786795))))

(assert (=> d!638518 (= lt!786795 (list!9383 input!986))))

(assert (=> d!638518 (= lt!786799 (list!9383 input!986))))

(declare-fun rulesValidInductive!1432 (LexerInterface!3708 List!23120) Bool)

(assert (=> d!638518 (rulesValidInductive!1432 thiss!12889 rules!1563)))

(assert (=> d!638518 (= (maxPrefixZipperSequence!837 thiss!12889 rules!1563 input!986) lt!786800)))

(declare-fun b!2094033 () Bool)

(declare-fun lt!786796 () Option!4825)

(declare-fun lt!786797 () Option!4825)

(assert (=> b!2094033 (= e!1329355 (ite (and ((_ is None!4824) lt!786796) ((_ is None!4824) lt!786797)) None!4824 (ite ((_ is None!4824) lt!786797) lt!786796 (ite ((_ is None!4824) lt!786796) lt!786797 (ite (>= (size!17990 (_1!12797 (v!27636 lt!786796))) (size!17990 (_1!12797 (v!27636 lt!786797)))) lt!786796 lt!786797)))))))

(assert (=> b!2094033 (= lt!786796 call!127878)))

(assert (=> b!2094033 (= lt!786797 (maxPrefixZipperSequence!837 thiss!12889 (t!195061 rules!1563) input!986))))

(assert (= (and d!638518 c!337442) b!2094037))

(assert (= (and d!638518 (not c!337442)) b!2094033))

(assert (= (or b!2094037 b!2094033) bm!127873))

(assert (= (and d!638518 res!911655) b!2094034))

(assert (= (and b!2094034 (not res!911652)) b!2094036))

(assert (= (and b!2094036 res!911656) b!2094038))

(assert (= (and b!2094034 res!911653) b!2094039))

(assert (= (and b!2094039 (not res!911657)) b!2094032))

(assert (= (and b!2094032 res!911654) b!2094035))

(declare-fun m!2549803 () Bool)

(assert (=> b!2094032 m!2549803))

(assert (=> b!2094032 m!2549313))

(assert (=> b!2094032 m!2549313))

(assert (=> b!2094032 m!2549669))

(assert (=> b!2094032 m!2549669))

(declare-fun m!2549805 () Bool)

(assert (=> b!2094032 m!2549805))

(declare-fun m!2549807 () Bool)

(assert (=> b!2094033 m!2549807))

(assert (=> b!2094036 m!2549803))

(assert (=> b!2094036 m!2549313))

(assert (=> b!2094036 m!2549313))

(declare-fun m!2549809 () Bool)

(assert (=> b!2094036 m!2549809))

(assert (=> b!2094036 m!2549809))

(declare-fun m!2549811 () Bool)

(assert (=> b!2094036 m!2549811))

(declare-fun m!2549813 () Bool)

(assert (=> b!2094034 m!2549813))

(declare-fun m!2549815 () Bool)

(assert (=> bm!127873 m!2549815))

(assert (=> d!638518 m!2549809))

(declare-fun m!2549817 () Bool)

(assert (=> d!638518 m!2549817))

(declare-fun m!2549819 () Bool)

(assert (=> d!638518 m!2549819))

(assert (=> d!638518 m!2549813))

(declare-fun m!2549821 () Bool)

(assert (=> d!638518 m!2549821))

(assert (=> d!638518 m!2549313))

(assert (=> d!638518 m!2549809))

(declare-fun m!2549823 () Bool)

(assert (=> d!638518 m!2549823))

(assert (=> d!638518 m!2549313))

(declare-fun m!2549825 () Bool)

(assert (=> b!2094035 m!2549825))

(assert (=> b!2094035 m!2549669))

(assert (=> b!2094035 m!2549805))

(assert (=> b!2094035 m!2549313))

(assert (=> b!2094035 m!2549803))

(assert (=> b!2094035 m!2549313))

(assert (=> b!2094035 m!2549669))

(assert (=> b!2094038 m!2549825))

(assert (=> b!2094038 m!2549313))

(assert (=> b!2094038 m!2549809))

(assert (=> b!2094038 m!2549313))

(assert (=> b!2094038 m!2549803))

(assert (=> b!2094038 m!2549809))

(assert (=> b!2094038 m!2549811))

(assert (=> b!2094039 m!2549813))

(assert (=> d!638388 d!638518))

(declare-fun d!638520 () Bool)

(assert (=> d!638520 (= (list!9383 (_2!12796 lt!786737)) (list!9385 (c!337359 (_2!12796 lt!786737))))))

(declare-fun bs!437679 () Bool)

(assert (= bs!437679 d!638520))

(declare-fun m!2549827 () Bool)

(assert (=> bs!437679 m!2549827))

(assert (=> b!2093702 d!638520))

(assert (=> b!2093702 d!638374))

(declare-fun b!2094050 () Bool)

(declare-fun e!1329365 () List!23119)

(declare-fun list!9388 (IArray!15355) List!23119)

(assert (=> b!2094050 (= e!1329365 (list!9388 (xs!10609 (c!337360 acc!382))))))

(declare-fun d!638522 () Bool)

(declare-fun c!337447 () Bool)

(assert (=> d!638522 (= c!337447 ((_ is Empty!7675) (c!337360 acc!382)))))

(declare-fun e!1329364 () List!23119)

(assert (=> d!638522 (= (list!9386 (c!337360 acc!382)) e!1329364)))

(declare-fun b!2094048 () Bool)

(assert (=> b!2094048 (= e!1329364 Nil!23035)))

(declare-fun b!2094051 () Bool)

(assert (=> b!2094051 (= e!1329365 (++!6276 (list!9386 (left!18060 (c!337360 acc!382))) (list!9386 (right!18390 (c!337360 acc!382)))))))

(declare-fun b!2094049 () Bool)

(assert (=> b!2094049 (= e!1329364 e!1329365)))

(declare-fun c!337448 () Bool)

(assert (=> b!2094049 (= c!337448 ((_ is Leaf!11209) (c!337360 acc!382)))))

(assert (= (and d!638522 c!337447) b!2094048))

(assert (= (and d!638522 (not c!337447)) b!2094049))

(assert (= (and b!2094049 c!337448) b!2094050))

(assert (= (and b!2094049 (not c!337448)) b!2094051))

(declare-fun m!2549829 () Bool)

(assert (=> b!2094050 m!2549829))

(declare-fun m!2549831 () Bool)

(assert (=> b!2094051 m!2549831))

(declare-fun m!2549833 () Bool)

(assert (=> b!2094051 m!2549833))

(assert (=> b!2094051 m!2549831))

(assert (=> b!2094051 m!2549833))

(declare-fun m!2549835 () Bool)

(assert (=> b!2094051 m!2549835))

(assert (=> d!638418 d!638522))

(declare-fun bs!437680 () Bool)

(declare-fun d!638524 () Bool)

(assert (= bs!437680 (and d!638524 d!638452)))

(declare-fun lambda!77890 () Int)

(assert (=> bs!437680 (= lambda!77890 lambda!77880)))

(declare-fun bs!437681 () Bool)

(assert (= bs!437681 (and d!638524 d!638480)))

(assert (=> bs!437681 (= lambda!77890 lambda!77885)))

(declare-fun bs!437682 () Bool)

(assert (= bs!437682 (and d!638524 d!638488)))

(assert (=> bs!437682 (= lambda!77890 lambda!77888)))

(declare-fun bs!437683 () Bool)

(assert (= bs!437683 (and d!638524 d!638484)))

(assert (=> bs!437683 (= lambda!77890 lambda!77887)))

(declare-fun bs!437684 () Bool)

(assert (= bs!437684 (and d!638524 d!638478)))

(assert (=> bs!437684 (= lambda!77890 lambda!77884)))

(declare-fun bs!437685 () Bool)

(assert (= bs!437685 (and d!638524 d!638444)))

(assert (=> bs!437685 (= lambda!77890 lambda!77879)))

(declare-fun bs!437686 () Bool)

(assert (= bs!437686 (and d!638524 d!638482)))

(assert (=> bs!437686 (= lambda!77890 lambda!77886)))

(declare-fun bs!437687 () Bool)

(assert (= bs!437687 (and d!638524 d!638512)))

(assert (=> bs!437687 (= lambda!77890 lambda!77889)))

(assert (=> d!638524 (= (inv!30535 (_1!12792 (_1!12793 (h!28432 (minValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))))) (forall!4818 (exprs!1603 (_1!12792 (_1!12793 (h!28432 (minValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))))) lambda!77890))))

(declare-fun bs!437688 () Bool)

(assert (= bs!437688 d!638524))

(declare-fun m!2549837 () Bool)

(assert (=> bs!437688 m!2549837))

(assert (=> b!2093726 d!638524))

(declare-fun bs!437689 () Bool)

(declare-fun d!638526 () Bool)

(assert (= bs!437689 (and d!638526 d!638452)))

(declare-fun lambda!77891 () Int)

(assert (=> bs!437689 (= lambda!77891 lambda!77880)))

(declare-fun bs!437690 () Bool)

(assert (= bs!437690 (and d!638526 d!638480)))

(assert (=> bs!437690 (= lambda!77891 lambda!77885)))

(declare-fun bs!437691 () Bool)

(assert (= bs!437691 (and d!638526 d!638488)))

(assert (=> bs!437691 (= lambda!77891 lambda!77888)))

(declare-fun bs!437692 () Bool)

(assert (= bs!437692 (and d!638526 d!638484)))

(assert (=> bs!437692 (= lambda!77891 lambda!77887)))

(declare-fun bs!437693 () Bool)

(assert (= bs!437693 (and d!638526 d!638524)))

(assert (=> bs!437693 (= lambda!77891 lambda!77890)))

(declare-fun bs!437694 () Bool)

(assert (= bs!437694 (and d!638526 d!638478)))

(assert (=> bs!437694 (= lambda!77891 lambda!77884)))

(declare-fun bs!437695 () Bool)

(assert (= bs!437695 (and d!638526 d!638444)))

(assert (=> bs!437695 (= lambda!77891 lambda!77879)))

(declare-fun bs!437696 () Bool)

(assert (= bs!437696 (and d!638526 d!638482)))

(assert (=> bs!437696 (= lambda!77891 lambda!77886)))

(declare-fun bs!437697 () Bool)

(assert (= bs!437697 (and d!638526 d!638512)))

(assert (=> bs!437697 (= lambda!77891 lambda!77889)))

(assert (=> d!638526 (= (inv!30535 setElem!13360) (forall!4818 (exprs!1603 setElem!13360) lambda!77891))))

(declare-fun bs!437698 () Bool)

(assert (= bs!437698 d!638526))

(declare-fun m!2549839 () Bool)

(assert (=> bs!437698 m!2549839))

(assert (=> setNonEmpty!13360 d!638526))

(declare-fun bs!437699 () Bool)

(declare-fun d!638528 () Bool)

(assert (= bs!437699 (and d!638528 d!638452)))

(declare-fun lambda!77892 () Int)

(assert (=> bs!437699 (= lambda!77892 lambda!77880)))

(declare-fun bs!437700 () Bool)

(assert (= bs!437700 (and d!638528 d!638480)))

(assert (=> bs!437700 (= lambda!77892 lambda!77885)))

(declare-fun bs!437701 () Bool)

(assert (= bs!437701 (and d!638528 d!638488)))

(assert (=> bs!437701 (= lambda!77892 lambda!77888)))

(declare-fun bs!437702 () Bool)

(assert (= bs!437702 (and d!638528 d!638484)))

(assert (=> bs!437702 (= lambda!77892 lambda!77887)))

(declare-fun bs!437703 () Bool)

(assert (= bs!437703 (and d!638528 d!638524)))

(assert (=> bs!437703 (= lambda!77892 lambda!77890)))

(declare-fun bs!437704 () Bool)

(assert (= bs!437704 (and d!638528 d!638478)))

(assert (=> bs!437704 (= lambda!77892 lambda!77884)))

(declare-fun bs!437705 () Bool)

(assert (= bs!437705 (and d!638528 d!638444)))

(assert (=> bs!437705 (= lambda!77892 lambda!77879)))

(declare-fun bs!437706 () Bool)

(assert (= bs!437706 (and d!638528 d!638482)))

(assert (=> bs!437706 (= lambda!77892 lambda!77886)))

(declare-fun bs!437707 () Bool)

(assert (= bs!437707 (and d!638528 d!638512)))

(assert (=> bs!437707 (= lambda!77892 lambda!77889)))

(declare-fun bs!437708 () Bool)

(assert (= bs!437708 (and d!638528 d!638526)))

(assert (=> bs!437708 (= lambda!77892 lambda!77891)))

(assert (=> d!638528 (= (inv!30535 setElem!13370) (forall!4818 (exprs!1603 setElem!13370) lambda!77892))))

(declare-fun bs!437709 () Bool)

(assert (= bs!437709 d!638528))

(declare-fun m!2549841 () Bool)

(assert (=> bs!437709 m!2549841))

(assert (=> setNonEmpty!13370 d!638528))

(declare-fun d!638530 () Bool)

(declare-fun res!911658 () Bool)

(declare-fun e!1329366 () Bool)

(assert (=> d!638530 (=> (not res!911658) (not e!1329366))))

(assert (=> d!638530 (= res!911658 (= (csize!15578 (c!337359 treated!60)) (+ (size!17994 (left!18059 (c!337359 treated!60))) (size!17994 (right!18389 (c!337359 treated!60))))))))

(assert (=> d!638530 (= (inv!30533 (c!337359 treated!60)) e!1329366)))

(declare-fun b!2094052 () Bool)

(declare-fun res!911659 () Bool)

(assert (=> b!2094052 (=> (not res!911659) (not e!1329366))))

(assert (=> b!2094052 (= res!911659 (and (not (= (left!18059 (c!337359 treated!60)) Empty!7674)) (not (= (right!18389 (c!337359 treated!60)) Empty!7674))))))

(declare-fun b!2094053 () Bool)

(declare-fun res!911660 () Bool)

(assert (=> b!2094053 (=> (not res!911660) (not e!1329366))))

(assert (=> b!2094053 (= res!911660 (= (cheight!7885 (c!337359 treated!60)) (+ (max!0 (height!1221 (left!18059 (c!337359 treated!60))) (height!1221 (right!18389 (c!337359 treated!60)))) 1)))))

(declare-fun b!2094054 () Bool)

(assert (=> b!2094054 (= e!1329366 (<= 0 (cheight!7885 (c!337359 treated!60))))))

(assert (= (and d!638530 res!911658) b!2094052))

(assert (= (and b!2094052 res!911659) b!2094053))

(assert (= (and b!2094053 res!911660) b!2094054))

(declare-fun m!2549843 () Bool)

(assert (=> d!638530 m!2549843))

(declare-fun m!2549845 () Bool)

(assert (=> d!638530 m!2549845))

(declare-fun m!2549847 () Bool)

(assert (=> b!2094053 m!2549847))

(declare-fun m!2549849 () Bool)

(assert (=> b!2094053 m!2549849))

(assert (=> b!2094053 m!2549847))

(assert (=> b!2094053 m!2549849))

(declare-fun m!2549851 () Bool)

(assert (=> b!2094053 m!2549851))

(assert (=> b!2093696 d!638530))

(declare-fun bs!437710 () Bool)

(declare-fun d!638532 () Bool)

(assert (= bs!437710 (and d!638532 d!638452)))

(declare-fun lambda!77893 () Int)

(assert (=> bs!437710 (= lambda!77893 lambda!77880)))

(declare-fun bs!437711 () Bool)

(assert (= bs!437711 (and d!638532 d!638528)))

(assert (=> bs!437711 (= lambda!77893 lambda!77892)))

(declare-fun bs!437712 () Bool)

(assert (= bs!437712 (and d!638532 d!638480)))

(assert (=> bs!437712 (= lambda!77893 lambda!77885)))

(declare-fun bs!437713 () Bool)

(assert (= bs!437713 (and d!638532 d!638488)))

(assert (=> bs!437713 (= lambda!77893 lambda!77888)))

(declare-fun bs!437714 () Bool)

(assert (= bs!437714 (and d!638532 d!638484)))

(assert (=> bs!437714 (= lambda!77893 lambda!77887)))

(declare-fun bs!437715 () Bool)

(assert (= bs!437715 (and d!638532 d!638524)))

(assert (=> bs!437715 (= lambda!77893 lambda!77890)))

(declare-fun bs!437716 () Bool)

(assert (= bs!437716 (and d!638532 d!638478)))

(assert (=> bs!437716 (= lambda!77893 lambda!77884)))

(declare-fun bs!437717 () Bool)

(assert (= bs!437717 (and d!638532 d!638444)))

(assert (=> bs!437717 (= lambda!77893 lambda!77879)))

(declare-fun bs!437718 () Bool)

(assert (= bs!437718 (and d!638532 d!638482)))

(assert (=> bs!437718 (= lambda!77893 lambda!77886)))

(declare-fun bs!437719 () Bool)

(assert (= bs!437719 (and d!638532 d!638512)))

(assert (=> bs!437719 (= lambda!77893 lambda!77889)))

(declare-fun bs!437720 () Bool)

(assert (= bs!437720 (and d!638532 d!638526)))

(assert (=> bs!437720 (= lambda!77893 lambda!77891)))

(assert (=> d!638532 (= (inv!30535 setElem!13361) (forall!4818 (exprs!1603 setElem!13361) lambda!77893))))

(declare-fun bs!437721 () Bool)

(assert (= bs!437721 d!638532))

(declare-fun m!2549853 () Bool)

(assert (=> bs!437721 m!2549853))

(assert (=> setNonEmpty!13361 d!638532))

(assert (=> b!2093608 d!638438))

(declare-fun bs!437722 () Bool)

(declare-fun d!638534 () Bool)

(assert (= bs!437722 (and d!638534 d!638452)))

(declare-fun lambda!77894 () Int)

(assert (=> bs!437722 (= lambda!77894 lambda!77880)))

(declare-fun bs!437723 () Bool)

(assert (= bs!437723 (and d!638534 d!638528)))

(assert (=> bs!437723 (= lambda!77894 lambda!77892)))

(declare-fun bs!437724 () Bool)

(assert (= bs!437724 (and d!638534 d!638480)))

(assert (=> bs!437724 (= lambda!77894 lambda!77885)))

(declare-fun bs!437725 () Bool)

(assert (= bs!437725 (and d!638534 d!638484)))

(assert (=> bs!437725 (= lambda!77894 lambda!77887)))

(declare-fun bs!437726 () Bool)

(assert (= bs!437726 (and d!638534 d!638524)))

(assert (=> bs!437726 (= lambda!77894 lambda!77890)))

(declare-fun bs!437727 () Bool)

(assert (= bs!437727 (and d!638534 d!638478)))

(assert (=> bs!437727 (= lambda!77894 lambda!77884)))

(declare-fun bs!437728 () Bool)

(assert (= bs!437728 (and d!638534 d!638444)))

(assert (=> bs!437728 (= lambda!77894 lambda!77879)))

(declare-fun bs!437729 () Bool)

(assert (= bs!437729 (and d!638534 d!638482)))

(assert (=> bs!437729 (= lambda!77894 lambda!77886)))

(declare-fun bs!437730 () Bool)

(assert (= bs!437730 (and d!638534 d!638488)))

(assert (=> bs!437730 (= lambda!77894 lambda!77888)))

(declare-fun bs!437731 () Bool)

(assert (= bs!437731 (and d!638534 d!638532)))

(assert (=> bs!437731 (= lambda!77894 lambda!77893)))

(declare-fun bs!437732 () Bool)

(assert (= bs!437732 (and d!638534 d!638512)))

(assert (=> bs!437732 (= lambda!77894 lambda!77889)))

(declare-fun bs!437733 () Bool)

(assert (= bs!437733 (and d!638534 d!638526)))

(assert (=> bs!437733 (= lambda!77894 lambda!77891)))

(assert (=> d!638534 (= (inv!30535 setElem!13371) (forall!4818 (exprs!1603 setElem!13371) lambda!77894))))

(declare-fun bs!437734 () Bool)

(assert (= bs!437734 d!638534))

(declare-fun m!2549855 () Bool)

(assert (=> bs!437734 m!2549855))

(assert (=> setNonEmpty!13371 d!638534))

(declare-fun bs!437735 () Bool)

(declare-fun d!638536 () Bool)

(assert (= bs!437735 (and d!638536 d!638452)))

(declare-fun lambda!77895 () Int)

(assert (=> bs!437735 (= lambda!77895 lambda!77880)))

(declare-fun bs!437736 () Bool)

(assert (= bs!437736 (and d!638536 d!638528)))

(assert (=> bs!437736 (= lambda!77895 lambda!77892)))

(declare-fun bs!437737 () Bool)

(assert (= bs!437737 (and d!638536 d!638480)))

(assert (=> bs!437737 (= lambda!77895 lambda!77885)))

(declare-fun bs!437738 () Bool)

(assert (= bs!437738 (and d!638536 d!638484)))

(assert (=> bs!437738 (= lambda!77895 lambda!77887)))

(declare-fun bs!437739 () Bool)

(assert (= bs!437739 (and d!638536 d!638524)))

(assert (=> bs!437739 (= lambda!77895 lambda!77890)))

(declare-fun bs!437740 () Bool)

(assert (= bs!437740 (and d!638536 d!638478)))

(assert (=> bs!437740 (= lambda!77895 lambda!77884)))

(declare-fun bs!437741 () Bool)

(assert (= bs!437741 (and d!638536 d!638534)))

(assert (=> bs!437741 (= lambda!77895 lambda!77894)))

(declare-fun bs!437742 () Bool)

(assert (= bs!437742 (and d!638536 d!638444)))

(assert (=> bs!437742 (= lambda!77895 lambda!77879)))

(declare-fun bs!437743 () Bool)

(assert (= bs!437743 (and d!638536 d!638482)))

(assert (=> bs!437743 (= lambda!77895 lambda!77886)))

(declare-fun bs!437744 () Bool)

(assert (= bs!437744 (and d!638536 d!638488)))

(assert (=> bs!437744 (= lambda!77895 lambda!77888)))

(declare-fun bs!437745 () Bool)

(assert (= bs!437745 (and d!638536 d!638532)))

(assert (=> bs!437745 (= lambda!77895 lambda!77893)))

(declare-fun bs!437746 () Bool)

(assert (= bs!437746 (and d!638536 d!638512)))

(assert (=> bs!437746 (= lambda!77895 lambda!77889)))

(declare-fun bs!437747 () Bool)

(assert (= bs!437747 (and d!638536 d!638526)))

(assert (=> bs!437747 (= lambda!77895 lambda!77891)))

(assert (=> d!638536 (= (inv!30535 (_2!12794 (_1!12795 (h!28433 mapDefault!10504)))) (forall!4818 (exprs!1603 (_2!12794 (_1!12795 (h!28433 mapDefault!10504)))) lambda!77895))))

(declare-fun bs!437748 () Bool)

(assert (= bs!437748 d!638536))

(declare-fun m!2549857 () Bool)

(assert (=> bs!437748 m!2549857))

(assert (=> b!2093771 d!638536))

(declare-fun d!638538 () Bool)

(declare-fun res!911667 () Bool)

(declare-fun e!1329371 () Bool)

(assert (=> d!638538 (=> (not res!911667) (not e!1329371))))

(declare-fun valid!1727 (MutableMap!2094) Bool)

(assert (=> d!638538 (= res!911667 (valid!1727 (cache!2475 cacheDown!575)))))

(assert (=> d!638538 (= (validCacheMapDown!210 (cache!2475 cacheDown!575)) e!1329371)))

(declare-fun b!2094061 () Bool)

(declare-fun res!911668 () Bool)

(assert (=> b!2094061 (=> (not res!911668) (not e!1329371))))

(declare-fun invariantList!289 (List!23116) Bool)

(declare-datatypes ((ListMap!627 0))(
  ( (ListMap!628 (toList!1042 List!23116)) )
))
(declare-fun map!4755 (MutableMap!2094) ListMap!627)

(assert (=> b!2094061 (= res!911668 (invariantList!289 (toList!1042 (map!4755 (cache!2475 cacheDown!575)))))))

(declare-fun b!2094062 () Bool)

(declare-fun lambda!77898 () Int)

(declare-fun forall!4819 (List!23116 Int) Bool)

(assert (=> b!2094062 (= e!1329371 (forall!4819 (toList!1042 (map!4755 (cache!2475 cacheDown!575))) lambda!77898))))

(assert (= (and d!638538 res!911667) b!2094061))

(assert (= (and b!2094061 res!911668) b!2094062))

(declare-fun m!2549860 () Bool)

(assert (=> d!638538 m!2549860))

(declare-fun m!2549862 () Bool)

(assert (=> b!2094061 m!2549862))

(declare-fun m!2549864 () Bool)

(assert (=> b!2094061 m!2549864))

(assert (=> b!2094062 m!2549862))

(declare-fun m!2549866 () Bool)

(assert (=> b!2094062 m!2549866))

(assert (=> d!638378 d!638538))

(declare-fun b!2094075 () Bool)

(declare-fun e!1329376 () Bool)

(declare-fun e!1329377 () Bool)

(assert (=> b!2094075 (= e!1329376 e!1329377)))

(declare-fun res!911685 () Bool)

(assert (=> b!2094075 (=> (not res!911685) (not e!1329377))))

(assert (=> b!2094075 (= res!911685 (<= (- 1) (- (height!1221 (left!18059 (c!337359 totalInput!418))) (height!1221 (right!18389 (c!337359 totalInput!418))))))))

(declare-fun b!2094076 () Bool)

(declare-fun res!911682 () Bool)

(assert (=> b!2094076 (=> (not res!911682) (not e!1329377))))

(assert (=> b!2094076 (= res!911682 (isBalanced!2411 (left!18059 (c!337359 totalInput!418))))))

(declare-fun b!2094077 () Bool)

(declare-fun res!911686 () Bool)

(assert (=> b!2094077 (=> (not res!911686) (not e!1329377))))

(declare-fun isEmpty!14209 (Conc!7674) Bool)

(assert (=> b!2094077 (= res!911686 (not (isEmpty!14209 (left!18059 (c!337359 totalInput!418)))))))

(declare-fun b!2094078 () Bool)

(declare-fun res!911683 () Bool)

(assert (=> b!2094078 (=> (not res!911683) (not e!1329377))))

(assert (=> b!2094078 (= res!911683 (isBalanced!2411 (right!18389 (c!337359 totalInput!418))))))

(declare-fun b!2094079 () Bool)

(assert (=> b!2094079 (= e!1329377 (not (isEmpty!14209 (right!18389 (c!337359 totalInput!418)))))))

(declare-fun d!638540 () Bool)

(declare-fun res!911684 () Bool)

(assert (=> d!638540 (=> res!911684 e!1329376)))

(assert (=> d!638540 (= res!911684 (not ((_ is Node!7674) (c!337359 totalInput!418))))))

(assert (=> d!638540 (= (isBalanced!2411 (c!337359 totalInput!418)) e!1329376)))

(declare-fun b!2094080 () Bool)

(declare-fun res!911681 () Bool)

(assert (=> b!2094080 (=> (not res!911681) (not e!1329377))))

(assert (=> b!2094080 (= res!911681 (<= (- (height!1221 (left!18059 (c!337359 totalInput!418))) (height!1221 (right!18389 (c!337359 totalInput!418)))) 1))))

(assert (= (and d!638540 (not res!911684)) b!2094075))

(assert (= (and b!2094075 res!911685) b!2094080))

(assert (= (and b!2094080 res!911681) b!2094076))

(assert (= (and b!2094076 res!911682) b!2094078))

(assert (= (and b!2094078 res!911683) b!2094077))

(assert (= (and b!2094077 res!911686) b!2094079))

(declare-fun m!2549868 () Bool)

(assert (=> b!2094075 m!2549868))

(declare-fun m!2549870 () Bool)

(assert (=> b!2094075 m!2549870))

(assert (=> b!2094080 m!2549868))

(assert (=> b!2094080 m!2549870))

(declare-fun m!2549872 () Bool)

(assert (=> b!2094079 m!2549872))

(declare-fun m!2549874 () Bool)

(assert (=> b!2094076 m!2549874))

(declare-fun m!2549876 () Bool)

(assert (=> b!2094077 m!2549876))

(declare-fun m!2549878 () Bool)

(assert (=> b!2094078 m!2549878))

(assert (=> d!638434 d!638540))

(declare-fun d!638542 () Bool)

(declare-fun res!911691 () Bool)

(declare-fun e!1329380 () Bool)

(assert (=> d!638542 (=> (not res!911691) (not e!1329380))))

(assert (=> d!638542 (= res!911691 (<= (size!17995 (list!9388 (xs!10609 (c!337360 acc!382)))) 512))))

(assert (=> d!638542 (= (inv!30532 (c!337360 acc!382)) e!1329380)))

(declare-fun b!2094085 () Bool)

(declare-fun res!911692 () Bool)

(assert (=> b!2094085 (=> (not res!911692) (not e!1329380))))

(assert (=> b!2094085 (= res!911692 (= (csize!15581 (c!337360 acc!382)) (size!17995 (list!9388 (xs!10609 (c!337360 acc!382))))))))

(declare-fun b!2094086 () Bool)

(assert (=> b!2094086 (= e!1329380 (and (> (csize!15581 (c!337360 acc!382)) 0) (<= (csize!15581 (c!337360 acc!382)) 512)))))

(assert (= (and d!638542 res!911691) b!2094085))

(assert (= (and b!2094085 res!911692) b!2094086))

(assert (=> d!638542 m!2549829))

(assert (=> d!638542 m!2549829))

(declare-fun m!2549880 () Bool)

(assert (=> d!638542 m!2549880))

(assert (=> b!2094085 m!2549829))

(assert (=> b!2094085 m!2549829))

(assert (=> b!2094085 m!2549880))

(assert (=> b!2093640 d!638542))

(declare-fun bs!437749 () Bool)

(declare-fun d!638544 () Bool)

(assert (= bs!437749 (and d!638544 d!638452)))

(declare-fun lambda!77899 () Int)

(assert (=> bs!437749 (= lambda!77899 lambda!77880)))

(declare-fun bs!437750 () Bool)

(assert (= bs!437750 (and d!638544 d!638528)))

(assert (=> bs!437750 (= lambda!77899 lambda!77892)))

(declare-fun bs!437751 () Bool)

(assert (= bs!437751 (and d!638544 d!638536)))

(assert (=> bs!437751 (= lambda!77899 lambda!77895)))

(declare-fun bs!437752 () Bool)

(assert (= bs!437752 (and d!638544 d!638480)))

(assert (=> bs!437752 (= lambda!77899 lambda!77885)))

(declare-fun bs!437753 () Bool)

(assert (= bs!437753 (and d!638544 d!638484)))

(assert (=> bs!437753 (= lambda!77899 lambda!77887)))

(declare-fun bs!437754 () Bool)

(assert (= bs!437754 (and d!638544 d!638524)))

(assert (=> bs!437754 (= lambda!77899 lambda!77890)))

(declare-fun bs!437755 () Bool)

(assert (= bs!437755 (and d!638544 d!638478)))

(assert (=> bs!437755 (= lambda!77899 lambda!77884)))

(declare-fun bs!437756 () Bool)

(assert (= bs!437756 (and d!638544 d!638534)))

(assert (=> bs!437756 (= lambda!77899 lambda!77894)))

(declare-fun bs!437757 () Bool)

(assert (= bs!437757 (and d!638544 d!638444)))

(assert (=> bs!437757 (= lambda!77899 lambda!77879)))

(declare-fun bs!437758 () Bool)

(assert (= bs!437758 (and d!638544 d!638482)))

(assert (=> bs!437758 (= lambda!77899 lambda!77886)))

(declare-fun bs!437759 () Bool)

(assert (= bs!437759 (and d!638544 d!638488)))

(assert (=> bs!437759 (= lambda!77899 lambda!77888)))

(declare-fun bs!437760 () Bool)

(assert (= bs!437760 (and d!638544 d!638532)))

(assert (=> bs!437760 (= lambda!77899 lambda!77893)))

(declare-fun bs!437761 () Bool)

(assert (= bs!437761 (and d!638544 d!638512)))

(assert (=> bs!437761 (= lambda!77899 lambda!77889)))

(declare-fun bs!437762 () Bool)

(assert (= bs!437762 (and d!638544 d!638526)))

(assert (=> bs!437762 (= lambda!77899 lambda!77891)))

(assert (=> d!638544 (= (inv!30535 setElem!13350) (forall!4818 (exprs!1603 setElem!13350) lambda!77899))))

(declare-fun bs!437763 () Bool)

(assert (= bs!437763 d!638544))

(declare-fun m!2549882 () Bool)

(assert (=> bs!437763 m!2549882))

(assert (=> setNonEmpty!13350 d!638544))

(declare-fun d!638546 () Bool)

(declare-fun res!911697 () Bool)

(declare-fun e!1329383 () Bool)

(assert (=> d!638546 (=> (not res!911697) (not e!1329383))))

(assert (=> d!638546 (= res!911697 (<= (size!17992 (list!9387 (xs!10608 (c!337359 totalInput!418)))) 512))))

(assert (=> d!638546 (= (inv!30534 (c!337359 totalInput!418)) e!1329383)))

(declare-fun b!2094091 () Bool)

(declare-fun res!911698 () Bool)

(assert (=> b!2094091 (=> (not res!911698) (not e!1329383))))

(assert (=> b!2094091 (= res!911698 (= (csize!15579 (c!337359 totalInput!418)) (size!17992 (list!9387 (xs!10608 (c!337359 totalInput!418))))))))

(declare-fun b!2094092 () Bool)

(assert (=> b!2094092 (= e!1329383 (and (> (csize!15579 (c!337359 totalInput!418)) 0) (<= (csize!15579 (c!337359 totalInput!418)) 512)))))

(assert (= (and d!638546 res!911697) b!2094091))

(assert (= (and b!2094091 res!911698) b!2094092))

(assert (=> d!638546 m!2549679))

(assert (=> d!638546 m!2549679))

(declare-fun m!2549884 () Bool)

(assert (=> d!638546 m!2549884))

(assert (=> b!2094091 m!2549679))

(assert (=> b!2094091 m!2549679))

(assert (=> b!2094091 m!2549884))

(assert (=> b!2093714 d!638546))

(declare-fun d!638548 () Bool)

(declare-fun lt!786801 () Int)

(assert (=> d!638548 (= lt!786801 (size!17992 (list!9383 (_2!12796 lt!786725))))))

(assert (=> d!638548 (= lt!786801 (size!17994 (c!337359 (_2!12796 lt!786725))))))

(assert (=> d!638548 (= (size!17991 (_2!12796 lt!786725)) lt!786801)))

(declare-fun bs!437764 () Bool)

(assert (= bs!437764 d!638548))

(assert (=> bs!437764 m!2549405))

(assert (=> bs!437764 m!2549405))

(declare-fun m!2549886 () Bool)

(assert (=> bs!437764 m!2549886))

(declare-fun m!2549888 () Bool)

(assert (=> bs!437764 m!2549888))

(assert (=> b!2093661 d!638548))

(declare-fun d!638550 () Bool)

(declare-fun lt!786802 () Int)

(assert (=> d!638550 (= lt!786802 (size!17992 (list!9383 totalInput!418)))))

(assert (=> d!638550 (= lt!786802 (size!17994 (c!337359 totalInput!418)))))

(assert (=> d!638550 (= (size!17991 totalInput!418) lt!786802)))

(declare-fun bs!437765 () Bool)

(assert (= bs!437765 d!638550))

(assert (=> bs!437765 m!2549309))

(assert (=> bs!437765 m!2549309))

(assert (=> bs!437765 m!2549695))

(declare-fun m!2549890 () Bool)

(assert (=> bs!437765 m!2549890))

(assert (=> b!2093661 d!638550))

(declare-fun d!638552 () Bool)

(assert (=> d!638552 (= (inv!30523 (tag!4595 (h!28437 (t!195061 rules!1563)))) (= (mod (str.len (value!128644 (tag!4595 (h!28437 (t!195061 rules!1563))))) 2) 0))))

(assert (=> b!2093840 d!638552))

(declare-fun d!638554 () Bool)

(declare-fun res!911699 () Bool)

(declare-fun e!1329384 () Bool)

(assert (=> d!638554 (=> (not res!911699) (not e!1329384))))

(assert (=> d!638554 (= res!911699 (semiInverseModEq!1642 (toChars!5669 (transformation!4105 (h!28437 (t!195061 rules!1563)))) (toValue!5810 (transformation!4105 (h!28437 (t!195061 rules!1563))))))))

(assert (=> d!638554 (= (inv!30526 (transformation!4105 (h!28437 (t!195061 rules!1563)))) e!1329384)))

(declare-fun b!2094093 () Bool)

(assert (=> b!2094093 (= e!1329384 (equivClasses!1569 (toChars!5669 (transformation!4105 (h!28437 (t!195061 rules!1563)))) (toValue!5810 (transformation!4105 (h!28437 (t!195061 rules!1563))))))))

(assert (= (and d!638554 res!911699) b!2094093))

(declare-fun m!2549892 () Bool)

(assert (=> d!638554 m!2549892))

(declare-fun m!2549894 () Bool)

(assert (=> b!2094093 m!2549894))

(assert (=> b!2093840 d!638554))

(assert (=> b!2093701 d!638520))

(declare-fun b!2094094 () Bool)

(declare-fun e!1329386 () Bool)

(declare-fun lt!786804 () tuple2!22212)

(assert (=> b!2094094 (= e!1329386 (= (_2!12798 lt!786804) (list!9383 treated!60)))))

(declare-fun b!2094095 () Bool)

(declare-fun e!1329385 () tuple2!22212)

(assert (=> b!2094095 (= e!1329385 (tuple2!22213 Nil!23035 (list!9383 treated!60)))))

(declare-fun b!2094096 () Bool)

(declare-fun lt!786805 () Option!4826)

(declare-fun lt!786803 () tuple2!22212)

(assert (=> b!2094096 (= e!1329385 (tuple2!22213 (Cons!23035 (_1!12799 (v!27638 lt!786805)) (_1!12798 lt!786803)) (_2!12798 lt!786803)))))

(assert (=> b!2094096 (= lt!786803 (lexList!1028 thiss!12889 rules!1563 (_2!12799 (v!27638 lt!786805))))))

(declare-fun b!2094098 () Bool)

(declare-fun e!1329387 () Bool)

(assert (=> b!2094098 (= e!1329386 e!1329387)))

(declare-fun res!911700 () Bool)

(assert (=> b!2094098 (= res!911700 (< (size!17992 (_2!12798 lt!786804)) (size!17992 (list!9383 treated!60))))))

(assert (=> b!2094098 (=> (not res!911700) (not e!1329387))))

(declare-fun b!2094097 () Bool)

(assert (=> b!2094097 (= e!1329387 (not (isEmpty!14208 (_1!12798 lt!786804))))))

(declare-fun d!638556 () Bool)

(assert (=> d!638556 e!1329386))

(declare-fun c!337449 () Bool)

(assert (=> d!638556 (= c!337449 (> (size!17995 (_1!12798 lt!786804)) 0))))

(assert (=> d!638556 (= lt!786804 e!1329385)))

(declare-fun c!337450 () Bool)

(assert (=> d!638556 (= c!337450 ((_ is Some!4825) lt!786805))))

(assert (=> d!638556 (= lt!786805 (maxPrefix!2092 thiss!12889 rules!1563 (list!9383 treated!60)))))

(assert (=> d!638556 (= (lexList!1028 thiss!12889 rules!1563 (list!9383 treated!60)) lt!786804)))

(assert (= (and d!638556 c!337450) b!2094096))

(assert (= (and d!638556 (not c!337450)) b!2094095))

(assert (= (and d!638556 c!337449) b!2094098))

(assert (= (and d!638556 (not c!337449)) b!2094094))

(assert (= (and b!2094098 res!911700) b!2094097))

(declare-fun m!2549896 () Bool)

(assert (=> b!2094096 m!2549896))

(declare-fun m!2549898 () Bool)

(assert (=> b!2094098 m!2549898))

(assert (=> b!2094098 m!2549311))

(assert (=> b!2094098 m!2549371))

(declare-fun m!2549900 () Bool)

(assert (=> b!2094097 m!2549900))

(declare-fun m!2549902 () Bool)

(assert (=> d!638556 m!2549902))

(assert (=> d!638556 m!2549311))

(declare-fun m!2549904 () Bool)

(assert (=> d!638556 m!2549904))

(assert (=> b!2093701 d!638556))

(assert (=> b!2093701 d!638374))

(declare-fun d!638558 () Bool)

(declare-fun c!337451 () Bool)

(assert (=> d!638558 (= c!337451 ((_ is Node!7674) (left!18059 (c!337359 totalInput!418))))))

(declare-fun e!1329388 () Bool)

(assert (=> d!638558 (= (inv!30525 (left!18059 (c!337359 totalInput!418))) e!1329388)))

(declare-fun b!2094099 () Bool)

(assert (=> b!2094099 (= e!1329388 (inv!30533 (left!18059 (c!337359 totalInput!418))))))

(declare-fun b!2094100 () Bool)

(declare-fun e!1329389 () Bool)

(assert (=> b!2094100 (= e!1329388 e!1329389)))

(declare-fun res!911701 () Bool)

(assert (=> b!2094100 (= res!911701 (not ((_ is Leaf!11208) (left!18059 (c!337359 totalInput!418)))))))

(assert (=> b!2094100 (=> res!911701 e!1329389)))

(declare-fun b!2094101 () Bool)

(assert (=> b!2094101 (= e!1329389 (inv!30534 (left!18059 (c!337359 totalInput!418))))))

(assert (= (and d!638558 c!337451) b!2094099))

(assert (= (and d!638558 (not c!337451)) b!2094100))

(assert (= (and b!2094100 (not res!911701)) b!2094101))

(declare-fun m!2549906 () Bool)

(assert (=> b!2094099 m!2549906))

(declare-fun m!2549908 () Bool)

(assert (=> b!2094101 m!2549908))

(assert (=> b!2093828 d!638558))

(declare-fun d!638560 () Bool)

(declare-fun c!337452 () Bool)

(assert (=> d!638560 (= c!337452 ((_ is Node!7674) (right!18389 (c!337359 totalInput!418))))))

(declare-fun e!1329390 () Bool)

(assert (=> d!638560 (= (inv!30525 (right!18389 (c!337359 totalInput!418))) e!1329390)))

(declare-fun b!2094102 () Bool)

(assert (=> b!2094102 (= e!1329390 (inv!30533 (right!18389 (c!337359 totalInput!418))))))

(declare-fun b!2094103 () Bool)

(declare-fun e!1329391 () Bool)

(assert (=> b!2094103 (= e!1329390 e!1329391)))

(declare-fun res!911702 () Bool)

(assert (=> b!2094103 (= res!911702 (not ((_ is Leaf!11208) (right!18389 (c!337359 totalInput!418)))))))

(assert (=> b!2094103 (=> res!911702 e!1329391)))

(declare-fun b!2094104 () Bool)

(assert (=> b!2094104 (= e!1329391 (inv!30534 (right!18389 (c!337359 totalInput!418))))))

(assert (= (and d!638560 c!337452) b!2094102))

(assert (= (and d!638560 (not c!337452)) b!2094103))

(assert (= (and b!2094103 (not res!911702)) b!2094104))

(declare-fun m!2549910 () Bool)

(assert (=> b!2094102 m!2549910))

(declare-fun m!2549912 () Bool)

(assert (=> b!2094104 m!2549912))

(assert (=> b!2093828 d!638560))

(declare-fun bs!437766 () Bool)

(declare-fun d!638562 () Bool)

(assert (= bs!437766 (and d!638562 d!638452)))

(declare-fun lambda!77900 () Int)

(assert (=> bs!437766 (= lambda!77900 lambda!77880)))

(declare-fun bs!437767 () Bool)

(assert (= bs!437767 (and d!638562 d!638536)))

(assert (=> bs!437767 (= lambda!77900 lambda!77895)))

(declare-fun bs!437768 () Bool)

(assert (= bs!437768 (and d!638562 d!638480)))

(assert (=> bs!437768 (= lambda!77900 lambda!77885)))

(declare-fun bs!437769 () Bool)

(assert (= bs!437769 (and d!638562 d!638484)))

(assert (=> bs!437769 (= lambda!77900 lambda!77887)))

(declare-fun bs!437770 () Bool)

(assert (= bs!437770 (and d!638562 d!638524)))

(assert (=> bs!437770 (= lambda!77900 lambda!77890)))

(declare-fun bs!437771 () Bool)

(assert (= bs!437771 (and d!638562 d!638478)))

(assert (=> bs!437771 (= lambda!77900 lambda!77884)))

(declare-fun bs!437772 () Bool)

(assert (= bs!437772 (and d!638562 d!638534)))

(assert (=> bs!437772 (= lambda!77900 lambda!77894)))

(declare-fun bs!437773 () Bool)

(assert (= bs!437773 (and d!638562 d!638444)))

(assert (=> bs!437773 (= lambda!77900 lambda!77879)))

(declare-fun bs!437774 () Bool)

(assert (= bs!437774 (and d!638562 d!638482)))

(assert (=> bs!437774 (= lambda!77900 lambda!77886)))

(declare-fun bs!437775 () Bool)

(assert (= bs!437775 (and d!638562 d!638528)))

(assert (=> bs!437775 (= lambda!77900 lambda!77892)))

(declare-fun bs!437776 () Bool)

(assert (= bs!437776 (and d!638562 d!638544)))

(assert (=> bs!437776 (= lambda!77900 lambda!77899)))

(declare-fun bs!437777 () Bool)

(assert (= bs!437777 (and d!638562 d!638488)))

(assert (=> bs!437777 (= lambda!77900 lambda!77888)))

(declare-fun bs!437778 () Bool)

(assert (= bs!437778 (and d!638562 d!638532)))

(assert (=> bs!437778 (= lambda!77900 lambda!77893)))

(declare-fun bs!437779 () Bool)

(assert (= bs!437779 (and d!638562 d!638512)))

(assert (=> bs!437779 (= lambda!77900 lambda!77889)))

(declare-fun bs!437780 () Bool)

(assert (= bs!437780 (and d!638562 d!638526)))

(assert (=> bs!437780 (= lambda!77900 lambda!77891)))

(assert (=> d!638562 (= (inv!30535 setElem!13367) (forall!4818 (exprs!1603 setElem!13367) lambda!77900))))

(declare-fun bs!437781 () Bool)

(assert (= bs!437781 d!638562))

(declare-fun m!2549914 () Bool)

(assert (=> bs!437781 m!2549914))

(assert (=> setNonEmpty!13367 d!638562))

(assert (=> b!2093665 d!638474))

(assert (=> b!2093665 d!638376))

(declare-fun d!638564 () Bool)

(assert (=> d!638564 (= (inv!30537 (xs!10608 (c!337359 treated!60))) (<= (size!17992 (innerList!7734 (xs!10608 (c!337359 treated!60)))) 2147483647))))

(declare-fun bs!437782 () Bool)

(assert (= bs!437782 d!638564))

(declare-fun m!2549916 () Bool)

(assert (=> bs!437782 m!2549916))

(assert (=> b!2093803 d!638564))

(declare-fun d!638566 () Bool)

(assert (=> d!638566 (= (list!9383 (_2!12796 lt!786725)) (list!9385 (c!337359 (_2!12796 lt!786725))))))

(declare-fun bs!437783 () Bool)

(assert (= bs!437783 d!638566))

(declare-fun m!2549918 () Bool)

(assert (=> bs!437783 m!2549918))

(assert (=> b!2093657 d!638566))

(assert (=> b!2093657 d!638492))

(assert (=> b!2093657 d!638370))

(declare-fun b!2094107 () Bool)

(declare-fun e!1329393 () List!23119)

(assert (=> b!2094107 (= e!1329393 (list!9388 (xs!10609 (c!337360 (_1!12796 lt!786715)))))))

(declare-fun d!638568 () Bool)

(declare-fun c!337453 () Bool)

(assert (=> d!638568 (= c!337453 ((_ is Empty!7675) (c!337360 (_1!12796 lt!786715))))))

(declare-fun e!1329392 () List!23119)

(assert (=> d!638568 (= (list!9386 (c!337360 (_1!12796 lt!786715))) e!1329392)))

(declare-fun b!2094105 () Bool)

(assert (=> b!2094105 (= e!1329392 Nil!23035)))

(declare-fun b!2094108 () Bool)

(assert (=> b!2094108 (= e!1329393 (++!6276 (list!9386 (left!18060 (c!337360 (_1!12796 lt!786715)))) (list!9386 (right!18390 (c!337360 (_1!12796 lt!786715))))))))

(declare-fun b!2094106 () Bool)

(assert (=> b!2094106 (= e!1329392 e!1329393)))

(declare-fun c!337454 () Bool)

(assert (=> b!2094106 (= c!337454 ((_ is Leaf!11209) (c!337360 (_1!12796 lt!786715))))))

(assert (= (and d!638568 c!337453) b!2094105))

(assert (= (and d!638568 (not c!337453)) b!2094106))

(assert (= (and b!2094106 c!337454) b!2094107))

(assert (= (and b!2094106 (not c!337454)) b!2094108))

(declare-fun m!2549920 () Bool)

(assert (=> b!2094107 m!2549920))

(declare-fun m!2549922 () Bool)

(assert (=> b!2094108 m!2549922))

(declare-fun m!2549924 () Bool)

(assert (=> b!2094108 m!2549924))

(assert (=> b!2094108 m!2549922))

(assert (=> b!2094108 m!2549924))

(declare-fun m!2549926 () Bool)

(assert (=> b!2094108 m!2549926))

(assert (=> d!638416 d!638568))

(declare-fun d!638570 () Bool)

(assert (=> d!638570 (= (list!9384 lt!786733) (list!9386 (c!337360 lt!786733)))))

(declare-fun bs!437784 () Bool)

(assert (= bs!437784 d!638570))

(declare-fun m!2549928 () Bool)

(assert (=> bs!437784 m!2549928))

(assert (=> b!2093680 d!638570))

(declare-fun d!638572 () Bool)

(declare-fun e!1329398 () Bool)

(assert (=> d!638572 e!1329398))

(declare-fun res!911708 () Bool)

(assert (=> d!638572 (=> (not res!911708) (not e!1329398))))

(declare-fun lt!786808 () List!23119)

(declare-fun content!3373 (List!23119) (InoxSet Token!7758))

(assert (=> d!638572 (= res!911708 (= (content!3373 lt!786808) ((_ map or) (content!3373 (list!9384 acc!382)) (content!3373 (list!9384 (_1!12796 lt!786712))))))))

(declare-fun e!1329399 () List!23119)

(assert (=> d!638572 (= lt!786808 e!1329399)))

(declare-fun c!337457 () Bool)

(assert (=> d!638572 (= c!337457 ((_ is Nil!23035) (list!9384 acc!382)))))

(assert (=> d!638572 (= (++!6276 (list!9384 acc!382) (list!9384 (_1!12796 lt!786712))) lt!786808)))

(declare-fun b!2094117 () Bool)

(assert (=> b!2094117 (= e!1329399 (list!9384 (_1!12796 lt!786712)))))

(declare-fun b!2094118 () Bool)

(assert (=> b!2094118 (= e!1329399 (Cons!23035 (h!28436 (list!9384 acc!382)) (++!6276 (t!195060 (list!9384 acc!382)) (list!9384 (_1!12796 lt!786712)))))))

(declare-fun b!2094119 () Bool)

(declare-fun res!911707 () Bool)

(assert (=> b!2094119 (=> (not res!911707) (not e!1329398))))

(assert (=> b!2094119 (= res!911707 (= (size!17995 lt!786808) (+ (size!17995 (list!9384 acc!382)) (size!17995 (list!9384 (_1!12796 lt!786712))))))))

(declare-fun b!2094120 () Bool)

(assert (=> b!2094120 (= e!1329398 (or (not (= (list!9384 (_1!12796 lt!786712)) Nil!23035)) (= lt!786808 (list!9384 acc!382))))))

(assert (= (and d!638572 c!337457) b!2094117))

(assert (= (and d!638572 (not c!337457)) b!2094118))

(assert (= (and d!638572 res!911708) b!2094119))

(assert (= (and b!2094119 res!911707) b!2094120))

(declare-fun m!2549930 () Bool)

(assert (=> d!638572 m!2549930))

(assert (=> d!638572 m!2549339))

(declare-fun m!2549932 () Bool)

(assert (=> d!638572 m!2549932))

(assert (=> d!638572 m!2549443))

(declare-fun m!2549934 () Bool)

(assert (=> d!638572 m!2549934))

(assert (=> b!2094118 m!2549443))

(declare-fun m!2549936 () Bool)

(assert (=> b!2094118 m!2549936))

(declare-fun m!2549938 () Bool)

(assert (=> b!2094119 m!2549938))

(assert (=> b!2094119 m!2549339))

(declare-fun m!2549940 () Bool)

(assert (=> b!2094119 m!2549940))

(assert (=> b!2094119 m!2549443))

(declare-fun m!2549942 () Bool)

(assert (=> b!2094119 m!2549942))

(assert (=> b!2093680 d!638572))

(assert (=> b!2093680 d!638418))

(declare-fun d!638574 () Bool)

(assert (=> d!638574 (= (list!9384 (_1!12796 lt!786712)) (list!9386 (c!337360 (_1!12796 lt!786712))))))

(declare-fun bs!437785 () Bool)

(assert (= bs!437785 d!638574))

(assert (=> bs!437785 m!2549617))

(assert (=> b!2093680 d!638574))

(declare-fun b!2094123 () Bool)

(declare-fun e!1329401 () List!23119)

(assert (=> b!2094123 (= e!1329401 (list!9388 (xs!10609 (c!337360 (_1!12796 lt!786711)))))))

(declare-fun d!638576 () Bool)

(declare-fun c!337458 () Bool)

(assert (=> d!638576 (= c!337458 ((_ is Empty!7675) (c!337360 (_1!12796 lt!786711))))))

(declare-fun e!1329400 () List!23119)

(assert (=> d!638576 (= (list!9386 (c!337360 (_1!12796 lt!786711))) e!1329400)))

(declare-fun b!2094121 () Bool)

(assert (=> b!2094121 (= e!1329400 Nil!23035)))

(declare-fun b!2094124 () Bool)

(assert (=> b!2094124 (= e!1329401 (++!6276 (list!9386 (left!18060 (c!337360 (_1!12796 lt!786711)))) (list!9386 (right!18390 (c!337360 (_1!12796 lt!786711))))))))

(declare-fun b!2094122 () Bool)

(assert (=> b!2094122 (= e!1329400 e!1329401)))

(declare-fun c!337459 () Bool)

(assert (=> b!2094122 (= c!337459 ((_ is Leaf!11209) (c!337360 (_1!12796 lt!786711))))))

(assert (= (and d!638576 c!337458) b!2094121))

(assert (= (and d!638576 (not c!337458)) b!2094122))

(assert (= (and b!2094122 c!337459) b!2094123))

(assert (= (and b!2094122 (not c!337459)) b!2094124))

(declare-fun m!2549944 () Bool)

(assert (=> b!2094123 m!2549944))

(declare-fun m!2549946 () Bool)

(assert (=> b!2094124 m!2549946))

(declare-fun m!2549948 () Bool)

(assert (=> b!2094124 m!2549948))

(assert (=> b!2094124 m!2549946))

(assert (=> b!2094124 m!2549948))

(declare-fun m!2549950 () Bool)

(assert (=> b!2094124 m!2549950))

(assert (=> d!638392 d!638576))

(declare-fun bs!437786 () Bool)

(declare-fun d!638578 () Bool)

(assert (= bs!437786 (and d!638578 d!638452)))

(declare-fun lambda!77901 () Int)

(assert (=> bs!437786 (= lambda!77901 lambda!77880)))

(declare-fun bs!437787 () Bool)

(assert (= bs!437787 (and d!638578 d!638562)))

(assert (=> bs!437787 (= lambda!77901 lambda!77900)))

(declare-fun bs!437788 () Bool)

(assert (= bs!437788 (and d!638578 d!638536)))

(assert (=> bs!437788 (= lambda!77901 lambda!77895)))

(declare-fun bs!437789 () Bool)

(assert (= bs!437789 (and d!638578 d!638480)))

(assert (=> bs!437789 (= lambda!77901 lambda!77885)))

(declare-fun bs!437790 () Bool)

(assert (= bs!437790 (and d!638578 d!638484)))

(assert (=> bs!437790 (= lambda!77901 lambda!77887)))

(declare-fun bs!437791 () Bool)

(assert (= bs!437791 (and d!638578 d!638524)))

(assert (=> bs!437791 (= lambda!77901 lambda!77890)))

(declare-fun bs!437792 () Bool)

(assert (= bs!437792 (and d!638578 d!638478)))

(assert (=> bs!437792 (= lambda!77901 lambda!77884)))

(declare-fun bs!437793 () Bool)

(assert (= bs!437793 (and d!638578 d!638534)))

(assert (=> bs!437793 (= lambda!77901 lambda!77894)))

(declare-fun bs!437794 () Bool)

(assert (= bs!437794 (and d!638578 d!638444)))

(assert (=> bs!437794 (= lambda!77901 lambda!77879)))

(declare-fun bs!437795 () Bool)

(assert (= bs!437795 (and d!638578 d!638482)))

(assert (=> bs!437795 (= lambda!77901 lambda!77886)))

(declare-fun bs!437796 () Bool)

(assert (= bs!437796 (and d!638578 d!638528)))

(assert (=> bs!437796 (= lambda!77901 lambda!77892)))

(declare-fun bs!437797 () Bool)

(assert (= bs!437797 (and d!638578 d!638544)))

(assert (=> bs!437797 (= lambda!77901 lambda!77899)))

(declare-fun bs!437798 () Bool)

(assert (= bs!437798 (and d!638578 d!638488)))

(assert (=> bs!437798 (= lambda!77901 lambda!77888)))

(declare-fun bs!437799 () Bool)

(assert (= bs!437799 (and d!638578 d!638532)))

(assert (=> bs!437799 (= lambda!77901 lambda!77893)))

(declare-fun bs!437800 () Bool)

(assert (= bs!437800 (and d!638578 d!638512)))

(assert (=> bs!437800 (= lambda!77901 lambda!77889)))

(declare-fun bs!437801 () Bool)

(assert (= bs!437801 (and d!638578 d!638526)))

(assert (=> bs!437801 (= lambda!77901 lambda!77891)))

(assert (=> d!638578 (= (inv!30535 setElem!13362) (forall!4818 (exprs!1603 setElem!13362) lambda!77901))))

(declare-fun bs!437802 () Bool)

(assert (= bs!437802 d!638578))

(declare-fun m!2549952 () Bool)

(assert (=> bs!437802 m!2549952))

(assert (=> setNonEmpty!13362 d!638578))

(declare-fun bs!437803 () Bool)

(declare-fun d!638580 () Bool)

(assert (= bs!437803 (and d!638580 d!638452)))

(declare-fun lambda!77902 () Int)

(assert (=> bs!437803 (= lambda!77902 lambda!77880)))

(declare-fun bs!437804 () Bool)

(assert (= bs!437804 (and d!638580 d!638562)))

(assert (=> bs!437804 (= lambda!77902 lambda!77900)))

(declare-fun bs!437805 () Bool)

(assert (= bs!437805 (and d!638580 d!638578)))

(assert (=> bs!437805 (= lambda!77902 lambda!77901)))

(declare-fun bs!437806 () Bool)

(assert (= bs!437806 (and d!638580 d!638536)))

(assert (=> bs!437806 (= lambda!77902 lambda!77895)))

(declare-fun bs!437807 () Bool)

(assert (= bs!437807 (and d!638580 d!638480)))

(assert (=> bs!437807 (= lambda!77902 lambda!77885)))

(declare-fun bs!437808 () Bool)

(assert (= bs!437808 (and d!638580 d!638484)))

(assert (=> bs!437808 (= lambda!77902 lambda!77887)))

(declare-fun bs!437809 () Bool)

(assert (= bs!437809 (and d!638580 d!638524)))

(assert (=> bs!437809 (= lambda!77902 lambda!77890)))

(declare-fun bs!437810 () Bool)

(assert (= bs!437810 (and d!638580 d!638478)))

(assert (=> bs!437810 (= lambda!77902 lambda!77884)))

(declare-fun bs!437811 () Bool)

(assert (= bs!437811 (and d!638580 d!638534)))

(assert (=> bs!437811 (= lambda!77902 lambda!77894)))

(declare-fun bs!437812 () Bool)

(assert (= bs!437812 (and d!638580 d!638444)))

(assert (=> bs!437812 (= lambda!77902 lambda!77879)))

(declare-fun bs!437813 () Bool)

(assert (= bs!437813 (and d!638580 d!638482)))

(assert (=> bs!437813 (= lambda!77902 lambda!77886)))

(declare-fun bs!437814 () Bool)

(assert (= bs!437814 (and d!638580 d!638528)))

(assert (=> bs!437814 (= lambda!77902 lambda!77892)))

(declare-fun bs!437815 () Bool)

(assert (= bs!437815 (and d!638580 d!638544)))

(assert (=> bs!437815 (= lambda!77902 lambda!77899)))

(declare-fun bs!437816 () Bool)

(assert (= bs!437816 (and d!638580 d!638488)))

(assert (=> bs!437816 (= lambda!77902 lambda!77888)))

(declare-fun bs!437817 () Bool)

(assert (= bs!437817 (and d!638580 d!638532)))

(assert (=> bs!437817 (= lambda!77902 lambda!77893)))

(declare-fun bs!437818 () Bool)

(assert (= bs!437818 (and d!638580 d!638512)))

(assert (=> bs!437818 (= lambda!77902 lambda!77889)))

(declare-fun bs!437819 () Bool)

(assert (= bs!437819 (and d!638580 d!638526)))

(assert (=> bs!437819 (= lambda!77902 lambda!77891)))

(assert (=> d!638580 (= (inv!30535 setElem!13368) (forall!4818 (exprs!1603 setElem!13368) lambda!77902))))

(declare-fun bs!437820 () Bool)

(assert (= bs!437820 d!638580))

(declare-fun m!2549954 () Bool)

(assert (=> bs!437820 m!2549954))

(assert (=> setNonEmpty!13368 d!638580))

(declare-fun d!638582 () Bool)

(declare-fun lt!786811 () Bool)

(assert (=> d!638582 (= lt!786811 (isEmpty!14208 (list!9384 (_1!12796 lt!786737))))))

(assert (=> d!638582 (= lt!786811 (isEmpty!14207 (c!337360 (_1!12796 lt!786737))))))

(assert (=> d!638582 (= (isEmpty!14206 (_1!12796 lt!786737)) lt!786811)))

(declare-fun bs!437821 () Bool)

(assert (= bs!437821 d!638582))

(assert (=> bs!437821 m!2549475))

(assert (=> bs!437821 m!2549475))

(declare-fun m!2549956 () Bool)

(assert (=> bs!437821 m!2549956))

(declare-fun m!2549958 () Bool)

(assert (=> bs!437821 m!2549958))

(assert (=> b!2093703 d!638582))

(declare-fun d!638584 () Bool)

(declare-fun c!337460 () Bool)

(assert (=> d!638584 (= c!337460 ((_ is Node!7675) (left!18060 (c!337360 acc!382))))))

(declare-fun e!1329402 () Bool)

(assert (=> d!638584 (= (inv!30524 (left!18060 (c!337360 acc!382))) e!1329402)))

(declare-fun b!2094125 () Bool)

(assert (=> b!2094125 (= e!1329402 (inv!30531 (left!18060 (c!337360 acc!382))))))

(declare-fun b!2094126 () Bool)

(declare-fun e!1329403 () Bool)

(assert (=> b!2094126 (= e!1329402 e!1329403)))

(declare-fun res!911709 () Bool)

(assert (=> b!2094126 (= res!911709 (not ((_ is Leaf!11209) (left!18060 (c!337360 acc!382)))))))

(assert (=> b!2094126 (=> res!911709 e!1329403)))

(declare-fun b!2094127 () Bool)

(assert (=> b!2094127 (= e!1329403 (inv!30532 (left!18060 (c!337360 acc!382))))))

(assert (= (and d!638584 c!337460) b!2094125))

(assert (= (and d!638584 (not c!337460)) b!2094126))

(assert (= (and b!2094126 (not res!911709)) b!2094127))

(declare-fun m!2549960 () Bool)

(assert (=> b!2094125 m!2549960))

(declare-fun m!2549962 () Bool)

(assert (=> b!2094127 m!2549962))

(assert (=> b!2093737 d!638584))

(declare-fun d!638586 () Bool)

(declare-fun c!337461 () Bool)

(assert (=> d!638586 (= c!337461 ((_ is Node!7675) (right!18390 (c!337360 acc!382))))))

(declare-fun e!1329404 () Bool)

(assert (=> d!638586 (= (inv!30524 (right!18390 (c!337360 acc!382))) e!1329404)))

(declare-fun b!2094128 () Bool)

(assert (=> b!2094128 (= e!1329404 (inv!30531 (right!18390 (c!337360 acc!382))))))

(declare-fun b!2094129 () Bool)

(declare-fun e!1329405 () Bool)

(assert (=> b!2094129 (= e!1329404 e!1329405)))

(declare-fun res!911710 () Bool)

(assert (=> b!2094129 (= res!911710 (not ((_ is Leaf!11209) (right!18390 (c!337360 acc!382)))))))

(assert (=> b!2094129 (=> res!911710 e!1329405)))

(declare-fun b!2094130 () Bool)

(assert (=> b!2094130 (= e!1329405 (inv!30532 (right!18390 (c!337360 acc!382))))))

(assert (= (and d!638586 c!337461) b!2094128))

(assert (= (and d!638586 (not c!337461)) b!2094129))

(assert (= (and b!2094129 (not res!911710)) b!2094130))

(declare-fun m!2549964 () Bool)

(assert (=> b!2094128 m!2549964))

(declare-fun m!2549966 () Bool)

(assert (=> b!2094130 m!2549966))

(assert (=> b!2093737 d!638586))

(declare-fun d!638588 () Bool)

(declare-fun e!1329406 () Bool)

(assert (=> d!638588 e!1329406))

(declare-fun res!911711 () Bool)

(assert (=> d!638588 (=> (not res!911711) (not e!1329406))))

(declare-fun lt!786812 () List!23117)

(assert (=> d!638588 (= res!911711 (= (content!3372 lt!786812) ((_ map or) (content!3372 (t!195058 (list!9383 treated!60))) (content!3372 (list!9383 input!986)))))))

(declare-fun e!1329407 () List!23117)

(assert (=> d!638588 (= lt!786812 e!1329407)))

(declare-fun c!337462 () Bool)

(assert (=> d!638588 (= c!337462 ((_ is Nil!23033) (t!195058 (list!9383 treated!60))))))

(assert (=> d!638588 (= (++!6273 (t!195058 (list!9383 treated!60)) (list!9383 input!986)) lt!786812)))

(declare-fun b!2094134 () Bool)

(assert (=> b!2094134 (= e!1329406 (or (not (= (list!9383 input!986) Nil!23033)) (= lt!786812 (t!195058 (list!9383 treated!60)))))))

(declare-fun b!2094133 () Bool)

(declare-fun res!911712 () Bool)

(assert (=> b!2094133 (=> (not res!911712) (not e!1329406))))

(assert (=> b!2094133 (= res!911712 (= (size!17992 lt!786812) (+ (size!17992 (t!195058 (list!9383 treated!60))) (size!17992 (list!9383 input!986)))))))

(declare-fun b!2094132 () Bool)

(assert (=> b!2094132 (= e!1329407 (Cons!23033 (h!28434 (t!195058 (list!9383 treated!60))) (++!6273 (t!195058 (t!195058 (list!9383 treated!60))) (list!9383 input!986))))))

(declare-fun b!2094131 () Bool)

(assert (=> b!2094131 (= e!1329407 (list!9383 input!986))))

(assert (= (and d!638588 c!337462) b!2094131))

(assert (= (and d!638588 (not c!337462)) b!2094132))

(assert (= (and d!638588 res!911711) b!2094133))

(assert (= (and b!2094133 res!911712) b!2094134))

(declare-fun m!2549968 () Bool)

(assert (=> d!638588 m!2549968))

(assert (=> d!638588 m!2549709))

(assert (=> d!638588 m!2549313))

(assert (=> d!638588 m!2549367))

(declare-fun m!2549970 () Bool)

(assert (=> b!2094133 m!2549970))

(declare-fun m!2549972 () Bool)

(assert (=> b!2094133 m!2549972))

(assert (=> b!2094133 m!2549313))

(assert (=> b!2094133 m!2549373))

(assert (=> b!2094132 m!2549313))

(declare-fun m!2549974 () Bool)

(assert (=> b!2094132 m!2549974))

(assert (=> b!2093629 d!638588))

(assert (=> b!2093609 d!638414))

(declare-fun b!2094137 () Bool)

(declare-fun e!1329409 () List!23117)

(assert (=> b!2094137 (= e!1329409 (list!9387 (xs!10608 (c!337359 (_2!12796 lt!786712)))))))

(declare-fun b!2094136 () Bool)

(declare-fun e!1329408 () List!23117)

(assert (=> b!2094136 (= e!1329408 e!1329409)))

(declare-fun c!337464 () Bool)

(assert (=> b!2094136 (= c!337464 ((_ is Leaf!11208) (c!337359 (_2!12796 lt!786712))))))

(declare-fun d!638590 () Bool)

(declare-fun c!337463 () Bool)

(assert (=> d!638590 (= c!337463 ((_ is Empty!7674) (c!337359 (_2!12796 lt!786712))))))

(assert (=> d!638590 (= (list!9385 (c!337359 (_2!12796 lt!786712))) e!1329408)))

(declare-fun b!2094135 () Bool)

(assert (=> b!2094135 (= e!1329408 Nil!23033)))

(declare-fun b!2094138 () Bool)

(assert (=> b!2094138 (= e!1329409 (++!6273 (list!9385 (left!18059 (c!337359 (_2!12796 lt!786712)))) (list!9385 (right!18389 (c!337359 (_2!12796 lt!786712))))))))

(assert (= (and d!638590 c!337463) b!2094135))

(assert (= (and d!638590 (not c!337463)) b!2094136))

(assert (= (and b!2094136 c!337464) b!2094137))

(assert (= (and b!2094136 (not c!337464)) b!2094138))

(declare-fun m!2549976 () Bool)

(assert (=> b!2094137 m!2549976))

(declare-fun m!2549978 () Bool)

(assert (=> b!2094138 m!2549978))

(declare-fun m!2549980 () Bool)

(assert (=> b!2094138 m!2549980))

(assert (=> b!2094138 m!2549978))

(assert (=> b!2094138 m!2549980))

(declare-fun m!2549982 () Bool)

(assert (=> b!2094138 m!2549982))

(assert (=> d!638424 d!638590))

(declare-fun bs!437822 () Bool)

(declare-fun d!638592 () Bool)

(assert (= bs!437822 (and d!638592 d!638452)))

(declare-fun lambda!77903 () Int)

(assert (=> bs!437822 (= lambda!77903 lambda!77880)))

(declare-fun bs!437823 () Bool)

(assert (= bs!437823 (and d!638592 d!638562)))

(assert (=> bs!437823 (= lambda!77903 lambda!77900)))

(declare-fun bs!437824 () Bool)

(assert (= bs!437824 (and d!638592 d!638578)))

(assert (=> bs!437824 (= lambda!77903 lambda!77901)))

(declare-fun bs!437825 () Bool)

(assert (= bs!437825 (and d!638592 d!638536)))

(assert (=> bs!437825 (= lambda!77903 lambda!77895)))

(declare-fun bs!437826 () Bool)

(assert (= bs!437826 (and d!638592 d!638580)))

(assert (=> bs!437826 (= lambda!77903 lambda!77902)))

(declare-fun bs!437827 () Bool)

(assert (= bs!437827 (and d!638592 d!638480)))

(assert (=> bs!437827 (= lambda!77903 lambda!77885)))

(declare-fun bs!437828 () Bool)

(assert (= bs!437828 (and d!638592 d!638484)))

(assert (=> bs!437828 (= lambda!77903 lambda!77887)))

(declare-fun bs!437829 () Bool)

(assert (= bs!437829 (and d!638592 d!638524)))

(assert (=> bs!437829 (= lambda!77903 lambda!77890)))

(declare-fun bs!437830 () Bool)

(assert (= bs!437830 (and d!638592 d!638478)))

(assert (=> bs!437830 (= lambda!77903 lambda!77884)))

(declare-fun bs!437831 () Bool)

(assert (= bs!437831 (and d!638592 d!638534)))

(assert (=> bs!437831 (= lambda!77903 lambda!77894)))

(declare-fun bs!437832 () Bool)

(assert (= bs!437832 (and d!638592 d!638444)))

(assert (=> bs!437832 (= lambda!77903 lambda!77879)))

(declare-fun bs!437833 () Bool)

(assert (= bs!437833 (and d!638592 d!638482)))

(assert (=> bs!437833 (= lambda!77903 lambda!77886)))

(declare-fun bs!437834 () Bool)

(assert (= bs!437834 (and d!638592 d!638528)))

(assert (=> bs!437834 (= lambda!77903 lambda!77892)))

(declare-fun bs!437835 () Bool)

(assert (= bs!437835 (and d!638592 d!638544)))

(assert (=> bs!437835 (= lambda!77903 lambda!77899)))

(declare-fun bs!437836 () Bool)

(assert (= bs!437836 (and d!638592 d!638488)))

(assert (=> bs!437836 (= lambda!77903 lambda!77888)))

(declare-fun bs!437837 () Bool)

(assert (= bs!437837 (and d!638592 d!638532)))

(assert (=> bs!437837 (= lambda!77903 lambda!77893)))

(declare-fun bs!437838 () Bool)

(assert (= bs!437838 (and d!638592 d!638512)))

(assert (=> bs!437838 (= lambda!77903 lambda!77889)))

(declare-fun bs!437839 () Bool)

(assert (= bs!437839 (and d!638592 d!638526)))

(assert (=> bs!437839 (= lambda!77903 lambda!77891)))

(assert (=> d!638592 (= (inv!30535 (_2!12794 (_1!12795 (h!28433 mapValue!10504)))) (forall!4818 (exprs!1603 (_2!12794 (_1!12795 (h!28433 mapValue!10504)))) lambda!77903))))

(declare-fun bs!437840 () Bool)

(assert (= bs!437840 d!638592))

(declare-fun m!2549984 () Bool)

(assert (=> bs!437840 m!2549984))

(assert (=> b!2093772 d!638592))

(declare-fun d!638594 () Bool)

(declare-fun lt!786813 () Int)

(assert (=> d!638594 (= lt!786813 (size!17995 (list!9384 (_1!12796 lt!786737))))))

(assert (=> d!638594 (= lt!786813 (size!17996 (c!337360 (_1!12796 lt!786737))))))

(assert (=> d!638594 (= (size!17993 (_1!12796 lt!786737)) lt!786813)))

(declare-fun bs!437841 () Bool)

(assert (= bs!437841 d!638594))

(assert (=> bs!437841 m!2549475))

(assert (=> bs!437841 m!2549475))

(declare-fun m!2549986 () Bool)

(assert (=> bs!437841 m!2549986))

(declare-fun m!2549988 () Bool)

(assert (=> bs!437841 m!2549988))

(assert (=> d!638420 d!638594))

(declare-fun b!2094139 () Bool)

(declare-fun e!1329410 () Bool)

(declare-fun e!1329414 () Bool)

(assert (=> b!2094139 (= e!1329410 e!1329414)))

(declare-fun res!911715 () Bool)

(assert (=> b!2094139 (=> (not res!911715) (not e!1329414))))

(declare-fun lt!786820 () Option!4825)

(assert (=> b!2094139 (= res!911715 (= (_1!12797 (get!7219 lt!786820)) (_1!12799 (get!7220 (maxPrefix!2092 thiss!12889 rules!1563 (list!9383 treated!60))))))))

(declare-fun b!2094141 () Bool)

(declare-fun res!911714 () Bool)

(declare-fun e!1329412 () Bool)

(assert (=> b!2094141 (=> (not res!911714) (not e!1329412))))

(declare-fun e!1329415 () Bool)

(assert (=> b!2094141 (= res!911714 e!1329415)))

(declare-fun res!911713 () Bool)

(assert (=> b!2094141 (=> res!911713 e!1329415)))

(assert (=> b!2094141 (= res!911713 (not (isDefined!4053 lt!786820)))))

(declare-fun bm!127874 () Bool)

(declare-fun call!127879 () Option!4825)

(assert (=> bm!127874 (= call!127879 (maxPrefixOneRuleZipperSequence!424 thiss!12889 (h!28437 rules!1563) treated!60))))

(declare-fun b!2094142 () Bool)

(assert (=> b!2094142 (= e!1329414 (= (list!9383 (_2!12797 (get!7219 lt!786820))) (_2!12799 (get!7220 (maxPrefix!2092 thiss!12889 rules!1563 (list!9383 treated!60))))))))

(declare-fun b!2094143 () Bool)

(declare-fun e!1329413 () Bool)

(assert (=> b!2094143 (= e!1329415 e!1329413)))

(declare-fun res!911717 () Bool)

(assert (=> b!2094143 (=> (not res!911717) (not e!1329413))))

(assert (=> b!2094143 (= res!911717 (= (_1!12797 (get!7219 lt!786820)) (_1!12799 (get!7220 (maxPrefixZipper!413 thiss!12889 rules!1563 (list!9383 treated!60))))))))

(declare-fun b!2094144 () Bool)

(declare-fun e!1329411 () Option!4825)

(assert (=> b!2094144 (= e!1329411 call!127879)))

(declare-fun b!2094145 () Bool)

(assert (=> b!2094145 (= e!1329413 (= (list!9383 (_2!12797 (get!7219 lt!786820))) (_2!12799 (get!7220 (maxPrefixZipper!413 thiss!12889 rules!1563 (list!9383 treated!60))))))))

(declare-fun b!2094146 () Bool)

(assert (=> b!2094146 (= e!1329412 e!1329410)))

(declare-fun res!911718 () Bool)

(assert (=> b!2094146 (=> res!911718 e!1329410)))

(assert (=> b!2094146 (= res!911718 (not (isDefined!4053 lt!786820)))))

(declare-fun d!638596 () Bool)

(assert (=> d!638596 e!1329412))

(declare-fun res!911716 () Bool)

(assert (=> d!638596 (=> (not res!911716) (not e!1329412))))

(assert (=> d!638596 (= res!911716 (= (isDefined!4053 lt!786820) (isDefined!4054 (maxPrefixZipper!413 thiss!12889 rules!1563 (list!9383 treated!60)))))))

(assert (=> d!638596 (= lt!786820 e!1329411)))

(declare-fun c!337465 () Bool)

(assert (=> d!638596 (= c!337465 (and ((_ is Cons!23036) rules!1563) ((_ is Nil!23036) (t!195061 rules!1563))))))

(declare-fun lt!786818 () Unit!37349)

(declare-fun lt!786814 () Unit!37349)

(assert (=> d!638596 (= lt!786818 lt!786814)))

(declare-fun lt!786819 () List!23117)

(declare-fun lt!786815 () List!23117)

(assert (=> d!638596 (isPrefix!2046 lt!786819 lt!786815)))

(assert (=> d!638596 (= lt!786814 (lemmaIsPrefixRefl!1364 lt!786819 lt!786815))))

(assert (=> d!638596 (= lt!786815 (list!9383 treated!60))))

(assert (=> d!638596 (= lt!786819 (list!9383 treated!60))))

(assert (=> d!638596 (rulesValidInductive!1432 thiss!12889 rules!1563)))

(assert (=> d!638596 (= (maxPrefixZipperSequence!837 thiss!12889 rules!1563 treated!60) lt!786820)))

(declare-fun b!2094140 () Bool)

(declare-fun lt!786816 () Option!4825)

(declare-fun lt!786817 () Option!4825)

(assert (=> b!2094140 (= e!1329411 (ite (and ((_ is None!4824) lt!786816) ((_ is None!4824) lt!786817)) None!4824 (ite ((_ is None!4824) lt!786817) lt!786816 (ite ((_ is None!4824) lt!786816) lt!786817 (ite (>= (size!17990 (_1!12797 (v!27636 lt!786816))) (size!17990 (_1!12797 (v!27636 lt!786817)))) lt!786816 lt!786817)))))))

(assert (=> b!2094140 (= lt!786816 call!127879)))

(assert (=> b!2094140 (= lt!786817 (maxPrefixZipperSequence!837 thiss!12889 (t!195061 rules!1563) treated!60))))

(assert (= (and d!638596 c!337465) b!2094144))

(assert (= (and d!638596 (not c!337465)) b!2094140))

(assert (= (or b!2094144 b!2094140) bm!127874))

(assert (= (and d!638596 res!911716) b!2094141))

(assert (= (and b!2094141 (not res!911713)) b!2094143))

(assert (= (and b!2094143 res!911717) b!2094145))

(assert (= (and b!2094141 res!911714) b!2094146))

(assert (= (and b!2094146 (not res!911718)) b!2094139))

(assert (= (and b!2094139 res!911715) b!2094142))

(declare-fun m!2549990 () Bool)

(assert (=> b!2094139 m!2549990))

(assert (=> b!2094139 m!2549311))

(assert (=> b!2094139 m!2549311))

(assert (=> b!2094139 m!2549904))

(assert (=> b!2094139 m!2549904))

(declare-fun m!2549992 () Bool)

(assert (=> b!2094139 m!2549992))

(declare-fun m!2549994 () Bool)

(assert (=> b!2094140 m!2549994))

(assert (=> b!2094143 m!2549990))

(assert (=> b!2094143 m!2549311))

(assert (=> b!2094143 m!2549311))

(declare-fun m!2549996 () Bool)

(assert (=> b!2094143 m!2549996))

(assert (=> b!2094143 m!2549996))

(declare-fun m!2549998 () Bool)

(assert (=> b!2094143 m!2549998))

(declare-fun m!2550000 () Bool)

(assert (=> b!2094141 m!2550000))

(declare-fun m!2550002 () Bool)

(assert (=> bm!127874 m!2550002))

(assert (=> d!638596 m!2549996))

(declare-fun m!2550004 () Bool)

(assert (=> d!638596 m!2550004))

(declare-fun m!2550006 () Bool)

(assert (=> d!638596 m!2550006))

(assert (=> d!638596 m!2550000))

(declare-fun m!2550008 () Bool)

(assert (=> d!638596 m!2550008))

(assert (=> d!638596 m!2549311))

(assert (=> d!638596 m!2549996))

(assert (=> d!638596 m!2549823))

(assert (=> d!638596 m!2549311))

(declare-fun m!2550010 () Bool)

(assert (=> b!2094142 m!2550010))

(assert (=> b!2094142 m!2549904))

(assert (=> b!2094142 m!2549992))

(assert (=> b!2094142 m!2549311))

(assert (=> b!2094142 m!2549990))

(assert (=> b!2094142 m!2549311))

(assert (=> b!2094142 m!2549904))

(assert (=> b!2094145 m!2550010))

(assert (=> b!2094145 m!2549311))

(assert (=> b!2094145 m!2549996))

(assert (=> b!2094145 m!2549311))

(assert (=> b!2094145 m!2549990))

(assert (=> b!2094145 m!2549996))

(assert (=> b!2094145 m!2549998))

(assert (=> b!2094146 m!2550000))

(assert (=> d!638420 d!638596))

(declare-fun d!638598 () Bool)

(assert (=> d!638598 true))

(declare-fun lt!786823 () Bool)

(assert (=> d!638598 (= lt!786823 (rulesValidInductive!1432 thiss!12889 rules!1563))))

(declare-fun lambda!77906 () Int)

(declare-fun forall!4820 (List!23120 Int) Bool)

(assert (=> d!638598 (= lt!786823 (forall!4820 rules!1563 lambda!77906))))

(assert (=> d!638598 (= (rulesValid!1529 thiss!12889 rules!1563) lt!786823)))

(declare-fun bs!437842 () Bool)

(assert (= bs!437842 d!638598))

(assert (=> bs!437842 m!2549823))

(declare-fun m!2550012 () Bool)

(assert (=> bs!437842 m!2550012))

(assert (=> d!638412 d!638598))

(declare-fun d!638600 () Bool)

(declare-fun res!911723 () Bool)

(declare-fun e!1329418 () Bool)

(assert (=> d!638600 (=> (not res!911723) (not e!1329418))))

(declare-fun valid!1728 (MutableMap!2093) Bool)

(assert (=> d!638600 (= res!911723 (valid!1728 (cache!2474 cacheUp!562)))))

(assert (=> d!638600 (= (validCacheMapUp!212 (cache!2474 cacheUp!562)) e!1329418)))

(declare-fun b!2094153 () Bool)

(declare-fun res!911724 () Bool)

(assert (=> b!2094153 (=> (not res!911724) (not e!1329418))))

(declare-fun invariantList!290 (List!23115) Bool)

(declare-datatypes ((ListMap!629 0))(
  ( (ListMap!630 (toList!1043 List!23115)) )
))
(declare-fun map!4756 (MutableMap!2093) ListMap!629)

(assert (=> b!2094153 (= res!911724 (invariantList!290 (toList!1043 (map!4756 (cache!2474 cacheUp!562)))))))

(declare-fun b!2094154 () Bool)

(declare-fun lambda!77909 () Int)

(declare-fun forall!4821 (List!23115 Int) Bool)

(assert (=> b!2094154 (= e!1329418 (forall!4821 (toList!1043 (map!4756 (cache!2474 cacheUp!562))) lambda!77909))))

(assert (= (and d!638600 res!911723) b!2094153))

(assert (= (and b!2094153 res!911724) b!2094154))

(declare-fun m!2550015 () Bool)

(assert (=> d!638600 m!2550015))

(declare-fun m!2550017 () Bool)

(assert (=> b!2094153 m!2550017))

(declare-fun m!2550019 () Bool)

(assert (=> b!2094153 m!2550019))

(assert (=> b!2094154 m!2550017))

(declare-fun m!2550021 () Bool)

(assert (=> b!2094154 m!2550021))

(assert (=> b!2093708 d!638600))

(declare-fun bs!437843 () Bool)

(declare-fun d!638602 () Bool)

(assert (= bs!437843 (and d!638602 d!638452)))

(declare-fun lambda!77910 () Int)

(assert (=> bs!437843 (= lambda!77910 lambda!77880)))

(declare-fun bs!437844 () Bool)

(assert (= bs!437844 (and d!638602 d!638562)))

(assert (=> bs!437844 (= lambda!77910 lambda!77900)))

(declare-fun bs!437845 () Bool)

(assert (= bs!437845 (and d!638602 d!638578)))

(assert (=> bs!437845 (= lambda!77910 lambda!77901)))

(declare-fun bs!437846 () Bool)

(assert (= bs!437846 (and d!638602 d!638536)))

(assert (=> bs!437846 (= lambda!77910 lambda!77895)))

(declare-fun bs!437847 () Bool)

(assert (= bs!437847 (and d!638602 d!638580)))

(assert (=> bs!437847 (= lambda!77910 lambda!77902)))

(declare-fun bs!437848 () Bool)

(assert (= bs!437848 (and d!638602 d!638480)))

(assert (=> bs!437848 (= lambda!77910 lambda!77885)))

(declare-fun bs!437849 () Bool)

(assert (= bs!437849 (and d!638602 d!638524)))

(assert (=> bs!437849 (= lambda!77910 lambda!77890)))

(declare-fun bs!437850 () Bool)

(assert (= bs!437850 (and d!638602 d!638478)))

(assert (=> bs!437850 (= lambda!77910 lambda!77884)))

(declare-fun bs!437851 () Bool)

(assert (= bs!437851 (and d!638602 d!638534)))

(assert (=> bs!437851 (= lambda!77910 lambda!77894)))

(declare-fun bs!437852 () Bool)

(assert (= bs!437852 (and d!638602 d!638444)))

(assert (=> bs!437852 (= lambda!77910 lambda!77879)))

(declare-fun bs!437853 () Bool)

(assert (= bs!437853 (and d!638602 d!638482)))

(assert (=> bs!437853 (= lambda!77910 lambda!77886)))

(declare-fun bs!437854 () Bool)

(assert (= bs!437854 (and d!638602 d!638528)))

(assert (=> bs!437854 (= lambda!77910 lambda!77892)))

(declare-fun bs!437855 () Bool)

(assert (= bs!437855 (and d!638602 d!638544)))

(assert (=> bs!437855 (= lambda!77910 lambda!77899)))

(declare-fun bs!437856 () Bool)

(assert (= bs!437856 (and d!638602 d!638488)))

(assert (=> bs!437856 (= lambda!77910 lambda!77888)))

(declare-fun bs!437857 () Bool)

(assert (= bs!437857 (and d!638602 d!638532)))

(assert (=> bs!437857 (= lambda!77910 lambda!77893)))

(declare-fun bs!437858 () Bool)

(assert (= bs!437858 (and d!638602 d!638592)))

(assert (=> bs!437858 (= lambda!77910 lambda!77903)))

(declare-fun bs!437859 () Bool)

(assert (= bs!437859 (and d!638602 d!638484)))

(assert (=> bs!437859 (= lambda!77910 lambda!77887)))

(declare-fun bs!437860 () Bool)

(assert (= bs!437860 (and d!638602 d!638512)))

(assert (=> bs!437860 (= lambda!77910 lambda!77889)))

(declare-fun bs!437861 () Bool)

(assert (= bs!437861 (and d!638602 d!638526)))

(assert (=> bs!437861 (= lambda!77910 lambda!77891)))

(assert (=> d!638602 (= (inv!30535 (_1!12792 (_1!12793 (h!28432 (zeroValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))))) (forall!4818 (exprs!1603 (_1!12792 (_1!12793 (h!28432 (zeroValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))))) lambda!77910))))

(declare-fun bs!437862 () Bool)

(assert (= bs!437862 d!638602))

(declare-fun m!2550023 () Bool)

(assert (=> bs!437862 m!2550023))

(assert (=> b!2093723 d!638602))

(declare-fun b!2094157 () Bool)

(declare-fun e!1329420 () List!23117)

(assert (=> b!2094157 (= e!1329420 (list!9387 (xs!10608 (c!337359 (_2!12796 lt!786715)))))))

(declare-fun b!2094156 () Bool)

(declare-fun e!1329419 () List!23117)

(assert (=> b!2094156 (= e!1329419 e!1329420)))

(declare-fun c!337467 () Bool)

(assert (=> b!2094156 (= c!337467 ((_ is Leaf!11208) (c!337359 (_2!12796 lt!786715))))))

(declare-fun d!638604 () Bool)

(declare-fun c!337466 () Bool)

(assert (=> d!638604 (= c!337466 ((_ is Empty!7674) (c!337359 (_2!12796 lt!786715))))))

(assert (=> d!638604 (= (list!9385 (c!337359 (_2!12796 lt!786715))) e!1329419)))

(declare-fun b!2094155 () Bool)

(assert (=> b!2094155 (= e!1329419 Nil!23033)))

(declare-fun b!2094158 () Bool)

(assert (=> b!2094158 (= e!1329420 (++!6273 (list!9385 (left!18059 (c!337359 (_2!12796 lt!786715)))) (list!9385 (right!18389 (c!337359 (_2!12796 lt!786715))))))))

(assert (= (and d!638604 c!337466) b!2094155))

(assert (= (and d!638604 (not c!337466)) b!2094156))

(assert (= (and b!2094156 c!337467) b!2094157))

(assert (= (and b!2094156 (not c!337467)) b!2094158))

(declare-fun m!2550025 () Bool)

(assert (=> b!2094157 m!2550025))

(declare-fun m!2550027 () Bool)

(assert (=> b!2094158 m!2550027))

(declare-fun m!2550029 () Bool)

(assert (=> b!2094158 m!2550029))

(assert (=> b!2094158 m!2550027))

(assert (=> b!2094158 m!2550029))

(declare-fun m!2550031 () Bool)

(assert (=> b!2094158 m!2550031))

(assert (=> d!638402 d!638604))

(declare-fun b!2094159 () Bool)

(declare-fun e!1329421 () Bool)

(declare-fun e!1329422 () Bool)

(assert (=> b!2094159 (= e!1329421 e!1329422)))

(declare-fun res!911729 () Bool)

(assert (=> b!2094159 (=> (not res!911729) (not e!1329422))))

(assert (=> b!2094159 (= res!911729 (<= (- 1) (- (height!1221 (left!18059 (c!337359 treated!60))) (height!1221 (right!18389 (c!337359 treated!60))))))))

(declare-fun b!2094160 () Bool)

(declare-fun res!911726 () Bool)

(assert (=> b!2094160 (=> (not res!911726) (not e!1329422))))

(assert (=> b!2094160 (= res!911726 (isBalanced!2411 (left!18059 (c!337359 treated!60))))))

(declare-fun b!2094161 () Bool)

(declare-fun res!911730 () Bool)

(assert (=> b!2094161 (=> (not res!911730) (not e!1329422))))

(assert (=> b!2094161 (= res!911730 (not (isEmpty!14209 (left!18059 (c!337359 treated!60)))))))

(declare-fun b!2094162 () Bool)

(declare-fun res!911727 () Bool)

(assert (=> b!2094162 (=> (not res!911727) (not e!1329422))))

(assert (=> b!2094162 (= res!911727 (isBalanced!2411 (right!18389 (c!337359 treated!60))))))

(declare-fun b!2094163 () Bool)

(assert (=> b!2094163 (= e!1329422 (not (isEmpty!14209 (right!18389 (c!337359 treated!60)))))))

(declare-fun d!638606 () Bool)

(declare-fun res!911728 () Bool)

(assert (=> d!638606 (=> res!911728 e!1329421)))

(assert (=> d!638606 (= res!911728 (not ((_ is Node!7674) (c!337359 treated!60))))))

(assert (=> d!638606 (= (isBalanced!2411 (c!337359 treated!60)) e!1329421)))

(declare-fun b!2094164 () Bool)

(declare-fun res!911725 () Bool)

(assert (=> b!2094164 (=> (not res!911725) (not e!1329422))))

(assert (=> b!2094164 (= res!911725 (<= (- (height!1221 (left!18059 (c!337359 treated!60))) (height!1221 (right!18389 (c!337359 treated!60)))) 1))))

(assert (= (and d!638606 (not res!911728)) b!2094159))

(assert (= (and b!2094159 res!911729) b!2094164))

(assert (= (and b!2094164 res!911725) b!2094160))

(assert (= (and b!2094160 res!911726) b!2094162))

(assert (= (and b!2094162 res!911727) b!2094161))

(assert (= (and b!2094161 res!911730) b!2094163))

(assert (=> b!2094159 m!2549847))

(assert (=> b!2094159 m!2549849))

(assert (=> b!2094164 m!2549847))

(assert (=> b!2094164 m!2549849))

(declare-fun m!2550033 () Bool)

(assert (=> b!2094163 m!2550033))

(declare-fun m!2550035 () Bool)

(assert (=> b!2094160 m!2550035))

(declare-fun m!2550037 () Bool)

(assert (=> b!2094161 m!2550037))

(declare-fun m!2550039 () Bool)

(assert (=> b!2094162 m!2550039))

(assert (=> d!638436 d!638606))

(declare-fun d!638608 () Bool)

(declare-fun res!911731 () Bool)

(declare-fun e!1329423 () Bool)

(assert (=> d!638608 (=> (not res!911731) (not e!1329423))))

(assert (=> d!638608 (= res!911731 (<= (size!17992 (list!9387 (xs!10608 (c!337359 input!986)))) 512))))

(assert (=> d!638608 (= (inv!30534 (c!337359 input!986)) e!1329423)))

(declare-fun b!2094165 () Bool)

(declare-fun res!911732 () Bool)

(assert (=> b!2094165 (=> (not res!911732) (not e!1329423))))

(assert (=> b!2094165 (= res!911732 (= (csize!15579 (c!337359 input!986)) (size!17992 (list!9387 (xs!10608 (c!337359 input!986))))))))

(declare-fun b!2094166 () Bool)

(assert (=> b!2094166 (= e!1329423 (and (> (csize!15579 (c!337359 input!986)) 0) (<= (csize!15579 (c!337359 input!986)) 512)))))

(assert (= (and d!638608 res!911731) b!2094165))

(assert (= (and b!2094165 res!911732) b!2094166))

(assert (=> d!638608 m!2549629))

(assert (=> d!638608 m!2549629))

(declare-fun m!2550041 () Bool)

(assert (=> d!638608 m!2550041))

(assert (=> b!2094165 m!2549629))

(assert (=> b!2094165 m!2549629))

(assert (=> b!2094165 m!2550041))

(assert (=> b!2093692 d!638608))

(declare-fun d!638610 () Bool)

(declare-fun lt!786824 () Bool)

(assert (=> d!638610 (= lt!786824 (isEmpty!14208 (list!9384 (_1!12796 lt!786728))))))

(assert (=> d!638610 (= lt!786824 (isEmpty!14207 (c!337360 (_1!12796 lt!786728))))))

(assert (=> d!638610 (= (isEmpty!14206 (_1!12796 lt!786728)) lt!786824)))

(declare-fun bs!437863 () Bool)

(assert (= bs!437863 d!638610))

(assert (=> bs!437863 m!2549407))

(assert (=> bs!437863 m!2549407))

(declare-fun m!2550043 () Bool)

(assert (=> bs!437863 m!2550043))

(declare-fun m!2550045 () Bool)

(assert (=> bs!437863 m!2550045))

(assert (=> b!2093666 d!638610))

(assert (=> b!2093658 d!638566))

(assert (=> b!2093658 d!638370))

(declare-fun d!638612 () Bool)

(assert (=> d!638612 (= (inv!30537 (xs!10608 (c!337359 totalInput!418))) (<= (size!17992 (innerList!7734 (xs!10608 (c!337359 totalInput!418)))) 2147483647))))

(declare-fun bs!437864 () Bool)

(assert (= bs!437864 d!638612))

(declare-fun m!2550047 () Bool)

(assert (=> bs!437864 m!2550047))

(assert (=> b!2093829 d!638612))

(declare-fun b!2094169 () Bool)

(declare-fun e!1329425 () List!23117)

(assert (=> b!2094169 (= e!1329425 (list!9387 (xs!10608 (c!337359 treated!60))))))

(declare-fun b!2094168 () Bool)

(declare-fun e!1329424 () List!23117)

(assert (=> b!2094168 (= e!1329424 e!1329425)))

(declare-fun c!337469 () Bool)

(assert (=> b!2094168 (= c!337469 ((_ is Leaf!11208) (c!337359 treated!60)))))

(declare-fun d!638614 () Bool)

(declare-fun c!337468 () Bool)

(assert (=> d!638614 (= c!337468 ((_ is Empty!7674) (c!337359 treated!60)))))

(assert (=> d!638614 (= (list!9385 (c!337359 treated!60)) e!1329424)))

(declare-fun b!2094167 () Bool)

(assert (=> b!2094167 (= e!1329424 Nil!23033)))

(declare-fun b!2094170 () Bool)

(assert (=> b!2094170 (= e!1329425 (++!6273 (list!9385 (left!18059 (c!337359 treated!60))) (list!9385 (right!18389 (c!337359 treated!60)))))))

(assert (= (and d!638614 c!337468) b!2094167))

(assert (= (and d!638614 (not c!337468)) b!2094168))

(assert (= (and b!2094168 c!337469) b!2094169))

(assert (= (and b!2094168 (not c!337469)) b!2094170))

(declare-fun m!2550049 () Bool)

(assert (=> b!2094169 m!2550049))

(declare-fun m!2550051 () Bool)

(assert (=> b!2094170 m!2550051))

(declare-fun m!2550053 () Bool)

(assert (=> b!2094170 m!2550053))

(assert (=> b!2094170 m!2550051))

(assert (=> b!2094170 m!2550053))

(declare-fun m!2550055 () Bool)

(assert (=> b!2094170 m!2550055))

(assert (=> d!638374 d!638614))

(declare-fun d!638616 () Bool)

(assert (=> d!638616 (= (inv!30536 (xs!10609 (c!337360 acc!382))) (<= (size!17995 (innerList!7735 (xs!10609 (c!337360 acc!382)))) 2147483647))))

(declare-fun bs!437865 () Bool)

(assert (= bs!437865 d!638616))

(declare-fun m!2550057 () Bool)

(assert (=> bs!437865 m!2550057))

(assert (=> b!2093738 d!638616))

(assert (=> d!638406 d!638600))

(declare-fun d!638618 () Bool)

(assert (=> d!638618 (= (list!9384 (_1!12796 lt!786737)) (list!9386 (c!337360 (_1!12796 lt!786737))))))

(declare-fun bs!437866 () Bool)

(assert (= bs!437866 d!638618))

(declare-fun m!2550059 () Bool)

(assert (=> bs!437866 m!2550059))

(assert (=> b!2093704 d!638618))

(assert (=> b!2093704 d!638556))

(assert (=> b!2093704 d!638374))

(declare-fun bs!437867 () Bool)

(declare-fun d!638620 () Bool)

(assert (= bs!437867 (and d!638620 d!638452)))

(declare-fun lambda!77911 () Int)

(assert (=> bs!437867 (= lambda!77911 lambda!77880)))

(declare-fun bs!437868 () Bool)

(assert (= bs!437868 (and d!638620 d!638562)))

(assert (=> bs!437868 (= lambda!77911 lambda!77900)))

(declare-fun bs!437869 () Bool)

(assert (= bs!437869 (and d!638620 d!638578)))

(assert (=> bs!437869 (= lambda!77911 lambda!77901)))

(declare-fun bs!437870 () Bool)

(assert (= bs!437870 (and d!638620 d!638536)))

(assert (=> bs!437870 (= lambda!77911 lambda!77895)))

(declare-fun bs!437871 () Bool)

(assert (= bs!437871 (and d!638620 d!638580)))

(assert (=> bs!437871 (= lambda!77911 lambda!77902)))

(declare-fun bs!437872 () Bool)

(assert (= bs!437872 (and d!638620 d!638480)))

(assert (=> bs!437872 (= lambda!77911 lambda!77885)))

(declare-fun bs!437873 () Bool)

(assert (= bs!437873 (and d!638620 d!638602)))

(assert (=> bs!437873 (= lambda!77911 lambda!77910)))

(declare-fun bs!437874 () Bool)

(assert (= bs!437874 (and d!638620 d!638524)))

(assert (=> bs!437874 (= lambda!77911 lambda!77890)))

(declare-fun bs!437875 () Bool)

(assert (= bs!437875 (and d!638620 d!638478)))

(assert (=> bs!437875 (= lambda!77911 lambda!77884)))

(declare-fun bs!437876 () Bool)

(assert (= bs!437876 (and d!638620 d!638534)))

(assert (=> bs!437876 (= lambda!77911 lambda!77894)))

(declare-fun bs!437877 () Bool)

(assert (= bs!437877 (and d!638620 d!638444)))

(assert (=> bs!437877 (= lambda!77911 lambda!77879)))

(declare-fun bs!437878 () Bool)

(assert (= bs!437878 (and d!638620 d!638482)))

(assert (=> bs!437878 (= lambda!77911 lambda!77886)))

(declare-fun bs!437879 () Bool)

(assert (= bs!437879 (and d!638620 d!638528)))

(assert (=> bs!437879 (= lambda!77911 lambda!77892)))

(declare-fun bs!437880 () Bool)

(assert (= bs!437880 (and d!638620 d!638544)))

(assert (=> bs!437880 (= lambda!77911 lambda!77899)))

(declare-fun bs!437881 () Bool)

(assert (= bs!437881 (and d!638620 d!638488)))

(assert (=> bs!437881 (= lambda!77911 lambda!77888)))

(declare-fun bs!437882 () Bool)

(assert (= bs!437882 (and d!638620 d!638532)))

(assert (=> bs!437882 (= lambda!77911 lambda!77893)))

(declare-fun bs!437883 () Bool)

(assert (= bs!437883 (and d!638620 d!638592)))

(assert (=> bs!437883 (= lambda!77911 lambda!77903)))

(declare-fun bs!437884 () Bool)

(assert (= bs!437884 (and d!638620 d!638484)))

(assert (=> bs!437884 (= lambda!77911 lambda!77887)))

(declare-fun bs!437885 () Bool)

(assert (= bs!437885 (and d!638620 d!638512)))

(assert (=> bs!437885 (= lambda!77911 lambda!77889)))

(declare-fun bs!437886 () Bool)

(assert (= bs!437886 (and d!638620 d!638526)))

(assert (=> bs!437886 (= lambda!77911 lambda!77891)))

(assert (=> d!638620 (= (inv!30535 (_1!12792 (_1!12793 (h!28432 mapDefault!10501)))) (forall!4818 (exprs!1603 (_1!12792 (_1!12793 (h!28432 mapDefault!10501)))) lambda!77911))))

(declare-fun bs!437887 () Bool)

(assert (= bs!437887 d!638620))

(declare-fun m!2550061 () Bool)

(assert (=> bs!437887 m!2550061))

(assert (=> b!2093799 d!638620))

(declare-fun d!638622 () Bool)

(declare-fun c!337470 () Bool)

(assert (=> d!638622 (= c!337470 ((_ is Node!7674) (left!18059 (c!337359 input!986))))))

(declare-fun e!1329426 () Bool)

(assert (=> d!638622 (= (inv!30525 (left!18059 (c!337359 input!986))) e!1329426)))

(declare-fun b!2094171 () Bool)

(assert (=> b!2094171 (= e!1329426 (inv!30533 (left!18059 (c!337359 input!986))))))

(declare-fun b!2094172 () Bool)

(declare-fun e!1329427 () Bool)

(assert (=> b!2094172 (= e!1329426 e!1329427)))

(declare-fun res!911733 () Bool)

(assert (=> b!2094172 (= res!911733 (not ((_ is Leaf!11208) (left!18059 (c!337359 input!986)))))))

(assert (=> b!2094172 (=> res!911733 e!1329427)))

(declare-fun b!2094173 () Bool)

(assert (=> b!2094173 (= e!1329427 (inv!30534 (left!18059 (c!337359 input!986))))))

(assert (= (and d!638622 c!337470) b!2094171))

(assert (= (and d!638622 (not c!337470)) b!2094172))

(assert (= (and b!2094172 (not res!911733)) b!2094173))

(declare-fun m!2550063 () Bool)

(assert (=> b!2094171 m!2550063))

(declare-fun m!2550065 () Bool)

(assert (=> b!2094173 m!2550065))

(assert (=> b!2093796 d!638622))

(declare-fun d!638624 () Bool)

(declare-fun c!337471 () Bool)

(assert (=> d!638624 (= c!337471 ((_ is Node!7674) (right!18389 (c!337359 input!986))))))

(declare-fun e!1329428 () Bool)

(assert (=> d!638624 (= (inv!30525 (right!18389 (c!337359 input!986))) e!1329428)))

(declare-fun b!2094174 () Bool)

(assert (=> b!2094174 (= e!1329428 (inv!30533 (right!18389 (c!337359 input!986))))))

(declare-fun b!2094175 () Bool)

(declare-fun e!1329429 () Bool)

(assert (=> b!2094175 (= e!1329428 e!1329429)))

(declare-fun res!911734 () Bool)

(assert (=> b!2094175 (= res!911734 (not ((_ is Leaf!11208) (right!18389 (c!337359 input!986)))))))

(assert (=> b!2094175 (=> res!911734 e!1329429)))

(declare-fun b!2094176 () Bool)

(assert (=> b!2094176 (= e!1329429 (inv!30534 (right!18389 (c!337359 input!986))))))

(assert (= (and d!638624 c!337471) b!2094174))

(assert (= (and d!638624 (not c!337471)) b!2094175))

(assert (= (and b!2094175 (not res!911734)) b!2094176))

(declare-fun m!2550067 () Bool)

(assert (=> b!2094174 m!2550067))

(declare-fun m!2550069 () Bool)

(assert (=> b!2094176 m!2550069))

(assert (=> b!2093796 d!638624))

(declare-fun d!638626 () Bool)

(assert (=> d!638626 true))

(declare-fun order!14437 () Int)

(declare-fun lambda!77914 () Int)

(declare-fun dynLambda!11241 (Int Int) Int)

(assert (=> d!638626 (< (dynLambda!11240 order!14435 (toValue!5810 (transformation!4105 (h!28437 rules!1563)))) (dynLambda!11241 order!14437 lambda!77914))))

(declare-fun Forall2!660 (Int) Bool)

(assert (=> d!638626 (= (equivClasses!1569 (toChars!5669 (transformation!4105 (h!28437 rules!1563))) (toValue!5810 (transformation!4105 (h!28437 rules!1563)))) (Forall2!660 lambda!77914))))

(declare-fun bs!437888 () Bool)

(assert (= bs!437888 d!638626))

(declare-fun m!2550071 () Bool)

(assert (=> bs!437888 m!2550071))

(assert (=> b!2093683 d!638626))

(declare-fun bs!437889 () Bool)

(declare-fun d!638628 () Bool)

(assert (= bs!437889 (and d!638628 d!638452)))

(declare-fun lambda!77915 () Int)

(assert (=> bs!437889 (= lambda!77915 lambda!77880)))

(declare-fun bs!437890 () Bool)

(assert (= bs!437890 (and d!638628 d!638562)))

(assert (=> bs!437890 (= lambda!77915 lambda!77900)))

(declare-fun bs!437891 () Bool)

(assert (= bs!437891 (and d!638628 d!638578)))

(assert (=> bs!437891 (= lambda!77915 lambda!77901)))

(declare-fun bs!437892 () Bool)

(assert (= bs!437892 (and d!638628 d!638536)))

(assert (=> bs!437892 (= lambda!77915 lambda!77895)))

(declare-fun bs!437893 () Bool)

(assert (= bs!437893 (and d!638628 d!638580)))

(assert (=> bs!437893 (= lambda!77915 lambda!77902)))

(declare-fun bs!437894 () Bool)

(assert (= bs!437894 (and d!638628 d!638480)))

(assert (=> bs!437894 (= lambda!77915 lambda!77885)))

(declare-fun bs!437895 () Bool)

(assert (= bs!437895 (and d!638628 d!638602)))

(assert (=> bs!437895 (= lambda!77915 lambda!77910)))

(declare-fun bs!437896 () Bool)

(assert (= bs!437896 (and d!638628 d!638524)))

(assert (=> bs!437896 (= lambda!77915 lambda!77890)))

(declare-fun bs!437897 () Bool)

(assert (= bs!437897 (and d!638628 d!638620)))

(assert (=> bs!437897 (= lambda!77915 lambda!77911)))

(declare-fun bs!437898 () Bool)

(assert (= bs!437898 (and d!638628 d!638478)))

(assert (=> bs!437898 (= lambda!77915 lambda!77884)))

(declare-fun bs!437899 () Bool)

(assert (= bs!437899 (and d!638628 d!638534)))

(assert (=> bs!437899 (= lambda!77915 lambda!77894)))

(declare-fun bs!437900 () Bool)

(assert (= bs!437900 (and d!638628 d!638444)))

(assert (=> bs!437900 (= lambda!77915 lambda!77879)))

(declare-fun bs!437901 () Bool)

(assert (= bs!437901 (and d!638628 d!638482)))

(assert (=> bs!437901 (= lambda!77915 lambda!77886)))

(declare-fun bs!437902 () Bool)

(assert (= bs!437902 (and d!638628 d!638528)))

(assert (=> bs!437902 (= lambda!77915 lambda!77892)))

(declare-fun bs!437903 () Bool)

(assert (= bs!437903 (and d!638628 d!638544)))

(assert (=> bs!437903 (= lambda!77915 lambda!77899)))

(declare-fun bs!437904 () Bool)

(assert (= bs!437904 (and d!638628 d!638488)))

(assert (=> bs!437904 (= lambda!77915 lambda!77888)))

(declare-fun bs!437905 () Bool)

(assert (= bs!437905 (and d!638628 d!638532)))

(assert (=> bs!437905 (= lambda!77915 lambda!77893)))

(declare-fun bs!437906 () Bool)

(assert (= bs!437906 (and d!638628 d!638592)))

(assert (=> bs!437906 (= lambda!77915 lambda!77903)))

(declare-fun bs!437907 () Bool)

(assert (= bs!437907 (and d!638628 d!638484)))

(assert (=> bs!437907 (= lambda!77915 lambda!77887)))

(declare-fun bs!437908 () Bool)

(assert (= bs!437908 (and d!638628 d!638512)))

(assert (=> bs!437908 (= lambda!77915 lambda!77889)))

(declare-fun bs!437909 () Bool)

(assert (= bs!437909 (and d!638628 d!638526)))

(assert (=> bs!437909 (= lambda!77915 lambda!77891)))

(assert (=> d!638628 (= (inv!30535 setElem!13356) (forall!4818 (exprs!1603 setElem!13356) lambda!77915))))

(declare-fun bs!437910 () Bool)

(assert (= bs!437910 d!638628))

(declare-fun m!2550073 () Bool)

(assert (=> bs!437910 m!2550073))

(assert (=> setNonEmpty!13356 d!638628))

(declare-fun b!2094181 () Bool)

(declare-fun res!911741 () Bool)

(declare-fun e!1329433 () Bool)

(assert (=> b!2094181 (=> (not res!911741) (not e!1329433))))

(assert (=> b!2094181 (= res!911741 (isBalanced!2410 (left!18060 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712))))))))

(declare-fun b!2094182 () Bool)

(declare-fun res!911739 () Bool)

(assert (=> b!2094182 (=> (not res!911739) (not e!1329433))))

(assert (=> b!2094182 (= res!911739 (isBalanced!2410 (right!18390 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712))))))))

(declare-fun b!2094183 () Bool)

(declare-fun res!911737 () Bool)

(assert (=> b!2094183 (=> (not res!911737) (not e!1329433))))

(assert (=> b!2094183 (= res!911737 (<= (- (height!1220 (left!18060 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712))))) (height!1220 (right!18390 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712)))))) 1))))

(declare-fun b!2094185 () Bool)

(declare-fun e!1329432 () Bool)

(assert (=> b!2094185 (= e!1329432 e!1329433)))

(declare-fun res!911740 () Bool)

(assert (=> b!2094185 (=> (not res!911740) (not e!1329433))))

(assert (=> b!2094185 (= res!911740 (<= (- 1) (- (height!1220 (left!18060 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712))))) (height!1220 (right!18390 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712))))))))))

(declare-fun b!2094186 () Bool)

(declare-fun res!911742 () Bool)

(assert (=> b!2094186 (=> (not res!911742) (not e!1329433))))

(assert (=> b!2094186 (= res!911742 (not (isEmpty!14207 (left!18060 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712)))))))))

(declare-fun d!638630 () Bool)

(declare-fun res!911738 () Bool)

(assert (=> d!638630 (=> res!911738 e!1329432)))

(assert (=> d!638630 (= res!911738 (not ((_ is Node!7675) (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712))))))))

(assert (=> d!638630 (= (isBalanced!2410 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712)))) e!1329432)))

(declare-fun b!2094184 () Bool)

(assert (=> b!2094184 (= e!1329433 (not (isEmpty!14207 (right!18390 (++!6275 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712)))))))))

(assert (= (and d!638630 (not res!911738)) b!2094185))

(assert (= (and b!2094185 res!911740) b!2094183))

(assert (= (and b!2094183 res!911737) b!2094181))

(assert (= (and b!2094181 res!911741) b!2094182))

(assert (= (and b!2094182 res!911739) b!2094186))

(assert (= (and b!2094186 res!911742) b!2094184))

(declare-fun m!2550075 () Bool)

(assert (=> b!2094186 m!2550075))

(declare-fun m!2550077 () Bool)

(assert (=> b!2094181 m!2550077))

(declare-fun m!2550079 () Bool)

(assert (=> b!2094183 m!2550079))

(declare-fun m!2550081 () Bool)

(assert (=> b!2094183 m!2550081))

(declare-fun m!2550083 () Bool)

(assert (=> b!2094182 m!2550083))

(declare-fun m!2550085 () Bool)

(assert (=> b!2094184 m!2550085))

(assert (=> b!2094185 m!2550079))

(assert (=> b!2094185 m!2550081))

(assert (=> b!2093677 d!638630))

(assert (=> b!2093677 d!638460))

(declare-fun b!2094205 () Bool)

(declare-fun e!1329456 () Bool)

(declare-fun appendAssoc!149 (List!23119 List!23119 List!23119) Bool)

(assert (=> b!2094205 (= e!1329456 (appendAssoc!149 (++!6276 (list!9386 (c!337360 acc!382)) (list!9386 (left!18060 (left!18060 (c!337360 (_1!12796 lt!786712)))))) (list!9386 (right!18390 (left!18060 (c!337360 (_1!12796 lt!786712))))) (list!9386 (right!18390 (c!337360 (_1!12796 lt!786712))))))))

(declare-fun b!2094206 () Bool)

(declare-fun e!1329458 () Bool)

(declare-fun e!1329460 () Bool)

(assert (=> b!2094206 (= e!1329458 e!1329460)))

(declare-fun res!911762 () Bool)

(assert (=> b!2094206 (=> res!911762 e!1329460)))

(assert (=> b!2094206 (= res!911762 (not ((_ is Node!7675) (left!18060 (c!337360 (_1!12796 lt!786712))))))))

(declare-fun b!2094207 () Bool)

(declare-fun e!1329454 () Bool)

(declare-fun e!1329453 () Bool)

(assert (=> b!2094207 (= e!1329454 e!1329453)))

(declare-fun res!911766 () Bool)

(assert (=> b!2094207 (=> (not res!911766) (not e!1329453))))

(assert (=> b!2094207 (= res!911766 (appendAssoc!149 (list!9386 (left!18060 (c!337360 acc!382))) (list!9386 (right!18390 (c!337360 acc!382))) (list!9386 (c!337360 (_1!12796 lt!786712)))))))

(declare-fun d!638632 () Bool)

(declare-fun e!1329459 () Bool)

(assert (=> d!638632 e!1329459))

(declare-fun res!911769 () Bool)

(assert (=> d!638632 (=> (not res!911769) (not e!1329459))))

(assert (=> d!638632 (= res!911769 e!1329454)))

(declare-fun res!911768 () Bool)

(assert (=> d!638632 (=> res!911768 e!1329454)))

(assert (=> d!638632 (= res!911768 (not ((_ is Node!7675) (c!337360 acc!382))))))

(assert (=> d!638632 (= (appendAssocInst!583 (c!337360 acc!382) (c!337360 (_1!12796 lt!786712))) true)))

(declare-fun b!2094208 () Bool)

(declare-fun e!1329457 () Bool)

(assert (=> b!2094208 (= e!1329457 (appendAssoc!149 (list!9386 (left!18060 (c!337360 acc!382))) (list!9386 (left!18060 (right!18390 (c!337360 acc!382)))) (++!6276 (list!9386 (right!18390 (right!18390 (c!337360 acc!382)))) (list!9386 (c!337360 (_1!12796 lt!786712))))))))

(declare-fun b!2094209 () Bool)

(declare-fun e!1329455 () Bool)

(assert (=> b!2094209 (= e!1329455 e!1329458)))

(declare-fun res!911767 () Bool)

(assert (=> b!2094209 (=> (not res!911767) (not e!1329458))))

(assert (=> b!2094209 (= res!911767 (appendAssoc!149 (list!9386 (c!337360 acc!382)) (list!9386 (left!18060 (c!337360 (_1!12796 lt!786712)))) (list!9386 (right!18390 (c!337360 (_1!12796 lt!786712))))))))

(declare-fun b!2094210 () Bool)

(assert (=> b!2094210 (= e!1329459 e!1329455)))

(declare-fun res!911763 () Bool)

(assert (=> b!2094210 (=> res!911763 e!1329455)))

(assert (=> b!2094210 (= res!911763 (not ((_ is Node!7675) (c!337360 (_1!12796 lt!786712)))))))

(declare-fun b!2094211 () Bool)

(declare-fun e!1329452 () Bool)

(assert (=> b!2094211 (= e!1329453 e!1329452)))

(declare-fun res!911765 () Bool)

(assert (=> b!2094211 (=> res!911765 e!1329452)))

(assert (=> b!2094211 (= res!911765 (not ((_ is Node!7675) (right!18390 (c!337360 acc!382)))))))

(declare-fun b!2094212 () Bool)

(assert (=> b!2094212 (= e!1329452 e!1329457)))

(declare-fun res!911761 () Bool)

(assert (=> b!2094212 (=> (not res!911761) (not e!1329457))))

(assert (=> b!2094212 (= res!911761 (appendAssoc!149 (list!9386 (left!18060 (right!18390 (c!337360 acc!382)))) (list!9386 (right!18390 (right!18390 (c!337360 acc!382)))) (list!9386 (c!337360 (_1!12796 lt!786712)))))))

(declare-fun b!2094213 () Bool)

(assert (=> b!2094213 (= e!1329460 e!1329456)))

(declare-fun res!911764 () Bool)

(assert (=> b!2094213 (=> (not res!911764) (not e!1329456))))

(assert (=> b!2094213 (= res!911764 (appendAssoc!149 (list!9386 (c!337360 acc!382)) (list!9386 (left!18060 (left!18060 (c!337360 (_1!12796 lt!786712))))) (list!9386 (right!18390 (left!18060 (c!337360 (_1!12796 lt!786712)))))))))

(assert (= (and d!638632 (not res!911768)) b!2094207))

(assert (= (and b!2094207 res!911766) b!2094211))

(assert (= (and b!2094211 (not res!911765)) b!2094212))

(assert (= (and b!2094212 res!911761) b!2094208))

(assert (= (and d!638632 res!911769) b!2094210))

(assert (= (and b!2094210 (not res!911763)) b!2094209))

(assert (= (and b!2094209 res!911767) b!2094206))

(assert (= (and b!2094206 (not res!911762)) b!2094213))

(assert (= (and b!2094213 res!911764) b!2094205))

(declare-fun m!2550087 () Bool)

(assert (=> b!2094208 m!2550087))

(declare-fun m!2550089 () Bool)

(assert (=> b!2094208 m!2550089))

(assert (=> b!2094208 m!2549831))

(assert (=> b!2094208 m!2549617))

(assert (=> b!2094208 m!2550089))

(assert (=> b!2094208 m!2549617))

(declare-fun m!2550091 () Bool)

(assert (=> b!2094208 m!2550091))

(assert (=> b!2094208 m!2549831))

(assert (=> b!2094208 m!2550087))

(assert (=> b!2094208 m!2550091))

(declare-fun m!2550093 () Bool)

(assert (=> b!2094208 m!2550093))

(assert (=> b!2094212 m!2550087))

(assert (=> b!2094212 m!2550089))

(assert (=> b!2094212 m!2549617))

(assert (=> b!2094212 m!2550087))

(assert (=> b!2094212 m!2550089))

(assert (=> b!2094212 m!2549617))

(declare-fun m!2550095 () Bool)

(assert (=> b!2094212 m!2550095))

(assert (=> b!2094213 m!2549473))

(declare-fun m!2550097 () Bool)

(assert (=> b!2094213 m!2550097))

(declare-fun m!2550099 () Bool)

(assert (=> b!2094213 m!2550099))

(assert (=> b!2094213 m!2549473))

(assert (=> b!2094213 m!2550097))

(assert (=> b!2094213 m!2550099))

(declare-fun m!2550101 () Bool)

(assert (=> b!2094213 m!2550101))

(assert (=> b!2094209 m!2549473))

(declare-fun m!2550103 () Bool)

(assert (=> b!2094209 m!2550103))

(declare-fun m!2550105 () Bool)

(assert (=> b!2094209 m!2550105))

(assert (=> b!2094209 m!2549473))

(assert (=> b!2094209 m!2550103))

(assert (=> b!2094209 m!2550105))

(declare-fun m!2550107 () Bool)

(assert (=> b!2094209 m!2550107))

(declare-fun m!2550109 () Bool)

(assert (=> b!2094205 m!2550109))

(assert (=> b!2094205 m!2550099))

(assert (=> b!2094205 m!2550105))

(declare-fun m!2550111 () Bool)

(assert (=> b!2094205 m!2550111))

(assert (=> b!2094205 m!2550097))

(assert (=> b!2094205 m!2550099))

(assert (=> b!2094205 m!2549473))

(assert (=> b!2094205 m!2550097))

(assert (=> b!2094205 m!2550109))

(assert (=> b!2094205 m!2549473))

(assert (=> b!2094205 m!2550105))

(assert (=> b!2094207 m!2549831))

(assert (=> b!2094207 m!2549833))

(assert (=> b!2094207 m!2549617))

(assert (=> b!2094207 m!2549831))

(assert (=> b!2094207 m!2549833))

(assert (=> b!2094207 m!2549617))

(declare-fun m!2550113 () Bool)

(assert (=> b!2094207 m!2550113))

(assert (=> d!638394 d!638632))

(assert (=> d!638394 d!638460))

(declare-fun d!638634 () Bool)

(declare-fun lt!786827 () Int)

(assert (=> d!638634 (>= lt!786827 0)))

(declare-fun e!1329463 () Int)

(assert (=> d!638634 (= lt!786827 e!1329463)))

(declare-fun c!337474 () Bool)

(assert (=> d!638634 (= c!337474 ((_ is Nil!23033) lt!786718))))

(assert (=> d!638634 (= (size!17992 lt!786718) lt!786827)))

(declare-fun b!2094218 () Bool)

(assert (=> b!2094218 (= e!1329463 0)))

(declare-fun b!2094219 () Bool)

(assert (=> b!2094219 (= e!1329463 (+ 1 (size!17992 (t!195058 lt!786718))))))

(assert (= (and d!638634 c!337474) b!2094218))

(assert (= (and d!638634 (not c!337474)) b!2094219))

(declare-fun m!2550115 () Bool)

(assert (=> b!2094219 m!2550115))

(assert (=> b!2093630 d!638634))

(declare-fun d!638636 () Bool)

(declare-fun lt!786828 () Int)

(assert (=> d!638636 (>= lt!786828 0)))

(declare-fun e!1329464 () Int)

(assert (=> d!638636 (= lt!786828 e!1329464)))

(declare-fun c!337475 () Bool)

(assert (=> d!638636 (= c!337475 ((_ is Nil!23033) (list!9383 treated!60)))))

(assert (=> d!638636 (= (size!17992 (list!9383 treated!60)) lt!786828)))

(declare-fun b!2094220 () Bool)

(assert (=> b!2094220 (= e!1329464 0)))

(declare-fun b!2094221 () Bool)

(assert (=> b!2094221 (= e!1329464 (+ 1 (size!17992 (t!195058 (list!9383 treated!60)))))))

(assert (= (and d!638636 c!337475) b!2094220))

(assert (= (and d!638636 (not c!337475)) b!2094221))

(assert (=> b!2094221 m!2549972))

(assert (=> b!2093630 d!638636))

(declare-fun d!638638 () Bool)

(declare-fun lt!786829 () Int)

(assert (=> d!638638 (>= lt!786829 0)))

(declare-fun e!1329465 () Int)

(assert (=> d!638638 (= lt!786829 e!1329465)))

(declare-fun c!337476 () Bool)

(assert (=> d!638638 (= c!337476 ((_ is Nil!23033) (list!9383 input!986)))))

(assert (=> d!638638 (= (size!17992 (list!9383 input!986)) lt!786829)))

(declare-fun b!2094222 () Bool)

(assert (=> b!2094222 (= e!1329465 0)))

(declare-fun b!2094223 () Bool)

(assert (=> b!2094223 (= e!1329465 (+ 1 (size!17992 (t!195058 (list!9383 input!986)))))))

(assert (= (and d!638638 c!337476) b!2094222))

(assert (= (and d!638638 (not c!337476)) b!2094223))

(declare-fun m!2550117 () Bool)

(assert (=> b!2094223 m!2550117))

(assert (=> b!2093630 d!638638))

(declare-fun d!638640 () Bool)

(declare-fun res!911770 () Bool)

(declare-fun e!1329466 () Bool)

(assert (=> d!638640 (=> (not res!911770) (not e!1329466))))

(assert (=> d!638640 (= res!911770 (= (csize!15578 (c!337359 totalInput!418)) (+ (size!17994 (left!18059 (c!337359 totalInput!418))) (size!17994 (right!18389 (c!337359 totalInput!418))))))))

(assert (=> d!638640 (= (inv!30533 (c!337359 totalInput!418)) e!1329466)))

(declare-fun b!2094224 () Bool)

(declare-fun res!911771 () Bool)

(assert (=> b!2094224 (=> (not res!911771) (not e!1329466))))

(assert (=> b!2094224 (= res!911771 (and (not (= (left!18059 (c!337359 totalInput!418)) Empty!7674)) (not (= (right!18389 (c!337359 totalInput!418)) Empty!7674))))))

(declare-fun b!2094225 () Bool)

(declare-fun res!911772 () Bool)

(assert (=> b!2094225 (=> (not res!911772) (not e!1329466))))

(assert (=> b!2094225 (= res!911772 (= (cheight!7885 (c!337359 totalInput!418)) (+ (max!0 (height!1221 (left!18059 (c!337359 totalInput!418))) (height!1221 (right!18389 (c!337359 totalInput!418)))) 1)))))

(declare-fun b!2094226 () Bool)

(assert (=> b!2094226 (= e!1329466 (<= 0 (cheight!7885 (c!337359 totalInput!418))))))

(assert (= (and d!638640 res!911770) b!2094224))

(assert (= (and b!2094224 res!911771) b!2094225))

(assert (= (and b!2094225 res!911772) b!2094226))

(declare-fun m!2550119 () Bool)

(assert (=> d!638640 m!2550119))

(declare-fun m!2550121 () Bool)

(assert (=> d!638640 m!2550121))

(assert (=> b!2094225 m!2549868))

(assert (=> b!2094225 m!2549870))

(assert (=> b!2094225 m!2549868))

(assert (=> b!2094225 m!2549870))

(declare-fun m!2550123 () Bool)

(assert (=> b!2094225 m!2550123))

(assert (=> b!2093712 d!638640))

(declare-fun bs!437911 () Bool)

(declare-fun d!638642 () Bool)

(assert (= bs!437911 (and d!638642 d!638452)))

(declare-fun lambda!77916 () Int)

(assert (=> bs!437911 (= lambda!77916 lambda!77880)))

(declare-fun bs!437912 () Bool)

(assert (= bs!437912 (and d!638642 d!638562)))

(assert (=> bs!437912 (= lambda!77916 lambda!77900)))

(declare-fun bs!437913 () Bool)

(assert (= bs!437913 (and d!638642 d!638578)))

(assert (=> bs!437913 (= lambda!77916 lambda!77901)))

(declare-fun bs!437914 () Bool)

(assert (= bs!437914 (and d!638642 d!638580)))

(assert (=> bs!437914 (= lambda!77916 lambda!77902)))

(declare-fun bs!437915 () Bool)

(assert (= bs!437915 (and d!638642 d!638480)))

(assert (=> bs!437915 (= lambda!77916 lambda!77885)))

(declare-fun bs!437916 () Bool)

(assert (= bs!437916 (and d!638642 d!638602)))

(assert (=> bs!437916 (= lambda!77916 lambda!77910)))

(declare-fun bs!437917 () Bool)

(assert (= bs!437917 (and d!638642 d!638524)))

(assert (=> bs!437917 (= lambda!77916 lambda!77890)))

(declare-fun bs!437918 () Bool)

(assert (= bs!437918 (and d!638642 d!638620)))

(assert (=> bs!437918 (= lambda!77916 lambda!77911)))

(declare-fun bs!437919 () Bool)

(assert (= bs!437919 (and d!638642 d!638478)))

(assert (=> bs!437919 (= lambda!77916 lambda!77884)))

(declare-fun bs!437920 () Bool)

(assert (= bs!437920 (and d!638642 d!638534)))

(assert (=> bs!437920 (= lambda!77916 lambda!77894)))

(declare-fun bs!437921 () Bool)

(assert (= bs!437921 (and d!638642 d!638444)))

(assert (=> bs!437921 (= lambda!77916 lambda!77879)))

(declare-fun bs!437922 () Bool)

(assert (= bs!437922 (and d!638642 d!638482)))

(assert (=> bs!437922 (= lambda!77916 lambda!77886)))

(declare-fun bs!437923 () Bool)

(assert (= bs!437923 (and d!638642 d!638528)))

(assert (=> bs!437923 (= lambda!77916 lambda!77892)))

(declare-fun bs!437924 () Bool)

(assert (= bs!437924 (and d!638642 d!638544)))

(assert (=> bs!437924 (= lambda!77916 lambda!77899)))

(declare-fun bs!437925 () Bool)

(assert (= bs!437925 (and d!638642 d!638536)))

(assert (=> bs!437925 (= lambda!77916 lambda!77895)))

(declare-fun bs!437926 () Bool)

(assert (= bs!437926 (and d!638642 d!638628)))

(assert (=> bs!437926 (= lambda!77916 lambda!77915)))

(declare-fun bs!437927 () Bool)

(assert (= bs!437927 (and d!638642 d!638488)))

(assert (=> bs!437927 (= lambda!77916 lambda!77888)))

(declare-fun bs!437928 () Bool)

(assert (= bs!437928 (and d!638642 d!638532)))

(assert (=> bs!437928 (= lambda!77916 lambda!77893)))

(declare-fun bs!437929 () Bool)

(assert (= bs!437929 (and d!638642 d!638592)))

(assert (=> bs!437929 (= lambda!77916 lambda!77903)))

(declare-fun bs!437930 () Bool)

(assert (= bs!437930 (and d!638642 d!638484)))

(assert (=> bs!437930 (= lambda!77916 lambda!77887)))

(declare-fun bs!437931 () Bool)

(assert (= bs!437931 (and d!638642 d!638512)))

(assert (=> bs!437931 (= lambda!77916 lambda!77889)))

(declare-fun bs!437932 () Bool)

(assert (= bs!437932 (and d!638642 d!638526)))

(assert (=> bs!437932 (= lambda!77916 lambda!77891)))

(assert (=> d!638642 (= (inv!30535 setElem!13369) (forall!4818 (exprs!1603 setElem!13369) lambda!77916))))

(declare-fun bs!437933 () Bool)

(assert (= bs!437933 d!638642))

(declare-fun m!2550125 () Bool)

(assert (=> bs!437933 m!2550125))

(assert (=> setNonEmpty!13369 d!638642))

(assert (=> b!2093711 d!638538))

(declare-fun d!638644 () Bool)

(declare-fun e!1329467 () Bool)

(assert (=> d!638644 e!1329467))

(declare-fun res!911773 () Bool)

(assert (=> d!638644 (=> (not res!911773) (not e!1329467))))

(assert (=> d!638644 (= res!911773 (isBalanced!2410 (prepend!971 (c!337360 (_1!12796 lt!786729)) (_1!12797 (v!27636 lt!786730)))))))

(declare-fun lt!786830 () BalanceConc!15112)

(assert (=> d!638644 (= lt!786830 (BalanceConc!15113 (prepend!971 (c!337360 (_1!12796 lt!786729)) (_1!12797 (v!27636 lt!786730)))))))

(assert (=> d!638644 (= (prepend!970 (_1!12796 lt!786729) (_1!12797 (v!27636 lt!786730))) lt!786830)))

(declare-fun b!2094227 () Bool)

(assert (=> b!2094227 (= e!1329467 (= (list!9384 lt!786830) (Cons!23035 (_1!12797 (v!27636 lt!786730)) (list!9384 (_1!12796 lt!786729)))))))

(assert (= (and d!638644 res!911773) b!2094227))

(declare-fun m!2550127 () Bool)

(assert (=> d!638644 m!2550127))

(assert (=> d!638644 m!2550127))

(declare-fun m!2550129 () Bool)

(assert (=> d!638644 m!2550129))

(declare-fun m!2550131 () Bool)

(assert (=> b!2094227 m!2550131))

(declare-fun m!2550133 () Bool)

(assert (=> b!2094227 m!2550133))

(assert (=> b!2093663 d!638644))

(declare-fun d!638646 () Bool)

(declare-fun e!1329469 () Bool)

(assert (=> d!638646 e!1329469))

(declare-fun res!911774 () Bool)

(assert (=> d!638646 (=> (not res!911774) (not e!1329469))))

(declare-fun e!1329470 () Bool)

(assert (=> d!638646 (= res!911774 e!1329470)))

(declare-fun c!337478 () Bool)

(declare-fun lt!786831 () tuple2!22208)

(assert (=> d!638646 (= c!337478 (> (size!17993 (_1!12796 lt!786831)) 0))))

(declare-fun e!1329468 () tuple2!22208)

(assert (=> d!638646 (= lt!786831 e!1329468)))

(declare-fun c!337477 () Bool)

(declare-fun lt!786833 () Option!4825)

(assert (=> d!638646 (= c!337477 ((_ is Some!4824) lt!786833))))

(assert (=> d!638646 (= lt!786833 (maxPrefixZipperSequence!837 thiss!12889 rules!1563 (_2!12797 (v!27636 lt!786730))))))

(assert (=> d!638646 (= (lexRec!502 thiss!12889 rules!1563 (_2!12797 (v!27636 lt!786730))) lt!786831)))

(declare-fun b!2094228 () Bool)

(assert (=> b!2094228 (= e!1329468 (tuple2!22209 (BalanceConc!15113 Empty!7675) (_2!12797 (v!27636 lt!786730))))))

(declare-fun b!2094229 () Bool)

(declare-fun lt!786832 () tuple2!22208)

(assert (=> b!2094229 (= e!1329468 (tuple2!22209 (prepend!970 (_1!12796 lt!786832) (_1!12797 (v!27636 lt!786833))) (_2!12796 lt!786832)))))

(assert (=> b!2094229 (= lt!786832 (lexRec!502 thiss!12889 rules!1563 (_2!12797 (v!27636 lt!786833))))))

(declare-fun b!2094230 () Bool)

(assert (=> b!2094230 (= e!1329469 (= (list!9383 (_2!12796 lt!786831)) (_2!12798 (lexList!1028 thiss!12889 rules!1563 (list!9383 (_2!12797 (v!27636 lt!786730)))))))))

(declare-fun b!2094231 () Bool)

(assert (=> b!2094231 (= e!1329470 (= (list!9383 (_2!12796 lt!786831)) (list!9383 (_2!12797 (v!27636 lt!786730)))))))

(declare-fun b!2094232 () Bool)

(declare-fun e!1329471 () Bool)

(assert (=> b!2094232 (= e!1329471 (not (isEmpty!14206 (_1!12796 lt!786831))))))

(declare-fun b!2094233 () Bool)

(declare-fun res!911776 () Bool)

(assert (=> b!2094233 (=> (not res!911776) (not e!1329469))))

(assert (=> b!2094233 (= res!911776 (= (list!9384 (_1!12796 lt!786831)) (_1!12798 (lexList!1028 thiss!12889 rules!1563 (list!9383 (_2!12797 (v!27636 lt!786730)))))))))

(declare-fun b!2094234 () Bool)

(assert (=> b!2094234 (= e!1329470 e!1329471)))

(declare-fun res!911775 () Bool)

(assert (=> b!2094234 (= res!911775 (< (size!17991 (_2!12796 lt!786831)) (size!17991 (_2!12797 (v!27636 lt!786730)))))))

(assert (=> b!2094234 (=> (not res!911775) (not e!1329471))))

(assert (= (and d!638646 c!337477) b!2094229))

(assert (= (and d!638646 (not c!337477)) b!2094228))

(assert (= (and d!638646 c!337478) b!2094234))

(assert (= (and d!638646 (not c!337478)) b!2094231))

(assert (= (and b!2094234 res!911775) b!2094232))

(assert (= (and d!638646 res!911774) b!2094233))

(assert (= (and b!2094233 res!911776) b!2094230))

(declare-fun m!2550135 () Bool)

(assert (=> b!2094233 m!2550135))

(declare-fun m!2550137 () Bool)

(assert (=> b!2094233 m!2550137))

(assert (=> b!2094233 m!2550137))

(declare-fun m!2550139 () Bool)

(assert (=> b!2094233 m!2550139))

(declare-fun m!2550141 () Bool)

(assert (=> d!638646 m!2550141))

(declare-fun m!2550143 () Bool)

(assert (=> d!638646 m!2550143))

(declare-fun m!2550145 () Bool)

(assert (=> b!2094229 m!2550145))

(declare-fun m!2550147 () Bool)

(assert (=> b!2094229 m!2550147))

(declare-fun m!2550149 () Bool)

(assert (=> b!2094234 m!2550149))

(declare-fun m!2550151 () Bool)

(assert (=> b!2094234 m!2550151))

(declare-fun m!2550153 () Bool)

(assert (=> b!2094232 m!2550153))

(declare-fun m!2550155 () Bool)

(assert (=> b!2094230 m!2550155))

(assert (=> b!2094230 m!2550137))

(assert (=> b!2094230 m!2550137))

(assert (=> b!2094230 m!2550139))

(assert (=> b!2094231 m!2550155))

(assert (=> b!2094231 m!2550137))

(assert (=> b!2093663 d!638646))

(declare-fun b!2094235 () Bool)

(declare-fun e!1329472 () Bool)

(declare-fun e!1329473 () Bool)

(assert (=> b!2094235 (= e!1329472 e!1329473)))

(declare-fun res!911781 () Bool)

(assert (=> b!2094235 (=> (not res!911781) (not e!1329473))))

(assert (=> b!2094235 (= res!911781 (<= (- 1) (- (height!1221 (left!18059 (c!337359 input!986))) (height!1221 (right!18389 (c!337359 input!986))))))))

(declare-fun b!2094236 () Bool)

(declare-fun res!911778 () Bool)

(assert (=> b!2094236 (=> (not res!911778) (not e!1329473))))

(assert (=> b!2094236 (= res!911778 (isBalanced!2411 (left!18059 (c!337359 input!986))))))

(declare-fun b!2094237 () Bool)

(declare-fun res!911782 () Bool)

(assert (=> b!2094237 (=> (not res!911782) (not e!1329473))))

(assert (=> b!2094237 (= res!911782 (not (isEmpty!14209 (left!18059 (c!337359 input!986)))))))

(declare-fun b!2094238 () Bool)

(declare-fun res!911779 () Bool)

(assert (=> b!2094238 (=> (not res!911779) (not e!1329473))))

(assert (=> b!2094238 (= res!911779 (isBalanced!2411 (right!18389 (c!337359 input!986))))))

(declare-fun b!2094239 () Bool)

(assert (=> b!2094239 (= e!1329473 (not (isEmpty!14209 (right!18389 (c!337359 input!986)))))))

(declare-fun d!638648 () Bool)

(declare-fun res!911780 () Bool)

(assert (=> d!638648 (=> res!911780 e!1329472)))

(assert (=> d!638648 (= res!911780 (not ((_ is Node!7674) (c!337359 input!986))))))

(assert (=> d!638648 (= (isBalanced!2411 (c!337359 input!986)) e!1329472)))

(declare-fun b!2094240 () Bool)

(declare-fun res!911777 () Bool)

(assert (=> b!2094240 (=> (not res!911777) (not e!1329473))))

(assert (=> b!2094240 (= res!911777 (<= (- (height!1221 (left!18059 (c!337359 input!986))) (height!1221 (right!18389 (c!337359 input!986)))) 1))))

(assert (= (and d!638648 (not res!911780)) b!2094235))

(assert (= (and b!2094235 res!911781) b!2094240))

(assert (= (and b!2094240 res!911777) b!2094236))

(assert (= (and b!2094236 res!911778) b!2094238))

(assert (= (and b!2094238 res!911779) b!2094237))

(assert (= (and b!2094237 res!911782) b!2094239))

(assert (=> b!2094235 m!2549783))

(assert (=> b!2094235 m!2549785))

(assert (=> b!2094240 m!2549783))

(assert (=> b!2094240 m!2549785))

(declare-fun m!2550157 () Bool)

(assert (=> b!2094239 m!2550157))

(declare-fun m!2550159 () Bool)

(assert (=> b!2094236 m!2550159))

(declare-fun m!2550161 () Bool)

(assert (=> b!2094237 m!2550161))

(declare-fun m!2550163 () Bool)

(assert (=> b!2094238 m!2550163))

(assert (=> d!638426 d!638648))

(declare-fun d!638650 () Bool)

(declare-fun res!911789 () Bool)

(declare-fun e!1329476 () Bool)

(assert (=> d!638650 (=> (not res!911789) (not e!1329476))))

(assert (=> d!638650 (= res!911789 (= (csize!15580 (c!337360 acc!382)) (+ (size!17996 (left!18060 (c!337360 acc!382))) (size!17996 (right!18390 (c!337360 acc!382))))))))

(assert (=> d!638650 (= (inv!30531 (c!337360 acc!382)) e!1329476)))

(declare-fun b!2094247 () Bool)

(declare-fun res!911790 () Bool)

(assert (=> b!2094247 (=> (not res!911790) (not e!1329476))))

(assert (=> b!2094247 (= res!911790 (and (not (= (left!18060 (c!337360 acc!382)) Empty!7675)) (not (= (right!18390 (c!337360 acc!382)) Empty!7675))))))

(declare-fun b!2094248 () Bool)

(declare-fun res!911791 () Bool)

(assert (=> b!2094248 (=> (not res!911791) (not e!1329476))))

(assert (=> b!2094248 (= res!911791 (= (cheight!7886 (c!337360 acc!382)) (+ (max!0 (height!1220 (left!18060 (c!337360 acc!382))) (height!1220 (right!18390 (c!337360 acc!382)))) 1)))))

(declare-fun b!2094249 () Bool)

(assert (=> b!2094249 (= e!1329476 (<= 0 (cheight!7886 (c!337360 acc!382))))))

(assert (= (and d!638650 res!911789) b!2094247))

(assert (= (and b!2094247 res!911790) b!2094248))

(assert (= (and b!2094248 res!911791) b!2094249))

(declare-fun m!2550165 () Bool)

(assert (=> d!638650 m!2550165))

(declare-fun m!2550167 () Bool)

(assert (=> d!638650 m!2550167))

(assert (=> b!2094248 m!2549643))

(assert (=> b!2094248 m!2549645))

(assert (=> b!2094248 m!2549643))

(assert (=> b!2094248 m!2549645))

(declare-fun m!2550169 () Bool)

(assert (=> b!2094248 m!2550169))

(assert (=> b!2093638 d!638650))

(declare-fun d!638652 () Bool)

(declare-fun res!911792 () Bool)

(declare-fun e!1329477 () Bool)

(assert (=> d!638652 (=> (not res!911792) (not e!1329477))))

(assert (=> d!638652 (= res!911792 (<= (size!17992 (list!9387 (xs!10608 (c!337359 treated!60)))) 512))))

(assert (=> d!638652 (= (inv!30534 (c!337359 treated!60)) e!1329477)))

(declare-fun b!2094250 () Bool)

(declare-fun res!911793 () Bool)

(assert (=> b!2094250 (=> (not res!911793) (not e!1329477))))

(assert (=> b!2094250 (= res!911793 (= (csize!15579 (c!337359 treated!60)) (size!17992 (list!9387 (xs!10608 (c!337359 treated!60))))))))

(declare-fun b!2094251 () Bool)

(assert (=> b!2094251 (= e!1329477 (and (> (csize!15579 (c!337359 treated!60)) 0) (<= (csize!15579 (c!337359 treated!60)) 512)))))

(assert (= (and d!638652 res!911792) b!2094250))

(assert (= (and b!2094250 res!911793) b!2094251))

(assert (=> d!638652 m!2550049))

(assert (=> d!638652 m!2550049))

(declare-fun m!2550171 () Bool)

(assert (=> d!638652 m!2550171))

(assert (=> b!2094250 m!2550049))

(assert (=> b!2094250 m!2550049))

(assert (=> b!2094250 m!2550171))

(assert (=> b!2093698 d!638652))

(assert (=> d!638408 d!638638))

(assert (=> d!638408 d!638376))

(declare-fun d!638654 () Bool)

(declare-fun lt!786836 () Int)

(assert (=> d!638654 (= lt!786836 (size!17992 (list!9385 (c!337359 input!986))))))

(assert (=> d!638654 (= lt!786836 (ite ((_ is Empty!7674) (c!337359 input!986)) 0 (ite ((_ is Leaf!11208) (c!337359 input!986)) (csize!15579 (c!337359 input!986)) (csize!15578 (c!337359 input!986)))))))

(assert (=> d!638654 (= (size!17994 (c!337359 input!986)) lt!786836)))

(declare-fun bs!437934 () Bool)

(assert (= bs!437934 d!638654))

(assert (=> bs!437934 m!2549379))

(assert (=> bs!437934 m!2549379))

(declare-fun m!2550173 () Bool)

(assert (=> bs!437934 m!2550173))

(assert (=> d!638408 d!638654))

(declare-fun d!638656 () Bool)

(declare-fun lt!786837 () Int)

(assert (=> d!638656 (= lt!786837 (size!17995 (list!9384 (_1!12796 lt!786725))))))

(assert (=> d!638656 (= lt!786837 (size!17996 (c!337360 (_1!12796 lt!786725))))))

(assert (=> d!638656 (= (size!17993 (_1!12796 lt!786725)) lt!786837)))

(declare-fun bs!437935 () Bool)

(assert (= bs!437935 d!638656))

(assert (=> bs!437935 m!2549387))

(assert (=> bs!437935 m!2549387))

(declare-fun m!2550175 () Bool)

(assert (=> bs!437935 m!2550175))

(declare-fun m!2550177 () Bool)

(assert (=> bs!437935 m!2550177))

(assert (=> d!638386 d!638656))

(declare-fun b!2094252 () Bool)

(declare-fun e!1329478 () Bool)

(declare-fun e!1329482 () Bool)

(assert (=> b!2094252 (= e!1329478 e!1329482)))

(declare-fun res!911796 () Bool)

(assert (=> b!2094252 (=> (not res!911796) (not e!1329482))))

(declare-fun lt!786844 () Option!4825)

(assert (=> b!2094252 (= res!911796 (= (_1!12797 (get!7219 lt!786844)) (_1!12799 (get!7220 (maxPrefix!2092 thiss!12889 rules!1563 (list!9383 totalInput!418))))))))

(declare-fun b!2094254 () Bool)

(declare-fun res!911795 () Bool)

(declare-fun e!1329480 () Bool)

(assert (=> b!2094254 (=> (not res!911795) (not e!1329480))))

(declare-fun e!1329483 () Bool)

(assert (=> b!2094254 (= res!911795 e!1329483)))

(declare-fun res!911794 () Bool)

(assert (=> b!2094254 (=> res!911794 e!1329483)))

(assert (=> b!2094254 (= res!911794 (not (isDefined!4053 lt!786844)))))

(declare-fun call!127880 () Option!4825)

(declare-fun bm!127875 () Bool)

(assert (=> bm!127875 (= call!127880 (maxPrefixOneRuleZipperSequence!424 thiss!12889 (h!28437 rules!1563) totalInput!418))))

(declare-fun b!2094255 () Bool)

(assert (=> b!2094255 (= e!1329482 (= (list!9383 (_2!12797 (get!7219 lt!786844))) (_2!12799 (get!7220 (maxPrefix!2092 thiss!12889 rules!1563 (list!9383 totalInput!418))))))))

(declare-fun b!2094256 () Bool)

(declare-fun e!1329481 () Bool)

(assert (=> b!2094256 (= e!1329483 e!1329481)))

(declare-fun res!911798 () Bool)

(assert (=> b!2094256 (=> (not res!911798) (not e!1329481))))

(assert (=> b!2094256 (= res!911798 (= (_1!12797 (get!7219 lt!786844)) (_1!12799 (get!7220 (maxPrefixZipper!413 thiss!12889 rules!1563 (list!9383 totalInput!418))))))))

(declare-fun b!2094257 () Bool)

(declare-fun e!1329479 () Option!4825)

(assert (=> b!2094257 (= e!1329479 call!127880)))

(declare-fun b!2094258 () Bool)

(assert (=> b!2094258 (= e!1329481 (= (list!9383 (_2!12797 (get!7219 lt!786844))) (_2!12799 (get!7220 (maxPrefixZipper!413 thiss!12889 rules!1563 (list!9383 totalInput!418))))))))

(declare-fun b!2094259 () Bool)

(assert (=> b!2094259 (= e!1329480 e!1329478)))

(declare-fun res!911799 () Bool)

(assert (=> b!2094259 (=> res!911799 e!1329478)))

(assert (=> b!2094259 (= res!911799 (not (isDefined!4053 lt!786844)))))

(declare-fun d!638658 () Bool)

(assert (=> d!638658 e!1329480))

(declare-fun res!911797 () Bool)

(assert (=> d!638658 (=> (not res!911797) (not e!1329480))))

(assert (=> d!638658 (= res!911797 (= (isDefined!4053 lt!786844) (isDefined!4054 (maxPrefixZipper!413 thiss!12889 rules!1563 (list!9383 totalInput!418)))))))

(assert (=> d!638658 (= lt!786844 e!1329479)))

(declare-fun c!337479 () Bool)

(assert (=> d!638658 (= c!337479 (and ((_ is Cons!23036) rules!1563) ((_ is Nil!23036) (t!195061 rules!1563))))))

(declare-fun lt!786842 () Unit!37349)

(declare-fun lt!786838 () Unit!37349)

(assert (=> d!638658 (= lt!786842 lt!786838)))

(declare-fun lt!786843 () List!23117)

(declare-fun lt!786839 () List!23117)

(assert (=> d!638658 (isPrefix!2046 lt!786843 lt!786839)))

(assert (=> d!638658 (= lt!786838 (lemmaIsPrefixRefl!1364 lt!786843 lt!786839))))

(assert (=> d!638658 (= lt!786839 (list!9383 totalInput!418))))

(assert (=> d!638658 (= lt!786843 (list!9383 totalInput!418))))

(assert (=> d!638658 (rulesValidInductive!1432 thiss!12889 rules!1563)))

(assert (=> d!638658 (= (maxPrefixZipperSequence!837 thiss!12889 rules!1563 totalInput!418) lt!786844)))

(declare-fun b!2094253 () Bool)

(declare-fun lt!786840 () Option!4825)

(declare-fun lt!786841 () Option!4825)

(assert (=> b!2094253 (= e!1329479 (ite (and ((_ is None!4824) lt!786840) ((_ is None!4824) lt!786841)) None!4824 (ite ((_ is None!4824) lt!786841) lt!786840 (ite ((_ is None!4824) lt!786840) lt!786841 (ite (>= (size!17990 (_1!12797 (v!27636 lt!786840))) (size!17990 (_1!12797 (v!27636 lt!786841)))) lt!786840 lt!786841)))))))

(assert (=> b!2094253 (= lt!786840 call!127880)))

(assert (=> b!2094253 (= lt!786841 (maxPrefixZipperSequence!837 thiss!12889 (t!195061 rules!1563) totalInput!418))))

(assert (= (and d!638658 c!337479) b!2094257))

(assert (= (and d!638658 (not c!337479)) b!2094253))

(assert (= (or b!2094257 b!2094253) bm!127875))

(assert (= (and d!638658 res!911797) b!2094254))

(assert (= (and b!2094254 (not res!911794)) b!2094256))

(assert (= (and b!2094256 res!911798) b!2094258))

(assert (= (and b!2094254 res!911795) b!2094259))

(assert (= (and b!2094259 (not res!911799)) b!2094252))

(assert (= (and b!2094252 res!911796) b!2094255))

(declare-fun m!2550179 () Bool)

(assert (=> b!2094252 m!2550179))

(assert (=> b!2094252 m!2549309))

(assert (=> b!2094252 m!2549309))

(assert (=> b!2094252 m!2549701))

(assert (=> b!2094252 m!2549701))

(declare-fun m!2550181 () Bool)

(assert (=> b!2094252 m!2550181))

(declare-fun m!2550183 () Bool)

(assert (=> b!2094253 m!2550183))

(assert (=> b!2094256 m!2550179))

(assert (=> b!2094256 m!2549309))

(assert (=> b!2094256 m!2549309))

(declare-fun m!2550185 () Bool)

(assert (=> b!2094256 m!2550185))

(assert (=> b!2094256 m!2550185))

(declare-fun m!2550187 () Bool)

(assert (=> b!2094256 m!2550187))

(declare-fun m!2550189 () Bool)

(assert (=> b!2094254 m!2550189))

(declare-fun m!2550191 () Bool)

(assert (=> bm!127875 m!2550191))

(assert (=> d!638658 m!2550185))

(declare-fun m!2550193 () Bool)

(assert (=> d!638658 m!2550193))

(declare-fun m!2550195 () Bool)

(assert (=> d!638658 m!2550195))

(assert (=> d!638658 m!2550189))

(declare-fun m!2550197 () Bool)

(assert (=> d!638658 m!2550197))

(assert (=> d!638658 m!2549309))

(assert (=> d!638658 m!2550185))

(assert (=> d!638658 m!2549823))

(assert (=> d!638658 m!2549309))

(declare-fun m!2550199 () Bool)

(assert (=> b!2094255 m!2550199))

(assert (=> b!2094255 m!2549701))

(assert (=> b!2094255 m!2550181))

(assert (=> b!2094255 m!2549309))

(assert (=> b!2094255 m!2550179))

(assert (=> b!2094255 m!2549309))

(assert (=> b!2094255 m!2549701))

(assert (=> b!2094258 m!2550199))

(assert (=> b!2094258 m!2549309))

(assert (=> b!2094258 m!2550185))

(assert (=> b!2094258 m!2549309))

(assert (=> b!2094258 m!2550179))

(assert (=> b!2094258 m!2550185))

(assert (=> b!2094258 m!2550187))

(assert (=> b!2094259 m!2550189))

(assert (=> d!638386 d!638658))

(declare-fun d!638660 () Bool)

(declare-fun lt!786845 () Bool)

(assert (=> d!638660 (= lt!786845 (isEmpty!14208 (list!9384 (_1!12796 lt!786725))))))

(assert (=> d!638660 (= lt!786845 (isEmpty!14207 (c!337360 (_1!12796 lt!786725))))))

(assert (=> d!638660 (= (isEmpty!14206 (_1!12796 lt!786725)) lt!786845)))

(declare-fun bs!437936 () Bool)

(assert (= bs!437936 d!638660))

(assert (=> bs!437936 m!2549387))

(assert (=> bs!437936 m!2549387))

(declare-fun m!2550201 () Bool)

(assert (=> bs!437936 m!2550201))

(declare-fun m!2550203 () Bool)

(assert (=> bs!437936 m!2550203))

(assert (=> b!2093659 d!638660))

(declare-fun d!638662 () Bool)

(declare-fun res!911804 () Bool)

(declare-fun e!1329488 () Bool)

(assert (=> d!638662 (=> res!911804 e!1329488)))

(assert (=> d!638662 (= res!911804 ((_ is Nil!23036) rules!1563))))

(assert (=> d!638662 (= (noDuplicateTag!1527 thiss!12889 rules!1563 Nil!23037) e!1329488)))

(declare-fun b!2094264 () Bool)

(declare-fun e!1329489 () Bool)

(assert (=> b!2094264 (= e!1329488 e!1329489)))

(declare-fun res!911805 () Bool)

(assert (=> b!2094264 (=> (not res!911805) (not e!1329489))))

(declare-fun contains!4145 (List!23121 String!26397) Bool)

(assert (=> b!2094264 (= res!911805 (not (contains!4145 Nil!23037 (tag!4595 (h!28437 rules!1563)))))))

(declare-fun b!2094265 () Bool)

(assert (=> b!2094265 (= e!1329489 (noDuplicateTag!1527 thiss!12889 (t!195061 rules!1563) (Cons!23037 (tag!4595 (h!28437 rules!1563)) Nil!23037)))))

(assert (= (and d!638662 (not res!911804)) b!2094264))

(assert (= (and b!2094264 res!911805) b!2094265))

(declare-fun m!2550205 () Bool)

(assert (=> b!2094264 m!2550205))

(declare-fun m!2550207 () Bool)

(assert (=> b!2094265 m!2550207))

(assert (=> b!2093695 d!638662))

(declare-fun d!638664 () Bool)

(assert (=> d!638664 (= (list!9384 (_1!12796 lt!786728)) (list!9386 (c!337360 (_1!12796 lt!786728))))))

(declare-fun bs!437937 () Bool)

(assert (= bs!437937 d!638664))

(declare-fun m!2550209 () Bool)

(assert (=> bs!437937 m!2550209))

(assert (=> b!2093667 d!638664))

(assert (=> b!2093667 d!638476))

(assert (=> b!2093667 d!638376))

(declare-fun b!2094268 () Bool)

(declare-fun e!1329491 () List!23119)

(assert (=> b!2094268 (= e!1329491 (list!9388 (xs!10609 (c!337360 (++!6274 acc!382 (_1!12796 lt!786712))))))))

(declare-fun d!638666 () Bool)

(declare-fun c!337480 () Bool)

(assert (=> d!638666 (= c!337480 ((_ is Empty!7675) (c!337360 (++!6274 acc!382 (_1!12796 lt!786712)))))))

(declare-fun e!1329490 () List!23119)

(assert (=> d!638666 (= (list!9386 (c!337360 (++!6274 acc!382 (_1!12796 lt!786712)))) e!1329490)))

(declare-fun b!2094266 () Bool)

(assert (=> b!2094266 (= e!1329490 Nil!23035)))

(declare-fun b!2094269 () Bool)

(assert (=> b!2094269 (= e!1329491 (++!6276 (list!9386 (left!18060 (c!337360 (++!6274 acc!382 (_1!12796 lt!786712))))) (list!9386 (right!18390 (c!337360 (++!6274 acc!382 (_1!12796 lt!786712)))))))))

(declare-fun b!2094267 () Bool)

(assert (=> b!2094267 (= e!1329490 e!1329491)))

(declare-fun c!337481 () Bool)

(assert (=> b!2094267 (= c!337481 ((_ is Leaf!11209) (c!337360 (++!6274 acc!382 (_1!12796 lt!786712)))))))

(assert (= (and d!638666 c!337480) b!2094266))

(assert (= (and d!638666 (not c!337480)) b!2094267))

(assert (= (and b!2094267 c!337481) b!2094268))

(assert (= (and b!2094267 (not c!337481)) b!2094269))

(declare-fun m!2550211 () Bool)

(assert (=> b!2094268 m!2550211))

(declare-fun m!2550213 () Bool)

(assert (=> b!2094269 m!2550213))

(declare-fun m!2550215 () Bool)

(assert (=> b!2094269 m!2550215))

(assert (=> b!2094269 m!2550213))

(assert (=> b!2094269 m!2550215))

(declare-fun m!2550217 () Bool)

(assert (=> b!2094269 m!2550217))

(assert (=> d!638390 d!638666))

(declare-fun bs!437938 () Bool)

(declare-fun d!638668 () Bool)

(assert (= bs!437938 (and d!638668 d!638452)))

(declare-fun lambda!77917 () Int)

(assert (=> bs!437938 (= lambda!77917 lambda!77880)))

(declare-fun bs!437939 () Bool)

(assert (= bs!437939 (and d!638668 d!638562)))

(assert (=> bs!437939 (= lambda!77917 lambda!77900)))

(declare-fun bs!437940 () Bool)

(assert (= bs!437940 (and d!638668 d!638578)))

(assert (=> bs!437940 (= lambda!77917 lambda!77901)))

(declare-fun bs!437941 () Bool)

(assert (= bs!437941 (and d!638668 d!638580)))

(assert (=> bs!437941 (= lambda!77917 lambda!77902)))

(declare-fun bs!437942 () Bool)

(assert (= bs!437942 (and d!638668 d!638480)))

(assert (=> bs!437942 (= lambda!77917 lambda!77885)))

(declare-fun bs!437943 () Bool)

(assert (= bs!437943 (and d!638668 d!638602)))

(assert (=> bs!437943 (= lambda!77917 lambda!77910)))

(declare-fun bs!437944 () Bool)

(assert (= bs!437944 (and d!638668 d!638524)))

(assert (=> bs!437944 (= lambda!77917 lambda!77890)))

(declare-fun bs!437945 () Bool)

(assert (= bs!437945 (and d!638668 d!638620)))

(assert (=> bs!437945 (= lambda!77917 lambda!77911)))

(declare-fun bs!437946 () Bool)

(assert (= bs!437946 (and d!638668 d!638534)))

(assert (=> bs!437946 (= lambda!77917 lambda!77894)))

(declare-fun bs!437947 () Bool)

(assert (= bs!437947 (and d!638668 d!638444)))

(assert (=> bs!437947 (= lambda!77917 lambda!77879)))

(declare-fun bs!437948 () Bool)

(assert (= bs!437948 (and d!638668 d!638482)))

(assert (=> bs!437948 (= lambda!77917 lambda!77886)))

(declare-fun bs!437949 () Bool)

(assert (= bs!437949 (and d!638668 d!638528)))

(assert (=> bs!437949 (= lambda!77917 lambda!77892)))

(declare-fun bs!437950 () Bool)

(assert (= bs!437950 (and d!638668 d!638544)))

(assert (=> bs!437950 (= lambda!77917 lambda!77899)))

(declare-fun bs!437951 () Bool)

(assert (= bs!437951 (and d!638668 d!638536)))

(assert (=> bs!437951 (= lambda!77917 lambda!77895)))

(declare-fun bs!437952 () Bool)

(assert (= bs!437952 (and d!638668 d!638628)))

(assert (=> bs!437952 (= lambda!77917 lambda!77915)))

(declare-fun bs!437953 () Bool)

(assert (= bs!437953 (and d!638668 d!638488)))

(assert (=> bs!437953 (= lambda!77917 lambda!77888)))

(declare-fun bs!437954 () Bool)

(assert (= bs!437954 (and d!638668 d!638532)))

(assert (=> bs!437954 (= lambda!77917 lambda!77893)))

(declare-fun bs!437955 () Bool)

(assert (= bs!437955 (and d!638668 d!638592)))

(assert (=> bs!437955 (= lambda!77917 lambda!77903)))

(declare-fun bs!437956 () Bool)

(assert (= bs!437956 (and d!638668 d!638484)))

(assert (=> bs!437956 (= lambda!77917 lambda!77887)))

(declare-fun bs!437957 () Bool)

(assert (= bs!437957 (and d!638668 d!638642)))

(assert (=> bs!437957 (= lambda!77917 lambda!77916)))

(declare-fun bs!437958 () Bool)

(assert (= bs!437958 (and d!638668 d!638478)))

(assert (=> bs!437958 (= lambda!77917 lambda!77884)))

(declare-fun bs!437959 () Bool)

(assert (= bs!437959 (and d!638668 d!638512)))

(assert (=> bs!437959 (= lambda!77917 lambda!77889)))

(declare-fun bs!437960 () Bool)

(assert (= bs!437960 (and d!638668 d!638526)))

(assert (=> bs!437960 (= lambda!77917 lambda!77891)))

(assert (=> d!638668 (= (inv!30535 (_1!12792 (_1!12793 (h!28432 mapDefault!10507)))) (forall!4818 (exprs!1603 (_1!12792 (_1!12793 (h!28432 mapDefault!10507)))) lambda!77917))))

(declare-fun bs!437961 () Bool)

(assert (= bs!437961 d!638668))

(declare-fun m!2550219 () Bool)

(assert (=> bs!437961 m!2550219))

(assert (=> b!2093820 d!638668))

(declare-fun b!2094283 () Bool)

(declare-fun b_free!59873 () Bool)

(declare-fun b_next!60577 () Bool)

(assert (=> b!2094283 (= b_free!59873 (not b_next!60577))))

(declare-fun tp!632403 () Bool)

(declare-fun b_and!168863 () Bool)

(assert (=> b!2094283 (= tp!632403 b_and!168863)))

(declare-fun b_free!59875 () Bool)

(declare-fun b_next!60579 () Bool)

(assert (=> b!2094283 (= b_free!59875 (not b_next!60579))))

(declare-fun tp!632405 () Bool)

(declare-fun b_and!168865 () Bool)

(assert (=> b!2094283 (= tp!632405 b_and!168865)))

(declare-fun e!1329506 () Bool)

(declare-fun tp!632402 () Bool)

(declare-fun e!1329508 () Bool)

(declare-fun b!2094280 () Bool)

(declare-fun inv!30538 (Token!7758) Bool)

(assert (=> b!2094280 (= e!1329508 (and (inv!30538 (h!28436 (innerList!7735 (xs!10609 (c!337360 acc!382))))) e!1329506 tp!632402))))

(assert (=> b!2093739 (= tp!632248 e!1329508)))

(declare-fun e!1329509 () Bool)

(assert (=> b!2094283 (= e!1329509 (and tp!632403 tp!632405))))

(declare-fun b!2094282 () Bool)

(declare-fun e!1329505 () Bool)

(declare-fun tp!632404 () Bool)

(assert (=> b!2094282 (= e!1329505 (and tp!632404 (inv!30523 (tag!4595 (rule!6417 (h!28436 (innerList!7735 (xs!10609 (c!337360 acc!382))))))) (inv!30526 (transformation!4105 (rule!6417 (h!28436 (innerList!7735 (xs!10609 (c!337360 acc!382))))))) e!1329509))))

(declare-fun tp!632401 () Bool)

(declare-fun b!2094281 () Bool)

(declare-fun inv!21 (TokenValue!4241) Bool)

(assert (=> b!2094281 (= e!1329506 (and (inv!21 (value!128645 (h!28436 (innerList!7735 (xs!10609 (c!337360 acc!382)))))) e!1329505 tp!632401))))

(assert (= b!2094282 b!2094283))

(assert (= b!2094281 b!2094282))

(assert (= b!2094280 b!2094281))

(assert (= (and b!2093739 ((_ is Cons!23035) (innerList!7735 (xs!10609 (c!337360 acc!382))))) b!2094280))

(declare-fun m!2550221 () Bool)

(assert (=> b!2094280 m!2550221))

(declare-fun m!2550223 () Bool)

(assert (=> b!2094282 m!2550223))

(declare-fun m!2550225 () Bool)

(assert (=> b!2094282 m!2550225))

(declare-fun m!2550227 () Bool)

(assert (=> b!2094281 m!2550227))

(declare-fun e!1329511 () Bool)

(assert (=> b!2093825 (= tp!632364 e!1329511)))

(declare-fun setIsEmpty!13372 () Bool)

(declare-fun setRes!13372 () Bool)

(assert (=> setIsEmpty!13372 setRes!13372))

(declare-fun b!2094284 () Bool)

(declare-fun e!1329512 () Bool)

(declare-fun tp!632408 () Bool)

(assert (=> b!2094284 (= e!1329511 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 (t!195056 mapValue!10501))))) e!1329512 tp_is_empty!9347 setRes!13372 tp!632408))))

(declare-fun condSetEmpty!13372 () Bool)

(assert (=> b!2094284 (= condSetEmpty!13372 (= (_2!12793 (h!28432 (t!195056 mapValue!10501))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun b!2094285 () Bool)

(declare-fun e!1329510 () Bool)

(declare-fun tp!632407 () Bool)

(assert (=> b!2094285 (= e!1329510 tp!632407)))

(declare-fun b!2094286 () Bool)

(declare-fun tp!632409 () Bool)

(assert (=> b!2094286 (= e!1329512 tp!632409)))

(declare-fun setElem!13372 () Context!2206)

(declare-fun tp!632406 () Bool)

(declare-fun setNonEmpty!13372 () Bool)

(assert (=> setNonEmpty!13372 (= setRes!13372 (and tp!632406 (inv!30535 setElem!13372) e!1329510))))

(declare-fun setRest!13372 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13372 (= (_2!12793 (h!28432 (t!195056 mapValue!10501))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13372 true) setRest!13372))))

(assert (= b!2094284 b!2094286))

(assert (= (and b!2094284 condSetEmpty!13372) setIsEmpty!13372))

(assert (= (and b!2094284 (not condSetEmpty!13372)) setNonEmpty!13372))

(assert (= setNonEmpty!13372 b!2094285))

(assert (= (and b!2093825 ((_ is Cons!23031) (t!195056 mapValue!10501))) b!2094284))

(declare-fun m!2550229 () Bool)

(assert (=> b!2094284 m!2550229))

(declare-fun m!2550231 () Bool)

(assert (=> setNonEmpty!13372 m!2550231))

(declare-fun condSetEmpty!13375 () Bool)

(assert (=> setNonEmpty!13362 (= condSetEmpty!13375 (= setRest!13362 ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setRes!13375 () Bool)

(assert (=> setNonEmpty!13362 (= tp!632328 setRes!13375)))

(declare-fun setIsEmpty!13375 () Bool)

(assert (=> setIsEmpty!13375 setRes!13375))

(declare-fun e!1329515 () Bool)

(declare-fun tp!632414 () Bool)

(declare-fun setNonEmpty!13375 () Bool)

(declare-fun setElem!13375 () Context!2206)

(assert (=> setNonEmpty!13375 (= setRes!13375 (and tp!632414 (inv!30535 setElem!13375) e!1329515))))

(declare-fun setRest!13375 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13375 (= setRest!13362 ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13375 true) setRest!13375))))

(declare-fun b!2094291 () Bool)

(declare-fun tp!632415 () Bool)

(assert (=> b!2094291 (= e!1329515 tp!632415)))

(assert (= (and setNonEmpty!13362 condSetEmpty!13375) setIsEmpty!13375))

(assert (= (and setNonEmpty!13362 (not condSetEmpty!13375)) setNonEmpty!13375))

(assert (= setNonEmpty!13375 b!2094291))

(declare-fun m!2550233 () Bool)

(assert (=> setNonEmpty!13375 m!2550233))

(declare-fun condSetEmpty!13376 () Bool)

(assert (=> setNonEmpty!13368 (= condSetEmpty!13376 (= setRest!13368 ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setRes!13376 () Bool)

(assert (=> setNonEmpty!13368 (= tp!632357 setRes!13376)))

(declare-fun setIsEmpty!13376 () Bool)

(assert (=> setIsEmpty!13376 setRes!13376))

(declare-fun e!1329516 () Bool)

(declare-fun tp!632416 () Bool)

(declare-fun setElem!13376 () Context!2206)

(declare-fun setNonEmpty!13376 () Bool)

(assert (=> setNonEmpty!13376 (= setRes!13376 (and tp!632416 (inv!30535 setElem!13376) e!1329516))))

(declare-fun setRest!13376 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13376 (= setRest!13368 ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13376 true) setRest!13376))))

(declare-fun b!2094292 () Bool)

(declare-fun tp!632417 () Bool)

(assert (=> b!2094292 (= e!1329516 tp!632417)))

(assert (= (and setNonEmpty!13368 condSetEmpty!13376) setIsEmpty!13376))

(assert (= (and setNonEmpty!13368 (not condSetEmpty!13376)) setNonEmpty!13376))

(assert (= setNonEmpty!13376 b!2094292))

(declare-fun m!2550235 () Bool)

(assert (=> setNonEmpty!13376 m!2550235))

(declare-fun b!2094297 () Bool)

(declare-fun e!1329519 () Bool)

(declare-fun tp!632422 () Bool)

(declare-fun tp!632423 () Bool)

(assert (=> b!2094297 (= e!1329519 (and tp!632422 tp!632423))))

(assert (=> b!2093800 (= tp!632329 e!1329519)))

(assert (= (and b!2093800 ((_ is Cons!23030) (exprs!1603 setElem!13362))) b!2094297))

(declare-fun b!2094298 () Bool)

(declare-fun e!1329520 () Bool)

(declare-fun tp!632424 () Bool)

(declare-fun tp!632425 () Bool)

(assert (=> b!2094298 (= e!1329520 (and tp!632424 tp!632425))))

(assert (=> b!2093770 (= tp!632295 e!1329520)))

(assert (= (and b!2093770 ((_ is Cons!23030) (exprs!1603 setElem!13357))) b!2094298))

(declare-fun b!2094299 () Bool)

(declare-fun e!1329521 () Bool)

(assert (=> b!2094299 (= e!1329521 tp_is_empty!9347)))

(declare-fun b!2094302 () Bool)

(declare-fun tp!632429 () Bool)

(declare-fun tp!632426 () Bool)

(assert (=> b!2094302 (= e!1329521 (and tp!632429 tp!632426))))

(declare-fun b!2094301 () Bool)

(declare-fun tp!632428 () Bool)

(assert (=> b!2094301 (= e!1329521 tp!632428)))

(assert (=> b!2093753 (= tp!632264 e!1329521)))

(declare-fun b!2094300 () Bool)

(declare-fun tp!632430 () Bool)

(declare-fun tp!632427 () Bool)

(assert (=> b!2094300 (= e!1329521 (and tp!632430 tp!632427))))

(assert (= (and b!2093753 ((_ is ElementMatch!5533) (regOne!11579 (regex!4105 (h!28437 rules!1563))))) b!2094299))

(assert (= (and b!2093753 ((_ is Concat!9774) (regOne!11579 (regex!4105 (h!28437 rules!1563))))) b!2094300))

(assert (= (and b!2093753 ((_ is Star!5533) (regOne!11579 (regex!4105 (h!28437 rules!1563))))) b!2094301))

(assert (= (and b!2093753 ((_ is Union!5533) (regOne!11579 (regex!4105 (h!28437 rules!1563))))) b!2094302))

(declare-fun b!2094303 () Bool)

(declare-fun e!1329522 () Bool)

(assert (=> b!2094303 (= e!1329522 tp_is_empty!9347)))

(declare-fun b!2094306 () Bool)

(declare-fun tp!632434 () Bool)

(declare-fun tp!632431 () Bool)

(assert (=> b!2094306 (= e!1329522 (and tp!632434 tp!632431))))

(declare-fun b!2094305 () Bool)

(declare-fun tp!632433 () Bool)

(assert (=> b!2094305 (= e!1329522 tp!632433)))

(assert (=> b!2093753 (= tp!632261 e!1329522)))

(declare-fun b!2094304 () Bool)

(declare-fun tp!632435 () Bool)

(declare-fun tp!632432 () Bool)

(assert (=> b!2094304 (= e!1329522 (and tp!632435 tp!632432))))

(assert (= (and b!2093753 ((_ is ElementMatch!5533) (regTwo!11579 (regex!4105 (h!28437 rules!1563))))) b!2094303))

(assert (= (and b!2093753 ((_ is Concat!9774) (regTwo!11579 (regex!4105 (h!28437 rules!1563))))) b!2094304))

(assert (= (and b!2093753 ((_ is Star!5533) (regTwo!11579 (regex!4105 (h!28437 rules!1563))))) b!2094305))

(assert (= (and b!2093753 ((_ is Union!5533) (regTwo!11579 (regex!4105 (h!28437 rules!1563))))) b!2094306))

(declare-fun condSetEmpty!13377 () Bool)

(assert (=> setNonEmpty!13357 (= condSetEmpty!13377 (= setRest!13357 ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setRes!13377 () Bool)

(assert (=> setNonEmpty!13357 (= tp!632293 setRes!13377)))

(declare-fun setIsEmpty!13377 () Bool)

(assert (=> setIsEmpty!13377 setRes!13377))

(declare-fun setNonEmpty!13377 () Bool)

(declare-fun tp!632436 () Bool)

(declare-fun e!1329523 () Bool)

(declare-fun setElem!13377 () Context!2206)

(assert (=> setNonEmpty!13377 (= setRes!13377 (and tp!632436 (inv!30535 setElem!13377) e!1329523))))

(declare-fun setRest!13377 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13377 (= setRest!13357 ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13377 true) setRest!13377))))

(declare-fun b!2094307 () Bool)

(declare-fun tp!632437 () Bool)

(assert (=> b!2094307 (= e!1329523 tp!632437)))

(assert (= (and setNonEmpty!13357 condSetEmpty!13377) setIsEmpty!13377))

(assert (= (and setNonEmpty!13357 (not condSetEmpty!13377)) setNonEmpty!13377))

(assert (= setNonEmpty!13377 b!2094307))

(declare-fun m!2550237 () Bool)

(assert (=> setNonEmpty!13377 m!2550237))

(declare-fun b!2094308 () Bool)

(declare-fun e!1329524 () Bool)

(assert (=> b!2094308 (= e!1329524 tp_is_empty!9347)))

(declare-fun b!2094311 () Bool)

(declare-fun tp!632441 () Bool)

(declare-fun tp!632438 () Bool)

(assert (=> b!2094311 (= e!1329524 (and tp!632441 tp!632438))))

(declare-fun b!2094310 () Bool)

(declare-fun tp!632440 () Bool)

(assert (=> b!2094310 (= e!1329524 tp!632440)))

(assert (=> b!2093751 (= tp!632265 e!1329524)))

(declare-fun b!2094309 () Bool)

(declare-fun tp!632442 () Bool)

(declare-fun tp!632439 () Bool)

(assert (=> b!2094309 (= e!1329524 (and tp!632442 tp!632439))))

(assert (= (and b!2093751 ((_ is ElementMatch!5533) (regOne!11578 (regex!4105 (h!28437 rules!1563))))) b!2094308))

(assert (= (and b!2093751 ((_ is Concat!9774) (regOne!11578 (regex!4105 (h!28437 rules!1563))))) b!2094309))

(assert (= (and b!2093751 ((_ is Star!5533) (regOne!11578 (regex!4105 (h!28437 rules!1563))))) b!2094310))

(assert (= (and b!2093751 ((_ is Union!5533) (regOne!11578 (regex!4105 (h!28437 rules!1563))))) b!2094311))

(declare-fun b!2094312 () Bool)

(declare-fun e!1329525 () Bool)

(assert (=> b!2094312 (= e!1329525 tp_is_empty!9347)))

(declare-fun b!2094315 () Bool)

(declare-fun tp!632446 () Bool)

(declare-fun tp!632443 () Bool)

(assert (=> b!2094315 (= e!1329525 (and tp!632446 tp!632443))))

(declare-fun b!2094314 () Bool)

(declare-fun tp!632445 () Bool)

(assert (=> b!2094314 (= e!1329525 tp!632445)))

(assert (=> b!2093751 (= tp!632262 e!1329525)))

(declare-fun b!2094313 () Bool)

(declare-fun tp!632447 () Bool)

(declare-fun tp!632444 () Bool)

(assert (=> b!2094313 (= e!1329525 (and tp!632447 tp!632444))))

(assert (= (and b!2093751 ((_ is ElementMatch!5533) (regTwo!11578 (regex!4105 (h!28437 rules!1563))))) b!2094312))

(assert (= (and b!2093751 ((_ is Concat!9774) (regTwo!11578 (regex!4105 (h!28437 rules!1563))))) b!2094313))

(assert (= (and b!2093751 ((_ is Star!5533) (regTwo!11578 (regex!4105 (h!28437 rules!1563))))) b!2094314))

(assert (= (and b!2093751 ((_ is Union!5533) (regTwo!11578 (regex!4105 (h!28437 rules!1563))))) b!2094315))

(declare-fun tp!632450 () Bool)

(declare-fun tp!632449 () Bool)

(declare-fun e!1329527 () Bool)

(declare-fun b!2094316 () Bool)

(assert (=> b!2094316 (= e!1329527 (and (inv!30524 (left!18060 (left!18060 (c!337360 acc!382)))) tp!632449 (inv!30524 (right!18390 (left!18060 (c!337360 acc!382)))) tp!632450))))

(declare-fun b!2094318 () Bool)

(declare-fun e!1329526 () Bool)

(declare-fun tp!632448 () Bool)

(assert (=> b!2094318 (= e!1329526 tp!632448)))

(declare-fun b!2094317 () Bool)

(assert (=> b!2094317 (= e!1329527 (and (inv!30536 (xs!10609 (left!18060 (c!337360 acc!382)))) e!1329526))))

(assert (=> b!2093737 (= tp!632249 (and (inv!30524 (left!18060 (c!337360 acc!382))) e!1329527))))

(assert (= (and b!2093737 ((_ is Node!7675) (left!18060 (c!337360 acc!382)))) b!2094316))

(assert (= b!2094317 b!2094318))

(assert (= (and b!2093737 ((_ is Leaf!11209) (left!18060 (c!337360 acc!382)))) b!2094317))

(declare-fun m!2550239 () Bool)

(assert (=> b!2094316 m!2550239))

(declare-fun m!2550241 () Bool)

(assert (=> b!2094316 m!2550241))

(declare-fun m!2550243 () Bool)

(assert (=> b!2094317 m!2550243))

(assert (=> b!2093737 m!2549519))

(declare-fun e!1329529 () Bool)

(declare-fun b!2094319 () Bool)

(declare-fun tp!632452 () Bool)

(declare-fun tp!632453 () Bool)

(assert (=> b!2094319 (= e!1329529 (and (inv!30524 (left!18060 (right!18390 (c!337360 acc!382)))) tp!632452 (inv!30524 (right!18390 (right!18390 (c!337360 acc!382)))) tp!632453))))

(declare-fun b!2094321 () Bool)

(declare-fun e!1329528 () Bool)

(declare-fun tp!632451 () Bool)

(assert (=> b!2094321 (= e!1329528 tp!632451)))

(declare-fun b!2094320 () Bool)

(assert (=> b!2094320 (= e!1329529 (and (inv!30536 (xs!10609 (right!18390 (c!337360 acc!382)))) e!1329528))))

(assert (=> b!2093737 (= tp!632250 (and (inv!30524 (right!18390 (c!337360 acc!382))) e!1329529))))

(assert (= (and b!2093737 ((_ is Node!7675) (right!18390 (c!337360 acc!382)))) b!2094319))

(assert (= b!2094320 b!2094321))

(assert (= (and b!2093737 ((_ is Leaf!11209) (right!18390 (c!337360 acc!382)))) b!2094320))

(declare-fun m!2550245 () Bool)

(assert (=> b!2094319 m!2550245))

(declare-fun m!2550247 () Bool)

(assert (=> b!2094319 m!2550247))

(declare-fun m!2550249 () Bool)

(assert (=> b!2094320 m!2550249))

(assert (=> b!2093737 m!2549521))

(declare-fun b!2094322 () Bool)

(declare-fun e!1329530 () Bool)

(declare-fun tp!632454 () Bool)

(declare-fun tp!632455 () Bool)

(assert (=> b!2094322 (= e!1329530 (and tp!632454 tp!632455))))

(assert (=> b!2093823 (= tp!632353 e!1329530)))

(assert (= (and b!2093823 ((_ is Cons!23030) (exprs!1603 setElem!13367))) b!2094322))

(declare-fun b!2094323 () Bool)

(declare-fun e!1329531 () Bool)

(declare-fun tp!632456 () Bool)

(declare-fun tp!632457 () Bool)

(assert (=> b!2094323 (= e!1329531 (and tp!632456 tp!632457))))

(assert (=> b!2093785 (= tp!632315 e!1329531)))

(assert (= (and b!2093785 ((_ is Cons!23030) (exprs!1603 (_2!12794 (_1!12795 (h!28433 mapDefault!10500)))))) b!2094323))

(declare-fun b!2094324 () Bool)

(declare-fun e!1329532 () Bool)

(declare-fun tp!632458 () Bool)

(declare-fun tp!632459 () Bool)

(assert (=> b!2094324 (= e!1329532 (and tp!632458 tp!632459))))

(assert (=> b!2093782 (= tp!632310 e!1329532)))

(assert (= (and b!2093782 ((_ is Cons!23030) (exprs!1603 (_2!12794 (_1!12795 (h!28433 mapValue!10500)))))) b!2094324))

(declare-fun b!2094325 () Bool)

(declare-fun e!1329533 () Bool)

(declare-fun tp!632460 () Bool)

(declare-fun tp!632461 () Bool)

(assert (=> b!2094325 (= e!1329533 (and tp!632460 tp!632461))))

(assert (=> b!2093845 (= tp!632387 e!1329533)))

(assert (= (and b!2093845 ((_ is Cons!23030) (exprs!1603 (_2!12794 (_1!12795 (h!28433 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))))))) b!2094325))

(declare-fun b!2094326 () Bool)

(declare-fun e!1329534 () Bool)

(declare-fun tp!632462 () Bool)

(declare-fun tp!632463 () Bool)

(assert (=> b!2094326 (= e!1329534 (and tp!632462 tp!632463))))

(assert (=> b!2093842 (= tp!632382 e!1329534)))

(assert (= (and b!2093842 ((_ is Cons!23030) (exprs!1603 (_2!12794 (_1!12795 (h!28433 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575)))))))))))) b!2094326))

(declare-fun b!2094327 () Bool)

(declare-fun e!1329535 () Bool)

(assert (=> b!2094327 (= e!1329535 tp_is_empty!9347)))

(declare-fun b!2094330 () Bool)

(declare-fun tp!632467 () Bool)

(declare-fun tp!632464 () Bool)

(assert (=> b!2094330 (= e!1329535 (and tp!632467 tp!632464))))

(declare-fun b!2094329 () Bool)

(declare-fun tp!632466 () Bool)

(assert (=> b!2094329 (= e!1329535 tp!632466)))

(assert (=> b!2093772 (= tp!632296 e!1329535)))

(declare-fun b!2094328 () Bool)

(declare-fun tp!632468 () Bool)

(declare-fun tp!632465 () Bool)

(assert (=> b!2094328 (= e!1329535 (and tp!632468 tp!632465))))

(assert (= (and b!2093772 ((_ is ElementMatch!5533) (_1!12794 (_1!12795 (h!28433 mapValue!10504))))) b!2094327))

(assert (= (and b!2093772 ((_ is Concat!9774) (_1!12794 (_1!12795 (h!28433 mapValue!10504))))) b!2094328))

(assert (= (and b!2093772 ((_ is Star!5533) (_1!12794 (_1!12795 (h!28433 mapValue!10504))))) b!2094329))

(assert (= (and b!2093772 ((_ is Union!5533) (_1!12794 (_1!12795 (h!28433 mapValue!10504))))) b!2094330))

(declare-fun setNonEmpty!13378 () Bool)

(declare-fun tp!632473 () Bool)

(declare-fun setElem!13378 () Context!2206)

(declare-fun e!1329538 () Bool)

(declare-fun setRes!13378 () Bool)

(assert (=> setNonEmpty!13378 (= setRes!13378 (and tp!632473 (inv!30535 setElem!13378) e!1329538))))

(declare-fun setRest!13378 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13378 (= (_2!12795 (h!28433 (t!195057 mapValue!10504))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13378 true) setRest!13378))))

(declare-fun b!2094331 () Bool)

(declare-fun e!1329536 () Bool)

(declare-fun tp!632470 () Bool)

(assert (=> b!2094331 (= e!1329536 tp!632470)))

(declare-fun b!2094332 () Bool)

(declare-fun tp!632471 () Bool)

(assert (=> b!2094332 (= e!1329538 tp!632471)))

(declare-fun tp!632472 () Bool)

(declare-fun tp!632469 () Bool)

(declare-fun b!2094333 () Bool)

(declare-fun e!1329537 () Bool)

(assert (=> b!2094333 (= e!1329537 (and tp!632469 (inv!30535 (_2!12794 (_1!12795 (h!28433 (t!195057 mapValue!10504))))) e!1329536 tp_is_empty!9347 setRes!13378 tp!632472))))

(declare-fun condSetEmpty!13378 () Bool)

(assert (=> b!2094333 (= condSetEmpty!13378 (= (_2!12795 (h!28433 (t!195057 mapValue!10504))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setIsEmpty!13378 () Bool)

(assert (=> setIsEmpty!13378 setRes!13378))

(assert (=> b!2093772 (= tp!632289 e!1329537)))

(assert (= b!2094333 b!2094331))

(assert (= (and b!2094333 condSetEmpty!13378) setIsEmpty!13378))

(assert (= (and b!2094333 (not condSetEmpty!13378)) setNonEmpty!13378))

(assert (= setNonEmpty!13378 b!2094332))

(assert (= (and b!2093772 ((_ is Cons!23032) (t!195057 mapValue!10504))) b!2094333))

(declare-fun m!2550251 () Bool)

(assert (=> setNonEmpty!13378 m!2550251))

(declare-fun m!2550253 () Bool)

(assert (=> b!2094333 m!2550253))

(declare-fun b!2094334 () Bool)

(declare-fun e!1329539 () Bool)

(declare-fun tp!632474 () Bool)

(declare-fun tp!632475 () Bool)

(assert (=> b!2094334 (= e!1329539 (and tp!632474 tp!632475))))

(assert (=> b!2093827 (= tp!632365 e!1329539)))

(assert (= (and b!2093827 ((_ is Cons!23030) (exprs!1603 (_1!12792 (_1!12793 (h!28432 mapValue!10501)))))) b!2094334))

(declare-fun tp!632478 () Bool)

(declare-fun e!1329540 () Bool)

(declare-fun b!2094335 () Bool)

(declare-fun tp!632476 () Bool)

(assert (=> b!2094335 (= e!1329540 (and (inv!30525 (left!18059 (left!18059 (c!337359 treated!60)))) tp!632476 (inv!30525 (right!18389 (left!18059 (c!337359 treated!60)))) tp!632478))))

(declare-fun b!2094337 () Bool)

(declare-fun e!1329541 () Bool)

(declare-fun tp!632477 () Bool)

(assert (=> b!2094337 (= e!1329541 tp!632477)))

(declare-fun b!2094336 () Bool)

(assert (=> b!2094336 (= e!1329540 (and (inv!30537 (xs!10608 (left!18059 (c!337359 treated!60)))) e!1329541))))

(assert (=> b!2093802 (= tp!632332 (and (inv!30525 (left!18059 (c!337359 treated!60))) e!1329540))))

(assert (= (and b!2093802 ((_ is Node!7674) (left!18059 (c!337359 treated!60)))) b!2094335))

(assert (= b!2094336 b!2094337))

(assert (= (and b!2093802 ((_ is Leaf!11208) (left!18059 (c!337359 treated!60)))) b!2094336))

(declare-fun m!2550255 () Bool)

(assert (=> b!2094335 m!2550255))

(declare-fun m!2550257 () Bool)

(assert (=> b!2094335 m!2550257))

(declare-fun m!2550259 () Bool)

(assert (=> b!2094336 m!2550259))

(assert (=> b!2093802 m!2549553))

(declare-fun e!1329542 () Bool)

(declare-fun tp!632479 () Bool)

(declare-fun tp!632481 () Bool)

(declare-fun b!2094338 () Bool)

(assert (=> b!2094338 (= e!1329542 (and (inv!30525 (left!18059 (right!18389 (c!337359 treated!60)))) tp!632479 (inv!30525 (right!18389 (right!18389 (c!337359 treated!60)))) tp!632481))))

(declare-fun b!2094340 () Bool)

(declare-fun e!1329543 () Bool)

(declare-fun tp!632480 () Bool)

(assert (=> b!2094340 (= e!1329543 tp!632480)))

(declare-fun b!2094339 () Bool)

(assert (=> b!2094339 (= e!1329542 (and (inv!30537 (xs!10608 (right!18389 (c!337359 treated!60)))) e!1329543))))

(assert (=> b!2093802 (= tp!632334 (and (inv!30525 (right!18389 (c!337359 treated!60))) e!1329542))))

(assert (= (and b!2093802 ((_ is Node!7674) (right!18389 (c!337359 treated!60)))) b!2094338))

(assert (= b!2094339 b!2094340))

(assert (= (and b!2093802 ((_ is Leaf!11208) (right!18389 (c!337359 treated!60)))) b!2094339))

(declare-fun m!2550261 () Bool)

(assert (=> b!2094338 m!2550261))

(declare-fun m!2550263 () Bool)

(assert (=> b!2094338 m!2550263))

(declare-fun m!2550265 () Bool)

(assert (=> b!2094339 m!2550265))

(assert (=> b!2093802 m!2549555))

(declare-fun b!2094341 () Bool)

(declare-fun e!1329544 () Bool)

(declare-fun tp!632482 () Bool)

(declare-fun tp!632483 () Bool)

(assert (=> b!2094341 (= e!1329544 (and tp!632482 tp!632483))))

(assert (=> b!2093819 (= tp!632356 e!1329544)))

(assert (= (and b!2093819 ((_ is Cons!23030) (exprs!1603 (_1!12792 (_1!12793 (h!28432 mapDefault!10507)))))) b!2094341))

(declare-fun b!2094342 () Bool)

(declare-fun e!1329545 () Bool)

(assert (=> b!2094342 (= e!1329545 tp_is_empty!9347)))

(declare-fun b!2094345 () Bool)

(declare-fun tp!632487 () Bool)

(declare-fun tp!632484 () Bool)

(assert (=> b!2094345 (= e!1329545 (and tp!632487 tp!632484))))

(declare-fun b!2094344 () Bool)

(declare-fun tp!632486 () Bool)

(assert (=> b!2094344 (= e!1329545 tp!632486)))

(assert (=> b!2093787 (= tp!632314 e!1329545)))

(declare-fun b!2094343 () Bool)

(declare-fun tp!632488 () Bool)

(declare-fun tp!632485 () Bool)

(assert (=> b!2094343 (= e!1329545 (and tp!632488 tp!632485))))

(assert (= (and b!2093787 ((_ is ElementMatch!5533) (_1!12794 (_1!12795 (h!28433 mapDefault!10500))))) b!2094342))

(assert (= (and b!2093787 ((_ is Concat!9774) (_1!12794 (_1!12795 (h!28433 mapDefault!10500))))) b!2094343))

(assert (= (and b!2093787 ((_ is Star!5533) (_1!12794 (_1!12795 (h!28433 mapDefault!10500))))) b!2094344))

(assert (= (and b!2093787 ((_ is Union!5533) (_1!12794 (_1!12795 (h!28433 mapDefault!10500))))) b!2094345))

(declare-fun setNonEmpty!13379 () Bool)

(declare-fun e!1329548 () Bool)

(declare-fun setElem!13379 () Context!2206)

(declare-fun tp!632493 () Bool)

(declare-fun setRes!13379 () Bool)

(assert (=> setNonEmpty!13379 (= setRes!13379 (and tp!632493 (inv!30535 setElem!13379) e!1329548))))

(declare-fun setRest!13379 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13379 (= (_2!12795 (h!28433 (t!195057 mapDefault!10500))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13379 true) setRest!13379))))

(declare-fun b!2094346 () Bool)

(declare-fun e!1329546 () Bool)

(declare-fun tp!632490 () Bool)

(assert (=> b!2094346 (= e!1329546 tp!632490)))

(declare-fun b!2094347 () Bool)

(declare-fun tp!632491 () Bool)

(assert (=> b!2094347 (= e!1329548 tp!632491)))

(declare-fun tp!632492 () Bool)

(declare-fun b!2094348 () Bool)

(declare-fun e!1329547 () Bool)

(declare-fun tp!632489 () Bool)

(assert (=> b!2094348 (= e!1329547 (and tp!632489 (inv!30535 (_2!12794 (_1!12795 (h!28433 (t!195057 mapDefault!10500))))) e!1329546 tp_is_empty!9347 setRes!13379 tp!632492))))

(declare-fun condSetEmpty!13379 () Bool)

(assert (=> b!2094348 (= condSetEmpty!13379 (= (_2!12795 (h!28433 (t!195057 mapDefault!10500))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setIsEmpty!13379 () Bool)

(assert (=> setIsEmpty!13379 setRes!13379))

(assert (=> b!2093787 (= tp!632317 e!1329547)))

(assert (= b!2094348 b!2094346))

(assert (= (and b!2094348 condSetEmpty!13379) setIsEmpty!13379))

(assert (= (and b!2094348 (not condSetEmpty!13379)) setNonEmpty!13379))

(assert (= setNonEmpty!13379 b!2094347))

(assert (= (and b!2093787 ((_ is Cons!23032) (t!195057 mapDefault!10500))) b!2094348))

(declare-fun m!2550267 () Bool)

(assert (=> setNonEmpty!13379 m!2550267))

(declare-fun m!2550269 () Bool)

(assert (=> b!2094348 m!2550269))

(declare-fun b!2094349 () Bool)

(declare-fun e!1329549 () Bool)

(assert (=> b!2094349 (= e!1329549 tp_is_empty!9347)))

(declare-fun b!2094352 () Bool)

(declare-fun tp!632497 () Bool)

(declare-fun tp!632494 () Bool)

(assert (=> b!2094352 (= e!1329549 (and tp!632497 tp!632494))))

(declare-fun b!2094351 () Bool)

(declare-fun tp!632496 () Bool)

(assert (=> b!2094351 (= e!1329549 tp!632496)))

(assert (=> b!2093784 (= tp!632309 e!1329549)))

(declare-fun b!2094350 () Bool)

(declare-fun tp!632498 () Bool)

(declare-fun tp!632495 () Bool)

(assert (=> b!2094350 (= e!1329549 (and tp!632498 tp!632495))))

(assert (= (and b!2093784 ((_ is ElementMatch!5533) (_1!12794 (_1!12795 (h!28433 mapValue!10500))))) b!2094349))

(assert (= (and b!2093784 ((_ is Concat!9774) (_1!12794 (_1!12795 (h!28433 mapValue!10500))))) b!2094350))

(assert (= (and b!2093784 ((_ is Star!5533) (_1!12794 (_1!12795 (h!28433 mapValue!10500))))) b!2094351))

(assert (= (and b!2093784 ((_ is Union!5533) (_1!12794 (_1!12795 (h!28433 mapValue!10500))))) b!2094352))

(declare-fun setElem!13380 () Context!2206)

(declare-fun tp!632503 () Bool)

(declare-fun e!1329552 () Bool)

(declare-fun setRes!13380 () Bool)

(declare-fun setNonEmpty!13380 () Bool)

(assert (=> setNonEmpty!13380 (= setRes!13380 (and tp!632503 (inv!30535 setElem!13380) e!1329552))))

(declare-fun setRest!13380 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13380 (= (_2!12795 (h!28433 (t!195057 mapValue!10500))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13380 true) setRest!13380))))

(declare-fun b!2094353 () Bool)

(declare-fun e!1329550 () Bool)

(declare-fun tp!632500 () Bool)

(assert (=> b!2094353 (= e!1329550 tp!632500)))

(declare-fun b!2094354 () Bool)

(declare-fun tp!632501 () Bool)

(assert (=> b!2094354 (= e!1329552 tp!632501)))

(declare-fun tp!632499 () Bool)

(declare-fun e!1329551 () Bool)

(declare-fun tp!632502 () Bool)

(declare-fun b!2094355 () Bool)

(assert (=> b!2094355 (= e!1329551 (and tp!632499 (inv!30535 (_2!12794 (_1!12795 (h!28433 (t!195057 mapValue!10500))))) e!1329550 tp_is_empty!9347 setRes!13380 tp!632502))))

(declare-fun condSetEmpty!13380 () Bool)

(assert (=> b!2094355 (= condSetEmpty!13380 (= (_2!12795 (h!28433 (t!195057 mapValue!10500))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setIsEmpty!13380 () Bool)

(assert (=> setIsEmpty!13380 setRes!13380))

(assert (=> b!2093784 (= tp!632312 e!1329551)))

(assert (= b!2094355 b!2094353))

(assert (= (and b!2094355 condSetEmpty!13380) setIsEmpty!13380))

(assert (= (and b!2094355 (not condSetEmpty!13380)) setNonEmpty!13380))

(assert (= setNonEmpty!13380 b!2094354))

(assert (= (and b!2093784 ((_ is Cons!23032) (t!195057 mapValue!10500))) b!2094355))

(declare-fun m!2550271 () Bool)

(assert (=> setNonEmpty!13380 m!2550271))

(declare-fun m!2550273 () Bool)

(assert (=> b!2094355 m!2550273))

(declare-fun b!2094356 () Bool)

(declare-fun e!1329553 () Bool)

(declare-fun tp!632504 () Bool)

(declare-fun tp!632505 () Bool)

(assert (=> b!2094356 (= e!1329553 (and tp!632504 tp!632505))))

(assert (=> b!2093725 (= tp!632237 e!1329553)))

(assert (= (and b!2093725 ((_ is Cons!23030) (exprs!1603 (_1!12792 (_1!12793 (h!28432 (zeroValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))))))) b!2094356))

(declare-fun condSetEmpty!13381 () Bool)

(assert (=> setNonEmpty!13351 (= condSetEmpty!13381 (= setRest!13351 ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setRes!13381 () Bool)

(assert (=> setNonEmpty!13351 (= tp!632238 setRes!13381)))

(declare-fun setIsEmpty!13381 () Bool)

(assert (=> setIsEmpty!13381 setRes!13381))

(declare-fun setElem!13381 () Context!2206)

(declare-fun setNonEmpty!13381 () Bool)

(declare-fun e!1329554 () Bool)

(declare-fun tp!632506 () Bool)

(assert (=> setNonEmpty!13381 (= setRes!13381 (and tp!632506 (inv!30535 setElem!13381) e!1329554))))

(declare-fun setRest!13381 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13381 (= setRest!13351 ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13381 true) setRest!13381))))

(declare-fun b!2094357 () Bool)

(declare-fun tp!632507 () Bool)

(assert (=> b!2094357 (= e!1329554 tp!632507)))

(assert (= (and setNonEmpty!13351 condSetEmpty!13381) setIsEmpty!13381))

(assert (= (and setNonEmpty!13351 (not condSetEmpty!13381)) setNonEmpty!13381))

(assert (= setNonEmpty!13381 b!2094357))

(declare-fun m!2550275 () Bool)

(assert (=> setNonEmpty!13381 m!2550275))

(declare-fun e!1329556 () Bool)

(assert (=> b!2093723 (= tp!632236 e!1329556)))

(declare-fun setIsEmpty!13382 () Bool)

(declare-fun setRes!13382 () Bool)

(assert (=> setIsEmpty!13382 setRes!13382))

(declare-fun b!2094358 () Bool)

(declare-fun e!1329557 () Bool)

(declare-fun tp!632510 () Bool)

(assert (=> b!2094358 (= e!1329556 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 (t!195056 (zeroValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))))))) e!1329557 tp_is_empty!9347 setRes!13382 tp!632510))))

(declare-fun condSetEmpty!13382 () Bool)

(assert (=> b!2094358 (= condSetEmpty!13382 (= (_2!12793 (h!28432 (t!195056 (zeroValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun b!2094359 () Bool)

(declare-fun e!1329555 () Bool)

(declare-fun tp!632509 () Bool)

(assert (=> b!2094359 (= e!1329555 tp!632509)))

(declare-fun b!2094360 () Bool)

(declare-fun tp!632511 () Bool)

(assert (=> b!2094360 (= e!1329557 tp!632511)))

(declare-fun setElem!13382 () Context!2206)

(declare-fun tp!632508 () Bool)

(declare-fun setNonEmpty!13382 () Bool)

(assert (=> setNonEmpty!13382 (= setRes!13382 (and tp!632508 (inv!30535 setElem!13382) e!1329555))))

(declare-fun setRest!13382 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13382 (= (_2!12793 (h!28432 (t!195056 (zeroValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13382 true) setRest!13382))))

(assert (= b!2094358 b!2094360))

(assert (= (and b!2094358 condSetEmpty!13382) setIsEmpty!13382))

(assert (= (and b!2094358 (not condSetEmpty!13382)) setNonEmpty!13382))

(assert (= setNonEmpty!13382 b!2094359))

(assert (= (and b!2093723 ((_ is Cons!23031) (t!195056 (zeroValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))))) b!2094358))

(declare-fun m!2550277 () Bool)

(assert (=> b!2094358 m!2550277))

(declare-fun m!2550279 () Bool)

(assert (=> setNonEmpty!13382 m!2550279))

(declare-fun b!2094361 () Bool)

(declare-fun e!1329558 () Bool)

(assert (=> b!2094361 (= e!1329558 tp_is_empty!9347)))

(declare-fun b!2094364 () Bool)

(declare-fun tp!632515 () Bool)

(declare-fun tp!632512 () Bool)

(assert (=> b!2094364 (= e!1329558 (and tp!632515 tp!632512))))

(declare-fun b!2094363 () Bool)

(declare-fun tp!632514 () Bool)

(assert (=> b!2094363 (= e!1329558 tp!632514)))

(assert (=> b!2093847 (= tp!632386 e!1329558)))

(declare-fun b!2094362 () Bool)

(declare-fun tp!632516 () Bool)

(declare-fun tp!632513 () Bool)

(assert (=> b!2094362 (= e!1329558 (and tp!632516 tp!632513))))

(assert (= (and b!2093847 ((_ is ElementMatch!5533) (_1!12794 (_1!12795 (h!28433 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))))) b!2094361))

(assert (= (and b!2093847 ((_ is Concat!9774) (_1!12794 (_1!12795 (h!28433 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))))) b!2094362))

(assert (= (and b!2093847 ((_ is Star!5533) (_1!12794 (_1!12795 (h!28433 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))))) b!2094363))

(assert (= (and b!2093847 ((_ is Union!5533) (_1!12794 (_1!12795 (h!28433 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))))) b!2094364))

(declare-fun tp!632521 () Bool)

(declare-fun setNonEmpty!13383 () Bool)

(declare-fun setRes!13383 () Bool)

(declare-fun setElem!13383 () Context!2206)

(declare-fun e!1329561 () Bool)

(assert (=> setNonEmpty!13383 (= setRes!13383 (and tp!632521 (inv!30535 setElem!13383) e!1329561))))

(declare-fun setRest!13383 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13383 (= (_2!12795 (h!28433 (t!195057 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13383 true) setRest!13383))))

(declare-fun b!2094365 () Bool)

(declare-fun e!1329559 () Bool)

(declare-fun tp!632518 () Bool)

(assert (=> b!2094365 (= e!1329559 tp!632518)))

(declare-fun b!2094366 () Bool)

(declare-fun tp!632519 () Bool)

(assert (=> b!2094366 (= e!1329561 tp!632519)))

(declare-fun b!2094367 () Bool)

(declare-fun e!1329560 () Bool)

(declare-fun tp!632517 () Bool)

(declare-fun tp!632520 () Bool)

(assert (=> b!2094367 (= e!1329560 (and tp!632517 (inv!30535 (_2!12794 (_1!12795 (h!28433 (t!195057 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))))) e!1329559 tp_is_empty!9347 setRes!13383 tp!632520))))

(declare-fun condSetEmpty!13383 () Bool)

(assert (=> b!2094367 (= condSetEmpty!13383 (= (_2!12795 (h!28433 (t!195057 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setIsEmpty!13383 () Bool)

(assert (=> setIsEmpty!13383 setRes!13383))

(assert (=> b!2093847 (= tp!632389 e!1329560)))

(assert (= b!2094367 b!2094365))

(assert (= (and b!2094367 condSetEmpty!13383) setIsEmpty!13383))

(assert (= (and b!2094367 (not condSetEmpty!13383)) setNonEmpty!13383))

(assert (= setNonEmpty!13383 b!2094366))

(assert (= (and b!2093847 ((_ is Cons!23032) (t!195057 (minValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))) b!2094367))

(declare-fun m!2550281 () Bool)

(assert (=> setNonEmpty!13383 m!2550281))

(declare-fun m!2550283 () Bool)

(assert (=> b!2094367 m!2550283))

(declare-fun b!2094368 () Bool)

(declare-fun e!1329562 () Bool)

(declare-fun tp!632522 () Bool)

(declare-fun tp!632523 () Bool)

(assert (=> b!2094368 (= e!1329562 (and tp!632522 tp!632523))))

(assert (=> b!2093727 (= tp!632239 e!1329562)))

(assert (= (and b!2093727 ((_ is Cons!23030) (exprs!1603 setElem!13351))) b!2094368))

(declare-fun b!2094369 () Bool)

(declare-fun e!1329563 () Bool)

(assert (=> b!2094369 (= e!1329563 tp_is_empty!9347)))

(declare-fun b!2094372 () Bool)

(declare-fun tp!632527 () Bool)

(declare-fun tp!632524 () Bool)

(assert (=> b!2094372 (= e!1329563 (and tp!632527 tp!632524))))

(declare-fun b!2094371 () Bool)

(declare-fun tp!632526 () Bool)

(assert (=> b!2094371 (= e!1329563 tp!632526)))

(assert (=> b!2093844 (= tp!632381 e!1329563)))

(declare-fun b!2094370 () Bool)

(declare-fun tp!632528 () Bool)

(declare-fun tp!632525 () Bool)

(assert (=> b!2094370 (= e!1329563 (and tp!632528 tp!632525))))

(assert (= (and b!2093844 ((_ is ElementMatch!5533) (_1!12794 (_1!12795 (h!28433 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))))) b!2094369))

(assert (= (and b!2093844 ((_ is Concat!9774) (_1!12794 (_1!12795 (h!28433 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))))) b!2094370))

(assert (= (and b!2093844 ((_ is Star!5533) (_1!12794 (_1!12795 (h!28433 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))))) b!2094371))

(assert (= (and b!2093844 ((_ is Union!5533) (_1!12794 (_1!12795 (h!28433 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))))) b!2094372))

(declare-fun setNonEmpty!13384 () Bool)

(declare-fun tp!632533 () Bool)

(declare-fun e!1329566 () Bool)

(declare-fun setElem!13384 () Context!2206)

(declare-fun setRes!13384 () Bool)

(assert (=> setNonEmpty!13384 (= setRes!13384 (and tp!632533 (inv!30535 setElem!13384) e!1329566))))

(declare-fun setRest!13384 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13384 (= (_2!12795 (h!28433 (t!195057 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13384 true) setRest!13384))))

(declare-fun b!2094373 () Bool)

(declare-fun e!1329564 () Bool)

(declare-fun tp!632530 () Bool)

(assert (=> b!2094373 (= e!1329564 tp!632530)))

(declare-fun b!2094374 () Bool)

(declare-fun tp!632531 () Bool)

(assert (=> b!2094374 (= e!1329566 tp!632531)))

(declare-fun tp!632532 () Bool)

(declare-fun b!2094375 () Bool)

(declare-fun e!1329565 () Bool)

(declare-fun tp!632529 () Bool)

(assert (=> b!2094375 (= e!1329565 (and tp!632529 (inv!30535 (_2!12794 (_1!12795 (h!28433 (t!195057 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))))) e!1329564 tp_is_empty!9347 setRes!13384 tp!632532))))

(declare-fun condSetEmpty!13384 () Bool)

(assert (=> b!2094375 (= condSetEmpty!13384 (= (_2!12795 (h!28433 (t!195057 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setIsEmpty!13384 () Bool)

(assert (=> setIsEmpty!13384 setRes!13384))

(assert (=> b!2093844 (= tp!632384 e!1329565)))

(assert (= b!2094375 b!2094373))

(assert (= (and b!2094375 condSetEmpty!13384) setIsEmpty!13384))

(assert (= (and b!2094375 (not condSetEmpty!13384)) setNonEmpty!13384))

(assert (= setNonEmpty!13384 b!2094374))

(assert (= (and b!2093844 ((_ is Cons!23032) (t!195057 (zeroValue!2438 (v!27634 (underlying!4555 (v!27635 (underlying!4556 (cache!2475 cacheDown!575))))))))) b!2094375))

(declare-fun m!2550285 () Bool)

(assert (=> setNonEmpty!13384 m!2550285))

(declare-fun m!2550287 () Bool)

(assert (=> b!2094375 m!2550287))

(declare-fun b!2094376 () Bool)

(declare-fun e!1329567 () Bool)

(declare-fun tp!632534 () Bool)

(declare-fun tp!632535 () Bool)

(assert (=> b!2094376 (= e!1329567 (and tp!632534 tp!632535))))

(assert (=> b!2093822 (= tp!632355 e!1329567)))

(assert (= (and b!2093822 ((_ is Cons!23030) (exprs!1603 (_1!12792 (_1!12793 (h!28432 mapValue!10507)))))) b!2094376))

(declare-fun b!2094379 () Bool)

(declare-fun b_free!59877 () Bool)

(declare-fun b_next!60581 () Bool)

(assert (=> b!2094379 (= b_free!59877 (not b_next!60581))))

(declare-fun tp!632539 () Bool)

(declare-fun b_and!168867 () Bool)

(assert (=> b!2094379 (= tp!632539 b_and!168867)))

(declare-fun b_free!59879 () Bool)

(declare-fun b_next!60583 () Bool)

(assert (=> b!2094379 (= b_free!59879 (not b_next!60583))))

(declare-fun tp!632538 () Bool)

(declare-fun b_and!168869 () Bool)

(assert (=> b!2094379 (= tp!632538 b_and!168869)))

(declare-fun e!1329571 () Bool)

(assert (=> b!2094379 (= e!1329571 (and tp!632539 tp!632538))))

(declare-fun tp!632536 () Bool)

(declare-fun b!2094378 () Bool)

(declare-fun e!1329570 () Bool)

(assert (=> b!2094378 (= e!1329570 (and tp!632536 (inv!30523 (tag!4595 (h!28437 (t!195061 (t!195061 rules!1563))))) (inv!30526 (transformation!4105 (h!28437 (t!195061 (t!195061 rules!1563))))) e!1329571))))

(declare-fun b!2094377 () Bool)

(declare-fun e!1329569 () Bool)

(declare-fun tp!632537 () Bool)

(assert (=> b!2094377 (= e!1329569 (and e!1329570 tp!632537))))

(assert (=> b!2093839 (= tp!632378 e!1329569)))

(assert (= b!2094378 b!2094379))

(assert (= b!2094377 b!2094378))

(assert (= (and b!2093839 ((_ is Cons!23036) (t!195061 (t!195061 rules!1563)))) b!2094377))

(declare-fun m!2550289 () Bool)

(assert (=> b!2094378 m!2550289))

(declare-fun m!2550291 () Bool)

(assert (=> b!2094378 m!2550291))

(declare-fun b!2094384 () Bool)

(declare-fun e!1329574 () Bool)

(declare-fun tp!632542 () Bool)

(assert (=> b!2094384 (= e!1329574 (and tp_is_empty!9347 tp!632542))))

(assert (=> b!2093804 (= tp!632333 e!1329574)))

(assert (= (and b!2093804 ((_ is Cons!23033) (innerList!7734 (xs!10608 (c!337359 treated!60))))) b!2094384))

(declare-fun e!1329576 () Bool)

(assert (=> b!2093821 (= tp!632361 e!1329576)))

(declare-fun setIsEmpty!13385 () Bool)

(declare-fun setRes!13385 () Bool)

(assert (=> setIsEmpty!13385 setRes!13385))

(declare-fun tp!632545 () Bool)

(declare-fun b!2094385 () Bool)

(declare-fun e!1329577 () Bool)

(assert (=> b!2094385 (= e!1329576 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 (t!195056 mapValue!10507))))) e!1329577 tp_is_empty!9347 setRes!13385 tp!632545))))

(declare-fun condSetEmpty!13385 () Bool)

(assert (=> b!2094385 (= condSetEmpty!13385 (= (_2!12793 (h!28432 (t!195056 mapValue!10507))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun b!2094386 () Bool)

(declare-fun e!1329575 () Bool)

(declare-fun tp!632544 () Bool)

(assert (=> b!2094386 (= e!1329575 tp!632544)))

(declare-fun b!2094387 () Bool)

(declare-fun tp!632546 () Bool)

(assert (=> b!2094387 (= e!1329577 tp!632546)))

(declare-fun tp!632543 () Bool)

(declare-fun setNonEmpty!13385 () Bool)

(declare-fun setElem!13385 () Context!2206)

(assert (=> setNonEmpty!13385 (= setRes!13385 (and tp!632543 (inv!30535 setElem!13385) e!1329575))))

(declare-fun setRest!13385 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13385 (= (_2!12793 (h!28432 (t!195056 mapValue!10507))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13385 true) setRest!13385))))

(assert (= b!2094385 b!2094387))

(assert (= (and b!2094385 condSetEmpty!13385) setIsEmpty!13385))

(assert (= (and b!2094385 (not condSetEmpty!13385)) setNonEmpty!13385))

(assert (= setNonEmpty!13385 b!2094386))

(assert (= (and b!2093821 ((_ is Cons!23031) (t!195056 mapValue!10507))) b!2094385))

(declare-fun m!2550293 () Bool)

(assert (=> b!2094385 m!2550293))

(declare-fun m!2550295 () Bool)

(assert (=> setNonEmpty!13385 m!2550295))

(declare-fun b!2094388 () Bool)

(declare-fun e!1329578 () Bool)

(declare-fun tp!632547 () Bool)

(declare-fun tp!632548 () Bool)

(assert (=> b!2094388 (= e!1329578 (and tp!632547 tp!632548))))

(assert (=> b!2093801 (= tp!632331 e!1329578)))

(assert (= (and b!2093801 ((_ is Cons!23030) (exprs!1603 (_1!12792 (_1!12793 (h!28432 mapDefault!10501)))))) b!2094388))

(declare-fun b!2094389 () Bool)

(declare-fun e!1329579 () Bool)

(declare-fun tp!632549 () Bool)

(assert (=> b!2094389 (= e!1329579 (and tp_is_empty!9347 tp!632549))))

(assert (=> b!2093798 (= tp!632326 e!1329579)))

(assert (= (and b!2093798 ((_ is Cons!23033) (innerList!7734 (xs!10608 (c!337359 input!986))))) b!2094389))

(declare-fun b!2094390 () Bool)

(declare-fun e!1329580 () Bool)

(declare-fun tp!632550 () Bool)

(declare-fun tp!632551 () Bool)

(assert (=> b!2094390 (= e!1329580 (and tp!632550 tp!632551))))

(assert (=> b!2093824 (= tp!632354 e!1329580)))

(assert (= (and b!2093824 ((_ is Cons!23030) (exprs!1603 setElem!13368))) b!2094390))

(declare-fun b!2094391 () Bool)

(declare-fun e!1329581 () Bool)

(assert (=> b!2094391 (= e!1329581 tp_is_empty!9347)))

(declare-fun b!2094394 () Bool)

(declare-fun tp!632555 () Bool)

(declare-fun tp!632552 () Bool)

(assert (=> b!2094394 (= e!1329581 (and tp!632555 tp!632552))))

(declare-fun b!2094393 () Bool)

(declare-fun tp!632554 () Bool)

(assert (=> b!2094393 (= e!1329581 tp!632554)))

(assert (=> b!2093752 (= tp!632263 e!1329581)))

(declare-fun b!2094392 () Bool)

(declare-fun tp!632556 () Bool)

(declare-fun tp!632553 () Bool)

(assert (=> b!2094392 (= e!1329581 (and tp!632556 tp!632553))))

(assert (= (and b!2093752 ((_ is ElementMatch!5533) (reg!5862 (regex!4105 (h!28437 rules!1563))))) b!2094391))

(assert (= (and b!2093752 ((_ is Concat!9774) (reg!5862 (regex!4105 (h!28437 rules!1563))))) b!2094392))

(assert (= (and b!2093752 ((_ is Star!5533) (reg!5862 (regex!4105 (h!28437 rules!1563))))) b!2094393))

(assert (= (and b!2093752 ((_ is Union!5533) (reg!5862 (regex!4105 (h!28437 rules!1563))))) b!2094394))

(declare-fun e!1329583 () Bool)

(assert (=> b!2093799 (= tp!632330 e!1329583)))

(declare-fun setIsEmpty!13386 () Bool)

(declare-fun setRes!13386 () Bool)

(assert (=> setIsEmpty!13386 setRes!13386))

(declare-fun tp!632559 () Bool)

(declare-fun e!1329584 () Bool)

(declare-fun b!2094395 () Bool)

(assert (=> b!2094395 (= e!1329583 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 (t!195056 mapDefault!10501))))) e!1329584 tp_is_empty!9347 setRes!13386 tp!632559))))

(declare-fun condSetEmpty!13386 () Bool)

(assert (=> b!2094395 (= condSetEmpty!13386 (= (_2!12793 (h!28432 (t!195056 mapDefault!10501))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun b!2094396 () Bool)

(declare-fun e!1329582 () Bool)

(declare-fun tp!632558 () Bool)

(assert (=> b!2094396 (= e!1329582 tp!632558)))

(declare-fun b!2094397 () Bool)

(declare-fun tp!632560 () Bool)

(assert (=> b!2094397 (= e!1329584 tp!632560)))

(declare-fun setNonEmpty!13386 () Bool)

(declare-fun setElem!13386 () Context!2206)

(declare-fun tp!632557 () Bool)

(assert (=> setNonEmpty!13386 (= setRes!13386 (and tp!632557 (inv!30535 setElem!13386) e!1329582))))

(declare-fun setRest!13386 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13386 (= (_2!12793 (h!28432 (t!195056 mapDefault!10501))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13386 true) setRest!13386))))

(assert (= b!2094395 b!2094397))

(assert (= (and b!2094395 condSetEmpty!13386) setIsEmpty!13386))

(assert (= (and b!2094395 (not condSetEmpty!13386)) setNonEmpty!13386))

(assert (= setNonEmpty!13386 b!2094396))

(assert (= (and b!2093799 ((_ is Cons!23031) (t!195056 mapDefault!10501))) b!2094395))

(declare-fun m!2550297 () Bool)

(assert (=> b!2094395 m!2550297))

(declare-fun m!2550299 () Bool)

(assert (=> setNonEmpty!13386 m!2550299))

(declare-fun b!2094398 () Bool)

(declare-fun e!1329585 () Bool)

(declare-fun tp!632561 () Bool)

(declare-fun tp!632562 () Bool)

(assert (=> b!2094398 (= e!1329585 (and tp!632561 tp!632562))))

(assert (=> b!2093769 (= tp!632298 e!1329585)))

(assert (= (and b!2093769 ((_ is Cons!23030) (exprs!1603 (_2!12794 (_1!12795 (h!28433 mapDefault!10504)))))) b!2094398))

(declare-fun b!2094399 () Bool)

(declare-fun tp!632563 () Bool)

(declare-fun tp!632565 () Bool)

(declare-fun e!1329586 () Bool)

(assert (=> b!2094399 (= e!1329586 (and (inv!30525 (left!18059 (left!18059 (c!337359 input!986)))) tp!632563 (inv!30525 (right!18389 (left!18059 (c!337359 input!986)))) tp!632565))))

(declare-fun b!2094401 () Bool)

(declare-fun e!1329587 () Bool)

(declare-fun tp!632564 () Bool)

(assert (=> b!2094401 (= e!1329587 tp!632564)))

(declare-fun b!2094400 () Bool)

(assert (=> b!2094400 (= e!1329586 (and (inv!30537 (xs!10608 (left!18059 (c!337359 input!986)))) e!1329587))))

(assert (=> b!2093796 (= tp!632325 (and (inv!30525 (left!18059 (c!337359 input!986))) e!1329586))))

(assert (= (and b!2093796 ((_ is Node!7674) (left!18059 (c!337359 input!986)))) b!2094399))

(assert (= b!2094400 b!2094401))

(assert (= (and b!2093796 ((_ is Leaf!11208) (left!18059 (c!337359 input!986)))) b!2094400))

(declare-fun m!2550301 () Bool)

(assert (=> b!2094399 m!2550301))

(declare-fun m!2550303 () Bool)

(assert (=> b!2094399 m!2550303))

(declare-fun m!2550305 () Bool)

(assert (=> b!2094400 m!2550305))

(assert (=> b!2093796 m!2549543))

(declare-fun b!2094402 () Bool)

(declare-fun tp!632566 () Bool)

(declare-fun tp!632568 () Bool)

(declare-fun e!1329588 () Bool)

(assert (=> b!2094402 (= e!1329588 (and (inv!30525 (left!18059 (right!18389 (c!337359 input!986)))) tp!632566 (inv!30525 (right!18389 (right!18389 (c!337359 input!986)))) tp!632568))))

(declare-fun b!2094404 () Bool)

(declare-fun e!1329589 () Bool)

(declare-fun tp!632567 () Bool)

(assert (=> b!2094404 (= e!1329589 tp!632567)))

(declare-fun b!2094403 () Bool)

(assert (=> b!2094403 (= e!1329588 (and (inv!30537 (xs!10608 (right!18389 (c!337359 input!986)))) e!1329589))))

(assert (=> b!2093796 (= tp!632327 (and (inv!30525 (right!18389 (c!337359 input!986))) e!1329588))))

(assert (= (and b!2093796 ((_ is Node!7674) (right!18389 (c!337359 input!986)))) b!2094402))

(assert (= b!2094403 b!2094404))

(assert (= (and b!2093796 ((_ is Leaf!11208) (right!18389 (c!337359 input!986)))) b!2094403))

(declare-fun m!2550307 () Bool)

(assert (=> b!2094402 m!2550307))

(declare-fun m!2550309 () Bool)

(assert (=> b!2094402 m!2550309))

(declare-fun m!2550311 () Bool)

(assert (=> b!2094403 m!2550311))

(assert (=> b!2093796 m!2549545))

(declare-fun condSetEmpty!13387 () Bool)

(assert (=> setNonEmpty!13356 (= condSetEmpty!13387 (= setRest!13356 ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setRes!13387 () Bool)

(assert (=> setNonEmpty!13356 (= tp!632294 setRes!13387)))

(declare-fun setIsEmpty!13387 () Bool)

(assert (=> setIsEmpty!13387 setRes!13387))

(declare-fun setNonEmpty!13387 () Bool)

(declare-fun tp!632569 () Bool)

(declare-fun setElem!13387 () Context!2206)

(declare-fun e!1329590 () Bool)

(assert (=> setNonEmpty!13387 (= setRes!13387 (and tp!632569 (inv!30535 setElem!13387) e!1329590))))

(declare-fun setRest!13387 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13387 (= setRest!13356 ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13387 true) setRest!13387))))

(declare-fun b!2094405 () Bool)

(declare-fun tp!632570 () Bool)

(assert (=> b!2094405 (= e!1329590 tp!632570)))

(assert (= (and setNonEmpty!13356 condSetEmpty!13387) setIsEmpty!13387))

(assert (= (and setNonEmpty!13356 (not condSetEmpty!13387)) setNonEmpty!13387))

(assert (= setNonEmpty!13387 b!2094405))

(declare-fun m!2550313 () Bool)

(assert (=> setNonEmpty!13387 m!2550313))

(declare-fun e!1329592 () Bool)

(assert (=> b!2093726 (= tp!632240 e!1329592)))

(declare-fun setIsEmpty!13388 () Bool)

(declare-fun setRes!13388 () Bool)

(assert (=> setIsEmpty!13388 setRes!13388))

(declare-fun tp!632573 () Bool)

(declare-fun b!2094406 () Bool)

(declare-fun e!1329593 () Bool)

(assert (=> b!2094406 (= e!1329592 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 (t!195056 (minValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))))))) e!1329593 tp_is_empty!9347 setRes!13388 tp!632573))))

(declare-fun condSetEmpty!13388 () Bool)

(assert (=> b!2094406 (= condSetEmpty!13388 (= (_2!12793 (h!28432 (t!195056 (minValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun b!2094407 () Bool)

(declare-fun e!1329591 () Bool)

(declare-fun tp!632572 () Bool)

(assert (=> b!2094407 (= e!1329591 tp!632572)))

(declare-fun b!2094408 () Bool)

(declare-fun tp!632574 () Bool)

(assert (=> b!2094408 (= e!1329593 tp!632574)))

(declare-fun tp!632571 () Bool)

(declare-fun setElem!13388 () Context!2206)

(declare-fun setNonEmpty!13388 () Bool)

(assert (=> setNonEmpty!13388 (= setRes!13388 (and tp!632571 (inv!30535 setElem!13388) e!1329591))))

(declare-fun setRest!13388 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13388 (= (_2!12793 (h!28432 (t!195056 (minValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13388 true) setRest!13388))))

(assert (= b!2094406 b!2094408))

(assert (= (and b!2094406 condSetEmpty!13388) setIsEmpty!13388))

(assert (= (and b!2094406 (not condSetEmpty!13388)) setNonEmpty!13388))

(assert (= setNonEmpty!13388 b!2094407))

(assert (= (and b!2093726 ((_ is Cons!23031) (t!195056 (minValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562))))))))) b!2094406))

(declare-fun m!2550315 () Bool)

(assert (=> b!2094406 m!2550315))

(declare-fun m!2550317 () Bool)

(assert (=> setNonEmpty!13388 m!2550317))

(declare-fun condSetEmpty!13389 () Bool)

(assert (=> setNonEmpty!13360 (= condSetEmpty!13389 (= setRest!13360 ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setRes!13389 () Bool)

(assert (=> setNonEmpty!13360 (= tp!632313 setRes!13389)))

(declare-fun setIsEmpty!13389 () Bool)

(assert (=> setIsEmpty!13389 setRes!13389))

(declare-fun tp!632575 () Bool)

(declare-fun setNonEmpty!13389 () Bool)

(declare-fun setElem!13389 () Context!2206)

(declare-fun e!1329594 () Bool)

(assert (=> setNonEmpty!13389 (= setRes!13389 (and tp!632575 (inv!30535 setElem!13389) e!1329594))))

(declare-fun setRest!13389 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13389 (= setRest!13360 ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13389 true) setRest!13389))))

(declare-fun b!2094409 () Bool)

(declare-fun tp!632576 () Bool)

(assert (=> b!2094409 (= e!1329594 tp!632576)))

(assert (= (and setNonEmpty!13360 condSetEmpty!13389) setIsEmpty!13389))

(assert (= (and setNonEmpty!13360 (not condSetEmpty!13389)) setNonEmpty!13389))

(assert (= setNonEmpty!13389 b!2094409))

(declare-fun m!2550319 () Bool)

(assert (=> setNonEmpty!13389 m!2550319))

(declare-fun b!2094410 () Bool)

(declare-fun e!1329595 () Bool)

(declare-fun tp!632577 () Bool)

(declare-fun tp!632578 () Bool)

(assert (=> b!2094410 (= e!1329595 (and tp!632577 tp!632578))))

(assert (=> b!2093846 (= tp!632388 e!1329595)))

(assert (= (and b!2093846 ((_ is Cons!23030) (exprs!1603 setElem!13371))) b!2094410))

(declare-fun b!2094411 () Bool)

(declare-fun e!1329596 () Bool)

(declare-fun tp!632579 () Bool)

(declare-fun tp!632580 () Bool)

(assert (=> b!2094411 (= e!1329596 (and tp!632579 tp!632580))))

(assert (=> b!2093843 (= tp!632383 e!1329596)))

(assert (= (and b!2093843 ((_ is Cons!23030) (exprs!1603 setElem!13370))) b!2094411))

(declare-fun b!2094412 () Bool)

(declare-fun e!1329597 () Bool)

(declare-fun tp!632581 () Bool)

(declare-fun tp!632582 () Bool)

(assert (=> b!2094412 (= e!1329597 (and tp!632581 tp!632582))))

(assert (=> b!2093773 (= tp!632297 e!1329597)))

(assert (= (and b!2093773 ((_ is Cons!23030) (exprs!1603 setElem!13356))) b!2094412))

(declare-fun condSetEmpty!13390 () Bool)

(assert (=> setNonEmpty!13370 (= condSetEmpty!13390 (= setRest!13370 ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setRes!13390 () Bool)

(assert (=> setNonEmpty!13370 (= tp!632385 setRes!13390)))

(declare-fun setIsEmpty!13390 () Bool)

(assert (=> setIsEmpty!13390 setRes!13390))

(declare-fun tp!632583 () Bool)

(declare-fun setNonEmpty!13390 () Bool)

(declare-fun setElem!13390 () Context!2206)

(declare-fun e!1329598 () Bool)

(assert (=> setNonEmpty!13390 (= setRes!13390 (and tp!632583 (inv!30535 setElem!13390) e!1329598))))

(declare-fun setRest!13390 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13390 (= setRest!13370 ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13390 true) setRest!13390))))

(declare-fun b!2094413 () Bool)

(declare-fun tp!632584 () Bool)

(assert (=> b!2094413 (= e!1329598 tp!632584)))

(assert (= (and setNonEmpty!13370 condSetEmpty!13390) setIsEmpty!13390))

(assert (= (and setNonEmpty!13370 (not condSetEmpty!13390)) setNonEmpty!13390))

(assert (= setNonEmpty!13390 b!2094413))

(declare-fun m!2550321 () Bool)

(assert (=> setNonEmpty!13390 m!2550321))

(declare-fun b!2094414 () Bool)

(declare-fun e!1329603 () Bool)

(declare-fun tp!632587 () Bool)

(assert (=> b!2094414 (= e!1329603 tp!632587)))

(declare-fun setRes!13392 () Bool)

(declare-fun setElem!13391 () Context!2206)

(declare-fun setNonEmpty!13391 () Bool)

(declare-fun e!1329599 () Bool)

(declare-fun tp!632591 () Bool)

(assert (=> setNonEmpty!13391 (= setRes!13392 (and tp!632591 (inv!30535 setElem!13391) e!1329599))))

(declare-fun mapValue!10508 () List!23116)

(declare-fun setRest!13391 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13391 (= (_2!12795 (h!28433 mapValue!10508)) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13391 true) setRest!13391))))

(declare-fun tp!632590 () Bool)

(declare-fun setNonEmpty!13392 () Bool)

(declare-fun e!1329602 () Bool)

(declare-fun setElem!13392 () Context!2206)

(declare-fun setRes!13391 () Bool)

(assert (=> setNonEmpty!13392 (= setRes!13391 (and tp!632590 (inv!30535 setElem!13392) e!1329602))))

(declare-fun mapDefault!10508 () List!23116)

(declare-fun setRest!13392 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13392 (= (_2!12795 (h!28433 mapDefault!10508)) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13392 true) setRest!13392))))

(declare-fun condMapEmpty!10508 () Bool)

(assert (=> mapNonEmpty!10504 (= condMapEmpty!10508 (= mapRest!10504 ((as const (Array (_ BitVec 32) List!23116)) mapDefault!10508)))))

(declare-fun e!1329604 () Bool)

(declare-fun mapRes!10508 () Bool)

(assert (=> mapNonEmpty!10504 (= tp!632292 (and e!1329604 mapRes!10508))))

(declare-fun b!2094415 () Bool)

(declare-fun e!1329601 () Bool)

(declare-fun tp!632595 () Bool)

(assert (=> b!2094415 (= e!1329601 tp!632595)))

(declare-fun b!2094416 () Bool)

(declare-fun tp!632592 () Bool)

(assert (=> b!2094416 (= e!1329602 tp!632592)))

(declare-fun mapIsEmpty!10508 () Bool)

(assert (=> mapIsEmpty!10508 mapRes!10508))

(declare-fun setIsEmpty!13391 () Bool)

(assert (=> setIsEmpty!13391 setRes!13391))

(declare-fun tp!632585 () Bool)

(declare-fun tp!632588 () Bool)

(declare-fun b!2094417 () Bool)

(assert (=> b!2094417 (= e!1329604 (and tp!632588 (inv!30535 (_2!12794 (_1!12795 (h!28433 mapDefault!10508)))) e!1329601 tp_is_empty!9347 setRes!13391 tp!632585))))

(declare-fun condSetEmpty!13391 () Bool)

(assert (=> b!2094417 (= condSetEmpty!13391 (= (_2!12795 (h!28433 mapDefault!10508)) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun tp!632593 () Bool)

(declare-fun e!1329600 () Bool)

(declare-fun tp!632586 () Bool)

(declare-fun b!2094418 () Bool)

(assert (=> b!2094418 (= e!1329600 (and tp!632593 (inv!30535 (_2!12794 (_1!12795 (h!28433 mapValue!10508)))) e!1329603 tp_is_empty!9347 setRes!13392 tp!632586))))

(declare-fun condSetEmpty!13392 () Bool)

(assert (=> b!2094418 (= condSetEmpty!13392 (= (_2!12795 (h!28433 mapValue!10508)) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun mapNonEmpty!10508 () Bool)

(declare-fun tp!632589 () Bool)

(assert (=> mapNonEmpty!10508 (= mapRes!10508 (and tp!632589 e!1329600))))

(declare-fun mapKey!10508 () (_ BitVec 32))

(declare-fun mapRest!10508 () (Array (_ BitVec 32) List!23116))

(assert (=> mapNonEmpty!10508 (= mapRest!10504 (store mapRest!10508 mapKey!10508 mapValue!10508))))

(declare-fun setIsEmpty!13392 () Bool)

(assert (=> setIsEmpty!13392 setRes!13392))

(declare-fun b!2094419 () Bool)

(declare-fun tp!632594 () Bool)

(assert (=> b!2094419 (= e!1329599 tp!632594)))

(assert (= (and mapNonEmpty!10504 condMapEmpty!10508) mapIsEmpty!10508))

(assert (= (and mapNonEmpty!10504 (not condMapEmpty!10508)) mapNonEmpty!10508))

(assert (= b!2094418 b!2094414))

(assert (= (and b!2094418 condSetEmpty!13392) setIsEmpty!13392))

(assert (= (and b!2094418 (not condSetEmpty!13392)) setNonEmpty!13391))

(assert (= setNonEmpty!13391 b!2094419))

(assert (= (and mapNonEmpty!10508 ((_ is Cons!23032) mapValue!10508)) b!2094418))

(assert (= b!2094417 b!2094415))

(assert (= (and b!2094417 condSetEmpty!13391) setIsEmpty!13391))

(assert (= (and b!2094417 (not condSetEmpty!13391)) setNonEmpty!13392))

(assert (= setNonEmpty!13392 b!2094416))

(assert (= (and mapNonEmpty!10504 ((_ is Cons!23032) mapDefault!10508)) b!2094417))

(declare-fun m!2550323 () Bool)

(assert (=> setNonEmpty!13391 m!2550323))

(declare-fun m!2550325 () Bool)

(assert (=> b!2094417 m!2550325))

(declare-fun m!2550327 () Bool)

(assert (=> setNonEmpty!13392 m!2550327))

(declare-fun m!2550329 () Bool)

(assert (=> b!2094418 m!2550329))

(declare-fun m!2550331 () Bool)

(assert (=> mapNonEmpty!10508 m!2550331))

(declare-fun condSetEmpty!13393 () Bool)

(assert (=> setNonEmpty!13361 (= condSetEmpty!13393 (= setRest!13361 ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setRes!13393 () Bool)

(assert (=> setNonEmpty!13361 (= tp!632318 setRes!13393)))

(declare-fun setIsEmpty!13393 () Bool)

(assert (=> setIsEmpty!13393 setRes!13393))

(declare-fun setElem!13393 () Context!2206)

(declare-fun e!1329605 () Bool)

(declare-fun tp!632596 () Bool)

(declare-fun setNonEmpty!13393 () Bool)

(assert (=> setNonEmpty!13393 (= setRes!13393 (and tp!632596 (inv!30535 setElem!13393) e!1329605))))

(declare-fun setRest!13393 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13393 (= setRest!13361 ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13393 true) setRest!13393))))

(declare-fun b!2094420 () Bool)

(declare-fun tp!632597 () Bool)

(assert (=> b!2094420 (= e!1329605 tp!632597)))

(assert (= (and setNonEmpty!13361 condSetEmpty!13393) setIsEmpty!13393))

(assert (= (and setNonEmpty!13361 (not condSetEmpty!13393)) setNonEmpty!13393))

(assert (= setNonEmpty!13393 b!2094420))

(declare-fun m!2550333 () Bool)

(assert (=> setNonEmpty!13393 m!2550333))

(declare-fun condSetEmpty!13394 () Bool)

(assert (=> setNonEmpty!13369 (= condSetEmpty!13394 (= setRest!13369 ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setRes!13394 () Bool)

(assert (=> setNonEmpty!13369 (= tp!632362 setRes!13394)))

(declare-fun setIsEmpty!13394 () Bool)

(assert (=> setIsEmpty!13394 setRes!13394))

(declare-fun e!1329606 () Bool)

(declare-fun tp!632598 () Bool)

(declare-fun setElem!13394 () Context!2206)

(declare-fun setNonEmpty!13394 () Bool)

(assert (=> setNonEmpty!13394 (= setRes!13394 (and tp!632598 (inv!30535 setElem!13394) e!1329606))))

(declare-fun setRest!13394 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13394 (= setRest!13369 ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13394 true) setRest!13394))))

(declare-fun b!2094421 () Bool)

(declare-fun tp!632599 () Bool)

(assert (=> b!2094421 (= e!1329606 tp!632599)))

(assert (= (and setNonEmpty!13369 condSetEmpty!13394) setIsEmpty!13394))

(assert (= (and setNonEmpty!13369 (not condSetEmpty!13394)) setNonEmpty!13394))

(assert (= setNonEmpty!13394 b!2094421))

(declare-fun m!2550335 () Bool)

(assert (=> setNonEmpty!13394 m!2550335))

(declare-fun condSetEmpty!13395 () Bool)

(assert (=> setNonEmpty!13371 (= condSetEmpty!13395 (= setRest!13371 ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setRes!13395 () Bool)

(assert (=> setNonEmpty!13371 (= tp!632390 setRes!13395)))

(declare-fun setIsEmpty!13395 () Bool)

(assert (=> setIsEmpty!13395 setRes!13395))

(declare-fun tp!632600 () Bool)

(declare-fun setNonEmpty!13395 () Bool)

(declare-fun e!1329607 () Bool)

(declare-fun setElem!13395 () Context!2206)

(assert (=> setNonEmpty!13395 (= setRes!13395 (and tp!632600 (inv!30535 setElem!13395) e!1329607))))

(declare-fun setRest!13395 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13395 (= setRest!13371 ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13395 true) setRest!13395))))

(declare-fun b!2094422 () Bool)

(declare-fun tp!632601 () Bool)

(assert (=> b!2094422 (= e!1329607 tp!632601)))

(assert (= (and setNonEmpty!13371 condSetEmpty!13395) setIsEmpty!13395))

(assert (= (and setNonEmpty!13371 (not condSetEmpty!13395)) setNonEmpty!13395))

(assert (= setNonEmpty!13395 b!2094422))

(declare-fun m!2550337 () Bool)

(assert (=> setNonEmpty!13395 m!2550337))

(declare-fun b!2094423 () Bool)

(declare-fun e!1329608 () Bool)

(declare-fun tp!632602 () Bool)

(declare-fun tp!632603 () Bool)

(assert (=> b!2094423 (= e!1329608 (and tp!632602 tp!632603))))

(assert (=> b!2093826 (= tp!632363 e!1329608)))

(assert (= (and b!2093826 ((_ is Cons!23030) (exprs!1603 setElem!13369))) b!2094423))

(declare-fun b!2094424 () Bool)

(declare-fun e!1329609 () Bool)

(assert (=> b!2094424 (= e!1329609 tp_is_empty!9347)))

(declare-fun b!2094427 () Bool)

(declare-fun tp!632607 () Bool)

(declare-fun tp!632604 () Bool)

(assert (=> b!2094427 (= e!1329609 (and tp!632607 tp!632604))))

(declare-fun b!2094426 () Bool)

(declare-fun tp!632606 () Bool)

(assert (=> b!2094426 (= e!1329609 tp!632606)))

(assert (=> b!2093771 (= tp!632291 e!1329609)))

(declare-fun b!2094425 () Bool)

(declare-fun tp!632608 () Bool)

(declare-fun tp!632605 () Bool)

(assert (=> b!2094425 (= e!1329609 (and tp!632608 tp!632605))))

(assert (= (and b!2093771 ((_ is ElementMatch!5533) (_1!12794 (_1!12795 (h!28433 mapDefault!10504))))) b!2094424))

(assert (= (and b!2093771 ((_ is Concat!9774) (_1!12794 (_1!12795 (h!28433 mapDefault!10504))))) b!2094425))

(assert (= (and b!2093771 ((_ is Star!5533) (_1!12794 (_1!12795 (h!28433 mapDefault!10504))))) b!2094426))

(assert (= (and b!2093771 ((_ is Union!5533) (_1!12794 (_1!12795 (h!28433 mapDefault!10504))))) b!2094427))

(declare-fun tp!632613 () Bool)

(declare-fun setElem!13396 () Context!2206)

(declare-fun setRes!13396 () Bool)

(declare-fun setNonEmpty!13396 () Bool)

(declare-fun e!1329612 () Bool)

(assert (=> setNonEmpty!13396 (= setRes!13396 (and tp!632613 (inv!30535 setElem!13396) e!1329612))))

(declare-fun setRest!13396 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13396 (= (_2!12795 (h!28433 (t!195057 mapDefault!10504))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13396 true) setRest!13396))))

(declare-fun b!2094428 () Bool)

(declare-fun e!1329610 () Bool)

(declare-fun tp!632610 () Bool)

(assert (=> b!2094428 (= e!1329610 tp!632610)))

(declare-fun b!2094429 () Bool)

(declare-fun tp!632611 () Bool)

(assert (=> b!2094429 (= e!1329612 tp!632611)))

(declare-fun b!2094430 () Bool)

(declare-fun tp!632609 () Bool)

(declare-fun e!1329611 () Bool)

(declare-fun tp!632612 () Bool)

(assert (=> b!2094430 (= e!1329611 (and tp!632609 (inv!30535 (_2!12794 (_1!12795 (h!28433 (t!195057 mapDefault!10504))))) e!1329610 tp_is_empty!9347 setRes!13396 tp!632612))))

(declare-fun condSetEmpty!13396 () Bool)

(assert (=> b!2094430 (= condSetEmpty!13396 (= (_2!12795 (h!28433 (t!195057 mapDefault!10504))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setIsEmpty!13396 () Bool)

(assert (=> setIsEmpty!13396 setRes!13396))

(assert (=> b!2093771 (= tp!632288 e!1329611)))

(assert (= b!2094430 b!2094428))

(assert (= (and b!2094430 condSetEmpty!13396) setIsEmpty!13396))

(assert (= (and b!2094430 (not condSetEmpty!13396)) setNonEmpty!13396))

(assert (= setNonEmpty!13396 b!2094429))

(assert (= (and b!2093771 ((_ is Cons!23032) (t!195057 mapDefault!10504))) b!2094430))

(declare-fun m!2550339 () Bool)

(assert (=> setNonEmpty!13396 m!2550339))

(declare-fun m!2550341 () Bool)

(assert (=> b!2094430 m!2550341))

(declare-fun condSetEmpty!13397 () Bool)

(assert (=> setNonEmpty!13350 (= condSetEmpty!13397 (= setRest!13350 ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setRes!13397 () Bool)

(assert (=> setNonEmpty!13350 (= tp!632234 setRes!13397)))

(declare-fun setIsEmpty!13397 () Bool)

(assert (=> setIsEmpty!13397 setRes!13397))

(declare-fun setElem!13397 () Context!2206)

(declare-fun setNonEmpty!13397 () Bool)

(declare-fun e!1329613 () Bool)

(declare-fun tp!632614 () Bool)

(assert (=> setNonEmpty!13397 (= setRes!13397 (and tp!632614 (inv!30535 setElem!13397) e!1329613))))

(declare-fun setRest!13397 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13397 (= setRest!13350 ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13397 true) setRest!13397))))

(declare-fun b!2094431 () Bool)

(declare-fun tp!632615 () Bool)

(assert (=> b!2094431 (= e!1329613 tp!632615)))

(assert (= (and setNonEmpty!13350 condSetEmpty!13397) setIsEmpty!13397))

(assert (= (and setNonEmpty!13350 (not condSetEmpty!13397)) setNonEmpty!13397))

(assert (= setNonEmpty!13397 b!2094431))

(declare-fun m!2550343 () Bool)

(assert (=> setNonEmpty!13397 m!2550343))

(declare-fun b!2094432 () Bool)

(declare-fun e!1329614 () Bool)

(declare-fun tp!632616 () Bool)

(declare-fun tp!632617 () Bool)

(assert (=> b!2094432 (= e!1329614 (and tp!632616 tp!632617))))

(assert (=> b!2093724 (= tp!632235 e!1329614)))

(assert (= (and b!2093724 ((_ is Cons!23030) (exprs!1603 setElem!13350))) b!2094432))

(declare-fun b!2094433 () Bool)

(declare-fun e!1329615 () Bool)

(declare-fun tp!632618 () Bool)

(declare-fun tp!632619 () Bool)

(assert (=> b!2094433 (= e!1329615 (and tp!632618 tp!632619))))

(assert (=> b!2093786 (= tp!632316 e!1329615)))

(assert (= (and b!2093786 ((_ is Cons!23030) (exprs!1603 setElem!13361))) b!2094433))

(declare-fun b!2094434 () Bool)

(declare-fun e!1329616 () Bool)

(declare-fun tp!632620 () Bool)

(declare-fun tp!632621 () Bool)

(assert (=> b!2094434 (= e!1329616 (and tp!632620 tp!632621))))

(assert (=> b!2093728 (= tp!632241 e!1329616)))

(assert (= (and b!2093728 ((_ is Cons!23030) (exprs!1603 (_1!12792 (_1!12793 (h!28432 (minValue!2437 (v!27632 (underlying!4553 (v!27633 (underlying!4554 (cache!2474 cacheUp!562)))))))))))) b!2094434))

(declare-fun b!2094435 () Bool)

(declare-fun e!1329617 () Bool)

(declare-fun tp!632622 () Bool)

(declare-fun tp!632623 () Bool)

(assert (=> b!2094435 (= e!1329617 (and tp!632622 tp!632623))))

(assert (=> b!2093783 (= tp!632311 e!1329617)))

(assert (= (and b!2093783 ((_ is Cons!23030) (exprs!1603 setElem!13360))) b!2094435))

(declare-fun mapIsEmpty!10509 () Bool)

(declare-fun mapRes!10509 () Bool)

(assert (=> mapIsEmpty!10509 mapRes!10509))

(declare-fun setIsEmpty!13398 () Bool)

(declare-fun setRes!13398 () Bool)

(assert (=> setIsEmpty!13398 setRes!13398))

(declare-fun b!2094436 () Bool)

(declare-fun e!1329619 () Bool)

(declare-fun tp!632627 () Bool)

(assert (=> b!2094436 (= e!1329619 tp!632627)))

(declare-fun tp!632630 () Bool)

(declare-fun mapDefault!10509 () List!23115)

(declare-fun e!1329618 () Bool)

(declare-fun b!2094437 () Bool)

(assert (=> b!2094437 (= e!1329618 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 mapDefault!10509)))) e!1329619 tp_is_empty!9347 setRes!13398 tp!632630))))

(declare-fun condSetEmpty!13398 () Bool)

(assert (=> b!2094437 (= condSetEmpty!13398 (= (_2!12793 (h!28432 mapDefault!10509)) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun tp!632632 () Bool)

(declare-fun setRes!13399 () Bool)

(declare-fun b!2094438 () Bool)

(declare-fun mapValue!10509 () List!23115)

(declare-fun e!1329621 () Bool)

(declare-fun e!1329620 () Bool)

(assert (=> b!2094438 (= e!1329621 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 mapValue!10509)))) e!1329620 tp_is_empty!9347 setRes!13399 tp!632632))))

(declare-fun condSetEmpty!13399 () Bool)

(assert (=> b!2094438 (= condSetEmpty!13399 (= (_2!12793 (h!28432 mapValue!10509)) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setNonEmpty!13398 () Bool)

(declare-fun tp!632629 () Bool)

(declare-fun e!1329623 () Bool)

(declare-fun setElem!13398 () Context!2206)

(assert (=> setNonEmpty!13398 (= setRes!13398 (and tp!632629 (inv!30535 setElem!13398) e!1329623))))

(declare-fun setRest!13398 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13398 (= (_2!12793 (h!28432 mapDefault!10509)) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13398 true) setRest!13398))))

(declare-fun setIsEmpty!13399 () Bool)

(assert (=> setIsEmpty!13399 setRes!13399))

(declare-fun mapNonEmpty!10509 () Bool)

(declare-fun tp!632631 () Bool)

(assert (=> mapNonEmpty!10509 (= mapRes!10509 (and tp!632631 e!1329621))))

(declare-fun mapKey!10509 () (_ BitVec 32))

(declare-fun mapRest!10509 () (Array (_ BitVec 32) List!23115))

(assert (=> mapNonEmpty!10509 (= mapRest!10507 (store mapRest!10509 mapKey!10509 mapValue!10509))))

(declare-fun b!2094439 () Bool)

(declare-fun tp!632626 () Bool)

(assert (=> b!2094439 (= e!1329620 tp!632626)))

(declare-fun b!2094440 () Bool)

(declare-fun tp!632624 () Bool)

(assert (=> b!2094440 (= e!1329623 tp!632624)))

(declare-fun condMapEmpty!10509 () Bool)

(assert (=> mapNonEmpty!10507 (= condMapEmpty!10509 (= mapRest!10507 ((as const (Array (_ BitVec 32) List!23115)) mapDefault!10509)))))

(assert (=> mapNonEmpty!10507 (= tp!632360 (and e!1329618 mapRes!10509))))

(declare-fun b!2094441 () Bool)

(declare-fun e!1329622 () Bool)

(declare-fun tp!632625 () Bool)

(assert (=> b!2094441 (= e!1329622 tp!632625)))

(declare-fun setElem!13399 () Context!2206)

(declare-fun setNonEmpty!13399 () Bool)

(declare-fun tp!632628 () Bool)

(assert (=> setNonEmpty!13399 (= setRes!13399 (and tp!632628 (inv!30535 setElem!13399) e!1329622))))

(declare-fun setRest!13399 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13399 (= (_2!12793 (h!28432 mapValue!10509)) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13399 true) setRest!13399))))

(assert (= (and mapNonEmpty!10507 condMapEmpty!10509) mapIsEmpty!10509))

(assert (= (and mapNonEmpty!10507 (not condMapEmpty!10509)) mapNonEmpty!10509))

(assert (= b!2094438 b!2094439))

(assert (= (and b!2094438 condSetEmpty!13399) setIsEmpty!13399))

(assert (= (and b!2094438 (not condSetEmpty!13399)) setNonEmpty!13399))

(assert (= setNonEmpty!13399 b!2094441))

(assert (= (and mapNonEmpty!10509 ((_ is Cons!23031) mapValue!10509)) b!2094438))

(assert (= b!2094437 b!2094436))

(assert (= (and b!2094437 condSetEmpty!13398) setIsEmpty!13398))

(assert (= (and b!2094437 (not condSetEmpty!13398)) setNonEmpty!13398))

(assert (= setNonEmpty!13398 b!2094440))

(assert (= (and mapNonEmpty!10507 ((_ is Cons!23031) mapDefault!10509)) b!2094437))

(declare-fun m!2550345 () Bool)

(assert (=> b!2094438 m!2550345))

(declare-fun m!2550347 () Bool)

(assert (=> mapNonEmpty!10509 m!2550347))

(declare-fun m!2550349 () Bool)

(assert (=> b!2094437 m!2550349))

(declare-fun m!2550351 () Bool)

(assert (=> setNonEmpty!13398 m!2550351))

(declare-fun m!2550353 () Bool)

(assert (=> setNonEmpty!13399 m!2550353))

(declare-fun b!2094442 () Bool)

(declare-fun e!1329624 () Bool)

(declare-fun tp!632633 () Bool)

(declare-fun tp!632634 () Bool)

(assert (=> b!2094442 (= e!1329624 (and tp!632633 tp!632634))))

(assert (=> b!2093768 (= tp!632290 e!1329624)))

(assert (= (and b!2093768 ((_ is Cons!23030) (exprs!1603 (_2!12794 (_1!12795 (h!28433 mapValue!10504)))))) b!2094442))

(declare-fun b!2094443 () Bool)

(declare-fun e!1329625 () Bool)

(assert (=> b!2094443 (= e!1329625 tp_is_empty!9347)))

(declare-fun b!2094446 () Bool)

(declare-fun tp!632638 () Bool)

(declare-fun tp!632635 () Bool)

(assert (=> b!2094446 (= e!1329625 (and tp!632638 tp!632635))))

(declare-fun b!2094445 () Bool)

(declare-fun tp!632637 () Bool)

(assert (=> b!2094445 (= e!1329625 tp!632637)))

(assert (=> b!2093840 (= tp!632377 e!1329625)))

(declare-fun b!2094444 () Bool)

(declare-fun tp!632639 () Bool)

(declare-fun tp!632636 () Bool)

(assert (=> b!2094444 (= e!1329625 (and tp!632639 tp!632636))))

(assert (= (and b!2093840 ((_ is ElementMatch!5533) (regex!4105 (h!28437 (t!195061 rules!1563))))) b!2094443))

(assert (= (and b!2093840 ((_ is Concat!9774) (regex!4105 (h!28437 (t!195061 rules!1563))))) b!2094444))

(assert (= (and b!2093840 ((_ is Star!5533) (regex!4105 (h!28437 (t!195061 rules!1563))))) b!2094445))

(assert (= (and b!2093840 ((_ is Union!5533) (regex!4105 (h!28437 (t!195061 rules!1563))))) b!2094446))

(declare-fun b!2094447 () Bool)

(declare-fun e!1329626 () Bool)

(declare-fun tp!632640 () Bool)

(assert (=> b!2094447 (= e!1329626 (and tp_is_empty!9347 tp!632640))))

(assert (=> b!2093830 (= tp!632367 e!1329626)))

(assert (= (and b!2093830 ((_ is Cons!23033) (innerList!7734 (xs!10608 (c!337359 totalInput!418))))) b!2094447))

(declare-fun tp!632641 () Bool)

(declare-fun tp!632643 () Bool)

(declare-fun e!1329627 () Bool)

(declare-fun b!2094448 () Bool)

(assert (=> b!2094448 (= e!1329627 (and (inv!30525 (left!18059 (left!18059 (c!337359 totalInput!418)))) tp!632641 (inv!30525 (right!18389 (left!18059 (c!337359 totalInput!418)))) tp!632643))))

(declare-fun b!2094450 () Bool)

(declare-fun e!1329628 () Bool)

(declare-fun tp!632642 () Bool)

(assert (=> b!2094450 (= e!1329628 tp!632642)))

(declare-fun b!2094449 () Bool)

(assert (=> b!2094449 (= e!1329627 (and (inv!30537 (xs!10608 (left!18059 (c!337359 totalInput!418)))) e!1329628))))

(assert (=> b!2093828 (= tp!632366 (and (inv!30525 (left!18059 (c!337359 totalInput!418))) e!1329627))))

(assert (= (and b!2093828 ((_ is Node!7674) (left!18059 (c!337359 totalInput!418)))) b!2094448))

(assert (= b!2094449 b!2094450))

(assert (= (and b!2093828 ((_ is Leaf!11208) (left!18059 (c!337359 totalInput!418)))) b!2094449))

(declare-fun m!2550355 () Bool)

(assert (=> b!2094448 m!2550355))

(declare-fun m!2550357 () Bool)

(assert (=> b!2094448 m!2550357))

(declare-fun m!2550359 () Bool)

(assert (=> b!2094449 m!2550359))

(assert (=> b!2093828 m!2549573))

(declare-fun e!1329629 () Bool)

(declare-fun b!2094451 () Bool)

(declare-fun tp!632644 () Bool)

(declare-fun tp!632646 () Bool)

(assert (=> b!2094451 (= e!1329629 (and (inv!30525 (left!18059 (right!18389 (c!337359 totalInput!418)))) tp!632644 (inv!30525 (right!18389 (right!18389 (c!337359 totalInput!418)))) tp!632646))))

(declare-fun b!2094453 () Bool)

(declare-fun e!1329630 () Bool)

(declare-fun tp!632645 () Bool)

(assert (=> b!2094453 (= e!1329630 tp!632645)))

(declare-fun b!2094452 () Bool)

(assert (=> b!2094452 (= e!1329629 (and (inv!30537 (xs!10608 (right!18389 (c!337359 totalInput!418)))) e!1329630))))

(assert (=> b!2093828 (= tp!632368 (and (inv!30525 (right!18389 (c!337359 totalInput!418))) e!1329629))))

(assert (= (and b!2093828 ((_ is Node!7674) (right!18389 (c!337359 totalInput!418)))) b!2094451))

(assert (= b!2094452 b!2094453))

(assert (= (and b!2093828 ((_ is Leaf!11208) (right!18389 (c!337359 totalInput!418)))) b!2094452))

(declare-fun m!2550361 () Bool)

(assert (=> b!2094451 m!2550361))

(declare-fun m!2550363 () Bool)

(assert (=> b!2094451 m!2550363))

(declare-fun m!2550365 () Bool)

(assert (=> b!2094452 m!2550365))

(assert (=> b!2093828 m!2549575))

(declare-fun condSetEmpty!13400 () Bool)

(assert (=> setNonEmpty!13367 (= condSetEmpty!13400 (= setRest!13367 ((as const (Array Context!2206 Bool)) false)))))

(declare-fun setRes!13400 () Bool)

(assert (=> setNonEmpty!13367 (= tp!632358 setRes!13400)))

(declare-fun setIsEmpty!13400 () Bool)

(assert (=> setIsEmpty!13400 setRes!13400))

(declare-fun setNonEmpty!13400 () Bool)

(declare-fun setElem!13400 () Context!2206)

(declare-fun tp!632647 () Bool)

(declare-fun e!1329631 () Bool)

(assert (=> setNonEmpty!13400 (= setRes!13400 (and tp!632647 (inv!30535 setElem!13400) e!1329631))))

(declare-fun setRest!13400 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13400 (= setRest!13367 ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13400 true) setRest!13400))))

(declare-fun b!2094454 () Bool)

(declare-fun tp!632648 () Bool)

(assert (=> b!2094454 (= e!1329631 tp!632648)))

(assert (= (and setNonEmpty!13367 condSetEmpty!13400) setIsEmpty!13400))

(assert (= (and setNonEmpty!13367 (not condSetEmpty!13400)) setNonEmpty!13400))

(assert (= setNonEmpty!13400 b!2094454))

(declare-fun m!2550367 () Bool)

(assert (=> setNonEmpty!13400 m!2550367))

(declare-fun e!1329633 () Bool)

(assert (=> b!2093820 (= tp!632359 e!1329633)))

(declare-fun setIsEmpty!13401 () Bool)

(declare-fun setRes!13401 () Bool)

(assert (=> setIsEmpty!13401 setRes!13401))

(declare-fun tp!632651 () Bool)

(declare-fun b!2094455 () Bool)

(declare-fun e!1329634 () Bool)

(assert (=> b!2094455 (= e!1329633 (and (inv!30535 (_1!12792 (_1!12793 (h!28432 (t!195056 mapDefault!10507))))) e!1329634 tp_is_empty!9347 setRes!13401 tp!632651))))

(declare-fun condSetEmpty!13401 () Bool)

(assert (=> b!2094455 (= condSetEmpty!13401 (= (_2!12793 (h!28432 (t!195056 mapDefault!10507))) ((as const (Array Context!2206 Bool)) false)))))

(declare-fun b!2094456 () Bool)

(declare-fun e!1329632 () Bool)

(declare-fun tp!632650 () Bool)

(assert (=> b!2094456 (= e!1329632 tp!632650)))

(declare-fun b!2094457 () Bool)

(declare-fun tp!632652 () Bool)

(assert (=> b!2094457 (= e!1329634 tp!632652)))

(declare-fun setNonEmpty!13401 () Bool)

(declare-fun setElem!13401 () Context!2206)

(declare-fun tp!632649 () Bool)

(assert (=> setNonEmpty!13401 (= setRes!13401 (and tp!632649 (inv!30535 setElem!13401) e!1329632))))

(declare-fun setRest!13401 () (InoxSet Context!2206))

(assert (=> setNonEmpty!13401 (= (_2!12793 (h!28432 (t!195056 mapDefault!10507))) ((_ map or) (store ((as const (Array Context!2206 Bool)) false) setElem!13401 true) setRest!13401))))

(assert (= b!2094455 b!2094457))

(assert (= (and b!2094455 condSetEmpty!13401) setIsEmpty!13401))

(assert (= (and b!2094455 (not condSetEmpty!13401)) setNonEmpty!13401))

(assert (= setNonEmpty!13401 b!2094456))

(assert (= (and b!2093820 ((_ is Cons!23031) (t!195056 mapDefault!10507))) b!2094455))

(declare-fun m!2550369 () Bool)

(assert (=> b!2094455 m!2550369))

(declare-fun m!2550371 () Bool)

(assert (=> setNonEmpty!13401 m!2550371))

(check-sat (not b!2094422) (not b!2094036) (not b!2094280) (not d!638572) (not d!638620) (not b!2094153) (not setNonEmpty!13387) (not b!2094427) (not b!2094405) (not d!638642) (not d!638502) (not d!638664) (not d!638592) (not b!2094434) (not b!2094258) (not b!2094402) (not b!2094324) (not b!2094143) (not d!638538) (not b!2093973) (not b!2094139) (not b!2094344) (not b!2094454) (not b!2093945) (not b!2094441) (not b!2094345) (not b!2094239) (not d!638534) (not b!2093921) (not b!2094408) (not d!638640) (not b!2093940) (not b_next!60577) (not b!2094436) (not d!638506) (not b!2094265) (not b!2094235) (not d!638650) (not d!638532) (not d!638616) (not b_next!60567) (not b!2094314) (not setNonEmpty!13393) (not d!638668) (not b!2094447) (not b!2094388) (not b!2094452) (not b!2094240) b_and!168851 (not b!2094435) (not b!2094350) (not setNonEmpty!13399) (not b!2094208) (not b!2094414) (not d!638550) (not b!2094404) (not d!638608) (not b!2094297) (not d!638488) (not b!2094163) (not b!2094322) (not b!2094053) (not setNonEmpty!13375) (not b!2094176) (not b!2094356) (not b!2094425) (not d!638518) (not b_next!60581) (not d!638504) (not b!2094393) (not b!2094320) (not b!2093984) (not b!2094107) (not b!2093991) (not b!2094315) (not d!638460) (not b!2094351) (not b!2094362) (not d!638452) (not b!2094130) (not b!2093942) (not setNonEmpty!13395) (not b!2094450) (not d!638652) (not b!2094377) (not setNonEmpty!13388) (not b!2094075) (not setNonEmpty!13396) (not b!2094292) (not d!638508) (not b!2094365) (not b!2093905) (not b!2094119) (not d!638618) (not bm!127869) (not b!2094407) (not b!2094457) (not b!2094339) (not bm!127858) (not b!2093907) (not setNonEmpty!13400) (not b!2094456) (not b!2094285) (not b!2094091) (not b!2094133) (not d!638574) (not b!2094291) (not d!638644) (not b!2094051) (not d!638600) (not b!2094354) (not b!2094227) (not b!2094039) (not b!2093993) (not d!638658) (not b!2094316) (not setNonEmpty!13377) b_and!168847 (not b!2094184) (not d!638556) (not b!2094080) (not b!2094097) (not b!2094323) (not b!2094392) (not b!2094281) (not b!2094385) (not b!2094162) (not b!2094101) (not d!638594) (not b!2094061) (not d!638544) (not b!2094085) (not setNonEmpty!13384) (not b!2094451) (not b!2094341) (not b!2094015) (not b!2094182) (not b!2094102) (not b!2094264) (not d!638542) (not setNonEmpty!13392) (not setNonEmpty!13381) (not b!2094431) (not b!2094367) (not d!638444) (not setNonEmpty!13401) (not b!2094098) (not d!638646) (not b!2094124) (not d!638570) (not b!2094419) (not b!2094334) (not b!2094248) (not b!2094146) (not b!2094286) (not b!2094233) (not d!638478) b_and!168855 (not b!2094160) (not b!2093922) (not b!2094439) (not setNonEmpty!13389) (not b!2094032) b_and!168853 (not d!638526) (not b!2093944) (not d!638446) (not b_next!60575) (not b!2094096) (not bm!127875) (not b!2094145) (not b!2094348) (not b!2093998) (not b!2094033) (not b!2094219) (not b!2093992) (not d!638564) (not b!2094238) (not b!2094426) (not b!2093948) b_and!168865 (not setNonEmpty!13382) (not setNonEmpty!13394) (not b!2094411) (not b!2094104) (not d!638516) (not b!2094337) (not b!2094378) (not bm!127864) (not b!2094359) (not b!2094309) (not b!2094268) (not d!638482) (not d!638610) (not bm!127874) (not b!2094225) (not d!638588) (not b!2094269) (not b!2094159) (not b!2094328) (not b!2094185) (not b!2093982) (not b!2094346) (not d!638512) (not b!2094259) (not b!2094373) (not d!638562) (not d!638596) (not b!2093900) (not b!2094401) (not b_next!60583) (not b!2094330) (not b!2093950) (not b!2094319) (not b_next!60569) (not b!2094336) (not b!2094140) (not setNonEmpty!13376) (not b!2094410) (not b!2093909) (not b!2094417) (not b!2093964) (not b!2094123) (not b!2094445) (not d!638656) (not b!2094001) (not b!2094340) (not d!638474) (not b!2094164) (not b_next!60573) (not b!2094062) (not b!2094256) (not b!2094128) (not setNonEmpty!13383) (not b!2094138) (not d!638546) (not bm!127867) (not b!2094397) (not b!2094183) (not b!2094298) (not d!638450) (not b!2094209) (not d!638524) (not b!2093802) (not b!2094333) (not b!2094413) (not bm!127866) (not b!2094301) (not b!2094253) (not d!638654) (not b!2094355) (not b!2094352) (not b!2094335) b_and!168861 (not b!2094421) (not d!638554) (not b!2094311) (not b!2094234) (not b!2094432) (not b!2094142) (not b!2094376) b_and!168857 (not b!2094014) (not d!638476) (not b!2094141) (not b!2094442) b_and!168869 (not b!2094230) (not b!2094169) (not b!2094232) b_and!168849 (not b!2094437) (not b!2094395) (not b!2094254) (not bm!127870) (not b!2094357) (not setNonEmpty!13378) (not b!2094423) (not b!2094389) (not b!2094449) (not b!2093963) (not b!2094252) (not b!2094326) (not b!2094250) (not b!2094387) (not b!2094446) (not b!2094415) (not d!638520) (not d!638480) (not bm!127862) (not b!2094403) (not d!638580) (not d!638598) (not b_next!60561) (not mapNonEmpty!10508) (not b!2094038) (not d!638582) (not b!2093995) (not b!2093903) (not b!2094331) (not b!2094010) (not b!2094236) (not b!2093941) (not b!2094231) (not b!2094313) (not b!2094255) (not b!2094125) (not d!638492) (not b!2094372) (not b!2094384) (not d!638536) (not b!2094448) (not b!2094418) (not d!638466) (not b!2094174) (not b!2094366) (not d!638548) (not b!2094453) (not b!2093974) (not b!2094332) (not b_next!60565) (not b!2094396) (not b!2094077) (not b!2094329) (not d!638660) (not b!2094165) (not b!2094186) (not b!2094325) (not b!2094416) tp_is_empty!9347 (not b!2094318) (not b!2094157) (not b!2094127) (not b!2094321) (not b!2094302) (not b!2094307) (not b!2094158) (not b!2094282) (not b!2094305) (not b!2094076) (not b!2094409) (not d!638500) (not b!2094300) (not d!638602) (not b!2094078) (not mapNonEmpty!10509) (not b!2094118) (not d!638628) (not b!2093943) (not d!638510) (not d!638528) (not b!2094370) (not b!2094364) (not b!2094161) (not setNonEmpty!13398) (not b!2094284) (not b!2094374) (not b!2093989) (not b!2094207) (not b!2094360) (not b!2094034) (not b!2094306) (not b!2094386) (not bm!127873) (not b!2094394) (not b_next!60571) (not b!2094108) (not setNonEmpty!13372) (not b!2094154) (not b!2094338) (not b!2094137) (not b!2094221) (not b!2094002) (not b!2093965) (not b!2094212) (not b!2093972) (not b!2094440) (not b!2094433) (not b!2094035) (not b!2094223) (not b!2094093) (not d!638612) (not setNonEmpty!13385) (not b!2094170) (not b!2094079) (not b!2094398) (not b!2094428) (not b!2093939) (not setNonEmpty!13380) (not b!2093968) (not b!2094406) (not b!2094181) (not b!2094304) (not d!638484) (not d!638490) (not b!2094430) (not d!638566) (not b!2094099) (not setNonEmpty!13391) (not b!2094375) b_and!168867 (not b!2094399) (not b!2094237) (not b!2093828) (not setNonEmpty!13379) (not b!2093980) (not d!638578) (not b!2094420) (not b!2094132) (not b!2094371) (not b!2094353) (not setNonEmpty!13386) (not b_next!60563) (not setNonEmpty!13397) (not b!2094171) (not b!2093796) (not b!2094229) b_and!168859 (not b!2093997) (not b!2093990) (not d!638448) (not b!2094173) (not b!2094444) (not b!2094310) (not b!2094400) (not b!2094000) (not b!2094213) (not b_next!60579) (not b!2094347) (not b!2093999) (not b!2093994) (not b!2093901) (not b!2093969) (not b!2094390) (not b!2093737) (not d!638626) (not b!2094455) (not b!2094429) (not d!638530) (not setNonEmpty!13390) (not b!2093947) (not b!2094358) (not b!2094438) (not b!2094368) (not b!2093987) (not b!2094363) (not b!2094412) b_and!168863 (not b!2094317) (not b!2094205) (not b!2094050) (not b!2094343))
(check-sat (not b_next!60581) b_and!168847 b_and!168855 b_and!168865 (not b_next!60583) (not b_next!60569) (not b_next!60573) b_and!168861 (not b_next!60561) (not b_next!60565) (not b_next!60571) b_and!168867 (not b_next!60563) b_and!168863 (not b_next!60577) b_and!168851 (not b_next!60567) b_and!168853 (not b_next!60575) b_and!168869 b_and!168857 b_and!168849 b_and!168859 (not b_next!60579))
