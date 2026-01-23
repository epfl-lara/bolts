; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!543918 () Bool)

(assert start!543918)

(declare-fun b!5137274 () Bool)

(declare-fun e!3204343 () Bool)

(declare-datatypes ((C!29102 0))(
  ( (C!29103 (val!24203 Int)) )
))
(declare-datatypes ((Regex!14418 0))(
  ( (ElementMatch!14418 (c!884524 C!29102)) (Concat!23263 (regOne!29348 Regex!14418) (regTwo!29348 Regex!14418)) (EmptyExpr!14418) (Star!14418 (reg!14747 Regex!14418)) (EmptyLang!14418) (Union!14418 (regOne!29349 Regex!14418) (regTwo!29349 Regex!14418)) )
))
(declare-datatypes ((List!59776 0))(
  ( (Nil!59652) (Cons!59652 (h!66100 Regex!14418) (t!372805 List!59776)) )
))
(declare-datatypes ((Context!7604 0))(
  ( (Context!7605 (exprs!4302 List!59776)) )
))
(declare-fun ctx!74 () Context!7604)

(declare-fun a!1252 () C!29102)

(declare-fun lostCauseZipper!1240 ((Set Context!7604)) Bool)

(declare-fun derivationStepZipperUp!98 (Context!7604 C!29102) (Set Context!7604))

(assert (=> b!5137274 (= e!3204343 (not (lostCauseZipper!1240 (derivationStepZipperUp!98 ctx!74 a!1252))))))

(declare-fun b!5137275 () Bool)

(declare-fun e!3204344 () Bool)

(declare-fun nullable!4791 (Regex!14418) Bool)

(assert (=> b!5137275 (= e!3204344 (not (nullable!4791 (h!66100 (exprs!4302 ctx!74)))))))

(declare-fun b!5137276 () Bool)

(declare-fun res!2188102 () Bool)

(assert (=> b!5137276 (=> (not res!2188102) (not e!3204343))))

(assert (=> b!5137276 (= res!2188102 (not (is-Cons!59652 (exprs!4302 ctx!74))))))

(declare-fun b!5137277 () Bool)

(declare-fun res!2188101 () Bool)

(assert (=> b!5137277 (=> (not res!2188101) (not e!3204343))))

(assert (=> b!5137277 (= res!2188101 e!3204344)))

(declare-fun res!2188099 () Bool)

(assert (=> b!5137277 (=> res!2188099 e!3204344)))

(assert (=> b!5137277 (= res!2188099 (not (is-Cons!59652 (exprs!4302 ctx!74))))))

(declare-fun res!2188100 () Bool)

(assert (=> start!543918 (=> (not res!2188100) (not e!3204343))))

(declare-fun lostCause!1392 (Context!7604) Bool)

(assert (=> start!543918 (= res!2188100 (lostCause!1392 ctx!74))))

(assert (=> start!543918 e!3204343))

(declare-fun e!3204342 () Bool)

(declare-fun inv!79227 (Context!7604) Bool)

(assert (=> start!543918 (and (inv!79227 ctx!74) e!3204342)))

(declare-fun tp_is_empty!37989 () Bool)

(assert (=> start!543918 tp_is_empty!37989))

(declare-fun b!5137278 () Bool)

(declare-fun tp!1432696 () Bool)

(assert (=> b!5137278 (= e!3204342 tp!1432696)))

(assert (= (and start!543918 res!2188100) b!5137277))

(assert (= (and b!5137277 (not res!2188099)) b!5137275))

(assert (= (and b!5137277 res!2188101) b!5137276))

(assert (= (and b!5137276 res!2188102) b!5137274))

(assert (= start!543918 b!5137278))

(declare-fun m!6202492 () Bool)

(assert (=> b!5137274 m!6202492))

(assert (=> b!5137274 m!6202492))

(declare-fun m!6202494 () Bool)

(assert (=> b!5137274 m!6202494))

(declare-fun m!6202496 () Bool)

(assert (=> b!5137275 m!6202496))

(declare-fun m!6202498 () Bool)

(assert (=> start!543918 m!6202498))

(declare-fun m!6202500 () Bool)

(assert (=> start!543918 m!6202500))

(push 1)

(assert (not b!5137274))

(assert (not b!5137275))

(assert tp_is_empty!37989)

(assert (not b!5137278))

