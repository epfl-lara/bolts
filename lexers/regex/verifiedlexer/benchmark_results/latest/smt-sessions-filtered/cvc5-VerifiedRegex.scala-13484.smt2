; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727954 () Bool)

(assert start!727954)

(declare-fun res!3014486 () Bool)

(declare-fun e!4483041 () Bool)

(assert (=> start!727954 (=> (not res!3014486) (not e!4483041))))

(declare-datatypes ((C!39850 0))(
  ( (C!39851 (val!30365 Int)) )
))
(declare-datatypes ((Regex!19762 0))(
  ( (ElementMatch!19762 (c!1389494 C!39850)) (Concat!28607 (regOne!40036 Regex!19762) (regTwo!40036 Regex!19762)) (EmptyExpr!19762) (Star!19762 (reg!20091 Regex!19762)) (EmptyLang!19762) (Union!19762 (regOne!40037 Regex!19762) (regTwo!40037 Regex!19762)) )
))
(declare-datatypes ((List!72673 0))(
  ( (Nil!72549) (Cons!72549 (h!78997 Regex!19762) (t!387374 List!72673)) )
))
(declare-datatypes ((Context!17028 0))(
  ( (Context!17029 (exprs!9014 List!72673)) )
))
(declare-fun context!41 () Context!17028)

(assert (=> start!727954 (= res!3014486 (is-Cons!72549 (exprs!9014 context!41)))))

(assert (=> start!727954 e!4483041))

(declare-fun e!4483040 () Bool)

(declare-fun inv!92699 (Context!17028) Bool)

(assert (=> start!727954 (and (inv!92699 context!41) e!4483040)))

(declare-fun b!7520354 () Bool)

(declare-fun res!3014487 () Bool)

(assert (=> b!7520354 (=> (not res!3014487) (not e!4483041))))

(declare-fun nullable!8598 (Regex!19762) Bool)

(assert (=> b!7520354 (= res!3014487 (nullable!8598 (h!78997 (exprs!9014 context!41))))))

(declare-fun b!7520355 () Bool)

(declare-fun validRegex!10195 (Regex!19762) Bool)

(assert (=> b!7520355 (= e!4483041 (not (validRegex!10195 (h!78997 (exprs!9014 context!41)))))))

(declare-fun b!7520356 () Bool)

(declare-fun tp!2184297 () Bool)

(assert (=> b!7520356 (= e!4483040 tp!2184297)))

(assert (= (and start!727954 res!3014486) b!7520354))

(assert (= (and b!7520354 res!3014487) b!7520355))

(assert (= start!727954 b!7520356))

(declare-fun m!8100006 () Bool)

(assert (=> start!727954 m!8100006))

(declare-fun m!8100008 () Bool)

(assert (=> b!7520354 m!8100008))

(declare-fun m!8100010 () Bool)

(assert (=> b!7520355 m!8100010))

(push 1)

(assert (not start!727954))

(assert (not b!7520355))

(assert (not b!7520354))

(assert (not b!7520356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2308873 () Bool)

(declare-fun lambda!466394 () Int)

(declare-fun forall!18403 (List!72673 Int) Bool)

(assert (=> d!2308873 (= (inv!92699 context!41) (forall!18403 (exprs!9014 context!41) lambda!466394))))

(declare-fun bs!1939608 () Bool)

(assert (= bs!1939608 d!2308873))

(declare-fun m!8100018 () Bool)

(assert (=> bs!1939608 m!8100018))

(assert (=> start!727954 d!2308873))

(declare-fun b!7520384 () Bool)

(declare-fun e!4483068 () Bool)

(declare-fun call!689560 () Bool)

(assert (=> b!7520384 (= e!4483068 call!689560)))

(declare-fun b!7520385 () Bool)

(declare-fun e!4483063 () Bool)

(declare-fun e!4483064 () Bool)

(assert (=> b!7520385 (= e!4483063 e!4483064)))

(declare-fun res!3014505 () Bool)

(assert (=> b!7520385 (=> (not res!3014505) (not e!4483064))))

(declare-fun call!689561 () Bool)

(assert (=> b!7520385 (= res!3014505 call!689561)))

(declare-fun c!1389500 () Bool)

(declare-fun c!1389501 () Bool)

(declare-fun bm!689554 () Bool)

(assert (=> bm!689554 (= call!689560 (validRegex!10195 (ite c!1389501 (reg!20091 (h!78997 (exprs!9014 context!41))) (ite c!1389500 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41)))))))))

