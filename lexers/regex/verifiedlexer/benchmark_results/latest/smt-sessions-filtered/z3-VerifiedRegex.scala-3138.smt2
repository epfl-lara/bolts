; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184662 () Bool)

(assert start!184662)

(declare-fun b!1850388 () Bool)

(declare-fun b_free!51679 () Bool)

(declare-fun b_next!52383 () Bool)

(assert (=> b!1850388 (= b_free!51679 (not b_next!52383))))

(declare-fun tp!523480 () Bool)

(declare-fun b_and!143905 () Bool)

(assert (=> b!1850388 (= tp!523480 b_and!143905)))

(declare-fun b!1850383 () Bool)

(declare-fun b_free!51681 () Bool)

(declare-fun b_next!52385 () Bool)

(assert (=> b!1850383 (= b_free!51681 (not b_next!52385))))

(declare-fun tp!523497 () Bool)

(declare-fun b_and!143907 () Bool)

(assert (=> b!1850383 (= tp!523497 b_and!143907)))

(declare-fun b!1850397 () Bool)

(declare-fun b_free!51683 () Bool)

(declare-fun b_next!52387 () Bool)

(assert (=> b!1850397 (= b_free!51683 (not b_next!52387))))

(declare-fun tp!523487 () Bool)

(declare-fun b_and!143909 () Bool)

(assert (=> b!1850397 (= tp!523487 b_and!143909)))

(declare-fun b!1850374 () Bool)

(declare-fun b_free!51685 () Bool)

(declare-fun b_next!52389 () Bool)

(assert (=> b!1850374 (= b_free!51685 (not b_next!52389))))

(declare-fun tp!523486 () Bool)

(declare-fun b_and!143911 () Bool)

(assert (=> b!1850374 (= tp!523486 b_and!143911)))

(declare-fun b!1850376 () Bool)

(declare-fun b_free!51687 () Bool)

(declare-fun b_next!52391 () Bool)

(assert (=> b!1850376 (= b_free!51687 (not b_next!52391))))

(declare-fun tp!523481 () Bool)

(declare-fun b_and!143913 () Bool)

(assert (=> b!1850376 (= tp!523481 b_and!143913)))

(declare-fun b_free!51689 () Bool)

(declare-fun b_next!52393 () Bool)

(assert (=> b!1850376 (= b_free!51689 (not b_next!52393))))

(declare-fun tp!523479 () Bool)

(declare-fun b_and!143915 () Bool)

(assert (=> b!1850376 (= tp!523479 b_and!143915)))

(declare-fun b!1850382 () Bool)

(declare-fun b_free!51691 () Bool)

(declare-fun b_next!52395 () Bool)

(assert (=> b!1850382 (= b_free!51691 (not b_next!52395))))

(declare-fun tp!523496 () Bool)

(declare-fun b_and!143917 () Bool)

(assert (=> b!1850382 (= tp!523496 b_and!143917)))

(declare-fun b_free!51693 () Bool)

(declare-fun b_next!52397 () Bool)

(assert (=> b!1850382 (= b_free!51693 (not b_next!52397))))

(declare-fun tp!523493 () Bool)

(declare-fun b_and!143919 () Bool)

(assert (=> b!1850382 (= tp!523493 b_and!143919)))

(declare-fun e!1182330 () Bool)

(declare-datatypes ((array!6418 0))(
  ( (array!6419 (arr!2850 (Array (_ BitVec 32) (_ BitVec 64))) (size!16160 (_ BitVec 32))) )
))
(declare-datatypes ((C!10208 0))(
  ( (C!10209 (val!5830 Int)) )
))
(declare-datatypes ((Regex!5029 0))(
  ( (ElementMatch!5029 (c!302002 C!10208)) (Concat!8812 (regOne!10570 Regex!5029) (regTwo!10570 Regex!5029)) (EmptyExpr!5029) (Star!5029 (reg!5358 Regex!5029)) (EmptyLang!5029) (Union!5029 (regOne!10571 Regex!5029) (regTwo!10571 Regex!5029)) )
))
(declare-datatypes ((List!20531 0))(
  ( (Nil!20459) (Cons!20459 (h!25860 Regex!5029) (t!172311 List!20531)) )
))
(declare-datatypes ((Context!1878 0))(
  ( (Context!1879 (exprs!1439 List!20531)) )
))
(declare-datatypes ((tuple3!1878 0))(
  ( (tuple3!1879 (_1!11262 Regex!5029) (_2!11262 Context!1878) (_3!1403 C!10208)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!19718 0))(
  ( (tuple2!19719 (_1!11263 tuple3!1878) (_2!11263 (InoxSet Context!1878))) )
))
(declare-datatypes ((List!20532 0))(
  ( (Nil!20460) (Cons!20460 (h!25861 tuple2!19718) (t!172312 List!20532)) )
))
(declare-datatypes ((array!6420 0))(
  ( (array!6421 (arr!2851 (Array (_ BitVec 32) List!20532)) (size!16161 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3740 0))(
  ( (LongMapFixedSize!3741 (defaultEntry!2230 Int) (mask!5552 (_ BitVec 32)) (extraKeys!2117 (_ BitVec 32)) (zeroValue!2127 List!20532) (minValue!2127 List!20532) (_size!3821 (_ BitVec 32)) (_keys!2164 array!6418) (_values!2149 array!6420) (_vacant!1931 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7365 0))(
  ( (Cell!7366 (v!25971 LongMapFixedSize!3740)) )
))
(declare-datatypes ((MutLongMap!1870 0))(
  ( (LongMap!1870 (underlying!3953 Cell!7365)) (MutLongMapExt!1869 (__x!12854 Int)) )
))
(declare-datatypes ((Cell!7367 0))(
  ( (Cell!7368 (v!25972 MutLongMap!1870)) )
))
(declare-datatypes ((Hashable!1814 0))(
  ( (HashableExt!1813 (__x!12855 Int)) )
))
(declare-datatypes ((MutableMap!1814 0))(
  ( (MutableMapExt!1813 (__x!12856 Int)) (HashMap!1814 (underlying!3954 Cell!7367) (hashF!3733 Hashable!1814) (_size!3822 (_ BitVec 32)) (defaultValue!1974 Int)) )
))
(declare-datatypes ((CacheDown!1112 0))(
  ( (CacheDown!1113 (cache!2195 MutableMap!1814)) )
))
(declare-fun cacheDown!404 () CacheDown!1112)

(declare-fun tp!523485 () Bool)

(declare-fun e!1182306 () Bool)

(declare-fun tp!523489 () Bool)

(declare-fun array_inv!2051 (array!6418) Bool)

(declare-fun array_inv!2052 (array!6420) Bool)

(assert (=> b!1850374 (= e!1182330 (and tp!523486 tp!523485 tp!523489 (array_inv!2051 (_keys!2164 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404))))))) (array_inv!2052 (_values!2149 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404))))))) e!1182306))))

(declare-fun b!1850375 () Bool)

(declare-fun e!1182331 () Bool)

(declare-fun e!1182320 () Bool)

(assert (=> b!1850375 (= e!1182331 e!1182320)))

(declare-fun e!1182317 () Bool)

(assert (=> b!1850376 (= e!1182317 (and tp!523481 tp!523479))))

(declare-fun b!1850377 () Bool)

(declare-fun e!1182311 () Bool)

(declare-fun e!1182328 () Bool)

(assert (=> b!1850377 (= e!1182311 e!1182328)))

(declare-fun res!830714 () Bool)

(assert (=> b!1850377 (=> (not res!830714) (not e!1182328))))

