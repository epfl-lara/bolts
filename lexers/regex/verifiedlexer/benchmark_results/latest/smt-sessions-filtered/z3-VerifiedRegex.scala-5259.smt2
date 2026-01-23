; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!270110 () Bool)

(assert start!270110)

(declare-fun b!2794240 () Bool)

(declare-fun b_free!79093 () Bool)

(declare-fun b_next!79797 () Bool)

(assert (=> b!2794240 (= b_free!79093 (not b_next!79797))))

(declare-fun tp!888281 () Bool)

(declare-fun b_and!203831 () Bool)

(assert (=> b!2794240 (= tp!888281 b_and!203831)))

(declare-fun b!2794254 () Bool)

(declare-fun b_free!79095 () Bool)

(declare-fun b_next!79799 () Bool)

(assert (=> b!2794254 (= b_free!79095 (not b_next!79799))))

(declare-fun tp!888287 () Bool)

(declare-fun b_and!203833 () Bool)

(assert (=> b!2794254 (= tp!888287 b_and!203833)))

(declare-fun b!2794250 () Bool)

(declare-fun b_free!79097 () Bool)

(declare-fun b_next!79801 () Bool)

(assert (=> b!2794250 (= b_free!79097 (not b_next!79801))))

(declare-fun tp!888277 () Bool)

(declare-fun b_and!203835 () Bool)

(assert (=> b!2794250 (= tp!888277 b_and!203835)))

(declare-fun b!2794245 () Bool)

(declare-fun b_free!79099 () Bool)

(declare-fun b_next!79803 () Bool)

(assert (=> b!2794245 (= b_free!79099 (not b_next!79803))))

(declare-fun tp!888285 () Bool)

(declare-fun b_and!203837 () Bool)

(assert (=> b!2794245 (= tp!888285 b_and!203837)))

(declare-fun b!2794228 () Bool)

(declare-fun e!1764372 () Bool)

(declare-fun e!1764385 () Bool)

(assert (=> b!2794228 (= e!1764372 e!1764385)))

(declare-fun res!1165186 () Bool)

(assert (=> b!2794228 (=> res!1165186 e!1764385)))

(declare-fun testedPSize!143 () Int)

(declare-datatypes ((C!16524 0))(
  ( (C!16525 (val!10196 Int)) )
))
(declare-datatypes ((List!32496 0))(
  ( (Nil!32396) (Cons!32396 (h!37816 C!16524) (t!228653 List!32496)) )
))
(declare-fun testedSuffix!143 () List!32496)

(declare-datatypes ((IArray!20101 0))(
  ( (IArray!20102 (innerList!10108 List!32496)) )
))
(declare-datatypes ((Conc!10048 0))(
  ( (Node!10048 (left!24537 Conc!10048) (right!24867 Conc!10048) (csize!20326 Int) (cheight!10259 Int)) (Leaf!15308 (xs!13160 IArray!20101) (csize!20327 Int)) (Empty!10048) )
))
(declare-datatypes ((BalanceConc!19710 0))(
  ( (BalanceConc!19711 (c!453492 Conc!10048)) )
))
(declare-fun totalInput!758 () BalanceConc!19710)

(declare-fun apply!7576 (BalanceConc!19710 Int) C!16524)

(declare-fun head!6186 (List!32496) C!16524)

(assert (=> b!2794228 (= res!1165186 (not (= (apply!7576 totalInput!758 testedPSize!143) (head!6186 testedSuffix!143))))))

(declare-fun lt!998503 () List!32496)

(declare-fun drop!1738 (List!32496 Int) List!32496)

(declare-fun apply!7577 (List!32496 Int) C!16524)

(assert (=> b!2794228 (= (head!6186 (drop!1738 lt!998503 testedPSize!143)) (apply!7577 lt!998503 testedPSize!143))))

(declare-datatypes ((Unit!46570 0))(
  ( (Unit!46571) )
))
(declare-fun lt!998501 () Unit!46570)

(declare-fun lemmaDropApply!942 (List!32496 Int) Unit!46570)

(assert (=> b!2794228 (= lt!998501 (lemmaDropApply!942 lt!998503 testedPSize!143))))

(declare-fun lt!998513 () List!32496)

(declare-fun lt!998508 () List!32496)

(declare-fun testedP!183 () List!32496)

(assert (=> b!2794228 (not (or (not (= lt!998508 testedP!183)) (not (= lt!998513 testedSuffix!143))))))

(declare-fun lt!998507 () Unit!46570)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!371 (List!32496 List!32496 List!32496 List!32496) Unit!46570)

(assert (=> b!2794228 (= lt!998507 (lemmaConcatSameAndSameSizesThenSameLists!371 lt!998508 lt!998513 testedP!183 testedSuffix!143))))

(declare-fun b!2794229 () Bool)

(declare-fun e!1764375 () Bool)

(declare-fun e!1764378 () Bool)

(assert (=> b!2794229 (= e!1764375 e!1764378)))

(declare-fun res!1165181 () Bool)

(assert (=> b!2794229 (=> (not res!1165181) (not e!1764378))))

(declare-fun lt!998505 () Int)

(assert (=> b!2794229 (= res!1165181 (= testedPSize!143 lt!998505))))

(declare-fun size!25233 (List!32496) Int)

(assert (=> b!2794229 (= lt!998505 (size!25233 testedP!183))))

(declare-fun mapNonEmpty!18031 () Bool)

(declare-fun mapRes!18032 () Bool)

(declare-fun tp!888279 () Bool)

(declare-fun tp!888280 () Bool)

(assert (=> mapNonEmpty!18031 (= mapRes!18032 (and tp!888279 tp!888280))))

(declare-datatypes ((Regex!8183 0))(
  ( (ElementMatch!8183 (c!453493 C!16524)) (Concat!13271 (regOne!16878 Regex!8183) (regTwo!16878 Regex!8183)) (EmptyExpr!8183) (Star!8183 (reg!8512 Regex!8183)) (EmptyLang!8183) (Union!8183 (regOne!16879 Regex!8183) (regTwo!16879 Regex!8183)) )
))
(declare-datatypes ((List!32497 0))(
  ( (Nil!32397) (Cons!32397 (h!37817 Regex!8183) (t!228654 List!32497)) )
))
(declare-datatypes ((Context!4802 0))(
  ( (Context!4803 (exprs!2901 List!32497)) )
))
(declare-datatypes ((tuple3!5102 0))(
  ( (tuple3!5103 (_1!19469 Regex!8183) (_2!19469 Context!4802) (_3!3021 C!16524)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32896 0))(
  ( (tuple2!32897 (_1!19470 tuple3!5102) (_2!19470 (InoxSet Context!4802))) )
))
(declare-datatypes ((List!32498 0))(
  ( (Nil!32398) (Cons!32398 (h!37818 tuple2!32896) (t!228655 List!32498)) )
))
(declare-fun mapValue!18031 () List!32498)

(declare-fun mapKey!18031 () (_ BitVec 32))

(declare-datatypes ((array!14086 0))(
  ( (array!14087 (arr!6278 (Array (_ BitVec 32) (_ BitVec 64))) (size!25234 (_ BitVec 32))) )
))
(declare-datatypes ((array!14088 0))(
  ( (array!14089 (arr!6279 (Array (_ BitVec 32) List!32498)) (size!25235 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7924 0))(
  ( (LongMapFixedSize!7925 (defaultEntry!4347 Int) (mask!9790 (_ BitVec 32)) (extraKeys!4211 (_ BitVec 32)) (zeroValue!4221 List!32498) (minValue!4221 List!32498) (_size!7967 (_ BitVec 32)) (_keys!4262 array!14086) (_values!4243 array!14088) (_vacant!4023 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15657 0))(
  ( (Cell!15658 (v!34001 LongMapFixedSize!7924)) )
))
(declare-datatypes ((MutLongMap!3962 0))(
  ( (LongMap!3962 (underlying!8127 Cell!15657)) (MutLongMapExt!3961 (__x!21536 Int)) )
))
(declare-datatypes ((Cell!15659 0))(
  ( (Cell!15660 (v!34002 MutLongMap!3962)) )
))
(declare-datatypes ((Hashable!3878 0))(
  ( (HashableExt!3877 (__x!21537 Int)) )
))
(declare-datatypes ((MutableMap!3868 0))(
  ( (MutableMapExt!3867 (__x!21538 Int)) (HashMap!3868 (underlying!8128 Cell!15659) (hashF!5910 Hashable!3878) (_size!7968 (_ BitVec 32)) (defaultValue!4039 Int)) )
))
(declare-datatypes ((CacheDown!2694 0))(
  ( (CacheDown!2695 (cache!4011 MutableMap!3868)) )
))
(declare-fun cacheDown!1009 () CacheDown!2694)

(declare-fun mapRest!18031 () (Array (_ BitVec 32) List!32498))

(assert (=> mapNonEmpty!18031 (= (arr!6279 (_values!4243 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009))))))) (store mapRest!18031 mapKey!18031 mapValue!18031))))

(declare-fun b!2794230 () Bool)

(declare-fun e!1764390 () Bool)

(declare-fun e!1764379 () Bool)

(declare-datatypes ((tuple2!32898 0))(
  ( (tuple2!32899 (_1!19471 Context!4802) (_2!19471 C!16524)) )
))
(declare-datatypes ((tuple2!32900 0))(
  ( (tuple2!32901 (_1!19472 tuple2!32898) (_2!19472 (InoxSet Context!4802))) )
))
(declare-datatypes ((List!32499 0))(
  ( (Nil!32399) (Cons!32399 (h!37819 tuple2!32900) (t!228656 List!32499)) )
))
(declare-datatypes ((array!14090 0))(
  ( (array!14091 (arr!6280 (Array (_ BitVec 32) List!32499)) (size!25236 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7926 0))(
  ( (LongMapFixedSize!7927 (defaultEntry!4348 Int) (mask!9791 (_ BitVec 32)) (extraKeys!4212 (_ BitVec 32)) (zeroValue!4222 List!32499) (minValue!4222 List!32499) (_size!7969 (_ BitVec 32)) (_keys!4263 array!14086) (_values!4244 array!14090) (_vacant!4024 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!15661 0))(
  ( (Cell!15662 (v!34003 LongMapFixedSize!7926)) )
))
(declare-datatypes ((MutLongMap!3963 0))(
  ( (LongMap!3963 (underlying!8129 Cell!15661)) (MutLongMapExt!3962 (__x!21539 Int)) )
))
(declare-fun lt!998502 () MutLongMap!3963)

(get-info :version)

(assert (=> b!2794230 (= e!1764390 (and e!1764379 ((_ is LongMap!3963) lt!998502)))))

(declare-datatypes ((Hashable!3879 0))(
  ( (HashableExt!3878 (__x!21540 Int)) )
))
(declare-datatypes ((Cell!15663 0))(
  ( (Cell!15664 (v!34004 MutLongMap!3963)) )
))
(declare-datatypes ((MutableMap!3869 0))(
  ( (MutableMapExt!3868 (__x!21541 Int)) (HashMap!3869 (underlying!8130 Cell!15663) (hashF!5911 Hashable!3879) (_size!7970 (_ BitVec 32)) (defaultValue!4040 Int)) )
))
(declare-datatypes ((CacheUp!2574 0))(
  ( (CacheUp!2575 (cache!4012 MutableMap!3869)) )
))
(declare-fun cacheUp!890 () CacheUp!2574)

(assert (=> b!2794230 (= lt!998502 (v!34004 (underlying!8130 (cache!4012 cacheUp!890))))))

(declare-fun b!2794231 () Bool)

(declare-fun e!1764388 () Unit!46570)

(declare-fun Unit!46572 () Unit!46570)

(assert (=> b!2794231 (= e!1764388 Unit!46572)))

(declare-fun lt!998506 () Unit!46570)

(declare-fun lemmaIsPrefixRefl!1705 (List!32496 List!32496) Unit!46570)

(assert (=> b!2794231 (= lt!998506 (lemmaIsPrefixRefl!1705 lt!998503 lt!998503))))

(declare-fun isPrefix!2611 (List!32496 List!32496) Bool)

(assert (=> b!2794231 (isPrefix!2611 lt!998503 lt!998503)))

(declare-fun lt!998509 () Unit!46570)

(declare-fun lemmaIsPrefixSameLengthThenSameList!485 (List!32496 List!32496 List!32496) Unit!46570)

(assert (=> b!2794231 (= lt!998509 (lemmaIsPrefixSameLengthThenSameList!485 lt!998503 testedP!183 lt!998503))))

(assert (=> b!2794231 false))

(declare-fun b!2794232 () Bool)

(declare-fun e!1764394 () Bool)

(declare-fun tp_is_empty!14179 () Bool)

(declare-fun tp!888282 () Bool)

(assert (=> b!2794232 (= e!1764394 (and tp_is_empty!14179 tp!888282))))

(declare-fun b!2794233 () Bool)

(declare-fun e!1764392 () Bool)

(declare-fun e!1764387 () Bool)

(assert (=> b!2794233 (= e!1764392 e!1764387)))

(declare-fun mapIsEmpty!18031 () Bool)

(declare-fun mapRes!18031 () Bool)

(assert (=> mapIsEmpty!18031 mapRes!18031))

(declare-fun b!2794234 () Bool)

(declare-fun e!1764389 () Bool)

(assert (=> b!2794234 (= e!1764378 e!1764389)))

(declare-fun res!1165182 () Bool)

(assert (=> b!2794234 (=> (not res!1165182) (not e!1764389))))

(declare-fun totalInputSize!205 () Int)

(declare-fun lt!998504 () Int)

(assert (=> b!2794234 (= res!1165182 (= totalInputSize!205 lt!998504))))

(declare-fun size!25237 (BalanceConc!19710) Int)

(assert (=> b!2794234 (= lt!998504 (size!25237 totalInput!758))))

(declare-fun b!2794235 () Bool)

(declare-fun e!1764370 () Bool)

(declare-fun e!1764393 () Bool)

(assert (=> b!2794235 (= e!1764370 e!1764393)))

(declare-fun b!2794236 () Bool)

(declare-fun res!1165180 () Bool)

(assert (=> b!2794236 (=> (not res!1165180) (not e!1764389))))

(declare-fun valid!3104 (CacheUp!2574) Bool)

(assert (=> b!2794236 (= res!1165180 (valid!3104 cacheUp!890))))

(declare-fun mapIsEmpty!18032 () Bool)

(assert (=> mapIsEmpty!18032 mapRes!18032))

(declare-fun b!2794238 () Bool)

(declare-fun e!1764373 () Bool)

(declare-fun tp!888272 () Bool)

(declare-fun inv!44008 (Conc!10048) Bool)

(assert (=> b!2794238 (= e!1764373 (and (inv!44008 (c!453492 totalInput!758)) tp!888272))))

(declare-fun b!2794239 () Bool)

(declare-fun Unit!46573 () Unit!46570)

(assert (=> b!2794239 (= e!1764388 Unit!46573)))

(declare-fun setIsEmpty!24068 () Bool)

(declare-fun setRes!24068 () Bool)

(assert (=> setIsEmpty!24068 setRes!24068))

(declare-fun e!1764371 () Bool)

(declare-fun setElem!24068 () Context!4802)

(declare-fun tp!888278 () Bool)

(declare-fun setNonEmpty!24068 () Bool)

(declare-fun inv!44009 (Context!4802) Bool)

(assert (=> setNonEmpty!24068 (= setRes!24068 (and tp!888278 (inv!44009 setElem!24068) e!1764371))))

(declare-fun z!3684 () (InoxSet Context!4802))

(declare-fun setRest!24068 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24068 (= z!3684 ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24068 true) setRest!24068))))

(declare-fun e!1764377 () Bool)

(assert (=> b!2794240 (= e!1764377 (and e!1764390 tp!888281))))

(declare-fun b!2794241 () Bool)

(declare-fun e!1764391 () Bool)

(assert (=> b!2794241 (= e!1764393 e!1764391)))

(declare-fun b!2794242 () Bool)

(declare-fun e!1764368 () Bool)

(assert (=> b!2794242 (= e!1764368 e!1764377)))

(declare-fun b!2794243 () Bool)

(declare-fun e!1764382 () Bool)

(declare-fun e!1764384 () Bool)

(assert (=> b!2794243 (= e!1764382 e!1764384)))

(declare-fun b!2794244 () Bool)

(declare-fun res!1165179 () Bool)

(assert (=> b!2794244 (=> (not res!1165179) (not e!1764389))))

(declare-fun valid!3105 (CacheDown!2694) Bool)

(assert (=> b!2794244 (= res!1165179 (valid!3105 cacheDown!1009))))

(declare-fun tp!888289 () Bool)

(declare-fun tp!888274 () Bool)

(declare-fun e!1764383 () Bool)

(declare-fun array_inv!4492 (array!14086) Bool)

(declare-fun array_inv!4493 (array!14090) Bool)

(assert (=> b!2794245 (= e!1764387 (and tp!888285 tp!888289 tp!888274 (array_inv!4492 (_keys!4263 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890))))))) (array_inv!4493 (_values!4244 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890))))))) e!1764383))))

