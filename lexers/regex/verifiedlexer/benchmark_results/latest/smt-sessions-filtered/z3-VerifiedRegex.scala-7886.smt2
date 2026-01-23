; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412168 () Bool)

(assert start!412168)

(declare-fun b!4293089 () Bool)

(declare-fun b_free!127591 () Bool)

(declare-fun b_next!128295 () Bool)

(assert (=> b!4293089 (= b_free!127591 (not b_next!128295))))

(declare-fun tp!1317353 () Bool)

(declare-fun b_and!338807 () Bool)

(assert (=> b!4293089 (= tp!1317353 b_and!338807)))

(declare-fun b!4293095 () Bool)

(declare-fun b_free!127593 () Bool)

(declare-fun b_next!128297 () Bool)

(assert (=> b!4293095 (= b_free!127593 (not b_next!128297))))

(declare-fun tp!1317338 () Bool)

(declare-fun b_and!338809 () Bool)

(assert (=> b!4293095 (= tp!1317338 b_and!338809)))

(declare-fun b!4293118 () Bool)

(declare-fun b_free!127595 () Bool)

(declare-fun b_next!128299 () Bool)

(assert (=> b!4293118 (= b_free!127595 (not b_next!128299))))

(declare-fun tp!1317349 () Bool)

(declare-fun b_and!338811 () Bool)

(assert (=> b!4293118 (= tp!1317349 b_and!338811)))

(declare-fun b!4293088 () Bool)

(declare-fun b_free!127597 () Bool)

(declare-fun b_next!128301 () Bool)

(assert (=> b!4293088 (= b_free!127597 (not b_next!128301))))

(declare-fun tp!1317348 () Bool)

(declare-fun b_and!338813 () Bool)

(assert (=> b!4293088 (= tp!1317348 b_and!338813)))

(declare-fun b!4293102 () Bool)

(declare-fun b_free!127599 () Bool)

(declare-fun b_next!128303 () Bool)

(assert (=> b!4293102 (= b_free!127599 (not b_next!128303))))

(declare-fun tp!1317331 () Bool)

(declare-fun b_and!338815 () Bool)

(assert (=> b!4293102 (= tp!1317331 b_and!338815)))

(declare-fun b!4293124 () Bool)

(declare-fun b_free!127601 () Bool)

(declare-fun b_next!128305 () Bool)

(assert (=> b!4293124 (= b_free!127601 (not b_next!128305))))

(declare-fun tp!1317352 () Bool)

(declare-fun b_and!338817 () Bool)

(assert (=> b!4293124 (= tp!1317352 b_and!338817)))

(declare-fun setIsEmpty!26535 () Bool)

(declare-fun setRes!26535 () Bool)

(assert (=> setIsEmpty!26535 setRes!26535))

(declare-fun e!2667365 () Bool)

(declare-fun e!2667387 () Bool)

