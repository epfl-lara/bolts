; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139402 () Bool)

(assert start!139402)

(declare-fun b!1483122 () Bool)

(declare-fun b_free!38395 () Bool)

(declare-fun b_next!39099 () Bool)

(assert (=> b!1483122 (= b_free!38395 (not b_next!39099))))

(declare-fun tp!420944 () Bool)

(declare-fun b_and!103113 () Bool)

(assert (=> b!1483122 (= tp!420944 b_and!103113)))

(declare-fun b_free!38397 () Bool)

(declare-fun b_next!39101 () Bool)

(assert (=> b!1483122 (= b_free!38397 (not b_next!39101))))

(declare-fun tp!420954 () Bool)

(declare-fun b_and!103115 () Bool)

(assert (=> b!1483122 (= tp!420954 b_and!103115)))

(declare-fun b!1483123 () Bool)

(declare-fun b_free!38399 () Bool)

(declare-fun b_next!39103 () Bool)

(assert (=> b!1483123 (= b_free!38399 (not b_next!39103))))

(declare-fun tp!420940 () Bool)

(declare-fun b_and!103117 () Bool)

(assert (=> b!1483123 (= tp!420940 b_and!103117)))

(declare-fun b!1483097 () Bool)

(declare-fun b_free!38401 () Bool)

(declare-fun b_next!39105 () Bool)

(assert (=> b!1483097 (= b_free!38401 (not b_next!39105))))

(declare-fun tp!420962 () Bool)

(declare-fun b_and!103119 () Bool)

(assert (=> b!1483097 (= tp!420962 b_and!103119)))

(declare-fun b!1483107 () Bool)

(declare-fun b_free!38403 () Bool)

(declare-fun b_next!39107 () Bool)

(assert (=> b!1483107 (= b_free!38403 (not b_next!39107))))

(declare-fun tp!420964 () Bool)

(declare-fun b_and!103121 () Bool)

(assert (=> b!1483107 (= tp!420964 b_and!103121)))

(declare-fun b!1483104 () Bool)

(declare-fun b_free!38405 () Bool)

(declare-fun b_next!39109 () Bool)

(assert (=> b!1483104 (= b_free!38405 (not b_next!39109))))

(declare-fun tp!420950 () Bool)

(declare-fun b_and!103123 () Bool)

(assert (=> b!1483104 (= tp!420950 b_and!103123)))

(declare-fun b!1483114 () Bool)

(declare-fun b_free!38407 () Bool)

(declare-fun b_next!39111 () Bool)

(assert (=> b!1483114 (= b_free!38407 (not b_next!39111))))

(declare-fun tp!420946 () Bool)

(declare-fun b_and!103125 () Bool)

(assert (=> b!1483114 (= tp!420946 b_and!103125)))

(declare-fun b!1483127 () Bool)

(declare-fun b_free!38409 () Bool)

(declare-fun b_next!39113 () Bool)

(assert (=> b!1483127 (= b_free!38409 (not b_next!39113))))

(declare-fun tp!420947 () Bool)

(declare-fun b_and!103127 () Bool)

(assert (=> b!1483127 (= tp!420947 b_and!103127)))

(declare-fun b!1483089 () Bool)

(declare-fun e!948364 () Bool)

(assert (=> b!1483089 (= e!948364 (not true))))

(declare-fun lt!515290 () Bool)

(declare-datatypes ((C!8408 0))(
  ( (C!8409 (val!4776 Int)) )
))
(declare-datatypes ((List!15780 0))(
  ( (Nil!15712) (Cons!15712 (h!21113 C!8408) (t!137697 List!15780)) )
))
(declare-fun lt!515283 () List!15780)

(declare-fun lt!515286 () List!15780)

(declare-fun isSuffix!273 (List!15780 List!15780) Bool)

(assert (=> b!1483089 (= lt!515290 (isSuffix!273 lt!515283 lt!515286))))

(declare-fun lt!515281 () List!15780)

(assert (=> b!1483089 (isSuffix!273 lt!515283 lt!515281)))

(declare-datatypes ((Unit!25603 0))(
  ( (Unit!25604) )
))
(declare-fun lt!515287 () Unit!25603)

(declare-fun lt!515285 () List!15780)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!251 (List!15780 List!15780) Unit!25603)

(assert (=> b!1483089 (= lt!515287 (lemmaConcatTwoListThenFSndIsSuffix!251 lt!515285 lt!515283))))

(declare-fun b!1483090 () Bool)

(declare-fun e!948374 () Bool)

(declare-fun e!948376 () Bool)

(assert (=> b!1483090 (= e!948374 e!948376)))

(declare-fun res!670005 () Bool)

(assert (=> b!1483090 (=> (not res!670005) (not e!948376))))

(assert (=> b!1483090 (= res!670005 (= lt!515286 lt!515281))))

(declare-fun ++!4238 (List!15780 List!15780) List!15780)

(assert (=> b!1483090 (= lt!515281 (++!4238 lt!515285 lt!515283))))

(declare-datatypes ((IArray!10713 0))(
  ( (IArray!10714 (innerList!5414 List!15780)) )
))
(declare-datatypes ((Conc!5354 0))(
  ( (Node!5354 (left!13246 Conc!5354) (right!13576 Conc!5354) (csize!10938 Int) (cheight!5565 Int)) (Leaf!7957 (xs!8109 IArray!10713) (csize!10939 Int)) (Empty!5354) )
))
(declare-datatypes ((BalanceConc!10650 0))(
  ( (BalanceConc!10651 (c!243097 Conc!5354)) )
))
(declare-fun totalInput!458 () BalanceConc!10650)

