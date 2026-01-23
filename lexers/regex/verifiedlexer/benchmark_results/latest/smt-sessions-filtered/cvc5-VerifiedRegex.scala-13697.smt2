; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733154 () Bool)

(assert start!733154)

(declare-fun b!7606282 () Bool)

(assert (=> b!7606282 true))

(assert (=> b!7606282 true))

(assert (=> b!7606282 true))

(declare-fun bs!1942707 () Bool)

(declare-fun b!7606275 () Bool)

(assert (= bs!1942707 (and b!7606275 b!7606282)))

(declare-fun lambda!468059 () Int)

(declare-fun lambda!468058 () Int)

(assert (=> bs!1942707 (not (= lambda!468059 lambda!468058))))

(assert (=> b!7606275 true))

(assert (=> b!7606275 true))

(assert (=> b!7606275 true))

(declare-fun b!7606270 () Bool)

(declare-fun res!3045656 () Bool)

(declare-fun e!4524435 () Bool)

(assert (=> b!7606270 (=> (not res!3045656) (not e!4524435))))

(declare-fun Exists!4416 (Int) Bool)

(assert (=> b!7606270 (= res!3045656 (not (Exists!4416 lambda!468058)))))

(declare-fun b!7606271 () Bool)

(declare-fun e!4524434 () Bool)

(declare-fun tp_is_empty!50731 () Bool)

(assert (=> b!7606271 (= e!4524434 tp_is_empty!50731)))

(declare-fun res!3045657 () Bool)

(assert (=> start!733154 (=> (not res!3045657) (not e!4524435))))

(declare-datatypes ((C!40702 0))(
  ( (C!40703 (val!30791 Int)) )
))
(declare-datatypes ((Regex!20188 0))(
  ( (ElementMatch!20188 (c!1402767 C!40702)) (Concat!29033 (regOne!40888 Regex!20188) (regTwo!40888 Regex!20188)) (EmptyExpr!20188) (Star!20188 (reg!20517 Regex!20188)) (EmptyLang!20188) (Union!20188 (regOne!40889 Regex!20188) (regTwo!40889 Regex!20188)) )
))
(declare-fun r1!3349 () Regex!20188)

(declare-fun validRegex!10616 (Regex!20188) Bool)

(assert (=> start!733154 (= res!3045657 (validRegex!10616 r1!3349))))

(assert (=> start!733154 e!4524435))

(assert (=> start!733154 e!4524434))

(declare-fun e!4524437 () Bool)

(assert (=> start!733154 e!4524437))

(declare-fun e!4524438 () Bool)

(assert (=> start!733154 e!4524438))

(declare-fun b!7606272 () Bool)

(assert (=> b!7606272 (= e!4524437 tp_is_empty!50731)))

(declare-fun b!7606273 () Bool)

(declare-fun tp!2218386 () Bool)

(declare-fun tp!2218388 () Bool)

(assert (=> b!7606273 (= e!4524434 (and tp!2218386 tp!2218388))))

(declare-fun b!7606274 () Bool)

(declare-fun tp!2218390 () Bool)

(assert (=> b!7606274 (= e!4524437 tp!2218390)))

(declare-fun res!3045658 () Bool)

(assert (=> b!7606275 (=> (not res!3045658) (not e!4524435))))

(assert (=> b!7606275 (= res!3045658 (Exists!4416 lambda!468059))))

(declare-fun b!7606276 () Bool)

(declare-fun res!3045654 () Bool)

(declare-fun e!4524436 () Bool)

(assert (=> b!7606276 (=> res!3045654 e!4524436)))

(declare-fun lt!2654866 () Bool)

(declare-fun lt!2654867 () Bool)

(assert (=> b!7606276 (= res!3045654 (or (not lt!2654866) (not lt!2654867)))))

(declare-fun b!7606277 () Bool)

(declare-fun tp!2218393 () Bool)

(assert (=> b!7606277 (= e!4524434 tp!2218393)))

(declare-fun b!7606278 () Bool)

(declare-fun tp!2218394 () Bool)

(declare-fun tp!2218391 () Bool)

(assert (=> b!7606278 (= e!4524437 (and tp!2218394 tp!2218391))))

(declare-fun b!7606279 () Bool)

(declare-fun tp!2218385 () Bool)

(assert (=> b!7606279 (= e!4524438 (and tp_is_empty!50731 tp!2218385))))

(declare-fun b!7606280 () Bool)

(declare-fun tp!2218387 () Bool)

(declare-fun tp!2218392 () Bool)

(assert (=> b!7606280 (= e!4524437 (and tp!2218387 tp!2218392))))

(declare-fun b!7606281 () Bool)

(assert (=> b!7606281 (= e!4524436 false)))

(declare-datatypes ((Unit!167256 0))(
  ( (Unit!167257) )
))
(declare-fun lt!2654869 () Unit!167256)

(declare-datatypes ((List!73071 0))(
  ( (Nil!72947) (Cons!72947 (h!79395 C!40702) (t!387806 List!73071)) )
))
(declare-datatypes ((tuple2!69086 0))(
  ( (tuple2!69087 (_1!37846 List!73071) (_2!37846 List!73071)) )
))
(declare-fun lt!2654868 () tuple2!69086)

(declare-fun ExistsThe!39 (tuple2!69086 Int) Unit!167256)

(assert (=> b!7606281 (= lt!2654869 (ExistsThe!39 (tuple2!69087 (_1!37846 lt!2654868) (_2!37846 lt!2654868)) lambda!468058))))

(declare-fun res!3045659 () Bool)

(assert (=> b!7606282 (=> (not res!3045659) (not e!4524435))))

(assert (=> b!7606282 (= res!3045659 (not (Exists!4416 lambda!468058)))))

(declare-fun b!7606283 () Bool)

(assert (=> b!7606283 (= e!4524435 (not e!4524436))))

(declare-fun res!3045655 () Bool)

(assert (=> b!7606283 (=> res!3045655 e!4524436)))

(declare-fun s!10235 () List!73071)

(declare-fun ++!17586 (List!73071 List!73071) List!73071)

(assert (=> b!7606283 (= res!3045655 (not (= (++!17586 (_1!37846 lt!2654868) (_2!37846 lt!2654868)) s!10235)))))

(declare-fun r2!3249 () Regex!20188)

(declare-fun matchRSpec!4463 (Regex!20188 List!73071) Bool)

(assert (=> b!7606283 (= lt!2654867 (matchRSpec!4463 r2!3249 (_2!37846 lt!2654868)))))

(declare-fun matchR!9751 (Regex!20188 List!73071) Bool)

(assert (=> b!7606283 (= lt!2654867 (matchR!9751 r2!3249 (_2!37846 lt!2654868)))))

(declare-fun lt!2654865 () Unit!167256)

(declare-fun mainMatchTheorem!4457 (Regex!20188 List!73071) Unit!167256)

(assert (=> b!7606283 (= lt!2654865 (mainMatchTheorem!4457 r2!3249 (_2!37846 lt!2654868)))))

(assert (=> b!7606283 (= lt!2654866 (matchRSpec!4463 r1!3349 (_1!37846 lt!2654868)))))

(assert (=> b!7606283 (= lt!2654866 (matchR!9751 r1!3349 (_1!37846 lt!2654868)))))

(declare-fun lt!2654870 () Unit!167256)

(assert (=> b!7606283 (= lt!2654870 (mainMatchTheorem!4457 r1!3349 (_1!37846 lt!2654868)))))

(declare-fun pickWitness!431 (Int) tuple2!69086)

(assert (=> b!7606283 (= lt!2654868 (pickWitness!431 lambda!468059))))

(declare-fun b!7606284 () Bool)

(declare-fun res!3045653 () Bool)

(assert (=> b!7606284 (=> (not res!3045653) (not e!4524435))))

(assert (=> b!7606284 (= res!3045653 (validRegex!10616 r2!3249))))

(declare-fun b!7606285 () Bool)

(declare-fun tp!2218389 () Bool)

(declare-fun tp!2218384 () Bool)

(assert (=> b!7606285 (= e!4524434 (and tp!2218389 tp!2218384))))

(assert (= (and start!733154 res!3045657) b!7606284))

(assert (= (and b!7606284 res!3045653) b!7606282))

(assert (= (and b!7606282 res!3045659) b!7606270))

(assert (= (and b!7606270 res!3045656) b!7606275))

(assert (= (and b!7606275 res!3045658) b!7606283))

(assert (= (and b!7606283 (not res!3045655)) b!7606276))

(assert (= (and b!7606276 (not res!3045654)) b!7606281))

(assert (= (and start!733154 (is-ElementMatch!20188 r1!3349)) b!7606271))

(assert (= (and start!733154 (is-Concat!29033 r1!3349)) b!7606273))

(assert (= (and start!733154 (is-Star!20188 r1!3349)) b!7606277))

(assert (= (and start!733154 (is-Union!20188 r1!3349)) b!7606285))

(assert (= (and start!733154 (is-ElementMatch!20188 r2!3249)) b!7606272))

(assert (= (and start!733154 (is-Concat!29033 r2!3249)) b!7606280))

(assert (= (and start!733154 (is-Star!20188 r2!3249)) b!7606274))

(assert (= (and start!733154 (is-Union!20188 r2!3249)) b!7606278))

(assert (= (and start!733154 (is-Cons!72947 s!10235)) b!7606279))

(declare-fun m!8146854 () Bool)

(assert (=> b!7606284 m!8146854))

(declare-fun m!8146856 () Bool)

(assert (=> b!7606270 m!8146856))

(assert (=> b!7606282 m!8146856))

