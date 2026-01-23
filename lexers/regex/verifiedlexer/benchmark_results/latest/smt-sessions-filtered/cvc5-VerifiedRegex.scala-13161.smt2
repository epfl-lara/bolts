; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718518 () Bool)

(assert start!718518)

(declare-fun b!7358314 () Bool)

(declare-fun e!4405689 () Bool)

(declare-fun tp_is_empty!48665 () Bool)

(assert (=> b!7358314 (= e!4405689 tp_is_empty!48665)))

(declare-fun b!7358315 () Bool)

(declare-fun tp!2090533 () Bool)

(assert (=> b!7358315 (= e!4405689 tp!2090533)))

(declare-fun res!2970975 () Bool)

(declare-fun e!4405690 () Bool)

(assert (=> start!718518 (=> (not res!2970975) (not e!4405690))))

(declare-datatypes ((C!38694 0))(
  ( (C!38695 (val!29707 Int)) )
))
(declare-datatypes ((Regex!19210 0))(
  ( (ElementMatch!19210 (c!1367142 C!38694)) (Concat!28055 (regOne!38932 Regex!19210) (regTwo!38932 Regex!19210)) (EmptyExpr!19210) (Star!19210 (reg!19539 Regex!19210)) (EmptyLang!19210) (Union!19210 (regOne!38933 Regex!19210) (regTwo!38933 Regex!19210)) )
))
(declare-fun r1!2370 () Regex!19210)

(declare-fun validRegex!9806 (Regex!19210) Bool)

(assert (=> start!718518 (= res!2970975 (validRegex!9806 r1!2370))))

(assert (=> start!718518 e!4405690))

(assert (=> start!718518 tp_is_empty!48665))

(declare-datatypes ((List!71706 0))(
  ( (Nil!71582) (Cons!71582 (h!78030 Regex!19210) (t!386149 List!71706)) )
))
(declare-datatypes ((Context!16300 0))(
  ( (Context!16301 (exprs!8650 List!71706)) )
))
(declare-fun cWitness!61 () Context!16300)

(declare-fun e!4405683 () Bool)

(declare-fun inv!91366 (Context!16300) Bool)

(assert (=> start!718518 (and (inv!91366 cWitness!61) e!4405683)))

(declare-fun ct1!282 () Context!16300)

(declare-fun e!4405685 () Bool)

(assert (=> start!718518 (and (inv!91366 ct1!282) e!4405685)))

(assert (=> start!718518 e!4405689))

(declare-fun ct2!378 () Context!16300)

(declare-fun e!4405688 () Bool)

(assert (=> start!718518 (and (inv!91366 ct2!378) e!4405688)))

(declare-fun b!7358316 () Bool)

(declare-fun tp!2090537 () Bool)

(declare-fun tp!2090536 () Bool)

(assert (=> b!7358316 (= e!4405689 (and tp!2090537 tp!2090536))))

(declare-fun b!7358317 () Bool)

(declare-fun tp!2090530 () Bool)

(assert (=> b!7358317 (= e!4405683 tp!2090530)))

(declare-fun b!7358318 () Bool)

(declare-fun tp!2090534 () Bool)

(assert (=> b!7358318 (= e!4405688 tp!2090534)))

(declare-fun b!7358319 () Bool)

(declare-fun e!4405686 () Bool)

(assert (=> b!7358319 (= e!4405690 e!4405686)))

(declare-fun res!2970974 () Bool)

(assert (=> b!7358319 (=> (not res!2970974) (not e!4405686))))

(declare-fun lt!2613587 () (Set Context!16300))

(assert (=> b!7358319 (= res!2970974 (set.member cWitness!61 lt!2613587))))

(declare-fun c!10362 () C!38694)

(declare-fun derivationStepZipperDown!3036 (Regex!19210 Context!16300 C!38694) (Set Context!16300))

(assert (=> b!7358319 (= lt!2613587 (derivationStepZipperDown!3036 r1!2370 ct1!282 c!10362))))

(declare-fun b!7358320 () Bool)

(declare-fun tp!2090531 () Bool)

(assert (=> b!7358320 (= e!4405685 tp!2090531)))

(declare-fun b!7358321 () Bool)

(declare-fun tp!2090532 () Bool)

(declare-fun tp!2090535 () Bool)

(assert (=> b!7358321 (= e!4405689 (and tp!2090532 tp!2090535))))

(declare-fun b!7358322 () Bool)

(declare-fun e!4405684 () Bool)

(declare-fun e!4405687 () Bool)

(assert (=> b!7358322 (= e!4405684 e!4405687)))

(declare-fun res!2970976 () Bool)

(assert (=> b!7358322 (=> (not res!2970976) (not e!4405687))))

(declare-fun lt!2613584 () (Set Context!16300))

(assert (=> b!7358322 (= res!2970976 (and (= lt!2613587 lt!2613584) (set.member cWitness!61 lt!2613584) (= cWitness!61 ct1!282)))))

(assert (=> b!7358322 (= lt!2613584 (set.insert ct1!282 (as set.empty (Set Context!16300))))))

(declare-fun b!7358323 () Bool)

(assert (=> b!7358323 (= e!4405686 e!4405684)))

(declare-fun res!2970973 () Bool)

(assert (=> b!7358323 (=> (not res!2970973) (not e!4405684))))

