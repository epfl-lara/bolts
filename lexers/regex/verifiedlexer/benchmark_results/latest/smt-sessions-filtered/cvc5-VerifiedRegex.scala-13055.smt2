; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715150 () Bool)

(assert start!715150)

(declare-fun b!7326394 () Bool)

(declare-fun e!4386872 () Bool)

(declare-fun tp!2080560 () Bool)

(assert (=> b!7326394 (= e!4386872 tp!2080560)))

(declare-fun res!2961215 () Bool)

(declare-fun e!4386875 () Bool)

(assert (=> start!715150 (=> (not res!2961215) (not e!4386875))))

(declare-datatypes ((C!38270 0))(
  ( (C!38271 (val!29495 Int)) )
))
(declare-datatypes ((Regex!18998 0))(
  ( (ElementMatch!18998 (c!1359941 C!38270)) (Concat!27843 (regOne!38508 Regex!18998) (regTwo!38508 Regex!18998)) (EmptyExpr!18998) (Star!18998 (reg!19327 Regex!18998)) (EmptyLang!18998) (Union!18998 (regOne!38509 Regex!18998) (regTwo!38509 Regex!18998)) )
))
(declare-datatypes ((List!71494 0))(
  ( (Nil!71370) (Cons!71370 (h!77818 Regex!18998) (t!385879 List!71494)) )
))
(declare-datatypes ((Context!15876 0))(
  ( (Context!15877 (exprs!8438 List!71494)) )
))
(declare-fun cWitness!35 () Context!15876)

(declare-fun lt!2606313 () (Set Context!15876))

(assert (=> start!715150 (= res!2961215 (set.member cWitness!35 lt!2606313))))

(declare-fun ct1!256 () Context!15876)

(declare-fun c!10305 () C!38270)

(declare-fun derivationStepZipperUp!2678 (Context!15876 C!38270) (Set Context!15876))

(assert (=> start!715150 (= lt!2606313 (derivationStepZipperUp!2678 ct1!256 c!10305))))

(assert (=> start!715150 e!4386875))

(declare-fun tp_is_empty!48241 () Bool)

(assert (=> start!715150 tp_is_empty!48241))

(declare-fun e!4386870 () Bool)

(declare-fun inv!90836 (Context!15876) Bool)

(assert (=> start!715150 (and (inv!90836 cWitness!35) e!4386870)))

(assert (=> start!715150 (and (inv!90836 ct1!256) e!4386872)))

(declare-fun ct2!352 () Context!15876)

(declare-fun e!4386873 () Bool)

(assert (=> start!715150 (and (inv!90836 ct2!352) e!4386873)))

(declare-fun b!7326395 () Bool)

(declare-fun tp!2080562 () Bool)

(assert (=> b!7326395 (= e!4386870 tp!2080562)))

(declare-fun b!7326396 () Bool)

(declare-fun e!4386868 () Bool)

(assert (=> b!7326396 (= e!4386875 e!4386868)))

(declare-fun res!2961213 () Bool)

(assert (=> b!7326396 (=> (not res!2961213) (not e!4386868))))

(assert (=> b!7326396 (= res!2961213 (is-Cons!71370 (exprs!8438 ct1!256)))))

(declare-fun lt!2606314 () List!71494)

(declare-fun ++!16822 (List!71494 List!71494) List!71494)

(assert (=> b!7326396 (= lt!2606314 (++!16822 (exprs!8438 ct1!256) (exprs!8438 ct2!352)))))

(declare-datatypes ((Unit!164961 0))(
  ( (Unit!164962) )
))
(declare-fun lt!2606306 () Unit!164961)

(declare-fun lambda!454125 () Int)

(declare-fun lemmaConcatPreservesForall!1679 (List!71494 List!71494 Int) Unit!164961)

(assert (=> b!7326396 (= lt!2606306 (lemmaConcatPreservesForall!1679 (exprs!8438 ct1!256) (exprs!8438 ct2!352) lambda!454125))))

(declare-fun b!7326397 () Bool)

(declare-fun res!2961216 () Bool)

(declare-fun e!4386876 () Bool)

(assert (=> b!7326397 (=> (not res!2961216) (not e!4386876))))

(declare-fun isEmpty!40916 (List!71494) Bool)

(assert (=> b!7326397 (= res!2961216 (not (isEmpty!40916 lt!2606314)))))

(declare-fun b!7326398 () Bool)

(declare-fun e!4386874 () Bool)

(assert (=> b!7326398 (= e!4386874 e!4386876)))

(declare-fun res!2961218 () Bool)

(assert (=> b!7326398 (=> (not res!2961218) (not e!4386876))))

(declare-fun lt!2606318 () (Set Context!15876))

(declare-fun lt!2606315 () (Set Context!15876))

(assert (=> b!7326398 (= res!2961218 (and (= lt!2606313 (set.union lt!2606315 lt!2606318)) (or (set.member cWitness!35 lt!2606315) (set.member cWitness!35 lt!2606318)) (not (set.member cWitness!35 lt!2606318))))))

(declare-fun lt!2606309 () Context!15876)

(assert (=> b!7326398 (= lt!2606318 (derivationStepZipperUp!2678 lt!2606309 c!10305))))

(declare-fun b!7326399 () Bool)

(declare-fun e!4386871 () Bool)

(assert (=> b!7326399 (= e!4386876 (not e!4386871))))

(declare-fun res!2961214 () Bool)

(assert (=> b!7326399 (=> res!2961214 e!4386871)))

(declare-fun lt!2606311 () Context!15876)

(declare-fun lt!2606305 () (Set Context!15876))

(assert (=> b!7326399 (= res!2961214 (not (set.member lt!2606311 lt!2606305)))))

(declare-fun lt!2606317 () Unit!164961)

(assert (=> b!7326399 (= lt!2606317 (lemmaConcatPreservesForall!1679 (exprs!8438 cWitness!35) (exprs!8438 ct2!352) lambda!454125))))

(declare-fun lt!2606307 () List!71494)

(declare-fun derivationStepZipperDown!2829 (Regex!18998 Context!15876 C!38270) (Set Context!15876))

(assert (=> b!7326399 (set.member lt!2606311 (derivationStepZipperDown!2829 (h!77818 (exprs!8438 ct1!256)) (Context!15877 (++!16822 lt!2606307 (exprs!8438 ct2!352))) c!10305))))

(assert (=> b!7326399 (= lt!2606311 (Context!15877 (++!16822 (exprs!8438 cWitness!35) (exprs!8438 ct2!352))))))

(declare-fun lt!2606310 () Unit!164961)

(assert (=> b!7326399 (= lt!2606310 (lemmaConcatPreservesForall!1679 lt!2606307 (exprs!8438 ct2!352) lambda!454125))))

(declare-fun lt!2606316 () Unit!164961)

(assert (=> b!7326399 (= lt!2606316 (lemmaConcatPreservesForall!1679 (exprs!8438 cWitness!35) (exprs!8438 ct2!352) lambda!454125))))

(declare-fun lt!2606308 () Unit!164961)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!11 (Regex!18998 Context!15876 Context!15876 Context!15876 C!38270) Unit!164961)

(assert (=> b!7326399 (= lt!2606308 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!11 (h!77818 (exprs!8438 ct1!256)) lt!2606309 ct2!352 cWitness!35 c!10305))))

(declare-fun tail!14687 (List!71494) List!71494)

(assert (=> b!7326399 (= lt!2606305 (derivationStepZipperDown!2829 (h!77818 (exprs!8438 ct1!256)) (Context!15877 (tail!14687 lt!2606314)) c!10305))))

(declare-fun b!7326400 () Bool)

(declare-fun res!2961217 () Bool)

(assert (=> b!7326400 (=> (not res!2961217) (not e!4386868))))

(assert (=> b!7326400 (= res!2961217 (not (isEmpty!40916 (exprs!8438 ct1!256))))))

(declare-fun b!7326401 () Bool)

(declare-fun e!4386869 () Bool)

(declare-fun forall!17850 (List!71494 Int) Bool)

(assert (=> b!7326401 (= e!4386869 (forall!17850 (exprs!8438 ct2!352) lambda!454125))))

(declare-fun b!7326402 () Bool)

(declare-fun tp!2080561 () Bool)

(assert (=> b!7326402 (= e!4386873 tp!2080561)))