(assert (not start!543918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1200308 () Bool)

(declare-fun b!5137298 () Bool)

(declare-fun d!1662235 () Bool)

(assert (= bs!1200308 (and b!5137298 d!1662235)))

(declare-fun lambda!256116 () Int)

(declare-fun lambda!256115 () Int)

(assert (=> bs!1200308 (not (= lambda!256116 lambda!256115))))

(declare-fun bs!1200309 () Bool)

(declare-fun b!5137299 () Bool)

(assert (= bs!1200309 (and b!5137299 d!1662235)))

(declare-fun lambda!256117 () Int)

(assert (=> bs!1200309 (not (= lambda!256117 lambda!256115))))

(declare-fun bs!1200310 () Bool)

(assert (= bs!1200310 (and b!5137299 b!5137298)))

(assert (=> bs!1200310 (= lambda!256117 lambda!256116)))

(declare-fun bm!358261 () Bool)

(declare-datatypes ((List!59778 0))(
  ( (Nil!59654) (Cons!59654 (h!66102 Context!7604) (t!372807 List!59778)) )
))
(declare-fun call!358267 () List!59778)

(declare-fun toList!8374 ((Set Context!7604)) List!59778)

(assert (=> bm!358261 (= call!358267 (toList!8374 (derivationStepZipperUp!98 ctx!74 a!1252)))))

(declare-fun lt!2119733 () List!59778)

(declare-fun call!358266 () Bool)

(declare-fun bm!358262 () Bool)

(declare-fun lt!2119738 () List!59778)

(declare-fun c!884536 () Bool)

(declare-fun exists!1758 (List!59778 Int) Bool)

(assert (=> bm!358262 (= call!358266 (exists!1758 (ite c!884536 lt!2119733 lt!2119738) (ite c!884536 lambda!256116 lambda!256117)))))

(declare-datatypes ((Unit!151015 0))(
  ( (Unit!151016) )
))
(declare-fun e!3204360 () Unit!151015)

(declare-fun Unit!151017 () Unit!151015)

(assert (=> b!5137299 (= e!3204360 Unit!151017)))

(assert (=> b!5137299 (= lt!2119738 call!358267)))

(declare-fun lt!2119732 () Unit!151015)

(declare-fun lemmaForallThenNotExists!388 (List!59778 Int) Unit!151015)

(assert (=> b!5137299 (= lt!2119732 (lemmaForallThenNotExists!388 lt!2119738 lambda!256115))))

(assert (=> b!5137299 (not call!358266)))

(declare-fun lt!2119736 () Unit!151015)

(assert (=> b!5137299 (= lt!2119736 lt!2119732)))

(declare-fun Unit!151018 () Unit!151015)

(assert (=> b!5137298 (= e!3204360 Unit!151018)))

(assert (=> b!5137298 (= lt!2119733 call!358267)))

(declare-fun lt!2119735 () Unit!151015)

(declare-fun lemmaNotForallThenExists!421 (List!59778 Int) Unit!151015)

(assert (=> b!5137298 (= lt!2119735 (lemmaNotForallThenExists!421 lt!2119733 lambda!256115))))

(assert (=> b!5137298 call!358266))

(declare-fun lt!2119731 () Unit!151015)

(assert (=> b!5137298 (= lt!2119731 lt!2119735)))

(declare-fun lt!2119734 () Bool)

(declare-datatypes ((List!59779 0))(
  ( (Nil!59655) (Cons!59655 (h!66103 C!29102) (t!372808 List!59779)) )
))
(declare-datatypes ((Option!14772 0))(
  ( (None!14771) (Some!14771 (v!50800 List!59779)) )
))
(declare-fun isEmpty!32033 (Option!14772) Bool)

(declare-fun getLanguageWitness!917 ((Set Context!7604)) Option!14772)

(assert (=> d!1662235 (= lt!2119734 (isEmpty!32033 (getLanguageWitness!917 (derivationStepZipperUp!98 ctx!74 a!1252))))))

(declare-fun forall!13889 ((Set Context!7604) Int) Bool)

(assert (=> d!1662235 (= lt!2119734 (forall!13889 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256115))))

(declare-fun lt!2119737 () Unit!151015)

(assert (=> d!1662235 (= lt!2119737 e!3204360)))

(assert (=> d!1662235 (= c!884536 (not (forall!13889 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256115)))))

(assert (=> d!1662235 (= (lostCauseZipper!1240 (derivationStepZipperUp!98 ctx!74 a!1252)) lt!2119734)))

(assert (= (and d!1662235 c!884536) b!5137298))

(assert (= (and d!1662235 (not c!884536)) b!5137299))

(assert (= (or b!5137298 b!5137299) bm!358261))

(assert (= (or b!5137298 b!5137299) bm!358262))

(declare-fun m!6202512 () Bool)

(assert (=> b!5137298 m!6202512))

(declare-fun m!6202514 () Bool)

(assert (=> b!5137299 m!6202514))

(declare-fun m!6202516 () Bool)

(assert (=> bm!358262 m!6202516))

(assert (=> bm!358261 m!6202492))

(declare-fun m!6202518 () Bool)

(assert (=> bm!358261 m!6202518))

(assert (=> d!1662235 m!6202492))

(declare-fun m!6202520 () Bool)

(assert (=> d!1662235 m!6202520))

(assert (=> d!1662235 m!6202520))

(declare-fun m!6202522 () Bool)

(assert (=> d!1662235 m!6202522))

(assert (=> d!1662235 m!6202492))

(declare-fun m!6202524 () Bool)

(assert (=> d!1662235 m!6202524))

(assert (=> d!1662235 m!6202492))

(assert (=> d!1662235 m!6202524))

(assert (=> b!5137274 d!1662235))

(declare-fun b!5137310 () Bool)

(declare-fun e!3204368 () (Set Context!7604))

(declare-fun e!3204369 () (Set Context!7604))

(assert (=> b!5137310 (= e!3204368 e!3204369)))

(declare-fun c!884541 () Bool)

(assert (=> b!5137310 (= c!884541 (is-Cons!59652 (exprs!4302 ctx!74)))))

(declare-fun b!5137311 () Bool)

(assert (=> b!5137311 (= e!3204369 (as set.empty (Set Context!7604)))))

(declare-fun b!5137312 () Bool)

(declare-fun call!358270 () (Set Context!7604))

(assert (=> b!5137312 (= e!3204368 (set.union call!358270 (derivationStepZipperUp!98 (Context!7605 (t!372805 (exprs!4302 ctx!74))) a!1252)))))

(declare-fun b!5137313 () Bool)

(assert (=> b!5137313 (= e!3204369 call!358270)))

(declare-fun b!5137314 () Bool)

(declare-fun e!3204367 () Bool)

(assert (=> b!5137314 (= e!3204367 (nullable!4791 (h!66100 (exprs!4302 ctx!74))))))

(declare-fun bm!358265 () Bool)

(declare-fun derivationStepZipperDown!121 (Regex!14418 Context!7604 C!29102) (Set Context!7604))

(assert (=> bm!358265 (= call!358270 (derivationStepZipperDown!121 (h!66100 (exprs!4302 ctx!74)) (Context!7605 (t!372805 (exprs!4302 ctx!74))) a!1252))))

(declare-fun d!1662239 () Bool)

(declare-fun c!884542 () Bool)

(assert (=> d!1662239 (= c!884542 e!3204367)))

(declare-fun res!2188117 () Bool)

(assert (=> d!1662239 (=> (not res!2188117) (not e!3204367))))

(assert (=> d!1662239 (= res!2188117 (is-Cons!59652 (exprs!4302 ctx!74)))))

(assert (=> d!1662239 (= (derivationStepZipperUp!98 ctx!74 a!1252) e!3204368)))

(assert (= (and d!1662239 res!2188117) b!5137314))

(assert (= (and d!1662239 c!884542) b!5137312))

(assert (= (and d!1662239 (not c!884542)) b!5137310))

(assert (= (and b!5137310 c!884541) b!5137313))

(assert (= (and b!5137310 (not c!884541)) b!5137311))

(assert (= (or b!5137312 b!5137313) bm!358265))

(declare-fun m!6202526 () Bool)

(assert (=> b!5137312 m!6202526))

(assert (=> b!5137314 m!6202496))

(declare-fun m!6202528 () Bool)

(assert (=> bm!358265 m!6202528))

(assert (=> b!5137274 d!1662239))

(declare-fun d!1662241 () Bool)

(declare-fun lambda!256120 () Int)

(declare-fun exists!1759 (List!59776 Int) Bool)

(assert (=> d!1662241 (= (lostCause!1392 ctx!74) (exists!1759 (exprs!4302 ctx!74) lambda!256120))))

(declare-fun bs!1200311 () Bool)

(assert (= bs!1200311 d!1662241))

(declare-fun m!6202530 () Bool)

(assert (=> bs!1200311 m!6202530))

(assert (=> start!543918 d!1662241))

(declare-fun bs!1200312 () Bool)

(declare-fun d!1662243 () Bool)

(assert (= bs!1200312 (and d!1662243 d!1662241)))

(declare-fun lambda!256123 () Int)

(assert (=> bs!1200312 (not (= lambda!256123 lambda!256120))))

(declare-fun forall!13890 (List!59776 Int) Bool)

(assert (=> d!1662243 (= (inv!79227 ctx!74) (forall!13890 (exprs!4302 ctx!74) lambda!256123))))

(declare-fun bs!1200313 () Bool)

(assert (= bs!1200313 d!1662243))

(declare-fun m!6202532 () Bool)

(assert (=> bs!1200313 m!6202532))

(assert (=> start!543918 d!1662243))

(declare-fun d!1662245 () Bool)

(declare-fun nullableFct!1312 (Regex!14418) Bool)

(assert (=> d!1662245 (= (nullable!4791 (h!66100 (exprs!4302 ctx!74))) (nullableFct!1312 (h!66100 (exprs!4302 ctx!74))))))

(declare-fun bs!1200314 () Bool)

(assert (= bs!1200314 d!1662245))

(declare-fun m!6202534 () Bool)

(assert (=> bs!1200314 m!6202534))

(assert (=> b!5137275 d!1662245))

(declare-fun b!5137319 () Bool)

(declare-fun e!3204372 () Bool)

(declare-fun tp!1432704 () Bool)

(declare-fun tp!1432705 () Bool)

(assert (=> b!5137319 (= e!3204372 (and tp!1432704 tp!1432705))))

(assert (=> b!5137278 (= tp!1432696 e!3204372)))

(assert (= (and b!5137278 (is-Cons!59652 (exprs!4302 ctx!74))) b!5137319))

(push 1)

(assert (not bm!358265))

(assert (not b!5137314))

(assert (not b!5137298))

(assert (not d!1662243))

(assert (not b!5137299))

(assert (not b!5137312))

(assert (not d!1662241))

(assert (not bm!358261))

(assert (not d!1662235))

(assert tp_is_empty!37989)

(assert (not bm!358262))

(assert (not b!5137319))

(assert (not d!1662245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1662253 () Bool)

(assert (=> d!1662253 (= (isEmpty!32033 (getLanguageWitness!917 (derivationStepZipperUp!98 ctx!74 a!1252))) (not (is-Some!14771 (getLanguageWitness!917 (derivationStepZipperUp!98 ctx!74 a!1252)))))))

(assert (=> d!1662235 d!1662253))

(declare-fun bs!1200322 () Bool)

(declare-fun d!1662255 () Bool)

(assert (= bs!1200322 (and d!1662255 d!1662235)))

(declare-fun lambda!256151 () Int)

(assert (=> bs!1200322 (not (= lambda!256151 lambda!256115))))

(declare-fun bs!1200323 () Bool)

(assert (= bs!1200323 (and d!1662255 b!5137298)))

(assert (=> bs!1200323 (= lambda!256151 lambda!256116)))

(declare-fun bs!1200324 () Bool)

(assert (= bs!1200324 (and d!1662255 b!5137299)))

(assert (=> bs!1200324 (= lambda!256151 lambda!256117)))

(declare-fun lt!2119765 () Option!14772)

(declare-fun isDefined!11531 (Option!14772) Bool)

(declare-fun exists!1762 ((Set Context!7604) Int) Bool)

(assert (=> d!1662255 (= (isDefined!11531 lt!2119765) (exists!1762 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256151))))

(declare-fun e!3204394 () Option!14772)

(assert (=> d!1662255 (= lt!2119765 e!3204394)))

(declare-fun c!884568 () Bool)

(assert (=> d!1662255 (= c!884568 (exists!1762 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256151))))

(assert (=> d!1662255 (= (getLanguageWitness!917 (derivationStepZipperUp!98 ctx!74 a!1252)) lt!2119765)))

(declare-fun b!5137350 () Bool)

(declare-fun getLanguageWitness!919 (Context!7604) Option!14772)

(declare-fun getWitness!834 ((Set Context!7604) Int) Context!7604)

(assert (=> b!5137350 (= e!3204394 (getLanguageWitness!919 (getWitness!834 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256151)))))

(declare-fun b!5137351 () Bool)

(assert (=> b!5137351 (= e!3204394 None!14771)))

(assert (= (and d!1662255 c!884568) b!5137350))

(assert (= (and d!1662255 (not c!884568)) b!5137351))

(declare-fun m!6202560 () Bool)

(assert (=> d!1662255 m!6202560))

(assert (=> d!1662255 m!6202492))

(declare-fun m!6202562 () Bool)

(assert (=> d!1662255 m!6202562))

(assert (=> d!1662255 m!6202492))

(assert (=> d!1662255 m!6202562))

(assert (=> b!5137350 m!6202492))

(declare-fun m!6202564 () Bool)

(assert (=> b!5137350 m!6202564))

(assert (=> b!5137350 m!6202564))

(declare-fun m!6202566 () Bool)

(assert (=> b!5137350 m!6202566))

(assert (=> d!1662235 d!1662255))

(declare-fun lt!2119768 () Bool)

(declare-fun d!1662259 () Bool)

(declare-fun forall!13893 (List!59778 Int) Bool)

(assert (=> d!1662259 (= lt!2119768 (forall!13893 (toList!8374 (derivationStepZipperUp!98 ctx!74 a!1252)) lambda!256115))))

(declare-fun choose!38021 ((Set Context!7604) Int) Bool)

(assert (=> d!1662259 (= lt!2119768 (choose!38021 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256115))))

(assert (=> d!1662259 (= (forall!13889 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256115) lt!2119768)))

(declare-fun bs!1200325 () Bool)

(assert (= bs!1200325 d!1662259))

(assert (=> bs!1200325 m!6202492))

(assert (=> bs!1200325 m!6202518))

(assert (=> bs!1200325 m!6202518))

(declare-fun m!6202568 () Bool)

(assert (=> bs!1200325 m!6202568))

(assert (=> bs!1200325 m!6202492))

(declare-fun m!6202570 () Bool)

(assert (=> bs!1200325 m!6202570))

(assert (=> d!1662235 d!1662259))

(declare-fun bs!1200326 () Bool)

(declare-fun d!1662261 () Bool)

(assert (= bs!1200326 (and d!1662261 d!1662235)))

(declare-fun lambda!256154 () Int)

(assert (=> bs!1200326 (not (= lambda!256154 lambda!256115))))

(declare-fun bs!1200327 () Bool)

(assert (= bs!1200327 (and d!1662261 b!5137298)))

(assert (=> bs!1200327 (not (= lambda!256154 lambda!256116))))

(declare-fun bs!1200328 () Bool)

(assert (= bs!1200328 (and d!1662261 b!5137299)))

(assert (=> bs!1200328 (not (= lambda!256154 lambda!256117))))

(declare-fun bs!1200329 () Bool)

(assert (= bs!1200329 (and d!1662261 d!1662255)))

(assert (=> bs!1200329 (not (= lambda!256154 lambda!256151))))

(assert (=> d!1662261 true))

(declare-fun order!26939 () Int)

(declare-fun dynLambda!23755 (Int Int) Int)

(assert (=> d!1662261 (< (dynLambda!23755 order!26939 (ite c!884536 lambda!256116 lambda!256117)) (dynLambda!23755 order!26939 lambda!256154))))

(assert (=> d!1662261 (= (exists!1758 (ite c!884536 lt!2119733 lt!2119738) (ite c!884536 lambda!256116 lambda!256117)) (not (forall!13893 (ite c!884536 lt!2119733 lt!2119738) lambda!256154)))))

(declare-fun bs!1200330 () Bool)

(assert (= bs!1200330 d!1662261))

(declare-fun m!6202572 () Bool)

(assert (=> bs!1200330 m!6202572))

(assert (=> bm!358262 d!1662261))

(assert (=> b!5137314 d!1662245))

(declare-fun bm!358279 () Bool)

(declare-fun call!358285 () Bool)

(declare-fun c!884571 () Bool)

(assert (=> bm!358279 (= call!358285 (nullable!4791 (ite c!884571 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))))))

(declare-fun bm!358280 () Bool)

(declare-fun call!358284 () Bool)

(assert (=> bm!358280 (= call!358284 (nullable!4791 (ite c!884571 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (regTwo!29348 (h!66100 (exprs!4302 ctx!74))))))))

(declare-fun b!5137369 () Bool)

(declare-fun e!3204412 () Bool)

(declare-fun e!3204409 () Bool)

(assert (=> b!5137369 (= e!3204412 e!3204409)))

(assert (=> b!5137369 (= c!884571 (is-Union!14418 (h!66100 (exprs!4302 ctx!74))))))

(declare-fun b!5137370 () Bool)

(declare-fun e!3204408 () Bool)

(assert (=> b!5137370 (= e!3204408 e!3204412)))

(declare-fun res!2188133 () Bool)

(assert (=> b!5137370 (=> res!2188133 e!3204412)))

(assert (=> b!5137370 (= res!2188133 (is-Star!14418 (h!66100 (exprs!4302 ctx!74))))))

(declare-fun b!5137371 () Bool)

(declare-fun e!3204410 () Bool)

(assert (=> b!5137371 (= e!3204409 e!3204410)))

(declare-fun res!2188135 () Bool)

(assert (=> b!5137371 (= res!2188135 call!358285)))

(assert (=> b!5137371 (=> (not res!2188135) (not e!3204410))))

(declare-fun b!5137372 () Bool)

(declare-fun e!3204407 () Bool)

(assert (=> b!5137372 (= e!3204407 e!3204408)))

(declare-fun res!2188131 () Bool)

(assert (=> b!5137372 (=> (not res!2188131) (not e!3204408))))

(assert (=> b!5137372 (= res!2188131 (and (not (is-EmptyLang!14418 (h!66100 (exprs!4302 ctx!74)))) (not (is-ElementMatch!14418 (h!66100 (exprs!4302 ctx!74))))))))

(declare-fun b!5137373 () Bool)

(declare-fun e!3204411 () Bool)

(assert (=> b!5137373 (= e!3204409 e!3204411)))

(declare-fun res!2188132 () Bool)

(assert (=> b!5137373 (= res!2188132 call!358285)))

(assert (=> b!5137373 (=> res!2188132 e!3204411)))

(declare-fun b!5137374 () Bool)

(assert (=> b!5137374 (= e!3204411 call!358284)))

(declare-fun d!1662263 () Bool)

(declare-fun res!2188134 () Bool)

(assert (=> d!1662263 (=> res!2188134 e!3204407)))

(assert (=> d!1662263 (= res!2188134 (is-EmptyExpr!14418 (h!66100 (exprs!4302 ctx!74))))))

(assert (=> d!1662263 (= (nullableFct!1312 (h!66100 (exprs!4302 ctx!74))) e!3204407)))

(declare-fun b!5137368 () Bool)

(assert (=> b!5137368 (= e!3204410 call!358284)))

(assert (= (and d!1662263 (not res!2188134)) b!5137372))

(assert (= (and b!5137372 res!2188131) b!5137370))

(assert (= (and b!5137370 (not res!2188133)) b!5137369))

(assert (= (and b!5137369 c!884571) b!5137373))

(assert (= (and b!5137369 (not c!884571)) b!5137371))

(assert (= (and b!5137373 (not res!2188132)) b!5137374))

(assert (= (and b!5137371 res!2188135) b!5137368))

(assert (= (or b!5137374 b!5137368) bm!358280))

(assert (= (or b!5137373 b!5137371) bm!358279))

(declare-fun m!6202574 () Bool)

(assert (=> bm!358279 m!6202574))

(declare-fun m!6202576 () Bool)

(assert (=> bm!358280 m!6202576))

(assert (=> d!1662245 d!1662263))

(declare-fun d!1662265 () Bool)

(declare-fun c!884585 () Bool)

(assert (=> d!1662265 (= c!884585 (and (is-ElementMatch!14418 (h!66100 (exprs!4302 ctx!74))) (= (c!884524 (h!66100 (exprs!4302 ctx!74))) a!1252)))))

(declare-fun e!3204428 () (Set Context!7604))

(assert (=> d!1662265 (= (derivationStepZipperDown!121 (h!66100 (exprs!4302 ctx!74)) (Context!7605 (t!372805 (exprs!4302 ctx!74))) a!1252) e!3204428)))

(declare-fun b!5137397 () Bool)

(declare-fun c!884583 () Bool)

(declare-fun e!3204426 () Bool)

(assert (=> b!5137397 (= c!884583 e!3204426)))

(declare-fun res!2188138 () Bool)

(assert (=> b!5137397 (=> (not res!2188138) (not e!3204426))))

(assert (=> b!5137397 (= res!2188138 (is-Concat!23263 (h!66100 (exprs!4302 ctx!74))))))

(declare-fun e!3204427 () (Set Context!7604))

(declare-fun e!3204429 () (Set Context!7604))

(assert (=> b!5137397 (= e!3204427 e!3204429)))

(declare-fun b!5137398 () Bool)

(declare-fun e!3204430 () (Set Context!7604))

(assert (=> b!5137398 (= e!3204430 (as set.empty (Set Context!7604)))))

(declare-fun bm!358293 () Bool)

(declare-fun call!358298 () (Set Context!7604))

(declare-fun call!358303 () (Set Context!7604))

(assert (=> bm!358293 (= call!358298 call!358303)))

(declare-fun b!5137399 () Bool)

(declare-fun e!3204425 () (Set Context!7604))

(assert (=> b!5137399 (= e!3204429 e!3204425)))

(declare-fun c!884586 () Bool)

(assert (=> b!5137399 (= c!884586 (is-Concat!23263 (h!66100 (exprs!4302 ctx!74))))))

(declare-fun b!5137400 () Bool)

(assert (=> b!5137400 (= e!3204430 call!358298)))

(declare-fun b!5137401 () Bool)

(declare-fun call!358300 () (Set Context!7604))

(assert (=> b!5137401 (= e!3204429 (set.union call!358300 call!358303))))

(declare-fun b!5137402 () Bool)

(assert (=> b!5137402 (= e!3204428 (set.insert (Context!7605 (t!372805 (exprs!4302 ctx!74))) (as set.empty (Set Context!7604))))))

(declare-fun bm!358294 () Bool)

(declare-fun call!358302 () List!59776)

(declare-fun call!358301 () List!59776)

(assert (=> bm!358294 (= call!358302 call!358301)))

(declare-fun b!5137403 () Bool)

(declare-fun c!884582 () Bool)

(assert (=> b!5137403 (= c!884582 (is-Star!14418 (h!66100 (exprs!4302 ctx!74))))))

(assert (=> b!5137403 (= e!3204425 e!3204430)))

(declare-fun bm!358295 () Bool)

(declare-fun call!358299 () (Set Context!7604))

(assert (=> bm!358295 (= call!358303 call!358299)))

(declare-fun c!884584 () Bool)

(declare-fun bm!358296 () Bool)

(assert (=> bm!358296 (= call!358299 (derivationStepZipperDown!121 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74)))))) (ite (or c!884584 c!884583) (Context!7605 (t!372805 (exprs!4302 ctx!74))) (Context!7605 call!358302)) a!1252))))

(declare-fun bm!358297 () Bool)

(declare-fun $colon$colon!1171 (List!59776 Regex!14418) List!59776)

(assert (=> bm!358297 (= call!358301 ($colon$colon!1171 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))) (ite (or c!884583 c!884586) (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (h!66100 (exprs!4302 ctx!74)))))))

(declare-fun b!5137404 () Bool)

(assert (=> b!5137404 (= e!3204427 (set.union call!358300 call!358299))))

(declare-fun b!5137405 () Bool)

(assert (=> b!5137405 (= e!3204426 (nullable!4791 (regOne!29348 (h!66100 (exprs!4302 ctx!74)))))))

(declare-fun b!5137406 () Bool)

(assert (=> b!5137406 (= e!3204428 e!3204427)))

(assert (=> b!5137406 (= c!884584 (is-Union!14418 (h!66100 (exprs!4302 ctx!74))))))

(declare-fun bm!358298 () Bool)

(assert (=> bm!358298 (= call!358300 (derivationStepZipperDown!121 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74)))) (ite c!884584 (Context!7605 (t!372805 (exprs!4302 ctx!74))) (Context!7605 call!358301)) a!1252))))

(declare-fun b!5137407 () Bool)

(assert (=> b!5137407 (= e!3204425 call!358298)))

(assert (= (and d!1662265 c!884585) b!5137402))

(assert (= (and d!1662265 (not c!884585)) b!5137406))

(assert (= (and b!5137406 c!884584) b!5137404))

(assert (= (and b!5137406 (not c!884584)) b!5137397))

(assert (= (and b!5137397 res!2188138) b!5137405))

(assert (= (and b!5137397 c!884583) b!5137401))

(assert (= (and b!5137397 (not c!884583)) b!5137399))

(assert (= (and b!5137399 c!884586) b!5137407))

(assert (= (and b!5137399 (not c!884586)) b!5137403))

(assert (= (and b!5137403 c!884582) b!5137400))

(assert (= (and b!5137403 (not c!884582)) b!5137398))

(assert (= (or b!5137407 b!5137400) bm!358294))

(assert (= (or b!5137407 b!5137400) bm!358293))

(assert (= (or b!5137401 bm!358294) bm!358297))

(assert (= (or b!5137401 bm!358293) bm!358295))

(assert (= (or b!5137404 b!5137401) bm!358298))

(assert (= (or b!5137404 bm!358295) bm!358296))

(declare-fun m!6202578 () Bool)

(assert (=> bm!358297 m!6202578))