(assert (=> b!7358323 (= res!2970973 (and (is-ElementMatch!19210 r1!2370) (= c!10362 (c!1367142 r1!2370))))))

(declare-fun lt!2613588 () (Set Context!16300))

(declare-fun lt!2613589 () Context!16300)

(assert (=> b!7358323 (= lt!2613588 (derivationStepZipperDown!3036 r1!2370 lt!2613589 c!10362))))

(declare-fun ++!17028 (List!71706 List!71706) List!71706)

(assert (=> b!7358323 (= lt!2613589 (Context!16301 (++!17028 (exprs!8650 ct1!282) (exprs!8650 ct2!378))))))

(declare-datatypes ((Unit!165373 0))(
  ( (Unit!165374) )
))
(declare-fun lt!2613585 () Unit!165373)

(declare-fun lambda!457190 () Int)

(declare-fun lemmaConcatPreservesForall!1885 (List!71706 List!71706 Int) Unit!165373)

(assert (=> b!7358323 (= lt!2613585 (lemmaConcatPreservesForall!1885 (exprs!8650 ct1!282) (exprs!8650 ct2!378) lambda!457190))))

(declare-fun b!7358324 () Bool)

(assert (=> b!7358324 (= e!4405687 (not (= lt!2613588 (set.insert lt!2613589 (as set.empty (Set Context!16300))))))))

(declare-fun lt!2613586 () Unit!165373)

(assert (=> b!7358324 (= lt!2613586 (lemmaConcatPreservesForall!1885 (exprs!8650 ct1!282) (exprs!8650 ct2!378) lambda!457190))))

(assert (= (and start!718518 res!2970975) b!7358319))

(assert (= (and b!7358319 res!2970974) b!7358323))

(assert (= (and b!7358323 res!2970973) b!7358322))

(assert (= (and b!7358322 res!2970976) b!7358324))

(assert (= start!718518 b!7358317))

(assert (= start!718518 b!7358320))

(assert (= (and start!718518 (is-ElementMatch!19210 r1!2370)) b!7358314))

(assert (= (and start!718518 (is-Concat!28055 r1!2370)) b!7358321))

(assert (= (and start!718518 (is-Star!19210 r1!2370)) b!7358315))

(assert (= (and start!718518 (is-Union!19210 r1!2370)) b!7358316))

(assert (= start!718518 b!7358318))

(declare-fun m!8017258 () Bool)

(assert (=> b!7358322 m!8017258))

(declare-fun m!8017260 () Bool)

(assert (=> b!7358322 m!8017260))

(declare-fun m!8017262 () Bool)

(assert (=> b!7358323 m!8017262))

(declare-fun m!8017264 () Bool)

(assert (=> b!7358323 m!8017264))

(declare-fun m!8017266 () Bool)

(assert (=> b!7358323 m!8017266))

(declare-fun m!8017268 () Bool)

(assert (=> b!7358324 m!8017268))

(assert (=> b!7358324 m!8017266))

(declare-fun m!8017270 () Bool)

(assert (=> start!718518 m!8017270))

(declare-fun m!8017272 () Bool)

(assert (=> start!718518 m!8017272))

(declare-fun m!8017274 () Bool)

(assert (=> start!718518 m!8017274))

(declare-fun m!8017276 () Bool)

(assert (=> start!718518 m!8017276))

(declare-fun m!8017278 () Bool)

(assert (=> b!7358319 m!8017278))

(declare-fun m!8017280 () Bool)

(assert (=> b!7358319 m!8017280))

(push 1)

(assert (not b!7358323))

(assert (not b!7358316))

(assert (not start!718518))

(assert (not b!7358324))

(assert (not b!7358315))

(assert tp_is_empty!48665)

(assert (not b!7358318))

(assert (not b!7358321))

(assert (not b!7358317))

(assert (not b!7358319))

