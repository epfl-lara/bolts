; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143582 () Bool)

(assert start!143582)

(declare-fun b!1547081 () Bool)

(declare-fun b_free!40707 () Bool)

(declare-fun b_next!41411 () Bool)

(assert (=> b!1547081 (= b_free!40707 (not b_next!41411))))

(declare-fun tp!450766 () Bool)

(declare-fun b_and!107797 () Bool)

(assert (=> b!1547081 (= tp!450766 b_and!107797)))

(declare-fun b!1547065 () Bool)

(declare-fun b_free!40709 () Bool)

(declare-fun b_next!41413 () Bool)

(assert (=> b!1547065 (= b_free!40709 (not b_next!41413))))

(declare-fun tp!450783 () Bool)

(declare-fun b_and!107799 () Bool)

(assert (=> b!1547065 (= tp!450783 b_and!107799)))

(declare-fun b!1547067 () Bool)

(declare-fun b_free!40711 () Bool)

(declare-fun b_next!41415 () Bool)

(assert (=> b!1547067 (= b_free!40711 (not b_next!41415))))

(declare-fun tp!450777 () Bool)

(declare-fun b_and!107801 () Bool)

(assert (=> b!1547067 (= tp!450777 b_and!107801)))

(declare-fun b!1547078 () Bool)

(declare-fun b_free!40713 () Bool)

(declare-fun b_next!41417 () Bool)

(assert (=> b!1547078 (= b_free!40713 (not b_next!41417))))

(declare-fun tp!450790 () Bool)

(declare-fun b_and!107803 () Bool)

(assert (=> b!1547078 (= tp!450790 b_and!107803)))

(declare-fun b!1547068 () Bool)

(declare-fun b_free!40715 () Bool)

(declare-fun b_next!41419 () Bool)

(assert (=> b!1547068 (= b_free!40715 (not b_next!41419))))

(declare-fun tp!450773 () Bool)

(declare-fun b_and!107805 () Bool)

(assert (=> b!1547068 (= tp!450773 b_and!107805)))

(declare-fun b!1547055 () Bool)

(declare-fun b_free!40717 () Bool)

(declare-fun b_next!41421 () Bool)

(assert (=> b!1547055 (= b_free!40717 (not b_next!41421))))

(declare-fun tp!450771 () Bool)

(declare-fun b_and!107807 () Bool)

(assert (=> b!1547055 (= tp!450771 b_and!107807)))

(declare-fun b_free!40719 () Bool)

(declare-fun b_next!41423 () Bool)

(assert (=> b!1547055 (= b_free!40719 (not b_next!41423))))

(declare-fun tp!450784 () Bool)

(declare-fun b_and!107809 () Bool)

(assert (=> b!1547055 (= tp!450784 b_and!107809)))

(declare-fun b!1547073 () Bool)

(declare-fun b_free!40721 () Bool)

(declare-fun b_next!41425 () Bool)

(assert (=> b!1547073 (= b_free!40721 (not b_next!41425))))

(declare-fun tp!450776 () Bool)

(declare-fun b_and!107811 () Bool)

(assert (=> b!1547073 (= tp!450776 b_and!107811)))

(declare-fun b!1547089 () Bool)

(declare-fun e!991225 () Bool)

(assert (=> b!1547089 (= e!991225 true)))

(declare-fun b!1547088 () Bool)

(declare-fun e!991224 () Bool)

(assert (=> b!1547088 (= e!991224 e!991225)))

(declare-fun b!1547051 () Bool)

(assert (=> b!1547051 e!991224))

(assert (= b!1547088 b!1547089))

(assert (= b!1547051 b!1547088))

(declare-fun order!9667 () Int)