(declare-fun m!6202580 () Bool)

(assert (=> bm!358296 m!6202580))

(declare-fun m!6202582 () Bool)

(assert (=> b!5137405 m!6202582))

(declare-fun m!6202584 () Bool)

(assert (=> bm!358298 m!6202584))

(declare-fun m!6202586 () Bool)

(assert (=> b!5137402 m!6202586))

(assert (=> bm!358265 d!1662265))

(declare-fun bs!1200331 () Bool)

(declare-fun d!1662267 () Bool)

(assert (= bs!1200331 (and d!1662267 d!1662241)))

(declare-fun lambda!256157 () Int)

(assert (=> bs!1200331 (not (= lambda!256157 lambda!256120))))

(declare-fun bs!1200332 () Bool)

(assert (= bs!1200332 (and d!1662267 d!1662243)))

(assert (=> bs!1200332 (not (= lambda!256157 lambda!256123))))

(assert (=> d!1662267 true))

(declare-fun order!26941 () Int)

(declare-fun dynLambda!23756 (Int Int) Int)

(assert (=> d!1662267 (< (dynLambda!23756 order!26941 lambda!256120) (dynLambda!23756 order!26941 lambda!256157))))

(assert (=> d!1662267 (= (exists!1759 (exprs!4302 ctx!74) lambda!256120) (not (forall!13890 (exprs!4302 ctx!74) lambda!256157)))))

(declare-fun bs!1200333 () Bool)

(assert (= bs!1200333 d!1662267))

(declare-fun m!6202588 () Bool)

(assert (=> bs!1200333 m!6202588))

(assert (=> d!1662241 d!1662267))

(declare-fun bs!1200334 () Bool)

(declare-fun d!1662269 () Bool)

(assert (= bs!1200334 (and d!1662269 b!5137299)))

(declare-fun lambda!256160 () Int)

(assert (=> bs!1200334 (not (= lambda!256160 lambda!256117))))

(declare-fun bs!1200335 () Bool)

(assert (= bs!1200335 (and d!1662269 d!1662261)))

(assert (=> bs!1200335 (= (= lambda!256115 (ite c!884536 lambda!256116 lambda!256117)) (= lambda!256160 lambda!256154))))

(declare-fun bs!1200336 () Bool)

(assert (= bs!1200336 (and d!1662269 d!1662255)))

(assert (=> bs!1200336 (not (= lambda!256160 lambda!256151))))

(declare-fun bs!1200337 () Bool)

(assert (= bs!1200337 (and d!1662269 b!5137298)))

(assert (=> bs!1200337 (not (= lambda!256160 lambda!256116))))

(declare-fun bs!1200338 () Bool)

(assert (= bs!1200338 (and d!1662269 d!1662235)))

(assert (=> bs!1200338 (not (= lambda!256160 lambda!256115))))

(assert (=> d!1662269 true))

(assert (=> d!1662269 (< (dynLambda!23755 order!26939 lambda!256115) (dynLambda!23755 order!26939 lambda!256160))))

(assert (=> d!1662269 (exists!1758 lt!2119733 lambda!256160)))

(declare-fun lt!2119771 () Unit!151015)

(declare-fun choose!38022 (List!59778 Int) Unit!151015)

(assert (=> d!1662269 (= lt!2119771 (choose!38022 lt!2119733 lambda!256115))))

(assert (=> d!1662269 (not (forall!13893 lt!2119733 lambda!256115))))

(assert (=> d!1662269 (= (lemmaNotForallThenExists!421 lt!2119733 lambda!256115) lt!2119771)))

(declare-fun bs!1200339 () Bool)

(assert (= bs!1200339 d!1662269))

(declare-fun m!6202590 () Bool)

(assert (=> bs!1200339 m!6202590))

(declare-fun m!6202592 () Bool)

(assert (=> bs!1200339 m!6202592))

(declare-fun m!6202594 () Bool)

(assert (=> bs!1200339 m!6202594))

(assert (=> b!5137298 d!1662269))

(declare-fun d!1662271 () Bool)

(declare-fun res!2188143 () Bool)

(declare-fun e!3204437 () Bool)

(assert (=> d!1662271 (=> res!2188143 e!3204437)))

(assert (=> d!1662271 (= res!2188143 (is-Nil!59652 (exprs!4302 ctx!74)))))

(assert (=> d!1662271 (= (forall!13890 (exprs!4302 ctx!74) lambda!256123) e!3204437)))

(declare-fun b!5137414 () Bool)

(declare-fun e!3204438 () Bool)

(assert (=> b!5137414 (= e!3204437 e!3204438)))

(declare-fun res!2188144 () Bool)

(assert (=> b!5137414 (=> (not res!2188144) (not e!3204438))))

(declare-fun dynLambda!23757 (Int Regex!14418) Bool)

(assert (=> b!5137414 (= res!2188144 (dynLambda!23757 lambda!256123 (h!66100 (exprs!4302 ctx!74))))))

(declare-fun b!5137415 () Bool)

(assert (=> b!5137415 (= e!3204438 (forall!13890 (t!372805 (exprs!4302 ctx!74)) lambda!256123))))

(assert (= (and d!1662271 (not res!2188143)) b!5137414))

(assert (= (and b!5137414 res!2188144) b!5137415))

(declare-fun b_lambda!200157 () Bool)

(assert (=> (not b_lambda!200157) (not b!5137414)))

(declare-fun m!6202596 () Bool)

(assert (=> b!5137414 m!6202596))

(declare-fun m!6202598 () Bool)

(assert (=> b!5137415 m!6202598))

(assert (=> d!1662243 d!1662271))

(declare-fun bs!1200340 () Bool)

(declare-fun d!1662273 () Bool)

(assert (= bs!1200340 (and d!1662273 b!5137299)))

(declare-fun lambda!256163 () Int)

(assert (=> bs!1200340 (not (= lambda!256163 lambda!256117))))

(declare-fun bs!1200341 () Bool)

(assert (= bs!1200341 (and d!1662273 d!1662261)))

(assert (=> bs!1200341 (= (= lambda!256115 (ite c!884536 lambda!256116 lambda!256117)) (= lambda!256163 lambda!256154))))

(declare-fun bs!1200342 () Bool)

(assert (= bs!1200342 (and d!1662273 d!1662269)))

(assert (=> bs!1200342 (= lambda!256163 lambda!256160)))

(declare-fun bs!1200343 () Bool)

(assert (= bs!1200343 (and d!1662273 d!1662255)))

(assert (=> bs!1200343 (not (= lambda!256163 lambda!256151))))

(declare-fun bs!1200344 () Bool)

(assert (= bs!1200344 (and d!1662273 b!5137298)))

(assert (=> bs!1200344 (not (= lambda!256163 lambda!256116))))

(declare-fun bs!1200345 () Bool)

(assert (= bs!1200345 (and d!1662273 d!1662235)))

(assert (=> bs!1200345 (not (= lambda!256163 lambda!256115))))

(assert (=> d!1662273 true))

(assert (=> d!1662273 (< (dynLambda!23755 order!26939 lambda!256115) (dynLambda!23755 order!26939 lambda!256163))))

(assert (=> d!1662273 (not (exists!1758 lt!2119738 lambda!256163))))

(declare-fun lt!2119774 () Unit!151015)

(declare-fun choose!38023 (List!59778 Int) Unit!151015)

(assert (=> d!1662273 (= lt!2119774 (choose!38023 lt!2119738 lambda!256115))))

(assert (=> d!1662273 (forall!13893 lt!2119738 lambda!256115)))

(assert (=> d!1662273 (= (lemmaForallThenNotExists!388 lt!2119738 lambda!256115) lt!2119774)))

(declare-fun bs!1200346 () Bool)

(assert (= bs!1200346 d!1662273))

(declare-fun m!6202600 () Bool)

(assert (=> bs!1200346 m!6202600))

(declare-fun m!6202602 () Bool)

(assert (=> bs!1200346 m!6202602))

(declare-fun m!6202604 () Bool)

(assert (=> bs!1200346 m!6202604))

(assert (=> b!5137299 d!1662273))

(declare-fun b!5137416 () Bool)

(declare-fun e!3204442 () (Set Context!7604))

(declare-fun e!3204443 () (Set Context!7604))

(assert (=> b!5137416 (= e!3204442 e!3204443)))

(declare-fun c!884587 () Bool)

(assert (=> b!5137416 (= c!884587 (is-Cons!59652 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))))))

(declare-fun b!5137417 () Bool)

(assert (=> b!5137417 (= e!3204443 (as set.empty (Set Context!7604)))))

(declare-fun call!358304 () (Set Context!7604))

(declare-fun b!5137418 () Bool)

(assert (=> b!5137418 (= e!3204442 (set.union call!358304 (derivationStepZipperUp!98 (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) a!1252)))))

(declare-fun b!5137419 () Bool)

(assert (=> b!5137419 (= e!3204443 call!358304)))

(declare-fun b!5137420 () Bool)

(declare-fun e!3204441 () Bool)

(assert (=> b!5137420 (= e!3204441 (nullable!4791 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))))))

(declare-fun bm!358299 () Bool)

(assert (=> bm!358299 (= call!358304 (derivationStepZipperDown!121 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))) (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) a!1252))))

(declare-fun d!1662275 () Bool)

(declare-fun c!884588 () Bool)

(assert (=> d!1662275 (= c!884588 e!3204441)))

(declare-fun res!2188145 () Bool)

(assert (=> d!1662275 (=> (not res!2188145) (not e!3204441))))

(assert (=> d!1662275 (= res!2188145 (is-Cons!59652 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))))))

(assert (=> d!1662275 (= (derivationStepZipperUp!98 (Context!7605 (t!372805 (exprs!4302 ctx!74))) a!1252) e!3204442)))

(assert (= (and d!1662275 res!2188145) b!5137420))

(assert (= (and d!1662275 c!884588) b!5137418))

(assert (= (and d!1662275 (not c!884588)) b!5137416))

(assert (= (and b!5137416 c!884587) b!5137419))

(assert (= (and b!5137416 (not c!884587)) b!5137417))

(assert (= (or b!5137418 b!5137419) bm!358299))

(declare-fun m!6202606 () Bool)

(assert (=> b!5137418 m!6202606))

(declare-fun m!6202608 () Bool)

(assert (=> b!5137420 m!6202608))

(declare-fun m!6202610 () Bool)

(assert (=> bm!358299 m!6202610))

(assert (=> b!5137312 d!1662275))

(declare-fun d!1662277 () Bool)

(declare-fun e!3204446 () Bool)

(assert (=> d!1662277 e!3204446))

(declare-fun res!2188148 () Bool)

(assert (=> d!1662277 (=> (not res!2188148) (not e!3204446))))

(declare-fun lt!2119777 () List!59778)

(declare-fun noDuplicate!1107 (List!59778) Bool)

(assert (=> d!1662277 (= res!2188148 (noDuplicate!1107 lt!2119777))))

(declare-fun choose!38024 ((Set Context!7604)) List!59778)

(assert (=> d!1662277 (= lt!2119777 (choose!38024 (derivationStepZipperUp!98 ctx!74 a!1252)))))

(assert (=> d!1662277 (= (toList!8374 (derivationStepZipperUp!98 ctx!74 a!1252)) lt!2119777)))

(declare-fun b!5137423 () Bool)

(declare-fun content!10584 (List!59778) (Set Context!7604))

(assert (=> b!5137423 (= e!3204446 (= (content!10584 lt!2119777) (derivationStepZipperUp!98 ctx!74 a!1252)))))

(assert (= (and d!1662277 res!2188148) b!5137423))

(declare-fun m!6202612 () Bool)

(assert (=> d!1662277 m!6202612))

(assert (=> d!1662277 m!6202492))

(declare-fun m!6202614 () Bool)

(assert (=> d!1662277 m!6202614))

(declare-fun m!6202616 () Bool)

(assert (=> b!5137423 m!6202616))

(assert (=> bm!358261 d!1662277))

(declare-fun b!5137436 () Bool)

(declare-fun e!3204449 () Bool)

(declare-fun tp!1432724 () Bool)

(assert (=> b!5137436 (= e!3204449 tp!1432724)))

(declare-fun b!5137437 () Bool)

(declare-fun tp!1432722 () Bool)

(declare-fun tp!1432725 () Bool)

(assert (=> b!5137437 (= e!3204449 (and tp!1432722 tp!1432725))))

(declare-fun b!5137434 () Bool)

(assert (=> b!5137434 (= e!3204449 tp_is_empty!37989)))

(declare-fun b!5137435 () Bool)

(declare-fun tp!1432726 () Bool)

(declare-fun tp!1432723 () Bool)

(assert (=> b!5137435 (= e!3204449 (and tp!1432726 tp!1432723))))

(assert (=> b!5137319 (= tp!1432704 e!3204449)))

(assert (= (and b!5137319 (is-ElementMatch!14418 (h!66100 (exprs!4302 ctx!74)))) b!5137434))

(assert (= (and b!5137319 (is-Concat!23263 (h!66100 (exprs!4302 ctx!74)))) b!5137435))

(assert (= (and b!5137319 (is-Star!14418 (h!66100 (exprs!4302 ctx!74)))) b!5137436))

(assert (= (and b!5137319 (is-Union!14418 (h!66100 (exprs!4302 ctx!74)))) b!5137437))

(declare-fun b!5137438 () Bool)

(declare-fun e!3204450 () Bool)

(declare-fun tp!1432727 () Bool)

(declare-fun tp!1432728 () Bool)

(assert (=> b!5137438 (= e!3204450 (and tp!1432727 tp!1432728))))

(assert (=> b!5137319 (= tp!1432705 e!3204450)))

(assert (= (and b!5137319 (is-Cons!59652 (t!372805 (exprs!4302 ctx!74)))) b!5137438))

(declare-fun b_lambda!200159 () Bool)

(assert (= b_lambda!200157 (or d!1662243 b_lambda!200159)))

(declare-fun bs!1200347 () Bool)

(declare-fun d!1662279 () Bool)

(assert (= bs!1200347 (and d!1662279 d!1662243)))

(declare-fun validRegex!6275 (Regex!14418) Bool)

(assert (=> bs!1200347 (= (dynLambda!23757 lambda!256123 (h!66100 (exprs!4302 ctx!74))) (validRegex!6275 (h!66100 (exprs!4302 ctx!74))))))

(declare-fun m!6202618 () Bool)

(assert (=> bs!1200347 m!6202618))

(assert (=> b!5137414 d!1662279))

(push 1)

(assert (not bm!358299))

(assert (not d!1662255))

(assert (not bm!358296))

(assert (not b!5137438))

(assert (not b!5137435))

(assert (not b!5137415))

(assert (not b!5137420))

(assert (not b!5137436))

(assert (not b_lambda!200159))

(assert (not bm!358298))

(assert (not b!5137437))

(assert (not d!1662277))

(assert (not bm!358280))

(assert (not d!1662273))

(assert (not b!5137418))

(assert (not b!5137350))

(assert (not bs!1200347))

(assert (not d!1662267))

(assert (not b!5137405))

(assert (not b!5137423))

(assert tp_is_empty!37989)

(assert (not d!1662259))

(assert (not d!1662261))

(assert (not d!1662269))

(assert (not bm!358297))

(assert (not bm!358279))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1662307 () Bool)

(declare-fun res!2188181 () Bool)

