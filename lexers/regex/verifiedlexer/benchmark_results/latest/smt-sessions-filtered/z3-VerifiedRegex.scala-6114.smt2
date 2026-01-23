; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297052 () Bool)

(assert start!297052)

(declare-fun b!3171642 () Bool)

(declare-fun b_free!83281 () Bool)

(declare-fun b_next!83985 () Bool)

(assert (=> b!3171642 (= b_free!83281 (not b_next!83985))))

(declare-fun tp!1001472 () Bool)

(declare-fun b_and!209559 () Bool)

(assert (=> b!3171642 (= tp!1001472 b_and!209559)))

(declare-fun b!3171638 () Bool)

(declare-fun b_free!83283 () Bool)

(declare-fun b_next!83987 () Bool)

(assert (=> b!3171638 (= b_free!83283 (not b_next!83987))))

(declare-fun tp!1001465 () Bool)

(declare-fun b_and!209561 () Bool)

(assert (=> b!3171638 (= tp!1001465 b_and!209561)))

(declare-fun b!3171635 () Bool)

(declare-fun e!1975332 () Bool)

(declare-fun tp!1001470 () Bool)

(declare-fun tp!1001464 () Bool)

(assert (=> b!3171635 (= e!1975332 (and tp!1001470 tp!1001464))))

(declare-fun b!3171636 () Bool)

(declare-fun e!1975329 () Bool)

(declare-fun e!1975325 () Bool)

(assert (=> b!3171636 (= e!1975329 e!1975325)))

(declare-fun b!3171637 () Bool)

(declare-fun e!1975330 () Bool)

(declare-fun e!1975327 () Bool)

(assert (=> b!3171637 (= e!1975330 e!1975327)))

(declare-fun e!1975331 () Bool)

