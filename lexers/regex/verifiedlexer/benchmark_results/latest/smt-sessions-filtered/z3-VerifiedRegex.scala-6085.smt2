; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296444 () Bool)

(assert start!296444)

(declare-fun b!3162510 () Bool)

(declare-fun b_free!83049 () Bool)

(declare-fun b_next!83753 () Bool)

(assert (=> b!3162510 (= b_free!83049 (not b_next!83753))))

(declare-fun tp!995536 () Bool)

(declare-fun b_and!209295 () Bool)

(assert (=> b!3162510 (= tp!995536 b_and!209295)))

(declare-fun b!3162509 () Bool)

(declare-fun b_free!83051 () Bool)

(declare-fun b_next!83755 () Bool)

(assert (=> b!3162509 (= b_free!83051 (not b_next!83755))))

(declare-fun tp!995530 () Bool)

(declare-fun b_and!209297 () Bool)

(assert (=> b!3162509 (= tp!995530 b_and!209297)))

(declare-fun b!3162503 () Bool)

(declare-fun e!1970205 () Bool)

(declare-fun e!1970204 () Bool)

(assert (=> b!3162503 (= e!1970205 e!1970204)))

(declare-fun b!3162504 () Bool)

(declare-fun res!1287389 () Bool)

(declare-fun e!1970210 () Bool)

(assert (=> b!3162504 (=> (not res!1287389) (not e!1970210))))

(declare-datatypes ((C!19628 0))(
  ( (C!19629 (val!11850 Int)) )
))
(declare-datatypes ((Regex!9721 0))(
  ( (ElementMatch!9721 (c!531795 C!19628)) (Concat!15042 (regOne!19954 Regex!9721) (regTwo!19954 Regex!9721)) (EmptyExpr!9721) (Star!9721 (reg!10050 Regex!9721)) (EmptyLang!9721) (Union!9721 (regOne!19955 Regex!9721) (regTwo!19955 Regex!9721)) )
))
(declare-fun r!13156 () Regex!9721)

(declare-fun nullable!3335 (Regex!9721) Bool)

(assert (=> b!3162504 (= res!1287389 (nullable!3335 (regOne!19954 r!13156)))))

(declare-fun b!3162505 () Bool)

(declare-fun e!1970209 () Bool)

(declare-fun e!1970202 () Bool)

(assert (=> b!3162505 (= e!1970209 e!1970202)))

(declare-fun b!3162506 () Bool)

(declare-fun res!1287390 () Bool)

(assert (=> b!3162506 (=> (not res!1287390) (not e!1970210))))

(declare-datatypes ((tuple2!34424 0))(
  ( (tuple2!34425 (_1!20344 Regex!9721) (_2!20344 C!19628)) )
))
(declare-datatypes ((tuple2!34426 0))(
  ( (tuple2!34427 (_1!20345 tuple2!34424) (_2!20345 Regex!9721)) )
))
(declare-datatypes ((array!14760 0))(
  ( (array!14761 (arr!6574 (Array (_ BitVec 32) (_ BitVec 64))) (size!26660 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4058 0))(
  ( (HashableExt!4057 (__x!22532 Int)) )
))
(declare-datatypes ((List!35550 0))(
  ( (Nil!35426) (Cons!35426 (h!40846 tuple2!34426) (t!234617 List!35550)) )
))
(declare-datatypes ((array!14762 0))(
  ( (array!14763 (arr!6575 (Array (_ BitVec 32) List!35550)) (size!26661 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8284 0))(
  ( (LongMapFixedSize!8285 (defaultEntry!4527 Int) (mask!10796 (_ BitVec 32)) (extraKeys!4391 (_ BitVec 32)) (zeroValue!4401 List!35550) (minValue!4401 List!35550) (_size!8327 (_ BitVec 32)) (_keys!4442 array!14760) (_values!4423 array!14762) (_vacant!4203 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16377 0))(
  ( (Cell!16378 (v!35077 LongMapFixedSize!8284)) )
))
(declare-datatypes ((MutLongMap!4142 0))(
  ( (LongMap!4142 (underlying!8513 Cell!16377)) (MutLongMapExt!4141 (__x!22533 Int)) )
))
(declare-datatypes ((Cell!16379 0))(
  ( (Cell!16380 (v!35078 MutLongMap!4142)) )
))
(declare-datatypes ((MutableMap!4048 0))(
  ( (MutableMapExt!4047 (__x!22534 Int)) (HashMap!4048 (underlying!8514 Cell!16379) (hashF!6090 Hashable!4058) (_size!8328 (_ BitVec 32)) (defaultValue!4219 Int)) )
))
(declare-datatypes ((Cache!366 0))(
  ( (Cache!367 (cache!4188 MutableMap!4048)) )
))
(declare-fun cache!347 () Cache!366)

(declare-fun a!2409 () C!19628)

(get-info :version)

(declare-datatypes ((Option!6882 0))(
  ( (None!6881) (Some!6881 (v!35079 Regex!9721)) )
))
(declare-fun get!11214 (Cache!366 Regex!9721 C!19628) Option!6882)

(assert (=> b!3162506 (= res!1287390 (not ((_ is Some!6881) (get!11214 cache!347 r!13156 a!2409))))))

(declare-fun b!3162507 () Bool)

(declare-fun e!1970207 () Bool)

(declare-datatypes ((tuple2!34428 0))(
  ( (tuple2!34429 (_1!20346 Regex!9721) (_2!20346 Cache!366)) )
))
(declare-fun lt!1063169 () tuple2!34428)

(declare-fun valid!3226 (Cache!366) Bool)

(assert (=> b!3162507 (= e!1970207 (not (valid!3226 (_2!20346 lt!1063169))))))

(declare-fun b!3162508 () Bool)

(declare-fun e!1970211 () Bool)

(declare-fun tp!995539 () Bool)

(assert (=> b!3162508 (= e!1970211 tp!995539)))

(declare-fun e!1970208 () Bool)

(assert (=> b!3162509 (= e!1970202 (and e!1970208 tp!995530))))

(declare-fun e!1970201 () Bool)

(declare-fun tp!995533 () Bool)

(declare-fun e!1970206 () Bool)

(declare-fun tp!995531 () Bool)

(declare-fun array_inv!4710 (array!14760) Bool)

(declare-fun array_inv!4711 (array!14762) Bool)

(assert (=> b!3162510 (= e!1970206 (and tp!995536 tp!995533 tp!995531 (array_inv!4710 (_keys!4442 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))) (array_inv!4711 (_values!4423 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))) e!1970201))))

(declare-fun b!3162511 () Bool)

(declare-fun tp!995540 () Bool)

(declare-fun tp!995534 () Bool)

(assert (=> b!3162511 (= e!1970211 (and tp!995540 tp!995534))))

(declare-fun b!3162512 () Bool)

(declare-fun res!1287387 () Bool)

(assert (=> b!3162512 (=> (not res!1287387) (not e!1970210))))

(assert (=> b!3162512 (= res!1287387 (valid!3226 cache!347))))

(declare-fun b!3162513 () Bool)

(declare-fun res!1287386 () Bool)

(assert (=> b!3162513 (=> (not res!1287386) (not e!1970210))))

(assert (=> b!3162513 (= res!1287386 (and (not ((_ is EmptyExpr!9721) r!13156)) (not ((_ is EmptyLang!9721) r!13156)) (not ((_ is ElementMatch!9721) r!13156)) (not ((_ is Union!9721) r!13156)) (not ((_ is Star!9721) r!13156))))))

(declare-fun b!3162514 () Bool)

(declare-fun tp_is_empty!17005 () Bool)

(assert (=> b!3162514 (= e!1970211 tp_is_empty!17005)))

(declare-fun mapNonEmpty!18789 () Bool)

(declare-fun mapRes!18789 () Bool)

(declare-fun tp!995541 () Bool)

(declare-fun tp!995532 () Bool)

(assert (=> mapNonEmpty!18789 (= mapRes!18789 (and tp!995541 tp!995532))))

(declare-fun mapRest!18789 () (Array (_ BitVec 32) List!35550))

(declare-fun mapKey!18789 () (_ BitVec 32))

(declare-fun mapValue!18789 () List!35550)

(assert (=> mapNonEmpty!18789 (= (arr!6575 (_values!4423 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))) (store mapRest!18789 mapKey!18789 mapValue!18789))))

(declare-fun b!3162515 () Bool)

(declare-fun lt!1063168 () MutLongMap!4142)

(assert (=> b!3162515 (= e!1970208 (and e!1970205 ((_ is LongMap!4142) lt!1063168)))))

(assert (=> b!3162515 (= lt!1063168 (v!35078 (underlying!8514 (cache!4188 cache!347))))))

(declare-fun b!3162516 () Bool)

(assert (=> b!3162516 (= e!1970204 e!1970206)))

(declare-fun b!3162517 () Bool)

(assert (=> b!3162517 (= e!1970210 e!1970207)))

(declare-fun res!1287385 () Bool)

(assert (=> b!3162517 (=> (not res!1287385) (not e!1970207))))

(declare-fun validRegex!4447 (Regex!9721) Bool)

(assert (=> b!3162517 (= res!1287385 (validRegex!4447 (regTwo!19954 r!13156)))))

(declare-fun derivativeStepMem!22 (Regex!9721 C!19628 Cache!366) tuple2!34428)

(assert (=> b!3162517 (= lt!1063169 (derivativeStepMem!22 (regOne!19954 r!13156) a!2409 cache!347))))

(declare-fun mapIsEmpty!18789 () Bool)

(assert (=> mapIsEmpty!18789 mapRes!18789))

(declare-fun res!1287388 () Bool)

(assert (=> start!296444 (=> (not res!1287388) (not e!1970210))))

(assert (=> start!296444 (= res!1287388 (validRegex!4447 r!13156))))

(assert (=> start!296444 e!1970210))

(assert (=> start!296444 e!1970211))

(declare-fun inv!48077 (Cache!366) Bool)

(assert (=> start!296444 (and (inv!48077 cache!347) e!1970209)))

(assert (=> start!296444 tp_is_empty!17005))

(declare-fun b!3162518 () Bool)

(declare-fun tp!995538 () Bool)

(declare-fun tp!995537 () Bool)

(assert (=> b!3162518 (= e!1970211 (and tp!995538 tp!995537))))

(declare-fun b!3162519 () Bool)

(declare-fun tp!995535 () Bool)

(assert (=> b!3162519 (= e!1970201 (and tp!995535 mapRes!18789))))

(declare-fun condMapEmpty!18789 () Bool)

(declare-fun mapDefault!18789 () List!35550)

(assert (=> b!3162519 (= condMapEmpty!18789 (= (arr!6575 (_values!4423 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))) ((as const (Array (_ BitVec 32) List!35550)) mapDefault!18789)))))

(assert (= (and start!296444 res!1287388) b!3162512))

(assert (= (and b!3162512 res!1287387) b!3162506))

(assert (= (and b!3162506 res!1287390) b!3162513))

(assert (= (and b!3162513 res!1287386) b!3162504))

(assert (= (and b!3162504 res!1287389) b!3162517))

(assert (= (and b!3162517 res!1287385) b!3162507))

(assert (= (and start!296444 ((_ is ElementMatch!9721) r!13156)) b!3162514))

(assert (= (and start!296444 ((_ is Concat!15042) r!13156)) b!3162518))

(assert (= (and start!296444 ((_ is Star!9721) r!13156)) b!3162508))

(assert (= (and start!296444 ((_ is Union!9721) r!13156)) b!3162511))

(assert (= (and b!3162519 condMapEmpty!18789) mapIsEmpty!18789))

(assert (= (and b!3162519 (not condMapEmpty!18789)) mapNonEmpty!18789))

(assert (= b!3162510 b!3162519))

(assert (= b!3162516 b!3162510))

(assert (= b!3162503 b!3162516))

(assert (= (and b!3162515 ((_ is LongMap!4142) (v!35078 (underlying!8514 (cache!4188 cache!347))))) b!3162503))

(assert (= b!3162509 b!3162515))

(assert (= (and b!3162505 ((_ is HashMap!4048) (cache!4188 cache!347))) b!3162509))

(assert (= start!296444 b!3162505))

(declare-fun m!3426318 () Bool)

(assert (=> b!3162507 m!3426318))

(declare-fun m!3426320 () Bool)

(assert (=> start!296444 m!3426320))

(declare-fun m!3426322 () Bool)

(assert (=> start!296444 m!3426322))

(declare-fun m!3426324 () Bool)

(assert (=> mapNonEmpty!18789 m!3426324))

(declare-fun m!3426326 () Bool)

(assert (=> b!3162504 m!3426326))

(declare-fun m!3426328 () Bool)

(assert (=> b!3162510 m!3426328))

(declare-fun m!3426330 () Bool)

(assert (=> b!3162510 m!3426330))

(declare-fun m!3426332 () Bool)

(assert (=> b!3162512 m!3426332))

(declare-fun m!3426334 () Bool)

(assert (=> b!3162506 m!3426334))

(declare-fun m!3426336 () Bool)

(assert (=> b!3162517 m!3426336))

(declare-fun m!3426338 () Bool)

(assert (=> b!3162517 m!3426338))

(check-sat (not b_next!83755) (not b!3162506) (not b!3162519) (not b!3162518) tp_is_empty!17005 (not b!3162508) (not mapNonEmpty!18789) (not b!3162512) (not start!296444) b_and!209297 (not b!3162517) (not b_next!83753) b_and!209295 (not b!3162510) (not b!3162507) (not b!3162511) (not b!3162504))
(check-sat b_and!209297 b_and!209295 (not b_next!83753) (not b_next!83755))
(get-model)

(declare-fun b!3162538 () Bool)

(declare-fun res!1287405 () Bool)

(declare-fun e!1970227 () Bool)

(assert (=> b!3162538 (=> (not res!1287405) (not e!1970227))))

(declare-fun call!229058 () Bool)

(assert (=> b!3162538 (= res!1287405 call!229058)))

(declare-fun e!1970231 () Bool)

(assert (=> b!3162538 (= e!1970231 e!1970227)))

(declare-fun b!3162539 () Bool)

(declare-fun e!1970229 () Bool)

(assert (=> b!3162539 (= e!1970229 e!1970231)))

(declare-fun c!531800 () Bool)

(assert (=> b!3162539 (= c!531800 ((_ is Union!9721) (regTwo!19954 r!13156)))))

(declare-fun b!3162540 () Bool)

(declare-fun res!1287402 () Bool)

(declare-fun e!1970226 () Bool)

(assert (=> b!3162540 (=> res!1287402 e!1970226)))

(assert (=> b!3162540 (= res!1287402 (not ((_ is Concat!15042) (regTwo!19954 r!13156))))))

(assert (=> b!3162540 (= e!1970231 e!1970226)))

(declare-fun d!868540 () Bool)

(declare-fun res!1287404 () Bool)

(declare-fun e!1970232 () Bool)

(assert (=> d!868540 (=> res!1287404 e!1970232)))

(assert (=> d!868540 (= res!1287404 ((_ is ElementMatch!9721) (regTwo!19954 r!13156)))))

(assert (=> d!868540 (= (validRegex!4447 (regTwo!19954 r!13156)) e!1970232)))

(declare-fun b!3162541 () Bool)

(declare-fun e!1970230 () Bool)

(assert (=> b!3162541 (= e!1970229 e!1970230)))

(declare-fun res!1287403 () Bool)

(assert (=> b!3162541 (= res!1287403 (not (nullable!3335 (reg!10050 (regTwo!19954 r!13156)))))))

(assert (=> b!3162541 (=> (not res!1287403) (not e!1970230))))

(declare-fun b!3162542 () Bool)

(declare-fun e!1970228 () Bool)

(assert (=> b!3162542 (= e!1970226 e!1970228)))

(declare-fun res!1287401 () Bool)

(assert (=> b!3162542 (=> (not res!1287401) (not e!1970228))))

(assert (=> b!3162542 (= res!1287401 call!229058)))

(declare-fun b!3162543 () Bool)

(declare-fun call!229057 () Bool)

(assert (=> b!3162543 (= e!1970228 call!229057)))

(declare-fun b!3162544 () Bool)

(assert (=> b!3162544 (= e!1970232 e!1970229)))

(declare-fun c!531801 () Bool)

(assert (=> b!3162544 (= c!531801 ((_ is Star!9721) (regTwo!19954 r!13156)))))

(declare-fun bm!229051 () Bool)

(assert (=> bm!229051 (= call!229058 (validRegex!4447 (ite c!531800 (regOne!19955 (regTwo!19954 r!13156)) (regOne!19954 (regTwo!19954 r!13156)))))))

(declare-fun call!229056 () Bool)

(declare-fun bm!229052 () Bool)

(assert (=> bm!229052 (= call!229056 (validRegex!4447 (ite c!531801 (reg!10050 (regTwo!19954 r!13156)) (ite c!531800 (regTwo!19955 (regTwo!19954 r!13156)) (regTwo!19954 (regTwo!19954 r!13156))))))))

(declare-fun b!3162545 () Bool)

(assert (=> b!3162545 (= e!1970227 call!229057)))

(declare-fun b!3162546 () Bool)

(assert (=> b!3162546 (= e!1970230 call!229056)))

(declare-fun bm!229053 () Bool)

(assert (=> bm!229053 (= call!229057 call!229056)))

(assert (= (and d!868540 (not res!1287404)) b!3162544))

(assert (= (and b!3162544 c!531801) b!3162541))

(assert (= (and b!3162544 (not c!531801)) b!3162539))

(assert (= (and b!3162541 res!1287403) b!3162546))

(assert (= (and b!3162539 c!531800) b!3162538))

(assert (= (and b!3162539 (not c!531800)) b!3162540))

(assert (= (and b!3162538 res!1287405) b!3162545))

(assert (= (and b!3162540 (not res!1287402)) b!3162542))

(assert (= (and b!3162542 res!1287401) b!3162543))

(assert (= (or b!3162538 b!3162542) bm!229051))

(assert (= (or b!3162545 b!3162543) bm!229053))

(assert (= (or b!3162546 bm!229053) bm!229052))

(declare-fun m!3426340 () Bool)

(assert (=> b!3162541 m!3426340))

(declare-fun m!3426342 () Bool)

(assert (=> bm!229051 m!3426342))

(declare-fun m!3426344 () Bool)

(assert (=> bm!229052 m!3426344))

(assert (=> b!3162517 d!868540))

(declare-fun b!3162571 () Bool)

(declare-fun c!531819 () Bool)

(assert (=> b!3162571 (= c!531819 ((_ is ElementMatch!9721) (regOne!19954 r!13156)))))

(declare-fun e!1970247 () tuple2!34428)

(declare-fun e!1970249 () tuple2!34428)

(assert (=> b!3162571 (= e!1970247 e!1970249)))

(declare-fun b!3162572 () Bool)

(declare-fun e!1970246 () tuple2!34428)

(declare-fun lt!1063195 () Option!6882)

(assert (=> b!3162572 (= e!1970246 (tuple2!34429 (v!35079 lt!1063195) cache!347))))

(declare-fun bm!229062 () Bool)

(declare-fun call!229067 () tuple2!34428)

(declare-fun call!229069 () tuple2!34428)

(assert (=> bm!229062 (= call!229067 call!229069)))

(declare-fun b!3162573 () Bool)

(declare-fun e!1970245 () tuple2!34428)

(declare-fun e!1970248 () tuple2!34428)

(assert (=> b!3162573 (= e!1970245 e!1970248)))

(declare-fun c!531818 () Bool)

(assert (=> b!3162573 (= c!531818 (nullable!3335 (regOne!19954 (regOne!19954 r!13156))))))

(declare-fun b!3162575 () Bool)

(declare-fun lt!1063194 () tuple2!34428)

(declare-fun call!229070 () tuple2!34428)

(assert (=> b!3162575 (= lt!1063194 call!229070)))

(assert (=> b!3162575 (= e!1970248 (tuple2!34429 (Union!9721 (Concat!15042 (_1!20346 lt!1063194) (regTwo!19954 (regOne!19954 r!13156))) EmptyLang!9721) (_2!20346 lt!1063194)))))

(declare-fun b!3162576 () Bool)

(assert (=> b!3162576 (= e!1970249 (tuple2!34429 (ite (= a!2409 (c!531795 (regOne!19954 r!13156))) EmptyExpr!9721 EmptyLang!9721) cache!347))))

(declare-fun b!3162577 () Bool)

(declare-fun lt!1063190 () tuple2!34428)

(declare-fun call!229068 () tuple2!34428)

(assert (=> b!3162577 (= lt!1063190 call!229068)))

(declare-fun lt!1063192 () tuple2!34428)

(assert (=> b!3162577 (= lt!1063192 call!229070)))

(assert (=> b!3162577 (= e!1970248 (tuple2!34429 (Union!9721 (Concat!15042 (_1!20346 lt!1063192) (regTwo!19954 (regOne!19954 r!13156))) (_1!20346 lt!1063190)) (_2!20346 lt!1063190)))))

(declare-fun b!3162578 () Bool)

(declare-fun lt!1063188 () tuple2!34428)

(assert (=> b!3162578 (= lt!1063188 call!229068)))

(declare-fun lt!1063189 () tuple2!34428)

(assert (=> b!3162578 (= lt!1063189 call!229069)))

(declare-fun e!1970250 () tuple2!34428)

(assert (=> b!3162578 (= e!1970250 (tuple2!34429 (Union!9721 (_1!20346 lt!1063189) (_1!20346 lt!1063188)) (_2!20346 lt!1063188)))))

(declare-fun c!531817 () Bool)

(declare-fun bm!229063 () Bool)

(declare-fun c!531816 () Bool)

(assert (=> bm!229063 (= call!229069 (derivativeStepMem!22 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))) a!2409 cache!347))))

(declare-fun b!3162574 () Bool)

(assert (=> b!3162574 (= e!1970247 (tuple2!34429 EmptyLang!9721 cache!347))))

(declare-fun d!868542 () Bool)

(declare-fun lt!1063196 () tuple2!34428)

(declare-fun derivativeStep!2884 (Regex!9721 C!19628) Regex!9721)

(assert (=> d!868542 (= (_1!20346 lt!1063196) (derivativeStep!2884 (regOne!19954 r!13156) a!2409))))

(assert (=> d!868542 (= lt!1063196 e!1970246)))

(declare-fun c!531814 () Bool)

(assert (=> d!868542 (= c!531814 ((_ is Some!6881) lt!1063195))))

(assert (=> d!868542 (= lt!1063195 (get!11214 cache!347 (regOne!19954 r!13156) a!2409))))

(assert (=> d!868542 (validRegex!4447 (regOne!19954 r!13156))))

(assert (=> d!868542 (= (derivativeStepMem!22 (regOne!19954 r!13156) a!2409 cache!347) lt!1063196)))

(declare-fun b!3162579 () Bool)

(assert (=> b!3162579 (= c!531816 ((_ is Star!9721) (regOne!19954 r!13156)))))

(assert (=> b!3162579 (= e!1970250 e!1970245)))

(declare-fun bm!229064 () Bool)

(assert (=> bm!229064 (= call!229070 call!229067)))

(declare-fun bm!229065 () Bool)

(assert (=> bm!229065 (= call!229068 (derivativeStepMem!22 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))) a!2409 (ite c!531817 (_2!20346 lt!1063189) (_2!20346 lt!1063192))))))

(declare-fun lt!1063193 () tuple2!34428)

(declare-fun b!3162580 () Bool)

(declare-datatypes ((Unit!49773 0))(
  ( (Unit!49774) )
))
(declare-datatypes ((tuple2!34430 0))(
  ( (tuple2!34431 (_1!20347 Unit!49773) (_2!20347 Cache!366)) )
))
(declare-fun update!261 (Cache!366 Regex!9721 C!19628 Regex!9721) tuple2!34430)

(assert (=> b!3162580 (= e!1970246 (tuple2!34429 (_1!20346 lt!1063193) (_2!20347 (update!261 (_2!20346 lt!1063193) (regOne!19954 r!13156) a!2409 (_1!20346 lt!1063193)))))))

(declare-fun c!531815 () Bool)

(assert (=> b!3162580 (= c!531815 (or ((_ is EmptyExpr!9721) (regOne!19954 r!13156)) ((_ is EmptyLang!9721) (regOne!19954 r!13156))))))

(assert (=> b!3162580 (= lt!1063193 e!1970247)))

(declare-fun b!3162581 () Bool)

(declare-fun lt!1063191 () tuple2!34428)

(assert (=> b!3162581 (= e!1970245 (tuple2!34429 (Concat!15042 (_1!20346 lt!1063191) (Star!9721 (reg!10050 (regOne!19954 r!13156)))) (_2!20346 lt!1063191)))))

(assert (=> b!3162581 (= lt!1063191 call!229067)))

(declare-fun b!3162582 () Bool)

(assert (=> b!3162582 (= e!1970249 e!1970250)))

(assert (=> b!3162582 (= c!531817 ((_ is Union!9721) (regOne!19954 r!13156)))))

(assert (= (and d!868542 c!531814) b!3162572))

(assert (= (and d!868542 (not c!531814)) b!3162580))

(assert (= (and b!3162580 c!531815) b!3162574))

(assert (= (and b!3162580 (not c!531815)) b!3162571))

(assert (= (and b!3162571 c!531819) b!3162576))

(assert (= (and b!3162571 (not c!531819)) b!3162582))

(assert (= (and b!3162582 c!531817) b!3162578))

(assert (= (and b!3162582 (not c!531817)) b!3162579))

(assert (= (and b!3162579 c!531816) b!3162581))

(assert (= (and b!3162579 (not c!531816)) b!3162573))

(assert (= (and b!3162573 c!531818) b!3162577))

(assert (= (and b!3162573 (not c!531818)) b!3162575))

(assert (= (or b!3162577 b!3162575) bm!229064))

(assert (= (or b!3162581 bm!229064) bm!229062))

(assert (= (or b!3162578 bm!229062) bm!229063))

(assert (= (or b!3162578 b!3162577) bm!229065))

(declare-fun m!3426346 () Bool)

(assert (=> bm!229065 m!3426346))

(declare-fun m!3426348 () Bool)

(assert (=> d!868542 m!3426348))

(declare-fun m!3426350 () Bool)

(assert (=> d!868542 m!3426350))

(declare-fun m!3426352 () Bool)

(assert (=> d!868542 m!3426352))

(declare-fun m!3426354 () Bool)

(assert (=> bm!229063 m!3426354))

(declare-fun m!3426356 () Bool)

(assert (=> b!3162573 m!3426356))

(declare-fun m!3426358 () Bool)

(assert (=> b!3162580 m!3426358))

(assert (=> b!3162517 d!868542))

(declare-fun d!868544 () Bool)

