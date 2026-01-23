; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217394 () Bool)

(assert start!217394)

(declare-fun b!2228586 () Bool)

(declare-fun b_free!64633 () Bool)

(declare-fun b_next!65337 () Bool)

(assert (=> b!2228586 (= b_free!64633 (not b_next!65337))))

(declare-fun tp!697341 () Bool)

(declare-fun b_and!174621 () Bool)

(assert (=> b!2228586 (= tp!697341 b_and!174621)))

(declare-fun b!2228585 () Bool)

(declare-fun b_free!64635 () Bool)

(declare-fun b_next!65339 () Bool)

(assert (=> b!2228585 (= b_free!64635 (not b_next!65339))))

(declare-fun tp!697346 () Bool)

(declare-fun b_and!174623 () Bool)

(assert (=> b!2228585 (= tp!697346 b_and!174623)))

(declare-datatypes ((C!12956 0))(
  ( (C!12957 (val!7526 Int)) )
))
(declare-datatypes ((Regex!6405 0))(
  ( (ElementMatch!6405 (c!355602 C!12956)) (Concat!10743 (regOne!13322 Regex!6405) (regTwo!13322 Regex!6405)) (EmptyExpr!6405) (Star!6405 (reg!6734 Regex!6405)) (EmptyLang!6405) (Union!6405 (regOne!13323 Regex!6405) (regTwo!13323 Regex!6405)) )
))
(declare-datatypes ((List!26282 0))(
  ( (Nil!26188) (Cons!26188 (h!31589 Regex!6405) (t!199696 List!26282)) )
))
(declare-datatypes ((Context!3906 0))(
  ( (Context!3907 (exprs!2453 List!26282)) )
))
(declare-fun context!86 () Context!3906)

(declare-fun b!2228583 () Bool)

(declare-fun e!1424271 () Bool)

(declare-fun expr!64 () Regex!6405)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Option!5093 0))(
  ( (None!5092) (Some!5092 (v!29768 (InoxSet Context!3906))) )
))
(declare-fun lt!830432 () Option!5093)

(declare-fun a!1167 () C!12956)

(declare-fun derivationStepZipperDown!39 (Regex!6405 Context!3906 C!12956) (InoxSet Context!3906))

(assert (=> b!2228583 (= e!1424271 (not (= (v!29768 lt!830432) (derivationStepZipperDown!39 expr!64 context!86 a!1167))))))

(declare-fun b!2228584 () Bool)

(declare-fun e!1424265 () Bool)

(assert (=> b!2228584 (= e!1424265 e!1424271)))

(declare-fun res!955036 () Bool)

(assert (=> b!2228584 (=> (not res!955036) (not e!1424271))))

(get-info :version)

(assert (=> b!2228584 (= res!955036 ((_ is Some!5092) lt!830432))))

