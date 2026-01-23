; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544480 () Bool)

(assert start!544480)

(declare-fun b!5143702 () Bool)

(declare-fun e!3207509 () Bool)

(declare-fun tp!1436351 () Bool)

(declare-fun tp!1436350 () Bool)

(assert (=> b!5143702 (= e!3207509 (and tp!1436351 tp!1436350))))

(declare-fun b!5143703 () Bool)

(declare-fun e!3207513 () Bool)

(declare-datatypes ((C!29212 0))(
  ( (C!29213 (val!24258 Int)) )
))
(declare-datatypes ((Regex!14473 0))(
  ( (ElementMatch!14473 (c!885504 C!29212)) (Concat!23318 (regOne!29458 Regex!14473) (regTwo!29458 Regex!14473)) (EmptyExpr!14473) (Star!14473 (reg!14802 Regex!14473)) (EmptyLang!14473) (Union!14473 (regOne!29459 Regex!14473) (regTwo!29459 Regex!14473)) )
))
(declare-datatypes ((List!59857 0))(
  ( (Nil!59733) (Cons!59733 (h!66181 Regex!14473) (t!372892 List!59857)) )
))
(declare-datatypes ((Context!7714 0))(
  ( (Context!7715 (exprs!4357 List!59857)) )
))
(declare-fun ctx!100 () Context!7714)

(declare-fun lostCause!1498 (Context!7714) Bool)

(assert (=> b!5143703 (= e!3207513 (lostCause!1498 ctx!100))))

(declare-fun b!5143704 () Bool)

(declare-fun e!3207512 () Bool)

(declare-fun tp!1436355 () Bool)

(assert (=> b!5143704 (= e!3207512 tp!1436355)))

(declare-fun b!5143705 () Bool)

(declare-fun tp!1436353 () Bool)

(assert (=> b!5143705 (= e!3207509 tp!1436353)))

(declare-fun b!5143706 () Bool)

(declare-fun tp_is_empty!38095 () Bool)

(assert (=> b!5143706 (= e!3207509 tp_is_empty!38095)))

(declare-fun res!2189962 () Bool)

(declare-fun e!3207510 () Bool)

(assert (=> start!544480 (=> (not res!2189962) (not e!3207510))))

(declare-fun expr!117 () Regex!14473)

(declare-fun validRegex!6328 (Regex!14473) Bool)

(assert (=> start!544480 (= res!2189962 (validRegex!6328 expr!117))))

(assert (=> start!544480 e!3207510))

(assert (=> start!544480 e!3207509))

(declare-fun inv!79363 (Context!7714) Bool)

(assert (=> start!544480 (and (inv!79363 ctx!100) e!3207512)))

(assert (=> start!544480 tp_is_empty!38095))

(declare-fun b!5143707 () Bool)

(declare-fun e!3207511 () Bool)

(assert (=> b!5143707 (= e!3207511 (lostCause!1498 ctx!100))))

(declare-fun b!5143708 () Bool)

(declare-fun res!2189966 () Bool)

(assert (=> b!5143708 (=> res!2189966 e!3207513)))

(declare-fun lostCause!1499 (Regex!14473) Bool)

(assert (=> b!5143708 (= res!2189966 (lostCause!1499 (regTwo!29459 expr!117)))))

(declare-fun b!5143709 () Bool)

(declare-fun res!2189964 () Bool)

(assert (=> b!5143709 (=> (not res!2189964) (not e!3207510))))

(declare-fun a!1296 () C!29212)

(get-info :version)

(assert (=> b!5143709 (= res!2189964 (and (or (not ((_ is ElementMatch!14473) expr!117)) (not (= (c!885504 expr!117) a!1296))) ((_ is Union!14473) expr!117)))))

(declare-fun b!5143710 () Bool)

(declare-fun res!2189967 () Bool)

(assert (=> b!5143710 (=> (not res!2189967) (not e!3207510))))

(assert (=> b!5143710 (= res!2189967 e!3207511)))

(declare-fun res!2189963 () Bool)

(assert (=> b!5143710 (=> res!2189963 e!3207511)))

(assert (=> b!5143710 (= res!2189963 (lostCause!1499 expr!117))))

(declare-fun b!5143711 () Bool)

(declare-fun tp!1436352 () Bool)

(declare-fun tp!1436354 () Bool)

(assert (=> b!5143711 (= e!3207509 (and tp!1436352 tp!1436354))))

(declare-fun b!5143712 () Bool)

(assert (=> b!5143712 (= e!3207510 (not e!3207513))))

(declare-fun res!2189965 () Bool)

(assert (=> b!5143712 (=> res!2189965 e!3207513)))

(assert (=> b!5143712 (= res!2189965 (not (validRegex!6328 (regTwo!29459 expr!117))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1271 ((InoxSet Context!7714)) Bool)

(declare-fun derivationStepZipperDown!152 (Regex!14473 Context!7714 C!29212) (InoxSet Context!7714))

(assert (=> b!5143712 (lostCauseZipper!1271 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151117 0))(
  ( (Unit!151118) )
))
(declare-fun lt!2120575 () Unit!151117)

(declare-fun lemmaLostCauseFixPointDerivDown!42 (Regex!14473 Context!7714 C!29212) Unit!151117)

(assert (=> b!5143712 (= lt!2120575 (lemmaLostCauseFixPointDerivDown!42 (regOne!29459 expr!117) ctx!100 a!1296))))

(assert (= (and start!544480 res!2189962) b!5143710))

(assert (= (and b!5143710 (not res!2189963)) b!5143707))

(assert (= (and b!5143710 res!2189967) b!5143709))

(assert (= (and b!5143709 res!2189964) b!5143712))

(assert (= (and b!5143712 (not res!2189965)) b!5143708))

(assert (= (and b!5143708 (not res!2189966)) b!5143703))

(assert (= (and start!544480 ((_ is ElementMatch!14473) expr!117)) b!5143706))

(assert (= (and start!544480 ((_ is Concat!23318) expr!117)) b!5143702))

(assert (= (and start!544480 ((_ is Star!14473) expr!117)) b!5143705))

(assert (= (and start!544480 ((_ is Union!14473) expr!117)) b!5143711))

(assert (= start!544480 b!5143704))

(declare-fun m!6205376 () Bool)

(assert (=> b!5143710 m!6205376))

(declare-fun m!6205378 () Bool)

(assert (=> start!544480 m!6205378))

(declare-fun m!6205380 () Bool)

(assert (=> start!544480 m!6205380))

(declare-fun m!6205382 () Bool)

(assert (=> b!5143703 m!6205382))

(assert (=> b!5143707 m!6205382))

(declare-fun m!6205384 () Bool)

(assert (=> b!5143708 m!6205384))

(declare-fun m!6205386 () Bool)

(assert (=> b!5143712 m!6205386))

(declare-fun m!6205388 () Bool)

(assert (=> b!5143712 m!6205388))

(assert (=> b!5143712 m!6205388))

(declare-fun m!6205390 () Bool)

(assert (=> b!5143712 m!6205390))

(declare-fun m!6205392 () Bool)

(assert (=> b!5143712 m!6205392))

(check-sat (not b!5143704) (not start!544480) (not b!5143707) tp_is_empty!38095 (not b!5143711) (not b!5143708) (not b!5143705) (not b!5143712) (not b!5143710) (not b!5143703) (not b!5143702))
(check-sat)
(get-model)

(declare-fun d!1663074 () Bool)

(declare-fun lostCauseFct!354 (Regex!14473) Bool)

(assert (=> d!1663074 (= (lostCause!1499 expr!117) (lostCauseFct!354 expr!117))))

(declare-fun bs!1200917 () Bool)

(assert (= bs!1200917 d!1663074))

(declare-fun m!6205394 () Bool)

(assert (=> bs!1200917 m!6205394))

(assert (=> b!5143710 d!1663074))

(declare-fun d!1663076 () Bool)

(assert (=> d!1663076 (= (lostCause!1499 (regTwo!29459 expr!117)) (lostCauseFct!354 (regTwo!29459 expr!117)))))

(declare-fun bs!1200918 () Bool)

(assert (= bs!1200918 d!1663076))

(declare-fun m!6205396 () Bool)

(assert (=> bs!1200918 m!6205396))

(assert (=> b!5143708 d!1663076))

(declare-fun d!1663078 () Bool)

(declare-fun lambda!256579 () Int)

(declare-fun exists!1793 (List!59857 Int) Bool)

(assert (=> d!1663078 (= (lostCause!1498 ctx!100) (exists!1793 (exprs!4357 ctx!100) lambda!256579))))

(declare-fun bs!1200924 () Bool)

(assert (= bs!1200924 d!1663078))

(declare-fun m!6205418 () Bool)

(assert (=> bs!1200924 m!6205418))

(assert (=> b!5143703 d!1663078))

(declare-fun bm!359184 () Bool)

(declare-fun call!359191 () Bool)

(declare-fun c!885525 () Bool)

(assert (=> bm!359184 (= call!359191 (validRegex!6328 (ite c!885525 (regTwo!29459 expr!117) (regTwo!29458 expr!117))))))

(declare-fun b!5143771 () Bool)

(declare-fun e!3207563 () Bool)

(assert (=> b!5143771 (= e!3207563 call!359191)))

(declare-fun b!5143772 () Bool)

(declare-fun e!3207566 () Bool)

(assert (=> b!5143772 (= e!3207566 e!3207563)))

(declare-fun res!2189998 () Bool)

(assert (=> b!5143772 (=> (not res!2189998) (not e!3207563))))

(declare-fun call!359189 () Bool)

(assert (=> b!5143772 (= res!2189998 call!359189)))

(declare-fun b!5143773 () Bool)

(declare-fun e!3207567 () Bool)

(assert (=> b!5143773 (= e!3207567 call!359191)))

(declare-fun b!5143774 () Bool)

(declare-fun res!2190000 () Bool)

(assert (=> b!5143774 (=> (not res!2190000) (not e!3207567))))

(assert (=> b!5143774 (= res!2190000 call!359189)))

(declare-fun e!3207562 () Bool)

(assert (=> b!5143774 (= e!3207562 e!3207567)))

(declare-fun bm!359185 () Bool)

(declare-fun call!359190 () Bool)

(assert (=> bm!359185 (= call!359189 call!359190)))

(declare-fun b!5143776 () Bool)

(declare-fun e!3207568 () Bool)

(assert (=> b!5143776 (= e!3207568 call!359190)))

(declare-fun b!5143777 () Bool)

(declare-fun e!3207564 () Bool)

(declare-fun e!3207565 () Bool)

(assert (=> b!5143777 (= e!3207564 e!3207565)))

(declare-fun c!885526 () Bool)

(assert (=> b!5143777 (= c!885526 ((_ is Star!14473) expr!117))))

(declare-fun b!5143778 () Bool)

(assert (=> b!5143778 (= e!3207565 e!3207562)))

(assert (=> b!5143778 (= c!885525 ((_ is Union!14473) expr!117))))

(declare-fun bm!359186 () Bool)

(assert (=> bm!359186 (= call!359190 (validRegex!6328 (ite c!885526 (reg!14802 expr!117) (ite c!885525 (regOne!29459 expr!117) (regOne!29458 expr!117)))))))

(declare-fun b!5143779 () Bool)

(assert (=> b!5143779 (= e!3207565 e!3207568)))

(declare-fun res!2190002 () Bool)

(declare-fun nullable!4829 (Regex!14473) Bool)

(assert (=> b!5143779 (= res!2190002 (not (nullable!4829 (reg!14802 expr!117))))))

(assert (=> b!5143779 (=> (not res!2190002) (not e!3207568))))

(declare-fun b!5143775 () Bool)

(declare-fun res!2189999 () Bool)

(assert (=> b!5143775 (=> res!2189999 e!3207566)))

(assert (=> b!5143775 (= res!2189999 (not ((_ is Concat!23318) expr!117)))))

(assert (=> b!5143775 (= e!3207562 e!3207566)))

(declare-fun d!1663094 () Bool)

(declare-fun res!2190001 () Bool)

(assert (=> d!1663094 (=> res!2190001 e!3207564)))

(assert (=> d!1663094 (= res!2190001 ((_ is ElementMatch!14473) expr!117))))

(assert (=> d!1663094 (= (validRegex!6328 expr!117) e!3207564)))

(assert (= (and d!1663094 (not res!2190001)) b!5143777))

(assert (= (and b!5143777 c!885526) b!5143779))

(assert (= (and b!5143777 (not c!885526)) b!5143778))

(assert (= (and b!5143779 res!2190002) b!5143776))

(assert (= (and b!5143778 c!885525) b!5143774))

(assert (= (and b!5143778 (not c!885525)) b!5143775))

(assert (= (and b!5143774 res!2190000) b!5143773))

(assert (= (and b!5143775 (not res!2189999)) b!5143772))

(assert (= (and b!5143772 res!2189998) b!5143771))

(assert (= (or b!5143773 b!5143771) bm!359184))

(assert (= (or b!5143774 b!5143772) bm!359185))

(assert (= (or b!5143776 bm!359185) bm!359186))

(declare-fun m!6205420 () Bool)

(assert (=> bm!359184 m!6205420))

(declare-fun m!6205422 () Bool)

(assert (=> bm!359186 m!6205422))

(declare-fun m!6205424 () Bool)

(assert (=> b!5143779 m!6205424))

(assert (=> start!544480 d!1663094))

(declare-fun bs!1200925 () Bool)

(declare-fun d!1663096 () Bool)

(assert (= bs!1200925 (and d!1663096 d!1663078)))

(declare-fun lambda!256594 () Int)

(assert (=> bs!1200925 (not (= lambda!256594 lambda!256579))))

(declare-fun forall!13932 (List!59857 Int) Bool)

(assert (=> d!1663096 (= (inv!79363 ctx!100) (forall!13932 (exprs!4357 ctx!100) lambda!256594))))

(declare-fun bs!1200926 () Bool)

(assert (= bs!1200926 d!1663096))

(declare-fun m!6205426 () Bool)

(assert (=> bs!1200926 m!6205426))

(assert (=> start!544480 d!1663096))

(declare-fun bm!359191 () Bool)

(declare-fun call!359198 () Bool)

(declare-fun c!885530 () Bool)

(assert (=> bm!359191 (= call!359198 (validRegex!6328 (ite c!885530 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117)))))))

(declare-fun b!5143782 () Bool)

(declare-fun e!3207571 () Bool)

(assert (=> b!5143782 (= e!3207571 call!359198)))

(declare-fun b!5143783 () Bool)

(declare-fun e!3207574 () Bool)

(assert (=> b!5143783 (= e!3207574 e!3207571)))

(declare-fun res!2190003 () Bool)

(assert (=> b!5143783 (=> (not res!2190003) (not e!3207571))))

(declare-fun call!359196 () Bool)

(assert (=> b!5143783 (= res!2190003 call!359196)))

(declare-fun b!5143784 () Bool)

(declare-fun e!3207575 () Bool)

(assert (=> b!5143784 (= e!3207575 call!359198)))

(declare-fun b!5143785 () Bool)

(declare-fun res!2190005 () Bool)

(assert (=> b!5143785 (=> (not res!2190005) (not e!3207575))))

(assert (=> b!5143785 (= res!2190005 call!359196)))

(declare-fun e!3207570 () Bool)

(assert (=> b!5143785 (= e!3207570 e!3207575)))

(declare-fun bm!359192 () Bool)

(declare-fun call!359197 () Bool)

(assert (=> bm!359192 (= call!359196 call!359197)))

(declare-fun b!5143787 () Bool)

(declare-fun e!3207576 () Bool)

(assert (=> b!5143787 (= e!3207576 call!359197)))

(declare-fun b!5143788 () Bool)

(declare-fun e!3207572 () Bool)

(declare-fun e!3207573 () Bool)

(assert (=> b!5143788 (= e!3207572 e!3207573)))

(declare-fun c!885531 () Bool)

(assert (=> b!5143788 (= c!885531 ((_ is Star!14473) (regTwo!29459 expr!117)))))

(declare-fun b!5143789 () Bool)

(assert (=> b!5143789 (= e!3207573 e!3207570)))

(assert (=> b!5143789 (= c!885530 ((_ is Union!14473) (regTwo!29459 expr!117)))))

(declare-fun bm!359193 () Bool)

(assert (=> bm!359193 (= call!359197 (validRegex!6328 (ite c!885531 (reg!14802 (regTwo!29459 expr!117)) (ite c!885530 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117))))))))

(declare-fun b!5143790 () Bool)

(assert (=> b!5143790 (= e!3207573 e!3207576)))

(declare-fun res!2190007 () Bool)

(assert (=> b!5143790 (= res!2190007 (not (nullable!4829 (reg!14802 (regTwo!29459 expr!117)))))))

(assert (=> b!5143790 (=> (not res!2190007) (not e!3207576))))

(declare-fun b!5143786 () Bool)

(declare-fun res!2190004 () Bool)

(assert (=> b!5143786 (=> res!2190004 e!3207574)))

(assert (=> b!5143786 (= res!2190004 (not ((_ is Concat!23318) (regTwo!29459 expr!117))))))

(assert (=> b!5143786 (= e!3207570 e!3207574)))

(declare-fun d!1663098 () Bool)

(declare-fun res!2190006 () Bool)

(assert (=> d!1663098 (=> res!2190006 e!3207572)))

(assert (=> d!1663098 (= res!2190006 ((_ is ElementMatch!14473) (regTwo!29459 expr!117)))))

(assert (=> d!1663098 (= (validRegex!6328 (regTwo!29459 expr!117)) e!3207572)))

(assert (= (and d!1663098 (not res!2190006)) b!5143788))

(assert (= (and b!5143788 c!885531) b!5143790))

(assert (= (and b!5143788 (not c!885531)) b!5143789))

(assert (= (and b!5143790 res!2190007) b!5143787))

(assert (= (and b!5143789 c!885530) b!5143785))

(assert (= (and b!5143789 (not c!885530)) b!5143786))

(assert (= (and b!5143785 res!2190005) b!5143784))

(assert (= (and b!5143786 (not res!2190004)) b!5143783))

(assert (= (and b!5143783 res!2190003) b!5143782))