(declare-fun m!8146858 () Bool)

(assert (=> b!7606275 m!8146858))

(declare-fun m!8146860 () Bool)

(assert (=> b!7606281 m!8146860))

(declare-fun m!8146862 () Bool)

(assert (=> start!733154 m!8146862))

(declare-fun m!8146864 () Bool)

(assert (=> b!7606283 m!8146864))

(declare-fun m!8146866 () Bool)

(assert (=> b!7606283 m!8146866))

(declare-fun m!8146868 () Bool)

(assert (=> b!7606283 m!8146868))

(declare-fun m!8146870 () Bool)

(assert (=> b!7606283 m!8146870))

(declare-fun m!8146872 () Bool)

(assert (=> b!7606283 m!8146872))

(declare-fun m!8146874 () Bool)

(assert (=> b!7606283 m!8146874))

(declare-fun m!8146876 () Bool)

(assert (=> b!7606283 m!8146876))

(declare-fun m!8146878 () Bool)

(assert (=> b!7606283 m!8146878))

(push 1)

(assert tp_is_empty!50731)

(assert (not b!7606281))

(assert (not b!7606274))

(assert (not b!7606273))

(assert (not b!7606277))

(assert (not start!733154))

(assert (not b!7606283))

(assert (not b!7606284))

(assert (not b!7606279))

(assert (not b!7606278))

(assert (not b!7606280))

(assert (not b!7606275))

(assert (not b!7606285))

(assert (not b!7606270))

(assert (not b!7606282))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2321860 () Bool)

(assert (=> d!2321860 (Exists!4416 lambda!468058)))

(declare-fun lt!2654891 () Unit!167256)

(declare-fun choose!58730 (tuple2!69086 Int) Unit!167256)

(assert (=> d!2321860 (= lt!2654891 (choose!58730 (tuple2!69087 (_1!37846 lt!2654868) (_2!37846 lt!2654868)) lambda!468058))))

(declare-fun dynLambda!29911 (Int tuple2!69086) Bool)

(assert (=> d!2321860 (dynLambda!29911 lambda!468058 (tuple2!69087 (_1!37846 lt!2654868) (_2!37846 lt!2654868)))))

(assert (=> d!2321860 (= (ExistsThe!39 (tuple2!69087 (_1!37846 lt!2654868) (_2!37846 lt!2654868)) lambda!468058) lt!2654891)))

(declare-fun b_lambda!288971 () Bool)

(assert (=> (not b_lambda!288971) (not d!2321860)))

(declare-fun bs!1942711 () Bool)

(assert (= bs!1942711 d!2321860))

(assert (=> bs!1942711 m!8146856))

(declare-fun m!8146910 () Bool)

(assert (=> bs!1942711 m!8146910))

(declare-fun m!8146912 () Bool)

(assert (=> bs!1942711 m!8146912))

(assert (=> b!7606281 d!2321860))

(declare-fun d!2321862 () Bool)

(declare-fun choose!58731 (Int) Bool)

(assert (=> d!2321862 (= (Exists!4416 lambda!468058) (choose!58731 lambda!468058))))

(declare-fun bs!1942712 () Bool)

(assert (= bs!1942712 d!2321862))

(declare-fun m!8146914 () Bool)

(assert (=> bs!1942712 m!8146914))

(assert (=> b!7606270 d!2321862))

(declare-fun d!2321864 () Bool)

(assert (=> d!2321864 (= (Exists!4416 lambda!468059) (choose!58731 lambda!468059))))

(declare-fun bs!1942713 () Bool)

(assert (= bs!1942713 d!2321864))

(declare-fun m!8146916 () Bool)

(assert (=> bs!1942713 m!8146916))

(assert (=> b!7606275 d!2321864))

(declare-fun b!7606398 () Bool)

(declare-fun e!4524495 () Bool)

(declare-fun call!698369 () Bool)

(assert (=> b!7606398 (= e!4524495 call!698369)))

(declare-fun b!7606399 () Bool)

(declare-fun e!4524497 () Bool)

(declare-fun e!4524493 () Bool)

(assert (=> b!7606399 (= e!4524497 e!4524493)))

(declare-fun res!3045722 () Bool)

(declare-fun nullable!8817 (Regex!20188) Bool)

(assert (=> b!7606399 (= res!3045722 (not (nullable!8817 (reg!20517 r1!3349))))))

(assert (=> b!7606399 (=> (not res!3045722) (not e!4524493))))

(declare-fun b!7606400 () Bool)

(declare-fun e!4524496 () Bool)

(declare-fun call!698370 () Bool)

(assert (=> b!7606400 (= e!4524496 call!698370)))

(declare-fun bm!698364 () Bool)

(declare-fun call!698371 () Bool)

(assert (=> bm!698364 (= call!698369 call!698371)))

(declare-fun c!1402778 () Bool)

(declare-fun bm!698365 () Bool)

(declare-fun c!1402777 () Bool)

(assert (=> bm!698365 (= call!698371 (validRegex!10616 (ite c!1402777 (reg!20517 r1!3349) (ite c!1402778 (regOne!40889 r1!3349) (regTwo!40888 r1!3349)))))))

(declare-fun b!7606401 () Bool)

(declare-fun e!4524498 () Bool)

(assert (=> b!7606401 (= e!4524498 e!4524497)))

(assert (=> b!7606401 (= c!1402777 (is-Star!20188 r1!3349))))

(declare-fun b!7606402 () Bool)

(declare-fun res!3045723 () Bool)

(declare-fun e!4524494 () Bool)

(assert (=> b!7606402 (=> res!3045723 e!4524494)))

(assert (=> b!7606402 (= res!3045723 (not (is-Concat!29033 r1!3349)))))

(declare-fun e!4524492 () Bool)

(assert (=> b!7606402 (= e!4524492 e!4524494)))

(declare-fun b!7606403 () Bool)

(assert (=> b!7606403 (= e!4524493 call!698371)))

(declare-fun b!7606404 () Bool)

(assert (=> b!7606404 (= e!4524497 e!4524492)))

(assert (=> b!7606404 (= c!1402778 (is-Union!20188 r1!3349))))

(declare-fun bm!698366 () Bool)

(assert (=> bm!698366 (= call!698370 (validRegex!10616 (ite c!1402778 (regTwo!40889 r1!3349) (regOne!40888 r1!3349))))))

(declare-fun d!2321866 () Bool)

(declare-fun res!3045724 () Bool)

(assert (=> d!2321866 (=> res!3045724 e!4524498)))

(assert (=> d!2321866 (= res!3045724 (is-ElementMatch!20188 r1!3349))))

(assert (=> d!2321866 (= (validRegex!10616 r1!3349) e!4524498)))

(declare-fun b!7606405 () Bool)

(assert (=> b!7606405 (= e!4524494 e!4524495)))

(declare-fun res!3045721 () Bool)

(assert (=> b!7606405 (=> (not res!3045721) (not e!4524495))))

(assert (=> b!7606405 (= res!3045721 call!698370)))

(declare-fun b!7606406 () Bool)

(declare-fun res!3045725 () Bool)

(assert (=> b!7606406 (=> (not res!3045725) (not e!4524496))))

(assert (=> b!7606406 (= res!3045725 call!698369)))

(assert (=> b!7606406 (= e!4524492 e!4524496)))

(assert (= (and d!2321866 (not res!3045724)) b!7606401))

(assert (= (and b!7606401 c!1402777) b!7606399))

(assert (= (and b!7606401 (not c!1402777)) b!7606404))

(assert (= (and b!7606399 res!3045722) b!7606403))

(assert (= (and b!7606404 c!1402778) b!7606406))

(assert (= (and b!7606404 (not c!1402778)) b!7606402))

(assert (= (and b!7606406 res!3045725) b!7606400))

(assert (= (and b!7606402 (not res!3045723)) b!7606405))

(assert (= (and b!7606405 res!3045721) b!7606398))

(assert (= (or b!7606400 b!7606405) bm!698366))

(assert (= (or b!7606406 b!7606398) bm!698364))

(assert (= (or b!7606403 bm!698364) bm!698365))

(declare-fun m!8146918 () Bool)

(assert (=> b!7606399 m!8146918))

(declare-fun m!8146920 () Bool)

(assert (=> bm!698365 m!8146920))

(declare-fun m!8146922 () Bool)

(assert (=> bm!698366 m!8146922))

(assert (=> start!733154 d!2321866))

(declare-fun b!7606416 () Bool)

(declare-fun e!4524509 () Bool)

(declare-fun call!698375 () Bool)

(assert (=> b!7606416 (= e!4524509 call!698375)))

(declare-fun b!7606417 () Bool)

(declare-fun e!4524511 () Bool)

(declare-fun e!4524507 () Bool)

(assert (=> b!7606417 (= e!4524511 e!4524507)))

(declare-fun res!3045732 () Bool)

(assert (=> b!7606417 (= res!3045732 (not (nullable!8817 (reg!20517 r2!3249))))))

(assert (=> b!7606417 (=> (not res!3045732) (not e!4524507))))

(declare-fun b!7606418 () Bool)

(declare-fun e!4524510 () Bool)

(declare-fun call!698376 () Bool)

(assert (=> b!7606418 (= e!4524510 call!698376)))

(declare-fun bm!698370 () Bool)

(declare-fun call!698377 () Bool)

(assert (=> bm!698370 (= call!698375 call!698377)))

(declare-fun c!1402782 () Bool)

(declare-fun c!1402781 () Bool)

(declare-fun bm!698371 () Bool)

