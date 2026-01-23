; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201318 () Bool)

(assert start!201318)

(declare-fun b!2043135 () Bool)

(declare-fun b_free!57033 () Bool)

(declare-fun b_next!57737 () Bool)

(assert (=> b!2043135 (= b_free!57033 (not b_next!57737))))

(declare-fun tp!607042 () Bool)

(declare-fun b_and!162973 () Bool)

(assert (=> b!2043135 (= tp!607042 b_and!162973)))

(declare-fun b!2043134 () Bool)

(declare-fun b_free!57035 () Bool)

(declare-fun b_next!57739 () Bool)

(assert (=> b!2043134 (= b_free!57035 (not b_next!57739))))

(declare-fun tp!607059 () Bool)

(declare-fun b_and!162975 () Bool)

(assert (=> b!2043134 (= tp!607059 b_and!162975)))

(declare-fun b_free!57037 () Bool)

(declare-fun b_next!57741 () Bool)

(assert (=> b!2043134 (= b_free!57037 (not b_next!57741))))

(declare-fun tp!607051 () Bool)

(declare-fun b_and!162977 () Bool)

(assert (=> b!2043134 (= tp!607051 b_and!162977)))

(declare-fun b!2043148 () Bool)

(declare-fun b_free!57039 () Bool)

(declare-fun b_next!57743 () Bool)

(assert (=> b!2043148 (= b_free!57039 (not b_next!57743))))

(declare-fun tp!607050 () Bool)

(declare-fun b_and!162979 () Bool)

(assert (=> b!2043148 (= tp!607050 b_and!162979)))

(declare-fun b!2043146 () Bool)

(declare-fun b_free!57041 () Bool)

(declare-fun b_next!57745 () Bool)

(assert (=> b!2043146 (= b_free!57041 (not b_next!57745))))

(declare-fun tp!607039 () Bool)

(declare-fun b_and!162981 () Bool)

(assert (=> b!2043146 (= tp!607039 b_and!162981)))

(declare-fun b!2043139 () Bool)

(declare-fun b_free!57043 () Bool)

(declare-fun b_next!57747 () Bool)

(assert (=> b!2043139 (= b_free!57043 (not b_next!57747))))

(declare-fun tp!607057 () Bool)

(declare-fun b_and!162983 () Bool)

(assert (=> b!2043139 (= tp!607057 b_and!162983)))

(declare-fun b!2043116 () Bool)

(declare-fun e!1290325 () Bool)

(declare-fun tp!607053 () Bool)

(declare-fun mapRes!9223 () Bool)

(assert (=> b!2043116 (= e!1290325 (and tp!607053 mapRes!9223))))

(declare-fun condMapEmpty!9223 () Bool)

(declare-datatypes ((C!11028 0))(
  ( (C!11029 (val!6500 Int)) )
))
(declare-datatypes ((Regex!5441 0))(
  ( (ElementMatch!5441 (c!330912 C!11028)) (Concat!9590 (regOne!11394 Regex!5441) (regTwo!11394 Regex!5441)) (EmptyExpr!5441) (Star!5441 (reg!5770 Regex!5441)) (EmptyLang!5441) (Union!5441 (regOne!11395 Regex!5441) (regTwo!11395 Regex!5441)) )
))
(declare-datatypes ((List!22465 0))(
  ( (Nil!22381) (Cons!22381 (h!27782 Regex!5441) (t!191579 List!22465)) )
))
(declare-datatypes ((Context!2022 0))(
  ( (Context!2023 (exprs!1511 List!22465)) )
))
(declare-datatypes ((Hashable!1912 0))(
  ( (HashableExt!1911 (__x!13880 Int)) )
))
(declare-datatypes ((tuple3!2052 0))(
  ( (tuple3!2053 (_1!12024 Regex!5441) (_2!12024 Context!2022) (_3!1490 C!11028)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21068 0))(
  ( (tuple2!21069 (_1!12025 tuple3!2052) (_2!12025 (InoxSet Context!2022))) )
))
(declare-datatypes ((List!22466 0))(
  ( (Nil!22382) (Cons!22382 (h!27783 tuple2!21068) (t!191580 List!22466)) )
))
(declare-datatypes ((array!6887 0))(
  ( (array!6888 (arr!3060 (Array (_ BitVec 32) (_ BitVec 64))) (size!17505 (_ BitVec 32))) )
))
(declare-datatypes ((array!6889 0))(
  ( (array!6890 (arr!3061 (Array (_ BitVec 32) List!22466)) (size!17506 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3996 0))(
  ( (LongMapFixedSize!3997 (defaultEntry!2363 Int) (mask!6034 (_ BitVec 32)) (extraKeys!2246 (_ BitVec 32)) (zeroValue!2256 List!22466) (minValue!2256 List!22466) (_size!4047 (_ BitVec 32)) (_keys!2295 array!6887) (_values!2278 array!6889) (_vacant!2059 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7817 0))(
  ( (Cell!7818 (v!27092 LongMapFixedSize!3996)) )
))
(declare-datatypes ((MutLongMap!1998 0))(
  ( (LongMap!1998 (underlying!4191 Cell!7817)) (MutLongMapExt!1997 (__x!13881 Int)) )
))
(declare-datatypes ((Cell!7819 0))(
  ( (Cell!7820 (v!27093 MutLongMap!1998)) )
))
(declare-datatypes ((MutableMap!1912 0))(
  ( (MutableMapExt!1911 (__x!13882 Int)) (HashMap!1912 (underlying!4192 Cell!7819) (hashF!3835 Hashable!1912) (_size!4048 (_ BitVec 32)) (defaultValue!2074 Int)) )
))
(declare-datatypes ((CacheDown!1210 0))(
  ( (CacheDown!1211 (cache!2293 MutableMap!1912)) )
))
(declare-fun cacheDown!575 () CacheDown!1210)

(declare-fun mapDefault!9223 () List!22466)

(assert (=> b!2043116 (= condMapEmpty!9223 (= (arr!3061 (_values!2278 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22466)) mapDefault!9223)))))

(declare-fun b!2043117 () Bool)

(declare-fun e!1290322 () Bool)

(declare-datatypes ((List!22467 0))(
  ( (Nil!22383) (Cons!22383 (h!27784 (_ BitVec 16)) (t!191581 List!22467)) )
))
(declare-datatypes ((TokenValue!4149 0))(
  ( (FloatLiteralValue!8298 (text!29488 List!22467)) (TokenValueExt!4148 (__x!13883 Int)) (Broken!20745 (value!125998 List!22467)) (Object!4232) (End!4149) (Def!4149) (Underscore!4149) (Match!4149) (Else!4149) (Error!4149) (Case!4149) (If!4149) (Extends!4149) (Abstract!4149) (Class!4149) (Val!4149) (DelimiterValue!8298 (del!4209 List!22467)) (KeywordValue!4155 (value!125999 List!22467)) (CommentValue!8298 (value!126000 List!22467)) (WhitespaceValue!8298 (value!126001 List!22467)) (IndentationValue!4149 (value!126002 List!22467)) (String!25936) (Int32!4149) (Broken!20746 (value!126003 List!22467)) (Boolean!4150) (Unit!37016) (OperatorValue!4152 (op!4209 List!22467)) (IdentifierValue!8298 (value!126004 List!22467)) (IdentifierValue!8299 (value!126005 List!22467)) (WhitespaceValue!8299 (value!126006 List!22467)) (True!8298) (False!8298) (Broken!20747 (value!126007 List!22467)) (Broken!20748 (value!126008 List!22467)) (True!8299) (RightBrace!4149) (RightBracket!4149) (Colon!4149) (Null!4149) (Comma!4149) (LeftBracket!4149) (False!8299) (LeftBrace!4149) (ImaginaryLiteralValue!4149 (text!29489 List!22467)) (StringLiteralValue!12447 (value!126009 List!22467)) (EOFValue!4149 (value!126010 List!22467)) (IdentValue!4149 (value!126011 List!22467)) (DelimiterValue!8299 (value!126012 List!22467)) (DedentValue!4149 (value!126013 List!22467)) (NewLineValue!4149 (value!126014 List!22467)) (IntegerValue!12447 (value!126015 (_ BitVec 32)) (text!29490 List!22467)) (IntegerValue!12448 (value!126016 Int) (text!29491 List!22467)) (Times!4149) (Or!4149) (Equal!4149) (Minus!4149) (Broken!20749 (value!126017 List!22467)) (And!4149) (Div!4149) (LessEqual!4149) (Mod!4149) (Concat!9591) (Not!4149) (Plus!4149) (SpaceValue!4149 (value!126018 List!22467)) (IntegerValue!12449 (value!126019 Int) (text!29492 List!22467)) (StringLiteralValue!12448 (text!29493 List!22467)) (FloatLiteralValue!8299 (text!29494 List!22467)) (BytesLiteralValue!4149 (value!126020 List!22467)) (CommentValue!8299 (value!126021 List!22467)) (StringLiteralValue!12449 (value!126022 List!22467)) (ErrorTokenValue!4149 (msg!4210 List!22467)) )
))
(declare-datatypes ((List!22468 0))(
  ( (Nil!22384) (Cons!22384 (h!27785 C!11028) (t!191582 List!22468)) )
))
(declare-datatypes ((IArray!15009 0))(
  ( (IArray!15010 (innerList!7562 List!22468)) )
))
(declare-datatypes ((String!25937 0))(
  ( (String!25938 (value!126023 String)) )
))
(declare-datatypes ((Conc!7502 0))(
  ( (Node!7502 (left!17789 Conc!7502) (right!18119 Conc!7502) (csize!15234 Int) (cheight!7713 Int)) (Leaf!10990 (xs!10410 IArray!15009) (csize!15235 Int)) (Empty!7502) )
))
(declare-datatypes ((BalanceConc!14766 0))(
  ( (BalanceConc!14767 (c!330913 Conc!7502)) )
))
(declare-datatypes ((TokenValueInjection!7882 0))(
  ( (TokenValueInjection!7883 (toValue!5696 Int) (toChars!5555 Int)) )
))
(declare-datatypes ((Rule!7826 0))(
  ( (Rule!7827 (regex!4013 Regex!5441) (tag!4503 String!25937) (isSeparator!4013 Bool) (transformation!4013 TokenValueInjection!7882)) )
))
(declare-datatypes ((Token!7576 0))(
  ( (Token!7577 (value!126024 TokenValue!4149) (rule!6249 Rule!7826) (size!17507 Int) (originalCharacters!4819 List!22468)) )
))
(declare-datatypes ((List!22469 0))(
  ( (Nil!22385) (Cons!22385 (h!27786 Token!7576) (t!191583 List!22469)) )
))
(declare-datatypes ((IArray!15011 0))(
  ( (IArray!15012 (innerList!7563 List!22469)) )
))
(declare-datatypes ((Conc!7503 0))(
  ( (Node!7503 (left!17790 Conc!7503) (right!18120 Conc!7503) (csize!15236 Int) (cheight!7714 Int)) (Leaf!10991 (xs!10411 IArray!15011) (csize!15237 Int)) (Empty!7503) )
))
(declare-datatypes ((BalanceConc!14768 0))(
  ( (BalanceConc!14769 (c!330914 Conc!7503)) )
))
(declare-fun acc!382 () BalanceConc!14768)

(declare-fun tp!607047 () Bool)

(declare-fun inv!29724 (Conc!7503) Bool)

(assert (=> b!2043117 (= e!1290322 (and (inv!29724 (c!330914 acc!382)) tp!607047))))

(declare-fun mapNonEmpty!9222 () Bool)

(declare-fun tp!607058 () Bool)

(declare-fun tp!607046 () Bool)

(assert (=> mapNonEmpty!9222 (= mapRes!9223 (and tp!607058 tp!607046))))

(declare-fun mapKey!9223 () (_ BitVec 32))

(declare-fun mapRest!9223 () (Array (_ BitVec 32) List!22466))

(declare-fun mapValue!9223 () List!22466)

(assert (=> mapNonEmpty!9222 (= (arr!3061 (_values!2278 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575))))))) (store mapRest!9223 mapKey!9223 mapValue!9223))))

(declare-fun b!2043118 () Bool)

(declare-fun e!1290319 () Bool)

(declare-fun totalInput!418 () BalanceConc!14766)

(declare-fun tp!607055 () Bool)

(declare-fun inv!29725 (Conc!7502) Bool)

(assert (=> b!2043118 (= e!1290319 (and (inv!29725 (c!330913 totalInput!418)) tp!607055))))

(declare-fun b!2043119 () Bool)

(declare-fun e!1290331 () Bool)

(declare-fun tp!607041 () Bool)

(declare-fun mapRes!9222 () Bool)

(assert (=> b!2043119 (= e!1290331 (and tp!607041 mapRes!9222))))

(declare-fun condMapEmpty!9222 () Bool)

(declare-datatypes ((tuple2!21070 0))(
  ( (tuple2!21071 (_1!12026 Context!2022) (_2!12026 C!11028)) )
))
(declare-datatypes ((tuple2!21072 0))(
  ( (tuple2!21073 (_1!12027 tuple2!21070) (_2!12027 (InoxSet Context!2022))) )
))
(declare-datatypes ((List!22470 0))(
  ( (Nil!22386) (Cons!22386 (h!27787 tuple2!21072) (t!191584 List!22470)) )
))
(declare-datatypes ((array!6891 0))(
  ( (array!6892 (arr!3062 (Array (_ BitVec 32) List!22470)) (size!17508 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3998 0))(
  ( (LongMapFixedSize!3999 (defaultEntry!2364 Int) (mask!6035 (_ BitVec 32)) (extraKeys!2247 (_ BitVec 32)) (zeroValue!2257 List!22470) (minValue!2257 List!22470) (_size!4049 (_ BitVec 32)) (_keys!2296 array!6887) (_values!2279 array!6891) (_vacant!2060 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7821 0))(
  ( (Cell!7822 (v!27094 LongMapFixedSize!3998)) )
))
(declare-datatypes ((MutLongMap!1999 0))(
  ( (LongMap!1999 (underlying!4193 Cell!7821)) (MutLongMapExt!1998 (__x!13884 Int)) )
))
(declare-datatypes ((Hashable!1913 0))(
  ( (HashableExt!1912 (__x!13885 Int)) )
))
(declare-datatypes ((Cell!7823 0))(
  ( (Cell!7824 (v!27095 MutLongMap!1999)) )
))
(declare-datatypes ((MutableMap!1913 0))(
  ( (MutableMapExt!1912 (__x!13886 Int)) (HashMap!1913 (underlying!4194 Cell!7823) (hashF!3836 Hashable!1913) (_size!4050 (_ BitVec 32)) (defaultValue!2075 Int)) )
))
(declare-datatypes ((CacheUp!1208 0))(
  ( (CacheUp!1209 (cache!2294 MutableMap!1913)) )
))
(declare-fun cacheUp!562 () CacheUp!1208)

(declare-fun mapDefault!9222 () List!22470)

(assert (=> b!2043119 (= condMapEmpty!9222 (= (arr!3062 (_values!2279 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22470)) mapDefault!9222)))))

(declare-fun mapNonEmpty!9223 () Bool)

(declare-fun tp!607044 () Bool)

(declare-fun tp!607052 () Bool)

(assert (=> mapNonEmpty!9223 (= mapRes!9222 (and tp!607044 tp!607052))))

(declare-fun mapRest!9222 () (Array (_ BitVec 32) List!22470))

(declare-fun mapKey!9222 () (_ BitVec 32))

(declare-fun mapValue!9222 () List!22470)

(assert (=> mapNonEmpty!9223 (= (arr!3062 (_values!2279 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562))))))) (store mapRest!9222 mapKey!9222 mapValue!9222))))

(declare-fun b!2043121 () Bool)

(declare-fun res!895314 () Bool)

(declare-fun e!1290311 () Bool)

(assert (=> b!2043121 (=> (not res!895314) (not e!1290311))))

(declare-datatypes ((List!22471 0))(
  ( (Nil!22387) (Cons!22387 (h!27788 Rule!7826) (t!191585 List!22471)) )
))
(declare-fun rules!1563 () List!22471)

(declare-fun isEmpty!13964 (List!22471) Bool)

(assert (=> b!2043121 (= res!895314 (not (isEmpty!13964 rules!1563)))))

(declare-fun b!2043122 () Bool)

(declare-fun e!1290314 () Bool)

(declare-fun e!1290316 () Bool)

(assert (=> b!2043122 (= e!1290314 e!1290316)))

(declare-fun b!2043123 () Bool)

(declare-fun e!1290335 () Bool)

(declare-fun e!1290332 () Bool)

(assert (=> b!2043123 (= e!1290335 e!1290332)))

(declare-fun b!2043124 () Bool)

(declare-fun e!1290318 () Bool)

(declare-fun e!1290321 () Bool)

(assert (=> b!2043124 (= e!1290318 e!1290321)))

(declare-fun res!895315 () Bool)

(assert (=> b!2043124 (=> res!895315 e!1290321)))

(declare-datatypes ((LexerInterface!3626 0))(
  ( (LexerInterfaceExt!3623 (__x!13887 Int)) (Lexer!3624) )
))
(declare-fun thiss!12889 () LexerInterface!3626)

(declare-fun rulesValidInductive!1395 (LexerInterface!3626 List!22471) Bool)

(assert (=> b!2043124 (= res!895315 (not (rulesValidInductive!1395 thiss!12889 rules!1563)))))