(declare-datatypes ((Hashable!1815 0))(
  ( (HashableExt!1814 (__x!12857 Int)) )
))
(declare-datatypes ((tuple2!19720 0))(
  ( (tuple2!19721 (_1!11264 Context!1878) (_2!11264 C!10208)) )
))
(declare-datatypes ((tuple2!19722 0))(
  ( (tuple2!19723 (_1!11265 tuple2!19720) (_2!11265 (InoxSet Context!1878))) )
))
(declare-datatypes ((List!20533 0))(
  ( (Nil!20461) (Cons!20461 (h!25862 tuple2!19722) (t!172313 List!20533)) )
))
(declare-datatypes ((array!6422 0))(
  ( (array!6423 (arr!2852 (Array (_ BitVec 32) List!20533)) (size!16162 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3742 0))(
  ( (LongMapFixedSize!3743 (defaultEntry!2231 Int) (mask!5553 (_ BitVec 32)) (extraKeys!2118 (_ BitVec 32)) (zeroValue!2128 List!20533) (minValue!2128 List!20533) (_size!3823 (_ BitVec 32)) (_keys!2165 array!6418) (_values!2150 array!6422) (_vacant!1932 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7369 0))(
  ( (Cell!7370 (v!25973 LongMapFixedSize!3742)) )
))
(declare-datatypes ((MutLongMap!1871 0))(
  ( (LongMap!1871 (underlying!3955 Cell!7369)) (MutLongMapExt!1870 (__x!12858 Int)) )
))
(declare-datatypes ((Cell!7371 0))(
  ( (Cell!7372 (v!25974 MutLongMap!1871)) )
))
(declare-datatypes ((MutableMap!1815 0))(
  ( (MutableMapExt!1814 (__x!12859 Int)) (HashMap!1815 (underlying!3956 Cell!7371) (hashF!3734 Hashable!1815) (_size!3824 (_ BitVec 32)) (defaultValue!1975 Int)) )
))
(declare-datatypes ((CacheUp!1114 0))(
  ( (CacheUp!1115 (cache!2196 MutableMap!1815)) )
))
(declare-fun cacheUp!391 () CacheUp!1114)

(declare-fun valid!1498 (CacheUp!1114) Bool)

(assert (=> b!1850377 (= res!830714 (valid!1498 cacheUp!391))))

(declare-datatypes ((List!20534 0))(
  ( (Nil!20462) (Cons!20462 (h!25863 C!10208) (t!172314 List!20534)) )
))
(declare-datatypes ((IArray!13549 0))(
  ( (IArray!13550 (innerList!6832 List!20534)) )
))
(declare-datatypes ((Conc!6772 0))(
  ( (Node!6772 (left!16448 Conc!6772) (right!16778 Conc!6772) (csize!13774 Int) (cheight!6983 Int)) (Leaf!9911 (xs!9648 IArray!13549) (csize!13775 Int)) (Empty!6772) )
))
(declare-datatypes ((BalanceConc!13466 0))(
  ( (BalanceConc!13467 (c!302003 Conc!6772)) )
))
(declare-fun lt!715474 () BalanceConc!13466)

(declare-datatypes ((LexerInterface!3290 0))(
  ( (LexerInterfaceExt!3287 (__x!12860 Int)) (Lexer!3288) )
))
(declare-fun thiss!10908 () LexerInterface!3290)

(declare-datatypes ((List!20535 0))(
  ( (Nil!20463) (Cons!20463 (h!25864 (_ BitVec 16)) (t!172315 List!20535)) )
))
(declare-datatypes ((TokenValue!3783 0))(
  ( (FloatLiteralValue!7566 (text!26926 List!20535)) (TokenValueExt!3782 (__x!12861 Int)) (Broken!18915 (value!115063 List!20535)) (Object!3854) (End!3783) (Def!3783) (Underscore!3783) (Match!3783) (Else!3783) (Error!3783) (Case!3783) (If!3783) (Extends!3783) (Abstract!3783) (Class!3783) (Val!3783) (DelimiterValue!7566 (del!3843 List!20535)) (KeywordValue!3789 (value!115064 List!20535)) (CommentValue!7566 (value!115065 List!20535)) (WhitespaceValue!7566 (value!115066 List!20535)) (IndentationValue!3783 (value!115067 List!20535)) (String!23482) (Int32!3783) (Broken!18916 (value!115068 List!20535)) (Boolean!3784) (Unit!35124) (OperatorValue!3786 (op!3843 List!20535)) (IdentifierValue!7566 (value!115069 List!20535)) (IdentifierValue!7567 (value!115070 List!20535)) (WhitespaceValue!7567 (value!115071 List!20535)) (True!7566) (False!7566) (Broken!18917 (value!115072 List!20535)) (Broken!18918 (value!115073 List!20535)) (True!7567) (RightBrace!3783) (RightBracket!3783) (Colon!3783) (Null!3783) (Comma!3783) (LeftBracket!3783) (False!7567) (LeftBrace!3783) (ImaginaryLiteralValue!3783 (text!26927 List!20535)) (StringLiteralValue!11349 (value!115074 List!20535)) (EOFValue!3783 (value!115075 List!20535)) (IdentValue!3783 (value!115076 List!20535)) (DelimiterValue!7567 (value!115077 List!20535)) (DedentValue!3783 (value!115078 List!20535)) (NewLineValue!3783 (value!115079 List!20535)) (IntegerValue!11349 (value!115080 (_ BitVec 32)) (text!26928 List!20535)) (IntegerValue!11350 (value!115081 Int) (text!26929 List!20535)) (Times!3783) (Or!3783) (Equal!3783) (Minus!3783) (Broken!18919 (value!115082 List!20535)) (And!3783) (Div!3783) (LessEqual!3783) (Mod!3783) (Concat!8813) (Not!3783) (Plus!3783) (SpaceValue!3783 (value!115083 List!20535)) (IntegerValue!11351 (value!115084 Int) (text!26930 List!20535)) (StringLiteralValue!11350 (text!26931 List!20535)) (FloatLiteralValue!7567 (text!26932 List!20535)) (BytesLiteralValue!3783 (value!115085 List!20535)) (CommentValue!7567 (value!115086 List!20535)) (StringLiteralValue!11351 (value!115087 List!20535)) (ErrorTokenValue!3783 (msg!3844 List!20535)) )
))
(declare-datatypes ((String!23483 0))(
  ( (String!23484 (value!115088 String)) )
))
(declare-datatypes ((TokenValueInjection!7182 0))(
  ( (TokenValueInjection!7183 (toValue!5238 Int) (toChars!5097 Int)) )
))
(declare-datatypes ((Rule!7134 0))(
  ( (Rule!7135 (regex!3667 Regex!5029) (tag!4081 String!23483) (isSeparator!3667 Bool) (transformation!3667 TokenValueInjection!7182)) )
))
(declare-datatypes ((Token!6888 0))(
  ( (Token!6889 (value!115089 TokenValue!3783) (rule!5861 Rule!7134) (size!16163 Int) (originalCharacters!4475 List!20534)) )
))
(declare-fun t!6207 () Token!6888)

(declare-datatypes ((List!20536 0))(
  ( (Nil!20464) (Cons!20464 (h!25865 Token!6888) (t!172316 List!20536)) )
))
(declare-datatypes ((IArray!13551 0))(
  ( (IArray!13552 (innerList!6833 List!20536)) )
))
(declare-datatypes ((Conc!6773 0))(
  ( (Node!6773 (left!16449 Conc!6773) (right!16779 Conc!6773) (csize!13776 Int) (cheight!6984 Int)) (Leaf!9912 (xs!9649 IArray!13551) (csize!13777 Int)) (Empty!6773) )
))
(declare-datatypes ((BalanceConc!13468 0))(
  ( (BalanceConc!13469 (c!302004 Conc!6773)) )
))
(declare-fun print!1425 (LexerInterface!3290 BalanceConc!13468) BalanceConc!13466)

(declare-fun singletonSeq!1797 (Token!6888) BalanceConc!13468)

(assert (=> b!1850377 (= lt!715474 (print!1425 thiss!10908 (singletonSeq!1797 t!6207)))))

(declare-fun b!1850378 () Bool)

(declare-fun e!1182322 () Bool)

(declare-fun e!1182315 () Bool)

(declare-fun lt!715472 () MutLongMap!1871)

(get-info :version)

(assert (=> b!1850378 (= e!1182322 (and e!1182315 ((_ is LongMap!1871) lt!715472)))))

(assert (=> b!1850378 (= lt!715472 (v!25974 (underlying!3956 (cache!2196 cacheUp!391))))))

(declare-fun b!1850379 () Bool)

(declare-fun e!1182323 () Bool)

(declare-fun e!1182329 () Bool)

(declare-fun tp!523477 () Bool)

(declare-fun inv!21 (TokenValue!3783) Bool)

(assert (=> b!1850379 (= e!1182323 (and (inv!21 (value!115089 t!6207)) e!1182329 tp!523477))))

(declare-fun b!1850380 () Bool)

(declare-fun e!1182312 () Bool)

(declare-fun tp!523488 () Bool)

(declare-fun mapRes!8728 () Bool)

(assert (=> b!1850380 (= e!1182312 (and tp!523488 mapRes!8728))))

(declare-fun condMapEmpty!8729 () Bool)

(declare-fun mapDefault!8729 () List!20533)

(assert (=> b!1850380 (= condMapEmpty!8729 (= (arr!2852 (_values!2150 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391))))))) ((as const (Array (_ BitVec 32) List!20533)) mapDefault!8729)))))

(declare-fun mapIsEmpty!8728 () Bool)

(assert (=> mapIsEmpty!8728 mapRes!8728))

(declare-fun e!1182309 () Bool)

(assert (=> b!1850382 (= e!1182309 (and tp!523496 tp!523493))))

(declare-fun mapNonEmpty!8728 () Bool)

(declare-fun tp!523495 () Bool)

(declare-fun tp!523498 () Bool)

(assert (=> mapNonEmpty!8728 (= mapRes!8728 (and tp!523495 tp!523498))))

(declare-fun mapKey!8728 () (_ BitVec 32))

(declare-fun mapRest!8728 () (Array (_ BitVec 32) List!20533))

(declare-fun mapValue!8728 () List!20533)

(assert (=> mapNonEmpty!8728 (= (arr!2852 (_values!2150 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391))))))) (store mapRest!8728 mapKey!8728 mapValue!8728))))

(declare-fun tp!523484 () Bool)

(declare-fun tp!523491 () Bool)

(declare-fun e!1182308 () Bool)

(declare-fun array_inv!2053 (array!6422) Bool)

(assert (=> b!1850383 (= e!1182308 (and tp!523497 tp!523484 tp!523491 (array_inv!2051 (_keys!2165 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391))))))) (array_inv!2053 (_values!2150 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391))))))) e!1182312))))

(declare-fun b!1850384 () Bool)

(declare-fun valid!1499 (CacheDown!1112) Bool)

(assert (=> b!1850384 (= e!1182328 (not (valid!1499 cacheDown!404)))))

(declare-fun b!1850385 () Bool)

(declare-fun e!1182310 () Bool)

(assert (=> b!1850385 (= e!1182310 e!1182308)))

(declare-datatypes ((List!20537 0))(
  ( (Nil!20465) (Cons!20465 (h!25866 Rule!7134) (t!172317 List!20537)) )
))
(declare-fun rs!164 () List!20537)

(declare-fun b!1850386 () Bool)

(declare-fun e!1182332 () Bool)

(declare-fun tp!523494 () Bool)

(declare-fun inv!26851 (String!23483) Bool)

(declare-fun inv!26852 (TokenValueInjection!7182) Bool)

(assert (=> b!1850386 (= e!1182332 (and tp!523494 (inv!26851 (tag!4081 (h!25866 rs!164))) (inv!26852 (transformation!3667 (h!25866 rs!164))) e!1182317))))

(declare-fun mapNonEmpty!8729 () Bool)

(declare-fun mapRes!8729 () Bool)

(declare-fun tp!523482 () Bool)

(declare-fun tp!523483 () Bool)

(assert (=> mapNonEmpty!8729 (= mapRes!8729 (and tp!523482 tp!523483))))

(declare-fun mapValue!8729 () List!20532)

(declare-fun mapKey!8729 () (_ BitVec 32))

(declare-fun mapRest!8729 () (Array (_ BitVec 32) List!20532))

(assert (=> mapNonEmpty!8729 (= (arr!2851 (_values!2149 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404))))))) (store mapRest!8729 mapKey!8729 mapValue!8729))))

(declare-fun b!1850387 () Bool)

(declare-fun tp!523492 () Bool)

(assert (=> b!1850387 (= e!1182306 (and tp!523492 mapRes!8729))))

(declare-fun condMapEmpty!8728 () Bool)

(declare-fun mapDefault!8728 () List!20532)

(assert (=> b!1850387 (= condMapEmpty!8728 (= (arr!2851 (_values!2149 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404))))))) ((as const (Array (_ BitVec 32) List!20532)) mapDefault!8728)))))

(declare-fun mapIsEmpty!8729 () Bool)

(assert (=> mapIsEmpty!8729 mapRes!8729))

(assert (=> b!1850388 (= e!1182320 (and e!1182322 tp!523480))))

(declare-fun b!1850389 () Bool)

(declare-fun e!1182325 () Bool)

(declare-fun e!1182326 () Bool)

(assert (=> b!1850389 (= e!1182325 e!1182326)))

(declare-fun b!1850390 () Bool)

(declare-fun e!1182324 () Bool)

(assert (=> b!1850390 (= e!1182324 e!1182330)))

(declare-fun b!1850391 () Bool)

(declare-fun res!830713 () Bool)

(assert (=> b!1850391 (=> (not res!830713) (not e!1182311))))

(declare-fun isEmpty!12787 (List!20537) Bool)

(assert (=> b!1850391 (= res!830713 (not (isEmpty!12787 rs!164)))))

(declare-fun b!1850381 () Bool)

(declare-fun res!830716 () Bool)

(assert (=> b!1850381 (=> (not res!830716) (not e!1182311))))

(declare-fun rulesInvariant!2959 (LexerInterface!3290 List!20537) Bool)