(declare-fun b!2794246 () Bool)

(declare-fun e!1764380 () Bool)

(declare-fun e!1764369 () Bool)

(assert (=> b!2794246 (= e!1764380 e!1764369)))

(declare-fun res!1165184 () Bool)

(assert (=> b!2794246 (=> res!1165184 e!1764369)))

(declare-fun lostCauseZipper!488 ((InoxSet Context!4802)) Bool)

(assert (=> b!2794246 (= res!1165184 (lostCauseZipper!488 z!3684))))

(declare-fun lt!998500 () List!32496)

(assert (=> b!2794246 (and (= testedSuffix!143 lt!998500) (= lt!998500 testedSuffix!143))))

(declare-fun lt!998514 () Unit!46570)

(declare-fun lemmaSamePrefixThenSameSuffix!1189 (List!32496 List!32496 List!32496 List!32496 List!32496) Unit!46570)

(assert (=> b!2794246 (= lt!998514 (lemmaSamePrefixThenSameSuffix!1189 testedP!183 testedSuffix!143 testedP!183 lt!998500 lt!998503))))

(declare-fun getSuffix!1288 (List!32496 List!32496) List!32496)

(assert (=> b!2794246 (= lt!998500 (getSuffix!1288 lt!998503 testedP!183))))

(declare-fun b!2794247 () Bool)

(assert (=> b!2794247 (= e!1764385 (< lt!998505 lt!998504))))

(declare-fun lt!998515 () Unit!46570)

(assert (=> b!2794247 (= lt!998515 e!1764388)))

(declare-fun c!453491 () Bool)

(assert (=> b!2794247 (= c!453491 (= lt!998505 lt!998504))))

(assert (=> b!2794247 (<= lt!998505 (size!25233 lt!998503))))

(declare-fun lt!998510 () Unit!46570)

(declare-fun lemmaIsPrefixThenSmallerEqSize!284 (List!32496 List!32496) Unit!46570)

(assert (=> b!2794247 (= lt!998510 (lemmaIsPrefixThenSmallerEqSize!284 testedP!183 lt!998503))))

(declare-fun b!2794248 () Bool)

(declare-fun res!1165187 () Bool)

(assert (=> b!2794248 (=> res!1165187 e!1764369)))

(assert (=> b!2794248 (= res!1165187 (= testedPSize!143 totalInputSize!205))))

(declare-fun b!2794249 () Bool)

(assert (=> b!2794249 (= e!1764369 e!1764372)))

(declare-fun res!1165188 () Bool)

(assert (=> b!2794249 (=> res!1165188 e!1764372)))

(declare-fun ++!7997 (List!32496 List!32496) List!32496)

(assert (=> b!2794249 (= res!1165188 (not (= (++!7997 lt!998508 lt!998513) lt!998503)))))

(declare-datatypes ((tuple2!32902 0))(
  ( (tuple2!32903 (_1!19473 BalanceConc!19710) (_2!19473 BalanceConc!19710)) )
))
(declare-fun lt!998517 () tuple2!32902)

(declare-fun list!12180 (BalanceConc!19710) List!32496)

(assert (=> b!2794249 (= lt!998513 (list!12180 (_2!19473 lt!998517)))))

(assert (=> b!2794249 (= lt!998508 (list!12180 (_1!19473 lt!998517)))))

(declare-fun splitAt!174 (BalanceConc!19710 Int) tuple2!32902)

(assert (=> b!2794249 (= lt!998517 (splitAt!174 totalInput!758 testedPSize!143))))

(declare-fun mapNonEmpty!18032 () Bool)

(declare-fun tp!888290 () Bool)

(declare-fun tp!888284 () Bool)

(assert (=> mapNonEmpty!18032 (= mapRes!18031 (and tp!888290 tp!888284))))

(declare-fun mapKey!18032 () (_ BitVec 32))

(declare-fun mapRest!18032 () (Array (_ BitVec 32) List!32499))

(declare-fun mapValue!18032 () List!32499)

(assert (=> mapNonEmpty!18032 (= (arr!6280 (_values!4244 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890))))))) (store mapRest!18032 mapKey!18032 mapValue!18032))))

(declare-fun tp!888273 () Bool)

(declare-fun e!1764381 () Bool)

(declare-fun tp!888275 () Bool)

(declare-fun array_inv!4494 (array!14088) Bool)

(assert (=> b!2794250 (= e!1764391 (and tp!888277 tp!888275 tp!888273 (array_inv!4492 (_keys!4262 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009))))))) (array_inv!4494 (_values!4243 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009))))))) e!1764381))))

(declare-fun b!2794251 () Bool)

(declare-fun res!1165183 () Bool)

(assert (=> b!2794251 (=> res!1165183 e!1764372)))

(assert (=> b!2794251 (= res!1165183 (not (= (size!25237 (_1!19473 lt!998517)) testedPSize!143)))))

(declare-fun b!2794252 () Bool)

(declare-fun tp!888276 () Bool)

(assert (=> b!2794252 (= e!1764383 (and tp!888276 mapRes!18031))))

(declare-fun condMapEmpty!18032 () Bool)

(declare-fun mapDefault!18031 () List!32499)

(assert (=> b!2794252 (= condMapEmpty!18032 (= (arr!6280 (_values!4244 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890))))))) ((as const (Array (_ BitVec 32) List!32499)) mapDefault!18031)))))

(declare-fun b!2794253 () Bool)

(assert (=> b!2794253 (= e!1764389 (not e!1764380))))

(declare-fun res!1165178 () Bool)

(assert (=> b!2794253 (=> res!1165178 e!1764380)))

(assert (=> b!2794253 (= res!1165178 (not (isPrefix!2611 testedP!183 lt!998503)))))

(declare-fun lt!998512 () List!32496)

(assert (=> b!2794253 (isPrefix!2611 testedP!183 lt!998512)))

(declare-fun lt!998516 () Unit!46570)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1720 (List!32496 List!32496) Unit!46570)

(assert (=> b!2794253 (= lt!998516 (lemmaConcatTwoListThenFirstIsPrefix!1720 testedP!183 testedSuffix!143))))

(declare-fun e!1764376 () Bool)

(assert (=> b!2794254 (= e!1764384 (and e!1764376 tp!888287))))

(declare-fun b!2794237 () Bool)

(declare-fun tp!888283 () Bool)

(assert (=> b!2794237 (= e!1764371 tp!888283)))

(declare-fun res!1165185 () Bool)

(assert (=> start!270110 (=> (not res!1165185) (not e!1764375))))

(assert (=> start!270110 (= res!1165185 (= lt!998512 lt!998503))))

(assert (=> start!270110 (= lt!998503 (list!12180 totalInput!758))))

(assert (=> start!270110 (= lt!998512 (++!7997 testedP!183 testedSuffix!143))))

(assert (=> start!270110 e!1764375))

(declare-fun inv!44010 (BalanceConc!19710) Bool)

(assert (=> start!270110 (and (inv!44010 totalInput!758) e!1764373)))

(declare-fun condSetEmpty!24068 () Bool)

(assert (=> start!270110 (= condSetEmpty!24068 (= z!3684 ((as const (Array Context!4802 Bool)) false)))))

(assert (=> start!270110 setRes!24068))

(assert (=> start!270110 true))

(assert (=> start!270110 e!1764394))

(declare-fun e!1764367 () Bool)

(assert (=> start!270110 e!1764367))

(declare-fun inv!44011 (CacheDown!2694) Bool)

(assert (=> start!270110 (and (inv!44011 cacheDown!1009) e!1764382)))

(declare-fun inv!44012 (CacheUp!2574) Bool)

(assert (=> start!270110 (and (inv!44012 cacheUp!890) e!1764368)))

(declare-fun b!2794255 () Bool)

(declare-fun lt!998511 () MutLongMap!3962)

(assert (=> b!2794255 (= e!1764376 (and e!1764370 ((_ is LongMap!3962) lt!998511)))))

(assert (=> b!2794255 (= lt!998511 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009))))))

(declare-fun b!2794256 () Bool)

(declare-fun tp!888286 () Bool)

(assert (=> b!2794256 (= e!1764367 (and tp_is_empty!14179 tp!888286))))

(declare-fun b!2794257 () Bool)

(declare-fun tp!888288 () Bool)

(assert (=> b!2794257 (= e!1764381 (and tp!888288 mapRes!18032))))

(declare-fun condMapEmpty!18031 () Bool)

(declare-fun mapDefault!18032 () List!32498)

(assert (=> b!2794257 (= condMapEmpty!18031 (= (arr!6279 (_values!4243 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009))))))) ((as const (Array (_ BitVec 32) List!32498)) mapDefault!18032)))))

(declare-fun b!2794258 () Bool)

(assert (=> b!2794258 (= e!1764379 e!1764392)))

(assert (= (and start!270110 res!1165185) b!2794229))

(assert (= (and b!2794229 res!1165181) b!2794234))

(assert (= (and b!2794234 res!1165182) b!2794236))

(assert (= (and b!2794236 res!1165180) b!2794244))

(assert (= (and b!2794244 res!1165179) b!2794253))

(assert (= (and b!2794253 (not res!1165178)) b!2794246))

(assert (= (and b!2794246 (not res!1165184)) b!2794248))

(assert (= (and b!2794248 (not res!1165187)) b!2794249))

(assert (= (and b!2794249 (not res!1165188)) b!2794251))

(assert (= (and b!2794251 (not res!1165183)) b!2794228))

(assert (= (and b!2794228 (not res!1165186)) b!2794247))

(assert (= (and b!2794247 c!453491) b!2794231))

(assert (= (and b!2794247 (not c!453491)) b!2794239))

(assert (= start!270110 b!2794238))

(assert (= (and start!270110 condSetEmpty!24068) setIsEmpty!24068))

(assert (= (and start!270110 (not condSetEmpty!24068)) setNonEmpty!24068))

(assert (= setNonEmpty!24068 b!2794237))

(assert (= (and start!270110 ((_ is Cons!32396) testedP!183)) b!2794232))

(assert (= (and start!270110 ((_ is Cons!32396) testedSuffix!143)) b!2794256))

(assert (= (and b!2794257 condMapEmpty!18031) mapIsEmpty!18032))

(assert (= (and b!2794257 (not condMapEmpty!18031)) mapNonEmpty!18031))

(assert (= b!2794250 b!2794257))

(assert (= b!2794241 b!2794250))

(assert (= b!2794235 b!2794241))

(assert (= (and b!2794255 ((_ is LongMap!3962) (v!34002 (underlying!8128 (cache!4011 cacheDown!1009))))) b!2794235))

(assert (= b!2794254 b!2794255))

(assert (= (and b!2794243 ((_ is HashMap!3868) (cache!4011 cacheDown!1009))) b!2794254))

(assert (= start!270110 b!2794243))

(assert (= (and b!2794252 condMapEmpty!18032) mapIsEmpty!18031))

(assert (= (and b!2794252 (not condMapEmpty!18032)) mapNonEmpty!18032))

(assert (= b!2794245 b!2794252))

(assert (= b!2794233 b!2794245))

(assert (= b!2794258 b!2794233))

(assert (= (and b!2794230 ((_ is LongMap!3963) (v!34004 (underlying!8130 (cache!4012 cacheUp!890))))) b!2794258))

(assert (= b!2794240 b!2794230))

(assert (= (and b!2794242 ((_ is HashMap!3869) (cache!4012 cacheUp!890))) b!2794240))

(assert (= start!270110 b!2794242))

(declare-fun m!3224439 () Bool)

(assert (=> b!2794229 m!3224439))

(declare-fun m!3224441 () Bool)

(assert (=> setNonEmpty!24068 m!3224441))

(declare-fun m!3224443 () Bool)

(assert (=> start!270110 m!3224443))

(declare-fun m!3224445 () Bool)

(assert (=> start!270110 m!3224445))

(declare-fun m!3224447 () Bool)

(assert (=> start!270110 m!3224447))

(declare-fun m!3224449 () Bool)

(assert (=> start!270110 m!3224449))

(declare-fun m!3224451 () Bool)

(assert (=> start!270110 m!3224451))

(declare-fun m!3224453 () Bool)

(assert (=> b!2794231 m!3224453))

(declare-fun m!3224455 () Bool)

(assert (=> b!2794231 m!3224455))

(declare-fun m!3224457 () Bool)

(assert (=> b!2794231 m!3224457))

(declare-fun m!3224459 () Bool)

(assert (=> b!2794246 m!3224459))

(declare-fun m!3224461 () Bool)

(assert (=> b!2794246 m!3224461))

(declare-fun m!3224463 () Bool)

(assert (=> b!2794246 m!3224463))