(declare-fun b!7326403 () Bool)

(assert (=> b!7326403 (= e!4386868 e!4386874)))

(declare-fun res!2961220 () Bool)

(assert (=> b!7326403 (=> (not res!2961220) (not e!4386874))))

(declare-fun nullable!8102 (Regex!18998) Bool)

(assert (=> b!7326403 (= res!2961220 (nullable!8102 (h!77818 (exprs!8438 ct1!256))))))

(assert (=> b!7326403 (= lt!2606315 (derivationStepZipperDown!2829 (h!77818 (exprs!8438 ct1!256)) lt!2606309 c!10305))))

(assert (=> b!7326403 (= lt!2606309 (Context!15877 lt!2606307))))

(assert (=> b!7326403 (= lt!2606307 (tail!14687 (exprs!8438 ct1!256)))))

(declare-fun b!7326404 () Bool)

(assert (=> b!7326404 (= e!4386871 e!4386869)))

(declare-fun res!2961219 () Bool)

(assert (=> b!7326404 (=> res!2961219 e!4386869)))

(assert (=> b!7326404 (= res!2961219 (not (forall!17850 (exprs!8438 ct1!256) lambda!454125)))))

(declare-fun lt!2606312 () Unit!164961)

(assert (=> b!7326404 (= lt!2606312 (lemmaConcatPreservesForall!1679 (exprs!8438 cWitness!35) (exprs!8438 ct2!352) lambda!454125))))

(assert (= (and start!715150 res!2961215) b!7326396))

(assert (= (and b!7326396 res!2961213) b!7326400))

(assert (= (and b!7326400 res!2961217) b!7326403))

(assert (= (and b!7326403 res!2961220) b!7326398))

(assert (= (and b!7326398 res!2961218) b!7326397))

(assert (= (and b!7326397 res!2961216) b!7326399))

(assert (= (and b!7326399 (not res!2961214)) b!7326404))

(assert (= (and b!7326404 (not res!2961219)) b!7326401))

(assert (= start!715150 b!7326395))

(assert (= start!715150 b!7326394))

(assert (= start!715150 b!7326402))

(declare-fun m!7992334 () Bool)

(assert (=> b!7326400 m!7992334))

(declare-fun m!7992336 () Bool)

(assert (=> b!7326404 m!7992336))

(declare-fun m!7992338 () Bool)

(assert (=> b!7326404 m!7992338))

(declare-fun m!7992340 () Bool)

(assert (=> b!7326399 m!7992340))

(declare-fun m!7992342 () Bool)

(assert (=> b!7326399 m!7992342))

(declare-fun m!7992344 () Bool)

(assert (=> b!7326399 m!7992344))

(declare-fun m!7992346 () Bool)

(assert (=> b!7326399 m!7992346))

(declare-fun m!7992348 () Bool)

(assert (=> b!7326399 m!7992348))

(assert (=> b!7326399 m!7992338))

(declare-fun m!7992350 () Bool)

(assert (=> b!7326399 m!7992350))

(assert (=> b!7326399 m!7992338))

(declare-fun m!7992352 () Bool)

(assert (=> b!7326399 m!7992352))

(declare-fun m!7992354 () Bool)

(assert (=> b!7326399 m!7992354))

(declare-fun m!7992356 () Bool)

(assert (=> b!7326399 m!7992356))

(declare-fun m!7992358 () Bool)

(assert (=> b!7326397 m!7992358))

(declare-fun m!7992360 () Bool)

(assert (=> b!7326398 m!7992360))

(declare-fun m!7992362 () Bool)

(assert (=> b!7326398 m!7992362))

(declare-fun m!7992364 () Bool)

(assert (=> b!7326398 m!7992364))

(declare-fun m!7992366 () Bool)

(assert (=> b!7326403 m!7992366))

(declare-fun m!7992368 () Bool)

(assert (=> b!7326403 m!7992368))

(declare-fun m!7992370 () Bool)

(assert (=> b!7326403 m!7992370))

(declare-fun m!7992372 () Bool)

(assert (=> b!7326396 m!7992372))

(declare-fun m!7992374 () Bool)

(assert (=> b!7326396 m!7992374))

(declare-fun m!7992376 () Bool)

(assert (=> start!715150 m!7992376))

(declare-fun m!7992378 () Bool)

(assert (=> start!715150 m!7992378))

(declare-fun m!7992380 () Bool)

(assert (=> start!715150 m!7992380))

(declare-fun m!7992382 () Bool)

(assert (=> start!715150 m!7992382))

(declare-fun m!7992384 () Bool)

(assert (=> start!715150 m!7992384))

(declare-fun m!7992386 () Bool)

(assert (=> b!7326401 m!7992386))

(push 1)

(assert (not b!7326401))

(assert (not b!7326399))

(assert (not b!7326404))

(assert tp_is_empty!48241)

(assert (not b!7326395))

(assert (not b!7326403))

(assert (not start!715150))

(assert (not b!7326402))

(assert (not b!7326398))

(assert (not b!7326397))

(assert (not b!7326394))

(assert (not b!7326396))

(assert (not b!7326400))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2275164 () Bool)

(assert (=> d!2275164 (= (isEmpty!40916 (exprs!8438 ct1!256)) (is-Nil!71370 (exprs!8438 ct1!256)))))

(assert (=> b!7326400 d!2275164))

(declare-fun b!7326448 () Bool)

(declare-fun e!4386912 () Bool)

(assert (=> b!7326448 (= e!4386912 (nullable!8102 (h!77818 (exprs!8438 ct1!256))))))

(declare-fun bm!666793 () Bool)

(declare-fun call!666798 () (Set Context!15876))

(assert (=> bm!666793 (= call!666798 (derivationStepZipperDown!2829 (h!77818 (exprs!8438 ct1!256)) (Context!15877 (t!385879 (exprs!8438 ct1!256))) c!10305))))

(declare-fun b!7326449 () Bool)

(declare-fun e!4386910 () (Set Context!15876))

(assert (=> b!7326449 (= e!4386910 call!666798)))

(declare-fun b!7326450 () Bool)

(declare-fun e!4386911 () (Set Context!15876))

(assert (=> b!7326450 (= e!4386911 e!4386910)))

(declare-fun c!1359947 () Bool)

(assert (=> b!7326450 (= c!1359947 (is-Cons!71370 (exprs!8438 ct1!256)))))

(declare-fun d!2275166 () Bool)

(declare-fun c!1359948 () Bool)

(assert (=> d!2275166 (= c!1359948 e!4386912)))

(declare-fun res!2961247 () Bool)

(assert (=> d!2275166 (=> (not res!2961247) (not e!4386912))))

(assert (=> d!2275166 (= res!2961247 (is-Cons!71370 (exprs!8438 ct1!256)))))

(assert (=> d!2275166 (= (derivationStepZipperUp!2678 ct1!256 c!10305) e!4386911)))

(declare-fun b!7326451 () Bool)

(assert (=> b!7326451 (= e!4386910 (as set.empty (Set Context!15876)))))

(declare-fun b!7326452 () Bool)

(assert (=> b!7326452 (= e!4386911 (set.union call!666798 (derivationStepZipperUp!2678 (Context!15877 (t!385879 (exprs!8438 ct1!256))) c!10305)))))

(assert (= (and d!2275166 res!2961247) b!7326448))

(assert (= (and d!2275166 c!1359948) b!7326452))

(assert (= (and d!2275166 (not c!1359948)) b!7326450))

(assert (= (and b!7326450 c!1359947) b!7326449))

(assert (= (and b!7326450 (not c!1359947)) b!7326451))

(assert (= (or b!7326452 b!7326449) bm!666793))

(assert (=> b!7326448 m!7992366))

(declare-fun m!7992442 () Bool)

(assert (=> bm!666793 m!7992442))

(declare-fun m!7992444 () Bool)

(assert (=> b!7326452 m!7992444))

(assert (=> start!715150 d!2275166))

(declare-fun bs!1916734 () Bool)

(declare-fun d!2275168 () Bool)

(assert (= bs!1916734 (and d!2275168 b!7326396)))

(declare-fun lambda!454141 () Int)

(assert (=> bs!1916734 (= lambda!454141 lambda!454125)))

(assert (=> d!2275168 (= (inv!90836 cWitness!35) (forall!17850 (exprs!8438 cWitness!35) lambda!454141))))

