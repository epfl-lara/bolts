; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296224 () Bool)

(assert start!296224)

(declare-fun b!3159435 () Bool)

(declare-fun b_free!82929 () Bool)

(declare-fun b_next!83633 () Bool)

(assert (=> b!3159435 (= b_free!82929 (not b_next!83633))))

(declare-fun tp!993268 () Bool)

(declare-fun b_and!209171 () Bool)

(assert (=> b!3159435 (= tp!993268 b_and!209171)))

(declare-fun b!3159429 () Bool)

(declare-fun b_free!82931 () Bool)

(declare-fun b_next!83635 () Bool)

(assert (=> b!3159429 (= b_free!82931 (not b_next!83635))))

(declare-fun tp!993264 () Bool)

(declare-fun b_and!209173 () Bool)

(assert (=> b!3159429 (= tp!993264 b_and!209173)))

(declare-fun res!1286716 () Bool)

(declare-fun e!1968339 () Bool)

(assert (=> start!296224 (=> (not res!1286716) (not e!1968339))))

(declare-datatypes ((C!19568 0))(
  ( (C!19569 (val!11820 Int)) )
))
(declare-datatypes ((Regex!9691 0))(
  ( (ElementMatch!9691 (c!531459 C!19568)) (Concat!15012 (regOne!19894 Regex!9691) (regTwo!19894 Regex!9691)) (EmptyExpr!9691) (Star!9691 (reg!10020 Regex!9691)) (EmptyLang!9691) (Union!9691 (regOne!19895 Regex!9691) (regTwo!19895 Regex!9691)) )
))
(declare-fun r!13207 () Regex!9691)

(declare-fun validRegex!4424 (Regex!9691) Bool)

(assert (=> start!296224 (= res!1286716 (validRegex!4424 r!13207))))

(assert (=> start!296224 e!1968339))

(declare-fun e!1968336 () Bool)

(assert (=> start!296224 e!1968336))