(declare-fun b!7520386 () Bool)

(declare-fun res!3014508 () Bool)

(declare-fun e!4483062 () Bool)

(assert (=> b!7520386 (=> (not res!3014508) (not e!4483062))))

(assert (=> b!7520386 (= res!3014508 call!689561)))

(declare-fun e!4483066 () Bool)

(assert (=> b!7520386 (= e!4483066 e!4483062)))

(declare-fun bm!689555 () Bool)

(declare-fun call!689559 () Bool)

(assert (=> bm!689555 (= call!689559 (validRegex!10195 (ite c!1389500 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41))))))))

(declare-fun b!7520387 () Bool)

(declare-fun e!4483067 () Bool)

(assert (=> b!7520387 (= e!4483067 e!4483066)))

(assert (=> b!7520387 (= c!1389500 (is-Union!19762 (h!78997 (exprs!9014 context!41))))))

(declare-fun bm!689556 () Bool)

(assert (=> bm!689556 (= call!689561 call!689560)))

(declare-fun b!7520388 () Bool)

(declare-fun res!3014506 () Bool)

(assert (=> b!7520388 (=> res!3014506 e!4483063)))

(assert (=> b!7520388 (= res!3014506 (not (is-Concat!28607 (h!78997 (exprs!9014 context!41)))))))

(assert (=> b!7520388 (= e!4483066 e!4483063)))

(declare-fun b!7520389 () Bool)

(declare-fun e!4483065 () Bool)

(assert (=> b!7520389 (= e!4483065 e!4483067)))

(assert (=> b!7520389 (= c!1389501 (is-Star!19762 (h!78997 (exprs!9014 context!41))))))

(declare-fun b!7520390 () Bool)

(assert (=> b!7520390 (= e!4483062 call!689559)))

(declare-fun d!2308877 () Bool)

(declare-fun res!3014504 () Bool)

(assert (=> d!2308877 (=> res!3014504 e!4483065)))

(assert (=> d!2308877 (= res!3014504 (is-ElementMatch!19762 (h!78997 (exprs!9014 context!41))))))

(assert (=> d!2308877 (= (validRegex!10195 (h!78997 (exprs!9014 context!41))) e!4483065)))

(declare-fun b!7520391 () Bool)

(assert (=> b!7520391 (= e!4483064 call!689559)))

(declare-fun b!7520392 () Bool)

(assert (=> b!7520392 (= e!4483067 e!4483068)))

(declare-fun res!3014507 () Bool)

(assert (=> b!7520392 (= res!3014507 (not (nullable!8598 (reg!20091 (h!78997 (exprs!9014 context!41))))))))

(assert (=> b!7520392 (=> (not res!3014507) (not e!4483068))))

(assert (= (and d!2308877 (not res!3014504)) b!7520389))

(assert (= (and b!7520389 c!1389501) b!7520392))

(assert (= (and b!7520389 (not c!1389501)) b!7520387))

(assert (= (and b!7520392 res!3014507) b!7520384))

(assert (= (and b!7520387 c!1389500) b!7520386))

(assert (= (and b!7520387 (not c!1389500)) b!7520388))

(assert (= (and b!7520386 res!3014508) b!7520390))

(assert (= (and b!7520388 (not res!3014506)) b!7520385))

(assert (= (and b!7520385 res!3014505) b!7520391))

(assert (= (or b!7520386 b!7520385) bm!689556))

(assert (= (or b!7520390 b!7520391) bm!689555))

(assert (= (or b!7520384 bm!689556) bm!689554))

(declare-fun m!8100020 () Bool)

(assert (=> bm!689554 m!8100020))

(declare-fun m!8100022 () Bool)

(assert (=> bm!689555 m!8100022))

(declare-fun m!8100024 () Bool)

(assert (=> b!7520392 m!8100024))

(assert (=> b!7520355 d!2308877))

(declare-fun d!2308879 () Bool)

(declare-fun nullableFct!3435 (Regex!19762) Bool)