(assert (= (or b!5143784 b!5143782) bm!359191))

(assert (= (or b!5143785 b!5143783) bm!359192))

(assert (= (or b!5143787 bm!359192) bm!359193))

(declare-fun m!6205428 () Bool)

(assert (=> bm!359191 m!6205428))

(declare-fun m!6205430 () Bool)

(assert (=> bm!359193 m!6205430))

(declare-fun m!6205432 () Bool)

(assert (=> b!5143790 m!6205432))

(assert (=> b!5143712 d!1663098))

(declare-fun bs!1200930 () Bool)

(declare-fun b!5143828 () Bool)

(declare-fun d!1663100 () Bool)

(assert (= bs!1200930 (and b!5143828 d!1663100)))

(declare-fun lambda!256611 () Int)

(declare-fun lambda!256610 () Int)

(assert (=> bs!1200930 (not (= lambda!256611 lambda!256610))))

(declare-fun bs!1200931 () Bool)

(declare-fun b!5143829 () Bool)

(assert (= bs!1200931 (and b!5143829 d!1663100)))

(declare-fun lambda!256612 () Int)

(assert (=> bs!1200931 (not (= lambda!256612 lambda!256610))))

(declare-fun bs!1200932 () Bool)

(assert (= bs!1200932 (and b!5143829 b!5143828)))

(assert (=> bs!1200932 (= lambda!256612 lambda!256611)))

(declare-datatypes ((List!59860 0))(
  ( (Nil!59736) (Cons!59736 (h!66184 Context!7714) (t!372895 List!59860)) )
))
(declare-fun lt!2120621 () List!59860)

(declare-fun call!359222 () Bool)

(declare-fun lt!2120619 () List!59860)

(declare-fun bm!359216 () Bool)

(declare-fun c!885557 () Bool)

(declare-fun exists!1795 (List!59860 Int) Bool)

(assert (=> bm!359216 (= call!359222 (exists!1795 (ite c!885557 lt!2120619 lt!2120621) (ite c!885557 lambda!256611 lambda!256612)))))

(declare-fun e!3207601 () Unit!151117)

(declare-fun Unit!151121 () Unit!151117)

(assert (=> b!5143828 (= e!3207601 Unit!151121)))

(declare-fun call!359221 () List!59860)

(assert (=> b!5143828 (= lt!2120619 call!359221)))

(declare-fun lt!2120616 () Unit!151117)

(declare-fun lemmaNotForallThenExists!434 (List!59860 Int) Unit!151117)

(assert (=> b!5143828 (= lt!2120616 (lemmaNotForallThenExists!434 lt!2120619 lambda!256610))))

(assert (=> b!5143828 call!359222))

(declare-fun lt!2120623 () Unit!151117)

(assert (=> b!5143828 (= lt!2120623 lt!2120616)))

(declare-fun lt!2120620 () Bool)

(declare-datatypes ((List!59861 0))(
  ( (Nil!59737) (Cons!59737 (h!66185 C!29212) (t!372896 List!59861)) )
))
(declare-datatypes ((Option!14787 0))(
  ( (None!14786) (Some!14786 (v!50815 List!59861)) )
))
(declare-fun isEmpty!32048 (Option!14787) Bool)

(declare-fun getLanguageWitness!940 ((InoxSet Context!7714)) Option!14787)

(assert (=> d!1663100 (= lt!2120620 (isEmpty!32048 (getLanguageWitness!940 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296))))))

(declare-fun forall!13934 ((InoxSet Context!7714) Int) Bool)

(assert (=> d!1663100 (= lt!2120620 (forall!13934 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296) lambda!256610))))

(declare-fun lt!2120622 () Unit!151117)

(assert (=> d!1663100 (= lt!2120622 e!3207601)))

(assert (=> d!1663100 (= c!885557 (not (forall!13934 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296) lambda!256610)))))

(assert (=> d!1663100 (= (lostCauseZipper!1271 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296)) lt!2120620)))

(declare-fun bm!359217 () Bool)

(declare-fun toList!8387 ((InoxSet Context!7714)) List!59860)

(assert (=> bm!359217 (= call!359221 (toList!8387 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296)))))

(declare-fun Unit!151122 () Unit!151117)

(assert (=> b!5143829 (= e!3207601 Unit!151122)))

(assert (=> b!5143829 (= lt!2120621 call!359221)))

(declare-fun lt!2120617 () Unit!151117)

(declare-fun lemmaForallThenNotExists!401 (List!59860 Int) Unit!151117)

(assert (=> b!5143829 (= lt!2120617 (lemmaForallThenNotExists!401 lt!2120621 lambda!256610))))

(assert (=> b!5143829 (not call!359222)))

(declare-fun lt!2120618 () Unit!151117)

(assert (=> b!5143829 (= lt!2120618 lt!2120617)))

(assert (= (and d!1663100 c!885557) b!5143828))

(assert (= (and d!1663100 (not c!885557)) b!5143829))

(assert (= (or b!5143828 b!5143829) bm!359216))

(assert (= (or b!5143828 b!5143829) bm!359217))

(assert (=> bm!359217 m!6205388))

(declare-fun m!6205458 () Bool)

(assert (=> bm!359217 m!6205458))

(declare-fun m!6205460 () Bool)

(assert (=> b!5143829 m!6205460))

(declare-fun m!6205462 () Bool)

(assert (=> b!5143828 m!6205462))

(assert (=> d!1663100 m!6205388))

(declare-fun m!6205464 () Bool)

(assert (=> d!1663100 m!6205464))

(assert (=> d!1663100 m!6205464))

(declare-fun m!6205466 () Bool)

(assert (=> d!1663100 m!6205466))

(assert (=> d!1663100 m!6205388))

(declare-fun m!6205468 () Bool)

(assert (=> d!1663100 m!6205468))

(assert (=> d!1663100 m!6205388))

(assert (=> d!1663100 m!6205468))

(declare-fun m!6205470 () Bool)

(assert (=> bm!359216 m!6205470))

(assert (=> b!5143712 d!1663100))

(declare-fun c!885568 () Bool)

(declare-fun c!885569 () Bool)

(declare-fun call!359238 () (InoxSet Context!7714))

(declare-fun c!885570 () Bool)

(declare-fun bm!359230 () Bool)

(declare-fun call!359239 () List!59857)

(assert (=> bm!359230 (= call!359238 (derivationStepZipperDown!152 (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117))))) (ite (or c!885569 c!885570) ctx!100 (Context!7715 call!359239)) a!1296))))

(declare-fun d!1663106 () Bool)

(declare-fun c!885571 () Bool)

(assert (=> d!1663106 (= c!885571 (and ((_ is ElementMatch!14473) (regOne!29459 expr!117)) (= (c!885504 (regOne!29459 expr!117)) a!1296)))))

(declare-fun e!3207625 () (InoxSet Context!7714))

(assert (=> d!1663106 (= (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296) e!3207625)))

(declare-fun bm!359231 () Bool)

(declare-fun call!359235 () (InoxSet Context!7714))

(assert (=> bm!359231 (= call!359235 call!359238)))

(declare-fun b!5143887 () Bool)

(declare-fun c!885572 () Bool)

(assert (=> b!5143887 (= c!885572 ((_ is Star!14473) (regOne!29459 expr!117)))))

(declare-fun e!3207628 () (InoxSet Context!7714))

(declare-fun e!3207624 () (InoxSet Context!7714))

(assert (=> b!5143887 (= e!3207628 e!3207624)))

(declare-fun b!5143888 () Bool)

(assert (=> b!5143888 (= e!3207625 (store ((as const (Array Context!7714 Bool)) false) ctx!100 true))))

(declare-fun b!5143889 () Bool)

(declare-fun e!3207629 () (InoxSet Context!7714))

(assert (=> b!5143889 (= e!3207629 e!3207628)))

(assert (=> b!5143889 (= c!885568 ((_ is Concat!23318) (regOne!29459 expr!117)))))

(declare-fun bm!359232 () Bool)

(declare-fun call!359236 () (InoxSet Context!7714))

(assert (=> bm!359232 (= call!359236 call!359235)))

(declare-fun b!5143890 () Bool)

(declare-fun e!3207627 () Bool)

(assert (=> b!5143890 (= c!885570 e!3207627)))

(declare-fun res!2190013 () Bool)

(assert (=> b!5143890 (=> (not res!2190013) (not e!3207627))))

(assert (=> b!5143890 (= res!2190013 ((_ is Concat!23318) (regOne!29459 expr!117)))))

(declare-fun e!3207626 () (InoxSet Context!7714))

(assert (=> b!5143890 (= e!3207626 e!3207629)))

(declare-fun b!5143891 () Bool)

(declare-fun call!359240 () (InoxSet Context!7714))

(assert (=> b!5143891 (= e!3207626 ((_ map or) call!359240 call!359238))))

(declare-fun bm!359233 () Bool)

(declare-fun call!359237 () List!59857)

(assert (=> bm!359233 (= call!359239 call!359237)))

(declare-fun b!5143892 () Bool)

(assert (=> b!5143892 (= e!3207625 e!3207626)))

(assert (=> b!5143892 (= c!885569 ((_ is Union!14473) (regOne!29459 expr!117)))))

(declare-fun b!5143893 () Bool)

(assert (=> b!5143893 (= e!3207628 call!359236)))

(declare-fun b!5143894 () Bool)

(assert (=> b!5143894 (= e!3207624 call!359236)))

(declare-fun bm!359234 () Bool)

(assert (=> bm!359234 (= call!359240 (derivationStepZipperDown!152 (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117))) (ite c!885569 ctx!100 (Context!7715 call!359237)) a!1296))))

(declare-fun b!5143895 () Bool)

(assert (=> b!5143895 (= e!3207624 ((as const (Array Context!7714 Bool)) false))))

(declare-fun b!5143896 () Bool)

(assert (=> b!5143896 (= e!3207629 ((_ map or) call!359240 call!359235))))

(declare-fun b!5143897 () Bool)

(assert (=> b!5143897 (= e!3207627 (nullable!4829 (regOne!29458 (regOne!29459 expr!117))))))

(declare-fun bm!359235 () Bool)

(declare-fun $colon$colon!1201 (List!59857 Regex!14473) List!59857)

(assert (=> bm!359235 (= call!359237 ($colon$colon!1201 (exprs!4357 ctx!100) (ite (or c!885570 c!885568) (regTwo!29458 (regOne!29459 expr!117)) (regOne!29459 expr!117))))))

(assert (= (and d!1663106 c!885571) b!5143888))

(assert (= (and d!1663106 (not c!885571)) b!5143892))

(assert (= (and b!5143892 c!885569) b!5143891))

(assert (= (and b!5143892 (not c!885569)) b!5143890))

(assert (= (and b!5143890 res!2190013) b!5143897))

(assert (= (and b!5143890 c!885570) b!5143896))

(assert (= (and b!5143890 (not c!885570)) b!5143889))

(assert (= (and b!5143889 c!885568) b!5143893))

(assert (= (and b!5143889 (not c!885568)) b!5143887))

(assert (= (and b!5143887 c!885572) b!5143894))

(assert (= (and b!5143887 (not c!885572)) b!5143895))

(assert (= (or b!5143893 b!5143894) bm!359233))

(assert (= (or b!5143893 b!5143894) bm!359232))

(assert (= (or b!5143896 bm!359233) bm!359235))

(assert (= (or b!5143896 bm!359232) bm!359231))

(assert (= (or b!5143891 bm!359231) bm!359230))

(assert (= (or b!5143891 b!5143896) bm!359234))

(declare-fun m!6205476 () Bool)

(assert (=> b!5143888 m!6205476))

(declare-fun m!6205478 () Bool)

(assert (=> bm!359234 m!6205478))

(declare-fun m!6205480 () Bool)

(assert (=> bm!359235 m!6205480))

(declare-fun m!6205482 () Bool)

(assert (=> b!5143897 m!6205482))

(declare-fun m!6205484 () Bool)

(assert (=> bm!359230 m!6205484))

(assert (=> b!5143712 d!1663106))

(declare-fun d!1663108 () Bool)