(declare-datatypes ((tuple2!21074 0))(
  ( (tuple2!21075 (_1!12028 Token!7576) (_2!12028 BalanceConc!14766)) )
))
(declare-datatypes ((Option!4695 0))(
  ( (None!4694) (Some!4694 (v!27096 tuple2!21074)) )
))
(declare-datatypes ((tuple3!2054 0))(
  ( (tuple3!2055 (_1!12029 Option!4695) (_2!12029 CacheUp!1208) (_3!1491 CacheDown!1210)) )
))
(declare-fun lt!766225 () tuple3!2054)

(declare-datatypes ((tuple2!21076 0))(
  ( (tuple2!21077 (_1!12030 BalanceConc!14768) (_2!12030 BalanceConc!14766)) )
))
(declare-fun lt!766222 () tuple2!21076)

(declare-fun lexRec!431 (LexerInterface!3626 List!22471 BalanceConc!14766) tuple2!21076)

(assert (=> b!2043124 (= lt!766222 (lexRec!431 thiss!12889 rules!1563 (_2!12028 (v!27096 (_1!12029 lt!766225)))))))

(declare-fun b!2043125 () Bool)

(declare-fun e!1290329 () Bool)

(declare-fun e!1290308 () Bool)

(declare-fun lt!766219 () MutLongMap!1998)

(get-info :version)

(assert (=> b!2043125 (= e!1290329 (and e!1290308 ((_ is LongMap!1998) lt!766219)))))

(assert (=> b!2043125 (= lt!766219 (v!27093 (underlying!4192 (cache!2293 cacheDown!575))))))

(declare-fun b!2043126 () Bool)

(declare-fun e!1290313 () Bool)

(declare-fun e!1290327 () Bool)

(assert (=> b!2043126 (= e!1290313 e!1290327)))

(declare-fun b!2043127 () Bool)

(declare-fun e!1290324 () Bool)

(assert (=> b!2043127 (= e!1290311 e!1290324)))

(declare-fun res!895310 () Bool)

(assert (=> b!2043127 (=> (not res!895310) (not e!1290324))))

(declare-fun lt!766214 () List!22468)

(declare-fun lt!766224 () List!22468)

(assert (=> b!2043127 (= res!895310 (= lt!766214 lt!766224))))

(declare-fun lt!766223 () List!22468)

(declare-fun lt!766221 () List!22468)

(declare-fun ++!6079 (List!22468 List!22468) List!22468)

(assert (=> b!2043127 (= lt!766224 (++!6079 lt!766223 lt!766221))))

(declare-fun list!9174 (BalanceConc!14766) List!22468)

(assert (=> b!2043127 (= lt!766214 (list!9174 totalInput!418))))

(declare-fun input!986 () BalanceConc!14766)

(assert (=> b!2043127 (= lt!766221 (list!9174 input!986))))

(declare-fun treated!60 () BalanceConc!14766)

(assert (=> b!2043127 (= lt!766223 (list!9174 treated!60))))

(declare-fun b!2043128 () Bool)

(declare-fun e!1290323 () Bool)

(assert (=> b!2043128 (= e!1290324 e!1290323)))

(declare-fun res!895321 () Bool)

(assert (=> b!2043128 (=> (not res!895321) (not e!1290323))))

(declare-fun lt!766220 () tuple2!21076)

(declare-fun list!9175 (BalanceConc!14768) List!22469)

(assert (=> b!2043128 (= res!895321 (= (list!9175 (_1!12030 lt!766220)) (list!9175 acc!382)))))

(assert (=> b!2043128 (= lt!766220 (lexRec!431 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2043129 () Bool)

(declare-fun res!895319 () Bool)

(assert (=> b!2043129 (=> (not res!895319) (not e!1290323))))

(declare-fun isEmpty!13965 (List!22468) Bool)

(assert (=> b!2043129 (= res!895319 (isEmpty!13965 (list!9174 (_2!12030 lt!766220))))))

(declare-fun mapIsEmpty!9222 () Bool)

(assert (=> mapIsEmpty!9222 mapRes!9222))

(declare-fun b!2043130 () Bool)

(declare-fun e!1290330 () Bool)

(declare-fun valid!1594 (CacheDown!1210) Bool)

(assert (=> b!2043130 (= e!1290330 (valid!1594 (_3!1491 lt!766225)))))

(declare-fun b!2043131 () Bool)

(declare-fun e!1290309 () Bool)

(declare-fun tp!607049 () Bool)

(assert (=> b!2043131 (= e!1290309 (and (inv!29725 (c!330913 treated!60)) tp!607049))))

(declare-fun b!2043132 () Bool)

(assert (=> b!2043132 (= e!1290308 e!1290313)))

(declare-fun b!2043120 () Bool)

(declare-fun e!1290334 () Bool)

(declare-fun e!1290307 () Bool)

(declare-fun lt!766217 () MutLongMap!1999)

(assert (=> b!2043120 (= e!1290334 (and e!1290307 ((_ is LongMap!1999) lt!766217)))))

(assert (=> b!2043120 (= lt!766217 (v!27095 (underlying!4194 (cache!2294 cacheUp!562))))))

(declare-fun res!895312 () Bool)

(assert (=> start!201318 (=> (not res!895312) (not e!1290311))))

(assert (=> start!201318 (= res!895312 ((_ is Lexer!3624) thiss!12889))))

(assert (=> start!201318 e!1290311))

(declare-fun inv!29726 (CacheDown!1210) Bool)

(assert (=> start!201318 (and (inv!29726 cacheDown!575) e!1290335)))

(assert (=> start!201318 true))

(declare-fun inv!29727 (CacheUp!1208) Bool)

(assert (=> start!201318 (and (inv!29727 cacheUp!562) e!1290314)))

(declare-fun e!1290336 () Bool)

(assert (=> start!201318 e!1290336))

(declare-fun inv!29728 (BalanceConc!14766) Bool)

(assert (=> start!201318 (and (inv!29728 totalInput!418) e!1290319)))

(assert (=> start!201318 (and (inv!29728 treated!60) e!1290309)))

(declare-fun e!1290312 () Bool)

(assert (=> start!201318 (and (inv!29728 input!986) e!1290312)))

(declare-fun inv!29729 (BalanceConc!14768) Bool)

(assert (=> start!201318 (and (inv!29729 acc!382) e!1290322)))

(declare-fun b!2043133 () Bool)

(declare-fun res!895318 () Bool)

(assert (=> b!2043133 (=> (not res!895318) (not e!1290311))))

(declare-fun rulesInvariant!3229 (LexerInterface!3626 List!22471) Bool)

(assert (=> b!2043133 (= res!895318 (rulesInvariant!3229 thiss!12889 rules!1563))))

(declare-fun e!1290315 () Bool)

(assert (=> b!2043134 (= e!1290315 (and tp!607059 tp!607051))))

(declare-fun e!1290338 () Bool)

(declare-fun tp!607045 () Bool)

(declare-fun tp!607054 () Bool)

(declare-fun array_inv!2198 (array!6887) Bool)

(declare-fun array_inv!2199 (array!6891) Bool)

(assert (=> b!2043135 (= e!1290338 (and tp!607042 tp!607045 tp!607054 (array_inv!2198 (_keys!2296 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562))))))) (array_inv!2199 (_values!2279 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562))))))) e!1290331))))

(declare-fun b!2043136 () Bool)

(declare-fun e!1290320 () Bool)

(declare-fun e!1290317 () Bool)

(assert (=> b!2043136 (= e!1290320 (not e!1290317))))

(declare-fun res!895313 () Bool)

(assert (=> b!2043136 (=> res!895313 e!1290317)))

(declare-fun isSuffix!474 (List!22468 List!22468) Bool)

(assert (=> b!2043136 (= res!895313 (not (isSuffix!474 lt!766221 lt!766214)))))

(assert (=> b!2043136 (isSuffix!474 lt!766221 lt!766224)))

(declare-datatypes ((Unit!37017 0))(
  ( (Unit!37018) )
))
(declare-fun lt!766216 () Unit!37017)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!375 (List!22468 List!22468) Unit!37017)

(assert (=> b!2043136 (= lt!766216 (lemmaConcatTwoListThenFSndIsSuffix!375 lt!766223 lt!766221))))

(declare-fun b!2043137 () Bool)

(declare-fun e!1290333 () Bool)

(declare-fun tp!607056 () Bool)

(declare-fun inv!29720 (String!25937) Bool)

(declare-fun inv!29730 (TokenValueInjection!7882) Bool)

(assert (=> b!2043137 (= e!1290333 (and tp!607056 (inv!29720 (tag!4503 (h!27788 rules!1563))) (inv!29730 (transformation!4013 (h!27788 rules!1563))) e!1290315))))

(declare-fun b!2043138 () Bool)

(assert (=> b!2043138 (= e!1290317 e!1290318)))

(declare-fun res!895323 () Bool)

(assert (=> b!2043138 (=> res!895323 e!1290318)))

(assert (=> b!2043138 (= res!895323 (not ((_ is Some!4694) (_1!12029 lt!766225))))))

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!6 (LexerInterface!3626 List!22471 BalanceConc!14766 BalanceConc!14766 CacheUp!1208 CacheDown!1210) tuple3!2054)

(assert (=> b!2043138 (= lt!766225 (maxPrefixZipperSequenceV2MemOnlyDeriv!6 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(assert (=> b!2043139 (= e!1290332 (and e!1290329 tp!607057))))

(declare-fun b!2043140 () Bool)

(declare-fun res!895320 () Bool)

(assert (=> b!2043140 (=> (not res!895320) (not e!1290320))))

(assert (=> b!2043140 (= res!895320 (valid!1594 cacheDown!575))))

(declare-fun b!2043141 () Bool)

(assert (=> b!2043141 (= e!1290323 e!1290320)))

(declare-fun res!895311 () Bool)

(assert (=> b!2043141 (=> (not res!895311) (not e!1290320))))

(declare-fun lt!766215 () tuple2!21076)

(declare-fun lt!766218 () tuple2!21076)

(declare-fun ++!6080 (BalanceConc!14768 BalanceConc!14768) BalanceConc!14768)

(assert (=> b!2043141 (= res!895311 (= (list!9175 (_1!12030 lt!766218)) (list!9175 (++!6080 acc!382 (_1!12030 lt!766215)))))))

(assert (=> b!2043141 (= lt!766215 (lexRec!431 thiss!12889 rules!1563 input!986))))

(assert (=> b!2043141 (= lt!766218 (lexRec!431 thiss!12889 rules!1563 totalInput!418))))

(declare-fun b!2043142 () Bool)

(declare-fun e!1290328 () Bool)

(assert (=> b!2043142 (= e!1290307 e!1290328)))

(declare-fun b!2043143 () Bool)

(declare-fun res!895322 () Bool)

(assert (=> b!2043143 (=> (not res!895322) (not e!1290320))))

(declare-fun valid!1595 (CacheUp!1208) Bool)

(assert (=> b!2043143 (= res!895322 (valid!1595 cacheUp!562))))

(declare-fun b!2043144 () Bool)

(assert (=> b!2043144 (= e!1290321 e!1290330)))

(declare-fun res!895316 () Bool)

(assert (=> b!2043144 (=> (not res!895316) (not e!1290330))))

(assert (=> b!2043144 (= res!895316 (valid!1595 (_2!12029 lt!766225)))))

(declare-fun b!2043145 () Bool)

(declare-fun tp!607048 () Bool)

(assert (=> b!2043145 (= e!1290312 (and (inv!29725 (c!330913 input!986)) tp!607048))))

(declare-fun mapIsEmpty!9223 () Bool)

(assert (=> mapIsEmpty!9223 mapRes!9223))

(assert (=> b!2043146 (= e!1290316 (and e!1290334 tp!607039))))

(declare-fun b!2043147 () Bool)

(declare-fun tp!607040 () Bool)

(assert (=> b!2043147 (= e!1290336 (and e!1290333 tp!607040))))

(declare-fun tp!607060 () Bool)

(declare-fun tp!607043 () Bool)

(declare-fun array_inv!2200 (array!6889) Bool)

(assert (=> b!2043148 (= e!1290327 (and tp!607050 tp!607060 tp!607043 (array_inv!2198 (_keys!2295 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575))))))) (array_inv!2200 (_values!2278 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575))))))) e!1290325))))

(declare-fun b!2043149 () Bool)

(declare-fun res!895317 () Bool)

(assert (=> b!2043149 (=> (not res!895317) (not e!1290320))))

(assert (=> b!2043149 (= res!895317 (= (list!9174 (_2!12030 lt!766218)) (list!9174 (_2!12030 lt!766215))))))

(declare-fun b!2043150 () Bool)

(assert (=> b!2043150 (= e!1290328 e!1290338)))

(assert (= (and start!201318 res!895312) b!2043121))

(assert (= (and b!2043121 res!895314) b!2043133))

(assert (= (and b!2043133 res!895318) b!2043127))

(assert (= (and b!2043127 res!895310) b!2043128))

(assert (= (and b!2043128 res!895321) b!2043129))

(assert (= (and b!2043129 res!895319) b!2043141))

(assert (= (and b!2043141 res!895311) b!2043149))

(assert (= (and b!2043149 res!895317) b!2043143))

(assert (= (and b!2043143 res!895322) b!2043140))

(assert (= (and b!2043140 res!895320) b!2043136))

(assert (= (and b!2043136 (not res!895313)) b!2043138))

(assert (= (and b!2043138 (not res!895323)) b!2043124))

(assert (= (and b!2043124 (not res!895315)) b!2043144))

(assert (= (and b!2043144 res!895316) b!2043130))

(assert (= (and b!2043116 condMapEmpty!9223) mapIsEmpty!9223))

(assert (= (and b!2043116 (not condMapEmpty!9223)) mapNonEmpty!9222))

(assert (= b!2043148 b!2043116))

(assert (= b!2043126 b!2043148))

(assert (= b!2043132 b!2043126))

(assert (= (and b!2043125 ((_ is LongMap!1998) (v!27093 (underlying!4192 (cache!2293 cacheDown!575))))) b!2043132))

(assert (= b!2043139 b!2043125))

(assert (= (and b!2043123 ((_ is HashMap!1912) (cache!2293 cacheDown!575))) b!2043139))

(assert (= start!201318 b!2043123))

(assert (= (and b!2043119 condMapEmpty!9222) mapIsEmpty!9222))

(assert (= (and b!2043119 (not condMapEmpty!9222)) mapNonEmpty!9223))

(assert (= b!2043135 b!2043119))

(assert (= b!2043150 b!2043135))

(assert (= b!2043142 b!2043150))

(assert (= (and b!2043120 ((_ is LongMap!1999) (v!27095 (underlying!4194 (cache!2294 cacheUp!562))))) b!2043142))

(assert (= b!2043146 b!2043120))

(assert (= (and b!2043122 ((_ is HashMap!1913) (cache!2294 cacheUp!562))) b!2043146))

(assert (= start!201318 b!2043122))

(assert (= b!2043137 b!2043134))

(assert (= b!2043147 b!2043137))

(assert (= (and start!201318 ((_ is Cons!22387) rules!1563)) b!2043147))

(assert (= start!201318 b!2043118))

(assert (= start!201318 b!2043131))

(assert (= start!201318 b!2043145))

(assert (= start!201318 b!2043117))

(declare-fun m!2487083 () Bool)

(assert (=> b!2043141 m!2487083))

(declare-fun m!2487085 () Bool)

(assert (=> b!2043141 m!2487085))

(declare-fun m!2487087 () Bool)

(assert (=> b!2043141 m!2487087))

(declare-fun m!2487089 () Bool)

(assert (=> b!2043141 m!2487089))

(assert (=> b!2043141 m!2487083))

(declare-fun m!2487091 () Bool)

(assert (=> b!2043141 m!2487091))

(declare-fun m!2487093 () Bool)

(assert (=> b!2043148 m!2487093))

(declare-fun m!2487095 () Bool)

(assert (=> b!2043148 m!2487095))

(declare-fun m!2487097 () Bool)

(assert (=> b!2043145 m!2487097))

(declare-fun m!2487099 () Bool)

(assert (=> b!2043133 m!2487099))

(declare-fun m!2487101 () Bool)

(assert (=> b!2043124 m!2487101))

(declare-fun m!2487103 () Bool)

(assert (=> b!2043124 m!2487103))

(declare-fun m!2487105 () Bool)

(assert (=> b!2043137 m!2487105))

(declare-fun m!2487107 () Bool)

(assert (=> b!2043137 m!2487107))

(declare-fun m!2487109 () Bool)

(assert (=> b!2043138 m!2487109))

(declare-fun m!2487111 () Bool)

(assert (=> b!2043143 m!2487111))

(declare-fun m!2487113 () Bool)

(assert (=> mapNonEmpty!9222 m!2487113))

(declare-fun m!2487115 () Bool)

(assert (=> b!2043128 m!2487115))

(declare-fun m!2487117 () Bool)

(assert (=> b!2043128 m!2487117))

(declare-fun m!2487119 () Bool)

(assert (=> b!2043128 m!2487119))

(declare-fun m!2487121 () Bool)

(assert (=> b!2043131 m!2487121))

(declare-fun m!2487123 () Bool)

(assert (=> b!2043117 m!2487123))

(declare-fun m!2487125 () Bool)

(assert (=> b!2043140 m!2487125))

(declare-fun m!2487127 () Bool)

(assert (=> b!2043118 m!2487127))

(declare-fun m!2487129 () Bool)

(assert (=> mapNonEmpty!9223 m!2487129))

(declare-fun m!2487131 () Bool)

(assert (=> start!201318 m!2487131))

(declare-fun m!2487133 () Bool)