(assert (=> d!2308879 (= (nullable!8598 (h!78997 (exprs!9014 context!41))) (nullableFct!3435 (h!78997 (exprs!9014 context!41))))))

(declare-fun bs!1939609 () Bool)

(assert (= bs!1939609 d!2308879))

(declare-fun m!8100026 () Bool)

(assert (=> bs!1939609 m!8100026))

(assert (=> b!7520354 d!2308879))

(declare-fun b!7520397 () Bool)

(declare-fun e!4483071 () Bool)

(declare-fun tp!2184305 () Bool)

(declare-fun tp!2184306 () Bool)

(assert (=> b!7520397 (= e!4483071 (and tp!2184305 tp!2184306))))

(assert (=> b!7520356 (= tp!2184297 e!4483071)))

(assert (= (and b!7520356 (is-Cons!72549 (exprs!9014 context!41))) b!7520397))

(push 1)

(assert (not b!7520392))

(assert (not bm!689555))

(assert (not bm!689554))

(assert (not d!2308879))

(assert (not d!2308873))

(assert (not b!7520397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7520429 () Bool)

(declare-fun e!4483101 () Bool)

(declare-fun call!689572 () Bool)

(assert (=> b!7520429 (= e!4483101 call!689572)))

(declare-fun b!7520430 () Bool)

(declare-fun e!4483094 () Bool)

(declare-fun e!4483095 () Bool)

(assert (=> b!7520430 (= e!4483094 e!4483095)))

(declare-fun res!3014525 () Bool)

(assert (=> b!7520430 (=> (not res!3014525) (not e!4483095))))

(declare-fun call!689573 () Bool)

(assert (=> b!7520430 (= res!3014525 call!689573)))

(declare-fun c!1389509 () Bool)

(declare-fun bm!689566 () Bool)

(declare-fun c!1389508 () Bool)

(assert (=> bm!689566 (= call!689572 (validRegex!10195 (ite c!1389509 (reg!20091 (ite c!1389501 (reg!20091 (h!78997 (exprs!9014 context!41))) (ite c!1389500 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41)))))) (ite c!1389508 (regOne!40037 (ite c!1389501 (reg!20091 (h!78997 (exprs!9014 context!41))) (ite c!1389500 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41)))))) (regOne!40036 (ite c!1389501 (reg!20091 (h!78997 (exprs!9014 context!41))) (ite c!1389500 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41))))))))))))

(declare-fun b!7520431 () Bool)

(declare-fun res!3014528 () Bool)

(declare-fun e!4483093 () Bool)

(assert (=> b!7520431 (=> (not res!3014528) (not e!4483093))))

(assert (=> b!7520431 (= res!3014528 call!689573)))

(declare-fun e!4483097 () Bool)

(assert (=> b!7520431 (= e!4483097 e!4483093)))

(declare-fun bm!689567 () Bool)

(declare-fun call!689571 () Bool)

(assert (=> bm!689567 (= call!689571 (validRegex!10195 (ite c!1389508 (regTwo!40037 (ite c!1389501 (reg!20091 (h!78997 (exprs!9014 context!41))) (ite c!1389500 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41)))))) (regTwo!40036 (ite c!1389501 (reg!20091 (h!78997 (exprs!9014 context!41))) (ite c!1389500 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41)))))))))))

(declare-fun b!7520432 () Bool)

(declare-fun e!4483098 () Bool)

(assert (=> b!7520432 (= e!4483098 e!4483097)))

(assert (=> b!7520432 (= c!1389508 (is-Union!19762 (ite c!1389501 (reg!20091 (h!78997 (exprs!9014 context!41))) (ite c!1389500 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41)))))))))

(declare-fun bm!689568 () Bool)

(assert (=> bm!689568 (= call!689573 call!689572)))

(declare-fun b!7520433 () Bool)

(declare-fun res!3014526 () Bool)

(assert (=> b!7520433 (=> res!3014526 e!4483094)))

(assert (=> b!7520433 (= res!3014526 (not (is-Concat!28607 (ite c!1389501 (reg!20091 (h!78997 (exprs!9014 context!41))) (ite c!1389500 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41))))))))))

(assert (=> b!7520433 (= e!4483097 e!4483094)))

(declare-fun b!7520434 () Bool)

(declare-fun e!4483096 () Bool)