(declare-datatypes ((array!10508 0))(
  ( (array!10509 (arr!4673 (Array (_ BitVec 32) (_ BitVec 64))) (size!20454 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!3882 0))(
  ( (tuple3!3883 (_1!15176 Regex!6405) (_2!15176 Context!3906) (_3!2411 C!12956)) )
))
(declare-datatypes ((tuple2!25530 0))(
  ( (tuple2!25531 (_1!15177 tuple3!3882) (_2!15177 (InoxSet Context!3906))) )
))
(declare-datatypes ((List!26283 0))(
  ( (Nil!26189) (Cons!26189 (h!31590 tuple2!25530) (t!199697 List!26283)) )
))
(declare-datatypes ((array!10510 0))(
  ( (array!10511 (arr!4674 (Array (_ BitVec 32) List!26283)) (size!20455 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6086 0))(
  ( (LongMapFixedSize!6087 (defaultEntry!3408 Int) (mask!7599 (_ BitVec 32)) (extraKeys!3291 (_ BitVec 32)) (zeroValue!3301 List!26283) (minValue!3301 List!26283) (_size!6133 (_ BitVec 32)) (_keys!3340 array!10508) (_values!3323 array!10510) (_vacant!3104 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11989 0))(
  ( (Cell!11990 (v!29769 LongMapFixedSize!6086)) )
))
(declare-datatypes ((MutLongMap!3043 0))(
  ( (LongMap!3043 (underlying!6287 Cell!11989)) (MutLongMapExt!3042 (__x!17355 Int)) )
))
(declare-datatypes ((Cell!11991 0))(
  ( (Cell!11992 (v!29770 MutLongMap!3043)) )
))
(declare-datatypes ((Hashable!2953 0))(
  ( (HashableExt!2952 (__x!17356 Int)) )
))
(declare-datatypes ((MutableMap!2953 0))(
  ( (MutableMapExt!2952 (__x!17357 Int)) (HashMap!2953 (underlying!6288 Cell!11991) (hashF!4876 Hashable!2953) (_size!6134 (_ BitVec 32)) (defaultValue!3115 Int)) )
))
(declare-datatypes ((CacheDown!1952 0))(
  ( (CacheDown!1953 (cache!3334 MutableMap!2953)) )
))
(declare-fun cacheDown!839 () CacheDown!1952)

(declare-fun get!7890 (CacheDown!1952 Regex!6405 Context!3906 C!12956) Option!5093)

(assert (=> b!2228584 (= lt!830432 (get!7890 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun e!1424266 () Bool)

(declare-fun e!1424262 () Bool)

(assert (=> b!2228585 (= e!1424266 (and e!1424262 tp!697346))))

(declare-fun e!1424269 () Bool)

(declare-fun tp!697340 () Bool)

(declare-fun e!1424263 () Bool)

(declare-fun tp!697336 () Bool)

(declare-fun array_inv!3353 (array!10508) Bool)

(declare-fun array_inv!3354 (array!10510) Bool)

(assert (=> b!2228586 (= e!1424263 (and tp!697341 tp!697340 tp!697336 (array_inv!3353 (_keys!3340 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))) (array_inv!3354 (_values!3323 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))) e!1424269))))

(declare-fun b!2228587 () Bool)

(declare-fun e!1424270 () Bool)

(declare-fun tp!697342 () Bool)

(assert (=> b!2228587 (= e!1424270 tp!697342)))

(declare-fun b!2228588 () Bool)

(declare-fun e!1424272 () Bool)

(declare-fun tp!697348 () Bool)

(assert (=> b!2228588 (= e!1424272 tp!697348)))

(declare-fun b!2228589 () Bool)

(declare-fun e!1424267 () Bool)

(declare-fun e!1424268 () Bool)

(assert (=> b!2228589 (= e!1424267 e!1424268)))

(declare-fun b!2228590 () Bool)

(assert (=> b!2228590 (= e!1424268 e!1424263)))

(declare-fun mapNonEmpty!14329 () Bool)

(declare-fun mapRes!14329 () Bool)

(declare-fun tp!697347 () Bool)

(declare-fun tp!697345 () Bool)

(assert (=> mapNonEmpty!14329 (= mapRes!14329 (and tp!697347 tp!697345))))

(declare-fun mapValue!14329 () List!26283)

(declare-fun mapRest!14329 () (Array (_ BitVec 32) List!26283))

(declare-fun mapKey!14329 () (_ BitVec 32))

(assert (=> mapNonEmpty!14329 (= (arr!4674 (_values!3323 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))) (store mapRest!14329 mapKey!14329 mapValue!14329))))

(declare-fun res!955035 () Bool)

(assert (=> start!217394 (=> (not res!955035) (not e!1424265))))

(declare-fun validRegex!2381 (Regex!6405) Bool)

(assert (=> start!217394 (= res!955035 (validRegex!2381 expr!64))))

(assert (=> start!217394 e!1424265))

(assert (=> start!217394 e!1424270))

(declare-fun inv!35559 (Context!3906) Bool)

(assert (=> start!217394 (and (inv!35559 context!86) e!1424272)))

(declare-fun e!1424264 () Bool)

(declare-fun inv!35560 (CacheDown!1952) Bool)

(assert (=> start!217394 (and (inv!35560 cacheDown!839) e!1424264)))

(declare-fun tp_is_empty!10035 () Bool)

(assert (=> start!217394 tp_is_empty!10035))

(declare-fun b!2228591 () Bool)

(assert (=> b!2228591 (= e!1424264 e!1424266)))

(declare-fun b!2228592 () Bool)

(declare-fun lt!830433 () MutLongMap!3043)

(assert (=> b!2228592 (= e!1424262 (and e!1424267 ((_ is LongMap!3043) lt!830433)))))

(assert (=> b!2228592 (= lt!830433 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))

(declare-fun b!2228593 () Bool)

(declare-fun tp!697339 () Bool)

(declare-fun tp!697338 () Bool)

(assert (=> b!2228593 (= e!1424270 (and tp!697339 tp!697338))))

(declare-fun b!2228594 () Bool)

(assert (=> b!2228594 (= e!1424270 tp_is_empty!10035)))

(declare-fun mapIsEmpty!14329 () Bool)

(assert (=> mapIsEmpty!14329 mapRes!14329))

(declare-fun b!2228595 () Bool)

(declare-fun tp!697344 () Bool)

(declare-fun tp!697343 () Bool)

(assert (=> b!2228595 (= e!1424270 (and tp!697344 tp!697343))))

(declare-fun b!2228596 () Bool)

(declare-fun tp!697337 () Bool)

(assert (=> b!2228596 (= e!1424269 (and tp!697337 mapRes!14329))))

(declare-fun condMapEmpty!14329 () Bool)

(declare-fun mapDefault!14329 () List!26283)

(assert (=> b!2228596 (= condMapEmpty!14329 (= (arr!4674 (_values!3323 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))) ((as const (Array (_ BitVec 32) List!26283)) mapDefault!14329)))))

(assert (= (and start!217394 res!955035) b!2228584))

(assert (= (and b!2228584 res!955036) b!2228583))

(assert (= (and start!217394 ((_ is ElementMatch!6405) expr!64)) b!2228594))

(assert (= (and start!217394 ((_ is Concat!10743) expr!64)) b!2228593))

(assert (= (and start!217394 ((_ is Star!6405) expr!64)) b!2228587))

(assert (= (and start!217394 ((_ is Union!6405) expr!64)) b!2228595))

(assert (= start!217394 b!2228588))

(assert (= (and b!2228596 condMapEmpty!14329) mapIsEmpty!14329))

(assert (= (and b!2228596 (not condMapEmpty!14329)) mapNonEmpty!14329))

(assert (= b!2228586 b!2228596))

(assert (= b!2228590 b!2228586))

(assert (= b!2228589 b!2228590))

(assert (= (and b!2228592 ((_ is LongMap!3043) (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))) b!2228589))

(assert (= b!2228585 b!2228592))

(assert (= (and b!2228591 ((_ is HashMap!2953) (cache!3334 cacheDown!839))) b!2228585))

(assert (= start!217394 b!2228591))

(declare-fun m!2666604 () Bool)

(assert (=> b!2228583 m!2666604))

(declare-fun m!2666606 () Bool)

(assert (=> start!217394 m!2666606))

(declare-fun m!2666608 () Bool)

(assert (=> start!217394 m!2666608))

(declare-fun m!2666610 () Bool)

(assert (=> start!217394 m!2666610))

(declare-fun m!2666612 () Bool)

(assert (=> b!2228586 m!2666612))

(declare-fun m!2666614 () Bool)

(assert (=> b!2228586 m!2666614))

(declare-fun m!2666616 () Bool)

(assert (=> mapNonEmpty!14329 m!2666616))

(declare-fun m!2666618 () Bool)

(assert (=> b!2228584 m!2666618))

(check-sat (not b!2228583) (not b_next!65337) tp_is_empty!10035 (not start!217394) b_and!174623 (not b!2228593) (not b!2228587) (not b_next!65339) (not b!2228586) b_and!174621 (not mapNonEmpty!14329) (not b!2228584) (not b!2228596) (not b!2228588) (not b!2228595))
(check-sat b_and!174623 b_and!174621 (not b_next!65337) (not b_next!65339))
(get-model)

(declare-fun d!664782 () Bool)

(declare-fun e!1424276 () Bool)

(assert (=> d!664782 e!1424276))

(declare-fun res!955039 () Bool)

(assert (=> d!664782 (=> res!955039 e!1424276)))

(declare-fun lt!830436 () Option!5093)

(declare-fun isEmpty!14889 (Option!5093) Bool)

(assert (=> d!664782 (= res!955039 (isEmpty!14889 lt!830436))))

(declare-fun choose!13120 (CacheDown!1952 Regex!6405 Context!3906 C!12956) Option!5093)

(assert (=> d!664782 (= lt!830436 (choose!13120 cacheDown!839 expr!64 context!86 a!1167))))

(declare-fun validCacheMapDown!276 (MutableMap!2953) Bool)

(assert (=> d!664782 (validCacheMapDown!276 (cache!3334 cacheDown!839))))

(assert (=> d!664782 (= (get!7890 cacheDown!839 expr!64 context!86 a!1167) lt!830436)))

(declare-fun b!2228599 () Bool)

(declare-fun get!7891 (Option!5093) (InoxSet Context!3906))

(assert (=> b!2228599 (= e!1424276 (= (get!7891 lt!830436) (derivationStepZipperDown!39 expr!64 context!86 a!1167)))))

(assert (= (and d!664782 (not res!955039)) b!2228599))

(declare-fun m!2666620 () Bool)

(assert (=> d!664782 m!2666620))

(declare-fun m!2666622 () Bool)

(assert (=> d!664782 m!2666622))

(declare-fun m!2666624 () Bool)

(assert (=> d!664782 m!2666624))

(declare-fun m!2666626 () Bool)

(assert (=> b!2228599 m!2666626))

(assert (=> b!2228599 m!2666604))

(assert (=> b!2228584 d!664782))

(declare-fun b!2228622 () Bool)

(declare-fun e!1424294 () (InoxSet Context!3906))

(declare-fun call!133671 () (InoxSet Context!3906))

(assert (=> b!2228622 (= e!1424294 call!133671)))

(declare-fun d!664784 () Bool)

(declare-fun c!355615 () Bool)

(assert (=> d!664784 (= c!355615 (and ((_ is ElementMatch!6405) expr!64) (= (c!355602 expr!64) a!1167)))))

(declare-fun e!1424291 () (InoxSet Context!3906))

(assert (=> d!664784 (= (derivationStepZipperDown!39 expr!64 context!86 a!1167) e!1424291)))

(declare-fun b!2228623 () Bool)

(declare-fun e!1424292 () (InoxSet Context!3906))

(assert (=> b!2228623 (= e!1424292 e!1424294)))

(declare-fun c!355616 () Bool)

(assert (=> b!2228623 (= c!355616 ((_ is Concat!10743) expr!64))))

(declare-fun b!2228624 () Bool)

(declare-fun c!355614 () Bool)

(assert (=> b!2228624 (= c!355614 ((_ is Star!6405) expr!64))))

(declare-fun e!1424290 () (InoxSet Context!3906))

(assert (=> b!2228624 (= e!1424294 e!1424290)))

(declare-fun b!2228625 () Bool)

(declare-fun e!1424289 () (InoxSet Context!3906))

(assert (=> b!2228625 (= e!1424291 e!1424289)))

(declare-fun c!355613 () Bool)

(assert (=> b!2228625 (= c!355613 ((_ is Union!6405) expr!64))))

(declare-fun b!2228626 () Bool)

(declare-fun c!355617 () Bool)

(declare-fun e!1424293 () Bool)

(assert (=> b!2228626 (= c!355617 e!1424293)))

(declare-fun res!955042 () Bool)

(assert (=> b!2228626 (=> (not res!955042) (not e!1424293))))

(assert (=> b!2228626 (= res!955042 ((_ is Concat!10743) expr!64))))

(assert (=> b!2228626 (= e!1424289 e!1424292)))

(declare-fun b!2228627 () Bool)

(assert (=> b!2228627 (= e!1424290 ((as const (Array Context!3906 Bool)) false))))

(declare-fun b!2228628 () Bool)

(declare-fun call!133672 () (InoxSet Context!3906))

(declare-fun call!133673 () (InoxSet Context!3906))

(assert (=> b!2228628 (= e!1424292 ((_ map or) call!133672 call!133673))))

(declare-fun b!2228629 () Bool)

(assert (=> b!2228629 (= e!1424290 call!133671)))

(declare-fun bm!133664 () Bool)

(declare-fun call!133669 () List!26282)

(declare-fun call!133670 () List!26282)

(assert (=> bm!133664 (= call!133669 call!133670)))

(declare-fun bm!133665 () Bool)

(declare-fun $colon$colon!513 (List!26282 Regex!6405) List!26282)

(assert (=> bm!133665 (= call!133670 ($colon$colon!513 (exprs!2453 context!86) (ite (or c!355617 c!355616) (regTwo!13322 expr!64) expr!64)))))

(declare-fun bm!133666 () Bool)

(assert (=> bm!133666 (= call!133671 call!133673)))

(declare-fun b!2228630 () Bool)

(declare-fun nullable!1756 (Regex!6405) Bool)

(assert (=> b!2228630 (= e!1424293 (nullable!1756 (regOne!13322 expr!64)))))

(declare-fun b!2228631 () Bool)

(declare-fun call!133674 () (InoxSet Context!3906))

(assert (=> b!2228631 (= e!1424289 ((_ map or) call!133672 call!133674))))

(declare-fun bm!133667 () Bool)

(assert (=> bm!133667 (= call!133673 call!133674)))

(declare-fun bm!133668 () Bool)

(assert (=> bm!133668 (= call!133672 (derivationStepZipperDown!39 (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64)) (ite c!355613 context!86 (Context!3907 call!133670)) a!1167))))

(declare-fun bm!133669 () Bool)

(assert (=> bm!133669 (= call!133674 (derivationStepZipperDown!39 (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64)))) (ite (or c!355613 c!355617) context!86 (Context!3907 call!133669)) a!1167))))

(declare-fun b!2228632 () Bool)

(assert (=> b!2228632 (= e!1424291 (store ((as const (Array Context!3906 Bool)) false) context!86 true))))

(assert (= (and d!664784 c!355615) b!2228632))

(assert (= (and d!664784 (not c!355615)) b!2228625))

(assert (= (and b!2228625 c!355613) b!2228631))

(assert (= (and b!2228625 (not c!355613)) b!2228626))

(assert (= (and b!2228626 res!955042) b!2228630))

(assert (= (and b!2228626 c!355617) b!2228628))

(assert (= (and b!2228626 (not c!355617)) b!2228623))

(assert (= (and b!2228623 c!355616) b!2228622))

(assert (= (and b!2228623 (not c!355616)) b!2228624))

(assert (= (and b!2228624 c!355614) b!2228629))

(assert (= (and b!2228624 (not c!355614)) b!2228627))

(assert (= (or b!2228622 b!2228629) bm!133664))

(assert (= (or b!2228622 b!2228629) bm!133666))

(assert (= (or b!2228628 bm!133664) bm!133665))

(assert (= (or b!2228628 bm!133666) bm!133667))

(assert (= (or b!2228631 bm!133667) bm!133669))

(assert (= (or b!2228631 b!2228628) bm!133668))

(declare-fun m!2666628 () Bool)

(assert (=> bm!133668 m!2666628))

(declare-fun m!2666630 () Bool)

(assert (=> b!2228632 m!2666630))

(declare-fun m!2666632 () Bool)

(assert (=> bm!133669 m!2666632))

(declare-fun m!2666634 () Bool)

(assert (=> bm!133665 m!2666634))

(declare-fun m!2666636 () Bool)

(assert (=> b!2228630 m!2666636))

(assert (=> b!2228583 d!664784))

(declare-fun d!664786 () Bool)

(assert (=> d!664786 (= (array_inv!3353 (_keys!3340 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))) (bvsge (size!20454 (_keys!3340 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2228586 d!664786))

(declare-fun d!664788 () Bool)

(assert (=> d!664788 (= (array_inv!3354 (_values!3323 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))) (bvsge (size!20455 (_values!3323 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))) #b00000000000000000000000000000000))))

(assert (=> b!2228586 d!664788))

(declare-fun bm!133676 () Bool)

(declare-fun call!133682 () Bool)

(declare-fun c!355622 () Bool)

(assert (=> bm!133676 (= call!133682 (validRegex!2381 (ite c!355622 (regTwo!13323 expr!64) (regTwo!13322 expr!64))))))

(declare-fun b!2228651 () Bool)

(declare-fun e!1424309 () Bool)

(assert (=> b!2228651 (= e!1424309 call!133682)))

(declare-fun b!2228653 () Bool)

(declare-fun e!1424311 () Bool)

(declare-fun e!1424314 () Bool)

(assert (=> b!2228653 (= e!1424311 e!1424314)))

(declare-fun c!355623 () Bool)

(assert (=> b!2228653 (= c!355623 ((_ is Star!6405) expr!64))))

(declare-fun bm!133677 () Bool)

(declare-fun call!133681 () Bool)

(declare-fun call!133683 () Bool)

(assert (=> bm!133677 (= call!133681 call!133683)))

(declare-fun b!2228654 () Bool)

(declare-fun e!1424310 () Bool)

(assert (=> b!2228654 (= e!1424314 e!1424310)))

(declare-fun res!955055 () Bool)

(assert (=> b!2228654 (= res!955055 (not (nullable!1756 (reg!6734 expr!64))))))

(assert (=> b!2228654 (=> (not res!955055) (not e!1424310))))

(declare-fun bm!133678 () Bool)

(assert (=> bm!133678 (= call!133683 (validRegex!2381 (ite c!355623 (reg!6734 expr!64) (ite c!355622 (regOne!13323 expr!64) (regOne!13322 expr!64)))))))

(declare-fun b!2228655 () Bool)

(declare-fun e!1424315 () Bool)

(assert (=> b!2228655 (= e!1424315 call!133682)))

(declare-fun b!2228656 () Bool)

(declare-fun res!955054 () Bool)

(declare-fun e!1424313 () Bool)

(assert (=> b!2228656 (=> res!955054 e!1424313)))

(assert (=> b!2228656 (= res!955054 (not ((_ is Concat!10743) expr!64)))))

(declare-fun e!1424312 () Bool)

(assert (=> b!2228656 (= e!1424312 e!1424313)))

(declare-fun b!2228657 () Bool)

(assert (=> b!2228657 (= e!1424310 call!133683)))

(declare-fun b!2228658 () Bool)

(assert (=> b!2228658 (= e!1424314 e!1424312)))

(assert (=> b!2228658 (= c!355622 ((_ is Union!6405) expr!64))))

(declare-fun b!2228659 () Bool)

(assert (=> b!2228659 (= e!1424313 e!1424315)))

(declare-fun res!955056 () Bool)

(assert (=> b!2228659 (=> (not res!955056) (not e!1424315))))

(assert (=> b!2228659 (= res!955056 call!133681)))

(declare-fun b!2228652 () Bool)

(declare-fun res!955053 () Bool)

(assert (=> b!2228652 (=> (not res!955053) (not e!1424309))))

(assert (=> b!2228652 (= res!955053 call!133681)))

(assert (=> b!2228652 (= e!1424312 e!1424309)))

(declare-fun d!664790 () Bool)

(declare-fun res!955057 () Bool)

(assert (=> d!664790 (=> res!955057 e!1424311)))

(assert (=> d!664790 (= res!955057 ((_ is ElementMatch!6405) expr!64))))

(assert (=> d!664790 (= (validRegex!2381 expr!64) e!1424311)))

(assert (= (and d!664790 (not res!955057)) b!2228653))

(assert (= (and b!2228653 c!355623) b!2228654))

(assert (= (and b!2228653 (not c!355623)) b!2228658))

(assert (= (and b!2228654 res!955055) b!2228657))

(assert (= (and b!2228658 c!355622) b!2228652))

(assert (= (and b!2228658 (not c!355622)) b!2228656))

(assert (= (and b!2228652 res!955053) b!2228651))

(assert (= (and b!2228656 (not res!955054)) b!2228659))

(assert (= (and b!2228659 res!955056) b!2228655))

(assert (= (or b!2228651 b!2228655) bm!133676))

(assert (= (or b!2228652 b!2228659) bm!133677))

(assert (= (or b!2228657 bm!133677) bm!133678))

(declare-fun m!2666638 () Bool)

(assert (=> bm!133676 m!2666638))

(declare-fun m!2666640 () Bool)

(assert (=> b!2228654 m!2666640))

(declare-fun m!2666642 () Bool)

(assert (=> bm!133678 m!2666642))

(assert (=> start!217394 d!664790))

(declare-fun d!664792 () Bool)

(declare-fun lambda!84239 () Int)

(declare-fun forall!5354 (List!26282 Int) Bool)

(assert (=> d!664792 (= (inv!35559 context!86) (forall!5354 (exprs!2453 context!86) lambda!84239))))

(declare-fun bs!453666 () Bool)

(assert (= bs!453666 d!664792))

(declare-fun m!2666644 () Bool)

(assert (=> bs!453666 m!2666644))

(assert (=> start!217394 d!664792))

(declare-fun d!664794 () Bool)

(declare-fun res!955060 () Bool)

(declare-fun e!1424318 () Bool)

(assert (=> d!664794 (=> (not res!955060) (not e!1424318))))

(assert (=> d!664794 (= res!955060 ((_ is HashMap!2953) (cache!3334 cacheDown!839)))))

(assert (=> d!664794 (= (inv!35560 cacheDown!839) e!1424318)))

(declare-fun b!2228662 () Bool)

(assert (=> b!2228662 (= e!1424318 (validCacheMapDown!276 (cache!3334 cacheDown!839)))))

(assert (= (and d!664794 res!955060) b!2228662))

(assert (=> b!2228662 m!2666624))

(assert (=> start!217394 d!664794))

(declare-fun b!2228674 () Bool)

(declare-fun e!1424321 () Bool)

(declare-fun tp!697363 () Bool)

(declare-fun tp!697361 () Bool)

(assert (=> b!2228674 (= e!1424321 (and tp!697363 tp!697361))))

(declare-fun b!2228675 () Bool)

(declare-fun tp!697362 () Bool)

(assert (=> b!2228675 (= e!1424321 tp!697362)))

(assert (=> b!2228595 (= tp!697344 e!1424321)))

(declare-fun b!2228673 () Bool)

(assert (=> b!2228673 (= e!1424321 tp_is_empty!10035)))

(declare-fun b!2228676 () Bool)

(declare-fun tp!697359 () Bool)

(declare-fun tp!697360 () Bool)

(assert (=> b!2228676 (= e!1424321 (and tp!697359 tp!697360))))

(assert (= (and b!2228595 ((_ is ElementMatch!6405) (regOne!13323 expr!64))) b!2228673))

(assert (= (and b!2228595 ((_ is Concat!10743) (regOne!13323 expr!64))) b!2228674))

(assert (= (and b!2228595 ((_ is Star!6405) (regOne!13323 expr!64))) b!2228675))

(assert (= (and b!2228595 ((_ is Union!6405) (regOne!13323 expr!64))) b!2228676))

(declare-fun b!2228678 () Bool)

(declare-fun e!1424322 () Bool)

(declare-fun tp!697368 () Bool)

(declare-fun tp!697366 () Bool)

(assert (=> b!2228678 (= e!1424322 (and tp!697368 tp!697366))))

(declare-fun b!2228679 () Bool)

(declare-fun tp!697367 () Bool)

(assert (=> b!2228679 (= e!1424322 tp!697367)))

(assert (=> b!2228595 (= tp!697343 e!1424322)))

(declare-fun b!2228677 () Bool)

(assert (=> b!2228677 (= e!1424322 tp_is_empty!10035)))

(declare-fun b!2228680 () Bool)

(declare-fun tp!697364 () Bool)

(declare-fun tp!697365 () Bool)

(assert (=> b!2228680 (= e!1424322 (and tp!697364 tp!697365))))

(assert (= (and b!2228595 ((_ is ElementMatch!6405) (regTwo!13323 expr!64))) b!2228677))

(assert (= (and b!2228595 ((_ is Concat!10743) (regTwo!13323 expr!64))) b!2228678))

(assert (= (and b!2228595 ((_ is Star!6405) (regTwo!13323 expr!64))) b!2228679))

(assert (= (and b!2228595 ((_ is Union!6405) (regTwo!13323 expr!64))) b!2228680))

(declare-fun b!2228685 () Bool)

(declare-fun e!1424325 () Bool)

(declare-fun tp!697373 () Bool)

(declare-fun tp!697374 () Bool)

(assert (=> b!2228685 (= e!1424325 (and tp!697373 tp!697374))))

(assert (=> b!2228588 (= tp!697348 e!1424325)))

(assert (= (and b!2228588 ((_ is Cons!26188) (exprs!2453 context!86))) b!2228685))

(declare-fun setRes!19968 () Bool)

(declare-fun mapDefault!14332 () List!26283)

(declare-fun tp!697401 () Bool)

(declare-fun e!1424339 () Bool)

(declare-fun b!2228700 () Bool)

(declare-fun e!1424340 () Bool)

(declare-fun tp!697406 () Bool)

(assert (=> b!2228700 (= e!1424339 (and tp!697406 (inv!35559 (_2!15176 (_1!15177 (h!31590 mapDefault!14332)))) e!1424340 tp_is_empty!10035 setRes!19968 tp!697401))))

(declare-fun condSetEmpty!19967 () Bool)

(assert (=> b!2228700 (= condSetEmpty!19967 (= (_2!15177 (h!31590 mapDefault!14332)) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun b!2228701 () Bool)

(declare-fun e!1424341 () Bool)

(declare-fun tp!697403 () Bool)

(assert (=> b!2228701 (= e!1424341 tp!697403)))

(declare-fun tp!697397 () Bool)

(declare-fun setElem!19968 () Context!3906)

(declare-fun setRes!19967 () Bool)

(declare-fun e!1424338 () Bool)

(declare-fun setNonEmpty!19967 () Bool)

(assert (=> setNonEmpty!19967 (= setRes!19967 (and tp!697397 (inv!35559 setElem!19968) e!1424338))))

(declare-fun mapValue!14332 () List!26283)

(declare-fun setRest!19968 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19967 (= (_2!15177 (h!31590 mapValue!14332)) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19968 true) setRest!19968))))

(declare-fun b!2228702 () Bool)

(declare-fun tp!697405 () Bool)

(assert (=> b!2228702 (= e!1424340 tp!697405)))

(declare-fun tp!697398 () Bool)

(declare-fun tp!697407 () Bool)

(declare-fun e!1424342 () Bool)

(declare-fun b!2228703 () Bool)

(assert (=> b!2228703 (= e!1424342 (and tp!697398 (inv!35559 (_2!15176 (_1!15177 (h!31590 mapValue!14332)))) e!1424341 tp_is_empty!10035 setRes!19967 tp!697407))))

(declare-fun condSetEmpty!19968 () Bool)

(assert (=> b!2228703 (= condSetEmpty!19968 (= (_2!15177 (h!31590 mapValue!14332)) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun setIsEmpty!19967 () Bool)

(assert (=> setIsEmpty!19967 setRes!19968))

(declare-fun b!2228704 () Bool)

(declare-fun tp!697400 () Bool)

(assert (=> b!2228704 (= e!1424338 tp!697400)))

(declare-fun setIsEmpty!19968 () Bool)

(assert (=> setIsEmpty!19968 setRes!19967))

(declare-fun setElem!19967 () Context!3906)

(declare-fun tp!697402 () Bool)

(declare-fun setNonEmpty!19968 () Bool)

(declare-fun e!1424343 () Bool)

(assert (=> setNonEmpty!19968 (= setRes!19968 (and tp!697402 (inv!35559 setElem!19967) e!1424343))))

(declare-fun setRest!19967 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19968 (= (_2!15177 (h!31590 mapDefault!14332)) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19967 true) setRest!19967))))

(declare-fun condMapEmpty!14332 () Bool)

(assert (=> mapNonEmpty!14329 (= condMapEmpty!14332 (= mapRest!14329 ((as const (Array (_ BitVec 32) List!26283)) mapDefault!14332)))))

(declare-fun mapRes!14332 () Bool)

(assert (=> mapNonEmpty!14329 (= tp!697347 (and e!1424339 mapRes!14332))))

(declare-fun b!2228705 () Bool)

(declare-fun tp!697399 () Bool)

(assert (=> b!2228705 (= e!1424343 tp!697399)))

(declare-fun mapNonEmpty!14332 () Bool)

(declare-fun tp!697404 () Bool)

(assert (=> mapNonEmpty!14332 (= mapRes!14332 (and tp!697404 e!1424342))))

(declare-fun mapRest!14332 () (Array (_ BitVec 32) List!26283))

(declare-fun mapKey!14332 () (_ BitVec 32))

(assert (=> mapNonEmpty!14332 (= mapRest!14329 (store mapRest!14332 mapKey!14332 mapValue!14332))))

(declare-fun mapIsEmpty!14332 () Bool)

(assert (=> mapIsEmpty!14332 mapRes!14332))

(assert (= (and mapNonEmpty!14329 condMapEmpty!14332) mapIsEmpty!14332))

(assert (= (and mapNonEmpty!14329 (not condMapEmpty!14332)) mapNonEmpty!14332))

(assert (= b!2228703 b!2228701))

(assert (= (and b!2228703 condSetEmpty!19968) setIsEmpty!19968))

(assert (= (and b!2228703 (not condSetEmpty!19968)) setNonEmpty!19967))

(assert (= setNonEmpty!19967 b!2228704))

(assert (= (and mapNonEmpty!14332 ((_ is Cons!26189) mapValue!14332)) b!2228703))

(assert (= b!2228700 b!2228702))

(assert (= (and b!2228700 condSetEmpty!19967) setIsEmpty!19967))

(assert (= (and b!2228700 (not condSetEmpty!19967)) setNonEmpty!19968))

(assert (= setNonEmpty!19968 b!2228705))

(assert (= (and mapNonEmpty!14329 ((_ is Cons!26189) mapDefault!14332)) b!2228700))

(declare-fun m!2666646 () Bool)

(assert (=> mapNonEmpty!14332 m!2666646))

(declare-fun m!2666648 () Bool)

(assert (=> setNonEmpty!19967 m!2666648))

(declare-fun m!2666650 () Bool)

(assert (=> setNonEmpty!19968 m!2666650))

(declare-fun m!2666652 () Bool)

(assert (=> b!2228700 m!2666652))

(declare-fun m!2666654 () Bool)

(assert (=> b!2228703 m!2666654))

(declare-fun b!2228714 () Bool)

(declare-fun e!1424352 () Bool)

(declare-fun tp!697421 () Bool)

(assert (=> b!2228714 (= e!1424352 tp!697421)))

(declare-fun setIsEmpty!19971 () Bool)

(declare-fun setRes!19971 () Bool)

(assert (=> setIsEmpty!19971 setRes!19971))

(declare-fun e!1424351 () Bool)

(assert (=> mapNonEmpty!14329 (= tp!697345 e!1424351)))

(declare-fun b!2228715 () Bool)

(declare-fun tp!697422 () Bool)

(declare-fun tp!697419 () Bool)

(assert (=> b!2228715 (= e!1424351 (and tp!697419 (inv!35559 (_2!15176 (_1!15177 (h!31590 mapValue!14329)))) e!1424352 tp_is_empty!10035 setRes!19971 tp!697422))))

(declare-fun condSetEmpty!19971 () Bool)

(assert (=> b!2228715 (= condSetEmpty!19971 (= (_2!15177 (h!31590 mapValue!14329)) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun b!2228716 () Bool)

(declare-fun e!1424350 () Bool)

(declare-fun tp!697420 () Bool)

(assert (=> b!2228716 (= e!1424350 tp!697420)))

(declare-fun tp!697418 () Bool)

(declare-fun setElem!19971 () Context!3906)

(declare-fun setNonEmpty!19971 () Bool)

(assert (=> setNonEmpty!19971 (= setRes!19971 (and tp!697418 (inv!35559 setElem!19971) e!1424350))))

(declare-fun setRest!19971 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19971 (= (_2!15177 (h!31590 mapValue!14329)) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19971 true) setRest!19971))))

(assert (= b!2228715 b!2228714))

(assert (= (and b!2228715 condSetEmpty!19971) setIsEmpty!19971))

(assert (= (and b!2228715 (not condSetEmpty!19971)) setNonEmpty!19971))

(assert (= setNonEmpty!19971 b!2228716))

(assert (= (and mapNonEmpty!14329 ((_ is Cons!26189) mapValue!14329)) b!2228715))

(declare-fun m!2666656 () Bool)

(assert (=> b!2228715 m!2666656))

(declare-fun m!2666658 () Bool)

(assert (=> setNonEmpty!19971 m!2666658))

(declare-fun b!2228718 () Bool)

(declare-fun e!1424353 () Bool)

(declare-fun tp!697427 () Bool)

(declare-fun tp!697425 () Bool)

(assert (=> b!2228718 (= e!1424353 (and tp!697427 tp!697425))))

(declare-fun b!2228719 () Bool)

(declare-fun tp!697426 () Bool)

(assert (=> b!2228719 (= e!1424353 tp!697426)))

(assert (=> b!2228593 (= tp!697339 e!1424353)))

(declare-fun b!2228717 () Bool)

(assert (=> b!2228717 (= e!1424353 tp_is_empty!10035)))

(declare-fun b!2228720 () Bool)

(declare-fun tp!697423 () Bool)

(declare-fun tp!697424 () Bool)

(assert (=> b!2228720 (= e!1424353 (and tp!697423 tp!697424))))

(assert (= (and b!2228593 ((_ is ElementMatch!6405) (regOne!13322 expr!64))) b!2228717))

(assert (= (and b!2228593 ((_ is Concat!10743) (regOne!13322 expr!64))) b!2228718))

(assert (= (and b!2228593 ((_ is Star!6405) (regOne!13322 expr!64))) b!2228719))

(assert (= (and b!2228593 ((_ is Union!6405) (regOne!13322 expr!64))) b!2228720))

(declare-fun b!2228722 () Bool)

(declare-fun e!1424354 () Bool)

(declare-fun tp!697432 () Bool)

(declare-fun tp!697430 () Bool)

(assert (=> b!2228722 (= e!1424354 (and tp!697432 tp!697430))))

(declare-fun b!2228723 () Bool)

(declare-fun tp!697431 () Bool)

(assert (=> b!2228723 (= e!1424354 tp!697431)))

(assert (=> b!2228593 (= tp!697338 e!1424354)))

(declare-fun b!2228721 () Bool)

(assert (=> b!2228721 (= e!1424354 tp_is_empty!10035)))

(declare-fun b!2228724 () Bool)

(declare-fun tp!697428 () Bool)

(declare-fun tp!697429 () Bool)

(assert (=> b!2228724 (= e!1424354 (and tp!697428 tp!697429))))

(assert (= (and b!2228593 ((_ is ElementMatch!6405) (regTwo!13322 expr!64))) b!2228721))

(assert (= (and b!2228593 ((_ is Concat!10743) (regTwo!13322 expr!64))) b!2228722))

(assert (= (and b!2228593 ((_ is Star!6405) (regTwo!13322 expr!64))) b!2228723))

(assert (= (and b!2228593 ((_ is Union!6405) (regTwo!13322 expr!64))) b!2228724))

(declare-fun b!2228726 () Bool)

(declare-fun e!1424355 () Bool)

(declare-fun tp!697437 () Bool)

(declare-fun tp!697435 () Bool)

(assert (=> b!2228726 (= e!1424355 (and tp!697437 tp!697435))))

(declare-fun b!2228727 () Bool)

(declare-fun tp!697436 () Bool)

(assert (=> b!2228727 (= e!1424355 tp!697436)))

(assert (=> b!2228587 (= tp!697342 e!1424355)))

(declare-fun b!2228725 () Bool)

(assert (=> b!2228725 (= e!1424355 tp_is_empty!10035)))

(declare-fun b!2228728 () Bool)

(declare-fun tp!697433 () Bool)

(declare-fun tp!697434 () Bool)

(assert (=> b!2228728 (= e!1424355 (and tp!697433 tp!697434))))

(assert (= (and b!2228587 ((_ is ElementMatch!6405) (reg!6734 expr!64))) b!2228725))

(assert (= (and b!2228587 ((_ is Concat!10743) (reg!6734 expr!64))) b!2228726))

(assert (= (and b!2228587 ((_ is Star!6405) (reg!6734 expr!64))) b!2228727))

(assert (= (and b!2228587 ((_ is Union!6405) (reg!6734 expr!64))) b!2228728))

(declare-fun b!2228729 () Bool)

(declare-fun e!1424358 () Bool)

(declare-fun tp!697441 () Bool)

(assert (=> b!2228729 (= e!1424358 tp!697441)))

(declare-fun setIsEmpty!19972 () Bool)

(declare-fun setRes!19972 () Bool)

(assert (=> setIsEmpty!19972 setRes!19972))

(declare-fun e!1424357 () Bool)

(assert (=> b!2228586 (= tp!697340 e!1424357)))

(declare-fun tp!697439 () Bool)

(declare-fun b!2228730 () Bool)

(declare-fun tp!697442 () Bool)

(assert (=> b!2228730 (= e!1424357 (and tp!697439 (inv!35559 (_2!15176 (_1!15177 (h!31590 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))))) e!1424358 tp_is_empty!10035 setRes!19972 tp!697442))))

(declare-fun condSetEmpty!19972 () Bool)

(assert (=> b!2228730 (= condSetEmpty!19972 (= (_2!15177 (h!31590 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun b!2228731 () Bool)

(declare-fun e!1424356 () Bool)

(declare-fun tp!697440 () Bool)

(assert (=> b!2228731 (= e!1424356 tp!697440)))

(declare-fun tp!697438 () Bool)

(declare-fun setNonEmpty!19972 () Bool)

(declare-fun setElem!19972 () Context!3906)

(assert (=> setNonEmpty!19972 (= setRes!19972 (and tp!697438 (inv!35559 setElem!19972) e!1424356))))

(declare-fun setRest!19972 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19972 (= (_2!15177 (h!31590 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19972 true) setRest!19972))))

(assert (= b!2228730 b!2228729))

(assert (= (and b!2228730 condSetEmpty!19972) setIsEmpty!19972))

(assert (= (and b!2228730 (not condSetEmpty!19972)) setNonEmpty!19972))

(assert (= setNonEmpty!19972 b!2228731))

(assert (= (and b!2228586 ((_ is Cons!26189) (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))) b!2228730))

(declare-fun m!2666660 () Bool)

(assert (=> b!2228730 m!2666660))

(declare-fun m!2666662 () Bool)

(assert (=> setNonEmpty!19972 m!2666662))

(declare-fun b!2228732 () Bool)

(declare-fun e!1424361 () Bool)

(declare-fun tp!697446 () Bool)

(assert (=> b!2228732 (= e!1424361 tp!697446)))

(declare-fun setIsEmpty!19973 () Bool)

(declare-fun setRes!19973 () Bool)

(assert (=> setIsEmpty!19973 setRes!19973))

(declare-fun e!1424360 () Bool)

(assert (=> b!2228586 (= tp!697336 e!1424360)))

(declare-fun tp!697444 () Bool)

(declare-fun b!2228733 () Bool)

(declare-fun tp!697447 () Bool)

(assert (=> b!2228733 (= e!1424360 (and tp!697444 (inv!35559 (_2!15176 (_1!15177 (h!31590 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))))) e!1424361 tp_is_empty!10035 setRes!19973 tp!697447))))

(declare-fun condSetEmpty!19973 () Bool)

(assert (=> b!2228733 (= condSetEmpty!19973 (= (_2!15177 (h!31590 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun b!2228734 () Bool)

(declare-fun e!1424359 () Bool)

(declare-fun tp!697445 () Bool)

(assert (=> b!2228734 (= e!1424359 tp!697445)))

(declare-fun tp!697443 () Bool)

(declare-fun setElem!19973 () Context!3906)

(declare-fun setNonEmpty!19973 () Bool)

(assert (=> setNonEmpty!19973 (= setRes!19973 (and tp!697443 (inv!35559 setElem!19973) e!1424359))))

(declare-fun setRest!19973 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19973 (= (_2!15177 (h!31590 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19973 true) setRest!19973))))

(assert (= b!2228733 b!2228732))

(assert (= (and b!2228733 condSetEmpty!19973) setIsEmpty!19973))

(assert (= (and b!2228733 (not condSetEmpty!19973)) setNonEmpty!19973))

(assert (= setNonEmpty!19973 b!2228734))

(assert (= (and b!2228586 ((_ is Cons!26189) (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))) b!2228733))

(declare-fun m!2666664 () Bool)

(assert (=> b!2228733 m!2666664))

(declare-fun m!2666666 () Bool)

(assert (=> setNonEmpty!19973 m!2666666))

(declare-fun b!2228735 () Bool)

(declare-fun e!1424364 () Bool)

(declare-fun tp!697451 () Bool)

(assert (=> b!2228735 (= e!1424364 tp!697451)))

(declare-fun setIsEmpty!19974 () Bool)

(declare-fun setRes!19974 () Bool)

(assert (=> setIsEmpty!19974 setRes!19974))

(declare-fun e!1424363 () Bool)

(assert (=> b!2228596 (= tp!697337 e!1424363)))

(declare-fun tp!697452 () Bool)

(declare-fun tp!697449 () Bool)

(declare-fun b!2228736 () Bool)

(assert (=> b!2228736 (= e!1424363 (and tp!697449 (inv!35559 (_2!15176 (_1!15177 (h!31590 mapDefault!14329)))) e!1424364 tp_is_empty!10035 setRes!19974 tp!697452))))

(declare-fun condSetEmpty!19974 () Bool)

(assert (=> b!2228736 (= condSetEmpty!19974 (= (_2!15177 (h!31590 mapDefault!14329)) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun b!2228737 () Bool)

(declare-fun e!1424362 () Bool)

(declare-fun tp!697450 () Bool)

(assert (=> b!2228737 (= e!1424362 tp!697450)))

(declare-fun setElem!19974 () Context!3906)

(declare-fun tp!697448 () Bool)

(declare-fun setNonEmpty!19974 () Bool)

(assert (=> setNonEmpty!19974 (= setRes!19974 (and tp!697448 (inv!35559 setElem!19974) e!1424362))))

(declare-fun setRest!19974 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19974 (= (_2!15177 (h!31590 mapDefault!14329)) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19974 true) setRest!19974))))

(assert (= b!2228736 b!2228735))

(assert (= (and b!2228736 condSetEmpty!19974) setIsEmpty!19974))

(assert (= (and b!2228736 (not condSetEmpty!19974)) setNonEmpty!19974))

(assert (= setNonEmpty!19974 b!2228737))

(assert (= (and b!2228596 ((_ is Cons!26189) mapDefault!14329)) b!2228736))

(declare-fun m!2666668 () Bool)

(assert (=> b!2228736 m!2666668))

(declare-fun m!2666670 () Bool)

(assert (=> setNonEmpty!19974 m!2666670))

(check-sat (not b!2228732) (not b!2228680) (not setNonEmpty!19971) (not b!2228736) (not b!2228729) (not b!2228724) (not b!2228723) (not setNonEmpty!19968) (not b!2228599) (not b!2228735) (not b!2228678) (not d!664782) (not b!2228737) (not b!2228705) (not b!2228674) (not b!2228701) (not b_next!65337) (not b!2228733) (not bm!133665) (not b!2228654) (not b!2228720) (not b!2228719) tp_is_empty!10035 (not b!2228702) b_and!174623 (not b!2228704) (not mapNonEmpty!14332) (not b!2228675) (not setNonEmpty!19972) b_and!174621 (not b!2228630) (not b!2228716) (not b!2228662) (not b!2228714) (not b!2228676) (not setNonEmpty!19973) (not bm!133668) (not b!2228700) (not b!2228728) (not setNonEmpty!19967) (not b!2228679) (not bm!133676) (not b!2228722) (not b_next!65339) (not d!664792) (not bm!133678) (not b!2228726) (not setNonEmpty!19974) (not b!2228731) (not b!2228685) (not b!2228730) (not bm!133669) (not b!2228718) (not b!2228727) (not b!2228715) (not b!2228734) (not b!2228703))
(check-sat b_and!174623 b_and!174621 (not b_next!65337) (not b_next!65339))
(get-model)

(declare-fun d!664796 () Bool)

(declare-fun nullableFct!411 (Regex!6405) Bool)

(assert (=> d!664796 (= (nullable!1756 (reg!6734 expr!64)) (nullableFct!411 (reg!6734 expr!64)))))

(declare-fun bs!453667 () Bool)

(assert (= bs!453667 d!664796))

(declare-fun m!2666672 () Bool)

(assert (=> bs!453667 m!2666672))

(assert (=> b!2228654 d!664796))

(declare-fun d!664798 () Bool)

(declare-fun res!955067 () Bool)

(declare-fun e!1424369 () Bool)

(assert (=> d!664798 (=> (not res!955067) (not e!1424369))))

(declare-fun valid!2321 (MutableMap!2953) Bool)

(assert (=> d!664798 (= res!955067 (valid!2321 (cache!3334 cacheDown!839)))))

(assert (=> d!664798 (= (validCacheMapDown!276 (cache!3334 cacheDown!839)) e!1424369)))

(declare-fun b!2228744 () Bool)

(declare-fun res!955068 () Bool)

(assert (=> b!2228744 (=> (not res!955068) (not e!1424369))))

(declare-fun invariantList!360 (List!26283) Bool)

(declare-datatypes ((ListMap!797 0))(
  ( (ListMap!798 (toList!1327 List!26283)) )
))
(declare-fun map!5351 (MutableMap!2953) ListMap!797)

(assert (=> b!2228744 (= res!955068 (invariantList!360 (toList!1327 (map!5351 (cache!3334 cacheDown!839)))))))

(declare-fun b!2228745 () Bool)

(declare-fun lambda!84242 () Int)

(declare-fun forall!5355 (List!26283 Int) Bool)

(assert (=> b!2228745 (= e!1424369 (forall!5355 (toList!1327 (map!5351 (cache!3334 cacheDown!839))) lambda!84242))))

(assert (= (and d!664798 res!955067) b!2228744))

(assert (= (and b!2228744 res!955068) b!2228745))

(declare-fun m!2666675 () Bool)

(assert (=> d!664798 m!2666675))

(declare-fun m!2666677 () Bool)

(assert (=> b!2228744 m!2666677))

(declare-fun m!2666679 () Bool)

(assert (=> b!2228744 m!2666679))

(assert (=> b!2228745 m!2666677))

(declare-fun m!2666681 () Bool)

(assert (=> b!2228745 m!2666681))

(assert (=> b!2228662 d!664798))

(declare-fun bs!453668 () Bool)

(declare-fun d!664800 () Bool)

(assert (= bs!453668 (and d!664800 d!664792)))

(declare-fun lambda!84243 () Int)

(assert (=> bs!453668 (= lambda!84243 lambda!84239)))

(assert (=> d!664800 (= (inv!35559 (_2!15176 (_1!15177 (h!31590 mapValue!14332)))) (forall!5354 (exprs!2453 (_2!15176 (_1!15177 (h!31590 mapValue!14332)))) lambda!84243))))

(declare-fun bs!453669 () Bool)

(assert (= bs!453669 d!664800))

(declare-fun m!2666683 () Bool)

(assert (=> bs!453669 m!2666683))

(assert (=> b!2228703 d!664800))

(declare-fun b!2228746 () Bool)

(declare-fun e!1424375 () (InoxSet Context!3906))

(declare-fun call!133686 () (InoxSet Context!3906))

(assert (=> b!2228746 (= e!1424375 call!133686)))

(declare-fun d!664802 () Bool)

(declare-fun c!355626 () Bool)

(assert (=> d!664802 (= c!355626 (and ((_ is ElementMatch!6405) (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64))))) (= (c!355602 (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64))))) a!1167)))))

(declare-fun e!1424372 () (InoxSet Context!3906))

(assert (=> d!664802 (= (derivationStepZipperDown!39 (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64)))) (ite (or c!355613 c!355617) context!86 (Context!3907 call!133669)) a!1167) e!1424372)))

(declare-fun b!2228747 () Bool)

(declare-fun e!1424373 () (InoxSet Context!3906))

(assert (=> b!2228747 (= e!1424373 e!1424375)))

(declare-fun c!355627 () Bool)

(assert (=> b!2228747 (= c!355627 ((_ is Concat!10743) (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64))))))))

(declare-fun b!2228748 () Bool)

(declare-fun c!355625 () Bool)

(assert (=> b!2228748 (= c!355625 ((_ is Star!6405) (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64))))))))