(assert (=> d!868544 (= (array_inv!4710 (_keys!4442 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))) (bvsge (size!26660 (_keys!4442 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3162510 d!868544))

(declare-fun d!868546 () Bool)

(assert (=> d!868546 (= (array_inv!4711 (_values!4423 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))) (bvsge (size!26661 (_values!4423 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3162510 d!868546))

(declare-fun d!868548 () Bool)

(declare-fun nullableFct!946 (Regex!9721) Bool)

(assert (=> d!868548 (= (nullable!3335 (regOne!19954 r!13156)) (nullableFct!946 (regOne!19954 r!13156)))))

(declare-fun bs!539447 () Bool)

(assert (= bs!539447 d!868548))

(declare-fun m!3426360 () Bool)

(assert (=> bs!539447 m!3426360))

(assert (=> b!3162504 d!868548))

(declare-fun d!868550 () Bool)

(declare-fun e!1970255 () Bool)

(assert (=> d!868550 e!1970255))

(declare-fun res!1287408 () Bool)

(assert (=> d!868550 (=> res!1287408 e!1970255)))

(declare-fun lt!1063202 () Option!6882)

(declare-fun isEmpty!19751 (Option!6882) Bool)

(assert (=> d!868550 (= res!1287408 (isEmpty!19751 lt!1063202))))

(declare-fun e!1970256 () Option!6882)

(assert (=> d!868550 (= lt!1063202 e!1970256)))

(declare-fun c!531823 () Bool)

(declare-fun contains!6150 (MutableMap!4048 tuple2!34424) Bool)

(assert (=> d!868550 (= c!531823 (contains!6150 (cache!4188 cache!347) (tuple2!34425 r!13156 a!2409)))))

(assert (=> d!868550 (validRegex!4447 r!13156)))

(assert (=> d!868550 (= (get!11214 cache!347 r!13156 a!2409) lt!1063202)))

(declare-fun b!3162589 () Bool)

(declare-fun apply!7935 (MutableMap!4048 tuple2!34424) Regex!9721)

(assert (=> b!3162589 (= e!1970256 (Some!6881 (apply!7935 (cache!4188 cache!347) (tuple2!34425 r!13156 a!2409))))))

(declare-fun lt!1063201 () Unit!49773)

(declare-fun lemmaIfInCacheThenValid!49 (Cache!366 Regex!9721 C!19628) Unit!49773)

(assert (=> b!3162589 (= lt!1063201 (lemmaIfInCacheThenValid!49 cache!347 r!13156 a!2409))))

(declare-fun b!3162590 () Bool)

(assert (=> b!3162590 (= e!1970256 None!6881)))

(declare-fun b!3162591 () Bool)

(declare-fun get!11215 (Option!6882) Regex!9721)

(assert (=> b!3162591 (= e!1970255 (= (get!11215 lt!1063202) (derivativeStep!2884 r!13156 a!2409)))))

(assert (= (and d!868550 c!531823) b!3162589))

(assert (= (and d!868550 (not c!531823)) b!3162590))

(assert (= (and d!868550 (not res!1287408)) b!3162591))

(declare-fun m!3426362 () Bool)

(assert (=> d!868550 m!3426362))

(declare-fun m!3426364 () Bool)

(assert (=> d!868550 m!3426364))

(assert (=> d!868550 m!3426320))

(declare-fun m!3426366 () Bool)

(assert (=> b!3162589 m!3426366))

(declare-fun m!3426368 () Bool)

(assert (=> b!3162589 m!3426368))

(declare-fun m!3426370 () Bool)

(assert (=> b!3162591 m!3426370))

(declare-fun m!3426372 () Bool)

(assert (=> b!3162591 m!3426372))

(assert (=> b!3162506 d!868550))

(declare-fun b!3162592 () Bool)

(declare-fun res!1287413 () Bool)

(declare-fun e!1970258 () Bool)

(assert (=> b!3162592 (=> (not res!1287413) (not e!1970258))))

(declare-fun call!229073 () Bool)

(assert (=> b!3162592 (= res!1287413 call!229073)))

(declare-fun e!1970262 () Bool)

(assert (=> b!3162592 (= e!1970262 e!1970258)))

(declare-fun b!3162593 () Bool)

(declare-fun e!1970260 () Bool)

(assert (=> b!3162593 (= e!1970260 e!1970262)))

(declare-fun c!531824 () Bool)

(assert (=> b!3162593 (= c!531824 ((_ is Union!9721) r!13156))))

(declare-fun b!3162594 () Bool)

(declare-fun res!1287410 () Bool)

(declare-fun e!1970257 () Bool)

(assert (=> b!3162594 (=> res!1287410 e!1970257)))

(assert (=> b!3162594 (= res!1287410 (not ((_ is Concat!15042) r!13156)))))

(assert (=> b!3162594 (= e!1970262 e!1970257)))

(declare-fun d!868552 () Bool)

(declare-fun res!1287412 () Bool)

(declare-fun e!1970263 () Bool)

(assert (=> d!868552 (=> res!1287412 e!1970263)))

(assert (=> d!868552 (= res!1287412 ((_ is ElementMatch!9721) r!13156))))

(assert (=> d!868552 (= (validRegex!4447 r!13156) e!1970263)))

(declare-fun b!3162595 () Bool)

(declare-fun e!1970261 () Bool)

(assert (=> b!3162595 (= e!1970260 e!1970261)))

(declare-fun res!1287411 () Bool)

(assert (=> b!3162595 (= res!1287411 (not (nullable!3335 (reg!10050 r!13156))))))

(assert (=> b!3162595 (=> (not res!1287411) (not e!1970261))))

(declare-fun b!3162596 () Bool)

(declare-fun e!1970259 () Bool)

(assert (=> b!3162596 (= e!1970257 e!1970259)))

(declare-fun res!1287409 () Bool)

(assert (=> b!3162596 (=> (not res!1287409) (not e!1970259))))

(assert (=> b!3162596 (= res!1287409 call!229073)))

(declare-fun b!3162597 () Bool)

(declare-fun call!229072 () Bool)

(assert (=> b!3162597 (= e!1970259 call!229072)))

(declare-fun b!3162598 () Bool)

(assert (=> b!3162598 (= e!1970263 e!1970260)))

(declare-fun c!531825 () Bool)

(assert (=> b!3162598 (= c!531825 ((_ is Star!9721) r!13156))))

(declare-fun bm!229066 () Bool)

(assert (=> bm!229066 (= call!229073 (validRegex!4447 (ite c!531824 (regOne!19955 r!13156) (regOne!19954 r!13156))))))

(declare-fun call!229071 () Bool)

(declare-fun bm!229067 () Bool)

(assert (=> bm!229067 (= call!229071 (validRegex!4447 (ite c!531825 (reg!10050 r!13156) (ite c!531824 (regTwo!19955 r!13156) (regTwo!19954 r!13156)))))))

(declare-fun b!3162599 () Bool)

(assert (=> b!3162599 (= e!1970258 call!229072)))

(declare-fun b!3162600 () Bool)

(assert (=> b!3162600 (= e!1970261 call!229071)))

(declare-fun bm!229068 () Bool)

(assert (=> bm!229068 (= call!229072 call!229071)))

(assert (= (and d!868552 (not res!1287412)) b!3162598))

(assert (= (and b!3162598 c!531825) b!3162595))

(assert (= (and b!3162598 (not c!531825)) b!3162593))

(assert (= (and b!3162595 res!1287411) b!3162600))

(assert (= (and b!3162593 c!531824) b!3162592))

(assert (= (and b!3162593 (not c!531824)) b!3162594))

(assert (= (and b!3162592 res!1287413) b!3162599))

(assert (= (and b!3162594 (not res!1287410)) b!3162596))

(assert (= (and b!3162596 res!1287409) b!3162597))

(assert (= (or b!3162592 b!3162596) bm!229066))

(assert (= (or b!3162599 b!3162597) bm!229068))

(assert (= (or b!3162600 bm!229068) bm!229067))

(declare-fun m!3426374 () Bool)

(assert (=> b!3162595 m!3426374))

(declare-fun m!3426376 () Bool)

(assert (=> bm!229066 m!3426376))

(declare-fun m!3426378 () Bool)

(assert (=> bm!229067 m!3426378))

(assert (=> start!296444 d!868552))

(declare-fun d!868554 () Bool)

(declare-fun res!1287416 () Bool)

(declare-fun e!1970266 () Bool)

(assert (=> d!868554 (=> (not res!1287416) (not e!1970266))))

(assert (=> d!868554 (= res!1287416 ((_ is HashMap!4048) (cache!4188 cache!347)))))

(assert (=> d!868554 (= (inv!48077 cache!347) e!1970266)))

(declare-fun b!3162603 () Bool)

(declare-fun validCacheMap!49 (MutableMap!4048) Bool)

(assert (=> b!3162603 (= e!1970266 (validCacheMap!49 (cache!4188 cache!347)))))

(assert (= (and d!868554 res!1287416) b!3162603))

(declare-fun m!3426380 () Bool)

(assert (=> b!3162603 m!3426380))

(assert (=> start!296444 d!868554))

(declare-fun d!868556 () Bool)

(assert (=> d!868556 (= (valid!3226 (_2!20346 lt!1063169)) (validCacheMap!49 (cache!4188 (_2!20346 lt!1063169))))))

(declare-fun bs!539448 () Bool)

(assert (= bs!539448 d!868556))

(declare-fun m!3426382 () Bool)

(assert (=> bs!539448 m!3426382))

(assert (=> b!3162507 d!868556))

(declare-fun d!868558 () Bool)

(assert (=> d!868558 (= (valid!3226 cache!347) (validCacheMap!49 (cache!4188 cache!347)))))

(declare-fun bs!539449 () Bool)

(assert (= bs!539449 d!868558))

(assert (=> bs!539449 m!3426380))

(assert (=> b!3162512 d!868558))

(declare-fun e!1970269 () Bool)

(assert (=> b!3162508 (= tp!995539 e!1970269)))

(declare-fun b!3162616 () Bool)

(declare-fun tp!995556 () Bool)

(assert (=> b!3162616 (= e!1970269 tp!995556)))

(declare-fun b!3162615 () Bool)

(declare-fun tp!995552 () Bool)

(declare-fun tp!995554 () Bool)

(assert (=> b!3162615 (= e!1970269 (and tp!995552 tp!995554))))

(declare-fun b!3162617 () Bool)

(declare-fun tp!995555 () Bool)

(declare-fun tp!995553 () Bool)

(assert (=> b!3162617 (= e!1970269 (and tp!995555 tp!995553))))

(declare-fun b!3162614 () Bool)

(assert (=> b!3162614 (= e!1970269 tp_is_empty!17005)))

(assert (= (and b!3162508 ((_ is ElementMatch!9721) (reg!10050 r!13156))) b!3162614))

(assert (= (and b!3162508 ((_ is Concat!15042) (reg!10050 r!13156))) b!3162615))

(assert (= (and b!3162508 ((_ is Star!9721) (reg!10050 r!13156))) b!3162616))

(assert (= (and b!3162508 ((_ is Union!9721) (reg!10050 r!13156))) b!3162617))

(declare-fun b!3162622 () Bool)

(declare-fun tp!995565 () Bool)

(declare-fun tp!995564 () Bool)

(declare-fun tp!995563 () Bool)

(declare-fun e!1970272 () Bool)

(assert (=> b!3162622 (= e!1970272 (and tp!995563 tp_is_empty!17005 tp!995564 tp!995565))))

(assert (=> b!3162519 (= tp!995535 e!1970272)))

(assert (= (and b!3162519 ((_ is Cons!35426) mapDefault!18789)) b!3162622))

(declare-fun b!3162623 () Bool)

(declare-fun tp!995568 () Bool)

(declare-fun e!1970273 () Bool)

(declare-fun tp!995566 () Bool)

(declare-fun tp!995567 () Bool)

(assert (=> b!3162623 (= e!1970273 (and tp!995566 tp_is_empty!17005 tp!995567 tp!995568))))

(assert (=> b!3162510 (= tp!995533 e!1970273)))

(assert (= (and b!3162510 ((_ is Cons!35426) (zeroValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347)))))))) b!3162623))

(declare-fun e!1970274 () Bool)

(declare-fun tp!995569 () Bool)

(declare-fun tp!995571 () Bool)

(declare-fun b!3162624 () Bool)

(declare-fun tp!995570 () Bool)

(assert (=> b!3162624 (= e!1970274 (and tp!995569 tp_is_empty!17005 tp!995570 tp!995571))))

(assert (=> b!3162510 (= tp!995531 e!1970274)))

(assert (= (and b!3162510 ((_ is Cons!35426) (minValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347)))))))) b!3162624))

(declare-fun tp!995591 () Bool)

(declare-fun tp!995586 () Bool)

(declare-fun b!3162631 () Bool)

(declare-fun tp!995588 () Bool)

(declare-fun e!1970280 () Bool)

(assert (=> b!3162631 (= e!1970280 (and tp!995591 tp_is_empty!17005 tp!995588 tp!995586))))

(declare-fun mapIsEmpty!18792 () Bool)

(declare-fun mapRes!18792 () Bool)

(assert (=> mapIsEmpty!18792 mapRes!18792))

(declare-fun tp!995590 () Bool)

(declare-fun e!1970279 () Bool)

(declare-fun tp!995587 () Bool)

(declare-fun tp!995592 () Bool)

(declare-fun b!3162632 () Bool)

(assert (=> b!3162632 (= e!1970279 (and tp!995587 tp_is_empty!17005 tp!995592 tp!995590))))

(declare-fun mapNonEmpty!18792 () Bool)

(declare-fun tp!995589 () Bool)

(assert (=> mapNonEmpty!18792 (= mapRes!18792 (and tp!995589 e!1970280))))

(declare-fun mapValue!18792 () List!35550)

(declare-fun mapKey!18792 () (_ BitVec 32))

(declare-fun mapRest!18792 () (Array (_ BitVec 32) List!35550))

(assert (=> mapNonEmpty!18792 (= mapRest!18789 (store mapRest!18792 mapKey!18792 mapValue!18792))))

(declare-fun condMapEmpty!18792 () Bool)

(declare-fun mapDefault!18792 () List!35550)

(assert (=> mapNonEmpty!18789 (= condMapEmpty!18792 (= mapRest!18789 ((as const (Array (_ BitVec 32) List!35550)) mapDefault!18792)))))

(assert (=> mapNonEmpty!18789 (= tp!995541 (and e!1970279 mapRes!18792))))

(assert (= (and mapNonEmpty!18789 condMapEmpty!18792) mapIsEmpty!18792))

(assert (= (and mapNonEmpty!18789 (not condMapEmpty!18792)) mapNonEmpty!18792))

(assert (= (and mapNonEmpty!18792 ((_ is Cons!35426) mapValue!18792)) b!3162631))

(assert (= (and mapNonEmpty!18789 ((_ is Cons!35426) mapDefault!18792)) b!3162632))

(declare-fun m!3426384 () Bool)

(assert (=> mapNonEmpty!18792 m!3426384))

(declare-fun tp!995595 () Bool)

(declare-fun tp!995594 () Bool)

(declare-fun e!1970281 () Bool)

(declare-fun b!3162633 () Bool)

(declare-fun tp!995593 () Bool)

(assert (=> b!3162633 (= e!1970281 (and tp!995593 tp_is_empty!17005 tp!995594 tp!995595))))

(assert (=> mapNonEmpty!18789 (= tp!995532 e!1970281)))

(assert (= (and mapNonEmpty!18789 ((_ is Cons!35426) mapValue!18789)) b!3162633))

(declare-fun e!1970282 () Bool)

(assert (=> b!3162518 (= tp!995538 e!1970282)))

(declare-fun b!3162636 () Bool)

(declare-fun tp!995600 () Bool)

(assert (=> b!3162636 (= e!1970282 tp!995600)))

(declare-fun b!3162635 () Bool)

(declare-fun tp!995596 () Bool)

(declare-fun tp!995598 () Bool)

(assert (=> b!3162635 (= e!1970282 (and tp!995596 tp!995598))))

(declare-fun b!3162637 () Bool)

(declare-fun tp!995599 () Bool)

(declare-fun tp!995597 () Bool)

(assert (=> b!3162637 (= e!1970282 (and tp!995599 tp!995597))))

(declare-fun b!3162634 () Bool)

(assert (=> b!3162634 (= e!1970282 tp_is_empty!17005)))

(assert (= (and b!3162518 ((_ is ElementMatch!9721) (regOne!19954 r!13156))) b!3162634))

(assert (= (and b!3162518 ((_ is Concat!15042) (regOne!19954 r!13156))) b!3162635))

(assert (= (and b!3162518 ((_ is Star!9721) (regOne!19954 r!13156))) b!3162636))

(assert (= (and b!3162518 ((_ is Union!9721) (regOne!19954 r!13156))) b!3162637))

(declare-fun e!1970283 () Bool)

(assert (=> b!3162518 (= tp!995537 e!1970283)))

(declare-fun b!3162640 () Bool)

(declare-fun tp!995605 () Bool)

(assert (=> b!3162640 (= e!1970283 tp!995605)))

(declare-fun b!3162639 () Bool)

(declare-fun tp!995601 () Bool)

(declare-fun tp!995603 () Bool)

(assert (=> b!3162639 (= e!1970283 (and tp!995601 tp!995603))))

(declare-fun b!3162641 () Bool)

(declare-fun tp!995604 () Bool)

(declare-fun tp!995602 () Bool)

(assert (=> b!3162641 (= e!1970283 (and tp!995604 tp!995602))))

(declare-fun b!3162638 () Bool)

(assert (=> b!3162638 (= e!1970283 tp_is_empty!17005)))

(assert (= (and b!3162518 ((_ is ElementMatch!9721) (regTwo!19954 r!13156))) b!3162638))

(assert (= (and b!3162518 ((_ is Concat!15042) (regTwo!19954 r!13156))) b!3162639))

(assert (= (and b!3162518 ((_ is Star!9721) (regTwo!19954 r!13156))) b!3162640))

(assert (= (and b!3162518 ((_ is Union!9721) (regTwo!19954 r!13156))) b!3162641))

(declare-fun e!1970284 () Bool)

(assert (=> b!3162511 (= tp!995540 e!1970284)))

(declare-fun b!3162644 () Bool)

(declare-fun tp!995610 () Bool)

(assert (=> b!3162644 (= e!1970284 tp!995610)))

(declare-fun b!3162643 () Bool)

(declare-fun tp!995606 () Bool)

(declare-fun tp!995608 () Bool)

(assert (=> b!3162643 (= e!1970284 (and tp!995606 tp!995608))))

(declare-fun b!3162645 () Bool)

(declare-fun tp!995609 () Bool)

(declare-fun tp!995607 () Bool)

(assert (=> b!3162645 (= e!1970284 (and tp!995609 tp!995607))))

(declare-fun b!3162642 () Bool)

(assert (=> b!3162642 (= e!1970284 tp_is_empty!17005)))

(assert (= (and b!3162511 ((_ is ElementMatch!9721) (regOne!19955 r!13156))) b!3162642))

(assert (= (and b!3162511 ((_ is Concat!15042) (regOne!19955 r!13156))) b!3162643))

(assert (= (and b!3162511 ((_ is Star!9721) (regOne!19955 r!13156))) b!3162644))

(assert (= (and b!3162511 ((_ is Union!9721) (regOne!19955 r!13156))) b!3162645))

(declare-fun e!1970285 () Bool)

(assert (=> b!3162511 (= tp!995534 e!1970285)))

(declare-fun b!3162648 () Bool)

(declare-fun tp!995615 () Bool)

(assert (=> b!3162648 (= e!1970285 tp!995615)))

(declare-fun b!3162647 () Bool)

(declare-fun tp!995611 () Bool)

(declare-fun tp!995613 () Bool)

(assert (=> b!3162647 (= e!1970285 (and tp!995611 tp!995613))))

(declare-fun b!3162649 () Bool)

(declare-fun tp!995614 () Bool)

(declare-fun tp!995612 () Bool)

(assert (=> b!3162649 (= e!1970285 (and tp!995614 tp!995612))))

(declare-fun b!3162646 () Bool)

(assert (=> b!3162646 (= e!1970285 tp_is_empty!17005)))

(assert (= (and b!3162511 ((_ is ElementMatch!9721) (regTwo!19955 r!13156))) b!3162646))

(assert (= (and b!3162511 ((_ is Concat!15042) (regTwo!19955 r!13156))) b!3162647))

(assert (= (and b!3162511 ((_ is Star!9721) (regTwo!19955 r!13156))) b!3162648))

(assert (= (and b!3162511 ((_ is Union!9721) (regTwo!19955 r!13156))) b!3162649))

(check-sat (not b!3162637) (not b!3162639) (not d!868542) (not b!3162648) (not b!3162645) (not bm!229052) (not b!3162595) b_and!209297 (not b!3162623) (not bm!229066) (not b!3162541) (not b!3162624) (not b!3162643) (not b!3162640) (not b!3162635) (not d!868558) (not b!3162641) (not b!3162636) (not b_next!83755) (not bm!229065) (not b!3162589) (not b!3162580) (not bm!229067) (not b!3162622) (not bm!229063) (not b!3162632) tp_is_empty!17005 (not b!3162616) (not mapNonEmpty!18792) (not d!868548) (not b!3162603) (not b!3162649) (not bm!229051) (not b_next!83753) b_and!209295 (not b!3162591) (not b!3162631) (not b!3162617) (not b!3162615) (not b!3162633) (not d!868550) (not b!3162644) (not b!3162573) (not d!868556) (not b!3162647))
(check-sat b_and!209297 b_and!209295 (not b_next!83753) (not b_next!83755))
(get-model)

(declare-fun d!868560 () Bool)

(assert (=> d!868560 (= (nullable!3335 (regOne!19954 (regOne!19954 r!13156))) (nullableFct!946 (regOne!19954 (regOne!19954 r!13156))))))

(declare-fun bs!539450 () Bool)

(assert (= bs!539450 d!868560))

(declare-fun m!3426386 () Bool)

(assert (=> bs!539450 m!3426386))

(assert (=> b!3162573 d!868560))

(declare-fun d!868562 () Bool)

(declare-fun lt!1063211 () tuple2!34430)

(assert (=> d!868562 (validCacheMap!49 (cache!4188 (_2!20347 lt!1063211)))))

(declare-fun Unit!49775 () Unit!49773)

(declare-datatypes ((tuple2!34432 0))(
  ( (tuple2!34433 (_1!20348 Bool) (_2!20348 MutableMap!4048)) )
))
(declare-fun update!262 (MutableMap!4048 tuple2!34424 Regex!9721) tuple2!34432)

(assert (=> d!868562 (= lt!1063211 (tuple2!34431 Unit!49775 (Cache!367 (_2!20348 (update!262 (cache!4188 (_2!20346 lt!1063193)) (tuple2!34425 (regOne!19954 r!13156) a!2409) (_1!20346 lt!1063193))))))))

(declare-fun lt!1063212 () Unit!49773)

(declare-fun lt!1063214 () Unit!49773)

(assert (=> d!868562 (= lt!1063212 lt!1063214)))

(declare-fun lt!1063213 () tuple2!34424)

(declare-fun lambda!115770 () Int)

(declare-fun forall!7141 (List!35550 Int) Bool)

(declare-datatypes ((ListMap!1293 0))(
  ( (ListMap!1294 (toList!2047 List!35550)) )
))
(declare-fun map!7883 (MutableMap!4048) ListMap!1293)

(assert (=> d!868562 (forall!7141 (toList!2047 (map!7883 (_2!20348 (update!262 (cache!4188 (_2!20346 lt!1063193)) lt!1063213 (_1!20346 lt!1063193))))) lambda!115770)))

(declare-fun lemmaUpdatePreservesForallPairs!27 (MutableMap!4048 tuple2!34424 Regex!9721 Int) Unit!49773)

(assert (=> d!868562 (= lt!1063214 (lemmaUpdatePreservesForallPairs!27 (cache!4188 (_2!20346 lt!1063193)) lt!1063213 (_1!20346 lt!1063193) lambda!115770))))

(assert (=> d!868562 (= lt!1063213 (tuple2!34425 (regOne!19954 r!13156) a!2409))))

(assert (=> d!868562 (validCacheMap!49 (cache!4188 (_2!20346 lt!1063193)))))

(assert (=> d!868562 (= (update!261 (_2!20346 lt!1063193) (regOne!19954 r!13156) a!2409 (_1!20346 lt!1063193)) lt!1063211)))

(declare-fun bs!539451 () Bool)

(assert (= bs!539451 d!868562))

(declare-fun m!3426388 () Bool)

(assert (=> bs!539451 m!3426388))

(declare-fun m!3426390 () Bool)

(assert (=> bs!539451 m!3426390))

(declare-fun m!3426392 () Bool)

(assert (=> bs!539451 m!3426392))

(declare-fun m!3426394 () Bool)

(assert (=> bs!539451 m!3426394))

(declare-fun m!3426396 () Bool)

(assert (=> bs!539451 m!3426396))

(declare-fun m!3426398 () Bool)

(assert (=> bs!539451 m!3426398))

(declare-fun m!3426400 () Bool)

(assert (=> bs!539451 m!3426400))

(assert (=> b!3162580 d!868562))

(declare-fun b!3162652 () Bool)

(declare-fun res!1287424 () Bool)

(declare-fun e!1970289 () Bool)

(assert (=> b!3162652 (=> (not res!1287424) (not e!1970289))))

(declare-fun call!229076 () Bool)

(assert (=> b!3162652 (= res!1287424 call!229076)))

(declare-fun e!1970293 () Bool)

(assert (=> b!3162652 (= e!1970293 e!1970289)))

(declare-fun b!3162653 () Bool)

(declare-fun e!1970291 () Bool)

(assert (=> b!3162653 (= e!1970291 e!1970293)))

(declare-fun c!531827 () Bool)

(assert (=> b!3162653 (= c!531827 ((_ is Union!9721) (ite c!531824 (regOne!19955 r!13156) (regOne!19954 r!13156))))))

(declare-fun b!3162654 () Bool)

(declare-fun res!1287421 () Bool)

(declare-fun e!1970288 () Bool)

(assert (=> b!3162654 (=> res!1287421 e!1970288)))

(assert (=> b!3162654 (= res!1287421 (not ((_ is Concat!15042) (ite c!531824 (regOne!19955 r!13156) (regOne!19954 r!13156)))))))

(assert (=> b!3162654 (= e!1970293 e!1970288)))

(declare-fun d!868564 () Bool)

(declare-fun res!1287423 () Bool)

(declare-fun e!1970294 () Bool)

(assert (=> d!868564 (=> res!1287423 e!1970294)))

(assert (=> d!868564 (= res!1287423 ((_ is ElementMatch!9721) (ite c!531824 (regOne!19955 r!13156) (regOne!19954 r!13156))))))

(assert (=> d!868564 (= (validRegex!4447 (ite c!531824 (regOne!19955 r!13156) (regOne!19954 r!13156))) e!1970294)))

(declare-fun b!3162655 () Bool)

(declare-fun e!1970292 () Bool)

(assert (=> b!3162655 (= e!1970291 e!1970292)))

(declare-fun res!1287422 () Bool)

(assert (=> b!3162655 (= res!1287422 (not (nullable!3335 (reg!10050 (ite c!531824 (regOne!19955 r!13156) (regOne!19954 r!13156))))))))

(assert (=> b!3162655 (=> (not res!1287422) (not e!1970292))))