(assert (=> b!7520434 (= e!4483096 e!4483098)))

(assert (=> b!7520434 (= c!1389509 (is-Star!19762 (ite c!1389501 (reg!20091 (h!78997 (exprs!9014 context!41))) (ite c!1389500 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41)))))))))

(declare-fun b!7520435 () Bool)

(assert (=> b!7520435 (= e!4483093 call!689571)))

(declare-fun d!2308885 () Bool)

(declare-fun res!3014524 () Bool)

(assert (=> d!2308885 (=> res!3014524 e!4483096)))

(assert (=> d!2308885 (= res!3014524 (is-ElementMatch!19762 (ite c!1389501 (reg!20091 (h!78997 (exprs!9014 context!41))) (ite c!1389500 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41)))))))))

(assert (=> d!2308885 (= (validRegex!10195 (ite c!1389501 (reg!20091 (h!78997 (exprs!9014 context!41))) (ite c!1389500 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41)))))) e!4483096)))

(declare-fun b!7520436 () Bool)

(assert (=> b!7520436 (= e!4483095 call!689571)))

(declare-fun b!7520437 () Bool)

(assert (=> b!7520437 (= e!4483098 e!4483101)))

(declare-fun res!3014527 () Bool)

(assert (=> b!7520437 (= res!3014527 (not (nullable!8598 (reg!20091 (ite c!1389501 (reg!20091 (h!78997 (exprs!9014 context!41))) (ite c!1389500 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41)))))))))))

(assert (=> b!7520437 (=> (not res!3014527) (not e!4483101))))

(assert (= (and d!2308885 (not res!3014524)) b!7520434))

(assert (= (and b!7520434 c!1389509) b!7520437))

(assert (= (and b!7520434 (not c!1389509)) b!7520432))

(assert (= (and b!7520437 res!3014527) b!7520429))

(assert (= (and b!7520432 c!1389508) b!7520431))

(assert (= (and b!7520432 (not c!1389508)) b!7520433))

(assert (= (and b!7520431 res!3014528) b!7520435))

(assert (= (and b!7520433 (not res!3014526)) b!7520430))

(assert (= (and b!7520430 res!3014525) b!7520436))

(assert (= (or b!7520431 b!7520430) bm!689568))

(assert (= (or b!7520435 b!7520436) bm!689567))

(assert (= (or b!7520429 bm!689568) bm!689566))

(declare-fun m!8100038 () Bool)

(assert (=> bm!689566 m!8100038))

(declare-fun m!8100040 () Bool)

(assert (=> bm!689567 m!8100040))

(declare-fun m!8100042 () Bool)

(assert (=> b!7520437 m!8100042))

(assert (=> bm!689554 d!2308885))

(declare-fun bm!689573 () Bool)

(declare-fun call!689579 () Bool)

(declare-fun c!1389512 () Bool)

(assert (=> bm!689573 (= call!689579 (nullable!8598 (ite c!1389512 (regOne!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41))))))))

(declare-fun b!7520453 () Bool)

(declare-fun e!4483115 () Bool)

(declare-fun e!4483116 () Bool)

(assert (=> b!7520453 (= e!4483115 e!4483116)))

(assert (=> b!7520453 (= c!1389512 (is-Union!19762 (h!78997 (exprs!9014 context!41))))))

(declare-fun b!7520454 () Bool)

(declare-fun e!4483120 () Bool)

(assert (=> b!7520454 (= e!4483120 e!4483115)))

(declare-fun res!3014539 () Bool)

(assert (=> b!7520454 (=> res!3014539 e!4483115)))

(assert (=> b!7520454 (= res!3014539 (is-Star!19762 (h!78997 (exprs!9014 context!41))))))

(declare-fun d!2308887 () Bool)

(declare-fun res!3014543 () Bool)

(declare-fun e!4483118 () Bool)

(assert (=> d!2308887 (=> res!3014543 e!4483118)))

(assert (=> d!2308887 (= res!3014543 (is-EmptyExpr!19762 (h!78997 (exprs!9014 context!41))))))

(assert (=> d!2308887 (= (nullableFct!3435 (h!78997 (exprs!9014 context!41))) e!4483118)))

(declare-fun b!7520455 () Bool)

