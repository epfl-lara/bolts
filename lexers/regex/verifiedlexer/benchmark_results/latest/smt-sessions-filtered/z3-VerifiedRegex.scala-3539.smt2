; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!205684 () Bool)

(assert start!205684)

(declare-fun b!2103261 () Bool)

(declare-fun b_free!60209 () Bool)

(declare-fun b_next!60913 () Bool)

(assert (=> b!2103261 (= b_free!60209 (not b_next!60913))))

(declare-fun tp!636419 () Bool)

(declare-fun b_and!169771 () Bool)

(assert (=> b!2103261 (= tp!636419 b_and!169771)))

(declare-fun b!2103255 () Bool)

(declare-fun b_free!60211 () Bool)

(declare-fun b_next!60915 () Bool)

(assert (=> b!2103255 (= b_free!60211 (not b_next!60915))))

(declare-fun tp!636408 () Bool)

(declare-fun b_and!169773 () Bool)

(assert (=> b!2103255 (= tp!636408 b_and!169773)))

(declare-fun b_free!60213 () Bool)

(declare-fun b_next!60917 () Bool)

(assert (=> b!2103255 (= b_free!60213 (not b_next!60917))))

(declare-fun tp!636421 () Bool)

(declare-fun b_and!169775 () Bool)

(assert (=> b!2103255 (= tp!636421 b_and!169775)))

(declare-fun b!2103266 () Bool)

(declare-fun b_free!60215 () Bool)

(declare-fun b_next!60919 () Bool)

(assert (=> b!2103266 (= b_free!60215 (not b_next!60919))))

(declare-fun tp!636422 () Bool)

(declare-fun b_and!169777 () Bool)

(assert (=> b!2103266 (= tp!636422 b_and!169777)))

(declare-fun b!2103276 () Bool)

(declare-fun b_free!60217 () Bool)

(declare-fun b_next!60921 () Bool)

(assert (=> b!2103276 (= b_free!60217 (not b_next!60921))))

(declare-fun tp!636416 () Bool)

(declare-fun b_and!169779 () Bool)

(assert (=> b!2103276 (= tp!636416 b_and!169779)))

(declare-fun b!2103269 () Bool)

(declare-fun b_free!60219 () Bool)

(declare-fun b_next!60923 () Bool)

(assert (=> b!2103269 (= b_free!60219 (not b_next!60923))))

(declare-fun tp!636410 () Bool)

(declare-fun b_and!169781 () Bool)

(assert (=> b!2103269 (= tp!636410 b_and!169781)))

(declare-fun b!2103254 () Bool)

(declare-fun e!1335917 () Bool)

(declare-fun e!1335926 () Bool)

