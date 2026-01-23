; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201252 () Bool)

(assert start!201252)

(declare-fun b!2042082 () Bool)

(declare-fun b_free!56933 () Bool)

(declare-fun b_next!57637 () Bool)

(assert (=> b!2042082 (= b_free!56933 (not b_next!57637))))

(declare-fun tp!606358 () Bool)

(declare-fun b_and!162873 () Bool)

(assert (=> b!2042082 (= tp!606358 b_and!162873)))

(declare-fun b!2042078 () Bool)

(declare-fun b_free!56935 () Bool)

(declare-fun b_next!57639 () Bool)

(assert (=> b!2042078 (= b_free!56935 (not b_next!57639))))

(declare-fun tp!606365 () Bool)

(declare-fun b_and!162875 () Bool)

(assert (=> b!2042078 (= tp!606365 b_and!162875)))

(declare-fun b!2042073 () Bool)

(declare-fun b_free!56937 () Bool)

(declare-fun b_next!57641 () Bool)

(assert (=> b!2042073 (= b_free!56937 (not b_next!57641))))

(declare-fun tp!606361 () Bool)

(declare-fun b_and!162877 () Bool)

(assert (=> b!2042073 (= tp!606361 b_and!162877)))

(declare-fun b_free!56939 () Bool)

(declare-fun b_next!57643 () Bool)

(assert (=> b!2042073 (= b_free!56939 (not b_next!57643))))

(declare-fun tp!606362 () Bool)

(declare-fun b_and!162879 () Bool)

(assert (=> b!2042073 (= tp!606362 b_and!162879)))

(declare-fun b!2042077 () Bool)

(declare-fun b_free!56941 () Bool)

(declare-fun b_next!57645 () Bool)

(assert (=> b!2042077 (= b_free!56941 (not b_next!57645))))

(declare-fun tp!606356 () Bool)

(declare-fun b_and!162881 () Bool)

(assert (=> b!2042077 (= tp!606356 b_and!162881)))

(declare-fun b!2042059 () Bool)

(declare-fun b_free!56943 () Bool)

(declare-fun b_next!57647 () Bool)

(assert (=> b!2042059 (= b_free!56943 (not b_next!57647))))

(declare-fun tp!606349 () Bool)

(declare-fun b_and!162883 () Bool)

(assert (=> b!2042059 (= tp!606349 b_and!162883)))

