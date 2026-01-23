; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668180 () Bool)

(assert start!668180)

(declare-fun b!6965204 () Bool)

(declare-fun e!4187500 () Bool)

(declare-datatypes ((C!34490 0))(
  ( (C!34491 (val!26947 Int)) )
))
(declare-datatypes ((Regex!17110 0))(
  ( (ElementMatch!17110 (c!1291402 C!34490)) (Concat!25955 (regOne!34732 Regex!17110) (regTwo!34732 Regex!17110)) (EmptyExpr!17110) (Star!17110 (reg!17439 Regex!17110)) (EmptyLang!17110) (Union!17110 (regOne!34733 Regex!17110) (regTwo!34733 Regex!17110)) )
))
(declare-fun r!13765 () Regex!17110)

(declare-datatypes ((List!66905 0))(
  ( (Nil!66781) (Cons!66781 (h!73229 C!34490) (t!380648 List!66905)) )
))
(declare-fun s!9351 () List!66905)

(declare-fun matchRSpec!4131 (Regex!17110 List!66905) Bool)

(assert (=> b!6965204 (= e!4187500 (matchRSpec!4131 (regTwo!34733 r!13765) s!9351))))

(declare-fun res!2841840 () Bool)

(declare-fun e!4187497 () Bool)

(assert (=> start!668180 (=> (not res!2841840) (not e!4187497))))

(declare-datatypes ((List!66906 0))(
  ( (Nil!66782) (Cons!66782 (h!73230 Regex!17110) (t!380649 List!66906)) )
))
(declare-fun l!9142 () List!66906)

(declare-fun lambda!397441 () Int)

(declare-fun forall!15981 (List!66906 Int) Bool)

(assert (=> start!668180 (= res!2841840 (forall!15981 l!9142 lambda!397441))))

(assert (=> start!668180 e!4187497))

(declare-fun e!4187499 () Bool)

(assert (=> start!668180 e!4187499))

(declare-fun e!4187495 () Bool)

(assert (=> start!668180 e!4187495))

(declare-fun e!4187498 () Bool)

(assert (=> start!668180 e!4187498))

(declare-fun b!6965205 () Bool)

(declare-fun res!2841837 () Bool)

(declare-fun e!4187496 () Bool)

(assert (=> b!6965205 (=> res!2841837 e!4187496)))

(declare-fun isEmpty!38987 (List!66906) Bool)

(declare-fun tail!13068 (List!66906) List!66906)

(assert (=> b!6965205 (= res!2841837 (isEmpty!38987 (tail!13068 l!9142)))))

(declare-fun b!6965206 () Bool)

(declare-fun lt!2479338 () Bool)

(assert (=> b!6965206 (= e!4187496 (= lt!2479338 e!4187500))))

(declare-fun res!2841841 () Bool)

(assert (=> b!6965206 (=> res!2841841 e!4187500)))

(assert (=> b!6965206 (= res!2841841 (matchRSpec!4131 (regOne!34733 r!13765) s!9351))))

(declare-fun b!6965207 () Bool)

(declare-fun tp!1920839 () Bool)

(assert (=> b!6965207 (= e!4187495 tp!1920839)))

(declare-fun b!6965208 () Bool)

(declare-fun res!2841838 () Bool)

(assert (=> b!6965208 (=> (not res!2841838) (not e!4187497))))

(declare-fun generalisedUnion!2585 (List!66906) Regex!17110)

(assert (=> b!6965208 (= res!2841838 (= r!13765 (generalisedUnion!2585 l!9142)))))

(declare-fun b!6965209 () Bool)

(declare-fun tp!1920833 () Bool)

(declare-fun tp!1920836 () Bool)

(assert (=> b!6965209 (= e!4187495 (and tp!1920833 tp!1920836))))

(declare-fun b!6965210 () Bool)

(assert (=> b!6965210 (= e!4187497 (not e!4187496))))

(declare-fun res!2841839 () Bool)

(assert (=> b!6965210 (=> res!2841839 e!4187496)))

(assert (=> b!6965210 (= res!2841839 (not (is-Union!17110 r!13765)))))

(assert (=> b!6965210 (= lt!2479338 (matchRSpec!4131 r!13765 s!9351))))

(declare-fun matchR!9216 (Regex!17110 List!66905) Bool)

(assert (=> b!6965210 (= lt!2479338 (matchR!9216 r!13765 s!9351))))

(declare-datatypes ((Unit!160880 0))(
  ( (Unit!160881) )
))
(declare-fun lt!2479339 () Unit!160880)

(declare-fun mainMatchTheorem!4125 (Regex!17110 List!66905) Unit!160880)

(assert (=> b!6965210 (= lt!2479339 (mainMatchTheorem!4125 r!13765 s!9351))))

(declare-fun b!6965211 () Bool)

(declare-fun tp!1920834 () Bool)

(declare-fun tp!1920835 () Bool)

(assert (=> b!6965211 (= e!4187495 (and tp!1920834 tp!1920835))))

(declare-fun b!6965212 () Bool)

(declare-fun res!2841842 () Bool)

(assert (=> b!6965212 (=> res!2841842 e!4187496)))

(assert (=> b!6965212 (= res!2841842 (isEmpty!38987 l!9142))))

(declare-fun b!6965213 () Bool)

(declare-fun tp_is_empty!43445 () Bool)

(declare-fun tp!1920838 () Bool)

(assert (=> b!6965213 (= e!4187498 (and tp_is_empty!43445 tp!1920838))))

(declare-fun b!6965214 () Bool)

(assert (=> b!6965214 (= e!4187495 tp_is_empty!43445)))

(declare-fun b!6965215 () Bool)

(declare-fun tp!1920832 () Bool)

(declare-fun tp!1920837 () Bool)

(assert (=> b!6965215 (= e!4187499 (and tp!1920832 tp!1920837))))

(assert (= (and start!668180 res!2841840) b!6965208))

(assert (= (and b!6965208 res!2841838) b!6965210))

(assert (= (and b!6965210 (not res!2841839)) b!6965212))

(assert (= (and b!6965212 (not res!2841842)) b!6965205))

(assert (= (and b!6965205 (not res!2841837)) b!6965206))

(assert (= (and b!6965206 (not res!2841841)) b!6965204))

(assert (= (and start!668180 (is-Cons!66782 l!9142)) b!6965215))

(assert (= (and start!668180 (is-ElementMatch!17110 r!13765)) b!6965214))

(assert (= (and start!668180 (is-Concat!25955 r!13765)) b!6965211))

(assert (= (and start!668180 (is-Star!17110 r!13765)) b!6965207))

(assert (= (and start!668180 (is-Union!17110 r!13765)) b!6965209))

(assert (= (and start!668180 (is-Cons!66781 s!9351)) b!6965213))