(assert (=> d!1663108 (lostCauseZipper!1271 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120629 () Unit!151117)

(declare-fun choose!38052 (Regex!14473 Context!7714 C!29212) Unit!151117)

(assert (=> d!1663108 (= lt!2120629 (choose!38052 (regOne!29459 expr!117) ctx!100 a!1296))))

(assert (=> d!1663108 (validRegex!6328 (regOne!29459 expr!117))))

(assert (=> d!1663108 (= (lemmaLostCauseFixPointDerivDown!42 (regOne!29459 expr!117) ctx!100 a!1296) lt!2120629)))

(declare-fun bs!1200934 () Bool)

(assert (= bs!1200934 d!1663108))

(assert (=> bs!1200934 m!6205388))

(assert (=> bs!1200934 m!6205388))

(assert (=> bs!1200934 m!6205390))

(declare-fun m!6205486 () Bool)

(assert (=> bs!1200934 m!6205486))

(declare-fun m!6205488 () Bool)

(assert (=> bs!1200934 m!6205488))

(assert (=> b!5143712 d!1663108))

(assert (=> b!5143707 d!1663078))

(declare-fun b!5143908 () Bool)

(declare-fun e!3207632 () Bool)

(assert (=> b!5143908 (= e!3207632 tp_is_empty!38095)))

(declare-fun b!5143909 () Bool)

(declare-fun tp!1436408 () Bool)

(declare-fun tp!1436409 () Bool)

(assert (=> b!5143909 (= e!3207632 (and tp!1436408 tp!1436409))))

(declare-fun b!5143910 () Bool)

(declare-fun tp!1436410 () Bool)

(assert (=> b!5143910 (= e!3207632 tp!1436410)))

(declare-fun b!5143911 () Bool)

(declare-fun tp!1436411 () Bool)

(declare-fun tp!1436407 () Bool)

(assert (=> b!5143911 (= e!3207632 (and tp!1436411 tp!1436407))))

(assert (=> b!5143705 (= tp!1436353 e!3207632)))

(assert (= (and b!5143705 ((_ is ElementMatch!14473) (reg!14802 expr!117))) b!5143908))

(assert (= (and b!5143705 ((_ is Concat!23318) (reg!14802 expr!117))) b!5143909))

(assert (= (and b!5143705 ((_ is Star!14473) (reg!14802 expr!117))) b!5143910))

(assert (= (and b!5143705 ((_ is Union!14473) (reg!14802 expr!117))) b!5143911))

(declare-fun b!5143912 () Bool)

(declare-fun e!3207633 () Bool)

(assert (=> b!5143912 (= e!3207633 tp_is_empty!38095)))

(declare-fun b!5143913 () Bool)

(declare-fun tp!1436413 () Bool)

(declare-fun tp!1436414 () Bool)

(assert (=> b!5143913 (= e!3207633 (and tp!1436413 tp!1436414))))

(declare-fun b!5143914 () Bool)

(declare-fun tp!1436415 () Bool)

(assert (=> b!5143914 (= e!3207633 tp!1436415)))

(declare-fun b!5143915 () Bool)

(declare-fun tp!1436416 () Bool)

(declare-fun tp!1436412 () Bool)

(assert (=> b!5143915 (= e!3207633 (and tp!1436416 tp!1436412))))

(assert (=> b!5143711 (= tp!1436352 e!3207633)))

(assert (= (and b!5143711 ((_ is ElementMatch!14473) (regOne!29459 expr!117))) b!5143912))

(assert (= (and b!5143711 ((_ is Concat!23318) (regOne!29459 expr!117))) b!5143913))

(assert (= (and b!5143711 ((_ is Star!14473) (regOne!29459 expr!117))) b!5143914))

(assert (= (and b!5143711 ((_ is Union!14473) (regOne!29459 expr!117))) b!5143915))

(declare-fun b!5143916 () Bool)

(declare-fun e!3207634 () Bool)

(assert (=> b!5143916 (= e!3207634 tp_is_empty!38095)))

(declare-fun b!5143917 () Bool)

(declare-fun tp!1436418 () Bool)

(declare-fun tp!1436419 () Bool)

(assert (=> b!5143917 (= e!3207634 (and tp!1436418 tp!1436419))))

(declare-fun b!5143918 () Bool)

(declare-fun tp!1436420 () Bool)

(assert (=> b!5143918 (= e!3207634 tp!1436420)))

(declare-fun b!5143919 () Bool)

(declare-fun tp!1436421 () Bool)

(declare-fun tp!1436417 () Bool)

(assert (=> b!5143919 (= e!3207634 (and tp!1436421 tp!1436417))))

(assert (=> b!5143711 (= tp!1436354 e!3207634)))

(assert (= (and b!5143711 ((_ is ElementMatch!14473) (regTwo!29459 expr!117))) b!5143916))

(assert (= (and b!5143711 ((_ is Concat!23318) (regTwo!29459 expr!117))) b!5143917))

(assert (= (and b!5143711 ((_ is Star!14473) (regTwo!29459 expr!117))) b!5143918))

(assert (= (and b!5143711 ((_ is Union!14473) (regTwo!29459 expr!117))) b!5143919))

(declare-fun b!5143924 () Bool)

(declare-fun e!3207637 () Bool)

(declare-fun tp!1436426 () Bool)

(declare-fun tp!1436427 () Bool)

(assert (=> b!5143924 (= e!3207637 (and tp!1436426 tp!1436427))))

(assert (=> b!5143704 (= tp!1436355 e!3207637)))

(assert (= (and b!5143704 ((_ is Cons!59733) (exprs!4357 ctx!100))) b!5143924))

(declare-fun b!5143925 () Bool)

(declare-fun e!3207638 () Bool)

(assert (=> b!5143925 (= e!3207638 tp_is_empty!38095)))

(declare-fun b!5143926 () Bool)

(declare-fun tp!1436429 () Bool)

(declare-fun tp!1436430 () Bool)

(assert (=> b!5143926 (= e!3207638 (and tp!1436429 tp!1436430))))

(declare-fun b!5143927 () Bool)

(declare-fun tp!1436431 () Bool)

(assert (=> b!5143927 (= e!3207638 tp!1436431)))

(declare-fun b!5143928 () Bool)

(declare-fun tp!1436432 () Bool)

(declare-fun tp!1436428 () Bool)

(assert (=> b!5143928 (= e!3207638 (and tp!1436432 tp!1436428))))

(assert (=> b!5143702 (= tp!1436351 e!3207638)))

(assert (= (and b!5143702 ((_ is ElementMatch!14473) (regOne!29458 expr!117))) b!5143925))

(assert (= (and b!5143702 ((_ is Concat!23318) (regOne!29458 expr!117))) b!5143926))

(assert (= (and b!5143702 ((_ is Star!14473) (regOne!29458 expr!117))) b!5143927))

(assert (= (and b!5143702 ((_ is Union!14473) (regOne!29458 expr!117))) b!5143928))

(declare-fun b!5143929 () Bool)

(declare-fun e!3207639 () Bool)

(assert (=> b!5143929 (= e!3207639 tp_is_empty!38095)))

(declare-fun b!5143930 () Bool)

(declare-fun tp!1436434 () Bool)

(declare-fun tp!1436435 () Bool)

(assert (=> b!5143930 (= e!3207639 (and tp!1436434 tp!1436435))))

(declare-fun b!5143931 () Bool)

(declare-fun tp!1436436 () Bool)

(assert (=> b!5143931 (= e!3207639 tp!1436436)))

(declare-fun b!5143932 () Bool)

(declare-fun tp!1436437 () Bool)

(declare-fun tp!1436433 () Bool)

(assert (=> b!5143932 (= e!3207639 (and tp!1436437 tp!1436433))))

(assert (=> b!5143702 (= tp!1436350 e!3207639)))

(assert (= (and b!5143702 ((_ is ElementMatch!14473) (regTwo!29458 expr!117))) b!5143929))

(assert (= (and b!5143702 ((_ is Concat!23318) (regTwo!29458 expr!117))) b!5143930))

(assert (= (and b!5143702 ((_ is Star!14473) (regTwo!29458 expr!117))) b!5143931))

(assert (= (and b!5143702 ((_ is Union!14473) (regTwo!29458 expr!117))) b!5143932))

(check-sat (not b!5143917) (not bm!359191) (not b!5143918) (not d!1663078) tp_is_empty!38095 (not d!1663108) (not b!5143914) (not b!5143911) (not b!5143932) (not b!5143930) (not bm!359217) (not d!1663100) (not b!5143927) (not bm!359234) (not b!5143790) (not b!5143829) (not d!1663074) (not b!5143779) (not b!5143931) (not b!5143919) (not b!5143828) (not bm!359186) (not bm!359230) (not b!5143924) (not d!1663076) (not b!5143926) (not bm!359184) (not bm!359193) (not bm!359235) (not b!5143909) (not b!5143897) (not b!5143928) (not b!5143913) (not b!5143910) (not d!1663096) (not b!5143915) (not bm!359216))
(check-sat)
(get-model)

(declare-fun bm!359236 () Bool)

(declare-fun call!359243 () Bool)

(declare-fun c!885573 () Bool)

(assert (=> bm!359236 (= call!359243 (validRegex!6328 (ite c!885573 (regTwo!29459 (ite c!885525 (regTwo!29459 expr!117) (regTwo!29458 expr!117))) (regTwo!29458 (ite c!885525 (regTwo!29459 expr!117) (regTwo!29458 expr!117))))))))

(declare-fun b!5143933 () Bool)

(declare-fun e!3207641 () Bool)

(assert (=> b!5143933 (= e!3207641 call!359243)))

(declare-fun b!5143934 () Bool)

(declare-fun e!3207644 () Bool)

(assert (=> b!5143934 (= e!3207644 e!3207641)))

(declare-fun res!2190014 () Bool)

(assert (=> b!5143934 (=> (not res!2190014) (not e!3207641))))

(declare-fun call!359241 () Bool)

(assert (=> b!5143934 (= res!2190014 call!359241)))

(declare-fun b!5143935 () Bool)

(declare-fun e!3207645 () Bool)

(assert (=> b!5143935 (= e!3207645 call!359243)))

(declare-fun b!5143936 () Bool)

(declare-fun res!2190016 () Bool)

(assert (=> b!5143936 (=> (not res!2190016) (not e!3207645))))

(assert (=> b!5143936 (= res!2190016 call!359241)))

(declare-fun e!3207640 () Bool)

(assert (=> b!5143936 (= e!3207640 e!3207645)))

(declare-fun bm!359237 () Bool)

(declare-fun call!359242 () Bool)

(assert (=> bm!359237 (= call!359241 call!359242)))

(declare-fun b!5143938 () Bool)

(declare-fun e!3207646 () Bool)

(assert (=> b!5143938 (= e!3207646 call!359242)))

(declare-fun b!5143939 () Bool)

(declare-fun e!3207642 () Bool)

(declare-fun e!3207643 () Bool)

(assert (=> b!5143939 (= e!3207642 e!3207643)))

(declare-fun c!885574 () Bool)

(assert (=> b!5143939 (= c!885574 ((_ is Star!14473) (ite c!885525 (regTwo!29459 expr!117) (regTwo!29458 expr!117))))))

(declare-fun b!5143940 () Bool)

(assert (=> b!5143940 (= e!3207643 e!3207640)))

(assert (=> b!5143940 (= c!885573 ((_ is Union!14473) (ite c!885525 (regTwo!29459 expr!117) (regTwo!29458 expr!117))))))

(declare-fun bm!359238 () Bool)

(assert (=> bm!359238 (= call!359242 (validRegex!6328 (ite c!885574 (reg!14802 (ite c!885525 (regTwo!29459 expr!117) (regTwo!29458 expr!117))) (ite c!885573 (regOne!29459 (ite c!885525 (regTwo!29459 expr!117) (regTwo!29458 expr!117))) (regOne!29458 (ite c!885525 (regTwo!29459 expr!117) (regTwo!29458 expr!117)))))))))

(declare-fun b!5143941 () Bool)

(assert (=> b!5143941 (= e!3207643 e!3207646)))

(declare-fun res!2190018 () Bool)

(assert (=> b!5143941 (= res!2190018 (not (nullable!4829 (reg!14802 (ite c!885525 (regTwo!29459 expr!117) (regTwo!29458 expr!117))))))))

(assert (=> b!5143941 (=> (not res!2190018) (not e!3207646))))

(declare-fun b!5143937 () Bool)

(declare-fun res!2190015 () Bool)

(assert (=> b!5143937 (=> res!2190015 e!3207644)))

(assert (=> b!5143937 (= res!2190015 (not ((_ is Concat!23318) (ite c!885525 (regTwo!29459 expr!117) (regTwo!29458 expr!117)))))))

(assert (=> b!5143937 (= e!3207640 e!3207644)))

(declare-fun d!1663110 () Bool)

(declare-fun res!2190017 () Bool)

(assert (=> d!1663110 (=> res!2190017 e!3207642)))

(assert (=> d!1663110 (= res!2190017 ((_ is ElementMatch!14473) (ite c!885525 (regTwo!29459 expr!117) (regTwo!29458 expr!117))))))

(assert (=> d!1663110 (= (validRegex!6328 (ite c!885525 (regTwo!29459 expr!117) (regTwo!29458 expr!117))) e!3207642)))

(assert (= (and d!1663110 (not res!2190017)) b!5143939))

(assert (= (and b!5143939 c!885574) b!5143941))

(assert (= (and b!5143939 (not c!885574)) b!5143940))

(assert (= (and b!5143941 res!2190018) b!5143938))

(assert (= (and b!5143940 c!885573) b!5143936))

(assert (= (and b!5143940 (not c!885573)) b!5143937))

(assert (= (and b!5143936 res!2190016) b!5143935))

(assert (= (and b!5143937 (not res!2190015)) b!5143934))

(assert (= (and b!5143934 res!2190014) b!5143933))

(assert (= (or b!5143935 b!5143933) bm!359236))

(assert (= (or b!5143936 b!5143934) bm!359237))

(assert (= (or b!5143938 bm!359237) bm!359238))

(declare-fun m!6205490 () Bool)

(assert (=> bm!359236 m!6205490))

(declare-fun m!6205492 () Bool)

(assert (=> bm!359238 m!6205492))

(declare-fun m!6205494 () Bool)

(assert (=> b!5143941 m!6205494))

(assert (=> bm!359184 d!1663110))

(declare-fun bs!1200935 () Bool)

(declare-fun d!1663112 () Bool)

(assert (= bs!1200935 (and d!1663112 d!1663078)))

(declare-fun lambda!256615 () Int)

(assert (=> bs!1200935 (not (= lambda!256615 lambda!256579))))

(declare-fun bs!1200936 () Bool)

(assert (= bs!1200936 (and d!1663112 d!1663096)))

(assert (=> bs!1200936 (not (= lambda!256615 lambda!256594))))

(assert (=> d!1663112 true))

(declare-fun order!26959 () Int)

(declare-fun dynLambda!23775 (Int Int) Int)

(assert (=> d!1663112 (< (dynLambda!23775 order!26959 lambda!256579) (dynLambda!23775 order!26959 lambda!256615))))

(assert (=> d!1663112 (= (exists!1793 (exprs!4357 ctx!100) lambda!256579) (not (forall!13932 (exprs!4357 ctx!100) lambda!256615)))))

(declare-fun bs!1200937 () Bool)

(assert (= bs!1200937 d!1663112))

(declare-fun m!6205496 () Bool)

(assert (=> bs!1200937 m!6205496))

(assert (=> d!1663078 d!1663112))

(declare-fun d!1663114 () Bool)

(declare-fun nullableFct!1320 (Regex!14473) Bool)

(assert (=> d!1663114 (= (nullable!4829 (reg!14802 (regTwo!29459 expr!117))) (nullableFct!1320 (reg!14802 (regTwo!29459 expr!117))))))

(declare-fun bs!1200938 () Bool)

(assert (= bs!1200938 d!1663114))

(declare-fun m!6205498 () Bool)

(assert (=> bs!1200938 m!6205498))

(assert (=> b!5143790 d!1663114))

(declare-fun d!1663116 () Bool)

(assert (=> d!1663116 (= ($colon$colon!1201 (exprs!4357 ctx!100) (ite (or c!885570 c!885568) (regTwo!29458 (regOne!29459 expr!117)) (regOne!29459 expr!117))) (Cons!59733 (ite (or c!885570 c!885568) (regTwo!29458 (regOne!29459 expr!117)) (regOne!29459 expr!117)) (exprs!4357 ctx!100)))))

(assert (=> bm!359235 d!1663116))

(declare-fun d!1663118 () Bool)

(assert (=> d!1663118 (= (nullable!4829 (regOne!29458 (regOne!29459 expr!117))) (nullableFct!1320 (regOne!29458 (regOne!29459 expr!117))))))

(declare-fun bs!1200939 () Bool)

(assert (= bs!1200939 d!1663118))

(declare-fun m!6205500 () Bool)

(assert (=> bs!1200939 m!6205500))

(assert (=> b!5143897 d!1663118))

(declare-fun call!359246 () Bool)

(declare-fun c!885575 () Bool)

(declare-fun bm!359239 () Bool)

(assert (=> bm!359239 (= call!359246 (validRegex!6328 (ite c!885575 (regTwo!29459 (ite c!885526 (reg!14802 expr!117) (ite c!885525 (regOne!29459 expr!117) (regOne!29458 expr!117)))) (regTwo!29458 (ite c!885526 (reg!14802 expr!117) (ite c!885525 (regOne!29459 expr!117) (regOne!29458 expr!117)))))))))

(declare-fun b!5143944 () Bool)

(declare-fun e!3207648 () Bool)

(assert (=> b!5143944 (= e!3207648 call!359246)))

(declare-fun b!5143945 () Bool)

(declare-fun e!3207651 () Bool)

(assert (=> b!5143945 (= e!3207651 e!3207648)))

(declare-fun res!2190019 () Bool)

(assert (=> b!5143945 (=> (not res!2190019) (not e!3207648))))

(declare-fun call!359244 () Bool)

(assert (=> b!5143945 (= res!2190019 call!359244)))

(declare-fun b!5143946 () Bool)

(declare-fun e!3207652 () Bool)

(assert (=> b!5143946 (= e!3207652 call!359246)))

(declare-fun b!5143947 () Bool)

(declare-fun res!2190021 () Bool)

(assert (=> b!5143947 (=> (not res!2190021) (not e!3207652))))

(assert (=> b!5143947 (= res!2190021 call!359244)))

(declare-fun e!3207647 () Bool)

(assert (=> b!5143947 (= e!3207647 e!3207652)))

(declare-fun bm!359240 () Bool)

(declare-fun call!359245 () Bool)

(assert (=> bm!359240 (= call!359244 call!359245)))

(declare-fun b!5143949 () Bool)

(declare-fun e!3207653 () Bool)

(assert (=> b!5143949 (= e!3207653 call!359245)))

(declare-fun b!5143950 () Bool)

(declare-fun e!3207649 () Bool)

(declare-fun e!3207650 () Bool)

(assert (=> b!5143950 (= e!3207649 e!3207650)))

(declare-fun c!885576 () Bool)

(assert (=> b!5143950 (= c!885576 ((_ is Star!14473) (ite c!885526 (reg!14802 expr!117) (ite c!885525 (regOne!29459 expr!117) (regOne!29458 expr!117)))))))

(declare-fun b!5143951 () Bool)

(assert (=> b!5143951 (= e!3207650 e!3207647)))

(assert (=> b!5143951 (= c!885575 ((_ is Union!14473) (ite c!885526 (reg!14802 expr!117) (ite c!885525 (regOne!29459 expr!117) (regOne!29458 expr!117)))))))

(declare-fun bm!359241 () Bool)

(assert (=> bm!359241 (= call!359245 (validRegex!6328 (ite c!885576 (reg!14802 (ite c!885526 (reg!14802 expr!117) (ite c!885525 (regOne!29459 expr!117) (regOne!29458 expr!117)))) (ite c!885575 (regOne!29459 (ite c!885526 (reg!14802 expr!117) (ite c!885525 (regOne!29459 expr!117) (regOne!29458 expr!117)))) (regOne!29458 (ite c!885526 (reg!14802 expr!117) (ite c!885525 (regOne!29459 expr!117) (regOne!29458 expr!117))))))))))

(declare-fun b!5143952 () Bool)

(assert (=> b!5143952 (= e!3207650 e!3207653)))

(declare-fun res!2190023 () Bool)

(assert (=> b!5143952 (= res!2190023 (not (nullable!4829 (reg!14802 (ite c!885526 (reg!14802 expr!117) (ite c!885525 (regOne!29459 expr!117) (regOne!29458 expr!117)))))))))

(assert (=> b!5143952 (=> (not res!2190023) (not e!3207653))))

(declare-fun b!5143948 () Bool)

(declare-fun res!2190020 () Bool)

(assert (=> b!5143948 (=> res!2190020 e!3207651)))

(assert (=> b!5143948 (= res!2190020 (not ((_ is Concat!23318) (ite c!885526 (reg!14802 expr!117) (ite c!885525 (regOne!29459 expr!117) (regOne!29458 expr!117))))))))

(assert (=> b!5143948 (= e!3207647 e!3207651)))

(declare-fun d!1663120 () Bool)

(declare-fun res!2190022 () Bool)

(assert (=> d!1663120 (=> res!2190022 e!3207649)))

(assert (=> d!1663120 (= res!2190022 ((_ is ElementMatch!14473) (ite c!885526 (reg!14802 expr!117) (ite c!885525 (regOne!29459 expr!117) (regOne!29458 expr!117)))))))

(assert (=> d!1663120 (= (validRegex!6328 (ite c!885526 (reg!14802 expr!117) (ite c!885525 (regOne!29459 expr!117) (regOne!29458 expr!117)))) e!3207649)))

(assert (= (and d!1663120 (not res!2190022)) b!5143950))

(assert (= (and b!5143950 c!885576) b!5143952))

(assert (= (and b!5143950 (not c!885576)) b!5143951))

(assert (= (and b!5143952 res!2190023) b!5143949))

(assert (= (and b!5143951 c!885575) b!5143947))

(assert (= (and b!5143951 (not c!885575)) b!5143948))

(assert (= (and b!5143947 res!2190021) b!5143946))

(assert (= (and b!5143948 (not res!2190020)) b!5143945))

(assert (= (and b!5143945 res!2190019) b!5143944))

(assert (= (or b!5143946 b!5143944) bm!359239))

(assert (= (or b!5143947 b!5143945) bm!359240))

(assert (= (or b!5143949 bm!359240) bm!359241))

(declare-fun m!6205502 () Bool)

(assert (=> bm!359239 m!6205502))

(declare-fun m!6205504 () Bool)

(assert (=> bm!359241 m!6205504))

(declare-fun m!6205506 () Bool)

(assert (=> b!5143952 m!6205506))

(assert (=> bm!359186 d!1663120))

(assert (=> d!1663108 d!1663100))

(assert (=> d!1663108 d!1663106))

(declare-fun d!1663122 () Bool)

(assert (=> d!1663122 (lostCauseZipper!1271 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296))))

(assert (=> d!1663122 true))

(declare-fun _$39!532 () Unit!151117)

(assert (=> d!1663122 (= (choose!38052 (regOne!29459 expr!117) ctx!100 a!1296) _$39!532)))

(declare-fun bs!1200940 () Bool)

(assert (= bs!1200940 d!1663122))

(assert (=> bs!1200940 m!6205388))

(assert (=> bs!1200940 m!6205388))

(assert (=> bs!1200940 m!6205390))

(assert (=> d!1663108 d!1663122))

(declare-fun bm!359242 () Bool)

(declare-fun call!359249 () Bool)

(declare-fun c!885577 () Bool)

(assert (=> bm!359242 (= call!359249 (validRegex!6328 (ite c!885577 (regTwo!29459 (regOne!29459 expr!117)) (regTwo!29458 (regOne!29459 expr!117)))))))

(declare-fun b!5143953 () Bool)

(declare-fun e!3207655 () Bool)

(assert (=> b!5143953 (= e!3207655 call!359249)))

(declare-fun b!5143954 () Bool)

(declare-fun e!3207658 () Bool)

(assert (=> b!5143954 (= e!3207658 e!3207655)))

(declare-fun res!2190024 () Bool)

(assert (=> b!5143954 (=> (not res!2190024) (not e!3207655))))

(declare-fun call!359247 () Bool)

(assert (=> b!5143954 (= res!2190024 call!359247)))

(declare-fun b!5143955 () Bool)

(declare-fun e!3207659 () Bool)

(assert (=> b!5143955 (= e!3207659 call!359249)))

(declare-fun b!5143956 () Bool)

(declare-fun res!2190026 () Bool)

(assert (=> b!5143956 (=> (not res!2190026) (not e!3207659))))

(assert (=> b!5143956 (= res!2190026 call!359247)))

(declare-fun e!3207654 () Bool)

(assert (=> b!5143956 (= e!3207654 e!3207659)))

(declare-fun bm!359243 () Bool)

(declare-fun call!359248 () Bool)

(assert (=> bm!359243 (= call!359247 call!359248)))

(declare-fun b!5143958 () Bool)

(declare-fun e!3207660 () Bool)

(assert (=> b!5143958 (= e!3207660 call!359248)))

(declare-fun b!5143959 () Bool)

(declare-fun e!3207656 () Bool)

(declare-fun e!3207657 () Bool)

(assert (=> b!5143959 (= e!3207656 e!3207657)))

(declare-fun c!885578 () Bool)

(assert (=> b!5143959 (= c!885578 ((_ is Star!14473) (regOne!29459 expr!117)))))

(declare-fun b!5143960 () Bool)

(assert (=> b!5143960 (= e!3207657 e!3207654)))

(assert (=> b!5143960 (= c!885577 ((_ is Union!14473) (regOne!29459 expr!117)))))

(declare-fun bm!359244 () Bool)

(assert (=> bm!359244 (= call!359248 (validRegex!6328 (ite c!885578 (reg!14802 (regOne!29459 expr!117)) (ite c!885577 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117))))))))