(declare-datatypes ((C!11236 0))(
  ( (C!11237 (val!6604 Int)) )
))
(declare-datatypes ((Regex!5545 0))(
  ( (ElementMatch!5545 (c!338813 C!11236)) (Concat!9798 (regOne!11602 Regex!5545) (regTwo!11602 Regex!5545)) (EmptyExpr!5545) (Star!5545 (reg!5874 Regex!5545)) (EmptyLang!5545) (Union!5545 (regOne!11603 Regex!5545) (regTwo!11603 Regex!5545)) )
))
(declare-datatypes ((List!23200 0))(
  ( (Nil!23116) (Cons!23116 (h!28517 Regex!5545) (t!195693 List!23200)) )
))
(declare-datatypes ((Context!2230 0))(
  ( (Context!2231 (exprs!1615 List!23200)) )
))
(declare-datatypes ((tuple3!2506 0))(
  ( (tuple3!2507 (_1!12896 Regex!5545) (_2!12896 Context!2230) (_3!1717 C!11236)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22358 0))(
  ( (tuple2!22359 (_1!12897 tuple3!2506) (_2!12897 (InoxSet Context!2230))) )
))
(declare-datatypes ((List!23201 0))(
  ( (Nil!23117) (Cons!23117 (h!28518 tuple2!22358) (t!195694 List!23201)) )
))
(declare-datatypes ((array!7597 0))(
  ( (array!7598 (arr!3367 (Array (_ BitVec 32) (_ BitVec 64))) (size!18061 (_ BitVec 32))) )
))
(declare-datatypes ((array!7599 0))(
  ( (array!7600 (arr!3368 (Array (_ BitVec 32) List!23201)) (size!18062 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4402 0))(
  ( (LongMapFixedSize!4403 (defaultEntry!2566 Int) (mask!6289 (_ BitVec 32)) (extraKeys!2449 (_ BitVec 32)) (zeroValue!2459 List!23201) (minValue!2459 List!23201) (_size!4453 (_ BitVec 32)) (_keys!2498 array!7597) (_values!2481 array!7599) (_vacant!2262 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8629 0))(
  ( (Cell!8630 (v!27709 LongMapFixedSize!4402)) )
))
(declare-datatypes ((MutLongMap!2201 0))(
  ( (LongMap!2201 (underlying!4597 Cell!8629)) (MutLongMapExt!2200 (__x!14685 Int)) )
))
(declare-fun lt!790930 () MutLongMap!2201)

(get-info :version)

(assert (=> b!2103254 (= e!1335917 (and e!1335926 ((_ is LongMap!2201) lt!790930)))))

(declare-datatypes ((Cell!8631 0))(
  ( (Cell!8632 (v!27710 MutLongMap!2201)) )
))
(declare-datatypes ((Hashable!2115 0))(
  ( (HashableExt!2114 (__x!14686 Int)) )
))
(declare-datatypes ((MutableMap!2115 0))(
  ( (MutableMapExt!2114 (__x!14687 Int)) (HashMap!2115 (underlying!4598 Cell!8631) (hashF!4038 Hashable!2115) (_size!4454 (_ BitVec 32)) (defaultValue!2277 Int)) )
))
(declare-datatypes ((CacheDown!1414 0))(
  ( (CacheDown!1415 (cache!2496 MutableMap!2115)) )
))
(declare-fun cacheDown!688 () CacheDown!1414)

(assert (=> b!2103254 (= lt!790930 (v!27710 (underlying!4598 (cache!2496 cacheDown!688))))))

(declare-fun e!1335915 () Bool)

(assert (=> b!2103255 (= e!1335915 (and tp!636408 tp!636421))))

(declare-fun b!2103256 () Bool)

(declare-fun e!1335928 () Bool)

(declare-fun e!1335931 () Bool)

(assert (=> b!2103256 (= e!1335928 e!1335931)))

(declare-fun b!2103257 () Bool)

(declare-fun e!1335914 () Bool)

(declare-fun tp!636415 () Bool)

(declare-fun mapRes!10675 () Bool)

(assert (=> b!2103257 (= e!1335914 (and tp!636415 mapRes!10675))))

(declare-fun condMapEmpty!10675 () Bool)

(declare-datatypes ((tuple2!22360 0))(
  ( (tuple2!22361 (_1!12898 Context!2230) (_2!12898 C!11236)) )
))
(declare-datatypes ((tuple2!22362 0))(
  ( (tuple2!22363 (_1!12899 tuple2!22360) (_2!12899 (InoxSet Context!2230))) )
))
(declare-datatypes ((List!23202 0))(
  ( (Nil!23118) (Cons!23118 (h!28519 tuple2!22362) (t!195695 List!23202)) )
))
(declare-datatypes ((array!7601 0))(
  ( (array!7602 (arr!3369 (Array (_ BitVec 32) List!23202)) (size!18063 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4404 0))(
  ( (LongMapFixedSize!4405 (defaultEntry!2567 Int) (mask!6290 (_ BitVec 32)) (extraKeys!2450 (_ BitVec 32)) (zeroValue!2460 List!23202) (minValue!2460 List!23202) (_size!4455 (_ BitVec 32)) (_keys!2499 array!7597) (_values!2482 array!7601) (_vacant!2263 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2116 0))(
  ( (HashableExt!2115 (__x!14688 Int)) )
))
(declare-datatypes ((Cell!8633 0))(
  ( (Cell!8634 (v!27711 LongMapFixedSize!4404)) )
))
(declare-datatypes ((MutLongMap!2202 0))(
  ( (LongMap!2202 (underlying!4599 Cell!8633)) (MutLongMapExt!2201 (__x!14689 Int)) )
))
(declare-datatypes ((Cell!8635 0))(
  ( (Cell!8636 (v!27712 MutLongMap!2202)) )
))
(declare-datatypes ((MutableMap!2116 0))(
  ( (MutableMapExt!2115 (__x!14690 Int)) (HashMap!2116 (underlying!4600 Cell!8635) (hashF!4039 Hashable!2116) (_size!4456 (_ BitVec 32)) (defaultValue!2278 Int)) )
))
(declare-datatypes ((CacheUp!1410 0))(
  ( (CacheUp!1411 (cache!2497 MutableMap!2116)) )
))
(declare-fun cacheUp!675 () CacheUp!1410)

(declare-fun mapDefault!10675 () List!23202)

(assert (=> b!2103257 (= condMapEmpty!10675 (= (arr!3369 (_values!2482 (v!27711 (underlying!4599 (v!27712 (underlying!4600 (cache!2497 cacheUp!675))))))) ((as const (Array (_ BitVec 32) List!23202)) mapDefault!10675)))))

(declare-fun res!914850 () Bool)

(declare-fun e!1335921 () Bool)

(assert (=> start!205684 (=> (not res!914850) (not e!1335921))))

(declare-datatypes ((LexerInterface!3718 0))(
  ( (LexerInterfaceExt!3715 (__x!14691 Int)) (Lexer!3716) )
))
(declare-fun thiss!15689 () LexerInterface!3718)

(assert (=> start!205684 (= res!914850 ((_ is Lexer!3716) thiss!15689))))

(assert (=> start!205684 e!1335921))

(declare-fun e!1335916 () Bool)

(assert (=> start!205684 e!1335916))

(declare-datatypes ((List!23203 0))(
  ( (Nil!23119) (Cons!23119 (h!28520 C!11236) (t!195696 List!23203)) )
))
(declare-datatypes ((IArray!15399 0))(
  ( (IArray!15400 (innerList!7757 List!23203)) )
))
(declare-datatypes ((Conc!7697 0))(
  ( (Node!7697 (left!18098 Conc!7697) (right!18428 Conc!7697) (csize!15624 Int) (cheight!7908 Int)) (Leaf!11237 (xs!10639 IArray!15399) (csize!15625 Int)) (Empty!7697) )
))
(declare-datatypes ((BalanceConc!15156 0))(
  ( (BalanceConc!15157 (c!338814 Conc!7697)) )
))
(declare-fun totalInput!482 () BalanceConc!15156)

(declare-fun e!1335923 () Bool)

(declare-fun inv!30649 (BalanceConc!15156) Bool)

(assert (=> start!205684 (and (inv!30649 totalInput!482) e!1335923)))

(assert (=> start!205684 true))

(declare-fun input!1444 () BalanceConc!15156)

(declare-fun e!1335913 () Bool)

(assert (=> start!205684 (and (inv!30649 input!1444) e!1335913)))

(declare-fun inv!30650 (CacheUp!1410) Bool)

(assert (=> start!205684 (and (inv!30650 cacheUp!675) e!1335928)))

(declare-fun e!1335912 () Bool)

(declare-fun inv!30651 (CacheDown!1414) Bool)

(assert (=> start!205684 (and (inv!30651 cacheDown!688) e!1335912)))

(declare-datatypes ((List!23204 0))(
  ( (Nil!23120) (Cons!23120 (h!28521 (_ BitVec 16)) (t!195697 List!23204)) )
))
(declare-datatypes ((TokenValue!4253 0))(
  ( (FloatLiteralValue!8506 (text!30216 List!23204)) (TokenValueExt!4252 (__x!14692 Int)) (Broken!21265 (value!128960 List!23204)) (Object!4336) (End!4253) (Def!4253) (Underscore!4253) (Match!4253) (Else!4253) (Error!4253) (Case!4253) (If!4253) (Extends!4253) (Abstract!4253) (Class!4253) (Val!4253) (DelimiterValue!8506 (del!4313 List!23204)) (KeywordValue!4259 (value!128961 List!23204)) (CommentValue!8506 (value!128962 List!23204)) (WhitespaceValue!8506 (value!128963 List!23204)) (IndentationValue!4253 (value!128964 List!23204)) (String!26456) (Int32!4253) (Broken!21266 (value!128965 List!23204)) (Boolean!4254) (Unit!37407) (OperatorValue!4256 (op!4313 List!23204)) (IdentifierValue!8506 (value!128966 List!23204)) (IdentifierValue!8507 (value!128967 List!23204)) (WhitespaceValue!8507 (value!128968 List!23204)) (True!8506) (False!8506) (Broken!21267 (value!128969 List!23204)) (Broken!21268 (value!128970 List!23204)) (True!8507) (RightBrace!4253) (RightBracket!4253) (Colon!4253) (Null!4253) (Comma!4253) (LeftBracket!4253) (False!8507) (LeftBrace!4253) (ImaginaryLiteralValue!4253 (text!30217 List!23204)) (StringLiteralValue!12759 (value!128971 List!23204)) (EOFValue!4253 (value!128972 List!23204)) (IdentValue!4253 (value!128973 List!23204)) (DelimiterValue!8507 (value!128974 List!23204)) (DedentValue!4253 (value!128975 List!23204)) (NewLineValue!4253 (value!128976 List!23204)) (IntegerValue!12759 (value!128977 (_ BitVec 32)) (text!30218 List!23204)) (IntegerValue!12760 (value!128978 Int) (text!30219 List!23204)) (Times!4253) (Or!4253) (Equal!4253) (Minus!4253) (Broken!21269 (value!128979 List!23204)) (And!4253) (Div!4253) (LessEqual!4253) (Mod!4253) (Concat!9799) (Not!4253) (Plus!4253) (SpaceValue!4253 (value!128980 List!23204)) (IntegerValue!12761 (value!128981 Int) (text!30220 List!23204)) (StringLiteralValue!12760 (text!30221 List!23204)) (FloatLiteralValue!8507 (text!30222 List!23204)) (BytesLiteralValue!4253 (value!128982 List!23204)) (CommentValue!8507 (value!128983 List!23204)) (StringLiteralValue!12761 (value!128984 List!23204)) (ErrorTokenValue!4253 (msg!4314 List!23204)) )
))
(declare-datatypes ((String!26457 0))(
  ( (String!26458 (value!128985 String)) )
))
(declare-datatypes ((TokenValueInjection!8090 0))(
  ( (TokenValueInjection!8091 (toValue!5828 Int) (toChars!5687 Int)) )
))
(declare-datatypes ((Rule!8034 0))(
  ( (Rule!8035 (regex!4117 Regex!5545) (tag!4607 String!26457) (isSeparator!4117 Bool) (transformation!4117 TokenValueInjection!8090)) )
))
(declare-datatypes ((List!23205 0))(
  ( (Nil!23121) (Cons!23121 (h!28522 Rule!8034) (t!195698 List!23205)) )
))
(declare-fun rulesArg!349 () List!23205)

(declare-fun e!1335919 () Bool)

(declare-fun b!2103258 () Bool)

(declare-fun tp!636406 () Bool)

(declare-fun inv!30646 (String!26457) Bool)

(declare-fun inv!30652 (TokenValueInjection!8090) Bool)

(assert (=> b!2103258 (= e!1335919 (and tp!636406 (inv!30646 (tag!4607 (h!28522 rulesArg!349))) (inv!30652 (transformation!4117 (h!28522 rulesArg!349))) e!1335915))))

(declare-fun b!2103259 () Bool)

(declare-fun tp!636409 () Bool)

(declare-fun inv!30653 (Conc!7697) Bool)

(assert (=> b!2103259 (= e!1335923 (and (inv!30653 (c!338814 totalInput!482)) tp!636409))))

(declare-fun b!2103260 () Bool)

(declare-fun e!1335933 () Bool)

(declare-fun e!1335918 () Bool)

(assert (=> b!2103260 (= e!1335933 e!1335918)))

(declare-fun e!1335934 () Bool)

(declare-fun tp!636414 () Bool)

(declare-fun tp!636404 () Bool)

(declare-fun array_inv!2421 (array!7597) Bool)

(declare-fun array_inv!2422 (array!7599) Bool)

(assert (=> b!2103261 (= e!1335918 (and tp!636419 tp!636414 tp!636404 (array_inv!2421 (_keys!2498 (v!27709 (underlying!4597 (v!27710 (underlying!4598 (cache!2496 cacheDown!688))))))) (array_inv!2422 (_values!2481 (v!27709 (underlying!4597 (v!27710 (underlying!4598 (cache!2496 cacheDown!688))))))) e!1335934))))

(declare-fun mapNonEmpty!10674 () Bool)

(declare-fun tp!636407 () Bool)

(declare-fun tp!636411 () Bool)

(assert (=> mapNonEmpty!10674 (= mapRes!10675 (and tp!636407 tp!636411))))

(declare-fun mapValue!10675 () List!23202)

(declare-fun mapRest!10675 () (Array (_ BitVec 32) List!23202))

(declare-fun mapKey!10675 () (_ BitVec 32))

(assert (=> mapNonEmpty!10674 (= (arr!3369 (_values!2482 (v!27711 (underlying!4599 (v!27712 (underlying!4600 (cache!2497 cacheUp!675))))))) (store mapRest!10675 mapKey!10675 mapValue!10675))))

(declare-fun b!2103262 () Bool)

(declare-fun tp!636418 () Bool)

(declare-fun mapRes!10674 () Bool)

(assert (=> b!2103262 (= e!1335934 (and tp!636418 mapRes!10674))))

(declare-fun condMapEmpty!10674 () Bool)

(declare-fun mapDefault!10674 () List!23201)

(assert (=> b!2103262 (= condMapEmpty!10674 (= (arr!3368 (_values!2481 (v!27709 (underlying!4597 (v!27710 (underlying!4598 (cache!2496 cacheDown!688))))))) ((as const (Array (_ BitVec 32) List!23201)) mapDefault!10674)))))

(declare-fun b!2103263 () Bool)

(declare-fun tp!636413 () Bool)

(assert (=> b!2103263 (= e!1335916 (and e!1335919 tp!636413))))

(declare-fun mapIsEmpty!10674 () Bool)

(assert (=> mapIsEmpty!10674 mapRes!10675))

(declare-fun b!2103264 () Bool)

(declare-fun res!914847 () Bool)

(assert (=> b!2103264 (=> (not res!914847) (not e!1335921))))

(declare-fun isSuffix!541 (List!23203 List!23203) Bool)

(declare-fun list!9421 (BalanceConc!15156) List!23203)

(assert (=> b!2103264 (= res!914847 (isSuffix!541 (list!9421 input!1444) (list!9421 totalInput!482)))))

(declare-fun b!2103265 () Bool)

(assert (=> b!2103265 (= e!1335926 e!1335933)))

(declare-fun e!1335927 () Bool)

(assert (=> b!2103266 (= e!1335931 (and e!1335927 tp!636422))))

(declare-fun b!2103267 () Bool)

(declare-fun tp!636423 () Bool)

(assert (=> b!2103267 (= e!1335913 (and (inv!30653 (c!338814 input!1444)) tp!636423))))

(declare-fun b!2103268 () Bool)

(assert (=> b!2103268 (= e!1335921 false)))

(declare-fun lt!790931 () Bool)

(declare-fun valid!1748 (CacheDown!1414) Bool)

(assert (=> b!2103268 (= lt!790931 (valid!1748 cacheDown!688))))

(declare-fun e!1335930 () Bool)

(assert (=> b!2103269 (= e!1335930 (and e!1335917 tp!636410))))

(declare-fun b!2103270 () Bool)

(declare-fun e!1335922 () Bool)

(declare-fun lt!790929 () MutLongMap!2202)

(assert (=> b!2103270 (= e!1335927 (and e!1335922 ((_ is LongMap!2202) lt!790929)))))

(assert (=> b!2103270 (= lt!790929 (v!27712 (underlying!4600 (cache!2497 cacheUp!675))))))

(declare-fun mapIsEmpty!10675 () Bool)

(assert (=> mapIsEmpty!10675 mapRes!10674))

(declare-fun b!2103271 () Bool)

(declare-fun e!1335929 () Bool)

(declare-fun e!1335920 () Bool)

(assert (=> b!2103271 (= e!1335929 e!1335920)))

(declare-fun b!2103272 () Bool)

(declare-fun res!914846 () Bool)

(assert (=> b!2103272 (=> (not res!914846) (not e!1335921))))

(declare-fun rulesValidInductive!1438 (LexerInterface!3718 List!23205) Bool)

(assert (=> b!2103272 (= res!914846 (rulesValidInductive!1438 thiss!15689 rulesArg!349))))

(declare-fun b!2103273 () Bool)

(assert (=> b!2103273 (= e!1335912 e!1335930)))

(declare-fun b!2103274 () Bool)

(declare-fun res!914849 () Bool)

(assert (=> b!2103274 (=> (not res!914849) (not e!1335921))))

(declare-fun isEmpty!14252 (List!23205) Bool)

(assert (=> b!2103274 (= res!914849 (not (isEmpty!14252 rulesArg!349)))))

(declare-fun mapNonEmpty!10675 () Bool)

(declare-fun tp!636405 () Bool)

(declare-fun tp!636412 () Bool)

(assert (=> mapNonEmpty!10675 (= mapRes!10674 (and tp!636405 tp!636412))))

(declare-fun mapKey!10674 () (_ BitVec 32))

(declare-fun mapValue!10674 () List!23201)

(declare-fun mapRest!10674 () (Array (_ BitVec 32) List!23201))

(assert (=> mapNonEmpty!10675 (= (arr!3368 (_values!2481 (v!27709 (underlying!4597 (v!27710 (underlying!4598 (cache!2496 cacheDown!688))))))) (store mapRest!10674 mapKey!10674 mapValue!10674))))

(declare-fun b!2103275 () Bool)

(assert (=> b!2103275 (= e!1335922 e!1335929)))

(declare-fun tp!636417 () Bool)

(declare-fun tp!636420 () Bool)

(declare-fun array_inv!2423 (array!7601) Bool)

(assert (=> b!2103276 (= e!1335920 (and tp!636416 tp!636420 tp!636417 (array_inv!2421 (_keys!2499 (v!27711 (underlying!4599 (v!27712 (underlying!4600 (cache!2497 cacheUp!675))))))) (array_inv!2423 (_values!2482 (v!27711 (underlying!4599 (v!27712 (underlying!4600 (cache!2497 cacheUp!675))))))) e!1335914))))

(declare-fun b!2103277 () Bool)

(declare-fun res!914848 () Bool)

(assert (=> b!2103277 (=> (not res!914848) (not e!1335921))))

(declare-fun valid!1749 (CacheUp!1410) Bool)

(assert (=> b!2103277 (= res!914848 (valid!1749 cacheUp!675))))

(assert (= (and start!205684 res!914850) b!2103272))

(assert (= (and b!2103272 res!914846) b!2103274))

(assert (= (and b!2103274 res!914849) b!2103264))

(assert (= (and b!2103264 res!914847) b!2103277))

(assert (= (and b!2103277 res!914848) b!2103268))

(assert (= b!2103258 b!2103255))

(assert (= b!2103263 b!2103258))

(assert (= (and start!205684 ((_ is Cons!23121) rulesArg!349)) b!2103263))

(assert (= start!205684 b!2103259))

(assert (= start!205684 b!2103267))

(assert (= (and b!2103257 condMapEmpty!10675) mapIsEmpty!10674))

(assert (= (and b!2103257 (not condMapEmpty!10675)) mapNonEmpty!10674))

(assert (= b!2103276 b!2103257))

(assert (= b!2103271 b!2103276))

(assert (= b!2103275 b!2103271))

(assert (= (and b!2103270 ((_ is LongMap!2202) (v!27712 (underlying!4600 (cache!2497 cacheUp!675))))) b!2103275))

(assert (= b!2103266 b!2103270))

(assert (= (and b!2103256 ((_ is HashMap!2116) (cache!2497 cacheUp!675))) b!2103266))

(assert (= start!205684 b!2103256))

(assert (= (and b!2103262 condMapEmpty!10674) mapIsEmpty!10675))

(assert (= (and b!2103262 (not condMapEmpty!10674)) mapNonEmpty!10675))

(assert (= b!2103261 b!2103262))

(assert (= b!2103260 b!2103261))

(assert (= b!2103265 b!2103260))

(assert (= (and b!2103254 ((_ is LongMap!2201) (v!27710 (underlying!4598 (cache!2496 cacheDown!688))))) b!2103265))

(assert (= b!2103269 b!2103254))

(assert (= (and b!2103273 ((_ is HashMap!2115) (cache!2496 cacheDown!688))) b!2103269))

(assert (= start!205684 b!2103273))

(declare-fun m!2562567 () Bool)

(assert (=> mapNonEmpty!10674 m!2562567))

(declare-fun m!2562569 () Bool)

(assert (=> mapNonEmpty!10675 m!2562569))

(declare-fun m!2562571 () Bool)

(assert (=> b!2103258 m!2562571))

(declare-fun m!2562573 () Bool)

(assert (=> b!2103258 m!2562573))

(declare-fun m!2562575 () Bool)

(assert (=> b!2103272 m!2562575))

(declare-fun m!2562577 () Bool)

(assert (=> b!2103268 m!2562577))

(declare-fun m!2562579 () Bool)

(assert (=> b!2103276 m!2562579))

(declare-fun m!2562581 () Bool)

(assert (=> b!2103276 m!2562581))

(declare-fun m!2562583 () Bool)

(assert (=> start!205684 m!2562583))

(declare-fun m!2562585 () Bool)

(assert (=> start!205684 m!2562585))

(declare-fun m!2562587 () Bool)

(assert (=> start!205684 m!2562587))

(declare-fun m!2562589 () Bool)

(assert (=> start!205684 m!2562589))

(declare-fun m!2562591 () Bool)

(assert (=> b!2103267 m!2562591))

(declare-fun m!2562593 () Bool)

(assert (=> b!2103277 m!2562593))

(declare-fun m!2562595 () Bool)

(assert (=> b!2103261 m!2562595))

(declare-fun m!2562597 () Bool)

(assert (=> b!2103261 m!2562597))

(declare-fun m!2562599 () Bool)

(assert (=> b!2103264 m!2562599))

(declare-fun m!2562601 () Bool)

(assert (=> b!2103264 m!2562601))

(assert (=> b!2103264 m!2562599))

(assert (=> b!2103264 m!2562601))

(declare-fun m!2562603 () Bool)

(assert (=> b!2103264 m!2562603))

(declare-fun m!2562605 () Bool)

(assert (=> b!2103274 m!2562605))

(declare-fun m!2562607 () Bool)

(assert (=> b!2103259 m!2562607))

(check-sat b_and!169779 (not b!2103277) (not b!2103264) (not b!2103274) b_and!169777 (not mapNonEmpty!10674) (not b_next!60915) (not b_next!60921) (not b!2103268) (not b!2103259) (not b!2103262) b_and!169771 (not b!2103258) b_and!169773 (not b!2103276) (not b!2103257) (not b!2103272) (not b_next!60913) (not b!2103267) (not b!2103261) b_and!169775 (not b!2103263) (not mapNonEmpty!10675) (not b_next!60919) (not b_next!60917) b_and!169781 (not start!205684) (not b_next!60923))
(check-sat (not b_next!60913) b_and!169775 b_and!169779 b_and!169777 (not b_next!60915) (not b_next!60921) b_and!169771 b_and!169773 (not b_next!60919) (not b_next!60917) b_and!169781 (not b_next!60923))