(assert (=> b!1850381 (= res!830716 (rulesInvariant!2959 thiss!10908 rs!164))))

(declare-fun res!830715 () Bool)

(assert (=> start!184662 (=> (not res!830715) (not e!1182311))))

(assert (=> start!184662 (= res!830715 ((_ is Lexer!3288) thiss!10908))))

(assert (=> start!184662 e!1182311))

(declare-fun e!1182318 () Bool)

(assert (=> start!184662 e!1182318))

(declare-fun inv!26853 (Token!6888) Bool)

(assert (=> start!184662 (and (inv!26853 t!6207) e!1182323)))

(assert (=> start!184662 true))

(declare-fun inv!26854 (CacheDown!1112) Bool)

(assert (=> start!184662 (and (inv!26854 cacheDown!404) e!1182325)))

(declare-fun inv!26855 (CacheUp!1114) Bool)

(assert (=> start!184662 (and (inv!26855 cacheUp!391) e!1182331)))

(declare-fun b!1850392 () Bool)

(declare-fun e!1182321 () Bool)

(declare-fun e!1182313 () Bool)

(declare-fun lt!715473 () MutLongMap!1870)

(assert (=> b!1850392 (= e!1182321 (and e!1182313 ((_ is LongMap!1870) lt!715473)))))

(assert (=> b!1850392 (= lt!715473 (v!25972 (underlying!3954 (cache!2195 cacheDown!404))))))

(declare-fun b!1850393 () Bool)

(assert (=> b!1850393 (= e!1182313 e!1182324)))

(declare-fun b!1850394 () Bool)

(declare-fun tp!523490 () Bool)

(assert (=> b!1850394 (= e!1182329 (and tp!523490 (inv!26851 (tag!4081 (rule!5861 t!6207))) (inv!26852 (transformation!3667 (rule!5861 t!6207))) e!1182309))))

(declare-fun b!1850395 () Bool)

(assert (=> b!1850395 (= e!1182315 e!1182310)))

(declare-fun b!1850396 () Bool)

(declare-fun tp!523478 () Bool)

(assert (=> b!1850396 (= e!1182318 (and e!1182332 tp!523478))))

(assert (=> b!1850397 (= e!1182326 (and e!1182321 tp!523487))))

(assert (= (and start!184662 res!830715) b!1850391))

(assert (= (and b!1850391 res!830713) b!1850381))

(assert (= (and b!1850381 res!830716) b!1850377))

(assert (= (and b!1850377 res!830714) b!1850384))

(assert (= b!1850386 b!1850376))

(assert (= b!1850396 b!1850386))

(assert (= (and start!184662 ((_ is Cons!20465) rs!164)) b!1850396))

(assert (= b!1850394 b!1850382))

(assert (= b!1850379 b!1850394))

(assert (= start!184662 b!1850379))

(assert (= (and b!1850387 condMapEmpty!8728) mapIsEmpty!8729))

(assert (= (and b!1850387 (not condMapEmpty!8728)) mapNonEmpty!8729))

(assert (= b!1850374 b!1850387))

(assert (= b!1850390 b!1850374))

(assert (= b!1850393 b!1850390))

(assert (= (and b!1850392 ((_ is LongMap!1870) (v!25972 (underlying!3954 (cache!2195 cacheDown!404))))) b!1850393))

(assert (= b!1850397 b!1850392))

(assert (= (and b!1850389 ((_ is HashMap!1814) (cache!2195 cacheDown!404))) b!1850397))

(assert (= start!184662 b!1850389))

(assert (= (and b!1850380 condMapEmpty!8729) mapIsEmpty!8728))

(assert (= (and b!1850380 (not condMapEmpty!8729)) mapNonEmpty!8728))

(assert (= b!1850383 b!1850380))

(assert (= b!1850385 b!1850383))

(assert (= b!1850395 b!1850385))

(assert (= (and b!1850378 ((_ is LongMap!1871) (v!25974 (underlying!3956 (cache!2196 cacheUp!391))))) b!1850395))

(assert (= b!1850388 b!1850378))

(assert (= (and b!1850375 ((_ is HashMap!1815) (cache!2196 cacheUp!391))) b!1850388))

(assert (= start!184662 b!1850375))

(declare-fun m!2277121 () Bool)

(assert (=> b!1850384 m!2277121))

(declare-fun m!2277123 () Bool)

(assert (=> b!1850379 m!2277123))

(declare-fun m!2277125 () Bool)

(assert (=> b!1850391 m!2277125))

(declare-fun m!2277127 () Bool)

(assert (=> b!1850386 m!2277127))

(declare-fun m!2277129 () Bool)

(assert (=> b!1850386 m!2277129))

(declare-fun m!2277131 () Bool)

(assert (=> b!1850381 m!2277131))

(declare-fun m!2277133 () Bool)

(assert (=> mapNonEmpty!8728 m!2277133))

(declare-fun m!2277135 () Bool)

(assert (=> mapNonEmpty!8729 m!2277135))

(declare-fun m!2277137 () Bool)

(assert (=> start!184662 m!2277137))

(declare-fun m!2277139 () Bool)

(assert (=> start!184662 m!2277139))

(declare-fun m!2277141 () Bool)

(assert (=> start!184662 m!2277141))

(declare-fun m!2277143 () Bool)

(assert (=> b!1850383 m!2277143))

(declare-fun m!2277145 () Bool)

(assert (=> b!1850383 m!2277145))

(declare-fun m!2277147 () Bool)

(assert (=> b!1850377 m!2277147))

(declare-fun m!2277149 () Bool)

(assert (=> b!1850377 m!2277149))

(assert (=> b!1850377 m!2277149))

(declare-fun m!2277151 () Bool)

(assert (=> b!1850377 m!2277151))

(declare-fun m!2277153 () Bool)

(assert (=> b!1850374 m!2277153))

(declare-fun m!2277155 () Bool)

(assert (=> b!1850374 m!2277155))

(declare-fun m!2277157 () Bool)

(assert (=> b!1850394 m!2277157))

(declare-fun m!2277159 () Bool)

(assert (=> b!1850394 m!2277159))

(check-sat (not b_next!52389) b_and!143907 (not b_next!52395) (not b!1850379) (not mapNonEmpty!8729) b_and!143917 (not b!1850384) (not b!1850396) (not b!1850386) (not b!1850381) (not b_next!52383) b_and!143905 (not b!1850383) b_and!143913 (not mapNonEmpty!8728) (not b_next!52385) b_and!143919 (not start!184662) (not b_next!52397) (not b_next!52391) b_and!143915 (not b_next!52387) (not b!1850391) (not b!1850374) b_and!143911 (not b!1850394) (not b!1850380) (not b!1850377) (not b!1850387) (not b_next!52393) b_and!143909)
(check-sat (not b_next!52389) b_and!143907 (not b_next!52395) b_and!143917 (not b_next!52387) b_and!143911 (not b_next!52383) b_and!143905 b_and!143913 (not b_next!52385) b_and!143919 (not b_next!52397) (not b_next!52391) b_and!143915 (not b_next!52393) b_and!143909)
(get-model)

(declare-fun d!565731 () Bool)

(declare-fun res!830721 () Bool)

(declare-fun e!1182335 () Bool)

(assert (=> d!565731 (=> (not res!830721) (not e!1182335))))

(declare-fun rulesValid!1400 (LexerInterface!3290 List!20537) Bool)

(assert (=> d!565731 (= res!830721 (rulesValid!1400 thiss!10908 rs!164))))

(assert (=> d!565731 (= (rulesInvariant!2959 thiss!10908 rs!164) e!1182335)))

(declare-fun b!1850400 () Bool)

(declare-datatypes ((List!20538 0))(
  ( (Nil!20466) (Cons!20466 (h!25867 String!23483) (t!172325 List!20538)) )
))
(declare-fun noDuplicateTag!1398 (LexerInterface!3290 List!20537 List!20538) Bool)

(assert (=> b!1850400 (= e!1182335 (noDuplicateTag!1398 thiss!10908 rs!164 Nil!20466))))

(assert (= (and d!565731 res!830721) b!1850400))

(declare-fun m!2277161 () Bool)

(assert (=> d!565731 m!2277161))

(declare-fun m!2277163 () Bool)

(assert (=> b!1850400 m!2277163))

(assert (=> b!1850381 d!565731))

(declare-fun d!565733 () Bool)

(assert (=> d!565733 (= (inv!26851 (tag!4081 (rule!5861 t!6207))) (= (mod (str.len (value!115088 (tag!4081 (rule!5861 t!6207)))) 2) 0))))

(assert (=> b!1850394 d!565733))

(declare-fun d!565735 () Bool)

(declare-fun res!830724 () Bool)

(declare-fun e!1182338 () Bool)

(assert (=> d!565735 (=> (not res!830724) (not e!1182338))))

(declare-fun semiInverseModEq!1490 (Int Int) Bool)

(assert (=> d!565735 (= res!830724 (semiInverseModEq!1490 (toChars!5097 (transformation!3667 (rule!5861 t!6207))) (toValue!5238 (transformation!3667 (rule!5861 t!6207)))))))

(assert (=> d!565735 (= (inv!26852 (transformation!3667 (rule!5861 t!6207))) e!1182338)))

(declare-fun b!1850403 () Bool)

(declare-fun equivClasses!1423 (Int Int) Bool)

(assert (=> b!1850403 (= e!1182338 (equivClasses!1423 (toChars!5097 (transformation!3667 (rule!5861 t!6207))) (toValue!5238 (transformation!3667 (rule!5861 t!6207)))))))

(assert (= (and d!565735 res!830724) b!1850403))

(declare-fun m!2277165 () Bool)

(assert (=> d!565735 m!2277165))

(declare-fun m!2277167 () Bool)

(assert (=> b!1850403 m!2277167))

(assert (=> b!1850394 d!565735))

(declare-fun d!565737 () Bool)

(declare-fun res!830729 () Bool)

(declare-fun e!1182341 () Bool)

(assert (=> d!565737 (=> (not res!830729) (not e!1182341))))

(declare-fun isEmpty!12788 (List!20534) Bool)

(assert (=> d!565737 (= res!830729 (not (isEmpty!12788 (originalCharacters!4475 t!6207))))))

(assert (=> d!565737 (= (inv!26853 t!6207) e!1182341)))

(declare-fun b!1850408 () Bool)

(declare-fun res!830730 () Bool)

(assert (=> b!1850408 (=> (not res!830730) (not e!1182341))))

(declare-fun list!8310 (BalanceConc!13466) List!20534)

(declare-fun dynLambda!10160 (Int TokenValue!3783) BalanceConc!13466)

(assert (=> b!1850408 (= res!830730 (= (originalCharacters!4475 t!6207) (list!8310 (dynLambda!10160 (toChars!5097 (transformation!3667 (rule!5861 t!6207))) (value!115089 t!6207)))))))