(declare-fun b!3162656 () Bool)

(declare-fun e!1970290 () Bool)

(assert (=> b!3162656 (= e!1970288 e!1970290)))

(declare-fun res!1287420 () Bool)

(assert (=> b!3162656 (=> (not res!1287420) (not e!1970290))))

(assert (=> b!3162656 (= res!1287420 call!229076)))

(declare-fun b!3162657 () Bool)

(declare-fun call!229075 () Bool)

(assert (=> b!3162657 (= e!1970290 call!229075)))

(declare-fun b!3162658 () Bool)

(assert (=> b!3162658 (= e!1970294 e!1970291)))

(declare-fun c!531828 () Bool)

(assert (=> b!3162658 (= c!531828 ((_ is Star!9721) (ite c!531824 (regOne!19955 r!13156) (regOne!19954 r!13156))))))

(declare-fun bm!229069 () Bool)

(assert (=> bm!229069 (= call!229076 (validRegex!4447 (ite c!531827 (regOne!19955 (ite c!531824 (regOne!19955 r!13156) (regOne!19954 r!13156))) (regOne!19954 (ite c!531824 (regOne!19955 r!13156) (regOne!19954 r!13156))))))))

(declare-fun call!229074 () Bool)

(declare-fun bm!229070 () Bool)

(assert (=> bm!229070 (= call!229074 (validRegex!4447 (ite c!531828 (reg!10050 (ite c!531824 (regOne!19955 r!13156) (regOne!19954 r!13156))) (ite c!531827 (regTwo!19955 (ite c!531824 (regOne!19955 r!13156) (regOne!19954 r!13156))) (regTwo!19954 (ite c!531824 (regOne!19955 r!13156) (regOne!19954 r!13156)))))))))

(declare-fun b!3162659 () Bool)

(assert (=> b!3162659 (= e!1970289 call!229075)))

(declare-fun b!3162660 () Bool)

(assert (=> b!3162660 (= e!1970292 call!229074)))

(declare-fun bm!229071 () Bool)

(assert (=> bm!229071 (= call!229075 call!229074)))

(assert (= (and d!868564 (not res!1287423)) b!3162658))

(assert (= (and b!3162658 c!531828) b!3162655))

(assert (= (and b!3162658 (not c!531828)) b!3162653))

(assert (= (and b!3162655 res!1287422) b!3162660))

(assert (= (and b!3162653 c!531827) b!3162652))

(assert (= (and b!3162653 (not c!531827)) b!3162654))

(assert (= (and b!3162652 res!1287424) b!3162659))

(assert (= (and b!3162654 (not res!1287421)) b!3162656))

(assert (= (and b!3162656 res!1287420) b!3162657))

(assert (= (or b!3162652 b!3162656) bm!229069))

(assert (= (or b!3162659 b!3162657) bm!229071))

(assert (= (or b!3162660 bm!229071) bm!229070))

(declare-fun m!3426402 () Bool)

(assert (=> b!3162655 m!3426402))

(declare-fun m!3426404 () Bool)

(assert (=> bm!229069 m!3426404))

(declare-fun m!3426406 () Bool)

(assert (=> bm!229070 m!3426406))

(assert (=> bm!229066 d!868564))

(declare-fun b!3162673 () Bool)

(declare-fun e!1970303 () Unit!49773)

(declare-fun Unit!49776 () Unit!49773)

(assert (=> b!3162673 (= e!1970303 Unit!49776)))

(declare-fun d!868566 () Bool)

(declare-fun e!1970302 () Bool)

(assert (=> d!868566 e!1970302))

(declare-fun c!531837 () Bool)

(assert (=> d!868566 (= c!531837 (contains!6150 (cache!4188 cache!347) (tuple2!34425 r!13156 a!2409)))))

(declare-fun lt!1063289 () Regex!9721)

(declare-fun e!1970301 () Regex!9721)

(assert (=> d!868566 (= lt!1063289 e!1970301)))

(declare-fun c!531836 () Bool)

(assert (=> d!868566 (= c!531836 (not (contains!6150 (cache!4188 cache!347) (tuple2!34425 r!13156 a!2409))))))

(declare-fun valid!3227 (MutableMap!4048) Bool)

(assert (=> d!868566 (valid!3227 (cache!4188 cache!347))))

(assert (=> d!868566 (= (apply!7935 (cache!4188 cache!347) (tuple2!34425 r!13156 a!2409)) lt!1063289)))

(declare-fun b!3162674 () Bool)

(declare-fun dynLambda!14355 (Int tuple2!34424) Regex!9721)

(assert (=> b!3162674 (= e!1970301 (dynLambda!14355 (defaultValue!4219 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409)))))

(declare-fun b!3162675 () Bool)

(declare-fun getValueByKey!169 (List!35550 tuple2!34424) Option!6882)

(assert (=> b!3162675 (= e!1970302 (= lt!1063289 (get!11215 (getValueByKey!169 (toList!2047 (map!7883 (cache!4188 cache!347))) (tuple2!34425 r!13156 a!2409)))))))

(declare-fun lt!1063288 () (_ BitVec 64))

(declare-fun b!3162676 () Bool)

(declare-datatypes ((Option!6883 0))(
  ( (None!6882) (Some!6882 (v!35080 tuple2!34426)) )
))
(declare-fun get!11216 (Option!6883) tuple2!34426)

(declare-fun getPair!91 (List!35550 tuple2!34424) Option!6883)

(declare-fun apply!7936 (MutLongMap!4142 (_ BitVec 64)) List!35550)

(assert (=> b!3162676 (= e!1970301 (_2!20345 (get!11216 (getPair!91 (apply!7936 (v!35078 (underlying!8514 (cache!4188 cache!347))) lt!1063288) (tuple2!34425 r!13156 a!2409)))))))

(declare-fun hash!800 (Hashable!4058 tuple2!34424) (_ BitVec 64))

(assert (=> b!3162676 (= lt!1063288 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409)))))

(declare-fun c!531835 () Bool)

(declare-datatypes ((tuple2!34434 0))(
  ( (tuple2!34435 (_1!20349 (_ BitVec 64)) (_2!20349 List!35550)) )
))
(declare-datatypes ((List!35551 0))(
  ( (Nil!35427) (Cons!35427 (h!40847 tuple2!34434) (t!234620 List!35551)) )
))
(declare-fun contains!6151 (List!35551 tuple2!34434) Bool)

(declare-datatypes ((ListLongMap!713 0))(
  ( (ListLongMap!714 (toList!2048 List!35551)) )
))
(declare-fun map!7884 (MutLongMap!4142) ListLongMap!713)

(assert (=> b!3162676 (= c!531835 (not (contains!6151 (toList!2048 (map!7884 (v!35078 (underlying!8514 (cache!4188 cache!347))))) (tuple2!34435 lt!1063288 (apply!7936 (v!35078 (underlying!8514 (cache!4188 cache!347))) lt!1063288)))))))

(declare-fun lt!1063287 () Unit!49773)

(assert (=> b!3162676 (= lt!1063287 e!1970303)))

(declare-fun lt!1063280 () Unit!49773)

(declare-fun lambda!115777 () Int)

(declare-fun forallContained!1069 (List!35551 Int tuple2!34434) Unit!49773)

(assert (=> b!3162676 (= lt!1063280 (forallContained!1069 (toList!2048 (map!7884 (v!35078 (underlying!8514 (cache!4188 cache!347))))) lambda!115777 (tuple2!34435 lt!1063288 (apply!7936 (v!35078 (underlying!8514 (cache!4188 cache!347))) lt!1063288))))))

(declare-fun lt!1063296 () ListLongMap!713)

(assert (=> b!3162676 (= lt!1063296 (map!7884 (v!35078 (underlying!8514 (cache!4188 cache!347)))))))

(declare-fun lt!1063283 () Unit!49773)

(declare-fun lemmaGetPairGetSameValueAsMap!29 (ListLongMap!713 tuple2!34424 Regex!9721 Hashable!4058) Unit!49773)

(assert (=> b!3162676 (= lt!1063283 (lemmaGetPairGetSameValueAsMap!29 lt!1063296 (tuple2!34425 r!13156 a!2409) (_2!20345 (get!11216 (getPair!91 (apply!7936 (v!35078 (underlying!8514 (cache!4188 cache!347))) lt!1063288) (tuple2!34425 r!13156 a!2409)))) (hashF!6090 (cache!4188 cache!347))))))

(declare-fun lt!1063302 () Unit!49773)

(declare-fun lemmaInGenMapThenLongMapContainsHash!35 (ListLongMap!713 tuple2!34424 Hashable!4058) Unit!49773)

(assert (=> b!3162676 (= lt!1063302 (lemmaInGenMapThenLongMapContainsHash!35 lt!1063296 (tuple2!34425 r!13156 a!2409) (hashF!6090 (cache!4188 cache!347))))))

(declare-fun contains!6152 (ListLongMap!713 (_ BitVec 64)) Bool)

(assert (=> b!3162676 (contains!6152 lt!1063296 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409)))))

(declare-fun lt!1063292 () Unit!49773)

(assert (=> b!3162676 (= lt!1063292 lt!1063302)))

(declare-fun lt!1063291 () (_ BitVec 64))

(assert (=> b!3162676 (= lt!1063291 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409)))))

(declare-fun lt!1063281 () List!35550)

(declare-fun apply!7937 (ListLongMap!713 (_ BitVec 64)) List!35550)

(assert (=> b!3162676 (= lt!1063281 (apply!7937 lt!1063296 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409))))))

(declare-fun lt!1063282 () Unit!49773)

(declare-fun lemmaGetValueImpliesTupleContained!30 (ListLongMap!713 (_ BitVec 64) List!35550) Unit!49773)

(assert (=> b!3162676 (= lt!1063282 (lemmaGetValueImpliesTupleContained!30 lt!1063296 lt!1063291 lt!1063281))))

(assert (=> b!3162676 (contains!6151 (toList!2048 lt!1063296) (tuple2!34435 lt!1063291 lt!1063281))))

(declare-fun lt!1063275 () Unit!49773)

(assert (=> b!3162676 (= lt!1063275 lt!1063282)))

(declare-fun lt!1063298 () Unit!49773)

(assert (=> b!3162676 (= lt!1063298 (forallContained!1069 (toList!2048 lt!1063296) lambda!115777 (tuple2!34435 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409)) (apply!7937 lt!1063296 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409))))))))

(declare-fun lt!1063284 () Unit!49773)

(declare-fun lemmaInGenMapThenGetPairDefined!29 (ListLongMap!713 tuple2!34424 Hashable!4058) Unit!49773)

(assert (=> b!3162676 (= lt!1063284 (lemmaInGenMapThenGetPairDefined!29 lt!1063296 (tuple2!34425 r!13156 a!2409) (hashF!6090 (cache!4188 cache!347))))))

(declare-fun lt!1063278 () Unit!49773)

(assert (=> b!3162676 (= lt!1063278 (lemmaInGenMapThenLongMapContainsHash!35 lt!1063296 (tuple2!34425 r!13156 a!2409) (hashF!6090 (cache!4188 cache!347))))))

(declare-fun lt!1063304 () Unit!49773)

(assert (=> b!3162676 (= lt!1063304 lt!1063278)))

(declare-fun lt!1063297 () (_ BitVec 64))

(assert (=> b!3162676 (= lt!1063297 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409)))))

(declare-fun lt!1063276 () List!35550)

(assert (=> b!3162676 (= lt!1063276 (apply!7937 lt!1063296 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409))))))

(declare-fun lt!1063285 () Unit!49773)

(assert (=> b!3162676 (= lt!1063285 (lemmaGetValueImpliesTupleContained!30 lt!1063296 lt!1063297 lt!1063276))))

(assert (=> b!3162676 (contains!6151 (toList!2048 lt!1063296) (tuple2!34435 lt!1063297 lt!1063276))))

(declare-fun lt!1063300 () Unit!49773)

(assert (=> b!3162676 (= lt!1063300 lt!1063285)))

(declare-fun lt!1063286 () Unit!49773)

(assert (=> b!3162676 (= lt!1063286 (forallContained!1069 (toList!2048 lt!1063296) lambda!115777 (tuple2!34435 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409)) (apply!7937 lt!1063296 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409))))))))

(declare-fun isDefined!5416 (Option!6883) Bool)

(assert (=> b!3162676 (isDefined!5416 (getPair!91 (apply!7937 lt!1063296 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409))) (tuple2!34425 r!13156 a!2409)))))

(declare-fun lt!1063293 () Unit!49773)

(assert (=> b!3162676 (= lt!1063293 lt!1063284)))

(declare-fun extractMap!229 (List!35551) ListMap!1293)

(assert (=> b!3162676 (= (_2!20345 (get!11216 (getPair!91 (apply!7937 lt!1063296 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409))) (tuple2!34425 r!13156 a!2409)))) (get!11215 (getValueByKey!169 (toList!2047 (extractMap!229 (toList!2048 lt!1063296))) (tuple2!34425 r!13156 a!2409))))))

(declare-fun lt!1063290 () Unit!49773)

(assert (=> b!3162676 (= lt!1063290 lt!1063283)))

(declare-fun b!3162677 () Bool)

(assert (=> b!3162677 (= e!1970302 (= lt!1063289 (dynLambda!14355 (defaultValue!4219 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409))))))

(declare-fun b!3162678 () Bool)

(assert (=> b!3162678 false))

(declare-fun lt!1063299 () Unit!49773)

(declare-fun lt!1063295 () Unit!49773)

(assert (=> b!3162678 (= lt!1063299 lt!1063295)))

(declare-fun lt!1063279 () List!35551)

(declare-fun lt!1063277 () List!35550)

