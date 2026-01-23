; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!718632 () Bool)

(assert start!718632)

(declare-fun b!7359750 () Bool)

(declare-fun e!4406492 () Bool)

(declare-fun tp!2091112 () Bool)

(assert (=> b!7359750 (= e!4406492 tp!2091112)))

(declare-fun b!7359751 () Bool)

(declare-fun e!4406491 () Bool)

(declare-datatypes ((C!38712 0))(
  ( (C!38713 (val!29716 Int)) )
))
(declare-datatypes ((Regex!19219 0))(
  ( (ElementMatch!19219 (c!1367441 C!38712)) (Concat!28064 (regOne!38950 Regex!19219) (regTwo!38950 Regex!19219)) (EmptyExpr!19219) (Star!19219 (reg!19548 Regex!19219)) (EmptyLang!19219) (Union!19219 (regOne!38951 Regex!19219) (regTwo!38951 Regex!19219)) )
))
(declare-fun r1!2370 () Regex!19219)

(declare-fun nullable!8306 (Regex!19219) Bool)

(assert (=> b!7359751 (= e!4406491 (not (nullable!8306 (regOne!38950 r1!2370))))))

(declare-fun c!10362 () C!38712)

(declare-fun lt!2613731 () Regex!19219)

(declare-fun b!7359752 () Bool)

(declare-fun e!4406487 () Bool)

(declare-datatypes ((List!71715 0))(
  ( (Nil!71591) (Cons!71591 (h!78039 Regex!19219) (t!386162 List!71715)) )
))
(declare-datatypes ((Context!16318 0))(
  ( (Context!16319 (exprs!8659 List!71715)) )
))
(declare-fun ct1!282 () Context!16318)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2613733 () (InoxSet Context!16318))

(declare-fun derivationStepZipperDown!3045 (Regex!19219 Context!16318 C!38712) (InoxSet Context!16318))

(declare-fun $colon$colon!3212 (List!71715 Regex!19219) List!71715)

(assert (=> b!7359752 (= e!4406487 (not (= lt!2613733 (derivationStepZipperDown!3045 (reg!19548 r1!2370) (Context!16319 ($colon$colon!3212 (exprs!8659 ct1!282) lt!2613731)) c!10362))))))

(declare-fun b!7359753 () Bool)

(declare-fun res!2971350 () Bool)

(declare-fun e!4406485 () Bool)

(assert (=> b!7359753 (=> (not res!2971350) (not e!4406485))))

(assert (=> b!7359753 (= res!2971350 e!4406491)))

(declare-fun res!2971347 () Bool)

(assert (=> b!7359753 (=> res!2971347 e!4406491)))

(get-info :version)

(assert (=> b!7359753 (= res!2971347 (not ((_ is Concat!28064) r1!2370)))))

(declare-fun b!7359754 () Bool)

(declare-fun e!4406484 () Bool)

(declare-fun tp!2091111 () Bool)

(declare-fun tp!2091109 () Bool)

(assert (=> b!7359754 (= e!4406484 (and tp!2091111 tp!2091109))))

(declare-fun b!7359755 () Bool)

(declare-fun e!4406489 () Bool)

(declare-fun tp!2091108 () Bool)

(assert (=> b!7359755 (= e!4406489 tp!2091108)))

(declare-fun b!7359756 () Bool)

(assert (=> b!7359756 (= e!4406485 e!4406487)))

(declare-fun res!2971345 () Bool)

(assert (=> b!7359756 (=> (not res!2971345) (not e!4406487))))

(declare-fun validRegex!9815 (Regex!19219) Bool)

(assert (=> b!7359756 (= res!2971345 (validRegex!9815 lt!2613731))))

(assert (=> b!7359756 (= lt!2613731 (Star!19219 (reg!19548 r1!2370)))))

(declare-fun b!7359757 () Bool)

(declare-fun tp!2091107 () Bool)

(assert (=> b!7359757 (= e!4406484 tp!2091107)))

(declare-fun b!7359758 () Bool)

(declare-fun e!4406490 () Bool)

(declare-fun tp!2091110 () Bool)

(assert (=> b!7359758 (= e!4406490 tp!2091110)))

(declare-fun res!2971346 () Bool)

(declare-fun e!4406488 () Bool)

(assert (=> start!718632 (=> (not res!2971346) (not e!4406488))))

(assert (=> start!718632 (= res!2971346 (validRegex!9815 r1!2370))))

(assert (=> start!718632 e!4406488))

(declare-fun tp_is_empty!48683 () Bool)

(assert (=> start!718632 tp_is_empty!48683))

(declare-fun cWitness!61 () Context!16318)

(declare-fun inv!91387 (Context!16318) Bool)

(assert (=> start!718632 (and (inv!91387 cWitness!61) e!4406489)))

(assert (=> start!718632 (and (inv!91387 ct1!282) e!4406492)))

(assert (=> start!718632 e!4406484))

(declare-fun ct2!378 () Context!16318)

(assert (=> start!718632 (and (inv!91387 ct2!378) e!4406490)))

(declare-fun b!7359759 () Bool)

(declare-fun e!4406486 () Bool)

(assert (=> b!7359759 (= e!4406488 e!4406486)))

(declare-fun res!2971344 () Bool)

(assert (=> b!7359759 (=> (not res!2971344) (not e!4406486))))

(assert (=> b!7359759 (= res!2971344 (select lt!2613733 cWitness!61))))

(assert (=> b!7359759 (= lt!2613733 (derivationStepZipperDown!3045 r1!2370 ct1!282 c!10362))))

(declare-fun b!7359760 () Bool)

(declare-fun res!2971349 () Bool)

(assert (=> b!7359760 (=> (not res!2971349) (not e!4406485))))

(assert (=> b!7359760 (= res!2971349 (and (not ((_ is Concat!28064) r1!2370)) ((_ is Star!19219) r1!2370)))))

(declare-fun b!7359761 () Bool)

(assert (=> b!7359761 (= e!4406486 e!4406485)))

(declare-fun res!2971348 () Bool)

(assert (=> b!7359761 (=> (not res!2971348) (not e!4406485))))

(assert (=> b!7359761 (= res!2971348 (and (or (not ((_ is ElementMatch!19219) r1!2370)) (not (= c!10362 (c!1367441 r1!2370)))) (not ((_ is Union!19219) r1!2370))))))

(declare-fun lt!2613730 () (InoxSet Context!16318))

(declare-fun ++!17037 (List!71715 List!71715) List!71715)