(assert (=> bm!698371 (= call!698377 (validRegex!10616 (ite c!1402781 (reg!20517 r2!3249) (ite c!1402782 (regOne!40889 r2!3249) (regTwo!40888 r2!3249)))))))

(declare-fun b!7606419 () Bool)

(declare-fun e!4524512 () Bool)

(assert (=> b!7606419 (= e!4524512 e!4524511)))

(assert (=> b!7606419 (= c!1402781 (is-Star!20188 r2!3249))))

(declare-fun b!7606420 () Bool)

(declare-fun res!3045733 () Bool)

(declare-fun e!4524508 () Bool)

(assert (=> b!7606420 (=> res!3045733 e!4524508)))

(assert (=> b!7606420 (= res!3045733 (not (is-Concat!29033 r2!3249)))))

(declare-fun e!4524506 () Bool)

(assert (=> b!7606420 (= e!4524506 e!4524508)))

(declare-fun b!7606421 () Bool)

(assert (=> b!7606421 (= e!4524507 call!698377)))

(declare-fun b!7606422 () Bool)

(assert (=> b!7606422 (= e!4524511 e!4524506)))

(assert (=> b!7606422 (= c!1402782 (is-Union!20188 r2!3249))))

(declare-fun bm!698372 () Bool)

(assert (=> bm!698372 (= call!698376 (validRegex!10616 (ite c!1402782 (regTwo!40889 r2!3249) (regOne!40888 r2!3249))))))

(declare-fun d!2321868 () Bool)

(declare-fun res!3045734 () Bool)

(assert (=> d!2321868 (=> res!3045734 e!4524512)))

(assert (=> d!2321868 (= res!3045734 (is-ElementMatch!20188 r2!3249))))

(assert (=> d!2321868 (= (validRegex!10616 r2!3249) e!4524512)))

(declare-fun b!7606423 () Bool)

(assert (=> b!7606423 (= e!4524508 e!4524509)))

(declare-fun res!3045731 () Bool)

(assert (=> b!7606423 (=> (not res!3045731) (not e!4524509))))

(assert (=> b!7606423 (= res!3045731 call!698376)))

(declare-fun b!7606424 () Bool)

(declare-fun res!3045735 () Bool)

(assert (=> b!7606424 (=> (not res!3045735) (not e!4524510))))

(assert (=> b!7606424 (= res!3045735 call!698375)))

(assert (=> b!7606424 (= e!4524506 e!4524510)))

(assert (= (and d!2321868 (not res!3045734)) b!7606419))

(assert (= (and b!7606419 c!1402781) b!7606417))

(assert (= (and b!7606419 (not c!1402781)) b!7606422))

(assert (= (and b!7606417 res!3045732) b!7606421))

(assert (= (and b!7606422 c!1402782) b!7606424))

(assert (= (and b!7606422 (not c!1402782)) b!7606420))

(assert (= (and b!7606424 res!3045735) b!7606418))

(assert (= (and b!7606420 (not res!3045733)) b!7606423))

(assert (= (and b!7606423 res!3045731) b!7606416))

(assert (= (or b!7606418 b!7606423) bm!698372))

(assert (= (or b!7606424 b!7606416) bm!698370))

(assert (= (or b!7606421 bm!698370) bm!698371))

(declare-fun m!8146924 () Bool)

(assert (=> b!7606417 m!8146924))

(declare-fun m!8146926 () Bool)

(assert (=> bm!698371 m!8146926))

(declare-fun m!8146928 () Bool)

(assert (=> bm!698372 m!8146928))

(assert (=> b!7606284 d!2321868))

(declare-fun d!2321870 () Bool)

(assert (=> d!2321870 (= (matchR!9751 r1!3349 (_1!37846 lt!2654868)) (matchRSpec!4463 r1!3349 (_1!37846 lt!2654868)))))

(declare-fun lt!2654896 () Unit!167256)

(declare-fun choose!58732 (Regex!20188 List!73071) Unit!167256)

(assert (=> d!2321870 (= lt!2654896 (choose!58732 r1!3349 (_1!37846 lt!2654868)))))

(assert (=> d!2321870 (validRegex!10616 r1!3349)))

(assert (=> d!2321870 (= (mainMatchTheorem!4457 r1!3349 (_1!37846 lt!2654868)) lt!2654896)))

(declare-fun bs!1942714 () Bool)

(assert (= bs!1942714 d!2321870))

(assert (=> bs!1942714 m!8146874))

(assert (=> bs!1942714 m!8146872))

(declare-fun m!8146936 () Bool)

(assert (=> bs!1942714 m!8146936))

(assert (=> bs!1942714 m!8146862))

(assert (=> b!7606283 d!2321870))

(declare-fun b!7606466 () Bool)

(declare-fun res!3045762 () Bool)

(declare-fun e!4524539 () Bool)

(assert (=> b!7606466 (=> res!3045762 e!4524539)))

(declare-fun e!4524540 () Bool)

(assert (=> b!7606466 (= res!3045762 e!4524540)))

(declare-fun res!3045757 () Bool)

(assert (=> b!7606466 (=> (not res!3045757) (not e!4524540))))

(declare-fun lt!2654902 () Bool)

(assert (=> b!7606466 (= res!3045757 lt!2654902)))

(declare-fun b!7606467 () Bool)

(declare-fun res!3045765 () Bool)

(declare-fun e!4524542 () Bool)

(assert (=> b!7606467 (=> res!3045765 e!4524542)))

(declare-fun isEmpty!41578 (List!73071) Bool)

(declare-fun tail!15181 (List!73071) List!73071)

(assert (=> b!7606467 (= res!3045765 (not (isEmpty!41578 (tail!15181 (_1!37846 lt!2654868)))))))

(declare-fun b!7606468 () Bool)

(declare-fun e!4524538 () Bool)

(declare-fun derivativeStep!5841 (Regex!20188 C!40702) Regex!20188)

(declare-fun head!15641 (List!73071) C!40702)

(assert (=> b!7606468 (= e!4524538 (matchR!9751 (derivativeStep!5841 r1!3349 (head!15641 (_1!37846 lt!2654868))) (tail!15181 (_1!37846 lt!2654868))))))

(declare-fun b!7606469 () Bool)

(declare-fun e!4524544 () Bool)

(assert (=> b!7606469 (= e!4524544 (not lt!2654902))))

(declare-fun b!7606470 () Bool)

(declare-fun res!3045760 () Bool)

(assert (=> b!7606470 (=> (not res!3045760) (not e!4524540))))

(declare-fun call!698383 () Bool)

(assert (=> b!7606470 (= res!3045760 (not call!698383))))

(declare-fun b!7606471 () Bool)

(declare-fun e!4524543 () Bool)

(assert (=> b!7606471 (= e!4524543 e!4524544)))

(declare-fun c!1402795 () Bool)

(assert (=> b!7606471 (= c!1402795 (is-EmptyLang!20188 r1!3349))))

(declare-fun bm!698378 () Bool)

(assert (=> bm!698378 (= call!698383 (isEmpty!41578 (_1!37846 lt!2654868)))))

(declare-fun b!7606472 () Bool)

(assert (=> b!7606472 (= e!4524542 (not (= (head!15641 (_1!37846 lt!2654868)) (c!1402767 r1!3349))))))

(declare-fun b!7606473 () Bool)

(assert (=> b!7606473 (= e!4524543 (= lt!2654902 call!698383))))

(declare-fun d!2321874 () Bool)

(assert (=> d!2321874 e!4524543))

(declare-fun c!1402793 () Bool)

(assert (=> d!2321874 (= c!1402793 (is-EmptyExpr!20188 r1!3349))))

(assert (=> d!2321874 (= lt!2654902 e!4524538)))

(declare-fun c!1402794 () Bool)

(assert (=> d!2321874 (= c!1402794 (isEmpty!41578 (_1!37846 lt!2654868)))))

(assert (=> d!2321874 (validRegex!10616 r1!3349)))

(assert (=> d!2321874 (= (matchR!9751 r1!3349 (_1!37846 lt!2654868)) lt!2654902)))

(declare-fun b!7606474 () Bool)

(declare-fun res!3045761 () Bool)

(assert (=> b!7606474 (=> (not res!3045761) (not e!4524540))))

(assert (=> b!7606474 (= res!3045761 (isEmpty!41578 (tail!15181 (_1!37846 lt!2654868))))))

(declare-fun b!7606475 () Bool)

(declare-fun e!4524541 () Bool)

(assert (=> b!7606475 (= e!4524539 e!4524541)))

(declare-fun res!3045764 () Bool)

(assert (=> b!7606475 (=> (not res!3045764) (not e!4524541))))

(assert (=> b!7606475 (= res!3045764 (not lt!2654902))))

(declare-fun b!7606476 () Bool)

(assert (=> b!7606476 (= e!4524541 e!4524542)))

(declare-fun res!3045763 () Bool)

(assert (=> b!7606476 (=> res!3045763 e!4524542)))

(assert (=> b!7606476 (= res!3045763 call!698383)))

(declare-fun b!7606477 () Bool)

(assert (=> b!7606477 (= e!4524540 (= (head!15641 (_1!37846 lt!2654868)) (c!1402767 r1!3349)))))

(declare-fun b!7606478 () Bool)

(assert (=> b!7606478 (= e!4524538 (nullable!8817 r1!3349))))

(declare-fun b!7606479 () Bool)

(declare-fun res!3045766 () Bool)

(assert (=> b!7606479 (=> res!3045766 e!4524539)))

(assert (=> b!7606479 (= res!3045766 (not (is-ElementMatch!20188 r1!3349)))))

(assert (=> b!7606479 (= e!4524544 e!4524539)))