(declare-fun e!3204514 () Bool)

(assert (=> d!1662307 (=> res!2188181 e!3204514)))

(assert (=> d!1662307 (= res!2188181 (is-Nil!59654 (ite c!884536 lt!2119733 lt!2119738)))))

(assert (=> d!1662307 (= (forall!13893 (ite c!884536 lt!2119733 lt!2119738) lambda!256154) e!3204514)))

(declare-fun b!5137536 () Bool)

(declare-fun e!3204515 () Bool)

(assert (=> b!5137536 (= e!3204514 e!3204515)))

(declare-fun res!2188182 () Bool)

(assert (=> b!5137536 (=> (not res!2188182) (not e!3204515))))

(declare-fun dynLambda!23761 (Int Context!7604) Bool)

(assert (=> b!5137536 (= res!2188182 (dynLambda!23761 lambda!256154 (h!66102 (ite c!884536 lt!2119733 lt!2119738))))))

(declare-fun b!5137537 () Bool)

(assert (=> b!5137537 (= e!3204515 (forall!13893 (t!372807 (ite c!884536 lt!2119733 lt!2119738)) lambda!256154))))

(assert (= (and d!1662307 (not res!2188181)) b!5137536))

(assert (= (and b!5137536 res!2188182) b!5137537))

(declare-fun b_lambda!200165 () Bool)

(assert (=> (not b_lambda!200165) (not b!5137536)))

(declare-fun m!6202680 () Bool)

(assert (=> b!5137536 m!6202680))

(declare-fun m!6202682 () Bool)

(assert (=> b!5137537 m!6202682))

(assert (=> d!1662261 d!1662307))

(declare-fun d!1662309 () Bool)

(assert (=> d!1662309 (= ($colon$colon!1171 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))) (ite (or c!884583 c!884586) (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (h!66100 (exprs!4302 ctx!74)))) (Cons!59652 (ite (or c!884583 c!884586) (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (h!66100 (exprs!4302 ctx!74))) (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))))))

(assert (=> bm!358297 d!1662309))

(declare-fun d!1662311 () Bool)

(declare-fun c!884621 () Bool)

(assert (=> d!1662311 (= c!884621 (and (is-ElementMatch!14418 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74))))))) (= (c!884524 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74))))))) a!1252)))))

(declare-fun e!3204519 () (Set Context!7604))

(assert (=> d!1662311 (= (derivationStepZipperDown!121 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74)))))) (ite (or c!884584 c!884583) (Context!7605 (t!372805 (exprs!4302 ctx!74))) (Context!7605 call!358302)) a!1252) e!3204519)))

(declare-fun b!5137538 () Bool)

(declare-fun c!884619 () Bool)

(declare-fun e!3204517 () Bool)

(assert (=> b!5137538 (= c!884619 e!3204517)))

(declare-fun res!2188183 () Bool)

(assert (=> b!5137538 (=> (not res!2188183) (not e!3204517))))

(assert (=> b!5137538 (= res!2188183 (is-Concat!23263 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74))))))))))

(declare-fun e!3204518 () (Set Context!7604))

(declare-fun e!3204520 () (Set Context!7604))

(assert (=> b!5137538 (= e!3204518 e!3204520)))

(declare-fun b!5137539 () Bool)

(declare-fun e!3204521 () (Set Context!7604))

(assert (=> b!5137539 (= e!3204521 (as set.empty (Set Context!7604)))))

(declare-fun bm!358325 () Bool)

(declare-fun call!358330 () (Set Context!7604))

(declare-fun call!358335 () (Set Context!7604))

(assert (=> bm!358325 (= call!358330 call!358335)))

(declare-fun b!5137540 () Bool)

(declare-fun e!3204516 () (Set Context!7604))

(assert (=> b!5137540 (= e!3204520 e!3204516)))

(declare-fun c!884622 () Bool)

(assert (=> b!5137540 (= c!884622 (is-Concat!23263 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74))))))))))

(declare-fun b!5137541 () Bool)

(assert (=> b!5137541 (= e!3204521 call!358330)))

(declare-fun b!5137542 () Bool)

(declare-fun call!358332 () (Set Context!7604))

(assert (=> b!5137542 (= e!3204520 (set.union call!358332 call!358335))))

(declare-fun b!5137543 () Bool)

(assert (=> b!5137543 (= e!3204519 (set.insert (ite (or c!884584 c!884583) (Context!7605 (t!372805 (exprs!4302 ctx!74))) (Context!7605 call!358302)) (as set.empty (Set Context!7604))))))

(declare-fun bm!358326 () Bool)

(declare-fun call!358334 () List!59776)

(declare-fun call!358333 () List!59776)

(assert (=> bm!358326 (= call!358334 call!358333)))

(declare-fun c!884618 () Bool)

(declare-fun b!5137544 () Bool)

(assert (=> b!5137544 (= c!884618 (is-Star!14418 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74))))))))))

(assert (=> b!5137544 (= e!3204516 e!3204521)))

(declare-fun bm!358327 () Bool)

(declare-fun call!358331 () (Set Context!7604))

(assert (=> bm!358327 (= call!358335 call!358331)))

(declare-fun c!884620 () Bool)

(declare-fun bm!358328 () Bool)

(assert (=> bm!358328 (= call!358331 (derivationStepZipperDown!121 (ite c!884620 (regTwo!29349 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74))))))) (ite c!884619 (regTwo!29348 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74))))))) (ite c!884622 (regOne!29348 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74))))))) (reg!14747 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74)))))))))) (ite (or c!884620 c!884619) (ite (or c!884584 c!884583) (Context!7605 (t!372805 (exprs!4302 ctx!74))) (Context!7605 call!358302)) (Context!7605 call!358334)) a!1252))))

(declare-fun bm!358329 () Bool)

(assert (=> bm!358329 (= call!358333 ($colon$colon!1171 (exprs!4302 (ite (or c!884584 c!884583) (Context!7605 (t!372805 (exprs!4302 ctx!74))) (Context!7605 call!358302))) (ite (or c!884619 c!884622) (regTwo!29348 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74))))))) (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74)))))))))))

(declare-fun b!5137545 () Bool)

(assert (=> b!5137545 (= e!3204518 (set.union call!358332 call!358331))))

(declare-fun b!5137546 () Bool)

(assert (=> b!5137546 (= e!3204517 (nullable!4791 (regOne!29348 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74)))))))))))

(declare-fun b!5137547 () Bool)

(assert (=> b!5137547 (= e!3204519 e!3204518)))

(assert (=> b!5137547 (= c!884620 (is-Union!14418 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74))))))))))

(declare-fun bm!358330 () Bool)

(assert (=> bm!358330 (= call!358332 (derivationStepZipperDown!121 (ite c!884620 (regOne!29349 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74))))))) (regOne!29348 (ite c!884584 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (ite c!884583 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))) (ite c!884586 (regOne!29348 (h!66100 (exprs!4302 ctx!74))) (reg!14747 (h!66100 (exprs!4302 ctx!74)))))))) (ite c!884620 (ite (or c!884584 c!884583) (Context!7605 (t!372805 (exprs!4302 ctx!74))) (Context!7605 call!358302)) (Context!7605 call!358333)) a!1252))))

(declare-fun b!5137548 () Bool)

(assert (=> b!5137548 (= e!3204516 call!358330)))

(assert (= (and d!1662311 c!884621) b!5137543))

(assert (= (and d!1662311 (not c!884621)) b!5137547))

(assert (= (and b!5137547 c!884620) b!5137545))

(assert (= (and b!5137547 (not c!884620)) b!5137538))

(assert (= (and b!5137538 res!2188183) b!5137546))

(assert (= (and b!5137538 c!884619) b!5137542))

(assert (= (and b!5137538 (not c!884619)) b!5137540))

(assert (= (and b!5137540 c!884622) b!5137548))

(assert (= (and b!5137540 (not c!884622)) b!5137544))

(assert (= (and b!5137544 c!884618) b!5137541))

(assert (= (and b!5137544 (not c!884618)) b!5137539))

(assert (= (or b!5137548 b!5137541) bm!358326))

(assert (= (or b!5137548 b!5137541) bm!358325))

(assert (= (or b!5137542 bm!358326) bm!358329))

(assert (= (or b!5137542 bm!358325) bm!358327))

(assert (= (or b!5137545 b!5137542) bm!358330))

(assert (= (or b!5137545 bm!358327) bm!358328))

(declare-fun m!6202684 () Bool)

(assert (=> bm!358329 m!6202684))

(declare-fun m!6202686 () Bool)

(assert (=> bm!358328 m!6202686))

(declare-fun m!6202688 () Bool)

(assert (=> b!5137546 m!6202688))

(declare-fun m!6202690 () Bool)

(assert (=> bm!358330 m!6202690))

(declare-fun m!6202692 () Bool)

(assert (=> b!5137543 m!6202692))

(assert (=> bm!358296 d!1662311))

(declare-fun b!5137567 () Bool)

(declare-fun e!3204536 () Bool)

(declare-fun e!3204542 () Bool)

(assert (=> b!5137567 (= e!3204536 e!3204542)))

(declare-fun res!2188197 () Bool)

(assert (=> b!5137567 (= res!2188197 (not (nullable!4791 (reg!14747 (h!66100 (exprs!4302 ctx!74))))))))

(assert (=> b!5137567 (=> (not res!2188197) (not e!3204542))))

(declare-fun b!5137568 () Bool)

(declare-fun e!3204541 () Bool)

(assert (=> b!5137568 (= e!3204536 e!3204541)))

(declare-fun c!884627 () Bool)

(assert (=> b!5137568 (= c!884627 (is-Union!14418 (h!66100 (exprs!4302 ctx!74))))))

(declare-fun d!1662313 () Bool)

(declare-fun res!2188194 () Bool)

(declare-fun e!3204540 () Bool)

(assert (=> d!1662313 (=> res!2188194 e!3204540)))

(assert (=> d!1662313 (= res!2188194 (is-ElementMatch!14418 (h!66100 (exprs!4302 ctx!74))))))

(assert (=> d!1662313 (= (validRegex!6275 (h!66100 (exprs!4302 ctx!74))) e!3204540)))

(declare-fun b!5137569 () Bool)

(declare-fun res!2188198 () Bool)

(declare-fun e!3204539 () Bool)

(assert (=> b!5137569 (=> (not res!2188198) (not e!3204539))))

(declare-fun call!358342 () Bool)

(assert (=> b!5137569 (= res!2188198 call!358342)))

(assert (=> b!5137569 (= e!3204541 e!3204539)))

(declare-fun c!884628 () Bool)

(declare-fun bm!358337 () Bool)

(declare-fun call!358343 () Bool)

(assert (=> bm!358337 (= call!358343 (validRegex!6275 (ite c!884628 (reg!14747 (h!66100 (exprs!4302 ctx!74))) (ite c!884627 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regTwo!29348 (h!66100 (exprs!4302 ctx!74)))))))))

(declare-fun b!5137570 () Bool)

(declare-fun e!3204538 () Bool)

(declare-fun e!3204537 () Bool)

(assert (=> b!5137570 (= e!3204538 e!3204537)))

(declare-fun res!2188196 () Bool)

(assert (=> b!5137570 (=> (not res!2188196) (not e!3204537))))

(declare-fun call!358344 () Bool)

(assert (=> b!5137570 (= res!2188196 call!358344)))

(declare-fun b!5137571 () Bool)

(assert (=> b!5137571 (= e!3204537 call!358342)))

(declare-fun b!5137572 () Bool)

(assert (=> b!5137572 (= e!3204540 e!3204536)))

(assert (=> b!5137572 (= c!884628 (is-Star!14418 (h!66100 (exprs!4302 ctx!74))))))

(declare-fun b!5137573 () Bool)

(assert (=> b!5137573 (= e!3204539 call!358344)))

(declare-fun bm!358338 () Bool)

(assert (=> bm!358338 (= call!358342 call!358343)))

(declare-fun b!5137574 () Bool)

(assert (=> b!5137574 (= e!3204542 call!358343)))

(declare-fun bm!358339 () Bool)

(assert (=> bm!358339 (= call!358344 (validRegex!6275 (ite c!884627 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))))))

(declare-fun b!5137575 () Bool)

(declare-fun res!2188195 () Bool)

(assert (=> b!5137575 (=> res!2188195 e!3204538)))

(assert (=> b!5137575 (= res!2188195 (not (is-Concat!23263 (h!66100 (exprs!4302 ctx!74)))))))

(assert (=> b!5137575 (= e!3204541 e!3204538)))

(assert (= (and d!1662313 (not res!2188194)) b!5137572))

(assert (= (and b!5137572 c!884628) b!5137567))

(assert (= (and b!5137572 (not c!884628)) b!5137568))

(assert (= (and b!5137567 res!2188197) b!5137574))

(assert (= (and b!5137568 c!884627) b!5137569))

(assert (= (and b!5137568 (not c!884627)) b!5137575))

(assert (= (and b!5137569 res!2188198) b!5137573))

(assert (= (and b!5137575 (not res!2188195)) b!5137570))

(assert (= (and b!5137570 res!2188196) b!5137571))

(assert (= (or b!5137569 b!5137571) bm!358338))

(assert (= (or b!5137573 b!5137570) bm!358339))

(assert (= (or b!5137574 bm!358338) bm!358337))

(declare-fun m!6202694 () Bool)

(assert (=> b!5137567 m!6202694))

(declare-fun m!6202696 () Bool)

(assert (=> bm!358337 m!6202696))

(declare-fun m!6202698 () Bool)

(assert (=> bm!358339 m!6202698))

(assert (=> bs!1200347 d!1662313))

(declare-fun d!1662315 () Bool)

(assert (=> d!1662315 (= (nullable!4791 (ite c!884571 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (regTwo!29348 (h!66100 (exprs!4302 ctx!74))))) (nullableFct!1312 (ite c!884571 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))) (regTwo!29348 (h!66100 (exprs!4302 ctx!74))))))))

(declare-fun bs!1200374 () Bool)

(assert (= bs!1200374 d!1662315))

(declare-fun m!6202700 () Bool)

(assert (=> bs!1200374 m!6202700))

(assert (=> bm!358280 d!1662315))

(declare-fun d!1662317 () Bool)

(declare-fun res!2188199 () Bool)

(declare-fun e!3204543 () Bool)

(assert (=> d!1662317 (=> res!2188199 e!3204543)))

(assert (=> d!1662317 (= res!2188199 (is-Nil!59652 (t!372805 (exprs!4302 ctx!74))))))

(assert (=> d!1662317 (= (forall!13890 (t!372805 (exprs!4302 ctx!74)) lambda!256123) e!3204543)))

(declare-fun b!5137576 () Bool)

(declare-fun e!3204544 () Bool)

(assert (=> b!5137576 (= e!3204543 e!3204544)))

(declare-fun res!2188200 () Bool)

(assert (=> b!5137576 (=> (not res!2188200) (not e!3204544))))

(assert (=> b!5137576 (= res!2188200 (dynLambda!23757 lambda!256123 (h!66100 (t!372805 (exprs!4302 ctx!74)))))))

(declare-fun b!5137577 () Bool)

(assert (=> b!5137577 (= e!3204544 (forall!13890 (t!372805 (t!372805 (exprs!4302 ctx!74))) lambda!256123))))

(assert (= (and d!1662317 (not res!2188199)) b!5137576))

