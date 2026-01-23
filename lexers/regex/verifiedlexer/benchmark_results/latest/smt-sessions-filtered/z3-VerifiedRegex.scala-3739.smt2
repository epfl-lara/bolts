; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209390 () Bool)

(assert start!209390)

(declare-fun b!2158297 () Bool)

(declare-fun b_free!63773 () Bool)

(declare-fun b_next!64477 () Bool)

(assert (=> b!2158297 (= b_free!63773 (not b_next!64477))))

(declare-fun tp!672646 () Bool)

(declare-fun b_and!173389 () Bool)

(assert (=> b!2158297 (= tp!672646 b_and!173389)))

(declare-fun b!2158308 () Bool)

(declare-fun b_free!63775 () Bool)

(declare-fun b_next!64479 () Bool)

(assert (=> b!2158308 (= b_free!63775 (not b_next!64479))))

(declare-fun tp!672654 () Bool)

(declare-fun b_and!173391 () Bool)

(assert (=> b!2158308 (= tp!672654 b_and!173391)))

(declare-fun b!2158303 () Bool)

(assert (=> b!2158303 true))

(declare-fun b!2158295 () Bool)

(declare-fun res!930113 () Bool)

(declare-fun e!1380829 () Bool)

(assert (=> b!2158295 (=> (not res!930113) (not e!1380829))))

(declare-fun e!1380823 () Bool)

(assert (=> b!2158295 (= res!930113 e!1380823)))

(declare-fun res!930116 () Bool)

(assert (=> b!2158295 (=> res!930116 e!1380823)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12036 0))(
  ( (C!12037 (val!7004 Int)) )
))
(declare-datatypes ((Regex!5945 0))(
  ( (ElementMatch!5945 (c!341709 C!12036)) (Concat!10247 (regOne!12402 Regex!5945) (regTwo!12402 Regex!5945)) (EmptyExpr!5945) (Star!5945 (reg!6274 Regex!5945)) (EmptyLang!5945) (Union!5945 (regOne!12403 Regex!5945) (regTwo!12403 Regex!5945)) )
))
(declare-datatypes ((List!25043 0))(
  ( (Nil!24959) (Cons!24959 (h!30360 Regex!5945) (t!197591 List!25043)) )
))
(declare-datatypes ((Context!3030 0))(
  ( (Context!3031 (exprs!2015 List!25043)) )
))
(declare-fun z!540 () (InoxSet Context!3030))

(declare-fun nullableZipper!234 ((InoxSet Context!3030)) Bool)

(assert (=> b!2158295 (= res!930116 (not (nullableZipper!234 z!540)))))

(declare-fun b!2158296 () Bool)

(declare-fun e!1380817 () Bool)