(assert (=> start!201318 m!2487133))

(declare-fun m!2487135 () Bool)

(assert (=> start!201318 m!2487135))

(declare-fun m!2487137 () Bool)

(assert (=> start!201318 m!2487137))

(declare-fun m!2487139 () Bool)

(assert (=> start!201318 m!2487139))

(declare-fun m!2487141 () Bool)

(assert (=> start!201318 m!2487141))

(declare-fun m!2487143 () Bool)

(assert (=> b!2043127 m!2487143))

(declare-fun m!2487145 () Bool)

(assert (=> b!2043127 m!2487145))

(declare-fun m!2487147 () Bool)

(assert (=> b!2043127 m!2487147))

(declare-fun m!2487149 () Bool)

(assert (=> b!2043127 m!2487149))

(declare-fun m!2487151 () Bool)

(assert (=> b!2043149 m!2487151))

(declare-fun m!2487153 () Bool)

(assert (=> b!2043149 m!2487153))

(declare-fun m!2487155 () Bool)

(assert (=> b!2043130 m!2487155))

(declare-fun m!2487157 () Bool)

(assert (=> b!2043129 m!2487157))

(assert (=> b!2043129 m!2487157))

(declare-fun m!2487159 () Bool)

(assert (=> b!2043129 m!2487159))

(declare-fun m!2487161 () Bool)

(assert (=> b!2043121 m!2487161))

(declare-fun m!2487163 () Bool)

(assert (=> b!2043144 m!2487163))

(declare-fun m!2487165 () Bool)

(assert (=> b!2043135 m!2487165))

(declare-fun m!2487167 () Bool)

(assert (=> b!2043135 m!2487167))

(declare-fun m!2487169 () Bool)

(assert (=> b!2043136 m!2487169))

(declare-fun m!2487171 () Bool)

(assert (=> b!2043136 m!2487171))

(declare-fun m!2487173 () Bool)

(assert (=> b!2043136 m!2487173))

(check-sat (not b!2043141) (not mapNonEmpty!9223) b_and!162981 (not b!2043119) (not b!2043135) (not b!2043148) b_and!162975 (not b_next!57741) (not b!2043121) (not b!2043130) (not b!2043124) (not b!2043144) (not b!2043137) (not b_next!57739) (not b!2043136) b_and!162973 (not b_next!57737) (not b!2043140) (not b!2043117) (not start!201318) b_and!162983 (not b!2043131) (not b_next!57747) (not b_next!57743) (not b!2043118) (not b!2043128) (not b!2043116) (not b!2043145) (not b!2043129) (not b_next!57745) (not b!2043149) b_and!162979 (not mapNonEmpty!9222) (not b!2043143) (not b!2043127) b_and!162977 (not b!2043147) (not b!2043138) (not b!2043133))
(check-sat b_and!162973 b_and!162981 (not b_next!57737) b_and!162975 b_and!162983 (not b_next!57741) (not b_next!57745) b_and!162979 (not b_next!57739) b_and!162977 (not b_next!57747) (not b_next!57743))
(get-model)

(declare-fun d!625394 () Bool)

(assert (=> d!625394 (= (inv!29720 (tag!4503 (h!27788 rules!1563))) (= (mod (str.len (value!126023 (tag!4503 (h!27788 rules!1563)))) 2) 0))))

(assert (=> b!2043137 d!625394))

(declare-fun d!625396 () Bool)

(declare-fun res!895328 () Bool)

(declare-fun e!1290341 () Bool)

(assert (=> d!625396 (=> (not res!895328) (not e!1290341))))

(declare-fun semiInverseModEq!1616 (Int Int) Bool)

(assert (=> d!625396 (= res!895328 (semiInverseModEq!1616 (toChars!5555 (transformation!4013 (h!27788 rules!1563))) (toValue!5696 (transformation!4013 (h!27788 rules!1563)))))))

(assert (=> d!625396 (= (inv!29730 (transformation!4013 (h!27788 rules!1563))) e!1290341)))

(declare-fun b!2043153 () Bool)

(declare-fun equivClasses!1543 (Int Int) Bool)

(assert (=> b!2043153 (= e!1290341 (equivClasses!1543 (toChars!5555 (transformation!4013 (h!27788 rules!1563))) (toValue!5696 (transformation!4013 (h!27788 rules!1563)))))))

(assert (= (and d!625396 res!895328) b!2043153))

(declare-fun m!2487175 () Bool)

(assert (=> d!625396 m!2487175))

(declare-fun m!2487177 () Bool)

(assert (=> b!2043153 m!2487177))

(assert (=> b!2043137 d!625396))

(declare-fun d!625398 () Bool)

(declare-fun c!330917 () Bool)

(assert (=> d!625398 (= c!330917 ((_ is Node!7502) (c!330913 totalInput!418)))))

(declare-fun e!1290346 () Bool)

(assert (=> d!625398 (= (inv!29725 (c!330913 totalInput!418)) e!1290346)))

(declare-fun b!2043160 () Bool)

(declare-fun inv!29731 (Conc!7502) Bool)

(assert (=> b!2043160 (= e!1290346 (inv!29731 (c!330913 totalInput!418)))))

(declare-fun b!2043161 () Bool)

(declare-fun e!1290347 () Bool)

(assert (=> b!2043161 (= e!1290346 e!1290347)))

(declare-fun res!895331 () Bool)

(assert (=> b!2043161 (= res!895331 (not ((_ is Leaf!10990) (c!330913 totalInput!418))))))

(assert (=> b!2043161 (=> res!895331 e!1290347)))

(declare-fun b!2043162 () Bool)

(declare-fun inv!29732 (Conc!7502) Bool)

(assert (=> b!2043162 (= e!1290347 (inv!29732 (c!330913 totalInput!418)))))

(assert (= (and d!625398 c!330917) b!2043160))

(assert (= (and d!625398 (not c!330917)) b!2043161))

(assert (= (and b!2043161 (not res!895331)) b!2043162))

(declare-fun m!2487179 () Bool)

(assert (=> b!2043160 m!2487179))

(declare-fun m!2487181 () Bool)

(assert (=> b!2043162 m!2487181))

(assert (=> b!2043118 d!625398))

(declare-fun b!2043174 () Bool)

(declare-fun lt!766228 () List!22468)

(declare-fun e!1290353 () Bool)

(assert (=> b!2043174 (= e!1290353 (or (not (= lt!766221 Nil!22384)) (= lt!766228 lt!766223)))))

(declare-fun b!2043171 () Bool)

(declare-fun e!1290352 () List!22468)

(assert (=> b!2043171 (= e!1290352 lt!766221)))

(declare-fun b!2043173 () Bool)

(declare-fun res!895336 () Bool)

(assert (=> b!2043173 (=> (not res!895336) (not e!1290353))))

(declare-fun size!17509 (List!22468) Int)

(assert (=> b!2043173 (= res!895336 (= (size!17509 lt!766228) (+ (size!17509 lt!766223) (size!17509 lt!766221))))))

(declare-fun b!2043172 () Bool)

(assert (=> b!2043172 (= e!1290352 (Cons!22384 (h!27785 lt!766223) (++!6079 (t!191582 lt!766223) lt!766221)))))

(declare-fun d!625400 () Bool)

(assert (=> d!625400 e!1290353))

(declare-fun res!895337 () Bool)

(assert (=> d!625400 (=> (not res!895337) (not e!1290353))))

(declare-fun content!3317 (List!22468) (InoxSet C!11028))

(assert (=> d!625400 (= res!895337 (= (content!3317 lt!766228) ((_ map or) (content!3317 lt!766223) (content!3317 lt!766221))))))

(assert (=> d!625400 (= lt!766228 e!1290352)))

(declare-fun c!330920 () Bool)

(assert (=> d!625400 (= c!330920 ((_ is Nil!22384) lt!766223))))

(assert (=> d!625400 (= (++!6079 lt!766223 lt!766221) lt!766228)))

(assert (= (and d!625400 c!330920) b!2043171))

(assert (= (and d!625400 (not c!330920)) b!2043172))

(assert (= (and d!625400 res!895337) b!2043173))

(assert (= (and b!2043173 res!895336) b!2043174))

(declare-fun m!2487183 () Bool)

(assert (=> b!2043173 m!2487183))

(declare-fun m!2487185 () Bool)

(assert (=> b!2043173 m!2487185))

(declare-fun m!2487187 () Bool)

(assert (=> b!2043173 m!2487187))

(declare-fun m!2487189 () Bool)

(assert (=> b!2043172 m!2487189))

(declare-fun m!2487191 () Bool)

(assert (=> d!625400 m!2487191))

(declare-fun m!2487193 () Bool)

(assert (=> d!625400 m!2487193))

(declare-fun m!2487195 () Bool)

(assert (=> d!625400 m!2487195))

(assert (=> b!2043127 d!625400))

(declare-fun d!625402 () Bool)

(declare-fun list!9176 (Conc!7502) List!22468)

(assert (=> d!625402 (= (list!9174 totalInput!418) (list!9176 (c!330913 totalInput!418)))))

(declare-fun bs!421891 () Bool)

(assert (= bs!421891 d!625402))

(declare-fun m!2487197 () Bool)

(assert (=> bs!421891 m!2487197))

(assert (=> b!2043127 d!625402))

(declare-fun d!625404 () Bool)

(assert (=> d!625404 (= (list!9174 input!986) (list!9176 (c!330913 input!986)))))

(declare-fun bs!421892 () Bool)

(assert (= bs!421892 d!625404))

(declare-fun m!2487199 () Bool)

(assert (=> bs!421892 m!2487199))

(assert (=> b!2043127 d!625404))

(declare-fun d!625406 () Bool)

(assert (=> d!625406 (= (list!9174 treated!60) (list!9176 (c!330913 treated!60)))))

(declare-fun bs!421893 () Bool)

(assert (= bs!421893 d!625406))

(declare-fun m!2487201 () Bool)

(assert (=> bs!421893 m!2487201))

(assert (=> b!2043127 d!625406))

(declare-fun d!625408 () Bool)

(declare-fun e!1290356 () Bool)

(assert (=> d!625408 e!1290356))

(declare-fun res!895340 () Bool)

(assert (=> d!625408 (=> res!895340 e!1290356)))

(declare-fun lt!766231 () Bool)

(assert (=> d!625408 (= res!895340 (not lt!766231))))

(declare-fun drop!1126 (List!22468 Int) List!22468)

(assert (=> d!625408 (= lt!766231 (= lt!766221 (drop!1126 lt!766214 (- (size!17509 lt!766214) (size!17509 lt!766221)))))))

(assert (=> d!625408 (= (isSuffix!474 lt!766221 lt!766214) lt!766231)))

(declare-fun b!2043177 () Bool)

(assert (=> b!2043177 (= e!1290356 (>= (size!17509 lt!766214) (size!17509 lt!766221)))))

(assert (= (and d!625408 (not res!895340)) b!2043177))

(declare-fun m!2487203 () Bool)

(assert (=> d!625408 m!2487203))

(assert (=> d!625408 m!2487187))

(declare-fun m!2487205 () Bool)

(assert (=> d!625408 m!2487205))

(assert (=> b!2043177 m!2487203))

(assert (=> b!2043177 m!2487187))

(assert (=> b!2043136 d!625408))

(declare-fun d!625410 () Bool)

(declare-fun e!1290357 () Bool)

(assert (=> d!625410 e!1290357))

(declare-fun res!895341 () Bool)

(assert (=> d!625410 (=> res!895341 e!1290357)))

(declare-fun lt!766232 () Bool)

(assert (=> d!625410 (= res!895341 (not lt!766232))))

(assert (=> d!625410 (= lt!766232 (= lt!766221 (drop!1126 lt!766224 (- (size!17509 lt!766224) (size!17509 lt!766221)))))))

(assert (=> d!625410 (= (isSuffix!474 lt!766221 lt!766224) lt!766232)))

(declare-fun b!2043178 () Bool)

(assert (=> b!2043178 (= e!1290357 (>= (size!17509 lt!766224) (size!17509 lt!766221)))))

(assert (= (and d!625410 (not res!895341)) b!2043178))

(declare-fun m!2487207 () Bool)

(assert (=> d!625410 m!2487207))

(assert (=> d!625410 m!2487187))

(declare-fun m!2487209 () Bool)

(assert (=> d!625410 m!2487209))

(assert (=> b!2043178 m!2487207))

(assert (=> b!2043178 m!2487187))

(assert (=> b!2043136 d!625410))

(declare-fun d!625412 () Bool)

(assert (=> d!625412 (isSuffix!474 lt!766221 (++!6079 lt!766223 lt!766221))))

(declare-fun lt!766235 () Unit!37017)

(declare-fun choose!12461 (List!22468 List!22468) Unit!37017)

(assert (=> d!625412 (= lt!766235 (choose!12461 lt!766223 lt!766221))))

(assert (=> d!625412 (= (lemmaConcatTwoListThenFSndIsSuffix!375 lt!766223 lt!766221) lt!766235)))

(declare-fun bs!421894 () Bool)

(assert (= bs!421894 d!625412))

(assert (=> bs!421894 m!2487143))

(assert (=> bs!421894 m!2487143))

(declare-fun m!2487211 () Bool)

(assert (=> bs!421894 m!2487211))

(declare-fun m!2487213 () Bool)

(assert (=> bs!421894 m!2487213))

(assert (=> b!2043136 d!625412))

(declare-fun d!625414 () Bool)