(declare-fun e!1424371 () (InoxSet Context!3906))

(assert (=> b!2228748 (= e!1424375 e!1424371)))

(declare-fun b!2228749 () Bool)

(declare-fun e!1424370 () (InoxSet Context!3906))

(assert (=> b!2228749 (= e!1424372 e!1424370)))

(declare-fun c!355624 () Bool)

(assert (=> b!2228749 (= c!355624 ((_ is Union!6405) (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64))))))))

(declare-fun b!2228750 () Bool)

(declare-fun c!355628 () Bool)

(declare-fun e!1424374 () Bool)

(assert (=> b!2228750 (= c!355628 e!1424374)))

(declare-fun res!955069 () Bool)

(assert (=> b!2228750 (=> (not res!955069) (not e!1424374))))

(assert (=> b!2228750 (= res!955069 ((_ is Concat!10743) (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64))))))))

(assert (=> b!2228750 (= e!1424370 e!1424373)))

(declare-fun b!2228751 () Bool)

(assert (=> b!2228751 (= e!1424371 ((as const (Array Context!3906 Bool)) false))))

(declare-fun b!2228752 () Bool)

(declare-fun call!133687 () (InoxSet Context!3906))

(declare-fun call!133688 () (InoxSet Context!3906))

(assert (=> b!2228752 (= e!1424373 ((_ map or) call!133687 call!133688))))

(declare-fun b!2228753 () Bool)

(assert (=> b!2228753 (= e!1424371 call!133686)))

(declare-fun bm!133679 () Bool)

(declare-fun call!133684 () List!26282)

(declare-fun call!133685 () List!26282)

(assert (=> bm!133679 (= call!133684 call!133685)))

(declare-fun bm!133680 () Bool)

(assert (=> bm!133680 (= call!133685 ($colon$colon!513 (exprs!2453 (ite (or c!355613 c!355617) context!86 (Context!3907 call!133669))) (ite (or c!355628 c!355627) (regTwo!13322 (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64))))) (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64)))))))))

(declare-fun bm!133681 () Bool)

(assert (=> bm!133681 (= call!133686 call!133688)))

(declare-fun b!2228754 () Bool)

(assert (=> b!2228754 (= e!1424374 (nullable!1756 (regOne!13322 (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64)))))))))

(declare-fun b!2228755 () Bool)

(declare-fun call!133689 () (InoxSet Context!3906))

(assert (=> b!2228755 (= e!1424370 ((_ map or) call!133687 call!133689))))

(declare-fun bm!133682 () Bool)

(assert (=> bm!133682 (= call!133688 call!133689)))

(declare-fun bm!133683 () Bool)

(assert (=> bm!133683 (= call!133687 (derivationStepZipperDown!39 (ite c!355624 (regOne!13323 (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64))))) (regOne!13322 (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64)))))) (ite c!355624 (ite (or c!355613 c!355617) context!86 (Context!3907 call!133669)) (Context!3907 call!133685)) a!1167))))

(declare-fun bm!133684 () Bool)

(assert (=> bm!133684 (= call!133689 (derivationStepZipperDown!39 (ite c!355624 (regTwo!13323 (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64))))) (ite c!355628 (regTwo!13322 (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64))))) (ite c!355627 (regOne!13322 (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64))))) (reg!6734 (ite c!355613 (regTwo!13323 expr!64) (ite c!355617 (regTwo!13322 expr!64) (ite c!355616 (regOne!13322 expr!64) (reg!6734 expr!64)))))))) (ite (or c!355624 c!355628) (ite (or c!355613 c!355617) context!86 (Context!3907 call!133669)) (Context!3907 call!133684)) a!1167))))

(declare-fun b!2228756 () Bool)

(assert (=> b!2228756 (= e!1424372 (store ((as const (Array Context!3906 Bool)) false) (ite (or c!355613 c!355617) context!86 (Context!3907 call!133669)) true))))

(assert (= (and d!664802 c!355626) b!2228756))

(assert (= (and d!664802 (not c!355626)) b!2228749))

(assert (= (and b!2228749 c!355624) b!2228755))

(assert (= (and b!2228749 (not c!355624)) b!2228750))

(assert (= (and b!2228750 res!955069) b!2228754))

(assert (= (and b!2228750 c!355628) b!2228752))

(assert (= (and b!2228750 (not c!355628)) b!2228747))

(assert (= (and b!2228747 c!355627) b!2228746))

(assert (= (and b!2228747 (not c!355627)) b!2228748))

(assert (= (and b!2228748 c!355625) b!2228753))

(assert (= (and b!2228748 (not c!355625)) b!2228751))

(assert (= (or b!2228746 b!2228753) bm!133679))

(assert (= (or b!2228746 b!2228753) bm!133681))

(assert (= (or b!2228752 bm!133679) bm!133680))

(assert (= (or b!2228752 bm!133681) bm!133682))

(assert (= (or b!2228755 bm!133682) bm!133684))

(assert (= (or b!2228755 b!2228752) bm!133683))

(declare-fun m!2666685 () Bool)

(assert (=> bm!133683 m!2666685))

(declare-fun m!2666687 () Bool)

(assert (=> b!2228756 m!2666687))

(declare-fun m!2666689 () Bool)

(assert (=> bm!133684 m!2666689))

(declare-fun m!2666691 () Bool)

(assert (=> bm!133680 m!2666691))

(declare-fun m!2666693 () Bool)

(assert (=> b!2228754 m!2666693))

(assert (=> bm!133669 d!664802))

(declare-fun bs!453670 () Bool)

(declare-fun d!664804 () Bool)

(assert (= bs!453670 (and d!664804 d!664792)))

(declare-fun lambda!84244 () Int)

(assert (=> bs!453670 (= lambda!84244 lambda!84239)))

(declare-fun bs!453671 () Bool)

(assert (= bs!453671 (and d!664804 d!664800)))

(assert (=> bs!453671 (= lambda!84244 lambda!84243)))

(assert (=> d!664804 (= (inv!35559 setElem!19971) (forall!5354 (exprs!2453 setElem!19971) lambda!84244))))

(declare-fun bs!453672 () Bool)

(assert (= bs!453672 d!664804))

(declare-fun m!2666695 () Bool)

(assert (=> bs!453672 m!2666695))

(assert (=> setNonEmpty!19971 d!664804))

(declare-fun b!2228757 () Bool)

(declare-fun e!1424381 () (InoxSet Context!3906))

(declare-fun call!133692 () (InoxSet Context!3906))

(assert (=> b!2228757 (= e!1424381 call!133692)))

(declare-fun c!355631 () Bool)

(declare-fun d!664806 () Bool)

(assert (=> d!664806 (= c!355631 (and ((_ is ElementMatch!6405) (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64))) (= (c!355602 (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64))) a!1167)))))

(declare-fun e!1424378 () (InoxSet Context!3906))

(assert (=> d!664806 (= (derivationStepZipperDown!39 (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64)) (ite c!355613 context!86 (Context!3907 call!133670)) a!1167) e!1424378)))

(declare-fun b!2228758 () Bool)

(declare-fun e!1424379 () (InoxSet Context!3906))

(assert (=> b!2228758 (= e!1424379 e!1424381)))

(declare-fun c!355632 () Bool)

(assert (=> b!2228758 (= c!355632 ((_ is Concat!10743) (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64))))))

(declare-fun b!2228759 () Bool)

(declare-fun c!355630 () Bool)

(assert (=> b!2228759 (= c!355630 ((_ is Star!6405) (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64))))))

(declare-fun e!1424377 () (InoxSet Context!3906))

(assert (=> b!2228759 (= e!1424381 e!1424377)))

(declare-fun b!2228760 () Bool)

(declare-fun e!1424376 () (InoxSet Context!3906))

(assert (=> b!2228760 (= e!1424378 e!1424376)))

(declare-fun c!355629 () Bool)

(assert (=> b!2228760 (= c!355629 ((_ is Union!6405) (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64))))))

(declare-fun b!2228761 () Bool)

(declare-fun c!355633 () Bool)

(declare-fun e!1424380 () Bool)

(assert (=> b!2228761 (= c!355633 e!1424380)))

(declare-fun res!955070 () Bool)

(assert (=> b!2228761 (=> (not res!955070) (not e!1424380))))

(assert (=> b!2228761 (= res!955070 ((_ is Concat!10743) (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64))))))

(assert (=> b!2228761 (= e!1424376 e!1424379)))

(declare-fun b!2228762 () Bool)

(assert (=> b!2228762 (= e!1424377 ((as const (Array Context!3906 Bool)) false))))

(declare-fun b!2228763 () Bool)

(declare-fun call!133693 () (InoxSet Context!3906))

(declare-fun call!133694 () (InoxSet Context!3906))

(assert (=> b!2228763 (= e!1424379 ((_ map or) call!133693 call!133694))))

(declare-fun b!2228764 () Bool)

(assert (=> b!2228764 (= e!1424377 call!133692)))

(declare-fun bm!133685 () Bool)

(declare-fun call!133690 () List!26282)

(declare-fun call!133691 () List!26282)

(assert (=> bm!133685 (= call!133690 call!133691)))

(declare-fun bm!133686 () Bool)

(assert (=> bm!133686 (= call!133691 ($colon$colon!513 (exprs!2453 (ite c!355613 context!86 (Context!3907 call!133670))) (ite (or c!355633 c!355632) (regTwo!13322 (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64))) (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64)))))))

(declare-fun bm!133687 () Bool)

(assert (=> bm!133687 (= call!133692 call!133694)))

(declare-fun b!2228765 () Bool)

(assert (=> b!2228765 (= e!1424380 (nullable!1756 (regOne!13322 (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64)))))))

(declare-fun b!2228766 () Bool)

(declare-fun call!133695 () (InoxSet Context!3906))

(assert (=> b!2228766 (= e!1424376 ((_ map or) call!133693 call!133695))))

(declare-fun bm!133688 () Bool)

(assert (=> bm!133688 (= call!133694 call!133695)))

(declare-fun bm!133689 () Bool)

(assert (=> bm!133689 (= call!133693 (derivationStepZipperDown!39 (ite c!355629 (regOne!13323 (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64))) (regOne!13322 (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64)))) (ite c!355629 (ite c!355613 context!86 (Context!3907 call!133670)) (Context!3907 call!133691)) a!1167))))

(declare-fun bm!133690 () Bool)

(assert (=> bm!133690 (= call!133695 (derivationStepZipperDown!39 (ite c!355629 (regTwo!13323 (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64))) (ite c!355633 (regTwo!13322 (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64))) (ite c!355632 (regOne!13322 (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64))) (reg!6734 (ite c!355613 (regOne!13323 expr!64) (regOne!13322 expr!64)))))) (ite (or c!355629 c!355633) (ite c!355613 context!86 (Context!3907 call!133670)) (Context!3907 call!133690)) a!1167))))

(declare-fun b!2228767 () Bool)

(assert (=> b!2228767 (= e!1424378 (store ((as const (Array Context!3906 Bool)) false) (ite c!355613 context!86 (Context!3907 call!133670)) true))))

(assert (= (and d!664806 c!355631) b!2228767))

(assert (= (and d!664806 (not c!355631)) b!2228760))

(assert (= (and b!2228760 c!355629) b!2228766))

(assert (= (and b!2228760 (not c!355629)) b!2228761))

(assert (= (and b!2228761 res!955070) b!2228765))

(assert (= (and b!2228761 c!355633) b!2228763))

(assert (= (and b!2228761 (not c!355633)) b!2228758))

(assert (= (and b!2228758 c!355632) b!2228757))

(assert (= (and b!2228758 (not c!355632)) b!2228759))

(assert (= (and b!2228759 c!355630) b!2228764))

(assert (= (and b!2228759 (not c!355630)) b!2228762))

(assert (= (or b!2228757 b!2228764) bm!133685))

(assert (= (or b!2228757 b!2228764) bm!133687))

(assert (= (or b!2228763 bm!133685) bm!133686))

(assert (= (or b!2228763 bm!133687) bm!133688))

(assert (= (or b!2228766 bm!133688) bm!133690))

(assert (= (or b!2228766 b!2228763) bm!133689))

(declare-fun m!2666697 () Bool)

(assert (=> bm!133689 m!2666697))

(declare-fun m!2666699 () Bool)

(assert (=> b!2228767 m!2666699))

(declare-fun m!2666701 () Bool)

(assert (=> bm!133690 m!2666701))

(declare-fun m!2666703 () Bool)

(assert (=> bm!133686 m!2666703))

(declare-fun m!2666705 () Bool)

(assert (=> b!2228765 m!2666705))

(assert (=> bm!133668 d!664806))

(declare-fun d!664808 () Bool)

(assert (=> d!664808 (= (get!7891 lt!830436) (v!29768 lt!830436))))

(assert (=> b!2228599 d!664808))

(assert (=> b!2228599 d!664784))

(declare-fun bs!453673 () Bool)

(declare-fun d!664810 () Bool)

(assert (= bs!453673 (and d!664810 d!664792)))

(declare-fun lambda!84245 () Int)

(assert (=> bs!453673 (= lambda!84245 lambda!84239)))

(declare-fun bs!453674 () Bool)

(assert (= bs!453674 (and d!664810 d!664800)))

(assert (=> bs!453674 (= lambda!84245 lambda!84243)))

(declare-fun bs!453675 () Bool)

(assert (= bs!453675 (and d!664810 d!664804)))

(assert (=> bs!453675 (= lambda!84245 lambda!84244)))

(assert (=> d!664810 (= (inv!35559 setElem!19968) (forall!5354 (exprs!2453 setElem!19968) lambda!84245))))

(declare-fun bs!453676 () Bool)

(assert (= bs!453676 d!664810))

(declare-fun m!2666707 () Bool)

(assert (=> bs!453676 m!2666707))

(assert (=> setNonEmpty!19967 d!664810))

(declare-fun bs!453677 () Bool)

(declare-fun d!664812 () Bool)

(assert (= bs!453677 (and d!664812 d!664792)))

(declare-fun lambda!84246 () Int)

(assert (=> bs!453677 (= lambda!84246 lambda!84239)))

(declare-fun bs!453678 () Bool)

(assert (= bs!453678 (and d!664812 d!664800)))

(assert (=> bs!453678 (= lambda!84246 lambda!84243)))

(declare-fun bs!453679 () Bool)

(assert (= bs!453679 (and d!664812 d!664804)))

(assert (=> bs!453679 (= lambda!84246 lambda!84244)))

(declare-fun bs!453680 () Bool)

(assert (= bs!453680 (and d!664812 d!664810)))

(assert (=> bs!453680 (= lambda!84246 lambda!84245)))

(assert (=> d!664812 (= (inv!35559 setElem!19967) (forall!5354 (exprs!2453 setElem!19967) lambda!84246))))

(declare-fun bs!453681 () Bool)

(assert (= bs!453681 d!664812))

(declare-fun m!2666709 () Bool)

(assert (=> bs!453681 m!2666709))

(assert (=> setNonEmpty!19968 d!664812))

(declare-fun d!664814 () Bool)

(assert (=> d!664814 (= (isEmpty!14889 lt!830436) (not ((_ is Some!5092) lt!830436)))))

(assert (=> d!664782 d!664814))

(declare-fun b!2228774 () Bool)

(declare-fun e!1424388 () Bool)

(declare-fun tp!697458 () Bool)

(assert (=> b!2228774 (= e!1424388 tp!697458)))

(declare-fun setNonEmpty!19977 () Bool)

(declare-fun setElem!19977 () Context!3906)

(declare-fun setRes!19977 () Bool)

(declare-fun tp!697457 () Bool)

(assert (=> setNonEmpty!19977 (= setRes!19977 (and tp!697457 (inv!35559 setElem!19977) e!1424388))))

(declare-fun res!955076 () Option!5093)

(declare-fun setRest!19977 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19977 (= (v!29768 res!955076) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19977 true) setRest!19977))))

(declare-fun b!2228776 () Bool)

(declare-fun e!1424389 () Bool)

(assert (=> b!2228776 (= e!1424389 setRes!19977)))

(declare-fun condSetEmpty!19977 () Bool)

