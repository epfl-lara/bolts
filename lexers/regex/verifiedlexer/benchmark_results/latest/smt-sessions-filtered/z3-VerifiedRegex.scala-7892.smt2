; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412236 () Bool)

(assert start!412236)

(declare-fun b!4294383 () Bool)

(declare-fun b_free!127703 () Bool)

(declare-fun b_next!128407 () Bool)

(assert (=> b!4294383 (= b_free!127703 (not b_next!128407))))

(declare-fun tp!1318230 () Bool)

(declare-fun b_and!338919 () Bool)

(assert (=> b!4294383 (= tp!1318230 b_and!338919)))

(declare-fun b!4294363 () Bool)

(declare-fun b_free!127705 () Bool)

(declare-fun b_next!128409 () Bool)

(assert (=> b!4294363 (= b_free!127705 (not b_next!128409))))

(declare-fun tp!1318238 () Bool)

(declare-fun b_and!338921 () Bool)

(assert (=> b!4294363 (= tp!1318238 b_and!338921)))

(declare-fun b!4294388 () Bool)

(declare-fun b_free!127707 () Bool)

(declare-fun b_next!128411 () Bool)

(assert (=> b!4294388 (= b_free!127707 (not b_next!128411))))

(declare-fun tp!1318236 () Bool)

(declare-fun b_and!338923 () Bool)

(assert (=> b!4294388 (= tp!1318236 b_and!338923)))

(declare-fun b!4294377 () Bool)

(declare-fun b_free!127709 () Bool)

(declare-fun b_next!128413 () Bool)

(assert (=> b!4294377 (= b_free!127709 (not b_next!128413))))

(declare-fun tp!1318234 () Bool)

(declare-fun b_and!338925 () Bool)

(assert (=> b!4294377 (= tp!1318234 b_and!338925)))

(declare-fun b!4294351 () Bool)

(declare-fun b_free!127711 () Bool)

(declare-fun b_next!128415 () Bool)

(assert (=> b!4294351 (= b_free!127711 (not b_next!128415))))

(declare-fun tp!1318240 () Bool)

(declare-fun b_and!338927 () Bool)

(assert (=> b!4294351 (= tp!1318240 b_and!338927)))

(declare-fun b!4294357 () Bool)

(declare-fun b_free!127713 () Bool)

(declare-fun b_next!128417 () Bool)

(assert (=> b!4294357 (= b_free!127713 (not b_next!128417))))

(declare-fun tp!1318235 () Bool)

(declare-fun b_and!338929 () Bool)

(assert (=> b!4294357 (= tp!1318235 b_and!338929)))

(declare-fun mapIsEmpty!20044 () Bool)

(declare-fun mapRes!20045 () Bool)

(assert (=> mapIsEmpty!20044 mapRes!20045))

(declare-fun b!4294347 () Bool)

(declare-fun res!1760440 () Bool)

(declare-fun e!2668494 () Bool)

(assert (=> b!4294347 (=> (not res!1760440) (not e!2668494))))

(declare-datatypes ((C!26164 0))(
  ( (C!26165 (val!15408 Int)) )
))
(declare-datatypes ((Regex!12983 0))(
  ( (ElementMatch!12983 (c!730752 C!26164)) (Concat!21302 (regOne!26478 Regex!12983) (regTwo!26478 Regex!12983)) (EmptyExpr!12983) (Star!12983 (reg!13312 Regex!12983)) (EmptyLang!12983) (Union!12983 (regOne!26479 Regex!12983) (regTwo!26479 Regex!12983)) )
))
(declare-datatypes ((List!47933 0))(
  ( (Nil!47809) (Cons!47809 (h!53229 Regex!12983) (t!354537 List!47933)) )
))
(declare-datatypes ((Context!5746 0))(
  ( (Context!5747 (exprs!3373 List!47933)) )
))
(declare-datatypes ((tuple2!45560 0))(
  ( (tuple2!45561 (_1!26055 Context!5746) (_2!26055 C!26164)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45562 0))(
  ( (tuple2!45563 (_1!26056 tuple2!45560) (_2!26056 (InoxSet Context!5746))) )
))
(declare-datatypes ((Hashable!4379 0))(
  ( (HashableExt!4378 (__x!29414 Int)) )
))
(declare-datatypes ((tuple3!5488 0))(
  ( (tuple3!5489 (_1!26057 Regex!12983) (_2!26057 Context!5746) (_3!3275 C!26164)) )
))
(declare-datatypes ((tuple2!45564 0))(
  ( (tuple2!45565 (_1!26058 tuple3!5488) (_2!26058 (InoxSet Context!5746))) )
))
(declare-datatypes ((List!47934 0))(
  ( (Nil!47810) (Cons!47810 (h!53230 tuple2!45564) (t!354538 List!47934)) )
))
(declare-datatypes ((array!15914 0))(
  ( (array!15915 (arr!7113 (Array (_ BitVec 32) (_ BitVec 64))) (size!35115 (_ BitVec 32))) )
))
(declare-datatypes ((array!15916 0))(
  ( (array!15917 (arr!7114 (Array (_ BitVec 32) List!47934)) (size!35116 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8926 0))(
  ( (LongMapFixedSize!8927 (defaultEntry!4848 Int) (mask!12924 (_ BitVec 32)) (extraKeys!4712 (_ BitVec 32)) (zeroValue!4722 List!47934) (minValue!4722 List!47934) (_size!8969 (_ BitVec 32)) (_keys!4763 array!15914) (_values!4744 array!15916) (_vacant!4524 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17661 0))(
  ( (Cell!17662 (v!41755 LongMapFixedSize!8926)) )
))
(declare-datatypes ((MutLongMap!4463 0))(
  ( (LongMap!4463 (underlying!9155 Cell!17661)) (MutLongMapExt!4462 (__x!29415 Int)) )
))
(declare-datatypes ((Cell!17663 0))(
  ( (Cell!17664 (v!41756 MutLongMap!4463)) )
))
(declare-datatypes ((MutableMap!4369 0))(
  ( (MutableMapExt!4368 (__x!29416 Int)) (HashMap!4369 (underlying!9156 Cell!17663) (hashF!6411 Hashable!4379) (_size!8970 (_ BitVec 32)) (defaultValue!4540 Int)) )
))
(declare-datatypes ((tuple2!45566 0))(
  ( (tuple2!45567 (_1!26059 (InoxSet Context!5746)) (_2!26059 Int)) )
))
(declare-datatypes ((tuple2!45568 0))(
  ( (tuple2!45569 (_1!26060 tuple2!45566) (_2!26060 Int)) )
))
(declare-datatypes ((List!47935 0))(
  ( (Nil!47811) (Cons!47811 (h!53231 tuple2!45568) (t!354539 List!47935)) )
))
(declare-datatypes ((array!15918 0))(
  ( (array!15919 (arr!7115 (Array (_ BitVec 32) List!47935)) (size!35117 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8928 0))(
  ( (LongMapFixedSize!8929 (defaultEntry!4849 Int) (mask!12925 (_ BitVec 32)) (extraKeys!4713 (_ BitVec 32)) (zeroValue!4723 List!47935) (minValue!4723 List!47935) (_size!8971 (_ BitVec 32)) (_keys!4764 array!15914) (_values!4745 array!15918) (_vacant!4525 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17665 0))(
  ( (Cell!17666 (v!41757 LongMapFixedSize!8928)) )
))
(declare-datatypes ((MutLongMap!4464 0))(
  ( (LongMap!4464 (underlying!9157 Cell!17665)) (MutLongMapExt!4463 (__x!29417 Int)) )
))
(declare-datatypes ((Hashable!4380 0))(
  ( (HashableExt!4379 (__x!29418 Int)) )
))
(declare-datatypes ((Cell!17667 0))(
  ( (Cell!17668 (v!41758 MutLongMap!4464)) )
))
(declare-datatypes ((MutableMap!4370 0))(
  ( (MutableMapExt!4369 (__x!29419 Int)) (HashMap!4370 (underlying!9158 Cell!17667) (hashF!6412 Hashable!4380) (_size!8972 (_ BitVec 32)) (defaultValue!4541 Int)) )
))
(declare-datatypes ((List!47936 0))(
  ( (Nil!47812) (Cons!47812 (h!53232 tuple2!45562) (t!354540 List!47936)) )
))
(declare-datatypes ((array!15920 0))(
  ( (array!15921 (arr!7116 (Array (_ BitVec 32) List!47936)) (size!35118 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8930 0))(
  ( (LongMapFixedSize!8931 (defaultEntry!4850 Int) (mask!12926 (_ BitVec 32)) (extraKeys!4714 (_ BitVec 32)) (zeroValue!4724 List!47936) (minValue!4724 List!47936) (_size!8973 (_ BitVec 32)) (_keys!4765 array!15914) (_values!4746 array!15920) (_vacant!4526 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17669 0))(
  ( (Cell!17670 (v!41759 LongMapFixedSize!8930)) )
))
(declare-datatypes ((List!47937 0))(
  ( (Nil!47813) (Cons!47813 (h!53233 C!26164) (t!354541 List!47937)) )
))
(declare-datatypes ((IArray!28909 0))(
  ( (IArray!28910 (innerList!14512 List!47937)) )
))
(declare-datatypes ((Conc!14424 0))(
  ( (Node!14424 (left!35456 Conc!14424) (right!35786 Conc!14424) (csize!29078 Int) (cheight!14635 Int)) (Leaf!22317 (xs!17730 IArray!28909) (csize!29079 Int)) (Empty!14424) )
))
(declare-datatypes ((MutLongMap!4465 0))(
  ( (LongMap!4465 (underlying!9159 Cell!17669)) (MutLongMapExt!4464 (__x!29420 Int)) )
))
(declare-datatypes ((Cell!17671 0))(
  ( (Cell!17672 (v!41760 MutLongMap!4465)) )
))
(declare-datatypes ((Hashable!4381 0))(
  ( (HashableExt!4380 (__x!29421 Int)) )
))
(declare-datatypes ((MutableMap!4371 0))(
  ( (MutableMapExt!4370 (__x!29422 Int)) (HashMap!4371 (underlying!9160 Cell!17671) (hashF!6413 Hashable!4381) (_size!8974 (_ BitVec 32)) (defaultValue!4542 Int)) )
))
(declare-datatypes ((CacheUp!2846 0))(
  ( (CacheUp!2847 (cache!4509 MutableMap!4371)) )
))
(declare-datatypes ((BalanceConc!28338 0))(
  ( (BalanceConc!28339 (c!730753 Conc!14424)) )
))
(declare-datatypes ((CacheFindLongestMatch!536 0))(
  ( (CacheFindLongestMatch!537 (cache!4510 MutableMap!4370) (totalInput!4392 BalanceConc!28338)) )
))
(declare-datatypes ((CacheDown!2964 0))(
  ( (CacheDown!2965 (cache!4511 MutableMap!4369)) )
))
(declare-datatypes ((tuple4!1062 0))(
  ( (tuple4!1063 (_1!26061 Int) (_2!26061 CacheUp!2846) (_3!3276 CacheDown!2964) (_4!531 CacheFindLongestMatch!536)) )
))
(declare-fun lt!1517726 () tuple4!1062)

(declare-fun valid!3444 (CacheUp!2846) Bool)

(assert (=> b!4294347 (= res!1760440 (valid!3444 (_2!26061 lt!1517726)))))

(declare-fun b!4294348 () Bool)

(declare-fun e!2668483 () Int)

(declare-fun lt!1517730 () Int)

(assert (=> b!4294348 (= e!2668483 (+ 1 lt!1517730))))

(declare-fun res!1760444 () Bool)

(declare-fun e!2668493 () Bool)

(assert (=> start!412236 (=> (not res!1760444) (not e!2668493))))

(declare-fun from!999 () Int)

(assert (=> start!412236 (= res!1760444 (>= from!999 0))))

(assert (=> start!412236 e!2668493))

(declare-fun cacheDown!1066 () CacheDown!2964)

(declare-fun e!2668487 () Bool)

(declare-fun inv!63338 (CacheDown!2964) Bool)

(assert (=> start!412236 (and (inv!63338 cacheDown!1066) e!2668487)))

(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!536)

(declare-fun e!2668510 () Bool)

(declare-fun inv!63339 (CacheFindLongestMatch!536) Bool)

(assert (=> start!412236 (and (inv!63339 cacheFindLongestMatch!183) e!2668510)))

(declare-fun condSetEmpty!26604 () Bool)

(declare-fun z!3765 () (InoxSet Context!5746))

(assert (=> start!412236 (= condSetEmpty!26604 (= z!3765 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26604 () Bool)

(assert (=> start!412236 setRes!26604))

(assert (=> start!412236 true))

(declare-fun totalInput!812 () BalanceConc!28338)

(declare-fun e!2668484 () Bool)

(declare-fun inv!63340 (BalanceConc!28338) Bool)

(assert (=> start!412236 (and (inv!63340 totalInput!812) e!2668484)))

(declare-fun cacheUp!947 () CacheUp!2846)

(declare-fun e!2668495 () Bool)

(declare-fun inv!63341 (CacheUp!2846) Bool)

(assert (=> start!412236 (and (inv!63341 cacheUp!947) e!2668495)))

(declare-fun b!4294349 () Bool)

(declare-fun c!730746 () Bool)

(assert (=> b!4294349 (= c!730746 (> (_1!26061 lt!1517726) 0))))

(assert (=> b!4294349 e!2668494))

(declare-fun res!1760446 () Bool)

(assert (=> b!4294349 (=> (not res!1760446) (not e!2668494))))

(declare-datatypes ((tuple3!5490 0))(
  ( (tuple3!5491 (_1!26062 (InoxSet Context!5746)) (_2!26062 CacheUp!2846) (_3!3277 CacheDown!2964)) )
))
(declare-fun lt!1517725 () tuple3!5490)

(declare-fun totalInputSize!257 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!42 ((InoxSet Context!5746) Int BalanceConc!28338 Int) Int)

(assert (=> b!4294349 (= res!1760446 (= (_1!26061 lt!1517726) (findLongestMatchInnerZipperFastV2!42 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(declare-fun findLongestMatchInnerZipperFastV2Mem!21 ((InoxSet Context!5746) Int BalanceConc!28338 Int CacheUp!2846 CacheDown!2964 CacheFindLongestMatch!536) tuple4!1062)

(assert (=> b!4294349 (= lt!1517726 (findLongestMatchInnerZipperFastV2Mem!21 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26062 lt!1517725) (_3!3277 lt!1517725) cacheFindLongestMatch!183))))

(declare-fun derivationStepZipperMem!139 ((InoxSet Context!5746) C!26164 CacheUp!2846 CacheDown!2964) tuple3!5490)

(declare-fun apply!10848 (BalanceConc!28338 Int) C!26164)

(assert (=> b!4294349 (= lt!1517725 (derivationStepZipperMem!139 z!3765 (apply!10848 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(declare-datatypes ((tuple4!1064 0))(
  ( (tuple4!1065 (_1!26063 Int) (_2!26063 CacheFindLongestMatch!536) (_3!3278 CacheDown!2964) (_4!532 CacheUp!2846)) )
))
(declare-fun e!2668489 () tuple4!1064)

(declare-fun e!2668497 () Int)

(assert (=> b!4294349 (= e!2668489 (tuple4!1065 e!2668497 (_4!531 lt!1517726) (_3!3276 lt!1517726) (_2!26061 lt!1517726)))))

(declare-fun b!4294350 () Bool)

(declare-fun e!2668503 () Bool)

(declare-fun lt!1517728 () Int)

(assert (=> b!4294350 (= e!2668503 (= lt!1517728 0))))

(declare-fun tp!1318233 () Bool)

(declare-fun e!2668488 () Bool)

(declare-fun tp!1318248 () Bool)

(declare-fun e!2668482 () Bool)

(declare-fun array_inv!5097 (array!15914) Bool)

(declare-fun array_inv!5098 (array!15920) Bool)

(assert (=> b!4294351 (= e!2668488 (and tp!1318240 tp!1318233 tp!1318248 (array_inv!5097 (_keys!4765 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))) (array_inv!5098 (_values!4746 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))) e!2668482))))

(declare-fun b!4294352 () Bool)

(declare-fun e!2668519 () Bool)

(declare-fun e!2668507 () Bool)

(declare-fun lt!1517732 () MutLongMap!4463)

(get-info :version)

(assert (=> b!4294352 (= e!2668519 (and e!2668507 ((_ is LongMap!4463) lt!1517732)))))

(assert (=> b!4294352 (= lt!1517732 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))

(declare-fun b!4294353 () Bool)

(declare-fun e!2668490 () Bool)

(declare-fun e!2668512 () Bool)

(assert (=> b!4294353 (= e!2668490 e!2668512)))

(declare-fun b!4294354 () Bool)

(declare-fun e!2668500 () Int)

(assert (=> b!4294354 (= e!2668500 1)))

(declare-fun b!4294355 () Bool)

(declare-fun c!730750 () Bool)

(assert (=> b!4294355 (= c!730750 (> lt!1517730 0))))

(declare-fun lt!1517722 () (InoxSet Context!5746))

(assert (=> b!4294355 (= lt!1517730 (findLongestMatchInnerZipperFastV2!42 lt!1517722 (+ 1 from!999) totalInput!812 totalInputSize!257))))

(declare-fun derivationStepZipper!552 ((InoxSet Context!5746) C!26164) (InoxSet Context!5746))

(assert (=> b!4294355 (= lt!1517722 (derivationStepZipper!552 z!3765 (apply!10848 totalInput!812 from!999)))))

(assert (=> b!4294355 (= e!2668503 (= lt!1517728 e!2668483))))

(declare-fun b!4294356 () Bool)

(declare-fun e!2668485 () Bool)

(declare-fun e!2668513 () Bool)

(assert (=> b!4294356 (= e!2668485 e!2668513)))

(declare-fun res!1760438 () Bool)

(assert (=> b!4294356 (=> res!1760438 e!2668513)))

(declare-fun lt!1517719 () tuple4!1064)

(assert (=> b!4294356 (= res!1760438 (not (= (_1!26063 lt!1517719) (findLongestMatchInnerZipperFastV2!42 z!3765 from!999 totalInput!812 totalInputSize!257))))))

(declare-fun e!2668502 () tuple4!1064)

(assert (=> b!4294356 (= lt!1517719 e!2668502)))

(declare-fun c!730749 () Bool)

(declare-datatypes ((Option!10149 0))(
  ( (None!10148) (Some!10148 (v!41761 Int)) )
))
(declare-fun lt!1517727 () Option!10149)

(assert (=> b!4294356 (= c!730749 ((_ is Some!10148) lt!1517727))))

(declare-fun get!15472 (CacheFindLongestMatch!536 (InoxSet Context!5746) Int) Option!10149)

(assert (=> b!4294356 (= lt!1517727 (get!15472 cacheFindLongestMatch!183 z!3765 from!999))))

(declare-fun mapNonEmpty!20044 () Bool)

(declare-fun mapRes!20044 () Bool)

(declare-fun tp!1318247 () Bool)

(declare-fun tp!1318242 () Bool)

(assert (=> mapNonEmpty!20044 (= mapRes!20044 (and tp!1318247 tp!1318242))))

(declare-fun mapRest!20044 () (Array (_ BitVec 32) List!47935))

(declare-fun mapValue!20046 () List!47935)

(declare-fun mapKey!20044 () (_ BitVec 32))

(assert (=> mapNonEmpty!20044 (= (arr!7115 (_values!4745 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))) (store mapRest!20044 mapKey!20044 mapValue!20046))))

(declare-fun mapNonEmpty!20045 () Bool)

(declare-fun mapRes!20046 () Bool)

(declare-fun tp!1318250 () Bool)

(declare-fun tp!1318231 () Bool)

(assert (=> mapNonEmpty!20045 (= mapRes!20046 (and tp!1318250 tp!1318231))))

(declare-fun mapRest!20046 () (Array (_ BitVec 32) List!47934))

(declare-fun mapKey!20046 () (_ BitVec 32))

(declare-fun mapValue!20045 () List!47934)

(assert (=> mapNonEmpty!20045 (= (arr!7114 (_values!4744 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))) (store mapRest!20046 mapKey!20046 mapValue!20045))))

(declare-fun e!2668514 () Bool)

(assert (=> b!4294357 (= e!2668514 (and e!2668519 tp!1318235))))

(declare-fun b!4294358 () Bool)

(declare-fun e!2668509 () Bool)

(declare-fun e!2668504 () Bool)

(assert (=> b!4294358 (= e!2668509 e!2668504)))

(declare-fun b!4294359 () Bool)

(declare-fun e!2668518 () Int)

(assert (=> b!4294359 (= e!2668518 1)))

(declare-fun b!4294360 () Bool)

(assert (=> b!4294360 (= e!2668497 (+ 1 (_1!26061 lt!1517726)))))

(declare-fun e!2668496 () Bool)

(declare-fun setElem!26604 () Context!5746)

(declare-fun tp!1318245 () Bool)

(declare-fun setNonEmpty!26604 () Bool)

(declare-fun inv!63342 (Context!5746) Bool)

(assert (=> setNonEmpty!26604 (= setRes!26604 (and tp!1318245 (inv!63342 setElem!26604) e!2668496))))

(declare-fun setRest!26604 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26604 (= z!3765 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26604 true) setRest!26604))))

(declare-fun b!4294361 () Bool)

(declare-fun lt!1517723 () tuple4!1064)

(declare-datatypes ((Unit!66424 0))(
  ( (Unit!66425) )
))
(declare-datatypes ((tuple2!45570 0))(
  ( (tuple2!45571 (_1!26064 Unit!66424) (_2!26064 CacheFindLongestMatch!536)) )
))
(declare-fun update!285 (CacheFindLongestMatch!536 (InoxSet Context!5746) Int Int BalanceConc!28338) tuple2!45570)

(assert (=> b!4294361 (= e!2668502 (tuple4!1065 (_1!26063 lt!1517723) (_2!26064 (update!285 (_2!26063 lt!1517723) z!3765 from!999 (_1!26063 lt!1517723) totalInput!812)) (_3!3278 lt!1517723) (_4!532 lt!1517723)))))

(declare-fun res!1760439 () Bool)

(assert (=> b!4294361 (= res!1760439 (= from!999 totalInputSize!257))))

(declare-fun e!2668499 () Bool)

(assert (=> b!4294361 (=> res!1760439 e!2668499)))

(declare-fun lt!1517724 () Bool)

(assert (=> b!4294361 (= lt!1517724 e!2668499)))

(declare-fun c!730747 () Bool)

(assert (=> b!4294361 (= c!730747 lt!1517724)))

(assert (=> b!4294361 (= lt!1517723 e!2668489)))

(assert (=> b!4294361 (= lt!1517728 (findLongestMatchInnerZipperFastV2!42 z!3765 from!999 totalInput!812 totalInputSize!257))))

(declare-fun c!730745 () Bool)

(assert (=> b!4294361 (= c!730745 lt!1517724)))

(assert (=> b!4294361 e!2668503))

(declare-fun lt!1517721 () Unit!66424)

(declare-fun lemmaInvariant!414 (CacheFindLongestMatch!536) Unit!66424)

(assert (=> b!4294361 (= lt!1517721 (lemmaInvariant!414 (_2!26063 lt!1517723)))))

(declare-fun b!4294362 () Bool)

(declare-fun e!2668486 () Bool)

(declare-fun e!2668492 () Bool)

(declare-fun lt!1517720 () MutLongMap!4464)

(assert (=> b!4294362 (= e!2668486 (and e!2668492 ((_ is LongMap!4464) lt!1517720)))))

(assert (=> b!4294362 (= lt!1517720 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))

(declare-fun e!2668505 () Bool)

(declare-fun e!2668516 () Bool)

(assert (=> b!4294363 (= e!2668505 (and e!2668516 tp!1318238))))

(declare-fun b!4294364 () Bool)

(declare-fun tp!1318246 () Bool)

(assert (=> b!4294364 (= e!2668482 (and tp!1318246 mapRes!20045))))

(declare-fun condMapEmpty!20046 () Bool)

(declare-fun mapDefault!20044 () List!47936)

(assert (=> b!4294364 (= condMapEmpty!20046 (= (arr!7116 (_values!4746 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))) ((as const (Array (_ BitVec 32) List!47936)) mapDefault!20044)))))

(declare-fun b!4294365 () Bool)

(assert (=> b!4294365 (= e!2668483 e!2668500)))

(declare-fun c!730748 () Bool)

(declare-fun nullableZipper!775 ((InoxSet Context!5746)) Bool)

(assert (=> b!4294365 (= c!730748 (nullableZipper!775 lt!1517722))))

(declare-fun b!4294366 () Bool)

(declare-fun e!2668515 () Bool)

(declare-fun e!2668501 () Bool)

(assert (=> b!4294366 (= e!2668515 e!2668501)))

(declare-fun b!4294367 () Bool)

(declare-fun res!1760442 () Bool)

(assert (=> b!4294367 (=> (not res!1760442) (not e!2668494))))

(declare-fun valid!3445 (CacheDown!2964) Bool)

(assert (=> b!4294367 (= res!1760442 (valid!3445 (_3!3276 lt!1517726)))))

(declare-fun b!4294368 () Bool)

(declare-fun res!1760443 () Bool)

(assert (=> b!4294368 (=> res!1760443 e!2668513)))

(declare-fun valid!3446 (CacheFindLongestMatch!536) Bool)

(assert (=> b!4294368 (= res!1760443 (not (valid!3446 (_2!26063 lt!1517719))))))

(declare-fun b!4294369 () Bool)

(assert (=> b!4294369 (= e!2668507 e!2668509)))

(declare-fun b!4294370 () Bool)

(declare-fun res!1760447 () Bool)

(assert (=> b!4294370 (=> res!1760447 e!2668513)))

(assert (=> b!4294370 (= res!1760447 (not (valid!3444 (_4!532 lt!1517719))))))

(declare-fun b!4294371 () Bool)

(assert (=> b!4294371 (= e!2668495 e!2668505)))

(declare-fun mapIsEmpty!20045 () Bool)

(assert (=> mapIsEmpty!20045 mapRes!20044))

(declare-fun b!4294372 () Bool)

(assert (=> b!4294372 (= e!2668501 e!2668488)))

(declare-fun b!4294373 () Bool)

(assert (=> b!4294373 (= e!2668487 e!2668514)))

(declare-fun setIsEmpty!26604 () Bool)

(assert (=> setIsEmpty!26604 setRes!26604))

(declare-fun b!4294374 () Bool)

(assert (=> b!4294374 (= e!2668500 0)))

(declare-fun mapNonEmpty!20046 () Bool)

(declare-fun tp!1318251 () Bool)

(declare-fun tp!1318228 () Bool)

(assert (=> mapNonEmpty!20046 (= mapRes!20045 (and tp!1318251 tp!1318228))))

(declare-fun mapRest!20045 () (Array (_ BitVec 32) List!47936))

(declare-fun mapKey!20045 () (_ BitVec 32))

(declare-fun mapValue!20044 () List!47936)

(assert (=> mapNonEmpty!20046 (= (arr!7116 (_values!4746 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))) (store mapRest!20045 mapKey!20045 mapValue!20044))))

(declare-fun b!4294375 () Bool)

(assert (=> b!4294375 (= e!2668513 (not (= (totalInput!4392 (_2!26063 lt!1517719)) totalInput!812)))))

(declare-fun b!4294376 () Bool)

(declare-fun res!1760441 () Bool)

(assert (=> b!4294376 (=> (not res!1760441) (not e!2668494))))

(assert (=> b!4294376 (= res!1760441 (valid!3446 (_4!531 lt!1517726)))))

(declare-fun tp!1318239 () Bool)

(declare-fun e!2668498 () Bool)

(declare-fun tp!1318249 () Bool)

(declare-fun array_inv!5099 (array!15916) Bool)

(assert (=> b!4294377 (= e!2668504 (and tp!1318234 tp!1318239 tp!1318249 (array_inv!5097 (_keys!4763 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))) (array_inv!5099 (_values!4744 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))) e!2668498))))

(declare-fun b!4294378 () Bool)

(declare-fun e!2668517 () Bool)

(declare-fun tp!1318229 () Bool)

(assert (=> b!4294378 (= e!2668517 (and tp!1318229 mapRes!20044))))

(declare-fun condMapEmpty!20044 () Bool)

(declare-fun mapDefault!20046 () List!47935)

(assert (=> b!4294378 (= condMapEmpty!20044 (= (arr!7115 (_values!4745 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47935)) mapDefault!20046)))))

(declare-fun b!4294379 () Bool)

(declare-fun tp!1318243 () Bool)

(assert (=> b!4294379 (= e!2668496 tp!1318243)))

(declare-fun b!4294380 () Bool)

(assert (=> b!4294380 (= e!2668518 0)))

(declare-fun b!4294381 () Bool)

(declare-fun tp!1318237 () Bool)

(assert (=> b!4294381 (= e!2668498 (and tp!1318237 mapRes!20046))))

(declare-fun condMapEmpty!20045 () Bool)

(declare-fun mapDefault!20045 () List!47934)

(assert (=> b!4294381 (= condMapEmpty!20045 (= (arr!7114 (_values!4744 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))) ((as const (Array (_ BitVec 32) List!47934)) mapDefault!20045)))))

(declare-fun b!4294382 () Bool)

(declare-fun tp!1318241 () Bool)

(declare-fun inv!63343 (Conc!14424) Bool)

(assert (=> b!4294382 (= e!2668484 (and (inv!63343 (c!730753 totalInput!812)) tp!1318241))))

(declare-fun e!2668511 () Bool)

(assert (=> b!4294383 (= e!2668511 (and e!2668486 tp!1318230))))

(declare-fun b!4294384 () Bool)

(declare-fun res!1760445 () Bool)

(assert (=> b!4294384 (=> res!1760445 e!2668513)))

(assert (=> b!4294384 (= res!1760445 (not (valid!3445 (_3!3278 lt!1517719))))))

(declare-fun b!4294385 () Bool)

(declare-fun lt!1517731 () MutLongMap!4465)

(assert (=> b!4294385 (= e!2668516 (and e!2668515 ((_ is LongMap!4465) lt!1517731)))))

(assert (=> b!4294385 (= lt!1517731 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))

(declare-fun b!4294386 () Bool)

(assert (=> b!4294386 (= e!2668497 e!2668518)))

(declare-fun c!730751 () Bool)

(assert (=> b!4294386 (= c!730751 (nullableZipper!775 (_1!26062 lt!1517725)))))

(declare-fun b!4294387 () Bool)

(declare-fun lostCauseZipper!655 ((InoxSet Context!5746)) Bool)

(assert (=> b!4294387 (= e!2668499 (lostCauseZipper!655 z!3765))))

(declare-fun mapIsEmpty!20046 () Bool)

(assert (=> mapIsEmpty!20046 mapRes!20046))

(declare-fun tp!1318227 () Bool)

(declare-fun tp!1318232 () Bool)

(declare-fun array_inv!5100 (array!15918) Bool)

(assert (=> b!4294388 (= e!2668512 (and tp!1318236 tp!1318227 tp!1318232 (array_inv!5097 (_keys!4764 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))) (array_inv!5100 (_values!4745 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))) e!2668517))))

(declare-fun b!4294389 () Bool)

(assert (=> b!4294389 (= e!2668494 (= (totalInput!4392 (_4!531 lt!1517726)) totalInput!812))))

(declare-fun b!4294390 () Bool)

(assert (=> b!4294390 (= e!2668502 (tuple4!1065 (v!41761 lt!1517727) cacheFindLongestMatch!183 cacheDown!1066 cacheUp!947))))

(declare-fun b!4294391 () Bool)

(declare-fun e!2668506 () Bool)

(declare-fun tp!1318244 () Bool)

(assert (=> b!4294391 (= e!2668506 (and (inv!63343 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) tp!1318244))))

(declare-fun b!4294392 () Bool)

(assert (=> b!4294392 (= e!2668492 e!2668490)))

(declare-fun b!4294393 () Bool)

(assert (=> b!4294393 (= e!2668510 (and e!2668511 (inv!63340 (totalInput!4392 cacheFindLongestMatch!183)) e!2668506))))

(declare-fun b!4294394 () Bool)

(assert (=> b!4294394 (= e!2668489 (tuple4!1065 0 cacheFindLongestMatch!183 cacheDown!1066 cacheUp!947))))

(declare-fun b!4294395 () Bool)

(assert (=> b!4294395 (= e!2668493 e!2668485)))

(declare-fun res!1760437 () Bool)

(assert (=> b!4294395 (=> (not res!1760437) (not e!2668485))))

(declare-fun lt!1517729 () Int)

(assert (=> b!4294395 (= res!1760437 (and (<= from!999 lt!1517729) (= totalInputSize!257 lt!1517729) (= (totalInput!4392 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35119 (BalanceConc!28338) Int)

(assert (=> b!4294395 (= lt!1517729 (size!35119 totalInput!812))))

(assert (= (and start!412236 res!1760444) b!4294395))

(assert (= (and b!4294395 res!1760437) b!4294356))

(assert (= (and b!4294356 c!730749) b!4294390))

(assert (= (and b!4294356 (not c!730749)) b!4294361))

(assert (= (and b!4294361 (not res!1760439)) b!4294387))

(assert (= (and b!4294361 c!730747) b!4294394))

(assert (= (and b!4294361 (not c!730747)) b!4294349))

(assert (= (and b!4294349 res!1760446) b!4294347))

(assert (= (and b!4294347 res!1760440) b!4294367))

(assert (= (and b!4294367 res!1760442) b!4294376))

(assert (= (and b!4294376 res!1760441) b!4294389))

(assert (= (and b!4294349 c!730746) b!4294360))

(assert (= (and b!4294349 (not c!730746)) b!4294386))

(assert (= (and b!4294386 c!730751) b!4294359))

(assert (= (and b!4294386 (not c!730751)) b!4294380))

(assert (= (and b!4294361 c!730745) b!4294350))

(assert (= (and b!4294361 (not c!730745)) b!4294355))

(assert (= (and b!4294355 c!730750) b!4294348))

(assert (= (and b!4294355 (not c!730750)) b!4294365))

(assert (= (and b!4294365 c!730748) b!4294354))

(assert (= (and b!4294365 (not c!730748)) b!4294374))

(assert (= (and b!4294356 (not res!1760438)) b!4294370))

(assert (= (and b!4294370 (not res!1760447)) b!4294384))

(assert (= (and b!4294384 (not res!1760445)) b!4294368))

(assert (= (and b!4294368 (not res!1760443)) b!4294375))

(assert (= (and b!4294381 condMapEmpty!20045) mapIsEmpty!20046))

(assert (= (and b!4294381 (not condMapEmpty!20045)) mapNonEmpty!20045))

(assert (= b!4294377 b!4294381))

(assert (= b!4294358 b!4294377))

(assert (= b!4294369 b!4294358))

(assert (= (and b!4294352 ((_ is LongMap!4463) (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))) b!4294369))

(assert (= b!4294357 b!4294352))

(assert (= (and b!4294373 ((_ is HashMap!4369) (cache!4511 cacheDown!1066))) b!4294357))

(assert (= start!412236 b!4294373))

(assert (= (and b!4294378 condMapEmpty!20044) mapIsEmpty!20045))

(assert (= (and b!4294378 (not condMapEmpty!20044)) mapNonEmpty!20044))

(assert (= b!4294388 b!4294378))

(assert (= b!4294353 b!4294388))

(assert (= b!4294392 b!4294353))

(assert (= (and b!4294362 ((_ is LongMap!4464) (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))) b!4294392))

(assert (= b!4294383 b!4294362))

(assert (= (and b!4294393 ((_ is HashMap!4370) (cache!4510 cacheFindLongestMatch!183))) b!4294383))

(assert (= b!4294393 b!4294391))

(assert (= start!412236 b!4294393))

(assert (= (and start!412236 condSetEmpty!26604) setIsEmpty!26604))

(assert (= (and start!412236 (not condSetEmpty!26604)) setNonEmpty!26604))

(assert (= setNonEmpty!26604 b!4294379))

(assert (= start!412236 b!4294382))

(assert (= (and b!4294364 condMapEmpty!20046) mapIsEmpty!20044))

(assert (= (and b!4294364 (not condMapEmpty!20046)) mapNonEmpty!20046))

(assert (= b!4294351 b!4294364))

(assert (= b!4294372 b!4294351))

(assert (= b!4294366 b!4294372))

(assert (= (and b!4294385 ((_ is LongMap!4465) (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))) b!4294366))

(assert (= b!4294363 b!4294385))

(assert (= (and b!4294371 ((_ is HashMap!4371) (cache!4509 cacheUp!947))) b!4294363))

(assert (= start!412236 b!4294371))

(declare-fun m!4886994 () Bool)

(assert (=> b!4294395 m!4886994))

(declare-fun m!4886996 () Bool)

(assert (=> b!4294384 m!4886996))

(declare-fun m!4886998 () Bool)

(assert (=> start!412236 m!4886998))

(declare-fun m!4887000 () Bool)

(assert (=> start!412236 m!4887000))

(declare-fun m!4887002 () Bool)

(assert (=> start!412236 m!4887002))

(declare-fun m!4887004 () Bool)

(assert (=> start!412236 m!4887004))

(declare-fun m!4887006 () Bool)

(assert (=> b!4294377 m!4887006))

(declare-fun m!4887008 () Bool)

(assert (=> b!4294377 m!4887008))

(declare-fun m!4887010 () Bool)

(assert (=> mapNonEmpty!20046 m!4887010))

(declare-fun m!4887012 () Bool)

(assert (=> b!4294355 m!4887012))

(declare-fun m!4887014 () Bool)

(assert (=> b!4294355 m!4887014))

(assert (=> b!4294355 m!4887014))

(declare-fun m!4887016 () Bool)

(assert (=> b!4294355 m!4887016))

(declare-fun m!4887018 () Bool)

(assert (=> setNonEmpty!26604 m!4887018))

(declare-fun m!4887020 () Bool)

(assert (=> b!4294367 m!4887020))

(declare-fun m!4887022 () Bool)

(assert (=> b!4294386 m!4887022))

(declare-fun m!4887024 () Bool)

(assert (=> b!4294356 m!4887024))

(declare-fun m!4887026 () Bool)

(assert (=> b!4294356 m!4887026))

(declare-fun m!4887028 () Bool)

(assert (=> b!4294351 m!4887028))

(declare-fun m!4887030 () Bool)

(assert (=> b!4294351 m!4887030))

(declare-fun m!4887032 () Bool)

(assert (=> b!4294382 m!4887032))

(declare-fun m!4887034 () Bool)

(assert (=> mapNonEmpty!20045 m!4887034))

(declare-fun m!4887036 () Bool)

(assert (=> b!4294388 m!4887036))

(declare-fun m!4887038 () Bool)

(assert (=> b!4294388 m!4887038))

(declare-fun m!4887040 () Bool)

(assert (=> b!4294376 m!4887040))

(declare-fun m!4887042 () Bool)

(assert (=> b!4294391 m!4887042))

(declare-fun m!4887044 () Bool)

(assert (=> b!4294387 m!4887044))

(declare-fun m!4887046 () Bool)

(assert (=> b!4294370 m!4887046))

(declare-fun m!4887048 () Bool)

(assert (=> b!4294347 m!4887048))

(declare-fun m!4887050 () Bool)

(assert (=> b!4294361 m!4887050))

(assert (=> b!4294361 m!4887024))

(declare-fun m!4887052 () Bool)

(assert (=> b!4294361 m!4887052))

(declare-fun m!4887054 () Bool)

(assert (=> b!4294349 m!4887054))

(declare-fun m!4887056 () Bool)

(assert (=> b!4294349 m!4887056))

(assert (=> b!4294349 m!4887014))

(assert (=> b!4294349 m!4887014))

(declare-fun m!4887058 () Bool)

(assert (=> b!4294349 m!4887058))

(declare-fun m!4887060 () Bool)

(assert (=> b!4294365 m!4887060))

(declare-fun m!4887062 () Bool)

(assert (=> mapNonEmpty!20044 m!4887062))

(declare-fun m!4887064 () Bool)

(assert (=> b!4294368 m!4887064))

(declare-fun m!4887066 () Bool)

(assert (=> b!4294393 m!4887066))

(check-sat (not b!4294349) (not mapNonEmpty!20045) (not b!4294384) (not b!4294368) (not b_next!128407) (not b!4294356) (not b!4294387) (not b_next!128417) (not b!4294378) (not mapNonEmpty!20046) (not b!4294386) (not b!4294376) (not b_next!128415) (not start!412236) (not b!4294370) b_and!338929 (not b_next!128411) (not b!4294364) (not b!4294379) (not b!4294351) b_and!338919 b_and!338925 b_and!338927 (not b!4294382) (not mapNonEmpty!20044) (not b_next!128413) (not b_next!128409) (not b!4294381) (not b!4294361) b_and!338921 (not b!4294377) (not b!4294365) (not b!4294391) (not setNonEmpty!26604) (not b!4294367) (not b!4294388) (not b!4294355) b_and!338923 (not b!4294347) (not b!4294395) (not b!4294393))
(check-sat (not b_next!128407) (not b_next!128417) b_and!338927 (not b_next!128415) b_and!338921 b_and!338923 b_and!338929 (not b_next!128411) b_and!338919 b_and!338925 (not b_next!128413) (not b_next!128409))
(get-model)

(declare-fun b!4294412 () Bool)

(declare-fun c!730762 () Bool)

(declare-fun lt!1517740 () (InoxSet Context!5746))

(assert (=> b!4294412 (= c!730762 (nullableZipper!775 lt!1517740))))

(declare-fun e!2668531 () Int)

(declare-fun e!2668535 () Int)

(assert (=> b!4294412 (= e!2668531 e!2668535)))

(declare-fun b!4294413 () Bool)

(declare-fun e!2668532 () Int)

(assert (=> b!4294413 (= e!2668532 0)))

(declare-fun b!4294414 () Bool)

(assert (=> b!4294414 (= e!2668535 1)))

(declare-fun d!1265797 () Bool)

(declare-fun lt!1517741 () Int)

(assert (=> d!1265797 (and (>= lt!1517741 0) (<= lt!1517741 (- totalInputSize!257 (+ 1 from!999))))))

(assert (=> d!1265797 (= lt!1517741 e!2668532)))

(declare-fun c!730761 () Bool)

(declare-fun e!2668534 () Bool)

(assert (=> d!1265797 (= c!730761 e!2668534)))

(declare-fun res!1760453 () Bool)

(assert (=> d!1265797 (=> res!1760453 e!2668534)))

(assert (=> d!1265797 (= res!1760453 (= (+ 1 from!999) totalInputSize!257))))

(declare-fun e!2668533 () Bool)

(assert (=> d!1265797 e!2668533))

(declare-fun res!1760452 () Bool)

(assert (=> d!1265797 (=> (not res!1760452) (not e!2668533))))

(assert (=> d!1265797 (= res!1760452 (>= (+ 1 from!999) 0))))

(assert (=> d!1265797 (= (findLongestMatchInnerZipperFastV2!42 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257) lt!1517741)))

(declare-fun b!4294415 () Bool)

(assert (=> b!4294415 (= e!2668535 0)))

(declare-fun b!4294416 () Bool)

(assert (=> b!4294416 (= e!2668533 (<= (+ 1 from!999) (size!35119 totalInput!812)))))

(declare-fun b!4294417 () Bool)

(assert (=> b!4294417 (= e!2668532 e!2668531)))

(assert (=> b!4294417 (= lt!1517740 (derivationStepZipper!552 (_1!26062 lt!1517725) (apply!10848 totalInput!812 (+ 1 from!999))))))

(declare-fun lt!1517739 () Int)

(assert (=> b!4294417 (= lt!1517739 (findLongestMatchInnerZipperFastV2!42 lt!1517740 (+ 1 from!999 1) totalInput!812 totalInputSize!257))))

(declare-fun c!730760 () Bool)

(assert (=> b!4294417 (= c!730760 (> lt!1517739 0))))

(declare-fun b!4294418 () Bool)

(assert (=> b!4294418 (= e!2668531 (+ 1 lt!1517739))))

(declare-fun b!4294419 () Bool)

(assert (=> b!4294419 (= e!2668534 (lostCauseZipper!655 (_1!26062 lt!1517725)))))

(assert (= (and d!1265797 res!1760452) b!4294416))

(assert (= (and d!1265797 (not res!1760453)) b!4294419))

(assert (= (and d!1265797 c!730761) b!4294413))

(assert (= (and d!1265797 (not c!730761)) b!4294417))

(assert (= (and b!4294417 c!730760) b!4294418))

(assert (= (and b!4294417 (not c!730760)) b!4294412))

(assert (= (and b!4294412 c!730762) b!4294414))

(assert (= (and b!4294412 (not c!730762)) b!4294415))

(declare-fun m!4887068 () Bool)

(assert (=> b!4294412 m!4887068))

(assert (=> b!4294416 m!4886994))

(declare-fun m!4887070 () Bool)

(assert (=> b!4294417 m!4887070))

(assert (=> b!4294417 m!4887070))

(declare-fun m!4887072 () Bool)

(assert (=> b!4294417 m!4887072))

(declare-fun m!4887074 () Bool)

(assert (=> b!4294417 m!4887074))

(declare-fun m!4887076 () Bool)

(assert (=> b!4294419 m!4887076))

(assert (=> b!4294349 d!1265797))

(declare-fun b!4294430 () Bool)

(declare-fun res!1760466 () Bool)

(declare-fun e!2668540 () Bool)

(assert (=> b!4294430 (=> (not res!1760466) (not e!2668540))))

(declare-fun lt!1517744 () tuple4!1062)

(assert (=> b!4294430 (= res!1760466 (valid!3445 (_3!3276 lt!1517744)))))

(declare-fun d!1265799 () Bool)

(assert (=> d!1265799 e!2668540))

(declare-fun res!1760464 () Bool)

(assert (=> d!1265799 (=> (not res!1760464) (not e!2668540))))

(assert (=> d!1265799 (= res!1760464 (= (_1!26061 lt!1517744) (findLongestMatchInnerZipperFastV2!42 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(declare-fun choose!26148 ((InoxSet Context!5746) Int BalanceConc!28338 Int CacheUp!2846 CacheDown!2964 CacheFindLongestMatch!536) tuple4!1062)

(assert (=> d!1265799 (= lt!1517744 (choose!26148 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26062 lt!1517725) (_3!3277 lt!1517725) cacheFindLongestMatch!183))))

(declare-fun e!2668541 () Bool)

(assert (=> d!1265799 e!2668541))

(declare-fun res!1760468 () Bool)

(assert (=> d!1265799 (=> (not res!1760468) (not e!2668541))))

(assert (=> d!1265799 (= res!1760468 (>= (+ 1 from!999) 0))))

(assert (=> d!1265799 (= (findLongestMatchInnerZipperFastV2Mem!21 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26062 lt!1517725) (_3!3277 lt!1517725) cacheFindLongestMatch!183) lt!1517744)))

(declare-fun b!4294431 () Bool)

(declare-fun res!1760465 () Bool)

(assert (=> b!4294431 (=> (not res!1760465) (not e!2668540))))

(assert (=> b!4294431 (= res!1760465 (valid!3446 (_4!531 lt!1517744)))))

(declare-fun b!4294432 () Bool)

(assert (=> b!4294432 (= e!2668541 (<= (+ 1 from!999) (size!35119 totalInput!812)))))

(declare-fun b!4294433 () Bool)

(assert (=> b!4294433 (= e!2668540 (= (totalInput!4392 (_4!531 lt!1517744)) totalInput!812))))

(declare-fun b!4294434 () Bool)

(declare-fun res!1760467 () Bool)

(assert (=> b!4294434 (=> (not res!1760467) (not e!2668540))))

(assert (=> b!4294434 (= res!1760467 (valid!3444 (_2!26061 lt!1517744)))))

(assert (= (and d!1265799 res!1760468) b!4294432))

(assert (= (and d!1265799 res!1760464) b!4294434))

(assert (= (and b!4294434 res!1760467) b!4294430))

(assert (= (and b!4294430 res!1760466) b!4294431))

(assert (= (and b!4294431 res!1760465) b!4294433))

(assert (=> d!1265799 m!4887054))

(declare-fun m!4887078 () Bool)

(assert (=> d!1265799 m!4887078))

(declare-fun m!4887080 () Bool)

(assert (=> b!4294431 m!4887080))

(assert (=> b!4294432 m!4886994))

(declare-fun m!4887082 () Bool)

(assert (=> b!4294434 m!4887082))

(declare-fun m!4887084 () Bool)

(assert (=> b!4294430 m!4887084))

(assert (=> b!4294349 d!1265799))

(declare-fun d!1265801 () Bool)

(declare-fun e!2668544 () Bool)

(assert (=> d!1265801 e!2668544))

(declare-fun res!1760473 () Bool)

(assert (=> d!1265801 (=> (not res!1760473) (not e!2668544))))

(declare-fun lt!1517747 () tuple3!5490)

(assert (=> d!1265801 (= res!1760473 (= (_1!26062 lt!1517747) (derivationStepZipper!552 z!3765 (apply!10848 totalInput!812 from!999))))))

(declare-fun choose!26149 ((InoxSet Context!5746) C!26164 CacheUp!2846 CacheDown!2964) tuple3!5490)

(assert (=> d!1265801 (= lt!1517747 (choose!26149 z!3765 (apply!10848 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(assert (=> d!1265801 (= (derivationStepZipperMem!139 z!3765 (apply!10848 totalInput!812 from!999) cacheUp!947 cacheDown!1066) lt!1517747)))

(declare-fun b!4294439 () Bool)

(declare-fun res!1760474 () Bool)

(assert (=> b!4294439 (=> (not res!1760474) (not e!2668544))))

(assert (=> b!4294439 (= res!1760474 (valid!3444 (_2!26062 lt!1517747)))))

(declare-fun b!4294440 () Bool)

(assert (=> b!4294440 (= e!2668544 (valid!3445 (_3!3277 lt!1517747)))))

(assert (= (and d!1265801 res!1760473) b!4294439))

(assert (= (and b!4294439 res!1760474) b!4294440))

(assert (=> d!1265801 m!4887014))

(assert (=> d!1265801 m!4887016))

(assert (=> d!1265801 m!4887014))

(declare-fun m!4887086 () Bool)

(assert (=> d!1265801 m!4887086))

(declare-fun m!4887088 () Bool)

(assert (=> b!4294439 m!4887088))

(declare-fun m!4887090 () Bool)

(assert (=> b!4294440 m!4887090))

(assert (=> b!4294349 d!1265801))

(declare-fun d!1265803 () Bool)

(declare-fun lt!1517750 () C!26164)

(declare-fun apply!10849 (List!47937 Int) C!26164)

(declare-fun list!17363 (BalanceConc!28338) List!47937)

(assert (=> d!1265803 (= lt!1517750 (apply!10849 (list!17363 totalInput!812) from!999))))

(declare-fun apply!10850 (Conc!14424 Int) C!26164)

(assert (=> d!1265803 (= lt!1517750 (apply!10850 (c!730753 totalInput!812) from!999))))

(declare-fun e!2668547 () Bool)

(assert (=> d!1265803 e!2668547))

(declare-fun res!1760477 () Bool)

(assert (=> d!1265803 (=> (not res!1760477) (not e!2668547))))

(assert (=> d!1265803 (= res!1760477 (<= 0 from!999))))

(assert (=> d!1265803 (= (apply!10848 totalInput!812 from!999) lt!1517750)))

(declare-fun b!4294443 () Bool)

(assert (=> b!4294443 (= e!2668547 (< from!999 (size!35119 totalInput!812)))))

(assert (= (and d!1265803 res!1760477) b!4294443))

(declare-fun m!4887092 () Bool)

(assert (=> d!1265803 m!4887092))

(assert (=> d!1265803 m!4887092))

(declare-fun m!4887094 () Bool)

(assert (=> d!1265803 m!4887094))

(declare-fun m!4887096 () Bool)

(assert (=> d!1265803 m!4887096))

(assert (=> b!4294443 m!4886994))

(assert (=> b!4294349 d!1265803))

(declare-fun d!1265805 () Bool)

(declare-fun validCacheMapDown!452 (MutableMap!4369) Bool)

(assert (=> d!1265805 (= (valid!3445 (_3!3276 lt!1517726)) (validCacheMapDown!452 (cache!4511 (_3!3276 lt!1517726))))))

(declare-fun bs!603034 () Bool)

(assert (= bs!603034 d!1265805))

(declare-fun m!4887098 () Bool)

(assert (=> bs!603034 m!4887098))

(assert (=> b!4294367 d!1265805))

(declare-fun d!1265807 () Bool)

(declare-fun lt!1517753 () Int)

(declare-fun size!35120 (List!47937) Int)

(assert (=> d!1265807 (= lt!1517753 (size!35120 (list!17363 totalInput!812)))))

(declare-fun size!35121 (Conc!14424) Int)

(assert (=> d!1265807 (= lt!1517753 (size!35121 (c!730753 totalInput!812)))))

(assert (=> d!1265807 (= (size!35119 totalInput!812) lt!1517753)))

(declare-fun bs!603035 () Bool)

(assert (= bs!603035 d!1265807))

(assert (=> bs!603035 m!4887092))

(assert (=> bs!603035 m!4887092))

(declare-fun m!4887100 () Bool)

(assert (=> bs!603035 m!4887100))

(declare-fun m!4887102 () Bool)

(assert (=> bs!603035 m!4887102))

(assert (=> b!4294395 d!1265807))

(declare-fun d!1265809 () Bool)

(assert (=> d!1265809 (= (valid!3445 (_3!3278 lt!1517719)) (validCacheMapDown!452 (cache!4511 (_3!3278 lt!1517719))))))

(declare-fun bs!603036 () Bool)

(assert (= bs!603036 d!1265809))

(declare-fun m!4887104 () Bool)

(assert (=> bs!603036 m!4887104))

(assert (=> b!4294384 d!1265809))

(declare-fun d!1265811 () Bool)

(declare-fun validCacheMapUp!421 (MutableMap!4371) Bool)

(assert (=> d!1265811 (= (valid!3444 (_2!26061 lt!1517726)) (validCacheMapUp!421 (cache!4509 (_2!26061 lt!1517726))))))

(declare-fun bs!603037 () Bool)

(assert (= bs!603037 d!1265811))

(declare-fun m!4887106 () Bool)

(assert (=> bs!603037 m!4887106))

(assert (=> b!4294347 d!1265811))

(declare-fun d!1265813 () Bool)

(declare-fun lambda!131564 () Int)

(declare-fun exists!1227 ((InoxSet Context!5746) Int) Bool)

(assert (=> d!1265813 (= (nullableZipper!775 lt!1517722) (exists!1227 lt!1517722 lambda!131564))))

(declare-fun bs!603038 () Bool)

(assert (= bs!603038 d!1265813))

(declare-fun m!4887108 () Bool)

(assert (=> bs!603038 m!4887108))

(assert (=> b!4294365 d!1265813))

(declare-fun d!1265815 () Bool)

(declare-fun isBalanced!3887 (Conc!14424) Bool)

(assert (=> d!1265815 (= (inv!63340 (totalInput!4392 cacheFindLongestMatch!183)) (isBalanced!3887 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))))

(declare-fun bs!603039 () Bool)

(assert (= bs!603039 d!1265815))

(declare-fun m!4887110 () Bool)

(assert (=> bs!603039 m!4887110))

(assert (=> b!4294393 d!1265815))

(declare-fun d!1265817 () Bool)

(assert (=> d!1265817 (= (valid!3444 (_4!532 lt!1517719)) (validCacheMapUp!421 (cache!4509 (_4!532 lt!1517719))))))

(declare-fun bs!603040 () Bool)

(assert (= bs!603040 d!1265817))

(declare-fun m!4887112 () Bool)

(assert (=> bs!603040 m!4887112))

(assert (=> b!4294370 d!1265817))

(declare-fun d!1265819 () Bool)

(assert (=> d!1265819 (= (array_inv!5097 (_keys!4763 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))) (bvsge (size!35115 (_keys!4763 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))) #b00000000000000000000000000000000))))

(assert (=> b!4294377 d!1265819))

(declare-fun d!1265821 () Bool)

(assert (=> d!1265821 (= (array_inv!5099 (_values!4744 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))) (bvsge (size!35116 (_values!4744 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))) #b00000000000000000000000000000000))))

(assert (=> b!4294377 d!1265821))

(declare-fun d!1265823 () Bool)

(assert (=> d!1265823 (= (array_inv!5097 (_keys!4765 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))) (bvsge (size!35115 (_keys!4765 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))) #b00000000000000000000000000000000))))

(assert (=> b!4294351 d!1265823))

(declare-fun d!1265825 () Bool)

(assert (=> d!1265825 (= (array_inv!5098 (_values!4746 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))) (bvsge (size!35118 (_values!4746 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))) #b00000000000000000000000000000000))))

(assert (=> b!4294351 d!1265825))

(declare-fun bs!603041 () Bool)

(declare-fun d!1265827 () Bool)

(assert (= bs!603041 (and d!1265827 d!1265813)))

(declare-fun lambda!131577 () Int)

(assert (=> bs!603041 (not (= lambda!131577 lambda!131564))))

(declare-fun bs!603042 () Bool)

(declare-fun b!4294448 () Bool)

(assert (= bs!603042 (and b!4294448 d!1265813)))

(declare-fun lambda!131578 () Int)

(assert (=> bs!603042 (not (= lambda!131578 lambda!131564))))

(declare-fun bs!603043 () Bool)

(assert (= bs!603043 (and b!4294448 d!1265827)))

(assert (=> bs!603043 (not (= lambda!131578 lambda!131577))))

(declare-fun bs!603044 () Bool)

(declare-fun b!4294449 () Bool)

(assert (= bs!603044 (and b!4294449 d!1265813)))

(declare-fun lambda!131579 () Int)

(assert (=> bs!603044 (not (= lambda!131579 lambda!131564))))

(declare-fun bs!603045 () Bool)

(assert (= bs!603045 (and b!4294449 d!1265827)))

(assert (=> bs!603045 (not (= lambda!131579 lambda!131577))))

(declare-fun bs!603046 () Bool)

(assert (= bs!603046 (and b!4294449 b!4294448)))

(assert (=> bs!603046 (= lambda!131579 lambda!131578)))

(declare-fun bm!294518 () Bool)

(declare-datatypes ((List!47938 0))(
  ( (Nil!47814) (Cons!47814 (h!53234 Context!5746) (t!354542 List!47938)) )
))
(declare-fun call!294524 () List!47938)

(declare-fun toList!2129 ((InoxSet Context!5746)) List!47938)

(assert (=> bm!294518 (= call!294524 (toList!2129 z!3765))))

(declare-fun e!2668554 () Unit!66424)

(declare-fun Unit!66426 () Unit!66424)

(assert (=> b!4294448 (= e!2668554 Unit!66426)))

(declare-fun lt!1517772 () List!47938)

(assert (=> b!4294448 (= lt!1517772 call!294524)))

(declare-fun lt!1517777 () Unit!66424)

(declare-fun lemmaNotForallThenExists!174 (List!47938 Int) Unit!66424)

(assert (=> b!4294448 (= lt!1517777 (lemmaNotForallThenExists!174 lt!1517772 lambda!131577))))

(declare-fun call!294523 () Bool)

(assert (=> b!4294448 call!294523))

(declare-fun lt!1517773 () Unit!66424)

(assert (=> b!4294448 (= lt!1517773 lt!1517777)))

(declare-fun lt!1517771 () Bool)

(declare-datatypes ((Option!10150 0))(
  ( (None!10149) (Some!10149 (v!41762 List!47937)) )
))
(declare-fun isEmpty!28028 (Option!10150) Bool)

(declare-fun getLanguageWitness!602 ((InoxSet Context!5746)) Option!10150)

(assert (=> d!1265827 (= lt!1517771 (isEmpty!28028 (getLanguageWitness!602 z!3765)))))

(declare-fun forall!8558 ((InoxSet Context!5746) Int) Bool)

(assert (=> d!1265827 (= lt!1517771 (forall!8558 z!3765 lambda!131577))))

(declare-fun lt!1517775 () Unit!66424)

(assert (=> d!1265827 (= lt!1517775 e!2668554)))

(declare-fun c!730775 () Bool)

(assert (=> d!1265827 (= c!730775 (not (forall!8558 z!3765 lambda!131577)))))

(assert (=> d!1265827 (= (lostCauseZipper!655 z!3765) lt!1517771)))

(declare-fun Unit!66427 () Unit!66424)

(assert (=> b!4294449 (= e!2668554 Unit!66427)))

(declare-fun lt!1517774 () List!47938)

(assert (=> b!4294449 (= lt!1517774 call!294524)))

(declare-fun lt!1517776 () Unit!66424)

(declare-fun lemmaForallThenNotExists!157 (List!47938 Int) Unit!66424)

(assert (=> b!4294449 (= lt!1517776 (lemmaForallThenNotExists!157 lt!1517774 lambda!131577))))

(assert (=> b!4294449 (not call!294523)))

(declare-fun lt!1517770 () Unit!66424)

(assert (=> b!4294449 (= lt!1517770 lt!1517776)))

(declare-fun bm!294519 () Bool)

(declare-fun exists!1228 (List!47938 Int) Bool)

(assert (=> bm!294519 (= call!294523 (exists!1228 (ite c!730775 lt!1517772 lt!1517774) (ite c!730775 lambda!131578 lambda!131579)))))

(assert (= (and d!1265827 c!730775) b!4294448))

(assert (= (and d!1265827 (not c!730775)) b!4294449))

(assert (= (or b!4294448 b!4294449) bm!294518))

(assert (= (or b!4294448 b!4294449) bm!294519))

(declare-fun m!4887114 () Bool)

(assert (=> b!4294449 m!4887114))

(declare-fun m!4887116 () Bool)

(assert (=> bm!294518 m!4887116))

(declare-fun m!4887118 () Bool)

(assert (=> b!4294448 m!4887118))

(declare-fun m!4887120 () Bool)

(assert (=> d!1265827 m!4887120))

(assert (=> d!1265827 m!4887120))

(declare-fun m!4887122 () Bool)

(assert (=> d!1265827 m!4887122))

(declare-fun m!4887124 () Bool)

(assert (=> d!1265827 m!4887124))

(assert (=> d!1265827 m!4887124))

(declare-fun m!4887126 () Bool)

(assert (=> bm!294519 m!4887126))

(assert (=> b!4294387 d!1265827))

(declare-fun d!1265829 () Bool)

(declare-fun validCacheMapFindLongestMatch!82 (MutableMap!4370 BalanceConc!28338) Bool)

(assert (=> d!1265829 (= (valid!3446 (_4!531 lt!1517726)) (validCacheMapFindLongestMatch!82 (cache!4510 (_4!531 lt!1517726)) (totalInput!4392 (_4!531 lt!1517726))))))

(declare-fun bs!603047 () Bool)

(assert (= bs!603047 d!1265829))

(declare-fun m!4887128 () Bool)

(assert (=> bs!603047 m!4887128))

(assert (=> b!4294376 d!1265829))

(declare-fun d!1265831 () Bool)

(assert (=> d!1265831 (= (valid!3446 (_2!26063 lt!1517719)) (validCacheMapFindLongestMatch!82 (cache!4510 (_2!26063 lt!1517719)) (totalInput!4392 (_2!26063 lt!1517719))))))

(declare-fun bs!603048 () Bool)

(assert (= bs!603048 d!1265831))

(declare-fun m!4887130 () Bool)

(assert (=> bs!603048 m!4887130))

(assert (=> b!4294368 d!1265831))

(declare-fun bs!603049 () Bool)

(declare-fun d!1265833 () Bool)

(assert (= bs!603049 (and d!1265833 d!1265813)))

(declare-fun lambda!131580 () Int)

(assert (=> bs!603049 (= lambda!131580 lambda!131564)))

(declare-fun bs!603050 () Bool)

(assert (= bs!603050 (and d!1265833 d!1265827)))

(assert (=> bs!603050 (not (= lambda!131580 lambda!131577))))

(declare-fun bs!603051 () Bool)

(assert (= bs!603051 (and d!1265833 b!4294448)))

(assert (=> bs!603051 (not (= lambda!131580 lambda!131578))))

(declare-fun bs!603052 () Bool)

(assert (= bs!603052 (and d!1265833 b!4294449)))

(assert (=> bs!603052 (not (= lambda!131580 lambda!131579))))

(assert (=> d!1265833 (= (nullableZipper!775 (_1!26062 lt!1517725)) (exists!1227 (_1!26062 lt!1517725) lambda!131580))))

(declare-fun bs!603053 () Bool)

(assert (= bs!603053 d!1265833))

(declare-fun m!4887132 () Bool)

(assert (=> bs!603053 m!4887132))

(assert (=> b!4294386 d!1265833))

(declare-fun d!1265835 () Bool)

(declare-fun e!2668557 () Bool)

(assert (=> d!1265835 e!2668557))

(declare-fun res!1760481 () Bool)

(assert (=> d!1265835 (=> (not res!1760481) (not e!2668557))))

(declare-fun lt!1517780 () tuple2!45570)

(assert (=> d!1265835 (= res!1760481 (validCacheMapFindLongestMatch!82 (cache!4510 (_2!26064 lt!1517780)) (totalInput!4392 (_2!26064 lt!1517780))))))

(declare-fun choose!26150 (CacheFindLongestMatch!536 (InoxSet Context!5746) Int Int BalanceConc!28338) tuple2!45570)

(assert (=> d!1265835 (= lt!1517780 (choose!26150 (_2!26063 lt!1517723) z!3765 from!999 (_1!26063 lt!1517723) totalInput!812))))

(assert (=> d!1265835 (= totalInput!812 (totalInput!4392 (_2!26063 lt!1517723)))))

(assert (=> d!1265835 (= (update!285 (_2!26063 lt!1517723) z!3765 from!999 (_1!26063 lt!1517723) totalInput!812) lt!1517780)))

(declare-fun b!4294452 () Bool)

(assert (=> b!4294452 (= e!2668557 (= (totalInput!4392 (_2!26064 lt!1517780)) totalInput!812))))

(assert (= (and d!1265835 res!1760481) b!4294452))

(declare-fun m!4887134 () Bool)

(assert (=> d!1265835 m!4887134))

(declare-fun m!4887136 () Bool)

(assert (=> d!1265835 m!4887136))

(assert (=> b!4294361 d!1265835))

(declare-fun b!4294453 () Bool)

(declare-fun c!730778 () Bool)

(declare-fun lt!1517782 () (InoxSet Context!5746))

(assert (=> b!4294453 (= c!730778 (nullableZipper!775 lt!1517782))))

(declare-fun e!2668558 () Int)

(declare-fun e!2668562 () Int)

(assert (=> b!4294453 (= e!2668558 e!2668562)))

(declare-fun b!4294454 () Bool)

(declare-fun e!2668559 () Int)

(assert (=> b!4294454 (= e!2668559 0)))

(declare-fun b!4294455 () Bool)

(assert (=> b!4294455 (= e!2668562 1)))

(declare-fun d!1265837 () Bool)

(declare-fun lt!1517783 () Int)

(assert (=> d!1265837 (and (>= lt!1517783 0) (<= lt!1517783 (- totalInputSize!257 from!999)))))

(assert (=> d!1265837 (= lt!1517783 e!2668559)))

(declare-fun c!730777 () Bool)

(declare-fun e!2668561 () Bool)

(assert (=> d!1265837 (= c!730777 e!2668561)))

(declare-fun res!1760483 () Bool)

(assert (=> d!1265837 (=> res!1760483 e!2668561)))

(assert (=> d!1265837 (= res!1760483 (= from!999 totalInputSize!257))))

(declare-fun e!2668560 () Bool)

(assert (=> d!1265837 e!2668560))

(declare-fun res!1760482 () Bool)

(assert (=> d!1265837 (=> (not res!1760482) (not e!2668560))))

(assert (=> d!1265837 (= res!1760482 (>= from!999 0))))

(assert (=> d!1265837 (= (findLongestMatchInnerZipperFastV2!42 z!3765 from!999 totalInput!812 totalInputSize!257) lt!1517783)))

(declare-fun b!4294456 () Bool)

(assert (=> b!4294456 (= e!2668562 0)))

(declare-fun b!4294457 () Bool)

(assert (=> b!4294457 (= e!2668560 (<= from!999 (size!35119 totalInput!812)))))

(declare-fun b!4294458 () Bool)

(assert (=> b!4294458 (= e!2668559 e!2668558)))

(assert (=> b!4294458 (= lt!1517782 (derivationStepZipper!552 z!3765 (apply!10848 totalInput!812 from!999)))))

(declare-fun lt!1517781 () Int)

(assert (=> b!4294458 (= lt!1517781 (findLongestMatchInnerZipperFastV2!42 lt!1517782 (+ from!999 1) totalInput!812 totalInputSize!257))))

(declare-fun c!730776 () Bool)

(assert (=> b!4294458 (= c!730776 (> lt!1517781 0))))

(declare-fun b!4294459 () Bool)

(assert (=> b!4294459 (= e!2668558 (+ 1 lt!1517781))))

(declare-fun b!4294460 () Bool)

(assert (=> b!4294460 (= e!2668561 (lostCauseZipper!655 z!3765))))

(assert (= (and d!1265837 res!1760482) b!4294457))

(assert (= (and d!1265837 (not res!1760483)) b!4294460))

(assert (= (and d!1265837 c!730777) b!4294454))

(assert (= (and d!1265837 (not c!730777)) b!4294458))

(assert (= (and b!4294458 c!730776) b!4294459))

(assert (= (and b!4294458 (not c!730776)) b!4294453))

(assert (= (and b!4294453 c!730778) b!4294455))

(assert (= (and b!4294453 (not c!730778)) b!4294456))

(declare-fun m!4887138 () Bool)

(assert (=> b!4294453 m!4887138))

(assert (=> b!4294457 m!4886994))

(assert (=> b!4294458 m!4887014))

(assert (=> b!4294458 m!4887014))

(assert (=> b!4294458 m!4887016))

(declare-fun m!4887140 () Bool)

(assert (=> b!4294458 m!4887140))

(assert (=> b!4294460 m!4887044))

(assert (=> b!4294361 d!1265837))

(declare-fun d!1265839 () Bool)

(assert (=> d!1265839 (valid!3446 (_2!26063 lt!1517723))))

(declare-fun Unit!66428 () Unit!66424)

(assert (=> d!1265839 (= (lemmaInvariant!414 (_2!26063 lt!1517723)) Unit!66428)))

(declare-fun bs!603054 () Bool)

(assert (= bs!603054 d!1265839))

(declare-fun m!4887142 () Bool)

(assert (=> bs!603054 m!4887142))

(assert (=> b!4294361 d!1265839))

(declare-fun d!1265841 () Bool)

(assert (=> d!1265841 (= (array_inv!5097 (_keys!4764 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))) (bvsge (size!35115 (_keys!4764 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))) #b00000000000000000000000000000000))))

(assert (=> b!4294388 d!1265841))

(declare-fun d!1265843 () Bool)

(assert (=> d!1265843 (= (array_inv!5100 (_values!4745 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))) (bvsge (size!35117 (_values!4745 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))) #b00000000000000000000000000000000))))

(assert (=> b!4294388 d!1265843))

(declare-fun d!1265845 () Bool)

(declare-fun lambda!131583 () Int)

(declare-fun forall!8559 (List!47933 Int) Bool)

(assert (=> d!1265845 (= (inv!63342 setElem!26604) (forall!8559 (exprs!3373 setElem!26604) lambda!131583))))

(declare-fun bs!603055 () Bool)

(assert (= bs!603055 d!1265845))

(declare-fun m!4887144 () Bool)

(assert (=> bs!603055 m!4887144))

(assert (=> setNonEmpty!26604 d!1265845))

(declare-fun d!1265847 () Bool)

(declare-fun res!1760486 () Bool)

(declare-fun e!2668565 () Bool)

(assert (=> d!1265847 (=> (not res!1760486) (not e!2668565))))

(assert (=> d!1265847 (= res!1760486 ((_ is HashMap!4369) (cache!4511 cacheDown!1066)))))

(assert (=> d!1265847 (= (inv!63338 cacheDown!1066) e!2668565)))

(declare-fun b!4294463 () Bool)

(assert (=> b!4294463 (= e!2668565 (validCacheMapDown!452 (cache!4511 cacheDown!1066)))))

(assert (= (and d!1265847 res!1760486) b!4294463))

(declare-fun m!4887146 () Bool)

(assert (=> b!4294463 m!4887146))

(assert (=> start!412236 d!1265847))

(declare-fun d!1265849 () Bool)

(declare-fun res!1760489 () Bool)

(declare-fun e!2668568 () Bool)

(assert (=> d!1265849 (=> (not res!1760489) (not e!2668568))))

(assert (=> d!1265849 (= res!1760489 ((_ is HashMap!4370) (cache!4510 cacheFindLongestMatch!183)))))

(assert (=> d!1265849 (= (inv!63339 cacheFindLongestMatch!183) e!2668568)))

(declare-fun b!4294466 () Bool)

(assert (=> b!4294466 (= e!2668568 (validCacheMapFindLongestMatch!82 (cache!4510 cacheFindLongestMatch!183) (totalInput!4392 cacheFindLongestMatch!183)))))

(assert (= (and d!1265849 res!1760489) b!4294466))

(declare-fun m!4887148 () Bool)

(assert (=> b!4294466 m!4887148))

(assert (=> start!412236 d!1265849))

(declare-fun d!1265851 () Bool)

(assert (=> d!1265851 (= (inv!63340 totalInput!812) (isBalanced!3887 (c!730753 totalInput!812)))))

(declare-fun bs!603056 () Bool)

(assert (= bs!603056 d!1265851))

(declare-fun m!4887150 () Bool)

(assert (=> bs!603056 m!4887150))

(assert (=> start!412236 d!1265851))

(declare-fun d!1265853 () Bool)

(declare-fun res!1760492 () Bool)

(declare-fun e!2668571 () Bool)

(assert (=> d!1265853 (=> (not res!1760492) (not e!2668571))))

(assert (=> d!1265853 (= res!1760492 ((_ is HashMap!4371) (cache!4509 cacheUp!947)))))

(assert (=> d!1265853 (= (inv!63341 cacheUp!947) e!2668571)))

(declare-fun b!4294469 () Bool)

(assert (=> b!4294469 (= e!2668571 (validCacheMapUp!421 (cache!4509 cacheUp!947)))))

(assert (= (and d!1265853 res!1760492) b!4294469))

(declare-fun m!4887152 () Bool)

(assert (=> b!4294469 m!4887152))

(assert (=> start!412236 d!1265853))

(declare-fun d!1265855 () Bool)

(declare-fun c!730781 () Bool)

(assert (=> d!1265855 (= c!730781 ((_ is Node!14424) (c!730753 totalInput!812)))))

(declare-fun e!2668576 () Bool)

(assert (=> d!1265855 (= (inv!63343 (c!730753 totalInput!812)) e!2668576)))

(declare-fun b!4294476 () Bool)

(declare-fun inv!63344 (Conc!14424) Bool)

(assert (=> b!4294476 (= e!2668576 (inv!63344 (c!730753 totalInput!812)))))

(declare-fun b!4294477 () Bool)

(declare-fun e!2668577 () Bool)

(assert (=> b!4294477 (= e!2668576 e!2668577)))

(declare-fun res!1760495 () Bool)

(assert (=> b!4294477 (= res!1760495 (not ((_ is Leaf!22317) (c!730753 totalInput!812))))))

(assert (=> b!4294477 (=> res!1760495 e!2668577)))

(declare-fun b!4294478 () Bool)

(declare-fun inv!63345 (Conc!14424) Bool)

(assert (=> b!4294478 (= e!2668577 (inv!63345 (c!730753 totalInput!812)))))

(assert (= (and d!1265855 c!730781) b!4294476))

(assert (= (and d!1265855 (not c!730781)) b!4294477))

(assert (= (and b!4294477 (not res!1760495)) b!4294478))

(declare-fun m!4887154 () Bool)

(assert (=> b!4294476 m!4887154))

(declare-fun m!4887156 () Bool)

(assert (=> b!4294478 m!4887156))

(assert (=> b!4294382 d!1265855))

(assert (=> b!4294356 d!1265837))

(declare-fun d!1265857 () Bool)

(declare-fun e!2668580 () Bool)

(assert (=> d!1265857 e!2668580))

(declare-fun res!1760498 () Bool)

(assert (=> d!1265857 (=> res!1760498 e!2668580)))

(declare-fun lt!1517786 () Option!10149)

(declare-fun isEmpty!28029 (Option!10149) Bool)

(assert (=> d!1265857 (= res!1760498 (isEmpty!28029 lt!1517786))))

(declare-fun choose!26151 (CacheFindLongestMatch!536 (InoxSet Context!5746) Int) Option!10149)

(assert (=> d!1265857 (= lt!1517786 (choose!26151 cacheFindLongestMatch!183 z!3765 from!999))))

(assert (=> d!1265857 (validCacheMapFindLongestMatch!82 (cache!4510 cacheFindLongestMatch!183) (totalInput!4392 cacheFindLongestMatch!183))))

(assert (=> d!1265857 (= (get!15472 cacheFindLongestMatch!183 z!3765 from!999) lt!1517786)))

(declare-fun b!4294481 () Bool)

(declare-fun get!15473 (Option!10149) Int)

(assert (=> b!4294481 (= e!2668580 (= (get!15473 lt!1517786) (findLongestMatchInnerZipperFastV2!42 z!3765 from!999 (totalInput!4392 cacheFindLongestMatch!183) (size!35119 (totalInput!4392 cacheFindLongestMatch!183)))))))

(assert (= (and d!1265857 (not res!1760498)) b!4294481))

(declare-fun m!4887158 () Bool)

(assert (=> d!1265857 m!4887158))

(declare-fun m!4887160 () Bool)

(assert (=> d!1265857 m!4887160))

(assert (=> d!1265857 m!4887148))

(declare-fun m!4887162 () Bool)

(assert (=> b!4294481 m!4887162))

(declare-fun m!4887164 () Bool)

(assert (=> b!4294481 m!4887164))

(assert (=> b!4294481 m!4887164))

(declare-fun m!4887166 () Bool)

(assert (=> b!4294481 m!4887166))

(assert (=> b!4294356 d!1265857))

(declare-fun d!1265859 () Bool)

(declare-fun c!730782 () Bool)

(assert (=> d!1265859 (= c!730782 ((_ is Node!14424) (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))))

(declare-fun e!2668581 () Bool)

(assert (=> d!1265859 (= (inv!63343 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) e!2668581)))

(declare-fun b!4294482 () Bool)

(assert (=> b!4294482 (= e!2668581 (inv!63344 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))))

(declare-fun b!4294483 () Bool)

(declare-fun e!2668582 () Bool)

(assert (=> b!4294483 (= e!2668581 e!2668582)))

(declare-fun res!1760499 () Bool)

(assert (=> b!4294483 (= res!1760499 (not ((_ is Leaf!22317) (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))

(assert (=> b!4294483 (=> res!1760499 e!2668582)))

(declare-fun b!4294484 () Bool)

(assert (=> b!4294484 (= e!2668582 (inv!63345 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))))

(assert (= (and d!1265859 c!730782) b!4294482))

(assert (= (and d!1265859 (not c!730782)) b!4294483))

(assert (= (and b!4294483 (not res!1760499)) b!4294484))

(declare-fun m!4887168 () Bool)

(assert (=> b!4294482 m!4887168))

(declare-fun m!4887170 () Bool)

(assert (=> b!4294484 m!4887170))

(assert (=> b!4294391 d!1265859))

(declare-fun b!4294485 () Bool)

(declare-fun c!730785 () Bool)

(declare-fun lt!1517788 () (InoxSet Context!5746))

(assert (=> b!4294485 (= c!730785 (nullableZipper!775 lt!1517788))))

(declare-fun e!2668583 () Int)

(declare-fun e!2668587 () Int)

(assert (=> b!4294485 (= e!2668583 e!2668587)))

(declare-fun b!4294486 () Bool)

(declare-fun e!2668584 () Int)

(assert (=> b!4294486 (= e!2668584 0)))

(declare-fun b!4294487 () Bool)

(assert (=> b!4294487 (= e!2668587 1)))

(declare-fun d!1265861 () Bool)

(declare-fun lt!1517789 () Int)

(assert (=> d!1265861 (and (>= lt!1517789 0) (<= lt!1517789 (- totalInputSize!257 (+ 1 from!999))))))

(assert (=> d!1265861 (= lt!1517789 e!2668584)))

(declare-fun c!730784 () Bool)

(declare-fun e!2668586 () Bool)

(assert (=> d!1265861 (= c!730784 e!2668586)))

(declare-fun res!1760501 () Bool)

(assert (=> d!1265861 (=> res!1760501 e!2668586)))

(assert (=> d!1265861 (= res!1760501 (= (+ 1 from!999) totalInputSize!257))))

(declare-fun e!2668585 () Bool)

(assert (=> d!1265861 e!2668585))

(declare-fun res!1760500 () Bool)

(assert (=> d!1265861 (=> (not res!1760500) (not e!2668585))))

(assert (=> d!1265861 (= res!1760500 (>= (+ 1 from!999) 0))))

(assert (=> d!1265861 (= (findLongestMatchInnerZipperFastV2!42 lt!1517722 (+ 1 from!999) totalInput!812 totalInputSize!257) lt!1517789)))

(declare-fun b!4294488 () Bool)

(assert (=> b!4294488 (= e!2668587 0)))

(declare-fun b!4294489 () Bool)

(assert (=> b!4294489 (= e!2668585 (<= (+ 1 from!999) (size!35119 totalInput!812)))))

(declare-fun b!4294490 () Bool)

(assert (=> b!4294490 (= e!2668584 e!2668583)))

(assert (=> b!4294490 (= lt!1517788 (derivationStepZipper!552 lt!1517722 (apply!10848 totalInput!812 (+ 1 from!999))))))

(declare-fun lt!1517787 () Int)

(assert (=> b!4294490 (= lt!1517787 (findLongestMatchInnerZipperFastV2!42 lt!1517788 (+ 1 from!999 1) totalInput!812 totalInputSize!257))))

(declare-fun c!730783 () Bool)

(assert (=> b!4294490 (= c!730783 (> lt!1517787 0))))

(declare-fun b!4294491 () Bool)

(assert (=> b!4294491 (= e!2668583 (+ 1 lt!1517787))))

(declare-fun b!4294492 () Bool)

(assert (=> b!4294492 (= e!2668586 (lostCauseZipper!655 lt!1517722))))

(assert (= (and d!1265861 res!1760500) b!4294489))

(assert (= (and d!1265861 (not res!1760501)) b!4294492))

(assert (= (and d!1265861 c!730784) b!4294486))

(assert (= (and d!1265861 (not c!730784)) b!4294490))

(assert (= (and b!4294490 c!730783) b!4294491))

(assert (= (and b!4294490 (not c!730783)) b!4294485))

(assert (= (and b!4294485 c!730785) b!4294487))

(assert (= (and b!4294485 (not c!730785)) b!4294488))

(declare-fun m!4887172 () Bool)

(assert (=> b!4294485 m!4887172))

(assert (=> b!4294489 m!4886994))

(assert (=> b!4294490 m!4887070))

(assert (=> b!4294490 m!4887070))

(declare-fun m!4887174 () Bool)

(assert (=> b!4294490 m!4887174))

(declare-fun m!4887176 () Bool)

(assert (=> b!4294490 m!4887176))

(declare-fun m!4887178 () Bool)

(assert (=> b!4294492 m!4887178))

(assert (=> b!4294355 d!1265861))

(declare-fun d!1265863 () Bool)

(assert (=> d!1265863 true))

(declare-fun lambda!131586 () Int)

(declare-fun flatMap!256 ((InoxSet Context!5746) Int) (InoxSet Context!5746))

(assert (=> d!1265863 (= (derivationStepZipper!552 z!3765 (apply!10848 totalInput!812 from!999)) (flatMap!256 z!3765 lambda!131586))))

(declare-fun bs!603057 () Bool)

(assert (= bs!603057 d!1265863))

(declare-fun m!4887180 () Bool)

(assert (=> bs!603057 m!4887180))

(assert (=> b!4294355 d!1265863))

(assert (=> b!4294355 d!1265803))

(declare-fun setNonEmpty!26609 () Bool)

(declare-fun tp!1318271 () Bool)

(declare-fun setElem!26609 () Context!5746)

(declare-fun e!2668601 () Bool)

(declare-fun setRes!26610 () Bool)

(assert (=> setNonEmpty!26609 (= setRes!26610 (and tp!1318271 (inv!63342 setElem!26609) e!2668601))))

(declare-fun mapDefault!20049 () List!47936)

(declare-fun setRest!26609 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26609 (= (_2!26056 (h!53232 mapDefault!20049)) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26609 true) setRest!26609))))

(declare-fun b!4294509 () Bool)

(declare-fun e!2668600 () Bool)

(declare-fun tp!1318276 () Bool)

(assert (=> b!4294509 (= e!2668600 tp!1318276)))

(declare-fun condMapEmpty!20049 () Bool)

(assert (=> mapNonEmpty!20046 (= condMapEmpty!20049 (= mapRest!20045 ((as const (Array (_ BitVec 32) List!47936)) mapDefault!20049)))))

(declare-fun e!2668604 () Bool)

(declare-fun mapRes!20049 () Bool)

(assert (=> mapNonEmpty!20046 (= tp!1318251 (and e!2668604 mapRes!20049))))

(declare-fun mapIsEmpty!20049 () Bool)

(assert (=> mapIsEmpty!20049 mapRes!20049))

(declare-fun tp_is_empty!23123 () Bool)

(declare-fun tp!1318274 () Bool)

(declare-fun b!4294510 () Bool)

(declare-fun e!2668602 () Bool)

(declare-fun mapValue!20049 () List!47936)

(declare-fun setRes!26609 () Bool)

(declare-fun e!2668603 () Bool)

(assert (=> b!4294510 (= e!2668603 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 mapValue!20049)))) e!2668602 tp_is_empty!23123 setRes!26609 tp!1318274))))

(declare-fun condSetEmpty!26610 () Bool)

(assert (=> b!4294510 (= condSetEmpty!26610 (= (_2!26056 (h!53232 mapValue!20049)) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4294511 () Bool)

(declare-fun tp!1318277 () Bool)

(assert (=> b!4294511 (= e!2668602 tp!1318277)))

(declare-fun setIsEmpty!26609 () Bool)

(assert (=> setIsEmpty!26609 setRes!26609))

(declare-fun setIsEmpty!26610 () Bool)

(assert (=> setIsEmpty!26610 setRes!26610))

(declare-fun mapNonEmpty!20049 () Bool)

(declare-fun tp!1318272 () Bool)

(assert (=> mapNonEmpty!20049 (= mapRes!20049 (and tp!1318272 e!2668603))))

(declare-fun mapRest!20049 () (Array (_ BitVec 32) List!47936))

(declare-fun mapKey!20049 () (_ BitVec 32))

(assert (=> mapNonEmpty!20049 (= mapRest!20045 (store mapRest!20049 mapKey!20049 mapValue!20049))))

(declare-fun b!4294512 () Bool)

(declare-fun tp!1318275 () Bool)

(assert (=> b!4294512 (= e!2668601 tp!1318275)))

(declare-fun e!2668605 () Bool)

(declare-fun tp!1318273 () Bool)

(declare-fun b!4294513 () Bool)

(assert (=> b!4294513 (= e!2668604 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 mapDefault!20049)))) e!2668605 tp_is_empty!23123 setRes!26610 tp!1318273))))

(declare-fun condSetEmpty!26609 () Bool)

(assert (=> b!4294513 (= condSetEmpty!26609 (= (_2!26056 (h!53232 mapDefault!20049)) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4294514 () Bool)

(declare-fun tp!1318270 () Bool)

(assert (=> b!4294514 (= e!2668605 tp!1318270)))

(declare-fun tp!1318278 () Bool)

(declare-fun setElem!26610 () Context!5746)

(declare-fun setNonEmpty!26610 () Bool)

(assert (=> setNonEmpty!26610 (= setRes!26609 (and tp!1318278 (inv!63342 setElem!26610) e!2668600))))

(declare-fun setRest!26610 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26610 (= (_2!26056 (h!53232 mapValue!20049)) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26610 true) setRest!26610))))

(assert (= (and mapNonEmpty!20046 condMapEmpty!20049) mapIsEmpty!20049))

(assert (= (and mapNonEmpty!20046 (not condMapEmpty!20049)) mapNonEmpty!20049))

(assert (= b!4294510 b!4294511))

(assert (= (and b!4294510 condSetEmpty!26610) setIsEmpty!26609))

(assert (= (and b!4294510 (not condSetEmpty!26610)) setNonEmpty!26610))

(assert (= setNonEmpty!26610 b!4294509))

(assert (= (and mapNonEmpty!20049 ((_ is Cons!47812) mapValue!20049)) b!4294510))

(assert (= b!4294513 b!4294514))

(assert (= (and b!4294513 condSetEmpty!26609) setIsEmpty!26610))

(assert (= (and b!4294513 (not condSetEmpty!26609)) setNonEmpty!26609))

(assert (= setNonEmpty!26609 b!4294512))

(assert (= (and mapNonEmpty!20046 ((_ is Cons!47812) mapDefault!20049)) b!4294513))

(declare-fun m!4887182 () Bool)

(assert (=> mapNonEmpty!20049 m!4887182))

(declare-fun m!4887184 () Bool)

(assert (=> b!4294510 m!4887184))

(declare-fun m!4887186 () Bool)

(assert (=> setNonEmpty!26609 m!4887186))

(declare-fun m!4887188 () Bool)

(assert (=> setNonEmpty!26610 m!4887188))

(declare-fun m!4887190 () Bool)

(assert (=> b!4294513 m!4887190))

(declare-fun b!4294523 () Bool)

(declare-fun tp!1318287 () Bool)

(declare-fun e!2668613 () Bool)

(declare-fun e!2668612 () Bool)

(declare-fun setRes!26613 () Bool)

(assert (=> b!4294523 (= e!2668613 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 mapValue!20044)))) e!2668612 tp_is_empty!23123 setRes!26613 tp!1318287))))

(declare-fun condSetEmpty!26613 () Bool)

(assert (=> b!4294523 (= condSetEmpty!26613 (= (_2!26056 (h!53232 mapValue!20044)) ((as const (Array Context!5746 Bool)) false)))))

(assert (=> mapNonEmpty!20046 (= tp!1318228 e!2668613)))

(declare-fun setNonEmpty!26613 () Bool)

(declare-fun e!2668614 () Bool)

(declare-fun tp!1318289 () Bool)

(declare-fun setElem!26613 () Context!5746)

(assert (=> setNonEmpty!26613 (= setRes!26613 (and tp!1318289 (inv!63342 setElem!26613) e!2668614))))

(declare-fun setRest!26613 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26613 (= (_2!26056 (h!53232 mapValue!20044)) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26613 true) setRest!26613))))

(declare-fun b!4294524 () Bool)

(declare-fun tp!1318288 () Bool)

(assert (=> b!4294524 (= e!2668612 tp!1318288)))

(declare-fun b!4294525 () Bool)

(declare-fun tp!1318290 () Bool)

(assert (=> b!4294525 (= e!2668614 tp!1318290)))

(declare-fun setIsEmpty!26613 () Bool)

(assert (=> setIsEmpty!26613 setRes!26613))

(assert (= b!4294523 b!4294524))

(assert (= (and b!4294523 condSetEmpty!26613) setIsEmpty!26613))

(assert (= (and b!4294523 (not condSetEmpty!26613)) setNonEmpty!26613))

(assert (= setNonEmpty!26613 b!4294525))

(assert (= (and mapNonEmpty!20046 ((_ is Cons!47812) mapValue!20044)) b!4294523))

(declare-fun m!4887192 () Bool)

(assert (=> b!4294523 m!4887192))

(declare-fun m!4887194 () Bool)

(assert (=> setNonEmpty!26613 m!4887194))

(declare-fun b!4294540 () Bool)

(declare-fun e!2668630 () Bool)

(declare-fun tp!1318323 () Bool)

(assert (=> b!4294540 (= e!2668630 tp!1318323)))

(declare-fun setRes!26619 () Bool)

(declare-fun e!2668628 () Bool)

(declare-fun mapDefault!20052 () List!47934)

(declare-fun tp!1318317 () Bool)

(declare-fun tp!1318318 () Bool)

(declare-fun b!4294541 () Bool)

(declare-fun e!2668631 () Bool)

(assert (=> b!4294541 (= e!2668628 (and tp!1318317 (inv!63342 (_2!26057 (_1!26058 (h!53230 mapDefault!20052)))) e!2668631 tp_is_empty!23123 setRes!26619 tp!1318318))))

(declare-fun condSetEmpty!26619 () Bool)

(assert (=> b!4294541 (= condSetEmpty!26619 (= (_2!26058 (h!53230 mapDefault!20052)) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4294542 () Bool)

(declare-fun tp!1318322 () Bool)

(assert (=> b!4294542 (= e!2668631 tp!1318322)))

(declare-fun b!4294543 () Bool)

(declare-fun e!2668627 () Bool)

(declare-fun tp!1318313 () Bool)

(assert (=> b!4294543 (= e!2668627 tp!1318313)))

(declare-fun mapNonEmpty!20052 () Bool)

(declare-fun mapRes!20052 () Bool)

(declare-fun tp!1318314 () Bool)

(declare-fun e!2668632 () Bool)

(assert (=> mapNonEmpty!20052 (= mapRes!20052 (and tp!1318314 e!2668632))))

(declare-fun mapValue!20052 () List!47934)

(declare-fun mapRest!20052 () (Array (_ BitVec 32) List!47934))

(declare-fun mapKey!20052 () (_ BitVec 32))

(assert (=> mapNonEmpty!20052 (= mapRest!20046 (store mapRest!20052 mapKey!20052 mapValue!20052))))

(declare-fun setIsEmpty!26618 () Bool)

(declare-fun setRes!26618 () Bool)

(assert (=> setIsEmpty!26618 setRes!26618))

(declare-fun condMapEmpty!20052 () Bool)

(assert (=> mapNonEmpty!20045 (= condMapEmpty!20052 (= mapRest!20046 ((as const (Array (_ BitVec 32) List!47934)) mapDefault!20052)))))

(assert (=> mapNonEmpty!20045 (= tp!1318250 (and e!2668628 mapRes!20052))))

(declare-fun setNonEmpty!26618 () Bool)

(declare-fun setElem!26618 () Context!5746)

(declare-fun tp!1318316 () Bool)

(assert (=> setNonEmpty!26618 (= setRes!26619 (and tp!1318316 (inv!63342 setElem!26618) e!2668630))))

(declare-fun setRest!26619 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26618 (= (_2!26058 (h!53230 mapDefault!20052)) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26618 true) setRest!26619))))

(declare-fun b!4294544 () Bool)

(declare-fun e!2668629 () Bool)

(declare-fun tp!1318315 () Bool)

(declare-fun tp!1318319 () Bool)

(assert (=> b!4294544 (= e!2668632 (and tp!1318319 (inv!63342 (_2!26057 (_1!26058 (h!53230 mapValue!20052)))) e!2668629 tp_is_empty!23123 setRes!26618 tp!1318315))))

(declare-fun condSetEmpty!26618 () Bool)

(assert (=> b!4294544 (= condSetEmpty!26618 (= (_2!26058 (h!53230 mapValue!20052)) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setIsEmpty!26619 () Bool)

(assert (=> setIsEmpty!26619 setRes!26619))

(declare-fun mapIsEmpty!20052 () Bool)

(assert (=> mapIsEmpty!20052 mapRes!20052))

(declare-fun b!4294545 () Bool)

(declare-fun tp!1318321 () Bool)

(assert (=> b!4294545 (= e!2668629 tp!1318321)))

(declare-fun setNonEmpty!26619 () Bool)

(declare-fun tp!1318320 () Bool)

(declare-fun setElem!26619 () Context!5746)

(assert (=> setNonEmpty!26619 (= setRes!26618 (and tp!1318320 (inv!63342 setElem!26619) e!2668627))))

(declare-fun setRest!26618 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26619 (= (_2!26058 (h!53230 mapValue!20052)) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26619 true) setRest!26618))))

(assert (= (and mapNonEmpty!20045 condMapEmpty!20052) mapIsEmpty!20052))

(assert (= (and mapNonEmpty!20045 (not condMapEmpty!20052)) mapNonEmpty!20052))

(assert (= b!4294544 b!4294545))

(assert (= (and b!4294544 condSetEmpty!26618) setIsEmpty!26618))

(assert (= (and b!4294544 (not condSetEmpty!26618)) setNonEmpty!26619))

(assert (= setNonEmpty!26619 b!4294543))

(assert (= (and mapNonEmpty!20052 ((_ is Cons!47810) mapValue!20052)) b!4294544))

(assert (= b!4294541 b!4294542))

(assert (= (and b!4294541 condSetEmpty!26619) setIsEmpty!26619))

(assert (= (and b!4294541 (not condSetEmpty!26619)) setNonEmpty!26618))

(assert (= setNonEmpty!26618 b!4294540))

(assert (= (and mapNonEmpty!20045 ((_ is Cons!47810) mapDefault!20052)) b!4294541))

(declare-fun m!4887196 () Bool)

(assert (=> mapNonEmpty!20052 m!4887196))

(declare-fun m!4887198 () Bool)

(assert (=> b!4294541 m!4887198))

(declare-fun m!4887200 () Bool)

(assert (=> b!4294544 m!4887200))

(declare-fun m!4887202 () Bool)

(assert (=> setNonEmpty!26619 m!4887202))

(declare-fun m!4887204 () Bool)

(assert (=> setNonEmpty!26618 m!4887204))

(declare-fun b!4294554 () Bool)

(declare-fun e!2668640 () Bool)

(declare-fun tp!1318338 () Bool)

(assert (=> b!4294554 (= e!2668640 tp!1318338)))

(declare-fun setNonEmpty!26622 () Bool)

(declare-fun setRes!26622 () Bool)

(declare-fun tp!1318335 () Bool)

(declare-fun setElem!26622 () Context!5746)

(assert (=> setNonEmpty!26622 (= setRes!26622 (and tp!1318335 (inv!63342 setElem!26622) e!2668640))))

(declare-fun setRest!26622 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26622 (= (_2!26058 (h!53230 mapValue!20045)) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26622 true) setRest!26622))))

(declare-fun setIsEmpty!26622 () Bool)

(assert (=> setIsEmpty!26622 setRes!26622))

(declare-fun e!2668639 () Bool)

(assert (=> mapNonEmpty!20045 (= tp!1318231 e!2668639)))

(declare-fun tp!1318337 () Bool)

(declare-fun e!2668641 () Bool)

(declare-fun b!4294555 () Bool)

(declare-fun tp!1318334 () Bool)

(assert (=> b!4294555 (= e!2668639 (and tp!1318337 (inv!63342 (_2!26057 (_1!26058 (h!53230 mapValue!20045)))) e!2668641 tp_is_empty!23123 setRes!26622 tp!1318334))))

(declare-fun condSetEmpty!26622 () Bool)

(assert (=> b!4294555 (= condSetEmpty!26622 (= (_2!26058 (h!53230 mapValue!20045)) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4294556 () Bool)

(declare-fun tp!1318336 () Bool)

(assert (=> b!4294556 (= e!2668641 tp!1318336)))

(assert (= b!4294555 b!4294556))

(assert (= (and b!4294555 condSetEmpty!26622) setIsEmpty!26622))

(assert (= (and b!4294555 (not condSetEmpty!26622)) setNonEmpty!26622))

(assert (= setNonEmpty!26622 b!4294554))

(assert (= (and mapNonEmpty!20045 ((_ is Cons!47810) mapValue!20045)) b!4294555))

(declare-fun m!4887206 () Bool)

(assert (=> setNonEmpty!26622 m!4887206))

(declare-fun m!4887208 () Bool)

(assert (=> b!4294555 m!4887208))

(declare-fun b!4294557 () Bool)

(declare-fun e!2668643 () Bool)

(declare-fun tp!1318343 () Bool)

(assert (=> b!4294557 (= e!2668643 tp!1318343)))

(declare-fun setElem!26623 () Context!5746)

(declare-fun tp!1318340 () Bool)

(declare-fun setNonEmpty!26623 () Bool)

(declare-fun setRes!26623 () Bool)

(assert (=> setNonEmpty!26623 (= setRes!26623 (and tp!1318340 (inv!63342 setElem!26623) e!2668643))))

(declare-fun setRest!26623 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26623 (= (_2!26058 (h!53230 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26623 true) setRest!26623))))

(declare-fun setIsEmpty!26623 () Bool)

(assert (=> setIsEmpty!26623 setRes!26623))

(declare-fun e!2668642 () Bool)

(assert (=> b!4294377 (= tp!1318239 e!2668642)))

(declare-fun e!2668644 () Bool)

(declare-fun tp!1318342 () Bool)

(declare-fun tp!1318339 () Bool)

(declare-fun b!4294558 () Bool)

(assert (=> b!4294558 (= e!2668642 (and tp!1318342 (inv!63342 (_2!26057 (_1!26058 (h!53230 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))))) e!2668644 tp_is_empty!23123 setRes!26623 tp!1318339))))

(declare-fun condSetEmpty!26623 () Bool)

(assert (=> b!4294558 (= condSetEmpty!26623 (= (_2!26058 (h!53230 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4294559 () Bool)

(declare-fun tp!1318341 () Bool)

(assert (=> b!4294559 (= e!2668644 tp!1318341)))

(assert (= b!4294558 b!4294559))

(assert (= (and b!4294558 condSetEmpty!26623) setIsEmpty!26623))

(assert (= (and b!4294558 (not condSetEmpty!26623)) setNonEmpty!26623))

(assert (= setNonEmpty!26623 b!4294557))

(assert (= (and b!4294377 ((_ is Cons!47810) (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))) b!4294558))

(declare-fun m!4887210 () Bool)

(assert (=> setNonEmpty!26623 m!4887210))

(declare-fun m!4887212 () Bool)

(assert (=> b!4294558 m!4887212))

(declare-fun b!4294560 () Bool)

(declare-fun e!2668646 () Bool)

(declare-fun tp!1318348 () Bool)

(assert (=> b!4294560 (= e!2668646 tp!1318348)))

(declare-fun tp!1318345 () Bool)

(declare-fun setElem!26624 () Context!5746)

(declare-fun setNonEmpty!26624 () Bool)

(declare-fun setRes!26624 () Bool)

(assert (=> setNonEmpty!26624 (= setRes!26624 (and tp!1318345 (inv!63342 setElem!26624) e!2668646))))

(declare-fun setRest!26624 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26624 (= (_2!26058 (h!53230 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26624 true) setRest!26624))))

(declare-fun setIsEmpty!26624 () Bool)

(assert (=> setIsEmpty!26624 setRes!26624))

(declare-fun e!2668645 () Bool)

(assert (=> b!4294377 (= tp!1318249 e!2668645)))

(declare-fun tp!1318347 () Bool)

(declare-fun tp!1318344 () Bool)

(declare-fun b!4294561 () Bool)

(declare-fun e!2668647 () Bool)

(assert (=> b!4294561 (= e!2668645 (and tp!1318347 (inv!63342 (_2!26057 (_1!26058 (h!53230 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))))) e!2668647 tp_is_empty!23123 setRes!26624 tp!1318344))))

(declare-fun condSetEmpty!26624 () Bool)

(assert (=> b!4294561 (= condSetEmpty!26624 (= (_2!26058 (h!53230 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4294562 () Bool)

(declare-fun tp!1318346 () Bool)

(assert (=> b!4294562 (= e!2668647 tp!1318346)))

(assert (= b!4294561 b!4294562))

(assert (= (and b!4294561 condSetEmpty!26624) setIsEmpty!26624))

(assert (= (and b!4294561 (not condSetEmpty!26624)) setNonEmpty!26624))

(assert (= setNonEmpty!26624 b!4294560))

(assert (= (and b!4294377 ((_ is Cons!47810) (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))) b!4294561))

(declare-fun m!4887214 () Bool)

(assert (=> setNonEmpty!26624 m!4887214))

(declare-fun m!4887216 () Bool)

(assert (=> b!4294561 m!4887216))

(declare-fun tp!1318349 () Bool)

(declare-fun b!4294563 () Bool)

(declare-fun e!2668649 () Bool)

(declare-fun setRes!26625 () Bool)

(declare-fun e!2668648 () Bool)

(assert (=> b!4294563 (= e!2668649 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 (zeroValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))))) e!2668648 tp_is_empty!23123 setRes!26625 tp!1318349))))

(declare-fun condSetEmpty!26625 () Bool)

(assert (=> b!4294563 (= condSetEmpty!26625 (= (_2!26056 (h!53232 (zeroValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))) ((as const (Array Context!5746 Bool)) false)))))

(assert (=> b!4294351 (= tp!1318233 e!2668649)))

(declare-fun tp!1318351 () Bool)

(declare-fun setNonEmpty!26625 () Bool)

(declare-fun e!2668650 () Bool)

(declare-fun setElem!26625 () Context!5746)

(assert (=> setNonEmpty!26625 (= setRes!26625 (and tp!1318351 (inv!63342 setElem!26625) e!2668650))))

(declare-fun setRest!26625 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26625 (= (_2!26056 (h!53232 (zeroValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26625 true) setRest!26625))))

(declare-fun b!4294564 () Bool)

(declare-fun tp!1318350 () Bool)

(assert (=> b!4294564 (= e!2668648 tp!1318350)))

(declare-fun b!4294565 () Bool)

(declare-fun tp!1318352 () Bool)

(assert (=> b!4294565 (= e!2668650 tp!1318352)))

(declare-fun setIsEmpty!26625 () Bool)

(assert (=> setIsEmpty!26625 setRes!26625))

(assert (= b!4294563 b!4294564))

(assert (= (and b!4294563 condSetEmpty!26625) setIsEmpty!26625))

(assert (= (and b!4294563 (not condSetEmpty!26625)) setNonEmpty!26625))

(assert (= setNonEmpty!26625 b!4294565))

(assert (= (and b!4294351 ((_ is Cons!47812) (zeroValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))) b!4294563))

(declare-fun m!4887218 () Bool)

(assert (=> b!4294563 m!4887218))

(declare-fun m!4887220 () Bool)

(assert (=> setNonEmpty!26625 m!4887220))

(declare-fun e!2668652 () Bool)

(declare-fun setRes!26626 () Bool)

(declare-fun b!4294566 () Bool)

(declare-fun tp!1318353 () Bool)

(declare-fun e!2668651 () Bool)

(assert (=> b!4294566 (= e!2668652 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 (minValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))))) e!2668651 tp_is_empty!23123 setRes!26626 tp!1318353))))

(declare-fun condSetEmpty!26626 () Bool)

(assert (=> b!4294566 (= condSetEmpty!26626 (= (_2!26056 (h!53232 (minValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))) ((as const (Array Context!5746 Bool)) false)))))

(assert (=> b!4294351 (= tp!1318248 e!2668652)))

(declare-fun setElem!26626 () Context!5746)

(declare-fun setNonEmpty!26626 () Bool)

(declare-fun e!2668653 () Bool)

(declare-fun tp!1318355 () Bool)

(assert (=> setNonEmpty!26626 (= setRes!26626 (and tp!1318355 (inv!63342 setElem!26626) e!2668653))))

(declare-fun setRest!26626 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26626 (= (_2!26056 (h!53232 (minValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26626 true) setRest!26626))))

(declare-fun b!4294567 () Bool)

(declare-fun tp!1318354 () Bool)

(assert (=> b!4294567 (= e!2668651 tp!1318354)))

(declare-fun b!4294568 () Bool)

(declare-fun tp!1318356 () Bool)

(assert (=> b!4294568 (= e!2668653 tp!1318356)))

(declare-fun setIsEmpty!26626 () Bool)

(assert (=> setIsEmpty!26626 setRes!26626))

(assert (= b!4294566 b!4294567))

(assert (= (and b!4294566 condSetEmpty!26626) setIsEmpty!26626))

(assert (= (and b!4294566 (not condSetEmpty!26626)) setNonEmpty!26626))

(assert (= setNonEmpty!26626 b!4294568))

(assert (= (and b!4294351 ((_ is Cons!47812) (minValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))) b!4294566))

(declare-fun m!4887222 () Bool)

(assert (=> b!4294566 m!4887222))

(declare-fun m!4887224 () Bool)

(assert (=> setNonEmpty!26626 m!4887224))

(declare-fun b!4294573 () Bool)

(declare-fun e!2668656 () Bool)

(declare-fun tp!1318361 () Bool)

(declare-fun tp!1318362 () Bool)

(assert (=> b!4294573 (= e!2668656 (and tp!1318361 tp!1318362))))

(assert (=> b!4294379 (= tp!1318243 e!2668656)))

(assert (= (and b!4294379 ((_ is Cons!47809) (exprs!3373 setElem!26604))) b!4294573))

(declare-fun setIsEmpty!26629 () Bool)

(declare-fun setRes!26629 () Bool)

(assert (=> setIsEmpty!26629 setRes!26629))

(declare-fun e!2668662 () Bool)

(assert (=> b!4294388 (= tp!1318227 e!2668662)))

(declare-fun b!4294580 () Bool)

(declare-fun tp!1318370 () Bool)

(assert (=> b!4294580 (= e!2668662 (and setRes!26629 tp!1318370))))

(declare-fun condSetEmpty!26629 () Bool)

(assert (=> b!4294580 (= condSetEmpty!26629 (= (_1!26059 (_1!26060 (h!53231 (zeroValue!4723 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setElem!26629 () Context!5746)

(declare-fun e!2668661 () Bool)

(declare-fun setNonEmpty!26629 () Bool)

(declare-fun tp!1318369 () Bool)

(assert (=> setNonEmpty!26629 (= setRes!26629 (and tp!1318369 (inv!63342 setElem!26629) e!2668661))))

(declare-fun setRest!26629 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26629 (= (_1!26059 (_1!26060 (h!53231 (zeroValue!4723 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26629 true) setRest!26629))))

(declare-fun b!4294581 () Bool)

(declare-fun tp!1318371 () Bool)

(assert (=> b!4294581 (= e!2668661 tp!1318371)))

(assert (= (and b!4294580 condSetEmpty!26629) setIsEmpty!26629))

(assert (= (and b!4294580 (not condSetEmpty!26629)) setNonEmpty!26629))

(assert (= setNonEmpty!26629 b!4294581))

(assert (= (and b!4294388 ((_ is Cons!47811) (zeroValue!4723 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183)))))))) b!4294580))

(declare-fun m!4887226 () Bool)

(assert (=> setNonEmpty!26629 m!4887226))

(declare-fun setIsEmpty!26630 () Bool)

(declare-fun setRes!26630 () Bool)

(assert (=> setIsEmpty!26630 setRes!26630))

(declare-fun e!2668664 () Bool)

(assert (=> b!4294388 (= tp!1318232 e!2668664)))

(declare-fun b!4294582 () Bool)

(declare-fun tp!1318373 () Bool)

(assert (=> b!4294582 (= e!2668664 (and setRes!26630 tp!1318373))))

(declare-fun condSetEmpty!26630 () Bool)

(assert (=> b!4294582 (= condSetEmpty!26630 (= (_1!26059 (_1!26060 (h!53231 (minValue!4723 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setElem!26630 () Context!5746)

(declare-fun setNonEmpty!26630 () Bool)

(declare-fun tp!1318372 () Bool)

(declare-fun e!2668663 () Bool)

(assert (=> setNonEmpty!26630 (= setRes!26630 (and tp!1318372 (inv!63342 setElem!26630) e!2668663))))

(declare-fun setRest!26630 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26630 (= (_1!26059 (_1!26060 (h!53231 (minValue!4723 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26630 true) setRest!26630))))

(declare-fun b!4294583 () Bool)

(declare-fun tp!1318374 () Bool)

(assert (=> b!4294583 (= e!2668663 tp!1318374)))

(assert (= (and b!4294582 condSetEmpty!26630) setIsEmpty!26630))

(assert (= (and b!4294582 (not condSetEmpty!26630)) setNonEmpty!26630))

(assert (= setNonEmpty!26630 b!4294583))

(assert (= (and b!4294388 ((_ is Cons!47811) (minValue!4723 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183)))))))) b!4294582))

(declare-fun m!4887228 () Bool)

(assert (=> setNonEmpty!26630 m!4887228))

(declare-fun condSetEmpty!26633 () Bool)

(assert (=> setNonEmpty!26604 (= condSetEmpty!26633 (= setRest!26604 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26633 () Bool)

(assert (=> setNonEmpty!26604 (= tp!1318245 setRes!26633)))

(declare-fun setIsEmpty!26633 () Bool)

(assert (=> setIsEmpty!26633 setRes!26633))

(declare-fun setElem!26633 () Context!5746)

(declare-fun setNonEmpty!26633 () Bool)

(declare-fun e!2668667 () Bool)

(declare-fun tp!1318379 () Bool)

(assert (=> setNonEmpty!26633 (= setRes!26633 (and tp!1318379 (inv!63342 setElem!26633) e!2668667))))

(declare-fun setRest!26633 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26633 (= setRest!26604 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26633 true) setRest!26633))))

(declare-fun b!4294588 () Bool)

(declare-fun tp!1318380 () Bool)

(assert (=> b!4294588 (= e!2668667 tp!1318380)))

(assert (= (and setNonEmpty!26604 condSetEmpty!26633) setIsEmpty!26633))

(assert (= (and setNonEmpty!26604 (not condSetEmpty!26633)) setNonEmpty!26633))

(assert (= setNonEmpty!26633 b!4294588))

(declare-fun m!4887230 () Bool)

(assert (=> setNonEmpty!26633 m!4887230))

(declare-fun setIsEmpty!26634 () Bool)

(declare-fun setRes!26634 () Bool)

(assert (=> setIsEmpty!26634 setRes!26634))

(declare-fun e!2668669 () Bool)

(assert (=> b!4294378 (= tp!1318229 e!2668669)))

(declare-fun b!4294589 () Bool)

(declare-fun tp!1318382 () Bool)

(assert (=> b!4294589 (= e!2668669 (and setRes!26634 tp!1318382))))

(declare-fun condSetEmpty!26634 () Bool)

(assert (=> b!4294589 (= condSetEmpty!26634 (= (_1!26059 (_1!26060 (h!53231 mapDefault!20046))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setElem!26634 () Context!5746)

(declare-fun tp!1318381 () Bool)

(declare-fun setNonEmpty!26634 () Bool)

(declare-fun e!2668668 () Bool)

(assert (=> setNonEmpty!26634 (= setRes!26634 (and tp!1318381 (inv!63342 setElem!26634) e!2668668))))

(declare-fun setRest!26634 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26634 (= (_1!26059 (_1!26060 (h!53231 mapDefault!20046))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26634 true) setRest!26634))))

(declare-fun b!4294590 () Bool)

(declare-fun tp!1318383 () Bool)

(assert (=> b!4294590 (= e!2668668 tp!1318383)))

(assert (= (and b!4294589 condSetEmpty!26634) setIsEmpty!26634))

(assert (= (and b!4294589 (not condSetEmpty!26634)) setNonEmpty!26634))

(assert (= setNonEmpty!26634 b!4294590))

(assert (= (and b!4294378 ((_ is Cons!47811) mapDefault!20046)) b!4294589))

(declare-fun m!4887232 () Bool)

(assert (=> setNonEmpty!26634 m!4887232))

(declare-fun setIsEmpty!26639 () Bool)

(declare-fun setRes!26639 () Bool)

(assert (=> setIsEmpty!26639 setRes!26639))

(declare-fun e!2668679 () Bool)

(declare-fun setElem!26639 () Context!5746)

(declare-fun setNonEmpty!26639 () Bool)

(declare-fun tp!1318401 () Bool)

(assert (=> setNonEmpty!26639 (= setRes!26639 (and tp!1318401 (inv!63342 setElem!26639) e!2668679))))

(declare-fun mapValue!20055 () List!47935)

(declare-fun setRest!26639 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26639 (= (_1!26059 (_1!26060 (h!53231 mapValue!20055))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26639 true) setRest!26639))))

(declare-fun b!4294601 () Bool)

(declare-fun e!2668678 () Bool)

(declare-fun tp!1318404 () Bool)

(assert (=> b!4294601 (= e!2668678 tp!1318404)))

(declare-fun setRes!26640 () Bool)

(declare-fun setNonEmpty!26640 () Bool)

(declare-fun tp!1318399 () Bool)

(declare-fun setElem!26640 () Context!5746)

(assert (=> setNonEmpty!26640 (= setRes!26640 (and tp!1318399 (inv!63342 setElem!26640) e!2668678))))

(declare-fun mapDefault!20055 () List!47935)

(declare-fun setRest!26640 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26640 (= (_1!26059 (_1!26060 (h!53231 mapDefault!20055))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26640 true) setRest!26640))))

(declare-fun b!4294602 () Bool)

(declare-fun e!2668681 () Bool)

(declare-fun tp!1318398 () Bool)

(assert (=> b!4294602 (= e!2668681 (and setRes!26640 tp!1318398))))

(declare-fun condSetEmpty!26639 () Bool)

(assert (=> b!4294602 (= condSetEmpty!26639 (= (_1!26059 (_1!26060 (h!53231 mapDefault!20055))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun condMapEmpty!20055 () Bool)

(assert (=> mapNonEmpty!20044 (= condMapEmpty!20055 (= mapRest!20044 ((as const (Array (_ BitVec 32) List!47935)) mapDefault!20055)))))

(declare-fun mapRes!20055 () Bool)

(assert (=> mapNonEmpty!20044 (= tp!1318247 (and e!2668681 mapRes!20055))))

(declare-fun mapNonEmpty!20055 () Bool)

(declare-fun tp!1318402 () Bool)

(declare-fun e!2668680 () Bool)

(assert (=> mapNonEmpty!20055 (= mapRes!20055 (and tp!1318402 e!2668680))))

(declare-fun mapRest!20055 () (Array (_ BitVec 32) List!47935))

(declare-fun mapKey!20055 () (_ BitVec 32))

(assert (=> mapNonEmpty!20055 (= mapRest!20044 (store mapRest!20055 mapKey!20055 mapValue!20055))))

(declare-fun mapIsEmpty!20055 () Bool)

(assert (=> mapIsEmpty!20055 mapRes!20055))

(declare-fun setIsEmpty!26640 () Bool)

(assert (=> setIsEmpty!26640 setRes!26640))

(declare-fun b!4294603 () Bool)

(declare-fun tp!1318403 () Bool)

(assert (=> b!4294603 (= e!2668679 tp!1318403)))

(declare-fun b!4294604 () Bool)

(declare-fun tp!1318400 () Bool)

(assert (=> b!4294604 (= e!2668680 (and setRes!26639 tp!1318400))))

(declare-fun condSetEmpty!26640 () Bool)

(assert (=> b!4294604 (= condSetEmpty!26640 (= (_1!26059 (_1!26060 (h!53231 mapValue!20055))) ((as const (Array Context!5746 Bool)) false)))))

(assert (= (and mapNonEmpty!20044 condMapEmpty!20055) mapIsEmpty!20055))

(assert (= (and mapNonEmpty!20044 (not condMapEmpty!20055)) mapNonEmpty!20055))

(assert (= (and b!4294604 condSetEmpty!26640) setIsEmpty!26639))

(assert (= (and b!4294604 (not condSetEmpty!26640)) setNonEmpty!26639))

(assert (= setNonEmpty!26639 b!4294603))

(assert (= (and mapNonEmpty!20055 ((_ is Cons!47811) mapValue!20055)) b!4294604))

(assert (= (and b!4294602 condSetEmpty!26639) setIsEmpty!26640))

(assert (= (and b!4294602 (not condSetEmpty!26639)) setNonEmpty!26640))

(assert (= setNonEmpty!26640 b!4294601))

(assert (= (and mapNonEmpty!20044 ((_ is Cons!47811) mapDefault!20055)) b!4294602))

(declare-fun m!4887234 () Bool)

(assert (=> setNonEmpty!26639 m!4887234))

(declare-fun m!4887236 () Bool)

(assert (=> setNonEmpty!26640 m!4887236))

(declare-fun m!4887238 () Bool)

(assert (=> mapNonEmpty!20055 m!4887238))

(declare-fun setIsEmpty!26641 () Bool)

(declare-fun setRes!26641 () Bool)

(assert (=> setIsEmpty!26641 setRes!26641))

(declare-fun e!2668683 () Bool)

(assert (=> mapNonEmpty!20044 (= tp!1318242 e!2668683)))

(declare-fun b!4294605 () Bool)

(declare-fun tp!1318406 () Bool)

(assert (=> b!4294605 (= e!2668683 (and setRes!26641 tp!1318406))))

(declare-fun condSetEmpty!26641 () Bool)

(assert (=> b!4294605 (= condSetEmpty!26641 (= (_1!26059 (_1!26060 (h!53231 mapValue!20046))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setNonEmpty!26641 () Bool)

(declare-fun tp!1318405 () Bool)

(declare-fun setElem!26641 () Context!5746)

(declare-fun e!2668682 () Bool)

(assert (=> setNonEmpty!26641 (= setRes!26641 (and tp!1318405 (inv!63342 setElem!26641) e!2668682))))

(declare-fun setRest!26641 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26641 (= (_1!26059 (_1!26060 (h!53231 mapValue!20046))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26641 true) setRest!26641))))

(declare-fun b!4294606 () Bool)

(declare-fun tp!1318407 () Bool)

(assert (=> b!4294606 (= e!2668682 tp!1318407)))

(assert (= (and b!4294605 condSetEmpty!26641) setIsEmpty!26641))

(assert (= (and b!4294605 (not condSetEmpty!26641)) setNonEmpty!26641))

(assert (= setNonEmpty!26641 b!4294606))

(assert (= (and mapNonEmpty!20044 ((_ is Cons!47811) mapValue!20046)) b!4294605))

(declare-fun m!4887240 () Bool)

(assert (=> setNonEmpty!26641 m!4887240))

(declare-fun setRes!26642 () Bool)

(declare-fun tp!1318408 () Bool)

(declare-fun b!4294607 () Bool)

(declare-fun e!2668685 () Bool)

(declare-fun e!2668684 () Bool)

(assert (=> b!4294607 (= e!2668685 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 mapDefault!20044)))) e!2668684 tp_is_empty!23123 setRes!26642 tp!1318408))))

(declare-fun condSetEmpty!26642 () Bool)

(assert (=> b!4294607 (= condSetEmpty!26642 (= (_2!26056 (h!53232 mapDefault!20044)) ((as const (Array Context!5746 Bool)) false)))))

(assert (=> b!4294364 (= tp!1318246 e!2668685)))

(declare-fun setElem!26642 () Context!5746)

(declare-fun e!2668686 () Bool)

(declare-fun setNonEmpty!26642 () Bool)

(declare-fun tp!1318410 () Bool)

(assert (=> setNonEmpty!26642 (= setRes!26642 (and tp!1318410 (inv!63342 setElem!26642) e!2668686))))

(declare-fun setRest!26642 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26642 (= (_2!26056 (h!53232 mapDefault!20044)) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26642 true) setRest!26642))))

(declare-fun b!4294608 () Bool)

(declare-fun tp!1318409 () Bool)

(assert (=> b!4294608 (= e!2668684 tp!1318409)))

(declare-fun b!4294609 () Bool)

(declare-fun tp!1318411 () Bool)

(assert (=> b!4294609 (= e!2668686 tp!1318411)))

(declare-fun setIsEmpty!26642 () Bool)

(assert (=> setIsEmpty!26642 setRes!26642))

(assert (= b!4294607 b!4294608))

(assert (= (and b!4294607 condSetEmpty!26642) setIsEmpty!26642))

(assert (= (and b!4294607 (not condSetEmpty!26642)) setNonEmpty!26642))

(assert (= setNonEmpty!26642 b!4294609))

(assert (= (and b!4294364 ((_ is Cons!47812) mapDefault!20044)) b!4294607))

(declare-fun m!4887242 () Bool)

(assert (=> b!4294607 m!4887242))

(declare-fun m!4887244 () Bool)

(assert (=> setNonEmpty!26642 m!4887244))

(declare-fun b!4294618 () Bool)

(declare-fun tp!1318420 () Bool)

(declare-fun e!2668692 () Bool)

(declare-fun tp!1318419 () Bool)

(assert (=> b!4294618 (= e!2668692 (and (inv!63343 (left!35456 (c!730753 totalInput!812))) tp!1318420 (inv!63343 (right!35786 (c!730753 totalInput!812))) tp!1318419))))

(declare-fun b!4294620 () Bool)

(declare-fun e!2668691 () Bool)

(declare-fun tp!1318418 () Bool)

(assert (=> b!4294620 (= e!2668691 tp!1318418)))

(declare-fun b!4294619 () Bool)

(declare-fun inv!63346 (IArray!28909) Bool)

(assert (=> b!4294619 (= e!2668692 (and (inv!63346 (xs!17730 (c!730753 totalInput!812))) e!2668691))))

(assert (=> b!4294382 (= tp!1318241 (and (inv!63343 (c!730753 totalInput!812)) e!2668692))))

(assert (= (and b!4294382 ((_ is Node!14424) (c!730753 totalInput!812))) b!4294618))

(assert (= b!4294619 b!4294620))

(assert (= (and b!4294382 ((_ is Leaf!22317) (c!730753 totalInput!812))) b!4294619))

(declare-fun m!4887246 () Bool)

(assert (=> b!4294618 m!4887246))

(declare-fun m!4887248 () Bool)

(assert (=> b!4294618 m!4887248))

(declare-fun m!4887250 () Bool)

(assert (=> b!4294619 m!4887250))

(assert (=> b!4294382 m!4887032))

(declare-fun e!2668694 () Bool)

(declare-fun tp!1318423 () Bool)

(declare-fun b!4294621 () Bool)

(declare-fun tp!1318422 () Bool)

(assert (=> b!4294621 (= e!2668694 (and (inv!63343 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) tp!1318423 (inv!63343 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) tp!1318422))))

(declare-fun b!4294623 () Bool)

(declare-fun e!2668693 () Bool)

(declare-fun tp!1318421 () Bool)

(assert (=> b!4294623 (= e!2668693 tp!1318421)))

(declare-fun b!4294622 () Bool)

(assert (=> b!4294622 (= e!2668694 (and (inv!63346 (xs!17730 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) e!2668693))))

(assert (=> b!4294391 (= tp!1318244 (and (inv!63343 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) e!2668694))))

(assert (= (and b!4294391 ((_ is Node!14424) (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) b!4294621))

(assert (= b!4294622 b!4294623))

(assert (= (and b!4294391 ((_ is Leaf!22317) (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) b!4294622))

(declare-fun m!4887252 () Bool)

(assert (=> b!4294621 m!4887252))

(declare-fun m!4887254 () Bool)

(assert (=> b!4294621 m!4887254))

(declare-fun m!4887256 () Bool)

(assert (=> b!4294622 m!4887256))

(assert (=> b!4294391 m!4887042))

(declare-fun b!4294624 () Bool)

(declare-fun e!2668696 () Bool)

(declare-fun tp!1318428 () Bool)

(assert (=> b!4294624 (= e!2668696 tp!1318428)))

(declare-fun setElem!26643 () Context!5746)

(declare-fun tp!1318425 () Bool)

(declare-fun setRes!26643 () Bool)

(declare-fun setNonEmpty!26643 () Bool)

(assert (=> setNonEmpty!26643 (= setRes!26643 (and tp!1318425 (inv!63342 setElem!26643) e!2668696))))

(declare-fun setRest!26643 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26643 (= (_2!26058 (h!53230 mapDefault!20045)) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26643 true) setRest!26643))))

(declare-fun setIsEmpty!26643 () Bool)

(assert (=> setIsEmpty!26643 setRes!26643))

(declare-fun e!2668695 () Bool)

(assert (=> b!4294381 (= tp!1318237 e!2668695)))

(declare-fun tp!1318427 () Bool)

(declare-fun tp!1318424 () Bool)

(declare-fun b!4294625 () Bool)

(declare-fun e!2668697 () Bool)

(assert (=> b!4294625 (= e!2668695 (and tp!1318427 (inv!63342 (_2!26057 (_1!26058 (h!53230 mapDefault!20045)))) e!2668697 tp_is_empty!23123 setRes!26643 tp!1318424))))

(declare-fun condSetEmpty!26643 () Bool)

(assert (=> b!4294625 (= condSetEmpty!26643 (= (_2!26058 (h!53230 mapDefault!20045)) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4294626 () Bool)

(declare-fun tp!1318426 () Bool)

(assert (=> b!4294626 (= e!2668697 tp!1318426)))

(assert (= b!4294625 b!4294626))

(assert (= (and b!4294625 condSetEmpty!26643) setIsEmpty!26643))

(assert (= (and b!4294625 (not condSetEmpty!26643)) setNonEmpty!26643))

(assert (= setNonEmpty!26643 b!4294624))

(assert (= (and b!4294381 ((_ is Cons!47810) mapDefault!20045)) b!4294625))

(declare-fun m!4887258 () Bool)

(assert (=> setNonEmpty!26643 m!4887258))

(declare-fun m!4887260 () Bool)

(assert (=> b!4294625 m!4887260))

(check-sat (not d!1265799) (not b!4294469) (not b!4294490) (not b!4294581) (not d!1265831) (not d!1265827) (not b!4294625) (not b!4294562) (not d!1265829) (not b!4294489) (not b!4294513) (not b!4294609) tp_is_empty!23123 (not setNonEmpty!26634) (not d!1265803) (not b!4294565) (not b!4294590) (not setNonEmpty!26629) (not b!4294453) (not b!4294458) (not mapNonEmpty!20052) (not b!4294618) (not b!4294601) (not d!1265807) (not b!4294602) (not setNonEmpty!26623) (not b!4294564) (not b!4294484) (not setNonEmpty!26618) (not b!4294430) (not d!1265813) (not b!4294416) (not d!1265805) (not b!4294557) (not b!4294624) (not b_next!128407) (not b!4294603) (not d!1265809) (not b!4294544) (not b!4294419) (not b!4294556) (not setNonEmpty!26630) (not b!4294543) (not b!4294580) (not b!4294626) (not setNonEmpty!26642) (not d!1265857) (not b!4294555) (not b!4294511) (not b!4294561) (not b!4294605) (not b!4294558) (not setNonEmpty!26624) (not b!4294510) (not b!4294482) b_and!338929 (not setNonEmpty!26633) (not b_next!128411) (not b!4294589) (not b!4294525) (not bm!294519) b_and!338919 (not mapNonEmpty!20055) b_and!338925 (not setNonEmpty!26626) (not setNonEmpty!26609) (not b!4294509) (not b!4294582) (not b!4294434) (not d!1265815) (not b!4294554) (not b!4294478) (not b!4294448) (not b_next!128417) (not setNonEmpty!26619) (not d!1265863) (not d!1265835) (not b!4294568) (not b!4294567) (not b!4294523) (not b!4294512) b_and!338927 (not b!4294382) (not b!4294542) (not b!4294466) (not b!4294619) (not b!4294439) (not b_next!128409) (not b!4294588) (not b!4294449) (not b!4294541) (not b_next!128413) (not b!4294566) (not b!4294417) (not b!4294622) (not b!4294492) (not b!4294607) (not mapNonEmpty!20049) (not b!4294443) (not d!1265833) (not b!4294604) (not setNonEmpty!26625) (not d!1265801) (not b!4294621) (not setNonEmpty!26639) (not b!4294514) (not b!4294485) (not b!4294545) (not setNonEmpty!26643) (not d!1265811) (not setNonEmpty!26622) (not d!1265851) (not setNonEmpty!26610) (not b!4294431) (not b!4294432) (not setNonEmpty!26613) (not b_next!128415) (not b!4294563) (not b!4294463) (not b!4294559) (not b!4294524) (not b!4294457) (not d!1265839) (not b!4294412) (not setNonEmpty!26641) (not b!4294623) (not d!1265817) (not b!4294606) (not b!4294560) b_and!338921 (not b!4294540) (not setNonEmpty!26640) (not b!4294476) (not b!4294608) (not b!4294440) (not b!4294460) (not b!4294391) (not bm!294518) (not b!4294481) (not b!4294573) (not d!1265845) (not b!4294583) b_and!338923 (not b!4294620))
(check-sat (not b_next!128407) (not b_next!128417) b_and!338927 (not b_next!128415) b_and!338921 b_and!338923 b_and!338929 (not b_next!128411) b_and!338919 b_and!338925 (not b_next!128413) (not b_next!128409))
(get-model)

(declare-fun bs!603058 () Bool)

(declare-fun d!1265865 () Bool)

(assert (= bs!603058 (and d!1265865 d!1265845)))

(declare-fun lambda!131587 () Int)

(assert (=> bs!603058 (= lambda!131587 lambda!131583)))

(assert (=> d!1265865 (= (inv!63342 (_1!26055 (_1!26056 (h!53232 mapDefault!20044)))) (forall!8559 (exprs!3373 (_1!26055 (_1!26056 (h!53232 mapDefault!20044)))) lambda!131587))))

(declare-fun bs!603059 () Bool)

(assert (= bs!603059 d!1265865))

(declare-fun m!4887262 () Bool)

(assert (=> bs!603059 m!4887262))

(assert (=> b!4294607 d!1265865))

(declare-fun bs!603060 () Bool)

(declare-fun d!1265867 () Bool)

(assert (= bs!603060 (and d!1265867 b!4294449)))

(declare-fun lambda!131590 () Int)

(assert (=> bs!603060 (not (= lambda!131590 lambda!131579))))

(declare-fun bs!603061 () Bool)

(assert (= bs!603061 (and d!1265867 b!4294448)))

(assert (=> bs!603061 (not (= lambda!131590 lambda!131578))))

(declare-fun bs!603062 () Bool)

(assert (= bs!603062 (and d!1265867 d!1265827)))

(assert (=> bs!603062 (not (= lambda!131590 lambda!131577))))

(declare-fun bs!603063 () Bool)

(assert (= bs!603063 (and d!1265867 d!1265833)))

(assert (=> bs!603063 (not (= lambda!131590 lambda!131580))))

(declare-fun bs!603064 () Bool)

(assert (= bs!603064 (and d!1265867 d!1265813)))

(assert (=> bs!603064 (not (= lambda!131590 lambda!131564))))

(assert (=> d!1265867 true))

(declare-fun order!25041 () Int)

(declare-fun dynLambda!20326 (Int Int) Int)

(assert (=> d!1265867 (< (dynLambda!20326 order!25041 (ite c!730775 lambda!131578 lambda!131579)) (dynLambda!20326 order!25041 lambda!131590))))

(declare-fun forall!8560 (List!47938 Int) Bool)

(assert (=> d!1265867 (= (exists!1228 (ite c!730775 lt!1517772 lt!1517774) (ite c!730775 lambda!131578 lambda!131579)) (not (forall!8560 (ite c!730775 lt!1517772 lt!1517774) lambda!131590)))))

(declare-fun bs!603065 () Bool)

(assert (= bs!603065 d!1265867))

(declare-fun m!4887264 () Bool)

(assert (=> bs!603065 m!4887264))

(assert (=> bm!294519 d!1265867))

(declare-fun d!1265869 () Bool)

(declare-fun choose!26152 ((InoxSet Context!5746) Int) (InoxSet Context!5746))

(assert (=> d!1265869 (= (flatMap!256 z!3765 lambda!131586) (choose!26152 z!3765 lambda!131586))))

(declare-fun bs!603066 () Bool)

(assert (= bs!603066 d!1265869))

(declare-fun m!4887266 () Bool)

(assert (=> bs!603066 m!4887266))

(assert (=> d!1265863 d!1265869))

(declare-fun b!4294634 () Bool)

(assert (=> b!4294634 true))

(declare-fun d!1265871 () Bool)

(declare-fun res!1760506 () Bool)

(declare-fun e!2668700 () Bool)

(assert (=> d!1265871 (=> (not res!1760506) (not e!2668700))))

(declare-fun valid!3447 (MutableMap!4370) Bool)

(assert (=> d!1265871 (= res!1760506 (valid!3447 (cache!4510 cacheFindLongestMatch!183)))))

(assert (=> d!1265871 (= (validCacheMapFindLongestMatch!82 (cache!4510 cacheFindLongestMatch!183) (totalInput!4392 cacheFindLongestMatch!183)) e!2668700)))

(declare-fun b!4294633 () Bool)

(declare-fun res!1760507 () Bool)

(assert (=> b!4294633 (=> (not res!1760507) (not e!2668700))))

(declare-fun invariantList!514 (List!47935) Bool)

(declare-datatypes ((ListMap!1387 0))(
  ( (ListMap!1388 (toList!2130 List!47935)) )
))
(declare-fun map!9808 (MutableMap!4370) ListMap!1387)

(assert (=> b!4294633 (= res!1760507 (invariantList!514 (toList!2130 (map!9808 (cache!4510 cacheFindLongestMatch!183)))))))

(declare-fun lambda!131593 () Int)

(declare-fun forall!8561 (List!47935 Int) Bool)

(assert (=> b!4294634 (= e!2668700 (forall!8561 (toList!2130 (map!9808 (cache!4510 cacheFindLongestMatch!183))) lambda!131593))))

(assert (= (and d!1265871 res!1760506) b!4294633))

(assert (= (and b!4294633 res!1760507) b!4294634))

(declare-fun m!4887269 () Bool)

(assert (=> d!1265871 m!4887269))

(declare-fun m!4887271 () Bool)

(assert (=> b!4294633 m!4887271))

(declare-fun m!4887273 () Bool)

(assert (=> b!4294633 m!4887273))

(assert (=> b!4294634 m!4887271))

(declare-fun m!4887275 () Bool)

(assert (=> b!4294634 m!4887275))

(assert (=> b!4294466 d!1265871))

(declare-fun d!1265873 () Bool)

(declare-fun res!1760512 () Bool)

(declare-fun e!2668703 () Bool)

(assert (=> d!1265873 (=> (not res!1760512) (not e!2668703))))

(declare-fun valid!3448 (MutableMap!4371) Bool)

(assert (=> d!1265873 (= res!1760512 (valid!3448 (cache!4509 cacheUp!947)))))

(assert (=> d!1265873 (= (validCacheMapUp!421 (cache!4509 cacheUp!947)) e!2668703)))

(declare-fun b!4294641 () Bool)

(declare-fun res!1760513 () Bool)

(assert (=> b!4294641 (=> (not res!1760513) (not e!2668703))))

(declare-fun invariantList!515 (List!47936) Bool)

(declare-datatypes ((ListMap!1389 0))(
  ( (ListMap!1390 (toList!2131 List!47936)) )
))
(declare-fun map!9809 (MutableMap!4371) ListMap!1389)

(assert (=> b!4294641 (= res!1760513 (invariantList!515 (toList!2131 (map!9809 (cache!4509 cacheUp!947)))))))

(declare-fun b!4294642 () Bool)

(declare-fun lambda!131596 () Int)

(declare-fun forall!8562 (List!47936 Int) Bool)

(assert (=> b!4294642 (= e!2668703 (forall!8562 (toList!2131 (map!9809 (cache!4509 cacheUp!947))) lambda!131596))))

(assert (= (and d!1265873 res!1760512) b!4294641))

(assert (= (and b!4294641 res!1760513) b!4294642))

(declare-fun m!4887278 () Bool)

(assert (=> d!1265873 m!4887278))

(declare-fun m!4887280 () Bool)

(assert (=> b!4294641 m!4887280))

(declare-fun m!4887282 () Bool)

(assert (=> b!4294641 m!4887282))

(assert (=> b!4294642 m!4887280))

(declare-fun m!4887284 () Bool)

(assert (=> b!4294642 m!4887284))

(assert (=> b!4294469 d!1265873))

(declare-fun bs!603067 () Bool)

(declare-fun b!4294644 () Bool)

(assert (= bs!603067 (and b!4294644 b!4294634)))

(declare-fun lambda!131597 () Int)

(assert (=> bs!603067 (= (= (totalInput!4392 (_4!531 lt!1517726)) (totalInput!4392 cacheFindLongestMatch!183)) (= lambda!131597 lambda!131593))))

(assert (=> b!4294644 true))

(declare-fun d!1265875 () Bool)

(declare-fun res!1760514 () Bool)

(declare-fun e!2668704 () Bool)

(assert (=> d!1265875 (=> (not res!1760514) (not e!2668704))))

(assert (=> d!1265875 (= res!1760514 (valid!3447 (cache!4510 (_4!531 lt!1517726))))))

(assert (=> d!1265875 (= (validCacheMapFindLongestMatch!82 (cache!4510 (_4!531 lt!1517726)) (totalInput!4392 (_4!531 lt!1517726))) e!2668704)))

(declare-fun b!4294643 () Bool)

(declare-fun res!1760515 () Bool)

(assert (=> b!4294643 (=> (not res!1760515) (not e!2668704))))

(assert (=> b!4294643 (= res!1760515 (invariantList!514 (toList!2130 (map!9808 (cache!4510 (_4!531 lt!1517726))))))))

(assert (=> b!4294644 (= e!2668704 (forall!8561 (toList!2130 (map!9808 (cache!4510 (_4!531 lt!1517726)))) lambda!131597))))

(assert (= (and d!1265875 res!1760514) b!4294643))

(assert (= (and b!4294643 res!1760515) b!4294644))

(declare-fun m!4887286 () Bool)

(assert (=> d!1265875 m!4887286))

(declare-fun m!4887288 () Bool)

(assert (=> b!4294643 m!4887288))

(declare-fun m!4887290 () Bool)

(assert (=> b!4294643 m!4887290))

(assert (=> b!4294644 m!4887288))

(declare-fun m!4887292 () Bool)

(assert (=> b!4294644 m!4887292))

(assert (=> d!1265829 d!1265875))

(declare-fun bs!603068 () Bool)

(declare-fun d!1265877 () Bool)

(assert (= bs!603068 (and d!1265877 d!1265845)))

(declare-fun lambda!131598 () Int)

(assert (=> bs!603068 (= lambda!131598 lambda!131583)))

(declare-fun bs!603069 () Bool)

(assert (= bs!603069 (and d!1265877 d!1265865)))

(assert (=> bs!603069 (= lambda!131598 lambda!131587)))

(assert (=> d!1265877 (= (inv!63342 setElem!26634) (forall!8559 (exprs!3373 setElem!26634) lambda!131598))))

(declare-fun bs!603070 () Bool)

(assert (= bs!603070 d!1265877))

(declare-fun m!4887294 () Bool)

(assert (=> bs!603070 m!4887294))

(assert (=> setNonEmpty!26634 d!1265877))

(declare-fun b!4294657 () Bool)

(declare-fun res!1760532 () Bool)

(declare-fun e!2668710 () Bool)

(assert (=> b!4294657 (=> (not res!1760532) (not e!2668710))))

(declare-fun isEmpty!28030 (Conc!14424) Bool)

(assert (=> b!4294657 (= res!1760532 (not (isEmpty!28030 (left!35456 (c!730753 totalInput!812)))))))

(declare-fun b!4294658 () Bool)

(declare-fun res!1760528 () Bool)

(assert (=> b!4294658 (=> (not res!1760528) (not e!2668710))))

(assert (=> b!4294658 (= res!1760528 (isBalanced!3887 (left!35456 (c!730753 totalInput!812))))))

(declare-fun b!4294660 () Bool)

(declare-fun res!1760533 () Bool)

(assert (=> b!4294660 (=> (not res!1760533) (not e!2668710))))

(declare-fun height!1893 (Conc!14424) Int)

(assert (=> b!4294660 (= res!1760533 (<= (- (height!1893 (left!35456 (c!730753 totalInput!812))) (height!1893 (right!35786 (c!730753 totalInput!812)))) 1))))

(declare-fun b!4294661 () Bool)

(declare-fun res!1760529 () Bool)

(assert (=> b!4294661 (=> (not res!1760529) (not e!2668710))))

(assert (=> b!4294661 (= res!1760529 (isBalanced!3887 (right!35786 (c!730753 totalInput!812))))))

(declare-fun b!4294662 () Bool)

(declare-fun e!2668709 () Bool)

(assert (=> b!4294662 (= e!2668709 e!2668710)))

(declare-fun res!1760530 () Bool)

(assert (=> b!4294662 (=> (not res!1760530) (not e!2668710))))

(assert (=> b!4294662 (= res!1760530 (<= (- 1) (- (height!1893 (left!35456 (c!730753 totalInput!812))) (height!1893 (right!35786 (c!730753 totalInput!812))))))))

(declare-fun d!1265879 () Bool)

(declare-fun res!1760531 () Bool)

(assert (=> d!1265879 (=> res!1760531 e!2668709)))

(assert (=> d!1265879 (= res!1760531 (not ((_ is Node!14424) (c!730753 totalInput!812))))))

(assert (=> d!1265879 (= (isBalanced!3887 (c!730753 totalInput!812)) e!2668709)))

(declare-fun b!4294659 () Bool)

(assert (=> b!4294659 (= e!2668710 (not (isEmpty!28030 (right!35786 (c!730753 totalInput!812)))))))

(assert (= (and d!1265879 (not res!1760531)) b!4294662))

(assert (= (and b!4294662 res!1760530) b!4294660))

(assert (= (and b!4294660 res!1760533) b!4294658))

(assert (= (and b!4294658 res!1760528) b!4294661))

(assert (= (and b!4294661 res!1760529) b!4294657))

(assert (= (and b!4294657 res!1760532) b!4294659))

(declare-fun m!4887296 () Bool)

(assert (=> b!4294659 m!4887296))

(declare-fun m!4887298 () Bool)

(assert (=> b!4294657 m!4887298))

(declare-fun m!4887300 () Bool)

(assert (=> b!4294658 m!4887300))

(declare-fun m!4887302 () Bool)

(assert (=> b!4294660 m!4887302))

(declare-fun m!4887304 () Bool)

(assert (=> b!4294660 m!4887304))

(assert (=> b!4294662 m!4887302))

(assert (=> b!4294662 m!4887304))

(declare-fun m!4887306 () Bool)

(assert (=> b!4294661 m!4887306))

(assert (=> d!1265851 d!1265879))

(declare-fun bs!603071 () Bool)

(declare-fun d!1265881 () Bool)

(assert (= bs!603071 (and d!1265881 d!1265867)))

(declare-fun lambda!131599 () Int)

(assert (=> bs!603071 (not (= lambda!131599 lambda!131590))))

(declare-fun bs!603072 () Bool)

(assert (= bs!603072 (and d!1265881 b!4294449)))

(assert (=> bs!603072 (not (= lambda!131599 lambda!131579))))

(declare-fun bs!603073 () Bool)

(assert (= bs!603073 (and d!1265881 b!4294448)))

(assert (=> bs!603073 (not (= lambda!131599 lambda!131578))))

(declare-fun bs!603074 () Bool)

(assert (= bs!603074 (and d!1265881 d!1265827)))

(assert (=> bs!603074 (not (= lambda!131599 lambda!131577))))

(declare-fun bs!603075 () Bool)

(assert (= bs!603075 (and d!1265881 d!1265833)))

(assert (=> bs!603075 (= lambda!131599 lambda!131580)))

(declare-fun bs!603076 () Bool)

(assert (= bs!603076 (and d!1265881 d!1265813)))

(assert (=> bs!603076 (= lambda!131599 lambda!131564)))

(assert (=> d!1265881 (= (nullableZipper!775 lt!1517788) (exists!1227 lt!1517788 lambda!131599))))

(declare-fun bs!603077 () Bool)

(assert (= bs!603077 d!1265881))

(declare-fun m!4887308 () Bool)

(assert (=> bs!603077 m!4887308))

(assert (=> b!4294485 d!1265881))

(declare-fun d!1265883 () Bool)

(assert (=> d!1265883 (= (valid!3444 (_2!26062 lt!1517747)) (validCacheMapUp!421 (cache!4509 (_2!26062 lt!1517747))))))

(declare-fun bs!603078 () Bool)

(assert (= bs!603078 d!1265883))

(declare-fun m!4887310 () Bool)

(assert (=> bs!603078 m!4887310))

(assert (=> b!4294439 d!1265883))

(declare-fun d!1265885 () Bool)

(assert (=> d!1265885 (= (valid!3446 (_4!531 lt!1517744)) (validCacheMapFindLongestMatch!82 (cache!4510 (_4!531 lt!1517744)) (totalInput!4392 (_4!531 lt!1517744))))))

(declare-fun bs!603079 () Bool)

(assert (= bs!603079 d!1265885))

(declare-fun m!4887312 () Bool)

(assert (=> bs!603079 m!4887312))

(assert (=> b!4294431 d!1265885))

(declare-fun b!4294663 () Bool)

(declare-fun res!1760538 () Bool)

(declare-fun e!2668712 () Bool)

(assert (=> b!4294663 (=> (not res!1760538) (not e!2668712))))

(assert (=> b!4294663 (= res!1760538 (not (isEmpty!28030 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))))))

(declare-fun b!4294664 () Bool)

(declare-fun res!1760534 () Bool)

(assert (=> b!4294664 (=> (not res!1760534) (not e!2668712))))

(assert (=> b!4294664 (= res!1760534 (isBalanced!3887 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))

(declare-fun b!4294666 () Bool)

(declare-fun res!1760539 () Bool)

(assert (=> b!4294666 (=> (not res!1760539) (not e!2668712))))

(assert (=> b!4294666 (= res!1760539 (<= (- (height!1893 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) (height!1893 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) 1))))

(declare-fun b!4294667 () Bool)

(declare-fun res!1760535 () Bool)

(assert (=> b!4294667 (=> (not res!1760535) (not e!2668712))))

(assert (=> b!4294667 (= res!1760535 (isBalanced!3887 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))

(declare-fun b!4294668 () Bool)

(declare-fun e!2668711 () Bool)

(assert (=> b!4294668 (= e!2668711 e!2668712)))

(declare-fun res!1760536 () Bool)

(assert (=> b!4294668 (=> (not res!1760536) (not e!2668712))))

(assert (=> b!4294668 (= res!1760536 (<= (- 1) (- (height!1893 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) (height!1893 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))))

(declare-fun d!1265887 () Bool)

(declare-fun res!1760537 () Bool)

(assert (=> d!1265887 (=> res!1760537 e!2668711)))

(assert (=> d!1265887 (= res!1760537 (not ((_ is Node!14424) (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))

(assert (=> d!1265887 (= (isBalanced!3887 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) e!2668711)))

(declare-fun b!4294665 () Bool)

(assert (=> b!4294665 (= e!2668712 (not (isEmpty!28030 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))))))

(assert (= (and d!1265887 (not res!1760537)) b!4294668))

(assert (= (and b!4294668 res!1760536) b!4294666))

(assert (= (and b!4294666 res!1760539) b!4294664))

(assert (= (and b!4294664 res!1760534) b!4294667))

(assert (= (and b!4294667 res!1760535) b!4294663))

(assert (= (and b!4294663 res!1760538) b!4294665))

(declare-fun m!4887314 () Bool)

(assert (=> b!4294665 m!4887314))

(declare-fun m!4887316 () Bool)

(assert (=> b!4294663 m!4887316))

(declare-fun m!4887318 () Bool)

(assert (=> b!4294664 m!4887318))

(declare-fun m!4887320 () Bool)

(assert (=> b!4294666 m!4887320))

(declare-fun m!4887322 () Bool)

(assert (=> b!4294666 m!4887322))

(assert (=> b!4294668 m!4887320))

(assert (=> b!4294668 m!4887322))

(declare-fun m!4887324 () Bool)

(assert (=> b!4294667 m!4887324))

(assert (=> d!1265815 d!1265887))

(declare-fun d!1265889 () Bool)

(declare-fun lt!1517792 () Bool)

(assert (=> d!1265889 (= lt!1517792 (exists!1228 (toList!2129 lt!1517722) lambda!131564))))

(declare-fun choose!26153 ((InoxSet Context!5746) Int) Bool)

(assert (=> d!1265889 (= lt!1517792 (choose!26153 lt!1517722 lambda!131564))))

(assert (=> d!1265889 (= (exists!1227 lt!1517722 lambda!131564) lt!1517792)))

(declare-fun bs!603080 () Bool)

(assert (= bs!603080 d!1265889))

(declare-fun m!4887326 () Bool)

(assert (=> bs!603080 m!4887326))

(assert (=> bs!603080 m!4887326))

(declare-fun m!4887328 () Bool)

(assert (=> bs!603080 m!4887328))

(declare-fun m!4887330 () Bool)

(assert (=> bs!603080 m!4887330))

(assert (=> d!1265813 d!1265889))

(declare-fun bs!603081 () Bool)

(declare-fun b!4294670 () Bool)

(assert (= bs!603081 (and b!4294670 b!4294634)))

(declare-fun lambda!131600 () Int)

(assert (=> bs!603081 (= (= (totalInput!4392 (_2!26064 lt!1517780)) (totalInput!4392 cacheFindLongestMatch!183)) (= lambda!131600 lambda!131593))))

(declare-fun bs!603082 () Bool)

(assert (= bs!603082 (and b!4294670 b!4294644)))

(assert (=> bs!603082 (= (= (totalInput!4392 (_2!26064 lt!1517780)) (totalInput!4392 (_4!531 lt!1517726))) (= lambda!131600 lambda!131597))))

(assert (=> b!4294670 true))

(declare-fun d!1265891 () Bool)

(declare-fun res!1760540 () Bool)

(declare-fun e!2668713 () Bool)

(assert (=> d!1265891 (=> (not res!1760540) (not e!2668713))))

(assert (=> d!1265891 (= res!1760540 (valid!3447 (cache!4510 (_2!26064 lt!1517780))))))

(assert (=> d!1265891 (= (validCacheMapFindLongestMatch!82 (cache!4510 (_2!26064 lt!1517780)) (totalInput!4392 (_2!26064 lt!1517780))) e!2668713)))

(declare-fun b!4294669 () Bool)

(declare-fun res!1760541 () Bool)

(assert (=> b!4294669 (=> (not res!1760541) (not e!2668713))))

(assert (=> b!4294669 (= res!1760541 (invariantList!514 (toList!2130 (map!9808 (cache!4510 (_2!26064 lt!1517780))))))))

(assert (=> b!4294670 (= e!2668713 (forall!8561 (toList!2130 (map!9808 (cache!4510 (_2!26064 lt!1517780)))) lambda!131600))))

(assert (= (and d!1265891 res!1760540) b!4294669))

(assert (= (and b!4294669 res!1760541) b!4294670))

(declare-fun m!4887332 () Bool)

(assert (=> d!1265891 m!4887332))

(declare-fun m!4887334 () Bool)

(assert (=> b!4294669 m!4887334))

(declare-fun m!4887336 () Bool)

(assert (=> b!4294669 m!4887336))

(assert (=> b!4294670 m!4887334))

(declare-fun m!4887338 () Bool)

(assert (=> b!4294670 m!4887338))

(assert (=> d!1265835 d!1265891))

(declare-fun b!4294691 () Bool)

(declare-fun b_free!127715 () Bool)

(declare-fun b_next!128419 () Bool)

(assert (=> b!4294691 (= b_free!127715 (not b_next!128419))))

(declare-fun tp!1318448 () Bool)

(declare-fun b_and!338931 () Bool)

(assert (=> b!4294691 (= tp!1318448 b_and!338931)))

(declare-fun b!4294689 () Bool)

(declare-fun b_free!127717 () Bool)

(declare-fun b_next!128421 () Bool)

(assert (=> b!4294689 (= b_free!127717 (not b_next!128421))))

(declare-fun tp!1318446 () Bool)

(declare-fun b_and!338933 () Bool)

(assert (=> b!4294689 (= tp!1318446 b_and!338933)))

(declare-fun e!2668740 () Bool)

(declare-fun e!2668735 () Bool)

(assert (=> b!4294689 (= e!2668740 (and e!2668735 tp!1318446))))

(declare-fun b!4294690 () Bool)

(declare-fun e!2668742 () Bool)

(declare-fun e!2668734 () Bool)

(assert (=> b!4294690 (= e!2668742 e!2668734)))

(declare-fun _$21!133 () tuple2!45570)

(declare-fun tp!1318447 () Bool)

(declare-fun e!2668739 () Bool)

(declare-fun tp!1318451 () Bool)

(assert (=> b!4294691 (= e!2668734 (and tp!1318448 tp!1318451 tp!1318447 (array_inv!5097 (_keys!4764 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 (_2!26064 _$21!133)))))))) (array_inv!5100 (_values!4745 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 (_2!26064 _$21!133)))))))) e!2668739))))

(declare-fun b!4294692 () Bool)

(declare-fun tp!1318449 () Bool)

(declare-fun mapRes!20058 () Bool)

(assert (=> b!4294692 (= e!2668739 (and tp!1318449 mapRes!20058))))

(declare-fun condMapEmpty!20058 () Bool)

(declare-fun mapDefault!20058 () List!47935)

(assert (=> b!4294692 (= condMapEmpty!20058 (= (arr!7115 (_values!4745 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 (_2!26064 _$21!133)))))))) ((as const (Array (_ BitVec 32) List!47935)) mapDefault!20058)))))

(declare-fun d!1265893 () Bool)

(declare-fun e!2668738 () Bool)

(assert (=> d!1265893 e!2668738))

(declare-fun res!1760545 () Bool)

(assert (=> d!1265893 (=> (not res!1760545) (not e!2668738))))

(assert (=> d!1265893 (= res!1760545 (validCacheMapFindLongestMatch!82 (cache!4510 (_2!26064 _$21!133)) (totalInput!4392 (_2!26064 _$21!133))))))

(declare-fun e!2668743 () Bool)

(assert (=> d!1265893 (and (inv!63339 (_2!26064 _$21!133)) e!2668743)))

(assert (=> d!1265893 (= (choose!26150 (_2!26063 lt!1517723) z!3765 from!999 (_1!26063 lt!1517723) totalInput!812) _$21!133)))

(declare-fun b!4294693 () Bool)

(declare-fun e!2668741 () Bool)

(declare-fun tp!1318445 () Bool)

(assert (=> b!4294693 (= e!2668741 (and (inv!63343 (c!730753 (totalInput!4392 (_2!26064 _$21!133)))) tp!1318445))))

(declare-fun mapIsEmpty!20058 () Bool)

(assert (=> mapIsEmpty!20058 mapRes!20058))

(declare-fun mapNonEmpty!20058 () Bool)

(declare-fun tp!1318450 () Bool)

(declare-fun tp!1318452 () Bool)

(assert (=> mapNonEmpty!20058 (= mapRes!20058 (and tp!1318450 tp!1318452))))

(declare-fun mapRest!20058 () (Array (_ BitVec 32) List!47935))

(declare-fun mapValue!20058 () List!47935)

(declare-fun mapKey!20058 () (_ BitVec 32))

(assert (=> mapNonEmpty!20058 (= (arr!7115 (_values!4745 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 (_2!26064 _$21!133)))))))) (store mapRest!20058 mapKey!20058 mapValue!20058))))

(declare-fun b!4294694 () Bool)

(assert (=> b!4294694 (= e!2668738 (= (totalInput!4392 (_2!26064 _$21!133)) totalInput!812))))

(declare-fun b!4294695 () Bool)

(declare-fun e!2668736 () Bool)

(assert (=> b!4294695 (= e!2668736 e!2668742)))

(declare-fun b!4294696 () Bool)

(declare-fun lt!1517795 () MutLongMap!4464)

(assert (=> b!4294696 (= e!2668735 (and e!2668736 ((_ is LongMap!4464) lt!1517795)))))

(assert (=> b!4294696 (= lt!1517795 (v!41758 (underlying!9158 (cache!4510 (_2!26064 _$21!133)))))))

(declare-fun b!4294697 () Bool)

(assert (=> b!4294697 (= e!2668743 (and e!2668740 (inv!63340 (totalInput!4392 (_2!26064 _$21!133))) e!2668741))))

(assert (= (and b!4294692 condMapEmpty!20058) mapIsEmpty!20058))

(assert (= (and b!4294692 (not condMapEmpty!20058)) mapNonEmpty!20058))

(assert (= b!4294691 b!4294692))

(assert (= b!4294690 b!4294691))

(assert (= b!4294695 b!4294690))

(assert (= (and b!4294696 ((_ is LongMap!4464) (v!41758 (underlying!9158 (cache!4510 (_2!26064 _$21!133)))))) b!4294695))

(assert (= b!4294689 b!4294696))

(assert (= (and b!4294697 ((_ is HashMap!4370) (cache!4510 (_2!26064 _$21!133)))) b!4294689))

(assert (= b!4294697 b!4294693))

(assert (= d!1265893 b!4294697))

(assert (= (and d!1265893 res!1760545) b!4294694))

(declare-fun m!4887340 () Bool)

(assert (=> b!4294697 m!4887340))

(declare-fun m!4887342 () Bool)

(assert (=> d!1265893 m!4887342))

(declare-fun m!4887344 () Bool)

(assert (=> d!1265893 m!4887344))

(declare-fun m!4887346 () Bool)

(assert (=> b!4294691 m!4887346))

(declare-fun m!4887348 () Bool)

(assert (=> b!4294691 m!4887348))

(declare-fun m!4887350 () Bool)

(assert (=> mapNonEmpty!20058 m!4887350))

(declare-fun m!4887352 () Bool)

(assert (=> b!4294693 m!4887352))

(assert (=> d!1265835 d!1265893))

(declare-fun bs!603083 () Bool)

(declare-fun d!1265895 () Bool)

(assert (= bs!603083 (and d!1265895 d!1265845)))

(declare-fun lambda!131601 () Int)

(assert (=> bs!603083 (= lambda!131601 lambda!131583)))

(declare-fun bs!603084 () Bool)

(assert (= bs!603084 (and d!1265895 d!1265865)))

(assert (=> bs!603084 (= lambda!131601 lambda!131587)))

(declare-fun bs!603085 () Bool)

(assert (= bs!603085 (and d!1265895 d!1265877)))

(assert (=> bs!603085 (= lambda!131601 lambda!131598)))

(assert (=> d!1265895 (= (inv!63342 (_1!26055 (_1!26056 (h!53232 mapValue!20044)))) (forall!8559 (exprs!3373 (_1!26055 (_1!26056 (h!53232 mapValue!20044)))) lambda!131601))))

(declare-fun bs!603086 () Bool)

(assert (= bs!603086 d!1265895))

(declare-fun m!4887354 () Bool)

(assert (=> bs!603086 m!4887354))

(assert (=> b!4294523 d!1265895))

(declare-fun bs!603087 () Bool)

(declare-fun d!1265897 () Bool)

(assert (= bs!603087 (and d!1265897 d!1265867)))

(declare-fun lambda!131602 () Int)

(assert (=> bs!603087 (not (= lambda!131602 lambda!131590))))

(declare-fun bs!603088 () Bool)

(assert (= bs!603088 (and d!1265897 b!4294449)))

(assert (=> bs!603088 (not (= lambda!131602 lambda!131579))))

(declare-fun bs!603089 () Bool)

(assert (= bs!603089 (and d!1265897 b!4294448)))

(assert (=> bs!603089 (not (= lambda!131602 lambda!131578))))

(declare-fun bs!603090 () Bool)

(assert (= bs!603090 (and d!1265897 d!1265881)))

(assert (=> bs!603090 (= lambda!131602 lambda!131599)))

(declare-fun bs!603091 () Bool)

(assert (= bs!603091 (and d!1265897 d!1265827)))

(assert (=> bs!603091 (not (= lambda!131602 lambda!131577))))

(declare-fun bs!603092 () Bool)

(assert (= bs!603092 (and d!1265897 d!1265833)))

(assert (=> bs!603092 (= lambda!131602 lambda!131580)))

(declare-fun bs!603093 () Bool)

(assert (= bs!603093 (and d!1265897 d!1265813)))

(assert (=> bs!603093 (= lambda!131602 lambda!131564)))

(assert (=> d!1265897 (= (nullableZipper!775 lt!1517740) (exists!1227 lt!1517740 lambda!131602))))

(declare-fun bs!603094 () Bool)

(assert (= bs!603094 d!1265897))

(declare-fun m!4887356 () Bool)

(assert (=> bs!603094 m!4887356))

(assert (=> b!4294412 d!1265897))

(assert (=> b!4294382 d!1265855))

(declare-fun d!1265899 () Bool)

(declare-fun c!730788 () Bool)

(assert (=> d!1265899 (= c!730788 ((_ is Node!14424) (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))

(declare-fun e!2668744 () Bool)

(assert (=> d!1265899 (= (inv!63343 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) e!2668744)))

(declare-fun b!4294698 () Bool)

(assert (=> b!4294698 (= e!2668744 (inv!63344 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))

(declare-fun b!4294699 () Bool)

(declare-fun e!2668745 () Bool)

(assert (=> b!4294699 (= e!2668744 e!2668745)))

(declare-fun res!1760546 () Bool)

(assert (=> b!4294699 (= res!1760546 (not ((_ is Leaf!22317) (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))))))

(assert (=> b!4294699 (=> res!1760546 e!2668745)))

(declare-fun b!4294700 () Bool)

(assert (=> b!4294700 (= e!2668745 (inv!63345 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))

(assert (= (and d!1265899 c!730788) b!4294698))

(assert (= (and d!1265899 (not c!730788)) b!4294699))

(assert (= (and b!4294699 (not res!1760546)) b!4294700))

(declare-fun m!4887358 () Bool)

(assert (=> b!4294698 m!4887358))

(declare-fun m!4887360 () Bool)

(assert (=> b!4294700 m!4887360))

(assert (=> b!4294621 d!1265899))

(declare-fun d!1265901 () Bool)

(declare-fun c!730789 () Bool)

(assert (=> d!1265901 (= c!730789 ((_ is Node!14424) (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))

(declare-fun e!2668746 () Bool)

(assert (=> d!1265901 (= (inv!63343 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) e!2668746)))

(declare-fun b!4294701 () Bool)

(assert (=> b!4294701 (= e!2668746 (inv!63344 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))

(declare-fun b!4294702 () Bool)

(declare-fun e!2668747 () Bool)

(assert (=> b!4294702 (= e!2668746 e!2668747)))

(declare-fun res!1760547 () Bool)

(assert (=> b!4294702 (= res!1760547 (not ((_ is Leaf!22317) (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))))))

(assert (=> b!4294702 (=> res!1760547 e!2668747)))

(declare-fun b!4294703 () Bool)

(assert (=> b!4294703 (= e!2668747 (inv!63345 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))

(assert (= (and d!1265901 c!730789) b!4294701))

(assert (= (and d!1265901 (not c!730789)) b!4294702))

(assert (= (and b!4294702 (not res!1760547)) b!4294703))

(declare-fun m!4887362 () Bool)

(assert (=> b!4294701 m!4887362))

(declare-fun m!4887364 () Bool)

(assert (=> b!4294703 m!4887364))

(assert (=> b!4294621 d!1265901))

(declare-fun bs!603095 () Bool)

(declare-fun d!1265903 () Bool)

(assert (= bs!603095 (and d!1265903 d!1265845)))

(declare-fun lambda!131603 () Int)

(assert (=> bs!603095 (= lambda!131603 lambda!131583)))

(declare-fun bs!603096 () Bool)

(assert (= bs!603096 (and d!1265903 d!1265865)))

(assert (=> bs!603096 (= lambda!131603 lambda!131587)))

(declare-fun bs!603097 () Bool)

(assert (= bs!603097 (and d!1265903 d!1265877)))

(assert (=> bs!603097 (= lambda!131603 lambda!131598)))

(declare-fun bs!603098 () Bool)

(assert (= bs!603098 (and d!1265903 d!1265895)))

(assert (=> bs!603098 (= lambda!131603 lambda!131601)))

(assert (=> d!1265903 (= (inv!63342 setElem!26641) (forall!8559 (exprs!3373 setElem!26641) lambda!131603))))

(declare-fun bs!603099 () Bool)

(assert (= bs!603099 d!1265903))

(declare-fun m!4887366 () Bool)

(assert (=> bs!603099 m!4887366))

(assert (=> setNonEmpty!26641 d!1265903))

(assert (=> b!4294489 d!1265807))

(assert (=> d!1265799 d!1265797))

(declare-fun b!4294780 () Bool)

(declare-fun b_free!127719 () Bool)

(declare-fun b_next!128423 () Bool)

(assert (=> b!4294780 (= b_free!127719 (not b_next!128423))))

(declare-fun tp!1318501 () Bool)

(declare-fun b_and!338935 () Bool)

(assert (=> b!4294780 (= tp!1318501 b_and!338935)))

(declare-fun b!4294762 () Bool)

(declare-fun b_free!127721 () Bool)

(declare-fun b_next!128425 () Bool)

(assert (=> b!4294762 (= b_free!127721 (not b_next!128425))))

(declare-fun tp!1318498 () Bool)

(declare-fun b_and!338937 () Bool)

(assert (=> b!4294762 (= tp!1318498 b_and!338937)))

(declare-fun b!4294766 () Bool)

(declare-fun b_free!127723 () Bool)

(declare-fun b_next!128427 () Bool)

(assert (=> b!4294766 (= b_free!127723 (not b_next!128427))))

(declare-fun tp!1318499 () Bool)

(declare-fun b_and!338939 () Bool)

(assert (=> b!4294766 (= tp!1318499 b_and!338939)))

(declare-fun b!4294775 () Bool)

(declare-fun b_free!127725 () Bool)

(declare-fun b_next!128429 () Bool)

(assert (=> b!4294775 (= b_free!127725 (not b_next!128429))))

(declare-fun tp!1318509 () Bool)

(declare-fun b_and!338941 () Bool)

(assert (=> b!4294775 (= tp!1318509 b_and!338941)))

(declare-fun b!4294765 () Bool)

(declare-fun b_free!127727 () Bool)

(declare-fun b_next!128431 () Bool)

(assert (=> b!4294765 (= b_free!127727 (not b_next!128431))))

(declare-fun tp!1318518 () Bool)

(declare-fun b_and!338943 () Bool)

(assert (=> b!4294765 (= tp!1318518 b_and!338943)))

(declare-fun b!4294772 () Bool)

(declare-fun b_free!127729 () Bool)

(declare-fun b_next!128433 () Bool)

(assert (=> b!4294772 (= b_free!127729 (not b_next!128433))))

(declare-fun tp!1318512 () Bool)

(declare-fun b_and!338945 () Bool)

(assert (=> b!4294772 (= tp!1318512 b_and!338945)))

(declare-fun b!4294756 () Bool)

(declare-fun e!2668824 () Bool)

(declare-fun e!2668807 () Bool)

(assert (=> b!4294756 (= e!2668824 e!2668807)))

(declare-fun b!4294757 () Bool)

(declare-fun e!2668803 () Bool)

(declare-fun e!2668821 () Bool)

(assert (=> b!4294757 (= e!2668803 e!2668821)))

(declare-fun b!4294759 () Bool)

(declare-fun e!2668809 () Bool)

(assert (=> b!4294759 (= e!2668807 e!2668809)))

(declare-fun b!4294760 () Bool)

(declare-fun e!2668822 () Bool)

(declare-fun tp!1318511 () Bool)

(declare-fun mapRes!20066 () Bool)

(assert (=> b!4294760 (= e!2668822 (and tp!1318511 mapRes!20066))))

(declare-fun condMapEmpty!20065 () Bool)

(declare-fun res!1760560 () tuple4!1062)

(declare-fun mapDefault!20066 () List!47934)

(assert (=> b!4294760 (= condMapEmpty!20065 (= (arr!7114 (_values!4744 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 (_3!3276 res!1760560)))))))) ((as const (Array (_ BitVec 32) List!47934)) mapDefault!20066)))))

(declare-fun b!4294761 () Bool)

(declare-fun e!2668813 () Bool)

(declare-fun e!2668810 () Bool)

(declare-fun lt!1517802 () MutLongMap!4463)

(assert (=> b!4294761 (= e!2668813 (and e!2668810 ((_ is LongMap!4463) lt!1517802)))))

(assert (=> b!4294761 (= lt!1517802 (v!41756 (underlying!9156 (cache!4511 (_3!3276 res!1760560)))))))

(declare-fun e!2668801 () Bool)

(declare-fun e!2668802 () Bool)

(assert (=> b!4294762 (= e!2668801 (and e!2668802 tp!1318498))))

(declare-fun b!4294763 () Bool)

(declare-fun e!2668814 () Bool)

(declare-fun e!2668811 () Bool)

(assert (=> b!4294763 (= e!2668814 e!2668811)))

(declare-fun mapNonEmpty!20065 () Bool)

(declare-fun tp!1318503 () Bool)

(declare-fun tp!1318508 () Bool)

(assert (=> mapNonEmpty!20065 (= mapRes!20066 (and tp!1318503 tp!1318508))))

(declare-fun mapValue!20067 () List!47934)

(declare-fun mapKey!20066 () (_ BitVec 32))

(declare-fun mapRest!20067 () (Array (_ BitVec 32) List!47934))

(assert (=> mapNonEmpty!20065 (= (arr!7114 (_values!4744 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 (_3!3276 res!1760560)))))))) (store mapRest!20067 mapKey!20066 mapValue!20067))))

(declare-fun b!4294764 () Bool)

(declare-fun res!1760561 () Bool)

(declare-fun e!2668808 () Bool)

(assert (=> b!4294764 (=> (not res!1760561) (not e!2668808))))

(assert (=> b!4294764 (= res!1760561 (valid!3444 (_2!26061 res!1760560)))))

(declare-fun tp!1318500 () Bool)

(declare-fun tp!1318505 () Bool)

(declare-fun e!2668825 () Bool)

(assert (=> b!4294765 (= e!2668809 (and tp!1318518 tp!1318505 tp!1318500 (array_inv!5097 (_keys!4764 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 (_4!531 res!1760560)))))))) (array_inv!5100 (_values!4745 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 (_4!531 res!1760560)))))))) e!2668825))))

(declare-fun e!2668806 () Bool)

(assert (=> b!4294766 (= e!2668811 (and e!2668806 tp!1318499))))

(declare-fun b!4294767 () Bool)

(declare-fun e!2668823 () Bool)

(assert (=> b!4294767 (= e!2668810 e!2668823)))

(declare-fun d!1265905 () Bool)

(assert (=> d!1265905 e!2668808))

(declare-fun res!1760562 () Bool)

(assert (=> d!1265905 (=> (not res!1760562) (not e!2668808))))

(assert (=> d!1265905 (= res!1760562 (= (_1!26061 res!1760560) (findLongestMatchInnerZipperFastV2!42 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257)))))

(declare-fun e!2668820 () Bool)

(declare-fun e!2668819 () Bool)

(assert (=> d!1265905 (and (inv!63341 (_2!26061 res!1760560)) e!2668814 (inv!63338 (_3!3276 res!1760560)) e!2668820 (inv!63339 (_4!531 res!1760560)) e!2668819)))

(assert (=> d!1265905 (= (choose!26148 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26062 lt!1517725) (_3!3277 lt!1517725) cacheFindLongestMatch!183) res!1760560)))

(declare-fun b!4294758 () Bool)

(declare-fun e!2668800 () Bool)

(declare-fun tp!1318506 () Bool)

(declare-fun mapRes!20067 () Bool)

(assert (=> b!4294758 (= e!2668800 (and tp!1318506 mapRes!20067))))

(declare-fun condMapEmpty!20066 () Bool)

(declare-fun mapDefault!20065 () List!47936)

(assert (=> b!4294758 (= condMapEmpty!20066 (= (arr!7116 (_values!4746 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 (_2!26061 res!1760560)))))))) ((as const (Array (_ BitVec 32) List!47936)) mapDefault!20065)))))

(declare-fun b!4294768 () Bool)

(declare-fun e!2668805 () Bool)

(assert (=> b!4294768 (= e!2668820 e!2668805)))

(declare-fun b!4294769 () Bool)

(declare-fun res!1760558 () Bool)

(assert (=> b!4294769 (=> (not res!1760558) (not e!2668808))))

(assert (=> b!4294769 (= res!1760558 (valid!3446 (_4!531 res!1760560)))))

(declare-fun mapNonEmpty!20066 () Bool)

(declare-fun mapRes!20065 () Bool)

(declare-fun tp!1318504 () Bool)

(declare-fun tp!1318513 () Bool)

(assert (=> mapNonEmpty!20066 (= mapRes!20065 (and tp!1318504 tp!1318513))))

(declare-fun mapValue!20066 () List!47935)

(declare-fun mapKey!20067 () (_ BitVec 32))

(declare-fun mapRest!20065 () (Array (_ BitVec 32) List!47935))

(assert (=> mapNonEmpty!20066 (= (arr!7115 (_values!4745 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 (_4!531 res!1760560)))))))) (store mapRest!20065 mapKey!20067 mapValue!20066))))

(declare-fun b!4294770 () Bool)

(declare-fun e!2668804 () Bool)

(assert (=> b!4294770 (= e!2668823 e!2668804)))

(declare-fun b!4294771 () Bool)

(declare-fun res!1760559 () Bool)

(assert (=> b!4294771 (=> (not res!1760559) (not e!2668808))))

(assert (=> b!4294771 (= res!1760559 (valid!3445 (_3!3276 res!1760560)))))

(declare-fun tp!1318497 () Bool)

(declare-fun tp!1318517 () Bool)

(assert (=> b!4294772 (= e!2668804 (and tp!1318512 tp!1318497 tp!1318517 (array_inv!5097 (_keys!4763 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 (_3!3276 res!1760560)))))))) (array_inv!5099 (_values!4744 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 (_3!3276 res!1760560)))))))) e!2668822))))

(declare-fun b!4294773 () Bool)

(declare-fun e!2668816 () Bool)

(assert (=> b!4294773 (= e!2668819 (and e!2668801 (inv!63340 (totalInput!4392 (_4!531 res!1760560))) e!2668816))))

(declare-fun b!4294774 () Bool)

(assert (=> b!4294774 (= e!2668808 (= (totalInput!4392 (_4!531 res!1760560)) totalInput!812))))

(declare-fun mapIsEmpty!20065 () Bool)

(assert (=> mapIsEmpty!20065 mapRes!20065))

(declare-fun tp!1318514 () Bool)

(declare-fun tp!1318502 () Bool)

(assert (=> b!4294775 (= e!2668821 (and tp!1318509 tp!1318502 tp!1318514 (array_inv!5097 (_keys!4765 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 (_2!26061 res!1760560)))))))) (array_inv!5098 (_values!4746 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 (_2!26061 res!1760560)))))))) e!2668800))))

(declare-fun b!4294776 () Bool)

(declare-fun e!2668817 () Bool)

(declare-fun lt!1517803 () MutLongMap!4465)

(assert (=> b!4294776 (= e!2668806 (and e!2668817 ((_ is LongMap!4465) lt!1517803)))))

(assert (=> b!4294776 (= lt!1517803 (v!41760 (underlying!9160 (cache!4509 (_2!26061 res!1760560)))))))

(declare-fun mapIsEmpty!20066 () Bool)

(assert (=> mapIsEmpty!20066 mapRes!20067))

(declare-fun b!4294777 () Bool)

(declare-fun tp!1318510 () Bool)

(assert (=> b!4294777 (= e!2668825 (and tp!1318510 mapRes!20065))))

(declare-fun condMapEmpty!20067 () Bool)

(declare-fun mapDefault!20067 () List!47935)

(assert (=> b!4294777 (= condMapEmpty!20067 (= (arr!7115 (_values!4745 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 (_4!531 res!1760560)))))))) ((as const (Array (_ BitVec 32) List!47935)) mapDefault!20067)))))

(declare-fun b!4294778 () Bool)

(assert (=> b!4294778 (= e!2668817 e!2668803)))

(declare-fun b!4294779 () Bool)

(declare-fun lt!1517804 () MutLongMap!4464)

(assert (=> b!4294779 (= e!2668802 (and e!2668824 ((_ is LongMap!4464) lt!1517804)))))

(assert (=> b!4294779 (= lt!1517804 (v!41758 (underlying!9158 (cache!4510 (_4!531 res!1760560)))))))

(declare-fun mapIsEmpty!20067 () Bool)

(assert (=> mapIsEmpty!20067 mapRes!20066))

(declare-fun mapNonEmpty!20067 () Bool)

(declare-fun tp!1318507 () Bool)

(declare-fun tp!1318516 () Bool)

(assert (=> mapNonEmpty!20067 (= mapRes!20067 (and tp!1318507 tp!1318516))))

(declare-fun mapRest!20066 () (Array (_ BitVec 32) List!47936))

(declare-fun mapKey!20065 () (_ BitVec 32))

(declare-fun mapValue!20065 () List!47936)

(assert (=> mapNonEmpty!20067 (= (arr!7116 (_values!4746 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 (_2!26061 res!1760560)))))))) (store mapRest!20066 mapKey!20065 mapValue!20065))))

(assert (=> b!4294780 (= e!2668805 (and e!2668813 tp!1318501))))

(declare-fun b!4294781 () Bool)

(declare-fun tp!1318515 () Bool)

(assert (=> b!4294781 (= e!2668816 (and (inv!63343 (c!730753 (totalInput!4392 (_4!531 res!1760560)))) tp!1318515))))

(assert (= (and b!4294758 condMapEmpty!20066) mapIsEmpty!20066))

(assert (= (and b!4294758 (not condMapEmpty!20066)) mapNonEmpty!20067))

(assert (= b!4294775 b!4294758))

(assert (= b!4294757 b!4294775))

(assert (= b!4294778 b!4294757))

(assert (= (and b!4294776 ((_ is LongMap!4465) (v!41760 (underlying!9160 (cache!4509 (_2!26061 res!1760560)))))) b!4294778))

(assert (= b!4294766 b!4294776))

(assert (= (and b!4294763 ((_ is HashMap!4371) (cache!4509 (_2!26061 res!1760560)))) b!4294766))

(assert (= d!1265905 b!4294763))

(assert (= (and b!4294760 condMapEmpty!20065) mapIsEmpty!20067))

(assert (= (and b!4294760 (not condMapEmpty!20065)) mapNonEmpty!20065))

(assert (= b!4294772 b!4294760))

(assert (= b!4294770 b!4294772))

(assert (= b!4294767 b!4294770))

(assert (= (and b!4294761 ((_ is LongMap!4463) (v!41756 (underlying!9156 (cache!4511 (_3!3276 res!1760560)))))) b!4294767))

(assert (= b!4294780 b!4294761))

(assert (= (and b!4294768 ((_ is HashMap!4369) (cache!4511 (_3!3276 res!1760560)))) b!4294780))

(assert (= d!1265905 b!4294768))

(assert (= (and b!4294777 condMapEmpty!20067) mapIsEmpty!20065))

(assert (= (and b!4294777 (not condMapEmpty!20067)) mapNonEmpty!20066))

(assert (= b!4294765 b!4294777))

(assert (= b!4294759 b!4294765))

(assert (= b!4294756 b!4294759))

(assert (= (and b!4294779 ((_ is LongMap!4464) (v!41758 (underlying!9158 (cache!4510 (_4!531 res!1760560)))))) b!4294756))

(assert (= b!4294762 b!4294779))

(assert (= (and b!4294773 ((_ is HashMap!4370) (cache!4510 (_4!531 res!1760560)))) b!4294762))

(assert (= b!4294773 b!4294781))

(assert (= d!1265905 b!4294773))

(assert (= (and d!1265905 res!1760562) b!4294764))

(assert (= (and b!4294764 res!1760561) b!4294771))

(assert (= (and b!4294771 res!1760559) b!4294769))

(assert (= (and b!4294769 res!1760558) b!4294774))

(declare-fun m!4887368 () Bool)

(assert (=> b!4294771 m!4887368))

(declare-fun m!4887370 () Bool)

(assert (=> b!4294765 m!4887370))

(declare-fun m!4887372 () Bool)

(assert (=> b!4294765 m!4887372))

(declare-fun m!4887374 () Bool)

(assert (=> b!4294772 m!4887374))

(declare-fun m!4887376 () Bool)

(assert (=> b!4294772 m!4887376))

(declare-fun m!4887378 () Bool)

(assert (=> mapNonEmpty!20065 m!4887378))

(declare-fun m!4887380 () Bool)

(assert (=> b!4294773 m!4887380))

(declare-fun m!4887382 () Bool)

(assert (=> b!4294775 m!4887382))

(declare-fun m!4887384 () Bool)

(assert (=> b!4294775 m!4887384))

(declare-fun m!4887386 () Bool)

(assert (=> b!4294764 m!4887386))

(declare-fun m!4887388 () Bool)

(assert (=> mapNonEmpty!20066 m!4887388))

(declare-fun m!4887390 () Bool)

(assert (=> b!4294781 m!4887390))

(declare-fun m!4887392 () Bool)

(assert (=> b!4294769 m!4887392))

(declare-fun m!4887394 () Bool)

(assert (=> mapNonEmpty!20067 m!4887394))

(assert (=> d!1265905 m!4887054))

(declare-fun m!4887396 () Bool)

(assert (=> d!1265905 m!4887396))

(declare-fun m!4887398 () Bool)

(assert (=> d!1265905 m!4887398))

(declare-fun m!4887400 () Bool)

(assert (=> d!1265905 m!4887400))

(assert (=> d!1265799 d!1265905))

(assert (=> b!4294443 d!1265807))

(declare-fun bs!603100 () Bool)

(declare-fun d!1265907 () Bool)

(assert (= bs!603100 (and d!1265907 d!1265867)))

(declare-fun lambda!131604 () Int)

(assert (=> bs!603100 (not (= lambda!131604 lambda!131590))))

(declare-fun bs!603101 () Bool)

(assert (= bs!603101 (and d!1265907 b!4294449)))

(assert (=> bs!603101 (not (= lambda!131604 lambda!131579))))

(declare-fun bs!603102 () Bool)

(assert (= bs!603102 (and d!1265907 d!1265897)))

(assert (=> bs!603102 (= lambda!131604 lambda!131602)))

(declare-fun bs!603103 () Bool)

(assert (= bs!603103 (and d!1265907 b!4294448)))

(assert (=> bs!603103 (not (= lambda!131604 lambda!131578))))

(declare-fun bs!603104 () Bool)

(assert (= bs!603104 (and d!1265907 d!1265881)))

(assert (=> bs!603104 (= lambda!131604 lambda!131599)))

(declare-fun bs!603105 () Bool)

(assert (= bs!603105 (and d!1265907 d!1265827)))

(assert (=> bs!603105 (not (= lambda!131604 lambda!131577))))

(declare-fun bs!603106 () Bool)

(assert (= bs!603106 (and d!1265907 d!1265833)))

(assert (=> bs!603106 (= lambda!131604 lambda!131580)))

(declare-fun bs!603107 () Bool)

(assert (= bs!603107 (and d!1265907 d!1265813)))

(assert (=> bs!603107 (= lambda!131604 lambda!131564)))

(assert (=> d!1265907 (= (nullableZipper!775 lt!1517782) (exists!1227 lt!1517782 lambda!131604))))

(declare-fun bs!603108 () Bool)

(assert (= bs!603108 d!1265907))

(declare-fun m!4887402 () Bool)

(assert (=> bs!603108 m!4887402))

(assert (=> b!4294453 d!1265907))

(declare-fun d!1265909 () Bool)

(assert (=> d!1265909 (= (isEmpty!28029 lt!1517786) (not ((_ is Some!10148) lt!1517786)))))

(assert (=> d!1265857 d!1265909))

(declare-fun d!1265911 () Bool)

(declare-fun e!2668828 () Bool)

(assert (=> d!1265911 e!2668828))

(declare-fun res!1760568 () Bool)

(assert (=> d!1265911 (=> res!1760568 e!2668828)))

(declare-fun res!1760567 () Option!10149)

(assert (=> d!1265911 (= res!1760568 (isEmpty!28029 res!1760567))))

(assert (=> d!1265911 true))

(assert (=> d!1265911 (= (choose!26151 cacheFindLongestMatch!183 z!3765 from!999) res!1760567)))

(declare-fun b!4294784 () Bool)

(assert (=> b!4294784 (= e!2668828 (= (get!15473 res!1760567) (findLongestMatchInnerZipperFastV2!42 z!3765 from!999 (totalInput!4392 cacheFindLongestMatch!183) (size!35119 (totalInput!4392 cacheFindLongestMatch!183)))))))

(assert (= (and d!1265911 (not res!1760568)) b!4294784))

(declare-fun m!4887404 () Bool)

(assert (=> d!1265911 m!4887404))

(declare-fun m!4887406 () Bool)

(assert (=> b!4294784 m!4887406))

(assert (=> b!4294784 m!4887164))

(assert (=> b!4294784 m!4887164))

(assert (=> b!4294784 m!4887166))

(assert (=> d!1265857 d!1265911))

(assert (=> d!1265857 d!1265871))

(declare-fun bs!603109 () Bool)

(declare-fun d!1265913 () Bool)

(assert (= bs!603109 (and d!1265913 d!1265867)))

(declare-fun lambda!131605 () Int)

(assert (=> bs!603109 (not (= lambda!131605 lambda!131590))))

(declare-fun bs!603110 () Bool)

(assert (= bs!603110 (and d!1265913 b!4294449)))

(assert (=> bs!603110 (not (= lambda!131605 lambda!131579))))

(declare-fun bs!603111 () Bool)

(assert (= bs!603111 (and d!1265913 d!1265897)))

(assert (=> bs!603111 (not (= lambda!131605 lambda!131602))))

(declare-fun bs!603112 () Bool)

(assert (= bs!603112 (and d!1265913 b!4294448)))

(assert (=> bs!603112 (not (= lambda!131605 lambda!131578))))

(declare-fun bs!603113 () Bool)

(assert (= bs!603113 (and d!1265913 d!1265907)))

(assert (=> bs!603113 (not (= lambda!131605 lambda!131604))))

(declare-fun bs!603114 () Bool)

(assert (= bs!603114 (and d!1265913 d!1265881)))

(assert (=> bs!603114 (not (= lambda!131605 lambda!131599))))

(declare-fun bs!603115 () Bool)

(assert (= bs!603115 (and d!1265913 d!1265827)))

(assert (=> bs!603115 (= lambda!131605 lambda!131577)))

(declare-fun bs!603116 () Bool)

(assert (= bs!603116 (and d!1265913 d!1265833)))

(assert (=> bs!603116 (not (= lambda!131605 lambda!131580))))

(declare-fun bs!603117 () Bool)

(assert (= bs!603117 (and d!1265913 d!1265813)))

(assert (=> bs!603117 (not (= lambda!131605 lambda!131564))))

(declare-fun bs!603118 () Bool)

(declare-fun b!4294785 () Bool)

(assert (= bs!603118 (and b!4294785 d!1265867)))

(declare-fun lambda!131606 () Int)

(assert (=> bs!603118 (not (= lambda!131606 lambda!131590))))

(declare-fun bs!603119 () Bool)

(assert (= bs!603119 (and b!4294785 b!4294449)))

(assert (=> bs!603119 (= lambda!131606 lambda!131579)))

(declare-fun bs!603120 () Bool)

(assert (= bs!603120 (and b!4294785 d!1265913)))

(assert (=> bs!603120 (not (= lambda!131606 lambda!131605))))

(declare-fun bs!603121 () Bool)

(assert (= bs!603121 (and b!4294785 d!1265897)))

(assert (=> bs!603121 (not (= lambda!131606 lambda!131602))))

(declare-fun bs!603122 () Bool)

(assert (= bs!603122 (and b!4294785 b!4294448)))

(assert (=> bs!603122 (= lambda!131606 lambda!131578)))

(declare-fun bs!603123 () Bool)

(assert (= bs!603123 (and b!4294785 d!1265907)))

(assert (=> bs!603123 (not (= lambda!131606 lambda!131604))))

(declare-fun bs!603124 () Bool)

(assert (= bs!603124 (and b!4294785 d!1265881)))

(assert (=> bs!603124 (not (= lambda!131606 lambda!131599))))

(declare-fun bs!603125 () Bool)

(assert (= bs!603125 (and b!4294785 d!1265827)))

(assert (=> bs!603125 (not (= lambda!131606 lambda!131577))))

(declare-fun bs!603126 () Bool)

(assert (= bs!603126 (and b!4294785 d!1265833)))

(assert (=> bs!603126 (not (= lambda!131606 lambda!131580))))

(declare-fun bs!603127 () Bool)

(assert (= bs!603127 (and b!4294785 d!1265813)))

(assert (=> bs!603127 (not (= lambda!131606 lambda!131564))))

(declare-fun bs!603128 () Bool)

(declare-fun b!4294786 () Bool)

(assert (= bs!603128 (and b!4294786 d!1265867)))

(declare-fun lambda!131607 () Int)

(assert (=> bs!603128 (not (= lambda!131607 lambda!131590))))

(declare-fun bs!603129 () Bool)

(assert (= bs!603129 (and b!4294786 b!4294449)))

(assert (=> bs!603129 (= lambda!131607 lambda!131579)))

(declare-fun bs!603130 () Bool)

(assert (= bs!603130 (and b!4294786 d!1265913)))

(assert (=> bs!603130 (not (= lambda!131607 lambda!131605))))

(declare-fun bs!603131 () Bool)

(assert (= bs!603131 (and b!4294786 d!1265897)))

(assert (=> bs!603131 (not (= lambda!131607 lambda!131602))))

(declare-fun bs!603132 () Bool)

(assert (= bs!603132 (and b!4294786 b!4294785)))

(assert (=> bs!603132 (= lambda!131607 lambda!131606)))

(declare-fun bs!603133 () Bool)

(assert (= bs!603133 (and b!4294786 b!4294448)))

(assert (=> bs!603133 (= lambda!131607 lambda!131578)))

(declare-fun bs!603134 () Bool)

(assert (= bs!603134 (and b!4294786 d!1265907)))

(assert (=> bs!603134 (not (= lambda!131607 lambda!131604))))

(declare-fun bs!603135 () Bool)

(assert (= bs!603135 (and b!4294786 d!1265881)))

(assert (=> bs!603135 (not (= lambda!131607 lambda!131599))))

(declare-fun bs!603136 () Bool)

(assert (= bs!603136 (and b!4294786 d!1265827)))

(assert (=> bs!603136 (not (= lambda!131607 lambda!131577))))

(declare-fun bs!603137 () Bool)

(assert (= bs!603137 (and b!4294786 d!1265833)))

(assert (=> bs!603137 (not (= lambda!131607 lambda!131580))))

(declare-fun bs!603138 () Bool)

(assert (= bs!603138 (and b!4294786 d!1265813)))

(assert (=> bs!603138 (not (= lambda!131607 lambda!131564))))

(declare-fun bm!294520 () Bool)

(declare-fun call!294526 () List!47938)

(assert (=> bm!294520 (= call!294526 (toList!2129 lt!1517722))))

(declare-fun e!2668829 () Unit!66424)

(declare-fun Unit!66429 () Unit!66424)

(assert (=> b!4294785 (= e!2668829 Unit!66429)))

(declare-fun lt!1517807 () List!47938)

(assert (=> b!4294785 (= lt!1517807 call!294526)))

(declare-fun lt!1517812 () Unit!66424)

(assert (=> b!4294785 (= lt!1517812 (lemmaNotForallThenExists!174 lt!1517807 lambda!131605))))

(declare-fun call!294525 () Bool)

(assert (=> b!4294785 call!294525))

(declare-fun lt!1517808 () Unit!66424)

(assert (=> b!4294785 (= lt!1517808 lt!1517812)))

(declare-fun lt!1517806 () Bool)

(assert (=> d!1265913 (= lt!1517806 (isEmpty!28028 (getLanguageWitness!602 lt!1517722)))))

(assert (=> d!1265913 (= lt!1517806 (forall!8558 lt!1517722 lambda!131605))))

(declare-fun lt!1517810 () Unit!66424)

(assert (=> d!1265913 (= lt!1517810 e!2668829)))

(declare-fun c!730790 () Bool)

(assert (=> d!1265913 (= c!730790 (not (forall!8558 lt!1517722 lambda!131605)))))

(assert (=> d!1265913 (= (lostCauseZipper!655 lt!1517722) lt!1517806)))

(declare-fun Unit!66430 () Unit!66424)

(assert (=> b!4294786 (= e!2668829 Unit!66430)))

(declare-fun lt!1517809 () List!47938)

(assert (=> b!4294786 (= lt!1517809 call!294526)))

(declare-fun lt!1517811 () Unit!66424)

(assert (=> b!4294786 (= lt!1517811 (lemmaForallThenNotExists!157 lt!1517809 lambda!131605))))

(assert (=> b!4294786 (not call!294525)))

(declare-fun lt!1517805 () Unit!66424)

(assert (=> b!4294786 (= lt!1517805 lt!1517811)))

(declare-fun bm!294521 () Bool)

(assert (=> bm!294521 (= call!294525 (exists!1228 (ite c!730790 lt!1517807 lt!1517809) (ite c!730790 lambda!131606 lambda!131607)))))

(assert (= (and d!1265913 c!730790) b!4294785))

(assert (= (and d!1265913 (not c!730790)) b!4294786))

(assert (= (or b!4294785 b!4294786) bm!294520))

(assert (= (or b!4294785 b!4294786) bm!294521))

(declare-fun m!4887408 () Bool)

(assert (=> b!4294786 m!4887408))

(assert (=> bm!294520 m!4887326))

(declare-fun m!4887410 () Bool)

(assert (=> b!4294785 m!4887410))

(declare-fun m!4887412 () Bool)

(assert (=> d!1265913 m!4887412))

(assert (=> d!1265913 m!4887412))

(declare-fun m!4887414 () Bool)

(assert (=> d!1265913 m!4887414))

(declare-fun m!4887416 () Bool)

(assert (=> d!1265913 m!4887416))

(assert (=> d!1265913 m!4887416))

(declare-fun m!4887418 () Bool)

(assert (=> bm!294521 m!4887418))

(assert (=> b!4294492 d!1265913))

(declare-fun bs!603139 () Bool)

(declare-fun d!1265915 () Bool)

(assert (= bs!603139 (and d!1265915 d!1265845)))

(declare-fun lambda!131608 () Int)

(assert (=> bs!603139 (= lambda!131608 lambda!131583)))

(declare-fun bs!603140 () Bool)

(assert (= bs!603140 (and d!1265915 d!1265877)))

(assert (=> bs!603140 (= lambda!131608 lambda!131598)))

(declare-fun bs!603141 () Bool)

(assert (= bs!603141 (and d!1265915 d!1265865)))

(assert (=> bs!603141 (= lambda!131608 lambda!131587)))

(declare-fun bs!603142 () Bool)

(assert (= bs!603142 (and d!1265915 d!1265903)))

(assert (=> bs!603142 (= lambda!131608 lambda!131603)))

(declare-fun bs!603143 () Bool)

(assert (= bs!603143 (and d!1265915 d!1265895)))

(assert (=> bs!603143 (= lambda!131608 lambda!131601)))

(assert (=> d!1265915 (= (inv!63342 (_2!26057 (_1!26058 (h!53230 mapDefault!20045)))) (forall!8559 (exprs!3373 (_2!26057 (_1!26058 (h!53230 mapDefault!20045)))) lambda!131608))))

(declare-fun bs!603144 () Bool)

(assert (= bs!603144 d!1265915))

(declare-fun m!4887420 () Bool)

(assert (=> bs!603144 m!4887420))

(assert (=> b!4294625 d!1265915))

(declare-fun d!1265917 () Bool)

(assert (=> d!1265917 (= (isEmpty!28028 (getLanguageWitness!602 z!3765)) (not ((_ is Some!10149) (getLanguageWitness!602 z!3765))))))

(assert (=> d!1265827 d!1265917))

(declare-fun bs!603145 () Bool)

(declare-fun d!1265919 () Bool)

(assert (= bs!603145 (and d!1265919 d!1265867)))

(declare-fun lambda!131615 () Int)

(assert (=> bs!603145 (not (= lambda!131615 lambda!131590))))

(declare-fun bs!603146 () Bool)

(assert (= bs!603146 (and d!1265919 b!4294449)))

(assert (=> bs!603146 (= lambda!131615 lambda!131579)))

(declare-fun bs!603147 () Bool)

(assert (= bs!603147 (and d!1265919 d!1265913)))

(assert (=> bs!603147 (not (= lambda!131615 lambda!131605))))

(declare-fun bs!603148 () Bool)

(assert (= bs!603148 (and d!1265919 d!1265897)))

(assert (=> bs!603148 (not (= lambda!131615 lambda!131602))))

(declare-fun bs!603149 () Bool)

(assert (= bs!603149 (and d!1265919 b!4294448)))

(assert (=> bs!603149 (= lambda!131615 lambda!131578)))

(declare-fun bs!603150 () Bool)

(assert (= bs!603150 (and d!1265919 d!1265907)))

(assert (=> bs!603150 (not (= lambda!131615 lambda!131604))))

(declare-fun bs!603151 () Bool)

(assert (= bs!603151 (and d!1265919 d!1265881)))

(assert (=> bs!603151 (not (= lambda!131615 lambda!131599))))

(declare-fun bs!603152 () Bool)

(assert (= bs!603152 (and d!1265919 d!1265827)))

(assert (=> bs!603152 (not (= lambda!131615 lambda!131577))))

(declare-fun bs!603153 () Bool)

(assert (= bs!603153 (and d!1265919 b!4294786)))

(assert (=> bs!603153 (= lambda!131615 lambda!131607)))

(declare-fun bs!603154 () Bool)

(assert (= bs!603154 (and d!1265919 b!4294785)))

(assert (=> bs!603154 (= lambda!131615 lambda!131606)))

(declare-fun bs!603155 () Bool)

(assert (= bs!603155 (and d!1265919 d!1265833)))

(assert (=> bs!603155 (not (= lambda!131615 lambda!131580))))

(declare-fun bs!603156 () Bool)

(assert (= bs!603156 (and d!1265919 d!1265813)))

(assert (=> bs!603156 (not (= lambda!131615 lambda!131564))))

(declare-fun lt!1517815 () Option!10150)

(declare-fun isDefined!7476 (Option!10150) Bool)

(assert (=> d!1265919 (= (isDefined!7476 lt!1517815) (exists!1227 z!3765 lambda!131615))))

(declare-fun e!2668832 () Option!10150)

(assert (=> d!1265919 (= lt!1517815 e!2668832)))

(declare-fun c!730799 () Bool)

(assert (=> d!1265919 (= c!730799 (exists!1227 z!3765 lambda!131615))))

(assert (=> d!1265919 (= (getLanguageWitness!602 z!3765) lt!1517815)))

(declare-fun b!4294791 () Bool)

(declare-fun getLanguageWitness!603 (Context!5746) Option!10150)

(declare-fun getWitness!625 ((InoxSet Context!5746) Int) Context!5746)

(assert (=> b!4294791 (= e!2668832 (getLanguageWitness!603 (getWitness!625 z!3765 lambda!131615)))))

(declare-fun b!4294792 () Bool)

(assert (=> b!4294792 (= e!2668832 None!10149)))

(assert (= (and d!1265919 c!730799) b!4294791))

(assert (= (and d!1265919 (not c!730799)) b!4294792))

(declare-fun m!4887422 () Bool)

(assert (=> d!1265919 m!4887422))

(declare-fun m!4887424 () Bool)

(assert (=> d!1265919 m!4887424))

(assert (=> d!1265919 m!4887424))

(declare-fun m!4887426 () Bool)

(assert (=> b!4294791 m!4887426))

(assert (=> b!4294791 m!4887426))

(declare-fun m!4887428 () Bool)

(assert (=> b!4294791 m!4887428))

(assert (=> d!1265827 d!1265919))

(declare-fun d!1265921 () Bool)

(declare-fun lt!1517818 () Bool)

(assert (=> d!1265921 (= lt!1517818 (forall!8560 (toList!2129 z!3765) lambda!131577))))

(declare-fun choose!26154 ((InoxSet Context!5746) Int) Bool)

(assert (=> d!1265921 (= lt!1517818 (choose!26154 z!3765 lambda!131577))))

(assert (=> d!1265921 (= (forall!8558 z!3765 lambda!131577) lt!1517818)))

(declare-fun bs!603157 () Bool)

(assert (= bs!603157 d!1265921))

(assert (=> bs!603157 m!4887116))

(assert (=> bs!603157 m!4887116))

(declare-fun m!4887430 () Bool)

(assert (=> bs!603157 m!4887430))

(declare-fun m!4887432 () Bool)

(assert (=> bs!603157 m!4887432))

(assert (=> d!1265827 d!1265921))

(declare-fun d!1265923 () Bool)

(assert (=> d!1265923 (= (inv!63346 (xs!17730 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) (<= (size!35120 (innerList!14512 (xs!17730 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) 2147483647))))

(declare-fun bs!603158 () Bool)

(assert (= bs!603158 d!1265923))

(declare-fun m!4887434 () Bool)

(assert (=> bs!603158 m!4887434))

(assert (=> b!4294622 d!1265923))

(declare-fun bs!603159 () Bool)

(declare-fun d!1265925 () Bool)

(assert (= bs!603159 (and d!1265925 d!1265863)))

(declare-fun lambda!131616 () Int)

(assert (=> bs!603159 (= (= (apply!10848 totalInput!812 (+ 1 from!999)) (apply!10848 totalInput!812 from!999)) (= lambda!131616 lambda!131586))))

(assert (=> d!1265925 true))

(assert (=> d!1265925 (= (derivationStepZipper!552 (_1!26062 lt!1517725) (apply!10848 totalInput!812 (+ 1 from!999))) (flatMap!256 (_1!26062 lt!1517725) lambda!131616))))

(declare-fun bs!603160 () Bool)

(assert (= bs!603160 d!1265925))

(declare-fun m!4887436 () Bool)

(assert (=> bs!603160 m!4887436))

(assert (=> b!4294417 d!1265925))

(declare-fun d!1265927 () Bool)

(declare-fun lt!1517819 () C!26164)

(assert (=> d!1265927 (= lt!1517819 (apply!10849 (list!17363 totalInput!812) (+ 1 from!999)))))

(assert (=> d!1265927 (= lt!1517819 (apply!10850 (c!730753 totalInput!812) (+ 1 from!999)))))

(declare-fun e!2668833 () Bool)

(assert (=> d!1265927 e!2668833))

(declare-fun res!1760569 () Bool)

(assert (=> d!1265927 (=> (not res!1760569) (not e!2668833))))

(assert (=> d!1265927 (= res!1760569 (<= 0 (+ 1 from!999)))))

(assert (=> d!1265927 (= (apply!10848 totalInput!812 (+ 1 from!999)) lt!1517819)))

(declare-fun b!4294793 () Bool)

(assert (=> b!4294793 (= e!2668833 (< (+ 1 from!999) (size!35119 totalInput!812)))))

(assert (= (and d!1265927 res!1760569) b!4294793))

(assert (=> d!1265927 m!4887092))

(assert (=> d!1265927 m!4887092))

(declare-fun m!4887438 () Bool)

(assert (=> d!1265927 m!4887438))

(declare-fun m!4887440 () Bool)

(assert (=> d!1265927 m!4887440))

(assert (=> b!4294793 m!4886994))

(assert (=> b!4294417 d!1265927))

(declare-fun b!4294794 () Bool)

(declare-fun c!730802 () Bool)

(declare-fun lt!1517821 () (InoxSet Context!5746))

(assert (=> b!4294794 (= c!730802 (nullableZipper!775 lt!1517821))))

(declare-fun e!2668834 () Int)

(declare-fun e!2668838 () Int)

(assert (=> b!4294794 (= e!2668834 e!2668838)))

(declare-fun b!4294795 () Bool)

(declare-fun e!2668835 () Int)

(assert (=> b!4294795 (= e!2668835 0)))

(declare-fun b!4294796 () Bool)

(assert (=> b!4294796 (= e!2668838 1)))

(declare-fun d!1265929 () Bool)

(declare-fun lt!1517822 () Int)

(assert (=> d!1265929 (and (>= lt!1517822 0) (<= lt!1517822 (- totalInputSize!257 (+ 1 from!999 1))))))

(assert (=> d!1265929 (= lt!1517822 e!2668835)))

(declare-fun c!730801 () Bool)

(declare-fun e!2668837 () Bool)

(assert (=> d!1265929 (= c!730801 e!2668837)))

(declare-fun res!1760571 () Bool)

(assert (=> d!1265929 (=> res!1760571 e!2668837)))

(assert (=> d!1265929 (= res!1760571 (= (+ 1 from!999 1) totalInputSize!257))))

(declare-fun e!2668836 () Bool)

(assert (=> d!1265929 e!2668836))

(declare-fun res!1760570 () Bool)

(assert (=> d!1265929 (=> (not res!1760570) (not e!2668836))))

(assert (=> d!1265929 (= res!1760570 (>= (+ 1 from!999 1) 0))))

(assert (=> d!1265929 (= (findLongestMatchInnerZipperFastV2!42 lt!1517740 (+ 1 from!999 1) totalInput!812 totalInputSize!257) lt!1517822)))

(declare-fun b!4294797 () Bool)

(assert (=> b!4294797 (= e!2668838 0)))

(declare-fun b!4294798 () Bool)

(assert (=> b!4294798 (= e!2668836 (<= (+ 1 from!999 1) (size!35119 totalInput!812)))))

(declare-fun b!4294799 () Bool)

(assert (=> b!4294799 (= e!2668835 e!2668834)))

(assert (=> b!4294799 (= lt!1517821 (derivationStepZipper!552 lt!1517740 (apply!10848 totalInput!812 (+ 1 from!999 1))))))

(declare-fun lt!1517820 () Int)

(assert (=> b!4294799 (= lt!1517820 (findLongestMatchInnerZipperFastV2!42 lt!1517821 (+ 1 from!999 1 1) totalInput!812 totalInputSize!257))))

(declare-fun c!730800 () Bool)

(assert (=> b!4294799 (= c!730800 (> lt!1517820 0))))

(declare-fun b!4294800 () Bool)

(assert (=> b!4294800 (= e!2668834 (+ 1 lt!1517820))))

(declare-fun b!4294801 () Bool)

(assert (=> b!4294801 (= e!2668837 (lostCauseZipper!655 lt!1517740))))

(assert (= (and d!1265929 res!1760570) b!4294798))

(assert (= (and d!1265929 (not res!1760571)) b!4294801))

(assert (= (and d!1265929 c!730801) b!4294795))

(assert (= (and d!1265929 (not c!730801)) b!4294799))

(assert (= (and b!4294799 c!730800) b!4294800))

(assert (= (and b!4294799 (not c!730800)) b!4294794))

(assert (= (and b!4294794 c!730802) b!4294796))

(assert (= (and b!4294794 (not c!730802)) b!4294797))

(declare-fun m!4887442 () Bool)

(assert (=> b!4294794 m!4887442))

(assert (=> b!4294798 m!4886994))

(declare-fun m!4887444 () Bool)

(assert (=> b!4294799 m!4887444))

(assert (=> b!4294799 m!4887444))

(declare-fun m!4887446 () Bool)

(assert (=> b!4294799 m!4887446))

(declare-fun m!4887448 () Bool)

(assert (=> b!4294799 m!4887448))

(declare-fun m!4887450 () Bool)

(assert (=> b!4294801 m!4887450))

(assert (=> b!4294417 d!1265929))

(declare-fun d!1265931 () Bool)

(declare-fun lt!1517825 () C!26164)

(declare-fun contains!9795 (List!47937 C!26164) Bool)

(assert (=> d!1265931 (contains!9795 (list!17363 totalInput!812) lt!1517825)))

(declare-fun e!2668843 () C!26164)

(assert (=> d!1265931 (= lt!1517825 e!2668843)))

(declare-fun c!730805 () Bool)

(assert (=> d!1265931 (= c!730805 (= from!999 0))))

(declare-fun e!2668844 () Bool)

(assert (=> d!1265931 e!2668844))

(declare-fun res!1760574 () Bool)

(assert (=> d!1265931 (=> (not res!1760574) (not e!2668844))))

(assert (=> d!1265931 (= res!1760574 (<= 0 from!999))))

(assert (=> d!1265931 (= (apply!10849 (list!17363 totalInput!812) from!999) lt!1517825)))

(declare-fun b!4294808 () Bool)

(assert (=> b!4294808 (= e!2668844 (< from!999 (size!35120 (list!17363 totalInput!812))))))

(declare-fun b!4294809 () Bool)

(declare-fun head!9020 (List!47937) C!26164)

(assert (=> b!4294809 (= e!2668843 (head!9020 (list!17363 totalInput!812)))))

(declare-fun b!4294810 () Bool)

(declare-fun tail!6891 (List!47937) List!47937)

(assert (=> b!4294810 (= e!2668843 (apply!10849 (tail!6891 (list!17363 totalInput!812)) (- from!999 1)))))

(assert (= (and d!1265931 res!1760574) b!4294808))

(assert (= (and d!1265931 c!730805) b!4294809))

(assert (= (and d!1265931 (not c!730805)) b!4294810))

(assert (=> d!1265931 m!4887092))

(declare-fun m!4887452 () Bool)

(assert (=> d!1265931 m!4887452))

(assert (=> b!4294808 m!4887092))

(assert (=> b!4294808 m!4887100))

(assert (=> b!4294809 m!4887092))

(declare-fun m!4887454 () Bool)

(assert (=> b!4294809 m!4887454))

(assert (=> b!4294810 m!4887092))

(declare-fun m!4887456 () Bool)

(assert (=> b!4294810 m!4887456))

(assert (=> b!4294810 m!4887456))

(declare-fun m!4887458 () Bool)

(assert (=> b!4294810 m!4887458))

(assert (=> d!1265803 d!1265931))

(declare-fun d!1265933 () Bool)

(declare-fun list!17364 (Conc!14424) List!47937)

(assert (=> d!1265933 (= (list!17363 totalInput!812) (list!17364 (c!730753 totalInput!812)))))

(declare-fun bs!603161 () Bool)

(assert (= bs!603161 d!1265933))

(declare-fun m!4887460 () Bool)

(assert (=> bs!603161 m!4887460))

(assert (=> d!1265803 d!1265933))

(declare-fun b!4294825 () Bool)

(declare-fun e!2668854 () C!26164)

(declare-fun e!2668853 () C!26164)

(assert (=> b!4294825 (= e!2668854 e!2668853)))

(declare-fun lt!1517831 () Bool)

(declare-fun appendIndex!371 (List!47937 List!47937 Int) Bool)

(assert (=> b!4294825 (= lt!1517831 (appendIndex!371 (list!17364 (left!35456 (c!730753 totalInput!812))) (list!17364 (right!35786 (c!730753 totalInput!812))) from!999))))

(declare-fun c!730813 () Bool)

(assert (=> b!4294825 (= c!730813 (< from!999 (size!35121 (left!35456 (c!730753 totalInput!812)))))))

(declare-fun b!4294827 () Bool)

(declare-fun call!294529 () C!26164)

(assert (=> b!4294827 (= e!2668853 call!294529)))

(declare-fun b!4294828 () Bool)

(declare-fun e!2668856 () Int)

(assert (=> b!4294828 (= e!2668856 from!999)))

(declare-fun b!4294829 () Bool)

(declare-fun apply!10851 (IArray!28909 Int) C!26164)

(assert (=> b!4294829 (= e!2668854 (apply!10851 (xs!17730 (c!730753 totalInput!812)) from!999))))

(declare-fun b!4294830 () Bool)

(assert (=> b!4294830 (= e!2668853 call!294529)))

(declare-fun b!4294826 () Bool)

(declare-fun e!2668855 () Bool)

(assert (=> b!4294826 (= e!2668855 (< from!999 (size!35121 (c!730753 totalInput!812))))))

(declare-fun d!1265935 () Bool)

(declare-fun lt!1517830 () C!26164)

(assert (=> d!1265935 (= lt!1517830 (apply!10849 (list!17364 (c!730753 totalInput!812)) from!999))))

(assert (=> d!1265935 (= lt!1517830 e!2668854)))

(declare-fun c!730814 () Bool)

(assert (=> d!1265935 (= c!730814 ((_ is Leaf!22317) (c!730753 totalInput!812)))))

(assert (=> d!1265935 e!2668855))

(declare-fun res!1760577 () Bool)

(assert (=> d!1265935 (=> (not res!1760577) (not e!2668855))))

(assert (=> d!1265935 (= res!1760577 (<= 0 from!999))))

(assert (=> d!1265935 (= (apply!10850 (c!730753 totalInput!812) from!999) lt!1517830)))

(declare-fun b!4294831 () Bool)

(assert (=> b!4294831 (= e!2668856 (- from!999 (size!35121 (left!35456 (c!730753 totalInput!812)))))))

(declare-fun bm!294524 () Bool)

(declare-fun c!730812 () Bool)

(assert (=> bm!294524 (= c!730812 c!730813)))

(assert (=> bm!294524 (= call!294529 (apply!10850 (ite c!730813 (left!35456 (c!730753 totalInput!812)) (right!35786 (c!730753 totalInput!812))) e!2668856))))

(assert (= (and d!1265935 res!1760577) b!4294826))

(assert (= (and d!1265935 c!730814) b!4294829))

(assert (= (and d!1265935 (not c!730814)) b!4294825))

(assert (= (and b!4294825 c!730813) b!4294830))

(assert (= (and b!4294825 (not c!730813)) b!4294827))

(assert (= (or b!4294830 b!4294827) bm!294524))

(assert (= (and bm!294524 c!730812) b!4294828))

(assert (= (and bm!294524 (not c!730812)) b!4294831))

(assert (=> b!4294826 m!4887102))

(declare-fun m!4887462 () Bool)

(assert (=> bm!294524 m!4887462))

(declare-fun m!4887464 () Bool)

(assert (=> b!4294829 m!4887464))

(declare-fun m!4887466 () Bool)

(assert (=> b!4294825 m!4887466))

(declare-fun m!4887468 () Bool)

(assert (=> b!4294825 m!4887468))

(assert (=> b!4294825 m!4887466))

(assert (=> b!4294825 m!4887468))

(declare-fun m!4887470 () Bool)

(assert (=> b!4294825 m!4887470))

(declare-fun m!4887472 () Bool)

(assert (=> b!4294825 m!4887472))

(assert (=> d!1265935 m!4887460))

(assert (=> d!1265935 m!4887460))

(declare-fun m!4887474 () Bool)

(assert (=> d!1265935 m!4887474))

(assert (=> b!4294831 m!4887472))

(assert (=> d!1265803 d!1265935))

(declare-fun d!1265937 () Bool)

(declare-fun lt!1517832 () Bool)

(assert (=> d!1265937 (= lt!1517832 (exists!1228 (toList!2129 (_1!26062 lt!1517725)) lambda!131580))))

(assert (=> d!1265937 (= lt!1517832 (choose!26153 (_1!26062 lt!1517725) lambda!131580))))

(assert (=> d!1265937 (= (exists!1227 (_1!26062 lt!1517725) lambda!131580) lt!1517832)))

(declare-fun bs!603162 () Bool)

(assert (= bs!603162 d!1265937))

(declare-fun m!4887476 () Bool)

(assert (=> bs!603162 m!4887476))

(assert (=> bs!603162 m!4887476))

(declare-fun m!4887478 () Bool)

(assert (=> bs!603162 m!4887478))

(declare-fun m!4887480 () Bool)

(assert (=> bs!603162 m!4887480))

(assert (=> d!1265833 d!1265937))

(declare-fun bs!603163 () Bool)

(declare-fun d!1265939 () Bool)

(assert (= bs!603163 (and d!1265939 d!1265845)))

(declare-fun lambda!131617 () Int)

(assert (=> bs!603163 (= lambda!131617 lambda!131583)))

(declare-fun bs!603164 () Bool)

(assert (= bs!603164 (and d!1265939 d!1265877)))

(assert (=> bs!603164 (= lambda!131617 lambda!131598)))

(declare-fun bs!603165 () Bool)

(assert (= bs!603165 (and d!1265939 d!1265865)))

(assert (=> bs!603165 (= lambda!131617 lambda!131587)))

(declare-fun bs!603166 () Bool)

(assert (= bs!603166 (and d!1265939 d!1265915)))

(assert (=> bs!603166 (= lambda!131617 lambda!131608)))

(declare-fun bs!603167 () Bool)

(assert (= bs!603167 (and d!1265939 d!1265903)))

(assert (=> bs!603167 (= lambda!131617 lambda!131603)))

(declare-fun bs!603168 () Bool)

(assert (= bs!603168 (and d!1265939 d!1265895)))

(assert (=> bs!603168 (= lambda!131617 lambda!131601)))

(assert (=> d!1265939 (= (inv!63342 setElem!26625) (forall!8559 (exprs!3373 setElem!26625) lambda!131617))))

(declare-fun bs!603169 () Bool)

(assert (= bs!603169 d!1265939))

(declare-fun m!4887482 () Bool)

(assert (=> bs!603169 m!4887482))

(assert (=> setNonEmpty!26625 d!1265939))

(declare-fun bs!603170 () Bool)

(declare-fun d!1265941 () Bool)

(assert (= bs!603170 (and d!1265941 d!1265867)))

(declare-fun lambda!131618 () Int)

(assert (=> bs!603170 (not (= lambda!131618 lambda!131590))))

(declare-fun bs!603171 () Bool)

(assert (= bs!603171 (and d!1265941 b!4294449)))

(assert (=> bs!603171 (not (= lambda!131618 lambda!131579))))

(declare-fun bs!603172 () Bool)

(assert (= bs!603172 (and d!1265941 d!1265913)))

(assert (=> bs!603172 (= lambda!131618 lambda!131605)))

(declare-fun bs!603173 () Bool)

(assert (= bs!603173 (and d!1265941 d!1265897)))

(assert (=> bs!603173 (not (= lambda!131618 lambda!131602))))

(declare-fun bs!603174 () Bool)

(assert (= bs!603174 (and d!1265941 b!4294448)))

(assert (=> bs!603174 (not (= lambda!131618 lambda!131578))))

(declare-fun bs!603175 () Bool)

(assert (= bs!603175 (and d!1265941 d!1265907)))

(assert (=> bs!603175 (not (= lambda!131618 lambda!131604))))

(declare-fun bs!603176 () Bool)

(assert (= bs!603176 (and d!1265941 d!1265827)))

(assert (=> bs!603176 (= lambda!131618 lambda!131577)))

(declare-fun bs!603177 () Bool)

(assert (= bs!603177 (and d!1265941 b!4294786)))

(assert (=> bs!603177 (not (= lambda!131618 lambda!131607))))

(declare-fun bs!603178 () Bool)

(assert (= bs!603178 (and d!1265941 b!4294785)))

(assert (=> bs!603178 (not (= lambda!131618 lambda!131606))))

(declare-fun bs!603179 () Bool)

(assert (= bs!603179 (and d!1265941 d!1265833)))

(assert (=> bs!603179 (not (= lambda!131618 lambda!131580))))

(declare-fun bs!603180 () Bool)

(assert (= bs!603180 (and d!1265941 d!1265813)))

(assert (=> bs!603180 (not (= lambda!131618 lambda!131564))))

(declare-fun bs!603181 () Bool)

(assert (= bs!603181 (and d!1265941 d!1265881)))

(assert (=> bs!603181 (not (= lambda!131618 lambda!131599))))

(declare-fun bs!603182 () Bool)

(assert (= bs!603182 (and d!1265941 d!1265919)))

(assert (=> bs!603182 (not (= lambda!131618 lambda!131615))))

(declare-fun bs!603183 () Bool)

(declare-fun b!4294832 () Bool)

(assert (= bs!603183 (and b!4294832 d!1265867)))

(declare-fun lambda!131619 () Int)

(assert (=> bs!603183 (not (= lambda!131619 lambda!131590))))

(declare-fun bs!603184 () Bool)

(assert (= bs!603184 (and b!4294832 b!4294449)))

(assert (=> bs!603184 (= lambda!131619 lambda!131579)))

(declare-fun bs!603185 () Bool)

(assert (= bs!603185 (and b!4294832 d!1265913)))

(assert (=> bs!603185 (not (= lambda!131619 lambda!131605))))

(declare-fun bs!603186 () Bool)

(assert (= bs!603186 (and b!4294832 d!1265897)))

(assert (=> bs!603186 (not (= lambda!131619 lambda!131602))))

(declare-fun bs!603187 () Bool)

(assert (= bs!603187 (and b!4294832 b!4294448)))

(assert (=> bs!603187 (= lambda!131619 lambda!131578)))

(declare-fun bs!603188 () Bool)

(assert (= bs!603188 (and b!4294832 d!1265907)))

(assert (=> bs!603188 (not (= lambda!131619 lambda!131604))))

(declare-fun bs!603189 () Bool)

(assert (= bs!603189 (and b!4294832 d!1265941)))

(assert (=> bs!603189 (not (= lambda!131619 lambda!131618))))

(declare-fun bs!603190 () Bool)

(assert (= bs!603190 (and b!4294832 d!1265827)))

(assert (=> bs!603190 (not (= lambda!131619 lambda!131577))))

(declare-fun bs!603191 () Bool)

(assert (= bs!603191 (and b!4294832 b!4294786)))

(assert (=> bs!603191 (= lambda!131619 lambda!131607)))

(declare-fun bs!603192 () Bool)

(assert (= bs!603192 (and b!4294832 b!4294785)))

(assert (=> bs!603192 (= lambda!131619 lambda!131606)))

(declare-fun bs!603193 () Bool)

(assert (= bs!603193 (and b!4294832 d!1265833)))

(assert (=> bs!603193 (not (= lambda!131619 lambda!131580))))

(declare-fun bs!603194 () Bool)

(assert (= bs!603194 (and b!4294832 d!1265813)))

(assert (=> bs!603194 (not (= lambda!131619 lambda!131564))))

(declare-fun bs!603195 () Bool)

(assert (= bs!603195 (and b!4294832 d!1265881)))

(assert (=> bs!603195 (not (= lambda!131619 lambda!131599))))

(declare-fun bs!603196 () Bool)

(assert (= bs!603196 (and b!4294832 d!1265919)))

(assert (=> bs!603196 (= lambda!131619 lambda!131615)))

(declare-fun bs!603197 () Bool)

(declare-fun b!4294833 () Bool)

(assert (= bs!603197 (and b!4294833 d!1265867)))

(declare-fun lambda!131620 () Int)

(assert (=> bs!603197 (not (= lambda!131620 lambda!131590))))

(declare-fun bs!603198 () Bool)

(assert (= bs!603198 (and b!4294833 b!4294449)))

(assert (=> bs!603198 (= lambda!131620 lambda!131579)))

(declare-fun bs!603199 () Bool)

(assert (= bs!603199 (and b!4294833 d!1265913)))

(assert (=> bs!603199 (not (= lambda!131620 lambda!131605))))

(declare-fun bs!603200 () Bool)

(assert (= bs!603200 (and b!4294833 d!1265897)))

(assert (=> bs!603200 (not (= lambda!131620 lambda!131602))))

(declare-fun bs!603201 () Bool)

(assert (= bs!603201 (and b!4294833 b!4294448)))

(assert (=> bs!603201 (= lambda!131620 lambda!131578)))

(declare-fun bs!603202 () Bool)

(assert (= bs!603202 (and b!4294833 d!1265907)))

(assert (=> bs!603202 (not (= lambda!131620 lambda!131604))))

(declare-fun bs!603203 () Bool)

(assert (= bs!603203 (and b!4294833 d!1265941)))

(assert (=> bs!603203 (not (= lambda!131620 lambda!131618))))

(declare-fun bs!603204 () Bool)

(assert (= bs!603204 (and b!4294833 b!4294832)))

(assert (=> bs!603204 (= lambda!131620 lambda!131619)))

(declare-fun bs!603205 () Bool)

(assert (= bs!603205 (and b!4294833 d!1265827)))

(assert (=> bs!603205 (not (= lambda!131620 lambda!131577))))

(declare-fun bs!603206 () Bool)

(assert (= bs!603206 (and b!4294833 b!4294786)))

(assert (=> bs!603206 (= lambda!131620 lambda!131607)))

(declare-fun bs!603207 () Bool)

(assert (= bs!603207 (and b!4294833 b!4294785)))

(assert (=> bs!603207 (= lambda!131620 lambda!131606)))

(declare-fun bs!603208 () Bool)

(assert (= bs!603208 (and b!4294833 d!1265833)))

(assert (=> bs!603208 (not (= lambda!131620 lambda!131580))))

(declare-fun bs!603209 () Bool)

(assert (= bs!603209 (and b!4294833 d!1265813)))

(assert (=> bs!603209 (not (= lambda!131620 lambda!131564))))

(declare-fun bs!603210 () Bool)

(assert (= bs!603210 (and b!4294833 d!1265881)))

(assert (=> bs!603210 (not (= lambda!131620 lambda!131599))))

(declare-fun bs!603211 () Bool)

(assert (= bs!603211 (and b!4294833 d!1265919)))

(assert (=> bs!603211 (= lambda!131620 lambda!131615)))

(declare-fun bm!294525 () Bool)

(declare-fun call!294531 () List!47938)

(assert (=> bm!294525 (= call!294531 (toList!2129 (_1!26062 lt!1517725)))))

(declare-fun e!2668857 () Unit!66424)

(declare-fun Unit!66431 () Unit!66424)

(assert (=> b!4294832 (= e!2668857 Unit!66431)))

(declare-fun lt!1517835 () List!47938)

(assert (=> b!4294832 (= lt!1517835 call!294531)))

(declare-fun lt!1517840 () Unit!66424)

(assert (=> b!4294832 (= lt!1517840 (lemmaNotForallThenExists!174 lt!1517835 lambda!131618))))

(declare-fun call!294530 () Bool)

(assert (=> b!4294832 call!294530))

(declare-fun lt!1517836 () Unit!66424)

(assert (=> b!4294832 (= lt!1517836 lt!1517840)))

(declare-fun lt!1517834 () Bool)

(assert (=> d!1265941 (= lt!1517834 (isEmpty!28028 (getLanguageWitness!602 (_1!26062 lt!1517725))))))

(assert (=> d!1265941 (= lt!1517834 (forall!8558 (_1!26062 lt!1517725) lambda!131618))))

(declare-fun lt!1517838 () Unit!66424)

(assert (=> d!1265941 (= lt!1517838 e!2668857)))

(declare-fun c!730815 () Bool)

(assert (=> d!1265941 (= c!730815 (not (forall!8558 (_1!26062 lt!1517725) lambda!131618)))))

(assert (=> d!1265941 (= (lostCauseZipper!655 (_1!26062 lt!1517725)) lt!1517834)))

(declare-fun Unit!66432 () Unit!66424)

(assert (=> b!4294833 (= e!2668857 Unit!66432)))

(declare-fun lt!1517837 () List!47938)

(assert (=> b!4294833 (= lt!1517837 call!294531)))

(declare-fun lt!1517839 () Unit!66424)

(assert (=> b!4294833 (= lt!1517839 (lemmaForallThenNotExists!157 lt!1517837 lambda!131618))))

(assert (=> b!4294833 (not call!294530)))

(declare-fun lt!1517833 () Unit!66424)

(assert (=> b!4294833 (= lt!1517833 lt!1517839)))

(declare-fun bm!294526 () Bool)

(assert (=> bm!294526 (= call!294530 (exists!1228 (ite c!730815 lt!1517835 lt!1517837) (ite c!730815 lambda!131619 lambda!131620)))))

(assert (= (and d!1265941 c!730815) b!4294832))

(assert (= (and d!1265941 (not c!730815)) b!4294833))

(assert (= (or b!4294832 b!4294833) bm!294525))

(assert (= (or b!4294832 b!4294833) bm!294526))

(declare-fun m!4887484 () Bool)

(assert (=> b!4294833 m!4887484))

(assert (=> bm!294525 m!4887476))

(declare-fun m!4887486 () Bool)

(assert (=> b!4294832 m!4887486))

(declare-fun m!4887488 () Bool)

(assert (=> d!1265941 m!4887488))

(assert (=> d!1265941 m!4887488))

(declare-fun m!4887490 () Bool)

(assert (=> d!1265941 m!4887490))

(declare-fun m!4887492 () Bool)

(assert (=> d!1265941 m!4887492))

(assert (=> d!1265941 m!4887492))

(declare-fun m!4887494 () Bool)

(assert (=> bm!294526 m!4887494))

(assert (=> b!4294419 d!1265941))

(assert (=> b!4294457 d!1265807))

(declare-fun d!1265943 () Bool)

(declare-fun c!730816 () Bool)

(assert (=> d!1265943 (= c!730816 ((_ is Node!14424) (left!35456 (c!730753 totalInput!812))))))

(declare-fun e!2668858 () Bool)

(assert (=> d!1265943 (= (inv!63343 (left!35456 (c!730753 totalInput!812))) e!2668858)))

(declare-fun b!4294834 () Bool)

(assert (=> b!4294834 (= e!2668858 (inv!63344 (left!35456 (c!730753 totalInput!812))))))

(declare-fun b!4294835 () Bool)

(declare-fun e!2668859 () Bool)

(assert (=> b!4294835 (= e!2668858 e!2668859)))

(declare-fun res!1760578 () Bool)

(assert (=> b!4294835 (= res!1760578 (not ((_ is Leaf!22317) (left!35456 (c!730753 totalInput!812)))))))

(assert (=> b!4294835 (=> res!1760578 e!2668859)))

(declare-fun b!4294836 () Bool)

(assert (=> b!4294836 (= e!2668859 (inv!63345 (left!35456 (c!730753 totalInput!812))))))

(assert (= (and d!1265943 c!730816) b!4294834))

(assert (= (and d!1265943 (not c!730816)) b!4294835))

(assert (= (and b!4294835 (not res!1760578)) b!4294836))

(declare-fun m!4887496 () Bool)

(assert (=> b!4294834 m!4887496))

(declare-fun m!4887498 () Bool)

(assert (=> b!4294836 m!4887498))

(assert (=> b!4294618 d!1265943))

(declare-fun d!1265945 () Bool)

(declare-fun c!730817 () Bool)

(assert (=> d!1265945 (= c!730817 ((_ is Node!14424) (right!35786 (c!730753 totalInput!812))))))

(declare-fun e!2668860 () Bool)

(assert (=> d!1265945 (= (inv!63343 (right!35786 (c!730753 totalInput!812))) e!2668860)))

(declare-fun b!4294837 () Bool)

(assert (=> b!4294837 (= e!2668860 (inv!63344 (right!35786 (c!730753 totalInput!812))))))

(declare-fun b!4294838 () Bool)

(declare-fun e!2668861 () Bool)

(assert (=> b!4294838 (= e!2668860 e!2668861)))

(declare-fun res!1760579 () Bool)

(assert (=> b!4294838 (= res!1760579 (not ((_ is Leaf!22317) (right!35786 (c!730753 totalInput!812)))))))

(assert (=> b!4294838 (=> res!1760579 e!2668861)))

(declare-fun b!4294839 () Bool)

(assert (=> b!4294839 (= e!2668861 (inv!63345 (right!35786 (c!730753 totalInput!812))))))

(assert (= (and d!1265945 c!730817) b!4294837))

(assert (= (and d!1265945 (not c!730817)) b!4294838))

(assert (= (and b!4294838 (not res!1760579)) b!4294839))

(declare-fun m!4887500 () Bool)

(assert (=> b!4294837 m!4887500))

(declare-fun m!4887502 () Bool)

(assert (=> b!4294839 m!4887502))

(assert (=> b!4294618 d!1265945))

(declare-fun bs!603212 () Bool)

(declare-fun d!1265947 () Bool)

(assert (= bs!603212 (and d!1265947 d!1265845)))

(declare-fun lambda!131621 () Int)

(assert (=> bs!603212 (= lambda!131621 lambda!131583)))

(declare-fun bs!603213 () Bool)

(assert (= bs!603213 (and d!1265947 d!1265877)))

(assert (=> bs!603213 (= lambda!131621 lambda!131598)))

(declare-fun bs!603214 () Bool)

(assert (= bs!603214 (and d!1265947 d!1265865)))

(assert (=> bs!603214 (= lambda!131621 lambda!131587)))

(declare-fun bs!603215 () Bool)

(assert (= bs!603215 (and d!1265947 d!1265915)))

(assert (=> bs!603215 (= lambda!131621 lambda!131608)))

(declare-fun bs!603216 () Bool)

(assert (= bs!603216 (and d!1265947 d!1265903)))

(assert (=> bs!603216 (= lambda!131621 lambda!131603)))

(declare-fun bs!603217 () Bool)

(assert (= bs!603217 (and d!1265947 d!1265895)))

(assert (=> bs!603217 (= lambda!131621 lambda!131601)))

(declare-fun bs!603218 () Bool)

(assert (= bs!603218 (and d!1265947 d!1265939)))

(assert (=> bs!603218 (= lambda!131621 lambda!131617)))

(assert (=> d!1265947 (= (inv!63342 (_1!26055 (_1!26056 (h!53232 (minValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))))) (forall!8559 (exprs!3373 (_1!26055 (_1!26056 (h!53232 (minValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))))) lambda!131621))))

(declare-fun bs!603219 () Bool)

(assert (= bs!603219 d!1265947))

(declare-fun m!4887504 () Bool)

(assert (=> bs!603219 m!4887504))

(assert (=> b!4294566 d!1265947))

(assert (=> d!1265801 d!1265863))

(declare-fun b!4294888 () Bool)

(declare-fun b_free!127731 () Bool)

(declare-fun b_next!128435 () Bool)

(assert (=> b!4294888 (= b_free!127731 (not b_next!128435))))

(declare-fun tp!1318551 () Bool)

(declare-fun b_and!338947 () Bool)

(assert (=> b!4294888 (= tp!1318551 b_and!338947)))

(declare-fun b!4294884 () Bool)

(declare-fun b_free!127733 () Bool)

(declare-fun b_next!128437 () Bool)

(assert (=> b!4294884 (= b_free!127733 (not b_next!128437))))

(declare-fun tp!1318564 () Bool)

(declare-fun b_and!338949 () Bool)

(assert (=> b!4294884 (= tp!1318564 b_and!338949)))

(declare-fun b!4294874 () Bool)

(declare-fun b_free!127735 () Bool)

(declare-fun b_next!128439 () Bool)

(assert (=> b!4294874 (= b_free!127735 (not b_next!128439))))

(declare-fun tp!1318563 () Bool)

(declare-fun b_and!338951 () Bool)

(assert (=> b!4294874 (= tp!1318563 b_and!338951)))

(declare-fun b!4294882 () Bool)

(declare-fun b_free!127737 () Bool)

(declare-fun b_next!128441 () Bool)

(assert (=> b!4294882 (= b_free!127737 (not b_next!128441))))

(declare-fun tp!1318560 () Bool)

(declare-fun b_and!338953 () Bool)

(assert (=> b!4294882 (= tp!1318560 b_and!338953)))

(declare-fun e!2668898 () Bool)

(declare-fun tp!1318562 () Bool)

(declare-fun res!1760586 () tuple3!5490)

(declare-fun e!2668908 () Bool)

(declare-fun tp!1318565 () Bool)

(assert (=> b!4294874 (= e!2668898 (and tp!1318563 tp!1318565 tp!1318562 (array_inv!5097 (_keys!4763 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 (_3!3277 res!1760586)))))))) (array_inv!5099 (_values!4744 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 (_3!3277 res!1760586)))))))) e!2668908))))

(declare-fun b!4294875 () Bool)

(declare-fun e!2668899 () Bool)

(declare-fun e!2668901 () Bool)

(assert (=> b!4294875 (= e!2668899 e!2668901)))

(declare-fun b!4294876 () Bool)

(declare-fun e!2668905 () Bool)

(declare-fun e!2668912 () Bool)

(assert (=> b!4294876 (= e!2668905 e!2668912)))

(declare-fun b!4294877 () Bool)

(declare-fun e!2668907 () Bool)

(declare-fun e!2668903 () Bool)

(declare-fun lt!1517845 () MutLongMap!4465)

(assert (=> b!4294877 (= e!2668907 (and e!2668903 ((_ is LongMap!4465) lt!1517845)))))

(assert (=> b!4294877 (= lt!1517845 (v!41760 (underlying!9160 (cache!4509 (_2!26062 res!1760586)))))))

(declare-fun mapNonEmpty!20072 () Bool)

(declare-fun mapRes!20072 () Bool)

(declare-fun tp!1318559 () Bool)

(declare-fun tp!1318552 () Bool)

(assert (=> mapNonEmpty!20072 (= mapRes!20072 (and tp!1318559 tp!1318552))))

(declare-fun mapRest!20072 () (Array (_ BitVec 32) List!47934))

(declare-fun mapValue!20073 () List!47934)

(declare-fun mapKey!20072 () (_ BitVec 32))

(assert (=> mapNonEmpty!20072 (= (arr!7114 (_values!4744 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 (_3!3277 res!1760586)))))))) (store mapRest!20072 mapKey!20072 mapValue!20073))))

(declare-fun setNonEmpty!26646 () Bool)

(declare-fun tp!1318561 () Bool)

(declare-fun e!2668909 () Bool)

(declare-fun setRes!26646 () Bool)

(declare-fun setElem!26646 () Context!5746)

(assert (=> setNonEmpty!26646 (= setRes!26646 (and tp!1318561 (inv!63342 setElem!26646) e!2668909))))

(declare-fun setRest!26646 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26646 (= (_1!26062 res!1760586) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26646 true) setRest!26646))))

(declare-fun b!4294878 () Bool)

(declare-fun tp!1318566 () Bool)

(assert (=> b!4294878 (= e!2668908 (and tp!1318566 mapRes!20072))))

(declare-fun condMapEmpty!20072 () Bool)

(declare-fun mapDefault!20072 () List!47934)

(assert (=> b!4294878 (= condMapEmpty!20072 (= (arr!7114 (_values!4744 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 (_3!3277 res!1760586)))))))) ((as const (Array (_ BitVec 32) List!47934)) mapDefault!20072)))))

(declare-fun mapIsEmpty!20072 () Bool)

(assert (=> mapIsEmpty!20072 mapRes!20072))

(declare-fun b!4294879 () Bool)

(declare-fun e!2668911 () Bool)

(assert (=> b!4294879 (= e!2668911 (valid!3445 (_3!3277 res!1760586)))))

(declare-fun setIsEmpty!26646 () Bool)

(assert (=> setIsEmpty!26646 setRes!26646))

(declare-fun b!4294880 () Bool)

(declare-fun tp!1318556 () Bool)

(assert (=> b!4294880 (= e!2668909 tp!1318556)))

(declare-fun b!4294881 () Bool)

(declare-fun e!2668914 () Bool)

(declare-fun e!2668902 () Bool)

(assert (=> b!4294881 (= e!2668914 e!2668902)))

(assert (=> b!4294882 (= e!2668912 (and e!2668907 tp!1318560))))

(declare-fun b!4294883 () Bool)

(declare-fun e!2668906 () Bool)

(declare-fun lt!1517846 () MutLongMap!4463)

(assert (=> b!4294883 (= e!2668906 (and e!2668914 ((_ is LongMap!4463) lt!1517846)))))

(assert (=> b!4294883 (= lt!1517846 (v!41756 (underlying!9156 (cache!4511 (_3!3277 res!1760586)))))))

(declare-fun e!2668913 () Bool)

(assert (=> b!4294884 (= e!2668913 (and e!2668906 tp!1318564))))

(declare-fun b!4294885 () Bool)

(declare-fun res!1760588 () Bool)

(assert (=> b!4294885 (=> (not res!1760588) (not e!2668911))))

(assert (=> b!4294885 (= res!1760588 (valid!3444 (_2!26062 res!1760586)))))

(declare-fun b!4294886 () Bool)

(declare-fun e!2668900 () Bool)

(declare-fun tp!1318553 () Bool)

(declare-fun mapRes!20073 () Bool)

(assert (=> b!4294886 (= e!2668900 (and tp!1318553 mapRes!20073))))

(declare-fun condMapEmpty!20073 () Bool)

(declare-fun mapDefault!20073 () List!47936)

(assert (=> b!4294886 (= condMapEmpty!20073 (= (arr!7116 (_values!4746 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 (_2!26062 res!1760586)))))))) ((as const (Array (_ BitVec 32) List!47936)) mapDefault!20073)))))

(declare-fun mapNonEmpty!20073 () Bool)

(declare-fun tp!1318555 () Bool)

(declare-fun tp!1318554 () Bool)

(assert (=> mapNonEmpty!20073 (= mapRes!20073 (and tp!1318555 tp!1318554))))

(declare-fun mapValue!20072 () List!47936)

(declare-fun mapRest!20073 () (Array (_ BitVec 32) List!47936))

(declare-fun mapKey!20073 () (_ BitVec 32))

(assert (=> mapNonEmpty!20073 (= (arr!7116 (_values!4746 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 (_2!26062 res!1760586)))))))) (store mapRest!20073 mapKey!20073 mapValue!20072))))

(declare-fun b!4294887 () Bool)

(assert (=> b!4294887 (= e!2668903 e!2668899)))

(declare-fun tp!1318557 () Bool)

(declare-fun tp!1318558 () Bool)

(assert (=> b!4294888 (= e!2668901 (and tp!1318551 tp!1318558 tp!1318557 (array_inv!5097 (_keys!4765 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 (_2!26062 res!1760586)))))))) (array_inv!5098 (_values!4746 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 (_2!26062 res!1760586)))))))) e!2668900))))

(declare-fun b!4294889 () Bool)

(assert (=> b!4294889 (= e!2668902 e!2668898)))

(declare-fun b!4294890 () Bool)

(declare-fun e!2668915 () Bool)

(assert (=> b!4294890 (= e!2668915 e!2668913)))

(declare-fun mapIsEmpty!20073 () Bool)

(assert (=> mapIsEmpty!20073 mapRes!20073))

(declare-fun d!1265949 () Bool)

(assert (=> d!1265949 e!2668911))

(declare-fun res!1760587 () Bool)

(assert (=> d!1265949 (=> (not res!1760587) (not e!2668911))))

(assert (=> d!1265949 (= res!1760587 (= (_1!26062 res!1760586) (derivationStepZipper!552 z!3765 (apply!10848 totalInput!812 from!999))))))

(assert (=> d!1265949 (and setRes!26646 (inv!63341 (_2!26062 res!1760586)) e!2668905 (inv!63338 (_3!3277 res!1760586)) e!2668915)))

(declare-fun condSetEmpty!26646 () Bool)

(assert (=> d!1265949 (= condSetEmpty!26646 (= (_1!26062 res!1760586) ((as const (Array Context!5746 Bool)) false)))))

(assert (=> d!1265949 (= (choose!26149 z!3765 (apply!10848 totalInput!812 from!999) cacheUp!947 cacheDown!1066) res!1760586)))

(assert (= (and d!1265949 condSetEmpty!26646) setIsEmpty!26646))

(assert (= (and d!1265949 (not condSetEmpty!26646)) setNonEmpty!26646))

(assert (= setNonEmpty!26646 b!4294880))

(assert (= (and b!4294886 condMapEmpty!20073) mapIsEmpty!20073))

(assert (= (and b!4294886 (not condMapEmpty!20073)) mapNonEmpty!20073))

(assert (= b!4294888 b!4294886))

(assert (= b!4294875 b!4294888))

(assert (= b!4294887 b!4294875))

(assert (= (and b!4294877 ((_ is LongMap!4465) (v!41760 (underlying!9160 (cache!4509 (_2!26062 res!1760586)))))) b!4294887))

(assert (= b!4294882 b!4294877))

(assert (= (and b!4294876 ((_ is HashMap!4371) (cache!4509 (_2!26062 res!1760586)))) b!4294882))

(assert (= d!1265949 b!4294876))

(assert (= (and b!4294878 condMapEmpty!20072) mapIsEmpty!20072))

(assert (= (and b!4294878 (not condMapEmpty!20072)) mapNonEmpty!20072))

(assert (= b!4294874 b!4294878))

(assert (= b!4294889 b!4294874))

(assert (= b!4294881 b!4294889))

(assert (= (and b!4294883 ((_ is LongMap!4463) (v!41756 (underlying!9156 (cache!4511 (_3!3277 res!1760586)))))) b!4294881))

(assert (= b!4294884 b!4294883))

(assert (= (and b!4294890 ((_ is HashMap!4369) (cache!4511 (_3!3277 res!1760586)))) b!4294884))

(assert (= d!1265949 b!4294890))

(assert (= (and d!1265949 res!1760587) b!4294885))

(assert (= (and b!4294885 res!1760588) b!4294879))

(declare-fun m!4887506 () Bool)

(assert (=> mapNonEmpty!20073 m!4887506))

(declare-fun m!4887508 () Bool)

(assert (=> b!4294874 m!4887508))

(declare-fun m!4887510 () Bool)

(assert (=> b!4294874 m!4887510))

(declare-fun m!4887512 () Bool)

(assert (=> mapNonEmpty!20072 m!4887512))

(declare-fun m!4887514 () Bool)

(assert (=> b!4294879 m!4887514))

(assert (=> d!1265949 m!4887014))

(assert (=> d!1265949 m!4887016))

(declare-fun m!4887516 () Bool)

(assert (=> d!1265949 m!4887516))

(declare-fun m!4887518 () Bool)

(assert (=> d!1265949 m!4887518))

(declare-fun m!4887520 () Bool)

(assert (=> b!4294888 m!4887520))

(declare-fun m!4887522 () Bool)

(assert (=> b!4294888 m!4887522))

(declare-fun m!4887524 () Bool)

(assert (=> setNonEmpty!26646 m!4887524))

(declare-fun m!4887526 () Bool)

(assert (=> b!4294885 m!4887526))

(assert (=> d!1265801 d!1265949))

(declare-fun bs!603220 () Bool)

(declare-fun d!1265951 () Bool)

(assert (= bs!603220 (and d!1265951 d!1265845)))

(declare-fun lambda!131622 () Int)

(assert (=> bs!603220 (= lambda!131622 lambda!131583)))

(declare-fun bs!603221 () Bool)

(assert (= bs!603221 (and d!1265951 d!1265877)))

(assert (=> bs!603221 (= lambda!131622 lambda!131598)))

(declare-fun bs!603222 () Bool)

(assert (= bs!603222 (and d!1265951 d!1265947)))

(assert (=> bs!603222 (= lambda!131622 lambda!131621)))

(declare-fun bs!603223 () Bool)

(assert (= bs!603223 (and d!1265951 d!1265865)))

(assert (=> bs!603223 (= lambda!131622 lambda!131587)))

(declare-fun bs!603224 () Bool)

(assert (= bs!603224 (and d!1265951 d!1265915)))

(assert (=> bs!603224 (= lambda!131622 lambda!131608)))

(declare-fun bs!603225 () Bool)

(assert (= bs!603225 (and d!1265951 d!1265903)))

(assert (=> bs!603225 (= lambda!131622 lambda!131603)))

(declare-fun bs!603226 () Bool)

(assert (= bs!603226 (and d!1265951 d!1265895)))

(assert (=> bs!603226 (= lambda!131622 lambda!131601)))

(declare-fun bs!603227 () Bool)

(assert (= bs!603227 (and d!1265951 d!1265939)))

(assert (=> bs!603227 (= lambda!131622 lambda!131617)))

(assert (=> d!1265951 (= (inv!63342 (_2!26057 (_1!26058 (h!53230 mapValue!20052)))) (forall!8559 (exprs!3373 (_2!26057 (_1!26058 (h!53230 mapValue!20052)))) lambda!131622))))

(declare-fun bs!603228 () Bool)

(assert (= bs!603228 d!1265951))

(declare-fun m!4887528 () Bool)

(assert (=> bs!603228 m!4887528))

(assert (=> b!4294544 d!1265951))

(declare-fun bs!603229 () Bool)

(declare-fun d!1265953 () Bool)

(assert (= bs!603229 (and d!1265953 d!1265867)))

(declare-fun lambda!131625 () Int)

(assert (=> bs!603229 (= (= lambda!131577 (ite c!730775 lambda!131578 lambda!131579)) (= lambda!131625 lambda!131590))))

(declare-fun bs!603230 () Bool)

(assert (= bs!603230 (and d!1265953 b!4294449)))

(assert (=> bs!603230 (not (= lambda!131625 lambda!131579))))

(declare-fun bs!603231 () Bool)

(assert (= bs!603231 (and d!1265953 d!1265913)))

(assert (=> bs!603231 (not (= lambda!131625 lambda!131605))))

(declare-fun bs!603232 () Bool)

(assert (= bs!603232 (and d!1265953 d!1265897)))

(assert (=> bs!603232 (not (= lambda!131625 lambda!131602))))

(declare-fun bs!603233 () Bool)

(assert (= bs!603233 (and d!1265953 b!4294448)))

(assert (=> bs!603233 (not (= lambda!131625 lambda!131578))))

(declare-fun bs!603234 () Bool)

(assert (= bs!603234 (and d!1265953 d!1265907)))

(assert (=> bs!603234 (not (= lambda!131625 lambda!131604))))

(declare-fun bs!603235 () Bool)

(assert (= bs!603235 (and d!1265953 d!1265941)))

(assert (=> bs!603235 (not (= lambda!131625 lambda!131618))))

(declare-fun bs!603236 () Bool)

(assert (= bs!603236 (and d!1265953 b!4294832)))

(assert (=> bs!603236 (not (= lambda!131625 lambda!131619))))

(declare-fun bs!603237 () Bool)

(assert (= bs!603237 (and d!1265953 b!4294833)))

(assert (=> bs!603237 (not (= lambda!131625 lambda!131620))))

(declare-fun bs!603238 () Bool)

(assert (= bs!603238 (and d!1265953 d!1265827)))

(assert (=> bs!603238 (not (= lambda!131625 lambda!131577))))

(declare-fun bs!603239 () Bool)

(assert (= bs!603239 (and d!1265953 b!4294786)))

(assert (=> bs!603239 (not (= lambda!131625 lambda!131607))))

(declare-fun bs!603240 () Bool)

(assert (= bs!603240 (and d!1265953 b!4294785)))

(assert (=> bs!603240 (not (= lambda!131625 lambda!131606))))

(declare-fun bs!603241 () Bool)

(assert (= bs!603241 (and d!1265953 d!1265833)))

(assert (=> bs!603241 (not (= lambda!131625 lambda!131580))))

(declare-fun bs!603242 () Bool)

(assert (= bs!603242 (and d!1265953 d!1265813)))

(assert (=> bs!603242 (not (= lambda!131625 lambda!131564))))

(declare-fun bs!603243 () Bool)

(assert (= bs!603243 (and d!1265953 d!1265881)))

(assert (=> bs!603243 (not (= lambda!131625 lambda!131599))))

(declare-fun bs!603244 () Bool)

(assert (= bs!603244 (and d!1265953 d!1265919)))

(assert (=> bs!603244 (not (= lambda!131625 lambda!131615))))

(assert (=> d!1265953 true))

(assert (=> d!1265953 (< (dynLambda!20326 order!25041 lambda!131577) (dynLambda!20326 order!25041 lambda!131625))))

(assert (=> d!1265953 (not (exists!1228 lt!1517774 lambda!131625))))

(declare-fun lt!1517849 () Unit!66424)

(declare-fun choose!26155 (List!47938 Int) Unit!66424)

(assert (=> d!1265953 (= lt!1517849 (choose!26155 lt!1517774 lambda!131577))))

(assert (=> d!1265953 (forall!8560 lt!1517774 lambda!131577)))

(assert (=> d!1265953 (= (lemmaForallThenNotExists!157 lt!1517774 lambda!131577) lt!1517849)))

(declare-fun bs!603245 () Bool)

(assert (= bs!603245 d!1265953))

(declare-fun m!4887530 () Bool)

(assert (=> bs!603245 m!4887530))

(declare-fun m!4887532 () Bool)

(assert (=> bs!603245 m!4887532))

(declare-fun m!4887534 () Bool)

(assert (=> bs!603245 m!4887534))

(assert (=> b!4294449 d!1265953))

(declare-fun bs!603246 () Bool)

(declare-fun b!4294892 () Bool)

(assert (= bs!603246 (and b!4294892 b!4294642)))

(declare-fun lambda!131626 () Int)

(assert (=> bs!603246 (= lambda!131626 lambda!131596)))

(declare-fun d!1265955 () Bool)

(declare-fun res!1760589 () Bool)

(declare-fun e!2668918 () Bool)

(assert (=> d!1265955 (=> (not res!1760589) (not e!2668918))))

(assert (=> d!1265955 (= res!1760589 (valid!3448 (cache!4509 (_2!26061 lt!1517726))))))

(assert (=> d!1265955 (= (validCacheMapUp!421 (cache!4509 (_2!26061 lt!1517726))) e!2668918)))

(declare-fun b!4294891 () Bool)

(declare-fun res!1760590 () Bool)

(assert (=> b!4294891 (=> (not res!1760590) (not e!2668918))))

(assert (=> b!4294891 (= res!1760590 (invariantList!515 (toList!2131 (map!9809 (cache!4509 (_2!26061 lt!1517726))))))))

(assert (=> b!4294892 (= e!2668918 (forall!8562 (toList!2131 (map!9809 (cache!4509 (_2!26061 lt!1517726)))) lambda!131626))))

(assert (= (and d!1265955 res!1760589) b!4294891))

(assert (= (and b!4294891 res!1760590) b!4294892))

(declare-fun m!4887536 () Bool)

(assert (=> d!1265955 m!4887536))

(declare-fun m!4887538 () Bool)

(assert (=> b!4294891 m!4887538))

(declare-fun m!4887540 () Bool)

(assert (=> b!4294891 m!4887540))

(assert (=> b!4294892 m!4887538))

(declare-fun m!4887542 () Bool)

(assert (=> b!4294892 m!4887542))

(assert (=> d!1265811 d!1265955))

(declare-fun bs!603247 () Bool)

(declare-fun d!1265957 () Bool)

(assert (= bs!603247 (and d!1265957 d!1265845)))

(declare-fun lambda!131627 () Int)

(assert (=> bs!603247 (= lambda!131627 lambda!131583)))

(declare-fun bs!603248 () Bool)

(assert (= bs!603248 (and d!1265957 d!1265877)))

(assert (=> bs!603248 (= lambda!131627 lambda!131598)))

(declare-fun bs!603249 () Bool)

(assert (= bs!603249 (and d!1265957 d!1265947)))

(assert (=> bs!603249 (= lambda!131627 lambda!131621)))

(declare-fun bs!603250 () Bool)

(assert (= bs!603250 (and d!1265957 d!1265865)))

(assert (=> bs!603250 (= lambda!131627 lambda!131587)))

(declare-fun bs!603251 () Bool)

(assert (= bs!603251 (and d!1265957 d!1265915)))

(assert (=> bs!603251 (= lambda!131627 lambda!131608)))

(declare-fun bs!603252 () Bool)

(assert (= bs!603252 (and d!1265957 d!1265903)))

(assert (=> bs!603252 (= lambda!131627 lambda!131603)))

(declare-fun bs!603253 () Bool)

(assert (= bs!603253 (and d!1265957 d!1265895)))

(assert (=> bs!603253 (= lambda!131627 lambda!131601)))

(declare-fun bs!603254 () Bool)

(assert (= bs!603254 (and d!1265957 d!1265939)))

(assert (=> bs!603254 (= lambda!131627 lambda!131617)))

(declare-fun bs!603255 () Bool)

(assert (= bs!603255 (and d!1265957 d!1265951)))

(assert (=> bs!603255 (= lambda!131627 lambda!131622)))

(assert (=> d!1265957 (= (inv!63342 setElem!26619) (forall!8559 (exprs!3373 setElem!26619) lambda!131627))))

(declare-fun bs!603256 () Bool)

(assert (= bs!603256 d!1265957))

(declare-fun m!4887544 () Bool)

(assert (=> bs!603256 m!4887544))

(assert (=> setNonEmpty!26619 d!1265957))

(declare-fun bs!603257 () Bool)

(declare-fun d!1265959 () Bool)

(assert (= bs!603257 (and d!1265959 d!1265845)))

(declare-fun lambda!131628 () Int)

(assert (=> bs!603257 (= lambda!131628 lambda!131583)))

(declare-fun bs!603258 () Bool)

(assert (= bs!603258 (and d!1265959 d!1265877)))

(assert (=> bs!603258 (= lambda!131628 lambda!131598)))

(declare-fun bs!603259 () Bool)

(assert (= bs!603259 (and d!1265959 d!1265947)))

(assert (=> bs!603259 (= lambda!131628 lambda!131621)))

(declare-fun bs!603260 () Bool)

(assert (= bs!603260 (and d!1265959 d!1265957)))

(assert (=> bs!603260 (= lambda!131628 lambda!131627)))

(declare-fun bs!603261 () Bool)

(assert (= bs!603261 (and d!1265959 d!1265865)))

(assert (=> bs!603261 (= lambda!131628 lambda!131587)))

(declare-fun bs!603262 () Bool)

(assert (= bs!603262 (and d!1265959 d!1265915)))

(assert (=> bs!603262 (= lambda!131628 lambda!131608)))

(declare-fun bs!603263 () Bool)

(assert (= bs!603263 (and d!1265959 d!1265903)))

(assert (=> bs!603263 (= lambda!131628 lambda!131603)))

(declare-fun bs!603264 () Bool)

(assert (= bs!603264 (and d!1265959 d!1265895)))

(assert (=> bs!603264 (= lambda!131628 lambda!131601)))

(declare-fun bs!603265 () Bool)

(assert (= bs!603265 (and d!1265959 d!1265939)))

(assert (=> bs!603265 (= lambda!131628 lambda!131617)))

(declare-fun bs!603266 () Bool)

(assert (= bs!603266 (and d!1265959 d!1265951)))

(assert (=> bs!603266 (= lambda!131628 lambda!131622)))

(assert (=> d!1265959 (= (inv!63342 setElem!26609) (forall!8559 (exprs!3373 setElem!26609) lambda!131628))))

(declare-fun bs!603267 () Bool)

(assert (= bs!603267 d!1265959))

(declare-fun m!4887546 () Bool)

(assert (=> bs!603267 m!4887546))

(assert (=> setNonEmpty!26609 d!1265959))

(declare-fun d!1265961 () Bool)

(assert (=> d!1265961 (= (valid!3445 (_3!3276 lt!1517744)) (validCacheMapDown!452 (cache!4511 (_3!3276 lt!1517744))))))

(declare-fun bs!603268 () Bool)

(assert (= bs!603268 d!1265961))

(declare-fun m!4887548 () Bool)

(assert (=> bs!603268 m!4887548))

(assert (=> b!4294430 d!1265961))

(declare-fun bs!603269 () Bool)

(declare-fun d!1265963 () Bool)

(assert (= bs!603269 (and d!1265963 d!1265845)))

(declare-fun lambda!131629 () Int)

(assert (=> bs!603269 (= lambda!131629 lambda!131583)))

(declare-fun bs!603270 () Bool)

(assert (= bs!603270 (and d!1265963 d!1265877)))

(assert (=> bs!603270 (= lambda!131629 lambda!131598)))

(declare-fun bs!603271 () Bool)

(assert (= bs!603271 (and d!1265963 d!1265947)))

(assert (=> bs!603271 (= lambda!131629 lambda!131621)))

(declare-fun bs!603272 () Bool)

(assert (= bs!603272 (and d!1265963 d!1265957)))

(assert (=> bs!603272 (= lambda!131629 lambda!131627)))

(declare-fun bs!603273 () Bool)

(assert (= bs!603273 (and d!1265963 d!1265865)))

(assert (=> bs!603273 (= lambda!131629 lambda!131587)))

(declare-fun bs!603274 () Bool)

(assert (= bs!603274 (and d!1265963 d!1265915)))

(assert (=> bs!603274 (= lambda!131629 lambda!131608)))

(declare-fun bs!603275 () Bool)

(assert (= bs!603275 (and d!1265963 d!1265903)))

(assert (=> bs!603275 (= lambda!131629 lambda!131603)))

(declare-fun bs!603276 () Bool)

(assert (= bs!603276 (and d!1265963 d!1265939)))

(assert (=> bs!603276 (= lambda!131629 lambda!131617)))

(declare-fun bs!603277 () Bool)

(assert (= bs!603277 (and d!1265963 d!1265951)))

(assert (=> bs!603277 (= lambda!131629 lambda!131622)))

(declare-fun bs!603278 () Bool)

(assert (= bs!603278 (and d!1265963 d!1265895)))

(assert (=> bs!603278 (= lambda!131629 lambda!131601)))

(declare-fun bs!603279 () Bool)

(assert (= bs!603279 (and d!1265963 d!1265959)))

(assert (=> bs!603279 (= lambda!131629 lambda!131628)))

(assert (=> d!1265963 (= (inv!63342 (_1!26055 (_1!26056 (h!53232 mapValue!20049)))) (forall!8559 (exprs!3373 (_1!26055 (_1!26056 (h!53232 mapValue!20049)))) lambda!131629))))

(declare-fun bs!603280 () Bool)

(assert (= bs!603280 d!1265963))

(declare-fun m!4887550 () Bool)

(assert (=> bs!603280 m!4887550))

(assert (=> b!4294510 d!1265963))

(declare-fun bs!603281 () Bool)

(declare-fun d!1265965 () Bool)

(assert (= bs!603281 (and d!1265965 d!1265845)))

(declare-fun lambda!131630 () Int)

(assert (=> bs!603281 (= lambda!131630 lambda!131583)))

(declare-fun bs!603282 () Bool)

(assert (= bs!603282 (and d!1265965 d!1265877)))

(assert (=> bs!603282 (= lambda!131630 lambda!131598)))

(declare-fun bs!603283 () Bool)

(assert (= bs!603283 (and d!1265965 d!1265947)))

(assert (=> bs!603283 (= lambda!131630 lambda!131621)))

(declare-fun bs!603284 () Bool)

(assert (= bs!603284 (and d!1265965 d!1265957)))

(assert (=> bs!603284 (= lambda!131630 lambda!131627)))

(declare-fun bs!603285 () Bool)

(assert (= bs!603285 (and d!1265965 d!1265865)))

(assert (=> bs!603285 (= lambda!131630 lambda!131587)))

(declare-fun bs!603286 () Bool)

(assert (= bs!603286 (and d!1265965 d!1265915)))

(assert (=> bs!603286 (= lambda!131630 lambda!131608)))

(declare-fun bs!603287 () Bool)

(assert (= bs!603287 (and d!1265965 d!1265903)))

(assert (=> bs!603287 (= lambda!131630 lambda!131603)))

(declare-fun bs!603288 () Bool)

(assert (= bs!603288 (and d!1265965 d!1265939)))

(assert (=> bs!603288 (= lambda!131630 lambda!131617)))

(declare-fun bs!603289 () Bool)

(assert (= bs!603289 (and d!1265965 d!1265963)))

(assert (=> bs!603289 (= lambda!131630 lambda!131629)))

(declare-fun bs!603290 () Bool)

(assert (= bs!603290 (and d!1265965 d!1265951)))

(assert (=> bs!603290 (= lambda!131630 lambda!131622)))

(declare-fun bs!603291 () Bool)

(assert (= bs!603291 (and d!1265965 d!1265895)))

(assert (=> bs!603291 (= lambda!131630 lambda!131601)))

(declare-fun bs!603292 () Bool)

(assert (= bs!603292 (and d!1265965 d!1265959)))

(assert (=> bs!603292 (= lambda!131630 lambda!131628)))

(assert (=> d!1265965 (= (inv!63342 (_2!26057 (_1!26058 (h!53230 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))))) (forall!8559 (exprs!3373 (_2!26057 (_1!26058 (h!53230 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))))) lambda!131630))))

(declare-fun bs!603293 () Bool)

(assert (= bs!603293 d!1265965))

(declare-fun m!4887552 () Bool)

(assert (=> bs!603293 m!4887552))

(assert (=> b!4294558 d!1265965))

(declare-fun bs!603294 () Bool)

(declare-fun d!1265967 () Bool)

(assert (= bs!603294 (and d!1265967 d!1265845)))

(declare-fun lambda!131631 () Int)

(assert (=> bs!603294 (= lambda!131631 lambda!131583)))

(declare-fun bs!603295 () Bool)

(assert (= bs!603295 (and d!1265967 d!1265877)))

(assert (=> bs!603295 (= lambda!131631 lambda!131598)))

(declare-fun bs!603296 () Bool)

(assert (= bs!603296 (and d!1265967 d!1265947)))

(assert (=> bs!603296 (= lambda!131631 lambda!131621)))

(declare-fun bs!603297 () Bool)

(assert (= bs!603297 (and d!1265967 d!1265965)))

(assert (=> bs!603297 (= lambda!131631 lambda!131630)))

(declare-fun bs!603298 () Bool)

(assert (= bs!603298 (and d!1265967 d!1265957)))

(assert (=> bs!603298 (= lambda!131631 lambda!131627)))

(declare-fun bs!603299 () Bool)

(assert (= bs!603299 (and d!1265967 d!1265865)))

(assert (=> bs!603299 (= lambda!131631 lambda!131587)))

(declare-fun bs!603300 () Bool)

(assert (= bs!603300 (and d!1265967 d!1265915)))

(assert (=> bs!603300 (= lambda!131631 lambda!131608)))

(declare-fun bs!603301 () Bool)

(assert (= bs!603301 (and d!1265967 d!1265903)))

(assert (=> bs!603301 (= lambda!131631 lambda!131603)))

(declare-fun bs!603302 () Bool)

(assert (= bs!603302 (and d!1265967 d!1265939)))

(assert (=> bs!603302 (= lambda!131631 lambda!131617)))

(declare-fun bs!603303 () Bool)

(assert (= bs!603303 (and d!1265967 d!1265963)))

(assert (=> bs!603303 (= lambda!131631 lambda!131629)))

(declare-fun bs!603304 () Bool)

(assert (= bs!603304 (and d!1265967 d!1265951)))

(assert (=> bs!603304 (= lambda!131631 lambda!131622)))

(declare-fun bs!603305 () Bool)

(assert (= bs!603305 (and d!1265967 d!1265895)))

(assert (=> bs!603305 (= lambda!131631 lambda!131601)))

(declare-fun bs!603306 () Bool)

(assert (= bs!603306 (and d!1265967 d!1265959)))

(assert (=> bs!603306 (= lambda!131631 lambda!131628)))

(assert (=> d!1265967 (= (inv!63342 setElem!26629) (forall!8559 (exprs!3373 setElem!26629) lambda!131631))))

(declare-fun bs!603307 () Bool)

(assert (= bs!603307 d!1265967))

(declare-fun m!4887554 () Bool)

(assert (=> bs!603307 m!4887554))

(assert (=> setNonEmpty!26629 d!1265967))

(declare-fun bs!603308 () Bool)

(declare-fun d!1265969 () Bool)

(assert (= bs!603308 (and d!1265969 d!1265845)))

(declare-fun lambda!131632 () Int)

(assert (=> bs!603308 (= lambda!131632 lambda!131583)))

(declare-fun bs!603309 () Bool)

(assert (= bs!603309 (and d!1265969 d!1265877)))

(assert (=> bs!603309 (= lambda!131632 lambda!131598)))

(declare-fun bs!603310 () Bool)

(assert (= bs!603310 (and d!1265969 d!1265947)))

(assert (=> bs!603310 (= lambda!131632 lambda!131621)))

(declare-fun bs!603311 () Bool)

(assert (= bs!603311 (and d!1265969 d!1265965)))

(assert (=> bs!603311 (= lambda!131632 lambda!131630)))

(declare-fun bs!603312 () Bool)

(assert (= bs!603312 (and d!1265969 d!1265957)))

(assert (=> bs!603312 (= lambda!131632 lambda!131627)))

(declare-fun bs!603313 () Bool)

(assert (= bs!603313 (and d!1265969 d!1265865)))

(assert (=> bs!603313 (= lambda!131632 lambda!131587)))

(declare-fun bs!603314 () Bool)

(assert (= bs!603314 (and d!1265969 d!1265915)))

(assert (=> bs!603314 (= lambda!131632 lambda!131608)))

(declare-fun bs!603315 () Bool)

(assert (= bs!603315 (and d!1265969 d!1265903)))

(assert (=> bs!603315 (= lambda!131632 lambda!131603)))

(declare-fun bs!603316 () Bool)

(assert (= bs!603316 (and d!1265969 d!1265939)))

(assert (=> bs!603316 (= lambda!131632 lambda!131617)))

(declare-fun bs!603317 () Bool)

(assert (= bs!603317 (and d!1265969 d!1265963)))

(assert (=> bs!603317 (= lambda!131632 lambda!131629)))

(declare-fun bs!603318 () Bool)

(assert (= bs!603318 (and d!1265969 d!1265967)))

(assert (=> bs!603318 (= lambda!131632 lambda!131631)))

(declare-fun bs!603319 () Bool)

(assert (= bs!603319 (and d!1265969 d!1265951)))

(assert (=> bs!603319 (= lambda!131632 lambda!131622)))

(declare-fun bs!603320 () Bool)

(assert (= bs!603320 (and d!1265969 d!1265895)))

(assert (=> bs!603320 (= lambda!131632 lambda!131601)))

(declare-fun bs!603321 () Bool)

(assert (= bs!603321 (and d!1265969 d!1265959)))

(assert (=> bs!603321 (= lambda!131632 lambda!131628)))

(assert (=> d!1265969 (= (inv!63342 (_2!26057 (_1!26058 (h!53230 mapValue!20045)))) (forall!8559 (exprs!3373 (_2!26057 (_1!26058 (h!53230 mapValue!20045)))) lambda!131632))))

(declare-fun bs!603322 () Bool)

(assert (= bs!603322 d!1265969))

(declare-fun m!4887556 () Bool)

(assert (=> bs!603322 m!4887556))

(assert (=> b!4294555 d!1265969))

(declare-fun d!1265971 () Bool)

(declare-fun e!2668921 () Bool)

(assert (=> d!1265971 e!2668921))

(declare-fun res!1760593 () Bool)

(assert (=> d!1265971 (=> (not res!1760593) (not e!2668921))))

(declare-fun lt!1517852 () List!47938)

(declare-fun noDuplicate!585 (List!47938) Bool)

(assert (=> d!1265971 (= res!1760593 (noDuplicate!585 lt!1517852))))

(declare-fun choose!26156 ((InoxSet Context!5746)) List!47938)

(assert (=> d!1265971 (= lt!1517852 (choose!26156 z!3765))))

(assert (=> d!1265971 (= (toList!2129 z!3765) lt!1517852)))

(declare-fun b!4294895 () Bool)

(declare-fun content!7520 (List!47938) (InoxSet Context!5746))

(assert (=> b!4294895 (= e!2668921 (= (content!7520 lt!1517852) z!3765))))

(assert (= (and d!1265971 res!1760593) b!4294895))

(declare-fun m!4887558 () Bool)

(assert (=> d!1265971 m!4887558))

(declare-fun m!4887560 () Bool)

(assert (=> d!1265971 m!4887560))

(declare-fun m!4887562 () Bool)

(assert (=> b!4294895 m!4887562))

(assert (=> bm!294518 d!1265971))

(declare-fun bs!603323 () Bool)

(declare-fun d!1265973 () Bool)

(assert (= bs!603323 (and d!1265973 d!1265845)))

(declare-fun lambda!131633 () Int)

(assert (=> bs!603323 (= lambda!131633 lambda!131583)))

(declare-fun bs!603324 () Bool)

(assert (= bs!603324 (and d!1265973 d!1265877)))

(assert (=> bs!603324 (= lambda!131633 lambda!131598)))

(declare-fun bs!603325 () Bool)

(assert (= bs!603325 (and d!1265973 d!1265947)))

(assert (=> bs!603325 (= lambda!131633 lambda!131621)))

(declare-fun bs!603326 () Bool)

(assert (= bs!603326 (and d!1265973 d!1265965)))

(assert (=> bs!603326 (= lambda!131633 lambda!131630)))

(declare-fun bs!603327 () Bool)

(assert (= bs!603327 (and d!1265973 d!1265957)))

(assert (=> bs!603327 (= lambda!131633 lambda!131627)))

(declare-fun bs!603328 () Bool)

(assert (= bs!603328 (and d!1265973 d!1265969)))

(assert (=> bs!603328 (= lambda!131633 lambda!131632)))

(declare-fun bs!603329 () Bool)

(assert (= bs!603329 (and d!1265973 d!1265865)))

(assert (=> bs!603329 (= lambda!131633 lambda!131587)))

(declare-fun bs!603330 () Bool)

(assert (= bs!603330 (and d!1265973 d!1265915)))

(assert (=> bs!603330 (= lambda!131633 lambda!131608)))

(declare-fun bs!603331 () Bool)

(assert (= bs!603331 (and d!1265973 d!1265903)))

(assert (=> bs!603331 (= lambda!131633 lambda!131603)))

(declare-fun bs!603332 () Bool)

(assert (= bs!603332 (and d!1265973 d!1265939)))

(assert (=> bs!603332 (= lambda!131633 lambda!131617)))

(declare-fun bs!603333 () Bool)

(assert (= bs!603333 (and d!1265973 d!1265963)))

(assert (=> bs!603333 (= lambda!131633 lambda!131629)))

(declare-fun bs!603334 () Bool)

(assert (= bs!603334 (and d!1265973 d!1265967)))

(assert (=> bs!603334 (= lambda!131633 lambda!131631)))

(declare-fun bs!603335 () Bool)

(assert (= bs!603335 (and d!1265973 d!1265951)))

(assert (=> bs!603335 (= lambda!131633 lambda!131622)))

(declare-fun bs!603336 () Bool)

(assert (= bs!603336 (and d!1265973 d!1265895)))

(assert (=> bs!603336 (= lambda!131633 lambda!131601)))

(declare-fun bs!603337 () Bool)

(assert (= bs!603337 (and d!1265973 d!1265959)))

(assert (=> bs!603337 (= lambda!131633 lambda!131628)))

(assert (=> d!1265973 (= (inv!63342 (_2!26057 (_1!26058 (h!53230 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))))) (forall!8559 (exprs!3373 (_2!26057 (_1!26058 (h!53230 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))))) lambda!131633))))

(declare-fun bs!603338 () Bool)

(assert (= bs!603338 d!1265973))

(declare-fun m!4887564 () Bool)

(assert (=> bs!603338 m!4887564))

(assert (=> b!4294561 d!1265973))

(declare-fun d!1265975 () Bool)

(declare-fun res!1760600 () Bool)

(declare-fun e!2668924 () Bool)

(assert (=> d!1265975 (=> (not res!1760600) (not e!2668924))))

(assert (=> d!1265975 (= res!1760600 (= (csize!29078 (c!730753 totalInput!812)) (+ (size!35121 (left!35456 (c!730753 totalInput!812))) (size!35121 (right!35786 (c!730753 totalInput!812))))))))

(assert (=> d!1265975 (= (inv!63344 (c!730753 totalInput!812)) e!2668924)))

(declare-fun b!4294902 () Bool)

(declare-fun res!1760601 () Bool)

(assert (=> b!4294902 (=> (not res!1760601) (not e!2668924))))

(assert (=> b!4294902 (= res!1760601 (and (not (= (left!35456 (c!730753 totalInput!812)) Empty!14424)) (not (= (right!35786 (c!730753 totalInput!812)) Empty!14424))))))

(declare-fun b!4294903 () Bool)

(declare-fun res!1760602 () Bool)

(assert (=> b!4294903 (=> (not res!1760602) (not e!2668924))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4294903 (= res!1760602 (= (cheight!14635 (c!730753 totalInput!812)) (+ (max!0 (height!1893 (left!35456 (c!730753 totalInput!812))) (height!1893 (right!35786 (c!730753 totalInput!812)))) 1)))))

(declare-fun b!4294904 () Bool)

(assert (=> b!4294904 (= e!2668924 (<= 0 (cheight!14635 (c!730753 totalInput!812))))))

(assert (= (and d!1265975 res!1760600) b!4294902))

(assert (= (and b!4294902 res!1760601) b!4294903))

(assert (= (and b!4294903 res!1760602) b!4294904))

(assert (=> d!1265975 m!4887472))

(declare-fun m!4887566 () Bool)

(assert (=> d!1265975 m!4887566))

(assert (=> b!4294903 m!4887302))

(assert (=> b!4294903 m!4887304))

(assert (=> b!4294903 m!4887302))

(assert (=> b!4294903 m!4887304))

(declare-fun m!4887568 () Bool)

(assert (=> b!4294903 m!4887568))

(assert (=> b!4294476 d!1265975))

(declare-fun d!1265977 () Bool)

(assert (=> d!1265977 (= (valid!3446 (_2!26063 lt!1517723)) (validCacheMapFindLongestMatch!82 (cache!4510 (_2!26063 lt!1517723)) (totalInput!4392 (_2!26063 lt!1517723))))))

(declare-fun bs!603339 () Bool)

(assert (= bs!603339 d!1265977))

(declare-fun m!4887570 () Bool)

(assert (=> bs!603339 m!4887570))

(assert (=> d!1265839 d!1265977))

(declare-fun bs!603340 () Bool)

(declare-fun d!1265979 () Bool)

(assert (= bs!603340 (and d!1265979 d!1265845)))

(declare-fun lambda!131634 () Int)

(assert (=> bs!603340 (= lambda!131634 lambda!131583)))

(declare-fun bs!603341 () Bool)

(assert (= bs!603341 (and d!1265979 d!1265877)))

(assert (=> bs!603341 (= lambda!131634 lambda!131598)))

(declare-fun bs!603342 () Bool)

(assert (= bs!603342 (and d!1265979 d!1265947)))

(assert (=> bs!603342 (= lambda!131634 lambda!131621)))

(declare-fun bs!603343 () Bool)

(assert (= bs!603343 (and d!1265979 d!1265965)))

(assert (=> bs!603343 (= lambda!131634 lambda!131630)))

(declare-fun bs!603344 () Bool)

(assert (= bs!603344 (and d!1265979 d!1265957)))

(assert (=> bs!603344 (= lambda!131634 lambda!131627)))

(declare-fun bs!603345 () Bool)

(assert (= bs!603345 (and d!1265979 d!1265969)))

(assert (=> bs!603345 (= lambda!131634 lambda!131632)))

(declare-fun bs!603346 () Bool)

(assert (= bs!603346 (and d!1265979 d!1265865)))

(assert (=> bs!603346 (= lambda!131634 lambda!131587)))

(declare-fun bs!603347 () Bool)

(assert (= bs!603347 (and d!1265979 d!1265915)))

(assert (=> bs!603347 (= lambda!131634 lambda!131608)))

(declare-fun bs!603348 () Bool)

(assert (= bs!603348 (and d!1265979 d!1265973)))

(assert (=> bs!603348 (= lambda!131634 lambda!131633)))

(declare-fun bs!603349 () Bool)

(assert (= bs!603349 (and d!1265979 d!1265903)))

(assert (=> bs!603349 (= lambda!131634 lambda!131603)))

(declare-fun bs!603350 () Bool)

(assert (= bs!603350 (and d!1265979 d!1265939)))

(assert (=> bs!603350 (= lambda!131634 lambda!131617)))

(declare-fun bs!603351 () Bool)

(assert (= bs!603351 (and d!1265979 d!1265963)))

(assert (=> bs!603351 (= lambda!131634 lambda!131629)))

(declare-fun bs!603352 () Bool)

(assert (= bs!603352 (and d!1265979 d!1265967)))

(assert (=> bs!603352 (= lambda!131634 lambda!131631)))

(declare-fun bs!603353 () Bool)

(assert (= bs!603353 (and d!1265979 d!1265951)))

(assert (=> bs!603353 (= lambda!131634 lambda!131622)))

(declare-fun bs!603354 () Bool)

(assert (= bs!603354 (and d!1265979 d!1265895)))

(assert (=> bs!603354 (= lambda!131634 lambda!131601)))

(declare-fun bs!603355 () Bool)

(assert (= bs!603355 (and d!1265979 d!1265959)))

(assert (=> bs!603355 (= lambda!131634 lambda!131628)))

(assert (=> d!1265979 (= (inv!63342 setElem!26639) (forall!8559 (exprs!3373 setElem!26639) lambda!131634))))

(declare-fun bs!603356 () Bool)

(assert (= bs!603356 d!1265979))

(declare-fun m!4887572 () Bool)

(assert (=> bs!603356 m!4887572))

(assert (=> setNonEmpty!26639 d!1265979))

(assert (=> b!4294432 d!1265807))

(declare-fun d!1265981 () Bool)

(declare-fun res!1760603 () Bool)

(declare-fun e!2668925 () Bool)

(assert (=> d!1265981 (=> (not res!1760603) (not e!2668925))))

(assert (=> d!1265981 (= res!1760603 (= (csize!29078 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) (+ (size!35121 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) (size!35121 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))))

(assert (=> d!1265981 (= (inv!63344 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) e!2668925)))

(declare-fun b!4294905 () Bool)

(declare-fun res!1760604 () Bool)

(assert (=> b!4294905 (=> (not res!1760604) (not e!2668925))))

(assert (=> b!4294905 (= res!1760604 (and (not (= (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) Empty!14424)) (not (= (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) Empty!14424))))))

(declare-fun b!4294906 () Bool)

(declare-fun res!1760605 () Bool)

(assert (=> b!4294906 (=> (not res!1760605) (not e!2668925))))

(assert (=> b!4294906 (= res!1760605 (= (cheight!14635 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) (+ (max!0 (height!1893 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) (height!1893 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) 1)))))

(declare-fun b!4294907 () Bool)

(assert (=> b!4294907 (= e!2668925 (<= 0 (cheight!14635 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))

(assert (= (and d!1265981 res!1760603) b!4294905))

(assert (= (and b!4294905 res!1760604) b!4294906))

(assert (= (and b!4294906 res!1760605) b!4294907))

(declare-fun m!4887574 () Bool)

(assert (=> d!1265981 m!4887574))

(declare-fun m!4887576 () Bool)

(assert (=> d!1265981 m!4887576))

(assert (=> b!4294906 m!4887320))

(assert (=> b!4294906 m!4887322))

(assert (=> b!4294906 m!4887320))

(assert (=> b!4294906 m!4887322))

(declare-fun m!4887578 () Bool)

(assert (=> b!4294906 m!4887578))

(assert (=> b!4294482 d!1265981))

(declare-fun bs!603357 () Bool)

(declare-fun d!1265983 () Bool)

(assert (= bs!603357 (and d!1265983 d!1265845)))

(declare-fun lambda!131635 () Int)

(assert (=> bs!603357 (= lambda!131635 lambda!131583)))

(declare-fun bs!603358 () Bool)

(assert (= bs!603358 (and d!1265983 d!1265877)))

(assert (=> bs!603358 (= lambda!131635 lambda!131598)))

(declare-fun bs!603359 () Bool)

(assert (= bs!603359 (and d!1265983 d!1265947)))

(assert (=> bs!603359 (= lambda!131635 lambda!131621)))

(declare-fun bs!603360 () Bool)

(assert (= bs!603360 (and d!1265983 d!1265965)))

(assert (=> bs!603360 (= lambda!131635 lambda!131630)))

(declare-fun bs!603361 () Bool)

(assert (= bs!603361 (and d!1265983 d!1265957)))

(assert (=> bs!603361 (= lambda!131635 lambda!131627)))

(declare-fun bs!603362 () Bool)

(assert (= bs!603362 (and d!1265983 d!1265969)))

(assert (=> bs!603362 (= lambda!131635 lambda!131632)))

(declare-fun bs!603363 () Bool)

(assert (= bs!603363 (and d!1265983 d!1265865)))

(assert (=> bs!603363 (= lambda!131635 lambda!131587)))

(declare-fun bs!603364 () Bool)

(assert (= bs!603364 (and d!1265983 d!1265915)))

(assert (=> bs!603364 (= lambda!131635 lambda!131608)))

(declare-fun bs!603365 () Bool)

(assert (= bs!603365 (and d!1265983 d!1265973)))

(assert (=> bs!603365 (= lambda!131635 lambda!131633)))

(declare-fun bs!603366 () Bool)

(assert (= bs!603366 (and d!1265983 d!1265939)))

(assert (=> bs!603366 (= lambda!131635 lambda!131617)))

(declare-fun bs!603367 () Bool)

(assert (= bs!603367 (and d!1265983 d!1265963)))

(assert (=> bs!603367 (= lambda!131635 lambda!131629)))

(declare-fun bs!603368 () Bool)

(assert (= bs!603368 (and d!1265983 d!1265967)))

(assert (=> bs!603368 (= lambda!131635 lambda!131631)))

(declare-fun bs!603369 () Bool)

(assert (= bs!603369 (and d!1265983 d!1265951)))

(assert (=> bs!603369 (= lambda!131635 lambda!131622)))

(declare-fun bs!603370 () Bool)

(assert (= bs!603370 (and d!1265983 d!1265903)))

(assert (=> bs!603370 (= lambda!131635 lambda!131603)))

(declare-fun bs!603371 () Bool)

(assert (= bs!603371 (and d!1265983 d!1265979)))

(assert (=> bs!603371 (= lambda!131635 lambda!131634)))

(declare-fun bs!603372 () Bool)

(assert (= bs!603372 (and d!1265983 d!1265895)))

(assert (=> bs!603372 (= lambda!131635 lambda!131601)))

(declare-fun bs!603373 () Bool)

(assert (= bs!603373 (and d!1265983 d!1265959)))

(assert (=> bs!603373 (= lambda!131635 lambda!131628)))

(assert (=> d!1265983 (= (inv!63342 setElem!26642) (forall!8559 (exprs!3373 setElem!26642) lambda!131635))))

(declare-fun bs!603374 () Bool)

(assert (= bs!603374 d!1265983))

(declare-fun m!4887580 () Bool)

(assert (=> bs!603374 m!4887580))

(assert (=> setNonEmpty!26642 d!1265983))

(declare-fun d!1265985 () Bool)

(declare-fun lt!1517855 () Int)

(assert (=> d!1265985 (>= lt!1517855 0)))

(declare-fun e!2668928 () Int)

(assert (=> d!1265985 (= lt!1517855 e!2668928)))

(declare-fun c!730820 () Bool)

(assert (=> d!1265985 (= c!730820 ((_ is Nil!47813) (list!17363 totalInput!812)))))

(assert (=> d!1265985 (= (size!35120 (list!17363 totalInput!812)) lt!1517855)))

(declare-fun b!4294912 () Bool)

(assert (=> b!4294912 (= e!2668928 0)))

(declare-fun b!4294913 () Bool)

(assert (=> b!4294913 (= e!2668928 (+ 1 (size!35120 (t!354541 (list!17363 totalInput!812)))))))

(assert (= (and d!1265985 c!730820) b!4294912))

(assert (= (and d!1265985 (not c!730820)) b!4294913))

(declare-fun m!4887582 () Bool)

(assert (=> b!4294913 m!4887582))

(assert (=> d!1265807 d!1265985))

(assert (=> d!1265807 d!1265933))

(declare-fun d!1265987 () Bool)

(declare-fun lt!1517858 () Int)

(assert (=> d!1265987 (= lt!1517858 (size!35120 (list!17364 (c!730753 totalInput!812))))))

(assert (=> d!1265987 (= lt!1517858 (ite ((_ is Empty!14424) (c!730753 totalInput!812)) 0 (ite ((_ is Leaf!22317) (c!730753 totalInput!812)) (csize!29079 (c!730753 totalInput!812)) (csize!29078 (c!730753 totalInput!812)))))))

(assert (=> d!1265987 (= (size!35121 (c!730753 totalInput!812)) lt!1517858)))

(declare-fun bs!603375 () Bool)

(assert (= bs!603375 d!1265987))

(assert (=> bs!603375 m!4887460))

(assert (=> bs!603375 m!4887460))

(declare-fun m!4887584 () Bool)

(assert (=> bs!603375 m!4887584))

(assert (=> d!1265807 d!1265987))

(declare-fun bs!603376 () Bool)

(declare-fun d!1265989 () Bool)

(assert (= bs!603376 (and d!1265989 d!1265845)))

(declare-fun lambda!131636 () Int)

(assert (=> bs!603376 (= lambda!131636 lambda!131583)))

(declare-fun bs!603377 () Bool)

(assert (= bs!603377 (and d!1265989 d!1265877)))

(assert (=> bs!603377 (= lambda!131636 lambda!131598)))

(declare-fun bs!603378 () Bool)

(assert (= bs!603378 (and d!1265989 d!1265947)))

(assert (=> bs!603378 (= lambda!131636 lambda!131621)))

(declare-fun bs!603379 () Bool)

(assert (= bs!603379 (and d!1265989 d!1265983)))

(assert (=> bs!603379 (= lambda!131636 lambda!131635)))

(declare-fun bs!603380 () Bool)

(assert (= bs!603380 (and d!1265989 d!1265965)))

(assert (=> bs!603380 (= lambda!131636 lambda!131630)))

(declare-fun bs!603381 () Bool)

(assert (= bs!603381 (and d!1265989 d!1265957)))

(assert (=> bs!603381 (= lambda!131636 lambda!131627)))

(declare-fun bs!603382 () Bool)

(assert (= bs!603382 (and d!1265989 d!1265969)))

(assert (=> bs!603382 (= lambda!131636 lambda!131632)))

(declare-fun bs!603383 () Bool)

(assert (= bs!603383 (and d!1265989 d!1265865)))

(assert (=> bs!603383 (= lambda!131636 lambda!131587)))

(declare-fun bs!603384 () Bool)

(assert (= bs!603384 (and d!1265989 d!1265915)))

(assert (=> bs!603384 (= lambda!131636 lambda!131608)))

(declare-fun bs!603385 () Bool)

(assert (= bs!603385 (and d!1265989 d!1265973)))

(assert (=> bs!603385 (= lambda!131636 lambda!131633)))

(declare-fun bs!603386 () Bool)

(assert (= bs!603386 (and d!1265989 d!1265939)))

(assert (=> bs!603386 (= lambda!131636 lambda!131617)))

(declare-fun bs!603387 () Bool)

(assert (= bs!603387 (and d!1265989 d!1265963)))

(assert (=> bs!603387 (= lambda!131636 lambda!131629)))

(declare-fun bs!603388 () Bool)

(assert (= bs!603388 (and d!1265989 d!1265967)))

(assert (=> bs!603388 (= lambda!131636 lambda!131631)))

(declare-fun bs!603389 () Bool)

(assert (= bs!603389 (and d!1265989 d!1265951)))

(assert (=> bs!603389 (= lambda!131636 lambda!131622)))

(declare-fun bs!603390 () Bool)

(assert (= bs!603390 (and d!1265989 d!1265903)))

(assert (=> bs!603390 (= lambda!131636 lambda!131603)))

(declare-fun bs!603391 () Bool)

(assert (= bs!603391 (and d!1265989 d!1265979)))

(assert (=> bs!603391 (= lambda!131636 lambda!131634)))

(declare-fun bs!603392 () Bool)

(assert (= bs!603392 (and d!1265989 d!1265895)))

(assert (=> bs!603392 (= lambda!131636 lambda!131601)))

(declare-fun bs!603393 () Bool)

(assert (= bs!603393 (and d!1265989 d!1265959)))

(assert (=> bs!603393 (= lambda!131636 lambda!131628)))

(assert (=> d!1265989 (= (inv!63342 (_1!26055 (_1!26056 (h!53232 mapDefault!20049)))) (forall!8559 (exprs!3373 (_1!26055 (_1!26056 (h!53232 mapDefault!20049)))) lambda!131636))))

(declare-fun bs!603394 () Bool)

(assert (= bs!603394 d!1265989))

(declare-fun m!4887586 () Bool)

(assert (=> bs!603394 m!4887586))

(assert (=> b!4294513 d!1265989))

(declare-fun d!1265991 () Bool)

(declare-fun res!1760610 () Bool)

(declare-fun e!2668931 () Bool)

(assert (=> d!1265991 (=> (not res!1760610) (not e!2668931))))

(declare-fun list!17365 (IArray!28909) List!47937)

(assert (=> d!1265991 (= res!1760610 (<= (size!35120 (list!17365 (xs!17730 (c!730753 totalInput!812)))) 512))))

(assert (=> d!1265991 (= (inv!63345 (c!730753 totalInput!812)) e!2668931)))

(declare-fun b!4294918 () Bool)

(declare-fun res!1760611 () Bool)

(assert (=> b!4294918 (=> (not res!1760611) (not e!2668931))))

(assert (=> b!4294918 (= res!1760611 (= (csize!29079 (c!730753 totalInput!812)) (size!35120 (list!17365 (xs!17730 (c!730753 totalInput!812))))))))

(declare-fun b!4294919 () Bool)

(assert (=> b!4294919 (= e!2668931 (and (> (csize!29079 (c!730753 totalInput!812)) 0) (<= (csize!29079 (c!730753 totalInput!812)) 512)))))

(assert (= (and d!1265991 res!1760610) b!4294918))

(assert (= (and b!4294918 res!1760611) b!4294919))

(declare-fun m!4887588 () Bool)

(assert (=> d!1265991 m!4887588))

(assert (=> d!1265991 m!4887588))

(declare-fun m!4887590 () Bool)

(assert (=> d!1265991 m!4887590))

(assert (=> b!4294918 m!4887588))

(assert (=> b!4294918 m!4887588))

(assert (=> b!4294918 m!4887590))

(assert (=> b!4294478 d!1265991))

(declare-fun bs!603395 () Bool)

(declare-fun d!1265993 () Bool)

(assert (= bs!603395 (and d!1265993 d!1265845)))

(declare-fun lambda!131637 () Int)

(assert (=> bs!603395 (= lambda!131637 lambda!131583)))

(declare-fun bs!603396 () Bool)

(assert (= bs!603396 (and d!1265993 d!1265877)))

(assert (=> bs!603396 (= lambda!131637 lambda!131598)))

(declare-fun bs!603397 () Bool)

(assert (= bs!603397 (and d!1265993 d!1265947)))

(assert (=> bs!603397 (= lambda!131637 lambda!131621)))

(declare-fun bs!603398 () Bool)

(assert (= bs!603398 (and d!1265993 d!1265983)))

(assert (=> bs!603398 (= lambda!131637 lambda!131635)))

(declare-fun bs!603399 () Bool)

(assert (= bs!603399 (and d!1265993 d!1265965)))

(assert (=> bs!603399 (= lambda!131637 lambda!131630)))

(declare-fun bs!603400 () Bool)

(assert (= bs!603400 (and d!1265993 d!1265957)))

(assert (=> bs!603400 (= lambda!131637 lambda!131627)))

(declare-fun bs!603401 () Bool)

(assert (= bs!603401 (and d!1265993 d!1265969)))

(assert (=> bs!603401 (= lambda!131637 lambda!131632)))

(declare-fun bs!603402 () Bool)

(assert (= bs!603402 (and d!1265993 d!1265865)))

(assert (=> bs!603402 (= lambda!131637 lambda!131587)))

(declare-fun bs!603403 () Bool)

(assert (= bs!603403 (and d!1265993 d!1265915)))

(assert (=> bs!603403 (= lambda!131637 lambda!131608)))

(declare-fun bs!603404 () Bool)

(assert (= bs!603404 (and d!1265993 d!1265973)))

(assert (=> bs!603404 (= lambda!131637 lambda!131633)))

(declare-fun bs!603405 () Bool)

(assert (= bs!603405 (and d!1265993 d!1265989)))

(assert (=> bs!603405 (= lambda!131637 lambda!131636)))

(declare-fun bs!603406 () Bool)

(assert (= bs!603406 (and d!1265993 d!1265939)))

(assert (=> bs!603406 (= lambda!131637 lambda!131617)))

(declare-fun bs!603407 () Bool)

(assert (= bs!603407 (and d!1265993 d!1265963)))

(assert (=> bs!603407 (= lambda!131637 lambda!131629)))

(declare-fun bs!603408 () Bool)

(assert (= bs!603408 (and d!1265993 d!1265967)))

(assert (=> bs!603408 (= lambda!131637 lambda!131631)))

(declare-fun bs!603409 () Bool)

(assert (= bs!603409 (and d!1265993 d!1265951)))

(assert (=> bs!603409 (= lambda!131637 lambda!131622)))

(declare-fun bs!603410 () Bool)

(assert (= bs!603410 (and d!1265993 d!1265903)))

(assert (=> bs!603410 (= lambda!131637 lambda!131603)))

(declare-fun bs!603411 () Bool)

(assert (= bs!603411 (and d!1265993 d!1265979)))

(assert (=> bs!603411 (= lambda!131637 lambda!131634)))

(declare-fun bs!603412 () Bool)

(assert (= bs!603412 (and d!1265993 d!1265895)))

(assert (=> bs!603412 (= lambda!131637 lambda!131601)))

(declare-fun bs!603413 () Bool)

(assert (= bs!603413 (and d!1265993 d!1265959)))

(assert (=> bs!603413 (= lambda!131637 lambda!131628)))

(assert (=> d!1265993 (= (inv!63342 setElem!26640) (forall!8559 (exprs!3373 setElem!26640) lambda!131637))))

(declare-fun bs!603414 () Bool)

(assert (= bs!603414 d!1265993))

(declare-fun m!4887592 () Bool)

(assert (=> bs!603414 m!4887592))

(assert (=> setNonEmpty!26640 d!1265993))

(declare-fun d!1265995 () Bool)

(declare-fun res!1760618 () Bool)

(declare-fun e!2668936 () Bool)

(assert (=> d!1265995 (=> (not res!1760618) (not e!2668936))))

(declare-fun valid!3449 (MutableMap!4369) Bool)

(assert (=> d!1265995 (= res!1760618 (valid!3449 (cache!4511 cacheDown!1066)))))

(assert (=> d!1265995 (= (validCacheMapDown!452 (cache!4511 cacheDown!1066)) e!2668936)))

(declare-fun b!4294926 () Bool)

(declare-fun res!1760619 () Bool)

(assert (=> b!4294926 (=> (not res!1760619) (not e!2668936))))

(declare-fun invariantList!516 (List!47934) Bool)

(declare-datatypes ((ListMap!1391 0))(
  ( (ListMap!1392 (toList!2132 List!47934)) )
))
(declare-fun map!9810 (MutableMap!4369) ListMap!1391)

(assert (=> b!4294926 (= res!1760619 (invariantList!516 (toList!2132 (map!9810 (cache!4511 cacheDown!1066)))))))

(declare-fun b!4294927 () Bool)

(declare-fun lambda!131640 () Int)

(declare-fun forall!8563 (List!47934 Int) Bool)

(assert (=> b!4294927 (= e!2668936 (forall!8563 (toList!2132 (map!9810 (cache!4511 cacheDown!1066))) lambda!131640))))

(assert (= (and d!1265995 res!1760618) b!4294926))

(assert (= (and b!4294926 res!1760619) b!4294927))

(declare-fun m!4887595 () Bool)

(assert (=> d!1265995 m!4887595))

(declare-fun m!4887597 () Bool)

(assert (=> b!4294926 m!4887597))

(declare-fun m!4887599 () Bool)

(assert (=> b!4294926 m!4887599))

(assert (=> b!4294927 m!4887597))

(declare-fun m!4887601 () Bool)

(assert (=> b!4294927 m!4887601))

(assert (=> b!4294463 d!1265995))

(declare-fun d!1265997 () Bool)

(assert (=> d!1265997 (= (valid!3444 (_2!26061 lt!1517744)) (validCacheMapUp!421 (cache!4509 (_2!26061 lt!1517744))))))

(declare-fun bs!603415 () Bool)

(assert (= bs!603415 d!1265997))

(declare-fun m!4887603 () Bool)

(assert (=> bs!603415 m!4887603))

(assert (=> b!4294434 d!1265997))

(declare-fun d!1265999 () Bool)

(declare-fun res!1760620 () Bool)

(declare-fun e!2668937 () Bool)

(assert (=> d!1265999 (=> (not res!1760620) (not e!2668937))))

(assert (=> d!1265999 (= res!1760620 (<= (size!35120 (list!17365 (xs!17730 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) 512))))

(assert (=> d!1265999 (= (inv!63345 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) e!2668937)))

(declare-fun b!4294928 () Bool)

(declare-fun res!1760621 () Bool)

(assert (=> b!4294928 (=> (not res!1760621) (not e!2668937))))

(assert (=> b!4294928 (= res!1760621 (= (csize!29079 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) (size!35120 (list!17365 (xs!17730 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))))))

(declare-fun b!4294929 () Bool)

(assert (=> b!4294929 (= e!2668937 (and (> (csize!29079 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) 0) (<= (csize!29079 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))) 512)))))

(assert (= (and d!1265999 res!1760620) b!4294928))

(assert (= (and b!4294928 res!1760621) b!4294929))

(declare-fun m!4887605 () Bool)

(assert (=> d!1265999 m!4887605))

(assert (=> d!1265999 m!4887605))

(declare-fun m!4887607 () Bool)

(assert (=> d!1265999 m!4887607))

(assert (=> b!4294928 m!4887605))

(assert (=> b!4294928 m!4887605))

(assert (=> b!4294928 m!4887607))

(assert (=> b!4294484 d!1265999))

(declare-fun bs!603416 () Bool)

(declare-fun d!1266001 () Bool)

(assert (= bs!603416 (and d!1266001 d!1265993)))

(declare-fun lambda!131641 () Int)

(assert (=> bs!603416 (= lambda!131641 lambda!131637)))

(declare-fun bs!603417 () Bool)

(assert (= bs!603417 (and d!1266001 d!1265845)))

(assert (=> bs!603417 (= lambda!131641 lambda!131583)))

(declare-fun bs!603418 () Bool)

(assert (= bs!603418 (and d!1266001 d!1265877)))

(assert (=> bs!603418 (= lambda!131641 lambda!131598)))

(declare-fun bs!603419 () Bool)

(assert (= bs!603419 (and d!1266001 d!1265947)))

(assert (=> bs!603419 (= lambda!131641 lambda!131621)))

(declare-fun bs!603420 () Bool)

(assert (= bs!603420 (and d!1266001 d!1265983)))

(assert (=> bs!603420 (= lambda!131641 lambda!131635)))

(declare-fun bs!603421 () Bool)

(assert (= bs!603421 (and d!1266001 d!1265965)))

(assert (=> bs!603421 (= lambda!131641 lambda!131630)))

(declare-fun bs!603422 () Bool)

(assert (= bs!603422 (and d!1266001 d!1265957)))

(assert (=> bs!603422 (= lambda!131641 lambda!131627)))

(declare-fun bs!603423 () Bool)

(assert (= bs!603423 (and d!1266001 d!1265969)))

(assert (=> bs!603423 (= lambda!131641 lambda!131632)))

(declare-fun bs!603424 () Bool)

(assert (= bs!603424 (and d!1266001 d!1265865)))

(assert (=> bs!603424 (= lambda!131641 lambda!131587)))

(declare-fun bs!603425 () Bool)

(assert (= bs!603425 (and d!1266001 d!1265915)))

(assert (=> bs!603425 (= lambda!131641 lambda!131608)))

(declare-fun bs!603426 () Bool)

(assert (= bs!603426 (and d!1266001 d!1265973)))

(assert (=> bs!603426 (= lambda!131641 lambda!131633)))

(declare-fun bs!603427 () Bool)

(assert (= bs!603427 (and d!1266001 d!1265989)))

(assert (=> bs!603427 (= lambda!131641 lambda!131636)))

(declare-fun bs!603428 () Bool)

(assert (= bs!603428 (and d!1266001 d!1265939)))

(assert (=> bs!603428 (= lambda!131641 lambda!131617)))

(declare-fun bs!603429 () Bool)

(assert (= bs!603429 (and d!1266001 d!1265963)))

(assert (=> bs!603429 (= lambda!131641 lambda!131629)))

(declare-fun bs!603430 () Bool)

(assert (= bs!603430 (and d!1266001 d!1265967)))

(assert (=> bs!603430 (= lambda!131641 lambda!131631)))

(declare-fun bs!603431 () Bool)

(assert (= bs!603431 (and d!1266001 d!1265951)))

(assert (=> bs!603431 (= lambda!131641 lambda!131622)))

(declare-fun bs!603432 () Bool)

(assert (= bs!603432 (and d!1266001 d!1265903)))

(assert (=> bs!603432 (= lambda!131641 lambda!131603)))

(declare-fun bs!603433 () Bool)

(assert (= bs!603433 (and d!1266001 d!1265979)))

(assert (=> bs!603433 (= lambda!131641 lambda!131634)))

(declare-fun bs!603434 () Bool)

(assert (= bs!603434 (and d!1266001 d!1265895)))

(assert (=> bs!603434 (= lambda!131641 lambda!131601)))

(declare-fun bs!603435 () Bool)

(assert (= bs!603435 (and d!1266001 d!1265959)))

(assert (=> bs!603435 (= lambda!131641 lambda!131628)))

(assert (=> d!1266001 (= (inv!63342 setElem!26613) (forall!8559 (exprs!3373 setElem!26613) lambda!131641))))

(declare-fun bs!603436 () Bool)

(assert (= bs!603436 d!1266001))

(declare-fun m!4887609 () Bool)

(assert (=> bs!603436 m!4887609))

(assert (=> setNonEmpty!26613 d!1266001))

(declare-fun d!1266003 () Bool)

(assert (=> d!1266003 (= (valid!3445 (_3!3277 lt!1517747)) (validCacheMapDown!452 (cache!4511 (_3!3277 lt!1517747))))))

(declare-fun bs!603437 () Bool)

(assert (= bs!603437 d!1266003))

(declare-fun m!4887611 () Bool)

(assert (=> bs!603437 m!4887611))

(assert (=> b!4294440 d!1266003))

(declare-fun bs!603438 () Bool)

(declare-fun d!1266005 () Bool)

(assert (= bs!603438 (and d!1266005 d!1265863)))

(declare-fun lambda!131642 () Int)

(assert (=> bs!603438 (= (= (apply!10848 totalInput!812 (+ 1 from!999)) (apply!10848 totalInput!812 from!999)) (= lambda!131642 lambda!131586))))

(declare-fun bs!603439 () Bool)

(assert (= bs!603439 (and d!1266005 d!1265925)))

(assert (=> bs!603439 (= lambda!131642 lambda!131616)))

(assert (=> d!1266005 true))

(assert (=> d!1266005 (= (derivationStepZipper!552 lt!1517722 (apply!10848 totalInput!812 (+ 1 from!999))) (flatMap!256 lt!1517722 lambda!131642))))

(declare-fun bs!603440 () Bool)

(assert (= bs!603440 d!1266005))

(declare-fun m!4887613 () Bool)

(assert (=> bs!603440 m!4887613))

(assert (=> b!4294490 d!1266005))

(assert (=> b!4294490 d!1265927))

(declare-fun b!4294930 () Bool)

(declare-fun c!730823 () Bool)

(declare-fun lt!1517860 () (InoxSet Context!5746))

(assert (=> b!4294930 (= c!730823 (nullableZipper!775 lt!1517860))))

(declare-fun e!2668938 () Int)

(declare-fun e!2668942 () Int)

(assert (=> b!4294930 (= e!2668938 e!2668942)))

(declare-fun b!4294931 () Bool)

(declare-fun e!2668939 () Int)

(assert (=> b!4294931 (= e!2668939 0)))

(declare-fun b!4294932 () Bool)

(assert (=> b!4294932 (= e!2668942 1)))

(declare-fun d!1266007 () Bool)

(declare-fun lt!1517861 () Int)

(assert (=> d!1266007 (and (>= lt!1517861 0) (<= lt!1517861 (- totalInputSize!257 (+ 1 from!999 1))))))

(assert (=> d!1266007 (= lt!1517861 e!2668939)))

(declare-fun c!730822 () Bool)

(declare-fun e!2668941 () Bool)

(assert (=> d!1266007 (= c!730822 e!2668941)))

(declare-fun res!1760623 () Bool)

(assert (=> d!1266007 (=> res!1760623 e!2668941)))

(assert (=> d!1266007 (= res!1760623 (= (+ 1 from!999 1) totalInputSize!257))))

(declare-fun e!2668940 () Bool)

(assert (=> d!1266007 e!2668940))

(declare-fun res!1760622 () Bool)

(assert (=> d!1266007 (=> (not res!1760622) (not e!2668940))))

(assert (=> d!1266007 (= res!1760622 (>= (+ 1 from!999 1) 0))))

(assert (=> d!1266007 (= (findLongestMatchInnerZipperFastV2!42 lt!1517788 (+ 1 from!999 1) totalInput!812 totalInputSize!257) lt!1517861)))

(declare-fun b!4294933 () Bool)

(assert (=> b!4294933 (= e!2668942 0)))

(declare-fun b!4294934 () Bool)

(assert (=> b!4294934 (= e!2668940 (<= (+ 1 from!999 1) (size!35119 totalInput!812)))))

(declare-fun b!4294935 () Bool)

(assert (=> b!4294935 (= e!2668939 e!2668938)))

(assert (=> b!4294935 (= lt!1517860 (derivationStepZipper!552 lt!1517788 (apply!10848 totalInput!812 (+ 1 from!999 1))))))

(declare-fun lt!1517859 () Int)

(assert (=> b!4294935 (= lt!1517859 (findLongestMatchInnerZipperFastV2!42 lt!1517860 (+ 1 from!999 1 1) totalInput!812 totalInputSize!257))))

(declare-fun c!730821 () Bool)

(assert (=> b!4294935 (= c!730821 (> lt!1517859 0))))

(declare-fun b!4294936 () Bool)

(assert (=> b!4294936 (= e!2668938 (+ 1 lt!1517859))))

(declare-fun b!4294937 () Bool)

(assert (=> b!4294937 (= e!2668941 (lostCauseZipper!655 lt!1517788))))

(assert (= (and d!1266007 res!1760622) b!4294934))

(assert (= (and d!1266007 (not res!1760623)) b!4294937))

(assert (= (and d!1266007 c!730822) b!4294931))

(assert (= (and d!1266007 (not c!730822)) b!4294935))

(assert (= (and b!4294935 c!730821) b!4294936))

(assert (= (and b!4294935 (not c!730821)) b!4294930))

(assert (= (and b!4294930 c!730823) b!4294932))

(assert (= (and b!4294930 (not c!730823)) b!4294933))

(declare-fun m!4887615 () Bool)

(assert (=> b!4294930 m!4887615))

(assert (=> b!4294934 m!4886994))

(assert (=> b!4294935 m!4887444))

(assert (=> b!4294935 m!4887444))

(declare-fun m!4887617 () Bool)

(assert (=> b!4294935 m!4887617))

(declare-fun m!4887619 () Bool)

(assert (=> b!4294935 m!4887619))

(declare-fun m!4887621 () Bool)

(assert (=> b!4294937 m!4887621))

(assert (=> b!4294490 d!1266007))

(declare-fun bs!603441 () Bool)

(declare-fun d!1266009 () Bool)

(assert (= bs!603441 (and d!1266009 d!1265993)))

(declare-fun lambda!131643 () Int)

(assert (=> bs!603441 (= lambda!131643 lambda!131637)))

(declare-fun bs!603442 () Bool)

(assert (= bs!603442 (and d!1266009 d!1265845)))

(assert (=> bs!603442 (= lambda!131643 lambda!131583)))

(declare-fun bs!603443 () Bool)

(assert (= bs!603443 (and d!1266009 d!1265877)))

(assert (=> bs!603443 (= lambda!131643 lambda!131598)))

(declare-fun bs!603444 () Bool)

(assert (= bs!603444 (and d!1266009 d!1265947)))

(assert (=> bs!603444 (= lambda!131643 lambda!131621)))

(declare-fun bs!603445 () Bool)

(assert (= bs!603445 (and d!1266009 d!1265983)))

(assert (=> bs!603445 (= lambda!131643 lambda!131635)))

(declare-fun bs!603446 () Bool)

(assert (= bs!603446 (and d!1266009 d!1265965)))

(assert (=> bs!603446 (= lambda!131643 lambda!131630)))

(declare-fun bs!603447 () Bool)

(assert (= bs!603447 (and d!1266009 d!1265957)))

(assert (=> bs!603447 (= lambda!131643 lambda!131627)))

(declare-fun bs!603448 () Bool)

(assert (= bs!603448 (and d!1266009 d!1265969)))

(assert (=> bs!603448 (= lambda!131643 lambda!131632)))

(declare-fun bs!603449 () Bool)

(assert (= bs!603449 (and d!1266009 d!1265865)))

(assert (=> bs!603449 (= lambda!131643 lambda!131587)))

(declare-fun bs!603450 () Bool)

(assert (= bs!603450 (and d!1266009 d!1265915)))

(assert (=> bs!603450 (= lambda!131643 lambda!131608)))

(declare-fun bs!603451 () Bool)

(assert (= bs!603451 (and d!1266009 d!1265973)))

(assert (=> bs!603451 (= lambda!131643 lambda!131633)))

(declare-fun bs!603452 () Bool)

(assert (= bs!603452 (and d!1266009 d!1265989)))

(assert (=> bs!603452 (= lambda!131643 lambda!131636)))

(declare-fun bs!603453 () Bool)

(assert (= bs!603453 (and d!1266009 d!1265939)))

(assert (=> bs!603453 (= lambda!131643 lambda!131617)))

(declare-fun bs!603454 () Bool)

(assert (= bs!603454 (and d!1266009 d!1265963)))

(assert (=> bs!603454 (= lambda!131643 lambda!131629)))

(declare-fun bs!603455 () Bool)

(assert (= bs!603455 (and d!1266009 d!1265967)))

(assert (=> bs!603455 (= lambda!131643 lambda!131631)))

(declare-fun bs!603456 () Bool)

(assert (= bs!603456 (and d!1266009 d!1265951)))

(assert (=> bs!603456 (= lambda!131643 lambda!131622)))

(declare-fun bs!603457 () Bool)

(assert (= bs!603457 (and d!1266009 d!1265903)))

(assert (=> bs!603457 (= lambda!131643 lambda!131603)))

(declare-fun bs!603458 () Bool)

(assert (= bs!603458 (and d!1266009 d!1265979)))

(assert (=> bs!603458 (= lambda!131643 lambda!131634)))

(declare-fun bs!603459 () Bool)

(assert (= bs!603459 (and d!1266009 d!1265895)))

(assert (=> bs!603459 (= lambda!131643 lambda!131601)))

(declare-fun bs!603460 () Bool)

(assert (= bs!603460 (and d!1266009 d!1266001)))

(assert (=> bs!603460 (= lambda!131643 lambda!131641)))

(declare-fun bs!603461 () Bool)

(assert (= bs!603461 (and d!1266009 d!1265959)))

(assert (=> bs!603461 (= lambda!131643 lambda!131628)))

(assert (=> d!1266009 (= (inv!63342 (_2!26057 (_1!26058 (h!53230 mapDefault!20052)))) (forall!8559 (exprs!3373 (_2!26057 (_1!26058 (h!53230 mapDefault!20052)))) lambda!131643))))

(declare-fun bs!603462 () Bool)

(assert (= bs!603462 d!1266009))

(declare-fun m!4887623 () Bool)

(assert (=> bs!603462 m!4887623))

(assert (=> b!4294541 d!1266009))

(declare-fun bs!603463 () Bool)

(declare-fun d!1266011 () Bool)

(assert (= bs!603463 (and d!1266011 d!1265993)))

(declare-fun lambda!131644 () Int)

(assert (=> bs!603463 (= lambda!131644 lambda!131637)))

(declare-fun bs!603464 () Bool)

(assert (= bs!603464 (and d!1266011 d!1265845)))

(assert (=> bs!603464 (= lambda!131644 lambda!131583)))

(declare-fun bs!603465 () Bool)

(assert (= bs!603465 (and d!1266011 d!1265877)))

(assert (=> bs!603465 (= lambda!131644 lambda!131598)))

(declare-fun bs!603466 () Bool)

(assert (= bs!603466 (and d!1266011 d!1265947)))

(assert (=> bs!603466 (= lambda!131644 lambda!131621)))

(declare-fun bs!603467 () Bool)

(assert (= bs!603467 (and d!1266011 d!1265983)))

(assert (=> bs!603467 (= lambda!131644 lambda!131635)))

(declare-fun bs!603468 () Bool)

(assert (= bs!603468 (and d!1266011 d!1265965)))

(assert (=> bs!603468 (= lambda!131644 lambda!131630)))

(declare-fun bs!603469 () Bool)

(assert (= bs!603469 (and d!1266011 d!1266009)))

(assert (=> bs!603469 (= lambda!131644 lambda!131643)))

(declare-fun bs!603470 () Bool)

(assert (= bs!603470 (and d!1266011 d!1265957)))

(assert (=> bs!603470 (= lambda!131644 lambda!131627)))

(declare-fun bs!603471 () Bool)

(assert (= bs!603471 (and d!1266011 d!1265969)))

(assert (=> bs!603471 (= lambda!131644 lambda!131632)))

(declare-fun bs!603472 () Bool)

(assert (= bs!603472 (and d!1266011 d!1265865)))

(assert (=> bs!603472 (= lambda!131644 lambda!131587)))

(declare-fun bs!603473 () Bool)

(assert (= bs!603473 (and d!1266011 d!1265915)))

(assert (=> bs!603473 (= lambda!131644 lambda!131608)))

(declare-fun bs!603474 () Bool)

(assert (= bs!603474 (and d!1266011 d!1265973)))

(assert (=> bs!603474 (= lambda!131644 lambda!131633)))

(declare-fun bs!603475 () Bool)

(assert (= bs!603475 (and d!1266011 d!1265989)))

(assert (=> bs!603475 (= lambda!131644 lambda!131636)))

(declare-fun bs!603476 () Bool)

(assert (= bs!603476 (and d!1266011 d!1265939)))

(assert (=> bs!603476 (= lambda!131644 lambda!131617)))

(declare-fun bs!603477 () Bool)

(assert (= bs!603477 (and d!1266011 d!1265963)))

(assert (=> bs!603477 (= lambda!131644 lambda!131629)))

(declare-fun bs!603478 () Bool)

(assert (= bs!603478 (and d!1266011 d!1265967)))

(assert (=> bs!603478 (= lambda!131644 lambda!131631)))

(declare-fun bs!603479 () Bool)

(assert (= bs!603479 (and d!1266011 d!1265951)))

(assert (=> bs!603479 (= lambda!131644 lambda!131622)))

(declare-fun bs!603480 () Bool)

(assert (= bs!603480 (and d!1266011 d!1265903)))

(assert (=> bs!603480 (= lambda!131644 lambda!131603)))

(declare-fun bs!603481 () Bool)

(assert (= bs!603481 (and d!1266011 d!1265979)))

(assert (=> bs!603481 (= lambda!131644 lambda!131634)))

(declare-fun bs!603482 () Bool)

(assert (= bs!603482 (and d!1266011 d!1265895)))

(assert (=> bs!603482 (= lambda!131644 lambda!131601)))

(declare-fun bs!603483 () Bool)

(assert (= bs!603483 (and d!1266011 d!1266001)))

(assert (=> bs!603483 (= lambda!131644 lambda!131641)))

(declare-fun bs!603484 () Bool)

(assert (= bs!603484 (and d!1266011 d!1265959)))

(assert (=> bs!603484 (= lambda!131644 lambda!131628)))

(assert (=> d!1266011 (= (inv!63342 setElem!26643) (forall!8559 (exprs!3373 setElem!26643) lambda!131644))))

(declare-fun bs!603485 () Bool)

(assert (= bs!603485 d!1266011))

(declare-fun m!4887625 () Bool)

(assert (=> bs!603485 m!4887625))

(assert (=> setNonEmpty!26643 d!1266011))

(declare-fun bs!603486 () Bool)

(declare-fun d!1266013 () Bool)

(assert (= bs!603486 (and d!1266013 d!1265993)))

(declare-fun lambda!131645 () Int)

(assert (=> bs!603486 (= lambda!131645 lambda!131637)))

(declare-fun bs!603487 () Bool)

(assert (= bs!603487 (and d!1266013 d!1266011)))

(assert (=> bs!603487 (= lambda!131645 lambda!131644)))

(declare-fun bs!603488 () Bool)

(assert (= bs!603488 (and d!1266013 d!1265845)))

(assert (=> bs!603488 (= lambda!131645 lambda!131583)))

(declare-fun bs!603489 () Bool)

(assert (= bs!603489 (and d!1266013 d!1265877)))

(assert (=> bs!603489 (= lambda!131645 lambda!131598)))

(declare-fun bs!603490 () Bool)

(assert (= bs!603490 (and d!1266013 d!1265947)))

(assert (=> bs!603490 (= lambda!131645 lambda!131621)))

(declare-fun bs!603491 () Bool)

(assert (= bs!603491 (and d!1266013 d!1265983)))

(assert (=> bs!603491 (= lambda!131645 lambda!131635)))

(declare-fun bs!603492 () Bool)

(assert (= bs!603492 (and d!1266013 d!1265965)))

(assert (=> bs!603492 (= lambda!131645 lambda!131630)))

(declare-fun bs!603493 () Bool)

(assert (= bs!603493 (and d!1266013 d!1266009)))

(assert (=> bs!603493 (= lambda!131645 lambda!131643)))

(declare-fun bs!603494 () Bool)

(assert (= bs!603494 (and d!1266013 d!1265957)))

(assert (=> bs!603494 (= lambda!131645 lambda!131627)))

(declare-fun bs!603495 () Bool)

(assert (= bs!603495 (and d!1266013 d!1265969)))

(assert (=> bs!603495 (= lambda!131645 lambda!131632)))

(declare-fun bs!603496 () Bool)

(assert (= bs!603496 (and d!1266013 d!1265865)))

(assert (=> bs!603496 (= lambda!131645 lambda!131587)))

(declare-fun bs!603497 () Bool)

(assert (= bs!603497 (and d!1266013 d!1265915)))

(assert (=> bs!603497 (= lambda!131645 lambda!131608)))

(declare-fun bs!603498 () Bool)

(assert (= bs!603498 (and d!1266013 d!1265973)))

(assert (=> bs!603498 (= lambda!131645 lambda!131633)))

(declare-fun bs!603499 () Bool)

(assert (= bs!603499 (and d!1266013 d!1265989)))

(assert (=> bs!603499 (= lambda!131645 lambda!131636)))

(declare-fun bs!603500 () Bool)

(assert (= bs!603500 (and d!1266013 d!1265939)))

(assert (=> bs!603500 (= lambda!131645 lambda!131617)))

(declare-fun bs!603501 () Bool)

(assert (= bs!603501 (and d!1266013 d!1265963)))

(assert (=> bs!603501 (= lambda!131645 lambda!131629)))

(declare-fun bs!603502 () Bool)

(assert (= bs!603502 (and d!1266013 d!1265967)))

(assert (=> bs!603502 (= lambda!131645 lambda!131631)))

(declare-fun bs!603503 () Bool)

(assert (= bs!603503 (and d!1266013 d!1265951)))

(assert (=> bs!603503 (= lambda!131645 lambda!131622)))

(declare-fun bs!603504 () Bool)

(assert (= bs!603504 (and d!1266013 d!1265903)))

(assert (=> bs!603504 (= lambda!131645 lambda!131603)))

(declare-fun bs!603505 () Bool)

(assert (= bs!603505 (and d!1266013 d!1265979)))

(assert (=> bs!603505 (= lambda!131645 lambda!131634)))

(declare-fun bs!603506 () Bool)

(assert (= bs!603506 (and d!1266013 d!1265895)))

(assert (=> bs!603506 (= lambda!131645 lambda!131601)))

(declare-fun bs!603507 () Bool)

(assert (= bs!603507 (and d!1266013 d!1266001)))

(assert (=> bs!603507 (= lambda!131645 lambda!131641)))

(declare-fun bs!603508 () Bool)

(assert (= bs!603508 (and d!1266013 d!1265959)))

(assert (=> bs!603508 (= lambda!131645 lambda!131628)))

(assert (=> d!1266013 (= (inv!63342 setElem!26610) (forall!8559 (exprs!3373 setElem!26610) lambda!131645))))

(declare-fun bs!603509 () Bool)

(assert (= bs!603509 d!1266013))

(declare-fun m!4887627 () Bool)

(assert (=> bs!603509 m!4887627))

(assert (=> setNonEmpty!26610 d!1266013))

(declare-fun d!1266015 () Bool)

(assert (=> d!1266015 (= (get!15473 lt!1517786) (v!41761 lt!1517786))))

(assert (=> b!4294481 d!1266015))

(declare-fun b!4294938 () Bool)

(declare-fun c!730826 () Bool)

(declare-fun lt!1517863 () (InoxSet Context!5746))

(assert (=> b!4294938 (= c!730826 (nullableZipper!775 lt!1517863))))

(declare-fun e!2668943 () Int)

(declare-fun e!2668947 () Int)

(assert (=> b!4294938 (= e!2668943 e!2668947)))

(declare-fun b!4294939 () Bool)

(declare-fun e!2668944 () Int)

(assert (=> b!4294939 (= e!2668944 0)))

(declare-fun b!4294940 () Bool)

(assert (=> b!4294940 (= e!2668947 1)))

(declare-fun d!1266017 () Bool)

(declare-fun lt!1517864 () Int)

(assert (=> d!1266017 (and (>= lt!1517864 0) (<= lt!1517864 (- (size!35119 (totalInput!4392 cacheFindLongestMatch!183)) from!999)))))

(assert (=> d!1266017 (= lt!1517864 e!2668944)))

(declare-fun c!730825 () Bool)

(declare-fun e!2668946 () Bool)

(assert (=> d!1266017 (= c!730825 e!2668946)))

(declare-fun res!1760625 () Bool)

(assert (=> d!1266017 (=> res!1760625 e!2668946)))

(assert (=> d!1266017 (= res!1760625 (= from!999 (size!35119 (totalInput!4392 cacheFindLongestMatch!183))))))

(declare-fun e!2668945 () Bool)

(assert (=> d!1266017 e!2668945))

(declare-fun res!1760624 () Bool)

(assert (=> d!1266017 (=> (not res!1760624) (not e!2668945))))

(assert (=> d!1266017 (= res!1760624 (>= from!999 0))))

(assert (=> d!1266017 (= (findLongestMatchInnerZipperFastV2!42 z!3765 from!999 (totalInput!4392 cacheFindLongestMatch!183) (size!35119 (totalInput!4392 cacheFindLongestMatch!183))) lt!1517864)))

(declare-fun b!4294941 () Bool)

(assert (=> b!4294941 (= e!2668947 0)))

(declare-fun b!4294942 () Bool)

(assert (=> b!4294942 (= e!2668945 (<= from!999 (size!35119 (totalInput!4392 cacheFindLongestMatch!183))))))

(declare-fun b!4294943 () Bool)

(assert (=> b!4294943 (= e!2668944 e!2668943)))

(assert (=> b!4294943 (= lt!1517863 (derivationStepZipper!552 z!3765 (apply!10848 (totalInput!4392 cacheFindLongestMatch!183) from!999)))))

(declare-fun lt!1517862 () Int)

(assert (=> b!4294943 (= lt!1517862 (findLongestMatchInnerZipperFastV2!42 lt!1517863 (+ from!999 1) (totalInput!4392 cacheFindLongestMatch!183) (size!35119 (totalInput!4392 cacheFindLongestMatch!183))))))

(declare-fun c!730824 () Bool)

(assert (=> b!4294943 (= c!730824 (> lt!1517862 0))))

(declare-fun b!4294944 () Bool)

(assert (=> b!4294944 (= e!2668943 (+ 1 lt!1517862))))

(declare-fun b!4294945 () Bool)

(assert (=> b!4294945 (= e!2668946 (lostCauseZipper!655 z!3765))))

(assert (= (and d!1266017 res!1760624) b!4294942))

(assert (= (and d!1266017 (not res!1760625)) b!4294945))

(assert (= (and d!1266017 c!730825) b!4294939))

(assert (= (and d!1266017 (not c!730825)) b!4294943))

(assert (= (and b!4294943 c!730824) b!4294944))

(assert (= (and b!4294943 (not c!730824)) b!4294938))

(assert (= (and b!4294938 c!730826) b!4294940))

(assert (= (and b!4294938 (not c!730826)) b!4294941))

(declare-fun m!4887629 () Bool)

(assert (=> b!4294938 m!4887629))

(assert (=> b!4294942 m!4887164))

(declare-fun m!4887631 () Bool)

(assert (=> b!4294943 m!4887631))

(assert (=> b!4294943 m!4887631))

(declare-fun m!4887633 () Bool)

(assert (=> b!4294943 m!4887633))

(assert (=> b!4294943 m!4887164))

(declare-fun m!4887635 () Bool)

(assert (=> b!4294943 m!4887635))

(assert (=> b!4294945 m!4887044))

(assert (=> b!4294481 d!1266017))

(declare-fun d!1266019 () Bool)

(declare-fun lt!1517865 () Int)

(assert (=> d!1266019 (= lt!1517865 (size!35120 (list!17363 (totalInput!4392 cacheFindLongestMatch!183))))))

(assert (=> d!1266019 (= lt!1517865 (size!35121 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))))

(assert (=> d!1266019 (= (size!35119 (totalInput!4392 cacheFindLongestMatch!183)) lt!1517865)))

(declare-fun bs!603510 () Bool)

(assert (= bs!603510 d!1266019))

(declare-fun m!4887637 () Bool)

(assert (=> bs!603510 m!4887637))

(assert (=> bs!603510 m!4887637))

(declare-fun m!4887639 () Bool)

(assert (=> bs!603510 m!4887639))

(declare-fun m!4887641 () Bool)

(assert (=> bs!603510 m!4887641))

(assert (=> b!4294481 d!1266019))

(declare-fun bs!603511 () Bool)

(declare-fun b!4294947 () Bool)

(assert (= bs!603511 (and b!4294947 b!4294634)))

(declare-fun lambda!131646 () Int)

(assert (=> bs!603511 (= (= (totalInput!4392 (_2!26063 lt!1517719)) (totalInput!4392 cacheFindLongestMatch!183)) (= lambda!131646 lambda!131593))))

(declare-fun bs!603512 () Bool)

(assert (= bs!603512 (and b!4294947 b!4294644)))

(assert (=> bs!603512 (= (= (totalInput!4392 (_2!26063 lt!1517719)) (totalInput!4392 (_4!531 lt!1517726))) (= lambda!131646 lambda!131597))))

(declare-fun bs!603513 () Bool)

(assert (= bs!603513 (and b!4294947 b!4294670)))

(assert (=> bs!603513 (= (= (totalInput!4392 (_2!26063 lt!1517719)) (totalInput!4392 (_2!26064 lt!1517780))) (= lambda!131646 lambda!131600))))

(assert (=> b!4294947 true))

(declare-fun d!1266021 () Bool)

(declare-fun res!1760626 () Bool)

(declare-fun e!2668948 () Bool)

(assert (=> d!1266021 (=> (not res!1760626) (not e!2668948))))

(assert (=> d!1266021 (= res!1760626 (valid!3447 (cache!4510 (_2!26063 lt!1517719))))))

(assert (=> d!1266021 (= (validCacheMapFindLongestMatch!82 (cache!4510 (_2!26063 lt!1517719)) (totalInput!4392 (_2!26063 lt!1517719))) e!2668948)))

(declare-fun b!4294946 () Bool)

(declare-fun res!1760627 () Bool)

(assert (=> b!4294946 (=> (not res!1760627) (not e!2668948))))

(assert (=> b!4294946 (= res!1760627 (invariantList!514 (toList!2130 (map!9808 (cache!4510 (_2!26063 lt!1517719))))))))

(assert (=> b!4294947 (= e!2668948 (forall!8561 (toList!2130 (map!9808 (cache!4510 (_2!26063 lt!1517719)))) lambda!131646))))

(assert (= (and d!1266021 res!1760626) b!4294946))

(assert (= (and b!4294946 res!1760627) b!4294947))

(declare-fun m!4887643 () Bool)

(assert (=> d!1266021 m!4887643))

(declare-fun m!4887645 () Bool)

(assert (=> b!4294946 m!4887645))

(declare-fun m!4887647 () Bool)

(assert (=> b!4294946 m!4887647))

(assert (=> b!4294947 m!4887645))

(declare-fun m!4887649 () Bool)

(assert (=> b!4294947 m!4887649))

(assert (=> d!1265831 d!1266021))

(declare-fun bs!603514 () Bool)

(declare-fun b!4294949 () Bool)

(assert (= bs!603514 (and b!4294949 b!4294642)))

(declare-fun lambda!131647 () Int)

(assert (=> bs!603514 (= lambda!131647 lambda!131596)))

(declare-fun bs!603515 () Bool)

(assert (= bs!603515 (and b!4294949 b!4294892)))

(assert (=> bs!603515 (= lambda!131647 lambda!131626)))

(declare-fun d!1266023 () Bool)

(declare-fun res!1760628 () Bool)

(declare-fun e!2668949 () Bool)

(assert (=> d!1266023 (=> (not res!1760628) (not e!2668949))))

(assert (=> d!1266023 (= res!1760628 (valid!3448 (cache!4509 (_4!532 lt!1517719))))))

(assert (=> d!1266023 (= (validCacheMapUp!421 (cache!4509 (_4!532 lt!1517719))) e!2668949)))

(declare-fun b!4294948 () Bool)

(declare-fun res!1760629 () Bool)

(assert (=> b!4294948 (=> (not res!1760629) (not e!2668949))))

(assert (=> b!4294948 (= res!1760629 (invariantList!515 (toList!2131 (map!9809 (cache!4509 (_4!532 lt!1517719))))))))

(assert (=> b!4294949 (= e!2668949 (forall!8562 (toList!2131 (map!9809 (cache!4509 (_4!532 lt!1517719)))) lambda!131647))))

(assert (= (and d!1266023 res!1760628) b!4294948))

(assert (= (and b!4294948 res!1760629) b!4294949))

(declare-fun m!4887651 () Bool)

(assert (=> d!1266023 m!4887651))

(declare-fun m!4887653 () Bool)

(assert (=> b!4294948 m!4887653))

(declare-fun m!4887655 () Bool)

(assert (=> b!4294948 m!4887655))

(assert (=> b!4294949 m!4887653))

(declare-fun m!4887657 () Bool)

(assert (=> b!4294949 m!4887657))

(assert (=> d!1265817 d!1266023))

(declare-fun bs!603516 () Bool)

(declare-fun d!1266025 () Bool)

(assert (= bs!603516 (and d!1266025 d!1265993)))

(declare-fun lambda!131648 () Int)

(assert (=> bs!603516 (= lambda!131648 lambda!131637)))

(declare-fun bs!603517 () Bool)

(assert (= bs!603517 (and d!1266025 d!1266011)))

(assert (=> bs!603517 (= lambda!131648 lambda!131644)))

(declare-fun bs!603518 () Bool)

(assert (= bs!603518 (and d!1266025 d!1265845)))

(assert (=> bs!603518 (= lambda!131648 lambda!131583)))

(declare-fun bs!603519 () Bool)

(assert (= bs!603519 (and d!1266025 d!1265877)))

(assert (=> bs!603519 (= lambda!131648 lambda!131598)))

(declare-fun bs!603520 () Bool)

(assert (= bs!603520 (and d!1266025 d!1265947)))

(assert (=> bs!603520 (= lambda!131648 lambda!131621)))

(declare-fun bs!603521 () Bool)

(assert (= bs!603521 (and d!1266025 d!1265983)))

(assert (=> bs!603521 (= lambda!131648 lambda!131635)))

(declare-fun bs!603522 () Bool)

(assert (= bs!603522 (and d!1266025 d!1266013)))

(assert (=> bs!603522 (= lambda!131648 lambda!131645)))

(declare-fun bs!603523 () Bool)

(assert (= bs!603523 (and d!1266025 d!1265965)))

(assert (=> bs!603523 (= lambda!131648 lambda!131630)))

(declare-fun bs!603524 () Bool)

(assert (= bs!603524 (and d!1266025 d!1266009)))

(assert (=> bs!603524 (= lambda!131648 lambda!131643)))

(declare-fun bs!603525 () Bool)

(assert (= bs!603525 (and d!1266025 d!1265957)))

(assert (=> bs!603525 (= lambda!131648 lambda!131627)))

(declare-fun bs!603526 () Bool)

(assert (= bs!603526 (and d!1266025 d!1265969)))

(assert (=> bs!603526 (= lambda!131648 lambda!131632)))

(declare-fun bs!603527 () Bool)

(assert (= bs!603527 (and d!1266025 d!1265865)))

(assert (=> bs!603527 (= lambda!131648 lambda!131587)))

(declare-fun bs!603528 () Bool)

(assert (= bs!603528 (and d!1266025 d!1265915)))

(assert (=> bs!603528 (= lambda!131648 lambda!131608)))

(declare-fun bs!603529 () Bool)

(assert (= bs!603529 (and d!1266025 d!1265973)))

(assert (=> bs!603529 (= lambda!131648 lambda!131633)))

(declare-fun bs!603530 () Bool)

(assert (= bs!603530 (and d!1266025 d!1265989)))

(assert (=> bs!603530 (= lambda!131648 lambda!131636)))

(declare-fun bs!603531 () Bool)

(assert (= bs!603531 (and d!1266025 d!1265939)))

(assert (=> bs!603531 (= lambda!131648 lambda!131617)))

(declare-fun bs!603532 () Bool)

(assert (= bs!603532 (and d!1266025 d!1265963)))

(assert (=> bs!603532 (= lambda!131648 lambda!131629)))

(declare-fun bs!603533 () Bool)

(assert (= bs!603533 (and d!1266025 d!1265967)))

(assert (=> bs!603533 (= lambda!131648 lambda!131631)))

(declare-fun bs!603534 () Bool)

(assert (= bs!603534 (and d!1266025 d!1265951)))

(assert (=> bs!603534 (= lambda!131648 lambda!131622)))

(declare-fun bs!603535 () Bool)

(assert (= bs!603535 (and d!1266025 d!1265903)))

(assert (=> bs!603535 (= lambda!131648 lambda!131603)))

(declare-fun bs!603536 () Bool)

(assert (= bs!603536 (and d!1266025 d!1265979)))

(assert (=> bs!603536 (= lambda!131648 lambda!131634)))

(declare-fun bs!603537 () Bool)

(assert (= bs!603537 (and d!1266025 d!1265895)))

(assert (=> bs!603537 (= lambda!131648 lambda!131601)))

(declare-fun bs!603538 () Bool)

(assert (= bs!603538 (and d!1266025 d!1266001)))

(assert (=> bs!603538 (= lambda!131648 lambda!131641)))

(declare-fun bs!603539 () Bool)

(assert (= bs!603539 (and d!1266025 d!1265959)))

(assert (=> bs!603539 (= lambda!131648 lambda!131628)))

(assert (=> d!1266025 (= (inv!63342 setElem!26633) (forall!8559 (exprs!3373 setElem!26633) lambda!131648))))

(declare-fun bs!603540 () Bool)

(assert (= bs!603540 d!1266025))

(declare-fun m!4887659 () Bool)

(assert (=> bs!603540 m!4887659))

(assert (=> setNonEmpty!26633 d!1266025))

(declare-fun bs!603541 () Bool)

(declare-fun b!4294951 () Bool)

(assert (= bs!603541 (and b!4294951 b!4294927)))

(declare-fun lambda!131649 () Int)

(assert (=> bs!603541 (= lambda!131649 lambda!131640)))

(declare-fun d!1266027 () Bool)

(declare-fun res!1760630 () Bool)

(declare-fun e!2668950 () Bool)

(assert (=> d!1266027 (=> (not res!1760630) (not e!2668950))))

(assert (=> d!1266027 (= res!1760630 (valid!3449 (cache!4511 (_3!3278 lt!1517719))))))

(assert (=> d!1266027 (= (validCacheMapDown!452 (cache!4511 (_3!3278 lt!1517719))) e!2668950)))

(declare-fun b!4294950 () Bool)

(declare-fun res!1760631 () Bool)

(assert (=> b!4294950 (=> (not res!1760631) (not e!2668950))))

(assert (=> b!4294950 (= res!1760631 (invariantList!516 (toList!2132 (map!9810 (cache!4511 (_3!3278 lt!1517719))))))))

(assert (=> b!4294951 (= e!2668950 (forall!8563 (toList!2132 (map!9810 (cache!4511 (_3!3278 lt!1517719)))) lambda!131649))))

(assert (= (and d!1266027 res!1760630) b!4294950))

(assert (= (and b!4294950 res!1760631) b!4294951))

(declare-fun m!4887661 () Bool)

(assert (=> d!1266027 m!4887661))

(declare-fun m!4887663 () Bool)

(assert (=> b!4294950 m!4887663))

(declare-fun m!4887665 () Bool)

(assert (=> b!4294950 m!4887665))

(assert (=> b!4294951 m!4887663))

(declare-fun m!4887667 () Bool)

(assert (=> b!4294951 m!4887667))

(assert (=> d!1265809 d!1266027))

(declare-fun bs!603542 () Bool)

(declare-fun d!1266029 () Bool)

(assert (= bs!603542 (and d!1266029 d!1265993)))

(declare-fun lambda!131650 () Int)

(assert (=> bs!603542 (= lambda!131650 lambda!131637)))

(declare-fun bs!603543 () Bool)

(assert (= bs!603543 (and d!1266029 d!1266011)))

(assert (=> bs!603543 (= lambda!131650 lambda!131644)))

(declare-fun bs!603544 () Bool)

(assert (= bs!603544 (and d!1266029 d!1265845)))

(assert (=> bs!603544 (= lambda!131650 lambda!131583)))

(declare-fun bs!603545 () Bool)

(assert (= bs!603545 (and d!1266029 d!1265877)))

(assert (=> bs!603545 (= lambda!131650 lambda!131598)))

(declare-fun bs!603546 () Bool)

(assert (= bs!603546 (and d!1266029 d!1265947)))

(assert (=> bs!603546 (= lambda!131650 lambda!131621)))

(declare-fun bs!603547 () Bool)

(assert (= bs!603547 (and d!1266029 d!1265983)))

(assert (=> bs!603547 (= lambda!131650 lambda!131635)))

(declare-fun bs!603548 () Bool)

(assert (= bs!603548 (and d!1266029 d!1266013)))

(assert (=> bs!603548 (= lambda!131650 lambda!131645)))

(declare-fun bs!603549 () Bool)

(assert (= bs!603549 (and d!1266029 d!1265965)))

(assert (=> bs!603549 (= lambda!131650 lambda!131630)))

(declare-fun bs!603550 () Bool)

(assert (= bs!603550 (and d!1266029 d!1266009)))

(assert (=> bs!603550 (= lambda!131650 lambda!131643)))

(declare-fun bs!603551 () Bool)

(assert (= bs!603551 (and d!1266029 d!1265957)))

(assert (=> bs!603551 (= lambda!131650 lambda!131627)))

(declare-fun bs!603552 () Bool)

(assert (= bs!603552 (and d!1266029 d!1265969)))

(assert (=> bs!603552 (= lambda!131650 lambda!131632)))

(declare-fun bs!603553 () Bool)

(assert (= bs!603553 (and d!1266029 d!1265865)))

(assert (=> bs!603553 (= lambda!131650 lambda!131587)))

(declare-fun bs!603554 () Bool)

(assert (= bs!603554 (and d!1266029 d!1265915)))

(assert (=> bs!603554 (= lambda!131650 lambda!131608)))

(declare-fun bs!603555 () Bool)

(assert (= bs!603555 (and d!1266029 d!1265973)))

(assert (=> bs!603555 (= lambda!131650 lambda!131633)))

(declare-fun bs!603556 () Bool)

(assert (= bs!603556 (and d!1266029 d!1265989)))

(assert (=> bs!603556 (= lambda!131650 lambda!131636)))

(declare-fun bs!603557 () Bool)

(assert (= bs!603557 (and d!1266029 d!1265939)))

(assert (=> bs!603557 (= lambda!131650 lambda!131617)))

(declare-fun bs!603558 () Bool)

(assert (= bs!603558 (and d!1266029 d!1265963)))

(assert (=> bs!603558 (= lambda!131650 lambda!131629)))

(declare-fun bs!603559 () Bool)

(assert (= bs!603559 (and d!1266029 d!1265967)))

(assert (=> bs!603559 (= lambda!131650 lambda!131631)))

(declare-fun bs!603560 () Bool)

(assert (= bs!603560 (and d!1266029 d!1265903)))

(assert (=> bs!603560 (= lambda!131650 lambda!131603)))

(declare-fun bs!603561 () Bool)

(assert (= bs!603561 (and d!1266029 d!1265979)))

(assert (=> bs!603561 (= lambda!131650 lambda!131634)))

(declare-fun bs!603562 () Bool)

(assert (= bs!603562 (and d!1266029 d!1265895)))

(assert (=> bs!603562 (= lambda!131650 lambda!131601)))

(declare-fun bs!603563 () Bool)

(assert (= bs!603563 (and d!1266029 d!1266001)))

(assert (=> bs!603563 (= lambda!131650 lambda!131641)))

(declare-fun bs!603564 () Bool)

(assert (= bs!603564 (and d!1266029 d!1265959)))

(assert (=> bs!603564 (= lambda!131650 lambda!131628)))

(declare-fun bs!603565 () Bool)

(assert (= bs!603565 (and d!1266029 d!1265951)))

(assert (=> bs!603565 (= lambda!131650 lambda!131622)))

(declare-fun bs!603566 () Bool)

(assert (= bs!603566 (and d!1266029 d!1266025)))

(assert (=> bs!603566 (= lambda!131650 lambda!131648)))

(assert (=> d!1266029 (= (inv!63342 setElem!26618) (forall!8559 (exprs!3373 setElem!26618) lambda!131650))))

(declare-fun bs!603567 () Bool)

(assert (= bs!603567 d!1266029))

(declare-fun m!4887669 () Bool)

(assert (=> bs!603567 m!4887669))

(assert (=> setNonEmpty!26618 d!1266029))

(declare-fun bs!603568 () Bool)

(declare-fun d!1266031 () Bool)

(assert (= bs!603568 (and d!1266031 d!1265993)))

(declare-fun lambda!131651 () Int)

(assert (=> bs!603568 (= lambda!131651 lambda!131637)))

(declare-fun bs!603569 () Bool)

(assert (= bs!603569 (and d!1266031 d!1266011)))

(assert (=> bs!603569 (= lambda!131651 lambda!131644)))

(declare-fun bs!603570 () Bool)

(assert (= bs!603570 (and d!1266031 d!1265845)))

(assert (=> bs!603570 (= lambda!131651 lambda!131583)))

(declare-fun bs!603571 () Bool)

(assert (= bs!603571 (and d!1266031 d!1265877)))

(assert (=> bs!603571 (= lambda!131651 lambda!131598)))

(declare-fun bs!603572 () Bool)

(assert (= bs!603572 (and d!1266031 d!1265947)))

(assert (=> bs!603572 (= lambda!131651 lambda!131621)))

(declare-fun bs!603573 () Bool)

(assert (= bs!603573 (and d!1266031 d!1265983)))

(assert (=> bs!603573 (= lambda!131651 lambda!131635)))

(declare-fun bs!603574 () Bool)

(assert (= bs!603574 (and d!1266031 d!1266013)))

(assert (=> bs!603574 (= lambda!131651 lambda!131645)))

(declare-fun bs!603575 () Bool)

(assert (= bs!603575 (and d!1266031 d!1266029)))

(assert (=> bs!603575 (= lambda!131651 lambda!131650)))

(declare-fun bs!603576 () Bool)

(assert (= bs!603576 (and d!1266031 d!1265965)))

(assert (=> bs!603576 (= lambda!131651 lambda!131630)))

(declare-fun bs!603577 () Bool)

(assert (= bs!603577 (and d!1266031 d!1266009)))

(assert (=> bs!603577 (= lambda!131651 lambda!131643)))

(declare-fun bs!603578 () Bool)

(assert (= bs!603578 (and d!1266031 d!1265957)))

(assert (=> bs!603578 (= lambda!131651 lambda!131627)))

(declare-fun bs!603579 () Bool)

(assert (= bs!603579 (and d!1266031 d!1265969)))

(assert (=> bs!603579 (= lambda!131651 lambda!131632)))

(declare-fun bs!603580 () Bool)

(assert (= bs!603580 (and d!1266031 d!1265865)))

(assert (=> bs!603580 (= lambda!131651 lambda!131587)))

(declare-fun bs!603581 () Bool)

(assert (= bs!603581 (and d!1266031 d!1265915)))

(assert (=> bs!603581 (= lambda!131651 lambda!131608)))

(declare-fun bs!603582 () Bool)

(assert (= bs!603582 (and d!1266031 d!1265973)))

(assert (=> bs!603582 (= lambda!131651 lambda!131633)))

(declare-fun bs!603583 () Bool)

(assert (= bs!603583 (and d!1266031 d!1265989)))

(assert (=> bs!603583 (= lambda!131651 lambda!131636)))

(declare-fun bs!603584 () Bool)

(assert (= bs!603584 (and d!1266031 d!1265939)))

(assert (=> bs!603584 (= lambda!131651 lambda!131617)))

(declare-fun bs!603585 () Bool)

(assert (= bs!603585 (and d!1266031 d!1265963)))

(assert (=> bs!603585 (= lambda!131651 lambda!131629)))

(declare-fun bs!603586 () Bool)

(assert (= bs!603586 (and d!1266031 d!1265967)))

(assert (=> bs!603586 (= lambda!131651 lambda!131631)))

(declare-fun bs!603587 () Bool)

(assert (= bs!603587 (and d!1266031 d!1265903)))

(assert (=> bs!603587 (= lambda!131651 lambda!131603)))

(declare-fun bs!603588 () Bool)

(assert (= bs!603588 (and d!1266031 d!1265979)))

(assert (=> bs!603588 (= lambda!131651 lambda!131634)))

(declare-fun bs!603589 () Bool)

(assert (= bs!603589 (and d!1266031 d!1265895)))

(assert (=> bs!603589 (= lambda!131651 lambda!131601)))

(declare-fun bs!603590 () Bool)

(assert (= bs!603590 (and d!1266031 d!1266001)))

(assert (=> bs!603590 (= lambda!131651 lambda!131641)))

(declare-fun bs!603591 () Bool)

(assert (= bs!603591 (and d!1266031 d!1265959)))

(assert (=> bs!603591 (= lambda!131651 lambda!131628)))

(declare-fun bs!603592 () Bool)

(assert (= bs!603592 (and d!1266031 d!1265951)))

(assert (=> bs!603592 (= lambda!131651 lambda!131622)))

(declare-fun bs!603593 () Bool)

(assert (= bs!603593 (and d!1266031 d!1266025)))

(assert (=> bs!603593 (= lambda!131651 lambda!131648)))

(assert (=> d!1266031 (= (inv!63342 setElem!26630) (forall!8559 (exprs!3373 setElem!26630) lambda!131651))))

(declare-fun bs!603594 () Bool)

(assert (= bs!603594 d!1266031))

(declare-fun m!4887671 () Bool)

(assert (=> bs!603594 m!4887671))

(assert (=> setNonEmpty!26630 d!1266031))

(assert (=> b!4294416 d!1265807))

(declare-fun d!1266033 () Bool)

(assert (=> d!1266033 (= (inv!63346 (xs!17730 (c!730753 totalInput!812))) (<= (size!35120 (innerList!14512 (xs!17730 (c!730753 totalInput!812)))) 2147483647))))

(declare-fun bs!603595 () Bool)

(assert (= bs!603595 d!1266033))

(declare-fun m!4887673 () Bool)

(assert (=> bs!603595 m!4887673))

(assert (=> b!4294619 d!1266033))

(assert (=> b!4294458 d!1265863))

(assert (=> b!4294458 d!1265803))

(declare-fun b!4294952 () Bool)

(declare-fun c!730829 () Bool)

(declare-fun lt!1517867 () (InoxSet Context!5746))

(assert (=> b!4294952 (= c!730829 (nullableZipper!775 lt!1517867))))

(declare-fun e!2668951 () Int)

(declare-fun e!2668955 () Int)

(assert (=> b!4294952 (= e!2668951 e!2668955)))

(declare-fun b!4294953 () Bool)

(declare-fun e!2668952 () Int)

(assert (=> b!4294953 (= e!2668952 0)))

(declare-fun b!4294954 () Bool)

(assert (=> b!4294954 (= e!2668955 1)))

(declare-fun d!1266035 () Bool)

(declare-fun lt!1517868 () Int)

(assert (=> d!1266035 (and (>= lt!1517868 0) (<= lt!1517868 (- totalInputSize!257 (+ from!999 1))))))

(assert (=> d!1266035 (= lt!1517868 e!2668952)))

(declare-fun c!730828 () Bool)

(declare-fun e!2668954 () Bool)

(assert (=> d!1266035 (= c!730828 e!2668954)))

(declare-fun res!1760633 () Bool)

(assert (=> d!1266035 (=> res!1760633 e!2668954)))

(assert (=> d!1266035 (= res!1760633 (= (+ from!999 1) totalInputSize!257))))

(declare-fun e!2668953 () Bool)

(assert (=> d!1266035 e!2668953))

(declare-fun res!1760632 () Bool)

(assert (=> d!1266035 (=> (not res!1760632) (not e!2668953))))

(assert (=> d!1266035 (= res!1760632 (>= (+ from!999 1) 0))))

(assert (=> d!1266035 (= (findLongestMatchInnerZipperFastV2!42 lt!1517782 (+ from!999 1) totalInput!812 totalInputSize!257) lt!1517868)))

(declare-fun b!4294955 () Bool)

(assert (=> b!4294955 (= e!2668955 0)))

(declare-fun b!4294956 () Bool)

(assert (=> b!4294956 (= e!2668953 (<= (+ from!999 1) (size!35119 totalInput!812)))))

(declare-fun b!4294957 () Bool)

(assert (=> b!4294957 (= e!2668952 e!2668951)))

(assert (=> b!4294957 (= lt!1517867 (derivationStepZipper!552 lt!1517782 (apply!10848 totalInput!812 (+ from!999 1))))))

(declare-fun lt!1517866 () Int)

(assert (=> b!4294957 (= lt!1517866 (findLongestMatchInnerZipperFastV2!42 lt!1517867 (+ from!999 1 1) totalInput!812 totalInputSize!257))))

(declare-fun c!730827 () Bool)

(assert (=> b!4294957 (= c!730827 (> lt!1517866 0))))

(declare-fun b!4294958 () Bool)

(assert (=> b!4294958 (= e!2668951 (+ 1 lt!1517866))))

(declare-fun b!4294959 () Bool)

(assert (=> b!4294959 (= e!2668954 (lostCauseZipper!655 lt!1517782))))

(assert (= (and d!1266035 res!1760632) b!4294956))

(assert (= (and d!1266035 (not res!1760633)) b!4294959))

(assert (= (and d!1266035 c!730828) b!4294953))

(assert (= (and d!1266035 (not c!730828)) b!4294957))

(assert (= (and b!4294957 c!730827) b!4294958))

(assert (= (and b!4294957 (not c!730827)) b!4294952))

(assert (= (and b!4294952 c!730829) b!4294954))

(assert (= (and b!4294952 (not c!730829)) b!4294955))

(declare-fun m!4887675 () Bool)

(assert (=> b!4294952 m!4887675))

(assert (=> b!4294956 m!4886994))

(declare-fun m!4887677 () Bool)

(assert (=> b!4294957 m!4887677))

(assert (=> b!4294957 m!4887677))

(declare-fun m!4887679 () Bool)

(assert (=> b!4294957 m!4887679))

(declare-fun m!4887681 () Bool)

(assert (=> b!4294957 m!4887681))

(declare-fun m!4887683 () Bool)

(assert (=> b!4294959 m!4887683))

(assert (=> b!4294458 d!1266035))

(declare-fun bs!603596 () Bool)

(declare-fun d!1266037 () Bool)

(assert (= bs!603596 (and d!1266037 d!1265993)))

(declare-fun lambda!131652 () Int)

(assert (=> bs!603596 (= lambda!131652 lambda!131637)))

(declare-fun bs!603597 () Bool)

(assert (= bs!603597 (and d!1266037 d!1266011)))

(assert (=> bs!603597 (= lambda!131652 lambda!131644)))

(declare-fun bs!603598 () Bool)

(assert (= bs!603598 (and d!1266037 d!1265845)))

(assert (=> bs!603598 (= lambda!131652 lambda!131583)))

(declare-fun bs!603599 () Bool)

(assert (= bs!603599 (and d!1266037 d!1265877)))

(assert (=> bs!603599 (= lambda!131652 lambda!131598)))

(declare-fun bs!603600 () Bool)

(assert (= bs!603600 (and d!1266037 d!1265947)))

(assert (=> bs!603600 (= lambda!131652 lambda!131621)))

(declare-fun bs!603601 () Bool)

(assert (= bs!603601 (and d!1266037 d!1265983)))

(assert (=> bs!603601 (= lambda!131652 lambda!131635)))

(declare-fun bs!603602 () Bool)

(assert (= bs!603602 (and d!1266037 d!1266013)))

(assert (=> bs!603602 (= lambda!131652 lambda!131645)))

(declare-fun bs!603603 () Bool)

(assert (= bs!603603 (and d!1266037 d!1266029)))

(assert (=> bs!603603 (= lambda!131652 lambda!131650)))

(declare-fun bs!603604 () Bool)

(assert (= bs!603604 (and d!1266037 d!1265965)))

(assert (=> bs!603604 (= lambda!131652 lambda!131630)))

(declare-fun bs!603605 () Bool)

(assert (= bs!603605 (and d!1266037 d!1266009)))

(assert (=> bs!603605 (= lambda!131652 lambda!131643)))

(declare-fun bs!603606 () Bool)

(assert (= bs!603606 (and d!1266037 d!1265957)))

(assert (=> bs!603606 (= lambda!131652 lambda!131627)))

(declare-fun bs!603607 () Bool)

(assert (= bs!603607 (and d!1266037 d!1265969)))

(assert (=> bs!603607 (= lambda!131652 lambda!131632)))

(declare-fun bs!603608 () Bool)

(assert (= bs!603608 (and d!1266037 d!1265915)))

(assert (=> bs!603608 (= lambda!131652 lambda!131608)))

(declare-fun bs!603609 () Bool)

(assert (= bs!603609 (and d!1266037 d!1265973)))

(assert (=> bs!603609 (= lambda!131652 lambda!131633)))

(declare-fun bs!603610 () Bool)

(assert (= bs!603610 (and d!1266037 d!1265989)))

(assert (=> bs!603610 (= lambda!131652 lambda!131636)))

(declare-fun bs!603611 () Bool)

(assert (= bs!603611 (and d!1266037 d!1265939)))

(assert (=> bs!603611 (= lambda!131652 lambda!131617)))

(declare-fun bs!603612 () Bool)

(assert (= bs!603612 (and d!1266037 d!1265963)))

(assert (=> bs!603612 (= lambda!131652 lambda!131629)))

(declare-fun bs!603613 () Bool)

(assert (= bs!603613 (and d!1266037 d!1265967)))

(assert (=> bs!603613 (= lambda!131652 lambda!131631)))

(declare-fun bs!603614 () Bool)

(assert (= bs!603614 (and d!1266037 d!1266031)))

(assert (=> bs!603614 (= lambda!131652 lambda!131651)))

(declare-fun bs!603615 () Bool)

(assert (= bs!603615 (and d!1266037 d!1265865)))

(assert (=> bs!603615 (= lambda!131652 lambda!131587)))

(declare-fun bs!603616 () Bool)

(assert (= bs!603616 (and d!1266037 d!1265903)))

(assert (=> bs!603616 (= lambda!131652 lambda!131603)))

(declare-fun bs!603617 () Bool)

(assert (= bs!603617 (and d!1266037 d!1265979)))

(assert (=> bs!603617 (= lambda!131652 lambda!131634)))

(declare-fun bs!603618 () Bool)

(assert (= bs!603618 (and d!1266037 d!1265895)))

(assert (=> bs!603618 (= lambda!131652 lambda!131601)))

(declare-fun bs!603619 () Bool)

(assert (= bs!603619 (and d!1266037 d!1266001)))

(assert (=> bs!603619 (= lambda!131652 lambda!131641)))

(declare-fun bs!603620 () Bool)

(assert (= bs!603620 (and d!1266037 d!1265959)))

(assert (=> bs!603620 (= lambda!131652 lambda!131628)))

(declare-fun bs!603621 () Bool)

(assert (= bs!603621 (and d!1266037 d!1265951)))

(assert (=> bs!603621 (= lambda!131652 lambda!131622)))

(declare-fun bs!603622 () Bool)

(assert (= bs!603622 (and d!1266037 d!1266025)))

(assert (=> bs!603622 (= lambda!131652 lambda!131648)))

(assert (=> d!1266037 (= (inv!63342 (_1!26055 (_1!26056 (h!53232 (zeroValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))))) (forall!8559 (exprs!3373 (_1!26055 (_1!26056 (h!53232 (zeroValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))))) lambda!131652))))

(declare-fun bs!603623 () Bool)

(assert (= bs!603623 d!1266037))

(declare-fun m!4887685 () Bool)

(assert (=> bs!603623 m!4887685))

(assert (=> b!4294563 d!1266037))

(declare-fun bs!603624 () Bool)

(declare-fun d!1266039 () Bool)

(assert (= bs!603624 (and d!1266039 d!1265993)))

(declare-fun lambda!131653 () Int)

(assert (=> bs!603624 (= lambda!131653 lambda!131637)))

(declare-fun bs!603625 () Bool)

(assert (= bs!603625 (and d!1266039 d!1266011)))

(assert (=> bs!603625 (= lambda!131653 lambda!131644)))

(declare-fun bs!603626 () Bool)

(assert (= bs!603626 (and d!1266039 d!1265845)))

(assert (=> bs!603626 (= lambda!131653 lambda!131583)))

(declare-fun bs!603627 () Bool)

(assert (= bs!603627 (and d!1266039 d!1265877)))

(assert (=> bs!603627 (= lambda!131653 lambda!131598)))

(declare-fun bs!603628 () Bool)

(assert (= bs!603628 (and d!1266039 d!1265947)))

(assert (=> bs!603628 (= lambda!131653 lambda!131621)))

(declare-fun bs!603629 () Bool)

(assert (= bs!603629 (and d!1266039 d!1265983)))

(assert (=> bs!603629 (= lambda!131653 lambda!131635)))

(declare-fun bs!603630 () Bool)

(assert (= bs!603630 (and d!1266039 d!1266013)))

(assert (=> bs!603630 (= lambda!131653 lambda!131645)))

(declare-fun bs!603631 () Bool)

(assert (= bs!603631 (and d!1266039 d!1266029)))

(assert (=> bs!603631 (= lambda!131653 lambda!131650)))

(declare-fun bs!603632 () Bool)

(assert (= bs!603632 (and d!1266039 d!1265965)))

(assert (=> bs!603632 (= lambda!131653 lambda!131630)))

(declare-fun bs!603633 () Bool)

(assert (= bs!603633 (and d!1266039 d!1266009)))

(assert (=> bs!603633 (= lambda!131653 lambda!131643)))

(declare-fun bs!603634 () Bool)

(assert (= bs!603634 (and d!1266039 d!1265957)))

(assert (=> bs!603634 (= lambda!131653 lambda!131627)))

(declare-fun bs!603635 () Bool)

(assert (= bs!603635 (and d!1266039 d!1265969)))

(assert (=> bs!603635 (= lambda!131653 lambda!131632)))

(declare-fun bs!603636 () Bool)

(assert (= bs!603636 (and d!1266039 d!1265915)))

(assert (=> bs!603636 (= lambda!131653 lambda!131608)))

(declare-fun bs!603637 () Bool)

(assert (= bs!603637 (and d!1266039 d!1265989)))

(assert (=> bs!603637 (= lambda!131653 lambda!131636)))

(declare-fun bs!603638 () Bool)

(assert (= bs!603638 (and d!1266039 d!1265939)))

(assert (=> bs!603638 (= lambda!131653 lambda!131617)))

(declare-fun bs!603639 () Bool)

(assert (= bs!603639 (and d!1266039 d!1265963)))

(assert (=> bs!603639 (= lambda!131653 lambda!131629)))

(declare-fun bs!603640 () Bool)

(assert (= bs!603640 (and d!1266039 d!1265967)))

(assert (=> bs!603640 (= lambda!131653 lambda!131631)))

(declare-fun bs!603641 () Bool)

(assert (= bs!603641 (and d!1266039 d!1266031)))

(assert (=> bs!603641 (= lambda!131653 lambda!131651)))

(declare-fun bs!603642 () Bool)

(assert (= bs!603642 (and d!1266039 d!1265865)))

(assert (=> bs!603642 (= lambda!131653 lambda!131587)))

(declare-fun bs!603643 () Bool)

(assert (= bs!603643 (and d!1266039 d!1265973)))

(assert (=> bs!603643 (= lambda!131653 lambda!131633)))

(declare-fun bs!603644 () Bool)

(assert (= bs!603644 (and d!1266039 d!1266037)))

(assert (=> bs!603644 (= lambda!131653 lambda!131652)))

(declare-fun bs!603645 () Bool)

(assert (= bs!603645 (and d!1266039 d!1265903)))

(assert (=> bs!603645 (= lambda!131653 lambda!131603)))

(declare-fun bs!603646 () Bool)

(assert (= bs!603646 (and d!1266039 d!1265979)))

(assert (=> bs!603646 (= lambda!131653 lambda!131634)))

(declare-fun bs!603647 () Bool)

(assert (= bs!603647 (and d!1266039 d!1265895)))

(assert (=> bs!603647 (= lambda!131653 lambda!131601)))

(declare-fun bs!603648 () Bool)

(assert (= bs!603648 (and d!1266039 d!1266001)))

(assert (=> bs!603648 (= lambda!131653 lambda!131641)))

(declare-fun bs!603649 () Bool)

(assert (= bs!603649 (and d!1266039 d!1265959)))

(assert (=> bs!603649 (= lambda!131653 lambda!131628)))

(declare-fun bs!603650 () Bool)

(assert (= bs!603650 (and d!1266039 d!1265951)))

(assert (=> bs!603650 (= lambda!131653 lambda!131622)))

(declare-fun bs!603651 () Bool)

(assert (= bs!603651 (and d!1266039 d!1266025)))

(assert (=> bs!603651 (= lambda!131653 lambda!131648)))

(assert (=> d!1266039 (= (inv!63342 setElem!26626) (forall!8559 (exprs!3373 setElem!26626) lambda!131653))))

(declare-fun bs!603652 () Bool)

(assert (= bs!603652 d!1266039))

(declare-fun m!4887687 () Bool)

(assert (=> bs!603652 m!4887687))

(assert (=> setNonEmpty!26626 d!1266039))

(declare-fun bs!603653 () Bool)

(declare-fun b!4294961 () Bool)

(assert (= bs!603653 (and b!4294961 b!4294927)))

(declare-fun lambda!131654 () Int)

(assert (=> bs!603653 (= lambda!131654 lambda!131640)))

(declare-fun bs!603654 () Bool)

(assert (= bs!603654 (and b!4294961 b!4294951)))

(assert (=> bs!603654 (= lambda!131654 lambda!131649)))

(declare-fun d!1266041 () Bool)

(declare-fun res!1760634 () Bool)

(declare-fun e!2668956 () Bool)

(assert (=> d!1266041 (=> (not res!1760634) (not e!2668956))))

(assert (=> d!1266041 (= res!1760634 (valid!3449 (cache!4511 (_3!3276 lt!1517726))))))

(assert (=> d!1266041 (= (validCacheMapDown!452 (cache!4511 (_3!3276 lt!1517726))) e!2668956)))

(declare-fun b!4294960 () Bool)

(declare-fun res!1760635 () Bool)

(assert (=> b!4294960 (=> (not res!1760635) (not e!2668956))))

(assert (=> b!4294960 (= res!1760635 (invariantList!516 (toList!2132 (map!9810 (cache!4511 (_3!3276 lt!1517726))))))))

(assert (=> b!4294961 (= e!2668956 (forall!8563 (toList!2132 (map!9810 (cache!4511 (_3!3276 lt!1517726)))) lambda!131654))))

(assert (= (and d!1266041 res!1760634) b!4294960))

(assert (= (and b!4294960 res!1760635) b!4294961))

(declare-fun m!4887689 () Bool)

(assert (=> d!1266041 m!4887689))

(declare-fun m!4887691 () Bool)

(assert (=> b!4294960 m!4887691))

(declare-fun m!4887693 () Bool)

(assert (=> b!4294960 m!4887693))

(assert (=> b!4294961 m!4887691))

(declare-fun m!4887695 () Bool)

(assert (=> b!4294961 m!4887695))

(assert (=> d!1265805 d!1266041))

(declare-fun bs!603655 () Bool)

(declare-fun d!1266043 () Bool)

(assert (= bs!603655 (and d!1266043 d!1265993)))

(declare-fun lambda!131655 () Int)

(assert (=> bs!603655 (= lambda!131655 lambda!131637)))

(declare-fun bs!603656 () Bool)

(assert (= bs!603656 (and d!1266043 d!1266011)))

(assert (=> bs!603656 (= lambda!131655 lambda!131644)))

(declare-fun bs!603657 () Bool)

(assert (= bs!603657 (and d!1266043 d!1265845)))

(assert (=> bs!603657 (= lambda!131655 lambda!131583)))

(declare-fun bs!603658 () Bool)

(assert (= bs!603658 (and d!1266043 d!1265877)))

(assert (=> bs!603658 (= lambda!131655 lambda!131598)))

(declare-fun bs!603659 () Bool)

(assert (= bs!603659 (and d!1266043 d!1265947)))

(assert (=> bs!603659 (= lambda!131655 lambda!131621)))

(declare-fun bs!603660 () Bool)

(assert (= bs!603660 (and d!1266043 d!1265983)))

(assert (=> bs!603660 (= lambda!131655 lambda!131635)))

(declare-fun bs!603661 () Bool)

(assert (= bs!603661 (and d!1266043 d!1266013)))

(assert (=> bs!603661 (= lambda!131655 lambda!131645)))

(declare-fun bs!603662 () Bool)

(assert (= bs!603662 (and d!1266043 d!1266029)))

(assert (=> bs!603662 (= lambda!131655 lambda!131650)))

(declare-fun bs!603663 () Bool)

(assert (= bs!603663 (and d!1266043 d!1265965)))

(assert (=> bs!603663 (= lambda!131655 lambda!131630)))

(declare-fun bs!603664 () Bool)

(assert (= bs!603664 (and d!1266043 d!1266009)))

(assert (=> bs!603664 (= lambda!131655 lambda!131643)))

(declare-fun bs!603665 () Bool)

(assert (= bs!603665 (and d!1266043 d!1265957)))

(assert (=> bs!603665 (= lambda!131655 lambda!131627)))

(declare-fun bs!603666 () Bool)

(assert (= bs!603666 (and d!1266043 d!1265969)))

(assert (=> bs!603666 (= lambda!131655 lambda!131632)))

(declare-fun bs!603667 () Bool)

(assert (= bs!603667 (and d!1266043 d!1265915)))

(assert (=> bs!603667 (= lambda!131655 lambda!131608)))

(declare-fun bs!603668 () Bool)

(assert (= bs!603668 (and d!1266043 d!1265989)))

(assert (=> bs!603668 (= lambda!131655 lambda!131636)))

(declare-fun bs!603669 () Bool)

(assert (= bs!603669 (and d!1266043 d!1265939)))

(assert (=> bs!603669 (= lambda!131655 lambda!131617)))

(declare-fun bs!603670 () Bool)

(assert (= bs!603670 (and d!1266043 d!1265967)))

(assert (=> bs!603670 (= lambda!131655 lambda!131631)))

(declare-fun bs!603671 () Bool)

(assert (= bs!603671 (and d!1266043 d!1266031)))

(assert (=> bs!603671 (= lambda!131655 lambda!131651)))

(declare-fun bs!603672 () Bool)

(assert (= bs!603672 (and d!1266043 d!1265865)))

(assert (=> bs!603672 (= lambda!131655 lambda!131587)))

(declare-fun bs!603673 () Bool)

(assert (= bs!603673 (and d!1266043 d!1265973)))

(assert (=> bs!603673 (= lambda!131655 lambda!131633)))

(declare-fun bs!603674 () Bool)

(assert (= bs!603674 (and d!1266043 d!1266037)))

(assert (=> bs!603674 (= lambda!131655 lambda!131652)))

(declare-fun bs!603675 () Bool)

(assert (= bs!603675 (and d!1266043 d!1265903)))

(assert (=> bs!603675 (= lambda!131655 lambda!131603)))

(declare-fun bs!603676 () Bool)

(assert (= bs!603676 (and d!1266043 d!1265979)))

(assert (=> bs!603676 (= lambda!131655 lambda!131634)))

(declare-fun bs!603677 () Bool)

(assert (= bs!603677 (and d!1266043 d!1265895)))

(assert (=> bs!603677 (= lambda!131655 lambda!131601)))

(declare-fun bs!603678 () Bool)

(assert (= bs!603678 (and d!1266043 d!1266001)))

(assert (=> bs!603678 (= lambda!131655 lambda!131641)))

(declare-fun bs!603679 () Bool)

(assert (= bs!603679 (and d!1266043 d!1265959)))

(assert (=> bs!603679 (= lambda!131655 lambda!131628)))

(declare-fun bs!603680 () Bool)

(assert (= bs!603680 (and d!1266043 d!1265963)))

(assert (=> bs!603680 (= lambda!131655 lambda!131629)))

(declare-fun bs!603681 () Bool)

(assert (= bs!603681 (and d!1266043 d!1266039)))

(assert (=> bs!603681 (= lambda!131655 lambda!131653)))

(declare-fun bs!603682 () Bool)

(assert (= bs!603682 (and d!1266043 d!1265951)))

(assert (=> bs!603682 (= lambda!131655 lambda!131622)))

(declare-fun bs!603683 () Bool)

(assert (= bs!603683 (and d!1266043 d!1266025)))

(assert (=> bs!603683 (= lambda!131655 lambda!131648)))

(assert (=> d!1266043 (= (inv!63342 setElem!26623) (forall!8559 (exprs!3373 setElem!26623) lambda!131655))))

(declare-fun bs!603684 () Bool)

(assert (= bs!603684 d!1266043))

(declare-fun m!4887697 () Bool)

(assert (=> bs!603684 m!4887697))

(assert (=> setNonEmpty!26623 d!1266043))

(assert (=> b!4294460 d!1265827))

(declare-fun bs!603685 () Bool)

(declare-fun d!1266045 () Bool)

(assert (= bs!603685 (and d!1266045 d!1265993)))

(declare-fun lambda!131656 () Int)

(assert (=> bs!603685 (= lambda!131656 lambda!131637)))

(declare-fun bs!603686 () Bool)

(assert (= bs!603686 (and d!1266045 d!1266011)))

(assert (=> bs!603686 (= lambda!131656 lambda!131644)))

(declare-fun bs!603687 () Bool)

(assert (= bs!603687 (and d!1266045 d!1265845)))

(assert (=> bs!603687 (= lambda!131656 lambda!131583)))

(declare-fun bs!603688 () Bool)

(assert (= bs!603688 (and d!1266045 d!1265877)))

(assert (=> bs!603688 (= lambda!131656 lambda!131598)))

(declare-fun bs!603689 () Bool)

(assert (= bs!603689 (and d!1266045 d!1265947)))

(assert (=> bs!603689 (= lambda!131656 lambda!131621)))

(declare-fun bs!603690 () Bool)

(assert (= bs!603690 (and d!1266045 d!1265983)))

(assert (=> bs!603690 (= lambda!131656 lambda!131635)))

(declare-fun bs!603691 () Bool)

(assert (= bs!603691 (and d!1266045 d!1266013)))

(assert (=> bs!603691 (= lambda!131656 lambda!131645)))

(declare-fun bs!603692 () Bool)

(assert (= bs!603692 (and d!1266045 d!1266029)))

(assert (=> bs!603692 (= lambda!131656 lambda!131650)))

(declare-fun bs!603693 () Bool)

(assert (= bs!603693 (and d!1266045 d!1266009)))

(assert (=> bs!603693 (= lambda!131656 lambda!131643)))

(declare-fun bs!603694 () Bool)

(assert (= bs!603694 (and d!1266045 d!1265957)))

(assert (=> bs!603694 (= lambda!131656 lambda!131627)))

(declare-fun bs!603695 () Bool)

(assert (= bs!603695 (and d!1266045 d!1265969)))

(assert (=> bs!603695 (= lambda!131656 lambda!131632)))

(declare-fun bs!603696 () Bool)

(assert (= bs!603696 (and d!1266045 d!1265915)))

(assert (=> bs!603696 (= lambda!131656 lambda!131608)))

(declare-fun bs!603697 () Bool)

(assert (= bs!603697 (and d!1266045 d!1265989)))

(assert (=> bs!603697 (= lambda!131656 lambda!131636)))

(declare-fun bs!603698 () Bool)

(assert (= bs!603698 (and d!1266045 d!1265939)))

(assert (=> bs!603698 (= lambda!131656 lambda!131617)))

(declare-fun bs!603699 () Bool)

(assert (= bs!603699 (and d!1266045 d!1265967)))

(assert (=> bs!603699 (= lambda!131656 lambda!131631)))

(declare-fun bs!603700 () Bool)

(assert (= bs!603700 (and d!1266045 d!1265965)))

(assert (=> bs!603700 (= lambda!131656 lambda!131630)))

(declare-fun bs!603701 () Bool)

(assert (= bs!603701 (and d!1266045 d!1266043)))

(assert (=> bs!603701 (= lambda!131656 lambda!131655)))

(declare-fun bs!603702 () Bool)

(assert (= bs!603702 (and d!1266045 d!1266031)))

(assert (=> bs!603702 (= lambda!131656 lambda!131651)))

(declare-fun bs!603703 () Bool)

(assert (= bs!603703 (and d!1266045 d!1265865)))

(assert (=> bs!603703 (= lambda!131656 lambda!131587)))

(declare-fun bs!603704 () Bool)

(assert (= bs!603704 (and d!1266045 d!1265973)))

(assert (=> bs!603704 (= lambda!131656 lambda!131633)))

(declare-fun bs!603705 () Bool)

(assert (= bs!603705 (and d!1266045 d!1266037)))

(assert (=> bs!603705 (= lambda!131656 lambda!131652)))

(declare-fun bs!603706 () Bool)

(assert (= bs!603706 (and d!1266045 d!1265903)))

(assert (=> bs!603706 (= lambda!131656 lambda!131603)))

(declare-fun bs!603707 () Bool)

(assert (= bs!603707 (and d!1266045 d!1265979)))

(assert (=> bs!603707 (= lambda!131656 lambda!131634)))

(declare-fun bs!603708 () Bool)

(assert (= bs!603708 (and d!1266045 d!1265895)))

(assert (=> bs!603708 (= lambda!131656 lambda!131601)))

(declare-fun bs!603709 () Bool)

(assert (= bs!603709 (and d!1266045 d!1266001)))

(assert (=> bs!603709 (= lambda!131656 lambda!131641)))

(declare-fun bs!603710 () Bool)

(assert (= bs!603710 (and d!1266045 d!1265959)))

(assert (=> bs!603710 (= lambda!131656 lambda!131628)))

(declare-fun bs!603711 () Bool)

(assert (= bs!603711 (and d!1266045 d!1265963)))

(assert (=> bs!603711 (= lambda!131656 lambda!131629)))

(declare-fun bs!603712 () Bool)

(assert (= bs!603712 (and d!1266045 d!1266039)))

(assert (=> bs!603712 (= lambda!131656 lambda!131653)))

(declare-fun bs!603713 () Bool)

(assert (= bs!603713 (and d!1266045 d!1265951)))

(assert (=> bs!603713 (= lambda!131656 lambda!131622)))

(declare-fun bs!603714 () Bool)

(assert (= bs!603714 (and d!1266045 d!1266025)))

(assert (=> bs!603714 (= lambda!131656 lambda!131648)))

(assert (=> d!1266045 (= (inv!63342 setElem!26622) (forall!8559 (exprs!3373 setElem!26622) lambda!131656))))

(declare-fun bs!603715 () Bool)

(assert (= bs!603715 d!1266045))

(declare-fun m!4887699 () Bool)

(assert (=> bs!603715 m!4887699))

(assert (=> setNonEmpty!26622 d!1266045))

(declare-fun bs!603716 () Bool)

(declare-fun d!1266047 () Bool)

(assert (= bs!603716 (and d!1266047 d!1265867)))

(declare-fun lambda!131659 () Int)

(assert (=> bs!603716 (= (= lambda!131577 (ite c!730775 lambda!131578 lambda!131579)) (= lambda!131659 lambda!131590))))

(declare-fun bs!603717 () Bool)

(assert (= bs!603717 (and d!1266047 b!4294449)))

(assert (=> bs!603717 (not (= lambda!131659 lambda!131579))))

(declare-fun bs!603718 () Bool)

(assert (= bs!603718 (and d!1266047 d!1265953)))

(assert (=> bs!603718 (= lambda!131659 lambda!131625)))

(declare-fun bs!603719 () Bool)

(assert (= bs!603719 (and d!1266047 d!1265913)))

(assert (=> bs!603719 (not (= lambda!131659 lambda!131605))))

(declare-fun bs!603720 () Bool)

(assert (= bs!603720 (and d!1266047 d!1265897)))

(assert (=> bs!603720 (not (= lambda!131659 lambda!131602))))

(declare-fun bs!603721 () Bool)

(assert (= bs!603721 (and d!1266047 b!4294448)))

(assert (=> bs!603721 (not (= lambda!131659 lambda!131578))))

(declare-fun bs!603722 () Bool)

(assert (= bs!603722 (and d!1266047 d!1265907)))

(assert (=> bs!603722 (not (= lambda!131659 lambda!131604))))

(declare-fun bs!603723 () Bool)

(assert (= bs!603723 (and d!1266047 d!1265941)))

(assert (=> bs!603723 (not (= lambda!131659 lambda!131618))))

(declare-fun bs!603724 () Bool)

(assert (= bs!603724 (and d!1266047 b!4294832)))

(assert (=> bs!603724 (not (= lambda!131659 lambda!131619))))

(declare-fun bs!603725 () Bool)

(assert (= bs!603725 (and d!1266047 b!4294833)))

(assert (=> bs!603725 (not (= lambda!131659 lambda!131620))))

(declare-fun bs!603726 () Bool)

(assert (= bs!603726 (and d!1266047 d!1265827)))

(assert (=> bs!603726 (not (= lambda!131659 lambda!131577))))

(declare-fun bs!603727 () Bool)

(assert (= bs!603727 (and d!1266047 b!4294786)))

(assert (=> bs!603727 (not (= lambda!131659 lambda!131607))))

(declare-fun bs!603728 () Bool)

(assert (= bs!603728 (and d!1266047 b!4294785)))

(assert (=> bs!603728 (not (= lambda!131659 lambda!131606))))

(declare-fun bs!603729 () Bool)

(assert (= bs!603729 (and d!1266047 d!1265833)))

(assert (=> bs!603729 (not (= lambda!131659 lambda!131580))))

(declare-fun bs!603730 () Bool)

(assert (= bs!603730 (and d!1266047 d!1265813)))

(assert (=> bs!603730 (not (= lambda!131659 lambda!131564))))

(declare-fun bs!603731 () Bool)

(assert (= bs!603731 (and d!1266047 d!1265881)))

(assert (=> bs!603731 (not (= lambda!131659 lambda!131599))))

(declare-fun bs!603732 () Bool)

(assert (= bs!603732 (and d!1266047 d!1265919)))

(assert (=> bs!603732 (not (= lambda!131659 lambda!131615))))

(assert (=> d!1266047 true))

(assert (=> d!1266047 (< (dynLambda!20326 order!25041 lambda!131577) (dynLambda!20326 order!25041 lambda!131659))))

(assert (=> d!1266047 (exists!1228 lt!1517772 lambda!131659)))

(declare-fun lt!1517871 () Unit!66424)

(declare-fun choose!26157 (List!47938 Int) Unit!66424)

(assert (=> d!1266047 (= lt!1517871 (choose!26157 lt!1517772 lambda!131577))))

(assert (=> d!1266047 (not (forall!8560 lt!1517772 lambda!131577))))

(assert (=> d!1266047 (= (lemmaNotForallThenExists!174 lt!1517772 lambda!131577) lt!1517871)))

(declare-fun bs!603733 () Bool)

(assert (= bs!603733 d!1266047))

(declare-fun m!4887701 () Bool)

(assert (=> bs!603733 m!4887701))

(declare-fun m!4887703 () Bool)

(assert (=> bs!603733 m!4887703))

(declare-fun m!4887705 () Bool)

(assert (=> bs!603733 m!4887705))

(assert (=> b!4294448 d!1266047))

(declare-fun d!1266049 () Bool)

(declare-fun res!1760640 () Bool)

(declare-fun e!2668963 () Bool)

(assert (=> d!1266049 (=> res!1760640 e!2668963)))

(assert (=> d!1266049 (= res!1760640 ((_ is Nil!47809) (exprs!3373 setElem!26604)))))

(assert (=> d!1266049 (= (forall!8559 (exprs!3373 setElem!26604) lambda!131583) e!2668963)))

(declare-fun b!4294966 () Bool)

(declare-fun e!2668964 () Bool)

(assert (=> b!4294966 (= e!2668963 e!2668964)))

(declare-fun res!1760641 () Bool)

(assert (=> b!4294966 (=> (not res!1760641) (not e!2668964))))

(declare-fun dynLambda!20327 (Int Regex!12983) Bool)

(assert (=> b!4294966 (= res!1760641 (dynLambda!20327 lambda!131583 (h!53229 (exprs!3373 setElem!26604))))))

(declare-fun b!4294967 () Bool)

(assert (=> b!4294967 (= e!2668964 (forall!8559 (t!354537 (exprs!3373 setElem!26604)) lambda!131583))))

(assert (= (and d!1266049 (not res!1760640)) b!4294966))

(assert (= (and b!4294966 res!1760641) b!4294967))

(declare-fun b_lambda!126117 () Bool)

(assert (=> (not b_lambda!126117) (not b!4294966)))

(declare-fun m!4887707 () Bool)

(assert (=> b!4294966 m!4887707))

(declare-fun m!4887709 () Bool)

(assert (=> b!4294967 m!4887709))

(assert (=> d!1265845 d!1266049))

(assert (=> b!4294391 d!1265859))

(declare-fun bs!603734 () Bool)

(declare-fun d!1266051 () Bool)

(assert (= bs!603734 (and d!1266051 d!1265993)))

(declare-fun lambda!131660 () Int)

(assert (=> bs!603734 (= lambda!131660 lambda!131637)))

(declare-fun bs!603735 () Bool)

(assert (= bs!603735 (and d!1266051 d!1266011)))

(assert (=> bs!603735 (= lambda!131660 lambda!131644)))

(declare-fun bs!603736 () Bool)

(assert (= bs!603736 (and d!1266051 d!1265845)))

(assert (=> bs!603736 (= lambda!131660 lambda!131583)))

(declare-fun bs!603737 () Bool)

(assert (= bs!603737 (and d!1266051 d!1265877)))

(assert (=> bs!603737 (= lambda!131660 lambda!131598)))

(declare-fun bs!603738 () Bool)

(assert (= bs!603738 (and d!1266051 d!1265947)))

(assert (=> bs!603738 (= lambda!131660 lambda!131621)))

(declare-fun bs!603739 () Bool)

(assert (= bs!603739 (and d!1266051 d!1265983)))

(assert (=> bs!603739 (= lambda!131660 lambda!131635)))

(declare-fun bs!603740 () Bool)

(assert (= bs!603740 (and d!1266051 d!1266013)))

(assert (=> bs!603740 (= lambda!131660 lambda!131645)))

(declare-fun bs!603741 () Bool)

(assert (= bs!603741 (and d!1266051 d!1266029)))

(assert (=> bs!603741 (= lambda!131660 lambda!131650)))

(declare-fun bs!603742 () Bool)

(assert (= bs!603742 (and d!1266051 d!1266009)))

(assert (=> bs!603742 (= lambda!131660 lambda!131643)))

(declare-fun bs!603743 () Bool)

(assert (= bs!603743 (and d!1266051 d!1265957)))

(assert (=> bs!603743 (= lambda!131660 lambda!131627)))

(declare-fun bs!603744 () Bool)

(assert (= bs!603744 (and d!1266051 d!1265969)))

(assert (=> bs!603744 (= lambda!131660 lambda!131632)))

(declare-fun bs!603745 () Bool)

(assert (= bs!603745 (and d!1266051 d!1265915)))

(assert (=> bs!603745 (= lambda!131660 lambda!131608)))

(declare-fun bs!603746 () Bool)

(assert (= bs!603746 (and d!1266051 d!1265989)))

(assert (=> bs!603746 (= lambda!131660 lambda!131636)))

(declare-fun bs!603747 () Bool)

(assert (= bs!603747 (and d!1266051 d!1265939)))

(assert (=> bs!603747 (= lambda!131660 lambda!131617)))

(declare-fun bs!603748 () Bool)

(assert (= bs!603748 (and d!1266051 d!1266045)))

(assert (=> bs!603748 (= lambda!131660 lambda!131656)))

(declare-fun bs!603749 () Bool)

(assert (= bs!603749 (and d!1266051 d!1265967)))

(assert (=> bs!603749 (= lambda!131660 lambda!131631)))

(declare-fun bs!603750 () Bool)

(assert (= bs!603750 (and d!1266051 d!1265965)))

(assert (=> bs!603750 (= lambda!131660 lambda!131630)))

(declare-fun bs!603751 () Bool)

(assert (= bs!603751 (and d!1266051 d!1266043)))

(assert (=> bs!603751 (= lambda!131660 lambda!131655)))

(declare-fun bs!603752 () Bool)

(assert (= bs!603752 (and d!1266051 d!1266031)))

(assert (=> bs!603752 (= lambda!131660 lambda!131651)))

(declare-fun bs!603753 () Bool)

(assert (= bs!603753 (and d!1266051 d!1265865)))

(assert (=> bs!603753 (= lambda!131660 lambda!131587)))

(declare-fun bs!603754 () Bool)

(assert (= bs!603754 (and d!1266051 d!1265973)))

(assert (=> bs!603754 (= lambda!131660 lambda!131633)))

(declare-fun bs!603755 () Bool)

(assert (= bs!603755 (and d!1266051 d!1266037)))

(assert (=> bs!603755 (= lambda!131660 lambda!131652)))

(declare-fun bs!603756 () Bool)

(assert (= bs!603756 (and d!1266051 d!1265903)))

(assert (=> bs!603756 (= lambda!131660 lambda!131603)))

(declare-fun bs!603757 () Bool)

(assert (= bs!603757 (and d!1266051 d!1265979)))

(assert (=> bs!603757 (= lambda!131660 lambda!131634)))

(declare-fun bs!603758 () Bool)

(assert (= bs!603758 (and d!1266051 d!1265895)))

(assert (=> bs!603758 (= lambda!131660 lambda!131601)))

(declare-fun bs!603759 () Bool)

(assert (= bs!603759 (and d!1266051 d!1266001)))

(assert (=> bs!603759 (= lambda!131660 lambda!131641)))

(declare-fun bs!603760 () Bool)

(assert (= bs!603760 (and d!1266051 d!1265959)))

(assert (=> bs!603760 (= lambda!131660 lambda!131628)))

(declare-fun bs!603761 () Bool)

(assert (= bs!603761 (and d!1266051 d!1265963)))

(assert (=> bs!603761 (= lambda!131660 lambda!131629)))

(declare-fun bs!603762 () Bool)

(assert (= bs!603762 (and d!1266051 d!1266039)))

(assert (=> bs!603762 (= lambda!131660 lambda!131653)))

(declare-fun bs!603763 () Bool)

(assert (= bs!603763 (and d!1266051 d!1265951)))

(assert (=> bs!603763 (= lambda!131660 lambda!131622)))

(declare-fun bs!603764 () Bool)

(assert (= bs!603764 (and d!1266051 d!1266025)))

(assert (=> bs!603764 (= lambda!131660 lambda!131648)))

(assert (=> d!1266051 (= (inv!63342 setElem!26624) (forall!8559 (exprs!3373 setElem!26624) lambda!131660))))

(declare-fun bs!603765 () Bool)

(assert (= bs!603765 d!1266051))

(declare-fun m!4887711 () Bool)

(assert (=> bs!603765 m!4887711))

(assert (=> setNonEmpty!26624 d!1266051))

(declare-fun b!4294968 () Bool)

(declare-fun e!2668965 () Bool)

(declare-fun tp!1318567 () Bool)

(declare-fun tp!1318568 () Bool)

(assert (=> b!4294968 (= e!2668965 (and tp!1318567 tp!1318568))))

(assert (=> b!4294556 (= tp!1318336 e!2668965)))

(assert (= (and b!4294556 ((_ is Cons!47809) (exprs!3373 (_2!26057 (_1!26058 (h!53230 mapValue!20045)))))) b!4294968))

(declare-fun b!4294969 () Bool)

(declare-fun e!2668966 () Bool)

(declare-fun tp!1318569 () Bool)

(declare-fun tp!1318570 () Bool)

(assert (=> b!4294969 (= e!2668966 (and tp!1318569 tp!1318570))))

(assert (=> b!4294511 (= tp!1318277 e!2668966)))

(assert (= (and b!4294511 ((_ is Cons!47809) (exprs!3373 (_1!26055 (_1!26056 (h!53232 mapValue!20049)))))) b!4294969))

(declare-fun b!4294970 () Bool)

(declare-fun e!2668967 () Bool)

(declare-fun tp!1318571 () Bool)

(declare-fun tp!1318572 () Bool)

(assert (=> b!4294970 (= e!2668967 (and tp!1318571 tp!1318572))))

(assert (=> b!4294562 (= tp!1318346 e!2668967)))

(assert (= (and b!4294562 ((_ is Cons!47809) (exprs!3373 (_2!26057 (_1!26058 (h!53230 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))))))) b!4294970))

(declare-fun b!4294971 () Bool)

(declare-fun e!2668968 () Bool)

(declare-fun tp!1318573 () Bool)

(declare-fun tp!1318574 () Bool)

(assert (=> b!4294971 (= e!2668968 (and tp!1318573 tp!1318574))))

(assert (=> b!4294559 (= tp!1318341 e!2668968)))

(assert (= (and b!4294559 ((_ is Cons!47809) (exprs!3373 (_2!26057 (_1!26058 (h!53230 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066)))))))))))) b!4294971))

(declare-fun b!4294972 () Bool)

(declare-fun e!2668969 () Bool)

(declare-fun tp!1318575 () Bool)

(declare-fun tp!1318576 () Bool)

(assert (=> b!4294972 (= e!2668969 (and tp!1318575 tp!1318576))))

(assert (=> b!4294601 (= tp!1318404 e!2668969)))

(assert (= (and b!4294601 ((_ is Cons!47809) (exprs!3373 setElem!26640))) b!4294972))

(declare-fun b!4294973 () Bool)

(declare-fun e!2668970 () Bool)

(declare-fun tp!1318577 () Bool)

(declare-fun tp!1318578 () Bool)

(assert (=> b!4294973 (= e!2668970 (and tp!1318577 tp!1318578))))

(assert (=> b!4294608 (= tp!1318409 e!2668970)))

(assert (= (and b!4294608 ((_ is Cons!47809) (exprs!3373 (_1!26055 (_1!26056 (h!53232 mapDefault!20044)))))) b!4294973))

(declare-fun setIsEmpty!26647 () Bool)

(declare-fun setRes!26647 () Bool)

(assert (=> setIsEmpty!26647 setRes!26647))

(declare-fun e!2668972 () Bool)

(assert (=> b!4294589 (= tp!1318382 e!2668972)))

(declare-fun b!4294974 () Bool)

(declare-fun tp!1318580 () Bool)

(assert (=> b!4294974 (= e!2668972 (and setRes!26647 tp!1318580))))

(declare-fun condSetEmpty!26647 () Bool)

(assert (=> b!4294974 (= condSetEmpty!26647 (= (_1!26059 (_1!26060 (h!53231 (t!354539 mapDefault!20046)))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setNonEmpty!26647 () Bool)

(declare-fun setElem!26647 () Context!5746)

(declare-fun tp!1318579 () Bool)

(declare-fun e!2668971 () Bool)

(assert (=> setNonEmpty!26647 (= setRes!26647 (and tp!1318579 (inv!63342 setElem!26647) e!2668971))))

(declare-fun setRest!26647 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26647 (= (_1!26059 (_1!26060 (h!53231 (t!354539 mapDefault!20046)))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26647 true) setRest!26647))))

(declare-fun b!4294975 () Bool)

(declare-fun tp!1318581 () Bool)

(assert (=> b!4294975 (= e!2668971 tp!1318581)))

(assert (= (and b!4294974 condSetEmpty!26647) setIsEmpty!26647))

(assert (= (and b!4294974 (not condSetEmpty!26647)) setNonEmpty!26647))

(assert (= setNonEmpty!26647 b!4294975))

(assert (= (and b!4294589 ((_ is Cons!47811) (t!354539 mapDefault!20046))) b!4294974))

(declare-fun m!4887713 () Bool)

(assert (=> setNonEmpty!26647 m!4887713))

(declare-fun b!4294976 () Bool)

(declare-fun e!2668973 () Bool)

(declare-fun tp!1318582 () Bool)

(declare-fun tp!1318583 () Bool)

(assert (=> b!4294976 (= e!2668973 (and tp!1318582 tp!1318583))))

(assert (=> b!4294512 (= tp!1318275 e!2668973)))

(assert (= (and b!4294512 ((_ is Cons!47809) (exprs!3373 setElem!26609))) b!4294976))

(declare-fun e!2668974 () Bool)

(declare-fun e!2668975 () Bool)

(declare-fun b!4294977 () Bool)

(declare-fun tp!1318584 () Bool)

(declare-fun setRes!26648 () Bool)

(assert (=> b!4294977 (= e!2668975 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 (t!354540 mapValue!20044))))) e!2668974 tp_is_empty!23123 setRes!26648 tp!1318584))))

(declare-fun condSetEmpty!26648 () Bool)

(assert (=> b!4294977 (= condSetEmpty!26648 (= (_2!26056 (h!53232 (t!354540 mapValue!20044))) ((as const (Array Context!5746 Bool)) false)))))

(assert (=> b!4294523 (= tp!1318287 e!2668975)))

(declare-fun setElem!26648 () Context!5746)

(declare-fun tp!1318586 () Bool)

(declare-fun e!2668976 () Bool)

(declare-fun setNonEmpty!26648 () Bool)

(assert (=> setNonEmpty!26648 (= setRes!26648 (and tp!1318586 (inv!63342 setElem!26648) e!2668976))))

(declare-fun setRest!26648 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26648 (= (_2!26056 (h!53232 (t!354540 mapValue!20044))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26648 true) setRest!26648))))

(declare-fun b!4294978 () Bool)

(declare-fun tp!1318585 () Bool)

(assert (=> b!4294978 (= e!2668974 tp!1318585)))

(declare-fun b!4294979 () Bool)

(declare-fun tp!1318587 () Bool)

(assert (=> b!4294979 (= e!2668976 tp!1318587)))

(declare-fun setIsEmpty!26648 () Bool)

(assert (=> setIsEmpty!26648 setRes!26648))

(assert (= b!4294977 b!4294978))

(assert (= (and b!4294977 condSetEmpty!26648) setIsEmpty!26648))

(assert (= (and b!4294977 (not condSetEmpty!26648)) setNonEmpty!26648))

(assert (= setNonEmpty!26648 b!4294979))

(assert (= (and b!4294523 ((_ is Cons!47812) (t!354540 mapValue!20044))) b!4294977))

(declare-fun m!4887715 () Bool)

(assert (=> b!4294977 m!4887715))

(declare-fun m!4887717 () Bool)

(assert (=> setNonEmpty!26648 m!4887717))

(declare-fun condSetEmpty!26649 () Bool)

(assert (=> setNonEmpty!26641 (= condSetEmpty!26649 (= setRest!26641 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26649 () Bool)

(assert (=> setNonEmpty!26641 (= tp!1318405 setRes!26649)))

(declare-fun setIsEmpty!26649 () Bool)

(assert (=> setIsEmpty!26649 setRes!26649))

(declare-fun setElem!26649 () Context!5746)

(declare-fun tp!1318588 () Bool)

(declare-fun e!2668977 () Bool)

(declare-fun setNonEmpty!26649 () Bool)

(assert (=> setNonEmpty!26649 (= setRes!26649 (and tp!1318588 (inv!63342 setElem!26649) e!2668977))))

(declare-fun setRest!26649 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26649 (= setRest!26641 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26649 true) setRest!26649))))

(declare-fun b!4294980 () Bool)

(declare-fun tp!1318589 () Bool)

(assert (=> b!4294980 (= e!2668977 tp!1318589)))

(assert (= (and setNonEmpty!26641 condSetEmpty!26649) setIsEmpty!26649))

(assert (= (and setNonEmpty!26641 (not condSetEmpty!26649)) setNonEmpty!26649))

(assert (= setNonEmpty!26649 b!4294980))

(declare-fun m!4887719 () Bool)

(assert (=> setNonEmpty!26649 m!4887719))

(declare-fun b!4294981 () Bool)

(declare-fun e!2668978 () Bool)

(declare-fun tp!1318590 () Bool)

(declare-fun tp!1318591 () Bool)

(assert (=> b!4294981 (= e!2668978 (and tp!1318590 tp!1318591))))

(assert (=> b!4294588 (= tp!1318380 e!2668978)))

(assert (= (and b!4294588 ((_ is Cons!47809) (exprs!3373 setElem!26633))) b!4294981))

(declare-fun b!4294982 () Bool)

(declare-fun e!2668979 () Bool)

(declare-fun tp!1318592 () Bool)

(declare-fun tp!1318593 () Bool)

(assert (=> b!4294982 (= e!2668979 (and tp!1318592 tp!1318593))))

(assert (=> b!4294543 (= tp!1318313 e!2668979)))

(assert (= (and b!4294543 ((_ is Cons!47809) (exprs!3373 setElem!26619))) b!4294982))

(declare-fun e!2668982 () Bool)

(assert (=> b!4294625 (= tp!1318427 e!2668982)))

(declare-fun b!4294995 () Bool)

(declare-fun tp!1318606 () Bool)

(assert (=> b!4294995 (= e!2668982 tp!1318606)))

(declare-fun b!4294994 () Bool)

(declare-fun tp!1318608 () Bool)

(declare-fun tp!1318607 () Bool)

(assert (=> b!4294994 (= e!2668982 (and tp!1318608 tp!1318607))))

(declare-fun b!4294996 () Bool)

(declare-fun tp!1318605 () Bool)

(declare-fun tp!1318604 () Bool)

(assert (=> b!4294996 (= e!2668982 (and tp!1318605 tp!1318604))))

(declare-fun b!4294993 () Bool)

(assert (=> b!4294993 (= e!2668982 tp_is_empty!23123)))

(assert (= (and b!4294625 ((_ is ElementMatch!12983) (_1!26057 (_1!26058 (h!53230 mapDefault!20045))))) b!4294993))

(assert (= (and b!4294625 ((_ is Concat!21302) (_1!26057 (_1!26058 (h!53230 mapDefault!20045))))) b!4294994))

(assert (= (and b!4294625 ((_ is Star!12983) (_1!26057 (_1!26058 (h!53230 mapDefault!20045))))) b!4294995))

(assert (= (and b!4294625 ((_ is Union!12983) (_1!26057 (_1!26058 (h!53230 mapDefault!20045))))) b!4294996))

(declare-fun b!4294997 () Bool)

(declare-fun e!2668984 () Bool)

(declare-fun tp!1318613 () Bool)

(assert (=> b!4294997 (= e!2668984 tp!1318613)))

(declare-fun setNonEmpty!26650 () Bool)

(declare-fun setRes!26650 () Bool)

(declare-fun setElem!26650 () Context!5746)

(declare-fun tp!1318610 () Bool)

(assert (=> setNonEmpty!26650 (= setRes!26650 (and tp!1318610 (inv!63342 setElem!26650) e!2668984))))

(declare-fun setRest!26650 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26650 (= (_2!26058 (h!53230 (t!354538 mapDefault!20045))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26650 true) setRest!26650))))

(declare-fun setIsEmpty!26650 () Bool)

(assert (=> setIsEmpty!26650 setRes!26650))

(declare-fun e!2668983 () Bool)

(assert (=> b!4294625 (= tp!1318424 e!2668983)))

(declare-fun b!4294998 () Bool)

(declare-fun tp!1318612 () Bool)

(declare-fun tp!1318609 () Bool)

(declare-fun e!2668985 () Bool)

(assert (=> b!4294998 (= e!2668983 (and tp!1318612 (inv!63342 (_2!26057 (_1!26058 (h!53230 (t!354538 mapDefault!20045))))) e!2668985 tp_is_empty!23123 setRes!26650 tp!1318609))))

(declare-fun condSetEmpty!26650 () Bool)

(assert (=> b!4294998 (= condSetEmpty!26650 (= (_2!26058 (h!53230 (t!354538 mapDefault!20045))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4294999 () Bool)

(declare-fun tp!1318611 () Bool)

(assert (=> b!4294999 (= e!2668985 tp!1318611)))

(assert (= b!4294998 b!4294999))

(assert (= (and b!4294998 condSetEmpty!26650) setIsEmpty!26650))

(assert (= (and b!4294998 (not condSetEmpty!26650)) setNonEmpty!26650))

(assert (= setNonEmpty!26650 b!4294997))

(assert (= (and b!4294625 ((_ is Cons!47810) (t!354538 mapDefault!20045))) b!4294998))

(declare-fun m!4887721 () Bool)

(assert (=> setNonEmpty!26650 m!4887721))

(declare-fun m!4887723 () Bool)

(assert (=> b!4294998 m!4887723))

(declare-fun b!4295000 () Bool)

(declare-fun e!2668986 () Bool)

(declare-fun tp!1318614 () Bool)

(declare-fun tp!1318615 () Bool)

(assert (=> b!4295000 (= e!2668986 (and tp!1318614 tp!1318615))))

(assert (=> b!4294567 (= tp!1318354 e!2668986)))

(assert (= (and b!4294567 ((_ is Cons!47809) (exprs!3373 (_1!26055 (_1!26056 (h!53232 (minValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))))))) b!4295000))

(declare-fun condSetEmpty!26651 () Bool)

(assert (=> setNonEmpty!26625 (= condSetEmpty!26651 (= setRest!26625 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26651 () Bool)

(assert (=> setNonEmpty!26625 (= tp!1318351 setRes!26651)))

(declare-fun setIsEmpty!26651 () Bool)

(assert (=> setIsEmpty!26651 setRes!26651))

(declare-fun setNonEmpty!26651 () Bool)

(declare-fun e!2668987 () Bool)

(declare-fun tp!1318616 () Bool)

(declare-fun setElem!26651 () Context!5746)

(assert (=> setNonEmpty!26651 (= setRes!26651 (and tp!1318616 (inv!63342 setElem!26651) e!2668987))))

(declare-fun setRest!26651 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26651 (= setRest!26625 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26651 true) setRest!26651))))

(declare-fun b!4295001 () Bool)

(declare-fun tp!1318617 () Bool)

(assert (=> b!4295001 (= e!2668987 tp!1318617)))

(assert (= (and setNonEmpty!26625 condSetEmpty!26651) setIsEmpty!26651))

(assert (= (and setNonEmpty!26625 (not condSetEmpty!26651)) setNonEmpty!26651))

(assert (= setNonEmpty!26651 b!4295001))

(declare-fun m!4887725 () Bool)

(assert (=> setNonEmpty!26651 m!4887725))

(declare-fun b!4295002 () Bool)

(declare-fun e!2668988 () Bool)

(declare-fun tp!1318618 () Bool)

(declare-fun tp!1318619 () Bool)

(assert (=> b!4295002 (= e!2668988 (and tp!1318618 tp!1318619))))

(assert (=> b!4294583 (= tp!1318374 e!2668988)))

(assert (= (and b!4294583 ((_ is Cons!47809) (exprs!3373 setElem!26630))) b!4295002))

(declare-fun tp!1318621 () Bool)

(declare-fun b!4295003 () Bool)

(declare-fun tp!1318622 () Bool)

(declare-fun e!2668990 () Bool)

(assert (=> b!4295003 (= e!2668990 (and (inv!63343 (left!35456 (left!35456 (c!730753 totalInput!812)))) tp!1318622 (inv!63343 (right!35786 (left!35456 (c!730753 totalInput!812)))) tp!1318621))))

(declare-fun b!4295005 () Bool)

(declare-fun e!2668989 () Bool)

(declare-fun tp!1318620 () Bool)

(assert (=> b!4295005 (= e!2668989 tp!1318620)))

(declare-fun b!4295004 () Bool)

(assert (=> b!4295004 (= e!2668990 (and (inv!63346 (xs!17730 (left!35456 (c!730753 totalInput!812)))) e!2668989))))

(assert (=> b!4294618 (= tp!1318420 (and (inv!63343 (left!35456 (c!730753 totalInput!812))) e!2668990))))

(assert (= (and b!4294618 ((_ is Node!14424) (left!35456 (c!730753 totalInput!812)))) b!4295003))

(assert (= b!4295004 b!4295005))

(assert (= (and b!4294618 ((_ is Leaf!22317) (left!35456 (c!730753 totalInput!812)))) b!4295004))

(declare-fun m!4887727 () Bool)

(assert (=> b!4295003 m!4887727))

(declare-fun m!4887729 () Bool)

(assert (=> b!4295003 m!4887729))

(declare-fun m!4887731 () Bool)

(assert (=> b!4295004 m!4887731))

(assert (=> b!4294618 m!4887246))

(declare-fun b!4295006 () Bool)

(declare-fun tp!1318625 () Bool)

(declare-fun e!2668992 () Bool)

(declare-fun tp!1318624 () Bool)

(assert (=> b!4295006 (= e!2668992 (and (inv!63343 (left!35456 (right!35786 (c!730753 totalInput!812)))) tp!1318625 (inv!63343 (right!35786 (right!35786 (c!730753 totalInput!812)))) tp!1318624))))

(declare-fun b!4295008 () Bool)

(declare-fun e!2668991 () Bool)

(declare-fun tp!1318623 () Bool)

(assert (=> b!4295008 (= e!2668991 tp!1318623)))

(declare-fun b!4295007 () Bool)

(assert (=> b!4295007 (= e!2668992 (and (inv!63346 (xs!17730 (right!35786 (c!730753 totalInput!812)))) e!2668991))))

(assert (=> b!4294618 (= tp!1318419 (and (inv!63343 (right!35786 (c!730753 totalInput!812))) e!2668992))))

(assert (= (and b!4294618 ((_ is Node!14424) (right!35786 (c!730753 totalInput!812)))) b!4295006))

(assert (= b!4295007 b!4295008))

(assert (= (and b!4294618 ((_ is Leaf!22317) (right!35786 (c!730753 totalInput!812)))) b!4295007))

(declare-fun m!4887733 () Bool)

(assert (=> b!4295006 m!4887733))

(declare-fun m!4887735 () Bool)

(assert (=> b!4295006 m!4887735))

(declare-fun m!4887737 () Bool)

(assert (=> b!4295007 m!4887737))

(assert (=> b!4294618 m!4887248))

(declare-fun e!2668993 () Bool)

(assert (=> b!4294544 (= tp!1318319 e!2668993)))

(declare-fun b!4295011 () Bool)

(declare-fun tp!1318628 () Bool)

(assert (=> b!4295011 (= e!2668993 tp!1318628)))

(declare-fun b!4295010 () Bool)

(declare-fun tp!1318630 () Bool)

(declare-fun tp!1318629 () Bool)

(assert (=> b!4295010 (= e!2668993 (and tp!1318630 tp!1318629))))

(declare-fun b!4295012 () Bool)

(declare-fun tp!1318627 () Bool)

(declare-fun tp!1318626 () Bool)

(assert (=> b!4295012 (= e!2668993 (and tp!1318627 tp!1318626))))

(declare-fun b!4295009 () Bool)

(assert (=> b!4295009 (= e!2668993 tp_is_empty!23123)))

(assert (= (and b!4294544 ((_ is ElementMatch!12983) (_1!26057 (_1!26058 (h!53230 mapValue!20052))))) b!4295009))

(assert (= (and b!4294544 ((_ is Concat!21302) (_1!26057 (_1!26058 (h!53230 mapValue!20052))))) b!4295010))

(assert (= (and b!4294544 ((_ is Star!12983) (_1!26057 (_1!26058 (h!53230 mapValue!20052))))) b!4295011))

(assert (= (and b!4294544 ((_ is Union!12983) (_1!26057 (_1!26058 (h!53230 mapValue!20052))))) b!4295012))

(declare-fun b!4295013 () Bool)

(declare-fun e!2668995 () Bool)

(declare-fun tp!1318635 () Bool)

(assert (=> b!4295013 (= e!2668995 tp!1318635)))

(declare-fun tp!1318632 () Bool)

(declare-fun setNonEmpty!26652 () Bool)

(declare-fun setRes!26652 () Bool)

(declare-fun setElem!26652 () Context!5746)

(assert (=> setNonEmpty!26652 (= setRes!26652 (and tp!1318632 (inv!63342 setElem!26652) e!2668995))))

(declare-fun setRest!26652 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26652 (= (_2!26058 (h!53230 (t!354538 mapValue!20052))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26652 true) setRest!26652))))

(declare-fun setIsEmpty!26652 () Bool)

(assert (=> setIsEmpty!26652 setRes!26652))

(declare-fun e!2668994 () Bool)

(assert (=> b!4294544 (= tp!1318315 e!2668994)))

(declare-fun tp!1318634 () Bool)

(declare-fun tp!1318631 () Bool)

(declare-fun b!4295014 () Bool)

(declare-fun e!2668996 () Bool)

(assert (=> b!4295014 (= e!2668994 (and tp!1318634 (inv!63342 (_2!26057 (_1!26058 (h!53230 (t!354538 mapValue!20052))))) e!2668996 tp_is_empty!23123 setRes!26652 tp!1318631))))

(declare-fun condSetEmpty!26652 () Bool)

(assert (=> b!4295014 (= condSetEmpty!26652 (= (_2!26058 (h!53230 (t!354538 mapValue!20052))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4295015 () Bool)

(declare-fun tp!1318633 () Bool)

(assert (=> b!4295015 (= e!2668996 tp!1318633)))

(assert (= b!4295014 b!4295015))

(assert (= (and b!4295014 condSetEmpty!26652) setIsEmpty!26652))

(assert (= (and b!4295014 (not condSetEmpty!26652)) setNonEmpty!26652))

(assert (= setNonEmpty!26652 b!4295013))

(assert (= (and b!4294544 ((_ is Cons!47810) (t!354538 mapValue!20052))) b!4295014))

(declare-fun m!4887739 () Bool)

(assert (=> setNonEmpty!26652 m!4887739))

(declare-fun m!4887741 () Bool)

(assert (=> b!4295014 m!4887741))

(declare-fun condSetEmpty!26653 () Bool)

(assert (=> setNonEmpty!26619 (= condSetEmpty!26653 (= setRest!26618 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26653 () Bool)

(assert (=> setNonEmpty!26619 (= tp!1318320 setRes!26653)))

(declare-fun setIsEmpty!26653 () Bool)

(assert (=> setIsEmpty!26653 setRes!26653))

(declare-fun setElem!26653 () Context!5746)

(declare-fun setNonEmpty!26653 () Bool)

(declare-fun tp!1318636 () Bool)

(declare-fun e!2668997 () Bool)

(assert (=> setNonEmpty!26653 (= setRes!26653 (and tp!1318636 (inv!63342 setElem!26653) e!2668997))))

(declare-fun setRest!26653 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26653 (= setRest!26618 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26653 true) setRest!26653))))

(declare-fun b!4295016 () Bool)

(declare-fun tp!1318637 () Bool)

(assert (=> b!4295016 (= e!2668997 tp!1318637)))

(assert (= (and setNonEmpty!26619 condSetEmpty!26653) setIsEmpty!26653))

(assert (= (and setNonEmpty!26619 (not condSetEmpty!26653)) setNonEmpty!26653))

(assert (= setNonEmpty!26653 b!4295016))

(declare-fun m!4887743 () Bool)

(assert (=> setNonEmpty!26653 m!4887743))

(declare-fun b!4295017 () Bool)

(declare-fun e!2668998 () Bool)

(declare-fun tp!1318638 () Bool)

(declare-fun tp!1318639 () Bool)

(assert (=> b!4295017 (= e!2668998 (and tp!1318638 tp!1318639))))

(assert (=> b!4294554 (= tp!1318338 e!2668998)))

(assert (= (and b!4294554 ((_ is Cons!47809) (exprs!3373 setElem!26622))) b!4295017))

(declare-fun condSetEmpty!26654 () Bool)

(assert (=> setNonEmpty!26609 (= condSetEmpty!26654 (= setRest!26609 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26654 () Bool)

(assert (=> setNonEmpty!26609 (= tp!1318271 setRes!26654)))

(declare-fun setIsEmpty!26654 () Bool)

(assert (=> setIsEmpty!26654 setRes!26654))

(declare-fun tp!1318640 () Bool)

(declare-fun setElem!26654 () Context!5746)

(declare-fun e!2668999 () Bool)

(declare-fun setNonEmpty!26654 () Bool)

(assert (=> setNonEmpty!26654 (= setRes!26654 (and tp!1318640 (inv!63342 setElem!26654) e!2668999))))

(declare-fun setRest!26654 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26654 (= setRest!26609 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26654 true) setRest!26654))))

(declare-fun b!4295018 () Bool)

(declare-fun tp!1318641 () Bool)

(assert (=> b!4295018 (= e!2668999 tp!1318641)))

(assert (= (and setNonEmpty!26609 condSetEmpty!26654) setIsEmpty!26654))

(assert (= (and setNonEmpty!26609 (not condSetEmpty!26654)) setNonEmpty!26654))

(assert (= setNonEmpty!26654 b!4295018))

(declare-fun m!4887745 () Bool)

(assert (=> setNonEmpty!26654 m!4887745))

(declare-fun b!4295019 () Bool)

(declare-fun e!2669000 () Bool)

(declare-fun tp!1318642 () Bool)

(declare-fun tp!1318643 () Bool)

(assert (=> b!4295019 (= e!2669000 (and tp!1318642 tp!1318643))))

(assert (=> b!4294560 (= tp!1318348 e!2669000)))

(assert (= (and b!4294560 ((_ is Cons!47809) (exprs!3373 setElem!26624))) b!4295019))

(declare-fun b!4295020 () Bool)

(declare-fun e!2669001 () Bool)

(declare-fun tp!1318644 () Bool)

(declare-fun tp!1318645 () Bool)

(assert (=> b!4295020 (= e!2669001 (and tp!1318644 tp!1318645))))

(assert (=> b!4294557 (= tp!1318343 e!2669001)))

(assert (= (and b!4294557 ((_ is Cons!47809) (exprs!3373 setElem!26623))) b!4295020))

(declare-fun e!2669003 () Bool)

(declare-fun setRes!26655 () Bool)

(declare-fun b!4295021 () Bool)

(declare-fun e!2669002 () Bool)

(declare-fun tp!1318646 () Bool)

(assert (=> b!4295021 (= e!2669003 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 (t!354540 mapValue!20049))))) e!2669002 tp_is_empty!23123 setRes!26655 tp!1318646))))

(declare-fun condSetEmpty!26655 () Bool)

(assert (=> b!4295021 (= condSetEmpty!26655 (= (_2!26056 (h!53232 (t!354540 mapValue!20049))) ((as const (Array Context!5746 Bool)) false)))))

(assert (=> b!4294510 (= tp!1318274 e!2669003)))

(declare-fun setNonEmpty!26655 () Bool)

(declare-fun setElem!26655 () Context!5746)

(declare-fun tp!1318648 () Bool)

(declare-fun e!2669004 () Bool)

(assert (=> setNonEmpty!26655 (= setRes!26655 (and tp!1318648 (inv!63342 setElem!26655) e!2669004))))

(declare-fun setRest!26655 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26655 (= (_2!26056 (h!53232 (t!354540 mapValue!20049))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26655 true) setRest!26655))))

(declare-fun b!4295022 () Bool)

(declare-fun tp!1318647 () Bool)

(assert (=> b!4295022 (= e!2669002 tp!1318647)))

(declare-fun b!4295023 () Bool)

(declare-fun tp!1318649 () Bool)

(assert (=> b!4295023 (= e!2669004 tp!1318649)))

(declare-fun setIsEmpty!26655 () Bool)

(assert (=> setIsEmpty!26655 setRes!26655))

(assert (= b!4295021 b!4295022))

(assert (= (and b!4295021 condSetEmpty!26655) setIsEmpty!26655))

(assert (= (and b!4295021 (not condSetEmpty!26655)) setNonEmpty!26655))

(assert (= setNonEmpty!26655 b!4295023))

(assert (= (and b!4294510 ((_ is Cons!47812) (t!354540 mapValue!20049))) b!4295021))

(declare-fun m!4887747 () Bool)

(assert (=> b!4295021 m!4887747))

(declare-fun m!4887749 () Bool)

(assert (=> setNonEmpty!26655 m!4887749))

(declare-fun e!2669005 () Bool)

(assert (=> b!4294558 (= tp!1318342 e!2669005)))

(declare-fun b!4295026 () Bool)

(declare-fun tp!1318652 () Bool)

(assert (=> b!4295026 (= e!2669005 tp!1318652)))

(declare-fun b!4295025 () Bool)

(declare-fun tp!1318654 () Bool)

(declare-fun tp!1318653 () Bool)

(assert (=> b!4295025 (= e!2669005 (and tp!1318654 tp!1318653))))

(declare-fun b!4295027 () Bool)

(declare-fun tp!1318651 () Bool)

(declare-fun tp!1318650 () Bool)

(assert (=> b!4295027 (= e!2669005 (and tp!1318651 tp!1318650))))

(declare-fun b!4295024 () Bool)

(assert (=> b!4295024 (= e!2669005 tp_is_empty!23123)))

(assert (= (and b!4294558 ((_ is ElementMatch!12983) (_1!26057 (_1!26058 (h!53230 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))))) b!4295024))

(assert (= (and b!4294558 ((_ is Concat!21302) (_1!26057 (_1!26058 (h!53230 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))))) b!4295025))

(assert (= (and b!4294558 ((_ is Star!12983) (_1!26057 (_1!26058 (h!53230 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))))) b!4295026))

(assert (= (and b!4294558 ((_ is Union!12983) (_1!26057 (_1!26058 (h!53230 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))))) b!4295027))

(declare-fun b!4295028 () Bool)

(declare-fun e!2669007 () Bool)

(declare-fun tp!1318659 () Bool)

(assert (=> b!4295028 (= e!2669007 tp!1318659)))

(declare-fun tp!1318656 () Bool)

(declare-fun setRes!26656 () Bool)

(declare-fun setElem!26656 () Context!5746)

(declare-fun setNonEmpty!26656 () Bool)

(assert (=> setNonEmpty!26656 (= setRes!26656 (and tp!1318656 (inv!63342 setElem!26656) e!2669007))))

(declare-fun setRest!26656 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26656 (= (_2!26058 (h!53230 (t!354538 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26656 true) setRest!26656))))

(declare-fun setIsEmpty!26656 () Bool)

(assert (=> setIsEmpty!26656 setRes!26656))

(declare-fun e!2669006 () Bool)

(assert (=> b!4294558 (= tp!1318339 e!2669006)))

(declare-fun e!2669008 () Bool)

(declare-fun b!4295029 () Bool)

(declare-fun tp!1318655 () Bool)

(declare-fun tp!1318658 () Bool)

(assert (=> b!4295029 (= e!2669006 (and tp!1318658 (inv!63342 (_2!26057 (_1!26058 (h!53230 (t!354538 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))))) e!2669008 tp_is_empty!23123 setRes!26656 tp!1318655))))

(declare-fun condSetEmpty!26656 () Bool)

(assert (=> b!4295029 (= condSetEmpty!26656 (= (_2!26058 (h!53230 (t!354538 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4295030 () Bool)

(declare-fun tp!1318657 () Bool)

(assert (=> b!4295030 (= e!2669008 tp!1318657)))

(assert (= b!4295029 b!4295030))

(assert (= (and b!4295029 condSetEmpty!26656) setIsEmpty!26656))

(assert (= (and b!4295029 (not condSetEmpty!26656)) setNonEmpty!26656))

(assert (= setNonEmpty!26656 b!4295028))

(assert (= (and b!4294558 ((_ is Cons!47810) (t!354538 (zeroValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))) b!4295029))

(declare-fun m!4887751 () Bool)

(assert (=> setNonEmpty!26656 m!4887751))

(declare-fun m!4887753 () Bool)

(assert (=> b!4295029 m!4887753))

(declare-fun e!2669009 () Bool)

(assert (=> b!4294555 (= tp!1318337 e!2669009)))

(declare-fun b!4295033 () Bool)

(declare-fun tp!1318662 () Bool)

(assert (=> b!4295033 (= e!2669009 tp!1318662)))

(declare-fun b!4295032 () Bool)

(declare-fun tp!1318664 () Bool)

(declare-fun tp!1318663 () Bool)

(assert (=> b!4295032 (= e!2669009 (and tp!1318664 tp!1318663))))

(declare-fun b!4295034 () Bool)

(declare-fun tp!1318661 () Bool)

(declare-fun tp!1318660 () Bool)

(assert (=> b!4295034 (= e!2669009 (and tp!1318661 tp!1318660))))

(declare-fun b!4295031 () Bool)

(assert (=> b!4295031 (= e!2669009 tp_is_empty!23123)))

(assert (= (and b!4294555 ((_ is ElementMatch!12983) (_1!26057 (_1!26058 (h!53230 mapValue!20045))))) b!4295031))

(assert (= (and b!4294555 ((_ is Concat!21302) (_1!26057 (_1!26058 (h!53230 mapValue!20045))))) b!4295032))

(assert (= (and b!4294555 ((_ is Star!12983) (_1!26057 (_1!26058 (h!53230 mapValue!20045))))) b!4295033))

(assert (= (and b!4294555 ((_ is Union!12983) (_1!26057 (_1!26058 (h!53230 mapValue!20045))))) b!4295034))

(declare-fun b!4295035 () Bool)

(declare-fun e!2669011 () Bool)

(declare-fun tp!1318669 () Bool)

(assert (=> b!4295035 (= e!2669011 tp!1318669)))

(declare-fun setNonEmpty!26657 () Bool)

(declare-fun tp!1318666 () Bool)

(declare-fun setRes!26657 () Bool)

(declare-fun setElem!26657 () Context!5746)

(assert (=> setNonEmpty!26657 (= setRes!26657 (and tp!1318666 (inv!63342 setElem!26657) e!2669011))))

(declare-fun setRest!26657 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26657 (= (_2!26058 (h!53230 (t!354538 mapValue!20045))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26657 true) setRest!26657))))

(declare-fun setIsEmpty!26657 () Bool)

(assert (=> setIsEmpty!26657 setRes!26657))

(declare-fun e!2669010 () Bool)

(assert (=> b!4294555 (= tp!1318334 e!2669010)))

(declare-fun b!4295036 () Bool)

(declare-fun tp!1318665 () Bool)

(declare-fun tp!1318668 () Bool)

(declare-fun e!2669012 () Bool)

(assert (=> b!4295036 (= e!2669010 (and tp!1318668 (inv!63342 (_2!26057 (_1!26058 (h!53230 (t!354538 mapValue!20045))))) e!2669012 tp_is_empty!23123 setRes!26657 tp!1318665))))

(declare-fun condSetEmpty!26657 () Bool)

(assert (=> b!4295036 (= condSetEmpty!26657 (= (_2!26058 (h!53230 (t!354538 mapValue!20045))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4295037 () Bool)

(declare-fun tp!1318667 () Bool)

(assert (=> b!4295037 (= e!2669012 tp!1318667)))

(assert (= b!4295036 b!4295037))

(assert (= (and b!4295036 condSetEmpty!26657) setIsEmpty!26657))

(assert (= (and b!4295036 (not condSetEmpty!26657)) setNonEmpty!26657))

(assert (= setNonEmpty!26657 b!4295035))

(assert (= (and b!4294555 ((_ is Cons!47810) (t!354538 mapValue!20045))) b!4295036))

(declare-fun m!4887755 () Bool)

(assert (=> setNonEmpty!26657 m!4887755))

(declare-fun m!4887757 () Bool)

(assert (=> b!4295036 m!4887757))

(declare-fun e!2669013 () Bool)

(assert (=> b!4294561 (= tp!1318347 e!2669013)))

(declare-fun b!4295040 () Bool)

(declare-fun tp!1318672 () Bool)

(assert (=> b!4295040 (= e!2669013 tp!1318672)))

(declare-fun b!4295039 () Bool)

(declare-fun tp!1318674 () Bool)

(declare-fun tp!1318673 () Bool)

(assert (=> b!4295039 (= e!2669013 (and tp!1318674 tp!1318673))))

(declare-fun b!4295041 () Bool)

(declare-fun tp!1318671 () Bool)

(declare-fun tp!1318670 () Bool)

(assert (=> b!4295041 (= e!2669013 (and tp!1318671 tp!1318670))))

(declare-fun b!4295038 () Bool)

(assert (=> b!4295038 (= e!2669013 tp_is_empty!23123)))

(assert (= (and b!4294561 ((_ is ElementMatch!12983) (_1!26057 (_1!26058 (h!53230 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))))) b!4295038))

(assert (= (and b!4294561 ((_ is Concat!21302) (_1!26057 (_1!26058 (h!53230 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))))) b!4295039))

(assert (= (and b!4294561 ((_ is Star!12983) (_1!26057 (_1!26058 (h!53230 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))))) b!4295040))

(assert (= (and b!4294561 ((_ is Union!12983) (_1!26057 (_1!26058 (h!53230 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))))) b!4295041))

(declare-fun b!4295042 () Bool)

(declare-fun e!2669015 () Bool)

(declare-fun tp!1318679 () Bool)

(assert (=> b!4295042 (= e!2669015 tp!1318679)))

(declare-fun setRes!26658 () Bool)

(declare-fun tp!1318676 () Bool)

(declare-fun setElem!26658 () Context!5746)

(declare-fun setNonEmpty!26658 () Bool)

(assert (=> setNonEmpty!26658 (= setRes!26658 (and tp!1318676 (inv!63342 setElem!26658) e!2669015))))

(declare-fun setRest!26658 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26658 (= (_2!26058 (h!53230 (t!354538 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26658 true) setRest!26658))))

(declare-fun setIsEmpty!26658 () Bool)

(assert (=> setIsEmpty!26658 setRes!26658))

(declare-fun e!2669014 () Bool)

(assert (=> b!4294561 (= tp!1318344 e!2669014)))

(declare-fun e!2669016 () Bool)

(declare-fun tp!1318675 () Bool)

(declare-fun b!4295043 () Bool)

(declare-fun tp!1318678 () Bool)

(assert (=> b!4295043 (= e!2669014 (and tp!1318678 (inv!63342 (_2!26057 (_1!26058 (h!53230 (t!354538 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))))) e!2669016 tp_is_empty!23123 setRes!26658 tp!1318675))))

(declare-fun condSetEmpty!26658 () Bool)

(assert (=> b!4295043 (= condSetEmpty!26658 (= (_2!26058 (h!53230 (t!354538 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4295044 () Bool)

(declare-fun tp!1318677 () Bool)

(assert (=> b!4295044 (= e!2669016 tp!1318677)))

(assert (= b!4295043 b!4295044))

(assert (= (and b!4295043 condSetEmpty!26658) setIsEmpty!26658))

(assert (= (and b!4295043 (not condSetEmpty!26658)) setNonEmpty!26658))

(assert (= setNonEmpty!26658 b!4295042))

(assert (= (and b!4294561 ((_ is Cons!47810) (t!354538 (minValue!4722 (v!41755 (underlying!9155 (v!41756 (underlying!9156 (cache!4511 cacheDown!1066))))))))) b!4295043))

(declare-fun m!4887759 () Bool)

(assert (=> setNonEmpty!26658 m!4887759))

(declare-fun m!4887761 () Bool)

(assert (=> b!4295043 m!4887761))

(declare-fun condSetEmpty!26659 () Bool)

(assert (=> setNonEmpty!26639 (= condSetEmpty!26659 (= setRest!26639 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26659 () Bool)

(assert (=> setNonEmpty!26639 (= tp!1318401 setRes!26659)))

(declare-fun setIsEmpty!26659 () Bool)

(assert (=> setIsEmpty!26659 setRes!26659))

(declare-fun setNonEmpty!26659 () Bool)

(declare-fun setElem!26659 () Context!5746)

(declare-fun e!2669017 () Bool)

(declare-fun tp!1318680 () Bool)

(assert (=> setNonEmpty!26659 (= setRes!26659 (and tp!1318680 (inv!63342 setElem!26659) e!2669017))))

(declare-fun setRest!26659 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26659 (= setRest!26639 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26659 true) setRest!26659))))

(declare-fun b!4295045 () Bool)

(declare-fun tp!1318681 () Bool)

(assert (=> b!4295045 (= e!2669017 tp!1318681)))

(assert (= (and setNonEmpty!26639 condSetEmpty!26659) setIsEmpty!26659))

(assert (= (and setNonEmpty!26639 (not condSetEmpty!26659)) setNonEmpty!26659))

(assert (= setNonEmpty!26659 b!4295045))

(declare-fun m!4887763 () Bool)

(assert (=> setNonEmpty!26659 m!4887763))

(declare-fun condSetEmpty!26660 () Bool)

(assert (=> setNonEmpty!26642 (= condSetEmpty!26660 (= setRest!26642 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26660 () Bool)

(assert (=> setNonEmpty!26642 (= tp!1318410 setRes!26660)))

(declare-fun setIsEmpty!26660 () Bool)

(assert (=> setIsEmpty!26660 setRes!26660))

(declare-fun setElem!26660 () Context!5746)

(declare-fun e!2669018 () Bool)

(declare-fun setNonEmpty!26660 () Bool)

(declare-fun tp!1318682 () Bool)

(assert (=> setNonEmpty!26660 (= setRes!26660 (and tp!1318682 (inv!63342 setElem!26660) e!2669018))))

(declare-fun setRest!26660 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26660 (= setRest!26642 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26660 true) setRest!26660))))

(declare-fun b!4295046 () Bool)

(declare-fun tp!1318683 () Bool)

(assert (=> b!4295046 (= e!2669018 tp!1318683)))

(assert (= (and setNonEmpty!26642 condSetEmpty!26660) setIsEmpty!26660))

(assert (= (and setNonEmpty!26642 (not condSetEmpty!26660)) setNonEmpty!26660))

(assert (= setNonEmpty!26660 b!4295046))

(declare-fun m!4887765 () Bool)

(assert (=> setNonEmpty!26660 m!4887765))

(declare-fun setRes!26662 () Bool)

(declare-fun setNonEmpty!26661 () Bool)

(declare-fun tp!1318685 () Bool)

(declare-fun setElem!26661 () Context!5746)

(declare-fun e!2669020 () Bool)

(assert (=> setNonEmpty!26661 (= setRes!26662 (and tp!1318685 (inv!63342 setElem!26661) e!2669020))))

(declare-fun mapDefault!20074 () List!47936)

(declare-fun setRest!26661 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26661 (= (_2!26056 (h!53232 mapDefault!20074)) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26661 true) setRest!26661))))

(declare-fun b!4295047 () Bool)

(declare-fun e!2669019 () Bool)

(declare-fun tp!1318690 () Bool)

(assert (=> b!4295047 (= e!2669019 tp!1318690)))

(declare-fun condMapEmpty!20074 () Bool)

(assert (=> mapNonEmpty!20049 (= condMapEmpty!20074 (= mapRest!20049 ((as const (Array (_ BitVec 32) List!47936)) mapDefault!20074)))))

(declare-fun e!2669023 () Bool)

(declare-fun mapRes!20074 () Bool)

(assert (=> mapNonEmpty!20049 (= tp!1318272 (and e!2669023 mapRes!20074))))

(declare-fun mapIsEmpty!20074 () Bool)

(assert (=> mapIsEmpty!20074 mapRes!20074))

(declare-fun b!4295048 () Bool)

(declare-fun tp!1318688 () Bool)

(declare-fun e!2669021 () Bool)

(declare-fun setRes!26661 () Bool)

(declare-fun e!2669022 () Bool)

(declare-fun mapValue!20074 () List!47936)

(assert (=> b!4295048 (= e!2669022 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 mapValue!20074)))) e!2669021 tp_is_empty!23123 setRes!26661 tp!1318688))))

(declare-fun condSetEmpty!26662 () Bool)

(assert (=> b!4295048 (= condSetEmpty!26662 (= (_2!26056 (h!53232 mapValue!20074)) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4295049 () Bool)

(declare-fun tp!1318691 () Bool)

(assert (=> b!4295049 (= e!2669021 tp!1318691)))

(declare-fun setIsEmpty!26661 () Bool)

(assert (=> setIsEmpty!26661 setRes!26661))

(declare-fun setIsEmpty!26662 () Bool)

(assert (=> setIsEmpty!26662 setRes!26662))

(declare-fun mapNonEmpty!20074 () Bool)

(declare-fun tp!1318686 () Bool)

(assert (=> mapNonEmpty!20074 (= mapRes!20074 (and tp!1318686 e!2669022))))

(declare-fun mapKey!20074 () (_ BitVec 32))

(declare-fun mapRest!20074 () (Array (_ BitVec 32) List!47936))

(assert (=> mapNonEmpty!20074 (= mapRest!20049 (store mapRest!20074 mapKey!20074 mapValue!20074))))

(declare-fun b!4295050 () Bool)

(declare-fun tp!1318689 () Bool)

(assert (=> b!4295050 (= e!2669020 tp!1318689)))

(declare-fun tp!1318687 () Bool)

(declare-fun b!4295051 () Bool)

(declare-fun e!2669024 () Bool)

(assert (=> b!4295051 (= e!2669023 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 mapDefault!20074)))) e!2669024 tp_is_empty!23123 setRes!26662 tp!1318687))))

(declare-fun condSetEmpty!26661 () Bool)

(assert (=> b!4295051 (= condSetEmpty!26661 (= (_2!26056 (h!53232 mapDefault!20074)) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4295052 () Bool)

(declare-fun tp!1318684 () Bool)

(assert (=> b!4295052 (= e!2669024 tp!1318684)))

(declare-fun setElem!26662 () Context!5746)

(declare-fun tp!1318692 () Bool)

(declare-fun setNonEmpty!26662 () Bool)

(assert (=> setNonEmpty!26662 (= setRes!26661 (and tp!1318692 (inv!63342 setElem!26662) e!2669019))))

(declare-fun setRest!26662 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26662 (= (_2!26056 (h!53232 mapValue!20074)) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26662 true) setRest!26662))))

(assert (= (and mapNonEmpty!20049 condMapEmpty!20074) mapIsEmpty!20074))

(assert (= (and mapNonEmpty!20049 (not condMapEmpty!20074)) mapNonEmpty!20074))

(assert (= b!4295048 b!4295049))

(assert (= (and b!4295048 condSetEmpty!26662) setIsEmpty!26661))

(assert (= (and b!4295048 (not condSetEmpty!26662)) setNonEmpty!26662))

(assert (= setNonEmpty!26662 b!4295047))

(assert (= (and mapNonEmpty!20074 ((_ is Cons!47812) mapValue!20074)) b!4295048))

(assert (= b!4295051 b!4295052))

(assert (= (and b!4295051 condSetEmpty!26661) setIsEmpty!26662))

(assert (= (and b!4295051 (not condSetEmpty!26661)) setNonEmpty!26661))

(assert (= setNonEmpty!26661 b!4295050))

(assert (= (and mapNonEmpty!20049 ((_ is Cons!47812) mapDefault!20074)) b!4295051))

(declare-fun m!4887767 () Bool)

(assert (=> mapNonEmpty!20074 m!4887767))

(declare-fun m!4887769 () Bool)

(assert (=> b!4295048 m!4887769))

(declare-fun m!4887771 () Bool)

(assert (=> setNonEmpty!26661 m!4887771))

(declare-fun m!4887773 () Bool)

(assert (=> setNonEmpty!26662 m!4887773))

(declare-fun m!4887775 () Bool)

(assert (=> b!4295051 m!4887775))

(declare-fun b!4295053 () Bool)

(declare-fun e!2669025 () Bool)

(declare-fun tp!1318693 () Bool)

(declare-fun tp!1318694 () Bool)

(assert (=> b!4295053 (= e!2669025 (and tp!1318693 tp!1318694))))

(assert (=> b!4294590 (= tp!1318383 e!2669025)))

(assert (= (and b!4294590 ((_ is Cons!47809) (exprs!3373 setElem!26634))) b!4295053))

(declare-fun e!2669026 () Bool)

(assert (=> b!4294541 (= tp!1318317 e!2669026)))

(declare-fun b!4295056 () Bool)

(declare-fun tp!1318697 () Bool)

(assert (=> b!4295056 (= e!2669026 tp!1318697)))

(declare-fun b!4295055 () Bool)

(declare-fun tp!1318699 () Bool)

(declare-fun tp!1318698 () Bool)

(assert (=> b!4295055 (= e!2669026 (and tp!1318699 tp!1318698))))

(declare-fun b!4295057 () Bool)

(declare-fun tp!1318696 () Bool)

(declare-fun tp!1318695 () Bool)

(assert (=> b!4295057 (= e!2669026 (and tp!1318696 tp!1318695))))

(declare-fun b!4295054 () Bool)

(assert (=> b!4295054 (= e!2669026 tp_is_empty!23123)))

(assert (= (and b!4294541 ((_ is ElementMatch!12983) (_1!26057 (_1!26058 (h!53230 mapDefault!20052))))) b!4295054))

(assert (= (and b!4294541 ((_ is Concat!21302) (_1!26057 (_1!26058 (h!53230 mapDefault!20052))))) b!4295055))

(assert (= (and b!4294541 ((_ is Star!12983) (_1!26057 (_1!26058 (h!53230 mapDefault!20052))))) b!4295056))

(assert (= (and b!4294541 ((_ is Union!12983) (_1!26057 (_1!26058 (h!53230 mapDefault!20052))))) b!4295057))

(declare-fun b!4295058 () Bool)

(declare-fun e!2669028 () Bool)

(declare-fun tp!1318704 () Bool)

(assert (=> b!4295058 (= e!2669028 tp!1318704)))

(declare-fun tp!1318701 () Bool)

(declare-fun setElem!26663 () Context!5746)

(declare-fun setNonEmpty!26663 () Bool)

(declare-fun setRes!26663 () Bool)

(assert (=> setNonEmpty!26663 (= setRes!26663 (and tp!1318701 (inv!63342 setElem!26663) e!2669028))))

(declare-fun setRest!26663 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26663 (= (_2!26058 (h!53230 (t!354538 mapDefault!20052))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26663 true) setRest!26663))))

(declare-fun setIsEmpty!26663 () Bool)

(assert (=> setIsEmpty!26663 setRes!26663))

(declare-fun e!2669027 () Bool)

(assert (=> b!4294541 (= tp!1318318 e!2669027)))

(declare-fun tp!1318703 () Bool)

(declare-fun b!4295059 () Bool)

(declare-fun e!2669029 () Bool)

(declare-fun tp!1318700 () Bool)

(assert (=> b!4295059 (= e!2669027 (and tp!1318703 (inv!63342 (_2!26057 (_1!26058 (h!53230 (t!354538 mapDefault!20052))))) e!2669029 tp_is_empty!23123 setRes!26663 tp!1318700))))

(declare-fun condSetEmpty!26663 () Bool)

(assert (=> b!4295059 (= condSetEmpty!26663 (= (_2!26058 (h!53230 (t!354538 mapDefault!20052))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4295060 () Bool)

(declare-fun tp!1318702 () Bool)

(assert (=> b!4295060 (= e!2669029 tp!1318702)))

(assert (= b!4295059 b!4295060))

(assert (= (and b!4295059 condSetEmpty!26663) setIsEmpty!26663))

(assert (= (and b!4295059 (not condSetEmpty!26663)) setNonEmpty!26663))

(assert (= setNonEmpty!26663 b!4295058))

(assert (= (and b!4294541 ((_ is Cons!47810) (t!354538 mapDefault!20052))) b!4295059))

(declare-fun m!4887777 () Bool)

(assert (=> setNonEmpty!26663 m!4887777))

(declare-fun m!4887779 () Bool)

(assert (=> b!4295059 m!4887779))

(declare-fun condSetEmpty!26664 () Bool)

(assert (=> setNonEmpty!26643 (= condSetEmpty!26664 (= setRest!26643 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26664 () Bool)

(assert (=> setNonEmpty!26643 (= tp!1318425 setRes!26664)))

(declare-fun setIsEmpty!26664 () Bool)

(assert (=> setIsEmpty!26664 setRes!26664))

(declare-fun e!2669030 () Bool)

(declare-fun setNonEmpty!26664 () Bool)

(declare-fun tp!1318705 () Bool)

(declare-fun setElem!26664 () Context!5746)

(assert (=> setNonEmpty!26664 (= setRes!26664 (and tp!1318705 (inv!63342 setElem!26664) e!2669030))))

(declare-fun setRest!26664 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26664 (= setRest!26643 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26664 true) setRest!26664))))

(declare-fun b!4295061 () Bool)

(declare-fun tp!1318706 () Bool)

(assert (=> b!4295061 (= e!2669030 tp!1318706)))

(assert (= (and setNonEmpty!26643 condSetEmpty!26664) setIsEmpty!26664))

(assert (= (and setNonEmpty!26643 (not condSetEmpty!26664)) setNonEmpty!26664))

(assert (= setNonEmpty!26664 b!4295061))

(declare-fun m!4887781 () Bool)

(assert (=> setNonEmpty!26664 m!4887781))

(declare-fun condSetEmpty!26665 () Bool)

(assert (=> setNonEmpty!26610 (= condSetEmpty!26665 (= setRest!26610 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26665 () Bool)

(assert (=> setNonEmpty!26610 (= tp!1318278 setRes!26665)))

(declare-fun setIsEmpty!26665 () Bool)

(assert (=> setIsEmpty!26665 setRes!26665))

(declare-fun setElem!26665 () Context!5746)

(declare-fun e!2669031 () Bool)

(declare-fun tp!1318707 () Bool)

(declare-fun setNonEmpty!26665 () Bool)

(assert (=> setNonEmpty!26665 (= setRes!26665 (and tp!1318707 (inv!63342 setElem!26665) e!2669031))))

(declare-fun setRest!26665 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26665 (= setRest!26610 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26665 true) setRest!26665))))

(declare-fun b!4295062 () Bool)

(declare-fun tp!1318708 () Bool)

(assert (=> b!4295062 (= e!2669031 tp!1318708)))

(assert (= (and setNonEmpty!26610 condSetEmpty!26665) setIsEmpty!26665))

(assert (= (and setNonEmpty!26610 (not condSetEmpty!26665)) setNonEmpty!26665))

(assert (= setNonEmpty!26665 b!4295062))

(declare-fun m!4887783 () Bool)

(assert (=> setNonEmpty!26665 m!4887783))

(declare-fun setIsEmpty!26666 () Bool)

(declare-fun setRes!26666 () Bool)

(assert (=> setIsEmpty!26666 setRes!26666))

(declare-fun setNonEmpty!26666 () Bool)

(declare-fun e!2669033 () Bool)

(declare-fun tp!1318712 () Bool)

(declare-fun setElem!26666 () Context!5746)

(assert (=> setNonEmpty!26666 (= setRes!26666 (and tp!1318712 (inv!63342 setElem!26666) e!2669033))))

(declare-fun mapValue!20075 () List!47935)

(declare-fun setRest!26666 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26666 (= (_1!26059 (_1!26060 (h!53231 mapValue!20075))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26666 true) setRest!26666))))

(declare-fun b!4295063 () Bool)

(declare-fun e!2669032 () Bool)

(declare-fun tp!1318715 () Bool)

(assert (=> b!4295063 (= e!2669032 tp!1318715)))

(declare-fun tp!1318710 () Bool)

(declare-fun setElem!26667 () Context!5746)

(declare-fun setRes!26667 () Bool)

(declare-fun setNonEmpty!26667 () Bool)

(assert (=> setNonEmpty!26667 (= setRes!26667 (and tp!1318710 (inv!63342 setElem!26667) e!2669032))))

(declare-fun mapDefault!20075 () List!47935)

(declare-fun setRest!26667 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26667 (= (_1!26059 (_1!26060 (h!53231 mapDefault!20075))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26667 true) setRest!26667))))

(declare-fun b!4295064 () Bool)

(declare-fun e!2669035 () Bool)

(declare-fun tp!1318709 () Bool)

(assert (=> b!4295064 (= e!2669035 (and setRes!26667 tp!1318709))))

(declare-fun condSetEmpty!26666 () Bool)

(assert (=> b!4295064 (= condSetEmpty!26666 (= (_1!26059 (_1!26060 (h!53231 mapDefault!20075))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun condMapEmpty!20075 () Bool)

(assert (=> mapNonEmpty!20055 (= condMapEmpty!20075 (= mapRest!20055 ((as const (Array (_ BitVec 32) List!47935)) mapDefault!20075)))))

(declare-fun mapRes!20075 () Bool)

(assert (=> mapNonEmpty!20055 (= tp!1318402 (and e!2669035 mapRes!20075))))

(declare-fun mapNonEmpty!20075 () Bool)

(declare-fun tp!1318713 () Bool)

(declare-fun e!2669034 () Bool)

(assert (=> mapNonEmpty!20075 (= mapRes!20075 (and tp!1318713 e!2669034))))

(declare-fun mapRest!20075 () (Array (_ BitVec 32) List!47935))

(declare-fun mapKey!20075 () (_ BitVec 32))

(assert (=> mapNonEmpty!20075 (= mapRest!20055 (store mapRest!20075 mapKey!20075 mapValue!20075))))

(declare-fun mapIsEmpty!20075 () Bool)

(assert (=> mapIsEmpty!20075 mapRes!20075))

(declare-fun setIsEmpty!26667 () Bool)

(assert (=> setIsEmpty!26667 setRes!26667))

(declare-fun b!4295065 () Bool)

(declare-fun tp!1318714 () Bool)

(assert (=> b!4295065 (= e!2669033 tp!1318714)))

(declare-fun b!4295066 () Bool)

(declare-fun tp!1318711 () Bool)

(assert (=> b!4295066 (= e!2669034 (and setRes!26666 tp!1318711))))

(declare-fun condSetEmpty!26667 () Bool)

(assert (=> b!4295066 (= condSetEmpty!26667 (= (_1!26059 (_1!26060 (h!53231 mapValue!20075))) ((as const (Array Context!5746 Bool)) false)))))

(assert (= (and mapNonEmpty!20055 condMapEmpty!20075) mapIsEmpty!20075))

(assert (= (and mapNonEmpty!20055 (not condMapEmpty!20075)) mapNonEmpty!20075))

(assert (= (and b!4295066 condSetEmpty!26667) setIsEmpty!26666))

(assert (= (and b!4295066 (not condSetEmpty!26667)) setNonEmpty!26666))

(assert (= setNonEmpty!26666 b!4295065))

(assert (= (and mapNonEmpty!20075 ((_ is Cons!47811) mapValue!20075)) b!4295066))

(assert (= (and b!4295064 condSetEmpty!26666) setIsEmpty!26667))

(assert (= (and b!4295064 (not condSetEmpty!26666)) setNonEmpty!26667))

(assert (= setNonEmpty!26667 b!4295063))

(assert (= (and mapNonEmpty!20055 ((_ is Cons!47811) mapDefault!20075)) b!4295064))

(declare-fun m!4887785 () Bool)

(assert (=> setNonEmpty!26666 m!4887785))

(declare-fun m!4887787 () Bool)

(assert (=> setNonEmpty!26667 m!4887787))

(declare-fun m!4887789 () Bool)

(assert (=> mapNonEmpty!20075 m!4887789))

(declare-fun b!4295067 () Bool)

(declare-fun e!2669036 () Bool)

(declare-fun tp!1318716 () Bool)

(declare-fun tp!1318717 () Bool)

(assert (=> b!4295067 (= e!2669036 (and tp!1318716 tp!1318717))))

(assert (=> b!4294525 (= tp!1318290 e!2669036)))

(assert (= (and b!4294525 ((_ is Cons!47809) (exprs!3373 setElem!26613))) b!4295067))

(declare-fun b!4295068 () Bool)

(declare-fun e!2669037 () Bool)

(declare-fun tp!1318718 () Bool)

(declare-fun tp!1318719 () Bool)

(assert (=> b!4295068 (= e!2669037 (and tp!1318718 tp!1318719))))

(assert (=> b!4294542 (= tp!1318322 e!2669037)))

(assert (= (and b!4294542 ((_ is Cons!47809) (exprs!3373 (_2!26057 (_1!26058 (h!53230 mapDefault!20052)))))) b!4295068))

(declare-fun b!4295073 () Bool)

(declare-fun e!2669040 () Bool)

(declare-fun tp!1318722 () Bool)

(assert (=> b!4295073 (= e!2669040 (and tp_is_empty!23123 tp!1318722))))

(assert (=> b!4294623 (= tp!1318421 e!2669040)))

(assert (= (and b!4294623 ((_ is Cons!47813) (innerList!14512 (xs!17730 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))))) b!4295073))

(declare-fun condSetEmpty!26668 () Bool)

(assert (=> setNonEmpty!26633 (= condSetEmpty!26668 (= setRest!26633 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26668 () Bool)

(assert (=> setNonEmpty!26633 (= tp!1318379 setRes!26668)))

(declare-fun setIsEmpty!26668 () Bool)

(assert (=> setIsEmpty!26668 setRes!26668))

(declare-fun e!2669041 () Bool)

(declare-fun setElem!26668 () Context!5746)

(declare-fun tp!1318723 () Bool)

(declare-fun setNonEmpty!26668 () Bool)

(assert (=> setNonEmpty!26668 (= setRes!26668 (and tp!1318723 (inv!63342 setElem!26668) e!2669041))))

(declare-fun setRest!26668 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26668 (= setRest!26633 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26668 true) setRest!26668))))

(declare-fun b!4295074 () Bool)

(declare-fun tp!1318724 () Bool)

(assert (=> b!4295074 (= e!2669041 tp!1318724)))

(assert (= (and setNonEmpty!26633 condSetEmpty!26668) setIsEmpty!26668))

(assert (= (and setNonEmpty!26633 (not condSetEmpty!26668)) setNonEmpty!26668))

(assert (= setNonEmpty!26668 b!4295074))

(declare-fun m!4887791 () Bool)

(assert (=> setNonEmpty!26668 m!4887791))

(declare-fun condSetEmpty!26669 () Bool)

(assert (=> setNonEmpty!26618 (= condSetEmpty!26669 (= setRest!26619 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26669 () Bool)

(assert (=> setNonEmpty!26618 (= tp!1318316 setRes!26669)))

(declare-fun setIsEmpty!26669 () Bool)

(assert (=> setIsEmpty!26669 setRes!26669))

(declare-fun tp!1318725 () Bool)

(declare-fun e!2669042 () Bool)

(declare-fun setNonEmpty!26669 () Bool)

(declare-fun setElem!26669 () Context!5746)

(assert (=> setNonEmpty!26669 (= setRes!26669 (and tp!1318725 (inv!63342 setElem!26669) e!2669042))))

(declare-fun setRest!26669 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26669 (= setRest!26619 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26669 true) setRest!26669))))

(declare-fun b!4295075 () Bool)

(declare-fun tp!1318726 () Bool)

(assert (=> b!4295075 (= e!2669042 tp!1318726)))

(assert (= (and setNonEmpty!26618 condSetEmpty!26669) setIsEmpty!26669))

(assert (= (and setNonEmpty!26618 (not condSetEmpty!26669)) setNonEmpty!26669))

(assert (= setNonEmpty!26669 b!4295075))

(declare-fun m!4887793 () Bool)

(assert (=> setNonEmpty!26669 m!4887793))

(declare-fun condSetEmpty!26670 () Bool)

(assert (=> setNonEmpty!26630 (= condSetEmpty!26670 (= setRest!26630 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26670 () Bool)

(assert (=> setNonEmpty!26630 (= tp!1318372 setRes!26670)))

(declare-fun setIsEmpty!26670 () Bool)

(assert (=> setIsEmpty!26670 setRes!26670))

(declare-fun setNonEmpty!26670 () Bool)

(declare-fun e!2669043 () Bool)

(declare-fun setElem!26670 () Context!5746)

(declare-fun tp!1318727 () Bool)

(assert (=> setNonEmpty!26670 (= setRes!26670 (and tp!1318727 (inv!63342 setElem!26670) e!2669043))))

(declare-fun setRest!26670 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26670 (= setRest!26630 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26670 true) setRest!26670))))

(declare-fun b!4295076 () Bool)

(declare-fun tp!1318728 () Bool)

(assert (=> b!4295076 (= e!2669043 tp!1318728)))

(assert (= (and setNonEmpty!26630 condSetEmpty!26670) setIsEmpty!26670))

(assert (= (and setNonEmpty!26630 (not condSetEmpty!26670)) setNonEmpty!26670))

(assert (= setNonEmpty!26670 b!4295076))

(declare-fun m!4887795 () Bool)

(assert (=> setNonEmpty!26670 m!4887795))

(declare-fun e!2669044 () Bool)

(declare-fun b!4295077 () Bool)

(declare-fun e!2669045 () Bool)

(declare-fun tp!1318729 () Bool)

(declare-fun setRes!26671 () Bool)

(assert (=> b!4295077 (= e!2669045 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 (t!354540 (zeroValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))))))) e!2669044 tp_is_empty!23123 setRes!26671 tp!1318729))))

(declare-fun condSetEmpty!26671 () Bool)

(assert (=> b!4295077 (= condSetEmpty!26671 (= (_2!26056 (h!53232 (t!354540 (zeroValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))))) ((as const (Array Context!5746 Bool)) false)))))

(assert (=> b!4294563 (= tp!1318349 e!2669045)))

(declare-fun e!2669046 () Bool)

(declare-fun tp!1318731 () Bool)

(declare-fun setNonEmpty!26671 () Bool)

(declare-fun setElem!26671 () Context!5746)

(assert (=> setNonEmpty!26671 (= setRes!26671 (and tp!1318731 (inv!63342 setElem!26671) e!2669046))))

(declare-fun setRest!26671 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26671 (= (_2!26056 (h!53232 (t!354540 (zeroValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26671 true) setRest!26671))))

(declare-fun b!4295078 () Bool)

(declare-fun tp!1318730 () Bool)

(assert (=> b!4295078 (= e!2669044 tp!1318730)))

(declare-fun b!4295079 () Bool)

(declare-fun tp!1318732 () Bool)

(assert (=> b!4295079 (= e!2669046 tp!1318732)))

(declare-fun setIsEmpty!26671 () Bool)

(assert (=> setIsEmpty!26671 setRes!26671))

(assert (= b!4295077 b!4295078))

(assert (= (and b!4295077 condSetEmpty!26671) setIsEmpty!26671))

(assert (= (and b!4295077 (not condSetEmpty!26671)) setNonEmpty!26671))

(assert (= setNonEmpty!26671 b!4295079))

(assert (= (and b!4294563 ((_ is Cons!47812) (t!354540 (zeroValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))))) b!4295077))

(declare-fun m!4887797 () Bool)

(assert (=> b!4295077 m!4887797))

(declare-fun m!4887799 () Bool)

(assert (=> setNonEmpty!26671 m!4887799))

(declare-fun condSetEmpty!26672 () Bool)

(assert (=> setNonEmpty!26626 (= condSetEmpty!26672 (= setRest!26626 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26672 () Bool)

(assert (=> setNonEmpty!26626 (= tp!1318355 setRes!26672)))

(declare-fun setIsEmpty!26672 () Bool)

(assert (=> setIsEmpty!26672 setRes!26672))

(declare-fun setNonEmpty!26672 () Bool)

(declare-fun e!2669047 () Bool)

(declare-fun setElem!26672 () Context!5746)

(declare-fun tp!1318733 () Bool)

(assert (=> setNonEmpty!26672 (= setRes!26672 (and tp!1318733 (inv!63342 setElem!26672) e!2669047))))

(declare-fun setRest!26672 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26672 (= setRest!26626 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26672 true) setRest!26672))))

(declare-fun b!4295080 () Bool)

(declare-fun tp!1318734 () Bool)

(assert (=> b!4295080 (= e!2669047 tp!1318734)))

(assert (= (and setNonEmpty!26626 condSetEmpty!26672) setIsEmpty!26672))

(assert (= (and setNonEmpty!26626 (not condSetEmpty!26672)) setNonEmpty!26672))

(assert (= setNonEmpty!26672 b!4295080))

(declare-fun m!4887801 () Bool)

(assert (=> setNonEmpty!26672 m!4887801))

(declare-fun e!2669048 () Bool)

(assert (=> b!4294573 (= tp!1318361 e!2669048)))

(declare-fun b!4295083 () Bool)

(declare-fun tp!1318737 () Bool)

(assert (=> b!4295083 (= e!2669048 tp!1318737)))

(declare-fun b!4295082 () Bool)

(declare-fun tp!1318739 () Bool)

(declare-fun tp!1318738 () Bool)

(assert (=> b!4295082 (= e!2669048 (and tp!1318739 tp!1318738))))

(declare-fun b!4295084 () Bool)

(declare-fun tp!1318736 () Bool)

(declare-fun tp!1318735 () Bool)

(assert (=> b!4295084 (= e!2669048 (and tp!1318736 tp!1318735))))

(declare-fun b!4295081 () Bool)

(assert (=> b!4295081 (= e!2669048 tp_is_empty!23123)))

(assert (= (and b!4294573 ((_ is ElementMatch!12983) (h!53229 (exprs!3373 setElem!26604)))) b!4295081))

(assert (= (and b!4294573 ((_ is Concat!21302) (h!53229 (exprs!3373 setElem!26604)))) b!4295082))

(assert (= (and b!4294573 ((_ is Star!12983) (h!53229 (exprs!3373 setElem!26604)))) b!4295083))

(assert (= (and b!4294573 ((_ is Union!12983) (h!53229 (exprs!3373 setElem!26604)))) b!4295084))

(declare-fun b!4295085 () Bool)

(declare-fun e!2669049 () Bool)

(declare-fun tp!1318740 () Bool)

(declare-fun tp!1318741 () Bool)

(assert (=> b!4295085 (= e!2669049 (and tp!1318740 tp!1318741))))

(assert (=> b!4294573 (= tp!1318362 e!2669049)))

(assert (= (and b!4294573 ((_ is Cons!47809) (t!354537 (exprs!3373 setElem!26604)))) b!4295085))

(declare-fun setIsEmpty!26673 () Bool)

(declare-fun setRes!26673 () Bool)

(assert (=> setIsEmpty!26673 setRes!26673))

(declare-fun e!2669051 () Bool)

(assert (=> b!4294580 (= tp!1318370 e!2669051)))

(declare-fun b!4295086 () Bool)

(declare-fun tp!1318743 () Bool)

(assert (=> b!4295086 (= e!2669051 (and setRes!26673 tp!1318743))))

(declare-fun condSetEmpty!26673 () Bool)

(assert (=> b!4295086 (= condSetEmpty!26673 (= (_1!26059 (_1!26060 (h!53231 (t!354539 (zeroValue!4723 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183)))))))))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun tp!1318742 () Bool)

(declare-fun setElem!26673 () Context!5746)

(declare-fun e!2669050 () Bool)

(declare-fun setNonEmpty!26673 () Bool)

(assert (=> setNonEmpty!26673 (= setRes!26673 (and tp!1318742 (inv!63342 setElem!26673) e!2669050))))

(declare-fun setRest!26673 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26673 (= (_1!26059 (_1!26060 (h!53231 (t!354539 (zeroValue!4723 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183)))))))))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26673 true) setRest!26673))))

(declare-fun b!4295087 () Bool)

(declare-fun tp!1318744 () Bool)

(assert (=> b!4295087 (= e!2669050 tp!1318744)))

(assert (= (and b!4295086 condSetEmpty!26673) setIsEmpty!26673))

(assert (= (and b!4295086 (not condSetEmpty!26673)) setNonEmpty!26673))

(assert (= setNonEmpty!26673 b!4295087))

(assert (= (and b!4294580 ((_ is Cons!47811) (t!354539 (zeroValue!4723 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))))) b!4295086))

(declare-fun m!4887803 () Bool)

(assert (=> setNonEmpty!26673 m!4887803))

(declare-fun b!4295088 () Bool)

(declare-fun e!2669052 () Bool)

(declare-fun tp!1318745 () Bool)

(declare-fun tp!1318746 () Bool)

(assert (=> b!4295088 (= e!2669052 (and tp!1318745 tp!1318746))))

(assert (=> b!4294545 (= tp!1318321 e!2669052)))

(assert (= (and b!4294545 ((_ is Cons!47809) (exprs!3373 (_2!26057 (_1!26058 (h!53230 mapValue!20052)))))) b!4295088))

(declare-fun e!2669054 () Bool)

(declare-fun setRes!26674 () Bool)

(declare-fun e!2669053 () Bool)

(declare-fun tp!1318747 () Bool)

(declare-fun b!4295089 () Bool)

(assert (=> b!4295089 (= e!2669054 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 (t!354540 mapDefault!20044))))) e!2669053 tp_is_empty!23123 setRes!26674 tp!1318747))))

(declare-fun condSetEmpty!26674 () Bool)

(assert (=> b!4295089 (= condSetEmpty!26674 (= (_2!26056 (h!53232 (t!354540 mapDefault!20044))) ((as const (Array Context!5746 Bool)) false)))))

(assert (=> b!4294607 (= tp!1318408 e!2669054)))

(declare-fun tp!1318749 () Bool)

(declare-fun e!2669055 () Bool)

(declare-fun setElem!26674 () Context!5746)

(declare-fun setNonEmpty!26674 () Bool)

(assert (=> setNonEmpty!26674 (= setRes!26674 (and tp!1318749 (inv!63342 setElem!26674) e!2669055))))

(declare-fun setRest!26674 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26674 (= (_2!26056 (h!53232 (t!354540 mapDefault!20044))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26674 true) setRest!26674))))

(declare-fun b!4295090 () Bool)

(declare-fun tp!1318748 () Bool)

(assert (=> b!4295090 (= e!2669053 tp!1318748)))

(declare-fun b!4295091 () Bool)

(declare-fun tp!1318750 () Bool)

(assert (=> b!4295091 (= e!2669055 tp!1318750)))

(declare-fun setIsEmpty!26674 () Bool)

(assert (=> setIsEmpty!26674 setRes!26674))

(assert (= b!4295089 b!4295090))

(assert (= (and b!4295089 condSetEmpty!26674) setIsEmpty!26674))

(assert (= (and b!4295089 (not condSetEmpty!26674)) setNonEmpty!26674))

(assert (= setNonEmpty!26674 b!4295091))

(assert (= (and b!4294607 ((_ is Cons!47812) (t!354540 mapDefault!20044))) b!4295089))

(declare-fun m!4887805 () Bool)

(assert (=> b!4295089 m!4887805))

(declare-fun m!4887807 () Bool)

(assert (=> setNonEmpty!26674 m!4887807))

(declare-fun b!4295092 () Bool)

(declare-fun e!2669056 () Bool)

(declare-fun tp!1318751 () Bool)

(declare-fun tp!1318752 () Bool)

(assert (=> b!4295092 (= e!2669056 (and tp!1318751 tp!1318752))))

(assert (=> b!4294581 (= tp!1318371 e!2669056)))

(assert (= (and b!4294581 ((_ is Cons!47809) (exprs!3373 setElem!26629))) b!4295092))

(declare-fun condSetEmpty!26675 () Bool)

(assert (=> setNonEmpty!26634 (= condSetEmpty!26675 (= setRest!26634 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26675 () Bool)

(assert (=> setNonEmpty!26634 (= tp!1318381 setRes!26675)))

(declare-fun setIsEmpty!26675 () Bool)

(assert (=> setIsEmpty!26675 setRes!26675))

(declare-fun setNonEmpty!26675 () Bool)

(declare-fun tp!1318753 () Bool)

(declare-fun e!2669057 () Bool)

(declare-fun setElem!26675 () Context!5746)

(assert (=> setNonEmpty!26675 (= setRes!26675 (and tp!1318753 (inv!63342 setElem!26675) e!2669057))))

(declare-fun setRest!26675 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26675 (= setRest!26634 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26675 true) setRest!26675))))

(declare-fun b!4295093 () Bool)

(declare-fun tp!1318754 () Bool)

(assert (=> b!4295093 (= e!2669057 tp!1318754)))

(assert (= (and setNonEmpty!26634 condSetEmpty!26675) setIsEmpty!26675))

(assert (= (and setNonEmpty!26634 (not condSetEmpty!26675)) setNonEmpty!26675))

(assert (= setNonEmpty!26675 b!4295093))

(declare-fun m!4887809 () Bool)

(assert (=> setNonEmpty!26675 m!4887809))

(declare-fun b!4295094 () Bool)

(declare-fun e!2669058 () Bool)

(declare-fun tp!1318755 () Bool)

(declare-fun tp!1318756 () Bool)

(assert (=> b!4295094 (= e!2669058 (and tp!1318755 tp!1318756))))

(assert (=> b!4294524 (= tp!1318288 e!2669058)))

(assert (= (and b!4294524 ((_ is Cons!47809) (exprs!3373 (_1!26055 (_1!26056 (h!53232 mapValue!20044)))))) b!4295094))

(declare-fun setIsEmpty!26676 () Bool)

(declare-fun setRes!26676 () Bool)

(assert (=> setIsEmpty!26676 setRes!26676))

(declare-fun e!2669060 () Bool)

(assert (=> b!4294605 (= tp!1318406 e!2669060)))

(declare-fun b!4295095 () Bool)

(declare-fun tp!1318758 () Bool)

(assert (=> b!4295095 (= e!2669060 (and setRes!26676 tp!1318758))))

(declare-fun condSetEmpty!26676 () Bool)

(assert (=> b!4295095 (= condSetEmpty!26676 (= (_1!26059 (_1!26060 (h!53231 (t!354539 mapValue!20046)))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun tp!1318757 () Bool)

(declare-fun e!2669059 () Bool)

(declare-fun setNonEmpty!26676 () Bool)

(declare-fun setElem!26676 () Context!5746)

(assert (=> setNonEmpty!26676 (= setRes!26676 (and tp!1318757 (inv!63342 setElem!26676) e!2669059))))

(declare-fun setRest!26676 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26676 (= (_1!26059 (_1!26060 (h!53231 (t!354539 mapValue!20046)))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26676 true) setRest!26676))))

(declare-fun b!4295096 () Bool)

(declare-fun tp!1318759 () Bool)

(assert (=> b!4295096 (= e!2669059 tp!1318759)))

(assert (= (and b!4295095 condSetEmpty!26676) setIsEmpty!26676))

(assert (= (and b!4295095 (not condSetEmpty!26676)) setNonEmpty!26676))

(assert (= setNonEmpty!26676 b!4295096))

(assert (= (and b!4294605 ((_ is Cons!47811) (t!354539 mapValue!20046))) b!4295095))

(declare-fun m!4887811 () Bool)

(assert (=> setNonEmpty!26676 m!4887811))

(declare-fun b!4295107 () Bool)

(declare-fun e!2669069 () Bool)

(declare-fun lt!1517874 () MutLongMap!4464)

(assert (=> b!4295107 (= e!2669069 ((_ is LongMap!4464) lt!1517874))))

(assert (=> b!4295107 (= lt!1517874 (v!41758 (underlying!9158 (cache!4510 (_2!26064 (update!285 (_2!26063 lt!1517723) z!3765 from!999 (_1!26063 lt!1517723) totalInput!812))))))))

(declare-fun b!4295106 () Bool)

(declare-fun e!2669068 () Bool)

(assert (=> b!4295106 (= e!2669068 e!2669069)))

(declare-fun b!4295105 () Bool)

(declare-fun e!2669067 () Bool)

(assert (=> b!4295105 (= e!2669067 e!2669068)))

(assert (=> d!1265835 (= true e!2669067)))

(assert (= b!4295106 b!4295107))

(assert (= (and b!4295105 ((_ is HashMap!4370) (cache!4510 (_2!26064 (update!285 (_2!26063 lt!1517723) z!3765 from!999 (_1!26063 lt!1517723) totalInput!812))))) b!4295106))

(assert (= d!1265835 b!4295105))

(declare-fun setIsEmpty!26677 () Bool)

(declare-fun setRes!26677 () Bool)

(assert (=> setIsEmpty!26677 setRes!26677))

(declare-fun e!2669071 () Bool)

(assert (=> b!4294602 (= tp!1318398 e!2669071)))

(declare-fun b!4295108 () Bool)

(declare-fun tp!1318761 () Bool)

(assert (=> b!4295108 (= e!2669071 (and setRes!26677 tp!1318761))))

(declare-fun condSetEmpty!26677 () Bool)

(assert (=> b!4295108 (= condSetEmpty!26677 (= (_1!26059 (_1!26060 (h!53231 (t!354539 mapDefault!20055)))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun tp!1318760 () Bool)

(declare-fun e!2669070 () Bool)

(declare-fun setElem!26677 () Context!5746)

(declare-fun setNonEmpty!26677 () Bool)

(assert (=> setNonEmpty!26677 (= setRes!26677 (and tp!1318760 (inv!63342 setElem!26677) e!2669070))))

(declare-fun setRest!26677 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26677 (= (_1!26059 (_1!26060 (h!53231 (t!354539 mapDefault!20055)))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26677 true) setRest!26677))))

(declare-fun b!4295109 () Bool)

(declare-fun tp!1318762 () Bool)

(assert (=> b!4295109 (= e!2669070 tp!1318762)))

(assert (= (and b!4295108 condSetEmpty!26677) setIsEmpty!26677))

(assert (= (and b!4295108 (not condSetEmpty!26677)) setNonEmpty!26677))

(assert (= setNonEmpty!26677 b!4295109))

(assert (= (and b!4294602 ((_ is Cons!47811) (t!354539 mapDefault!20055))) b!4295108))

(declare-fun m!4887813 () Bool)

(assert (=> setNonEmpty!26677 m!4887813))

(declare-fun b!4295110 () Bool)

(declare-fun e!2669072 () Bool)

(declare-fun tp!1318763 () Bool)

(declare-fun tp!1318764 () Bool)

(assert (=> b!4295110 (= e!2669072 (and tp!1318763 tp!1318764))))

(assert (=> b!4294540 (= tp!1318323 e!2669072)))

(assert (= (and b!4294540 ((_ is Cons!47809) (exprs!3373 setElem!26618))) b!4295110))

(declare-fun b!4295111 () Bool)

(declare-fun e!2669073 () Bool)

(declare-fun tp!1318765 () Bool)

(declare-fun tp!1318766 () Bool)

(assert (=> b!4295111 (= e!2669073 (and tp!1318765 tp!1318766))))

(assert (=> b!4294624 (= tp!1318428 e!2669073)))

(assert (= (and b!4294624 ((_ is Cons!47809) (exprs!3373 setElem!26643))) b!4295111))

(declare-fun tp!1318769 () Bool)

(declare-fun e!2669075 () Bool)

(declare-fun tp!1318768 () Bool)

(declare-fun b!4295112 () Bool)

(assert (=> b!4295112 (= e!2669075 (and (inv!63343 (left!35456 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) tp!1318769 (inv!63343 (right!35786 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) tp!1318768))))

(declare-fun b!4295114 () Bool)

(declare-fun e!2669074 () Bool)

(declare-fun tp!1318767 () Bool)

(assert (=> b!4295114 (= e!2669074 tp!1318767)))

(declare-fun b!4295113 () Bool)

(assert (=> b!4295113 (= e!2669075 (and (inv!63346 (xs!17730 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) e!2669074))))

(assert (=> b!4294621 (= tp!1318423 (and (inv!63343 (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) e!2669075))))

(assert (= (and b!4294621 ((_ is Node!14424) (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) b!4295112))

(assert (= b!4295113 b!4295114))

(assert (= (and b!4294621 ((_ is Leaf!22317) (left!35456 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) b!4295113))

(declare-fun m!4887815 () Bool)

(assert (=> b!4295112 m!4887815))

(declare-fun m!4887817 () Bool)

(assert (=> b!4295112 m!4887817))

(declare-fun m!4887819 () Bool)

(assert (=> b!4295113 m!4887819))

(assert (=> b!4294621 m!4887252))

(declare-fun b!4295115 () Bool)

(declare-fun tp!1318772 () Bool)

(declare-fun e!2669077 () Bool)

(declare-fun tp!1318771 () Bool)

(assert (=> b!4295115 (= e!2669077 (and (inv!63343 (left!35456 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) tp!1318772 (inv!63343 (right!35786 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) tp!1318771))))

(declare-fun b!4295117 () Bool)

(declare-fun e!2669076 () Bool)

(declare-fun tp!1318770 () Bool)

(assert (=> b!4295117 (= e!2669076 tp!1318770)))

(declare-fun b!4295116 () Bool)

(assert (=> b!4295116 (= e!2669077 (and (inv!63346 (xs!17730 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) e!2669076))))

(assert (=> b!4294621 (= tp!1318422 (and (inv!63343 (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183)))) e!2669077))))

(assert (= (and b!4294621 ((_ is Node!14424) (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) b!4295115))

(assert (= b!4295116 b!4295117))

(assert (= (and b!4294621 ((_ is Leaf!22317) (right!35786 (c!730753 (totalInput!4392 cacheFindLongestMatch!183))))) b!4295116))

(declare-fun m!4887821 () Bool)

(assert (=> b!4295115 m!4887821))

(declare-fun m!4887823 () Bool)

(assert (=> b!4295115 m!4887823))

(declare-fun m!4887825 () Bool)

(assert (=> b!4295116 m!4887825))

(assert (=> b!4294621 m!4887254))

(declare-fun b!4295138 () Bool)

(declare-fun e!2669104 () Bool)

(declare-fun lt!1517881 () MutLongMap!4465)

(assert (=> b!4295138 (= e!2669104 ((_ is LongMap!4465) lt!1517881))))

(assert (=> b!4295138 (= lt!1517881 (v!41760 (underlying!9160 (cache!4509 (_2!26061 (findLongestMatchInnerZipperFastV2Mem!21 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26062 lt!1517725) (_3!3277 lt!1517725) cacheFindLongestMatch!183))))))))

(declare-fun b!4295139 () Bool)

(declare-fun e!2669096 () Bool)

(assert (=> b!4295139 (= e!2669096 e!2669104)))

(declare-fun b!4295140 () Bool)

(declare-fun e!2669097 () Bool)

(declare-fun lt!1517882 () MutLongMap!4463)

(assert (=> b!4295140 (= e!2669097 ((_ is LongMap!4463) lt!1517882))))

(assert (=> b!4295140 (= lt!1517882 (v!41756 (underlying!9156 (cache!4511 (_3!3276 (findLongestMatchInnerZipperFastV2Mem!21 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26062 lt!1517725) (_3!3277 lt!1517725) cacheFindLongestMatch!183))))))))

(declare-fun b!4295141 () Bool)

(declare-fun e!2669101 () Bool)

(assert (=> b!4295141 (= e!2669101 e!2669096)))

(declare-fun b!4295142 () Bool)

(declare-fun e!2669098 () Bool)

(declare-fun e!2669100 () Bool)

(assert (=> b!4295142 (= e!2669098 e!2669100)))

(declare-fun b!4295143 () Bool)

(declare-fun e!2669099 () Bool)

(declare-fun e!2669103 () Bool)

(assert (=> b!4295143 (= e!2669099 e!2669103)))

(declare-fun b!4295144 () Bool)

(assert (=> b!4295144 (= e!2669103 e!2669097)))

(declare-fun b!4295145 () Bool)

(declare-fun lt!1517883 () MutLongMap!4464)

(assert (=> b!4295145 (= e!2669100 ((_ is LongMap!4464) lt!1517883))))

(assert (=> b!4295145 (= lt!1517883 (v!41758 (underlying!9158 (cache!4510 (_4!531 (findLongestMatchInnerZipperFastV2Mem!21 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26062 lt!1517725) (_3!3277 lt!1517725) cacheFindLongestMatch!183))))))))

(declare-fun b!4295146 () Bool)

(declare-fun e!2669102 () Bool)

(assert (=> b!4295146 (= e!2669102 e!2669098)))

(assert (=> d!1265799 (= true (and e!2669101 e!2669099 e!2669102))))

(assert (= b!4295139 b!4295138))

(assert (= (and b!4295141 ((_ is HashMap!4371) (cache!4509 (_2!26061 (findLongestMatchInnerZipperFastV2Mem!21 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26062 lt!1517725) (_3!3277 lt!1517725) cacheFindLongestMatch!183))))) b!4295139))

(assert (= d!1265799 b!4295141))

(assert (= b!4295144 b!4295140))

(assert (= (and b!4295143 ((_ is HashMap!4369) (cache!4511 (_3!3276 (findLongestMatchInnerZipperFastV2Mem!21 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26062 lt!1517725) (_3!3277 lt!1517725) cacheFindLongestMatch!183))))) b!4295144))

(assert (= d!1265799 b!4295143))

(assert (= b!4295142 b!4295145))

(assert (= (and b!4295146 ((_ is HashMap!4370) (cache!4510 (_4!531 (findLongestMatchInnerZipperFastV2Mem!21 (_1!26062 lt!1517725) (+ 1 from!999) totalInput!812 totalInputSize!257 (_2!26062 lt!1517725) (_3!3277 lt!1517725) cacheFindLongestMatch!183))))) b!4295142))

(assert (= d!1265799 b!4295146))

(declare-fun b!4295147 () Bool)

(declare-fun e!2669105 () Bool)

(declare-fun tp!1318773 () Bool)

(declare-fun tp!1318774 () Bool)

(assert (=> b!4295147 (= e!2669105 (and tp!1318773 tp!1318774))))

(assert (=> b!4294514 (= tp!1318270 e!2669105)))

(assert (= (and b!4294514 ((_ is Cons!47809) (exprs!3373 (_1!26055 (_1!26056 (h!53232 mapDefault!20049)))))) b!4295147))

(declare-fun setIsEmpty!26678 () Bool)

(declare-fun setRes!26678 () Bool)

(assert (=> setIsEmpty!26678 setRes!26678))

(declare-fun e!2669107 () Bool)

(assert (=> b!4294604 (= tp!1318400 e!2669107)))

(declare-fun b!4295148 () Bool)

(declare-fun tp!1318776 () Bool)

(assert (=> b!4295148 (= e!2669107 (and setRes!26678 tp!1318776))))

(declare-fun condSetEmpty!26678 () Bool)

(assert (=> b!4295148 (= condSetEmpty!26678 (= (_1!26059 (_1!26060 (h!53231 (t!354539 mapValue!20055)))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setElem!26678 () Context!5746)

(declare-fun e!2669106 () Bool)

(declare-fun setNonEmpty!26678 () Bool)

(declare-fun tp!1318775 () Bool)

(assert (=> setNonEmpty!26678 (= setRes!26678 (and tp!1318775 (inv!63342 setElem!26678) e!2669106))))

(declare-fun setRest!26678 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26678 (= (_1!26059 (_1!26060 (h!53231 (t!354539 mapValue!20055)))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26678 true) setRest!26678))))

(declare-fun b!4295149 () Bool)

(declare-fun tp!1318777 () Bool)

(assert (=> b!4295149 (= e!2669106 tp!1318777)))

(assert (= (and b!4295148 condSetEmpty!26678) setIsEmpty!26678))

(assert (= (and b!4295148 (not condSetEmpty!26678)) setNonEmpty!26678))

(assert (= setNonEmpty!26678 b!4295149))

(assert (= (and b!4294604 ((_ is Cons!47811) (t!354539 mapValue!20055))) b!4295148))

(declare-fun m!4887827 () Bool)

(assert (=> setNonEmpty!26678 m!4887827))

(declare-fun b!4295150 () Bool)

(declare-fun setRes!26679 () Bool)

(declare-fun e!2669108 () Bool)

(declare-fun tp!1318778 () Bool)

(declare-fun e!2669109 () Bool)

(assert (=> b!4295150 (= e!2669109 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 (t!354540 (minValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))))))) e!2669108 tp_is_empty!23123 setRes!26679 tp!1318778))))

(declare-fun condSetEmpty!26679 () Bool)

(assert (=> b!4295150 (= condSetEmpty!26679 (= (_2!26056 (h!53232 (t!354540 (minValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))))) ((as const (Array Context!5746 Bool)) false)))))

(assert (=> b!4294566 (= tp!1318353 e!2669109)))

(declare-fun setNonEmpty!26679 () Bool)

(declare-fun tp!1318780 () Bool)

(declare-fun setElem!26679 () Context!5746)

(declare-fun e!2669110 () Bool)

(assert (=> setNonEmpty!26679 (= setRes!26679 (and tp!1318780 (inv!63342 setElem!26679) e!2669110))))

(declare-fun setRest!26679 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26679 (= (_2!26056 (h!53232 (t!354540 (minValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26679 true) setRest!26679))))

(declare-fun b!4295151 () Bool)

(declare-fun tp!1318779 () Bool)

(assert (=> b!4295151 (= e!2669108 tp!1318779)))

(declare-fun b!4295152 () Bool)

(declare-fun tp!1318781 () Bool)

(assert (=> b!4295152 (= e!2669110 tp!1318781)))

(declare-fun setIsEmpty!26679 () Bool)

(assert (=> setIsEmpty!26679 setRes!26679))

(assert (= b!4295150 b!4295151))

(assert (= (and b!4295150 condSetEmpty!26679) setIsEmpty!26679))

(assert (= (and b!4295150 (not condSetEmpty!26679)) setNonEmpty!26679))

(assert (= setNonEmpty!26679 b!4295152))

(assert (= (and b!4294566 ((_ is Cons!47812) (t!354540 (minValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947))))))))) b!4295150))

(declare-fun m!4887829 () Bool)

(assert (=> b!4295150 m!4887829))

(declare-fun m!4887831 () Bool)

(assert (=> setNonEmpty!26679 m!4887831))

(declare-fun b!4295167 () Bool)

(declare-fun e!2669125 () Bool)

(declare-fun e!2669123 () Bool)

(assert (=> b!4295167 (= e!2669125 e!2669123)))

(declare-fun b!4295168 () Bool)

(declare-fun lt!1517889 () MutLongMap!4465)

(assert (=> b!4295168 (= e!2669123 ((_ is LongMap!4465) lt!1517889))))

(assert (=> b!4295168 (= lt!1517889 (v!41760 (underlying!9160 (cache!4509 (_2!26062 (derivationStepZipperMem!139 z!3765 (apply!10848 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))))))

(declare-fun b!4295169 () Bool)

(declare-fun e!2669126 () Bool)

(assert (=> b!4295169 (= e!2669126 e!2669125)))

(declare-fun b!4295170 () Bool)

(declare-fun e!2669128 () Bool)

(declare-fun e!2669127 () Bool)

(assert (=> b!4295170 (= e!2669128 e!2669127)))

(declare-fun e!2669124 () Bool)

(assert (=> d!1265801 (= true (and e!2669126 e!2669124))))

(declare-fun b!4295171 () Bool)

(assert (=> b!4295171 (= e!2669124 e!2669128)))

(declare-fun b!4295172 () Bool)

(declare-fun lt!1517888 () MutLongMap!4463)

(assert (=> b!4295172 (= e!2669127 ((_ is LongMap!4463) lt!1517888))))

(assert (=> b!4295172 (= lt!1517888 (v!41756 (underlying!9156 (cache!4511 (_3!3277 (derivationStepZipperMem!139 z!3765 (apply!10848 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))))))

(assert (= b!4295167 b!4295168))

(assert (= (and b!4295169 ((_ is HashMap!4371) (cache!4509 (_2!26062 (derivationStepZipperMem!139 z!3765 (apply!10848 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))) b!4295167))

(assert (= d!1265801 b!4295169))

(assert (= b!4295170 b!4295172))

(assert (= (and b!4295171 ((_ is HashMap!4369) (cache!4511 (_3!3277 (derivationStepZipperMem!139 z!3765 (apply!10848 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))) b!4295170))

(assert (= d!1265801 b!4295171))

(declare-fun b!4295173 () Bool)

(declare-fun e!2669129 () Bool)

(declare-fun tp!1318782 () Bool)

(declare-fun tp!1318783 () Bool)

(assert (=> b!4295173 (= e!2669129 (and tp!1318782 tp!1318783))))

(assert (=> b!4294565 (= tp!1318352 e!2669129)))

(assert (= (and b!4294565 ((_ is Cons!47809) (exprs!3373 setElem!26625))) b!4295173))

(declare-fun b!4295174 () Bool)

(declare-fun e!2669130 () Bool)

(declare-fun tp!1318784 () Bool)

(assert (=> b!4295174 (= e!2669130 (and tp_is_empty!23123 tp!1318784))))

(assert (=> b!4294620 (= tp!1318418 e!2669130)))

(assert (= (and b!4294620 ((_ is Cons!47813) (innerList!14512 (xs!17730 (c!730753 totalInput!812))))) b!4295174))

(declare-fun condSetEmpty!26680 () Bool)

(assert (=> setNonEmpty!26629 (= condSetEmpty!26680 (= setRest!26629 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26680 () Bool)

(assert (=> setNonEmpty!26629 (= tp!1318369 setRes!26680)))

(declare-fun setIsEmpty!26680 () Bool)

(assert (=> setIsEmpty!26680 setRes!26680))

(declare-fun tp!1318785 () Bool)

(declare-fun e!2669131 () Bool)

(declare-fun setElem!26680 () Context!5746)

(declare-fun setNonEmpty!26680 () Bool)

(assert (=> setNonEmpty!26680 (= setRes!26680 (and tp!1318785 (inv!63342 setElem!26680) e!2669131))))

(declare-fun setRest!26680 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26680 (= setRest!26629 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26680 true) setRest!26680))))

(declare-fun b!4295175 () Bool)

(declare-fun tp!1318786 () Bool)

(assert (=> b!4295175 (= e!2669131 tp!1318786)))

(assert (= (and setNonEmpty!26629 condSetEmpty!26680) setIsEmpty!26680))

(assert (= (and setNonEmpty!26629 (not condSetEmpty!26680)) setNonEmpty!26680))

(assert (= setNonEmpty!26680 b!4295175))

(declare-fun m!4887833 () Bool)

(assert (=> setNonEmpty!26680 m!4887833))

(declare-fun setRes!26681 () Bool)

(declare-fun b!4295176 () Bool)

(declare-fun tp!1318787 () Bool)

(declare-fun e!2669133 () Bool)

(declare-fun e!2669132 () Bool)

(assert (=> b!4295176 (= e!2669133 (and (inv!63342 (_1!26055 (_1!26056 (h!53232 (t!354540 mapDefault!20049))))) e!2669132 tp_is_empty!23123 setRes!26681 tp!1318787))))

(declare-fun condSetEmpty!26681 () Bool)

(assert (=> b!4295176 (= condSetEmpty!26681 (= (_2!26056 (h!53232 (t!354540 mapDefault!20049))) ((as const (Array Context!5746 Bool)) false)))))

(assert (=> b!4294513 (= tp!1318273 e!2669133)))

(declare-fun tp!1318789 () Bool)

(declare-fun e!2669134 () Bool)

(declare-fun setElem!26681 () Context!5746)

(declare-fun setNonEmpty!26681 () Bool)

(assert (=> setNonEmpty!26681 (= setRes!26681 (and tp!1318789 (inv!63342 setElem!26681) e!2669134))))

(declare-fun setRest!26681 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26681 (= (_2!26056 (h!53232 (t!354540 mapDefault!20049))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26681 true) setRest!26681))))

(declare-fun b!4295177 () Bool)

(declare-fun tp!1318788 () Bool)

(assert (=> b!4295177 (= e!2669132 tp!1318788)))

(declare-fun b!4295178 () Bool)

(declare-fun tp!1318790 () Bool)

(assert (=> b!4295178 (= e!2669134 tp!1318790)))

(declare-fun setIsEmpty!26681 () Bool)

(assert (=> setIsEmpty!26681 setRes!26681))

(assert (= b!4295176 b!4295177))

(assert (= (and b!4295176 condSetEmpty!26681) setIsEmpty!26681))

(assert (= (and b!4295176 (not condSetEmpty!26681)) setNonEmpty!26681))

(assert (= setNonEmpty!26681 b!4295178))

(assert (= (and b!4294513 ((_ is Cons!47812) (t!354540 mapDefault!20049))) b!4295176))

(declare-fun m!4887835 () Bool)

(assert (=> b!4295176 m!4887835))

(declare-fun m!4887837 () Bool)

(assert (=> setNonEmpty!26681 m!4887837))

(declare-fun condSetEmpty!26682 () Bool)

(assert (=> setNonEmpty!26640 (= condSetEmpty!26682 (= setRest!26640 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26682 () Bool)

(assert (=> setNonEmpty!26640 (= tp!1318399 setRes!26682)))

(declare-fun setIsEmpty!26682 () Bool)

(assert (=> setIsEmpty!26682 setRes!26682))

(declare-fun tp!1318791 () Bool)

(declare-fun setElem!26682 () Context!5746)

(declare-fun setNonEmpty!26682 () Bool)

(declare-fun e!2669135 () Bool)

(assert (=> setNonEmpty!26682 (= setRes!26682 (and tp!1318791 (inv!63342 setElem!26682) e!2669135))))

(declare-fun setRest!26682 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26682 (= setRest!26640 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26682 true) setRest!26682))))

(declare-fun b!4295179 () Bool)

(declare-fun tp!1318792 () Bool)

(assert (=> b!4295179 (= e!2669135 tp!1318792)))

(assert (= (and setNonEmpty!26640 condSetEmpty!26682) setIsEmpty!26682))

(assert (= (and setNonEmpty!26640 (not condSetEmpty!26682)) setNonEmpty!26682))

(assert (= setNonEmpty!26682 b!4295179))

(declare-fun m!4887839 () Bool)

(assert (=> setNonEmpty!26682 m!4887839))

(declare-fun condSetEmpty!26683 () Bool)

(assert (=> setNonEmpty!26613 (= condSetEmpty!26683 (= setRest!26613 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26683 () Bool)

(assert (=> setNonEmpty!26613 (= tp!1318289 setRes!26683)))

(declare-fun setIsEmpty!26683 () Bool)

(assert (=> setIsEmpty!26683 setRes!26683))

(declare-fun setElem!26683 () Context!5746)

(declare-fun e!2669136 () Bool)

(declare-fun setNonEmpty!26683 () Bool)

(declare-fun tp!1318793 () Bool)

(assert (=> setNonEmpty!26683 (= setRes!26683 (and tp!1318793 (inv!63342 setElem!26683) e!2669136))))

(declare-fun setRest!26683 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26683 (= setRest!26613 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26683 true) setRest!26683))))

(declare-fun b!4295180 () Bool)

(declare-fun tp!1318794 () Bool)

(assert (=> b!4295180 (= e!2669136 tp!1318794)))

(assert (= (and setNonEmpty!26613 condSetEmpty!26683) setIsEmpty!26683))

(assert (= (and setNonEmpty!26613 (not condSetEmpty!26683)) setNonEmpty!26683))

(assert (= setNonEmpty!26683 b!4295180))

(declare-fun m!4887841 () Bool)

(assert (=> setNonEmpty!26683 m!4887841))

(declare-fun b!4295181 () Bool)

(declare-fun e!2669137 () Bool)

(declare-fun tp!1318795 () Bool)

(declare-fun tp!1318796 () Bool)

(assert (=> b!4295181 (= e!2669137 (and tp!1318795 tp!1318796))))

(assert (=> b!4294609 (= tp!1318411 e!2669137)))

(assert (= (and b!4294609 ((_ is Cons!47809) (exprs!3373 setElem!26642))) b!4295181))

(declare-fun b!4295182 () Bool)

(declare-fun e!2669138 () Bool)

(declare-fun tp!1318797 () Bool)

(declare-fun tp!1318798 () Bool)

(assert (=> b!4295182 (= e!2669138 (and tp!1318797 tp!1318798))))

(assert (=> b!4294606 (= tp!1318407 e!2669138)))

(assert (= (and b!4294606 ((_ is Cons!47809) (exprs!3373 setElem!26641))) b!4295182))

(declare-fun b!4295183 () Bool)

(declare-fun e!2669139 () Bool)

(declare-fun tp!1318799 () Bool)

(declare-fun tp!1318800 () Bool)

(assert (=> b!4295183 (= e!2669139 (and tp!1318799 tp!1318800))))

(assert (=> b!4294603 (= tp!1318403 e!2669139)))

(assert (= (and b!4294603 ((_ is Cons!47809) (exprs!3373 setElem!26639))) b!4295183))

(declare-fun b!4295184 () Bool)

(declare-fun e!2669143 () Bool)

(declare-fun tp!1318811 () Bool)

(assert (=> b!4295184 (= e!2669143 tp!1318811)))

(declare-fun e!2669144 () Bool)

(declare-fun mapDefault!20076 () List!47934)

(declare-fun tp!1318806 () Bool)

(declare-fun b!4295185 () Bool)

(declare-fun e!2669141 () Bool)

(declare-fun setRes!26685 () Bool)

(declare-fun tp!1318805 () Bool)

(assert (=> b!4295185 (= e!2669141 (and tp!1318805 (inv!63342 (_2!26057 (_1!26058 (h!53230 mapDefault!20076)))) e!2669144 tp_is_empty!23123 setRes!26685 tp!1318806))))

(declare-fun condSetEmpty!26685 () Bool)

(assert (=> b!4295185 (= condSetEmpty!26685 (= (_2!26058 (h!53230 mapDefault!20076)) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun b!4295186 () Bool)

(declare-fun tp!1318810 () Bool)

(assert (=> b!4295186 (= e!2669144 tp!1318810)))

(declare-fun b!4295187 () Bool)

(declare-fun e!2669140 () Bool)

(declare-fun tp!1318801 () Bool)

(assert (=> b!4295187 (= e!2669140 tp!1318801)))

(declare-fun mapNonEmpty!20076 () Bool)

(declare-fun mapRes!20076 () Bool)

(declare-fun tp!1318802 () Bool)

(declare-fun e!2669145 () Bool)

(assert (=> mapNonEmpty!20076 (= mapRes!20076 (and tp!1318802 e!2669145))))

(declare-fun mapValue!20076 () List!47934)

(declare-fun mapKey!20076 () (_ BitVec 32))

(declare-fun mapRest!20076 () (Array (_ BitVec 32) List!47934))

(assert (=> mapNonEmpty!20076 (= mapRest!20052 (store mapRest!20076 mapKey!20076 mapValue!20076))))

(declare-fun setIsEmpty!26684 () Bool)

(declare-fun setRes!26684 () Bool)

(assert (=> setIsEmpty!26684 setRes!26684))

(declare-fun condMapEmpty!20076 () Bool)

(assert (=> mapNonEmpty!20052 (= condMapEmpty!20076 (= mapRest!20052 ((as const (Array (_ BitVec 32) List!47934)) mapDefault!20076)))))

(assert (=> mapNonEmpty!20052 (= tp!1318314 (and e!2669141 mapRes!20076))))

(declare-fun setNonEmpty!26684 () Bool)

(declare-fun tp!1318804 () Bool)

(declare-fun setElem!26684 () Context!5746)

(assert (=> setNonEmpty!26684 (= setRes!26685 (and tp!1318804 (inv!63342 setElem!26684) e!2669143))))

(declare-fun setRest!26685 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26684 (= (_2!26058 (h!53230 mapDefault!20076)) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26684 true) setRest!26685))))

(declare-fun tp!1318807 () Bool)

(declare-fun tp!1318803 () Bool)

(declare-fun e!2669142 () Bool)

(declare-fun b!4295188 () Bool)

(assert (=> b!4295188 (= e!2669145 (and tp!1318807 (inv!63342 (_2!26057 (_1!26058 (h!53230 mapValue!20076)))) e!2669142 tp_is_empty!23123 setRes!26684 tp!1318803))))

(declare-fun condSetEmpty!26684 () Bool)

(assert (=> b!4295188 (= condSetEmpty!26684 (= (_2!26058 (h!53230 mapValue!20076)) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setIsEmpty!26685 () Bool)

(assert (=> setIsEmpty!26685 setRes!26685))

(declare-fun mapIsEmpty!20076 () Bool)

(assert (=> mapIsEmpty!20076 mapRes!20076))

(declare-fun b!4295189 () Bool)

(declare-fun tp!1318809 () Bool)

(assert (=> b!4295189 (= e!2669142 tp!1318809)))

(declare-fun setNonEmpty!26685 () Bool)

(declare-fun setElem!26685 () Context!5746)

(declare-fun tp!1318808 () Bool)

(assert (=> setNonEmpty!26685 (= setRes!26684 (and tp!1318808 (inv!63342 setElem!26685) e!2669140))))

(declare-fun setRest!26684 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26685 (= (_2!26058 (h!53230 mapValue!20076)) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26685 true) setRest!26684))))

(assert (= (and mapNonEmpty!20052 condMapEmpty!20076) mapIsEmpty!20076))

(assert (= (and mapNonEmpty!20052 (not condMapEmpty!20076)) mapNonEmpty!20076))

(assert (= b!4295188 b!4295189))

(assert (= (and b!4295188 condSetEmpty!26684) setIsEmpty!26684))

(assert (= (and b!4295188 (not condSetEmpty!26684)) setNonEmpty!26685))

(assert (= setNonEmpty!26685 b!4295187))

(assert (= (and mapNonEmpty!20076 ((_ is Cons!47810) mapValue!20076)) b!4295188))

(assert (= b!4295185 b!4295186))

(assert (= (and b!4295185 condSetEmpty!26685) setIsEmpty!26685))

(assert (= (and b!4295185 (not condSetEmpty!26685)) setNonEmpty!26684))

(assert (= setNonEmpty!26684 b!4295184))

(assert (= (and mapNonEmpty!20052 ((_ is Cons!47810) mapDefault!20076)) b!4295185))

(declare-fun m!4887843 () Bool)

(assert (=> mapNonEmpty!20076 m!4887843))

(declare-fun m!4887845 () Bool)

(assert (=> b!4295185 m!4887845))

(declare-fun m!4887847 () Bool)

(assert (=> b!4295188 m!4887847))

(declare-fun m!4887849 () Bool)

(assert (=> setNonEmpty!26685 m!4887849))

(declare-fun m!4887851 () Bool)

(assert (=> setNonEmpty!26684 m!4887851))

(declare-fun b!4295190 () Bool)

(declare-fun e!2669146 () Bool)

(declare-fun tp!1318812 () Bool)

(declare-fun tp!1318813 () Bool)

(assert (=> b!4295190 (= e!2669146 (and tp!1318812 tp!1318813))))

(assert (=> b!4294626 (= tp!1318426 e!2669146)))

(assert (= (and b!4294626 ((_ is Cons!47809) (exprs!3373 (_2!26057 (_1!26058 (h!53230 mapDefault!20045)))))) b!4295190))

(declare-fun setIsEmpty!26686 () Bool)

(declare-fun setRes!26686 () Bool)

(assert (=> setIsEmpty!26686 setRes!26686))

(declare-fun e!2669148 () Bool)

(assert (=> b!4294582 (= tp!1318373 e!2669148)))

(declare-fun b!4295191 () Bool)

(declare-fun tp!1318815 () Bool)

(assert (=> b!4295191 (= e!2669148 (and setRes!26686 tp!1318815))))

(declare-fun condSetEmpty!26686 () Bool)

(assert (=> b!4295191 (= condSetEmpty!26686 (= (_1!26059 (_1!26060 (h!53231 (t!354539 (minValue!4723 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183)))))))))) ((as const (Array Context!5746 Bool)) false)))))

(declare-fun e!2669147 () Bool)

(declare-fun setNonEmpty!26686 () Bool)

(declare-fun tp!1318814 () Bool)

(declare-fun setElem!26686 () Context!5746)

(assert (=> setNonEmpty!26686 (= setRes!26686 (and tp!1318814 (inv!63342 setElem!26686) e!2669147))))

(declare-fun setRest!26686 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26686 (= (_1!26059 (_1!26060 (h!53231 (t!354539 (minValue!4723 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183)))))))))) ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26686 true) setRest!26686))))

(declare-fun b!4295192 () Bool)

(declare-fun tp!1318816 () Bool)

(assert (=> b!4295192 (= e!2669147 tp!1318816)))

(assert (= (and b!4295191 condSetEmpty!26686) setIsEmpty!26686))

(assert (= (and b!4295191 (not condSetEmpty!26686)) setNonEmpty!26686))

(assert (= setNonEmpty!26686 b!4295192))

(assert (= (and b!4294582 ((_ is Cons!47811) (t!354539 (minValue!4723 (v!41757 (underlying!9157 (v!41758 (underlying!9158 (cache!4510 cacheFindLongestMatch!183))))))))) b!4295191))

(declare-fun m!4887853 () Bool)

(assert (=> setNonEmpty!26686 m!4887853))

(declare-fun b!4295193 () Bool)

(declare-fun e!2669149 () Bool)

(declare-fun tp!1318817 () Bool)

(declare-fun tp!1318818 () Bool)

(assert (=> b!4295193 (= e!2669149 (and tp!1318817 tp!1318818))))

(assert (=> b!4294509 (= tp!1318276 e!2669149)))

(assert (= (and b!4294509 ((_ is Cons!47809) (exprs!3373 setElem!26610))) b!4295193))

(declare-fun condSetEmpty!26687 () Bool)

(assert (=> setNonEmpty!26623 (= condSetEmpty!26687 (= setRest!26623 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26687 () Bool)

(assert (=> setNonEmpty!26623 (= tp!1318340 setRes!26687)))

(declare-fun setIsEmpty!26687 () Bool)

(assert (=> setIsEmpty!26687 setRes!26687))

(declare-fun setNonEmpty!26687 () Bool)

(declare-fun tp!1318819 () Bool)

(declare-fun setElem!26687 () Context!5746)

(declare-fun e!2669150 () Bool)

(assert (=> setNonEmpty!26687 (= setRes!26687 (and tp!1318819 (inv!63342 setElem!26687) e!2669150))))

(declare-fun setRest!26687 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26687 (= setRest!26623 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26687 true) setRest!26687))))

(declare-fun b!4295194 () Bool)

(declare-fun tp!1318820 () Bool)

(assert (=> b!4295194 (= e!2669150 tp!1318820)))

(assert (= (and setNonEmpty!26623 condSetEmpty!26687) setIsEmpty!26687))

(assert (= (and setNonEmpty!26623 (not condSetEmpty!26687)) setNonEmpty!26687))

(assert (= setNonEmpty!26687 b!4295194))

(declare-fun m!4887855 () Bool)

(assert (=> setNonEmpty!26687 m!4887855))

(declare-fun condSetEmpty!26688 () Bool)

(assert (=> setNonEmpty!26622 (= condSetEmpty!26688 (= setRest!26622 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26688 () Bool)

(assert (=> setNonEmpty!26622 (= tp!1318335 setRes!26688)))

(declare-fun setIsEmpty!26688 () Bool)

(assert (=> setIsEmpty!26688 setRes!26688))

(declare-fun setNonEmpty!26688 () Bool)

(declare-fun tp!1318821 () Bool)

(declare-fun setElem!26688 () Context!5746)

(declare-fun e!2669151 () Bool)

(assert (=> setNonEmpty!26688 (= setRes!26688 (and tp!1318821 (inv!63342 setElem!26688) e!2669151))))

(declare-fun setRest!26688 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26688 (= setRest!26622 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26688 true) setRest!26688))))

(declare-fun b!4295195 () Bool)

(declare-fun tp!1318822 () Bool)

(assert (=> b!4295195 (= e!2669151 tp!1318822)))

(assert (= (and setNonEmpty!26622 condSetEmpty!26688) setIsEmpty!26688))

(assert (= (and setNonEmpty!26622 (not condSetEmpty!26688)) setNonEmpty!26688))

(assert (= setNonEmpty!26688 b!4295195))

(declare-fun m!4887857 () Bool)

(assert (=> setNonEmpty!26688 m!4887857))

(declare-fun b!4295196 () Bool)

(declare-fun e!2669152 () Bool)

(declare-fun tp!1318823 () Bool)

(declare-fun tp!1318824 () Bool)

(assert (=> b!4295196 (= e!2669152 (and tp!1318823 tp!1318824))))

(assert (=> b!4294564 (= tp!1318350 e!2669152)))

(assert (= (and b!4294564 ((_ is Cons!47809) (exprs!3373 (_1!26055 (_1!26056 (h!53232 (zeroValue!4724 (v!41759 (underlying!9159 (v!41760 (underlying!9160 (cache!4509 cacheUp!947)))))))))))) b!4295196))

(declare-fun condSetEmpty!26689 () Bool)

(assert (=> setNonEmpty!26624 (= condSetEmpty!26689 (= setRest!26624 ((as const (Array Context!5746 Bool)) false)))))

(declare-fun setRes!26689 () Bool)

(assert (=> setNonEmpty!26624 (= tp!1318345 setRes!26689)))

(declare-fun setIsEmpty!26689 () Bool)

(assert (=> setIsEmpty!26689 setRes!26689))

(declare-fun setElem!26689 () Context!5746)

(declare-fun e!2669153 () Bool)

(declare-fun setNonEmpty!26689 () Bool)

(declare-fun tp!1318825 () Bool)

(assert (=> setNonEmpty!26689 (= setRes!26689 (and tp!1318825 (inv!63342 setElem!26689) e!2669153))))

(declare-fun setRest!26689 () (InoxSet Context!5746))

(assert (=> setNonEmpty!26689 (= setRest!26624 ((_ map or) (store ((as const (Array Context!5746 Bool)) false) setElem!26689 true) setRest!26689))))

(declare-fun b!4295197 () Bool)

(declare-fun tp!1318826 () Bool)

(assert (=> b!4295197 (= e!2669153 tp!1318826)))

(assert (= (and setNonEmpty!26624 condSetEmpty!26689) setIsEmpty!26689))

(assert (= (and setNonEmpty!26624 (not condSetEmpty!26689)) setNonEmpty!26689))

(assert (= setNonEmpty!26689 b!4295197))

(declare-fun m!4887859 () Bool)

(assert (=> setNonEmpty!26689 m!4887859))

(declare-fun b!4295198 () Bool)

(declare-fun e!2669154 () Bool)

(declare-fun tp!1318827 () Bool)

(declare-fun tp!1318828 () Bool)

(assert (=> b!4295198 (= e!2669154 (and tp!1318827 tp!1318828))))

(assert (=> b!4294568 (= tp!1318356 e!2669154)))

(assert (= (and b!4294568 ((_ is Cons!47809) (exprs!3373 setElem!26626))) b!4295198))

(declare-fun b_lambda!126119 () Bool)

(assert (= b_lambda!126117 (or d!1265845 b_lambda!126119)))

(declare-fun bs!603766 () Bool)

(declare-fun d!1266053 () Bool)

(assert (= bs!603766 (and d!1266053 d!1265845)))

(declare-fun validRegex!5860 (Regex!12983) Bool)

(assert (=> bs!603766 (= (dynLambda!20327 lambda!131583 (h!53229 (exprs!3373 setElem!26604))) (validRegex!5860 (h!53229 (exprs!3373 setElem!26604))))))

(declare-fun m!4887861 () Bool)

(assert (=> bs!603766 m!4887861))

(assert (=> b!4294966 d!1266053))

(check-sat (not d!1265939) (not d!1265969) (not d!1265871) (not d!1265971) (not d!1265895) (not b!4294913) (not d!1266029) (not b_next!128421) (not b!4294775) (not b!4294693) (not d!1266023) (not b!4295077) (not d!1265869) (not b!4294801) (not b!4295074) (not b!4294785) (not b!4295176) (not b!4295040) (not b!4295019) (not b!4295047) (not b!4294777) (not b!4295147) (not d!1265963) (not b!4295196) (not setNonEmpty!26665) (not mapNonEmpty!20065) (not b!4294784) tp_is_empty!23123 (not setNonEmpty!26676) (not d!1265937) (not b!4295192) (not b!4295001) (not b!4294641) (not b!4294669) (not b!4295043) (not setNonEmpty!26658) (not b!4295198) (not b!4295183) (not b!4295110) (not b!4295028) (not b!4295027) (not b!4294977) (not b!4294666) (not b!4295181) (not b!4295185) (not setNonEmpty!26646) (not b!4294957) (not b!4295013) (not b_next!128439) (not b!4295062) (not b!4294832) (not b!4295111) (not setNonEmpty!26689) (not d!1265919) (not b!4294793) (not setNonEmpty!26657) (not d!1265961) (not b!4294791) (not b!4295044) (not b!4294903) (not b!4294968) (not setNonEmpty!26686) (not setNonEmpty!26662) (not setNonEmpty!26654) (not b!4294668) (not d!1265999) (not b!4294886) (not b!4294618) (not d!1266039) (not b!4294976) (not setNonEmpty!26670) (not setNonEmpty!26647) b_and!338939 (not b!4295078) (not b!4295032) (not bm!294524) (not d!1266045) (not d!1265923) (not d!1266005) (not b!4295048) (not b!4294662) (not d!1265955) (not b_next!128425) (not d!1266019) (not b!4295018) (not d!1266021) (not b!4295066) (not b!4295112) (not b!4295036) (not b!4294978) (not b!4294836) (not bm!294525) (not b!4294974) (not b!4295174) (not b!4295179) (not b_next!128407) (not setNonEmpty!26678) (not setNonEmpty!26650) (not d!1265987) (not setNonEmpty!26677) (not b!4295092) (not bs!603766) (not b!4295061) (not setNonEmpty!26669) (not d!1265949) (not b!4295191) (not b!4294659) (not setNonEmpty!26687) (not b!4294701) (not setNonEmpty!26682) (not b!4295039) (not b!4295087) (not b!4295089) (not b!4295022) (not b!4294698) (not b!4295186) (not b!4295010) (not d!1265897) (not b!4294959) (not b!4295090) (not d!1265959) (not b!4294642) (not setNonEmpty!26681) (not b!4295150) (not setNonEmpty!26668) (not b!4295068) (not b!4295075) (not d!1266003) (not b!4295088) (not d!1265967) (not d!1265981) (not b!4295005) (not setNonEmpty!26651) (not b!4295059) (not b!4295188) (not b!4295058) (not b!4294808) (not setNonEmpty!26671) (not b!4294935) (not b!4295046) (not d!1265893) (not b!4294943) (not b!4294634) (not d!1265953) (not mapNonEmpty!20073) (not b!4294948) (not b!4294834) (not b!4295195) (not b!4294995) (not bm!294526) (not b!4294997) (not d!1265957) (not d!1265951) b_and!338929 b_and!338937 (not b!4295189) (not d!1265885) (not d!1265913) (not b!4295064) (not b!4294888) (not b!4295035) (not b_next!128411) (not b!4294773) (not b!4294892) (not b!4294772) (not d!1265983) b_and!338925 (not b!4294764) (not b!4295116) (not b!4294996) (not d!1265947) b_and!338919 (not b!4295095) (not b!4294946) (not d!1266025) (not b!4294661) (not d!1265997) b_and!338951 (not setNonEmpty!26685) (not b!4295083) (not b!4294999) (not b!4295041) (not d!1265907) (not mapNonEmpty!20058) (not b!4294981) (not b!4294837) b_and!338941 (not b_next!128417) (not d!1266037) (not b!4294829) (not b!4294760) (not mapNonEmpty!20075) (not b!4295149) (not setNonEmpty!26659) (not b!4295082) (not d!1265975) (not setNonEmpty!26674) (not b_next!128427) (not b!4294982) (not b!4294665) (not b!4295030) (not b!4294970) (not b!4295190) (not b!4295180) (not d!1265881) (not setNonEmpty!26653) (not b!4295108) (not b!4295042) (not b!4295113) (not b!4295178) (not b!4295084) (not d!1266031) (not d!1266009) b_and!338933 (not setNonEmpty!26652) b_and!338927 (not b!4295002) (not d!1265935) (not b!4295037) (not setNonEmpty!26666) (not b!4295029) (not b_next!128413) (not b!4294994) (not setNonEmpty!26683) (not b_lambda!126119) (not b!4295007) (not b_next!128423) (not b!4294878) (not d!1266041) (not b!4294969) (not b!4295026) (not b!4294798) b_and!338943 (not mapNonEmpty!20066) (not d!1265911) b_and!338953 (not b_next!128409) (not b!4295152) (not b!4294826) (not b!4295008) (not b!4294967) (not d!1265941) (not d!1266027) (not d!1265867) (not b!4294769) (not b!4295051) (not b!4295033) (not b!4294971) (not b!4295060) (not d!1265877) (not b!4295076) (not b!4295175) (not b!4295194) (not b!4294663) (not setNonEmpty!26680) (not d!1266013) (not b!4295023) (not d!1265905) (not setNonEmpty!26672) (not b!4295080) (not d!1265979) (not d!1265973) (not b!4294972) (not b!4294781) (not b!4294799) (not d!1265883) (not b!4294621) (not b!4295055) (not d!1265993) (not b!4295050) (not d!1265925) (not b!4294692) (not b_next!128431) (not b!4294927) (not d!1265991) (not d!1266033) (not b!4295052) (not mapNonEmpty!20067) (not b!4294934) (not b_next!128429) (not b!4294906) (not d!1265995) (not setNonEmpty!26661) (not b!4294657) (not b!4295045) (not setNonEmpty!26684) (not b!4295085) (not b!4294949) (not setNonEmpty!26673) (not setNonEmpty!26655) (not b!4295067) (not b!4295079) (not b!4294998) (not b!4295016) (not b!4295012) (not b!4294697) (not b!4295056) (not b!4295177) (not b!4294947) b_and!338931 (not b!4295182) (not b!4294973) (not b!4295025) (not b!4295015) (not b!4294879) (not b!4295034) (not b!4294644) (not setNonEmpty!26663) (not b!4294950) (not b!4295117) (not b!4295017) b_and!338945 b_and!338949 (not b!4294891) (not b!4294786) (not b!4295053) (not mapNonEmpty!20076) (not b_next!128415) (not b!4295004) (not b!4294809) (not b!4294765) (not b!4295049) (not b_next!128419) (not b!4294975) (not b!4295114) (not b_next!128435) (not b!4294703) (not b!4294664) (not b!4294961) (not d!1265989) (not setNonEmpty!26648) (not b!4294895) (not d!1265933) (not b!4294839) (not mapNonEmpty!20072) (not b!4294794) (not bm!294520) (not b!4295057) (not setNonEmpty!26660) (not setNonEmpty!26664) (not b!4294979) (not b!4294980) (not d!1266047) (not b!4295021) (not b!4295020) b_and!338947 (not b!4295096) (not b!4295187) (not b!4294926) b_and!338921 (not b!4294658) (not b!4295151) (not b!4294643) (not setNonEmpty!26667) (not b!4295000) (not b!4295091) (not d!1265873) (not b!4295094) (not b!4295115) (not d!1265927) (not b!4295193) (not mapNonEmpty!20074) (not b!4294951) (not b_next!128441) (not b!4294700) (not b!4295063) (not b!4294945) (not b!4295011) (not b!4294880) (not b!4294960) (not d!1265865) (not b!4294691) (not b!4294771) (not b!4294956) (not d!1265977) (not b!4294667) (not b!4295086) (not b!4294633) (not b!4295006) (not setNonEmpty!26688) (not b!4294833) (not b!4295014) (not b!4295184) (not b!4294918) (not b!4294938) (not b!4295003) (not d!1266001) (not d!1265915) (not d!1266051) (not b!4294825) (not d!1266043) (not b!4294758) (not setNonEmpty!26675) (not b!4294810) (not d!1265903) (not d!1265965) (not b!4294831) (not b!4294928) (not b!4294942) (not d!1265931) (not b!4294670) (not d!1265891) (not b_next!128433) (not d!1265889) (not b!4294660) (not b!4295109) (not b!4295065) (not d!1265921) (not b!4295148) (not b!4294937) (not b!4294874) (not b!4295173) (not b!4294952) (not b!4295093) (not b_next!128437) (not b!4294930) (not b!4295197) (not b!4294885) (not setNonEmpty!26656) (not d!1265875) (not setNonEmpty!26679) (not b!4295073) b_and!338923 (not bm!294521) (not d!1266011) b_and!338935 (not setNonEmpty!26649))
(check-sat (not b_next!128421) (not b_next!128439) b_and!338939 (not b_next!128425) (not b_next!128407) (not b_next!128427) (not b_next!128431) (not b_next!128429) b_and!338931 (not b_next!128441) (not b_next!128433) (not b_next!128411) b_and!338929 b_and!338937 b_and!338919 b_and!338925 (not b_next!128417) b_and!338951 b_and!338941 b_and!338933 b_and!338927 b_and!338943 (not b_next!128413) (not b_next!128423) b_and!338953 (not b_next!128409) b_and!338945 b_and!338949 (not b_next!128415) (not b_next!128419) (not b_next!128435) b_and!338947 b_and!338921 b_and!338923 (not b_next!128437) b_and!338935)
