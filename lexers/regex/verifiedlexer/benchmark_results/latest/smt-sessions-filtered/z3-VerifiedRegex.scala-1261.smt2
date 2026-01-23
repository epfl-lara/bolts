; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65588 () Bool)

(assert start!65588)

(declare-fun b!685640 () Bool)

(declare-fun b_free!19269 () Bool)

(declare-fun b_next!19333 () Bool)

(assert (=> b!685640 (= b_free!19269 (not b_next!19333))))

(declare-fun tp!203493 () Bool)

(declare-fun b_and!63063 () Bool)

(assert (=> b!685640 (= tp!203493 b_and!63063)))

(declare-fun b_free!19271 () Bool)

(declare-fun b_next!19335 () Bool)

(assert (=> b!685640 (= b_free!19271 (not b_next!19335))))

(declare-fun tp!203485 () Bool)

(declare-fun b_and!63065 () Bool)

(assert (=> b!685640 (= tp!203485 b_and!63065)))

(declare-fun b!685628 () Bool)

(declare-fun b_free!19273 () Bool)

(declare-fun b_next!19337 () Bool)

(assert (=> b!685628 (= b_free!19273 (not b_next!19337))))

(declare-fun tp!203490 () Bool)

(declare-fun b_and!63067 () Bool)

(assert (=> b!685628 (= tp!203490 b_and!63067)))

(declare-fun b!685624 () Bool)

(declare-fun b_free!19275 () Bool)

(declare-fun b_next!19339 () Bool)

(assert (=> b!685624 (= b_free!19275 (not b_next!19339))))

(declare-fun tp!203501 () Bool)

(declare-fun b_and!63069 () Bool)

(assert (=> b!685624 (= tp!203501 b_and!63069)))

(declare-fun b!685652 () Bool)

(declare-fun b_free!19277 () Bool)

(declare-fun b_next!19341 () Bool)

(assert (=> b!685652 (= b_free!19277 (not b_next!19341))))

(declare-fun tp!203495 () Bool)

(declare-fun b_and!63071 () Bool)

(assert (=> b!685652 (= tp!203495 b_and!63071)))

(declare-fun b!685627 () Bool)

(declare-fun b_free!19279 () Bool)

(declare-fun b_next!19343 () Bool)

(assert (=> b!685627 (= b_free!19279 (not b_next!19343))))

(declare-fun tp!203510 () Bool)

(declare-fun b_and!63073 () Bool)

(assert (=> b!685627 (= tp!203510 b_and!63073)))

(declare-fun b!685633 () Bool)

(declare-fun b_free!19281 () Bool)

(declare-fun b_next!19345 () Bool)

(assert (=> b!685633 (= b_free!19281 (not b_next!19345))))

(declare-fun tp!203494 () Bool)

(declare-fun b_and!63075 () Bool)

(assert (=> b!685633 (= tp!203494 b_and!63075)))

(declare-fun b!685637 () Bool)

(declare-fun b_free!19283 () Bool)

(declare-fun b_next!19347 () Bool)

(assert (=> b!685637 (= b_free!19283 (not b_next!19347))))

(declare-fun tp!203504 () Bool)

(declare-fun b_and!63077 () Bool)

(assert (=> b!685637 (= tp!203504 b_and!63077)))

(declare-fun b!685620 () Bool)

(declare-fun res!312090 () Bool)

(declare-fun e!430641 () Bool)

(assert (=> b!685620 (=> (not res!312090) (not e!430641))))

(declare-datatypes ((LexerInterface!1296 0))(
  ( (LexerInterfaceExt!1293 (__x!5214 Int)) (Lexer!1294) )
))
(declare-fun thiss!12183 () LexerInterface!1296)

(declare-datatypes ((C!4236 0))(
  ( (C!4237 (val!2348 Int)) )
))
(declare-datatypes ((Regex!1817 0))(
  ( (ElementMatch!1817 (c!121198 C!4236)) (Concat!3342 (regOne!4146 Regex!1817) (regTwo!4146 Regex!1817)) (EmptyExpr!1817) (Star!1817 (reg!2146 Regex!1817)) (EmptyLang!1817) (Union!1817 (regOne!4147 Regex!1817) (regTwo!4147 Regex!1817)) )
))
(declare-datatypes ((String!9344 0))(
  ( (String!9345 (value!47851 String)) )
))
(declare-datatypes ((List!7348 0))(
  ( (Nil!7334) (Cons!7334 (h!12735 (_ BitVec 16)) (t!87144 List!7348)) )
))
(declare-datatypes ((TokenValue!1525 0))(
  ( (FloatLiteralValue!3050 (text!11120 List!7348)) (TokenValueExt!1524 (__x!5215 Int)) (Broken!7625 (value!47852 List!7348)) (Object!1538) (End!1525) (Def!1525) (Underscore!1525) (Match!1525) (Else!1525) (Error!1525) (Case!1525) (If!1525) (Extends!1525) (Abstract!1525) (Class!1525) (Val!1525) (DelimiterValue!3050 (del!1585 List!7348)) (KeywordValue!1531 (value!47853 List!7348)) (CommentValue!3050 (value!47854 List!7348)) (WhitespaceValue!3050 (value!47855 List!7348)) (IndentationValue!1525 (value!47856 List!7348)) (String!9346) (Int32!1525) (Broken!7626 (value!47857 List!7348)) (Boolean!1526) (Unit!12613) (OperatorValue!1528 (op!1585 List!7348)) (IdentifierValue!3050 (value!47858 List!7348)) (IdentifierValue!3051 (value!47859 List!7348)) (WhitespaceValue!3051 (value!47860 List!7348)) (True!3050) (False!3050) (Broken!7627 (value!47861 List!7348)) (Broken!7628 (value!47862 List!7348)) (True!3051) (RightBrace!1525) (RightBracket!1525) (Colon!1525) (Null!1525) (Comma!1525) (LeftBracket!1525) (False!3051) (LeftBrace!1525) (ImaginaryLiteralValue!1525 (text!11121 List!7348)) (StringLiteralValue!4575 (value!47863 List!7348)) (EOFValue!1525 (value!47864 List!7348)) (IdentValue!1525 (value!47865 List!7348)) (DelimiterValue!3051 (value!47866 List!7348)) (DedentValue!1525 (value!47867 List!7348)) (NewLineValue!1525 (value!47868 List!7348)) (IntegerValue!4575 (value!47869 (_ BitVec 32)) (text!11122 List!7348)) (IntegerValue!4576 (value!47870 Int) (text!11123 List!7348)) (Times!1525) (Or!1525) (Equal!1525) (Minus!1525) (Broken!7629 (value!47871 List!7348)) (And!1525) (Div!1525) (LessEqual!1525) (Mod!1525) (Concat!3343) (Not!1525) (Plus!1525) (SpaceValue!1525 (value!47872 List!7348)) (IntegerValue!4577 (value!47873 Int) (text!11124 List!7348)) (StringLiteralValue!4576 (text!11125 List!7348)) (FloatLiteralValue!3051 (text!11126 List!7348)) (BytesLiteralValue!1525 (value!47874 List!7348)) (CommentValue!3051 (value!47875 List!7348)) (StringLiteralValue!4577 (value!47876 List!7348)) (ErrorTokenValue!1525 (msg!1586 List!7348)) )
))
(declare-datatypes ((List!7349 0))(
  ( (Nil!7335) (Cons!7335 (h!12736 C!4236) (t!87145 List!7349)) )
))
(declare-datatypes ((IArray!5217 0))(
  ( (IArray!5218 (innerList!2666 List!7349)) )
))
(declare-datatypes ((Conc!2608 0))(
  ( (Node!2608 (left!5939 Conc!2608) (right!6269 Conc!2608) (csize!5446 Int) (cheight!2819 Int)) (Leaf!3870 (xs!5257 IArray!5217) (csize!5447 Int)) (Empty!2608) )
))
(declare-datatypes ((BalanceConc!5228 0))(
  ( (BalanceConc!5229 (c!121199 Conc!2608)) )
))
(declare-datatypes ((TokenValueInjection!2786 0))(
  ( (TokenValueInjection!2787 (toValue!2433 Int) (toChars!2292 Int)) )
))
(declare-datatypes ((Rule!2762 0))(
  ( (Rule!2763 (regex!1481 Regex!1817) (tag!1743 String!9344) (isSeparator!1481 Bool) (transformation!1481 TokenValueInjection!2786)) )
))
(declare-datatypes ((List!7350 0))(
  ( (Nil!7336) (Cons!7336 (h!12737 Rule!2762) (t!87146 List!7350)) )
))
(declare-fun rules!1357 () List!7350)

(declare-fun rulesInvariant!1231 (LexerInterface!1296 List!7350) Bool)

(assert (=> b!685620 (= res!312090 (rulesInvariant!1231 thiss!12183 rules!1357))))

(declare-fun b!685621 () Bool)

(declare-fun e!430665 () Bool)

(declare-datatypes ((Hashable!694 0))(
  ( (HashableExt!693 (__x!5216 Int)) )
))
(declare-datatypes ((List!7351 0))(
  ( (Nil!7337) (Cons!7337 (h!12738 Regex!1817) (t!87147 List!7351)) )
))
(declare-datatypes ((Context!454 0))(
  ( (Context!455 (exprs!727 List!7351)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7664 0))(
  ( (tuple2!7665 (_1!4224 (InoxSet Context!454)) (_2!4224 Int)) )
))
(declare-datatypes ((array!2731 0))(
  ( (array!2732 (arr!1237 (Array (_ BitVec 32) (_ BitVec 64))) (size!6021 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!7666 0))(
  ( (tuple2!7667 (_1!4225 tuple2!7664) (_2!4225 Int)) )
))
(declare-datatypes ((List!7352 0))(
  ( (Nil!7338) (Cons!7338 (h!12739 tuple2!7666) (t!87148 List!7352)) )
))
(declare-datatypes ((array!2733 0))(
  ( (array!2734 (arr!1238 (Array (_ BitVec 32) List!7352)) (size!6022 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1444 0))(
  ( (LongMapFixedSize!1445 (defaultEntry!1078 Int) (mask!2515 (_ BitVec 32)) (extraKeys!969 (_ BitVec 32)) (zeroValue!979 List!7352) (minValue!979 List!7352) (_size!1553 (_ BitVec 32)) (_keys!1016 array!2731) (_values!1001 array!2733) (_vacant!783 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2829 0))(
  ( (Cell!2830 (v!17551 LongMapFixedSize!1444)) )
))
(declare-datatypes ((MutLongMap!722 0))(
  ( (LongMap!722 (underlying!1627 Cell!2829)) (MutLongMapExt!721 (__x!5217 Int)) )
))
(declare-datatypes ((Cell!2831 0))(
  ( (Cell!2832 (v!17552 MutLongMap!722)) )
))
(declare-datatypes ((MutableMap!694 0))(
  ( (MutableMapExt!693 (__x!5218 Int)) (HashMap!694 (underlying!1628 Cell!2831) (hashF!2602 Hashable!694) (_size!1554 (_ BitVec 32)) (defaultValue!845 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!10 0))(
  ( (CacheFindLongestMatch!11 (cache!1081 MutableMap!694) (totalInput!1780 BalanceConc!5228)) )
))
(declare-fun cacheFindLongestMatch!59 () CacheFindLongestMatch!10)

(declare-fun tp!203497 () Bool)

(declare-fun inv!9439 (Conc!2608) Bool)

(assert (=> b!685621 (= e!430665 (and (inv!9439 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) tp!203497))))

(declare-fun mapIsEmpty!2873 () Bool)

(declare-fun mapRes!2874 () Bool)

(assert (=> mapIsEmpty!2873 mapRes!2874))

(declare-fun b!685622 () Bool)

(declare-fun e!430638 () Bool)

(declare-fun tp!203496 () Bool)

(declare-fun mapRes!2875 () Bool)

(assert (=> b!685622 (= e!430638 (and tp!203496 mapRes!2875))))

(declare-fun condMapEmpty!2873 () Bool)

(declare-datatypes ((tuple3!682 0))(
  ( (tuple3!683 (_1!4226 Regex!1817) (_2!4226 Context!454) (_3!392 C!4236)) )
))
(declare-datatypes ((tuple2!7668 0))(
  ( (tuple2!7669 (_1!4227 tuple3!682) (_2!4227 (InoxSet Context!454))) )
))
(declare-datatypes ((List!7353 0))(
  ( (Nil!7339) (Cons!7339 (h!12740 tuple2!7668) (t!87149 List!7353)) )
))
(declare-datatypes ((array!2735 0))(
  ( (array!2736 (arr!1239 (Array (_ BitVec 32) List!7353)) (size!6023 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1446 0))(
  ( (LongMapFixedSize!1447 (defaultEntry!1079 Int) (mask!2516 (_ BitVec 32)) (extraKeys!970 (_ BitVec 32)) (zeroValue!980 List!7353) (minValue!980 List!7353) (_size!1555 (_ BitVec 32)) (_keys!1017 array!2731) (_values!1002 array!2735) (_vacant!784 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2833 0))(
  ( (Cell!2834 (v!17553 LongMapFixedSize!1446)) )
))
(declare-datatypes ((MutLongMap!723 0))(
  ( (LongMap!723 (underlying!1629 Cell!2833)) (MutLongMapExt!722 (__x!5219 Int)) )
))
(declare-datatypes ((Cell!2835 0))(
  ( (Cell!2836 (v!17554 MutLongMap!723)) )
))
(declare-datatypes ((Hashable!695 0))(
  ( (HashableExt!694 (__x!5220 Int)) )
))
(declare-datatypes ((MutableMap!695 0))(
  ( (MutableMapExt!694 (__x!5221 Int)) (HashMap!695 (underlying!1630 Cell!2835) (hashF!2603 Hashable!695) (_size!1556 (_ BitVec 32)) (defaultValue!846 Int)) )
))
(declare-datatypes ((CacheDown!354 0))(
  ( (CacheDown!355 (cache!1082 MutableMap!695)) )
))
(declare-fun cacheDown!470 () CacheDown!354)

(declare-fun mapDefault!2874 () List!7353)

(assert (=> b!685622 (= condMapEmpty!2873 (= (arr!1239 (_values!1002 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))) ((as const (Array (_ BitVec 32) List!7353)) mapDefault!2874)))))

(declare-fun b!685623 () Bool)

(declare-fun e!430639 () Bool)

(declare-fun e!430640 () Bool)

(assert (=> b!685623 (= e!430639 e!430640)))

(declare-fun e!430668 () Bool)

(declare-fun e!430660 () Bool)

(assert (=> b!685624 (= e!430668 (and e!430660 tp!203501))))

(declare-fun b!685625 () Bool)

(declare-fun e!430645 () Bool)

(declare-fun e!430666 () Bool)

(declare-fun tp!203499 () Bool)

(assert (=> b!685625 (= e!430645 (and e!430666 tp!203499))))

(declare-fun b!685626 () Bool)

(declare-fun e!430653 () Bool)

(declare-fun inv!9440 (BalanceConc!5228) Bool)

(assert (=> b!685626 (= e!430653 (and e!430668 (inv!9440 (totalInput!1780 cacheFindLongestMatch!59)) e!430665))))

(declare-fun e!430649 () Bool)

(declare-datatypes ((tuple2!7670 0))(
  ( (tuple2!7671 (_1!4228 Context!454) (_2!4228 C!4236)) )
))
(declare-datatypes ((tuple2!7672 0))(
  ( (tuple2!7673 (_1!4229 tuple2!7670) (_2!4229 (InoxSet Context!454))) )
))
(declare-datatypes ((List!7354 0))(
  ( (Nil!7340) (Cons!7340 (h!12741 tuple2!7672) (t!87150 List!7354)) )
))
(declare-datatypes ((array!2737 0))(
  ( (array!2738 (arr!1240 (Array (_ BitVec 32) List!7354)) (size!6024 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1448 0))(
  ( (LongMapFixedSize!1449 (defaultEntry!1080 Int) (mask!2517 (_ BitVec 32)) (extraKeys!971 (_ BitVec 32)) (zeroValue!981 List!7354) (minValue!981 List!7354) (_size!1557 (_ BitVec 32)) (_keys!1018 array!2731) (_values!1003 array!2737) (_vacant!785 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2837 0))(
  ( (Cell!2838 (v!17555 LongMapFixedSize!1448)) )
))
(declare-datatypes ((MutLongMap!724 0))(
  ( (LongMap!724 (underlying!1631 Cell!2837)) (MutLongMapExt!723 (__x!5222 Int)) )
))
(declare-datatypes ((Cell!2839 0))(
  ( (Cell!2840 (v!17556 MutLongMap!724)) )
))
(declare-datatypes ((Hashable!696 0))(
  ( (HashableExt!695 (__x!5223 Int)) )
))
(declare-datatypes ((MutableMap!696 0))(
  ( (MutableMapExt!695 (__x!5224 Int)) (HashMap!696 (underlying!1632 Cell!2839) (hashF!2604 Hashable!696) (_size!1558 (_ BitVec 32)) (defaultValue!847 Int)) )
))
(declare-datatypes ((CacheUp!350 0))(
  ( (CacheUp!351 (cache!1083 MutableMap!696)) )
))
(declare-fun cacheUp!457 () CacheUp!350)

(declare-fun tp!203500 () Bool)

(declare-fun e!430667 () Bool)

(declare-fun tp!203505 () Bool)

(declare-fun array_inv!902 (array!2731) Bool)

(declare-fun array_inv!903 (array!2737) Bool)

(assert (=> b!685627 (= e!430667 (and tp!203510 tp!203505 tp!203500 (array_inv!902 (_keys!1018 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))) (array_inv!903 (_values!1003 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))) e!430649))))

(declare-fun tp!203491 () Bool)

(declare-fun tp!203508 () Bool)

(declare-fun array_inv!904 (array!2735) Bool)

(assert (=> b!685628 (= e!430640 (and tp!203490 tp!203508 tp!203491 (array_inv!902 (_keys!1017 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))) (array_inv!904 (_values!1002 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))) e!430638))))

(declare-fun b!685629 () Bool)

(declare-fun e!430647 () Bool)

(assert (=> b!685629 (= e!430647 e!430667)))

(declare-fun b!685630 () Bool)

(declare-fun tp!203498 () Bool)

(declare-fun mapRes!2873 () Bool)

(assert (=> b!685630 (= e!430649 (and tp!203498 mapRes!2873))))

(declare-fun condMapEmpty!2875 () Bool)

(declare-fun mapDefault!2873 () List!7354)

(assert (=> b!685630 (= condMapEmpty!2875 (= (arr!1240 (_values!1003 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))) ((as const (Array (_ BitVec 32) List!7354)) mapDefault!2873)))))

(declare-fun b!685631 () Bool)

(declare-fun res!312093 () Bool)

(assert (=> b!685631 (=> (not res!312093) (not e!430641))))

(declare-fun valid!604 (CacheFindLongestMatch!10) Bool)

(assert (=> b!685631 (= res!312093 (valid!604 cacheFindLongestMatch!59))))

(declare-fun mapNonEmpty!2873 () Bool)

(declare-fun tp!203486 () Bool)

(declare-fun tp!203507 () Bool)

(assert (=> mapNonEmpty!2873 (= mapRes!2875 (and tp!203486 tp!203507))))

(declare-fun mapRest!2875 () (Array (_ BitVec 32) List!7353))

(declare-fun mapValue!2875 () List!7353)

(declare-fun mapKey!2874 () (_ BitVec 32))

(assert (=> mapNonEmpty!2873 (= (arr!1239 (_values!1002 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))) (store mapRest!2875 mapKey!2874 mapValue!2875))))

(declare-fun b!685632 () Bool)

(declare-fun lt!283848 () List!7349)

(declare-fun lt!283847 () List!7349)

(declare-fun ++!1931 (List!7349 List!7349) List!7349)

(assert (=> b!685632 (= e!430641 (not (= lt!283848 (++!1931 lt!283847 lt!283848))))))

(declare-fun input!756 () BalanceConc!5228)

(declare-fun list!3099 (BalanceConc!5228) List!7349)

(assert (=> b!685632 (= lt!283848 (list!3099 input!756))))

(assert (=> b!685632 (= lt!283847 (list!3099 (BalanceConc!5229 Empty!2608)))))

(declare-fun e!430650 () Bool)

(declare-fun e!430657 () Bool)

(assert (=> b!685633 (= e!430650 (and e!430657 tp!203494))))

(declare-fun b!685634 () Bool)

(declare-fun e!430661 () Bool)

(declare-fun e!430654 () Bool)

(assert (=> b!685634 (= e!430661 e!430654)))

(declare-fun b!685635 () Bool)

(declare-fun e!430664 () Bool)

(declare-fun tp!203488 () Bool)

(assert (=> b!685635 (= e!430664 (and (inv!9439 (c!121199 input!756)) tp!203488))))

(declare-fun tp!203502 () Bool)

(declare-fun b!685636 () Bool)

(declare-fun e!430652 () Bool)

(declare-fun inv!9432 (String!9344) Bool)

(declare-fun inv!9441 (TokenValueInjection!2786) Bool)

(assert (=> b!685636 (= e!430666 (and tp!203502 (inv!9432 (tag!1743 (h!12737 rules!1357))) (inv!9441 (transformation!1481 (h!12737 rules!1357))) e!430652))))

(declare-fun mapIsEmpty!2874 () Bool)

(assert (=> mapIsEmpty!2874 mapRes!2873))

(declare-fun e!430643 () Bool)

(declare-fun e!430655 () Bool)

(assert (=> b!685637 (= e!430643 (and e!430655 tp!203504))))

(declare-fun res!312091 () Bool)

(assert (=> start!65588 (=> (not res!312091) (not e!430641))))

(get-info :version)

(assert (=> start!65588 (= res!312091 ((_ is Lexer!1294) thiss!12183))))

(assert (=> start!65588 e!430641))

(declare-fun inv!9442 (CacheFindLongestMatch!10) Bool)

(assert (=> start!65588 (and (inv!9442 cacheFindLongestMatch!59) e!430653)))

(assert (=> start!65588 (and (inv!9440 input!756) e!430664)))

(declare-fun e!430658 () Bool)

(declare-fun inv!9443 (CacheUp!350) Bool)

(assert (=> start!65588 (and (inv!9443 cacheUp!457) e!430658)))

(declare-fun e!430656 () Bool)

(declare-fun inv!9444 (CacheDown!354) Bool)

(assert (=> start!65588 (and (inv!9444 cacheDown!470) e!430656)))

(assert (=> start!65588 true))

(assert (=> start!65588 e!430645))

(declare-fun b!685638 () Bool)

(declare-fun e!430644 () Bool)

(declare-fun lt!283846 () MutLongMap!722)

(assert (=> b!685638 (= e!430660 (and e!430644 ((_ is LongMap!722) lt!283846)))))

(assert (=> b!685638 (= lt!283846 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))

(declare-fun b!685639 () Bool)

(declare-fun res!312094 () Bool)

(assert (=> b!685639 (=> (not res!312094) (not e!430641))))

(declare-fun valid!605 (CacheUp!350) Bool)

(assert (=> b!685639 (= res!312094 (valid!605 cacheUp!457))))

(assert (=> b!685640 (= e!430652 (and tp!203493 tp!203485))))

(declare-fun mapNonEmpty!2874 () Bool)

(declare-fun tp!203492 () Bool)

(declare-fun tp!203489 () Bool)

(assert (=> mapNonEmpty!2874 (= mapRes!2873 (and tp!203492 tp!203489))))

(declare-fun mapRest!2874 () (Array (_ BitVec 32) List!7354))

(declare-fun mapValue!2874 () List!7354)

(declare-fun mapKey!2873 () (_ BitVec 32))

(assert (=> mapNonEmpty!2874 (= (arr!1240 (_values!1003 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))) (store mapRest!2874 mapKey!2873 mapValue!2874))))

(declare-fun b!685641 () Bool)

(assert (=> b!685641 (= e!430658 e!430650)))

(declare-fun b!685642 () Bool)

(declare-fun res!312092 () Bool)

(assert (=> b!685642 (=> (not res!312092) (not e!430641))))

(declare-fun isEmpty!4832 (List!7350) Bool)

(assert (=> b!685642 (= res!312092 (not (isEmpty!4832 rules!1357)))))

(declare-fun b!685643 () Bool)

(declare-fun e!430642 () Bool)

(assert (=> b!685643 (= e!430642 e!430639)))

(declare-fun b!685644 () Bool)

(assert (=> b!685644 (= e!430656 e!430643)))

(declare-fun b!685645 () Bool)

(declare-fun res!312088 () Bool)

(assert (=> b!685645 (=> (not res!312088) (not e!430641))))

(assert (=> b!685645 (= res!312088 (= (totalInput!1780 cacheFindLongestMatch!59) input!756))))

(declare-fun b!685646 () Bool)

(assert (=> b!685646 (= e!430644 e!430661)))

(declare-fun b!685647 () Bool)

(declare-fun e!430663 () Bool)

(declare-fun lt!283849 () MutLongMap!724)

(assert (=> b!685647 (= e!430657 (and e!430663 ((_ is LongMap!724) lt!283849)))))

(assert (=> b!685647 (= lt!283849 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))

(declare-fun mapNonEmpty!2875 () Bool)

(declare-fun tp!203509 () Bool)

(declare-fun tp!203484 () Bool)

(assert (=> mapNonEmpty!2875 (= mapRes!2874 (and tp!203509 tp!203484))))

(declare-fun mapValue!2873 () List!7352)

(declare-fun mapKey!2875 () (_ BitVec 32))

(declare-fun mapRest!2873 () (Array (_ BitVec 32) List!7352))

(assert (=> mapNonEmpty!2875 (= (arr!1238 (_values!1001 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))) (store mapRest!2873 mapKey!2875 mapValue!2873))))

(declare-fun mapIsEmpty!2875 () Bool)

(assert (=> mapIsEmpty!2875 mapRes!2875))

(declare-fun b!685648 () Bool)

(declare-fun res!312089 () Bool)

(assert (=> b!685648 (=> (not res!312089) (not e!430641))))

(declare-fun valid!606 (CacheDown!354) Bool)

(assert (=> b!685648 (= res!312089 (valid!606 cacheDown!470))))

(declare-fun b!685649 () Bool)

(declare-fun lt!283850 () MutLongMap!723)

(assert (=> b!685649 (= e!430655 (and e!430642 ((_ is LongMap!723) lt!283850)))))

(assert (=> b!685649 (= lt!283850 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))

(declare-fun b!685650 () Bool)

(declare-fun e!430648 () Bool)

(declare-fun tp!203506 () Bool)

(assert (=> b!685650 (= e!430648 (and tp!203506 mapRes!2874))))

(declare-fun condMapEmpty!2874 () Bool)

(declare-fun mapDefault!2875 () List!7352)

(assert (=> b!685650 (= condMapEmpty!2874 (= (arr!1238 (_values!1001 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))) ((as const (Array (_ BitVec 32) List!7352)) mapDefault!2875)))))

(declare-fun b!685651 () Bool)

(assert (=> b!685651 (= e!430663 e!430647)))

(declare-fun tp!203503 () Bool)

(declare-fun tp!203487 () Bool)

(declare-fun array_inv!905 (array!2733) Bool)

(assert (=> b!685652 (= e!430654 (and tp!203495 tp!203487 tp!203503 (array_inv!902 (_keys!1016 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))) (array_inv!905 (_values!1001 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))) e!430648))))

(assert (= (and start!65588 res!312091) b!685642))

(assert (= (and b!685642 res!312092) b!685620))

(assert (= (and b!685620 res!312090) b!685639))

(assert (= (and b!685639 res!312094) b!685648))

(assert (= (and b!685648 res!312089) b!685631))

(assert (= (and b!685631 res!312093) b!685645))

(assert (= (and b!685645 res!312088) b!685632))

(assert (= (and b!685650 condMapEmpty!2874) mapIsEmpty!2873))

(assert (= (and b!685650 (not condMapEmpty!2874)) mapNonEmpty!2875))

(assert (= b!685652 b!685650))

(assert (= b!685634 b!685652))

(assert (= b!685646 b!685634))

(assert (= (and b!685638 ((_ is LongMap!722) (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))) b!685646))

(assert (= b!685624 b!685638))

(assert (= (and b!685626 ((_ is HashMap!694) (cache!1081 cacheFindLongestMatch!59))) b!685624))

(assert (= b!685626 b!685621))

(assert (= start!65588 b!685626))

(assert (= start!65588 b!685635))

(assert (= (and b!685630 condMapEmpty!2875) mapIsEmpty!2874))

(assert (= (and b!685630 (not condMapEmpty!2875)) mapNonEmpty!2874))

(assert (= b!685627 b!685630))

(assert (= b!685629 b!685627))

(assert (= b!685651 b!685629))

(assert (= (and b!685647 ((_ is LongMap!724) (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))) b!685651))

(assert (= b!685633 b!685647))

(assert (= (and b!685641 ((_ is HashMap!696) (cache!1083 cacheUp!457))) b!685633))

(assert (= start!65588 b!685641))

(assert (= (and b!685622 condMapEmpty!2873) mapIsEmpty!2875))

(assert (= (and b!685622 (not condMapEmpty!2873)) mapNonEmpty!2873))

(assert (= b!685628 b!685622))

(assert (= b!685623 b!685628))

(assert (= b!685643 b!685623))

(assert (= (and b!685649 ((_ is LongMap!723) (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))) b!685643))

(assert (= b!685637 b!685649))

(assert (= (and b!685644 ((_ is HashMap!695) (cache!1082 cacheDown!470))) b!685637))

(assert (= start!65588 b!685644))

(assert (= b!685636 b!685640))

(assert (= b!685625 b!685636))

(assert (= (and start!65588 ((_ is Cons!7336) rules!1357)) b!685625))

(declare-fun m!942305 () Bool)

(assert (=> mapNonEmpty!2874 m!942305))

(declare-fun m!942307 () Bool)

(assert (=> b!685621 m!942307))

(declare-fun m!942309 () Bool)

(assert (=> b!685639 m!942309))

(declare-fun m!942311 () Bool)

(assert (=> mapNonEmpty!2875 m!942311))

(declare-fun m!942313 () Bool)

(assert (=> b!685636 m!942313))

(declare-fun m!942315 () Bool)

(assert (=> b!685636 m!942315))

(declare-fun m!942317 () Bool)

(assert (=> b!685627 m!942317))

(declare-fun m!942319 () Bool)

(assert (=> b!685627 m!942319))

(declare-fun m!942321 () Bool)

(assert (=> b!685628 m!942321))

(declare-fun m!942323 () Bool)

(assert (=> b!685628 m!942323))

(declare-fun m!942325 () Bool)

(assert (=> start!65588 m!942325))

(declare-fun m!942327 () Bool)

(assert (=> start!65588 m!942327))

(declare-fun m!942329 () Bool)

(assert (=> start!65588 m!942329))

(declare-fun m!942331 () Bool)

(assert (=> start!65588 m!942331))

(declare-fun m!942333 () Bool)

(assert (=> b!685631 m!942333))

(declare-fun m!942335 () Bool)

(assert (=> b!685648 m!942335))

(declare-fun m!942337 () Bool)

(assert (=> b!685620 m!942337))

(declare-fun m!942339 () Bool)

(assert (=> b!685632 m!942339))

(declare-fun m!942341 () Bool)

(assert (=> b!685632 m!942341))

(declare-fun m!942343 () Bool)

(assert (=> b!685632 m!942343))

(declare-fun m!942345 () Bool)

(assert (=> b!685635 m!942345))

(declare-fun m!942347 () Bool)

(assert (=> b!685626 m!942347))

(declare-fun m!942349 () Bool)

(assert (=> mapNonEmpty!2873 m!942349))

(declare-fun m!942351 () Bool)

(assert (=> b!685642 m!942351))

(declare-fun m!942353 () Bool)

(assert (=> b!685652 m!942353))

(declare-fun m!942355 () Bool)

(assert (=> b!685652 m!942355))

(check-sat (not mapNonEmpty!2874) b_and!63069 (not mapNonEmpty!2875) b_and!63071 b_and!63075 (not b_next!19335) (not b!685622) (not b!685639) (not b!685621) (not b_next!19339) (not b!685625) (not b!685652) (not b_next!19347) (not b_next!19337) (not b!685630) (not b_next!19341) (not b!685650) (not b!685635) b_and!63065 (not b!685620) (not b!685632) b_and!63063 (not b_next!19333) (not b!685648) (not b!685636) (not b_next!19345) (not b!685628) (not b!685626) (not b!685631) b_and!63067 b_and!63077 (not b!685642) (not b_next!19343) b_and!63073 (not mapNonEmpty!2873) (not start!65588) (not b!685627))
(check-sat b_and!63069 (not b_next!19341) b_and!63065 b_and!63071 b_and!63075 (not b_next!19345) b_and!63067 (not b_next!19335) (not b_next!19339) b_and!63077 (not b_next!19347) (not b_next!19337) b_and!63063 (not b_next!19333) (not b_next!19343) b_and!63073)
(get-model)

(declare-fun d!231070 () Bool)

(assert (=> d!231070 (= (array_inv!902 (_keys!1017 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))) (bvsge (size!6021 (_keys!1017 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!685628 d!231070))

(declare-fun d!231072 () Bool)

(assert (=> d!231072 (= (array_inv!904 (_values!1002 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))) (bvsge (size!6023 (_values!1002 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!685628 d!231072))

(declare-fun d!231074 () Bool)

(assert (=> d!231074 (= (inv!9432 (tag!1743 (h!12737 rules!1357))) (= (mod (str.len (value!47851 (tag!1743 (h!12737 rules!1357)))) 2) 0))))

(assert (=> b!685636 d!231074))

(declare-fun d!231076 () Bool)

(declare-fun res!312097 () Bool)

(declare-fun e!430671 () Bool)

(assert (=> d!231076 (=> (not res!312097) (not e!430671))))

(declare-fun semiInverseModEq!565 (Int Int) Bool)

(assert (=> d!231076 (= res!312097 (semiInverseModEq!565 (toChars!2292 (transformation!1481 (h!12737 rules!1357))) (toValue!2433 (transformation!1481 (h!12737 rules!1357)))))))

(assert (=> d!231076 (= (inv!9441 (transformation!1481 (h!12737 rules!1357))) e!430671)))

(declare-fun b!685655 () Bool)

(declare-fun equivClasses!540 (Int Int) Bool)

(assert (=> b!685655 (= e!430671 (equivClasses!540 (toChars!2292 (transformation!1481 (h!12737 rules!1357))) (toValue!2433 (transformation!1481 (h!12737 rules!1357)))))))

(assert (= (and d!231076 res!312097) b!685655))

(declare-fun m!942357 () Bool)

(assert (=> d!231076 m!942357))

(declare-fun m!942359 () Bool)

(assert (=> b!685655 m!942359))

(assert (=> b!685636 d!231076))

(declare-fun d!231078 () Bool)

(assert (=> d!231078 (= (array_inv!902 (_keys!1018 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))) (bvsge (size!6021 (_keys!1018 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))) #b00000000000000000000000000000000))))

(assert (=> b!685627 d!231078))

(declare-fun d!231080 () Bool)

(assert (=> d!231080 (= (array_inv!903 (_values!1003 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))) (bvsge (size!6024 (_values!1003 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))) #b00000000000000000000000000000000))))

(assert (=> b!685627 d!231080))

(declare-fun d!231082 () Bool)

(assert (=> d!231082 (= (array_inv!902 (_keys!1016 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))) (bvsge (size!6021 (_keys!1016 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))) #b00000000000000000000000000000000))))

(assert (=> b!685652 d!231082))

(declare-fun d!231084 () Bool)

(assert (=> d!231084 (= (array_inv!905 (_values!1001 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))) (bvsge (size!6022 (_values!1001 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))) #b00000000000000000000000000000000))))

(assert (=> b!685652 d!231084))

(declare-fun d!231086 () Bool)

(declare-fun c!121202 () Bool)

(assert (=> d!231086 (= c!121202 ((_ is Node!2608) (c!121199 input!756)))))

(declare-fun e!430676 () Bool)

(assert (=> d!231086 (= (inv!9439 (c!121199 input!756)) e!430676)))

(declare-fun b!685662 () Bool)

(declare-fun inv!9445 (Conc!2608) Bool)

(assert (=> b!685662 (= e!430676 (inv!9445 (c!121199 input!756)))))

(declare-fun b!685663 () Bool)

(declare-fun e!430677 () Bool)

(assert (=> b!685663 (= e!430676 e!430677)))

(declare-fun res!312100 () Bool)

(assert (=> b!685663 (= res!312100 (not ((_ is Leaf!3870) (c!121199 input!756))))))

(assert (=> b!685663 (=> res!312100 e!430677)))

(declare-fun b!685664 () Bool)

(declare-fun inv!9446 (Conc!2608) Bool)

(assert (=> b!685664 (= e!430677 (inv!9446 (c!121199 input!756)))))

(assert (= (and d!231086 c!121202) b!685662))

(assert (= (and d!231086 (not c!121202)) b!685663))

(assert (= (and b!685663 (not res!312100)) b!685664))

(declare-fun m!942361 () Bool)

(assert (=> b!685662 m!942361))

(declare-fun m!942363 () Bool)

(assert (=> b!685664 m!942363))

(assert (=> b!685635 d!231086))

(declare-fun d!231088 () Bool)

(declare-fun isBalanced!687 (Conc!2608) Bool)

(assert (=> d!231088 (= (inv!9440 (totalInput!1780 cacheFindLongestMatch!59)) (isBalanced!687 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))))

(declare-fun bs!131386 () Bool)

(assert (= bs!131386 d!231088))

(declare-fun m!942365 () Bool)

(assert (=> bs!131386 m!942365))

(assert (=> b!685626 d!231088))

(declare-fun d!231090 () Bool)

(declare-fun res!312103 () Bool)

(declare-fun e!430680 () Bool)

(assert (=> d!231090 (=> (not res!312103) (not e!430680))))

(assert (=> d!231090 (= res!312103 ((_ is HashMap!694) (cache!1081 cacheFindLongestMatch!59)))))

(assert (=> d!231090 (= (inv!9442 cacheFindLongestMatch!59) e!430680)))

(declare-fun b!685667 () Bool)

(declare-fun validCacheMapFindLongestMatch!1 (MutableMap!694 BalanceConc!5228) Bool)

(assert (=> b!685667 (= e!430680 (validCacheMapFindLongestMatch!1 (cache!1081 cacheFindLongestMatch!59) (totalInput!1780 cacheFindLongestMatch!59)))))

(assert (= (and d!231090 res!312103) b!685667))

(declare-fun m!942367 () Bool)

(assert (=> b!685667 m!942367))

(assert (=> start!65588 d!231090))

(declare-fun d!231092 () Bool)

(assert (=> d!231092 (= (inv!9440 input!756) (isBalanced!687 (c!121199 input!756)))))

(declare-fun bs!131387 () Bool)

(assert (= bs!131387 d!231092))

(declare-fun m!942369 () Bool)

(assert (=> bs!131387 m!942369))

(assert (=> start!65588 d!231092))

(declare-fun d!231094 () Bool)

(declare-fun res!312106 () Bool)

(declare-fun e!430683 () Bool)

(assert (=> d!231094 (=> (not res!312106) (not e!430683))))

(assert (=> d!231094 (= res!312106 ((_ is HashMap!696) (cache!1083 cacheUp!457)))))

(assert (=> d!231094 (= (inv!9443 cacheUp!457) e!430683)))

(declare-fun b!685670 () Bool)

(declare-fun validCacheMapUp!55 (MutableMap!696) Bool)

(assert (=> b!685670 (= e!430683 (validCacheMapUp!55 (cache!1083 cacheUp!457)))))

(assert (= (and d!231094 res!312106) b!685670))

(declare-fun m!942371 () Bool)

(assert (=> b!685670 m!942371))

(assert (=> start!65588 d!231094))

(declare-fun d!231096 () Bool)

(declare-fun res!312109 () Bool)

(declare-fun e!430686 () Bool)

(assert (=> d!231096 (=> (not res!312109) (not e!430686))))

(assert (=> d!231096 (= res!312109 ((_ is HashMap!695) (cache!1082 cacheDown!470)))))

(assert (=> d!231096 (= (inv!9444 cacheDown!470) e!430686)))

(declare-fun b!685673 () Bool)

(declare-fun validCacheMapDown!55 (MutableMap!695) Bool)

(assert (=> b!685673 (= e!430686 (validCacheMapDown!55 (cache!1082 cacheDown!470)))))

(assert (= (and d!231096 res!312109) b!685673))

(declare-fun m!942373 () Bool)

(assert (=> b!685673 m!942373))

(assert (=> start!65588 d!231096))

(declare-fun d!231098 () Bool)

(assert (=> d!231098 (= (isEmpty!4832 rules!1357) ((_ is Nil!7336) rules!1357))))

(assert (=> b!685642 d!231098))

(declare-fun b!685684 () Bool)

(declare-fun res!312115 () Bool)

(declare-fun e!430692 () Bool)

(assert (=> b!685684 (=> (not res!312115) (not e!430692))))

(declare-fun lt!283853 () List!7349)

(declare-fun size!6025 (List!7349) Int)

(assert (=> b!685684 (= res!312115 (= (size!6025 lt!283853) (+ (size!6025 lt!283847) (size!6025 lt!283848))))))

(declare-fun b!685683 () Bool)

(declare-fun e!430691 () List!7349)

(assert (=> b!685683 (= e!430691 (Cons!7335 (h!12736 lt!283847) (++!1931 (t!87145 lt!283847) lt!283848)))))

(declare-fun b!685682 () Bool)

(assert (=> b!685682 (= e!430691 lt!283848)))

(declare-fun b!685685 () Bool)

(assert (=> b!685685 (= e!430692 (or (not (= lt!283848 Nil!7335)) (= lt!283853 lt!283847)))))

(declare-fun d!231100 () Bool)

(assert (=> d!231100 e!430692))

(declare-fun res!312114 () Bool)

(assert (=> d!231100 (=> (not res!312114) (not e!430692))))

(declare-fun content!1179 (List!7349) (InoxSet C!4236))

(assert (=> d!231100 (= res!312114 (= (content!1179 lt!283853) ((_ map or) (content!1179 lt!283847) (content!1179 lt!283848))))))

(assert (=> d!231100 (= lt!283853 e!430691)))

(declare-fun c!121205 () Bool)

(assert (=> d!231100 (= c!121205 ((_ is Nil!7335) lt!283847))))

(assert (=> d!231100 (= (++!1931 lt!283847 lt!283848) lt!283853)))

(assert (= (and d!231100 c!121205) b!685682))

(assert (= (and d!231100 (not c!121205)) b!685683))

(assert (= (and d!231100 res!312114) b!685684))

(assert (= (and b!685684 res!312115) b!685685))

(declare-fun m!942375 () Bool)

(assert (=> b!685684 m!942375))

(declare-fun m!942377 () Bool)

(assert (=> b!685684 m!942377))

(declare-fun m!942379 () Bool)

(assert (=> b!685684 m!942379))

(declare-fun m!942381 () Bool)

(assert (=> b!685683 m!942381))

(declare-fun m!942383 () Bool)

(assert (=> d!231100 m!942383))

(declare-fun m!942385 () Bool)

(assert (=> d!231100 m!942385))

(declare-fun m!942387 () Bool)

(assert (=> d!231100 m!942387))

(assert (=> b!685632 d!231100))

(declare-fun d!231102 () Bool)

(declare-fun list!3100 (Conc!2608) List!7349)

(assert (=> d!231102 (= (list!3099 input!756) (list!3100 (c!121199 input!756)))))

(declare-fun bs!131388 () Bool)

(assert (= bs!131388 d!231102))

(declare-fun m!942389 () Bool)

(assert (=> bs!131388 m!942389))

(assert (=> b!685632 d!231102))

(declare-fun d!231104 () Bool)

(assert (=> d!231104 (= (list!3099 (BalanceConc!5229 Empty!2608)) (list!3100 (c!121199 (BalanceConc!5229 Empty!2608))))))

(declare-fun bs!131389 () Bool)

(assert (= bs!131389 d!231104))

(declare-fun m!942391 () Bool)

(assert (=> bs!131389 m!942391))

(assert (=> b!685632 d!231104))

(declare-fun d!231106 () Bool)

(assert (=> d!231106 (= (valid!606 cacheDown!470) (validCacheMapDown!55 (cache!1082 cacheDown!470)))))

(declare-fun bs!131390 () Bool)

(assert (= bs!131390 d!231106))

(assert (=> bs!131390 m!942373))

(assert (=> b!685648 d!231106))

(declare-fun d!231108 () Bool)

(assert (=> d!231108 (= (valid!605 cacheUp!457) (validCacheMapUp!55 (cache!1083 cacheUp!457)))))

(declare-fun bs!131391 () Bool)

(assert (= bs!131391 d!231108))

(assert (=> bs!131391 m!942371))

(assert (=> b!685639 d!231108))

(declare-fun d!231110 () Bool)

(declare-fun c!121206 () Bool)

(assert (=> d!231110 (= c!121206 ((_ is Node!2608) (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))))

(declare-fun e!430693 () Bool)

(assert (=> d!231110 (= (inv!9439 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) e!430693)))

(declare-fun b!685686 () Bool)

(assert (=> b!685686 (= e!430693 (inv!9445 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))))

(declare-fun b!685687 () Bool)

(declare-fun e!430694 () Bool)

(assert (=> b!685687 (= e!430693 e!430694)))

(declare-fun res!312116 () Bool)

(assert (=> b!685687 (= res!312116 (not ((_ is Leaf!3870) (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))

(assert (=> b!685687 (=> res!312116 e!430694)))

(declare-fun b!685688 () Bool)

(assert (=> b!685688 (= e!430694 (inv!9446 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))))

(assert (= (and d!231110 c!121206) b!685686))

(assert (= (and d!231110 (not c!121206)) b!685687))

(assert (= (and b!685687 (not res!312116)) b!685688))

(declare-fun m!942393 () Bool)

(assert (=> b!685686 m!942393))

(declare-fun m!942395 () Bool)

(assert (=> b!685688 m!942395))

(assert (=> b!685621 d!231110))

(declare-fun d!231112 () Bool)

(assert (=> d!231112 (= (valid!604 cacheFindLongestMatch!59) (validCacheMapFindLongestMatch!1 (cache!1081 cacheFindLongestMatch!59) (totalInput!1780 cacheFindLongestMatch!59)))))

(declare-fun bs!131392 () Bool)

(assert (= bs!131392 d!231112))

(assert (=> bs!131392 m!942367))

(assert (=> b!685631 d!231112))

(declare-fun d!231114 () Bool)

(declare-fun res!312119 () Bool)

(declare-fun e!430697 () Bool)

(assert (=> d!231114 (=> (not res!312119) (not e!430697))))

(declare-fun rulesValid!522 (LexerInterface!1296 List!7350) Bool)

(assert (=> d!231114 (= res!312119 (rulesValid!522 thiss!12183 rules!1357))))

(assert (=> d!231114 (= (rulesInvariant!1231 thiss!12183 rules!1357) e!430697)))

(declare-fun b!685691 () Bool)

(declare-datatypes ((List!7355 0))(
  ( (Nil!7341) (Cons!7341 (h!12742 String!9344) (t!87151 List!7355)) )
))
(declare-fun noDuplicateTag!522 (LexerInterface!1296 List!7350 List!7355) Bool)

(assert (=> b!685691 (= e!430697 (noDuplicateTag!522 thiss!12183 rules!1357 Nil!7341))))

(assert (= (and d!231114 res!312119) b!685691))

(declare-fun m!942397 () Bool)

(assert (=> d!231114 m!942397))

(declare-fun m!942399 () Bool)

(assert (=> b!685691 m!942399))

(assert (=> b!685620 d!231114))

(declare-fun e!430706 () Bool)

(assert (=> b!685628 (= tp!203508 e!430706)))

(declare-fun b!685700 () Bool)

(declare-fun tp!203521 () Bool)

(declare-fun tp_is_empty!3635 () Bool)

(declare-fun tp!203525 () Bool)

(declare-fun setRes!3299 () Bool)

(declare-fun e!430704 () Bool)

(declare-fun inv!9447 (Context!454) Bool)

(assert (=> b!685700 (= e!430706 (and tp!203525 (inv!9447 (_2!4226 (_1!4227 (h!12740 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))))) e!430704 tp_is_empty!3635 setRes!3299 tp!203521))))

(declare-fun condSetEmpty!3299 () Bool)

(assert (=> b!685700 (= condSetEmpty!3299 (= (_2!4227 (h!12740 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!685701 () Bool)

(declare-fun tp!203522 () Bool)

(assert (=> b!685701 (= e!430704 tp!203522)))

(declare-fun b!685702 () Bool)

(declare-fun e!430705 () Bool)

(declare-fun tp!203523 () Bool)

(assert (=> b!685702 (= e!430705 tp!203523)))

(declare-fun setIsEmpty!3299 () Bool)

(assert (=> setIsEmpty!3299 setRes!3299))

(declare-fun setNonEmpty!3299 () Bool)

(declare-fun tp!203524 () Bool)

(declare-fun setElem!3299 () Context!454)

(assert (=> setNonEmpty!3299 (= setRes!3299 (and tp!203524 (inv!9447 setElem!3299) e!430705))))

(declare-fun setRest!3299 () (InoxSet Context!454))

(assert (=> setNonEmpty!3299 (= (_2!4227 (h!12740 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3299 true) setRest!3299))))

(assert (= b!685700 b!685701))

(assert (= (and b!685700 condSetEmpty!3299) setIsEmpty!3299))

(assert (= (and b!685700 (not condSetEmpty!3299)) setNonEmpty!3299))

(assert (= setNonEmpty!3299 b!685702))

(assert (= (and b!685628 ((_ is Cons!7339) (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))) b!685700))

(declare-fun m!942401 () Bool)

(assert (=> b!685700 m!942401))

(declare-fun m!942403 () Bool)

(assert (=> setNonEmpty!3299 m!942403))

(declare-fun e!430709 () Bool)

(assert (=> b!685628 (= tp!203491 e!430709)))

(declare-fun b!685703 () Bool)

(declare-fun e!430707 () Bool)

(declare-fun setRes!3300 () Bool)

(declare-fun tp!203530 () Bool)

(declare-fun tp!203526 () Bool)

(assert (=> b!685703 (= e!430709 (and tp!203530 (inv!9447 (_2!4226 (_1!4227 (h!12740 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))))) e!430707 tp_is_empty!3635 setRes!3300 tp!203526))))

(declare-fun condSetEmpty!3300 () Bool)

(assert (=> b!685703 (= condSetEmpty!3300 (= (_2!4227 (h!12740 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!685704 () Bool)

(declare-fun tp!203527 () Bool)

(assert (=> b!685704 (= e!430707 tp!203527)))

(declare-fun b!685705 () Bool)

(declare-fun e!430708 () Bool)

(declare-fun tp!203528 () Bool)

(assert (=> b!685705 (= e!430708 tp!203528)))

(declare-fun setIsEmpty!3300 () Bool)

(assert (=> setIsEmpty!3300 setRes!3300))

(declare-fun tp!203529 () Bool)

(declare-fun setNonEmpty!3300 () Bool)

(declare-fun setElem!3300 () Context!454)

(assert (=> setNonEmpty!3300 (= setRes!3300 (and tp!203529 (inv!9447 setElem!3300) e!430708))))

(declare-fun setRest!3300 () (InoxSet Context!454))

(assert (=> setNonEmpty!3300 (= (_2!4227 (h!12740 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3300 true) setRest!3300))))

(assert (= b!685703 b!685704))

(assert (= (and b!685703 condSetEmpty!3300) setIsEmpty!3300))

(assert (= (and b!685703 (not condSetEmpty!3300)) setNonEmpty!3300))

(assert (= setNonEmpty!3300 b!685705))

(assert (= (and b!685628 ((_ is Cons!7339) (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))) b!685703))

(declare-fun m!942405 () Bool)

(assert (=> b!685703 m!942405))

(declare-fun m!942407 () Bool)

(assert (=> setNonEmpty!3300 m!942407))

(declare-fun b!685718 () Bool)

(declare-fun e!430712 () Bool)

(declare-fun tp!203542 () Bool)

(assert (=> b!685718 (= e!430712 tp!203542)))

(declare-fun b!685717 () Bool)

(declare-fun tp!203543 () Bool)

(declare-fun tp!203544 () Bool)

(assert (=> b!685717 (= e!430712 (and tp!203543 tp!203544))))

(declare-fun b!685716 () Bool)

(assert (=> b!685716 (= e!430712 tp_is_empty!3635)))

(assert (=> b!685636 (= tp!203502 e!430712)))

(declare-fun b!685719 () Bool)

(declare-fun tp!203545 () Bool)

(declare-fun tp!203541 () Bool)

(assert (=> b!685719 (= e!430712 (and tp!203545 tp!203541))))

(assert (= (and b!685636 ((_ is ElementMatch!1817) (regex!1481 (h!12737 rules!1357)))) b!685716))

(assert (= (and b!685636 ((_ is Concat!3342) (regex!1481 (h!12737 rules!1357)))) b!685717))

(assert (= (and b!685636 ((_ is Star!1817) (regex!1481 (h!12737 rules!1357)))) b!685718))

(assert (= (and b!685636 ((_ is Union!1817) (regex!1481 (h!12737 rules!1357)))) b!685719))

(declare-fun e!430721 () Bool)

(assert (=> b!685627 (= tp!203505 e!430721)))

(declare-fun b!685728 () Bool)

(declare-fun e!430720 () Bool)

(declare-fun tp!203556 () Bool)

(assert (=> b!685728 (= e!430720 tp!203556)))

(declare-fun tp!203554 () Bool)

(declare-fun setRes!3303 () Bool)

(declare-fun setElem!3303 () Context!454)

(declare-fun setNonEmpty!3303 () Bool)

(assert (=> setNonEmpty!3303 (= setRes!3303 (and tp!203554 (inv!9447 setElem!3303) e!430720))))

(declare-fun setRest!3303 () (InoxSet Context!454))

(assert (=> setNonEmpty!3303 (= (_2!4229 (h!12741 (zeroValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3303 true) setRest!3303))))

(declare-fun setIsEmpty!3303 () Bool)

(assert (=> setIsEmpty!3303 setRes!3303))

(declare-fun tp!203555 () Bool)

(declare-fun b!685729 () Bool)

(declare-fun e!430719 () Bool)

(assert (=> b!685729 (= e!430721 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 (zeroValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))))) e!430719 tp_is_empty!3635 setRes!3303 tp!203555))))

(declare-fun condSetEmpty!3303 () Bool)

(assert (=> b!685729 (= condSetEmpty!3303 (= (_2!4229 (h!12741 (zeroValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!685730 () Bool)

(declare-fun tp!203557 () Bool)

(assert (=> b!685730 (= e!430719 tp!203557)))

(assert (= b!685729 b!685730))

(assert (= (and b!685729 condSetEmpty!3303) setIsEmpty!3303))

(assert (= (and b!685729 (not condSetEmpty!3303)) setNonEmpty!3303))

(assert (= setNonEmpty!3303 b!685728))

(assert (= (and b!685627 ((_ is Cons!7340) (zeroValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))) b!685729))

(declare-fun m!942409 () Bool)

(assert (=> setNonEmpty!3303 m!942409))

(declare-fun m!942411 () Bool)

(assert (=> b!685729 m!942411))

(declare-fun e!430724 () Bool)

(assert (=> b!685627 (= tp!203500 e!430724)))

(declare-fun b!685731 () Bool)

(declare-fun e!430723 () Bool)

(declare-fun tp!203560 () Bool)

(assert (=> b!685731 (= e!430723 tp!203560)))

(declare-fun setRes!3304 () Bool)

(declare-fun setElem!3304 () Context!454)

(declare-fun setNonEmpty!3304 () Bool)

(declare-fun tp!203558 () Bool)

(assert (=> setNonEmpty!3304 (= setRes!3304 (and tp!203558 (inv!9447 setElem!3304) e!430723))))

(declare-fun setRest!3304 () (InoxSet Context!454))

(assert (=> setNonEmpty!3304 (= (_2!4229 (h!12741 (minValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3304 true) setRest!3304))))

(declare-fun setIsEmpty!3304 () Bool)

(assert (=> setIsEmpty!3304 setRes!3304))

(declare-fun tp!203559 () Bool)

(declare-fun b!685732 () Bool)

(declare-fun e!430722 () Bool)

(assert (=> b!685732 (= e!430724 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 (minValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))))) e!430722 tp_is_empty!3635 setRes!3304 tp!203559))))

(declare-fun condSetEmpty!3304 () Bool)

(assert (=> b!685732 (= condSetEmpty!3304 (= (_2!4229 (h!12741 (minValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!685733 () Bool)

(declare-fun tp!203561 () Bool)

(assert (=> b!685733 (= e!430722 tp!203561)))

(assert (= b!685732 b!685733))

(assert (= (and b!685732 condSetEmpty!3304) setIsEmpty!3304))

(assert (= (and b!685732 (not condSetEmpty!3304)) setNonEmpty!3304))

(assert (= setNonEmpty!3304 b!685731))

(assert (= (and b!685627 ((_ is Cons!7340) (minValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))) b!685732))

(declare-fun m!942413 () Bool)

(assert (=> setNonEmpty!3304 m!942413))

(declare-fun m!942415 () Bool)

(assert (=> b!685732 m!942415))

(declare-fun e!430730 () Bool)

(assert (=> b!685652 (= tp!203487 e!430730)))

(declare-fun b!685740 () Bool)

(declare-fun setRes!3307 () Bool)

(declare-fun tp!203570 () Bool)

(assert (=> b!685740 (= e!430730 (and setRes!3307 tp!203570))))

(declare-fun condSetEmpty!3307 () Bool)

(assert (=> b!685740 (= condSetEmpty!3307 (= (_1!4224 (_1!4225 (h!12739 (zeroValue!979 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun setIsEmpty!3307 () Bool)

(assert (=> setIsEmpty!3307 setRes!3307))

(declare-fun b!685741 () Bool)

(declare-fun e!430729 () Bool)

(declare-fun tp!203568 () Bool)

(assert (=> b!685741 (= e!430729 tp!203568)))

(declare-fun setNonEmpty!3307 () Bool)

(declare-fun tp!203569 () Bool)

(declare-fun setElem!3307 () Context!454)

(assert (=> setNonEmpty!3307 (= setRes!3307 (and tp!203569 (inv!9447 setElem!3307) e!430729))))

(declare-fun setRest!3307 () (InoxSet Context!454))

(assert (=> setNonEmpty!3307 (= (_1!4224 (_1!4225 (h!12739 (zeroValue!979 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3307 true) setRest!3307))))

(assert (= (and b!685740 condSetEmpty!3307) setIsEmpty!3307))

(assert (= (and b!685740 (not condSetEmpty!3307)) setNonEmpty!3307))

(assert (= setNonEmpty!3307 b!685741))

(assert (= (and b!685652 ((_ is Cons!7338) (zeroValue!979 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59)))))))) b!685740))

(declare-fun m!942417 () Bool)

(assert (=> setNonEmpty!3307 m!942417))

(declare-fun e!430732 () Bool)

(assert (=> b!685652 (= tp!203503 e!430732)))

(declare-fun b!685742 () Bool)

(declare-fun setRes!3308 () Bool)

(declare-fun tp!203573 () Bool)

(assert (=> b!685742 (= e!430732 (and setRes!3308 tp!203573))))

(declare-fun condSetEmpty!3308 () Bool)

(assert (=> b!685742 (= condSetEmpty!3308 (= (_1!4224 (_1!4225 (h!12739 (minValue!979 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun setIsEmpty!3308 () Bool)

(assert (=> setIsEmpty!3308 setRes!3308))

(declare-fun b!685743 () Bool)

(declare-fun e!430731 () Bool)

(declare-fun tp!203571 () Bool)

(assert (=> b!685743 (= e!430731 tp!203571)))

(declare-fun setNonEmpty!3308 () Bool)

(declare-fun tp!203572 () Bool)

(declare-fun setElem!3308 () Context!454)

(assert (=> setNonEmpty!3308 (= setRes!3308 (and tp!203572 (inv!9447 setElem!3308) e!430731))))

(declare-fun setRest!3308 () (InoxSet Context!454))

(assert (=> setNonEmpty!3308 (= (_1!4224 (_1!4225 (h!12739 (minValue!979 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3308 true) setRest!3308))))

(assert (= (and b!685742 condSetEmpty!3308) setIsEmpty!3308))

(assert (= (and b!685742 (not condSetEmpty!3308)) setNonEmpty!3308))

(assert (= setNonEmpty!3308 b!685743))

(assert (= (and b!685652 ((_ is Cons!7338) (minValue!979 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59)))))))) b!685742))

(declare-fun m!942419 () Bool)

(assert (=> setNonEmpty!3308 m!942419))

(declare-fun b!685754 () Bool)

(declare-fun b_free!19285 () Bool)

(declare-fun b_next!19349 () Bool)

(assert (=> b!685754 (= b_free!19285 (not b_next!19349))))

(declare-fun tp!203585 () Bool)

(declare-fun b_and!63079 () Bool)

(assert (=> b!685754 (= tp!203585 b_and!63079)))

(declare-fun b_free!19287 () Bool)

(declare-fun b_next!19351 () Bool)

(assert (=> b!685754 (= b_free!19287 (not b_next!19351))))

(declare-fun tp!203583 () Bool)

(declare-fun b_and!63081 () Bool)

(assert (=> b!685754 (= tp!203583 b_and!63081)))

(declare-fun e!430744 () Bool)

(assert (=> b!685754 (= e!430744 (and tp!203585 tp!203583))))

(declare-fun e!430743 () Bool)

(declare-fun b!685753 () Bool)

(declare-fun tp!203582 () Bool)

(assert (=> b!685753 (= e!430743 (and tp!203582 (inv!9432 (tag!1743 (h!12737 (t!87146 rules!1357)))) (inv!9441 (transformation!1481 (h!12737 (t!87146 rules!1357)))) e!430744))))

(declare-fun b!685752 () Bool)

(declare-fun e!430741 () Bool)

(declare-fun tp!203584 () Bool)

(assert (=> b!685752 (= e!430741 (and e!430743 tp!203584))))

(assert (=> b!685625 (= tp!203499 e!430741)))

(assert (= b!685753 b!685754))

(assert (= b!685752 b!685753))

(assert (= (and b!685625 ((_ is Cons!7336) (t!87146 rules!1357))) b!685752))

(declare-fun m!942421 () Bool)

(assert (=> b!685753 m!942421))

(declare-fun m!942423 () Bool)

(assert (=> b!685753 m!942423))

(declare-fun b!685763 () Bool)

(declare-fun e!430750 () Bool)

(declare-fun tp!203593 () Bool)

(declare-fun tp!203592 () Bool)

(assert (=> b!685763 (= e!430750 (and (inv!9439 (left!5939 (c!121199 input!756))) tp!203593 (inv!9439 (right!6269 (c!121199 input!756))) tp!203592))))

(declare-fun b!685765 () Bool)

(declare-fun e!430749 () Bool)

(declare-fun tp!203594 () Bool)

(assert (=> b!685765 (= e!430749 tp!203594)))

(declare-fun b!685764 () Bool)

(declare-fun inv!9448 (IArray!5217) Bool)

(assert (=> b!685764 (= e!430750 (and (inv!9448 (xs!5257 (c!121199 input!756))) e!430749))))

(assert (=> b!685635 (= tp!203488 (and (inv!9439 (c!121199 input!756)) e!430750))))

(assert (= (and b!685635 ((_ is Node!2608) (c!121199 input!756))) b!685763))

(assert (= b!685764 b!685765))

(assert (= (and b!685635 ((_ is Leaf!3870) (c!121199 input!756))) b!685764))

(declare-fun m!942425 () Bool)

(assert (=> b!685763 m!942425))

(declare-fun m!942427 () Bool)

(assert (=> b!685763 m!942427))

(declare-fun m!942429 () Bool)

(assert (=> b!685764 m!942429))

(assert (=> b!685635 m!942345))

(declare-fun e!430752 () Bool)

(assert (=> b!685650 (= tp!203506 e!430752)))

(declare-fun b!685766 () Bool)

(declare-fun setRes!3309 () Bool)

(declare-fun tp!203597 () Bool)

(assert (=> b!685766 (= e!430752 (and setRes!3309 tp!203597))))

(declare-fun condSetEmpty!3309 () Bool)

(assert (=> b!685766 (= condSetEmpty!3309 (= (_1!4224 (_1!4225 (h!12739 mapDefault!2875))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun setIsEmpty!3309 () Bool)

(assert (=> setIsEmpty!3309 setRes!3309))

(declare-fun b!685767 () Bool)

(declare-fun e!430751 () Bool)

(declare-fun tp!203595 () Bool)

(assert (=> b!685767 (= e!430751 tp!203595)))

(declare-fun setNonEmpty!3309 () Bool)

(declare-fun setElem!3309 () Context!454)

(declare-fun tp!203596 () Bool)

(assert (=> setNonEmpty!3309 (= setRes!3309 (and tp!203596 (inv!9447 setElem!3309) e!430751))))

(declare-fun setRest!3309 () (InoxSet Context!454))

(assert (=> setNonEmpty!3309 (= (_1!4224 (_1!4225 (h!12739 mapDefault!2875))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3309 true) setRest!3309))))

(assert (= (and b!685766 condSetEmpty!3309) setIsEmpty!3309))

(assert (= (and b!685766 (not condSetEmpty!3309)) setNonEmpty!3309))

(assert (= setNonEmpty!3309 b!685767))

(assert (= (and b!685650 ((_ is Cons!7338) mapDefault!2875)) b!685766))

(declare-fun m!942431 () Bool)

(assert (=> setNonEmpty!3309 m!942431))

(declare-fun b!685782 () Bool)

(declare-fun e!430769 () Bool)

(declare-fun tp!203627 () Bool)

(assert (=> b!685782 (= e!430769 tp!203627)))

(declare-fun setIsEmpty!3314 () Bool)

(declare-fun setRes!3314 () Bool)

(assert (=> setIsEmpty!3314 setRes!3314))

(declare-fun b!685783 () Bool)

(declare-fun e!430766 () Bool)

(declare-fun tp!203622 () Bool)

(assert (=> b!685783 (= e!430766 tp!203622)))

(declare-fun b!685784 () Bool)

(declare-fun e!430768 () Bool)

(declare-fun tp!203626 () Bool)

(assert (=> b!685784 (= e!430768 tp!203626)))

(declare-fun setIsEmpty!3315 () Bool)

(declare-fun setRes!3315 () Bool)

(assert (=> setIsEmpty!3315 setRes!3315))

(declare-fun b!685785 () Bool)

(declare-fun tp!203624 () Bool)

(declare-fun e!430765 () Bool)

(declare-fun mapDefault!2878 () List!7353)

(declare-fun tp!203621 () Bool)

(assert (=> b!685785 (= e!430765 (and tp!203621 (inv!9447 (_2!4226 (_1!4227 (h!12740 mapDefault!2878)))) e!430768 tp_is_empty!3635 setRes!3314 tp!203624))))

(declare-fun condSetEmpty!3314 () Bool)

(assert (=> b!685785 (= condSetEmpty!3314 (= (_2!4227 (h!12740 mapDefault!2878)) ((as const (Array Context!454 Bool)) false)))))

(declare-fun condMapEmpty!2878 () Bool)

(assert (=> mapNonEmpty!2873 (= condMapEmpty!2878 (= mapRest!2875 ((as const (Array (_ BitVec 32) List!7353)) mapDefault!2878)))))

(declare-fun mapRes!2878 () Bool)

(assert (=> mapNonEmpty!2873 (= tp!203486 (and e!430765 mapRes!2878))))

(declare-fun mapNonEmpty!2878 () Bool)

(declare-fun tp!203628 () Bool)

(declare-fun e!430770 () Bool)

(assert (=> mapNonEmpty!2878 (= mapRes!2878 (and tp!203628 e!430770))))

(declare-fun mapKey!2878 () (_ BitVec 32))

(declare-fun mapValue!2878 () List!7353)

(declare-fun mapRest!2878 () (Array (_ BitVec 32) List!7353))

(assert (=> mapNonEmpty!2878 (= mapRest!2875 (store mapRest!2878 mapKey!2878 mapValue!2878))))

(declare-fun mapIsEmpty!2878 () Bool)

(assert (=> mapIsEmpty!2878 mapRes!2878))

(declare-fun tp!203620 () Bool)

(declare-fun setElem!3314 () Context!454)

(declare-fun setNonEmpty!3314 () Bool)

(assert (=> setNonEmpty!3314 (= setRes!3314 (and tp!203620 (inv!9447 setElem!3314) e!430769))))

(declare-fun setRest!3314 () (InoxSet Context!454))

(assert (=> setNonEmpty!3314 (= (_2!4227 (h!12740 mapDefault!2878)) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3314 true) setRest!3314))))

(declare-fun e!430767 () Bool)

(declare-fun setElem!3315 () Context!454)

(declare-fun setNonEmpty!3315 () Bool)

(declare-fun tp!203629 () Bool)

(assert (=> setNonEmpty!3315 (= setRes!3315 (and tp!203629 (inv!9447 setElem!3315) e!430767))))

(declare-fun setRest!3315 () (InoxSet Context!454))

(assert (=> setNonEmpty!3315 (= (_2!4227 (h!12740 mapValue!2878)) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3315 true) setRest!3315))))

(declare-fun tp!203630 () Bool)

(declare-fun tp!203623 () Bool)

(declare-fun b!685786 () Bool)

(assert (=> b!685786 (= e!430770 (and tp!203630 (inv!9447 (_2!4226 (_1!4227 (h!12740 mapValue!2878)))) e!430766 tp_is_empty!3635 setRes!3315 tp!203623))))

(declare-fun condSetEmpty!3315 () Bool)

(assert (=> b!685786 (= condSetEmpty!3315 (= (_2!4227 (h!12740 mapValue!2878)) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!685787 () Bool)

(declare-fun tp!203625 () Bool)

(assert (=> b!685787 (= e!430767 tp!203625)))

(assert (= (and mapNonEmpty!2873 condMapEmpty!2878) mapIsEmpty!2878))

(assert (= (and mapNonEmpty!2873 (not condMapEmpty!2878)) mapNonEmpty!2878))

(assert (= b!685786 b!685783))

(assert (= (and b!685786 condSetEmpty!3315) setIsEmpty!3315))

(assert (= (and b!685786 (not condSetEmpty!3315)) setNonEmpty!3315))

(assert (= setNonEmpty!3315 b!685787))

(assert (= (and mapNonEmpty!2878 ((_ is Cons!7339) mapValue!2878)) b!685786))

(assert (= b!685785 b!685784))

(assert (= (and b!685785 condSetEmpty!3314) setIsEmpty!3314))

(assert (= (and b!685785 (not condSetEmpty!3314)) setNonEmpty!3314))

(assert (= setNonEmpty!3314 b!685782))

(assert (= (and mapNonEmpty!2873 ((_ is Cons!7339) mapDefault!2878)) b!685785))

(declare-fun m!942433 () Bool)

(assert (=> b!685785 m!942433))

(declare-fun m!942435 () Bool)

(assert (=> setNonEmpty!3315 m!942435))

(declare-fun m!942437 () Bool)

(assert (=> b!685786 m!942437))

(declare-fun m!942439 () Bool)

(assert (=> setNonEmpty!3314 m!942439))

(declare-fun m!942441 () Bool)

(assert (=> mapNonEmpty!2878 m!942441))

(declare-fun e!430773 () Bool)

(assert (=> mapNonEmpty!2873 (= tp!203507 e!430773)))

(declare-fun b!685788 () Bool)

(declare-fun tp!203631 () Bool)

(declare-fun tp!203635 () Bool)

(declare-fun e!430771 () Bool)

(declare-fun setRes!3316 () Bool)

(assert (=> b!685788 (= e!430773 (and tp!203635 (inv!9447 (_2!4226 (_1!4227 (h!12740 mapValue!2875)))) e!430771 tp_is_empty!3635 setRes!3316 tp!203631))))

(declare-fun condSetEmpty!3316 () Bool)

(assert (=> b!685788 (= condSetEmpty!3316 (= (_2!4227 (h!12740 mapValue!2875)) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!685789 () Bool)

(declare-fun tp!203632 () Bool)

(assert (=> b!685789 (= e!430771 tp!203632)))

(declare-fun b!685790 () Bool)

(declare-fun e!430772 () Bool)

(declare-fun tp!203633 () Bool)

(assert (=> b!685790 (= e!430772 tp!203633)))

(declare-fun setIsEmpty!3316 () Bool)

(assert (=> setIsEmpty!3316 setRes!3316))

(declare-fun setElem!3316 () Context!454)

(declare-fun tp!203634 () Bool)

(declare-fun setNonEmpty!3316 () Bool)

(assert (=> setNonEmpty!3316 (= setRes!3316 (and tp!203634 (inv!9447 setElem!3316) e!430772))))

(declare-fun setRest!3316 () (InoxSet Context!454))

(assert (=> setNonEmpty!3316 (= (_2!4227 (h!12740 mapValue!2875)) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3316 true) setRest!3316))))

(assert (= b!685788 b!685789))

(assert (= (and b!685788 condSetEmpty!3316) setIsEmpty!3316))

(assert (= (and b!685788 (not condSetEmpty!3316)) setNonEmpty!3316))

(assert (= setNonEmpty!3316 b!685790))

(assert (= (and mapNonEmpty!2873 ((_ is Cons!7339) mapValue!2875)) b!685788))

(declare-fun m!942443 () Bool)

(assert (=> b!685788 m!942443))

(declare-fun m!942445 () Bool)

(assert (=> setNonEmpty!3316 m!942445))

(declare-fun b!685805 () Bool)

(declare-fun e!430787 () Bool)

(declare-fun tp!203656 () Bool)

(assert (=> b!685805 (= e!430787 tp!203656)))

(declare-fun mapNonEmpty!2881 () Bool)

(declare-fun mapRes!2881 () Bool)

(declare-fun tp!203660 () Bool)

(declare-fun e!430786 () Bool)

(assert (=> mapNonEmpty!2881 (= mapRes!2881 (and tp!203660 e!430786))))

(declare-fun mapKey!2881 () (_ BitVec 32))

(declare-fun mapRest!2881 () (Array (_ BitVec 32) List!7354))

(declare-fun mapValue!2881 () List!7354)

(assert (=> mapNonEmpty!2881 (= mapRest!2874 (store mapRest!2881 mapKey!2881 mapValue!2881))))

(declare-fun mapIsEmpty!2881 () Bool)

(assert (=> mapIsEmpty!2881 mapRes!2881))

(declare-fun setIsEmpty!3321 () Bool)

(declare-fun setRes!3322 () Bool)

(assert (=> setIsEmpty!3321 setRes!3322))

(declare-fun condMapEmpty!2881 () Bool)

(declare-fun mapDefault!2881 () List!7354)

(assert (=> mapNonEmpty!2874 (= condMapEmpty!2881 (= mapRest!2874 ((as const (Array (_ BitVec 32) List!7354)) mapDefault!2881)))))

(declare-fun e!430788 () Bool)

(assert (=> mapNonEmpty!2874 (= tp!203492 (and e!430788 mapRes!2881))))

(declare-fun b!685806 () Bool)

(declare-fun e!430791 () Bool)

(declare-fun tp!203655 () Bool)

(assert (=> b!685806 (= e!430791 tp!203655)))

(declare-fun b!685807 () Bool)

(declare-fun e!430790 () Bool)

(declare-fun tp!203658 () Bool)

(assert (=> b!685807 (= e!430790 tp!203658)))

(declare-fun setIsEmpty!3322 () Bool)

(declare-fun setRes!3321 () Bool)

(assert (=> setIsEmpty!3322 setRes!3321))

(declare-fun setNonEmpty!3321 () Bool)

(declare-fun setElem!3322 () Context!454)

(declare-fun tp!203659 () Bool)

(assert (=> setNonEmpty!3321 (= setRes!3322 (and tp!203659 (inv!9447 setElem!3322) e!430790))))

(declare-fun setRest!3322 () (InoxSet Context!454))

(assert (=> setNonEmpty!3321 (= (_2!4229 (h!12741 mapValue!2881)) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3322 true) setRest!3322))))

(declare-fun b!685808 () Bool)

(declare-fun e!430789 () Bool)

(declare-fun tp!203654 () Bool)

(assert (=> b!685808 (= e!430788 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 mapDefault!2881)))) e!430789 tp_is_empty!3635 setRes!3321 tp!203654))))

(declare-fun condSetEmpty!3322 () Bool)

(assert (=> b!685808 (= condSetEmpty!3322 (= (_2!4229 (h!12741 mapDefault!2881)) ((as const (Array Context!454 Bool)) false)))))

(declare-fun tp!203662 () Bool)

(declare-fun setElem!3321 () Context!454)

(declare-fun setNonEmpty!3322 () Bool)

(assert (=> setNonEmpty!3322 (= setRes!3321 (and tp!203662 (inv!9447 setElem!3321) e!430791))))

(declare-fun setRest!3321 () (InoxSet Context!454))

(assert (=> setNonEmpty!3322 (= (_2!4229 (h!12741 mapDefault!2881)) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3321 true) setRest!3321))))

(declare-fun tp!203657 () Bool)

(declare-fun b!685809 () Bool)

(assert (=> b!685809 (= e!430786 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 mapValue!2881)))) e!430787 tp_is_empty!3635 setRes!3322 tp!203657))))

(declare-fun condSetEmpty!3321 () Bool)

(assert (=> b!685809 (= condSetEmpty!3321 (= (_2!4229 (h!12741 mapValue!2881)) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!685810 () Bool)

(declare-fun tp!203661 () Bool)

(assert (=> b!685810 (= e!430789 tp!203661)))

(assert (= (and mapNonEmpty!2874 condMapEmpty!2881) mapIsEmpty!2881))

(assert (= (and mapNonEmpty!2874 (not condMapEmpty!2881)) mapNonEmpty!2881))

(assert (= b!685809 b!685805))

(assert (= (and b!685809 condSetEmpty!3321) setIsEmpty!3321))

(assert (= (and b!685809 (not condSetEmpty!3321)) setNonEmpty!3321))

(assert (= setNonEmpty!3321 b!685807))

(assert (= (and mapNonEmpty!2881 ((_ is Cons!7340) mapValue!2881)) b!685809))

(assert (= b!685808 b!685810))

(assert (= (and b!685808 condSetEmpty!3322) setIsEmpty!3322))

(assert (= (and b!685808 (not condSetEmpty!3322)) setNonEmpty!3322))

(assert (= setNonEmpty!3322 b!685806))

(assert (= (and mapNonEmpty!2874 ((_ is Cons!7340) mapDefault!2881)) b!685808))

(declare-fun m!942447 () Bool)

(assert (=> setNonEmpty!3322 m!942447))

(declare-fun m!942449 () Bool)

(assert (=> mapNonEmpty!2881 m!942449))

(declare-fun m!942451 () Bool)

(assert (=> b!685809 m!942451))

(declare-fun m!942453 () Bool)

(assert (=> setNonEmpty!3321 m!942453))

(declare-fun m!942455 () Bool)

(assert (=> b!685808 m!942455))

(declare-fun e!430794 () Bool)

(assert (=> mapNonEmpty!2874 (= tp!203489 e!430794)))

(declare-fun b!685811 () Bool)

(declare-fun e!430793 () Bool)

(declare-fun tp!203665 () Bool)

(assert (=> b!685811 (= e!430793 tp!203665)))

(declare-fun setRes!3323 () Bool)

(declare-fun setElem!3323 () Context!454)

(declare-fun setNonEmpty!3323 () Bool)

(declare-fun tp!203663 () Bool)

(assert (=> setNonEmpty!3323 (= setRes!3323 (and tp!203663 (inv!9447 setElem!3323) e!430793))))

(declare-fun setRest!3323 () (InoxSet Context!454))

(assert (=> setNonEmpty!3323 (= (_2!4229 (h!12741 mapValue!2874)) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3323 true) setRest!3323))))

(declare-fun setIsEmpty!3323 () Bool)

(assert (=> setIsEmpty!3323 setRes!3323))

(declare-fun b!685812 () Bool)

(declare-fun tp!203664 () Bool)

(declare-fun e!430792 () Bool)

(assert (=> b!685812 (= e!430794 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 mapValue!2874)))) e!430792 tp_is_empty!3635 setRes!3323 tp!203664))))

(declare-fun condSetEmpty!3323 () Bool)

(assert (=> b!685812 (= condSetEmpty!3323 (= (_2!4229 (h!12741 mapValue!2874)) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!685813 () Bool)

(declare-fun tp!203666 () Bool)

(assert (=> b!685813 (= e!430792 tp!203666)))

(assert (= b!685812 b!685813))

(assert (= (and b!685812 condSetEmpty!3323) setIsEmpty!3323))

(assert (= (and b!685812 (not condSetEmpty!3323)) setNonEmpty!3323))

(assert (= setNonEmpty!3323 b!685811))

(assert (= (and mapNonEmpty!2874 ((_ is Cons!7340) mapValue!2874)) b!685812))

(declare-fun m!942457 () Bool)

(assert (=> setNonEmpty!3323 m!942457))

(declare-fun m!942459 () Bool)

(assert (=> b!685812 m!942459))

(declare-fun e!430797 () Bool)

(assert (=> b!685622 (= tp!203496 e!430797)))

(declare-fun tp!203671 () Bool)

(declare-fun b!685814 () Bool)

(declare-fun setRes!3324 () Bool)

(declare-fun e!430795 () Bool)

(declare-fun tp!203667 () Bool)

(assert (=> b!685814 (= e!430797 (and tp!203671 (inv!9447 (_2!4226 (_1!4227 (h!12740 mapDefault!2874)))) e!430795 tp_is_empty!3635 setRes!3324 tp!203667))))

(declare-fun condSetEmpty!3324 () Bool)

(assert (=> b!685814 (= condSetEmpty!3324 (= (_2!4227 (h!12740 mapDefault!2874)) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!685815 () Bool)

(declare-fun tp!203668 () Bool)

(assert (=> b!685815 (= e!430795 tp!203668)))

(declare-fun b!685816 () Bool)

(declare-fun e!430796 () Bool)

(declare-fun tp!203669 () Bool)

(assert (=> b!685816 (= e!430796 tp!203669)))

(declare-fun setIsEmpty!3324 () Bool)

(assert (=> setIsEmpty!3324 setRes!3324))

(declare-fun setNonEmpty!3324 () Bool)

(declare-fun setElem!3324 () Context!454)

(declare-fun tp!203670 () Bool)

(assert (=> setNonEmpty!3324 (= setRes!3324 (and tp!203670 (inv!9447 setElem!3324) e!430796))))

(declare-fun setRest!3324 () (InoxSet Context!454))

(assert (=> setNonEmpty!3324 (= (_2!4227 (h!12740 mapDefault!2874)) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3324 true) setRest!3324))))

(assert (= b!685814 b!685815))

(assert (= (and b!685814 condSetEmpty!3324) setIsEmpty!3324))

(assert (= (and b!685814 (not condSetEmpty!3324)) setNonEmpty!3324))

(assert (= setNonEmpty!3324 b!685816))

(assert (= (and b!685622 ((_ is Cons!7339) mapDefault!2874)) b!685814))

(declare-fun m!942461 () Bool)

(assert (=> b!685814 m!942461))

(declare-fun m!942463 () Bool)

(assert (=> setNonEmpty!3324 m!942463))

(declare-fun tp!203672 () Bool)

(declare-fun b!685817 () Bool)

(declare-fun tp!203673 () Bool)

(declare-fun e!430799 () Bool)

(assert (=> b!685817 (= e!430799 (and (inv!9439 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) tp!203673 (inv!9439 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) tp!203672))))

(declare-fun b!685819 () Bool)

(declare-fun e!430798 () Bool)

(declare-fun tp!203674 () Bool)

(assert (=> b!685819 (= e!430798 tp!203674)))

(declare-fun b!685818 () Bool)

(assert (=> b!685818 (= e!430799 (and (inv!9448 (xs!5257 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) e!430798))))

(assert (=> b!685621 (= tp!203497 (and (inv!9439 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) e!430799))))

(assert (= (and b!685621 ((_ is Node!2608) (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) b!685817))

(assert (= b!685818 b!685819))

(assert (= (and b!685621 ((_ is Leaf!3870) (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) b!685818))

(declare-fun m!942465 () Bool)

(assert (=> b!685817 m!942465))

(declare-fun m!942467 () Bool)

(assert (=> b!685817 m!942467))

(declare-fun m!942469 () Bool)

(assert (=> b!685818 m!942469))

(assert (=> b!685621 m!942307))

(declare-fun mapIsEmpty!2884 () Bool)

(declare-fun mapRes!2884 () Bool)

(assert (=> mapIsEmpty!2884 mapRes!2884))

(declare-fun b!685830 () Bool)

(declare-fun e!430810 () Bool)

(declare-fun setRes!3330 () Bool)

(declare-fun tp!203695 () Bool)

(assert (=> b!685830 (= e!430810 (and setRes!3330 tp!203695))))

(declare-fun condSetEmpty!3330 () Bool)

(declare-fun mapValue!2884 () List!7352)

(assert (=> b!685830 (= condSetEmpty!3330 (= (_1!4224 (_1!4225 (h!12739 mapValue!2884))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!685831 () Bool)

(declare-fun e!430809 () Bool)

(declare-fun setRes!3329 () Bool)

(declare-fun tp!203693 () Bool)

(assert (=> b!685831 (= e!430809 (and setRes!3329 tp!203693))))

(declare-fun condSetEmpty!3329 () Bool)

(declare-fun mapDefault!2884 () List!7352)

(assert (=> b!685831 (= condSetEmpty!3329 (= (_1!4224 (_1!4225 (h!12739 mapDefault!2884))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun setNonEmpty!3329 () Bool)

(declare-fun tp!203694 () Bool)

(declare-fun setElem!3330 () Context!454)

(declare-fun e!430808 () Bool)

(assert (=> setNonEmpty!3329 (= setRes!3330 (and tp!203694 (inv!9447 setElem!3330) e!430808))))

(declare-fun setRest!3330 () (InoxSet Context!454))

(assert (=> setNonEmpty!3329 (= (_1!4224 (_1!4225 (h!12739 mapValue!2884))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3330 true) setRest!3330))))

(declare-fun condMapEmpty!2884 () Bool)

(assert (=> mapNonEmpty!2875 (= condMapEmpty!2884 (= mapRest!2873 ((as const (Array (_ BitVec 32) List!7352)) mapDefault!2884)))))

(assert (=> mapNonEmpty!2875 (= tp!203509 (and e!430809 mapRes!2884))))

(declare-fun b!685832 () Bool)

(declare-fun tp!203690 () Bool)

(assert (=> b!685832 (= e!430808 tp!203690)))

(declare-fun mapNonEmpty!2884 () Bool)

(declare-fun tp!203691 () Bool)

(assert (=> mapNonEmpty!2884 (= mapRes!2884 (and tp!203691 e!430810))))

(declare-fun mapRest!2884 () (Array (_ BitVec 32) List!7352))

(declare-fun mapKey!2884 () (_ BitVec 32))

(assert (=> mapNonEmpty!2884 (= mapRest!2873 (store mapRest!2884 mapKey!2884 mapValue!2884))))

(declare-fun b!685833 () Bool)

(declare-fun e!430811 () Bool)

(declare-fun tp!203692 () Bool)

(assert (=> b!685833 (= e!430811 tp!203692)))

(declare-fun setIsEmpty!3329 () Bool)

(assert (=> setIsEmpty!3329 setRes!3330))

(declare-fun setNonEmpty!3330 () Bool)

(declare-fun tp!203689 () Bool)

(declare-fun setElem!3329 () Context!454)

(assert (=> setNonEmpty!3330 (= setRes!3329 (and tp!203689 (inv!9447 setElem!3329) e!430811))))

(declare-fun setRest!3329 () (InoxSet Context!454))

(assert (=> setNonEmpty!3330 (= (_1!4224 (_1!4225 (h!12739 mapDefault!2884))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3329 true) setRest!3329))))

(declare-fun setIsEmpty!3330 () Bool)

(assert (=> setIsEmpty!3330 setRes!3329))

(assert (= (and mapNonEmpty!2875 condMapEmpty!2884) mapIsEmpty!2884))

(assert (= (and mapNonEmpty!2875 (not condMapEmpty!2884)) mapNonEmpty!2884))

(assert (= (and b!685830 condSetEmpty!3330) setIsEmpty!3329))

(assert (= (and b!685830 (not condSetEmpty!3330)) setNonEmpty!3329))

(assert (= setNonEmpty!3329 b!685832))

(assert (= (and mapNonEmpty!2884 ((_ is Cons!7338) mapValue!2884)) b!685830))

(assert (= (and b!685831 condSetEmpty!3329) setIsEmpty!3330))

(assert (= (and b!685831 (not condSetEmpty!3329)) setNonEmpty!3330))

(assert (= setNonEmpty!3330 b!685833))

(assert (= (and mapNonEmpty!2875 ((_ is Cons!7338) mapDefault!2884)) b!685831))

(declare-fun m!942471 () Bool)

(assert (=> setNonEmpty!3329 m!942471))

(declare-fun m!942473 () Bool)

(assert (=> mapNonEmpty!2884 m!942473))

(declare-fun m!942475 () Bool)

(assert (=> setNonEmpty!3330 m!942475))

(declare-fun e!430813 () Bool)

(assert (=> mapNonEmpty!2875 (= tp!203484 e!430813)))

(declare-fun b!685834 () Bool)

(declare-fun setRes!3331 () Bool)

(declare-fun tp!203698 () Bool)

(assert (=> b!685834 (= e!430813 (and setRes!3331 tp!203698))))

(declare-fun condSetEmpty!3331 () Bool)

(assert (=> b!685834 (= condSetEmpty!3331 (= (_1!4224 (_1!4225 (h!12739 mapValue!2873))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun setIsEmpty!3331 () Bool)

(assert (=> setIsEmpty!3331 setRes!3331))

(declare-fun b!685835 () Bool)

(declare-fun e!430812 () Bool)

(declare-fun tp!203696 () Bool)

(assert (=> b!685835 (= e!430812 tp!203696)))

(declare-fun tp!203697 () Bool)

(declare-fun setNonEmpty!3331 () Bool)

(declare-fun setElem!3331 () Context!454)

(assert (=> setNonEmpty!3331 (= setRes!3331 (and tp!203697 (inv!9447 setElem!3331) e!430812))))

(declare-fun setRest!3331 () (InoxSet Context!454))

(assert (=> setNonEmpty!3331 (= (_1!4224 (_1!4225 (h!12739 mapValue!2873))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3331 true) setRest!3331))))

(assert (= (and b!685834 condSetEmpty!3331) setIsEmpty!3331))

(assert (= (and b!685834 (not condSetEmpty!3331)) setNonEmpty!3331))

(assert (= setNonEmpty!3331 b!685835))

(assert (= (and mapNonEmpty!2875 ((_ is Cons!7338) mapValue!2873)) b!685834))

(declare-fun m!942477 () Bool)

(assert (=> setNonEmpty!3331 m!942477))

(declare-fun e!430816 () Bool)

(assert (=> b!685630 (= tp!203498 e!430816)))

(declare-fun b!685836 () Bool)

(declare-fun e!430815 () Bool)

(declare-fun tp!203701 () Bool)

(assert (=> b!685836 (= e!430815 tp!203701)))

(declare-fun setElem!3332 () Context!454)

(declare-fun setRes!3332 () Bool)

(declare-fun setNonEmpty!3332 () Bool)

(declare-fun tp!203699 () Bool)

(assert (=> setNonEmpty!3332 (= setRes!3332 (and tp!203699 (inv!9447 setElem!3332) e!430815))))

(declare-fun setRest!3332 () (InoxSet Context!454))

(assert (=> setNonEmpty!3332 (= (_2!4229 (h!12741 mapDefault!2873)) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3332 true) setRest!3332))))

(declare-fun setIsEmpty!3332 () Bool)

(assert (=> setIsEmpty!3332 setRes!3332))

(declare-fun tp!203700 () Bool)

(declare-fun b!685837 () Bool)

(declare-fun e!430814 () Bool)

(assert (=> b!685837 (= e!430816 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 mapDefault!2873)))) e!430814 tp_is_empty!3635 setRes!3332 tp!203700))))

(declare-fun condSetEmpty!3332 () Bool)

(assert (=> b!685837 (= condSetEmpty!3332 (= (_2!4229 (h!12741 mapDefault!2873)) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!685838 () Bool)

(declare-fun tp!203702 () Bool)

(assert (=> b!685838 (= e!430814 tp!203702)))

(assert (= b!685837 b!685838))

(assert (= (and b!685837 condSetEmpty!3332) setIsEmpty!3332))

(assert (= (and b!685837 (not condSetEmpty!3332)) setNonEmpty!3332))

(assert (= setNonEmpty!3332 b!685836))

(assert (= (and b!685630 ((_ is Cons!7340) mapDefault!2873)) b!685837))

(declare-fun m!942479 () Bool)

(assert (=> setNonEmpty!3332 m!942479))

(declare-fun m!942481 () Bool)

(assert (=> b!685837 m!942481))

(check-sat (not b!685835) (not b!685811) (not b!685812) (not b!685753) (not b!685831) (not b!685787) (not b!685703) (not b!685789) b_and!63069 (not b!685752) (not setNonEmpty!3300) (not setNonEmpty!3315) b_and!63079 (not setNonEmpty!3330) (not b!685832) (not setNonEmpty!3329) (not b!685730) (not b!685700) (not setNonEmpty!3309) (not b!685766) (not b_next!19347) (not setNonEmpty!3324) (not b_next!19337) (not b!685786) (not b!685686) (not b!685764) (not setNonEmpty!3331) (not d!231106) (not b_next!19341) (not b!685819) (not mapNonEmpty!2881) (not b!685728) (not setNonEmpty!3322) (not b!685635) (not d!231104) b_and!63065 (not b!685691) (not b!685782) (not b!685655) (not mapNonEmpty!2878) (not d!231112) (not b!685788) b_and!63063 (not b_next!19333) (not setNonEmpty!3308) (not b!685662) (not b_next!19349) (not b!685664) (not b!685731) (not d!231092) (not b!685837) (not setNonEmpty!3307) (not b!685702) (not b!685815) (not b!685790) (not b!685688) (not b!685834) b_and!63071 (not d!231114) (not b!685670) (not b!685813) (not setNonEmpty!3299) (not b!685719) b_and!63075 (not b!685817) (not d!231076) (not b_next!19345) (not b!685809) (not b!685701) (not setNonEmpty!3303) (not b!685830) b_and!63067 (not b!685784) (not b!685767) (not setNonEmpty!3304) (not b!685729) (not b!685810) (not b!685742) (not b!685806) (not b!685807) (not b_next!19335) (not b!685673) (not setNonEmpty!3332) (not b!685836) (not b!685818) (not mapNonEmpty!2884) (not b!685805) (not b!685732) (not d!231102) (not b!685783) (not d!231108) (not b!685808) (not setNonEmpty!3316) (not setNonEmpty!3321) tp_is_empty!3635 (not b!685816) (not b!685621) (not b!685740) (not b!685765) (not b_next!19339) (not b_next!19351) (not b!685717) b_and!63081 b_and!63077 (not b!685718) (not d!231088) (not b!685838) b_and!63073 (not b!685683) (not b!685741) (not b!685785) (not b!685705) (not d!231100) (not b_next!19343) (not b!685833) (not setNonEmpty!3314) (not b!685763) (not b!685684) (not b!685814) (not b!685667) (not b!685733) (not b!685743) (not setNonEmpty!3323) (not b!685704))
(check-sat (not b_next!19341) b_and!63065 (not b_next!19349) b_and!63071 b_and!63075 (not b_next!19345) b_and!63067 (not b_next!19335) (not b_next!19339) (not b_next!19351) b_and!63069 b_and!63079 (not b_next!19347) (not b_next!19337) b_and!63063 (not b_next!19333) b_and!63081 b_and!63077 (not b_next!19343) b_and!63073)
(get-model)

(declare-fun d!231116 () Bool)

(declare-fun lambda!21211 () Int)

(declare-fun forall!1928 (List!7351 Int) Bool)

(assert (=> d!231116 (= (inv!9447 setElem!3307) (forall!1928 (exprs!727 setElem!3307) lambda!21211))))

(declare-fun bs!131393 () Bool)

(assert (= bs!131393 d!231116))

(declare-fun m!942483 () Bool)

(assert (=> bs!131393 m!942483))

(assert (=> setNonEmpty!3307 d!231116))

(declare-fun bs!131394 () Bool)

(declare-fun d!231118 () Bool)

(assert (= bs!131394 (and d!231118 d!231116)))

(declare-fun lambda!21212 () Int)

(assert (=> bs!131394 (= lambda!21212 lambda!21211)))

(assert (=> d!231118 (= (inv!9447 setElem!3314) (forall!1928 (exprs!727 setElem!3314) lambda!21212))))

(declare-fun bs!131395 () Bool)

(assert (= bs!131395 d!231118))

(declare-fun m!942485 () Bool)

(assert (=> bs!131395 m!942485))

(assert (=> setNonEmpty!3314 d!231118))

(assert (=> b!685635 d!231086))

(declare-fun bs!131396 () Bool)

(declare-fun d!231120 () Bool)

(assert (= bs!131396 (and d!231120 d!231116)))

(declare-fun lambda!21213 () Int)

(assert (=> bs!131396 (= lambda!21213 lambda!21211)))

(declare-fun bs!131397 () Bool)

(assert (= bs!131397 (and d!231120 d!231118)))

(assert (=> bs!131397 (= lambda!21213 lambda!21212)))

(assert (=> d!231120 (= (inv!9447 setElem!3329) (forall!1928 (exprs!727 setElem!3329) lambda!21213))))

(declare-fun bs!131398 () Bool)

(assert (= bs!131398 d!231120))

(declare-fun m!942487 () Bool)

(assert (=> bs!131398 m!942487))

(assert (=> setNonEmpty!3330 d!231120))

(declare-fun bs!131399 () Bool)

(declare-fun d!231122 () Bool)

(assert (= bs!131399 (and d!231122 d!231116)))

(declare-fun lambda!21214 () Int)

(assert (=> bs!131399 (= lambda!21214 lambda!21211)))

(declare-fun bs!131400 () Bool)

(assert (= bs!131400 (and d!231122 d!231118)))

(assert (=> bs!131400 (= lambda!21214 lambda!21212)))

(declare-fun bs!131401 () Bool)

(assert (= bs!131401 (and d!231122 d!231120)))

(assert (=> bs!131401 (= lambda!21214 lambda!21213)))

(assert (=> d!231122 (= (inv!9447 setElem!3324) (forall!1928 (exprs!727 setElem!3324) lambda!21214))))

(declare-fun bs!131402 () Bool)

(assert (= bs!131402 d!231122))

(declare-fun m!942489 () Bool)

(assert (=> bs!131402 m!942489))

(assert (=> setNonEmpty!3324 d!231122))

(declare-fun bs!131403 () Bool)

(declare-fun d!231124 () Bool)

(assert (= bs!131403 (and d!231124 d!231116)))

(declare-fun lambda!21215 () Int)

(assert (=> bs!131403 (= lambda!21215 lambda!21211)))

(declare-fun bs!131404 () Bool)

(assert (= bs!131404 (and d!231124 d!231118)))

(assert (=> bs!131404 (= lambda!21215 lambda!21212)))

(declare-fun bs!131405 () Bool)

(assert (= bs!131405 (and d!231124 d!231120)))

(assert (=> bs!131405 (= lambda!21215 lambda!21213)))

(declare-fun bs!131406 () Bool)

(assert (= bs!131406 (and d!231124 d!231122)))

(assert (=> bs!131406 (= lambda!21215 lambda!21214)))

(assert (=> d!231124 (= (inv!9447 (_2!4226 (_1!4227 (h!12740 mapDefault!2878)))) (forall!1928 (exprs!727 (_2!4226 (_1!4227 (h!12740 mapDefault!2878)))) lambda!21215))))

(declare-fun bs!131407 () Bool)

(assert (= bs!131407 d!231124))

(declare-fun m!942491 () Bool)

(assert (=> bs!131407 m!942491))

(assert (=> b!685785 d!231124))

(declare-fun b!685841 () Bool)

(declare-fun res!312123 () Bool)

(declare-fun e!430818 () Bool)

(assert (=> b!685841 (=> (not res!312123) (not e!430818))))

(declare-fun lt!283854 () List!7349)

(assert (=> b!685841 (= res!312123 (= (size!6025 lt!283854) (+ (size!6025 (t!87145 lt!283847)) (size!6025 lt!283848))))))

(declare-fun b!685840 () Bool)

(declare-fun e!430817 () List!7349)

(assert (=> b!685840 (= e!430817 (Cons!7335 (h!12736 (t!87145 lt!283847)) (++!1931 (t!87145 (t!87145 lt!283847)) lt!283848)))))

(declare-fun b!685839 () Bool)

(assert (=> b!685839 (= e!430817 lt!283848)))

(declare-fun b!685842 () Bool)

(assert (=> b!685842 (= e!430818 (or (not (= lt!283848 Nil!7335)) (= lt!283854 (t!87145 lt!283847))))))

(declare-fun d!231126 () Bool)

(assert (=> d!231126 e!430818))

(declare-fun res!312122 () Bool)

(assert (=> d!231126 (=> (not res!312122) (not e!430818))))

(assert (=> d!231126 (= res!312122 (= (content!1179 lt!283854) ((_ map or) (content!1179 (t!87145 lt!283847)) (content!1179 lt!283848))))))

(assert (=> d!231126 (= lt!283854 e!430817)))

(declare-fun c!121207 () Bool)

(assert (=> d!231126 (= c!121207 ((_ is Nil!7335) (t!87145 lt!283847)))))

(assert (=> d!231126 (= (++!1931 (t!87145 lt!283847) lt!283848) lt!283854)))

(assert (= (and d!231126 c!121207) b!685839))

(assert (= (and d!231126 (not c!121207)) b!685840))

(assert (= (and d!231126 res!312122) b!685841))

(assert (= (and b!685841 res!312123) b!685842))

(declare-fun m!942493 () Bool)

(assert (=> b!685841 m!942493))

(declare-fun m!942495 () Bool)

(assert (=> b!685841 m!942495))

(assert (=> b!685841 m!942379))

(declare-fun m!942497 () Bool)

(assert (=> b!685840 m!942497))

(declare-fun m!942499 () Bool)

(assert (=> d!231126 m!942499))

(declare-fun m!942501 () Bool)

(assert (=> d!231126 m!942501))

(assert (=> d!231126 m!942387))

(assert (=> b!685683 d!231126))

(declare-fun bs!131408 () Bool)

(declare-fun d!231128 () Bool)

(assert (= bs!131408 (and d!231128 d!231116)))

(declare-fun lambda!21216 () Int)

(assert (=> bs!131408 (= lambda!21216 lambda!21211)))

(declare-fun bs!131409 () Bool)

(assert (= bs!131409 (and d!231128 d!231120)))

(assert (=> bs!131409 (= lambda!21216 lambda!21213)))

(declare-fun bs!131410 () Bool)

(assert (= bs!131410 (and d!231128 d!231124)))

(assert (=> bs!131410 (= lambda!21216 lambda!21215)))

(declare-fun bs!131411 () Bool)

(assert (= bs!131411 (and d!231128 d!231122)))

(assert (=> bs!131411 (= lambda!21216 lambda!21214)))

(declare-fun bs!131412 () Bool)

(assert (= bs!131412 (and d!231128 d!231118)))

(assert (=> bs!131412 (= lambda!21216 lambda!21212)))

(assert (=> d!231128 (= (inv!9447 setElem!3308) (forall!1928 (exprs!727 setElem!3308) lambda!21216))))

(declare-fun bs!131413 () Bool)

(assert (= bs!131413 d!231128))

(declare-fun m!942503 () Bool)

(assert (=> bs!131413 m!942503))

(assert (=> setNonEmpty!3308 d!231128))

(declare-fun bs!131414 () Bool)

(declare-fun d!231130 () Bool)

(assert (= bs!131414 (and d!231130 d!231116)))

(declare-fun lambda!21217 () Int)

(assert (=> bs!131414 (= lambda!21217 lambda!21211)))

(declare-fun bs!131415 () Bool)

(assert (= bs!131415 (and d!231130 d!231120)))

(assert (=> bs!131415 (= lambda!21217 lambda!21213)))

(declare-fun bs!131416 () Bool)

(assert (= bs!131416 (and d!231130 d!231122)))

(assert (=> bs!131416 (= lambda!21217 lambda!21214)))

(declare-fun bs!131417 () Bool)

(assert (= bs!131417 (and d!231130 d!231118)))

(assert (=> bs!131417 (= lambda!21217 lambda!21212)))

(declare-fun bs!131418 () Bool)

(assert (= bs!131418 (and d!231130 d!231128)))

(assert (=> bs!131418 (= lambda!21217 lambda!21216)))

(declare-fun bs!131419 () Bool)

(assert (= bs!131419 (and d!231130 d!231124)))

(assert (=> bs!131419 (= lambda!21217 lambda!21215)))

(assert (=> d!231130 (= (inv!9447 setElem!3303) (forall!1928 (exprs!727 setElem!3303) lambda!21217))))

(declare-fun bs!131420 () Bool)

(assert (= bs!131420 d!231130))

(declare-fun m!942505 () Bool)

(assert (=> bs!131420 m!942505))

(assert (=> setNonEmpty!3303 d!231130))

(declare-fun bs!131421 () Bool)

(declare-fun d!231132 () Bool)

(assert (= bs!131421 (and d!231132 d!231116)))

(declare-fun lambda!21218 () Int)

(assert (=> bs!131421 (= lambda!21218 lambda!21211)))

(declare-fun bs!131422 () Bool)

(assert (= bs!131422 (and d!231132 d!231120)))

(assert (=> bs!131422 (= lambda!21218 lambda!21213)))

(declare-fun bs!131423 () Bool)

(assert (= bs!131423 (and d!231132 d!231118)))

(assert (=> bs!131423 (= lambda!21218 lambda!21212)))

(declare-fun bs!131424 () Bool)

(assert (= bs!131424 (and d!231132 d!231128)))

(assert (=> bs!131424 (= lambda!21218 lambda!21216)))

(declare-fun bs!131425 () Bool)

(assert (= bs!131425 (and d!231132 d!231124)))

(assert (=> bs!131425 (= lambda!21218 lambda!21215)))

(declare-fun bs!131426 () Bool)

(assert (= bs!131426 (and d!231132 d!231122)))

(assert (=> bs!131426 (= lambda!21218 lambda!21214)))

(declare-fun bs!131427 () Bool)

(assert (= bs!131427 (and d!231132 d!231130)))

(assert (=> bs!131427 (= lambda!21218 lambda!21217)))

(assert (=> d!231132 (= (inv!9447 (_1!4228 (_1!4229 (h!12741 (zeroValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))))) (forall!1928 (exprs!727 (_1!4228 (_1!4229 (h!12741 (zeroValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))))) lambda!21218))))

(declare-fun bs!131428 () Bool)

(assert (= bs!131428 d!231132))

(declare-fun m!942507 () Bool)

(assert (=> bs!131428 m!942507))

(assert (=> b!685729 d!231132))

(declare-fun bs!131429 () Bool)

(declare-fun d!231134 () Bool)

(assert (= bs!131429 (and d!231134 d!231116)))

(declare-fun lambda!21219 () Int)

(assert (=> bs!131429 (= lambda!21219 lambda!21211)))

(declare-fun bs!131430 () Bool)

(assert (= bs!131430 (and d!231134 d!231132)))

(assert (=> bs!131430 (= lambda!21219 lambda!21218)))

(declare-fun bs!131431 () Bool)

(assert (= bs!131431 (and d!231134 d!231120)))

(assert (=> bs!131431 (= lambda!21219 lambda!21213)))

(declare-fun bs!131432 () Bool)

(assert (= bs!131432 (and d!231134 d!231118)))

(assert (=> bs!131432 (= lambda!21219 lambda!21212)))

(declare-fun bs!131433 () Bool)

(assert (= bs!131433 (and d!231134 d!231128)))

(assert (=> bs!131433 (= lambda!21219 lambda!21216)))

(declare-fun bs!131434 () Bool)

(assert (= bs!131434 (and d!231134 d!231124)))

(assert (=> bs!131434 (= lambda!21219 lambda!21215)))

(declare-fun bs!131435 () Bool)

(assert (= bs!131435 (and d!231134 d!231122)))

(assert (=> bs!131435 (= lambda!21219 lambda!21214)))

(declare-fun bs!131436 () Bool)

(assert (= bs!131436 (and d!231134 d!231130)))

(assert (=> bs!131436 (= lambda!21219 lambda!21217)))

(assert (=> d!231134 (= (inv!9447 setElem!3331) (forall!1928 (exprs!727 setElem!3331) lambda!21219))))

(declare-fun bs!131437 () Bool)

(assert (= bs!131437 d!231134))

(declare-fun m!942509 () Bool)

(assert (=> bs!131437 m!942509))

(assert (=> setNonEmpty!3331 d!231134))

(declare-fun d!231136 () Bool)

(declare-fun c!121208 () Bool)

(assert (=> d!231136 (= c!121208 ((_ is Node!2608) (left!5939 (c!121199 input!756))))))

(declare-fun e!430819 () Bool)

(assert (=> d!231136 (= (inv!9439 (left!5939 (c!121199 input!756))) e!430819)))

(declare-fun b!685843 () Bool)

(assert (=> b!685843 (= e!430819 (inv!9445 (left!5939 (c!121199 input!756))))))

(declare-fun b!685844 () Bool)

(declare-fun e!430820 () Bool)

(assert (=> b!685844 (= e!430819 e!430820)))

(declare-fun res!312124 () Bool)

(assert (=> b!685844 (= res!312124 (not ((_ is Leaf!3870) (left!5939 (c!121199 input!756)))))))

(assert (=> b!685844 (=> res!312124 e!430820)))

(declare-fun b!685845 () Bool)

(assert (=> b!685845 (= e!430820 (inv!9446 (left!5939 (c!121199 input!756))))))

(assert (= (and d!231136 c!121208) b!685843))

(assert (= (and d!231136 (not c!121208)) b!685844))

(assert (= (and b!685844 (not res!312124)) b!685845))

(declare-fun m!942511 () Bool)

(assert (=> b!685843 m!942511))

(declare-fun m!942513 () Bool)

(assert (=> b!685845 m!942513))

(assert (=> b!685763 d!231136))

(declare-fun d!231138 () Bool)

(declare-fun c!121209 () Bool)

(assert (=> d!231138 (= c!121209 ((_ is Node!2608) (right!6269 (c!121199 input!756))))))

(declare-fun e!430821 () Bool)

(assert (=> d!231138 (= (inv!9439 (right!6269 (c!121199 input!756))) e!430821)))

(declare-fun b!685846 () Bool)

(assert (=> b!685846 (= e!430821 (inv!9445 (right!6269 (c!121199 input!756))))))

(declare-fun b!685847 () Bool)

(declare-fun e!430822 () Bool)

(assert (=> b!685847 (= e!430821 e!430822)))

(declare-fun res!312125 () Bool)

(assert (=> b!685847 (= res!312125 (not ((_ is Leaf!3870) (right!6269 (c!121199 input!756)))))))

(assert (=> b!685847 (=> res!312125 e!430822)))

(declare-fun b!685848 () Bool)

(assert (=> b!685848 (= e!430822 (inv!9446 (right!6269 (c!121199 input!756))))))

(assert (= (and d!231138 c!121209) b!685846))

(assert (= (and d!231138 (not c!121209)) b!685847))

(assert (= (and b!685847 (not res!312125)) b!685848))

(declare-fun m!942515 () Bool)

(assert (=> b!685846 m!942515))

(declare-fun m!942517 () Bool)

(assert (=> b!685848 m!942517))

(assert (=> b!685763 d!231138))

(declare-fun bs!131438 () Bool)

(declare-fun d!231140 () Bool)

(assert (= bs!131438 (and d!231140 d!231116)))

(declare-fun lambda!21220 () Int)

(assert (=> bs!131438 (= lambda!21220 lambda!21211)))

(declare-fun bs!131439 () Bool)

(assert (= bs!131439 (and d!231140 d!231132)))

(assert (=> bs!131439 (= lambda!21220 lambda!21218)))

(declare-fun bs!131440 () Bool)

(assert (= bs!131440 (and d!231140 d!231120)))

(assert (=> bs!131440 (= lambda!21220 lambda!21213)))

(declare-fun bs!131441 () Bool)

(assert (= bs!131441 (and d!231140 d!231134)))

(assert (=> bs!131441 (= lambda!21220 lambda!21219)))

(declare-fun bs!131442 () Bool)

(assert (= bs!131442 (and d!231140 d!231118)))

(assert (=> bs!131442 (= lambda!21220 lambda!21212)))

(declare-fun bs!131443 () Bool)

(assert (= bs!131443 (and d!231140 d!231128)))

(assert (=> bs!131443 (= lambda!21220 lambda!21216)))

(declare-fun bs!131444 () Bool)

(assert (= bs!131444 (and d!231140 d!231124)))

(assert (=> bs!131444 (= lambda!21220 lambda!21215)))

(declare-fun bs!131445 () Bool)

(assert (= bs!131445 (and d!231140 d!231122)))

(assert (=> bs!131445 (= lambda!21220 lambda!21214)))

(declare-fun bs!131446 () Bool)

(assert (= bs!131446 (and d!231140 d!231130)))

(assert (=> bs!131446 (= lambda!21220 lambda!21217)))

(assert (=> d!231140 (= (inv!9447 (_1!4228 (_1!4229 (h!12741 mapValue!2881)))) (forall!1928 (exprs!727 (_1!4228 (_1!4229 (h!12741 mapValue!2881)))) lambda!21220))))

(declare-fun bs!131447 () Bool)

(assert (= bs!131447 d!231140))

(declare-fun m!942519 () Bool)

(assert (=> bs!131447 m!942519))

(assert (=> b!685809 d!231140))

(declare-fun bs!131448 () Bool)

(declare-fun d!231142 () Bool)

(assert (= bs!131448 (and d!231142 d!231116)))

(declare-fun lambda!21221 () Int)

(assert (=> bs!131448 (= lambda!21221 lambda!21211)))

(declare-fun bs!131449 () Bool)

(assert (= bs!131449 (and d!231142 d!231132)))

(assert (=> bs!131449 (= lambda!21221 lambda!21218)))

(declare-fun bs!131450 () Bool)

(assert (= bs!131450 (and d!231142 d!231120)))

(assert (=> bs!131450 (= lambda!21221 lambda!21213)))

(declare-fun bs!131451 () Bool)

(assert (= bs!131451 (and d!231142 d!231134)))

(assert (=> bs!131451 (= lambda!21221 lambda!21219)))

(declare-fun bs!131452 () Bool)

(assert (= bs!131452 (and d!231142 d!231140)))

(assert (=> bs!131452 (= lambda!21221 lambda!21220)))

(declare-fun bs!131453 () Bool)

(assert (= bs!131453 (and d!231142 d!231118)))

(assert (=> bs!131453 (= lambda!21221 lambda!21212)))

(declare-fun bs!131454 () Bool)

(assert (= bs!131454 (and d!231142 d!231128)))

(assert (=> bs!131454 (= lambda!21221 lambda!21216)))

(declare-fun bs!131455 () Bool)

(assert (= bs!131455 (and d!231142 d!231124)))

(assert (=> bs!131455 (= lambda!21221 lambda!21215)))

(declare-fun bs!131456 () Bool)

(assert (= bs!131456 (and d!231142 d!231122)))

(assert (=> bs!131456 (= lambda!21221 lambda!21214)))

(declare-fun bs!131457 () Bool)

(assert (= bs!131457 (and d!231142 d!231130)))

(assert (=> bs!131457 (= lambda!21221 lambda!21217)))

(assert (=> d!231142 (= (inv!9447 (_2!4226 (_1!4227 (h!12740 mapDefault!2874)))) (forall!1928 (exprs!727 (_2!4226 (_1!4227 (h!12740 mapDefault!2874)))) lambda!21221))))

(declare-fun bs!131458 () Bool)

(assert (= bs!131458 d!231142))

(declare-fun m!942521 () Bool)

(assert (=> bs!131458 m!942521))

(assert (=> b!685814 d!231142))

(declare-fun d!231144 () Bool)

(declare-fun res!312130 () Bool)

(declare-fun e!430827 () Bool)

(assert (=> d!231144 (=> res!312130 e!430827)))

(assert (=> d!231144 (= res!312130 ((_ is Nil!7336) rules!1357))))

(assert (=> d!231144 (= (noDuplicateTag!522 thiss!12183 rules!1357 Nil!7341) e!430827)))

(declare-fun b!685853 () Bool)

(declare-fun e!430828 () Bool)

(assert (=> b!685853 (= e!430827 e!430828)))

(declare-fun res!312131 () Bool)

(assert (=> b!685853 (=> (not res!312131) (not e!430828))))

(declare-fun contains!1560 (List!7355 String!9344) Bool)

(assert (=> b!685853 (= res!312131 (not (contains!1560 Nil!7341 (tag!1743 (h!12737 rules!1357)))))))

(declare-fun b!685854 () Bool)

(assert (=> b!685854 (= e!430828 (noDuplicateTag!522 thiss!12183 (t!87146 rules!1357) (Cons!7341 (tag!1743 (h!12737 rules!1357)) Nil!7341)))))

(assert (= (and d!231144 (not res!312130)) b!685853))

(assert (= (and b!685853 res!312131) b!685854))

(declare-fun m!942523 () Bool)

(assert (=> b!685853 m!942523))

(declare-fun m!942525 () Bool)

(assert (=> b!685854 m!942525))

(assert (=> b!685691 d!231144))

(declare-fun bs!131459 () Bool)

(declare-fun d!231146 () Bool)

(assert (= bs!131459 (and d!231146 d!231116)))

(declare-fun lambda!21222 () Int)

(assert (=> bs!131459 (= lambda!21222 lambda!21211)))

(declare-fun bs!131460 () Bool)

(assert (= bs!131460 (and d!231146 d!231132)))

(assert (=> bs!131460 (= lambda!21222 lambda!21218)))

(declare-fun bs!131461 () Bool)

(assert (= bs!131461 (and d!231146 d!231142)))

(assert (=> bs!131461 (= lambda!21222 lambda!21221)))

(declare-fun bs!131462 () Bool)

(assert (= bs!131462 (and d!231146 d!231120)))

(assert (=> bs!131462 (= lambda!21222 lambda!21213)))

(declare-fun bs!131463 () Bool)

(assert (= bs!131463 (and d!231146 d!231134)))

(assert (=> bs!131463 (= lambda!21222 lambda!21219)))

(declare-fun bs!131464 () Bool)

(assert (= bs!131464 (and d!231146 d!231140)))

(assert (=> bs!131464 (= lambda!21222 lambda!21220)))

(declare-fun bs!131465 () Bool)

(assert (= bs!131465 (and d!231146 d!231118)))

(assert (=> bs!131465 (= lambda!21222 lambda!21212)))

(declare-fun bs!131466 () Bool)

(assert (= bs!131466 (and d!231146 d!231128)))

(assert (=> bs!131466 (= lambda!21222 lambda!21216)))

(declare-fun bs!131467 () Bool)

(assert (= bs!131467 (and d!231146 d!231124)))

(assert (=> bs!131467 (= lambda!21222 lambda!21215)))

(declare-fun bs!131468 () Bool)

(assert (= bs!131468 (and d!231146 d!231122)))

(assert (=> bs!131468 (= lambda!21222 lambda!21214)))

(declare-fun bs!131469 () Bool)

(assert (= bs!131469 (and d!231146 d!231130)))

(assert (=> bs!131469 (= lambda!21222 lambda!21217)))

(assert (=> d!231146 (= (inv!9447 setElem!3322) (forall!1928 (exprs!727 setElem!3322) lambda!21222))))

(declare-fun bs!131470 () Bool)

(assert (= bs!131470 d!231146))

(declare-fun m!942527 () Bool)

(assert (=> bs!131470 m!942527))

(assert (=> setNonEmpty!3321 d!231146))

(declare-fun bs!131471 () Bool)

(declare-fun d!231148 () Bool)

(assert (= bs!131471 (and d!231148 d!231116)))

(declare-fun lambda!21223 () Int)

(assert (=> bs!131471 (= lambda!21223 lambda!21211)))

(declare-fun bs!131472 () Bool)

(assert (= bs!131472 (and d!231148 d!231132)))

(assert (=> bs!131472 (= lambda!21223 lambda!21218)))

(declare-fun bs!131473 () Bool)

(assert (= bs!131473 (and d!231148 d!231146)))

(assert (=> bs!131473 (= lambda!21223 lambda!21222)))

(declare-fun bs!131474 () Bool)

(assert (= bs!131474 (and d!231148 d!231142)))

(assert (=> bs!131474 (= lambda!21223 lambda!21221)))

(declare-fun bs!131475 () Bool)

(assert (= bs!131475 (and d!231148 d!231120)))

(assert (=> bs!131475 (= lambda!21223 lambda!21213)))

(declare-fun bs!131476 () Bool)

(assert (= bs!131476 (and d!231148 d!231134)))

(assert (=> bs!131476 (= lambda!21223 lambda!21219)))

(declare-fun bs!131477 () Bool)

(assert (= bs!131477 (and d!231148 d!231140)))

(assert (=> bs!131477 (= lambda!21223 lambda!21220)))

(declare-fun bs!131478 () Bool)

(assert (= bs!131478 (and d!231148 d!231118)))

(assert (=> bs!131478 (= lambda!21223 lambda!21212)))

(declare-fun bs!131479 () Bool)

(assert (= bs!131479 (and d!231148 d!231128)))

(assert (=> bs!131479 (= lambda!21223 lambda!21216)))

(declare-fun bs!131480 () Bool)

(assert (= bs!131480 (and d!231148 d!231124)))

(assert (=> bs!131480 (= lambda!21223 lambda!21215)))

(declare-fun bs!131481 () Bool)

(assert (= bs!131481 (and d!231148 d!231122)))

(assert (=> bs!131481 (= lambda!21223 lambda!21214)))

(declare-fun bs!131482 () Bool)

(assert (= bs!131482 (and d!231148 d!231130)))

(assert (=> bs!131482 (= lambda!21223 lambda!21217)))

(assert (=> d!231148 (= (inv!9447 setElem!3299) (forall!1928 (exprs!727 setElem!3299) lambda!21223))))

(declare-fun bs!131483 () Bool)

(assert (= bs!131483 d!231148))

(declare-fun m!942529 () Bool)

(assert (=> bs!131483 m!942529))

(assert (=> setNonEmpty!3299 d!231148))

(declare-fun bs!131484 () Bool)

(declare-fun d!231150 () Bool)

(assert (= bs!131484 (and d!231150 d!231116)))

(declare-fun lambda!21224 () Int)

(assert (=> bs!131484 (= lambda!21224 lambda!21211)))

(declare-fun bs!131485 () Bool)

(assert (= bs!131485 (and d!231150 d!231146)))

(assert (=> bs!131485 (= lambda!21224 lambda!21222)))

(declare-fun bs!131486 () Bool)

(assert (= bs!131486 (and d!231150 d!231142)))

(assert (=> bs!131486 (= lambda!21224 lambda!21221)))

(declare-fun bs!131487 () Bool)

(assert (= bs!131487 (and d!231150 d!231120)))

(assert (=> bs!131487 (= lambda!21224 lambda!21213)))

(declare-fun bs!131488 () Bool)

(assert (= bs!131488 (and d!231150 d!231134)))

(assert (=> bs!131488 (= lambda!21224 lambda!21219)))

(declare-fun bs!131489 () Bool)

(assert (= bs!131489 (and d!231150 d!231140)))

(assert (=> bs!131489 (= lambda!21224 lambda!21220)))

(declare-fun bs!131490 () Bool)

(assert (= bs!131490 (and d!231150 d!231118)))

(assert (=> bs!131490 (= lambda!21224 lambda!21212)))

(declare-fun bs!131491 () Bool)

(assert (= bs!131491 (and d!231150 d!231148)))

(assert (=> bs!131491 (= lambda!21224 lambda!21223)))

(declare-fun bs!131492 () Bool)

(assert (= bs!131492 (and d!231150 d!231132)))

(assert (=> bs!131492 (= lambda!21224 lambda!21218)))

(declare-fun bs!131493 () Bool)

(assert (= bs!131493 (and d!231150 d!231128)))

(assert (=> bs!131493 (= lambda!21224 lambda!21216)))

(declare-fun bs!131494 () Bool)

(assert (= bs!131494 (and d!231150 d!231124)))

(assert (=> bs!131494 (= lambda!21224 lambda!21215)))

(declare-fun bs!131495 () Bool)

(assert (= bs!131495 (and d!231150 d!231122)))

(assert (=> bs!131495 (= lambda!21224 lambda!21214)))

(declare-fun bs!131496 () Bool)

(assert (= bs!131496 (and d!231150 d!231130)))

(assert (=> bs!131496 (= lambda!21224 lambda!21217)))

(assert (=> d!231150 (= (inv!9447 setElem!3332) (forall!1928 (exprs!727 setElem!3332) lambda!21224))))

(declare-fun bs!131497 () Bool)

(assert (= bs!131497 d!231150))

(declare-fun m!942531 () Bool)

(assert (=> bs!131497 m!942531))

(assert (=> setNonEmpty!3332 d!231150))

(declare-fun d!231152 () Bool)

(declare-fun res!312136 () Bool)

(declare-fun e!430831 () Bool)

(assert (=> d!231152 (=> (not res!312136) (not e!430831))))

(declare-fun list!3101 (IArray!5217) List!7349)

(assert (=> d!231152 (= res!312136 (<= (size!6025 (list!3101 (xs!5257 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) 512))))

(assert (=> d!231152 (= (inv!9446 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) e!430831)))

(declare-fun b!685859 () Bool)

(declare-fun res!312137 () Bool)

(assert (=> b!685859 (=> (not res!312137) (not e!430831))))

(assert (=> b!685859 (= res!312137 (= (csize!5447 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) (size!6025 (list!3101 (xs!5257 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))))

(declare-fun b!685860 () Bool)

(assert (=> b!685860 (= e!430831 (and (> (csize!5447 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) 0) (<= (csize!5447 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) 512)))))

(assert (= (and d!231152 res!312136) b!685859))

(assert (= (and b!685859 res!312137) b!685860))

(declare-fun m!942533 () Bool)

(assert (=> d!231152 m!942533))

(assert (=> d!231152 m!942533))

(declare-fun m!942535 () Bool)

(assert (=> d!231152 m!942535))

(assert (=> b!685859 m!942533))

(assert (=> b!685859 m!942533))

(assert (=> b!685859 m!942535))

(assert (=> b!685688 d!231152))

(declare-fun d!231154 () Bool)

(declare-fun c!121210 () Bool)

(assert (=> d!231154 (= c!121210 ((_ is Node!2608) (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))

(declare-fun e!430832 () Bool)

(assert (=> d!231154 (= (inv!9439 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) e!430832)))

(declare-fun b!685861 () Bool)

(assert (=> b!685861 (= e!430832 (inv!9445 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))

(declare-fun b!685862 () Bool)

(declare-fun e!430833 () Bool)

(assert (=> b!685862 (= e!430832 e!430833)))

(declare-fun res!312138 () Bool)

(assert (=> b!685862 (= res!312138 (not ((_ is Leaf!3870) (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))))))

(assert (=> b!685862 (=> res!312138 e!430833)))

(declare-fun b!685863 () Bool)

(assert (=> b!685863 (= e!430833 (inv!9446 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))

(assert (= (and d!231154 c!121210) b!685861))

(assert (= (and d!231154 (not c!121210)) b!685862))

(assert (= (and b!685862 (not res!312138)) b!685863))

(declare-fun m!942537 () Bool)

(assert (=> b!685861 m!942537))

(declare-fun m!942539 () Bool)

(assert (=> b!685863 m!942539))

(assert (=> b!685817 d!231154))

(declare-fun d!231156 () Bool)

(declare-fun c!121211 () Bool)

(assert (=> d!231156 (= c!121211 ((_ is Node!2608) (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))

(declare-fun e!430834 () Bool)

(assert (=> d!231156 (= (inv!9439 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) e!430834)))

(declare-fun b!685864 () Bool)

(assert (=> b!685864 (= e!430834 (inv!9445 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))

(declare-fun b!685865 () Bool)

(declare-fun e!430835 () Bool)

(assert (=> b!685865 (= e!430834 e!430835)))

(declare-fun res!312139 () Bool)

(assert (=> b!685865 (= res!312139 (not ((_ is Leaf!3870) (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))))))

(assert (=> b!685865 (=> res!312139 e!430835)))

(declare-fun b!685866 () Bool)

(assert (=> b!685866 (= e!430835 (inv!9446 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))

(assert (= (and d!231156 c!121211) b!685864))

(assert (= (and d!231156 (not c!121211)) b!685865))

(assert (= (and b!685865 (not res!312139)) b!685866))

(declare-fun m!942541 () Bool)

(assert (=> b!685864 m!942541))

(declare-fun m!942543 () Bool)

(assert (=> b!685866 m!942543))

(assert (=> b!685817 d!231156))

(declare-fun bs!131498 () Bool)

(declare-fun d!231158 () Bool)

(assert (= bs!131498 (and d!231158 d!231116)))

(declare-fun lambda!21225 () Int)

(assert (=> bs!131498 (= lambda!21225 lambda!21211)))

(declare-fun bs!131499 () Bool)

(assert (= bs!131499 (and d!231158 d!231146)))

(assert (=> bs!131499 (= lambda!21225 lambda!21222)))

(declare-fun bs!131500 () Bool)

(assert (= bs!131500 (and d!231158 d!231142)))

(assert (=> bs!131500 (= lambda!21225 lambda!21221)))

(declare-fun bs!131501 () Bool)

(assert (= bs!131501 (and d!231158 d!231120)))

(assert (=> bs!131501 (= lambda!21225 lambda!21213)))

(declare-fun bs!131502 () Bool)

(assert (= bs!131502 (and d!231158 d!231140)))

(assert (=> bs!131502 (= lambda!21225 lambda!21220)))

(declare-fun bs!131503 () Bool)

(assert (= bs!131503 (and d!231158 d!231118)))

(assert (=> bs!131503 (= lambda!21225 lambda!21212)))

(declare-fun bs!131504 () Bool)

(assert (= bs!131504 (and d!231158 d!231148)))

(assert (=> bs!131504 (= lambda!21225 lambda!21223)))

(declare-fun bs!131505 () Bool)

(assert (= bs!131505 (and d!231158 d!231132)))

(assert (=> bs!131505 (= lambda!21225 lambda!21218)))

(declare-fun bs!131506 () Bool)

(assert (= bs!131506 (and d!231158 d!231134)))

(assert (=> bs!131506 (= lambda!21225 lambda!21219)))

(declare-fun bs!131507 () Bool)

(assert (= bs!131507 (and d!231158 d!231150)))

(assert (=> bs!131507 (= lambda!21225 lambda!21224)))

(declare-fun bs!131508 () Bool)

(assert (= bs!131508 (and d!231158 d!231128)))

(assert (=> bs!131508 (= lambda!21225 lambda!21216)))

(declare-fun bs!131509 () Bool)

(assert (= bs!131509 (and d!231158 d!231124)))

(assert (=> bs!131509 (= lambda!21225 lambda!21215)))

(declare-fun bs!131510 () Bool)

(assert (= bs!131510 (and d!231158 d!231122)))

(assert (=> bs!131510 (= lambda!21225 lambda!21214)))

(declare-fun bs!131511 () Bool)

(assert (= bs!131511 (and d!231158 d!231130)))

(assert (=> bs!131511 (= lambda!21225 lambda!21217)))

(assert (=> d!231158 (= (inv!9447 setElem!3300) (forall!1928 (exprs!727 setElem!3300) lambda!21225))))

(declare-fun bs!131512 () Bool)

(assert (= bs!131512 d!231158))

(declare-fun m!942545 () Bool)

(assert (=> bs!131512 m!942545))

(assert (=> setNonEmpty!3300 d!231158))

(declare-fun d!231160 () Bool)

(declare-fun res!312146 () Bool)

(declare-fun e!430840 () Bool)

(assert (=> d!231160 (=> (not res!312146) (not e!430840))))

(declare-fun valid!607 (MutableMap!695) Bool)

(assert (=> d!231160 (= res!312146 (valid!607 (cache!1082 cacheDown!470)))))

(assert (=> d!231160 (= (validCacheMapDown!55 (cache!1082 cacheDown!470)) e!430840)))

(declare-fun b!685873 () Bool)

(declare-fun res!312147 () Bool)

(assert (=> b!685873 (=> (not res!312147) (not e!430840))))

(declare-fun invariantList!123 (List!7353) Bool)

(declare-datatypes ((ListMap!295 0))(
  ( (ListMap!296 (toList!485 List!7353)) )
))
(declare-fun map!1627 (MutableMap!695) ListMap!295)

(assert (=> b!685873 (= res!312147 (invariantList!123 (toList!485 (map!1627 (cache!1082 cacheDown!470)))))))

(declare-fun b!685874 () Bool)

(declare-fun lambda!21228 () Int)

(declare-fun forall!1929 (List!7353 Int) Bool)

(assert (=> b!685874 (= e!430840 (forall!1929 (toList!485 (map!1627 (cache!1082 cacheDown!470))) lambda!21228))))

(assert (= (and d!231160 res!312146) b!685873))

(assert (= (and b!685873 res!312147) b!685874))

(declare-fun m!942548 () Bool)

(assert (=> d!231160 m!942548))

(declare-fun m!942550 () Bool)

(assert (=> b!685873 m!942550))

(declare-fun m!942552 () Bool)

(assert (=> b!685873 m!942552))

(assert (=> b!685874 m!942550))

(declare-fun m!942554 () Bool)

(assert (=> b!685874 m!942554))

(assert (=> d!231106 d!231160))

(declare-fun b!685887 () Bool)

(declare-fun e!430845 () Bool)

(declare-fun e!430846 () Bool)

(assert (=> b!685887 (= e!430845 e!430846)))

(declare-fun res!312164 () Bool)

(assert (=> b!685887 (=> (not res!312164) (not e!430846))))

(declare-fun height!311 (Conc!2608) Int)

(assert (=> b!685887 (= res!312164 (<= (- 1) (- (height!311 (left!5939 (c!121199 input!756))) (height!311 (right!6269 (c!121199 input!756))))))))

(declare-fun b!685888 () Bool)

(declare-fun res!312161 () Bool)

(assert (=> b!685888 (=> (not res!312161) (not e!430846))))

(assert (=> b!685888 (= res!312161 (isBalanced!687 (left!5939 (c!121199 input!756))))))

(declare-fun d!231162 () Bool)

(declare-fun res!312165 () Bool)

(assert (=> d!231162 (=> res!312165 e!430845)))

(assert (=> d!231162 (= res!312165 (not ((_ is Node!2608) (c!121199 input!756))))))

(assert (=> d!231162 (= (isBalanced!687 (c!121199 input!756)) e!430845)))

(declare-fun b!685889 () Bool)

(declare-fun res!312160 () Bool)

(assert (=> b!685889 (=> (not res!312160) (not e!430846))))

(assert (=> b!685889 (= res!312160 (isBalanced!687 (right!6269 (c!121199 input!756))))))

(declare-fun b!685890 () Bool)

(declare-fun isEmpty!4833 (Conc!2608) Bool)

(assert (=> b!685890 (= e!430846 (not (isEmpty!4833 (right!6269 (c!121199 input!756)))))))

(declare-fun b!685891 () Bool)

(declare-fun res!312162 () Bool)

(assert (=> b!685891 (=> (not res!312162) (not e!430846))))

(assert (=> b!685891 (= res!312162 (not (isEmpty!4833 (left!5939 (c!121199 input!756)))))))

(declare-fun b!685892 () Bool)

(declare-fun res!312163 () Bool)

(assert (=> b!685892 (=> (not res!312163) (not e!430846))))

(assert (=> b!685892 (= res!312163 (<= (- (height!311 (left!5939 (c!121199 input!756))) (height!311 (right!6269 (c!121199 input!756)))) 1))))

(assert (= (and d!231162 (not res!312165)) b!685887))

(assert (= (and b!685887 res!312164) b!685892))

(assert (= (and b!685892 res!312163) b!685888))

(assert (= (and b!685888 res!312161) b!685889))

(assert (= (and b!685889 res!312160) b!685891))

(assert (= (and b!685891 res!312162) b!685890))

(declare-fun m!942556 () Bool)

(assert (=> b!685890 m!942556))

(declare-fun m!942558 () Bool)

(assert (=> b!685892 m!942558))

(declare-fun m!942560 () Bool)

(assert (=> b!685892 m!942560))

(declare-fun m!942562 () Bool)

(assert (=> b!685889 m!942562))

(declare-fun m!942564 () Bool)

(assert (=> b!685888 m!942564))

(declare-fun m!942566 () Bool)

(assert (=> b!685891 m!942566))

(assert (=> b!685887 m!942558))

(assert (=> b!685887 m!942560))

(assert (=> d!231092 d!231162))

(declare-fun d!231164 () Bool)

(declare-fun c!121214 () Bool)

(assert (=> d!231164 (= c!121214 ((_ is Nil!7335) lt!283853))))

(declare-fun e!430849 () (InoxSet C!4236))

(assert (=> d!231164 (= (content!1179 lt!283853) e!430849)))

(declare-fun b!685897 () Bool)

(assert (=> b!685897 (= e!430849 ((as const (Array C!4236 Bool)) false))))

(declare-fun b!685898 () Bool)

(assert (=> b!685898 (= e!430849 ((_ map or) (store ((as const (Array C!4236 Bool)) false) (h!12736 lt!283853) true) (content!1179 (t!87145 lt!283853))))))

(assert (= (and d!231164 c!121214) b!685897))

(assert (= (and d!231164 (not c!121214)) b!685898))

(declare-fun m!942568 () Bool)

(assert (=> b!685898 m!942568))

(declare-fun m!942570 () Bool)

(assert (=> b!685898 m!942570))

(assert (=> d!231100 d!231164))

(declare-fun d!231166 () Bool)

(declare-fun c!121215 () Bool)

(assert (=> d!231166 (= c!121215 ((_ is Nil!7335) lt!283847))))

(declare-fun e!430850 () (InoxSet C!4236))

(assert (=> d!231166 (= (content!1179 lt!283847) e!430850)))

(declare-fun b!685899 () Bool)

(assert (=> b!685899 (= e!430850 ((as const (Array C!4236 Bool)) false))))

(declare-fun b!685900 () Bool)

(assert (=> b!685900 (= e!430850 ((_ map or) (store ((as const (Array C!4236 Bool)) false) (h!12736 lt!283847) true) (content!1179 (t!87145 lt!283847))))))

(assert (= (and d!231166 c!121215) b!685899))

(assert (= (and d!231166 (not c!121215)) b!685900))

(declare-fun m!942572 () Bool)

(assert (=> b!685900 m!942572))

(assert (=> b!685900 m!942501))

(assert (=> d!231100 d!231166))

(declare-fun d!231168 () Bool)

(declare-fun c!121216 () Bool)

(assert (=> d!231168 (= c!121216 ((_ is Nil!7335) lt!283848))))

(declare-fun e!430851 () (InoxSet C!4236))

(assert (=> d!231168 (= (content!1179 lt!283848) e!430851)))

(declare-fun b!685901 () Bool)

(assert (=> b!685901 (= e!430851 ((as const (Array C!4236 Bool)) false))))

(declare-fun b!685902 () Bool)

(assert (=> b!685902 (= e!430851 ((_ map or) (store ((as const (Array C!4236 Bool)) false) (h!12736 lt!283848) true) (content!1179 (t!87145 lt!283848))))))

(assert (= (and d!231168 c!121216) b!685901))

(assert (= (and d!231168 (not c!121216)) b!685902))

(declare-fun m!942574 () Bool)

(assert (=> b!685902 m!942574))

(declare-fun m!942576 () Bool)

(assert (=> b!685902 m!942576))

(assert (=> d!231100 d!231168))

(declare-fun d!231170 () Bool)

(assert (=> d!231170 true))

(declare-fun lambda!21231 () Int)

(declare-fun order!5319 () Int)

(declare-fun order!5317 () Int)

(declare-fun dynLambda!3860 (Int Int) Int)

(declare-fun dynLambda!3861 (Int Int) Int)

(assert (=> d!231170 (< (dynLambda!3860 order!5317 (toChars!2292 (transformation!1481 (h!12737 rules!1357)))) (dynLambda!3861 order!5319 lambda!21231))))

(assert (=> d!231170 true))

(declare-fun order!5321 () Int)

(declare-fun dynLambda!3862 (Int Int) Int)

(assert (=> d!231170 (< (dynLambda!3862 order!5321 (toValue!2433 (transformation!1481 (h!12737 rules!1357)))) (dynLambda!3861 order!5319 lambda!21231))))

(declare-fun Forall!352 (Int) Bool)

(assert (=> d!231170 (= (semiInverseModEq!565 (toChars!2292 (transformation!1481 (h!12737 rules!1357))) (toValue!2433 (transformation!1481 (h!12737 rules!1357)))) (Forall!352 lambda!21231))))

(declare-fun bs!131513 () Bool)

(assert (= bs!131513 d!231170))

(declare-fun m!942578 () Bool)

(assert (=> bs!131513 m!942578))

(assert (=> d!231076 d!231170))

(declare-fun bs!131514 () Bool)

(declare-fun d!231172 () Bool)

(assert (= bs!131514 (and d!231172 d!231116)))

(declare-fun lambda!21232 () Int)

(assert (=> bs!131514 (= lambda!21232 lambda!21211)))

(declare-fun bs!131515 () Bool)

(assert (= bs!131515 (and d!231172 d!231146)))

(assert (=> bs!131515 (= lambda!21232 lambda!21222)))

(declare-fun bs!131516 () Bool)

(assert (= bs!131516 (and d!231172 d!231142)))

(assert (=> bs!131516 (= lambda!21232 lambda!21221)))

(declare-fun bs!131517 () Bool)

(assert (= bs!131517 (and d!231172 d!231120)))

(assert (=> bs!131517 (= lambda!21232 lambda!21213)))

(declare-fun bs!131518 () Bool)

(assert (= bs!131518 (and d!231172 d!231140)))

(assert (=> bs!131518 (= lambda!21232 lambda!21220)))

(declare-fun bs!131519 () Bool)

(assert (= bs!131519 (and d!231172 d!231118)))

(assert (=> bs!131519 (= lambda!21232 lambda!21212)))

(declare-fun bs!131520 () Bool)

(assert (= bs!131520 (and d!231172 d!231148)))

(assert (=> bs!131520 (= lambda!21232 lambda!21223)))

(declare-fun bs!131521 () Bool)

(assert (= bs!131521 (and d!231172 d!231132)))

(assert (=> bs!131521 (= lambda!21232 lambda!21218)))

(declare-fun bs!131522 () Bool)

(assert (= bs!131522 (and d!231172 d!231134)))

(assert (=> bs!131522 (= lambda!21232 lambda!21219)))

(declare-fun bs!131523 () Bool)

(assert (= bs!131523 (and d!231172 d!231150)))

(assert (=> bs!131523 (= lambda!21232 lambda!21224)))

(declare-fun bs!131524 () Bool)

(assert (= bs!131524 (and d!231172 d!231128)))

(assert (=> bs!131524 (= lambda!21232 lambda!21216)))

(declare-fun bs!131525 () Bool)

(assert (= bs!131525 (and d!231172 d!231124)))

(assert (=> bs!131525 (= lambda!21232 lambda!21215)))

(declare-fun bs!131526 () Bool)

(assert (= bs!131526 (and d!231172 d!231158)))

(assert (=> bs!131526 (= lambda!21232 lambda!21225)))

(declare-fun bs!131527 () Bool)

(assert (= bs!131527 (and d!231172 d!231122)))

(assert (=> bs!131527 (= lambda!21232 lambda!21214)))

(declare-fun bs!131528 () Bool)

(assert (= bs!131528 (and d!231172 d!231130)))

(assert (=> bs!131528 (= lambda!21232 lambda!21217)))

(assert (=> d!231172 (= (inv!9447 (_2!4226 (_1!4227 (h!12740 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))))) (forall!1928 (exprs!727 (_2!4226 (_1!4227 (h!12740 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))))) lambda!21232))))

(declare-fun bs!131529 () Bool)

(assert (= bs!131529 d!231172))

(declare-fun m!942580 () Bool)

(assert (=> bs!131529 m!942580))

(assert (=> b!685703 d!231172))

(declare-fun d!231174 () Bool)

(declare-fun res!312172 () Bool)

(declare-fun e!430854 () Bool)

(assert (=> d!231174 (=> (not res!312172) (not e!430854))))

(declare-fun size!6026 (Conc!2608) Int)

(assert (=> d!231174 (= res!312172 (= (csize!5446 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) (+ (size!6026 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) (size!6026 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))))

(assert (=> d!231174 (= (inv!9445 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) e!430854)))

(declare-fun b!685913 () Bool)

(declare-fun res!312173 () Bool)

(assert (=> b!685913 (=> (not res!312173) (not e!430854))))

(assert (=> b!685913 (= res!312173 (and (not (= (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) Empty!2608)) (not (= (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) Empty!2608))))))

(declare-fun b!685914 () Bool)

(declare-fun res!312174 () Bool)

(assert (=> b!685914 (=> (not res!312174) (not e!430854))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!685914 (= res!312174 (= (cheight!2819 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) (+ (max!0 (height!311 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) (height!311 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) 1)))))

(declare-fun b!685915 () Bool)

(assert (=> b!685915 (= e!430854 (<= 0 (cheight!2819 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))

(assert (= (and d!231174 res!312172) b!685913))

(assert (= (and b!685913 res!312173) b!685914))

(assert (= (and b!685914 res!312174) b!685915))

(declare-fun m!942582 () Bool)

(assert (=> d!231174 m!942582))

(declare-fun m!942584 () Bool)

(assert (=> d!231174 m!942584))

(declare-fun m!942586 () Bool)

(assert (=> b!685914 m!942586))

(declare-fun m!942588 () Bool)

(assert (=> b!685914 m!942588))

(assert (=> b!685914 m!942586))

(assert (=> b!685914 m!942588))

(declare-fun m!942590 () Bool)

(assert (=> b!685914 m!942590))

(assert (=> b!685686 d!231174))

(declare-fun b!685921 () Bool)

(assert (=> b!685921 true))

(declare-fun d!231176 () Bool)

(declare-fun res!312179 () Bool)

(declare-fun e!430857 () Bool)

(assert (=> d!231176 (=> (not res!312179) (not e!430857))))

(declare-fun valid!608 (MutableMap!694) Bool)

(assert (=> d!231176 (= res!312179 (valid!608 (cache!1081 cacheFindLongestMatch!59)))))

(assert (=> d!231176 (= (validCacheMapFindLongestMatch!1 (cache!1081 cacheFindLongestMatch!59) (totalInput!1780 cacheFindLongestMatch!59)) e!430857)))

(declare-fun b!685920 () Bool)

(declare-fun res!312180 () Bool)

(assert (=> b!685920 (=> (not res!312180) (not e!430857))))

(declare-fun invariantList!124 (List!7352) Bool)

(declare-datatypes ((ListMap!297 0))(
  ( (ListMap!298 (toList!486 List!7352)) )
))
(declare-fun map!1628 (MutableMap!694) ListMap!297)

(assert (=> b!685920 (= res!312180 (invariantList!124 (toList!486 (map!1628 (cache!1081 cacheFindLongestMatch!59)))))))

(declare-fun lambda!21235 () Int)

(declare-fun forall!1930 (List!7352 Int) Bool)

(assert (=> b!685921 (= e!430857 (forall!1930 (toList!486 (map!1628 (cache!1081 cacheFindLongestMatch!59))) lambda!21235))))

(assert (= (and d!231176 res!312179) b!685920))

(assert (= (and b!685920 res!312180) b!685921))

(declare-fun m!942593 () Bool)

(assert (=> d!231176 m!942593))

(declare-fun m!942595 () Bool)

(assert (=> b!685920 m!942595))

(declare-fun m!942597 () Bool)

(assert (=> b!685920 m!942597))

(assert (=> b!685921 m!942595))

(declare-fun m!942599 () Bool)

(assert (=> b!685921 m!942599))

(assert (=> b!685667 d!231176))

(declare-fun d!231178 () Bool)

(declare-fun res!312185 () Bool)

(declare-fun e!430860 () Bool)

(assert (=> d!231178 (=> (not res!312185) (not e!430860))))

(declare-fun valid!609 (MutableMap!696) Bool)

(assert (=> d!231178 (= res!312185 (valid!609 (cache!1083 cacheUp!457)))))

(assert (=> d!231178 (= (validCacheMapUp!55 (cache!1083 cacheUp!457)) e!430860)))

(declare-fun b!685928 () Bool)

(declare-fun res!312186 () Bool)

(assert (=> b!685928 (=> (not res!312186) (not e!430860))))

(declare-fun invariantList!125 (List!7354) Bool)

(declare-datatypes ((ListMap!299 0))(
  ( (ListMap!300 (toList!487 List!7354)) )
))
(declare-fun map!1629 (MutableMap!696) ListMap!299)

(assert (=> b!685928 (= res!312186 (invariantList!125 (toList!487 (map!1629 (cache!1083 cacheUp!457)))))))

(declare-fun b!685929 () Bool)

(declare-fun lambda!21238 () Int)

(declare-fun forall!1931 (List!7354 Int) Bool)

(assert (=> b!685929 (= e!430860 (forall!1931 (toList!487 (map!1629 (cache!1083 cacheUp!457))) lambda!21238))))

(assert (= (and d!231178 res!312185) b!685928))

(assert (= (and b!685928 res!312186) b!685929))

(declare-fun m!942602 () Bool)

(assert (=> d!231178 m!942602))

(declare-fun m!942604 () Bool)

(assert (=> b!685928 m!942604))

(declare-fun m!942606 () Bool)

(assert (=> b!685928 m!942606))

(assert (=> b!685929 m!942604))

(declare-fun m!942608 () Bool)

(assert (=> b!685929 m!942608))

(assert (=> b!685670 d!231178))

(declare-fun bs!131530 () Bool)

(declare-fun d!231180 () Bool)

(assert (= bs!131530 (and d!231180 d!231116)))

(declare-fun lambda!21239 () Int)

(assert (=> bs!131530 (= lambda!21239 lambda!21211)))

(declare-fun bs!131531 () Bool)

(assert (= bs!131531 (and d!231180 d!231172)))

(assert (=> bs!131531 (= lambda!21239 lambda!21232)))

(declare-fun bs!131532 () Bool)

(assert (= bs!131532 (and d!231180 d!231146)))

(assert (=> bs!131532 (= lambda!21239 lambda!21222)))

(declare-fun bs!131533 () Bool)

(assert (= bs!131533 (and d!231180 d!231142)))

(assert (=> bs!131533 (= lambda!21239 lambda!21221)))

(declare-fun bs!131534 () Bool)

(assert (= bs!131534 (and d!231180 d!231120)))

(assert (=> bs!131534 (= lambda!21239 lambda!21213)))

(declare-fun bs!131535 () Bool)

(assert (= bs!131535 (and d!231180 d!231140)))

(assert (=> bs!131535 (= lambda!21239 lambda!21220)))

(declare-fun bs!131536 () Bool)

(assert (= bs!131536 (and d!231180 d!231118)))

(assert (=> bs!131536 (= lambda!21239 lambda!21212)))

(declare-fun bs!131537 () Bool)

(assert (= bs!131537 (and d!231180 d!231148)))

(assert (=> bs!131537 (= lambda!21239 lambda!21223)))

(declare-fun bs!131538 () Bool)

(assert (= bs!131538 (and d!231180 d!231132)))

(assert (=> bs!131538 (= lambda!21239 lambda!21218)))

(declare-fun bs!131539 () Bool)

(assert (= bs!131539 (and d!231180 d!231134)))

(assert (=> bs!131539 (= lambda!21239 lambda!21219)))

(declare-fun bs!131540 () Bool)

(assert (= bs!131540 (and d!231180 d!231150)))

(assert (=> bs!131540 (= lambda!21239 lambda!21224)))

(declare-fun bs!131541 () Bool)

(assert (= bs!131541 (and d!231180 d!231128)))

(assert (=> bs!131541 (= lambda!21239 lambda!21216)))

(declare-fun bs!131542 () Bool)

(assert (= bs!131542 (and d!231180 d!231124)))

(assert (=> bs!131542 (= lambda!21239 lambda!21215)))

(declare-fun bs!131543 () Bool)

(assert (= bs!131543 (and d!231180 d!231158)))

(assert (=> bs!131543 (= lambda!21239 lambda!21225)))

(declare-fun bs!131544 () Bool)

(assert (= bs!131544 (and d!231180 d!231122)))

(assert (=> bs!131544 (= lambda!21239 lambda!21214)))

(declare-fun bs!131545 () Bool)

(assert (= bs!131545 (and d!231180 d!231130)))

(assert (=> bs!131545 (= lambda!21239 lambda!21217)))

(assert (=> d!231180 (= (inv!9447 (_2!4226 (_1!4227 (h!12740 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))))) (forall!1928 (exprs!727 (_2!4226 (_1!4227 (h!12740 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))))) lambda!21239))))

(declare-fun bs!131546 () Bool)

(assert (= bs!131546 d!231180))

(declare-fun m!942610 () Bool)

(assert (=> bs!131546 m!942610))

(assert (=> b!685700 d!231180))

(declare-fun bs!131547 () Bool)

(declare-fun d!231182 () Bool)

(assert (= bs!131547 (and d!231182 d!231116)))

(declare-fun lambda!21240 () Int)

(assert (=> bs!131547 (= lambda!21240 lambda!21211)))

(declare-fun bs!131548 () Bool)

(assert (= bs!131548 (and d!231182 d!231172)))

(assert (=> bs!131548 (= lambda!21240 lambda!21232)))

(declare-fun bs!131549 () Bool)

(assert (= bs!131549 (and d!231182 d!231146)))

(assert (=> bs!131549 (= lambda!21240 lambda!21222)))

(declare-fun bs!131550 () Bool)

(assert (= bs!131550 (and d!231182 d!231142)))

(assert (=> bs!131550 (= lambda!21240 lambda!21221)))

(declare-fun bs!131551 () Bool)

(assert (= bs!131551 (and d!231182 d!231120)))

(assert (=> bs!131551 (= lambda!21240 lambda!21213)))

(declare-fun bs!131552 () Bool)

(assert (= bs!131552 (and d!231182 d!231140)))

(assert (=> bs!131552 (= lambda!21240 lambda!21220)))

(declare-fun bs!131553 () Bool)

(assert (= bs!131553 (and d!231182 d!231118)))

(assert (=> bs!131553 (= lambda!21240 lambda!21212)))

(declare-fun bs!131554 () Bool)

(assert (= bs!131554 (and d!231182 d!231148)))

(assert (=> bs!131554 (= lambda!21240 lambda!21223)))

(declare-fun bs!131555 () Bool)

(assert (= bs!131555 (and d!231182 d!231132)))

(assert (=> bs!131555 (= lambda!21240 lambda!21218)))

(declare-fun bs!131556 () Bool)

(assert (= bs!131556 (and d!231182 d!231134)))

(assert (=> bs!131556 (= lambda!21240 lambda!21219)))

(declare-fun bs!131557 () Bool)

(assert (= bs!131557 (and d!231182 d!231150)))

(assert (=> bs!131557 (= lambda!21240 lambda!21224)))

(declare-fun bs!131558 () Bool)

(assert (= bs!131558 (and d!231182 d!231180)))

(assert (=> bs!131558 (= lambda!21240 lambda!21239)))

(declare-fun bs!131559 () Bool)

(assert (= bs!131559 (and d!231182 d!231128)))

(assert (=> bs!131559 (= lambda!21240 lambda!21216)))

(declare-fun bs!131560 () Bool)

(assert (= bs!131560 (and d!231182 d!231124)))

(assert (=> bs!131560 (= lambda!21240 lambda!21215)))

(declare-fun bs!131561 () Bool)

(assert (= bs!131561 (and d!231182 d!231158)))

(assert (=> bs!131561 (= lambda!21240 lambda!21225)))

(declare-fun bs!131562 () Bool)

(assert (= bs!131562 (and d!231182 d!231122)))

(assert (=> bs!131562 (= lambda!21240 lambda!21214)))

(declare-fun bs!131563 () Bool)

(assert (= bs!131563 (and d!231182 d!231130)))

(assert (=> bs!131563 (= lambda!21240 lambda!21217)))

(assert (=> d!231182 (= (inv!9447 (_2!4226 (_1!4227 (h!12740 mapValue!2878)))) (forall!1928 (exprs!727 (_2!4226 (_1!4227 (h!12740 mapValue!2878)))) lambda!21240))))

(declare-fun bs!131564 () Bool)

(assert (= bs!131564 d!231182))

(declare-fun m!942612 () Bool)

(assert (=> bs!131564 m!942612))

(assert (=> b!685786 d!231182))

(assert (=> b!685673 d!231160))

(declare-fun d!231184 () Bool)

(assert (=> d!231184 true))

(declare-fun lambda!21243 () Int)

(declare-fun order!5323 () Int)

(declare-fun dynLambda!3863 (Int Int) Int)

(assert (=> d!231184 (< (dynLambda!3862 order!5321 (toValue!2433 (transformation!1481 (h!12737 rules!1357)))) (dynLambda!3863 order!5323 lambda!21243))))

(declare-fun Forall2!270 (Int) Bool)

(assert (=> d!231184 (= (equivClasses!540 (toChars!2292 (transformation!1481 (h!12737 rules!1357))) (toValue!2433 (transformation!1481 (h!12737 rules!1357)))) (Forall2!270 lambda!21243))))

(declare-fun bs!131565 () Bool)

(assert (= bs!131565 d!231184))

(declare-fun m!942614 () Bool)

(assert (=> bs!131565 m!942614))

(assert (=> b!685655 d!231184))

(declare-fun d!231186 () Bool)

(declare-fun res!312189 () Bool)

(declare-fun e!430863 () Bool)

(assert (=> d!231186 (=> (not res!312189) (not e!430863))))

(assert (=> d!231186 (= res!312189 (<= (size!6025 (list!3101 (xs!5257 (c!121199 input!756)))) 512))))

(assert (=> d!231186 (= (inv!9446 (c!121199 input!756)) e!430863)))

(declare-fun b!685934 () Bool)

(declare-fun res!312190 () Bool)

(assert (=> b!685934 (=> (not res!312190) (not e!430863))))

(assert (=> b!685934 (= res!312190 (= (csize!5447 (c!121199 input!756)) (size!6025 (list!3101 (xs!5257 (c!121199 input!756))))))))

(declare-fun b!685935 () Bool)

(assert (=> b!685935 (= e!430863 (and (> (csize!5447 (c!121199 input!756)) 0) (<= (csize!5447 (c!121199 input!756)) 512)))))

(assert (= (and d!231186 res!312189) b!685934))

(assert (= (and b!685934 res!312190) b!685935))

(declare-fun m!942616 () Bool)

(assert (=> d!231186 m!942616))

(assert (=> d!231186 m!942616))

(declare-fun m!942618 () Bool)

(assert (=> d!231186 m!942618))

(assert (=> b!685934 m!942616))

(assert (=> b!685934 m!942616))

(assert (=> b!685934 m!942618))

(assert (=> b!685664 d!231186))

(declare-fun bs!131566 () Bool)

(declare-fun d!231188 () Bool)

(assert (= bs!131566 (and d!231188 d!231116)))

(declare-fun lambda!21244 () Int)

(assert (=> bs!131566 (= lambda!21244 lambda!21211)))

(declare-fun bs!131567 () Bool)

(assert (= bs!131567 (and d!231188 d!231172)))

(assert (=> bs!131567 (= lambda!21244 lambda!21232)))

(declare-fun bs!131568 () Bool)

(assert (= bs!131568 (and d!231188 d!231146)))

(assert (=> bs!131568 (= lambda!21244 lambda!21222)))

(declare-fun bs!131569 () Bool)

(assert (= bs!131569 (and d!231188 d!231142)))

(assert (=> bs!131569 (= lambda!21244 lambda!21221)))

(declare-fun bs!131570 () Bool)

(assert (= bs!131570 (and d!231188 d!231120)))

(assert (=> bs!131570 (= lambda!21244 lambda!21213)))

(declare-fun bs!131571 () Bool)

(assert (= bs!131571 (and d!231188 d!231182)))

(assert (=> bs!131571 (= lambda!21244 lambda!21240)))

(declare-fun bs!131572 () Bool)

(assert (= bs!131572 (and d!231188 d!231140)))

(assert (=> bs!131572 (= lambda!21244 lambda!21220)))

(declare-fun bs!131573 () Bool)

(assert (= bs!131573 (and d!231188 d!231118)))

(assert (=> bs!131573 (= lambda!21244 lambda!21212)))

(declare-fun bs!131574 () Bool)

(assert (= bs!131574 (and d!231188 d!231148)))

(assert (=> bs!131574 (= lambda!21244 lambda!21223)))

(declare-fun bs!131575 () Bool)

(assert (= bs!131575 (and d!231188 d!231132)))

(assert (=> bs!131575 (= lambda!21244 lambda!21218)))

(declare-fun bs!131576 () Bool)

(assert (= bs!131576 (and d!231188 d!231134)))

(assert (=> bs!131576 (= lambda!21244 lambda!21219)))

(declare-fun bs!131577 () Bool)

(assert (= bs!131577 (and d!231188 d!231150)))

(assert (=> bs!131577 (= lambda!21244 lambda!21224)))

(declare-fun bs!131578 () Bool)

(assert (= bs!131578 (and d!231188 d!231180)))

(assert (=> bs!131578 (= lambda!21244 lambda!21239)))

(declare-fun bs!131579 () Bool)

(assert (= bs!131579 (and d!231188 d!231128)))

(assert (=> bs!131579 (= lambda!21244 lambda!21216)))

(declare-fun bs!131580 () Bool)

(assert (= bs!131580 (and d!231188 d!231124)))

(assert (=> bs!131580 (= lambda!21244 lambda!21215)))

(declare-fun bs!131581 () Bool)

(assert (= bs!131581 (and d!231188 d!231158)))

(assert (=> bs!131581 (= lambda!21244 lambda!21225)))

(declare-fun bs!131582 () Bool)

(assert (= bs!131582 (and d!231188 d!231122)))

(assert (=> bs!131582 (= lambda!21244 lambda!21214)))

(declare-fun bs!131583 () Bool)

(assert (= bs!131583 (and d!231188 d!231130)))

(assert (=> bs!131583 (= lambda!21244 lambda!21217)))

(assert (=> d!231188 (= (inv!9447 (_1!4228 (_1!4229 (h!12741 mapValue!2874)))) (forall!1928 (exprs!727 (_1!4228 (_1!4229 (h!12741 mapValue!2874)))) lambda!21244))))

(declare-fun bs!131584 () Bool)

(assert (= bs!131584 d!231188))

(declare-fun m!942620 () Bool)

(assert (=> bs!131584 m!942620))

(assert (=> b!685812 d!231188))

(declare-fun d!231190 () Bool)

(declare-fun lt!283857 () Int)

(assert (=> d!231190 (>= lt!283857 0)))

(declare-fun e!430866 () Int)

(assert (=> d!231190 (= lt!283857 e!430866)))

(declare-fun c!121219 () Bool)

(assert (=> d!231190 (= c!121219 ((_ is Nil!7335) lt!283853))))

(assert (=> d!231190 (= (size!6025 lt!283853) lt!283857)))

(declare-fun b!685940 () Bool)

(assert (=> b!685940 (= e!430866 0)))

(declare-fun b!685941 () Bool)

(assert (=> b!685941 (= e!430866 (+ 1 (size!6025 (t!87145 lt!283853))))))

(assert (= (and d!231190 c!121219) b!685940))

(assert (= (and d!231190 (not c!121219)) b!685941))

(declare-fun m!942622 () Bool)

(assert (=> b!685941 m!942622))

(assert (=> b!685684 d!231190))

(declare-fun d!231192 () Bool)

(declare-fun lt!283858 () Int)

(assert (=> d!231192 (>= lt!283858 0)))

(declare-fun e!430867 () Int)

(assert (=> d!231192 (= lt!283858 e!430867)))

(declare-fun c!121220 () Bool)

(assert (=> d!231192 (= c!121220 ((_ is Nil!7335) lt!283847))))

(assert (=> d!231192 (= (size!6025 lt!283847) lt!283858)))

(declare-fun b!685942 () Bool)

(assert (=> b!685942 (= e!430867 0)))

(declare-fun b!685943 () Bool)

(assert (=> b!685943 (= e!430867 (+ 1 (size!6025 (t!87145 lt!283847))))))

(assert (= (and d!231192 c!121220) b!685942))

(assert (= (and d!231192 (not c!121220)) b!685943))

(assert (=> b!685943 m!942495))

(assert (=> b!685684 d!231192))

(declare-fun d!231194 () Bool)

(declare-fun lt!283859 () Int)

(assert (=> d!231194 (>= lt!283859 0)))

(declare-fun e!430868 () Int)

(assert (=> d!231194 (= lt!283859 e!430868)))

(declare-fun c!121221 () Bool)

(assert (=> d!231194 (= c!121221 ((_ is Nil!7335) lt!283848))))

(assert (=> d!231194 (= (size!6025 lt!283848) lt!283859)))

(declare-fun b!685944 () Bool)

(assert (=> b!685944 (= e!430868 0)))

(declare-fun b!685945 () Bool)

(assert (=> b!685945 (= e!430868 (+ 1 (size!6025 (t!87145 lt!283848))))))

(assert (= (and d!231194 c!121221) b!685944))

(assert (= (and d!231194 (not c!121221)) b!685945))

(declare-fun m!942624 () Bool)

(assert (=> b!685945 m!942624))

(assert (=> b!685684 d!231194))

(declare-fun d!231196 () Bool)

(declare-fun res!312191 () Bool)

(declare-fun e!430869 () Bool)

(assert (=> d!231196 (=> (not res!312191) (not e!430869))))

(assert (=> d!231196 (= res!312191 (= (csize!5446 (c!121199 input!756)) (+ (size!6026 (left!5939 (c!121199 input!756))) (size!6026 (right!6269 (c!121199 input!756))))))))

(assert (=> d!231196 (= (inv!9445 (c!121199 input!756)) e!430869)))

(declare-fun b!685946 () Bool)

(declare-fun res!312192 () Bool)

(assert (=> b!685946 (=> (not res!312192) (not e!430869))))

(assert (=> b!685946 (= res!312192 (and (not (= (left!5939 (c!121199 input!756)) Empty!2608)) (not (= (right!6269 (c!121199 input!756)) Empty!2608))))))

(declare-fun b!685947 () Bool)

(declare-fun res!312193 () Bool)

(assert (=> b!685947 (=> (not res!312193) (not e!430869))))

(assert (=> b!685947 (= res!312193 (= (cheight!2819 (c!121199 input!756)) (+ (max!0 (height!311 (left!5939 (c!121199 input!756))) (height!311 (right!6269 (c!121199 input!756)))) 1)))))

(declare-fun b!685948 () Bool)

(assert (=> b!685948 (= e!430869 (<= 0 (cheight!2819 (c!121199 input!756))))))

(assert (= (and d!231196 res!312191) b!685946))

(assert (= (and b!685946 res!312192) b!685947))

(assert (= (and b!685947 res!312193) b!685948))

(declare-fun m!942626 () Bool)

(assert (=> d!231196 m!942626))

(declare-fun m!942628 () Bool)

(assert (=> d!231196 m!942628))

(assert (=> b!685947 m!942558))

(assert (=> b!685947 m!942560))

(assert (=> b!685947 m!942558))

(assert (=> b!685947 m!942560))

(declare-fun m!942630 () Bool)

(assert (=> b!685947 m!942630))

(assert (=> b!685662 d!231196))

(declare-fun d!231198 () Bool)

(assert (=> d!231198 true))

(declare-fun lt!283862 () Bool)

(declare-fun rulesValidInductive!514 (LexerInterface!1296 List!7350) Bool)

(assert (=> d!231198 (= lt!283862 (rulesValidInductive!514 thiss!12183 rules!1357))))

(declare-fun lambda!21247 () Int)

(declare-fun forall!1932 (List!7350 Int) Bool)

(assert (=> d!231198 (= lt!283862 (forall!1932 rules!1357 lambda!21247))))

(assert (=> d!231198 (= (rulesValid!522 thiss!12183 rules!1357) lt!283862)))

(declare-fun bs!131585 () Bool)

(assert (= bs!131585 d!231198))

(declare-fun m!942632 () Bool)

(assert (=> bs!131585 m!942632))

(declare-fun m!942634 () Bool)

(assert (=> bs!131585 m!942634))

(assert (=> d!231114 d!231198))

(declare-fun bs!131586 () Bool)

(declare-fun d!231200 () Bool)

(assert (= bs!131586 (and d!231200 d!231116)))

(declare-fun lambda!21248 () Int)

(assert (=> bs!131586 (= lambda!21248 lambda!21211)))

(declare-fun bs!131587 () Bool)

(assert (= bs!131587 (and d!231200 d!231172)))

(assert (=> bs!131587 (= lambda!21248 lambda!21232)))

(declare-fun bs!131588 () Bool)

(assert (= bs!131588 (and d!231200 d!231146)))

(assert (=> bs!131588 (= lambda!21248 lambda!21222)))

(declare-fun bs!131589 () Bool)

(assert (= bs!131589 (and d!231200 d!231142)))

(assert (=> bs!131589 (= lambda!21248 lambda!21221)))

(declare-fun bs!131590 () Bool)

(assert (= bs!131590 (and d!231200 d!231120)))

(assert (=> bs!131590 (= lambda!21248 lambda!21213)))

(declare-fun bs!131591 () Bool)

(assert (= bs!131591 (and d!231200 d!231182)))

(assert (=> bs!131591 (= lambda!21248 lambda!21240)))

(declare-fun bs!131592 () Bool)

(assert (= bs!131592 (and d!231200 d!231140)))

(assert (=> bs!131592 (= lambda!21248 lambda!21220)))

(declare-fun bs!131593 () Bool)

(assert (= bs!131593 (and d!231200 d!231188)))

(assert (=> bs!131593 (= lambda!21248 lambda!21244)))

(declare-fun bs!131594 () Bool)

(assert (= bs!131594 (and d!231200 d!231118)))

(assert (=> bs!131594 (= lambda!21248 lambda!21212)))

(declare-fun bs!131595 () Bool)

(assert (= bs!131595 (and d!231200 d!231148)))

(assert (=> bs!131595 (= lambda!21248 lambda!21223)))

(declare-fun bs!131596 () Bool)

(assert (= bs!131596 (and d!231200 d!231132)))

(assert (=> bs!131596 (= lambda!21248 lambda!21218)))

(declare-fun bs!131597 () Bool)

(assert (= bs!131597 (and d!231200 d!231134)))

(assert (=> bs!131597 (= lambda!21248 lambda!21219)))

(declare-fun bs!131598 () Bool)

(assert (= bs!131598 (and d!231200 d!231150)))

(assert (=> bs!131598 (= lambda!21248 lambda!21224)))

(declare-fun bs!131599 () Bool)

(assert (= bs!131599 (and d!231200 d!231180)))

(assert (=> bs!131599 (= lambda!21248 lambda!21239)))

(declare-fun bs!131600 () Bool)

(assert (= bs!131600 (and d!231200 d!231128)))

(assert (=> bs!131600 (= lambda!21248 lambda!21216)))

(declare-fun bs!131601 () Bool)

(assert (= bs!131601 (and d!231200 d!231124)))

(assert (=> bs!131601 (= lambda!21248 lambda!21215)))

(declare-fun bs!131602 () Bool)

(assert (= bs!131602 (and d!231200 d!231158)))

(assert (=> bs!131602 (= lambda!21248 lambda!21225)))

(declare-fun bs!131603 () Bool)

(assert (= bs!131603 (and d!231200 d!231122)))

(assert (=> bs!131603 (= lambda!21248 lambda!21214)))

(declare-fun bs!131604 () Bool)

(assert (= bs!131604 (and d!231200 d!231130)))

(assert (=> bs!131604 (= lambda!21248 lambda!21217)))

(assert (=> d!231200 (= (inv!9447 (_1!4228 (_1!4229 (h!12741 (minValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))))) (forall!1928 (exprs!727 (_1!4228 (_1!4229 (h!12741 (minValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))))) lambda!21248))))

(declare-fun bs!131605 () Bool)

(assert (= bs!131605 d!231200))

(declare-fun m!942636 () Bool)

(assert (=> bs!131605 m!942636))

(assert (=> b!685732 d!231200))

(declare-fun b!685960 () Bool)

(declare-fun e!430874 () List!7349)

(declare-fun e!430875 () List!7349)

(assert (=> b!685960 (= e!430874 e!430875)))

(declare-fun c!121227 () Bool)

(assert (=> b!685960 (= c!121227 ((_ is Leaf!3870) (c!121199 input!756)))))

(declare-fun b!685961 () Bool)

(assert (=> b!685961 (= e!430875 (list!3101 (xs!5257 (c!121199 input!756))))))

(declare-fun b!685962 () Bool)

(assert (=> b!685962 (= e!430875 (++!1931 (list!3100 (left!5939 (c!121199 input!756))) (list!3100 (right!6269 (c!121199 input!756)))))))

(declare-fun b!685959 () Bool)

(assert (=> b!685959 (= e!430874 Nil!7335)))

(declare-fun d!231202 () Bool)

(declare-fun c!121226 () Bool)

(assert (=> d!231202 (= c!121226 ((_ is Empty!2608) (c!121199 input!756)))))

(assert (=> d!231202 (= (list!3100 (c!121199 input!756)) e!430874)))

(assert (= (and d!231202 c!121226) b!685959))

(assert (= (and d!231202 (not c!121226)) b!685960))

(assert (= (and b!685960 c!121227) b!685961))

(assert (= (and b!685960 (not c!121227)) b!685962))

(assert (=> b!685961 m!942616))

(declare-fun m!942638 () Bool)

(assert (=> b!685962 m!942638))

(declare-fun m!942640 () Bool)

(assert (=> b!685962 m!942640))

(assert (=> b!685962 m!942638))

(assert (=> b!685962 m!942640))

(declare-fun m!942642 () Bool)

(assert (=> b!685962 m!942642))

(assert (=> d!231102 d!231202))

(declare-fun bs!131606 () Bool)

(declare-fun d!231204 () Bool)

(assert (= bs!131606 (and d!231204 d!231116)))

(declare-fun lambda!21249 () Int)

(assert (=> bs!131606 (= lambda!21249 lambda!21211)))

(declare-fun bs!131607 () Bool)

(assert (= bs!131607 (and d!231204 d!231200)))

(assert (=> bs!131607 (= lambda!21249 lambda!21248)))

(declare-fun bs!131608 () Bool)

(assert (= bs!131608 (and d!231204 d!231172)))

(assert (=> bs!131608 (= lambda!21249 lambda!21232)))

(declare-fun bs!131609 () Bool)

(assert (= bs!131609 (and d!231204 d!231146)))

(assert (=> bs!131609 (= lambda!21249 lambda!21222)))

(declare-fun bs!131610 () Bool)

(assert (= bs!131610 (and d!231204 d!231142)))

(assert (=> bs!131610 (= lambda!21249 lambda!21221)))

(declare-fun bs!131611 () Bool)

(assert (= bs!131611 (and d!231204 d!231120)))

(assert (=> bs!131611 (= lambda!21249 lambda!21213)))

(declare-fun bs!131612 () Bool)

(assert (= bs!131612 (and d!231204 d!231182)))

(assert (=> bs!131612 (= lambda!21249 lambda!21240)))

(declare-fun bs!131613 () Bool)

(assert (= bs!131613 (and d!231204 d!231140)))

(assert (=> bs!131613 (= lambda!21249 lambda!21220)))

(declare-fun bs!131614 () Bool)

(assert (= bs!131614 (and d!231204 d!231188)))

(assert (=> bs!131614 (= lambda!21249 lambda!21244)))

(declare-fun bs!131615 () Bool)

(assert (= bs!131615 (and d!231204 d!231118)))

(assert (=> bs!131615 (= lambda!21249 lambda!21212)))

(declare-fun bs!131616 () Bool)

(assert (= bs!131616 (and d!231204 d!231148)))

(assert (=> bs!131616 (= lambda!21249 lambda!21223)))

(declare-fun bs!131617 () Bool)

(assert (= bs!131617 (and d!231204 d!231132)))

(assert (=> bs!131617 (= lambda!21249 lambda!21218)))

(declare-fun bs!131618 () Bool)

(assert (= bs!131618 (and d!231204 d!231134)))

(assert (=> bs!131618 (= lambda!21249 lambda!21219)))

(declare-fun bs!131619 () Bool)

(assert (= bs!131619 (and d!231204 d!231150)))

(assert (=> bs!131619 (= lambda!21249 lambda!21224)))

(declare-fun bs!131620 () Bool)

(assert (= bs!131620 (and d!231204 d!231180)))

(assert (=> bs!131620 (= lambda!21249 lambda!21239)))

(declare-fun bs!131621 () Bool)

(assert (= bs!131621 (and d!231204 d!231128)))

(assert (=> bs!131621 (= lambda!21249 lambda!21216)))

(declare-fun bs!131622 () Bool)

(assert (= bs!131622 (and d!231204 d!231124)))

(assert (=> bs!131622 (= lambda!21249 lambda!21215)))

(declare-fun bs!131623 () Bool)

(assert (= bs!131623 (and d!231204 d!231158)))

(assert (=> bs!131623 (= lambda!21249 lambda!21225)))

(declare-fun bs!131624 () Bool)

(assert (= bs!131624 (and d!231204 d!231122)))

(assert (=> bs!131624 (= lambda!21249 lambda!21214)))

(declare-fun bs!131625 () Bool)

(assert (= bs!131625 (and d!231204 d!231130)))

(assert (=> bs!131625 (= lambda!21249 lambda!21217)))

(assert (=> d!231204 (= (inv!9447 setElem!3323) (forall!1928 (exprs!727 setElem!3323) lambda!21249))))

(declare-fun bs!131626 () Bool)

(assert (= bs!131626 d!231204))

(declare-fun m!942644 () Bool)

(assert (=> bs!131626 m!942644))

(assert (=> setNonEmpty!3323 d!231204))

(assert (=> d!231108 d!231178))

(declare-fun bs!131627 () Bool)

(declare-fun d!231206 () Bool)

(assert (= bs!131627 (and d!231206 d!231116)))

(declare-fun lambda!21250 () Int)

(assert (=> bs!131627 (= lambda!21250 lambda!21211)))

(declare-fun bs!131628 () Bool)

(assert (= bs!131628 (and d!231206 d!231200)))

(assert (=> bs!131628 (= lambda!21250 lambda!21248)))

(declare-fun bs!131629 () Bool)

(assert (= bs!131629 (and d!231206 d!231172)))

(assert (=> bs!131629 (= lambda!21250 lambda!21232)))

(declare-fun bs!131630 () Bool)

(assert (= bs!131630 (and d!231206 d!231146)))

(assert (=> bs!131630 (= lambda!21250 lambda!21222)))

(declare-fun bs!131631 () Bool)

(assert (= bs!131631 (and d!231206 d!231142)))

(assert (=> bs!131631 (= lambda!21250 lambda!21221)))

(declare-fun bs!131632 () Bool)

(assert (= bs!131632 (and d!231206 d!231120)))

(assert (=> bs!131632 (= lambda!21250 lambda!21213)))

(declare-fun bs!131633 () Bool)

(assert (= bs!131633 (and d!231206 d!231204)))

(assert (=> bs!131633 (= lambda!21250 lambda!21249)))

(declare-fun bs!131634 () Bool)

(assert (= bs!131634 (and d!231206 d!231182)))

(assert (=> bs!131634 (= lambda!21250 lambda!21240)))

(declare-fun bs!131635 () Bool)

(assert (= bs!131635 (and d!231206 d!231140)))

(assert (=> bs!131635 (= lambda!21250 lambda!21220)))

(declare-fun bs!131636 () Bool)

(assert (= bs!131636 (and d!231206 d!231188)))

(assert (=> bs!131636 (= lambda!21250 lambda!21244)))

(declare-fun bs!131637 () Bool)

(assert (= bs!131637 (and d!231206 d!231118)))

(assert (=> bs!131637 (= lambda!21250 lambda!21212)))

(declare-fun bs!131638 () Bool)

(assert (= bs!131638 (and d!231206 d!231148)))

(assert (=> bs!131638 (= lambda!21250 lambda!21223)))

(declare-fun bs!131639 () Bool)

(assert (= bs!131639 (and d!231206 d!231132)))

(assert (=> bs!131639 (= lambda!21250 lambda!21218)))

(declare-fun bs!131640 () Bool)

(assert (= bs!131640 (and d!231206 d!231134)))

(assert (=> bs!131640 (= lambda!21250 lambda!21219)))

(declare-fun bs!131641 () Bool)

(assert (= bs!131641 (and d!231206 d!231150)))

(assert (=> bs!131641 (= lambda!21250 lambda!21224)))

(declare-fun bs!131642 () Bool)

(assert (= bs!131642 (and d!231206 d!231180)))

(assert (=> bs!131642 (= lambda!21250 lambda!21239)))

(declare-fun bs!131643 () Bool)

(assert (= bs!131643 (and d!231206 d!231128)))

(assert (=> bs!131643 (= lambda!21250 lambda!21216)))

(declare-fun bs!131644 () Bool)

(assert (= bs!131644 (and d!231206 d!231124)))

(assert (=> bs!131644 (= lambda!21250 lambda!21215)))

(declare-fun bs!131645 () Bool)

(assert (= bs!131645 (and d!231206 d!231158)))

(assert (=> bs!131645 (= lambda!21250 lambda!21225)))

(declare-fun bs!131646 () Bool)

(assert (= bs!131646 (and d!231206 d!231122)))

(assert (=> bs!131646 (= lambda!21250 lambda!21214)))

(declare-fun bs!131647 () Bool)

(assert (= bs!131647 (and d!231206 d!231130)))

(assert (=> bs!131647 (= lambda!21250 lambda!21217)))

(assert (=> d!231206 (= (inv!9447 setElem!3309) (forall!1928 (exprs!727 setElem!3309) lambda!21250))))

(declare-fun bs!131648 () Bool)

(assert (= bs!131648 d!231206))

(declare-fun m!942646 () Bool)

(assert (=> bs!131648 m!942646))

(assert (=> setNonEmpty!3309 d!231206))

(declare-fun d!231208 () Bool)

(assert (=> d!231208 (= (inv!9448 (xs!5257 (c!121199 input!756))) (<= (size!6025 (innerList!2666 (xs!5257 (c!121199 input!756)))) 2147483647))))

(declare-fun bs!131649 () Bool)

(assert (= bs!131649 d!231208))

(declare-fun m!942648 () Bool)

(assert (=> bs!131649 m!942648))

(assert (=> b!685764 d!231208))

(declare-fun bs!131650 () Bool)

(declare-fun d!231210 () Bool)

(assert (= bs!131650 (and d!231210 d!231116)))

(declare-fun lambda!21251 () Int)

(assert (=> bs!131650 (= lambda!21251 lambda!21211)))

(declare-fun bs!131651 () Bool)

(assert (= bs!131651 (and d!231210 d!231206)))

(assert (=> bs!131651 (= lambda!21251 lambda!21250)))

(declare-fun bs!131652 () Bool)

(assert (= bs!131652 (and d!231210 d!231200)))

(assert (=> bs!131652 (= lambda!21251 lambda!21248)))

(declare-fun bs!131653 () Bool)

(assert (= bs!131653 (and d!231210 d!231172)))

(assert (=> bs!131653 (= lambda!21251 lambda!21232)))

(declare-fun bs!131654 () Bool)

(assert (= bs!131654 (and d!231210 d!231146)))

(assert (=> bs!131654 (= lambda!21251 lambda!21222)))

(declare-fun bs!131655 () Bool)

(assert (= bs!131655 (and d!231210 d!231142)))

(assert (=> bs!131655 (= lambda!21251 lambda!21221)))

(declare-fun bs!131656 () Bool)

(assert (= bs!131656 (and d!231210 d!231120)))

(assert (=> bs!131656 (= lambda!21251 lambda!21213)))

(declare-fun bs!131657 () Bool)

(assert (= bs!131657 (and d!231210 d!231204)))

(assert (=> bs!131657 (= lambda!21251 lambda!21249)))

(declare-fun bs!131658 () Bool)

(assert (= bs!131658 (and d!231210 d!231182)))

(assert (=> bs!131658 (= lambda!21251 lambda!21240)))

(declare-fun bs!131659 () Bool)

(assert (= bs!131659 (and d!231210 d!231140)))

(assert (=> bs!131659 (= lambda!21251 lambda!21220)))

(declare-fun bs!131660 () Bool)

(assert (= bs!131660 (and d!231210 d!231188)))

(assert (=> bs!131660 (= lambda!21251 lambda!21244)))

(declare-fun bs!131661 () Bool)

(assert (= bs!131661 (and d!231210 d!231118)))

(assert (=> bs!131661 (= lambda!21251 lambda!21212)))

(declare-fun bs!131662 () Bool)

(assert (= bs!131662 (and d!231210 d!231148)))

(assert (=> bs!131662 (= lambda!21251 lambda!21223)))

(declare-fun bs!131663 () Bool)

(assert (= bs!131663 (and d!231210 d!231132)))

(assert (=> bs!131663 (= lambda!21251 lambda!21218)))

(declare-fun bs!131664 () Bool)

(assert (= bs!131664 (and d!231210 d!231134)))

(assert (=> bs!131664 (= lambda!21251 lambda!21219)))

(declare-fun bs!131665 () Bool)

(assert (= bs!131665 (and d!231210 d!231150)))

(assert (=> bs!131665 (= lambda!21251 lambda!21224)))

(declare-fun bs!131666 () Bool)

(assert (= bs!131666 (and d!231210 d!231180)))

(assert (=> bs!131666 (= lambda!21251 lambda!21239)))

(declare-fun bs!131667 () Bool)

(assert (= bs!131667 (and d!231210 d!231128)))

(assert (=> bs!131667 (= lambda!21251 lambda!21216)))

(declare-fun bs!131668 () Bool)

(assert (= bs!131668 (and d!231210 d!231124)))

(assert (=> bs!131668 (= lambda!21251 lambda!21215)))

(declare-fun bs!131669 () Bool)

(assert (= bs!131669 (and d!231210 d!231158)))

(assert (=> bs!131669 (= lambda!21251 lambda!21225)))

(declare-fun bs!131670 () Bool)

(assert (= bs!131670 (and d!231210 d!231122)))

(assert (=> bs!131670 (= lambda!21251 lambda!21214)))

(declare-fun bs!131671 () Bool)

(assert (= bs!131671 (and d!231210 d!231130)))

(assert (=> bs!131671 (= lambda!21251 lambda!21217)))

(assert (=> d!231210 (= (inv!9447 (_1!4228 (_1!4229 (h!12741 mapDefault!2873)))) (forall!1928 (exprs!727 (_1!4228 (_1!4229 (h!12741 mapDefault!2873)))) lambda!21251))))

(declare-fun bs!131672 () Bool)

(assert (= bs!131672 d!231210))

(declare-fun m!942650 () Bool)

(assert (=> bs!131672 m!942650))

(assert (=> b!685837 d!231210))

(assert (=> d!231112 d!231176))

(declare-fun bs!131673 () Bool)

(declare-fun d!231212 () Bool)

(assert (= bs!131673 (and d!231212 d!231116)))

(declare-fun lambda!21252 () Int)

(assert (=> bs!131673 (= lambda!21252 lambda!21211)))

(declare-fun bs!131674 () Bool)

(assert (= bs!131674 (and d!231212 d!231206)))

(assert (=> bs!131674 (= lambda!21252 lambda!21250)))

(declare-fun bs!131675 () Bool)

(assert (= bs!131675 (and d!231212 d!231200)))

(assert (=> bs!131675 (= lambda!21252 lambda!21248)))

(declare-fun bs!131676 () Bool)

(assert (= bs!131676 (and d!231212 d!231172)))

(assert (=> bs!131676 (= lambda!21252 lambda!21232)))

(declare-fun bs!131677 () Bool)

(assert (= bs!131677 (and d!231212 d!231146)))

(assert (=> bs!131677 (= lambda!21252 lambda!21222)))

(declare-fun bs!131678 () Bool)

(assert (= bs!131678 (and d!231212 d!231142)))

(assert (=> bs!131678 (= lambda!21252 lambda!21221)))

(declare-fun bs!131679 () Bool)

(assert (= bs!131679 (and d!231212 d!231120)))

(assert (=> bs!131679 (= lambda!21252 lambda!21213)))

(declare-fun bs!131680 () Bool)

(assert (= bs!131680 (and d!231212 d!231204)))

(assert (=> bs!131680 (= lambda!21252 lambda!21249)))

(declare-fun bs!131681 () Bool)

(assert (= bs!131681 (and d!231212 d!231140)))

(assert (=> bs!131681 (= lambda!21252 lambda!21220)))

(declare-fun bs!131682 () Bool)

(assert (= bs!131682 (and d!231212 d!231188)))

(assert (=> bs!131682 (= lambda!21252 lambda!21244)))

(declare-fun bs!131683 () Bool)

(assert (= bs!131683 (and d!231212 d!231118)))

(assert (=> bs!131683 (= lambda!21252 lambda!21212)))

(declare-fun bs!131684 () Bool)

(assert (= bs!131684 (and d!231212 d!231148)))

(assert (=> bs!131684 (= lambda!21252 lambda!21223)))

(declare-fun bs!131685 () Bool)

(assert (= bs!131685 (and d!231212 d!231132)))

(assert (=> bs!131685 (= lambda!21252 lambda!21218)))

(declare-fun bs!131686 () Bool)

(assert (= bs!131686 (and d!231212 d!231210)))

(assert (=> bs!131686 (= lambda!21252 lambda!21251)))

(declare-fun bs!131687 () Bool)

(assert (= bs!131687 (and d!231212 d!231182)))

(assert (=> bs!131687 (= lambda!21252 lambda!21240)))

(declare-fun bs!131688 () Bool)

(assert (= bs!131688 (and d!231212 d!231134)))

(assert (=> bs!131688 (= lambda!21252 lambda!21219)))

(declare-fun bs!131689 () Bool)

(assert (= bs!131689 (and d!231212 d!231150)))

(assert (=> bs!131689 (= lambda!21252 lambda!21224)))

(declare-fun bs!131690 () Bool)

(assert (= bs!131690 (and d!231212 d!231180)))

(assert (=> bs!131690 (= lambda!21252 lambda!21239)))

(declare-fun bs!131691 () Bool)

(assert (= bs!131691 (and d!231212 d!231128)))

(assert (=> bs!131691 (= lambda!21252 lambda!21216)))

(declare-fun bs!131692 () Bool)

(assert (= bs!131692 (and d!231212 d!231124)))

(assert (=> bs!131692 (= lambda!21252 lambda!21215)))

(declare-fun bs!131693 () Bool)

(assert (= bs!131693 (and d!231212 d!231158)))

(assert (=> bs!131693 (= lambda!21252 lambda!21225)))

(declare-fun bs!131694 () Bool)

(assert (= bs!131694 (and d!231212 d!231122)))

(assert (=> bs!131694 (= lambda!21252 lambda!21214)))

(declare-fun bs!131695 () Bool)

(assert (= bs!131695 (and d!231212 d!231130)))

(assert (=> bs!131695 (= lambda!21252 lambda!21217)))

(assert (=> d!231212 (= (inv!9447 setElem!3321) (forall!1928 (exprs!727 setElem!3321) lambda!21252))))

(declare-fun bs!131696 () Bool)

(assert (= bs!131696 d!231212))

(declare-fun m!942652 () Bool)

(assert (=> bs!131696 m!942652))

(assert (=> setNonEmpty!3322 d!231212))

(declare-fun d!231214 () Bool)

(assert (=> d!231214 (= (inv!9432 (tag!1743 (h!12737 (t!87146 rules!1357)))) (= (mod (str.len (value!47851 (tag!1743 (h!12737 (t!87146 rules!1357))))) 2) 0))))

(assert (=> b!685753 d!231214))

(declare-fun d!231216 () Bool)

(declare-fun res!312194 () Bool)

(declare-fun e!430876 () Bool)

(assert (=> d!231216 (=> (not res!312194) (not e!430876))))

(assert (=> d!231216 (= res!312194 (semiInverseModEq!565 (toChars!2292 (transformation!1481 (h!12737 (t!87146 rules!1357)))) (toValue!2433 (transformation!1481 (h!12737 (t!87146 rules!1357))))))))

(assert (=> d!231216 (= (inv!9441 (transformation!1481 (h!12737 (t!87146 rules!1357)))) e!430876)))

(declare-fun b!685963 () Bool)

(assert (=> b!685963 (= e!430876 (equivClasses!540 (toChars!2292 (transformation!1481 (h!12737 (t!87146 rules!1357)))) (toValue!2433 (transformation!1481 (h!12737 (t!87146 rules!1357))))))))

(assert (= (and d!231216 res!312194) b!685963))

(declare-fun m!942654 () Bool)

(assert (=> d!231216 m!942654))

(declare-fun m!942656 () Bool)

(assert (=> b!685963 m!942656))

(assert (=> b!685753 d!231216))

(declare-fun bs!131697 () Bool)

(declare-fun d!231218 () Bool)

(assert (= bs!131697 (and d!231218 d!231116)))

(declare-fun lambda!21253 () Int)

(assert (=> bs!131697 (= lambda!21253 lambda!21211)))

(declare-fun bs!131698 () Bool)

(assert (= bs!131698 (and d!231218 d!231206)))

(assert (=> bs!131698 (= lambda!21253 lambda!21250)))

(declare-fun bs!131699 () Bool)

(assert (= bs!131699 (and d!231218 d!231212)))

(assert (=> bs!131699 (= lambda!21253 lambda!21252)))

(declare-fun bs!131700 () Bool)

(assert (= bs!131700 (and d!231218 d!231200)))

(assert (=> bs!131700 (= lambda!21253 lambda!21248)))

(declare-fun bs!131701 () Bool)

(assert (= bs!131701 (and d!231218 d!231172)))

(assert (=> bs!131701 (= lambda!21253 lambda!21232)))

(declare-fun bs!131702 () Bool)

(assert (= bs!131702 (and d!231218 d!231146)))

(assert (=> bs!131702 (= lambda!21253 lambda!21222)))

(declare-fun bs!131703 () Bool)

(assert (= bs!131703 (and d!231218 d!231142)))

(assert (=> bs!131703 (= lambda!21253 lambda!21221)))

(declare-fun bs!131704 () Bool)

(assert (= bs!131704 (and d!231218 d!231120)))

(assert (=> bs!131704 (= lambda!21253 lambda!21213)))

(declare-fun bs!131705 () Bool)

(assert (= bs!131705 (and d!231218 d!231204)))

(assert (=> bs!131705 (= lambda!21253 lambda!21249)))

(declare-fun bs!131706 () Bool)

(assert (= bs!131706 (and d!231218 d!231140)))

(assert (=> bs!131706 (= lambda!21253 lambda!21220)))

(declare-fun bs!131707 () Bool)

(assert (= bs!131707 (and d!231218 d!231188)))

(assert (=> bs!131707 (= lambda!21253 lambda!21244)))

(declare-fun bs!131708 () Bool)

(assert (= bs!131708 (and d!231218 d!231118)))

(assert (=> bs!131708 (= lambda!21253 lambda!21212)))

(declare-fun bs!131709 () Bool)

(assert (= bs!131709 (and d!231218 d!231148)))

(assert (=> bs!131709 (= lambda!21253 lambda!21223)))

(declare-fun bs!131710 () Bool)

(assert (= bs!131710 (and d!231218 d!231132)))

(assert (=> bs!131710 (= lambda!21253 lambda!21218)))

(declare-fun bs!131711 () Bool)

(assert (= bs!131711 (and d!231218 d!231210)))

(assert (=> bs!131711 (= lambda!21253 lambda!21251)))

(declare-fun bs!131712 () Bool)

(assert (= bs!131712 (and d!231218 d!231182)))

(assert (=> bs!131712 (= lambda!21253 lambda!21240)))

(declare-fun bs!131713 () Bool)

(assert (= bs!131713 (and d!231218 d!231134)))

(assert (=> bs!131713 (= lambda!21253 lambda!21219)))

(declare-fun bs!131714 () Bool)

(assert (= bs!131714 (and d!231218 d!231150)))

(assert (=> bs!131714 (= lambda!21253 lambda!21224)))

(declare-fun bs!131715 () Bool)

(assert (= bs!131715 (and d!231218 d!231180)))

(assert (=> bs!131715 (= lambda!21253 lambda!21239)))

(declare-fun bs!131716 () Bool)

(assert (= bs!131716 (and d!231218 d!231128)))

(assert (=> bs!131716 (= lambda!21253 lambda!21216)))

(declare-fun bs!131717 () Bool)

(assert (= bs!131717 (and d!231218 d!231124)))

(assert (=> bs!131717 (= lambda!21253 lambda!21215)))

(declare-fun bs!131718 () Bool)

(assert (= bs!131718 (and d!231218 d!231158)))

(assert (=> bs!131718 (= lambda!21253 lambda!21225)))

(declare-fun bs!131719 () Bool)

(assert (= bs!131719 (and d!231218 d!231122)))

(assert (=> bs!131719 (= lambda!21253 lambda!21214)))

(declare-fun bs!131720 () Bool)

(assert (= bs!131720 (and d!231218 d!231130)))

(assert (=> bs!131720 (= lambda!21253 lambda!21217)))

(assert (=> d!231218 (= (inv!9447 setElem!3330) (forall!1928 (exprs!727 setElem!3330) lambda!21253))))

(declare-fun bs!131721 () Bool)

(assert (= bs!131721 d!231218))

(declare-fun m!942658 () Bool)

(assert (=> bs!131721 m!942658))

(assert (=> setNonEmpty!3329 d!231218))

(declare-fun bs!131722 () Bool)

(declare-fun d!231220 () Bool)

(assert (= bs!131722 (and d!231220 d!231116)))

(declare-fun lambda!21254 () Int)

(assert (=> bs!131722 (= lambda!21254 lambda!21211)))

(declare-fun bs!131723 () Bool)

(assert (= bs!131723 (and d!231220 d!231206)))

(assert (=> bs!131723 (= lambda!21254 lambda!21250)))

(declare-fun bs!131724 () Bool)

(assert (= bs!131724 (and d!231220 d!231212)))

(assert (=> bs!131724 (= lambda!21254 lambda!21252)))

(declare-fun bs!131725 () Bool)

(assert (= bs!131725 (and d!231220 d!231200)))

(assert (=> bs!131725 (= lambda!21254 lambda!21248)))

(declare-fun bs!131726 () Bool)

(assert (= bs!131726 (and d!231220 d!231172)))

(assert (=> bs!131726 (= lambda!21254 lambda!21232)))

(declare-fun bs!131727 () Bool)

(assert (= bs!131727 (and d!231220 d!231146)))

(assert (=> bs!131727 (= lambda!21254 lambda!21222)))

(declare-fun bs!131728 () Bool)

(assert (= bs!131728 (and d!231220 d!231142)))

(assert (=> bs!131728 (= lambda!21254 lambda!21221)))

(declare-fun bs!131729 () Bool)

(assert (= bs!131729 (and d!231220 d!231120)))

(assert (=> bs!131729 (= lambda!21254 lambda!21213)))

(declare-fun bs!131730 () Bool)

(assert (= bs!131730 (and d!231220 d!231204)))

(assert (=> bs!131730 (= lambda!21254 lambda!21249)))

(declare-fun bs!131731 () Bool)

(assert (= bs!131731 (and d!231220 d!231188)))

(assert (=> bs!131731 (= lambda!21254 lambda!21244)))

(declare-fun bs!131732 () Bool)

(assert (= bs!131732 (and d!231220 d!231118)))

(assert (=> bs!131732 (= lambda!21254 lambda!21212)))

(declare-fun bs!131733 () Bool)

(assert (= bs!131733 (and d!231220 d!231148)))

(assert (=> bs!131733 (= lambda!21254 lambda!21223)))

(declare-fun bs!131734 () Bool)

(assert (= bs!131734 (and d!231220 d!231132)))

(assert (=> bs!131734 (= lambda!21254 lambda!21218)))

(declare-fun bs!131735 () Bool)

(assert (= bs!131735 (and d!231220 d!231210)))

(assert (=> bs!131735 (= lambda!21254 lambda!21251)))

(declare-fun bs!131736 () Bool)

(assert (= bs!131736 (and d!231220 d!231182)))

(assert (=> bs!131736 (= lambda!21254 lambda!21240)))

(declare-fun bs!131737 () Bool)

(assert (= bs!131737 (and d!231220 d!231134)))

(assert (=> bs!131737 (= lambda!21254 lambda!21219)))

(declare-fun bs!131738 () Bool)

(assert (= bs!131738 (and d!231220 d!231150)))

(assert (=> bs!131738 (= lambda!21254 lambda!21224)))

(declare-fun bs!131739 () Bool)

(assert (= bs!131739 (and d!231220 d!231180)))

(assert (=> bs!131739 (= lambda!21254 lambda!21239)))

(declare-fun bs!131740 () Bool)

(assert (= bs!131740 (and d!231220 d!231128)))

(assert (=> bs!131740 (= lambda!21254 lambda!21216)))

(declare-fun bs!131741 () Bool)

(assert (= bs!131741 (and d!231220 d!231124)))

(assert (=> bs!131741 (= lambda!21254 lambda!21215)))

(declare-fun bs!131742 () Bool)

(assert (= bs!131742 (and d!231220 d!231158)))

(assert (=> bs!131742 (= lambda!21254 lambda!21225)))

(declare-fun bs!131743 () Bool)

(assert (= bs!131743 (and d!231220 d!231122)))

(assert (=> bs!131743 (= lambda!21254 lambda!21214)))

(declare-fun bs!131744 () Bool)

(assert (= bs!131744 (and d!231220 d!231130)))

(assert (=> bs!131744 (= lambda!21254 lambda!21217)))

(declare-fun bs!131745 () Bool)

(assert (= bs!131745 (and d!231220 d!231140)))

(assert (=> bs!131745 (= lambda!21254 lambda!21220)))

(declare-fun bs!131746 () Bool)

(assert (= bs!131746 (and d!231220 d!231218)))

(assert (=> bs!131746 (= lambda!21254 lambda!21253)))

(assert (=> d!231220 (= (inv!9447 setElem!3304) (forall!1928 (exprs!727 setElem!3304) lambda!21254))))

(declare-fun bs!131747 () Bool)

(assert (= bs!131747 d!231220))

(declare-fun m!942660 () Bool)

(assert (=> bs!131747 m!942660))

(assert (=> setNonEmpty!3304 d!231220))

(declare-fun bs!131748 () Bool)

(declare-fun d!231222 () Bool)

(assert (= bs!131748 (and d!231222 d!231116)))

(declare-fun lambda!21255 () Int)

(assert (=> bs!131748 (= lambda!21255 lambda!21211)))

(declare-fun bs!131749 () Bool)

(assert (= bs!131749 (and d!231222 d!231206)))

(assert (=> bs!131749 (= lambda!21255 lambda!21250)))

(declare-fun bs!131750 () Bool)

(assert (= bs!131750 (and d!231222 d!231212)))

(assert (=> bs!131750 (= lambda!21255 lambda!21252)))

(declare-fun bs!131751 () Bool)

(assert (= bs!131751 (and d!231222 d!231200)))

(assert (=> bs!131751 (= lambda!21255 lambda!21248)))

(declare-fun bs!131752 () Bool)

(assert (= bs!131752 (and d!231222 d!231172)))

(assert (=> bs!131752 (= lambda!21255 lambda!21232)))

(declare-fun bs!131753 () Bool)

(assert (= bs!131753 (and d!231222 d!231146)))

(assert (=> bs!131753 (= lambda!21255 lambda!21222)))

(declare-fun bs!131754 () Bool)

(assert (= bs!131754 (and d!231222 d!231142)))

(assert (=> bs!131754 (= lambda!21255 lambda!21221)))

(declare-fun bs!131755 () Bool)

(assert (= bs!131755 (and d!231222 d!231120)))

(assert (=> bs!131755 (= lambda!21255 lambda!21213)))

(declare-fun bs!131756 () Bool)

(assert (= bs!131756 (and d!231222 d!231204)))

(assert (=> bs!131756 (= lambda!21255 lambda!21249)))

(declare-fun bs!131757 () Bool)

(assert (= bs!131757 (and d!231222 d!231188)))

(assert (=> bs!131757 (= lambda!21255 lambda!21244)))

(declare-fun bs!131758 () Bool)

(assert (= bs!131758 (and d!231222 d!231118)))

(assert (=> bs!131758 (= lambda!21255 lambda!21212)))

(declare-fun bs!131759 () Bool)

(assert (= bs!131759 (and d!231222 d!231148)))

(assert (=> bs!131759 (= lambda!21255 lambda!21223)))

(declare-fun bs!131760 () Bool)

(assert (= bs!131760 (and d!231222 d!231132)))

(assert (=> bs!131760 (= lambda!21255 lambda!21218)))

(declare-fun bs!131761 () Bool)

(assert (= bs!131761 (and d!231222 d!231210)))

(assert (=> bs!131761 (= lambda!21255 lambda!21251)))

(declare-fun bs!131762 () Bool)

(assert (= bs!131762 (and d!231222 d!231182)))

(assert (=> bs!131762 (= lambda!21255 lambda!21240)))

(declare-fun bs!131763 () Bool)

(assert (= bs!131763 (and d!231222 d!231134)))

(assert (=> bs!131763 (= lambda!21255 lambda!21219)))

(declare-fun bs!131764 () Bool)

(assert (= bs!131764 (and d!231222 d!231150)))

(assert (=> bs!131764 (= lambda!21255 lambda!21224)))

(declare-fun bs!131765 () Bool)

(assert (= bs!131765 (and d!231222 d!231180)))

(assert (=> bs!131765 (= lambda!21255 lambda!21239)))

(declare-fun bs!131766 () Bool)

(assert (= bs!131766 (and d!231222 d!231128)))

(assert (=> bs!131766 (= lambda!21255 lambda!21216)))

(declare-fun bs!131767 () Bool)

(assert (= bs!131767 (and d!231222 d!231220)))

(assert (=> bs!131767 (= lambda!21255 lambda!21254)))

(declare-fun bs!131768 () Bool)

(assert (= bs!131768 (and d!231222 d!231124)))

(assert (=> bs!131768 (= lambda!21255 lambda!21215)))

(declare-fun bs!131769 () Bool)

(assert (= bs!131769 (and d!231222 d!231158)))

(assert (=> bs!131769 (= lambda!21255 lambda!21225)))

(declare-fun bs!131770 () Bool)

(assert (= bs!131770 (and d!231222 d!231122)))

(assert (=> bs!131770 (= lambda!21255 lambda!21214)))

(declare-fun bs!131771 () Bool)

(assert (= bs!131771 (and d!231222 d!231130)))

(assert (=> bs!131771 (= lambda!21255 lambda!21217)))

(declare-fun bs!131772 () Bool)

(assert (= bs!131772 (and d!231222 d!231140)))

(assert (=> bs!131772 (= lambda!21255 lambda!21220)))

(declare-fun bs!131773 () Bool)

(assert (= bs!131773 (and d!231222 d!231218)))

(assert (=> bs!131773 (= lambda!21255 lambda!21253)))

(assert (=> d!231222 (= (inv!9447 (_1!4228 (_1!4229 (h!12741 mapDefault!2881)))) (forall!1928 (exprs!727 (_1!4228 (_1!4229 (h!12741 mapDefault!2881)))) lambda!21255))))

(declare-fun bs!131774 () Bool)

(assert (= bs!131774 d!231222))

(declare-fun m!942662 () Bool)

(assert (=> bs!131774 m!942662))

(assert (=> b!685808 d!231222))

(declare-fun bs!131775 () Bool)

(declare-fun d!231224 () Bool)

(assert (= bs!131775 (and d!231224 d!231116)))

(declare-fun lambda!21256 () Int)

(assert (=> bs!131775 (= lambda!21256 lambda!21211)))

(declare-fun bs!131776 () Bool)

(assert (= bs!131776 (and d!231224 d!231206)))

(assert (=> bs!131776 (= lambda!21256 lambda!21250)))

(declare-fun bs!131777 () Bool)

(assert (= bs!131777 (and d!231224 d!231212)))

(assert (=> bs!131777 (= lambda!21256 lambda!21252)))

(declare-fun bs!131778 () Bool)

(assert (= bs!131778 (and d!231224 d!231200)))

(assert (=> bs!131778 (= lambda!21256 lambda!21248)))

(declare-fun bs!131779 () Bool)

(assert (= bs!131779 (and d!231224 d!231172)))

(assert (=> bs!131779 (= lambda!21256 lambda!21232)))

(declare-fun bs!131780 () Bool)

(assert (= bs!131780 (and d!231224 d!231146)))

(assert (=> bs!131780 (= lambda!21256 lambda!21222)))

(declare-fun bs!131781 () Bool)

(assert (= bs!131781 (and d!231224 d!231142)))

(assert (=> bs!131781 (= lambda!21256 lambda!21221)))

(declare-fun bs!131782 () Bool)

(assert (= bs!131782 (and d!231224 d!231120)))

(assert (=> bs!131782 (= lambda!21256 lambda!21213)))

(declare-fun bs!131783 () Bool)

(assert (= bs!131783 (and d!231224 d!231204)))

(assert (=> bs!131783 (= lambda!21256 lambda!21249)))

(declare-fun bs!131784 () Bool)

(assert (= bs!131784 (and d!231224 d!231222)))

(assert (=> bs!131784 (= lambda!21256 lambda!21255)))

(declare-fun bs!131785 () Bool)

(assert (= bs!131785 (and d!231224 d!231188)))

(assert (=> bs!131785 (= lambda!21256 lambda!21244)))

(declare-fun bs!131786 () Bool)

(assert (= bs!131786 (and d!231224 d!231118)))

(assert (=> bs!131786 (= lambda!21256 lambda!21212)))

(declare-fun bs!131787 () Bool)

(assert (= bs!131787 (and d!231224 d!231148)))

(assert (=> bs!131787 (= lambda!21256 lambda!21223)))

(declare-fun bs!131788 () Bool)

(assert (= bs!131788 (and d!231224 d!231132)))

(assert (=> bs!131788 (= lambda!21256 lambda!21218)))

(declare-fun bs!131789 () Bool)

(assert (= bs!131789 (and d!231224 d!231210)))

(assert (=> bs!131789 (= lambda!21256 lambda!21251)))

(declare-fun bs!131790 () Bool)

(assert (= bs!131790 (and d!231224 d!231182)))

(assert (=> bs!131790 (= lambda!21256 lambda!21240)))

(declare-fun bs!131791 () Bool)

(assert (= bs!131791 (and d!231224 d!231134)))

(assert (=> bs!131791 (= lambda!21256 lambda!21219)))

(declare-fun bs!131792 () Bool)

(assert (= bs!131792 (and d!231224 d!231150)))

(assert (=> bs!131792 (= lambda!21256 lambda!21224)))

(declare-fun bs!131793 () Bool)

(assert (= bs!131793 (and d!231224 d!231180)))

(assert (=> bs!131793 (= lambda!21256 lambda!21239)))

(declare-fun bs!131794 () Bool)

(assert (= bs!131794 (and d!231224 d!231128)))

(assert (=> bs!131794 (= lambda!21256 lambda!21216)))

(declare-fun bs!131795 () Bool)

(assert (= bs!131795 (and d!231224 d!231220)))

(assert (=> bs!131795 (= lambda!21256 lambda!21254)))

(declare-fun bs!131796 () Bool)

(assert (= bs!131796 (and d!231224 d!231124)))

(assert (=> bs!131796 (= lambda!21256 lambda!21215)))

(declare-fun bs!131797 () Bool)

(assert (= bs!131797 (and d!231224 d!231158)))

(assert (=> bs!131797 (= lambda!21256 lambda!21225)))

(declare-fun bs!131798 () Bool)

(assert (= bs!131798 (and d!231224 d!231122)))

(assert (=> bs!131798 (= lambda!21256 lambda!21214)))

(declare-fun bs!131799 () Bool)

(assert (= bs!131799 (and d!231224 d!231130)))

(assert (=> bs!131799 (= lambda!21256 lambda!21217)))

(declare-fun bs!131800 () Bool)

(assert (= bs!131800 (and d!231224 d!231140)))

(assert (=> bs!131800 (= lambda!21256 lambda!21220)))

(declare-fun bs!131801 () Bool)

(assert (= bs!131801 (and d!231224 d!231218)))

(assert (=> bs!131801 (= lambda!21256 lambda!21253)))

(assert (=> d!231224 (= (inv!9447 setElem!3316) (forall!1928 (exprs!727 setElem!3316) lambda!21256))))

(declare-fun bs!131802 () Bool)

(assert (= bs!131802 d!231224))

(declare-fun m!942664 () Bool)

(assert (=> bs!131802 m!942664))

(assert (=> setNonEmpty!3316 d!231224))

(declare-fun d!231226 () Bool)

(assert (=> d!231226 (= (inv!9448 (xs!5257 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) (<= (size!6025 (innerList!2666 (xs!5257 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) 2147483647))))

(declare-fun bs!131803 () Bool)

(assert (= bs!131803 d!231226))

(declare-fun m!942666 () Bool)

(assert (=> bs!131803 m!942666))

(assert (=> b!685818 d!231226))

(declare-fun bs!131804 () Bool)

(declare-fun d!231228 () Bool)

(assert (= bs!131804 (and d!231228 d!231116)))

(declare-fun lambda!21257 () Int)

(assert (=> bs!131804 (= lambda!21257 lambda!21211)))

(declare-fun bs!131805 () Bool)

(assert (= bs!131805 (and d!231228 d!231206)))

(assert (=> bs!131805 (= lambda!21257 lambda!21250)))

(declare-fun bs!131806 () Bool)

(assert (= bs!131806 (and d!231228 d!231212)))

(assert (=> bs!131806 (= lambda!21257 lambda!21252)))

(declare-fun bs!131807 () Bool)

(assert (= bs!131807 (and d!231228 d!231200)))

(assert (=> bs!131807 (= lambda!21257 lambda!21248)))

(declare-fun bs!131808 () Bool)

(assert (= bs!131808 (and d!231228 d!231224)))

(assert (=> bs!131808 (= lambda!21257 lambda!21256)))

(declare-fun bs!131809 () Bool)

(assert (= bs!131809 (and d!231228 d!231172)))

(assert (=> bs!131809 (= lambda!21257 lambda!21232)))

(declare-fun bs!131810 () Bool)

(assert (= bs!131810 (and d!231228 d!231146)))

(assert (=> bs!131810 (= lambda!21257 lambda!21222)))

(declare-fun bs!131811 () Bool)

(assert (= bs!131811 (and d!231228 d!231142)))

(assert (=> bs!131811 (= lambda!21257 lambda!21221)))

(declare-fun bs!131812 () Bool)

(assert (= bs!131812 (and d!231228 d!231120)))

(assert (=> bs!131812 (= lambda!21257 lambda!21213)))

(declare-fun bs!131813 () Bool)

(assert (= bs!131813 (and d!231228 d!231204)))

(assert (=> bs!131813 (= lambda!21257 lambda!21249)))

(declare-fun bs!131814 () Bool)

(assert (= bs!131814 (and d!231228 d!231222)))

(assert (=> bs!131814 (= lambda!21257 lambda!21255)))

(declare-fun bs!131815 () Bool)

(assert (= bs!131815 (and d!231228 d!231188)))

(assert (=> bs!131815 (= lambda!21257 lambda!21244)))

(declare-fun bs!131816 () Bool)

(assert (= bs!131816 (and d!231228 d!231118)))

(assert (=> bs!131816 (= lambda!21257 lambda!21212)))

(declare-fun bs!131817 () Bool)

(assert (= bs!131817 (and d!231228 d!231148)))

(assert (=> bs!131817 (= lambda!21257 lambda!21223)))

(declare-fun bs!131818 () Bool)

(assert (= bs!131818 (and d!231228 d!231132)))

(assert (=> bs!131818 (= lambda!21257 lambda!21218)))

(declare-fun bs!131819 () Bool)

(assert (= bs!131819 (and d!231228 d!231210)))

(assert (=> bs!131819 (= lambda!21257 lambda!21251)))

(declare-fun bs!131820 () Bool)

(assert (= bs!131820 (and d!231228 d!231182)))

(assert (=> bs!131820 (= lambda!21257 lambda!21240)))

(declare-fun bs!131821 () Bool)

(assert (= bs!131821 (and d!231228 d!231134)))

(assert (=> bs!131821 (= lambda!21257 lambda!21219)))

(declare-fun bs!131822 () Bool)

(assert (= bs!131822 (and d!231228 d!231150)))

(assert (=> bs!131822 (= lambda!21257 lambda!21224)))

(declare-fun bs!131823 () Bool)

(assert (= bs!131823 (and d!231228 d!231180)))

(assert (=> bs!131823 (= lambda!21257 lambda!21239)))

(declare-fun bs!131824 () Bool)

(assert (= bs!131824 (and d!231228 d!231128)))

(assert (=> bs!131824 (= lambda!21257 lambda!21216)))

(declare-fun bs!131825 () Bool)

(assert (= bs!131825 (and d!231228 d!231220)))

(assert (=> bs!131825 (= lambda!21257 lambda!21254)))

(declare-fun bs!131826 () Bool)

(assert (= bs!131826 (and d!231228 d!231124)))

(assert (=> bs!131826 (= lambda!21257 lambda!21215)))

(declare-fun bs!131827 () Bool)

(assert (= bs!131827 (and d!231228 d!231158)))

(assert (=> bs!131827 (= lambda!21257 lambda!21225)))

(declare-fun bs!131828 () Bool)

(assert (= bs!131828 (and d!231228 d!231122)))

(assert (=> bs!131828 (= lambda!21257 lambda!21214)))

(declare-fun bs!131829 () Bool)

(assert (= bs!131829 (and d!231228 d!231130)))

(assert (=> bs!131829 (= lambda!21257 lambda!21217)))

(declare-fun bs!131830 () Bool)

(assert (= bs!131830 (and d!231228 d!231140)))

(assert (=> bs!131830 (= lambda!21257 lambda!21220)))

(declare-fun bs!131831 () Bool)

(assert (= bs!131831 (and d!231228 d!231218)))

(assert (=> bs!131831 (= lambda!21257 lambda!21253)))

(assert (=> d!231228 (= (inv!9447 (_2!4226 (_1!4227 (h!12740 mapValue!2875)))) (forall!1928 (exprs!727 (_2!4226 (_1!4227 (h!12740 mapValue!2875)))) lambda!21257))))

(declare-fun bs!131832 () Bool)

(assert (= bs!131832 d!231228))

(declare-fun m!942668 () Bool)

(assert (=> bs!131832 m!942668))

(assert (=> b!685788 d!231228))

(declare-fun b!685964 () Bool)

(declare-fun e!430877 () Bool)

(declare-fun e!430878 () Bool)

(assert (=> b!685964 (= e!430877 e!430878)))

(declare-fun res!312199 () Bool)

(assert (=> b!685964 (=> (not res!312199) (not e!430878))))

(assert (=> b!685964 (= res!312199 (<= (- 1) (- (height!311 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) (height!311 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))))

(declare-fun b!685965 () Bool)

(declare-fun res!312196 () Bool)

(assert (=> b!685965 (=> (not res!312196) (not e!430878))))

(assert (=> b!685965 (= res!312196 (isBalanced!687 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))

(declare-fun d!231230 () Bool)

(declare-fun res!312200 () Bool)

(assert (=> d!231230 (=> res!312200 e!430877)))

(assert (=> d!231230 (= res!312200 (not ((_ is Node!2608) (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))

(assert (=> d!231230 (= (isBalanced!687 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))) e!430877)))

(declare-fun b!685966 () Bool)

(declare-fun res!312195 () Bool)

(assert (=> b!685966 (=> (not res!312195) (not e!430878))))

(assert (=> b!685966 (= res!312195 (isBalanced!687 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))))

(declare-fun b!685967 () Bool)

(assert (=> b!685967 (= e!430878 (not (isEmpty!4833 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))))))

(declare-fun b!685968 () Bool)

(declare-fun res!312197 () Bool)

(assert (=> b!685968 (=> (not res!312197) (not e!430878))))

(assert (=> b!685968 (= res!312197 (not (isEmpty!4833 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))))))

(declare-fun b!685969 () Bool)

(declare-fun res!312198 () Bool)

(assert (=> b!685969 (=> (not res!312198) (not e!430878))))

(assert (=> b!685969 (= res!312198 (<= (- (height!311 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) (height!311 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) 1))))

(assert (= (and d!231230 (not res!312200)) b!685964))

(assert (= (and b!685964 res!312199) b!685969))

(assert (= (and b!685969 res!312198) b!685965))

(assert (= (and b!685965 res!312196) b!685966))

(assert (= (and b!685966 res!312195) b!685968))

(assert (= (and b!685968 res!312197) b!685967))

(declare-fun m!942670 () Bool)

(assert (=> b!685967 m!942670))

(assert (=> b!685969 m!942586))

(assert (=> b!685969 m!942588))

(declare-fun m!942672 () Bool)

(assert (=> b!685966 m!942672))

(declare-fun m!942674 () Bool)

(assert (=> b!685965 m!942674))

(declare-fun m!942676 () Bool)

(assert (=> b!685968 m!942676))

(assert (=> b!685964 m!942586))

(assert (=> b!685964 m!942588))

(assert (=> d!231088 d!231230))

(assert (=> b!685621 d!231110))

(declare-fun b!685971 () Bool)

(declare-fun e!430879 () List!7349)

(declare-fun e!430880 () List!7349)

(assert (=> b!685971 (= e!430879 e!430880)))

(declare-fun c!121229 () Bool)

(assert (=> b!685971 (= c!121229 ((_ is Leaf!3870) (c!121199 (BalanceConc!5229 Empty!2608))))))

(declare-fun b!685972 () Bool)

(assert (=> b!685972 (= e!430880 (list!3101 (xs!5257 (c!121199 (BalanceConc!5229 Empty!2608)))))))

(declare-fun b!685973 () Bool)

(assert (=> b!685973 (= e!430880 (++!1931 (list!3100 (left!5939 (c!121199 (BalanceConc!5229 Empty!2608)))) (list!3100 (right!6269 (c!121199 (BalanceConc!5229 Empty!2608))))))))

(declare-fun b!685970 () Bool)

(assert (=> b!685970 (= e!430879 Nil!7335)))

(declare-fun d!231232 () Bool)

(declare-fun c!121228 () Bool)

(assert (=> d!231232 (= c!121228 ((_ is Empty!2608) (c!121199 (BalanceConc!5229 Empty!2608))))))

(assert (=> d!231232 (= (list!3100 (c!121199 (BalanceConc!5229 Empty!2608))) e!430879)))

(assert (= (and d!231232 c!121228) b!685970))

(assert (= (and d!231232 (not c!121228)) b!685971))

(assert (= (and b!685971 c!121229) b!685972))

(assert (= (and b!685971 (not c!121229)) b!685973))

(declare-fun m!942678 () Bool)

(assert (=> b!685972 m!942678))

(declare-fun m!942680 () Bool)

(assert (=> b!685973 m!942680))

(declare-fun m!942682 () Bool)

(assert (=> b!685973 m!942682))

(assert (=> b!685973 m!942680))

(assert (=> b!685973 m!942682))

(declare-fun m!942684 () Bool)

(assert (=> b!685973 m!942684))

(assert (=> d!231104 d!231232))

(declare-fun bs!131833 () Bool)

(declare-fun d!231234 () Bool)

(assert (= bs!131833 (and d!231234 d!231116)))

(declare-fun lambda!21258 () Int)

(assert (=> bs!131833 (= lambda!21258 lambda!21211)))

(declare-fun bs!131834 () Bool)

(assert (= bs!131834 (and d!231234 d!231206)))

(assert (=> bs!131834 (= lambda!21258 lambda!21250)))

(declare-fun bs!131835 () Bool)

(assert (= bs!131835 (and d!231234 d!231212)))

(assert (=> bs!131835 (= lambda!21258 lambda!21252)))

(declare-fun bs!131836 () Bool)

(assert (= bs!131836 (and d!231234 d!231200)))

(assert (=> bs!131836 (= lambda!21258 lambda!21248)))

(declare-fun bs!131837 () Bool)

(assert (= bs!131837 (and d!231234 d!231224)))

(assert (=> bs!131837 (= lambda!21258 lambda!21256)))

(declare-fun bs!131838 () Bool)

(assert (= bs!131838 (and d!231234 d!231172)))

(assert (=> bs!131838 (= lambda!21258 lambda!21232)))

(declare-fun bs!131839 () Bool)

(assert (= bs!131839 (and d!231234 d!231146)))

(assert (=> bs!131839 (= lambda!21258 lambda!21222)))

(declare-fun bs!131840 () Bool)

(assert (= bs!131840 (and d!231234 d!231142)))

(assert (=> bs!131840 (= lambda!21258 lambda!21221)))

(declare-fun bs!131841 () Bool)

(assert (= bs!131841 (and d!231234 d!231120)))

(assert (=> bs!131841 (= lambda!21258 lambda!21213)))

(declare-fun bs!131842 () Bool)

(assert (= bs!131842 (and d!231234 d!231204)))

(assert (=> bs!131842 (= lambda!21258 lambda!21249)))

(declare-fun bs!131843 () Bool)

(assert (= bs!131843 (and d!231234 d!231222)))

(assert (=> bs!131843 (= lambda!21258 lambda!21255)))

(declare-fun bs!131844 () Bool)

(assert (= bs!131844 (and d!231234 d!231188)))

(assert (=> bs!131844 (= lambda!21258 lambda!21244)))

(declare-fun bs!131845 () Bool)

(assert (= bs!131845 (and d!231234 d!231228)))

(assert (=> bs!131845 (= lambda!21258 lambda!21257)))

(declare-fun bs!131846 () Bool)

(assert (= bs!131846 (and d!231234 d!231118)))

(assert (=> bs!131846 (= lambda!21258 lambda!21212)))

(declare-fun bs!131847 () Bool)

(assert (= bs!131847 (and d!231234 d!231148)))

(assert (=> bs!131847 (= lambda!21258 lambda!21223)))

(declare-fun bs!131848 () Bool)

(assert (= bs!131848 (and d!231234 d!231132)))

(assert (=> bs!131848 (= lambda!21258 lambda!21218)))

(declare-fun bs!131849 () Bool)

(assert (= bs!131849 (and d!231234 d!231210)))

(assert (=> bs!131849 (= lambda!21258 lambda!21251)))

(declare-fun bs!131850 () Bool)

(assert (= bs!131850 (and d!231234 d!231182)))

(assert (=> bs!131850 (= lambda!21258 lambda!21240)))

(declare-fun bs!131851 () Bool)

(assert (= bs!131851 (and d!231234 d!231134)))

(assert (=> bs!131851 (= lambda!21258 lambda!21219)))

(declare-fun bs!131852 () Bool)

(assert (= bs!131852 (and d!231234 d!231150)))

(assert (=> bs!131852 (= lambda!21258 lambda!21224)))

(declare-fun bs!131853 () Bool)

(assert (= bs!131853 (and d!231234 d!231180)))

(assert (=> bs!131853 (= lambda!21258 lambda!21239)))

(declare-fun bs!131854 () Bool)

(assert (= bs!131854 (and d!231234 d!231128)))

(assert (=> bs!131854 (= lambda!21258 lambda!21216)))

(declare-fun bs!131855 () Bool)

(assert (= bs!131855 (and d!231234 d!231220)))

(assert (=> bs!131855 (= lambda!21258 lambda!21254)))

(declare-fun bs!131856 () Bool)

(assert (= bs!131856 (and d!231234 d!231124)))

(assert (=> bs!131856 (= lambda!21258 lambda!21215)))

(declare-fun bs!131857 () Bool)

(assert (= bs!131857 (and d!231234 d!231158)))

(assert (=> bs!131857 (= lambda!21258 lambda!21225)))

(declare-fun bs!131858 () Bool)

(assert (= bs!131858 (and d!231234 d!231122)))

(assert (=> bs!131858 (= lambda!21258 lambda!21214)))

(declare-fun bs!131859 () Bool)

(assert (= bs!131859 (and d!231234 d!231130)))

(assert (=> bs!131859 (= lambda!21258 lambda!21217)))

(declare-fun bs!131860 () Bool)

(assert (= bs!131860 (and d!231234 d!231140)))

(assert (=> bs!131860 (= lambda!21258 lambda!21220)))

(declare-fun bs!131861 () Bool)

(assert (= bs!131861 (and d!231234 d!231218)))

(assert (=> bs!131861 (= lambda!21258 lambda!21253)))

(assert (=> d!231234 (= (inv!9447 setElem!3315) (forall!1928 (exprs!727 setElem!3315) lambda!21258))))

(declare-fun bs!131862 () Bool)

(assert (= bs!131862 d!231234))

(declare-fun m!942686 () Bool)

(assert (=> bs!131862 m!942686))

(assert (=> setNonEmpty!3315 d!231234))

(declare-fun condSetEmpty!3335 () Bool)

(assert (=> setNonEmpty!3307 (= condSetEmpty!3335 (= setRest!3307 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3335 () Bool)

(assert (=> setNonEmpty!3307 (= tp!203569 setRes!3335)))

(declare-fun setIsEmpty!3335 () Bool)

(assert (=> setIsEmpty!3335 setRes!3335))

(declare-fun setElem!3335 () Context!454)

(declare-fun setNonEmpty!3335 () Bool)

(declare-fun tp!203707 () Bool)

(declare-fun e!430883 () Bool)

(assert (=> setNonEmpty!3335 (= setRes!3335 (and tp!203707 (inv!9447 setElem!3335) e!430883))))

(declare-fun setRest!3335 () (InoxSet Context!454))

(assert (=> setNonEmpty!3335 (= setRest!3307 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3335 true) setRest!3335))))

(declare-fun b!685978 () Bool)

(declare-fun tp!203708 () Bool)

(assert (=> b!685978 (= e!430883 tp!203708)))

(assert (= (and setNonEmpty!3307 condSetEmpty!3335) setIsEmpty!3335))

(assert (= (and setNonEmpty!3307 (not condSetEmpty!3335)) setNonEmpty!3335))

(assert (= setNonEmpty!3335 b!685978))

(declare-fun m!942688 () Bool)

(assert (=> setNonEmpty!3335 m!942688))

(declare-fun condSetEmpty!3336 () Bool)

(assert (=> setNonEmpty!3314 (= condSetEmpty!3336 (= setRest!3314 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3336 () Bool)

(assert (=> setNonEmpty!3314 (= tp!203620 setRes!3336)))

(declare-fun setIsEmpty!3336 () Bool)

(assert (=> setIsEmpty!3336 setRes!3336))

(declare-fun setNonEmpty!3336 () Bool)

(declare-fun e!430884 () Bool)

(declare-fun tp!203709 () Bool)

(declare-fun setElem!3336 () Context!454)

(assert (=> setNonEmpty!3336 (= setRes!3336 (and tp!203709 (inv!9447 setElem!3336) e!430884))))

(declare-fun setRest!3336 () (InoxSet Context!454))

(assert (=> setNonEmpty!3336 (= setRest!3314 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3336 true) setRest!3336))))

(declare-fun b!685979 () Bool)

(declare-fun tp!203710 () Bool)

(assert (=> b!685979 (= e!430884 tp!203710)))

(assert (= (and setNonEmpty!3314 condSetEmpty!3336) setIsEmpty!3336))

(assert (= (and setNonEmpty!3314 (not condSetEmpty!3336)) setNonEmpty!3336))

(assert (= setNonEmpty!3336 b!685979))

(declare-fun m!942690 () Bool)

(assert (=> setNonEmpty!3336 m!942690))

(declare-fun b!685984 () Bool)

(declare-fun e!430887 () Bool)

(declare-fun tp!203713 () Bool)

(assert (=> b!685984 (= e!430887 (and tp_is_empty!3635 tp!203713))))

(assert (=> b!685765 (= tp!203594 e!430887)))

(assert (= (and b!685765 ((_ is Cons!7335) (innerList!2666 (xs!5257 (c!121199 input!756))))) b!685984))

(declare-fun condSetEmpty!3337 () Bool)

(assert (=> setNonEmpty!3330 (= condSetEmpty!3337 (= setRest!3329 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3337 () Bool)

(assert (=> setNonEmpty!3330 (= tp!203689 setRes!3337)))

(declare-fun setIsEmpty!3337 () Bool)

(assert (=> setIsEmpty!3337 setRes!3337))

(declare-fun setElem!3337 () Context!454)

(declare-fun e!430888 () Bool)

(declare-fun tp!203714 () Bool)

(declare-fun setNonEmpty!3337 () Bool)

(assert (=> setNonEmpty!3337 (= setRes!3337 (and tp!203714 (inv!9447 setElem!3337) e!430888))))

(declare-fun setRest!3337 () (InoxSet Context!454))

(assert (=> setNonEmpty!3337 (= setRest!3329 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3337 true) setRest!3337))))

(declare-fun b!685985 () Bool)

(declare-fun tp!203715 () Bool)

(assert (=> b!685985 (= e!430888 tp!203715)))

(assert (= (and setNonEmpty!3330 condSetEmpty!3337) setIsEmpty!3337))

(assert (= (and setNonEmpty!3330 (not condSetEmpty!3337)) setNonEmpty!3337))

(assert (= setNonEmpty!3337 b!685985))

(declare-fun m!942692 () Bool)

(assert (=> setNonEmpty!3337 m!942692))

(declare-fun condSetEmpty!3338 () Bool)

(assert (=> setNonEmpty!3324 (= condSetEmpty!3338 (= setRest!3324 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3338 () Bool)

(assert (=> setNonEmpty!3324 (= tp!203670 setRes!3338)))

(declare-fun setIsEmpty!3338 () Bool)

(assert (=> setIsEmpty!3338 setRes!3338))

(declare-fun setNonEmpty!3338 () Bool)

(declare-fun e!430889 () Bool)

(declare-fun setElem!3338 () Context!454)

(declare-fun tp!203716 () Bool)

(assert (=> setNonEmpty!3338 (= setRes!3338 (and tp!203716 (inv!9447 setElem!3338) e!430889))))

(declare-fun setRest!3338 () (InoxSet Context!454))

(assert (=> setNonEmpty!3338 (= setRest!3324 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3338 true) setRest!3338))))

(declare-fun b!685986 () Bool)

(declare-fun tp!203717 () Bool)

(assert (=> b!685986 (= e!430889 tp!203717)))

(assert (= (and setNonEmpty!3324 condSetEmpty!3338) setIsEmpty!3338))

(assert (= (and setNonEmpty!3324 (not condSetEmpty!3338)) setNonEmpty!3338))

(assert (= setNonEmpty!3338 b!685986))

(declare-fun m!942694 () Bool)

(assert (=> setNonEmpty!3338 m!942694))

(declare-fun b!685991 () Bool)

(declare-fun e!430892 () Bool)

(declare-fun tp!203722 () Bool)

(declare-fun tp!203723 () Bool)

(assert (=> b!685991 (= e!430892 (and tp!203722 tp!203723))))

(assert (=> b!685784 (= tp!203626 e!430892)))

(assert (= (and b!685784 ((_ is Cons!7337) (exprs!727 (_2!4226 (_1!4227 (h!12740 mapDefault!2878)))))) b!685991))

(declare-fun e!430894 () Bool)

(assert (=> b!685740 (= tp!203570 e!430894)))

(declare-fun b!685992 () Bool)

(declare-fun setRes!3339 () Bool)

(declare-fun tp!203726 () Bool)

(assert (=> b!685992 (= e!430894 (and setRes!3339 tp!203726))))

(declare-fun condSetEmpty!3339 () Bool)

(assert (=> b!685992 (= condSetEmpty!3339 (= (_1!4224 (_1!4225 (h!12739 (t!87148 (zeroValue!979 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59)))))))))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun setIsEmpty!3339 () Bool)

(assert (=> setIsEmpty!3339 setRes!3339))

(declare-fun b!685993 () Bool)

(declare-fun e!430893 () Bool)

(declare-fun tp!203724 () Bool)

(assert (=> b!685993 (= e!430893 tp!203724)))

(declare-fun tp!203725 () Bool)

(declare-fun setNonEmpty!3339 () Bool)

(declare-fun setElem!3339 () Context!454)

(assert (=> setNonEmpty!3339 (= setRes!3339 (and tp!203725 (inv!9447 setElem!3339) e!430893))))

(declare-fun setRest!3339 () (InoxSet Context!454))

(assert (=> setNonEmpty!3339 (= (_1!4224 (_1!4225 (h!12739 (t!87148 (zeroValue!979 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59)))))))))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3339 true) setRest!3339))))

(assert (= (and b!685992 condSetEmpty!3339) setIsEmpty!3339))

(assert (= (and b!685992 (not condSetEmpty!3339)) setNonEmpty!3339))

(assert (= setNonEmpty!3339 b!685993))

(assert (= (and b!685740 ((_ is Cons!7338) (t!87148 (zeroValue!979 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))))) b!685992))

(declare-fun m!942696 () Bool)

(assert (=> setNonEmpty!3339 m!942696))

(declare-fun b!685996 () Bool)

(declare-fun e!430895 () Bool)

(declare-fun tp!203728 () Bool)

(assert (=> b!685996 (= e!430895 tp!203728)))

(declare-fun b!685995 () Bool)

(declare-fun tp!203729 () Bool)

(declare-fun tp!203730 () Bool)

(assert (=> b!685995 (= e!430895 (and tp!203729 tp!203730))))

(declare-fun b!685994 () Bool)

(assert (=> b!685994 (= e!430895 tp_is_empty!3635)))

(assert (=> b!685785 (= tp!203621 e!430895)))

(declare-fun b!685997 () Bool)

(declare-fun tp!203731 () Bool)

(declare-fun tp!203727 () Bool)

(assert (=> b!685997 (= e!430895 (and tp!203731 tp!203727))))

(assert (= (and b!685785 ((_ is ElementMatch!1817) (_1!4226 (_1!4227 (h!12740 mapDefault!2878))))) b!685994))

(assert (= (and b!685785 ((_ is Concat!3342) (_1!4226 (_1!4227 (h!12740 mapDefault!2878))))) b!685995))

(assert (= (and b!685785 ((_ is Star!1817) (_1!4226 (_1!4227 (h!12740 mapDefault!2878))))) b!685996))

(assert (= (and b!685785 ((_ is Union!1817) (_1!4226 (_1!4227 (h!12740 mapDefault!2878))))) b!685997))

(declare-fun e!430898 () Bool)

(assert (=> b!685785 (= tp!203624 e!430898)))

(declare-fun b!685998 () Bool)

(declare-fun e!430896 () Bool)

(declare-fun tp!203736 () Bool)

(declare-fun tp!203732 () Bool)

(declare-fun setRes!3340 () Bool)

(assert (=> b!685998 (= e!430898 (and tp!203736 (inv!9447 (_2!4226 (_1!4227 (h!12740 (t!87149 mapDefault!2878))))) e!430896 tp_is_empty!3635 setRes!3340 tp!203732))))

(declare-fun condSetEmpty!3340 () Bool)

(assert (=> b!685998 (= condSetEmpty!3340 (= (_2!4227 (h!12740 (t!87149 mapDefault!2878))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!685999 () Bool)

(declare-fun tp!203733 () Bool)

(assert (=> b!685999 (= e!430896 tp!203733)))

(declare-fun b!686000 () Bool)

(declare-fun e!430897 () Bool)

(declare-fun tp!203734 () Bool)

(assert (=> b!686000 (= e!430897 tp!203734)))

(declare-fun setIsEmpty!3340 () Bool)

(assert (=> setIsEmpty!3340 setRes!3340))

(declare-fun setElem!3340 () Context!454)

(declare-fun setNonEmpty!3340 () Bool)

(declare-fun tp!203735 () Bool)

(assert (=> setNonEmpty!3340 (= setRes!3340 (and tp!203735 (inv!9447 setElem!3340) e!430897))))

(declare-fun setRest!3340 () (InoxSet Context!454))

(assert (=> setNonEmpty!3340 (= (_2!4227 (h!12740 (t!87149 mapDefault!2878))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3340 true) setRest!3340))))

(assert (= b!685998 b!685999))

(assert (= (and b!685998 condSetEmpty!3340) setIsEmpty!3340))

(assert (= (and b!685998 (not condSetEmpty!3340)) setNonEmpty!3340))

(assert (= setNonEmpty!3340 b!686000))

(assert (= (and b!685785 ((_ is Cons!7339) (t!87149 mapDefault!2878))) b!685998))

(declare-fun m!942698 () Bool)

(assert (=> b!685998 m!942698))

(declare-fun m!942700 () Bool)

(assert (=> setNonEmpty!3340 m!942700))

(declare-fun b!686001 () Bool)

(declare-fun e!430899 () Bool)

(declare-fun tp!203737 () Bool)

(declare-fun tp!203738 () Bool)

(assert (=> b!686001 (= e!430899 (and tp!203737 tp!203738))))

(assert (=> b!685813 (= tp!203666 e!430899)))

(assert (= (and b!685813 ((_ is Cons!7337) (exprs!727 (_1!4228 (_1!4229 (h!12741 mapValue!2874)))))) b!686001))

(declare-fun b!686002 () Bool)

(declare-fun e!430900 () Bool)

(declare-fun tp!203739 () Bool)

(declare-fun tp!203740 () Bool)

(assert (=> b!686002 (= e!430900 (and tp!203739 tp!203740))))

(assert (=> b!685767 (= tp!203595 e!430900)))

(assert (= (and b!685767 ((_ is Cons!7337) (exprs!727 setElem!3309))) b!686002))

(declare-fun condSetEmpty!3341 () Bool)

(assert (=> setNonEmpty!3308 (= condSetEmpty!3341 (= setRest!3308 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3341 () Bool)

(assert (=> setNonEmpty!3308 (= tp!203572 setRes!3341)))

(declare-fun setIsEmpty!3341 () Bool)

(assert (=> setIsEmpty!3341 setRes!3341))

(declare-fun setNonEmpty!3341 () Bool)

(declare-fun setElem!3341 () Context!454)

(declare-fun tp!203741 () Bool)

(declare-fun e!430901 () Bool)

(assert (=> setNonEmpty!3341 (= setRes!3341 (and tp!203741 (inv!9447 setElem!3341) e!430901))))

(declare-fun setRest!3341 () (InoxSet Context!454))

(assert (=> setNonEmpty!3341 (= setRest!3308 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3341 true) setRest!3341))))

(declare-fun b!686003 () Bool)

(declare-fun tp!203742 () Bool)

(assert (=> b!686003 (= e!430901 tp!203742)))

(assert (= (and setNonEmpty!3308 condSetEmpty!3341) setIsEmpty!3341))

(assert (= (and setNonEmpty!3308 (not condSetEmpty!3341)) setNonEmpty!3341))

(assert (= setNonEmpty!3341 b!686003))

(declare-fun m!942702 () Bool)

(assert (=> setNonEmpty!3341 m!942702))

(declare-fun b!686004 () Bool)

(declare-fun e!430902 () Bool)

(declare-fun tp!203743 () Bool)

(declare-fun tp!203744 () Bool)

(assert (=> b!686004 (= e!430902 (and tp!203743 tp!203744))))

(assert (=> b!685783 (= tp!203622 e!430902)))

(assert (= (and b!685783 ((_ is Cons!7337) (exprs!727 (_2!4226 (_1!4227 (h!12740 mapValue!2878)))))) b!686004))

(declare-fun b!686005 () Bool)

(declare-fun e!430903 () Bool)

(declare-fun tp!203745 () Bool)

(declare-fun tp!203746 () Bool)

(assert (=> b!686005 (= e!430903 (and tp!203745 tp!203746))))

(assert (=> b!685811 (= tp!203665 e!430903)))

(assert (= (and b!685811 ((_ is Cons!7337) (exprs!727 setElem!3323))) b!686005))

(declare-fun condSetEmpty!3342 () Bool)

(assert (=> setNonEmpty!3303 (= condSetEmpty!3342 (= setRest!3303 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3342 () Bool)

(assert (=> setNonEmpty!3303 (= tp!203554 setRes!3342)))

(declare-fun setIsEmpty!3342 () Bool)

(assert (=> setIsEmpty!3342 setRes!3342))

(declare-fun setElem!3342 () Context!454)

(declare-fun tp!203747 () Bool)

(declare-fun setNonEmpty!3342 () Bool)

(declare-fun e!430904 () Bool)

(assert (=> setNonEmpty!3342 (= setRes!3342 (and tp!203747 (inv!9447 setElem!3342) e!430904))))

(declare-fun setRest!3342 () (InoxSet Context!454))

(assert (=> setNonEmpty!3342 (= setRest!3303 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3342 true) setRest!3342))))

(declare-fun b!686006 () Bool)

(declare-fun tp!203748 () Bool)

(assert (=> b!686006 (= e!430904 tp!203748)))

(assert (= (and setNonEmpty!3303 condSetEmpty!3342) setIsEmpty!3342))

(assert (= (and setNonEmpty!3303 (not condSetEmpty!3342)) setNonEmpty!3342))

(assert (= setNonEmpty!3342 b!686006))

(declare-fun m!942704 () Bool)

(assert (=> setNonEmpty!3342 m!942704))

(declare-fun e!430907 () Bool)

(assert (=> b!685729 (= tp!203555 e!430907)))

(declare-fun b!686007 () Bool)

(declare-fun e!430906 () Bool)

(declare-fun tp!203751 () Bool)

(assert (=> b!686007 (= e!430906 tp!203751)))

(declare-fun setRes!3343 () Bool)

(declare-fun tp!203749 () Bool)

(declare-fun setElem!3343 () Context!454)

(declare-fun setNonEmpty!3343 () Bool)

(assert (=> setNonEmpty!3343 (= setRes!3343 (and tp!203749 (inv!9447 setElem!3343) e!430906))))

(declare-fun setRest!3343 () (InoxSet Context!454))

(assert (=> setNonEmpty!3343 (= (_2!4229 (h!12741 (t!87150 (zeroValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3343 true) setRest!3343))))

(declare-fun setIsEmpty!3343 () Bool)

(assert (=> setIsEmpty!3343 setRes!3343))

(declare-fun e!430905 () Bool)

(declare-fun b!686008 () Bool)

(declare-fun tp!203750 () Bool)

(assert (=> b!686008 (= e!430907 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 (t!87150 (zeroValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))))))) e!430905 tp_is_empty!3635 setRes!3343 tp!203750))))

(declare-fun condSetEmpty!3343 () Bool)

(assert (=> b!686008 (= condSetEmpty!3343 (= (_2!4229 (h!12741 (t!87150 (zeroValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686009 () Bool)

(declare-fun tp!203752 () Bool)

(assert (=> b!686009 (= e!430905 tp!203752)))

(assert (= b!686008 b!686009))

(assert (= (and b!686008 condSetEmpty!3343) setIsEmpty!3343))

(assert (= (and b!686008 (not condSetEmpty!3343)) setNonEmpty!3343))

(assert (= setNonEmpty!3343 b!686007))

(assert (= (and b!685729 ((_ is Cons!7340) (t!87150 (zeroValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))))) b!686008))

(declare-fun m!942706 () Bool)

(assert (=> setNonEmpty!3343 m!942706))

(declare-fun m!942708 () Bool)

(assert (=> b!686008 m!942708))

(declare-fun b!686010 () Bool)

(declare-fun e!430908 () Bool)

(declare-fun tp!203753 () Bool)

(declare-fun tp!203754 () Bool)

(assert (=> b!686010 (= e!430908 (and tp!203753 tp!203754))))

(assert (=> b!685733 (= tp!203561 e!430908)))

(assert (= (and b!685733 ((_ is Cons!7337) (exprs!727 (_1!4228 (_1!4229 (h!12741 (minValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))))))) b!686010))

(declare-fun condSetEmpty!3344 () Bool)

(assert (=> setNonEmpty!3331 (= condSetEmpty!3344 (= setRest!3331 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3344 () Bool)

(assert (=> setNonEmpty!3331 (= tp!203697 setRes!3344)))

(declare-fun setIsEmpty!3344 () Bool)

(assert (=> setIsEmpty!3344 setRes!3344))

(declare-fun setNonEmpty!3344 () Bool)

(declare-fun e!430909 () Bool)

(declare-fun tp!203755 () Bool)

(declare-fun setElem!3344 () Context!454)

(assert (=> setNonEmpty!3344 (= setRes!3344 (and tp!203755 (inv!9447 setElem!3344) e!430909))))

(declare-fun setRest!3344 () (InoxSet Context!454))

(assert (=> setNonEmpty!3344 (= setRest!3331 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3344 true) setRest!3344))))

(declare-fun b!686011 () Bool)

(declare-fun tp!203756 () Bool)

(assert (=> b!686011 (= e!430909 tp!203756)))

(assert (= (and setNonEmpty!3331 condSetEmpty!3344) setIsEmpty!3344))

(assert (= (and setNonEmpty!3331 (not condSetEmpty!3344)) setNonEmpty!3344))

(assert (= setNonEmpty!3344 b!686011))

(declare-fun m!942710 () Bool)

(assert (=> setNonEmpty!3344 m!942710))

(declare-fun e!430911 () Bool)

(declare-fun b!686012 () Bool)

(declare-fun tp!203758 () Bool)

(declare-fun tp!203757 () Bool)

(assert (=> b!686012 (= e!430911 (and (inv!9439 (left!5939 (left!5939 (c!121199 input!756)))) tp!203758 (inv!9439 (right!6269 (left!5939 (c!121199 input!756)))) tp!203757))))

(declare-fun b!686014 () Bool)

(declare-fun e!430910 () Bool)

(declare-fun tp!203759 () Bool)

(assert (=> b!686014 (= e!430910 tp!203759)))

(declare-fun b!686013 () Bool)

(assert (=> b!686013 (= e!430911 (and (inv!9448 (xs!5257 (left!5939 (c!121199 input!756)))) e!430910))))

(assert (=> b!685763 (= tp!203593 (and (inv!9439 (left!5939 (c!121199 input!756))) e!430911))))

(assert (= (and b!685763 ((_ is Node!2608) (left!5939 (c!121199 input!756)))) b!686012))

(assert (= b!686013 b!686014))

(assert (= (and b!685763 ((_ is Leaf!3870) (left!5939 (c!121199 input!756)))) b!686013))

(declare-fun m!942712 () Bool)

(assert (=> b!686012 m!942712))

(declare-fun m!942714 () Bool)

(assert (=> b!686012 m!942714))

(declare-fun m!942716 () Bool)

(assert (=> b!686013 m!942716))

(assert (=> b!685763 m!942425))

(declare-fun tp!203760 () Bool)

(declare-fun b!686015 () Bool)

(declare-fun tp!203761 () Bool)

(declare-fun e!430913 () Bool)

(assert (=> b!686015 (= e!430913 (and (inv!9439 (left!5939 (right!6269 (c!121199 input!756)))) tp!203761 (inv!9439 (right!6269 (right!6269 (c!121199 input!756)))) tp!203760))))

(declare-fun b!686017 () Bool)

(declare-fun e!430912 () Bool)

(declare-fun tp!203762 () Bool)

(assert (=> b!686017 (= e!430912 tp!203762)))

(declare-fun b!686016 () Bool)

(assert (=> b!686016 (= e!430913 (and (inv!9448 (xs!5257 (right!6269 (c!121199 input!756)))) e!430912))))

(assert (=> b!685763 (= tp!203592 (and (inv!9439 (right!6269 (c!121199 input!756))) e!430913))))

(assert (= (and b!685763 ((_ is Node!2608) (right!6269 (c!121199 input!756)))) b!686015))

(assert (= b!686016 b!686017))

(assert (= (and b!685763 ((_ is Leaf!3870) (right!6269 (c!121199 input!756)))) b!686016))

(declare-fun m!942718 () Bool)

(assert (=> b!686015 m!942718))

(declare-fun m!942720 () Bool)

(assert (=> b!686015 m!942720))

(declare-fun m!942722 () Bool)

(assert (=> b!686016 m!942722))

(assert (=> b!685763 m!942427))

(declare-fun b!686018 () Bool)

(declare-fun e!430914 () Bool)

(declare-fun tp!203763 () Bool)

(declare-fun tp!203764 () Bool)

(assert (=> b!686018 (= e!430914 (and tp!203763 tp!203764))))

(assert (=> b!685833 (= tp!203692 e!430914)))

(assert (= (and b!685833 ((_ is Cons!7337) (exprs!727 setElem!3329))) b!686018))

(declare-fun b!686019 () Bool)

(declare-fun e!430915 () Bool)

(declare-fun tp!203765 () Bool)

(declare-fun tp!203766 () Bool)

(assert (=> b!686019 (= e!430915 (and tp!203765 tp!203766))))

(assert (=> b!685816 (= tp!203669 e!430915)))

(assert (= (and b!685816 ((_ is Cons!7337) (exprs!727 setElem!3324))) b!686019))

(declare-fun b!686022 () Bool)

(declare-fun b_free!19289 () Bool)

(declare-fun b_next!19353 () Bool)

(assert (=> b!686022 (= b_free!19289 (not b_next!19353))))

(declare-fun tp!203770 () Bool)

(declare-fun b_and!63083 () Bool)

(assert (=> b!686022 (= tp!203770 b_and!63083)))

(declare-fun b_free!19291 () Bool)

(declare-fun b_next!19355 () Bool)

(assert (=> b!686022 (= b_free!19291 (not b_next!19355))))

(declare-fun tp!203768 () Bool)

(declare-fun b_and!63085 () Bool)

(assert (=> b!686022 (= tp!203768 b_and!63085)))

(declare-fun e!430919 () Bool)

(assert (=> b!686022 (= e!430919 (and tp!203770 tp!203768))))

(declare-fun e!430918 () Bool)

(declare-fun tp!203767 () Bool)

(declare-fun b!686021 () Bool)

(assert (=> b!686021 (= e!430918 (and tp!203767 (inv!9432 (tag!1743 (h!12737 (t!87146 (t!87146 rules!1357))))) (inv!9441 (transformation!1481 (h!12737 (t!87146 (t!87146 rules!1357))))) e!430919))))

(declare-fun b!686020 () Bool)

(declare-fun e!430916 () Bool)

(declare-fun tp!203769 () Bool)

(assert (=> b!686020 (= e!430916 (and e!430918 tp!203769))))

(assert (=> b!685752 (= tp!203584 e!430916)))

(assert (= b!686021 b!686022))

(assert (= b!686020 b!686021))

(assert (= (and b!685752 ((_ is Cons!7336) (t!87146 (t!87146 rules!1357)))) b!686020))

(declare-fun m!942724 () Bool)

(assert (=> b!686021 m!942724))

(declare-fun m!942726 () Bool)

(assert (=> b!686021 m!942726))

(declare-fun e!430922 () Bool)

(assert (=> b!685809 (= tp!203657 e!430922)))

(declare-fun b!686023 () Bool)

(declare-fun e!430921 () Bool)

(declare-fun tp!203773 () Bool)

(assert (=> b!686023 (= e!430921 tp!203773)))

(declare-fun tp!203771 () Bool)

(declare-fun setElem!3345 () Context!454)

(declare-fun setNonEmpty!3345 () Bool)

(declare-fun setRes!3345 () Bool)

(assert (=> setNonEmpty!3345 (= setRes!3345 (and tp!203771 (inv!9447 setElem!3345) e!430921))))

(declare-fun setRest!3345 () (InoxSet Context!454))

(assert (=> setNonEmpty!3345 (= (_2!4229 (h!12741 (t!87150 mapValue!2881))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3345 true) setRest!3345))))

(declare-fun setIsEmpty!3345 () Bool)

(assert (=> setIsEmpty!3345 setRes!3345))

(declare-fun e!430920 () Bool)

(declare-fun tp!203772 () Bool)

(declare-fun b!686024 () Bool)

(assert (=> b!686024 (= e!430922 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 (t!87150 mapValue!2881))))) e!430920 tp_is_empty!3635 setRes!3345 tp!203772))))

(declare-fun condSetEmpty!3345 () Bool)

(assert (=> b!686024 (= condSetEmpty!3345 (= (_2!4229 (h!12741 (t!87150 mapValue!2881))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686025 () Bool)

(declare-fun tp!203774 () Bool)

(assert (=> b!686025 (= e!430920 tp!203774)))

(assert (= b!686024 b!686025))

(assert (= (and b!686024 condSetEmpty!3345) setIsEmpty!3345))

(assert (= (and b!686024 (not condSetEmpty!3345)) setNonEmpty!3345))

(assert (= setNonEmpty!3345 b!686023))

(assert (= (and b!685809 ((_ is Cons!7340) (t!87150 mapValue!2881))) b!686024))

(declare-fun m!942728 () Bool)

(assert (=> setNonEmpty!3345 m!942728))

(declare-fun m!942730 () Bool)

(assert (=> b!686024 m!942730))

(declare-fun b!686026 () Bool)

(declare-fun e!430923 () Bool)

(declare-fun tp!203775 () Bool)

(declare-fun tp!203776 () Bool)

(assert (=> b!686026 (= e!430923 (and tp!203775 tp!203776))))

(assert (=> b!685731 (= tp!203560 e!430923)))

(assert (= (and b!685731 ((_ is Cons!7337) (exprs!727 setElem!3304))) b!686026))

(declare-fun e!430925 () Bool)

(assert (=> b!685831 (= tp!203693 e!430925)))

(declare-fun b!686027 () Bool)

(declare-fun setRes!3346 () Bool)

(declare-fun tp!203779 () Bool)

(assert (=> b!686027 (= e!430925 (and setRes!3346 tp!203779))))

(declare-fun condSetEmpty!3346 () Bool)

(assert (=> b!686027 (= condSetEmpty!3346 (= (_1!4224 (_1!4225 (h!12739 (t!87148 mapDefault!2884)))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun setIsEmpty!3346 () Bool)

(assert (=> setIsEmpty!3346 setRes!3346))

(declare-fun b!686028 () Bool)

(declare-fun e!430924 () Bool)

(declare-fun tp!203777 () Bool)

(assert (=> b!686028 (= e!430924 tp!203777)))

(declare-fun setNonEmpty!3346 () Bool)

(declare-fun setElem!3346 () Context!454)

(declare-fun tp!203778 () Bool)

(assert (=> setNonEmpty!3346 (= setRes!3346 (and tp!203778 (inv!9447 setElem!3346) e!430924))))

(declare-fun setRest!3346 () (InoxSet Context!454))

(assert (=> setNonEmpty!3346 (= (_1!4224 (_1!4225 (h!12739 (t!87148 mapDefault!2884)))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3346 true) setRest!3346))))

(assert (= (and b!686027 condSetEmpty!3346) setIsEmpty!3346))

(assert (= (and b!686027 (not condSetEmpty!3346)) setNonEmpty!3346))

(assert (= setNonEmpty!3346 b!686028))

(assert (= (and b!685831 ((_ is Cons!7338) (t!87148 mapDefault!2884))) b!686027))

(declare-fun m!942732 () Bool)

(assert (=> setNonEmpty!3346 m!942732))

(declare-fun e!430927 () Bool)

(assert (=> b!685834 (= tp!203698 e!430927)))

(declare-fun b!686029 () Bool)

(declare-fun setRes!3347 () Bool)

(declare-fun tp!203782 () Bool)

(assert (=> b!686029 (= e!430927 (and setRes!3347 tp!203782))))

(declare-fun condSetEmpty!3347 () Bool)

(assert (=> b!686029 (= condSetEmpty!3347 (= (_1!4224 (_1!4225 (h!12739 (t!87148 mapValue!2873)))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun setIsEmpty!3347 () Bool)

(assert (=> setIsEmpty!3347 setRes!3347))

(declare-fun b!686030 () Bool)

(declare-fun e!430926 () Bool)

(declare-fun tp!203780 () Bool)

(assert (=> b!686030 (= e!430926 tp!203780)))

(declare-fun setNonEmpty!3347 () Bool)

(declare-fun setElem!3347 () Context!454)

(declare-fun tp!203781 () Bool)

(assert (=> setNonEmpty!3347 (= setRes!3347 (and tp!203781 (inv!9447 setElem!3347) e!430926))))

(declare-fun setRest!3347 () (InoxSet Context!454))

(assert (=> setNonEmpty!3347 (= (_1!4224 (_1!4225 (h!12739 (t!87148 mapValue!2873)))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3347 true) setRest!3347))))

(assert (= (and b!686029 condSetEmpty!3347) setIsEmpty!3347))

(assert (= (and b!686029 (not condSetEmpty!3347)) setNonEmpty!3347))

(assert (= setNonEmpty!3347 b!686030))

(assert (= (and b!685834 ((_ is Cons!7338) (t!87148 mapValue!2873))) b!686029))

(declare-fun m!942734 () Bool)

(assert (=> setNonEmpty!3347 m!942734))

(declare-fun b!686031 () Bool)

(declare-fun e!430928 () Bool)

(declare-fun tp!203783 () Bool)

(declare-fun tp!203784 () Bool)

(assert (=> b!686031 (= e!430928 (and tp!203783 tp!203784))))

(assert (=> b!685832 (= tp!203690 e!430928)))

(assert (= (and b!685832 ((_ is Cons!7337) (exprs!727 setElem!3330))) b!686031))

(declare-fun b!686034 () Bool)

(declare-fun e!430929 () Bool)

(declare-fun tp!203786 () Bool)

(assert (=> b!686034 (= e!430929 tp!203786)))

(declare-fun b!686033 () Bool)

(declare-fun tp!203787 () Bool)

(declare-fun tp!203788 () Bool)

(assert (=> b!686033 (= e!430929 (and tp!203787 tp!203788))))

(declare-fun b!686032 () Bool)

(assert (=> b!686032 (= e!430929 tp_is_empty!3635)))

(assert (=> b!685814 (= tp!203671 e!430929)))

(declare-fun b!686035 () Bool)

(declare-fun tp!203789 () Bool)

(declare-fun tp!203785 () Bool)

(assert (=> b!686035 (= e!430929 (and tp!203789 tp!203785))))

(assert (= (and b!685814 ((_ is ElementMatch!1817) (_1!4226 (_1!4227 (h!12740 mapDefault!2874))))) b!686032))

(assert (= (and b!685814 ((_ is Concat!3342) (_1!4226 (_1!4227 (h!12740 mapDefault!2874))))) b!686033))

(assert (= (and b!685814 ((_ is Star!1817) (_1!4226 (_1!4227 (h!12740 mapDefault!2874))))) b!686034))

(assert (= (and b!685814 ((_ is Union!1817) (_1!4226 (_1!4227 (h!12740 mapDefault!2874))))) b!686035))

(declare-fun e!430932 () Bool)

(assert (=> b!685814 (= tp!203667 e!430932)))

(declare-fun tp!203794 () Bool)

(declare-fun tp!203790 () Bool)

(declare-fun setRes!3348 () Bool)

(declare-fun e!430930 () Bool)

(declare-fun b!686036 () Bool)

(assert (=> b!686036 (= e!430932 (and tp!203794 (inv!9447 (_2!4226 (_1!4227 (h!12740 (t!87149 mapDefault!2874))))) e!430930 tp_is_empty!3635 setRes!3348 tp!203790))))

(declare-fun condSetEmpty!3348 () Bool)

(assert (=> b!686036 (= condSetEmpty!3348 (= (_2!4227 (h!12740 (t!87149 mapDefault!2874))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686037 () Bool)

(declare-fun tp!203791 () Bool)

(assert (=> b!686037 (= e!430930 tp!203791)))

(declare-fun b!686038 () Bool)

(declare-fun e!430931 () Bool)

(declare-fun tp!203792 () Bool)

(assert (=> b!686038 (= e!430931 tp!203792)))

(declare-fun setIsEmpty!3348 () Bool)

(assert (=> setIsEmpty!3348 setRes!3348))

(declare-fun setNonEmpty!3348 () Bool)

(declare-fun setElem!3348 () Context!454)

(declare-fun tp!203793 () Bool)

(assert (=> setNonEmpty!3348 (= setRes!3348 (and tp!203793 (inv!9447 setElem!3348) e!430931))))

(declare-fun setRest!3348 () (InoxSet Context!454))

(assert (=> setNonEmpty!3348 (= (_2!4227 (h!12740 (t!87149 mapDefault!2874))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3348 true) setRest!3348))))

(assert (= b!686036 b!686037))

(assert (= (and b!686036 condSetEmpty!3348) setIsEmpty!3348))

(assert (= (and b!686036 (not condSetEmpty!3348)) setNonEmpty!3348))

(assert (= setNonEmpty!3348 b!686038))

(assert (= (and b!685814 ((_ is Cons!7339) (t!87149 mapDefault!2874))) b!686036))

(declare-fun m!942736 () Bool)

(assert (=> b!686036 m!942736))

(declare-fun m!942738 () Bool)

(assert (=> setNonEmpty!3348 m!942738))

(declare-fun e!430934 () Bool)

(assert (=> b!685742 (= tp!203573 e!430934)))

(declare-fun b!686039 () Bool)

(declare-fun setRes!3349 () Bool)

(declare-fun tp!203797 () Bool)

(assert (=> b!686039 (= e!430934 (and setRes!3349 tp!203797))))

(declare-fun condSetEmpty!3349 () Bool)

(assert (=> b!686039 (= condSetEmpty!3349 (= (_1!4224 (_1!4225 (h!12739 (t!87148 (minValue!979 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59)))))))))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun setIsEmpty!3349 () Bool)

(assert (=> setIsEmpty!3349 setRes!3349))

(declare-fun b!686040 () Bool)

(declare-fun e!430933 () Bool)

(declare-fun tp!203795 () Bool)

(assert (=> b!686040 (= e!430933 tp!203795)))

(declare-fun tp!203796 () Bool)

(declare-fun setNonEmpty!3349 () Bool)

(declare-fun setElem!3349 () Context!454)

(assert (=> setNonEmpty!3349 (= setRes!3349 (and tp!203796 (inv!9447 setElem!3349) e!430933))))

(declare-fun setRest!3349 () (InoxSet Context!454))

(assert (=> setNonEmpty!3349 (= (_1!4224 (_1!4225 (h!12739 (t!87148 (minValue!979 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59)))))))))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3349 true) setRest!3349))))

(assert (= (and b!686039 condSetEmpty!3349) setIsEmpty!3349))

(assert (= (and b!686039 (not condSetEmpty!3349)) setNonEmpty!3349))

(assert (= setNonEmpty!3349 b!686040))

(assert (= (and b!685742 ((_ is Cons!7338) (t!87148 (minValue!979 (v!17551 (underlying!1627 (v!17552 (underlying!1628 (cache!1081 cacheFindLongestMatch!59))))))))) b!686039))

(declare-fun m!942740 () Bool)

(assert (=> setNonEmpty!3349 m!942740))

(declare-fun b!686041 () Bool)

(declare-fun e!430935 () Bool)

(declare-fun tp!203798 () Bool)

(declare-fun tp!203799 () Bool)

(assert (=> b!686041 (= e!430935 (and tp!203798 tp!203799))))

(assert (=> b!685838 (= tp!203702 e!430935)))

(assert (= (and b!685838 ((_ is Cons!7337) (exprs!727 (_1!4228 (_1!4229 (h!12741 mapDefault!2873)))))) b!686041))

(declare-fun b!686042 () Bool)

(declare-fun e!430936 () Bool)

(declare-fun tp!203800 () Bool)

(declare-fun tp!203801 () Bool)

(assert (=> b!686042 (= e!430936 (and tp!203800 tp!203801))))

(assert (=> b!685782 (= tp!203627 e!430936)))

(assert (= (and b!685782 ((_ is Cons!7337) (exprs!727 setElem!3314))) b!686042))

(declare-fun condSetEmpty!3350 () Bool)

(assert (=> setNonEmpty!3321 (= condSetEmpty!3350 (= setRest!3322 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3350 () Bool)

(assert (=> setNonEmpty!3321 (= tp!203659 setRes!3350)))

(declare-fun setIsEmpty!3350 () Bool)

(assert (=> setIsEmpty!3350 setRes!3350))

(declare-fun setNonEmpty!3350 () Bool)

(declare-fun setElem!3350 () Context!454)

(declare-fun tp!203802 () Bool)

(declare-fun e!430937 () Bool)

(assert (=> setNonEmpty!3350 (= setRes!3350 (and tp!203802 (inv!9447 setElem!3350) e!430937))))

(declare-fun setRest!3350 () (InoxSet Context!454))

(assert (=> setNonEmpty!3350 (= setRest!3322 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3350 true) setRest!3350))))

(declare-fun b!686043 () Bool)

(declare-fun tp!203803 () Bool)

(assert (=> b!686043 (= e!430937 tp!203803)))

(assert (= (and setNonEmpty!3321 condSetEmpty!3350) setIsEmpty!3350))

(assert (= (and setNonEmpty!3321 (not condSetEmpty!3350)) setNonEmpty!3350))

(assert (= setNonEmpty!3350 b!686043))

(declare-fun m!942742 () Bool)

(assert (=> setNonEmpty!3350 m!942742))

(declare-fun condSetEmpty!3351 () Bool)

(assert (=> setNonEmpty!3299 (= condSetEmpty!3351 (= setRest!3299 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3351 () Bool)

(assert (=> setNonEmpty!3299 (= tp!203524 setRes!3351)))

(declare-fun setIsEmpty!3351 () Bool)

(assert (=> setIsEmpty!3351 setRes!3351))

(declare-fun tp!203804 () Bool)

(declare-fun setNonEmpty!3351 () Bool)

(declare-fun e!430938 () Bool)

(declare-fun setElem!3351 () Context!454)

(assert (=> setNonEmpty!3351 (= setRes!3351 (and tp!203804 (inv!9447 setElem!3351) e!430938))))

(declare-fun setRest!3351 () (InoxSet Context!454))

(assert (=> setNonEmpty!3351 (= setRest!3299 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3351 true) setRest!3351))))

(declare-fun b!686044 () Bool)

(declare-fun tp!203805 () Bool)

(assert (=> b!686044 (= e!430938 tp!203805)))

(assert (= (and setNonEmpty!3299 condSetEmpty!3351) setIsEmpty!3351))

(assert (= (and setNonEmpty!3299 (not condSetEmpty!3351)) setNonEmpty!3351))

(assert (= setNonEmpty!3351 b!686044))

(declare-fun m!942744 () Bool)

(assert (=> setNonEmpty!3351 m!942744))

(declare-fun e!430940 () Bool)

(assert (=> b!685830 (= tp!203695 e!430940)))

(declare-fun b!686045 () Bool)

(declare-fun setRes!3352 () Bool)

(declare-fun tp!203808 () Bool)

(assert (=> b!686045 (= e!430940 (and setRes!3352 tp!203808))))

(declare-fun condSetEmpty!3352 () Bool)

(assert (=> b!686045 (= condSetEmpty!3352 (= (_1!4224 (_1!4225 (h!12739 (t!87148 mapValue!2884)))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun setIsEmpty!3352 () Bool)

(assert (=> setIsEmpty!3352 setRes!3352))

(declare-fun b!686046 () Bool)

(declare-fun e!430939 () Bool)

(declare-fun tp!203806 () Bool)

(assert (=> b!686046 (= e!430939 tp!203806)))

(declare-fun setElem!3352 () Context!454)

(declare-fun tp!203807 () Bool)

(declare-fun setNonEmpty!3352 () Bool)

(assert (=> setNonEmpty!3352 (= setRes!3352 (and tp!203807 (inv!9447 setElem!3352) e!430939))))

(declare-fun setRest!3352 () (InoxSet Context!454))

(assert (=> setNonEmpty!3352 (= (_1!4224 (_1!4225 (h!12739 (t!87148 mapValue!2884)))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3352 true) setRest!3352))))

(assert (= (and b!686045 condSetEmpty!3352) setIsEmpty!3352))

(assert (= (and b!686045 (not condSetEmpty!3352)) setNonEmpty!3352))

(assert (= setNonEmpty!3352 b!686046))

(assert (= (and b!685830 ((_ is Cons!7338) (t!87148 mapValue!2884))) b!686045))

(declare-fun m!942746 () Bool)

(assert (=> setNonEmpty!3352 m!942746))

(declare-fun condSetEmpty!3353 () Bool)

(assert (=> setNonEmpty!3332 (= condSetEmpty!3353 (= setRest!3332 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3353 () Bool)

(assert (=> setNonEmpty!3332 (= tp!203699 setRes!3353)))

(declare-fun setIsEmpty!3353 () Bool)

(assert (=> setIsEmpty!3353 setRes!3353))

(declare-fun e!430941 () Bool)

(declare-fun setElem!3353 () Context!454)

(declare-fun setNonEmpty!3353 () Bool)

(declare-fun tp!203809 () Bool)

(assert (=> setNonEmpty!3353 (= setRes!3353 (and tp!203809 (inv!9447 setElem!3353) e!430941))))

(declare-fun setRest!3353 () (InoxSet Context!454))

(assert (=> setNonEmpty!3353 (= setRest!3332 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3353 true) setRest!3353))))

(declare-fun b!686047 () Bool)

(declare-fun tp!203810 () Bool)

(assert (=> b!686047 (= e!430941 tp!203810)))

(assert (= (and setNonEmpty!3332 condSetEmpty!3353) setIsEmpty!3353))

(assert (= (and setNonEmpty!3332 (not condSetEmpty!3353)) setNonEmpty!3353))

(assert (= setNonEmpty!3353 b!686047))

(declare-fun m!942748 () Bool)

(assert (=> setNonEmpty!3353 m!942748))

(declare-fun b!686048 () Bool)

(declare-fun e!430942 () Bool)

(declare-fun tp!203811 () Bool)

(declare-fun tp!203812 () Bool)

(assert (=> b!686048 (= e!430942 (and tp!203811 tp!203812))))

(assert (=> b!685702 (= tp!203523 e!430942)))

(assert (= (and b!685702 ((_ is Cons!7337) (exprs!727 setElem!3299))) b!686048))

(declare-fun b!686049 () Bool)

(declare-fun e!430943 () Bool)

(declare-fun tp!203813 () Bool)

(declare-fun tp!203814 () Bool)

(assert (=> b!686049 (= e!430943 (and tp!203813 tp!203814))))

(assert (=> b!685705 (= tp!203528 e!430943)))

(assert (= (and b!685705 ((_ is Cons!7337) (exprs!727 setElem!3300))) b!686049))

(declare-fun e!430945 () Bool)

(declare-fun tp!203815 () Bool)

(declare-fun b!686050 () Bool)

(declare-fun tp!203816 () Bool)

(assert (=> b!686050 (= e!430945 (and (inv!9439 (left!5939 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) tp!203816 (inv!9439 (right!6269 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) tp!203815))))

(declare-fun b!686052 () Bool)

(declare-fun e!430944 () Bool)

(declare-fun tp!203817 () Bool)

(assert (=> b!686052 (= e!430944 tp!203817)))

(declare-fun b!686051 () Bool)

(assert (=> b!686051 (= e!430945 (and (inv!9448 (xs!5257 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) e!430944))))

(assert (=> b!685817 (= tp!203673 (and (inv!9439 (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) e!430945))))

(assert (= (and b!685817 ((_ is Node!2608) (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) b!686050))

(assert (= b!686051 b!686052))

(assert (= (and b!685817 ((_ is Leaf!3870) (left!5939 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) b!686051))

(declare-fun m!942750 () Bool)

(assert (=> b!686050 m!942750))

(declare-fun m!942752 () Bool)

(assert (=> b!686050 m!942752))

(declare-fun m!942754 () Bool)

(assert (=> b!686051 m!942754))

(assert (=> b!685817 m!942465))

(declare-fun b!686053 () Bool)

(declare-fun e!430947 () Bool)

(declare-fun tp!203818 () Bool)

(declare-fun tp!203819 () Bool)

(assert (=> b!686053 (= e!430947 (and (inv!9439 (left!5939 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) tp!203819 (inv!9439 (right!6269 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) tp!203818))))

(declare-fun b!686055 () Bool)

(declare-fun e!430946 () Bool)

(declare-fun tp!203820 () Bool)

(assert (=> b!686055 (= e!430946 tp!203820)))

(declare-fun b!686054 () Bool)

(assert (=> b!686054 (= e!430947 (and (inv!9448 (xs!5257 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) e!430946))))

(assert (=> b!685817 (= tp!203672 (and (inv!9439 (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))) e!430947))))

(assert (= (and b!685817 ((_ is Node!2608) (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) b!686053))

(assert (= b!686054 b!686055))

(assert (= (and b!685817 ((_ is Leaf!3870) (right!6269 (c!121199 (totalInput!1780 cacheFindLongestMatch!59))))) b!686054))

(declare-fun m!942756 () Bool)

(assert (=> b!686053 m!942756))

(declare-fun m!942758 () Bool)

(assert (=> b!686053 m!942758))

(declare-fun m!942760 () Bool)

(assert (=> b!686054 m!942760))

(assert (=> b!685817 m!942467))

(declare-fun condSetEmpty!3354 () Bool)

(assert (=> setNonEmpty!3300 (= condSetEmpty!3354 (= setRest!3300 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3354 () Bool)

(assert (=> setNonEmpty!3300 (= tp!203529 setRes!3354)))

(declare-fun setIsEmpty!3354 () Bool)

(assert (=> setIsEmpty!3354 setRes!3354))

(declare-fun setNonEmpty!3354 () Bool)

(declare-fun e!430948 () Bool)

(declare-fun tp!203821 () Bool)

(declare-fun setElem!3354 () Context!454)

(assert (=> setNonEmpty!3354 (= setRes!3354 (and tp!203821 (inv!9447 setElem!3354) e!430948))))

(declare-fun setRest!3354 () (InoxSet Context!454))

(assert (=> setNonEmpty!3354 (= setRest!3300 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3354 true) setRest!3354))))

(declare-fun b!686056 () Bool)

(declare-fun tp!203822 () Bool)

(assert (=> b!686056 (= e!430948 tp!203822)))

(assert (= (and setNonEmpty!3300 condSetEmpty!3354) setIsEmpty!3354))

(assert (= (and setNonEmpty!3300 (not condSetEmpty!3354)) setNonEmpty!3354))

(assert (= setNonEmpty!3354 b!686056))

(declare-fun m!942762 () Bool)

(assert (=> setNonEmpty!3354 m!942762))

(declare-fun b!686057 () Bool)

(declare-fun e!430949 () Bool)

(declare-fun tp!203823 () Bool)

(assert (=> b!686057 (= e!430949 (and tp_is_empty!3635 tp!203823))))

(assert (=> b!685819 (= tp!203674 e!430949)))

(assert (= (and b!685819 ((_ is Cons!7335) (innerList!2666 (xs!5257 (c!121199 (totalInput!1780 cacheFindLongestMatch!59)))))) b!686057))

(declare-fun b!686058 () Bool)

(declare-fun e!430950 () Bool)

(declare-fun tp!203824 () Bool)

(declare-fun tp!203825 () Bool)

(assert (=> b!686058 (= e!430950 (and tp!203824 tp!203825))))

(assert (=> b!685807 (= tp!203658 e!430950)))

(assert (= (and b!685807 ((_ is Cons!7337) (exprs!727 setElem!3322))) b!686058))

(declare-fun b!686061 () Bool)

(declare-fun e!430951 () Bool)

(declare-fun tp!203827 () Bool)

(assert (=> b!686061 (= e!430951 tp!203827)))

(declare-fun b!686060 () Bool)

(declare-fun tp!203828 () Bool)

(declare-fun tp!203829 () Bool)

(assert (=> b!686060 (= e!430951 (and tp!203828 tp!203829))))

(declare-fun b!686059 () Bool)

(assert (=> b!686059 (= e!430951 tp_is_empty!3635)))

(assert (=> b!685703 (= tp!203530 e!430951)))

(declare-fun b!686062 () Bool)

(declare-fun tp!203830 () Bool)

(declare-fun tp!203826 () Bool)

(assert (=> b!686062 (= e!430951 (and tp!203830 tp!203826))))

(assert (= (and b!685703 ((_ is ElementMatch!1817) (_1!4226 (_1!4227 (h!12740 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))))) b!686059))

(assert (= (and b!685703 ((_ is Concat!3342) (_1!4226 (_1!4227 (h!12740 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))))) b!686060))

(assert (= (and b!685703 ((_ is Star!1817) (_1!4226 (_1!4227 (h!12740 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))))) b!686061))

(assert (= (and b!685703 ((_ is Union!1817) (_1!4226 (_1!4227 (h!12740 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))))) b!686062))

(declare-fun e!430954 () Bool)

(assert (=> b!685703 (= tp!203526 e!430954)))

(declare-fun b!686063 () Bool)

(declare-fun setRes!3355 () Bool)

(declare-fun tp!203835 () Bool)

(declare-fun e!430952 () Bool)

(declare-fun tp!203831 () Bool)

(assert (=> b!686063 (= e!430954 (and tp!203835 (inv!9447 (_2!4226 (_1!4227 (h!12740 (t!87149 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))))) e!430952 tp_is_empty!3635 setRes!3355 tp!203831))))

(declare-fun condSetEmpty!3355 () Bool)

(assert (=> b!686063 (= condSetEmpty!3355 (= (_2!4227 (h!12740 (t!87149 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686064 () Bool)

(declare-fun tp!203832 () Bool)

(assert (=> b!686064 (= e!430952 tp!203832)))

(declare-fun b!686065 () Bool)

(declare-fun e!430953 () Bool)

(declare-fun tp!203833 () Bool)

(assert (=> b!686065 (= e!430953 tp!203833)))

(declare-fun setIsEmpty!3355 () Bool)

(assert (=> setIsEmpty!3355 setRes!3355))

(declare-fun tp!203834 () Bool)

(declare-fun setElem!3355 () Context!454)

(declare-fun setNonEmpty!3355 () Bool)

(assert (=> setNonEmpty!3355 (= setRes!3355 (and tp!203834 (inv!9447 setElem!3355) e!430953))))

(declare-fun setRest!3355 () (InoxSet Context!454))

(assert (=> setNonEmpty!3355 (= (_2!4227 (h!12740 (t!87149 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3355 true) setRest!3355))))

(assert (= b!686063 b!686064))

(assert (= (and b!686063 condSetEmpty!3355) setIsEmpty!3355))

(assert (= (and b!686063 (not condSetEmpty!3355)) setNonEmpty!3355))

(assert (= setNonEmpty!3355 b!686065))

(assert (= (and b!685703 ((_ is Cons!7339) (t!87149 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))) b!686063))

(declare-fun m!942764 () Bool)

(assert (=> b!686063 m!942764))

(declare-fun m!942766 () Bool)

(assert (=> setNonEmpty!3355 m!942766))

(declare-fun b!686068 () Bool)

(declare-fun e!430955 () Bool)

(declare-fun tp!203837 () Bool)

(assert (=> b!686068 (= e!430955 tp!203837)))

(declare-fun b!686067 () Bool)

(declare-fun tp!203838 () Bool)

(declare-fun tp!203839 () Bool)

(assert (=> b!686067 (= e!430955 (and tp!203838 tp!203839))))

(declare-fun b!686066 () Bool)

(assert (=> b!686066 (= e!430955 tp_is_empty!3635)))

(assert (=> b!685717 (= tp!203543 e!430955)))

(declare-fun b!686069 () Bool)

(declare-fun tp!203840 () Bool)

(declare-fun tp!203836 () Bool)

(assert (=> b!686069 (= e!430955 (and tp!203840 tp!203836))))

(assert (= (and b!685717 ((_ is ElementMatch!1817) (regOne!4146 (regex!1481 (h!12737 rules!1357))))) b!686066))

(assert (= (and b!685717 ((_ is Concat!3342) (regOne!4146 (regex!1481 (h!12737 rules!1357))))) b!686067))

(assert (= (and b!685717 ((_ is Star!1817) (regOne!4146 (regex!1481 (h!12737 rules!1357))))) b!686068))

(assert (= (and b!685717 ((_ is Union!1817) (regOne!4146 (regex!1481 (h!12737 rules!1357))))) b!686069))

(declare-fun b!686072 () Bool)

(declare-fun e!430956 () Bool)

(declare-fun tp!203842 () Bool)

(assert (=> b!686072 (= e!430956 tp!203842)))

(declare-fun b!686071 () Bool)

(declare-fun tp!203843 () Bool)

(declare-fun tp!203844 () Bool)

(assert (=> b!686071 (= e!430956 (and tp!203843 tp!203844))))

(declare-fun b!686070 () Bool)

(assert (=> b!686070 (= e!430956 tp_is_empty!3635)))

(assert (=> b!685717 (= tp!203544 e!430956)))

(declare-fun b!686073 () Bool)

(declare-fun tp!203845 () Bool)

(declare-fun tp!203841 () Bool)

(assert (=> b!686073 (= e!430956 (and tp!203845 tp!203841))))

(assert (= (and b!685717 ((_ is ElementMatch!1817) (regTwo!4146 (regex!1481 (h!12737 rules!1357))))) b!686070))

(assert (= (and b!685717 ((_ is Concat!3342) (regTwo!4146 (regex!1481 (h!12737 rules!1357))))) b!686071))

(assert (= (and b!685717 ((_ is Star!1817) (regTwo!4146 (regex!1481 (h!12737 rules!1357))))) b!686072))

(assert (= (and b!685717 ((_ is Union!1817) (regTwo!4146 (regex!1481 (h!12737 rules!1357))))) b!686073))

(declare-fun b!686074 () Bool)

(declare-fun e!430958 () Bool)

(declare-fun tp!203848 () Bool)

(assert (=> b!686074 (= e!430958 tp!203848)))

(declare-fun mapNonEmpty!2885 () Bool)

(declare-fun mapRes!2885 () Bool)

(declare-fun tp!203852 () Bool)

(declare-fun e!430957 () Bool)

(assert (=> mapNonEmpty!2885 (= mapRes!2885 (and tp!203852 e!430957))))

(declare-fun mapValue!2885 () List!7354)

(declare-fun mapRest!2885 () (Array (_ BitVec 32) List!7354))

(declare-fun mapKey!2885 () (_ BitVec 32))

(assert (=> mapNonEmpty!2885 (= mapRest!2881 (store mapRest!2885 mapKey!2885 mapValue!2885))))

(declare-fun mapIsEmpty!2885 () Bool)

(assert (=> mapIsEmpty!2885 mapRes!2885))

(declare-fun setIsEmpty!3356 () Bool)

(declare-fun setRes!3357 () Bool)

(assert (=> setIsEmpty!3356 setRes!3357))

(declare-fun condMapEmpty!2885 () Bool)

(declare-fun mapDefault!2885 () List!7354)

(assert (=> mapNonEmpty!2881 (= condMapEmpty!2885 (= mapRest!2881 ((as const (Array (_ BitVec 32) List!7354)) mapDefault!2885)))))

(declare-fun e!430959 () Bool)

(assert (=> mapNonEmpty!2881 (= tp!203660 (and e!430959 mapRes!2885))))

(declare-fun b!686075 () Bool)

(declare-fun e!430962 () Bool)

(declare-fun tp!203847 () Bool)

(assert (=> b!686075 (= e!430962 tp!203847)))

(declare-fun b!686076 () Bool)

(declare-fun e!430961 () Bool)

(declare-fun tp!203850 () Bool)

(assert (=> b!686076 (= e!430961 tp!203850)))

(declare-fun setIsEmpty!3357 () Bool)

(declare-fun setRes!3356 () Bool)

(assert (=> setIsEmpty!3357 setRes!3356))

(declare-fun setNonEmpty!3356 () Bool)

(declare-fun tp!203851 () Bool)

(declare-fun setElem!3357 () Context!454)

(assert (=> setNonEmpty!3356 (= setRes!3357 (and tp!203851 (inv!9447 setElem!3357) e!430961))))

(declare-fun setRest!3357 () (InoxSet Context!454))

(assert (=> setNonEmpty!3356 (= (_2!4229 (h!12741 mapValue!2885)) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3357 true) setRest!3357))))

(declare-fun b!686077 () Bool)

(declare-fun e!430960 () Bool)

(declare-fun tp!203846 () Bool)

(assert (=> b!686077 (= e!430959 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 mapDefault!2885)))) e!430960 tp_is_empty!3635 setRes!3356 tp!203846))))

(declare-fun condSetEmpty!3357 () Bool)

(assert (=> b!686077 (= condSetEmpty!3357 (= (_2!4229 (h!12741 mapDefault!2885)) ((as const (Array Context!454 Bool)) false)))))

(declare-fun tp!203854 () Bool)

(declare-fun setElem!3356 () Context!454)

(declare-fun setNonEmpty!3357 () Bool)

(assert (=> setNonEmpty!3357 (= setRes!3356 (and tp!203854 (inv!9447 setElem!3356) e!430962))))

(declare-fun setRest!3356 () (InoxSet Context!454))

(assert (=> setNonEmpty!3357 (= (_2!4229 (h!12741 mapDefault!2885)) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3356 true) setRest!3356))))

(declare-fun b!686078 () Bool)

(declare-fun tp!203849 () Bool)

(assert (=> b!686078 (= e!430957 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 mapValue!2885)))) e!430958 tp_is_empty!3635 setRes!3357 tp!203849))))

(declare-fun condSetEmpty!3356 () Bool)

(assert (=> b!686078 (= condSetEmpty!3356 (= (_2!4229 (h!12741 mapValue!2885)) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686079 () Bool)

(declare-fun tp!203853 () Bool)

(assert (=> b!686079 (= e!430960 tp!203853)))

(assert (= (and mapNonEmpty!2881 condMapEmpty!2885) mapIsEmpty!2885))

(assert (= (and mapNonEmpty!2881 (not condMapEmpty!2885)) mapNonEmpty!2885))

(assert (= b!686078 b!686074))

(assert (= (and b!686078 condSetEmpty!3356) setIsEmpty!3356))

(assert (= (and b!686078 (not condSetEmpty!3356)) setNonEmpty!3356))

(assert (= setNonEmpty!3356 b!686076))

(assert (= (and mapNonEmpty!2885 ((_ is Cons!7340) mapValue!2885)) b!686078))

(assert (= b!686077 b!686079))

(assert (= (and b!686077 condSetEmpty!3357) setIsEmpty!3357))

(assert (= (and b!686077 (not condSetEmpty!3357)) setNonEmpty!3357))

(assert (= setNonEmpty!3357 b!686075))

(assert (= (and mapNonEmpty!2881 ((_ is Cons!7340) mapDefault!2885)) b!686077))

(declare-fun m!942768 () Bool)

(assert (=> setNonEmpty!3357 m!942768))

(declare-fun m!942770 () Bool)

(assert (=> mapNonEmpty!2885 m!942770))

(declare-fun m!942772 () Bool)

(assert (=> b!686078 m!942772))

(declare-fun m!942774 () Bool)

(assert (=> setNonEmpty!3356 m!942774))

(declare-fun m!942776 () Bool)

(assert (=> b!686077 m!942776))

(declare-fun b!686082 () Bool)

(declare-fun e!430963 () Bool)

(declare-fun tp!203856 () Bool)

(assert (=> b!686082 (= e!430963 tp!203856)))

(declare-fun b!686081 () Bool)

(declare-fun tp!203857 () Bool)

(declare-fun tp!203858 () Bool)

(assert (=> b!686081 (= e!430963 (and tp!203857 tp!203858))))

(declare-fun b!686080 () Bool)

(assert (=> b!686080 (= e!430963 tp_is_empty!3635)))

(assert (=> b!685719 (= tp!203545 e!430963)))

(declare-fun b!686083 () Bool)

(declare-fun tp!203859 () Bool)

(declare-fun tp!203855 () Bool)

(assert (=> b!686083 (= e!430963 (and tp!203859 tp!203855))))

(assert (= (and b!685719 ((_ is ElementMatch!1817) (regOne!4147 (regex!1481 (h!12737 rules!1357))))) b!686080))

(assert (= (and b!685719 ((_ is Concat!3342) (regOne!4147 (regex!1481 (h!12737 rules!1357))))) b!686081))

(assert (= (and b!685719 ((_ is Star!1817) (regOne!4147 (regex!1481 (h!12737 rules!1357))))) b!686082))

(assert (= (and b!685719 ((_ is Union!1817) (regOne!4147 (regex!1481 (h!12737 rules!1357))))) b!686083))

(declare-fun b!686086 () Bool)

(declare-fun e!430964 () Bool)

(declare-fun tp!203861 () Bool)

(assert (=> b!686086 (= e!430964 tp!203861)))

(declare-fun b!686085 () Bool)

(declare-fun tp!203862 () Bool)

(declare-fun tp!203863 () Bool)

(assert (=> b!686085 (= e!430964 (and tp!203862 tp!203863))))

(declare-fun b!686084 () Bool)

(assert (=> b!686084 (= e!430964 tp_is_empty!3635)))

(assert (=> b!685719 (= tp!203541 e!430964)))

(declare-fun b!686087 () Bool)

(declare-fun tp!203864 () Bool)

(declare-fun tp!203860 () Bool)

(assert (=> b!686087 (= e!430964 (and tp!203864 tp!203860))))

(assert (= (and b!685719 ((_ is ElementMatch!1817) (regTwo!4147 (regex!1481 (h!12737 rules!1357))))) b!686084))

(assert (= (and b!685719 ((_ is Concat!3342) (regTwo!4147 (regex!1481 (h!12737 rules!1357))))) b!686085))

(assert (= (and b!685719 ((_ is Star!1817) (regTwo!4147 (regex!1481 (h!12737 rules!1357))))) b!686086))

(assert (= (and b!685719 ((_ is Union!1817) (regTwo!4147 (regex!1481 (h!12737 rules!1357))))) b!686087))

(declare-fun b!686088 () Bool)

(declare-fun e!430965 () Bool)

(declare-fun tp!203865 () Bool)

(declare-fun tp!203866 () Bool)

(assert (=> b!686088 (= e!430965 (and tp!203865 tp!203866))))

(assert (=> b!685789 (= tp!203632 e!430965)))

(assert (= (and b!685789 ((_ is Cons!7337) (exprs!727 (_2!4226 (_1!4227 (h!12740 mapValue!2875)))))) b!686088))

(declare-fun b!686091 () Bool)

(declare-fun e!430966 () Bool)

(declare-fun tp!203868 () Bool)

(assert (=> b!686091 (= e!430966 tp!203868)))

(declare-fun b!686090 () Bool)

(declare-fun tp!203869 () Bool)

(declare-fun tp!203870 () Bool)

(assert (=> b!686090 (= e!430966 (and tp!203869 tp!203870))))

(declare-fun b!686089 () Bool)

(assert (=> b!686089 (= e!430966 tp_is_empty!3635)))

(assert (=> b!685700 (= tp!203525 e!430966)))

(declare-fun b!686092 () Bool)

(declare-fun tp!203871 () Bool)

(declare-fun tp!203867 () Bool)

(assert (=> b!686092 (= e!430966 (and tp!203871 tp!203867))))

(assert (= (and b!685700 ((_ is ElementMatch!1817) (_1!4226 (_1!4227 (h!12740 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))))) b!686089))

(assert (= (and b!685700 ((_ is Concat!3342) (_1!4226 (_1!4227 (h!12740 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))))) b!686090))

(assert (= (and b!685700 ((_ is Star!1817) (_1!4226 (_1!4227 (h!12740 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))))) b!686091))

(assert (= (and b!685700 ((_ is Union!1817) (_1!4226 (_1!4227 (h!12740 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))))) b!686092))

(declare-fun e!430969 () Bool)

(assert (=> b!685700 (= tp!203521 e!430969)))

(declare-fun tp!203872 () Bool)

(declare-fun setRes!3358 () Bool)

(declare-fun b!686093 () Bool)

(declare-fun tp!203876 () Bool)

(declare-fun e!430967 () Bool)

(assert (=> b!686093 (= e!430969 (and tp!203876 (inv!9447 (_2!4226 (_1!4227 (h!12740 (t!87149 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))))) e!430967 tp_is_empty!3635 setRes!3358 tp!203872))))

(declare-fun condSetEmpty!3358 () Bool)

(assert (=> b!686093 (= condSetEmpty!3358 (= (_2!4227 (h!12740 (t!87149 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686094 () Bool)

(declare-fun tp!203873 () Bool)

(assert (=> b!686094 (= e!430967 tp!203873)))

(declare-fun b!686095 () Bool)

(declare-fun e!430968 () Bool)

(declare-fun tp!203874 () Bool)

(assert (=> b!686095 (= e!430968 tp!203874)))

(declare-fun setIsEmpty!3358 () Bool)

(assert (=> setIsEmpty!3358 setRes!3358))

(declare-fun setNonEmpty!3358 () Bool)

(declare-fun tp!203875 () Bool)

(declare-fun setElem!3358 () Context!454)

(assert (=> setNonEmpty!3358 (= setRes!3358 (and tp!203875 (inv!9447 setElem!3358) e!430968))))

(declare-fun setRest!3358 () (InoxSet Context!454))

(assert (=> setNonEmpty!3358 (= (_2!4227 (h!12740 (t!87149 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3358 true) setRest!3358))))

(assert (= b!686093 b!686094))

(assert (= (and b!686093 condSetEmpty!3358) setIsEmpty!3358))

(assert (= (and b!686093 (not condSetEmpty!3358)) setNonEmpty!3358))

(assert (= setNonEmpty!3358 b!686095))

(assert (= (and b!685700 ((_ is Cons!7339) (t!87149 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470))))))))) b!686093))

(declare-fun m!942778 () Bool)

(assert (=> b!686093 m!942778))

(declare-fun m!942780 () Bool)

(assert (=> setNonEmpty!3358 m!942780))

(declare-fun b!686098 () Bool)

(declare-fun e!430970 () Bool)

(declare-fun tp!203878 () Bool)

(assert (=> b!686098 (= e!430970 tp!203878)))

(declare-fun b!686097 () Bool)

(declare-fun tp!203879 () Bool)

(declare-fun tp!203880 () Bool)

(assert (=> b!686097 (= e!430970 (and tp!203879 tp!203880))))

(declare-fun b!686096 () Bool)

(assert (=> b!686096 (= e!430970 tp_is_empty!3635)))

(assert (=> b!685786 (= tp!203630 e!430970)))

(declare-fun b!686099 () Bool)

(declare-fun tp!203881 () Bool)

(declare-fun tp!203877 () Bool)

(assert (=> b!686099 (= e!430970 (and tp!203881 tp!203877))))

(assert (= (and b!685786 ((_ is ElementMatch!1817) (_1!4226 (_1!4227 (h!12740 mapValue!2878))))) b!686096))

(assert (= (and b!685786 ((_ is Concat!3342) (_1!4226 (_1!4227 (h!12740 mapValue!2878))))) b!686097))

(assert (= (and b!685786 ((_ is Star!1817) (_1!4226 (_1!4227 (h!12740 mapValue!2878))))) b!686098))

(assert (= (and b!685786 ((_ is Union!1817) (_1!4226 (_1!4227 (h!12740 mapValue!2878))))) b!686099))

(declare-fun e!430973 () Bool)

(assert (=> b!685786 (= tp!203623 e!430973)))

(declare-fun tp!203886 () Bool)

(declare-fun tp!203882 () Bool)

(declare-fun b!686100 () Bool)

(declare-fun e!430971 () Bool)

(declare-fun setRes!3359 () Bool)

(assert (=> b!686100 (= e!430973 (and tp!203886 (inv!9447 (_2!4226 (_1!4227 (h!12740 (t!87149 mapValue!2878))))) e!430971 tp_is_empty!3635 setRes!3359 tp!203882))))

(declare-fun condSetEmpty!3359 () Bool)

(assert (=> b!686100 (= condSetEmpty!3359 (= (_2!4227 (h!12740 (t!87149 mapValue!2878))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686101 () Bool)

(declare-fun tp!203883 () Bool)

(assert (=> b!686101 (= e!430971 tp!203883)))

(declare-fun b!686102 () Bool)

(declare-fun e!430972 () Bool)

(declare-fun tp!203884 () Bool)

(assert (=> b!686102 (= e!430972 tp!203884)))

(declare-fun setIsEmpty!3359 () Bool)

(assert (=> setIsEmpty!3359 setRes!3359))

(declare-fun setElem!3359 () Context!454)

(declare-fun tp!203885 () Bool)

(declare-fun setNonEmpty!3359 () Bool)

(assert (=> setNonEmpty!3359 (= setRes!3359 (and tp!203885 (inv!9447 setElem!3359) e!430972))))

(declare-fun setRest!3359 () (InoxSet Context!454))

(assert (=> setNonEmpty!3359 (= (_2!4227 (h!12740 (t!87149 mapValue!2878))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3359 true) setRest!3359))))

(assert (= b!686100 b!686101))

(assert (= (and b!686100 condSetEmpty!3359) setIsEmpty!3359))

(assert (= (and b!686100 (not condSetEmpty!3359)) setNonEmpty!3359))

(assert (= setNonEmpty!3359 b!686102))

(assert (= (and b!685786 ((_ is Cons!7339) (t!87149 mapValue!2878))) b!686100))

(declare-fun m!942782 () Bool)

(assert (=> b!686100 m!942782))

(declare-fun m!942784 () Bool)

(assert (=> setNonEmpty!3359 m!942784))

(declare-fun b!686103 () Bool)

(declare-fun e!430974 () Bool)

(declare-fun tp!203887 () Bool)

(declare-fun tp!203888 () Bool)

(assert (=> b!686103 (= e!430974 (and tp!203887 tp!203888))))

(assert (=> b!685730 (= tp!203557 e!430974)))

(assert (= (and b!685730 ((_ is Cons!7337) (exprs!727 (_1!4228 (_1!4229 (h!12741 (zeroValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457)))))))))))) b!686103))

(declare-fun e!430977 () Bool)

(assert (=> b!685812 (= tp!203664 e!430977)))

(declare-fun b!686104 () Bool)

(declare-fun e!430976 () Bool)

(declare-fun tp!203891 () Bool)

(assert (=> b!686104 (= e!430976 tp!203891)))

(declare-fun tp!203889 () Bool)

(declare-fun setElem!3360 () Context!454)

(declare-fun setNonEmpty!3360 () Bool)

(declare-fun setRes!3360 () Bool)

(assert (=> setNonEmpty!3360 (= setRes!3360 (and tp!203889 (inv!9447 setElem!3360) e!430976))))

(declare-fun setRest!3360 () (InoxSet Context!454))

(assert (=> setNonEmpty!3360 (= (_2!4229 (h!12741 (t!87150 mapValue!2874))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3360 true) setRest!3360))))

(declare-fun setIsEmpty!3360 () Bool)

(assert (=> setIsEmpty!3360 setRes!3360))

(declare-fun b!686105 () Bool)

(declare-fun e!430975 () Bool)

(declare-fun tp!203890 () Bool)

(assert (=> b!686105 (= e!430977 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 (t!87150 mapValue!2874))))) e!430975 tp_is_empty!3635 setRes!3360 tp!203890))))

(declare-fun condSetEmpty!3360 () Bool)

(assert (=> b!686105 (= condSetEmpty!3360 (= (_2!4229 (h!12741 (t!87150 mapValue!2874))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686106 () Bool)

(declare-fun tp!203892 () Bool)

(assert (=> b!686106 (= e!430975 tp!203892)))

(assert (= b!686105 b!686106))

(assert (= (and b!686105 condSetEmpty!3360) setIsEmpty!3360))

(assert (= (and b!686105 (not condSetEmpty!3360)) setNonEmpty!3360))

(assert (= setNonEmpty!3360 b!686104))

(assert (= (and b!685812 ((_ is Cons!7340) (t!87150 mapValue!2874))) b!686105))

(declare-fun m!942786 () Bool)

(assert (=> setNonEmpty!3360 m!942786))

(declare-fun m!942788 () Bool)

(assert (=> b!686105 m!942788))

(declare-fun mapIsEmpty!2886 () Bool)

(declare-fun mapRes!2886 () Bool)

(assert (=> mapIsEmpty!2886 mapRes!2886))

(declare-fun b!686107 () Bool)

(declare-fun e!430980 () Bool)

(declare-fun setRes!3362 () Bool)

(declare-fun tp!203899 () Bool)

(assert (=> b!686107 (= e!430980 (and setRes!3362 tp!203899))))

(declare-fun condSetEmpty!3362 () Bool)

(declare-fun mapValue!2886 () List!7352)

(assert (=> b!686107 (= condSetEmpty!3362 (= (_1!4224 (_1!4225 (h!12739 mapValue!2886))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686108 () Bool)

(declare-fun e!430979 () Bool)

(declare-fun setRes!3361 () Bool)

(declare-fun tp!203897 () Bool)

(assert (=> b!686108 (= e!430979 (and setRes!3361 tp!203897))))

(declare-fun condSetEmpty!3361 () Bool)

(declare-fun mapDefault!2886 () List!7352)

(assert (=> b!686108 (= condSetEmpty!3361 (= (_1!4224 (_1!4225 (h!12739 mapDefault!2886))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun setElem!3362 () Context!454)

(declare-fun tp!203898 () Bool)

(declare-fun e!430978 () Bool)

(declare-fun setNonEmpty!3361 () Bool)

(assert (=> setNonEmpty!3361 (= setRes!3362 (and tp!203898 (inv!9447 setElem!3362) e!430978))))

(declare-fun setRest!3362 () (InoxSet Context!454))

(assert (=> setNonEmpty!3361 (= (_1!4224 (_1!4225 (h!12739 mapValue!2886))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3362 true) setRest!3362))))

(declare-fun condMapEmpty!2886 () Bool)

(assert (=> mapNonEmpty!2884 (= condMapEmpty!2886 (= mapRest!2884 ((as const (Array (_ BitVec 32) List!7352)) mapDefault!2886)))))

(assert (=> mapNonEmpty!2884 (= tp!203691 (and e!430979 mapRes!2886))))

(declare-fun b!686109 () Bool)

(declare-fun tp!203894 () Bool)

(assert (=> b!686109 (= e!430978 tp!203894)))

(declare-fun mapNonEmpty!2886 () Bool)

(declare-fun tp!203895 () Bool)

(assert (=> mapNonEmpty!2886 (= mapRes!2886 (and tp!203895 e!430980))))

(declare-fun mapKey!2886 () (_ BitVec 32))

(declare-fun mapRest!2886 () (Array (_ BitVec 32) List!7352))

(assert (=> mapNonEmpty!2886 (= mapRest!2884 (store mapRest!2886 mapKey!2886 mapValue!2886))))

(declare-fun b!686110 () Bool)

(declare-fun e!430981 () Bool)

(declare-fun tp!203896 () Bool)

(assert (=> b!686110 (= e!430981 tp!203896)))

(declare-fun setIsEmpty!3361 () Bool)

(assert (=> setIsEmpty!3361 setRes!3362))

(declare-fun tp!203893 () Bool)

(declare-fun setElem!3361 () Context!454)

(declare-fun setNonEmpty!3362 () Bool)

(assert (=> setNonEmpty!3362 (= setRes!3361 (and tp!203893 (inv!9447 setElem!3361) e!430981))))

(declare-fun setRest!3361 () (InoxSet Context!454))

(assert (=> setNonEmpty!3362 (= (_1!4224 (_1!4225 (h!12739 mapDefault!2886))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3361 true) setRest!3361))))

(declare-fun setIsEmpty!3362 () Bool)

(assert (=> setIsEmpty!3362 setRes!3361))

(assert (= (and mapNonEmpty!2884 condMapEmpty!2886) mapIsEmpty!2886))

(assert (= (and mapNonEmpty!2884 (not condMapEmpty!2886)) mapNonEmpty!2886))

(assert (= (and b!686107 condSetEmpty!3362) setIsEmpty!3361))

(assert (= (and b!686107 (not condSetEmpty!3362)) setNonEmpty!3361))

(assert (= setNonEmpty!3361 b!686109))

(assert (= (and mapNonEmpty!2886 ((_ is Cons!7338) mapValue!2886)) b!686107))

(assert (= (and b!686108 condSetEmpty!3361) setIsEmpty!3362))

(assert (= (and b!686108 (not condSetEmpty!3361)) setNonEmpty!3362))

(assert (= setNonEmpty!3362 b!686110))

(assert (= (and mapNonEmpty!2884 ((_ is Cons!7338) mapDefault!2886)) b!686108))

(declare-fun m!942790 () Bool)

(assert (=> setNonEmpty!3361 m!942790))

(declare-fun m!942792 () Bool)

(assert (=> mapNonEmpty!2886 m!942792))

(declare-fun m!942794 () Bool)

(assert (=> setNonEmpty!3362 m!942794))

(declare-fun b!686111 () Bool)

(declare-fun e!430982 () Bool)

(declare-fun tp!203900 () Bool)

(declare-fun tp!203901 () Bool)

(assert (=> b!686111 (= e!430982 (and tp!203900 tp!203901))))

(assert (=> b!685815 (= tp!203668 e!430982)))

(assert (= (and b!685815 ((_ is Cons!7337) (exprs!727 (_2!4226 (_1!4227 (h!12740 mapDefault!2874)))))) b!686111))

(declare-fun e!430985 () Bool)

(assert (=> b!685732 (= tp!203559 e!430985)))

(declare-fun b!686112 () Bool)

(declare-fun e!430984 () Bool)

(declare-fun tp!203904 () Bool)

(assert (=> b!686112 (= e!430984 tp!203904)))

(declare-fun setRes!3363 () Bool)

(declare-fun setNonEmpty!3363 () Bool)

(declare-fun setElem!3363 () Context!454)

(declare-fun tp!203902 () Bool)

(assert (=> setNonEmpty!3363 (= setRes!3363 (and tp!203902 (inv!9447 setElem!3363) e!430984))))

(declare-fun setRest!3363 () (InoxSet Context!454))

(assert (=> setNonEmpty!3363 (= (_2!4229 (h!12741 (t!87150 (minValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3363 true) setRest!3363))))

(declare-fun setIsEmpty!3363 () Bool)

(assert (=> setIsEmpty!3363 setRes!3363))

(declare-fun tp!203903 () Bool)

(declare-fun b!686113 () Bool)

(declare-fun e!430983 () Bool)

(assert (=> b!686113 (= e!430985 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 (t!87150 (minValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))))))) e!430983 tp_is_empty!3635 setRes!3363 tp!203903))))

(declare-fun condSetEmpty!3363 () Bool)

(assert (=> b!686113 (= condSetEmpty!3363 (= (_2!4229 (h!12741 (t!87150 (minValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686114 () Bool)

(declare-fun tp!203905 () Bool)

(assert (=> b!686114 (= e!430983 tp!203905)))

(assert (= b!686113 b!686114))

(assert (= (and b!686113 condSetEmpty!3363) setIsEmpty!3363))

(assert (= (and b!686113 (not condSetEmpty!3363)) setNonEmpty!3363))

(assert (= setNonEmpty!3363 b!686112))

(assert (= (and b!685732 ((_ is Cons!7340) (t!87150 (minValue!981 (v!17555 (underlying!1631 (v!17556 (underlying!1632 (cache!1083 cacheUp!457))))))))) b!686113))

(declare-fun m!942796 () Bool)

(assert (=> setNonEmpty!3363 m!942796))

(declare-fun m!942798 () Bool)

(assert (=> b!686113 m!942798))

(declare-fun condSetEmpty!3364 () Bool)

(assert (=> setNonEmpty!3323 (= condSetEmpty!3364 (= setRest!3323 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3364 () Bool)

(assert (=> setNonEmpty!3323 (= tp!203663 setRes!3364)))

(declare-fun setIsEmpty!3364 () Bool)

(assert (=> setIsEmpty!3364 setRes!3364))

(declare-fun setNonEmpty!3364 () Bool)

(declare-fun tp!203906 () Bool)

(declare-fun e!430986 () Bool)

(declare-fun setElem!3364 () Context!454)

(assert (=> setNonEmpty!3364 (= setRes!3364 (and tp!203906 (inv!9447 setElem!3364) e!430986))))

(declare-fun setRest!3364 () (InoxSet Context!454))

(assert (=> setNonEmpty!3364 (= setRest!3323 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3364 true) setRest!3364))))

(declare-fun b!686115 () Bool)

(declare-fun tp!203907 () Bool)

(assert (=> b!686115 (= e!430986 tp!203907)))

(assert (= (and setNonEmpty!3323 condSetEmpty!3364) setIsEmpty!3364))

(assert (= (and setNonEmpty!3323 (not condSetEmpty!3364)) setNonEmpty!3364))

(assert (= setNonEmpty!3364 b!686115))

(declare-fun m!942800 () Bool)

(assert (=> setNonEmpty!3364 m!942800))

(declare-fun condSetEmpty!3365 () Bool)

(assert (=> setNonEmpty!3309 (= condSetEmpty!3365 (= setRest!3309 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3365 () Bool)

(assert (=> setNonEmpty!3309 (= tp!203596 setRes!3365)))

(declare-fun setIsEmpty!3365 () Bool)

(assert (=> setIsEmpty!3365 setRes!3365))

(declare-fun tp!203908 () Bool)

(declare-fun e!430987 () Bool)

(declare-fun setElem!3365 () Context!454)

(declare-fun setNonEmpty!3365 () Bool)

(assert (=> setNonEmpty!3365 (= setRes!3365 (and tp!203908 (inv!9447 setElem!3365) e!430987))))

(declare-fun setRest!3365 () (InoxSet Context!454))

(assert (=> setNonEmpty!3365 (= setRest!3309 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3365 true) setRest!3365))))

(declare-fun b!686116 () Bool)

(declare-fun tp!203909 () Bool)

(assert (=> b!686116 (= e!430987 tp!203909)))

(assert (= (and setNonEmpty!3309 condSetEmpty!3365) setIsEmpty!3365))

(assert (= (and setNonEmpty!3309 (not condSetEmpty!3365)) setNonEmpty!3365))

(assert (= setNonEmpty!3365 b!686116))

(declare-fun m!942802 () Bool)

(assert (=> setNonEmpty!3365 m!942802))

(declare-fun b!686117 () Bool)

(declare-fun e!430992 () Bool)

(declare-fun tp!203917 () Bool)

(assert (=> b!686117 (= e!430992 tp!203917)))

(declare-fun setIsEmpty!3366 () Bool)

(declare-fun setRes!3366 () Bool)

(assert (=> setIsEmpty!3366 setRes!3366))

(declare-fun b!686118 () Bool)

(declare-fun e!430989 () Bool)

(declare-fun tp!203912 () Bool)

(assert (=> b!686118 (= e!430989 tp!203912)))

(declare-fun b!686119 () Bool)

(declare-fun e!430991 () Bool)

(declare-fun tp!203916 () Bool)

(assert (=> b!686119 (= e!430991 tp!203916)))

(declare-fun setIsEmpty!3367 () Bool)

(declare-fun setRes!3367 () Bool)

(assert (=> setIsEmpty!3367 setRes!3367))

(declare-fun tp!203914 () Bool)

(declare-fun mapDefault!2887 () List!7353)

(declare-fun b!686120 () Bool)

(declare-fun e!430988 () Bool)

(declare-fun tp!203911 () Bool)

(assert (=> b!686120 (= e!430988 (and tp!203911 (inv!9447 (_2!4226 (_1!4227 (h!12740 mapDefault!2887)))) e!430991 tp_is_empty!3635 setRes!3366 tp!203914))))

(declare-fun condSetEmpty!3366 () Bool)

(assert (=> b!686120 (= condSetEmpty!3366 (= (_2!4227 (h!12740 mapDefault!2887)) ((as const (Array Context!454 Bool)) false)))))

(declare-fun condMapEmpty!2887 () Bool)

(assert (=> mapNonEmpty!2878 (= condMapEmpty!2887 (= mapRest!2878 ((as const (Array (_ BitVec 32) List!7353)) mapDefault!2887)))))

(declare-fun mapRes!2887 () Bool)

(assert (=> mapNonEmpty!2878 (= tp!203628 (and e!430988 mapRes!2887))))

(declare-fun mapNonEmpty!2887 () Bool)

(declare-fun tp!203918 () Bool)

(declare-fun e!430993 () Bool)

(assert (=> mapNonEmpty!2887 (= mapRes!2887 (and tp!203918 e!430993))))

(declare-fun mapValue!2887 () List!7353)

(declare-fun mapRest!2887 () (Array (_ BitVec 32) List!7353))

(declare-fun mapKey!2887 () (_ BitVec 32))

(assert (=> mapNonEmpty!2887 (= mapRest!2878 (store mapRest!2887 mapKey!2887 mapValue!2887))))

(declare-fun mapIsEmpty!2887 () Bool)

(assert (=> mapIsEmpty!2887 mapRes!2887))

(declare-fun tp!203910 () Bool)

(declare-fun setElem!3366 () Context!454)

(declare-fun setNonEmpty!3366 () Bool)

(assert (=> setNonEmpty!3366 (= setRes!3366 (and tp!203910 (inv!9447 setElem!3366) e!430992))))

(declare-fun setRest!3366 () (InoxSet Context!454))

(assert (=> setNonEmpty!3366 (= (_2!4227 (h!12740 mapDefault!2887)) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3366 true) setRest!3366))))

(declare-fun setElem!3367 () Context!454)

(declare-fun e!430990 () Bool)

(declare-fun setNonEmpty!3367 () Bool)

(declare-fun tp!203919 () Bool)

(assert (=> setNonEmpty!3367 (= setRes!3367 (and tp!203919 (inv!9447 setElem!3367) e!430990))))

(declare-fun setRest!3367 () (InoxSet Context!454))

(assert (=> setNonEmpty!3367 (= (_2!4227 (h!12740 mapValue!2887)) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3367 true) setRest!3367))))

(declare-fun tp!203913 () Bool)

(declare-fun b!686121 () Bool)

(declare-fun tp!203920 () Bool)

(assert (=> b!686121 (= e!430993 (and tp!203920 (inv!9447 (_2!4226 (_1!4227 (h!12740 mapValue!2887)))) e!430989 tp_is_empty!3635 setRes!3367 tp!203913))))

(declare-fun condSetEmpty!3367 () Bool)

(assert (=> b!686121 (= condSetEmpty!3367 (= (_2!4227 (h!12740 mapValue!2887)) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686122 () Bool)

(declare-fun tp!203915 () Bool)

(assert (=> b!686122 (= e!430990 tp!203915)))

(assert (= (and mapNonEmpty!2878 condMapEmpty!2887) mapIsEmpty!2887))

(assert (= (and mapNonEmpty!2878 (not condMapEmpty!2887)) mapNonEmpty!2887))

(assert (= b!686121 b!686118))

(assert (= (and b!686121 condSetEmpty!3367) setIsEmpty!3367))

(assert (= (and b!686121 (not condSetEmpty!3367)) setNonEmpty!3367))

(assert (= setNonEmpty!3367 b!686122))

(assert (= (and mapNonEmpty!2887 ((_ is Cons!7339) mapValue!2887)) b!686121))

(assert (= b!686120 b!686119))

(assert (= (and b!686120 condSetEmpty!3366) setIsEmpty!3366))

(assert (= (and b!686120 (not condSetEmpty!3366)) setNonEmpty!3366))

(assert (= setNonEmpty!3366 b!686117))

(assert (= (and mapNonEmpty!2878 ((_ is Cons!7339) mapDefault!2887)) b!686120))

(declare-fun m!942804 () Bool)

(assert (=> b!686120 m!942804))

(declare-fun m!942806 () Bool)

(assert (=> setNonEmpty!3367 m!942806))

(declare-fun m!942808 () Bool)

(assert (=> b!686121 m!942808))

(declare-fun m!942810 () Bool)

(assert (=> setNonEmpty!3366 m!942810))

(declare-fun m!942812 () Bool)

(assert (=> mapNonEmpty!2887 m!942812))

(declare-fun b!686123 () Bool)

(declare-fun e!430994 () Bool)

(declare-fun tp!203921 () Bool)

(declare-fun tp!203922 () Bool)

(assert (=> b!686123 (= e!430994 (and tp!203921 tp!203922))))

(assert (=> b!685835 (= tp!203696 e!430994)))

(assert (= (and b!685835 ((_ is Cons!7337) (exprs!727 setElem!3331))) b!686123))

(declare-fun b!686124 () Bool)

(declare-fun e!430995 () Bool)

(declare-fun tp!203923 () Bool)

(declare-fun tp!203924 () Bool)

(assert (=> b!686124 (= e!430995 (and tp!203923 tp!203924))))

(assert (=> b!685743 (= tp!203571 e!430995)))

(assert (= (and b!685743 ((_ is Cons!7337) (exprs!727 setElem!3308))) b!686124))

(declare-fun e!430998 () Bool)

(assert (=> b!685837 (= tp!203700 e!430998)))

(declare-fun b!686125 () Bool)

(declare-fun e!430997 () Bool)

(declare-fun tp!203927 () Bool)

(assert (=> b!686125 (= e!430997 tp!203927)))

(declare-fun setRes!3368 () Bool)

(declare-fun setElem!3368 () Context!454)

(declare-fun setNonEmpty!3368 () Bool)

(declare-fun tp!203925 () Bool)

(assert (=> setNonEmpty!3368 (= setRes!3368 (and tp!203925 (inv!9447 setElem!3368) e!430997))))

(declare-fun setRest!3368 () (InoxSet Context!454))

(assert (=> setNonEmpty!3368 (= (_2!4229 (h!12741 (t!87150 mapDefault!2873))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3368 true) setRest!3368))))

(declare-fun setIsEmpty!3368 () Bool)

(assert (=> setIsEmpty!3368 setRes!3368))

(declare-fun b!686126 () Bool)

(declare-fun e!430996 () Bool)

(declare-fun tp!203926 () Bool)

(assert (=> b!686126 (= e!430998 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 (t!87150 mapDefault!2873))))) e!430996 tp_is_empty!3635 setRes!3368 tp!203926))))

(declare-fun condSetEmpty!3368 () Bool)

(assert (=> b!686126 (= condSetEmpty!3368 (= (_2!4229 (h!12741 (t!87150 mapDefault!2873))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686127 () Bool)

(declare-fun tp!203928 () Bool)

(assert (=> b!686127 (= e!430996 tp!203928)))

(assert (= b!686126 b!686127))

(assert (= (and b!686126 condSetEmpty!3368) setIsEmpty!3368))

(assert (= (and b!686126 (not condSetEmpty!3368)) setNonEmpty!3368))

(assert (= setNonEmpty!3368 b!686125))

(assert (= (and b!685837 ((_ is Cons!7340) (t!87150 mapDefault!2873))) b!686126))

(declare-fun m!942814 () Bool)

(assert (=> setNonEmpty!3368 m!942814))

(declare-fun m!942816 () Bool)

(assert (=> b!686126 m!942816))

(declare-fun e!431000 () Bool)

(assert (=> b!685766 (= tp!203597 e!431000)))

(declare-fun b!686128 () Bool)

(declare-fun setRes!3369 () Bool)

(declare-fun tp!203931 () Bool)

(assert (=> b!686128 (= e!431000 (and setRes!3369 tp!203931))))

(declare-fun condSetEmpty!3369 () Bool)

(assert (=> b!686128 (= condSetEmpty!3369 (= (_1!4224 (_1!4225 (h!12739 (t!87148 mapDefault!2875)))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun setIsEmpty!3369 () Bool)

(assert (=> setIsEmpty!3369 setRes!3369))

(declare-fun b!686129 () Bool)

(declare-fun e!430999 () Bool)

(declare-fun tp!203929 () Bool)

(assert (=> b!686129 (= e!430999 tp!203929)))

(declare-fun setNonEmpty!3369 () Bool)

(declare-fun tp!203930 () Bool)

(declare-fun setElem!3369 () Context!454)

(assert (=> setNonEmpty!3369 (= setRes!3369 (and tp!203930 (inv!9447 setElem!3369) e!430999))))

(declare-fun setRest!3369 () (InoxSet Context!454))

(assert (=> setNonEmpty!3369 (= (_1!4224 (_1!4225 (h!12739 (t!87148 mapDefault!2875)))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3369 true) setRest!3369))))

(assert (= (and b!686128 condSetEmpty!3369) setIsEmpty!3369))

(assert (= (and b!686128 (not condSetEmpty!3369)) setNonEmpty!3369))

(assert (= setNonEmpty!3369 b!686129))

(assert (= (and b!685766 ((_ is Cons!7338) (t!87148 mapDefault!2875))) b!686128))

(declare-fun m!942818 () Bool)

(assert (=> setNonEmpty!3369 m!942818))

(declare-fun condSetEmpty!3370 () Bool)

(assert (=> setNonEmpty!3322 (= condSetEmpty!3370 (= setRest!3321 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3370 () Bool)

(assert (=> setNonEmpty!3322 (= tp!203662 setRes!3370)))

(declare-fun setIsEmpty!3370 () Bool)

(assert (=> setIsEmpty!3370 setRes!3370))

(declare-fun tp!203932 () Bool)

(declare-fun setElem!3370 () Context!454)

(declare-fun e!431001 () Bool)

(declare-fun setNonEmpty!3370 () Bool)

(assert (=> setNonEmpty!3370 (= setRes!3370 (and tp!203932 (inv!9447 setElem!3370) e!431001))))

(declare-fun setRest!3370 () (InoxSet Context!454))

(assert (=> setNonEmpty!3370 (= setRest!3321 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3370 true) setRest!3370))))

(declare-fun b!686130 () Bool)

(declare-fun tp!203933 () Bool)

(assert (=> b!686130 (= e!431001 tp!203933)))

(assert (= (and setNonEmpty!3322 condSetEmpty!3370) setIsEmpty!3370))

(assert (= (and setNonEmpty!3322 (not condSetEmpty!3370)) setNonEmpty!3370))

(assert (= setNonEmpty!3370 b!686130))

(declare-fun m!942820 () Bool)

(assert (=> setNonEmpty!3370 m!942820))

(declare-fun b!686131 () Bool)

(declare-fun e!431002 () Bool)

(declare-fun tp!203934 () Bool)

(declare-fun tp!203935 () Bool)

(assert (=> b!686131 (= e!431002 (and tp!203934 tp!203935))))

(assert (=> b!685810 (= tp!203661 e!431002)))

(assert (= (and b!685810 ((_ is Cons!7337) (exprs!727 (_1!4228 (_1!4229 (h!12741 mapDefault!2881)))))) b!686131))

(declare-fun b!686134 () Bool)

(declare-fun e!431003 () Bool)

(declare-fun tp!203937 () Bool)

(assert (=> b!686134 (= e!431003 tp!203937)))

(declare-fun b!686133 () Bool)

(declare-fun tp!203938 () Bool)

(declare-fun tp!203939 () Bool)

(assert (=> b!686133 (= e!431003 (and tp!203938 tp!203939))))

(declare-fun b!686132 () Bool)

(assert (=> b!686132 (= e!431003 tp_is_empty!3635)))

(assert (=> b!685753 (= tp!203582 e!431003)))

(declare-fun b!686135 () Bool)

(declare-fun tp!203940 () Bool)

(declare-fun tp!203936 () Bool)

(assert (=> b!686135 (= e!431003 (and tp!203940 tp!203936))))

(assert (= (and b!685753 ((_ is ElementMatch!1817) (regex!1481 (h!12737 (t!87146 rules!1357))))) b!686132))

(assert (= (and b!685753 ((_ is Concat!3342) (regex!1481 (h!12737 (t!87146 rules!1357))))) b!686133))

(assert (= (and b!685753 ((_ is Star!1817) (regex!1481 (h!12737 (t!87146 rules!1357))))) b!686134))

(assert (= (and b!685753 ((_ is Union!1817) (regex!1481 (h!12737 (t!87146 rules!1357))))) b!686135))

(declare-fun b!686136 () Bool)

(declare-fun e!431004 () Bool)

(declare-fun tp!203941 () Bool)

(declare-fun tp!203942 () Bool)

(assert (=> b!686136 (= e!431004 (and tp!203941 tp!203942))))

(assert (=> b!685728 (= tp!203556 e!431004)))

(assert (= (and b!685728 ((_ is Cons!7337) (exprs!727 setElem!3303))) b!686136))

(declare-fun condSetEmpty!3371 () Bool)

(assert (=> setNonEmpty!3329 (= condSetEmpty!3371 (= setRest!3330 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3371 () Bool)

(assert (=> setNonEmpty!3329 (= tp!203694 setRes!3371)))

(declare-fun setIsEmpty!3371 () Bool)

(assert (=> setIsEmpty!3371 setRes!3371))

(declare-fun tp!203943 () Bool)

(declare-fun setElem!3371 () Context!454)

(declare-fun e!431005 () Bool)

(declare-fun setNonEmpty!3371 () Bool)

(assert (=> setNonEmpty!3371 (= setRes!3371 (and tp!203943 (inv!9447 setElem!3371) e!431005))))

(declare-fun setRest!3371 () (InoxSet Context!454))

(assert (=> setNonEmpty!3371 (= setRest!3330 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3371 true) setRest!3371))))

(declare-fun b!686137 () Bool)

(declare-fun tp!203944 () Bool)

(assert (=> b!686137 (= e!431005 tp!203944)))

(assert (= (and setNonEmpty!3329 condSetEmpty!3371) setIsEmpty!3371))

(assert (= (and setNonEmpty!3329 (not condSetEmpty!3371)) setNonEmpty!3371))

(assert (= setNonEmpty!3371 b!686137))

(declare-fun m!942822 () Bool)

(assert (=> setNonEmpty!3371 m!942822))

(declare-fun condSetEmpty!3372 () Bool)

(assert (=> setNonEmpty!3304 (= condSetEmpty!3372 (= setRest!3304 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3372 () Bool)

(assert (=> setNonEmpty!3304 (= tp!203558 setRes!3372)))

(declare-fun setIsEmpty!3372 () Bool)

(assert (=> setIsEmpty!3372 setRes!3372))

(declare-fun setNonEmpty!3372 () Bool)

(declare-fun tp!203945 () Bool)

(declare-fun setElem!3372 () Context!454)

(declare-fun e!431006 () Bool)

(assert (=> setNonEmpty!3372 (= setRes!3372 (and tp!203945 (inv!9447 setElem!3372) e!431006))))

(declare-fun setRest!3372 () (InoxSet Context!454))

(assert (=> setNonEmpty!3372 (= setRest!3304 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3372 true) setRest!3372))))

(declare-fun b!686138 () Bool)

(declare-fun tp!203946 () Bool)

(assert (=> b!686138 (= e!431006 tp!203946)))

(assert (= (and setNonEmpty!3304 condSetEmpty!3372) setIsEmpty!3372))

(assert (= (and setNonEmpty!3304 (not condSetEmpty!3372)) setNonEmpty!3372))

(assert (= setNonEmpty!3372 b!686138))

(declare-fun m!942824 () Bool)

(assert (=> setNonEmpty!3372 m!942824))

(declare-fun b!686139 () Bool)

(declare-fun e!431007 () Bool)

(declare-fun tp!203947 () Bool)

(declare-fun tp!203948 () Bool)

(assert (=> b!686139 (= e!431007 (and tp!203947 tp!203948))))

(assert (=> b!685836 (= tp!203701 e!431007)))

(assert (= (and b!685836 ((_ is Cons!7337) (exprs!727 setElem!3332))) b!686139))

(declare-fun e!431010 () Bool)

(assert (=> b!685808 (= tp!203654 e!431010)))

(declare-fun b!686140 () Bool)

(declare-fun e!431009 () Bool)

(declare-fun tp!203951 () Bool)

(assert (=> b!686140 (= e!431009 tp!203951)))

(declare-fun tp!203949 () Bool)

(declare-fun setRes!3373 () Bool)

(declare-fun setElem!3373 () Context!454)

(declare-fun setNonEmpty!3373 () Bool)

(assert (=> setNonEmpty!3373 (= setRes!3373 (and tp!203949 (inv!9447 setElem!3373) e!431009))))

(declare-fun setRest!3373 () (InoxSet Context!454))

(assert (=> setNonEmpty!3373 (= (_2!4229 (h!12741 (t!87150 mapDefault!2881))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3373 true) setRest!3373))))

(declare-fun setIsEmpty!3373 () Bool)

(assert (=> setIsEmpty!3373 setRes!3373))

(declare-fun tp!203950 () Bool)

(declare-fun e!431008 () Bool)

(declare-fun b!686141 () Bool)

(assert (=> b!686141 (= e!431010 (and (inv!9447 (_1!4228 (_1!4229 (h!12741 (t!87150 mapDefault!2881))))) e!431008 tp_is_empty!3635 setRes!3373 tp!203950))))

(declare-fun condSetEmpty!3373 () Bool)

(assert (=> b!686141 (= condSetEmpty!3373 (= (_2!4229 (h!12741 (t!87150 mapDefault!2881))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686142 () Bool)

(declare-fun tp!203952 () Bool)

(assert (=> b!686142 (= e!431008 tp!203952)))

(assert (= b!686141 b!686142))

(assert (= (and b!686141 condSetEmpty!3373) setIsEmpty!3373))

(assert (= (and b!686141 (not condSetEmpty!3373)) setNonEmpty!3373))

(assert (= setNonEmpty!3373 b!686140))

(assert (= (and b!685808 ((_ is Cons!7340) (t!87150 mapDefault!2881))) b!686141))

(declare-fun m!942826 () Bool)

(assert (=> setNonEmpty!3373 m!942826))

(declare-fun m!942828 () Bool)

(assert (=> b!686141 m!942828))

(declare-fun b!686143 () Bool)

(declare-fun e!431011 () Bool)

(declare-fun tp!203953 () Bool)

(declare-fun tp!203954 () Bool)

(assert (=> b!686143 (= e!431011 (and tp!203953 tp!203954))))

(assert (=> b!685806 (= tp!203655 e!431011)))

(assert (= (and b!685806 ((_ is Cons!7337) (exprs!727 setElem!3321))) b!686143))

(declare-fun b!686144 () Bool)

(declare-fun e!431012 () Bool)

(declare-fun tp!203955 () Bool)

(declare-fun tp!203956 () Bool)

(assert (=> b!686144 (= e!431012 (and tp!203955 tp!203956))))

(assert (=> b!685790 (= tp!203633 e!431012)))

(assert (= (and b!685790 ((_ is Cons!7337) (exprs!727 setElem!3316))) b!686144))

(declare-fun condSetEmpty!3374 () Bool)

(assert (=> setNonEmpty!3316 (= condSetEmpty!3374 (= setRest!3316 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3374 () Bool)

(assert (=> setNonEmpty!3316 (= tp!203634 setRes!3374)))

(declare-fun setIsEmpty!3374 () Bool)

(assert (=> setIsEmpty!3374 setRes!3374))

(declare-fun tp!203957 () Bool)

(declare-fun setElem!3374 () Context!454)

(declare-fun setNonEmpty!3374 () Bool)

(declare-fun e!431013 () Bool)

(assert (=> setNonEmpty!3374 (= setRes!3374 (and tp!203957 (inv!9447 setElem!3374) e!431013))))

(declare-fun setRest!3374 () (InoxSet Context!454))

(assert (=> setNonEmpty!3374 (= setRest!3316 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3374 true) setRest!3374))))

(declare-fun b!686145 () Bool)

(declare-fun tp!203958 () Bool)

(assert (=> b!686145 (= e!431013 tp!203958)))

(assert (= (and setNonEmpty!3316 condSetEmpty!3374) setIsEmpty!3374))

(assert (= (and setNonEmpty!3316 (not condSetEmpty!3374)) setNonEmpty!3374))

(assert (= setNonEmpty!3374 b!686145))

(declare-fun m!942830 () Bool)

(assert (=> setNonEmpty!3374 m!942830))

(declare-fun b!686148 () Bool)

(declare-fun e!431014 () Bool)

(declare-fun tp!203960 () Bool)

(assert (=> b!686148 (= e!431014 tp!203960)))

(declare-fun b!686147 () Bool)

(declare-fun tp!203961 () Bool)

(declare-fun tp!203962 () Bool)

(assert (=> b!686147 (= e!431014 (and tp!203961 tp!203962))))

(declare-fun b!686146 () Bool)

(assert (=> b!686146 (= e!431014 tp_is_empty!3635)))

(assert (=> b!685788 (= tp!203635 e!431014)))

(declare-fun b!686149 () Bool)

(declare-fun tp!203963 () Bool)

(declare-fun tp!203959 () Bool)

(assert (=> b!686149 (= e!431014 (and tp!203963 tp!203959))))

(assert (= (and b!685788 ((_ is ElementMatch!1817) (_1!4226 (_1!4227 (h!12740 mapValue!2875))))) b!686146))

(assert (= (and b!685788 ((_ is Concat!3342) (_1!4226 (_1!4227 (h!12740 mapValue!2875))))) b!686147))

(assert (= (and b!685788 ((_ is Star!1817) (_1!4226 (_1!4227 (h!12740 mapValue!2875))))) b!686148))

(assert (= (and b!685788 ((_ is Union!1817) (_1!4226 (_1!4227 (h!12740 mapValue!2875))))) b!686149))

(declare-fun e!431017 () Bool)

(assert (=> b!685788 (= tp!203631 e!431017)))

(declare-fun setRes!3375 () Bool)

(declare-fun tp!203968 () Bool)

(declare-fun b!686150 () Bool)

(declare-fun tp!203964 () Bool)

(declare-fun e!431015 () Bool)

(assert (=> b!686150 (= e!431017 (and tp!203968 (inv!9447 (_2!4226 (_1!4227 (h!12740 (t!87149 mapValue!2875))))) e!431015 tp_is_empty!3635 setRes!3375 tp!203964))))

(declare-fun condSetEmpty!3375 () Bool)

(assert (=> b!686150 (= condSetEmpty!3375 (= (_2!4227 (h!12740 (t!87149 mapValue!2875))) ((as const (Array Context!454 Bool)) false)))))

(declare-fun b!686151 () Bool)

(declare-fun tp!203965 () Bool)

(assert (=> b!686151 (= e!431015 tp!203965)))

(declare-fun b!686152 () Bool)

(declare-fun e!431016 () Bool)

(declare-fun tp!203966 () Bool)

(assert (=> b!686152 (= e!431016 tp!203966)))

(declare-fun setIsEmpty!3375 () Bool)

(assert (=> setIsEmpty!3375 setRes!3375))

(declare-fun setNonEmpty!3375 () Bool)

(declare-fun tp!203967 () Bool)

(declare-fun setElem!3375 () Context!454)

(assert (=> setNonEmpty!3375 (= setRes!3375 (and tp!203967 (inv!9447 setElem!3375) e!431016))))

(declare-fun setRest!3375 () (InoxSet Context!454))

(assert (=> setNonEmpty!3375 (= (_2!4227 (h!12740 (t!87149 mapValue!2875))) ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3375 true) setRest!3375))))

(assert (= b!686150 b!686151))

(assert (= (and b!686150 condSetEmpty!3375) setIsEmpty!3375))

(assert (= (and b!686150 (not condSetEmpty!3375)) setNonEmpty!3375))

(assert (= setNonEmpty!3375 b!686152))

(assert (= (and b!685788 ((_ is Cons!7339) (t!87149 mapValue!2875))) b!686150))

(declare-fun m!942832 () Bool)

(assert (=> b!686150 m!942832))

(declare-fun m!942834 () Bool)

(assert (=> setNonEmpty!3375 m!942834))

(declare-fun b!686153 () Bool)

(declare-fun e!431018 () Bool)

(declare-fun tp!203969 () Bool)

(declare-fun tp!203970 () Bool)

(assert (=> b!686153 (= e!431018 (and tp!203969 tp!203970))))

(assert (=> b!685701 (= tp!203522 e!431018)))

(assert (= (and b!685701 ((_ is Cons!7337) (exprs!727 (_2!4226 (_1!4227 (h!12740 (zeroValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))))))) b!686153))

(declare-fun b!686154 () Bool)

(declare-fun e!431019 () Bool)

(declare-fun tp!203971 () Bool)

(declare-fun tp!203972 () Bool)

(assert (=> b!686154 (= e!431019 (and tp!203971 tp!203972))))

(assert (=> b!685704 (= tp!203527 e!431019)))

(assert (= (and b!685704 ((_ is Cons!7337) (exprs!727 (_2!4226 (_1!4227 (h!12740 (minValue!980 (v!17553 (underlying!1629 (v!17554 (underlying!1630 (cache!1082 cacheDown!470)))))))))))) b!686154))

(declare-fun b!686157 () Bool)

(declare-fun e!431020 () Bool)

(declare-fun tp!203974 () Bool)

(assert (=> b!686157 (= e!431020 tp!203974)))

(declare-fun b!686156 () Bool)

(declare-fun tp!203975 () Bool)

(declare-fun tp!203976 () Bool)

(assert (=> b!686156 (= e!431020 (and tp!203975 tp!203976))))

(declare-fun b!686155 () Bool)

(assert (=> b!686155 (= e!431020 tp_is_empty!3635)))

(assert (=> b!685718 (= tp!203542 e!431020)))

(declare-fun b!686158 () Bool)

(declare-fun tp!203977 () Bool)

(declare-fun tp!203973 () Bool)

(assert (=> b!686158 (= e!431020 (and tp!203977 tp!203973))))

(assert (= (and b!685718 ((_ is ElementMatch!1817) (reg!2146 (regex!1481 (h!12737 rules!1357))))) b!686155))

(assert (= (and b!685718 ((_ is Concat!3342) (reg!2146 (regex!1481 (h!12737 rules!1357))))) b!686156))

(assert (= (and b!685718 ((_ is Star!1817) (reg!2146 (regex!1481 (h!12737 rules!1357))))) b!686157))

(assert (= (and b!685718 ((_ is Union!1817) (reg!2146 (regex!1481 (h!12737 rules!1357))))) b!686158))

(declare-fun condSetEmpty!3376 () Bool)

(assert (=> setNonEmpty!3315 (= condSetEmpty!3376 (= setRest!3315 ((as const (Array Context!454 Bool)) false)))))

(declare-fun setRes!3376 () Bool)

(assert (=> setNonEmpty!3315 (= tp!203629 setRes!3376)))

(declare-fun setIsEmpty!3376 () Bool)

(assert (=> setIsEmpty!3376 setRes!3376))

(declare-fun tp!203978 () Bool)

(declare-fun setElem!3376 () Context!454)

(declare-fun e!431021 () Bool)

(declare-fun setNonEmpty!3376 () Bool)

(assert (=> setNonEmpty!3376 (= setRes!3376 (and tp!203978 (inv!9447 setElem!3376) e!431021))))

(declare-fun setRest!3376 () (InoxSet Context!454))

(assert (=> setNonEmpty!3376 (= setRest!3315 ((_ map or) (store ((as const (Array Context!454 Bool)) false) setElem!3376 true) setRest!3376))))

(declare-fun b!686159 () Bool)

(declare-fun tp!203979 () Bool)

(assert (=> b!686159 (= e!431021 tp!203979)))

(assert (= (and setNonEmpty!3315 condSetEmpty!3376) setIsEmpty!3376))

(assert (= (and setNonEmpty!3315 (not condSetEmpty!3376)) setNonEmpty!3376))

(assert (= setNonEmpty!3376 b!686159))

(declare-fun m!942836 () Bool)

(assert (=> setNonEmpty!3376 m!942836))

(declare-fun b!686160 () Bool)

(declare-fun e!431022 () Bool)

(declare-fun tp!203980 () Bool)

(declare-fun tp!203981 () Bool)

(assert (=> b!686160 (= e!431022 (and tp!203980 tp!203981))))

(assert (=> b!685741 (= tp!203568 e!431022)))

(assert (= (and b!685741 ((_ is Cons!7337) (exprs!727 setElem!3307))) b!686160))

(declare-fun b!686161 () Bool)

(declare-fun e!431023 () Bool)

(declare-fun tp!203982 () Bool)

(declare-fun tp!203983 () Bool)

(assert (=> b!686161 (= e!431023 (and tp!203982 tp!203983))))

(assert (=> b!685787 (= tp!203625 e!431023)))

(assert (= (and b!685787 ((_ is Cons!7337) (exprs!727 setElem!3315))) b!686161))

(declare-fun b!686162 () Bool)

(declare-fun e!431024 () Bool)

(declare-fun tp!203984 () Bool)

(declare-fun tp!203985 () Bool)

(assert (=> b!686162 (= e!431024 (and tp!203984 tp!203985))))

(assert (=> b!685805 (= tp!203656 e!431024)))

(assert (= (and b!685805 ((_ is Cons!7337) (exprs!727 (_1!4228 (_1!4229 (h!12741 mapValue!2881)))))) b!686162))

(check-sat (not setNonEmpty!3337) (not setNonEmpty!3367) (not b!685845) (not d!231184) (not b!686120) (not d!231228) (not d!231148) (not setNonEmpty!3365) (not d!231224) (not b!685973) (not b!685863) b_and!63069 (not b!686114) (not b!686101) b_and!63079 (not b!686102) (not b!686040) (not b!686010) (not b!686098) (not b!686150) (not setNonEmpty!3366) (not setNonEmpty!3353) (not setNonEmpty!3348) (not b!686092) (not setNonEmpty!3359) (not b!686093) (not b!686121) (not b!686085) (not b!685992) (not d!231188) (not b_next!19347) (not b!686094) (not b!686143) (not setNonEmpty!3339) (not setNonEmpty!3341) (not b!686054) (not b_next!19337) (not b!686087) (not b!686117) (not setNonEmpty!3346) (not b!686091) (not b!686037) (not b_next!19341) (not b!686036) (not b!686119) (not b!686044) (not b!685840) (not d!231152) (not b!686033) (not d!231134) (not setNonEmpty!3370) (not b!686034) (not b!686125) (not d!231142) (not b!685914) b_and!63065 (not d!231116) (not setNonEmpty!3340) (not b!686047) (not d!231132) (not d!231204) (not b!685853) (not b!686065) (not b!685864) (not b!686074) (not b!686009) (not setNonEmpty!3355) b_and!63083 (not b!686028) (not b!686097) (not b!685999) (not b!686052) b_and!63063 (not b!686160) (not b_next!19333) (not setNonEmpty!3350) (not b!686061) (not b!686136) (not mapNonEmpty!2885) (not b!685943) (not b!685929) (not b_next!19349) (not b!686086) (not b!686008) (not setNonEmpty!3354) (not b!686137) (not setNonEmpty!3336) (not b!685979) (not b!686058) (not b!685986) (not d!231160) (not b!686013) b_and!63085 (not b!685962) (not setNonEmpty!3335) (not d!231220) (not b!686129) (not b!685963) (not b!686038) (not b!685861) (not d!231126) (not d!231208) (not setNonEmpty!3372) (not setNonEmpty!3344) (not setNonEmpty!3371) b_and!63071 (not b_next!19355) (not setNonEmpty!3349) (not b!686060) (not b!686159) (not b!686108) (not b!686050) (not b!686162) (not b!686020) (not b!686078) (not setNonEmpty!3361) (not b!685993) (not b!686144) (not b!686016) (not b!685887) (not setNonEmpty!3362) (not b!686112) (not b!686138) (not b!686139) (not b!686069) (not b!685889) (not mapNonEmpty!2886) (not b!686152) (not b!686115) (not d!231150) (not b!685843) (not b!686088) (not d!231182) (not b!686030) (not b!686049) b_and!63075 (not b!685817) (not b!686122) (not b!686111) (not setNonEmpty!3356) (not d!231120) (not b!686005) (not b_next!19345) (not b!686071) (not b!686042) (not d!231158) (not setNonEmpty!3345) (not b!686105) (not d!231122) (not d!231174) (not b!685892) (not b!686015) (not b!685985) (not d!231198) (not b!686149) (not d!231196) (not b!686135) (not b!686100) (not d!231210) (not b!686063) (not d!231118) (not b!686068) (not b!686099) (not b!686148) (not b!685890) (not d!231218) b_and!63067 (not b!686130) (not d!231180) (not setNonEmpty!3363) (not b!686110) (not setNonEmpty!3368) (not b!686064) (not b!685898) (not b!686104) (not setNonEmpty!3364) (not b!686075) (not b!686000) (not b!685997) (not b!685846) (not b!685921) (not b!685888) (not b!686039) (not b!686077) (not b!686001) (not b!685967) (not b!686007) (not b!686012) (not b!686153) (not b!686027) (not b!686158) (not b!686056) (not setNonEmpty!3352) (not setNonEmpty!3373) (not b!685995) (not b!686079) (not b!685968) (not b!686014) (not d!231140) (not b!686116) (not b!685891) (not b!686103) (not d!231178) (not b!686081) (not setNonEmpty!3357) (not b!686006) (not b!685964) (not b!686157) (not b!685941) (not b!686029) (not b_next!19335) (not b!686041) (not b!686067) (not b!685969) (not b!685947) (not b!686095) (not b!686107) (not d!231222) (not b!686151) (not b!686123) (not b!686083) (not d!231206) (not b!686133) (not setNonEmpty!3374) (not b!686046) (not b!686026) (not b!686147) (not b!685841) (not b!686031) (not b!685900) (not b!685978) (not b!686053) (not b!686019) (not b!686024) (not d!231128) (not b!686127) (not b!685998) (not b!686023) (not b!685934) (not b!686002) (not b!686003) (not b!685972) (not d!231200) (not setNonEmpty!3360) tp_is_empty!3635 (not setNonEmpty!3358) (not b!686154) (not b!686124) (not b!685866) (not setNonEmpty!3342) (not d!231172) (not setNonEmpty!3338) (not b!686018) (not b!685902) (not b!685984) (not b!686128) (not b!686045) (not b!685873) (not b!686156) (not d!231226) (not b!685848) (not b!686131) (not b!686106) (not b_next!19339) (not b!686140) (not d!231170) (not b!685966) (not d!231146) (not b!686055) (not b!686073) (not b_next!19351) (not b!686076) (not b!686011) (not b!686072) (not b!686057) (not b!685945) (not d!231212) (not setNonEmpty!3351) (not b!686141) (not setNonEmpty!3369) (not setNonEmpty!3347) b_and!63081 b_and!63077 (not d!231234) (not b!686021) (not b!686113) (not b!686109) (not b!686025) (not b!685991) (not b!685928) (not setNonEmpty!3343) (not b!686004) (not b!686043) (not b_next!19353) (not b!685854) (not b!686118) (not b!686142) (not b!686048) (not b_next!19343) (not b!685961) (not b!685920) b_and!63073 (not d!231186) (not b!686017) (not setNonEmpty!3376) (not b!686035) (not b!685763) (not b!686090) (not b!685874) (not d!231124) (not d!231130) (not b!686082) (not d!231216) (not b!686161) (not b!686134) (not b!686145) (not b!686051) (not d!231176) (not b!685996) (not b!685859) (not b!686062) (not mapNonEmpty!2887) (not b!685965) (not b!686126) (not setNonEmpty!3375))
(check-sat (not b_next!19341) b_and!63065 (not b_next!19349) b_and!63085 b_and!63075 (not b_next!19345) b_and!63067 (not b_next!19335) (not b_next!19339) (not b_next!19351) b_and!63069 b_and!63079 (not b_next!19347) (not b_next!19337) b_and!63083 b_and!63063 (not b_next!19333) (not b_next!19355) b_and!63071 b_and!63081 b_and!63077 (not b_next!19343) b_and!63073 (not b_next!19353))