(assert (=> b!2228776 (= condSetEmpty!19977 (= (v!29768 res!955076) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun setIsEmpty!19977 () Bool)

(assert (=> setIsEmpty!19977 setRes!19977))

(declare-fun d!664816 () Bool)

(declare-fun e!1424390 () Bool)

(assert (=> d!664816 e!1424390))

(declare-fun res!955075 () Bool)

(assert (=> d!664816 (=> res!955075 e!1424390)))

(assert (=> d!664816 (= res!955075 (isEmpty!14889 res!955076))))

(assert (=> d!664816 e!1424389))

(assert (=> d!664816 (= (choose!13120 cacheDown!839 expr!64 context!86 a!1167) res!955076)))

(declare-fun b!2228775 () Bool)

(assert (=> b!2228775 (= e!1424390 (= (get!7891 res!955076) (derivationStepZipperDown!39 expr!64 context!86 a!1167)))))

(assert (= (and b!2228776 condSetEmpty!19977) setIsEmpty!19977))

(assert (= (and b!2228776 (not condSetEmpty!19977)) setNonEmpty!19977))

(assert (= setNonEmpty!19977 b!2228774))

(assert (= (and d!664816 ((_ is Some!5092) res!955076)) b!2228776))

(assert (= (and d!664816 (not res!955075)) b!2228775))

(declare-fun m!2666711 () Bool)

(assert (=> setNonEmpty!19977 m!2666711))

(declare-fun m!2666713 () Bool)

(assert (=> d!664816 m!2666713))

(declare-fun m!2666715 () Bool)

(assert (=> b!2228775 m!2666715))

(assert (=> b!2228775 m!2666604))

(assert (=> d!664782 d!664816))

(assert (=> d!664782 d!664798))

(declare-fun c!355634 () Bool)

(declare-fun call!133697 () Bool)

(declare-fun bm!133691 () Bool)

(assert (=> bm!133691 (= call!133697 (validRegex!2381 (ite c!355634 (regTwo!13323 (ite c!355623 (reg!6734 expr!64) (ite c!355622 (regOne!13323 expr!64) (regOne!13322 expr!64)))) (regTwo!13322 (ite c!355623 (reg!6734 expr!64) (ite c!355622 (regOne!13323 expr!64) (regOne!13322 expr!64)))))))))

(declare-fun b!2228777 () Bool)

(declare-fun e!1424391 () Bool)

(assert (=> b!2228777 (= e!1424391 call!133697)))

(declare-fun b!2228779 () Bool)

(declare-fun e!1424393 () Bool)

(declare-fun e!1424396 () Bool)

(assert (=> b!2228779 (= e!1424393 e!1424396)))

(declare-fun c!355635 () Bool)

(assert (=> b!2228779 (= c!355635 ((_ is Star!6405) (ite c!355623 (reg!6734 expr!64) (ite c!355622 (regOne!13323 expr!64) (regOne!13322 expr!64)))))))

(declare-fun bm!133692 () Bool)

(declare-fun call!133696 () Bool)

(declare-fun call!133698 () Bool)

(assert (=> bm!133692 (= call!133696 call!133698)))

(declare-fun b!2228780 () Bool)

(declare-fun e!1424392 () Bool)

(assert (=> b!2228780 (= e!1424396 e!1424392)))

(declare-fun res!955079 () Bool)

(assert (=> b!2228780 (= res!955079 (not (nullable!1756 (reg!6734 (ite c!355623 (reg!6734 expr!64) (ite c!355622 (regOne!13323 expr!64) (regOne!13322 expr!64)))))))))

(assert (=> b!2228780 (=> (not res!955079) (not e!1424392))))

(declare-fun bm!133693 () Bool)

(assert (=> bm!133693 (= call!133698 (validRegex!2381 (ite c!355635 (reg!6734 (ite c!355623 (reg!6734 expr!64) (ite c!355622 (regOne!13323 expr!64) (regOne!13322 expr!64)))) (ite c!355634 (regOne!13323 (ite c!355623 (reg!6734 expr!64) (ite c!355622 (regOne!13323 expr!64) (regOne!13322 expr!64)))) (regOne!13322 (ite c!355623 (reg!6734 expr!64) (ite c!355622 (regOne!13323 expr!64) (regOne!13322 expr!64))))))))))

(declare-fun b!2228781 () Bool)

(declare-fun e!1424397 () Bool)

(assert (=> b!2228781 (= e!1424397 call!133697)))

(declare-fun b!2228782 () Bool)

(declare-fun res!955078 () Bool)

(declare-fun e!1424395 () Bool)

(assert (=> b!2228782 (=> res!955078 e!1424395)))

(assert (=> b!2228782 (= res!955078 (not ((_ is Concat!10743) (ite c!355623 (reg!6734 expr!64) (ite c!355622 (regOne!13323 expr!64) (regOne!13322 expr!64))))))))

(declare-fun e!1424394 () Bool)

(assert (=> b!2228782 (= e!1424394 e!1424395)))

(declare-fun b!2228783 () Bool)

(assert (=> b!2228783 (= e!1424392 call!133698)))

(declare-fun b!2228784 () Bool)

(assert (=> b!2228784 (= e!1424396 e!1424394)))

(assert (=> b!2228784 (= c!355634 ((_ is Union!6405) (ite c!355623 (reg!6734 expr!64) (ite c!355622 (regOne!13323 expr!64) (regOne!13322 expr!64)))))))

(declare-fun b!2228785 () Bool)

(assert (=> b!2228785 (= e!1424395 e!1424397)))

(declare-fun res!955080 () Bool)

(assert (=> b!2228785 (=> (not res!955080) (not e!1424397))))

(assert (=> b!2228785 (= res!955080 call!133696)))

(declare-fun b!2228778 () Bool)

(declare-fun res!955077 () Bool)

(assert (=> b!2228778 (=> (not res!955077) (not e!1424391))))

(assert (=> b!2228778 (= res!955077 call!133696)))

(assert (=> b!2228778 (= e!1424394 e!1424391)))

(declare-fun d!664818 () Bool)

(declare-fun res!955081 () Bool)

(assert (=> d!664818 (=> res!955081 e!1424393)))

(assert (=> d!664818 (= res!955081 ((_ is ElementMatch!6405) (ite c!355623 (reg!6734 expr!64) (ite c!355622 (regOne!13323 expr!64) (regOne!13322 expr!64)))))))

(assert (=> d!664818 (= (validRegex!2381 (ite c!355623 (reg!6734 expr!64) (ite c!355622 (regOne!13323 expr!64) (regOne!13322 expr!64)))) e!1424393)))

(assert (= (and d!664818 (not res!955081)) b!2228779))

(assert (= (and b!2228779 c!355635) b!2228780))

(assert (= (and b!2228779 (not c!355635)) b!2228784))

(assert (= (and b!2228780 res!955079) b!2228783))

(assert (= (and b!2228784 c!355634) b!2228778))

(assert (= (and b!2228784 (not c!355634)) b!2228782))

(assert (= (and b!2228778 res!955077) b!2228777))

(assert (= (and b!2228782 (not res!955078)) b!2228785))

(assert (= (and b!2228785 res!955080) b!2228781))

(assert (= (or b!2228777 b!2228781) bm!133691))

(assert (= (or b!2228778 b!2228785) bm!133692))

(assert (= (or b!2228783 bm!133692) bm!133693))

(declare-fun m!2666717 () Bool)

(assert (=> bm!133691 m!2666717))

(declare-fun m!2666719 () Bool)

(assert (=> b!2228780 m!2666719))

(declare-fun m!2666721 () Bool)

(assert (=> bm!133693 m!2666721))

(assert (=> bm!133678 d!664818))

(declare-fun bs!453682 () Bool)

(declare-fun d!664820 () Bool)

(assert (= bs!453682 (and d!664820 d!664810)))

(declare-fun lambda!84247 () Int)

(assert (=> bs!453682 (= lambda!84247 lambda!84245)))

(declare-fun bs!453683 () Bool)

(assert (= bs!453683 (and d!664820 d!664800)))

(assert (=> bs!453683 (= lambda!84247 lambda!84243)))

(declare-fun bs!453684 () Bool)

(assert (= bs!453684 (and d!664820 d!664792)))

(assert (=> bs!453684 (= lambda!84247 lambda!84239)))

(declare-fun bs!453685 () Bool)

(assert (= bs!453685 (and d!664820 d!664812)))

(assert (=> bs!453685 (= lambda!84247 lambda!84246)))

(declare-fun bs!453686 () Bool)

(assert (= bs!453686 (and d!664820 d!664804)))

(assert (=> bs!453686 (= lambda!84247 lambda!84244)))

(assert (=> d!664820 (= (inv!35559 (_2!15176 (_1!15177 (h!31590 mapDefault!14329)))) (forall!5354 (exprs!2453 (_2!15176 (_1!15177 (h!31590 mapDefault!14329)))) lambda!84247))))

(declare-fun bs!453687 () Bool)

(assert (= bs!453687 d!664820))

(declare-fun m!2666723 () Bool)

(assert (=> bs!453687 m!2666723))

(assert (=> b!2228736 d!664820))

(declare-fun bm!133694 () Bool)

(declare-fun call!133700 () Bool)

(declare-fun c!355636 () Bool)

(assert (=> bm!133694 (= call!133700 (validRegex!2381 (ite c!355636 (regTwo!13323 (ite c!355622 (regTwo!13323 expr!64) (regTwo!13322 expr!64))) (regTwo!13322 (ite c!355622 (regTwo!13323 expr!64) (regTwo!13322 expr!64))))))))

(declare-fun b!2228786 () Bool)

(declare-fun e!1424398 () Bool)

(assert (=> b!2228786 (= e!1424398 call!133700)))

(declare-fun b!2228788 () Bool)

(declare-fun e!1424400 () Bool)

(declare-fun e!1424403 () Bool)

(assert (=> b!2228788 (= e!1424400 e!1424403)))

(declare-fun c!355637 () Bool)

(assert (=> b!2228788 (= c!355637 ((_ is Star!6405) (ite c!355622 (regTwo!13323 expr!64) (regTwo!13322 expr!64))))))

(declare-fun bm!133695 () Bool)

(declare-fun call!133699 () Bool)

(declare-fun call!133701 () Bool)

(assert (=> bm!133695 (= call!133699 call!133701)))

(declare-fun b!2228789 () Bool)

(declare-fun e!1424399 () Bool)

(assert (=> b!2228789 (= e!1424403 e!1424399)))

(declare-fun res!955084 () Bool)

(assert (=> b!2228789 (= res!955084 (not (nullable!1756 (reg!6734 (ite c!355622 (regTwo!13323 expr!64) (regTwo!13322 expr!64))))))))

(assert (=> b!2228789 (=> (not res!955084) (not e!1424399))))

(declare-fun bm!133696 () Bool)

(assert (=> bm!133696 (= call!133701 (validRegex!2381 (ite c!355637 (reg!6734 (ite c!355622 (regTwo!13323 expr!64) (regTwo!13322 expr!64))) (ite c!355636 (regOne!13323 (ite c!355622 (regTwo!13323 expr!64) (regTwo!13322 expr!64))) (regOne!13322 (ite c!355622 (regTwo!13323 expr!64) (regTwo!13322 expr!64)))))))))

(declare-fun b!2228790 () Bool)

(declare-fun e!1424404 () Bool)

(assert (=> b!2228790 (= e!1424404 call!133700)))

(declare-fun b!2228791 () Bool)

(declare-fun res!955083 () Bool)

(declare-fun e!1424402 () Bool)

(assert (=> b!2228791 (=> res!955083 e!1424402)))

(assert (=> b!2228791 (= res!955083 (not ((_ is Concat!10743) (ite c!355622 (regTwo!13323 expr!64) (regTwo!13322 expr!64)))))))

(declare-fun e!1424401 () Bool)

(assert (=> b!2228791 (= e!1424401 e!1424402)))

(declare-fun b!2228792 () Bool)

(assert (=> b!2228792 (= e!1424399 call!133701)))

(declare-fun b!2228793 () Bool)

(assert (=> b!2228793 (= e!1424403 e!1424401)))

(assert (=> b!2228793 (= c!355636 ((_ is Union!6405) (ite c!355622 (regTwo!13323 expr!64) (regTwo!13322 expr!64))))))

(declare-fun b!2228794 () Bool)

(assert (=> b!2228794 (= e!1424402 e!1424404)))

(declare-fun res!955085 () Bool)

(assert (=> b!2228794 (=> (not res!955085) (not e!1424404))))

(assert (=> b!2228794 (= res!955085 call!133699)))

(declare-fun b!2228787 () Bool)

(declare-fun res!955082 () Bool)

(assert (=> b!2228787 (=> (not res!955082) (not e!1424398))))

(assert (=> b!2228787 (= res!955082 call!133699)))

(assert (=> b!2228787 (= e!1424401 e!1424398)))

(declare-fun d!664822 () Bool)

(declare-fun res!955086 () Bool)

(assert (=> d!664822 (=> res!955086 e!1424400)))

(assert (=> d!664822 (= res!955086 ((_ is ElementMatch!6405) (ite c!355622 (regTwo!13323 expr!64) (regTwo!13322 expr!64))))))

(assert (=> d!664822 (= (validRegex!2381 (ite c!355622 (regTwo!13323 expr!64) (regTwo!13322 expr!64))) e!1424400)))

(assert (= (and d!664822 (not res!955086)) b!2228788))

(assert (= (and b!2228788 c!355637) b!2228789))

(assert (= (and b!2228788 (not c!355637)) b!2228793))

(assert (= (and b!2228789 res!955084) b!2228792))

(assert (= (and b!2228793 c!355636) b!2228787))

(assert (= (and b!2228793 (not c!355636)) b!2228791))

(assert (= (and b!2228787 res!955082) b!2228786))

(assert (= (and b!2228791 (not res!955083)) b!2228794))

(assert (= (and b!2228794 res!955085) b!2228790))

(assert (= (or b!2228786 b!2228790) bm!133694))

(assert (= (or b!2228787 b!2228794) bm!133695))

(assert (= (or b!2228792 bm!133695) bm!133696))

(declare-fun m!2666725 () Bool)

(assert (=> bm!133694 m!2666725))

(declare-fun m!2666727 () Bool)

(assert (=> b!2228789 m!2666727))

(declare-fun m!2666729 () Bool)

(assert (=> bm!133696 m!2666729))

(assert (=> bm!133676 d!664822))

(declare-fun bs!453688 () Bool)

(declare-fun d!664824 () Bool)

(assert (= bs!453688 (and d!664824 d!664810)))

(declare-fun lambda!84248 () Int)

(assert (=> bs!453688 (= lambda!84248 lambda!84245)))

(declare-fun bs!453689 () Bool)

(assert (= bs!453689 (and d!664824 d!664800)))

(assert (=> bs!453689 (= lambda!84248 lambda!84243)))

(declare-fun bs!453690 () Bool)

(assert (= bs!453690 (and d!664824 d!664792)))

(assert (=> bs!453690 (= lambda!84248 lambda!84239)))

(declare-fun bs!453691 () Bool)

(assert (= bs!453691 (and d!664824 d!664812)))

(assert (=> bs!453691 (= lambda!84248 lambda!84246)))

(declare-fun bs!453692 () Bool)

(assert (= bs!453692 (and d!664824 d!664820)))

(assert (=> bs!453692 (= lambda!84248 lambda!84247)))

(declare-fun bs!453693 () Bool)

(assert (= bs!453693 (and d!664824 d!664804)))

(assert (=> bs!453693 (= lambda!84248 lambda!84244)))

(assert (=> d!664824 (= (inv!35559 (_2!15176 (_1!15177 (h!31590 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))))) (forall!5354 (exprs!2453 (_2!15176 (_1!15177 (h!31590 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))))) lambda!84248))))

(declare-fun bs!453694 () Bool)

(assert (= bs!453694 d!664824))

(declare-fun m!2666731 () Bool)

(assert (=> bs!453694 m!2666731))

(assert (=> b!2228733 d!664824))

(declare-fun d!664826 () Bool)

(assert (=> d!664826 (= ($colon$colon!513 (exprs!2453 context!86) (ite (or c!355617 c!355616) (regTwo!13322 expr!64) expr!64)) (Cons!26188 (ite (or c!355617 c!355616) (regTwo!13322 expr!64) expr!64) (exprs!2453 context!86)))))

(assert (=> bm!133665 d!664826))

(declare-fun d!664828 () Bool)

(declare-fun res!955091 () Bool)

(declare-fun e!1424409 () Bool)

(assert (=> d!664828 (=> res!955091 e!1424409)))

(assert (=> d!664828 (= res!955091 ((_ is Nil!26188) (exprs!2453 context!86)))))

(assert (=> d!664828 (= (forall!5354 (exprs!2453 context!86) lambda!84239) e!1424409)))

(declare-fun b!2228799 () Bool)

(declare-fun e!1424410 () Bool)

(assert (=> b!2228799 (= e!1424409 e!1424410)))

(declare-fun res!955092 () Bool)

(assert (=> b!2228799 (=> (not res!955092) (not e!1424410))))

(declare-fun dynLambda!11521 (Int Regex!6405) Bool)

(assert (=> b!2228799 (= res!955092 (dynLambda!11521 lambda!84239 (h!31589 (exprs!2453 context!86))))))

(declare-fun b!2228800 () Bool)

(assert (=> b!2228800 (= e!1424410 (forall!5354 (t!199696 (exprs!2453 context!86)) lambda!84239))))

(assert (= (and d!664828 (not res!955091)) b!2228799))

(assert (= (and b!2228799 res!955092) b!2228800))

(declare-fun b_lambda!71641 () Bool)

(assert (=> (not b_lambda!71641) (not b!2228799)))

(declare-fun m!2666733 () Bool)

(assert (=> b!2228799 m!2666733))

(declare-fun m!2666735 () Bool)

(assert (=> b!2228800 m!2666735))

(assert (=> d!664792 d!664828))

(declare-fun bs!453695 () Bool)

(declare-fun d!664830 () Bool)

(assert (= bs!453695 (and d!664830 d!664800)))

(declare-fun lambda!84249 () Int)

(assert (=> bs!453695 (= lambda!84249 lambda!84243)))

(declare-fun bs!453696 () Bool)

(assert (= bs!453696 (and d!664830 d!664792)))

(assert (=> bs!453696 (= lambda!84249 lambda!84239)))

(declare-fun bs!453697 () Bool)

(assert (= bs!453697 (and d!664830 d!664812)))

(assert (=> bs!453697 (= lambda!84249 lambda!84246)))

(declare-fun bs!453698 () Bool)

(assert (= bs!453698 (and d!664830 d!664820)))

(assert (=> bs!453698 (= lambda!84249 lambda!84247)))

(declare-fun bs!453699 () Bool)

(assert (= bs!453699 (and d!664830 d!664804)))

(assert (=> bs!453699 (= lambda!84249 lambda!84244)))

(declare-fun bs!453700 () Bool)

(assert (= bs!453700 (and d!664830 d!664810)))

(assert (=> bs!453700 (= lambda!84249 lambda!84245)))

(declare-fun bs!453701 () Bool)

(assert (= bs!453701 (and d!664830 d!664824)))

(assert (=> bs!453701 (= lambda!84249 lambda!84248)))

(assert (=> d!664830 (= (inv!35559 setElem!19972) (forall!5354 (exprs!2453 setElem!19972) lambda!84249))))

(declare-fun bs!453702 () Bool)

(assert (= bs!453702 d!664830))

(declare-fun m!2666737 () Bool)

(assert (=> bs!453702 m!2666737))

(assert (=> setNonEmpty!19972 d!664830))

(declare-fun bs!453703 () Bool)

(declare-fun d!664832 () Bool)

(assert (= bs!453703 (and d!664832 d!664800)))

(declare-fun lambda!84250 () Int)

(assert (=> bs!453703 (= lambda!84250 lambda!84243)))

(declare-fun bs!453704 () Bool)

(assert (= bs!453704 (and d!664832 d!664792)))

(assert (=> bs!453704 (= lambda!84250 lambda!84239)))

(declare-fun bs!453705 () Bool)

(assert (= bs!453705 (and d!664832 d!664812)))

(assert (=> bs!453705 (= lambda!84250 lambda!84246)))

(declare-fun bs!453706 () Bool)

(assert (= bs!453706 (and d!664832 d!664830)))

(assert (=> bs!453706 (= lambda!84250 lambda!84249)))

(declare-fun bs!453707 () Bool)

(assert (= bs!453707 (and d!664832 d!664820)))

(assert (=> bs!453707 (= lambda!84250 lambda!84247)))

(declare-fun bs!453708 () Bool)

(assert (= bs!453708 (and d!664832 d!664804)))

(assert (=> bs!453708 (= lambda!84250 lambda!84244)))

(declare-fun bs!453709 () Bool)

(assert (= bs!453709 (and d!664832 d!664810)))

(assert (=> bs!453709 (= lambda!84250 lambda!84245)))

(declare-fun bs!453710 () Bool)

(assert (= bs!453710 (and d!664832 d!664824)))

(assert (=> bs!453710 (= lambda!84250 lambda!84248)))

(assert (=> d!664832 (= (inv!35559 (_2!15176 (_1!15177 (h!31590 mapValue!14329)))) (forall!5354 (exprs!2453 (_2!15176 (_1!15177 (h!31590 mapValue!14329)))) lambda!84250))))

(declare-fun bs!453711 () Bool)

(assert (= bs!453711 d!664832))

(declare-fun m!2666739 () Bool)

(assert (=> bs!453711 m!2666739))

(assert (=> b!2228715 d!664832))

(declare-fun bs!453712 () Bool)

(declare-fun d!664834 () Bool)

(assert (= bs!453712 (and d!664834 d!664800)))

(declare-fun lambda!84251 () Int)

(assert (=> bs!453712 (= lambda!84251 lambda!84243)))

(declare-fun bs!453713 () Bool)

(assert (= bs!453713 (and d!664834 d!664792)))

(assert (=> bs!453713 (= lambda!84251 lambda!84239)))

(declare-fun bs!453714 () Bool)

(assert (= bs!453714 (and d!664834 d!664832)))

(assert (=> bs!453714 (= lambda!84251 lambda!84250)))

(declare-fun bs!453715 () Bool)

(assert (= bs!453715 (and d!664834 d!664812)))

(assert (=> bs!453715 (= lambda!84251 lambda!84246)))

(declare-fun bs!453716 () Bool)

(assert (= bs!453716 (and d!664834 d!664830)))

(assert (=> bs!453716 (= lambda!84251 lambda!84249)))

(declare-fun bs!453717 () Bool)

(assert (= bs!453717 (and d!664834 d!664820)))

(assert (=> bs!453717 (= lambda!84251 lambda!84247)))

(declare-fun bs!453718 () Bool)

(assert (= bs!453718 (and d!664834 d!664804)))

(assert (=> bs!453718 (= lambda!84251 lambda!84244)))

(declare-fun bs!453719 () Bool)

(assert (= bs!453719 (and d!664834 d!664810)))

(assert (=> bs!453719 (= lambda!84251 lambda!84245)))

(declare-fun bs!453720 () Bool)

(assert (= bs!453720 (and d!664834 d!664824)))

(assert (=> bs!453720 (= lambda!84251 lambda!84248)))

(assert (=> d!664834 (= (inv!35559 setElem!19974) (forall!5354 (exprs!2453 setElem!19974) lambda!84251))))

(declare-fun bs!453721 () Bool)

(assert (= bs!453721 d!664834))

(declare-fun m!2666741 () Bool)

(assert (=> bs!453721 m!2666741))

(assert (=> setNonEmpty!19974 d!664834))

(declare-fun bs!453722 () Bool)

(declare-fun d!664836 () Bool)

(assert (= bs!453722 (and d!664836 d!664800)))

(declare-fun lambda!84252 () Int)

(assert (=> bs!453722 (= lambda!84252 lambda!84243)))

(declare-fun bs!453723 () Bool)

(assert (= bs!453723 (and d!664836 d!664834)))

(assert (=> bs!453723 (= lambda!84252 lambda!84251)))

(declare-fun bs!453724 () Bool)

(assert (= bs!453724 (and d!664836 d!664792)))

(assert (=> bs!453724 (= lambda!84252 lambda!84239)))

(declare-fun bs!453725 () Bool)

(assert (= bs!453725 (and d!664836 d!664832)))

(assert (=> bs!453725 (= lambda!84252 lambda!84250)))

(declare-fun bs!453726 () Bool)

(assert (= bs!453726 (and d!664836 d!664812)))

(assert (=> bs!453726 (= lambda!84252 lambda!84246)))

(declare-fun bs!453727 () Bool)

(assert (= bs!453727 (and d!664836 d!664830)))

(assert (=> bs!453727 (= lambda!84252 lambda!84249)))

(declare-fun bs!453728 () Bool)

(assert (= bs!453728 (and d!664836 d!664820)))

(assert (=> bs!453728 (= lambda!84252 lambda!84247)))

(declare-fun bs!453729 () Bool)

(assert (= bs!453729 (and d!664836 d!664804)))

(assert (=> bs!453729 (= lambda!84252 lambda!84244)))

(declare-fun bs!453730 () Bool)

(assert (= bs!453730 (and d!664836 d!664810)))

(assert (=> bs!453730 (= lambda!84252 lambda!84245)))

(declare-fun bs!453731 () Bool)

(assert (= bs!453731 (and d!664836 d!664824)))

(assert (=> bs!453731 (= lambda!84252 lambda!84248)))

(assert (=> d!664836 (= (inv!35559 setElem!19973) (forall!5354 (exprs!2453 setElem!19973) lambda!84252))))

(declare-fun bs!453732 () Bool)

(assert (= bs!453732 d!664836))

(declare-fun m!2666743 () Bool)

(assert (=> bs!453732 m!2666743))

(assert (=> setNonEmpty!19973 d!664836))

(declare-fun bs!453733 () Bool)

(declare-fun d!664838 () Bool)

(assert (= bs!453733 (and d!664838 d!664800)))

(declare-fun lambda!84253 () Int)

(assert (=> bs!453733 (= lambda!84253 lambda!84243)))

(declare-fun bs!453734 () Bool)

(assert (= bs!453734 (and d!664838 d!664834)))

(assert (=> bs!453734 (= lambda!84253 lambda!84251)))

(declare-fun bs!453735 () Bool)

(assert (= bs!453735 (and d!664838 d!664792)))

(assert (=> bs!453735 (= lambda!84253 lambda!84239)))

(declare-fun bs!453736 () Bool)

(assert (= bs!453736 (and d!664838 d!664832)))

(assert (=> bs!453736 (= lambda!84253 lambda!84250)))

(declare-fun bs!453737 () Bool)

(assert (= bs!453737 (and d!664838 d!664830)))

(assert (=> bs!453737 (= lambda!84253 lambda!84249)))

(declare-fun bs!453738 () Bool)

(assert (= bs!453738 (and d!664838 d!664820)))

(assert (=> bs!453738 (= lambda!84253 lambda!84247)))

(declare-fun bs!453739 () Bool)

(assert (= bs!453739 (and d!664838 d!664804)))

(assert (=> bs!453739 (= lambda!84253 lambda!84244)))

(declare-fun bs!453740 () Bool)

(assert (= bs!453740 (and d!664838 d!664810)))

(assert (=> bs!453740 (= lambda!84253 lambda!84245)))

(declare-fun bs!453741 () Bool)

(assert (= bs!453741 (and d!664838 d!664824)))

(assert (=> bs!453741 (= lambda!84253 lambda!84248)))

(declare-fun bs!453742 () Bool)

(assert (= bs!453742 (and d!664838 d!664836)))

(assert (=> bs!453742 (= lambda!84253 lambda!84252)))

(declare-fun bs!453743 () Bool)

(assert (= bs!453743 (and d!664838 d!664812)))

(assert (=> bs!453743 (= lambda!84253 lambda!84246)))

(assert (=> d!664838 (= (inv!35559 (_2!15176 (_1!15177 (h!31590 mapDefault!14332)))) (forall!5354 (exprs!2453 (_2!15176 (_1!15177 (h!31590 mapDefault!14332)))) lambda!84253))))

(declare-fun bs!453744 () Bool)

(assert (= bs!453744 d!664838))

(declare-fun m!2666745 () Bool)

(assert (=> bs!453744 m!2666745))

(assert (=> b!2228700 d!664838))

(declare-fun bs!453745 () Bool)

(declare-fun d!664840 () Bool)

(assert (= bs!453745 (and d!664840 d!664800)))

(declare-fun lambda!84254 () Int)

(assert (=> bs!453745 (= lambda!84254 lambda!84243)))

(declare-fun bs!453746 () Bool)

(assert (= bs!453746 (and d!664840 d!664834)))

(assert (=> bs!453746 (= lambda!84254 lambda!84251)))

(declare-fun bs!453747 () Bool)

(assert (= bs!453747 (and d!664840 d!664792)))

(assert (=> bs!453747 (= lambda!84254 lambda!84239)))

(declare-fun bs!453748 () Bool)

(assert (= bs!453748 (and d!664840 d!664832)))

(assert (=> bs!453748 (= lambda!84254 lambda!84250)))

(declare-fun bs!453749 () Bool)

(assert (= bs!453749 (and d!664840 d!664830)))

(assert (=> bs!453749 (= lambda!84254 lambda!84249)))

(declare-fun bs!453750 () Bool)

(assert (= bs!453750 (and d!664840 d!664804)))

(assert (=> bs!453750 (= lambda!84254 lambda!84244)))

(declare-fun bs!453751 () Bool)

(assert (= bs!453751 (and d!664840 d!664810)))

(assert (=> bs!453751 (= lambda!84254 lambda!84245)))

(declare-fun bs!453752 () Bool)

(assert (= bs!453752 (and d!664840 d!664824)))

(assert (=> bs!453752 (= lambda!84254 lambda!84248)))

(declare-fun bs!453753 () Bool)

(assert (= bs!453753 (and d!664840 d!664836)))

(assert (=> bs!453753 (= lambda!84254 lambda!84252)))

(declare-fun bs!453754 () Bool)

(assert (= bs!453754 (and d!664840 d!664812)))

(assert (=> bs!453754 (= lambda!84254 lambda!84246)))

(declare-fun bs!453755 () Bool)

(assert (= bs!453755 (and d!664840 d!664820)))

(assert (=> bs!453755 (= lambda!84254 lambda!84247)))

(declare-fun bs!453756 () Bool)

(assert (= bs!453756 (and d!664840 d!664838)))

(assert (=> bs!453756 (= lambda!84254 lambda!84253)))

(assert (=> d!664840 (= (inv!35559 (_2!15176 (_1!15177 (h!31590 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))))) (forall!5354 (exprs!2453 (_2!15176 (_1!15177 (h!31590 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))))) lambda!84254))))