(declare-datatypes ((List!16663 0))(
  ( (Nil!16595) (Cons!16595 (h!21996 (_ BitVec 16)) (t!141066 List!16663)) )
))
(declare-datatypes ((TokenValue!2999 0))(
  ( (FloatLiteralValue!5998 (text!21438 List!16663)) (TokenValueExt!2998 (__x!10802 Int)) (Broken!14995 (value!92534 List!16663)) (Object!3066) (End!2999) (Def!2999) (Underscore!2999) (Match!2999) (Else!2999) (Error!2999) (Case!2999) (If!2999) (Extends!2999) (Abstract!2999) (Class!2999) (Val!2999) (DelimiterValue!5998 (del!3059 List!16663)) (KeywordValue!3005 (value!92535 List!16663)) (CommentValue!5998 (value!92536 List!16663)) (WhitespaceValue!5998 (value!92537 List!16663)) (IndentationValue!2999 (value!92538 List!16663)) (String!19282) (Int32!2999) (Broken!14996 (value!92539 List!16663)) (Boolean!3000) (Unit!25944) (OperatorValue!3002 (op!3059 List!16663)) (IdentifierValue!5998 (value!92540 List!16663)) (IdentifierValue!5999 (value!92541 List!16663)) (WhitespaceValue!5999 (value!92542 List!16663)) (True!5998) (False!5998) (Broken!14997 (value!92543 List!16663)) (Broken!14998 (value!92544 List!16663)) (True!5999) (RightBrace!2999) (RightBracket!2999) (Colon!2999) (Null!2999) (Comma!2999) (LeftBracket!2999) (False!5999) (LeftBrace!2999) (ImaginaryLiteralValue!2999 (text!21439 List!16663)) (StringLiteralValue!8997 (value!92545 List!16663)) (EOFValue!2999 (value!92546 List!16663)) (IdentValue!2999 (value!92547 List!16663)) (DelimiterValue!5999 (value!92548 List!16663)) (DedentValue!2999 (value!92549 List!16663)) (NewLineValue!2999 (value!92550 List!16663)) (IntegerValue!8997 (value!92551 (_ BitVec 32)) (text!21440 List!16663)) (IntegerValue!8998 (value!92552 Int) (text!21441 List!16663)) (Times!2999) (Or!2999) (Equal!2999) (Minus!2999) (Broken!14999 (value!92553 List!16663)) (And!2999) (Div!2999) (LessEqual!2999) (Mod!2999) (Concat!7236) (Not!2999) (Plus!2999) (SpaceValue!2999 (value!92554 List!16663)) (IntegerValue!8999 (value!92555 Int) (text!21442 List!16663)) (StringLiteralValue!8998 (text!21443 List!16663)) (FloatLiteralValue!5999 (text!21444 List!16663)) (BytesLiteralValue!2999 (value!92556 List!16663)) (CommentValue!5999 (value!92557 List!16663)) (StringLiteralValue!8999 (value!92558 List!16663)) (ErrorTokenValue!2999 (msg!3060 List!16663)) )
))
(declare-datatypes ((C!8652 0))(
  ( (C!8653 (val!4898 Int)) )
))
(declare-datatypes ((List!16664 0))(
  ( (Nil!16596) (Cons!16596 (h!21997 C!8652) (t!141067 List!16664)) )
))
(declare-datatypes ((IArray!11059 0))(
  ( (IArray!11060 (innerList!5587 List!16664)) )
))
(declare-datatypes ((Conc!5527 0))(
  ( (Node!5527 (left!13538 Conc!5527) (right!13868 Conc!5527) (csize!11284 Int) (cheight!5738 Int)) (Leaf!8191 (xs!8327 IArray!11059) (csize!11285 Int)) (Empty!5527) )
))
(declare-datatypes ((BalanceConc!10996 0))(
  ( (BalanceConc!10997 (c!252139 Conc!5527)) )
))
(declare-datatypes ((Regex!4237 0))(
  ( (ElementMatch!4237 (c!252140 C!8652)) (Concat!7237 (regOne!8986 Regex!4237) (regTwo!8986 Regex!4237)) (EmptyExpr!4237) (Star!4237 (reg!4566 Regex!4237)) (EmptyLang!4237) (Union!4237 (regOne!8987 Regex!4237) (regTwo!8987 Regex!4237)) )
))
(declare-datatypes ((String!19283 0))(
  ( (String!19284 (value!92559 String)) )
))
(declare-datatypes ((TokenValueInjection!5658 0))(
  ( (TokenValueInjection!5659 (toValue!4272 Int) (toChars!4131 Int)) )
))
(declare-datatypes ((Rule!5618 0))(
  ( (Rule!5619 (regex!2909 Regex!4237) (tag!3173 String!19283) (isSeparator!2909 Bool) (transformation!2909 TokenValueInjection!5658)) )
))
(declare-fun rule!240 () Rule!5618)

(declare-fun lambda!65477 () Int)

(declare-fun order!9669 () Int)

(declare-fun dynLambda!7328 (Int Int) Int)

(declare-fun dynLambda!7329 (Int Int) Int)

(assert (=> b!1547089 (< (dynLambda!7328 order!9667 (toValue!4272 (transformation!2909 rule!240))) (dynLambda!7329 order!9669 lambda!65477))))

(declare-fun order!9671 () Int)

(declare-fun dynLambda!7330 (Int Int) Int)

(assert (=> b!1547089 (< (dynLambda!7330 order!9671 (toChars!4131 (transformation!2909 rule!240))) (dynLambda!7329 order!9669 lambda!65477))))

(declare-fun b!1547046 () Bool)

(declare-fun e!991190 () Bool)

(declare-fun e!991211 () Bool)