(assert (= (and d!2321874 c!1402794) b!7606478))

(assert (= (and d!2321874 (not c!1402794)) b!7606468))

(assert (= (and d!2321874 c!1402793) b!7606473))

(assert (= (and d!2321874 (not c!1402793)) b!7606471))

(assert (= (and b!7606471 c!1402795) b!7606469))

(assert (= (and b!7606471 (not c!1402795)) b!7606479))

(assert (= (and b!7606479 (not res!3045766)) b!7606466))

(assert (= (and b!7606466 res!3045757) b!7606470))

(assert (= (and b!7606470 res!3045760) b!7606474))

(assert (= (and b!7606474 res!3045761) b!7606477))

(assert (= (and b!7606466 (not res!3045762)) b!7606475))

(assert (= (and b!7606475 res!3045764) b!7606476))

(assert (= (and b!7606476 (not res!3045763)) b!7606467))

(assert (= (and b!7606467 (not res!3045765)) b!7606472))

(assert (= (or b!7606473 b!7606470 b!7606476) bm!698378))

(declare-fun m!8146948 () Bool)

(assert (=> b!7606478 m!8146948))

(declare-fun m!8146950 () Bool)

(assert (=> b!7606474 m!8146950))

(assert (=> b!7606474 m!8146950))

(declare-fun m!8146952 () Bool)

(assert (=> b!7606474 m!8146952))

(declare-fun m!8146954 () Bool)

(assert (=> b!7606472 m!8146954))

(declare-fun m!8146956 () Bool)

(assert (=> d!2321874 m!8146956))

(assert (=> d!2321874 m!8146862))

(assert (=> bm!698378 m!8146956))

(assert (=> b!7606477 m!8146954))

(assert (=> b!7606468 m!8146954))

(assert (=> b!7606468 m!8146954))

(declare-fun m!8146958 () Bool)

(assert (=> b!7606468 m!8146958))

(assert (=> b!7606468 m!8146950))

(assert (=> b!7606468 m!8146958))

(assert (=> b!7606468 m!8146950))

(declare-fun m!8146960 () Bool)

(assert (=> b!7606468 m!8146960))

(assert (=> b!7606467 m!8146950))

(assert (=> b!7606467 m!8146950))

(assert (=> b!7606467 m!8146952))

(assert (=> b!7606283 d!2321874))

(declare-fun d!2321880 () Bool)

(assert (=> d!2321880 (= (matchR!9751 r2!3249 (_2!37846 lt!2654868)) (matchRSpec!4463 r2!3249 (_2!37846 lt!2654868)))))

(declare-fun lt!2654903 () Unit!167256)

(assert (=> d!2321880 (= lt!2654903 (choose!58732 r2!3249 (_2!37846 lt!2654868)))))

(assert (=> d!2321880 (validRegex!10616 r2!3249)))

(assert (=> d!2321880 (= (mainMatchTheorem!4457 r2!3249 (_2!37846 lt!2654868)) lt!2654903)))

(declare-fun bs!1942716 () Bool)

(assert (= bs!1942716 d!2321880))

(assert (=> bs!1942716 m!8146876))

(assert (=> bs!1942716 m!8146878))

(declare-fun m!8146962 () Bool)

(assert (=> bs!1942716 m!8146962))

(assert (=> bs!1942716 m!8146854))

(assert (=> b!7606283 d!2321880))

(declare-fun d!2321882 () Bool)

(declare-fun lt!2654906 () tuple2!69086)

(assert (=> d!2321882 (dynLambda!29911 lambda!468059 lt!2654906)))

(declare-fun choose!58733 (Int) tuple2!69086)

(assert (=> d!2321882 (= lt!2654906 (choose!58733 lambda!468059))))

(assert (=> d!2321882 (Exists!4416 lambda!468059)))

(assert (=> d!2321882 (= (pickWitness!431 lambda!468059) lt!2654906)))

(declare-fun b_lambda!288975 () Bool)

(assert (=> (not b_lambda!288975) (not d!2321882)))

(declare-fun bs!1942717 () Bool)

(assert (= bs!1942717 d!2321882))

(declare-fun m!8146964 () Bool)

(assert (=> bs!1942717 m!8146964))

(declare-fun m!8146966 () Bool)

(assert (=> bs!1942717 m!8146966))

(assert (=> bs!1942717 m!8146858))

(assert (=> b!7606283 d!2321882))

(declare-fun b!7606498 () Bool)

(declare-fun res!3045776 () Bool)

(declare-fun e!4524551 () Bool)

(assert (=> b!7606498 (=> (not res!3045776) (not e!4524551))))

(declare-fun lt!2654910 () List!73071)

(declare-fun size!42523 (List!73071) Int)

(assert (=> b!7606498 (= res!3045776 (= (size!42523 lt!2654910) (+ (size!42523 (_1!37846 lt!2654868)) (size!42523 (_2!37846 lt!2654868)))))))

(declare-fun b!7606497 () Bool)

(declare-fun e!4524552 () List!73071)

(assert (=> b!7606497 (= e!4524552 (Cons!72947 (h!79395 (_1!37846 lt!2654868)) (++!17586 (t!387806 (_1!37846 lt!2654868)) (_2!37846 lt!2654868))))))

(declare-fun b!7606499 () Bool)

(assert (=> b!7606499 (= e!4524551 (or (not (= (_2!37846 lt!2654868) Nil!72947)) (= lt!2654910 (_1!37846 lt!2654868))))))

(declare-fun d!2321884 () Bool)

(assert (=> d!2321884 e!4524551))

(declare-fun res!3045775 () Bool)

(assert (=> d!2321884 (=> (not res!3045775) (not e!4524551))))

(declare-fun content!15430 (List!73071) (Set C!40702))

(assert (=> d!2321884 (= res!3045775 (= (content!15430 lt!2654910) (set.union (content!15430 (_1!37846 lt!2654868)) (content!15430 (_2!37846 lt!2654868)))))))

(assert (=> d!2321884 (= lt!2654910 e!4524552)))

(declare-fun c!1402799 () Bool)

(assert (=> d!2321884 (= c!1402799 (is-Nil!72947 (_1!37846 lt!2654868)))))

(assert (=> d!2321884 (= (++!17586 (_1!37846 lt!2654868) (_2!37846 lt!2654868)) lt!2654910)))

(declare-fun b!7606496 () Bool)

(assert (=> b!7606496 (= e!4524552 (_2!37846 lt!2654868))))

(assert (= (and d!2321884 c!1402799) b!7606496))

(assert (= (and d!2321884 (not c!1402799)) b!7606497))

(assert (= (and d!2321884 res!3045775) b!7606498))

(assert (= (and b!7606498 res!3045776) b!7606499))

(declare-fun m!8146982 () Bool)

(assert (=> b!7606498 m!8146982))

(declare-fun m!8146984 () Bool)

(assert (=> b!7606498 m!8146984))

(declare-fun m!8146986 () Bool)

(assert (=> b!7606498 m!8146986))

(declare-fun m!8146988 () Bool)

(assert (=> b!7606497 m!8146988))

(declare-fun m!8146990 () Bool)

(assert (=> d!2321884 m!8146990))

(declare-fun m!8146992 () Bool)

(assert (=> d!2321884 m!8146992))

(declare-fun m!8146994 () Bool)

(assert (=> d!2321884 m!8146994))

(assert (=> b!7606283 d!2321884))

(declare-fun bs!1942719 () Bool)

(declare-fun b!7606542 () Bool)

(assert (= bs!1942719 (and b!7606542 b!7606282)))

(declare-fun lambda!468076 () Int)

(assert (=> bs!1942719 (not (= lambda!468076 lambda!468058))))

(declare-fun bs!1942720 () Bool)

(assert (= bs!1942720 (and b!7606542 b!7606275)))

(assert (=> bs!1942720 (not (= lambda!468076 lambda!468059))))

(assert (=> b!7606542 true))

(assert (=> b!7606542 true))

(declare-fun bs!1942721 () Bool)

(declare-fun b!7606536 () Bool)

(assert (= bs!1942721 (and b!7606536 b!7606282)))

(declare-fun lambda!468077 () Int)

(assert (=> bs!1942721 (not (= lambda!468077 lambda!468058))))

(declare-fun bs!1942722 () Bool)

(assert (= bs!1942722 (and b!7606536 b!7606275)))

(assert (=> bs!1942722 (= (and (= (_1!37846 lt!2654868) s!10235) (= (regOne!40888 r1!3349) r1!3349) (= (regTwo!40888 r1!3349) r2!3249)) (= lambda!468077 lambda!468059))))

(declare-fun bs!1942723 () Bool)

(assert (= bs!1942723 (and b!7606536 b!7606542)))

(assert (=> bs!1942723 (not (= lambda!468077 lambda!468076))))

(assert (=> b!7606536 true))

(assert (=> b!7606536 true))

(declare-fun b!7606532 () Bool)

(declare-fun e!4524573 () Bool)

(declare-fun e!4524576 () Bool)

(assert (=> b!7606532 (= e!4524573 e!4524576)))

(declare-fun res!3045793 () Bool)

(assert (=> b!7606532 (= res!3045793 (matchRSpec!4463 (regOne!40889 r1!3349) (_1!37846 lt!2654868)))))

(assert (=> b!7606532 (=> res!3045793 e!4524576)))

(declare-fun b!7606533 () Bool)

(declare-fun res!3045794 () Bool)

(declare-fun e!4524574 () Bool)

(assert (=> b!7606533 (=> res!3045794 e!4524574)))

(declare-fun call!698389 () Bool)

(assert (=> b!7606533 (= res!3045794 call!698389)))