(declare-fun bs!1916735 () Bool)

(assert (= bs!1916735 d!2275168))

(declare-fun m!7992446 () Bool)

(assert (=> bs!1916735 m!7992446))

(assert (=> start!715150 d!2275168))

(declare-fun bs!1916736 () Bool)

(declare-fun d!2275170 () Bool)

(assert (= bs!1916736 (and d!2275170 b!7326396)))

(declare-fun lambda!454142 () Int)

(assert (=> bs!1916736 (= lambda!454142 lambda!454125)))

(declare-fun bs!1916737 () Bool)

(assert (= bs!1916737 (and d!2275170 d!2275168)))

(assert (=> bs!1916737 (= lambda!454142 lambda!454141)))

(assert (=> d!2275170 (= (inv!90836 ct1!256) (forall!17850 (exprs!8438 ct1!256) lambda!454142))))

(declare-fun bs!1916738 () Bool)

(assert (= bs!1916738 d!2275170))

(declare-fun m!7992448 () Bool)

(assert (=> bs!1916738 m!7992448))

(assert (=> start!715150 d!2275170))

(declare-fun bs!1916739 () Bool)

(declare-fun d!2275172 () Bool)

(assert (= bs!1916739 (and d!2275172 b!7326396)))

(declare-fun lambda!454143 () Int)

(assert (=> bs!1916739 (= lambda!454143 lambda!454125)))

(declare-fun bs!1916740 () Bool)

(assert (= bs!1916740 (and d!2275172 d!2275168)))

(assert (=> bs!1916740 (= lambda!454143 lambda!454141)))

(declare-fun bs!1916741 () Bool)

(assert (= bs!1916741 (and d!2275172 d!2275170)))

(assert (=> bs!1916741 (= lambda!454143 lambda!454142)))

(assert (=> d!2275172 (= (inv!90836 ct2!352) (forall!17850 (exprs!8438 ct2!352) lambda!454143))))

(declare-fun bs!1916742 () Bool)

(assert (= bs!1916742 d!2275172))

(declare-fun m!7992450 () Bool)

(assert (=> bs!1916742 m!7992450))

(assert (=> start!715150 d!2275172))

(declare-fun bs!1916743 () Bool)

(declare-fun d!2275174 () Bool)

(assert (= bs!1916743 (and d!2275174 b!7326396)))

(declare-fun lambda!454148 () Int)

(assert (=> bs!1916743 (= lambda!454148 lambda!454125)))

(declare-fun bs!1916744 () Bool)

(assert (= bs!1916744 (and d!2275174 d!2275168)))

(assert (=> bs!1916744 (= lambda!454148 lambda!454141)))

(declare-fun bs!1916745 () Bool)

(assert (= bs!1916745 (and d!2275174 d!2275170)))

(assert (=> bs!1916745 (= lambda!454148 lambda!454142)))

(declare-fun bs!1916746 () Bool)

(assert (= bs!1916746 (and d!2275174 d!2275172)))

(assert (=> bs!1916746 (= lambda!454148 lambda!454143)))

(assert (=> d!2275174 (set.member (Context!15877 (++!16822 (exprs!8438 cWitness!35) (exprs!8438 ct2!352))) (derivationStepZipperDown!2829 (h!77818 (exprs!8438 ct1!256)) (Context!15877 (++!16822 (exprs!8438 lt!2606309) (exprs!8438 ct2!352))) c!10305))))

(declare-fun lt!2606369 () Unit!164961)

(assert (=> d!2275174 (= lt!2606369 (lemmaConcatPreservesForall!1679 (exprs!8438 lt!2606309) (exprs!8438 ct2!352) lambda!454148))))

(declare-fun lt!2606368 () Unit!164961)

(assert (=> d!2275174 (= lt!2606368 (lemmaConcatPreservesForall!1679 (exprs!8438 cWitness!35) (exprs!8438 ct2!352) lambda!454148))))

(declare-fun lt!2606367 () Unit!164961)

(declare-fun choose!56978 (Regex!18998 Context!15876 Context!15876 Context!15876 C!38270) Unit!164961)

(assert (=> d!2275174 (= lt!2606367 (choose!56978 (h!77818 (exprs!8438 ct1!256)) lt!2606309 ct2!352 cWitness!35 c!10305))))

(declare-fun validRegex!9638 (Regex!18998) Bool)

(assert (=> d!2275174 (validRegex!9638 (h!77818 (exprs!8438 ct1!256)))))

(assert (=> d!2275174 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!11 (h!77818 (exprs!8438 ct1!256)) lt!2606309 ct2!352 cWitness!35 c!10305) lt!2606367)))

(declare-fun bs!1916747 () Bool)

(assert (= bs!1916747 d!2275174))

(declare-fun m!7992452 () Bool)

(assert (=> bs!1916747 m!7992452))

(declare-fun m!7992454 () Bool)

(assert (=> bs!1916747 m!7992454))

(declare-fun m!7992456 () Bool)

(assert (=> bs!1916747 m!7992456))

(declare-fun m!7992458 () Bool)

(assert (=> bs!1916747 m!7992458))

(declare-fun m!7992460 () Bool)

(assert (=> bs!1916747 m!7992460))

(assert (=> bs!1916747 m!7992344))

(declare-fun m!7992464 () Bool)

(assert (=> bs!1916747 m!7992464))

(declare-fun m!7992468 () Bool)

(assert (=> bs!1916747 m!7992468))

(assert (=> b!7326399 d!2275174))

(declare-fun d!2275178 () Bool)

(assert (=> d!2275178 (forall!17850 (++!16822 (exprs!8438 cWitness!35) (exprs!8438 ct2!352)) lambda!454125)))

(declare-fun lt!2606372 () Unit!164961)

(declare-fun choose!56979 (List!71494 List!71494 Int) Unit!164961)

(assert (=> d!2275178 (= lt!2606372 (choose!56979 (exprs!8438 cWitness!35) (exprs!8438 ct2!352) lambda!454125))))

(assert (=> d!2275178 (forall!17850 (exprs!8438 cWitness!35) lambda!454125)))

(assert (=> d!2275178 (= (lemmaConcatPreservesForall!1679 (exprs!8438 cWitness!35) (exprs!8438 ct2!352) lambda!454125) lt!2606372)))

(declare-fun bs!1916748 () Bool)

(assert (= bs!1916748 d!2275178))

(assert (=> bs!1916748 m!7992344))

(assert (=> bs!1916748 m!7992344))

(declare-fun m!7992470 () Bool)

(assert (=> bs!1916748 m!7992470))

(declare-fun m!7992472 () Bool)

(assert (=> bs!1916748 m!7992472))

(declare-fun m!7992474 () Bool)

(assert (=> bs!1916748 m!7992474))

(assert (=> b!7326399 d!2275178))

(declare-fun d!2275182 () Bool)

(assert (=> d!2275182 (forall!17850 (++!16822 lt!2606307 (exprs!8438 ct2!352)) lambda!454125)))

(declare-fun lt!2606373 () Unit!164961)

(assert (=> d!2275182 (= lt!2606373 (choose!56979 lt!2606307 (exprs!8438 ct2!352) lambda!454125))))

(assert (=> d!2275182 (forall!17850 lt!2606307 lambda!454125)))

(assert (=> d!2275182 (= (lemmaConcatPreservesForall!1679 lt!2606307 (exprs!8438 ct2!352) lambda!454125) lt!2606373)))

(declare-fun bs!1916749 () Bool)

(assert (= bs!1916749 d!2275182))

(assert (=> bs!1916749 m!7992354))

(assert (=> bs!1916749 m!7992354))

(declare-fun m!7992476 () Bool)

(assert (=> bs!1916749 m!7992476))

(declare-fun m!7992478 () Bool)

(assert (=> bs!1916749 m!7992478))

(declare-fun m!7992480 () Bool)

(assert (=> bs!1916749 m!7992480))

(assert (=> b!7326399 d!2275182))

(declare-fun c!1359968 () Bool)

(declare-fun bm!666809 () Bool)

(declare-fun call!666816 () (Set Context!15876))

(declare-fun call!666814 () List!71494)