(declare-fun m!3224465 () Bool)

(assert (=> mapNonEmpty!18031 m!3224465))

(declare-fun m!3224467 () Bool)

(assert (=> mapNonEmpty!18032 m!3224467))

(declare-fun m!3224469 () Bool)

(assert (=> b!2794253 m!3224469))

(declare-fun m!3224471 () Bool)

(assert (=> b!2794253 m!3224471))

(declare-fun m!3224473 () Bool)

(assert (=> b!2794253 m!3224473))

(declare-fun m!3224475 () Bool)

(assert (=> b!2794250 m!3224475))

(declare-fun m!3224477 () Bool)

(assert (=> b!2794250 m!3224477))

(declare-fun m!3224479 () Bool)

(assert (=> b!2794247 m!3224479))

(declare-fun m!3224481 () Bool)

(assert (=> b!2794247 m!3224481))

(declare-fun m!3224483 () Bool)

(assert (=> b!2794244 m!3224483))

(declare-fun m!3224485 () Bool)

(assert (=> b!2794236 m!3224485))

(declare-fun m!3224487 () Bool)

(assert (=> b!2794249 m!3224487))

(declare-fun m!3224489 () Bool)

(assert (=> b!2794249 m!3224489))

(declare-fun m!3224491 () Bool)

(assert (=> b!2794249 m!3224491))

(declare-fun m!3224493 () Bool)

(assert (=> b!2794249 m!3224493))

(declare-fun m!3224495 () Bool)

(assert (=> b!2794245 m!3224495))

(declare-fun m!3224497 () Bool)

(assert (=> b!2794245 m!3224497))

(declare-fun m!3224499 () Bool)

(assert (=> b!2794234 m!3224499))

(declare-fun m!3224501 () Bool)

(assert (=> b!2794228 m!3224501))

(declare-fun m!3224503 () Bool)

(assert (=> b!2794228 m!3224503))

(declare-fun m!3224505 () Bool)

(assert (=> b!2794228 m!3224505))

(declare-fun m!3224507 () Bool)

(assert (=> b!2794228 m!3224507))

(declare-fun m!3224509 () Bool)

(assert (=> b!2794228 m!3224509))

(assert (=> b!2794228 m!3224501))

(declare-fun m!3224511 () Bool)

(assert (=> b!2794228 m!3224511))

(declare-fun m!3224513 () Bool)

(assert (=> b!2794228 m!3224513))

(declare-fun m!3224515 () Bool)

(assert (=> b!2794251 m!3224515))

(declare-fun m!3224517 () Bool)

(assert (=> b!2794238 m!3224517))

(check-sat (not b!2794238) b_and!203831 (not b!2794249) (not b!2794236) (not b!2794251) b_and!203835 (not b!2794257) (not b_next!79803) (not b!2794252) b_and!203833 (not b!2794231) (not b_next!79799) tp_is_empty!14179 b_and!203837 (not b!2794253) (not b!2794246) (not b!2794234) (not b_next!79801) (not b!2794228) (not b!2794250) (not mapNonEmpty!18031) (not b!2794247) (not b!2794244) (not b!2794256) (not mapNonEmpty!18032) (not setNonEmpty!24068) (not b!2794245) (not b!2794229) (not start!270110) (not b!2794232) (not b!2794237) (not b_next!79797))
(check-sat b_and!203837 b_and!203831 b_and!203835 (not b_next!79801) (not b_next!79803) b_and!203833 (not b_next!79799) (not b_next!79797))
(get-model)

(declare-fun d!812470 () Bool)

(declare-fun lt!998520 () Int)

(assert (=> d!812470 (>= lt!998520 0)))

(declare-fun e!1764397 () Int)

(assert (=> d!812470 (= lt!998520 e!1764397)))

(declare-fun c!453496 () Bool)

(assert (=> d!812470 (= c!453496 ((_ is Nil!32396) testedP!183))))

(assert (=> d!812470 (= (size!25233 testedP!183) lt!998520)))

(declare-fun b!2794263 () Bool)

(assert (=> b!2794263 (= e!1764397 0)))

(declare-fun b!2794264 () Bool)

(assert (=> b!2794264 (= e!1764397 (+ 1 (size!25233 (t!228653 testedP!183))))))

(assert (= (and d!812470 c!453496) b!2794263))

(assert (= (and d!812470 (not c!453496)) b!2794264))

(declare-fun m!3224519 () Bool)

(assert (=> b!2794264 m!3224519))

(assert (=> b!2794229 d!812470))

(declare-fun d!812472 () Bool)

(assert (=> d!812472 (= (array_inv!4492 (_keys!4263 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890))))))) (bvsge (size!25234 (_keys!4263 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2794245 d!812472))

(declare-fun d!812474 () Bool)

(assert (=> d!812474 (= (array_inv!4493 (_values!4244 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890))))))) (bvsge (size!25236 (_values!4244 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890))))))) #b00000000000000000000000000000000))))

(assert (=> b!2794245 d!812474))

(declare-fun bs!514662 () Bool)

(declare-fun b!2794269 () Bool)

(declare-fun d!812476 () Bool)

(assert (= bs!514662 (and b!2794269 d!812476)))

(declare-fun lambda!102636 () Int)

(declare-fun lambda!102635 () Int)

(assert (=> bs!514662 (not (= lambda!102636 lambda!102635))))

(declare-fun bs!514663 () Bool)

(declare-fun b!2794270 () Bool)

(assert (= bs!514663 (and b!2794270 d!812476)))

(declare-fun lambda!102637 () Int)

(assert (=> bs!514663 (not (= lambda!102637 lambda!102635))))

(declare-fun bs!514664 () Bool)

(assert (= bs!514664 (and b!2794270 b!2794269)))

(assert (=> bs!514664 (= lambda!102637 lambda!102636)))

(declare-datatypes ((List!32500 0))(
  ( (Nil!32400) (Cons!32400 (h!37820 Context!4802) (t!228657 List!32500)) )
))
(declare-fun lt!998537 () List!32500)

(declare-fun call!182763 () Bool)

(declare-fun lt!998543 () List!32500)

(declare-fun bm!182759 () Bool)

(declare-fun c!453507 () Bool)

(declare-fun exists!1008 (List!32500 Int) Bool)

(assert (=> bm!182759 (= call!182763 (exists!1008 (ite c!453507 lt!998537 lt!998543) (ite c!453507 lambda!102636 lambda!102637)))))

(declare-fun lt!998544 () Bool)

(declare-datatypes ((Option!6280 0))(
  ( (None!6279) (Some!6279 (v!34005 List!32496)) )
))
(declare-fun isEmpty!18128 (Option!6280) Bool)

(declare-fun getLanguageWitness!214 ((InoxSet Context!4802)) Option!6280)

(assert (=> d!812476 (= lt!998544 (isEmpty!18128 (getLanguageWitness!214 z!3684)))))

(declare-fun forall!6686 ((InoxSet Context!4802) Int) Bool)

(assert (=> d!812476 (= lt!998544 (forall!6686 z!3684 lambda!102635))))

(declare-fun lt!998542 () Unit!46570)

(declare-fun e!1764404 () Unit!46570)

(assert (=> d!812476 (= lt!998542 e!1764404)))

(assert (=> d!812476 (= c!453507 (not (forall!6686 z!3684 lambda!102635)))))

(assert (=> d!812476 (= (lostCauseZipper!488 z!3684) lt!998544)))

(declare-fun Unit!46574 () Unit!46570)

(assert (=> b!2794269 (= e!1764404 Unit!46574)))

(declare-fun call!182764 () List!32500)

(assert (=> b!2794269 (= lt!998537 call!182764)))

(declare-fun lt!998541 () Unit!46570)

(declare-fun lemmaNotForallThenExists!102 (List!32500 Int) Unit!46570)

(assert (=> b!2794269 (= lt!998541 (lemmaNotForallThenExists!102 lt!998537 lambda!102635))))

(assert (=> b!2794269 call!182763))

(declare-fun lt!998538 () Unit!46570)

(assert (=> b!2794269 (= lt!998538 lt!998541)))

(declare-fun bm!182758 () Bool)

(declare-fun toList!1873 ((InoxSet Context!4802)) List!32500)

(assert (=> bm!182758 (= call!182764 (toList!1873 z!3684))))

(declare-fun Unit!46575 () Unit!46570)

(assert (=> b!2794270 (= e!1764404 Unit!46575)))

(assert (=> b!2794270 (= lt!998543 call!182764)))

(declare-fun lt!998540 () Unit!46570)

(declare-fun lemmaForallThenNotExists!102 (List!32500 Int) Unit!46570)

(assert (=> b!2794270 (= lt!998540 (lemmaForallThenNotExists!102 lt!998543 lambda!102635))))

(assert (=> b!2794270 (not call!182763)))

(declare-fun lt!998539 () Unit!46570)

(assert (=> b!2794270 (= lt!998539 lt!998540)))

(assert (= (and d!812476 c!453507) b!2794269))

(assert (= (and d!812476 (not c!453507)) b!2794270))

(assert (= (or b!2794269 b!2794270) bm!182758))

(assert (= (or b!2794269 b!2794270) bm!182759))

(declare-fun m!3224521 () Bool)

(assert (=> bm!182758 m!3224521))

(declare-fun m!3224523 () Bool)

(assert (=> d!812476 m!3224523))

(assert (=> d!812476 m!3224523))

(declare-fun m!3224525 () Bool)

(assert (=> d!812476 m!3224525))

(declare-fun m!3224527 () Bool)

(assert (=> d!812476 m!3224527))

(assert (=> d!812476 m!3224527))

(declare-fun m!3224529 () Bool)

(assert (=> b!2794269 m!3224529))

(declare-fun m!3224531 () Bool)

(assert (=> b!2794270 m!3224531))

(declare-fun m!3224533 () Bool)

(assert (=> bm!182759 m!3224533))

(assert (=> b!2794246 d!812476))

(declare-fun d!812478 () Bool)

(assert (=> d!812478 (= testedSuffix!143 lt!998500)))

(declare-fun lt!998547 () Unit!46570)

(declare-fun choose!16433 (List!32496 List!32496 List!32496 List!32496 List!32496) Unit!46570)

(assert (=> d!812478 (= lt!998547 (choose!16433 testedP!183 testedSuffix!143 testedP!183 lt!998500 lt!998503))))

(assert (=> d!812478 (isPrefix!2611 testedP!183 lt!998503)))

(assert (=> d!812478 (= (lemmaSamePrefixThenSameSuffix!1189 testedP!183 testedSuffix!143 testedP!183 lt!998500 lt!998503) lt!998547)))

(declare-fun bs!514665 () Bool)

(assert (= bs!514665 d!812478))

(declare-fun m!3224535 () Bool)

(assert (=> bs!514665 m!3224535))

(assert (=> bs!514665 m!3224469))

(assert (=> b!2794246 d!812478))

(declare-fun d!812480 () Bool)

(declare-fun lt!998550 () List!32496)

(assert (=> d!812480 (= (++!7997 testedP!183 lt!998550) lt!998503)))

(declare-fun e!1764407 () List!32496)

(assert (=> d!812480 (= lt!998550 e!1764407)))

(declare-fun c!453510 () Bool)

(assert (=> d!812480 (= c!453510 ((_ is Cons!32396) testedP!183))))

(assert (=> d!812480 (>= (size!25233 lt!998503) (size!25233 testedP!183))))

(assert (=> d!812480 (= (getSuffix!1288 lt!998503 testedP!183) lt!998550)))

(declare-fun b!2794275 () Bool)

(declare-fun tail!4417 (List!32496) List!32496)

(assert (=> b!2794275 (= e!1764407 (getSuffix!1288 (tail!4417 lt!998503) (t!228653 testedP!183)))))

(declare-fun b!2794276 () Bool)

(assert (=> b!2794276 (= e!1764407 lt!998503)))

(assert (= (and d!812480 c!453510) b!2794275))

(assert (= (and d!812480 (not c!453510)) b!2794276))

(declare-fun m!3224537 () Bool)

(assert (=> d!812480 m!3224537))

(assert (=> d!812480 m!3224479))

(assert (=> d!812480 m!3224439))

(declare-fun m!3224539 () Bool)

(assert (=> b!2794275 m!3224539))

(assert (=> b!2794275 m!3224539))

(declare-fun m!3224541 () Bool)

(assert (=> b!2794275 m!3224541))

(assert (=> b!2794246 d!812480))

(declare-fun d!812482 () Bool)

(declare-fun c!453513 () Bool)

(assert (=> d!812482 (= c!453513 ((_ is Node!10048) (c!453492 totalInput!758)))))

(declare-fun e!1764412 () Bool)

(assert (=> d!812482 (= (inv!44008 (c!453492 totalInput!758)) e!1764412)))

(declare-fun b!2794283 () Bool)

(declare-fun inv!44013 (Conc!10048) Bool)

(assert (=> b!2794283 (= e!1764412 (inv!44013 (c!453492 totalInput!758)))))

(declare-fun b!2794284 () Bool)

(declare-fun e!1764413 () Bool)

(assert (=> b!2794284 (= e!1764412 e!1764413)))

(declare-fun res!1165191 () Bool)

(assert (=> b!2794284 (= res!1165191 (not ((_ is Leaf!15308) (c!453492 totalInput!758))))))

(assert (=> b!2794284 (=> res!1165191 e!1764413)))

(declare-fun b!2794285 () Bool)

(declare-fun inv!44014 (Conc!10048) Bool)

(assert (=> b!2794285 (= e!1764413 (inv!44014 (c!453492 totalInput!758)))))

(assert (= (and d!812482 c!453513) b!2794283))

(assert (= (and d!812482 (not c!453513)) b!2794284))

(assert (= (and b!2794284 (not res!1165191)) b!2794285))

(declare-fun m!3224543 () Bool)

(assert (=> b!2794283 m!3224543))

(declare-fun m!3224545 () Bool)

(assert (=> b!2794285 m!3224545))

(assert (=> b!2794238 d!812482))

(declare-fun d!812484 () Bool)

(declare-fun lt!998551 () Int)

(assert (=> d!812484 (>= lt!998551 0)))

(declare-fun e!1764414 () Int)

(assert (=> d!812484 (= lt!998551 e!1764414)))

(declare-fun c!453514 () Bool)

(assert (=> d!812484 (= c!453514 ((_ is Nil!32396) lt!998503))))

(assert (=> d!812484 (= (size!25233 lt!998503) lt!998551)))

(declare-fun b!2794286 () Bool)

(assert (=> b!2794286 (= e!1764414 0)))

(declare-fun b!2794287 () Bool)

(assert (=> b!2794287 (= e!1764414 (+ 1 (size!25233 (t!228653 lt!998503))))))

(assert (= (and d!812484 c!453514) b!2794286))

(assert (= (and d!812484 (not c!453514)) b!2794287))

