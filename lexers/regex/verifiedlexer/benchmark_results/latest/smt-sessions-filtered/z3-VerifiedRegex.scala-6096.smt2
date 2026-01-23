; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296702 () Bool)

(assert start!296702)

(declare-fun b!3166501 () Bool)

(declare-fun b_free!83137 () Bool)

(declare-fun b_next!83841 () Bool)

(assert (=> b!3166501 (= b_free!83137 (not b_next!83841))))

(declare-fun tp!997972 () Bool)

(declare-fun b_and!209403 () Bool)

(assert (=> b!3166501 (= tp!997972 b_and!209403)))

(declare-fun b!3166507 () Bool)

(declare-fun b_free!83139 () Bool)

(declare-fun b_next!83843 () Bool)

(assert (=> b!3166507 (= b_free!83139 (not b_next!83843))))

(declare-fun tp!997970 () Bool)

(declare-fun b_and!209405 () Bool)

(assert (=> b!3166507 (= tp!997970 b_and!209405)))

(declare-fun e!1972433 () Bool)

(declare-fun e!1972435 () Bool)

(assert (=> b!3166501 (= e!1972433 (and e!1972435 tp!997972))))

(declare-fun b!3166502 () Bool)

(declare-fun e!1972440 () Bool)

(declare-fun tp_is_empty!17049 () Bool)

(assert (=> b!3166502 (= e!1972440 tp_is_empty!17049)))

(declare-fun mapIsEmpty!18884 () Bool)

(declare-fun mapRes!18884 () Bool)

(assert (=> mapIsEmpty!18884 mapRes!18884))

(declare-fun b!3166503 () Bool)

(declare-fun res!1288069 () Bool)

(declare-fun e!1972432 () Bool)

(assert (=> b!3166503 (=> (not res!1288069) (not e!1972432))))

(declare-datatypes ((C!19672 0))(
  ( (C!19673 (val!11872 Int)) )
))
(declare-datatypes ((Regex!9743 0))(
  ( (ElementMatch!9743 (c!532536 C!19672)) (Concat!15064 (regOne!19998 Regex!9743) (regTwo!19998 Regex!9743)) (EmptyExpr!9743) (Star!9743 (reg!10072 Regex!9743)) (EmptyLang!9743) (Union!9743 (regOne!19999 Regex!9743) (regTwo!19999 Regex!9743)) )
))
(declare-fun r!13156 () Regex!9743)

(get-info :version)

(assert (=> b!3166503 (= res!1288069 (and (not ((_ is EmptyExpr!9743) r!13156)) (not ((_ is EmptyLang!9743) r!13156)) (not ((_ is ElementMatch!9743) r!13156)) (not ((_ is Union!9743) r!13156)) ((_ is Star!9743) r!13156)))))

(declare-fun b!3166504 () Bool)

(declare-fun e!1972434 () Bool)

(assert (=> b!3166504 (= e!1972434 e!1972433)))

(declare-fun b!3166505 () Bool)

(declare-fun e!1972437 () Bool)