(declare-datatypes ((List!22413 0))(
  ( (Nil!22329) (Cons!22329 (h!27730 (_ BitVec 16)) (t!191527 List!22413)) )
))
(declare-datatypes ((TokenValue!4142 0))(
  ( (FloatLiteralValue!8284 (text!29439 List!22413)) (TokenValueExt!4141 (__x!13821 Int)) (Broken!20710 (value!125797 List!22413)) (Object!4225) (End!4142) (Def!4142) (Underscore!4142) (Match!4142) (Else!4142) (Error!4142) (Case!4142) (If!4142) (Extends!4142) (Abstract!4142) (Class!4142) (Val!4142) (DelimiterValue!8284 (del!4202 List!22413)) (KeywordValue!4148 (value!125798 List!22413)) (CommentValue!8284 (value!125799 List!22413)) (WhitespaceValue!8284 (value!125800 List!22413)) (IndentationValue!4142 (value!125801 List!22413)) (String!25899) (Int32!4142) (Broken!20711 (value!125802 List!22413)) (Boolean!4143) (Unit!36997) (OperatorValue!4145 (op!4202 List!22413)) (IdentifierValue!8284 (value!125803 List!22413)) (IdentifierValue!8285 (value!125804 List!22413)) (WhitespaceValue!8285 (value!125805 List!22413)) (True!8284) (False!8284) (Broken!20712 (value!125806 List!22413)) (Broken!20713 (value!125807 List!22413)) (True!8285) (RightBrace!4142) (RightBracket!4142) (Colon!4142) (Null!4142) (Comma!4142) (LeftBracket!4142) (False!8285) (LeftBrace!4142) (ImaginaryLiteralValue!4142 (text!29440 List!22413)) (StringLiteralValue!12426 (value!125808 List!22413)) (EOFValue!4142 (value!125809 List!22413)) (IdentValue!4142 (value!125810 List!22413)) (DelimiterValue!8285 (value!125811 List!22413)) (DedentValue!4142 (value!125812 List!22413)) (NewLineValue!4142 (value!125813 List!22413)) (IntegerValue!12426 (value!125814 (_ BitVec 32)) (text!29441 List!22413)) (IntegerValue!12427 (value!125815 Int) (text!29442 List!22413)) (Times!4142) (Or!4142) (Equal!4142) (Minus!4142) (Broken!20714 (value!125816 List!22413)) (And!4142) (Div!4142) (LessEqual!4142) (Mod!4142) (Concat!9575) (Not!4142) (Plus!4142) (SpaceValue!4142 (value!125817 List!22413)) (IntegerValue!12428 (value!125818 Int) (text!29443 List!22413)) (StringLiteralValue!12427 (text!29444 List!22413)) (FloatLiteralValue!8285 (text!29445 List!22413)) (BytesLiteralValue!4142 (value!125819 List!22413)) (CommentValue!8285 (value!125820 List!22413)) (StringLiteralValue!12428 (value!125821 List!22413)) (ErrorTokenValue!4142 (msg!4203 List!22413)) )
))
(declare-datatypes ((C!11012 0))(
  ( (C!11013 (val!6492 Int)) )
))
(declare-datatypes ((List!22414 0))(
  ( (Nil!22330) (Cons!22330 (h!27731 C!11012) (t!191528 List!22414)) )
))
(declare-datatypes ((IArray!14981 0))(
  ( (IArray!14982 (innerList!7548 List!22414)) )
))
(declare-datatypes ((Conc!7488 0))(
  ( (Node!7488 (left!17769 Conc!7488) (right!18099 Conc!7488) (csize!15206 Int) (cheight!7699 Int)) (Leaf!10972 (xs!10396 IArray!14981) (csize!15207 Int)) (Empty!7488) )
))
(declare-datatypes ((BalanceConc!14738 0))(
  ( (BalanceConc!14739 (c!330860 Conc!7488)) )
))
(declare-datatypes ((Regex!5433 0))(
  ( (ElementMatch!5433 (c!330861 C!11012)) (Concat!9576 (regOne!11378 Regex!5433) (regTwo!11378 Regex!5433)) (EmptyExpr!5433) (Star!5433 (reg!5762 Regex!5433)) (EmptyLang!5433) (Union!5433 (regOne!11379 Regex!5433) (regTwo!11379 Regex!5433)) )
))
(declare-datatypes ((String!25900 0))(
  ( (String!25901 (value!125822 String)) )
))
(declare-datatypes ((TokenValueInjection!7868 0))(
  ( (TokenValueInjection!7869 (toValue!5689 Int) (toChars!5548 Int)) )
))
(declare-datatypes ((Rule!7812 0))(
  ( (Rule!7813 (regex!4006 Regex!5433) (tag!4496 String!25900) (isSeparator!4006 Bool) (transformation!4006 TokenValueInjection!7868)) )
))
(declare-datatypes ((List!22415 0))(
  ( (Nil!22331) (Cons!22331 (h!27732 Rule!7812) (t!191529 List!22415)) )
))
(declare-fun rules!1563 () List!22415)

(declare-fun tp!606355 () Bool)

(declare-fun b!2042056 () Bool)

(declare-fun e!1289421 () Bool)

(declare-fun e!1289419 () Bool)

(declare-fun inv!29670 (String!25900) Bool)

(declare-fun inv!29672 (TokenValueInjection!7868) Bool)

(assert (=> b!2042056 (= e!1289421 (and tp!606355 (inv!29670 (tag!4496 (h!27732 rules!1563))) (inv!29672 (transformation!4006 (h!27732 rules!1563))) e!1289419))))

(declare-fun mapIsEmpty!9168 () Bool)

(declare-fun mapRes!9169 () Bool)

(assert (=> mapIsEmpty!9168 mapRes!9169))

(declare-fun b!2042057 () Bool)

(declare-fun e!1289407 () Bool)

(declare-fun totalInput!418 () BalanceConc!14738)

(declare-fun tp!606351 () Bool)

(declare-fun inv!29673 (Conc!7488) Bool)

(assert (=> b!2042057 (= e!1289407 (and (inv!29673 (c!330860 totalInput!418)) tp!606351))))

(declare-fun b!2042058 () Bool)

(declare-fun e!1289399 () Bool)

(declare-fun e!1289413 () Bool)

(assert (=> b!2042058 (= e!1289399 e!1289413)))

(declare-fun res!894945 () Bool)

(assert (=> b!2042058 (=> (not res!894945) (not e!1289413))))

(declare-datatypes ((Token!7562 0))(
  ( (Token!7563 (value!125823 TokenValue!4142) (rule!6242 Rule!7812) (size!17472 Int) (originalCharacters!4812 List!22414)) )
))
(declare-datatypes ((List!22416 0))(
  ( (Nil!22332) (Cons!22332 (h!27733 Token!7562) (t!191530 List!22416)) )
))
(declare-datatypes ((IArray!14983 0))(
  ( (IArray!14984 (innerList!7549 List!22416)) )
))
(declare-datatypes ((Conc!7489 0))(
  ( (Node!7489 (left!17770 Conc!7489) (right!18100 Conc!7489) (csize!15208 Int) (cheight!7700 Int)) (Leaf!10973 (xs!10397 IArray!14983) (csize!15209 Int)) (Empty!7489) )
))
(declare-datatypes ((BalanceConc!14740 0))(
  ( (BalanceConc!14741 (c!330862 Conc!7489)) )
))
(declare-fun acc!382 () BalanceConc!14740)