(declare-fun b!5143961 () Bool)

(assert (=> b!5143961 (= e!3207657 e!3207660)))

(declare-fun res!2190028 () Bool)

(assert (=> b!5143961 (= res!2190028 (not (nullable!4829 (reg!14802 (regOne!29459 expr!117)))))))

(assert (=> b!5143961 (=> (not res!2190028) (not e!3207660))))

(declare-fun b!5143957 () Bool)

(declare-fun res!2190025 () Bool)

(assert (=> b!5143957 (=> res!2190025 e!3207658)))

(assert (=> b!5143957 (= res!2190025 (not ((_ is Concat!23318) (regOne!29459 expr!117))))))

(assert (=> b!5143957 (= e!3207654 e!3207658)))

(declare-fun d!1663124 () Bool)

(declare-fun res!2190027 () Bool)

(assert (=> d!1663124 (=> res!2190027 e!3207656)))

(assert (=> d!1663124 (= res!2190027 ((_ is ElementMatch!14473) (regOne!29459 expr!117)))))

(assert (=> d!1663124 (= (validRegex!6328 (regOne!29459 expr!117)) e!3207656)))

(assert (= (and d!1663124 (not res!2190027)) b!5143959))

(assert (= (and b!5143959 c!885578) b!5143961))

(assert (= (and b!5143959 (not c!885578)) b!5143960))

(assert (= (and b!5143961 res!2190028) b!5143958))

(assert (= (and b!5143960 c!885577) b!5143956))

(assert (= (and b!5143960 (not c!885577)) b!5143957))

(assert (= (and b!5143956 res!2190026) b!5143955))

(assert (= (and b!5143957 (not res!2190025)) b!5143954))

(assert (= (and b!5143954 res!2190024) b!5143953))

(assert (= (or b!5143955 b!5143953) bm!359242))

(assert (= (or b!5143956 b!5143954) bm!359243))

(assert (= (or b!5143958 bm!359243) bm!359244))

(declare-fun m!6205508 () Bool)

(assert (=> bm!359242 m!6205508))

(declare-fun m!6205510 () Bool)

(assert (=> bm!359244 m!6205510))

(declare-fun m!6205512 () Bool)

(assert (=> b!5143961 m!6205512))

(assert (=> d!1663108 d!1663124))

(declare-fun c!885579 () Bool)

(declare-fun call!359252 () Bool)

(declare-fun bm!359245 () Bool)

(assert (=> bm!359245 (= call!359252 (validRegex!6328 (ite c!885579 (regTwo!29459 (ite c!885531 (reg!14802 (regTwo!29459 expr!117)) (ite c!885530 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117))))) (regTwo!29458 (ite c!885531 (reg!14802 (regTwo!29459 expr!117)) (ite c!885530 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117))))))))))

(declare-fun b!5143962 () Bool)

(declare-fun e!3207662 () Bool)

(assert (=> b!5143962 (= e!3207662 call!359252)))

(declare-fun b!5143963 () Bool)

(declare-fun e!3207665 () Bool)

(assert (=> b!5143963 (= e!3207665 e!3207662)))

(declare-fun res!2190029 () Bool)

(assert (=> b!5143963 (=> (not res!2190029) (not e!3207662))))

(declare-fun call!359250 () Bool)

(assert (=> b!5143963 (= res!2190029 call!359250)))

(declare-fun b!5143964 () Bool)

(declare-fun e!3207666 () Bool)

(assert (=> b!5143964 (= e!3207666 call!359252)))

(declare-fun b!5143965 () Bool)

(declare-fun res!2190031 () Bool)

(assert (=> b!5143965 (=> (not res!2190031) (not e!3207666))))

(assert (=> b!5143965 (= res!2190031 call!359250)))

(declare-fun e!3207661 () Bool)

(assert (=> b!5143965 (= e!3207661 e!3207666)))

(declare-fun bm!359246 () Bool)

(declare-fun call!359251 () Bool)

(assert (=> bm!359246 (= call!359250 call!359251)))

(declare-fun b!5143967 () Bool)

(declare-fun e!3207667 () Bool)

(assert (=> b!5143967 (= e!3207667 call!359251)))

(declare-fun b!5143968 () Bool)

(declare-fun e!3207663 () Bool)

(declare-fun e!3207664 () Bool)

(assert (=> b!5143968 (= e!3207663 e!3207664)))

(declare-fun c!885580 () Bool)

(assert (=> b!5143968 (= c!885580 ((_ is Star!14473) (ite c!885531 (reg!14802 (regTwo!29459 expr!117)) (ite c!885530 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117))))))))

(declare-fun b!5143969 () Bool)

(assert (=> b!5143969 (= e!3207664 e!3207661)))

(assert (=> b!5143969 (= c!885579 ((_ is Union!14473) (ite c!885531 (reg!14802 (regTwo!29459 expr!117)) (ite c!885530 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117))))))))

(declare-fun bm!359247 () Bool)

(assert (=> bm!359247 (= call!359251 (validRegex!6328 (ite c!885580 (reg!14802 (ite c!885531 (reg!14802 (regTwo!29459 expr!117)) (ite c!885530 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117))))) (ite c!885579 (regOne!29459 (ite c!885531 (reg!14802 (regTwo!29459 expr!117)) (ite c!885530 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117))))) (regOne!29458 (ite c!885531 (reg!14802 (regTwo!29459 expr!117)) (ite c!885530 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117)))))))))))

(declare-fun b!5143970 () Bool)

(assert (=> b!5143970 (= e!3207664 e!3207667)))

(declare-fun res!2190033 () Bool)

(assert (=> b!5143970 (= res!2190033 (not (nullable!4829 (reg!14802 (ite c!885531 (reg!14802 (regTwo!29459 expr!117)) (ite c!885530 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117))))))))))

(assert (=> b!5143970 (=> (not res!2190033) (not e!3207667))))

(declare-fun b!5143966 () Bool)

(declare-fun res!2190030 () Bool)

(assert (=> b!5143966 (=> res!2190030 e!3207665)))

(assert (=> b!5143966 (= res!2190030 (not ((_ is Concat!23318) (ite c!885531 (reg!14802 (regTwo!29459 expr!117)) (ite c!885530 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117)))))))))

(assert (=> b!5143966 (= e!3207661 e!3207665)))

(declare-fun d!1663126 () Bool)

(declare-fun res!2190032 () Bool)

(assert (=> d!1663126 (=> res!2190032 e!3207663)))

(assert (=> d!1663126 (= res!2190032 ((_ is ElementMatch!14473) (ite c!885531 (reg!14802 (regTwo!29459 expr!117)) (ite c!885530 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117))))))))

(assert (=> d!1663126 (= (validRegex!6328 (ite c!885531 (reg!14802 (regTwo!29459 expr!117)) (ite c!885530 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117))))) e!3207663)))

(assert (= (and d!1663126 (not res!2190032)) b!5143968))

(assert (= (and b!5143968 c!885580) b!5143970))

(assert (= (and b!5143968 (not c!885580)) b!5143969))

(assert (= (and b!5143970 res!2190033) b!5143967))

(assert (= (and b!5143969 c!885579) b!5143965))

(assert (= (and b!5143969 (not c!885579)) b!5143966))

(assert (= (and b!5143965 res!2190031) b!5143964))

(assert (= (and b!5143966 (not res!2190030)) b!5143963))

(assert (= (and b!5143963 res!2190029) b!5143962))

(assert (= (or b!5143964 b!5143962) bm!359245))

(assert (= (or b!5143965 b!5143963) bm!359246))

(assert (= (or b!5143967 bm!359246) bm!359247))

(declare-fun m!6205514 () Bool)

(assert (=> bm!359245 m!6205514))

(declare-fun m!6205516 () Bool)

(assert (=> bm!359247 m!6205516))

(declare-fun m!6205518 () Bool)

(assert (=> b!5143970 m!6205518))

(assert (=> bm!359193 d!1663126))

(declare-fun bs!1200941 () Bool)

(declare-fun d!1663128 () Bool)

(assert (= bs!1200941 (and d!1663128 d!1663100)))

(declare-fun lambda!256618 () Int)

(assert (=> bs!1200941 (not (= lambda!256618 lambda!256610))))

(declare-fun bs!1200942 () Bool)

(assert (= bs!1200942 (and d!1663128 b!5143828)))

(assert (=> bs!1200942 (not (= lambda!256618 lambda!256611))))

(declare-fun bs!1200943 () Bool)

(assert (= bs!1200943 (and d!1663128 b!5143829)))

(assert (=> bs!1200943 (not (= lambda!256618 lambda!256612))))

(assert (=> d!1663128 true))

(declare-fun order!26961 () Int)

(declare-fun dynLambda!23777 (Int Int) Int)

(assert (=> d!1663128 (< (dynLambda!23777 order!26961 lambda!256610) (dynLambda!23777 order!26961 lambda!256618))))

(assert (=> d!1663128 (exists!1795 lt!2120619 lambda!256618)))

(declare-fun lt!2120632 () Unit!151117)

(declare-fun choose!38054 (List!59860 Int) Unit!151117)

(assert (=> d!1663128 (= lt!2120632 (choose!38054 lt!2120619 lambda!256610))))

(declare-fun forall!13936 (List!59860 Int) Bool)

(assert (=> d!1663128 (not (forall!13936 lt!2120619 lambda!256610))))

(assert (=> d!1663128 (= (lemmaNotForallThenExists!434 lt!2120619 lambda!256610) lt!2120632)))

(declare-fun bs!1200944 () Bool)

(assert (= bs!1200944 d!1663128))

(declare-fun m!6205520 () Bool)

(assert (=> bs!1200944 m!6205520))

(declare-fun m!6205522 () Bool)

(assert (=> bs!1200944 m!6205522))

(declare-fun m!6205524 () Bool)

(assert (=> bs!1200944 m!6205524))

(assert (=> b!5143828 d!1663128))

(declare-fun d!1663130 () Bool)

(assert (=> d!1663130 (= (nullable!4829 (reg!14802 expr!117)) (nullableFct!1320 (reg!14802 expr!117)))))

(declare-fun bs!1200945 () Bool)

(assert (= bs!1200945 d!1663130))

(declare-fun m!6205526 () Bool)

(assert (=> bs!1200945 m!6205526))

(assert (=> b!5143779 d!1663130))

(declare-fun c!885581 () Bool)

(declare-fun bm!359248 () Bool)

(declare-fun call!359255 () Bool)

(assert (=> bm!359248 (= call!359255 (validRegex!6328 (ite c!885581 (regTwo!29459 (ite c!885530 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117)))) (regTwo!29458 (ite c!885530 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117)))))))))

(declare-fun b!5143973 () Bool)

(declare-fun e!3207671 () Bool)

(assert (=> b!5143973 (= e!3207671 call!359255)))

(declare-fun b!5143974 () Bool)

(declare-fun e!3207674 () Bool)

(assert (=> b!5143974 (= e!3207674 e!3207671)))

(declare-fun res!2190034 () Bool)

(assert (=> b!5143974 (=> (not res!2190034) (not e!3207671))))

(declare-fun call!359253 () Bool)

(assert (=> b!5143974 (= res!2190034 call!359253)))

(declare-fun b!5143975 () Bool)

(declare-fun e!3207675 () Bool)

(assert (=> b!5143975 (= e!3207675 call!359255)))

(declare-fun b!5143976 () Bool)

(declare-fun res!2190036 () Bool)

(assert (=> b!5143976 (=> (not res!2190036) (not e!3207675))))

(assert (=> b!5143976 (= res!2190036 call!359253)))

(declare-fun e!3207670 () Bool)

(assert (=> b!5143976 (= e!3207670 e!3207675)))

(declare-fun bm!359249 () Bool)

(declare-fun call!359254 () Bool)

(assert (=> bm!359249 (= call!359253 call!359254)))

(declare-fun b!5143978 () Bool)

(declare-fun e!3207676 () Bool)

(assert (=> b!5143978 (= e!3207676 call!359254)))

(declare-fun b!5143979 () Bool)

(declare-fun e!3207672 () Bool)

(declare-fun e!3207673 () Bool)

(assert (=> b!5143979 (= e!3207672 e!3207673)))

(declare-fun c!885582 () Bool)

(assert (=> b!5143979 (= c!885582 ((_ is Star!14473) (ite c!885530 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117)))))))

(declare-fun b!5143980 () Bool)

(assert (=> b!5143980 (= e!3207673 e!3207670)))

(assert (=> b!5143980 (= c!885581 ((_ is Union!14473) (ite c!885530 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117)))))))

(declare-fun bm!359250 () Bool)

(assert (=> bm!359250 (= call!359254 (validRegex!6328 (ite c!885582 (reg!14802 (ite c!885530 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117)))) (ite c!885581 (regOne!29459 (ite c!885530 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117)))) (regOne!29458 (ite c!885530 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117))))))))))

(declare-fun b!5143981 () Bool)

(assert (=> b!5143981 (= e!3207673 e!3207676)))

(declare-fun res!2190038 () Bool)

(assert (=> b!5143981 (= res!2190038 (not (nullable!4829 (reg!14802 (ite c!885530 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117)))))))))

(assert (=> b!5143981 (=> (not res!2190038) (not e!3207676))))

(declare-fun b!5143977 () Bool)

(declare-fun res!2190035 () Bool)

(assert (=> b!5143977 (=> res!2190035 e!3207674)))

(assert (=> b!5143977 (= res!2190035 (not ((_ is Concat!23318) (ite c!885530 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117))))))))

(assert (=> b!5143977 (= e!3207670 e!3207674)))

(declare-fun d!1663132 () Bool)

(declare-fun res!2190037 () Bool)

(assert (=> d!1663132 (=> res!2190037 e!3207672)))

(assert (=> d!1663132 (= res!2190037 ((_ is ElementMatch!14473) (ite c!885530 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117)))))))

(assert (=> d!1663132 (= (validRegex!6328 (ite c!885530 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117)))) e!3207672)))

(assert (= (and d!1663132 (not res!2190037)) b!5143979))

(assert (= (and b!5143979 c!885582) b!5143981))

(assert (= (and b!5143979 (not c!885582)) b!5143980))

(assert (= (and b!5143981 res!2190038) b!5143978))

(assert (= (and b!5143980 c!885581) b!5143976))

(assert (= (and b!5143980 (not c!885581)) b!5143977))

(assert (= (and b!5143976 res!2190036) b!5143975))

(assert (= (and b!5143977 (not res!2190035)) b!5143974))

(assert (= (and b!5143974 res!2190034) b!5143973))

(assert (= (or b!5143975 b!5143973) bm!359248))

(assert (= (or b!5143976 b!5143974) bm!359249))

(assert (= (or b!5143978 bm!359249) bm!359250))

(declare-fun m!6205528 () Bool)

(assert (=> bm!359248 m!6205528))

(declare-fun m!6205530 () Bool)

(assert (=> bm!359250 m!6205530))

(declare-fun m!6205532 () Bool)

(assert (=> b!5143981 m!6205532))

(assert (=> bm!359191 d!1663132))

(declare-fun d!1663134 () Bool)

(declare-fun res!2190043 () Bool)

(declare-fun e!3207681 () Bool)

(assert (=> d!1663134 (=> res!2190043 e!3207681)))

(assert (=> d!1663134 (= res!2190043 ((_ is Nil!59733) (exprs!4357 ctx!100)))))

(assert (=> d!1663134 (= (forall!13932 (exprs!4357 ctx!100) lambda!256594) e!3207681)))

(declare-fun b!5143986 () Bool)

(declare-fun e!3207682 () Bool)

(assert (=> b!5143986 (= e!3207681 e!3207682)))

(declare-fun res!2190044 () Bool)

(assert (=> b!5143986 (=> (not res!2190044) (not e!3207682))))

(declare-fun dynLambda!23779 (Int Regex!14473) Bool)

(assert (=> b!5143986 (= res!2190044 (dynLambda!23779 lambda!256594 (h!66181 (exprs!4357 ctx!100))))))

(declare-fun b!5143987 () Bool)

(assert (=> b!5143987 (= e!3207682 (forall!13932 (t!372892 (exprs!4357 ctx!100)) lambda!256594))))

(assert (= (and d!1663134 (not res!2190043)) b!5143986))