(assert (=> b!3162678 (contains!6151 lt!1063279 (tuple2!34435 lt!1063288 lt!1063277))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!97 (List!35551 (_ BitVec 64) List!35550) Unit!49773)

(assert (=> b!3162678 (= lt!1063295 (lemmaGetValueByKeyImpliesContainsTuple!97 lt!1063279 lt!1063288 lt!1063277))))

(assert (=> b!3162678 (= lt!1063277 (apply!7936 (v!35078 (underlying!8514 (cache!4188 cache!347))) lt!1063288))))

(assert (=> b!3162678 (= lt!1063279 (toList!2048 (map!7884 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))

(declare-fun lt!1063301 () Unit!49773)

(declare-fun lt!1063303 () Unit!49773)

(assert (=> b!3162678 (= lt!1063301 lt!1063303)))

(declare-fun lt!1063294 () List!35551)

(declare-datatypes ((Option!6884 0))(
  ( (None!6883) (Some!6883 (v!35081 List!35550)) )
))
(declare-fun isDefined!5417 (Option!6884) Bool)

(declare-fun getValueByKey!170 (List!35551 (_ BitVec 64)) Option!6884)

(assert (=> b!3162678 (isDefined!5417 (getValueByKey!170 lt!1063294 lt!1063288))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!125 (List!35551 (_ BitVec 64)) Unit!49773)

(assert (=> b!3162678 (= lt!1063303 (lemmaContainsKeyImpliesGetValueByKeyDefined!125 lt!1063294 lt!1063288))))

(assert (=> b!3162678 (= lt!1063294 (toList!2048 (map!7884 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))

(declare-fun Unit!49777 () Unit!49773)

(assert (=> b!3162678 (= e!1970303 Unit!49777)))

(assert (= (and d!868566 c!531836) b!3162674))

(assert (= (and d!868566 (not c!531836)) b!3162676))

(assert (= (and b!3162676 c!531835) b!3162678))

(assert (= (and b!3162676 (not c!531835)) b!3162673))

(assert (= (and d!868566 c!531837) b!3162675))

(assert (= (and d!868566 (not c!531837)) b!3162677))

(declare-fun b_lambda!86383 () Bool)

(assert (=> (not b_lambda!86383) (not b!3162674)))

(declare-fun t!234619 () Bool)

(declare-fun tb!155091 () Bool)

(assert (=> (and b!3162509 (= (defaultValue!4219 (cache!4188 cache!347)) (defaultValue!4219 (cache!4188 cache!347))) t!234619) tb!155091))

(assert (=> b!3162674 t!234619))

(declare-fun result!196806 () Bool)

(declare-fun b_and!209299 () Bool)

(assert (= b_and!209297 (and (=> t!234619 result!196806) b_and!209299)))

(declare-fun b_lambda!86385 () Bool)

(assert (=> (not b_lambda!86385) (not b!3162677)))

(assert (=> b!3162677 t!234619))

(declare-fun b_and!209301 () Bool)

(assert (= b_and!209299 (and (=> t!234619 result!196806) b_and!209301)))

(declare-fun m!3426408 () Bool)

(assert (=> b!3162674 m!3426408))

(assert (=> b!3162677 m!3426408))

(declare-fun m!3426410 () Bool)

(assert (=> b!3162676 m!3426410))

(declare-fun m!3426412 () Bool)

(assert (=> b!3162676 m!3426412))

(declare-fun m!3426414 () Bool)

(assert (=> b!3162676 m!3426414))

(declare-fun m!3426416 () Bool)

(assert (=> b!3162676 m!3426416))

(declare-fun m!3426418 () Bool)

(assert (=> b!3162676 m!3426418))

(declare-fun m!3426420 () Bool)

(assert (=> b!3162676 m!3426420))

(assert (=> b!3162676 m!3426412))

(declare-fun m!3426422 () Bool)

(assert (=> b!3162676 m!3426422))

(assert (=> b!3162676 m!3426410))

(declare-fun m!3426424 () Bool)

(assert (=> b!3162676 m!3426424))

(declare-fun m!3426426 () Bool)

(assert (=> b!3162676 m!3426426))

(declare-fun m!3426428 () Bool)

(assert (=> b!3162676 m!3426428))

(declare-fun m!3426430 () Bool)

(assert (=> b!3162676 m!3426430))

(declare-fun m!3426432 () Bool)

(assert (=> b!3162676 m!3426432))

(declare-fun m!3426434 () Bool)

(assert (=> b!3162676 m!3426434))

(declare-fun m!3426436 () Bool)

(assert (=> b!3162676 m!3426436))

(declare-fun m!3426438 () Bool)

(assert (=> b!3162676 m!3426438))

(assert (=> b!3162676 m!3426430))

(declare-fun m!3426440 () Bool)

(assert (=> b!3162676 m!3426440))

(declare-fun m!3426442 () Bool)

(assert (=> b!3162676 m!3426442))

(declare-fun m!3426444 () Bool)

(assert (=> b!3162676 m!3426444))

(assert (=> b!3162676 m!3426426))

(assert (=> b!3162676 m!3426438))

(assert (=> b!3162676 m!3426418))

(declare-fun m!3426446 () Bool)

(assert (=> b!3162676 m!3426446))

(assert (=> b!3162676 m!3426430))

(declare-fun m!3426448 () Bool)

(assert (=> b!3162676 m!3426448))

(declare-fun m!3426450 () Bool)

(assert (=> b!3162676 m!3426450))

(declare-fun m!3426452 () Bool)

(assert (=> b!3162676 m!3426452))

(declare-fun m!3426454 () Bool)

(assert (=> b!3162676 m!3426454))

(assert (=> b!3162676 m!3426426))

(assert (=> b!3162676 m!3426416))

(declare-fun m!3426456 () Bool)

(assert (=> b!3162675 m!3426456))

(declare-fun m!3426458 () Bool)

(assert (=> b!3162675 m!3426458))

(assert (=> b!3162675 m!3426458))

(declare-fun m!3426460 () Bool)

(assert (=> b!3162675 m!3426460))

(assert (=> d!868566 m!3426364))

(declare-fun m!3426462 () Bool)

(assert (=> d!868566 m!3426462))

(assert (=> b!3162678 m!3426436))

(declare-fun m!3426464 () Bool)

(assert (=> b!3162678 m!3426464))

(declare-fun m!3426466 () Bool)

(assert (=> b!3162678 m!3426466))

(declare-fun m!3426468 () Bool)

(assert (=> b!3162678 m!3426468))

(declare-fun m!3426470 () Bool)

(assert (=> b!3162678 m!3426470))

(assert (=> b!3162678 m!3426416))

(assert (=> b!3162678 m!3426468))

(declare-fun m!3426472 () Bool)

(assert (=> b!3162678 m!3426472))

(assert (=> b!3162589 d!868566))

(declare-fun bs!539452 () Bool)

(declare-fun b!3162689 () Bool)

(assert (= bs!539452 (and b!3162689 d!868562)))

(declare-fun lambda!115780 () Int)

(assert (=> bs!539452 (= lambda!115780 lambda!115770)))

(declare-fun e!1970318 () Unit!49773)

(declare-fun lt!1063327 () Unit!49773)

(assert (=> b!3162689 (= e!1970318 lt!1063327)))

(declare-fun lt!1063325 () tuple2!34424)

(assert (=> b!3162689 (= lt!1063325 (tuple2!34425 r!13156 a!2409))))

(declare-fun lemmaForallPairsThenForLookup!43 (MutableMap!4048 tuple2!34424 Int) Unit!49773)

(assert (=> b!3162689 (= lt!1063327 (lemmaForallPairsThenForLookup!43 (cache!4188 cache!347) lt!1063325 lambda!115780))))

(declare-fun lt!1063321 () tuple2!34426)

(assert (=> b!3162689 (= lt!1063321 (tuple2!34427 lt!1063325 (apply!7935 (cache!4188 cache!347) lt!1063325)))))

(declare-fun lt!1063328 () Regex!9721)

(assert (=> b!3162689 (= lt!1063328 (apply!7935 (cache!4188 cache!347) lt!1063325))))

(declare-fun res!1287432 () Bool)

(assert (=> b!3162689 (= res!1287432 (validRegex!4447 (_1!20344 lt!1063325)))))

(declare-fun e!1970316 () Bool)

(assert (=> b!3162689 (=> (not res!1287432) (not e!1970316))))

(assert (=> b!3162689 e!1970316))

(declare-fun b!3162690 () Bool)

(declare-fun Unit!49778 () Unit!49773)

(assert (=> b!3162690 (= e!1970318 Unit!49778)))

(declare-fun d!868568 () Bool)

(declare-fun e!1970317 () Bool)

(assert (=> d!868568 e!1970317))

(declare-fun res!1287431 () Bool)

(assert (=> d!868568 (=> res!1287431 e!1970317)))

(assert (=> d!868568 (= res!1287431 (not (contains!6150 (cache!4188 cache!347) (tuple2!34425 r!13156 a!2409))))))

(declare-fun lt!1063322 () Unit!49773)

(assert (=> d!868568 (= lt!1063322 e!1970318)))

(declare-fun c!531841 () Bool)

(assert (=> d!868568 (= c!531841 (contains!6150 (cache!4188 cache!347) (tuple2!34425 r!13156 a!2409)))))

(assert (=> d!868568 (validCacheMap!49 (cache!4188 cache!347))))

(assert (=> d!868568 (= (lemmaIfInCacheThenValid!49 cache!347 r!13156 a!2409) lt!1063322)))

(declare-fun b!3162691 () Bool)

(declare-fun lt!1063326 () tuple2!34424)

(assert (=> b!3162691 (= lt!1063326 lt!1063325)))

(declare-fun lt!1063324 () Regex!9721)

(assert (=> b!3162691 (= lt!1063324 (apply!7935 (cache!4188 cache!347) lt!1063325))))

(declare-fun lt!1063323 () Regex!9721)

(assert (=> b!3162691 (= lt!1063323 (apply!7935 (cache!4188 cache!347) lt!1063325))))

(assert (=> b!3162691 (= e!1970316 (= (apply!7935 (cache!4188 cache!347) lt!1063325) (derivativeStep!2884 (_1!20344 lt!1063325) (_2!20344 lt!1063325))))))

(declare-fun b!3162692 () Bool)

(assert (=> b!3162692 (= e!1970317 (= (derivativeStep!2884 r!13156 a!2409) (apply!7935 (cache!4188 cache!347) (tuple2!34425 r!13156 a!2409))))))

(assert (= (and d!868568 c!531841) b!3162689))

(assert (= (and d!868568 (not c!531841)) b!3162690))

(assert (= (and b!3162689 res!1287432) b!3162691))

(assert (= (and d!868568 (not res!1287431)) b!3162692))

(declare-fun m!3426474 () Bool)

(assert (=> b!3162689 m!3426474))

(declare-fun m!3426476 () Bool)

(assert (=> b!3162689 m!3426476))

(declare-fun m!3426478 () Bool)

(assert (=> b!3162689 m!3426478))

(assert (=> d!868568 m!3426364))

(assert (=> d!868568 m!3426380))

(assert (=> b!3162691 m!3426476))

(declare-fun m!3426480 () Bool)

(assert (=> b!3162691 m!3426480))

(assert (=> b!3162692 m!3426372))

(assert (=> b!3162692 m!3426366))

(assert (=> b!3162589 d!868568))

(declare-fun b!3162693 () Bool)

(declare-fun res!1287437 () Bool)

(declare-fun e!1970320 () Bool)

(assert (=> b!3162693 (=> (not res!1287437) (not e!1970320))))

(declare-fun call!229079 () Bool)

(assert (=> b!3162693 (= res!1287437 call!229079)))

(declare-fun e!1970324 () Bool)

(assert (=> b!3162693 (= e!1970324 e!1970320)))

(declare-fun b!3162694 () Bool)

(declare-fun e!1970322 () Bool)

(assert (=> b!3162694 (= e!1970322 e!1970324)))

(declare-fun c!531842 () Bool)

(assert (=> b!3162694 (= c!531842 ((_ is Union!9721) (ite c!531825 (reg!10050 r!13156) (ite c!531824 (regTwo!19955 r!13156) (regTwo!19954 r!13156)))))))

(declare-fun b!3162695 () Bool)

(declare-fun res!1287434 () Bool)

(declare-fun e!1970319 () Bool)

(assert (=> b!3162695 (=> res!1287434 e!1970319)))

(assert (=> b!3162695 (= res!1287434 (not ((_ is Concat!15042) (ite c!531825 (reg!10050 r!13156) (ite c!531824 (regTwo!19955 r!13156) (regTwo!19954 r!13156))))))))

(assert (=> b!3162695 (= e!1970324 e!1970319)))

(declare-fun d!868570 () Bool)

(declare-fun res!1287436 () Bool)

(declare-fun e!1970325 () Bool)

(assert (=> d!868570 (=> res!1287436 e!1970325)))

(assert (=> d!868570 (= res!1287436 ((_ is ElementMatch!9721) (ite c!531825 (reg!10050 r!13156) (ite c!531824 (regTwo!19955 r!13156) (regTwo!19954 r!13156)))))))

(assert (=> d!868570 (= (validRegex!4447 (ite c!531825 (reg!10050 r!13156) (ite c!531824 (regTwo!19955 r!13156) (regTwo!19954 r!13156)))) e!1970325)))

(declare-fun b!3162696 () Bool)

(declare-fun e!1970323 () Bool)

(assert (=> b!3162696 (= e!1970322 e!1970323)))

(declare-fun res!1287435 () Bool)

(assert (=> b!3162696 (= res!1287435 (not (nullable!3335 (reg!10050 (ite c!531825 (reg!10050 r!13156) (ite c!531824 (regTwo!19955 r!13156) (regTwo!19954 r!13156)))))))))

(assert (=> b!3162696 (=> (not res!1287435) (not e!1970323))))

(declare-fun b!3162697 () Bool)

(declare-fun e!1970321 () Bool)

(assert (=> b!3162697 (= e!1970319 e!1970321)))

(declare-fun res!1287433 () Bool)

(assert (=> b!3162697 (=> (not res!1287433) (not e!1970321))))

(assert (=> b!3162697 (= res!1287433 call!229079)))

(declare-fun b!3162698 () Bool)

(declare-fun call!229078 () Bool)

(assert (=> b!3162698 (= e!1970321 call!229078)))

(declare-fun b!3162699 () Bool)

(assert (=> b!3162699 (= e!1970325 e!1970322)))

(declare-fun c!531843 () Bool)

(assert (=> b!3162699 (= c!531843 ((_ is Star!9721) (ite c!531825 (reg!10050 r!13156) (ite c!531824 (regTwo!19955 r!13156) (regTwo!19954 r!13156)))))))

(declare-fun bm!229072 () Bool)

(assert (=> bm!229072 (= call!229079 (validRegex!4447 (ite c!531842 (regOne!19955 (ite c!531825 (reg!10050 r!13156) (ite c!531824 (regTwo!19955 r!13156) (regTwo!19954 r!13156)))) (regOne!19954 (ite c!531825 (reg!10050 r!13156) (ite c!531824 (regTwo!19955 r!13156) (regTwo!19954 r!13156)))))))))

(declare-fun bm!229073 () Bool)

(declare-fun call!229077 () Bool)

(assert (=> bm!229073 (= call!229077 (validRegex!4447 (ite c!531843 (reg!10050 (ite c!531825 (reg!10050 r!13156) (ite c!531824 (regTwo!19955 r!13156) (regTwo!19954 r!13156)))) (ite c!531842 (regTwo!19955 (ite c!531825 (reg!10050 r!13156) (ite c!531824 (regTwo!19955 r!13156) (regTwo!19954 r!13156)))) (regTwo!19954 (ite c!531825 (reg!10050 r!13156) (ite c!531824 (regTwo!19955 r!13156) (regTwo!19954 r!13156))))))))))

(declare-fun b!3162700 () Bool)

(assert (=> b!3162700 (= e!1970320 call!229078)))

(declare-fun b!3162701 () Bool)

(assert (=> b!3162701 (= e!1970323 call!229077)))

(declare-fun bm!229074 () Bool)

(assert (=> bm!229074 (= call!229078 call!229077)))

(assert (= (and d!868570 (not res!1287436)) b!3162699))

(assert (= (and b!3162699 c!531843) b!3162696))

(assert (= (and b!3162699 (not c!531843)) b!3162694))

(assert (= (and b!3162696 res!1287435) b!3162701))

(assert (= (and b!3162694 c!531842) b!3162693))

(assert (= (and b!3162694 (not c!531842)) b!3162695))

(assert (= (and b!3162693 res!1287437) b!3162700))

(assert (= (and b!3162695 (not res!1287434)) b!3162697))

(assert (= (and b!3162697 res!1287433) b!3162698))

(assert (= (or b!3162693 b!3162697) bm!229072))

(assert (= (or b!3162700 b!3162698) bm!229074))

(assert (= (or b!3162701 bm!229074) bm!229073))

(declare-fun m!3426482 () Bool)

(assert (=> b!3162696 m!3426482))

(declare-fun m!3426484 () Bool)

(assert (=> bm!229072 m!3426484))

(declare-fun m!3426486 () Bool)

(assert (=> bm!229073 m!3426486))

(assert (=> bm!229067 d!868570))

(declare-fun d!868572 () Bool)

(assert (=> d!868572 (= (nullable!3335 (reg!10050 (regTwo!19954 r!13156))) (nullableFct!946 (reg!10050 (regTwo!19954 r!13156))))))

(declare-fun bs!539453 () Bool)

(assert (= bs!539453 d!868572))

(declare-fun m!3426488 () Bool)

(assert (=> bs!539453 m!3426488))

(assert (=> b!3162541 d!868572))

(declare-fun bs!539454 () Bool)

(declare-fun b!3162709 () Bool)

(assert (= bs!539454 (and b!3162709 d!868562)))

(declare-fun lambda!115783 () Int)

(assert (=> bs!539454 (= lambda!115783 lambda!115770)))

(declare-fun bs!539455 () Bool)

(assert (= bs!539455 (and b!3162709 b!3162689)))

(assert (=> bs!539455 (= lambda!115783 lambda!115780)))

(declare-fun d!868574 () Bool)

(declare-fun res!1287444 () Bool)

(declare-fun e!1970330 () Bool)

(assert (=> d!868574 (=> (not res!1287444) (not e!1970330))))

(assert (=> d!868574 (= res!1287444 (valid!3227 (cache!4188 cache!347)))))

(assert (=> d!868574 (= (validCacheMap!49 (cache!4188 cache!347)) e!1970330)))

(declare-fun b!3162708 () Bool)

(declare-fun res!1287445 () Bool)

(assert (=> b!3162708 (=> (not res!1287445) (not e!1970330))))

(declare-fun invariantList!476 (List!35550) Bool)

(assert (=> b!3162708 (= res!1287445 (invariantList!476 (toList!2047 (map!7883 (cache!4188 cache!347)))))))

(assert (=> b!3162709 (= e!1970330 (forall!7141 (toList!2047 (map!7883 (cache!4188 cache!347))) lambda!115783))))

(assert (= (and d!868574 res!1287444) b!3162708))

(assert (= (and b!3162708 res!1287445) b!3162709))

(assert (=> d!868574 m!3426462))

(assert (=> b!3162708 m!3426456))

(declare-fun m!3426491 () Bool)

(assert (=> b!3162708 m!3426491))

(assert (=> b!3162709 m!3426456))

(declare-fun m!3426493 () Bool)

(assert (=> b!3162709 m!3426493))

(assert (=> b!3162603 d!868574))

(declare-fun d!868576 () Bool)

(assert (=> d!868576 (= (isEmpty!19751 lt!1063202) (not ((_ is Some!6881) lt!1063202)))))

(assert (=> d!868550 d!868576))

(declare-fun bs!539456 () Bool)

(declare-fun b!3162738 () Bool)

(assert (= bs!539456 (and b!3162738 b!3162676)))

(declare-fun lambda!115786 () Int)

(assert (=> bs!539456 (= lambda!115786 lambda!115777)))

(declare-fun b!3162732 () Bool)

(declare-fun e!1970345 () Unit!49773)

(declare-fun lt!1063382 () Unit!49773)

(assert (=> b!3162732 (= e!1970345 lt!1063382)))

(declare-fun lt!1063383 () ListLongMap!713)

(declare-fun call!229097 () ListLongMap!713)

(assert (=> b!3162732 (= lt!1063383 call!229097)))

(declare-fun lemmaInGenericMapThenInLongMap!91 (ListLongMap!713 tuple2!34424 Hashable!4058) Unit!49773)

(assert (=> b!3162732 (= lt!1063382 (lemmaInGenericMapThenInLongMap!91 lt!1063383 (tuple2!34425 r!13156 a!2409) (hashF!6090 (cache!4188 cache!347))))))

(declare-fun res!1287452 () Bool)

(declare-fun call!229096 () Bool)

(assert (=> b!3162732 (= res!1287452 call!229096)))

(declare-fun e!1970346 () Bool)

(assert (=> b!3162732 (=> (not res!1287452) (not e!1970346))))

(assert (=> b!3162732 e!1970346))

(declare-fun d!868578 () Bool)

(declare-fun lt!1063374 () Bool)

(declare-fun contains!6153 (ListMap!1293 tuple2!34424) Bool)

(assert (=> d!868578 (= lt!1063374 (contains!6153 (map!7883 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409)))))

(declare-fun e!1970351 () Bool)

(assert (=> d!868578 (= lt!1063374 e!1970351)))

(declare-fun res!1287453 () Bool)

(assert (=> d!868578 (=> (not res!1287453) (not e!1970351))))

(declare-fun lt!1063387 () (_ BitVec 64))

(declare-fun contains!6154 (MutLongMap!4142 (_ BitVec 64)) Bool)

(assert (=> d!868578 (= res!1287453 (contains!6154 (v!35078 (underlying!8514 (cache!4188 cache!347))) lt!1063387))))

(declare-fun lt!1063369 () Unit!49773)

(assert (=> d!868578 (= lt!1063369 e!1970345)))

(declare-fun c!531854 () Bool)

(assert (=> d!868578 (= c!531854 (contains!6153 (extractMap!229 (toList!2048 (map!7884 (v!35078 (underlying!8514 (cache!4188 cache!347)))))) (tuple2!34425 r!13156 a!2409)))))

(declare-fun lt!1063379 () Unit!49773)

(declare-fun e!1970349 () Unit!49773)

(assert (=> d!868578 (= lt!1063379 e!1970349)))

(declare-fun c!531855 () Bool)

(assert (=> d!868578 (= c!531855 (contains!6154 (v!35078 (underlying!8514 (cache!4188 cache!347))) lt!1063387))))

(assert (=> d!868578 (= lt!1063387 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409)))))

(assert (=> d!868578 (valid!3227 (cache!4188 cache!347))))

(assert (=> d!868578 (= (contains!6150 (cache!4188 cache!347) (tuple2!34425 r!13156 a!2409)) lt!1063374)))

(declare-fun b!3162733 () Bool)

(declare-fun e!1970347 () Unit!49773)

(declare-fun Unit!49779 () Unit!49773)

(assert (=> b!3162733 (= e!1970347 Unit!49779)))

(declare-fun b!3162734 () Bool)

(declare-fun Unit!49780 () Unit!49773)

(assert (=> b!3162734 (= e!1970349 Unit!49780)))

(declare-fun b!3162735 () Bool)

(declare-fun e!1970348 () Unit!49773)

(assert (=> b!3162735 (= e!1970345 e!1970348)))

(declare-fun res!1287454 () Bool)

(assert (=> b!3162735 (= res!1287454 call!229096)))

(declare-fun e!1970350 () Bool)

(assert (=> b!3162735 (=> (not res!1287454) (not e!1970350))))

(declare-fun c!531852 () Bool)

(assert (=> b!3162735 (= c!531852 e!1970350)))

(declare-fun b!3162736 () Bool)

(assert (=> b!3162736 false))

(declare-fun lt!1063378 () Unit!49773)

(declare-fun lt!1063381 () Unit!49773)

(assert (=> b!3162736 (= lt!1063378 lt!1063381)))

(declare-fun lt!1063386 () ListLongMap!713)

(assert (=> b!3162736 (contains!6153 (extractMap!229 (toList!2048 lt!1063386)) (tuple2!34425 r!13156 a!2409))))

(declare-fun lemmaInLongMapThenInGenericMap!91 (ListLongMap!713 tuple2!34424 Hashable!4058) Unit!49773)

(assert (=> b!3162736 (= lt!1063381 (lemmaInLongMapThenInGenericMap!91 lt!1063386 (tuple2!34425 r!13156 a!2409) (hashF!6090 (cache!4188 cache!347))))))

(assert (=> b!3162736 (= lt!1063386 call!229097)))

(declare-fun Unit!49781 () Unit!49773)

(assert (=> b!3162736 (= e!1970348 Unit!49781)))

(declare-fun call!229092 () Option!6883)

(declare-fun bm!229087 () Bool)

(declare-fun call!229093 () List!35550)

(assert (=> bm!229087 (= call!229092 (getPair!91 call!229093 (tuple2!34425 r!13156 a!2409)))))

(declare-fun bm!229088 () Bool)

(declare-fun call!229094 () Bool)

(assert (=> bm!229088 (= call!229094 (isDefined!5416 call!229092))))

(declare-fun b!3162737 () Bool)

(assert (=> b!3162737 (= e!1970346 call!229094)))

(declare-fun call!229095 () (_ BitVec 64))

(declare-fun bm!229089 () Bool)

(assert (=> bm!229089 (= call!229096 (contains!6152 (ite c!531854 lt!1063383 call!229097) call!229095))))

(assert (=> b!3162738 (= e!1970349 (forallContained!1069 (toList!2048 (map!7884 (v!35078 (underlying!8514 (cache!4188 cache!347))))) lambda!115786 (tuple2!34435 lt!1063387 (apply!7936 (v!35078 (underlying!8514 (cache!4188 cache!347))) lt!1063387))))))

(declare-fun c!531853 () Bool)

(assert (=> b!3162738 (= c!531853 (not (contains!6151 (toList!2048 (map!7884 (v!35078 (underlying!8514 (cache!4188 cache!347))))) (tuple2!34435 lt!1063387 (apply!7936 (v!35078 (underlying!8514 (cache!4188 cache!347))) lt!1063387)))))))

(declare-fun lt!1063371 () Unit!49773)

(assert (=> b!3162738 (= lt!1063371 e!1970347)))

(declare-fun bm!229090 () Bool)

(assert (=> bm!229090 (= call!229093 (apply!7937 (ite c!531854 lt!1063383 call!229097) call!229095))))

(declare-fun b!3162739 () Bool)

(declare-fun Unit!49782 () Unit!49773)

(assert (=> b!3162739 (= e!1970348 Unit!49782)))

(declare-fun b!3162740 () Bool)

(assert (=> b!3162740 (= e!1970350 call!229094)))

(declare-fun bm!229091 () Bool)

(assert (=> bm!229091 (= call!229097 (map!7884 (v!35078 (underlying!8514 (cache!4188 cache!347)))))))

(declare-fun b!3162741 () Bool)

(assert (=> b!3162741 false))

(declare-fun lt!1063370 () Unit!49773)

(declare-fun lt!1063384 () Unit!49773)

(assert (=> b!3162741 (= lt!1063370 lt!1063384)))

(declare-fun lt!1063373 () List!35551)

(declare-fun lt!1063377 () List!35550)

(assert (=> b!3162741 (contains!6151 lt!1063373 (tuple2!34435 lt!1063387 lt!1063377))))

(assert (=> b!3162741 (= lt!1063384 (lemmaGetValueByKeyImpliesContainsTuple!97 lt!1063373 lt!1063387 lt!1063377))))

(assert (=> b!3162741 (= lt!1063377 (apply!7936 (v!35078 (underlying!8514 (cache!4188 cache!347))) lt!1063387))))

(assert (=> b!3162741 (= lt!1063373 (toList!2048 (map!7884 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))

(declare-fun lt!1063385 () Unit!49773)

(declare-fun lt!1063380 () Unit!49773)

(assert (=> b!3162741 (= lt!1063385 lt!1063380)))

(declare-fun lt!1063376 () List!35551)

(assert (=> b!3162741 (isDefined!5417 (getValueByKey!170 lt!1063376 lt!1063387))))

(assert (=> b!3162741 (= lt!1063380 (lemmaContainsKeyImpliesGetValueByKeyDefined!125 lt!1063376 lt!1063387))))

(assert (=> b!3162741 (= lt!1063376 (toList!2048 (map!7884 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))

(declare-fun lt!1063372 () Unit!49773)

(declare-fun lt!1063388 () Unit!49773)

(assert (=> b!3162741 (= lt!1063372 lt!1063388)))

(declare-fun lt!1063375 () List!35551)

(declare-fun containsKey!189 (List!35551 (_ BitVec 64)) Bool)

(assert (=> b!3162741 (containsKey!189 lt!1063375 lt!1063387)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!92 (List!35551 (_ BitVec 64)) Unit!49773)

(assert (=> b!3162741 (= lt!1063388 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!92 lt!1063375 lt!1063387))))

(assert (=> b!3162741 (= lt!1063375 (toList!2048 (map!7884 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))

(declare-fun Unit!49783 () Unit!49773)

(assert (=> b!3162741 (= e!1970347 Unit!49783)))

(declare-fun bm!229092 () Bool)

(assert (=> bm!229092 (= call!229095 (hash!800 (hashF!6090 (cache!4188 cache!347)) (tuple2!34425 r!13156 a!2409)))))

(declare-fun b!3162742 () Bool)

(assert (=> b!3162742 (= e!1970351 (isDefined!5416 (getPair!91 (apply!7936 (v!35078 (underlying!8514 (cache!4188 cache!347))) lt!1063387) (tuple2!34425 r!13156 a!2409))))))

(assert (= (and d!868578 c!531855) b!3162738))

(assert (= (and d!868578 (not c!531855)) b!3162734))

(assert (= (and b!3162738 c!531853) b!3162741))

(assert (= (and b!3162738 (not c!531853)) b!3162733))

(assert (= (and d!868578 c!531854) b!3162732))

(assert (= (and d!868578 (not c!531854)) b!3162735))

(assert (= (and b!3162732 res!1287452) b!3162737))

(assert (= (and b!3162735 res!1287454) b!3162740))

(assert (= (and b!3162735 c!531852) b!3162736))

(assert (= (and b!3162735 (not c!531852)) b!3162739))

(assert (= (or b!3162732 b!3162737 b!3162735 b!3162740) bm!229092))

(assert (= (or b!3162732 b!3162735 b!3162740 b!3162736) bm!229091))

(assert (= (or b!3162732 b!3162735) bm!229089))

(assert (= (or b!3162737 b!3162740) bm!229090))

(assert (= (or b!3162737 b!3162740) bm!229087))

(assert (= (or b!3162737 b!3162740) bm!229088))

(assert (= (and d!868578 res!1287453) b!3162742))

(assert (=> bm!229092 m!3426426))

(declare-fun m!3426495 () Bool)

(assert (=> bm!229090 m!3426495))

(declare-fun m!3426497 () Bool)

(assert (=> b!3162741 m!3426497))

(declare-fun m!3426499 () Bool)

(assert (=> b!3162741 m!3426499))

(declare-fun m!3426501 () Bool)

(assert (=> b!3162741 m!3426501))

(declare-fun m!3426503 () Bool)

(assert (=> b!3162741 m!3426503))

(assert (=> b!3162741 m!3426436))

(declare-fun m!3426505 () Bool)

(assert (=> b!3162741 m!3426505))

(declare-fun m!3426507 () Bool)

(assert (=> b!3162741 m!3426507))

(declare-fun m!3426509 () Bool)

(assert (=> b!3162741 m!3426509))

(declare-fun m!3426511 () Bool)

(assert (=> b!3162741 m!3426511))

(assert (=> b!3162741 m!3426509))

(declare-fun m!3426513 () Bool)

(assert (=> b!3162732 m!3426513))

(declare-fun m!3426515 () Bool)

(assert (=> b!3162736 m!3426515))

(assert (=> b!3162736 m!3426515))

(declare-fun m!3426517 () Bool)

(assert (=> b!3162736 m!3426517))

(declare-fun m!3426519 () Bool)

(assert (=> b!3162736 m!3426519))

(declare-fun m!3426521 () Bool)

(assert (=> d!868578 m!3426521))

(assert (=> d!868578 m!3426456))

(declare-fun m!3426523 () Bool)

(assert (=> d!868578 m!3426523))

(assert (=> d!868578 m!3426426))

(declare-fun m!3426525 () Bool)

(assert (=> d!868578 m!3426525))

(assert (=> d!868578 m!3426436))

(assert (=> d!868578 m!3426521))

(declare-fun m!3426527 () Bool)

(assert (=> d!868578 m!3426527))

(assert (=> d!868578 m!3426456))

(assert (=> d!868578 m!3426462))

(assert (=> b!3162742 m!3426507))

(assert (=> b!3162742 m!3426507))

(declare-fun m!3426529 () Bool)

(assert (=> b!3162742 m!3426529))

(assert (=> b!3162742 m!3426529))

(declare-fun m!3426531 () Bool)

(assert (=> b!3162742 m!3426531))

(declare-fun m!3426533 () Bool)

(assert (=> bm!229087 m!3426533))

(assert (=> bm!229091 m!3426436))

(declare-fun m!3426535 () Bool)

(assert (=> bm!229089 m!3426535))

(declare-fun m!3426537 () Bool)

(assert (=> bm!229088 m!3426537))

(assert (=> b!3162738 m!3426436))

(assert (=> b!3162738 m!3426507))

(declare-fun m!3426539 () Bool)

(assert (=> b!3162738 m!3426539))

(declare-fun m!3426541 () Bool)

(assert (=> b!3162738 m!3426541))

(assert (=> d!868550 d!868578))

(assert (=> d!868550 d!868552))

(declare-fun d!868580 () Bool)

(assert (=> d!868580 (= (get!11215 lt!1063202) (v!35079 lt!1063202))))

(assert (=> b!3162591 d!868580))

(declare-fun b!3162763 () Bool)

(declare-fun c!531868 () Bool)

(assert (=> b!3162763 (= c!531868 (nullable!3335 (regOne!19954 r!13156)))))

(declare-fun e!1970366 () Regex!9721)

(declare-fun e!1970363 () Regex!9721)

(assert (=> b!3162763 (= e!1970366 e!1970363)))

(declare-fun d!868582 () Bool)

(declare-fun lt!1063391 () Regex!9721)

(assert (=> d!868582 (validRegex!4447 lt!1063391)))

(declare-fun e!1970362 () Regex!9721)

(assert (=> d!868582 (= lt!1063391 e!1970362)))

(declare-fun c!531870 () Bool)

(assert (=> d!868582 (= c!531870 (or ((_ is EmptyExpr!9721) r!13156) ((_ is EmptyLang!9721) r!13156)))))

(assert (=> d!868582 (validRegex!4447 r!13156)))

(assert (=> d!868582 (= (derivativeStep!2884 r!13156 a!2409) lt!1063391)))

(declare-fun b!3162764 () Bool)

(declare-fun e!1970364 () Regex!9721)

(assert (=> b!3162764 (= e!1970364 (ite (= a!2409 (c!531795 r!13156)) EmptyExpr!9721 EmptyLang!9721))))

(declare-fun b!3162765 () Bool)

(declare-fun call!229106 () Regex!9721)

(assert (=> b!3162765 (= e!1970363 (Union!9721 (Concat!15042 call!229106 (regTwo!19954 r!13156)) EmptyLang!9721))))

(declare-fun bm!229101 () Bool)

(declare-fun c!531869 () Bool)

(declare-fun call!229109 () Regex!9721)

(assert (=> bm!229101 (= call!229109 (derivativeStep!2884 (ite c!531869 (regOne!19955 r!13156) (regTwo!19954 r!13156)) a!2409))))

(declare-fun bm!229102 () Bool)

(declare-fun call!229108 () Regex!9721)

(assert (=> bm!229102 (= call!229106 call!229108)))

(declare-fun b!3162766 () Bool)

(assert (=> b!3162766 (= c!531869 ((_ is Union!9721) r!13156))))

(declare-fun e!1970365 () Regex!9721)

(assert (=> b!3162766 (= e!1970364 e!1970365)))

(declare-fun call!229107 () Regex!9721)

(declare-fun bm!229103 () Bool)

(declare-fun c!531866 () Bool)

(assert (=> bm!229103 (= call!229107 (derivativeStep!2884 (ite c!531869 (regTwo!19955 r!13156) (ite c!531866 (reg!10050 r!13156) (regOne!19954 r!13156))) a!2409))))

(declare-fun bm!229104 () Bool)

(assert (=> bm!229104 (= call!229108 call!229107)))

(declare-fun b!3162767 () Bool)

(assert (=> b!3162767 (= e!1970362 e!1970364)))

(declare-fun c!531867 () Bool)

(assert (=> b!3162767 (= c!531867 ((_ is ElementMatch!9721) r!13156))))

(declare-fun b!3162768 () Bool)

(assert (=> b!3162768 (= e!1970365 (Union!9721 call!229109 call!229107))))

(declare-fun b!3162769 () Bool)

(assert (=> b!3162769 (= e!1970366 (Concat!15042 call!229108 r!13156))))

(declare-fun b!3162770 () Bool)

(assert (=> b!3162770 (= e!1970365 e!1970366)))

(assert (=> b!3162770 (= c!531866 ((_ is Star!9721) r!13156))))

(declare-fun b!3162771 () Bool)

(assert (=> b!3162771 (= e!1970363 (Union!9721 (Concat!15042 call!229106 (regTwo!19954 r!13156)) call!229109))))

(declare-fun b!3162772 () Bool)

(assert (=> b!3162772 (= e!1970362 EmptyLang!9721)))

(assert (= (and d!868582 c!531870) b!3162772))

(assert (= (and d!868582 (not c!531870)) b!3162767))

(assert (= (and b!3162767 c!531867) b!3162764))

(assert (= (and b!3162767 (not c!531867)) b!3162766))

(assert (= (and b!3162766 c!531869) b!3162768))

(assert (= (and b!3162766 (not c!531869)) b!3162770))

(assert (= (and b!3162770 c!531866) b!3162769))

(assert (= (and b!3162770 (not c!531866)) b!3162763))

(assert (= (and b!3162763 c!531868) b!3162771))

(assert (= (and b!3162763 (not c!531868)) b!3162765))

(assert (= (or b!3162771 b!3162765) bm!229102))

(assert (= (or b!3162769 bm!229102) bm!229104))

(assert (= (or b!3162768 bm!229104) bm!229103))

(assert (= (or b!3162768 b!3162771) bm!229101))

(assert (=> b!3162763 m!3426326))

(declare-fun m!3426543 () Bool)

(assert (=> d!868582 m!3426543))

(assert (=> d!868582 m!3426320))

(declare-fun m!3426545 () Bool)

(assert (=> bm!229101 m!3426545))

(declare-fun m!3426547 () Bool)

(assert (=> bm!229103 m!3426547))

(assert (=> b!3162591 d!868582))

(assert (=> d!868558 d!868574))

(declare-fun b!3162773 () Bool)

(declare-fun res!1287459 () Bool)

(declare-fun e!1970368 () Bool)

(assert (=> b!3162773 (=> (not res!1287459) (not e!1970368))))

(declare-fun call!229112 () Bool)

(assert (=> b!3162773 (= res!1287459 call!229112)))

(declare-fun e!1970372 () Bool)

(assert (=> b!3162773 (= e!1970372 e!1970368)))

(declare-fun b!3162774 () Bool)

(declare-fun e!1970370 () Bool)

(assert (=> b!3162774 (= e!1970370 e!1970372)))

(declare-fun c!531871 () Bool)

(assert (=> b!3162774 (= c!531871 ((_ is Union!9721) (ite c!531801 (reg!10050 (regTwo!19954 r!13156)) (ite c!531800 (regTwo!19955 (regTwo!19954 r!13156)) (regTwo!19954 (regTwo!19954 r!13156))))))))

(declare-fun b!3162775 () Bool)

(declare-fun res!1287456 () Bool)

(declare-fun e!1970367 () Bool)

(assert (=> b!3162775 (=> res!1287456 e!1970367)))

(assert (=> b!3162775 (= res!1287456 (not ((_ is Concat!15042) (ite c!531801 (reg!10050 (regTwo!19954 r!13156)) (ite c!531800 (regTwo!19955 (regTwo!19954 r!13156)) (regTwo!19954 (regTwo!19954 r!13156)))))))))

(assert (=> b!3162775 (= e!1970372 e!1970367)))

(declare-fun d!868584 () Bool)

(declare-fun res!1287458 () Bool)

(declare-fun e!1970373 () Bool)

(assert (=> d!868584 (=> res!1287458 e!1970373)))

(assert (=> d!868584 (= res!1287458 ((_ is ElementMatch!9721) (ite c!531801 (reg!10050 (regTwo!19954 r!13156)) (ite c!531800 (regTwo!19955 (regTwo!19954 r!13156)) (regTwo!19954 (regTwo!19954 r!13156))))))))

(assert (=> d!868584 (= (validRegex!4447 (ite c!531801 (reg!10050 (regTwo!19954 r!13156)) (ite c!531800 (regTwo!19955 (regTwo!19954 r!13156)) (regTwo!19954 (regTwo!19954 r!13156))))) e!1970373)))

(declare-fun b!3162776 () Bool)

(declare-fun e!1970371 () Bool)

(assert (=> b!3162776 (= e!1970370 e!1970371)))

(declare-fun res!1287457 () Bool)

(assert (=> b!3162776 (= res!1287457 (not (nullable!3335 (reg!10050 (ite c!531801 (reg!10050 (regTwo!19954 r!13156)) (ite c!531800 (regTwo!19955 (regTwo!19954 r!13156)) (regTwo!19954 (regTwo!19954 r!13156))))))))))

(assert (=> b!3162776 (=> (not res!1287457) (not e!1970371))))

(declare-fun b!3162777 () Bool)

(declare-fun e!1970369 () Bool)

(assert (=> b!3162777 (= e!1970367 e!1970369)))

(declare-fun res!1287455 () Bool)

(assert (=> b!3162777 (=> (not res!1287455) (not e!1970369))))

(assert (=> b!3162777 (= res!1287455 call!229112)))

(declare-fun b!3162778 () Bool)

(declare-fun call!229111 () Bool)

(assert (=> b!3162778 (= e!1970369 call!229111)))

(declare-fun b!3162779 () Bool)

(assert (=> b!3162779 (= e!1970373 e!1970370)))

(declare-fun c!531872 () Bool)

(assert (=> b!3162779 (= c!531872 ((_ is Star!9721) (ite c!531801 (reg!10050 (regTwo!19954 r!13156)) (ite c!531800 (regTwo!19955 (regTwo!19954 r!13156)) (regTwo!19954 (regTwo!19954 r!13156))))))))

(declare-fun bm!229105 () Bool)

(assert (=> bm!229105 (= call!229112 (validRegex!4447 (ite c!531871 (regOne!19955 (ite c!531801 (reg!10050 (regTwo!19954 r!13156)) (ite c!531800 (regTwo!19955 (regTwo!19954 r!13156)) (regTwo!19954 (regTwo!19954 r!13156))))) (regOne!19954 (ite c!531801 (reg!10050 (regTwo!19954 r!13156)) (ite c!531800 (regTwo!19955 (regTwo!19954 r!13156)) (regTwo!19954 (regTwo!19954 r!13156))))))))))

(declare-fun call!229110 () Bool)

(declare-fun bm!229106 () Bool)

(assert (=> bm!229106 (= call!229110 (validRegex!4447 (ite c!531872 (reg!10050 (ite c!531801 (reg!10050 (regTwo!19954 r!13156)) (ite c!531800 (regTwo!19955 (regTwo!19954 r!13156)) (regTwo!19954 (regTwo!19954 r!13156))))) (ite c!531871 (regTwo!19955 (ite c!531801 (reg!10050 (regTwo!19954 r!13156)) (ite c!531800 (regTwo!19955 (regTwo!19954 r!13156)) (regTwo!19954 (regTwo!19954 r!13156))))) (regTwo!19954 (ite c!531801 (reg!10050 (regTwo!19954 r!13156)) (ite c!531800 (regTwo!19955 (regTwo!19954 r!13156)) (regTwo!19954 (regTwo!19954 r!13156)))))))))))

(declare-fun b!3162780 () Bool)

(assert (=> b!3162780 (= e!1970368 call!229111)))

(declare-fun b!3162781 () Bool)

(assert (=> b!3162781 (= e!1970371 call!229110)))

(declare-fun bm!229107 () Bool)

(assert (=> bm!229107 (= call!229111 call!229110)))

(assert (= (and d!868584 (not res!1287458)) b!3162779))

(assert (= (and b!3162779 c!531872) b!3162776))

(assert (= (and b!3162779 (not c!531872)) b!3162774))

(assert (= (and b!3162776 res!1287457) b!3162781))

(assert (= (and b!3162774 c!531871) b!3162773))

(assert (= (and b!3162774 (not c!531871)) b!3162775))

(assert (= (and b!3162773 res!1287459) b!3162780))

(assert (= (and b!3162775 (not res!1287456)) b!3162777))

(assert (= (and b!3162777 res!1287455) b!3162778))

(assert (= (or b!3162773 b!3162777) bm!229105))

(assert (= (or b!3162780 b!3162778) bm!229107))

(assert (= (or b!3162781 bm!229107) bm!229106))

(declare-fun m!3426549 () Bool)

(assert (=> b!3162776 m!3426549))

(declare-fun m!3426551 () Bool)

(assert (=> bm!229105 m!3426551))

(declare-fun m!3426553 () Bool)

(assert (=> bm!229106 m!3426553))

(assert (=> bm!229052 d!868584))

(declare-fun b!3162782 () Bool)

(declare-fun res!1287464 () Bool)

(declare-fun e!1970375 () Bool)

(assert (=> b!3162782 (=> (not res!1287464) (not e!1970375))))

(declare-fun call!229115 () Bool)

(assert (=> b!3162782 (= res!1287464 call!229115)))

(declare-fun e!1970379 () Bool)

(assert (=> b!3162782 (= e!1970379 e!1970375)))

(declare-fun b!3162783 () Bool)

(declare-fun e!1970377 () Bool)

(assert (=> b!3162783 (= e!1970377 e!1970379)))

(declare-fun c!531873 () Bool)

(assert (=> b!3162783 (= c!531873 ((_ is Union!9721) (ite c!531800 (regOne!19955 (regTwo!19954 r!13156)) (regOne!19954 (regTwo!19954 r!13156)))))))

(declare-fun b!3162784 () Bool)

(declare-fun res!1287461 () Bool)

(declare-fun e!1970374 () Bool)

(assert (=> b!3162784 (=> res!1287461 e!1970374)))

(assert (=> b!3162784 (= res!1287461 (not ((_ is Concat!15042) (ite c!531800 (regOne!19955 (regTwo!19954 r!13156)) (regOne!19954 (regTwo!19954 r!13156))))))))

(assert (=> b!3162784 (= e!1970379 e!1970374)))

(declare-fun d!868586 () Bool)

(declare-fun res!1287463 () Bool)

(declare-fun e!1970380 () Bool)

(assert (=> d!868586 (=> res!1287463 e!1970380)))

(assert (=> d!868586 (= res!1287463 ((_ is ElementMatch!9721) (ite c!531800 (regOne!19955 (regTwo!19954 r!13156)) (regOne!19954 (regTwo!19954 r!13156)))))))

(assert (=> d!868586 (= (validRegex!4447 (ite c!531800 (regOne!19955 (regTwo!19954 r!13156)) (regOne!19954 (regTwo!19954 r!13156)))) e!1970380)))

(declare-fun b!3162785 () Bool)

(declare-fun e!1970378 () Bool)

(assert (=> b!3162785 (= e!1970377 e!1970378)))

(declare-fun res!1287462 () Bool)

(assert (=> b!3162785 (= res!1287462 (not (nullable!3335 (reg!10050 (ite c!531800 (regOne!19955 (regTwo!19954 r!13156)) (regOne!19954 (regTwo!19954 r!13156)))))))))

(assert (=> b!3162785 (=> (not res!1287462) (not e!1970378))))

(declare-fun b!3162786 () Bool)

(declare-fun e!1970376 () Bool)

(assert (=> b!3162786 (= e!1970374 e!1970376)))

(declare-fun res!1287460 () Bool)

(assert (=> b!3162786 (=> (not res!1287460) (not e!1970376))))

(assert (=> b!3162786 (= res!1287460 call!229115)))

(declare-fun b!3162787 () Bool)

(declare-fun call!229114 () Bool)

(assert (=> b!3162787 (= e!1970376 call!229114)))

(declare-fun b!3162788 () Bool)

(assert (=> b!3162788 (= e!1970380 e!1970377)))

(declare-fun c!531874 () Bool)

(assert (=> b!3162788 (= c!531874 ((_ is Star!9721) (ite c!531800 (regOne!19955 (regTwo!19954 r!13156)) (regOne!19954 (regTwo!19954 r!13156)))))))

(declare-fun bm!229108 () Bool)

(assert (=> bm!229108 (= call!229115 (validRegex!4447 (ite c!531873 (regOne!19955 (ite c!531800 (regOne!19955 (regTwo!19954 r!13156)) (regOne!19954 (regTwo!19954 r!13156)))) (regOne!19954 (ite c!531800 (regOne!19955 (regTwo!19954 r!13156)) (regOne!19954 (regTwo!19954 r!13156)))))))))

(declare-fun call!229113 () Bool)

(declare-fun bm!229109 () Bool)

(assert (=> bm!229109 (= call!229113 (validRegex!4447 (ite c!531874 (reg!10050 (ite c!531800 (regOne!19955 (regTwo!19954 r!13156)) (regOne!19954 (regTwo!19954 r!13156)))) (ite c!531873 (regTwo!19955 (ite c!531800 (regOne!19955 (regTwo!19954 r!13156)) (regOne!19954 (regTwo!19954 r!13156)))) (regTwo!19954 (ite c!531800 (regOne!19955 (regTwo!19954 r!13156)) (regOne!19954 (regTwo!19954 r!13156))))))))))

(declare-fun b!3162789 () Bool)

(assert (=> b!3162789 (= e!1970375 call!229114)))

(declare-fun b!3162790 () Bool)

(assert (=> b!3162790 (= e!1970378 call!229113)))

(declare-fun bm!229110 () Bool)

(assert (=> bm!229110 (= call!229114 call!229113)))

(assert (= (and d!868586 (not res!1287463)) b!3162788))

(assert (= (and b!3162788 c!531874) b!3162785))

(assert (= (and b!3162788 (not c!531874)) b!3162783))

(assert (= (and b!3162785 res!1287462) b!3162790))

(assert (= (and b!3162783 c!531873) b!3162782))

(assert (= (and b!3162783 (not c!531873)) b!3162784))

(assert (= (and b!3162782 res!1287464) b!3162789))

(assert (= (and b!3162784 (not res!1287461)) b!3162786))

(assert (= (and b!3162786 res!1287460) b!3162787))

(assert (= (or b!3162782 b!3162786) bm!229108))

(assert (= (or b!3162789 b!3162787) bm!229110))

(assert (= (or b!3162790 bm!229110) bm!229109))

(declare-fun m!3426555 () Bool)

(assert (=> b!3162785 m!3426555))

(declare-fun m!3426557 () Bool)

(assert (=> bm!229108 m!3426557))

(declare-fun m!3426559 () Bool)

(assert (=> bm!229109 m!3426559))

(assert (=> bm!229051 d!868586))

(declare-fun bm!229115 () Bool)

(declare-fun call!229121 () Bool)

(declare-fun c!531877 () Bool)

(assert (=> bm!229115 (= call!229121 (nullable!3335 (ite c!531877 (regTwo!19955 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))))))

(declare-fun d!868588 () Bool)

(declare-fun res!1287476 () Bool)

(declare-fun e!1970396 () Bool)

(assert (=> d!868588 (=> res!1287476 e!1970396)))

(assert (=> d!868588 (= res!1287476 ((_ is EmptyExpr!9721) (regOne!19954 r!13156)))))

(assert (=> d!868588 (= (nullableFct!946 (regOne!19954 r!13156)) e!1970396)))

(declare-fun b!3162805 () Bool)

(declare-fun e!1970394 () Bool)

(declare-fun e!1970397 () Bool)

(assert (=> b!3162805 (= e!1970394 e!1970397)))

(assert (=> b!3162805 (= c!531877 ((_ is Union!9721) (regOne!19954 r!13156)))))

(declare-fun b!3162806 () Bool)

(declare-fun e!1970398 () Bool)

(assert (=> b!3162806 (= e!1970397 e!1970398)))

(declare-fun res!1287477 () Bool)

(declare-fun call!229120 () Bool)

(assert (=> b!3162806 (= res!1287477 call!229120)))

(assert (=> b!3162806 (=> res!1287477 e!1970398)))

(declare-fun b!3162807 () Bool)

(declare-fun e!1970395 () Bool)

(assert (=> b!3162807 (= e!1970395 e!1970394)))

(declare-fun res!1287479 () Bool)

(assert (=> b!3162807 (=> res!1287479 e!1970394)))

(assert (=> b!3162807 (= res!1287479 ((_ is Star!9721) (regOne!19954 r!13156)))))

(declare-fun b!3162808 () Bool)

(declare-fun e!1970393 () Bool)

(assert (=> b!3162808 (= e!1970393 call!229120)))

(declare-fun b!3162809 () Bool)

(assert (=> b!3162809 (= e!1970398 call!229121)))

(declare-fun b!3162810 () Bool)

(assert (=> b!3162810 (= e!1970396 e!1970395)))

(declare-fun res!1287478 () Bool)

(assert (=> b!3162810 (=> (not res!1287478) (not e!1970395))))

(assert (=> b!3162810 (= res!1287478 (and (not ((_ is EmptyLang!9721) (regOne!19954 r!13156))) (not ((_ is ElementMatch!9721) (regOne!19954 r!13156)))))))

(declare-fun bm!229116 () Bool)

(assert (=> bm!229116 (= call!229120 (nullable!3335 (ite c!531877 (regOne!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156)))))))

(declare-fun b!3162811 () Bool)

(assert (=> b!3162811 (= e!1970397 e!1970393)))

(declare-fun res!1287475 () Bool)

(assert (=> b!3162811 (= res!1287475 call!229121)))

(assert (=> b!3162811 (=> (not res!1287475) (not e!1970393))))

(assert (= (and d!868588 (not res!1287476)) b!3162810))

(assert (= (and b!3162810 res!1287478) b!3162807))

(assert (= (and b!3162807 (not res!1287479)) b!3162805))

(assert (= (and b!3162805 c!531877) b!3162806))

(assert (= (and b!3162805 (not c!531877)) b!3162811))

(assert (= (and b!3162806 (not res!1287477)) b!3162809))

(assert (= (and b!3162811 res!1287475) b!3162808))

(assert (= (or b!3162809 b!3162811) bm!229115))

(assert (= (or b!3162806 b!3162808) bm!229116))

(declare-fun m!3426561 () Bool)

(assert (=> bm!229115 m!3426561))

(declare-fun m!3426563 () Bool)

(assert (=> bm!229116 m!3426563))

(assert (=> d!868548 d!868588))

(declare-fun b!3162812 () Bool)

(declare-fun c!531883 () Bool)

(assert (=> b!3162812 (= c!531883 ((_ is ElementMatch!9721) (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156))))))))

(declare-fun e!1970401 () tuple2!34428)

(declare-fun e!1970403 () tuple2!34428)

(assert (=> b!3162812 (= e!1970401 e!1970403)))

(declare-fun b!3162813 () Bool)

(declare-fun e!1970400 () tuple2!34428)

(declare-fun lt!1063399 () Option!6882)

(assert (=> b!3162813 (= e!1970400 (tuple2!34429 (v!35079 lt!1063399) cache!347))))

(declare-fun bm!229117 () Bool)

(declare-fun call!229122 () tuple2!34428)

(declare-fun call!229124 () tuple2!34428)

(assert (=> bm!229117 (= call!229122 call!229124)))

(declare-fun b!3162814 () Bool)

(declare-fun e!1970399 () tuple2!34428)

(declare-fun e!1970402 () tuple2!34428)

(assert (=> b!3162814 (= e!1970399 e!1970402)))

(declare-fun c!531882 () Bool)

(assert (=> b!3162814 (= c!531882 (nullable!3335 (regOne!19954 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))))))))

(declare-fun b!3162816 () Bool)

(declare-fun lt!1063398 () tuple2!34428)

(declare-fun call!229125 () tuple2!34428)

(assert (=> b!3162816 (= lt!1063398 call!229125)))

(assert (=> b!3162816 (= e!1970402 (tuple2!34429 (Union!9721 (Concat!15042 (_1!20346 lt!1063398) (regTwo!19954 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))))) EmptyLang!9721) (_2!20346 lt!1063398)))))

(declare-fun b!3162817 () Bool)

(assert (=> b!3162817 (= e!1970403 (tuple2!34429 (ite (= a!2409 (c!531795 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))))) EmptyExpr!9721 EmptyLang!9721) cache!347))))

(declare-fun b!3162818 () Bool)

(declare-fun lt!1063394 () tuple2!34428)

(declare-fun call!229123 () tuple2!34428)

(assert (=> b!3162818 (= lt!1063394 call!229123)))

(declare-fun lt!1063396 () tuple2!34428)

(assert (=> b!3162818 (= lt!1063396 call!229125)))

(assert (=> b!3162818 (= e!1970402 (tuple2!34429 (Union!9721 (Concat!15042 (_1!20346 lt!1063396) (regTwo!19954 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))))) (_1!20346 lt!1063394)) (_2!20346 lt!1063394)))))