(declare-fun list!6247 (BalanceConc!10650) List!15780)

(assert (=> b!1483090 (= lt!515286 (list!6247 totalInput!458))))

(declare-fun input!1102 () BalanceConc!10650)

(assert (=> b!1483090 (= lt!515283 (list!6247 input!1102))))

(declare-fun treated!70 () BalanceConc!10650)

(assert (=> b!1483090 (= lt!515285 (list!6247 treated!70))))

(declare-fun b!1483091 () Bool)

(declare-fun e!948366 () Bool)

(declare-fun e!948377 () Bool)

(assert (=> b!1483091 (= e!948366 e!948377)))

(declare-fun b!1483092 () Bool)

(declare-fun res!670000 () Bool)

(assert (=> b!1483092 (=> (not res!670000) (not e!948374))))

(declare-datatypes ((List!15781 0))(
  ( (Nil!15713) (Cons!15713 (h!21114 (_ BitVec 16)) (t!137698 List!15781)) )
))
(declare-datatypes ((TokenValue!2891 0))(
  ( (FloatLiteralValue!5782 (text!20682 List!15781)) (TokenValueExt!2890 (__x!9581 Int)) (Broken!14455 (value!89461 List!15781)) (Object!2958) (End!2891) (Def!2891) (Underscore!2891) (Match!2891) (Else!2891) (Error!2891) (Case!2891) (If!2891) (Extends!2891) (Abstract!2891) (Class!2891) (Val!2891) (DelimiterValue!5782 (del!2951 List!15781)) (KeywordValue!2897 (value!89462 List!15781)) (CommentValue!5782 (value!89463 List!15781)) (WhitespaceValue!5782 (value!89464 List!15781)) (IndentationValue!2891 (value!89465 List!15781)) (String!18714) (Int32!2891) (Broken!14456 (value!89466 List!15781)) (Boolean!2892) (Unit!25605) (OperatorValue!2894 (op!2951 List!15781)) (IdentifierValue!5782 (value!89467 List!15781)) (IdentifierValue!5783 (value!89468 List!15781)) (WhitespaceValue!5783 (value!89469 List!15781)) (True!5782) (False!5782) (Broken!14457 (value!89470 List!15781)) (Broken!14458 (value!89471 List!15781)) (True!5783) (RightBrace!2891) (RightBracket!2891) (Colon!2891) (Null!2891) (Comma!2891) (LeftBracket!2891) (False!5783) (LeftBrace!2891) (ImaginaryLiteralValue!2891 (text!20683 List!15781)) (StringLiteralValue!8673 (value!89472 List!15781)) (EOFValue!2891 (value!89473 List!15781)) (IdentValue!2891 (value!89474 List!15781)) (DelimiterValue!5783 (value!89475 List!15781)) (DedentValue!2891 (value!89476 List!15781)) (NewLineValue!2891 (value!89477 List!15781)) (IntegerValue!8673 (value!89478 (_ BitVec 32)) (text!20684 List!15781)) (IntegerValue!8674 (value!89479 Int) (text!20685 List!15781)) (Times!2891) (Or!2891) (Equal!2891) (Minus!2891) (Broken!14459 (value!89480 List!15781)) (And!2891) (Div!2891) (LessEqual!2891) (Mod!2891) (Concat!7006) (Not!2891) (Plus!2891) (SpaceValue!2891 (value!89481 List!15781)) (IntegerValue!8675 (value!89482 Int) (text!20686 List!15781)) (StringLiteralValue!8674 (text!20687 List!15781)) (FloatLiteralValue!5783 (text!20688 List!15781)) (BytesLiteralValue!2891 (value!89483 List!15781)) (CommentValue!5783 (value!89484 List!15781)) (StringLiteralValue!8675 (value!89485 List!15781)) (ErrorTokenValue!2891 (msg!2952 List!15781)) )
))
(declare-datatypes ((Regex!4115 0))(
  ( (ElementMatch!4115 (c!243098 C!8408)) (Concat!7007 (regOne!8742 Regex!4115) (regTwo!8742 Regex!4115)) (EmptyExpr!4115) (Star!4115 (reg!4444 Regex!4115)) (EmptyLang!4115) (Union!4115 (regOne!8743 Regex!4115) (regTwo!8743 Regex!4115)) )
))
(declare-datatypes ((String!18715 0))(
  ( (String!18716 (value!89486 String)) )
))
(declare-datatypes ((TokenValueInjection!5442 0))(
  ( (TokenValueInjection!5443 (toValue!4140 Int) (toChars!3999 Int)) )
))
(declare-datatypes ((Rule!5402 0))(
  ( (Rule!5403 (regex!2801 Regex!4115) (tag!3065 String!18715) (isSeparator!2801 Bool) (transformation!2801 TokenValueInjection!5442)) )
))
(declare-datatypes ((List!15782 0))(
  ( (Nil!15714) (Cons!15714 (h!21115 Rule!5402) (t!137699 List!15782)) )
))
(declare-fun rules!1640 () List!15782)

(declare-fun isEmpty!9829 (List!15782) Bool)

(assert (=> b!1483092 (= res!670000 (not (isEmpty!9829 rules!1640)))))

(declare-fun mapIsEmpty!6480 () Bool)

(declare-fun mapRes!6482 () Bool)

(assert (=> mapIsEmpty!6480 mapRes!6482))

(declare-fun b!1483093 () Bool)

(declare-fun e!948379 () Bool)

(assert (=> b!1483093 (= e!948377 e!948379)))

(declare-fun mapNonEmpty!6480 () Bool)

(declare-fun mapRes!6480 () Bool)

(declare-fun tp!420959 () Bool)