(assert (=> b!7520455 (= e!4483118 e!4483120)))

(declare-fun res!3014541 () Bool)

(assert (=> b!7520455 (=> (not res!3014541) (not e!4483120))))

(assert (=> b!7520455 (= res!3014541 (and (not (is-EmptyLang!19762 (h!78997 (exprs!9014 context!41)))) (not (is-ElementMatch!19762 (h!78997 (exprs!9014 context!41))))))))

(declare-fun b!7520456 () Bool)

(declare-fun e!4483117 () Bool)

(assert (=> b!7520456 (= e!4483116 e!4483117)))

(declare-fun res!3014540 () Bool)

(declare-fun call!689578 () Bool)

(assert (=> b!7520456 (= res!3014540 call!689578)))

(assert (=> b!7520456 (=> (not res!3014540) (not e!4483117))))

(declare-fun bm!689574 () Bool)

(assert (=> bm!689574 (= call!689578 (nullable!8598 (ite c!1389512 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regOne!40036 (h!78997 (exprs!9014 context!41))))))))

(declare-fun b!7520457 () Bool)

(declare-fun e!4483119 () Bool)

(assert (=> b!7520457 (= e!4483119 call!689578)))

(declare-fun b!7520458 () Bool)

(assert (=> b!7520458 (= e!4483117 call!689579)))

(declare-fun b!7520459 () Bool)

(assert (=> b!7520459 (= e!4483116 e!4483119)))

(declare-fun res!3014542 () Bool)

(assert (=> b!7520459 (= res!3014542 call!689579)))

(assert (=> b!7520459 (=> res!3014542 e!4483119)))

(assert (= (and d!2308887 (not res!3014543)) b!7520455))

(assert (= (and b!7520455 res!3014541) b!7520454))

(assert (= (and b!7520454 (not res!3014539)) b!7520453))

(assert (= (and b!7520453 c!1389512) b!7520459))

(assert (= (and b!7520453 (not c!1389512)) b!7520456))

(assert (= (and b!7520459 (not res!3014542)) b!7520457))

(assert (= (and b!7520456 res!3014540) b!7520458))

(assert (= (or b!7520457 b!7520456) bm!689574))

(assert (= (or b!7520459 b!7520458) bm!689573))

(declare-fun m!8100044 () Bool)

(assert (=> bm!689573 m!8100044))

(declare-fun m!8100046 () Bool)

(assert (=> bm!689574 m!8100046))

(assert (=> d!2308879 d!2308887))

(declare-fun d!2308889 () Bool)

(declare-fun res!3014548 () Bool)

(declare-fun e!4483125 () Bool)

(assert (=> d!2308889 (=> res!3014548 e!4483125)))

(assert (=> d!2308889 (= res!3014548 (is-Nil!72549 (exprs!9014 context!41)))))

(assert (=> d!2308889 (= (forall!18403 (exprs!9014 context!41) lambda!466394) e!4483125)))

(declare-fun b!7520464 () Bool)

(declare-fun e!4483126 () Bool)

(assert (=> b!7520464 (= e!4483125 e!4483126)))

(declare-fun res!3014549 () Bool)

(assert (=> b!7520464 (=> (not res!3014549) (not e!4483126))))

(declare-fun dynLambda!29885 (Int Regex!19762) Bool)

(assert (=> b!7520464 (= res!3014549 (dynLambda!29885 lambda!466394 (h!78997 (exprs!9014 context!41))))))

(declare-fun b!7520465 () Bool)

(assert (=> b!7520465 (= e!4483126 (forall!18403 (t!387374 (exprs!9014 context!41)) lambda!466394))))

(assert (= (and d!2308889 (not res!3014548)) b!7520464))

(assert (= (and b!7520464 res!3014549) b!7520465))

(declare-fun b_lambda!288815 () Bool)

(assert (=> (not b_lambda!288815) (not b!7520464)))

(declare-fun m!8100048 () Bool)

(assert (=> b!7520464 m!8100048))

(declare-fun m!8100050 () Bool)

(assert (=> b!7520465 m!8100050))

(assert (=> d!2308873 d!2308889))

(declare-fun b!7520466 () Bool)

(declare-fun e!4483133 () Bool)

(declare-fun call!689581 () Bool)

(assert (=> b!7520466 (= e!4483133 call!689581)))