(declare-datatypes ((tuple2!34560 0))(
  ( (tuple2!34561 (_1!20412 Regex!9743) (_2!20412 C!19672)) )
))
(declare-datatypes ((tuple2!34562 0))(
  ( (tuple2!34563 (_1!20413 tuple2!34560) (_2!20413 Regex!9743)) )
))
(declare-datatypes ((array!14864 0))(
  ( (array!14865 (arr!6618 (Array (_ BitVec 32) (_ BitVec 64))) (size!26704 (_ BitVec 32))) )
))
(declare-datatypes ((List!35577 0))(
  ( (Nil!35453) (Cons!35453 (h!40873 tuple2!34562) (t!234654 List!35577)) )
))
(declare-datatypes ((array!14866 0))(
  ( (array!14867 (arr!6619 (Array (_ BitVec 32) List!35577)) (size!26705 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8328 0))(
  ( (LongMapFixedSize!8329 (defaultEntry!4549 Int) (mask!10829 (_ BitVec 32)) (extraKeys!4413 (_ BitVec 32)) (zeroValue!4423 List!35577) (minValue!4423 List!35577) (_size!8371 (_ BitVec 32)) (_keys!4464 array!14864) (_values!4445 array!14866) (_vacant!4225 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16465 0))(
  ( (Cell!16466 (v!35145 LongMapFixedSize!8328)) )
))
(declare-datatypes ((MutLongMap!4164 0))(
  ( (LongMap!4164 (underlying!8557 Cell!16465)) (MutLongMapExt!4163 (__x!22598 Int)) )
))
(declare-fun lt!1064629 () MutLongMap!4164)

(assert (=> b!3166505 (= e!1972435 (and e!1972437 ((_ is LongMap!4164) lt!1064629)))))

(declare-datatypes ((Hashable!4080 0))(
  ( (HashableExt!4079 (__x!22599 Int)) )
))
(declare-datatypes ((Cell!16467 0))(
  ( (Cell!16468 (v!35146 MutLongMap!4164)) )
))
(declare-datatypes ((MutableMap!4070 0))(
  ( (MutableMapExt!4069 (__x!22600 Int)) (HashMap!4070 (underlying!8558 Cell!16467) (hashF!6112 Hashable!4080) (_size!8372 (_ BitVec 32)) (defaultValue!4241 Int)) )
))
(declare-datatypes ((Cache!410 0))(
  ( (Cache!411 (cache!4214 MutableMap!4070)) )
))
(declare-fun cache!347 () Cache!410)

(assert (=> b!3166505 (= lt!1064629 (v!35146 (underlying!8558 (cache!4214 cache!347))))))

(declare-fun res!1288068 () Bool)

(assert (=> start!296702 (=> (not res!1288068) (not e!1972432))))

(declare-fun validRegex!4463 (Regex!9743) Bool)

(assert (=> start!296702 (= res!1288068 (validRegex!4463 r!13156))))

(assert (=> start!296702 e!1972432))

(assert (=> start!296702 e!1972440))

(declare-fun inv!48125 (Cache!410) Bool)

(assert (=> start!296702 (and (inv!48125 cache!347) e!1972434)))

(assert (=> start!296702 tp_is_empty!17049))

(declare-fun b!3166506 () Bool)

(declare-fun tp!997975 () Bool)

(assert (=> b!3166506 (= e!1972440 tp!997975)))

(declare-fun tp!997973 () Bool)

(declare-fun e!1972439 () Bool)

(declare-fun e!1972438 () Bool)

(declare-fun tp!997971 () Bool)

(declare-fun array_inv!4742 (array!14864) Bool)

(declare-fun array_inv!4743 (array!14866) Bool)

(assert (=> b!3166507 (= e!1972438 (and tp!997970 tp!997971 tp!997973 (array_inv!4742 (_keys!4464 (v!35145 (underlying!8557 (v!35146 (underlying!8558 (cache!4214 cache!347))))))) (array_inv!4743 (_values!4445 (v!35145 (underlying!8557 (v!35146 (underlying!8558 (cache!4214 cache!347))))))) e!1972439))))

(declare-fun b!3166508 () Bool)

(declare-fun tp!997967 () Bool)

(declare-fun tp!997969 () Bool)

(assert (=> b!3166508 (= e!1972440 (and tp!997967 tp!997969))))

(declare-fun mapNonEmpty!18884 () Bool)

(declare-fun tp!997966 () Bool)

(declare-fun tp!997968 () Bool)

(assert (=> mapNonEmpty!18884 (= mapRes!18884 (and tp!997966 tp!997968))))

(declare-fun mapValue!18884 () List!35577)

(declare-fun mapRest!18884 () (Array (_ BitVec 32) List!35577))

(declare-fun mapKey!18884 () (_ BitVec 32))

(assert (=> mapNonEmpty!18884 (= (arr!6619 (_values!4445 (v!35145 (underlying!8557 (v!35146 (underlying!8558 (cache!4214 cache!347))))))) (store mapRest!18884 mapKey!18884 mapValue!18884))))

(declare-fun b!3166509 () Bool)

(declare-fun tp!997974 () Bool)

(assert (=> b!3166509 (= e!1972439 (and tp!997974 mapRes!18884))))

(declare-fun condMapEmpty!18884 () Bool)

(declare-fun mapDefault!18884 () List!35577)

(assert (=> b!3166509 (= condMapEmpty!18884 (= (arr!6619 (_values!4445 (v!35145 (underlying!8557 (v!35146 (underlying!8558 (cache!4214 cache!347))))))) ((as const (Array (_ BitVec 32) List!35577)) mapDefault!18884)))))

(declare-fun b!3166510 () Bool)

(declare-fun e!1972436 () Bool)

(assert (=> b!3166510 (= e!1972436 e!1972438)))

(declare-fun b!3166511 () Bool)

(declare-fun res!1288071 () Bool)

(assert (=> b!3166511 (=> (not res!1288071) (not e!1972432))))

(declare-fun valid!3250 (Cache!410) Bool)

(assert (=> b!3166511 (= res!1288071 (valid!3250 cache!347))))

(declare-fun b!3166512 () Bool)

(assert (=> b!3166512 (= e!1972437 e!1972436)))

(declare-fun b!3166513 () Bool)

(declare-fun tp!997964 () Bool)

(declare-fun tp!997965 () Bool)

(assert (=> b!3166513 (= e!1972440 (and tp!997964 tp!997965))))

(declare-fun b!3166514 () Bool)

(declare-fun res!1288070 () Bool)

(assert (=> b!3166514 (=> (not res!1288070) (not e!1972432))))

(declare-fun a!2409 () C!19672)

(declare-datatypes ((Option!6906 0))(
  ( (None!6905) (Some!6905 (v!35147 Regex!9743)) )
))
(declare-fun get!11251 (Cache!410 Regex!9743 C!19672) Option!6906)

(assert (=> b!3166514 (= res!1288070 (not ((_ is Some!6905) (get!11251 cache!347 r!13156 a!2409))))))

(declare-fun b!3166515 () Bool)

(declare-fun RegexPrimitiveSize!130 (Regex!9743) Int)

(assert (=> b!3166515 (= e!1972432 (>= (RegexPrimitiveSize!130 (reg!10072 r!13156)) (RegexPrimitiveSize!130 r!13156)))))

(assert (= (and start!296702 res!1288068) b!3166511))

(assert (= (and b!3166511 res!1288071) b!3166514))

(assert (= (and b!3166514 res!1288070) b!3166503))

(assert (= (and b!3166503 res!1288069) b!3166515))

(assert (= (and start!296702 ((_ is ElementMatch!9743) r!13156)) b!3166502))

(assert (= (and start!296702 ((_ is Concat!15064) r!13156)) b!3166513))

(assert (= (and start!296702 ((_ is Star!9743) r!13156)) b!3166506))

(assert (= (and start!296702 ((_ is Union!9743) r!13156)) b!3166508))

(assert (= (and b!3166509 condMapEmpty!18884) mapIsEmpty!18884))

(assert (= (and b!3166509 (not condMapEmpty!18884)) mapNonEmpty!18884))

(assert (= b!3166507 b!3166509))

(assert (= b!3166510 b!3166507))

(assert (= b!3166512 b!3166510))

(assert (= (and b!3166505 ((_ is LongMap!4164) (v!35146 (underlying!8558 (cache!4214 cache!347))))) b!3166512))

(assert (= b!3166501 b!3166505))

(assert (= (and b!3166504 ((_ is HashMap!4070) (cache!4214 cache!347))) b!3166501))

(assert (= start!296702 b!3166504))

(declare-fun m!3428174 () Bool)

(assert (=> b!3166507 m!3428174))

(declare-fun m!3428176 () Bool)

(assert (=> b!3166507 m!3428176))

(declare-fun m!3428178 () Bool)

(assert (=> start!296702 m!3428178))

(declare-fun m!3428180 () Bool)

(assert (=> start!296702 m!3428180))

(declare-fun m!3428182 () Bool)

(assert (=> mapNonEmpty!18884 m!3428182))

(declare-fun m!3428184 () Bool)

(assert (=> b!3166511 m!3428184))

(declare-fun m!3428186 () Bool)

(assert (=> b!3166514 m!3428186))

(declare-fun m!3428188 () Bool)

(assert (=> b!3166515 m!3428188))

(declare-fun m!3428190 () Bool)

(assert (=> b!3166515 m!3428190))

(check-sat (not b!3166514) (not start!296702) (not b!3166513) (not b_next!83843) (not b!3166507) (not b!3166509) (not b_next!83841) (not b!3166511) tp_is_empty!17049 (not b!3166515) (not b!3166508) b_and!209403 (not mapNonEmpty!18884) b_and!209405 (not b!3166506))
(check-sat b_and!209403 b_and!209405 (not b_next!83843) (not b_next!83841))
(get-model)

(declare-fun d!868889 () Bool)

(declare-fun validCacheMap!59 (MutableMap!4070) Bool)

(assert (=> d!868889 (= (valid!3250 cache!347) (validCacheMap!59 (cache!4214 cache!347)))))

(declare-fun bs!539528 () Bool)

(assert (= bs!539528 d!868889))

(declare-fun m!3428192 () Bool)

(assert (=> bs!539528 m!3428192))

(assert (=> b!3166511 d!868889))

(declare-fun d!868891 () Bool)

(assert (=> d!868891 (= (array_inv!4742 (_keys!4464 (v!35145 (underlying!8557 (v!35146 (underlying!8558 (cache!4214 cache!347))))))) (bvsge (size!26704 (_keys!4464 (v!35145 (underlying!8557 (v!35146 (underlying!8558 (cache!4214 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3166507 d!868891))

(declare-fun d!868893 () Bool)

(assert (=> d!868893 (= (array_inv!4743 (_values!4445 (v!35145 (underlying!8557 (v!35146 (underlying!8558 (cache!4214 cache!347))))))) (bvsge (size!26705 (_values!4445 (v!35145 (underlying!8557 (v!35146 (underlying!8558 (cache!4214 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3166507 d!868893))

(declare-fun b!3166534 () Bool)

(declare-fun e!1972458 () Bool)

(declare-fun call!229625 () Bool)

(assert (=> b!3166534 (= e!1972458 call!229625)))

(declare-fun b!3166535 () Bool)

(declare-fun e!1972460 () Bool)

(declare-fun call!229624 () Bool)

(assert (=> b!3166535 (= e!1972460 call!229624)))

(declare-fun b!3166536 () Bool)

(declare-fun e!1972459 () Bool)

(declare-fun e!1972457 () Bool)

(assert (=> b!3166536 (= e!1972459 e!1972457)))

(declare-fun res!1288085 () Bool)

(assert (=> b!3166536 (=> (not res!1288085) (not e!1972457))))

(declare-fun call!229626 () Bool)

(assert (=> b!3166536 (= res!1288085 call!229626)))

(declare-fun b!3166537 () Bool)

(declare-fun e!1972456 () Bool)

(declare-fun e!1972462 () Bool)

(assert (=> b!3166537 (= e!1972456 e!1972462)))

(declare-fun c!532542 () Bool)

(assert (=> b!3166537 (= c!532542 ((_ is Star!9743) r!13156))))

(declare-fun bm!229619 () Bool)

(declare-fun c!532541 () Bool)

(assert (=> bm!229619 (= call!229624 (validRegex!4463 (ite c!532542 (reg!10072 r!13156) (ite c!532541 (regOne!19999 r!13156) (regOne!19998 r!13156)))))))

(declare-fun b!3166538 () Bool)

(declare-fun res!1288082 () Bool)

(assert (=> b!3166538 (=> res!1288082 e!1972459)))

(assert (=> b!3166538 (= res!1288082 (not ((_ is Concat!15064) r!13156)))))

(declare-fun e!1972461 () Bool)

(assert (=> b!3166538 (= e!1972461 e!1972459)))

(declare-fun b!3166539 () Bool)

(declare-fun res!1288083 () Bool)

(assert (=> b!3166539 (=> (not res!1288083) (not e!1972458))))

(assert (=> b!3166539 (= res!1288083 call!229626)))

(assert (=> b!3166539 (= e!1972461 e!1972458)))

(declare-fun bm!229620 () Bool)

(assert (=> bm!229620 (= call!229625 (validRegex!4463 (ite c!532541 (regTwo!19999 r!13156) (regTwo!19998 r!13156))))))

(declare-fun bm!229621 () Bool)

(assert (=> bm!229621 (= call!229626 call!229624)))

(declare-fun b!3166541 () Bool)

(assert (=> b!3166541 (= e!1972462 e!1972461)))

(assert (=> b!3166541 (= c!532541 ((_ is Union!9743) r!13156))))

(declare-fun b!3166542 () Bool)

(assert (=> b!3166542 (= e!1972457 call!229625)))

(declare-fun b!3166540 () Bool)

(assert (=> b!3166540 (= e!1972462 e!1972460)))

(declare-fun res!1288084 () Bool)

(declare-fun nullable!3345 (Regex!9743) Bool)

(assert (=> b!3166540 (= res!1288084 (not (nullable!3345 (reg!10072 r!13156))))))

(assert (=> b!3166540 (=> (not res!1288084) (not e!1972460))))

(declare-fun d!868895 () Bool)

(declare-fun res!1288086 () Bool)

(assert (=> d!868895 (=> res!1288086 e!1972456)))

(assert (=> d!868895 (= res!1288086 ((_ is ElementMatch!9743) r!13156))))

(assert (=> d!868895 (= (validRegex!4463 r!13156) e!1972456)))

(assert (= (and d!868895 (not res!1288086)) b!3166537))

(assert (= (and b!3166537 c!532542) b!3166540))

(assert (= (and b!3166537 (not c!532542)) b!3166541))

(assert (= (and b!3166540 res!1288084) b!3166535))

(assert (= (and b!3166541 c!532541) b!3166539))

(assert (= (and b!3166541 (not c!532541)) b!3166538))

(assert (= (and b!3166539 res!1288083) b!3166534))

(assert (= (and b!3166538 (not res!1288082)) b!3166536))

(assert (= (and b!3166536 res!1288085) b!3166542))

(assert (= (or b!3166539 b!3166536) bm!229621))

(assert (= (or b!3166534 b!3166542) bm!229620))

(assert (= (or b!3166535 bm!229621) bm!229619))

(declare-fun m!3428194 () Bool)

(assert (=> bm!229619 m!3428194))

(declare-fun m!3428196 () Bool)

(assert (=> bm!229620 m!3428196))

(declare-fun m!3428198 () Bool)

(assert (=> b!3166540 m!3428198))

(assert (=> start!296702 d!868895))

(declare-fun d!868897 () Bool)

(declare-fun res!1288089 () Bool)

(declare-fun e!1972465 () Bool)

(assert (=> d!868897 (=> (not res!1288089) (not e!1972465))))

(assert (=> d!868897 (= res!1288089 ((_ is HashMap!4070) (cache!4214 cache!347)))))

(assert (=> d!868897 (= (inv!48125 cache!347) e!1972465)))

(declare-fun b!3166545 () Bool)

(assert (=> b!3166545 (= e!1972465 (validCacheMap!59 (cache!4214 cache!347)))))

(assert (= (and d!868897 res!1288089) b!3166545))

(assert (=> b!3166545 m!3428192))

(assert (=> start!296702 d!868897))

(declare-fun d!868899 () Bool)

(declare-fun e!1972470 () Bool)

(assert (=> d!868899 e!1972470))

(declare-fun res!1288092 () Bool)

(assert (=> d!868899 (=> res!1288092 e!1972470)))

(declare-fun lt!1064634 () Option!6906)

(declare-fun isEmpty!19758 (Option!6906) Bool)

(assert (=> d!868899 (= res!1288092 (isEmpty!19758 lt!1064634))))

(declare-fun e!1972471 () Option!6906)

(assert (=> d!868899 (= lt!1064634 e!1972471)))

(declare-fun c!532546 () Bool)

(declare-fun contains!6177 (MutableMap!4070 tuple2!34560) Bool)

(assert (=> d!868899 (= c!532546 (contains!6177 (cache!4214 cache!347) (tuple2!34561 r!13156 a!2409)))))

(assert (=> d!868899 (validRegex!4463 r!13156)))

(assert (=> d!868899 (= (get!11251 cache!347 r!13156 a!2409) lt!1064634)))

(declare-fun b!3166552 () Bool)

(declare-fun apply!7952 (MutableMap!4070 tuple2!34560) Regex!9743)

(assert (=> b!3166552 (= e!1972471 (Some!6905 (apply!7952 (cache!4214 cache!347) (tuple2!34561 r!13156 a!2409))))))

(declare-datatypes ((Unit!49833 0))(
  ( (Unit!49834) )
))
(declare-fun lt!1064635 () Unit!49833)

(declare-fun lemmaIfInCacheThenValid!56 (Cache!410 Regex!9743 C!19672) Unit!49833)

(assert (=> b!3166552 (= lt!1064635 (lemmaIfInCacheThenValid!56 cache!347 r!13156 a!2409))))

(declare-fun b!3166553 () Bool)

(assert (=> b!3166553 (= e!1972471 None!6905)))

(declare-fun b!3166554 () Bool)

(declare-fun get!11252 (Option!6906) Regex!9743)

(declare-fun derivativeStep!2892 (Regex!9743 C!19672) Regex!9743)

(assert (=> b!3166554 (= e!1972470 (= (get!11252 lt!1064634) (derivativeStep!2892 r!13156 a!2409)))))

(assert (= (and d!868899 c!532546) b!3166552))

(assert (= (and d!868899 (not c!532546)) b!3166553))

(assert (= (and d!868899 (not res!1288092)) b!3166554))

(declare-fun m!3428200 () Bool)

(assert (=> d!868899 m!3428200))

(declare-fun m!3428202 () Bool)

(assert (=> d!868899 m!3428202))

(assert (=> d!868899 m!3428178))

(declare-fun m!3428204 () Bool)

(assert (=> b!3166552 m!3428204))

(declare-fun m!3428206 () Bool)

(assert (=> b!3166552 m!3428206))

(declare-fun m!3428208 () Bool)

(assert (=> b!3166554 m!3428208))

(declare-fun m!3428210 () Bool)

(assert (=> b!3166554 m!3428210))

(assert (=> b!3166514 d!868899))

(declare-fun bm!229628 () Bool)

(declare-fun c!532560 () Bool)

(declare-fun c!532561 () Bool)

(declare-fun call!229633 () Int)

(assert (=> bm!229628 (= call!229633 (RegexPrimitiveSize!130 (ite c!532560 (regTwo!19998 (reg!10072 r!13156)) (ite c!532561 (reg!10072 (reg!10072 r!13156)) (regTwo!19999 (reg!10072 r!13156))))))))

(declare-fun b!3166575 () Bool)

(declare-fun c!532559 () Bool)

(assert (=> b!3166575 (= c!532559 ((_ is EmptyLang!9743) (reg!10072 r!13156)))))

(declare-fun e!1972484 () Int)

(declare-fun e!1972486 () Int)

(assert (=> b!3166575 (= e!1972484 e!1972486)))

(declare-fun bm!229629 () Bool)

(declare-fun call!229634 () Int)

(assert (=> bm!229629 (= call!229634 call!229633)))

(declare-fun b!3166576 () Bool)

(declare-fun e!1972482 () Int)

(declare-fun e!1972483 () Int)

(assert (=> b!3166576 (= e!1972482 e!1972483)))

(assert (=> b!3166576 (= c!532560 ((_ is Concat!15064) (reg!10072 r!13156)))))

(declare-fun bm!229630 () Bool)

(declare-fun call!229635 () Int)

(assert (=> bm!229630 (= call!229635 (RegexPrimitiveSize!130 (ite c!532560 (regOne!19998 (reg!10072 r!13156)) (regOne!19999 (reg!10072 r!13156)))))))

(declare-fun b!3166577 () Bool)

(declare-fun c!532558 () Bool)

(assert (=> b!3166577 (= c!532558 ((_ is EmptyExpr!9743) (reg!10072 r!13156)))))

(declare-fun e!1972485 () Int)

(assert (=> b!3166577 (= e!1972483 e!1972485)))

(declare-fun b!3166578 () Bool)

(assert (=> b!3166578 (= e!1972485 0)))

(declare-fun b!3166579 () Bool)

(assert (=> b!3166579 (= e!1972484 (+ 1 call!229634))))

(declare-fun b!3166580 () Bool)

(assert (=> b!3166580 (= e!1972483 (+ 1 call!229635 call!229633))))

(declare-fun b!3166581 () Bool)

(assert (=> b!3166581 (= e!1972485 e!1972484)))

(assert (=> b!3166581 (= c!532561 ((_ is Star!9743) (reg!10072 r!13156)))))

(declare-fun b!3166582 () Bool)

(assert (=> b!3166582 (= e!1972486 (+ 1 call!229635 call!229634))))

(declare-fun d!868901 () Bool)

(declare-fun lt!1064638 () Int)

(assert (=> d!868901 (>= lt!1064638 0)))

(assert (=> d!868901 (= lt!1064638 e!1972482)))

(declare-fun c!532557 () Bool)

(assert (=> d!868901 (= c!532557 ((_ is ElementMatch!9743) (reg!10072 r!13156)))))

(assert (=> d!868901 (= (RegexPrimitiveSize!130 (reg!10072 r!13156)) lt!1064638)))

(declare-fun b!3166583 () Bool)

(assert (=> b!3166583 (= e!1972482 1)))

(declare-fun b!3166584 () Bool)

(assert (=> b!3166584 (= e!1972486 0)))

(assert (= (and d!868901 c!532557) b!3166583))

(assert (= (and d!868901 (not c!532557)) b!3166576))

(assert (= (and b!3166576 c!532560) b!3166580))

(assert (= (and b!3166576 (not c!532560)) b!3166577))

(assert (= (and b!3166577 c!532558) b!3166578))

(assert (= (and b!3166577 (not c!532558)) b!3166581))

(assert (= (and b!3166581 c!532561) b!3166579))

(assert (= (and b!3166581 (not c!532561)) b!3166575))

(assert (= (and b!3166575 c!532559) b!3166584))

(assert (= (and b!3166575 (not c!532559)) b!3166582))

(assert (= (or b!3166579 b!3166582) bm!229629))

(assert (= (or b!3166580 bm!229629) bm!229628))

(assert (= (or b!3166580 b!3166582) bm!229630))

(declare-fun m!3428212 () Bool)

(assert (=> bm!229628 m!3428212))

(declare-fun m!3428214 () Bool)

(assert (=> bm!229630 m!3428214))

(assert (=> b!3166515 d!868901))

(declare-fun c!532566 () Bool)

(declare-fun bm!229631 () Bool)

(declare-fun c!532565 () Bool)

(declare-fun call!229636 () Int)

(assert (=> bm!229631 (= call!229636 (RegexPrimitiveSize!130 (ite c!532565 (regTwo!19998 r!13156) (ite c!532566 (reg!10072 r!13156) (regTwo!19999 r!13156)))))))

(declare-fun b!3166585 () Bool)

(declare-fun c!532564 () Bool)

(assert (=> b!3166585 (= c!532564 ((_ is EmptyLang!9743) r!13156))))

(declare-fun e!1972489 () Int)

(declare-fun e!1972491 () Int)

(assert (=> b!3166585 (= e!1972489 e!1972491)))

(declare-fun bm!229632 () Bool)

(declare-fun call!229637 () Int)

(assert (=> bm!229632 (= call!229637 call!229636)))

(declare-fun b!3166586 () Bool)

(declare-fun e!1972487 () Int)

(declare-fun e!1972488 () Int)

(assert (=> b!3166586 (= e!1972487 e!1972488)))

(assert (=> b!3166586 (= c!532565 ((_ is Concat!15064) r!13156))))

(declare-fun bm!229633 () Bool)

(declare-fun call!229638 () Int)

(assert (=> bm!229633 (= call!229638 (RegexPrimitiveSize!130 (ite c!532565 (regOne!19998 r!13156) (regOne!19999 r!13156))))))

(declare-fun b!3166587 () Bool)

(declare-fun c!532563 () Bool)

(assert (=> b!3166587 (= c!532563 ((_ is EmptyExpr!9743) r!13156))))

(declare-fun e!1972490 () Int)

(assert (=> b!3166587 (= e!1972488 e!1972490)))

(declare-fun b!3166588 () Bool)

(assert (=> b!3166588 (= e!1972490 0)))

(declare-fun b!3166589 () Bool)

(assert (=> b!3166589 (= e!1972489 (+ 1 call!229637))))

(declare-fun b!3166590 () Bool)

(assert (=> b!3166590 (= e!1972488 (+ 1 call!229638 call!229636))))

(declare-fun b!3166591 () Bool)

(assert (=> b!3166591 (= e!1972490 e!1972489)))

(assert (=> b!3166591 (= c!532566 ((_ is Star!9743) r!13156))))

(declare-fun b!3166592 () Bool)

(assert (=> b!3166592 (= e!1972491 (+ 1 call!229638 call!229637))))

(declare-fun d!868903 () Bool)

(declare-fun lt!1064639 () Int)

(assert (=> d!868903 (>= lt!1064639 0)))

(assert (=> d!868903 (= lt!1064639 e!1972487)))

(declare-fun c!532562 () Bool)

(assert (=> d!868903 (= c!532562 ((_ is ElementMatch!9743) r!13156))))

(assert (=> d!868903 (= (RegexPrimitiveSize!130 r!13156) lt!1064639)))

(declare-fun b!3166593 () Bool)

(assert (=> b!3166593 (= e!1972487 1)))

(declare-fun b!3166594 () Bool)

(assert (=> b!3166594 (= e!1972491 0)))

(assert (= (and d!868903 c!532562) b!3166593))

(assert (= (and d!868903 (not c!532562)) b!3166586))

(assert (= (and b!3166586 c!532565) b!3166590))

(assert (= (and b!3166586 (not c!532565)) b!3166587))

(assert (= (and b!3166587 c!532563) b!3166588))

(assert (= (and b!3166587 (not c!532563)) b!3166591))

(assert (= (and b!3166591 c!532566) b!3166589))

(assert (= (and b!3166591 (not c!532566)) b!3166585))

(assert (= (and b!3166585 c!532564) b!3166594))

(assert (= (and b!3166585 (not c!532564)) b!3166592))

(assert (= (or b!3166589 b!3166592) bm!229632))

(assert (= (or b!3166590 bm!229632) bm!229631))

(assert (= (or b!3166590 b!3166592) bm!229633))

(declare-fun m!3428216 () Bool)

(assert (=> bm!229631 m!3428216))

(declare-fun m!3428218 () Bool)

(assert (=> bm!229633 m!3428218))

(assert (=> b!3166515 d!868903))

(declare-fun b!3166608 () Bool)

(declare-fun e!1972494 () Bool)

(declare-fun tp!997989 () Bool)

(declare-fun tp!997990 () Bool)

(assert (=> b!3166608 (= e!1972494 (and tp!997989 tp!997990))))

(declare-fun b!3166607 () Bool)

(declare-fun tp!997987 () Bool)

(assert (=> b!3166607 (= e!1972494 tp!997987)))

(declare-fun b!3166605 () Bool)

(assert (=> b!3166605 (= e!1972494 tp_is_empty!17049)))

(assert (=> b!3166506 (= tp!997975 e!1972494)))

(declare-fun b!3166606 () Bool)

(declare-fun tp!997988 () Bool)

(declare-fun tp!997986 () Bool)

(assert (=> b!3166606 (= e!1972494 (and tp!997988 tp!997986))))

(assert (= (and b!3166506 ((_ is ElementMatch!9743) (reg!10072 r!13156))) b!3166605))

(assert (= (and b!3166506 ((_ is Concat!15064) (reg!10072 r!13156))) b!3166606))

(assert (= (and b!3166506 ((_ is Star!9743) (reg!10072 r!13156))) b!3166607))

(assert (= (and b!3166506 ((_ is Union!9743) (reg!10072 r!13156))) b!3166608))

(declare-fun tp!997997 () Bool)

(declare-fun tp!997998 () Bool)

(declare-fun e!1972497 () Bool)

(declare-fun tp!997999 () Bool)

(declare-fun b!3166613 () Bool)

(assert (=> b!3166613 (= e!1972497 (and tp!997997 tp_is_empty!17049 tp!997998 tp!997999))))

(assert (=> b!3166507 (= tp!997971 e!1972497)))

(assert (= (and b!3166507 ((_ is Cons!35453) (zeroValue!4423 (v!35145 (underlying!8557 (v!35146 (underlying!8558 (cache!4214 cache!347)))))))) b!3166613))

(declare-fun tp!998002 () Bool)

(declare-fun tp!998000 () Bool)

(declare-fun b!3166614 () Bool)

(declare-fun tp!998001 () Bool)

(declare-fun e!1972498 () Bool)

(assert (=> b!3166614 (= e!1972498 (and tp!998000 tp_is_empty!17049 tp!998001 tp!998002))))

(assert (=> b!3166507 (= tp!997973 e!1972498)))

(assert (= (and b!3166507 ((_ is Cons!35453) (minValue!4423 (v!35145 (underlying!8557 (v!35146 (underlying!8558 (cache!4214 cache!347)))))))) b!3166614))

(declare-fun b!3166618 () Bool)

(declare-fun e!1972499 () Bool)

(declare-fun tp!998006 () Bool)

(declare-fun tp!998007 () Bool)

(assert (=> b!3166618 (= e!1972499 (and tp!998006 tp!998007))))

(declare-fun b!3166617 () Bool)

(declare-fun tp!998004 () Bool)

(assert (=> b!3166617 (= e!1972499 tp!998004)))

(declare-fun b!3166615 () Bool)

(assert (=> b!3166615 (= e!1972499 tp_is_empty!17049)))

(assert (=> b!3166508 (= tp!997967 e!1972499)))

(declare-fun b!3166616 () Bool)

(declare-fun tp!998005 () Bool)

(declare-fun tp!998003 () Bool)

(assert (=> b!3166616 (= e!1972499 (and tp!998005 tp!998003))))

(assert (= (and b!3166508 ((_ is ElementMatch!9743) (regOne!19999 r!13156))) b!3166615))

(assert (= (and b!3166508 ((_ is Concat!15064) (regOne!19999 r!13156))) b!3166616))

(assert (= (and b!3166508 ((_ is Star!9743) (regOne!19999 r!13156))) b!3166617))

(assert (= (and b!3166508 ((_ is Union!9743) (regOne!19999 r!13156))) b!3166618))

(declare-fun b!3166622 () Bool)

(declare-fun e!1972500 () Bool)

(declare-fun tp!998011 () Bool)

(declare-fun tp!998012 () Bool)

(assert (=> b!3166622 (= e!1972500 (and tp!998011 tp!998012))))

(declare-fun b!3166621 () Bool)

(declare-fun tp!998009 () Bool)

(assert (=> b!3166621 (= e!1972500 tp!998009)))

(declare-fun b!3166619 () Bool)

(assert (=> b!3166619 (= e!1972500 tp_is_empty!17049)))

(assert (=> b!3166508 (= tp!997969 e!1972500)))

(declare-fun b!3166620 () Bool)

(declare-fun tp!998010 () Bool)

(declare-fun tp!998008 () Bool)

(assert (=> b!3166620 (= e!1972500 (and tp!998010 tp!998008))))

(assert (= (and b!3166508 ((_ is ElementMatch!9743) (regTwo!19999 r!13156))) b!3166619))

(assert (= (and b!3166508 ((_ is Concat!15064) (regTwo!19999 r!13156))) b!3166620))

(assert (= (and b!3166508 ((_ is Star!9743) (regTwo!19999 r!13156))) b!3166621))

(assert (= (and b!3166508 ((_ is Union!9743) (regTwo!19999 r!13156))) b!3166622))

(declare-fun b!3166626 () Bool)

(declare-fun e!1972501 () Bool)

(declare-fun tp!998016 () Bool)

(declare-fun tp!998017 () Bool)

(assert (=> b!3166626 (= e!1972501 (and tp!998016 tp!998017))))

(declare-fun b!3166625 () Bool)

(declare-fun tp!998014 () Bool)

(assert (=> b!3166625 (= e!1972501 tp!998014)))

(declare-fun b!3166623 () Bool)

(assert (=> b!3166623 (= e!1972501 tp_is_empty!17049)))

(assert (=> b!3166513 (= tp!997964 e!1972501)))

(declare-fun b!3166624 () Bool)

(declare-fun tp!998015 () Bool)

(declare-fun tp!998013 () Bool)

(assert (=> b!3166624 (= e!1972501 (and tp!998015 tp!998013))))

(assert (= (and b!3166513 ((_ is ElementMatch!9743) (regOne!19998 r!13156))) b!3166623))

(assert (= (and b!3166513 ((_ is Concat!15064) (regOne!19998 r!13156))) b!3166624))

(assert (= (and b!3166513 ((_ is Star!9743) (regOne!19998 r!13156))) b!3166625))

(assert (= (and b!3166513 ((_ is Union!9743) (regOne!19998 r!13156))) b!3166626))

(declare-fun b!3166630 () Bool)

(declare-fun e!1972502 () Bool)

(declare-fun tp!998021 () Bool)

(declare-fun tp!998022 () Bool)

(assert (=> b!3166630 (= e!1972502 (and tp!998021 tp!998022))))

(declare-fun b!3166629 () Bool)

(declare-fun tp!998019 () Bool)

(assert (=> b!3166629 (= e!1972502 tp!998019)))

(declare-fun b!3166627 () Bool)

(assert (=> b!3166627 (= e!1972502 tp_is_empty!17049)))

(assert (=> b!3166513 (= tp!997965 e!1972502)))

(declare-fun b!3166628 () Bool)

(declare-fun tp!998020 () Bool)

(declare-fun tp!998018 () Bool)

(assert (=> b!3166628 (= e!1972502 (and tp!998020 tp!998018))))

(assert (= (and b!3166513 ((_ is ElementMatch!9743) (regTwo!19998 r!13156))) b!3166627))

(assert (= (and b!3166513 ((_ is Concat!15064) (regTwo!19998 r!13156))) b!3166628))

(assert (= (and b!3166513 ((_ is Star!9743) (regTwo!19998 r!13156))) b!3166629))

(assert (= (and b!3166513 ((_ is Union!9743) (regTwo!19998 r!13156))) b!3166630))

(declare-fun b!3166637 () Bool)

(declare-fun tp!998037 () Bool)

(declare-fun tp!998042 () Bool)

(declare-fun tp!998040 () Bool)

(declare-fun e!1972508 () Bool)

(assert (=> b!3166637 (= e!1972508 (and tp!998040 tp_is_empty!17049 tp!998037 tp!998042))))

(declare-fun tp!998041 () Bool)

(declare-fun b!3166638 () Bool)

(declare-fun tp!998039 () Bool)

(declare-fun tp!998038 () Bool)

(declare-fun e!1972507 () Bool)

(assert (=> b!3166638 (= e!1972507 (and tp!998038 tp_is_empty!17049 tp!998041 tp!998039))))

(declare-fun mapNonEmpty!18887 () Bool)

(declare-fun mapRes!18887 () Bool)

(declare-fun tp!998043 () Bool)

(assert (=> mapNonEmpty!18887 (= mapRes!18887 (and tp!998043 e!1972508))))

(declare-fun mapKey!18887 () (_ BitVec 32))

(declare-fun mapValue!18887 () List!35577)

(declare-fun mapRest!18887 () (Array (_ BitVec 32) List!35577))

(assert (=> mapNonEmpty!18887 (= mapRest!18884 (store mapRest!18887 mapKey!18887 mapValue!18887))))

(declare-fun mapIsEmpty!18887 () Bool)

(assert (=> mapIsEmpty!18887 mapRes!18887))

(declare-fun condMapEmpty!18887 () Bool)

(declare-fun mapDefault!18887 () List!35577)

(assert (=> mapNonEmpty!18884 (= condMapEmpty!18887 (= mapRest!18884 ((as const (Array (_ BitVec 32) List!35577)) mapDefault!18887)))))

(assert (=> mapNonEmpty!18884 (= tp!997966 (and e!1972507 mapRes!18887))))

(assert (= (and mapNonEmpty!18884 condMapEmpty!18887) mapIsEmpty!18887))

(assert (= (and mapNonEmpty!18884 (not condMapEmpty!18887)) mapNonEmpty!18887))

(assert (= (and mapNonEmpty!18887 ((_ is Cons!35453) mapValue!18887)) b!3166637))

(assert (= (and mapNonEmpty!18884 ((_ is Cons!35453) mapDefault!18887)) b!3166638))

(declare-fun m!3428220 () Bool)

(assert (=> mapNonEmpty!18887 m!3428220))

(declare-fun tp!998046 () Bool)

(declare-fun tp!998045 () Bool)

(declare-fun e!1972509 () Bool)

(declare-fun b!3166639 () Bool)

(declare-fun tp!998044 () Bool)

(assert (=> b!3166639 (= e!1972509 (and tp!998044 tp_is_empty!17049 tp!998045 tp!998046))))

(assert (=> mapNonEmpty!18884 (= tp!997968 e!1972509)))

(assert (= (and mapNonEmpty!18884 ((_ is Cons!35453) mapValue!18884)) b!3166639))

(declare-fun tp!998047 () Bool)

(declare-fun b!3166640 () Bool)

(declare-fun tp!998048 () Bool)

(declare-fun tp!998049 () Bool)

(declare-fun e!1972510 () Bool)

(assert (=> b!3166640 (= e!1972510 (and tp!998047 tp_is_empty!17049 tp!998048 tp!998049))))

(assert (=> b!3166509 (= tp!997974 e!1972510)))

(assert (= (and b!3166509 ((_ is Cons!35453) mapDefault!18884)) b!3166640))

(check-sat (not b!3166616) (not b!3166606) tp_is_empty!17049 (not bm!229619) (not b!3166639) (not b!3166630) (not b!3166545) (not bm!229620) b_and!209405 (not bm!229631) (not bm!229630) (not b!3166608) (not b!3166540) (not b!3166621) (not b!3166628) (not d!868899) (not d!868889) (not b!3166625) (not b!3166614) (not mapNonEmpty!18887) (not b!3166617) (not b!3166552) (not b!3166624) (not b_next!83843) (not b!3166640) b_and!209403 (not b!3166629) (not b!3166638) (not b!3166613) (not b!3166554) (not b!3166626) (not bm!229633) (not b!3166620) (not b!3166637) (not b!3166618) (not b_next!83841) (not b!3166607) (not bm!229628) (not b!3166622))
(check-sat b_and!209403 b_and!209405 (not b_next!83843) (not b_next!83841))