(declare-fun b!1850409 () Bool)

(declare-fun size!16164 (List!20534) Int)

(assert (=> b!1850409 (= e!1182341 (= (size!16163 t!6207) (size!16164 (originalCharacters!4475 t!6207))))))

(assert (= (and d!565737 res!830729) b!1850408))

(assert (= (and b!1850408 res!830730) b!1850409))

(declare-fun b_lambda!61425 () Bool)

(assert (=> (not b_lambda!61425) (not b!1850408)))

(declare-fun tb!112883 () Bool)

(declare-fun t!172319 () Bool)

(assert (=> (and b!1850376 (= (toChars!5097 (transformation!3667 (h!25866 rs!164))) (toChars!5097 (transformation!3667 (rule!5861 t!6207)))) t!172319) tb!112883))

(declare-fun b!1850414 () Bool)

(declare-fun e!1182344 () Bool)

(declare-fun tp!523501 () Bool)

(declare-fun inv!26856 (Conc!6772) Bool)

(assert (=> b!1850414 (= e!1182344 (and (inv!26856 (c!302003 (dynLambda!10160 (toChars!5097 (transformation!3667 (rule!5861 t!6207))) (value!115089 t!6207)))) tp!523501))))

(declare-fun result!136066 () Bool)

(declare-fun inv!26857 (BalanceConc!13466) Bool)

(assert (=> tb!112883 (= result!136066 (and (inv!26857 (dynLambda!10160 (toChars!5097 (transformation!3667 (rule!5861 t!6207))) (value!115089 t!6207))) e!1182344))))

(assert (= tb!112883 b!1850414))

(declare-fun m!2277169 () Bool)

(assert (=> b!1850414 m!2277169))

(declare-fun m!2277171 () Bool)

(assert (=> tb!112883 m!2277171))

(assert (=> b!1850408 t!172319))

(declare-fun b_and!143921 () Bool)

(assert (= b_and!143915 (and (=> t!172319 result!136066) b_and!143921)))

(declare-fun t!172321 () Bool)

(declare-fun tb!112885 () Bool)

(assert (=> (and b!1850382 (= (toChars!5097 (transformation!3667 (rule!5861 t!6207))) (toChars!5097 (transformation!3667 (rule!5861 t!6207)))) t!172321) tb!112885))

(declare-fun result!136070 () Bool)

(assert (= result!136070 result!136066))

(assert (=> b!1850408 t!172321))

(declare-fun b_and!143923 () Bool)

(assert (= b_and!143919 (and (=> t!172321 result!136070) b_and!143923)))

(declare-fun m!2277173 () Bool)

(assert (=> d!565737 m!2277173))

(declare-fun m!2277175 () Bool)

(assert (=> b!1850408 m!2277175))

(assert (=> b!1850408 m!2277175))

(declare-fun m!2277177 () Bool)

(assert (=> b!1850408 m!2277177))

(declare-fun m!2277179 () Bool)

(assert (=> b!1850409 m!2277179))

(assert (=> start!184662 d!565737))

(declare-fun d!565739 () Bool)

(declare-fun res!830733 () Bool)

(declare-fun e!1182347 () Bool)

(assert (=> d!565739 (=> (not res!830733) (not e!1182347))))

(assert (=> d!565739 (= res!830733 ((_ is HashMap!1814) (cache!2195 cacheDown!404)))))

(assert (=> d!565739 (= (inv!26854 cacheDown!404) e!1182347)))

(declare-fun b!1850417 () Bool)

(declare-fun validCacheMapDown!173 (MutableMap!1814) Bool)

(assert (=> b!1850417 (= e!1182347 (validCacheMapDown!173 (cache!2195 cacheDown!404)))))

(assert (= (and d!565739 res!830733) b!1850417))

(declare-fun m!2277181 () Bool)

(assert (=> b!1850417 m!2277181))

(assert (=> start!184662 d!565739))

(declare-fun d!565741 () Bool)

(declare-fun res!830736 () Bool)

(declare-fun e!1182350 () Bool)

(assert (=> d!565741 (=> (not res!830736) (not e!1182350))))

(assert (=> d!565741 (= res!830736 ((_ is HashMap!1815) (cache!2196 cacheUp!391)))))

(assert (=> d!565741 (= (inv!26855 cacheUp!391) e!1182350)))

(declare-fun b!1850420 () Bool)

(declare-fun validCacheMapUp!175 (MutableMap!1815) Bool)

(assert (=> b!1850420 (= e!1182350 (validCacheMapUp!175 (cache!2196 cacheUp!391)))))

(assert (= (and d!565741 res!830736) b!1850420))

(declare-fun m!2277183 () Bool)

(assert (=> b!1850420 m!2277183))

(assert (=> start!184662 d!565741))

(declare-fun d!565743 () Bool)

(assert (=> d!565743 (= (array_inv!2051 (_keys!2165 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391))))))) (bvsge (size!16160 (_keys!2165 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391))))))) #b00000000000000000000000000000000))))

(assert (=> b!1850383 d!565743))

(declare-fun d!565745 () Bool)

(assert (=> d!565745 (= (array_inv!2053 (_values!2150 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391))))))) (bvsge (size!16162 (_values!2150 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391))))))) #b00000000000000000000000000000000))))

(assert (=> b!1850383 d!565745))

(declare-fun d!565747 () Bool)

(assert (=> d!565747 (= (valid!1499 cacheDown!404) (validCacheMapDown!173 (cache!2195 cacheDown!404)))))

(declare-fun bs!409796 () Bool)

(assert (= bs!409796 d!565747))

(assert (=> bs!409796 m!2277181))

(assert (=> b!1850384 d!565747))

(declare-fun d!565749 () Bool)

(assert (=> d!565749 (= (array_inv!2051 (_keys!2164 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404))))))) (bvsge (size!16160 (_keys!2164 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404))))))) #b00000000000000000000000000000000))))

(assert (=> b!1850374 d!565749))

(declare-fun d!565751 () Bool)

(assert (=> d!565751 (= (array_inv!2052 (_values!2149 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404))))))) (bvsge (size!16161 (_values!2149 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404))))))) #b00000000000000000000000000000000))))

(assert (=> b!1850374 d!565751))

(declare-fun d!565753 () Bool)

(assert (=> d!565753 (= (isEmpty!12787 rs!164) ((_ is Nil!20465) rs!164))))

(assert (=> b!1850391 d!565753))

(declare-fun b!1850431 () Bool)

(declare-fun e!1182358 () Bool)

(declare-fun inv!16 (TokenValue!3783) Bool)

(assert (=> b!1850431 (= e!1182358 (inv!16 (value!115089 t!6207)))))

(declare-fun b!1850432 () Bool)

(declare-fun e!1182359 () Bool)

(declare-fun inv!15 (TokenValue!3783) Bool)

(assert (=> b!1850432 (= e!1182359 (inv!15 (value!115089 t!6207)))))

(declare-fun b!1850433 () Bool)

(declare-fun e!1182357 () Bool)

(declare-fun inv!17 (TokenValue!3783) Bool)

(assert (=> b!1850433 (= e!1182357 (inv!17 (value!115089 t!6207)))))

(declare-fun d!565755 () Bool)

(declare-fun c!302009 () Bool)

(assert (=> d!565755 (= c!302009 ((_ is IntegerValue!11349) (value!115089 t!6207)))))

(assert (=> d!565755 (= (inv!21 (value!115089 t!6207)) e!1182358)))

(declare-fun b!1850434 () Bool)

(declare-fun res!830739 () Bool)

(assert (=> b!1850434 (=> res!830739 e!1182359)))

(assert (=> b!1850434 (= res!830739 (not ((_ is IntegerValue!11351) (value!115089 t!6207))))))

(assert (=> b!1850434 (= e!1182357 e!1182359)))

(declare-fun b!1850435 () Bool)

(assert (=> b!1850435 (= e!1182358 e!1182357)))

(declare-fun c!302010 () Bool)

(assert (=> b!1850435 (= c!302010 ((_ is IntegerValue!11350) (value!115089 t!6207)))))

(assert (= (and d!565755 c!302009) b!1850431))

(assert (= (and d!565755 (not c!302009)) b!1850435))

(assert (= (and b!1850435 c!302010) b!1850433))

(assert (= (and b!1850435 (not c!302010)) b!1850434))

(assert (= (and b!1850434 (not res!830739)) b!1850432))

(declare-fun m!2277185 () Bool)

(assert (=> b!1850431 m!2277185))

(declare-fun m!2277187 () Bool)

(assert (=> b!1850432 m!2277187))

(declare-fun m!2277189 () Bool)

(assert (=> b!1850433 m!2277189))

(assert (=> b!1850379 d!565755))

(declare-fun d!565757 () Bool)

(assert (=> d!565757 (= (inv!26851 (tag!4081 (h!25866 rs!164))) (= (mod (str.len (value!115088 (tag!4081 (h!25866 rs!164)))) 2) 0))))

(assert (=> b!1850386 d!565757))

(declare-fun d!565759 () Bool)

(declare-fun res!830740 () Bool)

(declare-fun e!1182360 () Bool)

(assert (=> d!565759 (=> (not res!830740) (not e!1182360))))

(assert (=> d!565759 (= res!830740 (semiInverseModEq!1490 (toChars!5097 (transformation!3667 (h!25866 rs!164))) (toValue!5238 (transformation!3667 (h!25866 rs!164)))))))

(assert (=> d!565759 (= (inv!26852 (transformation!3667 (h!25866 rs!164))) e!1182360)))

(declare-fun b!1850436 () Bool)

(assert (=> b!1850436 (= e!1182360 (equivClasses!1423 (toChars!5097 (transformation!3667 (h!25866 rs!164))) (toValue!5238 (transformation!3667 (h!25866 rs!164)))))))

(assert (= (and d!565759 res!830740) b!1850436))

(declare-fun m!2277191 () Bool)

(assert (=> d!565759 m!2277191))

(declare-fun m!2277193 () Bool)

(assert (=> b!1850436 m!2277193))

(assert (=> b!1850386 d!565759))

(declare-fun d!565761 () Bool)

(assert (=> d!565761 (= (valid!1498 cacheUp!391) (validCacheMapUp!175 (cache!2196 cacheUp!391)))))

(declare-fun bs!409797 () Bool)

(assert (= bs!409797 d!565761))

(assert (=> bs!409797 m!2277183))

(assert (=> b!1850377 d!565761))

(declare-fun d!565763 () Bool)

(declare-fun lt!715477 () BalanceConc!13466)

(declare-fun printList!1005 (LexerInterface!3290 List!20536) List!20534)

(declare-fun list!8311 (BalanceConc!13468) List!20536)

(assert (=> d!565763 (= (list!8310 lt!715477) (printList!1005 thiss!10908 (list!8311 (singletonSeq!1797 t!6207))))))