(declare-fun b!7520467 () Bool)

(declare-fun e!4483128 () Bool)

(declare-fun e!4483129 () Bool)

(assert (=> b!7520467 (= e!4483128 e!4483129)))

(declare-fun res!3014551 () Bool)

(assert (=> b!7520467 (=> (not res!3014551) (not e!4483129))))

(declare-fun call!689582 () Bool)

(assert (=> b!7520467 (= res!3014551 call!689582)))

(declare-fun bm!689575 () Bool)

(declare-fun c!1389513 () Bool)

(declare-fun c!1389514 () Bool)

(assert (=> bm!689575 (= call!689581 (validRegex!10195 (ite c!1389514 (reg!20091 (ite c!1389500 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41))))) (ite c!1389513 (regOne!40037 (ite c!1389500 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41))))) (regOne!40036 (ite c!1389500 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41)))))))))))

(declare-fun b!7520468 () Bool)

(declare-fun res!3014554 () Bool)

(declare-fun e!4483127 () Bool)

(assert (=> b!7520468 (=> (not res!3014554) (not e!4483127))))

(assert (=> b!7520468 (= res!3014554 call!689582)))

(declare-fun e!4483131 () Bool)

(assert (=> b!7520468 (= e!4483131 e!4483127)))

(declare-fun bm!689576 () Bool)

(declare-fun call!689580 () Bool)

(assert (=> bm!689576 (= call!689580 (validRegex!10195 (ite c!1389513 (regTwo!40037 (ite c!1389500 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41))))) (regTwo!40036 (ite c!1389500 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41))))))))))

(declare-fun b!7520469 () Bool)

(declare-fun e!4483132 () Bool)

(assert (=> b!7520469 (= e!4483132 e!4483131)))

(assert (=> b!7520469 (= c!1389513 (is-Union!19762 (ite c!1389500 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41))))))))

(declare-fun bm!689577 () Bool)

(assert (=> bm!689577 (= call!689582 call!689581)))

(declare-fun b!7520470 () Bool)

(declare-fun res!3014552 () Bool)

(assert (=> b!7520470 (=> res!3014552 e!4483128)))

(assert (=> b!7520470 (= res!3014552 (not (is-Concat!28607 (ite c!1389500 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41)))))))))

(assert (=> b!7520470 (= e!4483131 e!4483128)))

(declare-fun b!7520471 () Bool)

(declare-fun e!4483130 () Bool)

(assert (=> b!7520471 (= e!4483130 e!4483132)))

(assert (=> b!7520471 (= c!1389514 (is-Star!19762 (ite c!1389500 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41))))))))

(declare-fun b!7520472 () Bool)

(assert (=> b!7520472 (= e!4483127 call!689580)))

(declare-fun d!2308891 () Bool)

(declare-fun res!3014550 () Bool)

(assert (=> d!2308891 (=> res!3014550 e!4483130)))

(assert (=> d!2308891 (= res!3014550 (is-ElementMatch!19762 (ite c!1389500 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41))))))))

(assert (=> d!2308891 (= (validRegex!10195 (ite c!1389500 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41))))) e!4483130)))

(declare-fun b!7520473 () Bool)

(assert (=> b!7520473 (= e!4483129 call!689580)))

(declare-fun b!7520474 () Bool)

(assert (=> b!7520474 (= e!4483132 e!4483133)))

(declare-fun res!3014553 () Bool)

(assert (=> b!7520474 (= res!3014553 (not (nullable!8598 (reg!20091 (ite c!1389500 (regTwo!40037 (h!78997 (exprs!9014 context!41))) (regTwo!40036 (h!78997 (exprs!9014 context!41))))))))))

(assert (=> b!7520474 (=> (not res!3014553) (not e!4483133))))

(assert (= (and d!2308891 (not res!3014550)) b!7520471))

(assert (= (and b!7520471 c!1389514) b!7520474))

(assert (= (and b!7520471 (not c!1389514)) b!7520469))

(assert (= (and b!7520474 res!3014553) b!7520466))

(assert (= (and b!7520469 c!1389513) b!7520468))

(assert (= (and b!7520469 (not c!1389513)) b!7520470))

(assert (= (and b!7520468 res!3014554) b!7520472))

