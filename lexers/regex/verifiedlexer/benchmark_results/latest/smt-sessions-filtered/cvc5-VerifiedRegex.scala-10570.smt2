; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544086 () Bool)

(assert start!544086)

(declare-fun b!5138332 () Bool)

(declare-fun e!3204984 () Bool)

(declare-fun tp!1433068 () Bool)

(assert (=> b!5138332 (= e!3204984 tp!1433068)))

(declare-fun b!5138333 () Bool)

(declare-fun e!3204982 () Bool)

(declare-datatypes ((C!29126 0))(
  ( (C!29127 (val!24215 Int)) )
))
(declare-datatypes ((Regex!14430 0))(
  ( (ElementMatch!14430 (c!884780 C!29126)) (Concat!23275 (regOne!29372 Regex!14430) (regTwo!29372 Regex!14430)) (EmptyExpr!14430) (Star!14430 (reg!14759 Regex!14430)) (EmptyLang!14430) (Union!14430 (regOne!29373 Regex!14430) (regTwo!29373 Regex!14430)) )
))
(declare-datatypes ((List!59796 0))(
  ( (Nil!59672) (Cons!59672 (h!66120 Regex!14430) (t!372827 List!59796)) )
))
(declare-datatypes ((Context!7628 0))(
  ( (Context!7629 (exprs!4314 List!59796)) )
))
(declare-fun ctx!100 () Context!7628)

(declare-fun lostCause!1412 (Context!7628) Bool)

(assert (=> b!5138333 (= e!3204982 (lostCause!1412 ctx!100))))

(declare-fun b!5138334 () Bool)

(declare-fun res!2188456 () Bool)

(declare-fun e!3204985 () Bool)

(assert (=> b!5138334 (=> (not res!2188456) (not e!3204985))))

(declare-fun expr!117 () Regex!14430)

(declare-fun a!1296 () C!29126)

(assert (=> b!5138334 (= res!2188456 (and (or (not (is-ElementMatch!14430 expr!117)) (not (= (c!884780 expr!117) a!1296))) (is-Union!14430 expr!117)))))

(declare-fun b!5138335 () Bool)

(declare-fun validRegex!6285 (Regex!14430) Bool)

(assert (=> b!5138335 (= e!3204985 (not (validRegex!6285 (regTwo!29373 expr!117))))))

(declare-fun lostCauseZipper!1246 ((Set Context!7628)) Bool)

(declare-fun derivationStepZipperDown!127 (Regex!14430 Context!7628 C!29126) (Set Context!7628))