(declare-fun bs!453757 () Bool)

(assert (= bs!453757 d!664840))

(declare-fun m!2666747 () Bool)

(assert (=> bs!453757 m!2666747))

(assert (=> b!2228730 d!664840))

(declare-fun d!664842 () Bool)

(assert (=> d!664842 (= (nullable!1756 (regOne!13322 expr!64)) (nullableFct!411 (regOne!13322 expr!64)))))

(declare-fun bs!453758 () Bool)

(assert (= bs!453758 d!664842))

(declare-fun m!2666749 () Bool)

(assert (=> bs!453758 m!2666749))

(assert (=> b!2228630 d!664842))

(declare-fun b!2228802 () Bool)

(declare-fun e!1424411 () Bool)

(declare-fun tp!697463 () Bool)

(declare-fun tp!697461 () Bool)

(assert (=> b!2228802 (= e!1424411 (and tp!697463 tp!697461))))

(declare-fun b!2228803 () Bool)

(declare-fun tp!697462 () Bool)

(assert (=> b!2228803 (= e!1424411 tp!697462)))

(assert (=> b!2228685 (= tp!697373 e!1424411)))

(declare-fun b!2228801 () Bool)

(assert (=> b!2228801 (= e!1424411 tp_is_empty!10035)))

(declare-fun b!2228804 () Bool)

(declare-fun tp!697459 () Bool)

(declare-fun tp!697460 () Bool)

(assert (=> b!2228804 (= e!1424411 (and tp!697459 tp!697460))))

(assert (= (and b!2228685 ((_ is ElementMatch!6405) (h!31589 (exprs!2453 context!86)))) b!2228801))

(assert (= (and b!2228685 ((_ is Concat!10743) (h!31589 (exprs!2453 context!86)))) b!2228802))

(assert (= (and b!2228685 ((_ is Star!6405) (h!31589 (exprs!2453 context!86)))) b!2228803))

(assert (= (and b!2228685 ((_ is Union!6405) (h!31589 (exprs!2453 context!86)))) b!2228804))

(declare-fun b!2228805 () Bool)

(declare-fun e!1424412 () Bool)

(declare-fun tp!697464 () Bool)

(declare-fun tp!697465 () Bool)

(assert (=> b!2228805 (= e!1424412 (and tp!697464 tp!697465))))

(assert (=> b!2228685 (= tp!697374 e!1424412)))

(assert (= (and b!2228685 ((_ is Cons!26188) (t!199696 (exprs!2453 context!86)))) b!2228805))

(declare-fun b!2228807 () Bool)

(declare-fun e!1424413 () Bool)

(declare-fun tp!697470 () Bool)

(declare-fun tp!697468 () Bool)

(assert (=> b!2228807 (= e!1424413 (and tp!697470 tp!697468))))

(declare-fun b!2228808 () Bool)

(declare-fun tp!697469 () Bool)

(assert (=> b!2228808 (= e!1424413 tp!697469)))

(assert (=> b!2228703 (= tp!697398 e!1424413)))

(declare-fun b!2228806 () Bool)

(assert (=> b!2228806 (= e!1424413 tp_is_empty!10035)))

(declare-fun b!2228809 () Bool)

(declare-fun tp!697466 () Bool)

(declare-fun tp!697467 () Bool)

(assert (=> b!2228809 (= e!1424413 (and tp!697466 tp!697467))))

(assert (= (and b!2228703 ((_ is ElementMatch!6405) (_1!15176 (_1!15177 (h!31590 mapValue!14332))))) b!2228806))

(assert (= (and b!2228703 ((_ is Concat!10743) (_1!15176 (_1!15177 (h!31590 mapValue!14332))))) b!2228807))

(assert (= (and b!2228703 ((_ is Star!6405) (_1!15176 (_1!15177 (h!31590 mapValue!14332))))) b!2228808))

(assert (= (and b!2228703 ((_ is Union!6405) (_1!15176 (_1!15177 (h!31590 mapValue!14332))))) b!2228809))

(declare-fun b!2228810 () Bool)

(declare-fun e!1424416 () Bool)

(declare-fun tp!697474 () Bool)

(assert (=> b!2228810 (= e!1424416 tp!697474)))

(declare-fun setIsEmpty!19978 () Bool)

(declare-fun setRes!19978 () Bool)

(assert (=> setIsEmpty!19978 setRes!19978))

(declare-fun e!1424415 () Bool)

(assert (=> b!2228703 (= tp!697407 e!1424415)))

(declare-fun tp!697475 () Bool)

(declare-fun b!2228811 () Bool)

(declare-fun tp!697472 () Bool)

(assert (=> b!2228811 (= e!1424415 (and tp!697472 (inv!35559 (_2!15176 (_1!15177 (h!31590 (t!199697 mapValue!14332))))) e!1424416 tp_is_empty!10035 setRes!19978 tp!697475))))

(declare-fun condSetEmpty!19978 () Bool)

(assert (=> b!2228811 (= condSetEmpty!19978 (= (_2!15177 (h!31590 (t!199697 mapValue!14332))) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun b!2228812 () Bool)

(declare-fun e!1424414 () Bool)

(declare-fun tp!697473 () Bool)

(assert (=> b!2228812 (= e!1424414 tp!697473)))

(declare-fun setNonEmpty!19978 () Bool)

(declare-fun setElem!19978 () Context!3906)

(declare-fun tp!697471 () Bool)

(assert (=> setNonEmpty!19978 (= setRes!19978 (and tp!697471 (inv!35559 setElem!19978) e!1424414))))

(declare-fun setRest!19978 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19978 (= (_2!15177 (h!31590 (t!199697 mapValue!14332))) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19978 true) setRest!19978))))

(assert (= b!2228811 b!2228810))

(assert (= (and b!2228811 condSetEmpty!19978) setIsEmpty!19978))

(assert (= (and b!2228811 (not condSetEmpty!19978)) setNonEmpty!19978))

(assert (= setNonEmpty!19978 b!2228812))

(assert (= (and b!2228703 ((_ is Cons!26189) (t!199697 mapValue!14332))) b!2228811))

(declare-fun m!2666751 () Bool)

(assert (=> b!2228811 m!2666751))

(declare-fun m!2666753 () Bool)

(assert (=> setNonEmpty!19978 m!2666753))

(declare-fun b!2228813 () Bool)

(declare-fun e!1424417 () Bool)

(declare-fun tp!697476 () Bool)

(declare-fun tp!697477 () Bool)

(assert (=> b!2228813 (= e!1424417 (and tp!697476 tp!697477))))

(assert (=> b!2228702 (= tp!697405 e!1424417)))

(assert (= (and b!2228702 ((_ is Cons!26188) (exprs!2453 (_2!15176 (_1!15177 (h!31590 mapDefault!14332)))))) b!2228813))

(declare-fun b!2228815 () Bool)

(declare-fun e!1424418 () Bool)

(declare-fun tp!697482 () Bool)

(declare-fun tp!697480 () Bool)

(assert (=> b!2228815 (= e!1424418 (and tp!697482 tp!697480))))

(declare-fun b!2228816 () Bool)

(declare-fun tp!697481 () Bool)

(assert (=> b!2228816 (= e!1424418 tp!697481)))

(assert (=> b!2228726 (= tp!697437 e!1424418)))

(declare-fun b!2228814 () Bool)

(assert (=> b!2228814 (= e!1424418 tp_is_empty!10035)))

(declare-fun b!2228817 () Bool)

(declare-fun tp!697478 () Bool)

(declare-fun tp!697479 () Bool)

(assert (=> b!2228817 (= e!1424418 (and tp!697478 tp!697479))))

(assert (= (and b!2228726 ((_ is ElementMatch!6405) (regOne!13322 (reg!6734 expr!64)))) b!2228814))

(assert (= (and b!2228726 ((_ is Concat!10743) (regOne!13322 (reg!6734 expr!64)))) b!2228815))

(assert (= (and b!2228726 ((_ is Star!6405) (regOne!13322 (reg!6734 expr!64)))) b!2228816))

(assert (= (and b!2228726 ((_ is Union!6405) (regOne!13322 (reg!6734 expr!64)))) b!2228817))

(declare-fun b!2228819 () Bool)

(declare-fun e!1424419 () Bool)

(declare-fun tp!697487 () Bool)

(declare-fun tp!697485 () Bool)

(assert (=> b!2228819 (= e!1424419 (and tp!697487 tp!697485))))

(declare-fun b!2228820 () Bool)

(declare-fun tp!697486 () Bool)

(assert (=> b!2228820 (= e!1424419 tp!697486)))

(assert (=> b!2228726 (= tp!697435 e!1424419)))

(declare-fun b!2228818 () Bool)

(assert (=> b!2228818 (= e!1424419 tp_is_empty!10035)))

(declare-fun b!2228821 () Bool)

(declare-fun tp!697483 () Bool)

(declare-fun tp!697484 () Bool)

(assert (=> b!2228821 (= e!1424419 (and tp!697483 tp!697484))))

(assert (= (and b!2228726 ((_ is ElementMatch!6405) (regTwo!13322 (reg!6734 expr!64)))) b!2228818))

(assert (= (and b!2228726 ((_ is Concat!10743) (regTwo!13322 (reg!6734 expr!64)))) b!2228819))

(assert (= (and b!2228726 ((_ is Star!6405) (regTwo!13322 (reg!6734 expr!64)))) b!2228820))

(assert (= (and b!2228726 ((_ is Union!6405) (regTwo!13322 (reg!6734 expr!64)))) b!2228821))

(declare-fun condSetEmpty!19981 () Bool)

(assert (=> setNonEmpty!19967 (= condSetEmpty!19981 (= setRest!19968 ((as const (Array Context!3906 Bool)) false)))))

(declare-fun setRes!19981 () Bool)

(assert (=> setNonEmpty!19967 (= tp!697397 setRes!19981)))

(declare-fun setIsEmpty!19981 () Bool)

(assert (=> setIsEmpty!19981 setRes!19981))

(declare-fun setNonEmpty!19981 () Bool)

(declare-fun tp!697493 () Bool)

(declare-fun e!1424422 () Bool)

(declare-fun setElem!19981 () Context!3906)

(assert (=> setNonEmpty!19981 (= setRes!19981 (and tp!697493 (inv!35559 setElem!19981) e!1424422))))

(declare-fun setRest!19981 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19981 (= setRest!19968 ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19981 true) setRest!19981))))

(declare-fun b!2228826 () Bool)

(declare-fun tp!697492 () Bool)

(assert (=> b!2228826 (= e!1424422 tp!697492)))

(assert (= (and setNonEmpty!19967 condSetEmpty!19981) setIsEmpty!19981))

(assert (= (and setNonEmpty!19967 (not condSetEmpty!19981)) setNonEmpty!19981))

(assert (= setNonEmpty!19981 b!2228826))

(declare-fun m!2666755 () Bool)

(assert (=> setNonEmpty!19981 m!2666755))

(declare-fun b!2228828 () Bool)

(declare-fun e!1424423 () Bool)

(declare-fun tp!697498 () Bool)

(declare-fun tp!697496 () Bool)

(assert (=> b!2228828 (= e!1424423 (and tp!697498 tp!697496))))

(declare-fun b!2228829 () Bool)

(declare-fun tp!697497 () Bool)

(assert (=> b!2228829 (= e!1424423 tp!697497)))

(assert (=> b!2228679 (= tp!697367 e!1424423)))

(declare-fun b!2228827 () Bool)

(assert (=> b!2228827 (= e!1424423 tp_is_empty!10035)))

(declare-fun b!2228830 () Bool)

(declare-fun tp!697494 () Bool)

(declare-fun tp!697495 () Bool)

(assert (=> b!2228830 (= e!1424423 (and tp!697494 tp!697495))))

(assert (= (and b!2228679 ((_ is ElementMatch!6405) (reg!6734 (regTwo!13323 expr!64)))) b!2228827))

(assert (= (and b!2228679 ((_ is Concat!10743) (reg!6734 (regTwo!13323 expr!64)))) b!2228828))

(assert (= (and b!2228679 ((_ is Star!6405) (reg!6734 (regTwo!13323 expr!64)))) b!2228829))

(assert (= (and b!2228679 ((_ is Union!6405) (reg!6734 (regTwo!13323 expr!64)))) b!2228830))

(declare-fun b!2228832 () Bool)

(declare-fun e!1424424 () Bool)

(declare-fun tp!697503 () Bool)

(declare-fun tp!697501 () Bool)

(assert (=> b!2228832 (= e!1424424 (and tp!697503 tp!697501))))

(declare-fun b!2228833 () Bool)

(declare-fun tp!697502 () Bool)

(assert (=> b!2228833 (= e!1424424 tp!697502)))

(assert (=> b!2228720 (= tp!697423 e!1424424)))

(declare-fun b!2228831 () Bool)

(assert (=> b!2228831 (= e!1424424 tp_is_empty!10035)))

(declare-fun b!2228834 () Bool)

(declare-fun tp!697499 () Bool)

(declare-fun tp!697500 () Bool)

(assert (=> b!2228834 (= e!1424424 (and tp!697499 tp!697500))))

(assert (= (and b!2228720 ((_ is ElementMatch!6405) (regOne!13323 (regOne!13322 expr!64)))) b!2228831))

(assert (= (and b!2228720 ((_ is Concat!10743) (regOne!13323 (regOne!13322 expr!64)))) b!2228832))

(assert (= (and b!2228720 ((_ is Star!6405) (regOne!13323 (regOne!13322 expr!64)))) b!2228833))

(assert (= (and b!2228720 ((_ is Union!6405) (regOne!13323 (regOne!13322 expr!64)))) b!2228834))

(declare-fun b!2228836 () Bool)

(declare-fun e!1424425 () Bool)

(declare-fun tp!697508 () Bool)

(declare-fun tp!697506 () Bool)

(assert (=> b!2228836 (= e!1424425 (and tp!697508 tp!697506))))

(declare-fun b!2228837 () Bool)

(declare-fun tp!697507 () Bool)

(assert (=> b!2228837 (= e!1424425 tp!697507)))

(assert (=> b!2228720 (= tp!697424 e!1424425)))

(declare-fun b!2228835 () Bool)

(assert (=> b!2228835 (= e!1424425 tp_is_empty!10035)))

(declare-fun b!2228838 () Bool)

(declare-fun tp!697504 () Bool)

(declare-fun tp!697505 () Bool)

(assert (=> b!2228838 (= e!1424425 (and tp!697504 tp!697505))))

(assert (= (and b!2228720 ((_ is ElementMatch!6405) (regTwo!13323 (regOne!13322 expr!64)))) b!2228835))

(assert (= (and b!2228720 ((_ is Concat!10743) (regTwo!13323 (regOne!13322 expr!64)))) b!2228836))

(assert (= (and b!2228720 ((_ is Star!6405) (regTwo!13323 (regOne!13322 expr!64)))) b!2228837))

(assert (= (and b!2228720 ((_ is Union!6405) (regTwo!13323 (regOne!13322 expr!64)))) b!2228838))

(declare-fun b!2228840 () Bool)

(declare-fun e!1424426 () Bool)

(declare-fun tp!697513 () Bool)

(declare-fun tp!697511 () Bool)