(declare-fun e!4524577 () Bool)

(assert (=> b!7606533 (= e!4524577 e!4524574)))

(declare-fun bm!698383 () Bool)

(assert (=> bm!698383 (= call!698389 (isEmpty!41578 (_1!37846 lt!2654868)))))

(declare-fun b!7606534 () Bool)

(declare-fun c!1402808 () Bool)

(assert (=> b!7606534 (= c!1402808 (is-ElementMatch!20188 r1!3349))))

(declare-fun e!4524571 () Bool)

(declare-fun e!4524575 () Bool)

(assert (=> b!7606534 (= e!4524571 e!4524575)))

(declare-fun d!2321888 () Bool)

(declare-fun c!1402810 () Bool)

(assert (=> d!2321888 (= c!1402810 (is-EmptyExpr!20188 r1!3349))))

(declare-fun e!4524572 () Bool)

(assert (=> d!2321888 (= (matchRSpec!4463 r1!3349 (_1!37846 lt!2654868)) e!4524572)))

(declare-fun b!7606535 () Bool)

(assert (=> b!7606535 (= e!4524573 e!4524577)))

(declare-fun c!1402811 () Bool)

(assert (=> b!7606535 (= c!1402811 (is-Star!20188 r1!3349))))

(declare-fun call!698388 () Bool)

(assert (=> b!7606536 (= e!4524577 call!698388)))

(declare-fun b!7606537 () Bool)

(assert (=> b!7606537 (= e!4524576 (matchRSpec!4463 (regTwo!40889 r1!3349) (_1!37846 lt!2654868)))))

(declare-fun bm!698384 () Bool)

(assert (=> bm!698384 (= call!698388 (Exists!4416 (ite c!1402811 lambda!468076 lambda!468077)))))

(declare-fun b!7606538 () Bool)

(assert (=> b!7606538 (= e!4524572 e!4524571)))

(declare-fun res!3045795 () Bool)

(assert (=> b!7606538 (= res!3045795 (not (is-EmptyLang!20188 r1!3349)))))

(assert (=> b!7606538 (=> (not res!3045795) (not e!4524571))))

(declare-fun b!7606539 () Bool)

(declare-fun c!1402809 () Bool)

(assert (=> b!7606539 (= c!1402809 (is-Union!20188 r1!3349))))

(assert (=> b!7606539 (= e!4524575 e!4524573)))

(declare-fun b!7606540 () Bool)

(assert (=> b!7606540 (= e!4524572 call!698389)))

(declare-fun b!7606541 () Bool)

(assert (=> b!7606541 (= e!4524575 (= (_1!37846 lt!2654868) (Cons!72947 (c!1402767 r1!3349) Nil!72947)))))

(assert (=> b!7606542 (= e!4524574 call!698388)))

(assert (= (and d!2321888 c!1402810) b!7606540))

(assert (= (and d!2321888 (not c!1402810)) b!7606538))

(assert (= (and b!7606538 res!3045795) b!7606534))

(assert (= (and b!7606534 c!1402808) b!7606541))

(assert (= (and b!7606534 (not c!1402808)) b!7606539))

(assert (= (and b!7606539 c!1402809) b!7606532))

(assert (= (and b!7606539 (not c!1402809)) b!7606535))

(assert (= (and b!7606532 (not res!3045793)) b!7606537))

(assert (= (and b!7606535 c!1402811) b!7606533))

(assert (= (and b!7606535 (not c!1402811)) b!7606536))

(assert (= (and b!7606533 (not res!3045794)) b!7606542))

(assert (= (or b!7606542 b!7606536) bm!698384))

(assert (= (or b!7606540 b!7606533) bm!698383))

(declare-fun m!8146998 () Bool)

(assert (=> b!7606532 m!8146998))

(assert (=> bm!698383 m!8146956))

(declare-fun m!8147000 () Bool)

(assert (=> b!7606537 m!8147000))

(declare-fun m!8147002 () Bool)

(assert (=> bm!698384 m!8147002))

(assert (=> b!7606283 d!2321888))

(declare-fun b!7606543 () Bool)

(declare-fun res!3045799 () Bool)

(declare-fun e!4524579 () Bool)

(assert (=> b!7606543 (=> res!3045799 e!4524579)))

(declare-fun e!4524580 () Bool)

(assert (=> b!7606543 (= res!3045799 e!4524580)))

(declare-fun res!3045796 () Bool)

(assert (=> b!7606543 (=> (not res!3045796) (not e!4524580))))

(declare-fun lt!2654914 () Bool)

(assert (=> b!7606543 (= res!3045796 lt!2654914)))

(declare-fun b!7606544 () Bool)

(declare-fun res!3045802 () Bool)

(declare-fun e!4524582 () Bool)

(assert (=> b!7606544 (=> res!3045802 e!4524582)))

(assert (=> b!7606544 (= res!3045802 (not (isEmpty!41578 (tail!15181 (_2!37846 lt!2654868)))))))

(declare-fun b!7606545 () Bool)

(declare-fun e!4524578 () Bool)

(assert (=> b!7606545 (= e!4524578 (matchR!9751 (derivativeStep!5841 r2!3249 (head!15641 (_2!37846 lt!2654868))) (tail!15181 (_2!37846 lt!2654868))))))

(declare-fun b!7606546 () Bool)

(declare-fun e!4524584 () Bool)

(assert (=> b!7606546 (= e!4524584 (not lt!2654914))))

(declare-fun b!7606547 () Bool)

(declare-fun res!3045797 () Bool)

(assert (=> b!7606547 (=> (not res!3045797) (not e!4524580))))

(declare-fun call!698390 () Bool)

(assert (=> b!7606547 (= res!3045797 (not call!698390))))

(declare-fun b!7606548 () Bool)

(declare-fun e!4524583 () Bool)

(assert (=> b!7606548 (= e!4524583 e!4524584)))

(declare-fun c!1402814 () Bool)

(assert (=> b!7606548 (= c!1402814 (is-EmptyLang!20188 r2!3249))))

(declare-fun bm!698385 () Bool)

(assert (=> bm!698385 (= call!698390 (isEmpty!41578 (_2!37846 lt!2654868)))))

(declare-fun b!7606549 () Bool)

(assert (=> b!7606549 (= e!4524582 (not (= (head!15641 (_2!37846 lt!2654868)) (c!1402767 r2!3249))))))

(declare-fun b!7606550 () Bool)

(assert (=> b!7606550 (= e!4524583 (= lt!2654914 call!698390))))

(declare-fun d!2321892 () Bool)

(assert (=> d!2321892 e!4524583))

(declare-fun c!1402812 () Bool)

(assert (=> d!2321892 (= c!1402812 (is-EmptyExpr!20188 r2!3249))))

(assert (=> d!2321892 (= lt!2654914 e!4524578)))

(declare-fun c!1402813 () Bool)

(assert (=> d!2321892 (= c!1402813 (isEmpty!41578 (_2!37846 lt!2654868)))))

(assert (=> d!2321892 (validRegex!10616 r2!3249)))

(assert (=> d!2321892 (= (matchR!9751 r2!3249 (_2!37846 lt!2654868)) lt!2654914)))

(declare-fun b!7606551 () Bool)

(declare-fun res!3045798 () Bool)

(assert (=> b!7606551 (=> (not res!3045798) (not e!4524580))))

(assert (=> b!7606551 (= res!3045798 (isEmpty!41578 (tail!15181 (_2!37846 lt!2654868))))))

(declare-fun b!7606552 () Bool)

(declare-fun e!4524581 () Bool)

(assert (=> b!7606552 (= e!4524579 e!4524581)))

(declare-fun res!3045801 () Bool)

(assert (=> b!7606552 (=> (not res!3045801) (not e!4524581))))

(assert (=> b!7606552 (= res!3045801 (not lt!2654914))))

(declare-fun b!7606553 () Bool)

(assert (=> b!7606553 (= e!4524581 e!4524582)))

(declare-fun res!3045800 () Bool)

(assert (=> b!7606553 (=> res!3045800 e!4524582)))

(assert (=> b!7606553 (= res!3045800 call!698390)))

(declare-fun b!7606554 () Bool)

(assert (=> b!7606554 (= e!4524580 (= (head!15641 (_2!37846 lt!2654868)) (c!1402767 r2!3249)))))

(declare-fun b!7606555 () Bool)

(assert (=> b!7606555 (= e!4524578 (nullable!8817 r2!3249))))

(declare-fun b!7606556 () Bool)

(declare-fun res!3045803 () Bool)

(assert (=> b!7606556 (=> res!3045803 e!4524579)))

(assert (=> b!7606556 (= res!3045803 (not (is-ElementMatch!20188 r2!3249)))))

(assert (=> b!7606556 (= e!4524584 e!4524579)))

(assert (= (and d!2321892 c!1402813) b!7606555))

(assert (= (and d!2321892 (not c!1402813)) b!7606545))

(assert (= (and d!2321892 c!1402812) b!7606550))

(assert (= (and d!2321892 (not c!1402812)) b!7606548))

(assert (= (and b!7606548 c!1402814) b!7606546))

(assert (= (and b!7606548 (not c!1402814)) b!7606556))

(assert (= (and b!7606556 (not res!3045803)) b!7606543))

(assert (= (and b!7606543 res!3045796) b!7606547))

(assert (= (and b!7606547 res!3045797) b!7606551))

(assert (= (and b!7606551 res!3045798) b!7606554))

(assert (= (and b!7606543 (not res!3045799)) b!7606552))

(assert (= (and b!7606552 res!3045801) b!7606553))