(assert (=> b!5138335 (lostCauseZipper!1246 (derivationStepZipperDown!127 (regTwo!29373 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151039 0))(
  ( (Unit!151040) )
))
(declare-fun lt!2119935 () Unit!151039)

(declare-fun lemmaLostCauseFixPointDerivDown!19 (Regex!14430 Context!7628 C!29126) Unit!151039)

(assert (=> b!5138335 (= lt!2119935 (lemmaLostCauseFixPointDerivDown!19 (regTwo!29373 expr!117) ctx!100 a!1296))))

(assert (=> b!5138335 (lostCauseZipper!1246 (derivationStepZipperDown!127 (regOne!29373 expr!117) ctx!100 a!1296))))

(declare-fun lt!2119936 () Unit!151039)

(assert (=> b!5138335 (= lt!2119936 (lemmaLostCauseFixPointDerivDown!19 (regOne!29373 expr!117) ctx!100 a!1296))))

(declare-fun b!5138336 () Bool)

(declare-fun tp!1433066 () Bool)

(declare-fun tp!1433070 () Bool)

(assert (=> b!5138336 (= e!3204984 (and tp!1433066 tp!1433070))))

(declare-fun b!5138337 () Bool)

(declare-fun e!3204983 () Bool)

(declare-fun tp!1433069 () Bool)

(assert (=> b!5138337 (= e!3204983 tp!1433069)))

(declare-fun b!5138338 () Bool)

(declare-fun tp!1433067 () Bool)

(declare-fun tp!1433071 () Bool)

(assert (=> b!5138338 (= e!3204984 (and tp!1433067 tp!1433071))))

(declare-fun res!2188454 () Bool)

(assert (=> start!544086 (=> (not res!2188454) (not e!3204985))))

(assert (=> start!544086 (= res!2188454 (validRegex!6285 expr!117))))

(assert (=> start!544086 e!3204985))

(assert (=> start!544086 e!3204984))

(declare-fun inv!79257 (Context!7628) Bool)

(assert (=> start!544086 (and (inv!79257 ctx!100) e!3204983)))

(declare-fun tp_is_empty!38009 () Bool)

(assert (=> start!544086 tp_is_empty!38009))

(declare-fun b!5138339 () Bool)

(declare-fun res!2188453 () Bool)

(assert (=> b!5138339 (=> (not res!2188453) (not e!3204985))))

(assert (=> b!5138339 (= res!2188453 e!3204982)))

(declare-fun res!2188455 () Bool)

(assert (=> b!5138339 (=> res!2188455 e!3204982)))

(declare-fun lostCause!1413 (Regex!14430) Bool)

(assert (=> b!5138339 (= res!2188455 (lostCause!1413 expr!117))))

(declare-fun b!5138340 () Bool)

(assert (=> b!5138340 (= e!3204984 tp_is_empty!38009)))

(assert (= (and start!544086 res!2188454) b!5138339))

(assert (= (and b!5138339 (not res!2188455)) b!5138333))

(assert (= (and b!5138339 res!2188453) b!5138334))

(assert (= (and b!5138334 res!2188456) b!5138335))

(assert (= (and start!544086 (is-ElementMatch!14430 expr!117)) b!5138340))

(assert (= (and start!544086 (is-Concat!23275 expr!117)) b!5138336))

(assert (= (and start!544086 (is-Star!14430 expr!117)) b!5138332))

(assert (= (and start!544086 (is-Union!14430 expr!117)) b!5138338))

(assert (= start!544086 b!5138337))

(declare-fun m!6203212 () Bool)

(assert (=> b!5138333 m!6203212))

(declare-fun m!6203214 () Bool)

(assert (=> b!5138335 m!6203214))

(declare-fun m!6203216 () Bool)

(assert (=> b!5138335 m!6203216))

(assert (=> b!5138335 m!6203214))

(declare-fun m!6203218 () Bool)

(assert (=> b!5138335 m!6203218))

(declare-fun m!6203220 () Bool)

(assert (=> b!5138335 m!6203220))

(assert (=> b!5138335 m!6203218))

(declare-fun m!6203222 () Bool)

(assert (=> b!5138335 m!6203222))

(declare-fun m!6203224 () Bool)

(assert (=> b!5138335 m!6203224))

(declare-fun m!6203226 () Bool)

(assert (=> b!5138335 m!6203226))

(declare-fun m!6203228 () Bool)

(assert (=> start!544086 m!6203228))

(declare-fun m!6203230 () Bool)

(assert (=> start!544086 m!6203230))

(declare-fun m!6203232 () Bool)

(assert (=> b!5138339 m!6203232))

(push 1)

(assert (not b!5138333))

(assert (not b!5138339))

(assert tp_is_empty!38009)

(assert (not b!5138336))

(assert (not b!5138337))

(assert (not b!5138332))

(assert (not start!544086))

(assert (not b!5138335))

(assert (not b!5138338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1662497 () Bool)

(declare-fun lostCauseFct!340 (Regex!14430) Bool)

(assert (=> d!1662497 (= (lostCause!1413 expr!117) (lostCauseFct!340 expr!117))))

(declare-fun bs!1200538 () Bool)

(assert (= bs!1200538 d!1662497))

(declare-fun m!6203256 () Bool)

(assert (=> bs!1200538 m!6203256))

(assert (=> b!5138339 d!1662497))

(declare-fun d!1662499 () Bool)

(declare-fun lambda!256255 () Int)

(declare-fun exists!1768 (List!59796 Int) Bool)

(assert (=> d!1662499 (= (lostCause!1412 ctx!100) (exists!1768 (exprs!4314 ctx!100) lambda!256255))))

(declare-fun bs!1200540 () Bool)

(assert (= bs!1200540 d!1662499))

(declare-fun m!6203266 () Bool)

(assert (=> bs!1200540 m!6203266))

(assert (=> b!5138333 d!1662499))

(declare-fun d!1662507 () Bool)

(assert (=> d!1662507 (lostCauseZipper!1246 (derivationStepZipperDown!127 (regTwo!29373 expr!117) ctx!100 a!1296))))

(declare-fun lt!2119952 () Unit!151039)

(declare-fun choose!38033 (Regex!14430 Context!7628 C!29126) Unit!151039)

(assert (=> d!1662507 (= lt!2119952 (choose!38033 (regTwo!29373 expr!117) ctx!100 a!1296))))

(assert (=> d!1662507 (validRegex!6285 (regTwo!29373 expr!117))))

(assert (=> d!1662507 (= (lemmaLostCauseFixPointDerivDown!19 (regTwo!29373 expr!117) ctx!100 a!1296) lt!2119952)))

(declare-fun bs!1200541 () Bool)

(assert (= bs!1200541 d!1662507))

(assert (=> bs!1200541 m!6203214))

(assert (=> bs!1200541 m!6203214))

(assert (=> bs!1200541 m!6203216))

(declare-fun m!6203268 () Bool)

(assert (=> bs!1200541 m!6203268))

(assert (=> bs!1200541 m!6203220))

(assert (=> b!5138335 d!1662507))

(declare-fun b!5138417 () Bool)

(declare-fun e!3205035 () Bool)

(declare-fun call!358490 () Bool)

(assert (=> b!5138417 (= e!3205035 call!358490)))

(declare-fun bm!358484 () Bool)

(declare-fun call!358489 () Bool)

(declare-fun call!358491 () Bool)

(assert (=> bm!358484 (= call!358489 call!358491)))

(declare-fun b!5138418 () Bool)

(declare-fun e!3205039 () Bool)

(declare-fun e!3205041 () Bool)

(assert (=> b!5138418 (= e!3205039 e!3205041)))

(declare-fun res!2188494 () Bool)

(declare-fun nullable!4795 (Regex!14430) Bool)

(assert (=> b!5138418 (= res!2188494 (not (nullable!4795 (reg!14759 (regTwo!29373 expr!117)))))))

(assert (=> b!5138418 (=> (not res!2188494) (not e!3205041))))

(declare-fun b!5138419 () Bool)

(declare-fun res!2188498 () Bool)

(declare-fun e!3205036 () Bool)

(assert (=> b!5138419 (=> (not res!2188498) (not e!3205036))))

(assert (=> b!5138419 (= res!2188498 call!358489)))

(declare-fun e!3205038 () Bool)

(assert (=> b!5138419 (= e!3205038 e!3205036)))

(declare-fun b!5138420 () Bool)

(declare-fun e!3205040 () Bool)

(assert (=> b!5138420 (= e!3205040 e!3205039)))

(declare-fun c!884796 () Bool)

(assert (=> b!5138420 (= c!884796 (is-Star!14430 (regTwo!29373 expr!117)))))

(declare-fun b!5138421 () Bool)

(assert (=> b!5138421 (= e!3205041 call!358491)))

(declare-fun b!5138422 () Bool)

(declare-fun e!3205037 () Bool)

(assert (=> b!5138422 (= e!3205037 e!3205035)))

(declare-fun res!2188497 () Bool)

(assert (=> b!5138422 (=> (not res!2188497) (not e!3205035))))

(assert (=> b!5138422 (= res!2188497 call!358489)))

(declare-fun b!5138423 () Bool)

(declare-fun res!2188495 () Bool)

(assert (=> b!5138423 (=> res!2188495 e!3205037)))

(assert (=> b!5138423 (= res!2188495 (not (is-Concat!23275 (regTwo!29373 expr!117))))))

(assert (=> b!5138423 (= e!3205038 e!3205037)))

(declare-fun b!5138424 () Bool)

(assert (=> b!5138424 (= e!3205039 e!3205038)))

(declare-fun c!884797 () Bool)

(assert (=> b!5138424 (= c!884797 (is-Union!14430 (regTwo!29373 expr!117)))))

(declare-fun bm!358486 () Bool)

(assert (=> bm!358486 (= call!358491 (validRegex!6285 (ite c!884796 (reg!14759 (regTwo!29373 expr!117)) (ite c!884797 (regOne!29373 (regTwo!29373 expr!117)) (regOne!29372 (regTwo!29373 expr!117))))))))

(declare-fun b!5138425 () Bool)

(assert (=> b!5138425 (= e!3205036 call!358490)))

(declare-fun d!1662509 () Bool)

(declare-fun res!2188496 () Bool)

(assert (=> d!1662509 (=> res!2188496 e!3205040)))

(assert (=> d!1662509 (= res!2188496 (is-ElementMatch!14430 (regTwo!29373 expr!117)))))

(assert (=> d!1662509 (= (validRegex!6285 (regTwo!29373 expr!117)) e!3205040)))

(declare-fun bm!358485 () Bool)

(assert (=> bm!358485 (= call!358490 (validRegex!6285 (ite c!884797 (regTwo!29373 (regTwo!29373 expr!117)) (regTwo!29372 (regTwo!29373 expr!117)))))))

(assert (= (and d!1662509 (not res!2188496)) b!5138420))

(assert (= (and b!5138420 c!884796) b!5138418))

(assert (= (and b!5138420 (not c!884796)) b!5138424))

(assert (= (and b!5138418 res!2188494) b!5138421))

(assert (= (and b!5138424 c!884797) b!5138419))

(assert (= (and b!5138424 (not c!884797)) b!5138423))

(assert (= (and b!5138419 res!2188498) b!5138425))

(assert (= (and b!5138423 (not res!2188495)) b!5138422))

(assert (= (and b!5138422 res!2188497) b!5138417))

(assert (= (or b!5138425 b!5138417) bm!358485))

(assert (= (or b!5138419 b!5138422) bm!358484))

(assert (= (or b!5138421 bm!358484) bm!358486))

(declare-fun m!6203270 () Bool)

(assert (=> b!5138418 m!6203270))

(declare-fun m!6203272 () Bool)

(assert (=> bm!358486 m!6203272))

(declare-fun m!6203274 () Bool)

(assert (=> bm!358485 m!6203274))

(assert (=> b!5138335 d!1662509))

(declare-fun bs!1200542 () Bool)

(declare-fun b!5138430 () Bool)

(declare-fun d!1662511 () Bool)

(assert (= bs!1200542 (and b!5138430 d!1662511)))

(declare-fun lambda!256269 () Int)

(declare-fun lambda!256268 () Int)

(assert (=> bs!1200542 (not (= lambda!256269 lambda!256268))))

(declare-fun bs!1200543 () Bool)

(declare-fun b!5138431 () Bool)

(assert (= bs!1200543 (and b!5138431 d!1662511)))

(declare-fun lambda!256270 () Int)

(assert (=> bs!1200543 (not (= lambda!256270 lambda!256268))))

(declare-fun bs!1200544 () Bool)

(assert (= bs!1200544 (and b!5138431 b!5138430)))

(assert (=> bs!1200544 (= lambda!256270 lambda!256269)))

(declare-fun c!884808 () Bool)

(declare-fun call!358496 () Bool)

(declare-datatypes ((List!59798 0))(
  ( (Nil!59674) (Cons!59674 (h!66122 Context!7628) (t!372829 List!59798)) )
))
(declare-fun lt!2119970 () List!59798)

(declare-fun bm!358491 () Bool)

(declare-fun lt!2119975 () List!59798)

(declare-fun exists!1769 (List!59798 Int) Bool)

(assert (=> bm!358491 (= call!358496 (exists!1769 (ite c!884808 lt!2119970 lt!2119975) (ite c!884808 lambda!256269 lambda!256270)))))

(declare-fun e!3205048 () Unit!151039)

(declare-fun Unit!151043 () Unit!151039)

(assert (=> b!5138430 (= e!3205048 Unit!151043)))

(declare-fun call!358497 () List!59798)

(assert (=> b!5138430 (= lt!2119970 call!358497)))

(declare-fun lt!2119976 () Unit!151039)

(declare-fun lemmaNotForallThenExists!425 (List!59798 Int) Unit!151039)

(assert (=> b!5138430 (= lt!2119976 (lemmaNotForallThenExists!425 lt!2119970 lambda!256268))))

(assert (=> b!5138430 call!358496))

(declare-fun lt!2119972 () Unit!151039)

(assert (=> b!5138430 (= lt!2119972 lt!2119976)))

(declare-fun lt!2119974 () Bool)

(declare-datatypes ((List!59799 0))(
  ( (Nil!59675) (Cons!59675 (h!66123 C!29126) (t!372830 List!59799)) )
))
(declare-datatypes ((Option!14776 0))(
  ( (None!14775) (Some!14775 (v!50804 List!59799)) )
))
(declare-fun isEmpty!32037 (Option!14776) Bool)

(declare-fun getLanguageWitness!925 ((Set Context!7628)) Option!14776)

(assert (=> d!1662511 (= lt!2119974 (isEmpty!32037 (getLanguageWitness!925 (derivationStepZipperDown!127 (regOne!29373 expr!117) ctx!100 a!1296))))))

(declare-fun forall!13899 ((Set Context!7628) Int) Bool)

(assert (=> d!1662511 (= lt!2119974 (forall!13899 (derivationStepZipperDown!127 (regOne!29373 expr!117) ctx!100 a!1296) lambda!256268))))

(declare-fun lt!2119969 () Unit!151039)

(assert (=> d!1662511 (= lt!2119969 e!3205048)))

(assert (=> d!1662511 (= c!884808 (not (forall!13899 (derivationStepZipperDown!127 (regOne!29373 expr!117) ctx!100 a!1296) lambda!256268)))))

(assert (=> d!1662511 (= (lostCauseZipper!1246 (derivationStepZipperDown!127 (regOne!29373 expr!117) ctx!100 a!1296)) lt!2119974)))

(declare-fun bm!358492 () Bool)

(declare-fun toList!8378 ((Set Context!7628)) List!59798)

(assert (=> bm!358492 (= call!358497 (toList!8378 (derivationStepZipperDown!127 (regOne!29373 expr!117) ctx!100 a!1296)))))

(declare-fun Unit!151044 () Unit!151039)

(assert (=> b!5138431 (= e!3205048 Unit!151044)))

(assert (=> b!5138431 (= lt!2119975 call!358497)))

(declare-fun lt!2119973 () Unit!151039)

(declare-fun lemmaForallThenNotExists!392 (List!59798 Int) Unit!151039)

(assert (=> b!5138431 (= lt!2119973 (lemmaForallThenNotExists!392 lt!2119975 lambda!256268))))

(assert (=> b!5138431 (not call!358496)))

(declare-fun lt!2119971 () Unit!151039)

(assert (=> b!5138431 (= lt!2119971 lt!2119973)))

(assert (= (and d!1662511 c!884808) b!5138430))

(assert (= (and d!1662511 (not c!884808)) b!5138431))

(assert (= (or b!5138430 b!5138431) bm!358491))

(assert (= (or b!5138430 b!5138431) bm!358492))

(declare-fun m!6203276 () Bool)

(assert (=> bm!358491 m!6203276))

(assert (=> bm!358492 m!6203218))

(declare-fun m!6203278 () Bool)

(assert (=> bm!358492 m!6203278))

(declare-fun m!6203280 () Bool)

(assert (=> b!5138430 m!6203280))

(declare-fun m!6203282 () Bool)

(assert (=> b!5138431 m!6203282))

(assert (=> d!1662511 m!6203218))

(declare-fun m!6203284 () Bool)

(assert (=> d!1662511 m!6203284))

(assert (=> d!1662511 m!6203284))

(declare-fun m!6203286 () Bool)

(assert (=> d!1662511 m!6203286))

(assert (=> d!1662511 m!6203218))

(declare-fun m!6203288 () Bool)

(assert (=> d!1662511 m!6203288))

(assert (=> d!1662511 m!6203218))

(assert (=> d!1662511 m!6203288))

(assert (=> b!5138335 d!1662511))

(declare-fun d!1662513 () Bool)

(assert (=> d!1662513 (lostCauseZipper!1246 (derivationStepZipperDown!127 (regOne!29373 expr!117) ctx!100 a!1296))))

(declare-fun lt!2119977 () Unit!151039)

(assert (=> d!1662513 (= lt!2119977 (choose!38033 (regOne!29373 expr!117) ctx!100 a!1296))))

(assert (=> d!1662513 (validRegex!6285 (regOne!29373 expr!117))))

(assert (=> d!1662513 (= (lemmaLostCauseFixPointDerivDown!19 (regOne!29373 expr!117) ctx!100 a!1296) lt!2119977)))

(declare-fun bs!1200545 () Bool)

(assert (= bs!1200545 d!1662513))

(assert (=> bs!1200545 m!6203218))

(assert (=> bs!1200545 m!6203218))

(assert (=> bs!1200545 m!6203222))

(declare-fun m!6203290 () Bool)

(assert (=> bs!1200545 m!6203290))

(declare-fun m!6203292 () Bool)

(assert (=> bs!1200545 m!6203292))

(assert (=> b!5138335 d!1662513))

(declare-fun bs!1200546 () Bool)

(declare-fun d!1662515 () Bool)

(assert (= bs!1200546 (and d!1662515 d!1662511)))

(declare-fun lambda!256271 () Int)

(assert (=> bs!1200546 (= lambda!256271 lambda!256268)))

(declare-fun bs!1200547 () Bool)

(assert (= bs!1200547 (and d!1662515 b!5138430)))

(assert (=> bs!1200547 (not (= lambda!256271 lambda!256269))))

(declare-fun bs!1200548 () Bool)

(assert (= bs!1200548 (and d!1662515 b!5138431)))

(assert (=> bs!1200548 (not (= lambda!256271 lambda!256270))))

(declare-fun bs!1200549 () Bool)

(declare-fun b!5138432 () Bool)

(assert (= bs!1200549 (and b!5138432 d!1662511)))

(declare-fun lambda!256272 () Int)

(assert (=> bs!1200549 (not (= lambda!256272 lambda!256268))))

(declare-fun bs!1200550 () Bool)

(assert (= bs!1200550 (and b!5138432 b!5138430)))

(assert (=> bs!1200550 (= lambda!256272 lambda!256269)))

(declare-fun bs!1200551 () Bool)

(assert (= bs!1200551 (and b!5138432 b!5138431)))

(assert (=> bs!1200551 (= lambda!256272 lambda!256270)))

(declare-fun bs!1200552 () Bool)

(assert (= bs!1200552 (and b!5138432 d!1662515)))

(assert (=> bs!1200552 (not (= lambda!256272 lambda!256271))))

(declare-fun bs!1200553 () Bool)

(declare-fun b!5138433 () Bool)

(assert (= bs!1200553 (and b!5138433 d!1662511)))

(declare-fun lambda!256273 () Int)

(assert (=> bs!1200553 (not (= lambda!256273 lambda!256268))))

(declare-fun bs!1200554 () Bool)

(assert (= bs!1200554 (and b!5138433 b!5138432)))

(assert (=> bs!1200554 (= lambda!256273 lambda!256272)))

(declare-fun bs!1200555 () Bool)

(assert (= bs!1200555 (and b!5138433 b!5138430)))

(assert (=> bs!1200555 (= lambda!256273 lambda!256269)))

(declare-fun bs!1200556 () Bool)

(assert (= bs!1200556 (and b!5138433 d!1662515)))

(assert (=> bs!1200556 (not (= lambda!256273 lambda!256271))))

(declare-fun bs!1200557 () Bool)

(assert (= bs!1200557 (and b!5138433 b!5138431)))

(assert (=> bs!1200557 (= lambda!256273 lambda!256270)))

(declare-fun bm!358493 () Bool)

(declare-fun lt!2119984 () List!59798)

(declare-fun c!884809 () Bool)

(declare-fun lt!2119979 () List!59798)

(declare-fun call!358498 () Bool)

(assert (=> bm!358493 (= call!358498 (exists!1769 (ite c!884809 lt!2119979 lt!2119984) (ite c!884809 lambda!256272 lambda!256273)))))

(declare-fun e!3205049 () Unit!151039)

(declare-fun Unit!151045 () Unit!151039)

(assert (=> b!5138432 (= e!3205049 Unit!151045)))

(declare-fun call!358499 () List!59798)

(assert (=> b!5138432 (= lt!2119979 call!358499)))

(declare-fun lt!2119985 () Unit!151039)

(assert (=> b!5138432 (= lt!2119985 (lemmaNotForallThenExists!425 lt!2119979 lambda!256271))))

(assert (=> b!5138432 call!358498))

(declare-fun lt!2119981 () Unit!151039)

(assert (=> b!5138432 (= lt!2119981 lt!2119985)))

(declare-fun lt!2119983 () Bool)

(assert (=> d!1662515 (= lt!2119983 (isEmpty!32037 (getLanguageWitness!925 (derivationStepZipperDown!127 (regTwo!29373 expr!117) ctx!100 a!1296))))))

(assert (=> d!1662515 (= lt!2119983 (forall!13899 (derivationStepZipperDown!127 (regTwo!29373 expr!117) ctx!100 a!1296) lambda!256271))))

(declare-fun lt!2119978 () Unit!151039)

(assert (=> d!1662515 (= lt!2119978 e!3205049)))

(assert (=> d!1662515 (= c!884809 (not (forall!13899 (derivationStepZipperDown!127 (regTwo!29373 expr!117) ctx!100 a!1296) lambda!256271)))))

(assert (=> d!1662515 (= (lostCauseZipper!1246 (derivationStepZipperDown!127 (regTwo!29373 expr!117) ctx!100 a!1296)) lt!2119983)))

(declare-fun bm!358494 () Bool)

(assert (=> bm!358494 (= call!358499 (toList!8378 (derivationStepZipperDown!127 (regTwo!29373 expr!117) ctx!100 a!1296)))))

(declare-fun Unit!151046 () Unit!151039)

(assert (=> b!5138433 (= e!3205049 Unit!151046)))

(assert (=> b!5138433 (= lt!2119984 call!358499)))

(declare-fun lt!2119982 () Unit!151039)

(assert (=> b!5138433 (= lt!2119982 (lemmaForallThenNotExists!392 lt!2119984 lambda!256271))))

(assert (=> b!5138433 (not call!358498)))

(declare-fun lt!2119980 () Unit!151039)

(assert (=> b!5138433 (= lt!2119980 lt!2119982)))

(assert (= (and d!1662515 c!884809) b!5138432))

(assert (= (and d!1662515 (not c!884809)) b!5138433))

(assert (= (or b!5138432 b!5138433) bm!358493))

(assert (= (or b!5138432 b!5138433) bm!358494))

(declare-fun m!6203294 () Bool)

(assert (=> bm!358493 m!6203294))

(assert (=> bm!358494 m!6203214))

(declare-fun m!6203296 () Bool)

(assert (=> bm!358494 m!6203296))

(declare-fun m!6203298 () Bool)

(assert (=> b!5138432 m!6203298))

(declare-fun m!6203300 () Bool)

(assert (=> b!5138433 m!6203300))

(assert (=> d!1662515 m!6203214))

(declare-fun m!6203302 () Bool)

(assert (=> d!1662515 m!6203302))

(assert (=> d!1662515 m!6203302))

(declare-fun m!6203304 () Bool)

(assert (=> d!1662515 m!6203304))

(assert (=> d!1662515 m!6203214))

(declare-fun m!6203306 () Bool)

(assert (=> d!1662515 m!6203306))

(assert (=> d!1662515 m!6203214))

(assert (=> d!1662515 m!6203306))

(assert (=> b!5138335 d!1662515))

(declare-fun b!5138456 () Bool)

(declare-fun c!884823 () Bool)

(assert (=> b!5138456 (= c!884823 (is-Star!14430 (regTwo!29373 expr!117)))))

(declare-fun e!3205063 () (Set Context!7628))

(declare-fun e!3205065 () (Set Context!7628))

(assert (=> b!5138456 (= e!3205063 e!3205065)))

(declare-fun b!5138457 () Bool)

(declare-fun call!358512 () (Set Context!7628))

(assert (=> b!5138457 (= e!3205063 call!358512)))

(declare-fun bm!358507 () Bool)

(declare-fun call!358517 () (Set Context!7628))

(declare-fun call!358516 () (Set Context!7628))

(assert (=> bm!358507 (= call!358517 call!358516)))

(declare-fun b!5138458 () Bool)

(assert (=> b!5138458 (= e!3205065 call!358512)))

(declare-fun call!358514 () List!59796)

(declare-fun bm!358508 () Bool)

(declare-fun c!884822 () Bool)

(declare-fun c!884821 () Bool)

(declare-fun c!884820 () Bool)

(assert (=> bm!358508 (= call!358516 (derivationStepZipperDown!127 (ite c!884822 (regOne!29373 (regTwo!29373 expr!117)) (ite c!884821 (regTwo!29372 (regTwo!29373 expr!117)) (ite c!884820 (regOne!29372 (regTwo!29373 expr!117)) (reg!14759 (regTwo!29373 expr!117))))) (ite (or c!884822 c!884821) ctx!100 (Context!7629 call!358514)) a!1296))))

(declare-fun b!5138459 () Bool)

(declare-fun e!3205062 () Bool)

(assert (=> b!5138459 (= e!3205062 (nullable!4795 (regOne!29372 (regTwo!29373 expr!117))))))

(declare-fun bm!358509 () Bool)

(declare-fun call!358515 () List!59796)

(declare-fun $colon$colon!1174 (List!59796 Regex!14430) List!59796)

(assert (=> bm!358509 (= call!358515 ($colon$colon!1174 (exprs!4314 ctx!100) (ite (or c!884821 c!884820) (regTwo!29372 (regTwo!29373 expr!117)) (regTwo!29373 expr!117))))))

(declare-fun b!5138460 () Bool)

(declare-fun e!3205067 () (Set Context!7628))

(assert (=> b!5138460 (= e!3205067 e!3205063)))

(assert (=> b!5138460 (= c!884820 (is-Concat!23275 (regTwo!29373 expr!117)))))

(declare-fun b!5138461 () Bool)

(assert (=> b!5138461 (= e!3205065 (as set.empty (Set Context!7628)))))

(declare-fun b!5138462 () Bool)

(declare-fun e!3205064 () (Set Context!7628))

(declare-fun call!358513 () (Set Context!7628))

(assert (=> b!5138462 (= e!3205064 (set.union call!358516 call!358513))))

(declare-fun bm!358510 () Bool)

(assert (=> bm!358510 (= call!358512 call!358517)))

(declare-fun d!1662517 () Bool)

(declare-fun c!884824 () Bool)

(assert (=> d!1662517 (= c!884824 (and (is-ElementMatch!14430 (regTwo!29373 expr!117)) (= (c!884780 (regTwo!29373 expr!117)) a!1296)))))

(declare-fun e!3205066 () (Set Context!7628))

(assert (=> d!1662517 (= (derivationStepZipperDown!127 (regTwo!29373 expr!117) ctx!100 a!1296) e!3205066)))

(declare-fun bm!358511 () Bool)

(assert (=> bm!358511 (= call!358513 (derivationStepZipperDown!127 (ite c!884822 (regTwo!29373 (regTwo!29373 expr!117)) (regOne!29372 (regTwo!29373 expr!117))) (ite c!884822 ctx!100 (Context!7629 call!358515)) a!1296))))

(declare-fun b!5138463 () Bool)

(assert (=> b!5138463 (= c!884821 e!3205062)))

(declare-fun res!2188501 () Bool)

(assert (=> b!5138463 (=> (not res!2188501) (not e!3205062))))

(assert (=> b!5138463 (= res!2188501 (is-Concat!23275 (regTwo!29373 expr!117)))))

(assert (=> b!5138463 (= e!3205064 e!3205067)))

(declare-fun b!5138464 () Bool)

(assert (=> b!5138464 (= e!3205066 e!3205064)))

(assert (=> b!5138464 (= c!884822 (is-Union!14430 (regTwo!29373 expr!117)))))

(declare-fun b!5138465 () Bool)

(assert (=> b!5138465 (= e!3205067 (set.union call!358513 call!358517))))

(declare-fun bm!358512 () Bool)

(assert (=> bm!358512 (= call!358514 call!358515)))

(declare-fun b!5138466 () Bool)

(assert (=> b!5138466 (= e!3205066 (set.insert ctx!100 (as set.empty (Set Context!7628))))))

(assert (= (and d!1662517 c!884824) b!5138466))

(assert (= (and d!1662517 (not c!884824)) b!5138464))

(assert (= (and b!5138464 c!884822) b!5138462))

(assert (= (and b!5138464 (not c!884822)) b!5138463))

(assert (= (and b!5138463 res!2188501) b!5138459))

(assert (= (and b!5138463 c!884821) b!5138465))

(assert (= (and b!5138463 (not c!884821)) b!5138460))

(assert (= (and b!5138460 c!884820) b!5138457))

(assert (= (and b!5138460 (not c!884820)) b!5138456))

(assert (= (and b!5138456 c!884823) b!5138458))

(assert (= (and b!5138456 (not c!884823)) b!5138461))

(assert (= (or b!5138457 b!5138458) bm!358512))

(assert (= (or b!5138457 b!5138458) bm!358510))

(assert (= (or b!5138465 bm!358512) bm!358509))

(assert (= (or b!5138465 bm!358510) bm!358507))

(assert (= (or b!5138462 b!5138465) bm!358511))

(assert (= (or b!5138462 bm!358507) bm!358508))

(declare-fun m!6203308 () Bool)

(assert (=> b!5138466 m!6203308))

(declare-fun m!6203310 () Bool)

(assert (=> b!5138459 m!6203310))

(declare-fun m!6203312 () Bool)

(assert (=> bm!358509 m!6203312))

(declare-fun m!6203314 () Bool)

(assert (=> bm!358508 m!6203314))

(declare-fun m!6203316 () Bool)

(assert (=> bm!358511 m!6203316))

(assert (=> b!5138335 d!1662517))

(declare-fun b!5138467 () Bool)

(declare-fun c!884828 () Bool)

(assert (=> b!5138467 (= c!884828 (is-Star!14430 (regOne!29373 expr!117)))))

(declare-fun e!3205069 () (Set Context!7628))

(declare-fun e!3205071 () (Set Context!7628))

(assert (=> b!5138467 (= e!3205069 e!3205071)))

(declare-fun b!5138468 () Bool)

(declare-fun call!358518 () (Set Context!7628))

(assert (=> b!5138468 (= e!3205069 call!358518)))

(declare-fun bm!358513 () Bool)

(declare-fun call!358523 () (Set Context!7628))

(declare-fun call!358522 () (Set Context!7628))

(assert (=> bm!358513 (= call!358523 call!358522)))

(declare-fun b!5138469 () Bool)

(assert (=> b!5138469 (= e!3205071 call!358518)))

(declare-fun c!884825 () Bool)

(declare-fun c!884826 () Bool)

(declare-fun call!358520 () List!59796)

(declare-fun bm!358514 () Bool)

(declare-fun c!884827 () Bool)

(assert (=> bm!358514 (= call!358522 (derivationStepZipperDown!127 (ite c!884827 (regOne!29373 (regOne!29373 expr!117)) (ite c!884826 (regTwo!29372 (regOne!29373 expr!117)) (ite c!884825 (regOne!29372 (regOne!29373 expr!117)) (reg!14759 (regOne!29373 expr!117))))) (ite (or c!884827 c!884826) ctx!100 (Context!7629 call!358520)) a!1296))))

(declare-fun b!5138470 () Bool)

(declare-fun e!3205068 () Bool)

(assert (=> b!5138470 (= e!3205068 (nullable!4795 (regOne!29372 (regOne!29373 expr!117))))))

(declare-fun bm!358515 () Bool)

(declare-fun call!358521 () List!59796)

(assert (=> bm!358515 (= call!358521 ($colon$colon!1174 (exprs!4314 ctx!100) (ite (or c!884826 c!884825) (regTwo!29372 (regOne!29373 expr!117)) (regOne!29373 expr!117))))))

(declare-fun b!5138471 () Bool)

(declare-fun e!3205073 () (Set Context!7628))

(assert (=> b!5138471 (= e!3205073 e!3205069)))

(assert (=> b!5138471 (= c!884825 (is-Concat!23275 (regOne!29373 expr!117)))))

(declare-fun b!5138472 () Bool)

(assert (=> b!5138472 (= e!3205071 (as set.empty (Set Context!7628)))))

(declare-fun b!5138473 () Bool)

(declare-fun e!3205070 () (Set Context!7628))

(declare-fun call!358519 () (Set Context!7628))

(assert (=> b!5138473 (= e!3205070 (set.union call!358522 call!358519))))

(declare-fun bm!358516 () Bool)

(assert (=> bm!358516 (= call!358518 call!358523)))

(declare-fun d!1662519 () Bool)

(declare-fun c!884829 () Bool)

(assert (=> d!1662519 (= c!884829 (and (is-ElementMatch!14430 (regOne!29373 expr!117)) (= (c!884780 (regOne!29373 expr!117)) a!1296)))))

(declare-fun e!3205072 () (Set Context!7628))

(assert (=> d!1662519 (= (derivationStepZipperDown!127 (regOne!29373 expr!117) ctx!100 a!1296) e!3205072)))

(declare-fun bm!358517 () Bool)

(assert (=> bm!358517 (= call!358519 (derivationStepZipperDown!127 (ite c!884827 (regTwo!29373 (regOne!29373 expr!117)) (regOne!29372 (regOne!29373 expr!117))) (ite c!884827 ctx!100 (Context!7629 call!358521)) a!1296))))

(declare-fun b!5138474 () Bool)

(assert (=> b!5138474 (= c!884826 e!3205068)))

(declare-fun res!2188502 () Bool)

(assert (=> b!5138474 (=> (not res!2188502) (not e!3205068))))

(assert (=> b!5138474 (= res!2188502 (is-Concat!23275 (regOne!29373 expr!117)))))

(assert (=> b!5138474 (= e!3205070 e!3205073)))

(declare-fun b!5138475 () Bool)

(assert (=> b!5138475 (= e!3205072 e!3205070)))

(assert (=> b!5138475 (= c!884827 (is-Union!14430 (regOne!29373 expr!117)))))

(declare-fun b!5138476 () Bool)

(assert (=> b!5138476 (= e!3205073 (set.union call!358519 call!358523))))

(declare-fun bm!358518 () Bool)

(assert (=> bm!358518 (= call!358520 call!358521)))

(declare-fun b!5138477 () Bool)

(assert (=> b!5138477 (= e!3205072 (set.insert ctx!100 (as set.empty (Set Context!7628))))))

(assert (= (and d!1662519 c!884829) b!5138477))

(assert (= (and d!1662519 (not c!884829)) b!5138475))

(assert (= (and b!5138475 c!884827) b!5138473))

(assert (= (and b!5138475 (not c!884827)) b!5138474))

(assert (= (and b!5138474 res!2188502) b!5138470))

(assert (= (and b!5138474 c!884826) b!5138476))

(assert (= (and b!5138474 (not c!884826)) b!5138471))

(assert (= (and b!5138471 c!884825) b!5138468))

(assert (= (and b!5138471 (not c!884825)) b!5138467))

(assert (= (and b!5138467 c!884828) b!5138469))

(assert (= (and b!5138467 (not c!884828)) b!5138472))

(assert (= (or b!5138468 b!5138469) bm!358518))

(assert (= (or b!5138468 b!5138469) bm!358516))

(assert (= (or b!5138476 bm!358518) bm!358515))

(assert (= (or b!5138476 bm!358516) bm!358513))

(assert (= (or b!5138473 b!5138476) bm!358517))

(assert (= (or b!5138473 bm!358513) bm!358514))

(assert (=> b!5138477 m!6203308))

(declare-fun m!6203318 () Bool)

(assert (=> b!5138470 m!6203318))

(declare-fun m!6203320 () Bool)

(assert (=> bm!358515 m!6203320))

(declare-fun m!6203322 () Bool)

(assert (=> bm!358514 m!6203322))

(declare-fun m!6203324 () Bool)

(assert (=> bm!358517 m!6203324))

(assert (=> b!5138335 d!1662519))

(declare-fun b!5138478 () Bool)

(declare-fun e!3205074 () Bool)

(declare-fun call!358525 () Bool)

(assert (=> b!5138478 (= e!3205074 call!358525)))

(declare-fun bm!358519 () Bool)

(declare-fun call!358524 () Bool)

(declare-fun call!358526 () Bool)

(assert (=> bm!358519 (= call!358524 call!358526)))

(declare-fun b!5138479 () Bool)

(declare-fun e!3205078 () Bool)

(declare-fun e!3205080 () Bool)

(assert (=> b!5138479 (= e!3205078 e!3205080)))

(declare-fun res!2188503 () Bool)

(assert (=> b!5138479 (= res!2188503 (not (nullable!4795 (reg!14759 expr!117))))))

(assert (=> b!5138479 (=> (not res!2188503) (not e!3205080))))

(declare-fun b!5138480 () Bool)

(declare-fun res!2188507 () Bool)

(declare-fun e!3205075 () Bool)

(assert (=> b!5138480 (=> (not res!2188507) (not e!3205075))))

(assert (=> b!5138480 (= res!2188507 call!358524)))

(declare-fun e!3205077 () Bool)

(assert (=> b!5138480 (= e!3205077 e!3205075)))

(declare-fun b!5138481 () Bool)

(declare-fun e!3205079 () Bool)

(assert (=> b!5138481 (= e!3205079 e!3205078)))

(declare-fun c!884830 () Bool)

(assert (=> b!5138481 (= c!884830 (is-Star!14430 expr!117))))

(declare-fun b!5138482 () Bool)

(assert (=> b!5138482 (= e!3205080 call!358526)))

(declare-fun b!5138483 () Bool)

(declare-fun e!3205076 () Bool)

(assert (=> b!5138483 (= e!3205076 e!3205074)))

(declare-fun res!2188506 () Bool)

(assert (=> b!5138483 (=> (not res!2188506) (not e!3205074))))

(assert (=> b!5138483 (= res!2188506 call!358524)))

(declare-fun b!5138484 () Bool)

(declare-fun res!2188504 () Bool)

(assert (=> b!5138484 (=> res!2188504 e!3205076)))

(assert (=> b!5138484 (= res!2188504 (not (is-Concat!23275 expr!117)))))

(assert (=> b!5138484 (= e!3205077 e!3205076)))

(declare-fun b!5138485 () Bool)

(assert (=> b!5138485 (= e!3205078 e!3205077)))

(declare-fun c!884831 () Bool)

(assert (=> b!5138485 (= c!884831 (is-Union!14430 expr!117))))

(declare-fun bm!358521 () Bool)

(assert (=> bm!358521 (= call!358526 (validRegex!6285 (ite c!884830 (reg!14759 expr!117) (ite c!884831 (regOne!29373 expr!117) (regOne!29372 expr!117)))))))

(declare-fun b!5138486 () Bool)

(assert (=> b!5138486 (= e!3205075 call!358525)))

(declare-fun d!1662521 () Bool)

(declare-fun res!2188505 () Bool)

(assert (=> d!1662521 (=> res!2188505 e!3205079)))

(assert (=> d!1662521 (= res!2188505 (is-ElementMatch!14430 expr!117))))

(assert (=> d!1662521 (= (validRegex!6285 expr!117) e!3205079)))

(declare-fun bm!358520 () Bool)

(assert (=> bm!358520 (= call!358525 (validRegex!6285 (ite c!884831 (regTwo!29373 expr!117) (regTwo!29372 expr!117))))))

(assert (= (and d!1662521 (not res!2188505)) b!5138481))

(assert (= (and b!5138481 c!884830) b!5138479))

(assert (= (and b!5138481 (not c!884830)) b!5138485))

(assert (= (and b!5138479 res!2188503) b!5138482))

(assert (= (and b!5138485 c!884831) b!5138480))

(assert (= (and b!5138485 (not c!884831)) b!5138484))

(assert (= (and b!5138480 res!2188507) b!5138486))

(assert (= (and b!5138484 (not res!2188504)) b!5138483))

(assert (= (and b!5138483 res!2188506) b!5138478))

(assert (= (or b!5138486 b!5138478) bm!358520))

(assert (= (or b!5138480 b!5138483) bm!358519))

(assert (= (or b!5138482 bm!358519) bm!358521))

(declare-fun m!6203326 () Bool)

(assert (=> b!5138479 m!6203326))

(declare-fun m!6203328 () Bool)

(assert (=> bm!358521 m!6203328))

(declare-fun m!6203330 () Bool)

(assert (=> bm!358520 m!6203330))

(assert (=> start!544086 d!1662521))

(declare-fun bs!1200558 () Bool)

(declare-fun d!1662523 () Bool)

(assert (= bs!1200558 (and d!1662523 d!1662499)))

(declare-fun lambda!256276 () Int)

(assert (=> bs!1200558 (not (= lambda!256276 lambda!256255))))

(declare-fun forall!13900 (List!59796 Int) Bool)

(assert (=> d!1662523 (= (inv!79257 ctx!100) (forall!13900 (exprs!4314 ctx!100) lambda!256276))))

(declare-fun bs!1200559 () Bool)

(assert (= bs!1200559 d!1662523))

(declare-fun m!6203332 () Bool)

(assert (=> bs!1200559 m!6203332))

(assert (=> start!544086 d!1662523))

(declare-fun e!3205083 () Bool)

(assert (=> b!5138338 (= tp!1433067 e!3205083)))

(declare-fun b!5138499 () Bool)

(declare-fun tp!1433100 () Bool)

(assert (=> b!5138499 (= e!3205083 tp!1433100)))

(declare-fun b!5138497 () Bool)

(assert (=> b!5138497 (= e!3205083 tp_is_empty!38009)))

(declare-fun b!5138498 () Bool)

(declare-fun tp!1433104 () Bool)

(declare-fun tp!1433103 () Bool)

(assert (=> b!5138498 (= e!3205083 (and tp!1433104 tp!1433103))))

(declare-fun b!5138500 () Bool)

(declare-fun tp!1433101 () Bool)

(declare-fun tp!1433102 () Bool)

(assert (=> b!5138500 (= e!3205083 (and tp!1433101 tp!1433102))))

(assert (= (and b!5138338 (is-ElementMatch!14430 (regOne!29373 expr!117))) b!5138497))

(assert (= (and b!5138338 (is-Concat!23275 (regOne!29373 expr!117))) b!5138498))

(assert (= (and b!5138338 (is-Star!14430 (regOne!29373 expr!117))) b!5138499))

(assert (= (and b!5138338 (is-Union!14430 (regOne!29373 expr!117))) b!5138500))

(declare-fun e!3205084 () Bool)

(assert (=> b!5138338 (= tp!1433071 e!3205084)))

(declare-fun b!5138503 () Bool)

(declare-fun tp!1433105 () Bool)

(assert (=> b!5138503 (= e!3205084 tp!1433105)))

(declare-fun b!5138501 () Bool)

(assert (=> b!5138501 (= e!3205084 tp_is_empty!38009)))

(declare-fun b!5138502 () Bool)

(declare-fun tp!1433109 () Bool)

(declare-fun tp!1433108 () Bool)

(assert (=> b!5138502 (= e!3205084 (and tp!1433109 tp!1433108))))

(declare-fun b!5138504 () Bool)

(declare-fun tp!1433106 () Bool)

(declare-fun tp!1433107 () Bool)

(assert (=> b!5138504 (= e!3205084 (and tp!1433106 tp!1433107))))

(assert (= (and b!5138338 (is-ElementMatch!14430 (regTwo!29373 expr!117))) b!5138501))

(assert (= (and b!5138338 (is-Concat!23275 (regTwo!29373 expr!117))) b!5138502))

(assert (= (and b!5138338 (is-Star!14430 (regTwo!29373 expr!117))) b!5138503))

(assert (= (and b!5138338 (is-Union!14430 (regTwo!29373 expr!117))) b!5138504))

(declare-fun e!3205085 () Bool)

(assert (=> b!5138336 (= tp!1433066 e!3205085)))

(declare-fun b!5138507 () Bool)

(declare-fun tp!1433110 () Bool)

(assert (=> b!5138507 (= e!3205085 tp!1433110)))

(declare-fun b!5138505 () Bool)

(assert (=> b!5138505 (= e!3205085 tp_is_empty!38009)))

(declare-fun b!5138506 () Bool)

(declare-fun tp!1433114 () Bool)

(declare-fun tp!1433113 () Bool)

(assert (=> b!5138506 (= e!3205085 (and tp!1433114 tp!1433113))))

(declare-fun b!5138508 () Bool)

(declare-fun tp!1433111 () Bool)

(declare-fun tp!1433112 () Bool)

(assert (=> b!5138508 (= e!3205085 (and tp!1433111 tp!1433112))))

(assert (= (and b!5138336 (is-ElementMatch!14430 (regOne!29372 expr!117))) b!5138505))

(assert (= (and b!5138336 (is-Concat!23275 (regOne!29372 expr!117))) b!5138506))

(assert (= (and b!5138336 (is-Star!14430 (regOne!29372 expr!117))) b!5138507))

(assert (= (and b!5138336 (is-Union!14430 (regOne!29372 expr!117))) b!5138508))

(declare-fun e!3205086 () Bool)

(assert (=> b!5138336 (= tp!1433070 e!3205086)))

(declare-fun b!5138511 () Bool)

(declare-fun tp!1433115 () Bool)

(assert (=> b!5138511 (= e!3205086 tp!1433115)))

(declare-fun b!5138509 () Bool)

(assert (=> b!5138509 (= e!3205086 tp_is_empty!38009)))

(declare-fun b!5138510 () Bool)

(declare-fun tp!1433119 () Bool)

(declare-fun tp!1433118 () Bool)

(assert (=> b!5138510 (= e!3205086 (and tp!1433119 tp!1433118))))

(declare-fun b!5138512 () Bool)

(declare-fun tp!1433116 () Bool)

(declare-fun tp!1433117 () Bool)

(assert (=> b!5138512 (= e!3205086 (and tp!1433116 tp!1433117))))

(assert (= (and b!5138336 (is-ElementMatch!14430 (regTwo!29372 expr!117))) b!5138509))

(assert (= (and b!5138336 (is-Concat!23275 (regTwo!29372 expr!117))) b!5138510))

(assert (= (and b!5138336 (is-Star!14430 (regTwo!29372 expr!117))) b!5138511))

(assert (= (and b!5138336 (is-Union!14430 (regTwo!29372 expr!117))) b!5138512))

(declare-fun e!3205087 () Bool)

(assert (=> b!5138332 (= tp!1433068 e!3205087)))

(declare-fun b!5138515 () Bool)

(declare-fun tp!1433120 () Bool)

(assert (=> b!5138515 (= e!3205087 tp!1433120)))

(declare-fun b!5138513 () Bool)

(assert (=> b!5138513 (= e!3205087 tp_is_empty!38009)))

(declare-fun b!5138514 () Bool)

(declare-fun tp!1433124 () Bool)

(declare-fun tp!1433123 () Bool)

(assert (=> b!5138514 (= e!3205087 (and tp!1433124 tp!1433123))))

(declare-fun b!5138516 () Bool)

(declare-fun tp!1433121 () Bool)

(declare-fun tp!1433122 () Bool)

(assert (=> b!5138516 (= e!3205087 (and tp!1433121 tp!1433122))))

(assert (= (and b!5138332 (is-ElementMatch!14430 (reg!14759 expr!117))) b!5138513))

(assert (= (and b!5138332 (is-Concat!23275 (reg!14759 expr!117))) b!5138514))

(assert (= (and b!5138332 (is-Star!14430 (reg!14759 expr!117))) b!5138515))

(assert (= (and b!5138332 (is-Union!14430 (reg!14759 expr!117))) b!5138516))

(declare-fun b!5138521 () Bool)

(declare-fun e!3205090 () Bool)

(declare-fun tp!1433129 () Bool)

(declare-fun tp!1433130 () Bool)

(assert (=> b!5138521 (= e!3205090 (and tp!1433129 tp!1433130))))

(assert (=> b!5138337 (= tp!1433069 e!3205090)))

(assert (= (and b!5138337 (is-Cons!59672 (exprs!4314 ctx!100))) b!5138521))

(push 1)

(assert (not b!5138504))

(assert (not b!5138431))

(assert tp_is_empty!38009)

(assert (not bm!358508))

(assert (not bm!358509))

(assert (not b!5138433))

(assert (not d!1662511))

(assert (not b!5138499))

(assert (not bm!358511))

(assert (not bm!358514))

(assert (not b!5138521))

(assert (not b!5138432))

(assert (not b!5138511))

(assert (not b!5138418))

(assert (not b!5138506))

(assert (not b!5138479))

(assert (not b!5138515))

(assert (not bm!358521))

(assert (not bm!358485))

(assert (not b!5138498))

(assert (not b!5138508))

(assert (not bm!358517))

(assert (not b!5138430))

(assert (not d!1662515))

(assert (not d!1662497))

(assert (not bm!358486))

(assert (not bm!358494))

(assert (not b!5138507))

(assert (not bm!358515))

(assert (not bm!358492))

(assert (not d!1662507))

(assert (not b!5138500))

(assert (not b!5138516))

(assert (not b!5138514))

(assert (not b!5138512))

(assert (not b!5138470))

(assert (not bm!358491))

(assert (not b!5138459))

(assert (not d!1662523))

(assert (not b!5138510))

(assert (not d!1662499))

(assert (not b!5138502))

(assert (not d!1662513))

(assert (not bm!358493))

(assert (not bm!358520))

(assert (not b!5138503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

