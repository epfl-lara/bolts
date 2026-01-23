; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296942 () Bool)

(assert start!296942)

(declare-fun b!3170129 () Bool)

(declare-fun b_free!83225 () Bool)

(declare-fun b_next!83929 () Bool)

(assert (=> b!3170129 (= b_free!83225 (not b_next!83929))))

(declare-fun tp!1000296 () Bool)

(declare-fun b_and!209503 () Bool)

(assert (=> b!3170129 (= tp!1000296 b_and!209503)))

(declare-fun b!3170138 () Bool)

(declare-fun b_free!83227 () Bool)

(declare-fun b_next!83931 () Bool)

(assert (=> b!3170138 (= b_free!83227 (not b_next!83931))))

(declare-fun tp!1000300 () Bool)

(declare-fun b_and!209505 () Bool)

(assert (=> b!3170138 (= tp!1000300 b_and!209505)))

(declare-fun b!3170127 () Bool)

(declare-fun res!1288765 () Bool)

(declare-fun e!1974450 () Bool)

(assert (=> b!3170127 (=> (not res!1288765) (not e!1974450))))

(declare-datatypes ((C!19716 0))(
  ( (C!19717 (val!11894 Int)) )
))
(declare-datatypes ((Regex!9765 0))(
  ( (ElementMatch!9765 (c!533124 C!19716)) (Concat!15086 (regOne!20042 Regex!9765) (regTwo!20042 Regex!9765)) (EmptyExpr!9765) (Star!9765 (reg!10094 Regex!9765)) (EmptyLang!9765) (Union!9765 (regOne!20043 Regex!9765) (regTwo!20043 Regex!9765)) )
))
(declare-fun r!4733 () Regex!9765)

(declare-fun res!14113 () Regex!9765)

(declare-fun c!6996 () C!19716)

(declare-fun derivativeStep!2907 (Regex!9765 C!19716) Regex!9765)

(assert (=> b!3170127 (= res!1288765 (= res!14113 (derivativeStep!2907 r!4733 c!6996)))))

(declare-fun b!3170128 () Bool)

(declare-fun e!1974442 () Bool)

(declare-fun tp!1000298 () Bool)

(assert (=> b!3170128 (= e!1974442 tp!1000298)))

(declare-fun e!1974440 () Bool)

(declare-fun e!1974441 () Bool)