(declare-fun b!3162819 () Bool)

(declare-fun lt!1063392 () tuple2!34428)

(assert (=> b!3162819 (= lt!1063392 call!229123)))

(declare-fun lt!1063393 () tuple2!34428)

(assert (=> b!3162819 (= lt!1063393 call!229124)))

(declare-fun e!1970404 () tuple2!34428)

(assert (=> b!3162819 (= e!1970404 (tuple2!34429 (Union!9721 (_1!20346 lt!1063393) (_1!20346 lt!1063392)) (_2!20346 lt!1063392)))))

(declare-fun c!531881 () Bool)

(declare-fun bm!229118 () Bool)

(declare-fun c!531880 () Bool)

(assert (=> bm!229118 (= call!229124 (derivativeStepMem!22 (ite c!531881 (regOne!19955 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156))))) (ite c!531880 (reg!10050 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156))))) (regOne!19954 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156))))))) a!2409 cache!347))))

(declare-fun b!3162815 () Bool)

(assert (=> b!3162815 (= e!1970401 (tuple2!34429 EmptyLang!9721 cache!347))))

(declare-fun lt!1063400 () tuple2!34428)

(declare-fun d!868590 () Bool)

(assert (=> d!868590 (= (_1!20346 lt!1063400) (derivativeStep!2884 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))) a!2409))))

(assert (=> d!868590 (= lt!1063400 e!1970400)))

(declare-fun c!531878 () Bool)

(assert (=> d!868590 (= c!531878 ((_ is Some!6881) lt!1063399))))

(assert (=> d!868590 (= lt!1063399 (get!11214 cache!347 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))) a!2409))))

(assert (=> d!868590 (validRegex!4447 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))))))

(assert (=> d!868590 (= (derivativeStepMem!22 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))) a!2409 cache!347) lt!1063400)))

(declare-fun b!3162820 () Bool)

(assert (=> b!3162820 (= c!531880 ((_ is Star!9721) (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156))))))))

(assert (=> b!3162820 (= e!1970404 e!1970399)))

(declare-fun bm!229119 () Bool)

(assert (=> bm!229119 (= call!229125 call!229122)))

(declare-fun bm!229120 () Bool)

(assert (=> bm!229120 (= call!229123 (derivativeStepMem!22 (ite c!531881 (regTwo!19955 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156))))) (regTwo!19954 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))))) a!2409 (ite c!531881 (_2!20346 lt!1063393) (_2!20346 lt!1063396))))))

(declare-fun b!3162821 () Bool)

(declare-fun lt!1063397 () tuple2!34428)

(assert (=> b!3162821 (= e!1970400 (tuple2!34429 (_1!20346 lt!1063397) (_2!20347 (update!261 (_2!20346 lt!1063397) (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))) a!2409 (_1!20346 lt!1063397)))))))

(declare-fun c!531879 () Bool)

(assert (=> b!3162821 (= c!531879 (or ((_ is EmptyExpr!9721) (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156))))) ((_ is EmptyLang!9721) (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))))))))

(assert (=> b!3162821 (= lt!1063397 e!1970401)))

(declare-fun b!3162822 () Bool)

(declare-fun lt!1063395 () tuple2!34428)

(assert (=> b!3162822 (= e!1970399 (tuple2!34429 (Concat!15042 (_1!20346 lt!1063395) (Star!9721 (reg!10050 (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156))))))) (_2!20346 lt!1063395)))))

(assert (=> b!3162822 (= lt!1063395 call!229122)))

(declare-fun b!3162823 () Bool)

(assert (=> b!3162823 (= e!1970403 e!1970404)))

(assert (=> b!3162823 (= c!531881 ((_ is Union!9721) (ite c!531817 (regOne!19955 (regOne!19954 r!13156)) (ite c!531816 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156))))))))

(assert (= (and d!868590 c!531878) b!3162813))

(assert (= (and d!868590 (not c!531878)) b!3162821))

(assert (= (and b!3162821 c!531879) b!3162815))

(assert (= (and b!3162821 (not c!531879)) b!3162812))

(assert (= (and b!3162812 c!531883) b!3162817))

(assert (= (and b!3162812 (not c!531883)) b!3162823))

(assert (= (and b!3162823 c!531881) b!3162819))

(assert (= (and b!3162823 (not c!531881)) b!3162820))

(assert (= (and b!3162820 c!531880) b!3162822))

(assert (= (and b!3162820 (not c!531880)) b!3162814))

(assert (= (and b!3162814 c!531882) b!3162818))

(assert (= (and b!3162814 (not c!531882)) b!3162816))

(assert (= (or b!3162818 b!3162816) bm!229119))

(assert (= (or b!3162822 bm!229119) bm!229117))

(assert (= (or b!3162819 bm!229117) bm!229118))

(assert (= (or b!3162819 b!3162818) bm!229120))

(declare-fun m!3426565 () Bool)

(assert (=> bm!229120 m!3426565))

(declare-fun m!3426567 () Bool)

(assert (=> d!868590 m!3426567))

(declare-fun m!3426569 () Bool)

(assert (=> d!868590 m!3426569))

(declare-fun m!3426571 () Bool)

(assert (=> d!868590 m!3426571))

(declare-fun m!3426573 () Bool)

(assert (=> bm!229118 m!3426573))

(declare-fun m!3426575 () Bool)

(assert (=> b!3162814 m!3426575))

(declare-fun m!3426577 () Bool)

(assert (=> b!3162821 m!3426577))

(assert (=> bm!229063 d!868590))

(declare-fun b!3162824 () Bool)

(declare-fun c!531886 () Bool)

(assert (=> b!3162824 (= c!531886 (nullable!3335 (regOne!19954 (regOne!19954 r!13156))))))

(declare-fun e!1970409 () Regex!9721)

(declare-fun e!1970406 () Regex!9721)

(assert (=> b!3162824 (= e!1970409 e!1970406)))

(declare-fun d!868592 () Bool)

(declare-fun lt!1063401 () Regex!9721)

(assert (=> d!868592 (validRegex!4447 lt!1063401)))

(declare-fun e!1970405 () Regex!9721)

(assert (=> d!868592 (= lt!1063401 e!1970405)))

(declare-fun c!531888 () Bool)

(assert (=> d!868592 (= c!531888 (or ((_ is EmptyExpr!9721) (regOne!19954 r!13156)) ((_ is EmptyLang!9721) (regOne!19954 r!13156))))))

(assert (=> d!868592 (validRegex!4447 (regOne!19954 r!13156))))

(assert (=> d!868592 (= (derivativeStep!2884 (regOne!19954 r!13156) a!2409) lt!1063401)))

(declare-fun b!3162825 () Bool)

(declare-fun e!1970407 () Regex!9721)

(assert (=> b!3162825 (= e!1970407 (ite (= a!2409 (c!531795 (regOne!19954 r!13156))) EmptyExpr!9721 EmptyLang!9721))))

(declare-fun b!3162826 () Bool)

(declare-fun call!229126 () Regex!9721)

(assert (=> b!3162826 (= e!1970406 (Union!9721 (Concat!15042 call!229126 (regTwo!19954 (regOne!19954 r!13156))) EmptyLang!9721))))

(declare-fun bm!229121 () Bool)

(declare-fun call!229129 () Regex!9721)

(declare-fun c!531887 () Bool)

(assert (=> bm!229121 (= call!229129 (derivativeStep!2884 (ite c!531887 (regOne!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))) a!2409))))

(declare-fun bm!229122 () Bool)

(declare-fun call!229128 () Regex!9721)

(assert (=> bm!229122 (= call!229126 call!229128)))

(declare-fun b!3162827 () Bool)

(assert (=> b!3162827 (= c!531887 ((_ is Union!9721) (regOne!19954 r!13156)))))

(declare-fun e!1970408 () Regex!9721)

(assert (=> b!3162827 (= e!1970407 e!1970408)))

(declare-fun bm!229123 () Bool)

(declare-fun c!531884 () Bool)

(declare-fun call!229127 () Regex!9721)

(assert (=> bm!229123 (= call!229127 (derivativeStep!2884 (ite c!531887 (regTwo!19955 (regOne!19954 r!13156)) (ite c!531884 (reg!10050 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))) a!2409))))

(declare-fun bm!229124 () Bool)

(assert (=> bm!229124 (= call!229128 call!229127)))

(declare-fun b!3162828 () Bool)

(assert (=> b!3162828 (= e!1970405 e!1970407)))

(declare-fun c!531885 () Bool)

(assert (=> b!3162828 (= c!531885 ((_ is ElementMatch!9721) (regOne!19954 r!13156)))))

(declare-fun b!3162829 () Bool)

(assert (=> b!3162829 (= e!1970408 (Union!9721 call!229129 call!229127))))

(declare-fun b!3162830 () Bool)

(assert (=> b!3162830 (= e!1970409 (Concat!15042 call!229128 (regOne!19954 r!13156)))))

(declare-fun b!3162831 () Bool)

(assert (=> b!3162831 (= e!1970408 e!1970409)))

(assert (=> b!3162831 (= c!531884 ((_ is Star!9721) (regOne!19954 r!13156)))))

(declare-fun b!3162832 () Bool)

(assert (=> b!3162832 (= e!1970406 (Union!9721 (Concat!15042 call!229126 (regTwo!19954 (regOne!19954 r!13156))) call!229129))))

(declare-fun b!3162833 () Bool)

(assert (=> b!3162833 (= e!1970405 EmptyLang!9721)))

(assert (= (and d!868592 c!531888) b!3162833))

(assert (= (and d!868592 (not c!531888)) b!3162828))

(assert (= (and b!3162828 c!531885) b!3162825))

(assert (= (and b!3162828 (not c!531885)) b!3162827))

(assert (= (and b!3162827 c!531887) b!3162829))

(assert (= (and b!3162827 (not c!531887)) b!3162831))