(declare-fun m!7657760 () Bool)

(assert (=> b!6965208 m!7657760))

(declare-fun m!7657762 () Bool)

(assert (=> b!6965206 m!7657762))

(declare-fun m!7657764 () Bool)

(assert (=> b!6965205 m!7657764))

(assert (=> b!6965205 m!7657764))

(declare-fun m!7657766 () Bool)

(assert (=> b!6965205 m!7657766))

(declare-fun m!7657768 () Bool)

(assert (=> b!6965212 m!7657768))

(declare-fun m!7657770 () Bool)

(assert (=> b!6965204 m!7657770))

(declare-fun m!7657772 () Bool)

(assert (=> start!668180 m!7657772))

(declare-fun m!7657774 () Bool)

(assert (=> b!6965210 m!7657774))

(declare-fun m!7657776 () Bool)

(assert (=> b!6965210 m!7657776))

(declare-fun m!7657778 () Bool)

(assert (=> b!6965210 m!7657778))

(push 1)

(assert (not b!6965204))

(assert (not b!6965206))

(assert (not b!6965211))

(assert (not b!6965213))

(assert (not b!6965208))

(assert (not b!6965207))

(assert (not b!6965212))

(assert (not b!6965209))

(assert (not start!668180))

(assert (not b!6965205))

(assert (not b!6965215))

(assert tp_is_empty!43445)