(assert (= (and b!5143986 res!2190044) b!5143987))

(declare-fun b_lambda!200309 () Bool)

(assert (=> (not b_lambda!200309) (not b!5143986)))

(declare-fun m!6205534 () Bool)

(assert (=> b!5143986 m!6205534))

(declare-fun m!6205536 () Bool)

(assert (=> b!5143987 m!6205536))

(assert (=> d!1663096 d!1663134))

(declare-fun bs!1200946 () Bool)

(declare-fun d!1663136 () Bool)

(assert (= bs!1200946 (and d!1663136 d!1663100)))

(declare-fun lambda!256621 () Int)

(assert (=> bs!1200946 (not (= lambda!256621 lambda!256610))))

(declare-fun bs!1200947 () Bool)

(assert (= bs!1200947 (and d!1663136 b!5143828)))

(assert (=> bs!1200947 (not (= lambda!256621 lambda!256611))))

(declare-fun bs!1200948 () Bool)

(assert (= bs!1200948 (and d!1663136 b!5143829)))

(assert (=> bs!1200948 (not (= lambda!256621 lambda!256612))))

(declare-fun bs!1200949 () Bool)

(assert (= bs!1200949 (and d!1663136 d!1663128)))

(assert (=> bs!1200949 (= lambda!256621 lambda!256618)))

(assert (=> d!1663136 true))

(assert (=> d!1663136 (< (dynLambda!23777 order!26961 lambda!256610) (dynLambda!23777 order!26961 lambda!256621))))

(assert (=> d!1663136 (not (exists!1795 lt!2120621 lambda!256621))))

(declare-fun lt!2120635 () Unit!151117)

(declare-fun choose!38056 (List!59860 Int) Unit!151117)

(assert (=> d!1663136 (= lt!2120635 (choose!38056 lt!2120621 lambda!256610))))

(assert (=> d!1663136 (forall!13936 lt!2120621 lambda!256610)))

(assert (=> d!1663136 (= (lemmaForallThenNotExists!401 lt!2120621 lambda!256610) lt!2120635)))

(declare-fun bs!1200950 () Bool)

(assert (= bs!1200950 d!1663136))

(declare-fun m!6205538 () Bool)

(assert (=> bs!1200950 m!6205538))

(declare-fun m!6205540 () Bool)

(assert (=> bs!1200950 m!6205540))

(declare-fun m!6205542 () Bool)

(assert (=> bs!1200950 m!6205542))

(assert (=> b!5143829 d!1663136))

(declare-fun d!1663138 () Bool)

(assert (=> d!1663138 (= (isEmpty!32048 (getLanguageWitness!940 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296))) (not ((_ is Some!14786) (getLanguageWitness!940 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296)))))))

(assert (=> d!1663100 d!1663138))

(declare-fun bs!1200952 () Bool)

(declare-fun d!1663140 () Bool)

(assert (= bs!1200952 (and d!1663140 d!1663136)))

(declare-fun lambda!256628 () Int)

(assert (=> bs!1200952 (not (= lambda!256628 lambda!256621))))

(declare-fun bs!1200953 () Bool)

(assert (= bs!1200953 (and d!1663140 d!1663128)))

(assert (=> bs!1200953 (not (= lambda!256628 lambda!256618))))

(declare-fun bs!1200954 () Bool)

(assert (= bs!1200954 (and d!1663140 b!5143828)))

(assert (=> bs!1200954 (= lambda!256628 lambda!256611)))

(declare-fun bs!1200955 () Bool)

(assert (= bs!1200955 (and d!1663140 b!5143829)))

(assert (=> bs!1200955 (= lambda!256628 lambda!256612)))

(declare-fun bs!1200956 () Bool)

(assert (= bs!1200956 (and d!1663140 d!1663100)))

(assert (=> bs!1200956 (not (= lambda!256628 lambda!256610))))

(declare-fun lt!2120638 () Option!14787)

(declare-fun isDefined!11536 (Option!14787) Bool)

(declare-fun exists!1797 ((InoxSet Context!7714) Int) Bool)

(assert (=> d!1663140 (= (isDefined!11536 lt!2120638) (exists!1797 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296) lambda!256628))))

(declare-fun e!3207694 () Option!14787)

(assert (=> d!1663140 (= lt!2120638 e!3207694)))

(declare-fun c!885593 () Bool)

(assert (=> d!1663140 (= c!885593 (exists!1797 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296) lambda!256628))))

(assert (=> d!1663140 (= (getLanguageWitness!940 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296)) lt!2120638)))

(declare-fun b!5144001 () Bool)

(declare-fun getLanguageWitness!942 (Context!7714) Option!14787)

(declare-fun getWitness!843 ((InoxSet Context!7714) Int) Context!7714)

(assert (=> b!5144001 (= e!3207694 (getLanguageWitness!942 (getWitness!843 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296) lambda!256628)))))

(declare-fun b!5144002 () Bool)

(assert (=> b!5144002 (= e!3207694 None!14786)))

(assert (= (and d!1663140 c!885593) b!5144001))

(assert (= (and d!1663140 (not c!885593)) b!5144002))

(declare-fun m!6205552 () Bool)

(assert (=> d!1663140 m!6205552))

(assert (=> d!1663140 m!6205388))

(declare-fun m!6205554 () Bool)

(assert (=> d!1663140 m!6205554))

(assert (=> d!1663140 m!6205388))

(assert (=> d!1663140 m!6205554))

(assert (=> b!5144001 m!6205388))

(declare-fun m!6205556 () Bool)

(assert (=> b!5144001 m!6205556))

(assert (=> b!5144001 m!6205556))

(declare-fun m!6205558 () Bool)

(assert (=> b!5144001 m!6205558))

(assert (=> d!1663100 d!1663140))

(declare-fun d!1663150 () Bool)

(declare-fun lt!2120641 () Bool)

(assert (=> d!1663150 (= lt!2120641 (forall!13936 (toList!8387 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296)) lambda!256610))))

(declare-fun choose!38057 ((InoxSet Context!7714) Int) Bool)

(assert (=> d!1663150 (= lt!2120641 (choose!38057 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296) lambda!256610))))

(assert (=> d!1663150 (= (forall!13934 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296) lambda!256610) lt!2120641)))

(declare-fun bs!1200957 () Bool)

(assert (= bs!1200957 d!1663150))

(assert (=> bs!1200957 m!6205388))

(assert (=> bs!1200957 m!6205458))

(assert (=> bs!1200957 m!6205458))

(declare-fun m!6205560 () Bool)

(assert (=> bs!1200957 m!6205560))

(assert (=> bs!1200957 m!6205388))

(declare-fun m!6205562 () Bool)

(assert (=> bs!1200957 m!6205562))

(assert (=> d!1663100 d!1663150))

(declare-fun d!1663152 () Bool)

(declare-fun e!3207699 () Bool)

(assert (=> d!1663152 e!3207699))

(declare-fun res!2190052 () Bool)

(assert (=> d!1663152 (=> (not res!2190052) (not e!3207699))))

(declare-fun lt!2120646 () List!59860)

(declare-fun noDuplicate!1111 (List!59860) Bool)

(assert (=> d!1663152 (= res!2190052 (noDuplicate!1111 lt!2120646))))

(declare-fun choose!38058 ((InoxSet Context!7714)) List!59860)

(assert (=> d!1663152 (= lt!2120646 (choose!38058 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296)))))

(assert (=> d!1663152 (= (toList!8387 (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296)) lt!2120646)))

(declare-fun b!5144009 () Bool)

(declare-fun content!10588 (List!59860) (InoxSet Context!7714))

(assert (=> b!5144009 (= e!3207699 (= (content!10588 lt!2120646) (derivationStepZipperDown!152 (regOne!29459 expr!117) ctx!100 a!1296)))))

(assert (= (and d!1663152 res!2190052) b!5144009))

(declare-fun m!6205564 () Bool)

(assert (=> d!1663152 m!6205564))

(assert (=> d!1663152 m!6205388))

(declare-fun m!6205566 () Bool)

(assert (=> d!1663152 m!6205566))

(declare-fun m!6205568 () Bool)

(assert (=> b!5144009 m!6205568))

(assert (=> bm!359217 d!1663152))

(declare-fun bm!359258 () Bool)

(declare-fun call!359263 () Bool)

(declare-fun c!885605 () Bool)

(assert (=> bm!359258 (= call!359263 (lostCause!1499 (ite c!885605 (regTwo!29459 (regTwo!29459 expr!117)) (regTwo!29458 (regTwo!29459 expr!117)))))))

(declare-fun bm!359259 () Bool)

(declare-fun call!359264 () Bool)

(assert (=> bm!359259 (= call!359264 (lostCause!1499 (ite c!885605 (regOne!29459 (regTwo!29459 expr!117)) (regOne!29458 (regTwo!29459 expr!117)))))))

(declare-fun b!5144028 () Bool)

(declare-fun e!3207716 () Bool)

(declare-fun e!3207717 () Bool)

(assert (=> b!5144028 (= e!3207716 e!3207717)))

(declare-fun res!2190067 () Bool)

(assert (=> b!5144028 (= res!2190067 call!359264)))

(assert (=> b!5144028 (=> res!2190067 e!3207717)))

(declare-fun b!5144029 () Bool)

(declare-fun e!3207714 () Bool)

(assert (=> b!5144029 (= e!3207714 call!359263)))

(declare-fun b!5144031 () Bool)

(assert (=> b!5144031 (= e!3207716 e!3207714)))

(declare-fun res!2190066 () Bool)

(assert (=> b!5144031 (= res!2190066 call!359264)))

(assert (=> b!5144031 (=> (not res!2190066) (not e!3207714))))

(declare-fun b!5144032 () Bool)

(declare-fun e!3207715 () Bool)

(assert (=> b!5144032 (= e!3207715 e!3207716)))

(assert (=> b!5144032 (= c!885605 ((_ is Union!14473) (regTwo!29459 expr!117)))))

(declare-fun b!5144030 () Bool)

(declare-fun e!3207713 () Bool)

(assert (=> b!5144030 (= e!3207713 e!3207715)))

(declare-fun res!2190064 () Bool)

(assert (=> b!5144030 (=> (not res!2190064) (not e!3207715))))

(assert (=> b!5144030 (= res!2190064 (and (not ((_ is ElementMatch!14473) (regTwo!29459 expr!117))) (not ((_ is Star!14473) (regTwo!29459 expr!117)))))))

(declare-fun d!1663154 () Bool)

(declare-fun lt!2120653 () Bool)

(declare-fun getLanguageWitness!943 (Regex!14473) Option!14787)

(assert (=> d!1663154 (= lt!2120653 (isEmpty!32048 (getLanguageWitness!943 (regTwo!29459 expr!117))))))

(declare-fun e!3207718 () Bool)

(assert (=> d!1663154 (= lt!2120653 e!3207718)))

(declare-fun res!2190063 () Bool)

(assert (=> d!1663154 (=> (not res!2190063) (not e!3207718))))

(assert (=> d!1663154 (= res!2190063 (not ((_ is EmptyExpr!14473) (regTwo!29459 expr!117))))))

(assert (=> d!1663154 (= (lostCauseFct!354 (regTwo!29459 expr!117)) lt!2120653)))

(declare-fun b!5144033 () Bool)

(assert (=> b!5144033 (= e!3207718 e!3207713)))

(declare-fun res!2190065 () Bool)

(assert (=> b!5144033 (=> res!2190065 e!3207713)))

(assert (=> b!5144033 (= res!2190065 ((_ is EmptyLang!14473) (regTwo!29459 expr!117)))))

(declare-fun b!5144034 () Bool)

(assert (=> b!5144034 (= e!3207717 call!359263)))

(assert (= (and d!1663154 res!2190063) b!5144033))

(assert (= (and b!5144033 (not res!2190065)) b!5144030))

(assert (= (and b!5144030 res!2190064) b!5144032))

(assert (= (and b!5144032 c!885605) b!5144031))

(assert (= (and b!5144032 (not c!885605)) b!5144028))

(assert (= (and b!5144031 res!2190066) b!5144029))

(assert (= (and b!5144028 (not res!2190067)) b!5144034))

(assert (= (or b!5144031 b!5144028) bm!359259))

(assert (= (or b!5144029 b!5144034) bm!359258))

(declare-fun m!6205584 () Bool)

(assert (=> bm!359258 m!6205584))

(declare-fun m!6205586 () Bool)

(assert (=> bm!359259 m!6205586))

(declare-fun m!6205588 () Bool)

(assert (=> d!1663154 m!6205588))

(assert (=> d!1663154 m!6205588))

(declare-fun m!6205590 () Bool)

(assert (=> d!1663154 m!6205590))

(assert (=> d!1663076 d!1663154))

(declare-fun bs!1200965 () Bool)

(declare-fun d!1663162 () Bool)

(assert (= bs!1200965 (and d!1663162 d!1663136)))

(declare-fun lambda!256643 () Int)

(assert (=> bs!1200965 (= (= (ite c!885557 lambda!256611 lambda!256612) lambda!256610) (= lambda!256643 lambda!256621))))

(declare-fun bs!1200966 () Bool)

(assert (= bs!1200966 (and d!1663162 d!1663140)))

(assert (=> bs!1200966 (not (= lambda!256643 lambda!256628))))

(declare-fun bs!1200967 () Bool)

(assert (= bs!1200967 (and d!1663162 d!1663128)))

(assert (=> bs!1200967 (= (= (ite c!885557 lambda!256611 lambda!256612) lambda!256610) (= lambda!256643 lambda!256618))))

(declare-fun bs!1200968 () Bool)

(assert (= bs!1200968 (and d!1663162 b!5143828)))

(assert (=> bs!1200968 (not (= lambda!256643 lambda!256611))))

(declare-fun bs!1200969 () Bool)

(assert (= bs!1200969 (and d!1663162 b!5143829)))

(assert (=> bs!1200969 (not (= lambda!256643 lambda!256612))))

(declare-fun bs!1200970 () Bool)

(assert (= bs!1200970 (and d!1663162 d!1663100)))

(assert (=> bs!1200970 (not (= lambda!256643 lambda!256610))))

(assert (=> d!1663162 true))

(assert (=> d!1663162 (< (dynLambda!23777 order!26961 (ite c!885557 lambda!256611 lambda!256612)) (dynLambda!23777 order!26961 lambda!256643))))

(assert (=> d!1663162 (= (exists!1795 (ite c!885557 lt!2120619 lt!2120621) (ite c!885557 lambda!256611 lambda!256612)) (not (forall!13936 (ite c!885557 lt!2120619 lt!2120621) lambda!256643)))))

(declare-fun bs!1200971 () Bool)

(assert (= bs!1200971 d!1663162))

(declare-fun m!6205592 () Bool)

(assert (=> bs!1200971 m!6205592))

(assert (=> bm!359216 d!1663162))

(declare-fun bm!359260 () Bool)

(declare-fun call!359268 () (InoxSet Context!7714))

(declare-fun call!359269 () List!59857)

(declare-fun c!885607 () Bool)

(declare-fun c!885606 () Bool)

(declare-fun c!885608 () Bool)

(assert (=> bm!359260 (= call!359268 (derivationStepZipperDown!152 (ite c!885607 (regTwo!29459 (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117)))))) (ite c!885608 (regTwo!29458 (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117)))))) (ite c!885606 (regOne!29458 (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117)))))) (reg!14802 (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117))))))))) (ite (or c!885607 c!885608) (ite (or c!885569 c!885570) ctx!100 (Context!7715 call!359239)) (Context!7715 call!359269)) a!1296))))

(declare-fun d!1663164 () Bool)

(declare-fun c!885609 () Bool)

(assert (=> d!1663164 (= c!885609 (and ((_ is ElementMatch!14473) (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117)))))) (= (c!885504 (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117)))))) a!1296)))))

(declare-fun e!3207722 () (InoxSet Context!7714))

(assert (=> d!1663164 (= (derivationStepZipperDown!152 (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117))))) (ite (or c!885569 c!885570) ctx!100 (Context!7715 call!359239)) a!1296) e!3207722)))

(declare-fun bm!359261 () Bool)

(declare-fun call!359265 () (InoxSet Context!7714))

(assert (=> bm!359261 (= call!359265 call!359268)))

(declare-fun b!5144037 () Bool)

(declare-fun c!885610 () Bool)

(assert (=> b!5144037 (= c!885610 ((_ is Star!14473) (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117)))))))))

(declare-fun e!3207725 () (InoxSet Context!7714))

(declare-fun e!3207721 () (InoxSet Context!7714))

(assert (=> b!5144037 (= e!3207725 e!3207721)))

(declare-fun b!5144038 () Bool)

(assert (=> b!5144038 (= e!3207722 (store ((as const (Array Context!7714 Bool)) false) (ite (or c!885569 c!885570) ctx!100 (Context!7715 call!359239)) true))))

(declare-fun b!5144039 () Bool)

(declare-fun e!3207726 () (InoxSet Context!7714))

(assert (=> b!5144039 (= e!3207726 e!3207725)))

(assert (=> b!5144039 (= c!885606 ((_ is Concat!23318) (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117)))))))))

(declare-fun bm!359262 () Bool)

(declare-fun call!359266 () (InoxSet Context!7714))

(assert (=> bm!359262 (= call!359266 call!359265)))

(declare-fun b!5144040 () Bool)

(declare-fun e!3207724 () Bool)

(assert (=> b!5144040 (= c!885608 e!3207724)))

(declare-fun res!2190068 () Bool)

(assert (=> b!5144040 (=> (not res!2190068) (not e!3207724))))

(assert (=> b!5144040 (= res!2190068 ((_ is Concat!23318) (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117)))))))))

(declare-fun e!3207723 () (InoxSet Context!7714))

(assert (=> b!5144040 (= e!3207723 e!3207726)))

(declare-fun b!5144041 () Bool)

(declare-fun call!359270 () (InoxSet Context!7714))

(assert (=> b!5144041 (= e!3207723 ((_ map or) call!359270 call!359268))))

(declare-fun bm!359263 () Bool)

(declare-fun call!359267 () List!59857)