(assert (=> bm!666809 (= call!666816 (derivationStepZipperDown!2829 (ite c!1359968 (regOne!38509 (h!77818 (exprs!8438 ct1!256))) (regOne!38508 (h!77818 (exprs!8438 ct1!256)))) (ite c!1359968 (Context!15877 (tail!14687 lt!2606314)) (Context!15877 call!666814)) c!10305))))

(declare-fun d!2275184 () Bool)

(declare-fun c!1359966 () Bool)

(assert (=> d!2275184 (= c!1359966 (and (is-ElementMatch!18998 (h!77818 (exprs!8438 ct1!256))) (= (c!1359941 (h!77818 (exprs!8438 ct1!256))) c!10305)))))

(declare-fun e!4386940 () (Set Context!15876))

(assert (=> d!2275184 (= (derivationStepZipperDown!2829 (h!77818 (exprs!8438 ct1!256)) (Context!15877 (tail!14687 lt!2606314)) c!10305) e!4386940)))

(declare-fun b!7326496 () Bool)

(declare-fun e!4386944 () (Set Context!15876))

(declare-fun call!666817 () (Set Context!15876))

(assert (=> b!7326496 (= e!4386944 (set.union call!666816 call!666817))))

(declare-fun b!7326497 () Bool)

(declare-fun e!4386945 () Bool)

(assert (=> b!7326497 (= e!4386945 (nullable!8102 (regOne!38508 (h!77818 (exprs!8438 ct1!256)))))))

(declare-fun bm!666810 () Bool)

(declare-fun c!1359967 () Bool)

(declare-fun c!1359969 () Bool)

(declare-fun call!666819 () List!71494)

(assert (=> bm!666810 (= call!666817 (derivationStepZipperDown!2829 (ite c!1359968 (regTwo!38509 (h!77818 (exprs!8438 ct1!256))) (ite c!1359969 (regTwo!38508 (h!77818 (exprs!8438 ct1!256))) (ite c!1359967 (regOne!38508 (h!77818 (exprs!8438 ct1!256))) (reg!19327 (h!77818 (exprs!8438 ct1!256)))))) (ite (or c!1359968 c!1359969) (Context!15877 (tail!14687 lt!2606314)) (Context!15877 call!666819)) c!10305))))

(declare-fun b!7326498 () Bool)

(declare-fun e!4386943 () (Set Context!15876))

(assert (=> b!7326498 (= e!4386943 (as set.empty (Set Context!15876)))))

(declare-fun bm!666811 () Bool)

(declare-fun call!666818 () (Set Context!15876))

(declare-fun call!666815 () (Set Context!15876))

(assert (=> bm!666811 (= call!666818 call!666815)))

(declare-fun bm!666812 () Bool)

(assert (=> bm!666812 (= call!666819 call!666814)))

(declare-fun b!7326499 () Bool)

(assert (=> b!7326499 (= c!1359969 e!4386945)))

(declare-fun res!2961259 () Bool)

(assert (=> b!7326499 (=> (not res!2961259) (not e!4386945))))

(assert (=> b!7326499 (= res!2961259 (is-Concat!27843 (h!77818 (exprs!8438 ct1!256))))))

(declare-fun e!4386941 () (Set Context!15876))

(assert (=> b!7326499 (= e!4386944 e!4386941)))

(declare-fun b!7326500 () Bool)

(declare-fun e!4386942 () (Set Context!15876))

(assert (=> b!7326500 (= e!4386941 e!4386942)))

(assert (=> b!7326500 (= c!1359967 (is-Concat!27843 (h!77818 (exprs!8438 ct1!256))))))

(declare-fun b!7326501 () Bool)

(assert (=> b!7326501 (= e!4386942 call!666818)))

(declare-fun bm!666813 () Bool)

(declare-fun $colon$colon!3032 (List!71494 Regex!18998) List!71494)

(assert (=> bm!666813 (= call!666814 ($colon$colon!3032 (exprs!8438 (Context!15877 (tail!14687 lt!2606314))) (ite (or c!1359969 c!1359967) (regTwo!38508 (h!77818 (exprs!8438 ct1!256))) (h!77818 (exprs!8438 ct1!256)))))))

(declare-fun b!7326502 () Bool)

(assert (=> b!7326502 (= e!4386941 (set.union call!666816 call!666815))))

(declare-fun b!7326503 () Bool)

(assert (=> b!7326503 (= e!4386943 call!666818)))

(declare-fun b!7326504 () Bool)

(declare-fun c!1359970 () Bool)

(assert (=> b!7326504 (= c!1359970 (is-Star!18998 (h!77818 (exprs!8438 ct1!256))))))

(assert (=> b!7326504 (= e!4386942 e!4386943)))

(declare-fun b!7326505 () Bool)

(assert (=> b!7326505 (= e!4386940 e!4386944)))

(assert (=> b!7326505 (= c!1359968 (is-Union!18998 (h!77818 (exprs!8438 ct1!256))))))

(declare-fun b!7326506 () Bool)

(assert (=> b!7326506 (= e!4386940 (set.insert (Context!15877 (tail!14687 lt!2606314)) (as set.empty (Set Context!15876))))))

(declare-fun bm!666814 () Bool)

(assert (=> bm!666814 (= call!666815 call!666817)))

(assert (= (and d!2275184 c!1359966) b!7326506))

(assert (= (and d!2275184 (not c!1359966)) b!7326505))

(assert (= (and b!7326505 c!1359968) b!7326496))

(assert (= (and b!7326505 (not c!1359968)) b!7326499))

(assert (= (and b!7326499 res!2961259) b!7326497))

(assert (= (and b!7326499 c!1359969) b!7326502))

(assert (= (and b!7326499 (not c!1359969)) b!7326500))

(assert (= (and b!7326500 c!1359967) b!7326501))

(assert (= (and b!7326500 (not c!1359967)) b!7326504))

(assert (= (and b!7326504 c!1359970) b!7326503))

(assert (= (and b!7326504 (not c!1359970)) b!7326498))

(assert (= (or b!7326501 b!7326503) bm!666812))

(assert (= (or b!7326501 b!7326503) bm!666811))

(assert (= (or b!7326502 bm!666811) bm!666814))

(assert (= (or b!7326502 bm!666812) bm!666813))

(assert (= (or b!7326496 bm!666814) bm!666810))

(assert (= (or b!7326496 b!7326502) bm!666809))

(declare-fun m!7992490 () Bool)

(assert (=> b!7326506 m!7992490))

(declare-fun m!7992492 () Bool)

(assert (=> bm!666810 m!7992492))

(declare-fun m!7992494 () Bool)

(assert (=> bm!666813 m!7992494))

(declare-fun m!7992496 () Bool)

(assert (=> b!7326497 m!7992496))

(declare-fun m!7992498 () Bool)

(assert (=> bm!666809 m!7992498))

(assert (=> b!7326399 d!2275184))

(declare-fun b!7326517 () Bool)

(declare-fun res!2961265 () Bool)

(declare-fun e!4386950 () Bool)

(assert (=> b!7326517 (=> (not res!2961265) (not e!4386950))))

(declare-fun lt!2606376 () List!71494)

(declare-fun size!41919 (List!71494) Int)

(assert (=> b!7326517 (= res!2961265 (= (size!41919 lt!2606376) (+ (size!41919 (exprs!8438 cWitness!35)) (size!41919 (exprs!8438 ct2!352)))))))

(declare-fun b!7326516 () Bool)

(declare-fun e!4386951 () List!71494)

(assert (=> b!7326516 (= e!4386951 (Cons!71370 (h!77818 (exprs!8438 cWitness!35)) (++!16822 (t!385879 (exprs!8438 cWitness!35)) (exprs!8438 ct2!352))))))

(declare-fun b!7326518 () Bool)

(assert (=> b!7326518 (= e!4386950 (or (not (= (exprs!8438 ct2!352) Nil!71370)) (= lt!2606376 (exprs!8438 cWitness!35))))))

(declare-fun b!7326515 () Bool)

(assert (=> b!7326515 (= e!4386951 (exprs!8438 ct2!352))))

(declare-fun d!2275190 () Bool)

(assert (=> d!2275190 e!4386950))

(declare-fun res!2961264 () Bool)

(assert (=> d!2275190 (=> (not res!2961264) (not e!4386950))))

(declare-fun content!14942 (List!71494) (Set Regex!18998))