(declare-datatypes ((C!26140 0))(
  ( (C!26141 (val!15396 Int)) )
))
(declare-datatypes ((Regex!12971 0))(
  ( (ElementMatch!12971 (c!730616 C!26140)) (Concat!21290 (regOne!26454 Regex!12971) (regTwo!26454 Regex!12971)) (EmptyExpr!12971) (Star!12971 (reg!13300 Regex!12971)) (EmptyLang!12971) (Union!12971 (regOne!26455 Regex!12971) (regTwo!26455 Regex!12971)) )
))
(declare-datatypes ((List!47881 0))(
  ( (Nil!47757) (Cons!47757 (h!53177 Regex!12971) (t!354485 List!47881)) )
))
(declare-datatypes ((Context!5722 0))(
  ( (Context!5723 (exprs!3361 List!47881)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45464 0))(
  ( (tuple2!45465 (_1!25986 (InoxSet Context!5722)) (_2!25986 Int)) )
))
(declare-datatypes ((Hashable!4352 0))(
  ( (HashableExt!4351 (__x!29333 Int)) )
))
(declare-datatypes ((array!15832 0))(
  ( (array!15833 (arr!7074 (Array (_ BitVec 32) (_ BitVec 64))) (size!35067 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!45466 0))(
  ( (tuple2!45467 (_1!25987 tuple2!45464) (_2!25987 Int)) )
))
(declare-datatypes ((List!47882 0))(
  ( (Nil!47758) (Cons!47758 (h!53178 tuple2!45466) (t!354486 List!47882)) )
))
(declare-datatypes ((array!15834 0))(
  ( (array!15835 (arr!7075 (Array (_ BitVec 32) List!47882)) (size!35068 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8872 0))(
  ( (LongMapFixedSize!8873 (defaultEntry!4821 Int) (mask!12891 (_ BitVec 32)) (extraKeys!4685 (_ BitVec 32)) (zeroValue!4695 List!47882) (minValue!4695 List!47882) (_size!8915 (_ BitVec 32)) (_keys!4736 array!15832) (_values!4717 array!15834) (_vacant!4497 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17553 0))(
  ( (Cell!17554 (v!41694 LongMapFixedSize!8872)) )
))
(declare-datatypes ((MutLongMap!4436 0))(
  ( (LongMap!4436 (underlying!9101 Cell!17553)) (MutLongMapExt!4435 (__x!29334 Int)) )
))
(declare-datatypes ((Cell!17555 0))(
  ( (Cell!17556 (v!41695 MutLongMap!4436)) )
))
(declare-datatypes ((MutableMap!4342 0))(
  ( (MutableMapExt!4341 (__x!29335 Int)) (HashMap!4342 (underlying!9102 Cell!17555) (hashF!6384 Hashable!4352) (_size!8916 (_ BitVec 32)) (defaultValue!4513 Int)) )
))
(declare-datatypes ((List!47883 0))(
  ( (Nil!47759) (Cons!47759 (h!53179 C!26140) (t!354487 List!47883)) )
))
(declare-datatypes ((IArray!28885 0))(
  ( (IArray!28886 (innerList!14500 List!47883)) )
))
(declare-datatypes ((Conc!14412 0))(
  ( (Node!14412 (left!35436 Conc!14412) (right!35766 Conc!14412) (csize!29054 Int) (cheight!14623 Int)) (Leaf!22299 (xs!17718 IArray!28885) (csize!29055 Int)) (Empty!14412) )
))
(declare-datatypes ((BalanceConc!28314 0))(
  ( (BalanceConc!28315 (c!730617 Conc!14412)) )
))
(declare-datatypes ((CacheFindLongestMatch!512 0))(
  ( (CacheFindLongestMatch!513 (cache!4482 MutableMap!4342) (totalInput!4378 BalanceConc!28314)) )
))
(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!512)

(declare-fun b!4293085 () Bool)

(declare-fun e!2667370 () Bool)

(declare-fun inv!63273 (BalanceConc!28314) Bool)

(assert (=> b!4293085 (= e!2667387 (and e!2667365 (inv!63273 (totalInput!4378 cacheFindLongestMatch!183)) e!2667370))))

(declare-fun b!4293086 () Bool)

(declare-fun e!2667383 () Bool)

(declare-fun e!2667364 () Bool)

(declare-datatypes ((tuple3!5462 0))(
  ( (tuple3!5463 (_1!25988 Regex!12971) (_2!25988 Context!5722) (_3!3254 C!26140)) )
))
(declare-datatypes ((tuple2!45468 0))(
  ( (tuple2!45469 (_1!25989 tuple3!5462) (_2!25989 (InoxSet Context!5722))) )
))
(declare-datatypes ((List!47884 0))(
  ( (Nil!47760) (Cons!47760 (h!53180 tuple2!45468) (t!354488 List!47884)) )
))
(declare-datatypes ((array!15836 0))(
  ( (array!15837 (arr!7076 (Array (_ BitVec 32) List!47884)) (size!35069 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8874 0))(
  ( (LongMapFixedSize!8875 (defaultEntry!4822 Int) (mask!12892 (_ BitVec 32)) (extraKeys!4686 (_ BitVec 32)) (zeroValue!4696 List!47884) (minValue!4696 List!47884) (_size!8917 (_ BitVec 32)) (_keys!4737 array!15832) (_values!4718 array!15836) (_vacant!4498 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17557 0))(
  ( (Cell!17558 (v!41696 LongMapFixedSize!8874)) )
))
(declare-datatypes ((MutLongMap!4437 0))(
  ( (LongMap!4437 (underlying!9103 Cell!17557)) (MutLongMapExt!4436 (__x!29336 Int)) )
))
(declare-fun lt!1517431 () MutLongMap!4437)

(get-info :version)

(assert (=> b!4293086 (= e!2667383 (and e!2667364 ((_ is LongMap!4437) lt!1517431)))))

(declare-datatypes ((Hashable!4353 0))(
  ( (HashableExt!4352 (__x!29337 Int)) )
))
(declare-datatypes ((Cell!17559 0))(
  ( (Cell!17560 (v!41697 MutLongMap!4437)) )
))
(declare-datatypes ((MutableMap!4343 0))(
  ( (MutableMapExt!4342 (__x!29338 Int)) (HashMap!4343 (underlying!9104 Cell!17559) (hashF!6385 Hashable!4353) (_size!8918 (_ BitVec 32)) (defaultValue!4514 Int)) )
))
(declare-datatypes ((CacheDown!2950 0))(
  ( (CacheDown!2951 (cache!4483 MutableMap!4343)) )
))
(declare-fun cacheDown!1066 () CacheDown!2950)

(assert (=> b!4293086 (= lt!1517431 (v!41697 (underlying!9104 (cache!4483 cacheDown!1066))))))

(declare-fun mapIsEmpty!19951 () Bool)

(declare-fun mapRes!19953 () Bool)

(assert (=> mapIsEmpty!19951 mapRes!19953))

(declare-fun b!4293087 () Bool)

(declare-fun e!2667361 () Bool)

(declare-fun tp!1317346 () Bool)

(declare-fun mapRes!19952 () Bool)

(assert (=> b!4293087 (= e!2667361 (and tp!1317346 mapRes!19952))))

(declare-fun condMapEmpty!19953 () Bool)

(declare-fun mapDefault!19953 () List!47884)

(assert (=> b!4293087 (= condMapEmpty!19953 (= (arr!7076 (_values!4718 (v!41696 (underlying!9103 (v!41697 (underlying!9104 (cache!4483 cacheDown!1066))))))) ((as const (Array (_ BitVec 32) List!47884)) mapDefault!19953)))))

(declare-fun e!2667372 () Bool)

(declare-fun tp!1317333 () Bool)

(declare-fun e!2667382 () Bool)

(declare-fun tp!1317351 () Bool)

(declare-datatypes ((tuple2!45470 0))(
  ( (tuple2!45471 (_1!25990 Context!5722) (_2!25990 C!26140)) )
))
(declare-datatypes ((tuple2!45472 0))(
  ( (tuple2!45473 (_1!25991 tuple2!45470) (_2!25991 (InoxSet Context!5722))) )
))
(declare-datatypes ((List!47885 0))(
  ( (Nil!47761) (Cons!47761 (h!53181 tuple2!45472) (t!354489 List!47885)) )
))
(declare-datatypes ((array!15838 0))(
  ( (array!15839 (arr!7077 (Array (_ BitVec 32) List!47885)) (size!35070 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8876 0))(
  ( (LongMapFixedSize!8877 (defaultEntry!4823 Int) (mask!12893 (_ BitVec 32)) (extraKeys!4687 (_ BitVec 32)) (zeroValue!4697 List!47885) (minValue!4697 List!47885) (_size!8919 (_ BitVec 32)) (_keys!4738 array!15832) (_values!4719 array!15838) (_vacant!4499 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17561 0))(
  ( (Cell!17562 (v!41698 LongMapFixedSize!8876)) )
))
(declare-datatypes ((MutLongMap!4438 0))(
  ( (LongMap!4438 (underlying!9105 Cell!17561)) (MutLongMapExt!4437 (__x!29339 Int)) )
))
(declare-datatypes ((Cell!17563 0))(
  ( (Cell!17564 (v!41699 MutLongMap!4438)) )
))
(declare-datatypes ((Hashable!4354 0))(
  ( (HashableExt!4353 (__x!29340 Int)) )
))
(declare-datatypes ((MutableMap!4344 0))(
  ( (MutableMapExt!4343 (__x!29341 Int)) (HashMap!4344 (underlying!9106 Cell!17563) (hashF!6386 Hashable!4354) (_size!8920 (_ BitVec 32)) (defaultValue!4515 Int)) )
))
(declare-datatypes ((CacheUp!2830 0))(
  ( (CacheUp!2831 (cache!4484 MutableMap!4344)) )
))
(declare-fun cacheUp!947 () CacheUp!2830)

(declare-fun array_inv!5073 (array!15832) Bool)

(declare-fun array_inv!5074 (array!15838) Bool)

(assert (=> b!4293088 (= e!2667372 (and tp!1317348 tp!1317351 tp!1317333 (array_inv!5073 (_keys!4738 (v!41698 (underlying!9105 (v!41699 (underlying!9106 (cache!4484 cacheUp!947))))))) (array_inv!5074 (_values!4719 (v!41698 (underlying!9105 (v!41699 (underlying!9106 (cache!4484 cacheUp!947))))))) e!2667382))))

(declare-fun setNonEmpty!26535 () Bool)

(declare-fun e!2667381 () Bool)

(declare-fun tp!1317344 () Bool)

(declare-fun setElem!26535 () Context!5722)

(declare-fun inv!63274 (Context!5722) Bool)

(assert (=> setNonEmpty!26535 (= setRes!26535 (and tp!1317344 (inv!63274 setElem!26535) e!2667381))))

(declare-fun z!3765 () (InoxSet Context!5722))

(declare-fun setRest!26535 () (InoxSet Context!5722))

(assert (=> setNonEmpty!26535 (= z!3765 ((_ map or) (store ((as const (Array Context!5722 Bool)) false) setElem!26535 true) setRest!26535))))

(declare-fun mapNonEmpty!19951 () Bool)

(declare-fun tp!1317342 () Bool)

(declare-fun tp!1317350 () Bool)

(assert (=> mapNonEmpty!19951 (= mapRes!19952 (and tp!1317342 tp!1317350))))

(declare-fun mapKey!19951 () (_ BitVec 32))

(declare-fun mapRest!19952 () (Array (_ BitVec 32) List!47884))

(declare-fun mapValue!19952 () List!47884)

(assert (=> mapNonEmpty!19951 (= (arr!7076 (_values!4718 (v!41696 (underlying!9103 (v!41697 (underlying!9104 (cache!4483 cacheDown!1066))))))) (store mapRest!19952 mapKey!19951 mapValue!19952))))

(declare-fun e!2667378 () Bool)

(declare-fun tp!1317335 () Bool)

(declare-fun tp!1317330 () Bool)

(declare-fun array_inv!5075 (array!15836) Bool)

(assert (=> b!4293089 (= e!2667378 (and tp!1317353 tp!1317330 tp!1317335 (array_inv!5073 (_keys!4737 (v!41696 (underlying!9103 (v!41697 (underlying!9104 (cache!4483 cacheDown!1066))))))) (array_inv!5075 (_values!4718 (v!41696 (underlying!9103 (v!41697 (underlying!9104 (cache!4483 cacheDown!1066))))))) e!2667361))))

(declare-fun b!4293090 () Bool)

(declare-fun e!2667393 () Int)

(assert (=> b!4293090 (= e!2667393 0)))

(declare-datatypes ((tuple4!1046 0))(
  ( (tuple4!1047 (_1!25992 Int) (_2!25992 CacheFindLongestMatch!512) (_3!3255 CacheDown!2950) (_4!523 CacheUp!2830)) )
))
(declare-fun e!2667396 () tuple4!1046)

(declare-fun b!4293091 () Bool)

(assert (=> b!4293091 (= e!2667396 (tuple4!1047 0 cacheFindLongestMatch!183 cacheDown!1066 cacheUp!947))))

(declare-fun b!4293092 () Bool)

(declare-fun e!2667392 () Bool)

(assert (=> b!4293092 (= e!2667392 e!2667372)))

(declare-fun b!4293093 () Bool)

(declare-fun e!2667377 () Int)

(assert (=> b!4293093 (= e!2667377 e!2667393)))

(declare-fun c!730611 () Bool)

(declare-datatypes ((tuple3!5464 0))(
  ( (tuple3!5465 (_1!25993 (InoxSet Context!5722)) (_2!25993 CacheUp!2830) (_3!3256 CacheDown!2950)) )
))
(declare-fun lt!1517427 () tuple3!5464)

(declare-fun nullableZipper!772 ((InoxSet Context!5722)) Bool)

(assert (=> b!4293093 (= c!730611 (nullableZipper!772 (_1!25993 lt!1517427)))))

(declare-fun b!4293094 () Bool)

(declare-fun e!2667385 () Bool)

(declare-fun e!2667366 () Bool)

(declare-fun lt!1517429 () MutLongMap!4438)

(assert (=> b!4293094 (= e!2667385 (and e!2667366 ((_ is LongMap!4438) lt!1517429)))))

(assert (=> b!4293094 (= lt!1517429 (v!41699 (underlying!9106 (cache!4484 cacheUp!947))))))

(declare-fun e!2667384 () Bool)

(assert (=> b!4293095 (= e!2667384 (and e!2667383 tp!1317338))))

(declare-fun b!4293096 () Bool)

(declare-fun e!2667362 () Bool)

(assert (=> b!4293096 (= e!2667362 e!2667384)))

(declare-fun b!4293097 () Bool)

(assert (=> b!4293097 (= e!2667393 1)))

(declare-fun b!4293098 () Bool)

(declare-fun e!2667379 () Int)

(declare-fun e!2667391 () Int)

(assert (=> b!4293098 (= e!2667379 e!2667391)))

(declare-fun c!730614 () Bool)

(declare-fun lt!1517435 () (InoxSet Context!5722))

(assert (=> b!4293098 (= c!730614 (nullableZipper!772 lt!1517435))))

(declare-fun b!4293099 () Bool)

(declare-fun lt!1517438 () tuple4!1046)

(declare-fun totalInput!812 () BalanceConc!28314)

(declare-fun e!2667368 () tuple4!1046)

(declare-fun from!999 () Int)

(declare-datatypes ((Unit!66418 0))(
  ( (Unit!66419) )
))
(declare-datatypes ((tuple2!45474 0))(
  ( (tuple2!45475 (_1!25994 Unit!66418) (_2!25994 CacheFindLongestMatch!512)) )
))
(declare-fun update!284 (CacheFindLongestMatch!512 (InoxSet Context!5722) Int Int BalanceConc!28314) tuple2!45474)

(assert (=> b!4293099 (= e!2667368 (tuple4!1047 (_1!25992 lt!1517438) (_2!25994 (update!284 (_2!25992 lt!1517438) z!3765 from!999 (_1!25992 lt!1517438) totalInput!812)) (_3!3255 lt!1517438) (_4!523 lt!1517438)))))

(declare-fun res!1760202 () Bool)

(declare-fun totalInputSize!257 () Int)

(assert (=> b!4293099 (= res!1760202 (= from!999 totalInputSize!257))))

(declare-fun e!2667375 () Bool)

(assert (=> b!4293099 (=> res!1760202 e!2667375)))

(declare-fun lt!1517425 () Bool)

(assert (=> b!4293099 (= lt!1517425 e!2667375)))

(declare-fun c!730612 () Bool)

(assert (=> b!4293099 (= c!730612 lt!1517425)))

(assert (=> b!4293099 (= lt!1517438 e!2667396)))

(declare-fun lt!1517430 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!38 ((InoxSet Context!5722) Int BalanceConc!28314 Int) Int)

(assert (=> b!4293099 (= lt!1517430 (findLongestMatchInnerZipperFastV2!38 z!3765 from!999 totalInput!812 totalInputSize!257))))

(declare-fun c!730609 () Bool)

(assert (=> b!4293099 (= c!730609 lt!1517425)))

(declare-fun e!2667390 () Bool)

(assert (=> b!4293099 e!2667390))

(declare-fun lt!1517433 () Unit!66418)

(declare-fun lemmaInvariant!413 (CacheFindLongestMatch!512) Unit!66418)

(assert (=> b!4293099 (= lt!1517433 (lemmaInvariant!413 (_2!25992 lt!1517438)))))

(declare-fun mapNonEmpty!19952 () Bool)

(declare-fun tp!1317354 () Bool)

(declare-fun tp!1317340 () Bool)

(assert (=> mapNonEmpty!19952 (= mapRes!19953 (and tp!1317354 tp!1317340))))

(declare-fun mapValue!19953 () List!47885)

(declare-fun mapRest!19953 () (Array (_ BitVec 32) List!47885))

(declare-fun mapKey!19952 () (_ BitVec 32))

(assert (=> mapNonEmpty!19952 (= (arr!7077 (_values!4719 (v!41698 (underlying!9105 (v!41699 (underlying!9106 (cache!4484 cacheUp!947))))))) (store mapRest!19953 mapKey!19952 mapValue!19953))))

(declare-fun mapIsEmpty!19952 () Bool)

(declare-fun mapRes!19951 () Bool)

(assert (=> mapIsEmpty!19952 mapRes!19951))

(declare-fun mapNonEmpty!19953 () Bool)

(declare-fun tp!1317339 () Bool)

(declare-fun tp!1317345 () Bool)

(assert (=> mapNonEmpty!19953 (= mapRes!19951 (and tp!1317339 tp!1317345))))

(declare-fun mapValue!19951 () List!47882)

(declare-fun mapRest!19951 () (Array (_ BitVec 32) List!47882))

(declare-fun mapKey!19953 () (_ BitVec 32))

(assert (=> mapNonEmpty!19953 (= (arr!7075 (_values!4717 (v!41694 (underlying!9101 (v!41695 (underlying!9102 (cache!4482 cacheFindLongestMatch!183))))))) (store mapRest!19951 mapKey!19953 mapValue!19951))))

(declare-fun mapIsEmpty!19953 () Bool)

(assert (=> mapIsEmpty!19953 mapRes!19952))

(declare-fun b!4293100 () Bool)

(declare-fun e!2667367 () Bool)

(declare-fun tp!1317332 () Bool)

(assert (=> b!4293100 (= e!2667367 (and tp!1317332 mapRes!19951))))

(declare-fun condMapEmpty!19952 () Bool)

(declare-fun mapDefault!19952 () List!47882)

(assert (=> b!4293100 (= condMapEmpty!19952 (= (arr!7075 (_values!4717 (v!41694 (underlying!9101 (v!41695 (underlying!9102 (cache!4482 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47882)) mapDefault!19952)))))

(declare-fun b!4293101 () Bool)

(declare-fun e!2667395 () Bool)

(assert (=> b!4293101 (= e!2667395 e!2667378)))

(declare-fun e!2667394 () Bool)

(assert (=> b!4293102 (= e!2667365 (and e!2667394 tp!1317331))))

(declare-fun b!4293103 () Bool)

(declare-fun tp!1317341 () Bool)

(assert (=> b!4293103 (= e!2667381 tp!1317341)))

(declare-fun b!4293104 () Bool)

(declare-fun res!1760205 () Bool)

(declare-fun e!2667374 () Bool)

(assert (=> b!4293104 (=> (not res!1760205) (not e!2667374))))

(declare-datatypes ((tuple4!1048 0))(
  ( (tuple4!1049 (_1!25995 Int) (_2!25995 CacheUp!2830) (_3!3257 CacheDown!2950) (_4!524 CacheFindLongestMatch!512)) )
))
(declare-fun lt!1517434 () tuple4!1048)

(declare-fun valid!3437 (CacheDown!2950) Bool)

(assert (=> b!4293104 (= res!1760205 (valid!3437 (_3!3257 lt!1517434)))))

(declare-fun b!4293105 () Bool)

(declare-datatypes ((Option!10142 0))(
  ( (None!10141) (Some!10141 (v!41700 Int)) )
))
(declare-fun lt!1517437 () Option!10142)

(assert (=> b!4293105 (= e!2667368 (tuple4!1047 (v!41700 lt!1517437) cacheFindLongestMatch!183 cacheDown!1066 cacheUp!947))))

(declare-fun b!4293106 () Bool)

(declare-fun res!1760199 () Bool)

(assert (=> b!4293106 (=> (not res!1760199) (not e!2667374))))

(declare-fun valid!3438 (CacheFindLongestMatch!512) Bool)

(assert (=> b!4293106 (= res!1760199 (valid!3438 (_4!524 lt!1517434)))))

(declare-fun b!4293107 () Bool)

(assert (=> b!4293107 (= e!2667390 (= lt!1517430 0))))

(declare-fun b!4293108 () Bool)

(declare-fun c!730613 () Bool)

(assert (=> b!4293108 (= c!730613 (> (_1!25995 lt!1517434) 0))))

(assert (=> b!4293108 e!2667374))

(declare-fun res!1760203 () Bool)

(assert (=> b!4293108 (=> (not res!1760203) (not e!2667374))))

(assert (=> b!4293108 (= res!1760203 (= (_1!25995 lt!1517434) (findLongestMatchInnerZipperFastV2!38 (_1!25993 lt!1517427) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!18 ((InoxSet Context!5722) Int BalanceConc!28314 Int CacheUp!2830 CacheDown!2950 CacheFindLongestMatch!512) tuple4!1048)

(assert (=> b!4293108 (= lt!1517434 (findLongestMatchInnerZipperFastV2Mem!18 (_1!25993 lt!1517427) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!25993 lt!1517427) (_3!3256 lt!1517427) cacheFindLongestMatch!183))))

(declare-fun derivationStepZipperMem!134 ((InoxSet Context!5722) C!26140 CacheUp!2830 CacheDown!2950) tuple3!5464)

(declare-fun apply!10841 (BalanceConc!28314 Int) C!26140)

(assert (=> b!4293108 (= lt!1517427 (derivationStepZipperMem!134 z!3765 (apply!10841 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(assert (=> b!4293108 (= e!2667396 (tuple4!1047 e!2667377 (_4!524 lt!1517434) (_3!3257 lt!1517434) (_2!25995 lt!1517434)))))

(declare-fun b!4293109 () Bool)

(declare-fun tp!1317343 () Bool)

(assert (=> b!4293109 (= e!2667382 (and tp!1317343 mapRes!19953))))

(declare-fun condMapEmpty!19951 () Bool)

(declare-fun mapDefault!19951 () List!47885)

(assert (=> b!4293109 (= condMapEmpty!19951 (= (arr!7077 (_values!4719 (v!41698 (underlying!9105 (v!41699 (underlying!9106 (cache!4484 cacheUp!947))))))) ((as const (Array (_ BitVec 32) List!47885)) mapDefault!19951)))))

(declare-fun b!4293110 () Bool)

(assert (=> b!4293110 (= e!2667366 e!2667392)))

(declare-fun b!4293111 () Bool)

(declare-fun e!2667369 () Bool)

(declare-fun e!2667398 () Bool)

(assert (=> b!4293111 (= e!2667369 e!2667398)))

(declare-fun b!4293112 () Bool)

(assert (=> b!4293112 (= e!2667364 e!2667395)))

(declare-fun b!4293113 () Bool)

(declare-fun e!2667386 () Bool)

(declare-fun tp!1317334 () Bool)

(declare-fun inv!63275 (Conc!14412) Bool)

(assert (=> b!4293113 (= e!2667386 (and (inv!63275 (c!730617 totalInput!812)) tp!1317334))))

(declare-fun b!4293114 () Bool)

(assert (=> b!4293114 (= e!2667391 1)))

(declare-fun b!4293115 () Bool)

(declare-fun c!730615 () Bool)

(declare-fun lt!1517426 () Int)

(assert (=> b!4293115 (= c!730615 (> lt!1517426 0))))

(assert (=> b!4293115 (= lt!1517426 (findLongestMatchInnerZipperFastV2!38 lt!1517435 (+ 1 from!999) totalInput!812 totalInputSize!257))))

(declare-fun derivationStepZipper!550 ((InoxSet Context!5722) C!26140) (InoxSet Context!5722))

(assert (=> b!4293115 (= lt!1517435 (derivationStepZipper!550 z!3765 (apply!10841 totalInput!812 from!999)))))

(assert (=> b!4293115 (= e!2667390 (= lt!1517430 e!2667379))))

(declare-fun b!4293116 () Bool)

(assert (=> b!4293116 (= e!2667374 (= (totalInput!4378 (_4!524 lt!1517434)) totalInput!812))))

(declare-fun b!4293117 () Bool)

(declare-fun res!1760201 () Bool)

(assert (=> b!4293117 (=> (not res!1760201) (not e!2667374))))

(declare-fun valid!3439 (CacheUp!2830) Bool)

(assert (=> b!4293117 (= res!1760201 (valid!3439 (_2!25995 lt!1517434)))))

(declare-fun tp!1317337 () Bool)

(declare-fun e!2667389 () Bool)

(declare-fun tp!1317347 () Bool)

(declare-fun array_inv!5076 (array!15834) Bool)

(assert (=> b!4293118 (= e!2667389 (and tp!1317349 tp!1317347 tp!1317337 (array_inv!5073 (_keys!4736 (v!41694 (underlying!9101 (v!41695 (underlying!9102 (cache!4482 cacheFindLongestMatch!183))))))) (array_inv!5076 (_values!4717 (v!41694 (underlying!9101 (v!41695 (underlying!9102 (cache!4482 cacheFindLongestMatch!183))))))) e!2667367))))

(declare-fun b!4293119 () Bool)

(declare-fun lt!1517436 () MutLongMap!4436)

(assert (=> b!4293119 (= e!2667394 (and e!2667369 ((_ is LongMap!4436) lt!1517436)))))

(assert (=> b!4293119 (= lt!1517436 (v!41695 (underlying!9102 (cache!4482 cacheFindLongestMatch!183))))))

(declare-fun b!4293120 () Bool)

(declare-fun e!2667388 () Bool)

(declare-fun e!2667376 () Bool)

(assert (=> b!4293120 (= e!2667388 e!2667376)))

(declare-fun res!1760204 () Bool)

(assert (=> b!4293120 (=> (not res!1760204) (not e!2667376))))

(declare-fun lt!1517428 () Int)

(assert (=> b!4293120 (= res!1760204 (and (<= from!999 lt!1517428) (= totalInputSize!257 lt!1517428) (= (totalInput!4378 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35071 (BalanceConc!28314) Int)

(assert (=> b!4293120 (= lt!1517428 (size!35071 totalInput!812))))

(declare-fun b!4293121 () Bool)

(assert (=> b!4293121 (= e!2667376 false)))

(declare-fun lt!1517432 () tuple4!1046)

(assert (=> b!4293121 (= lt!1517432 e!2667368)))

(declare-fun c!730610 () Bool)

(assert (=> b!4293121 (= c!730610 ((_ is Some!10141) lt!1517437))))

(declare-fun get!15459 (CacheFindLongestMatch!512 (InoxSet Context!5722) Int) Option!10142)

(assert (=> b!4293121 (= lt!1517437 (get!15459 cacheFindLongestMatch!183 z!3765 from!999))))

(declare-fun b!4293122 () Bool)

(assert (=> b!4293122 (= e!2667379 (+ 1 lt!1517426))))

(declare-fun b!4293123 () Bool)

(assert (=> b!4293123 (= e!2667391 0)))

(declare-fun e!2667397 () Bool)

(assert (=> b!4293124 (= e!2667397 (and e!2667385 tp!1317352))))

(declare-fun b!4293125 () Bool)

(assert (=> b!4293125 (= e!2667398 e!2667389)))

(declare-fun b!4293126 () Bool)

(declare-fun lostCauseZipper!650 ((InoxSet Context!5722)) Bool)

(assert (=> b!4293126 (= e!2667375 (lostCauseZipper!650 z!3765))))

(declare-fun b!4293127 () Bool)

(declare-fun tp!1317336 () Bool)

(assert (=> b!4293127 (= e!2667370 (and (inv!63275 (c!730617 (totalInput!4378 cacheFindLongestMatch!183))) tp!1317336))))

(declare-fun b!4293128 () Bool)

(assert (=> b!4293128 (= e!2667377 (+ 1 (_1!25995 lt!1517434)))))

(declare-fun b!4293129 () Bool)

(declare-fun e!2667371 () Bool)

(assert (=> b!4293129 (= e!2667371 e!2667397)))

(declare-fun res!1760200 () Bool)

(assert (=> start!412168 (=> (not res!1760200) (not e!2667388))))

(assert (=> start!412168 (= res!1760200 (>= from!999 0))))

(assert (=> start!412168 e!2667388))

(declare-fun inv!63276 (CacheDown!2950) Bool)

(assert (=> start!412168 (and (inv!63276 cacheDown!1066) e!2667362)))

(declare-fun inv!63277 (CacheFindLongestMatch!512) Bool)

(assert (=> start!412168 (and (inv!63277 cacheFindLongestMatch!183) e!2667387)))

(declare-fun condSetEmpty!26535 () Bool)

(assert (=> start!412168 (= condSetEmpty!26535 (= z!3765 ((as const (Array Context!5722 Bool)) false)))))

(assert (=> start!412168 setRes!26535))

(assert (=> start!412168 true))

(assert (=> start!412168 (and (inv!63273 totalInput!812) e!2667386)))

(declare-fun inv!63278 (CacheUp!2830) Bool)

(assert (=> start!412168 (and (inv!63278 cacheUp!947) e!2667371)))

(assert (= (and start!412168 res!1760200) b!4293120))

(assert (= (and b!4293120 res!1760204) b!4293121))

(assert (= (and b!4293121 c!730610) b!4293105))

(assert (= (and b!4293121 (not c!730610)) b!4293099))

(assert (= (and b!4293099 (not res!1760202)) b!4293126))

(assert (= (and b!4293099 c!730612) b!4293091))

(assert (= (and b!4293099 (not c!730612)) b!4293108))

(assert (= (and b!4293108 res!1760203) b!4293117))

(assert (= (and b!4293117 res!1760201) b!4293104))

(assert (= (and b!4293104 res!1760205) b!4293106))

(assert (= (and b!4293106 res!1760199) b!4293116))

(assert (= (and b!4293108 c!730613) b!4293128))

(assert (= (and b!4293108 (not c!730613)) b!4293093))

(assert (= (and b!4293093 c!730611) b!4293097))

(assert (= (and b!4293093 (not c!730611)) b!4293090))

(assert (= (and b!4293099 c!730609) b!4293107))

(assert (= (and b!4293099 (not c!730609)) b!4293115))

(assert (= (and b!4293115 c!730615) b!4293122))

(assert (= (and b!4293115 (not c!730615)) b!4293098))

(assert (= (and b!4293098 c!730614) b!4293114))

(assert (= (and b!4293098 (not c!730614)) b!4293123))

(assert (= (and b!4293087 condMapEmpty!19953) mapIsEmpty!19953))

(assert (= (and b!4293087 (not condMapEmpty!19953)) mapNonEmpty!19951))

(assert (= b!4293089 b!4293087))

(assert (= b!4293101 b!4293089))

(assert (= b!4293112 b!4293101))

(assert (= (and b!4293086 ((_ is LongMap!4437) (v!41697 (underlying!9104 (cache!4483 cacheDown!1066))))) b!4293112))

(assert (= b!4293095 b!4293086))

(assert (= (and b!4293096 ((_ is HashMap!4343) (cache!4483 cacheDown!1066))) b!4293095))

(assert (= start!412168 b!4293096))

(assert (= (and b!4293100 condMapEmpty!19952) mapIsEmpty!19952))

(assert (= (and b!4293100 (not condMapEmpty!19952)) mapNonEmpty!19953))

(assert (= b!4293118 b!4293100))

(assert (= b!4293125 b!4293118))

(assert (= b!4293111 b!4293125))

(assert (= (and b!4293119 ((_ is LongMap!4436) (v!41695 (underlying!9102 (cache!4482 cacheFindLongestMatch!183))))) b!4293111))

(assert (= b!4293102 b!4293119))

(assert (= (and b!4293085 ((_ is HashMap!4342) (cache!4482 cacheFindLongestMatch!183))) b!4293102))

(assert (= b!4293085 b!4293127))

(assert (= start!412168 b!4293085))

(assert (= (and start!412168 condSetEmpty!26535) setIsEmpty!26535))

(assert (= (and start!412168 (not condSetEmpty!26535)) setNonEmpty!26535))

(assert (= setNonEmpty!26535 b!4293103))

(assert (= start!412168 b!4293113))

(assert (= (and b!4293109 condMapEmpty!19951) mapIsEmpty!19951))

(assert (= (and b!4293109 (not condMapEmpty!19951)) mapNonEmpty!19952))

(assert (= b!4293088 b!4293109))

(assert (= b!4293092 b!4293088))

(assert (= b!4293110 b!4293092))

(assert (= (and b!4293094 ((_ is LongMap!4438) (v!41699 (underlying!9106 (cache!4484 cacheUp!947))))) b!4293110))

(assert (= b!4293124 b!4293094))

(assert (= (and b!4293129 ((_ is HashMap!4344) (cache!4484 cacheUp!947))) b!4293124))

(assert (= start!412168 b!4293129))

(declare-fun m!4886286 () Bool)

(assert (=> b!4293115 m!4886286))

(declare-fun m!4886288 () Bool)

(assert (=> b!4293115 m!4886288))

(assert (=> b!4293115 m!4886288))

(declare-fun m!4886290 () Bool)

(assert (=> b!4293115 m!4886290))

(declare-fun m!4886292 () Bool)

(assert (=> b!4293093 m!4886292))

(declare-fun m!4886294 () Bool)

(assert (=> b!4293088 m!4886294))

(declare-fun m!4886296 () Bool)

(assert (=> b!4293088 m!4886296))

(declare-fun m!4886298 () Bool)

(assert (=> mapNonEmpty!19951 m!4886298))

(declare-fun m!4886300 () Bool)

(assert (=> b!4293085 m!4886300))

(declare-fun m!4886302 () Bool)

(assert (=> b!4293104 m!4886302))

(declare-fun m!4886304 () Bool)

(assert (=> setNonEmpty!26535 m!4886304))

(declare-fun m!4886306 () Bool)

(assert (=> b!4293120 m!4886306))

(declare-fun m!4886308 () Bool)

(assert (=> mapNonEmpty!19953 m!4886308))

(declare-fun m!4886310 () Bool)

(assert (=> start!412168 m!4886310))

(declare-fun m!4886312 () Bool)

(assert (=> start!412168 m!4886312))

(declare-fun m!4886314 () Bool)

(assert (=> start!412168 m!4886314))

(declare-fun m!4886316 () Bool)

(assert (=> start!412168 m!4886316))

(declare-fun m!4886318 () Bool)

(assert (=> mapNonEmpty!19952 m!4886318))

(declare-fun m!4886320 () Bool)

(assert (=> b!4293113 m!4886320))

(declare-fun m!4886322 () Bool)

(assert (=> b!4293127 m!4886322))

(declare-fun m!4886324 () Bool)

(assert (=> b!4293106 m!4886324))

(declare-fun m!4886326 () Bool)

(assert (=> b!4293099 m!4886326))

(declare-fun m!4886328 () Bool)

(assert (=> b!4293099 m!4886328))

(declare-fun m!4886330 () Bool)

(assert (=> b!4293099 m!4886330))

(declare-fun m!4886332 () Bool)

(assert (=> b!4293117 m!4886332))

(declare-fun m!4886334 () Bool)

(assert (=> b!4293121 m!4886334))

(declare-fun m!4886336 () Bool)

(assert (=> b!4293118 m!4886336))

(declare-fun m!4886338 () Bool)

(assert (=> b!4293118 m!4886338))

(declare-fun m!4886340 () Bool)

(assert (=> b!4293126 m!4886340))

(declare-fun m!4886342 () Bool)

(assert (=> b!4293108 m!4886342))

(declare-fun m!4886344 () Bool)

(assert (=> b!4293108 m!4886344))

(assert (=> b!4293108 m!4886288))

(assert (=> b!4293108 m!4886288))

(declare-fun m!4886346 () Bool)

(assert (=> b!4293108 m!4886346))

(declare-fun m!4886348 () Bool)

(assert (=> b!4293089 m!4886348))

(declare-fun m!4886350 () Bool)

(assert (=> b!4293089 m!4886350))

(declare-fun m!4886352 () Bool)

(assert (=> b!4293098 m!4886352))

(check-sat (not b!4293104) (not b_next!128301) b_and!338807 (not b!4293109) (not b!4293106) (not b!4293088) (not b!4293087) b_and!338809 (not b_next!128299) (not b!4293085) b_and!338815 (not mapNonEmpty!19953) (not mapNonEmpty!19951) b_and!338817 (not b!4293098) (not b_next!128303) (not b!4293118) (not b!4293093) (not b!4293103) (not b!4293100) (not b!4293108) (not setNonEmpty!26535) (not b!4293117) (not b!4293121) b_and!338813 (not b!4293126) (not mapNonEmpty!19952) (not b!4293089) (not b_next!128297) b_and!338811 (not b!4293115) (not b!4293099) (not b!4293127) (not b_next!128295) (not start!412168) (not b_next!128305) (not b!4293120) (not b!4293113))
(check-sat (not b_next!128303) (not b_next!128301) b_and!338807 b_and!338809 b_and!338813 (not b_next!128299) b_and!338815 (not b_next!128295) (not b_next!128305) b_and!338817 (not b_next!128297) b_and!338811)