(assert (not b!7358320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!673939 () Bool)

(declare-fun call!673945 () Bool)

(declare-fun call!673944 () Bool)

(assert (=> bm!673939 (= call!673945 call!673944)))

(declare-fun b!7358376 () Bool)

(declare-fun res!2971002 () Bool)

(declare-fun e!4405735 () Bool)

(assert (=> b!7358376 (=> res!2971002 e!4405735)))

(assert (=> b!7358376 (= res!2971002 (not (is-Concat!28055 r1!2370)))))

(declare-fun e!4405730 () Bool)

(assert (=> b!7358376 (= e!4405730 e!4405735)))

(declare-fun b!7358377 () Bool)

(declare-fun e!4405734 () Bool)

(declare-fun call!673946 () Bool)

(assert (=> b!7358377 (= e!4405734 call!673946)))

(declare-fun b!7358378 () Bool)

(declare-fun e!4405733 () Bool)

(declare-fun e!4405731 () Bool)

(assert (=> b!7358378 (= e!4405733 e!4405731)))

(declare-fun c!1367149 () Bool)

(assert (=> b!7358378 (= c!1367149 (is-Star!19210 r1!2370))))

(declare-fun d!2281824 () Bool)

(declare-fun res!2971003 () Bool)

(assert (=> d!2281824 (=> res!2971003 e!4405733)))

(assert (=> d!2281824 (= res!2971003 (is-ElementMatch!19210 r1!2370))))

(assert (=> d!2281824 (= (validRegex!9806 r1!2370) e!4405733)))

(declare-fun bm!673940 () Bool)

(declare-fun c!1367148 () Bool)

(assert (=> bm!673940 (= call!673946 (validRegex!9806 (ite c!1367148 (regTwo!38933 r1!2370) (regOne!38932 r1!2370))))))

(declare-fun b!7358379 () Bool)

(declare-fun e!4405732 () Bool)

(assert (=> b!7358379 (= e!4405732 call!673944)))

(declare-fun bm!673941 () Bool)

(assert (=> bm!673941 (= call!673944 (validRegex!9806 (ite c!1367149 (reg!19539 r1!2370) (ite c!1367148 (regOne!38933 r1!2370) (regTwo!38932 r1!2370)))))))

(declare-fun b!7358380 () Bool)

(declare-fun e!4405729 () Bool)

(assert (=> b!7358380 (= e!4405735 e!4405729)))

(declare-fun res!2971000 () Bool)

(assert (=> b!7358380 (=> (not res!2971000) (not e!4405729))))

(assert (=> b!7358380 (= res!2971000 call!673946)))

(declare-fun b!7358381 () Bool)

(assert (=> b!7358381 (= e!4405729 call!673945)))

(declare-fun b!7358382 () Bool)

(assert (=> b!7358382 (= e!4405731 e!4405732)))

(declare-fun res!2970999 () Bool)

(declare-fun nullable!8297 (Regex!19210) Bool)

(assert (=> b!7358382 (= res!2970999 (not (nullable!8297 (reg!19539 r1!2370))))))

(assert (=> b!7358382 (=> (not res!2970999) (not e!4405732))))

(declare-fun b!7358383 () Bool)

(declare-fun res!2971001 () Bool)

(assert (=> b!7358383 (=> (not res!2971001) (not e!4405734))))

(assert (=> b!7358383 (= res!2971001 call!673945)))

(assert (=> b!7358383 (= e!4405730 e!4405734)))

(declare-fun b!7358384 () Bool)

(assert (=> b!7358384 (= e!4405731 e!4405730)))

(assert (=> b!7358384 (= c!1367148 (is-Union!19210 r1!2370))))

(assert (= (and d!2281824 (not res!2971003)) b!7358378))

(assert (= (and b!7358378 c!1367149) b!7358382))

(assert (= (and b!7358378 (not c!1367149)) b!7358384))

(assert (= (and b!7358382 res!2970999) b!7358379))

(assert (= (and b!7358384 c!1367148) b!7358383))

(assert (= (and b!7358384 (not c!1367148)) b!7358376))

(assert (= (and b!7358383 res!2971001) b!7358377))

(assert (= (and b!7358376 (not res!2971002)) b!7358380))

(assert (= (and b!7358380 res!2971000) b!7358381))

(assert (= (or b!7358383 b!7358381) bm!673939))

(assert (= (or b!7358377 b!7358380) bm!673940))

(assert (= (or b!7358379 bm!673939) bm!673941))

(declare-fun m!8017306 () Bool)

(assert (=> bm!673940 m!8017306))

(declare-fun m!8017308 () Bool)

(assert (=> bm!673941 m!8017308))

(declare-fun m!8017310 () Bool)

(assert (=> b!7358382 m!8017310))

(assert (=> start!718518 d!2281824))

(declare-fun bs!1919946 () Bool)

(declare-fun d!2281826 () Bool)

(assert (= bs!1919946 (and d!2281826 b!7358323)))

(declare-fun lambda!457198 () Int)

(assert (=> bs!1919946 (= lambda!457198 lambda!457190)))

(declare-fun forall!18026 (List!71706 Int) Bool)

(assert (=> d!2281826 (= (inv!91366 cWitness!61) (forall!18026 (exprs!8650 cWitness!61) lambda!457198))))

(declare-fun bs!1919947 () Bool)

(assert (= bs!1919947 d!2281826))

(declare-fun m!8017312 () Bool)

(assert (=> bs!1919947 m!8017312))

(assert (=> start!718518 d!2281826))

(declare-fun bs!1919948 () Bool)

(declare-fun d!2281828 () Bool)

(assert (= bs!1919948 (and d!2281828 b!7358323)))

(declare-fun lambda!457199 () Int)

(assert (=> bs!1919948 (= lambda!457199 lambda!457190)))

(declare-fun bs!1919949 () Bool)

(assert (= bs!1919949 (and d!2281828 d!2281826)))

(assert (=> bs!1919949 (= lambda!457199 lambda!457198)))

(assert (=> d!2281828 (= (inv!91366 ct1!282) (forall!18026 (exprs!8650 ct1!282) lambda!457199))))

(declare-fun bs!1919950 () Bool)

(assert (= bs!1919950 d!2281828))

(declare-fun m!8017314 () Bool)

(assert (=> bs!1919950 m!8017314))

(assert (=> start!718518 d!2281828))

(declare-fun bs!1919951 () Bool)

(declare-fun d!2281830 () Bool)

(assert (= bs!1919951 (and d!2281830 b!7358323)))

(declare-fun lambda!457200 () Int)

(assert (=> bs!1919951 (= lambda!457200 lambda!457190)))

(declare-fun bs!1919952 () Bool)

(assert (= bs!1919952 (and d!2281830 d!2281826)))

(assert (=> bs!1919952 (= lambda!457200 lambda!457198)))

(declare-fun bs!1919953 () Bool)

(assert (= bs!1919953 (and d!2281830 d!2281828)))

(assert (=> bs!1919953 (= lambda!457200 lambda!457199)))

(assert (=> d!2281830 (= (inv!91366 ct2!378) (forall!18026 (exprs!8650 ct2!378) lambda!457200))))

(declare-fun bs!1919954 () Bool)

(assert (= bs!1919954 d!2281830))

(declare-fun m!8017316 () Bool)

(assert (=> bs!1919954 m!8017316))

(assert (=> start!718518 d!2281830))

(declare-fun d!2281832 () Bool)

(assert (=> d!2281832 (forall!18026 (++!17028 (exprs!8650 ct1!282) (exprs!8650 ct2!378)) lambda!457190)))

(declare-fun lt!2613610 () Unit!165373)

(declare-fun choose!57237 (List!71706 List!71706 Int) Unit!165373)

(assert (=> d!2281832 (= lt!2613610 (choose!57237 (exprs!8650 ct1!282) (exprs!8650 ct2!378) lambda!457190))))

(assert (=> d!2281832 (forall!18026 (exprs!8650 ct1!282) lambda!457190)))

(assert (=> d!2281832 (= (lemmaConcatPreservesForall!1885 (exprs!8650 ct1!282) (exprs!8650 ct2!378) lambda!457190) lt!2613610)))

(declare-fun bs!1919955 () Bool)

(assert (= bs!1919955 d!2281832))

(assert (=> bs!1919955 m!8017264))

(assert (=> bs!1919955 m!8017264))

(declare-fun m!8017318 () Bool)

(assert (=> bs!1919955 m!8017318))

(declare-fun m!8017320 () Bool)

(assert (=> bs!1919955 m!8017320))

(declare-fun m!8017322 () Bool)

(assert (=> bs!1919955 m!8017322))

(assert (=> b!7358324 d!2281832))

(declare-fun b!7358407 () Bool)

(declare-fun e!4405749 () (Set Context!16300))

(assert (=> b!7358407 (= e!4405749 (set.insert ct1!282 (as set.empty (Set Context!16300))))))

(declare-fun b!7358408 () Bool)

(declare-fun e!4405748 () (Set Context!16300))

(assert (=> b!7358408 (= e!4405748 (as set.empty (Set Context!16300)))))

(declare-fun b!7358409 () Bool)

(declare-fun e!4405750 () (Set Context!16300))

(declare-fun call!673963 () (Set Context!16300))

(declare-fun call!673962 () (Set Context!16300))

(assert (=> b!7358409 (= e!4405750 (set.union call!673963 call!673962))))

(declare-fun bm!673954 () Bool)

(declare-fun call!673959 () (Set Context!16300))

(declare-fun call!673961 () (Set Context!16300))

(assert (=> bm!673954 (= call!673959 call!673961)))

(declare-fun c!1367162 () Bool)

(declare-fun bm!673955 () Bool)

(declare-fun c!1367160 () Bool)

(declare-fun call!673964 () List!71706)

(declare-fun c!1367164 () Bool)

(assert (=> bm!673955 (= call!673963 (derivationStepZipperDown!3036 (ite c!1367160 (regOne!38933 r1!2370) (ite c!1367164 (regTwo!38932 r1!2370) (ite c!1367162 (regOne!38932 r1!2370) (reg!19539 r1!2370)))) (ite (or c!1367160 c!1367164) ct1!282 (Context!16301 call!673964)) c!10362))))

(declare-fun b!7358410 () Bool)

(assert (=> b!7358410 (= e!4405748 call!673959)))

(declare-fun d!2281836 () Bool)

(declare-fun c!1367163 () Bool)

(assert (=> d!2281836 (= c!1367163 (and (is-ElementMatch!19210 r1!2370) (= (c!1367142 r1!2370) c!10362)))))

(assert (=> d!2281836 (= (derivationStepZipperDown!3036 r1!2370 ct1!282 c!10362) e!4405749)))

(declare-fun bm!673956 () Bool)

(assert (=> bm!673956 (= call!673961 call!673963)))

(declare-fun bm!673957 () Bool)

(declare-fun call!673960 () List!71706)

(assert (=> bm!673957 (= call!673964 call!673960)))

(declare-fun b!7358411 () Bool)

(declare-fun c!1367161 () Bool)

(assert (=> b!7358411 (= c!1367161 (is-Star!19210 r1!2370))))

(declare-fun e!4405753 () (Set Context!16300))

(assert (=> b!7358411 (= e!4405753 e!4405748)))

(declare-fun b!7358412 () Bool)

(declare-fun e!4405751 () Bool)

(assert (=> b!7358412 (= e!4405751 (nullable!8297 (regOne!38932 r1!2370)))))

(declare-fun b!7358413 () Bool)

(declare-fun e!4405752 () (Set Context!16300))

(assert (=> b!7358413 (= e!4405752 (set.union call!673962 call!673961))))

(declare-fun bm!673958 () Bool)

(declare-fun $colon$colon!3203 (List!71706 Regex!19210) List!71706)

(assert (=> bm!673958 (= call!673960 ($colon$colon!3203 (exprs!8650 ct1!282) (ite (or c!1367164 c!1367162) (regTwo!38932 r1!2370) r1!2370)))))

(declare-fun b!7358414 () Bool)

(assert (=> b!7358414 (= e!4405752 e!4405753)))

(assert (=> b!7358414 (= c!1367162 (is-Concat!28055 r1!2370))))

(declare-fun b!7358415 () Bool)

(assert (=> b!7358415 (= e!4405749 e!4405750)))

(assert (=> b!7358415 (= c!1367160 (is-Union!19210 r1!2370))))

(declare-fun bm!673959 () Bool)

(assert (=> bm!673959 (= call!673962 (derivationStepZipperDown!3036 (ite c!1367160 (regTwo!38933 r1!2370) (regOne!38932 r1!2370)) (ite c!1367160 ct1!282 (Context!16301 call!673960)) c!10362))))

(declare-fun b!7358416 () Bool)

(assert (=> b!7358416 (= c!1367164 e!4405751)))

(declare-fun res!2971006 () Bool)

(assert (=> b!7358416 (=> (not res!2971006) (not e!4405751))))

(assert (=> b!7358416 (= res!2971006 (is-Concat!28055 r1!2370))))

(assert (=> b!7358416 (= e!4405750 e!4405752)))

(declare-fun b!7358417 () Bool)

(assert (=> b!7358417 (= e!4405753 call!673959)))

(assert (= (and d!2281836 c!1367163) b!7358407))

(assert (= (and d!2281836 (not c!1367163)) b!7358415))

(assert (= (and b!7358415 c!1367160) b!7358409))

(assert (= (and b!7358415 (not c!1367160)) b!7358416))

(assert (= (and b!7358416 res!2971006) b!7358412))

(assert (= (and b!7358416 c!1367164) b!7358413))

(assert (= (and b!7358416 (not c!1367164)) b!7358414))

(assert (= (and b!7358414 c!1367162) b!7358417))

(assert (= (and b!7358414 (not c!1367162)) b!7358411))

(assert (= (and b!7358411 c!1367161) b!7358410))

(assert (= (and b!7358411 (not c!1367161)) b!7358408))

(assert (= (or b!7358417 b!7358410) bm!673957))

(assert (= (or b!7358417 b!7358410) bm!673954))

(assert (= (or b!7358413 bm!673954) bm!673956))

(assert (= (or b!7358413 bm!673957) bm!673958))

(assert (= (or b!7358409 b!7358413) bm!673959))

(assert (= (or b!7358409 bm!673956) bm!673955))

(declare-fun m!8017330 () Bool)

(assert (=> bm!673959 m!8017330))

(declare-fun m!8017332 () Bool)

(assert (=> bm!673955 m!8017332))

(assert (=> b!7358407 m!8017260))

(declare-fun m!8017334 () Bool)

(assert (=> bm!673958 m!8017334))

(declare-fun m!8017336 () Bool)

(assert (=> b!7358412 m!8017336))

(assert (=> b!7358319 d!2281836))

(declare-fun b!7358418 () Bool)

(declare-fun e!4405755 () (Set Context!16300))

(assert (=> b!7358418 (= e!4405755 (set.insert lt!2613589 (as set.empty (Set Context!16300))))))

(declare-fun b!7358419 () Bool)

(declare-fun e!4405754 () (Set Context!16300))

(assert (=> b!7358419 (= e!4405754 (as set.empty (Set Context!16300)))))

(declare-fun b!7358420 () Bool)

(declare-fun e!4405756 () (Set Context!16300))

(declare-fun call!673969 () (Set Context!16300))

(declare-fun call!673968 () (Set Context!16300))

(assert (=> b!7358420 (= e!4405756 (set.union call!673969 call!673968))))

(declare-fun bm!673960 () Bool)

(declare-fun call!673965 () (Set Context!16300))

(declare-fun call!673967 () (Set Context!16300))

(assert (=> bm!673960 (= call!673965 call!673967)))

(declare-fun c!1367167 () Bool)

(declare-fun c!1367169 () Bool)

(declare-fun c!1367165 () Bool)

(declare-fun call!673970 () List!71706)

(declare-fun bm!673961 () Bool)

(assert (=> bm!673961 (= call!673969 (derivationStepZipperDown!3036 (ite c!1367165 (regOne!38933 r1!2370) (ite c!1367169 (regTwo!38932 r1!2370) (ite c!1367167 (regOne!38932 r1!2370) (reg!19539 r1!2370)))) (ite (or c!1367165 c!1367169) lt!2613589 (Context!16301 call!673970)) c!10362))))

(declare-fun b!7358421 () Bool)

(assert (=> b!7358421 (= e!4405754 call!673965)))

(declare-fun d!2281840 () Bool)

(declare-fun c!1367168 () Bool)

(assert (=> d!2281840 (= c!1367168 (and (is-ElementMatch!19210 r1!2370) (= (c!1367142 r1!2370) c!10362)))))

(assert (=> d!2281840 (= (derivationStepZipperDown!3036 r1!2370 lt!2613589 c!10362) e!4405755)))

(declare-fun bm!673962 () Bool)

(assert (=> bm!673962 (= call!673967 call!673969)))

(declare-fun bm!673963 () Bool)

(declare-fun call!673966 () List!71706)

(assert (=> bm!673963 (= call!673970 call!673966)))

(declare-fun b!7358422 () Bool)

(declare-fun c!1367166 () Bool)

(assert (=> b!7358422 (= c!1367166 (is-Star!19210 r1!2370))))

(declare-fun e!4405759 () (Set Context!16300))

(assert (=> b!7358422 (= e!4405759 e!4405754)))

(declare-fun b!7358423 () Bool)

(declare-fun e!4405757 () Bool)

(assert (=> b!7358423 (= e!4405757 (nullable!8297 (regOne!38932 r1!2370)))))

(declare-fun b!7358424 () Bool)

(declare-fun e!4405758 () (Set Context!16300))

(assert (=> b!7358424 (= e!4405758 (set.union call!673968 call!673967))))

(declare-fun bm!673964 () Bool)

(assert (=> bm!673964 (= call!673966 ($colon$colon!3203 (exprs!8650 lt!2613589) (ite (or c!1367169 c!1367167) (regTwo!38932 r1!2370) r1!2370)))))

(declare-fun b!7358425 () Bool)

(assert (=> b!7358425 (= e!4405758 e!4405759)))

(assert (=> b!7358425 (= c!1367167 (is-Concat!28055 r1!2370))))

(declare-fun b!7358426 () Bool)

(assert (=> b!7358426 (= e!4405755 e!4405756)))

(assert (=> b!7358426 (= c!1367165 (is-Union!19210 r1!2370))))

(declare-fun bm!673965 () Bool)

(assert (=> bm!673965 (= call!673968 (derivationStepZipperDown!3036 (ite c!1367165 (regTwo!38933 r1!2370) (regOne!38932 r1!2370)) (ite c!1367165 lt!2613589 (Context!16301 call!673966)) c!10362))))

(declare-fun b!7358427 () Bool)

(assert (=> b!7358427 (= c!1367169 e!4405757)))

(declare-fun res!2971007 () Bool)

(assert (=> b!7358427 (=> (not res!2971007) (not e!4405757))))

(assert (=> b!7358427 (= res!2971007 (is-Concat!28055 r1!2370))))

(assert (=> b!7358427 (= e!4405756 e!4405758)))

(declare-fun b!7358428 () Bool)

(assert (=> b!7358428 (= e!4405759 call!673965)))

(assert (= (and d!2281840 c!1367168) b!7358418))

(assert (= (and d!2281840 (not c!1367168)) b!7358426))

(assert (= (and b!7358426 c!1367165) b!7358420))

(assert (= (and b!7358426 (not c!1367165)) b!7358427))

(assert (= (and b!7358427 res!2971007) b!7358423))

(assert (= (and b!7358427 c!1367169) b!7358424))

(assert (= (and b!7358427 (not c!1367169)) b!7358425))

(assert (= (and b!7358425 c!1367167) b!7358428))

(assert (= (and b!7358425 (not c!1367167)) b!7358422))

(assert (= (and b!7358422 c!1367166) b!7358421))

(assert (= (and b!7358422 (not c!1367166)) b!7358419))

(assert (= (or b!7358428 b!7358421) bm!673963))

(assert (= (or b!7358428 b!7358421) bm!673960))

(assert (= (or b!7358424 bm!673960) bm!673962))

(assert (= (or b!7358424 bm!673963) bm!673964))

(assert (= (or b!7358420 b!7358424) bm!673965))

(assert (= (or b!7358420 bm!673962) bm!673961))

(declare-fun m!8017338 () Bool)

(assert (=> bm!673965 m!8017338))

(declare-fun m!8017340 () Bool)

(assert (=> bm!673961 m!8017340))

(assert (=> b!7358418 m!8017268))

(declare-fun m!8017342 () Bool)

(assert (=> bm!673964 m!8017342))

(assert (=> b!7358423 m!8017336))

(assert (=> b!7358323 d!2281840))

(declare-fun d!2281842 () Bool)

(declare-fun e!4405777 () Bool)

(assert (=> d!2281842 e!4405777))

(declare-fun res!2971015 () Bool)

(assert (=> d!2281842 (=> (not res!2971015) (not e!4405777))))

(declare-fun lt!2613616 () List!71706)

(declare-fun content!15108 (List!71706) (Set Regex!19210))

(assert (=> d!2281842 (= res!2971015 (= (content!15108 lt!2613616) (set.union (content!15108 (exprs!8650 ct1!282)) (content!15108 (exprs!8650 ct2!378)))))))

(declare-fun e!4405776 () List!71706)

(assert (=> d!2281842 (= lt!2613616 e!4405776)))

(declare-fun c!1367182 () Bool)

(assert (=> d!2281842 (= c!1367182 (is-Nil!71582 (exprs!8650 ct1!282)))))

(assert (=> d!2281842 (= (++!17028 (exprs!8650 ct1!282) (exprs!8650 ct2!378)) lt!2613616)))

(declare-fun b!7358460 () Bool)

(assert (=> b!7358460 (= e!4405776 (Cons!71582 (h!78030 (exprs!8650 ct1!282)) (++!17028 (t!386149 (exprs!8650 ct1!282)) (exprs!8650 ct2!378))))))

(declare-fun b!7358462 () Bool)

(assert (=> b!7358462 (= e!4405777 (or (not (= (exprs!8650 ct2!378) Nil!71582)) (= lt!2613616 (exprs!8650 ct1!282))))))

(declare-fun b!7358461 () Bool)

(declare-fun res!2971014 () Bool)

(assert (=> b!7358461 (=> (not res!2971014) (not e!4405777))))

(declare-fun size!42086 (List!71706) Int)

(assert (=> b!7358461 (= res!2971014 (= (size!42086 lt!2613616) (+ (size!42086 (exprs!8650 ct1!282)) (size!42086 (exprs!8650 ct2!378)))))))

(declare-fun b!7358459 () Bool)

(assert (=> b!7358459 (= e!4405776 (exprs!8650 ct2!378))))

(assert (= (and d!2281842 c!1367182) b!7358459))

(assert (= (and d!2281842 (not c!1367182)) b!7358460))

(assert (= (and d!2281842 res!2971015) b!7358461))

(assert (= (and b!7358461 res!2971014) b!7358462))

(declare-fun m!8017344 () Bool)

(assert (=> d!2281842 m!8017344))

(declare-fun m!8017346 () Bool)

(assert (=> d!2281842 m!8017346))

(declare-fun m!8017348 () Bool)

(assert (=> d!2281842 m!8017348))

(declare-fun m!8017350 () Bool)

(assert (=> b!7358460 m!8017350))

(declare-fun m!8017352 () Bool)

(assert (=> b!7358461 m!8017352))

(declare-fun m!8017354 () Bool)

(assert (=> b!7358461 m!8017354))

(declare-fun m!8017356 () Bool)

(assert (=> b!7358461 m!8017356))

(assert (=> b!7358323 d!2281842))

(assert (=> b!7358323 d!2281832))

(declare-fun b!7358476 () Bool)

(declare-fun e!4405780 () Bool)

(declare-fun tp!2090574 () Bool)

(declare-fun tp!2090576 () Bool)

(assert (=> b!7358476 (= e!4405780 (and tp!2090574 tp!2090576))))

(declare-fun b!7358474 () Bool)

(declare-fun tp!2090575 () Bool)

(declare-fun tp!2090573 () Bool)

(assert (=> b!7358474 (= e!4405780 (and tp!2090575 tp!2090573))))

(assert (=> b!7358321 (= tp!2090532 e!4405780)))

(declare-fun b!7358475 () Bool)

(declare-fun tp!2090572 () Bool)

(assert (=> b!7358475 (= e!4405780 tp!2090572)))

(declare-fun b!7358473 () Bool)

(assert (=> b!7358473 (= e!4405780 tp_is_empty!48665)))

(assert (= (and b!7358321 (is-ElementMatch!19210 (regOne!38932 r1!2370))) b!7358473))

(assert (= (and b!7358321 (is-Concat!28055 (regOne!38932 r1!2370))) b!7358474))

(assert (= (and b!7358321 (is-Star!19210 (regOne!38932 r1!2370))) b!7358475))

(assert (= (and b!7358321 (is-Union!19210 (regOne!38932 r1!2370))) b!7358476))

(declare-fun b!7358480 () Bool)

(declare-fun e!4405781 () Bool)

(declare-fun tp!2090579 () Bool)

(declare-fun tp!2090581 () Bool)

(assert (=> b!7358480 (= e!4405781 (and tp!2090579 tp!2090581))))

(declare-fun b!7358478 () Bool)

(declare-fun tp!2090580 () Bool)

(declare-fun tp!2090578 () Bool)

(assert (=> b!7358478 (= e!4405781 (and tp!2090580 tp!2090578))))

(assert (=> b!7358321 (= tp!2090535 e!4405781)))

(declare-fun b!7358479 () Bool)

(declare-fun tp!2090577 () Bool)

(assert (=> b!7358479 (= e!4405781 tp!2090577)))

(declare-fun b!7358477 () Bool)

(assert (=> b!7358477 (= e!4405781 tp_is_empty!48665)))

(assert (= (and b!7358321 (is-ElementMatch!19210 (regTwo!38932 r1!2370))) b!7358477))

(assert (= (and b!7358321 (is-Concat!28055 (regTwo!38932 r1!2370))) b!7358478))

(assert (= (and b!7358321 (is-Star!19210 (regTwo!38932 r1!2370))) b!7358479))

(assert (= (and b!7358321 (is-Union!19210 (regTwo!38932 r1!2370))) b!7358480))

(declare-fun b!7358484 () Bool)

(declare-fun e!4405782 () Bool)

(declare-fun tp!2090584 () Bool)

(declare-fun tp!2090586 () Bool)

(assert (=> b!7358484 (= e!4405782 (and tp!2090584 tp!2090586))))

(declare-fun b!7358482 () Bool)

(declare-fun tp!2090585 () Bool)

(declare-fun tp!2090583 () Bool)

(assert (=> b!7358482 (= e!4405782 (and tp!2090585 tp!2090583))))

(assert (=> b!7358316 (= tp!2090537 e!4405782)))

(declare-fun b!7358483 () Bool)

(declare-fun tp!2090582 () Bool)

(assert (=> b!7358483 (= e!4405782 tp!2090582)))

(declare-fun b!7358481 () Bool)

(assert (=> b!7358481 (= e!4405782 tp_is_empty!48665)))

(assert (= (and b!7358316 (is-ElementMatch!19210 (regOne!38933 r1!2370))) b!7358481))

(assert (= (and b!7358316 (is-Concat!28055 (regOne!38933 r1!2370))) b!7358482))

(assert (= (and b!7358316 (is-Star!19210 (regOne!38933 r1!2370))) b!7358483))

(assert (= (and b!7358316 (is-Union!19210 (regOne!38933 r1!2370))) b!7358484))

(declare-fun b!7358488 () Bool)

(declare-fun e!4405783 () Bool)

(declare-fun tp!2090589 () Bool)

(declare-fun tp!2090591 () Bool)

(assert (=> b!7358488 (= e!4405783 (and tp!2090589 tp!2090591))))

(declare-fun b!7358486 () Bool)

(declare-fun tp!2090590 () Bool)

(declare-fun tp!2090588 () Bool)

(assert (=> b!7358486 (= e!4405783 (and tp!2090590 tp!2090588))))

(assert (=> b!7358316 (= tp!2090536 e!4405783)))

(declare-fun b!7358487 () Bool)

(declare-fun tp!2090587 () Bool)

(assert (=> b!7358487 (= e!4405783 tp!2090587)))

(declare-fun b!7358485 () Bool)

(assert (=> b!7358485 (= e!4405783 tp_is_empty!48665)))

(assert (= (and b!7358316 (is-ElementMatch!19210 (regTwo!38933 r1!2370))) b!7358485))

(assert (= (and b!7358316 (is-Concat!28055 (regTwo!38933 r1!2370))) b!7358486))

(assert (= (and b!7358316 (is-Star!19210 (regTwo!38933 r1!2370))) b!7358487))

(assert (= (and b!7358316 (is-Union!19210 (regTwo!38933 r1!2370))) b!7358488))

(declare-fun b!7358493 () Bool)

(declare-fun e!4405786 () Bool)

(declare-fun tp!2090596 () Bool)

(declare-fun tp!2090597 () Bool)

(assert (=> b!7358493 (= e!4405786 (and tp!2090596 tp!2090597))))

(assert (=> b!7358320 (= tp!2090531 e!4405786)))

(assert (= (and b!7358320 (is-Cons!71582 (exprs!8650 ct1!282))) b!7358493))

(declare-fun b!7358497 () Bool)

(declare-fun e!4405787 () Bool)

(declare-fun tp!2090600 () Bool)

(declare-fun tp!2090602 () Bool)

(assert (=> b!7358497 (= e!4405787 (and tp!2090600 tp!2090602))))

(declare-fun b!7358495 () Bool)

(declare-fun tp!2090601 () Bool)

(declare-fun tp!2090599 () Bool)

(assert (=> b!7358495 (= e!4405787 (and tp!2090601 tp!2090599))))

(assert (=> b!7358315 (= tp!2090533 e!4405787)))

(declare-fun b!7358496 () Bool)

(declare-fun tp!2090598 () Bool)

(assert (=> b!7358496 (= e!4405787 tp!2090598)))

(declare-fun b!7358494 () Bool)

(assert (=> b!7358494 (= e!4405787 tp_is_empty!48665)))

(assert (= (and b!7358315 (is-ElementMatch!19210 (reg!19539 r1!2370))) b!7358494))

(assert (= (and b!7358315 (is-Concat!28055 (reg!19539 r1!2370))) b!7358495))

(assert (= (and b!7358315 (is-Star!19210 (reg!19539 r1!2370))) b!7358496))

(assert (= (and b!7358315 (is-Union!19210 (reg!19539 r1!2370))) b!7358497))

(declare-fun b!7358498 () Bool)

(declare-fun e!4405788 () Bool)

(declare-fun tp!2090603 () Bool)

(declare-fun tp!2090604 () Bool)

(assert (=> b!7358498 (= e!4405788 (and tp!2090603 tp!2090604))))

(assert (=> b!7358317 (= tp!2090530 e!4405788)))

(assert (= (and b!7358317 (is-Cons!71582 (exprs!8650 cWitness!61))) b!7358498))

(declare-fun b!7358499 () Bool)

(declare-fun e!4405789 () Bool)

(declare-fun tp!2090605 () Bool)

(declare-fun tp!2090606 () Bool)

(assert (=> b!7358499 (= e!4405789 (and tp!2090605 tp!2090606))))

(assert (=> b!7358318 (= tp!2090534 e!4405789)))

(assert (= (and b!7358318 (is-Cons!71582 (exprs!8650 ct2!378))) b!7358499))

(push 1)

(assert (not b!7358495))

(assert (not d!2281842))

(assert (not d!2281828))

(assert (not bm!673964))

(assert (not b!7358498))

(assert (not b!7358487))

(assert (not bm!673965))

(assert (not b!7358478))

(assert (not b!7358412))

(assert (not b!7358423))

(assert (not b!7358496))

(assert (not b!7358382))

(assert (not bm!673958))

(assert (not bm!673959))

(assert (not d!2281832))

(assert (not b!7358475))

(assert (not b!7358499))

(assert (not b!7358482))

(assert (not b!7358488))

(assert (not b!7358497))

(assert (not b!7358480))

(assert (not b!7358460))

(assert (not b!7358461))

(assert (not bm!673961))

(assert (not b!7358474))

(assert (not b!7358493))

(assert (not bm!673941))

(assert (not b!7358483))

(assert (not d!2281830))

(assert (not bm!673940))

(assert (not b!7358484))

(assert (not bm!673955))

(assert (not b!7358476))

(assert (not b!7358479))

(assert (not b!7358486))

(assert tp_is_empty!48665)

(assert (not d!2281826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