(assert (=> d!625414 (= (array_inv!2198 (_keys!2296 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562))))))) (bvsge (size!17505 (_keys!2296 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2043135 d!625414))

(declare-fun d!625416 () Bool)

(assert (=> d!625416 (= (array_inv!2199 (_values!2279 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562))))))) (bvsge (size!17508 (_values!2279 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2043135 d!625416))

(declare-fun d!625418 () Bool)

(declare-fun c!330923 () Bool)

(assert (=> d!625418 (= c!330923 ((_ is Node!7503) (c!330914 acc!382)))))

(declare-fun e!1290362 () Bool)

(assert (=> d!625418 (= (inv!29724 (c!330914 acc!382)) e!1290362)))

(declare-fun b!2043185 () Bool)

(declare-fun inv!29733 (Conc!7503) Bool)

(assert (=> b!2043185 (= e!1290362 (inv!29733 (c!330914 acc!382)))))

(declare-fun b!2043186 () Bool)

(declare-fun e!1290363 () Bool)

(assert (=> b!2043186 (= e!1290362 e!1290363)))

(declare-fun res!895344 () Bool)

(assert (=> b!2043186 (= res!895344 (not ((_ is Leaf!10991) (c!330914 acc!382))))))

(assert (=> b!2043186 (=> res!895344 e!1290363)))

(declare-fun b!2043187 () Bool)

(declare-fun inv!29734 (Conc!7503) Bool)

(assert (=> b!2043187 (= e!1290363 (inv!29734 (c!330914 acc!382)))))

(assert (= (and d!625418 c!330923) b!2043185))

(assert (= (and d!625418 (not c!330923)) b!2043186))

(assert (= (and b!2043186 (not res!895344)) b!2043187))

(declare-fun m!2487215 () Bool)

(assert (=> b!2043185 m!2487215))

(declare-fun m!2487217 () Bool)

(assert (=> b!2043187 m!2487217))

(assert (=> b!2043117 d!625418))

(declare-fun d!625420 () Bool)

(declare-fun c!330924 () Bool)

(assert (=> d!625420 (= c!330924 ((_ is Node!7502) (c!330913 input!986)))))

(declare-fun e!1290364 () Bool)

(assert (=> d!625420 (= (inv!29725 (c!330913 input!986)) e!1290364)))

(declare-fun b!2043188 () Bool)

(assert (=> b!2043188 (= e!1290364 (inv!29731 (c!330913 input!986)))))

(declare-fun b!2043189 () Bool)

(declare-fun e!1290365 () Bool)

(assert (=> b!2043189 (= e!1290364 e!1290365)))

(declare-fun res!895345 () Bool)

(assert (=> b!2043189 (= res!895345 (not ((_ is Leaf!10990) (c!330913 input!986))))))

(assert (=> b!2043189 (=> res!895345 e!1290365)))

(declare-fun b!2043190 () Bool)

(assert (=> b!2043190 (= e!1290365 (inv!29732 (c!330913 input!986)))))

(assert (= (and d!625420 c!330924) b!2043188))

(assert (= (and d!625420 (not c!330924)) b!2043189))

(assert (= (and b!2043189 (not res!895345)) b!2043190))

(declare-fun m!2487219 () Bool)

(assert (=> b!2043188 m!2487219))

(declare-fun m!2487221 () Bool)

(assert (=> b!2043190 m!2487221))

(assert (=> b!2043145 d!625420))

(declare-fun d!625422 () Bool)

(assert (=> d!625422 true))

(declare-fun lt!766238 () Bool)

(declare-fun lambda!76692 () Int)

(declare-fun forall!4766 (List!22471 Int) Bool)

(assert (=> d!625422 (= lt!766238 (forall!4766 rules!1563 lambda!76692))))

(declare-fun e!1290370 () Bool)

(assert (=> d!625422 (= lt!766238 e!1290370)))

(declare-fun res!895350 () Bool)

(assert (=> d!625422 (=> res!895350 e!1290370)))

(assert (=> d!625422 (= res!895350 (not ((_ is Cons!22387) rules!1563)))))

(assert (=> d!625422 (= (rulesValidInductive!1395 thiss!12889 rules!1563) lt!766238)))

(declare-fun b!2043195 () Bool)

(declare-fun e!1290371 () Bool)

(assert (=> b!2043195 (= e!1290370 e!1290371)))

(declare-fun res!895351 () Bool)

(assert (=> b!2043195 (=> (not res!895351) (not e!1290371))))

(declare-fun ruleValid!1228 (LexerInterface!3626 Rule!7826) Bool)

(assert (=> b!2043195 (= res!895351 (ruleValid!1228 thiss!12889 (h!27788 rules!1563)))))

(declare-fun b!2043196 () Bool)

(assert (=> b!2043196 (= e!1290371 (rulesValidInductive!1395 thiss!12889 (t!191585 rules!1563)))))

(assert (= (and d!625422 (not res!895350)) b!2043195))

(assert (= (and b!2043195 res!895351) b!2043196))

(declare-fun m!2487223 () Bool)

(assert (=> d!625422 m!2487223))

(declare-fun m!2487225 () Bool)

(assert (=> b!2043195 m!2487225))

(declare-fun m!2487227 () Bool)

(assert (=> b!2043196 m!2487227))

(assert (=> b!2043124 d!625422))

(declare-fun b!2043213 () Bool)

(declare-fun e!1290382 () tuple2!21076)

(declare-fun lt!766246 () tuple2!21076)

(declare-fun lt!766245 () Option!4695)

(declare-fun prepend!910 (BalanceConc!14768 Token!7576) BalanceConc!14768)

(assert (=> b!2043213 (= e!1290382 (tuple2!21077 (prepend!910 (_1!12030 lt!766246) (_1!12028 (v!27096 lt!766245))) (_2!12030 lt!766246)))))

(assert (=> b!2043213 (= lt!766246 (lexRec!431 thiss!12889 rules!1563 (_2!12028 (v!27096 lt!766245))))))

(declare-fun b!2043214 () Bool)

(declare-fun res!895360 () Bool)

(declare-fun e!1290380 () Bool)

(assert (=> b!2043214 (=> (not res!895360) (not e!1290380))))

(declare-fun lt!766247 () tuple2!21076)

(declare-datatypes ((tuple2!21078 0))(
  ( (tuple2!21079 (_1!12031 List!22469) (_2!12031 List!22468)) )
))
(declare-fun lexList!988 (LexerInterface!3626 List!22471 List!22468) tuple2!21078)

(assert (=> b!2043214 (= res!895360 (= (list!9175 (_1!12030 lt!766247)) (_1!12031 (lexList!988 thiss!12889 rules!1563 (list!9174 (_2!12028 (v!27096 (_1!12029 lt!766225))))))))))

(declare-fun b!2043215 () Bool)

(declare-fun e!1290383 () Bool)

(declare-fun isEmpty!13966 (BalanceConc!14768) Bool)

(assert (=> b!2043215 (= e!1290383 (not (isEmpty!13966 (_1!12030 lt!766247))))))

(declare-fun b!2043217 () Bool)

(declare-fun e!1290381 () Bool)

(assert (=> b!2043217 (= e!1290381 e!1290383)))

(declare-fun res!895358 () Bool)

(declare-fun size!17510 (BalanceConc!14766) Int)

(assert (=> b!2043217 (= res!895358 (< (size!17510 (_2!12030 lt!766247)) (size!17510 (_2!12028 (v!27096 (_1!12029 lt!766225))))))))

(assert (=> b!2043217 (=> (not res!895358) (not e!1290383))))

(declare-fun b!2043218 () Bool)

(assert (=> b!2043218 (= e!1290382 (tuple2!21077 (BalanceConc!14769 Empty!7503) (_2!12028 (v!27096 (_1!12029 lt!766225)))))))

(declare-fun b!2043219 () Bool)

(assert (=> b!2043219 (= e!1290381 (= (list!9174 (_2!12030 lt!766247)) (list!9174 (_2!12028 (v!27096 (_1!12029 lt!766225))))))))

(declare-fun d!625424 () Bool)

(assert (=> d!625424 e!1290380))

(declare-fun res!895359 () Bool)

(assert (=> d!625424 (=> (not res!895359) (not e!1290380))))

(assert (=> d!625424 (= res!895359 e!1290381)))

(declare-fun c!330930 () Bool)

(declare-fun size!17511 (BalanceConc!14768) Int)

(assert (=> d!625424 (= c!330930 (> (size!17511 (_1!12030 lt!766247)) 0))))

(assert (=> d!625424 (= lt!766247 e!1290382)))

(declare-fun c!330931 () Bool)

(assert (=> d!625424 (= c!330931 ((_ is Some!4694) lt!766245))))

(declare-fun maxPrefixZipperSequence!788 (LexerInterface!3626 List!22471 BalanceConc!14766) Option!4695)

(assert (=> d!625424 (= lt!766245 (maxPrefixZipperSequence!788 thiss!12889 rules!1563 (_2!12028 (v!27096 (_1!12029 lt!766225)))))))

(assert (=> d!625424 (= (lexRec!431 thiss!12889 rules!1563 (_2!12028 (v!27096 (_1!12029 lt!766225)))) lt!766247)))

(declare-fun b!2043216 () Bool)

(assert (=> b!2043216 (= e!1290380 (= (list!9174 (_2!12030 lt!766247)) (_2!12031 (lexList!988 thiss!12889 rules!1563 (list!9174 (_2!12028 (v!27096 (_1!12029 lt!766225))))))))))

(assert (= (and d!625424 c!330931) b!2043213))

(assert (= (and d!625424 (not c!330931)) b!2043218))

(assert (= (and d!625424 c!330930) b!2043217))

(assert (= (and d!625424 (not c!330930)) b!2043219))

(assert (= (and b!2043217 res!895358) b!2043215))

(assert (= (and d!625424 res!895359) b!2043214))

(assert (= (and b!2043214 res!895360) b!2043216))

(declare-fun m!2487229 () Bool)

(assert (=> b!2043219 m!2487229))

(declare-fun m!2487231 () Bool)

(assert (=> b!2043219 m!2487231))

(declare-fun m!2487233 () Bool)

(assert (=> b!2043214 m!2487233))

(assert (=> b!2043214 m!2487231))

(assert (=> b!2043214 m!2487231))

(declare-fun m!2487235 () Bool)

(assert (=> b!2043214 m!2487235))

(declare-fun m!2487237 () Bool)

(assert (=> b!2043215 m!2487237))

(declare-fun m!2487239 () Bool)

(assert (=> b!2043213 m!2487239))

(declare-fun m!2487241 () Bool)

(assert (=> b!2043213 m!2487241))

(assert (=> b!2043216 m!2487229))

(assert (=> b!2043216 m!2487231))

(assert (=> b!2043216 m!2487231))

(assert (=> b!2043216 m!2487235))

(declare-fun m!2487243 () Bool)

(assert (=> b!2043217 m!2487243))

(declare-fun m!2487245 () Bool)

(assert (=> b!2043217 m!2487245))

(declare-fun m!2487247 () Bool)

(assert (=> d!625424 m!2487247))

(declare-fun m!2487249 () Bool)

(assert (=> d!625424 m!2487249))

(assert (=> b!2043124 d!625424))

(declare-fun d!625426 () Bool)

(declare-fun res!895363 () Bool)

(declare-fun e!1290386 () Bool)

(assert (=> d!625426 (=> (not res!895363) (not e!1290386))))

(declare-fun rulesValid!1503 (LexerInterface!3626 List!22471) Bool)

(assert (=> d!625426 (= res!895363 (rulesValid!1503 thiss!12889 rules!1563))))

(assert (=> d!625426 (= (rulesInvariant!3229 thiss!12889 rules!1563) e!1290386)))

(declare-fun b!2043222 () Bool)

(declare-datatypes ((List!22472 0))(
  ( (Nil!22388) (Cons!22388 (h!27789 String!25937) (t!191586 List!22472)) )
))
(declare-fun noDuplicateTag!1501 (LexerInterface!3626 List!22471 List!22472) Bool)

(assert (=> b!2043222 (= e!1290386 (noDuplicateTag!1501 thiss!12889 rules!1563 Nil!22388))))

(assert (= (and d!625426 res!895363) b!2043222))

(declare-fun m!2487251 () Bool)

(assert (=> d!625426 m!2487251))

(declare-fun m!2487253 () Bool)

(assert (=> b!2043222 m!2487253))

(assert (=> b!2043133 d!625426))

(declare-fun d!625428 () Bool)

(declare-fun validCacheMapUp!186 (MutableMap!1913) Bool)

(assert (=> d!625428 (= (valid!1595 (_2!12029 lt!766225)) (validCacheMapUp!186 (cache!2294 (_2!12029 lt!766225))))))

(declare-fun bs!421895 () Bool)

(assert (= bs!421895 d!625428))

(declare-fun m!2487255 () Bool)

(assert (=> bs!421895 m!2487255))

(assert (=> b!2043144 d!625428))

(declare-fun d!625430 () Bool)

(assert (=> d!625430 (= (valid!1595 cacheUp!562) (validCacheMapUp!186 (cache!2294 cacheUp!562)))))

(declare-fun bs!421896 () Bool)

(assert (= bs!421896 d!625430))

(declare-fun m!2487257 () Bool)

(assert (=> bs!421896 m!2487257))

(assert (=> b!2043143 d!625430))

(declare-fun d!625432 () Bool)

(declare-fun isBalanced!2358 (Conc!7502) Bool)

(assert (=> d!625432 (= (inv!29728 input!986) (isBalanced!2358 (c!330913 input!986)))))

(declare-fun bs!421897 () Bool)

(assert (= bs!421897 d!625432))

(declare-fun m!2487259 () Bool)

(assert (=> bs!421897 m!2487259))

(assert (=> start!201318 d!625432))

(declare-fun d!625434 () Bool)

(declare-fun res!895366 () Bool)

(declare-fun e!1290389 () Bool)

(assert (=> d!625434 (=> (not res!895366) (not e!1290389))))

(assert (=> d!625434 (= res!895366 ((_ is HashMap!1913) (cache!2294 cacheUp!562)))))

(assert (=> d!625434 (= (inv!29727 cacheUp!562) e!1290389)))

(declare-fun b!2043225 () Bool)

(assert (=> b!2043225 (= e!1290389 (validCacheMapUp!186 (cache!2294 cacheUp!562)))))

(assert (= (and d!625434 res!895366) b!2043225))

(assert (=> b!2043225 m!2487257))

(assert (=> start!201318 d!625434))

(declare-fun d!625436 () Bool)

(declare-fun isBalanced!2359 (Conc!7503) Bool)

(assert (=> d!625436 (= (inv!29729 acc!382) (isBalanced!2359 (c!330914 acc!382)))))

(declare-fun bs!421898 () Bool)

(assert (= bs!421898 d!625436))

(declare-fun m!2487261 () Bool)

(assert (=> bs!421898 m!2487261))

(assert (=> start!201318 d!625436))

(declare-fun d!625438 () Bool)

(declare-fun res!895369 () Bool)

(declare-fun e!1290392 () Bool)

(assert (=> d!625438 (=> (not res!895369) (not e!1290392))))

(assert (=> d!625438 (= res!895369 ((_ is HashMap!1912) (cache!2293 cacheDown!575)))))

(assert (=> d!625438 (= (inv!29726 cacheDown!575) e!1290392)))

(declare-fun b!2043228 () Bool)

(declare-fun validCacheMapDown!184 (MutableMap!1912) Bool)

(assert (=> b!2043228 (= e!1290392 (validCacheMapDown!184 (cache!2293 cacheDown!575)))))

(assert (= (and d!625438 res!895369) b!2043228))

(declare-fun m!2487263 () Bool)

(assert (=> b!2043228 m!2487263))

(assert (=> start!201318 d!625438))

(declare-fun d!625440 () Bool)

(assert (=> d!625440 (= (inv!29728 totalInput!418) (isBalanced!2358 (c!330913 totalInput!418)))))

(declare-fun bs!421899 () Bool)

(assert (= bs!421899 d!625440))

(declare-fun m!2487265 () Bool)

(assert (=> bs!421899 m!2487265))

(assert (=> start!201318 d!625440))

(declare-fun d!625442 () Bool)

(assert (=> d!625442 (= (inv!29728 treated!60) (isBalanced!2358 (c!330913 treated!60)))))

(declare-fun bs!421900 () Bool)

(assert (= bs!421900 d!625442))

(declare-fun m!2487267 () Bool)

(assert (=> bs!421900 m!2487267))

(assert (=> start!201318 d!625442))

(declare-fun d!625444 () Bool)

(declare-fun c!330932 () Bool)

(assert (=> d!625444 (= c!330932 ((_ is Node!7502) (c!330913 treated!60)))))

(declare-fun e!1290393 () Bool)

(assert (=> d!625444 (= (inv!29725 (c!330913 treated!60)) e!1290393)))

(declare-fun b!2043229 () Bool)

(assert (=> b!2043229 (= e!1290393 (inv!29731 (c!330913 treated!60)))))

(declare-fun b!2043230 () Bool)

(declare-fun e!1290394 () Bool)

(assert (=> b!2043230 (= e!1290393 e!1290394)))

(declare-fun res!895370 () Bool)

(assert (=> b!2043230 (= res!895370 (not ((_ is Leaf!10990) (c!330913 treated!60))))))

(assert (=> b!2043230 (=> res!895370 e!1290394)))

(declare-fun b!2043231 () Bool)

(assert (=> b!2043231 (= e!1290394 (inv!29732 (c!330913 treated!60)))))

(assert (= (and d!625444 c!330932) b!2043229))

(assert (= (and d!625444 (not c!330932)) b!2043230))

(assert (= (and b!2043230 (not res!895370)) b!2043231))

(declare-fun m!2487269 () Bool)

(assert (=> b!2043229 m!2487269))

(declare-fun m!2487271 () Bool)

(assert (=> b!2043231 m!2487271))

(assert (=> b!2043131 d!625444))

(declare-fun d!625446 () Bool)

(declare-fun list!9177 (Conc!7503) List!22469)

(assert (=> d!625446 (= (list!9175 (++!6080 acc!382 (_1!12030 lt!766215))) (list!9177 (c!330914 (++!6080 acc!382 (_1!12030 lt!766215)))))))

(declare-fun bs!421901 () Bool)

(assert (= bs!421901 d!625446))

(declare-fun m!2487273 () Bool)

(assert (=> bs!421901 m!2487273))

(assert (=> b!2043141 d!625446))

(declare-fun b!2043232 () Bool)

(declare-fun e!1290397 () tuple2!21076)

(declare-fun lt!766249 () tuple2!21076)

(declare-fun lt!766248 () Option!4695)

(assert (=> b!2043232 (= e!1290397 (tuple2!21077 (prepend!910 (_1!12030 lt!766249) (_1!12028 (v!27096 lt!766248))) (_2!12030 lt!766249)))))

(assert (=> b!2043232 (= lt!766249 (lexRec!431 thiss!12889 rules!1563 (_2!12028 (v!27096 lt!766248))))))

(declare-fun b!2043233 () Bool)

(declare-fun res!895373 () Bool)

(declare-fun e!1290395 () Bool)

(assert (=> b!2043233 (=> (not res!895373) (not e!1290395))))

(declare-fun lt!766250 () tuple2!21076)

(assert (=> b!2043233 (= res!895373 (= (list!9175 (_1!12030 lt!766250)) (_1!12031 (lexList!988 thiss!12889 rules!1563 (list!9174 totalInput!418)))))))

(declare-fun b!2043234 () Bool)

(declare-fun e!1290398 () Bool)

(assert (=> b!2043234 (= e!1290398 (not (isEmpty!13966 (_1!12030 lt!766250))))))

(declare-fun b!2043236 () Bool)

(declare-fun e!1290396 () Bool)

(assert (=> b!2043236 (= e!1290396 e!1290398)))

(declare-fun res!895371 () Bool)

(assert (=> b!2043236 (= res!895371 (< (size!17510 (_2!12030 lt!766250)) (size!17510 totalInput!418)))))

(assert (=> b!2043236 (=> (not res!895371) (not e!1290398))))

(declare-fun b!2043237 () Bool)

(assert (=> b!2043237 (= e!1290397 (tuple2!21077 (BalanceConc!14769 Empty!7503) totalInput!418))))

(declare-fun b!2043238 () Bool)

(assert (=> b!2043238 (= e!1290396 (= (list!9174 (_2!12030 lt!766250)) (list!9174 totalInput!418)))))

(declare-fun d!625448 () Bool)

(assert (=> d!625448 e!1290395))

(declare-fun res!895372 () Bool)

(assert (=> d!625448 (=> (not res!895372) (not e!1290395))))

(assert (=> d!625448 (= res!895372 e!1290396)))

(declare-fun c!330933 () Bool)

(assert (=> d!625448 (= c!330933 (> (size!17511 (_1!12030 lt!766250)) 0))))

(assert (=> d!625448 (= lt!766250 e!1290397)))

(declare-fun c!330934 () Bool)

(assert (=> d!625448 (= c!330934 ((_ is Some!4694) lt!766248))))

(assert (=> d!625448 (= lt!766248 (maxPrefixZipperSequence!788 thiss!12889 rules!1563 totalInput!418))))

(assert (=> d!625448 (= (lexRec!431 thiss!12889 rules!1563 totalInput!418) lt!766250)))

(declare-fun b!2043235 () Bool)

(assert (=> b!2043235 (= e!1290395 (= (list!9174 (_2!12030 lt!766250)) (_2!12031 (lexList!988 thiss!12889 rules!1563 (list!9174 totalInput!418)))))))

(assert (= (and d!625448 c!330934) b!2043232))

(assert (= (and d!625448 (not c!330934)) b!2043237))

(assert (= (and d!625448 c!330933) b!2043236))

(assert (= (and d!625448 (not c!330933)) b!2043238))

(assert (= (and b!2043236 res!895371) b!2043234))

(assert (= (and d!625448 res!895372) b!2043233))

(assert (= (and b!2043233 res!895373) b!2043235))

(declare-fun m!2487275 () Bool)

(assert (=> b!2043238 m!2487275))

(assert (=> b!2043238 m!2487145))

(declare-fun m!2487277 () Bool)

(assert (=> b!2043233 m!2487277))

(assert (=> b!2043233 m!2487145))

(assert (=> b!2043233 m!2487145))

(declare-fun m!2487279 () Bool)

(assert (=> b!2043233 m!2487279))

(declare-fun m!2487281 () Bool)

(assert (=> b!2043234 m!2487281))

(declare-fun m!2487283 () Bool)

(assert (=> b!2043232 m!2487283))

(declare-fun m!2487285 () Bool)

(assert (=> b!2043232 m!2487285))

(assert (=> b!2043235 m!2487275))

(assert (=> b!2043235 m!2487145))

(assert (=> b!2043235 m!2487145))

(assert (=> b!2043235 m!2487279))

(declare-fun m!2487287 () Bool)

(assert (=> b!2043236 m!2487287))

(declare-fun m!2487289 () Bool)

(assert (=> b!2043236 m!2487289))

(declare-fun m!2487291 () Bool)

(assert (=> d!625448 m!2487291))

(declare-fun m!2487293 () Bool)

(assert (=> d!625448 m!2487293))

(assert (=> b!2043141 d!625448))

(declare-fun b!2043239 () Bool)

(declare-fun e!1290401 () tuple2!21076)

(declare-fun lt!766252 () tuple2!21076)

(declare-fun lt!766251 () Option!4695)

(assert (=> b!2043239 (= e!1290401 (tuple2!21077 (prepend!910 (_1!12030 lt!766252) (_1!12028 (v!27096 lt!766251))) (_2!12030 lt!766252)))))

(assert (=> b!2043239 (= lt!766252 (lexRec!431 thiss!12889 rules!1563 (_2!12028 (v!27096 lt!766251))))))

(declare-fun b!2043240 () Bool)

(declare-fun res!895376 () Bool)

(declare-fun e!1290399 () Bool)

(assert (=> b!2043240 (=> (not res!895376) (not e!1290399))))

(declare-fun lt!766253 () tuple2!21076)

(assert (=> b!2043240 (= res!895376 (= (list!9175 (_1!12030 lt!766253)) (_1!12031 (lexList!988 thiss!12889 rules!1563 (list!9174 input!986)))))))

(declare-fun b!2043241 () Bool)

(declare-fun e!1290402 () Bool)

(assert (=> b!2043241 (= e!1290402 (not (isEmpty!13966 (_1!12030 lt!766253))))))

(declare-fun b!2043243 () Bool)

(declare-fun e!1290400 () Bool)

(assert (=> b!2043243 (= e!1290400 e!1290402)))

(declare-fun res!895374 () Bool)

(assert (=> b!2043243 (= res!895374 (< (size!17510 (_2!12030 lt!766253)) (size!17510 input!986)))))

(assert (=> b!2043243 (=> (not res!895374) (not e!1290402))))

(declare-fun b!2043244 () Bool)

(assert (=> b!2043244 (= e!1290401 (tuple2!21077 (BalanceConc!14769 Empty!7503) input!986))))

(declare-fun b!2043245 () Bool)

(assert (=> b!2043245 (= e!1290400 (= (list!9174 (_2!12030 lt!766253)) (list!9174 input!986)))))

(declare-fun d!625450 () Bool)

(assert (=> d!625450 e!1290399))

(declare-fun res!895375 () Bool)

(assert (=> d!625450 (=> (not res!895375) (not e!1290399))))

(assert (=> d!625450 (= res!895375 e!1290400)))

(declare-fun c!330935 () Bool)

(assert (=> d!625450 (= c!330935 (> (size!17511 (_1!12030 lt!766253)) 0))))

(assert (=> d!625450 (= lt!766253 e!1290401)))

(declare-fun c!330936 () Bool)

(assert (=> d!625450 (= c!330936 ((_ is Some!4694) lt!766251))))

(assert (=> d!625450 (= lt!766251 (maxPrefixZipperSequence!788 thiss!12889 rules!1563 input!986))))

(assert (=> d!625450 (= (lexRec!431 thiss!12889 rules!1563 input!986) lt!766253)))

(declare-fun b!2043242 () Bool)

(assert (=> b!2043242 (= e!1290399 (= (list!9174 (_2!12030 lt!766253)) (_2!12031 (lexList!988 thiss!12889 rules!1563 (list!9174 input!986)))))))

(assert (= (and d!625450 c!330936) b!2043239))

(assert (= (and d!625450 (not c!330936)) b!2043244))

(assert (= (and d!625450 c!330935) b!2043243))

(assert (= (and d!625450 (not c!330935)) b!2043245))

(assert (= (and b!2043243 res!895374) b!2043241))

(assert (= (and d!625450 res!895375) b!2043240))

(assert (= (and b!2043240 res!895376) b!2043242))

(declare-fun m!2487295 () Bool)

(assert (=> b!2043245 m!2487295))

(assert (=> b!2043245 m!2487147))

(declare-fun m!2487297 () Bool)

(assert (=> b!2043240 m!2487297))

(assert (=> b!2043240 m!2487147))

(assert (=> b!2043240 m!2487147))

(declare-fun m!2487299 () Bool)

(assert (=> b!2043240 m!2487299))

(declare-fun m!2487301 () Bool)

(assert (=> b!2043241 m!2487301))

(declare-fun m!2487303 () Bool)

(assert (=> b!2043239 m!2487303))

(declare-fun m!2487305 () Bool)

(assert (=> b!2043239 m!2487305))

(assert (=> b!2043242 m!2487295))

(assert (=> b!2043242 m!2487147))

(assert (=> b!2043242 m!2487147))

(assert (=> b!2043242 m!2487299))

(declare-fun m!2487307 () Bool)

(assert (=> b!2043243 m!2487307))

(declare-fun m!2487309 () Bool)

(assert (=> b!2043243 m!2487309))

(declare-fun m!2487311 () Bool)

(assert (=> d!625450 m!2487311))

(declare-fun m!2487313 () Bool)

(assert (=> d!625450 m!2487313))

(assert (=> b!2043141 d!625450))

(declare-fun d!625452 () Bool)

(assert (=> d!625452 (= (list!9175 (_1!12030 lt!766218)) (list!9177 (c!330914 (_1!12030 lt!766218))))))

(declare-fun bs!421902 () Bool)

(assert (= bs!421902 d!625452))

(declare-fun m!2487315 () Bool)

(assert (=> bs!421902 m!2487315))

(assert (=> b!2043141 d!625452))

(declare-fun d!625454 () Bool)

(declare-fun e!1290405 () Bool)

(assert (=> d!625454 e!1290405))

(declare-fun res!895387 () Bool)

(assert (=> d!625454 (=> (not res!895387) (not e!1290405))))

(declare-fun appendAssocInst!549 (Conc!7503 Conc!7503) Bool)

(assert (=> d!625454 (= res!895387 (appendAssocInst!549 (c!330914 acc!382) (c!330914 (_1!12030 lt!766215))))))

(declare-fun lt!766256 () BalanceConc!14768)

(declare-fun ++!6081 (Conc!7503 Conc!7503) Conc!7503)

(assert (=> d!625454 (= lt!766256 (BalanceConc!14769 (++!6081 (c!330914 acc!382) (c!330914 (_1!12030 lt!766215)))))))

(assert (=> d!625454 (= (++!6080 acc!382 (_1!12030 lt!766215)) lt!766256)))

(declare-fun b!2043257 () Bool)

(declare-fun ++!6082 (List!22469 List!22469) List!22469)

(assert (=> b!2043257 (= e!1290405 (= (list!9175 lt!766256) (++!6082 (list!9175 acc!382) (list!9175 (_1!12030 lt!766215)))))))

(declare-fun b!2043254 () Bool)

(declare-fun res!895385 () Bool)

(assert (=> b!2043254 (=> (not res!895385) (not e!1290405))))

(assert (=> b!2043254 (= res!895385 (isBalanced!2359 (++!6081 (c!330914 acc!382) (c!330914 (_1!12030 lt!766215)))))))

(declare-fun b!2043255 () Bool)

(declare-fun res!895386 () Bool)

(assert (=> b!2043255 (=> (not res!895386) (not e!1290405))))

(declare-fun height!1177 (Conc!7503) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2043255 (= res!895386 (<= (height!1177 (++!6081 (c!330914 acc!382) (c!330914 (_1!12030 lt!766215)))) (+ (max!0 (height!1177 (c!330914 acc!382)) (height!1177 (c!330914 (_1!12030 lt!766215)))) 1)))))