(declare-fun m!3224547 () Bool)

(assert (=> b!2794287 m!3224547))

(assert (=> b!2794247 d!812484))

(declare-fun d!812486 () Bool)

(assert (=> d!812486 (<= (size!25233 testedP!183) (size!25233 lt!998503))))

(declare-fun lt!998554 () Unit!46570)

(declare-fun choose!16434 (List!32496 List!32496) Unit!46570)

(assert (=> d!812486 (= lt!998554 (choose!16434 testedP!183 lt!998503))))

(assert (=> d!812486 (isPrefix!2611 testedP!183 lt!998503)))

(assert (=> d!812486 (= (lemmaIsPrefixThenSmallerEqSize!284 testedP!183 lt!998503) lt!998554)))

(declare-fun bs!514666 () Bool)

(assert (= bs!514666 d!812486))

(assert (=> bs!514666 m!3224439))

(assert (=> bs!514666 m!3224479))

(declare-fun m!3224549 () Bool)

(assert (=> bs!514666 m!3224549))

(assert (=> bs!514666 m!3224469))

(assert (=> b!2794247 d!812486))

(declare-fun d!812488 () Bool)

(assert (=> d!812488 (isPrefix!2611 lt!998503 lt!998503)))

(declare-fun lt!998557 () Unit!46570)

(declare-fun choose!16435 (List!32496 List!32496) Unit!46570)

(assert (=> d!812488 (= lt!998557 (choose!16435 lt!998503 lt!998503))))

(assert (=> d!812488 (= (lemmaIsPrefixRefl!1705 lt!998503 lt!998503) lt!998557)))

(declare-fun bs!514667 () Bool)

(assert (= bs!514667 d!812488))

(assert (=> bs!514667 m!3224455))

(declare-fun m!3224551 () Bool)

(assert (=> bs!514667 m!3224551))

(assert (=> b!2794231 d!812488))

(declare-fun b!2794297 () Bool)

(declare-fun res!1165202 () Bool)

(declare-fun e!1764421 () Bool)

(assert (=> b!2794297 (=> (not res!1165202) (not e!1764421))))

(assert (=> b!2794297 (= res!1165202 (= (head!6186 lt!998503) (head!6186 lt!998503)))))

(declare-fun b!2794298 () Bool)

(assert (=> b!2794298 (= e!1764421 (isPrefix!2611 (tail!4417 lt!998503) (tail!4417 lt!998503)))))

(declare-fun b!2794299 () Bool)

(declare-fun e!1764422 () Bool)

(assert (=> b!2794299 (= e!1764422 (>= (size!25233 lt!998503) (size!25233 lt!998503)))))

(declare-fun d!812490 () Bool)

(assert (=> d!812490 e!1764422))

(declare-fun res!1165203 () Bool)

(assert (=> d!812490 (=> res!1165203 e!1764422)))

(declare-fun lt!998560 () Bool)

(assert (=> d!812490 (= res!1165203 (not lt!998560))))

(declare-fun e!1764423 () Bool)

(assert (=> d!812490 (= lt!998560 e!1764423)))

(declare-fun res!1165201 () Bool)

(assert (=> d!812490 (=> res!1165201 e!1764423)))

(assert (=> d!812490 (= res!1165201 ((_ is Nil!32396) lt!998503))))

(assert (=> d!812490 (= (isPrefix!2611 lt!998503 lt!998503) lt!998560)))

(declare-fun b!2794296 () Bool)

(assert (=> b!2794296 (= e!1764423 e!1764421)))

(declare-fun res!1165200 () Bool)

(assert (=> b!2794296 (=> (not res!1165200) (not e!1764421))))

(assert (=> b!2794296 (= res!1165200 (not ((_ is Nil!32396) lt!998503)))))

(assert (= (and d!812490 (not res!1165201)) b!2794296))

(assert (= (and b!2794296 res!1165200) b!2794297))

(assert (= (and b!2794297 res!1165202) b!2794298))

(assert (= (and d!812490 (not res!1165203)) b!2794299))

(declare-fun m!3224553 () Bool)

(assert (=> b!2794297 m!3224553))

(assert (=> b!2794297 m!3224553))

(assert (=> b!2794298 m!3224539))

(assert (=> b!2794298 m!3224539))

(assert (=> b!2794298 m!3224539))

(assert (=> b!2794298 m!3224539))

(declare-fun m!3224555 () Bool)

(assert (=> b!2794298 m!3224555))

(assert (=> b!2794299 m!3224479))

(assert (=> b!2794299 m!3224479))

(assert (=> b!2794231 d!812490))

(declare-fun d!812492 () Bool)

(assert (=> d!812492 (= lt!998503 testedP!183)))

(declare-fun lt!998563 () Unit!46570)

(declare-fun choose!16436 (List!32496 List!32496 List!32496) Unit!46570)

(assert (=> d!812492 (= lt!998563 (choose!16436 lt!998503 testedP!183 lt!998503))))

(assert (=> d!812492 (isPrefix!2611 lt!998503 lt!998503)))

(assert (=> d!812492 (= (lemmaIsPrefixSameLengthThenSameList!485 lt!998503 testedP!183 lt!998503) lt!998563)))

(declare-fun bs!514668 () Bool)

(assert (= bs!514668 d!812492))

(declare-fun m!3224557 () Bool)

(assert (=> bs!514668 m!3224557))

(assert (=> bs!514668 m!3224455))

(assert (=> b!2794231 d!812492))

(declare-fun b!2794308 () Bool)

(declare-fun e!1764428 () List!32496)

(assert (=> b!2794308 (= e!1764428 lt!998513)))

(declare-fun e!1764429 () Bool)

(declare-fun b!2794311 () Bool)

(declare-fun lt!998566 () List!32496)

(assert (=> b!2794311 (= e!1764429 (or (not (= lt!998513 Nil!32396)) (= lt!998566 lt!998508)))))

(declare-fun b!2794310 () Bool)

(declare-fun res!1165208 () Bool)

(assert (=> b!2794310 (=> (not res!1165208) (not e!1764429))))

(assert (=> b!2794310 (= res!1165208 (= (size!25233 lt!998566) (+ (size!25233 lt!998508) (size!25233 lt!998513))))))

(declare-fun d!812494 () Bool)

(assert (=> d!812494 e!1764429))

(declare-fun res!1165209 () Bool)

(assert (=> d!812494 (=> (not res!1165209) (not e!1764429))))

(declare-fun content!4533 (List!32496) (InoxSet C!16524))

(assert (=> d!812494 (= res!1165209 (= (content!4533 lt!998566) ((_ map or) (content!4533 lt!998508) (content!4533 lt!998513))))))

(assert (=> d!812494 (= lt!998566 e!1764428)))

(declare-fun c!453517 () Bool)

(assert (=> d!812494 (= c!453517 ((_ is Nil!32396) lt!998508))))

(assert (=> d!812494 (= (++!7997 lt!998508 lt!998513) lt!998566)))

(declare-fun b!2794309 () Bool)

(assert (=> b!2794309 (= e!1764428 (Cons!32396 (h!37816 lt!998508) (++!7997 (t!228653 lt!998508) lt!998513)))))

(assert (= (and d!812494 c!453517) b!2794308))

(assert (= (and d!812494 (not c!453517)) b!2794309))

(assert (= (and d!812494 res!1165209) b!2794310))

(assert (= (and b!2794310 res!1165208) b!2794311))

(declare-fun m!3224559 () Bool)

(assert (=> b!2794310 m!3224559))

(declare-fun m!3224561 () Bool)

(assert (=> b!2794310 m!3224561))

(declare-fun m!3224563 () Bool)

(assert (=> b!2794310 m!3224563))

(declare-fun m!3224565 () Bool)

(assert (=> d!812494 m!3224565))

(declare-fun m!3224567 () Bool)

(assert (=> d!812494 m!3224567))

(declare-fun m!3224569 () Bool)

(assert (=> d!812494 m!3224569))

(declare-fun m!3224571 () Bool)

(assert (=> b!2794309 m!3224571))

(assert (=> b!2794249 d!812494))

(declare-fun d!812496 () Bool)

(declare-fun list!12181 (Conc!10048) List!32496)

(assert (=> d!812496 (= (list!12180 (_2!19473 lt!998517)) (list!12181 (c!453492 (_2!19473 lt!998517))))))

(declare-fun bs!514669 () Bool)

(assert (= bs!514669 d!812496))

(declare-fun m!3224573 () Bool)

(assert (=> bs!514669 m!3224573))

(assert (=> b!2794249 d!812496))

(declare-fun d!812498 () Bool)

(assert (=> d!812498 (= (list!12180 (_1!19473 lt!998517)) (list!12181 (c!453492 (_1!19473 lt!998517))))))

(declare-fun bs!514670 () Bool)

(assert (= bs!514670 d!812498))

(declare-fun m!3224575 () Bool)

(assert (=> bs!514670 m!3224575))

(assert (=> b!2794249 d!812498))

(declare-fun d!812500 () Bool)

(declare-fun e!1764432 () Bool)

(assert (=> d!812500 e!1764432))

(declare-fun res!1165215 () Bool)

(assert (=> d!812500 (=> (not res!1165215) (not e!1764432))))

(declare-fun lt!998572 () tuple2!32902)

(declare-fun isBalanced!3065 (Conc!10048) Bool)

(assert (=> d!812500 (= res!1165215 (isBalanced!3065 (c!453492 (_1!19473 lt!998572))))))

(declare-datatypes ((tuple2!32904 0))(
  ( (tuple2!32905 (_1!19474 Conc!10048) (_2!19474 Conc!10048)) )
))
(declare-fun lt!998571 () tuple2!32904)

(assert (=> d!812500 (= lt!998572 (tuple2!32903 (BalanceConc!19711 (_1!19474 lt!998571)) (BalanceConc!19711 (_2!19474 lt!998571))))))

(declare-fun splitAt!175 (Conc!10048 Int) tuple2!32904)

(assert (=> d!812500 (= lt!998571 (splitAt!175 (c!453492 totalInput!758) testedPSize!143))))

(assert (=> d!812500 (isBalanced!3065 (c!453492 totalInput!758))))

(assert (=> d!812500 (= (splitAt!174 totalInput!758 testedPSize!143) lt!998572)))

(declare-fun b!2794316 () Bool)

(declare-fun res!1165214 () Bool)

(assert (=> b!2794316 (=> (not res!1165214) (not e!1764432))))

(assert (=> b!2794316 (= res!1165214 (isBalanced!3065 (c!453492 (_2!19473 lt!998572))))))

(declare-fun b!2794317 () Bool)

(declare-datatypes ((tuple2!32906 0))(
  ( (tuple2!32907 (_1!19475 List!32496) (_2!19475 List!32496)) )
))
(declare-fun splitAtIndex!68 (List!32496 Int) tuple2!32906)

(assert (=> b!2794317 (= e!1764432 (= (tuple2!32907 (list!12180 (_1!19473 lt!998572)) (list!12180 (_2!19473 lt!998572))) (splitAtIndex!68 (list!12180 totalInput!758) testedPSize!143)))))

(assert (= (and d!812500 res!1165215) b!2794316))

(assert (= (and b!2794316 res!1165214) b!2794317))

(declare-fun m!3224577 () Bool)

(assert (=> d!812500 m!3224577))

(declare-fun m!3224579 () Bool)

(assert (=> d!812500 m!3224579))

(declare-fun m!3224581 () Bool)

(assert (=> d!812500 m!3224581))

(declare-fun m!3224583 () Bool)

(assert (=> b!2794316 m!3224583))

(declare-fun m!3224585 () Bool)

(assert (=> b!2794317 m!3224585))

(declare-fun m!3224587 () Bool)

(assert (=> b!2794317 m!3224587))

(assert (=> b!2794317 m!3224443))

(assert (=> b!2794317 m!3224443))

(declare-fun m!3224589 () Bool)

(assert (=> b!2794317 m!3224589))

(assert (=> b!2794249 d!812500))

(declare-fun d!812502 () Bool)

(declare-fun lambda!102640 () Int)

(declare-fun forall!6687 (List!32497 Int) Bool)

(assert (=> d!812502 (= (inv!44009 setElem!24068) (forall!6687 (exprs!2901 setElem!24068) lambda!102640))))

(declare-fun bs!514671 () Bool)

(assert (= bs!514671 d!812502))

(declare-fun m!3224591 () Bool)

(assert (=> bs!514671 m!3224591))

(assert (=> setNonEmpty!24068 d!812502))

(declare-fun d!812504 () Bool)

(declare-fun res!1165218 () Bool)

(declare-fun e!1764435 () Bool)

(assert (=> d!812504 (=> (not res!1165218) (not e!1764435))))

(assert (=> d!812504 (= res!1165218 ((_ is HashMap!3869) (cache!4012 cacheUp!890)))))

(assert (=> d!812504 (= (inv!44012 cacheUp!890) e!1764435)))

(declare-fun b!2794320 () Bool)

(declare-fun validCacheMapUp!389 (MutableMap!3869) Bool)

(assert (=> b!2794320 (= e!1764435 (validCacheMapUp!389 (cache!4012 cacheUp!890)))))

(assert (= (and d!812504 res!1165218) b!2794320))

(declare-fun m!3224593 () Bool)

(assert (=> b!2794320 m!3224593))

(assert (=> start!270110 d!812504))

(declare-fun d!812506 () Bool)

(assert (=> d!812506 (= (inv!44010 totalInput!758) (isBalanced!3065 (c!453492 totalInput!758)))))

(declare-fun bs!514672 () Bool)

(assert (= bs!514672 d!812506))

(assert (=> bs!514672 m!3224581))

(assert (=> start!270110 d!812506))

(declare-fun d!812508 () Bool)

(declare-fun res!1165221 () Bool)

(declare-fun e!1764438 () Bool)

(assert (=> d!812508 (=> (not res!1165221) (not e!1764438))))

(assert (=> d!812508 (= res!1165221 ((_ is HashMap!3868) (cache!4011 cacheDown!1009)))))

(assert (=> d!812508 (= (inv!44011 cacheDown!1009) e!1764438)))

(declare-fun b!2794323 () Bool)

(declare-fun validCacheMapDown!420 (MutableMap!3868) Bool)

(assert (=> b!2794323 (= e!1764438 (validCacheMapDown!420 (cache!4011 cacheDown!1009)))))

(assert (= (and d!812508 res!1165221) b!2794323))

(declare-fun m!3224595 () Bool)

(assert (=> b!2794323 m!3224595))

(assert (=> start!270110 d!812508))

(declare-fun d!812510 () Bool)

(assert (=> d!812510 (= (list!12180 totalInput!758) (list!12181 (c!453492 totalInput!758)))))

(declare-fun bs!514673 () Bool)

(assert (= bs!514673 d!812510))

(declare-fun m!3224597 () Bool)

(assert (=> bs!514673 m!3224597))