(assert (=> bm!359263 (= call!359269 call!359267)))

(declare-fun b!5144042 () Bool)

(assert (=> b!5144042 (= e!3207722 e!3207723)))

(assert (=> b!5144042 (= c!885607 ((_ is Union!14473) (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117)))))))))

(declare-fun b!5144043 () Bool)

(assert (=> b!5144043 (= e!3207725 call!359266)))

(declare-fun b!5144044 () Bool)

(assert (=> b!5144044 (= e!3207721 call!359266)))

(declare-fun bm!359264 () Bool)

(assert (=> bm!359264 (= call!359270 (derivationStepZipperDown!152 (ite c!885607 (regOne!29459 (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117)))))) (regOne!29458 (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117))))))) (ite c!885607 (ite (or c!885569 c!885570) ctx!100 (Context!7715 call!359239)) (Context!7715 call!359267)) a!1296))))

(declare-fun b!5144045 () Bool)

(assert (=> b!5144045 (= e!3207721 ((as const (Array Context!7714 Bool)) false))))

(declare-fun b!5144046 () Bool)

(assert (=> b!5144046 (= e!3207726 ((_ map or) call!359270 call!359265))))

(declare-fun b!5144047 () Bool)

(assert (=> b!5144047 (= e!3207724 (nullable!4829 (regOne!29458 (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117))))))))))

(declare-fun bm!359265 () Bool)

(assert (=> bm!359265 (= call!359267 ($colon$colon!1201 (exprs!4357 (ite (or c!885569 c!885570) ctx!100 (Context!7715 call!359239))) (ite (or c!885608 c!885606) (regTwo!29458 (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117)))))) (ite c!885569 (regTwo!29459 (regOne!29459 expr!117)) (ite c!885570 (regTwo!29458 (regOne!29459 expr!117)) (ite c!885568 (regOne!29458 (regOne!29459 expr!117)) (reg!14802 (regOne!29459 expr!117))))))))))

(assert (= (and d!1663164 c!885609) b!5144038))

(assert (= (and d!1663164 (not c!885609)) b!5144042))

(assert (= (and b!5144042 c!885607) b!5144041))

(assert (= (and b!5144042 (not c!885607)) b!5144040))

(assert (= (and b!5144040 res!2190068) b!5144047))

(assert (= (and b!5144040 c!885608) b!5144046))

(assert (= (and b!5144040 (not c!885608)) b!5144039))

(assert (= (and b!5144039 c!885606) b!5144043))

(assert (= (and b!5144039 (not c!885606)) b!5144037))

(assert (= (and b!5144037 c!885610) b!5144044))

(assert (= (and b!5144037 (not c!885610)) b!5144045))

(assert (= (or b!5144043 b!5144044) bm!359263))

(assert (= (or b!5144043 b!5144044) bm!359262))

(assert (= (or b!5144046 bm!359263) bm!359265))

(assert (= (or b!5144046 bm!359262) bm!359261))

(assert (= (or b!5144041 bm!359261) bm!359260))

(assert (= (or b!5144041 b!5144046) bm!359264))

(declare-fun m!6205602 () Bool)

(assert (=> b!5144038 m!6205602))

(declare-fun m!6205604 () Bool)

(assert (=> bm!359264 m!6205604))

(declare-fun m!6205606 () Bool)

(assert (=> bm!359265 m!6205606))

(declare-fun m!6205608 () Bool)

(assert (=> b!5144047 m!6205608))

(declare-fun m!6205610 () Bool)

(assert (=> bm!359260 m!6205610))

(assert (=> bm!359230 d!1663164))

(declare-fun c!885617 () Bool)

(declare-fun call!359280 () (InoxSet Context!7714))

(declare-fun call!359281 () List!59857)

(declare-fun c!885616 () Bool)

(declare-fun c!885618 () Bool)

(declare-fun bm!359272 () Bool)

(assert (=> bm!359272 (= call!359280 (derivationStepZipperDown!152 (ite c!885617 (regTwo!29459 (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117)))) (ite c!885618 (regTwo!29458 (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117)))) (ite c!885616 (regOne!29458 (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117)))) (reg!14802 (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117))))))) (ite (or c!885617 c!885618) (ite c!885569 ctx!100 (Context!7715 call!359237)) (Context!7715 call!359281)) a!1296))))

(declare-fun c!885619 () Bool)

(declare-fun d!1663170 () Bool)

(assert (=> d!1663170 (= c!885619 (and ((_ is ElementMatch!14473) (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117)))) (= (c!885504 (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117)))) a!1296)))))

(declare-fun e!3207734 () (InoxSet Context!7714))

(assert (=> d!1663170 (= (derivationStepZipperDown!152 (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117))) (ite c!885569 ctx!100 (Context!7715 call!359237)) a!1296) e!3207734)))

(declare-fun bm!359273 () Bool)

(declare-fun call!359277 () (InoxSet Context!7714))

(assert (=> bm!359273 (= call!359277 call!359280)))

(declare-fun b!5144059 () Bool)

(declare-fun c!885620 () Bool)

(assert (=> b!5144059 (= c!885620 ((_ is Star!14473) (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117)))))))

(declare-fun e!3207737 () (InoxSet Context!7714))

(declare-fun e!3207733 () (InoxSet Context!7714))

(assert (=> b!5144059 (= e!3207737 e!3207733)))

(declare-fun b!5144060 () Bool)

(assert (=> b!5144060 (= e!3207734 (store ((as const (Array Context!7714 Bool)) false) (ite c!885569 ctx!100 (Context!7715 call!359237)) true))))

(declare-fun b!5144061 () Bool)

(declare-fun e!3207738 () (InoxSet Context!7714))

(assert (=> b!5144061 (= e!3207738 e!3207737)))

(assert (=> b!5144061 (= c!885616 ((_ is Concat!23318) (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117)))))))

(declare-fun bm!359274 () Bool)

(declare-fun call!359278 () (InoxSet Context!7714))

(assert (=> bm!359274 (= call!359278 call!359277)))

(declare-fun b!5144062 () Bool)

(declare-fun e!3207736 () Bool)

(assert (=> b!5144062 (= c!885618 e!3207736)))

(declare-fun res!2190070 () Bool)

(assert (=> b!5144062 (=> (not res!2190070) (not e!3207736))))

(assert (=> b!5144062 (= res!2190070 ((_ is Concat!23318) (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117)))))))

(declare-fun e!3207735 () (InoxSet Context!7714))

(assert (=> b!5144062 (= e!3207735 e!3207738)))

(declare-fun b!5144063 () Bool)

(declare-fun call!359282 () (InoxSet Context!7714))

(assert (=> b!5144063 (= e!3207735 ((_ map or) call!359282 call!359280))))

(declare-fun bm!359275 () Bool)

(declare-fun call!359279 () List!59857)

(assert (=> bm!359275 (= call!359281 call!359279)))

(declare-fun b!5144064 () Bool)

(assert (=> b!5144064 (= e!3207734 e!3207735)))

(assert (=> b!5144064 (= c!885617 ((_ is Union!14473) (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117)))))))

(declare-fun b!5144065 () Bool)

(assert (=> b!5144065 (= e!3207737 call!359278)))

(declare-fun b!5144066 () Bool)

(assert (=> b!5144066 (= e!3207733 call!359278)))

(declare-fun bm!359276 () Bool)

(assert (=> bm!359276 (= call!359282 (derivationStepZipperDown!152 (ite c!885617 (regOne!29459 (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117)))) (regOne!29458 (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117))))) (ite c!885617 (ite c!885569 ctx!100 (Context!7715 call!359237)) (Context!7715 call!359279)) a!1296))))

(declare-fun b!5144067 () Bool)

(assert (=> b!5144067 (= e!3207733 ((as const (Array Context!7714 Bool)) false))))

(declare-fun b!5144068 () Bool)

(assert (=> b!5144068 (= e!3207738 ((_ map or) call!359282 call!359277))))

(declare-fun b!5144069 () Bool)

(assert (=> b!5144069 (= e!3207736 (nullable!4829 (regOne!29458 (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117))))))))

(declare-fun bm!359277 () Bool)

(assert (=> bm!359277 (= call!359279 ($colon$colon!1201 (exprs!4357 (ite c!885569 ctx!100 (Context!7715 call!359237))) (ite (or c!885618 c!885616) (regTwo!29458 (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117)))) (ite c!885569 (regOne!29459 (regOne!29459 expr!117)) (regOne!29458 (regOne!29459 expr!117))))))))

(assert (= (and d!1663170 c!885619) b!5144060))

(assert (= (and d!1663170 (not c!885619)) b!5144064))

(assert (= (and b!5144064 c!885617) b!5144063))

(assert (= (and b!5144064 (not c!885617)) b!5144062))

(assert (= (and b!5144062 res!2190070) b!5144069))

(assert (= (and b!5144062 c!885618) b!5144068))

(assert (= (and b!5144062 (not c!885618)) b!5144061))

(assert (= (and b!5144061 c!885616) b!5144065))

(assert (= (and b!5144061 (not c!885616)) b!5144059))

(assert (= (and b!5144059 c!885620) b!5144066))

(assert (= (and b!5144059 (not c!885620)) b!5144067))

(assert (= (or b!5144065 b!5144066) bm!359275))

(assert (= (or b!5144065 b!5144066) bm!359274))

(assert (= (or b!5144068 bm!359275) bm!359277))

(assert (= (or b!5144068 bm!359274) bm!359273))

(assert (= (or b!5144063 bm!359273) bm!359272))

(assert (= (or b!5144063 b!5144068) bm!359276))

(declare-fun m!6205622 () Bool)

(assert (=> b!5144060 m!6205622))

(declare-fun m!6205624 () Bool)

(assert (=> bm!359276 m!6205624))

(declare-fun m!6205626 () Bool)

(assert (=> bm!359277 m!6205626))

(declare-fun m!6205628 () Bool)

(assert (=> b!5144069 m!6205628))

(declare-fun m!6205630 () Bool)

(assert (=> bm!359272 m!6205630))

(assert (=> bm!359234 d!1663170))

(declare-fun bm!359278 () Bool)

(declare-fun call!359283 () Bool)

(declare-fun c!885621 () Bool)

(assert (=> bm!359278 (= call!359283 (lostCause!1499 (ite c!885621 (regTwo!29459 expr!117) (regTwo!29458 expr!117))))))

(declare-fun bm!359279 () Bool)

(declare-fun call!359284 () Bool)

(assert (=> bm!359279 (= call!359284 (lostCause!1499 (ite c!885621 (regOne!29459 expr!117) (regOne!29458 expr!117))))))

(declare-fun b!5144070 () Bool)

(declare-fun e!3207742 () Bool)

(declare-fun e!3207743 () Bool)

(assert (=> b!5144070 (= e!3207742 e!3207743)))

(declare-fun res!2190075 () Bool)

(assert (=> b!5144070 (= res!2190075 call!359284)))

(assert (=> b!5144070 (=> res!2190075 e!3207743)))

(declare-fun b!5144071 () Bool)

(declare-fun e!3207740 () Bool)

(assert (=> b!5144071 (= e!3207740 call!359283)))

(declare-fun b!5144073 () Bool)

(assert (=> b!5144073 (= e!3207742 e!3207740)))

(declare-fun res!2190074 () Bool)

(assert (=> b!5144073 (= res!2190074 call!359284)))

(assert (=> b!5144073 (=> (not res!2190074) (not e!3207740))))

(declare-fun b!5144074 () Bool)

(declare-fun e!3207741 () Bool)

(assert (=> b!5144074 (= e!3207741 e!3207742)))

(assert (=> b!5144074 (= c!885621 ((_ is Union!14473) expr!117))))

(declare-fun b!5144072 () Bool)

(declare-fun e!3207739 () Bool)

(assert (=> b!5144072 (= e!3207739 e!3207741)))

(declare-fun res!2190072 () Bool)

(assert (=> b!5144072 (=> (not res!2190072) (not e!3207741))))

(assert (=> b!5144072 (= res!2190072 (and (not ((_ is ElementMatch!14473) expr!117)) (not ((_ is Star!14473) expr!117))))))

(declare-fun d!1663174 () Bool)

(declare-fun lt!2120657 () Bool)

(assert (=> d!1663174 (= lt!2120657 (isEmpty!32048 (getLanguageWitness!943 expr!117)))))

(declare-fun e!3207744 () Bool)

(assert (=> d!1663174 (= lt!2120657 e!3207744)))

(declare-fun res!2190071 () Bool)

(assert (=> d!1663174 (=> (not res!2190071) (not e!3207744))))

(assert (=> d!1663174 (= res!2190071 (not ((_ is EmptyExpr!14473) expr!117)))))

(assert (=> d!1663174 (= (lostCauseFct!354 expr!117) lt!2120657)))

(declare-fun b!5144075 () Bool)

(assert (=> b!5144075 (= e!3207744 e!3207739)))

(declare-fun res!2190073 () Bool)

(assert (=> b!5144075 (=> res!2190073 e!3207739)))

(assert (=> b!5144075 (= res!2190073 ((_ is EmptyLang!14473) expr!117))))

(declare-fun b!5144076 () Bool)

(assert (=> b!5144076 (= e!3207743 call!359283)))

(assert (= (and d!1663174 res!2190071) b!5144075))

(assert (= (and b!5144075 (not res!2190073)) b!5144072))

(assert (= (and b!5144072 res!2190072) b!5144074))

(assert (= (and b!5144074 c!885621) b!5144073))

(assert (= (and b!5144074 (not c!885621)) b!5144070))

(assert (= (and b!5144073 res!2190074) b!5144071))

(assert (= (and b!5144070 (not res!2190075)) b!5144076))

(assert (= (or b!5144073 b!5144070) bm!359279))

(assert (= (or b!5144071 b!5144076) bm!359278))

(declare-fun m!6205632 () Bool)

(assert (=> bm!359278 m!6205632))

(declare-fun m!6205634 () Bool)

(assert (=> bm!359279 m!6205634))

(declare-fun m!6205636 () Bool)

(assert (=> d!1663174 m!6205636))

(assert (=> d!1663174 m!6205636))

(declare-fun m!6205638 () Bool)

(assert (=> d!1663174 m!6205638))

(assert (=> d!1663074 d!1663174))

(declare-fun b!5144077 () Bool)

(declare-fun e!3207745 () Bool)

(assert (=> b!5144077 (= e!3207745 tp_is_empty!38095)))

(declare-fun b!5144078 () Bool)

(declare-fun tp!1436439 () Bool)

(declare-fun tp!1436440 () Bool)

(assert (=> b!5144078 (= e!3207745 (and tp!1436439 tp!1436440))))

(declare-fun b!5144079 () Bool)

(declare-fun tp!1436441 () Bool)

(assert (=> b!5144079 (= e!3207745 tp!1436441)))

(declare-fun b!5144080 () Bool)

(declare-fun tp!1436442 () Bool)

(declare-fun tp!1436438 () Bool)

(assert (=> b!5144080 (= e!3207745 (and tp!1436442 tp!1436438))))

(assert (=> b!5143915 (= tp!1436416 e!3207745)))

(assert (= (and b!5143915 ((_ is ElementMatch!14473) (regOne!29459 (regOne!29459 expr!117)))) b!5144077))

(assert (= (and b!5143915 ((_ is Concat!23318) (regOne!29459 (regOne!29459 expr!117)))) b!5144078))

(assert (= (and b!5143915 ((_ is Star!14473) (regOne!29459 (regOne!29459 expr!117)))) b!5144079))

(assert (= (and b!5143915 ((_ is Union!14473) (regOne!29459 (regOne!29459 expr!117)))) b!5144080))

(declare-fun b!5144081 () Bool)

(declare-fun e!3207746 () Bool)

(assert (=> b!5144081 (= e!3207746 tp_is_empty!38095)))

(declare-fun b!5144082 () Bool)

(declare-fun tp!1436444 () Bool)

(declare-fun tp!1436445 () Bool)

(assert (=> b!5144082 (= e!3207746 (and tp!1436444 tp!1436445))))

(declare-fun b!5144083 () Bool)

(declare-fun tp!1436446 () Bool)

(assert (=> b!5144083 (= e!3207746 tp!1436446)))

(declare-fun b!5144084 () Bool)

(declare-fun tp!1436447 () Bool)

(declare-fun tp!1436443 () Bool)

(assert (=> b!5144084 (= e!3207746 (and tp!1436447 tp!1436443))))

(assert (=> b!5143915 (= tp!1436412 e!3207746)))

(assert (= (and b!5143915 ((_ is ElementMatch!14473) (regTwo!29459 (regOne!29459 expr!117)))) b!5144081))

(assert (= (and b!5143915 ((_ is Concat!23318) (regTwo!29459 (regOne!29459 expr!117)))) b!5144082))

(assert (= (and b!5143915 ((_ is Star!14473) (regTwo!29459 (regOne!29459 expr!117)))) b!5144083))

(assert (= (and b!5143915 ((_ is Union!14473) (regTwo!29459 (regOne!29459 expr!117)))) b!5144084))

(declare-fun b!5144085 () Bool)

(declare-fun e!3207747 () Bool)

(assert (=> b!5144085 (= e!3207747 tp_is_empty!38095)))

(declare-fun b!5144086 () Bool)

(declare-fun tp!1436449 () Bool)

(declare-fun tp!1436450 () Bool)

(assert (=> b!5144086 (= e!3207747 (and tp!1436449 tp!1436450))))

(declare-fun b!5144087 () Bool)

(declare-fun tp!1436451 () Bool)

(assert (=> b!5144087 (= e!3207747 tp!1436451)))

(declare-fun b!5144088 () Bool)

(declare-fun tp!1436452 () Bool)

(declare-fun tp!1436448 () Bool)

(assert (=> b!5144088 (= e!3207747 (and tp!1436452 tp!1436448))))

(assert (=> b!5143910 (= tp!1436410 e!3207747)))

(assert (= (and b!5143910 ((_ is ElementMatch!14473) (reg!14802 (reg!14802 expr!117)))) b!5144085))

(assert (= (and b!5143910 ((_ is Concat!23318) (reg!14802 (reg!14802 expr!117)))) b!5144086))