(declare-fun b!2043256 () Bool)

(declare-fun res!895388 () Bool)

(assert (=> b!2043256 (=> (not res!895388) (not e!1290405))))

(assert (=> b!2043256 (= res!895388 (>= (height!1177 (++!6081 (c!330914 acc!382) (c!330914 (_1!12030 lt!766215)))) (max!0 (height!1177 (c!330914 acc!382)) (height!1177 (c!330914 (_1!12030 lt!766215))))))))

(assert (= (and d!625454 res!895387) b!2043254))

(assert (= (and b!2043254 res!895385) b!2043255))

(assert (= (and b!2043255 res!895386) b!2043256))

(assert (= (and b!2043256 res!895388) b!2043257))

(declare-fun m!2487317 () Bool)

(assert (=> b!2043256 m!2487317))

(declare-fun m!2487319 () Bool)

(assert (=> b!2043256 m!2487319))

(declare-fun m!2487321 () Bool)

(assert (=> b!2043256 m!2487321))

(assert (=> b!2043256 m!2487317))

(declare-fun m!2487323 () Bool)

(assert (=> b!2043256 m!2487323))

(assert (=> b!2043256 m!2487319))

(assert (=> b!2043256 m!2487321))

(declare-fun m!2487325 () Bool)

(assert (=> b!2043256 m!2487325))

(assert (=> b!2043255 m!2487317))

(assert (=> b!2043255 m!2487319))

(assert (=> b!2043255 m!2487321))

(assert (=> b!2043255 m!2487317))

(assert (=> b!2043255 m!2487323))

(assert (=> b!2043255 m!2487319))

(assert (=> b!2043255 m!2487321))

(assert (=> b!2043255 m!2487325))

(declare-fun m!2487327 () Bool)

(assert (=> d!625454 m!2487327))

(assert (=> d!625454 m!2487317))

(declare-fun m!2487329 () Bool)

(assert (=> b!2043257 m!2487329))

(assert (=> b!2043257 m!2487117))

(declare-fun m!2487331 () Bool)

(assert (=> b!2043257 m!2487331))

(assert (=> b!2043257 m!2487117))

(assert (=> b!2043257 m!2487331))

(declare-fun m!2487333 () Bool)

(assert (=> b!2043257 m!2487333))

(assert (=> b!2043254 m!2487317))

(assert (=> b!2043254 m!2487317))

(declare-fun m!2487335 () Bool)

(assert (=> b!2043254 m!2487335))

(assert (=> b!2043141 d!625454))

(declare-fun d!625456 () Bool)

(assert (=> d!625456 (= (isEmpty!13964 rules!1563) ((_ is Nil!22387) rules!1563))))

(assert (=> b!2043121 d!625456))

(declare-fun d!625458 () Bool)

(assert (=> d!625458 (= (valid!1594 (_3!1491 lt!766225)) (validCacheMapDown!184 (cache!2293 (_3!1491 lt!766225))))))

(declare-fun bs!421903 () Bool)

(assert (= bs!421903 d!625458))

(declare-fun m!2487337 () Bool)

(assert (=> bs!421903 m!2487337))

(assert (=> b!2043130 d!625458))

(declare-fun d!625460 () Bool)

(assert (=> d!625460 (= (valid!1594 cacheDown!575) (validCacheMapDown!184 (cache!2293 cacheDown!575)))))

(declare-fun bs!421904 () Bool)

(assert (= bs!421904 d!625460))

(assert (=> bs!421904 m!2487263))

(assert (=> b!2043140 d!625460))

(declare-fun d!625462 () Bool)

(assert (=> d!625462 (= (list!9174 (_2!12030 lt!766218)) (list!9176 (c!330913 (_2!12030 lt!766218))))))

(declare-fun bs!421905 () Bool)

(assert (= bs!421905 d!625462))

(declare-fun m!2487339 () Bool)

(assert (=> bs!421905 m!2487339))

(assert (=> b!2043149 d!625462))

(declare-fun d!625464 () Bool)

(assert (=> d!625464 (= (list!9174 (_2!12030 lt!766215)) (list!9176 (c!330913 (_2!12030 lt!766215))))))

(declare-fun bs!421906 () Bool)

(assert (= bs!421906 d!625464))

(declare-fun m!2487341 () Bool)

(assert (=> bs!421906 m!2487341))

(assert (=> b!2043149 d!625464))

(declare-fun d!625466 () Bool)