(assert (= (and b!7606553 (not res!3045800)) b!7606544))

(assert (= (and b!7606544 (not res!3045802)) b!7606549))

(assert (= (or b!7606550 b!7606547 b!7606553) bm!698385))

(declare-fun m!8147004 () Bool)

(assert (=> b!7606555 m!8147004))

(declare-fun m!8147006 () Bool)

(assert (=> b!7606551 m!8147006))

(assert (=> b!7606551 m!8147006))

(declare-fun m!8147008 () Bool)

(assert (=> b!7606551 m!8147008))

(declare-fun m!8147010 () Bool)

(assert (=> b!7606549 m!8147010))

(declare-fun m!8147012 () Bool)

(assert (=> d!2321892 m!8147012))

(assert (=> d!2321892 m!8146854))

(assert (=> bm!698385 m!8147012))

(assert (=> b!7606554 m!8147010))

(assert (=> b!7606545 m!8147010))

(assert (=> b!7606545 m!8147010))

(declare-fun m!8147014 () Bool)

(assert (=> b!7606545 m!8147014))

(assert (=> b!7606545 m!8147006))

(assert (=> b!7606545 m!8147014))

(assert (=> b!7606545 m!8147006))

(declare-fun m!8147016 () Bool)

(assert (=> b!7606545 m!8147016))

(assert (=> b!7606544 m!8147006))

(assert (=> b!7606544 m!8147006))

(assert (=> b!7606544 m!8147008))

(assert (=> b!7606283 d!2321892))

(declare-fun bs!1942724 () Bool)

(declare-fun b!7606571 () Bool)

(assert (= bs!1942724 (and b!7606571 b!7606282)))

(declare-fun lambda!468078 () Int)

(assert (=> bs!1942724 (not (= lambda!468078 lambda!468058))))

(declare-fun bs!1942725 () Bool)

(assert (= bs!1942725 (and b!7606571 b!7606275)))

(assert (=> bs!1942725 (not (= lambda!468078 lambda!468059))))

(declare-fun bs!1942726 () Bool)

(assert (= bs!1942726 (and b!7606571 b!7606542)))

(assert (=> bs!1942726 (= (and (= (_2!37846 lt!2654868) (_1!37846 lt!2654868)) (= (reg!20517 r2!3249) (reg!20517 r1!3349)) (= r2!3249 r1!3349)) (= lambda!468078 lambda!468076))))

(declare-fun bs!1942727 () Bool)

(assert (= bs!1942727 (and b!7606571 b!7606536)))

(assert (=> bs!1942727 (not (= lambda!468078 lambda!468077))))

(assert (=> b!7606571 true))

(assert (=> b!7606571 true))

(declare-fun bs!1942728 () Bool)

(declare-fun b!7606565 () Bool)

(assert (= bs!1942728 (and b!7606565 b!7606542)))

(declare-fun lambda!468079 () Int)

(assert (=> bs!1942728 (not (= lambda!468079 lambda!468076))))

(declare-fun bs!1942729 () Bool)

(assert (= bs!1942729 (and b!7606565 b!7606536)))

(assert (=> bs!1942729 (= (and (= (_2!37846 lt!2654868) (_1!37846 lt!2654868)) (= (regOne!40888 r2!3249) (regOne!40888 r1!3349)) (= (regTwo!40888 r2!3249) (regTwo!40888 r1!3349))) (= lambda!468079 lambda!468077))))

(declare-fun bs!1942730 () Bool)

(assert (= bs!1942730 (and b!7606565 b!7606282)))

(assert (=> bs!1942730 (not (= lambda!468079 lambda!468058))))

(declare-fun bs!1942731 () Bool)

(assert (= bs!1942731 (and b!7606565 b!7606275)))

(assert (=> bs!1942731 (= (and (= (_2!37846 lt!2654868) s!10235) (= (regOne!40888 r2!3249) r1!3349) (= (regTwo!40888 r2!3249) r2!3249)) (= lambda!468079 lambda!468059))))

(declare-fun bs!1942732 () Bool)

(assert (= bs!1942732 (and b!7606565 b!7606571)))

(assert (=> bs!1942732 (not (= lambda!468079 lambda!468078))))

(assert (=> b!7606565 true))

(assert (=> b!7606565 true))

(declare-fun b!7606561 () Bool)

(declare-fun e!4524589 () Bool)

(declare-fun e!4524592 () Bool)

(assert (=> b!7606561 (= e!4524589 e!4524592)))

(declare-fun res!3045804 () Bool)

(assert (=> b!7606561 (= res!3045804 (matchRSpec!4463 (regOne!40889 r2!3249) (_2!37846 lt!2654868)))))

(assert (=> b!7606561 (=> res!3045804 e!4524592)))

(declare-fun b!7606562 () Bool)

(declare-fun res!3045805 () Bool)

(declare-fun e!4524590 () Bool)

(assert (=> b!7606562 (=> res!3045805 e!4524590)))

(declare-fun call!698392 () Bool)

(assert (=> b!7606562 (= res!3045805 call!698392)))

(declare-fun e!4524593 () Bool)

(assert (=> b!7606562 (= e!4524593 e!4524590)))

(declare-fun bm!698386 () Bool)

(assert (=> bm!698386 (= call!698392 (isEmpty!41578 (_2!37846 lt!2654868)))))

(declare-fun b!7606563 () Bool)

(declare-fun c!1402817 () Bool)

(assert (=> b!7606563 (= c!1402817 (is-ElementMatch!20188 r2!3249))))

(declare-fun e!4524587 () Bool)

(declare-fun e!4524591 () Bool)

(assert (=> b!7606563 (= e!4524587 e!4524591)))

(declare-fun d!2321894 () Bool)

(declare-fun c!1402819 () Bool)

(assert (=> d!2321894 (= c!1402819 (is-EmptyExpr!20188 r2!3249))))

(declare-fun e!4524588 () Bool)

(assert (=> d!2321894 (= (matchRSpec!4463 r2!3249 (_2!37846 lt!2654868)) e!4524588)))

(declare-fun b!7606564 () Bool)

(assert (=> b!7606564 (= e!4524589 e!4524593)))

(declare-fun c!1402820 () Bool)

(assert (=> b!7606564 (= c!1402820 (is-Star!20188 r2!3249))))

(declare-fun call!698391 () Bool)

(assert (=> b!7606565 (= e!4524593 call!698391)))

(declare-fun b!7606566 () Bool)

(assert (=> b!7606566 (= e!4524592 (matchRSpec!4463 (regTwo!40889 r2!3249) (_2!37846 lt!2654868)))))

(declare-fun bm!698387 () Bool)

(assert (=> bm!698387 (= call!698391 (Exists!4416 (ite c!1402820 lambda!468078 lambda!468079)))))

(declare-fun b!7606567 () Bool)

(assert (=> b!7606567 (= e!4524588 e!4524587)))

(declare-fun res!3045806 () Bool)

(assert (=> b!7606567 (= res!3045806 (not (is-EmptyLang!20188 r2!3249)))))

(assert (=> b!7606567 (=> (not res!3045806) (not e!4524587))))

(declare-fun b!7606568 () Bool)

(declare-fun c!1402818 () Bool)

(assert (=> b!7606568 (= c!1402818 (is-Union!20188 r2!3249))))

(assert (=> b!7606568 (= e!4524591 e!4524589)))

(declare-fun b!7606569 () Bool)

(assert (=> b!7606569 (= e!4524588 call!698392)))

(declare-fun b!7606570 () Bool)

(assert (=> b!7606570 (= e!4524591 (= (_2!37846 lt!2654868) (Cons!72947 (c!1402767 r2!3249) Nil!72947)))))

(assert (=> b!7606571 (= e!4524590 call!698391)))

(assert (= (and d!2321894 c!1402819) b!7606569))

(assert (= (and d!2321894 (not c!1402819)) b!7606567))

(assert (= (and b!7606567 res!3045806) b!7606563))

(assert (= (and b!7606563 c!1402817) b!7606570))

(assert (= (and b!7606563 (not c!1402817)) b!7606568))

(assert (= (and b!7606568 c!1402818) b!7606561))

(assert (= (and b!7606568 (not c!1402818)) b!7606564))

(assert (= (and b!7606561 (not res!3045804)) b!7606566))

(assert (= (and b!7606564 c!1402820) b!7606562))

(assert (= (and b!7606564 (not c!1402820)) b!7606565))

(assert (= (and b!7606562 (not res!3045805)) b!7606571))

(assert (= (or b!7606571 b!7606565) bm!698387))

(assert (= (or b!7606569 b!7606562) bm!698386))

(declare-fun m!8147018 () Bool)

(assert (=> b!7606561 m!8147018))

(assert (=> bm!698386 m!8147012))

(declare-fun m!8147020 () Bool)

(assert (=> b!7606566 m!8147020))

(declare-fun m!8147022 () Bool)

(assert (=> bm!698387 m!8147022))

(assert (=> b!7606283 d!2321894))

(assert (=> b!7606282 d!2321862))

(declare-fun b!7606607 () Bool)

(declare-fun e!4524608 () Bool)

(declare-fun tp!2218441 () Bool)

(declare-fun tp!2218440 () Bool)

(assert (=> b!7606607 (= e!4524608 (and tp!2218441 tp!2218440))))

(declare-fun b!7606609 () Bool)

(declare-fun tp!2218438 () Bool)

(declare-fun tp!2218442 () Bool)

(assert (=> b!7606609 (= e!4524608 (and tp!2218438 tp!2218442))))

(declare-fun b!7606608 () Bool)

(declare-fun tp!2218439 () Bool)