(assert (= (and b!5137576 res!2188200) b!5137577))

(declare-fun b_lambda!200167 () Bool)

(assert (=> (not b_lambda!200167) (not b!5137576)))

(declare-fun m!6202702 () Bool)

(assert (=> b!5137576 m!6202702))

(declare-fun m!6202704 () Bool)

(assert (=> b!5137577 m!6202704))

(assert (=> b!5137415 d!1662317))

(declare-fun d!1662319 () Bool)

(assert (=> d!1662319 (= (nullable!4791 (ite c!884571 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))) (nullableFct!1312 (ite c!884571 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))))))

(declare-fun bs!1200375 () Bool)

(assert (= bs!1200375 d!1662319))

(declare-fun m!6202706 () Bool)

(assert (=> bs!1200375 m!6202706))

(assert (=> bm!358279 d!1662319))

(declare-fun d!1662321 () Bool)

(declare-fun res!2188201 () Bool)

(declare-fun e!3204545 () Bool)

(assert (=> d!1662321 (=> res!2188201 e!3204545)))

(assert (=> d!1662321 (= res!2188201 (is-Nil!59652 (exprs!4302 ctx!74)))))

(assert (=> d!1662321 (= (forall!13890 (exprs!4302 ctx!74) lambda!256157) e!3204545)))

(declare-fun b!5137578 () Bool)

(declare-fun e!3204546 () Bool)

(assert (=> b!5137578 (= e!3204545 e!3204546)))

(declare-fun res!2188202 () Bool)

(assert (=> b!5137578 (=> (not res!2188202) (not e!3204546))))

(assert (=> b!5137578 (= res!2188202 (dynLambda!23757 lambda!256157 (h!66100 (exprs!4302 ctx!74))))))

(declare-fun b!5137579 () Bool)

(assert (=> b!5137579 (= e!3204546 (forall!13890 (t!372805 (exprs!4302 ctx!74)) lambda!256157))))

(assert (= (and d!1662321 (not res!2188201)) b!5137578))

(assert (= (and b!5137578 res!2188202) b!5137579))

(declare-fun b_lambda!200169 () Bool)

(assert (=> (not b_lambda!200169) (not b!5137578)))

(declare-fun m!6202708 () Bool)

(assert (=> b!5137578 m!6202708))

(declare-fun m!6202710 () Bool)

(assert (=> b!5137579 m!6202710))

(assert (=> d!1662267 d!1662321))

(declare-fun d!1662323 () Bool)

(assert (=> d!1662323 (= (isDefined!11531 lt!2119765) (not (isEmpty!32033 lt!2119765)))))

(declare-fun bs!1200376 () Bool)

(assert (= bs!1200376 d!1662323))

(declare-fun m!6202712 () Bool)

(assert (=> bs!1200376 m!6202712))

(assert (=> d!1662255 d!1662323))

(declare-fun d!1662325 () Bool)

(declare-fun lt!2119795 () Bool)

(assert (=> d!1662325 (= lt!2119795 (exists!1758 (toList!8374 (derivationStepZipperUp!98 ctx!74 a!1252)) lambda!256151))))

(declare-fun choose!38029 ((Set Context!7604) Int) Bool)

(assert (=> d!1662325 (= lt!2119795 (choose!38029 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256151))))

(assert (=> d!1662325 (= (exists!1762 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256151) lt!2119795)))

(declare-fun bs!1200377 () Bool)

(assert (= bs!1200377 d!1662325))

(assert (=> bs!1200377 m!6202492))

(assert (=> bs!1200377 m!6202518))

(assert (=> bs!1200377 m!6202518))

(declare-fun m!6202714 () Bool)

(assert (=> bs!1200377 m!6202714))

(assert (=> bs!1200377 m!6202492))

(declare-fun m!6202716 () Bool)

(assert (=> bs!1200377 m!6202716))

(assert (=> d!1662255 d!1662325))

(declare-fun d!1662327 () Bool)

(declare-fun res!2188207 () Bool)

(declare-fun e!3204551 () Bool)

(assert (=> d!1662327 (=> res!2188207 e!3204551)))

(assert (=> d!1662327 (= res!2188207 (is-Nil!59654 lt!2119777))))

(assert (=> d!1662327 (= (noDuplicate!1107 lt!2119777) e!3204551)))

(declare-fun b!5137584 () Bool)

(declare-fun e!3204552 () Bool)

(assert (=> b!5137584 (= e!3204551 e!3204552)))

(declare-fun res!2188208 () Bool)

(assert (=> b!5137584 (=> (not res!2188208) (not e!3204552))))

(declare-fun contains!19647 (List!59778 Context!7604) Bool)

(assert (=> b!5137584 (= res!2188208 (not (contains!19647 (t!372807 lt!2119777) (h!66102 lt!2119777))))))

(declare-fun b!5137585 () Bool)

(assert (=> b!5137585 (= e!3204552 (noDuplicate!1107 (t!372807 lt!2119777)))))

(assert (= (and d!1662327 (not res!2188207)) b!5137584))

(assert (= (and b!5137584 res!2188208) b!5137585))

(declare-fun m!6202718 () Bool)

(assert (=> b!5137584 m!6202718))

(declare-fun m!6202720 () Bool)

(assert (=> b!5137585 m!6202720))

(assert (=> d!1662277 d!1662327))

(declare-fun d!1662329 () Bool)

(declare-fun e!3204560 () Bool)

(assert (=> d!1662329 e!3204560))

(declare-fun res!2188213 () Bool)

(assert (=> d!1662329 (=> (not res!2188213) (not e!3204560))))

(declare-fun res!2188214 () List!59778)

(assert (=> d!1662329 (= res!2188213 (noDuplicate!1107 res!2188214))))

(declare-fun e!3204561 () Bool)

(assert (=> d!1662329 e!3204561))

(assert (=> d!1662329 (= (choose!38024 (derivationStepZipperUp!98 ctx!74 a!1252)) res!2188214)))

(declare-fun b!5137593 () Bool)

(declare-fun e!3204559 () Bool)

(declare-fun tp!1432751 () Bool)

(assert (=> b!5137593 (= e!3204559 tp!1432751)))

(declare-fun b!5137592 () Bool)

(declare-fun tp!1432750 () Bool)

(assert (=> b!5137592 (= e!3204561 (and (inv!79227 (h!66102 res!2188214)) e!3204559 tp!1432750))))

(declare-fun b!5137594 () Bool)

(assert (=> b!5137594 (= e!3204560 (= (content!10584 res!2188214) (derivationStepZipperUp!98 ctx!74 a!1252)))))

(assert (= b!5137592 b!5137593))

(assert (= (and d!1662329 (is-Cons!59654 res!2188214)) b!5137592))

(assert (= (and d!1662329 res!2188213) b!5137594))

(declare-fun m!6202722 () Bool)

(assert (=> d!1662329 m!6202722))

(declare-fun m!6202724 () Bool)

(assert (=> b!5137592 m!6202724))

(declare-fun m!6202726 () Bool)

(assert (=> b!5137594 m!6202726))

(assert (=> d!1662277 d!1662329))

(declare-fun bs!1200378 () Bool)

(declare-fun d!1662331 () Bool)

(assert (= bs!1200378 (and d!1662331 d!1662241)))

(declare-fun lambda!256185 () Int)

(assert (=> bs!1200378 (= lambda!256185 lambda!256120)))

(declare-fun bs!1200379 () Bool)

(assert (= bs!1200379 (and d!1662331 d!1662243)))

(assert (=> bs!1200379 (not (= lambda!256185 lambda!256123))))

(declare-fun bs!1200380 () Bool)

(assert (= bs!1200380 (and d!1662331 d!1662267)))

(assert (=> bs!1200380 (not (= lambda!256185 lambda!256157))))

(declare-fun b!5137607 () Bool)

(declare-fun e!3204569 () Option!14772)

(assert (=> b!5137607 (= e!3204569 None!14771)))

(declare-fun b!5137608 () Bool)

(declare-fun e!3204570 () Option!14772)

(assert (=> b!5137608 (= e!3204570 None!14771)))

(declare-fun b!5137609 () Bool)

(declare-fun c!884637 () Bool)

(declare-fun lt!2119803 () Option!14772)

(assert (=> b!5137609 (= c!884637 (is-Some!14771 lt!2119803))))

(assert (=> b!5137609 (= lt!2119803 (getLanguageWitness!919 (Context!7605 (t!372805 (exprs!4302 (getWitness!834 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256151))))))))

(assert (=> b!5137609 (= e!3204570 e!3204569)))

(declare-fun b!5137610 () Bool)

(declare-fun e!3204568 () Option!14772)

(assert (=> b!5137610 (= e!3204568 e!3204570)))

(declare-fun lt!2119804 () Option!14772)

(declare-fun getLanguageWitness!921 (Regex!14418) Option!14772)

(assert (=> b!5137610 (= lt!2119804 (getLanguageWitness!921 (h!66100 (exprs!4302 (getWitness!834 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256151)))))))

(declare-fun c!884636 () Bool)

(assert (=> b!5137610 (= c!884636 (is-Some!14771 lt!2119804))))

(declare-fun lt!2119802 () Option!14772)

(assert (=> d!1662331 (= (isEmpty!32033 lt!2119802) (exists!1759 (exprs!4302 (getWitness!834 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256151)) lambda!256185))))

(assert (=> d!1662331 (= lt!2119802 e!3204568)))

(declare-fun c!884638 () Bool)

(assert (=> d!1662331 (= c!884638 (is-Cons!59652 (exprs!4302 (getWitness!834 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256151))))))

(assert (=> d!1662331 (= (getLanguageWitness!919 (getWitness!834 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256151)) lt!2119802)))

(declare-fun b!5137611 () Bool)

(assert (=> b!5137611 (= e!3204568 (Some!14771 Nil!59655))))

(declare-fun b!5137612 () Bool)

(declare-fun ++!13065 (List!59779 List!59779) List!59779)

(assert (=> b!5137612 (= e!3204569 (Some!14771 (++!13065 (v!50800 lt!2119804) (v!50800 lt!2119803))))))

(assert (= (and d!1662331 c!884638) b!5137610))

(assert (= (and d!1662331 (not c!884638)) b!5137611))

(assert (= (and b!5137610 c!884636) b!5137609))

(assert (= (and b!5137610 (not c!884636)) b!5137608))

(assert (= (and b!5137609 c!884637) b!5137612))

(assert (= (and b!5137609 (not c!884637)) b!5137607))

(declare-fun m!6202728 () Bool)

(assert (=> b!5137609 m!6202728))

(declare-fun m!6202730 () Bool)

(assert (=> b!5137610 m!6202730))

(declare-fun m!6202732 () Bool)

(assert (=> d!1662331 m!6202732))

(declare-fun m!6202734 () Bool)

(assert (=> d!1662331 m!6202734))

(declare-fun m!6202736 () Bool)

(assert (=> b!5137612 m!6202736))

(assert (=> b!5137350 d!1662331))

(declare-fun d!1662333 () Bool)

(declare-fun e!3204573 () Bool)

(assert (=> d!1662333 e!3204573))

(declare-fun res!2188217 () Bool)

(assert (=> d!1662333 (=> (not res!2188217) (not e!3204573))))

(declare-fun lt!2119807 () Context!7604)

(assert (=> d!1662333 (= res!2188217 (dynLambda!23761 lambda!256151 lt!2119807))))

(declare-fun getWitness!836 (List!59778 Int) Context!7604)

(assert (=> d!1662333 (= lt!2119807 (getWitness!836 (toList!8374 (derivationStepZipperUp!98 ctx!74 a!1252)) lambda!256151))))

(assert (=> d!1662333 (exists!1762 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256151)))

(assert (=> d!1662333 (= (getWitness!834 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256151) lt!2119807)))

(declare-fun b!5137615 () Bool)

(assert (=> b!5137615 (= e!3204573 (set.member lt!2119807 (derivationStepZipperUp!98 ctx!74 a!1252)))))

(assert (= (and d!1662333 res!2188217) b!5137615))

(declare-fun b_lambda!200171 () Bool)

(assert (=> (not b_lambda!200171) (not d!1662333)))

(declare-fun m!6202738 () Bool)

(assert (=> d!1662333 m!6202738))

(assert (=> d!1662333 m!6202492))

(assert (=> d!1662333 m!6202518))

(assert (=> d!1662333 m!6202518))

(declare-fun m!6202740 () Bool)

(assert (=> d!1662333 m!6202740))

(assert (=> d!1662333 m!6202492))

(assert (=> d!1662333 m!6202562))

(declare-fun m!6202742 () Bool)

(assert (=> b!5137615 m!6202742))

(assert (=> b!5137350 d!1662333))

(declare-fun bs!1200381 () Bool)

(declare-fun d!1662335 () Bool)

(assert (= bs!1200381 (and d!1662335 b!5137299)))

(declare-fun lambda!256186 () Int)

(assert (=> bs!1200381 (not (= lambda!256186 lambda!256117))))

(declare-fun bs!1200382 () Bool)

(assert (= bs!1200382 (and d!1662335 d!1662261)))

(assert (=> bs!1200382 (= (= lambda!256163 (ite c!884536 lambda!256116 lambda!256117)) (= lambda!256186 lambda!256154))))

(declare-fun bs!1200383 () Bool)

(assert (= bs!1200383 (and d!1662335 d!1662269)))

(assert (=> bs!1200383 (= (= lambda!256163 lambda!256115) (= lambda!256186 lambda!256160))))

(declare-fun bs!1200384 () Bool)

(assert (= bs!1200384 (and d!1662335 d!1662255)))

(assert (=> bs!1200384 (not (= lambda!256186 lambda!256151))))

(declare-fun bs!1200385 () Bool)

(assert (= bs!1200385 (and d!1662335 b!5137298)))

(assert (=> bs!1200385 (not (= lambda!256186 lambda!256116))))

(declare-fun bs!1200386 () Bool)

(assert (= bs!1200386 (and d!1662335 d!1662235)))

(assert (=> bs!1200386 (not (= lambda!256186 lambda!256115))))

(declare-fun bs!1200387 () Bool)

(assert (= bs!1200387 (and d!1662335 d!1662273)))

(assert (=> bs!1200387 (= (= lambda!256163 lambda!256115) (= lambda!256186 lambda!256163))))

(assert (=> d!1662335 true))

(assert (=> d!1662335 (< (dynLambda!23755 order!26939 lambda!256163) (dynLambda!23755 order!26939 lambda!256186))))

(assert (=> d!1662335 (= (exists!1758 lt!2119738 lambda!256163) (not (forall!13893 lt!2119738 lambda!256186)))))

(declare-fun bs!1200388 () Bool)

(assert (= bs!1200388 d!1662335))

(declare-fun m!6202744 () Bool)

(assert (=> bs!1200388 m!6202744))

(assert (=> d!1662273 d!1662335))

(declare-fun bs!1200389 () Bool)

(declare-fun d!1662337 () Bool)

(assert (= bs!1200389 (and d!1662337 b!5137299)))

(declare-fun lambda!256189 () Int)

(assert (=> bs!1200389 (not (= lambda!256189 lambda!256117))))

(declare-fun bs!1200390 () Bool)

(assert (= bs!1200390 (and d!1662337 d!1662261)))

(assert (=> bs!1200390 (= (= lambda!256115 (ite c!884536 lambda!256116 lambda!256117)) (= lambda!256189 lambda!256154))))