(declare-datatypes ((array!14620 0))(
  ( (array!14621 (arr!6514 (Array (_ BitVec 32) (_ BitVec 64))) (size!26600 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!34268 0))(
  ( (tuple2!34269 (_1!20266 Regex!9691) (_2!20266 C!19568)) )
))
(declare-datatypes ((tuple2!34270 0))(
  ( (tuple2!34271 (_1!20267 tuple2!34268) (_2!20267 Regex!9691)) )
))
(declare-datatypes ((List!35513 0))(
  ( (Nil!35389) (Cons!35389 (h!40809 tuple2!34270) (t!234578 List!35513)) )
))
(declare-datatypes ((array!14622 0))(
  ( (array!14623 (arr!6515 (Array (_ BitVec 32) List!35513)) (size!26601 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8224 0))(
  ( (LongMapFixedSize!8225 (defaultEntry!4497 Int) (mask!10751 (_ BitVec 32)) (extraKeys!4361 (_ BitVec 32)) (zeroValue!4371 List!35513) (minValue!4371 List!35513) (_size!8267 (_ BitVec 32)) (_keys!4412 array!14620) (_values!4393 array!14622) (_vacant!4173 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4028 0))(
  ( (HashableExt!4027 (__x!22442 Int)) )
))
(declare-datatypes ((Cell!16257 0))(
  ( (Cell!16258 (v!34998 LongMapFixedSize!8224)) )
))
(declare-datatypes ((MutLongMap!4112 0))(
  ( (LongMap!4112 (underlying!8453 Cell!16257)) (MutLongMapExt!4111 (__x!22443 Int)) )
))
(declare-datatypes ((Cell!16259 0))(
  ( (Cell!16260 (v!34999 MutLongMap!4112)) )
))
(declare-datatypes ((MutableMap!4018 0))(
  ( (MutableMapExt!4017 (__x!22444 Int)) (HashMap!4018 (underlying!8454 Cell!16259) (hashF!6060 Hashable!4028) (_size!8268 (_ BitVec 32)) (defaultValue!4189 Int)) )
))
(declare-datatypes ((Cache!306 0))(
  ( (Cache!307 (cache!4153 MutableMap!4018)) )
))
(declare-fun cache!429 () Cache!306)

(declare-fun e!1968343 () Bool)

(declare-fun inv!48010 (Cache!306) Bool)

(assert (=> start!296224 (and (inv!48010 cache!429) e!1968343)))

(declare-fun e!1968337 () Bool)

(assert (=> start!296224 e!1968337))

(declare-fun b!3159425 () Bool)

(declare-fun e!1968342 () Bool)

(declare-fun e!1968333 () Bool)

(assert (=> b!3159425 (= e!1968342 e!1968333)))

(declare-fun b!3159426 () Bool)

(declare-fun tp_is_empty!16945 () Bool)

(assert (=> b!3159426 (= e!1968336 tp_is_empty!16945)))

(declare-fun b!3159427 () Bool)

(declare-datatypes ((List!35514 0))(
  ( (Nil!35390) (Cons!35390 (h!40810 C!19568) (t!234579 List!35514)) )
))
(declare-fun input!5974 () List!35514)

(declare-datatypes ((tuple2!34272 0))(
  ( (tuple2!34273 (_1!20268 Regex!9691) (_2!20268 Cache!306)) )
))
(declare-fun derivativeStepMem!12 (Regex!9691 C!19568 Cache!306) tuple2!34272)

(assert (=> b!3159427 (= e!1968339 (not (validRegex!4424 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))))

(declare-fun b!3159428 () Bool)

(declare-fun e!1968335 () Bool)

(assert (=> b!3159428 (= e!1968333 e!1968335)))

(declare-fun e!1968341 () Bool)

(declare-fun e!1968334 () Bool)

(assert (=> b!3159429 (= e!1968341 (and e!1968334 tp!993264))))

(declare-fun b!3159430 () Bool)

(declare-fun tp!993261 () Bool)

(assert (=> b!3159430 (= e!1968337 (and tp_is_empty!16945 tp!993261))))

(declare-fun mapIsEmpty!18667 () Bool)

(declare-fun mapRes!18667 () Bool)

(assert (=> mapIsEmpty!18667 mapRes!18667))

(declare-fun b!3159431 () Bool)

(declare-fun lt!1062604 () MutLongMap!4112)

(get-info :version)

(assert (=> b!3159431 (= e!1968334 (and e!1968342 ((_ is LongMap!4112) lt!1062604)))))

(assert (=> b!3159431 (= lt!1062604 (v!34999 (underlying!8454 (cache!4153 cache!429))))))

(declare-fun mapNonEmpty!18667 () Bool)

(declare-fun tp!993272 () Bool)

(declare-fun tp!993266 () Bool)

(assert (=> mapNonEmpty!18667 (= mapRes!18667 (and tp!993272 tp!993266))))

(declare-fun mapKey!18667 () (_ BitVec 32))

(declare-fun mapRest!18667 () (Array (_ BitVec 32) List!35513))

(declare-fun mapValue!18667 () List!35513)

(assert (=> mapNonEmpty!18667 (= (arr!6515 (_values!4393 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))) (store mapRest!18667 mapKey!18667 mapValue!18667))))

(declare-fun b!3159432 () Bool)

(declare-fun res!1286717 () Bool)

(assert (=> b!3159432 (=> (not res!1286717) (not e!1968339))))

(assert (=> b!3159432 (= res!1286717 ((_ is Cons!35390) input!5974))))

(declare-fun b!3159433 () Bool)

(declare-fun tp!993271 () Bool)

(declare-fun tp!993263 () Bool)

(assert (=> b!3159433 (= e!1968336 (and tp!993271 tp!993263))))

(declare-fun b!3159434 () Bool)

(declare-fun e!1968340 () Bool)

(declare-fun tp!993270 () Bool)

(assert (=> b!3159434 (= e!1968340 (and tp!993270 mapRes!18667))))

(declare-fun condMapEmpty!18667 () Bool)

(declare-fun mapDefault!18667 () List!35513)

(assert (=> b!3159434 (= condMapEmpty!18667 (= (arr!6515 (_values!4393 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))) ((as const (Array (_ BitVec 32) List!35513)) mapDefault!18667)))))

(declare-fun tp!993273 () Bool)

(declare-fun tp!993269 () Bool)

(declare-fun array_inv!4664 (array!14620) Bool)

(declare-fun array_inv!4665 (array!14622) Bool)

(assert (=> b!3159435 (= e!1968335 (and tp!993268 tp!993269 tp!993273 (array_inv!4664 (_keys!4412 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))) (array_inv!4665 (_values!4393 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))) e!1968340))))

(declare-fun b!3159436 () Bool)

(declare-fun tp!993267 () Bool)

(declare-fun tp!993262 () Bool)

(assert (=> b!3159436 (= e!1968336 (and tp!993267 tp!993262))))

(declare-fun b!3159437 () Bool)

(assert (=> b!3159437 (= e!1968343 e!1968341)))

(declare-fun b!3159438 () Bool)

(declare-fun res!1286718 () Bool)

(assert (=> b!3159438 (=> (not res!1286718) (not e!1968339))))

(declare-fun valid!3199 (Cache!306) Bool)

(assert (=> b!3159438 (= res!1286718 (valid!3199 cache!429))))

(declare-fun b!3159439 () Bool)

(declare-fun tp!993265 () Bool)

(assert (=> b!3159439 (= e!1968336 tp!993265)))

(assert (= (and start!296224 res!1286716) b!3159438))

(assert (= (and b!3159438 res!1286718) b!3159432))

(assert (= (and b!3159432 res!1286717) b!3159427))

(assert (= (and start!296224 ((_ is ElementMatch!9691) r!13207)) b!3159426))

(assert (= (and start!296224 ((_ is Concat!15012) r!13207)) b!3159436))

(assert (= (and start!296224 ((_ is Star!9691) r!13207)) b!3159439))

(assert (= (and start!296224 ((_ is Union!9691) r!13207)) b!3159433))

(assert (= (and b!3159434 condMapEmpty!18667) mapIsEmpty!18667))

(assert (= (and b!3159434 (not condMapEmpty!18667)) mapNonEmpty!18667))

(assert (= b!3159435 b!3159434))

(assert (= b!3159428 b!3159435))

(assert (= b!3159425 b!3159428))

(assert (= (and b!3159431 ((_ is LongMap!4112) (v!34999 (underlying!8454 (cache!4153 cache!429))))) b!3159425))

(assert (= b!3159429 b!3159431))

(assert (= (and b!3159437 ((_ is HashMap!4018) (cache!4153 cache!429))) b!3159429))

(assert (= start!296224 b!3159437))

(assert (= (and start!296224 ((_ is Cons!35390) input!5974)) b!3159430))

(declare-fun m!3425165 () Bool)

(assert (=> b!3159435 m!3425165))

(declare-fun m!3425167 () Bool)

(assert (=> b!3159435 m!3425167))

(declare-fun m!3425169 () Bool)

(assert (=> start!296224 m!3425169))

(declare-fun m!3425171 () Bool)

(assert (=> start!296224 m!3425171))

(declare-fun m!3425173 () Bool)

(assert (=> b!3159427 m!3425173))

(declare-fun m!3425175 () Bool)

(assert (=> b!3159427 m!3425175))

(declare-fun m!3425177 () Bool)

(assert (=> b!3159438 m!3425177))

(declare-fun m!3425179 () Bool)

(assert (=> mapNonEmpty!18667 m!3425179))

(check-sat (not b!3159430) (not b!3159434) (not b_next!83633) (not b!3159439) tp_is_empty!16945 (not b!3159433) (not b!3159436) (not mapNonEmpty!18667) (not b_next!83635) (not start!296224) b_and!209171 (not b!3159438) b_and!209173 (not b!3159427) (not b!3159435))
(check-sat b_and!209171 b_and!209173 (not b_next!83635) (not b_next!83633))
(get-model)

(declare-fun b!3159458 () Bool)

(declare-fun e!1968360 () Bool)

(declare-fun e!1968364 () Bool)

(assert (=> b!3159458 (= e!1968360 e!1968364)))

(declare-fun c!531464 () Bool)

(assert (=> b!3159458 (= c!531464 ((_ is Star!9691) r!13207))))

(declare-fun b!3159459 () Bool)

(declare-fun e!1968363 () Bool)

(declare-fun call!228795 () Bool)

(assert (=> b!3159459 (= e!1968363 call!228795)))

(declare-fun bm!228789 () Bool)

(declare-fun call!228794 () Bool)

(declare-fun call!228793 () Bool)

(assert (=> bm!228789 (= call!228794 call!228793)))

(declare-fun b!3159460 () Bool)

(declare-fun e!1968362 () Bool)

(assert (=> b!3159460 (= e!1968362 e!1968363)))

(declare-fun res!1286732 () Bool)

(assert (=> b!3159460 (=> (not res!1286732) (not e!1968363))))

(assert (=> b!3159460 (= res!1286732 call!228794)))

(declare-fun b!3159461 () Bool)

(declare-fun e!1968361 () Bool)

(assert (=> b!3159461 (= e!1968364 e!1968361)))

(declare-fun c!531465 () Bool)

(assert (=> b!3159461 (= c!531465 ((_ is Union!9691) r!13207))))

(declare-fun b!3159462 () Bool)

(declare-fun res!1286731 () Bool)

(assert (=> b!3159462 (=> res!1286731 e!1968362)))

(assert (=> b!3159462 (= res!1286731 (not ((_ is Concat!15012) r!13207)))))

(assert (=> b!3159462 (= e!1968361 e!1968362)))

(declare-fun b!3159463 () Bool)

(declare-fun e!1968359 () Bool)

(assert (=> b!3159463 (= e!1968359 call!228794)))

(declare-fun bm!228790 () Bool)

(assert (=> bm!228790 (= call!228793 (validRegex!4424 (ite c!531464 (reg!10020 r!13207) (ite c!531465 (regTwo!19895 r!13207) (regOne!19894 r!13207)))))))

(declare-fun b!3159464 () Bool)

(declare-fun e!1968358 () Bool)

(assert (=> b!3159464 (= e!1968358 call!228793)))

(declare-fun d!868305 () Bool)

(declare-fun res!1286730 () Bool)

(assert (=> d!868305 (=> res!1286730 e!1968360)))

(assert (=> d!868305 (= res!1286730 ((_ is ElementMatch!9691) r!13207))))

(assert (=> d!868305 (= (validRegex!4424 r!13207) e!1968360)))

(declare-fun bm!228788 () Bool)

(assert (=> bm!228788 (= call!228795 (validRegex!4424 (ite c!531465 (regOne!19895 r!13207) (regTwo!19894 r!13207))))))

(declare-fun b!3159465 () Bool)

(assert (=> b!3159465 (= e!1968364 e!1968358)))

(declare-fun res!1286733 () Bool)

(declare-fun nullable!3324 (Regex!9691) Bool)

(assert (=> b!3159465 (= res!1286733 (not (nullable!3324 (reg!10020 r!13207))))))

(assert (=> b!3159465 (=> (not res!1286733) (not e!1968358))))

(declare-fun b!3159466 () Bool)

(declare-fun res!1286729 () Bool)

(assert (=> b!3159466 (=> (not res!1286729) (not e!1968359))))

(assert (=> b!3159466 (= res!1286729 call!228795)))

(assert (=> b!3159466 (= e!1968361 e!1968359)))

(assert (= (and d!868305 (not res!1286730)) b!3159458))

(assert (= (and b!3159458 c!531464) b!3159465))

(assert (= (and b!3159458 (not c!531464)) b!3159461))

(assert (= (and b!3159465 res!1286733) b!3159464))

(assert (= (and b!3159461 c!531465) b!3159466))

(assert (= (and b!3159461 (not c!531465)) b!3159462))

(assert (= (and b!3159466 res!1286729) b!3159463))

(assert (= (and b!3159462 (not res!1286731)) b!3159460))

(assert (= (and b!3159460 res!1286732) b!3159459))

(assert (= (or b!3159466 b!3159459) bm!228788))

(assert (= (or b!3159463 b!3159460) bm!228789))

(assert (= (or b!3159464 bm!228789) bm!228790))

(declare-fun m!3425181 () Bool)

(assert (=> bm!228790 m!3425181))

(declare-fun m!3425183 () Bool)

(assert (=> bm!228788 m!3425183))

(declare-fun m!3425185 () Bool)

(assert (=> b!3159465 m!3425185))

(assert (=> start!296224 d!868305))

(declare-fun d!868307 () Bool)

(declare-fun res!1286736 () Bool)

(declare-fun e!1968367 () Bool)

(assert (=> d!868307 (=> (not res!1286736) (not e!1968367))))

(assert (=> d!868307 (= res!1286736 ((_ is HashMap!4018) (cache!4153 cache!429)))))

(assert (=> d!868307 (= (inv!48010 cache!429) e!1968367)))

(declare-fun b!3159469 () Bool)

(declare-fun validCacheMap!39 (MutableMap!4018) Bool)

(assert (=> b!3159469 (= e!1968367 (validCacheMap!39 (cache!4153 cache!429)))))

(assert (= (and d!868307 res!1286736) b!3159469))

(declare-fun m!3425187 () Bool)

(assert (=> b!3159469 m!3425187))

(assert (=> start!296224 d!868307))

(declare-fun d!868309 () Bool)

(assert (=> d!868309 (= (array_inv!4664 (_keys!4412 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))) (bvsge (size!26600 (_keys!4412 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))) #b00000000000000000000000000000000))))

(assert (=> b!3159435 d!868309))

(declare-fun d!868311 () Bool)

(assert (=> d!868311 (= (array_inv!4665 (_values!4393 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))) (bvsge (size!26601 (_values!4393 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))) #b00000000000000000000000000000000))))

(assert (=> b!3159435 d!868311))

(declare-fun b!3159470 () Bool)

(declare-fun e!1968370 () Bool)

(declare-fun e!1968374 () Bool)

(assert (=> b!3159470 (= e!1968370 e!1968374)))

(declare-fun c!531466 () Bool)

(assert (=> b!3159470 (= c!531466 ((_ is Star!9691) (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))

(declare-fun b!3159471 () Bool)

(declare-fun e!1968373 () Bool)

(declare-fun call!228798 () Bool)

(assert (=> b!3159471 (= e!1968373 call!228798)))

(declare-fun bm!228792 () Bool)

(declare-fun call!228797 () Bool)

(declare-fun call!228796 () Bool)

(assert (=> bm!228792 (= call!228797 call!228796)))

(declare-fun b!3159472 () Bool)

(declare-fun e!1968372 () Bool)

(assert (=> b!3159472 (= e!1968372 e!1968373)))

(declare-fun res!1286740 () Bool)

(assert (=> b!3159472 (=> (not res!1286740) (not e!1968373))))

(assert (=> b!3159472 (= res!1286740 call!228797)))

(declare-fun b!3159473 () Bool)

(declare-fun e!1968371 () Bool)

(assert (=> b!3159473 (= e!1968374 e!1968371)))

(declare-fun c!531467 () Bool)

(assert (=> b!3159473 (= c!531467 ((_ is Union!9691) (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))

(declare-fun b!3159474 () Bool)

(declare-fun res!1286739 () Bool)

(assert (=> b!3159474 (=> res!1286739 e!1968372)))

(assert (=> b!3159474 (= res!1286739 (not ((_ is Concat!15012) (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))))

(assert (=> b!3159474 (= e!1968371 e!1968372)))

(declare-fun b!3159475 () Bool)

(declare-fun e!1968369 () Bool)

(assert (=> b!3159475 (= e!1968369 call!228797)))

(declare-fun bm!228793 () Bool)

(assert (=> bm!228793 (= call!228796 (validRegex!4424 (ite c!531466 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (ite c!531467 (regTwo!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regOne!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))))))

(declare-fun b!3159476 () Bool)

(declare-fun e!1968368 () Bool)

(assert (=> b!3159476 (= e!1968368 call!228796)))

(declare-fun d!868313 () Bool)

(declare-fun res!1286738 () Bool)

(assert (=> d!868313 (=> res!1286738 e!1968370)))

(assert (=> d!868313 (= res!1286738 ((_ is ElementMatch!9691) (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))

(assert (=> d!868313 (= (validRegex!4424 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) e!1968370)))

(declare-fun bm!228791 () Bool)

(assert (=> bm!228791 (= call!228798 (validRegex!4424 (ite c!531467 (regOne!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regTwo!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))))

(declare-fun b!3159477 () Bool)

(assert (=> b!3159477 (= e!1968374 e!1968368)))

(declare-fun res!1286741 () Bool)

(assert (=> b!3159477 (= res!1286741 (not (nullable!3324 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))))

(assert (=> b!3159477 (=> (not res!1286741) (not e!1968368))))

(declare-fun b!3159478 () Bool)

(declare-fun res!1286737 () Bool)

(assert (=> b!3159478 (=> (not res!1286737) (not e!1968369))))

(assert (=> b!3159478 (= res!1286737 call!228798)))

(assert (=> b!3159478 (= e!1968371 e!1968369)))

(assert (= (and d!868313 (not res!1286738)) b!3159470))

(assert (= (and b!3159470 c!531466) b!3159477))

(assert (= (and b!3159470 (not c!531466)) b!3159473))

(assert (= (and b!3159477 res!1286741) b!3159476))

(assert (= (and b!3159473 c!531467) b!3159478))

(assert (= (and b!3159473 (not c!531467)) b!3159474))

(assert (= (and b!3159478 res!1286737) b!3159475))

(assert (= (and b!3159474 (not res!1286739)) b!3159472))

(assert (= (and b!3159472 res!1286740) b!3159471))

(assert (= (or b!3159478 b!3159471) bm!228791))

(assert (= (or b!3159475 b!3159472) bm!228792))

(assert (= (or b!3159476 bm!228792) bm!228793))

(declare-fun m!3425189 () Bool)

(assert (=> bm!228793 m!3425189))

(declare-fun m!3425191 () Bool)

(assert (=> bm!228791 m!3425191))

(declare-fun m!3425193 () Bool)

(assert (=> b!3159477 m!3425193))

(assert (=> b!3159427 d!868313))

(declare-fun b!3159503 () Bool)

(declare-fun e!1968388 () tuple2!34272)

(assert (=> b!3159503 (= e!1968388 (tuple2!34273 (ite (= (h!40810 input!5974) (c!531459 r!13207)) EmptyExpr!9691 EmptyLang!9691) cache!429))))

(declare-fun b!3159504 () Bool)

(declare-fun lt!1062624 () tuple2!34272)

(declare-fun call!228807 () tuple2!34272)

(assert (=> b!3159504 (= lt!1062624 call!228807)))

(declare-fun lt!1062626 () tuple2!34272)

(declare-fun call!228808 () tuple2!34272)

(assert (=> b!3159504 (= lt!1062626 call!228808)))

(declare-fun e!1968387 () tuple2!34272)

(assert (=> b!3159504 (= e!1968387 (tuple2!34273 (Union!9691 (Concat!15012 (_1!20268 lt!1062626) (regTwo!19894 r!13207)) (_1!20268 lt!1062624)) (_2!20268 lt!1062624)))))

(declare-fun b!3159505 () Bool)

(declare-fun e!1968390 () tuple2!34272)

(assert (=> b!3159505 (= e!1968390 (tuple2!34273 EmptyLang!9691 cache!429))))

(declare-fun b!3159506 () Bool)

(declare-fun c!531481 () Bool)

(assert (=> b!3159506 (= c!531481 ((_ is Star!9691) r!13207))))

(declare-fun e!1968392 () tuple2!34272)

(declare-fun e!1968389 () tuple2!34272)

(assert (=> b!3159506 (= e!1968392 e!1968389)))

(declare-fun c!531484 () Bool)

(declare-fun bm!228802 () Bool)

(assert (=> bm!228802 (= call!228807 (derivativeStepMem!12 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207)) (h!40810 input!5974) (ite c!531484 cache!429 (_2!20268 lt!1062626))))))

(declare-fun d!868315 () Bool)

(declare-fun lt!1062630 () tuple2!34272)

(declare-fun derivativeStep!2875 (Regex!9691 C!19568) Regex!9691)

(assert (=> d!868315 (= (_1!20268 lt!1062630) (derivativeStep!2875 r!13207 (h!40810 input!5974)))))

(declare-fun e!1968391 () tuple2!34272)

(assert (=> d!868315 (= lt!1062630 e!1968391)))

(declare-fun c!531485 () Bool)

(declare-datatypes ((Option!6863 0))(
  ( (None!6862) (Some!6862 (v!35000 Regex!9691)) )
))
(declare-fun lt!1062628 () Option!6863)

(assert (=> d!868315 (= c!531485 ((_ is Some!6862) lt!1062628))))

(declare-fun get!11174 (Cache!306 Regex!9691 C!19568) Option!6863)

(assert (=> d!868315 (= lt!1062628 (get!11174 cache!429 r!13207 (h!40810 input!5974)))))

(assert (=> d!868315 (validRegex!4424 r!13207)))

(assert (=> d!868315 (= (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429) lt!1062630)))

(declare-fun b!3159507 () Bool)

(assert (=> b!3159507 (= e!1968391 (tuple2!34273 (v!35000 lt!1062628) cache!429))))

(declare-fun b!3159508 () Bool)

(declare-fun c!531483 () Bool)

(assert (=> b!3159508 (= c!531483 ((_ is ElementMatch!9691) r!13207))))

(assert (=> b!3159508 (= e!1968390 e!1968388)))

(declare-fun b!3159509 () Bool)

(assert (=> b!3159509 (= e!1968388 e!1968392)))

(assert (=> b!3159509 (= c!531484 ((_ is Union!9691) r!13207))))

(declare-fun b!3159510 () Bool)

(declare-fun lt!1062631 () tuple2!34272)

(assert (=> b!3159510 (= e!1968389 (tuple2!34273 (Concat!15012 (_1!20268 lt!1062631) (Star!9691 (reg!10020 r!13207))) (_2!20268 lt!1062631)))))

(declare-fun call!228810 () tuple2!34272)

(assert (=> b!3159510 (= lt!1062631 call!228810)))

(declare-fun lt!1062623 () tuple2!34272)

(declare-fun call!228809 () tuple2!34272)

(declare-fun bm!228803 () Bool)

(assert (=> bm!228803 (= call!228809 (derivativeStepMem!12 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207))) (h!40810 input!5974) (ite c!531484 (_2!20268 lt!1062623) cache!429)))))

(declare-fun b!3159511 () Bool)

(declare-fun lt!1062625 () tuple2!34272)

(assert (=> b!3159511 (= lt!1062625 call!228809)))

(assert (=> b!3159511 (= lt!1062623 call!228807)))

(assert (=> b!3159511 (= e!1968392 (tuple2!34273 (Union!9691 (_1!20268 lt!1062623) (_1!20268 lt!1062625)) (_2!20268 lt!1062625)))))

(declare-fun bm!228804 () Bool)

(assert (=> bm!228804 (= call!228808 call!228810)))

(declare-fun b!3159512 () Bool)

(assert (=> b!3159512 (= e!1968389 e!1968387)))

(declare-fun c!531482 () Bool)

(assert (=> b!3159512 (= c!531482 (nullable!3324 (regOne!19894 r!13207)))))

(declare-fun b!3159513 () Bool)

(declare-fun lt!1062627 () tuple2!34272)

(declare-datatypes ((Unit!49747 0))(
  ( (Unit!49748) )
))
(declare-datatypes ((tuple2!34274 0))(
  ( (tuple2!34275 (_1!20269 Unit!49747) (_2!20269 Cache!306)) )
))
(declare-fun update!254 (Cache!306 Regex!9691 C!19568 Regex!9691) tuple2!34274)

(assert (=> b!3159513 (= e!1968391 (tuple2!34273 (_1!20268 lt!1062627) (_2!20269 (update!254 (_2!20268 lt!1062627) r!13207 (h!40810 input!5974) (_1!20268 lt!1062627)))))))

(declare-fun c!531480 () Bool)

(assert (=> b!3159513 (= c!531480 (or ((_ is EmptyExpr!9691) r!13207) ((_ is EmptyLang!9691) r!13207)))))

(assert (=> b!3159513 (= lt!1062627 e!1968390)))

(declare-fun bm!228805 () Bool)

(assert (=> bm!228805 (= call!228810 call!228809)))

(declare-fun b!3159514 () Bool)

(declare-fun lt!1062629 () tuple2!34272)

(assert (=> b!3159514 (= lt!1062629 call!228808)))

(assert (=> b!3159514 (= e!1968387 (tuple2!34273 (Union!9691 (Concat!15012 (_1!20268 lt!1062629) (regTwo!19894 r!13207)) EmptyLang!9691) (_2!20268 lt!1062629)))))

(assert (= (and d!868315 c!531485) b!3159507))

(assert (= (and d!868315 (not c!531485)) b!3159513))

(assert (= (and b!3159513 c!531480) b!3159505))

(assert (= (and b!3159513 (not c!531480)) b!3159508))

(assert (= (and b!3159508 c!531483) b!3159503))

(assert (= (and b!3159508 (not c!531483)) b!3159509))

(assert (= (and b!3159509 c!531484) b!3159511))

(assert (= (and b!3159509 (not c!531484)) b!3159506))

(assert (= (and b!3159506 c!531481) b!3159510))

(assert (= (and b!3159506 (not c!531481)) b!3159512))

(assert (= (and b!3159512 c!531482) b!3159504))

(assert (= (and b!3159512 (not c!531482)) b!3159514))

(assert (= (or b!3159504 b!3159514) bm!228804))

(assert (= (or b!3159510 bm!228804) bm!228805))

(assert (= (or b!3159511 b!3159504) bm!228802))

(assert (= (or b!3159511 bm!228805) bm!228803))

(declare-fun m!3425195 () Bool)

(assert (=> b!3159512 m!3425195))

(declare-fun m!3425197 () Bool)

(assert (=> bm!228802 m!3425197))

(declare-fun m!3425199 () Bool)

(assert (=> bm!228803 m!3425199))

(declare-fun m!3425201 () Bool)

(assert (=> d!868315 m!3425201))

(declare-fun m!3425203 () Bool)

(assert (=> d!868315 m!3425203))

(assert (=> d!868315 m!3425169))

(declare-fun m!3425205 () Bool)

(assert (=> b!3159513 m!3425205))

(assert (=> b!3159427 d!868315))

(declare-fun d!868317 () Bool)

(assert (=> d!868317 (= (valid!3199 cache!429) (validCacheMap!39 (cache!4153 cache!429)))))

(declare-fun bs!539388 () Bool)

(assert (= bs!539388 d!868317))

(assert (=> bs!539388 m!3425187))

(assert (=> b!3159438 d!868317))

(declare-fun e!1968395 () Bool)

(assert (=> b!3159439 (= tp!993265 e!1968395)))

(declare-fun b!3159528 () Bool)

(declare-fun tp!993287 () Bool)

(declare-fun tp!993284 () Bool)

(assert (=> b!3159528 (= e!1968395 (and tp!993287 tp!993284))))

(declare-fun b!3159526 () Bool)

(declare-fun tp!993288 () Bool)

(declare-fun tp!993285 () Bool)

(assert (=> b!3159526 (= e!1968395 (and tp!993288 tp!993285))))

(declare-fun b!3159527 () Bool)

(declare-fun tp!993286 () Bool)

(assert (=> b!3159527 (= e!1968395 tp!993286)))

(declare-fun b!3159525 () Bool)

(assert (=> b!3159525 (= e!1968395 tp_is_empty!16945)))

(assert (= (and b!3159439 ((_ is ElementMatch!9691) (reg!10020 r!13207))) b!3159525))

(assert (= (and b!3159439 ((_ is Concat!15012) (reg!10020 r!13207))) b!3159526))

(assert (= (and b!3159439 ((_ is Star!9691) (reg!10020 r!13207))) b!3159527))

(assert (= (and b!3159439 ((_ is Union!9691) (reg!10020 r!13207))) b!3159528))

(declare-fun b!3159533 () Bool)

(declare-fun tp!993295 () Bool)

(declare-fun e!1968398 () Bool)

(declare-fun tp!993297 () Bool)

(declare-fun tp!993296 () Bool)

(assert (=> b!3159533 (= e!1968398 (and tp!993295 tp_is_empty!16945 tp!993296 tp!993297))))

(assert (=> b!3159434 (= tp!993270 e!1968398)))

(assert (= (and b!3159434 ((_ is Cons!35389) mapDefault!18667)) b!3159533))

(declare-fun e!1968399 () Bool)

(assert (=> b!3159433 (= tp!993271 e!1968399)))

(declare-fun b!3159537 () Bool)

(declare-fun tp!993301 () Bool)

(declare-fun tp!993298 () Bool)

(assert (=> b!3159537 (= e!1968399 (and tp!993301 tp!993298))))

(declare-fun b!3159535 () Bool)

(declare-fun tp!993302 () Bool)

(declare-fun tp!993299 () Bool)

(assert (=> b!3159535 (= e!1968399 (and tp!993302 tp!993299))))

(declare-fun b!3159536 () Bool)

(declare-fun tp!993300 () Bool)

(assert (=> b!3159536 (= e!1968399 tp!993300)))

(declare-fun b!3159534 () Bool)

(assert (=> b!3159534 (= e!1968399 tp_is_empty!16945)))

(assert (= (and b!3159433 ((_ is ElementMatch!9691) (regOne!19895 r!13207))) b!3159534))

(assert (= (and b!3159433 ((_ is Concat!15012) (regOne!19895 r!13207))) b!3159535))

(assert (= (and b!3159433 ((_ is Star!9691) (regOne!19895 r!13207))) b!3159536))

(assert (= (and b!3159433 ((_ is Union!9691) (regOne!19895 r!13207))) b!3159537))

(declare-fun e!1968400 () Bool)

(assert (=> b!3159433 (= tp!993263 e!1968400)))

(declare-fun b!3159541 () Bool)

(declare-fun tp!993306 () Bool)

(declare-fun tp!993303 () Bool)

(assert (=> b!3159541 (= e!1968400 (and tp!993306 tp!993303))))

(declare-fun b!3159539 () Bool)

(declare-fun tp!993307 () Bool)

(declare-fun tp!993304 () Bool)

(assert (=> b!3159539 (= e!1968400 (and tp!993307 tp!993304))))

(declare-fun b!3159540 () Bool)

(declare-fun tp!993305 () Bool)

(assert (=> b!3159540 (= e!1968400 tp!993305)))

(declare-fun b!3159538 () Bool)

(assert (=> b!3159538 (= e!1968400 tp_is_empty!16945)))

(assert (= (and b!3159433 ((_ is ElementMatch!9691) (regTwo!19895 r!13207))) b!3159538))

(assert (= (and b!3159433 ((_ is Concat!15012) (regTwo!19895 r!13207))) b!3159539))

(assert (= (and b!3159433 ((_ is Star!9691) (regTwo!19895 r!13207))) b!3159540))

(assert (= (and b!3159433 ((_ is Union!9691) (regTwo!19895 r!13207))) b!3159541))

(declare-fun b!3159546 () Bool)

(declare-fun e!1968403 () Bool)

(declare-fun tp!993310 () Bool)

(assert (=> b!3159546 (= e!1968403 (and tp_is_empty!16945 tp!993310))))

(assert (=> b!3159430 (= tp!993261 e!1968403)))

(assert (= (and b!3159430 ((_ is Cons!35390) (t!234579 input!5974))) b!3159546))

(declare-fun tp!993311 () Bool)

(declare-fun e!1968404 () Bool)

(declare-fun tp!993313 () Bool)

(declare-fun b!3159547 () Bool)

(declare-fun tp!993312 () Bool)

(assert (=> b!3159547 (= e!1968404 (and tp!993311 tp_is_empty!16945 tp!993312 tp!993313))))

(assert (=> b!3159435 (= tp!993269 e!1968404)))

(assert (= (and b!3159435 ((_ is Cons!35389) (zeroValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429)))))))) b!3159547))

(declare-fun tp!993316 () Bool)

(declare-fun tp!993315 () Bool)

(declare-fun e!1968405 () Bool)

(declare-fun tp!993314 () Bool)

(declare-fun b!3159548 () Bool)

(assert (=> b!3159548 (= e!1968405 (and tp!993314 tp_is_empty!16945 tp!993315 tp!993316))))

(assert (=> b!3159435 (= tp!993273 e!1968405)))

(assert (= (and b!3159435 ((_ is Cons!35389) (minValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429)))))))) b!3159548))

(declare-fun mapNonEmpty!18670 () Bool)

(declare-fun mapRes!18670 () Bool)

(declare-fun tp!993332 () Bool)

(declare-fun e!1968411 () Bool)

(assert (=> mapNonEmpty!18670 (= mapRes!18670 (and tp!993332 e!1968411))))

(declare-fun mapValue!18670 () List!35513)

(declare-fun mapRest!18670 () (Array (_ BitVec 32) List!35513))

(declare-fun mapKey!18670 () (_ BitVec 32))

(assert (=> mapNonEmpty!18670 (= mapRest!18667 (store mapRest!18670 mapKey!18670 mapValue!18670))))

(declare-fun mapIsEmpty!18670 () Bool)

(assert (=> mapIsEmpty!18670 mapRes!18670))

(declare-fun condMapEmpty!18670 () Bool)

(declare-fun mapDefault!18670 () List!35513)

(assert (=> mapNonEmpty!18667 (= condMapEmpty!18670 (= mapRest!18667 ((as const (Array (_ BitVec 32) List!35513)) mapDefault!18670)))))

(declare-fun e!1968410 () Bool)

(assert (=> mapNonEmpty!18667 (= tp!993272 (and e!1968410 mapRes!18670))))

(declare-fun tp!993331 () Bool)

(declare-fun tp!993333 () Bool)

(declare-fun tp!993336 () Bool)

(declare-fun b!3159556 () Bool)

(assert (=> b!3159556 (= e!1968410 (and tp!993331 tp_is_empty!16945 tp!993336 tp!993333))))

(declare-fun tp!993335 () Bool)

(declare-fun tp!993337 () Bool)

(declare-fun tp!993334 () Bool)

(declare-fun b!3159555 () Bool)

(assert (=> b!3159555 (= e!1968411 (and tp!993335 tp_is_empty!16945 tp!993337 tp!993334))))

(assert (= (and mapNonEmpty!18667 condMapEmpty!18670) mapIsEmpty!18670))

(assert (= (and mapNonEmpty!18667 (not condMapEmpty!18670)) mapNonEmpty!18670))

(assert (= (and mapNonEmpty!18670 ((_ is Cons!35389) mapValue!18670)) b!3159555))

(assert (= (and mapNonEmpty!18667 ((_ is Cons!35389) mapDefault!18670)) b!3159556))

(declare-fun m!3425207 () Bool)

(assert (=> mapNonEmpty!18670 m!3425207))

(declare-fun tp!993340 () Bool)

(declare-fun tp!993338 () Bool)

(declare-fun tp!993339 () Bool)

(declare-fun e!1968412 () Bool)

(declare-fun b!3159557 () Bool)

(assert (=> b!3159557 (= e!1968412 (and tp!993338 tp_is_empty!16945 tp!993339 tp!993340))))

(assert (=> mapNonEmpty!18667 (= tp!993266 e!1968412)))

(assert (= (and mapNonEmpty!18667 ((_ is Cons!35389) mapValue!18667)) b!3159557))

(declare-fun e!1968413 () Bool)

(assert (=> b!3159436 (= tp!993267 e!1968413)))

(declare-fun b!3159561 () Bool)

(declare-fun tp!993344 () Bool)

(declare-fun tp!993341 () Bool)

(assert (=> b!3159561 (= e!1968413 (and tp!993344 tp!993341))))

(declare-fun b!3159559 () Bool)

(declare-fun tp!993345 () Bool)

(declare-fun tp!993342 () Bool)

(assert (=> b!3159559 (= e!1968413 (and tp!993345 tp!993342))))

(declare-fun b!3159560 () Bool)

(declare-fun tp!993343 () Bool)

(assert (=> b!3159560 (= e!1968413 tp!993343)))

(declare-fun b!3159558 () Bool)

(assert (=> b!3159558 (= e!1968413 tp_is_empty!16945)))

(assert (= (and b!3159436 ((_ is ElementMatch!9691) (regOne!19894 r!13207))) b!3159558))

(assert (= (and b!3159436 ((_ is Concat!15012) (regOne!19894 r!13207))) b!3159559))

(assert (= (and b!3159436 ((_ is Star!9691) (regOne!19894 r!13207))) b!3159560))

(assert (= (and b!3159436 ((_ is Union!9691) (regOne!19894 r!13207))) b!3159561))

(declare-fun e!1968414 () Bool)

(assert (=> b!3159436 (= tp!993262 e!1968414)))

(declare-fun b!3159565 () Bool)

(declare-fun tp!993349 () Bool)

(declare-fun tp!993346 () Bool)

(assert (=> b!3159565 (= e!1968414 (and tp!993349 tp!993346))))

(declare-fun b!3159563 () Bool)

(declare-fun tp!993350 () Bool)

(declare-fun tp!993347 () Bool)

(assert (=> b!3159563 (= e!1968414 (and tp!993350 tp!993347))))

(declare-fun b!3159564 () Bool)

(declare-fun tp!993348 () Bool)

(assert (=> b!3159564 (= e!1968414 tp!993348)))

(declare-fun b!3159562 () Bool)

(assert (=> b!3159562 (= e!1968414 tp_is_empty!16945)))

(assert (= (and b!3159436 ((_ is ElementMatch!9691) (regTwo!19894 r!13207))) b!3159562))

(assert (= (and b!3159436 ((_ is Concat!15012) (regTwo!19894 r!13207))) b!3159563))

(assert (= (and b!3159436 ((_ is Star!9691) (regTwo!19894 r!13207))) b!3159564))

(assert (= (and b!3159436 ((_ is Union!9691) (regTwo!19894 r!13207))) b!3159565))

(check-sat (not bm!228791) (not b!3159559) (not b!3159546) tp_is_empty!16945 (not b!3159527) (not b_next!83635) (not b!3159535) (not b!3159560) (not b!3159537) (not b!3159469) (not bm!228793) (not b!3159533) (not b!3159465) (not b!3159561) (not bm!228803) (not b!3159541) (not b!3159556) (not bm!228788) (not b!3159513) (not b!3159477) (not b_next!83633) (not b!3159557) (not b!3159526) (not d!868317) (not b!3159512) (not b!3159536) (not b!3159539) (not b!3159540) (not b!3159528) (not b!3159565) (not bm!228790) b_and!209171 (not b!3159563) (not b!3159548) (not d!868315) (not b!3159564) (not bm!228802) (not b!3159547) (not mapNonEmpty!18670) b_and!209173 (not b!3159555))
(check-sat b_and!209171 b_and!209173 (not b_next!83635) (not b_next!83633))
(get-model)

(declare-fun d!868319 () Bool)

(declare-fun res!1286748 () Bool)

(declare-fun e!1968419 () Bool)

(assert (=> d!868319 (=> (not res!1286748) (not e!1968419))))

(declare-fun valid!3200 (MutableMap!4018) Bool)

(assert (=> d!868319 (= res!1286748 (valid!3200 (cache!4153 cache!429)))))

(assert (=> d!868319 (= (validCacheMap!39 (cache!4153 cache!429)) e!1968419)))

(declare-fun b!3159572 () Bool)

(declare-fun res!1286749 () Bool)

(assert (=> b!3159572 (=> (not res!1286749) (not e!1968419))))

(declare-fun invariantList!473 (List!35513) Bool)

(declare-datatypes ((ListMap!1287 0))(
  ( (ListMap!1288 (toList!2043 List!35513)) )
))
(declare-fun map!7864 (MutableMap!4018) ListMap!1287)

(assert (=> b!3159572 (= res!1286749 (invariantList!473 (toList!2043 (map!7864 (cache!4153 cache!429)))))))

(declare-fun b!3159573 () Bool)

(declare-fun lambda!115741 () Int)

(declare-fun forall!7138 (List!35513 Int) Bool)

(assert (=> b!3159573 (= e!1968419 (forall!7138 (toList!2043 (map!7864 (cache!4153 cache!429))) lambda!115741))))

(assert (= (and d!868319 res!1286748) b!3159572))

(assert (= (and b!3159572 res!1286749) b!3159573))

(declare-fun m!3425210 () Bool)

(assert (=> d!868319 m!3425210))

(declare-fun m!3425212 () Bool)

(assert (=> b!3159572 m!3425212))

(declare-fun m!3425214 () Bool)

(assert (=> b!3159572 m!3425214))

(assert (=> b!3159573 m!3425212))

(declare-fun m!3425216 () Bool)

(assert (=> b!3159573 m!3425216))

(assert (=> d!868317 d!868319))

(declare-fun b!3159574 () Bool)

(declare-fun e!1968422 () Bool)

(declare-fun e!1968426 () Bool)

(assert (=> b!3159574 (= e!1968422 e!1968426)))

(declare-fun c!531486 () Bool)

(assert (=> b!3159574 (= c!531486 ((_ is Star!9691) (ite c!531466 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (ite c!531467 (regTwo!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regOne!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))))))

(declare-fun b!3159575 () Bool)

(declare-fun e!1968425 () Bool)

(declare-fun call!228813 () Bool)

(assert (=> b!3159575 (= e!1968425 call!228813)))

(declare-fun bm!228807 () Bool)

(declare-fun call!228812 () Bool)

(declare-fun call!228811 () Bool)

(assert (=> bm!228807 (= call!228812 call!228811)))

(declare-fun b!3159576 () Bool)

(declare-fun e!1968424 () Bool)

(assert (=> b!3159576 (= e!1968424 e!1968425)))

(declare-fun res!1286753 () Bool)

(assert (=> b!3159576 (=> (not res!1286753) (not e!1968425))))

(assert (=> b!3159576 (= res!1286753 call!228812)))

(declare-fun b!3159577 () Bool)

(declare-fun e!1968423 () Bool)

(assert (=> b!3159577 (= e!1968426 e!1968423)))

(declare-fun c!531487 () Bool)

(assert (=> b!3159577 (= c!531487 ((_ is Union!9691) (ite c!531466 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (ite c!531467 (regTwo!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regOne!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))))))

(declare-fun b!3159578 () Bool)

(declare-fun res!1286752 () Bool)

(assert (=> b!3159578 (=> res!1286752 e!1968424)))

(assert (=> b!3159578 (= res!1286752 (not ((_ is Concat!15012) (ite c!531466 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (ite c!531467 (regTwo!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regOne!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))))))

(assert (=> b!3159578 (= e!1968423 e!1968424)))

(declare-fun b!3159579 () Bool)

(declare-fun e!1968421 () Bool)

(assert (=> b!3159579 (= e!1968421 call!228812)))

(declare-fun bm!228808 () Bool)

(assert (=> bm!228808 (= call!228811 (validRegex!4424 (ite c!531486 (reg!10020 (ite c!531466 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (ite c!531467 (regTwo!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regOne!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))) (ite c!531487 (regTwo!19895 (ite c!531466 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (ite c!531467 (regTwo!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regOne!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))) (regOne!19894 (ite c!531466 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (ite c!531467 (regTwo!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regOne!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))))))))

(declare-fun b!3159580 () Bool)

(declare-fun e!1968420 () Bool)

(assert (=> b!3159580 (= e!1968420 call!228811)))

(declare-fun d!868321 () Bool)

(declare-fun res!1286751 () Bool)

(assert (=> d!868321 (=> res!1286751 e!1968422)))

(assert (=> d!868321 (= res!1286751 ((_ is ElementMatch!9691) (ite c!531466 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (ite c!531467 (regTwo!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regOne!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))))))

(assert (=> d!868321 (= (validRegex!4424 (ite c!531466 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (ite c!531467 (regTwo!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regOne!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))) e!1968422)))

(declare-fun bm!228806 () Bool)

(assert (=> bm!228806 (= call!228813 (validRegex!4424 (ite c!531487 (regOne!19895 (ite c!531466 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (ite c!531467 (regTwo!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regOne!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))) (regTwo!19894 (ite c!531466 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (ite c!531467 (regTwo!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regOne!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))))))))

(declare-fun b!3159581 () Bool)

(assert (=> b!3159581 (= e!1968426 e!1968420)))

(declare-fun res!1286754 () Bool)

(assert (=> b!3159581 (= res!1286754 (not (nullable!3324 (reg!10020 (ite c!531466 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (ite c!531467 (regTwo!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regOne!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))))))))

(assert (=> b!3159581 (=> (not res!1286754) (not e!1968420))))

(declare-fun b!3159582 () Bool)

(declare-fun res!1286750 () Bool)

(assert (=> b!3159582 (=> (not res!1286750) (not e!1968421))))

(assert (=> b!3159582 (= res!1286750 call!228813)))

(assert (=> b!3159582 (= e!1968423 e!1968421)))

(assert (= (and d!868321 (not res!1286751)) b!3159574))

(assert (= (and b!3159574 c!531486) b!3159581))

(assert (= (and b!3159574 (not c!531486)) b!3159577))

(assert (= (and b!3159581 res!1286754) b!3159580))

(assert (= (and b!3159577 c!531487) b!3159582))

(assert (= (and b!3159577 (not c!531487)) b!3159578))

(assert (= (and b!3159582 res!1286750) b!3159579))

(assert (= (and b!3159578 (not res!1286752)) b!3159576))

(assert (= (and b!3159576 res!1286753) b!3159575))

(assert (= (or b!3159582 b!3159575) bm!228806))

(assert (= (or b!3159579 b!3159576) bm!228807))

(assert (= (or b!3159580 bm!228807) bm!228808))

(declare-fun m!3425218 () Bool)

(assert (=> bm!228808 m!3425218))

(declare-fun m!3425220 () Bool)

(assert (=> bm!228806 m!3425220))

(declare-fun m!3425222 () Bool)

(assert (=> b!3159581 m!3425222))

(assert (=> bm!228793 d!868321))

(declare-fun e!1968428 () tuple2!34272)

(declare-fun b!3159583 () Bool)

(assert (=> b!3159583 (= e!1968428 (tuple2!34273 (ite (= (h!40810 input!5974) (c!531459 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207))))) EmptyExpr!9691 EmptyLang!9691) (ite c!531484 (_2!20268 lt!1062623) cache!429)))))

(declare-fun b!3159584 () Bool)

(declare-fun lt!1062633 () tuple2!34272)

(declare-fun call!228814 () tuple2!34272)

(assert (=> b!3159584 (= lt!1062633 call!228814)))

(declare-fun lt!1062635 () tuple2!34272)

(declare-fun call!228815 () tuple2!34272)

(assert (=> b!3159584 (= lt!1062635 call!228815)))

(declare-fun e!1968427 () tuple2!34272)

(assert (=> b!3159584 (= e!1968427 (tuple2!34273 (Union!9691 (Concat!15012 (_1!20268 lt!1062635) (regTwo!19894 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207))))) (_1!20268 lt!1062633)) (_2!20268 lt!1062633)))))

(declare-fun e!1968430 () tuple2!34272)

(declare-fun b!3159585 () Bool)

(assert (=> b!3159585 (= e!1968430 (tuple2!34273 EmptyLang!9691 (ite c!531484 (_2!20268 lt!1062623) cache!429)))))

(declare-fun b!3159586 () Bool)

(declare-fun c!531489 () Bool)

(assert (=> b!3159586 (= c!531489 ((_ is Star!9691) (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207)))))))

(declare-fun e!1968432 () tuple2!34272)

(declare-fun e!1968429 () tuple2!34272)

(assert (=> b!3159586 (= e!1968432 e!1968429)))

(declare-fun bm!228809 () Bool)

(declare-fun c!531492 () Bool)

(assert (=> bm!228809 (= call!228814 (derivativeStepMem!12 (ite c!531492 (regOne!19895 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207)))) (regTwo!19894 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207))))) (h!40810 input!5974) (ite c!531492 (ite c!531484 (_2!20268 lt!1062623) cache!429) (_2!20268 lt!1062635))))))

(declare-fun d!868323 () Bool)

(declare-fun lt!1062639 () tuple2!34272)

(assert (=> d!868323 (= (_1!20268 lt!1062639) (derivativeStep!2875 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207))) (h!40810 input!5974)))))

(declare-fun e!1968431 () tuple2!34272)

(assert (=> d!868323 (= lt!1062639 e!1968431)))

(declare-fun c!531493 () Bool)

(declare-fun lt!1062637 () Option!6863)

(assert (=> d!868323 (= c!531493 ((_ is Some!6862) lt!1062637))))

(assert (=> d!868323 (= lt!1062637 (get!11174 (ite c!531484 (_2!20268 lt!1062623) cache!429) (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207))) (h!40810 input!5974)))))

(assert (=> d!868323 (validRegex!4424 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207))))))