(declare-datatypes ((tuple2!20996 0))(
  ( (tuple2!20997 (_1!11974 BalanceConc!14740) (_2!11974 BalanceConc!14738)) )
))
(declare-fun lt!765867 () tuple2!20996)

(declare-fun lt!765868 () tuple2!20996)

(declare-fun list!9160 (BalanceConc!14740) List!22416)

(declare-fun ++!6067 (BalanceConc!14740 BalanceConc!14740) BalanceConc!14740)

(assert (=> b!2042058 (= res!894945 (= (list!9160 (_1!11974 lt!765868)) (list!9160 (++!6067 acc!382 (_1!11974 lt!765867)))))))

(declare-datatypes ((LexerInterface!3619 0))(
  ( (LexerInterfaceExt!3616 (__x!13822 Int)) (Lexer!3617) )
))
(declare-fun thiss!12889 () LexerInterface!3619)

(declare-fun input!986 () BalanceConc!14738)

(declare-fun lexRec!424 (LexerInterface!3619 List!22415 BalanceConc!14738) tuple2!20996)

(assert (=> b!2042058 (= lt!765867 (lexRec!424 thiss!12889 rules!1563 input!986))))

(assert (=> b!2042058 (= lt!765868 (lexRec!424 thiss!12889 rules!1563 totalInput!418))))

(declare-fun e!1289400 () Bool)

(declare-fun e!1289414 () Bool)

(assert (=> b!2042059 (= e!1289400 (and e!1289414 tp!606349))))

(declare-fun b!2042060 () Bool)

(declare-fun e!1289406 () Bool)

(assert (=> b!2042060 (= e!1289406 e!1289399)))

(declare-fun res!894949 () Bool)

(assert (=> b!2042060 (=> (not res!894949) (not e!1289399))))

(declare-fun lt!765873 () tuple2!20996)

(assert (=> b!2042060 (= res!894949 (= (list!9160 (_1!11974 lt!765873)) (list!9160 acc!382)))))

(declare-fun treated!60 () BalanceConc!14738)

(assert (=> b!2042060 (= lt!765873 (lexRec!424 thiss!12889 rules!1563 treated!60))))

(declare-fun mapIsEmpty!9169 () Bool)

(declare-fun mapRes!9168 () Bool)

(assert (=> mapIsEmpty!9169 mapRes!9168))

(declare-fun b!2042061 () Bool)

(declare-fun e!1289425 () Bool)

(declare-fun tp!606357 () Bool)

(assert (=> b!2042061 (= e!1289425 (and e!1289421 tp!606357))))

(declare-fun b!2042062 () Bool)

(declare-fun e!1289401 () Bool)

(declare-fun e!1289415 () Bool)

(assert (=> b!2042062 (= e!1289401 e!1289415)))

(declare-fun res!894940 () Bool)

(declare-fun e!1289398 () Bool)

(assert (=> start!201252 (=> (not res!894940) (not e!1289398))))

(get-info :version)

(assert (=> start!201252 (= res!894940 ((_ is Lexer!3617) thiss!12889))))

(assert (=> start!201252 e!1289398))