(declare-fun bs!1200391 () Bool)

(assert (= bs!1200391 (and d!1662337 d!1662269)))

(assert (=> bs!1200391 (= lambda!256189 lambda!256160)))

(declare-fun bs!1200392 () Bool)

(assert (= bs!1200392 (and d!1662337 d!1662255)))

(assert (=> bs!1200392 (not (= lambda!256189 lambda!256151))))

(declare-fun bs!1200393 () Bool)

(assert (= bs!1200393 (and d!1662337 b!5137298)))

(assert (=> bs!1200393 (not (= lambda!256189 lambda!256116))))

(declare-fun bs!1200394 () Bool)

(assert (= bs!1200394 (and d!1662337 d!1662235)))

(assert (=> bs!1200394 (not (= lambda!256189 lambda!256115))))

(declare-fun bs!1200395 () Bool)

(assert (= bs!1200395 (and d!1662337 d!1662273)))

(assert (=> bs!1200395 (= lambda!256189 lambda!256163)))

(declare-fun bs!1200396 () Bool)

(assert (= bs!1200396 (and d!1662337 d!1662335)))

(assert (=> bs!1200396 (= (= lambda!256115 lambda!256163) (= lambda!256189 lambda!256186))))

(assert (=> d!1662337 true))

(assert (=> d!1662337 (< (dynLambda!23755 order!26939 lambda!256115) (dynLambda!23755 order!26939 lambda!256189))))

(assert (=> d!1662337 (not (exists!1758 lt!2119738 lambda!256189))))

(assert (=> d!1662337 true))

(declare-fun _$98!252 () Unit!151015)

(assert (=> d!1662337 (= (choose!38023 lt!2119738 lambda!256115) _$98!252)))

(declare-fun bs!1200397 () Bool)

(assert (= bs!1200397 d!1662337))

(declare-fun m!6202746 () Bool)

(assert (=> bs!1200397 m!6202746))

(assert (=> d!1662273 d!1662337))

(declare-fun d!1662339 () Bool)

(declare-fun res!2188218 () Bool)

(declare-fun e!3204576 () Bool)

(assert (=> d!1662339 (=> res!2188218 e!3204576)))

(assert (=> d!1662339 (= res!2188218 (is-Nil!59654 lt!2119738))))

(assert (=> d!1662339 (= (forall!13893 lt!2119738 lambda!256115) e!3204576)))

(declare-fun b!5137616 () Bool)

(declare-fun e!3204577 () Bool)

(assert (=> b!5137616 (= e!3204576 e!3204577)))

(declare-fun res!2188219 () Bool)

(assert (=> b!5137616 (=> (not res!2188219) (not e!3204577))))

(assert (=> b!5137616 (= res!2188219 (dynLambda!23761 lambda!256115 (h!66102 lt!2119738)))))

(declare-fun b!5137617 () Bool)

(assert (=> b!5137617 (= e!3204577 (forall!13893 (t!372807 lt!2119738) lambda!256115))))

(assert (= (and d!1662339 (not res!2188218)) b!5137616))

(assert (= (and b!5137616 res!2188219) b!5137617))

(declare-fun b_lambda!200173 () Bool)

(assert (=> (not b_lambda!200173) (not b!5137616)))

(declare-fun m!6202748 () Bool)

(assert (=> b!5137616 m!6202748))

(declare-fun m!6202750 () Bool)

(assert (=> b!5137617 m!6202750))

(assert (=> d!1662273 d!1662339))

(declare-fun d!1662341 () Bool)

(declare-fun c!884642 () Bool)

(assert (=> d!1662341 (= c!884642 (and (is-ElementMatch!14418 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) (= (c!884524 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) a!1252)))))

(declare-fun e!3204581 () (Set Context!7604))

(assert (=> d!1662341 (= (derivationStepZipperDown!121 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))) (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) a!1252) e!3204581)))

(declare-fun b!5137618 () Bool)

(declare-fun c!884640 () Bool)

(declare-fun e!3204579 () Bool)

(assert (=> b!5137618 (= c!884640 e!3204579)))

(declare-fun res!2188220 () Bool)

(assert (=> b!5137618 (=> (not res!2188220) (not e!3204579))))

(assert (=> b!5137618 (= res!2188220 (is-Concat!23263 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))))))

(declare-fun e!3204580 () (Set Context!7604))

(declare-fun e!3204582 () (Set Context!7604))

(assert (=> b!5137618 (= e!3204580 e!3204582)))

(declare-fun b!5137619 () Bool)

(declare-fun e!3204583 () (Set Context!7604))

(assert (=> b!5137619 (= e!3204583 (as set.empty (Set Context!7604)))))

(declare-fun bm!358340 () Bool)

(declare-fun call!358345 () (Set Context!7604))

(declare-fun call!358350 () (Set Context!7604))

(assert (=> bm!358340 (= call!358345 call!358350)))

(declare-fun b!5137620 () Bool)

(declare-fun e!3204578 () (Set Context!7604))

(assert (=> b!5137620 (= e!3204582 e!3204578)))

(declare-fun c!884643 () Bool)

(assert (=> b!5137620 (= c!884643 (is-Concat!23263 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))))))

(declare-fun b!5137621 () Bool)

(assert (=> b!5137621 (= e!3204583 call!358345)))

(declare-fun b!5137622 () Bool)

(declare-fun call!358347 () (Set Context!7604))

(assert (=> b!5137622 (= e!3204582 (set.union call!358347 call!358350))))

(declare-fun b!5137623 () Bool)

(assert (=> b!5137623 (= e!3204581 (set.insert (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) (as set.empty (Set Context!7604))))))

(declare-fun bm!358341 () Bool)

(declare-fun call!358349 () List!59776)

(declare-fun call!358348 () List!59776)

(assert (=> bm!358341 (= call!358349 call!358348)))

(declare-fun b!5137624 () Bool)

(declare-fun c!884639 () Bool)

(assert (=> b!5137624 (= c!884639 (is-Star!14418 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))))))

(assert (=> b!5137624 (= e!3204578 e!3204583)))

(declare-fun bm!358342 () Bool)

(declare-fun call!358346 () (Set Context!7604))

(assert (=> bm!358342 (= call!358350 call!358346)))

(declare-fun bm!358343 () Bool)

(declare-fun c!884641 () Bool)

(assert (=> bm!358343 (= call!358346 (derivationStepZipperDown!121 (ite c!884641 (regTwo!29349 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) (ite c!884640 (regTwo!29348 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) (ite c!884643 (regOne!29348 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) (reg!14747 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))))))) (ite (or c!884641 c!884640) (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) (Context!7605 call!358349)) a!1252))))

(declare-fun bm!358344 () Bool)

(assert (=> bm!358344 (= call!358348 ($colon$colon!1171 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))))) (ite (or c!884640 c!884643) (regTwo!29348 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))))))))

(declare-fun b!5137625 () Bool)

(assert (=> b!5137625 (= e!3204580 (set.union call!358347 call!358346))))

(declare-fun b!5137626 () Bool)

(assert (=> b!5137626 (= e!3204579 (nullable!4791 (regOne!29348 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))))))))

(declare-fun b!5137627 () Bool)

(assert (=> b!5137627 (= e!3204581 e!3204580)))

(assert (=> b!5137627 (= c!884641 (is-Union!14418 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))))))

(declare-fun bm!358345 () Bool)

(assert (=> bm!358345 (= call!358347 (derivationStepZipperDown!121 (ite c!884641 (regOne!29349 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) (regOne!29348 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))))) (ite c!884641 (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) (Context!7605 call!358348)) a!1252))))

(declare-fun b!5137628 () Bool)

(assert (=> b!5137628 (= e!3204578 call!358345)))

(assert (= (and d!1662341 c!884642) b!5137623))

(assert (= (and d!1662341 (not c!884642)) b!5137627))

(assert (= (and b!5137627 c!884641) b!5137625))

(assert (= (and b!5137627 (not c!884641)) b!5137618))

(assert (= (and b!5137618 res!2188220) b!5137626))

(assert (= (and b!5137618 c!884640) b!5137622))

(assert (= (and b!5137618 (not c!884640)) b!5137620))

(assert (= (and b!5137620 c!884643) b!5137628))

(assert (= (and b!5137620 (not c!884643)) b!5137624))

(assert (= (and b!5137624 c!884639) b!5137621))

(assert (= (and b!5137624 (not c!884639)) b!5137619))

(assert (= (or b!5137628 b!5137621) bm!358341))

(assert (= (or b!5137628 b!5137621) bm!358340))

(assert (= (or b!5137622 bm!358341) bm!358344))

(assert (= (or b!5137622 bm!358340) bm!358342))

(assert (= (or b!5137625 b!5137622) bm!358345))

(assert (= (or b!5137625 bm!358342) bm!358343))

(declare-fun m!6202752 () Bool)

(assert (=> bm!358344 m!6202752))

(declare-fun m!6202754 () Bool)

(assert (=> bm!358343 m!6202754))

(declare-fun m!6202756 () Bool)

(assert (=> b!5137626 m!6202756))

(declare-fun m!6202758 () Bool)

(assert (=> bm!358345 m!6202758))

(declare-fun m!6202760 () Bool)

(assert (=> b!5137623 m!6202760))

(assert (=> bm!358299 d!1662341))

(declare-fun d!1662343 () Bool)

(declare-fun c!884647 () Bool)

(assert (=> d!1662343 (= c!884647 (and (is-ElementMatch!14418 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))) (= (c!884524 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))) a!1252)))))

(declare-fun e!3204587 () (Set Context!7604))

(assert (=> d!1662343 (= (derivationStepZipperDown!121 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74)))) (ite c!884584 (Context!7605 (t!372805 (exprs!4302 ctx!74))) (Context!7605 call!358301)) a!1252) e!3204587)))

(declare-fun b!5137629 () Bool)

(declare-fun c!884645 () Bool)

(declare-fun e!3204585 () Bool)

(assert (=> b!5137629 (= c!884645 e!3204585)))

(declare-fun res!2188221 () Bool)

(assert (=> b!5137629 (=> (not res!2188221) (not e!3204585))))

(assert (=> b!5137629 (= res!2188221 (is-Concat!23263 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))))))

(declare-fun e!3204586 () (Set Context!7604))

(declare-fun e!3204588 () (Set Context!7604))

(assert (=> b!5137629 (= e!3204586 e!3204588)))

(declare-fun b!5137630 () Bool)

(declare-fun e!3204589 () (Set Context!7604))

(assert (=> b!5137630 (= e!3204589 (as set.empty (Set Context!7604)))))

(declare-fun bm!358346 () Bool)

(declare-fun call!358351 () (Set Context!7604))

(declare-fun call!358356 () (Set Context!7604))

(assert (=> bm!358346 (= call!358351 call!358356)))

(declare-fun b!5137631 () Bool)

(declare-fun e!3204584 () (Set Context!7604))

(assert (=> b!5137631 (= e!3204588 e!3204584)))

(declare-fun c!884648 () Bool)

(assert (=> b!5137631 (= c!884648 (is-Concat!23263 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))))))

(declare-fun b!5137632 () Bool)

(assert (=> b!5137632 (= e!3204589 call!358351)))

(declare-fun b!5137633 () Bool)

(declare-fun call!358353 () (Set Context!7604))

(assert (=> b!5137633 (= e!3204588 (set.union call!358353 call!358356))))

(declare-fun b!5137634 () Bool)

(assert (=> b!5137634 (= e!3204587 (set.insert (ite c!884584 (Context!7605 (t!372805 (exprs!4302 ctx!74))) (Context!7605 call!358301)) (as set.empty (Set Context!7604))))))

(declare-fun bm!358347 () Bool)

(declare-fun call!358355 () List!59776)

(declare-fun call!358354 () List!59776)

(assert (=> bm!358347 (= call!358355 call!358354)))

(declare-fun b!5137635 () Bool)

(declare-fun c!884644 () Bool)

(assert (=> b!5137635 (= c!884644 (is-Star!14418 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))))))

(assert (=> b!5137635 (= e!3204584 e!3204589)))

(declare-fun bm!358348 () Bool)

(declare-fun call!358352 () (Set Context!7604))

(assert (=> bm!358348 (= call!358356 call!358352)))

(declare-fun c!884646 () Bool)

(declare-fun bm!358349 () Bool)

(assert (=> bm!358349 (= call!358352 (derivationStepZipperDown!121 (ite c!884646 (regTwo!29349 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))) (ite c!884645 (regTwo!29348 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))) (ite c!884648 (regOne!29348 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))) (reg!14747 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74)))))))) (ite (or c!884646 c!884645) (ite c!884584 (Context!7605 (t!372805 (exprs!4302 ctx!74))) (Context!7605 call!358301)) (Context!7605 call!358355)) a!1252))))

(declare-fun bm!358350 () Bool)

(assert (=> bm!358350 (= call!358354 ($colon$colon!1171 (exprs!4302 (ite c!884584 (Context!7605 (t!372805 (exprs!4302 ctx!74))) (Context!7605 call!358301))) (ite (or c!884645 c!884648) (regTwo!29348 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))) (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74)))))))))

(declare-fun b!5137636 () Bool)

(assert (=> b!5137636 (= e!3204586 (set.union call!358353 call!358352))))

(declare-fun b!5137637 () Bool)

(assert (=> b!5137637 (= e!3204585 (nullable!4791 (regOne!29348 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74)))))))))

(declare-fun b!5137638 () Bool)

(assert (=> b!5137638 (= e!3204587 e!3204586)))

(assert (=> b!5137638 (= c!884646 (is-Union!14418 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))))))

(declare-fun bm!358351 () Bool)

(assert (=> bm!358351 (= call!358353 (derivationStepZipperDown!121 (ite c!884646 (regOne!29349 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74))))) (regOne!29348 (ite c!884584 (regOne!29349 (h!66100 (exprs!4302 ctx!74))) (regOne!29348 (h!66100 (exprs!4302 ctx!74)))))) (ite c!884646 (ite c!884584 (Context!7605 (t!372805 (exprs!4302 ctx!74))) (Context!7605 call!358301)) (Context!7605 call!358354)) a!1252))))

(declare-fun b!5137639 () Bool)

(assert (=> b!5137639 (= e!3204584 call!358351)))

(assert (= (and d!1662343 c!884647) b!5137634))

(assert (= (and d!1662343 (not c!884647)) b!5137638))

(assert (= (and b!5137638 c!884646) b!5137636))

(assert (= (and b!5137638 (not c!884646)) b!5137629))

(assert (= (and b!5137629 res!2188221) b!5137637))

(assert (= (and b!5137629 c!884645) b!5137633))

(assert (= (and b!5137629 (not c!884645)) b!5137631))

(assert (= (and b!5137631 c!884648) b!5137639))

(assert (= (and b!5137631 (not c!884648)) b!5137635))

(assert (= (and b!5137635 c!884644) b!5137632))

(assert (= (and b!5137635 (not c!884644)) b!5137630))

(assert (= (or b!5137639 b!5137632) bm!358347))

(assert (= (or b!5137639 b!5137632) bm!358346))

(assert (= (or b!5137633 bm!358347) bm!358350))

(assert (= (or b!5137633 bm!358346) bm!358348))

(assert (= (or b!5137636 b!5137633) bm!358351))

(assert (= (or b!5137636 bm!358348) bm!358349))