(assert (=> b!7359761 (= lt!2613730 (derivationStepZipperDown!3045 r1!2370 (Context!16319 (++!17037 (exprs!8659 ct1!282) (exprs!8659 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165391 0))(
  ( (Unit!165392) )
))
(declare-fun lt!2613732 () Unit!165391)

(declare-fun lambda!457259 () Int)

(declare-fun lemmaConcatPreservesForall!1894 (List!71715 List!71715 Int) Unit!165391)

(assert (=> b!7359761 (= lt!2613732 (lemmaConcatPreservesForall!1894 (exprs!8659 ct1!282) (exprs!8659 ct2!378) lambda!457259))))

(declare-fun b!7359762 () Bool)

(declare-fun tp!2091106 () Bool)

(declare-fun tp!2091113 () Bool)

(assert (=> b!7359762 (= e!4406484 (and tp!2091106 tp!2091113))))

(declare-fun b!7359763 () Bool)

(assert (=> b!7359763 (= e!4406484 tp_is_empty!48683)))

(assert (= (and start!718632 res!2971346) b!7359759))

(assert (= (and b!7359759 res!2971344) b!7359761))

(assert (= (and b!7359761 res!2971348) b!7359753))

(assert (= (and b!7359753 (not res!2971347)) b!7359751))

(assert (= (and b!7359753 res!2971350) b!7359760))

(assert (= (and b!7359760 res!2971349) b!7359756))

(assert (= (and b!7359756 res!2971345) b!7359752))

(assert (= start!718632 b!7359755))

(assert (= start!718632 b!7359750))

(assert (= (and start!718632 ((_ is ElementMatch!19219) r1!2370)) b!7359763))

(assert (= (and start!718632 ((_ is Concat!28064) r1!2370)) b!7359754))

(assert (= (and start!718632 ((_ is Star!19219) r1!2370)) b!7359757))

(assert (= (and start!718632 ((_ is Union!19219) r1!2370)) b!7359762))

(assert (= start!718632 b!7359758))

(declare-fun m!8017988 () Bool)

(assert (=> b!7359759 m!8017988))

(declare-fun m!8017990 () Bool)

(assert (=> b!7359759 m!8017990))

(declare-fun m!8017992 () Bool)

(assert (=> start!718632 m!8017992))

(declare-fun m!8017994 () Bool)

(assert (=> start!718632 m!8017994))

(declare-fun m!8017996 () Bool)

(assert (=> start!718632 m!8017996))

(declare-fun m!8017998 () Bool)

(assert (=> start!718632 m!8017998))

(declare-fun m!8018000 () Bool)

(assert (=> b!7359761 m!8018000))

(declare-fun m!8018002 () Bool)

(assert (=> b!7359761 m!8018002))

(declare-fun m!8018004 () Bool)

(assert (=> b!7359761 m!8018004))

(declare-fun m!8018006 () Bool)

(assert (=> b!7359756 m!8018006))

(declare-fun m!8018008 () Bool)

(assert (=> b!7359752 m!8018008))

(declare-fun m!8018010 () Bool)

(assert (=> b!7359752 m!8018010))

(declare-fun m!8018012 () Bool)

(assert (=> b!7359751 m!8018012))

(check-sat (not start!718632) tp_is_empty!48683 (not b!7359759) (not b!7359750) (not b!7359754) (not b!7359757) (not b!7359751) (not b!7359761) (not b!7359756) (not b!7359755) (not b!7359758) (not b!7359752) (not b!7359762))
(check-sat)
(get-model)

(declare-fun d!2282000 () Bool)

(declare-fun c!1367452 () Bool)

(assert (=> d!2282000 (= c!1367452 (and ((_ is ElementMatch!19219) r1!2370) (= (c!1367441 r1!2370) c!10362)))))

(declare-fun e!4406506 () (InoxSet Context!16318))

(assert (=> d!2282000 (= (derivationStepZipperDown!3045 r1!2370 ct1!282 c!10362) e!4406506)))

(declare-fun b!7359786 () Bool)

(assert (=> b!7359786 (= e!4406506 (store ((as const (Array Context!16318 Bool)) false) ct1!282 true))))

(declare-fun b!7359787 () Bool)

(declare-fun e!4406505 () (InoxSet Context!16318))

(declare-fun call!674286 () (InoxSet Context!16318))

(declare-fun call!674288 () (InoxSet Context!16318))

(assert (=> b!7359787 (= e!4406505 ((_ map or) call!674286 call!674288))))

(declare-fun bm!674281 () Bool)

(declare-fun call!674291 () List!71715)

(declare-fun call!674289 () List!71715)

(assert (=> bm!674281 (= call!674291 call!674289)))

(declare-fun bm!674282 () Bool)

(declare-fun c!1367454 () Bool)

(declare-fun c!1367455 () Bool)

(assert (=> bm!674282 (= call!674289 ($colon$colon!3212 (exprs!8659 ct1!282) (ite (or c!1367454 c!1367455) (regTwo!38950 r1!2370) r1!2370)))))

(declare-fun b!7359788 () Bool)

(declare-fun e!4406510 () Bool)

(assert (=> b!7359788 (= c!1367454 e!4406510)))

(declare-fun res!2971353 () Bool)

(assert (=> b!7359788 (=> (not res!2971353) (not e!4406510))))

(assert (=> b!7359788 (= res!2971353 ((_ is Concat!28064) r1!2370))))

(declare-fun e!4406509 () (InoxSet Context!16318))

(assert (=> b!7359788 (= e!4406509 e!4406505)))

(declare-fun c!1367456 () Bool)

(declare-fun bm!674283 () Bool)

(assert (=> bm!674283 (= call!674286 (derivationStepZipperDown!3045 (ite c!1367456 (regTwo!38951 r1!2370) (regOne!38950 r1!2370)) (ite c!1367456 ct1!282 (Context!16319 call!674289)) c!10362))))

(declare-fun bm!674284 () Bool)

(declare-fun call!674287 () (InoxSet Context!16318))

(assert (=> bm!674284 (= call!674288 call!674287)))

(declare-fun b!7359789 () Bool)

(declare-fun e!4406508 () (InoxSet Context!16318))

(assert (=> b!7359789 (= e!4406508 ((as const (Array Context!16318 Bool)) false))))

(declare-fun b!7359790 () Bool)

(declare-fun e!4406507 () (InoxSet Context!16318))

(declare-fun call!674290 () (InoxSet Context!16318))

(assert (=> b!7359790 (= e!4406507 call!674290)))

(declare-fun b!7359791 () Bool)

(assert (=> b!7359791 (= e!4406510 (nullable!8306 (regOne!38950 r1!2370)))))

(declare-fun b!7359792 () Bool)

(assert (=> b!7359792 (= e!4406506 e!4406509)))

(assert (=> b!7359792 (= c!1367456 ((_ is Union!19219) r1!2370))))

(declare-fun b!7359793 () Bool)

(assert (=> b!7359793 (= e!4406509 ((_ map or) call!674287 call!674286))))

(declare-fun bm!674285 () Bool)

(assert (=> bm!674285 (= call!674287 (derivationStepZipperDown!3045 (ite c!1367456 (regOne!38951 r1!2370) (ite c!1367454 (regTwo!38950 r1!2370) (ite c!1367455 (regOne!38950 r1!2370) (reg!19548 r1!2370)))) (ite (or c!1367456 c!1367454) ct1!282 (Context!16319 call!674291)) c!10362))))

(declare-fun b!7359794 () Bool)

(assert (=> b!7359794 (= e!4406508 call!674290)))

(declare-fun bm!674286 () Bool)

(assert (=> bm!674286 (= call!674290 call!674288)))

(declare-fun b!7359795 () Bool)

(declare-fun c!1367453 () Bool)

(assert (=> b!7359795 (= c!1367453 ((_ is Star!19219) r1!2370))))

(assert (=> b!7359795 (= e!4406507 e!4406508)))

(declare-fun b!7359796 () Bool)

(assert (=> b!7359796 (= e!4406505 e!4406507)))

(assert (=> b!7359796 (= c!1367455 ((_ is Concat!28064) r1!2370))))

(assert (= (and d!2282000 c!1367452) b!7359786))

(assert (= (and d!2282000 (not c!1367452)) b!7359792))

(assert (= (and b!7359792 c!1367456) b!7359793))

(assert (= (and b!7359792 (not c!1367456)) b!7359788))

(assert (= (and b!7359788 res!2971353) b!7359791))

(assert (= (and b!7359788 c!1367454) b!7359787))

(assert (= (and b!7359788 (not c!1367454)) b!7359796))

(assert (= (and b!7359796 c!1367455) b!7359790))

(assert (= (and b!7359796 (not c!1367455)) b!7359795))

(assert (= (and b!7359795 c!1367453) b!7359794))

(assert (= (and b!7359795 (not c!1367453)) b!7359789))

(assert (= (or b!7359790 b!7359794) bm!674281))

(assert (= (or b!7359790 b!7359794) bm!674286))

(assert (= (or b!7359787 bm!674286) bm!674284))

(assert (= (or b!7359787 bm!674281) bm!674282))

(assert (= (or b!7359793 b!7359787) bm!674283))

(assert (= (or b!7359793 bm!674284) bm!674285))

(declare-fun m!8018014 () Bool)

(assert (=> bm!674282 m!8018014))

(declare-fun m!8018016 () Bool)

(assert (=> bm!674285 m!8018016))

(declare-fun m!8018018 () Bool)

(assert (=> b!7359786 m!8018018))

(declare-fun m!8018020 () Bool)

(assert (=> bm!674283 m!8018020))

(assert (=> b!7359791 m!8018012))

(assert (=> b!7359759 d!2282000))

(declare-fun d!2282004 () Bool)

(declare-fun c!1367459 () Bool)

(assert (=> d!2282004 (= c!1367459 (and ((_ is ElementMatch!19219) (reg!19548 r1!2370)) (= (c!1367441 (reg!19548 r1!2370)) c!10362)))))

(declare-fun e!4406518 () (InoxSet Context!16318))

(assert (=> d!2282004 (= (derivationStepZipperDown!3045 (reg!19548 r1!2370) (Context!16319 ($colon$colon!3212 (exprs!8659 ct1!282) lt!2613731)) c!10362) e!4406518)))

(declare-fun b!7359805 () Bool)

(assert (=> b!7359805 (= e!4406518 (store ((as const (Array Context!16318 Bool)) false) (Context!16319 ($colon$colon!3212 (exprs!8659 ct1!282) lt!2613731)) true))))

(declare-fun b!7359806 () Bool)

(declare-fun e!4406517 () (InoxSet Context!16318))

(declare-fun call!674292 () (InoxSet Context!16318))

(declare-fun call!674294 () (InoxSet Context!16318))

(assert (=> b!7359806 (= e!4406517 ((_ map or) call!674292 call!674294))))

(declare-fun bm!674287 () Bool)

(declare-fun call!674297 () List!71715)

(declare-fun call!674295 () List!71715)

(assert (=> bm!674287 (= call!674297 call!674295)))

(declare-fun c!1367461 () Bool)

(declare-fun c!1367462 () Bool)

(declare-fun bm!674288 () Bool)

(assert (=> bm!674288 (= call!674295 ($colon$colon!3212 (exprs!8659 (Context!16319 ($colon$colon!3212 (exprs!8659 ct1!282) lt!2613731))) (ite (or c!1367461 c!1367462) (regTwo!38950 (reg!19548 r1!2370)) (reg!19548 r1!2370))))))

(declare-fun b!7359807 () Bool)

(declare-fun e!4406522 () Bool)

(assert (=> b!7359807 (= c!1367461 e!4406522)))

(declare-fun res!2971358 () Bool)

(assert (=> b!7359807 (=> (not res!2971358) (not e!4406522))))

(assert (=> b!7359807 (= res!2971358 ((_ is Concat!28064) (reg!19548 r1!2370)))))

(declare-fun e!4406521 () (InoxSet Context!16318))

(assert (=> b!7359807 (= e!4406521 e!4406517)))

(declare-fun c!1367463 () Bool)

(declare-fun bm!674289 () Bool)

(assert (=> bm!674289 (= call!674292 (derivationStepZipperDown!3045 (ite c!1367463 (regTwo!38951 (reg!19548 r1!2370)) (regOne!38950 (reg!19548 r1!2370))) (ite c!1367463 (Context!16319 ($colon$colon!3212 (exprs!8659 ct1!282) lt!2613731)) (Context!16319 call!674295)) c!10362))))

(declare-fun bm!674290 () Bool)

(declare-fun call!674293 () (InoxSet Context!16318))

(assert (=> bm!674290 (= call!674294 call!674293)))

(declare-fun b!7359808 () Bool)

(declare-fun e!4406520 () (InoxSet Context!16318))

(assert (=> b!7359808 (= e!4406520 ((as const (Array Context!16318 Bool)) false))))

(declare-fun b!7359809 () Bool)

(declare-fun e!4406519 () (InoxSet Context!16318))

(declare-fun call!674296 () (InoxSet Context!16318))

(assert (=> b!7359809 (= e!4406519 call!674296)))

(declare-fun b!7359810 () Bool)

(assert (=> b!7359810 (= e!4406522 (nullable!8306 (regOne!38950 (reg!19548 r1!2370))))))

(declare-fun b!7359811 () Bool)

(assert (=> b!7359811 (= e!4406518 e!4406521)))

(assert (=> b!7359811 (= c!1367463 ((_ is Union!19219) (reg!19548 r1!2370)))))

(declare-fun b!7359812 () Bool)

(assert (=> b!7359812 (= e!4406521 ((_ map or) call!674293 call!674292))))

(declare-fun bm!674291 () Bool)

(assert (=> bm!674291 (= call!674293 (derivationStepZipperDown!3045 (ite c!1367463 (regOne!38951 (reg!19548 r1!2370)) (ite c!1367461 (regTwo!38950 (reg!19548 r1!2370)) (ite c!1367462 (regOne!38950 (reg!19548 r1!2370)) (reg!19548 (reg!19548 r1!2370))))) (ite (or c!1367463 c!1367461) (Context!16319 ($colon$colon!3212 (exprs!8659 ct1!282) lt!2613731)) (Context!16319 call!674297)) c!10362))))

(declare-fun b!7359813 () Bool)

(assert (=> b!7359813 (= e!4406520 call!674296)))

(declare-fun bm!674292 () Bool)

(assert (=> bm!674292 (= call!674296 call!674294)))

(declare-fun b!7359816 () Bool)

(declare-fun c!1367460 () Bool)

(assert (=> b!7359816 (= c!1367460 ((_ is Star!19219) (reg!19548 r1!2370)))))

(assert (=> b!7359816 (= e!4406519 e!4406520)))

(declare-fun b!7359817 () Bool)

(assert (=> b!7359817 (= e!4406517 e!4406519)))

(assert (=> b!7359817 (= c!1367462 ((_ is Concat!28064) (reg!19548 r1!2370)))))

(assert (= (and d!2282004 c!1367459) b!7359805))

(assert (= (and d!2282004 (not c!1367459)) b!7359811))

(assert (= (and b!7359811 c!1367463) b!7359812))

(assert (= (and b!7359811 (not c!1367463)) b!7359807))

(assert (= (and b!7359807 res!2971358) b!7359810))

(assert (= (and b!7359807 c!1367461) b!7359806))

(assert (= (and b!7359807 (not c!1367461)) b!7359817))

(assert (= (and b!7359817 c!1367462) b!7359809))

(assert (= (and b!7359817 (not c!1367462)) b!7359816))

(assert (= (and b!7359816 c!1367460) b!7359813))

(assert (= (and b!7359816 (not c!1367460)) b!7359808))

(assert (= (or b!7359809 b!7359813) bm!674287))

(assert (= (or b!7359809 b!7359813) bm!674292))

(assert (= (or b!7359806 bm!674292) bm!674290))

(assert (= (or b!7359806 bm!674287) bm!674288))

(assert (= (or b!7359812 b!7359806) bm!674289))

(assert (= (or b!7359812 bm!674290) bm!674291))

(declare-fun m!8018022 () Bool)

(assert (=> bm!674288 m!8018022))

(declare-fun m!8018024 () Bool)

(assert (=> bm!674291 m!8018024))

(declare-fun m!8018026 () Bool)

(assert (=> b!7359805 m!8018026))

(declare-fun m!8018028 () Bool)

(assert (=> bm!674289 m!8018028))

(declare-fun m!8018030 () Bool)

(assert (=> b!7359810 m!8018030))

(assert (=> b!7359752 d!2282004))

(declare-fun d!2282006 () Bool)

(assert (=> d!2282006 (= ($colon$colon!3212 (exprs!8659 ct1!282) lt!2613731) (Cons!71591 lt!2613731 (exprs!8659 ct1!282)))))

(assert (=> b!7359752 d!2282006))

(declare-fun b!7359853 () Bool)

(declare-fun e!4406552 () Bool)

(declare-fun call!674315 () Bool)

(assert (=> b!7359853 (= e!4406552 call!674315)))

(declare-fun b!7359854 () Bool)

(declare-fun e!4406554 () Bool)

(assert (=> b!7359854 (= e!4406554 e!4406552)))

(declare-fun res!2971381 () Bool)

(assert (=> b!7359854 (=> (not res!2971381) (not e!4406552))))

(declare-fun call!674313 () Bool)

(assert (=> b!7359854 (= res!2971381 call!674313)))

(declare-fun bm!674308 () Bool)

(declare-fun call!674314 () Bool)

(assert (=> bm!674308 (= call!674315 call!674314)))

(declare-fun b!7359855 () Bool)

(declare-fun e!4406558 () Bool)

(declare-fun e!4406553 () Bool)

(assert (=> b!7359855 (= e!4406558 e!4406553)))

(declare-fun res!2971384 () Bool)

(assert (=> b!7359855 (= res!2971384 (not (nullable!8306 (reg!19548 lt!2613731))))))

(assert (=> b!7359855 (=> (not res!2971384) (not e!4406553))))

(declare-fun b!7359857 () Bool)

(assert (=> b!7359857 (= e!4406553 call!674314)))

(declare-fun bm!674309 () Bool)

(declare-fun c!1367473 () Bool)

(assert (=> bm!674309 (= call!674313 (validRegex!9815 (ite c!1367473 (regTwo!38951 lt!2613731) (regOne!38950 lt!2613731))))))

(declare-fun b!7359858 () Bool)

(declare-fun e!4406557 () Bool)

(assert (=> b!7359858 (= e!4406557 e!4406558)))

(declare-fun c!1367472 () Bool)

(assert (=> b!7359858 (= c!1367472 ((_ is Star!19219) lt!2613731))))

(declare-fun b!7359859 () Bool)

(declare-fun e!4406556 () Bool)

(assert (=> b!7359859 (= e!4406556 call!674313)))

(declare-fun b!7359860 () Bool)

(declare-fun e!4406555 () Bool)

(assert (=> b!7359860 (= e!4406558 e!4406555)))

(assert (=> b!7359860 (= c!1367473 ((_ is Union!19219) lt!2613731))))

(declare-fun b!7359861 () Bool)

(declare-fun res!2971382 () Bool)

(assert (=> b!7359861 (=> res!2971382 e!4406554)))

(assert (=> b!7359861 (= res!2971382 (not ((_ is Concat!28064) lt!2613731)))))

(assert (=> b!7359861 (= e!4406555 e!4406554)))

(declare-fun bm!674310 () Bool)

(assert (=> bm!674310 (= call!674314 (validRegex!9815 (ite c!1367472 (reg!19548 lt!2613731) (ite c!1367473 (regOne!38951 lt!2613731) (regTwo!38950 lt!2613731)))))))

(declare-fun b!7359856 () Bool)

(declare-fun res!2971383 () Bool)

(assert (=> b!7359856 (=> (not res!2971383) (not e!4406556))))

(assert (=> b!7359856 (= res!2971383 call!674315)))

(assert (=> b!7359856 (= e!4406555 e!4406556)))

(declare-fun d!2282008 () Bool)

(declare-fun res!2971380 () Bool)

(assert (=> d!2282008 (=> res!2971380 e!4406557)))

(assert (=> d!2282008 (= res!2971380 ((_ is ElementMatch!19219) lt!2613731))))

(assert (=> d!2282008 (= (validRegex!9815 lt!2613731) e!4406557)))

(assert (= (and d!2282008 (not res!2971380)) b!7359858))

(assert (= (and b!7359858 c!1367472) b!7359855))

(assert (= (and b!7359858 (not c!1367472)) b!7359860))

(assert (= (and b!7359855 res!2971384) b!7359857))

(assert (= (and b!7359860 c!1367473) b!7359856))

(assert (= (and b!7359860 (not c!1367473)) b!7359861))

(assert (= (and b!7359856 res!2971383) b!7359859))

(assert (= (and b!7359861 (not res!2971382)) b!7359854))

(assert (= (and b!7359854 res!2971381) b!7359853))

(assert (= (or b!7359856 b!7359853) bm!674308))

(assert (= (or b!7359859 b!7359854) bm!674309))

(assert (= (or b!7359857 bm!674308) bm!674310))

(declare-fun m!8018044 () Bool)

(assert (=> b!7359855 m!8018044))

(declare-fun m!8018046 () Bool)

(assert (=> bm!674309 m!8018046))

(declare-fun m!8018048 () Bool)

(assert (=> bm!674310 m!8018048))

(assert (=> b!7359756 d!2282008))

(declare-fun d!2282018 () Bool)

(declare-fun nullableFct!3324 (Regex!19219) Bool)

(assert (=> d!2282018 (= (nullable!8306 (regOne!38950 r1!2370)) (nullableFct!3324 (regOne!38950 r1!2370)))))

(declare-fun bs!1920047 () Bool)

(assert (= bs!1920047 d!2282018))

(declare-fun m!8018050 () Bool)

(assert (=> bs!1920047 m!8018050))

(assert (=> b!7359751 d!2282018))

(declare-fun d!2282020 () Bool)

(declare-fun c!1367474 () Bool)

(assert (=> d!2282020 (= c!1367474 (and ((_ is ElementMatch!19219) r1!2370) (= (c!1367441 r1!2370) c!10362)))))

(declare-fun e!4406560 () (InoxSet Context!16318))

(assert (=> d!2282020 (= (derivationStepZipperDown!3045 r1!2370 (Context!16319 (++!17037 (exprs!8659 ct1!282) (exprs!8659 ct2!378))) c!10362) e!4406560)))

(declare-fun b!7359862 () Bool)

(assert (=> b!7359862 (= e!4406560 (store ((as const (Array Context!16318 Bool)) false) (Context!16319 (++!17037 (exprs!8659 ct1!282) (exprs!8659 ct2!378))) true))))

(declare-fun b!7359863 () Bool)

(declare-fun e!4406559 () (InoxSet Context!16318))

(declare-fun call!674316 () (InoxSet Context!16318))

(declare-fun call!674318 () (InoxSet Context!16318))

(assert (=> b!7359863 (= e!4406559 ((_ map or) call!674316 call!674318))))

(declare-fun bm!674311 () Bool)

(declare-fun call!674321 () List!71715)

(declare-fun call!674319 () List!71715)

(assert (=> bm!674311 (= call!674321 call!674319)))

(declare-fun c!1367477 () Bool)

(declare-fun bm!674312 () Bool)

(declare-fun c!1367476 () Bool)

(assert (=> bm!674312 (= call!674319 ($colon$colon!3212 (exprs!8659 (Context!16319 (++!17037 (exprs!8659 ct1!282) (exprs!8659 ct2!378)))) (ite (or c!1367476 c!1367477) (regTwo!38950 r1!2370) r1!2370)))))

(declare-fun b!7359864 () Bool)

(declare-fun e!4406564 () Bool)

(assert (=> b!7359864 (= c!1367476 e!4406564)))

(declare-fun res!2971385 () Bool)

(assert (=> b!7359864 (=> (not res!2971385) (not e!4406564))))

(assert (=> b!7359864 (= res!2971385 ((_ is Concat!28064) r1!2370))))

(declare-fun e!4406563 () (InoxSet Context!16318))

(assert (=> b!7359864 (= e!4406563 e!4406559)))

(declare-fun c!1367478 () Bool)

(declare-fun bm!674313 () Bool)

(assert (=> bm!674313 (= call!674316 (derivationStepZipperDown!3045 (ite c!1367478 (regTwo!38951 r1!2370) (regOne!38950 r1!2370)) (ite c!1367478 (Context!16319 (++!17037 (exprs!8659 ct1!282) (exprs!8659 ct2!378))) (Context!16319 call!674319)) c!10362))))

(declare-fun bm!674314 () Bool)

(declare-fun call!674317 () (InoxSet Context!16318))

(assert (=> bm!674314 (= call!674318 call!674317)))

(declare-fun b!7359865 () Bool)

(declare-fun e!4406562 () (InoxSet Context!16318))

(assert (=> b!7359865 (= e!4406562 ((as const (Array Context!16318 Bool)) false))))

(declare-fun b!7359866 () Bool)

(declare-fun e!4406561 () (InoxSet Context!16318))

(declare-fun call!674320 () (InoxSet Context!16318))

(assert (=> b!7359866 (= e!4406561 call!674320)))

(declare-fun b!7359867 () Bool)

(assert (=> b!7359867 (= e!4406564 (nullable!8306 (regOne!38950 r1!2370)))))

(declare-fun b!7359868 () Bool)

(assert (=> b!7359868 (= e!4406560 e!4406563)))

(assert (=> b!7359868 (= c!1367478 ((_ is Union!19219) r1!2370))))

(declare-fun b!7359869 () Bool)

(assert (=> b!7359869 (= e!4406563 ((_ map or) call!674317 call!674316))))

(declare-fun bm!674315 () Bool)

(assert (=> bm!674315 (= call!674317 (derivationStepZipperDown!3045 (ite c!1367478 (regOne!38951 r1!2370) (ite c!1367476 (regTwo!38950 r1!2370) (ite c!1367477 (regOne!38950 r1!2370) (reg!19548 r1!2370)))) (ite (or c!1367478 c!1367476) (Context!16319 (++!17037 (exprs!8659 ct1!282) (exprs!8659 ct2!378))) (Context!16319 call!674321)) c!10362))))

(declare-fun b!7359870 () Bool)

(assert (=> b!7359870 (= e!4406562 call!674320)))

(declare-fun bm!674316 () Bool)

(assert (=> bm!674316 (= call!674320 call!674318)))

(declare-fun b!7359871 () Bool)

(declare-fun c!1367475 () Bool)

(assert (=> b!7359871 (= c!1367475 ((_ is Star!19219) r1!2370))))

(assert (=> b!7359871 (= e!4406561 e!4406562)))

(declare-fun b!7359872 () Bool)

(assert (=> b!7359872 (= e!4406559 e!4406561)))

(assert (=> b!7359872 (= c!1367477 ((_ is Concat!28064) r1!2370))))

(assert (= (and d!2282020 c!1367474) b!7359862))

(assert (= (and d!2282020 (not c!1367474)) b!7359868))

(assert (= (and b!7359868 c!1367478) b!7359869))

(assert (= (and b!7359868 (not c!1367478)) b!7359864))

(assert (= (and b!7359864 res!2971385) b!7359867))

(assert (= (and b!7359864 c!1367476) b!7359863))

(assert (= (and b!7359864 (not c!1367476)) b!7359872))

(assert (= (and b!7359872 c!1367477) b!7359866))

(assert (= (and b!7359872 (not c!1367477)) b!7359871))

(assert (= (and b!7359871 c!1367475) b!7359870))

(assert (= (and b!7359871 (not c!1367475)) b!7359865))

(assert (= (or b!7359866 b!7359870) bm!674311))

(assert (= (or b!7359866 b!7359870) bm!674316))

(assert (= (or b!7359863 bm!674316) bm!674314))

(assert (= (or b!7359863 bm!674311) bm!674312))

(assert (= (or b!7359869 b!7359863) bm!674313))

(assert (= (or b!7359869 bm!674314) bm!674315))

(declare-fun m!8018052 () Bool)

(assert (=> bm!674312 m!8018052))

(declare-fun m!8018054 () Bool)

(assert (=> bm!674315 m!8018054))

(declare-fun m!8018056 () Bool)

(assert (=> b!7359862 m!8018056))

(declare-fun m!8018058 () Bool)

(assert (=> bm!674313 m!8018058))

(assert (=> b!7359867 m!8018012))

(assert (=> b!7359761 d!2282020))

(declare-fun b!7359905 () Bool)

(declare-fun res!2971393 () Bool)

(declare-fun e!4406582 () Bool)

(assert (=> b!7359905 (=> (not res!2971393) (not e!4406582))))

(declare-fun lt!2613736 () List!71715)

(declare-fun size!42092 (List!71715) Int)

(assert (=> b!7359905 (= res!2971393 (= (size!42092 lt!2613736) (+ (size!42092 (exprs!8659 ct1!282)) (size!42092 (exprs!8659 ct2!378)))))))

(declare-fun b!7359903 () Bool)

(declare-fun e!4406581 () List!71715)

(assert (=> b!7359903 (= e!4406581 (exprs!8659 ct2!378))))

(declare-fun b!7359906 () Bool)

(assert (=> b!7359906 (= e!4406582 (or (not (= (exprs!8659 ct2!378) Nil!71591)) (= lt!2613736 (exprs!8659 ct1!282))))))

(declare-fun d!2282022 () Bool)

(assert (=> d!2282022 e!4406582))

(declare-fun res!2971392 () Bool)

(assert (=> d!2282022 (=> (not res!2971392) (not e!4406582))))

(declare-fun content!15114 (List!71715) (InoxSet Regex!19219))

(assert (=> d!2282022 (= res!2971392 (= (content!15114 lt!2613736) ((_ map or) (content!15114 (exprs!8659 ct1!282)) (content!15114 (exprs!8659 ct2!378)))))))

(assert (=> d!2282022 (= lt!2613736 e!4406581)))

(declare-fun c!1367491 () Bool)

(assert (=> d!2282022 (= c!1367491 ((_ is Nil!71591) (exprs!8659 ct1!282)))))

(assert (=> d!2282022 (= (++!17037 (exprs!8659 ct1!282) (exprs!8659 ct2!378)) lt!2613736)))

(declare-fun b!7359904 () Bool)

(assert (=> b!7359904 (= e!4406581 (Cons!71591 (h!78039 (exprs!8659 ct1!282)) (++!17037 (t!386162 (exprs!8659 ct1!282)) (exprs!8659 ct2!378))))))

(assert (= (and d!2282022 c!1367491) b!7359903))

(assert (= (and d!2282022 (not c!1367491)) b!7359904))

(assert (= (and d!2282022 res!2971392) b!7359905))

(assert (= (and b!7359905 res!2971393) b!7359906))

(declare-fun m!8018060 () Bool)

(assert (=> b!7359905 m!8018060))

(declare-fun m!8018062 () Bool)

(assert (=> b!7359905 m!8018062))

(declare-fun m!8018064 () Bool)

(assert (=> b!7359905 m!8018064))

(declare-fun m!8018066 () Bool)

(assert (=> d!2282022 m!8018066))

(declare-fun m!8018068 () Bool)

(assert (=> d!2282022 m!8018068))

(declare-fun m!8018070 () Bool)

(assert (=> d!2282022 m!8018070))

(declare-fun m!8018072 () Bool)

(assert (=> b!7359904 m!8018072))

(assert (=> b!7359761 d!2282022))

(declare-fun d!2282024 () Bool)

(declare-fun forall!18035 (List!71715 Int) Bool)

(assert (=> d!2282024 (forall!18035 (++!17037 (exprs!8659 ct1!282) (exprs!8659 ct2!378)) lambda!457259)))

(declare-fun lt!2613739 () Unit!165391)

(declare-fun choose!57244 (List!71715 List!71715 Int) Unit!165391)

(assert (=> d!2282024 (= lt!2613739 (choose!57244 (exprs!8659 ct1!282) (exprs!8659 ct2!378) lambda!457259))))

(assert (=> d!2282024 (forall!18035 (exprs!8659 ct1!282) lambda!457259)))

(assert (=> d!2282024 (= (lemmaConcatPreservesForall!1894 (exprs!8659 ct1!282) (exprs!8659 ct2!378) lambda!457259) lt!2613739)))

(declare-fun bs!1920048 () Bool)

(assert (= bs!1920048 d!2282024))

(assert (=> bs!1920048 m!8018000))

(assert (=> bs!1920048 m!8018000))

(declare-fun m!8018074 () Bool)

(assert (=> bs!1920048 m!8018074))

(declare-fun m!8018076 () Bool)

(assert (=> bs!1920048 m!8018076))

(declare-fun m!8018078 () Bool)

(assert (=> bs!1920048 m!8018078))

(assert (=> b!7359761 d!2282024))

(declare-fun b!7359918 () Bool)

(declare-fun e!4406589 () Bool)

(declare-fun call!674342 () Bool)

(assert (=> b!7359918 (= e!4406589 call!674342)))

(declare-fun b!7359919 () Bool)

(declare-fun e!4406591 () Bool)

(assert (=> b!7359919 (= e!4406591 e!4406589)))

(declare-fun res!2971396 () Bool)

(assert (=> b!7359919 (=> (not res!2971396) (not e!4406589))))

(declare-fun call!674340 () Bool)

(assert (=> b!7359919 (= res!2971396 call!674340)))

(declare-fun bm!674335 () Bool)

(declare-fun call!674341 () Bool)

(assert (=> bm!674335 (= call!674342 call!674341)))

(declare-fun b!7359920 () Bool)

(declare-fun e!4406595 () Bool)

(declare-fun e!4406590 () Bool)

(assert (=> b!7359920 (= e!4406595 e!4406590)))

(declare-fun res!2971399 () Bool)

(assert (=> b!7359920 (= res!2971399 (not (nullable!8306 (reg!19548 r1!2370))))))

(assert (=> b!7359920 (=> (not res!2971399) (not e!4406590))))

(declare-fun b!7359922 () Bool)

(assert (=> b!7359922 (= e!4406590 call!674341)))

(declare-fun bm!674336 () Bool)

(declare-fun c!1367498 () Bool)

(assert (=> bm!674336 (= call!674340 (validRegex!9815 (ite c!1367498 (regTwo!38951 r1!2370) (regOne!38950 r1!2370))))))

(declare-fun b!7359923 () Bool)

(declare-fun e!4406594 () Bool)

(assert (=> b!7359923 (= e!4406594 e!4406595)))

(declare-fun c!1367497 () Bool)

(assert (=> b!7359923 (= c!1367497 ((_ is Star!19219) r1!2370))))

(declare-fun b!7359924 () Bool)

(declare-fun e!4406593 () Bool)

(assert (=> b!7359924 (= e!4406593 call!674340)))

(declare-fun b!7359925 () Bool)

(declare-fun e!4406592 () Bool)

(assert (=> b!7359925 (= e!4406595 e!4406592)))

(assert (=> b!7359925 (= c!1367498 ((_ is Union!19219) r1!2370))))

(declare-fun b!7359926 () Bool)

(declare-fun res!2971397 () Bool)

(assert (=> b!7359926 (=> res!2971397 e!4406591)))

(assert (=> b!7359926 (= res!2971397 (not ((_ is Concat!28064) r1!2370)))))

(assert (=> b!7359926 (= e!4406592 e!4406591)))

(declare-fun bm!674337 () Bool)

(assert (=> bm!674337 (= call!674341 (validRegex!9815 (ite c!1367497 (reg!19548 r1!2370) (ite c!1367498 (regOne!38951 r1!2370) (regTwo!38950 r1!2370)))))))

(declare-fun b!7359921 () Bool)

(declare-fun res!2971398 () Bool)

(assert (=> b!7359921 (=> (not res!2971398) (not e!4406593))))

(assert (=> b!7359921 (= res!2971398 call!674342)))

(assert (=> b!7359921 (= e!4406592 e!4406593)))

(declare-fun d!2282026 () Bool)

(declare-fun res!2971395 () Bool)

(assert (=> d!2282026 (=> res!2971395 e!4406594)))

(assert (=> d!2282026 (= res!2971395 ((_ is ElementMatch!19219) r1!2370))))

(assert (=> d!2282026 (= (validRegex!9815 r1!2370) e!4406594)))

(assert (= (and d!2282026 (not res!2971395)) b!7359923))

(assert (= (and b!7359923 c!1367497) b!7359920))

(assert (= (and b!7359923 (not c!1367497)) b!7359925))

(assert (= (and b!7359920 res!2971399) b!7359922))

(assert (= (and b!7359925 c!1367498) b!7359921))

(assert (= (and b!7359925 (not c!1367498)) b!7359926))

(assert (= (and b!7359921 res!2971398) b!7359924))

(assert (= (and b!7359926 (not res!2971397)) b!7359919))

(assert (= (and b!7359919 res!2971396) b!7359918))

(assert (= (or b!7359921 b!7359918) bm!674335))

(assert (= (or b!7359924 b!7359919) bm!674336))

(assert (= (or b!7359922 bm!674335) bm!674337))

(declare-fun m!8018080 () Bool)

(assert (=> b!7359920 m!8018080))

(declare-fun m!8018082 () Bool)

(assert (=> bm!674336 m!8018082))

(declare-fun m!8018086 () Bool)

(assert (=> bm!674337 m!8018086))

(assert (=> start!718632 d!2282026))

(declare-fun bs!1920049 () Bool)

(declare-fun d!2282028 () Bool)

(assert (= bs!1920049 (and d!2282028 b!7359761)))

(declare-fun lambda!457267 () Int)

(assert (=> bs!1920049 (= lambda!457267 lambda!457259)))

(assert (=> d!2282028 (= (inv!91387 cWitness!61) (forall!18035 (exprs!8659 cWitness!61) lambda!457267))))

(declare-fun bs!1920050 () Bool)

(assert (= bs!1920050 d!2282028))

(declare-fun m!8018100 () Bool)

(assert (=> bs!1920050 m!8018100))

(assert (=> start!718632 d!2282028))

(declare-fun bs!1920051 () Bool)

(declare-fun d!2282034 () Bool)

(assert (= bs!1920051 (and d!2282034 b!7359761)))

(declare-fun lambda!457268 () Int)

(assert (=> bs!1920051 (= lambda!457268 lambda!457259)))

(declare-fun bs!1920052 () Bool)

(assert (= bs!1920052 (and d!2282034 d!2282028)))

(assert (=> bs!1920052 (= lambda!457268 lambda!457267)))

(assert (=> d!2282034 (= (inv!91387 ct1!282) (forall!18035 (exprs!8659 ct1!282) lambda!457268))))

(declare-fun bs!1920053 () Bool)

(assert (= bs!1920053 d!2282034))

(declare-fun m!8018112 () Bool)

(assert (=> bs!1920053 m!8018112))

(assert (=> start!718632 d!2282034))

(declare-fun bs!1920054 () Bool)

(declare-fun d!2282038 () Bool)

(assert (= bs!1920054 (and d!2282038 b!7359761)))

(declare-fun lambda!457269 () Int)

(assert (=> bs!1920054 (= lambda!457269 lambda!457259)))

(declare-fun bs!1920055 () Bool)

(assert (= bs!1920055 (and d!2282038 d!2282028)))

(assert (=> bs!1920055 (= lambda!457269 lambda!457267)))

(declare-fun bs!1920056 () Bool)

(assert (= bs!1920056 (and d!2282038 d!2282034)))

(assert (=> bs!1920056 (= lambda!457269 lambda!457268)))

(assert (=> d!2282038 (= (inv!91387 ct2!378) (forall!18035 (exprs!8659 ct2!378) lambda!457269))))

(declare-fun bs!1920057 () Bool)

(assert (= bs!1920057 d!2282038))

(declare-fun m!8018114 () Bool)

(assert (=> bs!1920057 m!8018114))

(assert (=> start!718632 d!2282038))

(declare-fun b!7359971 () Bool)

(declare-fun e!4406617 () Bool)

(declare-fun tp!2091124 () Bool)

(declare-fun tp!2091127 () Bool)

(assert (=> b!7359971 (= e!4406617 (and tp!2091124 tp!2091127))))

(declare-fun b!7359968 () Bool)

(assert (=> b!7359968 (= e!4406617 tp_is_empty!48683)))

(declare-fun b!7359969 () Bool)

(declare-fun tp!2091125 () Bool)

(declare-fun tp!2091126 () Bool)

(assert (=> b!7359969 (= e!4406617 (and tp!2091125 tp!2091126))))

(assert (=> b!7359754 (= tp!2091111 e!4406617)))

(declare-fun b!7359970 () Bool)

(declare-fun tp!2091128 () Bool)

(assert (=> b!7359970 (= e!4406617 tp!2091128)))

(assert (= (and b!7359754 ((_ is ElementMatch!19219) (regOne!38950 r1!2370))) b!7359968))

(assert (= (and b!7359754 ((_ is Concat!28064) (regOne!38950 r1!2370))) b!7359969))

(assert (= (and b!7359754 ((_ is Star!19219) (regOne!38950 r1!2370))) b!7359970))

(assert (= (and b!7359754 ((_ is Union!19219) (regOne!38950 r1!2370))) b!7359971))

(declare-fun b!7359975 () Bool)

(declare-fun e!4406618 () Bool)

(declare-fun tp!2091129 () Bool)

(declare-fun tp!2091132 () Bool)

(assert (=> b!7359975 (= e!4406618 (and tp!2091129 tp!2091132))))

(declare-fun b!7359972 () Bool)

(assert (=> b!7359972 (= e!4406618 tp_is_empty!48683)))

(declare-fun b!7359973 () Bool)

(declare-fun tp!2091130 () Bool)

(declare-fun tp!2091131 () Bool)

(assert (=> b!7359973 (= e!4406618 (and tp!2091130 tp!2091131))))

(assert (=> b!7359754 (= tp!2091109 e!4406618)))

(declare-fun b!7359974 () Bool)

(declare-fun tp!2091133 () Bool)

(assert (=> b!7359974 (= e!4406618 tp!2091133)))

(assert (= (and b!7359754 ((_ is ElementMatch!19219) (regTwo!38950 r1!2370))) b!7359972))

(assert (= (and b!7359754 ((_ is Concat!28064) (regTwo!38950 r1!2370))) b!7359973))

(assert (= (and b!7359754 ((_ is Star!19219) (regTwo!38950 r1!2370))) b!7359974))

(assert (= (and b!7359754 ((_ is Union!19219) (regTwo!38950 r1!2370))) b!7359975))

(declare-fun b!7359980 () Bool)

(declare-fun e!4406621 () Bool)

(declare-fun tp!2091138 () Bool)

(declare-fun tp!2091139 () Bool)

(assert (=> b!7359980 (= e!4406621 (and tp!2091138 tp!2091139))))

(assert (=> b!7359758 (= tp!2091110 e!4406621)))

(assert (= (and b!7359758 ((_ is Cons!71591) (exprs!8659 ct2!378))) b!7359980))

(declare-fun b!7359984 () Bool)

(declare-fun e!4406622 () Bool)

(declare-fun tp!2091140 () Bool)

(declare-fun tp!2091143 () Bool)

(assert (=> b!7359984 (= e!4406622 (and tp!2091140 tp!2091143))))

(declare-fun b!7359981 () Bool)

(assert (=> b!7359981 (= e!4406622 tp_is_empty!48683)))

(declare-fun b!7359982 () Bool)

(declare-fun tp!2091141 () Bool)

(declare-fun tp!2091142 () Bool)

(assert (=> b!7359982 (= e!4406622 (and tp!2091141 tp!2091142))))

(assert (=> b!7359762 (= tp!2091106 e!4406622)))

(declare-fun b!7359983 () Bool)

(declare-fun tp!2091144 () Bool)

(assert (=> b!7359983 (= e!4406622 tp!2091144)))

(assert (= (and b!7359762 ((_ is ElementMatch!19219) (regOne!38951 r1!2370))) b!7359981))

(assert (= (and b!7359762 ((_ is Concat!28064) (regOne!38951 r1!2370))) b!7359982))

(assert (= (and b!7359762 ((_ is Star!19219) (regOne!38951 r1!2370))) b!7359983))

(assert (= (and b!7359762 ((_ is Union!19219) (regOne!38951 r1!2370))) b!7359984))

(declare-fun b!7359988 () Bool)

(declare-fun e!4406623 () Bool)

(declare-fun tp!2091145 () Bool)

(declare-fun tp!2091148 () Bool)

(assert (=> b!7359988 (= e!4406623 (and tp!2091145 tp!2091148))))

(declare-fun b!7359985 () Bool)

(assert (=> b!7359985 (= e!4406623 tp_is_empty!48683)))

(declare-fun b!7359986 () Bool)

(declare-fun tp!2091146 () Bool)

(declare-fun tp!2091147 () Bool)

(assert (=> b!7359986 (= e!4406623 (and tp!2091146 tp!2091147))))

(assert (=> b!7359762 (= tp!2091113 e!4406623)))

(declare-fun b!7359987 () Bool)

(declare-fun tp!2091149 () Bool)

(assert (=> b!7359987 (= e!4406623 tp!2091149)))

(assert (= (and b!7359762 ((_ is ElementMatch!19219) (regTwo!38951 r1!2370))) b!7359985))

(assert (= (and b!7359762 ((_ is Concat!28064) (regTwo!38951 r1!2370))) b!7359986))

(assert (= (and b!7359762 ((_ is Star!19219) (regTwo!38951 r1!2370))) b!7359987))

(assert (= (and b!7359762 ((_ is Union!19219) (regTwo!38951 r1!2370))) b!7359988))

(declare-fun b!7359992 () Bool)

(declare-fun e!4406624 () Bool)

(declare-fun tp!2091150 () Bool)

(declare-fun tp!2091153 () Bool)

(assert (=> b!7359992 (= e!4406624 (and tp!2091150 tp!2091153))))

(declare-fun b!7359989 () Bool)

(assert (=> b!7359989 (= e!4406624 tp_is_empty!48683)))

(declare-fun b!7359990 () Bool)

(declare-fun tp!2091151 () Bool)

(declare-fun tp!2091152 () Bool)

(assert (=> b!7359990 (= e!4406624 (and tp!2091151 tp!2091152))))

(assert (=> b!7359757 (= tp!2091107 e!4406624)))

(declare-fun b!7359991 () Bool)

(declare-fun tp!2091154 () Bool)

(assert (=> b!7359991 (= e!4406624 tp!2091154)))

(assert (= (and b!7359757 ((_ is ElementMatch!19219) (reg!19548 r1!2370))) b!7359989))

(assert (= (and b!7359757 ((_ is Concat!28064) (reg!19548 r1!2370))) b!7359990))

(assert (= (and b!7359757 ((_ is Star!19219) (reg!19548 r1!2370))) b!7359991))

(assert (= (and b!7359757 ((_ is Union!19219) (reg!19548 r1!2370))) b!7359992))

(declare-fun b!7359993 () Bool)

(declare-fun e!4406625 () Bool)

(declare-fun tp!2091155 () Bool)

(declare-fun tp!2091156 () Bool)

(assert (=> b!7359993 (= e!4406625 (and tp!2091155 tp!2091156))))

(assert (=> b!7359750 (= tp!2091112 e!4406625)))

(assert (= (and b!7359750 ((_ is Cons!71591) (exprs!8659 ct1!282))) b!7359993))

(declare-fun b!7359994 () Bool)

(declare-fun e!4406626 () Bool)

(declare-fun tp!2091157 () Bool)

(declare-fun tp!2091158 () Bool)

(assert (=> b!7359994 (= e!4406626 (and tp!2091157 tp!2091158))))

(assert (=> b!7359755 (= tp!2091108 e!4406626)))

(assert (= (and b!7359755 ((_ is Cons!71591) (exprs!8659 cWitness!61))) b!7359994))

(check-sat (not b!7359990) (not b!7359991) (not b!7359970) (not d!2282024) (not bm!674282) (not bm!674283) (not b!7359973) (not bm!674285) (not bm!674291) (not b!7359988) (not bm!674310) (not b!7359994) (not b!7359992) (not bm!674313) (not b!7359987) (not bm!674337) (not b!7359980) (not b!7359905) tp_is_empty!48683 (not d!2282018) (not b!7359984) (not b!7359983) (not b!7359920) (not b!7359904) (not bm!674336) (not b!7359791) (not bm!674312) (not d!2282028) (not d!2282022) (not b!7359810) (not b!7359855) (not d!2282038) (not bm!674309) (not b!7359867) (not b!7359986) (not b!7359993) (not b!7359975) (not bm!674288) (not b!7359969) (not bm!674289) (not bm!674315) (not b!7359971) (not b!7359982) (not b!7359974) (not d!2282034))
(check-sat)