(assert (= (and b!3162831 c!531884) b!3162830))

(assert (= (and b!3162831 (not c!531884)) b!3162824))

(assert (= (and b!3162824 c!531886) b!3162832))

(assert (= (and b!3162824 (not c!531886)) b!3162826))

(assert (= (or b!3162832 b!3162826) bm!229122))

(assert (= (or b!3162830 bm!229122) bm!229124))

(assert (= (or b!3162829 bm!229124) bm!229123))

(assert (= (or b!3162829 b!3162832) bm!229121))

(assert (=> b!3162824 m!3426356))

(declare-fun m!3426579 () Bool)

(assert (=> d!868592 m!3426579))

(assert (=> d!868592 m!3426352))

(declare-fun m!3426581 () Bool)

(assert (=> bm!229121 m!3426581))

(declare-fun m!3426583 () Bool)

(assert (=> bm!229123 m!3426583))

(assert (=> d!868542 d!868592))

(declare-fun d!868594 () Bool)

(declare-fun e!1970410 () Bool)

(assert (=> d!868594 e!1970410))

(declare-fun res!1287480 () Bool)

(assert (=> d!868594 (=> res!1287480 e!1970410)))

(declare-fun lt!1063403 () Option!6882)

(assert (=> d!868594 (= res!1287480 (isEmpty!19751 lt!1063403))))

(declare-fun e!1970411 () Option!6882)

(assert (=> d!868594 (= lt!1063403 e!1970411)))

(declare-fun c!531889 () Bool)

(assert (=> d!868594 (= c!531889 (contains!6150 (cache!4188 cache!347) (tuple2!34425 (regOne!19954 r!13156) a!2409)))))

(assert (=> d!868594 (validRegex!4447 (regOne!19954 r!13156))))

(assert (=> d!868594 (= (get!11214 cache!347 (regOne!19954 r!13156) a!2409) lt!1063403)))

(declare-fun b!3162834 () Bool)

(assert (=> b!3162834 (= e!1970411 (Some!6881 (apply!7935 (cache!4188 cache!347) (tuple2!34425 (regOne!19954 r!13156) a!2409))))))

(declare-fun lt!1063402 () Unit!49773)

(assert (=> b!3162834 (= lt!1063402 (lemmaIfInCacheThenValid!49 cache!347 (regOne!19954 r!13156) a!2409))))

(declare-fun b!3162835 () Bool)

(assert (=> b!3162835 (= e!1970411 None!6881)))

(declare-fun b!3162836 () Bool)

(assert (=> b!3162836 (= e!1970410 (= (get!11215 lt!1063403) (derivativeStep!2884 (regOne!19954 r!13156) a!2409)))))

(assert (= (and d!868594 c!531889) b!3162834))

(assert (= (and d!868594 (not c!531889)) b!3162835))

(assert (= (and d!868594 (not res!1287480)) b!3162836))

(declare-fun m!3426585 () Bool)

(assert (=> d!868594 m!3426585))

(declare-fun m!3426587 () Bool)

(assert (=> d!868594 m!3426587))

(assert (=> d!868594 m!3426352))

(declare-fun m!3426589 () Bool)

(assert (=> b!3162834 m!3426589))

(declare-fun m!3426591 () Bool)

(assert (=> b!3162834 m!3426591))

(declare-fun m!3426593 () Bool)

(assert (=> b!3162836 m!3426593))

(assert (=> b!3162836 m!3426348))

(assert (=> d!868542 d!868594))

(declare-fun b!3162837 () Bool)

(declare-fun res!1287485 () Bool)

(declare-fun e!1970413 () Bool)

(assert (=> b!3162837 (=> (not res!1287485) (not e!1970413))))

(declare-fun call!229132 () Bool)

(assert (=> b!3162837 (= res!1287485 call!229132)))

(declare-fun e!1970417 () Bool)

(assert (=> b!3162837 (= e!1970417 e!1970413)))

(declare-fun b!3162838 () Bool)

(declare-fun e!1970415 () Bool)

(assert (=> b!3162838 (= e!1970415 e!1970417)))

(declare-fun c!531890 () Bool)

(assert (=> b!3162838 (= c!531890 ((_ is Union!9721) (regOne!19954 r!13156)))))

(declare-fun b!3162839 () Bool)

(declare-fun res!1287482 () Bool)

(declare-fun e!1970412 () Bool)

(assert (=> b!3162839 (=> res!1287482 e!1970412)))

(assert (=> b!3162839 (= res!1287482 (not ((_ is Concat!15042) (regOne!19954 r!13156))))))

(assert (=> b!3162839 (= e!1970417 e!1970412)))

(declare-fun d!868596 () Bool)

(declare-fun res!1287484 () Bool)

(declare-fun e!1970418 () Bool)

(assert (=> d!868596 (=> res!1287484 e!1970418)))

(assert (=> d!868596 (= res!1287484 ((_ is ElementMatch!9721) (regOne!19954 r!13156)))))

(assert (=> d!868596 (= (validRegex!4447 (regOne!19954 r!13156)) e!1970418)))

(declare-fun b!3162840 () Bool)

(declare-fun e!1970416 () Bool)

(assert (=> b!3162840 (= e!1970415 e!1970416)))

(declare-fun res!1287483 () Bool)

(assert (=> b!3162840 (= res!1287483 (not (nullable!3335 (reg!10050 (regOne!19954 r!13156)))))))

(assert (=> b!3162840 (=> (not res!1287483) (not e!1970416))))

(declare-fun b!3162841 () Bool)

(declare-fun e!1970414 () Bool)

(assert (=> b!3162841 (= e!1970412 e!1970414)))

(declare-fun res!1287481 () Bool)

(assert (=> b!3162841 (=> (not res!1287481) (not e!1970414))))

(assert (=> b!3162841 (= res!1287481 call!229132)))

(declare-fun b!3162842 () Bool)

(declare-fun call!229131 () Bool)

(assert (=> b!3162842 (= e!1970414 call!229131)))

(declare-fun b!3162843 () Bool)

(assert (=> b!3162843 (= e!1970418 e!1970415)))

(declare-fun c!531891 () Bool)

(assert (=> b!3162843 (= c!531891 ((_ is Star!9721) (regOne!19954 r!13156)))))

(declare-fun bm!229125 () Bool)

(assert (=> bm!229125 (= call!229132 (validRegex!4447 (ite c!531890 (regOne!19955 (regOne!19954 r!13156)) (regOne!19954 (regOne!19954 r!13156)))))))

(declare-fun bm!229126 () Bool)

(declare-fun call!229130 () Bool)

(assert (=> bm!229126 (= call!229130 (validRegex!4447 (ite c!531891 (reg!10050 (regOne!19954 r!13156)) (ite c!531890 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))))))))

(declare-fun b!3162844 () Bool)

(assert (=> b!3162844 (= e!1970413 call!229131)))

(declare-fun b!3162845 () Bool)

(assert (=> b!3162845 (= e!1970416 call!229130)))

(declare-fun bm!229127 () Bool)

(assert (=> bm!229127 (= call!229131 call!229130)))

(assert (= (and d!868596 (not res!1287484)) b!3162843))

(assert (= (and b!3162843 c!531891) b!3162840))

(assert (= (and b!3162843 (not c!531891)) b!3162838))

(assert (= (and b!3162840 res!1287483) b!3162845))

(assert (= (and b!3162838 c!531890) b!3162837))

(assert (= (and b!3162838 (not c!531890)) b!3162839))

(assert (= (and b!3162837 res!1287485) b!3162844))

(assert (= (and b!3162839 (not res!1287482)) b!3162841))

(assert (= (and b!3162841 res!1287481) b!3162842))

(assert (= (or b!3162837 b!3162841) bm!229125))

(assert (= (or b!3162844 b!3162842) bm!229127))

(assert (= (or b!3162845 bm!229127) bm!229126))

(declare-fun m!3426595 () Bool)

(assert (=> b!3162840 m!3426595))

(declare-fun m!3426597 () Bool)

(assert (=> bm!229125 m!3426597))

(declare-fun m!3426599 () Bool)

(assert (=> bm!229126 m!3426599))

(assert (=> d!868542 d!868596))

(declare-fun d!868598 () Bool)

(assert (=> d!868598 (= (nullable!3335 (reg!10050 r!13156)) (nullableFct!946 (reg!10050 r!13156)))))

(declare-fun bs!539457 () Bool)

(assert (= bs!539457 d!868598))

(declare-fun m!3426601 () Bool)

(assert (=> bs!539457 m!3426601))

(assert (=> b!3162595 d!868598))

(declare-fun bs!539458 () Bool)

(declare-fun b!3162847 () Bool)

(assert (= bs!539458 (and b!3162847 d!868562)))

(declare-fun lambda!115787 () Int)

(assert (=> bs!539458 (= lambda!115787 lambda!115770)))

(declare-fun bs!539459 () Bool)

(assert (= bs!539459 (and b!3162847 b!3162689)))

(assert (=> bs!539459 (= lambda!115787 lambda!115780)))

(declare-fun bs!539460 () Bool)

(assert (= bs!539460 (and b!3162847 b!3162709)))

(assert (=> bs!539460 (= lambda!115787 lambda!115783)))

(declare-fun d!868600 () Bool)

(declare-fun res!1287486 () Bool)

(declare-fun e!1970419 () Bool)

(assert (=> d!868600 (=> (not res!1287486) (not e!1970419))))

(assert (=> d!868600 (= res!1287486 (valid!3227 (cache!4188 (_2!20346 lt!1063169))))))

(assert (=> d!868600 (= (validCacheMap!49 (cache!4188 (_2!20346 lt!1063169))) e!1970419)))

(declare-fun b!3162846 () Bool)

(declare-fun res!1287487 () Bool)

(assert (=> b!3162846 (=> (not res!1287487) (not e!1970419))))

(assert (=> b!3162846 (= res!1287487 (invariantList!476 (toList!2047 (map!7883 (cache!4188 (_2!20346 lt!1063169))))))))

(assert (=> b!3162847 (= e!1970419 (forall!7141 (toList!2047 (map!7883 (cache!4188 (_2!20346 lt!1063169)))) lambda!115787))))

(assert (= (and d!868600 res!1287486) b!3162846))

(assert (= (and b!3162846 res!1287487) b!3162847))

(declare-fun m!3426603 () Bool)

(assert (=> d!868600 m!3426603))

(declare-fun m!3426605 () Bool)

(assert (=> b!3162846 m!3426605))

(declare-fun m!3426607 () Bool)

(assert (=> b!3162846 m!3426607))

(assert (=> b!3162847 m!3426605))

(declare-fun m!3426609 () Bool)

(assert (=> b!3162847 m!3426609))

(assert (=> d!868556 d!868600))

(declare-fun b!3162848 () Bool)

(declare-fun c!531897 () Bool)

(assert (=> b!3162848 (= c!531897 ((_ is ElementMatch!9721) (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156)))))))

(declare-fun e!1970422 () tuple2!34428)

(declare-fun e!1970424 () tuple2!34428)

(assert (=> b!3162848 (= e!1970422 e!1970424)))

(declare-fun b!3162849 () Bool)

(declare-fun e!1970421 () tuple2!34428)

(declare-fun lt!1063411 () Option!6882)

(assert (=> b!3162849 (= e!1970421 (tuple2!34429 (v!35079 lt!1063411) (ite c!531817 (_2!20346 lt!1063189) (_2!20346 lt!1063192))))))

(declare-fun bm!229128 () Bool)

(declare-fun call!229133 () tuple2!34428)

(declare-fun call!229135 () tuple2!34428)

(assert (=> bm!229128 (= call!229133 call!229135)))

(declare-fun b!3162850 () Bool)

(declare-fun e!1970420 () tuple2!34428)

(declare-fun e!1970423 () tuple2!34428)

(assert (=> b!3162850 (= e!1970420 e!1970423)))

(declare-fun c!531896 () Bool)

(assert (=> b!3162850 (= c!531896 (nullable!3335 (regOne!19954 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))))))))

(declare-fun b!3162852 () Bool)

(declare-fun lt!1063410 () tuple2!34428)

(declare-fun call!229136 () tuple2!34428)

(assert (=> b!3162852 (= lt!1063410 call!229136)))

(assert (=> b!3162852 (= e!1970423 (tuple2!34429 (Union!9721 (Concat!15042 (_1!20346 lt!1063410) (regTwo!19954 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))))) EmptyLang!9721) (_2!20346 lt!1063410)))))

(declare-fun b!3162853 () Bool)

(assert (=> b!3162853 (= e!1970424 (tuple2!34429 (ite (= a!2409 (c!531795 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))))) EmptyExpr!9721 EmptyLang!9721) (ite c!531817 (_2!20346 lt!1063189) (_2!20346 lt!1063192))))))

(declare-fun b!3162854 () Bool)

(declare-fun lt!1063406 () tuple2!34428)

(declare-fun call!229134 () tuple2!34428)

(assert (=> b!3162854 (= lt!1063406 call!229134)))

(declare-fun lt!1063408 () tuple2!34428)

(assert (=> b!3162854 (= lt!1063408 call!229136)))

(assert (=> b!3162854 (= e!1970423 (tuple2!34429 (Union!9721 (Concat!15042 (_1!20346 lt!1063408) (regTwo!19954 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))))) (_1!20346 lt!1063406)) (_2!20346 lt!1063406)))))

(declare-fun b!3162855 () Bool)

(declare-fun lt!1063404 () tuple2!34428)

(assert (=> b!3162855 (= lt!1063404 call!229134)))

(declare-fun lt!1063405 () tuple2!34428)

(assert (=> b!3162855 (= lt!1063405 call!229135)))

(declare-fun e!1970425 () tuple2!34428)

(assert (=> b!3162855 (= e!1970425 (tuple2!34429 (Union!9721 (_1!20346 lt!1063405) (_1!20346 lt!1063404)) (_2!20346 lt!1063404)))))

(declare-fun c!531895 () Bool)

(declare-fun c!531894 () Bool)

(declare-fun bm!229129 () Bool)

(assert (=> bm!229129 (= call!229135 (derivativeStepMem!22 (ite c!531895 (regOne!19955 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156)))) (ite c!531894 (reg!10050 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156)))) (regOne!19954 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156)))))) a!2409 (ite c!531817 (_2!20346 lt!1063189) (_2!20346 lt!1063192))))))

(declare-fun b!3162851 () Bool)

(assert (=> b!3162851 (= e!1970422 (tuple2!34429 EmptyLang!9721 (ite c!531817 (_2!20346 lt!1063189) (_2!20346 lt!1063192))))))

(declare-fun d!868602 () Bool)

(declare-fun lt!1063412 () tuple2!34428)

(assert (=> d!868602 (= (_1!20346 lt!1063412) (derivativeStep!2884 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))) a!2409))))

(assert (=> d!868602 (= lt!1063412 e!1970421)))

(declare-fun c!531892 () Bool)

(assert (=> d!868602 (= c!531892 ((_ is Some!6881) lt!1063411))))

(assert (=> d!868602 (= lt!1063411 (get!11214 (ite c!531817 (_2!20346 lt!1063189) (_2!20346 lt!1063192)) (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))) a!2409))))

(assert (=> d!868602 (validRegex!4447 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))))))

(assert (=> d!868602 (= (derivativeStepMem!22 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))) a!2409 (ite c!531817 (_2!20346 lt!1063189) (_2!20346 lt!1063192))) lt!1063412)))

(declare-fun b!3162856 () Bool)

(assert (=> b!3162856 (= c!531894 ((_ is Star!9721) (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156)))))))

(assert (=> b!3162856 (= e!1970425 e!1970420)))

(declare-fun bm!229130 () Bool)

(assert (=> bm!229130 (= call!229136 call!229133)))

(declare-fun bm!229131 () Bool)

(assert (=> bm!229131 (= call!229134 (derivativeStepMem!22 (ite c!531895 (regTwo!19955 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156)))) (regTwo!19954 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))))) a!2409 (ite c!531895 (_2!20346 lt!1063405) (_2!20346 lt!1063408))))))

(declare-fun lt!1063409 () tuple2!34428)

(declare-fun b!3162857 () Bool)

(assert (=> b!3162857 (= e!1970421 (tuple2!34429 (_1!20346 lt!1063409) (_2!20347 (update!261 (_2!20346 lt!1063409) (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))) a!2409 (_1!20346 lt!1063409)))))))

(declare-fun c!531893 () Bool)

(assert (=> b!3162857 (= c!531893 (or ((_ is EmptyExpr!9721) (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156)))) ((_ is EmptyLang!9721) (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156))))))))

(assert (=> b!3162857 (= lt!1063409 e!1970422)))

(declare-fun lt!1063407 () tuple2!34428)

(declare-fun b!3162858 () Bool)

(assert (=> b!3162858 (= e!1970420 (tuple2!34429 (Concat!15042 (_1!20346 lt!1063407) (Star!9721 (reg!10050 (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156)))))) (_2!20346 lt!1063407)))))

(assert (=> b!3162858 (= lt!1063407 call!229133)))

(declare-fun b!3162859 () Bool)

(assert (=> b!3162859 (= e!1970424 e!1970425)))

(assert (=> b!3162859 (= c!531895 ((_ is Union!9721) (ite c!531817 (regTwo!19955 (regOne!19954 r!13156)) (regTwo!19954 (regOne!19954 r!13156)))))))

(assert (= (and d!868602 c!531892) b!3162849))

(assert (= (and d!868602 (not c!531892)) b!3162857))

(assert (= (and b!3162857 c!531893) b!3162851))

(assert (= (and b!3162857 (not c!531893)) b!3162848))

(assert (= (and b!3162848 c!531897) b!3162853))

(assert (= (and b!3162848 (not c!531897)) b!3162859))

(assert (= (and b!3162859 c!531895) b!3162855))

(assert (= (and b!3162859 (not c!531895)) b!3162856))

(assert (= (and b!3162856 c!531894) b!3162858))

(assert (= (and b!3162856 (not c!531894)) b!3162850))

(assert (= (and b!3162850 c!531896) b!3162854))

(assert (= (and b!3162850 (not c!531896)) b!3162852))

(assert (= (or b!3162854 b!3162852) bm!229130))

(assert (= (or b!3162858 bm!229130) bm!229128))

(assert (= (or b!3162855 bm!229128) bm!229129))

(assert (= (or b!3162855 b!3162854) bm!229131))

(declare-fun m!3426611 () Bool)

(assert (=> bm!229131 m!3426611))

(declare-fun m!3426613 () Bool)

(assert (=> d!868602 m!3426613))

(declare-fun m!3426615 () Bool)

(assert (=> d!868602 m!3426615))

(declare-fun m!3426617 () Bool)

(assert (=> d!868602 m!3426617))

(declare-fun m!3426619 () Bool)

(assert (=> bm!229129 m!3426619))

(declare-fun m!3426621 () Bool)

(assert (=> b!3162850 m!3426621))

(declare-fun m!3426623 () Bool)

(assert (=> b!3162857 m!3426623))

(assert (=> bm!229065 d!868602))

(declare-fun e!1970426 () Bool)

(assert (=> b!3162649 (= tp!995614 e!1970426)))

(declare-fun b!3162862 () Bool)

(declare-fun tp!995620 () Bool)

(assert (=> b!3162862 (= e!1970426 tp!995620)))

(declare-fun b!3162861 () Bool)

(declare-fun tp!995616 () Bool)

(declare-fun tp!995618 () Bool)

(assert (=> b!3162861 (= e!1970426 (and tp!995616 tp!995618))))

(declare-fun b!3162863 () Bool)

(declare-fun tp!995619 () Bool)

(declare-fun tp!995617 () Bool)

(assert (=> b!3162863 (= e!1970426 (and tp!995619 tp!995617))))

(declare-fun b!3162860 () Bool)

(assert (=> b!3162860 (= e!1970426 tp_is_empty!17005)))

(assert (= (and b!3162649 ((_ is ElementMatch!9721) (regOne!19955 (regTwo!19955 r!13156)))) b!3162860))

(assert (= (and b!3162649 ((_ is Concat!15042) (regOne!19955 (regTwo!19955 r!13156)))) b!3162861))

(assert (= (and b!3162649 ((_ is Star!9721) (regOne!19955 (regTwo!19955 r!13156)))) b!3162862))

(assert (= (and b!3162649 ((_ is Union!9721) (regOne!19955 (regTwo!19955 r!13156)))) b!3162863))

(declare-fun e!1970427 () Bool)

(assert (=> b!3162649 (= tp!995612 e!1970427)))

(declare-fun b!3162866 () Bool)

(declare-fun tp!995625 () Bool)

(assert (=> b!3162866 (= e!1970427 tp!995625)))

(declare-fun b!3162865 () Bool)

(declare-fun tp!995621 () Bool)

(declare-fun tp!995623 () Bool)

(assert (=> b!3162865 (= e!1970427 (and tp!995621 tp!995623))))

(declare-fun b!3162867 () Bool)

(declare-fun tp!995624 () Bool)

(declare-fun tp!995622 () Bool)

(assert (=> b!3162867 (= e!1970427 (and tp!995624 tp!995622))))

(declare-fun b!3162864 () Bool)

(assert (=> b!3162864 (= e!1970427 tp_is_empty!17005)))

(assert (= (and b!3162649 ((_ is ElementMatch!9721) (regTwo!19955 (regTwo!19955 r!13156)))) b!3162864))

(assert (= (and b!3162649 ((_ is Concat!15042) (regTwo!19955 (regTwo!19955 r!13156)))) b!3162865))

(assert (= (and b!3162649 ((_ is Star!9721) (regTwo!19955 (regTwo!19955 r!13156)))) b!3162866))

(assert (= (and b!3162649 ((_ is Union!9721) (regTwo!19955 (regTwo!19955 r!13156)))) b!3162867))

(declare-fun e!1970428 () Bool)

(assert (=> b!3162648 (= tp!995615 e!1970428)))

(declare-fun b!3162870 () Bool)

(declare-fun tp!995630 () Bool)

(assert (=> b!3162870 (= e!1970428 tp!995630)))

(declare-fun b!3162869 () Bool)

(declare-fun tp!995626 () Bool)

(declare-fun tp!995628 () Bool)

(assert (=> b!3162869 (= e!1970428 (and tp!995626 tp!995628))))

(declare-fun b!3162871 () Bool)

(declare-fun tp!995629 () Bool)

(declare-fun tp!995627 () Bool)

(assert (=> b!3162871 (= e!1970428 (and tp!995629 tp!995627))))

(declare-fun b!3162868 () Bool)

(assert (=> b!3162868 (= e!1970428 tp_is_empty!17005)))

(assert (= (and b!3162648 ((_ is ElementMatch!9721) (reg!10050 (regTwo!19955 r!13156)))) b!3162868))

(assert (= (and b!3162648 ((_ is Concat!15042) (reg!10050 (regTwo!19955 r!13156)))) b!3162869))

(assert (= (and b!3162648 ((_ is Star!9721) (reg!10050 (regTwo!19955 r!13156)))) b!3162870))

(assert (= (and b!3162648 ((_ is Union!9721) (reg!10050 (regTwo!19955 r!13156)))) b!3162871))

(declare-fun e!1970429 () Bool)

(assert (=> b!3162639 (= tp!995601 e!1970429)))

(declare-fun b!3162874 () Bool)

(declare-fun tp!995635 () Bool)

(assert (=> b!3162874 (= e!1970429 tp!995635)))

(declare-fun b!3162873 () Bool)

(declare-fun tp!995631 () Bool)

(declare-fun tp!995633 () Bool)

(assert (=> b!3162873 (= e!1970429 (and tp!995631 tp!995633))))

(declare-fun b!3162875 () Bool)

(declare-fun tp!995634 () Bool)

(declare-fun tp!995632 () Bool)

(assert (=> b!3162875 (= e!1970429 (and tp!995634 tp!995632))))

(declare-fun b!3162872 () Bool)

(assert (=> b!3162872 (= e!1970429 tp_is_empty!17005)))

(assert (= (and b!3162639 ((_ is ElementMatch!9721) (regOne!19954 (regTwo!19954 r!13156)))) b!3162872))

(assert (= (and b!3162639 ((_ is Concat!15042) (regOne!19954 (regTwo!19954 r!13156)))) b!3162873))

(assert (= (and b!3162639 ((_ is Star!9721) (regOne!19954 (regTwo!19954 r!13156)))) b!3162874))

(assert (= (and b!3162639 ((_ is Union!9721) (regOne!19954 (regTwo!19954 r!13156)))) b!3162875))

(declare-fun e!1970430 () Bool)

(assert (=> b!3162639 (= tp!995603 e!1970430)))

(declare-fun b!3162878 () Bool)

(declare-fun tp!995640 () Bool)

(assert (=> b!3162878 (= e!1970430 tp!995640)))

(declare-fun b!3162877 () Bool)

(declare-fun tp!995636 () Bool)

(declare-fun tp!995638 () Bool)

(assert (=> b!3162877 (= e!1970430 (and tp!995636 tp!995638))))

(declare-fun b!3162879 () Bool)

(declare-fun tp!995639 () Bool)

(declare-fun tp!995637 () Bool)

(assert (=> b!3162879 (= e!1970430 (and tp!995639 tp!995637))))

(declare-fun b!3162876 () Bool)

(assert (=> b!3162876 (= e!1970430 tp_is_empty!17005)))

(assert (= (and b!3162639 ((_ is ElementMatch!9721) (regTwo!19954 (regTwo!19954 r!13156)))) b!3162876))

(assert (= (and b!3162639 ((_ is Concat!15042) (regTwo!19954 (regTwo!19954 r!13156)))) b!3162877))

(assert (= (and b!3162639 ((_ is Star!9721) (regTwo!19954 (regTwo!19954 r!13156)))) b!3162878))

(assert (= (and b!3162639 ((_ is Union!9721) (regTwo!19954 (regTwo!19954 r!13156)))) b!3162879))

(declare-fun e!1970431 () Bool)

(assert (=> b!3162641 (= tp!995604 e!1970431)))

(declare-fun b!3162882 () Bool)

(declare-fun tp!995645 () Bool)

(assert (=> b!3162882 (= e!1970431 tp!995645)))

(declare-fun b!3162881 () Bool)

(declare-fun tp!995641 () Bool)

(declare-fun tp!995643 () Bool)

(assert (=> b!3162881 (= e!1970431 (and tp!995641 tp!995643))))

(declare-fun b!3162883 () Bool)

(declare-fun tp!995644 () Bool)

(declare-fun tp!995642 () Bool)

(assert (=> b!3162883 (= e!1970431 (and tp!995644 tp!995642))))

(declare-fun b!3162880 () Bool)

(assert (=> b!3162880 (= e!1970431 tp_is_empty!17005)))

(assert (= (and b!3162641 ((_ is ElementMatch!9721) (regOne!19955 (regTwo!19954 r!13156)))) b!3162880))

(assert (= (and b!3162641 ((_ is Concat!15042) (regOne!19955 (regTwo!19954 r!13156)))) b!3162881))

(assert (= (and b!3162641 ((_ is Star!9721) (regOne!19955 (regTwo!19954 r!13156)))) b!3162882))