(assert (=> start!270110 d!812510))

(declare-fun b!2794324 () Bool)

(declare-fun e!1764439 () List!32496)

(assert (=> b!2794324 (= e!1764439 testedSuffix!143)))

(declare-fun e!1764440 () Bool)

(declare-fun lt!998573 () List!32496)

(declare-fun b!2794327 () Bool)

(assert (=> b!2794327 (= e!1764440 (or (not (= testedSuffix!143 Nil!32396)) (= lt!998573 testedP!183)))))

(declare-fun b!2794326 () Bool)

(declare-fun res!1165222 () Bool)

(assert (=> b!2794326 (=> (not res!1165222) (not e!1764440))))

(assert (=> b!2794326 (= res!1165222 (= (size!25233 lt!998573) (+ (size!25233 testedP!183) (size!25233 testedSuffix!143))))))

(declare-fun d!812512 () Bool)

(assert (=> d!812512 e!1764440))

(declare-fun res!1165223 () Bool)

(assert (=> d!812512 (=> (not res!1165223) (not e!1764440))))

(assert (=> d!812512 (= res!1165223 (= (content!4533 lt!998573) ((_ map or) (content!4533 testedP!183) (content!4533 testedSuffix!143))))))

(assert (=> d!812512 (= lt!998573 e!1764439)))

(declare-fun c!453518 () Bool)

(assert (=> d!812512 (= c!453518 ((_ is Nil!32396) testedP!183))))

(assert (=> d!812512 (= (++!7997 testedP!183 testedSuffix!143) lt!998573)))

(declare-fun b!2794325 () Bool)

(assert (=> b!2794325 (= e!1764439 (Cons!32396 (h!37816 testedP!183) (++!7997 (t!228653 testedP!183) testedSuffix!143)))))

(assert (= (and d!812512 c!453518) b!2794324))

(assert (= (and d!812512 (not c!453518)) b!2794325))

(assert (= (and d!812512 res!1165223) b!2794326))

(assert (= (and b!2794326 res!1165222) b!2794327))

(declare-fun m!3224599 () Bool)

(assert (=> b!2794326 m!3224599))

(assert (=> b!2794326 m!3224439))

(declare-fun m!3224601 () Bool)

(assert (=> b!2794326 m!3224601))

(declare-fun m!3224603 () Bool)

(assert (=> d!812512 m!3224603))

(declare-fun m!3224605 () Bool)

(assert (=> d!812512 m!3224605))

(declare-fun m!3224607 () Bool)

(assert (=> d!812512 m!3224607))

(declare-fun m!3224609 () Bool)

(assert (=> b!2794325 m!3224609))

(assert (=> start!270110 d!812512))

(declare-fun d!812514 () Bool)

(assert (=> d!812514 (= (array_inv!4492 (_keys!4262 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009))))))) (bvsge (size!25234 (_keys!4262 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2794250 d!812514))

(declare-fun d!812516 () Bool)

(assert (=> d!812516 (= (array_inv!4494 (_values!4243 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009))))))) (bvsge (size!25235 (_values!4243 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009))))))) #b00000000000000000000000000000000))))

(assert (=> b!2794250 d!812516))

(declare-fun d!812518 () Bool)

(declare-fun lt!998576 () Int)

(assert (=> d!812518 (= lt!998576 (size!25233 (list!12180 (_1!19473 lt!998517))))))

(declare-fun size!25238 (Conc!10048) Int)

(assert (=> d!812518 (= lt!998576 (size!25238 (c!453492 (_1!19473 lt!998517))))))

(assert (=> d!812518 (= (size!25237 (_1!19473 lt!998517)) lt!998576)))

(declare-fun bs!514674 () Bool)

(assert (= bs!514674 d!812518))

(assert (=> bs!514674 m!3224491))

(assert (=> bs!514674 m!3224491))

(declare-fun m!3224611 () Bool)

(assert (=> bs!514674 m!3224611))

(declare-fun m!3224613 () Bool)

(assert (=> bs!514674 m!3224613))

(assert (=> b!2794251 d!812518))

(declare-fun d!812520 () Bool)

(declare-fun lt!998577 () Int)

(assert (=> d!812520 (= lt!998577 (size!25233 (list!12180 totalInput!758)))))

(assert (=> d!812520 (= lt!998577 (size!25238 (c!453492 totalInput!758)))))

(assert (=> d!812520 (= (size!25237 totalInput!758) lt!998577)))

(declare-fun bs!514675 () Bool)

(assert (= bs!514675 d!812520))

(assert (=> bs!514675 m!3224443))

(assert (=> bs!514675 m!3224443))

(declare-fun m!3224615 () Bool)

(assert (=> bs!514675 m!3224615))

(declare-fun m!3224617 () Bool)

(assert (=> bs!514675 m!3224617))

(assert (=> b!2794234 d!812520))

(declare-fun b!2794329 () Bool)

(declare-fun res!1165226 () Bool)

(declare-fun e!1764441 () Bool)

(assert (=> b!2794329 (=> (not res!1165226) (not e!1764441))))

(assert (=> b!2794329 (= res!1165226 (= (head!6186 testedP!183) (head!6186 lt!998503)))))

(declare-fun b!2794330 () Bool)

(assert (=> b!2794330 (= e!1764441 (isPrefix!2611 (tail!4417 testedP!183) (tail!4417 lt!998503)))))

(declare-fun b!2794331 () Bool)

(declare-fun e!1764442 () Bool)

(assert (=> b!2794331 (= e!1764442 (>= (size!25233 lt!998503) (size!25233 testedP!183)))))

(declare-fun d!812522 () Bool)

(assert (=> d!812522 e!1764442))

(declare-fun res!1165227 () Bool)

(assert (=> d!812522 (=> res!1165227 e!1764442)))

(declare-fun lt!998578 () Bool)

(assert (=> d!812522 (= res!1165227 (not lt!998578))))

(declare-fun e!1764443 () Bool)

(assert (=> d!812522 (= lt!998578 e!1764443)))

(declare-fun res!1165225 () Bool)

(assert (=> d!812522 (=> res!1165225 e!1764443)))

(assert (=> d!812522 (= res!1165225 ((_ is Nil!32396) testedP!183))))

(assert (=> d!812522 (= (isPrefix!2611 testedP!183 lt!998503) lt!998578)))

(declare-fun b!2794328 () Bool)

(assert (=> b!2794328 (= e!1764443 e!1764441)))

(declare-fun res!1165224 () Bool)

(assert (=> b!2794328 (=> (not res!1165224) (not e!1764441))))

(assert (=> b!2794328 (= res!1165224 (not ((_ is Nil!32396) lt!998503)))))

(assert (= (and d!812522 (not res!1165225)) b!2794328))

(assert (= (and b!2794328 res!1165224) b!2794329))

(assert (= (and b!2794329 res!1165226) b!2794330))

(assert (= (and d!812522 (not res!1165227)) b!2794331))

(declare-fun m!3224619 () Bool)

(assert (=> b!2794329 m!3224619))

(assert (=> b!2794329 m!3224553))

(declare-fun m!3224621 () Bool)

(assert (=> b!2794330 m!3224621))

(assert (=> b!2794330 m!3224539))

(assert (=> b!2794330 m!3224621))

(assert (=> b!2794330 m!3224539))

(declare-fun m!3224623 () Bool)

(assert (=> b!2794330 m!3224623))

(assert (=> b!2794331 m!3224479))

(assert (=> b!2794331 m!3224439))

(assert (=> b!2794253 d!812522))

(declare-fun b!2794333 () Bool)

(declare-fun res!1165230 () Bool)

(declare-fun e!1764444 () Bool)

(assert (=> b!2794333 (=> (not res!1165230) (not e!1764444))))

(assert (=> b!2794333 (= res!1165230 (= (head!6186 testedP!183) (head!6186 lt!998512)))))

(declare-fun b!2794334 () Bool)

(assert (=> b!2794334 (= e!1764444 (isPrefix!2611 (tail!4417 testedP!183) (tail!4417 lt!998512)))))

(declare-fun b!2794335 () Bool)

(declare-fun e!1764445 () Bool)

(assert (=> b!2794335 (= e!1764445 (>= (size!25233 lt!998512) (size!25233 testedP!183)))))

(declare-fun d!812524 () Bool)

(assert (=> d!812524 e!1764445))

(declare-fun res!1165231 () Bool)

(assert (=> d!812524 (=> res!1165231 e!1764445)))

(declare-fun lt!998579 () Bool)

(assert (=> d!812524 (= res!1165231 (not lt!998579))))

(declare-fun e!1764446 () Bool)

(assert (=> d!812524 (= lt!998579 e!1764446)))

(declare-fun res!1165229 () Bool)

(assert (=> d!812524 (=> res!1165229 e!1764446)))

(assert (=> d!812524 (= res!1165229 ((_ is Nil!32396) testedP!183))))

(assert (=> d!812524 (= (isPrefix!2611 testedP!183 lt!998512) lt!998579)))

(declare-fun b!2794332 () Bool)

(assert (=> b!2794332 (= e!1764446 e!1764444)))

(declare-fun res!1165228 () Bool)

(assert (=> b!2794332 (=> (not res!1165228) (not e!1764444))))

(assert (=> b!2794332 (= res!1165228 (not ((_ is Nil!32396) lt!998512)))))

(assert (= (and d!812524 (not res!1165229)) b!2794332))

(assert (= (and b!2794332 res!1165228) b!2794333))

(assert (= (and b!2794333 res!1165230) b!2794334))

(assert (= (and d!812524 (not res!1165231)) b!2794335))

(assert (=> b!2794333 m!3224619))

(declare-fun m!3224625 () Bool)

(assert (=> b!2794333 m!3224625))

(assert (=> b!2794334 m!3224621))

(declare-fun m!3224627 () Bool)

(assert (=> b!2794334 m!3224627))

(assert (=> b!2794334 m!3224621))

(assert (=> b!2794334 m!3224627))

(declare-fun m!3224629 () Bool)

(assert (=> b!2794334 m!3224629))

(declare-fun m!3224631 () Bool)

(assert (=> b!2794335 m!3224631))

(assert (=> b!2794335 m!3224439))

(assert (=> b!2794253 d!812524))

(declare-fun d!812526 () Bool)

(assert (=> d!812526 (isPrefix!2611 testedP!183 (++!7997 testedP!183 testedSuffix!143))))

(declare-fun lt!998582 () Unit!46570)

(declare-fun choose!16437 (List!32496 List!32496) Unit!46570)

(assert (=> d!812526 (= lt!998582 (choose!16437 testedP!183 testedSuffix!143))))

(assert (=> d!812526 (= (lemmaConcatTwoListThenFirstIsPrefix!1720 testedP!183 testedSuffix!143) lt!998582)))

(declare-fun bs!514676 () Bool)

(assert (= bs!514676 d!812526))

(assert (=> bs!514676 m!3224451))

(assert (=> bs!514676 m!3224451))

(declare-fun m!3224633 () Bool)

(assert (=> bs!514676 m!3224633))

(declare-fun m!3224635 () Bool)

(assert (=> bs!514676 m!3224635))

(assert (=> b!2794253 d!812526))

(declare-fun d!812528 () Bool)

(assert (=> d!812528 (= (valid!3105 cacheDown!1009) (validCacheMapDown!420 (cache!4011 cacheDown!1009)))))

(declare-fun bs!514677 () Bool)

(assert (= bs!514677 d!812528))

(assert (=> bs!514677 m!3224595))

(assert (=> b!2794244 d!812528))

(declare-fun d!812530 () Bool)

(assert (=> d!812530 (= (valid!3104 cacheUp!890) (validCacheMapUp!389 (cache!4012 cacheUp!890)))))

(declare-fun bs!514678 () Bool)

(assert (= bs!514678 d!812530))

(assert (=> bs!514678 m!3224593))

(assert (=> b!2794236 d!812530))

(declare-fun d!812532 () Bool)

(declare-fun lt!998585 () C!16524)

(assert (=> d!812532 (= lt!998585 (apply!7577 (list!12180 totalInput!758) testedPSize!143))))

(declare-fun apply!7578 (Conc!10048 Int) C!16524)

(assert (=> d!812532 (= lt!998585 (apply!7578 (c!453492 totalInput!758) testedPSize!143))))

(declare-fun e!1764449 () Bool)

(assert (=> d!812532 e!1764449))

(declare-fun res!1165234 () Bool)

(assert (=> d!812532 (=> (not res!1165234) (not e!1764449))))

(assert (=> d!812532 (= res!1165234 (<= 0 testedPSize!143))))

(assert (=> d!812532 (= (apply!7576 totalInput!758 testedPSize!143) lt!998585)))

(declare-fun b!2794338 () Bool)

(assert (=> b!2794338 (= e!1764449 (< testedPSize!143 (size!25237 totalInput!758)))))

(assert (= (and d!812532 res!1165234) b!2794338))

(assert (=> d!812532 m!3224443))

(assert (=> d!812532 m!3224443))

(declare-fun m!3224637 () Bool)

(assert (=> d!812532 m!3224637))

(declare-fun m!3224639 () Bool)

(assert (=> d!812532 m!3224639))

(assert (=> b!2794338 m!3224499))

(assert (=> b!2794228 d!812532))

(declare-fun d!812534 () Bool)

(assert (=> d!812534 (and (= lt!998508 testedP!183) (= lt!998513 testedSuffix!143))))

(declare-fun lt!998588 () Unit!46570)

(declare-fun choose!16438 (List!32496 List!32496 List!32496 List!32496) Unit!46570)

(assert (=> d!812534 (= lt!998588 (choose!16438 lt!998508 lt!998513 testedP!183 testedSuffix!143))))

(assert (=> d!812534 (= (++!7997 lt!998508 lt!998513) (++!7997 testedP!183 testedSuffix!143))))

(assert (=> d!812534 (= (lemmaConcatSameAndSameSizesThenSameLists!371 lt!998508 lt!998513 testedP!183 testedSuffix!143) lt!998588)))

(declare-fun bs!514679 () Bool)

(assert (= bs!514679 d!812534))

(declare-fun m!3224641 () Bool)

(assert (=> bs!514679 m!3224641))

(assert (=> bs!514679 m!3224487))

(assert (=> bs!514679 m!3224451))

(assert (=> b!2794228 d!812534))

(declare-fun d!812536 () Bool)

(declare-fun e!1764460 () Bool)

(assert (=> d!812536 e!1764460))

(declare-fun res!1165237 () Bool)

(assert (=> d!812536 (=> (not res!1165237) (not e!1764460))))

(declare-fun lt!998591 () List!32496)

(assert (=> d!812536 (= res!1165237 (= ((_ map implies) (content!4533 lt!998591) (content!4533 lt!998503)) ((as const (InoxSet C!16524)) true)))))

(declare-fun e!1764463 () List!32496)

(assert (=> d!812536 (= lt!998591 e!1764463)))