(declare-fun printTailRec!943 (LexerInterface!3290 BalanceConc!13468 Int BalanceConc!13466) BalanceConc!13466)

(assert (=> d!565763 (= lt!715477 (printTailRec!943 thiss!10908 (singletonSeq!1797 t!6207) 0 (BalanceConc!13467 Empty!6772)))))

(assert (=> d!565763 (= (print!1425 thiss!10908 (singletonSeq!1797 t!6207)) lt!715477)))

(declare-fun bs!409798 () Bool)

(assert (= bs!409798 d!565763))

(declare-fun m!2277195 () Bool)

(assert (=> bs!409798 m!2277195))

(assert (=> bs!409798 m!2277149))

(declare-fun m!2277197 () Bool)

(assert (=> bs!409798 m!2277197))

(assert (=> bs!409798 m!2277197))

(declare-fun m!2277199 () Bool)

(assert (=> bs!409798 m!2277199))

(assert (=> bs!409798 m!2277149))

(declare-fun m!2277201 () Bool)

(assert (=> bs!409798 m!2277201))

(assert (=> b!1850377 d!565763))

(declare-fun d!565765 () Bool)

(declare-fun e!1182363 () Bool)

(assert (=> d!565765 e!1182363))

(declare-fun res!830743 () Bool)

(assert (=> d!565765 (=> (not res!830743) (not e!1182363))))

(declare-fun lt!715480 () BalanceConc!13468)

(assert (=> d!565765 (= res!830743 (= (list!8311 lt!715480) (Cons!20464 t!6207 Nil!20464)))))

(declare-fun singleton!817 (Token!6888) BalanceConc!13468)

(assert (=> d!565765 (= lt!715480 (singleton!817 t!6207))))

(assert (=> d!565765 (= (singletonSeq!1797 t!6207) lt!715480)))

(declare-fun b!1850439 () Bool)

(declare-fun isBalanced!2113 (Conc!6773) Bool)

(assert (=> b!1850439 (= e!1182363 (isBalanced!2113 (c!302004 lt!715480)))))

(assert (= (and d!565765 res!830743) b!1850439))

(declare-fun m!2277203 () Bool)

(assert (=> d!565765 m!2277203))

(declare-fun m!2277205 () Bool)

(assert (=> d!565765 m!2277205))

(declare-fun m!2277207 () Bool)

(assert (=> b!1850439 m!2277207))

(assert (=> b!1850377 d!565765))

(declare-fun b!1850450 () Bool)

(declare-fun e!1182366 () Bool)

(declare-fun tp_is_empty!8495 () Bool)

(assert (=> b!1850450 (= e!1182366 tp_is_empty!8495)))

(declare-fun b!1850453 () Bool)

(declare-fun tp!523515 () Bool)

(declare-fun tp!523513 () Bool)

(assert (=> b!1850453 (= e!1182366 (and tp!523515 tp!523513))))

(assert (=> b!1850394 (= tp!523490 e!1182366)))

(declare-fun b!1850452 () Bool)

(declare-fun tp!523512 () Bool)

(assert (=> b!1850452 (= e!1182366 tp!523512)))

(declare-fun b!1850451 () Bool)

(declare-fun tp!523514 () Bool)

(declare-fun tp!523516 () Bool)

(assert (=> b!1850451 (= e!1182366 (and tp!523514 tp!523516))))

(assert (= (and b!1850394 ((_ is ElementMatch!5029) (regex!3667 (rule!5861 t!6207)))) b!1850450))

(assert (= (and b!1850394 ((_ is Concat!8812) (regex!3667 (rule!5861 t!6207)))) b!1850451))

(assert (= (and b!1850394 ((_ is Star!5029) (regex!3667 (rule!5861 t!6207)))) b!1850452))

(assert (= (and b!1850394 ((_ is Union!5029) (regex!3667 (rule!5861 t!6207)))) b!1850453))

(declare-fun setNonEmpty!11344 () Bool)

(declare-fun tp!523528 () Bool)

(declare-fun e!1182373 () Bool)

(declare-fun setElem!11344 () Context!1878)

(declare-fun setRes!11344 () Bool)

(declare-fun inv!26858 (Context!1878) Bool)

(assert (=> setNonEmpty!11344 (= setRes!11344 (and tp!523528 (inv!26858 setElem!11344) e!1182373))))

(declare-fun setRest!11344 () (InoxSet Context!1878))

(assert (=> setNonEmpty!11344 (= (_2!11265 (h!25862 mapDefault!8729)) ((_ map or) (store ((as const (Array Context!1878 Bool)) false) setElem!11344 true) setRest!11344))))

(declare-fun setIsEmpty!11344 () Bool)

(assert (=> setIsEmpty!11344 setRes!11344))

(declare-fun e!1182374 () Bool)

(declare-fun e!1182375 () Bool)

(declare-fun b!1850463 () Bool)

(declare-fun tp!523526 () Bool)

(assert (=> b!1850463 (= e!1182375 (and (inv!26858 (_1!11264 (_1!11265 (h!25862 mapDefault!8729)))) e!1182374 tp_is_empty!8495 setRes!11344 tp!523526))))

(declare-fun condSetEmpty!11344 () Bool)

(assert (=> b!1850463 (= condSetEmpty!11344 (= (_2!11265 (h!25862 mapDefault!8729)) ((as const (Array Context!1878 Bool)) false)))))

(declare-fun b!1850464 () Bool)

(declare-fun tp!523525 () Bool)

(assert (=> b!1850464 (= e!1182373 tp!523525)))

(assert (=> b!1850380 (= tp!523488 e!1182375)))

(declare-fun b!1850462 () Bool)

(declare-fun tp!523527 () Bool)

(assert (=> b!1850462 (= e!1182374 tp!523527)))

(assert (= b!1850463 b!1850462))

(assert (= (and b!1850463 condSetEmpty!11344) setIsEmpty!11344))

(assert (= (and b!1850463 (not condSetEmpty!11344)) setNonEmpty!11344))

(assert (= setNonEmpty!11344 b!1850464))

(assert (= (and b!1850380 ((_ is Cons!20461) mapDefault!8729)) b!1850463))

(declare-fun m!2277209 () Bool)

(assert (=> setNonEmpty!11344 m!2277209))

(declare-fun m!2277211 () Bool)

(assert (=> b!1850463 m!2277211))

(declare-fun e!1182376 () Bool)

(declare-fun setElem!11345 () Context!1878)

(declare-fun setRes!11345 () Bool)

(declare-fun tp!523532 () Bool)

(declare-fun setNonEmpty!11345 () Bool)

(assert (=> setNonEmpty!11345 (= setRes!11345 (and tp!523532 (inv!26858 setElem!11345) e!1182376))))

(declare-fun setRest!11345 () (InoxSet Context!1878))

(assert (=> setNonEmpty!11345 (= (_2!11265 (h!25862 (zeroValue!2128 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391)))))))) ((_ map or) (store ((as const (Array Context!1878 Bool)) false) setElem!11345 true) setRest!11345))))

(declare-fun setIsEmpty!11345 () Bool)

(assert (=> setIsEmpty!11345 setRes!11345))

(declare-fun e!1182377 () Bool)

(declare-fun e!1182378 () Bool)

(declare-fun tp!523530 () Bool)

(declare-fun b!1850466 () Bool)

(assert (=> b!1850466 (= e!1182378 (and (inv!26858 (_1!11264 (_1!11265 (h!25862 (zeroValue!2128 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391)))))))))) e!1182377 tp_is_empty!8495 setRes!11345 tp!523530))))

(declare-fun condSetEmpty!11345 () Bool)

(assert (=> b!1850466 (= condSetEmpty!11345 (= (_2!11265 (h!25862 (zeroValue!2128 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391)))))))) ((as const (Array Context!1878 Bool)) false)))))

(declare-fun b!1850467 () Bool)

(declare-fun tp!523529 () Bool)

(assert (=> b!1850467 (= e!1182376 tp!523529)))

(assert (=> b!1850383 (= tp!523484 e!1182378)))

(declare-fun b!1850465 () Bool)

(declare-fun tp!523531 () Bool)

(assert (=> b!1850465 (= e!1182377 tp!523531)))

(assert (= b!1850466 b!1850465))

(assert (= (and b!1850466 condSetEmpty!11345) setIsEmpty!11345))

(assert (= (and b!1850466 (not condSetEmpty!11345)) setNonEmpty!11345))

(assert (= setNonEmpty!11345 b!1850467))

(assert (= (and b!1850383 ((_ is Cons!20461) (zeroValue!2128 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391)))))))) b!1850466))

(declare-fun m!2277213 () Bool)

(assert (=> setNonEmpty!11345 m!2277213))

(declare-fun m!2277215 () Bool)

(assert (=> b!1850466 m!2277215))

(declare-fun e!1182379 () Bool)

(declare-fun setNonEmpty!11346 () Bool)

(declare-fun setRes!11346 () Bool)

(declare-fun tp!523536 () Bool)

(declare-fun setElem!11346 () Context!1878)

(assert (=> setNonEmpty!11346 (= setRes!11346 (and tp!523536 (inv!26858 setElem!11346) e!1182379))))

(declare-fun setRest!11346 () (InoxSet Context!1878))

(assert (=> setNonEmpty!11346 (= (_2!11265 (h!25862 (minValue!2128 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391)))))))) ((_ map or) (store ((as const (Array Context!1878 Bool)) false) setElem!11346 true) setRest!11346))))

(declare-fun setIsEmpty!11346 () Bool)

(assert (=> setIsEmpty!11346 setRes!11346))

(declare-fun e!1182380 () Bool)

(declare-fun b!1850469 () Bool)

(declare-fun tp!523534 () Bool)

(declare-fun e!1182381 () Bool)

(assert (=> b!1850469 (= e!1182381 (and (inv!26858 (_1!11264 (_1!11265 (h!25862 (minValue!2128 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391)))))))))) e!1182380 tp_is_empty!8495 setRes!11346 tp!523534))))

(declare-fun condSetEmpty!11346 () Bool)

(assert (=> b!1850469 (= condSetEmpty!11346 (= (_2!11265 (h!25862 (minValue!2128 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391)))))))) ((as const (Array Context!1878 Bool)) false)))))

(declare-fun b!1850470 () Bool)

(declare-fun tp!523533 () Bool)

(assert (=> b!1850470 (= e!1182379 tp!523533)))

(assert (=> b!1850383 (= tp!523491 e!1182381)))

(declare-fun b!1850468 () Bool)

(declare-fun tp!523535 () Bool)

(assert (=> b!1850468 (= e!1182380 tp!523535)))

(assert (= b!1850469 b!1850468))

(assert (= (and b!1850469 condSetEmpty!11346) setIsEmpty!11346))

(assert (= (and b!1850469 (not condSetEmpty!11346)) setNonEmpty!11346))

(assert (= setNonEmpty!11346 b!1850470))