(assert (=> b!7606608 (= e!4524608 tp!2218439)))

(declare-fun b!7606606 () Bool)

(assert (=> b!7606606 (= e!4524608 tp_is_empty!50731)))

(assert (=> b!7606280 (= tp!2218387 e!4524608)))

(assert (= (and b!7606280 (is-ElementMatch!20188 (regOne!40888 r2!3249))) b!7606606))

(assert (= (and b!7606280 (is-Concat!29033 (regOne!40888 r2!3249))) b!7606607))

(assert (= (and b!7606280 (is-Star!20188 (regOne!40888 r2!3249))) b!7606608))

(assert (= (and b!7606280 (is-Union!20188 (regOne!40888 r2!3249))) b!7606609))

(declare-fun b!7606611 () Bool)

(declare-fun e!4524609 () Bool)

(declare-fun tp!2218446 () Bool)

(declare-fun tp!2218445 () Bool)

(assert (=> b!7606611 (= e!4524609 (and tp!2218446 tp!2218445))))

(declare-fun b!7606613 () Bool)

(declare-fun tp!2218443 () Bool)

(declare-fun tp!2218447 () Bool)

(assert (=> b!7606613 (= e!4524609 (and tp!2218443 tp!2218447))))

(declare-fun b!7606612 () Bool)

(declare-fun tp!2218444 () Bool)

(assert (=> b!7606612 (= e!4524609 tp!2218444)))

(declare-fun b!7606610 () Bool)

(assert (=> b!7606610 (= e!4524609 tp_is_empty!50731)))

(assert (=> b!7606280 (= tp!2218392 e!4524609)))

(assert (= (and b!7606280 (is-ElementMatch!20188 (regTwo!40888 r2!3249))) b!7606610))

(assert (= (and b!7606280 (is-Concat!29033 (regTwo!40888 r2!3249))) b!7606611))

(assert (= (and b!7606280 (is-Star!20188 (regTwo!40888 r2!3249))) b!7606612))

(assert (= (and b!7606280 (is-Union!20188 (regTwo!40888 r2!3249))) b!7606613))

(declare-fun b!7606615 () Bool)

(declare-fun e!4524610 () Bool)

(declare-fun tp!2218451 () Bool)

(declare-fun tp!2218450 () Bool)

(assert (=> b!7606615 (= e!4524610 (and tp!2218451 tp!2218450))))

(declare-fun b!7606617 () Bool)

(declare-fun tp!2218448 () Bool)

(declare-fun tp!2218452 () Bool)

(assert (=> b!7606617 (= e!4524610 (and tp!2218448 tp!2218452))))

(declare-fun b!7606616 () Bool)

(declare-fun tp!2218449 () Bool)

(assert (=> b!7606616 (= e!4524610 tp!2218449)))

(declare-fun b!7606614 () Bool)

(assert (=> b!7606614 (= e!4524610 tp_is_empty!50731)))

(assert (=> b!7606285 (= tp!2218389 e!4524610)))

(assert (= (and b!7606285 (is-ElementMatch!20188 (regOne!40889 r1!3349))) b!7606614))

(assert (= (and b!7606285 (is-Concat!29033 (regOne!40889 r1!3349))) b!7606615))

(assert (= (and b!7606285 (is-Star!20188 (regOne!40889 r1!3349))) b!7606616))

(assert (= (and b!7606285 (is-Union!20188 (regOne!40889 r1!3349))) b!7606617))

(declare-fun b!7606619 () Bool)

(declare-fun e!4524611 () Bool)

(declare-fun tp!2218456 () Bool)

(declare-fun tp!2218455 () Bool)

(assert (=> b!7606619 (= e!4524611 (and tp!2218456 tp!2218455))))

(declare-fun b!7606621 () Bool)

(declare-fun tp!2218453 () Bool)

(declare-fun tp!2218457 () Bool)

(assert (=> b!7606621 (= e!4524611 (and tp!2218453 tp!2218457))))

(declare-fun b!7606620 () Bool)

(declare-fun tp!2218454 () Bool)

(assert (=> b!7606620 (= e!4524611 tp!2218454)))

(declare-fun b!7606618 () Bool)

(assert (=> b!7606618 (= e!4524611 tp_is_empty!50731)))

(assert (=> b!7606285 (= tp!2218384 e!4524611)))

(assert (= (and b!7606285 (is-ElementMatch!20188 (regTwo!40889 r1!3349))) b!7606618))

(assert (= (and b!7606285 (is-Concat!29033 (regTwo!40889 r1!3349))) b!7606619))

(assert (= (and b!7606285 (is-Star!20188 (regTwo!40889 r1!3349))) b!7606620))

(assert (= (and b!7606285 (is-Union!20188 (regTwo!40889 r1!3349))) b!7606621))

(declare-fun b!7606623 () Bool)

(declare-fun e!4524612 () Bool)

(declare-fun tp!2218461 () Bool)

(declare-fun tp!2218460 () Bool)

(assert (=> b!7606623 (= e!4524612 (and tp!2218461 tp!2218460))))

(declare-fun b!7606625 () Bool)

(declare-fun tp!2218458 () Bool)

(declare-fun tp!2218462 () Bool)

(assert (=> b!7606625 (= e!4524612 (and tp!2218458 tp!2218462))))

(declare-fun b!7606624 () Bool)

(declare-fun tp!2218459 () Bool)

(assert (=> b!7606624 (= e!4524612 tp!2218459)))

(declare-fun b!7606622 () Bool)

(assert (=> b!7606622 (= e!4524612 tp_is_empty!50731)))

(assert (=> b!7606274 (= tp!2218390 e!4524612)))

(assert (= (and b!7606274 (is-ElementMatch!20188 (reg!20517 r2!3249))) b!7606622))

(assert (= (and b!7606274 (is-Concat!29033 (reg!20517 r2!3249))) b!7606623))

(assert (= (and b!7606274 (is-Star!20188 (reg!20517 r2!3249))) b!7606624))

(assert (= (and b!7606274 (is-Union!20188 (reg!20517 r2!3249))) b!7606625))

(declare-fun b!7606630 () Bool)

(declare-fun e!4524615 () Bool)

(declare-fun tp!2218465 () Bool)

(assert (=> b!7606630 (= e!4524615 (and tp_is_empty!50731 tp!2218465))))

(assert (=> b!7606279 (= tp!2218385 e!4524615)))

(assert (= (and b!7606279 (is-Cons!72947 (t!387806 s!10235))) b!7606630))

(declare-fun b!7606632 () Bool)

(declare-fun e!4524616 () Bool)

(declare-fun tp!2218469 () Bool)

(declare-fun tp!2218468 () Bool)

(assert (=> b!7606632 (= e!4524616 (and tp!2218469 tp!2218468))))

(declare-fun b!7606634 () Bool)

(declare-fun tp!2218466 () Bool)

(declare-fun tp!2218470 () Bool)

(assert (=> b!7606634 (= e!4524616 (and tp!2218466 tp!2218470))))

(declare-fun b!7606633 () Bool)

(declare-fun tp!2218467 () Bool)

(assert (=> b!7606633 (= e!4524616 tp!2218467)))

(declare-fun b!7606631 () Bool)

(assert (=> b!7606631 (= e!4524616 tp_is_empty!50731)))

(assert (=> b!7606273 (= tp!2218386 e!4524616)))

(assert (= (and b!7606273 (is-ElementMatch!20188 (regOne!40888 r1!3349))) b!7606631))

(assert (= (and b!7606273 (is-Concat!29033 (regOne!40888 r1!3349))) b!7606632))

(assert (= (and b!7606273 (is-Star!20188 (regOne!40888 r1!3349))) b!7606633))

(assert (= (and b!7606273 (is-Union!20188 (regOne!40888 r1!3349))) b!7606634))

(declare-fun b!7606636 () Bool)

(declare-fun e!4524617 () Bool)

(declare-fun tp!2218474 () Bool)

(declare-fun tp!2218473 () Bool)

(assert (=> b!7606636 (= e!4524617 (and tp!2218474 tp!2218473))))

(declare-fun b!7606638 () Bool)

(declare-fun tp!2218471 () Bool)

(declare-fun tp!2218475 () Bool)

(assert (=> b!7606638 (= e!4524617 (and tp!2218471 tp!2218475))))

(declare-fun b!7606637 () Bool)

(declare-fun tp!2218472 () Bool)

(assert (=> b!7606637 (= e!4524617 tp!2218472)))

(declare-fun b!7606635 () Bool)

(assert (=> b!7606635 (= e!4524617 tp_is_empty!50731)))

(assert (=> b!7606273 (= tp!2218388 e!4524617)))

(assert (= (and b!7606273 (is-ElementMatch!20188 (regTwo!40888 r1!3349))) b!7606635))

(assert (= (and b!7606273 (is-Concat!29033 (regTwo!40888 r1!3349))) b!7606636))

(assert (= (and b!7606273 (is-Star!20188 (regTwo!40888 r1!3349))) b!7606637))

(assert (= (and b!7606273 (is-Union!20188 (regTwo!40888 r1!3349))) b!7606638))

(declare-fun b!7606640 () Bool)

(declare-fun e!4524618 () Bool)

(declare-fun tp!2218479 () Bool)

(declare-fun tp!2218478 () Bool)

(assert (=> b!7606640 (= e!4524618 (and tp!2218479 tp!2218478))))

(declare-fun b!7606642 () Bool)

(declare-fun tp!2218476 () Bool)

(declare-fun tp!2218480 () Bool)

(assert (=> b!7606642 (= e!4524618 (and tp!2218476 tp!2218480))))