(assert (= (and b!7520470 (not res!3014552)) b!7520467))

(assert (= (and b!7520467 res!3014551) b!7520473))

(assert (= (or b!7520468 b!7520467) bm!689577))

(assert (= (or b!7520472 b!7520473) bm!689576))

(assert (= (or b!7520466 bm!689577) bm!689575))

(declare-fun m!8100052 () Bool)

(assert (=> bm!689575 m!8100052))

(declare-fun m!8100054 () Bool)

(assert (=> bm!689576 m!8100054))

(declare-fun m!8100056 () Bool)

(assert (=> b!7520474 m!8100056))

(assert (=> bm!689555 d!2308891))

(declare-fun d!2308893 () Bool)

(assert (=> d!2308893 (= (nullable!8598 (reg!20091 (h!78997 (exprs!9014 context!41)))) (nullableFct!3435 (reg!20091 (h!78997 (exprs!9014 context!41)))))))

(declare-fun bs!1939612 () Bool)

(assert (= bs!1939612 d!2308893))

(declare-fun m!8100058 () Bool)

(assert (=> bs!1939612 m!8100058))

(assert (=> b!7520392 d!2308893))

(declare-fun e!4483136 () Bool)

(assert (=> b!7520397 (= tp!2184305 e!4483136)))

(declare-fun b!7520485 () Bool)

(declare-fun tp_is_empty!49889 () Bool)

(assert (=> b!7520485 (= e!4483136 tp_is_empty!49889)))

(declare-fun b!7520488 () Bool)

(declare-fun tp!2184324 () Bool)

(declare-fun tp!2184327 () Bool)

(assert (=> b!7520488 (= e!4483136 (and tp!2184324 tp!2184327))))

(declare-fun b!7520486 () Bool)

(declare-fun tp!2184323 () Bool)

(declare-fun tp!2184326 () Bool)

(assert (=> b!7520486 (= e!4483136 (and tp!2184323 tp!2184326))))

(declare-fun b!7520487 () Bool)

(declare-fun tp!2184325 () Bool)

(assert (=> b!7520487 (= e!4483136 tp!2184325)))

(assert (= (and b!7520397 (is-ElementMatch!19762 (h!78997 (exprs!9014 context!41)))) b!7520485))

(assert (= (and b!7520397 (is-Concat!28607 (h!78997 (exprs!9014 context!41)))) b!7520486))

(assert (= (and b!7520397 (is-Star!19762 (h!78997 (exprs!9014 context!41)))) b!7520487))

(assert (= (and b!7520397 (is-Union!19762 (h!78997 (exprs!9014 context!41)))) b!7520488))

(declare-fun b!7520489 () Bool)

(declare-fun e!4483137 () Bool)

(declare-fun tp!2184328 () Bool)

(declare-fun tp!2184329 () Bool)

(assert (=> b!7520489 (= e!4483137 (and tp!2184328 tp!2184329))))

(assert (=> b!7520397 (= tp!2184306 e!4483137)))

(assert (= (and b!7520397 (is-Cons!72549 (t!387374 (exprs!9014 context!41)))) b!7520489))

(declare-fun b_lambda!288817 () Bool)

(assert (= b_lambda!288815 (or d!2308873 b_lambda!288817)))

(declare-fun bs!1939613 () Bool)

(declare-fun d!2308895 () Bool)

(assert (= bs!1939613 (and d!2308895 d!2308873)))

(assert (=> bs!1939613 (= (dynLambda!29885 lambda!466394 (h!78997 (exprs!9014 context!41))) (validRegex!10195 (h!78997 (exprs!9014 context!41))))))

(assert (=> bs!1939613 m!8100010))

(assert (=> b!7520464 d!2308895))

(push 1)

(assert (not bm!689574))

(assert (not bs!1939613))

(assert (not bm!689566))

(assert (not b!7520489))

(assert tp_is_empty!49889)

(assert (not b!7520474))

(assert (not b!7520487))

(assert (not d!2308893))

(assert (not bm!689567))

(assert (not b_lambda!288817))

(assert (not b!7520437))

(assert (not b!7520465))

(assert (not bm!689576))

(assert (not bm!689575))

(assert (not b!7520486))

(assert (not b!7520488))

(assert (not bm!689573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