(assert (= (and b!5143910 ((_ is Star!14473) (reg!14802 (reg!14802 expr!117)))) b!5144087))

(assert (= (and b!5143910 ((_ is Union!14473) (reg!14802 (reg!14802 expr!117)))) b!5144088))

(declare-fun b!5144089 () Bool)

(declare-fun e!3207748 () Bool)

(assert (=> b!5144089 (= e!3207748 tp_is_empty!38095)))

(declare-fun b!5144090 () Bool)

(declare-fun tp!1436454 () Bool)

(declare-fun tp!1436455 () Bool)

(assert (=> b!5144090 (= e!3207748 (and tp!1436454 tp!1436455))))

(declare-fun b!5144091 () Bool)

(declare-fun tp!1436456 () Bool)

(assert (=> b!5144091 (= e!3207748 tp!1436456)))

(declare-fun b!5144092 () Bool)

(declare-fun tp!1436457 () Bool)

(declare-fun tp!1436453 () Bool)

(assert (=> b!5144092 (= e!3207748 (and tp!1436457 tp!1436453))))

(assert (=> b!5143919 (= tp!1436421 e!3207748)))

(assert (= (and b!5143919 ((_ is ElementMatch!14473) (regOne!29459 (regTwo!29459 expr!117)))) b!5144089))

(assert (= (and b!5143919 ((_ is Concat!23318) (regOne!29459 (regTwo!29459 expr!117)))) b!5144090))

(assert (= (and b!5143919 ((_ is Star!14473) (regOne!29459 (regTwo!29459 expr!117)))) b!5144091))

(assert (= (and b!5143919 ((_ is Union!14473) (regOne!29459 (regTwo!29459 expr!117)))) b!5144092))

(declare-fun b!5144093 () Bool)

(declare-fun e!3207749 () Bool)

(assert (=> b!5144093 (= e!3207749 tp_is_empty!38095)))

(declare-fun b!5144094 () Bool)

(declare-fun tp!1436459 () Bool)

(declare-fun tp!1436460 () Bool)

(assert (=> b!5144094 (= e!3207749 (and tp!1436459 tp!1436460))))

(declare-fun b!5144095 () Bool)

(declare-fun tp!1436461 () Bool)

(assert (=> b!5144095 (= e!3207749 tp!1436461)))

(declare-fun b!5144096 () Bool)

(declare-fun tp!1436462 () Bool)

(declare-fun tp!1436458 () Bool)

(assert (=> b!5144096 (= e!3207749 (and tp!1436462 tp!1436458))))

(assert (=> b!5143919 (= tp!1436417 e!3207749)))

(assert (= (and b!5143919 ((_ is ElementMatch!14473) (regTwo!29459 (regTwo!29459 expr!117)))) b!5144093))

(assert (= (and b!5143919 ((_ is Concat!23318) (regTwo!29459 (regTwo!29459 expr!117)))) b!5144094))

(assert (= (and b!5143919 ((_ is Star!14473) (regTwo!29459 (regTwo!29459 expr!117)))) b!5144095))

(assert (= (and b!5143919 ((_ is Union!14473) (regTwo!29459 (regTwo!29459 expr!117)))) b!5144096))

(declare-fun b!5144097 () Bool)

(declare-fun e!3207750 () Bool)

(assert (=> b!5144097 (= e!3207750 tp_is_empty!38095)))

(declare-fun b!5144098 () Bool)

(declare-fun tp!1436464 () Bool)

(declare-fun tp!1436465 () Bool)

(assert (=> b!5144098 (= e!3207750 (and tp!1436464 tp!1436465))))

(declare-fun b!5144099 () Bool)

(declare-fun tp!1436466 () Bool)

(assert (=> b!5144099 (= e!3207750 tp!1436466)))

(declare-fun b!5144100 () Bool)

(declare-fun tp!1436467 () Bool)

(declare-fun tp!1436463 () Bool)

(assert (=> b!5144100 (= e!3207750 (and tp!1436467 tp!1436463))))

(assert (=> b!5143914 (= tp!1436415 e!3207750)))

(assert (= (and b!5143914 ((_ is ElementMatch!14473) (reg!14802 (regOne!29459 expr!117)))) b!5144097))

(assert (= (and b!5143914 ((_ is Concat!23318) (reg!14802 (regOne!29459 expr!117)))) b!5144098))

(assert (= (and b!5143914 ((_ is Star!14473) (reg!14802 (regOne!29459 expr!117)))) b!5144099))

(assert (= (and b!5143914 ((_ is Union!14473) (reg!14802 (regOne!29459 expr!117)))) b!5144100))

(declare-fun b!5144110 () Bool)

(declare-fun e!3207758 () Bool)

(assert (=> b!5144110 (= e!3207758 tp_is_empty!38095)))

(declare-fun b!5144111 () Bool)

(declare-fun tp!1436469 () Bool)

(declare-fun tp!1436470 () Bool)

(assert (=> b!5144111 (= e!3207758 (and tp!1436469 tp!1436470))))

(declare-fun b!5144112 () Bool)

(declare-fun tp!1436471 () Bool)

(assert (=> b!5144112 (= e!3207758 tp!1436471)))

(declare-fun b!5144113 () Bool)

(declare-fun tp!1436472 () Bool)

(declare-fun tp!1436468 () Bool)

(assert (=> b!5144113 (= e!3207758 (and tp!1436472 tp!1436468))))

(assert (=> b!5143911 (= tp!1436411 e!3207758)))

(assert (= (and b!5143911 ((_ is ElementMatch!14473) (regOne!29459 (reg!14802 expr!117)))) b!5144110))

(assert (= (and b!5143911 ((_ is Concat!23318) (regOne!29459 (reg!14802 expr!117)))) b!5144111))

(assert (= (and b!5143911 ((_ is Star!14473) (regOne!29459 (reg!14802 expr!117)))) b!5144112))

(assert (= (and b!5143911 ((_ is Union!14473) (regOne!29459 (reg!14802 expr!117)))) b!5144113))

(declare-fun b!5144114 () Bool)

(declare-fun e!3207759 () Bool)

(assert (=> b!5144114 (= e!3207759 tp_is_empty!38095)))

(declare-fun b!5144115 () Bool)

(declare-fun tp!1436474 () Bool)

(declare-fun tp!1436475 () Bool)

(assert (=> b!5144115 (= e!3207759 (and tp!1436474 tp!1436475))))

(declare-fun b!5144116 () Bool)

(declare-fun tp!1436476 () Bool)

(assert (=> b!5144116 (= e!3207759 tp!1436476)))

(declare-fun b!5144117 () Bool)

(declare-fun tp!1436477 () Bool)

(declare-fun tp!1436473 () Bool)

(assert (=> b!5144117 (= e!3207759 (and tp!1436477 tp!1436473))))

(assert (=> b!5143911 (= tp!1436407 e!3207759)))

(assert (= (and b!5143911 ((_ is ElementMatch!14473) (regTwo!29459 (reg!14802 expr!117)))) b!5144114))

(assert (= (and b!5143911 ((_ is Concat!23318) (regTwo!29459 (reg!14802 expr!117)))) b!5144115))

(assert (= (and b!5143911 ((_ is Star!14473) (regTwo!29459 (reg!14802 expr!117)))) b!5144116))

(assert (= (and b!5143911 ((_ is Union!14473) (regTwo!29459 (reg!14802 expr!117)))) b!5144117))

(declare-fun b!5144118 () Bool)

(declare-fun e!3207760 () Bool)

(assert (=> b!5144118 (= e!3207760 tp_is_empty!38095)))

(declare-fun b!5144119 () Bool)

(declare-fun tp!1436479 () Bool)

(declare-fun tp!1436480 () Bool)

(assert (=> b!5144119 (= e!3207760 (and tp!1436479 tp!1436480))))

(declare-fun b!5144120 () Bool)

(declare-fun tp!1436481 () Bool)

(assert (=> b!5144120 (= e!3207760 tp!1436481)))

(declare-fun b!5144121 () Bool)

(declare-fun tp!1436482 () Bool)

(declare-fun tp!1436478 () Bool)

(assert (=> b!5144121 (= e!3207760 (and tp!1436482 tp!1436478))))

(assert (=> b!5143926 (= tp!1436429 e!3207760)))

(assert (= (and b!5143926 ((_ is ElementMatch!14473) (regOne!29458 (regOne!29458 expr!117)))) b!5144118))

(assert (= (and b!5143926 ((_ is Concat!23318) (regOne!29458 (regOne!29458 expr!117)))) b!5144119))

(assert (= (and b!5143926 ((_ is Star!14473) (regOne!29458 (regOne!29458 expr!117)))) b!5144120))

(assert (= (and b!5143926 ((_ is Union!14473) (regOne!29458 (regOne!29458 expr!117)))) b!5144121))

(declare-fun b!5144122 () Bool)

(declare-fun e!3207761 () Bool)

(assert (=> b!5144122 (= e!3207761 tp_is_empty!38095)))

(declare-fun b!5144123 () Bool)

(declare-fun tp!1436484 () Bool)

(declare-fun tp!1436485 () Bool)

(assert (=> b!5144123 (= e!3207761 (and tp!1436484 tp!1436485))))

(declare-fun b!5144124 () Bool)

(declare-fun tp!1436486 () Bool)

(assert (=> b!5144124 (= e!3207761 tp!1436486)))

(declare-fun b!5144125 () Bool)

(declare-fun tp!1436487 () Bool)

(declare-fun tp!1436483 () Bool)

(assert (=> b!5144125 (= e!3207761 (and tp!1436487 tp!1436483))))

(assert (=> b!5143926 (= tp!1436430 e!3207761)))

(assert (= (and b!5143926 ((_ is ElementMatch!14473) (regTwo!29458 (regOne!29458 expr!117)))) b!5144122))

(assert (= (and b!5143926 ((_ is Concat!23318) (regTwo!29458 (regOne!29458 expr!117)))) b!5144123))

(assert (= (and b!5143926 ((_ is Star!14473) (regTwo!29458 (regOne!29458 expr!117)))) b!5144124))

(assert (= (and b!5143926 ((_ is Union!14473) (regTwo!29458 (regOne!29458 expr!117)))) b!5144125))

(declare-fun b!5144126 () Bool)

(declare-fun e!3207762 () Bool)

(assert (=> b!5144126 (= e!3207762 tp_is_empty!38095)))

(declare-fun b!5144127 () Bool)

(declare-fun tp!1436489 () Bool)

(declare-fun tp!1436490 () Bool)

(assert (=> b!5144127 (= e!3207762 (and tp!1436489 tp!1436490))))

(declare-fun b!5144128 () Bool)

(declare-fun tp!1436491 () Bool)

(assert (=> b!5144128 (= e!3207762 tp!1436491)))

(declare-fun b!5144129 () Bool)

(declare-fun tp!1436492 () Bool)

(declare-fun tp!1436488 () Bool)

(assert (=> b!5144129 (= e!3207762 (and tp!1436492 tp!1436488))))

(assert (=> b!5143930 (= tp!1436434 e!3207762)))

(assert (= (and b!5143930 ((_ is ElementMatch!14473) (regOne!29458 (regTwo!29458 expr!117)))) b!5144126))

(assert (= (and b!5143930 ((_ is Concat!23318) (regOne!29458 (regTwo!29458 expr!117)))) b!5144127))

(assert (= (and b!5143930 ((_ is Star!14473) (regOne!29458 (regTwo!29458 expr!117)))) b!5144128))

(assert (= (and b!5143930 ((_ is Union!14473) (regOne!29458 (regTwo!29458 expr!117)))) b!5144129))

(declare-fun b!5144130 () Bool)

(declare-fun e!3207763 () Bool)

(assert (=> b!5144130 (= e!3207763 tp_is_empty!38095)))

(declare-fun b!5144131 () Bool)

(declare-fun tp!1436494 () Bool)

(declare-fun tp!1436495 () Bool)

(assert (=> b!5144131 (= e!3207763 (and tp!1436494 tp!1436495))))

(declare-fun b!5144132 () Bool)

(declare-fun tp!1436496 () Bool)

(assert (=> b!5144132 (= e!3207763 tp!1436496)))

(declare-fun b!5144133 () Bool)

(declare-fun tp!1436497 () Bool)

(declare-fun tp!1436493 () Bool)

(assert (=> b!5144133 (= e!3207763 (and tp!1436497 tp!1436493))))

(assert (=> b!5143930 (= tp!1436435 e!3207763)))

(assert (= (and b!5143930 ((_ is ElementMatch!14473) (regTwo!29458 (regTwo!29458 expr!117)))) b!5144130))

(assert (= (and b!5143930 ((_ is Concat!23318) (regTwo!29458 (regTwo!29458 expr!117)))) b!5144131))

(assert (= (and b!5143930 ((_ is Star!14473) (regTwo!29458 (regTwo!29458 expr!117)))) b!5144132))

(assert (= (and b!5143930 ((_ is Union!14473) (regTwo!29458 (regTwo!29458 expr!117)))) b!5144133))

(declare-fun b!5144134 () Bool)

(declare-fun e!3207764 () Bool)

(assert (=> b!5144134 (= e!3207764 tp_is_empty!38095)))

(declare-fun b!5144135 () Bool)

(declare-fun tp!1436499 () Bool)

(declare-fun tp!1436500 () Bool)

(assert (=> b!5144135 (= e!3207764 (and tp!1436499 tp!1436500))))

(declare-fun b!5144136 () Bool)

(declare-fun tp!1436501 () Bool)

(assert (=> b!5144136 (= e!3207764 tp!1436501)))

(declare-fun b!5144137 () Bool)

(declare-fun tp!1436502 () Bool)

(declare-fun tp!1436498 () Bool)

(assert (=> b!5144137 (= e!3207764 (and tp!1436502 tp!1436498))))

(assert (=> b!5143932 (= tp!1436437 e!3207764)))

(assert (= (and b!5143932 ((_ is ElementMatch!14473) (regOne!29459 (regTwo!29458 expr!117)))) b!5144134))

(assert (= (and b!5143932 ((_ is Concat!23318) (regOne!29459 (regTwo!29458 expr!117)))) b!5144135))

(assert (= (and b!5143932 ((_ is Star!14473) (regOne!29459 (regTwo!29458 expr!117)))) b!5144136))

(assert (= (and b!5143932 ((_ is Union!14473) (regOne!29459 (regTwo!29458 expr!117)))) b!5144137))

(declare-fun b!5144138 () Bool)

(declare-fun e!3207765 () Bool)

(assert (=> b!5144138 (= e!3207765 tp_is_empty!38095)))

(declare-fun b!5144139 () Bool)

(declare-fun tp!1436504 () Bool)

(declare-fun tp!1436505 () Bool)

(assert (=> b!5144139 (= e!3207765 (and tp!1436504 tp!1436505))))

(declare-fun b!5144140 () Bool)

(declare-fun tp!1436506 () Bool)

(assert (=> b!5144140 (= e!3207765 tp!1436506)))

(declare-fun b!5144141 () Bool)

(declare-fun tp!1436507 () Bool)

(declare-fun tp!1436503 () Bool)

(assert (=> b!5144141 (= e!3207765 (and tp!1436507 tp!1436503))))

(assert (=> b!5143932 (= tp!1436433 e!3207765)))

(assert (= (and b!5143932 ((_ is ElementMatch!14473) (regTwo!29459 (regTwo!29458 expr!117)))) b!5144138))

(assert (= (and b!5143932 ((_ is Concat!23318) (regTwo!29459 (regTwo!29458 expr!117)))) b!5144139))

(assert (= (and b!5143932 ((_ is Star!14473) (regTwo!29459 (regTwo!29458 expr!117)))) b!5144140))

(assert (= (and b!5143932 ((_ is Union!14473) (regTwo!29459 (regTwo!29458 expr!117)))) b!5144141))

(declare-fun b!5144142 () Bool)

(declare-fun e!3207766 () Bool)

(assert (=> b!5144142 (= e!3207766 tp_is_empty!38095)))

(declare-fun b!5144143 () Bool)

(declare-fun tp!1436509 () Bool)

(declare-fun tp!1436510 () Bool)

(assert (=> b!5144143 (= e!3207766 (and tp!1436509 tp!1436510))))

(declare-fun b!5144144 () Bool)

(declare-fun tp!1436511 () Bool)

(assert (=> b!5144144 (= e!3207766 tp!1436511)))

(declare-fun b!5144145 () Bool)

(declare-fun tp!1436512 () Bool)

(declare-fun tp!1436508 () Bool)

(assert (=> b!5144145 (= e!3207766 (and tp!1436512 tp!1436508))))

(assert (=> b!5143927 (= tp!1436431 e!3207766)))

(assert (= (and b!5143927 ((_ is ElementMatch!14473) (reg!14802 (regOne!29458 expr!117)))) b!5144142))

(assert (= (and b!5143927 ((_ is Concat!23318) (reg!14802 (regOne!29458 expr!117)))) b!5144143))

(assert (= (and b!5143927 ((_ is Star!14473) (reg!14802 (regOne!29458 expr!117)))) b!5144144))

(assert (= (and b!5143927 ((_ is Union!14473) (reg!14802 (regOne!29458 expr!117)))) b!5144145))

(declare-fun b!5144146 () Bool)

(declare-fun e!3207767 () Bool)

(assert (=> b!5144146 (= e!3207767 tp_is_empty!38095)))

(declare-fun b!5144147 () Bool)

(declare-fun tp!1436514 () Bool)

(declare-fun tp!1436515 () Bool)

(assert (=> b!5144147 (= e!3207767 (and tp!1436514 tp!1436515))))

(declare-fun b!5144148 () Bool)

(declare-fun tp!1436516 () Bool)

(assert (=> b!5144148 (= e!3207767 tp!1436516)))

(declare-fun b!5144149 () Bool)

(declare-fun tp!1436517 () Bool)

(declare-fun tp!1436513 () Bool)

(assert (=> b!5144149 (= e!3207767 (and tp!1436517 tp!1436513))))

(assert (=> b!5143931 (= tp!1436436 e!3207767)))

(assert (= (and b!5143931 ((_ is ElementMatch!14473) (reg!14802 (regTwo!29458 expr!117)))) b!5144146))

