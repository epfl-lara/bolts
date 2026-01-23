; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66032 () Bool)

(assert start!66032)

(declare-fun b!690584 () Bool)

(declare-fun b_free!19529 () Bool)

(declare-fun b_next!19593 () Bool)

(assert (=> b!690584 (= b_free!19529 (not b_next!19593))))

(declare-fun tp!207438 () Bool)

(declare-fun b_and!63323 () Bool)

(assert (=> b!690584 (= tp!207438 b_and!63323)))

(declare-fun b!690579 () Bool)

(declare-fun b_free!19531 () Bool)

(declare-fun b_next!19595 () Bool)

(assert (=> b!690579 (= b_free!19531 (not b_next!19595))))

(declare-fun tp!207452 () Bool)

(declare-fun b_and!63325 () Bool)

(assert (=> b!690579 (= tp!207452 b_and!63325)))

(declare-fun b!690591 () Bool)

(declare-fun b_free!19533 () Bool)

(declare-fun b_next!19597 () Bool)

(assert (=> b!690591 (= b_free!19533 (not b_next!19597))))

(declare-fun tp!207448 () Bool)

(declare-fun b_and!63327 () Bool)

(assert (=> b!690591 (= tp!207448 b_and!63327)))

(declare-fun b!690594 () Bool)

(declare-fun b_free!19535 () Bool)

(declare-fun b_next!19599 () Bool)

(assert (=> b!690594 (= b_free!19535 (not b_next!19599))))

(declare-fun tp!207447 () Bool)

(declare-fun b_and!63329 () Bool)

(assert (=> b!690594 (= tp!207447 b_and!63329)))

(declare-fun b!690600 () Bool)

(declare-fun b_free!19537 () Bool)

(declare-fun b_next!19601 () Bool)

(assert (=> b!690600 (= b_free!19537 (not b_next!19601))))

(declare-fun tp!207443 () Bool)

(declare-fun b_and!63331 () Bool)

(assert (=> b!690600 (= tp!207443 b_and!63331)))

(declare-fun b_free!19539 () Bool)

(declare-fun b_next!19603 () Bool)

(assert (=> b!690600 (= b_free!19539 (not b_next!19603))))

(declare-fun tp!207454 () Bool)

(declare-fun b_and!63333 () Bool)

(assert (=> b!690600 (= tp!207454 b_and!63333)))

(declare-fun b!690599 () Bool)

(declare-fun b_free!19541 () Bool)

(declare-fun b_next!19605 () Bool)

(assert (=> b!690599 (= b_free!19541 (not b_next!19605))))

(declare-fun tp!207455 () Bool)

(declare-fun b_and!63335 () Bool)

(assert (=> b!690599 (= tp!207455 b_and!63335)))

(declare-fun b!690593 () Bool)

(declare-fun b_free!19543 () Bool)

(declare-fun b_next!19607 () Bool)

(assert (=> b!690593 (= b_free!19543 (not b_next!19607))))

(declare-fun tp!207449 () Bool)

(declare-fun b_and!63337 () Bool)

(assert (=> b!690593 (= tp!207449 b_and!63337)))

(declare-fun b!690577 () Bool)

(declare-fun e!434273 () Bool)

(declare-fun tp!207437 () Bool)

(declare-fun mapRes!3052 () Bool)

(assert (=> b!690577 (= e!434273 (and tp!207437 mapRes!3052))))

(declare-fun condMapEmpty!3052 () Bool)

(declare-datatypes ((C!4264 0))(
  ( (C!4265 (val!2362 Int)) )
))
(declare-datatypes ((Regex!1831 0))(
  ( (ElementMatch!1831 (c!121539 C!4264)) (Concat!3368 (regOne!4174 Regex!1831) (regTwo!4174 Regex!1831)) (EmptyExpr!1831) (Star!1831 (reg!2160 Regex!1831)) (EmptyLang!1831) (Union!1831 (regOne!4175 Regex!1831) (regTwo!4175 Regex!1831)) )
))
(declare-datatypes ((List!7452 0))(
  ( (Nil!7438) (Cons!7438 (h!12839 Regex!1831) (t!87268 List!7452)) )
))
(declare-datatypes ((Context!482 0))(
  ( (Context!483 (exprs!741 List!7452)) )
))
(declare-datatypes ((tuple2!7836 0))(
  ( (tuple2!7837 (_1!4326 Context!482) (_2!4326 C!4264)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7838 0))(
  ( (tuple2!7839 (_1!4327 tuple2!7836) (_2!4327 (InoxSet Context!482))) )
))
(declare-datatypes ((List!7453 0))(
  ( (Nil!7439) (Cons!7439 (h!12840 tuple2!7838) (t!87269 List!7453)) )
))
(declare-datatypes ((array!2853 0))(
  ( (array!2854 (arr!1290 (Array (_ BitVec 32) (_ BitVec 64))) (size!6102 (_ BitVec 32))) )
))
(declare-datatypes ((array!2855 0))(
  ( (array!2856 (arr!1291 (Array (_ BitVec 32) List!7453)) (size!6103 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1522 0))(
  ( (LongMapFixedSize!1523 (defaultEntry!1117 Int) (mask!2561 (_ BitVec 32)) (extraKeys!1008 (_ BitVec 32)) (zeroValue!1018 List!7453) (minValue!1018 List!7453) (_size!1631 (_ BitVec 32)) (_keys!1055 array!2853) (_values!1040 array!2855) (_vacant!822 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2985 0))(
  ( (Cell!2986 (v!17640 LongMapFixedSize!1522)) )
))
(declare-datatypes ((MutLongMap!761 0))(
  ( (LongMap!761 (underlying!1705 Cell!2985)) (MutLongMapExt!760 (__x!5354 Int)) )
))
(declare-datatypes ((Cell!2987 0))(
  ( (Cell!2988 (v!17641 MutLongMap!761)) )
))
(declare-datatypes ((Hashable!733 0))(
  ( (HashableExt!732 (__x!5355 Int)) )
))
(declare-datatypes ((MutableMap!733 0))(
  ( (MutableMapExt!732 (__x!5356 Int)) (HashMap!733 (underlying!1706 Cell!2987) (hashF!2641 Hashable!733) (_size!1632 (_ BitVec 32)) (defaultValue!884 Int)) )
))
(declare-datatypes ((CacheUp!376 0))(
  ( (CacheUp!377 (cache!1120 MutableMap!733)) )
))
(declare-fun cacheUp!457 () CacheUp!376)

(declare-fun mapDefault!3050 () List!7453)

(assert (=> b!690577 (= condMapEmpty!3052 (= (arr!1291 (_values!1040 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))) ((as const (Array (_ BitVec 32) List!7453)) mapDefault!3050)))))

(declare-fun b!690578 () Bool)

(declare-fun e!434288 () Bool)

(declare-datatypes ((List!7454 0))(
  ( (Nil!7440) (Cons!7440 (h!12841 C!4264) (t!87270 List!7454)) )
))
(declare-datatypes ((IArray!5257 0))(
  ( (IArray!5258 (innerList!2686 List!7454)) )
))
(declare-datatypes ((Conc!2628 0))(
  ( (Node!2628 (left!5974 Conc!2628) (right!6304 Conc!2628) (csize!5486 Int) (cheight!2839 Int)) (Leaf!3897 (xs!5279 IArray!5257) (csize!5487 Int)) (Empty!2628) )
))
(declare-datatypes ((BalanceConc!5268 0))(
  ( (BalanceConc!5269 (c!121540 Conc!2628)) )
))
(declare-fun input!756 () BalanceConc!5268)

(declare-fun tp!207441 () Bool)

(declare-fun inv!9535 (Conc!2628) Bool)

(assert (=> b!690578 (= e!434288 (and (inv!9535 (c!121540 input!756)) tp!207441))))

(declare-fun res!313352 () Bool)

(declare-fun e!434277 () Bool)

(assert (=> start!66032 (=> (not res!313352) (not e!434277))))

(declare-datatypes ((LexerInterface!1307 0))(
  ( (LexerInterfaceExt!1304 (__x!5357 Int)) (Lexer!1305) )
))
(declare-fun thiss!12183 () LexerInterface!1307)

(get-info :version)

(assert (=> start!66032 (= res!313352 ((_ is Lexer!1305) thiss!12183))))

(assert (=> start!66032 e!434277))

(declare-datatypes ((Hashable!734 0))(
  ( (HashableExt!733 (__x!5358 Int)) )
))
(declare-datatypes ((tuple2!7840 0))(
  ( (tuple2!7841 (_1!4328 (InoxSet Context!482)) (_2!4328 Int)) )
))
(declare-datatypes ((tuple2!7842 0))(
  ( (tuple2!7843 (_1!4329 tuple2!7840) (_2!4329 Int)) )
))
(declare-datatypes ((List!7455 0))(
  ( (Nil!7441) (Cons!7441 (h!12842 tuple2!7842) (t!87271 List!7455)) )
))
(declare-datatypes ((array!2857 0))(
  ( (array!2858 (arr!1292 (Array (_ BitVec 32) List!7455)) (size!6104 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1524 0))(
  ( (LongMapFixedSize!1525 (defaultEntry!1118 Int) (mask!2562 (_ BitVec 32)) (extraKeys!1009 (_ BitVec 32)) (zeroValue!1019 List!7455) (minValue!1019 List!7455) (_size!1633 (_ BitVec 32)) (_keys!1056 array!2853) (_values!1041 array!2857) (_vacant!823 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2989 0))(
  ( (Cell!2990 (v!17642 LongMapFixedSize!1524)) )
))
(declare-datatypes ((MutLongMap!762 0))(
  ( (LongMap!762 (underlying!1707 Cell!2989)) (MutLongMapExt!761 (__x!5359 Int)) )
))
(declare-datatypes ((Cell!2991 0))(
  ( (Cell!2992 (v!17643 MutLongMap!762)) )
))
(declare-datatypes ((MutableMap!734 0))(
  ( (MutableMapExt!733 (__x!5360 Int)) (HashMap!734 (underlying!1708 Cell!2991) (hashF!2642 Hashable!734) (_size!1634 (_ BitVec 32)) (defaultValue!885 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!36 0))(
  ( (CacheFindLongestMatch!37 (cache!1121 MutableMap!734) (totalInput!1797 BalanceConc!5268)) )
))
(declare-fun cacheFindLongestMatch!59 () CacheFindLongestMatch!36)

(declare-fun e!434285 () Bool)

(declare-fun inv!9536 (CacheFindLongestMatch!36) Bool)

(assert (=> start!66032 (and (inv!9536 cacheFindLongestMatch!59) e!434285)))

(declare-fun inv!9537 (BalanceConc!5268) Bool)

(assert (=> start!66032 (and (inv!9537 input!756) e!434288)))

(declare-fun e!434289 () Bool)

(declare-fun inv!9538 (CacheUp!376) Bool)

(assert (=> start!66032 (and (inv!9538 cacheUp!457) e!434289)))

(declare-datatypes ((tuple3!708 0))(
  ( (tuple3!709 (_1!4330 Regex!1831) (_2!4330 Context!482) (_3!408 C!4264)) )
))
(declare-datatypes ((tuple2!7844 0))(
  ( (tuple2!7845 (_1!4331 tuple3!708) (_2!4331 (InoxSet Context!482))) )
))
(declare-datatypes ((List!7456 0))(
  ( (Nil!7442) (Cons!7442 (h!12843 tuple2!7844) (t!87272 List!7456)) )
))
(declare-datatypes ((array!2859 0))(
  ( (array!2860 (arr!1293 (Array (_ BitVec 32) List!7456)) (size!6105 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1526 0))(
  ( (LongMapFixedSize!1527 (defaultEntry!1119 Int) (mask!2563 (_ BitVec 32)) (extraKeys!1010 (_ BitVec 32)) (zeroValue!1020 List!7456) (minValue!1020 List!7456) (_size!1635 (_ BitVec 32)) (_keys!1057 array!2853) (_values!1042 array!2859) (_vacant!824 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2993 0))(
  ( (Cell!2994 (v!17644 LongMapFixedSize!1526)) )
))
(declare-datatypes ((MutLongMap!763 0))(
  ( (LongMap!763 (underlying!1709 Cell!2993)) (MutLongMapExt!762 (__x!5361 Int)) )
))
(declare-datatypes ((Cell!2995 0))(
  ( (Cell!2996 (v!17645 MutLongMap!763)) )
))
(declare-datatypes ((Hashable!735 0))(
  ( (HashableExt!734 (__x!5362 Int)) )
))
(declare-datatypes ((MutableMap!735 0))(
  ( (MutableMapExt!734 (__x!5363 Int)) (HashMap!735 (underlying!1710 Cell!2995) (hashF!2643 Hashable!735) (_size!1636 (_ BitVec 32)) (defaultValue!886 Int)) )
))
(declare-datatypes ((CacheDown!380 0))(
  ( (CacheDown!381 (cache!1122 MutableMap!735)) )
))
(declare-fun cacheDown!470 () CacheDown!380)

(declare-fun e!434271 () Bool)

(declare-fun inv!9539 (CacheDown!380) Bool)

(assert (=> start!66032 (and (inv!9539 cacheDown!470) e!434271)))

(assert (=> start!66032 true))

(declare-fun e!434295 () Bool)

(assert (=> start!66032 e!434295))

(declare-fun e!434283 () Bool)

(declare-fun e!434272 () Bool)

(assert (=> b!690579 (= e!434283 (and e!434272 tp!207452))))

(declare-fun mapNonEmpty!3050 () Bool)

(declare-fun tp!207445 () Bool)

(declare-fun tp!207430 () Bool)

(assert (=> mapNonEmpty!3050 (= mapRes!3052 (and tp!207445 tp!207430))))

(declare-fun mapValue!3051 () List!7453)

(declare-fun mapRest!3051 () (Array (_ BitVec 32) List!7453))

(declare-fun mapKey!3051 () (_ BitVec 32))

(assert (=> mapNonEmpty!3050 (= (arr!1291 (_values!1040 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))) (store mapRest!3051 mapKey!3051 mapValue!3051))))

(declare-fun b!690580 () Bool)

(declare-fun e!434297 () Bool)

(declare-fun e!434268 () Bool)

(assert (=> b!690580 (= e!434297 e!434268)))

(declare-fun b!690581 () Bool)

(declare-fun e!434284 () Bool)

(declare-fun e!434292 () Bool)

(assert (=> b!690581 (= e!434284 e!434292)))

(declare-fun b!690582 () Bool)

(declare-fun e!434293 () Bool)

(assert (=> b!690582 (= e!434271 e!434293)))

(declare-fun b!690583 () Bool)

(declare-fun e!434275 () Bool)

(assert (=> b!690583 (= e!434285 (and e!434283 (inv!9537 (totalInput!1797 cacheFindLongestMatch!59)) e!434275))))

(declare-fun tp!207431 () Bool)

(declare-fun tp!207436 () Bool)

(declare-fun array_inv!943 (array!2853) Bool)

(declare-fun array_inv!944 (array!2855) Bool)

(assert (=> b!690584 (= e!434292 (and tp!207438 tp!207431 tp!207436 (array_inv!943 (_keys!1055 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))) (array_inv!944 (_values!1040 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))) e!434273))))

(declare-fun b!690585 () Bool)

(declare-fun res!313356 () Bool)

(assert (=> b!690585 (=> (not res!313356) (not e!434277))))

(declare-datatypes ((String!9408 0))(
  ( (String!9409 (value!48191 String)) )
))
(declare-datatypes ((List!7457 0))(
  ( (Nil!7443) (Cons!7443 (h!12844 (_ BitVec 16)) (t!87273 List!7457)) )
))
(declare-datatypes ((TokenValue!1537 0))(
  ( (FloatLiteralValue!3074 (text!11204 List!7457)) (TokenValueExt!1536 (__x!5364 Int)) (Broken!7685 (value!48192 List!7457)) (Object!1550) (End!1537) (Def!1537) (Underscore!1537) (Match!1537) (Else!1537) (Error!1537) (Case!1537) (If!1537) (Extends!1537) (Abstract!1537) (Class!1537) (Val!1537) (DelimiterValue!3074 (del!1597 List!7457)) (KeywordValue!1543 (value!48193 List!7457)) (CommentValue!3074 (value!48194 List!7457)) (WhitespaceValue!3074 (value!48195 List!7457)) (IndentationValue!1537 (value!48196 List!7457)) (String!9410) (Int32!1537) (Broken!7686 (value!48197 List!7457)) (Boolean!1538) (Unit!12631) (OperatorValue!1540 (op!1597 List!7457)) (IdentifierValue!3074 (value!48198 List!7457)) (IdentifierValue!3075 (value!48199 List!7457)) (WhitespaceValue!3075 (value!48200 List!7457)) (True!3074) (False!3074) (Broken!7687 (value!48201 List!7457)) (Broken!7688 (value!48202 List!7457)) (True!3075) (RightBrace!1537) (RightBracket!1537) (Colon!1537) (Null!1537) (Comma!1537) (LeftBracket!1537) (False!3075) (LeftBrace!1537) (ImaginaryLiteralValue!1537 (text!11205 List!7457)) (StringLiteralValue!4611 (value!48203 List!7457)) (EOFValue!1537 (value!48204 List!7457)) (IdentValue!1537 (value!48205 List!7457)) (DelimiterValue!3075 (value!48206 List!7457)) (DedentValue!1537 (value!48207 List!7457)) (NewLineValue!1537 (value!48208 List!7457)) (IntegerValue!4611 (value!48209 (_ BitVec 32)) (text!11206 List!7457)) (IntegerValue!4612 (value!48210 Int) (text!11207 List!7457)) (Times!1537) (Or!1537) (Equal!1537) (Minus!1537) (Broken!7689 (value!48211 List!7457)) (And!1537) (Div!1537) (LessEqual!1537) (Mod!1537) (Concat!3369) (Not!1537) (Plus!1537) (SpaceValue!1537 (value!48212 List!7457)) (IntegerValue!4613 (value!48213 Int) (text!11208 List!7457)) (StringLiteralValue!4612 (text!11209 List!7457)) (FloatLiteralValue!3075 (text!11210 List!7457)) (BytesLiteralValue!1537 (value!48214 List!7457)) (CommentValue!3075 (value!48215 List!7457)) (StringLiteralValue!4613 (value!48216 List!7457)) (ErrorTokenValue!1537 (msg!1598 List!7457)) )
))
(declare-datatypes ((TokenValueInjection!2810 0))(
  ( (TokenValueInjection!2811 (toValue!2453 Int) (toChars!2312 Int)) )
))
(declare-datatypes ((Rule!2786 0))(
  ( (Rule!2787 (regex!1493 Regex!1831) (tag!1755 String!9408) (isSeparator!1493 Bool) (transformation!1493 TokenValueInjection!2810)) )
))
(declare-datatypes ((List!7458 0))(
  ( (Nil!7444) (Cons!7444 (h!12845 Rule!2786) (t!87274 List!7458)) )
))
(declare-fun rules!1357 () List!7458)

(declare-fun isEmpty!4861 (List!7458) Bool)

(assert (=> b!690585 (= res!313356 (not (isEmpty!4861 rules!1357)))))

(declare-fun b!690586 () Bool)

(declare-fun res!313350 () Bool)

(assert (=> b!690586 (=> (not res!313350) (not e!434277))))

(declare-fun valid!647 (CacheFindLongestMatch!36) Bool)

(assert (=> b!690586 (= res!313350 (valid!647 cacheFindLongestMatch!59))))

(declare-fun b!690587 () Bool)

(declare-fun e!434296 () Bool)

(declare-fun tp!207456 () Bool)

(assert (=> b!690587 (= e!434295 (and e!434296 tp!207456))))

(declare-fun b!690588 () Bool)

(declare-fun e!434281 () Bool)

(assert (=> b!690588 (= e!434289 e!434281)))

(declare-fun mapIsEmpty!3050 () Bool)

(assert (=> mapIsEmpty!3050 mapRes!3052))

(declare-fun tp!207435 () Bool)

(declare-fun e!434290 () Bool)

(declare-fun b!690589 () Bool)

(declare-fun inv!9531 (String!9408) Bool)

(declare-fun inv!9540 (TokenValueInjection!2810) Bool)

(assert (=> b!690589 (= e!434296 (and tp!207435 (inv!9531 (tag!1755 (h!12845 rules!1357))) (inv!9540 (transformation!1493 (h!12845 rules!1357))) e!434290))))

(declare-fun b!690590 () Bool)

(declare-fun res!313351 () Bool)

(assert (=> b!690590 (=> (not res!313351) (not e!434277))))

(declare-fun valid!648 (CacheDown!380) Bool)

(assert (=> b!690590 (= res!313351 (valid!648 cacheDown!470))))

(declare-fun tp!207453 () Bool)

(declare-fun tp!207444 () Bool)

(declare-fun e!434276 () Bool)

(declare-fun array_inv!945 (array!2857) Bool)

(assert (=> b!690591 (= e!434268 (and tp!207448 tp!207453 tp!207444 (array_inv!943 (_keys!1056 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))) (array_inv!945 (_values!1041 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))) e!434276))))

(declare-fun b!690592 () Bool)

(declare-fun tp!207439 () Bool)

(assert (=> b!690592 (= e!434275 (and (inv!9535 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) tp!207439))))

(declare-fun mapNonEmpty!3051 () Bool)

(declare-fun mapRes!3050 () Bool)

(declare-fun tp!207434 () Bool)

(declare-fun tp!207433 () Bool)

(assert (=> mapNonEmpty!3051 (= mapRes!3050 (and tp!207434 tp!207433))))

(declare-fun mapValue!3052 () List!7455)

(declare-fun mapKey!3052 () (_ BitVec 32))

(declare-fun mapRest!3050 () (Array (_ BitVec 32) List!7455))

(assert (=> mapNonEmpty!3051 (= (arr!1292 (_values!1041 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))) (store mapRest!3050 mapKey!3052 mapValue!3052))))

(declare-fun mapIsEmpty!3051 () Bool)

(declare-fun mapRes!3051 () Bool)

(assert (=> mapIsEmpty!3051 mapRes!3051))

(declare-fun e!434278 () Bool)

(assert (=> b!690593 (= e!434293 (and e!434278 tp!207449))))

(declare-fun e!434267 () Bool)

(assert (=> b!690594 (= e!434281 (and e!434267 tp!207447))))

(declare-fun mapNonEmpty!3052 () Bool)

(declare-fun tp!207440 () Bool)

(declare-fun tp!207450 () Bool)

(assert (=> mapNonEmpty!3052 (= mapRes!3051 (and tp!207440 tp!207450))))

(declare-fun mapValue!3050 () List!7456)

(declare-fun mapRest!3052 () (Array (_ BitVec 32) List!7456))

(declare-fun mapKey!3050 () (_ BitVec 32))

(assert (=> mapNonEmpty!3052 (= (arr!1293 (_values!1042 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))) (store mapRest!3052 mapKey!3050 mapValue!3050))))

(declare-fun b!690595 () Bool)

(declare-fun e!434291 () Bool)

(declare-fun e!434287 () Bool)

(assert (=> b!690595 (= e!434291 e!434287)))

(declare-fun b!690596 () Bool)

(declare-fun res!313353 () Bool)

(assert (=> b!690596 (=> (not res!313353) (not e!434277))))

(declare-fun valid!649 (CacheUp!376) Bool)

(assert (=> b!690596 (= res!313353 (valid!649 cacheUp!457))))

(declare-fun b!690597 () Bool)

(declare-fun lt!284493 () MutLongMap!763)

(assert (=> b!690597 (= e!434278 (and e!434291 ((_ is LongMap!763) lt!284493)))))

(assert (=> b!690597 (= lt!284493 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))

(declare-fun b!690598 () Bool)

(declare-fun e!434270 () Bool)

(declare-fun lt!284492 () MutLongMap!762)

(assert (=> b!690598 (= e!434272 (and e!434270 ((_ is LongMap!762) lt!284492)))))

(assert (=> b!690598 (= lt!284492 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))

(declare-fun e!434269 () Bool)

(declare-fun e!434294 () Bool)

(declare-fun tp!207442 () Bool)

(declare-fun tp!207451 () Bool)

(declare-fun array_inv!946 (array!2859) Bool)

(assert (=> b!690599 (= e!434269 (and tp!207455 tp!207442 tp!207451 (array_inv!943 (_keys!1057 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))) (array_inv!946 (_values!1042 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))) e!434294))))

(assert (=> b!690600 (= e!434290 (and tp!207443 tp!207454))))

(declare-fun b!690601 () Bool)

(declare-fun res!313355 () Bool)

(assert (=> b!690601 (=> (not res!313355) (not e!434277))))

(declare-fun rulesInvariant!1241 (LexerInterface!1307 List!7458) Bool)

(assert (=> b!690601 (= res!313355 (rulesInvariant!1241 thiss!12183 rules!1357))))

(declare-fun b!690602 () Bool)

(declare-fun size!6106 (BalanceConc!5268) Int)

(assert (=> b!690602 (= e!434277 (< (size!6106 input!756) 0))))

(declare-fun b!690603 () Bool)

(assert (=> b!690603 (= e!434270 e!434297)))

(declare-fun b!690604 () Bool)

(declare-fun e!434279 () Bool)

(assert (=> b!690604 (= e!434279 e!434284)))

(declare-fun b!690605 () Bool)

(assert (=> b!690605 (= e!434287 e!434269)))

(declare-fun mapIsEmpty!3052 () Bool)

(assert (=> mapIsEmpty!3052 mapRes!3050))

(declare-fun b!690606 () Bool)

(declare-fun res!313354 () Bool)

(assert (=> b!690606 (=> (not res!313354) (not e!434277))))

(assert (=> b!690606 (= res!313354 (= (totalInput!1797 cacheFindLongestMatch!59) input!756))))

(declare-fun b!690607 () Bool)

(declare-fun tp!207432 () Bool)

(assert (=> b!690607 (= e!434294 (and tp!207432 mapRes!3051))))

(declare-fun condMapEmpty!3050 () Bool)

(declare-fun mapDefault!3052 () List!7456)

(assert (=> b!690607 (= condMapEmpty!3050 (= (arr!1293 (_values!1042 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))) ((as const (Array (_ BitVec 32) List!7456)) mapDefault!3052)))))

(declare-fun b!690608 () Bool)

(declare-fun lt!284494 () MutLongMap!761)

(assert (=> b!690608 (= e!434267 (and e!434279 ((_ is LongMap!761) lt!284494)))))

(assert (=> b!690608 (= lt!284494 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))

(declare-fun b!690609 () Bool)

(declare-fun tp!207446 () Bool)

(assert (=> b!690609 (= e!434276 (and tp!207446 mapRes!3050))))

(declare-fun condMapEmpty!3051 () Bool)

(declare-fun mapDefault!3051 () List!7455)

(assert (=> b!690609 (= condMapEmpty!3051 (= (arr!1292 (_values!1041 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))) ((as const (Array (_ BitVec 32) List!7455)) mapDefault!3051)))))

(assert (= (and start!66032 res!313352) b!690585))

(assert (= (and b!690585 res!313356) b!690601))

(assert (= (and b!690601 res!313355) b!690596))

(assert (= (and b!690596 res!313353) b!690590))

(assert (= (and b!690590 res!313351) b!690586))

(assert (= (and b!690586 res!313350) b!690606))

(assert (= (and b!690606 res!313354) b!690602))

(assert (= (and b!690609 condMapEmpty!3051) mapIsEmpty!3052))

(assert (= (and b!690609 (not condMapEmpty!3051)) mapNonEmpty!3051))

(assert (= b!690591 b!690609))

(assert (= b!690580 b!690591))

(assert (= b!690603 b!690580))

(assert (= (and b!690598 ((_ is LongMap!762) (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))) b!690603))

(assert (= b!690579 b!690598))

(assert (= (and b!690583 ((_ is HashMap!734) (cache!1121 cacheFindLongestMatch!59))) b!690579))

(assert (= b!690583 b!690592))

(assert (= start!66032 b!690583))

(assert (= start!66032 b!690578))

(assert (= (and b!690577 condMapEmpty!3052) mapIsEmpty!3050))

(assert (= (and b!690577 (not condMapEmpty!3052)) mapNonEmpty!3050))

(assert (= b!690584 b!690577))

(assert (= b!690581 b!690584))

(assert (= b!690604 b!690581))

(assert (= (and b!690608 ((_ is LongMap!761) (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))) b!690604))

(assert (= b!690594 b!690608))

(assert (= (and b!690588 ((_ is HashMap!733) (cache!1120 cacheUp!457))) b!690594))

(assert (= start!66032 b!690588))

(assert (= (and b!690607 condMapEmpty!3050) mapIsEmpty!3051))

(assert (= (and b!690607 (not condMapEmpty!3050)) mapNonEmpty!3052))

(assert (= b!690599 b!690607))

(assert (= b!690605 b!690599))

(assert (= b!690595 b!690605))

(assert (= (and b!690597 ((_ is LongMap!763) (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))) b!690595))

(assert (= b!690593 b!690597))

(assert (= (and b!690582 ((_ is HashMap!735) (cache!1122 cacheDown!470))) b!690593))

(assert (= start!66032 b!690582))

(assert (= b!690589 b!690600))

(assert (= b!690587 b!690589))

(assert (= (and start!66032 ((_ is Cons!7444) rules!1357)) b!690587))

(declare-fun m!946805 () Bool)

(assert (=> mapNonEmpty!3050 m!946805))

(declare-fun m!946807 () Bool)

(assert (=> b!690584 m!946807))

(declare-fun m!946809 () Bool)

(assert (=> b!690584 m!946809))

(declare-fun m!946811 () Bool)

(assert (=> b!690578 m!946811))

(declare-fun m!946813 () Bool)

(assert (=> b!690592 m!946813))

(declare-fun m!946815 () Bool)

(assert (=> b!690596 m!946815))

(declare-fun m!946817 () Bool)

(assert (=> b!690585 m!946817))

(declare-fun m!946819 () Bool)

(assert (=> b!690591 m!946819))

(declare-fun m!946821 () Bool)

(assert (=> b!690591 m!946821))

(declare-fun m!946823 () Bool)

(assert (=> b!690589 m!946823))

(declare-fun m!946825 () Bool)

(assert (=> b!690589 m!946825))

(declare-fun m!946827 () Bool)

(assert (=> b!690583 m!946827))

(declare-fun m!946829 () Bool)

(assert (=> b!690599 m!946829))

(declare-fun m!946831 () Bool)

(assert (=> b!690599 m!946831))

(declare-fun m!946833 () Bool)

(assert (=> b!690590 m!946833))

(declare-fun m!946835 () Bool)

(assert (=> b!690586 m!946835))

(declare-fun m!946837 () Bool)

(assert (=> start!66032 m!946837))

(declare-fun m!946839 () Bool)

(assert (=> start!66032 m!946839))

(declare-fun m!946841 () Bool)

(assert (=> start!66032 m!946841))

(declare-fun m!946843 () Bool)

(assert (=> start!66032 m!946843))

(declare-fun m!946845 () Bool)

(assert (=> mapNonEmpty!3051 m!946845))

(declare-fun m!946847 () Bool)

(assert (=> mapNonEmpty!3052 m!946847))

(declare-fun m!946849 () Bool)

(assert (=> b!690602 m!946849))

(declare-fun m!946851 () Bool)

(assert (=> b!690601 m!946851))

(check-sat (not b_next!19603) (not b!690601) (not b_next!19607) b_and!63335 b_and!63329 (not b!690577) (not b_next!19605) (not mapNonEmpty!3051) (not b!690602) (not b_next!19595) (not mapNonEmpty!3052) (not b_next!19593) (not b!690609) b_and!63323 (not b!690585) (not b_next!19597) b_and!63327 (not b_next!19601) (not b!690584) (not b!690586) b_and!63331 (not b!690590) (not b!690591) (not b!690592) (not b_next!19599) (not b!690583) b_and!63337 b_and!63325 (not start!66032) (not b!690596) b_and!63333 (not b!690607) (not mapNonEmpty!3050) (not b!690589) (not b!690587) (not b!690578) (not b!690599))
(check-sat (not b_next!19603) (not b_next!19607) b_and!63335 (not b_next!19595) (not b_next!19597) b_and!63331 b_and!63329 b_and!63325 (not b_next!19605) b_and!63333 (not b_next!19593) b_and!63323 (not b_next!19601) b_and!63327 (not b_next!19599) b_and!63337)
(get-model)

(declare-fun d!232399 () Bool)

(declare-fun validCacheMapFindLongestMatch!5 (MutableMap!734 BalanceConc!5268) Bool)

(assert (=> d!232399 (= (valid!647 cacheFindLongestMatch!59) (validCacheMapFindLongestMatch!5 (cache!1121 cacheFindLongestMatch!59) (totalInput!1797 cacheFindLongestMatch!59)))))

(declare-fun bs!136872 () Bool)

(assert (= bs!136872 d!232399))

(declare-fun m!946853 () Bool)

(assert (=> bs!136872 m!946853))

(assert (=> b!690586 d!232399))

(declare-fun d!232401 () Bool)

(assert (=> d!232401 (= (isEmpty!4861 rules!1357) ((_ is Nil!7444) rules!1357))))

(assert (=> b!690585 d!232401))

(declare-fun d!232403 () Bool)

(declare-fun lt!284497 () Int)

(declare-fun size!6107 (List!7454) Int)

(declare-fun list!3124 (BalanceConc!5268) List!7454)

(assert (=> d!232403 (= lt!284497 (size!6107 (list!3124 input!756)))))

(declare-fun size!6108 (Conc!2628) Int)

(assert (=> d!232403 (= lt!284497 (size!6108 (c!121540 input!756)))))

(assert (=> d!232403 (= (size!6106 input!756) lt!284497)))

(declare-fun bs!136873 () Bool)

(assert (= bs!136873 d!232403))

(declare-fun m!946855 () Bool)

(assert (=> bs!136873 m!946855))

(assert (=> bs!136873 m!946855))

(declare-fun m!946857 () Bool)

(assert (=> bs!136873 m!946857))

(declare-fun m!946859 () Bool)

(assert (=> bs!136873 m!946859))

(assert (=> b!690602 d!232403))

(declare-fun d!232405 () Bool)

(declare-fun validCacheMapUp!59 (MutableMap!733) Bool)

(assert (=> d!232405 (= (valid!649 cacheUp!457) (validCacheMapUp!59 (cache!1120 cacheUp!457)))))

(declare-fun bs!136874 () Bool)

(assert (= bs!136874 d!232405))

(declare-fun m!946861 () Bool)

(assert (=> bs!136874 m!946861))

(assert (=> b!690596 d!232405))

(declare-fun d!232407 () Bool)

(declare-fun c!121543 () Bool)

(assert (=> d!232407 (= c!121543 ((_ is Node!2628) (c!121540 input!756)))))

(declare-fun e!434302 () Bool)

(assert (=> d!232407 (= (inv!9535 (c!121540 input!756)) e!434302)))

(declare-fun b!690616 () Bool)

(declare-fun inv!9541 (Conc!2628) Bool)

(assert (=> b!690616 (= e!434302 (inv!9541 (c!121540 input!756)))))

(declare-fun b!690617 () Bool)

(declare-fun e!434303 () Bool)

(assert (=> b!690617 (= e!434302 e!434303)))

(declare-fun res!313359 () Bool)

(assert (=> b!690617 (= res!313359 (not ((_ is Leaf!3897) (c!121540 input!756))))))

(assert (=> b!690617 (=> res!313359 e!434303)))

(declare-fun b!690618 () Bool)

(declare-fun inv!9542 (Conc!2628) Bool)

(assert (=> b!690618 (= e!434303 (inv!9542 (c!121540 input!756)))))

(assert (= (and d!232407 c!121543) b!690616))

(assert (= (and d!232407 (not c!121543)) b!690617))

(assert (= (and b!690617 (not res!313359)) b!690618))

(declare-fun m!946863 () Bool)

(assert (=> b!690616 m!946863))

(declare-fun m!946865 () Bool)

(assert (=> b!690618 m!946865))

(assert (=> b!690578 d!232407))

(declare-fun d!232409 () Bool)

(assert (=> d!232409 (= (array_inv!943 (_keys!1057 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))) (bvsge (size!6102 (_keys!1057 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!690599 d!232409))

(declare-fun d!232411 () Bool)

(assert (=> d!232411 (= (array_inv!946 (_values!1042 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))) (bvsge (size!6105 (_values!1042 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!690599 d!232411))

(declare-fun d!232413 () Bool)

(assert (=> d!232413 (= (array_inv!943 (_keys!1056 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))) (bvsge (size!6102 (_keys!1056 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))) #b00000000000000000000000000000000))))

(assert (=> b!690591 d!232413))

(declare-fun d!232415 () Bool)

(assert (=> d!232415 (= (array_inv!945 (_values!1041 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))) (bvsge (size!6104 (_values!1041 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))) #b00000000000000000000000000000000))))

(assert (=> b!690591 d!232415))

(declare-fun d!232417 () Bool)

(declare-fun validCacheMapDown!59 (MutableMap!735) Bool)

(assert (=> d!232417 (= (valid!648 cacheDown!470) (validCacheMapDown!59 (cache!1122 cacheDown!470)))))

(declare-fun bs!136875 () Bool)

(assert (= bs!136875 d!232417))

(declare-fun m!946867 () Bool)

(assert (=> bs!136875 m!946867))

(assert (=> b!690590 d!232417))

(declare-fun d!232419 () Bool)

(declare-fun res!313362 () Bool)

(declare-fun e!434306 () Bool)

(assert (=> d!232419 (=> (not res!313362) (not e!434306))))

(assert (=> d!232419 (= res!313362 ((_ is HashMap!734) (cache!1121 cacheFindLongestMatch!59)))))

(assert (=> d!232419 (= (inv!9536 cacheFindLongestMatch!59) e!434306)))

(declare-fun b!690621 () Bool)

(assert (=> b!690621 (= e!434306 (validCacheMapFindLongestMatch!5 (cache!1121 cacheFindLongestMatch!59) (totalInput!1797 cacheFindLongestMatch!59)))))

(assert (= (and d!232419 res!313362) b!690621))

(assert (=> b!690621 m!946853))

(assert (=> start!66032 d!232419))

(declare-fun d!232421 () Bool)

(declare-fun isBalanced!694 (Conc!2628) Bool)

(assert (=> d!232421 (= (inv!9537 input!756) (isBalanced!694 (c!121540 input!756)))))

(declare-fun bs!136876 () Bool)

(assert (= bs!136876 d!232421))

(declare-fun m!946869 () Bool)

(assert (=> bs!136876 m!946869))

(assert (=> start!66032 d!232421))

(declare-fun d!232423 () Bool)

(declare-fun res!313365 () Bool)

(declare-fun e!434309 () Bool)

(assert (=> d!232423 (=> (not res!313365) (not e!434309))))

(assert (=> d!232423 (= res!313365 ((_ is HashMap!733) (cache!1120 cacheUp!457)))))

(assert (=> d!232423 (= (inv!9538 cacheUp!457) e!434309)))

(declare-fun b!690624 () Bool)

(assert (=> b!690624 (= e!434309 (validCacheMapUp!59 (cache!1120 cacheUp!457)))))

(assert (= (and d!232423 res!313365) b!690624))

(assert (=> b!690624 m!946861))

(assert (=> start!66032 d!232423))

(declare-fun d!232425 () Bool)

(declare-fun res!313368 () Bool)

(declare-fun e!434312 () Bool)

(assert (=> d!232425 (=> (not res!313368) (not e!434312))))

(assert (=> d!232425 (= res!313368 ((_ is HashMap!735) (cache!1122 cacheDown!470)))))

(assert (=> d!232425 (= (inv!9539 cacheDown!470) e!434312)))

(declare-fun b!690627 () Bool)

(assert (=> b!690627 (= e!434312 (validCacheMapDown!59 (cache!1122 cacheDown!470)))))

(assert (= (and d!232425 res!313368) b!690627))

(assert (=> b!690627 m!946867))

(assert (=> start!66032 d!232425))

(declare-fun d!232427 () Bool)

(assert (=> d!232427 (= (inv!9531 (tag!1755 (h!12845 rules!1357))) (= (mod (str.len (value!48191 (tag!1755 (h!12845 rules!1357)))) 2) 0))))

(assert (=> b!690589 d!232427))

(declare-fun d!232429 () Bool)

(declare-fun res!313371 () Bool)

(declare-fun e!434315 () Bool)

(assert (=> d!232429 (=> (not res!313371) (not e!434315))))

(declare-fun semiInverseModEq!569 (Int Int) Bool)

(assert (=> d!232429 (= res!313371 (semiInverseModEq!569 (toChars!2312 (transformation!1493 (h!12845 rules!1357))) (toValue!2453 (transformation!1493 (h!12845 rules!1357)))))))

(assert (=> d!232429 (= (inv!9540 (transformation!1493 (h!12845 rules!1357))) e!434315)))

(declare-fun b!690630 () Bool)

(declare-fun equivClasses!544 (Int Int) Bool)

(assert (=> b!690630 (= e!434315 (equivClasses!544 (toChars!2312 (transformation!1493 (h!12845 rules!1357))) (toValue!2453 (transformation!1493 (h!12845 rules!1357)))))))

(assert (= (and d!232429 res!313371) b!690630))

(declare-fun m!946871 () Bool)

(assert (=> d!232429 m!946871))

(declare-fun m!946873 () Bool)

(assert (=> b!690630 m!946873))

(assert (=> b!690589 d!232429))

(declare-fun d!232431 () Bool)

(assert (=> d!232431 (= (array_inv!943 (_keys!1055 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))) (bvsge (size!6102 (_keys!1055 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))) #b00000000000000000000000000000000))))

(assert (=> b!690584 d!232431))

(declare-fun d!232433 () Bool)

(assert (=> d!232433 (= (array_inv!944 (_values!1040 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))) (bvsge (size!6103 (_values!1040 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))) #b00000000000000000000000000000000))))

(assert (=> b!690584 d!232433))

(declare-fun d!232435 () Bool)

(declare-fun res!313374 () Bool)

(declare-fun e!434318 () Bool)

(assert (=> d!232435 (=> (not res!313374) (not e!434318))))

(declare-fun rulesValid!526 (LexerInterface!1307 List!7458) Bool)

(assert (=> d!232435 (= res!313374 (rulesValid!526 thiss!12183 rules!1357))))

(assert (=> d!232435 (= (rulesInvariant!1241 thiss!12183 rules!1357) e!434318)))

(declare-fun b!690633 () Bool)

(declare-datatypes ((List!7459 0))(
  ( (Nil!7445) (Cons!7445 (h!12846 String!9408) (t!87275 List!7459)) )
))
(declare-fun noDuplicateTag!526 (LexerInterface!1307 List!7458 List!7459) Bool)

(assert (=> b!690633 (= e!434318 (noDuplicateTag!526 thiss!12183 rules!1357 Nil!7445))))

(assert (= (and d!232435 res!313374) b!690633))

(declare-fun m!946875 () Bool)

(assert (=> d!232435 m!946875))

(declare-fun m!946877 () Bool)

(assert (=> b!690633 m!946877))

(assert (=> b!690601 d!232435))

(declare-fun d!232437 () Bool)

(assert (=> d!232437 (= (inv!9537 (totalInput!1797 cacheFindLongestMatch!59)) (isBalanced!694 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))))

(declare-fun bs!136877 () Bool)

(assert (= bs!136877 d!232437))

(declare-fun m!946879 () Bool)

(assert (=> bs!136877 m!946879))

(assert (=> b!690583 d!232437))

(declare-fun d!232439 () Bool)

(declare-fun c!121544 () Bool)

(assert (=> d!232439 (= c!121544 ((_ is Node!2628) (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))))

(declare-fun e!434319 () Bool)

(assert (=> d!232439 (= (inv!9535 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) e!434319)))

(declare-fun b!690634 () Bool)

(assert (=> b!690634 (= e!434319 (inv!9541 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))))

(declare-fun b!690635 () Bool)

(declare-fun e!434320 () Bool)

(assert (=> b!690635 (= e!434319 e!434320)))

(declare-fun res!313375 () Bool)

(assert (=> b!690635 (= res!313375 (not ((_ is Leaf!3897) (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))

(assert (=> b!690635 (=> res!313375 e!434320)))

(declare-fun b!690636 () Bool)

(assert (=> b!690636 (= e!434320 (inv!9542 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))))

(assert (= (and d!232439 c!121544) b!690634))

(assert (= (and d!232439 (not c!121544)) b!690635))

(assert (= (and b!690635 (not res!313375)) b!690636))

(declare-fun m!946881 () Bool)

(assert (=> b!690634 m!946881))

(declare-fun m!946883 () Bool)

(assert (=> b!690636 m!946883))

(assert (=> b!690592 d!232439))

(declare-fun b!690647 () Bool)

(declare-fun b_free!19545 () Bool)

(declare-fun b_next!19609 () Bool)

(assert (=> b!690647 (= b_free!19545 (not b_next!19609))))

(declare-fun tp!207468 () Bool)

(declare-fun b_and!63339 () Bool)

(assert (=> b!690647 (= tp!207468 b_and!63339)))

(declare-fun b_free!19547 () Bool)

(declare-fun b_next!19611 () Bool)

(assert (=> b!690647 (= b_free!19547 (not b_next!19611))))

(declare-fun tp!207465 () Bool)

(declare-fun b_and!63341 () Bool)

(assert (=> b!690647 (= tp!207465 b_and!63341)))

(declare-fun e!434329 () Bool)

(assert (=> b!690647 (= e!434329 (and tp!207468 tp!207465))))

(declare-fun e!434332 () Bool)

(declare-fun b!690646 () Bool)

(declare-fun tp!207466 () Bool)

(assert (=> b!690646 (= e!434332 (and tp!207466 (inv!9531 (tag!1755 (h!12845 (t!87274 rules!1357)))) (inv!9540 (transformation!1493 (h!12845 (t!87274 rules!1357)))) e!434329))))

(declare-fun b!690645 () Bool)

(declare-fun e!434331 () Bool)

(declare-fun tp!207467 () Bool)

(assert (=> b!690645 (= e!434331 (and e!434332 tp!207467))))

(assert (=> b!690587 (= tp!207456 e!434331)))

(assert (= b!690646 b!690647))

(assert (= b!690645 b!690646))

(assert (= (and b!690587 ((_ is Cons!7444) (t!87274 rules!1357))) b!690645))

(declare-fun m!946885 () Bool)

(assert (=> b!690646 m!946885))

(declare-fun m!946887 () Bool)

(assert (=> b!690646 m!946887))

(declare-fun b!690656 () Bool)

(declare-fun e!434341 () Bool)

(declare-fun tp!207478 () Bool)

(assert (=> b!690656 (= e!434341 tp!207478)))

(declare-fun tp!207480 () Bool)

(declare-fun setElem!3691 () Context!482)

(declare-fun setNonEmpty!3691 () Bool)

(declare-fun setRes!3691 () Bool)

(declare-fun inv!9543 (Context!482) Bool)

(assert (=> setNonEmpty!3691 (= setRes!3691 (and tp!207480 (inv!9543 setElem!3691) e!434341))))

(declare-fun setRest!3691 () (InoxSet Context!482))

(assert (=> setNonEmpty!3691 (= (_2!4327 (h!12840 mapDefault!3050)) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3691 true) setRest!3691))))

(declare-fun e!434339 () Bool)

(assert (=> b!690577 (= tp!207437 e!434339)))

(declare-fun b!690657 () Bool)

(declare-fun e!434340 () Bool)

(declare-fun tp!207477 () Bool)

(assert (=> b!690657 (= e!434340 tp!207477)))

(declare-fun setIsEmpty!3691 () Bool)

(assert (=> setIsEmpty!3691 setRes!3691))

(declare-fun tp!207479 () Bool)

(declare-fun tp_is_empty!3643 () Bool)

(declare-fun b!690658 () Bool)

(assert (=> b!690658 (= e!434339 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 mapDefault!3050)))) e!434340 tp_is_empty!3643 setRes!3691 tp!207479))))

(declare-fun condSetEmpty!3691 () Bool)

(assert (=> b!690658 (= condSetEmpty!3691 (= (_2!4327 (h!12840 mapDefault!3050)) ((as const (Array Context!482 Bool)) false)))))

(assert (= b!690658 b!690657))

(assert (= (and b!690658 condSetEmpty!3691) setIsEmpty!3691))

(assert (= (and b!690658 (not condSetEmpty!3691)) setNonEmpty!3691))

(assert (= setNonEmpty!3691 b!690656))

(assert (= (and b!690577 ((_ is Cons!7439) mapDefault!3050)) b!690658))

(declare-fun m!946889 () Bool)

(assert (=> setNonEmpty!3691 m!946889))

(declare-fun m!946891 () Bool)

(assert (=> b!690658 m!946891))

(declare-fun setIsEmpty!3696 () Bool)

(declare-fun setRes!3697 () Bool)

(assert (=> setIsEmpty!3696 setRes!3697))

(declare-fun mapNonEmpty!3055 () Bool)

(declare-fun mapRes!3055 () Bool)

(declare-fun tp!207505 () Bool)

(declare-fun e!434358 () Bool)

(assert (=> mapNonEmpty!3055 (= mapRes!3055 (and tp!207505 e!434358))))

(declare-fun mapKey!3055 () (_ BitVec 32))

(declare-fun mapRest!3055 () (Array (_ BitVec 32) List!7453))

(declare-fun mapValue!3055 () List!7453)

(assert (=> mapNonEmpty!3055 (= mapRest!3051 (store mapRest!3055 mapKey!3055 mapValue!3055))))

(declare-fun e!434355 () Bool)

(declare-fun setElem!3696 () Context!482)

(declare-fun tp!207500 () Bool)

(declare-fun setNonEmpty!3696 () Bool)

(assert (=> setNonEmpty!3696 (= setRes!3697 (and tp!207500 (inv!9543 setElem!3696) e!434355))))

(declare-fun setRest!3697 () (InoxSet Context!482))

(assert (=> setNonEmpty!3696 (= (_2!4327 (h!12840 mapValue!3055)) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3696 true) setRest!3697))))

(declare-fun setIsEmpty!3697 () Bool)

(declare-fun setRes!3696 () Bool)

(assert (=> setIsEmpty!3697 setRes!3696))

(declare-fun b!690673 () Bool)

(declare-fun e!434357 () Bool)

(declare-fun tp!207501 () Bool)

(assert (=> b!690673 (= e!434357 tp!207501)))

(declare-fun condMapEmpty!3055 () Bool)

(declare-fun mapDefault!3055 () List!7453)

(assert (=> mapNonEmpty!3050 (= condMapEmpty!3055 (= mapRest!3051 ((as const (Array (_ BitVec 32) List!7453)) mapDefault!3055)))))

(declare-fun e!434356 () Bool)

(assert (=> mapNonEmpty!3050 (= tp!207445 (and e!434356 mapRes!3055))))

(declare-fun mapIsEmpty!3055 () Bool)

(assert (=> mapIsEmpty!3055 mapRes!3055))

(declare-fun b!690674 () Bool)

(declare-fun e!434354 () Bool)

(declare-fun tp!207499 () Bool)

(assert (=> b!690674 (= e!434354 tp!207499)))

(declare-fun tp!207502 () Bool)

(declare-fun b!690675 () Bool)

(assert (=> b!690675 (= e!434356 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 mapDefault!3055)))) e!434357 tp_is_empty!3643 setRes!3696 tp!207502))))

(declare-fun condSetEmpty!3696 () Bool)

(assert (=> b!690675 (= condSetEmpty!3696 (= (_2!4327 (h!12840 mapDefault!3055)) ((as const (Array Context!482 Bool)) false)))))

(declare-fun e!434359 () Bool)

(declare-fun setNonEmpty!3697 () Bool)

(declare-fun tp!207506 () Bool)

(declare-fun setElem!3697 () Context!482)

(assert (=> setNonEmpty!3697 (= setRes!3696 (and tp!207506 (inv!9543 setElem!3697) e!434359))))

(declare-fun setRest!3696 () (InoxSet Context!482))

(assert (=> setNonEmpty!3697 (= (_2!4327 (h!12840 mapDefault!3055)) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3697 true) setRest!3696))))

(declare-fun tp!207504 () Bool)

(declare-fun b!690676 () Bool)

(assert (=> b!690676 (= e!434358 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 mapValue!3055)))) e!434354 tp_is_empty!3643 setRes!3697 tp!207504))))

(declare-fun condSetEmpty!3697 () Bool)

(assert (=> b!690676 (= condSetEmpty!3697 (= (_2!4327 (h!12840 mapValue!3055)) ((as const (Array Context!482 Bool)) false)))))

(declare-fun b!690677 () Bool)

(declare-fun tp!207507 () Bool)

(assert (=> b!690677 (= e!434355 tp!207507)))

(declare-fun b!690678 () Bool)

(declare-fun tp!207503 () Bool)

(assert (=> b!690678 (= e!434359 tp!207503)))

(assert (= (and mapNonEmpty!3050 condMapEmpty!3055) mapIsEmpty!3055))

(assert (= (and mapNonEmpty!3050 (not condMapEmpty!3055)) mapNonEmpty!3055))

(assert (= b!690676 b!690674))

(assert (= (and b!690676 condSetEmpty!3697) setIsEmpty!3696))

(assert (= (and b!690676 (not condSetEmpty!3697)) setNonEmpty!3696))

(assert (= setNonEmpty!3696 b!690677))

(assert (= (and mapNonEmpty!3055 ((_ is Cons!7439) mapValue!3055)) b!690676))

(assert (= b!690675 b!690673))

(assert (= (and b!690675 condSetEmpty!3696) setIsEmpty!3697))

(assert (= (and b!690675 (not condSetEmpty!3696)) setNonEmpty!3697))

(assert (= setNonEmpty!3697 b!690678))

(assert (= (and mapNonEmpty!3050 ((_ is Cons!7439) mapDefault!3055)) b!690675))

(declare-fun m!946893 () Bool)

(assert (=> setNonEmpty!3697 m!946893))

(declare-fun m!946895 () Bool)

(assert (=> setNonEmpty!3696 m!946895))

(declare-fun m!946897 () Bool)

(assert (=> b!690676 m!946897))

(declare-fun m!946899 () Bool)

(assert (=> b!690675 m!946899))

(declare-fun m!946901 () Bool)

(assert (=> mapNonEmpty!3055 m!946901))

(declare-fun b!690679 () Bool)

(declare-fun e!434362 () Bool)

(declare-fun tp!207509 () Bool)

(assert (=> b!690679 (= e!434362 tp!207509)))

(declare-fun tp!207511 () Bool)

(declare-fun setRes!3698 () Bool)

(declare-fun setNonEmpty!3698 () Bool)

(declare-fun setElem!3698 () Context!482)

(assert (=> setNonEmpty!3698 (= setRes!3698 (and tp!207511 (inv!9543 setElem!3698) e!434362))))

(declare-fun setRest!3698 () (InoxSet Context!482))

(assert (=> setNonEmpty!3698 (= (_2!4327 (h!12840 mapValue!3051)) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3698 true) setRest!3698))))

(declare-fun e!434360 () Bool)

(assert (=> mapNonEmpty!3050 (= tp!207430 e!434360)))

(declare-fun b!690680 () Bool)

(declare-fun e!434361 () Bool)

(declare-fun tp!207508 () Bool)

(assert (=> b!690680 (= e!434361 tp!207508)))

(declare-fun setIsEmpty!3698 () Bool)

(assert (=> setIsEmpty!3698 setRes!3698))

(declare-fun tp!207510 () Bool)

(declare-fun b!690681 () Bool)

(assert (=> b!690681 (= e!434360 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 mapValue!3051)))) e!434361 tp_is_empty!3643 setRes!3698 tp!207510))))

(declare-fun condSetEmpty!3698 () Bool)

(assert (=> b!690681 (= condSetEmpty!3698 (= (_2!4327 (h!12840 mapValue!3051)) ((as const (Array Context!482 Bool)) false)))))

(assert (= b!690681 b!690680))

(assert (= (and b!690681 condSetEmpty!3698) setIsEmpty!3698))

(assert (= (and b!690681 (not condSetEmpty!3698)) setNonEmpty!3698))

(assert (= setNonEmpty!3698 b!690679))

(assert (= (and mapNonEmpty!3050 ((_ is Cons!7439) mapValue!3051)) b!690681))

(declare-fun m!946903 () Bool)

(assert (=> setNonEmpty!3698 m!946903))

(declare-fun m!946905 () Bool)

(assert (=> b!690681 m!946905))

(declare-fun tp!207518 () Bool)

(declare-fun e!434368 () Bool)

(declare-fun b!690690 () Bool)

(declare-fun tp!207520 () Bool)

(assert (=> b!690690 (= e!434368 (and (inv!9535 (left!5974 (c!121540 input!756))) tp!207518 (inv!9535 (right!6304 (c!121540 input!756))) tp!207520))))

(declare-fun b!690692 () Bool)

(declare-fun e!434367 () Bool)

(declare-fun tp!207519 () Bool)

(assert (=> b!690692 (= e!434367 tp!207519)))

(declare-fun b!690691 () Bool)

(declare-fun inv!9544 (IArray!5257) Bool)

(assert (=> b!690691 (= e!434368 (and (inv!9544 (xs!5279 (c!121540 input!756))) e!434367))))

(assert (=> b!690578 (= tp!207441 (and (inv!9535 (c!121540 input!756)) e!434368))))

(assert (= (and b!690578 ((_ is Node!2628) (c!121540 input!756))) b!690690))

(assert (= b!690691 b!690692))

(assert (= (and b!690578 ((_ is Leaf!3897) (c!121540 input!756))) b!690691))

(declare-fun m!946907 () Bool)

(assert (=> b!690690 m!946907))

(declare-fun m!946909 () Bool)

(assert (=> b!690690 m!946909))

(declare-fun m!946911 () Bool)

(assert (=> b!690691 m!946911))

(assert (=> b!690578 m!946811))

(declare-fun b!690707 () Bool)

(declare-fun e!434384 () Bool)

(declare-fun tp!207548 () Bool)

(assert (=> b!690707 (= e!434384 tp!207548)))

(declare-fun b!690708 () Bool)

(declare-fun e!434386 () Bool)

(declare-fun tp!207547 () Bool)

(assert (=> b!690708 (= e!434386 tp!207547)))

(declare-fun setElem!3703 () Context!482)

(declare-fun setNonEmpty!3703 () Bool)

(declare-fun setRes!3704 () Bool)

(declare-fun tp!207544 () Bool)

(assert (=> setNonEmpty!3703 (= setRes!3704 (and tp!207544 (inv!9543 setElem!3703) e!434386))))

(declare-fun mapValue!3058 () List!7456)

(declare-fun setRest!3704 () (InoxSet Context!482))

(assert (=> setNonEmpty!3703 (= (_2!4331 (h!12843 mapValue!3058)) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3703 true) setRest!3704))))

(declare-fun tp!207551 () Bool)

(declare-fun b!690709 () Bool)

(declare-fun e!434382 () Bool)

(declare-fun tp!207545 () Bool)

(declare-fun e!434383 () Bool)

(assert (=> b!690709 (= e!434382 (and tp!207551 (inv!9543 (_2!4330 (_1!4331 (h!12843 mapValue!3058)))) e!434383 tp_is_empty!3643 setRes!3704 tp!207545))))

(declare-fun condSetEmpty!3704 () Bool)

(assert (=> b!690709 (= condSetEmpty!3704 (= (_2!4331 (h!12843 mapValue!3058)) ((as const (Array Context!482 Bool)) false)))))

(declare-fun b!690710 () Bool)

(declare-fun e!434385 () Bool)

(declare-fun tp!207546 () Bool)

(assert (=> b!690710 (= e!434385 tp!207546)))

(declare-fun setIsEmpty!3703 () Bool)

(assert (=> setIsEmpty!3703 setRes!3704))

(declare-fun b!690711 () Bool)

(declare-fun tp!207549 () Bool)

(assert (=> b!690711 (= e!434383 tp!207549)))

(declare-fun mapIsEmpty!3058 () Bool)

(declare-fun mapRes!3058 () Bool)

(assert (=> mapIsEmpty!3058 mapRes!3058))

(declare-fun condMapEmpty!3058 () Bool)

(declare-fun mapDefault!3058 () List!7456)

(assert (=> mapNonEmpty!3052 (= condMapEmpty!3058 (= mapRest!3052 ((as const (Array (_ BitVec 32) List!7456)) mapDefault!3058)))))

(declare-fun e!434381 () Bool)

(assert (=> mapNonEmpty!3052 (= tp!207440 (and e!434381 mapRes!3058))))

(declare-fun mapNonEmpty!3058 () Bool)

(declare-fun tp!207553 () Bool)

(assert (=> mapNonEmpty!3058 (= mapRes!3058 (and tp!207553 e!434382))))

(declare-fun mapKey!3058 () (_ BitVec 32))

(declare-fun mapRest!3058 () (Array (_ BitVec 32) List!7456))

(assert (=> mapNonEmpty!3058 (= mapRest!3052 (store mapRest!3058 mapKey!3058 mapValue!3058))))

(declare-fun setIsEmpty!3704 () Bool)

(declare-fun setRes!3703 () Bool)

(assert (=> setIsEmpty!3704 setRes!3703))

(declare-fun tp!207543 () Bool)

(declare-fun b!690712 () Bool)

(declare-fun tp!207552 () Bool)

(assert (=> b!690712 (= e!434381 (and tp!207552 (inv!9543 (_2!4330 (_1!4331 (h!12843 mapDefault!3058)))) e!434385 tp_is_empty!3643 setRes!3703 tp!207543))))

(declare-fun condSetEmpty!3703 () Bool)

(assert (=> b!690712 (= condSetEmpty!3703 (= (_2!4331 (h!12843 mapDefault!3058)) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setElem!3704 () Context!482)

(declare-fun tp!207550 () Bool)

(declare-fun setNonEmpty!3704 () Bool)

(assert (=> setNonEmpty!3704 (= setRes!3703 (and tp!207550 (inv!9543 setElem!3704) e!434384))))

(declare-fun setRest!3703 () (InoxSet Context!482))

(assert (=> setNonEmpty!3704 (= (_2!4331 (h!12843 mapDefault!3058)) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3704 true) setRest!3703))))

(assert (= (and mapNonEmpty!3052 condMapEmpty!3058) mapIsEmpty!3058))

(assert (= (and mapNonEmpty!3052 (not condMapEmpty!3058)) mapNonEmpty!3058))

(assert (= b!690709 b!690711))

(assert (= (and b!690709 condSetEmpty!3704) setIsEmpty!3703))

(assert (= (and b!690709 (not condSetEmpty!3704)) setNonEmpty!3703))

(assert (= setNonEmpty!3703 b!690708))

(assert (= (and mapNonEmpty!3058 ((_ is Cons!7442) mapValue!3058)) b!690709))

(assert (= b!690712 b!690710))

(assert (= (and b!690712 condSetEmpty!3703) setIsEmpty!3704))

(assert (= (and b!690712 (not condSetEmpty!3703)) setNonEmpty!3704))

(assert (= setNonEmpty!3704 b!690707))

(assert (= (and mapNonEmpty!3052 ((_ is Cons!7442) mapDefault!3058)) b!690712))

(declare-fun m!946913 () Bool)

(assert (=> b!690712 m!946913))

(declare-fun m!946915 () Bool)

(assert (=> b!690709 m!946915))

(declare-fun m!946917 () Bool)

(assert (=> mapNonEmpty!3058 m!946917))

(declare-fun m!946919 () Bool)

(assert (=> setNonEmpty!3703 m!946919))

(declare-fun m!946921 () Bool)

(assert (=> setNonEmpty!3704 m!946921))

(declare-fun e!434394 () Bool)

(declare-fun tp!207566 () Bool)

(declare-fun e!434395 () Bool)

(declare-fun tp!207568 () Bool)

(declare-fun setRes!3707 () Bool)

(declare-fun b!690721 () Bool)

(assert (=> b!690721 (= e!434395 (and tp!207566 (inv!9543 (_2!4330 (_1!4331 (h!12843 mapValue!3050)))) e!434394 tp_is_empty!3643 setRes!3707 tp!207568))))

(declare-fun condSetEmpty!3707 () Bool)

(assert (=> b!690721 (= condSetEmpty!3707 (= (_2!4331 (h!12843 mapValue!3050)) ((as const (Array Context!482 Bool)) false)))))

(assert (=> mapNonEmpty!3052 (= tp!207450 e!434395)))

(declare-fun b!690722 () Bool)

(declare-fun tp!207565 () Bool)

(assert (=> b!690722 (= e!434394 tp!207565)))

(declare-fun setIsEmpty!3707 () Bool)

(assert (=> setIsEmpty!3707 setRes!3707))

(declare-fun setElem!3707 () Context!482)

(declare-fun e!434393 () Bool)

(declare-fun setNonEmpty!3707 () Bool)

(declare-fun tp!207567 () Bool)

(assert (=> setNonEmpty!3707 (= setRes!3707 (and tp!207567 (inv!9543 setElem!3707) e!434393))))

(declare-fun setRest!3707 () (InoxSet Context!482))

(assert (=> setNonEmpty!3707 (= (_2!4331 (h!12843 mapValue!3050)) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3707 true) setRest!3707))))

(declare-fun b!690723 () Bool)

(declare-fun tp!207564 () Bool)

(assert (=> b!690723 (= e!434393 tp!207564)))

(assert (= b!690721 b!690722))

(assert (= (and b!690721 condSetEmpty!3707) setIsEmpty!3707))

(assert (= (and b!690721 (not condSetEmpty!3707)) setNonEmpty!3707))

(assert (= setNonEmpty!3707 b!690723))

(assert (= (and mapNonEmpty!3052 ((_ is Cons!7442) mapValue!3050)) b!690721))

(declare-fun m!946923 () Bool)

(assert (=> b!690721 m!946923))

(declare-fun m!946925 () Bool)

(assert (=> setNonEmpty!3707 m!946925))

(declare-fun e!434397 () Bool)

(declare-fun e!434398 () Bool)

(declare-fun tp!207573 () Bool)

(declare-fun setRes!3708 () Bool)

(declare-fun tp!207571 () Bool)

(declare-fun b!690724 () Bool)

(assert (=> b!690724 (= e!434398 (and tp!207571 (inv!9543 (_2!4330 (_1!4331 (h!12843 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))))) e!434397 tp_is_empty!3643 setRes!3708 tp!207573))))

(declare-fun condSetEmpty!3708 () Bool)

(assert (=> b!690724 (= condSetEmpty!3708 (= (_2!4331 (h!12843 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))) ((as const (Array Context!482 Bool)) false)))))

(assert (=> b!690599 (= tp!207442 e!434398)))

(declare-fun b!690725 () Bool)

(declare-fun tp!207570 () Bool)

(assert (=> b!690725 (= e!434397 tp!207570)))

(declare-fun setIsEmpty!3708 () Bool)

(assert (=> setIsEmpty!3708 setRes!3708))

(declare-fun e!434396 () Bool)

(declare-fun tp!207572 () Bool)

(declare-fun setNonEmpty!3708 () Bool)

(declare-fun setElem!3708 () Context!482)

(assert (=> setNonEmpty!3708 (= setRes!3708 (and tp!207572 (inv!9543 setElem!3708) e!434396))))

(declare-fun setRest!3708 () (InoxSet Context!482))

(assert (=> setNonEmpty!3708 (= (_2!4331 (h!12843 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3708 true) setRest!3708))))

(declare-fun b!690726 () Bool)

(declare-fun tp!207569 () Bool)

(assert (=> b!690726 (= e!434396 tp!207569)))

(assert (= b!690724 b!690725))

(assert (= (and b!690724 condSetEmpty!3708) setIsEmpty!3708))

(assert (= (and b!690724 (not condSetEmpty!3708)) setNonEmpty!3708))

(assert (= setNonEmpty!3708 b!690726))

(assert (= (and b!690599 ((_ is Cons!7442) (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))) b!690724))

(declare-fun m!946927 () Bool)

(assert (=> b!690724 m!946927))

(declare-fun m!946929 () Bool)

(assert (=> setNonEmpty!3708 m!946929))

(declare-fun b!690727 () Bool)

(declare-fun e!434400 () Bool)

(declare-fun e!434401 () Bool)

(declare-fun setRes!3709 () Bool)

(declare-fun tp!207576 () Bool)

(declare-fun tp!207578 () Bool)

(assert (=> b!690727 (= e!434401 (and tp!207576 (inv!9543 (_2!4330 (_1!4331 (h!12843 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))))) e!434400 tp_is_empty!3643 setRes!3709 tp!207578))))

(declare-fun condSetEmpty!3709 () Bool)

(assert (=> b!690727 (= condSetEmpty!3709 (= (_2!4331 (h!12843 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))) ((as const (Array Context!482 Bool)) false)))))

(assert (=> b!690599 (= tp!207451 e!434401)))

(declare-fun b!690728 () Bool)

(declare-fun tp!207575 () Bool)

(assert (=> b!690728 (= e!434400 tp!207575)))

(declare-fun setIsEmpty!3709 () Bool)

(assert (=> setIsEmpty!3709 setRes!3709))

(declare-fun setNonEmpty!3709 () Bool)

(declare-fun setElem!3709 () Context!482)

(declare-fun e!434399 () Bool)

(declare-fun tp!207577 () Bool)

(assert (=> setNonEmpty!3709 (= setRes!3709 (and tp!207577 (inv!9543 setElem!3709) e!434399))))

(declare-fun setRest!3709 () (InoxSet Context!482))

(assert (=> setNonEmpty!3709 (= (_2!4331 (h!12843 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3709 true) setRest!3709))))

(declare-fun b!690729 () Bool)

(declare-fun tp!207574 () Bool)

(assert (=> b!690729 (= e!434399 tp!207574)))

(assert (= b!690727 b!690728))

(assert (= (and b!690727 condSetEmpty!3709) setIsEmpty!3709))

(assert (= (and b!690727 (not condSetEmpty!3709)) setNonEmpty!3709))

(assert (= setNonEmpty!3709 b!690729))

(assert (= (and b!690599 ((_ is Cons!7442) (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))) b!690727))

(declare-fun m!946931 () Bool)

(assert (=> b!690727 m!946931))

(declare-fun m!946933 () Bool)

(assert (=> setNonEmpty!3709 m!946933))

(declare-fun b!690736 () Bool)

(declare-fun e!434407 () Bool)

(declare-fun setRes!3712 () Bool)

(declare-fun tp!207586 () Bool)

(assert (=> b!690736 (= e!434407 (and setRes!3712 tp!207586))))

(declare-fun condSetEmpty!3712 () Bool)

(assert (=> b!690736 (= condSetEmpty!3712 (= (_1!4328 (_1!4329 (h!12842 (zeroValue!1019 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setIsEmpty!3712 () Bool)

(assert (=> setIsEmpty!3712 setRes!3712))

(declare-fun setNonEmpty!3712 () Bool)

(declare-fun setElem!3712 () Context!482)

(declare-fun tp!207585 () Bool)

(declare-fun e!434406 () Bool)

(assert (=> setNonEmpty!3712 (= setRes!3712 (and tp!207585 (inv!9543 setElem!3712) e!434406))))

(declare-fun setRest!3712 () (InoxSet Context!482))

(assert (=> setNonEmpty!3712 (= (_1!4328 (_1!4329 (h!12842 (zeroValue!1019 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3712 true) setRest!3712))))

(assert (=> b!690591 (= tp!207453 e!434407)))

(declare-fun b!690737 () Bool)

(declare-fun tp!207587 () Bool)

(assert (=> b!690737 (= e!434406 tp!207587)))

(assert (= (and b!690736 condSetEmpty!3712) setIsEmpty!3712))

(assert (= (and b!690736 (not condSetEmpty!3712)) setNonEmpty!3712))

(assert (= setNonEmpty!3712 b!690737))

(assert (= (and b!690591 ((_ is Cons!7441) (zeroValue!1019 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59)))))))) b!690736))

(declare-fun m!946935 () Bool)

(assert (=> setNonEmpty!3712 m!946935))

(declare-fun b!690738 () Bool)

(declare-fun e!434409 () Bool)

(declare-fun setRes!3713 () Bool)

(declare-fun tp!207589 () Bool)

(assert (=> b!690738 (= e!434409 (and setRes!3713 tp!207589))))

(declare-fun condSetEmpty!3713 () Bool)

(assert (=> b!690738 (= condSetEmpty!3713 (= (_1!4328 (_1!4329 (h!12842 (minValue!1019 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setIsEmpty!3713 () Bool)

(assert (=> setIsEmpty!3713 setRes!3713))

(declare-fun setNonEmpty!3713 () Bool)

(declare-fun e!434408 () Bool)

(declare-fun setElem!3713 () Context!482)

(declare-fun tp!207588 () Bool)

(assert (=> setNonEmpty!3713 (= setRes!3713 (and tp!207588 (inv!9543 setElem!3713) e!434408))))

(declare-fun setRest!3713 () (InoxSet Context!482))

(assert (=> setNonEmpty!3713 (= (_1!4328 (_1!4329 (h!12842 (minValue!1019 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3713 true) setRest!3713))))

(assert (=> b!690591 (= tp!207444 e!434409)))

(declare-fun b!690739 () Bool)

(declare-fun tp!207590 () Bool)

(assert (=> b!690739 (= e!434408 tp!207590)))

(assert (= (and b!690738 condSetEmpty!3713) setIsEmpty!3713))

(assert (= (and b!690738 (not condSetEmpty!3713)) setNonEmpty!3713))

(assert (= setNonEmpty!3713 b!690739))

(assert (= (and b!690591 ((_ is Cons!7441) (minValue!1019 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59)))))))) b!690738))

(declare-fun m!946937 () Bool)

(assert (=> setNonEmpty!3713 m!946937))

(declare-fun e!434412 () Bool)

(declare-fun b!690740 () Bool)

(declare-fun tp!207593 () Bool)

(declare-fun e!434411 () Bool)

(declare-fun tp!207595 () Bool)

(declare-fun setRes!3714 () Bool)

(assert (=> b!690740 (= e!434412 (and tp!207593 (inv!9543 (_2!4330 (_1!4331 (h!12843 mapDefault!3052)))) e!434411 tp_is_empty!3643 setRes!3714 tp!207595))))

(declare-fun condSetEmpty!3714 () Bool)

(assert (=> b!690740 (= condSetEmpty!3714 (= (_2!4331 (h!12843 mapDefault!3052)) ((as const (Array Context!482 Bool)) false)))))

(assert (=> b!690607 (= tp!207432 e!434412)))

(declare-fun b!690741 () Bool)

(declare-fun tp!207592 () Bool)

(assert (=> b!690741 (= e!434411 tp!207592)))

(declare-fun setIsEmpty!3714 () Bool)

(assert (=> setIsEmpty!3714 setRes!3714))

(declare-fun e!434410 () Bool)

(declare-fun tp!207594 () Bool)

(declare-fun setNonEmpty!3714 () Bool)

(declare-fun setElem!3714 () Context!482)

(assert (=> setNonEmpty!3714 (= setRes!3714 (and tp!207594 (inv!9543 setElem!3714) e!434410))))

(declare-fun setRest!3714 () (InoxSet Context!482))

(assert (=> setNonEmpty!3714 (= (_2!4331 (h!12843 mapDefault!3052)) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3714 true) setRest!3714))))

(declare-fun b!690742 () Bool)

(declare-fun tp!207591 () Bool)

(assert (=> b!690742 (= e!434410 tp!207591)))

(assert (= b!690740 b!690741))

(assert (= (and b!690740 condSetEmpty!3714) setIsEmpty!3714))

(assert (= (and b!690740 (not condSetEmpty!3714)) setNonEmpty!3714))

(assert (= setNonEmpty!3714 b!690742))

(assert (= (and b!690607 ((_ is Cons!7442) mapDefault!3052)) b!690740))

(declare-fun m!946939 () Bool)

(assert (=> b!690740 m!946939))

(declare-fun m!946941 () Bool)

(assert (=> setNonEmpty!3714 m!946941))

(declare-fun b!690753 () Bool)

(declare-fun e!434415 () Bool)

(assert (=> b!690753 (= e!434415 tp_is_empty!3643)))

(declare-fun b!690754 () Bool)

(declare-fun tp!207609 () Bool)

(declare-fun tp!207607 () Bool)

(assert (=> b!690754 (= e!434415 (and tp!207609 tp!207607))))

(declare-fun b!690756 () Bool)

(declare-fun tp!207608 () Bool)

(declare-fun tp!207610 () Bool)

(assert (=> b!690756 (= e!434415 (and tp!207608 tp!207610))))

(declare-fun b!690755 () Bool)

(declare-fun tp!207606 () Bool)

(assert (=> b!690755 (= e!434415 tp!207606)))

(assert (=> b!690589 (= tp!207435 e!434415)))

(assert (= (and b!690589 ((_ is ElementMatch!1831) (regex!1493 (h!12845 rules!1357)))) b!690753))

(assert (= (and b!690589 ((_ is Concat!3368) (regex!1493 (h!12845 rules!1357)))) b!690754))

(assert (= (and b!690589 ((_ is Star!1831) (regex!1493 (h!12845 rules!1357)))) b!690755))

(assert (= (and b!690589 ((_ is Union!1831) (regex!1493 (h!12845 rules!1357)))) b!690756))

(declare-fun b!690757 () Bool)

(declare-fun e!434418 () Bool)

(declare-fun tp!207612 () Bool)

(assert (=> b!690757 (= e!434418 tp!207612)))

(declare-fun setRes!3715 () Bool)

(declare-fun setNonEmpty!3715 () Bool)

(declare-fun tp!207614 () Bool)

(declare-fun setElem!3715 () Context!482)

(assert (=> setNonEmpty!3715 (= setRes!3715 (and tp!207614 (inv!9543 setElem!3715) e!434418))))

(declare-fun setRest!3715 () (InoxSet Context!482))

(assert (=> setNonEmpty!3715 (= (_2!4327 (h!12840 (zeroValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3715 true) setRest!3715))))

(declare-fun e!434416 () Bool)

(assert (=> b!690584 (= tp!207431 e!434416)))

(declare-fun b!690758 () Bool)

(declare-fun e!434417 () Bool)

(declare-fun tp!207611 () Bool)

(assert (=> b!690758 (= e!434417 tp!207611)))

(declare-fun setIsEmpty!3715 () Bool)

(assert (=> setIsEmpty!3715 setRes!3715))

(declare-fun tp!207613 () Bool)

(declare-fun b!690759 () Bool)

(assert (=> b!690759 (= e!434416 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 (zeroValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))))) e!434417 tp_is_empty!3643 setRes!3715 tp!207613))))

(declare-fun condSetEmpty!3715 () Bool)

(assert (=> b!690759 (= condSetEmpty!3715 (= (_2!4327 (h!12840 (zeroValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))) ((as const (Array Context!482 Bool)) false)))))

(assert (= b!690759 b!690758))

(assert (= (and b!690759 condSetEmpty!3715) setIsEmpty!3715))

(assert (= (and b!690759 (not condSetEmpty!3715)) setNonEmpty!3715))

(assert (= setNonEmpty!3715 b!690757))

(assert (= (and b!690584 ((_ is Cons!7439) (zeroValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))) b!690759))

(declare-fun m!946943 () Bool)

(assert (=> setNonEmpty!3715 m!946943))

(declare-fun m!946945 () Bool)

(assert (=> b!690759 m!946945))

(declare-fun b!690760 () Bool)

(declare-fun e!434421 () Bool)

(declare-fun tp!207616 () Bool)

(assert (=> b!690760 (= e!434421 tp!207616)))

(declare-fun tp!207618 () Bool)

(declare-fun setElem!3716 () Context!482)

(declare-fun setRes!3716 () Bool)

(declare-fun setNonEmpty!3716 () Bool)

(assert (=> setNonEmpty!3716 (= setRes!3716 (and tp!207618 (inv!9543 setElem!3716) e!434421))))

(declare-fun setRest!3716 () (InoxSet Context!482))

(assert (=> setNonEmpty!3716 (= (_2!4327 (h!12840 (minValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3716 true) setRest!3716))))

(declare-fun e!434419 () Bool)

(assert (=> b!690584 (= tp!207436 e!434419)))

(declare-fun b!690761 () Bool)

(declare-fun e!434420 () Bool)

(declare-fun tp!207615 () Bool)

(assert (=> b!690761 (= e!434420 tp!207615)))

(declare-fun setIsEmpty!3716 () Bool)

(assert (=> setIsEmpty!3716 setRes!3716))

(declare-fun tp!207617 () Bool)

(declare-fun b!690762 () Bool)

(assert (=> b!690762 (= e!434419 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 (minValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))))) e!434420 tp_is_empty!3643 setRes!3716 tp!207617))))

(declare-fun condSetEmpty!3716 () Bool)

(assert (=> b!690762 (= condSetEmpty!3716 (= (_2!4327 (h!12840 (minValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))) ((as const (Array Context!482 Bool)) false)))))

(assert (= b!690762 b!690761))

(assert (= (and b!690762 condSetEmpty!3716) setIsEmpty!3716))

(assert (= (and b!690762 (not condSetEmpty!3716)) setNonEmpty!3716))

(assert (= setNonEmpty!3716 b!690760))

(assert (= (and b!690584 ((_ is Cons!7439) (minValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))) b!690762))

(declare-fun m!946947 () Bool)

(assert (=> setNonEmpty!3716 m!946947))

(declare-fun m!946949 () Bool)

(assert (=> b!690762 m!946949))

(declare-fun b!690773 () Bool)

(declare-fun e!434430 () Bool)

(declare-fun setRes!3721 () Bool)

(declare-fun tp!207636 () Bool)

(assert (=> b!690773 (= e!434430 (and setRes!3721 tp!207636))))

(declare-fun condSetEmpty!3722 () Bool)

(declare-fun mapValue!3061 () List!7455)

(assert (=> b!690773 (= condSetEmpty!3722 (= (_1!4328 (_1!4329 (h!12842 mapValue!3061))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setNonEmpty!3721 () Bool)

(declare-fun setRes!3722 () Bool)

(declare-fun e!434432 () Bool)

(declare-fun tp!207635 () Bool)

(declare-fun setElem!3722 () Context!482)

(assert (=> setNonEmpty!3721 (= setRes!3722 (and tp!207635 (inv!9543 setElem!3722) e!434432))))

(declare-fun mapDefault!3061 () List!7455)

(declare-fun setRest!3722 () (InoxSet Context!482))

(assert (=> setNonEmpty!3721 (= (_1!4328 (_1!4329 (h!12842 mapDefault!3061))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3722 true) setRest!3722))))

(declare-fun mapNonEmpty!3061 () Bool)

(declare-fun mapRes!3061 () Bool)

(declare-fun tp!207639 () Bool)

(assert (=> mapNonEmpty!3061 (= mapRes!3061 (and tp!207639 e!434430))))

(declare-fun mapKey!3061 () (_ BitVec 32))

(declare-fun mapRest!3061 () (Array (_ BitVec 32) List!7455))

(assert (=> mapNonEmpty!3061 (= mapRest!3050 (store mapRest!3061 mapKey!3061 mapValue!3061))))

(declare-fun setNonEmpty!3722 () Bool)

(declare-fun e!434433 () Bool)

(declare-fun setElem!3721 () Context!482)

(declare-fun tp!207634 () Bool)

(assert (=> setNonEmpty!3722 (= setRes!3721 (and tp!207634 (inv!9543 setElem!3721) e!434433))))

(declare-fun setRest!3721 () (InoxSet Context!482))

(assert (=> setNonEmpty!3722 (= (_1!4328 (_1!4329 (h!12842 mapValue!3061))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3721 true) setRest!3721))))

(declare-fun b!690774 () Bool)

(declare-fun tp!207633 () Bool)

(assert (=> b!690774 (= e!434432 tp!207633)))

(declare-fun condMapEmpty!3061 () Bool)

(assert (=> mapNonEmpty!3051 (= condMapEmpty!3061 (= mapRest!3050 ((as const (Array (_ BitVec 32) List!7455)) mapDefault!3061)))))

(declare-fun e!434431 () Bool)

(assert (=> mapNonEmpty!3051 (= tp!207434 (and e!434431 mapRes!3061))))

(declare-fun setIsEmpty!3721 () Bool)

(assert (=> setIsEmpty!3721 setRes!3722))

(declare-fun b!690775 () Bool)

(declare-fun tp!207637 () Bool)

(assert (=> b!690775 (= e!434433 tp!207637)))

(declare-fun b!690776 () Bool)

(declare-fun tp!207638 () Bool)

(assert (=> b!690776 (= e!434431 (and setRes!3722 tp!207638))))

(declare-fun condSetEmpty!3721 () Bool)

(assert (=> b!690776 (= condSetEmpty!3721 (= (_1!4328 (_1!4329 (h!12842 mapDefault!3061))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setIsEmpty!3722 () Bool)

(assert (=> setIsEmpty!3722 setRes!3721))

(declare-fun mapIsEmpty!3061 () Bool)

(assert (=> mapIsEmpty!3061 mapRes!3061))

(assert (= (and mapNonEmpty!3051 condMapEmpty!3061) mapIsEmpty!3061))

(assert (= (and mapNonEmpty!3051 (not condMapEmpty!3061)) mapNonEmpty!3061))

(assert (= (and b!690773 condSetEmpty!3722) setIsEmpty!3722))

(assert (= (and b!690773 (not condSetEmpty!3722)) setNonEmpty!3722))

(assert (= setNonEmpty!3722 b!690775))

(assert (= (and mapNonEmpty!3061 ((_ is Cons!7441) mapValue!3061)) b!690773))

(assert (= (and b!690776 condSetEmpty!3721) setIsEmpty!3721))

(assert (= (and b!690776 (not condSetEmpty!3721)) setNonEmpty!3721))

(assert (= setNonEmpty!3721 b!690774))

(assert (= (and mapNonEmpty!3051 ((_ is Cons!7441) mapDefault!3061)) b!690776))

(declare-fun m!946951 () Bool)

(assert (=> setNonEmpty!3721 m!946951))

(declare-fun m!946953 () Bool)

(assert (=> mapNonEmpty!3061 m!946953))

(declare-fun m!946955 () Bool)

(assert (=> setNonEmpty!3722 m!946955))

(declare-fun b!690777 () Bool)

(declare-fun e!434435 () Bool)

(declare-fun setRes!3723 () Bool)

(declare-fun tp!207641 () Bool)

(assert (=> b!690777 (= e!434435 (and setRes!3723 tp!207641))))

(declare-fun condSetEmpty!3723 () Bool)

(assert (=> b!690777 (= condSetEmpty!3723 (= (_1!4328 (_1!4329 (h!12842 mapValue!3052))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setIsEmpty!3723 () Bool)

(assert (=> setIsEmpty!3723 setRes!3723))

(declare-fun setElem!3723 () Context!482)

(declare-fun e!434434 () Bool)

(declare-fun setNonEmpty!3723 () Bool)

(declare-fun tp!207640 () Bool)

(assert (=> setNonEmpty!3723 (= setRes!3723 (and tp!207640 (inv!9543 setElem!3723) e!434434))))

(declare-fun setRest!3723 () (InoxSet Context!482))

(assert (=> setNonEmpty!3723 (= (_1!4328 (_1!4329 (h!12842 mapValue!3052))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3723 true) setRest!3723))))

(assert (=> mapNonEmpty!3051 (= tp!207433 e!434435)))

(declare-fun b!690778 () Bool)

(declare-fun tp!207642 () Bool)

(assert (=> b!690778 (= e!434434 tp!207642)))

(assert (= (and b!690777 condSetEmpty!3723) setIsEmpty!3723))

(assert (= (and b!690777 (not condSetEmpty!3723)) setNonEmpty!3723))

(assert (= setNonEmpty!3723 b!690778))

(assert (= (and mapNonEmpty!3051 ((_ is Cons!7441) mapValue!3052)) b!690777))

(declare-fun m!946957 () Bool)

(assert (=> setNonEmpty!3723 m!946957))

(declare-fun e!434437 () Bool)

(declare-fun b!690779 () Bool)

(declare-fun tp!207645 () Bool)

(declare-fun tp!207643 () Bool)

(assert (=> b!690779 (= e!434437 (and (inv!9535 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) tp!207643 (inv!9535 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) tp!207645))))

(declare-fun b!690781 () Bool)

(declare-fun e!434436 () Bool)

(declare-fun tp!207644 () Bool)

(assert (=> b!690781 (= e!434436 tp!207644)))

(declare-fun b!690780 () Bool)

(assert (=> b!690780 (= e!434437 (and (inv!9544 (xs!5279 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) e!434436))))

(assert (=> b!690592 (= tp!207439 (and (inv!9535 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) e!434437))))

(assert (= (and b!690592 ((_ is Node!2628) (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) b!690779))

(assert (= b!690780 b!690781))

(assert (= (and b!690592 ((_ is Leaf!3897) (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) b!690780))

(declare-fun m!946959 () Bool)

(assert (=> b!690779 m!946959))

(declare-fun m!946961 () Bool)

(assert (=> b!690779 m!946961))

(declare-fun m!946963 () Bool)

(assert (=> b!690780 m!946963))

(assert (=> b!690592 m!946813))

(declare-fun b!690782 () Bool)

(declare-fun e!434439 () Bool)

(declare-fun setRes!3724 () Bool)

(declare-fun tp!207647 () Bool)

(assert (=> b!690782 (= e!434439 (and setRes!3724 tp!207647))))

(declare-fun condSetEmpty!3724 () Bool)

(assert (=> b!690782 (= condSetEmpty!3724 (= (_1!4328 (_1!4329 (h!12842 mapDefault!3051))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setIsEmpty!3724 () Bool)

(assert (=> setIsEmpty!3724 setRes!3724))

(declare-fun e!434438 () Bool)

(declare-fun setElem!3724 () Context!482)

(declare-fun tp!207646 () Bool)

(declare-fun setNonEmpty!3724 () Bool)

(assert (=> setNonEmpty!3724 (= setRes!3724 (and tp!207646 (inv!9543 setElem!3724) e!434438))))

(declare-fun setRest!3724 () (InoxSet Context!482))

(assert (=> setNonEmpty!3724 (= (_1!4328 (_1!4329 (h!12842 mapDefault!3051))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3724 true) setRest!3724))))

(assert (=> b!690609 (= tp!207446 e!434439)))

(declare-fun b!690783 () Bool)

(declare-fun tp!207648 () Bool)

(assert (=> b!690783 (= e!434438 tp!207648)))

(assert (= (and b!690782 condSetEmpty!3724) setIsEmpty!3724))

(assert (= (and b!690782 (not condSetEmpty!3724)) setNonEmpty!3724))

(assert (= setNonEmpty!3724 b!690783))

(assert (= (and b!690609 ((_ is Cons!7441) mapDefault!3051)) b!690782))

(declare-fun m!946965 () Bool)

(assert (=> setNonEmpty!3724 m!946965))

(check-sat (not setNonEmpty!3698) (not mapNonEmpty!3058) (not b!690736) (not b!690760) (not b!690782) (not b_next!19611) (not b!690783) (not b!690636) (not b!690737) (not b!690775) (not b!690616) (not b!690722) (not b!690781) (not b!690738) (not b!690729) (not b_next!19603) (not d!232421) (not b!690681) (not b!690723) (not b!690657) (not b!690780) (not b!690621) (not b!690761) (not b!690739) (not setNonEmpty!3707) (not b!690673) (not b!690710) (not setNonEmpty!3708) (not b_next!19607) (not b!690634) (not b!690707) (not b!690709) (not d!232437) (not b!690630) (not b!690646) (not mapNonEmpty!3055) b_and!63335 (not setNonEmpty!3724) b_and!63339 (not setNonEmpty!3691) (not b!690758) (not b!690759) b_and!63341 (not b_next!19595) (not b!690756) (not setNonEmpty!3712) (not d!232429) (not b!690726) (not d!232435) (not b!690755) (not b!690724) (not setNonEmpty!3716) (not setNonEmpty!3723) (not setNonEmpty!3696) (not b!690633) (not b_next!19593) b_and!63323 (not d!232399) (not b_next!19597) (not b!690624) (not b!690728) (not b!690741) (not d!232405) (not b!690742) (not b_next!19601) b_and!63327 (not b!690754) b_and!63331 (not b!690677) b_and!63329 (not setNonEmpty!3721) (not b!690762) (not b!690674) (not mapNonEmpty!3061) (not b!690618) (not setNonEmpty!3714) (not b!690679) (not setNonEmpty!3709) (not b!690592) (not b!690645) (not b!690711) (not b!690778) (not b!690627) (not b!690740) (not b!690675) (not setNonEmpty!3713) (not b_next!19599) (not b!690725) (not b!690658) (not b!690773) (not setNonEmpty!3697) b_and!63337 (not b!690690) (not b!690676) (not b_next!19609) (not b!690656) (not b!690777) (not b!690691) b_and!63325 (not setNonEmpty!3703) tp_is_empty!3643 (not b!690708) (not setNonEmpty!3715) (not b!690727) (not b!690776) (not b!690692) (not setNonEmpty!3704) (not b_next!19605) (not b!690774) (not b!690721) (not d!232417) (not b!690757) b_and!63333 (not d!232403) (not b!690712) (not setNonEmpty!3722) (not b!690680) (not b!690578) (not b!690678) (not b!690779))
(check-sat (not b_next!19611) (not b_next!19603) (not b_next!19607) (not b_next!19597) b_and!63331 b_and!63329 (not b_next!19609) b_and!63325 (not b_next!19605) b_and!63333 b_and!63335 b_and!63339 b_and!63341 (not b_next!19595) (not b_next!19593) b_and!63323 (not b_next!19601) b_and!63327 (not b_next!19599) b_and!63337)
(get-model)

(declare-fun d!232441 () Bool)

(declare-fun lambda!21488 () Int)

(declare-fun forall!1951 (List!7452 Int) Bool)

(assert (=> d!232441 (= (inv!9543 setElem!3722) (forall!1951 (exprs!741 setElem!3722) lambda!21488))))

(declare-fun bs!136878 () Bool)

(assert (= bs!136878 d!232441))

(declare-fun m!946967 () Bool)

(assert (=> bs!136878 m!946967))

(assert (=> setNonEmpty!3721 d!232441))

(declare-fun bs!136879 () Bool)

(declare-fun d!232443 () Bool)

(assert (= bs!136879 (and d!232443 d!232441)))

(declare-fun lambda!21489 () Int)

(assert (=> bs!136879 (= lambda!21489 lambda!21488)))

(assert (=> d!232443 (= (inv!9543 setElem!3703) (forall!1951 (exprs!741 setElem!3703) lambda!21489))))

(declare-fun bs!136880 () Bool)

(assert (= bs!136880 d!232443))

(declare-fun m!946969 () Bool)

(assert (=> bs!136880 m!946969))

(assert (=> setNonEmpty!3703 d!232443))

(declare-fun bs!136881 () Bool)

(declare-fun d!232445 () Bool)

(assert (= bs!136881 (and d!232445 d!232441)))

(declare-fun lambda!21490 () Int)

(assert (=> bs!136881 (= lambda!21490 lambda!21488)))

(declare-fun bs!136882 () Bool)

(assert (= bs!136882 (and d!232445 d!232443)))

(assert (=> bs!136882 (= lambda!21490 lambda!21489)))

(assert (=> d!232445 (= (inv!9543 (_1!4326 (_1!4327 (h!12840 (minValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))))) (forall!1951 (exprs!741 (_1!4326 (_1!4327 (h!12840 (minValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))))) lambda!21490))))

(declare-fun bs!136883 () Bool)

(assert (= bs!136883 d!232445))

(declare-fun m!946971 () Bool)

(assert (=> bs!136883 m!946971))

(assert (=> b!690762 d!232445))

(declare-fun bs!136884 () Bool)

(declare-fun d!232447 () Bool)

(assert (= bs!136884 (and d!232447 d!232441)))

(declare-fun lambda!21491 () Int)

(assert (=> bs!136884 (= lambda!21491 lambda!21488)))

(declare-fun bs!136885 () Bool)

(assert (= bs!136885 (and d!232447 d!232443)))

(assert (=> bs!136885 (= lambda!21491 lambda!21489)))

(declare-fun bs!136886 () Bool)

(assert (= bs!136886 (and d!232447 d!232445)))

(assert (=> bs!136886 (= lambda!21491 lambda!21490)))

(assert (=> d!232447 (= (inv!9543 setElem!3721) (forall!1951 (exprs!741 setElem!3721) lambda!21491))))

(declare-fun bs!136887 () Bool)

(assert (= bs!136887 d!232447))

(declare-fun m!946973 () Bool)

(assert (=> bs!136887 m!946973))

(assert (=> setNonEmpty!3722 d!232447))

(declare-fun d!232449 () Bool)

(declare-fun res!313393 () Bool)

(declare-fun e!434444 () Bool)

(assert (=> d!232449 (=> res!313393 e!434444)))

(assert (=> d!232449 (= res!313393 (not ((_ is Node!2628) (c!121540 input!756))))))

(assert (=> d!232449 (= (isBalanced!694 (c!121540 input!756)) e!434444)))

(declare-fun b!690796 () Bool)

(declare-fun e!434445 () Bool)

(assert (=> b!690796 (= e!434444 e!434445)))

(declare-fun res!313391 () Bool)

(assert (=> b!690796 (=> (not res!313391) (not e!434445))))

(declare-fun height!317 (Conc!2628) Int)

(assert (=> b!690796 (= res!313391 (<= (- 1) (- (height!317 (left!5974 (c!121540 input!756))) (height!317 (right!6304 (c!121540 input!756))))))))

(declare-fun b!690797 () Bool)

(declare-fun res!313394 () Bool)

(assert (=> b!690797 (=> (not res!313394) (not e!434445))))

(assert (=> b!690797 (= res!313394 (<= (- (height!317 (left!5974 (c!121540 input!756))) (height!317 (right!6304 (c!121540 input!756)))) 1))))

(declare-fun b!690798 () Bool)

(declare-fun res!313390 () Bool)

(assert (=> b!690798 (=> (not res!313390) (not e!434445))))

(assert (=> b!690798 (= res!313390 (isBalanced!694 (left!5974 (c!121540 input!756))))))

(declare-fun b!690799 () Bool)

(declare-fun res!313395 () Bool)

(assert (=> b!690799 (=> (not res!313395) (not e!434445))))

(assert (=> b!690799 (= res!313395 (isBalanced!694 (right!6304 (c!121540 input!756))))))

(declare-fun b!690800 () Bool)

(declare-fun isEmpty!4862 (Conc!2628) Bool)

(assert (=> b!690800 (= e!434445 (not (isEmpty!4862 (right!6304 (c!121540 input!756)))))))

(declare-fun b!690801 () Bool)

(declare-fun res!313392 () Bool)

(assert (=> b!690801 (=> (not res!313392) (not e!434445))))

(assert (=> b!690801 (= res!313392 (not (isEmpty!4862 (left!5974 (c!121540 input!756)))))))

(assert (= (and d!232449 (not res!313393)) b!690796))

(assert (= (and b!690796 res!313391) b!690797))

(assert (= (and b!690797 res!313394) b!690798))

(assert (= (and b!690798 res!313390) b!690799))

(assert (= (and b!690799 res!313395) b!690801))

(assert (= (and b!690801 res!313392) b!690800))

(declare-fun m!946975 () Bool)

(assert (=> b!690799 m!946975))

(declare-fun m!946977 () Bool)

(assert (=> b!690797 m!946977))

(declare-fun m!946979 () Bool)

(assert (=> b!690797 m!946979))

(assert (=> b!690796 m!946977))

(assert (=> b!690796 m!946979))

(declare-fun m!946981 () Bool)

(assert (=> b!690800 m!946981))

(declare-fun m!946983 () Bool)

(assert (=> b!690798 m!946983))

(declare-fun m!946985 () Bool)

(assert (=> b!690801 m!946985))

(assert (=> d!232421 d!232449))

(declare-fun bs!136888 () Bool)

(declare-fun d!232451 () Bool)

(assert (= bs!136888 (and d!232451 d!232441)))

(declare-fun lambda!21492 () Int)

(assert (=> bs!136888 (= lambda!21492 lambda!21488)))

(declare-fun bs!136889 () Bool)

(assert (= bs!136889 (and d!232451 d!232443)))

(assert (=> bs!136889 (= lambda!21492 lambda!21489)))

(declare-fun bs!136890 () Bool)

(assert (= bs!136890 (and d!232451 d!232445)))

(assert (=> bs!136890 (= lambda!21492 lambda!21490)))

(declare-fun bs!136891 () Bool)

(assert (= bs!136891 (and d!232451 d!232447)))

(assert (=> bs!136891 (= lambda!21492 lambda!21491)))

(assert (=> d!232451 (= (inv!9543 setElem!3712) (forall!1951 (exprs!741 setElem!3712) lambda!21492))))

(declare-fun bs!136892 () Bool)

(assert (= bs!136892 d!232451))

(declare-fun m!946987 () Bool)

(assert (=> bs!136892 m!946987))

(assert (=> setNonEmpty!3712 d!232451))

(declare-fun bs!136893 () Bool)

(declare-fun d!232453 () Bool)

(assert (= bs!136893 (and d!232453 d!232445)))

(declare-fun lambda!21493 () Int)

(assert (=> bs!136893 (= lambda!21493 lambda!21490)))

(declare-fun bs!136894 () Bool)

(assert (= bs!136894 (and d!232453 d!232441)))

(assert (=> bs!136894 (= lambda!21493 lambda!21488)))

(declare-fun bs!136895 () Bool)

(assert (= bs!136895 (and d!232453 d!232443)))

(assert (=> bs!136895 (= lambda!21493 lambda!21489)))

(declare-fun bs!136896 () Bool)

(assert (= bs!136896 (and d!232453 d!232447)))

(assert (=> bs!136896 (= lambda!21493 lambda!21491)))

(declare-fun bs!136897 () Bool)

(assert (= bs!136897 (and d!232453 d!232451)))

(assert (=> bs!136897 (= lambda!21493 lambda!21492)))

(assert (=> d!232453 (= (inv!9543 (_1!4326 (_1!4327 (h!12840 mapDefault!3050)))) (forall!1951 (exprs!741 (_1!4326 (_1!4327 (h!12840 mapDefault!3050)))) lambda!21493))))

(declare-fun bs!136898 () Bool)

(assert (= bs!136898 d!232453))

(declare-fun m!946989 () Bool)

(assert (=> bs!136898 m!946989))

(assert (=> b!690658 d!232453))

(declare-fun d!232455 () Bool)

(declare-fun c!121545 () Bool)

(assert (=> d!232455 (= c!121545 ((_ is Node!2628) (left!5974 (c!121540 input!756))))))

(declare-fun e!434446 () Bool)

(assert (=> d!232455 (= (inv!9535 (left!5974 (c!121540 input!756))) e!434446)))

(declare-fun b!690802 () Bool)

(assert (=> b!690802 (= e!434446 (inv!9541 (left!5974 (c!121540 input!756))))))

(declare-fun b!690803 () Bool)

(declare-fun e!434447 () Bool)

(assert (=> b!690803 (= e!434446 e!434447)))

(declare-fun res!313396 () Bool)

(assert (=> b!690803 (= res!313396 (not ((_ is Leaf!3897) (left!5974 (c!121540 input!756)))))))

(assert (=> b!690803 (=> res!313396 e!434447)))

(declare-fun b!690804 () Bool)

(assert (=> b!690804 (= e!434447 (inv!9542 (left!5974 (c!121540 input!756))))))

(assert (= (and d!232455 c!121545) b!690802))

(assert (= (and d!232455 (not c!121545)) b!690803))

(assert (= (and b!690803 (not res!313396)) b!690804))

(declare-fun m!946991 () Bool)

(assert (=> b!690802 m!946991))

(declare-fun m!946993 () Bool)

(assert (=> b!690804 m!946993))

(assert (=> b!690690 d!232455))

(declare-fun d!232457 () Bool)

(declare-fun c!121546 () Bool)

(assert (=> d!232457 (= c!121546 ((_ is Node!2628) (right!6304 (c!121540 input!756))))))

(declare-fun e!434448 () Bool)

(assert (=> d!232457 (= (inv!9535 (right!6304 (c!121540 input!756))) e!434448)))

(declare-fun b!690805 () Bool)

(assert (=> b!690805 (= e!434448 (inv!9541 (right!6304 (c!121540 input!756))))))

(declare-fun b!690806 () Bool)

(declare-fun e!434449 () Bool)

(assert (=> b!690806 (= e!434448 e!434449)))

(declare-fun res!313397 () Bool)

(assert (=> b!690806 (= res!313397 (not ((_ is Leaf!3897) (right!6304 (c!121540 input!756)))))))

(assert (=> b!690806 (=> res!313397 e!434449)))

(declare-fun b!690807 () Bool)

(assert (=> b!690807 (= e!434449 (inv!9542 (right!6304 (c!121540 input!756))))))

(assert (= (and d!232457 c!121546) b!690805))

(assert (= (and d!232457 (not c!121546)) b!690806))

(assert (= (and b!690806 (not res!313397)) b!690807))

(declare-fun m!946995 () Bool)

(assert (=> b!690805 m!946995))

(declare-fun m!946997 () Bool)

(assert (=> b!690807 m!946997))

(assert (=> b!690690 d!232457))

(declare-fun b!690813 () Bool)

(assert (=> b!690813 true))

(declare-fun d!232459 () Bool)

(declare-fun res!313402 () Bool)

(declare-fun e!434452 () Bool)

(assert (=> d!232459 (=> (not res!313402) (not e!434452))))

(declare-fun valid!650 (MutableMap!734) Bool)

(assert (=> d!232459 (= res!313402 (valid!650 (cache!1121 cacheFindLongestMatch!59)))))

(assert (=> d!232459 (= (validCacheMapFindLongestMatch!5 (cache!1121 cacheFindLongestMatch!59) (totalInput!1797 cacheFindLongestMatch!59)) e!434452)))

(declare-fun b!690812 () Bool)

(declare-fun res!313403 () Bool)

(assert (=> b!690812 (=> (not res!313403) (not e!434452))))

(declare-fun invariantList!135 (List!7455) Bool)

(declare-datatypes ((ListMap!319 0))(
  ( (ListMap!320 (toList!500 List!7455)) )
))
(declare-fun map!1649 (MutableMap!734) ListMap!319)

(assert (=> b!690812 (= res!313403 (invariantList!135 (toList!500 (map!1649 (cache!1121 cacheFindLongestMatch!59)))))))

(declare-fun lambda!21496 () Int)

(declare-fun forall!1952 (List!7455 Int) Bool)

(assert (=> b!690813 (= e!434452 (forall!1952 (toList!500 (map!1649 (cache!1121 cacheFindLongestMatch!59))) lambda!21496))))

(assert (= (and d!232459 res!313402) b!690812))

(assert (= (and b!690812 res!313403) b!690813))

(declare-fun m!947000 () Bool)

(assert (=> d!232459 m!947000))

(declare-fun m!947002 () Bool)

(assert (=> b!690812 m!947002))

(declare-fun m!947004 () Bool)

(assert (=> b!690812 m!947004))

(assert (=> b!690813 m!947002))

(declare-fun m!947006 () Bool)

(assert (=> b!690813 m!947006))

(assert (=> b!690621 d!232459))

(declare-fun bs!136899 () Bool)

(declare-fun d!232461 () Bool)

(assert (= bs!136899 (and d!232461 d!232445)))

(declare-fun lambda!21497 () Int)

(assert (=> bs!136899 (= lambda!21497 lambda!21490)))

(declare-fun bs!136900 () Bool)

(assert (= bs!136900 (and d!232461 d!232441)))

(assert (=> bs!136900 (= lambda!21497 lambda!21488)))

(declare-fun bs!136901 () Bool)

(assert (= bs!136901 (and d!232461 d!232443)))

(assert (=> bs!136901 (= lambda!21497 lambda!21489)))

(declare-fun bs!136902 () Bool)

(assert (= bs!136902 (and d!232461 d!232453)))

(assert (=> bs!136902 (= lambda!21497 lambda!21493)))

(declare-fun bs!136903 () Bool)

(assert (= bs!136903 (and d!232461 d!232447)))

(assert (=> bs!136903 (= lambda!21497 lambda!21491)))

(declare-fun bs!136904 () Bool)

(assert (= bs!136904 (and d!232461 d!232451)))

(assert (=> bs!136904 (= lambda!21497 lambda!21492)))

(assert (=> d!232461 (= (inv!9543 setElem!3715) (forall!1951 (exprs!741 setElem!3715) lambda!21497))))

(declare-fun bs!136905 () Bool)

(assert (= bs!136905 d!232461))

(declare-fun m!947008 () Bool)

(assert (=> bs!136905 m!947008))

(assert (=> setNonEmpty!3715 d!232461))

(assert (=> d!232399 d!232459))

(declare-fun bs!136906 () Bool)

(declare-fun d!232463 () Bool)

(assert (= bs!136906 (and d!232463 d!232445)))

(declare-fun lambda!21498 () Int)

(assert (=> bs!136906 (= lambda!21498 lambda!21490)))

(declare-fun bs!136907 () Bool)

(assert (= bs!136907 (and d!232463 d!232461)))

(assert (=> bs!136907 (= lambda!21498 lambda!21497)))

(declare-fun bs!136908 () Bool)

(assert (= bs!136908 (and d!232463 d!232441)))

(assert (=> bs!136908 (= lambda!21498 lambda!21488)))

(declare-fun bs!136909 () Bool)

(assert (= bs!136909 (and d!232463 d!232443)))

(assert (=> bs!136909 (= lambda!21498 lambda!21489)))

(declare-fun bs!136910 () Bool)

(assert (= bs!136910 (and d!232463 d!232453)))

(assert (=> bs!136910 (= lambda!21498 lambda!21493)))

(declare-fun bs!136911 () Bool)

(assert (= bs!136911 (and d!232463 d!232447)))

(assert (=> bs!136911 (= lambda!21498 lambda!21491)))

(declare-fun bs!136912 () Bool)

(assert (= bs!136912 (and d!232463 d!232451)))

(assert (=> bs!136912 (= lambda!21498 lambda!21492)))

(assert (=> d!232463 (= (inv!9543 setElem!3697) (forall!1951 (exprs!741 setElem!3697) lambda!21498))))

(declare-fun bs!136913 () Bool)

(assert (= bs!136913 d!232463))

(declare-fun m!947010 () Bool)

(assert (=> bs!136913 m!947010))

(assert (=> setNonEmpty!3697 d!232463))

(declare-fun bs!136914 () Bool)

(declare-fun d!232465 () Bool)

(assert (= bs!136914 (and d!232465 d!232445)))

(declare-fun lambda!21499 () Int)

(assert (=> bs!136914 (= lambda!21499 lambda!21490)))

(declare-fun bs!136915 () Bool)

(assert (= bs!136915 (and d!232465 d!232461)))

(assert (=> bs!136915 (= lambda!21499 lambda!21497)))

(declare-fun bs!136916 () Bool)

(assert (= bs!136916 (and d!232465 d!232441)))

(assert (=> bs!136916 (= lambda!21499 lambda!21488)))

(declare-fun bs!136917 () Bool)

(assert (= bs!136917 (and d!232465 d!232443)))

(assert (=> bs!136917 (= lambda!21499 lambda!21489)))

(declare-fun bs!136918 () Bool)

(assert (= bs!136918 (and d!232465 d!232453)))

(assert (=> bs!136918 (= lambda!21499 lambda!21493)))

(declare-fun bs!136919 () Bool)

(assert (= bs!136919 (and d!232465 d!232463)))

(assert (=> bs!136919 (= lambda!21499 lambda!21498)))

(declare-fun bs!136920 () Bool)

(assert (= bs!136920 (and d!232465 d!232447)))

(assert (=> bs!136920 (= lambda!21499 lambda!21491)))

(declare-fun bs!136921 () Bool)

(assert (= bs!136921 (and d!232465 d!232451)))

(assert (=> bs!136921 (= lambda!21499 lambda!21492)))

(assert (=> d!232465 (= (inv!9543 setElem!3724) (forall!1951 (exprs!741 setElem!3724) lambda!21499))))

(declare-fun bs!136922 () Bool)

(assert (= bs!136922 d!232465))

(declare-fun m!947012 () Bool)

(assert (=> bs!136922 m!947012))

(assert (=> setNonEmpty!3724 d!232465))

(declare-fun bs!136923 () Bool)

(declare-fun d!232467 () Bool)

(assert (= bs!136923 (and d!232467 d!232445)))

(declare-fun lambda!21500 () Int)

(assert (=> bs!136923 (= lambda!21500 lambda!21490)))

(declare-fun bs!136924 () Bool)

(assert (= bs!136924 (and d!232467 d!232461)))

(assert (=> bs!136924 (= lambda!21500 lambda!21497)))

(declare-fun bs!136925 () Bool)

(assert (= bs!136925 (and d!232467 d!232441)))

(assert (=> bs!136925 (= lambda!21500 lambda!21488)))

(declare-fun bs!136926 () Bool)

(assert (= bs!136926 (and d!232467 d!232443)))

(assert (=> bs!136926 (= lambda!21500 lambda!21489)))

(declare-fun bs!136927 () Bool)

(assert (= bs!136927 (and d!232467 d!232453)))

(assert (=> bs!136927 (= lambda!21500 lambda!21493)))

(declare-fun bs!136928 () Bool)

(assert (= bs!136928 (and d!232467 d!232447)))

(assert (=> bs!136928 (= lambda!21500 lambda!21491)))

(declare-fun bs!136929 () Bool)

(assert (= bs!136929 (and d!232467 d!232451)))

(assert (=> bs!136929 (= lambda!21500 lambda!21492)))

(declare-fun bs!136930 () Bool)

(assert (= bs!136930 (and d!232467 d!232465)))

(assert (=> bs!136930 (= lambda!21500 lambda!21499)))

(declare-fun bs!136931 () Bool)

(assert (= bs!136931 (and d!232467 d!232463)))

(assert (=> bs!136931 (= lambda!21500 lambda!21498)))

(assert (=> d!232467 (= (inv!9543 setElem!3696) (forall!1951 (exprs!741 setElem!3696) lambda!21500))))

(declare-fun bs!136932 () Bool)

(assert (= bs!136932 d!232467))

(declare-fun m!947014 () Bool)

(assert (=> bs!136932 m!947014))

(assert (=> setNonEmpty!3696 d!232467))

(declare-fun d!232469 () Bool)

(declare-fun lt!284500 () Int)

(assert (=> d!232469 (>= lt!284500 0)))

(declare-fun e!434455 () Int)

(assert (=> d!232469 (= lt!284500 e!434455)))

(declare-fun c!121549 () Bool)

(assert (=> d!232469 (= c!121549 ((_ is Nil!7440) (list!3124 input!756)))))

(assert (=> d!232469 (= (size!6107 (list!3124 input!756)) lt!284500)))

(declare-fun b!690820 () Bool)

(assert (=> b!690820 (= e!434455 0)))

(declare-fun b!690821 () Bool)

(assert (=> b!690821 (= e!434455 (+ 1 (size!6107 (t!87270 (list!3124 input!756)))))))

(assert (= (and d!232469 c!121549) b!690820))

(assert (= (and d!232469 (not c!121549)) b!690821))

(declare-fun m!947016 () Bool)

(assert (=> b!690821 m!947016))

(assert (=> d!232403 d!232469))

(declare-fun d!232471 () Bool)

(declare-fun list!3125 (Conc!2628) List!7454)

(assert (=> d!232471 (= (list!3124 input!756) (list!3125 (c!121540 input!756)))))

(declare-fun bs!136933 () Bool)

(assert (= bs!136933 d!232471))

(declare-fun m!947018 () Bool)

(assert (=> bs!136933 m!947018))

(assert (=> d!232403 d!232471))

(declare-fun d!232473 () Bool)

(declare-fun lt!284503 () Int)

(assert (=> d!232473 (= lt!284503 (size!6107 (list!3125 (c!121540 input!756))))))

(assert (=> d!232473 (= lt!284503 (ite ((_ is Empty!2628) (c!121540 input!756)) 0 (ite ((_ is Leaf!3897) (c!121540 input!756)) (csize!5487 (c!121540 input!756)) (csize!5486 (c!121540 input!756)))))))

(assert (=> d!232473 (= (size!6108 (c!121540 input!756)) lt!284503)))

(declare-fun bs!136934 () Bool)

(assert (= bs!136934 d!232473))

(assert (=> bs!136934 m!947018))

(assert (=> bs!136934 m!947018))

(declare-fun m!947020 () Bool)

(assert (=> bs!136934 m!947020))

(assert (=> d!232403 d!232473))

(declare-fun bs!136935 () Bool)

(declare-fun d!232475 () Bool)

(assert (= bs!136935 (and d!232475 d!232445)))

(declare-fun lambda!21501 () Int)

(assert (=> bs!136935 (= lambda!21501 lambda!21490)))

(declare-fun bs!136936 () Bool)

(assert (= bs!136936 (and d!232475 d!232461)))

(assert (=> bs!136936 (= lambda!21501 lambda!21497)))

(declare-fun bs!136937 () Bool)

(assert (= bs!136937 (and d!232475 d!232441)))

(assert (=> bs!136937 (= lambda!21501 lambda!21488)))

(declare-fun bs!136938 () Bool)

(assert (= bs!136938 (and d!232475 d!232443)))

(assert (=> bs!136938 (= lambda!21501 lambda!21489)))

(declare-fun bs!136939 () Bool)

(assert (= bs!136939 (and d!232475 d!232453)))

(assert (=> bs!136939 (= lambda!21501 lambda!21493)))

(declare-fun bs!136940 () Bool)

(assert (= bs!136940 (and d!232475 d!232447)))

(assert (=> bs!136940 (= lambda!21501 lambda!21491)))

(declare-fun bs!136941 () Bool)

(assert (= bs!136941 (and d!232475 d!232451)))

(assert (=> bs!136941 (= lambda!21501 lambda!21492)))

(declare-fun bs!136942 () Bool)

(assert (= bs!136942 (and d!232475 d!232467)))

(assert (=> bs!136942 (= lambda!21501 lambda!21500)))

(declare-fun bs!136943 () Bool)

(assert (= bs!136943 (and d!232475 d!232465)))

(assert (=> bs!136943 (= lambda!21501 lambda!21499)))

(declare-fun bs!136944 () Bool)

(assert (= bs!136944 (and d!232475 d!232463)))

(assert (=> bs!136944 (= lambda!21501 lambda!21498)))

(assert (=> d!232475 (= (inv!9543 setElem!3713) (forall!1951 (exprs!741 setElem!3713) lambda!21501))))

(declare-fun bs!136945 () Bool)

(assert (= bs!136945 d!232475))

(declare-fun m!947022 () Bool)

(assert (=> bs!136945 m!947022))

(assert (=> setNonEmpty!3713 d!232475))

(declare-fun d!232477 () Bool)

(assert (=> d!232477 (= (inv!9544 (xs!5279 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) (<= (size!6107 (innerList!2686 (xs!5279 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) 2147483647))))

(declare-fun bs!136946 () Bool)

(assert (= bs!136946 d!232477))

(declare-fun m!947024 () Bool)

(assert (=> bs!136946 m!947024))

(assert (=> b!690780 d!232477))

(assert (=> b!690578 d!232407))

(declare-fun d!232479 () Bool)

(assert (=> d!232479 true))

(declare-fun order!5349 () Int)

(declare-fun lambda!21504 () Int)

(declare-fun order!5351 () Int)

(declare-fun dynLambda!3881 (Int Int) Int)

(declare-fun dynLambda!3882 (Int Int) Int)

(assert (=> d!232479 (< (dynLambda!3881 order!5349 (toValue!2453 (transformation!1493 (h!12845 rules!1357)))) (dynLambda!3882 order!5351 lambda!21504))))

(declare-fun Forall2!274 (Int) Bool)

(assert (=> d!232479 (= (equivClasses!544 (toChars!2312 (transformation!1493 (h!12845 rules!1357))) (toValue!2453 (transformation!1493 (h!12845 rules!1357)))) (Forall2!274 lambda!21504))))

(declare-fun bs!136947 () Bool)

(assert (= bs!136947 d!232479))

(declare-fun m!947026 () Bool)

(assert (=> bs!136947 m!947026))

(assert (=> b!690630 d!232479))

(declare-fun d!232481 () Bool)

(declare-fun res!313412 () Bool)

(declare-fun e!434460 () Bool)

(assert (=> d!232481 (=> (not res!313412) (not e!434460))))

(assert (=> d!232481 (= res!313412 (= (csize!5486 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) (+ (size!6108 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) (size!6108 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))))

(assert (=> d!232481 (= (inv!9541 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) e!434460)))

(declare-fun b!690832 () Bool)

(declare-fun res!313413 () Bool)

(assert (=> b!690832 (=> (not res!313413) (not e!434460))))

(assert (=> b!690832 (= res!313413 (and (not (= (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) Empty!2628)) (not (= (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) Empty!2628))))))

(declare-fun b!690833 () Bool)

(declare-fun res!313414 () Bool)

(assert (=> b!690833 (=> (not res!313414) (not e!434460))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!690833 (= res!313414 (= (cheight!2839 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) (+ (max!0 (height!317 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) (height!317 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) 1)))))

(declare-fun b!690834 () Bool)

(assert (=> b!690834 (= e!434460 (<= 0 (cheight!2839 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))

(assert (= (and d!232481 res!313412) b!690832))

(assert (= (and b!690832 res!313413) b!690833))

(assert (= (and b!690833 res!313414) b!690834))

(declare-fun m!947028 () Bool)

(assert (=> d!232481 m!947028))

(declare-fun m!947030 () Bool)

(assert (=> d!232481 m!947030))

(declare-fun m!947032 () Bool)

(assert (=> b!690833 m!947032))

(declare-fun m!947034 () Bool)

(assert (=> b!690833 m!947034))

(assert (=> b!690833 m!947032))

(assert (=> b!690833 m!947034))

(declare-fun m!947036 () Bool)

(assert (=> b!690833 m!947036))

(assert (=> b!690634 d!232481))

(declare-fun bs!136948 () Bool)

(declare-fun d!232483 () Bool)

(assert (= bs!136948 (and d!232483 d!232445)))

(declare-fun lambda!21505 () Int)

(assert (=> bs!136948 (= lambda!21505 lambda!21490)))

(declare-fun bs!136949 () Bool)

(assert (= bs!136949 (and d!232483 d!232461)))

(assert (=> bs!136949 (= lambda!21505 lambda!21497)))

(declare-fun bs!136950 () Bool)

(assert (= bs!136950 (and d!232483 d!232475)))

(assert (=> bs!136950 (= lambda!21505 lambda!21501)))

(declare-fun bs!136951 () Bool)

(assert (= bs!136951 (and d!232483 d!232441)))

(assert (=> bs!136951 (= lambda!21505 lambda!21488)))

(declare-fun bs!136952 () Bool)

(assert (= bs!136952 (and d!232483 d!232443)))

(assert (=> bs!136952 (= lambda!21505 lambda!21489)))

(declare-fun bs!136953 () Bool)

(assert (= bs!136953 (and d!232483 d!232453)))

(assert (=> bs!136953 (= lambda!21505 lambda!21493)))

(declare-fun bs!136954 () Bool)

(assert (= bs!136954 (and d!232483 d!232447)))

(assert (=> bs!136954 (= lambda!21505 lambda!21491)))

(declare-fun bs!136955 () Bool)

(assert (= bs!136955 (and d!232483 d!232451)))

(assert (=> bs!136955 (= lambda!21505 lambda!21492)))

(declare-fun bs!136956 () Bool)

(assert (= bs!136956 (and d!232483 d!232467)))

(assert (=> bs!136956 (= lambda!21505 lambda!21500)))

(declare-fun bs!136957 () Bool)

(assert (= bs!136957 (and d!232483 d!232465)))

(assert (=> bs!136957 (= lambda!21505 lambda!21499)))

(declare-fun bs!136958 () Bool)

(assert (= bs!136958 (and d!232483 d!232463)))

(assert (=> bs!136958 (= lambda!21505 lambda!21498)))

(assert (=> d!232483 (= (inv!9543 setElem!3723) (forall!1951 (exprs!741 setElem!3723) lambda!21505))))

(declare-fun bs!136959 () Bool)

(assert (= bs!136959 d!232483))

(declare-fun m!947038 () Bool)

(assert (=> bs!136959 m!947038))

(assert (=> setNonEmpty!3723 d!232483))

(declare-fun d!232485 () Bool)

(declare-fun res!313419 () Bool)

(declare-fun e!434463 () Bool)

(assert (=> d!232485 (=> (not res!313419) (not e!434463))))

(declare-fun valid!651 (MutableMap!733) Bool)

(assert (=> d!232485 (= res!313419 (valid!651 (cache!1120 cacheUp!457)))))

(assert (=> d!232485 (= (validCacheMapUp!59 (cache!1120 cacheUp!457)) e!434463)))

(declare-fun b!690839 () Bool)

(declare-fun res!313420 () Bool)

(assert (=> b!690839 (=> (not res!313420) (not e!434463))))

(declare-fun invariantList!136 (List!7453) Bool)

(declare-datatypes ((ListMap!321 0))(
  ( (ListMap!322 (toList!501 List!7453)) )
))
(declare-fun map!1650 (MutableMap!733) ListMap!321)

(assert (=> b!690839 (= res!313420 (invariantList!136 (toList!501 (map!1650 (cache!1120 cacheUp!457)))))))

(declare-fun b!690840 () Bool)

(declare-fun lambda!21508 () Int)

(declare-fun forall!1953 (List!7453 Int) Bool)

(assert (=> b!690840 (= e!434463 (forall!1953 (toList!501 (map!1650 (cache!1120 cacheUp!457))) lambda!21508))))

(assert (= (and d!232485 res!313419) b!690839))

(assert (= (and b!690839 res!313420) b!690840))

(declare-fun m!947041 () Bool)

(assert (=> d!232485 m!947041))

(declare-fun m!947043 () Bool)

(assert (=> b!690839 m!947043))

(declare-fun m!947045 () Bool)

(assert (=> b!690839 m!947045))

(assert (=> b!690840 m!947043))

(declare-fun m!947047 () Bool)

(assert (=> b!690840 m!947047))

(assert (=> d!232405 d!232485))

(declare-fun bs!136960 () Bool)

(declare-fun d!232487 () Bool)

(assert (= bs!136960 (and d!232487 d!232445)))

(declare-fun lambda!21509 () Int)

(assert (=> bs!136960 (= lambda!21509 lambda!21490)))

(declare-fun bs!136961 () Bool)

(assert (= bs!136961 (and d!232487 d!232475)))

(assert (=> bs!136961 (= lambda!21509 lambda!21501)))

(declare-fun bs!136962 () Bool)

(assert (= bs!136962 (and d!232487 d!232441)))

(assert (=> bs!136962 (= lambda!21509 lambda!21488)))

(declare-fun bs!136963 () Bool)

(assert (= bs!136963 (and d!232487 d!232443)))

(assert (=> bs!136963 (= lambda!21509 lambda!21489)))

(declare-fun bs!136964 () Bool)

(assert (= bs!136964 (and d!232487 d!232453)))

(assert (=> bs!136964 (= lambda!21509 lambda!21493)))

(declare-fun bs!136965 () Bool)

(assert (= bs!136965 (and d!232487 d!232447)))

(assert (=> bs!136965 (= lambda!21509 lambda!21491)))

(declare-fun bs!136966 () Bool)

(assert (= bs!136966 (and d!232487 d!232451)))

(assert (=> bs!136966 (= lambda!21509 lambda!21492)))

(declare-fun bs!136967 () Bool)

(assert (= bs!136967 (and d!232487 d!232467)))

(assert (=> bs!136967 (= lambda!21509 lambda!21500)))

(declare-fun bs!136968 () Bool)

(assert (= bs!136968 (and d!232487 d!232483)))

(assert (=> bs!136968 (= lambda!21509 lambda!21505)))

(declare-fun bs!136969 () Bool)

(assert (= bs!136969 (and d!232487 d!232461)))

(assert (=> bs!136969 (= lambda!21509 lambda!21497)))

(declare-fun bs!136970 () Bool)

(assert (= bs!136970 (and d!232487 d!232465)))

(assert (=> bs!136970 (= lambda!21509 lambda!21499)))

(declare-fun bs!136971 () Bool)

(assert (= bs!136971 (and d!232487 d!232463)))

(assert (=> bs!136971 (= lambda!21509 lambda!21498)))

(assert (=> d!232487 (= (inv!9543 setElem!3704) (forall!1951 (exprs!741 setElem!3704) lambda!21509))))

(declare-fun bs!136972 () Bool)

(assert (= bs!136972 d!232487))

(declare-fun m!947049 () Bool)

(assert (=> bs!136972 m!947049))

(assert (=> setNonEmpty!3704 d!232487))

(declare-fun d!232489 () Bool)

(declare-fun res!313427 () Bool)

(declare-fun e!434468 () Bool)

(assert (=> d!232489 (=> (not res!313427) (not e!434468))))

(declare-fun valid!652 (MutableMap!735) Bool)

(assert (=> d!232489 (= res!313427 (valid!652 (cache!1122 cacheDown!470)))))

(assert (=> d!232489 (= (validCacheMapDown!59 (cache!1122 cacheDown!470)) e!434468)))

(declare-fun b!690847 () Bool)

(declare-fun res!313428 () Bool)

(assert (=> b!690847 (=> (not res!313428) (not e!434468))))

(declare-fun invariantList!137 (List!7456) Bool)

(declare-datatypes ((ListMap!323 0))(
  ( (ListMap!324 (toList!502 List!7456)) )
))
(declare-fun map!1651 (MutableMap!735) ListMap!323)

(assert (=> b!690847 (= res!313428 (invariantList!137 (toList!502 (map!1651 (cache!1122 cacheDown!470)))))))

(declare-fun b!690848 () Bool)

(declare-fun lambda!21512 () Int)

(declare-fun forall!1954 (List!7456 Int) Bool)

(assert (=> b!690848 (= e!434468 (forall!1954 (toList!502 (map!1651 (cache!1122 cacheDown!470))) lambda!21512))))

(assert (= (and d!232489 res!313427) b!690847))

(assert (= (and b!690847 res!313428) b!690848))

(declare-fun m!947052 () Bool)

(assert (=> d!232489 m!947052))

(declare-fun m!947054 () Bool)

(assert (=> b!690847 m!947054))

(declare-fun m!947056 () Bool)

(assert (=> b!690847 m!947056))

(assert (=> b!690848 m!947054))

(declare-fun m!947058 () Bool)

(assert (=> b!690848 m!947058))

(assert (=> b!690627 d!232489))

(declare-fun bs!136973 () Bool)

(declare-fun d!232491 () Bool)

(assert (= bs!136973 (and d!232491 d!232445)))

(declare-fun lambda!21513 () Int)

(assert (=> bs!136973 (= lambda!21513 lambda!21490)))

(declare-fun bs!136974 () Bool)

(assert (= bs!136974 (and d!232491 d!232475)))

(assert (=> bs!136974 (= lambda!21513 lambda!21501)))

(declare-fun bs!136975 () Bool)

(assert (= bs!136975 (and d!232491 d!232441)))

(assert (=> bs!136975 (= lambda!21513 lambda!21488)))

(declare-fun bs!136976 () Bool)

(assert (= bs!136976 (and d!232491 d!232443)))

(assert (=> bs!136976 (= lambda!21513 lambda!21489)))

(declare-fun bs!136977 () Bool)

(assert (= bs!136977 (and d!232491 d!232453)))

(assert (=> bs!136977 (= lambda!21513 lambda!21493)))

(declare-fun bs!136978 () Bool)

(assert (= bs!136978 (and d!232491 d!232447)))

(assert (=> bs!136978 (= lambda!21513 lambda!21491)))

(declare-fun bs!136979 () Bool)

(assert (= bs!136979 (and d!232491 d!232467)))

(assert (=> bs!136979 (= lambda!21513 lambda!21500)))

(declare-fun bs!136980 () Bool)

(assert (= bs!136980 (and d!232491 d!232483)))

(assert (=> bs!136980 (= lambda!21513 lambda!21505)))

(declare-fun bs!136981 () Bool)

(assert (= bs!136981 (and d!232491 d!232461)))

(assert (=> bs!136981 (= lambda!21513 lambda!21497)))

(declare-fun bs!136982 () Bool)

(assert (= bs!136982 (and d!232491 d!232465)))

(assert (=> bs!136982 (= lambda!21513 lambda!21499)))

(declare-fun bs!136983 () Bool)

(assert (= bs!136983 (and d!232491 d!232463)))

(assert (=> bs!136983 (= lambda!21513 lambda!21498)))

(declare-fun bs!136984 () Bool)

(assert (= bs!136984 (and d!232491 d!232487)))

(assert (=> bs!136984 (= lambda!21513 lambda!21509)))

(declare-fun bs!136985 () Bool)

(assert (= bs!136985 (and d!232491 d!232451)))

(assert (=> bs!136985 (= lambda!21513 lambda!21492)))

(assert (=> d!232491 (= (inv!9543 setElem!3714) (forall!1951 (exprs!741 setElem!3714) lambda!21513))))

(declare-fun bs!136986 () Bool)

(assert (= bs!136986 d!232491))

(declare-fun m!947060 () Bool)

(assert (=> bs!136986 m!947060))

(assert (=> setNonEmpty!3714 d!232491))

(declare-fun bs!136987 () Bool)

(declare-fun d!232493 () Bool)

(assert (= bs!136987 (and d!232493 d!232445)))

(declare-fun lambda!21514 () Int)

(assert (=> bs!136987 (= lambda!21514 lambda!21490)))

(declare-fun bs!136988 () Bool)

(assert (= bs!136988 (and d!232493 d!232475)))

(assert (=> bs!136988 (= lambda!21514 lambda!21501)))

(declare-fun bs!136989 () Bool)

(assert (= bs!136989 (and d!232493 d!232441)))

(assert (=> bs!136989 (= lambda!21514 lambda!21488)))

(declare-fun bs!136990 () Bool)

(assert (= bs!136990 (and d!232493 d!232443)))

(assert (=> bs!136990 (= lambda!21514 lambda!21489)))

(declare-fun bs!136991 () Bool)

(assert (= bs!136991 (and d!232493 d!232453)))

(assert (=> bs!136991 (= lambda!21514 lambda!21493)))

(declare-fun bs!136992 () Bool)

(assert (= bs!136992 (and d!232493 d!232447)))

(assert (=> bs!136992 (= lambda!21514 lambda!21491)))

(declare-fun bs!136993 () Bool)

(assert (= bs!136993 (and d!232493 d!232467)))

(assert (=> bs!136993 (= lambda!21514 lambda!21500)))

(declare-fun bs!136994 () Bool)

(assert (= bs!136994 (and d!232493 d!232491)))

(assert (=> bs!136994 (= lambda!21514 lambda!21513)))

(declare-fun bs!136995 () Bool)

(assert (= bs!136995 (and d!232493 d!232483)))

(assert (=> bs!136995 (= lambda!21514 lambda!21505)))

(declare-fun bs!136996 () Bool)

(assert (= bs!136996 (and d!232493 d!232461)))

(assert (=> bs!136996 (= lambda!21514 lambda!21497)))

(declare-fun bs!136997 () Bool)

(assert (= bs!136997 (and d!232493 d!232465)))

(assert (=> bs!136997 (= lambda!21514 lambda!21499)))

(declare-fun bs!136998 () Bool)

(assert (= bs!136998 (and d!232493 d!232463)))

(assert (=> bs!136998 (= lambda!21514 lambda!21498)))

(declare-fun bs!136999 () Bool)

(assert (= bs!136999 (and d!232493 d!232487)))

(assert (=> bs!136999 (= lambda!21514 lambda!21509)))

(declare-fun bs!137000 () Bool)

(assert (= bs!137000 (and d!232493 d!232451)))

(assert (=> bs!137000 (= lambda!21514 lambda!21492)))

(assert (=> d!232493 (= (inv!9543 (_2!4330 (_1!4331 (h!12843 mapValue!3050)))) (forall!1951 (exprs!741 (_2!4330 (_1!4331 (h!12843 mapValue!3050)))) lambda!21514))))

(declare-fun bs!137001 () Bool)

(assert (= bs!137001 d!232493))

(declare-fun m!947062 () Bool)

(assert (=> bs!137001 m!947062))

(assert (=> b!690721 d!232493))

(declare-fun d!232495 () Bool)

(declare-fun res!313433 () Bool)

(declare-fun e!434471 () Bool)

(assert (=> d!232495 (=> (not res!313433) (not e!434471))))

(declare-fun list!3126 (IArray!5257) List!7454)

(assert (=> d!232495 (= res!313433 (<= (size!6107 (list!3126 (xs!5279 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) 512))))

(assert (=> d!232495 (= (inv!9542 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) e!434471)))

(declare-fun b!690853 () Bool)

(declare-fun res!313434 () Bool)

(assert (=> b!690853 (=> (not res!313434) (not e!434471))))

(assert (=> b!690853 (= res!313434 (= (csize!5487 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) (size!6107 (list!3126 (xs!5279 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))))

(declare-fun b!690854 () Bool)

(assert (=> b!690854 (= e!434471 (and (> (csize!5487 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) 0) (<= (csize!5487 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) 512)))))

(assert (= (and d!232495 res!313433) b!690853))

(assert (= (and b!690853 res!313434) b!690854))

(declare-fun m!947064 () Bool)

(assert (=> d!232495 m!947064))

(assert (=> d!232495 m!947064))

(declare-fun m!947066 () Bool)

(assert (=> d!232495 m!947066))

(assert (=> b!690853 m!947064))

(assert (=> b!690853 m!947064))

(assert (=> b!690853 m!947066))

(assert (=> b!690636 d!232495))

(declare-fun bs!137002 () Bool)

(declare-fun d!232497 () Bool)

(assert (= bs!137002 (and d!232497 d!232445)))

(declare-fun lambda!21515 () Int)

(assert (=> bs!137002 (= lambda!21515 lambda!21490)))

(declare-fun bs!137003 () Bool)

(assert (= bs!137003 (and d!232497 d!232475)))

(assert (=> bs!137003 (= lambda!21515 lambda!21501)))

(declare-fun bs!137004 () Bool)

(assert (= bs!137004 (and d!232497 d!232441)))

(assert (=> bs!137004 (= lambda!21515 lambda!21488)))

(declare-fun bs!137005 () Bool)

(assert (= bs!137005 (and d!232497 d!232443)))

(assert (=> bs!137005 (= lambda!21515 lambda!21489)))

(declare-fun bs!137006 () Bool)

(assert (= bs!137006 (and d!232497 d!232453)))

(assert (=> bs!137006 (= lambda!21515 lambda!21493)))

(declare-fun bs!137007 () Bool)

(assert (= bs!137007 (and d!232497 d!232467)))

(assert (=> bs!137007 (= lambda!21515 lambda!21500)))

(declare-fun bs!137008 () Bool)

(assert (= bs!137008 (and d!232497 d!232491)))

(assert (=> bs!137008 (= lambda!21515 lambda!21513)))

(declare-fun bs!137009 () Bool)

(assert (= bs!137009 (and d!232497 d!232483)))

(assert (=> bs!137009 (= lambda!21515 lambda!21505)))

(declare-fun bs!137010 () Bool)

(assert (= bs!137010 (and d!232497 d!232461)))

(assert (=> bs!137010 (= lambda!21515 lambda!21497)))

(declare-fun bs!137011 () Bool)

(assert (= bs!137011 (and d!232497 d!232465)))

(assert (=> bs!137011 (= lambda!21515 lambda!21499)))

(declare-fun bs!137012 () Bool)

(assert (= bs!137012 (and d!232497 d!232463)))

(assert (=> bs!137012 (= lambda!21515 lambda!21498)))

(declare-fun bs!137013 () Bool)

(assert (= bs!137013 (and d!232497 d!232447)))

(assert (=> bs!137013 (= lambda!21515 lambda!21491)))

(declare-fun bs!137014 () Bool)

(assert (= bs!137014 (and d!232497 d!232493)))

(assert (=> bs!137014 (= lambda!21515 lambda!21514)))

(declare-fun bs!137015 () Bool)

(assert (= bs!137015 (and d!232497 d!232487)))

(assert (=> bs!137015 (= lambda!21515 lambda!21509)))

(declare-fun bs!137016 () Bool)

(assert (= bs!137016 (and d!232497 d!232451)))

(assert (=> bs!137016 (= lambda!21515 lambda!21492)))

(assert (=> d!232497 (= (inv!9543 (_2!4330 (_1!4331 (h!12843 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))))) (forall!1951 (exprs!741 (_2!4330 (_1!4331 (h!12843 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))))) lambda!21515))))

(declare-fun bs!137017 () Bool)

(assert (= bs!137017 d!232497))

(declare-fun m!947068 () Bool)

(assert (=> bs!137017 m!947068))

(assert (=> b!690727 d!232497))

(declare-fun d!232499 () Bool)

(assert (=> d!232499 (= (inv!9531 (tag!1755 (h!12845 (t!87274 rules!1357)))) (= (mod (str.len (value!48191 (tag!1755 (h!12845 (t!87274 rules!1357))))) 2) 0))))

(assert (=> b!690646 d!232499))

(declare-fun d!232501 () Bool)

(declare-fun res!313435 () Bool)

(declare-fun e!434472 () Bool)

(assert (=> d!232501 (=> (not res!313435) (not e!434472))))

(assert (=> d!232501 (= res!313435 (semiInverseModEq!569 (toChars!2312 (transformation!1493 (h!12845 (t!87274 rules!1357)))) (toValue!2453 (transformation!1493 (h!12845 (t!87274 rules!1357))))))))

(assert (=> d!232501 (= (inv!9540 (transformation!1493 (h!12845 (t!87274 rules!1357)))) e!434472)))

(declare-fun b!690855 () Bool)

(assert (=> b!690855 (= e!434472 (equivClasses!544 (toChars!2312 (transformation!1493 (h!12845 (t!87274 rules!1357)))) (toValue!2453 (transformation!1493 (h!12845 (t!87274 rules!1357))))))))

(assert (= (and d!232501 res!313435) b!690855))

(declare-fun m!947070 () Bool)

(assert (=> d!232501 m!947070))

(declare-fun m!947072 () Bool)

(assert (=> b!690855 m!947072))

(assert (=> b!690646 d!232501))

(declare-fun bs!137018 () Bool)

(declare-fun d!232503 () Bool)

(assert (= bs!137018 (and d!232503 d!232445)))

(declare-fun lambda!21516 () Int)

(assert (=> bs!137018 (= lambda!21516 lambda!21490)))

(declare-fun bs!137019 () Bool)

(assert (= bs!137019 (and d!232503 d!232475)))

(assert (=> bs!137019 (= lambda!21516 lambda!21501)))

(declare-fun bs!137020 () Bool)

(assert (= bs!137020 (and d!232503 d!232441)))

(assert (=> bs!137020 (= lambda!21516 lambda!21488)))

(declare-fun bs!137021 () Bool)

(assert (= bs!137021 (and d!232503 d!232443)))

(assert (=> bs!137021 (= lambda!21516 lambda!21489)))

(declare-fun bs!137022 () Bool)

(assert (= bs!137022 (and d!232503 d!232453)))

(assert (=> bs!137022 (= lambda!21516 lambda!21493)))

(declare-fun bs!137023 () Bool)

(assert (= bs!137023 (and d!232503 d!232497)))

(assert (=> bs!137023 (= lambda!21516 lambda!21515)))

(declare-fun bs!137024 () Bool)

(assert (= bs!137024 (and d!232503 d!232467)))

(assert (=> bs!137024 (= lambda!21516 lambda!21500)))

(declare-fun bs!137025 () Bool)

(assert (= bs!137025 (and d!232503 d!232491)))

(assert (=> bs!137025 (= lambda!21516 lambda!21513)))

(declare-fun bs!137026 () Bool)

(assert (= bs!137026 (and d!232503 d!232483)))

(assert (=> bs!137026 (= lambda!21516 lambda!21505)))

(declare-fun bs!137027 () Bool)

(assert (= bs!137027 (and d!232503 d!232461)))

(assert (=> bs!137027 (= lambda!21516 lambda!21497)))

(declare-fun bs!137028 () Bool)

(assert (= bs!137028 (and d!232503 d!232465)))

(assert (=> bs!137028 (= lambda!21516 lambda!21499)))

(declare-fun bs!137029 () Bool)

(assert (= bs!137029 (and d!232503 d!232463)))

(assert (=> bs!137029 (= lambda!21516 lambda!21498)))

(declare-fun bs!137030 () Bool)

(assert (= bs!137030 (and d!232503 d!232447)))

(assert (=> bs!137030 (= lambda!21516 lambda!21491)))

(declare-fun bs!137031 () Bool)

(assert (= bs!137031 (and d!232503 d!232493)))

(assert (=> bs!137031 (= lambda!21516 lambda!21514)))

(declare-fun bs!137032 () Bool)

(assert (= bs!137032 (and d!232503 d!232487)))

(assert (=> bs!137032 (= lambda!21516 lambda!21509)))

(declare-fun bs!137033 () Bool)

(assert (= bs!137033 (and d!232503 d!232451)))

(assert (=> bs!137033 (= lambda!21516 lambda!21492)))

(assert (=> d!232503 (= (inv!9543 (_2!4330 (_1!4331 (h!12843 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))))) (forall!1951 (exprs!741 (_2!4330 (_1!4331 (h!12843 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))))) lambda!21516))))

(declare-fun bs!137034 () Bool)

(assert (= bs!137034 d!232503))

(declare-fun m!947074 () Bool)

(assert (=> bs!137034 m!947074))

(assert (=> b!690724 d!232503))

(declare-fun bs!137035 () Bool)

(declare-fun d!232505 () Bool)

(assert (= bs!137035 (and d!232505 d!232445)))

(declare-fun lambda!21517 () Int)

(assert (=> bs!137035 (= lambda!21517 lambda!21490)))

(declare-fun bs!137036 () Bool)

(assert (= bs!137036 (and d!232505 d!232503)))

(assert (=> bs!137036 (= lambda!21517 lambda!21516)))

(declare-fun bs!137037 () Bool)

(assert (= bs!137037 (and d!232505 d!232475)))

(assert (=> bs!137037 (= lambda!21517 lambda!21501)))

(declare-fun bs!137038 () Bool)

(assert (= bs!137038 (and d!232505 d!232441)))

(assert (=> bs!137038 (= lambda!21517 lambda!21488)))

(declare-fun bs!137039 () Bool)

(assert (= bs!137039 (and d!232505 d!232443)))

(assert (=> bs!137039 (= lambda!21517 lambda!21489)))

(declare-fun bs!137040 () Bool)

(assert (= bs!137040 (and d!232505 d!232453)))

(assert (=> bs!137040 (= lambda!21517 lambda!21493)))

(declare-fun bs!137041 () Bool)

(assert (= bs!137041 (and d!232505 d!232497)))

(assert (=> bs!137041 (= lambda!21517 lambda!21515)))

(declare-fun bs!137042 () Bool)

(assert (= bs!137042 (and d!232505 d!232467)))

(assert (=> bs!137042 (= lambda!21517 lambda!21500)))

(declare-fun bs!137043 () Bool)

(assert (= bs!137043 (and d!232505 d!232491)))

(assert (=> bs!137043 (= lambda!21517 lambda!21513)))

(declare-fun bs!137044 () Bool)

(assert (= bs!137044 (and d!232505 d!232483)))

(assert (=> bs!137044 (= lambda!21517 lambda!21505)))

(declare-fun bs!137045 () Bool)

(assert (= bs!137045 (and d!232505 d!232461)))

(assert (=> bs!137045 (= lambda!21517 lambda!21497)))

(declare-fun bs!137046 () Bool)

(assert (= bs!137046 (and d!232505 d!232465)))

(assert (=> bs!137046 (= lambda!21517 lambda!21499)))

(declare-fun bs!137047 () Bool)

(assert (= bs!137047 (and d!232505 d!232463)))

(assert (=> bs!137047 (= lambda!21517 lambda!21498)))

(declare-fun bs!137048 () Bool)

(assert (= bs!137048 (and d!232505 d!232447)))

(assert (=> bs!137048 (= lambda!21517 lambda!21491)))

(declare-fun bs!137049 () Bool)

(assert (= bs!137049 (and d!232505 d!232493)))

(assert (=> bs!137049 (= lambda!21517 lambda!21514)))

(declare-fun bs!137050 () Bool)

(assert (= bs!137050 (and d!232505 d!232487)))

(assert (=> bs!137050 (= lambda!21517 lambda!21509)))

(declare-fun bs!137051 () Bool)

(assert (= bs!137051 (and d!232505 d!232451)))

(assert (=> bs!137051 (= lambda!21517 lambda!21492)))

(assert (=> d!232505 (= (inv!9543 setElem!3698) (forall!1951 (exprs!741 setElem!3698) lambda!21517))))

(declare-fun bs!137052 () Bool)

(assert (= bs!137052 d!232505))

(declare-fun m!947076 () Bool)

(assert (=> bs!137052 m!947076))

(assert (=> setNonEmpty!3698 d!232505))

(declare-fun bs!137053 () Bool)

(declare-fun d!232507 () Bool)

(assert (= bs!137053 (and d!232507 d!232445)))

(declare-fun lambda!21518 () Int)

(assert (=> bs!137053 (= lambda!21518 lambda!21490)))

(declare-fun bs!137054 () Bool)

(assert (= bs!137054 (and d!232507 d!232503)))

(assert (=> bs!137054 (= lambda!21518 lambda!21516)))

(declare-fun bs!137055 () Bool)

(assert (= bs!137055 (and d!232507 d!232475)))

(assert (=> bs!137055 (= lambda!21518 lambda!21501)))

(declare-fun bs!137056 () Bool)

(assert (= bs!137056 (and d!232507 d!232441)))

(assert (=> bs!137056 (= lambda!21518 lambda!21488)))

(declare-fun bs!137057 () Bool)

(assert (= bs!137057 (and d!232507 d!232443)))

(assert (=> bs!137057 (= lambda!21518 lambda!21489)))

(declare-fun bs!137058 () Bool)

(assert (= bs!137058 (and d!232507 d!232453)))

(assert (=> bs!137058 (= lambda!21518 lambda!21493)))

(declare-fun bs!137059 () Bool)

(assert (= bs!137059 (and d!232507 d!232505)))

(assert (=> bs!137059 (= lambda!21518 lambda!21517)))

(declare-fun bs!137060 () Bool)

(assert (= bs!137060 (and d!232507 d!232497)))

(assert (=> bs!137060 (= lambda!21518 lambda!21515)))

(declare-fun bs!137061 () Bool)

(assert (= bs!137061 (and d!232507 d!232467)))

(assert (=> bs!137061 (= lambda!21518 lambda!21500)))

(declare-fun bs!137062 () Bool)

(assert (= bs!137062 (and d!232507 d!232491)))

(assert (=> bs!137062 (= lambda!21518 lambda!21513)))

(declare-fun bs!137063 () Bool)

(assert (= bs!137063 (and d!232507 d!232483)))

(assert (=> bs!137063 (= lambda!21518 lambda!21505)))

(declare-fun bs!137064 () Bool)

(assert (= bs!137064 (and d!232507 d!232461)))

(assert (=> bs!137064 (= lambda!21518 lambda!21497)))

(declare-fun bs!137065 () Bool)

(assert (= bs!137065 (and d!232507 d!232465)))

(assert (=> bs!137065 (= lambda!21518 lambda!21499)))

(declare-fun bs!137066 () Bool)

(assert (= bs!137066 (and d!232507 d!232463)))

(assert (=> bs!137066 (= lambda!21518 lambda!21498)))

(declare-fun bs!137067 () Bool)

(assert (= bs!137067 (and d!232507 d!232447)))

(assert (=> bs!137067 (= lambda!21518 lambda!21491)))

(declare-fun bs!137068 () Bool)

(assert (= bs!137068 (and d!232507 d!232493)))

(assert (=> bs!137068 (= lambda!21518 lambda!21514)))

(declare-fun bs!137069 () Bool)

(assert (= bs!137069 (and d!232507 d!232487)))

(assert (=> bs!137069 (= lambda!21518 lambda!21509)))

(declare-fun bs!137070 () Bool)

(assert (= bs!137070 (and d!232507 d!232451)))

(assert (=> bs!137070 (= lambda!21518 lambda!21492)))

(assert (=> d!232507 (= (inv!9543 (_1!4326 (_1!4327 (h!12840 (zeroValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))))) (forall!1951 (exprs!741 (_1!4326 (_1!4327 (h!12840 (zeroValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))))) lambda!21518))))

(declare-fun bs!137071 () Bool)

(assert (= bs!137071 d!232507))

(declare-fun m!947078 () Bool)

(assert (=> bs!137071 m!947078))

(assert (=> b!690759 d!232507))

(declare-fun bs!137072 () Bool)

(declare-fun d!232509 () Bool)

(assert (= bs!137072 (and d!232509 d!232445)))

(declare-fun lambda!21519 () Int)

(assert (=> bs!137072 (= lambda!21519 lambda!21490)))

(declare-fun bs!137073 () Bool)

(assert (= bs!137073 (and d!232509 d!232503)))

(assert (=> bs!137073 (= lambda!21519 lambda!21516)))

(declare-fun bs!137074 () Bool)

(assert (= bs!137074 (and d!232509 d!232475)))

(assert (=> bs!137074 (= lambda!21519 lambda!21501)))

(declare-fun bs!137075 () Bool)

(assert (= bs!137075 (and d!232509 d!232441)))

(assert (=> bs!137075 (= lambda!21519 lambda!21488)))

(declare-fun bs!137076 () Bool)

(assert (= bs!137076 (and d!232509 d!232443)))

(assert (=> bs!137076 (= lambda!21519 lambda!21489)))

(declare-fun bs!137077 () Bool)

(assert (= bs!137077 (and d!232509 d!232453)))

(assert (=> bs!137077 (= lambda!21519 lambda!21493)))

(declare-fun bs!137078 () Bool)

(assert (= bs!137078 (and d!232509 d!232505)))

(assert (=> bs!137078 (= lambda!21519 lambda!21517)))

(declare-fun bs!137079 () Bool)

(assert (= bs!137079 (and d!232509 d!232467)))

(assert (=> bs!137079 (= lambda!21519 lambda!21500)))

(declare-fun bs!137080 () Bool)

(assert (= bs!137080 (and d!232509 d!232491)))

(assert (=> bs!137080 (= lambda!21519 lambda!21513)))

(declare-fun bs!137081 () Bool)

(assert (= bs!137081 (and d!232509 d!232483)))

(assert (=> bs!137081 (= lambda!21519 lambda!21505)))

(declare-fun bs!137082 () Bool)

(assert (= bs!137082 (and d!232509 d!232461)))

(assert (=> bs!137082 (= lambda!21519 lambda!21497)))

(declare-fun bs!137083 () Bool)

(assert (= bs!137083 (and d!232509 d!232465)))

(assert (=> bs!137083 (= lambda!21519 lambda!21499)))

(declare-fun bs!137084 () Bool)

(assert (= bs!137084 (and d!232509 d!232463)))

(assert (=> bs!137084 (= lambda!21519 lambda!21498)))

(declare-fun bs!137085 () Bool)

(assert (= bs!137085 (and d!232509 d!232507)))

(assert (=> bs!137085 (= lambda!21519 lambda!21518)))

(declare-fun bs!137086 () Bool)

(assert (= bs!137086 (and d!232509 d!232497)))

(assert (=> bs!137086 (= lambda!21519 lambda!21515)))

(declare-fun bs!137087 () Bool)

(assert (= bs!137087 (and d!232509 d!232447)))

(assert (=> bs!137087 (= lambda!21519 lambda!21491)))

(declare-fun bs!137088 () Bool)

(assert (= bs!137088 (and d!232509 d!232493)))

(assert (=> bs!137088 (= lambda!21519 lambda!21514)))

(declare-fun bs!137089 () Bool)

(assert (= bs!137089 (and d!232509 d!232487)))

(assert (=> bs!137089 (= lambda!21519 lambda!21509)))

(declare-fun bs!137090 () Bool)

(assert (= bs!137090 (and d!232509 d!232451)))

(assert (=> bs!137090 (= lambda!21519 lambda!21492)))

(assert (=> d!232509 (= (inv!9543 (_2!4330 (_1!4331 (h!12843 mapValue!3058)))) (forall!1951 (exprs!741 (_2!4330 (_1!4331 (h!12843 mapValue!3058)))) lambda!21519))))

(declare-fun bs!137091 () Bool)

(assert (= bs!137091 d!232509))

(declare-fun m!947080 () Bool)

(assert (=> bs!137091 m!947080))

(assert (=> b!690709 d!232509))

(declare-fun bs!137092 () Bool)

(declare-fun d!232511 () Bool)

(assert (= bs!137092 (and d!232511 d!232445)))

(declare-fun lambda!21520 () Int)

(assert (=> bs!137092 (= lambda!21520 lambda!21490)))

(declare-fun bs!137093 () Bool)

(assert (= bs!137093 (and d!232511 d!232503)))

(assert (=> bs!137093 (= lambda!21520 lambda!21516)))

(declare-fun bs!137094 () Bool)

(assert (= bs!137094 (and d!232511 d!232509)))

(assert (=> bs!137094 (= lambda!21520 lambda!21519)))

(declare-fun bs!137095 () Bool)

(assert (= bs!137095 (and d!232511 d!232475)))

(assert (=> bs!137095 (= lambda!21520 lambda!21501)))

(declare-fun bs!137096 () Bool)

(assert (= bs!137096 (and d!232511 d!232441)))

(assert (=> bs!137096 (= lambda!21520 lambda!21488)))

(declare-fun bs!137097 () Bool)

(assert (= bs!137097 (and d!232511 d!232443)))

(assert (=> bs!137097 (= lambda!21520 lambda!21489)))

(declare-fun bs!137098 () Bool)

(assert (= bs!137098 (and d!232511 d!232453)))

(assert (=> bs!137098 (= lambda!21520 lambda!21493)))

(declare-fun bs!137099 () Bool)

(assert (= bs!137099 (and d!232511 d!232505)))

(assert (=> bs!137099 (= lambda!21520 lambda!21517)))

(declare-fun bs!137100 () Bool)

(assert (= bs!137100 (and d!232511 d!232467)))

(assert (=> bs!137100 (= lambda!21520 lambda!21500)))

(declare-fun bs!137101 () Bool)

(assert (= bs!137101 (and d!232511 d!232491)))

(assert (=> bs!137101 (= lambda!21520 lambda!21513)))

(declare-fun bs!137102 () Bool)

(assert (= bs!137102 (and d!232511 d!232483)))

(assert (=> bs!137102 (= lambda!21520 lambda!21505)))

(declare-fun bs!137103 () Bool)

(assert (= bs!137103 (and d!232511 d!232461)))

(assert (=> bs!137103 (= lambda!21520 lambda!21497)))

(declare-fun bs!137104 () Bool)

(assert (= bs!137104 (and d!232511 d!232465)))

(assert (=> bs!137104 (= lambda!21520 lambda!21499)))

(declare-fun bs!137105 () Bool)

(assert (= bs!137105 (and d!232511 d!232463)))

(assert (=> bs!137105 (= lambda!21520 lambda!21498)))

(declare-fun bs!137106 () Bool)

(assert (= bs!137106 (and d!232511 d!232507)))

(assert (=> bs!137106 (= lambda!21520 lambda!21518)))

(declare-fun bs!137107 () Bool)

(assert (= bs!137107 (and d!232511 d!232497)))

(assert (=> bs!137107 (= lambda!21520 lambda!21515)))

(declare-fun bs!137108 () Bool)

(assert (= bs!137108 (and d!232511 d!232447)))

(assert (=> bs!137108 (= lambda!21520 lambda!21491)))

(declare-fun bs!137109 () Bool)

(assert (= bs!137109 (and d!232511 d!232493)))

(assert (=> bs!137109 (= lambda!21520 lambda!21514)))

(declare-fun bs!137110 () Bool)

(assert (= bs!137110 (and d!232511 d!232487)))

(assert (=> bs!137110 (= lambda!21520 lambda!21509)))

(declare-fun bs!137111 () Bool)

(assert (= bs!137111 (and d!232511 d!232451)))

(assert (=> bs!137111 (= lambda!21520 lambda!21492)))

(assert (=> d!232511 (= (inv!9543 (_1!4326 (_1!4327 (h!12840 mapDefault!3055)))) (forall!1951 (exprs!741 (_1!4326 (_1!4327 (h!12840 mapDefault!3055)))) lambda!21520))))

(declare-fun bs!137112 () Bool)

(assert (= bs!137112 d!232511))

(declare-fun m!947082 () Bool)

(assert (=> bs!137112 m!947082))

(assert (=> b!690675 d!232511))

(declare-fun d!232513 () Bool)

(declare-fun res!313439 () Bool)

(declare-fun e!434473 () Bool)

(assert (=> d!232513 (=> res!313439 e!434473)))

(assert (=> d!232513 (= res!313439 (not ((_ is Node!2628) (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))

(assert (=> d!232513 (= (isBalanced!694 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))) e!434473)))

(declare-fun b!690856 () Bool)

(declare-fun e!434474 () Bool)

(assert (=> b!690856 (= e!434473 e!434474)))

(declare-fun res!313437 () Bool)

(assert (=> b!690856 (=> (not res!313437) (not e!434474))))

(assert (=> b!690856 (= res!313437 (<= (- 1) (- (height!317 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) (height!317 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))))

(declare-fun b!690857 () Bool)

(declare-fun res!313440 () Bool)

(assert (=> b!690857 (=> (not res!313440) (not e!434474))))

(assert (=> b!690857 (= res!313440 (<= (- (height!317 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) (height!317 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) 1))))

(declare-fun b!690858 () Bool)

(declare-fun res!313436 () Bool)

(assert (=> b!690858 (=> (not res!313436) (not e!434474))))

(assert (=> b!690858 (= res!313436 (isBalanced!694 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))

(declare-fun b!690859 () Bool)

(declare-fun res!313441 () Bool)

(assert (=> b!690859 (=> (not res!313441) (not e!434474))))

(assert (=> b!690859 (= res!313441 (isBalanced!694 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))

(declare-fun b!690860 () Bool)

(assert (=> b!690860 (= e!434474 (not (isEmpty!4862 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))))))

(declare-fun b!690861 () Bool)

(declare-fun res!313438 () Bool)

(assert (=> b!690861 (=> (not res!313438) (not e!434474))))

(assert (=> b!690861 (= res!313438 (not (isEmpty!4862 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))))))

(assert (= (and d!232513 (not res!313439)) b!690856))

(assert (= (and b!690856 res!313437) b!690857))

(assert (= (and b!690857 res!313440) b!690858))

(assert (= (and b!690858 res!313436) b!690859))

(assert (= (and b!690859 res!313441) b!690861))

(assert (= (and b!690861 res!313438) b!690860))

(declare-fun m!947084 () Bool)

(assert (=> b!690859 m!947084))

(assert (=> b!690857 m!947032))

(assert (=> b!690857 m!947034))

(assert (=> b!690856 m!947032))

(assert (=> b!690856 m!947034))

(declare-fun m!947086 () Bool)

(assert (=> b!690860 m!947086))

(declare-fun m!947088 () Bool)

(assert (=> b!690858 m!947088))

(declare-fun m!947090 () Bool)

(assert (=> b!690861 m!947090))

(assert (=> d!232437 d!232513))

(assert (=> d!232417 d!232489))

(declare-fun d!232515 () Bool)

(assert (=> d!232515 true))

(declare-fun order!5353 () Int)

(declare-fun order!5355 () Int)

(declare-fun lambda!21523 () Int)

(declare-fun dynLambda!3883 (Int Int) Int)

(declare-fun dynLambda!3884 (Int Int) Int)

(assert (=> d!232515 (< (dynLambda!3883 order!5353 (toChars!2312 (transformation!1493 (h!12845 rules!1357)))) (dynLambda!3884 order!5355 lambda!21523))))

(assert (=> d!232515 true))

(assert (=> d!232515 (< (dynLambda!3881 order!5349 (toValue!2453 (transformation!1493 (h!12845 rules!1357)))) (dynLambda!3884 order!5355 lambda!21523))))

(declare-fun Forall!356 (Int) Bool)

(assert (=> d!232515 (= (semiInverseModEq!569 (toChars!2312 (transformation!1493 (h!12845 rules!1357))) (toValue!2453 (transformation!1493 (h!12845 rules!1357)))) (Forall!356 lambda!21523))))

(declare-fun bs!137113 () Bool)

(assert (= bs!137113 d!232515))

(declare-fun m!947092 () Bool)

(assert (=> bs!137113 m!947092))

(assert (=> d!232429 d!232515))

(declare-fun d!232517 () Bool)

(assert (=> d!232517 (= (inv!9544 (xs!5279 (c!121540 input!756))) (<= (size!6107 (innerList!2686 (xs!5279 (c!121540 input!756)))) 2147483647))))

(declare-fun bs!137114 () Bool)

(assert (= bs!137114 d!232517))

(declare-fun m!947094 () Bool)

(assert (=> bs!137114 m!947094))

(assert (=> b!690691 d!232517))

(assert (=> b!690624 d!232485))

(declare-fun d!232519 () Bool)

(declare-fun res!313442 () Bool)

(declare-fun e!434475 () Bool)

(assert (=> d!232519 (=> (not res!313442) (not e!434475))))

(assert (=> d!232519 (= res!313442 (<= (size!6107 (list!3126 (xs!5279 (c!121540 input!756)))) 512))))

(assert (=> d!232519 (= (inv!9542 (c!121540 input!756)) e!434475)))

(declare-fun b!690866 () Bool)

(declare-fun res!313443 () Bool)

(assert (=> b!690866 (=> (not res!313443) (not e!434475))))

(assert (=> b!690866 (= res!313443 (= (csize!5487 (c!121540 input!756)) (size!6107 (list!3126 (xs!5279 (c!121540 input!756))))))))

(declare-fun b!690867 () Bool)

(assert (=> b!690867 (= e!434475 (and (> (csize!5487 (c!121540 input!756)) 0) (<= (csize!5487 (c!121540 input!756)) 512)))))

(assert (= (and d!232519 res!313442) b!690866))

(assert (= (and b!690866 res!313443) b!690867))

(declare-fun m!947096 () Bool)

(assert (=> d!232519 m!947096))

(assert (=> d!232519 m!947096))

(declare-fun m!947098 () Bool)

(assert (=> d!232519 m!947098))

(assert (=> b!690866 m!947096))

(assert (=> b!690866 m!947096))

(assert (=> b!690866 m!947098))

(assert (=> b!690618 d!232519))

(declare-fun bs!137115 () Bool)

(declare-fun d!232521 () Bool)

(assert (= bs!137115 (and d!232521 d!232445)))

(declare-fun lambda!21524 () Int)

(assert (=> bs!137115 (= lambda!21524 lambda!21490)))

(declare-fun bs!137116 () Bool)

(assert (= bs!137116 (and d!232521 d!232503)))

(assert (=> bs!137116 (= lambda!21524 lambda!21516)))

(declare-fun bs!137117 () Bool)

(assert (= bs!137117 (and d!232521 d!232509)))

(assert (=> bs!137117 (= lambda!21524 lambda!21519)))

(declare-fun bs!137118 () Bool)

(assert (= bs!137118 (and d!232521 d!232475)))

(assert (=> bs!137118 (= lambda!21524 lambda!21501)))

(declare-fun bs!137119 () Bool)

(assert (= bs!137119 (and d!232521 d!232441)))

(assert (=> bs!137119 (= lambda!21524 lambda!21488)))

(declare-fun bs!137120 () Bool)

(assert (= bs!137120 (and d!232521 d!232443)))

(assert (=> bs!137120 (= lambda!21524 lambda!21489)))

(declare-fun bs!137121 () Bool)

(assert (= bs!137121 (and d!232521 d!232453)))

(assert (=> bs!137121 (= lambda!21524 lambda!21493)))

(declare-fun bs!137122 () Bool)

(assert (= bs!137122 (and d!232521 d!232505)))

(assert (=> bs!137122 (= lambda!21524 lambda!21517)))

(declare-fun bs!137123 () Bool)

(assert (= bs!137123 (and d!232521 d!232467)))

(assert (=> bs!137123 (= lambda!21524 lambda!21500)))

(declare-fun bs!137124 () Bool)

(assert (= bs!137124 (and d!232521 d!232483)))

(assert (=> bs!137124 (= lambda!21524 lambda!21505)))

(declare-fun bs!137125 () Bool)

(assert (= bs!137125 (and d!232521 d!232461)))

(assert (=> bs!137125 (= lambda!21524 lambda!21497)))

(declare-fun bs!137126 () Bool)

(assert (= bs!137126 (and d!232521 d!232465)))

(assert (=> bs!137126 (= lambda!21524 lambda!21499)))

(declare-fun bs!137127 () Bool)

(assert (= bs!137127 (and d!232521 d!232463)))

(assert (=> bs!137127 (= lambda!21524 lambda!21498)))

(declare-fun bs!137128 () Bool)

(assert (= bs!137128 (and d!232521 d!232507)))

(assert (=> bs!137128 (= lambda!21524 lambda!21518)))

(declare-fun bs!137129 () Bool)

(assert (= bs!137129 (and d!232521 d!232497)))

(assert (=> bs!137129 (= lambda!21524 lambda!21515)))

(declare-fun bs!137130 () Bool)

(assert (= bs!137130 (and d!232521 d!232447)))

(assert (=> bs!137130 (= lambda!21524 lambda!21491)))

(declare-fun bs!137131 () Bool)

(assert (= bs!137131 (and d!232521 d!232493)))

(assert (=> bs!137131 (= lambda!21524 lambda!21514)))

(declare-fun bs!137132 () Bool)

(assert (= bs!137132 (and d!232521 d!232487)))

(assert (=> bs!137132 (= lambda!21524 lambda!21509)))

(declare-fun bs!137133 () Bool)

(assert (= bs!137133 (and d!232521 d!232451)))

(assert (=> bs!137133 (= lambda!21524 lambda!21492)))

(declare-fun bs!137134 () Bool)

(assert (= bs!137134 (and d!232521 d!232491)))

(assert (=> bs!137134 (= lambda!21524 lambda!21513)))

(declare-fun bs!137135 () Bool)

(assert (= bs!137135 (and d!232521 d!232511)))

(assert (=> bs!137135 (= lambda!21524 lambda!21520)))

(assert (=> d!232521 (= (inv!9543 (_1!4326 (_1!4327 (h!12840 mapValue!3055)))) (forall!1951 (exprs!741 (_1!4326 (_1!4327 (h!12840 mapValue!3055)))) lambda!21524))))

(declare-fun bs!137136 () Bool)

(assert (= bs!137136 d!232521))

(declare-fun m!947100 () Bool)

(assert (=> bs!137136 m!947100))

(assert (=> b!690676 d!232521))

(declare-fun d!232523 () Bool)

(assert (=> d!232523 true))

(declare-fun lt!284506 () Bool)

(declare-fun rulesValidInductive!518 (LexerInterface!1307 List!7458) Bool)

(assert (=> d!232523 (= lt!284506 (rulesValidInductive!518 thiss!12183 rules!1357))))

(declare-fun lambda!21527 () Int)

(declare-fun forall!1955 (List!7458 Int) Bool)

(assert (=> d!232523 (= lt!284506 (forall!1955 rules!1357 lambda!21527))))

(assert (=> d!232523 (= (rulesValid!526 thiss!12183 rules!1357) lt!284506)))

(declare-fun bs!137137 () Bool)

(assert (= bs!137137 d!232523))

(declare-fun m!947102 () Bool)

(assert (=> bs!137137 m!947102))

(declare-fun m!947104 () Bool)

(assert (=> bs!137137 m!947104))

(assert (=> d!232435 d!232523))

(declare-fun bs!137138 () Bool)

(declare-fun d!232525 () Bool)

(assert (= bs!137138 (and d!232525 d!232445)))

(declare-fun lambda!21528 () Int)

(assert (=> bs!137138 (= lambda!21528 lambda!21490)))

(declare-fun bs!137139 () Bool)

(assert (= bs!137139 (and d!232525 d!232503)))

(assert (=> bs!137139 (= lambda!21528 lambda!21516)))

(declare-fun bs!137140 () Bool)

(assert (= bs!137140 (and d!232525 d!232509)))

(assert (=> bs!137140 (= lambda!21528 lambda!21519)))

(declare-fun bs!137141 () Bool)

(assert (= bs!137141 (and d!232525 d!232475)))

(assert (=> bs!137141 (= lambda!21528 lambda!21501)))

(declare-fun bs!137142 () Bool)

(assert (= bs!137142 (and d!232525 d!232441)))

(assert (=> bs!137142 (= lambda!21528 lambda!21488)))

(declare-fun bs!137143 () Bool)

(assert (= bs!137143 (and d!232525 d!232443)))

(assert (=> bs!137143 (= lambda!21528 lambda!21489)))

(declare-fun bs!137144 () Bool)

(assert (= bs!137144 (and d!232525 d!232453)))

(assert (=> bs!137144 (= lambda!21528 lambda!21493)))

(declare-fun bs!137145 () Bool)

(assert (= bs!137145 (and d!232525 d!232505)))

(assert (=> bs!137145 (= lambda!21528 lambda!21517)))

(declare-fun bs!137146 () Bool)

(assert (= bs!137146 (and d!232525 d!232483)))

(assert (=> bs!137146 (= lambda!21528 lambda!21505)))

(declare-fun bs!137147 () Bool)

(assert (= bs!137147 (and d!232525 d!232461)))

(assert (=> bs!137147 (= lambda!21528 lambda!21497)))

(declare-fun bs!137148 () Bool)

(assert (= bs!137148 (and d!232525 d!232465)))

(assert (=> bs!137148 (= lambda!21528 lambda!21499)))

(declare-fun bs!137149 () Bool)

(assert (= bs!137149 (and d!232525 d!232463)))

(assert (=> bs!137149 (= lambda!21528 lambda!21498)))

(declare-fun bs!137150 () Bool)

(assert (= bs!137150 (and d!232525 d!232507)))

(assert (=> bs!137150 (= lambda!21528 lambda!21518)))

(declare-fun bs!137151 () Bool)

(assert (= bs!137151 (and d!232525 d!232497)))

(assert (=> bs!137151 (= lambda!21528 lambda!21515)))

(declare-fun bs!137152 () Bool)

(assert (= bs!137152 (and d!232525 d!232447)))

(assert (=> bs!137152 (= lambda!21528 lambda!21491)))

(declare-fun bs!137153 () Bool)

(assert (= bs!137153 (and d!232525 d!232493)))

(assert (=> bs!137153 (= lambda!21528 lambda!21514)))

(declare-fun bs!137154 () Bool)

(assert (= bs!137154 (and d!232525 d!232487)))

(assert (=> bs!137154 (= lambda!21528 lambda!21509)))

(declare-fun bs!137155 () Bool)

(assert (= bs!137155 (and d!232525 d!232451)))

(assert (=> bs!137155 (= lambda!21528 lambda!21492)))

(declare-fun bs!137156 () Bool)

(assert (= bs!137156 (and d!232525 d!232521)))

(assert (=> bs!137156 (= lambda!21528 lambda!21524)))

(declare-fun bs!137157 () Bool)

(assert (= bs!137157 (and d!232525 d!232467)))

(assert (=> bs!137157 (= lambda!21528 lambda!21500)))

(declare-fun bs!137158 () Bool)

(assert (= bs!137158 (and d!232525 d!232491)))

(assert (=> bs!137158 (= lambda!21528 lambda!21513)))

(declare-fun bs!137159 () Bool)

(assert (= bs!137159 (and d!232525 d!232511)))

(assert (=> bs!137159 (= lambda!21528 lambda!21520)))

(assert (=> d!232525 (= (inv!9543 setElem!3716) (forall!1951 (exprs!741 setElem!3716) lambda!21528))))

(declare-fun bs!137160 () Bool)

(assert (= bs!137160 d!232525))

(declare-fun m!947106 () Bool)

(assert (=> bs!137160 m!947106))

(assert (=> setNonEmpty!3716 d!232525))

(declare-fun d!232527 () Bool)

(declare-fun res!313448 () Bool)

(declare-fun e!434480 () Bool)

(assert (=> d!232527 (=> res!313448 e!434480)))

(assert (=> d!232527 (= res!313448 ((_ is Nil!7444) rules!1357))))

(assert (=> d!232527 (= (noDuplicateTag!526 thiss!12183 rules!1357 Nil!7445) e!434480)))

(declare-fun b!690874 () Bool)

(declare-fun e!434481 () Bool)

(assert (=> b!690874 (= e!434480 e!434481)))

(declare-fun res!313449 () Bool)

(assert (=> b!690874 (=> (not res!313449) (not e!434481))))

(declare-fun contains!1565 (List!7459 String!9408) Bool)

(assert (=> b!690874 (= res!313449 (not (contains!1565 Nil!7445 (tag!1755 (h!12845 rules!1357)))))))

(declare-fun b!690875 () Bool)

(assert (=> b!690875 (= e!434481 (noDuplicateTag!526 thiss!12183 (t!87274 rules!1357) (Cons!7445 (tag!1755 (h!12845 rules!1357)) Nil!7445)))))

(assert (= (and d!232527 (not res!313448)) b!690874))

(assert (= (and b!690874 res!313449) b!690875))

(declare-fun m!947108 () Bool)

(assert (=> b!690874 m!947108))

(declare-fun m!947110 () Bool)

(assert (=> b!690875 m!947110))

(assert (=> b!690633 d!232527))

(declare-fun bs!137161 () Bool)

(declare-fun d!232529 () Bool)

(assert (= bs!137161 (and d!232529 d!232445)))

(declare-fun lambda!21529 () Int)

(assert (=> bs!137161 (= lambda!21529 lambda!21490)))

(declare-fun bs!137162 () Bool)

(assert (= bs!137162 (and d!232529 d!232503)))

(assert (=> bs!137162 (= lambda!21529 lambda!21516)))

(declare-fun bs!137163 () Bool)

(assert (= bs!137163 (and d!232529 d!232509)))

(assert (=> bs!137163 (= lambda!21529 lambda!21519)))

(declare-fun bs!137164 () Bool)

(assert (= bs!137164 (and d!232529 d!232475)))

(assert (=> bs!137164 (= lambda!21529 lambda!21501)))

(declare-fun bs!137165 () Bool)

(assert (= bs!137165 (and d!232529 d!232441)))

(assert (=> bs!137165 (= lambda!21529 lambda!21488)))

(declare-fun bs!137166 () Bool)

(assert (= bs!137166 (and d!232529 d!232443)))

(assert (=> bs!137166 (= lambda!21529 lambda!21489)))

(declare-fun bs!137167 () Bool)

(assert (= bs!137167 (and d!232529 d!232453)))

(assert (=> bs!137167 (= lambda!21529 lambda!21493)))

(declare-fun bs!137168 () Bool)

(assert (= bs!137168 (and d!232529 d!232525)))

(assert (=> bs!137168 (= lambda!21529 lambda!21528)))

(declare-fun bs!137169 () Bool)

(assert (= bs!137169 (and d!232529 d!232505)))

(assert (=> bs!137169 (= lambda!21529 lambda!21517)))

(declare-fun bs!137170 () Bool)

(assert (= bs!137170 (and d!232529 d!232483)))

(assert (=> bs!137170 (= lambda!21529 lambda!21505)))

(declare-fun bs!137171 () Bool)

(assert (= bs!137171 (and d!232529 d!232461)))

(assert (=> bs!137171 (= lambda!21529 lambda!21497)))

(declare-fun bs!137172 () Bool)

(assert (= bs!137172 (and d!232529 d!232465)))

(assert (=> bs!137172 (= lambda!21529 lambda!21499)))

(declare-fun bs!137173 () Bool)

(assert (= bs!137173 (and d!232529 d!232463)))

(assert (=> bs!137173 (= lambda!21529 lambda!21498)))

(declare-fun bs!137174 () Bool)

(assert (= bs!137174 (and d!232529 d!232507)))

(assert (=> bs!137174 (= lambda!21529 lambda!21518)))

(declare-fun bs!137175 () Bool)

(assert (= bs!137175 (and d!232529 d!232497)))

(assert (=> bs!137175 (= lambda!21529 lambda!21515)))

(declare-fun bs!137176 () Bool)

(assert (= bs!137176 (and d!232529 d!232447)))

(assert (=> bs!137176 (= lambda!21529 lambda!21491)))

(declare-fun bs!137177 () Bool)

(assert (= bs!137177 (and d!232529 d!232493)))

(assert (=> bs!137177 (= lambda!21529 lambda!21514)))

(declare-fun bs!137178 () Bool)

(assert (= bs!137178 (and d!232529 d!232487)))

(assert (=> bs!137178 (= lambda!21529 lambda!21509)))

(declare-fun bs!137179 () Bool)

(assert (= bs!137179 (and d!232529 d!232451)))

(assert (=> bs!137179 (= lambda!21529 lambda!21492)))

(declare-fun bs!137180 () Bool)

(assert (= bs!137180 (and d!232529 d!232521)))

(assert (=> bs!137180 (= lambda!21529 lambda!21524)))

(declare-fun bs!137181 () Bool)

(assert (= bs!137181 (and d!232529 d!232467)))

(assert (=> bs!137181 (= lambda!21529 lambda!21500)))

(declare-fun bs!137182 () Bool)

(assert (= bs!137182 (and d!232529 d!232491)))

(assert (=> bs!137182 (= lambda!21529 lambda!21513)))

(declare-fun bs!137183 () Bool)

(assert (= bs!137183 (and d!232529 d!232511)))

(assert (=> bs!137183 (= lambda!21529 lambda!21520)))

(assert (=> d!232529 (= (inv!9543 setElem!3708) (forall!1951 (exprs!741 setElem!3708) lambda!21529))))

(declare-fun bs!137184 () Bool)

(assert (= bs!137184 d!232529))

(declare-fun m!947112 () Bool)

(assert (=> bs!137184 m!947112))

(assert (=> setNonEmpty!3708 d!232529))

(declare-fun bs!137185 () Bool)

(declare-fun d!232531 () Bool)

(assert (= bs!137185 (and d!232531 d!232445)))

(declare-fun lambda!21530 () Int)

(assert (=> bs!137185 (= lambda!21530 lambda!21490)))

(declare-fun bs!137186 () Bool)

(assert (= bs!137186 (and d!232531 d!232503)))

(assert (=> bs!137186 (= lambda!21530 lambda!21516)))

(declare-fun bs!137187 () Bool)

(assert (= bs!137187 (and d!232531 d!232509)))

(assert (=> bs!137187 (= lambda!21530 lambda!21519)))

(declare-fun bs!137188 () Bool)

(assert (= bs!137188 (and d!232531 d!232441)))

(assert (=> bs!137188 (= lambda!21530 lambda!21488)))

(declare-fun bs!137189 () Bool)

(assert (= bs!137189 (and d!232531 d!232443)))

(assert (=> bs!137189 (= lambda!21530 lambda!21489)))

(declare-fun bs!137190 () Bool)

(assert (= bs!137190 (and d!232531 d!232453)))

(assert (=> bs!137190 (= lambda!21530 lambda!21493)))

(declare-fun bs!137191 () Bool)

(assert (= bs!137191 (and d!232531 d!232525)))

(assert (=> bs!137191 (= lambda!21530 lambda!21528)))

(declare-fun bs!137192 () Bool)

(assert (= bs!137192 (and d!232531 d!232505)))

(assert (=> bs!137192 (= lambda!21530 lambda!21517)))

(declare-fun bs!137193 () Bool)

(assert (= bs!137193 (and d!232531 d!232483)))

(assert (=> bs!137193 (= lambda!21530 lambda!21505)))

(declare-fun bs!137194 () Bool)

(assert (= bs!137194 (and d!232531 d!232461)))

(assert (=> bs!137194 (= lambda!21530 lambda!21497)))

(declare-fun bs!137195 () Bool)

(assert (= bs!137195 (and d!232531 d!232475)))

(assert (=> bs!137195 (= lambda!21530 lambda!21501)))

(declare-fun bs!137196 () Bool)

(assert (= bs!137196 (and d!232531 d!232529)))

(assert (=> bs!137196 (= lambda!21530 lambda!21529)))

(declare-fun bs!137197 () Bool)

(assert (= bs!137197 (and d!232531 d!232465)))

(assert (=> bs!137197 (= lambda!21530 lambda!21499)))

(declare-fun bs!137198 () Bool)

(assert (= bs!137198 (and d!232531 d!232463)))

(assert (=> bs!137198 (= lambda!21530 lambda!21498)))

(declare-fun bs!137199 () Bool)

(assert (= bs!137199 (and d!232531 d!232507)))

(assert (=> bs!137199 (= lambda!21530 lambda!21518)))

(declare-fun bs!137200 () Bool)

(assert (= bs!137200 (and d!232531 d!232497)))

(assert (=> bs!137200 (= lambda!21530 lambda!21515)))

(declare-fun bs!137201 () Bool)

(assert (= bs!137201 (and d!232531 d!232447)))

(assert (=> bs!137201 (= lambda!21530 lambda!21491)))

(declare-fun bs!137202 () Bool)

(assert (= bs!137202 (and d!232531 d!232493)))

(assert (=> bs!137202 (= lambda!21530 lambda!21514)))

(declare-fun bs!137203 () Bool)

(assert (= bs!137203 (and d!232531 d!232487)))

(assert (=> bs!137203 (= lambda!21530 lambda!21509)))

(declare-fun bs!137204 () Bool)

(assert (= bs!137204 (and d!232531 d!232451)))

(assert (=> bs!137204 (= lambda!21530 lambda!21492)))

(declare-fun bs!137205 () Bool)

(assert (= bs!137205 (and d!232531 d!232521)))

(assert (=> bs!137205 (= lambda!21530 lambda!21524)))

(declare-fun bs!137206 () Bool)

(assert (= bs!137206 (and d!232531 d!232467)))

(assert (=> bs!137206 (= lambda!21530 lambda!21500)))

(declare-fun bs!137207 () Bool)

(assert (= bs!137207 (and d!232531 d!232491)))

(assert (=> bs!137207 (= lambda!21530 lambda!21513)))

(declare-fun bs!137208 () Bool)

(assert (= bs!137208 (and d!232531 d!232511)))

(assert (=> bs!137208 (= lambda!21530 lambda!21520)))

(assert (=> d!232531 (= (inv!9543 setElem!3707) (forall!1951 (exprs!741 setElem!3707) lambda!21530))))

(declare-fun bs!137209 () Bool)

(assert (= bs!137209 d!232531))

(declare-fun m!947114 () Bool)

(assert (=> bs!137209 m!947114))

(assert (=> setNonEmpty!3707 d!232531))

(declare-fun bs!137210 () Bool)

(declare-fun d!232533 () Bool)

(assert (= bs!137210 (and d!232533 d!232445)))

(declare-fun lambda!21531 () Int)

(assert (=> bs!137210 (= lambda!21531 lambda!21490)))

(declare-fun bs!137211 () Bool)

(assert (= bs!137211 (and d!232533 d!232503)))

(assert (=> bs!137211 (= lambda!21531 lambda!21516)))

(declare-fun bs!137212 () Bool)

(assert (= bs!137212 (and d!232533 d!232509)))

(assert (=> bs!137212 (= lambda!21531 lambda!21519)))

(declare-fun bs!137213 () Bool)

(assert (= bs!137213 (and d!232533 d!232441)))

(assert (=> bs!137213 (= lambda!21531 lambda!21488)))

(declare-fun bs!137214 () Bool)

(assert (= bs!137214 (and d!232533 d!232443)))

(assert (=> bs!137214 (= lambda!21531 lambda!21489)))

(declare-fun bs!137215 () Bool)

(assert (= bs!137215 (and d!232533 d!232453)))

(assert (=> bs!137215 (= lambda!21531 lambda!21493)))

(declare-fun bs!137216 () Bool)

(assert (= bs!137216 (and d!232533 d!232525)))

(assert (=> bs!137216 (= lambda!21531 lambda!21528)))

(declare-fun bs!137217 () Bool)

(assert (= bs!137217 (and d!232533 d!232505)))

(assert (=> bs!137217 (= lambda!21531 lambda!21517)))

(declare-fun bs!137218 () Bool)

(assert (= bs!137218 (and d!232533 d!232483)))

(assert (=> bs!137218 (= lambda!21531 lambda!21505)))

(declare-fun bs!137219 () Bool)

(assert (= bs!137219 (and d!232533 d!232461)))

(assert (=> bs!137219 (= lambda!21531 lambda!21497)))

(declare-fun bs!137220 () Bool)

(assert (= bs!137220 (and d!232533 d!232475)))

(assert (=> bs!137220 (= lambda!21531 lambda!21501)))

(declare-fun bs!137221 () Bool)

(assert (= bs!137221 (and d!232533 d!232529)))

(assert (=> bs!137221 (= lambda!21531 lambda!21529)))

(declare-fun bs!137222 () Bool)

(assert (= bs!137222 (and d!232533 d!232465)))

(assert (=> bs!137222 (= lambda!21531 lambda!21499)))

(declare-fun bs!137223 () Bool)

(assert (= bs!137223 (and d!232533 d!232463)))

(assert (=> bs!137223 (= lambda!21531 lambda!21498)))

(declare-fun bs!137224 () Bool)

(assert (= bs!137224 (and d!232533 d!232531)))

(assert (=> bs!137224 (= lambda!21531 lambda!21530)))

(declare-fun bs!137225 () Bool)

(assert (= bs!137225 (and d!232533 d!232507)))

(assert (=> bs!137225 (= lambda!21531 lambda!21518)))

(declare-fun bs!137226 () Bool)

(assert (= bs!137226 (and d!232533 d!232497)))

(assert (=> bs!137226 (= lambda!21531 lambda!21515)))

(declare-fun bs!137227 () Bool)

(assert (= bs!137227 (and d!232533 d!232447)))

(assert (=> bs!137227 (= lambda!21531 lambda!21491)))

(declare-fun bs!137228 () Bool)

(assert (= bs!137228 (and d!232533 d!232493)))

(assert (=> bs!137228 (= lambda!21531 lambda!21514)))

(declare-fun bs!137229 () Bool)

(assert (= bs!137229 (and d!232533 d!232487)))

(assert (=> bs!137229 (= lambda!21531 lambda!21509)))

(declare-fun bs!137230 () Bool)

(assert (= bs!137230 (and d!232533 d!232451)))

(assert (=> bs!137230 (= lambda!21531 lambda!21492)))

(declare-fun bs!137231 () Bool)

(assert (= bs!137231 (and d!232533 d!232521)))

(assert (=> bs!137231 (= lambda!21531 lambda!21524)))

(declare-fun bs!137232 () Bool)

(assert (= bs!137232 (and d!232533 d!232467)))

(assert (=> bs!137232 (= lambda!21531 lambda!21500)))

(declare-fun bs!137233 () Bool)

(assert (= bs!137233 (and d!232533 d!232491)))

(assert (=> bs!137233 (= lambda!21531 lambda!21513)))

(declare-fun bs!137234 () Bool)

(assert (= bs!137234 (and d!232533 d!232511)))

(assert (=> bs!137234 (= lambda!21531 lambda!21520)))

(assert (=> d!232533 (= (inv!9543 setElem!3709) (forall!1951 (exprs!741 setElem!3709) lambda!21531))))

(declare-fun bs!137235 () Bool)

(assert (= bs!137235 d!232533))

(declare-fun m!947116 () Bool)

(assert (=> bs!137235 m!947116))

(assert (=> setNonEmpty!3709 d!232533))

(declare-fun bs!137236 () Bool)

(declare-fun d!232535 () Bool)

(assert (= bs!137236 (and d!232535 d!232445)))

(declare-fun lambda!21532 () Int)

(assert (=> bs!137236 (= lambda!21532 lambda!21490)))

(declare-fun bs!137237 () Bool)

(assert (= bs!137237 (and d!232535 d!232503)))

(assert (=> bs!137237 (= lambda!21532 lambda!21516)))

(declare-fun bs!137238 () Bool)

(assert (= bs!137238 (and d!232535 d!232509)))

(assert (=> bs!137238 (= lambda!21532 lambda!21519)))

(declare-fun bs!137239 () Bool)

(assert (= bs!137239 (and d!232535 d!232441)))

(assert (=> bs!137239 (= lambda!21532 lambda!21488)))

(declare-fun bs!137240 () Bool)

(assert (= bs!137240 (and d!232535 d!232453)))

(assert (=> bs!137240 (= lambda!21532 lambda!21493)))

(declare-fun bs!137241 () Bool)

(assert (= bs!137241 (and d!232535 d!232525)))

(assert (=> bs!137241 (= lambda!21532 lambda!21528)))

(declare-fun bs!137242 () Bool)

(assert (= bs!137242 (and d!232535 d!232505)))

(assert (=> bs!137242 (= lambda!21532 lambda!21517)))

(declare-fun bs!137243 () Bool)

(assert (= bs!137243 (and d!232535 d!232483)))

(assert (=> bs!137243 (= lambda!21532 lambda!21505)))

(declare-fun bs!137244 () Bool)

(assert (= bs!137244 (and d!232535 d!232461)))

(assert (=> bs!137244 (= lambda!21532 lambda!21497)))

(declare-fun bs!137245 () Bool)

(assert (= bs!137245 (and d!232535 d!232475)))

(assert (=> bs!137245 (= lambda!21532 lambda!21501)))

(declare-fun bs!137246 () Bool)

(assert (= bs!137246 (and d!232535 d!232529)))

(assert (=> bs!137246 (= lambda!21532 lambda!21529)))

(declare-fun bs!137247 () Bool)

(assert (= bs!137247 (and d!232535 d!232533)))

(assert (=> bs!137247 (= lambda!21532 lambda!21531)))

(declare-fun bs!137248 () Bool)

(assert (= bs!137248 (and d!232535 d!232443)))

(assert (=> bs!137248 (= lambda!21532 lambda!21489)))

(declare-fun bs!137249 () Bool)

(assert (= bs!137249 (and d!232535 d!232465)))

(assert (=> bs!137249 (= lambda!21532 lambda!21499)))

(declare-fun bs!137250 () Bool)

(assert (= bs!137250 (and d!232535 d!232463)))

(assert (=> bs!137250 (= lambda!21532 lambda!21498)))

(declare-fun bs!137251 () Bool)

(assert (= bs!137251 (and d!232535 d!232531)))

(assert (=> bs!137251 (= lambda!21532 lambda!21530)))

(declare-fun bs!137252 () Bool)

(assert (= bs!137252 (and d!232535 d!232507)))

(assert (=> bs!137252 (= lambda!21532 lambda!21518)))

(declare-fun bs!137253 () Bool)

(assert (= bs!137253 (and d!232535 d!232497)))

(assert (=> bs!137253 (= lambda!21532 lambda!21515)))

(declare-fun bs!137254 () Bool)

(assert (= bs!137254 (and d!232535 d!232447)))

(assert (=> bs!137254 (= lambda!21532 lambda!21491)))

(declare-fun bs!137255 () Bool)

(assert (= bs!137255 (and d!232535 d!232493)))

(assert (=> bs!137255 (= lambda!21532 lambda!21514)))

(declare-fun bs!137256 () Bool)

(assert (= bs!137256 (and d!232535 d!232487)))

(assert (=> bs!137256 (= lambda!21532 lambda!21509)))

(declare-fun bs!137257 () Bool)

(assert (= bs!137257 (and d!232535 d!232451)))

(assert (=> bs!137257 (= lambda!21532 lambda!21492)))

(declare-fun bs!137258 () Bool)

(assert (= bs!137258 (and d!232535 d!232521)))

(assert (=> bs!137258 (= lambda!21532 lambda!21524)))

(declare-fun bs!137259 () Bool)

(assert (= bs!137259 (and d!232535 d!232467)))

(assert (=> bs!137259 (= lambda!21532 lambda!21500)))

(declare-fun bs!137260 () Bool)

(assert (= bs!137260 (and d!232535 d!232491)))

(assert (=> bs!137260 (= lambda!21532 lambda!21513)))

(declare-fun bs!137261 () Bool)

(assert (= bs!137261 (and d!232535 d!232511)))

(assert (=> bs!137261 (= lambda!21532 lambda!21520)))

(assert (=> d!232535 (= (inv!9543 setElem!3691) (forall!1951 (exprs!741 setElem!3691) lambda!21532))))

(declare-fun bs!137262 () Bool)

(assert (= bs!137262 d!232535))

(declare-fun m!947118 () Bool)

(assert (=> bs!137262 m!947118))

(assert (=> setNonEmpty!3691 d!232535))

(declare-fun d!232537 () Bool)

(declare-fun res!313450 () Bool)

(declare-fun e!434482 () Bool)

(assert (=> d!232537 (=> (not res!313450) (not e!434482))))

(assert (=> d!232537 (= res!313450 (= (csize!5486 (c!121540 input!756)) (+ (size!6108 (left!5974 (c!121540 input!756))) (size!6108 (right!6304 (c!121540 input!756))))))))

(assert (=> d!232537 (= (inv!9541 (c!121540 input!756)) e!434482)))

(declare-fun b!690876 () Bool)

(declare-fun res!313451 () Bool)

(assert (=> b!690876 (=> (not res!313451) (not e!434482))))

(assert (=> b!690876 (= res!313451 (and (not (= (left!5974 (c!121540 input!756)) Empty!2628)) (not (= (right!6304 (c!121540 input!756)) Empty!2628))))))

(declare-fun b!690877 () Bool)

(declare-fun res!313452 () Bool)

(assert (=> b!690877 (=> (not res!313452) (not e!434482))))

(assert (=> b!690877 (= res!313452 (= (cheight!2839 (c!121540 input!756)) (+ (max!0 (height!317 (left!5974 (c!121540 input!756))) (height!317 (right!6304 (c!121540 input!756)))) 1)))))

(declare-fun b!690878 () Bool)

(assert (=> b!690878 (= e!434482 (<= 0 (cheight!2839 (c!121540 input!756))))))

(assert (= (and d!232537 res!313450) b!690876))

(assert (= (and b!690876 res!313451) b!690877))

(assert (= (and b!690877 res!313452) b!690878))

(declare-fun m!947120 () Bool)

(assert (=> d!232537 m!947120))

(declare-fun m!947122 () Bool)

(assert (=> d!232537 m!947122))

(assert (=> b!690877 m!946977))

(assert (=> b!690877 m!946979))

(assert (=> b!690877 m!946977))

(assert (=> b!690877 m!946979))

(declare-fun m!947124 () Bool)

(assert (=> b!690877 m!947124))

(assert (=> b!690616 d!232537))

(declare-fun d!232539 () Bool)

(declare-fun c!121550 () Bool)

(assert (=> d!232539 (= c!121550 ((_ is Node!2628) (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))

(declare-fun e!434483 () Bool)

(assert (=> d!232539 (= (inv!9535 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) e!434483)))

(declare-fun b!690879 () Bool)

(assert (=> b!690879 (= e!434483 (inv!9541 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))

(declare-fun b!690880 () Bool)

(declare-fun e!434484 () Bool)

(assert (=> b!690880 (= e!434483 e!434484)))

(declare-fun res!313453 () Bool)

(assert (=> b!690880 (= res!313453 (not ((_ is Leaf!3897) (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))))))

(assert (=> b!690880 (=> res!313453 e!434484)))

(declare-fun b!690881 () Bool)

(assert (=> b!690881 (= e!434484 (inv!9542 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))

(assert (= (and d!232539 c!121550) b!690879))

(assert (= (and d!232539 (not c!121550)) b!690880))

(assert (= (and b!690880 (not res!313453)) b!690881))

(declare-fun m!947126 () Bool)

(assert (=> b!690879 m!947126))

(declare-fun m!947128 () Bool)

(assert (=> b!690881 m!947128))

(assert (=> b!690779 d!232539))

(declare-fun d!232541 () Bool)

(declare-fun c!121551 () Bool)

(assert (=> d!232541 (= c!121551 ((_ is Node!2628) (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))

(declare-fun e!434485 () Bool)

(assert (=> d!232541 (= (inv!9535 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) e!434485)))

(declare-fun b!690882 () Bool)

(assert (=> b!690882 (= e!434485 (inv!9541 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))

(declare-fun b!690883 () Bool)

(declare-fun e!434486 () Bool)

(assert (=> b!690883 (= e!434485 e!434486)))

(declare-fun res!313454 () Bool)

(assert (=> b!690883 (= res!313454 (not ((_ is Leaf!3897) (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))))))

(assert (=> b!690883 (=> res!313454 e!434486)))

(declare-fun b!690884 () Bool)

(assert (=> b!690884 (= e!434486 (inv!9542 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))))

(assert (= (and d!232541 c!121551) b!690882))

(assert (= (and d!232541 (not c!121551)) b!690883))

(assert (= (and b!690883 (not res!313454)) b!690884))

(declare-fun m!947130 () Bool)

(assert (=> b!690882 m!947130))

(declare-fun m!947132 () Bool)

(assert (=> b!690884 m!947132))

(assert (=> b!690779 d!232541))

(declare-fun bs!137263 () Bool)

(declare-fun d!232543 () Bool)

(assert (= bs!137263 (and d!232543 d!232445)))

(declare-fun lambda!21533 () Int)

(assert (=> bs!137263 (= lambda!21533 lambda!21490)))

(declare-fun bs!137264 () Bool)

(assert (= bs!137264 (and d!232543 d!232503)))

(assert (=> bs!137264 (= lambda!21533 lambda!21516)))

(declare-fun bs!137265 () Bool)

(assert (= bs!137265 (and d!232543 d!232441)))

(assert (=> bs!137265 (= lambda!21533 lambda!21488)))

(declare-fun bs!137266 () Bool)

(assert (= bs!137266 (and d!232543 d!232453)))

(assert (=> bs!137266 (= lambda!21533 lambda!21493)))

(declare-fun bs!137267 () Bool)

(assert (= bs!137267 (and d!232543 d!232525)))

(assert (=> bs!137267 (= lambda!21533 lambda!21528)))

(declare-fun bs!137268 () Bool)

(assert (= bs!137268 (and d!232543 d!232505)))

(assert (=> bs!137268 (= lambda!21533 lambda!21517)))

(declare-fun bs!137269 () Bool)

(assert (= bs!137269 (and d!232543 d!232509)))

(assert (=> bs!137269 (= lambda!21533 lambda!21519)))

(declare-fun bs!137270 () Bool)

(assert (= bs!137270 (and d!232543 d!232535)))

(assert (=> bs!137270 (= lambda!21533 lambda!21532)))

(declare-fun bs!137271 () Bool)

(assert (= bs!137271 (and d!232543 d!232483)))

(assert (=> bs!137271 (= lambda!21533 lambda!21505)))

(declare-fun bs!137272 () Bool)

(assert (= bs!137272 (and d!232543 d!232461)))

(assert (=> bs!137272 (= lambda!21533 lambda!21497)))

(declare-fun bs!137273 () Bool)

(assert (= bs!137273 (and d!232543 d!232475)))

(assert (=> bs!137273 (= lambda!21533 lambda!21501)))

(declare-fun bs!137274 () Bool)

(assert (= bs!137274 (and d!232543 d!232529)))

(assert (=> bs!137274 (= lambda!21533 lambda!21529)))

(declare-fun bs!137275 () Bool)

(assert (= bs!137275 (and d!232543 d!232533)))

(assert (=> bs!137275 (= lambda!21533 lambda!21531)))

(declare-fun bs!137276 () Bool)

(assert (= bs!137276 (and d!232543 d!232443)))

(assert (=> bs!137276 (= lambda!21533 lambda!21489)))

(declare-fun bs!137277 () Bool)

(assert (= bs!137277 (and d!232543 d!232465)))

(assert (=> bs!137277 (= lambda!21533 lambda!21499)))

(declare-fun bs!137278 () Bool)

(assert (= bs!137278 (and d!232543 d!232463)))

(assert (=> bs!137278 (= lambda!21533 lambda!21498)))

(declare-fun bs!137279 () Bool)

(assert (= bs!137279 (and d!232543 d!232531)))

(assert (=> bs!137279 (= lambda!21533 lambda!21530)))

(declare-fun bs!137280 () Bool)

(assert (= bs!137280 (and d!232543 d!232507)))

(assert (=> bs!137280 (= lambda!21533 lambda!21518)))

(declare-fun bs!137281 () Bool)

(assert (= bs!137281 (and d!232543 d!232497)))

(assert (=> bs!137281 (= lambda!21533 lambda!21515)))

(declare-fun bs!137282 () Bool)

(assert (= bs!137282 (and d!232543 d!232447)))

(assert (=> bs!137282 (= lambda!21533 lambda!21491)))

(declare-fun bs!137283 () Bool)

(assert (= bs!137283 (and d!232543 d!232493)))

(assert (=> bs!137283 (= lambda!21533 lambda!21514)))

(declare-fun bs!137284 () Bool)

(assert (= bs!137284 (and d!232543 d!232487)))

(assert (=> bs!137284 (= lambda!21533 lambda!21509)))

(declare-fun bs!137285 () Bool)

(assert (= bs!137285 (and d!232543 d!232451)))

(assert (=> bs!137285 (= lambda!21533 lambda!21492)))

(declare-fun bs!137286 () Bool)

(assert (= bs!137286 (and d!232543 d!232521)))

(assert (=> bs!137286 (= lambda!21533 lambda!21524)))

(declare-fun bs!137287 () Bool)

(assert (= bs!137287 (and d!232543 d!232467)))

(assert (=> bs!137287 (= lambda!21533 lambda!21500)))

(declare-fun bs!137288 () Bool)

(assert (= bs!137288 (and d!232543 d!232491)))

(assert (=> bs!137288 (= lambda!21533 lambda!21513)))

(declare-fun bs!137289 () Bool)

(assert (= bs!137289 (and d!232543 d!232511)))

(assert (=> bs!137289 (= lambda!21533 lambda!21520)))

(assert (=> d!232543 (= (inv!9543 (_1!4326 (_1!4327 (h!12840 mapValue!3051)))) (forall!1951 (exprs!741 (_1!4326 (_1!4327 (h!12840 mapValue!3051)))) lambda!21533))))

(declare-fun bs!137290 () Bool)

(assert (= bs!137290 d!232543))

(declare-fun m!947134 () Bool)

(assert (=> bs!137290 m!947134))

(assert (=> b!690681 d!232543))

(declare-fun bs!137291 () Bool)

(declare-fun d!232545 () Bool)

(assert (= bs!137291 (and d!232545 d!232445)))

(declare-fun lambda!21534 () Int)

(assert (=> bs!137291 (= lambda!21534 lambda!21490)))

(declare-fun bs!137292 () Bool)

(assert (= bs!137292 (and d!232545 d!232503)))

(assert (=> bs!137292 (= lambda!21534 lambda!21516)))

(declare-fun bs!137293 () Bool)

(assert (= bs!137293 (and d!232545 d!232441)))

(assert (=> bs!137293 (= lambda!21534 lambda!21488)))

(declare-fun bs!137294 () Bool)

(assert (= bs!137294 (and d!232545 d!232453)))

(assert (=> bs!137294 (= lambda!21534 lambda!21493)))

(declare-fun bs!137295 () Bool)

(assert (= bs!137295 (and d!232545 d!232525)))

(assert (=> bs!137295 (= lambda!21534 lambda!21528)))

(declare-fun bs!137296 () Bool)

(assert (= bs!137296 (and d!232545 d!232505)))

(assert (=> bs!137296 (= lambda!21534 lambda!21517)))

(declare-fun bs!137297 () Bool)

(assert (= bs!137297 (and d!232545 d!232543)))

(assert (=> bs!137297 (= lambda!21534 lambda!21533)))

(declare-fun bs!137298 () Bool)

(assert (= bs!137298 (and d!232545 d!232509)))

(assert (=> bs!137298 (= lambda!21534 lambda!21519)))

(declare-fun bs!137299 () Bool)

(assert (= bs!137299 (and d!232545 d!232535)))

(assert (=> bs!137299 (= lambda!21534 lambda!21532)))

(declare-fun bs!137300 () Bool)

(assert (= bs!137300 (and d!232545 d!232483)))

(assert (=> bs!137300 (= lambda!21534 lambda!21505)))

(declare-fun bs!137301 () Bool)

(assert (= bs!137301 (and d!232545 d!232461)))

(assert (=> bs!137301 (= lambda!21534 lambda!21497)))

(declare-fun bs!137302 () Bool)

(assert (= bs!137302 (and d!232545 d!232475)))

(assert (=> bs!137302 (= lambda!21534 lambda!21501)))

(declare-fun bs!137303 () Bool)

(assert (= bs!137303 (and d!232545 d!232529)))

(assert (=> bs!137303 (= lambda!21534 lambda!21529)))

(declare-fun bs!137304 () Bool)

(assert (= bs!137304 (and d!232545 d!232533)))

(assert (=> bs!137304 (= lambda!21534 lambda!21531)))

(declare-fun bs!137305 () Bool)

(assert (= bs!137305 (and d!232545 d!232443)))

(assert (=> bs!137305 (= lambda!21534 lambda!21489)))

(declare-fun bs!137306 () Bool)

(assert (= bs!137306 (and d!232545 d!232465)))

(assert (=> bs!137306 (= lambda!21534 lambda!21499)))

(declare-fun bs!137307 () Bool)

(assert (= bs!137307 (and d!232545 d!232463)))

(assert (=> bs!137307 (= lambda!21534 lambda!21498)))

(declare-fun bs!137308 () Bool)

(assert (= bs!137308 (and d!232545 d!232531)))

(assert (=> bs!137308 (= lambda!21534 lambda!21530)))

(declare-fun bs!137309 () Bool)

(assert (= bs!137309 (and d!232545 d!232507)))

(assert (=> bs!137309 (= lambda!21534 lambda!21518)))

(declare-fun bs!137310 () Bool)

(assert (= bs!137310 (and d!232545 d!232497)))

(assert (=> bs!137310 (= lambda!21534 lambda!21515)))

(declare-fun bs!137311 () Bool)

(assert (= bs!137311 (and d!232545 d!232447)))

(assert (=> bs!137311 (= lambda!21534 lambda!21491)))

(declare-fun bs!137312 () Bool)

(assert (= bs!137312 (and d!232545 d!232493)))

(assert (=> bs!137312 (= lambda!21534 lambda!21514)))

(declare-fun bs!137313 () Bool)

(assert (= bs!137313 (and d!232545 d!232487)))

(assert (=> bs!137313 (= lambda!21534 lambda!21509)))

(declare-fun bs!137314 () Bool)

(assert (= bs!137314 (and d!232545 d!232451)))

(assert (=> bs!137314 (= lambda!21534 lambda!21492)))

(declare-fun bs!137315 () Bool)

(assert (= bs!137315 (and d!232545 d!232521)))

(assert (=> bs!137315 (= lambda!21534 lambda!21524)))

(declare-fun bs!137316 () Bool)

(assert (= bs!137316 (and d!232545 d!232467)))

(assert (=> bs!137316 (= lambda!21534 lambda!21500)))

(declare-fun bs!137317 () Bool)

(assert (= bs!137317 (and d!232545 d!232491)))

(assert (=> bs!137317 (= lambda!21534 lambda!21513)))

(declare-fun bs!137318 () Bool)

(assert (= bs!137318 (and d!232545 d!232511)))

(assert (=> bs!137318 (= lambda!21534 lambda!21520)))

(assert (=> d!232545 (= (inv!9543 (_2!4330 (_1!4331 (h!12843 mapDefault!3052)))) (forall!1951 (exprs!741 (_2!4330 (_1!4331 (h!12843 mapDefault!3052)))) lambda!21534))))

(declare-fun bs!137319 () Bool)

(assert (= bs!137319 d!232545))

(declare-fun m!947136 () Bool)

(assert (=> bs!137319 m!947136))

(assert (=> b!690740 d!232545))

(declare-fun bs!137320 () Bool)

(declare-fun d!232547 () Bool)

(assert (= bs!137320 (and d!232547 d!232445)))

(declare-fun lambda!21535 () Int)

(assert (=> bs!137320 (= lambda!21535 lambda!21490)))

(declare-fun bs!137321 () Bool)

(assert (= bs!137321 (and d!232547 d!232503)))

(assert (=> bs!137321 (= lambda!21535 lambda!21516)))

(declare-fun bs!137322 () Bool)

(assert (= bs!137322 (and d!232547 d!232453)))

(assert (=> bs!137322 (= lambda!21535 lambda!21493)))

(declare-fun bs!137323 () Bool)

(assert (= bs!137323 (and d!232547 d!232525)))

(assert (=> bs!137323 (= lambda!21535 lambda!21528)))

(declare-fun bs!137324 () Bool)

(assert (= bs!137324 (and d!232547 d!232505)))

(assert (=> bs!137324 (= lambda!21535 lambda!21517)))

(declare-fun bs!137325 () Bool)

(assert (= bs!137325 (and d!232547 d!232543)))

(assert (=> bs!137325 (= lambda!21535 lambda!21533)))

(declare-fun bs!137326 () Bool)

(assert (= bs!137326 (and d!232547 d!232509)))

(assert (=> bs!137326 (= lambda!21535 lambda!21519)))

(declare-fun bs!137327 () Bool)

(assert (= bs!137327 (and d!232547 d!232535)))

(assert (=> bs!137327 (= lambda!21535 lambda!21532)))

(declare-fun bs!137328 () Bool)

(assert (= bs!137328 (and d!232547 d!232483)))

(assert (=> bs!137328 (= lambda!21535 lambda!21505)))

(declare-fun bs!137329 () Bool)

(assert (= bs!137329 (and d!232547 d!232461)))

(assert (=> bs!137329 (= lambda!21535 lambda!21497)))

(declare-fun bs!137330 () Bool)

(assert (= bs!137330 (and d!232547 d!232475)))

(assert (=> bs!137330 (= lambda!21535 lambda!21501)))

(declare-fun bs!137331 () Bool)

(assert (= bs!137331 (and d!232547 d!232529)))

(assert (=> bs!137331 (= lambda!21535 lambda!21529)))

(declare-fun bs!137332 () Bool)

(assert (= bs!137332 (and d!232547 d!232545)))

(assert (=> bs!137332 (= lambda!21535 lambda!21534)))

(declare-fun bs!137333 () Bool)

(assert (= bs!137333 (and d!232547 d!232441)))

(assert (=> bs!137333 (= lambda!21535 lambda!21488)))

(declare-fun bs!137334 () Bool)

(assert (= bs!137334 (and d!232547 d!232533)))

(assert (=> bs!137334 (= lambda!21535 lambda!21531)))

(declare-fun bs!137335 () Bool)

(assert (= bs!137335 (and d!232547 d!232443)))

(assert (=> bs!137335 (= lambda!21535 lambda!21489)))

(declare-fun bs!137336 () Bool)

(assert (= bs!137336 (and d!232547 d!232465)))

(assert (=> bs!137336 (= lambda!21535 lambda!21499)))

(declare-fun bs!137337 () Bool)

(assert (= bs!137337 (and d!232547 d!232463)))

(assert (=> bs!137337 (= lambda!21535 lambda!21498)))

(declare-fun bs!137338 () Bool)

(assert (= bs!137338 (and d!232547 d!232531)))

(assert (=> bs!137338 (= lambda!21535 lambda!21530)))

(declare-fun bs!137339 () Bool)

(assert (= bs!137339 (and d!232547 d!232507)))

(assert (=> bs!137339 (= lambda!21535 lambda!21518)))

(declare-fun bs!137340 () Bool)

(assert (= bs!137340 (and d!232547 d!232497)))

(assert (=> bs!137340 (= lambda!21535 lambda!21515)))

(declare-fun bs!137341 () Bool)

(assert (= bs!137341 (and d!232547 d!232447)))

(assert (=> bs!137341 (= lambda!21535 lambda!21491)))

(declare-fun bs!137342 () Bool)

(assert (= bs!137342 (and d!232547 d!232493)))

(assert (=> bs!137342 (= lambda!21535 lambda!21514)))

(declare-fun bs!137343 () Bool)

(assert (= bs!137343 (and d!232547 d!232487)))

(assert (=> bs!137343 (= lambda!21535 lambda!21509)))

(declare-fun bs!137344 () Bool)

(assert (= bs!137344 (and d!232547 d!232451)))

(assert (=> bs!137344 (= lambda!21535 lambda!21492)))

(declare-fun bs!137345 () Bool)

(assert (= bs!137345 (and d!232547 d!232521)))

(assert (=> bs!137345 (= lambda!21535 lambda!21524)))

(declare-fun bs!137346 () Bool)

(assert (= bs!137346 (and d!232547 d!232467)))

(assert (=> bs!137346 (= lambda!21535 lambda!21500)))

(declare-fun bs!137347 () Bool)

(assert (= bs!137347 (and d!232547 d!232491)))

(assert (=> bs!137347 (= lambda!21535 lambda!21513)))

(declare-fun bs!137348 () Bool)

(assert (= bs!137348 (and d!232547 d!232511)))

(assert (=> bs!137348 (= lambda!21535 lambda!21520)))

(assert (=> d!232547 (= (inv!9543 (_2!4330 (_1!4331 (h!12843 mapDefault!3058)))) (forall!1951 (exprs!741 (_2!4330 (_1!4331 (h!12843 mapDefault!3058)))) lambda!21535))))

(declare-fun bs!137349 () Bool)

(assert (= bs!137349 d!232547))

(declare-fun m!947138 () Bool)

(assert (=> bs!137349 m!947138))

(assert (=> b!690712 d!232547))

(assert (=> b!690592 d!232439))

(declare-fun b!690889 () Bool)

(declare-fun e!434489 () Bool)

(declare-fun tp!207653 () Bool)

(declare-fun tp!207654 () Bool)

(assert (=> b!690889 (= e!434489 (and tp!207653 tp!207654))))

(assert (=> b!690679 (= tp!207509 e!434489)))

(assert (= (and b!690679 ((_ is Cons!7438) (exprs!741 setElem!3698))) b!690889))

(declare-fun condSetEmpty!3727 () Bool)

(assert (=> setNonEmpty!3721 (= condSetEmpty!3727 (= setRest!3722 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3727 () Bool)

(assert (=> setNonEmpty!3721 (= tp!207635 setRes!3727)))

(declare-fun setIsEmpty!3727 () Bool)

(assert (=> setIsEmpty!3727 setRes!3727))

(declare-fun e!434492 () Bool)

(declare-fun setNonEmpty!3727 () Bool)

(declare-fun setElem!3727 () Context!482)

(declare-fun tp!207659 () Bool)

(assert (=> setNonEmpty!3727 (= setRes!3727 (and tp!207659 (inv!9543 setElem!3727) e!434492))))

(declare-fun setRest!3727 () (InoxSet Context!482))

(assert (=> setNonEmpty!3727 (= setRest!3722 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3727 true) setRest!3727))))

(declare-fun b!690894 () Bool)

(declare-fun tp!207660 () Bool)

(assert (=> b!690894 (= e!434492 tp!207660)))

(assert (= (and setNonEmpty!3721 condSetEmpty!3727) setIsEmpty!3727))

(assert (= (and setNonEmpty!3721 (not condSetEmpty!3727)) setNonEmpty!3727))

(assert (= setNonEmpty!3727 b!690894))

(declare-fun m!947140 () Bool)

(assert (=> setNonEmpty!3727 m!947140))

(declare-fun condSetEmpty!3728 () Bool)

(assert (=> setNonEmpty!3703 (= condSetEmpty!3728 (= setRest!3704 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3728 () Bool)

(assert (=> setNonEmpty!3703 (= tp!207544 setRes!3728)))

(declare-fun setIsEmpty!3728 () Bool)

(assert (=> setIsEmpty!3728 setRes!3728))

(declare-fun setNonEmpty!3728 () Bool)

(declare-fun e!434493 () Bool)

(declare-fun tp!207661 () Bool)

(declare-fun setElem!3728 () Context!482)

(assert (=> setNonEmpty!3728 (= setRes!3728 (and tp!207661 (inv!9543 setElem!3728) e!434493))))

(declare-fun setRest!3728 () (InoxSet Context!482))

(assert (=> setNonEmpty!3728 (= setRest!3704 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3728 true) setRest!3728))))

(declare-fun b!690895 () Bool)

(declare-fun tp!207662 () Bool)

(assert (=> b!690895 (= e!434493 tp!207662)))

(assert (= (and setNonEmpty!3703 condSetEmpty!3728) setIsEmpty!3728))

(assert (= (and setNonEmpty!3703 (not condSetEmpty!3728)) setNonEmpty!3728))

(assert (= setNonEmpty!3728 b!690895))

(declare-fun m!947142 () Bool)

(assert (=> setNonEmpty!3728 m!947142))

(declare-fun b!690896 () Bool)

(declare-fun e!434496 () Bool)

(declare-fun tp!207664 () Bool)

(assert (=> b!690896 (= e!434496 tp!207664)))

(declare-fun tp!207666 () Bool)

(declare-fun setElem!3729 () Context!482)

(declare-fun setRes!3729 () Bool)

(declare-fun setNonEmpty!3729 () Bool)

(assert (=> setNonEmpty!3729 (= setRes!3729 (and tp!207666 (inv!9543 setElem!3729) e!434496))))

(declare-fun setRest!3729 () (InoxSet Context!482))

(assert (=> setNonEmpty!3729 (= (_2!4327 (h!12840 (t!87269 (minValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3729 true) setRest!3729))))

(declare-fun e!434494 () Bool)

(assert (=> b!690762 (= tp!207617 e!434494)))

(declare-fun b!690897 () Bool)

(declare-fun e!434495 () Bool)

(declare-fun tp!207663 () Bool)

(assert (=> b!690897 (= e!434495 tp!207663)))

(declare-fun setIsEmpty!3729 () Bool)

(assert (=> setIsEmpty!3729 setRes!3729))

(declare-fun tp!207665 () Bool)

(declare-fun b!690898 () Bool)

(assert (=> b!690898 (= e!434494 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 (t!87269 (minValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))))))) e!434495 tp_is_empty!3643 setRes!3729 tp!207665))))

(declare-fun condSetEmpty!3729 () Bool)

(assert (=> b!690898 (= condSetEmpty!3729 (= (_2!4327 (h!12840 (t!87269 (minValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))))) ((as const (Array Context!482 Bool)) false)))))

(assert (= b!690898 b!690897))

(assert (= (and b!690898 condSetEmpty!3729) setIsEmpty!3729))

(assert (= (and b!690898 (not condSetEmpty!3729)) setNonEmpty!3729))

(assert (= setNonEmpty!3729 b!690896))

(assert (= (and b!690762 ((_ is Cons!7439) (t!87269 (minValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))))) b!690898))

(declare-fun m!947144 () Bool)

(assert (=> setNonEmpty!3729 m!947144))

(declare-fun m!947146 () Bool)

(assert (=> b!690898 m!947146))

(declare-fun b!690899 () Bool)

(declare-fun e!434497 () Bool)

(declare-fun tp!207667 () Bool)

(declare-fun tp!207668 () Bool)

(assert (=> b!690899 (= e!434497 (and tp!207667 tp!207668))))

(assert (=> b!690711 (= tp!207549 e!434497)))

(assert (= (and b!690711 ((_ is Cons!7438) (exprs!741 (_2!4330 (_1!4331 (h!12843 mapValue!3058)))))) b!690899))

(declare-fun b!690900 () Bool)

(declare-fun e!434498 () Bool)

(assert (=> b!690900 (= e!434498 tp_is_empty!3643)))

(declare-fun b!690901 () Bool)

(declare-fun tp!207672 () Bool)

(declare-fun tp!207670 () Bool)

(assert (=> b!690901 (= e!434498 (and tp!207672 tp!207670))))

(declare-fun b!690903 () Bool)

(declare-fun tp!207671 () Bool)

(declare-fun tp!207673 () Bool)

(assert (=> b!690903 (= e!434498 (and tp!207671 tp!207673))))

(declare-fun b!690902 () Bool)

(declare-fun tp!207669 () Bool)

(assert (=> b!690902 (= e!434498 tp!207669)))

(assert (=> b!690754 (= tp!207609 e!434498)))

(assert (= (and b!690754 ((_ is ElementMatch!1831) (regOne!4174 (regex!1493 (h!12845 rules!1357))))) b!690900))

(assert (= (and b!690754 ((_ is Concat!3368) (regOne!4174 (regex!1493 (h!12845 rules!1357))))) b!690901))

(assert (= (and b!690754 ((_ is Star!1831) (regOne!4174 (regex!1493 (h!12845 rules!1357))))) b!690902))

(assert (= (and b!690754 ((_ is Union!1831) (regOne!4174 (regex!1493 (h!12845 rules!1357))))) b!690903))

(declare-fun b!690904 () Bool)

(declare-fun e!434499 () Bool)

(assert (=> b!690904 (= e!434499 tp_is_empty!3643)))

(declare-fun b!690905 () Bool)

(declare-fun tp!207677 () Bool)

(declare-fun tp!207675 () Bool)

(assert (=> b!690905 (= e!434499 (and tp!207677 tp!207675))))

(declare-fun b!690907 () Bool)

(declare-fun tp!207676 () Bool)

(declare-fun tp!207678 () Bool)

(assert (=> b!690907 (= e!434499 (and tp!207676 tp!207678))))

(declare-fun b!690906 () Bool)

(declare-fun tp!207674 () Bool)

(assert (=> b!690906 (= e!434499 tp!207674)))

(assert (=> b!690754 (= tp!207607 e!434499)))

(assert (= (and b!690754 ((_ is ElementMatch!1831) (regTwo!4174 (regex!1493 (h!12845 rules!1357))))) b!690904))

(assert (= (and b!690754 ((_ is Concat!3368) (regTwo!4174 (regex!1493 (h!12845 rules!1357))))) b!690905))

(assert (= (and b!690754 ((_ is Star!1831) (regTwo!4174 (regex!1493 (h!12845 rules!1357))))) b!690906))

(assert (= (and b!690754 ((_ is Union!1831) (regTwo!4174 (regex!1493 (h!12845 rules!1357))))) b!690907))

(declare-fun b!690908 () Bool)

(declare-fun e!434500 () Bool)

(declare-fun tp!207679 () Bool)

(declare-fun tp!207680 () Bool)

(assert (=> b!690908 (= e!434500 (and tp!207679 tp!207680))))

(assert (=> b!690680 (= tp!207508 e!434500)))

(assert (= (and b!690680 ((_ is Cons!7438) (exprs!741 (_1!4326 (_1!4327 (h!12840 mapValue!3051)))))) b!690908))

(declare-fun condSetEmpty!3730 () Bool)

(assert (=> setNonEmpty!3722 (= condSetEmpty!3730 (= setRest!3721 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3730 () Bool)

(assert (=> setNonEmpty!3722 (= tp!207634 setRes!3730)))

(declare-fun setIsEmpty!3730 () Bool)

(assert (=> setIsEmpty!3730 setRes!3730))

(declare-fun e!434501 () Bool)

(declare-fun tp!207681 () Bool)

(declare-fun setElem!3730 () Context!482)

(declare-fun setNonEmpty!3730 () Bool)

(assert (=> setNonEmpty!3730 (= setRes!3730 (and tp!207681 (inv!9543 setElem!3730) e!434501))))

(declare-fun setRest!3730 () (InoxSet Context!482))

(assert (=> setNonEmpty!3730 (= setRest!3721 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3730 true) setRest!3730))))

(declare-fun b!690909 () Bool)

(declare-fun tp!207682 () Bool)

(assert (=> b!690909 (= e!434501 tp!207682)))

(assert (= (and setNonEmpty!3722 condSetEmpty!3730) setIsEmpty!3730))

(assert (= (and setNonEmpty!3722 (not condSetEmpty!3730)) setNonEmpty!3730))

(assert (= setNonEmpty!3730 b!690909))

(declare-fun m!947148 () Bool)

(assert (=> setNonEmpty!3730 m!947148))

(declare-fun b!690910 () Bool)

(declare-fun e!434502 () Bool)

(declare-fun tp!207683 () Bool)

(declare-fun tp!207684 () Bool)

(assert (=> b!690910 (= e!434502 (and tp!207683 tp!207684))))

(assert (=> b!690710 (= tp!207546 e!434502)))

(assert (= (and b!690710 ((_ is Cons!7438) (exprs!741 (_2!4330 (_1!4331 (h!12843 mapDefault!3058)))))) b!690910))

(declare-fun b!690915 () Bool)

(declare-fun e!434505 () Bool)

(declare-fun tp!207687 () Bool)

(assert (=> b!690915 (= e!434505 (and tp_is_empty!3643 tp!207687))))

(assert (=> b!690692 (= tp!207519 e!434505)))

(assert (= (and b!690692 ((_ is Cons!7440) (innerList!2686 (xs!5279 (c!121540 input!756))))) b!690915))

(declare-fun condSetEmpty!3731 () Bool)

(assert (=> setNonEmpty!3712 (= condSetEmpty!3731 (= setRest!3712 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3731 () Bool)

(assert (=> setNonEmpty!3712 (= tp!207585 setRes!3731)))

(declare-fun setIsEmpty!3731 () Bool)

(assert (=> setIsEmpty!3731 setRes!3731))

(declare-fun e!434506 () Bool)

(declare-fun setNonEmpty!3731 () Bool)

(declare-fun setElem!3731 () Context!482)

(declare-fun tp!207688 () Bool)

(assert (=> setNonEmpty!3731 (= setRes!3731 (and tp!207688 (inv!9543 setElem!3731) e!434506))))

(declare-fun setRest!3731 () (InoxSet Context!482))

(assert (=> setNonEmpty!3731 (= setRest!3712 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3731 true) setRest!3731))))

(declare-fun b!690916 () Bool)

(declare-fun tp!207689 () Bool)

(assert (=> b!690916 (= e!434506 tp!207689)))

(assert (= (and setNonEmpty!3712 condSetEmpty!3731) setIsEmpty!3731))

(assert (= (and setNonEmpty!3712 (not condSetEmpty!3731)) setNonEmpty!3731))

(assert (= setNonEmpty!3731 b!690916))

(declare-fun m!947150 () Bool)

(assert (=> setNonEmpty!3731 m!947150))

(declare-fun b!690917 () Bool)

(declare-fun e!434507 () Bool)

(declare-fun tp!207690 () Bool)

(declare-fun tp!207691 () Bool)

(assert (=> b!690917 (= e!434507 (and tp!207690 tp!207691))))

(assert (=> b!690760 (= tp!207616 e!434507)))

(assert (= (and b!690760 ((_ is Cons!7438) (exprs!741 setElem!3716))) b!690917))

(declare-fun b!690918 () Bool)

(declare-fun e!434508 () Bool)

(declare-fun tp!207692 () Bool)

(declare-fun tp!207693 () Bool)

(assert (=> b!690918 (= e!434508 (and tp!207692 tp!207693))))

(assert (=> b!690674 (= tp!207499 e!434508)))

(assert (= (and b!690674 ((_ is Cons!7438) (exprs!741 (_1!4326 (_1!4327 (h!12840 mapValue!3055)))))) b!690918))

(declare-fun b!690919 () Bool)

(declare-fun e!434511 () Bool)

(declare-fun tp!207695 () Bool)

(assert (=> b!690919 (= e!434511 tp!207695)))

(declare-fun setRes!3732 () Bool)

(declare-fun setNonEmpty!3732 () Bool)

(declare-fun setElem!3732 () Context!482)

(declare-fun tp!207697 () Bool)

(assert (=> setNonEmpty!3732 (= setRes!3732 (and tp!207697 (inv!9543 setElem!3732) e!434511))))

(declare-fun setRest!3732 () (InoxSet Context!482))

(assert (=> setNonEmpty!3732 (= (_2!4327 (h!12840 (t!87269 mapDefault!3050))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3732 true) setRest!3732))))

(declare-fun e!434509 () Bool)

(assert (=> b!690658 (= tp!207479 e!434509)))

(declare-fun b!690920 () Bool)

(declare-fun e!434510 () Bool)

(declare-fun tp!207694 () Bool)

(assert (=> b!690920 (= e!434510 tp!207694)))

(declare-fun setIsEmpty!3732 () Bool)

(assert (=> setIsEmpty!3732 setRes!3732))

(declare-fun b!690921 () Bool)

(declare-fun tp!207696 () Bool)

(assert (=> b!690921 (= e!434509 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 (t!87269 mapDefault!3050))))) e!434510 tp_is_empty!3643 setRes!3732 tp!207696))))

(declare-fun condSetEmpty!3732 () Bool)

(assert (=> b!690921 (= condSetEmpty!3732 (= (_2!4327 (h!12840 (t!87269 mapDefault!3050))) ((as const (Array Context!482 Bool)) false)))))

(assert (= b!690921 b!690920))

(assert (= (and b!690921 condSetEmpty!3732) setIsEmpty!3732))

(assert (= (and b!690921 (not condSetEmpty!3732)) setNonEmpty!3732))

(assert (= setNonEmpty!3732 b!690919))

(assert (= (and b!690658 ((_ is Cons!7439) (t!87269 mapDefault!3050))) b!690921))

(declare-fun m!947152 () Bool)

(assert (=> setNonEmpty!3732 m!947152))

(declare-fun m!947154 () Bool)

(assert (=> b!690921 m!947154))

(declare-fun tp!207700 () Bool)

(declare-fun b!690922 () Bool)

(declare-fun tp!207698 () Bool)

(declare-fun e!434513 () Bool)

(assert (=> b!690922 (= e!434513 (and (inv!9535 (left!5974 (left!5974 (c!121540 input!756)))) tp!207698 (inv!9535 (right!6304 (left!5974 (c!121540 input!756)))) tp!207700))))

(declare-fun b!690924 () Bool)

(declare-fun e!434512 () Bool)

(declare-fun tp!207699 () Bool)

(assert (=> b!690924 (= e!434512 tp!207699)))

(declare-fun b!690923 () Bool)

(assert (=> b!690923 (= e!434513 (and (inv!9544 (xs!5279 (left!5974 (c!121540 input!756)))) e!434512))))

(assert (=> b!690690 (= tp!207518 (and (inv!9535 (left!5974 (c!121540 input!756))) e!434513))))

(assert (= (and b!690690 ((_ is Node!2628) (left!5974 (c!121540 input!756)))) b!690922))

(assert (= b!690923 b!690924))

(assert (= (and b!690690 ((_ is Leaf!3897) (left!5974 (c!121540 input!756)))) b!690923))

(declare-fun m!947156 () Bool)

(assert (=> b!690922 m!947156))

(declare-fun m!947158 () Bool)

(assert (=> b!690922 m!947158))

(declare-fun m!947160 () Bool)

(assert (=> b!690923 m!947160))

(assert (=> b!690690 m!946907))

(declare-fun tp!207703 () Bool)

(declare-fun b!690925 () Bool)

(declare-fun e!434515 () Bool)

(declare-fun tp!207701 () Bool)

(assert (=> b!690925 (= e!434515 (and (inv!9535 (left!5974 (right!6304 (c!121540 input!756)))) tp!207701 (inv!9535 (right!6304 (right!6304 (c!121540 input!756)))) tp!207703))))

(declare-fun b!690927 () Bool)

(declare-fun e!434514 () Bool)

(declare-fun tp!207702 () Bool)

(assert (=> b!690927 (= e!434514 tp!207702)))

(declare-fun b!690926 () Bool)

(assert (=> b!690926 (= e!434515 (and (inv!9544 (xs!5279 (right!6304 (c!121540 input!756)))) e!434514))))

(assert (=> b!690690 (= tp!207520 (and (inv!9535 (right!6304 (c!121540 input!756))) e!434515))))

(assert (= (and b!690690 ((_ is Node!2628) (right!6304 (c!121540 input!756)))) b!690925))

(assert (= b!690926 b!690927))

(assert (= (and b!690690 ((_ is Leaf!3897) (right!6304 (c!121540 input!756)))) b!690926))

(declare-fun m!947162 () Bool)

(assert (=> b!690925 m!947162))

(declare-fun m!947164 () Bool)

(assert (=> b!690925 m!947164))

(declare-fun m!947166 () Bool)

(assert (=> b!690926 m!947166))

(assert (=> b!690690 m!946909))

(declare-fun b!690928 () Bool)

(declare-fun e!434516 () Bool)

(declare-fun tp!207704 () Bool)

(declare-fun tp!207705 () Bool)

(assert (=> b!690928 (= e!434516 (and tp!207704 tp!207705))))

(assert (=> b!690677 (= tp!207507 e!434516)))

(assert (= (and b!690677 ((_ is Cons!7438) (exprs!741 setElem!3696))) b!690928))

(declare-fun condSetEmpty!3733 () Bool)

(assert (=> setNonEmpty!3715 (= condSetEmpty!3733 (= setRest!3715 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3733 () Bool)

(assert (=> setNonEmpty!3715 (= tp!207614 setRes!3733)))

(declare-fun setIsEmpty!3733 () Bool)

(assert (=> setIsEmpty!3733 setRes!3733))

(declare-fun setNonEmpty!3733 () Bool)

(declare-fun e!434517 () Bool)

(declare-fun tp!207706 () Bool)

(declare-fun setElem!3733 () Context!482)

(assert (=> setNonEmpty!3733 (= setRes!3733 (and tp!207706 (inv!9543 setElem!3733) e!434517))))

(declare-fun setRest!3733 () (InoxSet Context!482))

(assert (=> setNonEmpty!3733 (= setRest!3715 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3733 true) setRest!3733))))

(declare-fun b!690929 () Bool)

(declare-fun tp!207707 () Bool)

(assert (=> b!690929 (= e!434517 tp!207707)))

(assert (= (and setNonEmpty!3715 condSetEmpty!3733) setIsEmpty!3733))

(assert (= (and setNonEmpty!3715 (not condSetEmpty!3733)) setNonEmpty!3733))

(assert (= setNonEmpty!3733 b!690929))

(declare-fun m!947168 () Bool)

(assert (=> setNonEmpty!3733 m!947168))

(declare-fun b!690930 () Bool)

(declare-fun e!434518 () Bool)

(declare-fun tp!207708 () Bool)

(declare-fun tp!207709 () Bool)

(assert (=> b!690930 (= e!434518 (and tp!207708 tp!207709))))

(assert (=> b!690707 (= tp!207548 e!434518)))

(assert (= (and b!690707 ((_ is Cons!7438) (exprs!741 setElem!3704))) b!690930))

(declare-fun b!690931 () Bool)

(declare-fun e!434519 () Bool)

(declare-fun tp!207710 () Bool)

(declare-fun tp!207711 () Bool)

(assert (=> b!690931 (= e!434519 (and tp!207710 tp!207711))))

(assert (=> b!690761 (= tp!207615 e!434519)))

(assert (= (and b!690761 ((_ is Cons!7438) (exprs!741 (_1!4326 (_1!4327 (h!12840 (minValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))))))) b!690931))

(declare-fun condSetEmpty!3734 () Bool)

(assert (=> setNonEmpty!3697 (= condSetEmpty!3734 (= setRest!3696 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3734 () Bool)

(assert (=> setNonEmpty!3697 (= tp!207506 setRes!3734)))

(declare-fun setIsEmpty!3734 () Bool)

(assert (=> setIsEmpty!3734 setRes!3734))

(declare-fun setNonEmpty!3734 () Bool)

(declare-fun e!434520 () Bool)

(declare-fun tp!207712 () Bool)

(declare-fun setElem!3734 () Context!482)

(assert (=> setNonEmpty!3734 (= setRes!3734 (and tp!207712 (inv!9543 setElem!3734) e!434520))))

(declare-fun setRest!3734 () (InoxSet Context!482))

(assert (=> setNonEmpty!3734 (= setRest!3696 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3734 true) setRest!3734))))

(declare-fun b!690932 () Bool)

(declare-fun tp!207713 () Bool)

(assert (=> b!690932 (= e!434520 tp!207713)))

(assert (= (and setNonEmpty!3697 condSetEmpty!3734) setIsEmpty!3734))

(assert (= (and setNonEmpty!3697 (not condSetEmpty!3734)) setNonEmpty!3734))

(assert (= setNonEmpty!3734 b!690932))

(declare-fun m!947170 () Bool)

(assert (=> setNonEmpty!3734 m!947170))

(declare-fun b!690933 () Bool)

(declare-fun e!434521 () Bool)

(declare-fun tp!207714 () Bool)

(declare-fun tp!207715 () Bool)

(assert (=> b!690933 (= e!434521 (and tp!207714 tp!207715))))

(assert (=> b!690723 (= tp!207564 e!434521)))

(assert (= (and b!690723 ((_ is Cons!7438) (exprs!741 setElem!3707))) b!690933))

(declare-fun condSetEmpty!3735 () Bool)

(assert (=> setNonEmpty!3724 (= condSetEmpty!3735 (= setRest!3724 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3735 () Bool)

(assert (=> setNonEmpty!3724 (= tp!207646 setRes!3735)))

(declare-fun setIsEmpty!3735 () Bool)

(assert (=> setIsEmpty!3735 setRes!3735))

(declare-fun e!434522 () Bool)

(declare-fun setElem!3735 () Context!482)

(declare-fun setNonEmpty!3735 () Bool)

(declare-fun tp!207716 () Bool)

(assert (=> setNonEmpty!3735 (= setRes!3735 (and tp!207716 (inv!9543 setElem!3735) e!434522))))

(declare-fun setRest!3735 () (InoxSet Context!482))

(assert (=> setNonEmpty!3735 (= setRest!3724 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3735 true) setRest!3735))))

(declare-fun b!690934 () Bool)

(declare-fun tp!207717 () Bool)

(assert (=> b!690934 (= e!434522 tp!207717)))

(assert (= (and setNonEmpty!3724 condSetEmpty!3735) setIsEmpty!3735))

(assert (= (and setNonEmpty!3724 (not condSetEmpty!3735)) setNonEmpty!3735))

(assert (= setNonEmpty!3735 b!690934))

(declare-fun m!947172 () Bool)

(assert (=> setNonEmpty!3735 m!947172))

(declare-fun condSetEmpty!3736 () Bool)

(assert (=> setNonEmpty!3696 (= condSetEmpty!3736 (= setRest!3697 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3736 () Bool)

(assert (=> setNonEmpty!3696 (= tp!207500 setRes!3736)))

(declare-fun setIsEmpty!3736 () Bool)

(assert (=> setIsEmpty!3736 setRes!3736))

(declare-fun tp!207718 () Bool)

(declare-fun setNonEmpty!3736 () Bool)

(declare-fun setElem!3736 () Context!482)

(declare-fun e!434523 () Bool)

(assert (=> setNonEmpty!3736 (= setRes!3736 (and tp!207718 (inv!9543 setElem!3736) e!434523))))

(declare-fun setRest!3736 () (InoxSet Context!482))

(assert (=> setNonEmpty!3736 (= setRest!3697 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3736 true) setRest!3736))))

(declare-fun b!690935 () Bool)

(declare-fun tp!207719 () Bool)

(assert (=> b!690935 (= e!434523 tp!207719)))

(assert (= (and setNonEmpty!3696 condSetEmpty!3736) setIsEmpty!3736))

(assert (= (and setNonEmpty!3696 (not condSetEmpty!3736)) setNonEmpty!3736))

(assert (= setNonEmpty!3736 b!690935))

(declare-fun m!947174 () Bool)

(assert (=> setNonEmpty!3736 m!947174))

(declare-fun b!690936 () Bool)

(declare-fun e!434524 () Bool)

(declare-fun tp!207720 () Bool)

(declare-fun tp!207721 () Bool)

(assert (=> b!690936 (= e!434524 (and tp!207720 tp!207721))))

(assert (=> b!690656 (= tp!207478 e!434524)))

(assert (= (and b!690656 ((_ is Cons!7438) (exprs!741 setElem!3691))) b!690936))

(declare-fun b!690937 () Bool)

(declare-fun e!434525 () Bool)

(declare-fun tp!207722 () Bool)

(declare-fun tp!207723 () Bool)

(assert (=> b!690937 (= e!434525 (and tp!207722 tp!207723))))

(assert (=> b!690729 (= tp!207574 e!434525)))

(assert (= (and b!690729 ((_ is Cons!7438) (exprs!741 setElem!3709))) b!690937))

(declare-fun b!690938 () Bool)

(declare-fun e!434526 () Bool)

(declare-fun tp!207724 () Bool)

(declare-fun tp!207725 () Bool)

(assert (=> b!690938 (= e!434526 (and tp!207724 tp!207725))))

(assert (=> b!690726 (= tp!207569 e!434526)))

(assert (= (and b!690726 ((_ is Cons!7438) (exprs!741 setElem!3708))) b!690938))

(declare-fun b!690939 () Bool)

(declare-fun e!434528 () Bool)

(declare-fun setRes!3737 () Bool)

(declare-fun tp!207727 () Bool)

(assert (=> b!690939 (= e!434528 (and setRes!3737 tp!207727))))

(declare-fun condSetEmpty!3737 () Bool)

(assert (=> b!690939 (= condSetEmpty!3737 (= (_1!4328 (_1!4329 (h!12842 (t!87271 mapDefault!3051)))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setIsEmpty!3737 () Bool)

(assert (=> setIsEmpty!3737 setRes!3737))

(declare-fun tp!207726 () Bool)

(declare-fun setNonEmpty!3737 () Bool)

(declare-fun setElem!3737 () Context!482)

(declare-fun e!434527 () Bool)

(assert (=> setNonEmpty!3737 (= setRes!3737 (and tp!207726 (inv!9543 setElem!3737) e!434527))))

(declare-fun setRest!3737 () (InoxSet Context!482))

(assert (=> setNonEmpty!3737 (= (_1!4328 (_1!4329 (h!12842 (t!87271 mapDefault!3051)))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3737 true) setRest!3737))))

(assert (=> b!690782 (= tp!207647 e!434528)))

(declare-fun b!690940 () Bool)

(declare-fun tp!207728 () Bool)

(assert (=> b!690940 (= e!434527 tp!207728)))

(assert (= (and b!690939 condSetEmpty!3737) setIsEmpty!3737))

(assert (= (and b!690939 (not condSetEmpty!3737)) setNonEmpty!3737))

(assert (= setNonEmpty!3737 b!690940))

(assert (= (and b!690782 ((_ is Cons!7441) (t!87271 mapDefault!3051))) b!690939))

(declare-fun m!947176 () Bool)

(assert (=> setNonEmpty!3737 m!947176))

(declare-fun condSetEmpty!3738 () Bool)

(assert (=> setNonEmpty!3713 (= condSetEmpty!3738 (= setRest!3713 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3738 () Bool)

(assert (=> setNonEmpty!3713 (= tp!207588 setRes!3738)))

(declare-fun setIsEmpty!3738 () Bool)

(assert (=> setIsEmpty!3738 setRes!3738))

(declare-fun setNonEmpty!3738 () Bool)

(declare-fun tp!207729 () Bool)

(declare-fun setElem!3738 () Context!482)

(declare-fun e!434529 () Bool)

(assert (=> setNonEmpty!3738 (= setRes!3738 (and tp!207729 (inv!9543 setElem!3738) e!434529))))

(declare-fun setRest!3738 () (InoxSet Context!482))

(assert (=> setNonEmpty!3738 (= setRest!3713 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3738 true) setRest!3738))))

(declare-fun b!690941 () Bool)

(declare-fun tp!207730 () Bool)

(assert (=> b!690941 (= e!434529 tp!207730)))

(assert (= (and setNonEmpty!3713 condSetEmpty!3738) setIsEmpty!3738))

(assert (= (and setNonEmpty!3713 (not condSetEmpty!3738)) setNonEmpty!3738))

(assert (= setNonEmpty!3738 b!690941))

(declare-fun m!947178 () Bool)

(assert (=> setNonEmpty!3738 m!947178))

(declare-fun b!690942 () Bool)

(declare-fun e!434531 () Bool)

(declare-fun setRes!3739 () Bool)

(declare-fun tp!207732 () Bool)

(assert (=> b!690942 (= e!434531 (and setRes!3739 tp!207732))))

(declare-fun condSetEmpty!3739 () Bool)

(assert (=> b!690942 (= condSetEmpty!3739 (= (_1!4328 (_1!4329 (h!12842 (t!87271 (zeroValue!1019 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59)))))))))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setIsEmpty!3739 () Bool)

(assert (=> setIsEmpty!3739 setRes!3739))

(declare-fun setElem!3739 () Context!482)

(declare-fun e!434530 () Bool)

(declare-fun setNonEmpty!3739 () Bool)

(declare-fun tp!207731 () Bool)

(assert (=> setNonEmpty!3739 (= setRes!3739 (and tp!207731 (inv!9543 setElem!3739) e!434530))))

(declare-fun setRest!3739 () (InoxSet Context!482))

(assert (=> setNonEmpty!3739 (= (_1!4328 (_1!4329 (h!12842 (t!87271 (zeroValue!1019 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59)))))))))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3739 true) setRest!3739))))

(assert (=> b!690736 (= tp!207586 e!434531)))

(declare-fun b!690943 () Bool)

(declare-fun tp!207733 () Bool)

(assert (=> b!690943 (= e!434530 tp!207733)))

(assert (= (and b!690942 condSetEmpty!3739) setIsEmpty!3739))

(assert (= (and b!690942 (not condSetEmpty!3739)) setNonEmpty!3739))

(assert (= setNonEmpty!3739 b!690943))

(assert (= (and b!690736 ((_ is Cons!7441) (t!87271 (zeroValue!1019 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))))) b!690942))

(declare-fun m!947180 () Bool)

(assert (=> setNonEmpty!3739 m!947180))

(declare-fun b!690944 () Bool)

(declare-fun e!434532 () Bool)

(declare-fun tp!207734 () Bool)

(declare-fun tp!207735 () Bool)

(assert (=> b!690944 (= e!434532 (and tp!207734 tp!207735))))

(assert (=> b!690673 (= tp!207501 e!434532)))

(assert (= (and b!690673 ((_ is Cons!7438) (exprs!741 (_1!4326 (_1!4327 (h!12840 mapDefault!3055)))))) b!690944))

(declare-fun b!690945 () Bool)

(declare-fun e!434533 () Bool)

(declare-fun tp!207736 () Bool)

(declare-fun tp!207737 () Bool)

(assert (=> b!690945 (= e!434533 (and tp!207736 tp!207737))))

(assert (=> b!690657 (= tp!207477 e!434533)))

(assert (= (and b!690657 ((_ is Cons!7438) (exprs!741 (_1!4326 (_1!4327 (h!12840 mapDefault!3050)))))) b!690945))

(declare-fun b!690946 () Bool)

(declare-fun e!434534 () Bool)

(declare-fun tp!207738 () Bool)

(declare-fun tp!207739 () Bool)

(assert (=> b!690946 (= e!434534 (and tp!207738 tp!207739))))

(assert (=> b!690741 (= tp!207592 e!434534)))

(assert (= (and b!690741 ((_ is Cons!7438) (exprs!741 (_2!4330 (_1!4331 (h!12843 mapDefault!3052)))))) b!690946))

(declare-fun b!690947 () Bool)

(declare-fun e!434535 () Bool)

(assert (=> b!690947 (= e!434535 tp_is_empty!3643)))

(declare-fun b!690948 () Bool)

(declare-fun tp!207743 () Bool)

(declare-fun tp!207741 () Bool)

(assert (=> b!690948 (= e!434535 (and tp!207743 tp!207741))))

(declare-fun b!690950 () Bool)

(declare-fun tp!207742 () Bool)

(declare-fun tp!207744 () Bool)

(assert (=> b!690950 (= e!434535 (and tp!207742 tp!207744))))

(declare-fun b!690949 () Bool)

(declare-fun tp!207740 () Bool)

(assert (=> b!690949 (= e!434535 tp!207740)))

(assert (=> b!690755 (= tp!207606 e!434535)))

(assert (= (and b!690755 ((_ is ElementMatch!1831) (reg!2160 (regex!1493 (h!12845 rules!1357))))) b!690947))

(assert (= (and b!690755 ((_ is Concat!3368) (reg!2160 (regex!1493 (h!12845 rules!1357))))) b!690948))

(assert (= (and b!690755 ((_ is Star!1831) (reg!2160 (regex!1493 (h!12845 rules!1357))))) b!690949))

(assert (= (and b!690755 ((_ is Union!1831) (reg!2160 (regex!1493 (h!12845 rules!1357))))) b!690950))

(declare-fun condSetEmpty!3740 () Bool)

(assert (=> setNonEmpty!3723 (= condSetEmpty!3740 (= setRest!3723 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3740 () Bool)

(assert (=> setNonEmpty!3723 (= tp!207640 setRes!3740)))

(declare-fun setIsEmpty!3740 () Bool)

(assert (=> setIsEmpty!3740 setRes!3740))

(declare-fun setNonEmpty!3740 () Bool)

(declare-fun e!434536 () Bool)

(declare-fun setElem!3740 () Context!482)

(declare-fun tp!207745 () Bool)

(assert (=> setNonEmpty!3740 (= setRes!3740 (and tp!207745 (inv!9543 setElem!3740) e!434536))))

(declare-fun setRest!3740 () (InoxSet Context!482))

(assert (=> setNonEmpty!3740 (= setRest!3723 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3740 true) setRest!3740))))

(declare-fun b!690951 () Bool)

(declare-fun tp!207746 () Bool)

(assert (=> b!690951 (= e!434536 tp!207746)))

(assert (= (and setNonEmpty!3723 condSetEmpty!3740) setIsEmpty!3740))

(assert (= (and setNonEmpty!3723 (not condSetEmpty!3740)) setNonEmpty!3740))

(assert (= setNonEmpty!3740 b!690951))

(declare-fun m!947182 () Bool)

(assert (=> setNonEmpty!3740 m!947182))

(declare-fun b!690952 () Bool)

(declare-fun e!434537 () Bool)

(declare-fun tp!207747 () Bool)

(declare-fun tp!207748 () Bool)

(assert (=> b!690952 (= e!434537 (and tp!207747 tp!207748))))

(assert (=> b!690775 (= tp!207637 e!434537)))

(assert (= (and b!690775 ((_ is Cons!7438) (exprs!741 setElem!3721))) b!690952))

(declare-fun condSetEmpty!3741 () Bool)

(assert (=> setNonEmpty!3704 (= condSetEmpty!3741 (= setRest!3703 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3741 () Bool)

(assert (=> setNonEmpty!3704 (= tp!207550 setRes!3741)))

(declare-fun setIsEmpty!3741 () Bool)

(assert (=> setIsEmpty!3741 setRes!3741))

(declare-fun setElem!3741 () Context!482)

(declare-fun e!434538 () Bool)

(declare-fun setNonEmpty!3741 () Bool)

(declare-fun tp!207749 () Bool)

(assert (=> setNonEmpty!3741 (= setRes!3741 (and tp!207749 (inv!9543 setElem!3741) e!434538))))

(declare-fun setRest!3741 () (InoxSet Context!482))

(assert (=> setNonEmpty!3741 (= setRest!3703 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3741 true) setRest!3741))))

(declare-fun b!690953 () Bool)

(declare-fun tp!207750 () Bool)

(assert (=> b!690953 (= e!434538 tp!207750)))

(assert (= (and setNonEmpty!3704 condSetEmpty!3741) setIsEmpty!3741))

(assert (= (and setNonEmpty!3704 (not condSetEmpty!3741)) setNonEmpty!3741))

(assert (= setNonEmpty!3741 b!690953))

(declare-fun m!947184 () Bool)

(assert (=> setNonEmpty!3741 m!947184))

(declare-fun condSetEmpty!3742 () Bool)

(assert (=> setNonEmpty!3714 (= condSetEmpty!3742 (= setRest!3714 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3742 () Bool)

(assert (=> setNonEmpty!3714 (= tp!207594 setRes!3742)))

(declare-fun setIsEmpty!3742 () Bool)

(assert (=> setIsEmpty!3742 setRes!3742))

(declare-fun tp!207751 () Bool)

(declare-fun setNonEmpty!3742 () Bool)

(declare-fun setElem!3742 () Context!482)

(declare-fun e!434539 () Bool)

(assert (=> setNonEmpty!3742 (= setRes!3742 (and tp!207751 (inv!9543 setElem!3742) e!434539))))

(declare-fun setRest!3742 () (InoxSet Context!482))

(assert (=> setNonEmpty!3742 (= setRest!3714 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3742 true) setRest!3742))))

(declare-fun b!690954 () Bool)

(declare-fun tp!207752 () Bool)

(assert (=> b!690954 (= e!434539 tp!207752)))

(assert (= (and setNonEmpty!3714 condSetEmpty!3742) setIsEmpty!3742))

(assert (= (and setNonEmpty!3714 (not condSetEmpty!3742)) setNonEmpty!3742))

(assert (= setNonEmpty!3742 b!690954))

(declare-fun m!947186 () Bool)

(assert (=> setNonEmpty!3742 m!947186))

(declare-fun b!690955 () Bool)

(declare-fun e!434540 () Bool)

(assert (=> b!690955 (= e!434540 tp_is_empty!3643)))

(declare-fun b!690956 () Bool)

(declare-fun tp!207756 () Bool)

(declare-fun tp!207754 () Bool)

(assert (=> b!690956 (= e!434540 (and tp!207756 tp!207754))))

(declare-fun b!690958 () Bool)

(declare-fun tp!207755 () Bool)

(declare-fun tp!207757 () Bool)

(assert (=> b!690958 (= e!434540 (and tp!207755 tp!207757))))

(declare-fun b!690957 () Bool)

(declare-fun tp!207753 () Bool)

(assert (=> b!690957 (= e!434540 tp!207753)))

(assert (=> b!690721 (= tp!207566 e!434540)))

(assert (= (and b!690721 ((_ is ElementMatch!1831) (_1!4330 (_1!4331 (h!12843 mapValue!3050))))) b!690955))

(assert (= (and b!690721 ((_ is Concat!3368) (_1!4330 (_1!4331 (h!12843 mapValue!3050))))) b!690956))

(assert (= (and b!690721 ((_ is Star!1831) (_1!4330 (_1!4331 (h!12843 mapValue!3050))))) b!690957))

(assert (= (and b!690721 ((_ is Union!1831) (_1!4330 (_1!4331 (h!12843 mapValue!3050))))) b!690958))

(declare-fun tp!207762 () Bool)

(declare-fun e!434543 () Bool)

(declare-fun tp!207760 () Bool)

(declare-fun e!434542 () Bool)

(declare-fun setRes!3743 () Bool)

(declare-fun b!690959 () Bool)

(assert (=> b!690959 (= e!434543 (and tp!207760 (inv!9543 (_2!4330 (_1!4331 (h!12843 (t!87272 mapValue!3050))))) e!434542 tp_is_empty!3643 setRes!3743 tp!207762))))

(declare-fun condSetEmpty!3743 () Bool)

(assert (=> b!690959 (= condSetEmpty!3743 (= (_2!4331 (h!12843 (t!87272 mapValue!3050))) ((as const (Array Context!482 Bool)) false)))))

(assert (=> b!690721 (= tp!207568 e!434543)))

(declare-fun b!690960 () Bool)

(declare-fun tp!207759 () Bool)

(assert (=> b!690960 (= e!434542 tp!207759)))

(declare-fun setIsEmpty!3743 () Bool)

(assert (=> setIsEmpty!3743 setRes!3743))

(declare-fun setElem!3743 () Context!482)

(declare-fun e!434541 () Bool)

(declare-fun setNonEmpty!3743 () Bool)

(declare-fun tp!207761 () Bool)

(assert (=> setNonEmpty!3743 (= setRes!3743 (and tp!207761 (inv!9543 setElem!3743) e!434541))))

(declare-fun setRest!3743 () (InoxSet Context!482))

(assert (=> setNonEmpty!3743 (= (_2!4331 (h!12843 (t!87272 mapValue!3050))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3743 true) setRest!3743))))

(declare-fun b!690961 () Bool)

(declare-fun tp!207758 () Bool)

(assert (=> b!690961 (= e!434541 tp!207758)))

(assert (= b!690959 b!690960))

(assert (= (and b!690959 condSetEmpty!3743) setIsEmpty!3743))

(assert (= (and b!690959 (not condSetEmpty!3743)) setNonEmpty!3743))

(assert (= setNonEmpty!3743 b!690961))

(assert (= (and b!690721 ((_ is Cons!7442) (t!87272 mapValue!3050))) b!690959))

(declare-fun m!947188 () Bool)

(assert (=> b!690959 m!947188))

(declare-fun m!947190 () Bool)

(assert (=> setNonEmpty!3743 m!947190))

(declare-fun b!690962 () Bool)

(declare-fun e!434545 () Bool)

(declare-fun setRes!3744 () Bool)

(declare-fun tp!207764 () Bool)

(assert (=> b!690962 (= e!434545 (and setRes!3744 tp!207764))))

(declare-fun condSetEmpty!3744 () Bool)

(assert (=> b!690962 (= condSetEmpty!3744 (= (_1!4328 (_1!4329 (h!12842 (t!87271 (minValue!1019 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59)))))))))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setIsEmpty!3744 () Bool)

(assert (=> setIsEmpty!3744 setRes!3744))

(declare-fun setElem!3744 () Context!482)

(declare-fun tp!207763 () Bool)

(declare-fun setNonEmpty!3744 () Bool)

(declare-fun e!434544 () Bool)

(assert (=> setNonEmpty!3744 (= setRes!3744 (and tp!207763 (inv!9543 setElem!3744) e!434544))))

(declare-fun setRest!3744 () (InoxSet Context!482))

(assert (=> setNonEmpty!3744 (= (_1!4328 (_1!4329 (h!12842 (t!87271 (minValue!1019 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59)))))))))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3744 true) setRest!3744))))

(assert (=> b!690738 (= tp!207589 e!434545)))

(declare-fun b!690963 () Bool)

(declare-fun tp!207765 () Bool)

(assert (=> b!690963 (= e!434544 tp!207765)))

(assert (= (and b!690962 condSetEmpty!3744) setIsEmpty!3744))

(assert (= (and b!690962 (not condSetEmpty!3744)) setNonEmpty!3744))

(assert (= setNonEmpty!3744 b!690963))

(assert (= (and b!690738 ((_ is Cons!7441) (t!87271 (minValue!1019 (v!17642 (underlying!1707 (v!17643 (underlying!1708 (cache!1121 cacheFindLongestMatch!59))))))))) b!690962))

(declare-fun m!947192 () Bool)

(assert (=> setNonEmpty!3744 m!947192))

(declare-fun b!690964 () Bool)

(declare-fun e!434546 () Bool)

(assert (=> b!690964 (= e!434546 tp_is_empty!3643)))

(declare-fun b!690965 () Bool)

(declare-fun tp!207769 () Bool)

(declare-fun tp!207767 () Bool)

(assert (=> b!690965 (= e!434546 (and tp!207769 tp!207767))))

(declare-fun b!690967 () Bool)

(declare-fun tp!207768 () Bool)

(declare-fun tp!207770 () Bool)

(assert (=> b!690967 (= e!434546 (and tp!207768 tp!207770))))

(declare-fun b!690966 () Bool)

(declare-fun tp!207766 () Bool)

(assert (=> b!690966 (= e!434546 tp!207766)))

(assert (=> b!690727 (= tp!207576 e!434546)))

(assert (= (and b!690727 ((_ is ElementMatch!1831) (_1!4330 (_1!4331 (h!12843 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))))) b!690964))

(assert (= (and b!690727 ((_ is Concat!3368) (_1!4330 (_1!4331 (h!12843 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))))) b!690965))

(assert (= (and b!690727 ((_ is Star!1831) (_1!4330 (_1!4331 (h!12843 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))))) b!690966))

(assert (= (and b!690727 ((_ is Union!1831) (_1!4330 (_1!4331 (h!12843 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))))) b!690967))

(declare-fun tp!207775 () Bool)

(declare-fun e!434548 () Bool)

(declare-fun tp!207773 () Bool)

(declare-fun b!690968 () Bool)

(declare-fun setRes!3745 () Bool)

(declare-fun e!434549 () Bool)

(assert (=> b!690968 (= e!434549 (and tp!207773 (inv!9543 (_2!4330 (_1!4331 (h!12843 (t!87272 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))))) e!434548 tp_is_empty!3643 setRes!3745 tp!207775))))

(declare-fun condSetEmpty!3745 () Bool)

(assert (=> b!690968 (= condSetEmpty!3745 (= (_2!4331 (h!12843 (t!87272 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))) ((as const (Array Context!482 Bool)) false)))))

(assert (=> b!690727 (= tp!207578 e!434549)))

(declare-fun b!690969 () Bool)

(declare-fun tp!207772 () Bool)

(assert (=> b!690969 (= e!434548 tp!207772)))

(declare-fun setIsEmpty!3745 () Bool)

(assert (=> setIsEmpty!3745 setRes!3745))

(declare-fun e!434547 () Bool)

(declare-fun setElem!3745 () Context!482)

(declare-fun setNonEmpty!3745 () Bool)

(declare-fun tp!207774 () Bool)

(assert (=> setNonEmpty!3745 (= setRes!3745 (and tp!207774 (inv!9543 setElem!3745) e!434547))))

(declare-fun setRest!3745 () (InoxSet Context!482))

(assert (=> setNonEmpty!3745 (= (_2!4331 (h!12843 (t!87272 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3745 true) setRest!3745))))

(declare-fun b!690970 () Bool)

(declare-fun tp!207771 () Bool)

(assert (=> b!690970 (= e!434547 tp!207771)))

(assert (= b!690968 b!690969))

(assert (= (and b!690968 condSetEmpty!3745) setIsEmpty!3745))

(assert (= (and b!690968 (not condSetEmpty!3745)) setNonEmpty!3745))

(assert (= setNonEmpty!3745 b!690970))

(assert (= (and b!690727 ((_ is Cons!7442) (t!87272 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))) b!690968))

(declare-fun m!947194 () Bool)

(assert (=> b!690968 m!947194))

(declare-fun m!947196 () Bool)

(assert (=> setNonEmpty!3745 m!947196))

(declare-fun b!690971 () Bool)

(declare-fun e!434550 () Bool)

(assert (=> b!690971 (= e!434550 tp_is_empty!3643)))

(declare-fun b!690972 () Bool)

(declare-fun tp!207779 () Bool)

(declare-fun tp!207777 () Bool)

(assert (=> b!690972 (= e!434550 (and tp!207779 tp!207777))))

(declare-fun b!690974 () Bool)

(declare-fun tp!207778 () Bool)

(declare-fun tp!207780 () Bool)

(assert (=> b!690974 (= e!434550 (and tp!207778 tp!207780))))

(declare-fun b!690973 () Bool)

(declare-fun tp!207776 () Bool)

(assert (=> b!690973 (= e!434550 tp!207776)))

(assert (=> b!690646 (= tp!207466 e!434550)))

(assert (= (and b!690646 ((_ is ElementMatch!1831) (regex!1493 (h!12845 (t!87274 rules!1357))))) b!690971))

(assert (= (and b!690646 ((_ is Concat!3368) (regex!1493 (h!12845 (t!87274 rules!1357))))) b!690972))

(assert (= (and b!690646 ((_ is Star!1831) (regex!1493 (h!12845 (t!87274 rules!1357))))) b!690973))

(assert (= (and b!690646 ((_ is Union!1831) (regex!1493 (h!12845 (t!87274 rules!1357))))) b!690974))

(declare-fun b!690975 () Bool)

(declare-fun e!434551 () Bool)

(assert (=> b!690975 (= e!434551 tp_is_empty!3643)))

(declare-fun b!690976 () Bool)

(declare-fun tp!207784 () Bool)

(declare-fun tp!207782 () Bool)

(assert (=> b!690976 (= e!434551 (and tp!207784 tp!207782))))

(declare-fun b!690978 () Bool)

(declare-fun tp!207783 () Bool)

(declare-fun tp!207785 () Bool)

(assert (=> b!690978 (= e!434551 (and tp!207783 tp!207785))))

(declare-fun b!690977 () Bool)

(declare-fun tp!207781 () Bool)

(assert (=> b!690977 (= e!434551 tp!207781)))

(assert (=> b!690724 (= tp!207571 e!434551)))

(assert (= (and b!690724 ((_ is ElementMatch!1831) (_1!4330 (_1!4331 (h!12843 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))))) b!690975))

(assert (= (and b!690724 ((_ is Concat!3368) (_1!4330 (_1!4331 (h!12843 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))))) b!690976))

(assert (= (and b!690724 ((_ is Star!1831) (_1!4330 (_1!4331 (h!12843 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))))) b!690977))

(assert (= (and b!690724 ((_ is Union!1831) (_1!4330 (_1!4331 (h!12843 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))))) b!690978))

(declare-fun tp!207790 () Bool)

(declare-fun setRes!3746 () Bool)

(declare-fun e!434553 () Bool)

(declare-fun b!690979 () Bool)

(declare-fun tp!207788 () Bool)

(declare-fun e!434554 () Bool)

(assert (=> b!690979 (= e!434554 (and tp!207788 (inv!9543 (_2!4330 (_1!4331 (h!12843 (t!87272 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))))) e!434553 tp_is_empty!3643 setRes!3746 tp!207790))))

(declare-fun condSetEmpty!3746 () Bool)

(assert (=> b!690979 (= condSetEmpty!3746 (= (_2!4331 (h!12843 (t!87272 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))) ((as const (Array Context!482 Bool)) false)))))

(assert (=> b!690724 (= tp!207573 e!434554)))

(declare-fun b!690980 () Bool)

(declare-fun tp!207787 () Bool)

(assert (=> b!690980 (= e!434553 tp!207787)))

(declare-fun setIsEmpty!3746 () Bool)

(assert (=> setIsEmpty!3746 setRes!3746))

(declare-fun setElem!3746 () Context!482)

(declare-fun tp!207789 () Bool)

(declare-fun e!434552 () Bool)

(declare-fun setNonEmpty!3746 () Bool)

(assert (=> setNonEmpty!3746 (= setRes!3746 (and tp!207789 (inv!9543 setElem!3746) e!434552))))

(declare-fun setRest!3746 () (InoxSet Context!482))

(assert (=> setNonEmpty!3746 (= (_2!4331 (h!12843 (t!87272 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3746 true) setRest!3746))))

(declare-fun b!690981 () Bool)

(declare-fun tp!207786 () Bool)

(assert (=> b!690981 (= e!434552 tp!207786)))

(assert (= b!690979 b!690980))

(assert (= (and b!690979 condSetEmpty!3746) setIsEmpty!3746))

(assert (= (and b!690979 (not condSetEmpty!3746)) setNonEmpty!3746))

(assert (= setNonEmpty!3746 b!690981))

(assert (= (and b!690724 ((_ is Cons!7442) (t!87272 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470))))))))) b!690979))

(declare-fun m!947198 () Bool)

(assert (=> b!690979 m!947198))

(declare-fun m!947200 () Bool)

(assert (=> setNonEmpty!3746 m!947200))

(declare-fun condSetEmpty!3747 () Bool)

(assert (=> setNonEmpty!3698 (= condSetEmpty!3747 (= setRest!3698 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3747 () Bool)

(assert (=> setNonEmpty!3698 (= tp!207511 setRes!3747)))

(declare-fun setIsEmpty!3747 () Bool)

(assert (=> setIsEmpty!3747 setRes!3747))

(declare-fun e!434555 () Bool)

(declare-fun setElem!3747 () Context!482)

(declare-fun tp!207791 () Bool)

(declare-fun setNonEmpty!3747 () Bool)

(assert (=> setNonEmpty!3747 (= setRes!3747 (and tp!207791 (inv!9543 setElem!3747) e!434555))))

(declare-fun setRest!3747 () (InoxSet Context!482))

(assert (=> setNonEmpty!3747 (= setRest!3698 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3747 true) setRest!3747))))

(declare-fun b!690982 () Bool)

(declare-fun tp!207792 () Bool)

(assert (=> b!690982 (= e!434555 tp!207792)))

(assert (= (and setNonEmpty!3698 condSetEmpty!3747) setIsEmpty!3747))

(assert (= (and setNonEmpty!3698 (not condSetEmpty!3747)) setNonEmpty!3747))

(assert (= setNonEmpty!3747 b!690982))

(declare-fun m!947202 () Bool)

(assert (=> setNonEmpty!3747 m!947202))

(declare-fun b!690983 () Bool)

(declare-fun e!434556 () Bool)

(declare-fun setRes!3748 () Bool)

(declare-fun tp!207796 () Bool)

(assert (=> b!690983 (= e!434556 (and setRes!3748 tp!207796))))

(declare-fun condSetEmpty!3749 () Bool)

(declare-fun mapValue!3062 () List!7455)

(assert (=> b!690983 (= condSetEmpty!3749 (= (_1!4328 (_1!4329 (h!12842 mapValue!3062))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setNonEmpty!3748 () Bool)

(declare-fun setElem!3749 () Context!482)

(declare-fun setRes!3749 () Bool)

(declare-fun e!434558 () Bool)

(declare-fun tp!207795 () Bool)

(assert (=> setNonEmpty!3748 (= setRes!3749 (and tp!207795 (inv!9543 setElem!3749) e!434558))))

(declare-fun mapDefault!3062 () List!7455)

(declare-fun setRest!3749 () (InoxSet Context!482))

(assert (=> setNonEmpty!3748 (= (_1!4328 (_1!4329 (h!12842 mapDefault!3062))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3749 true) setRest!3749))))

(declare-fun mapNonEmpty!3062 () Bool)

(declare-fun mapRes!3062 () Bool)

(declare-fun tp!207799 () Bool)

(assert (=> mapNonEmpty!3062 (= mapRes!3062 (and tp!207799 e!434556))))

(declare-fun mapKey!3062 () (_ BitVec 32))

(declare-fun mapRest!3062 () (Array (_ BitVec 32) List!7455))

(assert (=> mapNonEmpty!3062 (= mapRest!3061 (store mapRest!3062 mapKey!3062 mapValue!3062))))

(declare-fun setNonEmpty!3749 () Bool)

(declare-fun setElem!3748 () Context!482)

(declare-fun e!434559 () Bool)

(declare-fun tp!207794 () Bool)

(assert (=> setNonEmpty!3749 (= setRes!3748 (and tp!207794 (inv!9543 setElem!3748) e!434559))))

(declare-fun setRest!3748 () (InoxSet Context!482))

(assert (=> setNonEmpty!3749 (= (_1!4328 (_1!4329 (h!12842 mapValue!3062))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3748 true) setRest!3748))))

(declare-fun b!690984 () Bool)

(declare-fun tp!207793 () Bool)

(assert (=> b!690984 (= e!434558 tp!207793)))

(declare-fun condMapEmpty!3062 () Bool)

(assert (=> mapNonEmpty!3061 (= condMapEmpty!3062 (= mapRest!3061 ((as const (Array (_ BitVec 32) List!7455)) mapDefault!3062)))))

(declare-fun e!434557 () Bool)

(assert (=> mapNonEmpty!3061 (= tp!207639 (and e!434557 mapRes!3062))))

(declare-fun setIsEmpty!3748 () Bool)

(assert (=> setIsEmpty!3748 setRes!3749))

(declare-fun b!690985 () Bool)

(declare-fun tp!207797 () Bool)

(assert (=> b!690985 (= e!434559 tp!207797)))

(declare-fun b!690986 () Bool)

(declare-fun tp!207798 () Bool)

(assert (=> b!690986 (= e!434557 (and setRes!3749 tp!207798))))

(declare-fun condSetEmpty!3748 () Bool)

(assert (=> b!690986 (= condSetEmpty!3748 (= (_1!4328 (_1!4329 (h!12842 mapDefault!3062))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setIsEmpty!3749 () Bool)

(assert (=> setIsEmpty!3749 setRes!3748))

(declare-fun mapIsEmpty!3062 () Bool)

(assert (=> mapIsEmpty!3062 mapRes!3062))

(assert (= (and mapNonEmpty!3061 condMapEmpty!3062) mapIsEmpty!3062))

(assert (= (and mapNonEmpty!3061 (not condMapEmpty!3062)) mapNonEmpty!3062))

(assert (= (and b!690983 condSetEmpty!3749) setIsEmpty!3749))

(assert (= (and b!690983 (not condSetEmpty!3749)) setNonEmpty!3749))

(assert (= setNonEmpty!3749 b!690985))

(assert (= (and mapNonEmpty!3062 ((_ is Cons!7441) mapValue!3062)) b!690983))

(assert (= (and b!690986 condSetEmpty!3748) setIsEmpty!3748))

(assert (= (and b!690986 (not condSetEmpty!3748)) setNonEmpty!3748))

(assert (= setNonEmpty!3748 b!690984))

(assert (= (and mapNonEmpty!3061 ((_ is Cons!7441) mapDefault!3062)) b!690986))

(declare-fun m!947204 () Bool)

(assert (=> setNonEmpty!3748 m!947204))

(declare-fun m!947206 () Bool)

(assert (=> mapNonEmpty!3062 m!947206))

(declare-fun m!947208 () Bool)

(assert (=> setNonEmpty!3749 m!947208))

(declare-fun b!690987 () Bool)

(declare-fun e!434562 () Bool)

(declare-fun tp!207801 () Bool)

(assert (=> b!690987 (= e!434562 tp!207801)))

(declare-fun setRes!3750 () Bool)

(declare-fun setElem!3750 () Context!482)

(declare-fun tp!207803 () Bool)

(declare-fun setNonEmpty!3750 () Bool)

(assert (=> setNonEmpty!3750 (= setRes!3750 (and tp!207803 (inv!9543 setElem!3750) e!434562))))

(declare-fun setRest!3750 () (InoxSet Context!482))

(assert (=> setNonEmpty!3750 (= (_2!4327 (h!12840 (t!87269 (zeroValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3750 true) setRest!3750))))

(declare-fun e!434560 () Bool)

(assert (=> b!690759 (= tp!207613 e!434560)))

(declare-fun b!690988 () Bool)

(declare-fun e!434561 () Bool)

(declare-fun tp!207800 () Bool)

(assert (=> b!690988 (= e!434561 tp!207800)))

(declare-fun setIsEmpty!3750 () Bool)

(assert (=> setIsEmpty!3750 setRes!3750))

(declare-fun b!690989 () Bool)

(declare-fun tp!207802 () Bool)

(assert (=> b!690989 (= e!434560 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 (t!87269 (zeroValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))))))) e!434561 tp_is_empty!3643 setRes!3750 tp!207802))))

(declare-fun condSetEmpty!3750 () Bool)

(assert (=> b!690989 (= condSetEmpty!3750 (= (_2!4327 (h!12840 (t!87269 (zeroValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))))) ((as const (Array Context!482 Bool)) false)))))

(assert (= b!690989 b!690988))

(assert (= (and b!690989 condSetEmpty!3750) setIsEmpty!3750))

(assert (= (and b!690989 (not condSetEmpty!3750)) setNonEmpty!3750))

(assert (= setNonEmpty!3750 b!690987))

(assert (= (and b!690759 ((_ is Cons!7439) (t!87269 (zeroValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457))))))))) b!690989))

(declare-fun m!947210 () Bool)

(assert (=> setNonEmpty!3750 m!947210))

(declare-fun m!947212 () Bool)

(assert (=> b!690989 m!947212))

(declare-fun b!690990 () Bool)

(declare-fun e!434563 () Bool)

(assert (=> b!690990 (= e!434563 tp_is_empty!3643)))

(declare-fun b!690991 () Bool)

(declare-fun tp!207807 () Bool)

(declare-fun tp!207805 () Bool)

(assert (=> b!690991 (= e!434563 (and tp!207807 tp!207805))))

(declare-fun b!690993 () Bool)

(declare-fun tp!207806 () Bool)

(declare-fun tp!207808 () Bool)

(assert (=> b!690993 (= e!434563 (and tp!207806 tp!207808))))

(declare-fun b!690992 () Bool)

(declare-fun tp!207804 () Bool)

(assert (=> b!690992 (= e!434563 tp!207804)))

(assert (=> b!690709 (= tp!207551 e!434563)))

(assert (= (and b!690709 ((_ is ElementMatch!1831) (_1!4330 (_1!4331 (h!12843 mapValue!3058))))) b!690990))

(assert (= (and b!690709 ((_ is Concat!3368) (_1!4330 (_1!4331 (h!12843 mapValue!3058))))) b!690991))

(assert (= (and b!690709 ((_ is Star!1831) (_1!4330 (_1!4331 (h!12843 mapValue!3058))))) b!690992))

(assert (= (and b!690709 ((_ is Union!1831) (_1!4330 (_1!4331 (h!12843 mapValue!3058))))) b!690993))

(declare-fun e!434566 () Bool)

(declare-fun e!434565 () Bool)

(declare-fun tp!207811 () Bool)

(declare-fun tp!207813 () Bool)

(declare-fun setRes!3751 () Bool)

(declare-fun b!690994 () Bool)

(assert (=> b!690994 (= e!434566 (and tp!207811 (inv!9543 (_2!4330 (_1!4331 (h!12843 (t!87272 mapValue!3058))))) e!434565 tp_is_empty!3643 setRes!3751 tp!207813))))

(declare-fun condSetEmpty!3751 () Bool)

(assert (=> b!690994 (= condSetEmpty!3751 (= (_2!4331 (h!12843 (t!87272 mapValue!3058))) ((as const (Array Context!482 Bool)) false)))))

(assert (=> b!690709 (= tp!207545 e!434566)))

(declare-fun b!690995 () Bool)

(declare-fun tp!207810 () Bool)

(assert (=> b!690995 (= e!434565 tp!207810)))

(declare-fun setIsEmpty!3751 () Bool)

(assert (=> setIsEmpty!3751 setRes!3751))

(declare-fun tp!207812 () Bool)

(declare-fun e!434564 () Bool)

(declare-fun setNonEmpty!3751 () Bool)

(declare-fun setElem!3751 () Context!482)

(assert (=> setNonEmpty!3751 (= setRes!3751 (and tp!207812 (inv!9543 setElem!3751) e!434564))))

(declare-fun setRest!3751 () (InoxSet Context!482))

(assert (=> setNonEmpty!3751 (= (_2!4331 (h!12843 (t!87272 mapValue!3058))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3751 true) setRest!3751))))

(declare-fun b!690996 () Bool)

(declare-fun tp!207809 () Bool)

(assert (=> b!690996 (= e!434564 tp!207809)))

(assert (= b!690994 b!690995))

(assert (= (and b!690994 condSetEmpty!3751) setIsEmpty!3751))

(assert (= (and b!690994 (not condSetEmpty!3751)) setNonEmpty!3751))

(assert (= setNonEmpty!3751 b!690996))

(assert (= (and b!690709 ((_ is Cons!7442) (t!87272 mapValue!3058))) b!690994))

(declare-fun m!947214 () Bool)

(assert (=> b!690994 m!947214))

(declare-fun m!947216 () Bool)

(assert (=> setNonEmpty!3751 m!947216))

(declare-fun b!690997 () Bool)

(declare-fun e!434567 () Bool)

(declare-fun tp!207814 () Bool)

(declare-fun tp!207815 () Bool)

(assert (=> b!690997 (= e!434567 (and tp!207814 tp!207815))))

(assert (=> b!690678 (= tp!207503 e!434567)))

(assert (= (and b!690678 ((_ is Cons!7438) (exprs!741 setElem!3697))) b!690997))

(declare-fun b!690998 () Bool)

(declare-fun e!434569 () Bool)

(declare-fun setRes!3752 () Bool)

(declare-fun tp!207817 () Bool)

(assert (=> b!690998 (= e!434569 (and setRes!3752 tp!207817))))

(declare-fun condSetEmpty!3752 () Bool)

(assert (=> b!690998 (= condSetEmpty!3752 (= (_1!4328 (_1!4329 (h!12842 (t!87271 mapValue!3052)))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setIsEmpty!3752 () Bool)

(assert (=> setIsEmpty!3752 setRes!3752))

(declare-fun e!434568 () Bool)

(declare-fun setElem!3752 () Context!482)

(declare-fun tp!207816 () Bool)

(declare-fun setNonEmpty!3752 () Bool)

(assert (=> setNonEmpty!3752 (= setRes!3752 (and tp!207816 (inv!9543 setElem!3752) e!434568))))

(declare-fun setRest!3752 () (InoxSet Context!482))

(assert (=> setNonEmpty!3752 (= (_1!4328 (_1!4329 (h!12842 (t!87271 mapValue!3052)))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3752 true) setRest!3752))))

(assert (=> b!690777 (= tp!207641 e!434569)))

(declare-fun b!690999 () Bool)

(declare-fun tp!207818 () Bool)

(assert (=> b!690999 (= e!434568 tp!207818)))

(assert (= (and b!690998 condSetEmpty!3752) setIsEmpty!3752))

(assert (= (and b!690998 (not condSetEmpty!3752)) setNonEmpty!3752))

(assert (= setNonEmpty!3752 b!690999))

(assert (= (and b!690777 ((_ is Cons!7441) (t!87271 mapValue!3052))) b!690998))

(declare-fun m!947218 () Bool)

(assert (=> setNonEmpty!3752 m!947218))

(declare-fun b!691000 () Bool)

(declare-fun e!434570 () Bool)

(declare-fun tp!207819 () Bool)

(declare-fun tp!207820 () Bool)

(assert (=> b!691000 (= e!434570 (and tp!207819 tp!207820))))

(assert (=> b!690774 (= tp!207633 e!434570)))

(assert (= (and b!690774 ((_ is Cons!7438) (exprs!741 setElem!3722))) b!691000))

(declare-fun b!691001 () Bool)

(declare-fun e!434573 () Bool)

(declare-fun tp!207822 () Bool)

(assert (=> b!691001 (= e!434573 tp!207822)))

(declare-fun setNonEmpty!3753 () Bool)

(declare-fun tp!207824 () Bool)

(declare-fun setElem!3753 () Context!482)

(declare-fun setRes!3753 () Bool)

(assert (=> setNonEmpty!3753 (= setRes!3753 (and tp!207824 (inv!9543 setElem!3753) e!434573))))

(declare-fun setRest!3753 () (InoxSet Context!482))

(assert (=> setNonEmpty!3753 (= (_2!4327 (h!12840 (t!87269 mapDefault!3055))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3753 true) setRest!3753))))

(declare-fun e!434571 () Bool)

(assert (=> b!690675 (= tp!207502 e!434571)))

(declare-fun b!691002 () Bool)

(declare-fun e!434572 () Bool)

(declare-fun tp!207821 () Bool)

(assert (=> b!691002 (= e!434572 tp!207821)))

(declare-fun setIsEmpty!3753 () Bool)

(assert (=> setIsEmpty!3753 setRes!3753))

(declare-fun tp!207823 () Bool)

(declare-fun b!691003 () Bool)

(assert (=> b!691003 (= e!434571 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 (t!87269 mapDefault!3055))))) e!434572 tp_is_empty!3643 setRes!3753 tp!207823))))

(declare-fun condSetEmpty!3753 () Bool)

(assert (=> b!691003 (= condSetEmpty!3753 (= (_2!4327 (h!12840 (t!87269 mapDefault!3055))) ((as const (Array Context!482 Bool)) false)))))

(assert (= b!691003 b!691002))

(assert (= (and b!691003 condSetEmpty!3753) setIsEmpty!3753))

(assert (= (and b!691003 (not condSetEmpty!3753)) setNonEmpty!3753))

(assert (= setNonEmpty!3753 b!691001))

(assert (= (and b!690675 ((_ is Cons!7439) (t!87269 mapDefault!3055))) b!691003))

(declare-fun m!947220 () Bool)

(assert (=> setNonEmpty!3753 m!947220))

(declare-fun m!947222 () Bool)

(assert (=> b!691003 m!947222))

(declare-fun b!691004 () Bool)

(declare-fun e!434574 () Bool)

(declare-fun tp!207825 () Bool)

(declare-fun tp!207826 () Bool)

(assert (=> b!691004 (= e!434574 (and tp!207825 tp!207826))))

(assert (=> b!690737 (= tp!207587 e!434574)))

(assert (= (and b!690737 ((_ is Cons!7438) (exprs!741 setElem!3712))) b!691004))

(declare-fun b!691005 () Bool)

(declare-fun e!434575 () Bool)

(declare-fun tp!207827 () Bool)

(assert (=> b!691005 (= e!434575 (and tp_is_empty!3643 tp!207827))))

(assert (=> b!690781 (= tp!207644 e!434575)))

(assert (= (and b!690781 ((_ is Cons!7440) (innerList!2686 (xs!5279 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))))) b!691005))

(declare-fun b!691006 () Bool)

(declare-fun e!434577 () Bool)

(declare-fun setRes!3754 () Bool)

(declare-fun tp!207829 () Bool)

(assert (=> b!691006 (= e!434577 (and setRes!3754 tp!207829))))

(declare-fun condSetEmpty!3754 () Bool)

(assert (=> b!691006 (= condSetEmpty!3754 (= (_1!4328 (_1!4329 (h!12842 (t!87271 mapValue!3061)))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setIsEmpty!3754 () Bool)

(assert (=> setIsEmpty!3754 setRes!3754))

(declare-fun tp!207828 () Bool)

(declare-fun setNonEmpty!3754 () Bool)

(declare-fun e!434576 () Bool)

(declare-fun setElem!3754 () Context!482)

(assert (=> setNonEmpty!3754 (= setRes!3754 (and tp!207828 (inv!9543 setElem!3754) e!434576))))

(declare-fun setRest!3754 () (InoxSet Context!482))

(assert (=> setNonEmpty!3754 (= (_1!4328 (_1!4329 (h!12842 (t!87271 mapValue!3061)))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3754 true) setRest!3754))))

(assert (=> b!690773 (= tp!207636 e!434577)))

(declare-fun b!691007 () Bool)

(declare-fun tp!207830 () Bool)

(assert (=> b!691007 (= e!434576 tp!207830)))

(assert (= (and b!691006 condSetEmpty!3754) setIsEmpty!3754))

(assert (= (and b!691006 (not condSetEmpty!3754)) setNonEmpty!3754))

(assert (= setNonEmpty!3754 b!691007))

(assert (= (and b!690773 ((_ is Cons!7441) (t!87271 mapValue!3061))) b!691006))

(declare-fun m!947224 () Bool)

(assert (=> setNonEmpty!3754 m!947224))

(declare-fun b!691008 () Bool)

(declare-fun e!434578 () Bool)

(declare-fun tp!207831 () Bool)

(declare-fun tp!207832 () Bool)

(assert (=> b!691008 (= e!434578 (and tp!207831 tp!207832))))

(assert (=> b!690758 (= tp!207611 e!434578)))

(assert (= (and b!690758 ((_ is Cons!7438) (exprs!741 (_1!4326 (_1!4327 (h!12840 (zeroValue!1018 (v!17640 (underlying!1705 (v!17641 (underlying!1706 (cache!1120 cacheUp!457)))))))))))) b!691008))

(declare-fun b!691009 () Bool)

(declare-fun e!434579 () Bool)

(declare-fun tp!207833 () Bool)

(declare-fun tp!207834 () Bool)

(assert (=> b!691009 (= e!434579 (and tp!207833 tp!207834))))

(assert (=> b!690708 (= tp!207547 e!434579)))

(assert (= (and b!690708 ((_ is Cons!7438) (exprs!741 setElem!3703))) b!691009))

(declare-fun b!691010 () Bool)

(declare-fun e!434582 () Bool)

(declare-fun tp!207836 () Bool)

(assert (=> b!691010 (= e!434582 tp!207836)))

(declare-fun setElem!3755 () Context!482)

(declare-fun setNonEmpty!3755 () Bool)

(declare-fun tp!207838 () Bool)

(declare-fun setRes!3755 () Bool)

(assert (=> setNonEmpty!3755 (= setRes!3755 (and tp!207838 (inv!9543 setElem!3755) e!434582))))

(declare-fun setRest!3755 () (InoxSet Context!482))

(assert (=> setNonEmpty!3755 (= (_2!4327 (h!12840 (t!87269 mapValue!3055))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3755 true) setRest!3755))))

(declare-fun e!434580 () Bool)

(assert (=> b!690676 (= tp!207504 e!434580)))

(declare-fun b!691011 () Bool)

(declare-fun e!434581 () Bool)

(declare-fun tp!207835 () Bool)

(assert (=> b!691011 (= e!434581 tp!207835)))

(declare-fun setIsEmpty!3755 () Bool)

(assert (=> setIsEmpty!3755 setRes!3755))

(declare-fun tp!207837 () Bool)

(declare-fun b!691012 () Bool)

(assert (=> b!691012 (= e!434580 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 (t!87269 mapValue!3055))))) e!434581 tp_is_empty!3643 setRes!3755 tp!207837))))

(declare-fun condSetEmpty!3755 () Bool)

(assert (=> b!691012 (= condSetEmpty!3755 (= (_2!4327 (h!12840 (t!87269 mapValue!3055))) ((as const (Array Context!482 Bool)) false)))))

(assert (= b!691012 b!691011))

(assert (= (and b!691012 condSetEmpty!3755) setIsEmpty!3755))

(assert (= (and b!691012 (not condSetEmpty!3755)) setNonEmpty!3755))

(assert (= setNonEmpty!3755 b!691010))

(assert (= (and b!690676 ((_ is Cons!7439) (t!87269 mapValue!3055))) b!691012))

(declare-fun m!947226 () Bool)

(assert (=> setNonEmpty!3755 m!947226))

(declare-fun m!947228 () Bool)

(assert (=> b!691012 m!947228))

(declare-fun condSetEmpty!3756 () Bool)

(assert (=> setNonEmpty!3716 (= condSetEmpty!3756 (= setRest!3716 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3756 () Bool)

(assert (=> setNonEmpty!3716 (= tp!207618 setRes!3756)))

(declare-fun setIsEmpty!3756 () Bool)

(assert (=> setIsEmpty!3756 setRes!3756))

(declare-fun setNonEmpty!3756 () Bool)

(declare-fun e!434583 () Bool)

(declare-fun tp!207839 () Bool)

(declare-fun setElem!3756 () Context!482)

(assert (=> setNonEmpty!3756 (= setRes!3756 (and tp!207839 (inv!9543 setElem!3756) e!434583))))

(declare-fun setRest!3756 () (InoxSet Context!482))

(assert (=> setNonEmpty!3756 (= setRest!3716 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3756 true) setRest!3756))))

(declare-fun b!691013 () Bool)

(declare-fun tp!207840 () Bool)

(assert (=> b!691013 (= e!434583 tp!207840)))

(assert (= (and setNonEmpty!3716 condSetEmpty!3756) setIsEmpty!3756))

(assert (= (and setNonEmpty!3716 (not condSetEmpty!3756)) setNonEmpty!3756))

(assert (= setNonEmpty!3756 b!691013))

(declare-fun m!947230 () Bool)

(assert (=> setNonEmpty!3756 m!947230))

(declare-fun b!691014 () Bool)

(declare-fun e!434584 () Bool)

(declare-fun tp!207841 () Bool)

(declare-fun tp!207842 () Bool)

(assert (=> b!691014 (= e!434584 (and tp!207841 tp!207842))))

(assert (=> b!690757 (= tp!207612 e!434584)))

(assert (= (and b!690757 ((_ is Cons!7438) (exprs!741 setElem!3715))) b!691014))

(declare-fun b!691015 () Bool)

(declare-fun e!434585 () Bool)

(declare-fun tp!207843 () Bool)

(declare-fun tp!207844 () Bool)

(assert (=> b!691015 (= e!434585 (and tp!207843 tp!207844))))

(assert (=> b!690739 (= tp!207590 e!434585)))

(assert (= (and b!690739 ((_ is Cons!7438) (exprs!741 setElem!3713))) b!691015))

(declare-fun setIsEmpty!3757 () Bool)

(declare-fun setRes!3758 () Bool)

(assert (=> setIsEmpty!3757 setRes!3758))

(declare-fun mapNonEmpty!3063 () Bool)

(declare-fun mapRes!3063 () Bool)

(declare-fun tp!207851 () Bool)

(declare-fun e!434590 () Bool)

(assert (=> mapNonEmpty!3063 (= mapRes!3063 (and tp!207851 e!434590))))

(declare-fun mapKey!3063 () (_ BitVec 32))

(declare-fun mapRest!3063 () (Array (_ BitVec 32) List!7453))

(declare-fun mapValue!3063 () List!7453)

(assert (=> mapNonEmpty!3063 (= mapRest!3055 (store mapRest!3063 mapKey!3063 mapValue!3063))))

(declare-fun tp!207846 () Bool)

(declare-fun e!434587 () Bool)

(declare-fun setNonEmpty!3757 () Bool)

(declare-fun setElem!3757 () Context!482)

(assert (=> setNonEmpty!3757 (= setRes!3758 (and tp!207846 (inv!9543 setElem!3757) e!434587))))

(declare-fun setRest!3758 () (InoxSet Context!482))

(assert (=> setNonEmpty!3757 (= (_2!4327 (h!12840 mapValue!3063)) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3757 true) setRest!3758))))

(declare-fun setIsEmpty!3758 () Bool)

(declare-fun setRes!3757 () Bool)

(assert (=> setIsEmpty!3758 setRes!3757))

(declare-fun b!691016 () Bool)

(declare-fun e!434589 () Bool)

(declare-fun tp!207847 () Bool)

(assert (=> b!691016 (= e!434589 tp!207847)))

(declare-fun condMapEmpty!3063 () Bool)

(declare-fun mapDefault!3063 () List!7453)

(assert (=> mapNonEmpty!3055 (= condMapEmpty!3063 (= mapRest!3055 ((as const (Array (_ BitVec 32) List!7453)) mapDefault!3063)))))

(declare-fun e!434588 () Bool)

(assert (=> mapNonEmpty!3055 (= tp!207505 (and e!434588 mapRes!3063))))

(declare-fun mapIsEmpty!3063 () Bool)

(assert (=> mapIsEmpty!3063 mapRes!3063))

(declare-fun b!691017 () Bool)

(declare-fun e!434586 () Bool)

(declare-fun tp!207845 () Bool)

(assert (=> b!691017 (= e!434586 tp!207845)))

(declare-fun b!691018 () Bool)

(declare-fun tp!207848 () Bool)

(assert (=> b!691018 (= e!434588 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 mapDefault!3063)))) e!434589 tp_is_empty!3643 setRes!3757 tp!207848))))

(declare-fun condSetEmpty!3757 () Bool)

(assert (=> b!691018 (= condSetEmpty!3757 (= (_2!4327 (h!12840 mapDefault!3063)) ((as const (Array Context!482 Bool)) false)))))

(declare-fun tp!207852 () Bool)

(declare-fun e!434591 () Bool)

(declare-fun setElem!3758 () Context!482)

(declare-fun setNonEmpty!3758 () Bool)

(assert (=> setNonEmpty!3758 (= setRes!3757 (and tp!207852 (inv!9543 setElem!3758) e!434591))))

(declare-fun setRest!3757 () (InoxSet Context!482))

(assert (=> setNonEmpty!3758 (= (_2!4327 (h!12840 mapDefault!3063)) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3758 true) setRest!3757))))

(declare-fun tp!207850 () Bool)

(declare-fun b!691019 () Bool)

(assert (=> b!691019 (= e!434590 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 mapValue!3063)))) e!434586 tp_is_empty!3643 setRes!3758 tp!207850))))

(declare-fun condSetEmpty!3758 () Bool)

(assert (=> b!691019 (= condSetEmpty!3758 (= (_2!4327 (h!12840 mapValue!3063)) ((as const (Array Context!482 Bool)) false)))))

(declare-fun b!691020 () Bool)

(declare-fun tp!207853 () Bool)

(assert (=> b!691020 (= e!434587 tp!207853)))

(declare-fun b!691021 () Bool)

(declare-fun tp!207849 () Bool)

(assert (=> b!691021 (= e!434591 tp!207849)))

(assert (= (and mapNonEmpty!3055 condMapEmpty!3063) mapIsEmpty!3063))

(assert (= (and mapNonEmpty!3055 (not condMapEmpty!3063)) mapNonEmpty!3063))

(assert (= b!691019 b!691017))

(assert (= (and b!691019 condSetEmpty!3758) setIsEmpty!3757))

(assert (= (and b!691019 (not condSetEmpty!3758)) setNonEmpty!3757))

(assert (= setNonEmpty!3757 b!691020))

(assert (= (and mapNonEmpty!3063 ((_ is Cons!7439) mapValue!3063)) b!691019))

(assert (= b!691018 b!691016))

(assert (= (and b!691018 condSetEmpty!3757) setIsEmpty!3758))

(assert (= (and b!691018 (not condSetEmpty!3757)) setNonEmpty!3758))

(assert (= setNonEmpty!3758 b!691021))

(assert (= (and mapNonEmpty!3055 ((_ is Cons!7439) mapDefault!3063)) b!691018))

(declare-fun m!947232 () Bool)

(assert (=> setNonEmpty!3758 m!947232))

(declare-fun m!947234 () Bool)

(assert (=> setNonEmpty!3757 m!947234))

(declare-fun m!947236 () Bool)

(assert (=> b!691019 m!947236))

(declare-fun m!947238 () Bool)

(assert (=> b!691018 m!947238))

(declare-fun m!947240 () Bool)

(assert (=> mapNonEmpty!3063 m!947240))

(declare-fun condSetEmpty!3759 () Bool)

(assert (=> setNonEmpty!3708 (= condSetEmpty!3759 (= setRest!3708 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3759 () Bool)

(assert (=> setNonEmpty!3708 (= tp!207572 setRes!3759)))

(declare-fun setIsEmpty!3759 () Bool)

(assert (=> setIsEmpty!3759 setRes!3759))

(declare-fun setNonEmpty!3759 () Bool)

(declare-fun tp!207854 () Bool)

(declare-fun setElem!3759 () Context!482)

(declare-fun e!434592 () Bool)

(assert (=> setNonEmpty!3759 (= setRes!3759 (and tp!207854 (inv!9543 setElem!3759) e!434592))))

(declare-fun setRest!3759 () (InoxSet Context!482))

(assert (=> setNonEmpty!3759 (= setRest!3708 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3759 true) setRest!3759))))

(declare-fun b!691022 () Bool)

(declare-fun tp!207855 () Bool)

(assert (=> b!691022 (= e!434592 tp!207855)))

(assert (= (and setNonEmpty!3708 condSetEmpty!3759) setIsEmpty!3759))

(assert (= (and setNonEmpty!3708 (not condSetEmpty!3759)) setNonEmpty!3759))

(assert (= setNonEmpty!3759 b!691022))

(declare-fun m!947242 () Bool)

(assert (=> setNonEmpty!3759 m!947242))

(declare-fun condSetEmpty!3760 () Bool)

(assert (=> setNonEmpty!3707 (= condSetEmpty!3760 (= setRest!3707 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3760 () Bool)

(assert (=> setNonEmpty!3707 (= tp!207567 setRes!3760)))

(declare-fun setIsEmpty!3760 () Bool)

(assert (=> setIsEmpty!3760 setRes!3760))

(declare-fun setNonEmpty!3760 () Bool)

(declare-fun tp!207856 () Bool)

(declare-fun setElem!3760 () Context!482)

(declare-fun e!434593 () Bool)

(assert (=> setNonEmpty!3760 (= setRes!3760 (and tp!207856 (inv!9543 setElem!3760) e!434593))))

(declare-fun setRest!3760 () (InoxSet Context!482))

(assert (=> setNonEmpty!3760 (= setRest!3707 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3760 true) setRest!3760))))

(declare-fun b!691023 () Bool)

(declare-fun tp!207857 () Bool)

(assert (=> b!691023 (= e!434593 tp!207857)))

(assert (= (and setNonEmpty!3707 condSetEmpty!3760) setIsEmpty!3760))

(assert (= (and setNonEmpty!3707 (not condSetEmpty!3760)) setNonEmpty!3760))

(assert (= setNonEmpty!3760 b!691023))

(declare-fun m!947244 () Bool)

(assert (=> setNonEmpty!3760 m!947244))

(declare-fun condSetEmpty!3761 () Bool)

(assert (=> setNonEmpty!3709 (= condSetEmpty!3761 (= setRest!3709 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3761 () Bool)

(assert (=> setNonEmpty!3709 (= tp!207577 setRes!3761)))

(declare-fun setIsEmpty!3761 () Bool)

(assert (=> setIsEmpty!3761 setRes!3761))

(declare-fun setElem!3761 () Context!482)

(declare-fun setNonEmpty!3761 () Bool)

(declare-fun e!434594 () Bool)

(declare-fun tp!207858 () Bool)

(assert (=> setNonEmpty!3761 (= setRes!3761 (and tp!207858 (inv!9543 setElem!3761) e!434594))))

(declare-fun setRest!3761 () (InoxSet Context!482))

(assert (=> setNonEmpty!3761 (= setRest!3709 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3761 true) setRest!3761))))

(declare-fun b!691024 () Bool)

(declare-fun tp!207859 () Bool)

(assert (=> b!691024 (= e!434594 tp!207859)))

(assert (= (and setNonEmpty!3709 condSetEmpty!3761) setIsEmpty!3761))

(assert (= (and setNonEmpty!3709 (not condSetEmpty!3761)) setNonEmpty!3761))

(assert (= setNonEmpty!3761 b!691024))

(declare-fun m!947246 () Bool)

(assert (=> setNonEmpty!3761 m!947246))

(declare-fun b!691025 () Bool)

(declare-fun e!434595 () Bool)

(declare-fun tp!207860 () Bool)

(declare-fun tp!207861 () Bool)

(assert (=> b!691025 (= e!434595 (and tp!207860 tp!207861))))

(assert (=> b!690783 (= tp!207648 e!434595)))

(assert (= (and b!690783 ((_ is Cons!7438) (exprs!741 setElem!3724))) b!691025))

(declare-fun condSetEmpty!3762 () Bool)

(assert (=> setNonEmpty!3691 (= condSetEmpty!3762 (= setRest!3691 ((as const (Array Context!482 Bool)) false)))))

(declare-fun setRes!3762 () Bool)

(assert (=> setNonEmpty!3691 (= tp!207480 setRes!3762)))

(declare-fun setIsEmpty!3762 () Bool)

(assert (=> setIsEmpty!3762 setRes!3762))

(declare-fun e!434596 () Bool)

(declare-fun tp!207862 () Bool)

(declare-fun setNonEmpty!3762 () Bool)

(declare-fun setElem!3762 () Context!482)

(assert (=> setNonEmpty!3762 (= setRes!3762 (and tp!207862 (inv!9543 setElem!3762) e!434596))))

(declare-fun setRest!3762 () (InoxSet Context!482))

(assert (=> setNonEmpty!3762 (= setRest!3691 ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3762 true) setRest!3762))))

(declare-fun b!691026 () Bool)

(declare-fun tp!207863 () Bool)

(assert (=> b!691026 (= e!434596 tp!207863)))

(assert (= (and setNonEmpty!3691 condSetEmpty!3762) setIsEmpty!3762))

(assert (= (and setNonEmpty!3691 (not condSetEmpty!3762)) setNonEmpty!3762))

(assert (= setNonEmpty!3762 b!691026))

(declare-fun m!947248 () Bool)

(assert (=> setNonEmpty!3762 m!947248))

(declare-fun b!691027 () Bool)

(declare-fun tp!207864 () Bool)

(declare-fun e!434598 () Bool)

(declare-fun tp!207866 () Bool)

(assert (=> b!691027 (= e!434598 (and (inv!9535 (left!5974 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) tp!207864 (inv!9535 (right!6304 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) tp!207866))))

(declare-fun b!691029 () Bool)

(declare-fun e!434597 () Bool)

(declare-fun tp!207865 () Bool)

(assert (=> b!691029 (= e!434597 tp!207865)))

(declare-fun b!691028 () Bool)

(assert (=> b!691028 (= e!434598 (and (inv!9544 (xs!5279 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) e!434597))))

(assert (=> b!690779 (= tp!207643 (and (inv!9535 (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) e!434598))))

(assert (= (and b!690779 ((_ is Node!2628) (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) b!691027))

(assert (= b!691028 b!691029))

(assert (= (and b!690779 ((_ is Leaf!3897) (left!5974 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) b!691028))

(declare-fun m!947250 () Bool)

(assert (=> b!691027 m!947250))

(declare-fun m!947252 () Bool)

(assert (=> b!691027 m!947252))

(declare-fun m!947254 () Bool)

(assert (=> b!691028 m!947254))

(assert (=> b!690779 m!946959))

(declare-fun tp!207867 () Bool)

(declare-fun b!691030 () Bool)

(declare-fun tp!207869 () Bool)

(declare-fun e!434600 () Bool)

(assert (=> b!691030 (= e!434600 (and (inv!9535 (left!5974 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) tp!207867 (inv!9535 (right!6304 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) tp!207869))))

(declare-fun b!691032 () Bool)

(declare-fun e!434599 () Bool)

(declare-fun tp!207868 () Bool)

(assert (=> b!691032 (= e!434599 tp!207868)))

(declare-fun b!691031 () Bool)

(assert (=> b!691031 (= e!434600 (and (inv!9544 (xs!5279 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) e!434599))))

(assert (=> b!690779 (= tp!207645 (and (inv!9535 (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59)))) e!434600))))

(assert (= (and b!690779 ((_ is Node!2628) (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) b!691030))

(assert (= b!691031 b!691032))

(assert (= (and b!690779 ((_ is Leaf!3897) (right!6304 (c!121540 (totalInput!1797 cacheFindLongestMatch!59))))) b!691031))

(declare-fun m!947256 () Bool)

(assert (=> b!691030 m!947256))

(declare-fun m!947258 () Bool)

(assert (=> b!691030 m!947258))

(declare-fun m!947260 () Bool)

(assert (=> b!691031 m!947260))

(assert (=> b!690779 m!946961))

(declare-fun b!691033 () Bool)

(declare-fun e!434602 () Bool)

(declare-fun setRes!3763 () Bool)

(declare-fun tp!207871 () Bool)

(assert (=> b!691033 (= e!434602 (and setRes!3763 tp!207871))))

(declare-fun condSetEmpty!3763 () Bool)

(assert (=> b!691033 (= condSetEmpty!3763 (= (_1!4328 (_1!4329 (h!12842 (t!87271 mapDefault!3061)))) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setIsEmpty!3763 () Bool)

(assert (=> setIsEmpty!3763 setRes!3763))

(declare-fun setElem!3763 () Context!482)

(declare-fun setNonEmpty!3763 () Bool)

(declare-fun tp!207870 () Bool)

(declare-fun e!434601 () Bool)

(assert (=> setNonEmpty!3763 (= setRes!3763 (and tp!207870 (inv!9543 setElem!3763) e!434601))))

(declare-fun setRest!3763 () (InoxSet Context!482))

(assert (=> setNonEmpty!3763 (= (_1!4328 (_1!4329 (h!12842 (t!87271 mapDefault!3061)))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3763 true) setRest!3763))))

(assert (=> b!690776 (= tp!207638 e!434602)))

(declare-fun b!691034 () Bool)

(declare-fun tp!207872 () Bool)

(assert (=> b!691034 (= e!434601 tp!207872)))

(assert (= (and b!691033 condSetEmpty!3763) setIsEmpty!3763))

(assert (= (and b!691033 (not condSetEmpty!3763)) setNonEmpty!3763))

(assert (= setNonEmpty!3763 b!691034))

(assert (= (and b!690776 ((_ is Cons!7441) (t!87271 mapDefault!3061))) b!691033))

(declare-fun m!947262 () Bool)

(assert (=> setNonEmpty!3763 m!947262))

(declare-fun b!691035 () Bool)

(declare-fun e!434606 () Bool)

(declare-fun tp!207878 () Bool)

(assert (=> b!691035 (= e!434606 tp!207878)))

(declare-fun b!691036 () Bool)

(declare-fun e!434608 () Bool)

(declare-fun tp!207877 () Bool)

(assert (=> b!691036 (= e!434608 tp!207877)))

(declare-fun setNonEmpty!3764 () Bool)

(declare-fun tp!207874 () Bool)

(declare-fun setElem!3764 () Context!482)

(declare-fun setRes!3765 () Bool)

(assert (=> setNonEmpty!3764 (= setRes!3765 (and tp!207874 (inv!9543 setElem!3764) e!434608))))

(declare-fun mapValue!3064 () List!7456)

(declare-fun setRest!3765 () (InoxSet Context!482))

(assert (=> setNonEmpty!3764 (= (_2!4331 (h!12843 mapValue!3064)) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3764 true) setRest!3765))))

(declare-fun b!691037 () Bool)

(declare-fun e!434604 () Bool)

(declare-fun tp!207881 () Bool)

(declare-fun e!434605 () Bool)

(declare-fun tp!207875 () Bool)

(assert (=> b!691037 (= e!434604 (and tp!207881 (inv!9543 (_2!4330 (_1!4331 (h!12843 mapValue!3064)))) e!434605 tp_is_empty!3643 setRes!3765 tp!207875))))

(declare-fun condSetEmpty!3765 () Bool)

(assert (=> b!691037 (= condSetEmpty!3765 (= (_2!4331 (h!12843 mapValue!3064)) ((as const (Array Context!482 Bool)) false)))))

(declare-fun b!691038 () Bool)

(declare-fun e!434607 () Bool)

(declare-fun tp!207876 () Bool)

(assert (=> b!691038 (= e!434607 tp!207876)))

(declare-fun setIsEmpty!3764 () Bool)

(assert (=> setIsEmpty!3764 setRes!3765))

(declare-fun b!691039 () Bool)

(declare-fun tp!207879 () Bool)

(assert (=> b!691039 (= e!434605 tp!207879)))

(declare-fun mapIsEmpty!3064 () Bool)

(declare-fun mapRes!3064 () Bool)

(assert (=> mapIsEmpty!3064 mapRes!3064))

(declare-fun condMapEmpty!3064 () Bool)

(declare-fun mapDefault!3064 () List!7456)

(assert (=> mapNonEmpty!3058 (= condMapEmpty!3064 (= mapRest!3058 ((as const (Array (_ BitVec 32) List!7456)) mapDefault!3064)))))

(declare-fun e!434603 () Bool)

(assert (=> mapNonEmpty!3058 (= tp!207553 (and e!434603 mapRes!3064))))

(declare-fun mapNonEmpty!3064 () Bool)

(declare-fun tp!207883 () Bool)

(assert (=> mapNonEmpty!3064 (= mapRes!3064 (and tp!207883 e!434604))))

(declare-fun mapRest!3064 () (Array (_ BitVec 32) List!7456))

(declare-fun mapKey!3064 () (_ BitVec 32))

(assert (=> mapNonEmpty!3064 (= mapRest!3058 (store mapRest!3064 mapKey!3064 mapValue!3064))))

(declare-fun setIsEmpty!3765 () Bool)

(declare-fun setRes!3764 () Bool)

(assert (=> setIsEmpty!3765 setRes!3764))

(declare-fun tp!207873 () Bool)

(declare-fun tp!207882 () Bool)

(declare-fun b!691040 () Bool)

(assert (=> b!691040 (= e!434603 (and tp!207882 (inv!9543 (_2!4330 (_1!4331 (h!12843 mapDefault!3064)))) e!434607 tp_is_empty!3643 setRes!3764 tp!207873))))

(declare-fun condSetEmpty!3764 () Bool)

(assert (=> b!691040 (= condSetEmpty!3764 (= (_2!4331 (h!12843 mapDefault!3064)) ((as const (Array Context!482 Bool)) false)))))

(declare-fun setElem!3765 () Context!482)

(declare-fun setNonEmpty!3765 () Bool)

(declare-fun tp!207880 () Bool)

(assert (=> setNonEmpty!3765 (= setRes!3764 (and tp!207880 (inv!9543 setElem!3765) e!434606))))

(declare-fun setRest!3764 () (InoxSet Context!482))

(assert (=> setNonEmpty!3765 (= (_2!4331 (h!12843 mapDefault!3064)) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3765 true) setRest!3764))))

(assert (= (and mapNonEmpty!3058 condMapEmpty!3064) mapIsEmpty!3064))

(assert (= (and mapNonEmpty!3058 (not condMapEmpty!3064)) mapNonEmpty!3064))

(assert (= b!691037 b!691039))

(assert (= (and b!691037 condSetEmpty!3765) setIsEmpty!3764))

(assert (= (and b!691037 (not condSetEmpty!3765)) setNonEmpty!3764))

(assert (= setNonEmpty!3764 b!691036))

(assert (= (and mapNonEmpty!3064 ((_ is Cons!7442) mapValue!3064)) b!691037))

(assert (= b!691040 b!691038))

(assert (= (and b!691040 condSetEmpty!3764) setIsEmpty!3765))

(assert (= (and b!691040 (not condSetEmpty!3764)) setNonEmpty!3765))

(assert (= setNonEmpty!3765 b!691035))

(assert (= (and mapNonEmpty!3058 ((_ is Cons!7442) mapDefault!3064)) b!691040))

(declare-fun m!947264 () Bool)

(assert (=> b!691040 m!947264))

(declare-fun m!947266 () Bool)

(assert (=> b!691037 m!947266))

(declare-fun m!947268 () Bool)

(assert (=> mapNonEmpty!3064 m!947268))

(declare-fun m!947270 () Bool)

(assert (=> setNonEmpty!3764 m!947270))

(declare-fun m!947272 () Bool)

(assert (=> setNonEmpty!3765 m!947272))

(declare-fun b!691041 () Bool)

(declare-fun e!434609 () Bool)

(assert (=> b!691041 (= e!434609 tp_is_empty!3643)))

(declare-fun b!691042 () Bool)

(declare-fun tp!207887 () Bool)

(declare-fun tp!207885 () Bool)

(assert (=> b!691042 (= e!434609 (and tp!207887 tp!207885))))

(declare-fun b!691044 () Bool)

(declare-fun tp!207886 () Bool)

(declare-fun tp!207888 () Bool)

(assert (=> b!691044 (= e!434609 (and tp!207886 tp!207888))))

(declare-fun b!691043 () Bool)

(declare-fun tp!207884 () Bool)

(assert (=> b!691043 (= e!434609 tp!207884)))

(assert (=> b!690756 (= tp!207608 e!434609)))

(assert (= (and b!690756 ((_ is ElementMatch!1831) (regOne!4175 (regex!1493 (h!12845 rules!1357))))) b!691041))

(assert (= (and b!690756 ((_ is Concat!3368) (regOne!4175 (regex!1493 (h!12845 rules!1357))))) b!691042))

(assert (= (and b!690756 ((_ is Star!1831) (regOne!4175 (regex!1493 (h!12845 rules!1357))))) b!691043))

(assert (= (and b!690756 ((_ is Union!1831) (regOne!4175 (regex!1493 (h!12845 rules!1357))))) b!691044))

(declare-fun b!691045 () Bool)

(declare-fun e!434610 () Bool)

(assert (=> b!691045 (= e!434610 tp_is_empty!3643)))

(declare-fun b!691046 () Bool)

(declare-fun tp!207892 () Bool)

(declare-fun tp!207890 () Bool)

(assert (=> b!691046 (= e!434610 (and tp!207892 tp!207890))))

(declare-fun b!691048 () Bool)

(declare-fun tp!207891 () Bool)

(declare-fun tp!207893 () Bool)

(assert (=> b!691048 (= e!434610 (and tp!207891 tp!207893))))

(declare-fun b!691047 () Bool)

(declare-fun tp!207889 () Bool)

(assert (=> b!691047 (= e!434610 tp!207889)))

(assert (=> b!690756 (= tp!207610 e!434610)))

(assert (= (and b!690756 ((_ is ElementMatch!1831) (regTwo!4175 (regex!1493 (h!12845 rules!1357))))) b!691045))

(assert (= (and b!690756 ((_ is Concat!3368) (regTwo!4175 (regex!1493 (h!12845 rules!1357))))) b!691046))

(assert (= (and b!690756 ((_ is Star!1831) (regTwo!4175 (regex!1493 (h!12845 rules!1357))))) b!691047))

(assert (= (and b!690756 ((_ is Union!1831) (regTwo!4175 (regex!1493 (h!12845 rules!1357))))) b!691048))

(declare-fun b!691051 () Bool)

(declare-fun b_free!19549 () Bool)

(declare-fun b_next!19613 () Bool)

(assert (=> b!691051 (= b_free!19549 (not b_next!19613))))

(declare-fun tp!207897 () Bool)

(declare-fun b_and!63343 () Bool)

(assert (=> b!691051 (= tp!207897 b_and!63343)))

(declare-fun b_free!19551 () Bool)

(declare-fun b_next!19615 () Bool)

(assert (=> b!691051 (= b_free!19551 (not b_next!19615))))

(declare-fun tp!207894 () Bool)

(declare-fun b_and!63345 () Bool)

(assert (=> b!691051 (= tp!207894 b_and!63345)))

(declare-fun e!434611 () Bool)

(assert (=> b!691051 (= e!434611 (and tp!207897 tp!207894))))

(declare-fun e!434614 () Bool)

(declare-fun b!691050 () Bool)

(declare-fun tp!207895 () Bool)

(assert (=> b!691050 (= e!434614 (and tp!207895 (inv!9531 (tag!1755 (h!12845 (t!87274 (t!87274 rules!1357))))) (inv!9540 (transformation!1493 (h!12845 (t!87274 (t!87274 rules!1357))))) e!434611))))

(declare-fun b!691049 () Bool)

(declare-fun e!434613 () Bool)

(declare-fun tp!207896 () Bool)

(assert (=> b!691049 (= e!434613 (and e!434614 tp!207896))))

(assert (=> b!690645 (= tp!207467 e!434613)))

(assert (= b!691050 b!691051))

(assert (= b!691049 b!691050))

(assert (= (and b!690645 ((_ is Cons!7444) (t!87274 (t!87274 rules!1357)))) b!691049))

(declare-fun m!947274 () Bool)

(assert (=> b!691050 m!947274))

(declare-fun m!947276 () Bool)

(assert (=> b!691050 m!947276))

(declare-fun b!691052 () Bool)

(declare-fun e!434615 () Bool)

(declare-fun tp!207898 () Bool)

(declare-fun tp!207899 () Bool)

(assert (=> b!691052 (= e!434615 (and tp!207898 tp!207899))))

(assert (=> b!690778 (= tp!207642 e!434615)))

(assert (= (and b!690778 ((_ is Cons!7438) (exprs!741 setElem!3723))) b!691052))

(declare-fun b!691053 () Bool)

(declare-fun e!434618 () Bool)

(declare-fun tp!207901 () Bool)

(assert (=> b!691053 (= e!434618 tp!207901)))

(declare-fun setRes!3766 () Bool)

(declare-fun tp!207903 () Bool)

(declare-fun setNonEmpty!3766 () Bool)

(declare-fun setElem!3766 () Context!482)

(assert (=> setNonEmpty!3766 (= setRes!3766 (and tp!207903 (inv!9543 setElem!3766) e!434618))))

(declare-fun setRest!3766 () (InoxSet Context!482))

(assert (=> setNonEmpty!3766 (= (_2!4327 (h!12840 (t!87269 mapValue!3051))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3766 true) setRest!3766))))

(declare-fun e!434616 () Bool)

(assert (=> b!690681 (= tp!207510 e!434616)))

(declare-fun b!691054 () Bool)

(declare-fun e!434617 () Bool)

(declare-fun tp!207900 () Bool)

(assert (=> b!691054 (= e!434617 tp!207900)))

(declare-fun setIsEmpty!3766 () Bool)

(assert (=> setIsEmpty!3766 setRes!3766))

(declare-fun tp!207902 () Bool)

(declare-fun b!691055 () Bool)

(assert (=> b!691055 (= e!434616 (and (inv!9543 (_1!4326 (_1!4327 (h!12840 (t!87269 mapValue!3051))))) e!434617 tp_is_empty!3643 setRes!3766 tp!207902))))

(declare-fun condSetEmpty!3766 () Bool)

(assert (=> b!691055 (= condSetEmpty!3766 (= (_2!4327 (h!12840 (t!87269 mapValue!3051))) ((as const (Array Context!482 Bool)) false)))))

(assert (= b!691055 b!691054))

(assert (= (and b!691055 condSetEmpty!3766) setIsEmpty!3766))

(assert (= (and b!691055 (not condSetEmpty!3766)) setNonEmpty!3766))

(assert (= setNonEmpty!3766 b!691053))

(assert (= (and b!690681 ((_ is Cons!7439) (t!87269 mapValue!3051))) b!691055))

(declare-fun m!947278 () Bool)

(assert (=> setNonEmpty!3766 m!947278))

(declare-fun m!947280 () Bool)

(assert (=> b!691055 m!947280))

(declare-fun b!691056 () Bool)

(declare-fun e!434619 () Bool)

(assert (=> b!691056 (= e!434619 tp_is_empty!3643)))

(declare-fun b!691057 () Bool)

(declare-fun tp!207907 () Bool)

(declare-fun tp!207905 () Bool)

(assert (=> b!691057 (= e!434619 (and tp!207907 tp!207905))))

(declare-fun b!691059 () Bool)

(declare-fun tp!207906 () Bool)

(declare-fun tp!207908 () Bool)

(assert (=> b!691059 (= e!434619 (and tp!207906 tp!207908))))

(declare-fun b!691058 () Bool)

(declare-fun tp!207904 () Bool)

(assert (=> b!691058 (= e!434619 tp!207904)))

(assert (=> b!690740 (= tp!207593 e!434619)))

(assert (= (and b!690740 ((_ is ElementMatch!1831) (_1!4330 (_1!4331 (h!12843 mapDefault!3052))))) b!691056))

(assert (= (and b!690740 ((_ is Concat!3368) (_1!4330 (_1!4331 (h!12843 mapDefault!3052))))) b!691057))

(assert (= (and b!690740 ((_ is Star!1831) (_1!4330 (_1!4331 (h!12843 mapDefault!3052))))) b!691058))

(assert (= (and b!690740 ((_ is Union!1831) (_1!4330 (_1!4331 (h!12843 mapDefault!3052))))) b!691059))

(declare-fun tp!207911 () Bool)

(declare-fun e!434621 () Bool)

(declare-fun tp!207913 () Bool)

(declare-fun b!691060 () Bool)

(declare-fun setRes!3767 () Bool)

(declare-fun e!434622 () Bool)

(assert (=> b!691060 (= e!434622 (and tp!207911 (inv!9543 (_2!4330 (_1!4331 (h!12843 (t!87272 mapDefault!3052))))) e!434621 tp_is_empty!3643 setRes!3767 tp!207913))))

(declare-fun condSetEmpty!3767 () Bool)

(assert (=> b!691060 (= condSetEmpty!3767 (= (_2!4331 (h!12843 (t!87272 mapDefault!3052))) ((as const (Array Context!482 Bool)) false)))))

(assert (=> b!690740 (= tp!207595 e!434622)))

(declare-fun b!691061 () Bool)

(declare-fun tp!207910 () Bool)

(assert (=> b!691061 (= e!434621 tp!207910)))

(declare-fun setIsEmpty!3767 () Bool)

(assert (=> setIsEmpty!3767 setRes!3767))

(declare-fun setElem!3767 () Context!482)

(declare-fun e!434620 () Bool)

(declare-fun tp!207912 () Bool)

(declare-fun setNonEmpty!3767 () Bool)

(assert (=> setNonEmpty!3767 (= setRes!3767 (and tp!207912 (inv!9543 setElem!3767) e!434620))))

(declare-fun setRest!3767 () (InoxSet Context!482))

(assert (=> setNonEmpty!3767 (= (_2!4331 (h!12843 (t!87272 mapDefault!3052))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3767 true) setRest!3767))))

(declare-fun b!691062 () Bool)

(declare-fun tp!207909 () Bool)

(assert (=> b!691062 (= e!434620 tp!207909)))

(assert (= b!691060 b!691061))

(assert (= (and b!691060 condSetEmpty!3767) setIsEmpty!3767))

(assert (= (and b!691060 (not condSetEmpty!3767)) setNonEmpty!3767))

(assert (= setNonEmpty!3767 b!691062))

(assert (= (and b!690740 ((_ is Cons!7442) (t!87272 mapDefault!3052))) b!691060))

(declare-fun m!947282 () Bool)

(assert (=> b!691060 m!947282))

(declare-fun m!947284 () Bool)

(assert (=> setNonEmpty!3767 m!947284))

(declare-fun b!691063 () Bool)

(declare-fun e!434623 () Bool)

(declare-fun tp!207914 () Bool)

(declare-fun tp!207915 () Bool)

(assert (=> b!691063 (= e!434623 (and tp!207914 tp!207915))))

(assert (=> b!690725 (= tp!207570 e!434623)))

(assert (= (and b!690725 ((_ is Cons!7438) (exprs!741 (_2!4330 (_1!4331 (h!12843 (zeroValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))))))) b!691063))

(declare-fun b!691064 () Bool)

(declare-fun e!434624 () Bool)

(declare-fun tp!207916 () Bool)

(declare-fun tp!207917 () Bool)

(assert (=> b!691064 (= e!434624 (and tp!207916 tp!207917))))

(assert (=> b!690742 (= tp!207591 e!434624)))

(assert (= (and b!690742 ((_ is Cons!7438) (exprs!741 setElem!3714))) b!691064))

(declare-fun b!691065 () Bool)

(declare-fun e!434625 () Bool)

(declare-fun tp!207918 () Bool)

(declare-fun tp!207919 () Bool)

(assert (=> b!691065 (= e!434625 (and tp!207918 tp!207919))))

(assert (=> b!690722 (= tp!207565 e!434625)))

(assert (= (and b!690722 ((_ is Cons!7438) (exprs!741 (_2!4330 (_1!4331 (h!12843 mapValue!3050)))))) b!691065))

(declare-fun b!691066 () Bool)

(declare-fun e!434626 () Bool)

(assert (=> b!691066 (= e!434626 tp_is_empty!3643)))

(declare-fun b!691067 () Bool)

(declare-fun tp!207923 () Bool)

(declare-fun tp!207921 () Bool)

(assert (=> b!691067 (= e!434626 (and tp!207923 tp!207921))))

(declare-fun b!691069 () Bool)

(declare-fun tp!207922 () Bool)

(declare-fun tp!207924 () Bool)

(assert (=> b!691069 (= e!434626 (and tp!207922 tp!207924))))

(declare-fun b!691068 () Bool)

(declare-fun tp!207920 () Bool)

(assert (=> b!691068 (= e!434626 tp!207920)))

(assert (=> b!690712 (= tp!207552 e!434626)))

(assert (= (and b!690712 ((_ is ElementMatch!1831) (_1!4330 (_1!4331 (h!12843 mapDefault!3058))))) b!691066))

(assert (= (and b!690712 ((_ is Concat!3368) (_1!4330 (_1!4331 (h!12843 mapDefault!3058))))) b!691067))

(assert (= (and b!690712 ((_ is Star!1831) (_1!4330 (_1!4331 (h!12843 mapDefault!3058))))) b!691068))

(assert (= (and b!690712 ((_ is Union!1831) (_1!4330 (_1!4331 (h!12843 mapDefault!3058))))) b!691069))

(declare-fun e!434628 () Bool)

(declare-fun tp!207929 () Bool)

(declare-fun tp!207927 () Bool)

(declare-fun e!434629 () Bool)

(declare-fun b!691070 () Bool)

(declare-fun setRes!3768 () Bool)

(assert (=> b!691070 (= e!434629 (and tp!207927 (inv!9543 (_2!4330 (_1!4331 (h!12843 (t!87272 mapDefault!3058))))) e!434628 tp_is_empty!3643 setRes!3768 tp!207929))))

(declare-fun condSetEmpty!3768 () Bool)

(assert (=> b!691070 (= condSetEmpty!3768 (= (_2!4331 (h!12843 (t!87272 mapDefault!3058))) ((as const (Array Context!482 Bool)) false)))))

(assert (=> b!690712 (= tp!207543 e!434629)))

(declare-fun b!691071 () Bool)

(declare-fun tp!207926 () Bool)

(assert (=> b!691071 (= e!434628 tp!207926)))

(declare-fun setIsEmpty!3768 () Bool)

(assert (=> setIsEmpty!3768 setRes!3768))

(declare-fun tp!207928 () Bool)

(declare-fun e!434627 () Bool)

(declare-fun setNonEmpty!3768 () Bool)

(declare-fun setElem!3768 () Context!482)

(assert (=> setNonEmpty!3768 (= setRes!3768 (and tp!207928 (inv!9543 setElem!3768) e!434627))))

(declare-fun setRest!3768 () (InoxSet Context!482))

(assert (=> setNonEmpty!3768 (= (_2!4331 (h!12843 (t!87272 mapDefault!3058))) ((_ map or) (store ((as const (Array Context!482 Bool)) false) setElem!3768 true) setRest!3768))))

(declare-fun b!691072 () Bool)

(declare-fun tp!207925 () Bool)

(assert (=> b!691072 (= e!434627 tp!207925)))

(assert (= b!691070 b!691071))

(assert (= (and b!691070 condSetEmpty!3768) setIsEmpty!3768))

(assert (= (and b!691070 (not condSetEmpty!3768)) setNonEmpty!3768))

(assert (= setNonEmpty!3768 b!691072))

(assert (= (and b!690712 ((_ is Cons!7442) (t!87272 mapDefault!3058))) b!691070))

(declare-fun m!947286 () Bool)

(assert (=> b!691070 m!947286))

(declare-fun m!947288 () Bool)

(assert (=> setNonEmpty!3768 m!947288))

(declare-fun b!691073 () Bool)

(declare-fun e!434630 () Bool)

(declare-fun tp!207930 () Bool)

(declare-fun tp!207931 () Bool)

(assert (=> b!691073 (= e!434630 (and tp!207930 tp!207931))))

(assert (=> b!690728 (= tp!207575 e!434630)))

(assert (= (and b!690728 ((_ is Cons!7438) (exprs!741 (_2!4330 (_1!4331 (h!12843 (minValue!1020 (v!17644 (underlying!1709 (v!17645 (underlying!1710 (cache!1122 cacheDown!470)))))))))))) b!691073))

(check-sat (not b!690801) (not b!691003) (not d!232475) (not b!690906) (not b!690983) (not b!690937) (not b!690799) (not b!691006) (not b!690988) (not d!232547) (not setNonEmpty!3765) (not b!691002) (not setNonEmpty!3755) (not b_next!19611) (not b!690796) (not setNonEmpty!3768) (not setNonEmpty!3761) (not b!691036) (not b!690930) (not b!690977) (not b!690840) (not d!232479) (not b!690938) (not b!691033) (not d!232495) (not b!691063) (not b!690797) (not b!690916) (not b!691042) (not b!690948) (not b!690905) (not b_next!19603) (not b!690980) (not setNonEmpty!3735) (not b!690899) (not setNonEmpty!3743) (not d!232521) (not b!690860) (not b!690847) (not d!232535) (not setNonEmpty!3733) (not d!232451) (not b!691018) (not setNonEmpty!3748) (not b!690902) (not b!690944) (not b!690959) (not b!691044) (not d!232465) (not setNonEmpty!3742) (not setNonEmpty!3727) (not d!232485) (not b!691039) (not b!690942) (not b!691016) (not b!690974) (not d!232545) (not b!691029) (not setNonEmpty!3736) (not d!232459) (not b!691059) (not b!691010) (not d!232529) (not b!691005) (not b!690861) (not b!690970) (not b!690972) (not b!690945) (not b!690953) (not d!232467) (not b!691061) (not b!690994) (not b_next!19607) (not mapNonEmpty!3062) (not b!691007) (not setNonEmpty!3764) (not b!690877) (not b!690896) (not b!690925) (not b!691031) (not b!691064) (not b!690919) (not b!691032) (not b!690866) (not b!691062) (not b!691053) (not setNonEmpty!3734) (not b!690985) (not b!690943) (not b!690874) (not setNonEmpty!3766) b_and!63339 (not b!691073) (not b!691012) (not b!690984) (not b!690927) b_and!63335 (not b!691009) (not setNonEmpty!3750) (not b!690965) b_and!63341 (not b_next!19595) (not setNonEmpty!3729) (not b!690997) (not b!691052) (not d!232525) (not d!232501) (not b!690931) (not b!690917) b_and!63343 (not b!691014) (not d!232473) (not b!690881) (not setNonEmpty!3746) (not b!690928) (not setNonEmpty!3732) (not d!232493) (not b!690907) (not setNonEmpty!3738) (not b!691054) (not setNonEmpty!3730) (not b!690936) (not b!690898) (not setNonEmpty!3758) (not b!691030) (not setNonEmpty!3740) (not setNonEmpty!3741) (not b!690979) (not b!690941) (not b!690903) (not b!690962) (not b_next!19593) (not b!691060) b_and!63323 (not setNonEmpty!3754) (not b!690999) (not d!232543) (not b!690973) (not d!232507) (not b!690839) (not b!690963) (not b!690923) (not b!691040) (not d!232515) (not d!232461) (not setNonEmpty!3756) (not b!690848) (not b!690929) (not b_next!19597) (not b_next!19615) (not d!232519) (not b!690951) (not b!691034) (not b!690960) (not b!691008) (not b!691038) (not b!690946) (not b!691048) (not b!691071) (not b!690833) (not b_next!19601) b_and!63327 (not b!690856) (not b!690882) (not d!232489) (not b!691015) (not b!690976) (not d!232471) (not mapNonEmpty!3064) (not b!691067) (not setNonEmpty!3747) (not b!690932) (not setNonEmpty!3728) (not d!232505) (not b!690987) (not b!690940) b_and!63331 (not b!691065) (not b!690897) (not b!690884) (not b!690879) (not b!690969) (not d!232447) b_and!63329 (not d!232503) (not b!690998) (not b!690967) (not b!690939) (not b!690807) (not setNonEmpty!3731) (not d!232483) (not b!691035) (not b!691011) (not b!691027) (not d!232463) (not b!690996) (not b!691023) (not b!691049) (not setNonEmpty!3744) (not b!690966) (not b!691072) (not b!690995) (not b!691013) (not b!691050) (not setNonEmpty!3737) (not b!691069) (not b!690802) (not d!232487) (not b!690968) (not d!232509) (not b!690901) (not b_next!19599) (not b!691025) (not b!690989) (not b!691058) (not b!690933) (not b!690908) (not d!232537) b_and!63337 (not setNonEmpty!3759) (not b!690813) (not b_next!19609) (not b!690910) (not b!690858) (not b!691037) (not b!690690) (not b!690909) (not b!690934) (not d!232497) (not b!691004) (not b!690950) (not b!691055) (not d!232533) (not b!690982) (not d!232441) (not b!690961) (not b!690804) (not setNonEmpty!3752) (not b!690821) (not d!232523) (not b!690805) (not d!232531) (not d!232491) (not b!691017) (not b!691043) (not b!691021) (not b!691001) (not b!690812) (not setNonEmpty!3749) (not b!690949) tp_is_empty!3643 (not b!691070) (not b!690921) (not b_next!19613) b_and!63325 b_and!63345 (not setNonEmpty!3762) (not b!690915) (not b!690978) (not d!232477) (not b!690957) (not b!690981) (not b!691000) (not b_next!19605) (not d!232453) (not b!690859) (not setNonEmpty!3760) (not b!691019) (not b!690952) (not b!690918) (not b!690894) (not b!690922) (not b!690857) (not b!690956) (not b!690855) b_and!63333 (not setNonEmpty!3763) (not b!690935) (not b!691022) (not setNonEmpty!3739) (not mapNonEmpty!3063) (not setNonEmpty!3767) (not d!232443) (not b!691057) (not b!691024) (not b!690926) (not b!690958) (not b!690991) (not setNonEmpty!3751) (not b!691046) (not setNonEmpty!3745) (not b!690986) (not d!232517) (not b!691028) (not b!690875) (not d!232481) (not setNonEmpty!3753) (not b!690954) (not b!690800) (not b!690924) (not b!690992) (not b!691047) (not b!690779) (not b!690853) (not b!690920) (not b!691020) (not setNonEmpty!3757) (not b!690895) (not b!691026) (not b!691068) (not b!690798) (not b!690993) (not b!690889) (not d!232511) (not d!232445))
(check-sat (not b_next!19611) (not b_next!19603) (not b_next!19607) b_and!63343 (not b_next!19597) (not b_next!19615) b_and!63331 b_and!63329 (not b_next!19609) (not b_next!19605) b_and!63333 b_and!63335 b_and!63339 b_and!63341 (not b_next!19595) (not b_next!19593) b_and!63323 (not b_next!19601) b_and!63327 (not b_next!19599) b_and!63337 (not b_next!19613) b_and!63325 b_and!63345)
