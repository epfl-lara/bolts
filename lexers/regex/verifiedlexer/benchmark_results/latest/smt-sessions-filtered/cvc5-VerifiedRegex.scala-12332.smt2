; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691646 () Bool)

(assert start!691646)

(declare-fun b!7105128 () Bool)

(assert (=> b!7105128 true))

(declare-fun b!7105121 () Bool)

(declare-fun e!4270374 () Bool)

(declare-fun tp!1953828 () Bool)

(assert (=> b!7105121 (= e!4270374 tp!1953828)))

(declare-fun b!7105123 () Bool)

(declare-fun e!4270375 () Bool)

(declare-fun tp!1953830 () Bool)

(declare-fun tp!1953831 () Bool)

(assert (=> b!7105123 (= e!4270375 (and tp!1953830 tp!1953831))))

(declare-fun b!7105124 () Bool)

(declare-fun tp!1953827 () Bool)

(assert (=> b!7105124 (= e!4270375 tp!1953827)))

(declare-fun b!7105125 () Bool)

(declare-fun e!4270373 () Bool)

(declare-fun tp!1953829 () Bool)

(assert (=> b!7105125 (= e!4270373 tp!1953829)))

(declare-fun b!7105126 () Bool)

(declare-fun tp_is_empty!45045 () Bool)

(assert (=> b!7105126 (= e!4270375 tp_is_empty!45045)))

(declare-fun b!7105127 () Bool)

(declare-fun e!4270372 () Bool)

(declare-datatypes ((C!36082 0))(
  ( (C!36083 (val!27747 Int)) )
))
(declare-datatypes ((Regex!17906 0))(
  ( (ElementMatch!17906 (c!1325845 C!36082)) (Concat!26751 (regOne!36324 Regex!17906) (regTwo!36324 Regex!17906)) (EmptyExpr!17906) (Star!17906 (reg!18235 Regex!17906)) (EmptyLang!17906) (Union!17906 (regOne!36325 Regex!17906) (regTwo!36325 Regex!17906)) )
))
(declare-datatypes ((List!68867 0))(
  ( (Nil!68743) (Cons!68743 (h!75191 Regex!17906) (t!382684 List!68867)) )
))
(declare-datatypes ((Context!13800 0))(
  ( (Context!13801 (exprs!7400 List!68867)) )
))
(declare-fun lt!2558737 () Context!13800)

(declare-fun inv!87629 (Context!13800) Bool)

(assert (=> b!7105127 (= e!4270372 (not (inv!87629 lt!2558737)))))

(declare-fun c!9994 () Context!13800)

(declare-datatypes ((Unit!162483 0))(
  ( (Unit!162484) )
))
(declare-fun lt!2558746 () Unit!162483)

(declare-fun lambda!431425 () Int)

(declare-fun auxCtx!45 () Context!13800)

(declare-fun lemmaConcatPreservesForall!1191 (List!68867 List!68867 Int) Unit!162483)

(assert (=> b!7105127 (= lt!2558746 (lemmaConcatPreservesForall!1191 (exprs!7400 c!9994) (exprs!7400 auxCtx!45) lambda!431425))))

(declare-fun lt!2558747 () (Set Context!13800))

(declare-fun lambda!431424 () Int)

(declare-fun lt!2558745 () (Set Context!13800))

(declare-fun map!16250 ((Set Context!13800) Int) (Set Context!13800))

(assert (=> b!7105127 (= (set.union (map!16250 lt!2558747 lambda!431424) (map!16250 lt!2558745 lambda!431424)) (map!16250 (set.union lt!2558747 lt!2558745) lambda!431424))))

(declare-fun lt!2558740 () Unit!162483)

(declare-fun lemmaMapAssociative!25 ((Set Context!13800) (Set Context!13800) Int) Unit!162483)

(assert (=> b!7105127 (= lt!2558740 (lemmaMapAssociative!25 lt!2558747 lt!2558745 lambda!431424))))

(declare-fun lt!2558748 () (Set Context!13800))

(declare-fun appendTo!921 ((Set Context!13800) Context!13800) (Set Context!13800))

(assert (=> b!7105127 (= lt!2558748 (appendTo!921 lt!2558745 auxCtx!45))))

(declare-fun a!1901 () C!36082)

(declare-fun r!11554 () Regex!17906)

(declare-fun derivationStepZipperDown!2429 (Regex!17906 Context!13800 C!36082) (Set Context!13800))

(assert (=> b!7105127 (= lt!2558745 (derivationStepZipperDown!2429 (regTwo!36325 r!11554) c!9994 a!1901))))

(declare-fun lt!2558738 () Unit!162483)

(assert (=> b!7105127 (= lt!2558738 (lemmaConcatPreservesForall!1191 (exprs!7400 c!9994) (exprs!7400 auxCtx!45) lambda!431425))))

(declare-fun lt!2558735 () Unit!162483)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!219 (Context!13800 Regex!17906 C!36082 Context!13800) Unit!162483)