(assert (=> d!868323 (= (derivativeStepMem!12 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207))) (h!40810 input!5974) (ite c!531484 (_2!20268 lt!1062623) cache!429)) lt!1062639)))

(declare-fun b!3159587 () Bool)

(assert (=> b!3159587 (= e!1968431 (tuple2!34273 (v!35000 lt!1062637) (ite c!531484 (_2!20268 lt!1062623) cache!429)))))

(declare-fun c!531491 () Bool)

(declare-fun b!3159588 () Bool)

(assert (=> b!3159588 (= c!531491 ((_ is ElementMatch!9691) (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207)))))))

(assert (=> b!3159588 (= e!1968430 e!1968428)))

(declare-fun b!3159589 () Bool)

(assert (=> b!3159589 (= e!1968428 e!1968432)))

(assert (=> b!3159589 (= c!531492 ((_ is Union!9691) (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207)))))))

(declare-fun lt!1062640 () tuple2!34272)

(declare-fun b!3159590 () Bool)

(assert (=> b!3159590 (= e!1968429 (tuple2!34273 (Concat!15012 (_1!20268 lt!1062640) (Star!9691 (reg!10020 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207)))))) (_2!20268 lt!1062640)))))

(declare-fun call!228817 () tuple2!34272)

(assert (=> b!3159590 (= lt!1062640 call!228817)))

(declare-fun bm!228810 () Bool)

(declare-fun lt!1062632 () tuple2!34272)

(declare-fun call!228816 () tuple2!34272)

(assert (=> bm!228810 (= call!228816 (derivativeStepMem!12 (ite c!531492 (regTwo!19895 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207)))) (ite c!531489 (reg!10020 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207)))) (regOne!19894 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207)))))) (h!40810 input!5974) (ite c!531492 (_2!20268 lt!1062632) (ite c!531484 (_2!20268 lt!1062623) cache!429))))))

(declare-fun b!3159591 () Bool)

(declare-fun lt!1062634 () tuple2!34272)

(assert (=> b!3159591 (= lt!1062634 call!228816)))

(assert (=> b!3159591 (= lt!1062632 call!228814)))

(assert (=> b!3159591 (= e!1968432 (tuple2!34273 (Union!9691 (_1!20268 lt!1062632) (_1!20268 lt!1062634)) (_2!20268 lt!1062634)))))

(declare-fun bm!228811 () Bool)

(assert (=> bm!228811 (= call!228815 call!228817)))

(declare-fun b!3159592 () Bool)

(assert (=> b!3159592 (= e!1968429 e!1968427)))

(declare-fun c!531490 () Bool)

(assert (=> b!3159592 (= c!531490 (nullable!3324 (regOne!19894 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207))))))))

(declare-fun b!3159593 () Bool)

(declare-fun lt!1062636 () tuple2!34272)

(assert (=> b!3159593 (= e!1968431 (tuple2!34273 (_1!20268 lt!1062636) (_2!20269 (update!254 (_2!20268 lt!1062636) (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207))) (h!40810 input!5974) (_1!20268 lt!1062636)))))))

(declare-fun c!531488 () Bool)

(assert (=> b!3159593 (= c!531488 (or ((_ is EmptyExpr!9691) (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207)))) ((_ is EmptyLang!9691) (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207))))))))

(assert (=> b!3159593 (= lt!1062636 e!1968430)))

(declare-fun bm!228812 () Bool)

(assert (=> bm!228812 (= call!228817 call!228816)))

(declare-fun b!3159594 () Bool)

(declare-fun lt!1062638 () tuple2!34272)

(assert (=> b!3159594 (= lt!1062638 call!228815)))

(assert (=> b!3159594 (= e!1968427 (tuple2!34273 (Union!9691 (Concat!15012 (_1!20268 lt!1062638) (regTwo!19894 (ite c!531484 (regTwo!19895 r!13207) (ite c!531481 (reg!10020 r!13207) (regOne!19894 r!13207))))) EmptyLang!9691) (_2!20268 lt!1062638)))))

(assert (= (and d!868323 c!531493) b!3159587))

(assert (= (and d!868323 (not c!531493)) b!3159593))

(assert (= (and b!3159593 c!531488) b!3159585))

(assert (= (and b!3159593 (not c!531488)) b!3159588))

(assert (= (and b!3159588 c!531491) b!3159583))

(assert (= (and b!3159588 (not c!531491)) b!3159589))

(assert (= (and b!3159589 c!531492) b!3159591))

(assert (= (and b!3159589 (not c!531492)) b!3159586))

(assert (= (and b!3159586 c!531489) b!3159590))

(assert (= (and b!3159586 (not c!531489)) b!3159592))

(assert (= (and b!3159592 c!531490) b!3159584))

(assert (= (and b!3159592 (not c!531490)) b!3159594))

(assert (= (or b!3159584 b!3159594) bm!228811))

(assert (= (or b!3159590 bm!228811) bm!228812))

(assert (= (or b!3159591 b!3159584) bm!228809))

(assert (= (or b!3159591 bm!228812) bm!228810))

(declare-fun m!3425224 () Bool)

(assert (=> b!3159592 m!3425224))

(declare-fun m!3425226 () Bool)

(assert (=> bm!228809 m!3425226))

(declare-fun m!3425228 () Bool)

(assert (=> bm!228810 m!3425228))

(declare-fun m!3425230 () Bool)

(assert (=> d!868323 m!3425230))

(declare-fun m!3425232 () Bool)

(assert (=> d!868323 m!3425232))

(declare-fun m!3425234 () Bool)

(assert (=> d!868323 m!3425234))

(declare-fun m!3425236 () Bool)

(assert (=> b!3159593 m!3425236))

(assert (=> bm!228803 d!868323))

(declare-fun d!868325 () Bool)

(declare-fun lt!1062643 () Regex!9691)

(assert (=> d!868325 (validRegex!4424 lt!1062643)))

(declare-fun e!1968447 () Regex!9691)

(assert (=> d!868325 (= lt!1062643 e!1968447)))

(declare-fun c!531508 () Bool)

(assert (=> d!868325 (= c!531508 (or ((_ is EmptyExpr!9691) r!13207) ((_ is EmptyLang!9691) r!13207)))))

(assert (=> d!868325 (validRegex!4424 r!13207)))