(assert (=> b!2228840 (= e!1424426 (and tp!697513 tp!697511))))

(declare-fun b!2228841 () Bool)

(declare-fun tp!697512 () Bool)

(assert (=> b!2228841 (= e!1424426 tp!697512)))

(assert (=> b!2228719 (= tp!697426 e!1424426)))

(declare-fun b!2228839 () Bool)

(assert (=> b!2228839 (= e!1424426 tp_is_empty!10035)))

(declare-fun b!2228842 () Bool)

(declare-fun tp!697509 () Bool)

(declare-fun tp!697510 () Bool)

(assert (=> b!2228842 (= e!1424426 (and tp!697509 tp!697510))))

(assert (= (and b!2228719 ((_ is ElementMatch!6405) (reg!6734 (regOne!13322 expr!64)))) b!2228839))

(assert (= (and b!2228719 ((_ is Concat!10743) (reg!6734 (regOne!13322 expr!64)))) b!2228840))

(assert (= (and b!2228719 ((_ is Star!6405) (reg!6734 (regOne!13322 expr!64)))) b!2228841))

(assert (= (and b!2228719 ((_ is Union!6405) (reg!6734 (regOne!13322 expr!64)))) b!2228842))

(declare-fun condSetEmpty!19982 () Bool)

(assert (=> setNonEmpty!19968 (= condSetEmpty!19982 (= setRest!19967 ((as const (Array Context!3906 Bool)) false)))))

(declare-fun setRes!19982 () Bool)

(assert (=> setNonEmpty!19968 (= tp!697402 setRes!19982)))

(declare-fun setIsEmpty!19982 () Bool)

(assert (=> setIsEmpty!19982 setRes!19982))

(declare-fun setElem!19982 () Context!3906)

(declare-fun e!1424427 () Bool)

(declare-fun setNonEmpty!19982 () Bool)

(declare-fun tp!697515 () Bool)

(assert (=> setNonEmpty!19982 (= setRes!19982 (and tp!697515 (inv!35559 setElem!19982) e!1424427))))

(declare-fun setRest!19982 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19982 (= setRest!19967 ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19982 true) setRest!19982))))

(declare-fun b!2228843 () Bool)

(declare-fun tp!697514 () Bool)

(assert (=> b!2228843 (= e!1424427 tp!697514)))

(assert (= (and setNonEmpty!19968 condSetEmpty!19982) setIsEmpty!19982))

(assert (= (and setNonEmpty!19968 (not condSetEmpty!19982)) setNonEmpty!19982))

(assert (= setNonEmpty!19982 b!2228843))

(declare-fun m!2666757 () Bool)

(assert (=> setNonEmpty!19982 m!2666757))

(declare-fun b!2228845 () Bool)

(declare-fun e!1424428 () Bool)

(declare-fun tp!697520 () Bool)

(declare-fun tp!697518 () Bool)

(assert (=> b!2228845 (= e!1424428 (and tp!697520 tp!697518))))

(declare-fun b!2228846 () Bool)

(declare-fun tp!697519 () Bool)

(assert (=> b!2228846 (= e!1424428 tp!697519)))

(assert (=> b!2228678 (= tp!697368 e!1424428)))

(declare-fun b!2228844 () Bool)

(assert (=> b!2228844 (= e!1424428 tp_is_empty!10035)))

(declare-fun b!2228847 () Bool)

(declare-fun tp!697516 () Bool)

(declare-fun tp!697517 () Bool)

(assert (=> b!2228847 (= e!1424428 (and tp!697516 tp!697517))))

(assert (= (and b!2228678 ((_ is ElementMatch!6405) (regOne!13322 (regTwo!13323 expr!64)))) b!2228844))

(assert (= (and b!2228678 ((_ is Concat!10743) (regOne!13322 (regTwo!13323 expr!64)))) b!2228845))

(assert (= (and b!2228678 ((_ is Star!6405) (regOne!13322 (regTwo!13323 expr!64)))) b!2228846))

(assert (= (and b!2228678 ((_ is Union!6405) (regOne!13322 (regTwo!13323 expr!64)))) b!2228847))

(declare-fun b!2228849 () Bool)

(declare-fun e!1424429 () Bool)

(declare-fun tp!697525 () Bool)

(declare-fun tp!697523 () Bool)

(assert (=> b!2228849 (= e!1424429 (and tp!697525 tp!697523))))

(declare-fun b!2228850 () Bool)

(declare-fun tp!697524 () Bool)

(assert (=> b!2228850 (= e!1424429 tp!697524)))

(assert (=> b!2228678 (= tp!697366 e!1424429)))

(declare-fun b!2228848 () Bool)

(assert (=> b!2228848 (= e!1424429 tp_is_empty!10035)))

(declare-fun b!2228851 () Bool)

(declare-fun tp!697521 () Bool)

(declare-fun tp!697522 () Bool)

(assert (=> b!2228851 (= e!1424429 (and tp!697521 tp!697522))))

(assert (= (and b!2228678 ((_ is ElementMatch!6405) (regTwo!13322 (regTwo!13323 expr!64)))) b!2228848))

(assert (= (and b!2228678 ((_ is Concat!10743) (regTwo!13322 (regTwo!13323 expr!64)))) b!2228849))

(assert (= (and b!2228678 ((_ is Star!6405) (regTwo!13322 (regTwo!13323 expr!64)))) b!2228850))

(assert (= (and b!2228678 ((_ is Union!6405) (regTwo!13322 (regTwo!13323 expr!64)))) b!2228851))

(declare-fun b!2228853 () Bool)

(declare-fun e!1424430 () Bool)

(declare-fun tp!697530 () Bool)

(declare-fun tp!697528 () Bool)

(assert (=> b!2228853 (= e!1424430 (and tp!697530 tp!697528))))

(declare-fun b!2228854 () Bool)

(declare-fun tp!697529 () Bool)

(assert (=> b!2228854 (= e!1424430 tp!697529)))

(assert (=> b!2228728 (= tp!697433 e!1424430)))

(declare-fun b!2228852 () Bool)

(assert (=> b!2228852 (= e!1424430 tp_is_empty!10035)))

(declare-fun b!2228855 () Bool)

(declare-fun tp!697526 () Bool)

(declare-fun tp!697527 () Bool)

(assert (=> b!2228855 (= e!1424430 (and tp!697526 tp!697527))))

(assert (= (and b!2228728 ((_ is ElementMatch!6405) (regOne!13323 (reg!6734 expr!64)))) b!2228852))

(assert (= (and b!2228728 ((_ is Concat!10743) (regOne!13323 (reg!6734 expr!64)))) b!2228853))

(assert (= (and b!2228728 ((_ is Star!6405) (regOne!13323 (reg!6734 expr!64)))) b!2228854))

(assert (= (and b!2228728 ((_ is Union!6405) (regOne!13323 (reg!6734 expr!64)))) b!2228855))

(declare-fun b!2228857 () Bool)

(declare-fun e!1424431 () Bool)

(declare-fun tp!697535 () Bool)

(declare-fun tp!697533 () Bool)

(assert (=> b!2228857 (= e!1424431 (and tp!697535 tp!697533))))

(declare-fun b!2228858 () Bool)

(declare-fun tp!697534 () Bool)

(assert (=> b!2228858 (= e!1424431 tp!697534)))

(assert (=> b!2228728 (= tp!697434 e!1424431)))

(declare-fun b!2228856 () Bool)

(assert (=> b!2228856 (= e!1424431 tp_is_empty!10035)))

(declare-fun b!2228859 () Bool)

(declare-fun tp!697531 () Bool)

(declare-fun tp!697532 () Bool)

(assert (=> b!2228859 (= e!1424431 (and tp!697531 tp!697532))))

(assert (= (and b!2228728 ((_ is ElementMatch!6405) (regTwo!13323 (reg!6734 expr!64)))) b!2228856))

(assert (= (and b!2228728 ((_ is Concat!10743) (regTwo!13323 (reg!6734 expr!64)))) b!2228857))

(assert (= (and b!2228728 ((_ is Star!6405) (regTwo!13323 (reg!6734 expr!64)))) b!2228858))

(assert (= (and b!2228728 ((_ is Union!6405) (regTwo!13323 (reg!6734 expr!64)))) b!2228859))

(declare-fun b!2228861 () Bool)

(declare-fun e!1424432 () Bool)

(declare-fun tp!697540 () Bool)

(declare-fun tp!697538 () Bool)

(assert (=> b!2228861 (= e!1424432 (and tp!697540 tp!697538))))

(declare-fun b!2228862 () Bool)

(declare-fun tp!697539 () Bool)

(assert (=> b!2228862 (= e!1424432 tp!697539)))

(assert (=> b!2228727 (= tp!697436 e!1424432)))

(declare-fun b!2228860 () Bool)

(assert (=> b!2228860 (= e!1424432 tp_is_empty!10035)))

(declare-fun b!2228863 () Bool)

(declare-fun tp!697536 () Bool)

(declare-fun tp!697537 () Bool)

(assert (=> b!2228863 (= e!1424432 (and tp!697536 tp!697537))))

(assert (= (and b!2228727 ((_ is ElementMatch!6405) (reg!6734 (reg!6734 expr!64)))) b!2228860))

(assert (= (and b!2228727 ((_ is Concat!10743) (reg!6734 (reg!6734 expr!64)))) b!2228861))

(assert (= (and b!2228727 ((_ is Star!6405) (reg!6734 (reg!6734 expr!64)))) b!2228862))

(assert (= (and b!2228727 ((_ is Union!6405) (reg!6734 (reg!6734 expr!64)))) b!2228863))

(declare-fun b!2228865 () Bool)

(declare-fun e!1424433 () Bool)

(declare-fun tp!697545 () Bool)

(declare-fun tp!697543 () Bool)

(assert (=> b!2228865 (= e!1424433 (and tp!697545 tp!697543))))

(declare-fun b!2228866 () Bool)

(declare-fun tp!697544 () Bool)

(assert (=> b!2228866 (= e!1424433 tp!697544)))

(assert (=> b!2228718 (= tp!697427 e!1424433)))

(declare-fun b!2228864 () Bool)

(assert (=> b!2228864 (= e!1424433 tp_is_empty!10035)))

(declare-fun b!2228867 () Bool)

(declare-fun tp!697541 () Bool)

(declare-fun tp!697542 () Bool)

(assert (=> b!2228867 (= e!1424433 (and tp!697541 tp!697542))))

(assert (= (and b!2228718 ((_ is ElementMatch!6405) (regOne!13322 (regOne!13322 expr!64)))) b!2228864))

(assert (= (and b!2228718 ((_ is Concat!10743) (regOne!13322 (regOne!13322 expr!64)))) b!2228865))

(assert (= (and b!2228718 ((_ is Star!6405) (regOne!13322 (regOne!13322 expr!64)))) b!2228866))

(assert (= (and b!2228718 ((_ is Union!6405) (regOne!13322 (regOne!13322 expr!64)))) b!2228867))

(declare-fun b!2228869 () Bool)

(declare-fun e!1424434 () Bool)

(declare-fun tp!697550 () Bool)

(declare-fun tp!697548 () Bool)

(assert (=> b!2228869 (= e!1424434 (and tp!697550 tp!697548))))

(declare-fun b!2228870 () Bool)

(declare-fun tp!697549 () Bool)

(assert (=> b!2228870 (= e!1424434 tp!697549)))

(assert (=> b!2228718 (= tp!697425 e!1424434)))

(declare-fun b!2228868 () Bool)

(assert (=> b!2228868 (= e!1424434 tp_is_empty!10035)))

(declare-fun b!2228871 () Bool)

(declare-fun tp!697546 () Bool)

(declare-fun tp!697547 () Bool)

(assert (=> b!2228871 (= e!1424434 (and tp!697546 tp!697547))))

(assert (= (and b!2228718 ((_ is ElementMatch!6405) (regTwo!13322 (regOne!13322 expr!64)))) b!2228868))

(assert (= (and b!2228718 ((_ is Concat!10743) (regTwo!13322 (regOne!13322 expr!64)))) b!2228869))

(assert (= (and b!2228718 ((_ is Star!6405) (regTwo!13322 (regOne!13322 expr!64)))) b!2228870))

(assert (= (and b!2228718 ((_ is Union!6405) (regTwo!13322 (regOne!13322 expr!64)))) b!2228871))

(declare-fun b!2228873 () Bool)

(declare-fun e!1424435 () Bool)

(declare-fun tp!697555 () Bool)

(declare-fun tp!697553 () Bool)

(assert (=> b!2228873 (= e!1424435 (and tp!697555 tp!697553))))

(declare-fun b!2228874 () Bool)

(declare-fun tp!697554 () Bool)

(assert (=> b!2228874 (= e!1424435 tp!697554)))

(assert (=> b!2228736 (= tp!697449 e!1424435)))

(declare-fun b!2228872 () Bool)

(assert (=> b!2228872 (= e!1424435 tp_is_empty!10035)))

(declare-fun b!2228875 () Bool)

(declare-fun tp!697551 () Bool)

(declare-fun tp!697552 () Bool)

(assert (=> b!2228875 (= e!1424435 (and tp!697551 tp!697552))))

(assert (= (and b!2228736 ((_ is ElementMatch!6405) (_1!15176 (_1!15177 (h!31590 mapDefault!14329))))) b!2228872))

(assert (= (and b!2228736 ((_ is Concat!10743) (_1!15176 (_1!15177 (h!31590 mapDefault!14329))))) b!2228873))

(assert (= (and b!2228736 ((_ is Star!6405) (_1!15176 (_1!15177 (h!31590 mapDefault!14329))))) b!2228874))

(assert (= (and b!2228736 ((_ is Union!6405) (_1!15176 (_1!15177 (h!31590 mapDefault!14329))))) b!2228875))

(declare-fun b!2228876 () Bool)

(declare-fun e!1424438 () Bool)

(declare-fun tp!697559 () Bool)

(assert (=> b!2228876 (= e!1424438 tp!697559)))

(declare-fun setIsEmpty!19983 () Bool)

(declare-fun setRes!19983 () Bool)

(assert (=> setIsEmpty!19983 setRes!19983))

(declare-fun e!1424437 () Bool)

(assert (=> b!2228736 (= tp!697452 e!1424437)))

(declare-fun tp!697560 () Bool)

(declare-fun b!2228877 () Bool)

(declare-fun tp!697557 () Bool)

(assert (=> b!2228877 (= e!1424437 (and tp!697557 (inv!35559 (_2!15176 (_1!15177 (h!31590 (t!199697 mapDefault!14329))))) e!1424438 tp_is_empty!10035 setRes!19983 tp!697560))))

(declare-fun condSetEmpty!19983 () Bool)

(assert (=> b!2228877 (= condSetEmpty!19983 (= (_2!15177 (h!31590 (t!199697 mapDefault!14329))) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun b!2228878 () Bool)

(declare-fun e!1424436 () Bool)

(declare-fun tp!697558 () Bool)

(assert (=> b!2228878 (= e!1424436 tp!697558)))

(declare-fun tp!697556 () Bool)

(declare-fun setNonEmpty!19983 () Bool)

(declare-fun setElem!19983 () Context!3906)

(assert (=> setNonEmpty!19983 (= setRes!19983 (and tp!697556 (inv!35559 setElem!19983) e!1424436))))

(declare-fun setRest!19983 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19983 (= (_2!15177 (h!31590 (t!199697 mapDefault!14329))) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19983 true) setRest!19983))))

(assert (= b!2228877 b!2228876))

(assert (= (and b!2228877 condSetEmpty!19983) setIsEmpty!19983))

(assert (= (and b!2228877 (not condSetEmpty!19983)) setNonEmpty!19983))

(assert (= setNonEmpty!19983 b!2228878))

(assert (= (and b!2228736 ((_ is Cons!26189) (t!199697 mapDefault!14329))) b!2228877))

(declare-fun m!2666759 () Bool)

(assert (=> b!2228877 m!2666759))

(declare-fun m!2666761 () Bool)

(assert (=> setNonEmpty!19983 m!2666761))

(declare-fun b!2228880 () Bool)

(declare-fun e!1424439 () Bool)

(declare-fun tp!697565 () Bool)

(declare-fun tp!697563 () Bool)

(assert (=> b!2228880 (= e!1424439 (and tp!697565 tp!697563))))

(declare-fun b!2228881 () Bool)

(declare-fun tp!697564 () Bool)

(assert (=> b!2228881 (= e!1424439 tp!697564)))

(assert (=> b!2228733 (= tp!697444 e!1424439)))

(declare-fun b!2228879 () Bool)

(assert (=> b!2228879 (= e!1424439 tp_is_empty!10035)))

(declare-fun b!2228882 () Bool)

(declare-fun tp!697561 () Bool)

(declare-fun tp!697562 () Bool)

(assert (=> b!2228882 (= e!1424439 (and tp!697561 tp!697562))))

(assert (= (and b!2228733 ((_ is ElementMatch!6405) (_1!15176 (_1!15177 (h!31590 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))))) b!2228879))

(assert (= (and b!2228733 ((_ is Concat!10743) (_1!15176 (_1!15177 (h!31590 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))))) b!2228880))

(assert (= (and b!2228733 ((_ is Star!6405) (_1!15176 (_1!15177 (h!31590 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))))) b!2228881))

(assert (= (and b!2228733 ((_ is Union!6405) (_1!15176 (_1!15177 (h!31590 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))))) b!2228882))

(declare-fun b!2228883 () Bool)

(declare-fun e!1424442 () Bool)

(declare-fun tp!697569 () Bool)

(assert (=> b!2228883 (= e!1424442 tp!697569)))

(declare-fun setIsEmpty!19984 () Bool)

(declare-fun setRes!19984 () Bool)

(assert (=> setIsEmpty!19984 setRes!19984))

(declare-fun e!1424441 () Bool)

(assert (=> b!2228733 (= tp!697447 e!1424441)))

(declare-fun tp!697570 () Bool)

(declare-fun b!2228884 () Bool)

(declare-fun tp!697567 () Bool)

(assert (=> b!2228884 (= e!1424441 (and tp!697567 (inv!35559 (_2!15176 (_1!15177 (h!31590 (t!199697 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))))) e!1424442 tp_is_empty!10035 setRes!19984 tp!697570))))

(declare-fun condSetEmpty!19984 () Bool)

(assert (=> b!2228884 (= condSetEmpty!19984 (= (_2!15177 (h!31590 (t!199697 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun b!2228885 () Bool)

(declare-fun e!1424440 () Bool)

(declare-fun tp!697568 () Bool)

(assert (=> b!2228885 (= e!1424440 tp!697568)))

(declare-fun tp!697566 () Bool)

(declare-fun setNonEmpty!19984 () Bool)

(declare-fun setElem!19984 () Context!3906)

(assert (=> setNonEmpty!19984 (= setRes!19984 (and tp!697566 (inv!35559 setElem!19984) e!1424440))))

(declare-fun setRest!19984 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19984 (= (_2!15177 (h!31590 (t!199697 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19984 true) setRest!19984))))

(assert (= b!2228884 b!2228883))

(assert (= (and b!2228884 condSetEmpty!19984) setIsEmpty!19984))

(assert (= (and b!2228884 (not condSetEmpty!19984)) setNonEmpty!19984))

(assert (= setNonEmpty!19984 b!2228885))

(assert (= (and b!2228733 ((_ is Cons!26189) (t!199697 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))) b!2228884))

(declare-fun m!2666763 () Bool)

(assert (=> b!2228884 m!2666763))

(declare-fun m!2666765 () Bool)

(assert (=> setNonEmpty!19984 m!2666765))

(declare-fun b!2228886 () Bool)

(declare-fun e!1424443 () Bool)

(declare-fun tp!697571 () Bool)

(declare-fun tp!697572 () Bool)

(assert (=> b!2228886 (= e!1424443 (and tp!697571 tp!697572))))

(assert (=> b!2228729 (= tp!697441 e!1424443)))

(assert (= (and b!2228729 ((_ is Cons!26188) (exprs!2453 (_2!15176 (_1!15177 (h!31590 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))))))) b!2228886))

(declare-fun b!2228888 () Bool)

(declare-fun e!1424444 () Bool)

(declare-fun tp!697577 () Bool)

(declare-fun tp!697575 () Bool)

(assert (=> b!2228888 (= e!1424444 (and tp!697577 tp!697575))))

(declare-fun b!2228889 () Bool)

(declare-fun tp!697576 () Bool)

(assert (=> b!2228889 (= e!1424444 tp!697576)))

(assert (=> b!2228676 (= tp!697359 e!1424444)))

(declare-fun b!2228887 () Bool)

(assert (=> b!2228887 (= e!1424444 tp_is_empty!10035)))

(declare-fun b!2228890 () Bool)

(declare-fun tp!697573 () Bool)

(declare-fun tp!697574 () Bool)

(assert (=> b!2228890 (= e!1424444 (and tp!697573 tp!697574))))

(assert (= (and b!2228676 ((_ is ElementMatch!6405) (regOne!13323 (regOne!13323 expr!64)))) b!2228887))

(assert (= (and b!2228676 ((_ is Concat!10743) (regOne!13323 (regOne!13323 expr!64)))) b!2228888))

(assert (= (and b!2228676 ((_ is Star!6405) (regOne!13323 (regOne!13323 expr!64)))) b!2228889))

(assert (= (and b!2228676 ((_ is Union!6405) (regOne!13323 (regOne!13323 expr!64)))) b!2228890))

(declare-fun b!2228892 () Bool)

(declare-fun e!1424445 () Bool)

(declare-fun tp!697582 () Bool)

(declare-fun tp!697580 () Bool)

(assert (=> b!2228892 (= e!1424445 (and tp!697582 tp!697580))))

(declare-fun b!2228893 () Bool)

(declare-fun tp!697581 () Bool)

(assert (=> b!2228893 (= e!1424445 tp!697581)))

(assert (=> b!2228676 (= tp!697360 e!1424445)))

(declare-fun b!2228891 () Bool)

(assert (=> b!2228891 (= e!1424445 tp_is_empty!10035)))

(declare-fun b!2228894 () Bool)

(declare-fun tp!697578 () Bool)

(declare-fun tp!697579 () Bool)

(assert (=> b!2228894 (= e!1424445 (and tp!697578 tp!697579))))

(assert (= (and b!2228676 ((_ is ElementMatch!6405) (regTwo!13323 (regOne!13323 expr!64)))) b!2228891))

(assert (= (and b!2228676 ((_ is Concat!10743) (regTwo!13323 (regOne!13323 expr!64)))) b!2228892))

(assert (= (and b!2228676 ((_ is Star!6405) (regTwo!13323 (regOne!13323 expr!64)))) b!2228893))

(assert (= (and b!2228676 ((_ is Union!6405) (regTwo!13323 (regOne!13323 expr!64)))) b!2228894))

(declare-fun b!2228896 () Bool)

(declare-fun e!1424446 () Bool)

(declare-fun tp!697587 () Bool)

(declare-fun tp!697585 () Bool)

(assert (=> b!2228896 (= e!1424446 (and tp!697587 tp!697585))))

(declare-fun b!2228897 () Bool)

(declare-fun tp!697586 () Bool)

(assert (=> b!2228897 (= e!1424446 tp!697586)))

(assert (=> b!2228675 (= tp!697362 e!1424446)))

(declare-fun b!2228895 () Bool)

(assert (=> b!2228895 (= e!1424446 tp_is_empty!10035)))

(declare-fun b!2228898 () Bool)

(declare-fun tp!697583 () Bool)

(declare-fun tp!697584 () Bool)

(assert (=> b!2228898 (= e!1424446 (and tp!697583 tp!697584))))

(assert (= (and b!2228675 ((_ is ElementMatch!6405) (reg!6734 (regOne!13323 expr!64)))) b!2228895))

(assert (= (and b!2228675 ((_ is Concat!10743) (reg!6734 (regOne!13323 expr!64)))) b!2228896))

(assert (= (and b!2228675 ((_ is Star!6405) (reg!6734 (regOne!13323 expr!64)))) b!2228897))

(assert (= (and b!2228675 ((_ is Union!6405) (reg!6734 (regOne!13323 expr!64)))) b!2228898))

(declare-fun b!2228899 () Bool)

(declare-fun e!1424447 () Bool)

(declare-fun tp!697588 () Bool)

(declare-fun tp!697589 () Bool)

(assert (=> b!2228899 (= e!1424447 (and tp!697588 tp!697589))))

(assert (=> b!2228735 (= tp!697451 e!1424447)))

(assert (= (and b!2228735 ((_ is Cons!26188) (exprs!2453 (_2!15176 (_1!15177 (h!31590 mapDefault!14329)))))) b!2228899))

(declare-fun b!2228900 () Bool)

(declare-fun e!1424448 () Bool)

(declare-fun tp!697590 () Bool)

(declare-fun tp!697591 () Bool)

(assert (=> b!2228900 (= e!1424448 (and tp!697590 tp!697591))))

(assert (=> b!2228732 (= tp!697446 e!1424448)))

(assert (= (and b!2228732 ((_ is Cons!26188) (exprs!2453 (_2!15176 (_1!15177 (h!31590 (minValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839)))))))))))) b!2228900))

