; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297186 () Bool)

(assert start!297186)

(declare-fun b!3173266 () Bool)

(declare-fun b_free!83361 () Bool)

(declare-fun b_next!84065 () Bool)

(assert (=> b!3173266 (= b_free!83361 (not b_next!84065))))

(declare-fun tp!1002633 () Bool)

(declare-fun b_and!209647 () Bool)

(assert (=> b!3173266 (= tp!1002633 b_and!209647)))

(declare-fun b!3173268 () Bool)

(declare-fun b_free!83363 () Bool)

(declare-fun b_next!84067 () Bool)

(assert (=> b!3173268 (= b_free!83363 (not b_next!84067))))

(declare-fun tp!1002627 () Bool)

(declare-fun b_and!209649 () Bool)

(assert (=> b!3173268 (= tp!1002627 b_and!209649)))

(declare-fun mapNonEmpty!19115 () Bool)

(declare-fun mapRes!19115 () Bool)

(declare-fun tp!1002636 () Bool)

(declare-fun tp!1002632 () Bool)

(assert (=> mapNonEmpty!19115 (= mapRes!19115 (and tp!1002636 tp!1002632))))

(declare-datatypes ((C!19784 0))(
  ( (C!19785 (val!11928 Int)) )
))
(declare-datatypes ((Regex!9799 0))(
  ( (ElementMatch!9799 (c!533408 C!19784)) (Concat!15120 (regOne!20110 Regex!9799) (regTwo!20110 Regex!9799)) (EmptyExpr!9799) (Star!9799 (reg!10128 Regex!9799)) (EmptyLang!9799) (Union!9799 (regOne!20111 Regex!9799) (regTwo!20111 Regex!9799)) )
))
(declare-datatypes ((tuple2!34858 0))(
  ( (tuple2!34859 (_1!20561 Regex!9799) (_2!20561 C!19784)) )
))
(declare-datatypes ((tuple2!34860 0))(
  ( (tuple2!34861 (_1!20562 tuple2!34858) (_2!20562 Regex!9799)) )
))
(declare-datatypes ((List!35647 0))(
  ( (Nil!35523) (Cons!35523 (h!40943 tuple2!34860) (t!234734 List!35647)) )
))
(declare-fun mapValue!19115 () List!35647)

(declare-fun mapKey!19115 () (_ BitVec 32))