(assert (= (and b!5143931 ((_ is Concat!23318) (reg!14802 (regTwo!29458 expr!117)))) b!5144147))

(assert (= (and b!5143931 ((_ is Star!14473) (reg!14802 (regTwo!29458 expr!117)))) b!5144148))

(assert (= (and b!5143931 ((_ is Union!14473) (reg!14802 (regTwo!29458 expr!117)))) b!5144149))

(declare-fun b!5144150 () Bool)

(declare-fun e!3207768 () Bool)

(assert (=> b!5144150 (= e!3207768 tp_is_empty!38095)))

(declare-fun b!5144151 () Bool)

(declare-fun tp!1436519 () Bool)

(declare-fun tp!1436520 () Bool)

(assert (=> b!5144151 (= e!3207768 (and tp!1436519 tp!1436520))))

(declare-fun b!5144152 () Bool)

(declare-fun tp!1436521 () Bool)

(assert (=> b!5144152 (= e!3207768 tp!1436521)))

(declare-fun b!5144153 () Bool)

(declare-fun tp!1436522 () Bool)

(declare-fun tp!1436518 () Bool)

(assert (=> b!5144153 (= e!3207768 (and tp!1436522 tp!1436518))))

(assert (=> b!5143924 (= tp!1436426 e!3207768)))

(assert (= (and b!5143924 ((_ is ElementMatch!14473) (h!66181 (exprs!4357 ctx!100)))) b!5144150))

(assert (= (and b!5143924 ((_ is Concat!23318) (h!66181 (exprs!4357 ctx!100)))) b!5144151))

(assert (= (and b!5143924 ((_ is Star!14473) (h!66181 (exprs!4357 ctx!100)))) b!5144152))

(assert (= (and b!5143924 ((_ is Union!14473) (h!66181 (exprs!4357 ctx!100)))) b!5144153))

(declare-fun b!5144154 () Bool)

(declare-fun e!3207769 () Bool)

(declare-fun tp!1436523 () Bool)

(declare-fun tp!1436524 () Bool)

(assert (=> b!5144154 (= e!3207769 (and tp!1436523 tp!1436524))))

(assert (=> b!5143924 (= tp!1436427 e!3207769)))

(assert (= (and b!5143924 ((_ is Cons!59733) (t!372892 (exprs!4357 ctx!100)))) b!5144154))

(declare-fun b!5144155 () Bool)

(declare-fun e!3207770 () Bool)

(assert (=> b!5144155 (= e!3207770 tp_is_empty!38095)))

(declare-fun b!5144156 () Bool)

(declare-fun tp!1436526 () Bool)

(declare-fun tp!1436527 () Bool)

(assert (=> b!5144156 (= e!3207770 (and tp!1436526 tp!1436527))))

(declare-fun b!5144157 () Bool)

(declare-fun tp!1436528 () Bool)

(assert (=> b!5144157 (= e!3207770 tp!1436528)))

(declare-fun b!5144158 () Bool)

(declare-fun tp!1436529 () Bool)

(declare-fun tp!1436525 () Bool)

(assert (=> b!5144158 (= e!3207770 (and tp!1436529 tp!1436525))))

(assert (=> b!5143928 (= tp!1436432 e!3207770)))

(assert (= (and b!5143928 ((_ is ElementMatch!14473) (regOne!29459 (regOne!29458 expr!117)))) b!5144155))

(assert (= (and b!5143928 ((_ is Concat!23318) (regOne!29459 (regOne!29458 expr!117)))) b!5144156))

(assert (= (and b!5143928 ((_ is Star!14473) (regOne!29459 (regOne!29458 expr!117)))) b!5144157))

(assert (= (and b!5143928 ((_ is Union!14473) (regOne!29459 (regOne!29458 expr!117)))) b!5144158))

(declare-fun b!5144159 () Bool)

(declare-fun e!3207771 () Bool)

(assert (=> b!5144159 (= e!3207771 tp_is_empty!38095)))

(declare-fun b!5144160 () Bool)

(declare-fun tp!1436531 () Bool)

(declare-fun tp!1436532 () Bool)

(assert (=> b!5144160 (= e!3207771 (and tp!1436531 tp!1436532))))

(declare-fun b!5144161 () Bool)

(declare-fun tp!1436533 () Bool)

(assert (=> b!5144161 (= e!3207771 tp!1436533)))

(declare-fun b!5144162 () Bool)

(declare-fun tp!1436534 () Bool)

(declare-fun tp!1436530 () Bool)

(assert (=> b!5144162 (= e!3207771 (and tp!1436534 tp!1436530))))

(assert (=> b!5143928 (= tp!1436428 e!3207771)))

(assert (= (and b!5143928 ((_ is ElementMatch!14473) (regTwo!29459 (regOne!29458 expr!117)))) b!5144159))

(assert (= (and b!5143928 ((_ is Concat!23318) (regTwo!29459 (regOne!29458 expr!117)))) b!5144160))

(assert (= (and b!5143928 ((_ is Star!14473) (regTwo!29459 (regOne!29458 expr!117)))) b!5144161))

(assert (= (and b!5143928 ((_ is Union!14473) (regTwo!29459 (regOne!29458 expr!117)))) b!5144162))

(declare-fun b!5144163 () Bool)

(declare-fun e!3207772 () Bool)

(assert (=> b!5144163 (= e!3207772 tp_is_empty!38095)))

(declare-fun b!5144164 () Bool)

(declare-fun tp!1436536 () Bool)

(declare-fun tp!1436537 () Bool)

(assert (=> b!5144164 (= e!3207772 (and tp!1436536 tp!1436537))))

(declare-fun b!5144165 () Bool)

(declare-fun tp!1436538 () Bool)

(assert (=> b!5144165 (= e!3207772 tp!1436538)))

(declare-fun b!5144166 () Bool)

(declare-fun tp!1436539 () Bool)

(declare-fun tp!1436535 () Bool)

(assert (=> b!5144166 (= e!3207772 (and tp!1436539 tp!1436535))))

(assert (=> b!5143917 (= tp!1436418 e!3207772)))

(assert (= (and b!5143917 ((_ is ElementMatch!14473) (regOne!29458 (regTwo!29459 expr!117)))) b!5144163))

(assert (= (and b!5143917 ((_ is Concat!23318) (regOne!29458 (regTwo!29459 expr!117)))) b!5144164))

(assert (= (and b!5143917 ((_ is Star!14473) (regOne!29458 (regTwo!29459 expr!117)))) b!5144165))

(assert (= (and b!5143917 ((_ is Union!14473) (regOne!29458 (regTwo!29459 expr!117)))) b!5144166))

(declare-fun b!5144167 () Bool)

(declare-fun e!3207773 () Bool)

(assert (=> b!5144167 (= e!3207773 tp_is_empty!38095)))

(declare-fun b!5144168 () Bool)

(declare-fun tp!1436541 () Bool)

(declare-fun tp!1436542 () Bool)

(assert (=> b!5144168 (= e!3207773 (and tp!1436541 tp!1436542))))

(declare-fun b!5144169 () Bool)

(declare-fun tp!1436543 () Bool)

(assert (=> b!5144169 (= e!3207773 tp!1436543)))

(declare-fun b!5144170 () Bool)

(declare-fun tp!1436544 () Bool)

(declare-fun tp!1436540 () Bool)

(assert (=> b!5144170 (= e!3207773 (and tp!1436544 tp!1436540))))

(assert (=> b!5143917 (= tp!1436419 e!3207773)))

(assert (= (and b!5143917 ((_ is ElementMatch!14473) (regTwo!29458 (regTwo!29459 expr!117)))) b!5144167))

(assert (= (and b!5143917 ((_ is Concat!23318) (regTwo!29458 (regTwo!29459 expr!117)))) b!5144168))

(assert (= (and b!5143917 ((_ is Star!14473) (regTwo!29458 (regTwo!29459 expr!117)))) b!5144169))

(assert (= (and b!5143917 ((_ is Union!14473) (regTwo!29458 (regTwo!29459 expr!117)))) b!5144170))

(declare-fun b!5144171 () Bool)

(declare-fun e!3207774 () Bool)

(assert (=> b!5144171 (= e!3207774 tp_is_empty!38095)))

(declare-fun b!5144172 () Bool)

(declare-fun tp!1436546 () Bool)

(declare-fun tp!1436547 () Bool)

(assert (=> b!5144172 (= e!3207774 (and tp!1436546 tp!1436547))))

(declare-fun b!5144173 () Bool)

(declare-fun tp!1436548 () Bool)

(assert (=> b!5144173 (= e!3207774 tp!1436548)))

(declare-fun b!5144174 () Bool)

(declare-fun tp!1436549 () Bool)

(declare-fun tp!1436545 () Bool)

(assert (=> b!5144174 (= e!3207774 (and tp!1436549 tp!1436545))))

(assert (=> b!5143909 (= tp!1436408 e!3207774)))

(assert (= (and b!5143909 ((_ is ElementMatch!14473) (regOne!29458 (reg!14802 expr!117)))) b!5144171))

(assert (= (and b!5143909 ((_ is Concat!23318) (regOne!29458 (reg!14802 expr!117)))) b!5144172))

(assert (= (and b!5143909 ((_ is Star!14473) (regOne!29458 (reg!14802 expr!117)))) b!5144173))

(assert (= (and b!5143909 ((_ is Union!14473) (regOne!29458 (reg!14802 expr!117)))) b!5144174))

(declare-fun b!5144175 () Bool)

(declare-fun e!3207775 () Bool)

(assert (=> b!5144175 (= e!3207775 tp_is_empty!38095)))

(declare-fun b!5144176 () Bool)

(declare-fun tp!1436551 () Bool)

(declare-fun tp!1436552 () Bool)

(assert (=> b!5144176 (= e!3207775 (and tp!1436551 tp!1436552))))

(declare-fun b!5144177 () Bool)

(declare-fun tp!1436553 () Bool)

(assert (=> b!5144177 (= e!3207775 tp!1436553)))

(declare-fun b!5144178 () Bool)

(declare-fun tp!1436554 () Bool)

(declare-fun tp!1436550 () Bool)

(assert (=> b!5144178 (= e!3207775 (and tp!1436554 tp!1436550))))

(assert (=> b!5143909 (= tp!1436409 e!3207775)))

(assert (= (and b!5143909 ((_ is ElementMatch!14473) (regTwo!29458 (reg!14802 expr!117)))) b!5144175))

(assert (= (and b!5143909 ((_ is Concat!23318) (regTwo!29458 (reg!14802 expr!117)))) b!5144176))

(assert (= (and b!5143909 ((_ is Star!14473) (regTwo!29458 (reg!14802 expr!117)))) b!5144177))

(assert (= (and b!5143909 ((_ is Union!14473) (regTwo!29458 (reg!14802 expr!117)))) b!5144178))

(declare-fun b!5144179 () Bool)

(declare-fun e!3207776 () Bool)

(assert (=> b!5144179 (= e!3207776 tp_is_empty!38095)))

(declare-fun b!5144180 () Bool)

(declare-fun tp!1436556 () Bool)

(declare-fun tp!1436557 () Bool)

(assert (=> b!5144180 (= e!3207776 (and tp!1436556 tp!1436557))))

(declare-fun b!5144181 () Bool)

(declare-fun tp!1436558 () Bool)

(assert (=> b!5144181 (= e!3207776 tp!1436558)))

(declare-fun b!5144182 () Bool)

(declare-fun tp!1436559 () Bool)

(declare-fun tp!1436555 () Bool)

(assert (=> b!5144182 (= e!3207776 (and tp!1436559 tp!1436555))))

(assert (=> b!5143918 (= tp!1436420 e!3207776)))

(assert (= (and b!5143918 ((_ is ElementMatch!14473) (reg!14802 (regTwo!29459 expr!117)))) b!5144179))

(assert (= (and b!5143918 ((_ is Concat!23318) (reg!14802 (regTwo!29459 expr!117)))) b!5144180))

(assert (= (and b!5143918 ((_ is Star!14473) (reg!14802 (regTwo!29459 expr!117)))) b!5144181))

(assert (= (and b!5143918 ((_ is Union!14473) (reg!14802 (regTwo!29459 expr!117)))) b!5144182))

(declare-fun b!5144183 () Bool)

(declare-fun e!3207777 () Bool)

(assert (=> b!5144183 (= e!3207777 tp_is_empty!38095)))

(declare-fun b!5144184 () Bool)

(declare-fun tp!1436561 () Bool)

(declare-fun tp!1436562 () Bool)

(assert (=> b!5144184 (= e!3207777 (and tp!1436561 tp!1436562))))

(declare-fun b!5144185 () Bool)

(declare-fun tp!1436563 () Bool)

(assert (=> b!5144185 (= e!3207777 tp!1436563)))

(declare-fun b!5144186 () Bool)

(declare-fun tp!1436564 () Bool)

(declare-fun tp!1436560 () Bool)

(assert (=> b!5144186 (= e!3207777 (and tp!1436564 tp!1436560))))

(assert (=> b!5143913 (= tp!1436413 e!3207777)))

(assert (= (and b!5143913 ((_ is ElementMatch!14473) (regOne!29458 (regOne!29459 expr!117)))) b!5144183))

(assert (= (and b!5143913 ((_ is Concat!23318) (regOne!29458 (regOne!29459 expr!117)))) b!5144184))

(assert (= (and b!5143913 ((_ is Star!14473) (regOne!29458 (regOne!29459 expr!117)))) b!5144185))

(assert (= (and b!5143913 ((_ is Union!14473) (regOne!29458 (regOne!29459 expr!117)))) b!5144186))

(declare-fun b!5144189 () Bool)

(declare-fun e!3207782 () Bool)

(assert (=> b!5144189 (= e!3207782 tp_is_empty!38095)))

(declare-fun b!5144192 () Bool)

(declare-fun tp!1436566 () Bool)

(declare-fun tp!1436567 () Bool)

(assert (=> b!5144192 (= e!3207782 (and tp!1436566 tp!1436567))))

(declare-fun b!5144193 () Bool)

(declare-fun tp!1436568 () Bool)

(assert (=> b!5144193 (= e!3207782 tp!1436568)))

(declare-fun b!5144194 () Bool)

(declare-fun tp!1436569 () Bool)

(declare-fun tp!1436565 () Bool)

(assert (=> b!5144194 (= e!3207782 (and tp!1436569 tp!1436565))))

(assert (=> b!5143913 (= tp!1436414 e!3207782)))

(assert (= (and b!5143913 ((_ is ElementMatch!14473) (regTwo!29458 (regOne!29459 expr!117)))) b!5144189))

(assert (= (and b!5143913 ((_ is Concat!23318) (regTwo!29458 (regOne!29459 expr!117)))) b!5144192))

(assert (= (and b!5143913 ((_ is Star!14473) (regTwo!29458 (regOne!29459 expr!117)))) b!5144193))

(assert (= (and b!5143913 ((_ is Union!14473) (regTwo!29458 (regOne!29459 expr!117)))) b!5144194))

(declare-fun b_lambda!200311 () Bool)

(assert (= b_lambda!200309 (or d!1663096 b_lambda!200311)))

(declare-fun bs!1200984 () Bool)

(declare-fun d!1663180 () Bool)

(assert (= bs!1200984 (and d!1663180 d!1663096)))

(assert (=> bs!1200984 (= (dynLambda!23779 lambda!256594 (h!66181 (exprs!4357 ctx!100))) (validRegex!6328 (h!66181 (exprs!4357 ctx!100))))))

(declare-fun m!6205648 () Bool)

(assert (=> bs!1200984 m!6205648))

(assert (=> b!5143986 d!1663180))

(check-sat (not bm!359248) (not b!5144131) (not b!5144194) (not b!5144123) (not b!5144086) (not bs!1200984) (not bm!359245) (not b!5143941) (not bm!359277) (not b!5144121) (not bm!359279) (not bm!359278) (not b!5144174) (not b!5144135) (not b!5144090) (not b!5144088) (not b!5144166) (not b!5144136) (not b!5144178) (not d!1663150) (not b!5144193) (not b!5144161) (not d!1663136) (not b!5144128) (not b!5144084) (not b!5144154) (not b!5144083) (not b!5144111) (not b!5144158) (not d!1663140) (not d!1663174) (not b!5144182) (not b!5144117) (not b!5144099) (not d!1663154) (not d!1663112) (not b!5144164) (not b!5144132) (not b!5144092) (not b!5144184) (not b!5144170) (not bm!359244) (not b!5144149) (not b!5144141) (not b!5144137) (not b!5143961) (not b!5144112) (not bm!359260) (not b!5144127) (not b!5144047) (not b!5144176) (not b!5144140) (not b!5144160) (not b!5144082) (not d!1663122) (not bm!359236) (not bm!359265) tp_is_empty!38095 (not b!5144139) (not d!1663128) (not b!5144145) (not b!5144133) (not bm!359258) (not b!5144172) (not bm!359276) (not bm!359239) (not b!5144080) (not b!5144144) (not b!5144096) (not d!1663130) (not b!5143952) (not b!5144115) (not b!5144162) (not bm!359241) (not bm!359272) (not bm!359238) (not b!5144100) (not b!5143981) (not bm!359259) (not bm!359247) (not b!5144169) (not b!5144165) (not b!5144009) (not b!5144143) (not b!5144186) (not b!5144177) (not b!5144185) (not b!5144153) (not b!5144091) (not b_lambda!200311) (not b!5144119) (not b!5144087) (not b!5144180) (not b!5144001) (not b!5144157) (not b!5144148) (not bm!359242) (not b!5144152) (not b!5144168) (not b!5144116) (not b!5144147) (not bm!359264) (not b!5144173) (not b!5144129) (not b!5144079) (not b!5144125) (not bm!359250) (not b!5144156) (not d!1663162) (not b!5144120) (not b!5144192) (not b!5143970) (not b!5144113) (not d!1663118) (not b!5144151) (not d!1663114) (not b!5144094) (not b!5144095) (not b!5144098) (not b!5144078) (not b!5143987) (not d!1663152) (not b!5144124) (not b!5144069) (not b!5144181))
(check-sat)