(declare-fun b!7606641 () Bool)

(declare-fun tp!2218477 () Bool)

(assert (=> b!7606641 (= e!4524618 tp!2218477)))

(declare-fun b!7606639 () Bool)

(assert (=> b!7606639 (= e!4524618 tp_is_empty!50731)))

(assert (=> b!7606278 (= tp!2218394 e!4524618)))

(assert (= (and b!7606278 (is-ElementMatch!20188 (regOne!40889 r2!3249))) b!7606639))

(assert (= (and b!7606278 (is-Concat!29033 (regOne!40889 r2!3249))) b!7606640))

(assert (= (and b!7606278 (is-Star!20188 (regOne!40889 r2!3249))) b!7606641))

(assert (= (and b!7606278 (is-Union!20188 (regOne!40889 r2!3249))) b!7606642))

(declare-fun b!7606644 () Bool)

(declare-fun e!4524619 () Bool)

(declare-fun tp!2218484 () Bool)

(declare-fun tp!2218483 () Bool)

(assert (=> b!7606644 (= e!4524619 (and tp!2218484 tp!2218483))))

(declare-fun b!7606646 () Bool)

(declare-fun tp!2218481 () Bool)

(declare-fun tp!2218485 () Bool)

(assert (=> b!7606646 (= e!4524619 (and tp!2218481 tp!2218485))))

(declare-fun b!7606645 () Bool)

(declare-fun tp!2218482 () Bool)

(assert (=> b!7606645 (= e!4524619 tp!2218482)))

(declare-fun b!7606643 () Bool)

(assert (=> b!7606643 (= e!4524619 tp_is_empty!50731)))

(assert (=> b!7606278 (= tp!2218391 e!4524619)))

(assert (= (and b!7606278 (is-ElementMatch!20188 (regTwo!40889 r2!3249))) b!7606643))

(assert (= (and b!7606278 (is-Concat!29033 (regTwo!40889 r2!3249))) b!7606644))

(assert (= (and b!7606278 (is-Star!20188 (regTwo!40889 r2!3249))) b!7606645))

(assert (= (and b!7606278 (is-Union!20188 (regTwo!40889 r2!3249))) b!7606646))

(declare-fun b!7606648 () Bool)

(declare-fun e!4524620 () Bool)

(declare-fun tp!2218489 () Bool)

(declare-fun tp!2218488 () Bool)

(assert (=> b!7606648 (= e!4524620 (and tp!2218489 tp!2218488))))

(declare-fun b!7606650 () Bool)

(declare-fun tp!2218486 () Bool)

(declare-fun tp!2218490 () Bool)

(assert (=> b!7606650 (= e!4524620 (and tp!2218486 tp!2218490))))

(declare-fun b!7606649 () Bool)

(declare-fun tp!2218487 () Bool)

(assert (=> b!7606649 (= e!4524620 tp!2218487)))

(declare-fun b!7606647 () Bool)

(assert (=> b!7606647 (= e!4524620 tp_is_empty!50731)))

(assert (=> b!7606277 (= tp!2218393 e!4524620)))

(assert (= (and b!7606277 (is-ElementMatch!20188 (reg!20517 r1!3349))) b!7606647))

(assert (= (and b!7606277 (is-Concat!29033 (reg!20517 r1!3349))) b!7606648))

(assert (= (and b!7606277 (is-Star!20188 (reg!20517 r1!3349))) b!7606649))

(assert (= (and b!7606277 (is-Union!20188 (reg!20517 r1!3349))) b!7606650))

(declare-fun b_lambda!288977 () Bool)

(assert (= b_lambda!288971 (or b!7606282 b_lambda!288977)))

(declare-fun bs!1942733 () Bool)

(declare-fun d!2321896 () Bool)

(assert (= bs!1942733 (and d!2321896 b!7606282)))

(declare-fun res!3045823 () Bool)

(declare-fun e!4524621 () Bool)

(assert (=> bs!1942733 (=> (not res!3045823) (not e!4524621))))

(assert (=> bs!1942733 (= res!3045823 (= (++!17586 (_1!37846 (tuple2!69087 (_1!37846 lt!2654868) (_2!37846 lt!2654868))) (_2!37846 (tuple2!69087 (_1!37846 lt!2654868) (_2!37846 lt!2654868)))) s!10235))))

(assert (=> bs!1942733 (= (dynLambda!29911 lambda!468058 (tuple2!69087 (_1!37846 lt!2654868) (_2!37846 lt!2654868))) e!4524621)))

(declare-fun b!7606651 () Bool)

(declare-fun res!3045824 () Bool)

(assert (=> b!7606651 (=> (not res!3045824) (not e!4524621))))

(assert (=> b!7606651 (= res!3045824 (matchR!9751 r1!3349 (_1!37846 (tuple2!69087 (_1!37846 lt!2654868) (_2!37846 lt!2654868)))))))

(declare-fun b!7606652 () Bool)

(assert (=> b!7606652 (= e!4524621 (matchR!9751 r2!3249 (_2!37846 (tuple2!69087 (_1!37846 lt!2654868) (_2!37846 lt!2654868)))))))

(assert (= (and bs!1942733 res!3045823) b!7606651))

(assert (= (and b!7606651 res!3045824) b!7606652))

(declare-fun m!8147024 () Bool)

(assert (=> bs!1942733 m!8147024))

(declare-fun m!8147026 () Bool)

(assert (=> b!7606651 m!8147026))

(declare-fun m!8147028 () Bool)

(assert (=> b!7606652 m!8147028))

(assert (=> d!2321860 d!2321896))

(declare-fun b_lambda!288979 () Bool)

(assert (= b_lambda!288975 (or b!7606275 b_lambda!288979)))

(declare-fun bs!1942734 () Bool)

(declare-fun d!2321898 () Bool)

(assert (= bs!1942734 (and d!2321898 b!7606275)))

(declare-fun res!3045825 () Bool)

(declare-fun e!4524622 () Bool)

(assert (=> bs!1942734 (=> (not res!3045825) (not e!4524622))))

(assert (=> bs!1942734 (= res!3045825 (= (++!17586 (_1!37846 lt!2654906) (_2!37846 lt!2654906)) s!10235))))

(assert (=> bs!1942734 (= (dynLambda!29911 lambda!468059 lt!2654906) e!4524622)))

(declare-fun b!7606653 () Bool)

(declare-fun res!3045826 () Bool)

(assert (=> b!7606653 (=> (not res!3045826) (not e!4524622))))

(assert (=> b!7606653 (= res!3045826 (matchRSpec!4463 r1!3349 (_1!37846 lt!2654906)))))

(declare-fun b!7606654 () Bool)

(assert (=> b!7606654 (= e!4524622 (matchRSpec!4463 r2!3249 (_2!37846 lt!2654906)))))

(assert (= (and bs!1942734 res!3045825) b!7606653))

(assert (= (and b!7606653 res!3045826) b!7606654))

(declare-fun m!8147030 () Bool)

(assert (=> bs!1942734 m!8147030))

(declare-fun m!8147032 () Bool)

(assert (=> b!7606653 m!8147032))

(declare-fun m!8147034 () Bool)

(assert (=> b!7606654 m!8147034))

(assert (=> d!2321882 d!2321898))

(push 1)

(assert (not b!7606417))

(assert (not b!7606630))

(assert (not b!7606555))

(assert (not b!7606621))

(assert (not b!7606617))

(assert (not b!7606468))

(assert (not b_lambda!288977))

(assert (not b!7606623))

(assert (not b!7606537))

(assert (not bm!698366))

(assert (not bm!698378))

(assert (not d!2321862))

(assert (not d!2321864))

(assert (not b!7606478))

(assert (not b!7606611))

(assert (not bs!1942733))

(assert (not d!2321874))

(assert (not b!7606554))

(assert (not d!2321882))

(assert (not b!7606625))

(assert (not b!7606636))

(assert (not b!7606616))

(assert (not b!7606645))

(assert (not b!7606561))

(assert (not bm!698385))

(assert (not b!7606615))

(assert (not b!7606646))

(assert (not b!7606644))

(assert (not b!7606632))

(assert (not d!2321892))

(assert (not b!7606609))

(assert (not bm!698384))

(assert (not b!7606477))

(assert tp_is_empty!50731)

(assert (not b!7606544))

(assert (not b!7606649))

(assert (not bs!1942734))

(assert (not b!7606545))

(assert (not bm!698383))

(assert (not bm!698386))

(assert (not b!7606613))

(assert (not b!7606648))

(assert (not b!7606653))

(assert (not b_lambda!288979))

(assert (not d!2321880))

(assert (not b!7606551))

(assert (not b!7606399))

(assert (not b!7606637))

(assert (not b!7606650))

(assert (not b!7606634))

(assert (not b!7606549))

(assert (not bm!698372))

(assert (not bm!698387))

(assert (not b!7606532))

(assert (not b!7606641))

(assert (not b!7606612))

(assert (not b!7606467))

(assert (not b!7606624))

(assert (not b!7606654))

(assert (not b!7606640))

(assert (not b!7606619))

(assert (not b!7606498))

(assert (not b!7606652))

(assert (not b!7606633))

(assert (not b!7606472))

(assert (not b!7606497))

(assert (not b!7606638))

(assert (not b!7606608))

(assert (not b!7606474))

(assert (not d!2321884))

(assert (not b!7606651))

(assert (not b!7606566))

(assert (not d!2321870))

(assert (not b!7606620))

(assert (not bm!698371))

(assert (not d!2321860))

(assert (not bm!698365))

(assert (not b!7606607))

(assert (not b!7606642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