(declare-datatypes ((array!15128 0))(
  ( (array!15129 (arr!6730 (Array (_ BitVec 32) (_ BitVec 64))) (size!26816 (_ BitVec 32))) )
))
(declare-datatypes ((array!15130 0))(
  ( (array!15131 (arr!6731 (Array (_ BitVec 32) List!35647)) (size!26817 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8440 0))(
  ( (LongMapFixedSize!8441 (defaultEntry!4605 Int) (mask!10913 (_ BitVec 32)) (extraKeys!4469 (_ BitVec 32)) (zeroValue!4479 List!35647) (minValue!4479 List!35647) (_size!8483 (_ BitVec 32)) (_keys!4520 array!15128) (_values!4501 array!15130) (_vacant!4281 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16689 0))(
  ( (Cell!16690 (v!35292 LongMapFixedSize!8440)) )
))
(declare-datatypes ((MutLongMap!4220 0))(
  ( (LongMap!4220 (underlying!8669 Cell!16689)) (MutLongMapExt!4219 (__x!22766 Int)) )
))
(declare-datatypes ((Cell!16691 0))(
  ( (Cell!16692 (v!35293 MutLongMap!4220)) )
))
(declare-datatypes ((Hashable!4136 0))(
  ( (HashableExt!4135 (__x!22767 Int)) )
))
(declare-datatypes ((MutableMap!4126 0))(
  ( (MutableMapExt!4125 (__x!22768 Int)) (HashMap!4126 (underlying!8670 Cell!16691) (hashF!6168 Hashable!4136) (_size!8484 (_ BitVec 32)) (defaultValue!4297 Int)) )
))
(declare-datatypes ((Cache!522 0))(
  ( (Cache!523 (cache!4272 MutableMap!4126)) )
))
(declare-fun thiss!28445 () Cache!522)

(declare-fun mapRest!19115 () (Array (_ BitVec 32) List!35647))

(assert (=> mapNonEmpty!19115 (= (arr!6731 (_values!4501 (v!35292 (underlying!8669 (v!35293 (underlying!8670 (cache!4272 thiss!28445))))))) (store mapRest!19115 mapKey!19115 mapValue!19115))))

(declare-fun b!3173257 () Bool)

(declare-fun e!1976438 () Bool)

(declare-fun tp!1002630 () Bool)

(assert (=> b!3173257 (= e!1976438 tp!1002630)))

(declare-fun b!3173258 () Bool)

(declare-fun e!1976432 () Bool)

(declare-fun e!1976431 () Bool)

(assert (=> b!3173258 (= e!1976432 e!1976431)))

(declare-fun b!3173259 () Bool)

(declare-fun e!1976436 () Bool)

(declare-fun e!1976434 () Bool)

(assert (=> b!3173259 (= e!1976436 e!1976434)))

(declare-fun b!3173260 () Bool)

(declare-fun res!1289549 () Bool)

(declare-fun e!1976439 () Bool)

(assert (=> b!3173260 (=> (not res!1289549) (not e!1976439))))

(get-info :version)

(assert (=> b!3173260 (= res!1289549 ((_ is HashMap!4126) (cache!4272 thiss!28445)))))

(declare-fun b!3173261 () Bool)

(declare-fun e!1976435 () Bool)

(assert (=> b!3173261 (= e!1976431 e!1976435)))

(declare-fun b!3173262 () Bool)

(declare-fun tp_is_empty!17161 () Bool)

(assert (=> b!3173262 (= e!1976438 tp_is_empty!17161)))

(declare-fun mapIsEmpty!19115 () Bool)

(assert (=> mapIsEmpty!19115 mapRes!19115))

(declare-fun b!3173263 () Bool)

(declare-fun valid!3284 (MutableMap!4126) Bool)

(assert (=> b!3173263 (= e!1976439 (not (valid!3284 (cache!4272 thiss!28445))))))

(declare-fun b!3173264 () Bool)

(declare-fun tp!1002629 () Bool)

(declare-fun tp!1002634 () Bool)

(assert (=> b!3173264 (= e!1976438 (and tp!1002629 tp!1002634))))

(declare-fun res!1289548 () Bool)

(assert (=> start!297186 (=> (not res!1289548) (not e!1976439))))

(declare-fun validCacheMap!101 (MutableMap!4126) Bool)

(assert (=> start!297186 (= res!1289548 (validCacheMap!101 (cache!4272 thiss!28445)))))

(assert (=> start!297186 e!1976439))

(declare-fun inv!48251 (Cache!522) Bool)

(assert (=> start!297186 (and (inv!48251 thiss!28445) e!1976436)))

(assert (=> start!297186 e!1976438))

(declare-fun b!3173265 () Bool)

(declare-fun res!1289547 () Bool)

(assert (=> b!3173265 (=> (not res!1289547) (not e!1976439))))

(declare-fun r!4705 () Regex!9799)

(declare-fun validRegex!4503 (Regex!9799) Bool)

(assert (=> b!3173265 (= res!1289547 (validRegex!4503 r!4705))))

(declare-fun tp!1002635 () Bool)

(declare-fun tp!1002631 () Bool)

(declare-fun e!1976430 () Bool)

(declare-fun array_inv!4828 (array!15128) Bool)

(declare-fun array_inv!4829 (array!15130) Bool)

(assert (=> b!3173266 (= e!1976435 (and tp!1002633 tp!1002631 tp!1002635 (array_inv!4828 (_keys!4520 (v!35292 (underlying!8669 (v!35293 (underlying!8670 (cache!4272 thiss!28445))))))) (array_inv!4829 (_values!4501 (v!35292 (underlying!8669 (v!35293 (underlying!8670 (cache!4272 thiss!28445))))))) e!1976430))))

(declare-fun b!3173267 () Bool)

(declare-fun e!1976437 () Bool)

(declare-fun lt!1066979 () MutLongMap!4220)

(assert (=> b!3173267 (= e!1976437 (and e!1976432 ((_ is LongMap!4220) lt!1066979)))))

(assert (=> b!3173267 (= lt!1066979 (v!35293 (underlying!8670 (cache!4272 thiss!28445))))))

(assert (=> b!3173268 (= e!1976434 (and e!1976437 tp!1002627))))

(declare-fun b!3173269 () Bool)

(declare-fun tp!1002628 () Bool)

(assert (=> b!3173269 (= e!1976430 (and tp!1002628 mapRes!19115))))

(declare-fun condMapEmpty!19115 () Bool)

(declare-fun mapDefault!19115 () List!35647)

(assert (=> b!3173269 (= condMapEmpty!19115 (= (arr!6731 (_values!4501 (v!35292 (underlying!8669 (v!35293 (underlying!8670 (cache!4272 thiss!28445))))))) ((as const (Array (_ BitVec 32) List!35647)) mapDefault!19115)))))

(declare-fun b!3173270 () Bool)

(declare-fun tp!1002626 () Bool)

(declare-fun tp!1002625 () Bool)

(assert (=> b!3173270 (= e!1976438 (and tp!1002626 tp!1002625))))

(assert (= (and start!297186 res!1289548) b!3173265))

(assert (= (and b!3173265 res!1289547) b!3173260))

(assert (= (and b!3173260 res!1289549) b!3173263))

(assert (= (and b!3173269 condMapEmpty!19115) mapIsEmpty!19115))

(assert (= (and b!3173269 (not condMapEmpty!19115)) mapNonEmpty!19115))

(assert (= b!3173266 b!3173269))

(assert (= b!3173261 b!3173266))

(assert (= b!3173258 b!3173261))

(assert (= (and b!3173267 ((_ is LongMap!4220) (v!35293 (underlying!8670 (cache!4272 thiss!28445))))) b!3173258))

(assert (= b!3173268 b!3173267))

(assert (= (and b!3173259 ((_ is HashMap!4126) (cache!4272 thiss!28445))) b!3173268))

(assert (= start!297186 b!3173259))

(assert (= (and start!297186 ((_ is ElementMatch!9799) r!4705)) b!3173262))

(assert (= (and start!297186 ((_ is Concat!15120) r!4705)) b!3173270))

(assert (= (and start!297186 ((_ is Star!9799) r!4705)) b!3173257))

(assert (= (and start!297186 ((_ is Union!9799) r!4705)) b!3173264))

(declare-fun m!3431115 () Bool)

(assert (=> mapNonEmpty!19115 m!3431115))

(declare-fun m!3431117 () Bool)

(assert (=> b!3173263 m!3431117))

(declare-fun m!3431119 () Bool)

(assert (=> start!297186 m!3431119))

(declare-fun m!3431121 () Bool)

(assert (=> start!297186 m!3431121))

(declare-fun m!3431123 () Bool)

(assert (=> b!3173266 m!3431123))

(declare-fun m!3431125 () Bool)

(assert (=> b!3173266 m!3431125))

(declare-fun m!3431127 () Bool)

(assert (=> b!3173265 m!3431127))

(check-sat (not b!3173266) (not b_next!84067) (not b!3173270) (not b!3173257) (not b!3173263) b_and!209647 b_and!209649 (not b!3173269) (not b!3173265) (not mapNonEmpty!19115) tp_is_empty!17161 (not start!297186) (not b_next!84065) (not b!3173264))
(check-sat b_and!209647 b_and!209649 (not b_next!84065) (not b_next!84067))
(get-model)

(declare-fun d!869365 () Bool)

(declare-fun res!1289556 () Bool)

(declare-fun e!1976444 () Bool)

(assert (=> d!869365 (=> (not res!1289556) (not e!1976444))))

(assert (=> d!869365 (= res!1289556 (valid!3284 (cache!4272 thiss!28445)))))

(assert (=> d!869365 (= (validCacheMap!101 (cache!4272 thiss!28445)) e!1976444)))

(declare-fun b!3173277 () Bool)

(declare-fun res!1289557 () Bool)

(assert (=> b!3173277 (=> (not res!1289557) (not e!1976444))))

(declare-fun invariantList!499 (List!35647) Bool)

(declare-datatypes ((ListMap!1353 0))(
  ( (ListMap!1354 (toList!2096 List!35647)) )
))
(declare-fun map!7971 (MutableMap!4126) ListMap!1353)

(assert (=> b!3173277 (= res!1289557 (invariantList!499 (toList!2096 (map!7971 (cache!4272 thiss!28445)))))))

(declare-fun b!3173278 () Bool)

(declare-fun lambda!116100 () Int)

(declare-fun forall!7180 (List!35647 Int) Bool)

(assert (=> b!3173278 (= e!1976444 (forall!7180 (toList!2096 (map!7971 (cache!4272 thiss!28445))) lambda!116100))))

(assert (= (and d!869365 res!1289556) b!3173277))

(assert (= (and b!3173277 res!1289557) b!3173278))

(assert (=> d!869365 m!3431117))

(declare-fun m!3431130 () Bool)

(assert (=> b!3173277 m!3431130))

(declare-fun m!3431132 () Bool)

(assert (=> b!3173277 m!3431132))

(assert (=> b!3173278 m!3431130))

(declare-fun m!3431134 () Bool)

(assert (=> b!3173278 m!3431134))

(assert (=> start!297186 d!869365))

(declare-fun d!869367 () Bool)

(declare-fun res!1289560 () Bool)

(declare-fun e!1976447 () Bool)

(assert (=> d!869367 (=> (not res!1289560) (not e!1976447))))

(assert (=> d!869367 (= res!1289560 ((_ is HashMap!4126) (cache!4272 thiss!28445)))))

(assert (=> d!869367 (= (inv!48251 thiss!28445) e!1976447)))

(declare-fun b!3173281 () Bool)

(assert (=> b!3173281 (= e!1976447 (validCacheMap!101 (cache!4272 thiss!28445)))))

(assert (= (and d!869367 res!1289560) b!3173281))

(assert (=> b!3173281 m!3431119))

(assert (=> start!297186 d!869367))

(declare-fun d!869369 () Bool)

(declare-fun res!1289565 () Bool)

(declare-fun e!1976450 () Bool)

(assert (=> d!869369 (=> (not res!1289565) (not e!1976450))))

(declare-fun valid!3285 (MutLongMap!4220) Bool)

(assert (=> d!869369 (= res!1289565 (valid!3285 (v!35293 (underlying!8670 (cache!4272 thiss!28445)))))))

(assert (=> d!869369 (= (valid!3284 (cache!4272 thiss!28445)) e!1976450)))

(declare-fun b!3173286 () Bool)

(declare-fun res!1289566 () Bool)

(assert (=> b!3173286 (=> (not res!1289566) (not e!1976450))))

(declare-fun lambda!116103 () Int)

(declare-datatypes ((tuple2!34862 0))(
  ( (tuple2!34863 (_1!20563 (_ BitVec 64)) (_2!20563 List!35647)) )
))
(declare-datatypes ((List!35648 0))(
  ( (Nil!35524) (Cons!35524 (h!40944 tuple2!34862) (t!234735 List!35648)) )
))
(declare-fun forall!7181 (List!35648 Int) Bool)

(declare-datatypes ((ListLongMap!751 0))(
  ( (ListLongMap!752 (toList!2097 List!35648)) )
))
(declare-fun map!7972 (MutLongMap!4220) ListLongMap!751)

(assert (=> b!3173286 (= res!1289566 (forall!7181 (toList!2097 (map!7972 (v!35293 (underlying!8670 (cache!4272 thiss!28445))))) lambda!116103))))

(declare-fun b!3173287 () Bool)

(declare-fun allKeysSameHashInMap!247 (ListLongMap!751 Hashable!4136) Bool)

(assert (=> b!3173287 (= e!1976450 (allKeysSameHashInMap!247 (map!7972 (v!35293 (underlying!8670 (cache!4272 thiss!28445)))) (hashF!6168 (cache!4272 thiss!28445))))))

(assert (= (and d!869369 res!1289565) b!3173286))

(assert (= (and b!3173286 res!1289566) b!3173287))

(declare-fun m!3431136 () Bool)

(assert (=> d!869369 m!3431136))

(declare-fun m!3431138 () Bool)

(assert (=> b!3173286 m!3431138))

(declare-fun m!3431140 () Bool)

(assert (=> b!3173286 m!3431140))

(assert (=> b!3173287 m!3431138))

(assert (=> b!3173287 m!3431138))

(declare-fun m!3431142 () Bool)

(assert (=> b!3173287 m!3431142))

(assert (=> b!3173263 d!869369))

(declare-fun b!3173306 () Bool)

(declare-fun e!1976466 () Bool)

(declare-fun call!230633 () Bool)

(assert (=> b!3173306 (= e!1976466 call!230633)))

(declare-fun b!3173307 () Bool)

(declare-fun res!1289581 () Bool)

(declare-fun e!1976467 () Bool)

(assert (=> b!3173307 (=> (not res!1289581) (not e!1976467))))

(declare-fun call!230634 () Bool)

(assert (=> b!3173307 (= res!1289581 call!230634)))

(declare-fun e!1976469 () Bool)

(assert (=> b!3173307 (= e!1976469 e!1976467)))

(declare-fun b!3173308 () Bool)

(declare-fun res!1289578 () Bool)

(declare-fun e!1976468 () Bool)

(assert (=> b!3173308 (=> res!1289578 e!1976468)))

(assert (=> b!3173308 (= res!1289578 (not ((_ is Concat!15120) r!4705)))))

(assert (=> b!3173308 (= e!1976469 e!1976468)))

(declare-fun b!3173309 () Bool)

(declare-fun e!1976471 () Bool)

(assert (=> b!3173309 (= e!1976471 e!1976469)))

(declare-fun c!533414 () Bool)

(assert (=> b!3173309 (= c!533414 ((_ is Union!9799) r!4705))))

(declare-fun b!3173310 () Bool)

(declare-fun e!1976465 () Bool)

(assert (=> b!3173310 (= e!1976465 e!1976471)))

(declare-fun c!533413 () Bool)

(assert (=> b!3173310 (= c!533413 ((_ is Star!9799) r!4705))))

(declare-fun b!3173311 () Bool)

(assert (=> b!3173311 (= e!1976471 e!1976466)))

(declare-fun res!1289579 () Bool)

(declare-fun nullable!3367 (Regex!9799) Bool)

(assert (=> b!3173311 (= res!1289579 (not (nullable!3367 (reg!10128 r!4705))))))

(assert (=> b!3173311 (=> (not res!1289579) (not e!1976466))))

(declare-fun d!869371 () Bool)

(declare-fun res!1289580 () Bool)

(assert (=> d!869371 (=> res!1289580 e!1976465)))

(assert (=> d!869371 (= res!1289580 ((_ is ElementMatch!9799) r!4705))))

(assert (=> d!869371 (= (validRegex!4503 r!4705) e!1976465)))

(declare-fun bm!230628 () Bool)

(assert (=> bm!230628 (= call!230634 call!230633)))

(declare-fun b!3173312 () Bool)

(declare-fun e!1976470 () Bool)

(assert (=> b!3173312 (= e!1976468 e!1976470)))

(declare-fun res!1289577 () Bool)

(assert (=> b!3173312 (=> (not res!1289577) (not e!1976470))))

(assert (=> b!3173312 (= res!1289577 call!230634)))

(declare-fun bm!230629 () Bool)

(assert (=> bm!230629 (= call!230633 (validRegex!4503 (ite c!533413 (reg!10128 r!4705) (ite c!533414 (regOne!20111 r!4705) (regOne!20110 r!4705)))))))

(declare-fun b!3173313 () Bool)

(declare-fun call!230635 () Bool)

(assert (=> b!3173313 (= e!1976467 call!230635)))

(declare-fun bm!230630 () Bool)

(assert (=> bm!230630 (= call!230635 (validRegex!4503 (ite c!533414 (regTwo!20111 r!4705) (regTwo!20110 r!4705))))))

(declare-fun b!3173314 () Bool)

(assert (=> b!3173314 (= e!1976470 call!230635)))

(assert (= (and d!869371 (not res!1289580)) b!3173310))

(assert (= (and b!3173310 c!533413) b!3173311))

(assert (= (and b!3173310 (not c!533413)) b!3173309))

(assert (= (and b!3173311 res!1289579) b!3173306))

(assert (= (and b!3173309 c!533414) b!3173307))

(assert (= (and b!3173309 (not c!533414)) b!3173308))

(assert (= (and b!3173307 res!1289581) b!3173313))

(assert (= (and b!3173308 (not res!1289578)) b!3173312))

(assert (= (and b!3173312 res!1289577) b!3173314))

(assert (= (or b!3173313 b!3173314) bm!230630))

(assert (= (or b!3173307 b!3173312) bm!230628))

(assert (= (or b!3173306 bm!230628) bm!230629))

(declare-fun m!3431144 () Bool)

(assert (=> b!3173311 m!3431144))

(declare-fun m!3431146 () Bool)

(assert (=> bm!230629 m!3431146))

(declare-fun m!3431148 () Bool)

(assert (=> bm!230630 m!3431148))

(assert (=> b!3173265 d!869371))

(declare-fun d!869373 () Bool)

(assert (=> d!869373 (= (array_inv!4828 (_keys!4520 (v!35292 (underlying!8669 (v!35293 (underlying!8670 (cache!4272 thiss!28445))))))) (bvsge (size!26816 (_keys!4520 (v!35292 (underlying!8669 (v!35293 (underlying!8670 (cache!4272 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3173266 d!869373))

(declare-fun d!869375 () Bool)

(assert (=> d!869375 (= (array_inv!4829 (_values!4501 (v!35292 (underlying!8669 (v!35293 (underlying!8670 (cache!4272 thiss!28445))))))) (bvsge (size!26817 (_values!4501 (v!35292 (underlying!8669 (v!35293 (underlying!8670 (cache!4272 thiss!28445))))))) #b00000000000000000000000000000000))))

(assert (=> b!3173266 d!869375))

(declare-fun b!3173325 () Bool)

(declare-fun e!1976474 () Bool)

(assert (=> b!3173325 (= e!1976474 tp_is_empty!17161)))

(declare-fun b!3173328 () Bool)

(declare-fun tp!1002648 () Bool)

(declare-fun tp!1002647 () Bool)

(assert (=> b!3173328 (= e!1976474 (and tp!1002648 tp!1002647))))

(assert (=> b!3173264 (= tp!1002629 e!1976474)))

(declare-fun b!3173327 () Bool)

(declare-fun tp!1002650 () Bool)

(assert (=> b!3173327 (= e!1976474 tp!1002650)))

(declare-fun b!3173326 () Bool)

(declare-fun tp!1002649 () Bool)

(declare-fun tp!1002651 () Bool)

(assert (=> b!3173326 (= e!1976474 (and tp!1002649 tp!1002651))))

(assert (= (and b!3173264 ((_ is ElementMatch!9799) (regOne!20111 r!4705))) b!3173325))

(assert (= (and b!3173264 ((_ is Concat!15120) (regOne!20111 r!4705))) b!3173326))

(assert (= (and b!3173264 ((_ is Star!9799) (regOne!20111 r!4705))) b!3173327))

(assert (= (and b!3173264 ((_ is Union!9799) (regOne!20111 r!4705))) b!3173328))

(declare-fun b!3173329 () Bool)

(declare-fun e!1976475 () Bool)

(assert (=> b!3173329 (= e!1976475 tp_is_empty!17161)))

(declare-fun b!3173332 () Bool)

(declare-fun tp!1002653 () Bool)

(declare-fun tp!1002652 () Bool)

(assert (=> b!3173332 (= e!1976475 (and tp!1002653 tp!1002652))))

(assert (=> b!3173264 (= tp!1002634 e!1976475)))

(declare-fun b!3173331 () Bool)

(declare-fun tp!1002655 () Bool)

(assert (=> b!3173331 (= e!1976475 tp!1002655)))

(declare-fun b!3173330 () Bool)

(declare-fun tp!1002654 () Bool)

(declare-fun tp!1002656 () Bool)

(assert (=> b!3173330 (= e!1976475 (and tp!1002654 tp!1002656))))

(assert (= (and b!3173264 ((_ is ElementMatch!9799) (regTwo!20111 r!4705))) b!3173329))

(assert (= (and b!3173264 ((_ is Concat!15120) (regTwo!20111 r!4705))) b!3173330))

(assert (= (and b!3173264 ((_ is Star!9799) (regTwo!20111 r!4705))) b!3173331))

(assert (= (and b!3173264 ((_ is Union!9799) (regTwo!20111 r!4705))) b!3173332))

(declare-fun e!1976478 () Bool)

(declare-fun tp!1002663 () Bool)

(declare-fun b!3173337 () Bool)

(declare-fun tp!1002665 () Bool)

(declare-fun tp!1002664 () Bool)

(assert (=> b!3173337 (= e!1976478 (and tp!1002663 tp_is_empty!17161 tp!1002664 tp!1002665))))

(assert (=> b!3173269 (= tp!1002628 e!1976478)))

(assert (= (and b!3173269 ((_ is Cons!35523) mapDefault!19115)) b!3173337))

(declare-fun b!3173338 () Bool)

(declare-fun e!1976479 () Bool)

(assert (=> b!3173338 (= e!1976479 tp_is_empty!17161)))

(declare-fun b!3173341 () Bool)

(declare-fun tp!1002667 () Bool)

(declare-fun tp!1002666 () Bool)

(assert (=> b!3173341 (= e!1976479 (and tp!1002667 tp!1002666))))

(assert (=> b!3173270 (= tp!1002626 e!1976479)))

(declare-fun b!3173340 () Bool)

(declare-fun tp!1002669 () Bool)

(assert (=> b!3173340 (= e!1976479 tp!1002669)))

(declare-fun b!3173339 () Bool)

(declare-fun tp!1002668 () Bool)

(declare-fun tp!1002670 () Bool)

(assert (=> b!3173339 (= e!1976479 (and tp!1002668 tp!1002670))))

(assert (= (and b!3173270 ((_ is ElementMatch!9799) (regOne!20110 r!4705))) b!3173338))

(assert (= (and b!3173270 ((_ is Concat!15120) (regOne!20110 r!4705))) b!3173339))

(assert (= (and b!3173270 ((_ is Star!9799) (regOne!20110 r!4705))) b!3173340))

(assert (= (and b!3173270 ((_ is Union!9799) (regOne!20110 r!4705))) b!3173341))

(declare-fun b!3173342 () Bool)

(declare-fun e!1976480 () Bool)

(assert (=> b!3173342 (= e!1976480 tp_is_empty!17161)))

(declare-fun b!3173345 () Bool)

(declare-fun tp!1002672 () Bool)

(declare-fun tp!1002671 () Bool)

(assert (=> b!3173345 (= e!1976480 (and tp!1002672 tp!1002671))))

(assert (=> b!3173270 (= tp!1002625 e!1976480)))

(declare-fun b!3173344 () Bool)

(declare-fun tp!1002674 () Bool)

(assert (=> b!3173344 (= e!1976480 tp!1002674)))

(declare-fun b!3173343 () Bool)

(declare-fun tp!1002673 () Bool)

(declare-fun tp!1002675 () Bool)

(assert (=> b!3173343 (= e!1976480 (and tp!1002673 tp!1002675))))

(assert (= (and b!3173270 ((_ is ElementMatch!9799) (regTwo!20110 r!4705))) b!3173342))

(assert (= (and b!3173270 ((_ is Concat!15120) (regTwo!20110 r!4705))) b!3173343))

(assert (= (and b!3173270 ((_ is Star!9799) (regTwo!20110 r!4705))) b!3173344))

(assert (= (and b!3173270 ((_ is Union!9799) (regTwo!20110 r!4705))) b!3173345))

(declare-fun b!3173346 () Bool)

(declare-fun e!1976481 () Bool)

(assert (=> b!3173346 (= e!1976481 tp_is_empty!17161)))

(declare-fun b!3173349 () Bool)

(declare-fun tp!1002677 () Bool)

(declare-fun tp!1002676 () Bool)

(assert (=> b!3173349 (= e!1976481 (and tp!1002677 tp!1002676))))

(assert (=> b!3173257 (= tp!1002630 e!1976481)))

(declare-fun b!3173348 () Bool)

(declare-fun tp!1002679 () Bool)

(assert (=> b!3173348 (= e!1976481 tp!1002679)))

(declare-fun b!3173347 () Bool)

(declare-fun tp!1002678 () Bool)

(declare-fun tp!1002680 () Bool)

(assert (=> b!3173347 (= e!1976481 (and tp!1002678 tp!1002680))))

(assert (= (and b!3173257 ((_ is ElementMatch!9799) (reg!10128 r!4705))) b!3173346))

(assert (= (and b!3173257 ((_ is Concat!15120) (reg!10128 r!4705))) b!3173347))

(assert (= (and b!3173257 ((_ is Star!9799) (reg!10128 r!4705))) b!3173348))

(assert (= (and b!3173257 ((_ is Union!9799) (reg!10128 r!4705))) b!3173349))

(declare-fun b!3173350 () Bool)

(declare-fun tp!1002683 () Bool)

(declare-fun e!1976482 () Bool)

(declare-fun tp!1002681 () Bool)

(declare-fun tp!1002682 () Bool)

(assert (=> b!3173350 (= e!1976482 (and tp!1002681 tp_is_empty!17161 tp!1002682 tp!1002683))))

(assert (=> b!3173266 (= tp!1002631 e!1976482)))

(assert (= (and b!3173266 ((_ is Cons!35523) (zeroValue!4479 (v!35292 (underlying!8669 (v!35293 (underlying!8670 (cache!4272 thiss!28445)))))))) b!3173350))

(declare-fun tp!1002686 () Bool)

(declare-fun e!1976483 () Bool)

(declare-fun tp!1002684 () Bool)

(declare-fun b!3173351 () Bool)

(declare-fun tp!1002685 () Bool)

(assert (=> b!3173351 (= e!1976483 (and tp!1002684 tp_is_empty!17161 tp!1002685 tp!1002686))))

(assert (=> b!3173266 (= tp!1002635 e!1976483)))

(assert (= (and b!3173266 ((_ is Cons!35523) (minValue!4479 (v!35292 (underlying!8669 (v!35293 (underlying!8670 (cache!4272 thiss!28445)))))))) b!3173351))

(declare-fun tp!1002703 () Bool)

(declare-fun e!1976488 () Bool)

(declare-fun b!3173358 () Bool)

(declare-fun tp!1002704 () Bool)

(declare-fun tp!1002705 () Bool)

(assert (=> b!3173358 (= e!1976488 (and tp!1002703 tp_is_empty!17161 tp!1002705 tp!1002704))))

(declare-fun mapNonEmpty!19118 () Bool)

(declare-fun mapRes!19118 () Bool)

(declare-fun tp!1002707 () Bool)

(assert (=> mapNonEmpty!19118 (= mapRes!19118 (and tp!1002707 e!1976488))))

(declare-fun mapValue!19118 () List!35647)

(declare-fun mapKey!19118 () (_ BitVec 32))

(declare-fun mapRest!19118 () (Array (_ BitVec 32) List!35647))

(assert (=> mapNonEmpty!19118 (= mapRest!19115 (store mapRest!19118 mapKey!19118 mapValue!19118))))

(declare-fun condMapEmpty!19118 () Bool)

(declare-fun mapDefault!19118 () List!35647)

(assert (=> mapNonEmpty!19115 (= condMapEmpty!19118 (= mapRest!19115 ((as const (Array (_ BitVec 32) List!35647)) mapDefault!19118)))))

(declare-fun e!1976489 () Bool)

(assert (=> mapNonEmpty!19115 (= tp!1002636 (and e!1976489 mapRes!19118))))

(declare-fun mapIsEmpty!19118 () Bool)

(assert (=> mapIsEmpty!19118 mapRes!19118))

(declare-fun b!3173359 () Bool)

(declare-fun tp!1002702 () Bool)

(declare-fun tp!1002701 () Bool)

(declare-fun tp!1002706 () Bool)

(assert (=> b!3173359 (= e!1976489 (and tp!1002706 tp_is_empty!17161 tp!1002701 tp!1002702))))

(assert (= (and mapNonEmpty!19115 condMapEmpty!19118) mapIsEmpty!19118))

(assert (= (and mapNonEmpty!19115 (not condMapEmpty!19118)) mapNonEmpty!19118))

(assert (= (and mapNonEmpty!19118 ((_ is Cons!35523) mapValue!19118)) b!3173358))

(assert (= (and mapNonEmpty!19115 ((_ is Cons!35523) mapDefault!19118)) b!3173359))

(declare-fun m!3431150 () Bool)

(assert (=> mapNonEmpty!19118 m!3431150))

(declare-fun b!3173360 () Bool)

(declare-fun tp!1002710 () Bool)

(declare-fun tp!1002709 () Bool)

(declare-fun e!1976490 () Bool)

(declare-fun tp!1002708 () Bool)

(assert (=> b!3173360 (= e!1976490 (and tp!1002708 tp_is_empty!17161 tp!1002709 tp!1002710))))

(assert (=> mapNonEmpty!19115 (= tp!1002632 e!1976490)))

(assert (= (and mapNonEmpty!19115 ((_ is Cons!35523) mapValue!19115)) b!3173360))

(check-sat (not b!3173340) (not b!3173337) (not b_next!84067) (not d!869369) (not b!3173350) tp_is_empty!17161 (not b_next!84065) (not b!3173345) (not b!3173348) (not b!3173347) (not b!3173286) (not b!3173360) (not b!3173349) (not bm!230630) (not b!3173327) (not b!3173278) (not b!3173331) (not b!3173277) b_and!209647 (not b!3173341) (not b!3173326) (not b!3173351) (not b!3173311) (not b!3173343) (not b!3173281) b_and!209649 (not b!3173328) (not b!3173332) (not b!3173339) (not b!3173287) (not b!3173359) (not b!3173330) (not mapNonEmpty!19118) (not d!869365) (not b!3173344) (not bm!230629) (not b!3173358))
(check-sat b_and!209647 b_and!209649 (not b_next!84065) (not b_next!84067))