(assert (=> b!7105127 (= lt!2558735 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!219 c!9994 (regTwo!36325 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2558739 () (Set Context!13800))

(assert (=> b!7105127 (= lt!2558739 (appendTo!921 lt!2558747 auxCtx!45))))

(assert (=> b!7105127 (= lt!2558747 (derivationStepZipperDown!2429 (regOne!36325 r!11554) c!9994 a!1901))))

(declare-fun lt!2558736 () Unit!162483)

(assert (=> b!7105127 (= lt!2558736 (lemmaConcatPreservesForall!1191 (exprs!7400 c!9994) (exprs!7400 auxCtx!45) lambda!431425))))

(declare-fun lt!2558744 () Unit!162483)

(assert (=> b!7105127 (= lt!2558744 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!219 c!9994 (regOne!36325 r!11554) a!1901 auxCtx!45))))

(declare-fun e!4270371 () Bool)

(declare-fun e!4270376 () Bool)

(assert (=> b!7105128 (= e!4270371 e!4270376)))

(declare-fun res!2900447 () Bool)

(assert (=> b!7105128 (=> (not res!2900447) (not e!4270376))))

(assert (=> b!7105128 (= res!2900447 (and (or (not (is-ElementMatch!17906 r!11554)) (not (= (c!1325845 r!11554) a!1901))) (is-Union!17906 r!11554)))))

(declare-fun b!7105129 () Bool)

(declare-fun tp!1953826 () Bool)

(declare-fun tp!1953825 () Bool)

(assert (=> b!7105129 (= e!4270375 (and tp!1953826 tp!1953825))))

(declare-fun res!2900446 () Bool)

(assert (=> start!691646 (=> (not res!2900446) (not e!4270371))))

(declare-fun validRegex!9179 (Regex!17906) Bool)

(assert (=> start!691646 (= res!2900446 (validRegex!9179 r!11554))))

(assert (=> start!691646 e!4270371))

(assert (=> start!691646 e!4270375))

(assert (=> start!691646 (and (inv!87629 c!9994) e!4270373)))

(assert (=> start!691646 tp_is_empty!45045))

(assert (=> start!691646 (and (inv!87629 auxCtx!45) e!4270374)))

(declare-fun b!7105122 () Bool)

(assert (=> b!7105122 (= e!4270376 e!4270372)))

(declare-fun res!2900445 () Bool)

(assert (=> b!7105122 (=> (not res!2900445) (not e!4270372))))

(assert (=> b!7105122 (= res!2900445 (= (derivationStepZipperDown!2429 r!11554 lt!2558737 a!1901) (set.union lt!2558739 lt!2558748)))))

(assert (=> b!7105122 (= lt!2558748 (derivationStepZipperDown!2429 (regTwo!36325 r!11554) lt!2558737 a!1901))))

(assert (=> b!7105122 (= lt!2558739 (derivationStepZipperDown!2429 (regOne!36325 r!11554) lt!2558737 a!1901))))

(declare-fun ++!16058 (List!68867 List!68867) List!68867)

(assert (=> b!7105122 (= lt!2558737 (Context!13801 (++!16058 (exprs!7400 c!9994) (exprs!7400 auxCtx!45))))))

(declare-fun lt!2558742 () Unit!162483)

(assert (=> b!7105122 (= lt!2558742 (lemmaConcatPreservesForall!1191 (exprs!7400 c!9994) (exprs!7400 auxCtx!45) lambda!431425))))

(declare-fun lt!2558743 () Unit!162483)

(assert (=> b!7105122 (= lt!2558743 (lemmaConcatPreservesForall!1191 (exprs!7400 c!9994) (exprs!7400 auxCtx!45) lambda!431425))))

(declare-fun lt!2558741 () Unit!162483)

(assert (=> b!7105122 (= lt!2558741 (lemmaConcatPreservesForall!1191 (exprs!7400 c!9994) (exprs!7400 auxCtx!45) lambda!431425))))

(assert (= (and start!691646 res!2900446) b!7105128))

(assert (= (and b!7105128 res!2900447) b!7105122))

(assert (= (and b!7105122 res!2900445) b!7105127))

(assert (= (and start!691646 (is-ElementMatch!17906 r!11554)) b!7105126))

(assert (= (and start!691646 (is-Concat!26751 r!11554)) b!7105129))

(assert (= (and start!691646 (is-Star!17906 r!11554)) b!7105124))

(assert (= (and start!691646 (is-Union!17906 r!11554)) b!7105123))

(assert (= start!691646 b!7105125))

(assert (= start!691646 b!7105121))

(declare-fun m!7828496 () Bool)

(assert (=> b!7105127 m!7828496))

(assert (=> b!7105127 m!7828496))

(declare-fun m!7828498 () Bool)

(assert (=> b!7105127 m!7828498))

(declare-fun m!7828500 () Bool)

(assert (=> b!7105127 m!7828500))

(declare-fun m!7828502 () Bool)

(assert (=> b!7105127 m!7828502))

(declare-fun m!7828504 () Bool)

(assert (=> b!7105127 m!7828504))

(declare-fun m!7828506 () Bool)

(assert (=> b!7105127 m!7828506))

(declare-fun m!7828508 () Bool)

(assert (=> b!7105127 m!7828508))

(assert (=> b!7105127 m!7828496))

(declare-fun m!7828510 () Bool)

(assert (=> b!7105127 m!7828510))

(declare-fun m!7828512 () Bool)

(assert (=> b!7105127 m!7828512))

(declare-fun m!7828514 () Bool)

(assert (=> b!7105127 m!7828514))

(declare-fun m!7828516 () Bool)

(assert (=> b!7105127 m!7828516))

(declare-fun m!7828518 () Bool)

(assert (=> b!7105127 m!7828518))

(declare-fun m!7828520 () Bool)

(assert (=> start!691646 m!7828520))

(declare-fun m!7828522 () Bool)

(assert (=> start!691646 m!7828522))

(declare-fun m!7828524 () Bool)

(assert (=> start!691646 m!7828524))

(declare-fun m!7828526 () Bool)

(assert (=> b!7105122 m!7828526))

(declare-fun m!7828528 () Bool)

(assert (=> b!7105122 m!7828528))

(assert (=> b!7105122 m!7828496))

(assert (=> b!7105122 m!7828496))

(assert (=> b!7105122 m!7828496))

(declare-fun m!7828530 () Bool)

(assert (=> b!7105122 m!7828530))

(declare-fun m!7828532 () Bool)

(assert (=> b!7105122 m!7828532))

(push 1)

(assert (not b!7105129))

(assert (not b!7105125))

(assert (not b!7105127))

(assert (not b!7105121))

(assert (not start!691646))

(assert tp_is_empty!45045)

(assert (not b!7105123))

(assert (not b!7105124))

(assert (not b!7105122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2219127 () Bool)

(declare-fun res!2900471 () Bool)

(declare-fun e!4270415 () Bool)

(assert (=> d!2219127 (=> res!2900471 e!4270415)))

(assert (=> d!2219127 (= res!2900471 (is-ElementMatch!17906 r!11554))))

(assert (=> d!2219127 (= (validRegex!9179 r!11554) e!4270415)))

(declare-fun b!7105179 () Bool)

(declare-fun e!4270414 () Bool)

(declare-fun e!4270411 () Bool)

(assert (=> b!7105179 (= e!4270414 e!4270411)))

(declare-fun res!2900469 () Bool)

(assert (=> b!7105179 (=> (not res!2900469) (not e!4270411))))

(declare-fun call!647520 () Bool)

(assert (=> b!7105179 (= res!2900469 call!647520)))

(declare-fun b!7105180 () Bool)

(declare-fun res!2900473 () Bool)

(declare-fun e!4270410 () Bool)

(assert (=> b!7105180 (=> (not res!2900473) (not e!4270410))))

(declare-fun call!647518 () Bool)

(assert (=> b!7105180 (= res!2900473 call!647518)))

(declare-fun e!4270409 () Bool)

(assert (=> b!7105180 (= e!4270409 e!4270410)))

(declare-fun b!7105181 () Bool)

(declare-fun e!4270412 () Bool)

(assert (=> b!7105181 (= e!4270412 e!4270409)))

(declare-fun c!1325852 () Bool)

(assert (=> b!7105181 (= c!1325852 (is-Union!17906 r!11554))))

(declare-fun b!7105182 () Bool)

(assert (=> b!7105182 (= e!4270410 call!647520)))

(declare-fun bm!647513 () Bool)

(assert (=> bm!647513 (= call!647518 (validRegex!9179 (ite c!1325852 (regOne!36325 r!11554) (regTwo!36324 r!11554))))))

(declare-fun c!1325851 () Bool)

(declare-fun call!647519 () Bool)

(declare-fun bm!647514 () Bool)

(assert (=> bm!647514 (= call!647519 (validRegex!9179 (ite c!1325851 (reg!18235 r!11554) (ite c!1325852 (regTwo!36325 r!11554) (regOne!36324 r!11554)))))))

(declare-fun b!7105183 () Bool)

(assert (=> b!7105183 (= e!4270415 e!4270412)))

(assert (=> b!7105183 (= c!1325851 (is-Star!17906 r!11554))))

(declare-fun b!7105184 () Bool)

(assert (=> b!7105184 (= e!4270411 call!647518)))

(declare-fun b!7105185 () Bool)

(declare-fun e!4270413 () Bool)

(assert (=> b!7105185 (= e!4270413 call!647519)))

(declare-fun bm!647515 () Bool)

(assert (=> bm!647515 (= call!647520 call!647519)))

(declare-fun b!7105186 () Bool)

(declare-fun res!2900472 () Bool)

(assert (=> b!7105186 (=> res!2900472 e!4270414)))

(assert (=> b!7105186 (= res!2900472 (not (is-Concat!26751 r!11554)))))

(assert (=> b!7105186 (= e!4270409 e!4270414)))

(declare-fun b!7105187 () Bool)

(assert (=> b!7105187 (= e!4270412 e!4270413)))

(declare-fun res!2900470 () Bool)

(declare-fun nullable!7543 (Regex!17906) Bool)

(assert (=> b!7105187 (= res!2900470 (not (nullable!7543 (reg!18235 r!11554))))))

(assert (=> b!7105187 (=> (not res!2900470) (not e!4270413))))

(assert (= (and d!2219127 (not res!2900471)) b!7105183))

(assert (= (and b!7105183 c!1325851) b!7105187))

(assert (= (and b!7105183 (not c!1325851)) b!7105181))

(assert (= (and b!7105187 res!2900470) b!7105185))

(assert (= (and b!7105181 c!1325852) b!7105180))

(assert (= (and b!7105181 (not c!1325852)) b!7105186))

(assert (= (and b!7105180 res!2900473) b!7105182))

(assert (= (and b!7105186 (not res!2900472)) b!7105179))

(assert (= (and b!7105179 res!2900469) b!7105184))

(assert (= (or b!7105180 b!7105184) bm!647513))

(assert (= (or b!7105182 b!7105179) bm!647515))

(assert (= (or b!7105185 bm!647515) bm!647514))

(declare-fun m!7828572 () Bool)

(assert (=> bm!647513 m!7828572))

(declare-fun m!7828574 () Bool)

(assert (=> bm!647514 m!7828574))

(declare-fun m!7828576 () Bool)

(assert (=> b!7105187 m!7828576))

(assert (=> start!691646 d!2219127))

(declare-fun bs!1884587 () Bool)

(declare-fun d!2219131 () Bool)

(assert (= bs!1884587 (and d!2219131 b!7105122)))

(declare-fun lambda!431446 () Int)

(assert (=> bs!1884587 (= lambda!431446 lambda!431425)))

(declare-fun forall!16809 (List!68867 Int) Bool)

(assert (=> d!2219131 (= (inv!87629 c!9994) (forall!16809 (exprs!7400 c!9994) lambda!431446))))

(declare-fun bs!1884588 () Bool)

(assert (= bs!1884588 d!2219131))

(declare-fun m!7828578 () Bool)

(assert (=> bs!1884588 m!7828578))

(assert (=> start!691646 d!2219131))

(declare-fun bs!1884589 () Bool)

(declare-fun d!2219133 () Bool)

(assert (= bs!1884589 (and d!2219133 b!7105122)))

(declare-fun lambda!431447 () Int)

(assert (=> bs!1884589 (= lambda!431447 lambda!431425)))

(declare-fun bs!1884590 () Bool)

(assert (= bs!1884590 (and d!2219133 d!2219131)))

(assert (=> bs!1884590 (= lambda!431447 lambda!431446)))

(assert (=> d!2219133 (= (inv!87629 auxCtx!45) (forall!16809 (exprs!7400 auxCtx!45) lambda!431447))))

(declare-fun bs!1884591 () Bool)

(assert (= bs!1884591 d!2219133))

(declare-fun m!7828580 () Bool)

(assert (=> bs!1884591 m!7828580))

(assert (=> start!691646 d!2219133))

(declare-fun bm!647528 () Bool)

(declare-fun call!647534 () (Set Context!13800))

(declare-fun call!647535 () (Set Context!13800))

(assert (=> bm!647528 (= call!647534 call!647535)))

(declare-fun c!1325864 () Bool)

(declare-fun bm!647529 () Bool)

(declare-fun c!1325867 () Bool)

(declare-fun call!647533 () List!68867)

(declare-fun $colon$colon!2770 (List!68867 Regex!17906) List!68867)

(assert (=> bm!647529 (= call!647533 ($colon$colon!2770 (exprs!7400 lt!2558737) (ite (or c!1325864 c!1325867) (regTwo!36324 r!11554) r!11554)))))

(declare-fun b!7105210 () Bool)

(declare-fun e!4270433 () (Set Context!13800))

(declare-fun e!4270429 () (Set Context!13800))

(assert (=> b!7105210 (= e!4270433 e!4270429)))

(declare-fun c!1325865 () Bool)

(assert (=> b!7105210 (= c!1325865 (is-Union!17906 r!11554))))

(declare-fun b!7105211 () Bool)

(declare-fun c!1325868 () Bool)

(assert (=> b!7105211 (= c!1325868 (is-Star!17906 r!11554))))

(declare-fun e!4270430 () (Set Context!13800))

(declare-fun e!4270428 () (Set Context!13800))

(assert (=> b!7105211 (= e!4270430 e!4270428)))

(declare-fun bm!647530 () Bool)

(declare-fun call!647537 () List!68867)

(assert (=> bm!647530 (= call!647535 (derivationStepZipperDown!2429 (ite c!1325865 (regTwo!36325 r!11554) (ite c!1325864 (regTwo!36324 r!11554) (ite c!1325867 (regOne!36324 r!11554) (reg!18235 r!11554)))) (ite (or c!1325865 c!1325864) lt!2558737 (Context!13801 call!647537)) a!1901))))

(declare-fun bm!647531 () Bool)

(declare-fun call!647538 () (Set Context!13800))

(assert (=> bm!647531 (= call!647538 (derivationStepZipperDown!2429 (ite c!1325865 (regOne!36325 r!11554) (regOne!36324 r!11554)) (ite c!1325865 lt!2558737 (Context!13801 call!647533)) a!1901))))

(declare-fun b!7105212 () Bool)

(declare-fun e!4270432 () (Set Context!13800))

(assert (=> b!7105212 (= e!4270432 (set.union call!647538 call!647534))))

(declare-fun b!7105213 () Bool)

(assert (=> b!7105213 (= e!4270429 (set.union call!647538 call!647535))))

(declare-fun bm!647532 () Bool)

(assert (=> bm!647532 (= call!647537 call!647533)))

(declare-fun b!7105214 () Bool)

(assert (=> b!7105214 (= e!4270433 (set.insert lt!2558737 (as set.empty (Set Context!13800))))))

(declare-fun b!7105215 () Bool)

(declare-fun call!647536 () (Set Context!13800))

(assert (=> b!7105215 (= e!4270430 call!647536)))

(declare-fun d!2219135 () Bool)

(declare-fun c!1325866 () Bool)

(assert (=> d!2219135 (= c!1325866 (and (is-ElementMatch!17906 r!11554) (= (c!1325845 r!11554) a!1901)))))

(assert (=> d!2219135 (= (derivationStepZipperDown!2429 r!11554 lt!2558737 a!1901) e!4270433)))

(declare-fun b!7105216 () Bool)

(declare-fun e!4270431 () Bool)

(assert (=> b!7105216 (= e!4270431 (nullable!7543 (regOne!36324 r!11554)))))

(declare-fun b!7105217 () Bool)

(assert (=> b!7105217 (= e!4270432 e!4270430)))

(assert (=> b!7105217 (= c!1325867 (is-Concat!26751 r!11554))))

(declare-fun bm!647533 () Bool)

(assert (=> bm!647533 (= call!647536 call!647534)))

(declare-fun b!7105218 () Bool)

(assert (=> b!7105218 (= e!4270428 call!647536)))

(declare-fun b!7105219 () Bool)

(assert (=> b!7105219 (= c!1325864 e!4270431)))

(declare-fun res!2900476 () Bool)

(assert (=> b!7105219 (=> (not res!2900476) (not e!4270431))))

(assert (=> b!7105219 (= res!2900476 (is-Concat!26751 r!11554))))

(assert (=> b!7105219 (= e!4270429 e!4270432)))

(declare-fun b!7105220 () Bool)

(assert (=> b!7105220 (= e!4270428 (as set.empty (Set Context!13800)))))

(assert (= (and d!2219135 c!1325866) b!7105214))

(assert (= (and d!2219135 (not c!1325866)) b!7105210))

(assert (= (and b!7105210 c!1325865) b!7105213))

(assert (= (and b!7105210 (not c!1325865)) b!7105219))

(assert (= (and b!7105219 res!2900476) b!7105216))

(assert (= (and b!7105219 c!1325864) b!7105212))

(assert (= (and b!7105219 (not c!1325864)) b!7105217))

(assert (= (and b!7105217 c!1325867) b!7105215))

(assert (= (and b!7105217 (not c!1325867)) b!7105211))

(assert (= (and b!7105211 c!1325868) b!7105218))

(assert (= (and b!7105211 (not c!1325868)) b!7105220))

(assert (= (or b!7105215 b!7105218) bm!647532))

(assert (= (or b!7105215 b!7105218) bm!647533))

(assert (= (or b!7105212 bm!647533) bm!647528))

(assert (= (or b!7105212 bm!647532) bm!647529))

(assert (= (or b!7105213 bm!647528) bm!647530))

(assert (= (or b!7105213 b!7105212) bm!647531))

(declare-fun m!7828582 () Bool)

(assert (=> b!7105214 m!7828582))

(declare-fun m!7828584 () Bool)

(assert (=> bm!647529 m!7828584))

(declare-fun m!7828586 () Bool)

(assert (=> bm!647531 m!7828586))

(declare-fun m!7828588 () Bool)

(assert (=> b!7105216 m!7828588))

(declare-fun m!7828590 () Bool)

(assert (=> bm!647530 m!7828590))

(assert (=> b!7105122 d!2219135))

(declare-fun d!2219137 () Bool)

(assert (=> d!2219137 (forall!16809 (++!16058 (exprs!7400 c!9994) (exprs!7400 auxCtx!45)) lambda!431425)))

(declare-fun lt!2558801 () Unit!162483)

(declare-fun choose!54800 (List!68867 List!68867 Int) Unit!162483)

(assert (=> d!2219137 (= lt!2558801 (choose!54800 (exprs!7400 c!9994) (exprs!7400 auxCtx!45) lambda!431425))))

(assert (=> d!2219137 (forall!16809 (exprs!7400 c!9994) lambda!431425)))

(assert (=> d!2219137 (= (lemmaConcatPreservesForall!1191 (exprs!7400 c!9994) (exprs!7400 auxCtx!45) lambda!431425) lt!2558801)))

(declare-fun bs!1884594 () Bool)

(assert (= bs!1884594 d!2219137))

(assert (=> bs!1884594 m!7828532))

(assert (=> bs!1884594 m!7828532))

(declare-fun m!7828602 () Bool)

(assert (=> bs!1884594 m!7828602))

(declare-fun m!7828604 () Bool)

(assert (=> bs!1884594 m!7828604))

(declare-fun m!7828606 () Bool)

(assert (=> bs!1884594 m!7828606))

(assert (=> b!7105122 d!2219137))

(declare-fun d!2219141 () Bool)

(declare-fun e!4270439 () Bool)

(assert (=> d!2219141 e!4270439))

(declare-fun res!2900481 () Bool)

(assert (=> d!2219141 (=> (not res!2900481) (not e!4270439))))

(declare-fun lt!2558804 () List!68867)

(declare-fun content!13995 (List!68867) (Set Regex!17906))

(assert (=> d!2219141 (= res!2900481 (= (content!13995 lt!2558804) (set.union (content!13995 (exprs!7400 c!9994)) (content!13995 (exprs!7400 auxCtx!45)))))))

(declare-fun e!4270438 () List!68867)

(assert (=> d!2219141 (= lt!2558804 e!4270438)))

(declare-fun c!1325871 () Bool)

(assert (=> d!2219141 (= c!1325871 (is-Nil!68743 (exprs!7400 c!9994)))))

(assert (=> d!2219141 (= (++!16058 (exprs!7400 c!9994) (exprs!7400 auxCtx!45)) lt!2558804)))

(declare-fun b!7105229 () Bool)

(assert (=> b!7105229 (= e!4270438 (exprs!7400 auxCtx!45))))

(declare-fun b!7105231 () Bool)

(declare-fun res!2900482 () Bool)

(assert (=> b!7105231 (=> (not res!2900482) (not e!4270439))))

(declare-fun size!41370 (List!68867) Int)

(assert (=> b!7105231 (= res!2900482 (= (size!41370 lt!2558804) (+ (size!41370 (exprs!7400 c!9994)) (size!41370 (exprs!7400 auxCtx!45)))))))

(declare-fun b!7105230 () Bool)

(assert (=> b!7105230 (= e!4270438 (Cons!68743 (h!75191 (exprs!7400 c!9994)) (++!16058 (t!382684 (exprs!7400 c!9994)) (exprs!7400 auxCtx!45))))))

(declare-fun b!7105232 () Bool)

(assert (=> b!7105232 (= e!4270439 (or (not (= (exprs!7400 auxCtx!45) Nil!68743)) (= lt!2558804 (exprs!7400 c!9994))))))

(assert (= (and d!2219141 c!1325871) b!7105229))

(assert (= (and d!2219141 (not c!1325871)) b!7105230))

(assert (= (and d!2219141 res!2900481) b!7105231))

(assert (= (and b!7105231 res!2900482) b!7105232))

(declare-fun m!7828608 () Bool)

(assert (=> d!2219141 m!7828608))

(declare-fun m!7828610 () Bool)

(assert (=> d!2219141 m!7828610))

(declare-fun m!7828612 () Bool)

(assert (=> d!2219141 m!7828612))

(declare-fun m!7828614 () Bool)

(assert (=> b!7105231 m!7828614))

(declare-fun m!7828616 () Bool)

(assert (=> b!7105231 m!7828616))

(declare-fun m!7828618 () Bool)

(assert (=> b!7105231 m!7828618))

(declare-fun m!7828620 () Bool)

(assert (=> b!7105230 m!7828620))

(assert (=> b!7105122 d!2219141))

(declare-fun bm!647534 () Bool)

(declare-fun call!647540 () (Set Context!13800))

(declare-fun call!647541 () (Set Context!13800))

(assert (=> bm!647534 (= call!647540 call!647541)))

(declare-fun call!647539 () List!68867)

(declare-fun c!1325872 () Bool)

(declare-fun bm!647535 () Bool)

(declare-fun c!1325875 () Bool)

(assert (=> bm!647535 (= call!647539 ($colon$colon!2770 (exprs!7400 lt!2558737) (ite (or c!1325872 c!1325875) (regTwo!36324 (regTwo!36325 r!11554)) (regTwo!36325 r!11554))))))

(declare-fun b!7105233 () Bool)

(declare-fun e!4270445 () (Set Context!13800))

(declare-fun e!4270441 () (Set Context!13800))

(assert (=> b!7105233 (= e!4270445 e!4270441)))

(declare-fun c!1325873 () Bool)

(assert (=> b!7105233 (= c!1325873 (is-Union!17906 (regTwo!36325 r!11554)))))

(declare-fun b!7105234 () Bool)

(declare-fun c!1325876 () Bool)

(assert (=> b!7105234 (= c!1325876 (is-Star!17906 (regTwo!36325 r!11554)))))

(declare-fun e!4270442 () (Set Context!13800))

(declare-fun e!4270440 () (Set Context!13800))

(assert (=> b!7105234 (= e!4270442 e!4270440)))

(declare-fun call!647543 () List!68867)

(declare-fun bm!647536 () Bool)

(assert (=> bm!647536 (= call!647541 (derivationStepZipperDown!2429 (ite c!1325873 (regTwo!36325 (regTwo!36325 r!11554)) (ite c!1325872 (regTwo!36324 (regTwo!36325 r!11554)) (ite c!1325875 (regOne!36324 (regTwo!36325 r!11554)) (reg!18235 (regTwo!36325 r!11554))))) (ite (or c!1325873 c!1325872) lt!2558737 (Context!13801 call!647543)) a!1901))))

(declare-fun bm!647537 () Bool)

(declare-fun call!647544 () (Set Context!13800))

(assert (=> bm!647537 (= call!647544 (derivationStepZipperDown!2429 (ite c!1325873 (regOne!36325 (regTwo!36325 r!11554)) (regOne!36324 (regTwo!36325 r!11554))) (ite c!1325873 lt!2558737 (Context!13801 call!647539)) a!1901))))

(declare-fun b!7105235 () Bool)

(declare-fun e!4270444 () (Set Context!13800))

(assert (=> b!7105235 (= e!4270444 (set.union call!647544 call!647540))))

(declare-fun b!7105236 () Bool)

(assert (=> b!7105236 (= e!4270441 (set.union call!647544 call!647541))))

(declare-fun bm!647538 () Bool)

(assert (=> bm!647538 (= call!647543 call!647539)))

(declare-fun b!7105237 () Bool)

(assert (=> b!7105237 (= e!4270445 (set.insert lt!2558737 (as set.empty (Set Context!13800))))))

(declare-fun b!7105238 () Bool)

(declare-fun call!647542 () (Set Context!13800))

(assert (=> b!7105238 (= e!4270442 call!647542)))

(declare-fun d!2219143 () Bool)

(declare-fun c!1325874 () Bool)

(assert (=> d!2219143 (= c!1325874 (and (is-ElementMatch!17906 (regTwo!36325 r!11554)) (= (c!1325845 (regTwo!36325 r!11554)) a!1901)))))

(assert (=> d!2219143 (= (derivationStepZipperDown!2429 (regTwo!36325 r!11554) lt!2558737 a!1901) e!4270445)))

(declare-fun b!7105239 () Bool)

(declare-fun e!4270443 () Bool)

(assert (=> b!7105239 (= e!4270443 (nullable!7543 (regOne!36324 (regTwo!36325 r!11554))))))

(declare-fun b!7105240 () Bool)

(assert (=> b!7105240 (= e!4270444 e!4270442)))

(assert (=> b!7105240 (= c!1325875 (is-Concat!26751 (regTwo!36325 r!11554)))))

(declare-fun bm!647539 () Bool)

(assert (=> bm!647539 (= call!647542 call!647540)))

(declare-fun b!7105241 () Bool)

(assert (=> b!7105241 (= e!4270440 call!647542)))

(declare-fun b!7105242 () Bool)

(assert (=> b!7105242 (= c!1325872 e!4270443)))

(declare-fun res!2900483 () Bool)

(assert (=> b!7105242 (=> (not res!2900483) (not e!4270443))))

(assert (=> b!7105242 (= res!2900483 (is-Concat!26751 (regTwo!36325 r!11554)))))

(assert (=> b!7105242 (= e!4270441 e!4270444)))

(declare-fun b!7105243 () Bool)

(assert (=> b!7105243 (= e!4270440 (as set.empty (Set Context!13800)))))

(assert (= (and d!2219143 c!1325874) b!7105237))

(assert (= (and d!2219143 (not c!1325874)) b!7105233))

(assert (= (and b!7105233 c!1325873) b!7105236))

(assert (= (and b!7105233 (not c!1325873)) b!7105242))

(assert (= (and b!7105242 res!2900483) b!7105239))

(assert (= (and b!7105242 c!1325872) b!7105235))

(assert (= (and b!7105242 (not c!1325872)) b!7105240))

(assert (= (and b!7105240 c!1325875) b!7105238))

(assert (= (and b!7105240 (not c!1325875)) b!7105234))

(assert (= (and b!7105234 c!1325876) b!7105241))

(assert (= (and b!7105234 (not c!1325876)) b!7105243))

(assert (= (or b!7105238 b!7105241) bm!647538))

(assert (= (or b!7105238 b!7105241) bm!647539))

(assert (= (or b!7105235 bm!647539) bm!647534))

(assert (= (or b!7105235 bm!647538) bm!647535))

(assert (= (or b!7105236 bm!647534) bm!647536))

(assert (= (or b!7105236 b!7105235) bm!647537))

(assert (=> b!7105237 m!7828582))

(declare-fun m!7828622 () Bool)

(assert (=> bm!647535 m!7828622))

(declare-fun m!7828624 () Bool)

(assert (=> bm!647537 m!7828624))

(declare-fun m!7828626 () Bool)

(assert (=> b!7105239 m!7828626))

(declare-fun m!7828628 () Bool)

(assert (=> bm!647536 m!7828628))

(assert (=> b!7105122 d!2219143))

(declare-fun bm!647540 () Bool)

(declare-fun call!647546 () (Set Context!13800))

(declare-fun call!647547 () (Set Context!13800))

(assert (=> bm!647540 (= call!647546 call!647547)))

(declare-fun c!1325877 () Bool)

(declare-fun c!1325880 () Bool)

(declare-fun bm!647541 () Bool)

(declare-fun call!647545 () List!68867)

(assert (=> bm!647541 (= call!647545 ($colon$colon!2770 (exprs!7400 lt!2558737) (ite (or c!1325877 c!1325880) (regTwo!36324 (regOne!36325 r!11554)) (regOne!36325 r!11554))))))

(declare-fun b!7105244 () Bool)

(declare-fun e!4270451 () (Set Context!13800))

(declare-fun e!4270447 () (Set Context!13800))

(assert (=> b!7105244 (= e!4270451 e!4270447)))

(declare-fun c!1325878 () Bool)

(assert (=> b!7105244 (= c!1325878 (is-Union!17906 (regOne!36325 r!11554)))))

(declare-fun b!7105245 () Bool)

(declare-fun c!1325881 () Bool)

(assert (=> b!7105245 (= c!1325881 (is-Star!17906 (regOne!36325 r!11554)))))

(declare-fun e!4270448 () (Set Context!13800))

(declare-fun e!4270446 () (Set Context!13800))

(assert (=> b!7105245 (= e!4270448 e!4270446)))

(declare-fun call!647549 () List!68867)

(declare-fun bm!647542 () Bool)

(assert (=> bm!647542 (= call!647547 (derivationStepZipperDown!2429 (ite c!1325878 (regTwo!36325 (regOne!36325 r!11554)) (ite c!1325877 (regTwo!36324 (regOne!36325 r!11554)) (ite c!1325880 (regOne!36324 (regOne!36325 r!11554)) (reg!18235 (regOne!36325 r!11554))))) (ite (or c!1325878 c!1325877) lt!2558737 (Context!13801 call!647549)) a!1901))))

(declare-fun bm!647543 () Bool)

(declare-fun call!647550 () (Set Context!13800))

(assert (=> bm!647543 (= call!647550 (derivationStepZipperDown!2429 (ite c!1325878 (regOne!36325 (regOne!36325 r!11554)) (regOne!36324 (regOne!36325 r!11554))) (ite c!1325878 lt!2558737 (Context!13801 call!647545)) a!1901))))

(declare-fun b!7105246 () Bool)

(declare-fun e!4270450 () (Set Context!13800))

(assert (=> b!7105246 (= e!4270450 (set.union call!647550 call!647546))))

(declare-fun b!7105247 () Bool)

(assert (=> b!7105247 (= e!4270447 (set.union call!647550 call!647547))))

(declare-fun bm!647544 () Bool)

(assert (=> bm!647544 (= call!647549 call!647545)))

(declare-fun b!7105248 () Bool)

(assert (=> b!7105248 (= e!4270451 (set.insert lt!2558737 (as set.empty (Set Context!13800))))))

(declare-fun b!7105249 () Bool)

(declare-fun call!647548 () (Set Context!13800))

(assert (=> b!7105249 (= e!4270448 call!647548)))

(declare-fun d!2219145 () Bool)

(declare-fun c!1325879 () Bool)

(assert (=> d!2219145 (= c!1325879 (and (is-ElementMatch!17906 (regOne!36325 r!11554)) (= (c!1325845 (regOne!36325 r!11554)) a!1901)))))

(assert (=> d!2219145 (= (derivationStepZipperDown!2429 (regOne!36325 r!11554) lt!2558737 a!1901) e!4270451)))

(declare-fun b!7105250 () Bool)

(declare-fun e!4270449 () Bool)

(assert (=> b!7105250 (= e!4270449 (nullable!7543 (regOne!36324 (regOne!36325 r!11554))))))

(declare-fun b!7105251 () Bool)

(assert (=> b!7105251 (= e!4270450 e!4270448)))

(assert (=> b!7105251 (= c!1325880 (is-Concat!26751 (regOne!36325 r!11554)))))

(declare-fun bm!647545 () Bool)

(assert (=> bm!647545 (= call!647548 call!647546)))

(declare-fun b!7105252 () Bool)

(assert (=> b!7105252 (= e!4270446 call!647548)))

(declare-fun b!7105253 () Bool)

(assert (=> b!7105253 (= c!1325877 e!4270449)))

(declare-fun res!2900484 () Bool)

(assert (=> b!7105253 (=> (not res!2900484) (not e!4270449))))

(assert (=> b!7105253 (= res!2900484 (is-Concat!26751 (regOne!36325 r!11554)))))

(assert (=> b!7105253 (= e!4270447 e!4270450)))

(declare-fun b!7105254 () Bool)

(assert (=> b!7105254 (= e!4270446 (as set.empty (Set Context!13800)))))

(assert (= (and d!2219145 c!1325879) b!7105248))

(assert (= (and d!2219145 (not c!1325879)) b!7105244))

(assert (= (and b!7105244 c!1325878) b!7105247))

(assert (= (and b!7105244 (not c!1325878)) b!7105253))

(assert (= (and b!7105253 res!2900484) b!7105250))

(assert (= (and b!7105253 c!1325877) b!7105246))

(assert (= (and b!7105253 (not c!1325877)) b!7105251))

(assert (= (and b!7105251 c!1325880) b!7105249))

(assert (= (and b!7105251 (not c!1325880)) b!7105245))

(assert (= (and b!7105245 c!1325881) b!7105252))

(assert (= (and b!7105245 (not c!1325881)) b!7105254))

(assert (= (or b!7105249 b!7105252) bm!647544))

(assert (= (or b!7105249 b!7105252) bm!647545))

(assert (= (or b!7105246 bm!647545) bm!647540))

(assert (= (or b!7105246 bm!647544) bm!647541))

(assert (= (or b!7105247 bm!647540) bm!647542))

(assert (= (or b!7105247 b!7105246) bm!647543))

(assert (=> b!7105248 m!7828582))

(declare-fun m!7828630 () Bool)

(assert (=> bm!647541 m!7828630))

(declare-fun m!7828632 () Bool)

(assert (=> bm!647543 m!7828632))

(declare-fun m!7828634 () Bool)

(assert (=> b!7105250 m!7828634))

(declare-fun m!7828636 () Bool)

(assert (=> bm!647542 m!7828636))

(assert (=> b!7105122 d!2219145))

(declare-fun bs!1884595 () Bool)

(declare-fun d!2219147 () Bool)

(assert (= bs!1884595 (and d!2219147 b!7105122)))

(declare-fun lambda!431453 () Int)

(assert (=> bs!1884595 (= lambda!431453 lambda!431425)))

(declare-fun bs!1884596 () Bool)

(assert (= bs!1884596 (and d!2219147 d!2219131)))

(assert (=> bs!1884596 (= lambda!431453 lambda!431446)))

(declare-fun bs!1884597 () Bool)

(assert (= bs!1884597 (and d!2219147 d!2219133)))

(assert (=> bs!1884597 (= lambda!431453 lambda!431447)))

(assert (=> d!2219147 (= (derivationStepZipperDown!2429 (regOne!36325 r!11554) (Context!13801 (++!16058 (exprs!7400 c!9994) (exprs!7400 auxCtx!45))) a!1901) (appendTo!921 (derivationStepZipperDown!2429 (regOne!36325 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2558810 () Unit!162483)

(assert (=> d!2219147 (= lt!2558810 (lemmaConcatPreservesForall!1191 (exprs!7400 c!9994) (exprs!7400 auxCtx!45) lambda!431453))))

(declare-fun lt!2558809 () Unit!162483)

(declare-fun choose!54801 (Context!13800 Regex!17906 C!36082 Context!13800) Unit!162483)

(assert (=> d!2219147 (= lt!2558809 (choose!54801 c!9994 (regOne!36325 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2219147 (validRegex!9179 (regOne!36325 r!11554))))

(assert (=> d!2219147 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!219 c!9994 (regOne!36325 r!11554) a!1901 auxCtx!45) lt!2558809)))

(declare-fun bs!1884598 () Bool)

(assert (= bs!1884598 d!2219147))

(assert (=> bs!1884598 m!7828502))

(declare-fun m!7828638 () Bool)

(assert (=> bs!1884598 m!7828638))

(assert (=> bs!1884598 m!7828502))

(declare-fun m!7828640 () Bool)

(assert (=> bs!1884598 m!7828640))

(declare-fun m!7828642 () Bool)

(assert (=> bs!1884598 m!7828642))

(declare-fun m!7828644 () Bool)

(assert (=> bs!1884598 m!7828644))

(assert (=> bs!1884598 m!7828532))

(declare-fun m!7828646 () Bool)

(assert (=> bs!1884598 m!7828646))

(assert (=> b!7105127 d!2219147))

(declare-fun bm!647554 () Bool)

(declare-fun call!647560 () (Set Context!13800))

(declare-fun call!647561 () (Set Context!13800))

(assert (=> bm!647554 (= call!647560 call!647561)))

(declare-fun c!1325893 () Bool)

(declare-fun call!647559 () List!68867)

(declare-fun c!1325896 () Bool)

(declare-fun bm!647555 () Bool)

(assert (=> bm!647555 (= call!647559 ($colon$colon!2770 (exprs!7400 c!9994) (ite (or c!1325893 c!1325896) (regTwo!36324 (regTwo!36325 r!11554)) (regTwo!36325 r!11554))))))

(declare-fun b!7105277 () Bool)

(declare-fun e!4270469 () (Set Context!13800))

(declare-fun e!4270465 () (Set Context!13800))

(assert (=> b!7105277 (= e!4270469 e!4270465)))

(declare-fun c!1325894 () Bool)

(assert (=> b!7105277 (= c!1325894 (is-Union!17906 (regTwo!36325 r!11554)))))

(declare-fun b!7105278 () Bool)

(declare-fun c!1325897 () Bool)

(assert (=> b!7105278 (= c!1325897 (is-Star!17906 (regTwo!36325 r!11554)))))

(declare-fun e!4270466 () (Set Context!13800))

(declare-fun e!4270464 () (Set Context!13800))

(assert (=> b!7105278 (= e!4270466 e!4270464)))

(declare-fun call!647563 () List!68867)

(declare-fun bm!647556 () Bool)

(assert (=> bm!647556 (= call!647561 (derivationStepZipperDown!2429 (ite c!1325894 (regTwo!36325 (regTwo!36325 r!11554)) (ite c!1325893 (regTwo!36324 (regTwo!36325 r!11554)) (ite c!1325896 (regOne!36324 (regTwo!36325 r!11554)) (reg!18235 (regTwo!36325 r!11554))))) (ite (or c!1325894 c!1325893) c!9994 (Context!13801 call!647563)) a!1901))))

(declare-fun bm!647557 () Bool)

(declare-fun call!647564 () (Set Context!13800))

(assert (=> bm!647557 (= call!647564 (derivationStepZipperDown!2429 (ite c!1325894 (regOne!36325 (regTwo!36325 r!11554)) (regOne!36324 (regTwo!36325 r!11554))) (ite c!1325894 c!9994 (Context!13801 call!647559)) a!1901))))

(declare-fun b!7105279 () Bool)

(declare-fun e!4270468 () (Set Context!13800))

(assert (=> b!7105279 (= e!4270468 (set.union call!647564 call!647560))))

(declare-fun b!7105280 () Bool)

(assert (=> b!7105280 (= e!4270465 (set.union call!647564 call!647561))))

(declare-fun bm!647558 () Bool)

(assert (=> bm!647558 (= call!647563 call!647559)))

(declare-fun b!7105281 () Bool)

(assert (=> b!7105281 (= e!4270469 (set.insert c!9994 (as set.empty (Set Context!13800))))))

(declare-fun b!7105282 () Bool)

(declare-fun call!647562 () (Set Context!13800))

(assert (=> b!7105282 (= e!4270466 call!647562)))

(declare-fun d!2219149 () Bool)

(declare-fun c!1325895 () Bool)

(assert (=> d!2219149 (= c!1325895 (and (is-ElementMatch!17906 (regTwo!36325 r!11554)) (= (c!1325845 (regTwo!36325 r!11554)) a!1901)))))

(assert (=> d!2219149 (= (derivationStepZipperDown!2429 (regTwo!36325 r!11554) c!9994 a!1901) e!4270469)))

(declare-fun b!7105283 () Bool)

(declare-fun e!4270467 () Bool)

(assert (=> b!7105283 (= e!4270467 (nullable!7543 (regOne!36324 (regTwo!36325 r!11554))))))

(declare-fun b!7105284 () Bool)

(assert (=> b!7105284 (= e!4270468 e!4270466)))

(assert (=> b!7105284 (= c!1325896 (is-Concat!26751 (regTwo!36325 r!11554)))))

(declare-fun bm!647559 () Bool)

(assert (=> bm!647559 (= call!647562 call!647560)))

(declare-fun b!7105285 () Bool)

(assert (=> b!7105285 (= e!4270464 call!647562)))

(declare-fun b!7105286 () Bool)

(assert (=> b!7105286 (= c!1325893 e!4270467)))

(declare-fun res!2900487 () Bool)

(assert (=> b!7105286 (=> (not res!2900487) (not e!4270467))))

(assert (=> b!7105286 (= res!2900487 (is-Concat!26751 (regTwo!36325 r!11554)))))

(assert (=> b!7105286 (= e!4270465 e!4270468)))

(declare-fun b!7105287 () Bool)

(assert (=> b!7105287 (= e!4270464 (as set.empty (Set Context!13800)))))

(assert (= (and d!2219149 c!1325895) b!7105281))

(assert (= (and d!2219149 (not c!1325895)) b!7105277))

(assert (= (and b!7105277 c!1325894) b!7105280))

(assert (= (and b!7105277 (not c!1325894)) b!7105286))

(assert (= (and b!7105286 res!2900487) b!7105283))

(assert (= (and b!7105286 c!1325893) b!7105279))

(assert (= (and b!7105286 (not c!1325893)) b!7105284))

(assert (= (and b!7105284 c!1325896) b!7105282))

(assert (= (and b!7105284 (not c!1325896)) b!7105278))

(assert (= (and b!7105278 c!1325897) b!7105285))

(assert (= (and b!7105278 (not c!1325897)) b!7105287))

(assert (= (or b!7105282 b!7105285) bm!647558))

(assert (= (or b!7105282 b!7105285) bm!647559))

(assert (= (or b!7105279 bm!647559) bm!647554))

(assert (= (or b!7105279 bm!647558) bm!647555))

(assert (= (or b!7105280 bm!647554) bm!647556))

(assert (= (or b!7105280 b!7105279) bm!647557))

(declare-fun m!7828648 () Bool)

(assert (=> b!7105281 m!7828648))

(declare-fun m!7828650 () Bool)

(assert (=> bm!647555 m!7828650))

(declare-fun m!7828652 () Bool)

(assert (=> bm!647557 m!7828652))

(assert (=> b!7105283 m!7828626))

(declare-fun m!7828654 () Bool)

(assert (=> bm!647556 m!7828654))

(assert (=> b!7105127 d!2219149))

(declare-fun d!2219151 () Bool)

(declare-fun choose!54802 ((Set Context!13800) Int) (Set Context!13800))

(assert (=> d!2219151 (= (map!16250 lt!2558745 lambda!431424) (choose!54802 lt!2558745 lambda!431424))))

(declare-fun bs!1884599 () Bool)

(assert (= bs!1884599 d!2219151))

(declare-fun m!7828656 () Bool)

(assert (=> bs!1884599 m!7828656))

(assert (=> b!7105127 d!2219151))

(declare-fun bs!1884600 () Bool)

(declare-fun d!2219153 () Bool)

(assert (= bs!1884600 (and d!2219153 b!7105122)))

(declare-fun lambda!431454 () Int)

(assert (=> bs!1884600 (= lambda!431454 lambda!431425)))

(declare-fun bs!1884601 () Bool)

(assert (= bs!1884601 (and d!2219153 d!2219131)))

(assert (=> bs!1884601 (= lambda!431454 lambda!431446)))

(declare-fun bs!1884602 () Bool)

(assert (= bs!1884602 (and d!2219153 d!2219133)))

(assert (=> bs!1884602 (= lambda!431454 lambda!431447)))

(declare-fun bs!1884603 () Bool)

(assert (= bs!1884603 (and d!2219153 d!2219147)))

(assert (=> bs!1884603 (= lambda!431454 lambda!431453)))

(assert (=> d!2219153 (= (derivationStepZipperDown!2429 (regTwo!36325 r!11554) (Context!13801 (++!16058 (exprs!7400 c!9994) (exprs!7400 auxCtx!45))) a!1901) (appendTo!921 (derivationStepZipperDown!2429 (regTwo!36325 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2558812 () Unit!162483)

(assert (=> d!2219153 (= lt!2558812 (lemmaConcatPreservesForall!1191 (exprs!7400 c!9994) (exprs!7400 auxCtx!45) lambda!431454))))

(declare-fun lt!2558811 () Unit!162483)

(assert (=> d!2219153 (= lt!2558811 (choose!54801 c!9994 (regTwo!36325 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2219153 (validRegex!9179 (regTwo!36325 r!11554))))

(assert (=> d!2219153 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!219 c!9994 (regTwo!36325 r!11554) a!1901 auxCtx!45) lt!2558811)))

(declare-fun bs!1884604 () Bool)

(assert (= bs!1884604 d!2219153))

(assert (=> bs!1884604 m!7828498))

(declare-fun m!7828658 () Bool)

(assert (=> bs!1884604 m!7828658))

(assert (=> bs!1884604 m!7828498))

(declare-fun m!7828660 () Bool)

(assert (=> bs!1884604 m!7828660))

(declare-fun m!7828662 () Bool)

(assert (=> bs!1884604 m!7828662))

(declare-fun m!7828664 () Bool)

(assert (=> bs!1884604 m!7828664))

(assert (=> bs!1884604 m!7828532))

(declare-fun m!7828666 () Bool)

(assert (=> bs!1884604 m!7828666))

(assert (=> b!7105127 d!2219153))

(declare-fun d!2219155 () Bool)

(assert (=> d!2219155 (= (set.union (map!16250 lt!2558747 lambda!431424) (map!16250 lt!2558745 lambda!431424)) (map!16250 (set.union lt!2558747 lt!2558745) lambda!431424))))

(declare-fun lt!2558815 () Unit!162483)

(declare-fun choose!54804 ((Set Context!13800) (Set Context!13800) Int) Unit!162483)

(assert (=> d!2219155 (= lt!2558815 (choose!54804 lt!2558747 lt!2558745 lambda!431424))))

(assert (=> d!2219155 (= (lemmaMapAssociative!25 lt!2558747 lt!2558745 lambda!431424) lt!2558815)))

(declare-fun bs!1884605 () Bool)

(assert (= bs!1884605 d!2219155))

(assert (=> bs!1884605 m!7828516))

(assert (=> bs!1884605 m!7828514))

(assert (=> bs!1884605 m!7828500))

(declare-fun m!7828668 () Bool)

(assert (=> bs!1884605 m!7828668))

(assert (=> b!7105127 d!2219155))

(declare-fun d!2219157 () Bool)

(assert (=> d!2219157 (= (map!16250 (set.union lt!2558747 lt!2558745) lambda!431424) (choose!54802 (set.union lt!2558747 lt!2558745) lambda!431424))))

(declare-fun bs!1884606 () Bool)

(assert (= bs!1884606 d!2219157))

(declare-fun m!7828670 () Bool)

(assert (=> bs!1884606 m!7828670))

(assert (=> b!7105127 d!2219157))

(declare-fun d!2219159 () Bool)

(assert (=> d!2219159 (= (map!16250 lt!2558747 lambda!431424) (choose!54802 lt!2558747 lambda!431424))))

(declare-fun bs!1884607 () Bool)

(assert (= bs!1884607 d!2219159))

(declare-fun m!7828672 () Bool)

(assert (=> bs!1884607 m!7828672))

(assert (=> b!7105127 d!2219159))

(declare-fun bs!1884608 () Bool)

(declare-fun d!2219161 () Bool)

(assert (= bs!1884608 (and d!2219161 b!7105128)))

(declare-fun lambda!431459 () Int)

(assert (=> bs!1884608 (= lambda!431459 lambda!431424)))

(assert (=> d!2219161 true))

(assert (=> d!2219161 (= (appendTo!921 lt!2558745 auxCtx!45) (map!16250 lt!2558745 lambda!431459))))

(declare-fun bs!1884609 () Bool)

(assert (= bs!1884609 d!2219161))

(declare-fun m!7828674 () Bool)

(assert (=> bs!1884609 m!7828674))

(assert (=> b!7105127 d!2219161))

(assert (=> b!7105127 d!2219137))

(declare-fun bs!1884610 () Bool)

(declare-fun d!2219163 () Bool)

(assert (= bs!1884610 (and d!2219163 b!7105128)))

(declare-fun lambda!431460 () Int)

(assert (=> bs!1884610 (= lambda!431460 lambda!431424)))

(declare-fun bs!1884611 () Bool)

(assert (= bs!1884611 (and d!2219163 d!2219161)))

(assert (=> bs!1884611 (= lambda!431460 lambda!431459)))

(assert (=> d!2219163 true))

(assert (=> d!2219163 (= (appendTo!921 lt!2558747 auxCtx!45) (map!16250 lt!2558747 lambda!431460))))

(declare-fun bs!1884612 () Bool)

(assert (= bs!1884612 d!2219163))

(declare-fun m!7828676 () Bool)

(assert (=> bs!1884612 m!7828676))

(assert (=> b!7105127 d!2219163))

(declare-fun bm!647564 () Bool)

(declare-fun call!647570 () (Set Context!13800))

(declare-fun call!647571 () (Set Context!13800))

(assert (=> bm!647564 (= call!647570 call!647571)))

(declare-fun bm!647565 () Bool)

(declare-fun c!1325899 () Bool)

(declare-fun c!1325902 () Bool)

(declare-fun call!647569 () List!68867)

(assert (=> bm!647565 (= call!647569 ($colon$colon!2770 (exprs!7400 c!9994) (ite (or c!1325899 c!1325902) (regTwo!36324 (regOne!36325 r!11554)) (regOne!36325 r!11554))))))

(declare-fun b!7105288 () Bool)

(declare-fun e!4270475 () (Set Context!13800))

(declare-fun e!4270471 () (Set Context!13800))

(assert (=> b!7105288 (= e!4270475 e!4270471)))

(declare-fun c!1325900 () Bool)

(assert (=> b!7105288 (= c!1325900 (is-Union!17906 (regOne!36325 r!11554)))))

(declare-fun b!7105289 () Bool)

(declare-fun c!1325903 () Bool)

(assert (=> b!7105289 (= c!1325903 (is-Star!17906 (regOne!36325 r!11554)))))

(declare-fun e!4270472 () (Set Context!13800))

(declare-fun e!4270470 () (Set Context!13800))

(assert (=> b!7105289 (= e!4270472 e!4270470)))

(declare-fun call!647573 () List!68867)

(declare-fun bm!647566 () Bool)

(assert (=> bm!647566 (= call!647571 (derivationStepZipperDown!2429 (ite c!1325900 (regTwo!36325 (regOne!36325 r!11554)) (ite c!1325899 (regTwo!36324 (regOne!36325 r!11554)) (ite c!1325902 (regOne!36324 (regOne!36325 r!11554)) (reg!18235 (regOne!36325 r!11554))))) (ite (or c!1325900 c!1325899) c!9994 (Context!13801 call!647573)) a!1901))))

(declare-fun call!647574 () (Set Context!13800))

(declare-fun bm!647567 () Bool)

(assert (=> bm!647567 (= call!647574 (derivationStepZipperDown!2429 (ite c!1325900 (regOne!36325 (regOne!36325 r!11554)) (regOne!36324 (regOne!36325 r!11554))) (ite c!1325900 c!9994 (Context!13801 call!647569)) a!1901))))

(declare-fun b!7105290 () Bool)

(declare-fun e!4270474 () (Set Context!13800))

(assert (=> b!7105290 (= e!4270474 (set.union call!647574 call!647570))))

(declare-fun b!7105291 () Bool)

(assert (=> b!7105291 (= e!4270471 (set.union call!647574 call!647571))))

(declare-fun bm!647568 () Bool)

(assert (=> bm!647568 (= call!647573 call!647569)))

(declare-fun b!7105292 () Bool)

(assert (=> b!7105292 (= e!4270475 (set.insert c!9994 (as set.empty (Set Context!13800))))))

(declare-fun b!7105293 () Bool)

(declare-fun call!647572 () (Set Context!13800))

(assert (=> b!7105293 (= e!4270472 call!647572)))

(declare-fun d!2219165 () Bool)

(declare-fun c!1325901 () Bool)

(assert (=> d!2219165 (= c!1325901 (and (is-ElementMatch!17906 (regOne!36325 r!11554)) (= (c!1325845 (regOne!36325 r!11554)) a!1901)))))

(assert (=> d!2219165 (= (derivationStepZipperDown!2429 (regOne!36325 r!11554) c!9994 a!1901) e!4270475)))

(declare-fun b!7105294 () Bool)

(declare-fun e!4270473 () Bool)

(assert (=> b!7105294 (= e!4270473 (nullable!7543 (regOne!36324 (regOne!36325 r!11554))))))

(declare-fun b!7105295 () Bool)

(assert (=> b!7105295 (= e!4270474 e!4270472)))

(assert (=> b!7105295 (= c!1325902 (is-Concat!26751 (regOne!36325 r!11554)))))

(declare-fun bm!647569 () Bool)

(assert (=> bm!647569 (= call!647572 call!647570)))

(declare-fun b!7105296 () Bool)

(assert (=> b!7105296 (= e!4270470 call!647572)))

(declare-fun b!7105297 () Bool)

(assert (=> b!7105297 (= c!1325899 e!4270473)))

(declare-fun res!2900488 () Bool)

(assert (=> b!7105297 (=> (not res!2900488) (not e!4270473))))

(assert (=> b!7105297 (= res!2900488 (is-Concat!26751 (regOne!36325 r!11554)))))

(assert (=> b!7105297 (= e!4270471 e!4270474)))

(declare-fun b!7105298 () Bool)

(assert (=> b!7105298 (= e!4270470 (as set.empty (Set Context!13800)))))

(assert (= (and d!2219165 c!1325901) b!7105292))

(assert (= (and d!2219165 (not c!1325901)) b!7105288))

(assert (= (and b!7105288 c!1325900) b!7105291))

(assert (= (and b!7105288 (not c!1325900)) b!7105297))

(assert (= (and b!7105297 res!2900488) b!7105294))

(assert (= (and b!7105297 c!1325899) b!7105290))

(assert (= (and b!7105297 (not c!1325899)) b!7105295))

(assert (= (and b!7105295 c!1325902) b!7105293))

(assert (= (and b!7105295 (not c!1325902)) b!7105289))

(assert (= (and b!7105289 c!1325903) b!7105296))

(assert (= (and b!7105289 (not c!1325903)) b!7105298))

(assert (= (or b!7105293 b!7105296) bm!647568))

(assert (= (or b!7105293 b!7105296) bm!647569))

(assert (= (or b!7105290 bm!647569) bm!647564))

(assert (= (or b!7105290 bm!647568) bm!647565))

(assert (= (or b!7105291 bm!647564) bm!647566))

(assert (= (or b!7105291 b!7105290) bm!647567))

(assert (=> b!7105292 m!7828648))

(declare-fun m!7828678 () Bool)

(assert (=> bm!647565 m!7828678))

(declare-fun m!7828680 () Bool)

(assert (=> bm!647567 m!7828680))

(assert (=> b!7105294 m!7828634))

(declare-fun m!7828682 () Bool)

(assert (=> bm!647566 m!7828682))

(assert (=> b!7105127 d!2219165))

(declare-fun bs!1884613 () Bool)

(declare-fun d!2219167 () Bool)

(assert (= bs!1884613 (and d!2219167 d!2219131)))

(declare-fun lambda!431461 () Int)

(assert (=> bs!1884613 (= lambda!431461 lambda!431446)))

(declare-fun bs!1884614 () Bool)

(assert (= bs!1884614 (and d!2219167 d!2219147)))

(assert (=> bs!1884614 (= lambda!431461 lambda!431453)))

(declare-fun bs!1884615 () Bool)

(assert (= bs!1884615 (and d!2219167 b!7105122)))

(assert (=> bs!1884615 (= lambda!431461 lambda!431425)))

(declare-fun bs!1884616 () Bool)

(assert (= bs!1884616 (and d!2219167 d!2219133)))

(assert (=> bs!1884616 (= lambda!431461 lambda!431447)))

(declare-fun bs!1884617 () Bool)

(assert (= bs!1884617 (and d!2219167 d!2219153)))

(assert (=> bs!1884617 (= lambda!431461 lambda!431454)))

(assert (=> d!2219167 (= (inv!87629 lt!2558737) (forall!16809 (exprs!7400 lt!2558737) lambda!431461))))

(declare-fun bs!1884618 () Bool)

(assert (= bs!1884618 d!2219167))

(declare-fun m!7828684 () Bool)

(assert (=> bs!1884618 m!7828684))

(assert (=> b!7105127 d!2219167))

(declare-fun b!7105314 () Bool)

(declare-fun e!4270484 () Bool)

(declare-fun tp!1953857 () Bool)

(declare-fun tp!1953858 () Bool)

(assert (=> b!7105314 (= e!4270484 (and tp!1953857 tp!1953858))))

(assert (=> b!7105125 (= tp!1953829 e!4270484)))

(assert (= (and b!7105125 (is-Cons!68743 (exprs!7400 c!9994))) b!7105314))

(declare-fun b!7105328 () Bool)

(declare-fun e!4270487 () Bool)

(declare-fun tp!1953871 () Bool)

(declare-fun tp!1953873 () Bool)

(assert (=> b!7105328 (= e!4270487 (and tp!1953871 tp!1953873))))

(declare-fun b!7105325 () Bool)

(assert (=> b!7105325 (= e!4270487 tp_is_empty!45045)))

(declare-fun b!7105327 () Bool)

(declare-fun tp!1953872 () Bool)

(assert (=> b!7105327 (= e!4270487 tp!1953872)))

(assert (=> b!7105124 (= tp!1953827 e!4270487)))

(declare-fun b!7105326 () Bool)

(declare-fun tp!1953870 () Bool)

(declare-fun tp!1953869 () Bool)

(assert (=> b!7105326 (= e!4270487 (and tp!1953870 tp!1953869))))

(assert (= (and b!7105124 (is-ElementMatch!17906 (reg!18235 r!11554))) b!7105325))

(assert (= (and b!7105124 (is-Concat!26751 (reg!18235 r!11554))) b!7105326))

(assert (= (and b!7105124 (is-Star!17906 (reg!18235 r!11554))) b!7105327))

(assert (= (and b!7105124 (is-Union!17906 (reg!18235 r!11554))) b!7105328))

(declare-fun b!7105329 () Bool)

(declare-fun e!4270488 () Bool)

(declare-fun tp!1953874 () Bool)

(declare-fun tp!1953875 () Bool)

(assert (=> b!7105329 (= e!4270488 (and tp!1953874 tp!1953875))))

(assert (=> b!7105121 (= tp!1953828 e!4270488)))

(assert (= (and b!7105121 (is-Cons!68743 (exprs!7400 auxCtx!45))) b!7105329))

(declare-fun b!7105333 () Bool)

(declare-fun e!4270489 () Bool)

(declare-fun tp!1953878 () Bool)

(declare-fun tp!1953880 () Bool)

(assert (=> b!7105333 (= e!4270489 (and tp!1953878 tp!1953880))))

(declare-fun b!7105330 () Bool)

(assert (=> b!7105330 (= e!4270489 tp_is_empty!45045)))

(declare-fun b!7105332 () Bool)

(declare-fun tp!1953879 () Bool)

(assert (=> b!7105332 (= e!4270489 tp!1953879)))

(assert (=> b!7105129 (= tp!1953826 e!4270489)))

(declare-fun b!7105331 () Bool)

(declare-fun tp!1953877 () Bool)

(declare-fun tp!1953876 () Bool)

(assert (=> b!7105331 (= e!4270489 (and tp!1953877 tp!1953876))))

(assert (= (and b!7105129 (is-ElementMatch!17906 (regOne!36324 r!11554))) b!7105330))

(assert (= (and b!7105129 (is-Concat!26751 (regOne!36324 r!11554))) b!7105331))

(assert (= (and b!7105129 (is-Star!17906 (regOne!36324 r!11554))) b!7105332))

(assert (= (and b!7105129 (is-Union!17906 (regOne!36324 r!11554))) b!7105333))

(declare-fun b!7105337 () Bool)

(declare-fun e!4270490 () Bool)

(declare-fun tp!1953883 () Bool)

(declare-fun tp!1953885 () Bool)

(assert (=> b!7105337 (= e!4270490 (and tp!1953883 tp!1953885))))

(declare-fun b!7105334 () Bool)

(assert (=> b!7105334 (= e!4270490 tp_is_empty!45045)))

(declare-fun b!7105336 () Bool)

(declare-fun tp!1953884 () Bool)

(assert (=> b!7105336 (= e!4270490 tp!1953884)))

(assert (=> b!7105129 (= tp!1953825 e!4270490)))

(declare-fun b!7105335 () Bool)

(declare-fun tp!1953882 () Bool)

(declare-fun tp!1953881 () Bool)

(assert (=> b!7105335 (= e!4270490 (and tp!1953882 tp!1953881))))

(assert (= (and b!7105129 (is-ElementMatch!17906 (regTwo!36324 r!11554))) b!7105334))

(assert (= (and b!7105129 (is-Concat!26751 (regTwo!36324 r!11554))) b!7105335))

(assert (= (and b!7105129 (is-Star!17906 (regTwo!36324 r!11554))) b!7105336))

(assert (= (and b!7105129 (is-Union!17906 (regTwo!36324 r!11554))) b!7105337))

(declare-fun b!7105341 () Bool)

(declare-fun e!4270491 () Bool)

(declare-fun tp!1953888 () Bool)

(declare-fun tp!1953890 () Bool)

(assert (=> b!7105341 (= e!4270491 (and tp!1953888 tp!1953890))))

(declare-fun b!7105338 () Bool)

(assert (=> b!7105338 (= e!4270491 tp_is_empty!45045)))

(declare-fun b!7105340 () Bool)

(declare-fun tp!1953889 () Bool)

(assert (=> b!7105340 (= e!4270491 tp!1953889)))

(assert (=> b!7105123 (= tp!1953830 e!4270491)))

(declare-fun b!7105339 () Bool)

(declare-fun tp!1953887 () Bool)

(declare-fun tp!1953886 () Bool)

(assert (=> b!7105339 (= e!4270491 (and tp!1953887 tp!1953886))))

(assert (= (and b!7105123 (is-ElementMatch!17906 (regOne!36325 r!11554))) b!7105338))

(assert (= (and b!7105123 (is-Concat!26751 (regOne!36325 r!11554))) b!7105339))

(assert (= (and b!7105123 (is-Star!17906 (regOne!36325 r!11554))) b!7105340))

(assert (= (and b!7105123 (is-Union!17906 (regOne!36325 r!11554))) b!7105341))

(declare-fun b!7105345 () Bool)

(declare-fun e!4270492 () Bool)

(declare-fun tp!1953893 () Bool)

(declare-fun tp!1953895 () Bool)

(assert (=> b!7105345 (= e!4270492 (and tp!1953893 tp!1953895))))

(declare-fun b!7105342 () Bool)

(assert (=> b!7105342 (= e!4270492 tp_is_empty!45045)))

(declare-fun b!7105344 () Bool)

(declare-fun tp!1953894 () Bool)

(assert (=> b!7105344 (= e!4270492 tp!1953894)))

(assert (=> b!7105123 (= tp!1953831 e!4270492)))

(declare-fun b!7105343 () Bool)

(declare-fun tp!1953892 () Bool)

(declare-fun tp!1953891 () Bool)

(assert (=> b!7105343 (= e!4270492 (and tp!1953892 tp!1953891))))

(assert (= (and b!7105123 (is-ElementMatch!17906 (regTwo!36325 r!11554))) b!7105342))

(assert (= (and b!7105123 (is-Concat!26751 (regTwo!36325 r!11554))) b!7105343))

(assert (= (and b!7105123 (is-Star!17906 (regTwo!36325 r!11554))) b!7105344))

(assert (= (and b!7105123 (is-Union!17906 (regTwo!36325 r!11554))) b!7105345))

(push 1)

(assert (not d!2219161))

(assert (not bm!647541))

(assert (not d!2219131))

(assert (not b!7105239))

(assert (not b!7105283))

(assert (not b!7105341))

(assert (not b!7105335))

(assert (not bm!647567))

(assert (not bm!647530))

(assert (not b!7105332))

(assert (not b!7105216))

(assert (not d!2219167))

(assert (not b!7105328))

(assert (not b!7105340))

(assert (not bm!647513))

(assert (not b!7105336))

(assert (not b!7105250))

(assert (not b!7105314))

(assert (not d!2219157))

(assert (not b!7105345))

(assert (not bm!647514))

(assert (not bm!647566))

(assert (not b!7105329))

(assert (not b!7105331))

(assert (not d!2219155))

(assert (not b!7105337))

(assert (not bm!647565))

(assert (not b!7105294))

(assert (not bm!647529))

(assert (not bm!647543))

(assert (not b!7105231))

(assert (not bm!647556))

(assert (not d!2219141))

(assert (not b!7105187))

(assert (not b!7105326))

(assert (not bm!647531))

(assert (not d!2219159))

(assert (not d!2219151))

(assert (not b!7105344))

(assert (not d!2219163))

(assert tp_is_empty!45045)

(assert (not d!2219153))

(assert (not b!7105333))

(assert (not bm!647555))

(assert (not d!2219147))

(assert (not bm!647537))

(assert (not bm!647535))

(assert (not bm!647536))

(assert (not d!2219133))

(assert (not bm!647557))

(assert (not bm!647542))

(assert (not b!7105230))

(assert (not b!7105327))

(assert (not d!2219137))

(assert (not b!7105343))

(assert (not b!7105339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