(declare-fun tp!420952 () Bool)

(assert (=> mapNonEmpty!6480 (= mapRes!6480 (and tp!420959 tp!420952))))

(declare-datatypes ((List!15783 0))(
  ( (Nil!15715) (Cons!15715 (h!21116 Regex!4115) (t!137700 List!15783)) )
))
(declare-datatypes ((Context!1266 0))(
  ( (Context!1267 (exprs!1133 List!15783)) )
))
(declare-datatypes ((tuple2!14362 0))(
  ( (tuple2!14363 (_1!8069 Context!1266) (_2!8069 C!8408)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14364 0))(
  ( (tuple2!14365 (_1!8070 tuple2!14362) (_2!8070 (InoxSet Context!1266))) )
))
(declare-datatypes ((List!15784 0))(
  ( (Nil!15716) (Cons!15716 (h!21117 tuple2!14364) (t!137701 List!15784)) )
))
(declare-datatypes ((array!4806 0))(
  ( (array!4807 (arr!2144 (Array (_ BitVec 32) (_ BitVec 64))) (size!12725 (_ BitVec 32))) )
))
(declare-datatypes ((array!4808 0))(
  ( (array!4809 (arr!2145 (Array (_ BitVec 32) List!15784)) (size!12726 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2708 0))(
  ( (LongMapFixedSize!2709 (defaultEntry!1714 Int) (mask!4500 (_ BitVec 32)) (extraKeys!1601 (_ BitVec 32)) (zeroValue!1611 List!15784) (minValue!1611 List!15784) (_size!2789 (_ BitVec 32)) (_keys!1648 array!4806) (_values!1633 array!4808) (_vacant!1415 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1298 0))(
  ( (HashableExt!1297 (__x!9582 Int)) )
))
(declare-datatypes ((Cell!5301 0))(
  ( (Cell!5302 (v!22557 LongMapFixedSize!2708)) )
))
(declare-datatypes ((MutLongMap!1354 0))(
  ( (LongMap!1354 (underlying!2917 Cell!5301)) (MutLongMapExt!1353 (__x!9583 Int)) )
))
(declare-datatypes ((Cell!5303 0))(
  ( (Cell!5304 (v!22558 MutLongMap!1354)) )
))
(declare-datatypes ((MutableMap!1298 0))(
  ( (MutableMapExt!1297 (__x!9584 Int)) (HashMap!1298 (underlying!2918 Cell!5303) (hashF!3217 Hashable!1298) (_size!2790 (_ BitVec 32)) (defaultValue!1458 Int)) )
))
(declare-datatypes ((CacheUp!766 0))(
  ( (CacheUp!767 (cache!1679 MutableMap!1298)) )
))
(declare-fun cacheUp!616 () CacheUp!766)

(declare-fun mapKey!6482 () (_ BitVec 32))

(declare-fun mapRest!6481 () (Array (_ BitVec 32) List!15784))

(declare-fun mapValue!6481 () List!15784)

(assert (=> mapNonEmpty!6480 (= (arr!2145 (_values!1633 (v!22557 (underlying!2917 (v!22558 (underlying!2918 (cache!1679 cacheUp!616))))))) (store mapRest!6481 mapKey!6482 mapValue!6481))))

(declare-fun b!1483094 () Bool)

(declare-fun res!669999 () Bool)

(assert (=> b!1483094 (=> (not res!669999) (not e!948364))))

(declare-datatypes ((Token!5264 0))(
  ( (Token!5265 (value!89487 TokenValue!2891) (rule!4578 Rule!5402) (size!12727 Int) (originalCharacters!3663 List!15780)) )
))
(declare-datatypes ((List!15785 0))(
  ( (Nil!15717) (Cons!15717 (h!21118 Token!5264) (t!137702 List!15785)) )
))
(declare-datatypes ((IArray!10715 0))(
  ( (IArray!10716 (innerList!5415 List!15785)) )
))
(declare-datatypes ((Conc!5355 0))(
  ( (Node!5355 (left!13247 Conc!5355) (right!13577 Conc!5355) (csize!10940 Int) (cheight!5566 Int)) (Leaf!7958 (xs!8110 IArray!10715) (csize!10941 Int)) (Empty!5355) )
))
(declare-datatypes ((BalanceConc!10652 0))(
  ( (BalanceConc!10653 (c!243099 Conc!5355)) )
))
(declare-datatypes ((tuple2!14366 0))(
  ( (tuple2!14367 (_1!8071 BalanceConc!10652) (_2!8071 BalanceConc!10650)) )
))
(declare-fun lt!515284 () tuple2!14366)

(declare-fun lt!515289 () tuple2!14366)

(assert (=> b!1483094 (= res!669999 (= (list!6247 (_2!8071 lt!515284)) (list!6247 (_2!8071 lt!515289))))))

(declare-fun b!1483095 () Bool)

(declare-fun e!948394 () Bool)

(declare-fun e!948367 () Bool)

(assert (=> b!1483095 (= e!948394 e!948367)))

(declare-fun b!1483096 () Bool)

(declare-fun res!669997 () Bool)

(assert (=> b!1483096 (=> (not res!669997) (not e!948364))))

(declare-datatypes ((tuple3!1194 0))(
  ( (tuple3!1195 (_1!8072 (InoxSet Context!1266)) (_2!8072 Int) (_3!888 Int)) )
))
(declare-datatypes ((tuple2!14368 0))(
  ( (tuple2!14369 (_1!8073 tuple3!1194) (_2!8073 Int)) )
))
(declare-datatypes ((List!15786 0))(
  ( (Nil!15718) (Cons!15718 (h!21119 tuple2!14368) (t!137703 List!15786)) )
))
(declare-datatypes ((array!4810 0))(
  ( (array!4811 (arr!2146 (Array (_ BitVec 32) List!15786)) (size!12728 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2710 0))(
  ( (LongMapFixedSize!2711 (defaultEntry!1715 Int) (mask!4501 (_ BitVec 32)) (extraKeys!1602 (_ BitVec 32)) (zeroValue!1612 List!15786) (minValue!1612 List!15786) (_size!2791 (_ BitVec 32)) (_keys!1649 array!4806) (_values!1634 array!4810) (_vacant!1416 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5305 0))(
  ( (Cell!5306 (v!22559 LongMapFixedSize!2710)) )
))
(declare-datatypes ((MutLongMap!1355 0))(
  ( (LongMap!1355 (underlying!2919 Cell!5305)) (MutLongMapExt!1354 (__x!9585 Int)) )
))
(declare-datatypes ((Cell!5307 0))(
  ( (Cell!5308 (v!22560 MutLongMap!1355)) )
))
(declare-datatypes ((Hashable!1299 0))(
  ( (HashableExt!1298 (__x!9586 Int)) )
))
(declare-datatypes ((MutableMap!1299 0))(
  ( (MutableMapExt!1298 (__x!9587 Int)) (HashMap!1299 (underlying!2920 Cell!5307) (hashF!3218 Hashable!1299) (_size!2792 (_ BitVec 32)) (defaultValue!1459 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!188 0))(
  ( (CacheFurthestNullable!189 (cache!1680 MutableMap!1299) (totalInput!2228 BalanceConc!10650)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!188)

(assert (=> b!1483096 (= res!669997 (= (totalInput!2228 cacheFurthestNullable!64) totalInput!458))))

(declare-fun mapNonEmpty!6481 () Bool)

(declare-fun tp!420961 () Bool)

(declare-fun tp!420949 () Bool)

(assert (=> mapNonEmpty!6481 (= mapRes!6482 (and tp!420961 tp!420949))))

(declare-fun mapKey!6480 () (_ BitVec 32))

(declare-datatypes ((tuple3!1196 0))(
  ( (tuple3!1197 (_1!8074 Regex!4115) (_2!8074 Context!1266) (_3!889 C!8408)) )
))
(declare-datatypes ((tuple2!14370 0))(
  ( (tuple2!14371 (_1!8075 tuple3!1196) (_2!8075 (InoxSet Context!1266))) )
))
(declare-datatypes ((List!15787 0))(
  ( (Nil!15719) (Cons!15719 (h!21120 tuple2!14370) (t!137704 List!15787)) )
))
(declare-fun mapRest!6482 () (Array (_ BitVec 32) List!15787))

(declare-fun mapValue!6480 () List!15787)

(declare-datatypes ((array!4812 0))(
  ( (array!4813 (arr!2147 (Array (_ BitVec 32) List!15787)) (size!12729 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2712 0))(
  ( (LongMapFixedSize!2713 (defaultEntry!1716 Int) (mask!4502 (_ BitVec 32)) (extraKeys!1603 (_ BitVec 32)) (zeroValue!1613 List!15787) (minValue!1613 List!15787) (_size!2793 (_ BitVec 32)) (_keys!1650 array!4806) (_values!1635 array!4812) (_vacant!1417 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5309 0))(
  ( (Cell!5310 (v!22561 LongMapFixedSize!2712)) )
))
(declare-datatypes ((MutLongMap!1356 0))(
  ( (LongMap!1356 (underlying!2921 Cell!5309)) (MutLongMapExt!1355 (__x!9588 Int)) )
))
(declare-datatypes ((Cell!5311 0))(
  ( (Cell!5312 (v!22562 MutLongMap!1356)) )
))
(declare-datatypes ((Hashable!1300 0))(
  ( (HashableExt!1299 (__x!9589 Int)) )
))
(declare-datatypes ((MutableMap!1300 0))(
  ( (MutableMapExt!1299 (__x!9590 Int)) (HashMap!1300 (underlying!2922 Cell!5311) (hashF!3219 Hashable!1300) (_size!2794 (_ BitVec 32)) (defaultValue!1460 Int)) )
))
(declare-datatypes ((CacheDown!770 0))(
  ( (CacheDown!771 (cache!1681 MutableMap!1300)) )
))
(declare-fun cacheDown!629 () CacheDown!770)

(assert (=> mapNonEmpty!6481 (= (arr!2147 (_values!1635 (v!22561 (underlying!2921 (v!22562 (underlying!2922 (cache!1681 cacheDown!629))))))) (store mapRest!6482 mapKey!6480 mapValue!6480))))

(declare-fun e!948361 () Bool)

(declare-fun e!948370 () Bool)

(assert (=> b!1483097 (= e!948361 (and e!948370 tp!420962))))

(declare-fun mapIsEmpty!6481 () Bool)

(assert (=> mapIsEmpty!6481 mapRes!6480))

(declare-fun b!1483098 () Bool)

(declare-fun e!948363 () Bool)

(declare-fun e!948382 () Bool)

(declare-fun lt!515291 () MutLongMap!1355)

(get-info :version)

(assert (=> b!1483098 (= e!948363 (and e!948382 ((_ is LongMap!1355) lt!515291)))))

(assert (=> b!1483098 (= lt!515291 (v!22560 (underlying!2920 (cache!1680 cacheFurthestNullable!64))))))

(declare-fun b!1483099 () Bool)

(declare-fun e!948380 () Bool)

(assert (=> b!1483099 (= e!948380 e!948361)))

(declare-fun b!1483100 () Bool)

(declare-fun e!948392 () Bool)

(declare-fun tp!420945 () Bool)

(assert (=> b!1483100 (= e!948392 (and tp!420945 mapRes!6480))))

(declare-fun condMapEmpty!6482 () Bool)

(declare-fun mapDefault!6480 () List!15784)

(assert (=> b!1483100 (= condMapEmpty!6482 (= (arr!2145 (_values!1633 (v!22557 (underlying!2917 (v!22558 (underlying!2918 (cache!1679 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!15784)) mapDefault!6480)))))

(declare-fun b!1483101 () Bool)

(declare-fun e!948386 () Bool)

(declare-fun tp!420953 () Bool)

(declare-fun mapRes!6481 () Bool)

(assert (=> b!1483101 (= e!948386 (and tp!420953 mapRes!6481))))

(declare-fun condMapEmpty!6480 () Bool)

(declare-fun mapDefault!6482 () List!15786)

(assert (=> b!1483101 (= condMapEmpty!6480 (= (arr!2146 (_values!1634 (v!22559 (underlying!2919 (v!22560 (underlying!2920 (cache!1680 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!15786)) mapDefault!6482)))))

(declare-fun res!669996 () Bool)

(assert (=> start!139402 (=> (not res!669996) (not e!948374))))

(declare-datatypes ((LexerInterface!2457 0))(
  ( (LexerInterfaceExt!2454 (__x!9591 Int)) (Lexer!2455) )
))
(declare-fun thiss!13241 () LexerInterface!2457)

(assert (=> start!139402 (= res!669996 ((_ is Lexer!2455) thiss!13241))))

(assert (=> start!139402 e!948374))

(declare-fun acc!392 () BalanceConc!10652)

(declare-fun e!948358 () Bool)

(declare-fun inv!20932 (BalanceConc!10652) Bool)

(assert (=> start!139402 (and (inv!20932 acc!392) e!948358)))

(declare-fun inv!20933 (CacheUp!766) Bool)

(assert (=> start!139402 (and (inv!20933 cacheUp!616) e!948394)))

(declare-fun inv!20934 (CacheDown!770) Bool)

(assert (=> start!139402 (and (inv!20934 cacheDown!629) e!948380)))

(declare-fun e!948381 () Bool)

(declare-fun inv!20935 (BalanceConc!10650) Bool)

(assert (=> start!139402 (and (inv!20935 input!1102) e!948381)))

(declare-fun e!948385 () Bool)

(assert (=> start!139402 (and (inv!20935 treated!70) e!948385)))

(assert (=> start!139402 true))

(declare-fun e!948362 () Bool)

(assert (=> start!139402 e!948362))

(declare-fun e!948375 () Bool)

(declare-fun inv!20936 (CacheFurthestNullable!188) Bool)

(assert (=> start!139402 (and (inv!20936 cacheFurthestNullable!64) e!948375)))

(declare-fun e!948384 () Bool)

(assert (=> start!139402 (and (inv!20935 totalInput!458) e!948384)))

(declare-fun b!1483102 () Bool)

(declare-fun res!670002 () Bool)

(assert (=> b!1483102 (=> (not res!670002) (not e!948374))))

(declare-fun rulesInvariant!2245 (LexerInterface!2457 List!15782) Bool)

(assert (=> b!1483102 (= res!670002 (rulesInvariant!2245 thiss!13241 rules!1640))))

(declare-fun b!1483103 () Bool)

(declare-fun tp!420963 () Bool)

(declare-fun inv!20937 (Conc!5354) Bool)

(assert (=> b!1483103 (= e!948384 (and (inv!20937 (c!243097 totalInput!458)) tp!420963))))

(declare-fun tp!420951 () Bool)

(declare-fun tp!420956 () Bool)

(declare-fun e!948387 () Bool)

(declare-fun array_inv!1558 (array!4806) Bool)

(declare-fun array_inv!1559 (array!4812) Bool)

(assert (=> b!1483104 (= e!948379 (and tp!420950 tp!420951 tp!420956 (array_inv!1558 (_keys!1650 (v!22561 (underlying!2921 (v!22562 (underlying!2922 (cache!1681 cacheDown!629))))))) (array_inv!1559 (_values!1635 (v!22561 (underlying!2921 (v!22562 (underlying!2922 (cache!1681 cacheDown!629))))))) e!948387))))

(declare-fun b!1483105 () Bool)

(declare-fun tp!420936 () Bool)

(assert (=> b!1483105 (= e!948385 (and (inv!20937 (c!243097 treated!70)) tp!420936))))

(declare-fun b!1483106 () Bool)

(declare-fun tp!420955 () Bool)

(assert (=> b!1483106 (= e!948387 (and tp!420955 mapRes!6482))))

(declare-fun condMapEmpty!6481 () Bool)

(declare-fun mapDefault!6481 () List!15787)

(assert (=> b!1483106 (= condMapEmpty!6481 (= (arr!2147 (_values!1635 (v!22561 (underlying!2921 (v!22562 (underlying!2922 (cache!1681 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!15787)) mapDefault!6481)))))

(declare-fun e!948388 () Bool)

(assert (=> b!1483107 (= e!948388 (and e!948363 tp!420964))))

(declare-fun b!1483108 () Bool)

(declare-fun e!948365 () Bool)

(assert (=> b!1483108 (= e!948365 e!948364)))

(declare-fun res!669998 () Bool)

(assert (=> b!1483108 (=> (not res!669998) (not e!948364))))

(declare-fun list!6248 (BalanceConc!10652) List!15785)

(declare-fun ++!4239 (BalanceConc!10652 BalanceConc!10652) BalanceConc!10652)

(assert (=> b!1483108 (= res!669998 (= (list!6248 (_1!8071 lt!515284)) (list!6248 (++!4239 acc!392 (_1!8071 lt!515289)))))))

(declare-fun lexRec!295 (LexerInterface!2457 List!15782 BalanceConc!10650) tuple2!14366)

(assert (=> b!1483108 (= lt!515289 (lexRec!295 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1483108 (= lt!515284 (lexRec!295 thiss!13241 rules!1640 totalInput!458))))

(declare-fun mapIsEmpty!6482 () Bool)

(assert (=> mapIsEmpty!6482 mapRes!6481))

(declare-fun mapNonEmpty!6482 () Bool)

(declare-fun tp!420948 () Bool)

(declare-fun tp!420942 () Bool)

(assert (=> mapNonEmpty!6482 (= mapRes!6481 (and tp!420948 tp!420942))))

(declare-fun mapRest!6480 () (Array (_ BitVec 32) List!15786))

(declare-fun mapValue!6482 () List!15786)

(declare-fun mapKey!6481 () (_ BitVec 32))

(assert (=> mapNonEmpty!6482 (= (arr!2146 (_values!1634 (v!22559 (underlying!2919 (v!22560 (underlying!2920 (cache!1680 cacheFurthestNullable!64))))))) (store mapRest!6480 mapKey!6481 mapValue!6482))))

(declare-fun b!1483109 () Bool)

(declare-fun lt!515288 () MutLongMap!1356)

(assert (=> b!1483109 (= e!948370 (and e!948366 ((_ is LongMap!1356) lt!515288)))))

(assert (=> b!1483109 (= lt!515288 (v!22562 (underlying!2922 (cache!1681 cacheDown!629))))))

(declare-fun b!1483110 () Bool)

(declare-fun e!948360 () Bool)

(declare-fun tp!420939 () Bool)

(assert (=> b!1483110 (= e!948362 (and e!948360 tp!420939))))

(declare-fun b!1483111 () Bool)

(declare-fun e!948383 () Bool)

(declare-fun tp!420941 () Bool)

(assert (=> b!1483111 (= e!948383 (and (inv!20937 (c!243097 (totalInput!2228 cacheFurthestNullable!64))) tp!420941))))

(declare-fun b!1483112 () Bool)

(declare-fun e!948369 () Bool)

(declare-fun e!948359 () Bool)

(assert (=> b!1483112 (= e!948369 e!948359)))

(declare-fun b!1483113 () Bool)

(declare-fun tp!420960 () Bool)

(assert (=> b!1483113 (= e!948381 (and (inv!20937 (c!243097 input!1102)) tp!420960))))

(declare-fun tp!420937 () Bool)

(declare-fun tp!420957 () Bool)

(declare-fun e!948373 () Bool)

(declare-fun array_inv!1560 (array!4810) Bool)

(assert (=> b!1483114 (= e!948373 (and tp!420946 tp!420957 tp!420937 (array_inv!1558 (_keys!1649 (v!22559 (underlying!2919 (v!22560 (underlying!2920 (cache!1680 cacheFurthestNullable!64))))))) (array_inv!1560 (_values!1634 (v!22559 (underlying!2919 (v!22560 (underlying!2920 (cache!1680 cacheFurthestNullable!64))))))) e!948386))))

(declare-fun b!1483115 () Bool)

(declare-fun res!669994 () Bool)

(assert (=> b!1483115 (=> (not res!669994) (not e!948365))))

(declare-fun lt!515280 () tuple2!14366)

(declare-fun isEmpty!9830 (List!15780) Bool)

(assert (=> b!1483115 (= res!669994 (isEmpty!9830 (list!6247 (_2!8071 lt!515280))))))

(declare-fun b!1483116 () Bool)

(declare-fun res!669995 () Bool)

(assert (=> b!1483116 (=> (not res!669995) (not e!948364))))

(declare-fun valid!1063 (CacheFurthestNullable!188) Bool)

(assert (=> b!1483116 (= res!669995 (valid!1063 cacheFurthestNullable!64))))

(declare-fun b!1483117 () Bool)

(declare-fun e!948371 () Bool)

(assert (=> b!1483117 (= e!948371 e!948369)))

(declare-fun tp!420935 () Bool)

(declare-fun e!948393 () Bool)

(declare-fun b!1483118 () Bool)

(declare-fun inv!20928 (String!18715) Bool)

(declare-fun inv!20938 (TokenValueInjection!5442) Bool)

(assert (=> b!1483118 (= e!948360 (and tp!420935 (inv!20928 (tag!3065 (h!21115 rules!1640))) (inv!20938 (transformation!2801 (h!21115 rules!1640))) e!948393))))

(declare-fun b!1483119 () Bool)

(declare-fun e!948372 () Bool)

(assert (=> b!1483119 (= e!948372 e!948373)))

(declare-fun b!1483120 () Bool)

(assert (=> b!1483120 (= e!948375 (and e!948388 (inv!20935 (totalInput!2228 cacheFurthestNullable!64)) e!948383))))

(declare-fun b!1483121 () Bool)

(assert (=> b!1483121 (= e!948376 e!948365)))

(declare-fun res!670001 () Bool)

(assert (=> b!1483121 (=> (not res!670001) (not e!948365))))

(assert (=> b!1483121 (= res!670001 (= (list!6248 (_1!8071 lt!515280)) (list!6248 acc!392)))))

(assert (=> b!1483121 (= lt!515280 (lexRec!295 thiss!13241 rules!1640 treated!70))))

(assert (=> b!1483122 (= e!948393 (and tp!420944 tp!420954))))

(declare-fun tp!420958 () Bool)

(declare-fun tp!420938 () Bool)

(declare-fun array_inv!1561 (array!4808) Bool)

(assert (=> b!1483123 (= e!948359 (and tp!420940 tp!420958 tp!420938 (array_inv!1558 (_keys!1648 (v!22557 (underlying!2917 (v!22558 (underlying!2918 (cache!1679 cacheUp!616))))))) (array_inv!1561 (_values!1633 (v!22557 (underlying!2917 (v!22558 (underlying!2918 (cache!1679 cacheUp!616))))))) e!948392))))

(declare-fun b!1483124 () Bool)

(declare-fun e!948389 () Bool)

(declare-fun lt!515282 () MutLongMap!1354)

(assert (=> b!1483124 (= e!948389 (and e!948371 ((_ is LongMap!1354) lt!515282)))))

(assert (=> b!1483124 (= lt!515282 (v!22558 (underlying!2918 (cache!1679 cacheUp!616))))))

(declare-fun b!1483125 () Bool)

(declare-fun res!670004 () Bool)

(assert (=> b!1483125 (=> (not res!670004) (not e!948364))))

(declare-fun valid!1064 (CacheUp!766) Bool)

(assert (=> b!1483125 (= res!670004 (valid!1064 cacheUp!616))))

(declare-fun b!1483126 () Bool)

(assert (=> b!1483126 (= e!948382 e!948372)))

(assert (=> b!1483127 (= e!948367 (and e!948389 tp!420947))))

(declare-fun b!1483128 () Bool)

(declare-fun tp!420943 () Bool)

(declare-fun inv!20939 (Conc!5355) Bool)

(assert (=> b!1483128 (= e!948358 (and (inv!20939 (c!243099 acc!392)) tp!420943))))

(declare-fun b!1483129 () Bool)

(declare-fun res!670003 () Bool)

(assert (=> b!1483129 (=> (not res!670003) (not e!948364))))

(declare-fun valid!1065 (CacheDown!770) Bool)

(assert (=> b!1483129 (= res!670003 (valid!1065 cacheDown!629))))

(assert (= (and start!139402 res!669996) b!1483092))

(assert (= (and b!1483092 res!670000) b!1483102))

(assert (= (and b!1483102 res!670002) b!1483090))

(assert (= (and b!1483090 res!670005) b!1483121))

(assert (= (and b!1483121 res!670001) b!1483115))

(assert (= (and b!1483115 res!669994) b!1483108))

(assert (= (and b!1483108 res!669998) b!1483094))

(assert (= (and b!1483094 res!669999) b!1483125))

(assert (= (and b!1483125 res!670004) b!1483129))

(assert (= (and b!1483129 res!670003) b!1483116))

(assert (= (and b!1483116 res!669995) b!1483096))

(assert (= (and b!1483096 res!669997) b!1483089))

(assert (= start!139402 b!1483128))

(assert (= (and b!1483100 condMapEmpty!6482) mapIsEmpty!6481))

(assert (= (and b!1483100 (not condMapEmpty!6482)) mapNonEmpty!6480))

(assert (= b!1483123 b!1483100))

(assert (= b!1483112 b!1483123))

(assert (= b!1483117 b!1483112))

(assert (= (and b!1483124 ((_ is LongMap!1354) (v!22558 (underlying!2918 (cache!1679 cacheUp!616))))) b!1483117))

(assert (= b!1483127 b!1483124))

(assert (= (and b!1483095 ((_ is HashMap!1298) (cache!1679 cacheUp!616))) b!1483127))

(assert (= start!139402 b!1483095))

(assert (= (and b!1483106 condMapEmpty!6481) mapIsEmpty!6480))

(assert (= (and b!1483106 (not condMapEmpty!6481)) mapNonEmpty!6481))

(assert (= b!1483104 b!1483106))

(assert (= b!1483093 b!1483104))

(assert (= b!1483091 b!1483093))

(assert (= (and b!1483109 ((_ is LongMap!1356) (v!22562 (underlying!2922 (cache!1681 cacheDown!629))))) b!1483091))

(assert (= b!1483097 b!1483109))

(assert (= (and b!1483099 ((_ is HashMap!1300) (cache!1681 cacheDown!629))) b!1483097))

(assert (= start!139402 b!1483099))

(assert (= start!139402 b!1483113))

(assert (= start!139402 b!1483105))

(assert (= b!1483118 b!1483122))

(assert (= b!1483110 b!1483118))

(assert (= (and start!139402 ((_ is Cons!15714) rules!1640)) b!1483110))

(assert (= (and b!1483101 condMapEmpty!6480) mapIsEmpty!6482))

(assert (= (and b!1483101 (not condMapEmpty!6480)) mapNonEmpty!6482))

(assert (= b!1483114 b!1483101))

(assert (= b!1483119 b!1483114))

(assert (= b!1483126 b!1483119))

(assert (= (and b!1483098 ((_ is LongMap!1355) (v!22560 (underlying!2920 (cache!1680 cacheFurthestNullable!64))))) b!1483126))

(assert (= b!1483107 b!1483098))

(assert (= (and b!1483120 ((_ is HashMap!1299) (cache!1680 cacheFurthestNullable!64))) b!1483107))

(assert (= b!1483120 b!1483111))

(assert (= start!139402 b!1483120))

(assert (= start!139402 b!1483103))

(declare-fun m!1729585 () Bool)

(assert (=> b!1483089 m!1729585))

(declare-fun m!1729587 () Bool)

(assert (=> b!1483089 m!1729587))

(declare-fun m!1729589 () Bool)

(assert (=> b!1483089 m!1729589))

(declare-fun m!1729591 () Bool)

(assert (=> mapNonEmpty!6480 m!1729591))

(declare-fun m!1729593 () Bool)

(assert (=> b!1483120 m!1729593))

(declare-fun m!1729595 () Bool)

(assert (=> b!1483092 m!1729595))

(declare-fun m!1729597 () Bool)

(assert (=> b!1483128 m!1729597))

(declare-fun m!1729599 () Bool)

(assert (=> b!1483123 m!1729599))

(declare-fun m!1729601 () Bool)

(assert (=> b!1483123 m!1729601))

(declare-fun m!1729603 () Bool)

(assert (=> mapNonEmpty!6481 m!1729603))

(declare-fun m!1729605 () Bool)

(assert (=> b!1483105 m!1729605))

(declare-fun m!1729607 () Bool)

(assert (=> b!1483104 m!1729607))

(declare-fun m!1729609 () Bool)

(assert (=> b!1483104 m!1729609))

(declare-fun m!1729611 () Bool)

(assert (=> b!1483114 m!1729611))

(declare-fun m!1729613 () Bool)

(assert (=> b!1483114 m!1729613))

(declare-fun m!1729615 () Bool)

(assert (=> b!1483115 m!1729615))

(assert (=> b!1483115 m!1729615))

(declare-fun m!1729617 () Bool)

(assert (=> b!1483115 m!1729617))

(declare-fun m!1729619 () Bool)

(assert (=> b!1483090 m!1729619))

(declare-fun m!1729621 () Bool)

(assert (=> b!1483090 m!1729621))

(declare-fun m!1729623 () Bool)

(assert (=> b!1483090 m!1729623))

(declare-fun m!1729625 () Bool)

(assert (=> b!1483090 m!1729625))

(declare-fun m!1729627 () Bool)

(assert (=> b!1483125 m!1729627))

(declare-fun m!1729629 () Bool)

(assert (=> b!1483094 m!1729629))

(declare-fun m!1729631 () Bool)

(assert (=> b!1483094 m!1729631))

(declare-fun m!1729633 () Bool)

(assert (=> b!1483111 m!1729633))

(declare-fun m!1729635 () Bool)

(assert (=> start!139402 m!1729635))

(declare-fun m!1729637 () Bool)

(assert (=> start!139402 m!1729637))

(declare-fun m!1729639 () Bool)

(assert (=> start!139402 m!1729639))

(declare-fun m!1729641 () Bool)

(assert (=> start!139402 m!1729641))

(declare-fun m!1729643 () Bool)

(assert (=> start!139402 m!1729643))

(declare-fun m!1729645 () Bool)

(assert (=> start!139402 m!1729645))

(declare-fun m!1729647 () Bool)

(assert (=> start!139402 m!1729647))

(declare-fun m!1729649 () Bool)

(assert (=> b!1483103 m!1729649))

(declare-fun m!1729651 () Bool)

(assert (=> b!1483118 m!1729651))

(declare-fun m!1729653 () Bool)

(assert (=> b!1483118 m!1729653))

(declare-fun m!1729655 () Bool)

(assert (=> b!1483129 m!1729655))

(declare-fun m!1729657 () Bool)

(assert (=> b!1483116 m!1729657))

(declare-fun m!1729659 () Bool)

(assert (=> b!1483102 m!1729659))

(declare-fun m!1729661 () Bool)

(assert (=> b!1483108 m!1729661))

(declare-fun m!1729663 () Bool)

(assert (=> b!1483108 m!1729663))

(declare-fun m!1729665 () Bool)

(assert (=> b!1483108 m!1729665))

(declare-fun m!1729667 () Bool)

(assert (=> b!1483108 m!1729667))

(declare-fun m!1729669 () Bool)

(assert (=> b!1483108 m!1729669))

(assert (=> b!1483108 m!1729661))

(declare-fun m!1729671 () Bool)

(assert (=> mapNonEmpty!6482 m!1729671))

(declare-fun m!1729673 () Bool)

(assert (=> b!1483113 m!1729673))

(declare-fun m!1729675 () Bool)

(assert (=> b!1483121 m!1729675))

(declare-fun m!1729677 () Bool)

(assert (=> b!1483121 m!1729677))

(declare-fun m!1729679 () Bool)

(assert (=> b!1483121 m!1729679))

(check-sat (not b!1483111) b_and!103113 (not b!1483118) b_and!103119 (not b!1483108) (not b!1483129) (not mapNonEmpty!6482) b_and!103123 (not b!1483125) (not b!1483101) (not b!1483128) (not b!1483114) b_and!103125 (not b!1483120) (not b_next!39099) (not b!1483102) b_and!103117 (not b!1483094) (not b_next!39103) (not b_next!39113) b_and!103121 b_and!103127 (not b!1483113) (not b!1483089) (not mapNonEmpty!6480) (not b!1483092) (not b!1483090) (not b_next!39107) (not b!1483104) (not b!1483115) (not b!1483106) (not b!1483116) (not mapNonEmpty!6481) (not b_next!39101) (not start!139402) (not b_next!39111) (not b!1483121) (not b!1483100) (not b_next!39109) b_and!103115 (not b!1483110) (not b!1483103) (not b_next!39105) (not b!1483123) (not b!1483105))
(check-sat b_and!103125 (not b_next!39099) b_and!103117 b_and!103113 (not b_next!39107) (not b_next!39101) (not b_next!39111) b_and!103119 b_and!103123 (not b_next!39109) b_and!103115 (not b_next!39105) (not b_next!39103) (not b_next!39113) b_and!103121 b_and!103127)