(assert (=> d!2275190 (= res!2961264 (= (content!14942 lt!2606376) (set.union (content!14942 (exprs!8438 cWitness!35)) (content!14942 (exprs!8438 ct2!352)))))))

(assert (=> d!2275190 (= lt!2606376 e!4386951)))

(declare-fun c!1359973 () Bool)

(assert (=> d!2275190 (= c!1359973 (is-Nil!71370 (exprs!8438 cWitness!35)))))

(assert (=> d!2275190 (= (++!16822 (exprs!8438 cWitness!35) (exprs!8438 ct2!352)) lt!2606376)))

(assert (= (and d!2275190 c!1359973) b!7326515))

(assert (= (and d!2275190 (not c!1359973)) b!7326516))

(assert (= (and d!2275190 res!2961264) b!7326517))

(assert (= (and b!7326517 res!2961265) b!7326518))

(declare-fun m!7992500 () Bool)

(assert (=> b!7326517 m!7992500))

(declare-fun m!7992502 () Bool)

(assert (=> b!7326517 m!7992502))

(declare-fun m!7992504 () Bool)

(assert (=> b!7326517 m!7992504))

(declare-fun m!7992506 () Bool)

(assert (=> b!7326516 m!7992506))

(declare-fun m!7992508 () Bool)

(assert (=> d!2275190 m!7992508))

(declare-fun m!7992510 () Bool)

(assert (=> d!2275190 m!7992510))

(declare-fun m!7992512 () Bool)

(assert (=> d!2275190 m!7992512))

(assert (=> b!7326399 d!2275190))

(declare-fun c!1359976 () Bool)

(declare-fun call!666822 () (Set Context!15876))

(declare-fun bm!666815 () Bool)

(declare-fun call!666820 () List!71494)

(assert (=> bm!666815 (= call!666822 (derivationStepZipperDown!2829 (ite c!1359976 (regOne!38509 (h!77818 (exprs!8438 ct1!256))) (regOne!38508 (h!77818 (exprs!8438 ct1!256)))) (ite c!1359976 (Context!15877 (++!16822 lt!2606307 (exprs!8438 ct2!352))) (Context!15877 call!666820)) c!10305))))

(declare-fun d!2275192 () Bool)

(declare-fun c!1359974 () Bool)

(assert (=> d!2275192 (= c!1359974 (and (is-ElementMatch!18998 (h!77818 (exprs!8438 ct1!256))) (= (c!1359941 (h!77818 (exprs!8438 ct1!256))) c!10305)))))

(declare-fun e!4386952 () (Set Context!15876))

(assert (=> d!2275192 (= (derivationStepZipperDown!2829 (h!77818 (exprs!8438 ct1!256)) (Context!15877 (++!16822 lt!2606307 (exprs!8438 ct2!352))) c!10305) e!4386952)))

(declare-fun b!7326519 () Bool)

(declare-fun e!4386956 () (Set Context!15876))

(declare-fun call!666823 () (Set Context!15876))

(assert (=> b!7326519 (= e!4386956 (set.union call!666822 call!666823))))

(declare-fun b!7326520 () Bool)

(declare-fun e!4386957 () Bool)

(assert (=> b!7326520 (= e!4386957 (nullable!8102 (regOne!38508 (h!77818 (exprs!8438 ct1!256)))))))

(declare-fun bm!666816 () Bool)

(declare-fun call!666825 () List!71494)

(declare-fun c!1359977 () Bool)

(declare-fun c!1359975 () Bool)

(assert (=> bm!666816 (= call!666823 (derivationStepZipperDown!2829 (ite c!1359976 (regTwo!38509 (h!77818 (exprs!8438 ct1!256))) (ite c!1359977 (regTwo!38508 (h!77818 (exprs!8438 ct1!256))) (ite c!1359975 (regOne!38508 (h!77818 (exprs!8438 ct1!256))) (reg!19327 (h!77818 (exprs!8438 ct1!256)))))) (ite (or c!1359976 c!1359977) (Context!15877 (++!16822 lt!2606307 (exprs!8438 ct2!352))) (Context!15877 call!666825)) c!10305))))

(declare-fun b!7326521 () Bool)

(declare-fun e!4386955 () (Set Context!15876))

(assert (=> b!7326521 (= e!4386955 (as set.empty (Set Context!15876)))))

(declare-fun bm!666817 () Bool)

(declare-fun call!666824 () (Set Context!15876))

(declare-fun call!666821 () (Set Context!15876))

(assert (=> bm!666817 (= call!666824 call!666821)))

(declare-fun bm!666818 () Bool)

(assert (=> bm!666818 (= call!666825 call!666820)))

(declare-fun b!7326522 () Bool)

(assert (=> b!7326522 (= c!1359977 e!4386957)))

(declare-fun res!2961266 () Bool)

(assert (=> b!7326522 (=> (not res!2961266) (not e!4386957))))

(assert (=> b!7326522 (= res!2961266 (is-Concat!27843 (h!77818 (exprs!8438 ct1!256))))))

(declare-fun e!4386953 () (Set Context!15876))

(assert (=> b!7326522 (= e!4386956 e!4386953)))

(declare-fun b!7326523 () Bool)

(declare-fun e!4386954 () (Set Context!15876))

(assert (=> b!7326523 (= e!4386953 e!4386954)))

(assert (=> b!7326523 (= c!1359975 (is-Concat!27843 (h!77818 (exprs!8438 ct1!256))))))

(declare-fun b!7326524 () Bool)

(assert (=> b!7326524 (= e!4386954 call!666824)))

(declare-fun bm!666819 () Bool)

(assert (=> bm!666819 (= call!666820 ($colon$colon!3032 (exprs!8438 (Context!15877 (++!16822 lt!2606307 (exprs!8438 ct2!352)))) (ite (or c!1359977 c!1359975) (regTwo!38508 (h!77818 (exprs!8438 ct1!256))) (h!77818 (exprs!8438 ct1!256)))))))

(declare-fun b!7326525 () Bool)

(assert (=> b!7326525 (= e!4386953 (set.union call!666822 call!666821))))

(declare-fun b!7326526 () Bool)

(assert (=> b!7326526 (= e!4386955 call!666824)))

(declare-fun b!7326527 () Bool)

(declare-fun c!1359978 () Bool)

(assert (=> b!7326527 (= c!1359978 (is-Star!18998 (h!77818 (exprs!8438 ct1!256))))))

(assert (=> b!7326527 (= e!4386954 e!4386955)))

(declare-fun b!7326528 () Bool)

(assert (=> b!7326528 (= e!4386952 e!4386956)))

(assert (=> b!7326528 (= c!1359976 (is-Union!18998 (h!77818 (exprs!8438 ct1!256))))))

(declare-fun b!7326529 () Bool)

(assert (=> b!7326529 (= e!4386952 (set.insert (Context!15877 (++!16822 lt!2606307 (exprs!8438 ct2!352))) (as set.empty (Set Context!15876))))))

(declare-fun bm!666820 () Bool)

(assert (=> bm!666820 (= call!666821 call!666823)))

(assert (= (and d!2275192 c!1359974) b!7326529))

(assert (= (and d!2275192 (not c!1359974)) b!7326528))

(assert (= (and b!7326528 c!1359976) b!7326519))

(assert (= (and b!7326528 (not c!1359976)) b!7326522))

(assert (= (and b!7326522 res!2961266) b!7326520))

(assert (= (and b!7326522 c!1359977) b!7326525))

(assert (= (and b!7326522 (not c!1359977)) b!7326523))

(assert (= (and b!7326523 c!1359975) b!7326524))

(assert (= (and b!7326523 (not c!1359975)) b!7326527))

(assert (= (and b!7326527 c!1359978) b!7326526))

(assert (= (and b!7326527 (not c!1359978)) b!7326521))

(assert (= (or b!7326524 b!7326526) bm!666818))

(assert (= (or b!7326524 b!7326526) bm!666817))

(assert (= (or b!7326525 bm!666817) bm!666820))

(assert (= (or b!7326525 bm!666818) bm!666819))

(assert (= (or b!7326519 bm!666820) bm!666816))

(assert (= (or b!7326519 b!7326525) bm!666815))

(declare-fun m!7992514 () Bool)

(assert (=> b!7326529 m!7992514))

(declare-fun m!7992516 () Bool)

(assert (=> bm!666816 m!7992516))