(assert (= (and b!1850383 ((_ is Cons!20461) (minValue!2128 (v!25973 (underlying!3955 (v!25974 (underlying!3956 (cache!2196 cacheUp!391)))))))) b!1850469))

(declare-fun m!2277217 () Bool)

(assert (=> setNonEmpty!11346 m!2277217))

(declare-fun m!2277219 () Bool)

(assert (=> b!1850469 m!2277219))

(declare-fun b!1850481 () Bool)

(declare-fun b_free!51695 () Bool)

(declare-fun b_next!52399 () Bool)

(assert (=> b!1850481 (= b_free!51695 (not b_next!52399))))

(declare-fun tp!523546 () Bool)

(declare-fun b_and!143925 () Bool)

(assert (=> b!1850481 (= tp!523546 b_and!143925)))

(declare-fun b_free!51697 () Bool)

(declare-fun b_next!52401 () Bool)

(assert (=> b!1850481 (= b_free!51697 (not b_next!52401))))

(declare-fun t!172324 () Bool)

(declare-fun tb!112887 () Bool)

(assert (=> (and b!1850481 (= (toChars!5097 (transformation!3667 (h!25866 (t!172317 rs!164)))) (toChars!5097 (transformation!3667 (rule!5861 t!6207)))) t!172324) tb!112887))

(declare-fun result!136078 () Bool)

(assert (= result!136078 result!136066))

(assert (=> b!1850408 t!172324))

(declare-fun tp!523548 () Bool)

(declare-fun b_and!143927 () Bool)

(assert (=> b!1850481 (= tp!523548 (and (=> t!172324 result!136078) b_and!143927))))

(declare-fun e!1182390 () Bool)

(assert (=> b!1850481 (= e!1182390 (and tp!523546 tp!523548))))

(declare-fun b!1850480 () Bool)

(declare-fun tp!523545 () Bool)

(declare-fun e!1182393 () Bool)

(assert (=> b!1850480 (= e!1182393 (and tp!523545 (inv!26851 (tag!4081 (h!25866 (t!172317 rs!164)))) (inv!26852 (transformation!3667 (h!25866 (t!172317 rs!164)))) e!1182390))))

(declare-fun b!1850479 () Bool)

(declare-fun e!1182392 () Bool)

(declare-fun tp!523547 () Bool)

(assert (=> b!1850479 (= e!1182392 (and e!1182393 tp!523547))))

(assert (=> b!1850396 (= tp!523478 e!1182392)))

(assert (= b!1850480 b!1850481))

(assert (= b!1850479 b!1850480))

(assert (= (and b!1850396 ((_ is Cons!20465) (t!172317 rs!164))) b!1850479))

(declare-fun m!2277221 () Bool)

(assert (=> b!1850480 m!2277221))

(declare-fun m!2277223 () Bool)

(assert (=> b!1850480 m!2277223))

(declare-fun condMapEmpty!8732 () Bool)

(declare-fun mapDefault!8732 () List!20533)

(assert (=> mapNonEmpty!8728 (= condMapEmpty!8732 (= mapRest!8728 ((as const (Array (_ BitVec 32) List!20533)) mapDefault!8732)))))

(declare-fun e!1182407 () Bool)

(declare-fun mapRes!8732 () Bool)

(assert (=> mapNonEmpty!8728 (= tp!523495 (and e!1182407 mapRes!8732))))

(declare-fun setRes!11351 () Bool)

(declare-fun e!1182411 () Bool)

(declare-fun b!1850496 () Bool)

(declare-fun tp!523570 () Bool)

(declare-fun mapValue!8732 () List!20533)

(declare-fun e!1182410 () Bool)

(assert (=> b!1850496 (= e!1182410 (and (inv!26858 (_1!11264 (_1!11265 (h!25862 mapValue!8732)))) e!1182411 tp_is_empty!8495 setRes!11351 tp!523570))))

(declare-fun condSetEmpty!11351 () Bool)

(assert (=> b!1850496 (= condSetEmpty!11351 (= (_2!11265 (h!25862 mapValue!8732)) ((as const (Array Context!1878 Bool)) false)))))

(declare-fun mapNonEmpty!8732 () Bool)

(declare-fun tp!523574 () Bool)

(assert (=> mapNonEmpty!8732 (= mapRes!8732 (and tp!523574 e!1182410))))

(declare-fun mapKey!8732 () (_ BitVec 32))

(declare-fun mapRest!8732 () (Array (_ BitVec 32) List!20533))

(assert (=> mapNonEmpty!8732 (= mapRest!8728 (store mapRest!8732 mapKey!8732 mapValue!8732))))

(declare-fun tp!523573 () Bool)

(declare-fun setNonEmpty!11351 () Bool)

(declare-fun e!1182408 () Bool)

(declare-fun setRes!11352 () Bool)

(declare-fun setElem!11351 () Context!1878)

(assert (=> setNonEmpty!11351 (= setRes!11352 (and tp!523573 (inv!26858 setElem!11351) e!1182408))))

(declare-fun setRest!11352 () (InoxSet Context!1878))

(assert (=> setNonEmpty!11351 (= (_2!11265 (h!25862 mapDefault!8732)) ((_ map or) (store ((as const (Array Context!1878 Bool)) false) setElem!11351 true) setRest!11352))))

(declare-fun setNonEmpty!11352 () Bool)

(declare-fun tp!523571 () Bool)

(declare-fun e!1182406 () Bool)

(declare-fun setElem!11352 () Context!1878)

(assert (=> setNonEmpty!11352 (= setRes!11351 (and tp!523571 (inv!26858 setElem!11352) e!1182406))))

(declare-fun setRest!11351 () (InoxSet Context!1878))

(assert (=> setNonEmpty!11352 (= (_2!11265 (h!25862 mapValue!8732)) ((_ map or) (store ((as const (Array Context!1878 Bool)) false) setElem!11352 true) setRest!11351))))

(declare-fun mapIsEmpty!8732 () Bool)

(assert (=> mapIsEmpty!8732 mapRes!8732))

(declare-fun setIsEmpty!11351 () Bool)

(assert (=> setIsEmpty!11351 setRes!11351))

(declare-fun setIsEmpty!11352 () Bool)

(assert (=> setIsEmpty!11352 setRes!11352))

(declare-fun b!1850497 () Bool)

(declare-fun tp!523575 () Bool)

(assert (=> b!1850497 (= e!1182408 tp!523575)))

(declare-fun e!1182409 () Bool)

(declare-fun b!1850498 () Bool)

(declare-fun tp!523567 () Bool)

(assert (=> b!1850498 (= e!1182407 (and (inv!26858 (_1!11264 (_1!11265 (h!25862 mapDefault!8732)))) e!1182409 tp_is_empty!8495 setRes!11352 tp!523567))))

(declare-fun condSetEmpty!11352 () Bool)

(assert (=> b!1850498 (= condSetEmpty!11352 (= (_2!11265 (h!25862 mapDefault!8732)) ((as const (Array Context!1878 Bool)) false)))))

(declare-fun b!1850499 () Bool)

(declare-fun tp!523569 () Bool)

(assert (=> b!1850499 (= e!1182411 tp!523569)))

(declare-fun b!1850500 () Bool)

(declare-fun tp!523572 () Bool)

(assert (=> b!1850500 (= e!1182409 tp!523572)))

(declare-fun b!1850501 () Bool)

(declare-fun tp!523568 () Bool)

(assert (=> b!1850501 (= e!1182406 tp!523568)))

(assert (= (and mapNonEmpty!8728 condMapEmpty!8732) mapIsEmpty!8732))

(assert (= (and mapNonEmpty!8728 (not condMapEmpty!8732)) mapNonEmpty!8732))

(assert (= b!1850496 b!1850499))

(assert (= (and b!1850496 condSetEmpty!11351) setIsEmpty!11351))

(assert (= (and b!1850496 (not condSetEmpty!11351)) setNonEmpty!11352))

(assert (= setNonEmpty!11352 b!1850501))

(assert (= (and mapNonEmpty!8732 ((_ is Cons!20461) mapValue!8732)) b!1850496))

(assert (= b!1850498 b!1850500))

(assert (= (and b!1850498 condSetEmpty!11352) setIsEmpty!11352))

(assert (= (and b!1850498 (not condSetEmpty!11352)) setNonEmpty!11351))

(assert (= setNonEmpty!11351 b!1850497))

(assert (= (and mapNonEmpty!8728 ((_ is Cons!20461) mapDefault!8732)) b!1850498))

(declare-fun m!2277225 () Bool)

(assert (=> b!1850498 m!2277225))

(declare-fun m!2277227 () Bool)

(assert (=> mapNonEmpty!8732 m!2277227))

(declare-fun m!2277229 () Bool)

(assert (=> b!1850496 m!2277229))

(declare-fun m!2277231 () Bool)

(assert (=> setNonEmpty!11351 m!2277231))

(declare-fun m!2277233 () Bool)

(assert (=> setNonEmpty!11352 m!2277233))

(declare-fun e!1182412 () Bool)

(declare-fun setRes!11353 () Bool)

(declare-fun setElem!11353 () Context!1878)

(declare-fun tp!523579 () Bool)

(declare-fun setNonEmpty!11353 () Bool)

(assert (=> setNonEmpty!11353 (= setRes!11353 (and tp!523579 (inv!26858 setElem!11353) e!1182412))))

(declare-fun setRest!11353 () (InoxSet Context!1878))

(assert (=> setNonEmpty!11353 (= (_2!11265 (h!25862 mapValue!8728)) ((_ map or) (store ((as const (Array Context!1878 Bool)) false) setElem!11353 true) setRest!11353))))

(declare-fun setIsEmpty!11353 () Bool)

(assert (=> setIsEmpty!11353 setRes!11353))

(declare-fun e!1182414 () Bool)

(declare-fun e!1182413 () Bool)

(declare-fun tp!523577 () Bool)

(declare-fun b!1850503 () Bool)

(assert (=> b!1850503 (= e!1182414 (and (inv!26858 (_1!11264 (_1!11265 (h!25862 mapValue!8728)))) e!1182413 tp_is_empty!8495 setRes!11353 tp!523577))))

(declare-fun condSetEmpty!11353 () Bool)

(assert (=> b!1850503 (= condSetEmpty!11353 (= (_2!11265 (h!25862 mapValue!8728)) ((as const (Array Context!1878 Bool)) false)))))

(declare-fun b!1850504 () Bool)

(declare-fun tp!523576 () Bool)

(assert (=> b!1850504 (= e!1182412 tp!523576)))

(assert (=> mapNonEmpty!8728 (= tp!523498 e!1182414)))

(declare-fun b!1850502 () Bool)

(declare-fun tp!523578 () Bool)

(assert (=> b!1850502 (= e!1182413 tp!523578)))

(assert (= b!1850503 b!1850502))

(assert (= (and b!1850503 condSetEmpty!11353) setIsEmpty!11353))