(declare-fun b!2228901 () Bool)

(declare-fun e!1424449 () Bool)

(declare-fun tp!697592 () Bool)

(declare-fun tp!697593 () Bool)

(assert (=> b!2228901 (= e!1424449 (and tp!697592 tp!697593))))

(assert (=> b!2228701 (= tp!697403 e!1424449)))

(assert (= (and b!2228701 ((_ is Cons!26188) (exprs!2453 (_2!15176 (_1!15177 (h!31590 mapValue!14332)))))) b!2228901))

(declare-fun condSetEmpty!19985 () Bool)

(assert (=> setNonEmpty!19972 (= condSetEmpty!19985 (= setRest!19972 ((as const (Array Context!3906 Bool)) false)))))

(declare-fun setRes!19985 () Bool)

(assert (=> setNonEmpty!19972 (= tp!697438 setRes!19985)))

(declare-fun setIsEmpty!19985 () Bool)

(assert (=> setIsEmpty!19985 setRes!19985))

(declare-fun tp!697595 () Bool)

(declare-fun setElem!19985 () Context!3906)

(declare-fun e!1424450 () Bool)

(declare-fun setNonEmpty!19985 () Bool)

(assert (=> setNonEmpty!19985 (= setRes!19985 (and tp!697595 (inv!35559 setElem!19985) e!1424450))))

(declare-fun setRest!19985 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19985 (= setRest!19972 ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19985 true) setRest!19985))))

(declare-fun b!2228902 () Bool)

(declare-fun tp!697594 () Bool)

(assert (=> b!2228902 (= e!1424450 tp!697594)))

(assert (= (and setNonEmpty!19972 condSetEmpty!19985) setIsEmpty!19985))

(assert (= (and setNonEmpty!19972 (not condSetEmpty!19985)) setNonEmpty!19985))

(assert (= setNonEmpty!19985 b!2228902))

(declare-fun m!2666767 () Bool)

(assert (=> setNonEmpty!19985 m!2666767))

(declare-fun condSetEmpty!19986 () Bool)

(assert (=> setNonEmpty!19974 (= condSetEmpty!19986 (= setRest!19974 ((as const (Array Context!3906 Bool)) false)))))

(declare-fun setRes!19986 () Bool)

(assert (=> setNonEmpty!19974 (= tp!697448 setRes!19986)))

(declare-fun setIsEmpty!19986 () Bool)

(assert (=> setIsEmpty!19986 setRes!19986))

(declare-fun e!1424451 () Bool)

(declare-fun setElem!19986 () Context!3906)

(declare-fun setNonEmpty!19986 () Bool)

(declare-fun tp!697597 () Bool)

(assert (=> setNonEmpty!19986 (= setRes!19986 (and tp!697597 (inv!35559 setElem!19986) e!1424451))))

(declare-fun setRest!19986 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19986 (= setRest!19974 ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19986 true) setRest!19986))))

(declare-fun b!2228903 () Bool)

(declare-fun tp!697596 () Bool)

(assert (=> b!2228903 (= e!1424451 tp!697596)))

(assert (= (and setNonEmpty!19974 condSetEmpty!19986) setIsEmpty!19986))

(assert (= (and setNonEmpty!19974 (not condSetEmpty!19986)) setNonEmpty!19986))

(assert (= setNonEmpty!19986 b!2228903))

(declare-fun m!2666769 () Bool)

(assert (=> setNonEmpty!19986 m!2666769))

(declare-fun condSetEmpty!19987 () Bool)

(assert (=> setNonEmpty!19973 (= condSetEmpty!19987 (= setRest!19973 ((as const (Array Context!3906 Bool)) false)))))

(declare-fun setRes!19987 () Bool)

(assert (=> setNonEmpty!19973 (= tp!697443 setRes!19987)))

(declare-fun setIsEmpty!19987 () Bool)

(assert (=> setIsEmpty!19987 setRes!19987))

(declare-fun setElem!19987 () Context!3906)

(declare-fun setNonEmpty!19987 () Bool)

(declare-fun tp!697599 () Bool)

(declare-fun e!1424452 () Bool)

(assert (=> setNonEmpty!19987 (= setRes!19987 (and tp!697599 (inv!35559 setElem!19987) e!1424452))))

(declare-fun setRest!19987 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19987 (= setRest!19973 ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19987 true) setRest!19987))))

(declare-fun b!2228904 () Bool)

(declare-fun tp!697598 () Bool)

(assert (=> b!2228904 (= e!1424452 tp!697598)))

(assert (= (and setNonEmpty!19973 condSetEmpty!19987) setIsEmpty!19987))

(assert (= (and setNonEmpty!19973 (not condSetEmpty!19987)) setNonEmpty!19987))

(assert (= setNonEmpty!19987 b!2228904))

(declare-fun m!2666771 () Bool)

(assert (=> setNonEmpty!19987 m!2666771))

(declare-fun b!2228905 () Bool)

(declare-fun e!1424453 () Bool)

(declare-fun tp!697600 () Bool)

(declare-fun tp!697601 () Bool)

(assert (=> b!2228905 (= e!1424453 (and tp!697600 tp!697601))))

(assert (=> b!2228734 (= tp!697445 e!1424453)))

(assert (= (and b!2228734 ((_ is Cons!26188) (exprs!2453 setElem!19973))) b!2228905))

(declare-fun b!2228907 () Bool)

(declare-fun e!1424454 () Bool)

(declare-fun tp!697606 () Bool)

(declare-fun tp!697604 () Bool)

(assert (=> b!2228907 (= e!1424454 (and tp!697606 tp!697604))))

(declare-fun b!2228908 () Bool)

(declare-fun tp!697605 () Bool)

(assert (=> b!2228908 (= e!1424454 tp!697605)))

(assert (=> b!2228700 (= tp!697406 e!1424454)))

(declare-fun b!2228906 () Bool)

(assert (=> b!2228906 (= e!1424454 tp_is_empty!10035)))

(declare-fun b!2228909 () Bool)

(declare-fun tp!697602 () Bool)

(declare-fun tp!697603 () Bool)

(assert (=> b!2228909 (= e!1424454 (and tp!697602 tp!697603))))

(assert (= (and b!2228700 ((_ is ElementMatch!6405) (_1!15176 (_1!15177 (h!31590 mapDefault!14332))))) b!2228906))

(assert (= (and b!2228700 ((_ is Concat!10743) (_1!15176 (_1!15177 (h!31590 mapDefault!14332))))) b!2228907))

(assert (= (and b!2228700 ((_ is Star!6405) (_1!15176 (_1!15177 (h!31590 mapDefault!14332))))) b!2228908))

(assert (= (and b!2228700 ((_ is Union!6405) (_1!15176 (_1!15177 (h!31590 mapDefault!14332))))) b!2228909))

(declare-fun b!2228910 () Bool)

(declare-fun e!1424457 () Bool)

(declare-fun tp!697610 () Bool)

(assert (=> b!2228910 (= e!1424457 tp!697610)))

(declare-fun setIsEmpty!19988 () Bool)

(declare-fun setRes!19988 () Bool)

(assert (=> setIsEmpty!19988 setRes!19988))

(declare-fun e!1424456 () Bool)

(assert (=> b!2228700 (= tp!697401 e!1424456)))

(declare-fun b!2228911 () Bool)

(declare-fun tp!697608 () Bool)

(declare-fun tp!697611 () Bool)

(assert (=> b!2228911 (= e!1424456 (and tp!697608 (inv!35559 (_2!15176 (_1!15177 (h!31590 (t!199697 mapDefault!14332))))) e!1424457 tp_is_empty!10035 setRes!19988 tp!697611))))

(declare-fun condSetEmpty!19988 () Bool)

(assert (=> b!2228911 (= condSetEmpty!19988 (= (_2!15177 (h!31590 (t!199697 mapDefault!14332))) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun b!2228912 () Bool)

(declare-fun e!1424455 () Bool)

(declare-fun tp!697609 () Bool)

(assert (=> b!2228912 (= e!1424455 tp!697609)))

(declare-fun setElem!19988 () Context!3906)

(declare-fun setNonEmpty!19988 () Bool)

(declare-fun tp!697607 () Bool)

(assert (=> setNonEmpty!19988 (= setRes!19988 (and tp!697607 (inv!35559 setElem!19988) e!1424455))))

(declare-fun setRest!19988 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19988 (= (_2!15177 (h!31590 (t!199697 mapDefault!14332))) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19988 true) setRest!19988))))

(assert (= b!2228911 b!2228910))

(assert (= (and b!2228911 condSetEmpty!19988) setIsEmpty!19988))

(assert (= (and b!2228911 (not condSetEmpty!19988)) setNonEmpty!19988))

(assert (= setNonEmpty!19988 b!2228912))

(assert (= (and b!2228700 ((_ is Cons!26189) (t!199697 mapDefault!14332))) b!2228911))

(declare-fun m!2666773 () Bool)

(assert (=> b!2228911 m!2666773))

(declare-fun m!2666775 () Bool)

(assert (=> setNonEmpty!19988 m!2666775))

(declare-fun b!2228913 () Bool)

(declare-fun e!1424458 () Bool)

(declare-fun tp!697612 () Bool)

(declare-fun tp!697613 () Bool)

(assert (=> b!2228913 (= e!1424458 (and tp!697612 tp!697613))))

(assert (=> b!2228731 (= tp!697440 e!1424458)))

(assert (= (and b!2228731 ((_ is Cons!26188) (exprs!2453 setElem!19972))) b!2228913))

(declare-fun b!2228915 () Bool)

(declare-fun e!1424459 () Bool)

(declare-fun tp!697618 () Bool)

(declare-fun tp!697616 () Bool)

(assert (=> b!2228915 (= e!1424459 (and tp!697618 tp!697616))))

(declare-fun b!2228916 () Bool)

(declare-fun tp!697617 () Bool)

(assert (=> b!2228916 (= e!1424459 tp!697617)))

(assert (=> b!2228730 (= tp!697439 e!1424459)))

(declare-fun b!2228914 () Bool)

(assert (=> b!2228914 (= e!1424459 tp_is_empty!10035)))

(declare-fun b!2228917 () Bool)

(declare-fun tp!697614 () Bool)

(declare-fun tp!697615 () Bool)

(assert (=> b!2228917 (= e!1424459 (and tp!697614 tp!697615))))

(assert (= (and b!2228730 ((_ is ElementMatch!6405) (_1!15176 (_1!15177 (h!31590 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))))) b!2228914))

(assert (= (and b!2228730 ((_ is Concat!10743) (_1!15176 (_1!15177 (h!31590 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))))) b!2228915))

(assert (= (and b!2228730 ((_ is Star!6405) (_1!15176 (_1!15177 (h!31590 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))))) b!2228916))

(assert (= (and b!2228730 ((_ is Union!6405) (_1!15176 (_1!15177 (h!31590 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))))) b!2228917))

(declare-fun b!2228918 () Bool)

(declare-fun e!1424462 () Bool)

(declare-fun tp!697622 () Bool)

(assert (=> b!2228918 (= e!1424462 tp!697622)))

(declare-fun setIsEmpty!19989 () Bool)

(declare-fun setRes!19989 () Bool)

(assert (=> setIsEmpty!19989 setRes!19989))

(declare-fun e!1424461 () Bool)

(assert (=> b!2228730 (= tp!697442 e!1424461)))

(declare-fun tp!697623 () Bool)

(declare-fun b!2228919 () Bool)

(declare-fun tp!697620 () Bool)

(assert (=> b!2228919 (= e!1424461 (and tp!697620 (inv!35559 (_2!15176 (_1!15177 (h!31590 (t!199697 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))))) e!1424462 tp_is_empty!10035 setRes!19989 tp!697623))))

(declare-fun condSetEmpty!19989 () Bool)