(declare-fun m!7992518 () Bool)

(assert (=> bm!666819 m!7992518))

(assert (=> b!7326520 m!7992496))

(declare-fun m!7992520 () Bool)

(assert (=> bm!666815 m!7992520))

(assert (=> b!7326399 d!2275192))

(declare-fun b!7326532 () Bool)

(declare-fun res!2961268 () Bool)

(declare-fun e!4386958 () Bool)

(assert (=> b!7326532 (=> (not res!2961268) (not e!4386958))))

(declare-fun lt!2606377 () List!71494)

(assert (=> b!7326532 (= res!2961268 (= (size!41919 lt!2606377) (+ (size!41919 lt!2606307) (size!41919 (exprs!8438 ct2!352)))))))

(declare-fun b!7326531 () Bool)

(declare-fun e!4386959 () List!71494)

(assert (=> b!7326531 (= e!4386959 (Cons!71370 (h!77818 lt!2606307) (++!16822 (t!385879 lt!2606307) (exprs!8438 ct2!352))))))

(declare-fun b!7326533 () Bool)

(assert (=> b!7326533 (= e!4386958 (or (not (= (exprs!8438 ct2!352) Nil!71370)) (= lt!2606377 lt!2606307)))))

(declare-fun b!7326530 () Bool)

(assert (=> b!7326530 (= e!4386959 (exprs!8438 ct2!352))))

(declare-fun d!2275194 () Bool)

(assert (=> d!2275194 e!4386958))

(declare-fun res!2961267 () Bool)

(assert (=> d!2275194 (=> (not res!2961267) (not e!4386958))))

(assert (=> d!2275194 (= res!2961267 (= (content!14942 lt!2606377) (set.union (content!14942 lt!2606307) (content!14942 (exprs!8438 ct2!352)))))))

(assert (=> d!2275194 (= lt!2606377 e!4386959)))

(declare-fun c!1359979 () Bool)

(assert (=> d!2275194 (= c!1359979 (is-Nil!71370 lt!2606307))))

(assert (=> d!2275194 (= (++!16822 lt!2606307 (exprs!8438 ct2!352)) lt!2606377)))

(assert (= (and d!2275194 c!1359979) b!7326530))

(assert (= (and d!2275194 (not c!1359979)) b!7326531))

(assert (= (and d!2275194 res!2961267) b!7326532))

(assert (= (and b!7326532 res!2961268) b!7326533))

(declare-fun m!7992522 () Bool)

(assert (=> b!7326532 m!7992522))

(declare-fun m!7992524 () Bool)

(assert (=> b!7326532 m!7992524))

(assert (=> b!7326532 m!7992504))

(declare-fun m!7992526 () Bool)

(assert (=> b!7326531 m!7992526))

(declare-fun m!7992528 () Bool)

(assert (=> d!2275194 m!7992528))

(declare-fun m!7992530 () Bool)

(assert (=> d!2275194 m!7992530))

(assert (=> d!2275194 m!7992512))

(assert (=> b!7326399 d!2275194))

(declare-fun d!2275196 () Bool)

(assert (=> d!2275196 (= (tail!14687 lt!2606314) (t!385879 lt!2606314))))

(assert (=> b!7326399 d!2275196))

(declare-fun d!2275198 () Bool)

(declare-fun res!2961275 () Bool)

(declare-fun e!4386976 () Bool)

(assert (=> d!2275198 (=> res!2961275 e!4386976)))

(assert (=> d!2275198 (= res!2961275 (is-Nil!71370 (exprs!8438 ct1!256)))))

(assert (=> d!2275198 (= (forall!17850 (exprs!8438 ct1!256) lambda!454125) e!4386976)))

(declare-fun b!7326560 () Bool)

(declare-fun e!4386977 () Bool)

(assert (=> b!7326560 (= e!4386976 e!4386977)))

(declare-fun res!2961276 () Bool)

(assert (=> b!7326560 (=> (not res!2961276) (not e!4386977))))

(declare-fun dynLambda!29408 (Int Regex!18998) Bool)

(assert (=> b!7326560 (= res!2961276 (dynLambda!29408 lambda!454125 (h!77818 (exprs!8438 ct1!256))))))

(declare-fun b!7326561 () Bool)

(assert (=> b!7326561 (= e!4386977 (forall!17850 (t!385879 (exprs!8438 ct1!256)) lambda!454125))))

(assert (= (and d!2275198 (not res!2961275)) b!7326560))

(assert (= (and b!7326560 res!2961276) b!7326561))

(declare-fun b_lambda!283365 () Bool)

(assert (=> (not b_lambda!283365) (not b!7326560)))

(declare-fun m!7992532 () Bool)

(assert (=> b!7326560 m!7992532))

(declare-fun m!7992534 () Bool)

(assert (=> b!7326561 m!7992534))

(assert (=> b!7326404 d!2275198))

(assert (=> b!7326404 d!2275178))

(declare-fun b!7326562 () Bool)

(declare-fun e!4386980 () Bool)

(assert (=> b!7326562 (= e!4386980 (nullable!8102 (h!77818 (exprs!8438 lt!2606309))))))

(declare-fun bm!666821 () Bool)

(declare-fun call!666826 () (Set Context!15876))

(assert (=> bm!666821 (= call!666826 (derivationStepZipperDown!2829 (h!77818 (exprs!8438 lt!2606309)) (Context!15877 (t!385879 (exprs!8438 lt!2606309))) c!10305))))

(declare-fun b!7326563 () Bool)

(declare-fun e!4386978 () (Set Context!15876))

(assert (=> b!7326563 (= e!4386978 call!666826)))

(declare-fun b!7326564 () Bool)

(declare-fun e!4386979 () (Set Context!15876))

(assert (=> b!7326564 (= e!4386979 e!4386978)))

(declare-fun c!1359990 () Bool)

(assert (=> b!7326564 (= c!1359990 (is-Cons!71370 (exprs!8438 lt!2606309)))))

(declare-fun d!2275200 () Bool)

(declare-fun c!1359991 () Bool)

(assert (=> d!2275200 (= c!1359991 e!4386980)))

(declare-fun res!2961277 () Bool)

(assert (=> d!2275200 (=> (not res!2961277) (not e!4386980))))

(assert (=> d!2275200 (= res!2961277 (is-Cons!71370 (exprs!8438 lt!2606309)))))

(assert (=> d!2275200 (= (derivationStepZipperUp!2678 lt!2606309 c!10305) e!4386979)))

(declare-fun b!7326565 () Bool)

(assert (=> b!7326565 (= e!4386978 (as set.empty (Set Context!15876)))))

(declare-fun b!7326566 () Bool)

(assert (=> b!7326566 (= e!4386979 (set.union call!666826 (derivationStepZipperUp!2678 (Context!15877 (t!385879 (exprs!8438 lt!2606309))) c!10305)))))

(assert (= (and d!2275200 res!2961277) b!7326562))

(assert (= (and d!2275200 c!1359991) b!7326566))

(assert (= (and d!2275200 (not c!1359991)) b!7326564))

(assert (= (and b!7326564 c!1359990) b!7326563))

(assert (= (and b!7326564 (not c!1359990)) b!7326565))

(assert (= (or b!7326566 b!7326563) bm!666821))

(declare-fun m!7992536 () Bool)

(assert (=> b!7326562 m!7992536))

(declare-fun m!7992538 () Bool)

(assert (=> bm!666821 m!7992538))

(declare-fun m!7992540 () Bool)

(assert (=> b!7326566 m!7992540))

(assert (=> b!7326398 d!2275200))

(declare-fun d!2275202 () Bool)

(declare-fun nullableFct!3216 (Regex!18998) Bool)

(assert (=> d!2275202 (= (nullable!8102 (h!77818 (exprs!8438 ct1!256))) (nullableFct!3216 (h!77818 (exprs!8438 ct1!256))))))

(declare-fun bs!1916751 () Bool)

(assert (= bs!1916751 d!2275202))

(declare-fun m!7992542 () Bool)

(assert (=> bs!1916751 m!7992542))

(assert (=> b!7326403 d!2275202))

(declare-fun call!666831 () List!71494)

(declare-fun call!666833 () (Set Context!15876))

(declare-fun bm!666826 () Bool)

(declare-fun c!1359994 () Bool)