(declare-fun m!6202762 () Bool)

(assert (=> bm!358350 m!6202762))

(declare-fun m!6202764 () Bool)

(assert (=> bm!358349 m!6202764))

(declare-fun m!6202766 () Bool)

(assert (=> b!5137637 m!6202766))

(declare-fun m!6202768 () Bool)

(assert (=> bm!358351 m!6202768))

(declare-fun m!6202770 () Bool)

(assert (=> b!5137634 m!6202770))

(assert (=> bm!358298 d!1662343))

(declare-fun d!1662345 () Bool)

(assert (=> d!1662345 (= (nullable!4791 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) (nullableFct!1312 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))))))

(declare-fun bs!1200398 () Bool)

(assert (= bs!1200398 d!1662345))

(declare-fun m!6202772 () Bool)

(assert (=> bs!1200398 m!6202772))

(assert (=> b!5137420 d!1662345))

(declare-fun d!1662347 () Bool)

(declare-fun c!884651 () Bool)

(assert (=> d!1662347 (= c!884651 (is-Nil!59654 lt!2119777))))

(declare-fun e!3204592 () (Set Context!7604))

(assert (=> d!1662347 (= (content!10584 lt!2119777) e!3204592)))

(declare-fun b!5137644 () Bool)

(assert (=> b!5137644 (= e!3204592 (as set.empty (Set Context!7604)))))

(declare-fun b!5137645 () Bool)

(assert (=> b!5137645 (= e!3204592 (set.union (set.insert (h!66102 lt!2119777) (as set.empty (Set Context!7604))) (content!10584 (t!372807 lt!2119777))))))

(assert (= (and d!1662347 c!884651) b!5137644))

(assert (= (and d!1662347 (not c!884651)) b!5137645))

(declare-fun m!6202774 () Bool)

(assert (=> b!5137645 m!6202774))

(declare-fun m!6202776 () Bool)

(assert (=> b!5137645 m!6202776))

(assert (=> b!5137423 d!1662347))

(declare-fun d!1662349 () Bool)

(assert (=> d!1662349 (= (nullable!4791 (regOne!29348 (h!66100 (exprs!4302 ctx!74)))) (nullableFct!1312 (regOne!29348 (h!66100 (exprs!4302 ctx!74)))))))

(declare-fun bs!1200399 () Bool)

(assert (= bs!1200399 d!1662349))

(declare-fun m!6202778 () Bool)

(assert (=> bs!1200399 m!6202778))

(assert (=> b!5137405 d!1662349))

(declare-fun b!5137646 () Bool)

(declare-fun e!3204594 () (Set Context!7604))

(declare-fun e!3204595 () (Set Context!7604))

(assert (=> b!5137646 (= e!3204594 e!3204595)))

(declare-fun c!884652 () Bool)

(assert (=> b!5137646 (= c!884652 (is-Cons!59652 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))))))))

(declare-fun b!5137647 () Bool)

(assert (=> b!5137647 (= e!3204595 (as set.empty (Set Context!7604)))))

(declare-fun b!5137648 () Bool)

(declare-fun call!358357 () (Set Context!7604))

(assert (=> b!5137648 (= e!3204594 (set.union call!358357 (derivationStepZipperUp!98 (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))))))) a!1252)))))

(declare-fun b!5137649 () Bool)

(assert (=> b!5137649 (= e!3204595 call!358357)))

(declare-fun b!5137650 () Bool)

(declare-fun e!3204593 () Bool)

(assert (=> b!5137650 (= e!3204593 (nullable!4791 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))))))))))

(declare-fun bm!358352 () Bool)

(assert (=> bm!358352 (= call!358357 (derivationStepZipperDown!121 (h!66100 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))))) (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74))))))))) a!1252))))

(declare-fun d!1662351 () Bool)

(declare-fun c!884653 () Bool)

(assert (=> d!1662351 (= c!884653 e!3204593)))

(declare-fun res!2188222 () Bool)

(assert (=> d!1662351 (=> (not res!2188222) (not e!3204593))))

(assert (=> d!1662351 (= res!2188222 (is-Cons!59652 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))))))))

(assert (=> d!1662351 (= (derivationStepZipperUp!98 (Context!7605 (t!372805 (exprs!4302 (Context!7605 (t!372805 (exprs!4302 ctx!74)))))) a!1252) e!3204594)))

(assert (= (and d!1662351 res!2188222) b!5137650))

(assert (= (and d!1662351 c!884653) b!5137648))

(assert (= (and d!1662351 (not c!884653)) b!5137646))

(assert (= (and b!5137646 c!884652) b!5137649))

(assert (= (and b!5137646 (not c!884652)) b!5137647))

(assert (= (or b!5137648 b!5137649) bm!358352))

(declare-fun m!6202780 () Bool)

(assert (=> b!5137648 m!6202780))

(declare-fun m!6202782 () Bool)

(assert (=> b!5137650 m!6202782))

(declare-fun m!6202784 () Bool)

(assert (=> bm!358352 m!6202784))

(assert (=> b!5137418 d!1662351))

(declare-fun bs!1200400 () Bool)

(declare-fun d!1662353 () Bool)

(assert (= bs!1200400 (and d!1662353 b!5137299)))

(declare-fun lambda!256190 () Int)

(assert (=> bs!1200400 (not (= lambda!256190 lambda!256117))))

(declare-fun bs!1200401 () Bool)

(assert (= bs!1200401 (and d!1662353 d!1662261)))

(assert (=> bs!1200401 (= (= lambda!256160 (ite c!884536 lambda!256116 lambda!256117)) (= lambda!256190 lambda!256154))))

(declare-fun bs!1200402 () Bool)

(assert (= bs!1200402 (and d!1662353 d!1662269)))

(assert (=> bs!1200402 (= (= lambda!256160 lambda!256115) (= lambda!256190 lambda!256160))))

(declare-fun bs!1200403 () Bool)

(assert (= bs!1200403 (and d!1662353 d!1662255)))

(assert (=> bs!1200403 (not (= lambda!256190 lambda!256151))))

(declare-fun bs!1200404 () Bool)

(assert (= bs!1200404 (and d!1662353 b!5137298)))

(assert (=> bs!1200404 (not (= lambda!256190 lambda!256116))))

(declare-fun bs!1200405 () Bool)

(assert (= bs!1200405 (and d!1662353 d!1662337)))

(assert (=> bs!1200405 (= (= lambda!256160 lambda!256115) (= lambda!256190 lambda!256189))))

(declare-fun bs!1200406 () Bool)

(assert (= bs!1200406 (and d!1662353 d!1662235)))

(assert (=> bs!1200406 (not (= lambda!256190 lambda!256115))))

(declare-fun bs!1200407 () Bool)

(assert (= bs!1200407 (and d!1662353 d!1662273)))

(assert (=> bs!1200407 (= (= lambda!256160 lambda!256115) (= lambda!256190 lambda!256163))))

(declare-fun bs!1200408 () Bool)

(assert (= bs!1200408 (and d!1662353 d!1662335)))

(assert (=> bs!1200408 (= (= lambda!256160 lambda!256163) (= lambda!256190 lambda!256186))))

(assert (=> d!1662353 true))

(assert (=> d!1662353 (< (dynLambda!23755 order!26939 lambda!256160) (dynLambda!23755 order!26939 lambda!256190))))

(assert (=> d!1662353 (= (exists!1758 lt!2119733 lambda!256160) (not (forall!13893 lt!2119733 lambda!256190)))))

(declare-fun bs!1200409 () Bool)

(assert (= bs!1200409 d!1662353))

(declare-fun m!6202786 () Bool)

(assert (=> bs!1200409 m!6202786))

(assert (=> d!1662269 d!1662353))

(declare-fun bs!1200410 () Bool)

(declare-fun d!1662355 () Bool)

(assert (= bs!1200410 (and d!1662355 d!1662353)))

(declare-fun lambda!256193 () Int)

(assert (=> bs!1200410 (= (= lambda!256115 lambda!256160) (= lambda!256193 lambda!256190))))

(declare-fun bs!1200411 () Bool)

(assert (= bs!1200411 (and d!1662355 b!5137299)))

(assert (=> bs!1200411 (not (= lambda!256193 lambda!256117))))

(declare-fun bs!1200412 () Bool)

(assert (= bs!1200412 (and d!1662355 d!1662261)))

(assert (=> bs!1200412 (= (= lambda!256115 (ite c!884536 lambda!256116 lambda!256117)) (= lambda!256193 lambda!256154))))

(declare-fun bs!1200413 () Bool)

(assert (= bs!1200413 (and d!1662355 d!1662269)))

(assert (=> bs!1200413 (= lambda!256193 lambda!256160)))

(declare-fun bs!1200414 () Bool)

(assert (= bs!1200414 (and d!1662355 d!1662255)))

(assert (=> bs!1200414 (not (= lambda!256193 lambda!256151))))

(declare-fun bs!1200415 () Bool)

(assert (= bs!1200415 (and d!1662355 b!5137298)))

(assert (=> bs!1200415 (not (= lambda!256193 lambda!256116))))

(declare-fun bs!1200416 () Bool)

(assert (= bs!1200416 (and d!1662355 d!1662337)))

(assert (=> bs!1200416 (= lambda!256193 lambda!256189)))

(declare-fun bs!1200417 () Bool)

(assert (= bs!1200417 (and d!1662355 d!1662235)))

(assert (=> bs!1200417 (not (= lambda!256193 lambda!256115))))

(declare-fun bs!1200418 () Bool)

(assert (= bs!1200418 (and d!1662355 d!1662273)))

(assert (=> bs!1200418 (= lambda!256193 lambda!256163)))

(declare-fun bs!1200419 () Bool)

(assert (= bs!1200419 (and d!1662355 d!1662335)))

(assert (=> bs!1200419 (= (= lambda!256115 lambda!256163) (= lambda!256193 lambda!256186))))

(assert (=> d!1662355 true))

(assert (=> d!1662355 (< (dynLambda!23755 order!26939 lambda!256115) (dynLambda!23755 order!26939 lambda!256193))))

(assert (=> d!1662355 (exists!1758 lt!2119733 lambda!256193)))

(assert (=> d!1662355 true))

(declare-fun _$97!185 () Unit!151015)

(assert (=> d!1662355 (= (choose!38022 lt!2119733 lambda!256115) _$97!185)))

(declare-fun bs!1200420 () Bool)

(assert (= bs!1200420 d!1662355))

(declare-fun m!6202788 () Bool)

(assert (=> bs!1200420 m!6202788))

(assert (=> d!1662269 d!1662355))

(declare-fun d!1662357 () Bool)

(declare-fun res!2188223 () Bool)

(declare-fun e!3204598 () Bool)

(assert (=> d!1662357 (=> res!2188223 e!3204598)))

(assert (=> d!1662357 (= res!2188223 (is-Nil!59654 lt!2119733))))

(assert (=> d!1662357 (= (forall!13893 lt!2119733 lambda!256115) e!3204598)))

(declare-fun b!5137651 () Bool)

(declare-fun e!3204599 () Bool)

(assert (=> b!5137651 (= e!3204598 e!3204599)))

(declare-fun res!2188224 () Bool)

(assert (=> b!5137651 (=> (not res!2188224) (not e!3204599))))

(assert (=> b!5137651 (= res!2188224 (dynLambda!23761 lambda!256115 (h!66102 lt!2119733)))))

(declare-fun b!5137652 () Bool)

(assert (=> b!5137652 (= e!3204599 (forall!13893 (t!372807 lt!2119733) lambda!256115))))

(assert (= (and d!1662357 (not res!2188223)) b!5137651))

(assert (= (and b!5137651 res!2188224) b!5137652))

(declare-fun b_lambda!200175 () Bool)

(assert (=> (not b_lambda!200175) (not b!5137651)))

(declare-fun m!6202790 () Bool)

(assert (=> b!5137651 m!6202790))

(declare-fun m!6202792 () Bool)

(assert (=> b!5137652 m!6202792))

(assert (=> d!1662269 d!1662357))

(declare-fun d!1662359 () Bool)

(declare-fun res!2188225 () Bool)

(declare-fun e!3204600 () Bool)

(assert (=> d!1662359 (=> res!2188225 e!3204600)))

(assert (=> d!1662359 (= res!2188225 (is-Nil!59654 (toList!8374 (derivationStepZipperUp!98 ctx!74 a!1252))))))

(assert (=> d!1662359 (= (forall!13893 (toList!8374 (derivationStepZipperUp!98 ctx!74 a!1252)) lambda!256115) e!3204600)))

(declare-fun b!5137653 () Bool)

(declare-fun e!3204601 () Bool)

(assert (=> b!5137653 (= e!3204600 e!3204601)))

(declare-fun res!2188226 () Bool)

(assert (=> b!5137653 (=> (not res!2188226) (not e!3204601))))

(assert (=> b!5137653 (= res!2188226 (dynLambda!23761 lambda!256115 (h!66102 (toList!8374 (derivationStepZipperUp!98 ctx!74 a!1252)))))))

(declare-fun b!5137654 () Bool)

(assert (=> b!5137654 (= e!3204601 (forall!13893 (t!372807 (toList!8374 (derivationStepZipperUp!98 ctx!74 a!1252))) lambda!256115))))

(assert (= (and d!1662359 (not res!2188225)) b!5137653))

(assert (= (and b!5137653 res!2188226) b!5137654))

(declare-fun b_lambda!200177 () Bool)

(assert (=> (not b_lambda!200177) (not b!5137653)))

(declare-fun m!6202794 () Bool)

(assert (=> b!5137653 m!6202794))

(declare-fun m!6202796 () Bool)

(assert (=> b!5137654 m!6202796))

(assert (=> d!1662259 d!1662359))

(assert (=> d!1662259 d!1662277))

(declare-fun res!2188229 () Bool)

(declare-fun d!1662361 () Bool)

(assert (=> d!1662361 (= res!2188229 (forall!13893 (toList!8374 (derivationStepZipperUp!98 ctx!74 a!1252)) lambda!256115))))

(assert (=> d!1662361 true))

(assert (=> d!1662361 (= (choose!38021 (derivationStepZipperUp!98 ctx!74 a!1252) lambda!256115) res!2188229)))

(declare-fun bs!1200421 () Bool)

(assert (= bs!1200421 d!1662361))

(assert (=> bs!1200421 m!6202492))

(assert (=> bs!1200421 m!6202518))

(assert (=> bs!1200421 m!6202518))

(assert (=> bs!1200421 m!6202568))

(assert (=> d!1662259 d!1662361))

(declare-fun b!5137657 () Bool)

(declare-fun e!3204602 () Bool)

(declare-fun tp!1432754 () Bool)

(assert (=> b!5137657 (= e!3204602 tp!1432754)))

(declare-fun b!5137658 () Bool)

(declare-fun tp!1432752 () Bool)

(declare-fun tp!1432755 () Bool)

(assert (=> b!5137658 (= e!3204602 (and tp!1432752 tp!1432755))))

(declare-fun b!5137655 () Bool)

(assert (=> b!5137655 (= e!3204602 tp_is_empty!37989)))

(declare-fun b!5137656 () Bool)

(declare-fun tp!1432756 () Bool)

(declare-fun tp!1432753 () Bool)

(assert (=> b!5137656 (= e!3204602 (and tp!1432756 tp!1432753))))

(assert (=> b!5137437 (= tp!1432722 e!3204602)))