(declare-fun c!453527 () Bool)

(assert (=> d!812536 (= c!453527 ((_ is Nil!32396) lt!998503))))

(assert (=> d!812536 (= (drop!1738 lt!998503 testedPSize!143) lt!998591)))

(declare-fun b!2794357 () Bool)

(declare-fun e!1764462 () List!32496)

(assert (=> b!2794357 (= e!1764462 (drop!1738 (t!228653 lt!998503) (- testedPSize!143 1)))))

(declare-fun b!2794358 () Bool)

(declare-fun e!1764464 () Int)

(assert (=> b!2794358 (= e!1764464 0)))

(declare-fun b!2794359 () Bool)

(declare-fun e!1764461 () Int)

(assert (=> b!2794359 (= e!1764460 (= (size!25233 lt!998591) e!1764461))))

(declare-fun c!453530 () Bool)

(assert (=> b!2794359 (= c!453530 (<= testedPSize!143 0))))

(declare-fun bm!182762 () Bool)

(declare-fun call!182767 () Int)

(assert (=> bm!182762 (= call!182767 (size!25233 lt!998503))))

(declare-fun b!2794360 () Bool)

(assert (=> b!2794360 (= e!1764462 lt!998503)))

(declare-fun b!2794361 () Bool)

(assert (=> b!2794361 (= e!1764463 e!1764462)))

(declare-fun c!453528 () Bool)

(assert (=> b!2794361 (= c!453528 (<= testedPSize!143 0))))

(declare-fun b!2794362 () Bool)

(assert (=> b!2794362 (= e!1764461 call!182767)))

(declare-fun b!2794363 () Bool)

(assert (=> b!2794363 (= e!1764464 (- call!182767 testedPSize!143))))

(declare-fun b!2794364 () Bool)

(assert (=> b!2794364 (= e!1764461 e!1764464)))

(declare-fun c!453529 () Bool)

(assert (=> b!2794364 (= c!453529 (>= testedPSize!143 call!182767))))

(declare-fun b!2794365 () Bool)

(assert (=> b!2794365 (= e!1764463 Nil!32396)))

(assert (= (and d!812536 c!453527) b!2794365))

(assert (= (and d!812536 (not c!453527)) b!2794361))

(assert (= (and b!2794361 c!453528) b!2794360))

(assert (= (and b!2794361 (not c!453528)) b!2794357))

(assert (= (and d!812536 res!1165237) b!2794359))

(assert (= (and b!2794359 c!453530) b!2794362))

(assert (= (and b!2794359 (not c!453530)) b!2794364))

(assert (= (and b!2794364 c!453529) b!2794358))

(assert (= (and b!2794364 (not c!453529)) b!2794363))

(assert (= (or b!2794362 b!2794364 b!2794363) bm!182762))

(declare-fun m!3224643 () Bool)

(assert (=> d!812536 m!3224643))

(declare-fun m!3224645 () Bool)

(assert (=> d!812536 m!3224645))

(declare-fun m!3224647 () Bool)

(assert (=> b!2794357 m!3224647))

(declare-fun m!3224649 () Bool)

(assert (=> b!2794359 m!3224649))

(assert (=> bm!182762 m!3224479))

(assert (=> b!2794228 d!812536))

(declare-fun d!812538 () Bool)

(assert (=> d!812538 (= (head!6186 testedSuffix!143) (h!37816 testedSuffix!143))))

(assert (=> b!2794228 d!812538))

(declare-fun d!812540 () Bool)

(assert (=> d!812540 (= (head!6186 (drop!1738 lt!998503 testedPSize!143)) (h!37816 (drop!1738 lt!998503 testedPSize!143)))))

(assert (=> b!2794228 d!812540))

(declare-fun d!812542 () Bool)

(declare-fun lt!998594 () C!16524)

(declare-fun contains!6012 (List!32496 C!16524) Bool)

(assert (=> d!812542 (contains!6012 lt!998503 lt!998594)))

(declare-fun e!1764470 () C!16524)

(assert (=> d!812542 (= lt!998594 e!1764470)))

(declare-fun c!453533 () Bool)

(assert (=> d!812542 (= c!453533 (= testedPSize!143 0))))

(declare-fun e!1764469 () Bool)

(assert (=> d!812542 e!1764469))

(declare-fun res!1165240 () Bool)

(assert (=> d!812542 (=> (not res!1165240) (not e!1764469))))

(assert (=> d!812542 (= res!1165240 (<= 0 testedPSize!143))))

(assert (=> d!812542 (= (apply!7577 lt!998503 testedPSize!143) lt!998594)))

(declare-fun b!2794372 () Bool)

(assert (=> b!2794372 (= e!1764469 (< testedPSize!143 (size!25233 lt!998503)))))

(declare-fun b!2794373 () Bool)

(assert (=> b!2794373 (= e!1764470 (head!6186 lt!998503))))

(declare-fun b!2794374 () Bool)

(assert (=> b!2794374 (= e!1764470 (apply!7577 (tail!4417 lt!998503) (- testedPSize!143 1)))))

(assert (= (and d!812542 res!1165240) b!2794372))

(assert (= (and d!812542 c!453533) b!2794373))

(assert (= (and d!812542 (not c!453533)) b!2794374))

(declare-fun m!3224651 () Bool)

(assert (=> d!812542 m!3224651))

(assert (=> b!2794372 m!3224479))

(assert (=> b!2794373 m!3224553))

(assert (=> b!2794374 m!3224539))

(assert (=> b!2794374 m!3224539))

(declare-fun m!3224653 () Bool)

(assert (=> b!2794374 m!3224653))

(assert (=> b!2794228 d!812542))

(declare-fun d!812544 () Bool)

(assert (=> d!812544 (= (head!6186 (drop!1738 lt!998503 testedPSize!143)) (apply!7577 lt!998503 testedPSize!143))))

(declare-fun lt!998597 () Unit!46570)

(declare-fun choose!16439 (List!32496 Int) Unit!46570)

(assert (=> d!812544 (= lt!998597 (choose!16439 lt!998503 testedPSize!143))))

(declare-fun e!1764473 () Bool)

(assert (=> d!812544 e!1764473))

(declare-fun res!1165243 () Bool)

(assert (=> d!812544 (=> (not res!1165243) (not e!1764473))))

(assert (=> d!812544 (= res!1165243 (>= testedPSize!143 0))))

(assert (=> d!812544 (= (lemmaDropApply!942 lt!998503 testedPSize!143) lt!998597)))

(declare-fun b!2794377 () Bool)

(assert (=> b!2794377 (= e!1764473 (< testedPSize!143 (size!25233 lt!998503)))))

(assert (= (and d!812544 res!1165243) b!2794377))

(assert (=> d!812544 m!3224501))

(assert (=> d!812544 m!3224501))

(assert (=> d!812544 m!3224511))

(assert (=> d!812544 m!3224505))

(declare-fun m!3224655 () Bool)

(assert (=> d!812544 m!3224655))

(assert (=> b!2794377 m!3224479))

(assert (=> b!2794228 d!812544))

(declare-fun e!1764480 () Bool)

(assert (=> b!2794245 (= tp!888289 e!1764480)))

(declare-fun b!2794386 () Bool)

(declare-fun e!1764481 () Bool)

(declare-fun tp!888301 () Bool)

(assert (=> b!2794386 (= e!1764481 tp!888301)))

(declare-fun b!2794387 () Bool)

(declare-fun e!1764482 () Bool)

(declare-fun setRes!24071 () Bool)

(declare-fun tp!888302 () Bool)

(assert (=> b!2794387 (= e!1764480 (and (inv!44009 (_1!19471 (_1!19472 (h!37819 (zeroValue!4222 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890)))))))))) e!1764482 tp_is_empty!14179 setRes!24071 tp!888302))))

(declare-fun condSetEmpty!24071 () Bool)

(assert (=> b!2794387 (= condSetEmpty!24071 (= (_2!19472 (h!37819 (zeroValue!4222 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890)))))))) ((as const (Array Context!4802 Bool)) false)))))

(declare-fun setElem!24071 () Context!4802)

(declare-fun setNonEmpty!24071 () Bool)

(declare-fun tp!888300 () Bool)

(assert (=> setNonEmpty!24071 (= setRes!24071 (and tp!888300 (inv!44009 setElem!24071) e!1764481))))

(declare-fun setRest!24071 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24071 (= (_2!19472 (h!37819 (zeroValue!4222 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24071 true) setRest!24071))))

(declare-fun setIsEmpty!24071 () Bool)

(assert (=> setIsEmpty!24071 setRes!24071))

(declare-fun b!2794388 () Bool)

(declare-fun tp!888299 () Bool)

(assert (=> b!2794388 (= e!1764482 tp!888299)))

(assert (= b!2794387 b!2794388))

(assert (= (and b!2794387 condSetEmpty!24071) setIsEmpty!24071))

(assert (= (and b!2794387 (not condSetEmpty!24071)) setNonEmpty!24071))

(assert (= setNonEmpty!24071 b!2794386))

(assert (= (and b!2794245 ((_ is Cons!32399) (zeroValue!4222 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890)))))))) b!2794387))

(declare-fun m!3224657 () Bool)

(assert (=> b!2794387 m!3224657))

(declare-fun m!3224659 () Bool)

(assert (=> setNonEmpty!24071 m!3224659))

(declare-fun e!1764483 () Bool)

(assert (=> b!2794245 (= tp!888274 e!1764483)))

(declare-fun b!2794389 () Bool)

(declare-fun e!1764484 () Bool)

(declare-fun tp!888305 () Bool)

(assert (=> b!2794389 (= e!1764484 tp!888305)))

(declare-fun tp!888306 () Bool)

(declare-fun b!2794390 () Bool)

(declare-fun setRes!24072 () Bool)

(declare-fun e!1764485 () Bool)

(assert (=> b!2794390 (= e!1764483 (and (inv!44009 (_1!19471 (_1!19472 (h!37819 (minValue!4222 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890)))))))))) e!1764485 tp_is_empty!14179 setRes!24072 tp!888306))))

(declare-fun condSetEmpty!24072 () Bool)

(assert (=> b!2794390 (= condSetEmpty!24072 (= (_2!19472 (h!37819 (minValue!4222 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890)))))))) ((as const (Array Context!4802 Bool)) false)))))

(declare-fun setElem!24072 () Context!4802)

(declare-fun tp!888304 () Bool)

(declare-fun setNonEmpty!24072 () Bool)

(assert (=> setNonEmpty!24072 (= setRes!24072 (and tp!888304 (inv!44009 setElem!24072) e!1764484))))

(declare-fun setRest!24072 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24072 (= (_2!19472 (h!37819 (minValue!4222 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890)))))))) ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24072 true) setRest!24072))))

(declare-fun setIsEmpty!24072 () Bool)

(assert (=> setIsEmpty!24072 setRes!24072))

(declare-fun b!2794391 () Bool)

(declare-fun tp!888303 () Bool)

(assert (=> b!2794391 (= e!1764485 tp!888303)))

(assert (= b!2794390 b!2794391))

(assert (= (and b!2794390 condSetEmpty!24072) setIsEmpty!24072))

(assert (= (and b!2794390 (not condSetEmpty!24072)) setNonEmpty!24072))

(assert (= setNonEmpty!24072 b!2794389))

(assert (= (and b!2794245 ((_ is Cons!32399) (minValue!4222 (v!34003 (underlying!8129 (v!34004 (underlying!8130 (cache!4012 cacheUp!890)))))))) b!2794390))

(declare-fun m!3224661 () Bool)

(assert (=> b!2794390 m!3224661))

(declare-fun m!3224663 () Bool)

(assert (=> setNonEmpty!24072 m!3224663))

(declare-fun b!2794400 () Bool)

(declare-fun e!1764494 () Bool)

(declare-fun tp!888321 () Bool)

(assert (=> b!2794400 (= e!1764494 tp!888321)))

(declare-fun e!1764493 () Bool)

(assert (=> b!2794250 (= tp!888275 e!1764493)))

(declare-fun setIsEmpty!24075 () Bool)

(declare-fun setRes!24075 () Bool)

(assert (=> setIsEmpty!24075 setRes!24075))

(declare-fun tp!888318 () Bool)

(declare-fun b!2794401 () Bool)

(declare-fun e!1764492 () Bool)

(declare-fun tp!888317 () Bool)

(assert (=> b!2794401 (= e!1764493 (and tp!888317 (inv!44009 (_2!19469 (_1!19470 (h!37818 (zeroValue!4221 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009)))))))))) e!1764492 tp_is_empty!14179 setRes!24075 tp!888318))))

(declare-fun condSetEmpty!24075 () Bool)

(assert (=> b!2794401 (= condSetEmpty!24075 (= (_2!19470 (h!37818 (zeroValue!4221 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009)))))))) ((as const (Array Context!4802 Bool)) false)))))

(declare-fun tp!888319 () Bool)

(declare-fun setNonEmpty!24075 () Bool)

(declare-fun setElem!24075 () Context!4802)

(assert (=> setNonEmpty!24075 (= setRes!24075 (and tp!888319 (inv!44009 setElem!24075) e!1764494))))

(declare-fun setRest!24075 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24075 (= (_2!19470 (h!37818 (zeroValue!4221 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24075 true) setRest!24075))))

(declare-fun b!2794402 () Bool)

(declare-fun tp!888320 () Bool)

(assert (=> b!2794402 (= e!1764492 tp!888320)))

(assert (= b!2794401 b!2794402))

(assert (= (and b!2794401 condSetEmpty!24075) setIsEmpty!24075))

(assert (= (and b!2794401 (not condSetEmpty!24075)) setNonEmpty!24075))

(assert (= setNonEmpty!24075 b!2794400))

(assert (= (and b!2794250 ((_ is Cons!32398) (zeroValue!4221 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009)))))))) b!2794401))

(declare-fun m!3224665 () Bool)

(assert (=> b!2794401 m!3224665))

(declare-fun m!3224667 () Bool)

(assert (=> setNonEmpty!24075 m!3224667))

(declare-fun b!2794403 () Bool)

(declare-fun e!1764497 () Bool)

(declare-fun tp!888326 () Bool)

(assert (=> b!2794403 (= e!1764497 tp!888326)))

(declare-fun e!1764496 () Bool)

(assert (=> b!2794250 (= tp!888273 e!1764496)))

(declare-fun setIsEmpty!24076 () Bool)

(declare-fun setRes!24076 () Bool)

(assert (=> setIsEmpty!24076 setRes!24076))

(declare-fun e!1764495 () Bool)

(declare-fun tp!888323 () Bool)

(declare-fun tp!888322 () Bool)

(declare-fun b!2794404 () Bool)

(assert (=> b!2794404 (= e!1764496 (and tp!888322 (inv!44009 (_2!19469 (_1!19470 (h!37818 (minValue!4221 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009)))))))))) e!1764495 tp_is_empty!14179 setRes!24076 tp!888323))))

