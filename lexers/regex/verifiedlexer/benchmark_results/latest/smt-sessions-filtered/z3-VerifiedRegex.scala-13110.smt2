; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!716940 () Bool)

(assert start!716940)

(declare-fun b!7340171 () Bool)

(declare-fun e!4395300 () Bool)

(declare-fun tp_is_empty!48463 () Bool)

(assert (=> b!7340171 (= e!4395300 tp_is_empty!48463)))

(declare-fun b!7340172 () Bool)

(declare-fun e!4395301 () Bool)

(declare-datatypes ((C!38492 0))(
  ( (C!38493 (val!29606 Int)) )
))
(declare-datatypes ((Regex!19109 0))(
  ( (ElementMatch!19109 (c!1363321 C!38492)) (Concat!27954 (regOne!38730 Regex!19109) (regTwo!38730 Regex!19109)) (EmptyExpr!19109) (Star!19109 (reg!19438 Regex!19109)) (EmptyLang!19109) (Union!19109 (regOne!38731 Regex!19109) (regTwo!38731 Regex!19109)) )
))
(declare-datatypes ((List!71605 0))(
  ( (Nil!71481) (Cons!71481 (h!77929 Regex!19109) (t!386000 List!71605)) )
))
(declare-datatypes ((Context!16098 0))(
  ( (Context!16099 (exprs!8549 List!71605)) )
))
(declare-fun ct2!378 () Context!16098)

(declare-fun lambda!455529 () Int)

(declare-fun forall!17941 (List!71605 Int) Bool)

(assert (=> b!7340172 (= e!4395301 (forall!17941 (exprs!8549 ct2!378) lambda!455529))))

(declare-fun b!7340173 () Bool)

(declare-fun e!4395305 () Bool)

(declare-fun e!4395303 () Bool)

(assert (=> b!7340173 (= e!4395305 e!4395303)))

(declare-fun res!2965433 () Bool)

(assert (=> b!7340173 (=> (not res!2965433) (not e!4395303))))

(declare-fun cWitness!61 () Context!16098)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2609879 () (InoxSet Context!16098))

(assert (=> b!7340173 (= res!2965433 (select lt!2609879 cWitness!61))))

(declare-fun r1!2370 () Regex!19109)

(declare-fun c!10362 () C!38492)

(declare-fun ct1!282 () Context!16098)

(declare-fun derivationStepZipperDown!2935 (Regex!19109 Context!16098 C!38492) (InoxSet Context!16098))

(assert (=> b!7340173 (= lt!2609879 (derivationStepZipperDown!2935 r1!2370 ct1!282 c!10362))))

(declare-fun b!7340174 () Bool)

(declare-fun e!4395299 () Bool)

(declare-fun e!4395302 () Bool)

(assert (=> b!7340174 (= e!4395299 e!4395302)))

(declare-fun res!2965437 () Bool)

(assert (=> b!7340174 (=> (not res!2965437) (not e!4395302))))

(declare-fun lt!2609881 () (InoxSet Context!16098))