(assert (=> b!2228919 (= condSetEmpty!19989 (= (_2!15177 (h!31590 (t!199697 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun b!2228920 () Bool)

(declare-fun e!1424460 () Bool)

(declare-fun tp!697621 () Bool)

(assert (=> b!2228920 (= e!1424460 tp!697621)))

(declare-fun tp!697619 () Bool)

(declare-fun setNonEmpty!19989 () Bool)

(declare-fun setElem!19989 () Context!3906)

(assert (=> setNonEmpty!19989 (= setRes!19989 (and tp!697619 (inv!35559 setElem!19989) e!1424460))))

(declare-fun setRest!19989 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19989 (= (_2!15177 (h!31590 (t!199697 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19989 true) setRest!19989))))

(assert (= b!2228919 b!2228918))

(assert (= (and b!2228919 condSetEmpty!19989) setIsEmpty!19989))

(assert (= (and b!2228919 (not condSetEmpty!19989)) setNonEmpty!19989))

(assert (= setNonEmpty!19989 b!2228920))

(assert (= (and b!2228730 ((_ is Cons!26189) (t!199697 (zeroValue!3301 (v!29769 (underlying!6287 (v!29770 (underlying!6288 (cache!3334 cacheDown!839))))))))) b!2228919))

(declare-fun m!2666777 () Bool)

(assert (=> b!2228919 m!2666777))

(declare-fun m!2666779 () Bool)

(assert (=> setNonEmpty!19989 m!2666779))

(declare-fun b!2228921 () Bool)

(declare-fun e!1424463 () Bool)

(declare-fun tp!697624 () Bool)

(declare-fun tp!697625 () Bool)

(assert (=> b!2228921 (= e!1424463 (and tp!697624 tp!697625))))

(assert (=> b!2228737 (= tp!697450 e!1424463)))

(assert (= (and b!2228737 ((_ is Cons!26188) (exprs!2453 setElem!19974))) b!2228921))

(declare-fun b!2228923 () Bool)

(declare-fun e!1424464 () Bool)

(declare-fun tp!697630 () Bool)

(declare-fun tp!697628 () Bool)

(assert (=> b!2228923 (= e!1424464 (and tp!697630 tp!697628))))

(declare-fun b!2228924 () Bool)

(declare-fun tp!697629 () Bool)

(assert (=> b!2228924 (= e!1424464 tp!697629)))

(assert (=> b!2228722 (= tp!697432 e!1424464)))

(declare-fun b!2228922 () Bool)

(assert (=> b!2228922 (= e!1424464 tp_is_empty!10035)))

(declare-fun b!2228925 () Bool)

(declare-fun tp!697626 () Bool)

(declare-fun tp!697627 () Bool)

(assert (=> b!2228925 (= e!1424464 (and tp!697626 tp!697627))))

(assert (= (and b!2228722 ((_ is ElementMatch!6405) (regOne!13322 (regTwo!13322 expr!64)))) b!2228922))

(assert (= (and b!2228722 ((_ is Concat!10743) (regOne!13322 (regTwo!13322 expr!64)))) b!2228923))

(assert (= (and b!2228722 ((_ is Star!6405) (regOne!13322 (regTwo!13322 expr!64)))) b!2228924))

(assert (= (and b!2228722 ((_ is Union!6405) (regOne!13322 (regTwo!13322 expr!64)))) b!2228925))

(declare-fun b!2228927 () Bool)

(declare-fun e!1424465 () Bool)

(declare-fun tp!697635 () Bool)

(declare-fun tp!697633 () Bool)

(assert (=> b!2228927 (= e!1424465 (and tp!697635 tp!697633))))

(declare-fun b!2228928 () Bool)

(declare-fun tp!697634 () Bool)

(assert (=> b!2228928 (= e!1424465 tp!697634)))

(assert (=> b!2228722 (= tp!697430 e!1424465)))

(declare-fun b!2228926 () Bool)

(assert (=> b!2228926 (= e!1424465 tp_is_empty!10035)))

(declare-fun b!2228929 () Bool)

(declare-fun tp!697631 () Bool)

(declare-fun tp!697632 () Bool)

(assert (=> b!2228929 (= e!1424465 (and tp!697631 tp!697632))))

(assert (= (and b!2228722 ((_ is ElementMatch!6405) (regTwo!13322 (regTwo!13322 expr!64)))) b!2228926))

(assert (= (and b!2228722 ((_ is Concat!10743) (regTwo!13322 (regTwo!13322 expr!64)))) b!2228927))

(assert (= (and b!2228722 ((_ is Star!6405) (regTwo!13322 (regTwo!13322 expr!64)))) b!2228928))

(assert (= (and b!2228722 ((_ is Union!6405) (regTwo!13322 (regTwo!13322 expr!64)))) b!2228929))

(declare-fun condSetEmpty!19990 () Bool)

(assert (=> setNonEmpty!19971 (= condSetEmpty!19990 (= setRest!19971 ((as const (Array Context!3906 Bool)) false)))))

(declare-fun setRes!19990 () Bool)

(assert (=> setNonEmpty!19971 (= tp!697418 setRes!19990)))

(declare-fun setIsEmpty!19990 () Bool)

(assert (=> setIsEmpty!19990 setRes!19990))

(declare-fun setElem!19990 () Context!3906)

(declare-fun tp!697637 () Bool)

(declare-fun setNonEmpty!19990 () Bool)

(declare-fun e!1424466 () Bool)

(assert (=> setNonEmpty!19990 (= setRes!19990 (and tp!697637 (inv!35559 setElem!19990) e!1424466))))

(declare-fun setRest!19990 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19990 (= setRest!19971 ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19990 true) setRest!19990))))

(declare-fun b!2228930 () Bool)

(declare-fun tp!697636 () Bool)

(assert (=> b!2228930 (= e!1424466 tp!697636)))

(assert (= (and setNonEmpty!19971 condSetEmpty!19990) setIsEmpty!19990))

(assert (= (and setNonEmpty!19971 (not condSetEmpty!19990)) setNonEmpty!19990))

(assert (= setNonEmpty!19990 b!2228930))

(declare-fun m!2666781 () Bool)

(assert (=> setNonEmpty!19990 m!2666781))

(declare-fun b!2228931 () Bool)

(declare-fun e!1424467 () Bool)

(declare-fun tp!697638 () Bool)

(declare-fun tp!697639 () Bool)

(assert (=> b!2228931 (= e!1424467 (and tp!697638 tp!697639))))

(assert (=> b!2228716 (= tp!697420 e!1424467)))

(assert (= (and b!2228716 ((_ is Cons!26188) (exprs!2453 setElem!19971))) b!2228931))

(declare-fun b!2228933 () Bool)

(declare-fun e!1424468 () Bool)

(declare-fun tp!697644 () Bool)

(declare-fun tp!697642 () Bool)

(assert (=> b!2228933 (= e!1424468 (and tp!697644 tp!697642))))

(declare-fun b!2228934 () Bool)

(declare-fun tp!697643 () Bool)

(assert (=> b!2228934 (= e!1424468 tp!697643)))

(assert (=> b!2228674 (= tp!697363 e!1424468)))

(declare-fun b!2228932 () Bool)

(assert (=> b!2228932 (= e!1424468 tp_is_empty!10035)))

(declare-fun b!2228935 () Bool)

(declare-fun tp!697640 () Bool)

(declare-fun tp!697641 () Bool)

(assert (=> b!2228935 (= e!1424468 (and tp!697640 tp!697641))))

(assert (= (and b!2228674 ((_ is ElementMatch!6405) (regOne!13322 (regOne!13323 expr!64)))) b!2228932))

(assert (= (and b!2228674 ((_ is Concat!10743) (regOne!13322 (regOne!13323 expr!64)))) b!2228933))

(assert (= (and b!2228674 ((_ is Star!6405) (regOne!13322 (regOne!13323 expr!64)))) b!2228934))

(assert (= (and b!2228674 ((_ is Union!6405) (regOne!13322 (regOne!13323 expr!64)))) b!2228935))

(declare-fun b!2228937 () Bool)

(declare-fun e!1424469 () Bool)

(declare-fun tp!697649 () Bool)

(declare-fun tp!697647 () Bool)

(assert (=> b!2228937 (= e!1424469 (and tp!697649 tp!697647))))

(declare-fun b!2228938 () Bool)

(declare-fun tp!697648 () Bool)

(assert (=> b!2228938 (= e!1424469 tp!697648)))

(assert (=> b!2228674 (= tp!697361 e!1424469)))

(declare-fun b!2228936 () Bool)

(assert (=> b!2228936 (= e!1424469 tp_is_empty!10035)))

(declare-fun b!2228939 () Bool)

(declare-fun tp!697645 () Bool)

(declare-fun tp!697646 () Bool)

(assert (=> b!2228939 (= e!1424469 (and tp!697645 tp!697646))))

(assert (= (and b!2228674 ((_ is ElementMatch!6405) (regTwo!13322 (regOne!13323 expr!64)))) b!2228936))

(assert (= (and b!2228674 ((_ is Concat!10743) (regTwo!13322 (regOne!13323 expr!64)))) b!2228937))

(assert (= (and b!2228674 ((_ is Star!6405) (regTwo!13322 (regOne!13323 expr!64)))) b!2228938))

(assert (= (and b!2228674 ((_ is Union!6405) (regTwo!13322 (regOne!13323 expr!64)))) b!2228939))

(declare-fun b!2228941 () Bool)

(declare-fun e!1424470 () Bool)

(declare-fun tp!697654 () Bool)

(declare-fun tp!697652 () Bool)

(assert (=> b!2228941 (= e!1424470 (and tp!697654 tp!697652))))

(declare-fun b!2228942 () Bool)

(declare-fun tp!697653 () Bool)

(assert (=> b!2228942 (= e!1424470 tp!697653)))

(assert (=> b!2228724 (= tp!697428 e!1424470)))

(declare-fun b!2228940 () Bool)

(assert (=> b!2228940 (= e!1424470 tp_is_empty!10035)))

(declare-fun b!2228943 () Bool)

(declare-fun tp!697650 () Bool)

(declare-fun tp!697651 () Bool)

(assert (=> b!2228943 (= e!1424470 (and tp!697650 tp!697651))))

(assert (= (and b!2228724 ((_ is ElementMatch!6405) (regOne!13323 (regTwo!13322 expr!64)))) b!2228940))

(assert (= (and b!2228724 ((_ is Concat!10743) (regOne!13323 (regTwo!13322 expr!64)))) b!2228941))

(assert (= (and b!2228724 ((_ is Star!6405) (regOne!13323 (regTwo!13322 expr!64)))) b!2228942))

(assert (= (and b!2228724 ((_ is Union!6405) (regOne!13323 (regTwo!13322 expr!64)))) b!2228943))

(declare-fun b!2228945 () Bool)

(declare-fun e!1424471 () Bool)

(declare-fun tp!697659 () Bool)

(declare-fun tp!697657 () Bool)

(assert (=> b!2228945 (= e!1424471 (and tp!697659 tp!697657))))

(declare-fun b!2228946 () Bool)

(declare-fun tp!697658 () Bool)

(assert (=> b!2228946 (= e!1424471 tp!697658)))

(assert (=> b!2228724 (= tp!697429 e!1424471)))

(declare-fun b!2228944 () Bool)

(assert (=> b!2228944 (= e!1424471 tp_is_empty!10035)))

(declare-fun b!2228947 () Bool)

(declare-fun tp!697655 () Bool)

(declare-fun tp!697656 () Bool)

(assert (=> b!2228947 (= e!1424471 (and tp!697655 tp!697656))))

(assert (= (and b!2228724 ((_ is ElementMatch!6405) (regTwo!13323 (regTwo!13322 expr!64)))) b!2228944))

(assert (= (and b!2228724 ((_ is Concat!10743) (regTwo!13323 (regTwo!13322 expr!64)))) b!2228945))

(assert (= (and b!2228724 ((_ is Star!6405) (regTwo!13323 (regTwo!13322 expr!64)))) b!2228946))

(assert (= (and b!2228724 ((_ is Union!6405) (regTwo!13323 (regTwo!13322 expr!64)))) b!2228947))

(declare-fun b!2228949 () Bool)

(declare-fun e!1424472 () Bool)

(declare-fun tp!697664 () Bool)

(declare-fun tp!697662 () Bool)

(assert (=> b!2228949 (= e!1424472 (and tp!697664 tp!697662))))

(declare-fun b!2228950 () Bool)

(declare-fun tp!697663 () Bool)

(assert (=> b!2228950 (= e!1424472 tp!697663)))

(assert (=> b!2228723 (= tp!697431 e!1424472)))

(declare-fun b!2228948 () Bool)

(assert (=> b!2228948 (= e!1424472 tp_is_empty!10035)))

(declare-fun b!2228951 () Bool)

(declare-fun tp!697660 () Bool)

(declare-fun tp!697661 () Bool)

(assert (=> b!2228951 (= e!1424472 (and tp!697660 tp!697661))))

(assert (= (and b!2228723 ((_ is ElementMatch!6405) (reg!6734 (regTwo!13322 expr!64)))) b!2228948))

(assert (= (and b!2228723 ((_ is Concat!10743) (reg!6734 (regTwo!13322 expr!64)))) b!2228949))

(assert (= (and b!2228723 ((_ is Star!6405) (reg!6734 (regTwo!13322 expr!64)))) b!2228950))

(assert (= (and b!2228723 ((_ is Union!6405) (reg!6734 (regTwo!13322 expr!64)))) b!2228951))

(declare-fun b!2228952 () Bool)

(declare-fun e!1424473 () Bool)

(declare-fun tp!697665 () Bool)

(declare-fun tp!697666 () Bool)

(assert (=> b!2228952 (= e!1424473 (and tp!697665 tp!697666))))

(assert (=> b!2228705 (= tp!697399 e!1424473)))

(assert (= (and b!2228705 ((_ is Cons!26188) (exprs!2453 setElem!19967))) b!2228952))

(declare-fun b!2228953 () Bool)

(declare-fun e!1424474 () Bool)

(declare-fun tp!697667 () Bool)

(declare-fun tp!697668 () Bool)

(assert (=> b!2228953 (= e!1424474 (and tp!697667 tp!697668))))

(assert (=> b!2228704 (= tp!697400 e!1424474)))

(assert (= (and b!2228704 ((_ is Cons!26188) (exprs!2453 setElem!19968))) b!2228953))

(declare-fun b!2228955 () Bool)

(declare-fun e!1424475 () Bool)

(declare-fun tp!697673 () Bool)

(declare-fun tp!697671 () Bool)

(assert (=> b!2228955 (= e!1424475 (and tp!697673 tp!697671))))

(declare-fun b!2228956 () Bool)

(declare-fun tp!697672 () Bool)

(assert (=> b!2228956 (= e!1424475 tp!697672)))

(assert (=> b!2228680 (= tp!697364 e!1424475)))

(declare-fun b!2228954 () Bool)

(assert (=> b!2228954 (= e!1424475 tp_is_empty!10035)))

(declare-fun b!2228957 () Bool)

(declare-fun tp!697669 () Bool)

(declare-fun tp!697670 () Bool)

(assert (=> b!2228957 (= e!1424475 (and tp!697669 tp!697670))))

(assert (= (and b!2228680 ((_ is ElementMatch!6405) (regOne!13323 (regTwo!13323 expr!64)))) b!2228954))

(assert (= (and b!2228680 ((_ is Concat!10743) (regOne!13323 (regTwo!13323 expr!64)))) b!2228955))

(assert (= (and b!2228680 ((_ is Star!6405) (regOne!13323 (regTwo!13323 expr!64)))) b!2228956))

(assert (= (and b!2228680 ((_ is Union!6405) (regOne!13323 (regTwo!13323 expr!64)))) b!2228957))

(declare-fun b!2228959 () Bool)

(declare-fun e!1424476 () Bool)

(declare-fun tp!697678 () Bool)

(declare-fun tp!697676 () Bool)

(assert (=> b!2228959 (= e!1424476 (and tp!697678 tp!697676))))

(declare-fun b!2228960 () Bool)

(declare-fun tp!697677 () Bool)

(assert (=> b!2228960 (= e!1424476 tp!697677)))

(assert (=> b!2228680 (= tp!697365 e!1424476)))

(declare-fun b!2228958 () Bool)

(assert (=> b!2228958 (= e!1424476 tp_is_empty!10035)))

(declare-fun b!2228961 () Bool)

(declare-fun tp!697674 () Bool)

(declare-fun tp!697675 () Bool)

(assert (=> b!2228961 (= e!1424476 (and tp!697674 tp!697675))))

(assert (= (and b!2228680 ((_ is ElementMatch!6405) (regTwo!13323 (regTwo!13323 expr!64)))) b!2228958))

(assert (= (and b!2228680 ((_ is Concat!10743) (regTwo!13323 (regTwo!13323 expr!64)))) b!2228959))

(assert (= (and b!2228680 ((_ is Star!6405) (regTwo!13323 (regTwo!13323 expr!64)))) b!2228960))

(assert (= (and b!2228680 ((_ is Union!6405) (regTwo!13323 (regTwo!13323 expr!64)))) b!2228961))

(declare-fun b!2228963 () Bool)

(declare-fun e!1424477 () Bool)

(declare-fun tp!697683 () Bool)

(declare-fun tp!697681 () Bool)

(assert (=> b!2228963 (= e!1424477 (and tp!697683 tp!697681))))

(declare-fun b!2228964 () Bool)

(declare-fun tp!697682 () Bool)

(assert (=> b!2228964 (= e!1424477 tp!697682)))

(assert (=> b!2228715 (= tp!697419 e!1424477)))

(declare-fun b!2228962 () Bool)

(assert (=> b!2228962 (= e!1424477 tp_is_empty!10035)))

(declare-fun b!2228965 () Bool)

(declare-fun tp!697679 () Bool)

(declare-fun tp!697680 () Bool)

(assert (=> b!2228965 (= e!1424477 (and tp!697679 tp!697680))))

(assert (= (and b!2228715 ((_ is ElementMatch!6405) (_1!15176 (_1!15177 (h!31590 mapValue!14329))))) b!2228962))

(assert (= (and b!2228715 ((_ is Concat!10743) (_1!15176 (_1!15177 (h!31590 mapValue!14329))))) b!2228963))

(assert (= (and b!2228715 ((_ is Star!6405) (_1!15176 (_1!15177 (h!31590 mapValue!14329))))) b!2228964))

(assert (= (and b!2228715 ((_ is Union!6405) (_1!15176 (_1!15177 (h!31590 mapValue!14329))))) b!2228965))

(declare-fun b!2228966 () Bool)

(declare-fun e!1424480 () Bool)

(declare-fun tp!697687 () Bool)

(assert (=> b!2228966 (= e!1424480 tp!697687)))

(declare-fun setIsEmpty!19991 () Bool)

(declare-fun setRes!19991 () Bool)

(assert (=> setIsEmpty!19991 setRes!19991))

(declare-fun e!1424479 () Bool)

(assert (=> b!2228715 (= tp!697422 e!1424479)))

(declare-fun tp!697685 () Bool)

(declare-fun b!2228967 () Bool)

(declare-fun tp!697688 () Bool)

(assert (=> b!2228967 (= e!1424479 (and tp!697685 (inv!35559 (_2!15176 (_1!15177 (h!31590 (t!199697 mapValue!14329))))) e!1424480 tp_is_empty!10035 setRes!19991 tp!697688))))

(declare-fun condSetEmpty!19991 () Bool)

(assert (=> b!2228967 (= condSetEmpty!19991 (= (_2!15177 (h!31590 (t!199697 mapValue!14329))) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun b!2228968 () Bool)

(declare-fun e!1424478 () Bool)

(declare-fun tp!697686 () Bool)

(assert (=> b!2228968 (= e!1424478 tp!697686)))

(declare-fun setElem!19991 () Context!3906)

(declare-fun tp!697684 () Bool)

(declare-fun setNonEmpty!19991 () Bool)

(assert (=> setNonEmpty!19991 (= setRes!19991 (and tp!697684 (inv!35559 setElem!19991) e!1424478))))

(declare-fun setRest!19991 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19991 (= (_2!15177 (h!31590 (t!199697 mapValue!14329))) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19991 true) setRest!19991))))

(assert (= b!2228967 b!2228966))

(assert (= (and b!2228967 condSetEmpty!19991) setIsEmpty!19991))

(assert (= (and b!2228967 (not condSetEmpty!19991)) setNonEmpty!19991))

(assert (= setNonEmpty!19991 b!2228968))

(assert (= (and b!2228715 ((_ is Cons!26189) (t!199697 mapValue!14329))) b!2228967))

(declare-fun m!2666783 () Bool)

(assert (=> b!2228967 m!2666783))

(declare-fun m!2666785 () Bool)

(assert (=> setNonEmpty!19991 m!2666785))

(declare-fun e!1424483 () Bool)

(declare-fun setRes!19993 () Bool)

(declare-fun b!2228969 () Bool)

(declare-fun e!1424482 () Bool)

(declare-fun mapDefault!14333 () List!26283)

(declare-fun tp!697698 () Bool)

(declare-fun tp!697693 () Bool)

(assert (=> b!2228969 (= e!1424482 (and tp!697698 (inv!35559 (_2!15176 (_1!15177 (h!31590 mapDefault!14333)))) e!1424483 tp_is_empty!10035 setRes!19993 tp!697693))))

(declare-fun condSetEmpty!19992 () Bool)

(assert (=> b!2228969 (= condSetEmpty!19992 (= (_2!15177 (h!31590 mapDefault!14333)) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun b!2228970 () Bool)

(declare-fun e!1424484 () Bool)

(declare-fun tp!697695 () Bool)

(assert (=> b!2228970 (= e!1424484 tp!697695)))

(declare-fun setRes!19992 () Bool)

(declare-fun e!1424481 () Bool)

(declare-fun setNonEmpty!19992 () Bool)

(declare-fun tp!697689 () Bool)

(declare-fun setElem!19993 () Context!3906)

(assert (=> setNonEmpty!19992 (= setRes!19992 (and tp!697689 (inv!35559 setElem!19993) e!1424481))))

(declare-fun mapValue!14333 () List!26283)

(declare-fun setRest!19993 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19992 (= (_2!15177 (h!31590 mapValue!14333)) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19993 true) setRest!19993))))

(declare-fun b!2228971 () Bool)

(declare-fun tp!697697 () Bool)

(assert (=> b!2228971 (= e!1424483 tp!697697)))

(declare-fun tp!697690 () Bool)

(declare-fun e!1424485 () Bool)

(declare-fun tp!697699 () Bool)

(declare-fun b!2228972 () Bool)

(assert (=> b!2228972 (= e!1424485 (and tp!697690 (inv!35559 (_2!15176 (_1!15177 (h!31590 mapValue!14333)))) e!1424484 tp_is_empty!10035 setRes!19992 tp!697699))))

(declare-fun condSetEmpty!19993 () Bool)

(assert (=> b!2228972 (= condSetEmpty!19993 (= (_2!15177 (h!31590 mapValue!14333)) ((as const (Array Context!3906 Bool)) false)))))

(declare-fun setIsEmpty!19992 () Bool)

(assert (=> setIsEmpty!19992 setRes!19993))

(declare-fun b!2228973 () Bool)

(declare-fun tp!697692 () Bool)

(assert (=> b!2228973 (= e!1424481 tp!697692)))

(declare-fun setIsEmpty!19993 () Bool)

(assert (=> setIsEmpty!19993 setRes!19992))

(declare-fun setElem!19992 () Context!3906)

(declare-fun setNonEmpty!19993 () Bool)

(declare-fun e!1424486 () Bool)

(declare-fun tp!697694 () Bool)

(assert (=> setNonEmpty!19993 (= setRes!19993 (and tp!697694 (inv!35559 setElem!19992) e!1424486))))

(declare-fun setRest!19992 () (InoxSet Context!3906))

(assert (=> setNonEmpty!19993 (= (_2!15177 (h!31590 mapDefault!14333)) ((_ map or) (store ((as const (Array Context!3906 Bool)) false) setElem!19992 true) setRest!19992))))

(declare-fun condMapEmpty!14333 () Bool)

(assert (=> mapNonEmpty!14332 (= condMapEmpty!14333 (= mapRest!14332 ((as const (Array (_ BitVec 32) List!26283)) mapDefault!14333)))))

(declare-fun mapRes!14333 () Bool)

(assert (=> mapNonEmpty!14332 (= tp!697404 (and e!1424482 mapRes!14333))))

(declare-fun b!2228974 () Bool)

(declare-fun tp!697691 () Bool)

(assert (=> b!2228974 (= e!1424486 tp!697691)))

(declare-fun mapNonEmpty!14333 () Bool)

(declare-fun tp!697696 () Bool)

(assert (=> mapNonEmpty!14333 (= mapRes!14333 (and tp!697696 e!1424485))))

(declare-fun mapRest!14333 () (Array (_ BitVec 32) List!26283))

(declare-fun mapKey!14333 () (_ BitVec 32))

(assert (=> mapNonEmpty!14333 (= mapRest!14332 (store mapRest!14333 mapKey!14333 mapValue!14333))))

(declare-fun mapIsEmpty!14333 () Bool)

(assert (=> mapIsEmpty!14333 mapRes!14333))

(assert (= (and mapNonEmpty!14332 condMapEmpty!14333) mapIsEmpty!14333))

(assert (= (and mapNonEmpty!14332 (not condMapEmpty!14333)) mapNonEmpty!14333))

(assert (= b!2228972 b!2228970))

(assert (= (and b!2228972 condSetEmpty!19993) setIsEmpty!19993))

(assert (= (and b!2228972 (not condSetEmpty!19993)) setNonEmpty!19992))

(assert (= setNonEmpty!19992 b!2228973))

(assert (= (and mapNonEmpty!14333 ((_ is Cons!26189) mapValue!14333)) b!2228972))

(assert (= b!2228969 b!2228971))

(assert (= (and b!2228969 condSetEmpty!19992) setIsEmpty!19992))

(assert (= (and b!2228969 (not condSetEmpty!19992)) setNonEmpty!19993))

(assert (= setNonEmpty!19993 b!2228974))

(assert (= (and mapNonEmpty!14332 ((_ is Cons!26189) mapDefault!14333)) b!2228969))

(declare-fun m!2666787 () Bool)

(assert (=> mapNonEmpty!14333 m!2666787))

(declare-fun m!2666789 () Bool)

(assert (=> setNonEmpty!19992 m!2666789))

(declare-fun m!2666791 () Bool)

(assert (=> setNonEmpty!19993 m!2666791))

(declare-fun m!2666793 () Bool)

(assert (=> b!2228969 m!2666793))

(declare-fun m!2666795 () Bool)

(assert (=> b!2228972 m!2666795))

(declare-fun b!2228975 () Bool)

(declare-fun e!1424487 () Bool)

(declare-fun tp!697700 () Bool)

(declare-fun tp!697701 () Bool)

(assert (=> b!2228975 (= e!1424487 (and tp!697700 tp!697701))))

(assert (=> b!2228714 (= tp!697421 e!1424487)))

(assert (= (and b!2228714 ((_ is Cons!26188) (exprs!2453 (_2!15176 (_1!15177 (h!31590 mapValue!14329)))))) b!2228975))

(declare-fun b_lambda!71643 () Bool)

(assert (= b_lambda!71641 (or d!664792 b_lambda!71643)))

(declare-fun bs!453759 () Bool)

(declare-fun d!664844 () Bool)

(assert (= bs!453759 (and d!664844 d!664792)))

(assert (=> bs!453759 (= (dynLambda!11521 lambda!84239 (h!31589 (exprs!2453 context!86))) (validRegex!2381 (h!31589 (exprs!2453 context!86))))))

(declare-fun m!2666797 () Bool)

(assert (=> bs!453759 m!2666797))

(assert (=> b!2228799 d!664844))

(check-sat (not b!2228853) (not b!2228972) (not b!2228838) (not b!2228912) (not b!2228894) (not b!2228834) (not b!2228949) (not b!2228811) (not b!2228886) (not d!664796) (not b!2228789) (not b!2228902) (not b!2228969) (not b!2228892) (not b!2228809) (not b!2228913) (not b!2228821) (not b_next!65337) (not b!2228885) (not b!2228807) (not b!2228961) (not b!2228817) (not b!2228933) (not b!2228861) (not b!2228938) (not bm!133683) (not b!2228925) (not b!2228883) (not b!2228884) (not mapNonEmpty!14333) (not b!2228836) (not d!664838) (not b!2228967) (not b!2228897) (not b!2228871) (not b!2228866) (not b!2228920) tp_is_empty!10035 (not b!2228874) (not b!2228893) (not b!2228956) (not b!2228881) (not b!2228854) (not b!2228800) (not b!2228808) (not b!2228815) (not setNonEmpty!19978) (not setNonEmpty!19984) (not b!2228851) (not b!2228971) (not b!2228934) (not b!2228780) (not setNonEmpty!19992) (not b!2228966) (not b!2228910) (not b!2228921) (not b!2228829) (not b!2228908) b_and!174623 (not b!2228832) (not b!2228870) (not d!664804) (not bm!133684) (not b!2228900) (not d!664812) (not b!2228898) (not b!2228820) (not b!2228951) (not d!664842) (not b!2228865) (not b!2228859) (not d!664820) (not b!2228882) b_and!174621 (not b!2228830) (not setNonEmpty!19986) (not b!2228957) (not b!2228901) (not b!2228937) (not bm!133686) (not b!2228965) (not setNonEmpty!19977) (not b!2228849) (not b!2228960) (not setNonEmpty!19993) (not bs!453759) (not b!2228744) (not b!2228935) (not b!2228855) (not b!2228842) (not b!2228896) (not b!2228927) (not b!2228775) (not b!2228745) (not b!2228945) (not b!2228953) (not d!664824) (not d!664816) (not b!2228916) (not b!2228888) (not b!2228850) (not b!2228974) (not setNonEmpty!19982) (not setNonEmpty!19991) (not b!2228929) (not b!2228876) (not b!2228833) (not b!2228816) (not b!2228828) (not b!2228754) (not b!2228970) (not b!2228803) (not b!2228931) (not b!2228889) (not b!2228955) (not setNonEmpty!19987) (not b!2228905) (not b!2228840) (not b!2228963) (not b!2228919) (not bm!133690) (not d!664810) (not b!2228810) (not b!2228880) (not b!2228847) (not b!2228878) (not setNonEmpty!19990) (not b!2228873) (not b!2228774) (not b!2228903) (not setNonEmpty!19981) (not d!664832) (not b!2228867) (not bm!133694) (not setNonEmpty!19983) (not b!2228802) (not b!2228939) (not b!2228845) (not b!2228875) (not b!2228947) (not b!2228765) (not b!2228841) (not b!2228943) (not b!2228924) (not b!2228843) (not b_next!65339) (not d!664840) (not d!664800) (not b!2228946) (not b!2228812) (not b!2228858) (not d!664834) (not b!2228819) (not bm!133696) (not b!2228857) (not b!2228959) (not b!2228846) (not b!2228904) (not b_lambda!71643) (not b!2228877) (not b!2228813) (not bm!133693) (not bm!133689) (not b!2228826) (not b!2228968) (not b!2228942) (not b!2228909) (not b!2228862) (not setNonEmpty!19989) (not b!2228837) (not b!2228930) (not b!2228899) (not d!664830) (not b!2228804) (not b!2228975) (not b!2228964) (not setNonEmpty!19985) (not b!2228907) (not bm!133680) (not b!2228952) (not b!2228890) (not b!2228911) (not b!2228973) (not b!2228805) (not b!2228928) (not setNonEmpty!19988) (not b!2228863) (not b!2228915) (not b!2228923) (not d!664836) (not b!2228917) (not bm!133691) (not b!2228950) (not d!664798) (not b!2228941) (not b!2228918) (not b!2228869))
(check-sat b_and!174623 b_and!174621 (not b_next!65337) (not b_next!65339))