(declare-fun condSetEmpty!24076 () Bool)

(assert (=> b!2794404 (= condSetEmpty!24076 (= (_2!19470 (h!37818 (minValue!4221 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009)))))))) ((as const (Array Context!4802 Bool)) false)))))

(declare-fun tp!888324 () Bool)

(declare-fun setNonEmpty!24076 () Bool)

(declare-fun setElem!24076 () Context!4802)

(assert (=> setNonEmpty!24076 (= setRes!24076 (and tp!888324 (inv!44009 setElem!24076) e!1764497))))

(declare-fun setRest!24076 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24076 (= (_2!19470 (h!37818 (minValue!4221 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009)))))))) ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24076 true) setRest!24076))))

(declare-fun b!2794405 () Bool)

(declare-fun tp!888325 () Bool)

(assert (=> b!2794405 (= e!1764495 tp!888325)))

(assert (= b!2794404 b!2794405))

(assert (= (and b!2794404 condSetEmpty!24076) setIsEmpty!24076))

(assert (= (and b!2794404 (not condSetEmpty!24076)) setNonEmpty!24076))

(assert (= setNonEmpty!24076 b!2794403))

(assert (= (and b!2794250 ((_ is Cons!32398) (minValue!4221 (v!34001 (underlying!8127 (v!34002 (underlying!8128 (cache!4011 cacheDown!1009)))))))) b!2794404))

(declare-fun m!3224669 () Bool)

(assert (=> b!2794404 m!3224669))

(declare-fun m!3224671 () Bool)

(assert (=> setNonEmpty!24076 m!3224671))

(declare-fun b!2794410 () Bool)

(declare-fun e!1764500 () Bool)

(declare-fun tp!888331 () Bool)

(declare-fun tp!888332 () Bool)

(assert (=> b!2794410 (= e!1764500 (and tp!888331 tp!888332))))

(assert (=> b!2794237 (= tp!888283 e!1764500)))

(assert (= (and b!2794237 ((_ is Cons!32397) (exprs!2901 setElem!24068))) b!2794410))

(declare-fun e!1764506 () Bool)

(declare-fun b!2794419 () Bool)

(declare-fun tp!888340 () Bool)

(declare-fun tp!888339 () Bool)

(assert (=> b!2794419 (= e!1764506 (and (inv!44008 (left!24537 (c!453492 totalInput!758))) tp!888339 (inv!44008 (right!24867 (c!453492 totalInput!758))) tp!888340))))

(declare-fun b!2794421 () Bool)

(declare-fun e!1764505 () Bool)

(declare-fun tp!888341 () Bool)

(assert (=> b!2794421 (= e!1764505 tp!888341)))

(declare-fun b!2794420 () Bool)

(declare-fun inv!44015 (IArray!20101) Bool)

(assert (=> b!2794420 (= e!1764506 (and (inv!44015 (xs!13160 (c!453492 totalInput!758))) e!1764505))))

(assert (=> b!2794238 (= tp!888272 (and (inv!44008 (c!453492 totalInput!758)) e!1764506))))

(assert (= (and b!2794238 ((_ is Node!10048) (c!453492 totalInput!758))) b!2794419))

(assert (= b!2794420 b!2794421))

(assert (= (and b!2794238 ((_ is Leaf!15308) (c!453492 totalInput!758))) b!2794420))

(declare-fun m!3224673 () Bool)

(assert (=> b!2794419 m!3224673))

(declare-fun m!3224675 () Bool)

(assert (=> b!2794419 m!3224675))

(declare-fun m!3224677 () Bool)

(assert (=> b!2794420 m!3224677))

(assert (=> b!2794238 m!3224517))

(declare-fun b!2794426 () Bool)

(declare-fun e!1764509 () Bool)

(declare-fun tp!888344 () Bool)

(assert (=> b!2794426 (= e!1764509 (and tp_is_empty!14179 tp!888344))))

(assert (=> b!2794256 (= tp!888286 e!1764509)))

(assert (= (and b!2794256 ((_ is Cons!32396) (t!228653 testedSuffix!143))) b!2794426))

(declare-fun tp!888367 () Bool)

(declare-fun e!1764524 () Bool)

(declare-fun b!2794441 () Bool)

(declare-fun tp!888377 () Bool)

(declare-fun e!1764522 () Bool)

(declare-fun mapDefault!18035 () List!32498)

(declare-fun setRes!24081 () Bool)

(assert (=> b!2794441 (= e!1764522 (and tp!888367 (inv!44009 (_2!19469 (_1!19470 (h!37818 mapDefault!18035)))) e!1764524 tp_is_empty!14179 setRes!24081 tp!888377))))

(declare-fun condSetEmpty!24082 () Bool)

(assert (=> b!2794441 (= condSetEmpty!24082 (= (_2!19470 (h!37818 mapDefault!18035)) ((as const (Array Context!4802 Bool)) false)))))

(declare-fun b!2794442 () Bool)

(declare-fun e!1764523 () Bool)

(declare-fun tp!888368 () Bool)

(assert (=> b!2794442 (= e!1764523 tp!888368)))

(declare-fun b!2794443 () Bool)

(declare-fun e!1764527 () Bool)

(declare-fun tp!888371 () Bool)

(assert (=> b!2794443 (= e!1764527 tp!888371)))

(declare-fun setIsEmpty!24081 () Bool)

(declare-fun setRes!24082 () Bool)

(assert (=> setIsEmpty!24081 setRes!24082))

(declare-fun e!1764526 () Bool)

(declare-fun tp!888369 () Bool)

(declare-fun b!2794444 () Bool)

(declare-fun mapValue!18035 () List!32498)

(declare-fun tp!888374 () Bool)

(declare-fun e!1764525 () Bool)

(assert (=> b!2794444 (= e!1764526 (and tp!888374 (inv!44009 (_2!19469 (_1!19470 (h!37818 mapValue!18035)))) e!1764525 tp_is_empty!14179 setRes!24082 tp!888369))))

(declare-fun condSetEmpty!24081 () Bool)

(assert (=> b!2794444 (= condSetEmpty!24081 (= (_2!19470 (h!37818 mapValue!18035)) ((as const (Array Context!4802 Bool)) false)))))

(declare-fun condMapEmpty!18035 () Bool)

(assert (=> mapNonEmpty!18031 (= condMapEmpty!18035 (= mapRest!18031 ((as const (Array (_ BitVec 32) List!32498)) mapDefault!18035)))))

(declare-fun mapRes!18035 () Bool)

(assert (=> mapNonEmpty!18031 (= tp!888279 (and e!1764522 mapRes!18035))))

(declare-fun setIsEmpty!24082 () Bool)

(assert (=> setIsEmpty!24082 setRes!24081))

(declare-fun tp!888372 () Bool)

(declare-fun setElem!24081 () Context!4802)

(declare-fun setNonEmpty!24081 () Bool)

(assert (=> setNonEmpty!24081 (= setRes!24082 (and tp!888372 (inv!44009 setElem!24081) e!1764523))))

(declare-fun setRest!24082 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24081 (= (_2!19470 (h!37818 mapValue!18035)) ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24081 true) setRest!24082))))

(declare-fun mapIsEmpty!18035 () Bool)

(assert (=> mapIsEmpty!18035 mapRes!18035))

(declare-fun tp!888375 () Bool)

(declare-fun setNonEmpty!24082 () Bool)

(declare-fun setElem!24082 () Context!4802)

(assert (=> setNonEmpty!24082 (= setRes!24081 (and tp!888375 (inv!44009 setElem!24082) e!1764527))))

(declare-fun setRest!24081 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24082 (= (_2!19470 (h!37818 mapDefault!18035)) ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24082 true) setRest!24081))))

(declare-fun mapNonEmpty!18035 () Bool)

(declare-fun tp!888376 () Bool)

(assert (=> mapNonEmpty!18035 (= mapRes!18035 (and tp!888376 e!1764526))))

(declare-fun mapRest!18035 () (Array (_ BitVec 32) List!32498))

(declare-fun mapKey!18035 () (_ BitVec 32))

(assert (=> mapNonEmpty!18035 (= mapRest!18031 (store mapRest!18035 mapKey!18035 mapValue!18035))))

(declare-fun b!2794445 () Bool)

(declare-fun tp!888373 () Bool)

(assert (=> b!2794445 (= e!1764524 tp!888373)))

(declare-fun b!2794446 () Bool)

(declare-fun tp!888370 () Bool)

(assert (=> b!2794446 (= e!1764525 tp!888370)))

(assert (= (and mapNonEmpty!18031 condMapEmpty!18035) mapIsEmpty!18035))

(assert (= (and mapNonEmpty!18031 (not condMapEmpty!18035)) mapNonEmpty!18035))

(assert (= b!2794444 b!2794446))

(assert (= (and b!2794444 condSetEmpty!24081) setIsEmpty!24081))

(assert (= (and b!2794444 (not condSetEmpty!24081)) setNonEmpty!24081))

(assert (= setNonEmpty!24081 b!2794442))

(assert (= (and mapNonEmpty!18035 ((_ is Cons!32398) mapValue!18035)) b!2794444))

(assert (= b!2794441 b!2794445))

(assert (= (and b!2794441 condSetEmpty!24082) setIsEmpty!24082))

(assert (= (and b!2794441 (not condSetEmpty!24082)) setNonEmpty!24082))

(assert (= setNonEmpty!24082 b!2794443))

(assert (= (and mapNonEmpty!18031 ((_ is Cons!32398) mapDefault!18035)) b!2794441))

(declare-fun m!3224679 () Bool)

(assert (=> setNonEmpty!24081 m!3224679))

(declare-fun m!3224681 () Bool)

(assert (=> setNonEmpty!24082 m!3224681))

(declare-fun m!3224683 () Bool)

(assert (=> b!2794441 m!3224683))

(declare-fun m!3224685 () Bool)

(assert (=> b!2794444 m!3224685))

(declare-fun m!3224687 () Bool)

(assert (=> mapNonEmpty!18035 m!3224687))

(declare-fun b!2794447 () Bool)

(declare-fun e!1764530 () Bool)

(declare-fun tp!888382 () Bool)

(assert (=> b!2794447 (= e!1764530 tp!888382)))

(declare-fun e!1764529 () Bool)

(assert (=> mapNonEmpty!18031 (= tp!888280 e!1764529)))

(declare-fun setIsEmpty!24083 () Bool)

(declare-fun setRes!24083 () Bool)

(assert (=> setIsEmpty!24083 setRes!24083))

(declare-fun e!1764528 () Bool)

(declare-fun b!2794448 () Bool)

(declare-fun tp!888378 () Bool)

(declare-fun tp!888379 () Bool)

(assert (=> b!2794448 (= e!1764529 (and tp!888378 (inv!44009 (_2!19469 (_1!19470 (h!37818 mapValue!18031)))) e!1764528 tp_is_empty!14179 setRes!24083 tp!888379))))

(declare-fun condSetEmpty!24083 () Bool)

(assert (=> b!2794448 (= condSetEmpty!24083 (= (_2!19470 (h!37818 mapValue!18031)) ((as const (Array Context!4802 Bool)) false)))))

(declare-fun tp!888380 () Bool)

(declare-fun setElem!24083 () Context!4802)

(declare-fun setNonEmpty!24083 () Bool)

(assert (=> setNonEmpty!24083 (= setRes!24083 (and tp!888380 (inv!44009 setElem!24083) e!1764530))))

(declare-fun setRest!24083 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24083 (= (_2!19470 (h!37818 mapValue!18031)) ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24083 true) setRest!24083))))

(declare-fun b!2794449 () Bool)

(declare-fun tp!888381 () Bool)

(assert (=> b!2794449 (= e!1764528 tp!888381)))

(assert (= b!2794448 b!2794449))

(assert (= (and b!2794448 condSetEmpty!24083) setIsEmpty!24083))

(assert (= (and b!2794448 (not condSetEmpty!24083)) setNonEmpty!24083))

(assert (= setNonEmpty!24083 b!2794447))

(assert (= (and mapNonEmpty!18031 ((_ is Cons!32398) mapValue!18031)) b!2794448))

(declare-fun m!3224689 () Bool)

(assert (=> b!2794448 m!3224689))

(declare-fun m!3224691 () Bool)

(assert (=> setNonEmpty!24083 m!3224691))

(declare-fun b!2794450 () Bool)

(declare-fun e!1764533 () Bool)

(declare-fun tp!888387 () Bool)

(assert (=> b!2794450 (= e!1764533 tp!888387)))

(declare-fun e!1764532 () Bool)

(assert (=> b!2794257 (= tp!888288 e!1764532)))

(declare-fun setIsEmpty!24084 () Bool)

(declare-fun setRes!24084 () Bool)

(assert (=> setIsEmpty!24084 setRes!24084))

(declare-fun e!1764531 () Bool)

(declare-fun tp!888383 () Bool)

(declare-fun tp!888384 () Bool)

(declare-fun b!2794451 () Bool)

(assert (=> b!2794451 (= e!1764532 (and tp!888383 (inv!44009 (_2!19469 (_1!19470 (h!37818 mapDefault!18032)))) e!1764531 tp_is_empty!14179 setRes!24084 tp!888384))))

(declare-fun condSetEmpty!24084 () Bool)

(assert (=> b!2794451 (= condSetEmpty!24084 (= (_2!19470 (h!37818 mapDefault!18032)) ((as const (Array Context!4802 Bool)) false)))))

(declare-fun setElem!24084 () Context!4802)

(declare-fun tp!888385 () Bool)

(declare-fun setNonEmpty!24084 () Bool)

(assert (=> setNonEmpty!24084 (= setRes!24084 (and tp!888385 (inv!44009 setElem!24084) e!1764533))))

(declare-fun setRest!24084 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24084 (= (_2!19470 (h!37818 mapDefault!18032)) ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24084 true) setRest!24084))))

(declare-fun b!2794452 () Bool)

(declare-fun tp!888386 () Bool)

(assert (=> b!2794452 (= e!1764531 tp!888386)))

(assert (= b!2794451 b!2794452))

(assert (= (and b!2794451 condSetEmpty!24084) setIsEmpty!24084))

(assert (= (and b!2794451 (not condSetEmpty!24084)) setNonEmpty!24084))

(assert (= setNonEmpty!24084 b!2794450))

(assert (= (and b!2794257 ((_ is Cons!32398) mapDefault!18032)) b!2794451))

(declare-fun m!3224693 () Bool)

(assert (=> b!2794451 m!3224693))

(declare-fun m!3224695 () Bool)

(assert (=> setNonEmpty!24084 m!3224695))

(declare-fun e!1764534 () Bool)

(assert (=> b!2794252 (= tp!888276 e!1764534)))

(declare-fun b!2794453 () Bool)

(declare-fun e!1764535 () Bool)

(declare-fun tp!888390 () Bool)