(declare-datatypes ((List!25044 0))(
  ( (Nil!24960) (Cons!24960 (h!30361 C!12036) (t!197592 List!25044)) )
))
(declare-datatypes ((tuple3!3774 0))(
  ( (tuple3!3775 (_1!14687 (InoxSet Context!3030)) (_2!14687 Int) (_3!2357 Int)) )
))
(declare-datatypes ((array!10065 0))(
  ( (array!10066 (arr!4488 (Array (_ BitVec 32) (_ BitVec 64))) (size!19506 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!24660 0))(
  ( (tuple2!24661 (_1!14688 tuple3!3774) (_2!14688 Int)) )
))
(declare-datatypes ((List!25045 0))(
  ( (Nil!24961) (Cons!24961 (h!30362 tuple2!24660) (t!197593 List!25045)) )
))
(declare-datatypes ((array!10067 0))(
  ( (array!10068 (arr!4489 (Array (_ BitVec 32) List!25045)) (size!19507 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5892 0))(
  ( (LongMapFixedSize!5893 (defaultEntry!3311 Int) (mask!7234 (_ BitVec 32)) (extraKeys!3194 (_ BitVec 32)) (zeroValue!3204 List!25045) (minValue!3204 List!25045) (_size!5943 (_ BitVec 32)) (_keys!3243 array!10065) (_values!3226 array!10067) (_vacant!3007 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11609 0))(
  ( (Cell!11610 (v!29359 LongMapFixedSize!5892)) )
))
(declare-datatypes ((MutLongMap!2946 0))(
  ( (LongMap!2946 (underlying!6087 Cell!11609)) (MutLongMapExt!2945 (__x!17014 Int)) )
))
(declare-datatypes ((Cell!11611 0))(
  ( (Cell!11612 (v!29360 MutLongMap!2946)) )
))
(declare-datatypes ((Hashable!2860 0))(
  ( (HashableExt!2859 (__x!17015 Int)) )
))
(declare-datatypes ((MutableMap!2860 0))(
  ( (MutableMapExt!2859 (__x!17016 Int)) (HashMap!2860 (underlying!6088 Cell!11611) (hashF!4783 Hashable!2860) (_size!5944 (_ BitVec 32)) (defaultValue!3022 Int)) )
))
(declare-datatypes ((IArray!16167 0))(
  ( (IArray!16168 (innerList!8141 List!25044)) )
))
(declare-datatypes ((Conc!8081 0))(
  ( (Node!8081 (left!19216 Conc!8081) (right!19546 Conc!8081) (csize!16392 Int) (cheight!8292 Int)) (Leaf!11821 (xs!11023 IArray!16167) (csize!16393 Int)) (Empty!8081) )
))
(declare-datatypes ((BalanceConc!15924 0))(
  ( (BalanceConc!15925 (c!341710 Conc!8081)) )
))
(declare-datatypes ((CacheFurthestNullable!1078 0))(
  ( (CacheFurthestNullable!1079 (cache!3241 MutableMap!2860) (totalInput!3395 BalanceConc!15924)) )
))
(declare-fun thiss!29220 () CacheFurthestNullable!1078)

(declare-fun tp!672652 () Bool)

(declare-fun inv!33026 (Conc!8081) Bool)

(assert (=> b!2158296 (= e!1380817 (and (inv!33026 (c!341710 (totalInput!3395 thiss!29220))) tp!672652))))

(declare-fun setIsEmpty!17848 () Bool)

(declare-fun setRes!17848 () Bool)

(assert (=> setIsEmpty!17848 setRes!17848))

(declare-fun e!1380825 () Bool)

(declare-fun e!1380820 () Bool)

(assert (=> b!2158297 (= e!1380825 (and e!1380820 tp!672646))))

(declare-fun b!2158298 () Bool)

(declare-fun res!930110 () Bool)

(declare-fun e!1380821 () Bool)

(assert (=> b!2158298 (=> (not res!930110) (not e!1380821))))

(declare-fun from!970 () Int)

(assert (=> b!2158298 (= res!930110 (>= from!970 0))))

(declare-fun b!2158299 () Bool)

(declare-fun res!930112 () Bool)

(assert (=> b!2158299 (=> (not res!930112) (not e!1380821))))

(declare-fun validCacheMapFurthestNullable!183 (MutableMap!2860 BalanceConc!15924) Bool)

(assert (=> b!2158299 (= res!930112 (validCacheMapFurthestNullable!183 (cache!3241 thiss!29220) (totalInput!3395 thiss!29220)))))

(declare-fun mapNonEmpty!13907 () Bool)

(declare-fun mapRes!13907 () Bool)

(declare-fun tp!672647 () Bool)

(declare-fun tp!672651 () Bool)

(assert (=> mapNonEmpty!13907 (= mapRes!13907 (and tp!672647 tp!672651))))

(declare-fun mapKey!13907 () (_ BitVec 32))

(declare-fun mapRest!13907 () (Array (_ BitVec 32) List!25045))

(declare-fun mapValue!13907 () List!25045)

(assert (=> mapNonEmpty!13907 (= (arr!4489 (_values!3226 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))) (store mapRest!13907 mapKey!13907 mapValue!13907))))

(declare-fun b!2158300 () Bool)

(declare-fun e!1380822 () Bool)

(declare-fun tp!672649 () Bool)

(assert (=> b!2158300 (= e!1380822 tp!672649)))

(declare-fun mapIsEmpty!13907 () Bool)

(assert (=> mapIsEmpty!13907 mapRes!13907))

(declare-fun b!2158301 () Bool)

(declare-fun e!1380824 () Bool)

(declare-fun e!1380818 () Bool)

(assert (=> b!2158301 (= e!1380824 e!1380818)))

(declare-fun b!2158302 () Bool)

(assert (=> b!2158302 (= e!1380821 e!1380829)))

(declare-fun res!930114 () Bool)

(assert (=> b!2158302 (=> (not res!930114) (not e!1380829))))

(declare-fun lt!802193 () Int)

(declare-fun lastNullablePos!109 () Int)

(assert (=> b!2158302 (= res!930114 (and (<= from!970 lt!802193) (>= lastNullablePos!109 (- 1)) (< lastNullablePos!109 from!970)))))

(declare-fun size!19508 (BalanceConc!15924) Int)

(assert (=> b!2158302 (= lt!802193 (size!19508 (totalInput!3395 thiss!29220)))))

(declare-fun e!1380827 () Bool)

(declare-fun b!2158304 () Bool)

(declare-fun inv!33027 (BalanceConc!15924) Bool)

(assert (=> b!2158304 (= e!1380827 (and e!1380825 (inv!33027 (totalInput!3395 thiss!29220)) e!1380817))))

(declare-fun setElem!17848 () Context!3030)

(declare-fun setNonEmpty!17848 () Bool)

(declare-fun tp!672655 () Bool)

(declare-fun inv!33028 (Context!3030) Bool)

(assert (=> setNonEmpty!17848 (= setRes!17848 (and tp!672655 (inv!33028 setElem!17848) e!1380822))))

(declare-fun setRest!17848 () (InoxSet Context!3030))

(assert (=> setNonEmpty!17848 (= z!540 ((_ map or) (store ((as const (Array Context!3030 Bool)) false) setElem!17848 true) setRest!17848))))

(declare-fun b!2158305 () Bool)

(declare-fun lt!802194 () MutLongMap!2946)

(get-info :version)

(assert (=> b!2158305 (= e!1380820 (and e!1380824 ((_ is LongMap!2946) lt!802194)))))

(assert (=> b!2158305 (= lt!802194 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))

(declare-fun b!2158306 () Bool)

(declare-fun e!1380830 () Bool)

(declare-fun tp!672648 () Bool)

(assert (=> b!2158306 (= e!1380830 (and tp!672648 mapRes!13907))))

(declare-fun condMapEmpty!13907 () Bool)

(declare-fun mapDefault!13907 () List!25045)

(assert (=> b!2158306 (= condMapEmpty!13907 (= (arr!4489 (_values!3226 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))) ((as const (Array (_ BitVec 32) List!25045)) mapDefault!13907)))))

(declare-fun b!2158307 () Bool)

(declare-fun res!930115 () Bool)

(assert (=> b!2158307 (=> (not res!930115) (not e!1380829))))

(declare-fun res!14508 () Int)

(declare-fun furthestNullablePosition!144 ((InoxSet Context!3030) Int BalanceConc!15924 Int Int) Int)

(assert (=> b!2158307 (= res!930115 (= res!14508 (furthestNullablePosition!144 z!540 from!970 (totalInput!3395 thiss!29220) lt!802193 lastNullablePos!109)))))

(declare-fun tp!672653 () Bool)

(declare-fun e!1380826 () Bool)

(declare-fun tp!672650 () Bool)

(declare-fun array_inv!3216 (array!10065) Bool)

(declare-fun array_inv!3217 (array!10067) Bool)

(assert (=> b!2158308 (= e!1380826 (and tp!672654 tp!672653 tp!672650 (array_inv!3216 (_keys!3243 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))) (array_inv!3217 (_values!3226 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))) e!1380830))))

(declare-fun b!2158309 () Bool)

(declare-fun e!1380828 () Bool)

(declare-fun localTotalInput!17 () BalanceConc!15924)

(declare-fun tp!672656 () Bool)

(assert (=> b!2158309 (= e!1380828 (and (inv!33026 (c!341710 localTotalInput!17)) tp!672656))))

(declare-fun b!2158310 () Bool)

(assert (=> b!2158310 (= e!1380823 (= lastNullablePos!109 (- from!970 1)))))

(declare-fun b!2158311 () Bool)

(assert (=> b!2158311 (= e!1380818 e!1380826)))

(declare-datatypes ((tuple2!24662 0))(
  ( (tuple2!24663 (_1!14689 Bool) (_2!14689 MutableMap!2860)) )
))
(declare-fun lt!802196 () tuple2!24662)

(assert (=> b!2158303 (= e!1380829 (not ((_ is HashMap!2860) (_2!14689 lt!802196))))))

(declare-fun lambda!81487 () Int)

(declare-fun forall!5132 (List!25045 Int) Bool)

(declare-datatypes ((ListMap!725 0))(
  ( (ListMap!726 (toList!1128 List!25045)) )
))
(declare-fun map!5027 (MutableMap!2860) ListMap!725)

(assert (=> b!2158303 (forall!5132 (toList!1128 (map!5027 (_2!14689 lt!802196))) lambda!81487)))

(declare-fun lt!802192 () tuple3!3774)

(declare-fun update!105 (MutableMap!2860 tuple3!3774 Int) tuple2!24662)

(assert (=> b!2158303 (= lt!802196 (update!105 (cache!3241 thiss!29220) lt!802192 res!14508))))

(declare-datatypes ((Unit!38029 0))(
  ( (Unit!38030) )
))
(declare-fun lt!802195 () Unit!38029)

(declare-fun lemmaUpdatePreservesForallPairs!7 (MutableMap!2860 tuple3!3774 Int Int) Unit!38029)

(assert (=> b!2158303 (= lt!802195 (lemmaUpdatePreservesForallPairs!7 (cache!3241 thiss!29220) lt!802192 res!14508 lambda!81487))))

(assert (=> b!2158303 (= lt!802192 (tuple3!3775 z!540 from!970 lastNullablePos!109))))

(declare-fun res!930111 () Bool)

(assert (=> start!209390 (=> (not res!930111) (not e!1380821))))

(assert (=> start!209390 (= res!930111 (= localTotalInput!17 (totalInput!3395 thiss!29220)))))

(assert (=> start!209390 e!1380821))

(assert (=> start!209390 (and (inv!33027 localTotalInput!17) e!1380828)))

(assert (=> start!209390 true))

(declare-fun condSetEmpty!17848 () Bool)

(assert (=> start!209390 (= condSetEmpty!17848 (= z!540 ((as const (Array Context!3030 Bool)) false)))))

(assert (=> start!209390 setRes!17848))

(declare-fun inv!33029 (CacheFurthestNullable!1078) Bool)

(assert (=> start!209390 (and (inv!33029 thiss!29220) e!1380827)))

(assert (= (and start!209390 res!930111) b!2158299))

(assert (= (and b!2158299 res!930112) b!2158298))

(assert (= (and b!2158298 res!930110) b!2158302))

(assert (= (and b!2158302 res!930114) b!2158295))

(assert (= (and b!2158295 (not res!930116)) b!2158310))

(assert (= (and b!2158295 res!930113) b!2158307))

(assert (= (and b!2158307 res!930115) b!2158303))

(assert (= start!209390 b!2158309))

(assert (= (and start!209390 condSetEmpty!17848) setIsEmpty!17848))

(assert (= (and start!209390 (not condSetEmpty!17848)) setNonEmpty!17848))

(assert (= setNonEmpty!17848 b!2158300))

(assert (= (and b!2158306 condMapEmpty!13907) mapIsEmpty!13907))

(assert (= (and b!2158306 (not condMapEmpty!13907)) mapNonEmpty!13907))

(assert (= b!2158308 b!2158306))

(assert (= b!2158311 b!2158308))

(assert (= b!2158301 b!2158311))

(assert (= (and b!2158305 ((_ is LongMap!2946) (v!29360 (underlying!6088 (cache!3241 thiss!29220))))) b!2158301))

(assert (= b!2158297 b!2158305))

(assert (= (and b!2158304 ((_ is HashMap!2860) (cache!3241 thiss!29220))) b!2158297))

(assert (= b!2158304 b!2158296))

(assert (= start!209390 b!2158304))

(declare-fun m!2598371 () Bool)

(assert (=> b!2158304 m!2598371))

(declare-fun m!2598373 () Bool)

(assert (=> b!2158295 m!2598373))

(declare-fun m!2598375 () Bool)

(assert (=> b!2158308 m!2598375))

(declare-fun m!2598377 () Bool)

(assert (=> b!2158308 m!2598377))

(declare-fun m!2598379 () Bool)

(assert (=> b!2158302 m!2598379))

(declare-fun m!2598381 () Bool)

(assert (=> b!2158303 m!2598381))

(declare-fun m!2598383 () Bool)

(assert (=> b!2158303 m!2598383))

(declare-fun m!2598385 () Bool)

(assert (=> b!2158303 m!2598385))

(declare-fun m!2598387 () Bool)

(assert (=> b!2158303 m!2598387))

(declare-fun m!2598389 () Bool)

(assert (=> b!2158299 m!2598389))

(declare-fun m!2598391 () Bool)

(assert (=> start!209390 m!2598391))

(declare-fun m!2598393 () Bool)

(assert (=> start!209390 m!2598393))

(declare-fun m!2598395 () Bool)

(assert (=> b!2158309 m!2598395))

(declare-fun m!2598397 () Bool)

(assert (=> mapNonEmpty!13907 m!2598397))

(declare-fun m!2598399 () Bool)

(assert (=> b!2158307 m!2598399))

(declare-fun m!2598401 () Bool)

(assert (=> setNonEmpty!17848 m!2598401))

(declare-fun m!2598403 () Bool)

(assert (=> b!2158296 m!2598403))

(check-sat (not b!2158300) (not b!2158308) (not b!2158303) (not start!209390) (not b!2158309) (not setNonEmpty!17848) (not b!2158302) (not b!2158295) (not b_next!64477) (not mapNonEmpty!13907) (not b!2158296) (not b_next!64479) b_and!173391 (not b!2158306) b_and!173389 (not b!2158299) (not b!2158304) (not b!2158307))
(check-sat b_and!173391 b_and!173389 (not b_next!64479) (not b_next!64477))
(get-model)

(declare-fun d!646652 () Bool)

(assert (=> d!646652 (= (array_inv!3216 (_keys!3243 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))) (bvsge (size!19506 (_keys!3243 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2158308 d!646652))

(declare-fun d!646654 () Bool)

(assert (=> d!646654 (= (array_inv!3217 (_values!3226 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))) (bvsge (size!19507 (_values!3226 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2158308 d!646654))

(declare-fun d!646656 () Bool)

(declare-fun c!341713 () Bool)

(assert (=> d!646656 (= c!341713 ((_ is Node!8081) (c!341710 localTotalInput!17)))))

(declare-fun e!1380835 () Bool)

(assert (=> d!646656 (= (inv!33026 (c!341710 localTotalInput!17)) e!1380835)))

(declare-fun b!2158320 () Bool)

(declare-fun inv!33030 (Conc!8081) Bool)

(assert (=> b!2158320 (= e!1380835 (inv!33030 (c!341710 localTotalInput!17)))))

(declare-fun b!2158321 () Bool)

(declare-fun e!1380836 () Bool)

(assert (=> b!2158321 (= e!1380835 e!1380836)))

(declare-fun res!930119 () Bool)

(assert (=> b!2158321 (= res!930119 (not ((_ is Leaf!11821) (c!341710 localTotalInput!17))))))

(assert (=> b!2158321 (=> res!930119 e!1380836)))

(declare-fun b!2158322 () Bool)

(declare-fun inv!33031 (Conc!8081) Bool)

(assert (=> b!2158322 (= e!1380836 (inv!33031 (c!341710 localTotalInput!17)))))

(assert (= (and d!646656 c!341713) b!2158320))

(assert (= (and d!646656 (not c!341713)) b!2158321))

(assert (= (and b!2158321 (not res!930119)) b!2158322))

(declare-fun m!2598405 () Bool)

(assert (=> b!2158320 m!2598405))

(declare-fun m!2598407 () Bool)

(assert (=> b!2158322 m!2598407))

(assert (=> b!2158309 d!646656))

(declare-fun d!646658 () Bool)

(declare-fun isBalanced!2509 (Conc!8081) Bool)

(assert (=> d!646658 (= (inv!33027 localTotalInput!17) (isBalanced!2509 (c!341710 localTotalInput!17)))))

(declare-fun bs!445957 () Bool)

(assert (= bs!445957 d!646658))

(declare-fun m!2598409 () Bool)

(assert (=> bs!445957 m!2598409))

(assert (=> start!209390 d!646658))

(declare-fun d!646660 () Bool)

(declare-fun res!930122 () Bool)

(declare-fun e!1380839 () Bool)

(assert (=> d!646660 (=> (not res!930122) (not e!1380839))))

(assert (=> d!646660 (= res!930122 ((_ is HashMap!2860) (cache!3241 thiss!29220)))))

(assert (=> d!646660 (= (inv!33029 thiss!29220) e!1380839)))

(declare-fun b!2158325 () Bool)

(assert (=> b!2158325 (= e!1380839 (validCacheMapFurthestNullable!183 (cache!3241 thiss!29220) (totalInput!3395 thiss!29220)))))

(assert (= (and d!646660 res!930122) b!2158325))

(assert (=> b!2158325 m!2598389))

(assert (=> start!209390 d!646660))

(declare-fun d!646662 () Bool)

(declare-fun lt!802199 () Int)

(declare-fun size!19509 (List!25044) Int)

(declare-fun list!9571 (BalanceConc!15924) List!25044)

(assert (=> d!646662 (= lt!802199 (size!19509 (list!9571 (totalInput!3395 thiss!29220))))))

(declare-fun size!19510 (Conc!8081) Int)

(assert (=> d!646662 (= lt!802199 (size!19510 (c!341710 (totalInput!3395 thiss!29220))))))

(assert (=> d!646662 (= (size!19508 (totalInput!3395 thiss!29220)) lt!802199)))

(declare-fun bs!445958 () Bool)

(assert (= bs!445958 d!646662))

(declare-fun m!2598411 () Bool)

(assert (=> bs!445958 m!2598411))

(assert (=> bs!445958 m!2598411))

(declare-fun m!2598413 () Bool)

(assert (=> bs!445958 m!2598413))

(declare-fun m!2598415 () Bool)

(assert (=> bs!445958 m!2598415))

(assert (=> b!2158302 d!646662))

(declare-fun d!646664 () Bool)

(declare-fun res!930127 () Bool)

(declare-fun e!1380844 () Bool)

(assert (=> d!646664 (=> res!930127 e!1380844)))

(assert (=> d!646664 (= res!930127 ((_ is Nil!24961) (toList!1128 (map!5027 (_2!14689 lt!802196)))))))

(assert (=> d!646664 (= (forall!5132 (toList!1128 (map!5027 (_2!14689 lt!802196))) lambda!81487) e!1380844)))

(declare-fun b!2158330 () Bool)

(declare-fun e!1380845 () Bool)

(assert (=> b!2158330 (= e!1380844 e!1380845)))

(declare-fun res!930128 () Bool)

(assert (=> b!2158330 (=> (not res!930128) (not e!1380845))))

(declare-fun dynLambda!11422 (Int tuple2!24660) Bool)

(assert (=> b!2158330 (= res!930128 (dynLambda!11422 lambda!81487 (h!30362 (toList!1128 (map!5027 (_2!14689 lt!802196))))))))

(declare-fun b!2158331 () Bool)

(assert (=> b!2158331 (= e!1380845 (forall!5132 (t!197593 (toList!1128 (map!5027 (_2!14689 lt!802196)))) lambda!81487))))

(assert (= (and d!646664 (not res!930127)) b!2158330))

(assert (= (and b!2158330 res!930128) b!2158331))

(declare-fun b_lambda!71029 () Bool)

(assert (=> (not b_lambda!71029) (not b!2158330)))

(declare-fun m!2598417 () Bool)

(assert (=> b!2158330 m!2598417))

(declare-fun m!2598419 () Bool)

(assert (=> b!2158331 m!2598419))

(assert (=> b!2158303 d!646664))

(declare-fun d!646666 () Bool)

(declare-fun lt!802202 () ListMap!725)

(declare-fun invariantList!333 (List!25045) Bool)

(assert (=> d!646666 (invariantList!333 (toList!1128 lt!802202))))

(declare-datatypes ((tuple2!24664 0))(
  ( (tuple2!24665 (_1!14690 (_ BitVec 64)) (_2!14690 List!25045)) )
))
(declare-datatypes ((List!25046 0))(
  ( (Nil!24962) (Cons!24962 (h!30363 tuple2!24664) (t!197594 List!25046)) )
))
(declare-fun extractMap!85 (List!25046) ListMap!725)

(declare-datatypes ((ListLongMap!269 0))(
  ( (ListLongMap!270 (toList!1129 List!25046)) )
))
(declare-fun map!5028 (MutLongMap!2946) ListLongMap!269)

(assert (=> d!646666 (= lt!802202 (extractMap!85 (toList!1129 (map!5028 (v!29360 (underlying!6088 (_2!14689 lt!802196)))))))))

(declare-fun valid!2271 (MutableMap!2860) Bool)

(assert (=> d!646666 (valid!2271 (_2!14689 lt!802196))))

(assert (=> d!646666 (= (map!5027 (_2!14689 lt!802196)) lt!802202)))

(declare-fun bs!445959 () Bool)

(assert (= bs!445959 d!646666))

(declare-fun m!2598421 () Bool)

(assert (=> bs!445959 m!2598421))

(declare-fun m!2598423 () Bool)

(assert (=> bs!445959 m!2598423))

(declare-fun m!2598425 () Bool)

(assert (=> bs!445959 m!2598425))

(declare-fun m!2598427 () Bool)

(assert (=> bs!445959 m!2598427))

(assert (=> b!2158303 d!646666))

(declare-fun bs!445960 () Bool)

(declare-fun b!2158376 () Bool)

(declare-fun b!2158371 () Bool)

(assert (= bs!445960 (and b!2158376 b!2158371)))

(declare-fun lambda!81497 () Int)

(declare-fun lambda!81496 () Int)

(assert (=> bs!445960 (= lambda!81497 lambda!81496)))

(declare-fun b!2158370 () Bool)

(declare-fun e!1380868 () Bool)

(declare-fun e!1380878 () Bool)

(assert (=> b!2158370 (= e!1380868 e!1380878)))

(declare-fun res!930143 () Bool)

(declare-fun call!129362 () ListMap!725)

(declare-fun contains!4256 (ListMap!725 tuple3!3774) Bool)

(assert (=> b!2158370 (= res!930143 (contains!4256 call!129362 lt!802192))))

(assert (=> b!2158370 (=> (not res!930143) (not e!1380878))))

(declare-fun lt!802338 () ListMap!725)

(declare-fun lt!802365 () ListMap!725)

(declare-fun c!341733 () Bool)

(declare-fun lt!802315 () ListMap!725)

(declare-fun bm!129336 () Bool)

(declare-fun call!129366 () Unit!38029)

(declare-fun lt!802321 () ListMap!725)

(declare-fun lemmaEquivalentThenSameContains!5 (ListMap!725 ListMap!725 tuple3!3774) Unit!38029)

(assert (=> bm!129336 (= call!129366 (lemmaEquivalentThenSameContains!5 (ite c!341733 lt!802338 lt!802315) (ite c!341733 lt!802365 lt!802321) lt!802192))))

(declare-fun bm!129337 () Bool)

(declare-fun lt!802319 () List!25045)

(declare-fun lt!802328 () (_ BitVec 64))

(declare-fun lt!802313 () ListLongMap!269)

(declare-fun lt!802356 () (_ BitVec 64))

(declare-fun lt!802331 () List!25045)

(declare-fun call!129358 () Unit!38029)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!24 (ListLongMap!269 (_ BitVec 64) List!25045 Hashable!2860) Unit!38029)

(assert (=> bm!129337 (= call!129358 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!24 lt!802313 (ite c!341733 lt!802328 lt!802356) (ite c!341733 lt!802331 lt!802319) (hashF!4783 (cache!3241 thiss!29220))))))

(declare-fun c!341729 () Bool)

(declare-fun bm!129338 () Bool)

(declare-fun lt!802336 () tuple2!24662)

(assert (=> bm!129338 (= call!129362 (map!5027 (ite c!341729 (_2!14689 lt!802336) (cache!3241 thiss!29220))))))

(declare-fun bm!129339 () Bool)

(declare-fun call!129369 () ListMap!725)

(declare-fun call!129351 () ListMap!725)

(assert (=> bm!129339 (= call!129369 call!129351)))

(declare-fun bm!129340 () Bool)

(declare-fun call!129367 () Bool)

(declare-fun call!129354 () ListMap!725)

(declare-fun call!129348 () ListMap!725)

(declare-fun eq!45 (ListMap!725 ListMap!725) Bool)

(assert (=> bm!129340 (= call!129367 (eq!45 call!129354 call!129348))))

(declare-fun bm!129341 () Bool)

(declare-fun call!129343 () Bool)

(assert (=> bm!129341 (= call!129343 (contains!4256 (ite c!341733 lt!802365 lt!802315) lt!802192))))

(declare-fun call!129371 () Bool)

(assert (=> b!2158371 call!129371))

(declare-fun lt!802333 () Unit!38029)

(declare-fun Unit!38031 () Unit!38029)

(assert (=> b!2158371 (= lt!802333 Unit!38031)))

(declare-fun call!129341 () Bool)

(assert (=> b!2158371 call!129341))

(declare-fun lt!802364 () Unit!38029)

(declare-fun Unit!38032 () Unit!38029)

(assert (=> b!2158371 (= lt!802364 Unit!38032)))

(declare-fun call!129342 () Bool)

(assert (=> b!2158371 call!129342))

(declare-fun lt!802314 () Unit!38029)

(declare-fun lt!802344 () Unit!38029)

(assert (=> b!2158371 (= lt!802314 lt!802344)))

(declare-fun call!129353 () Bool)

(assert (=> b!2158371 (= call!129353 call!129343)))

(assert (=> b!2158371 (= lt!802344 call!129366)))

(declare-fun call!129368 () ListMap!725)

(assert (=> b!2158371 (= lt!802365 call!129368)))

(assert (=> b!2158371 (= lt!802338 call!129369)))

(declare-fun lt!802349 () Unit!38029)

(declare-fun lt!802359 () Unit!38029)

(assert (=> b!2158371 (= lt!802349 lt!802359)))

(assert (=> b!2158371 call!129367))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!5 (ListLongMap!269 (_ BitVec 64) List!25045 tuple3!3774 Int Hashable!2860) Unit!38029)

(assert (=> b!2158371 (= lt!802359 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!5 lt!802313 lt!802328 lt!802331 lt!802192 res!14508 (hashF!4783 (cache!3241 thiss!29220))))))

(declare-fun lt!802347 () Unit!38029)

(declare-fun lt!802327 () Unit!38029)

(assert (=> b!2158371 (= lt!802347 lt!802327)))

(declare-fun e!1380876 () Bool)

(assert (=> b!2158371 e!1380876))

(declare-fun res!930140 () Bool)

(assert (=> b!2158371 (=> (not res!930140) (not e!1380876))))

(declare-fun call!129349 () Bool)

(assert (=> b!2158371 (= res!930140 call!129349)))

(declare-fun lt!802353 () ListLongMap!269)

(declare-fun call!129360 () ListLongMap!269)

(assert (=> b!2158371 (= lt!802353 call!129360)))

(assert (=> b!2158371 (= lt!802327 call!129358)))

(declare-fun lt!802342 () Unit!38029)

(declare-fun Unit!38033 () Unit!38029)

(assert (=> b!2158371 (= lt!802342 Unit!38033)))

(declare-fun noDuplicateKeys!30 (List!25045) Bool)

(assert (=> b!2158371 (noDuplicateKeys!30 lt!802331)))

(declare-fun lt!802318 () Unit!38029)

(declare-fun Unit!38034 () Unit!38029)

(assert (=> b!2158371 (= lt!802318 Unit!38034)))

(declare-fun call!129356 () List!25045)

(declare-fun containsKey!58 (List!25045 tuple3!3774) Bool)

(assert (=> b!2158371 (not (containsKey!58 call!129356 lt!802192))))

(declare-fun lt!802332 () Unit!38029)

(declare-fun Unit!38035 () Unit!38029)

(assert (=> b!2158371 (= lt!802332 Unit!38035)))

(declare-fun lt!802357 () Unit!38029)

(declare-fun lt!802322 () Unit!38029)

(assert (=> b!2158371 (= lt!802357 lt!802322)))

(assert (=> b!2158371 (noDuplicateKeys!30 call!129356)))

(declare-fun lt!802334 () List!25045)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!24 (List!25045 tuple3!3774) Unit!38029)

(assert (=> b!2158371 (= lt!802322 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!24 lt!802334 lt!802192))))

(declare-fun lt!802339 () Unit!38029)

(declare-fun lt!802316 () Unit!38029)

(assert (=> b!2158371 (= lt!802339 lt!802316)))

(declare-fun call!129370 () Bool)

(assert (=> b!2158371 call!129370))

(declare-fun call!129359 () Unit!38029)

(assert (=> b!2158371 (= lt!802316 call!129359)))

(declare-fun lt!802340 () Unit!38029)

(declare-fun lt!802360 () Unit!38029)

(assert (=> b!2158371 (= lt!802340 lt!802360)))

(declare-fun call!129363 () Bool)

(assert (=> b!2158371 call!129363))

(declare-fun call!129346 () Unit!38029)

(assert (=> b!2158371 (= lt!802360 call!129346)))

(declare-fun e!1380870 () Unit!38029)

(declare-fun Unit!38036 () Unit!38029)

(assert (=> b!2158371 (= e!1380870 Unit!38036)))

(declare-fun b!2158372 () Bool)

(declare-fun e!1380872 () List!25045)

(assert (=> b!2158372 (= e!1380872 Nil!24961)))

(declare-fun bm!129342 () Bool)

(declare-fun +!43 (ListLongMap!269 tuple2!24664) ListLongMap!269)

(assert (=> bm!129342 (= call!129360 (+!43 lt!802313 (ite c!341733 (tuple2!24665 lt!802328 lt!802331) (tuple2!24665 lt!802356 lt!802319))))))

(declare-fun b!2158373 () Bool)

(declare-fun call!129365 () ListMap!725)

(declare-fun lt!802337 () ListMap!725)

(assert (=> b!2158373 (= call!129365 lt!802337)))

(declare-fun lt!802351 () Unit!38029)

(declare-fun Unit!38037 () Unit!38029)

(assert (=> b!2158373 (= lt!802351 Unit!38037)))

(declare-fun call!129355 () Bool)

(assert (=> b!2158373 call!129355))

(declare-fun e!1380869 () Unit!38029)

(declare-fun Unit!38038 () Unit!38029)

(assert (=> b!2158373 (= e!1380869 Unit!38038)))

(declare-fun bm!129343 () Bool)

(declare-fun call!129357 () ListMap!725)

(declare-fun +!44 (ListMap!725 tuple2!24660) ListMap!725)

(assert (=> bm!129343 (= call!129348 (+!44 call!129357 (tuple2!24661 lt!802192 res!14508)))))

(declare-fun bm!129344 () Bool)

(declare-fun call!129350 () Bool)

(declare-fun e!1380877 () ListMap!725)

(declare-fun call!129344 () ListMap!725)

(assert (=> bm!129344 (= call!129350 (eq!45 (ite c!341729 call!129362 call!129344) e!1380877))))

(declare-fun c!341730 () Bool)

(assert (=> bm!129344 (= c!341730 c!341729)))

(declare-fun call!129361 () List!25045)

(declare-fun bm!129345 () Bool)

(declare-fun apply!6045 (MutLongMap!2946 (_ BitVec 64)) List!25045)

(assert (=> bm!129345 (= call!129361 (apply!6045 (v!29360 (underlying!6088 (cache!3241 thiss!29220))) (ite c!341733 lt!802328 lt!802356)))))

(declare-fun b!2158374 () Bool)

(declare-fun res!930142 () Bool)

(declare-fun e!1380873 () Bool)

(assert (=> b!2158374 (=> (not res!930142) (not e!1380873))))

(assert (=> b!2158374 (= res!930142 (valid!2271 (_2!14689 lt!802336)))))

(declare-fun bm!129346 () Bool)

(assert (=> bm!129346 (= call!129371 (eq!45 (ite c!341733 call!129369 call!129365) call!129368))))

(declare-fun bm!129347 () Bool)

(declare-fun lt!802335 () List!25045)

(declare-fun removePairForKey!24 (List!25045 tuple3!3774) List!25045)

(assert (=> bm!129347 (= call!129356 (removePairForKey!24 (ite c!341733 lt!802334 lt!802335) lt!802192))))

(declare-fun bm!129348 () Bool)

(assert (=> bm!129348 (= call!129368 (+!44 lt!802337 (tuple2!24661 lt!802192 res!14508)))))

(declare-fun bm!129349 () Bool)

(declare-fun call!129347 () Bool)

(declare-fun lt!802367 () ListLongMap!269)

(declare-fun allKeysSameHashInMap!89 (ListLongMap!269 Hashable!2860) Bool)

(assert (=> bm!129349 (= call!129347 (allKeysSameHashInMap!89 (ite c!341733 lt!802353 lt!802367) (hashF!4783 (cache!3241 thiss!29220))))))

(declare-fun lt!802350 () MutableMap!2860)

(declare-datatypes ((tuple2!24666 0))(
  ( (tuple2!24667 (_1!14691 Bool) (_2!14691 MutLongMap!2946)) )
))
(declare-fun lt!802362 () tuple2!24666)

(declare-fun e!1380875 () tuple2!24662)

(declare-fun b!2158375 () Bool)

(declare-datatypes ((tuple2!24668 0))(
  ( (tuple2!24669 (_1!14692 Unit!38029) (_2!14692 MutableMap!2860)) )
))
(declare-fun Unit!38039 () Unit!38029)

(declare-fun Unit!38040 () Unit!38029)

(assert (=> b!2158375 (= e!1380875 (tuple2!24663 (_1!14691 lt!802362) (_2!14692 (ite false (tuple2!24669 Unit!38039 (HashMap!2860 (Cell!11612 (_2!14691 lt!802362)) (hashF!4783 (cache!3241 thiss!29220)) (bvadd (_size!5944 (cache!3241 thiss!29220)) #b00000000000000000000000000000001) (defaultValue!3022 (cache!3241 thiss!29220)))) (tuple2!24669 Unit!38040 lt!802350)))))))

(declare-fun call!129345 () (_ BitVec 64))

(assert (=> b!2158375 (= lt!802328 call!129345)))

(assert (=> b!2158375 (= lt!802334 call!129361)))

(assert (=> b!2158375 (= lt!802331 (Cons!24961 (tuple2!24661 lt!802192 res!14508) call!129356))))

(declare-fun call!129364 () tuple2!24666)

(assert (=> b!2158375 (= lt!802362 call!129364)))

(assert (=> b!2158375 (= lt!802350 (HashMap!2860 (Cell!11612 (_2!14691 lt!802362)) (hashF!4783 (cache!3241 thiss!29220)) (_size!5944 (cache!3241 thiss!29220)) (defaultValue!3022 (cache!3241 thiss!29220))))))

(declare-fun c!341728 () Bool)

(assert (=> b!2158375 (= c!341728 (_1!14691 lt!802362))))

(declare-fun lt!802329 () Unit!38029)

(assert (=> b!2158375 (= lt!802329 e!1380870)))

(declare-fun bm!129350 () Bool)

(declare-fun lt!802355 () MutableMap!2860)

(assert (=> bm!129350 (= call!129351 (map!5027 (ite c!341733 lt!802350 lt!802355)))))

(declare-fun bm!129351 () Bool)

(assert (=> bm!129351 (= call!129353 (contains!4256 (ite c!341733 lt!802338 lt!802321) lt!802192))))

(assert (=> b!2158376 (contains!4256 call!129365 lt!802192)))

(declare-fun lt!802330 () Unit!38029)

(declare-fun Unit!38041 () Unit!38029)

(assert (=> b!2158376 (= lt!802330 Unit!38041)))

(assert (=> b!2158376 (contains!4256 call!129368 lt!802192)))

(declare-fun lt!802326 () Unit!38029)

(declare-fun lt!802317 () Unit!38029)

(assert (=> b!2158376 (= lt!802326 lt!802317)))

(assert (=> b!2158376 (= call!129343 call!129353)))

(assert (=> b!2158376 (= lt!802317 call!129366)))

(assert (=> b!2158376 (= lt!802321 call!129368)))

(assert (=> b!2158376 (= lt!802315 call!129365)))

(declare-fun lt!802354 () Unit!38029)

(declare-fun Unit!38042 () Unit!38029)

(assert (=> b!2158376 (= lt!802354 Unit!38042)))

(assert (=> b!2158376 call!129371))

(declare-fun lt!802325 () Unit!38029)

(declare-fun Unit!38043 () Unit!38029)

(assert (=> b!2158376 (= lt!802325 Unit!38043)))

(assert (=> b!2158376 call!129341))

(declare-fun lt!802324 () Unit!38029)

(declare-fun Unit!38044 () Unit!38029)

(assert (=> b!2158376 (= lt!802324 Unit!38044)))

(assert (=> b!2158376 call!129342))

(declare-fun lt!802323 () Unit!38029)

(declare-fun lt!802363 () Unit!38029)

(assert (=> b!2158376 (= lt!802323 lt!802363)))

(assert (=> b!2158376 call!129367))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!5 (ListLongMap!269 (_ BitVec 64) List!25045 tuple3!3774 Int Hashable!2860) Unit!38029)

(assert (=> b!2158376 (= lt!802363 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!5 lt!802313 lt!802356 lt!802319 lt!802192 res!14508 (hashF!4783 (cache!3241 thiss!29220))))))

(declare-fun lt!802361 () Unit!38029)

(declare-fun lt!802345 () Unit!38029)

(assert (=> b!2158376 (= lt!802361 lt!802345)))

(declare-fun e!1380874 () Bool)

(assert (=> b!2158376 e!1380874))

(declare-fun res!930141 () Bool)

(assert (=> b!2158376 (=> (not res!930141) (not e!1380874))))

(assert (=> b!2158376 (= res!930141 call!129349)))

(assert (=> b!2158376 (= lt!802367 call!129360)))

(assert (=> b!2158376 (= lt!802345 call!129358)))

(declare-fun lt!802320 () Unit!38029)

(declare-fun e!1380871 () Unit!38029)

(assert (=> b!2158376 (= lt!802320 e!1380871)))

(declare-fun c!341732 () Bool)

(declare-fun isEmpty!14349 (List!25045) Bool)

(assert (=> b!2158376 (= c!341732 (not (isEmpty!14349 lt!802335)))))

(declare-fun Unit!38045 () Unit!38029)

(assert (=> b!2158376 (= e!1380869 Unit!38045)))

(declare-fun bm!129352 () Bool)

(assert (=> bm!129352 (= call!129357 (extractMap!85 (toList!1129 lt!802313)))))

(declare-fun lt!802341 () tuple2!24666)

(declare-fun b!2158377 () Bool)

(declare-fun Unit!38046 () Unit!38029)

(declare-fun Unit!38047 () Unit!38029)

(assert (=> b!2158377 (= e!1380875 (tuple2!24663 (_1!14691 lt!802341) (_2!14692 (ite (_1!14691 lt!802341) (tuple2!24669 Unit!38046 (HashMap!2860 (Cell!11612 (_2!14691 lt!802341)) (hashF!4783 (cache!3241 thiss!29220)) (bvadd (_size!5944 (cache!3241 thiss!29220)) #b00000000000000000000000000000001) (defaultValue!3022 (cache!3241 thiss!29220)))) (tuple2!24669 Unit!38047 lt!802355)))))))

(assert (=> b!2158377 (= lt!802356 call!129345)))

(declare-fun c!341734 () Bool)

(declare-fun contains!4257 (MutLongMap!2946 (_ BitVec 64)) Bool)

(assert (=> b!2158377 (= c!341734 (contains!4257 (v!29360 (underlying!6088 (cache!3241 thiss!29220))) lt!802356))))

(assert (=> b!2158377 (= lt!802335 e!1380872)))

(assert (=> b!2158377 (= lt!802319 (Cons!24961 (tuple2!24661 lt!802192 res!14508) lt!802335))))

(assert (=> b!2158377 (= lt!802341 call!129364)))

(assert (=> b!2158377 (= lt!802355 (HashMap!2860 (Cell!11612 (_2!14691 lt!802341)) (hashF!4783 (cache!3241 thiss!29220)) (_size!5944 (cache!3241 thiss!29220)) (defaultValue!3022 (cache!3241 thiss!29220))))))

(declare-fun c!341731 () Bool)

(assert (=> b!2158377 (= c!341731 (_1!14691 lt!802341))))

(declare-fun lt!802366 () Unit!38029)

(assert (=> b!2158377 (= lt!802366 e!1380869)))

(declare-fun b!2158378 () Bool)

(assert (=> b!2158378 (= e!1380876 call!129347)))

(declare-fun b!2158379 () Bool)

(assert (=> b!2158379 (= call!129369 lt!802337)))

(declare-fun lt!802346 () Unit!38029)

(declare-fun Unit!38048 () Unit!38029)

(assert (=> b!2158379 (= lt!802346 Unit!38048)))

(assert (=> b!2158379 call!129355))

(declare-fun Unit!38049 () Unit!38029)

(assert (=> b!2158379 (= e!1380870 Unit!38049)))

(declare-fun bm!129353 () Bool)

(assert (=> bm!129353 (= call!129365 call!129351)))

(declare-fun bm!129354 () Bool)

(assert (=> bm!129354 (= call!129355 (valid!2271 (ite c!341733 lt!802350 lt!802355)))))

(declare-fun bm!129355 () Bool)

(declare-fun call!129352 () ListLongMap!269)

(assert (=> bm!129355 (= call!129352 (map!5028 (ite c!341733 (_2!14691 lt!802362) (_2!14691 lt!802341))))))

(declare-fun bm!129356 () Bool)

(declare-fun forall!5133 (List!25046 Int) Bool)

(assert (=> bm!129356 (= call!129342 (forall!5133 (toList!1129 call!129352) (ite c!341733 lambda!81496 lambda!81497)))))

(declare-fun d!646668 () Bool)

(assert (=> d!646668 e!1380873))

(declare-fun res!930139 () Bool)

(assert (=> d!646668 (=> (not res!930139) (not e!1380873))))

(assert (=> d!646668 (= res!930139 ((_ is HashMap!2860) (_2!14689 lt!802336)))))

(declare-fun lt!802352 () tuple2!24662)

(assert (=> d!646668 (= lt!802336 (tuple2!24663 (_1!14689 lt!802352) (_2!14689 lt!802352)))))

(assert (=> d!646668 (= lt!802352 e!1380875)))

(declare-fun contains!4258 (MutableMap!2860 tuple3!3774) Bool)

(assert (=> d!646668 (= c!341733 (contains!4258 (cache!3241 thiss!29220) lt!802192))))

(assert (=> d!646668 (= lt!802313 (map!5028 (v!29360 (underlying!6088 (cache!3241 thiss!29220)))))))

(assert (=> d!646668 (= lt!802337 (map!5027 (cache!3241 thiss!29220)))))

(assert (=> d!646668 (valid!2271 (cache!3241 thiss!29220))))

(assert (=> d!646668 (= (update!105 (cache!3241 thiss!29220) lt!802192 res!14508) lt!802336)))

(declare-fun bm!129357 () Bool)

(assert (=> bm!129357 (= call!129344 (map!5027 (ite c!341729 (cache!3241 thiss!29220) (_2!14689 lt!802336))))))

(declare-fun b!2158380 () Bool)

(assert (=> b!2158380 (= e!1380874 call!129347)))

(declare-fun b!2158381 () Bool)

(assert (=> b!2158381 (= e!1380872 call!129361)))

(declare-fun b!2158382 () Bool)

(assert (=> b!2158382 (= e!1380878 call!129350)))

(declare-fun b!2158383 () Bool)

(declare-fun lt!802343 () Unit!38029)

(assert (=> b!2158383 (= e!1380871 lt!802343)))

(declare-fun lt!802348 () Unit!38029)

(assert (=> b!2158383 (= lt!802348 call!129346)))

(assert (=> b!2158383 call!129363))

(declare-fun lt!802358 () Unit!38029)

(assert (=> b!2158383 (= lt!802358 lt!802348)))

(assert (=> b!2158383 (= lt!802343 call!129359)))

(assert (=> b!2158383 call!129370))

(declare-fun bm!129358 () Bool)

(assert (=> bm!129358 (= call!129341 (allKeysSameHashInMap!89 call!129352 (hashF!4783 (cache!3241 thiss!29220))))))

(declare-fun b!2158384 () Bool)

(assert (=> b!2158384 (= e!1380873 e!1380868)))

(assert (=> b!2158384 (= c!341729 (_1!14689 lt!802336))))

(declare-fun bm!129359 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!24 (List!25046 (_ BitVec 64) List!25045 Hashable!2860) Unit!38029)

(assert (=> bm!129359 (= call!129346 (lemmaInLongMapAllKeySameHashThenForTuple!24 (toList!1129 lt!802313) (ite c!341733 lt!802328 lt!802356) (ite c!341733 lt!802334 lt!802335) (hashF!4783 (cache!3241 thiss!29220))))))

(declare-fun bm!129360 () Bool)

(declare-fun allKeysSameHash!28 (List!25045 (_ BitVec 64) Hashable!2860) Bool)

(assert (=> bm!129360 (= call!129363 (allKeysSameHash!28 (ite c!341733 lt!802334 lt!802335) (ite c!341733 lt!802328 lt!802356) (hashF!4783 (cache!3241 thiss!29220))))))

(declare-fun bm!129361 () Bool)

(assert (=> bm!129361 (= call!129354 (extractMap!85 (toList!1129 call!129360)))))

(declare-fun bm!129362 () Bool)

(declare-fun update!106 (MutLongMap!2946 (_ BitVec 64) List!25045) tuple2!24666)

(assert (=> bm!129362 (= call!129364 (update!106 (v!29360 (underlying!6088 (cache!3241 thiss!29220))) (ite c!341733 lt!802328 lt!802356) (ite c!341733 lt!802331 lt!802319)))))

(declare-fun bm!129363 () Bool)

(declare-fun hash!557 (Hashable!2860 tuple3!3774) (_ BitVec 64))

(assert (=> bm!129363 (= call!129345 (hash!557 (hashF!4783 (cache!3241 thiss!29220)) lt!802192))))

(declare-fun b!2158385 () Bool)

(assert (=> b!2158385 (= e!1380868 call!129350)))

(declare-fun bm!129364 () Bool)

(assert (=> bm!129364 (= call!129370 (allKeysSameHash!28 call!129356 (ite c!341733 lt!802328 lt!802356) (hashF!4783 (cache!3241 thiss!29220))))))

(declare-fun bm!129365 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!24 (List!25045 tuple3!3774 (_ BitVec 64) Hashable!2860) Unit!38029)

(assert (=> bm!129365 (= call!129359 (lemmaRemovePairForKeyPreservesHash!24 (ite c!341733 lt!802334 lt!802335) lt!802192 (ite c!341733 lt!802328 lt!802356) (hashF!4783 (cache!3241 thiss!29220))))))

(declare-fun bm!129366 () Bool)

(assert (=> bm!129366 (= call!129349 (forall!5133 (ite c!341733 (toList!1129 lt!802353) (toList!1129 lt!802367)) (ite c!341733 lambda!81496 lambda!81497)))))

(declare-fun b!2158386 () Bool)

(assert (=> b!2158386 (= e!1380877 (+!44 call!129344 (tuple2!24661 lt!802192 res!14508)))))

(declare-fun b!2158387 () Bool)

(assert (=> b!2158387 (= e!1380877 call!129362)))

(declare-fun b!2158388 () Bool)

(declare-fun Unit!38050 () Unit!38029)

(assert (=> b!2158388 (= e!1380871 Unit!38050)))

(assert (= (and d!646668 c!341733) b!2158375))

(assert (= (and d!646668 (not c!341733)) b!2158377))

(assert (= (and b!2158375 c!341728) b!2158371))

(assert (= (and b!2158375 (not c!341728)) b!2158379))

(assert (= (and b!2158371 res!930140) b!2158378))

(assert (= (or b!2158371 b!2158379) bm!129339))

(assert (= (and b!2158377 c!341734) b!2158381))

(assert (= (and b!2158377 (not c!341734)) b!2158372))

(assert (= (and b!2158377 c!341731) b!2158376))

(assert (= (and b!2158377 (not c!341731)) b!2158373))

(assert (= (and b!2158376 c!341732) b!2158383))

(assert (= (and b!2158376 (not c!341732)) b!2158388))

(assert (= (and b!2158376 res!930141) b!2158380))

(assert (= (or b!2158376 b!2158373) bm!129353))

(assert (= (or b!2158371 b!2158376) bm!129351))

(assert (= (or b!2158371 b!2158376) bm!129336))

(assert (= (or b!2158375 b!2158381) bm!129345))

(assert (= (or b!2158375 b!2158371 b!2158383) bm!129347))

(assert (= (or b!2158371 b!2158376) bm!129337))

(assert (= (or b!2158375 b!2158377) bm!129362))

(assert (= (or bm!129339 bm!129353) bm!129350))

(assert (= (or b!2158371 b!2158376) bm!129366))

(assert (= (or b!2158371 b!2158376) bm!129348))

(assert (= (or b!2158371 b!2158383) bm!129365))

(assert (= (or b!2158378 b!2158380) bm!129349))

(assert (= (or b!2158371 b!2158383) bm!129360))

(assert (= (or b!2158371 b!2158383) bm!129359))

(assert (= (or b!2158375 b!2158377) bm!129363))

(assert (= (or b!2158371 b!2158376) bm!129355))

(assert (= (or b!2158379 b!2158373) bm!129354))

(assert (= (or b!2158371 b!2158376) bm!129352))

(assert (= (or b!2158371 b!2158376) bm!129341))

(assert (= (or b!2158371 b!2158376) bm!129342))

(assert (= (or b!2158371 b!2158376) bm!129361))

(assert (= (or b!2158371 b!2158376) bm!129346))

(assert (= (or b!2158371 b!2158383) bm!129364))

(assert (= (or b!2158371 b!2158376) bm!129358))

(assert (= (or b!2158371 b!2158376) bm!129356))

(assert (= (or b!2158371 b!2158376) bm!129343))

(assert (= (or b!2158371 b!2158376) bm!129340))

(assert (= (and d!646668 res!930139) b!2158374))

(assert (= (and b!2158374 res!930142) b!2158384))

(assert (= (and b!2158384 c!341729) b!2158370))

(assert (= (and b!2158384 (not c!341729)) b!2158385))

(assert (= (and b!2158370 res!930143) b!2158382))

(assert (= (or b!2158370 b!2158382 b!2158385) bm!129338))

(assert (= (or b!2158382 b!2158385) bm!129357))

(assert (= (or b!2158382 b!2158385) bm!129344))

(assert (= (and bm!129344 c!341730) b!2158386))

(assert (= (and bm!129344 (not c!341730)) b!2158387))

(declare-fun m!2598429 () Bool)

(assert (=> bm!129354 m!2598429))

(declare-fun m!2598431 () Bool)

(assert (=> bm!129340 m!2598431))

(declare-fun m!2598433 () Bool)

(assert (=> bm!129356 m!2598433))

(declare-fun m!2598435 () Bool)

(assert (=> b!2158377 m!2598435))

(declare-fun m!2598437 () Bool)

(assert (=> bm!129337 m!2598437))

(declare-fun m!2598439 () Bool)

(assert (=> bm!129350 m!2598439))

(declare-fun m!2598441 () Bool)

(assert (=> bm!129348 m!2598441))

(declare-fun m!2598443 () Bool)

(assert (=> bm!129361 m!2598443))

(declare-fun m!2598445 () Bool)

(assert (=> bm!129360 m!2598445))

(declare-fun m!2598447 () Bool)

(assert (=> bm!129341 m!2598447))

(declare-fun m!2598449 () Bool)

(assert (=> bm!129363 m!2598449))

(declare-fun m!2598451 () Bool)

(assert (=> bm!129345 m!2598451))

(declare-fun m!2598453 () Bool)

(assert (=> bm!129357 m!2598453))

(declare-fun m!2598455 () Bool)

(assert (=> d!646668 m!2598455))

(declare-fun m!2598457 () Bool)

(assert (=> d!646668 m!2598457))

(declare-fun m!2598459 () Bool)

(assert (=> d!646668 m!2598459))

(declare-fun m!2598461 () Bool)

(assert (=> d!646668 m!2598461))

(declare-fun m!2598463 () Bool)

(assert (=> b!2158376 m!2598463))

(declare-fun m!2598465 () Bool)

(assert (=> b!2158376 m!2598465))

(declare-fun m!2598467 () Bool)

(assert (=> b!2158376 m!2598467))

(declare-fun m!2598469 () Bool)

(assert (=> b!2158376 m!2598469))

(declare-fun m!2598471 () Bool)

(assert (=> bm!129362 m!2598471))

(declare-fun m!2598473 () Bool)

(assert (=> bm!129355 m!2598473))

(declare-fun m!2598475 () Bool)

(assert (=> bm!129359 m!2598475))

(declare-fun m!2598477 () Bool)

(assert (=> bm!129358 m!2598477))

(declare-fun m!2598479 () Bool)

(assert (=> bm!129342 m!2598479))

(declare-fun m!2598481 () Bool)

(assert (=> bm!129352 m!2598481))

(declare-fun m!2598483 () Bool)

(assert (=> bm!129343 m!2598483))

(declare-fun m!2598485 () Bool)

(assert (=> bm!129347 m!2598485))

(declare-fun m!2598487 () Bool)

(assert (=> bm!129365 m!2598487))

(declare-fun m!2598489 () Bool)

(assert (=> bm!129338 m!2598489))

(declare-fun m!2598491 () Bool)

(assert (=> bm!129336 m!2598491))

(declare-fun m!2598493 () Bool)

(assert (=> b!2158374 m!2598493))

(declare-fun m!2598495 () Bool)

(assert (=> bm!129364 m!2598495))

(declare-fun m!2598497 () Bool)

(assert (=> bm!129346 m!2598497))

(declare-fun m!2598499 () Bool)

(assert (=> b!2158386 m!2598499))

(declare-fun m!2598501 () Bool)

(assert (=> b!2158370 m!2598501))

(declare-fun m!2598503 () Bool)

(assert (=> b!2158371 m!2598503))

(declare-fun m!2598505 () Bool)

(assert (=> b!2158371 m!2598505))

(declare-fun m!2598507 () Bool)

(assert (=> b!2158371 m!2598507))

(declare-fun m!2598509 () Bool)

(assert (=> b!2158371 m!2598509))

(declare-fun m!2598511 () Bool)

(assert (=> b!2158371 m!2598511))

(declare-fun m!2598513 () Bool)

(assert (=> bm!129349 m!2598513))

(declare-fun m!2598515 () Bool)

(assert (=> bm!129344 m!2598515))

(declare-fun m!2598517 () Bool)

(assert (=> bm!129366 m!2598517))

(declare-fun m!2598519 () Bool)

(assert (=> bm!129351 m!2598519))

(assert (=> b!2158303 d!646668))

(declare-fun d!646670 () Bool)

(declare-fun e!1380881 () Bool)

(assert (=> d!646670 e!1380881))

(declare-fun res!930146 () Bool)

(assert (=> d!646670 (=> (not res!930146) (not e!1380881))))

(assert (=> d!646670 (= res!930146 (and (or (not ((_ is HashMap!2860) (cache!3241 thiss!29220))) ((_ is HashMap!2860) (cache!3241 thiss!29220))) ((_ is HashMap!2860) (cache!3241 thiss!29220))))))

(declare-fun lt!802381 () Unit!38029)

(declare-fun choose!12716 (MutableMap!2860 tuple3!3774 Int Int) Unit!38029)

(assert (=> d!646670 (= lt!802381 (choose!12716 (cache!3241 thiss!29220) lt!802192 res!14508 lambda!81487))))

(assert (=> d!646670 (valid!2271 (cache!3241 thiss!29220))))

(assert (=> d!646670 (= (lemmaUpdatePreservesForallPairs!7 (cache!3241 thiss!29220) lt!802192 res!14508 lambda!81487) lt!802381)))

(declare-fun b!2158391 () Bool)

(declare-fun lt!802382 () MutableMap!2860)

(assert (=> b!2158391 (= e!1380881 (forall!5132 (toList!1128 (map!5027 lt!802382)) lambda!81487))))

(assert (=> b!2158391 ((_ is HashMap!2860) lt!802382)))

(declare-fun lt!802385 () MutableMap!2860)

(assert (=> b!2158391 (= lt!802382 lt!802385)))

(assert (=> b!2158391 ((_ is HashMap!2860) lt!802385)))

(declare-fun lt!802383 () MutableMap!2860)

(assert (=> b!2158391 (= lt!802385 lt!802383)))

(assert (=> b!2158391 ((_ is HashMap!2860) lt!802383)))

(declare-fun lt!802384 () tuple2!24662)

(assert (=> b!2158391 (= lt!802383 (_2!14689 lt!802384))))

(assert (=> b!2158391 ((_ is HashMap!2860) (_2!14689 lt!802384))))

(declare-fun lt!802380 () tuple2!24662)

(assert (=> b!2158391 (= lt!802384 lt!802380)))

(assert (=> b!2158391 ((_ is HashMap!2860) (_2!14689 lt!802380))))

(assert (=> b!2158391 (= lt!802380 (update!105 (cache!3241 thiss!29220) lt!802192 res!14508))))

(assert (= (and d!646670 res!930146) b!2158391))

(declare-fun m!2598521 () Bool)

(assert (=> d!646670 m!2598521))

(assert (=> d!646670 m!2598461))

(declare-fun m!2598523 () Bool)

(assert (=> b!2158391 m!2598523))

(declare-fun m!2598525 () Bool)

(assert (=> b!2158391 m!2598525))

(assert (=> b!2158391 m!2598385))

(assert (=> b!2158303 d!646670))

(declare-fun d!646672 () Bool)

(declare-fun lambda!81500 () Int)

(declare-fun exists!741 ((InoxSet Context!3030) Int) Bool)

(assert (=> d!646672 (= (nullableZipper!234 z!540) (exists!741 z!540 lambda!81500))))

(declare-fun bs!445961 () Bool)

(assert (= bs!445961 d!646672))

(declare-fun m!2598527 () Bool)

(assert (=> bs!445961 m!2598527))

(assert (=> b!2158295 d!646672))

(declare-fun d!646674 () Bool)

(declare-fun c!341737 () Bool)

(assert (=> d!646674 (= c!341737 ((_ is Node!8081) (c!341710 (totalInput!3395 thiss!29220))))))

(declare-fun e!1380882 () Bool)

(assert (=> d!646674 (= (inv!33026 (c!341710 (totalInput!3395 thiss!29220))) e!1380882)))

(declare-fun b!2158392 () Bool)

(assert (=> b!2158392 (= e!1380882 (inv!33030 (c!341710 (totalInput!3395 thiss!29220))))))

(declare-fun b!2158393 () Bool)

(declare-fun e!1380883 () Bool)

(assert (=> b!2158393 (= e!1380882 e!1380883)))

(declare-fun res!930147 () Bool)

(assert (=> b!2158393 (= res!930147 (not ((_ is Leaf!11821) (c!341710 (totalInput!3395 thiss!29220)))))))

(assert (=> b!2158393 (=> res!930147 e!1380883)))

(declare-fun b!2158394 () Bool)

(assert (=> b!2158394 (= e!1380883 (inv!33031 (c!341710 (totalInput!3395 thiss!29220))))))

(assert (= (and d!646674 c!341737) b!2158392))

(assert (= (and d!646674 (not c!341737)) b!2158393))

(assert (= (and b!2158393 (not res!930147)) b!2158394))

(declare-fun m!2598529 () Bool)

(assert (=> b!2158392 m!2598529))

(declare-fun m!2598531 () Bool)

(assert (=> b!2158394 m!2598531))

(assert (=> b!2158296 d!646674))

(declare-fun d!646676 () Bool)

(assert (=> d!646676 (= (inv!33027 (totalInput!3395 thiss!29220)) (isBalanced!2509 (c!341710 (totalInput!3395 thiss!29220))))))

(declare-fun bs!445962 () Bool)

(assert (= bs!445962 d!646676))

(declare-fun m!2598533 () Bool)

(assert (=> bs!445962 m!2598533))

(assert (=> b!2158304 d!646676))

(declare-fun d!646678 () Bool)

(declare-fun lambda!81503 () Int)

(declare-fun forall!5134 (List!25043 Int) Bool)

(assert (=> d!646678 (= (inv!33028 setElem!17848) (forall!5134 (exprs!2015 setElem!17848) lambda!81503))))

(declare-fun bs!445963 () Bool)

(assert (= bs!445963 d!646678))

(declare-fun m!2598535 () Bool)

(assert (=> bs!445963 m!2598535))

(assert (=> setNonEmpty!17848 d!646678))

(declare-fun bs!445964 () Bool)

(declare-fun b!2158400 () Bool)

(assert (= bs!445964 (and b!2158400 b!2158303)))

(declare-fun lambda!81506 () Int)

(assert (=> bs!445964 (= (= (totalInput!3395 thiss!29220) localTotalInput!17) (= lambda!81506 lambda!81487))))

(assert (=> b!2158400 true))

(declare-fun d!646680 () Bool)

(declare-fun res!930152 () Bool)

(declare-fun e!1380886 () Bool)

(assert (=> d!646680 (=> (not res!930152) (not e!1380886))))

(assert (=> d!646680 (= res!930152 (valid!2271 (cache!3241 thiss!29220)))))

(assert (=> d!646680 (= (validCacheMapFurthestNullable!183 (cache!3241 thiss!29220) (totalInput!3395 thiss!29220)) e!1380886)))

(declare-fun b!2158399 () Bool)

(declare-fun res!930153 () Bool)

(assert (=> b!2158399 (=> (not res!930153) (not e!1380886))))

(assert (=> b!2158399 (= res!930153 (invariantList!333 (toList!1128 (map!5027 (cache!3241 thiss!29220)))))))

(assert (=> b!2158400 (= e!1380886 (forall!5132 (toList!1128 (map!5027 (cache!3241 thiss!29220))) lambda!81506))))

(assert (= (and d!646680 res!930152) b!2158399))

(assert (= (and b!2158399 res!930153) b!2158400))

(assert (=> d!646680 m!2598461))

(assert (=> b!2158399 m!2598459))

(declare-fun m!2598538 () Bool)

(assert (=> b!2158399 m!2598538))

(assert (=> b!2158400 m!2598459))

(declare-fun m!2598540 () Bool)

(assert (=> b!2158400 m!2598540))

(assert (=> b!2158299 d!646680))

(declare-fun b!2158411 () Bool)

(declare-fun e!1380893 () Int)

(assert (=> b!2158411 (= e!1380893 from!970)))

(declare-fun d!646682 () Bool)

(declare-fun lt!802391 () Int)

(assert (=> d!646682 (and (>= lt!802391 (- 1)) (< lt!802391 lt!802193) (>= lt!802391 lastNullablePos!109) (or (= lt!802391 lastNullablePos!109) (>= lt!802391 from!970)))))

(declare-fun e!1380894 () Int)

(assert (=> d!646682 (= lt!802391 e!1380894)))

(declare-fun c!341743 () Bool)

(declare-fun e!1380895 () Bool)

(assert (=> d!646682 (= c!341743 e!1380895)))

(declare-fun res!930156 () Bool)

(assert (=> d!646682 (=> res!930156 e!1380895)))

(assert (=> d!646682 (= res!930156 (= from!970 lt!802193))))

(assert (=> d!646682 (and (>= from!970 0) (<= from!970 lt!802193))))

(assert (=> d!646682 (= (furthestNullablePosition!144 z!540 from!970 (totalInput!3395 thiss!29220) lt!802193 lastNullablePos!109) lt!802391)))

(declare-fun b!2158412 () Bool)

(assert (=> b!2158412 (= e!1380894 lastNullablePos!109)))

(declare-fun b!2158413 () Bool)

(assert (=> b!2158413 (= e!1380893 lastNullablePos!109)))

(declare-fun b!2158414 () Bool)

(declare-fun lostCauseZipper!144 ((InoxSet Context!3030)) Bool)

(assert (=> b!2158414 (= e!1380895 (lostCauseZipper!144 z!540))))

(declare-fun lt!802390 () (InoxSet Context!3030))

(declare-fun b!2158415 () Bool)

(assert (=> b!2158415 (= e!1380894 (furthestNullablePosition!144 lt!802390 (+ from!970 1) (totalInput!3395 thiss!29220) lt!802193 e!1380893))))

(declare-fun derivationStepZipper!111 ((InoxSet Context!3030) C!12036) (InoxSet Context!3030))

(declare-fun apply!6046 (BalanceConc!15924 Int) C!12036)

(assert (=> b!2158415 (= lt!802390 (derivationStepZipper!111 z!540 (apply!6046 (totalInput!3395 thiss!29220) from!970)))))

(declare-fun c!341742 () Bool)

(assert (=> b!2158415 (= c!341742 (nullableZipper!234 lt!802390))))

(assert (= (and d!646682 (not res!930156)) b!2158414))

(assert (= (and d!646682 c!341743) b!2158412))

(assert (= (and d!646682 (not c!341743)) b!2158415))

(assert (= (and b!2158415 c!341742) b!2158411))

(assert (= (and b!2158415 (not c!341742)) b!2158413))

(declare-fun m!2598542 () Bool)

(assert (=> b!2158414 m!2598542))

(declare-fun m!2598544 () Bool)

(assert (=> b!2158415 m!2598544))

(declare-fun m!2598546 () Bool)

(assert (=> b!2158415 m!2598546))

(assert (=> b!2158415 m!2598546))

(declare-fun m!2598548 () Bool)

(assert (=> b!2158415 m!2598548))

(declare-fun m!2598550 () Bool)

(assert (=> b!2158415 m!2598550))

(assert (=> b!2158307 d!646682))

(declare-fun b!2158422 () Bool)

(declare-fun e!1380900 () Bool)

(declare-fun setRes!17851 () Bool)

(declare-fun tp!672664 () Bool)

(assert (=> b!2158422 (= e!1380900 (and setRes!17851 tp!672664))))

(declare-fun condSetEmpty!17851 () Bool)

(assert (=> b!2158422 (= condSetEmpty!17851 (= (_1!14687 (_1!14688 (h!30362 (zeroValue!3204 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))))) ((as const (Array Context!3030 Bool)) false)))))

(declare-fun setIsEmpty!17851 () Bool)

(assert (=> setIsEmpty!17851 setRes!17851))

(declare-fun b!2158423 () Bool)

(declare-fun e!1380901 () Bool)

(declare-fun tp!672665 () Bool)

(assert (=> b!2158423 (= e!1380901 tp!672665)))

(assert (=> b!2158308 (= tp!672653 e!1380900)))

(declare-fun setElem!17851 () Context!3030)

(declare-fun tp!672663 () Bool)

(declare-fun setNonEmpty!17851 () Bool)

(assert (=> setNonEmpty!17851 (= setRes!17851 (and tp!672663 (inv!33028 setElem!17851) e!1380901))))

(declare-fun setRest!17851 () (InoxSet Context!3030))

(assert (=> setNonEmpty!17851 (= (_1!14687 (_1!14688 (h!30362 (zeroValue!3204 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3030 Bool)) false) setElem!17851 true) setRest!17851))))

(assert (= (and b!2158422 condSetEmpty!17851) setIsEmpty!17851))

(assert (= (and b!2158422 (not condSetEmpty!17851)) setNonEmpty!17851))

(assert (= setNonEmpty!17851 b!2158423))

(assert (= (and b!2158308 ((_ is Cons!24961) (zeroValue!3204 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220)))))))) b!2158422))

(declare-fun m!2598552 () Bool)

(assert (=> setNonEmpty!17851 m!2598552))

(declare-fun b!2158424 () Bool)

(declare-fun e!1380902 () Bool)

(declare-fun setRes!17852 () Bool)

(declare-fun tp!672667 () Bool)

(assert (=> b!2158424 (= e!1380902 (and setRes!17852 tp!672667))))

(declare-fun condSetEmpty!17852 () Bool)

(assert (=> b!2158424 (= condSetEmpty!17852 (= (_1!14687 (_1!14688 (h!30362 (minValue!3204 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))))) ((as const (Array Context!3030 Bool)) false)))))

(declare-fun setIsEmpty!17852 () Bool)

(assert (=> setIsEmpty!17852 setRes!17852))

(declare-fun b!2158425 () Bool)

(declare-fun e!1380903 () Bool)

(declare-fun tp!672668 () Bool)

(assert (=> b!2158425 (= e!1380903 tp!672668)))

(assert (=> b!2158308 (= tp!672650 e!1380902)))

(declare-fun setElem!17852 () Context!3030)

(declare-fun setNonEmpty!17852 () Bool)

(declare-fun tp!672666 () Bool)

(assert (=> setNonEmpty!17852 (= setRes!17852 (and tp!672666 (inv!33028 setElem!17852) e!1380903))))

(declare-fun setRest!17852 () (InoxSet Context!3030))

(assert (=> setNonEmpty!17852 (= (_1!14687 (_1!14688 (h!30362 (minValue!3204 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3030 Bool)) false) setElem!17852 true) setRest!17852))))

(assert (= (and b!2158424 condSetEmpty!17852) setIsEmpty!17852))

(assert (= (and b!2158424 (not condSetEmpty!17852)) setNonEmpty!17852))

(assert (= setNonEmpty!17852 b!2158425))

(assert (= (and b!2158308 ((_ is Cons!24961) (minValue!3204 (v!29359 (underlying!6087 (v!29360 (underlying!6088 (cache!3241 thiss!29220)))))))) b!2158424))

(declare-fun m!2598554 () Bool)

(assert (=> setNonEmpty!17852 m!2598554))

(declare-fun tp!672677 () Bool)

(declare-fun e!1380909 () Bool)

(declare-fun b!2158434 () Bool)

(declare-fun tp!672675 () Bool)

(assert (=> b!2158434 (= e!1380909 (and (inv!33026 (left!19216 (c!341710 (totalInput!3395 thiss!29220)))) tp!672675 (inv!33026 (right!19546 (c!341710 (totalInput!3395 thiss!29220)))) tp!672677))))

(declare-fun b!2158436 () Bool)

(declare-fun e!1380908 () Bool)

(declare-fun tp!672676 () Bool)

(assert (=> b!2158436 (= e!1380908 tp!672676)))

(declare-fun b!2158435 () Bool)

(declare-fun inv!33032 (IArray!16167) Bool)

(assert (=> b!2158435 (= e!1380909 (and (inv!33032 (xs!11023 (c!341710 (totalInput!3395 thiss!29220)))) e!1380908))))

(assert (=> b!2158296 (= tp!672652 (and (inv!33026 (c!341710 (totalInput!3395 thiss!29220))) e!1380909))))

(assert (= (and b!2158296 ((_ is Node!8081) (c!341710 (totalInput!3395 thiss!29220)))) b!2158434))

(assert (= b!2158435 b!2158436))

(assert (= (and b!2158296 ((_ is Leaf!11821) (c!341710 (totalInput!3395 thiss!29220)))) b!2158435))

(declare-fun m!2598556 () Bool)

(assert (=> b!2158434 m!2598556))

(declare-fun m!2598558 () Bool)

(assert (=> b!2158434 m!2598558))

(declare-fun m!2598560 () Bool)

(assert (=> b!2158435 m!2598560))

(assert (=> b!2158296 m!2598403))

(declare-fun mapNonEmpty!13910 () Bool)

(declare-fun mapRes!13910 () Bool)

(declare-fun tp!672692 () Bool)

(declare-fun e!1380919 () Bool)

(assert (=> mapNonEmpty!13910 (= mapRes!13910 (and tp!672692 e!1380919))))

(declare-fun mapValue!13910 () List!25045)

(declare-fun mapRest!13910 () (Array (_ BitVec 32) List!25045))

(declare-fun mapKey!13910 () (_ BitVec 32))

(assert (=> mapNonEmpty!13910 (= mapRest!13907 (store mapRest!13910 mapKey!13910 mapValue!13910))))

(declare-fun setIsEmpty!17857 () Bool)

(declare-fun setRes!17857 () Bool)

(assert (=> setIsEmpty!17857 setRes!17857))

(declare-fun mapIsEmpty!13910 () Bool)

(assert (=> mapIsEmpty!13910 mapRes!13910))

(declare-fun setRes!17858 () Bool)

(declare-fun setNonEmpty!17857 () Bool)

(declare-fun setElem!17858 () Context!3030)

(declare-fun e!1380920 () Bool)

(declare-fun tp!672695 () Bool)

(assert (=> setNonEmpty!17857 (= setRes!17858 (and tp!672695 (inv!33028 setElem!17858) e!1380920))))

(declare-fun setRest!17858 () (InoxSet Context!3030))

(assert (=> setNonEmpty!17857 (= (_1!14687 (_1!14688 (h!30362 mapValue!13910))) ((_ map or) (store ((as const (Array Context!3030 Bool)) false) setElem!17858 true) setRest!17858))))

(declare-fun setIsEmpty!17858 () Bool)

(assert (=> setIsEmpty!17858 setRes!17858))

(declare-fun b!2158448 () Bool)

(declare-fun e!1380918 () Bool)

(declare-fun tp!672697 () Bool)

(assert (=> b!2158448 (= e!1380918 tp!672697)))

(declare-fun b!2158449 () Bool)

(declare-fun tp!672694 () Bool)

(assert (=> b!2158449 (= e!1380920 tp!672694)))

(declare-fun setElem!17857 () Context!3030)

(declare-fun tp!672696 () Bool)

(declare-fun setNonEmpty!17858 () Bool)

(assert (=> setNonEmpty!17858 (= setRes!17857 (and tp!672696 (inv!33028 setElem!17857) e!1380918))))

(declare-fun mapDefault!13910 () List!25045)

(declare-fun setRest!17857 () (InoxSet Context!3030))

(assert (=> setNonEmpty!17858 (= (_1!14687 (_1!14688 (h!30362 mapDefault!13910))) ((_ map or) (store ((as const (Array Context!3030 Bool)) false) setElem!17857 true) setRest!17857))))

(declare-fun b!2158450 () Bool)

(declare-fun e!1380921 () Bool)

(declare-fun tp!672693 () Bool)

(assert (=> b!2158450 (= e!1380921 (and setRes!17857 tp!672693))))

(declare-fun condSetEmpty!17858 () Bool)

(assert (=> b!2158450 (= condSetEmpty!17858 (= (_1!14687 (_1!14688 (h!30362 mapDefault!13910))) ((as const (Array Context!3030 Bool)) false)))))

(declare-fun condMapEmpty!13910 () Bool)

(assert (=> mapNonEmpty!13907 (= condMapEmpty!13910 (= mapRest!13907 ((as const (Array (_ BitVec 32) List!25045)) mapDefault!13910)))))

(assert (=> mapNonEmpty!13907 (= tp!672647 (and e!1380921 mapRes!13910))))

(declare-fun b!2158447 () Bool)

(declare-fun tp!672698 () Bool)

(assert (=> b!2158447 (= e!1380919 (and setRes!17858 tp!672698))))

(declare-fun condSetEmpty!17857 () Bool)

(assert (=> b!2158447 (= condSetEmpty!17857 (= (_1!14687 (_1!14688 (h!30362 mapValue!13910))) ((as const (Array Context!3030 Bool)) false)))))

(assert (= (and mapNonEmpty!13907 condMapEmpty!13910) mapIsEmpty!13910))

(assert (= (and mapNonEmpty!13907 (not condMapEmpty!13910)) mapNonEmpty!13910))

(assert (= (and b!2158447 condSetEmpty!17857) setIsEmpty!17858))

(assert (= (and b!2158447 (not condSetEmpty!17857)) setNonEmpty!17857))

(assert (= setNonEmpty!17857 b!2158449))

(assert (= (and mapNonEmpty!13910 ((_ is Cons!24961) mapValue!13910)) b!2158447))

(assert (= (and b!2158450 condSetEmpty!17858) setIsEmpty!17857))

(assert (= (and b!2158450 (not condSetEmpty!17858)) setNonEmpty!17858))

(assert (= setNonEmpty!17858 b!2158448))

(assert (= (and mapNonEmpty!13907 ((_ is Cons!24961) mapDefault!13910)) b!2158450))

(declare-fun m!2598562 () Bool)

(assert (=> mapNonEmpty!13910 m!2598562))

(declare-fun m!2598564 () Bool)

(assert (=> setNonEmpty!17857 m!2598564))

(declare-fun m!2598566 () Bool)

(assert (=> setNonEmpty!17858 m!2598566))

(declare-fun b!2158451 () Bool)

(declare-fun e!1380922 () Bool)

(declare-fun setRes!17859 () Bool)

(declare-fun tp!672700 () Bool)

(assert (=> b!2158451 (= e!1380922 (and setRes!17859 tp!672700))))

(declare-fun condSetEmpty!17859 () Bool)

(assert (=> b!2158451 (= condSetEmpty!17859 (= (_1!14687 (_1!14688 (h!30362 mapValue!13907))) ((as const (Array Context!3030 Bool)) false)))))

(declare-fun setIsEmpty!17859 () Bool)

(assert (=> setIsEmpty!17859 setRes!17859))

(declare-fun b!2158452 () Bool)

(declare-fun e!1380923 () Bool)

(declare-fun tp!672701 () Bool)

(assert (=> b!2158452 (= e!1380923 tp!672701)))

(assert (=> mapNonEmpty!13907 (= tp!672651 e!1380922)))

(declare-fun setElem!17859 () Context!3030)

(declare-fun tp!672699 () Bool)

(declare-fun setNonEmpty!17859 () Bool)

(assert (=> setNonEmpty!17859 (= setRes!17859 (and tp!672699 (inv!33028 setElem!17859) e!1380923))))

(declare-fun setRest!17859 () (InoxSet Context!3030))

(assert (=> setNonEmpty!17859 (= (_1!14687 (_1!14688 (h!30362 mapValue!13907))) ((_ map or) (store ((as const (Array Context!3030 Bool)) false) setElem!17859 true) setRest!17859))))

(assert (= (and b!2158451 condSetEmpty!17859) setIsEmpty!17859))

(assert (= (and b!2158451 (not condSetEmpty!17859)) setNonEmpty!17859))

(assert (= setNonEmpty!17859 b!2158452))

(assert (= (and mapNonEmpty!13907 ((_ is Cons!24961) mapValue!13907)) b!2158451))

(declare-fun m!2598568 () Bool)

(assert (=> setNonEmpty!17859 m!2598568))

(declare-fun b!2158457 () Bool)

(declare-fun e!1380926 () Bool)

(declare-fun tp!672706 () Bool)

(declare-fun tp!672707 () Bool)

(assert (=> b!2158457 (= e!1380926 (and tp!672706 tp!672707))))

(assert (=> b!2158300 (= tp!672649 e!1380926)))

(assert (= (and b!2158300 ((_ is Cons!24959) (exprs!2015 setElem!17848))) b!2158457))

(declare-fun condSetEmpty!17862 () Bool)

(assert (=> setNonEmpty!17848 (= condSetEmpty!17862 (= setRest!17848 ((as const (Array Context!3030 Bool)) false)))))

(declare-fun setRes!17862 () Bool)

(assert (=> setNonEmpty!17848 (= tp!672655 setRes!17862)))

(declare-fun setIsEmpty!17862 () Bool)

(assert (=> setIsEmpty!17862 setRes!17862))

(declare-fun e!1380929 () Bool)

(declare-fun setElem!17862 () Context!3030)

(declare-fun tp!672712 () Bool)

(declare-fun setNonEmpty!17862 () Bool)

(assert (=> setNonEmpty!17862 (= setRes!17862 (and tp!672712 (inv!33028 setElem!17862) e!1380929))))

(declare-fun setRest!17862 () (InoxSet Context!3030))

(assert (=> setNonEmpty!17862 (= setRest!17848 ((_ map or) (store ((as const (Array Context!3030 Bool)) false) setElem!17862 true) setRest!17862))))

(declare-fun b!2158462 () Bool)

(declare-fun tp!672713 () Bool)

(assert (=> b!2158462 (= e!1380929 tp!672713)))

(assert (= (and setNonEmpty!17848 condSetEmpty!17862) setIsEmpty!17862))

(assert (= (and setNonEmpty!17848 (not condSetEmpty!17862)) setNonEmpty!17862))

(assert (= setNonEmpty!17862 b!2158462))

(declare-fun m!2598570 () Bool)

(assert (=> setNonEmpty!17862 m!2598570))

(declare-fun e!1380931 () Bool)

(declare-fun tp!672716 () Bool)

(declare-fun tp!672714 () Bool)

(declare-fun b!2158463 () Bool)

(assert (=> b!2158463 (= e!1380931 (and (inv!33026 (left!19216 (c!341710 localTotalInput!17))) tp!672714 (inv!33026 (right!19546 (c!341710 localTotalInput!17))) tp!672716))))

(declare-fun b!2158465 () Bool)

(declare-fun e!1380930 () Bool)

(declare-fun tp!672715 () Bool)

(assert (=> b!2158465 (= e!1380930 tp!672715)))

(declare-fun b!2158464 () Bool)

(assert (=> b!2158464 (= e!1380931 (and (inv!33032 (xs!11023 (c!341710 localTotalInput!17))) e!1380930))))

(assert (=> b!2158309 (= tp!672656 (and (inv!33026 (c!341710 localTotalInput!17)) e!1380931))))

(assert (= (and b!2158309 ((_ is Node!8081) (c!341710 localTotalInput!17))) b!2158463))

(assert (= b!2158464 b!2158465))

(assert (= (and b!2158309 ((_ is Leaf!11821) (c!341710 localTotalInput!17))) b!2158464))

(declare-fun m!2598572 () Bool)

(assert (=> b!2158463 m!2598572))

(declare-fun m!2598574 () Bool)

(assert (=> b!2158463 m!2598574))

(declare-fun m!2598576 () Bool)

(assert (=> b!2158464 m!2598576))

(assert (=> b!2158309 m!2598395))

(declare-fun b!2158466 () Bool)

(declare-fun e!1380932 () Bool)

(declare-fun setRes!17863 () Bool)

(declare-fun tp!672718 () Bool)

(assert (=> b!2158466 (= e!1380932 (and setRes!17863 tp!672718))))

(declare-fun condSetEmpty!17863 () Bool)

(assert (=> b!2158466 (= condSetEmpty!17863 (= (_1!14687 (_1!14688 (h!30362 mapDefault!13907))) ((as const (Array Context!3030 Bool)) false)))))

(declare-fun setIsEmpty!17863 () Bool)

(assert (=> setIsEmpty!17863 setRes!17863))

(declare-fun b!2158467 () Bool)

(declare-fun e!1380933 () Bool)

(declare-fun tp!672719 () Bool)

(assert (=> b!2158467 (= e!1380933 tp!672719)))

(assert (=> b!2158306 (= tp!672648 e!1380932)))

(declare-fun tp!672717 () Bool)

(declare-fun setNonEmpty!17863 () Bool)

(declare-fun setElem!17863 () Context!3030)

(assert (=> setNonEmpty!17863 (= setRes!17863 (and tp!672717 (inv!33028 setElem!17863) e!1380933))))

(declare-fun setRest!17863 () (InoxSet Context!3030))

(assert (=> setNonEmpty!17863 (= (_1!14687 (_1!14688 (h!30362 mapDefault!13907))) ((_ map or) (store ((as const (Array Context!3030 Bool)) false) setElem!17863 true) setRest!17863))))

(assert (= (and b!2158466 condSetEmpty!17863) setIsEmpty!17863))

(assert (= (and b!2158466 (not condSetEmpty!17863)) setNonEmpty!17863))

(assert (= setNonEmpty!17863 b!2158467))

(assert (= (and b!2158306 ((_ is Cons!24961) mapDefault!13907)) b!2158466))

(declare-fun m!2598578 () Bool)

(assert (=> setNonEmpty!17863 m!2598578))

(declare-fun b_lambda!71031 () Bool)

(assert (= b_lambda!71029 (or b!2158303 b_lambda!71031)))

(declare-fun bs!445965 () Bool)

(declare-fun d!646684 () Bool)

(assert (= bs!445965 (and d!646684 b!2158303)))

(declare-fun validCacheMapFurthestNullableBody!33 (tuple2!24660 BalanceConc!15924) Bool)

(assert (=> bs!445965 (= (dynLambda!11422 lambda!81487 (h!30362 (toList!1128 (map!5027 (_2!14689 lt!802196))))) (validCacheMapFurthestNullableBody!33 (h!30362 (toList!1128 (map!5027 (_2!14689 lt!802196)))) localTotalInput!17))))

(declare-fun m!2598580 () Bool)

(assert (=> bs!445965 m!2598580))

(assert (=> b!2158330 d!646684))

(check-sat (not b!2158465) (not setNonEmpty!17858) (not bm!129341) (not b!2158415) (not b!2158414) (not bm!129365) (not setNonEmpty!17863) (not bm!129347) (not bm!129358) (not bm!129356) (not b!2158320) b_and!173391 (not b!2158392) (not bm!129336) (not d!646668) (not b!2158464) (not b!2158376) (not d!646662) (not b!2158467) (not mapNonEmpty!13910) (not bm!129351) (not bm!129355) (not bm!129363) (not b!2158423) (not b!2158371) (not b_lambda!71031) (not setNonEmpty!17857) (not b!2158400) (not b!2158394) (not bm!129364) (not bm!129344) (not b!2158425) (not bm!129350) (not b!2158462) (not b!2158450) (not bm!129359) (not bm!129338) (not bm!129346) (not b!2158449) (not b!2158309) (not b!2158434) (not setNonEmpty!17851) (not b!2158435) (not b!2158463) b_and!173389 (not bm!129342) (not b!2158447) (not bm!129361) (not d!646666) (not d!646672) (not bm!129348) (not b!2158391) (not b!2158436) (not setNonEmpty!17852) (not setNonEmpty!17862) (not b!2158331) (not b!2158325) (not d!646658) (not bm!129362) (not b!2158374) (not bm!129349) (not bm!129337) (not bm!129340) (not b!2158452) (not d!646670) (not b!2158399) (not b!2158448) (not b!2158386) (not bm!129354) (not d!646678) (not b_next!64477) (not b!2158370) (not b!2158457) (not bm!129352) (not bm!129366) (not b!2158466) (not bm!129345) (not bs!445965) (not b!2158296) (not bm!129343) (not bm!129357) (not b_next!64479) (not d!646680) (not setNonEmpty!17859) (not b!2158377) (not d!646676) (not b!2158451) (not bm!129360) (not b!2158424) (not b!2158322) (not b!2158422))
(check-sat b_and!173391 b_and!173389 (not b_next!64479) (not b_next!64477))