(assert (= (and b!3162641 ((_ is Union!9721) (regOne!19955 (regTwo!19954 r!13156)))) b!3162883))

(declare-fun e!1970432 () Bool)

(assert (=> b!3162641 (= tp!995602 e!1970432)))

(declare-fun b!3162886 () Bool)

(declare-fun tp!995650 () Bool)

(assert (=> b!3162886 (= e!1970432 tp!995650)))

(declare-fun b!3162885 () Bool)

(declare-fun tp!995646 () Bool)

(declare-fun tp!995648 () Bool)

(assert (=> b!3162885 (= e!1970432 (and tp!995646 tp!995648))))

(declare-fun b!3162887 () Bool)

(declare-fun tp!995649 () Bool)

(declare-fun tp!995647 () Bool)

(assert (=> b!3162887 (= e!1970432 (and tp!995649 tp!995647))))

(declare-fun b!3162884 () Bool)

(assert (=> b!3162884 (= e!1970432 tp_is_empty!17005)))

(assert (= (and b!3162641 ((_ is ElementMatch!9721) (regTwo!19955 (regTwo!19954 r!13156)))) b!3162884))

(assert (= (and b!3162641 ((_ is Concat!15042) (regTwo!19955 (regTwo!19954 r!13156)))) b!3162885))

(assert (= (and b!3162641 ((_ is Star!9721) (regTwo!19955 (regTwo!19954 r!13156)))) b!3162886))

(assert (= (and b!3162641 ((_ is Union!9721) (regTwo!19955 (regTwo!19954 r!13156)))) b!3162887))

(declare-fun e!1970433 () Bool)

(assert (=> b!3162640 (= tp!995605 e!1970433)))

(declare-fun b!3162890 () Bool)

(declare-fun tp!995655 () Bool)

(assert (=> b!3162890 (= e!1970433 tp!995655)))

(declare-fun b!3162889 () Bool)

(declare-fun tp!995651 () Bool)

(declare-fun tp!995653 () Bool)

(assert (=> b!3162889 (= e!1970433 (and tp!995651 tp!995653))))

(declare-fun b!3162891 () Bool)

(declare-fun tp!995654 () Bool)

(declare-fun tp!995652 () Bool)

(assert (=> b!3162891 (= e!1970433 (and tp!995654 tp!995652))))

(declare-fun b!3162888 () Bool)

(assert (=> b!3162888 (= e!1970433 tp_is_empty!17005)))

(assert (= (and b!3162640 ((_ is ElementMatch!9721) (reg!10050 (regTwo!19954 r!13156)))) b!3162888))

(assert (= (and b!3162640 ((_ is Concat!15042) (reg!10050 (regTwo!19954 r!13156)))) b!3162889))

(assert (= (and b!3162640 ((_ is Star!9721) (reg!10050 (regTwo!19954 r!13156)))) b!3162890))

(assert (= (and b!3162640 ((_ is Union!9721) (reg!10050 (regTwo!19954 r!13156)))) b!3162891))

(declare-fun e!1970434 () Bool)

(assert (=> b!3162633 (= tp!995593 e!1970434)))

(declare-fun b!3162894 () Bool)

(declare-fun tp!995660 () Bool)

(assert (=> b!3162894 (= e!1970434 tp!995660)))

(declare-fun b!3162893 () Bool)

(declare-fun tp!995656 () Bool)

(declare-fun tp!995658 () Bool)

(assert (=> b!3162893 (= e!1970434 (and tp!995656 tp!995658))))

(declare-fun b!3162895 () Bool)

(declare-fun tp!995659 () Bool)

(declare-fun tp!995657 () Bool)

(assert (=> b!3162895 (= e!1970434 (and tp!995659 tp!995657))))

(declare-fun b!3162892 () Bool)

(assert (=> b!3162892 (= e!1970434 tp_is_empty!17005)))

(assert (= (and b!3162633 ((_ is ElementMatch!9721) (_1!20344 (_1!20345 (h!40846 mapValue!18789))))) b!3162892))

(assert (= (and b!3162633 ((_ is Concat!15042) (_1!20344 (_1!20345 (h!40846 mapValue!18789))))) b!3162893))

(assert (= (and b!3162633 ((_ is Star!9721) (_1!20344 (_1!20345 (h!40846 mapValue!18789))))) b!3162894))

(assert (= (and b!3162633 ((_ is Union!9721) (_1!20344 (_1!20345 (h!40846 mapValue!18789))))) b!3162895))

(declare-fun e!1970435 () Bool)

(assert (=> b!3162633 (= tp!995594 e!1970435)))

(declare-fun b!3162898 () Bool)

(declare-fun tp!995665 () Bool)

(assert (=> b!3162898 (= e!1970435 tp!995665)))

(declare-fun b!3162897 () Bool)

(declare-fun tp!995661 () Bool)

(declare-fun tp!995663 () Bool)

(assert (=> b!3162897 (= e!1970435 (and tp!995661 tp!995663))))

(declare-fun b!3162899 () Bool)

(declare-fun tp!995664 () Bool)

(declare-fun tp!995662 () Bool)

(assert (=> b!3162899 (= e!1970435 (and tp!995664 tp!995662))))

(declare-fun b!3162896 () Bool)

(assert (=> b!3162896 (= e!1970435 tp_is_empty!17005)))

(assert (= (and b!3162633 ((_ is ElementMatch!9721) (_2!20345 (h!40846 mapValue!18789)))) b!3162896))

(assert (= (and b!3162633 ((_ is Concat!15042) (_2!20345 (h!40846 mapValue!18789)))) b!3162897))

(assert (= (and b!3162633 ((_ is Star!9721) (_2!20345 (h!40846 mapValue!18789)))) b!3162898))

(assert (= (and b!3162633 ((_ is Union!9721) (_2!20345 (h!40846 mapValue!18789)))) b!3162899))

(declare-fun tp!995666 () Bool)

(declare-fun tp!995667 () Bool)

(declare-fun tp!995668 () Bool)

(declare-fun b!3162900 () Bool)

(declare-fun e!1970436 () Bool)

(assert (=> b!3162900 (= e!1970436 (and tp!995666 tp_is_empty!17005 tp!995667 tp!995668))))

(assert (=> b!3162633 (= tp!995595 e!1970436)))

(assert (= (and b!3162633 ((_ is Cons!35426) (t!234617 mapValue!18789))) b!3162900))

(declare-fun e!1970437 () Bool)

(assert (=> b!3162631 (= tp!995591 e!1970437)))

(declare-fun b!3162903 () Bool)

(declare-fun tp!995673 () Bool)

(assert (=> b!3162903 (= e!1970437 tp!995673)))

(declare-fun b!3162902 () Bool)

(declare-fun tp!995669 () Bool)

(declare-fun tp!995671 () Bool)

(assert (=> b!3162902 (= e!1970437 (and tp!995669 tp!995671))))

(declare-fun b!3162904 () Bool)

(declare-fun tp!995672 () Bool)

(declare-fun tp!995670 () Bool)

(assert (=> b!3162904 (= e!1970437 (and tp!995672 tp!995670))))

(declare-fun b!3162901 () Bool)

(assert (=> b!3162901 (= e!1970437 tp_is_empty!17005)))

(assert (= (and b!3162631 ((_ is ElementMatch!9721) (_1!20344 (_1!20345 (h!40846 mapValue!18792))))) b!3162901))

(assert (= (and b!3162631 ((_ is Concat!15042) (_1!20344 (_1!20345 (h!40846 mapValue!18792))))) b!3162902))

(assert (= (and b!3162631 ((_ is Star!9721) (_1!20344 (_1!20345 (h!40846 mapValue!18792))))) b!3162903))

(assert (= (and b!3162631 ((_ is Union!9721) (_1!20344 (_1!20345 (h!40846 mapValue!18792))))) b!3162904))

(declare-fun e!1970438 () Bool)

(assert (=> b!3162631 (= tp!995588 e!1970438)))

(declare-fun b!3162907 () Bool)

(declare-fun tp!995678 () Bool)

(assert (=> b!3162907 (= e!1970438 tp!995678)))

(declare-fun b!3162906 () Bool)

(declare-fun tp!995674 () Bool)

(declare-fun tp!995676 () Bool)

(assert (=> b!3162906 (= e!1970438 (and tp!995674 tp!995676))))

(declare-fun b!3162908 () Bool)

(declare-fun tp!995677 () Bool)

(declare-fun tp!995675 () Bool)

(assert (=> b!3162908 (= e!1970438 (and tp!995677 tp!995675))))

(declare-fun b!3162905 () Bool)

(assert (=> b!3162905 (= e!1970438 tp_is_empty!17005)))

(assert (= (and b!3162631 ((_ is ElementMatch!9721) (_2!20345 (h!40846 mapValue!18792)))) b!3162905))

(assert (= (and b!3162631 ((_ is Concat!15042) (_2!20345 (h!40846 mapValue!18792)))) b!3162906))

(assert (= (and b!3162631 ((_ is Star!9721) (_2!20345 (h!40846 mapValue!18792)))) b!3162907))

(assert (= (and b!3162631 ((_ is Union!9721) (_2!20345 (h!40846 mapValue!18792)))) b!3162908))

(declare-fun e!1970439 () Bool)

(declare-fun tp!995680 () Bool)

(declare-fun tp!995679 () Bool)

(declare-fun b!3162909 () Bool)

(declare-fun tp!995681 () Bool)

(assert (=> b!3162909 (= e!1970439 (and tp!995679 tp_is_empty!17005 tp!995680 tp!995681))))

(assert (=> b!3162631 (= tp!995586 e!1970439)))

(assert (= (and b!3162631 ((_ is Cons!35426) (t!234617 mapValue!18792))) b!3162909))

(declare-fun e!1970441 () Bool)

(declare-fun b!3162910 () Bool)

(declare-fun tp!995682 () Bool)

(declare-fun tp!995684 () Bool)

(declare-fun tp!995687 () Bool)

(assert (=> b!3162910 (= e!1970441 (and tp!995687 tp_is_empty!17005 tp!995684 tp!995682))))

(declare-fun mapIsEmpty!18793 () Bool)

(declare-fun mapRes!18793 () Bool)

(assert (=> mapIsEmpty!18793 mapRes!18793))

(declare-fun tp!995683 () Bool)

(declare-fun tp!995688 () Bool)

(declare-fun e!1970440 () Bool)

(declare-fun tp!995686 () Bool)

(declare-fun b!3162911 () Bool)

(assert (=> b!3162911 (= e!1970440 (and tp!995683 tp_is_empty!17005 tp!995688 tp!995686))))

(declare-fun mapNonEmpty!18793 () Bool)

(declare-fun tp!995685 () Bool)

(assert (=> mapNonEmpty!18793 (= mapRes!18793 (and tp!995685 e!1970441))))

(declare-fun mapValue!18793 () List!35550)

(declare-fun mapKey!18793 () (_ BitVec 32))

(declare-fun mapRest!18793 () (Array (_ BitVec 32) List!35550))

(assert (=> mapNonEmpty!18793 (= mapRest!18792 (store mapRest!18793 mapKey!18793 mapValue!18793))))

(declare-fun condMapEmpty!18793 () Bool)

(declare-fun mapDefault!18793 () List!35550)

(assert (=> mapNonEmpty!18792 (= condMapEmpty!18793 (= mapRest!18792 ((as const (Array (_ BitVec 32) List!35550)) mapDefault!18793)))))

(assert (=> mapNonEmpty!18792 (= tp!995589 (and e!1970440 mapRes!18793))))

(assert (= (and mapNonEmpty!18792 condMapEmpty!18793) mapIsEmpty!18793))

(assert (= (and mapNonEmpty!18792 (not condMapEmpty!18793)) mapNonEmpty!18793))

(assert (= (and mapNonEmpty!18793 ((_ is Cons!35426) mapValue!18793)) b!3162910))

(assert (= (and mapNonEmpty!18792 ((_ is Cons!35426) mapDefault!18793)) b!3162911))

(declare-fun m!3426625 () Bool)

(assert (=> mapNonEmpty!18793 m!3426625))

(declare-fun e!1970442 () Bool)

(assert (=> b!3162632 (= tp!995587 e!1970442)))

(declare-fun b!3162914 () Bool)

(declare-fun tp!995693 () Bool)

(assert (=> b!3162914 (= e!1970442 tp!995693)))

(declare-fun b!3162913 () Bool)

(declare-fun tp!995689 () Bool)

(declare-fun tp!995691 () Bool)

(assert (=> b!3162913 (= e!1970442 (and tp!995689 tp!995691))))

(declare-fun b!3162915 () Bool)

(declare-fun tp!995692 () Bool)

(declare-fun tp!995690 () Bool)

(assert (=> b!3162915 (= e!1970442 (and tp!995692 tp!995690))))

(declare-fun b!3162912 () Bool)

(assert (=> b!3162912 (= e!1970442 tp_is_empty!17005)))

(assert (= (and b!3162632 ((_ is ElementMatch!9721) (_1!20344 (_1!20345 (h!40846 mapDefault!18792))))) b!3162912))

(assert (= (and b!3162632 ((_ is Concat!15042) (_1!20344 (_1!20345 (h!40846 mapDefault!18792))))) b!3162913))

(assert (= (and b!3162632 ((_ is Star!9721) (_1!20344 (_1!20345 (h!40846 mapDefault!18792))))) b!3162914))

(assert (= (and b!3162632 ((_ is Union!9721) (_1!20344 (_1!20345 (h!40846 mapDefault!18792))))) b!3162915))

(declare-fun e!1970443 () Bool)

(assert (=> b!3162632 (= tp!995592 e!1970443)))

(declare-fun b!3162918 () Bool)

(declare-fun tp!995698 () Bool)

(assert (=> b!3162918 (= e!1970443 tp!995698)))

(declare-fun b!3162917 () Bool)

(declare-fun tp!995694 () Bool)

(declare-fun tp!995696 () Bool)

(assert (=> b!3162917 (= e!1970443 (and tp!995694 tp!995696))))

(declare-fun b!3162919 () Bool)

(declare-fun tp!995697 () Bool)

(declare-fun tp!995695 () Bool)

(assert (=> b!3162919 (= e!1970443 (and tp!995697 tp!995695))))

(declare-fun b!3162916 () Bool)

(assert (=> b!3162916 (= e!1970443 tp_is_empty!17005)))

(assert (= (and b!3162632 ((_ is ElementMatch!9721) (_2!20345 (h!40846 mapDefault!18792)))) b!3162916))

(assert (= (and b!3162632 ((_ is Concat!15042) (_2!20345 (h!40846 mapDefault!18792)))) b!3162917))

(assert (= (and b!3162632 ((_ is Star!9721) (_2!20345 (h!40846 mapDefault!18792)))) b!3162918))

(assert (= (and b!3162632 ((_ is Union!9721) (_2!20345 (h!40846 mapDefault!18792)))) b!3162919))

(declare-fun b!3162920 () Bool)

(declare-fun e!1970444 () Bool)

(declare-fun tp!995700 () Bool)

(declare-fun tp!995701 () Bool)

(declare-fun tp!995699 () Bool)

(assert (=> b!3162920 (= e!1970444 (and tp!995699 tp_is_empty!17005 tp!995700 tp!995701))))

(assert (=> b!3162632 (= tp!995590 e!1970444)))

(assert (= (and b!3162632 ((_ is Cons!35426) (t!234617 mapDefault!18792))) b!3162920))

(declare-fun b!3162931 () Bool)

(declare-fun e!1970453 () Bool)

(declare-fun lt!1063415 () MutLongMap!4142)

(assert (=> b!3162931 (= e!1970453 ((_ is LongMap!4142) lt!1063415))))

(assert (=> b!3162931 (= lt!1063415 (v!35078 (underlying!8514 (cache!4188 (_2!20346 (derivativeStepMem!22 (regOne!19954 r!13156) a!2409 cache!347))))))))

(declare-fun b!3162930 () Bool)

(declare-fun e!1970452 () Bool)

(assert (=> b!3162930 (= e!1970452 e!1970453)))

(declare-fun b!3162929 () Bool)

(declare-fun e!1970451 () Bool)

(assert (=> b!3162929 (= e!1970451 e!1970452)))

(assert (=> d!868542 (= true e!1970451)))

(assert (= b!3162930 b!3162931))

(assert (= (and b!3162929 ((_ is HashMap!4048) (cache!4188 (_2!20346 (derivativeStepMem!22 (regOne!19954 r!13156) a!2409 cache!347))))) b!3162930))

(assert (= d!868542 b!3162929))

(declare-fun e!1970454 () Bool)

(assert (=> b!3162624 (= tp!995569 e!1970454)))

(declare-fun b!3162934 () Bool)

(declare-fun tp!995706 () Bool)

(assert (=> b!3162934 (= e!1970454 tp!995706)))

(declare-fun b!3162933 () Bool)

(declare-fun tp!995702 () Bool)

(declare-fun tp!995704 () Bool)

(assert (=> b!3162933 (= e!1970454 (and tp!995702 tp!995704))))

(declare-fun b!3162935 () Bool)

(declare-fun tp!995705 () Bool)

(declare-fun tp!995703 () Bool)

(assert (=> b!3162935 (= e!1970454 (and tp!995705 tp!995703))))

(declare-fun b!3162932 () Bool)

(assert (=> b!3162932 (= e!1970454 tp_is_empty!17005)))

(assert (= (and b!3162624 ((_ is ElementMatch!9721) (_1!20344 (_1!20345 (h!40846 (minValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))))) b!3162932))

(assert (= (and b!3162624 ((_ is Concat!15042) (_1!20344 (_1!20345 (h!40846 (minValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))))) b!3162933))

(assert (= (and b!3162624 ((_ is Star!9721) (_1!20344 (_1!20345 (h!40846 (minValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))))) b!3162934))

(assert (= (and b!3162624 ((_ is Union!9721) (_1!20344 (_1!20345 (h!40846 (minValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))))) b!3162935))

(declare-fun e!1970455 () Bool)

(assert (=> b!3162624 (= tp!995570 e!1970455)))

(declare-fun b!3162938 () Bool)

(declare-fun tp!995711 () Bool)

(assert (=> b!3162938 (= e!1970455 tp!995711)))

(declare-fun b!3162937 () Bool)

(declare-fun tp!995707 () Bool)

(declare-fun tp!995709 () Bool)

(assert (=> b!3162937 (= e!1970455 (and tp!995707 tp!995709))))

(declare-fun b!3162939 () Bool)

(declare-fun tp!995710 () Bool)

(declare-fun tp!995708 () Bool)

(assert (=> b!3162939 (= e!1970455 (and tp!995710 tp!995708))))

(declare-fun b!3162936 () Bool)

(assert (=> b!3162936 (= e!1970455 tp_is_empty!17005)))

(assert (= (and b!3162624 ((_ is ElementMatch!9721) (_2!20345 (h!40846 (minValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347)))))))))) b!3162936))

(assert (= (and b!3162624 ((_ is Concat!15042) (_2!20345 (h!40846 (minValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347)))))))))) b!3162937))

(assert (= (and b!3162624 ((_ is Star!9721) (_2!20345 (h!40846 (minValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347)))))))))) b!3162938))

(assert (= (and b!3162624 ((_ is Union!9721) (_2!20345 (h!40846 (minValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347)))))))))) b!3162939))

(declare-fun e!1970456 () Bool)

(declare-fun tp!995713 () Bool)

(declare-fun tp!995712 () Bool)

(declare-fun b!3162940 () Bool)

(declare-fun tp!995714 () Bool)

(assert (=> b!3162940 (= e!1970456 (and tp!995712 tp_is_empty!17005 tp!995713 tp!995714))))

(assert (=> b!3162624 (= tp!995571 e!1970456)))

(assert (= (and b!3162624 ((_ is Cons!35426) (t!234617 (minValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))) b!3162940))

(declare-fun e!1970457 () Bool)

(assert (=> b!3162647 (= tp!995611 e!1970457)))

(declare-fun b!3162943 () Bool)

(declare-fun tp!995719 () Bool)

(assert (=> b!3162943 (= e!1970457 tp!995719)))

(declare-fun b!3162942 () Bool)

(declare-fun tp!995715 () Bool)

(declare-fun tp!995717 () Bool)

(assert (=> b!3162942 (= e!1970457 (and tp!995715 tp!995717))))

(declare-fun b!3162944 () Bool)

(declare-fun tp!995718 () Bool)

(declare-fun tp!995716 () Bool)

(assert (=> b!3162944 (= e!1970457 (and tp!995718 tp!995716))))

(declare-fun b!3162941 () Bool)

(assert (=> b!3162941 (= e!1970457 tp_is_empty!17005)))

(assert (= (and b!3162647 ((_ is ElementMatch!9721) (regOne!19954 (regTwo!19955 r!13156)))) b!3162941))

(assert (= (and b!3162647 ((_ is Concat!15042) (regOne!19954 (regTwo!19955 r!13156)))) b!3162942))

(assert (= (and b!3162647 ((_ is Star!9721) (regOne!19954 (regTwo!19955 r!13156)))) b!3162943))

(assert (= (and b!3162647 ((_ is Union!9721) (regOne!19954 (regTwo!19955 r!13156)))) b!3162944))

(declare-fun e!1970458 () Bool)

(assert (=> b!3162647 (= tp!995613 e!1970458)))

(declare-fun b!3162947 () Bool)

(declare-fun tp!995724 () Bool)

(assert (=> b!3162947 (= e!1970458 tp!995724)))

(declare-fun b!3162946 () Bool)

(declare-fun tp!995720 () Bool)

(declare-fun tp!995722 () Bool)

(assert (=> b!3162946 (= e!1970458 (and tp!995720 tp!995722))))

(declare-fun b!3162948 () Bool)

(declare-fun tp!995723 () Bool)

(declare-fun tp!995721 () Bool)

(assert (=> b!3162948 (= e!1970458 (and tp!995723 tp!995721))))

(declare-fun b!3162945 () Bool)

(assert (=> b!3162945 (= e!1970458 tp_is_empty!17005)))

(assert (= (and b!3162647 ((_ is ElementMatch!9721) (regTwo!19954 (regTwo!19955 r!13156)))) b!3162945))

(assert (= (and b!3162647 ((_ is Concat!15042) (regTwo!19954 (regTwo!19955 r!13156)))) b!3162946))

(assert (= (and b!3162647 ((_ is Star!9721) (regTwo!19954 (regTwo!19955 r!13156)))) b!3162947))

(assert (= (and b!3162647 ((_ is Union!9721) (regTwo!19954 (regTwo!19955 r!13156)))) b!3162948))

(declare-fun e!1970459 () Bool)

(assert (=> b!3162644 (= tp!995610 e!1970459)))

(declare-fun b!3162951 () Bool)

(declare-fun tp!995729 () Bool)

(assert (=> b!3162951 (= e!1970459 tp!995729)))

(declare-fun b!3162950 () Bool)

(declare-fun tp!995725 () Bool)

(declare-fun tp!995727 () Bool)

(assert (=> b!3162950 (= e!1970459 (and tp!995725 tp!995727))))

(declare-fun b!3162952 () Bool)

(declare-fun tp!995728 () Bool)

(declare-fun tp!995726 () Bool)

(assert (=> b!3162952 (= e!1970459 (and tp!995728 tp!995726))))

(declare-fun b!3162949 () Bool)

(assert (=> b!3162949 (= e!1970459 tp_is_empty!17005)))

(assert (= (and b!3162644 ((_ is ElementMatch!9721) (reg!10050 (regOne!19955 r!13156)))) b!3162949))

(assert (= (and b!3162644 ((_ is Concat!15042) (reg!10050 (regOne!19955 r!13156)))) b!3162950))

(assert (= (and b!3162644 ((_ is Star!9721) (reg!10050 (regOne!19955 r!13156)))) b!3162951))

(assert (= (and b!3162644 ((_ is Union!9721) (reg!10050 (regOne!19955 r!13156)))) b!3162952))

(declare-fun e!1970460 () Bool)

(assert (=> b!3162635 (= tp!995596 e!1970460)))

(declare-fun b!3162955 () Bool)

(declare-fun tp!995734 () Bool)

(assert (=> b!3162955 (= e!1970460 tp!995734)))

(declare-fun b!3162954 () Bool)

(declare-fun tp!995730 () Bool)

(declare-fun tp!995732 () Bool)

(assert (=> b!3162954 (= e!1970460 (and tp!995730 tp!995732))))

(declare-fun b!3162956 () Bool)

(declare-fun tp!995733 () Bool)

(declare-fun tp!995731 () Bool)

(assert (=> b!3162956 (= e!1970460 (and tp!995733 tp!995731))))

(declare-fun b!3162953 () Bool)

(assert (=> b!3162953 (= e!1970460 tp_is_empty!17005)))

(assert (= (and b!3162635 ((_ is ElementMatch!9721) (regOne!19954 (regOne!19954 r!13156)))) b!3162953))

(assert (= (and b!3162635 ((_ is Concat!15042) (regOne!19954 (regOne!19954 r!13156)))) b!3162954))

(assert (= (and b!3162635 ((_ is Star!9721) (regOne!19954 (regOne!19954 r!13156)))) b!3162955))

(assert (= (and b!3162635 ((_ is Union!9721) (regOne!19954 (regOne!19954 r!13156)))) b!3162956))

(declare-fun e!1970461 () Bool)

(assert (=> b!3162635 (= tp!995598 e!1970461)))

(declare-fun b!3162959 () Bool)

(declare-fun tp!995739 () Bool)

(assert (=> b!3162959 (= e!1970461 tp!995739)))

(declare-fun b!3162958 () Bool)

(declare-fun tp!995735 () Bool)

(declare-fun tp!995737 () Bool)

(assert (=> b!3162958 (= e!1970461 (and tp!995735 tp!995737))))

(declare-fun b!3162960 () Bool)

(declare-fun tp!995738 () Bool)

(declare-fun tp!995736 () Bool)

(assert (=> b!3162960 (= e!1970461 (and tp!995738 tp!995736))))

(declare-fun b!3162957 () Bool)

(assert (=> b!3162957 (= e!1970461 tp_is_empty!17005)))

(assert (= (and b!3162635 ((_ is ElementMatch!9721) (regTwo!19954 (regOne!19954 r!13156)))) b!3162957))

(assert (= (and b!3162635 ((_ is Concat!15042) (regTwo!19954 (regOne!19954 r!13156)))) b!3162958))

(assert (= (and b!3162635 ((_ is Star!9721) (regTwo!19954 (regOne!19954 r!13156)))) b!3162959))

(assert (= (and b!3162635 ((_ is Union!9721) (regTwo!19954 (regOne!19954 r!13156)))) b!3162960))

(declare-fun e!1970462 () Bool)

(assert (=> b!3162636 (= tp!995600 e!1970462)))

(declare-fun b!3162963 () Bool)

(declare-fun tp!995744 () Bool)

(assert (=> b!3162963 (= e!1970462 tp!995744)))

(declare-fun b!3162962 () Bool)

(declare-fun tp!995740 () Bool)

(declare-fun tp!995742 () Bool)

(assert (=> b!3162962 (= e!1970462 (and tp!995740 tp!995742))))

(declare-fun b!3162964 () Bool)

(declare-fun tp!995743 () Bool)

(declare-fun tp!995741 () Bool)

(assert (=> b!3162964 (= e!1970462 (and tp!995743 tp!995741))))

(declare-fun b!3162961 () Bool)

(assert (=> b!3162961 (= e!1970462 tp_is_empty!17005)))

(assert (= (and b!3162636 ((_ is ElementMatch!9721) (reg!10050 (regOne!19954 r!13156)))) b!3162961))

(assert (= (and b!3162636 ((_ is Concat!15042) (reg!10050 (regOne!19954 r!13156)))) b!3162962))

(assert (= (and b!3162636 ((_ is Star!9721) (reg!10050 (regOne!19954 r!13156)))) b!3162963))

(assert (= (and b!3162636 ((_ is Union!9721) (reg!10050 (regOne!19954 r!13156)))) b!3162964))

(declare-fun e!1970463 () Bool)

(assert (=> b!3162645 (= tp!995609 e!1970463)))

(declare-fun b!3162967 () Bool)

(declare-fun tp!995749 () Bool)

(assert (=> b!3162967 (= e!1970463 tp!995749)))

(declare-fun b!3162966 () Bool)

(declare-fun tp!995745 () Bool)

(declare-fun tp!995747 () Bool)

(assert (=> b!3162966 (= e!1970463 (and tp!995745 tp!995747))))

(declare-fun b!3162968 () Bool)

(declare-fun tp!995748 () Bool)

(declare-fun tp!995746 () Bool)

(assert (=> b!3162968 (= e!1970463 (and tp!995748 tp!995746))))

(declare-fun b!3162965 () Bool)

(assert (=> b!3162965 (= e!1970463 tp_is_empty!17005)))

(assert (= (and b!3162645 ((_ is ElementMatch!9721) (regOne!19955 (regOne!19955 r!13156)))) b!3162965))

(assert (= (and b!3162645 ((_ is Concat!15042) (regOne!19955 (regOne!19955 r!13156)))) b!3162966))

(assert (= (and b!3162645 ((_ is Star!9721) (regOne!19955 (regOne!19955 r!13156)))) b!3162967))

(assert (= (and b!3162645 ((_ is Union!9721) (regOne!19955 (regOne!19955 r!13156)))) b!3162968))

(declare-fun e!1970464 () Bool)

(assert (=> b!3162645 (= tp!995607 e!1970464)))

(declare-fun b!3162971 () Bool)

(declare-fun tp!995754 () Bool)

(assert (=> b!3162971 (= e!1970464 tp!995754)))

(declare-fun b!3162970 () Bool)

(declare-fun tp!995750 () Bool)

(declare-fun tp!995752 () Bool)

(assert (=> b!3162970 (= e!1970464 (and tp!995750 tp!995752))))

(declare-fun b!3162972 () Bool)

(declare-fun tp!995753 () Bool)

(declare-fun tp!995751 () Bool)

(assert (=> b!3162972 (= e!1970464 (and tp!995753 tp!995751))))

(declare-fun b!3162969 () Bool)

(assert (=> b!3162969 (= e!1970464 tp_is_empty!17005)))

(assert (= (and b!3162645 ((_ is ElementMatch!9721) (regTwo!19955 (regOne!19955 r!13156)))) b!3162969))

(assert (= (and b!3162645 ((_ is Concat!15042) (regTwo!19955 (regOne!19955 r!13156)))) b!3162970))

(assert (= (and b!3162645 ((_ is Star!9721) (regTwo!19955 (regOne!19955 r!13156)))) b!3162971))

(assert (= (and b!3162645 ((_ is Union!9721) (regTwo!19955 (regOne!19955 r!13156)))) b!3162972))

(declare-fun e!1970465 () Bool)

(assert (=> b!3162623 (= tp!995566 e!1970465)))

(declare-fun b!3162975 () Bool)

(declare-fun tp!995759 () Bool)

(assert (=> b!3162975 (= e!1970465 tp!995759)))

(declare-fun b!3162974 () Bool)

(declare-fun tp!995755 () Bool)

(declare-fun tp!995757 () Bool)

(assert (=> b!3162974 (= e!1970465 (and tp!995755 tp!995757))))

(declare-fun b!3162976 () Bool)

(declare-fun tp!995758 () Bool)

(declare-fun tp!995756 () Bool)

(assert (=> b!3162976 (= e!1970465 (and tp!995758 tp!995756))))

(declare-fun b!3162973 () Bool)

(assert (=> b!3162973 (= e!1970465 tp_is_empty!17005)))

(assert (= (and b!3162623 ((_ is ElementMatch!9721) (_1!20344 (_1!20345 (h!40846 (zeroValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))))) b!3162973))

(assert (= (and b!3162623 ((_ is Concat!15042) (_1!20344 (_1!20345 (h!40846 (zeroValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))))) b!3162974))

(assert (= (and b!3162623 ((_ is Star!9721) (_1!20344 (_1!20345 (h!40846 (zeroValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))))) b!3162975))

(assert (= (and b!3162623 ((_ is Union!9721) (_1!20344 (_1!20345 (h!40846 (zeroValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))))) b!3162976))

(declare-fun e!1970466 () Bool)

(assert (=> b!3162623 (= tp!995567 e!1970466)))

(declare-fun b!3162979 () Bool)

(declare-fun tp!995764 () Bool)

(assert (=> b!3162979 (= e!1970466 tp!995764)))

(declare-fun b!3162978 () Bool)

(declare-fun tp!995760 () Bool)

(declare-fun tp!995762 () Bool)

(assert (=> b!3162978 (= e!1970466 (and tp!995760 tp!995762))))

(declare-fun b!3162980 () Bool)

(declare-fun tp!995763 () Bool)

(declare-fun tp!995761 () Bool)

(assert (=> b!3162980 (= e!1970466 (and tp!995763 tp!995761))))

(declare-fun b!3162977 () Bool)

(assert (=> b!3162977 (= e!1970466 tp_is_empty!17005)))

(assert (= (and b!3162623 ((_ is ElementMatch!9721) (_2!20345 (h!40846 (zeroValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347)))))))))) b!3162977))