(assert (= (and b!1850503 (not condSetEmpty!11353)) setNonEmpty!11353))

(assert (= setNonEmpty!11353 b!1850504))

(assert (= (and mapNonEmpty!8728 ((_ is Cons!20461) mapValue!8728)) b!1850503))

(declare-fun m!2277235 () Bool)

(assert (=> setNonEmpty!11353 m!2277235))

(declare-fun m!2277237 () Bool)

(assert (=> b!1850503 m!2277237))

(declare-fun b!1850519 () Bool)

(declare-fun e!1182429 () Bool)

(declare-fun tp!523609 () Bool)

(assert (=> b!1850519 (= e!1182429 tp!523609)))

(declare-fun mapIsEmpty!8735 () Bool)

(declare-fun mapRes!8735 () Bool)

(assert (=> mapIsEmpty!8735 mapRes!8735))

(declare-fun b!1850520 () Bool)

(declare-fun e!1182427 () Bool)

(declare-fun tp!523610 () Bool)

(assert (=> b!1850520 (= e!1182427 tp!523610)))

(declare-fun condMapEmpty!8735 () Bool)

(declare-fun mapDefault!8735 () List!20532)

(assert (=> mapNonEmpty!8729 (= condMapEmpty!8735 (= mapRest!8729 ((as const (Array (_ BitVec 32) List!20532)) mapDefault!8735)))))

(declare-fun e!1182428 () Bool)

(assert (=> mapNonEmpty!8729 (= tp!523482 (and e!1182428 mapRes!8735))))

(declare-fun setIsEmpty!11358 () Bool)

(declare-fun setRes!11358 () Bool)

(assert (=> setIsEmpty!11358 setRes!11358))

(declare-fun b!1850521 () Bool)

(declare-fun e!1182430 () Bool)

(declare-fun tp!523604 () Bool)

(assert (=> b!1850521 (= e!1182430 tp!523604)))

(declare-fun tp!523606 () Bool)

(declare-fun setRes!11359 () Bool)

(declare-fun tp!523607 () Bool)

(declare-fun b!1850522 () Bool)

(declare-fun e!1182432 () Bool)

(assert (=> b!1850522 (= e!1182428 (and tp!523607 (inv!26858 (_2!11262 (_1!11263 (h!25861 mapDefault!8735)))) e!1182432 tp_is_empty!8495 setRes!11359 tp!523606))))

(declare-fun condSetEmpty!11359 () Bool)

(assert (=> b!1850522 (= condSetEmpty!11359 (= (_2!11263 (h!25861 mapDefault!8735)) ((as const (Array Context!1878 Bool)) false)))))

(declare-fun b!1850523 () Bool)

(declare-fun tp!523608 () Bool)

(assert (=> b!1850523 (= e!1182432 tp!523608)))

(declare-fun tp!523612 () Bool)

(declare-fun setNonEmpty!11358 () Bool)

(declare-fun setElem!11359 () Context!1878)

(assert (=> setNonEmpty!11358 (= setRes!11358 (and tp!523612 (inv!26858 setElem!11359) e!1182427))))

(declare-fun mapValue!8735 () List!20532)

(declare-fun setRest!11358 () (InoxSet Context!1878))

(assert (=> setNonEmpty!11358 (= (_2!11263 (h!25861 mapValue!8735)) ((_ map or) (store ((as const (Array Context!1878 Bool)) false) setElem!11359 true) setRest!11358))))

(declare-fun setElem!11358 () Context!1878)

(declare-fun setNonEmpty!11359 () Bool)

(declare-fun tp!523603 () Bool)

(assert (=> setNonEmpty!11359 (= setRes!11359 (and tp!523603 (inv!26858 setElem!11358) e!1182429))))

(declare-fun setRest!11359 () (InoxSet Context!1878))

(assert (=> setNonEmpty!11359 (= (_2!11263 (h!25861 mapDefault!8735)) ((_ map or) (store ((as const (Array Context!1878 Bool)) false) setElem!11358 true) setRest!11359))))

(declare-fun b!1850524 () Bool)

(declare-fun e!1182431 () Bool)

(declare-fun tp!523602 () Bool)

(declare-fun tp!523611 () Bool)

(assert (=> b!1850524 (= e!1182431 (and tp!523611 (inv!26858 (_2!11262 (_1!11263 (h!25861 mapValue!8735)))) e!1182430 tp_is_empty!8495 setRes!11358 tp!523602))))

(declare-fun condSetEmpty!11358 () Bool)

(assert (=> b!1850524 (= condSetEmpty!11358 (= (_2!11263 (h!25861 mapValue!8735)) ((as const (Array Context!1878 Bool)) false)))))

(declare-fun setIsEmpty!11359 () Bool)

(assert (=> setIsEmpty!11359 setRes!11359))

(declare-fun mapNonEmpty!8735 () Bool)

(declare-fun tp!523605 () Bool)

(assert (=> mapNonEmpty!8735 (= mapRes!8735 (and tp!523605 e!1182431))))

(declare-fun mapKey!8735 () (_ BitVec 32))

(declare-fun mapRest!8735 () (Array (_ BitVec 32) List!20532))

(assert (=> mapNonEmpty!8735 (= mapRest!8729 (store mapRest!8735 mapKey!8735 mapValue!8735))))

(assert (= (and mapNonEmpty!8729 condMapEmpty!8735) mapIsEmpty!8735))

(assert (= (and mapNonEmpty!8729 (not condMapEmpty!8735)) mapNonEmpty!8735))

(assert (= b!1850524 b!1850521))

(assert (= (and b!1850524 condSetEmpty!11358) setIsEmpty!11358))

(assert (= (and b!1850524 (not condSetEmpty!11358)) setNonEmpty!11358))

(assert (= setNonEmpty!11358 b!1850520))

(assert (= (and mapNonEmpty!8735 ((_ is Cons!20460) mapValue!8735)) b!1850524))

(assert (= b!1850522 b!1850523))

(assert (= (and b!1850522 condSetEmpty!11359) setIsEmpty!11359))

(assert (= (and b!1850522 (not condSetEmpty!11359)) setNonEmpty!11359))

(assert (= setNonEmpty!11359 b!1850519))

(assert (= (and mapNonEmpty!8729 ((_ is Cons!20460) mapDefault!8735)) b!1850522))

(declare-fun m!2277239 () Bool)

(assert (=> setNonEmpty!11358 m!2277239))

(declare-fun m!2277241 () Bool)

(assert (=> setNonEmpty!11359 m!2277241))

(declare-fun m!2277243 () Bool)

(assert (=> b!1850522 m!2277243))

(declare-fun m!2277245 () Bool)

(assert (=> b!1850524 m!2277245))

(declare-fun m!2277247 () Bool)

(assert (=> mapNonEmpty!8735 m!2277247))

(declare-fun e!1182441 () Bool)

(assert (=> mapNonEmpty!8729 (= tp!523483 e!1182441)))

(declare-fun b!1850533 () Bool)

(declare-fun e!1182440 () Bool)

(declare-fun tp!523623 () Bool)

(assert (=> b!1850533 (= e!1182440 tp!523623)))

(declare-fun setIsEmpty!11362 () Bool)

(declare-fun setRes!11362 () Bool)

(assert (=> setIsEmpty!11362 setRes!11362))

(declare-fun tp!523625 () Bool)

(declare-fun setNonEmpty!11362 () Bool)

(declare-fun setElem!11362 () Context!1878)

(declare-fun e!1182439 () Bool)

(assert (=> setNonEmpty!11362 (= setRes!11362 (and tp!523625 (inv!26858 setElem!11362) e!1182439))))

(declare-fun setRest!11362 () (InoxSet Context!1878))

(assert (=> setNonEmpty!11362 (= (_2!11263 (h!25861 mapValue!8729)) ((_ map or) (store ((as const (Array Context!1878 Bool)) false) setElem!11362 true) setRest!11362))))

(declare-fun b!1850534 () Bool)

(declare-fun tp!523627 () Bool)

(assert (=> b!1850534 (= e!1182439 tp!523627)))

(declare-fun tp!523626 () Bool)

(declare-fun tp!523624 () Bool)

(declare-fun b!1850535 () Bool)

(assert (=> b!1850535 (= e!1182441 (and tp!523626 (inv!26858 (_2!11262 (_1!11263 (h!25861 mapValue!8729)))) e!1182440 tp_is_empty!8495 setRes!11362 tp!523624))))

(declare-fun condSetEmpty!11362 () Bool)

(assert (=> b!1850535 (= condSetEmpty!11362 (= (_2!11263 (h!25861 mapValue!8729)) ((as const (Array Context!1878 Bool)) false)))))

(assert (= b!1850535 b!1850533))

(assert (= (and b!1850535 condSetEmpty!11362) setIsEmpty!11362))

(assert (= (and b!1850535 (not condSetEmpty!11362)) setNonEmpty!11362))

(assert (= setNonEmpty!11362 b!1850534))

(assert (= (and mapNonEmpty!8729 ((_ is Cons!20460) mapValue!8729)) b!1850535))

(declare-fun m!2277249 () Bool)

(assert (=> setNonEmpty!11362 m!2277249))

(declare-fun m!2277251 () Bool)

(assert (=> b!1850535 m!2277251))

(declare-fun e!1182444 () Bool)

(assert (=> b!1850374 (= tp!523485 e!1182444)))

(declare-fun b!1850536 () Bool)

(declare-fun e!1182443 () Bool)

(declare-fun tp!523628 () Bool)

(assert (=> b!1850536 (= e!1182443 tp!523628)))

(declare-fun setIsEmpty!11363 () Bool)

(declare-fun setRes!11363 () Bool)

(assert (=> setIsEmpty!11363 setRes!11363))

(declare-fun setNonEmpty!11363 () Bool)

(declare-fun tp!523630 () Bool)

(declare-fun e!1182442 () Bool)

(declare-fun setElem!11363 () Context!1878)

(assert (=> setNonEmpty!11363 (= setRes!11363 (and tp!523630 (inv!26858 setElem!11363) e!1182442))))

(declare-fun setRest!11363 () (InoxSet Context!1878))

(assert (=> setNonEmpty!11363 (= (_2!11263 (h!25861 (zeroValue!2127 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404)))))))) ((_ map or) (store ((as const (Array Context!1878 Bool)) false) setElem!11363 true) setRest!11363))))

(declare-fun b!1850537 () Bool)

(declare-fun tp!523632 () Bool)

(assert (=> b!1850537 (= e!1182442 tp!523632)))

(declare-fun tp!523629 () Bool)

(declare-fun tp!523631 () Bool)

(declare-fun b!1850538 () Bool)

(assert (=> b!1850538 (= e!1182444 (and tp!523631 (inv!26858 (_2!11262 (_1!11263 (h!25861 (zeroValue!2127 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404)))))))))) e!1182443 tp_is_empty!8495 setRes!11363 tp!523629))))