(assert (=> d!868325 (= (derivativeStep!2875 r!13207 (h!40810 input!5974)) lt!1062643)))

(declare-fun bm!228821 () Bool)

(declare-fun call!228828 () Regex!9691)

(declare-fun call!228826 () Regex!9691)

(assert (=> bm!228821 (= call!228828 call!228826)))

(declare-fun bm!228822 () Bool)

(declare-fun c!531504 () Bool)

(declare-fun c!531506 () Bool)

(declare-fun c!531505 () Bool)

(assert (=> bm!228822 (= call!228826 (derivativeStep!2875 (ite c!531506 (regTwo!19895 r!13207) (ite c!531505 (reg!10020 r!13207) (ite c!531504 (regTwo!19894 r!13207) (regOne!19894 r!13207)))) (h!40810 input!5974)))))

(declare-fun b!3159615 () Bool)

(declare-fun e!1968443 () Regex!9691)

(declare-fun call!228829 () Regex!9691)

(assert (=> b!3159615 (= e!1968443 (Union!9691 call!228829 call!228826))))

(declare-fun b!3159616 () Bool)

(assert (=> b!3159616 (= c!531506 ((_ is Union!9691) r!13207))))

(declare-fun e!1968446 () Regex!9691)

(assert (=> b!3159616 (= e!1968446 e!1968443)))

(declare-fun b!3159617 () Bool)

(declare-fun e!1968444 () Regex!9691)

(assert (=> b!3159617 (= e!1968444 (Concat!15012 call!228828 r!13207))))

(declare-fun bm!228823 () Bool)

(assert (=> bm!228823 (= call!228829 (derivativeStep!2875 (ite c!531506 (regOne!19895 r!13207) (regOne!19894 r!13207)) (h!40810 input!5974)))))

(declare-fun b!3159618 () Bool)

(assert (=> b!3159618 (= e!1968443 e!1968444)))

(assert (=> b!3159618 (= c!531505 ((_ is Star!9691) r!13207))))

(declare-fun b!3159619 () Bool)

(assert (=> b!3159619 (= e!1968446 (ite (= (h!40810 input!5974) (c!531459 r!13207)) EmptyExpr!9691 EmptyLang!9691))))

(declare-fun b!3159620 () Bool)

(assert (=> b!3159620 (= c!531504 (nullable!3324 (regOne!19894 r!13207)))))

(declare-fun e!1968445 () Regex!9691)

(assert (=> b!3159620 (= e!1968444 e!1968445)))

(declare-fun call!228827 () Regex!9691)

(declare-fun b!3159621 () Bool)

(assert (=> b!3159621 (= e!1968445 (Union!9691 (Concat!15012 call!228829 (regTwo!19894 r!13207)) call!228827))))

(declare-fun bm!228824 () Bool)

(assert (=> bm!228824 (= call!228827 call!228828)))

(declare-fun b!3159622 () Bool)

(assert (=> b!3159622 (= e!1968445 (Union!9691 (Concat!15012 call!228827 (regTwo!19894 r!13207)) EmptyLang!9691))))

(declare-fun b!3159623 () Bool)

(assert (=> b!3159623 (= e!1968447 e!1968446)))

(declare-fun c!531507 () Bool)

(assert (=> b!3159623 (= c!531507 ((_ is ElementMatch!9691) r!13207))))

(declare-fun b!3159624 () Bool)

(assert (=> b!3159624 (= e!1968447 EmptyLang!9691)))

(assert (= (and d!868325 c!531508) b!3159624))

(assert (= (and d!868325 (not c!531508)) b!3159623))

(assert (= (and b!3159623 c!531507) b!3159619))

(assert (= (and b!3159623 (not c!531507)) b!3159616))

(assert (= (and b!3159616 c!531506) b!3159615))

(assert (= (and b!3159616 (not c!531506)) b!3159618))

(assert (= (and b!3159618 c!531505) b!3159617))

(assert (= (and b!3159618 (not c!531505)) b!3159620))

(assert (= (and b!3159620 c!531504) b!3159621))

(assert (= (and b!3159620 (not c!531504)) b!3159622))

(assert (= (or b!3159621 b!3159622) bm!228824))

(assert (= (or b!3159617 bm!228824) bm!228821))

(assert (= (or b!3159615 b!3159621) bm!228823))

(assert (= (or b!3159615 bm!228821) bm!228822))

(declare-fun m!3425238 () Bool)

(assert (=> d!868325 m!3425238))

(assert (=> d!868325 m!3425169))

(declare-fun m!3425240 () Bool)

(assert (=> bm!228822 m!3425240))

(declare-fun m!3425242 () Bool)

(assert (=> bm!228823 m!3425242))

(assert (=> b!3159620 m!3425195))

(assert (=> d!868315 d!868325))

(declare-fun d!868327 () Bool)

(declare-fun e!1968452 () Bool)

(assert (=> d!868327 e!1968452))

(declare-fun res!1286757 () Bool)

(assert (=> d!868327 (=> res!1286757 e!1968452)))

(declare-fun lt!1062648 () Option!6863)

(declare-fun isEmpty!19744 (Option!6863) Bool)

(assert (=> d!868327 (= res!1286757 (isEmpty!19744 lt!1062648))))

(declare-fun e!1968453 () Option!6863)

(assert (=> d!868327 (= lt!1062648 e!1968453)))

(declare-fun c!531512 () Bool)

(declare-fun contains!6139 (MutableMap!4018 tuple2!34268) Bool)

(assert (=> d!868327 (= c!531512 (contains!6139 (cache!4153 cache!429) (tuple2!34269 r!13207 (h!40810 input!5974))))))

(assert (=> d!868327 (validRegex!4424 r!13207)))

(assert (=> d!868327 (= (get!11174 cache!429 r!13207 (h!40810 input!5974)) lt!1062648)))

(declare-fun b!3159631 () Bool)

(declare-fun apply!7926 (MutableMap!4018 tuple2!34268) Regex!9691)

(assert (=> b!3159631 (= e!1968453 (Some!6862 (apply!7926 (cache!4153 cache!429) (tuple2!34269 r!13207 (h!40810 input!5974)))))))

(declare-fun lt!1062649 () Unit!49747)

(declare-fun lemmaIfInCacheThenValid!42 (Cache!306 Regex!9691 C!19568) Unit!49747)

(assert (=> b!3159631 (= lt!1062649 (lemmaIfInCacheThenValid!42 cache!429 r!13207 (h!40810 input!5974)))))

(declare-fun b!3159632 () Bool)

(assert (=> b!3159632 (= e!1968453 None!6862)))

(declare-fun b!3159633 () Bool)

(declare-fun get!11175 (Option!6863) Regex!9691)

(assert (=> b!3159633 (= e!1968452 (= (get!11175 lt!1062648) (derivativeStep!2875 r!13207 (h!40810 input!5974))))))

(assert (= (and d!868327 c!531512) b!3159631))

(assert (= (and d!868327 (not c!531512)) b!3159632))

(assert (= (and d!868327 (not res!1286757)) b!3159633))

(declare-fun m!3425244 () Bool)

(assert (=> d!868327 m!3425244))

(declare-fun m!3425246 () Bool)

(assert (=> d!868327 m!3425246))

(assert (=> d!868327 m!3425169))

(declare-fun m!3425248 () Bool)

(assert (=> b!3159631 m!3425248))

(declare-fun m!3425250 () Bool)

(assert (=> b!3159631 m!3425250))

(declare-fun m!3425252 () Bool)

(assert (=> b!3159633 m!3425252))

(assert (=> b!3159633 m!3425201))

(assert (=> d!868315 d!868327))

(assert (=> d!868315 d!868305))

(declare-fun b!3159634 () Bool)

(declare-fun e!1968456 () Bool)

(declare-fun e!1968460 () Bool)

(assert (=> b!3159634 (= e!1968456 e!1968460)))

(declare-fun c!531513 () Bool)

(assert (=> b!3159634 (= c!531513 ((_ is Star!9691) (ite c!531464 (reg!10020 r!13207) (ite c!531465 (regTwo!19895 r!13207) (regOne!19894 r!13207)))))))

(declare-fun b!3159635 () Bool)

(declare-fun e!1968459 () Bool)

(declare-fun call!228832 () Bool)

(assert (=> b!3159635 (= e!1968459 call!228832)))

(declare-fun bm!228826 () Bool)

(declare-fun call!228831 () Bool)

(declare-fun call!228830 () Bool)

(assert (=> bm!228826 (= call!228831 call!228830)))

(declare-fun b!3159636 () Bool)

(declare-fun e!1968458 () Bool)

(assert (=> b!3159636 (= e!1968458 e!1968459)))

(declare-fun res!1286761 () Bool)

(assert (=> b!3159636 (=> (not res!1286761) (not e!1968459))))

(assert (=> b!3159636 (= res!1286761 call!228831)))

(declare-fun b!3159637 () Bool)

(declare-fun e!1968457 () Bool)

(assert (=> b!3159637 (= e!1968460 e!1968457)))

(declare-fun c!531514 () Bool)

(assert (=> b!3159637 (= c!531514 ((_ is Union!9691) (ite c!531464 (reg!10020 r!13207) (ite c!531465 (regTwo!19895 r!13207) (regOne!19894 r!13207)))))))

(declare-fun b!3159638 () Bool)

(declare-fun res!1286760 () Bool)

(assert (=> b!3159638 (=> res!1286760 e!1968458)))

(assert (=> b!3159638 (= res!1286760 (not ((_ is Concat!15012) (ite c!531464 (reg!10020 r!13207) (ite c!531465 (regTwo!19895 r!13207) (regOne!19894 r!13207))))))))

(assert (=> b!3159638 (= e!1968457 e!1968458)))

(declare-fun b!3159639 () Bool)

(declare-fun e!1968455 () Bool)

(assert (=> b!3159639 (= e!1968455 call!228831)))

(declare-fun bm!228827 () Bool)

(assert (=> bm!228827 (= call!228830 (validRegex!4424 (ite c!531513 (reg!10020 (ite c!531464 (reg!10020 r!13207) (ite c!531465 (regTwo!19895 r!13207) (regOne!19894 r!13207)))) (ite c!531514 (regTwo!19895 (ite c!531464 (reg!10020 r!13207) (ite c!531465 (regTwo!19895 r!13207) (regOne!19894 r!13207)))) (regOne!19894 (ite c!531464 (reg!10020 r!13207) (ite c!531465 (regTwo!19895 r!13207) (regOne!19894 r!13207))))))))))

(declare-fun b!3159640 () Bool)

(declare-fun e!1968454 () Bool)

(assert (=> b!3159640 (= e!1968454 call!228830)))

(declare-fun d!868329 () Bool)

(declare-fun res!1286759 () Bool)

(assert (=> d!868329 (=> res!1286759 e!1968456)))

(assert (=> d!868329 (= res!1286759 ((_ is ElementMatch!9691) (ite c!531464 (reg!10020 r!13207) (ite c!531465 (regTwo!19895 r!13207) (regOne!19894 r!13207)))))))

(assert (=> d!868329 (= (validRegex!4424 (ite c!531464 (reg!10020 r!13207) (ite c!531465 (regTwo!19895 r!13207) (regOne!19894 r!13207)))) e!1968456)))

(declare-fun bm!228825 () Bool)

(assert (=> bm!228825 (= call!228832 (validRegex!4424 (ite c!531514 (regOne!19895 (ite c!531464 (reg!10020 r!13207) (ite c!531465 (regTwo!19895 r!13207) (regOne!19894 r!13207)))) (regTwo!19894 (ite c!531464 (reg!10020 r!13207) (ite c!531465 (regTwo!19895 r!13207) (regOne!19894 r!13207)))))))))

(declare-fun b!3159641 () Bool)

(assert (=> b!3159641 (= e!1968460 e!1968454)))

(declare-fun res!1286762 () Bool)

(assert (=> b!3159641 (= res!1286762 (not (nullable!3324 (reg!10020 (ite c!531464 (reg!10020 r!13207) (ite c!531465 (regTwo!19895 r!13207) (regOne!19894 r!13207)))))))))

(assert (=> b!3159641 (=> (not res!1286762) (not e!1968454))))

(declare-fun b!3159642 () Bool)

(declare-fun res!1286758 () Bool)

(assert (=> b!3159642 (=> (not res!1286758) (not e!1968455))))

(assert (=> b!3159642 (= res!1286758 call!228832)))

(assert (=> b!3159642 (= e!1968457 e!1968455)))

(assert (= (and d!868329 (not res!1286759)) b!3159634))

(assert (= (and b!3159634 c!531513) b!3159641))

(assert (= (and b!3159634 (not c!531513)) b!3159637))

(assert (= (and b!3159641 res!1286762) b!3159640))

(assert (= (and b!3159637 c!531514) b!3159642))

(assert (= (and b!3159637 (not c!531514)) b!3159638))

(assert (= (and b!3159642 res!1286758) b!3159639))

(assert (= (and b!3159638 (not res!1286760)) b!3159636))

(assert (= (and b!3159636 res!1286761) b!3159635))

(assert (= (or b!3159642 b!3159635) bm!228825))

(assert (= (or b!3159639 b!3159636) bm!228826))

(assert (= (or b!3159640 bm!228826) bm!228827))

(declare-fun m!3425254 () Bool)

(assert (=> bm!228827 m!3425254))

(declare-fun m!3425256 () Bool)

(assert (=> bm!228825 m!3425256))

(declare-fun m!3425258 () Bool)

(assert (=> b!3159641 m!3425258))

(assert (=> bm!228790 d!868329))

(assert (=> b!3159469 d!868319))

(declare-fun d!868331 () Bool)

(declare-fun nullableFct!942 (Regex!9691) Bool)

(assert (=> d!868331 (= (nullable!3324 (reg!10020 r!13207)) (nullableFct!942 (reg!10020 r!13207)))))

(declare-fun bs!539389 () Bool)

(assert (= bs!539389 d!868331))

(declare-fun m!3425260 () Bool)

(assert (=> bs!539389 m!3425260))

(assert (=> b!3159465 d!868331))

(declare-fun d!868333 () Bool)

(assert (=> d!868333 (= (nullable!3324 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))) (nullableFct!942 (reg!10020 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))))

(declare-fun bs!539390 () Bool)

(assert (= bs!539390 d!868333))

(declare-fun m!3425262 () Bool)

(assert (=> bs!539390 m!3425262))

(assert (=> b!3159477 d!868333))

(declare-fun bs!539391 () Bool)

(declare-fun d!868335 () Bool)

(assert (= bs!539391 (and d!868335 b!3159573)))

(declare-fun lambda!115744 () Int)

(assert (=> bs!539391 (= lambda!115744 lambda!115741)))

(declare-fun lt!1062658 () tuple2!34274)

(assert (=> d!868335 (validCacheMap!39 (cache!4153 (_2!20269 lt!1062658)))))

(declare-fun Unit!49749 () Unit!49747)

(declare-datatypes ((tuple2!34276 0))(
  ( (tuple2!34277 (_1!20270 Bool) (_2!20270 MutableMap!4018)) )
))
(declare-fun update!255 (MutableMap!4018 tuple2!34268 Regex!9691) tuple2!34276)

(assert (=> d!868335 (= lt!1062658 (tuple2!34275 Unit!49749 (Cache!307 (_2!20270 (update!255 (cache!4153 (_2!20268 lt!1062627)) (tuple2!34269 r!13207 (h!40810 input!5974)) (_1!20268 lt!1062627))))))))

(declare-fun lt!1062659 () Unit!49747)

(declare-fun lt!1062661 () Unit!49747)

(assert (=> d!868335 (= lt!1062659 lt!1062661)))

(declare-fun lt!1062660 () tuple2!34268)

(assert (=> d!868335 (forall!7138 (toList!2043 (map!7864 (_2!20270 (update!255 (cache!4153 (_2!20268 lt!1062627)) lt!1062660 (_1!20268 lt!1062627))))) lambda!115744)))

(declare-fun lemmaUpdatePreservesForallPairs!25 (MutableMap!4018 tuple2!34268 Regex!9691 Int) Unit!49747)

(assert (=> d!868335 (= lt!1062661 (lemmaUpdatePreservesForallPairs!25 (cache!4153 (_2!20268 lt!1062627)) lt!1062660 (_1!20268 lt!1062627) lambda!115744))))

(assert (=> d!868335 (= lt!1062660 (tuple2!34269 r!13207 (h!40810 input!5974)))))

(assert (=> d!868335 (validCacheMap!39 (cache!4153 (_2!20268 lt!1062627)))))

(assert (=> d!868335 (= (update!254 (_2!20268 lt!1062627) r!13207 (h!40810 input!5974) (_1!20268 lt!1062627)) lt!1062658)))

(declare-fun bs!539392 () Bool)

(assert (= bs!539392 d!868335))

(declare-fun m!3425264 () Bool)

(assert (=> bs!539392 m!3425264))

(declare-fun m!3425266 () Bool)

(assert (=> bs!539392 m!3425266))

(declare-fun m!3425268 () Bool)

(assert (=> bs!539392 m!3425268))

(declare-fun m!3425270 () Bool)

(assert (=> bs!539392 m!3425270))

(declare-fun m!3425272 () Bool)

(assert (=> bs!539392 m!3425272))

(declare-fun m!3425274 () Bool)

(assert (=> bs!539392 m!3425274))

(declare-fun m!3425276 () Bool)

(assert (=> bs!539392 m!3425276))

(assert (=> b!3159513 d!868335))

(declare-fun d!868337 () Bool)

(assert (=> d!868337 (= (nullable!3324 (regOne!19894 r!13207)) (nullableFct!942 (regOne!19894 r!13207)))))

(declare-fun bs!539393 () Bool)

(assert (= bs!539393 d!868337))

(declare-fun m!3425278 () Bool)

(assert (=> bs!539393 m!3425278))

(assert (=> b!3159512 d!868337))

(declare-fun b!3159645 () Bool)

(declare-fun e!1968465 () Bool)

(declare-fun e!1968469 () Bool)

(assert (=> b!3159645 (= e!1968465 e!1968469)))

(declare-fun c!531516 () Bool)

(assert (=> b!3159645 (= c!531516 ((_ is Star!9691) (ite c!531465 (regOne!19895 r!13207) (regTwo!19894 r!13207))))))

(declare-fun b!3159646 () Bool)

(declare-fun e!1968468 () Bool)

(declare-fun call!228835 () Bool)

(assert (=> b!3159646 (= e!1968468 call!228835)))

(declare-fun bm!228829 () Bool)

(declare-fun call!228834 () Bool)

(declare-fun call!228833 () Bool)

(assert (=> bm!228829 (= call!228834 call!228833)))

(declare-fun b!3159647 () Bool)

(declare-fun e!1968467 () Bool)

(assert (=> b!3159647 (= e!1968467 e!1968468)))

(declare-fun res!1286769 () Bool)

(assert (=> b!3159647 (=> (not res!1286769) (not e!1968468))))

(assert (=> b!3159647 (= res!1286769 call!228834)))

(declare-fun b!3159648 () Bool)

(declare-fun e!1968466 () Bool)

(assert (=> b!3159648 (= e!1968469 e!1968466)))

(declare-fun c!531517 () Bool)

(assert (=> b!3159648 (= c!531517 ((_ is Union!9691) (ite c!531465 (regOne!19895 r!13207) (regTwo!19894 r!13207))))))

(declare-fun b!3159649 () Bool)

(declare-fun res!1286768 () Bool)

(assert (=> b!3159649 (=> res!1286768 e!1968467)))

(assert (=> b!3159649 (= res!1286768 (not ((_ is Concat!15012) (ite c!531465 (regOne!19895 r!13207) (regTwo!19894 r!13207)))))))