(assert (= (and b!3162623 ((_ is Concat!15042) (_2!20345 (h!40846 (zeroValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347)))))))))) b!3162978))

(assert (= (and b!3162623 ((_ is Star!9721) (_2!20345 (h!40846 (zeroValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347)))))))))) b!3162979))

(assert (= (and b!3162623 ((_ is Union!9721) (_2!20345 (h!40846 (zeroValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347)))))))))) b!3162980))

(declare-fun tp!995767 () Bool)

(declare-fun tp!995766 () Bool)

(declare-fun b!3162981 () Bool)

(declare-fun e!1970467 () Bool)

(declare-fun tp!995765 () Bool)

(assert (=> b!3162981 (= e!1970467 (and tp!995765 tp_is_empty!17005 tp!995766 tp!995767))))

(assert (=> b!3162623 (= tp!995568 e!1970467)))

(assert (= (and b!3162623 ((_ is Cons!35426) (t!234617 (zeroValue!4401 (v!35077 (underlying!8513 (v!35078 (underlying!8514 (cache!4188 cache!347))))))))) b!3162981))

(declare-fun e!1970468 () Bool)

(assert (=> b!3162637 (= tp!995599 e!1970468)))

(declare-fun b!3162984 () Bool)

(declare-fun tp!995772 () Bool)

(assert (=> b!3162984 (= e!1970468 tp!995772)))

(declare-fun b!3162983 () Bool)

(declare-fun tp!995768 () Bool)

(declare-fun tp!995770 () Bool)

(assert (=> b!3162983 (= e!1970468 (and tp!995768 tp!995770))))

(declare-fun b!3162985 () Bool)

(declare-fun tp!995771 () Bool)

(declare-fun tp!995769 () Bool)

(assert (=> b!3162985 (= e!1970468 (and tp!995771 tp!995769))))

(declare-fun b!3162982 () Bool)

(assert (=> b!3162982 (= e!1970468 tp_is_empty!17005)))

(assert (= (and b!3162637 ((_ is ElementMatch!9721) (regOne!19955 (regOne!19954 r!13156)))) b!3162982))

(assert (= (and b!3162637 ((_ is Concat!15042) (regOne!19955 (regOne!19954 r!13156)))) b!3162983))

(assert (= (and b!3162637 ((_ is Star!9721) (regOne!19955 (regOne!19954 r!13156)))) b!3162984))

(assert (= (and b!3162637 ((_ is Union!9721) (regOne!19955 (regOne!19954 r!13156)))) b!3162985))

(declare-fun e!1970469 () Bool)

(assert (=> b!3162637 (= tp!995597 e!1970469)))

(declare-fun b!3162988 () Bool)

(declare-fun tp!995777 () Bool)

(assert (=> b!3162988 (= e!1970469 tp!995777)))

(declare-fun b!3162987 () Bool)

(declare-fun tp!995773 () Bool)

(declare-fun tp!995775 () Bool)

(assert (=> b!3162987 (= e!1970469 (and tp!995773 tp!995775))))

(declare-fun b!3162989 () Bool)

(declare-fun tp!995776 () Bool)

(declare-fun tp!995774 () Bool)

(assert (=> b!3162989 (= e!1970469 (and tp!995776 tp!995774))))

(declare-fun b!3162986 () Bool)

(assert (=> b!3162986 (= e!1970469 tp_is_empty!17005)))

(assert (= (and b!3162637 ((_ is ElementMatch!9721) (regTwo!19955 (regOne!19954 r!13156)))) b!3162986))

(assert (= (and b!3162637 ((_ is Concat!15042) (regTwo!19955 (regOne!19954 r!13156)))) b!3162987))

(assert (= (and b!3162637 ((_ is Star!9721) (regTwo!19955 (regOne!19954 r!13156)))) b!3162988))

(assert (= (and b!3162637 ((_ is Union!9721) (regTwo!19955 (regOne!19954 r!13156)))) b!3162989))

(declare-fun e!1970470 () Bool)

(assert (=> b!3162615 (= tp!995552 e!1970470)))

(declare-fun b!3162992 () Bool)

(declare-fun tp!995782 () Bool)

(assert (=> b!3162992 (= e!1970470 tp!995782)))

(declare-fun b!3162991 () Bool)

(declare-fun tp!995778 () Bool)

(declare-fun tp!995780 () Bool)

(assert (=> b!3162991 (= e!1970470 (and tp!995778 tp!995780))))

(declare-fun b!3162993 () Bool)

(declare-fun tp!995781 () Bool)

(declare-fun tp!995779 () Bool)

(assert (=> b!3162993 (= e!1970470 (and tp!995781 tp!995779))))

(declare-fun b!3162990 () Bool)

(assert (=> b!3162990 (= e!1970470 tp_is_empty!17005)))

(assert (= (and b!3162615 ((_ is ElementMatch!9721) (regOne!19954 (reg!10050 r!13156)))) b!3162990))

(assert (= (and b!3162615 ((_ is Concat!15042) (regOne!19954 (reg!10050 r!13156)))) b!3162991))

(assert (= (and b!3162615 ((_ is Star!9721) (regOne!19954 (reg!10050 r!13156)))) b!3162992))

(assert (= (and b!3162615 ((_ is Union!9721) (regOne!19954 (reg!10050 r!13156)))) b!3162993))

(declare-fun e!1970471 () Bool)

(assert (=> b!3162615 (= tp!995554 e!1970471)))

(declare-fun b!3162996 () Bool)

(declare-fun tp!995787 () Bool)

(assert (=> b!3162996 (= e!1970471 tp!995787)))

(declare-fun b!3162995 () Bool)

(declare-fun tp!995783 () Bool)

(declare-fun tp!995785 () Bool)

(assert (=> b!3162995 (= e!1970471 (and tp!995783 tp!995785))))

(declare-fun b!3162997 () Bool)

(declare-fun tp!995786 () Bool)

(declare-fun tp!995784 () Bool)

(assert (=> b!3162997 (= e!1970471 (and tp!995786 tp!995784))))

(declare-fun b!3162994 () Bool)

(assert (=> b!3162994 (= e!1970471 tp_is_empty!17005)))

(assert (= (and b!3162615 ((_ is ElementMatch!9721) (regTwo!19954 (reg!10050 r!13156)))) b!3162994))

(assert (= (and b!3162615 ((_ is Concat!15042) (regTwo!19954 (reg!10050 r!13156)))) b!3162995))

(assert (= (and b!3162615 ((_ is Star!9721) (regTwo!19954 (reg!10050 r!13156)))) b!3162996))

(assert (= (and b!3162615 ((_ is Union!9721) (regTwo!19954 (reg!10050 r!13156)))) b!3162997))

(declare-fun e!1970472 () Bool)

(assert (=> b!3162622 (= tp!995563 e!1970472)))

(declare-fun b!3163000 () Bool)

(declare-fun tp!995792 () Bool)

(assert (=> b!3163000 (= e!1970472 tp!995792)))

(declare-fun b!3162999 () Bool)

(declare-fun tp!995788 () Bool)

(declare-fun tp!995790 () Bool)

(assert (=> b!3162999 (= e!1970472 (and tp!995788 tp!995790))))

(declare-fun b!3163001 () Bool)

(declare-fun tp!995791 () Bool)

(declare-fun tp!995789 () Bool)

(assert (=> b!3163001 (= e!1970472 (and tp!995791 tp!995789))))

(declare-fun b!3162998 () Bool)

(assert (=> b!3162998 (= e!1970472 tp_is_empty!17005)))

(assert (= (and b!3162622 ((_ is ElementMatch!9721) (_1!20344 (_1!20345 (h!40846 mapDefault!18789))))) b!3162998))

(assert (= (and b!3162622 ((_ is Concat!15042) (_1!20344 (_1!20345 (h!40846 mapDefault!18789))))) b!3162999))

(assert (= (and b!3162622 ((_ is Star!9721) (_1!20344 (_1!20345 (h!40846 mapDefault!18789))))) b!3163000))

(assert (= (and b!3162622 ((_ is Union!9721) (_1!20344 (_1!20345 (h!40846 mapDefault!18789))))) b!3163001))

(declare-fun e!1970473 () Bool)

(assert (=> b!3162622 (= tp!995564 e!1970473)))

(declare-fun b!3163004 () Bool)

(declare-fun tp!995797 () Bool)

(assert (=> b!3163004 (= e!1970473 tp!995797)))

(declare-fun b!3163003 () Bool)

(declare-fun tp!995793 () Bool)

(declare-fun tp!995795 () Bool)

(assert (=> b!3163003 (= e!1970473 (and tp!995793 tp!995795))))

(declare-fun b!3163005 () Bool)

(declare-fun tp!995796 () Bool)

(declare-fun tp!995794 () Bool)

(assert (=> b!3163005 (= e!1970473 (and tp!995796 tp!995794))))

(declare-fun b!3163002 () Bool)

(assert (=> b!3163002 (= e!1970473 tp_is_empty!17005)))

(assert (= (and b!3162622 ((_ is ElementMatch!9721) (_2!20345 (h!40846 mapDefault!18789)))) b!3163002))

(assert (= (and b!3162622 ((_ is Concat!15042) (_2!20345 (h!40846 mapDefault!18789)))) b!3163003))

(assert (= (and b!3162622 ((_ is Star!9721) (_2!20345 (h!40846 mapDefault!18789)))) b!3163004))

(assert (= (and b!3162622 ((_ is Union!9721) (_2!20345 (h!40846 mapDefault!18789)))) b!3163005))

(declare-fun b!3163006 () Bool)

(declare-fun tp!995800 () Bool)

(declare-fun e!1970474 () Bool)

(declare-fun tp!995799 () Bool)

(declare-fun tp!995798 () Bool)

(assert (=> b!3163006 (= e!1970474 (and tp!995798 tp_is_empty!17005 tp!995799 tp!995800))))

(assert (=> b!3162622 (= tp!995565 e!1970474)))

(assert (= (and b!3162622 ((_ is Cons!35426) (t!234617 mapDefault!18789))) b!3163006))

(declare-fun e!1970475 () Bool)

(assert (=> b!3162616 (= tp!995556 e!1970475)))

(declare-fun b!3163009 () Bool)

(declare-fun tp!995805 () Bool)

(assert (=> b!3163009 (= e!1970475 tp!995805)))

(declare-fun b!3163008 () Bool)

(declare-fun tp!995801 () Bool)

(declare-fun tp!995803 () Bool)

(assert (=> b!3163008 (= e!1970475 (and tp!995801 tp!995803))))

(declare-fun b!3163010 () Bool)

(declare-fun tp!995804 () Bool)

(declare-fun tp!995802 () Bool)

(assert (=> b!3163010 (= e!1970475 (and tp!995804 tp!995802))))

(declare-fun b!3163007 () Bool)

(assert (=> b!3163007 (= e!1970475 tp_is_empty!17005)))

(assert (= (and b!3162616 ((_ is ElementMatch!9721) (reg!10050 (reg!10050 r!13156)))) b!3163007))

(assert (= (and b!3162616 ((_ is Concat!15042) (reg!10050 (reg!10050 r!13156)))) b!3163008))

(assert (= (and b!3162616 ((_ is Star!9721) (reg!10050 (reg!10050 r!13156)))) b!3163009))

(assert (= (and b!3162616 ((_ is Union!9721) (reg!10050 (reg!10050 r!13156)))) b!3163010))

(declare-fun e!1970476 () Bool)

(assert (=> b!3162643 (= tp!995606 e!1970476)))

(declare-fun b!3163013 () Bool)

(declare-fun tp!995810 () Bool)

(assert (=> b!3163013 (= e!1970476 tp!995810)))

(declare-fun b!3163012 () Bool)

(declare-fun tp!995806 () Bool)

(declare-fun tp!995808 () Bool)

(assert (=> b!3163012 (= e!1970476 (and tp!995806 tp!995808))))

(declare-fun b!3163014 () Bool)

(declare-fun tp!995809 () Bool)

(declare-fun tp!995807 () Bool)

(assert (=> b!3163014 (= e!1970476 (and tp!995809 tp!995807))))

(declare-fun b!3163011 () Bool)

(assert (=> b!3163011 (= e!1970476 tp_is_empty!17005)))

(assert (= (and b!3162643 ((_ is ElementMatch!9721) (regOne!19954 (regOne!19955 r!13156)))) b!3163011))

(assert (= (and b!3162643 ((_ is Concat!15042) (regOne!19954 (regOne!19955 r!13156)))) b!3163012))

(assert (= (and b!3162643 ((_ is Star!9721) (regOne!19954 (regOne!19955 r!13156)))) b!3163013))

(assert (= (and b!3162643 ((_ is Union!9721) (regOne!19954 (regOne!19955 r!13156)))) b!3163014))

(declare-fun e!1970477 () Bool)

(assert (=> b!3162643 (= tp!995608 e!1970477)))

(declare-fun b!3163017 () Bool)

(declare-fun tp!995815 () Bool)

(assert (=> b!3163017 (= e!1970477 tp!995815)))

(declare-fun b!3163016 () Bool)

(declare-fun tp!995811 () Bool)

(declare-fun tp!995813 () Bool)

(assert (=> b!3163016 (= e!1970477 (and tp!995811 tp!995813))))

(declare-fun b!3163018 () Bool)

(declare-fun tp!995814 () Bool)

(declare-fun tp!995812 () Bool)

(assert (=> b!3163018 (= e!1970477 (and tp!995814 tp!995812))))

(declare-fun b!3163015 () Bool)

(assert (=> b!3163015 (= e!1970477 tp_is_empty!17005)))

(assert (= (and b!3162643 ((_ is ElementMatch!9721) (regTwo!19954 (regOne!19955 r!13156)))) b!3163015))

(assert (= (and b!3162643 ((_ is Concat!15042) (regTwo!19954 (regOne!19955 r!13156)))) b!3163016))

(assert (= (and b!3162643 ((_ is Star!9721) (regTwo!19954 (regOne!19955 r!13156)))) b!3163017))

(assert (= (and b!3162643 ((_ is Union!9721) (regTwo!19954 (regOne!19955 r!13156)))) b!3163018))

(declare-fun e!1970478 () Bool)

(assert (=> b!3162617 (= tp!995555 e!1970478)))

(declare-fun b!3163021 () Bool)

(declare-fun tp!995820 () Bool)

(assert (=> b!3163021 (= e!1970478 tp!995820)))

(declare-fun b!3163020 () Bool)

(declare-fun tp!995816 () Bool)

(declare-fun tp!995818 () Bool)

(assert (=> b!3163020 (= e!1970478 (and tp!995816 tp!995818))))

(declare-fun b!3163022 () Bool)

(declare-fun tp!995819 () Bool)

(declare-fun tp!995817 () Bool)

(assert (=> b!3163022 (= e!1970478 (and tp!995819 tp!995817))))

(declare-fun b!3163019 () Bool)

(assert (=> b!3163019 (= e!1970478 tp_is_empty!17005)))

(assert (= (and b!3162617 ((_ is ElementMatch!9721) (regOne!19955 (reg!10050 r!13156)))) b!3163019))

(assert (= (and b!3162617 ((_ is Concat!15042) (regOne!19955 (reg!10050 r!13156)))) b!3163020))

(assert (= (and b!3162617 ((_ is Star!9721) (regOne!19955 (reg!10050 r!13156)))) b!3163021))

(assert (= (and b!3162617 ((_ is Union!9721) (regOne!19955 (reg!10050 r!13156)))) b!3163022))

(declare-fun e!1970479 () Bool)

(assert (=> b!3162617 (= tp!995553 e!1970479)))

(declare-fun b!3163025 () Bool)

(declare-fun tp!995825 () Bool)

(assert (=> b!3163025 (= e!1970479 tp!995825)))

(declare-fun b!3163024 () Bool)

(declare-fun tp!995821 () Bool)

(declare-fun tp!995823 () Bool)

(assert (=> b!3163024 (= e!1970479 (and tp!995821 tp!995823))))

(declare-fun b!3163026 () Bool)

(declare-fun tp!995824 () Bool)

(declare-fun tp!995822 () Bool)

(assert (=> b!3163026 (= e!1970479 (and tp!995824 tp!995822))))

(declare-fun b!3163023 () Bool)

(assert (=> b!3163023 (= e!1970479 tp_is_empty!17005)))

(assert (= (and b!3162617 ((_ is ElementMatch!9721) (regTwo!19955 (reg!10050 r!13156)))) b!3163023))

(assert (= (and b!3162617 ((_ is Concat!15042) (regTwo!19955 (reg!10050 r!13156)))) b!3163024))

(assert (= (and b!3162617 ((_ is Star!9721) (regTwo!19955 (reg!10050 r!13156)))) b!3163025))

(assert (= (and b!3162617 ((_ is Union!9721) (regTwo!19955 (reg!10050 r!13156)))) b!3163026))

(declare-fun b_lambda!86387 () Bool)

(assert (= b_lambda!86383 (or (and b!3162509 b_free!83051) b_lambda!86387)))

(declare-fun b_lambda!86389 () Bool)

(assert (= b_lambda!86385 (or (and b!3162509 b_free!83051) b_lambda!86389)))

(check-sat (not b!3162991) (not b!3162964) (not b!3162890) (not b!3162946) (not b!3162913) (not bm!229109) (not b!3162979) (not bm!229091) (not b!3163004) (not b!3162993) (not b!3162975) (not b!3162897) (not bm!229121) (not b_lambda!86387) (not b!3162763) (not b!3162785) (not b!3162900) (not b!3162834) (not b!3162814) (not b!3162861) (not b_next!83755) (not d!868594) (not b!3162943) (not b!3163005) (not b!3162836) (not bm!229092) (not d!868574) (not b!3162987) (not b!3162883) (not bm!229116) (not d!868582) (not bm!229103) (not b!3162911) (not d!868592) (not d!868578) (not b!3163024) (not b!3162974) (not b!3162978) (not b!3162996) (not b!3162967) (not b!3162882) (not b!3162956) (not b!3163006) (not b!3162955) (not b!3163012) (not d!868566) (not b!3162678) (not b!3163000) (not b!3162873) (not b!3162904) (not b!3162887) (not b!3162869) (not b!3162971) (not b!3162902) (not b!3163016) (not b!3163018) (not bm!229070) (not b!3162937) (not b!3162732) (not b!3162942) (not b!3162989) (not b!3162881) (not b!3162988) (not mapNonEmpty!18793) (not b!3162985) (not b!3162870) (not b!3162676) (not b!3162992) (not bm!229073) (not b!3162689) (not b!3162906) (not b!3162947) (not b!3162776) (not b!3162857) (not bm!229101) (not b!3162709) (not d!868568) (not b!3163026) (not b!3162903) (not b!3162981) (not b!3162742) (not bm!229089) (not b!3162655) (not b!3163013) (not b!3162997) (not b!3162886) (not b!3162951) (not bm!229120) (not b!3162966) (not b!3162940) (not b!3163009) (not bm!229090) (not b!3163003) (not b!3162917) (not b!3162944) (not b!3162893) (not b!3162691) (not b!3162954) (not bm!229069) (not b!3162920) (not b!3162915) (not b!3162889) tp_is_empty!17005 (not b!3162741) (not bm!229129) (not bm!229108) (not bm!229126) (not b!3162895) (not b!3163025) b_and!209301 (not b!3162878) (not b!3162918) (not b!3162959) (not bm!229115) (not b!3162980) (not bm!229118) (not b!3163022) (not b!3162933) (not b!3162962) (not b!3162862) (not b!3162867) (not b!3162909) (not b!3162863) (not b!3162898) (not b!3162995) (not b!3162963) (not bm!229131) (not b!3163017) (not b!3162983) (not b!3162984) (not b!3162891) (not b!3162736) (not b!3162850) (not b!3162847) (not d!868602) (not b!3163001) (not d!868560) (not b!3162692) (not b!3162972) (not b!3162914) (not b!3162958) (not b!3162894) (not b!3162708) (not b!3162999) (not b!3162824) (not b_next!83753) (not d!868600) b_and!209295 (not b!3162939) (not b!3162821) (not d!868562) (not b_lambda!86389) (not b!3162935) (not b!3163014) (not b!3162960) (not b!3162970) (not b!3163010) (not bm!229088) (not b!3162968) (not bm!229105) (not tb!155091) (not b!3162952) (not b!3162846) (not b!3162871) (not d!868572) (not b!3162875) (not d!868590) (not b!3162879) (not b!3162675) (not bm!229125) (not bm!229072) (not b!3162919) (not b!3162696) (not b!3162874) (not b!3163020) (not b!3162908) (not b!3162950) (not bm!229123) (not b!3162885) (not b!3162938) (not bm!229106) (not b!3162934) (not b!3162910) (not b!3162865) (not b!3162738) (not b!3162877) (not b!3162899) (not d!868598) (not b!3163021) (not b!3163008) (not b!3162907) (not b!3162948) (not b!3162976) (not bm!229087) (not b!3162866) (not b!3162840))
(check-sat b_and!209301 b_and!209295 (not b_next!83753) (not b_next!83755))