(assert (=> bm!666826 (= call!666833 (derivationStepZipperDown!2829 (ite c!1359994 (regOne!38509 (h!77818 (exprs!8438 ct1!256))) (regOne!38508 (h!77818 (exprs!8438 ct1!256)))) (ite c!1359994 lt!2606309 (Context!15877 call!666831)) c!10305))))

(declare-fun d!2275204 () Bool)

(declare-fun c!1359992 () Bool)

(assert (=> d!2275204 (= c!1359992 (and (is-ElementMatch!18998 (h!77818 (exprs!8438 ct1!256))) (= (c!1359941 (h!77818 (exprs!8438 ct1!256))) c!10305)))))

(declare-fun e!4386981 () (Set Context!15876))

(assert (=> d!2275204 (= (derivationStepZipperDown!2829 (h!77818 (exprs!8438 ct1!256)) lt!2606309 c!10305) e!4386981)))

(declare-fun b!7326567 () Bool)

(declare-fun e!4386985 () (Set Context!15876))

(declare-fun call!666834 () (Set Context!15876))

(assert (=> b!7326567 (= e!4386985 (set.union call!666833 call!666834))))

(declare-fun b!7326568 () Bool)

(declare-fun e!4386986 () Bool)

(assert (=> b!7326568 (= e!4386986 (nullable!8102 (regOne!38508 (h!77818 (exprs!8438 ct1!256)))))))

(declare-fun c!1359993 () Bool)

(declare-fun call!666836 () List!71494)

(declare-fun bm!666827 () Bool)

(declare-fun c!1359995 () Bool)

(assert (=> bm!666827 (= call!666834 (derivationStepZipperDown!2829 (ite c!1359994 (regTwo!38509 (h!77818 (exprs!8438 ct1!256))) (ite c!1359995 (regTwo!38508 (h!77818 (exprs!8438 ct1!256))) (ite c!1359993 (regOne!38508 (h!77818 (exprs!8438 ct1!256))) (reg!19327 (h!77818 (exprs!8438 ct1!256)))))) (ite (or c!1359994 c!1359995) lt!2606309 (Context!15877 call!666836)) c!10305))))

(declare-fun b!7326569 () Bool)

(declare-fun e!4386984 () (Set Context!15876))

(assert (=> b!7326569 (= e!4386984 (as set.empty (Set Context!15876)))))

(declare-fun bm!666828 () Bool)

(declare-fun call!666835 () (Set Context!15876))

(declare-fun call!666832 () (Set Context!15876))

(assert (=> bm!666828 (= call!666835 call!666832)))

(declare-fun bm!666829 () Bool)

(assert (=> bm!666829 (= call!666836 call!666831)))

(declare-fun b!7326570 () Bool)

(assert (=> b!7326570 (= c!1359995 e!4386986)))

(declare-fun res!2961278 () Bool)

(assert (=> b!7326570 (=> (not res!2961278) (not e!4386986))))

(assert (=> b!7326570 (= res!2961278 (is-Concat!27843 (h!77818 (exprs!8438 ct1!256))))))

(declare-fun e!4386982 () (Set Context!15876))

(assert (=> b!7326570 (= e!4386985 e!4386982)))

(declare-fun b!7326571 () Bool)

(declare-fun e!4386983 () (Set Context!15876))

(assert (=> b!7326571 (= e!4386982 e!4386983)))

(assert (=> b!7326571 (= c!1359993 (is-Concat!27843 (h!77818 (exprs!8438 ct1!256))))))

(declare-fun b!7326572 () Bool)

(assert (=> b!7326572 (= e!4386983 call!666835)))

(declare-fun bm!666830 () Bool)

(assert (=> bm!666830 (= call!666831 ($colon$colon!3032 (exprs!8438 lt!2606309) (ite (or c!1359995 c!1359993) (regTwo!38508 (h!77818 (exprs!8438 ct1!256))) (h!77818 (exprs!8438 ct1!256)))))))

(declare-fun b!7326573 () Bool)

(assert (=> b!7326573 (= e!4386982 (set.union call!666833 call!666832))))

(declare-fun b!7326574 () Bool)

(assert (=> b!7326574 (= e!4386984 call!666835)))

(declare-fun b!7326575 () Bool)

(declare-fun c!1359996 () Bool)

(assert (=> b!7326575 (= c!1359996 (is-Star!18998 (h!77818 (exprs!8438 ct1!256))))))

(assert (=> b!7326575 (= e!4386983 e!4386984)))

(declare-fun b!7326576 () Bool)

(assert (=> b!7326576 (= e!4386981 e!4386985)))

(assert (=> b!7326576 (= c!1359994 (is-Union!18998 (h!77818 (exprs!8438 ct1!256))))))

(declare-fun b!7326577 () Bool)

(assert (=> b!7326577 (= e!4386981 (set.insert lt!2606309 (as set.empty (Set Context!15876))))))

(declare-fun bm!666831 () Bool)

(assert (=> bm!666831 (= call!666832 call!666834)))

(assert (= (and d!2275204 c!1359992) b!7326577))

(assert (= (and d!2275204 (not c!1359992)) b!7326576))

(assert (= (and b!7326576 c!1359994) b!7326567))

(assert (= (and b!7326576 (not c!1359994)) b!7326570))

(assert (= (and b!7326570 res!2961278) b!7326568))

(assert (= (and b!7326570 c!1359995) b!7326573))

(assert (= (and b!7326570 (not c!1359995)) b!7326571))

(assert (= (and b!7326571 c!1359993) b!7326572))

(assert (= (and b!7326571 (not c!1359993)) b!7326575))

(assert (= (and b!7326575 c!1359996) b!7326574))

(assert (= (and b!7326575 (not c!1359996)) b!7326569))

(assert (= (or b!7326572 b!7326574) bm!666829))

(assert (= (or b!7326572 b!7326574) bm!666828))

(assert (= (or b!7326573 bm!666828) bm!666831))

(assert (= (or b!7326573 bm!666829) bm!666830))

(assert (= (or b!7326567 bm!666831) bm!666827))

(assert (= (or b!7326567 b!7326573) bm!666826))

(declare-fun m!7992544 () Bool)

(assert (=> b!7326577 m!7992544))

(declare-fun m!7992546 () Bool)

(assert (=> bm!666827 m!7992546))

(declare-fun m!7992548 () Bool)

(assert (=> bm!666830 m!7992548))

(assert (=> b!7326568 m!7992496))

(declare-fun m!7992550 () Bool)

(assert (=> bm!666826 m!7992550))

(assert (=> b!7326403 d!2275204))

(declare-fun d!2275206 () Bool)

(assert (=> d!2275206 (= (tail!14687 (exprs!8438 ct1!256)) (t!385879 (exprs!8438 ct1!256)))))

(assert (=> b!7326403 d!2275206))

(declare-fun d!2275208 () Bool)

(assert (=> d!2275208 (= (isEmpty!40916 lt!2606314) (is-Nil!71370 lt!2606314))))

(assert (=> b!7326397 d!2275208))

(declare-fun b!7326580 () Bool)

(declare-fun res!2961280 () Bool)

(declare-fun e!4386987 () Bool)

(assert (=> b!7326580 (=> (not res!2961280) (not e!4386987))))

(declare-fun lt!2606378 () List!71494)

(assert (=> b!7326580 (= res!2961280 (= (size!41919 lt!2606378) (+ (size!41919 (exprs!8438 ct1!256)) (size!41919 (exprs!8438 ct2!352)))))))

(declare-fun b!7326579 () Bool)

(declare-fun e!4386988 () List!71494)

(assert (=> b!7326579 (= e!4386988 (Cons!71370 (h!77818 (exprs!8438 ct1!256)) (++!16822 (t!385879 (exprs!8438 ct1!256)) (exprs!8438 ct2!352))))))

(declare-fun b!7326581 () Bool)

(assert (=> b!7326581 (= e!4386987 (or (not (= (exprs!8438 ct2!352) Nil!71370)) (= lt!2606378 (exprs!8438 ct1!256))))))

(declare-fun b!7326578 () Bool)

(assert (=> b!7326578 (= e!4386988 (exprs!8438 ct2!352))))

(declare-fun d!2275210 () Bool)

(assert (=> d!2275210 e!4386987))

(declare-fun res!2961279 () Bool)