(assert (=> b!3159649 (= e!1968466 e!1968467)))

(declare-fun b!3159650 () Bool)

(declare-fun e!1968464 () Bool)

(assert (=> b!3159650 (= e!1968464 call!228834)))

(declare-fun bm!228830 () Bool)

(assert (=> bm!228830 (= call!228833 (validRegex!4424 (ite c!531516 (reg!10020 (ite c!531465 (regOne!19895 r!13207) (regTwo!19894 r!13207))) (ite c!531517 (regTwo!19895 (ite c!531465 (regOne!19895 r!13207) (regTwo!19894 r!13207))) (regOne!19894 (ite c!531465 (regOne!19895 r!13207) (regTwo!19894 r!13207)))))))))

(declare-fun b!3159651 () Bool)

(declare-fun e!1968463 () Bool)

(assert (=> b!3159651 (= e!1968463 call!228833)))

(declare-fun d!868339 () Bool)

(declare-fun res!1286767 () Bool)

(assert (=> d!868339 (=> res!1286767 e!1968465)))

(assert (=> d!868339 (= res!1286767 ((_ is ElementMatch!9691) (ite c!531465 (regOne!19895 r!13207) (regTwo!19894 r!13207))))))

(assert (=> d!868339 (= (validRegex!4424 (ite c!531465 (regOne!19895 r!13207) (regTwo!19894 r!13207))) e!1968465)))

(declare-fun bm!228828 () Bool)

(assert (=> bm!228828 (= call!228835 (validRegex!4424 (ite c!531517 (regOne!19895 (ite c!531465 (regOne!19895 r!13207) (regTwo!19894 r!13207))) (regTwo!19894 (ite c!531465 (regOne!19895 r!13207) (regTwo!19894 r!13207))))))))

(declare-fun b!3159652 () Bool)

(assert (=> b!3159652 (= e!1968469 e!1968463)))

(declare-fun res!1286770 () Bool)

(assert (=> b!3159652 (= res!1286770 (not (nullable!3324 (reg!10020 (ite c!531465 (regOne!19895 r!13207) (regTwo!19894 r!13207))))))))

(assert (=> b!3159652 (=> (not res!1286770) (not e!1968463))))

(declare-fun b!3159653 () Bool)

(declare-fun res!1286766 () Bool)

(assert (=> b!3159653 (=> (not res!1286766) (not e!1968464))))

(assert (=> b!3159653 (= res!1286766 call!228835)))

(assert (=> b!3159653 (= e!1968466 e!1968464)))

(assert (= (and d!868339 (not res!1286767)) b!3159645))

(assert (= (and b!3159645 c!531516) b!3159652))

(assert (= (and b!3159645 (not c!531516)) b!3159648))

(assert (= (and b!3159652 res!1286770) b!3159651))

(assert (= (and b!3159648 c!531517) b!3159653))

(assert (= (and b!3159648 (not c!531517)) b!3159649))

(assert (= (and b!3159653 res!1286766) b!3159650))

(assert (= (and b!3159649 (not res!1286768)) b!3159647))

(assert (= (and b!3159647 res!1286769) b!3159646))

(assert (= (or b!3159653 b!3159646) bm!228828))

(assert (= (or b!3159650 b!3159647) bm!228829))

(assert (= (or b!3159651 bm!228829) bm!228830))

(declare-fun m!3425280 () Bool)

(assert (=> bm!228830 m!3425280))

(declare-fun m!3425282 () Bool)

(assert (=> bm!228828 m!3425282))

(declare-fun m!3425284 () Bool)

(assert (=> b!3159652 m!3425284))

(assert (=> bm!228788 d!868339))

(declare-fun b!3159654 () Bool)

(declare-fun e!1968472 () Bool)

(declare-fun e!1968476 () Bool)

(assert (=> b!3159654 (= e!1968472 e!1968476)))

(declare-fun c!531518 () Bool)

(assert (=> b!3159654 (= c!531518 ((_ is Star!9691) (ite c!531467 (regOne!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regTwo!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))))

(declare-fun b!3159655 () Bool)

(declare-fun e!1968475 () Bool)

(declare-fun call!228838 () Bool)

(assert (=> b!3159655 (= e!1968475 call!228838)))

(declare-fun bm!228832 () Bool)

(declare-fun call!228837 () Bool)

(declare-fun call!228836 () Bool)

(assert (=> bm!228832 (= call!228837 call!228836)))

(declare-fun b!3159656 () Bool)

(declare-fun e!1968474 () Bool)

(assert (=> b!3159656 (= e!1968474 e!1968475)))

(declare-fun res!1286774 () Bool)

(assert (=> b!3159656 (=> (not res!1286774) (not e!1968475))))

(assert (=> b!3159656 (= res!1286774 call!228837)))

(declare-fun b!3159657 () Bool)

(declare-fun e!1968473 () Bool)

(assert (=> b!3159657 (= e!1968476 e!1968473)))

(declare-fun c!531519 () Bool)

(assert (=> b!3159657 (= c!531519 ((_ is Union!9691) (ite c!531467 (regOne!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regTwo!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))))

(declare-fun b!3159658 () Bool)

(declare-fun res!1286773 () Bool)

(assert (=> b!3159658 (=> res!1286773 e!1968474)))

(assert (=> b!3159658 (= res!1286773 (not ((_ is Concat!15012) (ite c!531467 (regOne!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regTwo!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))))))

(assert (=> b!3159658 (= e!1968473 e!1968474)))

(declare-fun b!3159659 () Bool)

(declare-fun e!1968471 () Bool)

(assert (=> b!3159659 (= e!1968471 call!228837)))

(declare-fun bm!228833 () Bool)

(assert (=> bm!228833 (= call!228836 (validRegex!4424 (ite c!531518 (reg!10020 (ite c!531467 (regOne!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regTwo!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))) (ite c!531519 (regTwo!19895 (ite c!531467 (regOne!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regTwo!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))) (regOne!19894 (ite c!531467 (regOne!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regTwo!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429)))))))))))

(declare-fun b!3159660 () Bool)

(declare-fun e!1968470 () Bool)

(assert (=> b!3159660 (= e!1968470 call!228836)))

(declare-fun d!868341 () Bool)

(declare-fun res!1286772 () Bool)

(assert (=> d!868341 (=> res!1286772 e!1968472)))

(assert (=> d!868341 (= res!1286772 ((_ is ElementMatch!9691) (ite c!531467 (regOne!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regTwo!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))))

(assert (=> d!868341 (= (validRegex!4424 (ite c!531467 (regOne!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regTwo!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))) e!1968472)))

(declare-fun bm!228831 () Bool)

(assert (=> bm!228831 (= call!228838 (validRegex!4424 (ite c!531519 (regOne!19895 (ite c!531467 (regOne!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regTwo!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))) (regTwo!19894 (ite c!531467 (regOne!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regTwo!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))))))

(declare-fun b!3159661 () Bool)

(assert (=> b!3159661 (= e!1968476 e!1968470)))

(declare-fun res!1286775 () Bool)

(assert (=> b!3159661 (= res!1286775 (not (nullable!3324 (reg!10020 (ite c!531467 (regOne!19895 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))) (regTwo!19894 (_1!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))))))

(assert (=> b!3159661 (=> (not res!1286775) (not e!1968470))))

(declare-fun b!3159662 () Bool)

(declare-fun res!1286771 () Bool)

(assert (=> b!3159662 (=> (not res!1286771) (not e!1968471))))

(assert (=> b!3159662 (= res!1286771 call!228838)))

(assert (=> b!3159662 (= e!1968473 e!1968471)))

(assert (= (and d!868341 (not res!1286772)) b!3159654))

(assert (= (and b!3159654 c!531518) b!3159661))

(assert (= (and b!3159654 (not c!531518)) b!3159657))

(assert (= (and b!3159661 res!1286775) b!3159660))

(assert (= (and b!3159657 c!531519) b!3159662))

(assert (= (and b!3159657 (not c!531519)) b!3159658))

(assert (= (and b!3159662 res!1286771) b!3159659))

(assert (= (and b!3159658 (not res!1286773)) b!3159656))

(assert (= (and b!3159656 res!1286774) b!3159655))

(assert (= (or b!3159662 b!3159655) bm!228831))

(assert (= (or b!3159659 b!3159656) bm!228832))

(assert (= (or b!3159660 bm!228832) bm!228833))

(declare-fun m!3425286 () Bool)

(assert (=> bm!228833 m!3425286))

(declare-fun m!3425288 () Bool)

(assert (=> bm!228831 m!3425288))

(declare-fun m!3425290 () Bool)

(assert (=> b!3159661 m!3425290))

(assert (=> bm!228791 d!868341))

(declare-fun b!3159663 () Bool)

(declare-fun e!1968478 () tuple2!34272)

(assert (=> b!3159663 (= e!1968478 (tuple2!34273 (ite (= (h!40810 input!5974) (c!531459 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207)))) EmptyExpr!9691 EmptyLang!9691) (ite c!531484 cache!429 (_2!20268 lt!1062626))))))

(declare-fun b!3159664 () Bool)

(declare-fun lt!1062663 () tuple2!34272)

(declare-fun call!228839 () tuple2!34272)

(assert (=> b!3159664 (= lt!1062663 call!228839)))

(declare-fun lt!1062665 () tuple2!34272)

(declare-fun call!228840 () tuple2!34272)

(assert (=> b!3159664 (= lt!1062665 call!228840)))

(declare-fun e!1968477 () tuple2!34272)

(assert (=> b!3159664 (= e!1968477 (tuple2!34273 (Union!9691 (Concat!15012 (_1!20268 lt!1062665) (regTwo!19894 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207)))) (_1!20268 lt!1062663)) (_2!20268 lt!1062663)))))

(declare-fun e!1968480 () tuple2!34272)

(declare-fun b!3159665 () Bool)

(assert (=> b!3159665 (= e!1968480 (tuple2!34273 EmptyLang!9691 (ite c!531484 cache!429 (_2!20268 lt!1062626))))))

(declare-fun b!3159666 () Bool)

(declare-fun c!531521 () Bool)

(assert (=> b!3159666 (= c!531521 ((_ is Star!9691) (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207))))))

(declare-fun e!1968482 () tuple2!34272)

(declare-fun e!1968479 () tuple2!34272)

(assert (=> b!3159666 (= e!1968482 e!1968479)))

(declare-fun bm!228834 () Bool)

(declare-fun c!531524 () Bool)

(assert (=> bm!228834 (= call!228839 (derivativeStepMem!12 (ite c!531524 (regOne!19895 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207))) (regTwo!19894 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207)))) (h!40810 input!5974) (ite c!531524 (ite c!531484 cache!429 (_2!20268 lt!1062626)) (_2!20268 lt!1062665))))))

(declare-fun d!868343 () Bool)

(declare-fun lt!1062669 () tuple2!34272)

(assert (=> d!868343 (= (_1!20268 lt!1062669) (derivativeStep!2875 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207)) (h!40810 input!5974)))))

(declare-fun e!1968481 () tuple2!34272)

(assert (=> d!868343 (= lt!1062669 e!1968481)))

(declare-fun c!531525 () Bool)

(declare-fun lt!1062667 () Option!6863)

(assert (=> d!868343 (= c!531525 ((_ is Some!6862) lt!1062667))))

(assert (=> d!868343 (= lt!1062667 (get!11174 (ite c!531484 cache!429 (_2!20268 lt!1062626)) (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207)) (h!40810 input!5974)))))

(assert (=> d!868343 (validRegex!4424 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207)))))

(assert (=> d!868343 (= (derivativeStepMem!12 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207)) (h!40810 input!5974) (ite c!531484 cache!429 (_2!20268 lt!1062626))) lt!1062669)))

(declare-fun b!3159667 () Bool)

(assert (=> b!3159667 (= e!1968481 (tuple2!34273 (v!35000 lt!1062667) (ite c!531484 cache!429 (_2!20268 lt!1062626))))))

(declare-fun b!3159668 () Bool)

(declare-fun c!531523 () Bool)

(assert (=> b!3159668 (= c!531523 ((_ is ElementMatch!9691) (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207))))))

(assert (=> b!3159668 (= e!1968480 e!1968478)))

(declare-fun b!3159669 () Bool)

(assert (=> b!3159669 (= e!1968478 e!1968482)))

(assert (=> b!3159669 (= c!531524 ((_ is Union!9691) (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207))))))

(declare-fun b!3159670 () Bool)

(declare-fun lt!1062670 () tuple2!34272)

(assert (=> b!3159670 (= e!1968479 (tuple2!34273 (Concat!15012 (_1!20268 lt!1062670) (Star!9691 (reg!10020 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207))))) (_2!20268 lt!1062670)))))

(declare-fun call!228842 () tuple2!34272)

(assert (=> b!3159670 (= lt!1062670 call!228842)))

(declare-fun call!228841 () tuple2!34272)

(declare-fun lt!1062662 () tuple2!34272)

(declare-fun bm!228835 () Bool)

(assert (=> bm!228835 (= call!228841 (derivativeStepMem!12 (ite c!531524 (regTwo!19895 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207))) (ite c!531521 (reg!10020 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207))) (regOne!19894 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207))))) (h!40810 input!5974) (ite c!531524 (_2!20268 lt!1062662) (ite c!531484 cache!429 (_2!20268 lt!1062626)))))))

(declare-fun b!3159671 () Bool)

(declare-fun lt!1062664 () tuple2!34272)

(assert (=> b!3159671 (= lt!1062664 call!228841)))

(assert (=> b!3159671 (= lt!1062662 call!228839)))

(assert (=> b!3159671 (= e!1968482 (tuple2!34273 (Union!9691 (_1!20268 lt!1062662) (_1!20268 lt!1062664)) (_2!20268 lt!1062664)))))

(declare-fun bm!228836 () Bool)

(assert (=> bm!228836 (= call!228840 call!228842)))

(declare-fun b!3159672 () Bool)

(assert (=> b!3159672 (= e!1968479 e!1968477)))

(declare-fun c!531522 () Bool)

(assert (=> b!3159672 (= c!531522 (nullable!3324 (regOne!19894 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207)))))))

(declare-fun b!3159673 () Bool)

(declare-fun lt!1062666 () tuple2!34272)

(assert (=> b!3159673 (= e!1968481 (tuple2!34273 (_1!20268 lt!1062666) (_2!20269 (update!254 (_2!20268 lt!1062666) (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207)) (h!40810 input!5974) (_1!20268 lt!1062666)))))))

(declare-fun c!531520 () Bool)

(assert (=> b!3159673 (= c!531520 (or ((_ is EmptyExpr!9691) (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207))) ((_ is EmptyLang!9691) (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207)))))))

(assert (=> b!3159673 (= lt!1062666 e!1968480)))

(declare-fun bm!228837 () Bool)

(assert (=> bm!228837 (= call!228842 call!228841)))

(declare-fun b!3159674 () Bool)

(declare-fun lt!1062668 () tuple2!34272)

(assert (=> b!3159674 (= lt!1062668 call!228840)))

(assert (=> b!3159674 (= e!1968477 (tuple2!34273 (Union!9691 (Concat!15012 (_1!20268 lt!1062668) (regTwo!19894 (ite c!531484 (regOne!19895 r!13207) (regTwo!19894 r!13207)))) EmptyLang!9691) (_2!20268 lt!1062668)))))

(assert (= (and d!868343 c!531525) b!3159667))

(assert (= (and d!868343 (not c!531525)) b!3159673))

(assert (= (and b!3159673 c!531520) b!3159665))

(assert (= (and b!3159673 (not c!531520)) b!3159668))

(assert (= (and b!3159668 c!531523) b!3159663))

(assert (= (and b!3159668 (not c!531523)) b!3159669))

(assert (= (and b!3159669 c!531524) b!3159671))

(assert (= (and b!3159669 (not c!531524)) b!3159666))

(assert (= (and b!3159666 c!531521) b!3159670))

(assert (= (and b!3159666 (not c!531521)) b!3159672))

(assert (= (and b!3159672 c!531522) b!3159664))

(assert (= (and b!3159672 (not c!531522)) b!3159674))

(assert (= (or b!3159664 b!3159674) bm!228836))

(assert (= (or b!3159670 bm!228836) bm!228837))

(assert (= (or b!3159671 b!3159664) bm!228834))

(assert (= (or b!3159671 bm!228837) bm!228835))

(declare-fun m!3425292 () Bool)

(assert (=> b!3159672 m!3425292))

(declare-fun m!3425294 () Bool)

(assert (=> bm!228834 m!3425294))

(declare-fun m!3425296 () Bool)

(assert (=> bm!228835 m!3425296))

(declare-fun m!3425298 () Bool)

(assert (=> d!868343 m!3425298))

(declare-fun m!3425300 () Bool)

(assert (=> d!868343 m!3425300))

(declare-fun m!3425302 () Bool)

(assert (=> d!868343 m!3425302))

(declare-fun m!3425304 () Bool)

(assert (=> b!3159673 m!3425304))

(assert (=> bm!228802 d!868343))

(declare-fun b!3159675 () Bool)

(declare-fun e!1968483 () Bool)

(declare-fun tp!993351 () Bool)

(assert (=> b!3159675 (= e!1968483 (and tp_is_empty!16945 tp!993351))))

(assert (=> b!3159546 (= tp!993310 e!1968483)))

(assert (= (and b!3159546 ((_ is Cons!35390) (t!234579 (t!234579 input!5974)))) b!3159675))

(declare-fun e!1968484 () Bool)

(assert (=> b!3159559 (= tp!993345 e!1968484)))

(declare-fun b!3159679 () Bool)

(declare-fun tp!993355 () Bool)

(declare-fun tp!993352 () Bool)

(assert (=> b!3159679 (= e!1968484 (and tp!993355 tp!993352))))

(declare-fun b!3159677 () Bool)

(declare-fun tp!993356 () Bool)

(declare-fun tp!993353 () Bool)

(assert (=> b!3159677 (= e!1968484 (and tp!993356 tp!993353))))

(declare-fun b!3159678 () Bool)

(declare-fun tp!993354 () Bool)

(assert (=> b!3159678 (= e!1968484 tp!993354)))

(declare-fun b!3159676 () Bool)

(assert (=> b!3159676 (= e!1968484 tp_is_empty!16945)))

(assert (= (and b!3159559 ((_ is ElementMatch!9691) (regOne!19894 (regOne!19894 r!13207)))) b!3159676))

(assert (= (and b!3159559 ((_ is Concat!15012) (regOne!19894 (regOne!19894 r!13207)))) b!3159677))

(assert (= (and b!3159559 ((_ is Star!9691) (regOne!19894 (regOne!19894 r!13207)))) b!3159678))

(assert (= (and b!3159559 ((_ is Union!9691) (regOne!19894 (regOne!19894 r!13207)))) b!3159679))

(declare-fun e!1968485 () Bool)

(assert (=> b!3159559 (= tp!993342 e!1968485)))

(declare-fun b!3159683 () Bool)

(declare-fun tp!993360 () Bool)

(declare-fun tp!993357 () Bool)

(assert (=> b!3159683 (= e!1968485 (and tp!993360 tp!993357))))

(declare-fun b!3159681 () Bool)

(declare-fun tp!993361 () Bool)

(declare-fun tp!993358 () Bool)

(assert (=> b!3159681 (= e!1968485 (and tp!993361 tp!993358))))

(declare-fun b!3159682 () Bool)

(declare-fun tp!993359 () Bool)

(assert (=> b!3159682 (= e!1968485 tp!993359)))

(declare-fun b!3159680 () Bool)

(assert (=> b!3159680 (= e!1968485 tp_is_empty!16945)))

(assert (= (and b!3159559 ((_ is ElementMatch!9691) (regTwo!19894 (regOne!19894 r!13207)))) b!3159680))