(declare-fun condSetEmpty!11363 () Bool)

(assert (=> b!1850538 (= condSetEmpty!11363 (= (_2!11263 (h!25861 (zeroValue!2127 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404)))))))) ((as const (Array Context!1878 Bool)) false)))))

(assert (= b!1850538 b!1850536))

(assert (= (and b!1850538 condSetEmpty!11363) setIsEmpty!11363))

(assert (= (and b!1850538 (not condSetEmpty!11363)) setNonEmpty!11363))

(assert (= setNonEmpty!11363 b!1850537))

(assert (= (and b!1850374 ((_ is Cons!20460) (zeroValue!2127 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404)))))))) b!1850538))

(declare-fun m!2277253 () Bool)

(assert (=> setNonEmpty!11363 m!2277253))

(declare-fun m!2277255 () Bool)

(assert (=> b!1850538 m!2277255))

(declare-fun e!1182447 () Bool)

(assert (=> b!1850374 (= tp!523489 e!1182447)))

(declare-fun b!1850539 () Bool)

(declare-fun e!1182446 () Bool)

(declare-fun tp!523633 () Bool)

(assert (=> b!1850539 (= e!1182446 tp!523633)))

(declare-fun setIsEmpty!11364 () Bool)

(declare-fun setRes!11364 () Bool)

(assert (=> setIsEmpty!11364 setRes!11364))

(declare-fun setElem!11364 () Context!1878)

(declare-fun tp!523635 () Bool)

(declare-fun setNonEmpty!11364 () Bool)

(declare-fun e!1182445 () Bool)

(assert (=> setNonEmpty!11364 (= setRes!11364 (and tp!523635 (inv!26858 setElem!11364) e!1182445))))

(declare-fun setRest!11364 () (InoxSet Context!1878))

(assert (=> setNonEmpty!11364 (= (_2!11263 (h!25861 (minValue!2127 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404)))))))) ((_ map or) (store ((as const (Array Context!1878 Bool)) false) setElem!11364 true) setRest!11364))))

(declare-fun b!1850540 () Bool)

(declare-fun tp!523637 () Bool)

(assert (=> b!1850540 (= e!1182445 tp!523637)))

(declare-fun b!1850541 () Bool)

(declare-fun tp!523636 () Bool)

(declare-fun tp!523634 () Bool)

(assert (=> b!1850541 (= e!1182447 (and tp!523636 (inv!26858 (_2!11262 (_1!11263 (h!25861 (minValue!2127 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404)))))))))) e!1182446 tp_is_empty!8495 setRes!11364 tp!523634))))

(declare-fun condSetEmpty!11364 () Bool)

(assert (=> b!1850541 (= condSetEmpty!11364 (= (_2!11263 (h!25861 (minValue!2127 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404)))))))) ((as const (Array Context!1878 Bool)) false)))))

(assert (= b!1850541 b!1850539))

(assert (= (and b!1850541 condSetEmpty!11364) setIsEmpty!11364))

(assert (= (and b!1850541 (not condSetEmpty!11364)) setNonEmpty!11364))

(assert (= setNonEmpty!11364 b!1850540))

(assert (= (and b!1850374 ((_ is Cons!20460) (minValue!2127 (v!25971 (underlying!3953 (v!25972 (underlying!3954 (cache!2195 cacheDown!404)))))))) b!1850541))

(declare-fun m!2277257 () Bool)

(assert (=> setNonEmpty!11364 m!2277257))

(declare-fun m!2277259 () Bool)

(assert (=> b!1850541 m!2277259))

(declare-fun e!1182450 () Bool)

(assert (=> b!1850387 (= tp!523492 e!1182450)))

(declare-fun b!1850542 () Bool)

(declare-fun e!1182449 () Bool)

(declare-fun tp!523638 () Bool)

(assert (=> b!1850542 (= e!1182449 tp!523638)))

(declare-fun setIsEmpty!11365 () Bool)

(declare-fun setRes!11365 () Bool)

(assert (=> setIsEmpty!11365 setRes!11365))

(declare-fun e!1182448 () Bool)

(declare-fun setElem!11365 () Context!1878)

(declare-fun setNonEmpty!11365 () Bool)

(declare-fun tp!523640 () Bool)

(assert (=> setNonEmpty!11365 (= setRes!11365 (and tp!523640 (inv!26858 setElem!11365) e!1182448))))

(declare-fun setRest!11365 () (InoxSet Context!1878))

(assert (=> setNonEmpty!11365 (= (_2!11263 (h!25861 mapDefault!8728)) ((_ map or) (store ((as const (Array Context!1878 Bool)) false) setElem!11365 true) setRest!11365))))

(declare-fun b!1850543 () Bool)

(declare-fun tp!523642 () Bool)

(assert (=> b!1850543 (= e!1182448 tp!523642)))

(declare-fun b!1850544 () Bool)

(declare-fun tp!523639 () Bool)

(declare-fun tp!523641 () Bool)

(assert (=> b!1850544 (= e!1182450 (and tp!523641 (inv!26858 (_2!11262 (_1!11263 (h!25861 mapDefault!8728)))) e!1182449 tp_is_empty!8495 setRes!11365 tp!523639))))

(declare-fun condSetEmpty!11365 () Bool)

(assert (=> b!1850544 (= condSetEmpty!11365 (= (_2!11263 (h!25861 mapDefault!8728)) ((as const (Array Context!1878 Bool)) false)))))

(assert (= b!1850544 b!1850542))

(assert (= (and b!1850544 condSetEmpty!11365) setIsEmpty!11365))

(assert (= (and b!1850544 (not condSetEmpty!11365)) setNonEmpty!11365))

(assert (= setNonEmpty!11365 b!1850543))

(assert (= (and b!1850387 ((_ is Cons!20460) mapDefault!8728)) b!1850544))

(declare-fun m!2277261 () Bool)

(assert (=> setNonEmpty!11365 m!2277261))

(declare-fun m!2277263 () Bool)

(assert (=> b!1850544 m!2277263))

(declare-fun b!1850549 () Bool)

(declare-fun e!1182453 () Bool)

(declare-fun tp!523645 () Bool)

(assert (=> b!1850549 (= e!1182453 (and tp_is_empty!8495 tp!523645))))

(assert (=> b!1850379 (= tp!523477 e!1182453)))

(assert (= (and b!1850379 ((_ is Cons!20462) (originalCharacters!4475 t!6207))) b!1850549))

(declare-fun b!1850550 () Bool)

(declare-fun e!1182454 () Bool)

(assert (=> b!1850550 (= e!1182454 tp_is_empty!8495)))

(declare-fun b!1850553 () Bool)

(declare-fun tp!523649 () Bool)

(declare-fun tp!523647 () Bool)

(assert (=> b!1850553 (= e!1182454 (and tp!523649 tp!523647))))

(assert (=> b!1850386 (= tp!523494 e!1182454)))

(declare-fun b!1850552 () Bool)

(declare-fun tp!523646 () Bool)

(assert (=> b!1850552 (= e!1182454 tp!523646)))

(declare-fun b!1850551 () Bool)

(declare-fun tp!523648 () Bool)

(declare-fun tp!523650 () Bool)

(assert (=> b!1850551 (= e!1182454 (and tp!523648 tp!523650))))

(assert (= (and b!1850386 ((_ is ElementMatch!5029) (regex!3667 (h!25866 rs!164)))) b!1850550))

(assert (= (and b!1850386 ((_ is Concat!8812) (regex!3667 (h!25866 rs!164)))) b!1850551))

(assert (= (and b!1850386 ((_ is Star!5029) (regex!3667 (h!25866 rs!164)))) b!1850552))

(assert (= (and b!1850386 ((_ is Union!5029) (regex!3667 (h!25866 rs!164)))) b!1850553))

(declare-fun b_lambda!61427 () Bool)

(assert (= b_lambda!61425 (or (and b!1850376 b_free!51689 (= (toChars!5097 (transformation!3667 (h!25866 rs!164))) (toChars!5097 (transformation!3667 (rule!5861 t!6207))))) (and b!1850382 b_free!51693) (and b!1850481 b_free!51697 (= (toChars!5097 (transformation!3667 (h!25866 (t!172317 rs!164)))) (toChars!5097 (transformation!3667 (rule!5861 t!6207))))) b_lambda!61427)))

(check-sat (not d!565735) (not setNonEmpty!11358) (not b!1850533) (not b!1850504) (not b_next!52389) b_and!143921 (not b!1850414) (not b!1850502) (not setNonEmpty!11351) (not d!565765) (not b!1850432) (not b!1850534) (not b!1850524) (not b!1850453) (not b!1850522) tp_is_empty!8495 b_and!143907 (not b!1850480) (not b!1850500) (not b_next!52395) (not d!565759) (not b!1850552) (not b!1850464) (not setNonEmpty!11344) (not setNonEmpty!11364) (not b!1850470) b_and!143923 b_and!143917 (not b!1850540) (not tb!112883) b_and!143927 (not setNonEmpty!11352) (not b_next!52397) (not b!1850519) (not b_next!52391) (not b_lambda!61427) (not d!565763) (not b_next!52387) (not b!1850499) (not setNonEmpty!11362) (not setNonEmpty!11345) (not b_next!52399) (not b!1850503) (not b!1850549) (not b!1850501) (not setNonEmpty!11346) b_and!143911 (not b!1850536) (not b!1850451) (not b!1850497) (not b_next!52401) (not b!1850496) (not b!1850469) (not mapNonEmpty!8735) (not b!1850543) (not b!1850467) (not b!1850431) (not b_next!52383) (not b!1850538) (not b!1850465) (not b!1850541) (not b!1850544) (not d!565747) (not b!1850479) (not b!1850403) (not setNonEmpty!11359) (not b!1850409) b_and!143905 (not b!1850420) (not b!1850417) (not b!1850523) (not b!1850535) b_and!143913 (not b!1850521) b_and!143925 (not b!1850542) (not b!1850400) (not b!1850537) (not b!1850553) (not b!1850408) (not b!1850539) (not b!1850452) (not mapNonEmpty!8732) (not b!1850439) (not b_next!52385) (not b!1850436) (not setNonEmpty!11365) (not d!565761) (not setNonEmpty!11363) (not d!565737) (not b!1850462) (not b!1850463) (not b!1850433) (not b!1850520) (not b!1850466) (not b!1850551) (not setNonEmpty!11353) (not b!1850498) (not b_next!52393) b_and!143909 (not b!1850468) (not d!565731))
(check-sat b_and!143907 (not b_next!52395) b_and!143927 b_and!143911 (not b_next!52401) (not b_next!52383) b_and!143905 (not b_next!52385) (not b_next!52389) b_and!143921 b_and!143923 b_and!143917 (not b_next!52397) (not b_next!52391) (not b_next!52387) (not b_next!52399) b_and!143913 b_and!143925 (not b_next!52393) b_and!143909)