(assert (=> b!7340174 (= res!2965437 (= lt!2609879 ((_ map or) lt!2609881 (derivationStepZipperDown!2935 (regTwo!38731 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7340174 (= lt!2609881 (derivationStepZipperDown!2935 (regOne!38731 r1!2370) ct1!282 c!10362))))

(declare-fun b!7340175 () Bool)

(assert (=> b!7340175 (= e!4395302 (not e!4395301))))

(declare-fun res!2965435 () Bool)

(assert (=> b!7340175 (=> res!2965435 e!4395301)))

(assert (=> b!7340175 (= res!2965435 (not (forall!17941 (exprs!8549 cWitness!61) lambda!455529)))))

(declare-fun lt!2609880 () Context!16098)

(declare-fun ++!16927 (List!71605 List!71605) List!71605)

(assert (=> b!7340175 (select (derivationStepZipperDown!2935 (regOne!38731 r1!2370) lt!2609880 c!10362) (Context!16099 (++!16927 (exprs!8549 cWitness!61) (exprs!8549 ct2!378))))))

(declare-datatypes ((Unit!165171 0))(
  ( (Unit!165172) )
))
(declare-fun lt!2609878 () Unit!165171)

(declare-fun lemmaConcatPreservesForall!1784 (List!71605 List!71605 Int) Unit!165171)

(assert (=> b!7340175 (= lt!2609878 (lemmaConcatPreservesForall!1784 (exprs!8549 ct1!282) (exprs!8549 ct2!378) lambda!455529))))

(declare-fun lt!2609874 () Unit!165171)

(assert (=> b!7340175 (= lt!2609874 (lemmaConcatPreservesForall!1784 (exprs!8549 cWitness!61) (exprs!8549 ct2!378) lambda!455529))))

(declare-fun lt!2609876 () Unit!165171)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!44 (Regex!19109 Context!16098 Context!16098 Context!16098 C!38492) Unit!165171)

(assert (=> b!7340175 (= lt!2609876 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!44 (regOne!38731 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7340176 () Bool)

(assert (=> b!7340176 (= e!4395303 e!4395299)))

(declare-fun res!2965438 () Bool)

(assert (=> b!7340176 (=> (not res!2965438) (not e!4395299))))

(get-info :version)

(assert (=> b!7340176 (= res!2965438 (and (or (not ((_ is ElementMatch!19109) r1!2370)) (not (= c!10362 (c!1363321 r1!2370)))) ((_ is Union!19109) r1!2370)))))

(declare-fun lt!2609877 () (InoxSet Context!16098))

(assert (=> b!7340176 (= lt!2609877 (derivationStepZipperDown!2935 r1!2370 lt!2609880 c!10362))))

(assert (=> b!7340176 (= lt!2609880 (Context!16099 (++!16927 (exprs!8549 ct1!282) (exprs!8549 ct2!378))))))

(declare-fun lt!2609875 () Unit!165171)

(assert (=> b!7340176 (= lt!2609875 (lemmaConcatPreservesForall!1784 (exprs!8549 ct1!282) (exprs!8549 ct2!378) lambda!455529))))

(declare-fun b!7340177 () Bool)

(declare-fun e!4395306 () Bool)

(declare-fun tp!2084243 () Bool)

(assert (=> b!7340177 (= e!4395306 tp!2084243)))

(declare-fun b!7340178 () Bool)

(declare-fun e!4395304 () Bool)

(declare-fun tp!2084240 () Bool)

(assert (=> b!7340178 (= e!4395304 tp!2084240)))

(declare-fun b!7340179 () Bool)

(declare-fun tp!2084239 () Bool)

(declare-fun tp!2084237 () Bool)

(assert (=> b!7340179 (= e!4395300 (and tp!2084239 tp!2084237))))

(declare-fun b!7340180 () Bool)

(declare-fun tp!2084241 () Bool)

(assert (=> b!7340180 (= e!4395300 tp!2084241)))

(declare-fun res!2965436 () Bool)

(assert (=> start!716940 (=> (not res!2965436) (not e!4395305))))

(declare-fun validRegex!9705 (Regex!19109) Bool)

(assert (=> start!716940 (= res!2965436 (validRegex!9705 r1!2370))))

(assert (=> start!716940 e!4395305))

(assert (=> start!716940 tp_is_empty!48463))

(declare-fun inv!91112 (Context!16098) Bool)

(assert (=> start!716940 (and (inv!91112 cWitness!61) e!4395306)))

(assert (=> start!716940 (and (inv!91112 ct1!282) e!4395304)))

(assert (=> start!716940 e!4395300))

(declare-fun e!4395298 () Bool)

(assert (=> start!716940 (and (inv!91112 ct2!378) e!4395298)))

(declare-fun b!7340181 () Bool)

(declare-fun res!2965434 () Bool)

(assert (=> b!7340181 (=> (not res!2965434) (not e!4395302))))

(assert (=> b!7340181 (= res!2965434 (select lt!2609881 cWitness!61))))

(declare-fun b!7340182 () Bool)

(declare-fun tp!2084242 () Bool)

(assert (=> b!7340182 (= e!4395298 tp!2084242)))

(declare-fun b!7340183 () Bool)

(declare-fun tp!2084238 () Bool)

(declare-fun tp!2084236 () Bool)

(assert (=> b!7340183 (= e!4395300 (and tp!2084238 tp!2084236))))

(assert (= (and start!716940 res!2965436) b!7340173))

(assert (= (and b!7340173 res!2965433) b!7340176))

(assert (= (and b!7340176 res!2965438) b!7340174))

(assert (= (and b!7340174 res!2965437) b!7340181))

(assert (= (and b!7340181 res!2965434) b!7340175))

(assert (= (and b!7340175 (not res!2965435)) b!7340172))

(assert (= start!716940 b!7340177))

(assert (= start!716940 b!7340178))

(assert (= (and start!716940 ((_ is ElementMatch!19109) r1!2370)) b!7340171))

(assert (= (and start!716940 ((_ is Concat!27954) r1!2370)) b!7340183))

(assert (= (and start!716940 ((_ is Star!19109) r1!2370)) b!7340180))

(assert (= (and start!716940 ((_ is Union!19109) r1!2370)) b!7340179))

(assert (= start!716940 b!7340182))

(declare-fun m!8004164 () Bool)

(assert (=> b!7340172 m!8004164))

(declare-fun m!8004166 () Bool)

(assert (=> b!7340181 m!8004166))

(declare-fun m!8004168 () Bool)

(assert (=> b!7340176 m!8004168))

(declare-fun m!8004170 () Bool)

(assert (=> b!7340176 m!8004170))

(declare-fun m!8004172 () Bool)

(assert (=> b!7340176 m!8004172))

(declare-fun m!8004174 () Bool)

(assert (=> b!7340174 m!8004174))

(declare-fun m!8004176 () Bool)

(assert (=> b!7340174 m!8004176))

(declare-fun m!8004178 () Bool)

(assert (=> b!7340175 m!8004178))

(declare-fun m!8004180 () Bool)

(assert (=> b!7340175 m!8004180))

(declare-fun m!8004182 () Bool)

(assert (=> b!7340175 m!8004182))

(assert (=> b!7340175 m!8004172))

(declare-fun m!8004184 () Bool)

(assert (=> b!7340175 m!8004184))

(declare-fun m!8004186 () Bool)

(assert (=> b!7340175 m!8004186))

(declare-fun m!8004188 () Bool)

(assert (=> b!7340175 m!8004188))

(declare-fun m!8004190 () Bool)

(assert (=> b!7340173 m!8004190))

(declare-fun m!8004192 () Bool)

(assert (=> b!7340173 m!8004192))

(declare-fun m!8004194 () Bool)

(assert (=> start!716940 m!8004194))

(declare-fun m!8004196 () Bool)

(assert (=> start!716940 m!8004196))

(declare-fun m!8004198 () Bool)

(assert (=> start!716940 m!8004198))

(declare-fun m!8004200 () Bool)

(assert (=> start!716940 m!8004200))

(check-sat (not b!7340177) (not b!7340180) (not b!7340179) (not b!7340176) (not b!7340182) (not b!7340178) tp_is_empty!48463 (not b!7340174) (not b!7340175) (not start!716940) (not b!7340172) (not b!7340173) (not b!7340183))
(check-sat)
(get-model)

(declare-fun bm!669832 () Bool)

(declare-fun call!669842 () List!71605)

(declare-fun call!669841 () List!71605)

(assert (=> bm!669832 (= call!669842 call!669841)))

(declare-fun b!7340255 () Bool)

(declare-fun c!1363349 () Bool)

(declare-fun e!4395352 () Bool)

(assert (=> b!7340255 (= c!1363349 e!4395352)))

(declare-fun res!2965458 () Bool)

(assert (=> b!7340255 (=> (not res!2965458) (not e!4395352))))

(assert (=> b!7340255 (= res!2965458 ((_ is Concat!27954) r1!2370))))

(declare-fun e!4395355 () (InoxSet Context!16098))

(declare-fun e!4395357 () (InoxSet Context!16098))

(assert (=> b!7340255 (= e!4395355 e!4395357)))

(declare-fun b!7340256 () Bool)

(declare-fun c!1363351 () Bool)

(assert (=> b!7340256 (= c!1363351 ((_ is Star!19109) r1!2370))))

(declare-fun e!4395353 () (InoxSet Context!16098))

(declare-fun e!4395354 () (InoxSet Context!16098))

(assert (=> b!7340256 (= e!4395353 e!4395354)))

(declare-fun b!7340257 () Bool)

(assert (=> b!7340257 (= e!4395354 ((as const (Array Context!16098 Bool)) false))))

(declare-fun b!7340258 () Bool)

(declare-fun e!4395356 () (InoxSet Context!16098))

(assert (=> b!7340258 (= e!4395356 e!4395355)))

(declare-fun c!1363348 () Bool)

(assert (=> b!7340258 (= c!1363348 ((_ is Union!19109) r1!2370))))

(declare-fun b!7340259 () Bool)

(declare-fun call!669837 () (InoxSet Context!16098))

(assert (=> b!7340259 (= e!4395353 call!669837)))

(declare-fun b!7340260 () Bool)

(assert (=> b!7340260 (= e!4395354 call!669837)))

(declare-fun b!7340261 () Bool)

(declare-fun call!669838 () (InoxSet Context!16098))

(declare-fun call!669840 () (InoxSet Context!16098))

(assert (=> b!7340261 (= e!4395357 ((_ map or) call!669838 call!669840))))

(declare-fun b!7340262 () Bool)

(assert (=> b!7340262 (= e!4395357 e!4395353)))

(declare-fun c!1363352 () Bool)

(assert (=> b!7340262 (= c!1363352 ((_ is Concat!27954) r1!2370))))

(declare-fun bm!669833 () Bool)

(declare-fun $colon$colon!3110 (List!71605 Regex!19109) List!71605)

(assert (=> bm!669833 (= call!669841 ($colon$colon!3110 (exprs!8549 ct1!282) (ite (or c!1363349 c!1363352) (regTwo!38730 r1!2370) r1!2370)))))

(declare-fun b!7340263 () Bool)

(declare-fun nullable!8204 (Regex!19109) Bool)

(assert (=> b!7340263 (= e!4395352 (nullable!8204 (regOne!38730 r1!2370)))))

(declare-fun bm!669835 () Bool)

(assert (=> bm!669835 (= call!669838 (derivationStepZipperDown!2935 (ite c!1363348 (regOne!38731 r1!2370) (regOne!38730 r1!2370)) (ite c!1363348 ct1!282 (Context!16099 call!669841)) c!10362))))

(declare-fun bm!669836 () Bool)

(declare-fun call!669839 () (InoxSet Context!16098))

(assert (=> bm!669836 (= call!669839 (derivationStepZipperDown!2935 (ite c!1363348 (regTwo!38731 r1!2370) (ite c!1363349 (regTwo!38730 r1!2370) (ite c!1363352 (regOne!38730 r1!2370) (reg!19438 r1!2370)))) (ite (or c!1363348 c!1363349) ct1!282 (Context!16099 call!669842)) c!10362))))

(declare-fun bm!669837 () Bool)

(assert (=> bm!669837 (= call!669837 call!669840)))

(declare-fun b!7340264 () Bool)

(assert (=> b!7340264 (= e!4395356 (store ((as const (Array Context!16098 Bool)) false) ct1!282 true))))

(declare-fun b!7340265 () Bool)

(assert (=> b!7340265 (= e!4395355 ((_ map or) call!669838 call!669839))))

(declare-fun d!2278643 () Bool)

(declare-fun c!1363350 () Bool)

(assert (=> d!2278643 (= c!1363350 (and ((_ is ElementMatch!19109) r1!2370) (= (c!1363321 r1!2370) c!10362)))))

(assert (=> d!2278643 (= (derivationStepZipperDown!2935 r1!2370 ct1!282 c!10362) e!4395356)))

(declare-fun bm!669834 () Bool)

(assert (=> bm!669834 (= call!669840 call!669839)))

(assert (= (and d!2278643 c!1363350) b!7340264))

(assert (= (and d!2278643 (not c!1363350)) b!7340258))

(assert (= (and b!7340258 c!1363348) b!7340265))

(assert (= (and b!7340258 (not c!1363348)) b!7340255))

(assert (= (and b!7340255 res!2965458) b!7340263))

(assert (= (and b!7340255 c!1363349) b!7340261))

(assert (= (and b!7340255 (not c!1363349)) b!7340262))

(assert (= (and b!7340262 c!1363352) b!7340259))

(assert (= (and b!7340262 (not c!1363352)) b!7340256))

(assert (= (and b!7340256 c!1363351) b!7340260))

(assert (= (and b!7340256 (not c!1363351)) b!7340257))

(assert (= (or b!7340259 b!7340260) bm!669832))

(assert (= (or b!7340259 b!7340260) bm!669837))

(assert (= (or b!7340261 bm!669837) bm!669834))

(assert (= (or b!7340261 bm!669832) bm!669833))

(assert (= (or b!7340265 bm!669834) bm!669836))

(assert (= (or b!7340265 b!7340261) bm!669835))

(declare-fun m!8004214 () Bool)

(assert (=> bm!669833 m!8004214))

(declare-fun m!8004216 () Bool)

(assert (=> bm!669836 m!8004216))

(declare-fun m!8004218 () Bool)

(assert (=> bm!669835 m!8004218))

(declare-fun m!8004220 () Bool)

(assert (=> b!7340264 m!8004220))

(declare-fun m!8004222 () Bool)

(assert (=> b!7340263 m!8004222))

(assert (=> b!7340173 d!2278643))

(declare-fun d!2278653 () Bool)

(declare-fun res!2965465 () Bool)

(declare-fun e!4395374 () Bool)

(assert (=> d!2278653 (=> res!2965465 e!4395374)))

(assert (=> d!2278653 (= res!2965465 ((_ is Nil!71481) (exprs!8549 ct2!378)))))

(assert (=> d!2278653 (= (forall!17941 (exprs!8549 ct2!378) lambda!455529) e!4395374)))

(declare-fun b!7340292 () Bool)

(declare-fun e!4395375 () Bool)

(assert (=> b!7340292 (= e!4395374 e!4395375)))

(declare-fun res!2965466 () Bool)

(assert (=> b!7340292 (=> (not res!2965466) (not e!4395375))))

(declare-fun dynLambda!29448 (Int Regex!19109) Bool)

(assert (=> b!7340292 (= res!2965466 (dynLambda!29448 lambda!455529 (h!77929 (exprs!8549 ct2!378))))))

(declare-fun b!7340293 () Bool)

(assert (=> b!7340293 (= e!4395375 (forall!17941 (t!386000 (exprs!8549 ct2!378)) lambda!455529))))

(assert (= (and d!2278653 (not res!2965465)) b!7340292))

(assert (= (and b!7340292 res!2965466) b!7340293))

(declare-fun b_lambda!283843 () Bool)

(assert (=> (not b_lambda!283843) (not b!7340292)))

(declare-fun m!8004242 () Bool)

(assert (=> b!7340292 m!8004242))

(declare-fun m!8004244 () Bool)

(assert (=> b!7340293 m!8004244))

(assert (=> b!7340172 d!2278653))

(declare-fun bm!669850 () Bool)

(declare-fun call!669860 () List!71605)

(declare-fun call!669859 () List!71605)

(assert (=> bm!669850 (= call!669860 call!669859)))

(declare-fun b!7340294 () Bool)

(declare-fun c!1363364 () Bool)

(declare-fun e!4395376 () Bool)

(assert (=> b!7340294 (= c!1363364 e!4395376)))

(declare-fun res!2965467 () Bool)

(assert (=> b!7340294 (=> (not res!2965467) (not e!4395376))))

(assert (=> b!7340294 (= res!2965467 ((_ is Concat!27954) r1!2370))))

(declare-fun e!4395379 () (InoxSet Context!16098))

(declare-fun e!4395381 () (InoxSet Context!16098))

(assert (=> b!7340294 (= e!4395379 e!4395381)))

(declare-fun b!7340295 () Bool)

(declare-fun c!1363366 () Bool)

(assert (=> b!7340295 (= c!1363366 ((_ is Star!19109) r1!2370))))

(declare-fun e!4395377 () (InoxSet Context!16098))

(declare-fun e!4395378 () (InoxSet Context!16098))

(assert (=> b!7340295 (= e!4395377 e!4395378)))

(declare-fun b!7340296 () Bool)

(assert (=> b!7340296 (= e!4395378 ((as const (Array Context!16098 Bool)) false))))

(declare-fun b!7340297 () Bool)

(declare-fun e!4395380 () (InoxSet Context!16098))

(assert (=> b!7340297 (= e!4395380 e!4395379)))

(declare-fun c!1363363 () Bool)

(assert (=> b!7340297 (= c!1363363 ((_ is Union!19109) r1!2370))))

(declare-fun b!7340298 () Bool)

(declare-fun call!669855 () (InoxSet Context!16098))

(assert (=> b!7340298 (= e!4395377 call!669855)))

(declare-fun b!7340299 () Bool)

(assert (=> b!7340299 (= e!4395378 call!669855)))

(declare-fun b!7340300 () Bool)

(declare-fun call!669856 () (InoxSet Context!16098))

(declare-fun call!669858 () (InoxSet Context!16098))

(assert (=> b!7340300 (= e!4395381 ((_ map or) call!669856 call!669858))))

(declare-fun b!7340301 () Bool)

(assert (=> b!7340301 (= e!4395381 e!4395377)))

(declare-fun c!1363367 () Bool)

(assert (=> b!7340301 (= c!1363367 ((_ is Concat!27954) r1!2370))))

(declare-fun bm!669851 () Bool)

(assert (=> bm!669851 (= call!669859 ($colon$colon!3110 (exprs!8549 lt!2609880) (ite (or c!1363364 c!1363367) (regTwo!38730 r1!2370) r1!2370)))))

(declare-fun b!7340302 () Bool)

(assert (=> b!7340302 (= e!4395376 (nullable!8204 (regOne!38730 r1!2370)))))

(declare-fun bm!669853 () Bool)

(assert (=> bm!669853 (= call!669856 (derivationStepZipperDown!2935 (ite c!1363363 (regOne!38731 r1!2370) (regOne!38730 r1!2370)) (ite c!1363363 lt!2609880 (Context!16099 call!669859)) c!10362))))

(declare-fun call!669857 () (InoxSet Context!16098))

(declare-fun bm!669854 () Bool)

(assert (=> bm!669854 (= call!669857 (derivationStepZipperDown!2935 (ite c!1363363 (regTwo!38731 r1!2370) (ite c!1363364 (regTwo!38730 r1!2370) (ite c!1363367 (regOne!38730 r1!2370) (reg!19438 r1!2370)))) (ite (or c!1363363 c!1363364) lt!2609880 (Context!16099 call!669860)) c!10362))))

(declare-fun bm!669855 () Bool)

(assert (=> bm!669855 (= call!669855 call!669858)))

(declare-fun b!7340303 () Bool)

(assert (=> b!7340303 (= e!4395380 (store ((as const (Array Context!16098 Bool)) false) lt!2609880 true))))

(declare-fun b!7340304 () Bool)

(assert (=> b!7340304 (= e!4395379 ((_ map or) call!669856 call!669857))))

(declare-fun d!2278659 () Bool)

(declare-fun c!1363365 () Bool)

(assert (=> d!2278659 (= c!1363365 (and ((_ is ElementMatch!19109) r1!2370) (= (c!1363321 r1!2370) c!10362)))))

(assert (=> d!2278659 (= (derivationStepZipperDown!2935 r1!2370 lt!2609880 c!10362) e!4395380)))

(declare-fun bm!669852 () Bool)

(assert (=> bm!669852 (= call!669858 call!669857)))

(assert (= (and d!2278659 c!1363365) b!7340303))

(assert (= (and d!2278659 (not c!1363365)) b!7340297))

(assert (= (and b!7340297 c!1363363) b!7340304))

(assert (= (and b!7340297 (not c!1363363)) b!7340294))

(assert (= (and b!7340294 res!2965467) b!7340302))

(assert (= (and b!7340294 c!1363364) b!7340300))

(assert (= (and b!7340294 (not c!1363364)) b!7340301))

(assert (= (and b!7340301 c!1363367) b!7340298))

(assert (= (and b!7340301 (not c!1363367)) b!7340295))

(assert (= (and b!7340295 c!1363366) b!7340299))

(assert (= (and b!7340295 (not c!1363366)) b!7340296))

(assert (= (or b!7340298 b!7340299) bm!669850))

(assert (= (or b!7340298 b!7340299) bm!669855))

(assert (= (or b!7340300 bm!669855) bm!669852))

(assert (= (or b!7340300 bm!669850) bm!669851))

(assert (= (or b!7340304 bm!669852) bm!669854))

(assert (= (or b!7340304 b!7340300) bm!669853))

(declare-fun m!8004246 () Bool)

(assert (=> bm!669851 m!8004246))

(declare-fun m!8004248 () Bool)

(assert (=> bm!669854 m!8004248))

(declare-fun m!8004250 () Bool)

(assert (=> bm!669853 m!8004250))

(declare-fun m!8004252 () Bool)

(assert (=> b!7340303 m!8004252))

(assert (=> b!7340302 m!8004222))

(assert (=> b!7340176 d!2278659))

(declare-fun d!2278661 () Bool)

(declare-fun e!4395392 () Bool)

(assert (=> d!2278661 e!4395392))

(declare-fun res!2965479 () Bool)

(assert (=> d!2278661 (=> (not res!2965479) (not e!4395392))))

(declare-fun lt!2609884 () List!71605)

(declare-fun content!15025 (List!71605) (InoxSet Regex!19109))

(assert (=> d!2278661 (= res!2965479 (= (content!15025 lt!2609884) ((_ map or) (content!15025 (exprs!8549 ct1!282)) (content!15025 (exprs!8549 ct2!378)))))))

(declare-fun e!4395393 () List!71605)

(assert (=> d!2278661 (= lt!2609884 e!4395393)))

(declare-fun c!1363370 () Bool)

(assert (=> d!2278661 (= c!1363370 ((_ is Nil!71481) (exprs!8549 ct1!282)))))

(assert (=> d!2278661 (= (++!16927 (exprs!8549 ct1!282) (exprs!8549 ct2!378)) lt!2609884)))

(declare-fun b!7340321 () Bool)

(declare-fun res!2965478 () Bool)

(assert (=> b!7340321 (=> (not res!2965478) (not e!4395392))))

(declare-fun size!42004 (List!71605) Int)

(assert (=> b!7340321 (= res!2965478 (= (size!42004 lt!2609884) (+ (size!42004 (exprs!8549 ct1!282)) (size!42004 (exprs!8549 ct2!378)))))))

(declare-fun b!7340319 () Bool)

(assert (=> b!7340319 (= e!4395393 (exprs!8549 ct2!378))))

(declare-fun b!7340322 () Bool)

(assert (=> b!7340322 (= e!4395392 (or (not (= (exprs!8549 ct2!378) Nil!71481)) (= lt!2609884 (exprs!8549 ct1!282))))))

(declare-fun b!7340320 () Bool)

(assert (=> b!7340320 (= e!4395393 (Cons!71481 (h!77929 (exprs!8549 ct1!282)) (++!16927 (t!386000 (exprs!8549 ct1!282)) (exprs!8549 ct2!378))))))

(assert (= (and d!2278661 c!1363370) b!7340319))

(assert (= (and d!2278661 (not c!1363370)) b!7340320))

(assert (= (and d!2278661 res!2965479) b!7340321))

(assert (= (and b!7340321 res!2965478) b!7340322))

(declare-fun m!8004258 () Bool)

(assert (=> d!2278661 m!8004258))

(declare-fun m!8004260 () Bool)

(assert (=> d!2278661 m!8004260))

(declare-fun m!8004262 () Bool)

(assert (=> d!2278661 m!8004262))

(declare-fun m!8004264 () Bool)

(assert (=> b!7340321 m!8004264))

(declare-fun m!8004266 () Bool)

(assert (=> b!7340321 m!8004266))

(declare-fun m!8004268 () Bool)

(assert (=> b!7340321 m!8004268))

(declare-fun m!8004270 () Bool)

(assert (=> b!7340320 m!8004270))

(assert (=> b!7340176 d!2278661))

(declare-fun d!2278665 () Bool)

(assert (=> d!2278665 (forall!17941 (++!16927 (exprs!8549 ct1!282) (exprs!8549 ct2!378)) lambda!455529)))

(declare-fun lt!2609893 () Unit!165171)

(declare-fun choose!57089 (List!71605 List!71605 Int) Unit!165171)

(assert (=> d!2278665 (= lt!2609893 (choose!57089 (exprs!8549 ct1!282) (exprs!8549 ct2!378) lambda!455529))))

(assert (=> d!2278665 (forall!17941 (exprs!8549 ct1!282) lambda!455529)))

(assert (=> d!2278665 (= (lemmaConcatPreservesForall!1784 (exprs!8549 ct1!282) (exprs!8549 ct2!378) lambda!455529) lt!2609893)))

(declare-fun bs!1918353 () Bool)

(assert (= bs!1918353 d!2278665))

(assert (=> bs!1918353 m!8004170))

(assert (=> bs!1918353 m!8004170))

(declare-fun m!8004272 () Bool)

(assert (=> bs!1918353 m!8004272))

(declare-fun m!8004274 () Bool)

(assert (=> bs!1918353 m!8004274))

(declare-fun m!8004276 () Bool)

(assert (=> bs!1918353 m!8004276))

(assert (=> b!7340176 d!2278665))

(declare-fun d!2278667 () Bool)

(declare-fun res!2965480 () Bool)

(declare-fun e!4395394 () Bool)

(assert (=> d!2278667 (=> res!2965480 e!4395394)))

(assert (=> d!2278667 (= res!2965480 ((_ is Nil!71481) (exprs!8549 cWitness!61)))))

(assert (=> d!2278667 (= (forall!17941 (exprs!8549 cWitness!61) lambda!455529) e!4395394)))

(declare-fun b!7340323 () Bool)

(declare-fun e!4395395 () Bool)

(assert (=> b!7340323 (= e!4395394 e!4395395)))

(declare-fun res!2965481 () Bool)

(assert (=> b!7340323 (=> (not res!2965481) (not e!4395395))))

(assert (=> b!7340323 (= res!2965481 (dynLambda!29448 lambda!455529 (h!77929 (exprs!8549 cWitness!61))))))

(declare-fun b!7340324 () Bool)

(assert (=> b!7340324 (= e!4395395 (forall!17941 (t!386000 (exprs!8549 cWitness!61)) lambda!455529))))

(assert (= (and d!2278667 (not res!2965480)) b!7340323))

(assert (= (and b!7340323 res!2965481) b!7340324))

(declare-fun b_lambda!283847 () Bool)

(assert (=> (not b_lambda!283847) (not b!7340323)))

(declare-fun m!8004278 () Bool)

(assert (=> b!7340323 m!8004278))

(declare-fun m!8004280 () Bool)

(assert (=> b!7340324 m!8004280))

(assert (=> b!7340175 d!2278667))

(declare-fun bs!1918360 () Bool)

(declare-fun d!2278669 () Bool)

(assert (= bs!1918360 (and d!2278669 b!7340176)))

(declare-fun lambda!455544 () Int)

(assert (=> bs!1918360 (= lambda!455544 lambda!455529)))

(assert (=> d!2278669 (select (derivationStepZipperDown!2935 (regOne!38731 r1!2370) (Context!16099 (++!16927 (exprs!8549 ct1!282) (exprs!8549 ct2!378))) c!10362) (Context!16099 (++!16927 (exprs!8549 cWitness!61) (exprs!8549 ct2!378))))))

(declare-fun lt!2609908 () Unit!165171)

(assert (=> d!2278669 (= lt!2609908 (lemmaConcatPreservesForall!1784 (exprs!8549 ct1!282) (exprs!8549 ct2!378) lambda!455544))))

(declare-fun lt!2609907 () Unit!165171)

(assert (=> d!2278669 (= lt!2609907 (lemmaConcatPreservesForall!1784 (exprs!8549 cWitness!61) (exprs!8549 ct2!378) lambda!455544))))

(declare-fun lt!2609906 () Unit!165171)

(declare-fun choose!57091 (Regex!19109 Context!16098 Context!16098 Context!16098 C!38492) Unit!165171)

(assert (=> d!2278669 (= lt!2609906 (choose!57091 (regOne!38731 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2278669 (validRegex!9705 (regOne!38731 r1!2370))))

(assert (=> d!2278669 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!44 (regOne!38731 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2609906)))

(declare-fun bs!1918361 () Bool)

(assert (= bs!1918361 d!2278669))

(assert (=> bs!1918361 m!8004182))

(declare-fun m!8004306 () Bool)

(assert (=> bs!1918361 m!8004306))

(declare-fun m!8004308 () Bool)

(assert (=> bs!1918361 m!8004308))

(declare-fun m!8004310 () Bool)

(assert (=> bs!1918361 m!8004310))

(declare-fun m!8004312 () Bool)

(assert (=> bs!1918361 m!8004312))

(declare-fun m!8004314 () Bool)

(assert (=> bs!1918361 m!8004314))

(assert (=> bs!1918361 m!8004170))

(declare-fun m!8004316 () Bool)

(assert (=> bs!1918361 m!8004316))

(assert (=> b!7340175 d!2278669))

(declare-fun d!2278677 () Bool)

(assert (=> d!2278677 (forall!17941 (++!16927 (exprs!8549 cWitness!61) (exprs!8549 ct2!378)) lambda!455529)))

(declare-fun lt!2609911 () Unit!165171)

(assert (=> d!2278677 (= lt!2609911 (choose!57089 (exprs!8549 cWitness!61) (exprs!8549 ct2!378) lambda!455529))))

(assert (=> d!2278677 (forall!17941 (exprs!8549 cWitness!61) lambda!455529)))

(assert (=> d!2278677 (= (lemmaConcatPreservesForall!1784 (exprs!8549 cWitness!61) (exprs!8549 ct2!378) lambda!455529) lt!2609911)))

(declare-fun bs!1918362 () Bool)

(assert (= bs!1918362 d!2278677))

(assert (=> bs!1918362 m!8004182))

(assert (=> bs!1918362 m!8004182))

(declare-fun m!8004318 () Bool)

(assert (=> bs!1918362 m!8004318))

(declare-fun m!8004320 () Bool)

(assert (=> bs!1918362 m!8004320))

(assert (=> bs!1918362 m!8004188))

(assert (=> b!7340175 d!2278677))

(declare-fun d!2278679 () Bool)

(declare-fun e!4395406 () Bool)

(assert (=> d!2278679 e!4395406))

(declare-fun res!2965488 () Bool)

(assert (=> d!2278679 (=> (not res!2965488) (not e!4395406))))

(declare-fun lt!2609912 () List!71605)

(assert (=> d!2278679 (= res!2965488 (= (content!15025 lt!2609912) ((_ map or) (content!15025 (exprs!8549 cWitness!61)) (content!15025 (exprs!8549 ct2!378)))))))

(declare-fun e!4395407 () List!71605)

(assert (=> d!2278679 (= lt!2609912 e!4395407)))

(declare-fun c!1363380 () Bool)

(assert (=> d!2278679 (= c!1363380 ((_ is Nil!71481) (exprs!8549 cWitness!61)))))

(assert (=> d!2278679 (= (++!16927 (exprs!8549 cWitness!61) (exprs!8549 ct2!378)) lt!2609912)))

(declare-fun b!7340346 () Bool)

(declare-fun res!2965487 () Bool)

(assert (=> b!7340346 (=> (not res!2965487) (not e!4395406))))

(assert (=> b!7340346 (= res!2965487 (= (size!42004 lt!2609912) (+ (size!42004 (exprs!8549 cWitness!61)) (size!42004 (exprs!8549 ct2!378)))))))

(declare-fun b!7340344 () Bool)

(assert (=> b!7340344 (= e!4395407 (exprs!8549 ct2!378))))

(declare-fun b!7340347 () Bool)

(assert (=> b!7340347 (= e!4395406 (or (not (= (exprs!8549 ct2!378) Nil!71481)) (= lt!2609912 (exprs!8549 cWitness!61))))))

(declare-fun b!7340345 () Bool)

(assert (=> b!7340345 (= e!4395407 (Cons!71481 (h!77929 (exprs!8549 cWitness!61)) (++!16927 (t!386000 (exprs!8549 cWitness!61)) (exprs!8549 ct2!378))))))

(assert (= (and d!2278679 c!1363380) b!7340344))

(assert (= (and d!2278679 (not c!1363380)) b!7340345))

(assert (= (and d!2278679 res!2965488) b!7340346))

(assert (= (and b!7340346 res!2965487) b!7340347))

(declare-fun m!8004322 () Bool)

(assert (=> d!2278679 m!8004322))

(declare-fun m!8004324 () Bool)

(assert (=> d!2278679 m!8004324))

(assert (=> d!2278679 m!8004262))

(declare-fun m!8004326 () Bool)

(assert (=> b!7340346 m!8004326))

(declare-fun m!8004328 () Bool)

(assert (=> b!7340346 m!8004328))

(assert (=> b!7340346 m!8004268))

(declare-fun m!8004330 () Bool)

(assert (=> b!7340345 m!8004330))

(assert (=> b!7340175 d!2278679))

(declare-fun bm!669862 () Bool)

(declare-fun call!669872 () List!71605)

(declare-fun call!669871 () List!71605)

(assert (=> bm!669862 (= call!669872 call!669871)))

(declare-fun b!7340352 () Bool)

(declare-fun c!1363383 () Bool)

(declare-fun e!4395410 () Bool)

(assert (=> b!7340352 (= c!1363383 e!4395410)))

(declare-fun res!2965491 () Bool)

(assert (=> b!7340352 (=> (not res!2965491) (not e!4395410))))

(assert (=> b!7340352 (= res!2965491 ((_ is Concat!27954) (regOne!38731 r1!2370)))))

(declare-fun e!4395413 () (InoxSet Context!16098))

(declare-fun e!4395415 () (InoxSet Context!16098))

(assert (=> b!7340352 (= e!4395413 e!4395415)))

(declare-fun b!7340353 () Bool)

(declare-fun c!1363385 () Bool)

(assert (=> b!7340353 (= c!1363385 ((_ is Star!19109) (regOne!38731 r1!2370)))))

(declare-fun e!4395411 () (InoxSet Context!16098))

(declare-fun e!4395412 () (InoxSet Context!16098))

(assert (=> b!7340353 (= e!4395411 e!4395412)))

(declare-fun b!7340354 () Bool)

(assert (=> b!7340354 (= e!4395412 ((as const (Array Context!16098 Bool)) false))))

(declare-fun b!7340355 () Bool)

(declare-fun e!4395414 () (InoxSet Context!16098))

(assert (=> b!7340355 (= e!4395414 e!4395413)))

(declare-fun c!1363382 () Bool)

(assert (=> b!7340355 (= c!1363382 ((_ is Union!19109) (regOne!38731 r1!2370)))))

(declare-fun b!7340356 () Bool)

(declare-fun call!669867 () (InoxSet Context!16098))

(assert (=> b!7340356 (= e!4395411 call!669867)))

(declare-fun b!7340357 () Bool)

(assert (=> b!7340357 (= e!4395412 call!669867)))

(declare-fun b!7340358 () Bool)

(declare-fun call!669868 () (InoxSet Context!16098))

(declare-fun call!669870 () (InoxSet Context!16098))

(assert (=> b!7340358 (= e!4395415 ((_ map or) call!669868 call!669870))))

(declare-fun b!7340359 () Bool)

(assert (=> b!7340359 (= e!4395415 e!4395411)))

(declare-fun c!1363386 () Bool)

(assert (=> b!7340359 (= c!1363386 ((_ is Concat!27954) (regOne!38731 r1!2370)))))

(declare-fun bm!669863 () Bool)

(assert (=> bm!669863 (= call!669871 ($colon$colon!3110 (exprs!8549 lt!2609880) (ite (or c!1363383 c!1363386) (regTwo!38730 (regOne!38731 r1!2370)) (regOne!38731 r1!2370))))))

(declare-fun b!7340360 () Bool)

(assert (=> b!7340360 (= e!4395410 (nullable!8204 (regOne!38730 (regOne!38731 r1!2370))))))

(declare-fun bm!669865 () Bool)

(assert (=> bm!669865 (= call!669868 (derivationStepZipperDown!2935 (ite c!1363382 (regOne!38731 (regOne!38731 r1!2370)) (regOne!38730 (regOne!38731 r1!2370))) (ite c!1363382 lt!2609880 (Context!16099 call!669871)) c!10362))))

(declare-fun call!669869 () (InoxSet Context!16098))

(declare-fun bm!669866 () Bool)

(assert (=> bm!669866 (= call!669869 (derivationStepZipperDown!2935 (ite c!1363382 (regTwo!38731 (regOne!38731 r1!2370)) (ite c!1363383 (regTwo!38730 (regOne!38731 r1!2370)) (ite c!1363386 (regOne!38730 (regOne!38731 r1!2370)) (reg!19438 (regOne!38731 r1!2370))))) (ite (or c!1363382 c!1363383) lt!2609880 (Context!16099 call!669872)) c!10362))))

(declare-fun bm!669867 () Bool)

(assert (=> bm!669867 (= call!669867 call!669870)))

(declare-fun b!7340361 () Bool)

(assert (=> b!7340361 (= e!4395414 (store ((as const (Array Context!16098 Bool)) false) lt!2609880 true))))

(declare-fun b!7340362 () Bool)

(assert (=> b!7340362 (= e!4395413 ((_ map or) call!669868 call!669869))))

(declare-fun d!2278681 () Bool)

(declare-fun c!1363384 () Bool)

(assert (=> d!2278681 (= c!1363384 (and ((_ is ElementMatch!19109) (regOne!38731 r1!2370)) (= (c!1363321 (regOne!38731 r1!2370)) c!10362)))))

(assert (=> d!2278681 (= (derivationStepZipperDown!2935 (regOne!38731 r1!2370) lt!2609880 c!10362) e!4395414)))

(declare-fun bm!669864 () Bool)

(assert (=> bm!669864 (= call!669870 call!669869)))

(assert (= (and d!2278681 c!1363384) b!7340361))

(assert (= (and d!2278681 (not c!1363384)) b!7340355))

(assert (= (and b!7340355 c!1363382) b!7340362))

(assert (= (and b!7340355 (not c!1363382)) b!7340352))

(assert (= (and b!7340352 res!2965491) b!7340360))

(assert (= (and b!7340352 c!1363383) b!7340358))

(assert (= (and b!7340352 (not c!1363383)) b!7340359))

(assert (= (and b!7340359 c!1363386) b!7340356))

(assert (= (and b!7340359 (not c!1363386)) b!7340353))

(assert (= (and b!7340353 c!1363385) b!7340357))

(assert (= (and b!7340353 (not c!1363385)) b!7340354))

(assert (= (or b!7340356 b!7340357) bm!669862))

(assert (= (or b!7340356 b!7340357) bm!669867))

(assert (= (or b!7340358 bm!669867) bm!669864))

(assert (= (or b!7340358 bm!669862) bm!669863))

(assert (= (or b!7340362 bm!669864) bm!669866))

(assert (= (or b!7340362 b!7340358) bm!669865))

(declare-fun m!8004350 () Bool)

(assert (=> bm!669863 m!8004350))

(declare-fun m!8004352 () Bool)

(assert (=> bm!669866 m!8004352))

(declare-fun m!8004354 () Bool)

(assert (=> bm!669865 m!8004354))

(assert (=> b!7340361 m!8004252))

(declare-fun m!8004356 () Bool)

(assert (=> b!7340360 m!8004356))

(assert (=> b!7340175 d!2278681))

(assert (=> b!7340175 d!2278665))

(declare-fun b!7340446 () Bool)

(declare-fun e!4395462 () Bool)

(declare-fun e!4395463 () Bool)

(assert (=> b!7340446 (= e!4395462 e!4395463)))

(declare-fun res!2965512 () Bool)

(assert (=> b!7340446 (=> (not res!2965512) (not e!4395463))))

(declare-fun call!669892 () Bool)

(assert (=> b!7340446 (= res!2965512 call!669892)))

(declare-fun b!7340447 () Bool)

(declare-fun e!4395461 () Bool)

(declare-fun e!4395459 () Bool)

(assert (=> b!7340447 (= e!4395461 e!4395459)))

(declare-fun c!1363402 () Bool)

(assert (=> b!7340447 (= c!1363402 ((_ is Union!19109) r1!2370))))

(declare-fun bm!669886 () Bool)

(declare-fun call!669893 () Bool)

(declare-fun call!669891 () Bool)

(assert (=> bm!669886 (= call!669893 call!669891)))

(declare-fun b!7340448 () Bool)

(declare-fun res!2965508 () Bool)

(assert (=> b!7340448 (=> res!2965508 e!4395462)))

(assert (=> b!7340448 (= res!2965508 (not ((_ is Concat!27954) r1!2370)))))

(assert (=> b!7340448 (= e!4395459 e!4395462)))

(declare-fun b!7340449 () Bool)

(assert (=> b!7340449 (= e!4395463 call!669893)))

(declare-fun c!1363403 () Bool)

(declare-fun bm!669887 () Bool)

(assert (=> bm!669887 (= call!669891 (validRegex!9705 (ite c!1363403 (reg!19438 r1!2370) (ite c!1363402 (regOne!38731 r1!2370) (regTwo!38730 r1!2370)))))))

(declare-fun b!7340450 () Bool)

(declare-fun e!4395464 () Bool)

(assert (=> b!7340450 (= e!4395464 call!669892)))

(declare-fun b!7340451 () Bool)

(declare-fun e!4395460 () Bool)

(assert (=> b!7340451 (= e!4395460 e!4395461)))

(assert (=> b!7340451 (= c!1363403 ((_ is Star!19109) r1!2370))))

(declare-fun bm!669888 () Bool)

(assert (=> bm!669888 (= call!669892 (validRegex!9705 (ite c!1363402 (regTwo!38731 r1!2370) (regOne!38730 r1!2370))))))

(declare-fun d!2278687 () Bool)

(declare-fun res!2965509 () Bool)

(assert (=> d!2278687 (=> res!2965509 e!4395460)))

(assert (=> d!2278687 (= res!2965509 ((_ is ElementMatch!19109) r1!2370))))

(assert (=> d!2278687 (= (validRegex!9705 r1!2370) e!4395460)))

(declare-fun b!7340452 () Bool)

(declare-fun res!2965510 () Bool)

(assert (=> b!7340452 (=> (not res!2965510) (not e!4395464))))

(assert (=> b!7340452 (= res!2965510 call!669893)))

(assert (=> b!7340452 (= e!4395459 e!4395464)))

(declare-fun b!7340453 () Bool)

(declare-fun e!4395458 () Bool)

(assert (=> b!7340453 (= e!4395458 call!669891)))

(declare-fun b!7340454 () Bool)

(assert (=> b!7340454 (= e!4395461 e!4395458)))

(declare-fun res!2965511 () Bool)

(assert (=> b!7340454 (= res!2965511 (not (nullable!8204 (reg!19438 r1!2370))))))

(assert (=> b!7340454 (=> (not res!2965511) (not e!4395458))))

(assert (= (and d!2278687 (not res!2965509)) b!7340451))

(assert (= (and b!7340451 c!1363403) b!7340454))

(assert (= (and b!7340451 (not c!1363403)) b!7340447))

(assert (= (and b!7340454 res!2965511) b!7340453))

(assert (= (and b!7340447 c!1363402) b!7340452))

(assert (= (and b!7340447 (not c!1363402)) b!7340448))

(assert (= (and b!7340452 res!2965510) b!7340450))

(assert (= (and b!7340448 (not res!2965508)) b!7340446))

(assert (= (and b!7340446 res!2965512) b!7340449))

(assert (= (or b!7340452 b!7340449) bm!669886))

(assert (= (or b!7340450 b!7340446) bm!669888))

(assert (= (or b!7340453 bm!669886) bm!669887))

(declare-fun m!8004392 () Bool)

(assert (=> bm!669887 m!8004392))

(declare-fun m!8004394 () Bool)

(assert (=> bm!669888 m!8004394))

(declare-fun m!8004396 () Bool)

(assert (=> b!7340454 m!8004396))

(assert (=> start!716940 d!2278687))

(declare-fun bs!1918366 () Bool)

(declare-fun d!2278699 () Bool)

(assert (= bs!1918366 (and d!2278699 b!7340176)))

(declare-fun lambda!455547 () Int)

(assert (=> bs!1918366 (= lambda!455547 lambda!455529)))

(declare-fun bs!1918367 () Bool)

(assert (= bs!1918367 (and d!2278699 d!2278669)))

(assert (=> bs!1918367 (= lambda!455547 lambda!455544)))

(assert (=> d!2278699 (= (inv!91112 cWitness!61) (forall!17941 (exprs!8549 cWitness!61) lambda!455547))))

(declare-fun bs!1918368 () Bool)

(assert (= bs!1918368 d!2278699))

(declare-fun m!8004398 () Bool)

(assert (=> bs!1918368 m!8004398))

(assert (=> start!716940 d!2278699))

(declare-fun bs!1918369 () Bool)

(declare-fun d!2278701 () Bool)

(assert (= bs!1918369 (and d!2278701 b!7340176)))

(declare-fun lambda!455548 () Int)

(assert (=> bs!1918369 (= lambda!455548 lambda!455529)))

(declare-fun bs!1918370 () Bool)

(assert (= bs!1918370 (and d!2278701 d!2278669)))

(assert (=> bs!1918370 (= lambda!455548 lambda!455544)))

(declare-fun bs!1918371 () Bool)

(assert (= bs!1918371 (and d!2278701 d!2278699)))

(assert (=> bs!1918371 (= lambda!455548 lambda!455547)))

(assert (=> d!2278701 (= (inv!91112 ct1!282) (forall!17941 (exprs!8549 ct1!282) lambda!455548))))

(declare-fun bs!1918372 () Bool)

(assert (= bs!1918372 d!2278701))

(declare-fun m!8004400 () Bool)

(assert (=> bs!1918372 m!8004400))

(assert (=> start!716940 d!2278701))

(declare-fun bs!1918373 () Bool)

(declare-fun d!2278703 () Bool)

(assert (= bs!1918373 (and d!2278703 b!7340176)))

(declare-fun lambda!455549 () Int)

(assert (=> bs!1918373 (= lambda!455549 lambda!455529)))

(declare-fun bs!1918374 () Bool)

(assert (= bs!1918374 (and d!2278703 d!2278669)))

(assert (=> bs!1918374 (= lambda!455549 lambda!455544)))

(declare-fun bs!1918375 () Bool)

(assert (= bs!1918375 (and d!2278703 d!2278699)))

(assert (=> bs!1918375 (= lambda!455549 lambda!455547)))

(declare-fun bs!1918376 () Bool)

(assert (= bs!1918376 (and d!2278703 d!2278701)))

(assert (=> bs!1918376 (= lambda!455549 lambda!455548)))

(assert (=> d!2278703 (= (inv!91112 ct2!378) (forall!17941 (exprs!8549 ct2!378) lambda!455549))))

(declare-fun bs!1918377 () Bool)

(assert (= bs!1918377 d!2278703))

(declare-fun m!8004402 () Bool)

(assert (=> bs!1918377 m!8004402))

(assert (=> start!716940 d!2278703))

(declare-fun bm!669889 () Bool)

(declare-fun call!669899 () List!71605)

(declare-fun call!669898 () List!71605)

(assert (=> bm!669889 (= call!669899 call!669898)))

(declare-fun b!7340455 () Bool)

(declare-fun c!1363405 () Bool)

(declare-fun e!4395465 () Bool)

(assert (=> b!7340455 (= c!1363405 e!4395465)))

(declare-fun res!2965513 () Bool)

(assert (=> b!7340455 (=> (not res!2965513) (not e!4395465))))

(assert (=> b!7340455 (= res!2965513 ((_ is Concat!27954) (regTwo!38731 r1!2370)))))

(declare-fun e!4395468 () (InoxSet Context!16098))

(declare-fun e!4395470 () (InoxSet Context!16098))

(assert (=> b!7340455 (= e!4395468 e!4395470)))

(declare-fun b!7340456 () Bool)

(declare-fun c!1363407 () Bool)

(assert (=> b!7340456 (= c!1363407 ((_ is Star!19109) (regTwo!38731 r1!2370)))))

(declare-fun e!4395466 () (InoxSet Context!16098))

(declare-fun e!4395467 () (InoxSet Context!16098))

(assert (=> b!7340456 (= e!4395466 e!4395467)))

(declare-fun b!7340457 () Bool)

(assert (=> b!7340457 (= e!4395467 ((as const (Array Context!16098 Bool)) false))))

(declare-fun b!7340458 () Bool)

(declare-fun e!4395469 () (InoxSet Context!16098))

(assert (=> b!7340458 (= e!4395469 e!4395468)))

(declare-fun c!1363404 () Bool)

(assert (=> b!7340458 (= c!1363404 ((_ is Union!19109) (regTwo!38731 r1!2370)))))

(declare-fun b!7340459 () Bool)

(declare-fun call!669894 () (InoxSet Context!16098))

(assert (=> b!7340459 (= e!4395466 call!669894)))

(declare-fun b!7340460 () Bool)

(assert (=> b!7340460 (= e!4395467 call!669894)))

(declare-fun b!7340461 () Bool)

(declare-fun call!669895 () (InoxSet Context!16098))

(declare-fun call!669897 () (InoxSet Context!16098))

(assert (=> b!7340461 (= e!4395470 ((_ map or) call!669895 call!669897))))

(declare-fun b!7340462 () Bool)

(assert (=> b!7340462 (= e!4395470 e!4395466)))

(declare-fun c!1363408 () Bool)

(assert (=> b!7340462 (= c!1363408 ((_ is Concat!27954) (regTwo!38731 r1!2370)))))

(declare-fun bm!669890 () Bool)

(assert (=> bm!669890 (= call!669898 ($colon$colon!3110 (exprs!8549 ct1!282) (ite (or c!1363405 c!1363408) (regTwo!38730 (regTwo!38731 r1!2370)) (regTwo!38731 r1!2370))))))

(declare-fun b!7340463 () Bool)

(assert (=> b!7340463 (= e!4395465 (nullable!8204 (regOne!38730 (regTwo!38731 r1!2370))))))

(declare-fun bm!669892 () Bool)

(assert (=> bm!669892 (= call!669895 (derivationStepZipperDown!2935 (ite c!1363404 (regOne!38731 (regTwo!38731 r1!2370)) (regOne!38730 (regTwo!38731 r1!2370))) (ite c!1363404 ct1!282 (Context!16099 call!669898)) c!10362))))

(declare-fun bm!669893 () Bool)

(declare-fun call!669896 () (InoxSet Context!16098))

(assert (=> bm!669893 (= call!669896 (derivationStepZipperDown!2935 (ite c!1363404 (regTwo!38731 (regTwo!38731 r1!2370)) (ite c!1363405 (regTwo!38730 (regTwo!38731 r1!2370)) (ite c!1363408 (regOne!38730 (regTwo!38731 r1!2370)) (reg!19438 (regTwo!38731 r1!2370))))) (ite (or c!1363404 c!1363405) ct1!282 (Context!16099 call!669899)) c!10362))))

(declare-fun bm!669894 () Bool)

(assert (=> bm!669894 (= call!669894 call!669897)))

(declare-fun b!7340464 () Bool)

(assert (=> b!7340464 (= e!4395469 (store ((as const (Array Context!16098 Bool)) false) ct1!282 true))))

(declare-fun b!7340465 () Bool)

(assert (=> b!7340465 (= e!4395468 ((_ map or) call!669895 call!669896))))

(declare-fun d!2278705 () Bool)

(declare-fun c!1363406 () Bool)

(assert (=> d!2278705 (= c!1363406 (and ((_ is ElementMatch!19109) (regTwo!38731 r1!2370)) (= (c!1363321 (regTwo!38731 r1!2370)) c!10362)))))

(assert (=> d!2278705 (= (derivationStepZipperDown!2935 (regTwo!38731 r1!2370) ct1!282 c!10362) e!4395469)))

(declare-fun bm!669891 () Bool)

(assert (=> bm!669891 (= call!669897 call!669896)))

(assert (= (and d!2278705 c!1363406) b!7340464))

(assert (= (and d!2278705 (not c!1363406)) b!7340458))

(assert (= (and b!7340458 c!1363404) b!7340465))

(assert (= (and b!7340458 (not c!1363404)) b!7340455))

(assert (= (and b!7340455 res!2965513) b!7340463))

(assert (= (and b!7340455 c!1363405) b!7340461))

(assert (= (and b!7340455 (not c!1363405)) b!7340462))

(assert (= (and b!7340462 c!1363408) b!7340459))

(assert (= (and b!7340462 (not c!1363408)) b!7340456))

(assert (= (and b!7340456 c!1363407) b!7340460))

(assert (= (and b!7340456 (not c!1363407)) b!7340457))

(assert (= (or b!7340459 b!7340460) bm!669889))

(assert (= (or b!7340459 b!7340460) bm!669894))

(assert (= (or b!7340461 bm!669894) bm!669891))

(assert (= (or b!7340461 bm!669889) bm!669890))

(assert (= (or b!7340465 bm!669891) bm!669893))

(assert (= (or b!7340465 b!7340461) bm!669892))

(declare-fun m!8004404 () Bool)

(assert (=> bm!669890 m!8004404))

(declare-fun m!8004406 () Bool)

(assert (=> bm!669893 m!8004406))

(declare-fun m!8004408 () Bool)

(assert (=> bm!669892 m!8004408))

(assert (=> b!7340464 m!8004220))

(declare-fun m!8004410 () Bool)

(assert (=> b!7340463 m!8004410))

(assert (=> b!7340174 d!2278705))

(declare-fun bm!669895 () Bool)

(declare-fun call!669905 () List!71605)

(declare-fun call!669904 () List!71605)

(assert (=> bm!669895 (= call!669905 call!669904)))

(declare-fun b!7340466 () Bool)

(declare-fun c!1363410 () Bool)

(declare-fun e!4395471 () Bool)

(assert (=> b!7340466 (= c!1363410 e!4395471)))

(declare-fun res!2965514 () Bool)

(assert (=> b!7340466 (=> (not res!2965514) (not e!4395471))))

(assert (=> b!7340466 (= res!2965514 ((_ is Concat!27954) (regOne!38731 r1!2370)))))

(declare-fun e!4395474 () (InoxSet Context!16098))

(declare-fun e!4395476 () (InoxSet Context!16098))

(assert (=> b!7340466 (= e!4395474 e!4395476)))

(declare-fun b!7340467 () Bool)

(declare-fun c!1363412 () Bool)

(assert (=> b!7340467 (= c!1363412 ((_ is Star!19109) (regOne!38731 r1!2370)))))

(declare-fun e!4395472 () (InoxSet Context!16098))

(declare-fun e!4395473 () (InoxSet Context!16098))

(assert (=> b!7340467 (= e!4395472 e!4395473)))

(declare-fun b!7340468 () Bool)

(assert (=> b!7340468 (= e!4395473 ((as const (Array Context!16098 Bool)) false))))

(declare-fun b!7340469 () Bool)

(declare-fun e!4395475 () (InoxSet Context!16098))

(assert (=> b!7340469 (= e!4395475 e!4395474)))

(declare-fun c!1363409 () Bool)

(assert (=> b!7340469 (= c!1363409 ((_ is Union!19109) (regOne!38731 r1!2370)))))

(declare-fun b!7340470 () Bool)

(declare-fun call!669900 () (InoxSet Context!16098))

(assert (=> b!7340470 (= e!4395472 call!669900)))

(declare-fun b!7340471 () Bool)

(assert (=> b!7340471 (= e!4395473 call!669900)))

(declare-fun b!7340472 () Bool)

(declare-fun call!669901 () (InoxSet Context!16098))

(declare-fun call!669903 () (InoxSet Context!16098))

(assert (=> b!7340472 (= e!4395476 ((_ map or) call!669901 call!669903))))

(declare-fun b!7340473 () Bool)

(assert (=> b!7340473 (= e!4395476 e!4395472)))

(declare-fun c!1363413 () Bool)

(assert (=> b!7340473 (= c!1363413 ((_ is Concat!27954) (regOne!38731 r1!2370)))))

(declare-fun bm!669896 () Bool)

(assert (=> bm!669896 (= call!669904 ($colon$colon!3110 (exprs!8549 ct1!282) (ite (or c!1363410 c!1363413) (regTwo!38730 (regOne!38731 r1!2370)) (regOne!38731 r1!2370))))))

(declare-fun b!7340474 () Bool)

(assert (=> b!7340474 (= e!4395471 (nullable!8204 (regOne!38730 (regOne!38731 r1!2370))))))

(declare-fun bm!669898 () Bool)

(assert (=> bm!669898 (= call!669901 (derivationStepZipperDown!2935 (ite c!1363409 (regOne!38731 (regOne!38731 r1!2370)) (regOne!38730 (regOne!38731 r1!2370))) (ite c!1363409 ct1!282 (Context!16099 call!669904)) c!10362))))

(declare-fun call!669902 () (InoxSet Context!16098))

(declare-fun bm!669899 () Bool)

(assert (=> bm!669899 (= call!669902 (derivationStepZipperDown!2935 (ite c!1363409 (regTwo!38731 (regOne!38731 r1!2370)) (ite c!1363410 (regTwo!38730 (regOne!38731 r1!2370)) (ite c!1363413 (regOne!38730 (regOne!38731 r1!2370)) (reg!19438 (regOne!38731 r1!2370))))) (ite (or c!1363409 c!1363410) ct1!282 (Context!16099 call!669905)) c!10362))))

(declare-fun bm!669900 () Bool)

(assert (=> bm!669900 (= call!669900 call!669903)))

(declare-fun b!7340475 () Bool)

(assert (=> b!7340475 (= e!4395475 (store ((as const (Array Context!16098 Bool)) false) ct1!282 true))))

(declare-fun b!7340476 () Bool)

(assert (=> b!7340476 (= e!4395474 ((_ map or) call!669901 call!669902))))

(declare-fun d!2278707 () Bool)

(declare-fun c!1363411 () Bool)

(assert (=> d!2278707 (= c!1363411 (and ((_ is ElementMatch!19109) (regOne!38731 r1!2370)) (= (c!1363321 (regOne!38731 r1!2370)) c!10362)))))

(assert (=> d!2278707 (= (derivationStepZipperDown!2935 (regOne!38731 r1!2370) ct1!282 c!10362) e!4395475)))

(declare-fun bm!669897 () Bool)

(assert (=> bm!669897 (= call!669903 call!669902)))

(assert (= (and d!2278707 c!1363411) b!7340475))

(assert (= (and d!2278707 (not c!1363411)) b!7340469))

(assert (= (and b!7340469 c!1363409) b!7340476))

(assert (= (and b!7340469 (not c!1363409)) b!7340466))

(assert (= (and b!7340466 res!2965514) b!7340474))

(assert (= (and b!7340466 c!1363410) b!7340472))

(assert (= (and b!7340466 (not c!1363410)) b!7340473))

(assert (= (and b!7340473 c!1363413) b!7340470))

(assert (= (and b!7340473 (not c!1363413)) b!7340467))

(assert (= (and b!7340467 c!1363412) b!7340471))

(assert (= (and b!7340467 (not c!1363412)) b!7340468))

(assert (= (or b!7340470 b!7340471) bm!669895))

(assert (= (or b!7340470 b!7340471) bm!669900))

(assert (= (or b!7340472 bm!669900) bm!669897))

(assert (= (or b!7340472 bm!669895) bm!669896))

(assert (= (or b!7340476 bm!669897) bm!669899))

(assert (= (or b!7340476 b!7340472) bm!669898))

(declare-fun m!8004412 () Bool)

(assert (=> bm!669896 m!8004412))

(declare-fun m!8004414 () Bool)

(assert (=> bm!669899 m!8004414))

(declare-fun m!8004416 () Bool)

(assert (=> bm!669898 m!8004416))

(assert (=> b!7340475 m!8004220))

(assert (=> b!7340474 m!8004356))

(assert (=> b!7340174 d!2278707))

(declare-fun b!7340487 () Bool)

(declare-fun e!4395479 () Bool)

(assert (=> b!7340487 (= e!4395479 tp_is_empty!48463)))

(declare-fun b!7340488 () Bool)

(declare-fun tp!2084300 () Bool)

(declare-fun tp!2084303 () Bool)

(assert (=> b!7340488 (= e!4395479 (and tp!2084300 tp!2084303))))

(declare-fun b!7340490 () Bool)

(declare-fun tp!2084301 () Bool)

(declare-fun tp!2084299 () Bool)

(assert (=> b!7340490 (= e!4395479 (and tp!2084301 tp!2084299))))

(assert (=> b!7340179 (= tp!2084239 e!4395479)))

(declare-fun b!7340489 () Bool)

(declare-fun tp!2084302 () Bool)

(assert (=> b!7340489 (= e!4395479 tp!2084302)))

(assert (= (and b!7340179 ((_ is ElementMatch!19109) (regOne!38731 r1!2370))) b!7340487))

(assert (= (and b!7340179 ((_ is Concat!27954) (regOne!38731 r1!2370))) b!7340488))

(assert (= (and b!7340179 ((_ is Star!19109) (regOne!38731 r1!2370))) b!7340489))

(assert (= (and b!7340179 ((_ is Union!19109) (regOne!38731 r1!2370))) b!7340490))

(declare-fun b!7340491 () Bool)

(declare-fun e!4395480 () Bool)

(assert (=> b!7340491 (= e!4395480 tp_is_empty!48463)))

(declare-fun b!7340492 () Bool)

(declare-fun tp!2084305 () Bool)

(declare-fun tp!2084308 () Bool)

(assert (=> b!7340492 (= e!4395480 (and tp!2084305 tp!2084308))))

(declare-fun b!7340494 () Bool)

(declare-fun tp!2084306 () Bool)

(declare-fun tp!2084304 () Bool)

(assert (=> b!7340494 (= e!4395480 (and tp!2084306 tp!2084304))))

(assert (=> b!7340179 (= tp!2084237 e!4395480)))

(declare-fun b!7340493 () Bool)

(declare-fun tp!2084307 () Bool)

(assert (=> b!7340493 (= e!4395480 tp!2084307)))

(assert (= (and b!7340179 ((_ is ElementMatch!19109) (regTwo!38731 r1!2370))) b!7340491))

(assert (= (and b!7340179 ((_ is Concat!27954) (regTwo!38731 r1!2370))) b!7340492))

(assert (= (and b!7340179 ((_ is Star!19109) (regTwo!38731 r1!2370))) b!7340493))

(assert (= (and b!7340179 ((_ is Union!19109) (regTwo!38731 r1!2370))) b!7340494))

(declare-fun b!7340499 () Bool)

(declare-fun e!4395483 () Bool)

(declare-fun tp!2084313 () Bool)

(declare-fun tp!2084314 () Bool)

(assert (=> b!7340499 (= e!4395483 (and tp!2084313 tp!2084314))))

(assert (=> b!7340178 (= tp!2084240 e!4395483)))

(assert (= (and b!7340178 ((_ is Cons!71481) (exprs!8549 ct1!282))) b!7340499))

(declare-fun b!7340500 () Bool)

(declare-fun e!4395484 () Bool)

(assert (=> b!7340500 (= e!4395484 tp_is_empty!48463)))

(declare-fun b!7340501 () Bool)

(declare-fun tp!2084316 () Bool)

(declare-fun tp!2084319 () Bool)

(assert (=> b!7340501 (= e!4395484 (and tp!2084316 tp!2084319))))

(declare-fun b!7340503 () Bool)

(declare-fun tp!2084317 () Bool)

(declare-fun tp!2084315 () Bool)

(assert (=> b!7340503 (= e!4395484 (and tp!2084317 tp!2084315))))

(assert (=> b!7340183 (= tp!2084238 e!4395484)))

(declare-fun b!7340502 () Bool)

(declare-fun tp!2084318 () Bool)

(assert (=> b!7340502 (= e!4395484 tp!2084318)))

(assert (= (and b!7340183 ((_ is ElementMatch!19109) (regOne!38730 r1!2370))) b!7340500))

(assert (= (and b!7340183 ((_ is Concat!27954) (regOne!38730 r1!2370))) b!7340501))

(assert (= (and b!7340183 ((_ is Star!19109) (regOne!38730 r1!2370))) b!7340502))

(assert (= (and b!7340183 ((_ is Union!19109) (regOne!38730 r1!2370))) b!7340503))

(declare-fun b!7340504 () Bool)

(declare-fun e!4395485 () Bool)

(assert (=> b!7340504 (= e!4395485 tp_is_empty!48463)))

(declare-fun b!7340505 () Bool)

(declare-fun tp!2084321 () Bool)

(declare-fun tp!2084324 () Bool)

(assert (=> b!7340505 (= e!4395485 (and tp!2084321 tp!2084324))))

(declare-fun b!7340507 () Bool)

(declare-fun tp!2084322 () Bool)

(declare-fun tp!2084320 () Bool)

(assert (=> b!7340507 (= e!4395485 (and tp!2084322 tp!2084320))))

(assert (=> b!7340183 (= tp!2084236 e!4395485)))

(declare-fun b!7340506 () Bool)

(declare-fun tp!2084323 () Bool)

(assert (=> b!7340506 (= e!4395485 tp!2084323)))

(assert (= (and b!7340183 ((_ is ElementMatch!19109) (regTwo!38730 r1!2370))) b!7340504))

(assert (= (and b!7340183 ((_ is Concat!27954) (regTwo!38730 r1!2370))) b!7340505))

(assert (= (and b!7340183 ((_ is Star!19109) (regTwo!38730 r1!2370))) b!7340506))

(assert (= (and b!7340183 ((_ is Union!19109) (regTwo!38730 r1!2370))) b!7340507))

(declare-fun b!7340508 () Bool)

(declare-fun e!4395486 () Bool)

(declare-fun tp!2084325 () Bool)

(declare-fun tp!2084326 () Bool)

(assert (=> b!7340508 (= e!4395486 (and tp!2084325 tp!2084326))))

(assert (=> b!7340177 (= tp!2084243 e!4395486)))

(assert (= (and b!7340177 ((_ is Cons!71481) (exprs!8549 cWitness!61))) b!7340508))

(declare-fun b!7340509 () Bool)

(declare-fun e!4395487 () Bool)

(declare-fun tp!2084327 () Bool)

(declare-fun tp!2084328 () Bool)

(assert (=> b!7340509 (= e!4395487 (and tp!2084327 tp!2084328))))

(assert (=> b!7340182 (= tp!2084242 e!4395487)))

(assert (= (and b!7340182 ((_ is Cons!71481) (exprs!8549 ct2!378))) b!7340509))

(declare-fun b!7340510 () Bool)

(declare-fun e!4395488 () Bool)

(assert (=> b!7340510 (= e!4395488 tp_is_empty!48463)))

(declare-fun b!7340511 () Bool)

(declare-fun tp!2084330 () Bool)

(declare-fun tp!2084333 () Bool)

(assert (=> b!7340511 (= e!4395488 (and tp!2084330 tp!2084333))))

(declare-fun b!7340513 () Bool)

(declare-fun tp!2084331 () Bool)

(declare-fun tp!2084329 () Bool)

(assert (=> b!7340513 (= e!4395488 (and tp!2084331 tp!2084329))))

(assert (=> b!7340180 (= tp!2084241 e!4395488)))

(declare-fun b!7340512 () Bool)

(declare-fun tp!2084332 () Bool)

(assert (=> b!7340512 (= e!4395488 tp!2084332)))

(assert (= (and b!7340180 ((_ is ElementMatch!19109) (reg!19438 r1!2370))) b!7340510))

(assert (= (and b!7340180 ((_ is Concat!27954) (reg!19438 r1!2370))) b!7340511))

(assert (= (and b!7340180 ((_ is Star!19109) (reg!19438 r1!2370))) b!7340512))

(assert (= (and b!7340180 ((_ is Union!19109) (reg!19438 r1!2370))) b!7340513))

(declare-fun b_lambda!283855 () Bool)

(assert (= b_lambda!283843 (or b!7340176 b_lambda!283855)))

(declare-fun bs!1918378 () Bool)

(declare-fun d!2278709 () Bool)

(assert (= bs!1918378 (and d!2278709 b!7340176)))

(assert (=> bs!1918378 (= (dynLambda!29448 lambda!455529 (h!77929 (exprs!8549 ct2!378))) (validRegex!9705 (h!77929 (exprs!8549 ct2!378))))))

(declare-fun m!8004418 () Bool)

(assert (=> bs!1918378 m!8004418))

(assert (=> b!7340292 d!2278709))

(declare-fun b_lambda!283857 () Bool)

(assert (= b_lambda!283847 (or b!7340176 b_lambda!283857)))

(declare-fun bs!1918379 () Bool)

(declare-fun d!2278711 () Bool)

(assert (= bs!1918379 (and d!2278711 b!7340176)))

(assert (=> bs!1918379 (= (dynLambda!29448 lambda!455529 (h!77929 (exprs!8549 cWitness!61))) (validRegex!9705 (h!77929 (exprs!8549 cWitness!61))))))

(declare-fun m!8004420 () Bool)

(assert (=> bs!1918379 m!8004420))

(assert (=> b!7340323 d!2278711))

(check-sat (not bm!669854) (not b!7340502) (not bm!669890) (not b!7340493) (not b!7340345) (not b!7340507) (not d!2278703) (not d!2278677) (not bm!669836) (not d!2278665) (not bm!669887) (not d!2278679) (not bm!669888) (not bm!669898) (not d!2278661) (not d!2278669) (not b!7340505) (not bm!669853) (not b_lambda!283857) (not b!7340302) (not b!7340489) (not bm!669892) (not b!7340492) (not bm!669866) (not b!7340488) (not b!7340490) (not b!7340501) (not bm!669863) (not b!7340503) (not b!7340474) (not bm!669893) (not b!7340320) (not bm!669865) (not bm!669851) tp_is_empty!48463 (not b!7340494) (not b!7340463) (not b!7340263) (not d!2278701) (not b!7340513) (not b!7340512) (not b!7340360) (not b!7340324) (not b!7340454) (not b!7340293) (not b_lambda!283855) (not b!7340511) (not bs!1918378) (not b!7340499) (not b!7340346) (not b!7340508) (not bm!669896) (not b!7340509) (not b!7340506) (not bs!1918379) (not b!7340321) (not d!2278699) (not bm!669833) (not bm!669835) (not bm!669899))
(check-sat)