(assert (= (and b!3159559 ((_ is Concat!15012) (regTwo!19894 (regOne!19894 r!13207)))) b!3159681))

(assert (= (and b!3159559 ((_ is Star!9691) (regTwo!19894 (regOne!19894 r!13207)))) b!3159682))

(assert (= (and b!3159559 ((_ is Union!9691) (regTwo!19894 (regOne!19894 r!13207)))) b!3159683))

(declare-fun e!1968486 () Bool)

(assert (=> b!3159560 (= tp!993343 e!1968486)))

(declare-fun b!3159687 () Bool)

(declare-fun tp!993365 () Bool)

(declare-fun tp!993362 () Bool)

(assert (=> b!3159687 (= e!1968486 (and tp!993365 tp!993362))))

(declare-fun b!3159685 () Bool)

(declare-fun tp!993366 () Bool)

(declare-fun tp!993363 () Bool)

(assert (=> b!3159685 (= e!1968486 (and tp!993366 tp!993363))))

(declare-fun b!3159686 () Bool)

(declare-fun tp!993364 () Bool)

(assert (=> b!3159686 (= e!1968486 tp!993364)))

(declare-fun b!3159684 () Bool)

(assert (=> b!3159684 (= e!1968486 tp_is_empty!16945)))

(assert (= (and b!3159560 ((_ is ElementMatch!9691) (reg!10020 (regOne!19894 r!13207)))) b!3159684))

(assert (= (and b!3159560 ((_ is Concat!15012) (reg!10020 (regOne!19894 r!13207)))) b!3159685))

(assert (= (and b!3159560 ((_ is Star!9691) (reg!10020 (regOne!19894 r!13207)))) b!3159686))

(assert (= (and b!3159560 ((_ is Union!9691) (reg!10020 (regOne!19894 r!13207)))) b!3159687))

(declare-fun e!1968487 () Bool)

(assert (=> b!3159547 (= tp!993311 e!1968487)))

(declare-fun b!3159691 () Bool)

(declare-fun tp!993370 () Bool)

(declare-fun tp!993367 () Bool)

(assert (=> b!3159691 (= e!1968487 (and tp!993370 tp!993367))))

(declare-fun b!3159689 () Bool)

(declare-fun tp!993371 () Bool)

(declare-fun tp!993368 () Bool)

(assert (=> b!3159689 (= e!1968487 (and tp!993371 tp!993368))))

(declare-fun b!3159690 () Bool)

(declare-fun tp!993369 () Bool)

(assert (=> b!3159690 (= e!1968487 tp!993369)))

(declare-fun b!3159688 () Bool)

(assert (=> b!3159688 (= e!1968487 tp_is_empty!16945)))

(assert (= (and b!3159547 ((_ is ElementMatch!9691) (_1!20266 (_1!20267 (h!40809 (zeroValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))))))) b!3159688))

(assert (= (and b!3159547 ((_ is Concat!15012) (_1!20266 (_1!20267 (h!40809 (zeroValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))))))) b!3159689))

(assert (= (and b!3159547 ((_ is Star!9691) (_1!20266 (_1!20267 (h!40809 (zeroValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))))))) b!3159690))

(assert (= (and b!3159547 ((_ is Union!9691) (_1!20266 (_1!20267 (h!40809 (zeroValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))))))) b!3159691))

(declare-fun e!1968488 () Bool)

(assert (=> b!3159547 (= tp!993312 e!1968488)))

(declare-fun b!3159695 () Bool)

(declare-fun tp!993375 () Bool)

(declare-fun tp!993372 () Bool)

(assert (=> b!3159695 (= e!1968488 (and tp!993375 tp!993372))))

(declare-fun b!3159693 () Bool)

(declare-fun tp!993376 () Bool)

(declare-fun tp!993373 () Bool)

(assert (=> b!3159693 (= e!1968488 (and tp!993376 tp!993373))))

(declare-fun b!3159694 () Bool)

(declare-fun tp!993374 () Bool)

(assert (=> b!3159694 (= e!1968488 tp!993374)))

(declare-fun b!3159692 () Bool)

(assert (=> b!3159692 (= e!1968488 tp_is_empty!16945)))

(assert (= (and b!3159547 ((_ is ElementMatch!9691) (_2!20267 (h!40809 (zeroValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429)))))))))) b!3159692))

(assert (= (and b!3159547 ((_ is Concat!15012) (_2!20267 (h!40809 (zeroValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429)))))))))) b!3159693))

(assert (= (and b!3159547 ((_ is Star!9691) (_2!20267 (h!40809 (zeroValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429)))))))))) b!3159694))

(assert (= (and b!3159547 ((_ is Union!9691) (_2!20267 (h!40809 (zeroValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429)))))))))) b!3159695))

(declare-fun e!1968489 () Bool)

(declare-fun b!3159696 () Bool)

(declare-fun tp!993378 () Bool)

(declare-fun tp!993377 () Bool)

(declare-fun tp!993379 () Bool)

(assert (=> b!3159696 (= e!1968489 (and tp!993377 tp_is_empty!16945 tp!993378 tp!993379))))

(assert (=> b!3159547 (= tp!993313 e!1968489)))

(assert (= (and b!3159547 ((_ is Cons!35389) (t!234578 (zeroValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))))) b!3159696))

(declare-fun e!1968490 () Bool)

(assert (=> b!3159540 (= tp!993305 e!1968490)))

(declare-fun b!3159700 () Bool)

(declare-fun tp!993383 () Bool)

(declare-fun tp!993380 () Bool)

(assert (=> b!3159700 (= e!1968490 (and tp!993383 tp!993380))))

(declare-fun b!3159698 () Bool)

(declare-fun tp!993384 () Bool)

(declare-fun tp!993381 () Bool)

(assert (=> b!3159698 (= e!1968490 (and tp!993384 tp!993381))))

(declare-fun b!3159699 () Bool)

(declare-fun tp!993382 () Bool)

(assert (=> b!3159699 (= e!1968490 tp!993382)))

(declare-fun b!3159697 () Bool)

(assert (=> b!3159697 (= e!1968490 tp_is_empty!16945)))

(assert (= (and b!3159540 ((_ is ElementMatch!9691) (reg!10020 (regTwo!19895 r!13207)))) b!3159697))

(assert (= (and b!3159540 ((_ is Concat!15012) (reg!10020 (regTwo!19895 r!13207)))) b!3159698))

(assert (= (and b!3159540 ((_ is Star!9691) (reg!10020 (regTwo!19895 r!13207)))) b!3159699))

(assert (= (and b!3159540 ((_ is Union!9691) (reg!10020 (regTwo!19895 r!13207)))) b!3159700))

(declare-fun e!1968491 () Bool)

(assert (=> b!3159539 (= tp!993307 e!1968491)))

(declare-fun b!3159704 () Bool)

(declare-fun tp!993388 () Bool)

(declare-fun tp!993385 () Bool)

(assert (=> b!3159704 (= e!1968491 (and tp!993388 tp!993385))))

(declare-fun b!3159702 () Bool)

(declare-fun tp!993389 () Bool)

(declare-fun tp!993386 () Bool)

(assert (=> b!3159702 (= e!1968491 (and tp!993389 tp!993386))))

(declare-fun b!3159703 () Bool)

(declare-fun tp!993387 () Bool)

(assert (=> b!3159703 (= e!1968491 tp!993387)))

(declare-fun b!3159701 () Bool)

(assert (=> b!3159701 (= e!1968491 tp_is_empty!16945)))

(assert (= (and b!3159539 ((_ is ElementMatch!9691) (regOne!19894 (regTwo!19895 r!13207)))) b!3159701))

(assert (= (and b!3159539 ((_ is Concat!15012) (regOne!19894 (regTwo!19895 r!13207)))) b!3159702))

(assert (= (and b!3159539 ((_ is Star!9691) (regOne!19894 (regTwo!19895 r!13207)))) b!3159703))

(assert (= (and b!3159539 ((_ is Union!9691) (regOne!19894 (regTwo!19895 r!13207)))) b!3159704))

(declare-fun e!1968492 () Bool)

(assert (=> b!3159539 (= tp!993304 e!1968492)))

(declare-fun b!3159708 () Bool)

(declare-fun tp!993393 () Bool)

(declare-fun tp!993390 () Bool)

(assert (=> b!3159708 (= e!1968492 (and tp!993393 tp!993390))))

(declare-fun b!3159706 () Bool)

(declare-fun tp!993394 () Bool)

(declare-fun tp!993391 () Bool)

(assert (=> b!3159706 (= e!1968492 (and tp!993394 tp!993391))))

(declare-fun b!3159707 () Bool)

(declare-fun tp!993392 () Bool)

(assert (=> b!3159707 (= e!1968492 tp!993392)))

(declare-fun b!3159705 () Bool)

(assert (=> b!3159705 (= e!1968492 tp_is_empty!16945)))

(assert (= (and b!3159539 ((_ is ElementMatch!9691) (regTwo!19894 (regTwo!19895 r!13207)))) b!3159705))

(assert (= (and b!3159539 ((_ is Concat!15012) (regTwo!19894 (regTwo!19895 r!13207)))) b!3159706))

(assert (= (and b!3159539 ((_ is Star!9691) (regTwo!19894 (regTwo!19895 r!13207)))) b!3159707))

(assert (= (and b!3159539 ((_ is Union!9691) (regTwo!19894 (regTwo!19895 r!13207)))) b!3159708))

(declare-fun e!1968493 () Bool)

(assert (=> b!3159561 (= tp!993344 e!1968493)))

(declare-fun b!3159712 () Bool)

(declare-fun tp!993398 () Bool)

(declare-fun tp!993395 () Bool)

(assert (=> b!3159712 (= e!1968493 (and tp!993398 tp!993395))))

(declare-fun b!3159710 () Bool)

(declare-fun tp!993399 () Bool)

(declare-fun tp!993396 () Bool)

(assert (=> b!3159710 (= e!1968493 (and tp!993399 tp!993396))))

(declare-fun b!3159711 () Bool)

(declare-fun tp!993397 () Bool)

(assert (=> b!3159711 (= e!1968493 tp!993397)))

(declare-fun b!3159709 () Bool)

(assert (=> b!3159709 (= e!1968493 tp_is_empty!16945)))

(assert (= (and b!3159561 ((_ is ElementMatch!9691) (regOne!19895 (regOne!19894 r!13207)))) b!3159709))

(assert (= (and b!3159561 ((_ is Concat!15012) (regOne!19895 (regOne!19894 r!13207)))) b!3159710))

(assert (= (and b!3159561 ((_ is Star!9691) (regOne!19895 (regOne!19894 r!13207)))) b!3159711))

(assert (= (and b!3159561 ((_ is Union!9691) (regOne!19895 (regOne!19894 r!13207)))) b!3159712))

(declare-fun e!1968494 () Bool)

(assert (=> b!3159561 (= tp!993341 e!1968494)))

(declare-fun b!3159716 () Bool)

(declare-fun tp!993403 () Bool)

(declare-fun tp!993400 () Bool)

(assert (=> b!3159716 (= e!1968494 (and tp!993403 tp!993400))))

(declare-fun b!3159714 () Bool)

(declare-fun tp!993404 () Bool)

(declare-fun tp!993401 () Bool)

(assert (=> b!3159714 (= e!1968494 (and tp!993404 tp!993401))))

(declare-fun b!3159715 () Bool)

(declare-fun tp!993402 () Bool)

(assert (=> b!3159715 (= e!1968494 tp!993402)))

(declare-fun b!3159713 () Bool)

(assert (=> b!3159713 (= e!1968494 tp_is_empty!16945)))

(assert (= (and b!3159561 ((_ is ElementMatch!9691) (regTwo!19895 (regOne!19894 r!13207)))) b!3159713))

(assert (= (and b!3159561 ((_ is Concat!15012) (regTwo!19895 (regOne!19894 r!13207)))) b!3159714))

(assert (= (and b!3159561 ((_ is Star!9691) (regTwo!19895 (regOne!19894 r!13207)))) b!3159715))

(assert (= (and b!3159561 ((_ is Union!9691) (regTwo!19895 (regOne!19894 r!13207)))) b!3159716))

(declare-fun e!1968495 () Bool)

(assert (=> b!3159541 (= tp!993306 e!1968495)))

(declare-fun b!3159720 () Bool)

(declare-fun tp!993408 () Bool)

(declare-fun tp!993405 () Bool)

(assert (=> b!3159720 (= e!1968495 (and tp!993408 tp!993405))))

(declare-fun b!3159718 () Bool)

(declare-fun tp!993409 () Bool)

(declare-fun tp!993406 () Bool)

(assert (=> b!3159718 (= e!1968495 (and tp!993409 tp!993406))))

(declare-fun b!3159719 () Bool)

(declare-fun tp!993407 () Bool)

(assert (=> b!3159719 (= e!1968495 tp!993407)))

(declare-fun b!3159717 () Bool)

(assert (=> b!3159717 (= e!1968495 tp_is_empty!16945)))

(assert (= (and b!3159541 ((_ is ElementMatch!9691) (regOne!19895 (regTwo!19895 r!13207)))) b!3159717))

(assert (= (and b!3159541 ((_ is Concat!15012) (regOne!19895 (regTwo!19895 r!13207)))) b!3159718))

(assert (= (and b!3159541 ((_ is Star!9691) (regOne!19895 (regTwo!19895 r!13207)))) b!3159719))

(assert (= (and b!3159541 ((_ is Union!9691) (regOne!19895 (regTwo!19895 r!13207)))) b!3159720))

(declare-fun e!1968496 () Bool)

(assert (=> b!3159541 (= tp!993303 e!1968496)))

(declare-fun b!3159724 () Bool)

(declare-fun tp!993413 () Bool)

(declare-fun tp!993410 () Bool)

(assert (=> b!3159724 (= e!1968496 (and tp!993413 tp!993410))))

(declare-fun b!3159722 () Bool)

(declare-fun tp!993414 () Bool)

(declare-fun tp!993411 () Bool)

(assert (=> b!3159722 (= e!1968496 (and tp!993414 tp!993411))))

(declare-fun b!3159723 () Bool)

(declare-fun tp!993412 () Bool)

(assert (=> b!3159723 (= e!1968496 tp!993412)))

(declare-fun b!3159721 () Bool)

(assert (=> b!3159721 (= e!1968496 tp_is_empty!16945)))

(assert (= (and b!3159541 ((_ is ElementMatch!9691) (regTwo!19895 (regTwo!19895 r!13207)))) b!3159721))

(assert (= (and b!3159541 ((_ is Concat!15012) (regTwo!19895 (regTwo!19895 r!13207)))) b!3159722))

(assert (= (and b!3159541 ((_ is Star!9691) (regTwo!19895 (regTwo!19895 r!13207)))) b!3159723))

(assert (= (and b!3159541 ((_ is Union!9691) (regTwo!19895 (regTwo!19895 r!13207)))) b!3159724))

(declare-fun e!1968497 () Bool)

(assert (=> b!3159526 (= tp!993288 e!1968497)))

(declare-fun b!3159728 () Bool)

(declare-fun tp!993418 () Bool)

(declare-fun tp!993415 () Bool)

(assert (=> b!3159728 (= e!1968497 (and tp!993418 tp!993415))))

(declare-fun b!3159726 () Bool)

(declare-fun tp!993419 () Bool)

(declare-fun tp!993416 () Bool)

(assert (=> b!3159726 (= e!1968497 (and tp!993419 tp!993416))))

(declare-fun b!3159727 () Bool)

(declare-fun tp!993417 () Bool)

(assert (=> b!3159727 (= e!1968497 tp!993417)))

(declare-fun b!3159725 () Bool)

(assert (=> b!3159725 (= e!1968497 tp_is_empty!16945)))

(assert (= (and b!3159526 ((_ is ElementMatch!9691) (regOne!19894 (reg!10020 r!13207)))) b!3159725))

(assert (= (and b!3159526 ((_ is Concat!15012) (regOne!19894 (reg!10020 r!13207)))) b!3159726))

(assert (= (and b!3159526 ((_ is Star!9691) (regOne!19894 (reg!10020 r!13207)))) b!3159727))

(assert (= (and b!3159526 ((_ is Union!9691) (regOne!19894 (reg!10020 r!13207)))) b!3159728))

(declare-fun e!1968498 () Bool)

(assert (=> b!3159526 (= tp!993285 e!1968498)))

(declare-fun b!3159732 () Bool)

(declare-fun tp!993423 () Bool)

(declare-fun tp!993420 () Bool)

(assert (=> b!3159732 (= e!1968498 (and tp!993423 tp!993420))))

(declare-fun b!3159730 () Bool)

(declare-fun tp!993424 () Bool)

(declare-fun tp!993421 () Bool)

(assert (=> b!3159730 (= e!1968498 (and tp!993424 tp!993421))))

(declare-fun b!3159731 () Bool)

(declare-fun tp!993422 () Bool)

(assert (=> b!3159731 (= e!1968498 tp!993422)))

(declare-fun b!3159729 () Bool)

(assert (=> b!3159729 (= e!1968498 tp_is_empty!16945)))

(assert (= (and b!3159526 ((_ is ElementMatch!9691) (regTwo!19894 (reg!10020 r!13207)))) b!3159729))

(assert (= (and b!3159526 ((_ is Concat!15012) (regTwo!19894 (reg!10020 r!13207)))) b!3159730))

(assert (= (and b!3159526 ((_ is Star!9691) (regTwo!19894 (reg!10020 r!13207)))) b!3159731))

(assert (= (and b!3159526 ((_ is Union!9691) (regTwo!19894 (reg!10020 r!13207)))) b!3159732))

(declare-fun e!1968499 () Bool)

(assert (=> b!3159533 (= tp!993295 e!1968499)))

(declare-fun b!3159736 () Bool)

(declare-fun tp!993428 () Bool)

(declare-fun tp!993425 () Bool)

(assert (=> b!3159736 (= e!1968499 (and tp!993428 tp!993425))))

(declare-fun b!3159734 () Bool)

(declare-fun tp!993429 () Bool)

(declare-fun tp!993426 () Bool)

(assert (=> b!3159734 (= e!1968499 (and tp!993429 tp!993426))))

(declare-fun b!3159735 () Bool)

(declare-fun tp!993427 () Bool)

(assert (=> b!3159735 (= e!1968499 tp!993427)))

(declare-fun b!3159733 () Bool)

(assert (=> b!3159733 (= e!1968499 tp_is_empty!16945)))

(assert (= (and b!3159533 ((_ is ElementMatch!9691) (_1!20266 (_1!20267 (h!40809 mapDefault!18667))))) b!3159733))

(assert (= (and b!3159533 ((_ is Concat!15012) (_1!20266 (_1!20267 (h!40809 mapDefault!18667))))) b!3159734))

(assert (= (and b!3159533 ((_ is Star!9691) (_1!20266 (_1!20267 (h!40809 mapDefault!18667))))) b!3159735))

(assert (= (and b!3159533 ((_ is Union!9691) (_1!20266 (_1!20267 (h!40809 mapDefault!18667))))) b!3159736))

(declare-fun e!1968500 () Bool)

(assert (=> b!3159533 (= tp!993296 e!1968500)))

(declare-fun b!3159740 () Bool)

(declare-fun tp!993433 () Bool)

(declare-fun tp!993430 () Bool)

(assert (=> b!3159740 (= e!1968500 (and tp!993433 tp!993430))))

(declare-fun b!3159738 () Bool)

(declare-fun tp!993434 () Bool)

(declare-fun tp!993431 () Bool)

(assert (=> b!3159738 (= e!1968500 (and tp!993434 tp!993431))))

(declare-fun b!3159739 () Bool)

(declare-fun tp!993432 () Bool)