(assert (=> d!2275210 (=> (not res!2961279) (not e!4386987))))

(assert (=> d!2275210 (= res!2961279 (= (content!14942 lt!2606378) (set.union (content!14942 (exprs!8438 ct1!256)) (content!14942 (exprs!8438 ct2!352)))))))

(assert (=> d!2275210 (= lt!2606378 e!4386988)))

(declare-fun c!1359997 () Bool)

(assert (=> d!2275210 (= c!1359997 (is-Nil!71370 (exprs!8438 ct1!256)))))

(assert (=> d!2275210 (= (++!16822 (exprs!8438 ct1!256) (exprs!8438 ct2!352)) lt!2606378)))

(assert (= (and d!2275210 c!1359997) b!7326578))

(assert (= (and d!2275210 (not c!1359997)) b!7326579))

(assert (= (and d!2275210 res!2961279) b!7326580))

(assert (= (and b!7326580 res!2961280) b!7326581))

(declare-fun m!7992552 () Bool)

(assert (=> b!7326580 m!7992552))

(declare-fun m!7992554 () Bool)

(assert (=> b!7326580 m!7992554))

(assert (=> b!7326580 m!7992504))

(declare-fun m!7992556 () Bool)

(assert (=> b!7326579 m!7992556))

(declare-fun m!7992558 () Bool)

(assert (=> d!2275210 m!7992558))

(declare-fun m!7992560 () Bool)

(assert (=> d!2275210 m!7992560))

(assert (=> d!2275210 m!7992512))

(assert (=> b!7326396 d!2275210))

(declare-fun d!2275212 () Bool)

(assert (=> d!2275212 (forall!17850 (++!16822 (exprs!8438 ct1!256) (exprs!8438 ct2!352)) lambda!454125)))

(declare-fun lt!2606379 () Unit!164961)

(assert (=> d!2275212 (= lt!2606379 (choose!56979 (exprs!8438 ct1!256) (exprs!8438 ct2!352) lambda!454125))))

(assert (=> d!2275212 (forall!17850 (exprs!8438 ct1!256) lambda!454125)))

(assert (=> d!2275212 (= (lemmaConcatPreservesForall!1679 (exprs!8438 ct1!256) (exprs!8438 ct2!352) lambda!454125) lt!2606379)))

(declare-fun bs!1916752 () Bool)

(assert (= bs!1916752 d!2275212))

(assert (=> bs!1916752 m!7992372))

(assert (=> bs!1916752 m!7992372))

(declare-fun m!7992562 () Bool)

(assert (=> bs!1916752 m!7992562))

(declare-fun m!7992564 () Bool)

(assert (=> bs!1916752 m!7992564))

(assert (=> bs!1916752 m!7992336))

(assert (=> b!7326396 d!2275212))

(declare-fun d!2275214 () Bool)

(declare-fun res!2961281 () Bool)

(declare-fun e!4386989 () Bool)

(assert (=> d!2275214 (=> res!2961281 e!4386989)))

(assert (=> d!2275214 (= res!2961281 (is-Nil!71370 (exprs!8438 ct2!352)))))

(assert (=> d!2275214 (= (forall!17850 (exprs!8438 ct2!352) lambda!454125) e!4386989)))

(declare-fun b!7326582 () Bool)

(declare-fun e!4386990 () Bool)

(assert (=> b!7326582 (= e!4386989 e!4386990)))

(declare-fun res!2961282 () Bool)

(assert (=> b!7326582 (=> (not res!2961282) (not e!4386990))))

(assert (=> b!7326582 (= res!2961282 (dynLambda!29408 lambda!454125 (h!77818 (exprs!8438 ct2!352))))))

(declare-fun b!7326583 () Bool)

(assert (=> b!7326583 (= e!4386990 (forall!17850 (t!385879 (exprs!8438 ct2!352)) lambda!454125))))

(assert (= (and d!2275214 (not res!2961281)) b!7326582))

(assert (= (and b!7326582 res!2961282) b!7326583))

(declare-fun b_lambda!283367 () Bool)

(assert (=> (not b_lambda!283367) (not b!7326582)))

(declare-fun m!7992566 () Bool)

(assert (=> b!7326582 m!7992566))

(declare-fun m!7992568 () Bool)

(assert (=> b!7326583 m!7992568))

(assert (=> b!7326401 d!2275214))

(declare-fun b!7326588 () Bool)

(declare-fun e!4386993 () Bool)

(declare-fun tp!2080576 () Bool)

(declare-fun tp!2080577 () Bool)

(assert (=> b!7326588 (= e!4386993 (and tp!2080576 tp!2080577))))

(assert (=> b!7326395 (= tp!2080562 e!4386993)))

(assert (= (and b!7326395 (is-Cons!71370 (exprs!8438 cWitness!35))) b!7326588))

(declare-fun b!7326589 () Bool)

(declare-fun e!4386994 () Bool)

(declare-fun tp!2080578 () Bool)

(declare-fun tp!2080579 () Bool)

(assert (=> b!7326589 (= e!4386994 (and tp!2080578 tp!2080579))))

(assert (=> b!7326394 (= tp!2080560 e!4386994)))

(assert (= (and b!7326394 (is-Cons!71370 (exprs!8438 ct1!256))) b!7326589))

(declare-fun b!7326590 () Bool)

(declare-fun e!4386995 () Bool)

(declare-fun tp!2080580 () Bool)

(declare-fun tp!2080581 () Bool)

(assert (=> b!7326590 (= e!4386995 (and tp!2080580 tp!2080581))))

(assert (=> b!7326402 (= tp!2080561 e!4386995)))

(assert (= (and b!7326402 (is-Cons!71370 (exprs!8438 ct2!352))) b!7326590))

(declare-fun b_lambda!283369 () Bool)

(assert (= b_lambda!283367 (or b!7326396 b_lambda!283369)))

(declare-fun bs!1916753 () Bool)

(declare-fun d!2275216 () Bool)

(assert (= bs!1916753 (and d!2275216 b!7326396)))

(assert (=> bs!1916753 (= (dynLambda!29408 lambda!454125 (h!77818 (exprs!8438 ct2!352))) (validRegex!9638 (h!77818 (exprs!8438 ct2!352))))))

(declare-fun m!7992570 () Bool)

(assert (=> bs!1916753 m!7992570))

(assert (=> b!7326582 d!2275216))

(declare-fun b_lambda!283371 () Bool)

(assert (= b_lambda!283365 (or b!7326396 b_lambda!283371)))

(declare-fun bs!1916754 () Bool)

(declare-fun d!2275218 () Bool)

(assert (= bs!1916754 (and d!2275218 b!7326396)))

(assert (=> bs!1916754 (= (dynLambda!29408 lambda!454125 (h!77818 (exprs!8438 ct1!256))) (validRegex!9638 (h!77818 (exprs!8438 ct1!256))))))

(assert (=> bs!1916754 m!7992456))

(assert (=> b!7326560 d!2275218))

(push 1)

(assert (not d!2275210))

(assert (not bs!1916753))

(assert tp_is_empty!48241)

(assert (not bm!666810))

(assert (not bm!666826))

(assert (not b!7326566))

(assert (not b!7326448))

(assert (not d!2275212))

(assert (not bm!666830))

(assert (not bm!666793))

(assert (not b!7326452))

(assert (not bm!666819))

(assert (not d!2275202))

(assert (not bm!666813))

(assert (not b!7326568))

(assert (not bm!666815))

(assert (not b!7326588))

(assert (not b!7326589))

(assert (not bm!666809))

(assert (not b!7326590))

(assert (not b!7326579))

(assert (not b_lambda!283369))

(assert (not d!2275174))

(assert (not d!2275194))

(assert (not d!2275170))

(assert (not b!7326517))

(assert (not d!2275168))

(assert (not b!7326497))

(assert (not d!2275190))

(assert (not bm!666821))

(assert (not bs!1916754))

(assert (not b!7326516))

(assert (not b!7326580))

(assert (not d!2275182))

(assert (not b!7326531))

(assert (not b!7326561))

(assert (not b!7326562))

(assert (not b!7326583))

(assert (not b!7326520))

(assert (not bm!666827))

(assert (not b_lambda!283371))

(assert (not d!2275172))

(assert (not d!2275178))

(assert (not b!7326532))

(assert (not bm!666816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