(assert (=> d!625466 (= (array_inv!2198 (_keys!2295 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575))))))) (bvsge (size!17505 (_keys!2295 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2043148 d!625466))

(declare-fun d!625468 () Bool)

(assert (=> d!625468 (= (array_inv!2200 (_values!2278 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575))))))) (bvsge (size!17506 (_values!2278 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2043148 d!625468))

(declare-fun d!625470 () Bool)

(assert (=> d!625470 (= (isEmpty!13965 (list!9174 (_2!12030 lt!766220))) ((_ is Nil!22384) (list!9174 (_2!12030 lt!766220))))))

(assert (=> b!2043129 d!625470))

(declare-fun d!625472 () Bool)

(assert (=> d!625472 (= (list!9174 (_2!12030 lt!766220)) (list!9176 (c!330913 (_2!12030 lt!766220))))))

(declare-fun bs!421907 () Bool)

(assert (= bs!421907 d!625472))

(declare-fun m!2487343 () Bool)

(assert (=> bs!421907 m!2487343))

(assert (=> b!2043129 d!625472))

(declare-fun d!625474 () Bool)

(assert (=> d!625474 (= (list!9175 (_1!12030 lt!766220)) (list!9177 (c!330914 (_1!12030 lt!766220))))))

(declare-fun bs!421908 () Bool)

(assert (= bs!421908 d!625474))

(declare-fun m!2487345 () Bool)

(assert (=> bs!421908 m!2487345))

(assert (=> b!2043128 d!625474))

(declare-fun d!625476 () Bool)

(assert (=> d!625476 (= (list!9175 acc!382) (list!9177 (c!330914 acc!382)))))

(declare-fun bs!421909 () Bool)

(assert (= bs!421909 d!625476))

(declare-fun m!2487347 () Bool)

(assert (=> bs!421909 m!2487347))

(assert (=> b!2043128 d!625476))

(declare-fun b!2043258 () Bool)

(declare-fun e!1290408 () tuple2!21076)

(declare-fun lt!766258 () tuple2!21076)

(declare-fun lt!766257 () Option!4695)

(assert (=> b!2043258 (= e!1290408 (tuple2!21077 (prepend!910 (_1!12030 lt!766258) (_1!12028 (v!27096 lt!766257))) (_2!12030 lt!766258)))))

(assert (=> b!2043258 (= lt!766258 (lexRec!431 thiss!12889 rules!1563 (_2!12028 (v!27096 lt!766257))))))

(declare-fun b!2043259 () Bool)

(declare-fun res!895391 () Bool)

(declare-fun e!1290406 () Bool)

(assert (=> b!2043259 (=> (not res!895391) (not e!1290406))))

(declare-fun lt!766259 () tuple2!21076)

(assert (=> b!2043259 (= res!895391 (= (list!9175 (_1!12030 lt!766259)) (_1!12031 (lexList!988 thiss!12889 rules!1563 (list!9174 treated!60)))))))

(declare-fun b!2043260 () Bool)

(declare-fun e!1290409 () Bool)

(assert (=> b!2043260 (= e!1290409 (not (isEmpty!13966 (_1!12030 lt!766259))))))

(declare-fun b!2043262 () Bool)

(declare-fun e!1290407 () Bool)

(assert (=> b!2043262 (= e!1290407 e!1290409)))

(declare-fun res!895389 () Bool)

(assert (=> b!2043262 (= res!895389 (< (size!17510 (_2!12030 lt!766259)) (size!17510 treated!60)))))

(assert (=> b!2043262 (=> (not res!895389) (not e!1290409))))

(declare-fun b!2043263 () Bool)

(assert (=> b!2043263 (= e!1290408 (tuple2!21077 (BalanceConc!14769 Empty!7503) treated!60))))

(declare-fun b!2043264 () Bool)

(assert (=> b!2043264 (= e!1290407 (= (list!9174 (_2!12030 lt!766259)) (list!9174 treated!60)))))

(declare-fun d!625478 () Bool)

(assert (=> d!625478 e!1290406))

(declare-fun res!895390 () Bool)

(assert (=> d!625478 (=> (not res!895390) (not e!1290406))))

(assert (=> d!625478 (= res!895390 e!1290407)))

(declare-fun c!330940 () Bool)

(assert (=> d!625478 (= c!330940 (> (size!17511 (_1!12030 lt!766259)) 0))))

(assert (=> d!625478 (= lt!766259 e!1290408)))

(declare-fun c!330941 () Bool)

(assert (=> d!625478 (= c!330941 ((_ is Some!4694) lt!766257))))

(assert (=> d!625478 (= lt!766257 (maxPrefixZipperSequence!788 thiss!12889 rules!1563 treated!60))))

(assert (=> d!625478 (= (lexRec!431 thiss!12889 rules!1563 treated!60) lt!766259)))

(declare-fun b!2043261 () Bool)

(assert (=> b!2043261 (= e!1290406 (= (list!9174 (_2!12030 lt!766259)) (_2!12031 (lexList!988 thiss!12889 rules!1563 (list!9174 treated!60)))))))

(assert (= (and d!625478 c!330941) b!2043258))

(assert (= (and d!625478 (not c!330941)) b!2043263))

(assert (= (and d!625478 c!330940) b!2043262))

(assert (= (and d!625478 (not c!330940)) b!2043264))

(assert (= (and b!2043262 res!895389) b!2043260))

(assert (= (and d!625478 res!895390) b!2043259))

(assert (= (and b!2043259 res!895391) b!2043261))

(declare-fun m!2487349 () Bool)

(assert (=> b!2043264 m!2487349))

(assert (=> b!2043264 m!2487149))

(declare-fun m!2487351 () Bool)

(assert (=> b!2043259 m!2487351))

(assert (=> b!2043259 m!2487149))

(assert (=> b!2043259 m!2487149))

(declare-fun m!2487353 () Bool)

(assert (=> b!2043259 m!2487353))

(declare-fun m!2487355 () Bool)

(assert (=> b!2043260 m!2487355))

(declare-fun m!2487357 () Bool)

(assert (=> b!2043258 m!2487357))

(declare-fun m!2487359 () Bool)

(assert (=> b!2043258 m!2487359))

(assert (=> b!2043261 m!2487349))

(assert (=> b!2043261 m!2487149))

(assert (=> b!2043261 m!2487149))

(assert (=> b!2043261 m!2487353))

(declare-fun m!2487361 () Bool)

(assert (=> b!2043262 m!2487361))

(declare-fun m!2487363 () Bool)

(assert (=> b!2043262 m!2487363))

(declare-fun m!2487365 () Bool)

(assert (=> d!625478 m!2487365))

(declare-fun m!2487367 () Bool)

(assert (=> d!625478 m!2487367))

(assert (=> b!2043128 d!625478))

(declare-fun b!2043273 () Bool)

(declare-fun e!1290414 () tuple3!2054)

(declare-fun lt!766277 () tuple3!2054)

(declare-fun lt!766281 () tuple3!2054)

(assert (=> b!2043273 (= e!1290414 (tuple3!2055 (ite (and ((_ is None!4694) (_1!12029 lt!766277)) ((_ is None!4694) (_1!12029 lt!766281))) None!4694 (ite ((_ is None!4694) (_1!12029 lt!766281)) (_1!12029 lt!766277) (ite ((_ is None!4694) (_1!12029 lt!766277)) (_1!12029 lt!766281) (ite (>= (size!17507 (_1!12028 (v!27096 (_1!12029 lt!766277)))) (size!17507 (_1!12028 (v!27096 (_1!12029 lt!766281))))) (_1!12029 lt!766277) (_1!12029 lt!766281))))) (_2!12029 lt!766281) (_3!1491 lt!766281)))))

(declare-fun call!125291 () tuple3!2054)

(assert (=> b!2043273 (= lt!766277 call!125291)))

(assert (=> b!2043273 (= lt!766281 (maxPrefixZipperSequenceV2MemOnlyDeriv!6 thiss!12889 (t!191585 rules!1563) input!986 totalInput!418 (_2!12029 lt!766277) (_3!1491 lt!766277)))))

(declare-fun bm!125286 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!3 (LexerInterface!3626 Rule!7826 BalanceConc!14766 BalanceConc!14766 CacheUp!1208 CacheDown!1210) tuple3!2054)

(assert (=> bm!125286 (= call!125291 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!3 thiss!12889 (h!27788 rules!1563) input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2043274 () Bool)

(declare-fun res!895397 () Bool)

(declare-fun e!1290415 () Bool)

(assert (=> b!2043274 (=> (not res!895397) (not e!1290415))))

(declare-fun lt!766280 () tuple3!2054)

(assert (=> b!2043274 (= res!895397 (valid!1595 (_2!12029 lt!766280)))))

(declare-fun b!2043275 () Bool)

(declare-fun lt!766278 () tuple3!2054)

(assert (=> b!2043275 (= e!1290414 (tuple3!2055 (_1!12029 lt!766278) (_2!12029 lt!766278) (_3!1491 lt!766278)))))

(assert (=> b!2043275 (= lt!766278 call!125291)))

(declare-fun b!2043276 () Bool)

(assert (=> b!2043276 (= e!1290415 (valid!1594 (_3!1491 lt!766280)))))

(declare-fun d!625480 () Bool)

(assert (=> d!625480 e!1290415))

(declare-fun res!895396 () Bool)

(assert (=> d!625480 (=> (not res!895396) (not e!1290415))))

(declare-fun maxPrefixZipperSequenceV2!315 (LexerInterface!3626 List!22471 BalanceConc!14766 BalanceConc!14766) Option!4695)

(assert (=> d!625480 (= res!895396 (= (_1!12029 lt!766280) (maxPrefixZipperSequenceV2!315 thiss!12889 rules!1563 input!986 totalInput!418)))))

(assert (=> d!625480 (= lt!766280 e!1290414)))

(declare-fun c!330944 () Bool)

(assert (=> d!625480 (= c!330944 (and ((_ is Cons!22387) rules!1563) ((_ is Nil!22387) (t!191585 rules!1563))))))

(declare-fun lt!766276 () Unit!37017)

(declare-fun lt!766283 () Unit!37017)

(assert (=> d!625480 (= lt!766276 lt!766283)))

(declare-fun lt!766282 () List!22468)

(declare-fun lt!766279 () List!22468)

(declare-fun isPrefix!1992 (List!22468 List!22468) Bool)

(assert (=> d!625480 (isPrefix!1992 lt!766282 lt!766279)))

(declare-fun lemmaIsPrefixRefl!1310 (List!22468 List!22468) Unit!37017)

(assert (=> d!625480 (= lt!766283 (lemmaIsPrefixRefl!1310 lt!766282 lt!766279))))

(assert (=> d!625480 (= lt!766279 (list!9174 input!986))))

(assert (=> d!625480 (= lt!766282 (list!9174 input!986))))

(assert (=> d!625480 (rulesValidInductive!1395 thiss!12889 rules!1563)))

(assert (=> d!625480 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!6 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575) lt!766280)))

(assert (= (and d!625480 c!330944) b!2043275))

(assert (= (and d!625480 (not c!330944)) b!2043273))

(assert (= (or b!2043275 b!2043273) bm!125286))

(assert (= (and d!625480 res!895396) b!2043274))

(assert (= (and b!2043274 res!895397) b!2043276))

(declare-fun m!2487369 () Bool)

(assert (=> b!2043274 m!2487369))

(declare-fun m!2487371 () Bool)

(assert (=> bm!125286 m!2487371))

(declare-fun m!2487373 () Bool)

(assert (=> d!625480 m!2487373))

(declare-fun m!2487375 () Bool)

(assert (=> d!625480 m!2487375))

(assert (=> d!625480 m!2487147))

(assert (=> d!625480 m!2487101))

(declare-fun m!2487377 () Bool)

(assert (=> d!625480 m!2487377))

(declare-fun m!2487379 () Bool)

(assert (=> b!2043273 m!2487379))

(declare-fun m!2487381 () Bool)

(assert (=> b!2043276 m!2487381))

(assert (=> b!2043138 d!625480))

(declare-fun b!2043288 () Bool)

(declare-fun e!1290418 () Bool)

(declare-fun tp!607074 () Bool)

(declare-fun tp!607071 () Bool)

(assert (=> b!2043288 (= e!1290418 (and tp!607074 tp!607071))))

(declare-fun b!2043289 () Bool)

(declare-fun tp!607072 () Bool)

(assert (=> b!2043289 (= e!1290418 tp!607072)))

(declare-fun b!2043287 () Bool)

(declare-fun tp_is_empty!9295 () Bool)

(assert (=> b!2043287 (= e!1290418 tp_is_empty!9295)))

(assert (=> b!2043137 (= tp!607056 e!1290418)))

(declare-fun b!2043290 () Bool)

(declare-fun tp!607075 () Bool)

(declare-fun tp!607073 () Bool)

(assert (=> b!2043290 (= e!1290418 (and tp!607075 tp!607073))))

(assert (= (and b!2043137 ((_ is ElementMatch!5441) (regex!4013 (h!27788 rules!1563)))) b!2043287))

(assert (= (and b!2043137 ((_ is Concat!9590) (regex!4013 (h!27788 rules!1563)))) b!2043288))

(assert (= (and b!2043137 ((_ is Star!5441) (regex!4013 (h!27788 rules!1563)))) b!2043289))

(assert (= (and b!2043137 ((_ is Union!5441) (regex!4013 (h!27788 rules!1563)))) b!2043290))

(declare-fun b!2043301 () Bool)

(declare-fun b_free!57045 () Bool)

(declare-fun b_next!57749 () Bool)

(assert (=> b!2043301 (= b_free!57045 (not b_next!57749))))

(declare-fun tp!607085 () Bool)

(declare-fun b_and!162985 () Bool)

(assert (=> b!2043301 (= tp!607085 b_and!162985)))

(declare-fun b_free!57047 () Bool)

(declare-fun b_next!57751 () Bool)

(assert (=> b!2043301 (= b_free!57047 (not b_next!57751))))

(declare-fun tp!607087 () Bool)

(declare-fun b_and!162987 () Bool)

(assert (=> b!2043301 (= tp!607087 b_and!162987)))

(declare-fun e!1290428 () Bool)

(assert (=> b!2043301 (= e!1290428 (and tp!607085 tp!607087))))

(declare-fun e!1290429 () Bool)

(declare-fun tp!607084 () Bool)

(declare-fun b!2043300 () Bool)

(assert (=> b!2043300 (= e!1290429 (and tp!607084 (inv!29720 (tag!4503 (h!27788 (t!191585 rules!1563)))) (inv!29730 (transformation!4013 (h!27788 (t!191585 rules!1563)))) e!1290428))))

(declare-fun b!2043299 () Bool)

(declare-fun e!1290427 () Bool)

(declare-fun tp!607086 () Bool)

(assert (=> b!2043299 (= e!1290427 (and e!1290429 tp!607086))))

(assert (=> b!2043147 (= tp!607040 e!1290427)))

(assert (= b!2043300 b!2043301))

(assert (= b!2043299 b!2043300))

(assert (= (and b!2043147 ((_ is Cons!22387) (t!191585 rules!1563))) b!2043299))

(declare-fun m!2487383 () Bool)

(assert (=> b!2043300 m!2487383))

(declare-fun m!2487385 () Bool)

(assert (=> b!2043300 m!2487385))

(declare-fun tp!607095 () Bool)

(declare-fun b!2043310 () Bool)

(declare-fun e!1290436 () Bool)

(declare-fun tp!607096 () Bool)

(assert (=> b!2043310 (= e!1290436 (and (inv!29725 (left!17789 (c!330913 totalInput!418))) tp!607096 (inv!29725 (right!18119 (c!330913 totalInput!418))) tp!607095))))

(declare-fun b!2043312 () Bool)

(declare-fun e!1290435 () Bool)

(declare-fun tp!607094 () Bool)

(assert (=> b!2043312 (= e!1290435 tp!607094)))

(declare-fun b!2043311 () Bool)

(declare-fun inv!29735 (IArray!15009) Bool)

(assert (=> b!2043311 (= e!1290436 (and (inv!29735 (xs!10410 (c!330913 totalInput!418))) e!1290435))))

(assert (=> b!2043118 (= tp!607055 (and (inv!29725 (c!330913 totalInput!418)) e!1290436))))

(assert (= (and b!2043118 ((_ is Node!7502) (c!330913 totalInput!418))) b!2043310))

(assert (= b!2043311 b!2043312))

(assert (= (and b!2043118 ((_ is Leaf!10990) (c!330913 totalInput!418))) b!2043311))

(declare-fun m!2487387 () Bool)

(assert (=> b!2043310 m!2487387))

(declare-fun m!2487389 () Bool)

(assert (=> b!2043310 m!2487389))

(declare-fun m!2487391 () Bool)

(assert (=> b!2043311 m!2487391))

(assert (=> b!2043118 m!2487127))

(declare-fun condMapEmpty!9226 () Bool)

(declare-fun mapDefault!9226 () List!22466)

(assert (=> mapNonEmpty!9222 (= condMapEmpty!9226 (= mapRest!9223 ((as const (Array (_ BitVec 32) List!22466)) mapDefault!9226)))))

(declare-fun e!1290452 () Bool)

(declare-fun mapRes!9226 () Bool)

(assert (=> mapNonEmpty!9222 (= tp!607058 (and e!1290452 mapRes!9226))))

(declare-fun setIsEmpty!11814 () Bool)

(declare-fun setRes!11814 () Bool)

(assert (=> setIsEmpty!11814 setRes!11814))

(declare-fun b!2043327 () Bool)

(declare-fun e!1290449 () Bool)

(declare-fun tp!607123 () Bool)

(assert (=> b!2043327 (= e!1290449 tp!607123)))

(declare-fun e!1290453 () Bool)

(declare-fun tp!607124 () Bool)

(declare-fun mapValue!9226 () List!22466)

(declare-fun setRes!11815 () Bool)

(declare-fun b!2043328 () Bool)

(declare-fun tp!607127 () Bool)

(declare-fun inv!29736 (Context!2022) Bool)

(assert (=> b!2043328 (= e!1290453 (and tp!607127 (inv!29736 (_2!12024 (_1!12025 (h!27783 mapValue!9226)))) e!1290449 tp_is_empty!9295 setRes!11815 tp!607124))))

(declare-fun condSetEmpty!11815 () Bool)

(assert (=> b!2043328 (= condSetEmpty!11815 (= (_2!12025 (h!27783 mapValue!9226)) ((as const (Array Context!2022 Bool)) false)))))

(declare-fun mapNonEmpty!9226 () Bool)

(declare-fun tp!607126 () Bool)

(assert (=> mapNonEmpty!9226 (= mapRes!9226 (and tp!607126 e!1290453))))

(declare-fun mapRest!9226 () (Array (_ BitVec 32) List!22466))

(declare-fun mapKey!9226 () (_ BitVec 32))

(assert (=> mapNonEmpty!9226 (= mapRest!9223 (store mapRest!9226 mapKey!9226 mapValue!9226))))

(declare-fun tp!607129 () Bool)

(declare-fun tp!607119 () Bool)

(declare-fun b!2043329 () Bool)

(declare-fun e!1290451 () Bool)

(assert (=> b!2043329 (= e!1290452 (and tp!607129 (inv!29736 (_2!12024 (_1!12025 (h!27783 mapDefault!9226)))) e!1290451 tp_is_empty!9295 setRes!11814 tp!607119))))

(declare-fun condSetEmpty!11814 () Bool)

(assert (=> b!2043329 (= condSetEmpty!11814 (= (_2!12025 (h!27783 mapDefault!9226)) ((as const (Array Context!2022 Bool)) false)))))

(declare-fun mapIsEmpty!9226 () Bool)

(assert (=> mapIsEmpty!9226 mapRes!9226))

(declare-fun b!2043330 () Bool)

(declare-fun e!1290450 () Bool)

(declare-fun tp!607128 () Bool)

(assert (=> b!2043330 (= e!1290450 tp!607128)))

(declare-fun setElem!11815 () Context!2022)

(declare-fun setNonEmpty!11814 () Bool)

(declare-fun tp!607122 () Bool)

(assert (=> setNonEmpty!11814 (= setRes!11815 (and tp!607122 (inv!29736 setElem!11815) e!1290450))))

(declare-fun setRest!11815 () (InoxSet Context!2022))

(assert (=> setNonEmpty!11814 (= (_2!12025 (h!27783 mapValue!9226)) ((_ map or) (store ((as const (Array Context!2022 Bool)) false) setElem!11815 true) setRest!11815))))

(declare-fun setIsEmpty!11815 () Bool)

(assert (=> setIsEmpty!11815 setRes!11815))

(declare-fun b!2043331 () Bool)

(declare-fun tp!607120 () Bool)

(assert (=> b!2043331 (= e!1290451 tp!607120)))

(declare-fun e!1290454 () Bool)

(declare-fun tp!607121 () Bool)

(declare-fun setNonEmpty!11815 () Bool)

(declare-fun setElem!11814 () Context!2022)

(assert (=> setNonEmpty!11815 (= setRes!11814 (and tp!607121 (inv!29736 setElem!11814) e!1290454))))

(declare-fun setRest!11814 () (InoxSet Context!2022))

(assert (=> setNonEmpty!11815 (= (_2!12025 (h!27783 mapDefault!9226)) ((_ map or) (store ((as const (Array Context!2022 Bool)) false) setElem!11814 true) setRest!11814))))

(declare-fun b!2043332 () Bool)

(declare-fun tp!607125 () Bool)

(assert (=> b!2043332 (= e!1290454 tp!607125)))

(assert (= (and mapNonEmpty!9222 condMapEmpty!9226) mapIsEmpty!9226))

(assert (= (and mapNonEmpty!9222 (not condMapEmpty!9226)) mapNonEmpty!9226))

(assert (= b!2043328 b!2043327))

(assert (= (and b!2043328 condSetEmpty!11815) setIsEmpty!11815))

(assert (= (and b!2043328 (not condSetEmpty!11815)) setNonEmpty!11814))

(assert (= setNonEmpty!11814 b!2043330))

(assert (= (and mapNonEmpty!9226 ((_ is Cons!22382) mapValue!9226)) b!2043328))

(assert (= b!2043329 b!2043331))

(assert (= (and b!2043329 condSetEmpty!11814) setIsEmpty!11814))

(assert (= (and b!2043329 (not condSetEmpty!11814)) setNonEmpty!11815))

(assert (= setNonEmpty!11815 b!2043332))

(assert (= (and mapNonEmpty!9222 ((_ is Cons!22382) mapDefault!9226)) b!2043329))

(declare-fun m!2487393 () Bool)

(assert (=> b!2043328 m!2487393))

(declare-fun m!2487395 () Bool)

(assert (=> setNonEmpty!11814 m!2487395))

(declare-fun m!2487397 () Bool)

(assert (=> mapNonEmpty!9226 m!2487397))

(declare-fun m!2487399 () Bool)

(assert (=> setNonEmpty!11815 m!2487399))

(declare-fun m!2487401 () Bool)

(assert (=> b!2043329 m!2487401))

(declare-fun setElem!11818 () Context!2022)

(declare-fun tp!607142 () Bool)

(declare-fun e!1290461 () Bool)

(declare-fun setRes!11818 () Bool)

(declare-fun setNonEmpty!11818 () Bool)

(assert (=> setNonEmpty!11818 (= setRes!11818 (and tp!607142 (inv!29736 setElem!11818) e!1290461))))

(declare-fun setRest!11818 () (InoxSet Context!2022))

(assert (=> setNonEmpty!11818 (= (_2!12025 (h!27783 mapValue!9223)) ((_ map or) (store ((as const (Array Context!2022 Bool)) false) setElem!11818 true) setRest!11818))))

(declare-fun b!2043341 () Bool)

(declare-fun tp!607143 () Bool)

(assert (=> b!2043341 (= e!1290461 tp!607143)))

(declare-fun e!1290463 () Bool)

(declare-fun e!1290462 () Bool)

(declare-fun tp!607141 () Bool)

(declare-fun b!2043342 () Bool)

(declare-fun tp!607140 () Bool)

(assert (=> b!2043342 (= e!1290462 (and tp!607140 (inv!29736 (_2!12024 (_1!12025 (h!27783 mapValue!9223)))) e!1290463 tp_is_empty!9295 setRes!11818 tp!607141))))

(declare-fun condSetEmpty!11818 () Bool)

(assert (=> b!2043342 (= condSetEmpty!11818 (= (_2!12025 (h!27783 mapValue!9223)) ((as const (Array Context!2022 Bool)) false)))))

(declare-fun b!2043343 () Bool)

(declare-fun tp!607144 () Bool)

(assert (=> b!2043343 (= e!1290463 tp!607144)))

(declare-fun setIsEmpty!11818 () Bool)

(assert (=> setIsEmpty!11818 setRes!11818))

(assert (=> mapNonEmpty!9222 (= tp!607046 e!1290462)))

(assert (= b!2043342 b!2043343))

(assert (= (and b!2043342 condSetEmpty!11818) setIsEmpty!11818))

(assert (= (and b!2043342 (not condSetEmpty!11818)) setNonEmpty!11818))

(assert (= setNonEmpty!11818 b!2043341))

(assert (= (and mapNonEmpty!9222 ((_ is Cons!22382) mapValue!9223)) b!2043342))

(declare-fun m!2487403 () Bool)

(assert (=> setNonEmpty!11818 m!2487403))

(declare-fun m!2487405 () Bool)

(assert (=> b!2043342 m!2487405))

(declare-fun setIsEmpty!11821 () Bool)

(declare-fun setRes!11821 () Bool)

(assert (=> setIsEmpty!11821 setRes!11821))

(declare-fun b!2043352 () Bool)

(declare-fun e!1290471 () Bool)

(declare-fun tp!607156 () Bool)

(assert (=> b!2043352 (= e!1290471 tp!607156)))

(declare-fun b!2043353 () Bool)

(declare-fun e!1290472 () Bool)

(declare-fun tp!607153 () Bool)

(assert (=> b!2043353 (= e!1290472 tp!607153)))

(declare-fun e!1290470 () Bool)

(declare-fun tp!607154 () Bool)

(declare-fun b!2043354 () Bool)

(assert (=> b!2043354 (= e!1290470 (and (inv!29736 (_1!12026 (_1!12027 (h!27787 (zeroValue!2257 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562)))))))))) e!1290472 tp_is_empty!9295 setRes!11821 tp!607154))))