(declare-datatypes ((List!16665 0))(
  ( (Nil!16597) (Cons!16597 (h!21998 Regex!4237) (t!141068 List!16665)) )
))
(declare-datatypes ((Context!1510 0))(
  ( (Context!1511 (exprs!1255 List!16665)) )
))
(declare-datatypes ((tuple2!15798 0))(
  ( (tuple2!15799 (_1!9139 Context!1510) (_2!9139 C!8652)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15800 0))(
  ( (tuple2!15801 (_1!9140 tuple2!15798) (_2!9140 (InoxSet Context!1510))) )
))
(declare-datatypes ((List!16666 0))(
  ( (Nil!16598) (Cons!16598 (h!21999 tuple2!15800) (t!141069 List!16666)) )
))
(declare-datatypes ((array!5854 0))(
  ( (array!5855 (arr!2604 (Array (_ BitVec 32) List!16666)) (size!13401 (_ BitVec 32))) )
))
(declare-datatypes ((array!5856 0))(
  ( (array!5857 (arr!2605 (Array (_ BitVec 32) (_ BitVec 64))) (size!13402 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3384 0))(
  ( (LongMapFixedSize!3385 (defaultEntry!2052 Int) (mask!4899 (_ BitVec 32)) (extraKeys!1939 (_ BitVec 32)) (zeroValue!1949 List!16666) (minValue!1949 List!16666) (_size!3465 (_ BitVec 32)) (_keys!1986 array!5856) (_values!1971 array!5854) (_vacant!1753 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6653 0))(
  ( (Cell!6654 (v!23405 LongMapFixedSize!3384)) )
))
(declare-datatypes ((MutLongMap!1692 0))(
  ( (LongMap!1692 (underlying!3593 Cell!6653)) (MutLongMapExt!1691 (__x!10803 Int)) )
))
(declare-fun lt!535764 () MutLongMap!1692)

(get-info :version)

(assert (=> b!1547046 (= e!991190 (and e!991211 ((_ is LongMap!1692) lt!535764)))))

(declare-datatypes ((Hashable!1636 0))(
  ( (HashableExt!1635 (__x!10804 Int)) )
))
(declare-datatypes ((Cell!6655 0))(
  ( (Cell!6656 (v!23406 MutLongMap!1692)) )
))
(declare-datatypes ((MutableMap!1636 0))(
  ( (MutableMapExt!1635 (__x!10805 Int)) (HashMap!1636 (underlying!3594 Cell!6655) (hashF!3555 Hashable!1636) (_size!3466 (_ BitVec 32)) (defaultValue!1796 Int)) )
))
(declare-datatypes ((CacheUp!988 0))(
  ( (CacheUp!989 (cache!2017 MutableMap!1636)) )
))
(declare-fun cacheUp!755 () CacheUp!988)

(assert (=> b!1547046 (= lt!535764 (v!23406 (underlying!3594 (cache!2017 cacheUp!755))))))

(declare-fun b!1547047 () Bool)

(declare-fun e!991219 () Bool)

(declare-datatypes ((tuple3!1648 0))(
  ( (tuple3!1649 (_1!9141 (InoxSet Context!1510)) (_2!9141 Int) (_3!1240 Int)) )
))
(declare-datatypes ((tuple2!15802 0))(
  ( (tuple2!15803 (_1!9142 tuple3!1648) (_2!9142 Int)) )
))
(declare-datatypes ((List!16667 0))(
  ( (Nil!16599) (Cons!16599 (h!22000 tuple2!15802) (t!141070 List!16667)) )
))
(declare-datatypes ((array!5858 0))(
  ( (array!5859 (arr!2606 (Array (_ BitVec 32) List!16667)) (size!13403 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3386 0))(
  ( (LongMapFixedSize!3387 (defaultEntry!2053 Int) (mask!4900 (_ BitVec 32)) (extraKeys!1940 (_ BitVec 32)) (zeroValue!1950 List!16667) (minValue!1950 List!16667) (_size!3467 (_ BitVec 32)) (_keys!1987 array!5856) (_values!1972 array!5858) (_vacant!1754 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6657 0))(
  ( (Cell!6658 (v!23407 LongMapFixedSize!3386)) )
))
(declare-datatypes ((Hashable!1637 0))(
  ( (HashableExt!1636 (__x!10806 Int)) )
))
(declare-datatypes ((MutLongMap!1693 0))(
  ( (LongMap!1693 (underlying!3595 Cell!6657)) (MutLongMapExt!1692 (__x!10807 Int)) )
))
(declare-datatypes ((Cell!6659 0))(
  ( (Cell!6660 (v!23408 MutLongMap!1693)) )
))
(declare-datatypes ((MutableMap!1637 0))(
  ( (MutableMapExt!1636 (__x!10808 Int)) (HashMap!1637 (underlying!3596 Cell!6659) (hashF!3556 Hashable!1637) (_size!3468 (_ BitVec 32)) (defaultValue!1797 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!416 0))(
  ( (CacheFurthestNullable!417 (cache!2018 MutableMap!1637) (totalInput!2411 BalanceConc!10996)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!416)

(declare-fun tp!450786 () Bool)

(declare-fun inv!21863 (Conc!5527) Bool)

(assert (=> b!1547047 (= e!991219 (and (inv!21863 (c!252139 (totalInput!2411 cacheFurthestNullable!103))) tp!450786))))

(declare-fun b!1547048 () Bool)

(declare-fun e!991214 () Bool)

(assert (=> b!1547048 (= e!991214 true)))

(declare-fun lt!535762 () Int)

(declare-datatypes ((tuple3!1650 0))(
  ( (tuple3!1651 (_1!9143 Regex!4237) (_2!9143 Context!1510) (_3!1241 C!8652)) )
))
(declare-datatypes ((tuple2!15804 0))(
  ( (tuple2!15805 (_1!9144 tuple3!1650) (_2!9144 (InoxSet Context!1510))) )
))
(declare-datatypes ((List!16668 0))(
  ( (Nil!16600) (Cons!16600 (h!22001 tuple2!15804) (t!141071 List!16668)) )
))
(declare-datatypes ((array!5860 0))(
  ( (array!5861 (arr!2607 (Array (_ BitVec 32) List!16668)) (size!13404 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3388 0))(
  ( (LongMapFixedSize!3389 (defaultEntry!2054 Int) (mask!4901 (_ BitVec 32)) (extraKeys!1941 (_ BitVec 32)) (zeroValue!1951 List!16668) (minValue!1951 List!16668) (_size!3469 (_ BitVec 32)) (_keys!1988 array!5856) (_values!1973 array!5860) (_vacant!1755 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6661 0))(
  ( (Cell!6662 (v!23409 LongMapFixedSize!3388)) )
))
(declare-datatypes ((tuple2!15806 0))(
  ( (tuple2!15807 (_1!9145 BalanceConc!10996) (_2!9145 BalanceConc!10996)) )
))
(declare-datatypes ((MutLongMap!1694 0))(
  ( (LongMap!1694 (underlying!3597 Cell!6661)) (MutLongMapExt!1693 (__x!10809 Int)) )
))
(declare-datatypes ((Cell!6663 0))(
  ( (Cell!6664 (v!23410 MutLongMap!1694)) )
))
(declare-datatypes ((Hashable!1638 0))(
  ( (HashableExt!1637 (__x!10810 Int)) )
))
(declare-datatypes ((MutableMap!1638 0))(
  ( (MutableMapExt!1637 (__x!10811 Int)) (HashMap!1638 (underlying!3598 Cell!6663) (hashF!3557 Hashable!1638) (_size!3470 (_ BitVec 32)) (defaultValue!1798 Int)) )
))
(declare-datatypes ((CacheDown!996 0))(
  ( (CacheDown!997 (cache!2019 MutableMap!1638)) )
))
(declare-datatypes ((tuple4!832 0))(
  ( (tuple4!833 (_1!9146 tuple2!15806) (_2!9146 CacheUp!988) (_3!1242 CacheDown!996) (_4!416 CacheFurthestNullable!416)) )
))
(declare-fun lt!535758 () tuple4!832)

(declare-fun size!13405 (BalanceConc!10996) Int)

(assert (=> b!1547048 (= lt!535762 (size!13405 (_1!9145 (_1!9146 lt!535758))))))

(declare-fun lt!535761 () TokenValue!2999)

(declare-fun apply!4087 (TokenValueInjection!5658 BalanceConc!10996) TokenValue!2999)

(assert (=> b!1547048 (= lt!535761 (apply!4087 (transformation!2909 rule!240) (_1!9145 (_1!9146 lt!535758))))))

(declare-datatypes ((Unit!25945 0))(
  ( (Unit!25946) )
))
(declare-fun lt!535759 () Unit!25945)

(declare-fun ForallOf!188 (Int BalanceConc!10996) Unit!25945)

(declare-fun seqFromList!1751 (List!16664) BalanceConc!10996)

(declare-fun list!6455 (BalanceConc!10996) List!16664)

(assert (=> b!1547048 (= lt!535759 (ForallOf!188 lambda!65477 (seqFromList!1751 (list!6455 (_1!9145 (_1!9146 lt!535758))))))))

(declare-fun lt!535765 () Unit!25945)

(assert (=> b!1547048 (= lt!535765 (ForallOf!188 lambda!65477 (_1!9145 (_1!9146 lt!535758))))))

(declare-fun b!1547049 () Bool)

(declare-fun e!991209 () Bool)

(assert (=> b!1547049 (= e!991211 e!991209)))

(declare-fun mapNonEmpty!7938 () Bool)

(declare-fun mapRes!7939 () Bool)

(declare-fun tp!450787 () Bool)

(declare-fun tp!450781 () Bool)

(assert (=> mapNonEmpty!7938 (= mapRes!7939 (and tp!450787 tp!450781))))

(declare-fun mapKey!7939 () (_ BitVec 32))

(declare-fun mapRest!7939 () (Array (_ BitVec 32) List!16667))

(declare-fun mapValue!7940 () List!16667)

(assert (=> mapNonEmpty!7938 (= (arr!2606 (_values!1972 (v!23407 (underlying!3595 (v!23408 (underlying!3596 (cache!2018 cacheFurthestNullable!103))))))) (store mapRest!7939 mapKey!7939 mapValue!7940))))

(declare-fun b!1547050 () Bool)

(declare-fun e!991205 () Bool)

(declare-fun e!991187 () Bool)

(declare-fun inv!21864 (BalanceConc!10996) Bool)

(assert (=> b!1547050 (= e!991187 (and e!991205 (inv!21864 (totalInput!2411 cacheFurthestNullable!103)) e!991219))))

(declare-fun mapIsEmpty!7938 () Bool)

(assert (=> mapIsEmpty!7938 mapRes!7939))

(declare-fun res!691885 () Bool)

(assert (=> b!1547051 (=> res!691885 e!991214)))

(declare-fun Forall!589 (Int) Bool)

(assert (=> b!1547051 (= res!691885 (not (Forall!589 lambda!65477)))))

(declare-fun b!1547052 () Bool)

(declare-fun res!691888 () Bool)

(declare-fun e!991199 () Bool)

(assert (=> b!1547052 (=> (not res!691888) (not e!991199))))

(declare-datatypes ((LexerInterface!2556 0))(
  ( (LexerInterfaceExt!2553 (__x!10812 Int)) (Lexer!2554) )
))
(declare-fun thiss!16438 () LexerInterface!2556)

(declare-fun ruleValid!661 (LexerInterface!2556 Rule!5618) Bool)

(assert (=> b!1547052 (= res!691888 (ruleValid!661 thiss!16438 rule!240))))

(declare-fun b!1547053 () Bool)

(declare-fun e!991200 () Bool)

(assert (=> b!1547053 (= e!991209 e!991200)))

(declare-fun tp!450792 () Bool)

(declare-fun e!991207 () Bool)

(declare-fun e!991195 () Bool)

(declare-fun b!1547054 () Bool)

(declare-fun inv!21862 (String!19283) Bool)

(declare-fun inv!21865 (TokenValueInjection!5658) Bool)

(assert (=> b!1547054 (= e!991207 (and tp!450792 (inv!21862 (tag!3173 rule!240)) (inv!21865 (transformation!2909 rule!240)) e!991195))))

(assert (=> b!1547055 (= e!991195 (and tp!450771 tp!450784))))

(declare-fun res!691890 () Bool)

(assert (=> start!143582 (=> (not res!691890) (not e!991199))))

(assert (=> start!143582 (= res!691890 ((_ is Lexer!2554) thiss!16438))))

(assert (=> start!143582 e!991199))

(declare-fun totalInput!568 () BalanceConc!10996)

(declare-fun e!991192 () Bool)

(assert (=> start!143582 (and (inv!21864 totalInput!568) e!991192)))

(declare-fun e!991210 () Bool)

(declare-fun inv!21866 (CacheUp!988) Bool)

(assert (=> start!143582 (and (inv!21866 cacheUp!755) e!991210)))

(declare-fun inv!21867 (CacheFurthestNullable!416) Bool)

(assert (=> start!143582 (and (inv!21867 cacheFurthestNullable!103) e!991187)))

(declare-fun input!1676 () BalanceConc!10996)

(declare-fun e!991188 () Bool)

(assert (=> start!143582 (and (inv!21864 input!1676) e!991188)))

(assert (=> start!143582 e!991207))

(declare-fun cacheDown!768 () CacheDown!996)

(declare-fun e!991216 () Bool)

(declare-fun inv!21868 (CacheDown!996) Bool)

(assert (=> start!143582 (and (inv!21868 cacheDown!768) e!991216)))

(assert (=> start!143582 true))

(declare-fun b!1547045 () Bool)

(declare-fun e!991191 () Bool)

(declare-fun e!991218 () Bool)

(assert (=> b!1547045 (= e!991191 e!991218)))

(declare-fun b!1547056 () Bool)

(declare-fun e!991217 () Bool)

(declare-fun e!991193 () Bool)

(assert (=> b!1547056 (= e!991217 e!991193)))

(declare-fun res!691881 () Bool)

(assert (=> b!1547056 (=> (not res!691881) (not e!991193))))

(declare-fun isEmpty!10052 (BalanceConc!10996) Bool)

(assert (=> b!1547056 (= res!691881 (not (isEmpty!10052 (_1!9145 (_1!9146 lt!535758)))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!22 (Regex!4237 BalanceConc!10996 BalanceConc!10996 CacheUp!988 CacheDown!996 CacheFurthestNullable!416) tuple4!832)

(assert (=> b!1547056 (= lt!535758 (findLongestMatchWithZipperSequenceV3Mem!22 (regex!2909 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))

(declare-fun b!1547057 () Bool)

(declare-fun e!991203 () Bool)

(declare-fun e!991189 () Bool)

(declare-fun lt!535756 () MutLongMap!1694)

(assert (=> b!1547057 (= e!991203 (and e!991189 ((_ is LongMap!1694) lt!535756)))))

(assert (=> b!1547057 (= lt!535756 (v!23410 (underlying!3598 (cache!2019 cacheDown!768))))))

(declare-fun b!1547058 () Bool)

(declare-fun e!991197 () Bool)

(declare-fun tp!450774 () Bool)

(declare-fun mapRes!7938 () Bool)

(assert (=> b!1547058 (= e!991197 (and tp!450774 mapRes!7938))))

(declare-fun condMapEmpty!7939 () Bool)

(declare-fun mapDefault!7939 () List!16668)

(assert (=> b!1547058 (= condMapEmpty!7939 (= (arr!2607 (_values!1973 (v!23409 (underlying!3597 (v!23410 (underlying!3598 (cache!2019 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16668)) mapDefault!7939)))))

(declare-fun b!1547059 () Bool)

(declare-fun e!991201 () Bool)

(assert (=> b!1547059 (= e!991216 e!991201)))

(declare-fun b!1547060 () Bool)

(declare-fun e!991213 () Bool)

(declare-fun e!991194 () Bool)

(assert (=> b!1547060 (= e!991213 e!991194)))

(declare-fun b!1547061 () Bool)

(declare-fun res!691887 () Bool)

(assert (=> b!1547061 (=> (not res!691887) (not e!991199))))

(declare-fun valid!1367 (CacheFurthestNullable!416) Bool)

(assert (=> b!1547061 (= res!691887 (valid!1367 cacheFurthestNullable!103))))

(declare-fun b!1547062 () Bool)

(declare-fun e!991202 () Bool)

(assert (=> b!1547062 (= e!991210 e!991202)))

(declare-fun mapIsEmpty!7939 () Bool)

(declare-fun mapRes!7940 () Bool)

(assert (=> mapIsEmpty!7939 mapRes!7940))

(declare-fun mapNonEmpty!7939 () Bool)

(declare-fun tp!450788 () Bool)

(declare-fun tp!450770 () Bool)

(assert (=> mapNonEmpty!7939 (= mapRes!7940 (and tp!450788 tp!450770))))

(declare-fun mapValue!7939 () List!16666)

(declare-fun mapKey!7938 () (_ BitVec 32))

(declare-fun mapRest!7940 () (Array (_ BitVec 32) List!16666))

(assert (=> mapNonEmpty!7939 (= (arr!2604 (_values!1971 (v!23405 (underlying!3593 (v!23406 (underlying!3594 (cache!2017 cacheUp!755))))))) (store mapRest!7940 mapKey!7938 mapValue!7939))))

(declare-fun b!1547063 () Bool)

(declare-fun res!691889 () Bool)

(assert (=> b!1547063 (=> (not res!691889) (not e!991199))))

(declare-fun valid!1368 (CacheUp!988) Bool)

(assert (=> b!1547063 (= res!691889 (valid!1368 cacheUp!755))))

(declare-fun b!1547064 () Bool)

(assert (=> b!1547064 (= e!991199 e!991217)))

(declare-fun res!691886 () Bool)

(assert (=> b!1547064 (=> (not res!691886) (not e!991217))))

(declare-fun lt!535755 () List!16664)

(declare-fun isSuffix!350 (List!16664 List!16664) Bool)

(assert (=> b!1547064 (= res!691886 (isSuffix!350 lt!535755 (list!6455 totalInput!568)))))

(assert (=> b!1547064 (= lt!535755 (list!6455 input!1676))))

(declare-fun tp!450780 () Bool)

(declare-fun e!991208 () Bool)

(declare-fun tp!450785 () Bool)

(declare-fun array_inv!1873 (array!5856) Bool)

(declare-fun array_inv!1874 (array!5854) Bool)

(assert (=> b!1547065 (= e!991200 (and tp!450783 tp!450785 tp!450780 (array_inv!1873 (_keys!1986 (v!23405 (underlying!3593 (v!23406 (underlying!3594 (cache!2017 cacheUp!755))))))) (array_inv!1874 (_values!1971 (v!23405 (underlying!3593 (v!23406 (underlying!3594 (cache!2017 cacheUp!755))))))) e!991208))))

(declare-fun b!1547066 () Bool)

(assert (=> b!1547066 (= e!991189 e!991213)))

(assert (=> b!1547067 (= e!991201 (and e!991203 tp!450777))))

(declare-fun mapNonEmpty!7940 () Bool)

(declare-fun tp!450789 () Bool)

(declare-fun tp!450778 () Bool)

(assert (=> mapNonEmpty!7940 (= mapRes!7938 (and tp!450789 tp!450778))))

(declare-fun mapValue!7938 () List!16668)

(declare-fun mapRest!7938 () (Array (_ BitVec 32) List!16668))

(declare-fun mapKey!7940 () (_ BitVec 32))

(assert (=> mapNonEmpty!7940 (= (arr!2607 (_values!1973 (v!23409 (underlying!3597 (v!23410 (underlying!3598 (cache!2019 cacheDown!768))))))) (store mapRest!7938 mapKey!7940 mapValue!7938))))

(declare-fun tp!450769 () Bool)

(declare-fun tp!450791 () Bool)

(declare-fun array_inv!1875 (array!5860) Bool)

(assert (=> b!1547068 (= e!991194 (and tp!450773 tp!450769 tp!450791 (array_inv!1873 (_keys!1988 (v!23409 (underlying!3597 (v!23410 (underlying!3598 (cache!2019 cacheDown!768))))))) (array_inv!1875 (_values!1973 (v!23409 (underlying!3597 (v!23410 (underlying!3598 (cache!2019 cacheDown!768))))))) e!991197))))

(declare-fun b!1547069 () Bool)

(declare-fun tp!450767 () Bool)

(assert (=> b!1547069 (= e!991192 (and (inv!21863 (c!252139 totalInput!568)) tp!450767))))

(declare-fun b!1547070 () Bool)

(declare-fun tp!450779 () Bool)

(assert (=> b!1547070 (= e!991188 (and (inv!21863 (c!252139 input!1676)) tp!450779))))

(declare-fun b!1547071 () Bool)

(declare-fun e!991212 () Bool)

(declare-fun tp!450775 () Bool)

(assert (=> b!1547071 (= e!991212 (and tp!450775 mapRes!7939))))

(declare-fun condMapEmpty!7940 () Bool)

(declare-fun mapDefault!7938 () List!16667)

(assert (=> b!1547071 (= condMapEmpty!7940 (= (arr!2606 (_values!1972 (v!23407 (underlying!3595 (v!23408 (underlying!3596 (cache!2018 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16667)) mapDefault!7938)))))

(declare-fun mapIsEmpty!7940 () Bool)

(assert (=> mapIsEmpty!7940 mapRes!7938))

(declare-fun b!1547072 () Bool)

(declare-fun e!991204 () Bool)

(declare-datatypes ((tuple2!15808 0))(
  ( (tuple2!15809 (_1!9147 List!16664) (_2!9147 List!16664)) )
))
(declare-fun lt!535760 () tuple2!15808)

(declare-fun matchR!1854 (Regex!4237 List!16664) Bool)

(assert (=> b!1547072 (= e!991204 (matchR!1854 (regex!2909 rule!240) (_1!9147 lt!535760)))))

(declare-fun e!991206 () Bool)

(assert (=> b!1547073 (= e!991205 (and e!991206 tp!450776))))

(declare-fun b!1547074 () Bool)

(declare-fun tp!450772 () Bool)

(assert (=> b!1547074 (= e!991208 (and tp!450772 mapRes!7940))))

(declare-fun condMapEmpty!7938 () Bool)

(declare-fun mapDefault!7940 () List!16666)

(assert (=> b!1547074 (= condMapEmpty!7938 (= (arr!2604 (_values!1971 (v!23405 (underlying!3593 (v!23406 (underlying!3594 (cache!2017 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16666)) mapDefault!7940)))))

(declare-fun b!1547075 () Bool)

(declare-fun res!691883 () Bool)

(assert (=> b!1547075 (=> (not res!691883) (not e!991217))))

(assert (=> b!1547075 (= res!691883 (= (totalInput!2411 cacheFurthestNullable!103) totalInput!568))))

(declare-fun b!1547076 () Bool)

(declare-fun res!691891 () Bool)

(assert (=> b!1547076 (=> (not res!691891) (not e!991199))))

(declare-fun valid!1369 (CacheDown!996) Bool)

(assert (=> b!1547076 (= res!691891 (valid!1369 cacheDown!768))))

(declare-fun b!1547077 () Bool)

(assert (=> b!1547077 (= e!991193 (not e!991214))))

(declare-fun res!691882 () Bool)

(assert (=> b!1547077 (=> res!691882 e!991214)))

(declare-fun semiInverseModEq!1094 (Int Int) Bool)

(assert (=> b!1547077 (= res!691882 (not (semiInverseModEq!1094 (toChars!4131 (transformation!2909 rule!240)) (toValue!4272 (transformation!2909 rule!240)))))))

(declare-fun lt!535754 () Unit!25945)

(declare-fun lemmaInv!404 (TokenValueInjection!5658) Unit!25945)

(assert (=> b!1547077 (= lt!535754 (lemmaInv!404 (transformation!2909 rule!240)))))

(assert (=> b!1547077 e!991204))

(declare-fun res!691884 () Bool)

(assert (=> b!1547077 (=> res!691884 e!991204)))

(declare-fun isEmpty!10053 (List!16664) Bool)

(assert (=> b!1547077 (= res!691884 (isEmpty!10053 (_1!9147 lt!535760)))))

(declare-fun findLongestMatchInner!310 (Regex!4237 List!16664 Int List!16664 List!16664 Int) tuple2!15808)

(declare-fun size!13406 (List!16664) Int)

(assert (=> b!1547077 (= lt!535760 (findLongestMatchInner!310 (regex!2909 rule!240) Nil!16596 (size!13406 Nil!16596) lt!535755 lt!535755 (size!13406 lt!535755)))))

(declare-fun lt!535763 () Unit!25945)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!294 (Regex!4237 List!16664) Unit!25945)

(assert (=> b!1547077 (= lt!535763 (longestMatchIsAcceptedByMatchOrIsEmpty!294 (regex!2909 rule!240) lt!535755))))

(assert (=> b!1547078 (= e!991202 (and e!991190 tp!450790))))

(declare-fun b!1547079 () Bool)

(declare-fun e!991186 () Bool)

(assert (=> b!1547079 (= e!991218 e!991186)))

(declare-fun b!1547080 () Bool)

(declare-fun lt!535757 () MutLongMap!1693)

(assert (=> b!1547080 (= e!991206 (and e!991191 ((_ is LongMap!1693) lt!535757)))))

(assert (=> b!1547080 (= lt!535757 (v!23408 (underlying!3596 (cache!2018 cacheFurthestNullable!103))))))

(declare-fun tp!450782 () Bool)

(declare-fun tp!450768 () Bool)

(declare-fun array_inv!1876 (array!5858) Bool)

(assert (=> b!1547081 (= e!991186 (and tp!450766 tp!450782 tp!450768 (array_inv!1873 (_keys!1987 (v!23407 (underlying!3595 (v!23408 (underlying!3596 (cache!2018 cacheFurthestNullable!103))))))) (array_inv!1876 (_values!1972 (v!23407 (underlying!3595 (v!23408 (underlying!3596 (cache!2018 cacheFurthestNullable!103))))))) e!991212))))

(assert (= (and start!143582 res!691890) b!1547052))

(assert (= (and b!1547052 res!691888) b!1547063))

(assert (= (and b!1547063 res!691889) b!1547076))

(assert (= (and b!1547076 res!691891) b!1547061))

(assert (= (and b!1547061 res!691887) b!1547064))

(assert (= (and b!1547064 res!691886) b!1547075))

(assert (= (and b!1547075 res!691883) b!1547056))

(assert (= (and b!1547056 res!691881) b!1547077))

(assert (= (and b!1547077 (not res!691884)) b!1547072))

(assert (= (and b!1547077 (not res!691882)) b!1547051))

(assert (= (and b!1547051 (not res!691885)) b!1547048))

(assert (= start!143582 b!1547069))

(assert (= (and b!1547074 condMapEmpty!7938) mapIsEmpty!7939))

(assert (= (and b!1547074 (not condMapEmpty!7938)) mapNonEmpty!7939))

(assert (= b!1547065 b!1547074))

(assert (= b!1547053 b!1547065))

(assert (= b!1547049 b!1547053))

(assert (= (and b!1547046 ((_ is LongMap!1692) (v!23406 (underlying!3594 (cache!2017 cacheUp!755))))) b!1547049))

(assert (= b!1547078 b!1547046))

(assert (= (and b!1547062 ((_ is HashMap!1636) (cache!2017 cacheUp!755))) b!1547078))

(assert (= start!143582 b!1547062))

(assert (= (and b!1547071 condMapEmpty!7940) mapIsEmpty!7938))

(assert (= (and b!1547071 (not condMapEmpty!7940)) mapNonEmpty!7938))

(assert (= b!1547081 b!1547071))

(assert (= b!1547079 b!1547081))

(assert (= b!1547045 b!1547079))

(assert (= (and b!1547080 ((_ is LongMap!1693) (v!23408 (underlying!3596 (cache!2018 cacheFurthestNullable!103))))) b!1547045))

(assert (= b!1547073 b!1547080))

(assert (= (and b!1547050 ((_ is HashMap!1637) (cache!2018 cacheFurthestNullable!103))) b!1547073))

(assert (= b!1547050 b!1547047))

(assert (= start!143582 b!1547050))

(assert (= start!143582 b!1547070))

(assert (= b!1547054 b!1547055))

(assert (= start!143582 b!1547054))

(assert (= (and b!1547058 condMapEmpty!7939) mapIsEmpty!7940))

(assert (= (and b!1547058 (not condMapEmpty!7939)) mapNonEmpty!7940))

(assert (= b!1547068 b!1547058))

(assert (= b!1547060 b!1547068))

(assert (= b!1547066 b!1547060))

(assert (= (and b!1547057 ((_ is LongMap!1694) (v!23410 (underlying!3598 (cache!2019 cacheDown!768))))) b!1547066))

(assert (= b!1547067 b!1547057))

(assert (= (and b!1547059 ((_ is HashMap!1638) (cache!2019 cacheDown!768))) b!1547067))

(assert (= start!143582 b!1547059))

(declare-fun m!1820525 () Bool)

(assert (=> mapNonEmpty!7939 m!1820525))

(declare-fun m!1820527 () Bool)

(assert (=> b!1547081 m!1820527))

(declare-fun m!1820529 () Bool)

(assert (=> b!1547081 m!1820529))

(declare-fun m!1820531 () Bool)

(assert (=> b!1547069 m!1820531))

(declare-fun m!1820533 () Bool)

(assert (=> b!1547056 m!1820533))

(declare-fun m!1820535 () Bool)

(assert (=> b!1547056 m!1820535))

(declare-fun m!1820537 () Bool)

(assert (=> b!1547063 m!1820537))

(declare-fun m!1820539 () Bool)

(assert (=> b!1547048 m!1820539))

(declare-fun m!1820541 () Bool)

(assert (=> b!1547048 m!1820541))

(declare-fun m!1820543 () Bool)

(assert (=> b!1547048 m!1820543))

(declare-fun m!1820545 () Bool)

(assert (=> b!1547048 m!1820545))

(declare-fun m!1820547 () Bool)

(assert (=> b!1547048 m!1820547))

(assert (=> b!1547048 m!1820545))

(assert (=> b!1547048 m!1820541))

(declare-fun m!1820549 () Bool)

(assert (=> b!1547048 m!1820549))

(declare-fun m!1820551 () Bool)

(assert (=> b!1547051 m!1820551))

(declare-fun m!1820553 () Bool)

(assert (=> b!1547054 m!1820553))

(declare-fun m!1820555 () Bool)

(assert (=> b!1547054 m!1820555))

(declare-fun m!1820557 () Bool)

(assert (=> b!1547076 m!1820557))

(declare-fun m!1820559 () Bool)

(assert (=> b!1547061 m!1820559))

(declare-fun m!1820561 () Bool)

(assert (=> b!1547047 m!1820561))

(declare-fun m!1820563 () Bool)

(assert (=> b!1547065 m!1820563))

(declare-fun m!1820565 () Bool)

(assert (=> b!1547065 m!1820565))

(declare-fun m!1820567 () Bool)

(assert (=> b!1547064 m!1820567))

(assert (=> b!1547064 m!1820567))

(declare-fun m!1820569 () Bool)

(assert (=> b!1547064 m!1820569))

(declare-fun m!1820571 () Bool)

(assert (=> b!1547064 m!1820571))

(declare-fun m!1820573 () Bool)

(assert (=> b!1547050 m!1820573))

(declare-fun m!1820575 () Bool)

(assert (=> b!1547068 m!1820575))

(declare-fun m!1820577 () Bool)

(assert (=> b!1547068 m!1820577))

(declare-fun m!1820579 () Bool)

(assert (=> b!1547070 m!1820579))

(declare-fun m!1820581 () Bool)

(assert (=> start!143582 m!1820581))

(declare-fun m!1820583 () Bool)

(assert (=> start!143582 m!1820583))

(declare-fun m!1820585 () Bool)

(assert (=> start!143582 m!1820585))

(declare-fun m!1820587 () Bool)

(assert (=> start!143582 m!1820587))

(declare-fun m!1820589 () Bool)

(assert (=> start!143582 m!1820589))

(declare-fun m!1820591 () Bool)

(assert (=> mapNonEmpty!7940 m!1820591))

(declare-fun m!1820593 () Bool)

(assert (=> b!1547072 m!1820593))

(declare-fun m!1820595 () Bool)

(assert (=> b!1547077 m!1820595))

(declare-fun m!1820597 () Bool)

(assert (=> b!1547077 m!1820597))

(declare-fun m!1820599 () Bool)

(assert (=> b!1547077 m!1820599))

(declare-fun m!1820601 () Bool)

(assert (=> b!1547077 m!1820601))

(declare-fun m!1820603 () Bool)

(assert (=> b!1547077 m!1820603))

(declare-fun m!1820605 () Bool)

(assert (=> b!1547077 m!1820605))

(assert (=> b!1547077 m!1820601))

(assert (=> b!1547077 m!1820603))

(declare-fun m!1820607 () Bool)

(assert (=> b!1547077 m!1820607))

(declare-fun m!1820609 () Bool)

(assert (=> b!1547052 m!1820609))

(declare-fun m!1820611 () Bool)

(assert (=> mapNonEmpty!7938 m!1820611))

(check-sat (not b!1547054) (not b_next!41415) (not start!143582) b_and!107797 (not mapNonEmpty!7939) (not b!1547061) (not b!1547076) (not mapNonEmpty!7940) (not b!1547071) (not b!1547051) (not b!1547048) (not b_next!41423) (not b_next!41413) (not b!1547077) (not b!1547072) (not b!1547056) b_and!107799 (not b_next!41421) (not b!1547058) b_and!107803 (not b_next!41417) (not b!1547070) (not b!1547052) (not b!1547050) (not b!1547068) (not b!1547063) (not b_next!41425) (not b!1547074) (not b!1547047) b_and!107809 b_and!107811 b_and!107801 b_and!107807 (not b!1547069) (not mapNonEmpty!7938) b_and!107805 (not b_next!41419) (not b!1547064) (not b!1547081) (not b_next!41411) (not b!1547065))
(check-sat (not b_next!41423) (not b_next!41413) (not b_next!41415) b_and!107799 b_and!107797 (not b_next!41421) (not b_next!41425) b_and!107809 b_and!107805 (not b_next!41419) (not b_next!41411) b_and!107803 (not b_next!41417) b_and!107811 b_and!107801 b_and!107807)
