; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296958 () Bool)

(assert start!296958)

(declare-fun b!3170375 () Bool)

(declare-fun b_free!83233 () Bool)

(declare-fun b_next!83937 () Bool)

(assert (=> b!3170375 (= b_free!83233 (not b_next!83937))))

(declare-fun tp!1000489 () Bool)

(declare-fun b_and!209511 () Bool)

(assert (=> b!3170375 (= tp!1000489 b_and!209511)))

(declare-fun b!3170382 () Bool)

(declare-fun b_free!83235 () Bool)

(declare-fun b_next!83939 () Bool)

(assert (=> b!3170382 (= b_free!83235 (not b_next!83939))))

(declare-fun tp!1000501 () Bool)

(declare-fun b_and!209513 () Bool)

(assert (=> b!3170382 (= tp!1000501 b_and!209513)))

(declare-fun tp!1000493 () Bool)

(declare-fun tp!1000503 () Bool)

(declare-fun e!1974576 () Bool)

(declare-fun e!1974575 () Bool)

(declare-datatypes ((C!19720 0))(
  ( (C!19721 (val!11896 Int)) )
))
(declare-datatypes ((Regex!9767 0))(
  ( (ElementMatch!9767 (c!533147 C!19720)) (Concat!15088 (regOne!20046 Regex!9767) (regTwo!20046 Regex!9767)) (EmptyExpr!9767) (Star!9767 (reg!10096 Regex!9767)) (EmptyLang!9767) (Union!9767 (regOne!20047 Regex!9767) (regTwo!20047 Regex!9767)) )
))
(declare-datatypes ((tuple2!34708 0))(
  ( (tuple2!34709 (_1!20486 Regex!9767) (_2!20486 C!19720)) )
))
(declare-datatypes ((tuple2!34710 0))(
  ( (tuple2!34711 (_1!20487 tuple2!34708) (_2!20487 Regex!9767)) )
))
(declare-datatypes ((List!35607 0))(
  ( (Nil!35483) (Cons!35483 (h!40903 tuple2!34710) (t!234690 List!35607)) )
))
(declare-datatypes ((array!14978 0))(
  ( (array!14979 (arr!6666 (Array (_ BitVec 32) List!35607)) (size!26752 (_ BitVec 32))) )
))
(declare-datatypes ((array!14980 0))(
  ( (array!14981 (arr!6667 (Array (_ BitVec 32) (_ BitVec 64))) (size!26753 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8376 0))(
  ( (LongMapFixedSize!8377 (defaultEntry!4573 Int) (mask!10865 (_ BitVec 32)) (extraKeys!4437 (_ BitVec 32)) (zeroValue!4447 List!35607) (minValue!4447 List!35607) (_size!8419 (_ BitVec 32)) (_keys!4488 array!14980) (_values!4469 array!14978) (_vacant!4249 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16561 0))(
  ( (Cell!16562 (v!35213 LongMapFixedSize!8376)) )
))
(declare-datatypes ((MutLongMap!4188 0))(
  ( (LongMap!4188 (underlying!8605 Cell!16561)) (MutLongMapExt!4187 (__x!22670 Int)) )
))
(declare-datatypes ((Cell!16563 0))(
  ( (Cell!16564 (v!35214 MutLongMap!4188)) )
))
(declare-datatypes ((Hashable!4104 0))(
  ( (HashableExt!4103 (__x!22671 Int)) )
))
(declare-datatypes ((MutableMap!4094 0))(
  ( (MutableMapExt!4093 (__x!22672 Int)) (HashMap!4094 (underlying!8606 Cell!16563) (hashF!6136 Hashable!4104) (_size!8420 (_ BitVec 32)) (defaultValue!4265 Int)) )
))
(declare-datatypes ((Cache!458 0))(
  ( (Cache!459 (cache!4240 MutableMap!4094)) )
))
(declare-fun thiss!28524 () Cache!458)

(declare-fun array_inv!4780 (array!14980) Bool)

(declare-fun array_inv!4781 (array!14978) Bool)

(assert (=> b!3170375 (= e!1974575 (and tp!1000489 tp!1000493 tp!1000503 (array_inv!4780 (_keys!4488 (v!35213 (underlying!8605 (v!35214 (underlying!8606 (cache!4240 thiss!28524))))))) (array_inv!4781 (_values!4469 (v!35213 (underlying!8605 (v!35214 (underlying!8606 (cache!4240 thiss!28524))))))) e!1974576))))

(declare-fun b!3170376 () Bool)

(declare-fun e!1974584 () Bool)

(declare-fun tp!1000490 () Bool)

(declare-fun tp!1000499 () Bool)

(assert (=> b!3170376 (= e!1974584 (and tp!1000490 tp!1000499))))

(declare-fun b!3170377 () Bool)

(declare-fun e!1974582 () Bool)

(assert (=> b!3170377 (= e!1974582 e!1974575)))

(declare-fun b!3170378 () Bool)

(declare-fun res!1288814 () Bool)

(declare-fun e!1974583 () Bool)

(assert (=> b!3170378 (=> (not res!1288814) (not e!1974583))))

(declare-fun r!4733 () Regex!9767)

(declare-fun validRegex!4481 (Regex!9767) Bool)

(assert (=> b!3170378 (= res!1288814 (validRegex!4481 r!4733))))

(declare-fun b!3170379 () Bool)

(declare-fun valid!3266 (MutableMap!4094) Bool)

(assert (=> b!3170379 (= e!1974583 (not (valid!3266 (cache!4240 thiss!28524))))))

(declare-fun b!3170380 () Bool)

(declare-fun tp!1000496 () Bool)

(declare-fun mapRes!18986 () Bool)

(assert (=> b!3170380 (= e!1974576 (and tp!1000496 mapRes!18986))))

(declare-fun condMapEmpty!18986 () Bool)

(declare-fun mapDefault!18986 () List!35607)

(assert (=> b!3170380 (= condMapEmpty!18986 (= (arr!6666 (_values!4469 (v!35213 (underlying!8605 (v!35214 (underlying!8606 (cache!4240 thiss!28524))))))) ((as const (Array (_ BitVec 32) List!35607)) mapDefault!18986)))))

(declare-fun b!3170381 () Bool)

(declare-fun e!1974580 () Bool)

(declare-fun tp!1000491 () Bool)

(declare-fun tp!1000500 () Bool)

(assert (=> b!3170381 (= e!1974580 (and tp!1000491 tp!1000500))))

(declare-fun e!1974577 () Bool)

(declare-fun e!1974574 () Bool)

(assert (=> b!3170382 (= e!1974577 (and e!1974574 tp!1000501))))

(declare-fun b!3170383 () Bool)

(declare-fun res!1288812 () Bool)

(assert (=> b!3170383 (=> (not res!1288812) (not e!1974583))))

(declare-fun res!14113 () Regex!9767)

(declare-fun c!6996 () C!19720)

(declare-fun derivativeStep!2908 (Regex!9767 C!19720) Regex!9767)

(assert (=> b!3170383 (= res!1288812 (= res!14113 (derivativeStep!2908 r!4733 c!6996)))))

(declare-fun b!3170384 () Bool)

(declare-fun tp_is_empty!17097 () Bool)

(assert (=> b!3170384 (= e!1974580 tp_is_empty!17097)))

(declare-fun mapNonEmpty!18986 () Bool)

(declare-fun tp!1000494 () Bool)

(declare-fun tp!1000504 () Bool)

(assert (=> mapNonEmpty!18986 (= mapRes!18986 (and tp!1000494 tp!1000504))))

(declare-fun mapRest!18986 () (Array (_ BitVec 32) List!35607))

(declare-fun mapValue!18986 () List!35607)

(declare-fun mapKey!18986 () (_ BitVec 32))

(assert (=> mapNonEmpty!18986 (= (arr!6666 (_values!4469 (v!35213 (underlying!8605 (v!35214 (underlying!8606 (cache!4240 thiss!28524))))))) (store mapRest!18986 mapKey!18986 mapValue!18986))))

(declare-fun res!1288813 () Bool)

(assert (=> start!296958 (=> (not res!1288813) (not e!1974583))))

(declare-fun validCacheMap!76 (MutableMap!4094) Bool)

(assert (=> start!296958 (= res!1288813 (validCacheMap!76 (cache!4240 thiss!28524)))))

(assert (=> start!296958 e!1974583))

(declare-fun e!1974579 () Bool)

(declare-fun inv!48181 (Cache!458) Bool)

(assert (=> start!296958 (and (inv!48181 thiss!28524) e!1974579)))

(assert (=> start!296958 e!1974584))

(assert (=> start!296958 e!1974580))

(assert (=> start!296958 tp_is_empty!17097))

(declare-fun b!3170374 () Bool)

(declare-fun tp!1000502 () Bool)

(assert (=> b!3170374 (= e!1974580 tp!1000502)))

(declare-fun mapIsEmpty!18986 () Bool)

(assert (=> mapIsEmpty!18986 mapRes!18986))

(declare-fun b!3170385 () Bool)

(assert (=> b!3170385 (= e!1974584 tp_is_empty!17097)))

(declare-fun b!3170386 () Bool)

(declare-fun tp!1000498 () Bool)

(assert (=> b!3170386 (= e!1974584 tp!1000498)))

(declare-fun b!3170387 () Bool)

(declare-fun e!1974578 () Bool)

(declare-fun lt!1066076 () MutLongMap!4188)

(get-info :version)

(assert (=> b!3170387 (= e!1974574 (and e!1974578 ((_ is LongMap!4188) lt!1066076)))))

(assert (=> b!3170387 (= lt!1066076 (v!35214 (underlying!8606 (cache!4240 thiss!28524))))))

(declare-fun b!3170388 () Bool)

(assert (=> b!3170388 (= e!1974578 e!1974582)))

(declare-fun b!3170389 () Bool)

(assert (=> b!3170389 (= e!1974579 e!1974577)))

(declare-fun b!3170390 () Bool)

(declare-fun tp!1000492 () Bool)

(declare-fun tp!1000495 () Bool)

(assert (=> b!3170390 (= e!1974584 (and tp!1000492 tp!1000495))))

(declare-fun b!3170391 () Bool)

(declare-fun res!1288815 () Bool)

(assert (=> b!3170391 (=> (not res!1288815) (not e!1974583))))

(assert (=> b!3170391 (= res!1288815 ((_ is HashMap!4094) (cache!4240 thiss!28524)))))

(declare-fun b!3170392 () Bool)

(declare-fun tp!1000497 () Bool)

(declare-fun tp!1000505 () Bool)

(assert (=> b!3170392 (= e!1974580 (and tp!1000497 tp!1000505))))

(assert (= (and start!296958 res!1288813) b!3170378))

(assert (= (and b!3170378 res!1288814) b!3170383))

(assert (= (and b!3170383 res!1288812) b!3170391))

(assert (= (and b!3170391 res!1288815) b!3170379))

(assert (= (and b!3170380 condMapEmpty!18986) mapIsEmpty!18986))

(assert (= (and b!3170380 (not condMapEmpty!18986)) mapNonEmpty!18986))

(assert (= b!3170375 b!3170380))

(assert (= b!3170377 b!3170375))

(assert (= b!3170388 b!3170377))

(assert (= (and b!3170387 ((_ is LongMap!4188) (v!35214 (underlying!8606 (cache!4240 thiss!28524))))) b!3170388))

(assert (= b!3170382 b!3170387))

(assert (= (and b!3170389 ((_ is HashMap!4094) (cache!4240 thiss!28524))) b!3170382))

(assert (= start!296958 b!3170389))

(assert (= (and start!296958 ((_ is ElementMatch!9767) r!4733)) b!3170385))

(assert (= (and start!296958 ((_ is Concat!15088) r!4733)) b!3170376))

(assert (= (and start!296958 ((_ is Star!9767) r!4733)) b!3170386))

(assert (= (and start!296958 ((_ is Union!9767) r!4733)) b!3170390))

(assert (= (and start!296958 ((_ is ElementMatch!9767) res!14113)) b!3170384))

(assert (= (and start!296958 ((_ is Concat!15088) res!14113)) b!3170392))

(assert (= (and start!296958 ((_ is Star!9767) res!14113)) b!3170374))

(assert (= (and start!296958 ((_ is Union!9767) res!14113)) b!3170381))

(declare-fun m!3429843 () Bool)

(assert (=> start!296958 m!3429843))

(declare-fun m!3429845 () Bool)

(assert (=> start!296958 m!3429845))

(declare-fun m!3429847 () Bool)

(assert (=> b!3170383 m!3429847))

(declare-fun m!3429849 () Bool)

(assert (=> b!3170379 m!3429849))

(declare-fun m!3429851 () Bool)

(assert (=> b!3170378 m!3429851))

(declare-fun m!3429853 () Bool)

(assert (=> b!3170375 m!3429853))

(declare-fun m!3429855 () Bool)

(assert (=> b!3170375 m!3429855))

(declare-fun m!3429857 () Bool)

(assert (=> mapNonEmpty!18986 m!3429857))

(check-sat (not b!3170374) (not b!3170380) (not b!3170379) (not b!3170386) (not b_next!83937) (not b!3170383) (not b!3170378) (not b_next!83939) (not b!3170392) (not b!3170381) b_and!209513 (not b!3170390) (not mapNonEmpty!18986) b_and!209511 (not b!3170376) (not start!296958) (not b!3170375) tp_is_empty!17097)
(check-sat b_and!209513 b_and!209511 (not b_next!83937) (not b_next!83939))
(get-model)

(declare-fun d!869179 () Bool)

(declare-fun res!1288820 () Bool)

(declare-fun e!1974587 () Bool)

(assert (=> d!869179 (=> (not res!1288820) (not e!1974587))))

(declare-fun valid!3267 (MutLongMap!4188) Bool)

(assert (=> d!869179 (= res!1288820 (valid!3267 (v!35214 (underlying!8606 (cache!4240 thiss!28524)))))))

(assert (=> d!869179 (= (valid!3266 (cache!4240 thiss!28524)) e!1974587)))

(declare-fun b!3170397 () Bool)

(declare-fun res!1288821 () Bool)

(assert (=> b!3170397 (=> (not res!1288821) (not e!1974587))))

(declare-fun lambda!115991 () Int)

(declare-datatypes ((tuple2!34712 0))(
  ( (tuple2!34713 (_1!20488 (_ BitVec 64)) (_2!20488 List!35607)) )
))
(declare-datatypes ((List!35608 0))(
  ( (Nil!35484) (Cons!35484 (h!40904 tuple2!34712) (t!234691 List!35608)) )
))
(declare-fun forall!7163 (List!35608 Int) Bool)

(declare-datatypes ((ListLongMap!735 0))(
  ( (ListLongMap!736 (toList!2076 List!35608)) )
))
(declare-fun map!7935 (MutLongMap!4188) ListLongMap!735)

(assert (=> b!3170397 (= res!1288821 (forall!7163 (toList!2076 (map!7935 (v!35214 (underlying!8606 (cache!4240 thiss!28524))))) lambda!115991))))

(declare-fun b!3170398 () Bool)

(declare-fun allKeysSameHashInMap!242 (ListLongMap!735 Hashable!4104) Bool)

(assert (=> b!3170398 (= e!1974587 (allKeysSameHashInMap!242 (map!7935 (v!35214 (underlying!8606 (cache!4240 thiss!28524)))) (hashF!6136 (cache!4240 thiss!28524))))))

(assert (= (and d!869179 res!1288820) b!3170397))

(assert (= (and b!3170397 res!1288821) b!3170398))

(declare-fun m!3429859 () Bool)

(assert (=> d!869179 m!3429859))

(declare-fun m!3429861 () Bool)

(assert (=> b!3170397 m!3429861))

(declare-fun m!3429863 () Bool)

(assert (=> b!3170397 m!3429863))

(assert (=> b!3170398 m!3429861))

(assert (=> b!3170398 m!3429861))

(declare-fun m!3429865 () Bool)

(assert (=> b!3170398 m!3429865))

(assert (=> b!3170379 d!869179))

(declare-fun b!3170419 () Bool)

(declare-fun e!1974601 () Regex!9767)

(assert (=> b!3170419 (= e!1974601 EmptyLang!9767)))

(declare-fun b!3170420 () Bool)

(declare-fun e!1974600 () Regex!9767)

(declare-fun call!230326 () Regex!9767)

(assert (=> b!3170420 (= e!1974600 (Union!9767 (Concat!15088 call!230326 (regTwo!20046 r!4733)) EmptyLang!9767))))

(declare-fun call!230323 () Regex!9767)

(declare-fun c!533159 () Bool)

(declare-fun c!533162 () Bool)

(declare-fun bm!230318 () Bool)

(assert (=> bm!230318 (= call!230323 (derivativeStep!2908 (ite c!533162 (regTwo!20047 r!4733) (ite c!533159 (reg!10096 r!4733) (regOne!20046 r!4733))) c!6996))))

(declare-fun call!230324 () Regex!9767)

(declare-fun b!3170421 () Bool)

(assert (=> b!3170421 (= e!1974600 (Union!9767 (Concat!15088 call!230326 (regTwo!20046 r!4733)) call!230324))))

(declare-fun b!3170422 () Bool)

(assert (=> b!3170422 (= c!533162 ((_ is Union!9767) r!4733))))

(declare-fun e!1974602 () Regex!9767)

(declare-fun e!1974599 () Regex!9767)

(assert (=> b!3170422 (= e!1974602 e!1974599)))

(declare-fun b!3170423 () Bool)

(assert (=> b!3170423 (= e!1974602 (ite (= c!6996 (c!533147 r!4733)) EmptyExpr!9767 EmptyLang!9767))))

(declare-fun bm!230319 () Bool)

(declare-fun call!230325 () Regex!9767)

(assert (=> bm!230319 (= call!230325 call!230323)))

(declare-fun b!3170424 () Bool)

(assert (=> b!3170424 (= e!1974601 e!1974602)))

(declare-fun c!533158 () Bool)

(assert (=> b!3170424 (= c!533158 ((_ is ElementMatch!9767) r!4733))))

(declare-fun b!3170425 () Bool)

(declare-fun e!1974598 () Regex!9767)

(assert (=> b!3170425 (= e!1974598 (Concat!15088 call!230325 r!4733))))

(declare-fun bm!230320 () Bool)

(assert (=> bm!230320 (= call!230326 call!230325)))

(declare-fun b!3170426 () Bool)

(declare-fun c!533161 () Bool)

(declare-fun nullable!3356 (Regex!9767) Bool)

(assert (=> b!3170426 (= c!533161 (nullable!3356 (regOne!20046 r!4733)))))

(assert (=> b!3170426 (= e!1974598 e!1974600)))

(declare-fun b!3170427 () Bool)

(assert (=> b!3170427 (= e!1974599 (Union!9767 call!230324 call!230323))))

(declare-fun d!869181 () Bool)

(declare-fun lt!1066079 () Regex!9767)

(assert (=> d!869181 (validRegex!4481 lt!1066079)))

(assert (=> d!869181 (= lt!1066079 e!1974601)))

(declare-fun c!533160 () Bool)

(assert (=> d!869181 (= c!533160 (or ((_ is EmptyExpr!9767) r!4733) ((_ is EmptyLang!9767) r!4733)))))

(assert (=> d!869181 (validRegex!4481 r!4733)))

(assert (=> d!869181 (= (derivativeStep!2908 r!4733 c!6996) lt!1066079)))

(declare-fun b!3170428 () Bool)

(assert (=> b!3170428 (= e!1974599 e!1974598)))

(assert (=> b!3170428 (= c!533159 ((_ is Star!9767) r!4733))))

(declare-fun bm!230321 () Bool)

(assert (=> bm!230321 (= call!230324 (derivativeStep!2908 (ite c!533162 (regOne!20047 r!4733) (regTwo!20046 r!4733)) c!6996))))

(assert (= (and d!869181 c!533160) b!3170419))

(assert (= (and d!869181 (not c!533160)) b!3170424))

(assert (= (and b!3170424 c!533158) b!3170423))

(assert (= (and b!3170424 (not c!533158)) b!3170422))

(assert (= (and b!3170422 c!533162) b!3170427))

(assert (= (and b!3170422 (not c!533162)) b!3170428))

(assert (= (and b!3170428 c!533159) b!3170425))

(assert (= (and b!3170428 (not c!533159)) b!3170426))

(assert (= (and b!3170426 c!533161) b!3170421))

(assert (= (and b!3170426 (not c!533161)) b!3170420))

(assert (= (or b!3170421 b!3170420) bm!230320))

(assert (= (or b!3170425 bm!230320) bm!230319))

(assert (= (or b!3170427 bm!230319) bm!230318))

(assert (= (or b!3170427 b!3170421) bm!230321))

(declare-fun m!3429867 () Bool)

(assert (=> bm!230318 m!3429867))

(declare-fun m!3429869 () Bool)

(assert (=> b!3170426 m!3429869))

(declare-fun m!3429871 () Bool)

(assert (=> d!869181 m!3429871))

(assert (=> d!869181 m!3429851))

(declare-fun m!3429873 () Bool)

(assert (=> bm!230321 m!3429873))

(assert (=> b!3170383 d!869181))

(declare-fun d!869183 () Bool)

(declare-fun res!1288828 () Bool)

(declare-fun e!1974607 () Bool)

(assert (=> d!869183 (=> (not res!1288828) (not e!1974607))))

(assert (=> d!869183 (= res!1288828 (valid!3266 (cache!4240 thiss!28524)))))

(assert (=> d!869183 (= (validCacheMap!76 (cache!4240 thiss!28524)) e!1974607)))

(declare-fun b!3170435 () Bool)

(declare-fun res!1288829 () Bool)

(assert (=> b!3170435 (=> (not res!1288829) (not e!1974607))))

(declare-fun invariantList!489 (List!35607) Bool)

(declare-datatypes ((ListMap!1329 0))(
  ( (ListMap!1330 (toList!2077 List!35607)) )
))
(declare-fun map!7936 (MutableMap!4094) ListMap!1329)

(assert (=> b!3170435 (= res!1288829 (invariantList!489 (toList!2077 (map!7936 (cache!4240 thiss!28524)))))))

(declare-fun b!3170436 () Bool)

(declare-fun lambda!115994 () Int)

(declare-fun forall!7164 (List!35607 Int) Bool)

(assert (=> b!3170436 (= e!1974607 (forall!7164 (toList!2077 (map!7936 (cache!4240 thiss!28524))) lambda!115994))))

(assert (= (and d!869183 res!1288828) b!3170435))

(assert (= (and b!3170435 res!1288829) b!3170436))

(assert (=> d!869183 m!3429849))

(declare-fun m!3429876 () Bool)

(assert (=> b!3170435 m!3429876))

(declare-fun m!3429878 () Bool)

(assert (=> b!3170435 m!3429878))

(assert (=> b!3170436 m!3429876))

(declare-fun m!3429880 () Bool)

(assert (=> b!3170436 m!3429880))

(assert (=> start!296958 d!869183))

(declare-fun d!869185 () Bool)

(declare-fun res!1288832 () Bool)

(declare-fun e!1974610 () Bool)

(assert (=> d!869185 (=> (not res!1288832) (not e!1974610))))

(assert (=> d!869185 (= res!1288832 ((_ is HashMap!4094) (cache!4240 thiss!28524)))))

(assert (=> d!869185 (= (inv!48181 thiss!28524) e!1974610)))

(declare-fun b!3170439 () Bool)

(assert (=> b!3170439 (= e!1974610 (validCacheMap!76 (cache!4240 thiss!28524)))))

(assert (= (and d!869185 res!1288832) b!3170439))

(assert (=> b!3170439 m!3429843))

(assert (=> start!296958 d!869185))

(declare-fun b!3170458 () Bool)

(declare-fun e!1974630 () Bool)

(declare-fun e!1974625 () Bool)

(assert (=> b!3170458 (= e!1974630 e!1974625)))

(declare-fun c!533167 () Bool)

(assert (=> b!3170458 (= c!533167 ((_ is Union!9767) r!4733))))

(declare-fun b!3170459 () Bool)

(declare-fun e!1974626 () Bool)

(declare-fun call!230334 () Bool)

(assert (=> b!3170459 (= e!1974626 call!230334)))

(declare-fun b!3170460 () Bool)

(declare-fun e!1974631 () Bool)

(declare-fun call!230333 () Bool)

(assert (=> b!3170460 (= e!1974631 call!230333)))

(declare-fun b!3170461 () Bool)

(declare-fun res!1288844 () Bool)

(assert (=> b!3170461 (=> (not res!1288844) (not e!1974626))))

(declare-fun call!230335 () Bool)

(assert (=> b!3170461 (= res!1288844 call!230335)))

(assert (=> b!3170461 (= e!1974625 e!1974626)))

(declare-fun b!3170462 () Bool)

(declare-fun e!1974627 () Bool)

(declare-fun e!1974628 () Bool)

(assert (=> b!3170462 (= e!1974627 e!1974628)))

(declare-fun res!1288846 () Bool)

(assert (=> b!3170462 (=> (not res!1288846) (not e!1974628))))

(assert (=> b!3170462 (= res!1288846 call!230334)))

(declare-fun b!3170463 () Bool)

(declare-fun e!1974629 () Bool)

(assert (=> b!3170463 (= e!1974629 e!1974630)))

(declare-fun c!533168 () Bool)

(assert (=> b!3170463 (= c!533168 ((_ is Star!9767) r!4733))))

(declare-fun bm!230329 () Bool)

(assert (=> bm!230329 (= call!230334 call!230333)))

(declare-fun b!3170464 () Bool)

(assert (=> b!3170464 (= e!1974628 call!230335)))

(declare-fun bm!230330 () Bool)

(assert (=> bm!230330 (= call!230333 (validRegex!4481 (ite c!533168 (reg!10096 r!4733) (ite c!533167 (regTwo!20047 r!4733) (regOne!20046 r!4733)))))))

(declare-fun b!3170465 () Bool)

(assert (=> b!3170465 (= e!1974630 e!1974631)))

(declare-fun res!1288843 () Bool)

(assert (=> b!3170465 (= res!1288843 (not (nullable!3356 (reg!10096 r!4733))))))

(assert (=> b!3170465 (=> (not res!1288843) (not e!1974631))))

(declare-fun b!3170466 () Bool)

(declare-fun res!1288845 () Bool)

(assert (=> b!3170466 (=> res!1288845 e!1974627)))

(assert (=> b!3170466 (= res!1288845 (not ((_ is Concat!15088) r!4733)))))

(assert (=> b!3170466 (= e!1974625 e!1974627)))

(declare-fun d!869187 () Bool)

(declare-fun res!1288847 () Bool)

(assert (=> d!869187 (=> res!1288847 e!1974629)))

(assert (=> d!869187 (= res!1288847 ((_ is ElementMatch!9767) r!4733))))

(assert (=> d!869187 (= (validRegex!4481 r!4733) e!1974629)))

(declare-fun bm!230328 () Bool)

(assert (=> bm!230328 (= call!230335 (validRegex!4481 (ite c!533167 (regOne!20047 r!4733) (regTwo!20046 r!4733))))))

(assert (= (and d!869187 (not res!1288847)) b!3170463))

(assert (= (and b!3170463 c!533168) b!3170465))

(assert (= (and b!3170463 (not c!533168)) b!3170458))

(assert (= (and b!3170465 res!1288843) b!3170460))

(assert (= (and b!3170458 c!533167) b!3170461))

(assert (= (and b!3170458 (not c!533167)) b!3170466))

(assert (= (and b!3170461 res!1288844) b!3170459))

(assert (= (and b!3170466 (not res!1288845)) b!3170462))

(assert (= (and b!3170462 res!1288846) b!3170464))

(assert (= (or b!3170461 b!3170464) bm!230328))

(assert (= (or b!3170459 b!3170462) bm!230329))

(assert (= (or b!3170460 bm!230329) bm!230330))

(declare-fun m!3429882 () Bool)

(assert (=> bm!230330 m!3429882))

(declare-fun m!3429884 () Bool)

(assert (=> b!3170465 m!3429884))

(declare-fun m!3429886 () Bool)

(assert (=> bm!230328 m!3429886))

(assert (=> b!3170378 d!869187))

(declare-fun d!869189 () Bool)

(assert (=> d!869189 (= (array_inv!4780 (_keys!4488 (v!35213 (underlying!8605 (v!35214 (underlying!8606 (cache!4240 thiss!28524))))))) (bvsge (size!26753 (_keys!4488 (v!35213 (underlying!8605 (v!35214 (underlying!8606 (cache!4240 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3170375 d!869189))

(declare-fun d!869191 () Bool)

(assert (=> d!869191 (= (array_inv!4781 (_values!4469 (v!35213 (underlying!8605 (v!35214 (underlying!8606 (cache!4240 thiss!28524))))))) (bvsge (size!26752 (_values!4469 (v!35213 (underlying!8605 (v!35214 (underlying!8606 (cache!4240 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3170375 d!869191))

(declare-fun b!3170473 () Bool)

(declare-fun tp!1000524 () Bool)

(declare-fun tp!1000525 () Bool)

(declare-fun tp!1000522 () Bool)

(declare-fun e!1974636 () Bool)

(assert (=> b!3170473 (= e!1974636 (and tp!1000524 tp_is_empty!17097 tp!1000522 tp!1000525))))

(declare-fun mapIsEmpty!18989 () Bool)

(declare-fun mapRes!18989 () Bool)

(assert (=> mapIsEmpty!18989 mapRes!18989))

(declare-fun mapNonEmpty!18989 () Bool)

(declare-fun tp!1000523 () Bool)

(assert (=> mapNonEmpty!18989 (= mapRes!18989 (and tp!1000523 e!1974636))))

(declare-fun mapKey!18989 () (_ BitVec 32))

(declare-fun mapRest!18989 () (Array (_ BitVec 32) List!35607))

(declare-fun mapValue!18989 () List!35607)

(assert (=> mapNonEmpty!18989 (= mapRest!18986 (store mapRest!18989 mapKey!18989 mapValue!18989))))

(declare-fun condMapEmpty!18989 () Bool)

(declare-fun mapDefault!18989 () List!35607)

(assert (=> mapNonEmpty!18986 (= condMapEmpty!18989 (= mapRest!18986 ((as const (Array (_ BitVec 32) List!35607)) mapDefault!18989)))))

(declare-fun e!1974637 () Bool)

(assert (=> mapNonEmpty!18986 (= tp!1000494 (and e!1974637 mapRes!18989))))

(declare-fun tp!1000526 () Bool)

(declare-fun tp!1000520 () Bool)

(declare-fun tp!1000521 () Bool)

(declare-fun b!3170474 () Bool)

(assert (=> b!3170474 (= e!1974637 (and tp!1000526 tp_is_empty!17097 tp!1000520 tp!1000521))))

(assert (= (and mapNonEmpty!18986 condMapEmpty!18989) mapIsEmpty!18989))

(assert (= (and mapNonEmpty!18986 (not condMapEmpty!18989)) mapNonEmpty!18989))

(assert (= (and mapNonEmpty!18989 ((_ is Cons!35483) mapValue!18989)) b!3170473))

(assert (= (and mapNonEmpty!18986 ((_ is Cons!35483) mapDefault!18989)) b!3170474))

(declare-fun m!3429888 () Bool)

(assert (=> mapNonEmpty!18989 m!3429888))

(declare-fun e!1974640 () Bool)

(declare-fun tp!1000533 () Bool)

(declare-fun tp!1000535 () Bool)

(declare-fun b!3170479 () Bool)

(declare-fun tp!1000534 () Bool)

(assert (=> b!3170479 (= e!1974640 (and tp!1000533 tp_is_empty!17097 tp!1000534 tp!1000535))))

(assert (=> mapNonEmpty!18986 (= tp!1000504 e!1974640)))

(assert (= (and mapNonEmpty!18986 ((_ is Cons!35483) mapValue!18986)) b!3170479))

(declare-fun b!3170491 () Bool)

(declare-fun e!1974643 () Bool)

(declare-fun tp!1000550 () Bool)

(declare-fun tp!1000548 () Bool)

(assert (=> b!3170491 (= e!1974643 (and tp!1000550 tp!1000548))))

(declare-fun b!3170492 () Bool)

(declare-fun tp!1000549 () Bool)

(assert (=> b!3170492 (= e!1974643 tp!1000549)))

(assert (=> b!3170374 (= tp!1000502 e!1974643)))

(declare-fun b!3170493 () Bool)

(declare-fun tp!1000547 () Bool)

(declare-fun tp!1000546 () Bool)

(assert (=> b!3170493 (= e!1974643 (and tp!1000547 tp!1000546))))

(declare-fun b!3170490 () Bool)

(assert (=> b!3170490 (= e!1974643 tp_is_empty!17097)))

(assert (= (and b!3170374 ((_ is ElementMatch!9767) (reg!10096 res!14113))) b!3170490))

(assert (= (and b!3170374 ((_ is Concat!15088) (reg!10096 res!14113))) b!3170491))

(assert (= (and b!3170374 ((_ is Star!9767) (reg!10096 res!14113))) b!3170492))

(assert (= (and b!3170374 ((_ is Union!9767) (reg!10096 res!14113))) b!3170493))

(declare-fun b!3170495 () Bool)

(declare-fun e!1974644 () Bool)

(declare-fun tp!1000555 () Bool)

(declare-fun tp!1000553 () Bool)

(assert (=> b!3170495 (= e!1974644 (and tp!1000555 tp!1000553))))

(declare-fun b!3170496 () Bool)

(declare-fun tp!1000554 () Bool)

(assert (=> b!3170496 (= e!1974644 tp!1000554)))

(assert (=> b!3170386 (= tp!1000498 e!1974644)))

(declare-fun b!3170497 () Bool)

(declare-fun tp!1000552 () Bool)

(declare-fun tp!1000551 () Bool)

(assert (=> b!3170497 (= e!1974644 (and tp!1000552 tp!1000551))))

(declare-fun b!3170494 () Bool)

(assert (=> b!3170494 (= e!1974644 tp_is_empty!17097)))

(assert (= (and b!3170386 ((_ is ElementMatch!9767) (reg!10096 r!4733))) b!3170494))

(assert (= (and b!3170386 ((_ is Concat!15088) (reg!10096 r!4733))) b!3170495))

(assert (= (and b!3170386 ((_ is Star!9767) (reg!10096 r!4733))) b!3170496))

(assert (= (and b!3170386 ((_ is Union!9767) (reg!10096 r!4733))) b!3170497))

(declare-fun b!3170499 () Bool)

(declare-fun e!1974645 () Bool)

(declare-fun tp!1000560 () Bool)

(declare-fun tp!1000558 () Bool)

(assert (=> b!3170499 (= e!1974645 (and tp!1000560 tp!1000558))))

(declare-fun b!3170500 () Bool)

(declare-fun tp!1000559 () Bool)

(assert (=> b!3170500 (= e!1974645 tp!1000559)))

(assert (=> b!3170392 (= tp!1000497 e!1974645)))

(declare-fun b!3170501 () Bool)

(declare-fun tp!1000557 () Bool)

(declare-fun tp!1000556 () Bool)

(assert (=> b!3170501 (= e!1974645 (and tp!1000557 tp!1000556))))

(declare-fun b!3170498 () Bool)

(assert (=> b!3170498 (= e!1974645 tp_is_empty!17097)))

(assert (= (and b!3170392 ((_ is ElementMatch!9767) (regOne!20046 res!14113))) b!3170498))

(assert (= (and b!3170392 ((_ is Concat!15088) (regOne!20046 res!14113))) b!3170499))

(assert (= (and b!3170392 ((_ is Star!9767) (regOne!20046 res!14113))) b!3170500))

(assert (= (and b!3170392 ((_ is Union!9767) (regOne!20046 res!14113))) b!3170501))

(declare-fun b!3170503 () Bool)

(declare-fun e!1974646 () Bool)

(declare-fun tp!1000565 () Bool)

(declare-fun tp!1000563 () Bool)

(assert (=> b!3170503 (= e!1974646 (and tp!1000565 tp!1000563))))

(declare-fun b!3170504 () Bool)

(declare-fun tp!1000564 () Bool)

(assert (=> b!3170504 (= e!1974646 tp!1000564)))

(assert (=> b!3170392 (= tp!1000505 e!1974646)))

(declare-fun b!3170505 () Bool)

(declare-fun tp!1000562 () Bool)

(declare-fun tp!1000561 () Bool)

(assert (=> b!3170505 (= e!1974646 (and tp!1000562 tp!1000561))))

(declare-fun b!3170502 () Bool)

(assert (=> b!3170502 (= e!1974646 tp_is_empty!17097)))

(assert (= (and b!3170392 ((_ is ElementMatch!9767) (regTwo!20046 res!14113))) b!3170502))

(assert (= (and b!3170392 ((_ is Concat!15088) (regTwo!20046 res!14113))) b!3170503))

(assert (= (and b!3170392 ((_ is Star!9767) (regTwo!20046 res!14113))) b!3170504))

(assert (= (and b!3170392 ((_ is Union!9767) (regTwo!20046 res!14113))) b!3170505))

(declare-fun b!3170507 () Bool)

(declare-fun e!1974647 () Bool)

(declare-fun tp!1000570 () Bool)

(declare-fun tp!1000568 () Bool)

(assert (=> b!3170507 (= e!1974647 (and tp!1000570 tp!1000568))))

(declare-fun b!3170508 () Bool)

(declare-fun tp!1000569 () Bool)

(assert (=> b!3170508 (= e!1974647 tp!1000569)))

(assert (=> b!3170376 (= tp!1000490 e!1974647)))

(declare-fun b!3170509 () Bool)

(declare-fun tp!1000567 () Bool)

(declare-fun tp!1000566 () Bool)

(assert (=> b!3170509 (= e!1974647 (and tp!1000567 tp!1000566))))

(declare-fun b!3170506 () Bool)

(assert (=> b!3170506 (= e!1974647 tp_is_empty!17097)))

(assert (= (and b!3170376 ((_ is ElementMatch!9767) (regOne!20046 r!4733))) b!3170506))

(assert (= (and b!3170376 ((_ is Concat!15088) (regOne!20046 r!4733))) b!3170507))

(assert (= (and b!3170376 ((_ is Star!9767) (regOne!20046 r!4733))) b!3170508))

(assert (= (and b!3170376 ((_ is Union!9767) (regOne!20046 r!4733))) b!3170509))

(declare-fun b!3170511 () Bool)

(declare-fun e!1974648 () Bool)

(declare-fun tp!1000575 () Bool)

(declare-fun tp!1000573 () Bool)

(assert (=> b!3170511 (= e!1974648 (and tp!1000575 tp!1000573))))

(declare-fun b!3170512 () Bool)

(declare-fun tp!1000574 () Bool)

(assert (=> b!3170512 (= e!1974648 tp!1000574)))

(assert (=> b!3170376 (= tp!1000499 e!1974648)))

(declare-fun b!3170513 () Bool)

(declare-fun tp!1000572 () Bool)

(declare-fun tp!1000571 () Bool)

(assert (=> b!3170513 (= e!1974648 (and tp!1000572 tp!1000571))))

(declare-fun b!3170510 () Bool)

(assert (=> b!3170510 (= e!1974648 tp_is_empty!17097)))

(assert (= (and b!3170376 ((_ is ElementMatch!9767) (regTwo!20046 r!4733))) b!3170510))

(assert (= (and b!3170376 ((_ is Concat!15088) (regTwo!20046 r!4733))) b!3170511))

(assert (= (and b!3170376 ((_ is Star!9767) (regTwo!20046 r!4733))) b!3170512))

(assert (= (and b!3170376 ((_ is Union!9767) (regTwo!20046 r!4733))) b!3170513))

(declare-fun b!3170515 () Bool)

(declare-fun e!1974649 () Bool)

(declare-fun tp!1000580 () Bool)

(declare-fun tp!1000578 () Bool)

(assert (=> b!3170515 (= e!1974649 (and tp!1000580 tp!1000578))))

(declare-fun b!3170516 () Bool)

(declare-fun tp!1000579 () Bool)

(assert (=> b!3170516 (= e!1974649 tp!1000579)))

(assert (=> b!3170390 (= tp!1000492 e!1974649)))

(declare-fun b!3170517 () Bool)

(declare-fun tp!1000577 () Bool)

(declare-fun tp!1000576 () Bool)

(assert (=> b!3170517 (= e!1974649 (and tp!1000577 tp!1000576))))

(declare-fun b!3170514 () Bool)

(assert (=> b!3170514 (= e!1974649 tp_is_empty!17097)))

(assert (= (and b!3170390 ((_ is ElementMatch!9767) (regOne!20047 r!4733))) b!3170514))

(assert (= (and b!3170390 ((_ is Concat!15088) (regOne!20047 r!4733))) b!3170515))

(assert (= (and b!3170390 ((_ is Star!9767) (regOne!20047 r!4733))) b!3170516))

(assert (= (and b!3170390 ((_ is Union!9767) (regOne!20047 r!4733))) b!3170517))

(declare-fun b!3170519 () Bool)

(declare-fun e!1974650 () Bool)

(declare-fun tp!1000585 () Bool)

(declare-fun tp!1000583 () Bool)

(assert (=> b!3170519 (= e!1974650 (and tp!1000585 tp!1000583))))

(declare-fun b!3170520 () Bool)

(declare-fun tp!1000584 () Bool)

(assert (=> b!3170520 (= e!1974650 tp!1000584)))

(assert (=> b!3170390 (= tp!1000495 e!1974650)))

(declare-fun b!3170521 () Bool)

(declare-fun tp!1000582 () Bool)

(declare-fun tp!1000581 () Bool)

(assert (=> b!3170521 (= e!1974650 (and tp!1000582 tp!1000581))))

(declare-fun b!3170518 () Bool)

(assert (=> b!3170518 (= e!1974650 tp_is_empty!17097)))

(assert (= (and b!3170390 ((_ is ElementMatch!9767) (regTwo!20047 r!4733))) b!3170518))

(assert (= (and b!3170390 ((_ is Concat!15088) (regTwo!20047 r!4733))) b!3170519))

(assert (= (and b!3170390 ((_ is Star!9767) (regTwo!20047 r!4733))) b!3170520))

(assert (= (and b!3170390 ((_ is Union!9767) (regTwo!20047 r!4733))) b!3170521))

(declare-fun tp!1000588 () Bool)

(declare-fun tp!1000586 () Bool)

(declare-fun e!1974651 () Bool)

(declare-fun b!3170522 () Bool)

(declare-fun tp!1000587 () Bool)

(assert (=> b!3170522 (= e!1974651 (and tp!1000586 tp_is_empty!17097 tp!1000587 tp!1000588))))

(assert (=> b!3170375 (= tp!1000493 e!1974651)))

(assert (= (and b!3170375 ((_ is Cons!35483) (zeroValue!4447 (v!35213 (underlying!8605 (v!35214 (underlying!8606 (cache!4240 thiss!28524)))))))) b!3170522))

(declare-fun e!1974652 () Bool)

(declare-fun tp!1000589 () Bool)

(declare-fun tp!1000590 () Bool)

(declare-fun tp!1000591 () Bool)

(declare-fun b!3170523 () Bool)

(assert (=> b!3170523 (= e!1974652 (and tp!1000589 tp_is_empty!17097 tp!1000590 tp!1000591))))

(assert (=> b!3170375 (= tp!1000503 e!1974652)))

(assert (= (and b!3170375 ((_ is Cons!35483) (minValue!4447 (v!35213 (underlying!8605 (v!35214 (underlying!8606 (cache!4240 thiss!28524)))))))) b!3170523))

(declare-fun tp!1000593 () Bool)

(declare-fun tp!1000594 () Bool)

(declare-fun tp!1000592 () Bool)

(declare-fun b!3170524 () Bool)

(declare-fun e!1974653 () Bool)

(assert (=> b!3170524 (= e!1974653 (and tp!1000592 tp_is_empty!17097 tp!1000593 tp!1000594))))

(assert (=> b!3170380 (= tp!1000496 e!1974653)))

(assert (= (and b!3170380 ((_ is Cons!35483) mapDefault!18986)) b!3170524))

(declare-fun b!3170526 () Bool)

(declare-fun e!1974654 () Bool)

(declare-fun tp!1000599 () Bool)

(declare-fun tp!1000597 () Bool)

(assert (=> b!3170526 (= e!1974654 (and tp!1000599 tp!1000597))))

(declare-fun b!3170527 () Bool)

(declare-fun tp!1000598 () Bool)

(assert (=> b!3170527 (= e!1974654 tp!1000598)))

(assert (=> b!3170381 (= tp!1000491 e!1974654)))

(declare-fun b!3170528 () Bool)

(declare-fun tp!1000596 () Bool)

(declare-fun tp!1000595 () Bool)

(assert (=> b!3170528 (= e!1974654 (and tp!1000596 tp!1000595))))

(declare-fun b!3170525 () Bool)

(assert (=> b!3170525 (= e!1974654 tp_is_empty!17097)))

(assert (= (and b!3170381 ((_ is ElementMatch!9767) (regOne!20047 res!14113))) b!3170525))

(assert (= (and b!3170381 ((_ is Concat!15088) (regOne!20047 res!14113))) b!3170526))

(assert (= (and b!3170381 ((_ is Star!9767) (regOne!20047 res!14113))) b!3170527))

(assert (= (and b!3170381 ((_ is Union!9767) (regOne!20047 res!14113))) b!3170528))

(declare-fun b!3170530 () Bool)

(declare-fun e!1974655 () Bool)

(declare-fun tp!1000604 () Bool)

(declare-fun tp!1000602 () Bool)

(assert (=> b!3170530 (= e!1974655 (and tp!1000604 tp!1000602))))

(declare-fun b!3170531 () Bool)

(declare-fun tp!1000603 () Bool)

(assert (=> b!3170531 (= e!1974655 tp!1000603)))

(assert (=> b!3170381 (= tp!1000500 e!1974655)))

(declare-fun b!3170532 () Bool)

(declare-fun tp!1000601 () Bool)

(declare-fun tp!1000600 () Bool)

(assert (=> b!3170532 (= e!1974655 (and tp!1000601 tp!1000600))))

(declare-fun b!3170529 () Bool)

(assert (=> b!3170529 (= e!1974655 tp_is_empty!17097)))

(assert (= (and b!3170381 ((_ is ElementMatch!9767) (regTwo!20047 res!14113))) b!3170529))

(assert (= (and b!3170381 ((_ is Concat!15088) (regTwo!20047 res!14113))) b!3170530))

(assert (= (and b!3170381 ((_ is Star!9767) (regTwo!20047 res!14113))) b!3170531))

(assert (= (and b!3170381 ((_ is Union!9767) (regTwo!20047 res!14113))) b!3170532))

(check-sat (not d!869183) (not b!3170465) (not b!3170505) (not b!3170493) (not d!869179) (not b!3170508) (not b!3170532) tp_is_empty!17097 (not b!3170513) (not b!3170507) (not b!3170515) (not b!3170519) (not b!3170397) (not b!3170524) (not mapNonEmpty!18989) (not b!3170479) (not bm!230321) (not b!3170398) b_and!209513 (not bm!230330) (not b!3170530) (not b!3170512) (not b!3170439) (not b!3170517) (not bm!230328) (not b!3170526) (not b!3170474) (not b!3170509) (not b!3170504) (not b!3170520) (not b!3170491) (not b!3170503) b_and!209511 (not b!3170436) (not b!3170435) (not b!3170499) (not b!3170495) (not b!3170492) (not b!3170522) (not b!3170521) (not b!3170497) (not b!3170527) (not b_next!83937) (not b!3170500) (not b!3170528) (not b!3170516) (not b!3170426) (not b_next!83939) (not b!3170523) (not bm!230318) (not b!3170473) (not b!3170496) (not b!3170531) (not d!869181) (not b!3170511) (not b!3170501))
(check-sat b_and!209513 b_and!209511 (not b_next!83937) (not b_next!83939))