(declare-fun condSetEmpty!11821 () Bool)

(assert (=> b!2043354 (= condSetEmpty!11821 (= (_2!12027 (h!27787 (zeroValue!2257 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562)))))))) ((as const (Array Context!2022 Bool)) false)))))

(declare-fun setNonEmpty!11821 () Bool)

(declare-fun setElem!11821 () Context!2022)

(declare-fun tp!607155 () Bool)

(assert (=> setNonEmpty!11821 (= setRes!11821 (and tp!607155 (inv!29736 setElem!11821) e!1290471))))

(declare-fun setRest!11821 () (InoxSet Context!2022))

(assert (=> setNonEmpty!11821 (= (_2!12027 (h!27787 (zeroValue!2257 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2022 Bool)) false) setElem!11821 true) setRest!11821))))

(assert (=> b!2043135 (= tp!607045 e!1290470)))

(assert (= b!2043354 b!2043353))

(assert (= (and b!2043354 condSetEmpty!11821) setIsEmpty!11821))

(assert (= (and b!2043354 (not condSetEmpty!11821)) setNonEmpty!11821))

(assert (= setNonEmpty!11821 b!2043352))

(assert (= (and b!2043135 ((_ is Cons!22386) (zeroValue!2257 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562)))))))) b!2043354))

(declare-fun m!2487407 () Bool)

(assert (=> b!2043354 m!2487407))

(declare-fun m!2487409 () Bool)

(assert (=> setNonEmpty!11821 m!2487409))

(declare-fun setIsEmpty!11822 () Bool)

(declare-fun setRes!11822 () Bool)

(assert (=> setIsEmpty!11822 setRes!11822))

(declare-fun b!2043355 () Bool)

(declare-fun e!1290474 () Bool)

(declare-fun tp!607160 () Bool)

(assert (=> b!2043355 (= e!1290474 tp!607160)))

(declare-fun b!2043356 () Bool)

(declare-fun e!1290475 () Bool)

(declare-fun tp!607157 () Bool)

(assert (=> b!2043356 (= e!1290475 tp!607157)))

(declare-fun e!1290473 () Bool)

(declare-fun b!2043357 () Bool)

(declare-fun tp!607158 () Bool)

(assert (=> b!2043357 (= e!1290473 (and (inv!29736 (_1!12026 (_1!12027 (h!27787 (minValue!2257 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562)))))))))) e!1290475 tp_is_empty!9295 setRes!11822 tp!607158))))

(declare-fun condSetEmpty!11822 () Bool)

(assert (=> b!2043357 (= condSetEmpty!11822 (= (_2!12027 (h!27787 (minValue!2257 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562)))))))) ((as const (Array Context!2022 Bool)) false)))))

(declare-fun setNonEmpty!11822 () Bool)

(declare-fun setElem!11822 () Context!2022)

(declare-fun tp!607159 () Bool)

(assert (=> setNonEmpty!11822 (= setRes!11822 (and tp!607159 (inv!29736 setElem!11822) e!1290474))))

(declare-fun setRest!11822 () (InoxSet Context!2022))

(assert (=> setNonEmpty!11822 (= (_2!12027 (h!27787 (minValue!2257 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2022 Bool)) false) setElem!11822 true) setRest!11822))))

(assert (=> b!2043135 (= tp!607054 e!1290473)))

(assert (= b!2043357 b!2043356))

(assert (= (and b!2043357 condSetEmpty!11822) setIsEmpty!11822))

(assert (= (and b!2043357 (not condSetEmpty!11822)) setNonEmpty!11822))

(assert (= setNonEmpty!11822 b!2043355))

(assert (= (and b!2043135 ((_ is Cons!22386) (minValue!2257 (v!27094 (underlying!4193 (v!27095 (underlying!4194 (cache!2294 cacheUp!562)))))))) b!2043357))

(declare-fun m!2487411 () Bool)

(assert (=> b!2043357 m!2487411))

(declare-fun m!2487413 () Bool)

(assert (=> setNonEmpty!11822 m!2487413))

(declare-fun tp!607168 () Bool)

(declare-fun tp!607169 () Bool)

(declare-fun b!2043366 () Bool)

(declare-fun e!1290480 () Bool)

(assert (=> b!2043366 (= e!1290480 (and (inv!29724 (left!17790 (c!330914 acc!382))) tp!607169 (inv!29724 (right!18120 (c!330914 acc!382))) tp!607168))))

(declare-fun b!2043368 () Bool)

(declare-fun e!1290481 () Bool)

(declare-fun tp!607167 () Bool)

(assert (=> b!2043368 (= e!1290481 tp!607167)))

(declare-fun b!2043367 () Bool)

(declare-fun inv!29737 (IArray!15011) Bool)

(assert (=> b!2043367 (= e!1290480 (and (inv!29737 (xs!10411 (c!330914 acc!382))) e!1290481))))

(assert (=> b!2043117 (= tp!607047 (and (inv!29724 (c!330914 acc!382)) e!1290480))))

(assert (= (and b!2043117 ((_ is Node!7503) (c!330914 acc!382))) b!2043366))

(assert (= b!2043367 b!2043368))

(assert (= (and b!2043117 ((_ is Leaf!10991) (c!330914 acc!382))) b!2043367))

(declare-fun m!2487415 () Bool)

(assert (=> b!2043366 m!2487415))

(declare-fun m!2487417 () Bool)

(assert (=> b!2043366 m!2487417))

(declare-fun m!2487419 () Bool)

(assert (=> b!2043367 m!2487419))

(assert (=> b!2043117 m!2487123))

(declare-fun b!2043369 () Bool)

(declare-fun tp!607172 () Bool)

(declare-fun e!1290483 () Bool)

(declare-fun tp!607171 () Bool)

(assert (=> b!2043369 (= e!1290483 (and (inv!29725 (left!17789 (c!330913 input!986))) tp!607172 (inv!29725 (right!18119 (c!330913 input!986))) tp!607171))))

(declare-fun b!2043371 () Bool)

(declare-fun e!1290482 () Bool)

(declare-fun tp!607170 () Bool)

(assert (=> b!2043371 (= e!1290482 tp!607170)))

(declare-fun b!2043370 () Bool)

(assert (=> b!2043370 (= e!1290483 (and (inv!29735 (xs!10410 (c!330913 input!986))) e!1290482))))

(assert (=> b!2043145 (= tp!607048 (and (inv!29725 (c!330913 input!986)) e!1290483))))

(assert (= (and b!2043145 ((_ is Node!7502) (c!330913 input!986))) b!2043369))

(assert (= b!2043370 b!2043371))

(assert (= (and b!2043145 ((_ is Leaf!10990) (c!330913 input!986))) b!2043370))

(declare-fun m!2487421 () Bool)

(assert (=> b!2043369 m!2487421))

(declare-fun m!2487423 () Bool)

(assert (=> b!2043369 m!2487423))

(declare-fun m!2487425 () Bool)

(assert (=> b!2043370 m!2487425))

(assert (=> b!2043145 m!2487097))

(declare-fun setNonEmpty!11823 () Bool)

(declare-fun tp!607175 () Bool)

(declare-fun setElem!11823 () Context!2022)

(declare-fun setRes!11823 () Bool)

(declare-fun e!1290484 () Bool)

(assert (=> setNonEmpty!11823 (= setRes!11823 (and tp!607175 (inv!29736 setElem!11823) e!1290484))))

(declare-fun setRest!11823 () (InoxSet Context!2022))

(assert (=> setNonEmpty!11823 (= (_2!12025 (h!27783 mapDefault!9223)) ((_ map or) (store ((as const (Array Context!2022 Bool)) false) setElem!11823 true) setRest!11823))))

(declare-fun b!2043372 () Bool)

(declare-fun tp!607176 () Bool)

(assert (=> b!2043372 (= e!1290484 tp!607176)))

(declare-fun e!1290486 () Bool)

(declare-fun tp!607174 () Bool)

(declare-fun e!1290485 () Bool)

(declare-fun b!2043373 () Bool)

(declare-fun tp!607173 () Bool)

(assert (=> b!2043373 (= e!1290485 (and tp!607173 (inv!29736 (_2!12024 (_1!12025 (h!27783 mapDefault!9223)))) e!1290486 tp_is_empty!9295 setRes!11823 tp!607174))))

(declare-fun condSetEmpty!11823 () Bool)

(assert (=> b!2043373 (= condSetEmpty!11823 (= (_2!12025 (h!27783 mapDefault!9223)) ((as const (Array Context!2022 Bool)) false)))))

(declare-fun b!2043374 () Bool)

(declare-fun tp!607177 () Bool)

(assert (=> b!2043374 (= e!1290486 tp!607177)))

(declare-fun setIsEmpty!11823 () Bool)

(assert (=> setIsEmpty!11823 setRes!11823))

(assert (=> b!2043116 (= tp!607053 e!1290485)))

(assert (= b!2043373 b!2043374))

(assert (= (and b!2043373 condSetEmpty!11823) setIsEmpty!11823))

(assert (= (and b!2043373 (not condSetEmpty!11823)) setNonEmpty!11823))

(assert (= setNonEmpty!11823 b!2043372))

(assert (= (and b!2043116 ((_ is Cons!22382) mapDefault!9223)) b!2043373))

(declare-fun m!2487427 () Bool)

(assert (=> setNonEmpty!11823 m!2487427))

(declare-fun m!2487429 () Bool)

(assert (=> b!2043373 m!2487429))

(declare-fun b!2043375 () Bool)

(declare-fun tp!607179 () Bool)

(declare-fun tp!607180 () Bool)

(declare-fun e!1290488 () Bool)

(assert (=> b!2043375 (= e!1290488 (and (inv!29725 (left!17789 (c!330913 treated!60))) tp!607180 (inv!29725 (right!18119 (c!330913 treated!60))) tp!607179))))

(declare-fun b!2043377 () Bool)

(declare-fun e!1290487 () Bool)

(declare-fun tp!607178 () Bool)

(assert (=> b!2043377 (= e!1290487 tp!607178)))

(declare-fun b!2043376 () Bool)

(assert (=> b!2043376 (= e!1290488 (and (inv!29735 (xs!10410 (c!330913 treated!60))) e!1290487))))

(assert (=> b!2043131 (= tp!607049 (and (inv!29725 (c!330913 treated!60)) e!1290488))))

(assert (= (and b!2043131 ((_ is Node!7502) (c!330913 treated!60))) b!2043375))

(assert (= b!2043376 b!2043377))

(assert (= (and b!2043131 ((_ is Leaf!10990) (c!330913 treated!60))) b!2043376))

(declare-fun m!2487431 () Bool)

(assert (=> b!2043375 m!2487431))

(declare-fun m!2487433 () Bool)

(assert (=> b!2043375 m!2487433))

(declare-fun m!2487435 () Bool)

(assert (=> b!2043376 m!2487435))

(assert (=> b!2043131 m!2487121))

(declare-fun b!2043392 () Bool)

(declare-fun e!1290501 () Bool)

(declare-fun tp!607199 () Bool)

(assert (=> b!2043392 (= e!1290501 tp!607199)))

(declare-fun setIsEmpty!11828 () Bool)

(declare-fun setRes!11828 () Bool)

(assert (=> setIsEmpty!11828 setRes!11828))

(declare-fun mapNonEmpty!9229 () Bool)

(declare-fun mapRes!9229 () Bool)

(declare-fun tp!607202 () Bool)

(declare-fun e!1290506 () Bool)

(assert (=> mapNonEmpty!9229 (= mapRes!9229 (and tp!607202 e!1290506))))

(declare-fun mapKey!9229 () (_ BitVec 32))

(declare-fun mapRest!9229 () (Array (_ BitVec 32) List!22470))

(declare-fun mapValue!9229 () List!22470)

(assert (=> mapNonEmpty!9229 (= mapRest!9222 (store mapRest!9229 mapKey!9229 mapValue!9229))))

(declare-fun condMapEmpty!9229 () Bool)

(declare-fun mapDefault!9229 () List!22470)

(assert (=> mapNonEmpty!9223 (= condMapEmpty!9229 (= mapRest!9222 ((as const (Array (_ BitVec 32) List!22470)) mapDefault!9229)))))

(declare-fun e!1290504 () Bool)

(assert (=> mapNonEmpty!9223 (= tp!607044 (and e!1290504 mapRes!9229))))

(declare-fun setIsEmpty!11829 () Bool)

(declare-fun setRes!11829 () Bool)

(assert (=> setIsEmpty!11829 setRes!11829))

(declare-fun setElem!11828 () Context!2022)

(declare-fun tp!607201 () Bool)

(declare-fun setNonEmpty!11828 () Bool)

(assert (=> setNonEmpty!11828 (= setRes!11829 (and tp!607201 (inv!29736 setElem!11828) e!1290501))))

(declare-fun setRest!11828 () (InoxSet Context!2022))

(assert (=> setNonEmpty!11828 (= (_2!12027 (h!27787 mapDefault!9229)) ((_ map or) (store ((as const (Array Context!2022 Bool)) false) setElem!11828 true) setRest!11828))))

