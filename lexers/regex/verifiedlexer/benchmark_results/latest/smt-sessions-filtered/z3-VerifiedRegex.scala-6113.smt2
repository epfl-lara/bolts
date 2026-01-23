; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297038 () Bool)

(assert start!297038)

(declare-fun b!3171470 () Bool)

(declare-fun b_free!83273 () Bool)

(declare-fun b_next!83977 () Bool)

(assert (=> b!3171470 (= b_free!83273 (not b_next!83977))))

(declare-fun tp!1001322 () Bool)

(declare-fun b_and!209551 () Bool)

(assert (=> b!3171470 (= tp!1001322 b_and!209551)))

(declare-fun b!3171473 () Bool)

(declare-fun b_free!83275 () Bool)

(declare-fun b_next!83979 () Bool)

(assert (=> b!3171473 (= b_free!83275 (not b_next!83979))))

(declare-fun tp!1001318 () Bool)

(declare-fun b_and!209553 () Bool)

(assert (=> b!3171473 (= tp!1001318 b_and!209553)))

(declare-fun b!3171468 () Bool)

(declare-fun e!1975221 () Bool)

(declare-fun e!1975217 () Bool)

(assert (=> b!3171468 (= e!1975221 e!1975217)))

(declare-fun b!3171469 () Bool)

(declare-fun e!1975219 () Bool)

(declare-fun e!1975215 () Bool)

(assert (=> b!3171469 (= e!1975219 e!1975215)))

(declare-fun e!1975216 () Bool)

(assert (=> b!3171470 (= e!1975215 (and e!1975216 tp!1001322))))

(declare-fun b!3171471 () Bool)

(declare-fun e!1975220 () Bool)

(declare-fun tp!1001325 () Bool)

(assert (=> b!3171471 (= e!1975220 tp!1001325)))

(declare-fun b!3171472 () Bool)

(declare-fun e!1975224 () Bool)