(declare-datatypes ((C!19744 0))(
  ( (C!19745 (val!11908 Int)) )
))
(declare-datatypes ((Regex!9779 0))(
  ( (ElementMatch!9779 (c!533255 C!19744)) (Concat!15100 (regOne!20070 Regex!9779) (regTwo!20070 Regex!9779)) (EmptyExpr!9779) (Star!9779 (reg!10108 Regex!9779)) (EmptyLang!9779) (Union!9779 (regOne!20071 Regex!9779) (regTwo!20071 Regex!9779)) )
))
(declare-datatypes ((tuple2!34768 0))(
  ( (tuple2!34769 (_1!20516 Regex!9779) (_2!20516 C!19744)) )
))
(declare-datatypes ((tuple2!34770 0))(
  ( (tuple2!34771 (_1!20517 tuple2!34768) (_2!20517 Regex!9779)) )
))
(declare-datatypes ((List!35622 0))(
  ( (Nil!35498) (Cons!35498 (h!40918 tuple2!34770) (t!234705 List!35622)) )
))
(declare-datatypes ((array!15036 0))(
  ( (array!15037 (arr!6690 (Array (_ BitVec 32) (_ BitVec 64))) (size!26776 (_ BitVec 32))) )
))
(declare-datatypes ((array!15038 0))(
  ( (array!15039 (arr!6691 (Array (_ BitVec 32) List!35622)) (size!26777 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8400 0))(
  ( (LongMapFixedSize!8401 (defaultEntry!4585 Int) (mask!10883 (_ BitVec 32)) (extraKeys!4449 (_ BitVec 32)) (zeroValue!4459 List!35622) (minValue!4459 List!35622) (_size!8443 (_ BitVec 32)) (_keys!4500 array!15036) (_values!4481 array!15038) (_vacant!4261 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16609 0))(
  ( (Cell!16610 (v!35239 LongMapFixedSize!8400)) )
))
(declare-datatypes ((MutLongMap!4200 0))(
  ( (LongMap!4200 (underlying!8629 Cell!16609)) (MutLongMapExt!4199 (__x!22706 Int)) )
))
(declare-datatypes ((Cell!16611 0))(
  ( (Cell!16612 (v!35240 MutLongMap!4200)) )
))
(declare-datatypes ((Hashable!4116 0))(
  ( (HashableExt!4115 (__x!22707 Int)) )
))
(declare-datatypes ((MutableMap!4106 0))(
  ( (MutableMapExt!4105 (__x!22708 Int)) (HashMap!4106 (underlying!8630 Cell!16611) (hashF!6148 Hashable!4116) (_size!8444 (_ BitVec 32)) (defaultValue!4277 Int)) )
))
(declare-datatypes ((Cache!482 0))(
  ( (Cache!483 (cache!4252 MutableMap!4106)) )
))
(declare-fun thiss!28499 () Cache!482)

(declare-fun tp!1001466 () Bool)

(declare-fun tp!1001471 () Bool)

(declare-fun array_inv!4796 (array!15036) Bool)

(declare-fun array_inv!4797 (array!15038) Bool)

(assert (=> b!3171638 (= e!1975327 (and tp!1001465 tp!1001471 tp!1001466 (array_inv!4796 (_keys!4500 (v!35239 (underlying!8629 (v!35240 (underlying!8630 (cache!4252 thiss!28499))))))) (array_inv!4797 (_values!4481 (v!35239 (underlying!8629 (v!35240 (underlying!8630 (cache!4252 thiss!28499))))))) e!1975331))))

(declare-fun b!3171639 () Bool)

(declare-fun res!1289120 () Bool)

(declare-fun e!1975324 () Bool)

(assert (=> b!3171639 (=> (not res!1289120) (not e!1975324))))

(declare-fun validCacheMap!85 (MutableMap!4106) Bool)

(assert (=> b!3171639 (= res!1289120 (validCacheMap!85 (cache!4252 thiss!28499)))))

(declare-fun b!3171640 () Bool)

(declare-fun tp!1001462 () Bool)

(assert (=> b!3171640 (= e!1975332 tp!1001462)))

(declare-fun b!3171641 () Bool)

(declare-fun e!1975323 () Bool)

(assert (=> b!3171641 (= e!1975323 e!1975330)))

(declare-fun e!1975326 () Bool)

(assert (=> b!3171642 (= e!1975325 (and e!1975326 tp!1001472))))

(declare-fun b!3171643 () Bool)

(declare-fun tp!1001469 () Bool)

(declare-fun mapRes!19037 () Bool)

(assert (=> b!3171643 (= e!1975331 (and tp!1001469 mapRes!19037))))

(declare-fun condMapEmpty!19037 () Bool)

(declare-fun mapDefault!19037 () List!35622)

(assert (=> b!3171643 (= condMapEmpty!19037 (= (arr!6691 (_values!4481 (v!35239 (underlying!8629 (v!35240 (underlying!8630 (cache!4252 thiss!28499))))))) ((as const (Array (_ BitVec 32) List!35622)) mapDefault!19037)))))

(declare-fun mapNonEmpty!19037 () Bool)

(declare-fun tp!1001463 () Bool)

(declare-fun tp!1001461 () Bool)

(assert (=> mapNonEmpty!19037 (= mapRes!19037 (and tp!1001463 tp!1001461))))

(declare-fun mapKey!19037 () (_ BitVec 32))

(declare-fun mapRest!19037 () (Array (_ BitVec 32) List!35622))

(declare-fun mapValue!19037 () List!35622)

(assert (=> mapNonEmpty!19037 (= (arr!6691 (_values!4481 (v!35239 (underlying!8629 (v!35240 (underlying!8630 (cache!4252 thiss!28499))))))) (store mapRest!19037 mapKey!19037 mapValue!19037))))

(declare-fun res!1289121 () Bool)

(assert (=> start!297052 (=> (not res!1289121) (not e!1975324))))

(declare-fun r!4721 () Regex!9779)

(declare-fun validRegex!4488 (Regex!9779) Bool)

(assert (=> start!297052 (= res!1289121 (validRegex!4488 r!4721))))

(assert (=> start!297052 e!1975324))

(assert (=> start!297052 e!1975332))

(declare-fun inv!48206 (Cache!482) Bool)

(assert (=> start!297052 (and (inv!48206 thiss!28499) e!1975329)))

(declare-fun b!3171644 () Bool)

(declare-fun tp_is_empty!17121 () Bool)

(assert (=> b!3171644 (= e!1975332 tp_is_empty!17121)))

(declare-fun mapIsEmpty!19037 () Bool)

(assert (=> mapIsEmpty!19037 mapRes!19037))

(declare-fun b!3171645 () Bool)

(declare-fun lt!1066328 () MutLongMap!4200)

(get-info :version)

(assert (=> b!3171645 (= e!1975326 (and e!1975323 ((_ is LongMap!4200) lt!1066328)))))

(assert (=> b!3171645 (= lt!1066328 (v!35240 (underlying!8630 (cache!4252 thiss!28499))))))

(declare-fun b!3171646 () Bool)

(declare-fun valid!3276 (MutableMap!4106) Bool)

(assert (=> b!3171646 (= e!1975324 (not (valid!3276 (cache!4252 thiss!28499))))))

(declare-fun b!3171647 () Bool)

(declare-fun tp!1001468 () Bool)

(declare-fun tp!1001467 () Bool)

(assert (=> b!3171647 (= e!1975332 (and tp!1001468 tp!1001467))))

(declare-fun b!3171648 () Bool)

(declare-fun res!1289119 () Bool)

(assert (=> b!3171648 (=> (not res!1289119) (not e!1975324))))

(assert (=> b!3171648 (= res!1289119 ((_ is HashMap!4106) (cache!4252 thiss!28499)))))

(assert (= (and start!297052 res!1289121) b!3171639))

(assert (= (and b!3171639 res!1289120) b!3171648))

(assert (= (and b!3171648 res!1289119) b!3171646))

(assert (= (and start!297052 ((_ is ElementMatch!9779) r!4721)) b!3171644))

(assert (= (and start!297052 ((_ is Concat!15100) r!4721)) b!3171647))

(assert (= (and start!297052 ((_ is Star!9779) r!4721)) b!3171640))

(assert (= (and start!297052 ((_ is Union!9779) r!4721)) b!3171635))

(assert (= (and b!3171643 condMapEmpty!19037) mapIsEmpty!19037))

(assert (= (and b!3171643 (not condMapEmpty!19037)) mapNonEmpty!19037))

(assert (= b!3171638 b!3171643))

(assert (= b!3171637 b!3171638))

(assert (= b!3171641 b!3171637))

(assert (= (and b!3171645 ((_ is LongMap!4200) (v!35240 (underlying!8630 (cache!4252 thiss!28499))))) b!3171641))

(assert (= b!3171642 b!3171645))

(assert (= (and b!3171636 ((_ is HashMap!4106) (cache!4252 thiss!28499))) b!3171642))

(assert (= start!297052 b!3171636))

(declare-fun m!3430281 () Bool)

(assert (=> mapNonEmpty!19037 m!3430281))

(declare-fun m!3430283 () Bool)

(assert (=> b!3171638 m!3430283))

(declare-fun m!3430285 () Bool)

(assert (=> b!3171638 m!3430285))

(declare-fun m!3430287 () Bool)

(assert (=> start!297052 m!3430287))

(declare-fun m!3430289 () Bool)

(assert (=> start!297052 m!3430289))

(declare-fun m!3430291 () Bool)

(assert (=> b!3171646 m!3430291))

(declare-fun m!3430293 () Bool)

(assert (=> b!3171639 m!3430293))

(check-sat (not mapNonEmpty!19037) tp_is_empty!17121 (not start!297052) (not b!3171647) (not b!3171646) (not b!3171643) (not b_next!83987) (not b_next!83985) (not b!3171640) b_and!209561 (not b!3171635) (not b!3171639) b_and!209559 (not b!3171638))
(check-sat b_and!209559 b_and!209561 (not b_next!83987) (not b_next!83985))
(get-model)

(declare-fun d!869261 () Bool)

(declare-fun res!1289128 () Bool)

(declare-fun e!1975337 () Bool)

(assert (=> d!869261 (=> (not res!1289128) (not e!1975337))))

(assert (=> d!869261 (= res!1289128 (valid!3276 (cache!4252 thiss!28499)))))

(assert (=> d!869261 (= (validCacheMap!85 (cache!4252 thiss!28499)) e!1975337)))

(declare-fun b!3171655 () Bool)

(declare-fun res!1289129 () Bool)

(assert (=> b!3171655 (=> (not res!1289129) (not e!1975337))))

(declare-fun invariantList!493 (List!35622) Bool)

(declare-datatypes ((ListMap!1341 0))(
  ( (ListMap!1342 (toList!2085 List!35622)) )
))
(declare-fun map!7950 (MutableMap!4106) ListMap!1341)

(assert (=> b!3171655 (= res!1289129 (invariantList!493 (toList!2085 (map!7950 (cache!4252 thiss!28499)))))))

(declare-fun b!3171656 () Bool)

(declare-fun lambda!116038 () Int)

(declare-fun forall!7172 (List!35622 Int) Bool)

(assert (=> b!3171656 (= e!1975337 (forall!7172 (toList!2085 (map!7950 (cache!4252 thiss!28499))) lambda!116038))))

(assert (= (and d!869261 res!1289128) b!3171655))

(assert (= (and b!3171655 res!1289129) b!3171656))

(assert (=> d!869261 m!3430291))

(declare-fun m!3430296 () Bool)

(assert (=> b!3171655 m!3430296))

(declare-fun m!3430298 () Bool)

(assert (=> b!3171655 m!3430298))

(assert (=> b!3171656 m!3430296))

(declare-fun m!3430300 () Bool)

(assert (=> b!3171656 m!3430300))

(assert (=> b!3171639 d!869261))

(declare-fun d!869263 () Bool)

(assert (=> d!869263 (= (array_inv!4796 (_keys!4500 (v!35239 (underlying!8629 (v!35240 (underlying!8630 (cache!4252 thiss!28499))))))) (bvsge (size!26776 (_keys!4500 (v!35239 (underlying!8629 (v!35240 (underlying!8630 (cache!4252 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3171638 d!869263))

(declare-fun d!869265 () Bool)

(assert (=> d!869265 (= (array_inv!4797 (_values!4481 (v!35239 (underlying!8629 (v!35240 (underlying!8630 (cache!4252 thiss!28499))))))) (bvsge (size!26777 (_values!4481 (v!35239 (underlying!8629 (v!35240 (underlying!8630 (cache!4252 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3171638 d!869265))

(declare-fun d!869267 () Bool)

(declare-fun res!1289134 () Bool)

(declare-fun e!1975340 () Bool)

(assert (=> d!869267 (=> (not res!1289134) (not e!1975340))))

(declare-fun valid!3277 (MutLongMap!4200) Bool)

(assert (=> d!869267 (= res!1289134 (valid!3277 (v!35240 (underlying!8630 (cache!4252 thiss!28499)))))))

(assert (=> d!869267 (= (valid!3276 (cache!4252 thiss!28499)) e!1975340)))

(declare-fun b!3171661 () Bool)

(declare-fun res!1289135 () Bool)

(assert (=> b!3171661 (=> (not res!1289135) (not e!1975340))))

(declare-fun lambda!116041 () Int)

(declare-datatypes ((tuple2!34772 0))(
  ( (tuple2!34773 (_1!20518 (_ BitVec 64)) (_2!20518 List!35622)) )
))
(declare-datatypes ((List!35623 0))(
  ( (Nil!35499) (Cons!35499 (h!40919 tuple2!34772) (t!234706 List!35623)) )
))
(declare-fun forall!7173 (List!35623 Int) Bool)

(declare-datatypes ((ListLongMap!741 0))(
  ( (ListLongMap!742 (toList!2086 List!35623)) )
))
(declare-fun map!7951 (MutLongMap!4200) ListLongMap!741)

(assert (=> b!3171661 (= res!1289135 (forall!7173 (toList!2086 (map!7951 (v!35240 (underlying!8630 (cache!4252 thiss!28499))))) lambda!116041))))

(declare-fun b!3171662 () Bool)

(declare-fun allKeysSameHashInMap!245 (ListLongMap!741 Hashable!4116) Bool)

(assert (=> b!3171662 (= e!1975340 (allKeysSameHashInMap!245 (map!7951 (v!35240 (underlying!8630 (cache!4252 thiss!28499)))) (hashF!6148 (cache!4252 thiss!28499))))))

(assert (= (and d!869267 res!1289134) b!3171661))

(assert (= (and b!3171661 res!1289135) b!3171662))

(declare-fun m!3430302 () Bool)

(assert (=> d!869267 m!3430302))

(declare-fun m!3430304 () Bool)

(assert (=> b!3171661 m!3430304))

(declare-fun m!3430306 () Bool)

(assert (=> b!3171661 m!3430306))

(assert (=> b!3171662 m!3430304))

(assert (=> b!3171662 m!3430304))

(declare-fun m!3430308 () Bool)

(assert (=> b!3171662 m!3430308))

(assert (=> b!3171646 d!869267))

(declare-fun b!3171681 () Bool)

(declare-fun res!1289146 () Bool)

(declare-fun e!1975357 () Bool)

(assert (=> b!3171681 (=> res!1289146 e!1975357)))

(assert (=> b!3171681 (= res!1289146 (not ((_ is Concat!15100) r!4721)))))

(declare-fun e!1975355 () Bool)

(assert (=> b!3171681 (= e!1975355 e!1975357)))

(declare-fun b!3171682 () Bool)

(declare-fun e!1975356 () Bool)

(declare-fun call!230495 () Bool)

(assert (=> b!3171682 (= e!1975356 call!230495)))

(declare-fun d!869269 () Bool)

(declare-fun res!1289149 () Bool)

(declare-fun e!1975358 () Bool)

(assert (=> d!869269 (=> res!1289149 e!1975358)))

(assert (=> d!869269 (= res!1289149 ((_ is ElementMatch!9779) r!4721))))

(assert (=> d!869269 (= (validRegex!4488 r!4721) e!1975358)))

(declare-fun c!533261 () Bool)

(declare-fun c!533260 () Bool)

(declare-fun bm!230490 () Bool)

(assert (=> bm!230490 (= call!230495 (validRegex!4488 (ite c!533260 (reg!10108 r!4721) (ite c!533261 (regTwo!20071 r!4721) (regTwo!20070 r!4721)))))))

(declare-fun b!3171683 () Bool)

(declare-fun e!1975359 () Bool)

(assert (=> b!3171683 (= e!1975359 e!1975355)))

(assert (=> b!3171683 (= c!533261 ((_ is Union!9779) r!4721))))

(declare-fun b!3171684 () Bool)

(declare-fun e!1975360 () Bool)

(declare-fun call!230497 () Bool)

(assert (=> b!3171684 (= e!1975360 call!230497)))

(declare-fun b!3171685 () Bool)

(assert (=> b!3171685 (= e!1975357 e!1975360)))

(declare-fun res!1289150 () Bool)

(assert (=> b!3171685 (=> (not res!1289150) (not e!1975360))))

(declare-fun call!230496 () Bool)

(assert (=> b!3171685 (= res!1289150 call!230496)))

(declare-fun bm!230491 () Bool)

(assert (=> bm!230491 (= call!230497 call!230495)))

(declare-fun b!3171686 () Bool)

(declare-fun res!1289148 () Bool)

(declare-fun e!1975361 () Bool)

(assert (=> b!3171686 (=> (not res!1289148) (not e!1975361))))

(assert (=> b!3171686 (= res!1289148 call!230496)))

(assert (=> b!3171686 (= e!1975355 e!1975361)))

(declare-fun bm!230492 () Bool)

(assert (=> bm!230492 (= call!230496 (validRegex!4488 (ite c!533261 (regOne!20071 r!4721) (regOne!20070 r!4721))))))

(declare-fun b!3171687 () Bool)

(assert (=> b!3171687 (= e!1975358 e!1975359)))

(assert (=> b!3171687 (= c!533260 ((_ is Star!9779) r!4721))))

(declare-fun b!3171688 () Bool)

(assert (=> b!3171688 (= e!1975359 e!1975356)))

(declare-fun res!1289147 () Bool)

(declare-fun nullable!3361 (Regex!9779) Bool)

(assert (=> b!3171688 (= res!1289147 (not (nullable!3361 (reg!10108 r!4721))))))

(assert (=> b!3171688 (=> (not res!1289147) (not e!1975356))))

(declare-fun b!3171689 () Bool)

(assert (=> b!3171689 (= e!1975361 call!230497)))

(assert (= (and d!869269 (not res!1289149)) b!3171687))

(assert (= (and b!3171687 c!533260) b!3171688))

(assert (= (and b!3171687 (not c!533260)) b!3171683))

(assert (= (and b!3171688 res!1289147) b!3171682))

(assert (= (and b!3171683 c!533261) b!3171686))

(assert (= (and b!3171683 (not c!533261)) b!3171681))

(assert (= (and b!3171686 res!1289148) b!3171689))

(assert (= (and b!3171681 (not res!1289146)) b!3171685))

(assert (= (and b!3171685 res!1289150) b!3171684))

(assert (= (or b!3171686 b!3171685) bm!230492))

(assert (= (or b!3171689 b!3171684) bm!230491))

(assert (= (or b!3171682 bm!230491) bm!230490))

(declare-fun m!3430310 () Bool)

(assert (=> bm!230490 m!3430310))

(declare-fun m!3430312 () Bool)

(assert (=> bm!230492 m!3430312))

(declare-fun m!3430314 () Bool)

(assert (=> b!3171688 m!3430314))

(assert (=> start!297052 d!869269))

(declare-fun d!869271 () Bool)

(declare-fun res!1289153 () Bool)

(declare-fun e!1975364 () Bool)

(assert (=> d!869271 (=> (not res!1289153) (not e!1975364))))

(assert (=> d!869271 (= res!1289153 ((_ is HashMap!4106) (cache!4252 thiss!28499)))))

(assert (=> d!869271 (= (inv!48206 thiss!28499) e!1975364)))

(declare-fun b!3171692 () Bool)

(assert (=> b!3171692 (= e!1975364 (validCacheMap!85 (cache!4252 thiss!28499)))))

(assert (= (and d!869271 res!1289153) b!3171692))

(assert (=> b!3171692 m!3430293))

(assert (=> start!297052 d!869271))

(declare-fun e!1975367 () Bool)

(assert (=> b!3171635 (= tp!1001470 e!1975367)))

(declare-fun b!3171706 () Bool)

(declare-fun tp!1001487 () Bool)

(declare-fun tp!1001486 () Bool)

(assert (=> b!3171706 (= e!1975367 (and tp!1001487 tp!1001486))))

(declare-fun b!3171703 () Bool)

(assert (=> b!3171703 (= e!1975367 tp_is_empty!17121)))

(declare-fun b!3171704 () Bool)

(declare-fun tp!1001485 () Bool)

(declare-fun tp!1001483 () Bool)

(assert (=> b!3171704 (= e!1975367 (and tp!1001485 tp!1001483))))

(declare-fun b!3171705 () Bool)

(declare-fun tp!1001484 () Bool)

(assert (=> b!3171705 (= e!1975367 tp!1001484)))

(assert (= (and b!3171635 ((_ is ElementMatch!9779) (regOne!20071 r!4721))) b!3171703))

(assert (= (and b!3171635 ((_ is Concat!15100) (regOne!20071 r!4721))) b!3171704))

(assert (= (and b!3171635 ((_ is Star!9779) (regOne!20071 r!4721))) b!3171705))

(assert (= (and b!3171635 ((_ is Union!9779) (regOne!20071 r!4721))) b!3171706))

(declare-fun e!1975368 () Bool)

(assert (=> b!3171635 (= tp!1001464 e!1975368)))

(declare-fun b!3171710 () Bool)

(declare-fun tp!1001492 () Bool)

(declare-fun tp!1001491 () Bool)

(assert (=> b!3171710 (= e!1975368 (and tp!1001492 tp!1001491))))

(declare-fun b!3171707 () Bool)

(assert (=> b!3171707 (= e!1975368 tp_is_empty!17121)))

(declare-fun b!3171708 () Bool)

(declare-fun tp!1001490 () Bool)

(declare-fun tp!1001488 () Bool)

(assert (=> b!3171708 (= e!1975368 (and tp!1001490 tp!1001488))))

(declare-fun b!3171709 () Bool)

(declare-fun tp!1001489 () Bool)

(assert (=> b!3171709 (= e!1975368 tp!1001489)))

(assert (= (and b!3171635 ((_ is ElementMatch!9779) (regTwo!20071 r!4721))) b!3171707))

(assert (= (and b!3171635 ((_ is Concat!15100) (regTwo!20071 r!4721))) b!3171708))

(assert (= (and b!3171635 ((_ is Star!9779) (regTwo!20071 r!4721))) b!3171709))

(assert (= (and b!3171635 ((_ is Union!9779) (regTwo!20071 r!4721))) b!3171710))

(declare-fun e!1975369 () Bool)

(assert (=> b!3171640 (= tp!1001462 e!1975369)))

(declare-fun b!3171714 () Bool)

(declare-fun tp!1001497 () Bool)

(declare-fun tp!1001496 () Bool)

(assert (=> b!3171714 (= e!1975369 (and tp!1001497 tp!1001496))))

(declare-fun b!3171711 () Bool)

(assert (=> b!3171711 (= e!1975369 tp_is_empty!17121)))

(declare-fun b!3171712 () Bool)

(declare-fun tp!1001495 () Bool)

(declare-fun tp!1001493 () Bool)

(assert (=> b!3171712 (= e!1975369 (and tp!1001495 tp!1001493))))

(declare-fun b!3171713 () Bool)

(declare-fun tp!1001494 () Bool)

(assert (=> b!3171713 (= e!1975369 tp!1001494)))

(assert (= (and b!3171640 ((_ is ElementMatch!9779) (reg!10108 r!4721))) b!3171711))

(assert (= (and b!3171640 ((_ is Concat!15100) (reg!10108 r!4721))) b!3171712))

(assert (= (and b!3171640 ((_ is Star!9779) (reg!10108 r!4721))) b!3171713))

(assert (= (and b!3171640 ((_ is Union!9779) (reg!10108 r!4721))) b!3171714))

(declare-fun tp!1001515 () Bool)

(declare-fun e!1975374 () Bool)

(declare-fun tp!1001516 () Bool)

(declare-fun b!3171722 () Bool)

(declare-fun tp!1001512 () Bool)

(assert (=> b!3171722 (= e!1975374 (and tp!1001516 tp_is_empty!17121 tp!1001512 tp!1001515))))

(declare-fun b!3171721 () Bool)

(declare-fun tp!1001514 () Bool)

(declare-fun tp!1001513 () Bool)

(declare-fun e!1975375 () Bool)

(declare-fun tp!1001517 () Bool)

(assert (=> b!3171721 (= e!1975375 (and tp!1001517 tp_is_empty!17121 tp!1001513 tp!1001514))))

(declare-fun condMapEmpty!19040 () Bool)

(declare-fun mapDefault!19040 () List!35622)

(assert (=> mapNonEmpty!19037 (= condMapEmpty!19040 (= mapRest!19037 ((as const (Array (_ BitVec 32) List!35622)) mapDefault!19040)))))

(declare-fun mapRes!19040 () Bool)

(assert (=> mapNonEmpty!19037 (= tp!1001463 (and e!1975374 mapRes!19040))))

(declare-fun mapNonEmpty!19040 () Bool)

(declare-fun tp!1001518 () Bool)

(assert (=> mapNonEmpty!19040 (= mapRes!19040 (and tp!1001518 e!1975375))))

(declare-fun mapKey!19040 () (_ BitVec 32))

(declare-fun mapRest!19040 () (Array (_ BitVec 32) List!35622))

(declare-fun mapValue!19040 () List!35622)

(assert (=> mapNonEmpty!19040 (= mapRest!19037 (store mapRest!19040 mapKey!19040 mapValue!19040))))

(declare-fun mapIsEmpty!19040 () Bool)

(assert (=> mapIsEmpty!19040 mapRes!19040))

(assert (= (and mapNonEmpty!19037 condMapEmpty!19040) mapIsEmpty!19040))

(assert (= (and mapNonEmpty!19037 (not condMapEmpty!19040)) mapNonEmpty!19040))

(assert (= (and mapNonEmpty!19040 ((_ is Cons!35498) mapValue!19040)) b!3171721))

(assert (= (and mapNonEmpty!19037 ((_ is Cons!35498) mapDefault!19040)) b!3171722))

(declare-fun m!3430316 () Bool)

(assert (=> mapNonEmpty!19040 m!3430316))

(declare-fun tp!1001525 () Bool)

(declare-fun e!1975378 () Bool)

(declare-fun tp!1001526 () Bool)

(declare-fun tp!1001527 () Bool)

(declare-fun b!3171727 () Bool)

(assert (=> b!3171727 (= e!1975378 (and tp!1001525 tp_is_empty!17121 tp!1001526 tp!1001527))))

(assert (=> mapNonEmpty!19037 (= tp!1001461 e!1975378)))

(assert (= (and mapNonEmpty!19037 ((_ is Cons!35498) mapValue!19037)) b!3171727))

(declare-fun e!1975379 () Bool)

(assert (=> b!3171647 (= tp!1001468 e!1975379)))

(declare-fun b!3171731 () Bool)

(declare-fun tp!1001532 () Bool)

(declare-fun tp!1001531 () Bool)

(assert (=> b!3171731 (= e!1975379 (and tp!1001532 tp!1001531))))

(declare-fun b!3171728 () Bool)

(assert (=> b!3171728 (= e!1975379 tp_is_empty!17121)))

(declare-fun b!3171729 () Bool)

(declare-fun tp!1001530 () Bool)

(declare-fun tp!1001528 () Bool)

(assert (=> b!3171729 (= e!1975379 (and tp!1001530 tp!1001528))))

(declare-fun b!3171730 () Bool)

(declare-fun tp!1001529 () Bool)

(assert (=> b!3171730 (= e!1975379 tp!1001529)))

(assert (= (and b!3171647 ((_ is ElementMatch!9779) (regOne!20070 r!4721))) b!3171728))

(assert (= (and b!3171647 ((_ is Concat!15100) (regOne!20070 r!4721))) b!3171729))

(assert (= (and b!3171647 ((_ is Star!9779) (regOne!20070 r!4721))) b!3171730))

(assert (= (and b!3171647 ((_ is Union!9779) (regOne!20070 r!4721))) b!3171731))

(declare-fun e!1975380 () Bool)

(assert (=> b!3171647 (= tp!1001467 e!1975380)))

(declare-fun b!3171735 () Bool)

(declare-fun tp!1001537 () Bool)

(declare-fun tp!1001536 () Bool)

(assert (=> b!3171735 (= e!1975380 (and tp!1001537 tp!1001536))))

(declare-fun b!3171732 () Bool)

(assert (=> b!3171732 (= e!1975380 tp_is_empty!17121)))

(declare-fun b!3171733 () Bool)

(declare-fun tp!1001535 () Bool)

(declare-fun tp!1001533 () Bool)

(assert (=> b!3171733 (= e!1975380 (and tp!1001535 tp!1001533))))

(declare-fun b!3171734 () Bool)

(declare-fun tp!1001534 () Bool)

(assert (=> b!3171734 (= e!1975380 tp!1001534)))

(assert (= (and b!3171647 ((_ is ElementMatch!9779) (regTwo!20070 r!4721))) b!3171732))

(assert (= (and b!3171647 ((_ is Concat!15100) (regTwo!20070 r!4721))) b!3171733))

(assert (= (and b!3171647 ((_ is Star!9779) (regTwo!20070 r!4721))) b!3171734))

(assert (= (and b!3171647 ((_ is Union!9779) (regTwo!20070 r!4721))) b!3171735))

(declare-fun tp!1001540 () Bool)

(declare-fun e!1975381 () Bool)

(declare-fun b!3171736 () Bool)

(declare-fun tp!1001539 () Bool)

(declare-fun tp!1001538 () Bool)

(assert (=> b!3171736 (= e!1975381 (and tp!1001538 tp_is_empty!17121 tp!1001539 tp!1001540))))

(assert (=> b!3171638 (= tp!1001471 e!1975381)))

(assert (= (and b!3171638 ((_ is Cons!35498) (zeroValue!4459 (v!35239 (underlying!8629 (v!35240 (underlying!8630 (cache!4252 thiss!28499)))))))) b!3171736))

(declare-fun b!3171737 () Bool)

(declare-fun tp!1001543 () Bool)

(declare-fun tp!1001541 () Bool)

(declare-fun tp!1001542 () Bool)

(declare-fun e!1975382 () Bool)

(assert (=> b!3171737 (= e!1975382 (and tp!1001541 tp_is_empty!17121 tp!1001542 tp!1001543))))

(assert (=> b!3171638 (= tp!1001466 e!1975382)))

(assert (= (and b!3171638 ((_ is Cons!35498) (minValue!4459 (v!35239 (underlying!8629 (v!35240 (underlying!8630 (cache!4252 thiss!28499)))))))) b!3171737))

(declare-fun tp!1001544 () Bool)

(declare-fun b!3171738 () Bool)

(declare-fun tp!1001545 () Bool)

(declare-fun tp!1001546 () Bool)

(declare-fun e!1975383 () Bool)

(assert (=> b!3171738 (= e!1975383 (and tp!1001544 tp_is_empty!17121 tp!1001545 tp!1001546))))

(assert (=> b!3171643 (= tp!1001469 e!1975383)))

(assert (= (and b!3171643 ((_ is Cons!35498) mapDefault!19037)) b!3171738))

(check-sat (not b!3171708) (not b!3171688) (not b!3171721) tp_is_empty!17121 (not mapNonEmpty!19040) (not bm!230492) (not b!3171731) (not b!3171710) (not b!3171738) b_and!209559 (not b!3171736) b_and!209561 (not b!3171656) (not b!3171733) (not b!3171655) (not b!3171692) (not b!3171737) (not b!3171730) (not b!3171722) (not b!3171727) (not b!3171734) (not d!869267) (not b!3171713) (not b!3171662) (not b!3171712) (not b!3171661) (not b!3171714) (not b!3171735) (not b_next!83987) (not b!3171704) (not b!3171729) (not b!3171705) (not b_next!83985) (not b!3171706) (not bm!230490) (not b!3171709) (not d!869261))
(check-sat b_and!209559 b_and!209561 (not b_next!83987) (not b_next!83985))