(assert (=> b!3159739 (= e!1968500 tp!993432)))

(declare-fun b!3159737 () Bool)

(assert (=> b!3159737 (= e!1968500 tp_is_empty!16945)))

(assert (= (and b!3159533 ((_ is ElementMatch!9691) (_2!20267 (h!40809 mapDefault!18667)))) b!3159737))

(assert (= (and b!3159533 ((_ is Concat!15012) (_2!20267 (h!40809 mapDefault!18667)))) b!3159738))

(assert (= (and b!3159533 ((_ is Star!9691) (_2!20267 (h!40809 mapDefault!18667)))) b!3159739))

(assert (= (and b!3159533 ((_ is Union!9691) (_2!20267 (h!40809 mapDefault!18667)))) b!3159740))

(declare-fun tp!993436 () Bool)

(declare-fun tp!993435 () Bool)

(declare-fun e!1968501 () Bool)

(declare-fun b!3159741 () Bool)

(declare-fun tp!993437 () Bool)

(assert (=> b!3159741 (= e!1968501 (and tp!993435 tp_is_empty!16945 tp!993436 tp!993437))))

(assert (=> b!3159533 (= tp!993297 e!1968501)))

(assert (= (and b!3159533 ((_ is Cons!35389) (t!234578 mapDefault!18667))) b!3159741))

(declare-fun e!1968502 () Bool)

(assert (=> b!3159528 (= tp!993287 e!1968502)))

(declare-fun b!3159745 () Bool)

(declare-fun tp!993441 () Bool)

(declare-fun tp!993438 () Bool)

(assert (=> b!3159745 (= e!1968502 (and tp!993441 tp!993438))))

(declare-fun b!3159743 () Bool)

(declare-fun tp!993442 () Bool)

(declare-fun tp!993439 () Bool)

(assert (=> b!3159743 (= e!1968502 (and tp!993442 tp!993439))))

(declare-fun b!3159744 () Bool)

(declare-fun tp!993440 () Bool)

(assert (=> b!3159744 (= e!1968502 tp!993440)))

(declare-fun b!3159742 () Bool)

(assert (=> b!3159742 (= e!1968502 tp_is_empty!16945)))

(assert (= (and b!3159528 ((_ is ElementMatch!9691) (regOne!19895 (reg!10020 r!13207)))) b!3159742))

(assert (= (and b!3159528 ((_ is Concat!15012) (regOne!19895 (reg!10020 r!13207)))) b!3159743))

(assert (= (and b!3159528 ((_ is Star!9691) (regOne!19895 (reg!10020 r!13207)))) b!3159744))

(assert (= (and b!3159528 ((_ is Union!9691) (regOne!19895 (reg!10020 r!13207)))) b!3159745))

(declare-fun e!1968503 () Bool)

(assert (=> b!3159528 (= tp!993284 e!1968503)))

(declare-fun b!3159749 () Bool)

(declare-fun tp!993446 () Bool)

(declare-fun tp!993443 () Bool)

(assert (=> b!3159749 (= e!1968503 (and tp!993446 tp!993443))))

(declare-fun b!3159747 () Bool)

(declare-fun tp!993447 () Bool)

(declare-fun tp!993444 () Bool)

(assert (=> b!3159747 (= e!1968503 (and tp!993447 tp!993444))))

(declare-fun b!3159748 () Bool)

(declare-fun tp!993445 () Bool)

(assert (=> b!3159748 (= e!1968503 tp!993445)))

(declare-fun b!3159746 () Bool)

(assert (=> b!3159746 (= e!1968503 tp_is_empty!16945)))

(assert (= (and b!3159528 ((_ is ElementMatch!9691) (regTwo!19895 (reg!10020 r!13207)))) b!3159746))

(assert (= (and b!3159528 ((_ is Concat!15012) (regTwo!19895 (reg!10020 r!13207)))) b!3159747))

(assert (= (and b!3159528 ((_ is Star!9691) (regTwo!19895 (reg!10020 r!13207)))) b!3159748))

(assert (= (and b!3159528 ((_ is Union!9691) (regTwo!19895 (reg!10020 r!13207)))) b!3159749))

(declare-fun e!1968504 () Bool)

(assert (=> b!3159555 (= tp!993335 e!1968504)))

(declare-fun b!3159753 () Bool)

(declare-fun tp!993451 () Bool)

(declare-fun tp!993448 () Bool)

(assert (=> b!3159753 (= e!1968504 (and tp!993451 tp!993448))))

(declare-fun b!3159751 () Bool)

(declare-fun tp!993452 () Bool)

(declare-fun tp!993449 () Bool)

(assert (=> b!3159751 (= e!1968504 (and tp!993452 tp!993449))))

(declare-fun b!3159752 () Bool)

(declare-fun tp!993450 () Bool)

(assert (=> b!3159752 (= e!1968504 tp!993450)))

(declare-fun b!3159750 () Bool)

(assert (=> b!3159750 (= e!1968504 tp_is_empty!16945)))

(assert (= (and b!3159555 ((_ is ElementMatch!9691) (_1!20266 (_1!20267 (h!40809 mapValue!18670))))) b!3159750))

(assert (= (and b!3159555 ((_ is Concat!15012) (_1!20266 (_1!20267 (h!40809 mapValue!18670))))) b!3159751))

(assert (= (and b!3159555 ((_ is Star!9691) (_1!20266 (_1!20267 (h!40809 mapValue!18670))))) b!3159752))

(assert (= (and b!3159555 ((_ is Union!9691) (_1!20266 (_1!20267 (h!40809 mapValue!18670))))) b!3159753))

(declare-fun e!1968505 () Bool)

(assert (=> b!3159555 (= tp!993337 e!1968505)))

(declare-fun b!3159757 () Bool)

(declare-fun tp!993456 () Bool)

(declare-fun tp!993453 () Bool)

(assert (=> b!3159757 (= e!1968505 (and tp!993456 tp!993453))))

(declare-fun b!3159755 () Bool)

(declare-fun tp!993457 () Bool)

(declare-fun tp!993454 () Bool)

(assert (=> b!3159755 (= e!1968505 (and tp!993457 tp!993454))))

(declare-fun b!3159756 () Bool)

(declare-fun tp!993455 () Bool)

(assert (=> b!3159756 (= e!1968505 tp!993455)))

(declare-fun b!3159754 () Bool)

(assert (=> b!3159754 (= e!1968505 tp_is_empty!16945)))

(assert (= (and b!3159555 ((_ is ElementMatch!9691) (_2!20267 (h!40809 mapValue!18670)))) b!3159754))

(assert (= (and b!3159555 ((_ is Concat!15012) (_2!20267 (h!40809 mapValue!18670)))) b!3159755))

(assert (= (and b!3159555 ((_ is Star!9691) (_2!20267 (h!40809 mapValue!18670)))) b!3159756))

(assert (= (and b!3159555 ((_ is Union!9691) (_2!20267 (h!40809 mapValue!18670)))) b!3159757))

(declare-fun tp!993459 () Bool)

(declare-fun tp!993458 () Bool)

(declare-fun b!3159758 () Bool)

(declare-fun tp!993460 () Bool)

(declare-fun e!1968506 () Bool)

(assert (=> b!3159758 (= e!1968506 (and tp!993458 tp_is_empty!16945 tp!993459 tp!993460))))

(assert (=> b!3159555 (= tp!993334 e!1968506)))

(assert (= (and b!3159555 ((_ is Cons!35389) (t!234578 mapValue!18670))) b!3159758))

(declare-fun e!1968507 () Bool)

(assert (=> b!3159527 (= tp!993286 e!1968507)))

(declare-fun b!3159762 () Bool)

(declare-fun tp!993464 () Bool)

(declare-fun tp!993461 () Bool)

(assert (=> b!3159762 (= e!1968507 (and tp!993464 tp!993461))))

(declare-fun b!3159760 () Bool)

(declare-fun tp!993465 () Bool)

(declare-fun tp!993462 () Bool)

(assert (=> b!3159760 (= e!1968507 (and tp!993465 tp!993462))))

(declare-fun b!3159761 () Bool)

(declare-fun tp!993463 () Bool)

(assert (=> b!3159761 (= e!1968507 tp!993463)))

(declare-fun b!3159759 () Bool)

(assert (=> b!3159759 (= e!1968507 tp_is_empty!16945)))

(assert (= (and b!3159527 ((_ is ElementMatch!9691) (reg!10020 (reg!10020 r!13207)))) b!3159759))

(assert (= (and b!3159527 ((_ is Concat!15012) (reg!10020 (reg!10020 r!13207)))) b!3159760))

(assert (= (and b!3159527 ((_ is Star!9691) (reg!10020 (reg!10020 r!13207)))) b!3159761))

(assert (= (and b!3159527 ((_ is Union!9691) (reg!10020 (reg!10020 r!13207)))) b!3159762))

(declare-fun mapNonEmpty!18671 () Bool)

(declare-fun mapRes!18671 () Bool)

(declare-fun tp!993467 () Bool)

(declare-fun e!1968509 () Bool)

(assert (=> mapNonEmpty!18671 (= mapRes!18671 (and tp!993467 e!1968509))))

(declare-fun mapKey!18671 () (_ BitVec 32))

(declare-fun mapValue!18671 () List!35513)

(declare-fun mapRest!18671 () (Array (_ BitVec 32) List!35513))

(assert (=> mapNonEmpty!18671 (= mapRest!18670 (store mapRest!18671 mapKey!18671 mapValue!18671))))

(declare-fun mapIsEmpty!18671 () Bool)

(assert (=> mapIsEmpty!18671 mapRes!18671))

(declare-fun condMapEmpty!18671 () Bool)

(declare-fun mapDefault!18671 () List!35513)

(assert (=> mapNonEmpty!18670 (= condMapEmpty!18671 (= mapRest!18670 ((as const (Array (_ BitVec 32) List!35513)) mapDefault!18671)))))

(declare-fun e!1968508 () Bool)

(assert (=> mapNonEmpty!18670 (= tp!993332 (and e!1968508 mapRes!18671))))

(declare-fun tp!993471 () Bool)

(declare-fun tp!993468 () Bool)

(declare-fun tp!993466 () Bool)

(declare-fun b!3159764 () Bool)

(assert (=> b!3159764 (= e!1968508 (and tp!993466 tp_is_empty!16945 tp!993471 tp!993468))))

(declare-fun tp!993472 () Bool)

(declare-fun tp!993469 () Bool)

(declare-fun b!3159763 () Bool)

(declare-fun tp!993470 () Bool)

(assert (=> b!3159763 (= e!1968509 (and tp!993470 tp_is_empty!16945 tp!993472 tp!993469))))

(assert (= (and mapNonEmpty!18670 condMapEmpty!18671) mapIsEmpty!18671))

(assert (= (and mapNonEmpty!18670 (not condMapEmpty!18671)) mapNonEmpty!18671))

(assert (= (and mapNonEmpty!18671 ((_ is Cons!35389) mapValue!18671)) b!3159763))

(assert (= (and mapNonEmpty!18670 ((_ is Cons!35389) mapDefault!18671)) b!3159764))

(declare-fun m!3425306 () Bool)

(assert (=> mapNonEmpty!18671 m!3425306))

(declare-fun e!1968510 () Bool)

(assert (=> b!3159556 (= tp!993331 e!1968510)))

(declare-fun b!3159768 () Bool)

(declare-fun tp!993476 () Bool)

(declare-fun tp!993473 () Bool)

(assert (=> b!3159768 (= e!1968510 (and tp!993476 tp!993473))))

(declare-fun b!3159766 () Bool)

(declare-fun tp!993477 () Bool)

(declare-fun tp!993474 () Bool)

(assert (=> b!3159766 (= e!1968510 (and tp!993477 tp!993474))))

(declare-fun b!3159767 () Bool)

(declare-fun tp!993475 () Bool)

(assert (=> b!3159767 (= e!1968510 tp!993475)))

(declare-fun b!3159765 () Bool)

(assert (=> b!3159765 (= e!1968510 tp_is_empty!16945)))

(assert (= (and b!3159556 ((_ is ElementMatch!9691) (_1!20266 (_1!20267 (h!40809 mapDefault!18670))))) b!3159765))

(assert (= (and b!3159556 ((_ is Concat!15012) (_1!20266 (_1!20267 (h!40809 mapDefault!18670))))) b!3159766))

(assert (= (and b!3159556 ((_ is Star!9691) (_1!20266 (_1!20267 (h!40809 mapDefault!18670))))) b!3159767))

(assert (= (and b!3159556 ((_ is Union!9691) (_1!20266 (_1!20267 (h!40809 mapDefault!18670))))) b!3159768))

(declare-fun e!1968511 () Bool)

(assert (=> b!3159556 (= tp!993336 e!1968511)))

(declare-fun b!3159772 () Bool)

(declare-fun tp!993481 () Bool)

(declare-fun tp!993478 () Bool)

(assert (=> b!3159772 (= e!1968511 (and tp!993481 tp!993478))))

(declare-fun b!3159770 () Bool)

(declare-fun tp!993482 () Bool)

(declare-fun tp!993479 () Bool)

(assert (=> b!3159770 (= e!1968511 (and tp!993482 tp!993479))))

(declare-fun b!3159771 () Bool)

(declare-fun tp!993480 () Bool)

(assert (=> b!3159771 (= e!1968511 tp!993480)))

(declare-fun b!3159769 () Bool)

(assert (=> b!3159769 (= e!1968511 tp_is_empty!16945)))

(assert (= (and b!3159556 ((_ is ElementMatch!9691) (_2!20267 (h!40809 mapDefault!18670)))) b!3159769))

(assert (= (and b!3159556 ((_ is Concat!15012) (_2!20267 (h!40809 mapDefault!18670)))) b!3159770))

(assert (= (and b!3159556 ((_ is Star!9691) (_2!20267 (h!40809 mapDefault!18670)))) b!3159771))

(assert (= (and b!3159556 ((_ is Union!9691) (_2!20267 (h!40809 mapDefault!18670)))) b!3159772))

(declare-fun tp!993484 () Bool)

(declare-fun b!3159773 () Bool)

(declare-fun tp!993485 () Bool)

(declare-fun tp!993483 () Bool)

(declare-fun e!1968512 () Bool)

(assert (=> b!3159773 (= e!1968512 (and tp!993483 tp_is_empty!16945 tp!993484 tp!993485))))

(assert (=> b!3159556 (= tp!993333 e!1968512)))

(assert (= (and b!3159556 ((_ is Cons!35389) (t!234578 mapDefault!18670))) b!3159773))

(declare-fun e!1968513 () Bool)

(assert (=> b!3159548 (= tp!993314 e!1968513)))

(declare-fun b!3159777 () Bool)

(declare-fun tp!993489 () Bool)

(declare-fun tp!993486 () Bool)

(assert (=> b!3159777 (= e!1968513 (and tp!993489 tp!993486))))

(declare-fun b!3159775 () Bool)

(declare-fun tp!993490 () Bool)

(declare-fun tp!993487 () Bool)

(assert (=> b!3159775 (= e!1968513 (and tp!993490 tp!993487))))

(declare-fun b!3159776 () Bool)

(declare-fun tp!993488 () Bool)

(assert (=> b!3159776 (= e!1968513 tp!993488)))

(declare-fun b!3159774 () Bool)

(assert (=> b!3159774 (= e!1968513 tp_is_empty!16945)))

(assert (= (and b!3159548 ((_ is ElementMatch!9691) (_1!20266 (_1!20267 (h!40809 (minValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))))))) b!3159774))

(assert (= (and b!3159548 ((_ is Concat!15012) (_1!20266 (_1!20267 (h!40809 (minValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))))))) b!3159775))

(assert (= (and b!3159548 ((_ is Star!9691) (_1!20266 (_1!20267 (h!40809 (minValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))))))) b!3159776))

(assert (= (and b!3159548 ((_ is Union!9691) (_1!20266 (_1!20267 (h!40809 (minValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))))))) b!3159777))

(declare-fun e!1968514 () Bool)

(assert (=> b!3159548 (= tp!993315 e!1968514)))

(declare-fun b!3159781 () Bool)

(declare-fun tp!993494 () Bool)

(declare-fun tp!993491 () Bool)

(assert (=> b!3159781 (= e!1968514 (and tp!993494 tp!993491))))

(declare-fun b!3159779 () Bool)

(declare-fun tp!993495 () Bool)

(declare-fun tp!993492 () Bool)

(assert (=> b!3159779 (= e!1968514 (and tp!993495 tp!993492))))

(declare-fun b!3159780 () Bool)

(declare-fun tp!993493 () Bool)

(assert (=> b!3159780 (= e!1968514 tp!993493)))

(declare-fun b!3159778 () Bool)

(assert (=> b!3159778 (= e!1968514 tp_is_empty!16945)))

(assert (= (and b!3159548 ((_ is ElementMatch!9691) (_2!20267 (h!40809 (minValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429)))))))))) b!3159778))

(assert (= (and b!3159548 ((_ is Concat!15012) (_2!20267 (h!40809 (minValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429)))))))))) b!3159779))

(assert (= (and b!3159548 ((_ is Star!9691) (_2!20267 (h!40809 (minValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429)))))))))) b!3159780))

(assert (= (and b!3159548 ((_ is Union!9691) (_2!20267 (h!40809 (minValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429)))))))))) b!3159781))

(declare-fun b!3159782 () Bool)

(declare-fun tp!993497 () Bool)

(declare-fun tp!993498 () Bool)

(declare-fun e!1968515 () Bool)

(declare-fun tp!993496 () Bool)

(assert (=> b!3159782 (= e!1968515 (and tp!993496 tp_is_empty!16945 tp!993497 tp!993498))))

(assert (=> b!3159548 (= tp!993316 e!1968515)))

(assert (= (and b!3159548 ((_ is Cons!35389) (t!234578 (minValue!4371 (v!34998 (underlying!8453 (v!34999 (underlying!8454 (cache!4153 cache!429))))))))) b!3159782))

(declare-fun b!3159793 () Bool)

(declare-fun e!1968524 () Bool)

(declare-fun lt!1062673 () MutLongMap!4112)

(assert (=> b!3159793 (= e!1968524 ((_ is LongMap!4112) lt!1062673))))

