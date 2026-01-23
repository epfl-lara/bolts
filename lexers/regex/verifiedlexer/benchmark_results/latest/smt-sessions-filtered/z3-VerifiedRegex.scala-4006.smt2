; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217390 () Bool)

(assert start!217390)

(declare-fun b!2228492 () Bool)

(declare-fun b_free!64625 () Bool)

(declare-fun b_next!65329 () Bool)

(assert (=> b!2228492 (= b_free!64625 (not b_next!65329))))

(declare-fun tp!697260 () Bool)

(declare-fun b_and!174613 () Bool)

(assert (=> b!2228492 (= tp!697260 b_and!174613)))

(declare-fun b!2228493 () Bool)

(declare-fun b_free!64627 () Bool)

(declare-fun b_next!65331 () Bool)

(assert (=> b!2228493 (= b_free!64627 (not b_next!65331))))

(declare-fun tp!697261 () Bool)

(declare-fun b_and!174615 () Bool)

(assert (=> b!2228493 (= tp!697261 b_and!174615)))

(declare-fun b!2228488 () Bool)

(declare-fun e!1424193 () Bool)

(declare-fun e!1424199 () Bool)

(assert (=> b!2228488 (= e!1424193 e!1424199)))

(declare-fun c!355596 () Bool)

(declare-datatypes ((C!12952 0))(
  ( (C!12953 (val!7524 Int)) )
))
(declare-datatypes ((Regex!6403 0))(
  ( (ElementMatch!6403 (c!355600 C!12952)) (Concat!10741 (regOne!13318 Regex!6403) (regTwo!13318 Regex!6403)) (EmptyExpr!6403) (Star!6403 (reg!6732 Regex!6403)) (EmptyLang!6403) (Union!6403 (regOne!13319 Regex!6403) (regTwo!13319 Regex!6403)) )
))
(declare-datatypes ((List!26278 0))(
  ( (Nil!26184) (Cons!26184 (h!31585 Regex!6403) (t!199692 List!26278)) )
))
(declare-datatypes ((Context!3902 0))(
  ( (Context!3903 (exprs!2451 List!26278)) )
))
(declare-datatypes ((array!10500 0))(
  ( (array!10501 (arr!4669 (Array (_ BitVec 32) (_ BitVec 64))) (size!20450 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3878 0))(
  ( (tuple3!3879 (_1!15170 Regex!6403) (_2!15170 Context!3902) (_3!2409 C!12952)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25522 0))(
  ( (tuple2!25523 (_1!15171 tuple3!3878) (_2!15171 (InoxSet Context!3902))) )
))
(declare-datatypes ((List!26279 0))(
  ( (Nil!26185) (Cons!26185 (h!31586 tuple2!25522) (t!199693 List!26279)) )
))
(declare-datatypes ((array!10502 0))(
  ( (array!10503 (arr!4670 (Array (_ BitVec 32) List!26279)) (size!20451 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6082 0))(
  ( (LongMapFixedSize!6083 (defaultEntry!3406 Int) (mask!7596 (_ BitVec 32)) (extraKeys!3289 (_ BitVec 32)) (zeroValue!3299 List!26279) (minValue!3299 List!26279) (_size!6129 (_ BitVec 32)) (_keys!3338 array!10500) (_values!3321 array!10502) (_vacant!3102 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11981 0))(
  ( (Cell!11982 (v!29763 LongMapFixedSize!6082)) )
))
(declare-datatypes ((MutLongMap!3041 0))(
  ( (LongMap!3041 (underlying!6283 Cell!11981)) (MutLongMapExt!3040 (__x!17349 Int)) )
))
(declare-datatypes ((Cell!11983 0))(
  ( (Cell!11984 (v!29764 MutLongMap!3041)) )
))
(declare-datatypes ((Hashable!2951 0))(
  ( (HashableExt!2950 (__x!17350 Int)) )
))
(declare-datatypes ((MutableMap!2951 0))(
  ( (MutableMapExt!2950 (__x!17351 Int)) (HashMap!2951 (underlying!6284 Cell!11983) (hashF!4874 Hashable!2951) (_size!6130 (_ BitVec 32)) (defaultValue!3113 Int)) )
))
(declare-datatypes ((CacheDown!1948 0))(
  ( (CacheDown!1949 (cache!3332 MutableMap!2951)) )
))
(declare-datatypes ((tuple2!25524 0))(
  ( (tuple2!25525 (_1!15172 (InoxSet Context!3902)) (_2!15172 CacheDown!1948)) )
))
(declare-fun lt!830418 () tuple2!25524)

(declare-fun cacheDown!839 () CacheDown!1948)

(declare-fun call!133653 () List!26278)

(declare-fun bm!133646 () Bool)

(declare-fun lt!830421 () tuple2!25524)

(declare-fun call!133656 () tuple2!25524)

(declare-fun a!1167 () C!12952)

(declare-fun context!86 () Context!3902)

(declare-fun c!355595 () Bool)

(declare-fun c!355598 () Bool)

(declare-fun expr!64 () Regex!6403)

(declare-fun derivationStepZipperDownMem!19 (Regex!6403 Context!3902 C!12952 CacheDown!1948) tuple2!25524)

(assert (=> bm!133646 (= call!133656 (derivationStepZipperDownMem!19 (ite c!355595 (regTwo!13319 expr!64) (ite c!355596 (regTwo!13318 expr!64) (ite c!355598 (regOne!13318 expr!64) (reg!6732 expr!64)))) (ite (or c!355595 c!355596) context!86 (Context!3903 call!133653)) a!1167 (ite c!355595 (_2!15172 lt!830418) (ite c!355596 (_2!15172 lt!830421) cacheDown!839))))))

(declare-fun b!2228489 () Bool)

(declare-fun e!1424186 () Bool)

(declare-fun tp!697270 () Bool)

(assert (=> b!2228489 (= e!1424186 tp!697270)))

(declare-fun b!2228490 () Bool)

(declare-fun e!1424194 () Bool)

(declare-fun e!1424189 () Bool)

(declare-fun lt!830419 () MutLongMap!3041)

(get-info :version)

(assert (=> b!2228490 (= e!1424194 (and e!1424189 ((_ is LongMap!3041) lt!830419)))))

(assert (=> b!2228490 (= lt!830419 (v!29764 (underlying!6284 (cache!3332 cacheDown!839))))))

(declare-fun bm!133647 () Bool)

(declare-fun call!133652 () List!26278)

(assert (=> bm!133647 (= call!133653 call!133652)))

(declare-fun bm!133648 () Bool)

(declare-fun call!133654 () tuple2!25524)

(assert (=> bm!133648 (= call!133654 call!133656)))

(declare-fun b!2228491 () Bool)

(declare-fun e!1424195 () tuple2!25524)

(declare-fun e!1424191 () tuple2!25524)

(assert (=> b!2228491 (= e!1424195 e!1424191)))

(assert (=> b!2228491 (= c!355598 ((_ is Concat!10741) expr!64))))

(assert (=> b!2228492 (= e!1424199 (and e!1424194 tp!697260))))

(declare-fun e!1424200 () Bool)

(declare-fun tp!697265 () Bool)

(declare-fun tp!697264 () Bool)

(declare-fun e!1424201 () Bool)

(declare-fun array_inv!3351 (array!10500) Bool)

(declare-fun array_inv!3352 (array!10502) Bool)

(assert (=> b!2228493 (= e!1424200 (and tp!697261 tp!697265 tp!697264 (array_inv!3351 (_keys!3338 (v!29763 (underlying!6283 (v!29764 (underlying!6284 (cache!3332 cacheDown!839))))))) (array_inv!3352 (_values!3321 (v!29763 (underlying!6283 (v!29764 (underlying!6284 (cache!3332 cacheDown!839))))))) e!1424201))))

(declare-fun b!2228494 () Bool)

(declare-fun e!1424196 () Bool)

(assert (=> b!2228494 (= e!1424189 e!1424196)))

(declare-fun mapIsEmpty!14323 () Bool)

(declare-fun mapRes!14323 () Bool)

(assert (=> mapIsEmpty!14323 mapRes!14323))

(declare-fun b!2228495 () Bool)

(declare-fun c!355599 () Bool)

(assert (=> b!2228495 (= c!355599 ((_ is Star!6403) expr!64))))

(declare-fun e!1424187 () tuple2!25524)

(assert (=> b!2228495 (= e!1424191 e!1424187)))

(declare-fun b!2228496 () Bool)

(declare-fun lt!830416 () tuple2!25524)

(assert (=> b!2228496 (= e!1424195 (tuple2!25525 ((_ map or) (_1!15172 lt!830421) (_1!15172 lt!830416)) (_2!15172 lt!830416)))))

(declare-fun call!133655 () tuple2!25524)

(assert (=> b!2228496 (= lt!830421 call!133655)))

(assert (=> b!2228496 (= lt!830416 call!133654)))

(declare-fun b!2228497 () Bool)

(declare-fun call!133651 () tuple2!25524)

(assert (=> b!2228497 (= e!1424187 call!133651)))

(declare-fun b!2228498 () Bool)

(assert (=> b!2228498 (= e!1424191 call!133651)))

(declare-fun b!2228499 () Bool)

(declare-fun e!1424192 () Bool)

(declare-fun nullable!1755 (Regex!6403) Bool)

(assert (=> b!2228499 (= e!1424192 (nullable!1755 (regOne!13318 expr!64)))))

(declare-fun mapNonEmpty!14323 () Bool)

(declare-fun tp!697268 () Bool)

(declare-fun tp!697269 () Bool)

(assert (=> mapNonEmpty!14323 (= mapRes!14323 (and tp!697268 tp!697269))))

(declare-fun mapKey!14323 () (_ BitVec 32))

(declare-fun mapRest!14323 () (Array (_ BitVec 32) List!26279))

(declare-fun mapValue!14323 () List!26279)

(assert (=> mapNonEmpty!14323 (= (arr!4670 (_values!3321 (v!29763 (underlying!6283 (v!29764 (underlying!6284 (cache!3332 cacheDown!839))))))) (store mapRest!14323 mapKey!14323 mapValue!14323))))

(declare-fun b!2228500 () Bool)

(declare-fun res!955023 () Bool)

(declare-fun e!1424197 () Bool)

(assert (=> b!2228500 (=> (not res!955023) (not e!1424197))))

(declare-datatypes ((Option!5092 0))(
  ( (None!5091) (Some!5091 (v!29765 (InoxSet Context!3902))) )
))
(declare-fun get!7888 (CacheDown!1948 Regex!6403 Context!3902 C!12952) Option!5092)

(assert (=> b!2228500 (= res!955023 (not ((_ is Some!5091) (get!7888 cacheDown!839 expr!64 context!86 a!1167))))))

(declare-fun b!2228501 () Bool)

(declare-fun e!1424190 () Bool)

(declare-fun tp!697266 () Bool)

(declare-fun tp!697267 () Bool)

(assert (=> b!2228501 (= e!1424190 (and tp!697266 tp!697267))))

(declare-fun bm!133650 () Bool)

(assert (=> bm!133650 (= call!133655 (derivationStepZipperDownMem!19 (ite c!355595 (regOne!13319 expr!64) (regOne!13318 expr!64)) (ite c!355595 context!86 (Context!3903 call!133652)) a!1167 cacheDown!839))))

(declare-fun b!2228502 () Bool)

(declare-fun tp_is_empty!10031 () Bool)

(assert (=> b!2228502 (= e!1424190 tp_is_empty!10031)))

(declare-fun b!2228503 () Bool)

(declare-fun tp!697259 () Bool)

(assert (=> b!2228503 (= e!1424201 (and tp!697259 mapRes!14323))))

(declare-fun condMapEmpty!14323 () Bool)

(declare-fun mapDefault!14323 () List!26279)

(assert (=> b!2228503 (= condMapEmpty!14323 (= (arr!4670 (_values!3321 (v!29763 (underlying!6283 (v!29764 (underlying!6284 (cache!3332 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26279)) mapDefault!14323)))))

(declare-fun b!2228504 () Bool)

(assert (=> b!2228504 (= e!1424196 e!1424200)))

(declare-fun b!2228505 () Bool)

(assert (=> b!2228505 (= e!1424197 false)))

(declare-fun lt!830420 () tuple2!25524)

(declare-datatypes ((Unit!39150 0))(
  ( (Unit!39151) )
))
(declare-datatypes ((tuple2!25526 0))(
  ( (tuple2!25527 (_1!15173 Unit!39150) (_2!15173 CacheDown!1948)) )
))
(declare-fun lt!830417 () tuple2!25526)

(declare-fun update!135 (CacheDown!1948 Regex!6403 Context!3902 C!12952 (InoxSet Context!3902)) tuple2!25526)

(assert (=> b!2228505 (= lt!830417 (update!135 (_2!15172 lt!830420) expr!64 context!86 a!1167 (_1!15172 lt!830420)))))

(declare-fun e!1424188 () tuple2!25524)

(assert (=> b!2228505 (= lt!830420 e!1424188)))

(declare-fun c!355597 () Bool)

(assert (=> b!2228505 (= c!355597 (and ((_ is ElementMatch!6403) expr!64) (= (c!355600 expr!64) a!1167)))))

(declare-fun b!2228506 () Bool)

(assert (=> b!2228506 (= c!355596 e!1424192)))

(declare-fun res!955024 () Bool)

(assert (=> b!2228506 (=> (not res!955024) (not e!1424192))))

(assert (=> b!2228506 (= res!955024 ((_ is Concat!10741) expr!64))))

(declare-fun e!1424198 () tuple2!25524)

(assert (=> b!2228506 (= e!1424198 e!1424195)))

(declare-fun b!2228507 () Bool)

(declare-fun lt!830415 () tuple2!25524)

(assert (=> b!2228507 (= lt!830415 call!133656)))

(assert (=> b!2228507 (= lt!830418 call!133655)))

(assert (=> b!2228507 (= e!1424198 (tuple2!25525 ((_ map or) (_1!15172 lt!830418) (_1!15172 lt!830415)) (_2!15172 lt!830415)))))

(declare-fun b!2228508 () Bool)

(assert (=> b!2228508 (= e!1424188 (tuple2!25525 (store ((as const (Array Context!3902 Bool)) false) context!86 true) cacheDown!839))))

(declare-fun b!2228509 () Bool)

(declare-fun tp!697263 () Bool)

(declare-fun tp!697262 () Bool)

(assert (=> b!2228509 (= e!1424190 (and tp!697263 tp!697262))))

(declare-fun b!2228510 () Bool)

(assert (=> b!2228510 (= e!1424188 e!1424198)))

(assert (=> b!2228510 (= c!355595 ((_ is Union!6403) expr!64))))

(declare-fun b!2228511 () Bool)

(assert (=> b!2228511 (= e!1424187 (tuple2!25525 ((as const (Array Context!3902 Bool)) false) cacheDown!839))))

(declare-fun b!2228512 () Bool)

(declare-fun tp!697258 () Bool)

(assert (=> b!2228512 (= e!1424190 tp!697258)))

(declare-fun bm!133651 () Bool)

(assert (=> bm!133651 (= call!133651 call!133654)))

(declare-fun bm!133649 () Bool)

(declare-fun $colon$colon!512 (List!26278 Regex!6403) List!26278)

(assert (=> bm!133649 (= call!133652 ($colon$colon!512 (exprs!2451 context!86) (ite (or c!355596 c!355598) (regTwo!13318 expr!64) expr!64)))))

(declare-fun res!955022 () Bool)

(assert (=> start!217390 (=> (not res!955022) (not e!1424197))))

(declare-fun validRegex!2380 (Regex!6403) Bool)

(assert (=> start!217390 (= res!955022 (validRegex!2380 expr!64))))

(assert (=> start!217390 e!1424197))

(assert (=> start!217390 e!1424190))

(declare-fun inv!35554 (CacheDown!1948) Bool)

(assert (=> start!217390 (and (inv!35554 cacheDown!839) e!1424193)))

(declare-fun inv!35555 (Context!3902) Bool)

(assert (=> start!217390 (and (inv!35555 context!86) e!1424186)))

(assert (=> start!217390 tp_is_empty!10031))

(assert (= (and start!217390 res!955022) b!2228500))

(assert (= (and b!2228500 res!955023) b!2228505))

(assert (= (and b!2228505 c!355597) b!2228508))

(assert (= (and b!2228505 (not c!355597)) b!2228510))

(assert (= (and b!2228510 c!355595) b!2228507))

(assert (= (and b!2228510 (not c!355595)) b!2228506))

(assert (= (and b!2228506 res!955024) b!2228499))

(assert (= (and b!2228506 c!355596) b!2228496))

(assert (= (and b!2228506 (not c!355596)) b!2228491))

(assert (= (and b!2228491 c!355598) b!2228498))

(assert (= (and b!2228491 (not c!355598)) b!2228495))

(assert (= (and b!2228495 c!355599) b!2228497))

(assert (= (and b!2228495 (not c!355599)) b!2228511))

(assert (= (or b!2228498 b!2228497) bm!133647))

(assert (= (or b!2228498 b!2228497) bm!133651))

(assert (= (or b!2228496 bm!133647) bm!133649))

(assert (= (or b!2228496 bm!133651) bm!133648))

(assert (= (or b!2228507 bm!133648) bm!133646))

(assert (= (or b!2228507 b!2228496) bm!133650))

(assert (= (and start!217390 ((_ is ElementMatch!6403) expr!64)) b!2228502))

(assert (= (and start!217390 ((_ is Concat!10741) expr!64)) b!2228501))

(assert (= (and start!217390 ((_ is Star!6403) expr!64)) b!2228512))

(assert (= (and start!217390 ((_ is Union!6403) expr!64)) b!2228509))

(assert (= (and b!2228503 condMapEmpty!14323) mapIsEmpty!14323))

(assert (= (and b!2228503 (not condMapEmpty!14323)) mapNonEmpty!14323))

(assert (= b!2228493 b!2228503))

(assert (= b!2228504 b!2228493))

(assert (= b!2228494 b!2228504))

(assert (= (and b!2228490 ((_ is LongMap!3041) (v!29764 (underlying!6284 (cache!3332 cacheDown!839))))) b!2228494))

(assert (= b!2228492 b!2228490))

(assert (= (and b!2228488 ((_ is HashMap!2951) (cache!3332 cacheDown!839))) b!2228492))

(assert (= start!217390 b!2228488))

(assert (= start!217390 b!2228489))

(declare-fun m!2666562 () Bool)

(assert (=> b!2228500 m!2666562))

(declare-fun m!2666564 () Bool)

(assert (=> b!2228493 m!2666564))

(declare-fun m!2666566 () Bool)

(assert (=> b!2228493 m!2666566))

(declare-fun m!2666568 () Bool)

(assert (=> b!2228505 m!2666568))

(declare-fun m!2666570 () Bool)

(assert (=> start!217390 m!2666570))

(declare-fun m!2666572 () Bool)

(assert (=> start!217390 m!2666572))

(declare-fun m!2666574 () Bool)

(assert (=> start!217390 m!2666574))

(declare-fun m!2666576 () Bool)

(assert (=> mapNonEmpty!14323 m!2666576))

(declare-fun m!2666578 () Bool)

(assert (=> b!2228508 m!2666578))

(declare-fun m!2666580 () Bool)

(assert (=> bm!133646 m!2666580))

(declare-fun m!2666582 () Bool)

(assert (=> bm!133650 m!2666582))

(declare-fun m!2666584 () Bool)

(assert (=> b!2228499 m!2666584))

(declare-fun m!2666586 () Bool)

(assert (=> bm!133649 m!2666586))

(check-sat tp_is_empty!10031 (not b!2228500) (not b!2228505) (not b!2228501) (not b!2228509) (not bm!133649) (not b_next!65329) (not b!2228489) b_and!174615 (not b!2228503) (not b!2228512) (not start!217390) b_and!174613 (not b!2228499) (not b!2228493) (not b_next!65331) (not bm!133646) (not bm!133650) (not mapNonEmpty!14323))
(check-sat b_and!174613 b_and!174615 (not b_next!65331) (not b_next!65329))