(assert (=> b!2794453 (= e!1764535 tp!888390)))

(declare-fun setRes!24085 () Bool)

(declare-fun e!1764536 () Bool)

(declare-fun tp!888391 () Bool)

(declare-fun b!2794454 () Bool)

(assert (=> b!2794454 (= e!1764534 (and (inv!44009 (_1!19471 (_1!19472 (h!37819 mapDefault!18031)))) e!1764536 tp_is_empty!14179 setRes!24085 tp!888391))))

(declare-fun condSetEmpty!24085 () Bool)

(assert (=> b!2794454 (= condSetEmpty!24085 (= (_2!19472 (h!37819 mapDefault!18031)) ((as const (Array Context!4802 Bool)) false)))))

(declare-fun tp!888389 () Bool)

(declare-fun setNonEmpty!24085 () Bool)

(declare-fun setElem!24085 () Context!4802)

(assert (=> setNonEmpty!24085 (= setRes!24085 (and tp!888389 (inv!44009 setElem!24085) e!1764535))))

(declare-fun setRest!24085 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24085 (= (_2!19472 (h!37819 mapDefault!18031)) ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24085 true) setRest!24085))))

(declare-fun setIsEmpty!24085 () Bool)

(assert (=> setIsEmpty!24085 setRes!24085))

(declare-fun b!2794455 () Bool)

(declare-fun tp!888388 () Bool)

(assert (=> b!2794455 (= e!1764536 tp!888388)))

(assert (= b!2794454 b!2794455))

(assert (= (and b!2794454 condSetEmpty!24085) setIsEmpty!24085))

(assert (= (and b!2794454 (not condSetEmpty!24085)) setNonEmpty!24085))

(assert (= setNonEmpty!24085 b!2794453))

(assert (= (and b!2794252 ((_ is Cons!32399) mapDefault!18031)) b!2794454))

(declare-fun m!3224697 () Bool)

(assert (=> b!2794454 m!3224697))

(declare-fun m!3224699 () Bool)

(assert (=> setNonEmpty!24085 m!3224699))

(declare-fun b!2794456 () Bool)

(declare-fun e!1764537 () Bool)

(declare-fun tp!888392 () Bool)

(assert (=> b!2794456 (= e!1764537 (and tp_is_empty!14179 tp!888392))))

(assert (=> b!2794232 (= tp!888282 e!1764537)))

(assert (= (and b!2794232 ((_ is Cons!32396) (t!228653 testedP!183))) b!2794456))

(declare-fun setIsEmpty!24090 () Bool)

(declare-fun setRes!24090 () Bool)

(assert (=> setIsEmpty!24090 setRes!24090))

(declare-fun setIsEmpty!24091 () Bool)

(declare-fun setRes!24091 () Bool)

(assert (=> setIsEmpty!24091 setRes!24091))

(declare-fun b!2794471 () Bool)

(declare-fun e!1764555 () Bool)

(declare-fun tp!888418 () Bool)

(assert (=> b!2794471 (= e!1764555 tp!888418)))

(declare-fun tp!888417 () Bool)

(declare-fun e!1764551 () Bool)

(declare-fun b!2794472 () Bool)

(declare-fun e!1764552 () Bool)

(declare-fun mapValue!18038 () List!32499)

(assert (=> b!2794472 (= e!1764552 (and (inv!44009 (_1!19471 (_1!19472 (h!37819 mapValue!18038)))) e!1764551 tp_is_empty!14179 setRes!24091 tp!888417))))

(declare-fun condSetEmpty!24091 () Bool)

(assert (=> b!2794472 (= condSetEmpty!24091 (= (_2!19472 (h!37819 mapValue!18038)) ((as const (Array Context!4802 Bool)) false)))))

(declare-fun mapIsEmpty!18038 () Bool)

(declare-fun mapRes!18038 () Bool)

(assert (=> mapIsEmpty!18038 mapRes!18038))

(declare-fun setElem!24090 () Context!4802)

(declare-fun setNonEmpty!24090 () Bool)

(declare-fun tp!888411 () Bool)

(declare-fun e!1764554 () Bool)

(assert (=> setNonEmpty!24090 (= setRes!24090 (and tp!888411 (inv!44009 setElem!24090) e!1764554))))

(declare-fun mapDefault!18038 () List!32499)

(declare-fun setRest!24090 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24090 (= (_2!19472 (h!37819 mapDefault!18038)) ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24090 true) setRest!24090))))

(declare-fun mapNonEmpty!18038 () Bool)

(declare-fun tp!888415 () Bool)

(assert (=> mapNonEmpty!18038 (= mapRes!18038 (and tp!888415 e!1764552))))

(declare-fun mapRest!18038 () (Array (_ BitVec 32) List!32499))

(declare-fun mapKey!18038 () (_ BitVec 32))

(assert (=> mapNonEmpty!18038 (= mapRest!18032 (store mapRest!18038 mapKey!18038 mapValue!18038))))

(declare-fun condMapEmpty!18038 () Bool)

(assert (=> mapNonEmpty!18032 (= condMapEmpty!18038 (= mapRest!18032 ((as const (Array (_ BitVec 32) List!32499)) mapDefault!18038)))))

(declare-fun e!1764553 () Bool)

(assert (=> mapNonEmpty!18032 (= tp!888290 (and e!1764553 mapRes!18038))))

(declare-fun b!2794473 () Bool)

(declare-fun tp!888414 () Bool)

(assert (=> b!2794473 (= e!1764551 tp!888414)))

(declare-fun b!2794474 () Bool)

(declare-fun tp!888416 () Bool)

(assert (=> b!2794474 (= e!1764554 tp!888416)))

(declare-fun b!2794475 () Bool)

(declare-fun e!1764550 () Bool)

(declare-fun tp!888412 () Bool)

(assert (=> b!2794475 (= e!1764550 tp!888412)))

(declare-fun tp!888419 () Bool)

(declare-fun setElem!24091 () Context!4802)

(declare-fun setNonEmpty!24091 () Bool)

(assert (=> setNonEmpty!24091 (= setRes!24091 (and tp!888419 (inv!44009 setElem!24091) e!1764555))))

(declare-fun setRest!24091 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24091 (= (_2!19472 (h!37819 mapValue!18038)) ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24091 true) setRest!24091))))

(declare-fun b!2794476 () Bool)

(declare-fun tp!888413 () Bool)

(assert (=> b!2794476 (= e!1764553 (and (inv!44009 (_1!19471 (_1!19472 (h!37819 mapDefault!18038)))) e!1764550 tp_is_empty!14179 setRes!24090 tp!888413))))

(declare-fun condSetEmpty!24090 () Bool)

(assert (=> b!2794476 (= condSetEmpty!24090 (= (_2!19472 (h!37819 mapDefault!18038)) ((as const (Array Context!4802 Bool)) false)))))

(assert (= (and mapNonEmpty!18032 condMapEmpty!18038) mapIsEmpty!18038))

(assert (= (and mapNonEmpty!18032 (not condMapEmpty!18038)) mapNonEmpty!18038))

(assert (= b!2794472 b!2794473))

(assert (= (and b!2794472 condSetEmpty!24091) setIsEmpty!24091))

(assert (= (and b!2794472 (not condSetEmpty!24091)) setNonEmpty!24091))

(assert (= setNonEmpty!24091 b!2794471))

(assert (= (and mapNonEmpty!18038 ((_ is Cons!32399) mapValue!18038)) b!2794472))

(assert (= b!2794476 b!2794475))

(assert (= (and b!2794476 condSetEmpty!24090) setIsEmpty!24090))

(assert (= (and b!2794476 (not condSetEmpty!24090)) setNonEmpty!24090))

(assert (= setNonEmpty!24090 b!2794474))

(assert (= (and mapNonEmpty!18032 ((_ is Cons!32399) mapDefault!18038)) b!2794476))

(declare-fun m!3224701 () Bool)

(assert (=> b!2794472 m!3224701))

(declare-fun m!3224703 () Bool)

(assert (=> mapNonEmpty!18038 m!3224703))

(declare-fun m!3224705 () Bool)

(assert (=> setNonEmpty!24091 m!3224705))

(declare-fun m!3224707 () Bool)

(assert (=> setNonEmpty!24090 m!3224707))

(declare-fun m!3224709 () Bool)

(assert (=> b!2794476 m!3224709))

(declare-fun e!1764556 () Bool)

(assert (=> mapNonEmpty!18032 (= tp!888284 e!1764556)))

(declare-fun b!2794477 () Bool)

(declare-fun e!1764557 () Bool)

(declare-fun tp!888422 () Bool)

(assert (=> b!2794477 (= e!1764557 tp!888422)))

(declare-fun e!1764558 () Bool)

(declare-fun tp!888423 () Bool)

(declare-fun setRes!24092 () Bool)

(declare-fun b!2794478 () Bool)

(assert (=> b!2794478 (= e!1764556 (and (inv!44009 (_1!19471 (_1!19472 (h!37819 mapValue!18032)))) e!1764558 tp_is_empty!14179 setRes!24092 tp!888423))))

(declare-fun condSetEmpty!24092 () Bool)

(assert (=> b!2794478 (= condSetEmpty!24092 (= (_2!19472 (h!37819 mapValue!18032)) ((as const (Array Context!4802 Bool)) false)))))

(declare-fun setNonEmpty!24092 () Bool)

(declare-fun setElem!24092 () Context!4802)

(declare-fun tp!888421 () Bool)

(assert (=> setNonEmpty!24092 (= setRes!24092 (and tp!888421 (inv!44009 setElem!24092) e!1764557))))

(declare-fun setRest!24092 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24092 (= (_2!19472 (h!37819 mapValue!18032)) ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24092 true) setRest!24092))))

(declare-fun setIsEmpty!24092 () Bool)

(assert (=> setIsEmpty!24092 setRes!24092))

(declare-fun b!2794479 () Bool)

(declare-fun tp!888420 () Bool)

(assert (=> b!2794479 (= e!1764558 tp!888420)))

(assert (= b!2794478 b!2794479))

(assert (= (and b!2794478 condSetEmpty!24092) setIsEmpty!24092))

(assert (= (and b!2794478 (not condSetEmpty!24092)) setNonEmpty!24092))

(assert (= setNonEmpty!24092 b!2794477))

(assert (= (and mapNonEmpty!18032 ((_ is Cons!32399) mapValue!18032)) b!2794478))

(declare-fun m!3224711 () Bool)

(assert (=> b!2794478 m!3224711))

(declare-fun m!3224713 () Bool)

(assert (=> setNonEmpty!24092 m!3224713))

(declare-fun condSetEmpty!24095 () Bool)

(assert (=> setNonEmpty!24068 (= condSetEmpty!24095 (= setRest!24068 ((as const (Array Context!4802 Bool)) false)))))

(declare-fun setRes!24095 () Bool)

(assert (=> setNonEmpty!24068 (= tp!888278 setRes!24095)))

(declare-fun setIsEmpty!24095 () Bool)

(assert (=> setIsEmpty!24095 setRes!24095))

(declare-fun e!1764561 () Bool)

(declare-fun setNonEmpty!24095 () Bool)

(declare-fun setElem!24095 () Context!4802)

(declare-fun tp!888428 () Bool)

(assert (=> setNonEmpty!24095 (= setRes!24095 (and tp!888428 (inv!44009 setElem!24095) e!1764561))))

(declare-fun setRest!24095 () (InoxSet Context!4802))

(assert (=> setNonEmpty!24095 (= setRest!24068 ((_ map or) (store ((as const (Array Context!4802 Bool)) false) setElem!24095 true) setRest!24095))))

(declare-fun b!2794484 () Bool)

(declare-fun tp!888429 () Bool)

(assert (=> b!2794484 (= e!1764561 tp!888429)))

(assert (= (and setNonEmpty!24068 condSetEmpty!24095) setIsEmpty!24095))

(assert (= (and setNonEmpty!24068 (not condSetEmpty!24095)) setNonEmpty!24095))

(assert (= setNonEmpty!24095 b!2794484))

(declare-fun m!3224715 () Bool)

(assert (=> setNonEmpty!24095 m!3224715))

(check-sat (not b!2794331) (not b!2794471) (not b!2794453) (not b!2794372) (not b!2794456) (not d!812526) (not bm!182758) b_and!203837 (not b!2794338) (not b!2794419) (not d!812536) (not b!2794386) (not d!812532) (not bm!182762) (not setNonEmpty!24076) (not b!2794421) (not b!2794285) (not setNonEmpty!24071) (not b!2794238) (not b!2794325) (not d!812498) (not b!2794449) (not d!812494) (not mapNonEmpty!18038) (not b!2794401) (not b!2794326) b_and!203831 (not d!812530) (not b!2794309) (not b!2794472) (not b!2794478) (not setNonEmpty!24082) (not d!812486) (not d!812518) (not b!2794402) (not b!2794374) (not b!2794269) (not b!2794441) (not b!2794479) (not b!2794484) (not b!2794448) (not b!2794447) (not b!2794388) (not b!2794474) (not b!2794357) (not b!2794377) (not b!2794283) (not b!2794310) (not setNonEmpty!24095) b_and!203835 (not setNonEmpty!24072) (not b!2794320) (not d!812520) (not b!2794446) (not b_next!79801) (not d!812496) (not b_next!79803) (not d!812488) (not setNonEmpty!24092) (not d!812542) (not b!2794335) (not d!812528) (not b!2794329) (not setNonEmpty!24090) (not setNonEmpty!24085) (not d!812500) (not b!2794475) (not d!812492) (not b!2794450) (not b!2794359) (not setNonEmpty!24091) (not d!812512) (not b!2794444) (not d!812510) (not b!2794373) (not b!2794390) (not b!2794400) (not b!2794323) (not setNonEmpty!24075) (not b!2794404) (not b!2794420) (not b!2794299) (not b!2794387) (not d!812480) (not setNonEmpty!24081) b_and!203833 (not b!2794391) (not b!2794452) (not b!2794334) (not d!812534) (not d!812506) (not b!2794405) (not d!812478) (not b!2794298) (not b!2794426) (not bm!182759) (not b!2794451) (not b!2794473) (not setNonEmpty!24084) (not b!2794330) (not b!2794264) (not b!2794443) (not b!2794275) (not b!2794403) (not b!2794389) (not b_next!79799) (not b!2794445) (not b!2794410) (not b!2794287) (not mapNonEmpty!18035) (not b!2794477) (not setNonEmpty!24083) (not d!812476) (not d!812502) (not b_next!79797) (not b!2794442) (not b!2794476) (not b!2794454) (not b!2794316) tp_is_empty!14179 (not d!812544) (not b!2794333) (not b!2794297) (not b!2794455) (not b!2794317) (not b!2794270))
(check-sat b_and!203837 b_and!203831 b_and!203835 (not b_next!79801) (not b_next!79803) b_and!203833 (not b_next!79799) (not b_next!79797))