(declare-datatypes ((C!19740 0))(
  ( (C!19741 (val!11906 Int)) )
))
(declare-datatypes ((Regex!9777 0))(
  ( (ElementMatch!9777 (c!533247 C!19740)) (Concat!15098 (regOne!20066 Regex!9777) (regTwo!20066 Regex!9777)) (EmptyExpr!9777) (Star!9777 (reg!10106 Regex!9777)) (EmptyLang!9777) (Union!9777 (regOne!20067 Regex!9777) (regTwo!20067 Regex!9777)) )
))
(declare-datatypes ((tuple2!34760 0))(
  ( (tuple2!34761 (_1!20512 Regex!9777) (_2!20512 C!19740)) )
))
(declare-datatypes ((tuple2!34762 0))(
  ( (tuple2!34763 (_1!20513 tuple2!34760) (_2!20513 Regex!9777)) )
))
(declare-datatypes ((List!35620 0))(
  ( (Nil!35496) (Cons!35496 (h!40916 tuple2!34762) (t!234703 List!35620)) )
))
(declare-datatypes ((array!15026 0))(
  ( (array!15027 (arr!6686 (Array (_ BitVec 32) (_ BitVec 64))) (size!26772 (_ BitVec 32))) )
))
(declare-datatypes ((array!15028 0))(
  ( (array!15029 (arr!6687 (Array (_ BitVec 32) List!35620)) (size!26773 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8396 0))(
  ( (LongMapFixedSize!8397 (defaultEntry!4583 Int) (mask!10880 (_ BitVec 32)) (extraKeys!4447 (_ BitVec 32)) (zeroValue!4457 List!35620) (minValue!4457 List!35620) (_size!8439 (_ BitVec 32)) (_keys!4498 array!15026) (_values!4479 array!15028) (_vacant!4259 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16601 0))(
  ( (Cell!16602 (v!35235 LongMapFixedSize!8396)) )
))
(declare-datatypes ((MutLongMap!4198 0))(
  ( (LongMap!4198 (underlying!8625 Cell!16601)) (MutLongMapExt!4197 (__x!22700 Int)) )
))
(declare-fun lt!1066322 () MutLongMap!4198)

(get-info :version)

(assert (=> b!3171472 (= e!1975216 (and e!1975224 ((_ is LongMap!4198) lt!1066322)))))

(declare-datatypes ((Cell!16603 0))(
  ( (Cell!16604 (v!35236 MutLongMap!4198)) )
))
(declare-datatypes ((Hashable!4114 0))(
  ( (HashableExt!4113 (__x!22701 Int)) )
))
(declare-datatypes ((MutableMap!4104 0))(
  ( (MutableMapExt!4103 (__x!22702 Int)) (HashMap!4104 (underlying!8626 Cell!16603) (hashF!6146 Hashable!4114) (_size!8440 (_ BitVec 32)) (defaultValue!4275 Int)) )
))
(declare-datatypes ((Cache!478 0))(
  ( (Cache!479 (cache!4250 MutableMap!4104)) )
))
(declare-fun thiss!28499 () Cache!478)

(assert (=> b!3171472 (= lt!1066322 (v!35236 (underlying!8626 (cache!4250 thiss!28499))))))

(declare-fun tp!1001321 () Bool)

(declare-fun tp!1001326 () Bool)

(declare-fun e!1975223 () Bool)

(declare-fun array_inv!4794 (array!15026) Bool)

(declare-fun array_inv!4795 (array!15028) Bool)

(assert (=> b!3171473 (= e!1975217 (and tp!1001318 tp!1001326 tp!1001321 (array_inv!4794 (_keys!4498 (v!35235 (underlying!8625 (v!35236 (underlying!8626 (cache!4250 thiss!28499))))))) (array_inv!4795 (_values!4479 (v!35235 (underlying!8625 (v!35236 (underlying!8626 (cache!4250 thiss!28499))))))) e!1975223))))

(declare-fun b!3171474 () Bool)

(declare-fun tp!1001324 () Bool)

(declare-fun mapRes!19028 () Bool)

(assert (=> b!3171474 (= e!1975223 (and tp!1001324 mapRes!19028))))

(declare-fun condMapEmpty!19028 () Bool)

(declare-fun mapDefault!19028 () List!35620)

(assert (=> b!3171474 (= condMapEmpty!19028 (= (arr!6687 (_values!4479 (v!35235 (underlying!8625 (v!35236 (underlying!8626 (cache!4250 thiss!28499))))))) ((as const (Array (_ BitVec 32) List!35620)) mapDefault!19028)))))

(declare-fun mapNonEmpty!19028 () Bool)

(declare-fun tp!1001317 () Bool)

(declare-fun tp!1001315 () Bool)

(assert (=> mapNonEmpty!19028 (= mapRes!19028 (and tp!1001317 tp!1001315))))

(declare-fun mapValue!19028 () List!35620)

(declare-fun mapRest!19028 () (Array (_ BitVec 32) List!35620))

(declare-fun mapKey!19028 () (_ BitVec 32))

(assert (=> mapNonEmpty!19028 (= (arr!6687 (_values!4479 (v!35235 (underlying!8625 (v!35236 (underlying!8626 (cache!4250 thiss!28499))))))) (store mapRest!19028 mapKey!19028 mapValue!19028))))

(declare-fun b!3171475 () Bool)

(declare-fun res!1289077 () Bool)

(declare-fun e!1975218 () Bool)

(assert (=> b!3171475 (=> (not res!1289077) (not e!1975218))))

(declare-fun validCacheMap!83 (MutableMap!4104) Bool)

(assert (=> b!3171475 (= res!1289077 (validCacheMap!83 (cache!4250 thiss!28499)))))

(declare-fun b!3171476 () Bool)

(declare-fun tp!1001323 () Bool)

(declare-fun tp!1001320 () Bool)

(assert (=> b!3171476 (= e!1975220 (and tp!1001323 tp!1001320))))

(declare-fun b!3171477 () Bool)

(assert (=> b!3171477 (= e!1975218 (not ((_ is HashMap!4104) (cache!4250 thiss!28499))))))

(declare-fun res!1289076 () Bool)

(assert (=> start!297038 (=> (not res!1289076) (not e!1975218))))

(declare-fun r!4721 () Regex!9777)

(declare-fun validRegex!4487 (Regex!9777) Bool)

(assert (=> start!297038 (= res!1289076 (validRegex!4487 r!4721))))

(assert (=> start!297038 e!1975218))

(assert (=> start!297038 e!1975220))

(declare-fun inv!48202 (Cache!478) Bool)

(assert (=> start!297038 (and (inv!48202 thiss!28499) e!1975219)))

(declare-fun mapIsEmpty!19028 () Bool)

(assert (=> mapIsEmpty!19028 mapRes!19028))

(declare-fun b!3171478 () Bool)

(assert (=> b!3171478 (= e!1975224 e!1975221)))

(declare-fun b!3171479 () Bool)

(declare-fun tp_is_empty!17117 () Bool)

(assert (=> b!3171479 (= e!1975220 tp_is_empty!17117)))

(declare-fun b!3171480 () Bool)

(declare-fun tp!1001319 () Bool)

(declare-fun tp!1001316 () Bool)

(assert (=> b!3171480 (= e!1975220 (and tp!1001319 tp!1001316))))

(assert (= (and start!297038 res!1289076) b!3171475))

(assert (= (and b!3171475 res!1289077) b!3171477))

(assert (= (and start!297038 ((_ is ElementMatch!9777) r!4721)) b!3171479))

(assert (= (and start!297038 ((_ is Concat!15098) r!4721)) b!3171480))

(assert (= (and start!297038 ((_ is Star!9777) r!4721)) b!3171471))

(assert (= (and start!297038 ((_ is Union!9777) r!4721)) b!3171476))

(assert (= (and b!3171474 condMapEmpty!19028) mapIsEmpty!19028))

(assert (= (and b!3171474 (not condMapEmpty!19028)) mapNonEmpty!19028))

(assert (= b!3171473 b!3171474))

(assert (= b!3171468 b!3171473))

(assert (= b!3171478 b!3171468))

(assert (= (and b!3171472 ((_ is LongMap!4198) (v!35236 (underlying!8626 (cache!4250 thiss!28499))))) b!3171478))

(assert (= b!3171470 b!3171472))

(assert (= (and b!3171469 ((_ is HashMap!4104) (cache!4250 thiss!28499))) b!3171470))

(assert (= start!297038 b!3171469))

(declare-fun m!3430238 () Bool)

(assert (=> b!3171473 m!3430238))

(declare-fun m!3430240 () Bool)

(assert (=> b!3171473 m!3430240))

(declare-fun m!3430242 () Bool)

(assert (=> mapNonEmpty!19028 m!3430242))

(declare-fun m!3430244 () Bool)

(assert (=> b!3171475 m!3430244))

(declare-fun m!3430246 () Bool)

(assert (=> start!297038 m!3430246))

(declare-fun m!3430248 () Bool)

(assert (=> start!297038 m!3430248))

(check-sat (not b!3171480) b_and!209553 tp_is_empty!17117 (not b_next!83979) (not b!3171473) (not mapNonEmpty!19028) (not b_next!83977) (not b!3171476) (not b!3171471) (not b!3171474) b_and!209551 (not b!3171475) (not start!297038))
(check-sat b_and!209551 b_and!209553 (not b_next!83979) (not b_next!83977))
(get-model)

(declare-fun d!869250 () Bool)

(assert (=> d!869250 (= (array_inv!4794 (_keys!4498 (v!35235 (underlying!8625 (v!35236 (underlying!8626 (cache!4250 thiss!28499))))))) (bvsge (size!26772 (_keys!4498 (v!35235 (underlying!8625 (v!35236 (underlying!8626 (cache!4250 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3171473 d!869250))

(declare-fun d!869252 () Bool)

(assert (=> d!869252 (= (array_inv!4795 (_values!4479 (v!35235 (underlying!8625 (v!35236 (underlying!8626 (cache!4250 thiss!28499))))))) (bvsge (size!26773 (_values!4479 (v!35235 (underlying!8625 (v!35236 (underlying!8626 (cache!4250 thiss!28499))))))) #b00000000000000000000000000000000))))

(assert (=> b!3171473 d!869252))

(declare-fun b!3171499 () Bool)

(declare-fun e!1975245 () Bool)

(declare-fun call!230487 () Bool)

(assert (=> b!3171499 (= e!1975245 call!230487)))

(declare-fun b!3171500 () Bool)

(declare-fun e!1975239 () Bool)

(declare-fun e!1975243 () Bool)

(assert (=> b!3171500 (= e!1975239 e!1975243)))

(declare-fun c!533252 () Bool)

(assert (=> b!3171500 (= c!533252 ((_ is Star!9777) r!4721))))

(declare-fun b!3171501 () Bool)

(declare-fun e!1975244 () Bool)

(declare-fun e!1975240 () Bool)

(assert (=> b!3171501 (= e!1975244 e!1975240)))

(declare-fun res!1289089 () Bool)

(assert (=> b!3171501 (=> (not res!1289089) (not e!1975240))))

(declare-fun call!230488 () Bool)

(assert (=> b!3171501 (= res!1289089 call!230488)))

(declare-fun b!3171502 () Bool)

(declare-fun e!1975241 () Bool)

(assert (=> b!3171502 (= e!1975243 e!1975241)))

(declare-fun res!1289092 () Bool)

(declare-fun nullable!3360 (Regex!9777) Bool)

(assert (=> b!3171502 (= res!1289092 (not (nullable!3360 (reg!10106 r!4721))))))

(assert (=> b!3171502 (=> (not res!1289092) (not e!1975241))))

(declare-fun b!3171503 () Bool)

(declare-fun call!230486 () Bool)

(assert (=> b!3171503 (= e!1975241 call!230486)))

(declare-fun b!3171504 () Bool)

(assert (=> b!3171504 (= e!1975240 call!230487)))

(declare-fun bm!230481 () Bool)

(declare-fun c!533253 () Bool)

(assert (=> bm!230481 (= call!230487 (validRegex!4487 (ite c!533253 (regTwo!20067 r!4721) (regTwo!20066 r!4721))))))

(declare-fun bm!230482 () Bool)

(assert (=> bm!230482 (= call!230486 (validRegex!4487 (ite c!533252 (reg!10106 r!4721) (ite c!533253 (regOne!20067 r!4721) (regOne!20066 r!4721)))))))

(declare-fun b!3171505 () Bool)

(declare-fun res!1289088 () Bool)

(assert (=> b!3171505 (=> res!1289088 e!1975244)))

(assert (=> b!3171505 (= res!1289088 (not ((_ is Concat!15098) r!4721)))))

(declare-fun e!1975242 () Bool)

(assert (=> b!3171505 (= e!1975242 e!1975244)))

(declare-fun b!3171506 () Bool)

(declare-fun res!1289091 () Bool)

(assert (=> b!3171506 (=> (not res!1289091) (not e!1975245))))

(assert (=> b!3171506 (= res!1289091 call!230488)))

(assert (=> b!3171506 (= e!1975242 e!1975245)))

(declare-fun b!3171507 () Bool)

(assert (=> b!3171507 (= e!1975243 e!1975242)))

(assert (=> b!3171507 (= c!533253 ((_ is Union!9777) r!4721))))

(declare-fun d!869254 () Bool)

(declare-fun res!1289090 () Bool)

(assert (=> d!869254 (=> res!1289090 e!1975239)))

(assert (=> d!869254 (= res!1289090 ((_ is ElementMatch!9777) r!4721))))

(assert (=> d!869254 (= (validRegex!4487 r!4721) e!1975239)))

(declare-fun bm!230483 () Bool)

(assert (=> bm!230483 (= call!230488 call!230486)))

(assert (= (and d!869254 (not res!1289090)) b!3171500))

(assert (= (and b!3171500 c!533252) b!3171502))

(assert (= (and b!3171500 (not c!533252)) b!3171507))

(assert (= (and b!3171502 res!1289092) b!3171503))

(assert (= (and b!3171507 c!533253) b!3171506))

(assert (= (and b!3171507 (not c!533253)) b!3171505))

(assert (= (and b!3171506 res!1289091) b!3171499))

(assert (= (and b!3171505 (not res!1289088)) b!3171501))

(assert (= (and b!3171501 res!1289089) b!3171504))

(assert (= (or b!3171506 b!3171501) bm!230483))

(assert (= (or b!3171499 b!3171504) bm!230481))

(assert (= (or b!3171503 bm!230483) bm!230482))

(declare-fun m!3430250 () Bool)

(assert (=> b!3171502 m!3430250))

(declare-fun m!3430252 () Bool)

(assert (=> bm!230481 m!3430252))

(declare-fun m!3430254 () Bool)

(assert (=> bm!230482 m!3430254))

(assert (=> start!297038 d!869254))

(declare-fun d!869256 () Bool)

(declare-fun res!1289095 () Bool)

(declare-fun e!1975248 () Bool)

(assert (=> d!869256 (=> (not res!1289095) (not e!1975248))))

(assert (=> d!869256 (= res!1289095 ((_ is HashMap!4104) (cache!4250 thiss!28499)))))

(assert (=> d!869256 (= (inv!48202 thiss!28499) e!1975248)))

(declare-fun b!3171510 () Bool)

(assert (=> b!3171510 (= e!1975248 (validCacheMap!83 (cache!4250 thiss!28499)))))

(assert (= (and d!869256 res!1289095) b!3171510))

(assert (=> b!3171510 m!3430244))

(assert (=> start!297038 d!869256))

(declare-fun d!869258 () Bool)

(declare-fun res!1289102 () Bool)

(declare-fun e!1975253 () Bool)

(assert (=> d!869258 (=> (not res!1289102) (not e!1975253))))

(declare-fun valid!3274 (MutableMap!4104) Bool)

(assert (=> d!869258 (= res!1289102 (valid!3274 (cache!4250 thiss!28499)))))

(assert (=> d!869258 (= (validCacheMap!83 (cache!4250 thiss!28499)) e!1975253)))

(declare-fun b!3171517 () Bool)

(declare-fun res!1289103 () Bool)

(assert (=> b!3171517 (=> (not res!1289103) (not e!1975253))))

(declare-fun invariantList!492 (List!35620) Bool)

(declare-datatypes ((ListMap!1339 0))(
  ( (ListMap!1340 (toList!2084 List!35620)) )
))
(declare-fun map!7948 (MutableMap!4104) ListMap!1339)

(assert (=> b!3171517 (= res!1289103 (invariantList!492 (toList!2084 (map!7948 (cache!4250 thiss!28499)))))))

(declare-fun b!3171518 () Bool)

(declare-fun lambda!116035 () Int)

(declare-fun forall!7171 (List!35620 Int) Bool)

(assert (=> b!3171518 (= e!1975253 (forall!7171 (toList!2084 (map!7948 (cache!4250 thiss!28499))) lambda!116035))))

(assert (= (and d!869258 res!1289102) b!3171517))

(assert (= (and b!3171517 res!1289103) b!3171518))

(declare-fun m!3430257 () Bool)

(assert (=> d!869258 m!3430257))

(declare-fun m!3430259 () Bool)

(assert (=> b!3171517 m!3430259))

(declare-fun m!3430261 () Bool)

(assert (=> b!3171517 m!3430261))

(assert (=> b!3171518 m!3430259))

(declare-fun m!3430263 () Bool)

(assert (=> b!3171518 m!3430263))

(assert (=> b!3171475 d!869258))

(declare-fun b!3171531 () Bool)

(declare-fun e!1975256 () Bool)

(declare-fun tp!1001341 () Bool)

(assert (=> b!3171531 (= e!1975256 tp!1001341)))

(declare-fun b!3171532 () Bool)

(declare-fun tp!1001340 () Bool)

(declare-fun tp!1001337 () Bool)

(assert (=> b!3171532 (= e!1975256 (and tp!1001340 tp!1001337))))

(assert (=> b!3171476 (= tp!1001323 e!1975256)))

(declare-fun b!3171530 () Bool)

(declare-fun tp!1001338 () Bool)

(declare-fun tp!1001339 () Bool)

(assert (=> b!3171530 (= e!1975256 (and tp!1001338 tp!1001339))))

(declare-fun b!3171529 () Bool)

(assert (=> b!3171529 (= e!1975256 tp_is_empty!17117)))

(assert (= (and b!3171476 ((_ is ElementMatch!9777) (regOne!20067 r!4721))) b!3171529))

(assert (= (and b!3171476 ((_ is Concat!15098) (regOne!20067 r!4721))) b!3171530))

(assert (= (and b!3171476 ((_ is Star!9777) (regOne!20067 r!4721))) b!3171531))

(assert (= (and b!3171476 ((_ is Union!9777) (regOne!20067 r!4721))) b!3171532))

(declare-fun b!3171535 () Bool)

(declare-fun e!1975257 () Bool)

(declare-fun tp!1001346 () Bool)

(assert (=> b!3171535 (= e!1975257 tp!1001346)))

(declare-fun b!3171536 () Bool)

(declare-fun tp!1001345 () Bool)

(declare-fun tp!1001342 () Bool)

(assert (=> b!3171536 (= e!1975257 (and tp!1001345 tp!1001342))))

(assert (=> b!3171476 (= tp!1001320 e!1975257)))

(declare-fun b!3171534 () Bool)

(declare-fun tp!1001343 () Bool)

(declare-fun tp!1001344 () Bool)

(assert (=> b!3171534 (= e!1975257 (and tp!1001343 tp!1001344))))

(declare-fun b!3171533 () Bool)

(assert (=> b!3171533 (= e!1975257 tp_is_empty!17117)))

(assert (= (and b!3171476 ((_ is ElementMatch!9777) (regTwo!20067 r!4721))) b!3171533))

(assert (= (and b!3171476 ((_ is Concat!15098) (regTwo!20067 r!4721))) b!3171534))

(assert (= (and b!3171476 ((_ is Star!9777) (regTwo!20067 r!4721))) b!3171535))

(assert (= (and b!3171476 ((_ is Union!9777) (regTwo!20067 r!4721))) b!3171536))

(declare-fun b!3171541 () Bool)

(declare-fun tp!1001354 () Bool)

(declare-fun e!1975260 () Bool)

(declare-fun tp!1001355 () Bool)

(declare-fun tp!1001353 () Bool)

(assert (=> b!3171541 (= e!1975260 (and tp!1001353 tp_is_empty!17117 tp!1001354 tp!1001355))))

(assert (=> b!3171473 (= tp!1001326 e!1975260)))

(assert (= (and b!3171473 ((_ is Cons!35496) (zeroValue!4457 (v!35235 (underlying!8625 (v!35236 (underlying!8626 (cache!4250 thiss!28499)))))))) b!3171541))

(declare-fun tp!1001357 () Bool)

(declare-fun tp!1001356 () Bool)

(declare-fun b!3171542 () Bool)

(declare-fun e!1975261 () Bool)

(declare-fun tp!1001358 () Bool)

(assert (=> b!3171542 (= e!1975261 (and tp!1001356 tp_is_empty!17117 tp!1001357 tp!1001358))))

(assert (=> b!3171473 (= tp!1001321 e!1975261)))

(assert (= (and b!3171473 ((_ is Cons!35496) (minValue!4457 (v!35235 (underlying!8625 (v!35236 (underlying!8626 (cache!4250 thiss!28499)))))))) b!3171542))

(declare-fun tp!1001359 () Bool)

(declare-fun tp!1001360 () Bool)

(declare-fun tp!1001361 () Bool)

(declare-fun b!3171543 () Bool)

(declare-fun e!1975262 () Bool)

(assert (=> b!3171543 (= e!1975262 (and tp!1001359 tp_is_empty!17117 tp!1001360 tp!1001361))))

(assert (=> b!3171474 (= tp!1001324 e!1975262)))

(assert (= (and b!3171474 ((_ is Cons!35496) mapDefault!19028)) b!3171543))

(declare-fun tp!1001377 () Bool)

(declare-fun b!3171551 () Bool)

(declare-fun tp!1001380 () Bool)

(declare-fun e!1975268 () Bool)

(declare-fun tp!1001381 () Bool)

(assert (=> b!3171551 (= e!1975268 (and tp!1001381 tp_is_empty!17117 tp!1001380 tp!1001377))))

(declare-fun mapIsEmpty!19031 () Bool)

(declare-fun mapRes!19031 () Bool)

(assert (=> mapIsEmpty!19031 mapRes!19031))

(declare-fun condMapEmpty!19031 () Bool)

(declare-fun mapDefault!19031 () List!35620)

(assert (=> mapNonEmpty!19028 (= condMapEmpty!19031 (= mapRest!19028 ((as const (Array (_ BitVec 32) List!35620)) mapDefault!19031)))))

(assert (=> mapNonEmpty!19028 (= tp!1001317 (and e!1975268 mapRes!19031))))

(declare-fun tp!1001379 () Bool)

(declare-fun tp!1001382 () Bool)

(declare-fun e!1975267 () Bool)

(declare-fun b!3171550 () Bool)

(declare-fun tp!1001378 () Bool)

(assert (=> b!3171550 (= e!1975267 (and tp!1001382 tp_is_empty!17117 tp!1001378 tp!1001379))))

(declare-fun mapNonEmpty!19031 () Bool)

(declare-fun tp!1001376 () Bool)

(assert (=> mapNonEmpty!19031 (= mapRes!19031 (and tp!1001376 e!1975267))))

(declare-fun mapKey!19031 () (_ BitVec 32))

(declare-fun mapRest!19031 () (Array (_ BitVec 32) List!35620))

(declare-fun mapValue!19031 () List!35620)

(assert (=> mapNonEmpty!19031 (= mapRest!19028 (store mapRest!19031 mapKey!19031 mapValue!19031))))

(assert (= (and mapNonEmpty!19028 condMapEmpty!19031) mapIsEmpty!19031))

(assert (= (and mapNonEmpty!19028 (not condMapEmpty!19031)) mapNonEmpty!19031))

(assert (= (and mapNonEmpty!19031 ((_ is Cons!35496) mapValue!19031)) b!3171550))

(assert (= (and mapNonEmpty!19028 ((_ is Cons!35496) mapDefault!19031)) b!3171551))

(declare-fun m!3430265 () Bool)

(assert (=> mapNonEmpty!19031 m!3430265))

(declare-fun tp!1001383 () Bool)

(declare-fun tp!1001385 () Bool)

(declare-fun b!3171552 () Bool)

(declare-fun tp!1001384 () Bool)

(declare-fun e!1975269 () Bool)

(assert (=> b!3171552 (= e!1975269 (and tp!1001383 tp_is_empty!17117 tp!1001384 tp!1001385))))

(assert (=> mapNonEmpty!19028 (= tp!1001315 e!1975269)))

(assert (= (and mapNonEmpty!19028 ((_ is Cons!35496) mapValue!19028)) b!3171552))

(declare-fun b!3171555 () Bool)

(declare-fun e!1975270 () Bool)

(declare-fun tp!1001390 () Bool)

(assert (=> b!3171555 (= e!1975270 tp!1001390)))

(declare-fun b!3171556 () Bool)

(declare-fun tp!1001389 () Bool)

(declare-fun tp!1001386 () Bool)

(assert (=> b!3171556 (= e!1975270 (and tp!1001389 tp!1001386))))

(assert (=> b!3171471 (= tp!1001325 e!1975270)))

(declare-fun b!3171554 () Bool)

(declare-fun tp!1001387 () Bool)

(declare-fun tp!1001388 () Bool)

(assert (=> b!3171554 (= e!1975270 (and tp!1001387 tp!1001388))))

(declare-fun b!3171553 () Bool)

(assert (=> b!3171553 (= e!1975270 tp_is_empty!17117)))

(assert (= (and b!3171471 ((_ is ElementMatch!9777) (reg!10106 r!4721))) b!3171553))

(assert (= (and b!3171471 ((_ is Concat!15098) (reg!10106 r!4721))) b!3171554))

(assert (= (and b!3171471 ((_ is Star!9777) (reg!10106 r!4721))) b!3171555))

(assert (= (and b!3171471 ((_ is Union!9777) (reg!10106 r!4721))) b!3171556))

(declare-fun b!3171559 () Bool)

(declare-fun e!1975271 () Bool)

(declare-fun tp!1001395 () Bool)

(assert (=> b!3171559 (= e!1975271 tp!1001395)))

(declare-fun b!3171560 () Bool)

(declare-fun tp!1001394 () Bool)

(declare-fun tp!1001391 () Bool)

(assert (=> b!3171560 (= e!1975271 (and tp!1001394 tp!1001391))))

(assert (=> b!3171480 (= tp!1001319 e!1975271)))

(declare-fun b!3171558 () Bool)

(declare-fun tp!1001392 () Bool)

(declare-fun tp!1001393 () Bool)

(assert (=> b!3171558 (= e!1975271 (and tp!1001392 tp!1001393))))

(declare-fun b!3171557 () Bool)

(assert (=> b!3171557 (= e!1975271 tp_is_empty!17117)))

(assert (= (and b!3171480 ((_ is ElementMatch!9777) (regOne!20066 r!4721))) b!3171557))

(assert (= (and b!3171480 ((_ is Concat!15098) (regOne!20066 r!4721))) b!3171558))

(assert (= (and b!3171480 ((_ is Star!9777) (regOne!20066 r!4721))) b!3171559))

(assert (= (and b!3171480 ((_ is Union!9777) (regOne!20066 r!4721))) b!3171560))

(declare-fun b!3171563 () Bool)

(declare-fun e!1975272 () Bool)

(declare-fun tp!1001400 () Bool)

(assert (=> b!3171563 (= e!1975272 tp!1001400)))

(declare-fun b!3171564 () Bool)

(declare-fun tp!1001399 () Bool)

(declare-fun tp!1001396 () Bool)

(assert (=> b!3171564 (= e!1975272 (and tp!1001399 tp!1001396))))

(assert (=> b!3171480 (= tp!1001316 e!1975272)))

(declare-fun b!3171562 () Bool)

(declare-fun tp!1001397 () Bool)

(declare-fun tp!1001398 () Bool)

(assert (=> b!3171562 (= e!1975272 (and tp!1001397 tp!1001398))))

(declare-fun b!3171561 () Bool)

(assert (=> b!3171561 (= e!1975272 tp_is_empty!17117)))

(assert (= (and b!3171480 ((_ is ElementMatch!9777) (regTwo!20066 r!4721))) b!3171561))

(assert (= (and b!3171480 ((_ is Concat!15098) (regTwo!20066 r!4721))) b!3171562))

(assert (= (and b!3171480 ((_ is Star!9777) (regTwo!20066 r!4721))) b!3171563))

(assert (= (and b!3171480 ((_ is Union!9777) (regTwo!20066 r!4721))) b!3171564))

(check-sat b_and!209553 (not b!3171535) (not mapNonEmpty!19031) (not b_next!83979) (not b!3171563) (not b!3171564) (not b!3171551) (not b!3171555) (not b!3171518) (not b!3171554) (not b!3171510) (not b!3171559) (not b!3171517) (not d!869258) (not b!3171556) b_and!209551 (not b!3171562) (not b!3171558) (not b!3171543) (not bm!230482) (not b!3171534) tp_is_empty!17117 (not b!3171530) (not b!3171541) (not b!3171532) (not b!3171560) (not b!3171550) (not b!3171531) (not b!3171552) (not b!3171542) (not bm!230481) (not b_next!83977) (not b!3171536) (not b!3171502))
(check-sat b_and!209551 b_and!209553 (not b_next!83979) (not b_next!83977))