(declare-fun b!2043393 () Bool)

(declare-fun e!1290502 () Bool)

(declare-fun tp!607203 () Bool)

(assert (=> b!2043393 (= e!1290502 tp!607203)))

(declare-fun tp!607204 () Bool)

(declare-fun b!2043394 () Bool)

(assert (=> b!2043394 (= e!1290504 (and (inv!29736 (_1!12026 (_1!12027 (h!27787 mapDefault!9229)))) e!1290502 tp_is_empty!9295 setRes!11829 tp!607204))))

(declare-fun condSetEmpty!11829 () Bool)

(assert (=> b!2043394 (= condSetEmpty!11829 (= (_2!12027 (h!27787 mapDefault!9229)) ((as const (Array Context!2022 Bool)) false)))))

(declare-fun tp!607200 () Bool)

(declare-fun b!2043395 () Bool)

(declare-fun e!1290503 () Bool)

(assert (=> b!2043395 (= e!1290506 (and (inv!29736 (_1!12026 (_1!12027 (h!27787 mapValue!9229)))) e!1290503 tp_is_empty!9295 setRes!11828 tp!607200))))

(declare-fun condSetEmpty!11828 () Bool)

(assert (=> b!2043395 (= condSetEmpty!11828 (= (_2!12027 (h!27787 mapValue!9229)) ((as const (Array Context!2022 Bool)) false)))))

(declare-fun b!2043396 () Bool)

(declare-fun tp!607206 () Bool)

(assert (=> b!2043396 (= e!1290503 tp!607206)))

(declare-fun b!2043397 () Bool)

(declare-fun e!1290505 () Bool)

(declare-fun tp!607207 () Bool)

(assert (=> b!2043397 (= e!1290505 tp!607207)))

(declare-fun setNonEmpty!11829 () Bool)

(declare-fun setElem!11829 () Context!2022)

(declare-fun tp!607205 () Bool)

(assert (=> setNonEmpty!11829 (= setRes!11828 (and tp!607205 (inv!29736 setElem!11829) e!1290505))))

(declare-fun setRest!11829 () (InoxSet Context!2022))

(assert (=> setNonEmpty!11829 (= (_2!12027 (h!27787 mapValue!9229)) ((_ map or) (store ((as const (Array Context!2022 Bool)) false) setElem!11829 true) setRest!11829))))

(declare-fun mapIsEmpty!9229 () Bool)

(assert (=> mapIsEmpty!9229 mapRes!9229))

(assert (= (and mapNonEmpty!9223 condMapEmpty!9229) mapIsEmpty!9229))

(assert (= (and mapNonEmpty!9223 (not condMapEmpty!9229)) mapNonEmpty!9229))

(assert (= b!2043395 b!2043396))

(assert (= (and b!2043395 condSetEmpty!11828) setIsEmpty!11828))

(assert (= (and b!2043395 (not condSetEmpty!11828)) setNonEmpty!11829))

(assert (= setNonEmpty!11829 b!2043397))

(assert (= (and mapNonEmpty!9229 ((_ is Cons!22386) mapValue!9229)) b!2043395))

(assert (= b!2043394 b!2043393))

(assert (= (and b!2043394 condSetEmpty!11829) setIsEmpty!11829))

(assert (= (and b!2043394 (not condSetEmpty!11829)) setNonEmpty!11828))

(assert (= setNonEmpty!11828 b!2043392))

(assert (= (and mapNonEmpty!9223 ((_ is Cons!22386) mapDefault!9229)) b!2043394))

(declare-fun m!2487437 () Bool)

(assert (=> setNonEmpty!11829 m!2487437))

(declare-fun m!2487439 () Bool)

(assert (=> setNonEmpty!11828 m!2487439))

(declare-fun m!2487441 () Bool)

(assert (=> b!2043395 m!2487441))

(declare-fun m!2487443 () Bool)

(assert (=> mapNonEmpty!9229 m!2487443))

(declare-fun m!2487445 () Bool)

(assert (=> b!2043394 m!2487445))

(declare-fun setIsEmpty!11830 () Bool)

(declare-fun setRes!11830 () Bool)

(assert (=> setIsEmpty!11830 setRes!11830))

(declare-fun b!2043398 () Bool)

(declare-fun e!1290508 () Bool)

(declare-fun tp!607211 () Bool)

(assert (=> b!2043398 (= e!1290508 tp!607211)))

(declare-fun b!2043399 () Bool)

(declare-fun e!1290509 () Bool)

(declare-fun tp!607208 () Bool)

(assert (=> b!2043399 (= e!1290509 tp!607208)))

(declare-fun tp!607209 () Bool)

(declare-fun e!1290507 () Bool)

(declare-fun b!2043400 () Bool)

(assert (=> b!2043400 (= e!1290507 (and (inv!29736 (_1!12026 (_1!12027 (h!27787 mapValue!9222)))) e!1290509 tp_is_empty!9295 setRes!11830 tp!607209))))

(declare-fun condSetEmpty!11830 () Bool)

(assert (=> b!2043400 (= condSetEmpty!11830 (= (_2!12027 (h!27787 mapValue!9222)) ((as const (Array Context!2022 Bool)) false)))))

(declare-fun setElem!11830 () Context!2022)

(declare-fun tp!607210 () Bool)

(declare-fun setNonEmpty!11830 () Bool)

(assert (=> setNonEmpty!11830 (= setRes!11830 (and tp!607210 (inv!29736 setElem!11830) e!1290508))))

(declare-fun setRest!11830 () (InoxSet Context!2022))

(assert (=> setNonEmpty!11830 (= (_2!12027 (h!27787 mapValue!9222)) ((_ map or) (store ((as const (Array Context!2022 Bool)) false) setElem!11830 true) setRest!11830))))

(assert (=> mapNonEmpty!9223 (= tp!607052 e!1290507)))

(assert (= b!2043400 b!2043399))

(assert (= (and b!2043400 condSetEmpty!11830) setIsEmpty!11830))

(assert (= (and b!2043400 (not condSetEmpty!11830)) setNonEmpty!11830))

(assert (= setNonEmpty!11830 b!2043398))

(assert (= (and mapNonEmpty!9223 ((_ is Cons!22386) mapValue!9222)) b!2043400))

(declare-fun m!2487447 () Bool)

(assert (=> b!2043400 m!2487447))

(declare-fun m!2487449 () Bool)

(assert (=> setNonEmpty!11830 m!2487449))

(declare-fun setNonEmpty!11831 () Bool)

(declare-fun setRes!11831 () Bool)

(declare-fun e!1290510 () Bool)

(declare-fun tp!607214 () Bool)

(declare-fun setElem!11831 () Context!2022)

(assert (=> setNonEmpty!11831 (= setRes!11831 (and tp!607214 (inv!29736 setElem!11831) e!1290510))))

(declare-fun setRest!11831 () (InoxSet Context!2022))

(assert (=> setNonEmpty!11831 (= (_2!12025 (h!27783 (zeroValue!2256 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2022 Bool)) false) setElem!11831 true) setRest!11831))))

(declare-fun b!2043401 () Bool)

(declare-fun tp!607215 () Bool)

(assert (=> b!2043401 (= e!1290510 tp!607215)))

(declare-fun e!1290511 () Bool)

(declare-fun b!2043402 () Bool)

(declare-fun tp!607213 () Bool)

(declare-fun tp!607212 () Bool)

(declare-fun e!1290512 () Bool)

(assert (=> b!2043402 (= e!1290511 (and tp!607212 (inv!29736 (_2!12024 (_1!12025 (h!27783 (zeroValue!2256 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575)))))))))) e!1290512 tp_is_empty!9295 setRes!11831 tp!607213))))

(declare-fun condSetEmpty!11831 () Bool)

(assert (=> b!2043402 (= condSetEmpty!11831 (= (_2!12025 (h!27783 (zeroValue!2256 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575)))))))) ((as const (Array Context!2022 Bool)) false)))))

(declare-fun b!2043403 () Bool)

(declare-fun tp!607216 () Bool)

(assert (=> b!2043403 (= e!1290512 tp!607216)))

(declare-fun setIsEmpty!11831 () Bool)

(assert (=> setIsEmpty!11831 setRes!11831))

(assert (=> b!2043148 (= tp!607060 e!1290511)))

(assert (= b!2043402 b!2043403))

(assert (= (and b!2043402 condSetEmpty!11831) setIsEmpty!11831))

(assert (= (and b!2043402 (not condSetEmpty!11831)) setNonEmpty!11831))

(assert (= setNonEmpty!11831 b!2043401))

(assert (= (and b!2043148 ((_ is Cons!22382) (zeroValue!2256 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575)))))))) b!2043402))

(declare-fun m!2487451 () Bool)

(assert (=> setNonEmpty!11831 m!2487451))

(declare-fun m!2487453 () Bool)

(assert (=> b!2043402 m!2487453))

(declare-fun setRes!11832 () Bool)

(declare-fun setNonEmpty!11832 () Bool)

(declare-fun tp!607219 () Bool)

(declare-fun setElem!11832 () Context!2022)

(declare-fun e!1290513 () Bool)

(assert (=> setNonEmpty!11832 (= setRes!11832 (and tp!607219 (inv!29736 setElem!11832) e!1290513))))

(declare-fun setRest!11832 () (InoxSet Context!2022))

(assert (=> setNonEmpty!11832 (= (_2!12025 (h!27783 (minValue!2256 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2022 Bool)) false) setElem!11832 true) setRest!11832))))

(declare-fun b!2043404 () Bool)

(declare-fun tp!607220 () Bool)

(assert (=> b!2043404 (= e!1290513 tp!607220)))

(declare-fun b!2043405 () Bool)

(declare-fun e!1290514 () Bool)

(declare-fun e!1290515 () Bool)

(declare-fun tp!607217 () Bool)

(declare-fun tp!607218 () Bool)

(assert (=> b!2043405 (= e!1290514 (and tp!607217 (inv!29736 (_2!12024 (_1!12025 (h!27783 (minValue!2256 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575)))))))))) e!1290515 tp_is_empty!9295 setRes!11832 tp!607218))))

(declare-fun condSetEmpty!11832 () Bool)

(assert (=> b!2043405 (= condSetEmpty!11832 (= (_2!12025 (h!27783 (minValue!2256 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575)))))))) ((as const (Array Context!2022 Bool)) false)))))

(declare-fun b!2043406 () Bool)

(declare-fun tp!607221 () Bool)

(assert (=> b!2043406 (= e!1290515 tp!607221)))

(declare-fun setIsEmpty!11832 () Bool)

(assert (=> setIsEmpty!11832 setRes!11832))

(assert (=> b!2043148 (= tp!607043 e!1290514)))

(assert (= b!2043405 b!2043406))

(assert (= (and b!2043405 condSetEmpty!11832) setIsEmpty!11832))

(assert (= (and b!2043405 (not condSetEmpty!11832)) setNonEmpty!11832))

(assert (= setNonEmpty!11832 b!2043404))

(assert (= (and b!2043148 ((_ is Cons!22382) (minValue!2256 (v!27092 (underlying!4191 (v!27093 (underlying!4192 (cache!2293 cacheDown!575)))))))) b!2043405))

(declare-fun m!2487455 () Bool)

(assert (=> setNonEmpty!11832 m!2487455))

(declare-fun m!2487457 () Bool)

(assert (=> b!2043405 m!2487457))

(declare-fun setIsEmpty!11833 () Bool)

(declare-fun setRes!11833 () Bool)

(assert (=> setIsEmpty!11833 setRes!11833))

(declare-fun b!2043407 () Bool)

(declare-fun e!1290517 () Bool)

(declare-fun tp!607225 () Bool)

(assert (=> b!2043407 (= e!1290517 tp!607225)))

(declare-fun b!2043408 () Bool)

(declare-fun e!1290518 () Bool)

(declare-fun tp!607222 () Bool)

(assert (=> b!2043408 (= e!1290518 tp!607222)))

(declare-fun b!2043409 () Bool)

(declare-fun tp!607223 () Bool)

(declare-fun e!1290516 () Bool)

(assert (=> b!2043409 (= e!1290516 (and (inv!29736 (_1!12026 (_1!12027 (h!27787 mapDefault!9222)))) e!1290518 tp_is_empty!9295 setRes!11833 tp!607223))))

(declare-fun condSetEmpty!11833 () Bool)

(assert (=> b!2043409 (= condSetEmpty!11833 (= (_2!12027 (h!27787 mapDefault!9222)) ((as const (Array Context!2022 Bool)) false)))))

(declare-fun setNonEmpty!11833 () Bool)

(declare-fun tp!607224 () Bool)

(declare-fun setElem!11833 () Context!2022)

(assert (=> setNonEmpty!11833 (= setRes!11833 (and tp!607224 (inv!29736 setElem!11833) e!1290517))))

(declare-fun setRest!11833 () (InoxSet Context!2022))

(assert (=> setNonEmpty!11833 (= (_2!12027 (h!27787 mapDefault!9222)) ((_ map or) (store ((as const (Array Context!2022 Bool)) false) setElem!11833 true) setRest!11833))))

(assert (=> b!2043119 (= tp!607041 e!1290516)))

(assert (= b!2043409 b!2043408))

(assert (= (and b!2043409 condSetEmpty!11833) setIsEmpty!11833))

(assert (= (and b!2043409 (not condSetEmpty!11833)) setNonEmpty!11833))

(assert (= setNonEmpty!11833 b!2043407))

(assert (= (and b!2043119 ((_ is Cons!22386) mapDefault!9222)) b!2043409))

(declare-fun m!2487459 () Bool)

(assert (=> b!2043409 m!2487459))

(declare-fun m!2487461 () Bool)

(assert (=> setNonEmpty!11833 m!2487461))

(check-sat (not d!625412) (not b!2043257) (not b!2043238) (not d!625402) (not b!2043398) (not d!625396) (not b!2043290) (not b!2043353) (not bm!125286) (not b!2043264) b_and!162973 (not b!2043195) (not b!2043375) (not b!2043219) (not d!625476) (not b!2043241) (not b!2043262) (not b!2043394) (not b!2043404) (not d!625480) b_and!162981 (not b!2043178) (not d!625432) (not setNonEmpty!11822) (not b!2043299) (not b!2043400) (not d!625426) (not b!2043233) (not b!2043393) (not b_next!57737) (not mapNonEmpty!9226) (not b!2043312) (not b!2043229) (not setNonEmpty!11815) (not b!2043406) (not b!2043330) (not setNonEmpty!11832) (not setNonEmpty!11814) (not b!2043300) (not d!625410) (not setNonEmpty!11831) (not b!2043403) (not mapNonEmpty!9229) (not b!2043396) (not b!2043222) (not b!2043402) (not d!625442) (not b!2043231) (not d!625460) (not setNonEmpty!11833) (not d!625422) (not b!2043288) (not d!625478) (not b!2043374) (not b!2043117) (not setNonEmpty!11821) (not b!2043243) (not b!2043369) (not b!2043408) (not d!625446) (not d!625428) (not b!2043215) (not b!2043367) (not b!2043352) (not b!2043173) (not d!625450) b_and!162975 (not b!2043187) tp_is_empty!9295 b_and!162983 (not d!625452) (not b!2043131) (not b!2043276) (not setNonEmpty!11823) (not d!625424) (not b_next!57747) (not b!2043342) (not b_next!57743) (not b_next!57751) (not b!2043354) (not b!2043234) (not b!2043392) (not b!2043118) (not b!2043185) (not b!2043356) (not d!625462) (not b!2043343) (not b_next!57749) (not b!2043145) (not b!2043310) (not b!2043236) (not d!625430) (not b!2043395) (not b!2043311) (not b!2043327) (not b!2043214) (not b!2043376) (not b!2043261) (not b_next!57741) (not b!2043259) (not b!2043366) (not b!2043216) (not d!625472) (not b!2043341) (not b!2043240) (not d!625440) (not d!625404) (not b!2043245) (not b!2043153) (not setNonEmpty!11818) (not b!2043397) (not b!2043274) (not b!2043328) (not d!625406) (not b_next!57745) (not b!2043371) (not b!2043217) b_and!162985 (not b!2043405) b_and!162979 (not b!2043256) (not d!625448) (not b!2043232) (not b!2043401) (not b!2043357) (not b!2043331) (not b!2043162) (not setNonEmpty!11829) (not b!2043409) (not b!2043399) (not b!2043407) (not d!625454) (not b!2043177) (not b!2043373) (not b!2043172) (not b!2043370) (not b!2043355) (not b!2043188) (not b!2043242) (not b!2043372) (not b!2043235) (not b!2043254) (not d!625474) (not d!625408) (not b!2043196) (not b!2043260) (not b!2043228) (not b_next!57739) (not setNonEmpty!11828) (not d!625464) (not b!2043160) (not b!2043225) (not b!2043213) (not b!2043289) (not d!625400) (not d!625436) b_and!162977 (not b!2043255) (not b!2043332) (not setNonEmpty!11830) (not d!625458) (not b!2043273) b_and!162987 (not b!2043368) (not b!2043190) (not b!2043258) (not b!2043329) (not b!2043239) (not b!2043377))
(check-sat b_and!162973 b_and!162981 (not b_next!57737) b_and!162975 b_and!162983 (not b_next!57749) (not b_next!57741) (not b_next!57745) (not b_next!57739) b_and!162977 b_and!162987 (not b_next!57747) (not b_next!57743) (not b_next!57751) b_and!162985 b_and!162979)