(assert (= (and b!5137437 (is-ElementMatch!14418 (regOne!29349 (h!66100 (exprs!4302 ctx!74))))) b!5137655))

(assert (= (and b!5137437 (is-Concat!23263 (regOne!29349 (h!66100 (exprs!4302 ctx!74))))) b!5137656))

(assert (= (and b!5137437 (is-Star!14418 (regOne!29349 (h!66100 (exprs!4302 ctx!74))))) b!5137657))

(assert (= (and b!5137437 (is-Union!14418 (regOne!29349 (h!66100 (exprs!4302 ctx!74))))) b!5137658))

(declare-fun b!5137661 () Bool)

(declare-fun e!3204603 () Bool)

(declare-fun tp!1432759 () Bool)

(assert (=> b!5137661 (= e!3204603 tp!1432759)))

(declare-fun b!5137662 () Bool)

(declare-fun tp!1432757 () Bool)

(declare-fun tp!1432760 () Bool)

(assert (=> b!5137662 (= e!3204603 (and tp!1432757 tp!1432760))))

(declare-fun b!5137659 () Bool)

(assert (=> b!5137659 (= e!3204603 tp_is_empty!37989)))

(declare-fun b!5137660 () Bool)

(declare-fun tp!1432761 () Bool)

(declare-fun tp!1432758 () Bool)

(assert (=> b!5137660 (= e!3204603 (and tp!1432761 tp!1432758))))

(assert (=> b!5137437 (= tp!1432725 e!3204603)))

(assert (= (and b!5137437 (is-ElementMatch!14418 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))))) b!5137659))

(assert (= (and b!5137437 (is-Concat!23263 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))))) b!5137660))

(assert (= (and b!5137437 (is-Star!14418 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))))) b!5137661))

(assert (= (and b!5137437 (is-Union!14418 (regTwo!29349 (h!66100 (exprs!4302 ctx!74))))) b!5137662))

(declare-fun b!5137665 () Bool)

(declare-fun e!3204604 () Bool)

(declare-fun tp!1432764 () Bool)

(assert (=> b!5137665 (= e!3204604 tp!1432764)))

(declare-fun b!5137666 () Bool)

(declare-fun tp!1432762 () Bool)

(declare-fun tp!1432765 () Bool)

(assert (=> b!5137666 (= e!3204604 (and tp!1432762 tp!1432765))))

(declare-fun b!5137663 () Bool)

(assert (=> b!5137663 (= e!3204604 tp_is_empty!37989)))

(declare-fun b!5137664 () Bool)

(declare-fun tp!1432766 () Bool)

(declare-fun tp!1432763 () Bool)

(assert (=> b!5137664 (= e!3204604 (and tp!1432766 tp!1432763))))

(assert (=> b!5137436 (= tp!1432724 e!3204604)))

(assert (= (and b!5137436 (is-ElementMatch!14418 (reg!14747 (h!66100 (exprs!4302 ctx!74))))) b!5137663))

(assert (= (and b!5137436 (is-Concat!23263 (reg!14747 (h!66100 (exprs!4302 ctx!74))))) b!5137664))

(assert (= (and b!5137436 (is-Star!14418 (reg!14747 (h!66100 (exprs!4302 ctx!74))))) b!5137665))

(assert (= (and b!5137436 (is-Union!14418 (reg!14747 (h!66100 (exprs!4302 ctx!74))))) b!5137666))

(declare-fun b!5137669 () Bool)

(declare-fun e!3204605 () Bool)

(declare-fun tp!1432769 () Bool)

(assert (=> b!5137669 (= e!3204605 tp!1432769)))

(declare-fun b!5137670 () Bool)

(declare-fun tp!1432767 () Bool)

(declare-fun tp!1432770 () Bool)

(assert (=> b!5137670 (= e!3204605 (and tp!1432767 tp!1432770))))

(declare-fun b!5137667 () Bool)

(assert (=> b!5137667 (= e!3204605 tp_is_empty!37989)))

(declare-fun b!5137668 () Bool)

(declare-fun tp!1432771 () Bool)

(declare-fun tp!1432768 () Bool)

(assert (=> b!5137668 (= e!3204605 (and tp!1432771 tp!1432768))))

(assert (=> b!5137438 (= tp!1432727 e!3204605)))

(assert (= (and b!5137438 (is-ElementMatch!14418 (h!66100 (t!372805 (exprs!4302 ctx!74))))) b!5137667))

(assert (= (and b!5137438 (is-Concat!23263 (h!66100 (t!372805 (exprs!4302 ctx!74))))) b!5137668))

(assert (= (and b!5137438 (is-Star!14418 (h!66100 (t!372805 (exprs!4302 ctx!74))))) b!5137669))

(assert (= (and b!5137438 (is-Union!14418 (h!66100 (t!372805 (exprs!4302 ctx!74))))) b!5137670))

(declare-fun b!5137671 () Bool)

(declare-fun e!3204606 () Bool)

(declare-fun tp!1432772 () Bool)

(declare-fun tp!1432773 () Bool)

(assert (=> b!5137671 (= e!3204606 (and tp!1432772 tp!1432773))))

(assert (=> b!5137438 (= tp!1432728 e!3204606)))

(assert (= (and b!5137438 (is-Cons!59652 (t!372805 (t!372805 (exprs!4302 ctx!74))))) b!5137671))

(declare-fun b!5137674 () Bool)

(declare-fun e!3204607 () Bool)

(declare-fun tp!1432776 () Bool)

(assert (=> b!5137674 (= e!3204607 tp!1432776)))

(declare-fun b!5137675 () Bool)

(declare-fun tp!1432774 () Bool)

(declare-fun tp!1432777 () Bool)

(assert (=> b!5137675 (= e!3204607 (and tp!1432774 tp!1432777))))

(declare-fun b!5137672 () Bool)

(assert (=> b!5137672 (= e!3204607 tp_is_empty!37989)))

(declare-fun b!5137673 () Bool)

(declare-fun tp!1432778 () Bool)

(declare-fun tp!1432775 () Bool)

(assert (=> b!5137673 (= e!3204607 (and tp!1432778 tp!1432775))))

(assert (=> b!5137435 (= tp!1432726 e!3204607)))

(assert (= (and b!5137435 (is-ElementMatch!14418 (regOne!29348 (h!66100 (exprs!4302 ctx!74))))) b!5137672))

(assert (= (and b!5137435 (is-Concat!23263 (regOne!29348 (h!66100 (exprs!4302 ctx!74))))) b!5137673))

(assert (= (and b!5137435 (is-Star!14418 (regOne!29348 (h!66100 (exprs!4302 ctx!74))))) b!5137674))

(assert (= (and b!5137435 (is-Union!14418 (regOne!29348 (h!66100 (exprs!4302 ctx!74))))) b!5137675))

(declare-fun b!5137678 () Bool)

(declare-fun e!3204608 () Bool)

(declare-fun tp!1432781 () Bool)

(assert (=> b!5137678 (= e!3204608 tp!1432781)))

(declare-fun b!5137679 () Bool)

(declare-fun tp!1432779 () Bool)

(declare-fun tp!1432782 () Bool)

(assert (=> b!5137679 (= e!3204608 (and tp!1432779 tp!1432782))))

(declare-fun b!5137676 () Bool)

(assert (=> b!5137676 (= e!3204608 tp_is_empty!37989)))

(declare-fun b!5137677 () Bool)

(declare-fun tp!1432783 () Bool)

(declare-fun tp!1432780 () Bool)

(assert (=> b!5137677 (= e!3204608 (and tp!1432783 tp!1432780))))

(assert (=> b!5137435 (= tp!1432723 e!3204608)))

(assert (= (and b!5137435 (is-ElementMatch!14418 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))))) b!5137676))

(assert (= (and b!5137435 (is-Concat!23263 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))))) b!5137677))

(assert (= (and b!5137435 (is-Star!14418 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))))) b!5137678))

(assert (= (and b!5137435 (is-Union!14418 (regTwo!29348 (h!66100 (exprs!4302 ctx!74))))) b!5137679))

(declare-fun b_lambda!200179 () Bool)

(assert (= b_lambda!200169 (or d!1662267 b_lambda!200179)))

(declare-fun bs!1200422 () Bool)

(declare-fun d!1662363 () Bool)

(assert (= bs!1200422 (and d!1662363 d!1662267)))

(assert (=> bs!1200422 (= (dynLambda!23757 lambda!256157 (h!66100 (exprs!4302 ctx!74))) (not (dynLambda!23757 lambda!256120 (h!66100 (exprs!4302 ctx!74)))))))

(declare-fun b_lambda!200193 () Bool)

(assert (=> (not b_lambda!200193) (not bs!1200422)))

(declare-fun m!6202798 () Bool)

(assert (=> bs!1200422 m!6202798))

(assert (=> b!5137578 d!1662363))

(declare-fun b_lambda!200181 () Bool)

(assert (= b_lambda!200177 (or d!1662235 b_lambda!200181)))

(declare-fun bs!1200423 () Bool)

(declare-fun d!1662365 () Bool)

(assert (= bs!1200423 (and d!1662365 d!1662235)))

(assert (=> bs!1200423 (= (dynLambda!23761 lambda!256115 (h!66102 (toList!8374 (derivationStepZipperUp!98 ctx!74 a!1252)))) (lostCause!1392 (h!66102 (toList!8374 (derivationStepZipperUp!98 ctx!74 a!1252)))))))

(declare-fun m!6202800 () Bool)

(assert (=> bs!1200423 m!6202800))

(assert (=> b!5137653 d!1662365))

(declare-fun b_lambda!200183 () Bool)

(assert (= b_lambda!200171 (or d!1662255 b_lambda!200183)))

(declare-fun bs!1200424 () Bool)

(declare-fun d!1662367 () Bool)

(assert (= bs!1200424 (and d!1662367 d!1662255)))

(assert (=> bs!1200424 (= (dynLambda!23761 lambda!256151 lt!2119807) (not (lostCause!1392 lt!2119807)))))

(declare-fun m!6202802 () Bool)

(assert (=> bs!1200424 m!6202802))

(assert (=> d!1662333 d!1662367))

(declare-fun b_lambda!200185 () Bool)

(assert (= b_lambda!200167 (or d!1662243 b_lambda!200185)))

(declare-fun bs!1200425 () Bool)

(declare-fun d!1662369 () Bool)

(assert (= bs!1200425 (and d!1662369 d!1662243)))

(assert (=> bs!1200425 (= (dynLambda!23757 lambda!256123 (h!66100 (t!372805 (exprs!4302 ctx!74)))) (validRegex!6275 (h!66100 (t!372805 (exprs!4302 ctx!74)))))))

(declare-fun m!6202804 () Bool)

(assert (=> bs!1200425 m!6202804))

(assert (=> b!5137576 d!1662369))

(declare-fun b_lambda!200187 () Bool)

(assert (= b_lambda!200173 (or d!1662235 b_lambda!200187)))

(declare-fun bs!1200426 () Bool)

(declare-fun d!1662371 () Bool)

(assert (= bs!1200426 (and d!1662371 d!1662235)))

(assert (=> bs!1200426 (= (dynLambda!23761 lambda!256115 (h!66102 lt!2119738)) (lostCause!1392 (h!66102 lt!2119738)))))

(declare-fun m!6202806 () Bool)

(assert (=> bs!1200426 m!6202806))

(assert (=> b!5137616 d!1662371))

(declare-fun b_lambda!200189 () Bool)

(assert (= b_lambda!200165 (or d!1662261 b_lambda!200189)))

(declare-fun bs!1200427 () Bool)

(declare-fun d!1662373 () Bool)

(assert (= bs!1200427 (and d!1662373 d!1662261)))

(assert (=> bs!1200427 (= (dynLambda!23761 lambda!256154 (h!66102 (ite c!884536 lt!2119733 lt!2119738))) (not (dynLambda!23761 (ite c!884536 lambda!256116 lambda!256117) (h!66102 (ite c!884536 lt!2119733 lt!2119738)))))))

(declare-fun b_lambda!200195 () Bool)

(assert (=> (not b_lambda!200195) (not bs!1200427)))

(declare-fun m!6202808 () Bool)

(assert (=> bs!1200427 m!6202808))

(assert (=> b!5137536 d!1662373))

(declare-fun b_lambda!200191 () Bool)

(assert (= b_lambda!200175 (or d!1662235 b_lambda!200191)))

(declare-fun bs!1200428 () Bool)

(declare-fun d!1662375 () Bool)

(assert (= bs!1200428 (and d!1662375 d!1662235)))

(assert (=> bs!1200428 (= (dynLambda!23761 lambda!256115 (h!66102 lt!2119733)) (lostCause!1392 (h!66102 lt!2119733)))))

(declare-fun m!6202810 () Bool)

(assert (=> bs!1200428 m!6202810))

(assert (=> b!5137651 d!1662375))

(push 1)

(assert (not b!5137577))

(assert (not b!5137662))

(assert (not d!1662329))

(assert (not b!5137679))

(assert (not b!5137677))

(assert (not b!5137626))

(assert (not d!1662333))

(assert (not bm!358350))

(assert (not bs!1200425))

(assert (not b!5137594))

(assert (not b!5137645))

(assert (not bm!358337))

(assert (not b_lambda!200179))

(assert (not b_lambda!200183))

(assert (not b!5137660))

(assert (not bs!1200424))

(assert (not d!1662325))

(assert (not b_lambda!200195))

(assert (not b!5137637))

(assert (not b!5137665))

(assert (not d!1662345))

(assert (not b!5137537))

(assert (not d!1662323))

(assert (not b_lambda!200193))

(assert (not d!1662361))

(assert (not bm!358344))

(assert (not b!5137593))

(assert (not bm!358352))

(assert (not b!5137661))

(assert (not b!5137612))

(assert (not d!1662315))

(assert (not b!5137666))

(assert (not b!5137670))

(assert (not bm!358343))

(assert (not b!5137658))

(assert (not b!5137648))

(assert (not b!5137610))

(assert (not d!1662337))

(assert (not b!5137664))

(assert (not bm!358351))

(assert (not b!5137673))

(assert (not b!5137669))

(assert (not b_lambda!200181))

(assert (not bm!358345))

(assert (not b!5137675))

(assert (not b!5137674))

(assert tp_is_empty!37989)

(assert (not d!1662349))

(assert (not b_lambda!200187))

(assert (not d!1662335))

(assert (not b!5137656))

(assert (not b!5137584))

(assert (not bs!1200428))

(assert (not b_lambda!200185))

(assert (not d!1662319))

(assert (not bm!358339))

(assert (not d!1662355))

(assert (not b!5137567))

(assert (not b_lambda!200191))

(assert (not d!1662353))

(assert (not bm!358329))

(assert (not bm!358328))

(assert (not b!5137678))

(assert (not bm!358349))

(assert (not b!5137652))

(assert (not b_lambda!200159))

(assert (not b!5137650))

(assert (not b!5137671))

(assert (not bm!358330))

(assert (not b!5137657))

(assert (not b!5137546))

(assert (not b!5137579))

(assert (not b!5137668))

(assert (not bs!1200426))

(assert (not bs!1200423))

(assert (not b!5137585))

(assert (not b_lambda!200189))

(assert (not b!5137617))

(assert (not b!5137654))

(assert (not b!5137592))

(assert (not d!1662331))

(assert (not b!5137609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