(assert (=> b!3159793 (= lt!1062673 (v!34999 (underlying!8454 (cache!4153 (_2!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))))))

(declare-fun b!3159792 () Bool)

(declare-fun e!1968523 () Bool)

(assert (=> b!3159792 (= e!1968523 e!1968524)))

(declare-fun b!3159791 () Bool)

(declare-fun e!1968522 () Bool)

(assert (=> b!3159791 (= e!1968522 e!1968523)))

(assert (=> d!868315 (= true e!1968522)))

(assert (= b!3159792 b!3159793))

(assert (= (and b!3159791 ((_ is HashMap!4018) (cache!4153 (_2!20268 (derivativeStepMem!12 r!13207 (h!40810 input!5974) cache!429))))) b!3159792))

(assert (= d!868315 b!3159791))

(declare-fun e!1968525 () Bool)

(assert (=> b!3159563 (= tp!993350 e!1968525)))

(declare-fun b!3159797 () Bool)

(declare-fun tp!993502 () Bool)

(declare-fun tp!993499 () Bool)

(assert (=> b!3159797 (= e!1968525 (and tp!993502 tp!993499))))

(declare-fun b!3159795 () Bool)

(declare-fun tp!993503 () Bool)

(declare-fun tp!993500 () Bool)

(assert (=> b!3159795 (= e!1968525 (and tp!993503 tp!993500))))

(declare-fun b!3159796 () Bool)

(declare-fun tp!993501 () Bool)

(assert (=> b!3159796 (= e!1968525 tp!993501)))

(declare-fun b!3159794 () Bool)

(assert (=> b!3159794 (= e!1968525 tp_is_empty!16945)))

(assert (= (and b!3159563 ((_ is ElementMatch!9691) (regOne!19894 (regTwo!19894 r!13207)))) b!3159794))

(assert (= (and b!3159563 ((_ is Concat!15012) (regOne!19894 (regTwo!19894 r!13207)))) b!3159795))

(assert (= (and b!3159563 ((_ is Star!9691) (regOne!19894 (regTwo!19894 r!13207)))) b!3159796))

(assert (= (and b!3159563 ((_ is Union!9691) (regOne!19894 (regTwo!19894 r!13207)))) b!3159797))

(declare-fun e!1968526 () Bool)

(assert (=> b!3159563 (= tp!993347 e!1968526)))

(declare-fun b!3159801 () Bool)

(declare-fun tp!993507 () Bool)

(declare-fun tp!993504 () Bool)

(assert (=> b!3159801 (= e!1968526 (and tp!993507 tp!993504))))

(declare-fun b!3159799 () Bool)

(declare-fun tp!993508 () Bool)

(declare-fun tp!993505 () Bool)

(assert (=> b!3159799 (= e!1968526 (and tp!993508 tp!993505))))

(declare-fun b!3159800 () Bool)

(declare-fun tp!993506 () Bool)

(assert (=> b!3159800 (= e!1968526 tp!993506)))

(declare-fun b!3159798 () Bool)

(assert (=> b!3159798 (= e!1968526 tp_is_empty!16945)))

(assert (= (and b!3159563 ((_ is ElementMatch!9691) (regTwo!19894 (regTwo!19894 r!13207)))) b!3159798))

(assert (= (and b!3159563 ((_ is Concat!15012) (regTwo!19894 (regTwo!19894 r!13207)))) b!3159799))

(assert (= (and b!3159563 ((_ is Star!9691) (regTwo!19894 (regTwo!19894 r!13207)))) b!3159800))

(assert (= (and b!3159563 ((_ is Union!9691) (regTwo!19894 (regTwo!19894 r!13207)))) b!3159801))

(declare-fun e!1968527 () Bool)

(assert (=> b!3159565 (= tp!993349 e!1968527)))

(declare-fun b!3159805 () Bool)

(declare-fun tp!993512 () Bool)

(declare-fun tp!993509 () Bool)

(assert (=> b!3159805 (= e!1968527 (and tp!993512 tp!993509))))

(declare-fun b!3159803 () Bool)

(declare-fun tp!993513 () Bool)

(declare-fun tp!993510 () Bool)

(assert (=> b!3159803 (= e!1968527 (and tp!993513 tp!993510))))

(declare-fun b!3159804 () Bool)

(declare-fun tp!993511 () Bool)

(assert (=> b!3159804 (= e!1968527 tp!993511)))

(declare-fun b!3159802 () Bool)

(assert (=> b!3159802 (= e!1968527 tp_is_empty!16945)))

(assert (= (and b!3159565 ((_ is ElementMatch!9691) (regOne!19895 (regTwo!19894 r!13207)))) b!3159802))

(assert (= (and b!3159565 ((_ is Concat!15012) (regOne!19895 (regTwo!19894 r!13207)))) b!3159803))

(assert (= (and b!3159565 ((_ is Star!9691) (regOne!19895 (regTwo!19894 r!13207)))) b!3159804))

(assert (= (and b!3159565 ((_ is Union!9691) (regOne!19895 (regTwo!19894 r!13207)))) b!3159805))

(declare-fun e!1968528 () Bool)

(assert (=> b!3159565 (= tp!993346 e!1968528)))

(declare-fun b!3159809 () Bool)

(declare-fun tp!993517 () Bool)

(declare-fun tp!993514 () Bool)

(assert (=> b!3159809 (= e!1968528 (and tp!993517 tp!993514))))

(declare-fun b!3159807 () Bool)

(declare-fun tp!993518 () Bool)

(declare-fun tp!993515 () Bool)

(assert (=> b!3159807 (= e!1968528 (and tp!993518 tp!993515))))

(declare-fun b!3159808 () Bool)

(declare-fun tp!993516 () Bool)

(assert (=> b!3159808 (= e!1968528 tp!993516)))

(declare-fun b!3159806 () Bool)

(assert (=> b!3159806 (= e!1968528 tp_is_empty!16945)))

(assert (= (and b!3159565 ((_ is ElementMatch!9691) (regTwo!19895 (regTwo!19894 r!13207)))) b!3159806))

(assert (= (and b!3159565 ((_ is Concat!15012) (regTwo!19895 (regTwo!19894 r!13207)))) b!3159807))

(assert (= (and b!3159565 ((_ is Star!9691) (regTwo!19895 (regTwo!19894 r!13207)))) b!3159808))

(assert (= (and b!3159565 ((_ is Union!9691) (regTwo!19895 (regTwo!19894 r!13207)))) b!3159809))

(declare-fun e!1968529 () Bool)

(assert (=> b!3159564 (= tp!993348 e!1968529)))

(declare-fun b!3159813 () Bool)

(declare-fun tp!993522 () Bool)

(declare-fun tp!993519 () Bool)

(assert (=> b!3159813 (= e!1968529 (and tp!993522 tp!993519))))

(declare-fun b!3159811 () Bool)

(declare-fun tp!993523 () Bool)

(declare-fun tp!993520 () Bool)

(assert (=> b!3159811 (= e!1968529 (and tp!993523 tp!993520))))

(declare-fun b!3159812 () Bool)

(declare-fun tp!993521 () Bool)

(assert (=> b!3159812 (= e!1968529 tp!993521)))

(declare-fun b!3159810 () Bool)

(assert (=> b!3159810 (= e!1968529 tp_is_empty!16945)))

(assert (= (and b!3159564 ((_ is ElementMatch!9691) (reg!10020 (regTwo!19894 r!13207)))) b!3159810))

(assert (= (and b!3159564 ((_ is Concat!15012) (reg!10020 (regTwo!19894 r!13207)))) b!3159811))

(assert (= (and b!3159564 ((_ is Star!9691) (reg!10020 (regTwo!19894 r!13207)))) b!3159812))

(assert (= (and b!3159564 ((_ is Union!9691) (reg!10020 (regTwo!19894 r!13207)))) b!3159813))

(declare-fun e!1968530 () Bool)

(assert (=> b!3159535 (= tp!993302 e!1968530)))

(declare-fun b!3159817 () Bool)

(declare-fun tp!993527 () Bool)

(declare-fun tp!993524 () Bool)

(assert (=> b!3159817 (= e!1968530 (and tp!993527 tp!993524))))

(declare-fun b!3159815 () Bool)

(declare-fun tp!993528 () Bool)

(declare-fun tp!993525 () Bool)

(assert (=> b!3159815 (= e!1968530 (and tp!993528 tp!993525))))

(declare-fun b!3159816 () Bool)

(declare-fun tp!993526 () Bool)

(assert (=> b!3159816 (= e!1968530 tp!993526)))

(declare-fun b!3159814 () Bool)

(assert (=> b!3159814 (= e!1968530 tp_is_empty!16945)))

(assert (= (and b!3159535 ((_ is ElementMatch!9691) (regOne!19894 (regOne!19895 r!13207)))) b!3159814))

(assert (= (and b!3159535 ((_ is Concat!15012) (regOne!19894 (regOne!19895 r!13207)))) b!3159815))

(assert (= (and b!3159535 ((_ is Star!9691) (regOne!19894 (regOne!19895 r!13207)))) b!3159816))

(assert (= (and b!3159535 ((_ is Union!9691) (regOne!19894 (regOne!19895 r!13207)))) b!3159817))

(declare-fun e!1968531 () Bool)

(assert (=> b!3159535 (= tp!993299 e!1968531)))

(declare-fun b!3159821 () Bool)

(declare-fun tp!993532 () Bool)

(declare-fun tp!993529 () Bool)

(assert (=> b!3159821 (= e!1968531 (and tp!993532 tp!993529))))

(declare-fun b!3159819 () Bool)

(declare-fun tp!993533 () Bool)

(declare-fun tp!993530 () Bool)

(assert (=> b!3159819 (= e!1968531 (and tp!993533 tp!993530))))

(declare-fun b!3159820 () Bool)

(declare-fun tp!993531 () Bool)

(assert (=> b!3159820 (= e!1968531 tp!993531)))

(declare-fun b!3159818 () Bool)

(assert (=> b!3159818 (= e!1968531 tp_is_empty!16945)))

(assert (= (and b!3159535 ((_ is ElementMatch!9691) (regTwo!19894 (regOne!19895 r!13207)))) b!3159818))

(assert (= (and b!3159535 ((_ is Concat!15012) (regTwo!19894 (regOne!19895 r!13207)))) b!3159819))

(assert (= (and b!3159535 ((_ is Star!9691) (regTwo!19894 (regOne!19895 r!13207)))) b!3159820))

(assert (= (and b!3159535 ((_ is Union!9691) (regTwo!19894 (regOne!19895 r!13207)))) b!3159821))

(declare-fun e!1968532 () Bool)

(assert (=> b!3159557 (= tp!993338 e!1968532)))

(declare-fun b!3159825 () Bool)

(declare-fun tp!993537 () Bool)

(declare-fun tp!993534 () Bool)

(assert (=> b!3159825 (= e!1968532 (and tp!993537 tp!993534))))

(declare-fun b!3159823 () Bool)

(declare-fun tp!993538 () Bool)

(declare-fun tp!993535 () Bool)

(assert (=> b!3159823 (= e!1968532 (and tp!993538 tp!993535))))

(declare-fun b!3159824 () Bool)

(declare-fun tp!993536 () Bool)

(assert (=> b!3159824 (= e!1968532 tp!993536)))

(declare-fun b!3159822 () Bool)

(assert (=> b!3159822 (= e!1968532 tp_is_empty!16945)))

(assert (= (and b!3159557 ((_ is ElementMatch!9691) (_1!20266 (_1!20267 (h!40809 mapValue!18667))))) b!3159822))

(assert (= (and b!3159557 ((_ is Concat!15012) (_1!20266 (_1!20267 (h!40809 mapValue!18667))))) b!3159823))

(assert (= (and b!3159557 ((_ is Star!9691) (_1!20266 (_1!20267 (h!40809 mapValue!18667))))) b!3159824))

(assert (= (and b!3159557 ((_ is Union!9691) (_1!20266 (_1!20267 (h!40809 mapValue!18667))))) b!3159825))

(declare-fun e!1968533 () Bool)

(assert (=> b!3159557 (= tp!993339 e!1968533)))

(declare-fun b!3159829 () Bool)

(declare-fun tp!993542 () Bool)

(declare-fun tp!993539 () Bool)

(assert (=> b!3159829 (= e!1968533 (and tp!993542 tp!993539))))

(declare-fun b!3159827 () Bool)

(declare-fun tp!993543 () Bool)

(declare-fun tp!993540 () Bool)

(assert (=> b!3159827 (= e!1968533 (and tp!993543 tp!993540))))

(declare-fun b!3159828 () Bool)

(declare-fun tp!993541 () Bool)

(assert (=> b!3159828 (= e!1968533 tp!993541)))

(declare-fun b!3159826 () Bool)

(assert (=> b!3159826 (= e!1968533 tp_is_empty!16945)))

(assert (= (and b!3159557 ((_ is ElementMatch!9691) (_2!20267 (h!40809 mapValue!18667)))) b!3159826))

(assert (= (and b!3159557 ((_ is Concat!15012) (_2!20267 (h!40809 mapValue!18667)))) b!3159827))

(assert (= (and b!3159557 ((_ is Star!9691) (_2!20267 (h!40809 mapValue!18667)))) b!3159828))

(assert (= (and b!3159557 ((_ is Union!9691) (_2!20267 (h!40809 mapValue!18667)))) b!3159829))

(declare-fun b!3159830 () Bool)

(declare-fun tp!993546 () Bool)

(declare-fun e!1968534 () Bool)

(declare-fun tp!993544 () Bool)

(declare-fun tp!993545 () Bool)

(assert (=> b!3159830 (= e!1968534 (and tp!993544 tp_is_empty!16945 tp!993545 tp!993546))))

(assert (=> b!3159557 (= tp!993340 e!1968534)))

(assert (= (and b!3159557 ((_ is Cons!35389) (t!234578 mapValue!18667))) b!3159830))

(declare-fun e!1968535 () Bool)

(assert (=> b!3159536 (= tp!993300 e!1968535)))

(declare-fun b!3159834 () Bool)

(declare-fun tp!993550 () Bool)

(declare-fun tp!993547 () Bool)

(assert (=> b!3159834 (= e!1968535 (and tp!993550 tp!993547))))

(declare-fun b!3159832 () Bool)

(declare-fun tp!993551 () Bool)

(declare-fun tp!993548 () Bool)

(assert (=> b!3159832 (= e!1968535 (and tp!993551 tp!993548))))

(declare-fun b!3159833 () Bool)

(declare-fun tp!993549 () Bool)

(assert (=> b!3159833 (= e!1968535 tp!993549)))

(declare-fun b!3159831 () Bool)

(assert (=> b!3159831 (= e!1968535 tp_is_empty!16945)))

(assert (= (and b!3159536 ((_ is ElementMatch!9691) (reg!10020 (regOne!19895 r!13207)))) b!3159831))

(assert (= (and b!3159536 ((_ is Concat!15012) (reg!10020 (regOne!19895 r!13207)))) b!3159832))

(assert (= (and b!3159536 ((_ is Star!9691) (reg!10020 (regOne!19895 r!13207)))) b!3159833))

(assert (= (and b!3159536 ((_ is Union!9691) (reg!10020 (regOne!19895 r!13207)))) b!3159834))

(declare-fun e!1968536 () Bool)

(assert (=> b!3159537 (= tp!993301 e!1968536)))

(declare-fun b!3159838 () Bool)

(declare-fun tp!993555 () Bool)

(declare-fun tp!993552 () Bool)

(assert (=> b!3159838 (= e!1968536 (and tp!993555 tp!993552))))

(declare-fun b!3159836 () Bool)

(declare-fun tp!993556 () Bool)

(declare-fun tp!993553 () Bool)

(assert (=> b!3159836 (= e!1968536 (and tp!993556 tp!993553))))

(declare-fun b!3159837 () Bool)

(declare-fun tp!993554 () Bool)

(assert (=> b!3159837 (= e!1968536 tp!993554)))

(declare-fun b!3159835 () Bool)

(assert (=> b!3159835 (= e!1968536 tp_is_empty!16945)))

(assert (= (and b!3159537 ((_ is ElementMatch!9691) (regOne!19895 (regOne!19895 r!13207)))) b!3159835))

(assert (= (and b!3159537 ((_ is Concat!15012) (regOne!19895 (regOne!19895 r!13207)))) b!3159836))

(assert (= (and b!3159537 ((_ is Star!9691) (regOne!19895 (regOne!19895 r!13207)))) b!3159837))

(assert (= (and b!3159537 ((_ is Union!9691) (regOne!19895 (regOne!19895 r!13207)))) b!3159838))

(declare-fun e!1968537 () Bool)

(assert (=> b!3159537 (= tp!993298 e!1968537)))

(declare-fun b!3159842 () Bool)

(declare-fun tp!993560 () Bool)

(declare-fun tp!993557 () Bool)

(assert (=> b!3159842 (= e!1968537 (and tp!993560 tp!993557))))

(declare-fun b!3159840 () Bool)

(declare-fun tp!993561 () Bool)

(declare-fun tp!993558 () Bool)

(assert (=> b!3159840 (= e!1968537 (and tp!993561 tp!993558))))

(declare-fun b!3159841 () Bool)

(declare-fun tp!993559 () Bool)

(assert (=> b!3159841 (= e!1968537 tp!993559)))

(declare-fun b!3159839 () Bool)

(assert (=> b!3159839 (= e!1968537 tp_is_empty!16945)))

(assert (= (and b!3159537 ((_ is ElementMatch!9691) (regTwo!19895 (regOne!19895 r!13207)))) b!3159839))

(assert (= (and b!3159537 ((_ is Concat!15012) (regTwo!19895 (regOne!19895 r!13207)))) b!3159840))

(assert (= (and b!3159537 ((_ is Star!9691) (regTwo!19895 (regOne!19895 r!13207)))) b!3159841))

(assert (= (and b!3159537 ((_ is Union!9691) (regTwo!19895 (regOne!19895 r!13207)))) b!3159842))

(check-sat (not d!868335) (not b!3159682) (not b!3159841) (not bm!228809) (not d!868325) (not b!3159739) (not b!3159593) (not b!3159763) (not bm!228828) (not b!3159772) (not b!3159797) (not d!868337) (not b!3159838) (not b!3159782) (not b!3159824) (not b!3159712) (not b!3159827) (not d!868343) (not b!3159707) (not b!3159673) (not b!3159819) (not b!3159690) (not b!3159837) (not b!3159799) (not b!3159800) (not b!3159817) (not b!3159681) (not b!3159767) (not b!3159840) (not b!3159672) (not b!3159678) (not b!3159738) (not b!3159761) (not b!3159689) (not d!868331) (not bm!228806) (not b!3159832) (not b!3159815) (not b!3159631) (not b!3159720) (not bm!228822) (not bm!228808) (not bm!228831) (not b!3159804) (not b!3159836) (not b!3159749) (not bm!228825) (not b!3159686) (not b!3159775) (not b!3159803) (not b!3159758) (not b!3159828) (not b!3159716) (not b!3159711) (not b!3159708) (not b!3159699) (not b!3159572) (not b!3159691) (not b!3159780) (not b!3159731) (not bm!228835) (not b!3159757) (not b!3159710) (not b!3159779) (not bm!228833) (not b!3159741) (not b!3159744) (not b!3159724) (not b!3159833) (not bm!228830) (not b!3159813) (not b!3159747) (not b_next!83633) (not b!3159732) (not b!3159762) (not b!3159730) (not b!3159764) (not b!3159816) (not b!3159770) (not b!3159702) (not b!3159695) (not b!3159801) (not b!3159727) (not b!3159834) (not bm!228827) tp_is_empty!16945 (not b!3159704) (not b!3159715) (not b!3159752) (not b!3159679) (not b!3159633) (not b!3159714) (not b!3159722) (not b!3159825) (not b!3159796) (not b!3159706) (not b!3159581) (not b!3159698) (not b!3159795) (not b!3159820) (not b!3159808) (not b!3159745) (not b!3159677) (not b_next!83635) (not b!3159805) (not b!3159592) (not b!3159809) (not b!3159830) (not b!3159807) (not b!3159718) (not b!3159694) (not b!3159821) (not b!3159842) (not b!3159693) (not b!3159743) (not b!3159719) (not b!3159728) (not mapNonEmpty!18671) (not bm!228834) (not b!3159696) (not b!3159777) (not b!3159685) (not b!3159740) (not d!868319) (not b!3159703) (not d!868333) (not d!868327) (not b!3159811) b_and!209171 (not b!3159683) (not bm!228823) (not b!3159781) (not b!3159823) (not b!3159776) (not b!3159661) (not b!3159773) (not b!3159736) (not d!868323) (not b!3159573) (not b!3159760) (not b!3159771) (not b!3159748) (not b!3159641) (not b!3159829) (not b!3159652) (not b!3159766) (not b!3159751) (not bm!228810) (not b!3159723) (not b!3159726) (not b!3159675) (not b!3159620) (not b!3159755) (not b!3159756) (not b!3159768) (not b!3159734) b_and!209173 (not b!3159735) (not b!3159753) (not b!3159700) (not b!3159687) (not b!3159812))
(check-sat b_and!209171 b_and!209173 (not b_next!83635) (not b_next!83633))