(declare-datatypes ((tuple2!34700 0))(
  ( (tuple2!34701 (_1!20482 Regex!9765) (_2!20482 C!19716)) )
))
(declare-datatypes ((tuple2!34702 0))(
  ( (tuple2!34703 (_1!20483 tuple2!34700) (_2!20483 Regex!9765)) )
))
(declare-datatypes ((List!35605 0))(
  ( (Nil!35481) (Cons!35481 (h!40901 tuple2!34702) (t!234688 List!35605)) )
))
(declare-datatypes ((array!14968 0))(
  ( (array!14969 (arr!6662 (Array (_ BitVec 32) List!35605)) (size!26748 (_ BitVec 32))) )
))
(declare-datatypes ((array!14970 0))(
  ( (array!14971 (arr!6663 (Array (_ BitVec 32) (_ BitVec 64))) (size!26749 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8372 0))(
  ( (LongMapFixedSize!8373 (defaultEntry!4571 Int) (mask!10862 (_ BitVec 32)) (extraKeys!4435 (_ BitVec 32)) (zeroValue!4445 List!35605) (minValue!4445 List!35605) (_size!8415 (_ BitVec 32)) (_keys!4486 array!14970) (_values!4467 array!14968) (_vacant!4247 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16553 0))(
  ( (Cell!16554 (v!35209 LongMapFixedSize!8372)) )
))
(declare-datatypes ((MutLongMap!4186 0))(
  ( (LongMap!4186 (underlying!8601 Cell!16553)) (MutLongMapExt!4185 (__x!22664 Int)) )
))
(declare-datatypes ((Cell!16555 0))(
  ( (Cell!16556 (v!35210 MutLongMap!4186)) )
))
(declare-datatypes ((Hashable!4102 0))(
  ( (HashableExt!4101 (__x!22665 Int)) )
))
(declare-datatypes ((MutableMap!4092 0))(
  ( (MutableMapExt!4091 (__x!22666 Int)) (HashMap!4092 (underlying!8602 Cell!16555) (hashF!6134 Hashable!4102) (_size!8416 (_ BitVec 32)) (defaultValue!4263 Int)) )
))
(declare-datatypes ((Cache!454 0))(
  ( (Cache!455 (cache!4238 MutableMap!4092)) )
))
(declare-fun thiss!28524 () Cache!454)

(declare-fun tp!1000290 () Bool)

(declare-fun tp!1000293 () Bool)

(declare-fun array_inv!4778 (array!14970) Bool)

(declare-fun array_inv!4779 (array!14968) Bool)

(assert (=> b!3170129 (= e!1974440 (and tp!1000296 tp!1000293 tp!1000290 (array_inv!4778 (_keys!4486 (v!35209 (underlying!8601 (v!35210 (underlying!8602 (cache!4238 thiss!28524))))))) (array_inv!4779 (_values!4467 (v!35209 (underlying!8601 (v!35210 (underlying!8602 (cache!4238 thiss!28524))))))) e!1974441))))

(declare-fun mapNonEmpty!18977 () Bool)

(declare-fun mapRes!18977 () Bool)

(declare-fun tp!1000294 () Bool)

(declare-fun tp!1000297 () Bool)

(assert (=> mapNonEmpty!18977 (= mapRes!18977 (and tp!1000294 tp!1000297))))

(declare-fun mapValue!18977 () List!35605)

(declare-fun mapRest!18977 () (Array (_ BitVec 32) List!35605))

(declare-fun mapKey!18977 () (_ BitVec 32))

(assert (=> mapNonEmpty!18977 (= (arr!6662 (_values!4467 (v!35209 (underlying!8601 (v!35210 (underlying!8602 (cache!4238 thiss!28524))))))) (store mapRest!18977 mapKey!18977 mapValue!18977))))

(declare-fun b!3170130 () Bool)

(get-info :version)

(assert (=> b!3170130 (= e!1974450 (not ((_ is HashMap!4092) (cache!4238 thiss!28524))))))

(declare-fun mapIsEmpty!18977 () Bool)

(assert (=> mapIsEmpty!18977 mapRes!18977))

(declare-fun b!3170131 () Bool)

(declare-fun res!1288763 () Bool)

(assert (=> b!3170131 (=> (not res!1288763) (not e!1974450))))

(declare-fun validRegex!4480 (Regex!9765) Bool)

(assert (=> b!3170131 (= res!1288763 (validRegex!4480 r!4733))))

(declare-fun b!3170132 () Bool)

(declare-fun e!1974446 () Bool)

(declare-fun tp!1000289 () Bool)

(assert (=> b!3170132 (= e!1974446 tp!1000289)))

(declare-fun b!3170133 () Bool)

(declare-fun e!1974448 () Bool)

(declare-fun e!1974443 () Bool)

(declare-fun lt!1066067 () MutLongMap!4186)

(assert (=> b!3170133 (= e!1974448 (and e!1974443 ((_ is LongMap!4186) lt!1066067)))))

(assert (=> b!3170133 (= lt!1066067 (v!35210 (underlying!8602 (cache!4238 thiss!28524))))))

(declare-fun b!3170134 () Bool)

(declare-fun tp!1000295 () Bool)

(assert (=> b!3170134 (= e!1974441 (and tp!1000295 mapRes!18977))))

(declare-fun condMapEmpty!18977 () Bool)

(declare-fun mapDefault!18977 () List!35605)

(assert (=> b!3170134 (= condMapEmpty!18977 (= (arr!6662 (_values!4467 (v!35209 (underlying!8601 (v!35210 (underlying!8602 (cache!4238 thiss!28524))))))) ((as const (Array (_ BitVec 32) List!35605)) mapDefault!18977)))))

(declare-fun b!3170135 () Bool)

(declare-fun e!1974447 () Bool)

(assert (=> b!3170135 (= e!1974447 e!1974440)))

(declare-fun b!3170136 () Bool)

(declare-fun tp!1000301 () Bool)

(declare-fun tp!1000303 () Bool)

(assert (=> b!3170136 (= e!1974442 (and tp!1000301 tp!1000303))))

(declare-fun b!3170137 () Bool)

(declare-fun e!1974445 () Bool)

(declare-fun e!1974449 () Bool)

(assert (=> b!3170137 (= e!1974445 e!1974449)))

(assert (=> b!3170138 (= e!1974449 (and e!1974448 tp!1000300))))

(declare-fun b!3170139 () Bool)

(assert (=> b!3170139 (= e!1974443 e!1974447)))

(declare-fun b!3170140 () Bool)

(declare-fun tp!1000302 () Bool)

(declare-fun tp!1000291 () Bool)

(assert (=> b!3170140 (= e!1974442 (and tp!1000302 tp!1000291))))

(declare-fun res!1288764 () Bool)

(assert (=> start!296942 (=> (not res!1288764) (not e!1974450))))

(declare-fun validCacheMap!74 (MutableMap!4092) Bool)

(assert (=> start!296942 (= res!1288764 (validCacheMap!74 (cache!4238 thiss!28524)))))

(assert (=> start!296942 e!1974450))

(declare-fun inv!48176 (Cache!454) Bool)

(assert (=> start!296942 (and (inv!48176 thiss!28524) e!1974445)))

(assert (=> start!296942 e!1974446))

(assert (=> start!296942 e!1974442))

(declare-fun tp_is_empty!17093 () Bool)

(assert (=> start!296942 tp_is_empty!17093))

(declare-fun b!3170141 () Bool)

(assert (=> b!3170141 (= e!1974442 tp_is_empty!17093)))

(declare-fun b!3170142 () Bool)

(assert (=> b!3170142 (= e!1974446 tp_is_empty!17093)))

(declare-fun b!3170143 () Bool)

(declare-fun tp!1000299 () Bool)

(declare-fun tp!1000304 () Bool)

(assert (=> b!3170143 (= e!1974446 (and tp!1000299 tp!1000304))))

(declare-fun b!3170144 () Bool)

(declare-fun tp!1000288 () Bool)

(declare-fun tp!1000292 () Bool)

(assert (=> b!3170144 (= e!1974446 (and tp!1000288 tp!1000292))))

(assert (= (and start!296942 res!1288764) b!3170131))

(assert (= (and b!3170131 res!1288763) b!3170127))

(assert (= (and b!3170127 res!1288765) b!3170130))

(assert (= (and b!3170134 condMapEmpty!18977) mapIsEmpty!18977))

(assert (= (and b!3170134 (not condMapEmpty!18977)) mapNonEmpty!18977))

(assert (= b!3170129 b!3170134))

(assert (= b!3170135 b!3170129))

(assert (= b!3170139 b!3170135))

(assert (= (and b!3170133 ((_ is LongMap!4186) (v!35210 (underlying!8602 (cache!4238 thiss!28524))))) b!3170139))

(assert (= b!3170138 b!3170133))

(assert (= (and b!3170137 ((_ is HashMap!4092) (cache!4238 thiss!28524))) b!3170138))

(assert (= start!296942 b!3170137))

(assert (= (and start!296942 ((_ is ElementMatch!9765) r!4733)) b!3170142))

(assert (= (and start!296942 ((_ is Concat!15086) r!4733)) b!3170143))

(assert (= (and start!296942 ((_ is Star!9765) r!4733)) b!3170132))

(assert (= (and start!296942 ((_ is Union!9765) r!4733)) b!3170144))

(assert (= (and start!296942 ((_ is ElementMatch!9765) res!14113)) b!3170141))

(assert (= (and start!296942 ((_ is Concat!15086) res!14113)) b!3170140))

(assert (= (and start!296942 ((_ is Star!9765) res!14113)) b!3170128))

(assert (= (and start!296942 ((_ is Union!9765) res!14113)) b!3170136))

(declare-fun m!3429788 () Bool)

(assert (=> b!3170129 m!3429788))

(declare-fun m!3429790 () Bool)

(assert (=> b!3170129 m!3429790))

(declare-fun m!3429792 () Bool)

(assert (=> start!296942 m!3429792))

(declare-fun m!3429794 () Bool)

(assert (=> start!296942 m!3429794))

(declare-fun m!3429796 () Bool)

(assert (=> b!3170131 m!3429796))

(declare-fun m!3429798 () Bool)

(assert (=> b!3170127 m!3429798))

(declare-fun m!3429800 () Bool)

(assert (=> mapNonEmpty!18977 m!3429800))

(check-sat (not b!3170132) b_and!209503 (not b!3170144) (not b!3170140) (not b!3170143) (not mapNonEmpty!18977) (not b!3170127) (not b_next!83929) tp_is_empty!17093 (not b!3170134) b_and!209505 (not start!296942) (not b!3170131) (not b_next!83931) (not b!3170129) (not b!3170128) (not b!3170136))
(check-sat b_and!209505 b_and!209503 (not b_next!83929) (not b_next!83931))
(get-model)

(declare-fun b!3170163 () Bool)

(declare-fun e!1974465 () Bool)

(declare-fun e!1974467 () Bool)

(assert (=> b!3170163 (= e!1974465 e!1974467)))

(declare-fun c!533129 () Bool)

(assert (=> b!3170163 (= c!533129 ((_ is Union!9765) r!4733))))

(declare-fun c!533130 () Bool)

(declare-fun bm!230295 () Bool)

(declare-fun call!230302 () Bool)

(assert (=> bm!230295 (= call!230302 (validRegex!4480 (ite c!533130 (reg!10094 r!4733) (ite c!533129 (regOne!20043 r!4733) (regTwo!20042 r!4733)))))))

(declare-fun d!869166 () Bool)

(declare-fun res!1288779 () Bool)

(declare-fun e!1974468 () Bool)

(assert (=> d!869166 (=> res!1288779 e!1974468)))

(assert (=> d!869166 (= res!1288779 ((_ is ElementMatch!9765) r!4733))))

(assert (=> d!869166 (= (validRegex!4480 r!4733) e!1974468)))

(declare-fun bm!230296 () Bool)

(declare-fun call!230301 () Bool)

(assert (=> bm!230296 (= call!230301 call!230302)))

(declare-fun b!3170164 () Bool)

(declare-fun res!1288777 () Bool)

(declare-fun e!1974466 () Bool)

(assert (=> b!3170164 (=> res!1288777 e!1974466)))

(assert (=> b!3170164 (= res!1288777 (not ((_ is Concat!15086) r!4733)))))

(assert (=> b!3170164 (= e!1974467 e!1974466)))

(declare-fun b!3170165 () Bool)

(declare-fun res!1288778 () Bool)

(declare-fun e!1974469 () Bool)

(assert (=> b!3170165 (=> (not res!1288778) (not e!1974469))))

(assert (=> b!3170165 (= res!1288778 call!230301)))

(assert (=> b!3170165 (= e!1974467 e!1974469)))

(declare-fun b!3170166 () Bool)

(declare-fun e!1974470 () Bool)

(assert (=> b!3170166 (= e!1974470 call!230302)))

(declare-fun b!3170167 () Bool)

(declare-fun call!230300 () Bool)

(assert (=> b!3170167 (= e!1974469 call!230300)))

(declare-fun b!3170168 () Bool)

(declare-fun e!1974471 () Bool)

(assert (=> b!3170168 (= e!1974471 call!230301)))

(declare-fun b!3170169 () Bool)

(assert (=> b!3170169 (= e!1974465 e!1974470)))

(declare-fun res!1288776 () Bool)

(declare-fun nullable!3355 (Regex!9765) Bool)

(assert (=> b!3170169 (= res!1288776 (not (nullable!3355 (reg!10094 r!4733))))))

(assert (=> b!3170169 (=> (not res!1288776) (not e!1974470))))

(declare-fun bm!230297 () Bool)

(assert (=> bm!230297 (= call!230300 (validRegex!4480 (ite c!533129 (regTwo!20043 r!4733) (regOne!20042 r!4733))))))

(declare-fun b!3170170 () Bool)

(assert (=> b!3170170 (= e!1974466 e!1974471)))

(declare-fun res!1288780 () Bool)

(assert (=> b!3170170 (=> (not res!1288780) (not e!1974471))))

(assert (=> b!3170170 (= res!1288780 call!230300)))

(declare-fun b!3170171 () Bool)

(assert (=> b!3170171 (= e!1974468 e!1974465)))

(assert (=> b!3170171 (= c!533130 ((_ is Star!9765) r!4733))))

(assert (= (and d!869166 (not res!1288779)) b!3170171))

(assert (= (and b!3170171 c!533130) b!3170169))

(assert (= (and b!3170171 (not c!533130)) b!3170163))

(assert (= (and b!3170169 res!1288776) b!3170166))

(assert (= (and b!3170163 c!533129) b!3170165))

(assert (= (and b!3170163 (not c!533129)) b!3170164))

(assert (= (and b!3170165 res!1288778) b!3170167))

(assert (= (and b!3170164 (not res!1288777)) b!3170170))

(assert (= (and b!3170170 res!1288780) b!3170168))

(assert (= (or b!3170165 b!3170168) bm!230296))

(assert (= (or b!3170167 b!3170170) bm!230297))

(assert (= (or b!3170166 bm!230296) bm!230295))

(declare-fun m!3429802 () Bool)

(assert (=> bm!230295 m!3429802))

(declare-fun m!3429804 () Bool)

(assert (=> b!3170169 m!3429804))

(declare-fun m!3429806 () Bool)

(assert (=> bm!230297 m!3429806))

(assert (=> b!3170131 d!869166))

(declare-fun d!869168 () Bool)

(declare-fun lt!1066070 () Regex!9765)

(assert (=> d!869168 (validRegex!4480 lt!1066070)))

(declare-fun e!1974486 () Regex!9765)

(assert (=> d!869168 (= lt!1066070 e!1974486)))

(declare-fun c!533145 () Bool)

(assert (=> d!869168 (= c!533145 (or ((_ is EmptyExpr!9765) r!4733) ((_ is EmptyLang!9765) r!4733)))))

(assert (=> d!869168 (validRegex!4480 r!4733)))

(assert (=> d!869168 (= (derivativeStep!2907 r!4733 c!6996) lt!1066070)))

(declare-fun b!3170192 () Bool)

(declare-fun e!1974485 () Regex!9765)

(declare-fun e!1974483 () Regex!9765)

(assert (=> b!3170192 (= e!1974485 e!1974483)))

(declare-fun c!533143 () Bool)

(assert (=> b!3170192 (= c!533143 ((_ is Star!9765) r!4733))))

(declare-fun b!3170193 () Bool)

(declare-fun c!533144 () Bool)

(assert (=> b!3170193 (= c!533144 (nullable!3355 (regOne!20042 r!4733)))))

(declare-fun e!1974484 () Regex!9765)

(assert (=> b!3170193 (= e!1974483 e!1974484)))

(declare-fun bm!230306 () Bool)

(declare-fun call!230312 () Regex!9765)

(declare-fun call!230314 () Regex!9765)

(assert (=> bm!230306 (= call!230312 call!230314)))

(declare-fun bm!230307 () Bool)

(declare-fun call!230311 () Regex!9765)

(assert (=> bm!230307 (= call!230314 call!230311)))

(declare-fun c!533141 () Bool)

(declare-fun bm!230308 () Bool)

(declare-fun call!230313 () Regex!9765)

(assert (=> bm!230308 (= call!230313 (derivativeStep!2907 (ite c!533141 (regTwo!20043 r!4733) (regTwo!20042 r!4733)) c!6996))))

(declare-fun b!3170194 () Bool)

(declare-fun e!1974482 () Regex!9765)

(assert (=> b!3170194 (= e!1974482 (ite (= c!6996 (c!533124 r!4733)) EmptyExpr!9765 EmptyLang!9765))))

(declare-fun b!3170195 () Bool)

(assert (=> b!3170195 (= e!1974483 (Concat!15086 call!230314 r!4733))))

(declare-fun b!3170196 () Bool)

(assert (=> b!3170196 (= e!1974486 EmptyLang!9765)))

(declare-fun b!3170197 () Bool)

(assert (=> b!3170197 (= c!533141 ((_ is Union!9765) r!4733))))

(assert (=> b!3170197 (= e!1974482 e!1974485)))

(declare-fun b!3170198 () Bool)

(assert (=> b!3170198 (= e!1974486 e!1974482)))

(declare-fun c!533142 () Bool)

(assert (=> b!3170198 (= c!533142 ((_ is ElementMatch!9765) r!4733))))

(declare-fun bm!230309 () Bool)

(assert (=> bm!230309 (= call!230311 (derivativeStep!2907 (ite c!533141 (regOne!20043 r!4733) (ite c!533143 (reg!10094 r!4733) (regOne!20042 r!4733))) c!6996))))

(declare-fun b!3170199 () Bool)

(assert (=> b!3170199 (= e!1974484 (Union!9765 (Concat!15086 call!230312 (regTwo!20042 r!4733)) call!230313))))

(declare-fun b!3170200 () Bool)

(assert (=> b!3170200 (= e!1974485 (Union!9765 call!230311 call!230313))))

(declare-fun b!3170201 () Bool)

(assert (=> b!3170201 (= e!1974484 (Union!9765 (Concat!15086 call!230312 (regTwo!20042 r!4733)) EmptyLang!9765))))

(assert (= (and d!869168 c!533145) b!3170196))

(assert (= (and d!869168 (not c!533145)) b!3170198))

(assert (= (and b!3170198 c!533142) b!3170194))

(assert (= (and b!3170198 (not c!533142)) b!3170197))

(assert (= (and b!3170197 c!533141) b!3170200))

(assert (= (and b!3170197 (not c!533141)) b!3170192))

(assert (= (and b!3170192 c!533143) b!3170195))

(assert (= (and b!3170192 (not c!533143)) b!3170193))

(assert (= (and b!3170193 c!533144) b!3170199))

(assert (= (and b!3170193 (not c!533144)) b!3170201))

(assert (= (or b!3170199 b!3170201) bm!230306))

(assert (= (or b!3170195 bm!230306) bm!230307))

(assert (= (or b!3170200 b!3170199) bm!230308))

(assert (= (or b!3170200 bm!230307) bm!230309))

(declare-fun m!3429808 () Bool)

(assert (=> d!869168 m!3429808))

(assert (=> d!869168 m!3429796))

(declare-fun m!3429810 () Bool)

(assert (=> b!3170193 m!3429810))

(declare-fun m!3429812 () Bool)

(assert (=> bm!230308 m!3429812))

(declare-fun m!3429814 () Bool)

(assert (=> bm!230309 m!3429814))

(assert (=> b!3170127 d!869168))

(declare-fun d!869170 () Bool)

(declare-fun res!1288787 () Bool)

(declare-fun e!1974491 () Bool)

(assert (=> d!869170 (=> (not res!1288787) (not e!1974491))))

(declare-fun valid!3265 (MutableMap!4092) Bool)

(assert (=> d!869170 (= res!1288787 (valid!3265 (cache!4238 thiss!28524)))))

(assert (=> d!869170 (= (validCacheMap!74 (cache!4238 thiss!28524)) e!1974491)))

(declare-fun b!3170208 () Bool)

(declare-fun res!1288788 () Bool)

(assert (=> b!3170208 (=> (not res!1288788) (not e!1974491))))

(declare-fun invariantList!488 (List!35605) Bool)

(declare-datatypes ((ListMap!1327 0))(
  ( (ListMap!1328 (toList!2075 List!35605)) )
))
(declare-fun map!7933 (MutableMap!4092) ListMap!1327)

(assert (=> b!3170208 (= res!1288788 (invariantList!488 (toList!2075 (map!7933 (cache!4238 thiss!28524)))))))

(declare-fun b!3170209 () Bool)

(declare-fun lambda!115988 () Int)

(declare-fun forall!7162 (List!35605 Int) Bool)

(assert (=> b!3170209 (= e!1974491 (forall!7162 (toList!2075 (map!7933 (cache!4238 thiss!28524))) lambda!115988))))

(assert (= (and d!869170 res!1288787) b!3170208))

(assert (= (and b!3170208 res!1288788) b!3170209))

(declare-fun m!3429817 () Bool)

(assert (=> d!869170 m!3429817))

(declare-fun m!3429819 () Bool)

(assert (=> b!3170208 m!3429819))

(declare-fun m!3429821 () Bool)

(assert (=> b!3170208 m!3429821))

(assert (=> b!3170209 m!3429819))

(declare-fun m!3429823 () Bool)

(assert (=> b!3170209 m!3429823))

(assert (=> start!296942 d!869170))

(declare-fun d!869172 () Bool)

(declare-fun res!1288791 () Bool)

(declare-fun e!1974494 () Bool)

(assert (=> d!869172 (=> (not res!1288791) (not e!1974494))))

(assert (=> d!869172 (= res!1288791 ((_ is HashMap!4092) (cache!4238 thiss!28524)))))

(assert (=> d!869172 (= (inv!48176 thiss!28524) e!1974494)))

(declare-fun b!3170212 () Bool)

(assert (=> b!3170212 (= e!1974494 (validCacheMap!74 (cache!4238 thiss!28524)))))

(assert (= (and d!869172 res!1288791) b!3170212))

(assert (=> b!3170212 m!3429792))

(assert (=> start!296942 d!869172))

(declare-fun d!869174 () Bool)

(assert (=> d!869174 (= (array_inv!4778 (_keys!4486 (v!35209 (underlying!8601 (v!35210 (underlying!8602 (cache!4238 thiss!28524))))))) (bvsge (size!26749 (_keys!4486 (v!35209 (underlying!8601 (v!35210 (underlying!8602 (cache!4238 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3170129 d!869174))

(declare-fun d!869176 () Bool)

(assert (=> d!869176 (= (array_inv!4779 (_values!4467 (v!35209 (underlying!8601 (v!35210 (underlying!8602 (cache!4238 thiss!28524))))))) (bvsge (size!26748 (_values!4467 (v!35209 (underlying!8601 (v!35210 (underlying!8602 (cache!4238 thiss!28524))))))) #b00000000000000000000000000000000))))

(assert (=> b!3170129 d!869176))

(declare-fun b!3170223 () Bool)

(declare-fun e!1974497 () Bool)

(assert (=> b!3170223 (= e!1974497 tp_is_empty!17093)))

(declare-fun b!3170225 () Bool)

(declare-fun tp!1000315 () Bool)

(assert (=> b!3170225 (= e!1974497 tp!1000315)))

(declare-fun b!3170226 () Bool)

(declare-fun tp!1000319 () Bool)

(declare-fun tp!1000316 () Bool)

(assert (=> b!3170226 (= e!1974497 (and tp!1000319 tp!1000316))))

(assert (=> b!3170132 (= tp!1000289 e!1974497)))

(declare-fun b!3170224 () Bool)

(declare-fun tp!1000318 () Bool)

(declare-fun tp!1000317 () Bool)

(assert (=> b!3170224 (= e!1974497 (and tp!1000318 tp!1000317))))

(assert (= (and b!3170132 ((_ is ElementMatch!9765) (reg!10094 r!4733))) b!3170223))

(assert (= (and b!3170132 ((_ is Concat!15086) (reg!10094 r!4733))) b!3170224))

(assert (= (and b!3170132 ((_ is Star!9765) (reg!10094 r!4733))) b!3170225))

(assert (= (and b!3170132 ((_ is Union!9765) (reg!10094 r!4733))) b!3170226))

(declare-fun b!3170227 () Bool)

(declare-fun e!1974498 () Bool)

(assert (=> b!3170227 (= e!1974498 tp_is_empty!17093)))

(declare-fun b!3170229 () Bool)

(declare-fun tp!1000320 () Bool)

(assert (=> b!3170229 (= e!1974498 tp!1000320)))

(declare-fun b!3170230 () Bool)

(declare-fun tp!1000324 () Bool)

(declare-fun tp!1000321 () Bool)

(assert (=> b!3170230 (= e!1974498 (and tp!1000324 tp!1000321))))

(assert (=> b!3170128 (= tp!1000298 e!1974498)))

(declare-fun b!3170228 () Bool)

(declare-fun tp!1000323 () Bool)

(declare-fun tp!1000322 () Bool)

(assert (=> b!3170228 (= e!1974498 (and tp!1000323 tp!1000322))))

(assert (= (and b!3170128 ((_ is ElementMatch!9765) (reg!10094 res!14113))) b!3170227))

(assert (= (and b!3170128 ((_ is Concat!15086) (reg!10094 res!14113))) b!3170228))

(assert (= (and b!3170128 ((_ is Star!9765) (reg!10094 res!14113))) b!3170229))

(assert (= (and b!3170128 ((_ is Union!9765) (reg!10094 res!14113))) b!3170230))

(declare-fun b!3170231 () Bool)

(declare-fun e!1974499 () Bool)

(assert (=> b!3170231 (= e!1974499 tp_is_empty!17093)))

(declare-fun b!3170233 () Bool)

(declare-fun tp!1000325 () Bool)

(assert (=> b!3170233 (= e!1974499 tp!1000325)))

(declare-fun b!3170234 () Bool)

(declare-fun tp!1000329 () Bool)

(declare-fun tp!1000326 () Bool)

(assert (=> b!3170234 (= e!1974499 (and tp!1000329 tp!1000326))))

(assert (=> b!3170136 (= tp!1000301 e!1974499)))

(declare-fun b!3170232 () Bool)

(declare-fun tp!1000328 () Bool)

(declare-fun tp!1000327 () Bool)

(assert (=> b!3170232 (= e!1974499 (and tp!1000328 tp!1000327))))

(assert (= (and b!3170136 ((_ is ElementMatch!9765) (regOne!20043 res!14113))) b!3170231))

(assert (= (and b!3170136 ((_ is Concat!15086) (regOne!20043 res!14113))) b!3170232))

(assert (= (and b!3170136 ((_ is Star!9765) (regOne!20043 res!14113))) b!3170233))

(assert (= (and b!3170136 ((_ is Union!9765) (regOne!20043 res!14113))) b!3170234))

(declare-fun b!3170235 () Bool)

(declare-fun e!1974500 () Bool)

(assert (=> b!3170235 (= e!1974500 tp_is_empty!17093)))

(declare-fun b!3170237 () Bool)

(declare-fun tp!1000330 () Bool)

(assert (=> b!3170237 (= e!1974500 tp!1000330)))

(declare-fun b!3170238 () Bool)

(declare-fun tp!1000334 () Bool)

(declare-fun tp!1000331 () Bool)

(assert (=> b!3170238 (= e!1974500 (and tp!1000334 tp!1000331))))

(assert (=> b!3170136 (= tp!1000303 e!1974500)))

(declare-fun b!3170236 () Bool)

(declare-fun tp!1000333 () Bool)

(declare-fun tp!1000332 () Bool)

(assert (=> b!3170236 (= e!1974500 (and tp!1000333 tp!1000332))))

(assert (= (and b!3170136 ((_ is ElementMatch!9765) (regTwo!20043 res!14113))) b!3170235))

(assert (= (and b!3170136 ((_ is Concat!15086) (regTwo!20043 res!14113))) b!3170236))

(assert (= (and b!3170136 ((_ is Star!9765) (regTwo!20043 res!14113))) b!3170237))

(assert (= (and b!3170136 ((_ is Union!9765) (regTwo!20043 res!14113))) b!3170238))

(declare-fun b!3170239 () Bool)

(declare-fun e!1974501 () Bool)

(assert (=> b!3170239 (= e!1974501 tp_is_empty!17093)))

(declare-fun b!3170241 () Bool)

(declare-fun tp!1000335 () Bool)

(assert (=> b!3170241 (= e!1974501 tp!1000335)))

(declare-fun b!3170242 () Bool)

(declare-fun tp!1000339 () Bool)

(declare-fun tp!1000336 () Bool)

(assert (=> b!3170242 (= e!1974501 (and tp!1000339 tp!1000336))))

(assert (=> b!3170140 (= tp!1000302 e!1974501)))

(declare-fun b!3170240 () Bool)

(declare-fun tp!1000338 () Bool)

(declare-fun tp!1000337 () Bool)

(assert (=> b!3170240 (= e!1974501 (and tp!1000338 tp!1000337))))

(assert (= (and b!3170140 ((_ is ElementMatch!9765) (regOne!20042 res!14113))) b!3170239))

(assert (= (and b!3170140 ((_ is Concat!15086) (regOne!20042 res!14113))) b!3170240))

(assert (= (and b!3170140 ((_ is Star!9765) (regOne!20042 res!14113))) b!3170241))

(assert (= (and b!3170140 ((_ is Union!9765) (regOne!20042 res!14113))) b!3170242))

(declare-fun b!3170243 () Bool)

(declare-fun e!1974502 () Bool)

(assert (=> b!3170243 (= e!1974502 tp_is_empty!17093)))

(declare-fun b!3170245 () Bool)

(declare-fun tp!1000340 () Bool)

(assert (=> b!3170245 (= e!1974502 tp!1000340)))

(declare-fun b!3170246 () Bool)

(declare-fun tp!1000344 () Bool)

(declare-fun tp!1000341 () Bool)

(assert (=> b!3170246 (= e!1974502 (and tp!1000344 tp!1000341))))

(assert (=> b!3170140 (= tp!1000291 e!1974502)))

(declare-fun b!3170244 () Bool)

(declare-fun tp!1000343 () Bool)

(declare-fun tp!1000342 () Bool)

(assert (=> b!3170244 (= e!1974502 (and tp!1000343 tp!1000342))))

(assert (= (and b!3170140 ((_ is ElementMatch!9765) (regTwo!20042 res!14113))) b!3170243))

(assert (= (and b!3170140 ((_ is Concat!15086) (regTwo!20042 res!14113))) b!3170244))

(assert (= (and b!3170140 ((_ is Star!9765) (regTwo!20042 res!14113))) b!3170245))

(assert (= (and b!3170140 ((_ is Union!9765) (regTwo!20042 res!14113))) b!3170246))

(declare-fun b!3170251 () Bool)

(declare-fun tp!1000351 () Bool)

(declare-fun tp!1000352 () Bool)

(declare-fun e!1974505 () Bool)

(declare-fun tp!1000353 () Bool)

(assert (=> b!3170251 (= e!1974505 (and tp!1000351 tp_is_empty!17093 tp!1000352 tp!1000353))))

(assert (=> b!3170134 (= tp!1000295 e!1974505)))

(assert (= (and b!3170134 ((_ is Cons!35481) mapDefault!18977)) b!3170251))

(declare-fun tp!1000368 () Bool)

(declare-fun e!1974511 () Bool)

(declare-fun tp!1000369 () Bool)

(declare-fun b!3170259 () Bool)

(declare-fun tp!1000370 () Bool)

(assert (=> b!3170259 (= e!1974511 (and tp!1000369 tp_is_empty!17093 tp!1000368 tp!1000370))))

(declare-fun condMapEmpty!18980 () Bool)

(declare-fun mapDefault!18980 () List!35605)

(assert (=> mapNonEmpty!18977 (= condMapEmpty!18980 (= mapRest!18977 ((as const (Array (_ BitVec 32) List!35605)) mapDefault!18980)))))

(declare-fun mapRes!18980 () Bool)

(assert (=> mapNonEmpty!18977 (= tp!1000294 (and e!1974511 mapRes!18980))))

(declare-fun mapIsEmpty!18980 () Bool)

(assert (=> mapIsEmpty!18980 mapRes!18980))

(declare-fun tp!1000372 () Bool)

(declare-fun e!1974510 () Bool)

(declare-fun tp!1000374 () Bool)

(declare-fun b!3170258 () Bool)

(declare-fun tp!1000373 () Bool)

(assert (=> b!3170258 (= e!1974510 (and tp!1000372 tp_is_empty!17093 tp!1000373 tp!1000374))))

(declare-fun mapNonEmpty!18980 () Bool)

(declare-fun tp!1000371 () Bool)

(assert (=> mapNonEmpty!18980 (= mapRes!18980 (and tp!1000371 e!1974510))))

(declare-fun mapValue!18980 () List!35605)

(declare-fun mapRest!18980 () (Array (_ BitVec 32) List!35605))

(declare-fun mapKey!18980 () (_ BitVec 32))

(assert (=> mapNonEmpty!18980 (= mapRest!18977 (store mapRest!18980 mapKey!18980 mapValue!18980))))

(assert (= (and mapNonEmpty!18977 condMapEmpty!18980) mapIsEmpty!18980))

(assert (= (and mapNonEmpty!18977 (not condMapEmpty!18980)) mapNonEmpty!18980))

(assert (= (and mapNonEmpty!18980 ((_ is Cons!35481) mapValue!18980)) b!3170258))

(assert (= (and mapNonEmpty!18977 ((_ is Cons!35481) mapDefault!18980)) b!3170259))

(declare-fun m!3429825 () Bool)

(assert (=> mapNonEmpty!18980 m!3429825))

(declare-fun e!1974512 () Bool)

(declare-fun tp!1000375 () Bool)

(declare-fun tp!1000376 () Bool)

(declare-fun tp!1000377 () Bool)

(declare-fun b!3170260 () Bool)

(assert (=> b!3170260 (= e!1974512 (and tp!1000375 tp_is_empty!17093 tp!1000376 tp!1000377))))

(assert (=> mapNonEmpty!18977 (= tp!1000297 e!1974512)))

(assert (= (and mapNonEmpty!18977 ((_ is Cons!35481) mapValue!18977)) b!3170260))

(declare-fun b!3170261 () Bool)

(declare-fun e!1974513 () Bool)

(assert (=> b!3170261 (= e!1974513 tp_is_empty!17093)))

(declare-fun b!3170263 () Bool)

(declare-fun tp!1000378 () Bool)

(assert (=> b!3170263 (= e!1974513 tp!1000378)))

(declare-fun b!3170264 () Bool)

(declare-fun tp!1000382 () Bool)

(declare-fun tp!1000379 () Bool)

(assert (=> b!3170264 (= e!1974513 (and tp!1000382 tp!1000379))))

(assert (=> b!3170144 (= tp!1000288 e!1974513)))

(declare-fun b!3170262 () Bool)

(declare-fun tp!1000381 () Bool)

(declare-fun tp!1000380 () Bool)

(assert (=> b!3170262 (= e!1974513 (and tp!1000381 tp!1000380))))

(assert (= (and b!3170144 ((_ is ElementMatch!9765) (regOne!20043 r!4733))) b!3170261))

(assert (= (and b!3170144 ((_ is Concat!15086) (regOne!20043 r!4733))) b!3170262))

(assert (= (and b!3170144 ((_ is Star!9765) (regOne!20043 r!4733))) b!3170263))

(assert (= (and b!3170144 ((_ is Union!9765) (regOne!20043 r!4733))) b!3170264))

(declare-fun b!3170265 () Bool)

(declare-fun e!1974514 () Bool)

(assert (=> b!3170265 (= e!1974514 tp_is_empty!17093)))

(declare-fun b!3170267 () Bool)

(declare-fun tp!1000383 () Bool)

(assert (=> b!3170267 (= e!1974514 tp!1000383)))

(declare-fun b!3170268 () Bool)

(declare-fun tp!1000387 () Bool)

(declare-fun tp!1000384 () Bool)

(assert (=> b!3170268 (= e!1974514 (and tp!1000387 tp!1000384))))

(assert (=> b!3170144 (= tp!1000292 e!1974514)))

(declare-fun b!3170266 () Bool)

(declare-fun tp!1000386 () Bool)

(declare-fun tp!1000385 () Bool)

(assert (=> b!3170266 (= e!1974514 (and tp!1000386 tp!1000385))))

(assert (= (and b!3170144 ((_ is ElementMatch!9765) (regTwo!20043 r!4733))) b!3170265))

(assert (= (and b!3170144 ((_ is Concat!15086) (regTwo!20043 r!4733))) b!3170266))

(assert (= (and b!3170144 ((_ is Star!9765) (regTwo!20043 r!4733))) b!3170267))

(assert (= (and b!3170144 ((_ is Union!9765) (regTwo!20043 r!4733))) b!3170268))

(declare-fun tp!1000388 () Bool)

(declare-fun tp!1000389 () Bool)

(declare-fun e!1974515 () Bool)

(declare-fun tp!1000390 () Bool)

(declare-fun b!3170269 () Bool)

(assert (=> b!3170269 (= e!1974515 (and tp!1000388 tp_is_empty!17093 tp!1000389 tp!1000390))))

(assert (=> b!3170129 (= tp!1000293 e!1974515)))

(assert (= (and b!3170129 ((_ is Cons!35481) (zeroValue!4445 (v!35209 (underlying!8601 (v!35210 (underlying!8602 (cache!4238 thiss!28524)))))))) b!3170269))

(declare-fun tp!1000391 () Bool)

(declare-fun tp!1000393 () Bool)

(declare-fun e!1974516 () Bool)

(declare-fun tp!1000392 () Bool)

(declare-fun b!3170270 () Bool)

(assert (=> b!3170270 (= e!1974516 (and tp!1000391 tp_is_empty!17093 tp!1000392 tp!1000393))))

(assert (=> b!3170129 (= tp!1000290 e!1974516)))

(assert (= (and b!3170129 ((_ is Cons!35481) (minValue!4445 (v!35209 (underlying!8601 (v!35210 (underlying!8602 (cache!4238 thiss!28524)))))))) b!3170270))

(declare-fun b!3170271 () Bool)

(declare-fun e!1974517 () Bool)

(assert (=> b!3170271 (= e!1974517 tp_is_empty!17093)))

(declare-fun b!3170273 () Bool)

(declare-fun tp!1000394 () Bool)

(assert (=> b!3170273 (= e!1974517 tp!1000394)))

(declare-fun b!3170274 () Bool)

(declare-fun tp!1000398 () Bool)

(declare-fun tp!1000395 () Bool)

(assert (=> b!3170274 (= e!1974517 (and tp!1000398 tp!1000395))))

(assert (=> b!3170143 (= tp!1000299 e!1974517)))

(declare-fun b!3170272 () Bool)

(declare-fun tp!1000397 () Bool)

(declare-fun tp!1000396 () Bool)

(assert (=> b!3170272 (= e!1974517 (and tp!1000397 tp!1000396))))

(assert (= (and b!3170143 ((_ is ElementMatch!9765) (regOne!20042 r!4733))) b!3170271))

(assert (= (and b!3170143 ((_ is Concat!15086) (regOne!20042 r!4733))) b!3170272))

(assert (= (and b!3170143 ((_ is Star!9765) (regOne!20042 r!4733))) b!3170273))

(assert (= (and b!3170143 ((_ is Union!9765) (regOne!20042 r!4733))) b!3170274))

(declare-fun b!3170275 () Bool)

(declare-fun e!1974518 () Bool)

(assert (=> b!3170275 (= e!1974518 tp_is_empty!17093)))

(declare-fun b!3170277 () Bool)

(declare-fun tp!1000399 () Bool)

(assert (=> b!3170277 (= e!1974518 tp!1000399)))

(declare-fun b!3170278 () Bool)

(declare-fun tp!1000403 () Bool)

(declare-fun tp!1000400 () Bool)

(assert (=> b!3170278 (= e!1974518 (and tp!1000403 tp!1000400))))

(assert (=> b!3170143 (= tp!1000304 e!1974518)))

(declare-fun b!3170276 () Bool)

(declare-fun tp!1000402 () Bool)

(declare-fun tp!1000401 () Bool)

(assert (=> b!3170276 (= e!1974518 (and tp!1000402 tp!1000401))))

(assert (= (and b!3170143 ((_ is ElementMatch!9765) (regTwo!20042 r!4733))) b!3170275))

(assert (= (and b!3170143 ((_ is Concat!15086) (regTwo!20042 r!4733))) b!3170276))

(assert (= (and b!3170143 ((_ is Star!9765) (regTwo!20042 r!4733))) b!3170277))

(assert (= (and b!3170143 ((_ is Union!9765) (regTwo!20042 r!4733))) b!3170278))

(check-sat (not bm!230309) (not b!3170260) (not b!3170276) (not b!3170245) (not b!3170258) (not b!3170274) (not b!3170230) (not b!3170246) (not b!3170268) (not d!869168) (not b!3170240) (not bm!230295) b_and!209503 (not b_next!83929) (not b!3170251) tp_is_empty!17093 (not b!3170270) (not b!3170212) (not b!3170242) (not b!3170228) (not b!3170262) (not b!3170232) (not bm!230308) (not mapNonEmpty!18980) (not b!3170234) (not b!3170169) (not bm!230297) b_and!209505 (not b!3170263) (not b!3170273) (not b!3170272) (not b!3170241) (not b!3170225) (not b!3170208) (not b!3170278) (not b!3170226) (not b!3170209) (not b!3170277) (not b!3170236) (not b!3170267) (not b!3170244) (not b!3170266) (not b!3170233) (not b!3170237) (not b_next!83931) (not b!3170259) (not d!869170) (not b!3170269) (not b!3170193) (not b!3170238) (not b!3170264) (not b!3170224) (not b!3170229))
(check-sat b_and!209505 b_and!209503 (not b_next!83929) (not b_next!83931))