(declare-datatypes ((List!22417 0))(
  ( (Nil!22333) (Cons!22333 (h!27734 Regex!5433) (t!191531 List!22417)) )
))
(declare-datatypes ((Context!2006 0))(
  ( (Context!2007 (exprs!1503 List!22417)) )
))
(declare-datatypes ((Hashable!1897 0))(
  ( (HashableExt!1896 (__x!13823 Int)) )
))
(declare-datatypes ((tuple3!2024 0))(
  ( (tuple3!2025 (_1!11975 Regex!5433) (_2!11975 Context!2006) (_3!1476 C!11012)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!20998 0))(
  ( (tuple2!20999 (_1!11976 tuple3!2024) (_2!11976 (InoxSet Context!2006))) )
))
(declare-datatypes ((List!22418 0))(
  ( (Nil!22334) (Cons!22334 (h!27735 tuple2!20998) (t!191532 List!22418)) )
))
(declare-datatypes ((array!6838 0))(
  ( (array!6839 (arr!3037 (Array (_ BitVec 32) (_ BitVec 64))) (size!17473 (_ BitVec 32))) )
))
(declare-datatypes ((array!6840 0))(
  ( (array!6841 (arr!3038 (Array (_ BitVec 32) List!22418)) (size!17474 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3966 0))(
  ( (LongMapFixedSize!3967 (defaultEntry!2348 Int) (mask!6015 (_ BitVec 32)) (extraKeys!2231 (_ BitVec 32)) (zeroValue!2241 List!22418) (minValue!2241 List!22418) (_size!4017 (_ BitVec 32)) (_keys!2280 array!6838) (_values!2263 array!6840) (_vacant!2044 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7757 0))(
  ( (Cell!7758 (v!27056 LongMapFixedSize!3966)) )
))
(declare-datatypes ((MutLongMap!1983 0))(
  ( (LongMap!1983 (underlying!4161 Cell!7757)) (MutLongMapExt!1982 (__x!13824 Int)) )
))
(declare-datatypes ((Cell!7759 0))(
  ( (Cell!7760 (v!27057 MutLongMap!1983)) )
))
(declare-datatypes ((MutableMap!1897 0))(
  ( (MutableMapExt!1896 (__x!13825 Int)) (HashMap!1897 (underlying!4162 Cell!7759) (hashF!3820 Hashable!1897) (_size!4018 (_ BitVec 32)) (defaultValue!2059 Int)) )
))
(declare-datatypes ((CacheDown!1194 0))(
  ( (CacheDown!1195 (cache!2278 MutableMap!1897)) )
))
(declare-fun cacheDown!575 () CacheDown!1194)

(declare-fun inv!29674 (CacheDown!1194) Bool)

(assert (=> start!201252 (and (inv!29674 cacheDown!575) e!1289401)))

(assert (=> start!201252 true))

(declare-datatypes ((tuple2!21000 0))(
  ( (tuple2!21001 (_1!11977 Context!2006) (_2!11977 C!11012)) )
))
(declare-datatypes ((tuple2!21002 0))(
  ( (tuple2!21003 (_1!11978 tuple2!21000) (_2!11978 (InoxSet Context!2006))) )
))
(declare-datatypes ((List!22419 0))(
  ( (Nil!22335) (Cons!22335 (h!27736 tuple2!21002) (t!191533 List!22419)) )
))
(declare-datatypes ((array!6842 0))(
  ( (array!6843 (arr!3039 (Array (_ BitVec 32) List!22419)) (size!17475 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3968 0))(
  ( (LongMapFixedSize!3969 (defaultEntry!2349 Int) (mask!6016 (_ BitVec 32)) (extraKeys!2232 (_ BitVec 32)) (zeroValue!2242 List!22419) (minValue!2242 List!22419) (_size!4019 (_ BitVec 32)) (_keys!2281 array!6838) (_values!2264 array!6842) (_vacant!2045 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7761 0))(
  ( (Cell!7762 (v!27058 LongMapFixedSize!3968)) )
))
(declare-datatypes ((MutLongMap!1984 0))(
  ( (LongMap!1984 (underlying!4163 Cell!7761)) (MutLongMapExt!1983 (__x!13826 Int)) )
))
(declare-datatypes ((Hashable!1898 0))(
  ( (HashableExt!1897 (__x!13827 Int)) )
))
(declare-datatypes ((Cell!7763 0))(
  ( (Cell!7764 (v!27059 MutLongMap!1984)) )
))
(declare-datatypes ((MutableMap!1898 0))(
  ( (MutableMapExt!1897 (__x!13828 Int)) (HashMap!1898 (underlying!4164 Cell!7763) (hashF!3821 Hashable!1898) (_size!4020 (_ BitVec 32)) (defaultValue!2060 Int)) )
))
(declare-datatypes ((CacheUp!1194 0))(
  ( (CacheUp!1195 (cache!2279 MutableMap!1898)) )
))
(declare-fun cacheUp!562 () CacheUp!1194)

(declare-fun e!1289410 () Bool)

(declare-fun inv!29675 (CacheUp!1194) Bool)

(assert (=> start!201252 (and (inv!29675 cacheUp!562) e!1289410)))

(assert (=> start!201252 e!1289425))

(declare-fun inv!29676 (BalanceConc!14738) Bool)

(assert (=> start!201252 (and (inv!29676 totalInput!418) e!1289407)))

(declare-fun e!1289423 () Bool)

(assert (=> start!201252 (and (inv!29676 treated!60) e!1289423)))

(declare-fun e!1289412 () Bool)

(assert (=> start!201252 (and (inv!29676 input!986) e!1289412)))

(declare-fun e!1289411 () Bool)

(declare-fun inv!29677 (BalanceConc!14740) Bool)

(assert (=> start!201252 (and (inv!29677 acc!382) e!1289411)))

(declare-fun b!2042063 () Bool)

(declare-fun e!1289426 () Bool)

(assert (=> b!2042063 (= e!1289413 (not e!1289426))))

(declare-fun res!894948 () Bool)

(assert (=> b!2042063 (=> res!894948 e!1289426)))

(declare-fun lt!765864 () List!22414)

(declare-fun lt!765866 () List!22414)

(declare-fun isSuffix!468 (List!22414 List!22414) Bool)

(assert (=> b!2042063 (= res!894948 (not (isSuffix!468 lt!765864 lt!765866)))))

(declare-fun lt!765872 () List!22414)

(assert (=> b!2042063 (isSuffix!468 lt!765864 lt!765872)))

(declare-datatypes ((Unit!36998 0))(
  ( (Unit!36999) )
))
(declare-fun lt!765870 () Unit!36998)

(declare-fun lt!765871 () List!22414)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!369 (List!22414 List!22414) Unit!36998)

(assert (=> b!2042063 (= lt!765870 (lemmaConcatTwoListThenFSndIsSuffix!369 lt!765871 lt!765864))))

(declare-fun b!2042064 () Bool)

(assert (=> b!2042064 (= e!1289410 e!1289400)))

(declare-fun b!2042065 () Bool)

(declare-fun e!1289403 () Bool)

(declare-fun lt!765869 () MutLongMap!1984)

(assert (=> b!2042065 (= e!1289414 (and e!1289403 ((_ is LongMap!1984) lt!765869)))))

(assert (=> b!2042065 (= lt!765869 (v!27059 (underlying!4164 (cache!2279 cacheUp!562))))))

(declare-fun b!2042066 () Bool)

(declare-fun res!894944 () Bool)

(assert (=> b!2042066 (=> (not res!894944) (not e!1289413))))

(declare-fun valid!1583 (CacheDown!1194) Bool)

(assert (=> b!2042066 (= res!894944 (valid!1583 cacheDown!575))))

(declare-fun b!2042067 () Bool)

(declare-fun e!1289422 () Bool)

(declare-fun tp!606350 () Bool)

(assert (=> b!2042067 (= e!1289422 (and tp!606350 mapRes!9168))))

(declare-fun condMapEmpty!9169 () Bool)

(declare-fun mapDefault!9168 () List!22418)

(assert (=> b!2042067 (= condMapEmpty!9169 (= (arr!3038 (_values!2263 (v!27056 (underlying!4161 (v!27057 (underlying!4162 (cache!2278 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22418)) mapDefault!9168)))))

(declare-fun b!2042068 () Bool)

(declare-fun res!894942 () Bool)

(assert (=> b!2042068 (=> (not res!894942) (not e!1289398))))

(declare-fun rulesInvariant!3225 (LexerInterface!3619 List!22415) Bool)

(assert (=> b!2042068 (= res!894942 (rulesInvariant!3225 thiss!12889 rules!1563))))

(declare-fun b!2042069 () Bool)

(assert (=> b!2042069 (= e!1289426 true)))

(declare-datatypes ((tuple2!21004 0))(
  ( (tuple2!21005 (_1!11979 Token!7562) (_2!11979 BalanceConc!14738)) )
))
(declare-datatypes ((Option!4689 0))(
  ( (None!4688) (Some!4688 (v!27060 tuple2!21004)) )
))
(declare-datatypes ((tuple3!2026 0))(
  ( (tuple3!2027 (_1!11980 Option!4689) (_2!11980 CacheUp!1194) (_3!1477 CacheDown!1194)) )
))
(declare-fun lt!765863 () tuple3!2026)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!2 (LexerInterface!3619 List!22415 BalanceConc!14738 BalanceConc!14738 CacheUp!1194 CacheDown!1194) tuple3!2026)

(assert (=> b!2042069 (= lt!765863 (maxPrefixZipperSequenceV2MemOnlyDeriv!2 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2042070 () Bool)

(declare-fun e!1289424 () Bool)

(assert (=> b!2042070 (= e!1289403 e!1289424)))

(declare-fun b!2042071 () Bool)

(declare-fun res!894943 () Bool)

(assert (=> b!2042071 (=> (not res!894943) (not e!1289413))))

(declare-fun valid!1584 (CacheUp!1194) Bool)

(assert (=> b!2042071 (= res!894943 (valid!1584 cacheUp!562))))

(declare-fun b!2042072 () Bool)

(declare-fun e!1289402 () Bool)

(declare-fun e!1289404 () Bool)

(assert (=> b!2042072 (= e!1289402 e!1289404)))

(assert (=> b!2042073 (= e!1289419 (and tp!606361 tp!606362))))

(declare-fun b!2042074 () Bool)

(declare-fun tp!606363 () Bool)

(assert (=> b!2042074 (= e!1289412 (and (inv!29673 (c!330860 input!986)) tp!606363))))

(declare-fun b!2042075 () Bool)

(declare-fun e!1289409 () Bool)

(assert (=> b!2042075 (= e!1289409 e!1289402)))

(declare-fun mapNonEmpty!9168 () Bool)

(declare-fun tp!606348 () Bool)

(declare-fun tp!606359 () Bool)

(assert (=> mapNonEmpty!9168 (= mapRes!9168 (and tp!606348 tp!606359))))

(declare-fun mapRest!9168 () (Array (_ BitVec 32) List!22418))

(declare-fun mapValue!9169 () List!22418)

(declare-fun mapKey!9169 () (_ BitVec 32))

(assert (=> mapNonEmpty!9168 (= (arr!3038 (_values!2263 (v!27056 (underlying!4161 (v!27057 (underlying!4162 (cache!2278 cacheDown!575))))))) (store mapRest!9168 mapKey!9169 mapValue!9169))))

(declare-fun b!2042076 () Bool)

(assert (=> b!2042076 (= e!1289398 e!1289406)))

(declare-fun res!894941 () Bool)

(assert (=> b!2042076 (=> (not res!894941) (not e!1289406))))

(assert (=> b!2042076 (= res!894941 (= lt!765866 lt!765872))))

(declare-fun ++!6068 (List!22414 List!22414) List!22414)

(assert (=> b!2042076 (= lt!765872 (++!6068 lt!765871 lt!765864))))

(declare-fun list!9161 (BalanceConc!14738) List!22414)

(assert (=> b!2042076 (= lt!765866 (list!9161 totalInput!418))))

(assert (=> b!2042076 (= lt!765864 (list!9161 input!986))))

(assert (=> b!2042076 (= lt!765871 (list!9161 treated!60))))

(declare-fun tp!606353 () Bool)

(declare-fun tp!606352 () Bool)

(declare-fun e!1289405 () Bool)

(declare-fun e!1289418 () Bool)

(declare-fun array_inv!2179 (array!6838) Bool)

(declare-fun array_inv!2180 (array!6842) Bool)

(assert (=> b!2042077 (= e!1289405 (and tp!606356 tp!606352 tp!606353 (array_inv!2179 (_keys!2281 (v!27058 (underlying!4163 (v!27059 (underlying!4164 (cache!2279 cacheUp!562))))))) (array_inv!2180 (_values!2264 (v!27058 (underlying!4163 (v!27059 (underlying!4164 (cache!2279 cacheUp!562))))))) e!1289418))))

(declare-fun e!1289408 () Bool)

(assert (=> b!2042078 (= e!1289415 (and e!1289408 tp!606365))))

(declare-fun b!2042079 () Bool)

(declare-fun res!894946 () Bool)

(assert (=> b!2042079 (=> (not res!894946) (not e!1289398))))

(declare-fun isEmpty!13954 (List!22415) Bool)

(assert (=> b!2042079 (= res!894946 (not (isEmpty!13954 rules!1563)))))

(declare-fun b!2042080 () Bool)

(declare-fun tp!606367 () Bool)

(assert (=> b!2042080 (= e!1289418 (and tp!606367 mapRes!9169))))

(declare-fun condMapEmpty!9168 () Bool)

(declare-fun mapDefault!9169 () List!22419)

(assert (=> b!2042080 (= condMapEmpty!9168 (= (arr!3039 (_values!2264 (v!27058 (underlying!4163 (v!27059 (underlying!4164 (cache!2279 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22419)) mapDefault!9169)))))

(declare-fun b!2042081 () Bool)

(declare-fun lt!765865 () MutLongMap!1983)

(assert (=> b!2042081 (= e!1289408 (and e!1289409 ((_ is LongMap!1983) lt!765865)))))

(assert (=> b!2042081 (= lt!765865 (v!27057 (underlying!4162 (cache!2278 cacheDown!575))))))

(declare-fun tp!606346 () Bool)

(declare-fun tp!606347 () Bool)

(declare-fun array_inv!2181 (array!6840) Bool)

(assert (=> b!2042082 (= e!1289404 (and tp!606358 tp!606346 tp!606347 (array_inv!2179 (_keys!2280 (v!27056 (underlying!4161 (v!27057 (underlying!4162 (cache!2278 cacheDown!575))))))) (array_inv!2181 (_values!2263 (v!27056 (underlying!4161 (v!27057 (underlying!4162 (cache!2278 cacheDown!575))))))) e!1289422))))

(declare-fun b!2042083 () Bool)

(declare-fun res!894939 () Bool)

(assert (=> b!2042083 (=> (not res!894939) (not e!1289413))))

(assert (=> b!2042083 (= res!894939 (= (list!9161 (_2!11974 lt!765868)) (list!9161 (_2!11974 lt!765867))))))

(declare-fun b!2042084 () Bool)

(assert (=> b!2042084 (= e!1289424 e!1289405)))

(declare-fun mapNonEmpty!9169 () Bool)

(declare-fun tp!606354 () Bool)

(declare-fun tp!606366 () Bool)

(assert (=> mapNonEmpty!9169 (= mapRes!9169 (and tp!606354 tp!606366))))

(declare-fun mapRest!9169 () (Array (_ BitVec 32) List!22419))

(declare-fun mapValue!9168 () List!22419)

(declare-fun mapKey!9168 () (_ BitVec 32))

(assert (=> mapNonEmpty!9169 (= (arr!3039 (_values!2264 (v!27058 (underlying!4163 (v!27059 (underlying!4164 (cache!2279 cacheUp!562))))))) (store mapRest!9169 mapKey!9168 mapValue!9168))))

(declare-fun b!2042085 () Bool)

(declare-fun res!894947 () Bool)

(assert (=> b!2042085 (=> (not res!894947) (not e!1289399))))

(declare-fun isEmpty!13955 (List!22414) Bool)

(assert (=> b!2042085 (= res!894947 (isEmpty!13955 (list!9161 (_2!11974 lt!765873))))))

(declare-fun b!2042086 () Bool)

(declare-fun tp!606360 () Bool)

(declare-fun inv!29678 (Conc!7489) Bool)

(assert (=> b!2042086 (= e!1289411 (and (inv!29678 (c!330862 acc!382)) tp!606360))))

(declare-fun b!2042087 () Bool)

(declare-fun tp!606364 () Bool)

(assert (=> b!2042087 (= e!1289423 (and (inv!29673 (c!330860 treated!60)) tp!606364))))

(assert (= (and start!201252 res!894940) b!2042079))

(assert (= (and b!2042079 res!894946) b!2042068))

(assert (= (and b!2042068 res!894942) b!2042076))

(assert (= (and b!2042076 res!894941) b!2042060))

(assert (= (and b!2042060 res!894949) b!2042085))

(assert (= (and b!2042085 res!894947) b!2042058))

(assert (= (and b!2042058 res!894945) b!2042083))

(assert (= (and b!2042083 res!894939) b!2042071))

(assert (= (and b!2042071 res!894943) b!2042066))

(assert (= (and b!2042066 res!894944) b!2042063))

(assert (= (and b!2042063 (not res!894948)) b!2042069))

(assert (= (and b!2042067 condMapEmpty!9169) mapIsEmpty!9169))

(assert (= (and b!2042067 (not condMapEmpty!9169)) mapNonEmpty!9168))

(assert (= b!2042082 b!2042067))

(assert (= b!2042072 b!2042082))

(assert (= b!2042075 b!2042072))

(assert (= (and b!2042081 ((_ is LongMap!1983) (v!27057 (underlying!4162 (cache!2278 cacheDown!575))))) b!2042075))

(assert (= b!2042078 b!2042081))

(assert (= (and b!2042062 ((_ is HashMap!1897) (cache!2278 cacheDown!575))) b!2042078))

(assert (= start!201252 b!2042062))

(assert (= (and b!2042080 condMapEmpty!9168) mapIsEmpty!9168))

(assert (= (and b!2042080 (not condMapEmpty!9168)) mapNonEmpty!9169))

(assert (= b!2042077 b!2042080))

(assert (= b!2042084 b!2042077))

(assert (= b!2042070 b!2042084))

(assert (= (and b!2042065 ((_ is LongMap!1984) (v!27059 (underlying!4164 (cache!2279 cacheUp!562))))) b!2042070))

(assert (= b!2042059 b!2042065))

(assert (= (and b!2042064 ((_ is HashMap!1898) (cache!2279 cacheUp!562))) b!2042059))

(assert (= start!201252 b!2042064))

(assert (= b!2042056 b!2042073))

(assert (= b!2042061 b!2042056))

(assert (= (and start!201252 ((_ is Cons!22331) rules!1563)) b!2042061))

(assert (= start!201252 b!2042057))

(assert (= start!201252 b!2042087))

(assert (= start!201252 b!2042074))

(assert (= start!201252 b!2042086))

(declare-fun m!2486099 () Bool)

(assert (=> b!2042086 m!2486099))

(declare-fun m!2486101 () Bool)

(assert (=> b!2042076 m!2486101))

(declare-fun m!2486103 () Bool)

(assert (=> b!2042076 m!2486103))

(declare-fun m!2486105 () Bool)

(assert (=> b!2042076 m!2486105))

(declare-fun m!2486107 () Bool)

(assert (=> b!2042076 m!2486107))

(declare-fun m!2486109 () Bool)

(assert (=> b!2042074 m!2486109))

(declare-fun m!2486111 () Bool)

(assert (=> b!2042058 m!2486111))

(declare-fun m!2486113 () Bool)

(assert (=> b!2042058 m!2486113))

(declare-fun m!2486115 () Bool)

(assert (=> b!2042058 m!2486115))

(assert (=> b!2042058 m!2486113))

(declare-fun m!2486117 () Bool)

(assert (=> b!2042058 m!2486117))

(declare-fun m!2486119 () Bool)

(assert (=> b!2042058 m!2486119))

(declare-fun m!2486121 () Bool)

(assert (=> b!2042056 m!2486121))

(declare-fun m!2486123 () Bool)

(assert (=> b!2042056 m!2486123))

(declare-fun m!2486125 () Bool)

(assert (=> b!2042087 m!2486125))

(declare-fun m!2486127 () Bool)

(assert (=> b!2042082 m!2486127))

(declare-fun m!2486129 () Bool)

(assert (=> b!2042082 m!2486129))

(declare-fun m!2486131 () Bool)

(assert (=> b!2042068 m!2486131))

(declare-fun m!2486133 () Bool)

(assert (=> start!201252 m!2486133))

(declare-fun m!2486135 () Bool)

(assert (=> start!201252 m!2486135))

(declare-fun m!2486137 () Bool)

(assert (=> start!201252 m!2486137))

(declare-fun m!2486139 () Bool)

(assert (=> start!201252 m!2486139))

(declare-fun m!2486141 () Bool)

(assert (=> start!201252 m!2486141))

(declare-fun m!2486143 () Bool)

(assert (=> start!201252 m!2486143))

(declare-fun m!2486145 () Bool)

(assert (=> b!2042083 m!2486145))

(declare-fun m!2486147 () Bool)

(assert (=> b!2042083 m!2486147))

(declare-fun m!2486149 () Bool)

(assert (=> b!2042060 m!2486149))

(declare-fun m!2486151 () Bool)

(assert (=> b!2042060 m!2486151))

(declare-fun m!2486153 () Bool)

(assert (=> b!2042060 m!2486153))

(declare-fun m!2486155 () Bool)

(assert (=> b!2042085 m!2486155))

(assert (=> b!2042085 m!2486155))

(declare-fun m!2486157 () Bool)

(assert (=> b!2042085 m!2486157))

(declare-fun m!2486159 () Bool)

(assert (=> mapNonEmpty!9169 m!2486159))

(declare-fun m!2486161 () Bool)

(assert (=> b!2042057 m!2486161))

(declare-fun m!2486163 () Bool)

(assert (=> b!2042071 m!2486163))

(declare-fun m!2486165 () Bool)

(assert (=> b!2042069 m!2486165))

(declare-fun m!2486167 () Bool)

(assert (=> b!2042079 m!2486167))

(declare-fun m!2486169 () Bool)

(assert (=> b!2042066 m!2486169))

(declare-fun m!2486171 () Bool)

(assert (=> mapNonEmpty!9168 m!2486171))

(declare-fun m!2486173 () Bool)

(assert (=> b!2042063 m!2486173))

(declare-fun m!2486175 () Bool)

(assert (=> b!2042063 m!2486175))

(declare-fun m!2486177 () Bool)

(assert (=> b!2042063 m!2486177))

(declare-fun m!2486179 () Bool)

(assert (=> b!2042077 m!2486179))

(declare-fun m!2486181 () Bool)

(assert (=> b!2042077 m!2486181))

(check-sat b_and!162881 (not b_next!57641) (not b!2042083) b_and!162877 b_and!162875 (not b!2042066) (not b!2042086) (not b!2042079) (not b!2042085) (not b_next!57637) (not start!201252) (not b_next!57639) (not b_next!57647) (not b!2042068) (not mapNonEmpty!9168) b_and!162873 (not b!2042071) (not b!2042060) b_and!162883 (not b!2042067) (not b!2042056) (not b!2042077) (not mapNonEmpty!9169) (not b!2042074) (not b_next!57643) (not b!2042061) (not b!2042080) (not b!2042069) (not b!2042058) (not b!2042057) b_and!162879 (not b!2042082) (not b!2042087) (not b!2042063) (not b_next!57645) (not b!2042076))
(check-sat b_and!162881 (not b_next!57647) (not b_next!57641) b_and!162873 b_and!162883 b_and!162877 b_and!162875 (not b_next!57643) (not b_next!57637) b_and!162879 (not b_next!57645) (not b_next!57639))