(assert (not b!6965210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6965284 () Bool)

(assert (=> b!6965284 true))

(assert (=> b!6965284 true))

(declare-fun bs!1858612 () Bool)

(declare-fun b!6965292 () Bool)

(assert (= bs!1858612 (and b!6965292 b!6965284)))

(declare-fun lambda!397450 () Int)

(declare-fun lambda!397449 () Int)

(assert (=> bs!1858612 (not (= lambda!397450 lambda!397449))))

(assert (=> b!6965292 true))

(assert (=> b!6965292 true))

(declare-fun e!4187537 () Bool)

(declare-fun call!632334 () Bool)

(assert (=> b!6965284 (= e!4187537 call!632334)))

(declare-fun b!6965285 () Bool)

(declare-fun c!1291414 () Bool)

(assert (=> b!6965285 (= c!1291414 (is-ElementMatch!17110 (regTwo!34733 r!13765)))))

(declare-fun e!4187540 () Bool)

(declare-fun e!4187539 () Bool)

(assert (=> b!6965285 (= e!4187540 e!4187539)))

(declare-fun bm!632329 () Bool)

(declare-fun c!1291413 () Bool)

(declare-fun Exists!4080 (Int) Bool)

(assert (=> bm!632329 (= call!632334 (Exists!4080 (ite c!1291413 lambda!397449 lambda!397450)))))

(declare-fun b!6965286 () Bool)

(declare-fun res!2841877 () Bool)

(assert (=> b!6965286 (=> res!2841877 e!4187537)))

(declare-fun call!632335 () Bool)

(assert (=> b!6965286 (= res!2841877 call!632335)))

(declare-fun e!4187541 () Bool)

(assert (=> b!6965286 (= e!4187541 e!4187537)))

(declare-fun b!6965287 () Bool)

(declare-fun e!4187542 () Bool)

(declare-fun e!4187538 () Bool)

(assert (=> b!6965287 (= e!4187542 e!4187538)))

(declare-fun res!2841879 () Bool)

(assert (=> b!6965287 (= res!2841879 (matchRSpec!4131 (regOne!34733 (regTwo!34733 r!13765)) s!9351))))

(assert (=> b!6965287 (=> res!2841879 e!4187538)))

(declare-fun b!6965288 () Bool)

(assert (=> b!6965288 (= e!4187542 e!4187541)))

(assert (=> b!6965288 (= c!1291413 (is-Star!17110 (regTwo!34733 r!13765)))))

(declare-fun b!6965289 () Bool)

(declare-fun e!4187543 () Bool)

(assert (=> b!6965289 (= e!4187543 call!632335)))

(declare-fun d!2170461 () Bool)

(declare-fun c!1291412 () Bool)

(assert (=> d!2170461 (= c!1291412 (is-EmptyExpr!17110 (regTwo!34733 r!13765)))))

(assert (=> d!2170461 (= (matchRSpec!4131 (regTwo!34733 r!13765) s!9351) e!4187543)))

(declare-fun bm!632330 () Bool)

(declare-fun isEmpty!38989 (List!66905) Bool)

(assert (=> bm!632330 (= call!632335 (isEmpty!38989 s!9351))))

(declare-fun b!6965290 () Bool)

(assert (=> b!6965290 (= e!4187539 (= s!9351 (Cons!66781 (c!1291402 (regTwo!34733 r!13765)) Nil!66781)))))

(declare-fun b!6965291 () Bool)

(assert (=> b!6965291 (= e!4187543 e!4187540)))

(declare-fun res!2841878 () Bool)

(assert (=> b!6965291 (= res!2841878 (not (is-EmptyLang!17110 (regTwo!34733 r!13765))))))

(assert (=> b!6965291 (=> (not res!2841878) (not e!4187540))))

(assert (=> b!6965292 (= e!4187541 call!632334)))

(declare-fun b!6965293 () Bool)

(assert (=> b!6965293 (= e!4187538 (matchRSpec!4131 (regTwo!34733 (regTwo!34733 r!13765)) s!9351))))

(declare-fun b!6965294 () Bool)

(declare-fun c!1291415 () Bool)

(assert (=> b!6965294 (= c!1291415 (is-Union!17110 (regTwo!34733 r!13765)))))

(assert (=> b!6965294 (= e!4187539 e!4187542)))

(assert (= (and d!2170461 c!1291412) b!6965289))

(assert (= (and d!2170461 (not c!1291412)) b!6965291))

(assert (= (and b!6965291 res!2841878) b!6965285))

(assert (= (and b!6965285 c!1291414) b!6965290))

(assert (= (and b!6965285 (not c!1291414)) b!6965294))

(assert (= (and b!6965294 c!1291415) b!6965287))

(assert (= (and b!6965294 (not c!1291415)) b!6965288))

(assert (= (and b!6965287 (not res!2841879)) b!6965293))

(assert (= (and b!6965288 c!1291413) b!6965286))

(assert (= (and b!6965288 (not c!1291413)) b!6965292))

(assert (= (and b!6965286 (not res!2841877)) b!6965284))

(assert (= (or b!6965284 b!6965292) bm!632329))

(assert (= (or b!6965289 b!6965286) bm!632330))

(declare-fun m!7657800 () Bool)

(assert (=> bm!632329 m!7657800))

(declare-fun m!7657802 () Bool)

(assert (=> b!6965287 m!7657802))

(declare-fun m!7657804 () Bool)

(assert (=> bm!632330 m!7657804))

(declare-fun m!7657806 () Bool)

(assert (=> b!6965293 m!7657806))

(assert (=> b!6965204 d!2170461))

(declare-fun d!2170465 () Bool)

(declare-fun res!2841884 () Bool)

(declare-fun e!4187548 () Bool)

(assert (=> d!2170465 (=> res!2841884 e!4187548)))

(assert (=> d!2170465 (= res!2841884 (is-Nil!66782 l!9142))))

(assert (=> d!2170465 (= (forall!15981 l!9142 lambda!397441) e!4187548)))

(declare-fun b!6965303 () Bool)

(declare-fun e!4187549 () Bool)

(assert (=> b!6965303 (= e!4187548 e!4187549)))

(declare-fun res!2841885 () Bool)

(assert (=> b!6965303 (=> (not res!2841885) (not e!4187549))))

(declare-fun dynLambda!26624 (Int Regex!17110) Bool)

(assert (=> b!6965303 (= res!2841885 (dynLambda!26624 lambda!397441 (h!73230 l!9142)))))

(declare-fun b!6965304 () Bool)

(assert (=> b!6965304 (= e!4187549 (forall!15981 (t!380649 l!9142) lambda!397441))))

(assert (= (and d!2170465 (not res!2841884)) b!6965303))

(assert (= (and b!6965303 res!2841885) b!6965304))

(declare-fun b_lambda!260633 () Bool)

(assert (=> (not b_lambda!260633) (not b!6965303)))

(declare-fun m!7657808 () Bool)

(assert (=> b!6965303 m!7657808))

(declare-fun m!7657810 () Bool)

(assert (=> b!6965304 m!7657810))

(assert (=> start!668180 d!2170465))

(declare-fun bs!1858613 () Bool)

(declare-fun b!6965305 () Bool)

(assert (= bs!1858613 (and b!6965305 b!6965284)))

(declare-fun lambda!397451 () Int)

(assert (=> bs!1858613 (= (and (= (reg!17439 r!13765) (reg!17439 (regTwo!34733 r!13765))) (= r!13765 (regTwo!34733 r!13765))) (= lambda!397451 lambda!397449))))

(declare-fun bs!1858614 () Bool)

(assert (= bs!1858614 (and b!6965305 b!6965292)))

(assert (=> bs!1858614 (not (= lambda!397451 lambda!397450))))

(assert (=> b!6965305 true))

(assert (=> b!6965305 true))

(declare-fun bs!1858615 () Bool)

(declare-fun b!6965313 () Bool)

(assert (= bs!1858615 (and b!6965313 b!6965284)))

(declare-fun lambda!397452 () Int)

(assert (=> bs!1858615 (not (= lambda!397452 lambda!397449))))

(declare-fun bs!1858616 () Bool)

(assert (= bs!1858616 (and b!6965313 b!6965292)))

(assert (=> bs!1858616 (= (and (= (regOne!34732 r!13765) (regOne!34732 (regTwo!34733 r!13765))) (= (regTwo!34732 r!13765) (regTwo!34732 (regTwo!34733 r!13765)))) (= lambda!397452 lambda!397450))))

(declare-fun bs!1858617 () Bool)

(assert (= bs!1858617 (and b!6965313 b!6965305)))

(assert (=> bs!1858617 (not (= lambda!397452 lambda!397451))))

(assert (=> b!6965313 true))

(assert (=> b!6965313 true))

(declare-fun e!4187550 () Bool)

(declare-fun call!632336 () Bool)

(assert (=> b!6965305 (= e!4187550 call!632336)))

(declare-fun b!6965306 () Bool)

(declare-fun c!1291418 () Bool)

(assert (=> b!6965306 (= c!1291418 (is-ElementMatch!17110 r!13765))))

(declare-fun e!4187553 () Bool)

(declare-fun e!4187552 () Bool)

(assert (=> b!6965306 (= e!4187553 e!4187552)))

(declare-fun c!1291417 () Bool)

(declare-fun bm!632331 () Bool)

(assert (=> bm!632331 (= call!632336 (Exists!4080 (ite c!1291417 lambda!397451 lambda!397452)))))

(declare-fun b!6965307 () Bool)

(declare-fun res!2841886 () Bool)

(assert (=> b!6965307 (=> res!2841886 e!4187550)))

(declare-fun call!632337 () Bool)

(assert (=> b!6965307 (= res!2841886 call!632337)))

(declare-fun e!4187554 () Bool)

(assert (=> b!6965307 (= e!4187554 e!4187550)))

(declare-fun b!6965308 () Bool)

(declare-fun e!4187555 () Bool)

(declare-fun e!4187551 () Bool)

(assert (=> b!6965308 (= e!4187555 e!4187551)))

(declare-fun res!2841888 () Bool)

(assert (=> b!6965308 (= res!2841888 (matchRSpec!4131 (regOne!34733 r!13765) s!9351))))

(assert (=> b!6965308 (=> res!2841888 e!4187551)))

(declare-fun b!6965309 () Bool)

(assert (=> b!6965309 (= e!4187555 e!4187554)))

(assert (=> b!6965309 (= c!1291417 (is-Star!17110 r!13765))))

(declare-fun b!6965310 () Bool)

(declare-fun e!4187556 () Bool)

(assert (=> b!6965310 (= e!4187556 call!632337)))

(declare-fun d!2170467 () Bool)

(declare-fun c!1291416 () Bool)

(assert (=> d!2170467 (= c!1291416 (is-EmptyExpr!17110 r!13765))))

(assert (=> d!2170467 (= (matchRSpec!4131 r!13765 s!9351) e!4187556)))

(declare-fun bm!632332 () Bool)

(assert (=> bm!632332 (= call!632337 (isEmpty!38989 s!9351))))

(declare-fun b!6965311 () Bool)

(assert (=> b!6965311 (= e!4187552 (= s!9351 (Cons!66781 (c!1291402 r!13765) Nil!66781)))))

(declare-fun b!6965312 () Bool)

(assert (=> b!6965312 (= e!4187556 e!4187553)))

(declare-fun res!2841887 () Bool)

(assert (=> b!6965312 (= res!2841887 (not (is-EmptyLang!17110 r!13765)))))

(assert (=> b!6965312 (=> (not res!2841887) (not e!4187553))))

(assert (=> b!6965313 (= e!4187554 call!632336)))

(declare-fun b!6965314 () Bool)

(assert (=> b!6965314 (= e!4187551 (matchRSpec!4131 (regTwo!34733 r!13765) s!9351))))

(declare-fun b!6965315 () Bool)

(declare-fun c!1291419 () Bool)

(assert (=> b!6965315 (= c!1291419 (is-Union!17110 r!13765))))

(assert (=> b!6965315 (= e!4187552 e!4187555)))

(assert (= (and d!2170467 c!1291416) b!6965310))

(assert (= (and d!2170467 (not c!1291416)) b!6965312))

(assert (= (and b!6965312 res!2841887) b!6965306))

(assert (= (and b!6965306 c!1291418) b!6965311))

(assert (= (and b!6965306 (not c!1291418)) b!6965315))

(assert (= (and b!6965315 c!1291419) b!6965308))

(assert (= (and b!6965315 (not c!1291419)) b!6965309))

(assert (= (and b!6965308 (not res!2841888)) b!6965314))

(assert (= (and b!6965309 c!1291417) b!6965307))

(assert (= (and b!6965309 (not c!1291417)) b!6965313))

(assert (= (and b!6965307 (not res!2841886)) b!6965305))

(assert (= (or b!6965305 b!6965313) bm!632331))

(assert (= (or b!6965310 b!6965307) bm!632332))

(declare-fun m!7657812 () Bool)

(assert (=> bm!632331 m!7657812))

(assert (=> b!6965308 m!7657762))

(assert (=> bm!632332 m!7657804))

(assert (=> b!6965314 m!7657770))

(assert (=> b!6965210 d!2170467))

(declare-fun bm!632335 () Bool)

(declare-fun call!632340 () Bool)

(assert (=> bm!632335 (= call!632340 (isEmpty!38989 s!9351))))

(declare-fun b!6965372 () Bool)

(declare-fun e!4187593 () Bool)

(declare-fun head!14000 (List!66905) C!34490)

(assert (=> b!6965372 (= e!4187593 (not (= (head!14000 s!9351) (c!1291402 r!13765))))))

(declare-fun b!6965373 () Bool)

(declare-fun e!4187587 () Bool)

(declare-fun lt!2479348 () Bool)

(assert (=> b!6965373 (= e!4187587 (not lt!2479348))))

(declare-fun b!6965374 () Bool)

(declare-fun res!2841919 () Bool)

(declare-fun e!4187590 () Bool)

(assert (=> b!6965374 (=> res!2841919 e!4187590)))

(declare-fun e!4187591 () Bool)

(assert (=> b!6965374 (= res!2841919 e!4187591)))

(declare-fun res!2841924 () Bool)

(assert (=> b!6965374 (=> (not res!2841924) (not e!4187591))))

(assert (=> b!6965374 (= res!2841924 lt!2479348)))

(declare-fun b!6965375 () Bool)

(assert (=> b!6965375 (= e!4187591 (= (head!14000 s!9351) (c!1291402 r!13765)))))

(declare-fun b!6965376 () Bool)

(declare-fun res!2841917 () Bool)

(assert (=> b!6965376 (=> res!2841917 e!4187590)))

(assert (=> b!6965376 (= res!2841917 (not (is-ElementMatch!17110 r!13765)))))

(assert (=> b!6965376 (= e!4187587 e!4187590)))

(declare-fun b!6965377 () Bool)

(declare-fun res!2841920 () Bool)

(assert (=> b!6965377 (=> res!2841920 e!4187593)))

(declare-fun tail!13070 (List!66905) List!66905)

(assert (=> b!6965377 (= res!2841920 (not (isEmpty!38989 (tail!13070 s!9351))))))

(declare-fun b!6965378 () Bool)

(declare-fun res!2841923 () Bool)

(assert (=> b!6965378 (=> (not res!2841923) (not e!4187591))))

(assert (=> b!6965378 (= res!2841923 (isEmpty!38989 (tail!13070 s!9351)))))

(declare-fun b!6965379 () Bool)

(declare-fun e!4187588 () Bool)

(declare-fun derivativeStep!5527 (Regex!17110 C!34490) Regex!17110)

(assert (=> b!6965379 (= e!4187588 (matchR!9216 (derivativeStep!5527 r!13765 (head!14000 s!9351)) (tail!13070 s!9351)))))

(declare-fun b!6965380 () Bool)

(declare-fun res!2841922 () Bool)

(assert (=> b!6965380 (=> (not res!2841922) (not e!4187591))))

(assert (=> b!6965380 (= res!2841922 (not call!632340))))

(declare-fun d!2170469 () Bool)

(declare-fun e!4187592 () Bool)

(assert (=> d!2170469 e!4187592))

(declare-fun c!1291434 () Bool)

(assert (=> d!2170469 (= c!1291434 (is-EmptyExpr!17110 r!13765))))

(assert (=> d!2170469 (= lt!2479348 e!4187588)))

(declare-fun c!1291435 () Bool)

(assert (=> d!2170469 (= c!1291435 (isEmpty!38989 s!9351))))

(declare-fun validRegex!8794 (Regex!17110) Bool)

(assert (=> d!2170469 (validRegex!8794 r!13765)))

(assert (=> d!2170469 (= (matchR!9216 r!13765 s!9351) lt!2479348)))

(declare-fun b!6965381 () Bool)

(declare-fun e!4187589 () Bool)

(assert (=> b!6965381 (= e!4187589 e!4187593)))

(declare-fun res!2841921 () Bool)

(assert (=> b!6965381 (=> res!2841921 e!4187593)))

(assert (=> b!6965381 (= res!2841921 call!632340)))

(declare-fun b!6965382 () Bool)

(declare-fun nullable!6901 (Regex!17110) Bool)

(assert (=> b!6965382 (= e!4187588 (nullable!6901 r!13765))))

(declare-fun b!6965383 () Bool)

(assert (=> b!6965383 (= e!4187592 (= lt!2479348 call!632340))))

(declare-fun b!6965384 () Bool)

(assert (=> b!6965384 (= e!4187590 e!4187589)))

(declare-fun res!2841918 () Bool)

(assert (=> b!6965384 (=> (not res!2841918) (not e!4187589))))

(assert (=> b!6965384 (= res!2841918 (not lt!2479348))))

(declare-fun b!6965385 () Bool)

(assert (=> b!6965385 (= e!4187592 e!4187587)))

(declare-fun c!1291436 () Bool)

(assert (=> b!6965385 (= c!1291436 (is-EmptyLang!17110 r!13765))))

(assert (= (and d!2170469 c!1291435) b!6965382))

(assert (= (and d!2170469 (not c!1291435)) b!6965379))

(assert (= (and d!2170469 c!1291434) b!6965383))

(assert (= (and d!2170469 (not c!1291434)) b!6965385))

(assert (= (and b!6965385 c!1291436) b!6965373))

(assert (= (and b!6965385 (not c!1291436)) b!6965376))

(assert (= (and b!6965376 (not res!2841917)) b!6965374))

(assert (= (and b!6965374 res!2841924) b!6965380))

(assert (= (and b!6965380 res!2841922) b!6965378))

(assert (= (and b!6965378 res!2841923) b!6965375))

(assert (= (and b!6965374 (not res!2841919)) b!6965384))

(assert (= (and b!6965384 res!2841918) b!6965381))

(assert (= (and b!6965381 (not res!2841921)) b!6965377))

(assert (= (and b!6965377 (not res!2841920)) b!6965372))

(assert (= (or b!6965383 b!6965381 b!6965380) bm!632335))

(declare-fun m!7657814 () Bool)

(assert (=> b!6965377 m!7657814))

(assert (=> b!6965377 m!7657814))

(declare-fun m!7657816 () Bool)

(assert (=> b!6965377 m!7657816))

(declare-fun m!7657818 () Bool)

(assert (=> b!6965382 m!7657818))

(assert (=> b!6965378 m!7657814))

(assert (=> b!6965378 m!7657814))

(assert (=> b!6965378 m!7657816))

(assert (=> bm!632335 m!7657804))

(declare-fun m!7657820 () Bool)

(assert (=> b!6965372 m!7657820))

(assert (=> b!6965375 m!7657820))

(assert (=> d!2170469 m!7657804))

(declare-fun m!7657822 () Bool)

(assert (=> d!2170469 m!7657822))

(assert (=> b!6965379 m!7657820))

(assert (=> b!6965379 m!7657820))

(declare-fun m!7657824 () Bool)

(assert (=> b!6965379 m!7657824))

(assert (=> b!6965379 m!7657814))

(assert (=> b!6965379 m!7657824))

(assert (=> b!6965379 m!7657814))

(declare-fun m!7657826 () Bool)

(assert (=> b!6965379 m!7657826))

(assert (=> b!6965210 d!2170469))

(declare-fun d!2170471 () Bool)

(assert (=> d!2170471 (= (matchR!9216 r!13765 s!9351) (matchRSpec!4131 r!13765 s!9351))))

(declare-fun lt!2479351 () Unit!160880)

(declare-fun choose!51895 (Regex!17110 List!66905) Unit!160880)

(assert (=> d!2170471 (= lt!2479351 (choose!51895 r!13765 s!9351))))

(assert (=> d!2170471 (validRegex!8794 r!13765)))

(assert (=> d!2170471 (= (mainMatchTheorem!4125 r!13765 s!9351) lt!2479351)))

(declare-fun bs!1858618 () Bool)

(assert (= bs!1858618 d!2170471))

(assert (=> bs!1858618 m!7657776))

(assert (=> bs!1858618 m!7657774))

(declare-fun m!7657828 () Bool)

(assert (=> bs!1858618 m!7657828))

(assert (=> bs!1858618 m!7657822))

(assert (=> b!6965210 d!2170471))

(declare-fun d!2170473 () Bool)

(assert (=> d!2170473 (= (isEmpty!38987 (tail!13068 l!9142)) (is-Nil!66782 (tail!13068 l!9142)))))

(assert (=> b!6965205 d!2170473))

(declare-fun d!2170475 () Bool)

(assert (=> d!2170475 (= (tail!13068 l!9142) (t!380649 l!9142))))

(assert (=> b!6965205 d!2170475))

(declare-fun bs!1858619 () Bool)

(declare-fun b!6965390 () Bool)

(assert (= bs!1858619 (and b!6965390 b!6965284)))

(declare-fun lambda!397457 () Int)

(assert (=> bs!1858619 (= (and (= (reg!17439 (regOne!34733 r!13765)) (reg!17439 (regTwo!34733 r!13765))) (= (regOne!34733 r!13765) (regTwo!34733 r!13765))) (= lambda!397457 lambda!397449))))

(declare-fun bs!1858620 () Bool)

(assert (= bs!1858620 (and b!6965390 b!6965292)))

(assert (=> bs!1858620 (not (= lambda!397457 lambda!397450))))

(declare-fun bs!1858621 () Bool)

(assert (= bs!1858621 (and b!6965390 b!6965305)))

(assert (=> bs!1858621 (= (and (= (reg!17439 (regOne!34733 r!13765)) (reg!17439 r!13765)) (= (regOne!34733 r!13765) r!13765)) (= lambda!397457 lambda!397451))))

(declare-fun bs!1858622 () Bool)

(assert (= bs!1858622 (and b!6965390 b!6965313)))

(assert (=> bs!1858622 (not (= lambda!397457 lambda!397452))))

(assert (=> b!6965390 true))

(assert (=> b!6965390 true))

(declare-fun bs!1858623 () Bool)

(declare-fun b!6965398 () Bool)

(assert (= bs!1858623 (and b!6965398 b!6965292)))

(declare-fun lambda!397458 () Int)

(assert (=> bs!1858623 (= (and (= (regOne!34732 (regOne!34733 r!13765)) (regOne!34732 (regTwo!34733 r!13765))) (= (regTwo!34732 (regOne!34733 r!13765)) (regTwo!34732 (regTwo!34733 r!13765)))) (= lambda!397458 lambda!397450))))

(declare-fun bs!1858624 () Bool)

(assert (= bs!1858624 (and b!6965398 b!6965305)))

(assert (=> bs!1858624 (not (= lambda!397458 lambda!397451))))

(declare-fun bs!1858625 () Bool)

(assert (= bs!1858625 (and b!6965398 b!6965313)))

(assert (=> bs!1858625 (= (and (= (regOne!34732 (regOne!34733 r!13765)) (regOne!34732 r!13765)) (= (regTwo!34732 (regOne!34733 r!13765)) (regTwo!34732 r!13765))) (= lambda!397458 lambda!397452))))

(declare-fun bs!1858626 () Bool)

(assert (= bs!1858626 (and b!6965398 b!6965390)))

(assert (=> bs!1858626 (not (= lambda!397458 lambda!397457))))

(declare-fun bs!1858627 () Bool)

(assert (= bs!1858627 (and b!6965398 b!6965284)))

(assert (=> bs!1858627 (not (= lambda!397458 lambda!397449))))

(assert (=> b!6965398 true))

(assert (=> b!6965398 true))

(declare-fun e!4187596 () Bool)

(declare-fun call!632343 () Bool)

(assert (=> b!6965390 (= e!4187596 call!632343)))

(declare-fun b!6965391 () Bool)

(declare-fun c!1291439 () Bool)

(assert (=> b!6965391 (= c!1291439 (is-ElementMatch!17110 (regOne!34733 r!13765)))))

(declare-fun e!4187599 () Bool)

(declare-fun e!4187598 () Bool)

(assert (=> b!6965391 (= e!4187599 e!4187598)))

(declare-fun c!1291438 () Bool)

(declare-fun bm!632338 () Bool)

(assert (=> bm!632338 (= call!632343 (Exists!4080 (ite c!1291438 lambda!397457 lambda!397458)))))

(declare-fun b!6965392 () Bool)

(declare-fun res!2841929 () Bool)

(assert (=> b!6965392 (=> res!2841929 e!4187596)))

(declare-fun call!632344 () Bool)

(assert (=> b!6965392 (= res!2841929 call!632344)))

(declare-fun e!4187600 () Bool)

(assert (=> b!6965392 (= e!4187600 e!4187596)))

(declare-fun b!6965393 () Bool)

(declare-fun e!4187601 () Bool)

(declare-fun e!4187597 () Bool)

(assert (=> b!6965393 (= e!4187601 e!4187597)))

(declare-fun res!2841931 () Bool)

(assert (=> b!6965393 (= res!2841931 (matchRSpec!4131 (regOne!34733 (regOne!34733 r!13765)) s!9351))))

(assert (=> b!6965393 (=> res!2841931 e!4187597)))

(declare-fun b!6965394 () Bool)

(assert (=> b!6965394 (= e!4187601 e!4187600)))

(assert (=> b!6965394 (= c!1291438 (is-Star!17110 (regOne!34733 r!13765)))))

(declare-fun b!6965395 () Bool)

(declare-fun e!4187602 () Bool)

(assert (=> b!6965395 (= e!4187602 call!632344)))

(declare-fun d!2170477 () Bool)

(declare-fun c!1291437 () Bool)

(assert (=> d!2170477 (= c!1291437 (is-EmptyExpr!17110 (regOne!34733 r!13765)))))

(assert (=> d!2170477 (= (matchRSpec!4131 (regOne!34733 r!13765) s!9351) e!4187602)))

(declare-fun bm!632339 () Bool)

(assert (=> bm!632339 (= call!632344 (isEmpty!38989 s!9351))))

(declare-fun b!6965396 () Bool)

(assert (=> b!6965396 (= e!4187598 (= s!9351 (Cons!66781 (c!1291402 (regOne!34733 r!13765)) Nil!66781)))))

(declare-fun b!6965397 () Bool)

(assert (=> b!6965397 (= e!4187602 e!4187599)))

(declare-fun res!2841930 () Bool)

(assert (=> b!6965397 (= res!2841930 (not (is-EmptyLang!17110 (regOne!34733 r!13765))))))

(assert (=> b!6965397 (=> (not res!2841930) (not e!4187599))))

(assert (=> b!6965398 (= e!4187600 call!632343)))

(declare-fun b!6965399 () Bool)

(assert (=> b!6965399 (= e!4187597 (matchRSpec!4131 (regTwo!34733 (regOne!34733 r!13765)) s!9351))))

(declare-fun b!6965400 () Bool)

(declare-fun c!1291440 () Bool)

(assert (=> b!6965400 (= c!1291440 (is-Union!17110 (regOne!34733 r!13765)))))

(assert (=> b!6965400 (= e!4187598 e!4187601)))

(assert (= (and d!2170477 c!1291437) b!6965395))

(assert (= (and d!2170477 (not c!1291437)) b!6965397))

(assert (= (and b!6965397 res!2841930) b!6965391))

(assert (= (and b!6965391 c!1291439) b!6965396))

(assert (= (and b!6965391 (not c!1291439)) b!6965400))

(assert (= (and b!6965400 c!1291440) b!6965393))

(assert (= (and b!6965400 (not c!1291440)) b!6965394))

(assert (= (and b!6965393 (not res!2841931)) b!6965399))

(assert (= (and b!6965394 c!1291438) b!6965392))

(assert (= (and b!6965394 (not c!1291438)) b!6965398))

(assert (= (and b!6965392 (not res!2841929)) b!6965390))

(assert (= (or b!6965390 b!6965398) bm!632338))

(assert (= (or b!6965395 b!6965392) bm!632339))

(declare-fun m!7657830 () Bool)

(assert (=> bm!632338 m!7657830))

(declare-fun m!7657832 () Bool)

(assert (=> b!6965393 m!7657832))

(assert (=> bm!632339 m!7657804))

(declare-fun m!7657834 () Bool)

(assert (=> b!6965399 m!7657834))

(assert (=> b!6965206 d!2170477))

(declare-fun d!2170479 () Bool)

(assert (=> d!2170479 (= (isEmpty!38987 l!9142) (is-Nil!66782 l!9142))))

(assert (=> b!6965212 d!2170479))

(declare-fun bs!1858629 () Bool)

(declare-fun d!2170481 () Bool)

(assert (= bs!1858629 (and d!2170481 start!668180)))

(declare-fun lambda!397463 () Int)

(assert (=> bs!1858629 (= lambda!397463 lambda!397441)))

(declare-fun b!6965436 () Bool)

(declare-fun e!4187622 () Bool)

(declare-fun e!4187626 () Bool)

(assert (=> b!6965436 (= e!4187622 e!4187626)))

(declare-fun c!1291454 () Bool)

(assert (=> b!6965436 (= c!1291454 (isEmpty!38987 l!9142))))

(declare-fun b!6965437 () Bool)

(declare-fun e!4187625 () Regex!17110)

(assert (=> b!6965437 (= e!4187625 EmptyLang!17110)))

(declare-fun b!6965438 () Bool)

(declare-fun e!4187624 () Regex!17110)

(assert (=> b!6965438 (= e!4187624 e!4187625)))

(declare-fun c!1291456 () Bool)

(assert (=> b!6965438 (= c!1291456 (is-Cons!66782 l!9142))))

(declare-fun b!6965439 () Bool)

(assert (=> b!6965439 (= e!4187625 (Union!17110 (h!73230 l!9142) (generalisedUnion!2585 (t!380649 l!9142))))))

(declare-fun b!6965440 () Bool)

(declare-fun lt!2479354 () Regex!17110)

(declare-fun isEmptyLang!2051 (Regex!17110) Bool)

(assert (=> b!6965440 (= e!4187626 (isEmptyLang!2051 lt!2479354))))

(declare-fun b!6965441 () Bool)

(declare-fun e!4187627 () Bool)

(declare-fun head!14001 (List!66906) Regex!17110)

(assert (=> b!6965441 (= e!4187627 (= lt!2479354 (head!14001 l!9142)))))

(assert (=> d!2170481 e!4187622))

(declare-fun res!2841940 () Bool)

(assert (=> d!2170481 (=> (not res!2841940) (not e!4187622))))

(assert (=> d!2170481 (= res!2841940 (validRegex!8794 lt!2479354))))

(assert (=> d!2170481 (= lt!2479354 e!4187624)))

(declare-fun c!1291453 () Bool)

(declare-fun e!4187623 () Bool)

(assert (=> d!2170481 (= c!1291453 e!4187623)))

(declare-fun res!2841939 () Bool)

(assert (=> d!2170481 (=> (not res!2841939) (not e!4187623))))

(assert (=> d!2170481 (= res!2841939 (is-Cons!66782 l!9142))))

(assert (=> d!2170481 (forall!15981 l!9142 lambda!397463)))

(assert (=> d!2170481 (= (generalisedUnion!2585 l!9142) lt!2479354)))

(declare-fun b!6965442 () Bool)

(assert (=> b!6965442 (= e!4187624 (h!73230 l!9142))))

(declare-fun b!6965443 () Bool)

(assert (=> b!6965443 (= e!4187626 e!4187627)))

(declare-fun c!1291455 () Bool)

(assert (=> b!6965443 (= c!1291455 (isEmpty!38987 (tail!13068 l!9142)))))

(declare-fun b!6965444 () Bool)

(assert (=> b!6965444 (= e!4187623 (isEmpty!38987 (t!380649 l!9142)))))

(declare-fun b!6965445 () Bool)

(declare-fun isUnion!1479 (Regex!17110) Bool)

(assert (=> b!6965445 (= e!4187627 (isUnion!1479 lt!2479354))))

(assert (= (and d!2170481 res!2841939) b!6965444))

(assert (= (and d!2170481 c!1291453) b!6965442))

(assert (= (and d!2170481 (not c!1291453)) b!6965438))

(assert (= (and b!6965438 c!1291456) b!6965439))

(assert (= (and b!6965438 (not c!1291456)) b!6965437))

(assert (= (and d!2170481 res!2841940) b!6965436))

(assert (= (and b!6965436 c!1291454) b!6965440))

(assert (= (and b!6965436 (not c!1291454)) b!6965443))

(assert (= (and b!6965443 c!1291455) b!6965441))

(assert (= (and b!6965443 (not c!1291455)) b!6965445))

(declare-fun m!7657836 () Bool)

(assert (=> b!6965440 m!7657836))

(declare-fun m!7657838 () Bool)

(assert (=> b!6965444 m!7657838))

(declare-fun m!7657840 () Bool)

(assert (=> d!2170481 m!7657840))

(declare-fun m!7657842 () Bool)

(assert (=> d!2170481 m!7657842))

(declare-fun m!7657844 () Bool)

(assert (=> b!6965439 m!7657844))

(declare-fun m!7657846 () Bool)

(assert (=> b!6965441 m!7657846))

(assert (=> b!6965443 m!7657764))

(assert (=> b!6965443 m!7657764))

(assert (=> b!6965443 m!7657766))

(declare-fun m!7657848 () Bool)

(assert (=> b!6965445 m!7657848))

(assert (=> b!6965436 m!7657768))

(assert (=> b!6965208 d!2170481))

(declare-fun e!4187630 () Bool)

(assert (=> b!6965209 (= tp!1920833 e!4187630)))

(declare-fun b!6965458 () Bool)

(declare-fun tp!1920876 () Bool)

(assert (=> b!6965458 (= e!4187630 tp!1920876)))

(declare-fun b!6965456 () Bool)

(assert (=> b!6965456 (= e!4187630 tp_is_empty!43445)))

(declare-fun b!6965459 () Bool)

(declare-fun tp!1920874 () Bool)

(declare-fun tp!1920878 () Bool)

(assert (=> b!6965459 (= e!4187630 (and tp!1920874 tp!1920878))))

(declare-fun b!6965457 () Bool)

(declare-fun tp!1920875 () Bool)

(declare-fun tp!1920877 () Bool)

(assert (=> b!6965457 (= e!4187630 (and tp!1920875 tp!1920877))))

(assert (= (and b!6965209 (is-ElementMatch!17110 (regOne!34733 r!13765))) b!6965456))

(assert (= (and b!6965209 (is-Concat!25955 (regOne!34733 r!13765))) b!6965457))

(assert (= (and b!6965209 (is-Star!17110 (regOne!34733 r!13765))) b!6965458))

(assert (= (and b!6965209 (is-Union!17110 (regOne!34733 r!13765))) b!6965459))

(declare-fun e!4187631 () Bool)

(assert (=> b!6965209 (= tp!1920836 e!4187631)))

(declare-fun b!6965462 () Bool)

(declare-fun tp!1920881 () Bool)

(assert (=> b!6965462 (= e!4187631 tp!1920881)))

(declare-fun b!6965460 () Bool)

(assert (=> b!6965460 (= e!4187631 tp_is_empty!43445)))

(declare-fun b!6965463 () Bool)

(declare-fun tp!1920879 () Bool)

(declare-fun tp!1920883 () Bool)

(assert (=> b!6965463 (= e!4187631 (and tp!1920879 tp!1920883))))

(declare-fun b!6965461 () Bool)

(declare-fun tp!1920880 () Bool)

(declare-fun tp!1920882 () Bool)

(assert (=> b!6965461 (= e!4187631 (and tp!1920880 tp!1920882))))

(assert (= (and b!6965209 (is-ElementMatch!17110 (regTwo!34733 r!13765))) b!6965460))

(assert (= (and b!6965209 (is-Concat!25955 (regTwo!34733 r!13765))) b!6965461))

(assert (= (and b!6965209 (is-Star!17110 (regTwo!34733 r!13765))) b!6965462))

(assert (= (and b!6965209 (is-Union!17110 (regTwo!34733 r!13765))) b!6965463))

(declare-fun e!4187632 () Bool)

(assert (=> b!6965215 (= tp!1920832 e!4187632)))

(declare-fun b!6965466 () Bool)

(declare-fun tp!1920886 () Bool)

(assert (=> b!6965466 (= e!4187632 tp!1920886)))

(declare-fun b!6965464 () Bool)

(assert (=> b!6965464 (= e!4187632 tp_is_empty!43445)))

(declare-fun b!6965467 () Bool)

(declare-fun tp!1920884 () Bool)

(declare-fun tp!1920888 () Bool)

(assert (=> b!6965467 (= e!4187632 (and tp!1920884 tp!1920888))))

(declare-fun b!6965465 () Bool)

(declare-fun tp!1920885 () Bool)

(declare-fun tp!1920887 () Bool)

(assert (=> b!6965465 (= e!4187632 (and tp!1920885 tp!1920887))))

(assert (= (and b!6965215 (is-ElementMatch!17110 (h!73230 l!9142))) b!6965464))

(assert (= (and b!6965215 (is-Concat!25955 (h!73230 l!9142))) b!6965465))

(assert (= (and b!6965215 (is-Star!17110 (h!73230 l!9142))) b!6965466))

(assert (= (and b!6965215 (is-Union!17110 (h!73230 l!9142))) b!6965467))

(declare-fun b!6965472 () Bool)

(declare-fun e!4187635 () Bool)

(declare-fun tp!1920893 () Bool)

(declare-fun tp!1920894 () Bool)

(assert (=> b!6965472 (= e!4187635 (and tp!1920893 tp!1920894))))

(assert (=> b!6965215 (= tp!1920837 e!4187635)))

(assert (= (and b!6965215 (is-Cons!66782 (t!380649 l!9142))) b!6965472))

(declare-fun e!4187636 () Bool)

(assert (=> b!6965211 (= tp!1920834 e!4187636)))

(declare-fun b!6965475 () Bool)

(declare-fun tp!1920897 () Bool)

(assert (=> b!6965475 (= e!4187636 tp!1920897)))

(declare-fun b!6965473 () Bool)

(assert (=> b!6965473 (= e!4187636 tp_is_empty!43445)))

(declare-fun b!6965476 () Bool)

(declare-fun tp!1920895 () Bool)

(declare-fun tp!1920899 () Bool)

(assert (=> b!6965476 (= e!4187636 (and tp!1920895 tp!1920899))))

(declare-fun b!6965474 () Bool)

(declare-fun tp!1920896 () Bool)

(declare-fun tp!1920898 () Bool)

(assert (=> b!6965474 (= e!4187636 (and tp!1920896 tp!1920898))))

(assert (= (and b!6965211 (is-ElementMatch!17110 (regOne!34732 r!13765))) b!6965473))

(assert (= (and b!6965211 (is-Concat!25955 (regOne!34732 r!13765))) b!6965474))

(assert (= (and b!6965211 (is-Star!17110 (regOne!34732 r!13765))) b!6965475))

(assert (= (and b!6965211 (is-Union!17110 (regOne!34732 r!13765))) b!6965476))

(declare-fun e!4187637 () Bool)

(assert (=> b!6965211 (= tp!1920835 e!4187637)))

(declare-fun b!6965479 () Bool)

(declare-fun tp!1920902 () Bool)

(assert (=> b!6965479 (= e!4187637 tp!1920902)))

(declare-fun b!6965477 () Bool)

(assert (=> b!6965477 (= e!4187637 tp_is_empty!43445)))

(declare-fun b!6965480 () Bool)

(declare-fun tp!1920900 () Bool)

(declare-fun tp!1920904 () Bool)

(assert (=> b!6965480 (= e!4187637 (and tp!1920900 tp!1920904))))

(declare-fun b!6965478 () Bool)

(declare-fun tp!1920901 () Bool)

(declare-fun tp!1920903 () Bool)

(assert (=> b!6965478 (= e!4187637 (and tp!1920901 tp!1920903))))

(assert (= (and b!6965211 (is-ElementMatch!17110 (regTwo!34732 r!13765))) b!6965477))

(assert (= (and b!6965211 (is-Concat!25955 (regTwo!34732 r!13765))) b!6965478))

(assert (= (and b!6965211 (is-Star!17110 (regTwo!34732 r!13765))) b!6965479))

(assert (= (and b!6965211 (is-Union!17110 (regTwo!34732 r!13765))) b!6965480))

(declare-fun e!4187638 () Bool)

(assert (=> b!6965207 (= tp!1920839 e!4187638)))

(declare-fun b!6965483 () Bool)

(declare-fun tp!1920907 () Bool)

(assert (=> b!6965483 (= e!4187638 tp!1920907)))

(declare-fun b!6965481 () Bool)

(assert (=> b!6965481 (= e!4187638 tp_is_empty!43445)))

(declare-fun b!6965484 () Bool)

(declare-fun tp!1920905 () Bool)

(declare-fun tp!1920909 () Bool)

(assert (=> b!6965484 (= e!4187638 (and tp!1920905 tp!1920909))))

(declare-fun b!6965482 () Bool)

(declare-fun tp!1920906 () Bool)

(declare-fun tp!1920908 () Bool)

(assert (=> b!6965482 (= e!4187638 (and tp!1920906 tp!1920908))))

(assert (= (and b!6965207 (is-ElementMatch!17110 (reg!17439 r!13765))) b!6965481))

(assert (= (and b!6965207 (is-Concat!25955 (reg!17439 r!13765))) b!6965482))

(assert (= (and b!6965207 (is-Star!17110 (reg!17439 r!13765))) b!6965483))

(assert (= (and b!6965207 (is-Union!17110 (reg!17439 r!13765))) b!6965484))

(declare-fun b!6965489 () Bool)

(declare-fun e!4187641 () Bool)

(declare-fun tp!1920912 () Bool)

(assert (=> b!6965489 (= e!4187641 (and tp_is_empty!43445 tp!1920912))))

(assert (=> b!6965213 (= tp!1920838 e!4187641)))

(assert (= (and b!6965213 (is-Cons!66781 (t!380648 s!9351))) b!6965489))

(declare-fun b_lambda!260635 () Bool)

(assert (= b_lambda!260633 (or start!668180 b_lambda!260635)))

(declare-fun bs!1858630 () Bool)

(declare-fun d!2170485 () Bool)

(assert (= bs!1858630 (and d!2170485 start!668180)))

(assert (=> bs!1858630 (= (dynLambda!26624 lambda!397441 (h!73230 l!9142)) (validRegex!8794 (h!73230 l!9142)))))

(declare-fun m!7657858 () Bool)

(assert (=> bs!1858630 m!7657858))

(assert (=> b!6965303 d!2170485))

(push 1)

(assert (not b!6965466))

(assert (not b!6965461))

(assert (not bm!632331))

(assert (not b!6965308))

(assert (not b!6965399))

(assert (not bm!632330))

(assert (not b!6965440))

(assert (not b!6965482))

(assert (not bm!632335))

(assert (not b!6965314))

(assert (not b!6965484))

(assert (not b!6965293))

(assert (not b!6965439))

(assert (not b!6965393))

(assert (not d!2170471))

(assert (not b!6965467))

(assert (not b!6965375))

(assert (not b!6965382))

(assert (not b!6965480))

(assert (not b!6965489))

(assert (not b!6965462))

(assert (not b!6965483))

(assert (not b!6965304))

(assert (not b!6965445))

(assert (not bm!632329))

(assert (not bm!632339))

(assert (not b!6965457))

(assert (not d!2170469))

(assert (not b!6965474))

(assert (not b!6965476))

(assert (not b!6965465))

(assert (not b!6965463))

(assert (not b!6965443))

(assert (not b!6965377))

(assert (not d!2170481))

(assert (not b_lambda!260635))

(assert (not b!6965479))

(assert (not b!6965444))

(assert (not b!6965441))

(assert (not b!6965475))

(assert (not b!6965458))

(assert (not bm!632338))

(assert (not b!6965478))

(assert (not b!6965287))

(assert (not b!6965378))

(assert (not bs!1858630))

(assert (not bm!632332))

(assert (not b!6965459))

(assert tp_is_empty!43445)

(assert (not b!6965372))

(assert (not b!6965472))

(assert (not b!6965379))

(assert (not b!6965436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

