; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!744116 () Bool)

(assert start!744116)

(declare-fun b!7875989 () Bool)

(declare-fun e!4651770 () Bool)

(declare-fun tp!2339471 () Bool)

(assert (=> b!7875989 (= e!4651770 tp!2339471)))

(declare-fun b!7875990 () Bool)

(declare-fun res!3128361 () Bool)

(declare-fun e!4651768 () Bool)

(assert (=> b!7875990 (=> (not res!3128361) (not e!4651768))))

(declare-datatypes ((C!42658 0))(
  ( (C!42659 (val!31791 Int)) )
))
(declare-datatypes ((Regex!21166 0))(
  ( (ElementMatch!21166 (c!1446448 C!42658)) (Concat!30011 (regOne!42844 Regex!21166) (regTwo!42844 Regex!21166)) (EmptyExpr!21166) (Star!21166 (reg!21495 Regex!21166)) (EmptyLang!21166) (Union!21166 (regOne!42845 Regex!21166) (regTwo!42845 Regex!21166)) )
))
(declare-fun r2!6138 () Regex!21166)

(declare-fun validRegex!11576 (Regex!21166) Bool)

(assert (=> b!7875990 (= res!3128361 (validRegex!11576 r2!6138))))

(declare-fun res!3128360 () Bool)

(assert (=> start!744116 (=> (not res!3128360) (not e!4651768))))

(declare-fun r1!6200 () Regex!21166)

(assert (=> start!744116 (= res!3128360 (validRegex!11576 r1!6200))))

(assert (=> start!744116 e!4651768))

(assert (=> start!744116 e!4651770))

(declare-fun e!4651771 () Bool)

(assert (=> start!744116 e!4651771))

(declare-fun e!4651769 () Bool)

(assert (=> start!744116 e!4651769))

(declare-fun b!7875991 () Bool)

(declare-fun tp!2339473 () Bool)

(declare-fun tp!2339464 () Bool)

(assert (=> b!7875991 (= e!4651771 (and tp!2339473 tp!2339464))))

(declare-fun b!7875992 () Bool)

(declare-fun tp_is_empty!52731 () Bool)

(declare-fun tp!2339468 () Bool)

(assert (=> b!7875992 (= e!4651769 (and tp_is_empty!52731 tp!2339468))))

(declare-fun b!7875993 () Bool)

(declare-fun tp!2339469 () Bool)

(declare-fun tp!2339467 () Bool)

(assert (=> b!7875993 (= e!4651770 (and tp!2339469 tp!2339467))))

(declare-fun b!7875994 () Bool)

(assert (=> b!7875994 (= e!4651770 tp_is_empty!52731)))

(declare-fun b!7875995 () Bool)

(assert (=> b!7875995 (= e!4651771 tp_is_empty!52731)))

(declare-fun b!7875996 () Bool)

(declare-fun tp!2339463 () Bool)

(declare-fun tp!2339466 () Bool)

(assert (=> b!7875996 (= e!4651770 (and tp!2339463 tp!2339466))))

(declare-fun b!7875997 () Bool)

(declare-fun tp!2339472 () Bool)

(declare-fun tp!2339465 () Bool)

(assert (=> b!7875997 (= e!4651771 (and tp!2339472 tp!2339465))))

(declare-fun b!7875998 () Bool)

(declare-fun res!3128359 () Bool)

(assert (=> b!7875998 (=> (not res!3128359) (not e!4651768))))

(declare-datatypes ((List!74025 0))(
  ( (Nil!73901) (Cons!73901 (h!80349 C!42658) (t!388760 List!74025)) )
))
(declare-fun s!14219 () List!74025)

(declare-fun matchR!10602 (Regex!21166 List!74025) Bool)

(assert (=> b!7875998 (= res!3128359 (matchR!10602 r1!6200 s!14219))))

(declare-fun b!7875999 () Bool)

(declare-fun tp!2339470 () Bool)

(assert (=> b!7875999 (= e!4651771 tp!2339470)))

(declare-fun b!7876000 () Bool)

(declare-fun ListPrimitiveSize!469 (List!74025) Int)

(assert (=> b!7876000 (= e!4651768 (< (ListPrimitiveSize!469 s!14219) 0))))

(assert (= (and start!744116 res!3128360) b!7875990))

(assert (= (and b!7875990 res!3128361) b!7875998))

(assert (= (and b!7875998 res!3128359) b!7876000))

(assert (= (and start!744116 (is-ElementMatch!21166 r1!6200)) b!7875994))

(assert (= (and start!744116 (is-Concat!30011 r1!6200)) b!7875996))

(assert (= (and start!744116 (is-Star!21166 r1!6200)) b!7875989))

(assert (= (and start!744116 (is-Union!21166 r1!6200)) b!7875993))

(assert (= (and start!744116 (is-ElementMatch!21166 r2!6138)) b!7875995))

(assert (= (and start!744116 (is-Concat!30011 r2!6138)) b!7875997))

(assert (= (and start!744116 (is-Star!21166 r2!6138)) b!7875999))

(assert (= (and start!744116 (is-Union!21166 r2!6138)) b!7875991))

(assert (= (and start!744116 (is-Cons!73901 s!14219)) b!7875992))

(declare-fun m!8266348 () Bool)

(assert (=> b!7875990 m!8266348))

(declare-fun m!8266350 () Bool)

(assert (=> start!744116 m!8266350))

(declare-fun m!8266352 () Bool)

(assert (=> b!7875998 m!8266352))

(declare-fun m!8266354 () Bool)

(assert (=> b!7876000 m!8266354))

(push 1)

(assert (not b!7875997))

(assert (not b!7875999))

(assert (not start!744116))

(assert (not b!7875993))

(assert (not b!7875992))

(assert (not b!7875998))

(assert tp_is_empty!52731)

(assert (not b!7875996))

(assert (not b!7876000))

(assert (not b!7875989))

(assert (not b!7875990))

(assert (not b!7875991))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2355652 () Bool)

(declare-fun lt!2680990 () Int)

(assert (=> d!2355652 (>= lt!2680990 0)))

(declare-fun e!4651786 () Int)

(assert (=> d!2355652 (= lt!2680990 e!4651786)))

(declare-fun c!1446452 () Bool)

(assert (=> d!2355652 (= c!1446452 (is-Nil!73901 s!14219))))

(assert (=> d!2355652 (= (ListPrimitiveSize!469 s!14219) lt!2680990)))

(declare-fun b!7876041 () Bool)

(assert (=> b!7876041 (= e!4651786 0)))

(declare-fun b!7876042 () Bool)

(assert (=> b!7876042 (= e!4651786 (+ 1 (ListPrimitiveSize!469 (t!388760 s!14219))))))

(assert (= (and d!2355652 c!1446452) b!7876041))

(assert (= (and d!2355652 (not c!1446452)) b!7876042))

(declare-fun m!8266364 () Bool)

(assert (=> b!7876042 m!8266364))

(assert (=> b!7876000 d!2355652))

(declare-fun b!7876061 () Bool)

(declare-fun res!3128382 () Bool)

(declare-fun e!4651804 () Bool)

(assert (=> b!7876061 (=> res!3128382 e!4651804)))

(assert (=> b!7876061 (= res!3128382 (not (is-Concat!30011 r1!6200)))))

(declare-fun e!4651802 () Bool)

(assert (=> b!7876061 (= e!4651802 e!4651804)))

(declare-fun b!7876062 () Bool)

(declare-fun e!4651806 () Bool)

(declare-fun call!730385 () Bool)

(assert (=> b!7876062 (= e!4651806 call!730385)))

(declare-fun b!7876063 () Bool)

(declare-fun e!4651807 () Bool)

(declare-fun call!730384 () Bool)

(assert (=> b!7876063 (= e!4651807 call!730384)))

(declare-fun b!7876064 () Bool)

(declare-fun e!4651805 () Bool)

(assert (=> b!7876064 (= e!4651805 e!4651806)))

(declare-fun res!3128383 () Bool)

(declare-fun nullable!9430 (Regex!21166) Bool)

(assert (=> b!7876064 (= res!3128383 (not (nullable!9430 (reg!21495 r1!6200))))))

(assert (=> b!7876064 (=> (not res!3128383) (not e!4651806))))

(declare-fun b!7876065 () Bool)

(declare-fun e!4651803 () Bool)

(assert (=> b!7876065 (= e!4651804 e!4651803)))

(declare-fun res!3128381 () Bool)

(assert (=> b!7876065 (=> (not res!3128381) (not e!4651803))))

(assert (=> b!7876065 (= res!3128381 call!730384)))

(declare-fun bm!730379 () Bool)

(declare-fun call!730383 () Bool)

(assert (=> bm!730379 (= call!730383 call!730385)))

(declare-fun b!7876066 () Bool)

(declare-fun e!4651801 () Bool)

(assert (=> b!7876066 (= e!4651801 e!4651805)))

(declare-fun c!1446457 () Bool)

(assert (=> b!7876066 (= c!1446457 (is-Star!21166 r1!6200))))

(declare-fun b!7876067 () Bool)

(declare-fun res!3128384 () Bool)

(assert (=> b!7876067 (=> (not res!3128384) (not e!4651807))))

(assert (=> b!7876067 (= res!3128384 call!730383)))

(assert (=> b!7876067 (= e!4651802 e!4651807)))

(declare-fun b!7876068 () Bool)

(assert (=> b!7876068 (= e!4651803 call!730383)))

(declare-fun d!2355654 () Bool)

(declare-fun res!3128385 () Bool)

(assert (=> d!2355654 (=> res!3128385 e!4651801)))

(assert (=> d!2355654 (= res!3128385 (is-ElementMatch!21166 r1!6200))))

(assert (=> d!2355654 (= (validRegex!11576 r1!6200) e!4651801)))

(declare-fun bm!730378 () Bool)

(declare-fun c!1446458 () Bool)

(assert (=> bm!730378 (= call!730384 (validRegex!11576 (ite c!1446458 (regTwo!42845 r1!6200) (regOne!42844 r1!6200))))))

(declare-fun bm!730380 () Bool)

(assert (=> bm!730380 (= call!730385 (validRegex!11576 (ite c!1446457 (reg!21495 r1!6200) (ite c!1446458 (regOne!42845 r1!6200) (regTwo!42844 r1!6200)))))))

(declare-fun b!7876069 () Bool)

(assert (=> b!7876069 (= e!4651805 e!4651802)))

(assert (=> b!7876069 (= c!1446458 (is-Union!21166 r1!6200))))

(assert (= (and d!2355654 (not res!3128385)) b!7876066))

(assert (= (and b!7876066 c!1446457) b!7876064))

(assert (= (and b!7876066 (not c!1446457)) b!7876069))

(assert (= (and b!7876064 res!3128383) b!7876062))

(assert (= (and b!7876069 c!1446458) b!7876067))

(assert (= (and b!7876069 (not c!1446458)) b!7876061))

(assert (= (and b!7876067 res!3128384) b!7876063))

(assert (= (and b!7876061 (not res!3128382)) b!7876065))

(assert (= (and b!7876065 res!3128381) b!7876068))

(assert (= (or b!7876063 b!7876065) bm!730378))

(assert (= (or b!7876067 b!7876068) bm!730379))

(assert (= (or b!7876062 bm!730379) bm!730380))

(declare-fun m!8266366 () Bool)

(assert (=> b!7876064 m!8266366))

(declare-fun m!8266368 () Bool)

(assert (=> bm!730378 m!8266368))

(declare-fun m!8266370 () Bool)

(assert (=> bm!730380 m!8266370))

(assert (=> start!744116 d!2355654))

(declare-fun b!7876126 () Bool)

(declare-fun e!4651842 () Bool)

(declare-fun e!4651837 () Bool)

(assert (=> b!7876126 (= e!4651842 e!4651837)))

(declare-fun c!1446473 () Bool)

(assert (=> b!7876126 (= c!1446473 (is-EmptyLang!21166 r1!6200))))

(declare-fun d!2355656 () Bool)

(assert (=> d!2355656 e!4651842))

(declare-fun c!1446472 () Bool)

(assert (=> d!2355656 (= c!1446472 (is-EmptyExpr!21166 r1!6200))))

(declare-fun lt!2680995 () Bool)

(declare-fun e!4651840 () Bool)

(assert (=> d!2355656 (= lt!2680995 e!4651840)))

(declare-fun c!1446471 () Bool)

(declare-fun isEmpty!42397 (List!74025) Bool)

(assert (=> d!2355656 (= c!1446471 (isEmpty!42397 s!14219))))

(assert (=> d!2355656 (validRegex!11576 r1!6200)))

(assert (=> d!2355656 (= (matchR!10602 r1!6200 s!14219) lt!2680995)))

(declare-fun bm!730385 () Bool)

(declare-fun call!730390 () Bool)

(assert (=> bm!730385 (= call!730390 (isEmpty!42397 s!14219))))

(declare-fun b!7876127 () Bool)

(declare-fun e!4651839 () Bool)

(declare-fun e!4651836 () Bool)

(assert (=> b!7876127 (= e!4651839 e!4651836)))

(declare-fun res!3128423 () Bool)

(assert (=> b!7876127 (=> res!3128423 e!4651836)))

(assert (=> b!7876127 (= res!3128423 call!730390)))

(declare-fun b!7876128 () Bool)

(declare-fun derivativeStep!6397 (Regex!21166 C!42658) Regex!21166)

(declare-fun head!16108 (List!74025) C!42658)

(declare-fun tail!15651 (List!74025) List!74025)

(assert (=> b!7876128 (= e!4651840 (matchR!10602 (derivativeStep!6397 r1!6200 (head!16108 s!14219)) (tail!15651 s!14219)))))

(declare-fun b!7876129 () Bool)

(declare-fun e!4651841 () Bool)

(assert (=> b!7876129 (= e!4651841 (= (head!16108 s!14219) (c!1446448 r1!6200)))))

(declare-fun b!7876130 () Bool)

(assert (=> b!7876130 (= e!4651836 (not (= (head!16108 s!14219) (c!1446448 r1!6200))))))

(declare-fun b!7876131 () Bool)

(declare-fun res!3128418 () Bool)

(declare-fun e!4651838 () Bool)

(assert (=> b!7876131 (=> res!3128418 e!4651838)))

(assert (=> b!7876131 (= res!3128418 (not (is-ElementMatch!21166 r1!6200)))))

(assert (=> b!7876131 (= e!4651837 e!4651838)))

(declare-fun b!7876132 () Bool)

(assert (=> b!7876132 (= e!4651840 (nullable!9430 r1!6200))))

(declare-fun b!7876133 () Bool)

(declare-fun res!3128424 () Bool)

(assert (=> b!7876133 (=> res!3128424 e!4651838)))

(assert (=> b!7876133 (= res!3128424 e!4651841)))

(declare-fun res!3128421 () Bool)

(assert (=> b!7876133 (=> (not res!3128421) (not e!4651841))))

(assert (=> b!7876133 (= res!3128421 lt!2680995)))

(declare-fun b!7876134 () Bool)

(declare-fun res!3128420 () Bool)

(assert (=> b!7876134 (=> (not res!3128420) (not e!4651841))))

(assert (=> b!7876134 (= res!3128420 (isEmpty!42397 (tail!15651 s!14219)))))

(declare-fun b!7876135 () Bool)

(assert (=> b!7876135 (= e!4651837 (not lt!2680995))))

(declare-fun b!7876136 () Bool)

(declare-fun res!3128425 () Bool)

(assert (=> b!7876136 (=> res!3128425 e!4651836)))

(assert (=> b!7876136 (= res!3128425 (not (isEmpty!42397 (tail!15651 s!14219))))))

(declare-fun b!7876137 () Bool)

(assert (=> b!7876137 (= e!4651842 (= lt!2680995 call!730390))))

(declare-fun b!7876138 () Bool)

(assert (=> b!7876138 (= e!4651838 e!4651839)))

(declare-fun res!3128419 () Bool)

(assert (=> b!7876138 (=> (not res!3128419) (not e!4651839))))

(assert (=> b!7876138 (= res!3128419 (not lt!2680995))))

(declare-fun b!7876139 () Bool)

(declare-fun res!3128422 () Bool)

(assert (=> b!7876139 (=> (not res!3128422) (not e!4651841))))

(assert (=> b!7876139 (= res!3128422 (not call!730390))))

(assert (= (and d!2355656 c!1446471) b!7876132))

(assert (= (and d!2355656 (not c!1446471)) b!7876128))

(assert (= (and d!2355656 c!1446472) b!7876137))

(assert (= (and d!2355656 (not c!1446472)) b!7876126))

(assert (= (and b!7876126 c!1446473) b!7876135))

(assert (= (and b!7876126 (not c!1446473)) b!7876131))

(assert (= (and b!7876131 (not res!3128418)) b!7876133))

(assert (= (and b!7876133 res!3128421) b!7876139))

(assert (= (and b!7876139 res!3128422) b!7876134))

(assert (= (and b!7876134 res!3128420) b!7876129))

(assert (= (and b!7876133 (not res!3128424)) b!7876138))

(assert (= (and b!7876138 res!3128419) b!7876127))

(assert (= (and b!7876127 (not res!3128423)) b!7876136))

(assert (= (and b!7876136 (not res!3128425)) b!7876130))

(assert (= (or b!7876137 b!7876127 b!7876139) bm!730385))

(declare-fun m!8266372 () Bool)

(assert (=> b!7876130 m!8266372))

(declare-fun m!8266374 () Bool)

(assert (=> b!7876134 m!8266374))

(assert (=> b!7876134 m!8266374))

(declare-fun m!8266376 () Bool)

(assert (=> b!7876134 m!8266376))

(assert (=> b!7876129 m!8266372))

(assert (=> b!7876136 m!8266374))

(assert (=> b!7876136 m!8266374))

(assert (=> b!7876136 m!8266376))

(declare-fun m!8266378 () Bool)

(assert (=> d!2355656 m!8266378))

(assert (=> d!2355656 m!8266350))

(assert (=> b!7876128 m!8266372))

(assert (=> b!7876128 m!8266372))

(declare-fun m!8266380 () Bool)

(assert (=> b!7876128 m!8266380))

(assert (=> b!7876128 m!8266374))

(assert (=> b!7876128 m!8266380))

(assert (=> b!7876128 m!8266374))

(declare-fun m!8266382 () Bool)

(assert (=> b!7876128 m!8266382))

(assert (=> bm!730385 m!8266378))

(declare-fun m!8266384 () Bool)

(assert (=> b!7876132 m!8266384))

(assert (=> b!7875998 d!2355656))

(declare-fun b!7876140 () Bool)

(declare-fun res!3128427 () Bool)

(declare-fun e!4651846 () Bool)

(assert (=> b!7876140 (=> res!3128427 e!4651846)))

(assert (=> b!7876140 (= res!3128427 (not (is-Concat!30011 r2!6138)))))

(declare-fun e!4651844 () Bool)

(assert (=> b!7876140 (= e!4651844 e!4651846)))

(declare-fun b!7876141 () Bool)

(declare-fun e!4651848 () Bool)

(declare-fun call!730393 () Bool)

(assert (=> b!7876141 (= e!4651848 call!730393)))

(declare-fun b!7876142 () Bool)

(declare-fun e!4651849 () Bool)

(declare-fun call!730392 () Bool)

(assert (=> b!7876142 (= e!4651849 call!730392)))

(declare-fun b!7876143 () Bool)

(declare-fun e!4651847 () Bool)

(assert (=> b!7876143 (= e!4651847 e!4651848)))

(declare-fun res!3128428 () Bool)

(assert (=> b!7876143 (= res!3128428 (not (nullable!9430 (reg!21495 r2!6138))))))

(assert (=> b!7876143 (=> (not res!3128428) (not e!4651848))))

(declare-fun b!7876144 () Bool)

(declare-fun e!4651845 () Bool)

(assert (=> b!7876144 (= e!4651846 e!4651845)))

(declare-fun res!3128426 () Bool)

(assert (=> b!7876144 (=> (not res!3128426) (not e!4651845))))

(assert (=> b!7876144 (= res!3128426 call!730392)))

(declare-fun bm!730387 () Bool)

(declare-fun call!730391 () Bool)

(assert (=> bm!730387 (= call!730391 call!730393)))

(declare-fun b!7876145 () Bool)

(declare-fun e!4651843 () Bool)

(assert (=> b!7876145 (= e!4651843 e!4651847)))

(declare-fun c!1446474 () Bool)

(assert (=> b!7876145 (= c!1446474 (is-Star!21166 r2!6138))))

(declare-fun b!7876146 () Bool)

(declare-fun res!3128429 () Bool)

(assert (=> b!7876146 (=> (not res!3128429) (not e!4651849))))

(assert (=> b!7876146 (= res!3128429 call!730391)))

(assert (=> b!7876146 (= e!4651844 e!4651849)))

(declare-fun b!7876147 () Bool)

(assert (=> b!7876147 (= e!4651845 call!730391)))

(declare-fun d!2355658 () Bool)

(declare-fun res!3128430 () Bool)

(assert (=> d!2355658 (=> res!3128430 e!4651843)))

(assert (=> d!2355658 (= res!3128430 (is-ElementMatch!21166 r2!6138))))

(assert (=> d!2355658 (= (validRegex!11576 r2!6138) e!4651843)))

(declare-fun bm!730386 () Bool)

(declare-fun c!1446475 () Bool)

(assert (=> bm!730386 (= call!730392 (validRegex!11576 (ite c!1446475 (regTwo!42845 r2!6138) (regOne!42844 r2!6138))))))

(declare-fun bm!730388 () Bool)

(assert (=> bm!730388 (= call!730393 (validRegex!11576 (ite c!1446474 (reg!21495 r2!6138) (ite c!1446475 (regOne!42845 r2!6138) (regTwo!42844 r2!6138)))))))

(declare-fun b!7876148 () Bool)

(assert (=> b!7876148 (= e!4651847 e!4651844)))

(assert (=> b!7876148 (= c!1446475 (is-Union!21166 r2!6138))))

(assert (= (and d!2355658 (not res!3128430)) b!7876145))

(assert (= (and b!7876145 c!1446474) b!7876143))

(assert (= (and b!7876145 (not c!1446474)) b!7876148))

(assert (= (and b!7876143 res!3128428) b!7876141))

(assert (= (and b!7876148 c!1446475) b!7876146))

(assert (= (and b!7876148 (not c!1446475)) b!7876140))

(assert (= (and b!7876146 res!3128429) b!7876142))

(assert (= (and b!7876140 (not res!3128427)) b!7876144))

(assert (= (and b!7876144 res!3128426) b!7876147))

(assert (= (or b!7876142 b!7876144) bm!730386))

(assert (= (or b!7876146 b!7876147) bm!730387))

(assert (= (or b!7876141 bm!730387) bm!730388))

(declare-fun m!8266386 () Bool)

(assert (=> b!7876143 m!8266386))

(declare-fun m!8266388 () Bool)

(assert (=> bm!730386 m!8266388))

(declare-fun m!8266390 () Bool)

(assert (=> bm!730388 m!8266390))

(assert (=> b!7875990 d!2355658))

(declare-fun b!7876159 () Bool)

(declare-fun e!4651852 () Bool)

(assert (=> b!7876159 (= e!4651852 tp_is_empty!52731)))

(declare-fun b!7876162 () Bool)

(declare-fun tp!2339517 () Bool)

(declare-fun tp!2339518 () Bool)

(assert (=> b!7876162 (= e!4651852 (and tp!2339517 tp!2339518))))

(declare-fun b!7876160 () Bool)

(declare-fun tp!2339519 () Bool)

(declare-fun tp!2339520 () Bool)

(assert (=> b!7876160 (= e!4651852 (and tp!2339519 tp!2339520))))

(assert (=> b!7875989 (= tp!2339471 e!4651852)))

(declare-fun b!7876161 () Bool)

(declare-fun tp!2339521 () Bool)

(assert (=> b!7876161 (= e!4651852 tp!2339521)))

(assert (= (and b!7875989 (is-ElementMatch!21166 (reg!21495 r1!6200))) b!7876159))

(assert (= (and b!7875989 (is-Concat!30011 (reg!21495 r1!6200))) b!7876160))

(assert (= (and b!7875989 (is-Star!21166 (reg!21495 r1!6200))) b!7876161))

(assert (= (and b!7875989 (is-Union!21166 (reg!21495 r1!6200))) b!7876162))

(declare-fun b!7876163 () Bool)

(declare-fun e!4651853 () Bool)

(assert (=> b!7876163 (= e!4651853 tp_is_empty!52731)))

(declare-fun b!7876166 () Bool)

(declare-fun tp!2339522 () Bool)

(declare-fun tp!2339523 () Bool)

(assert (=> b!7876166 (= e!4651853 (and tp!2339522 tp!2339523))))

(declare-fun b!7876164 () Bool)

(declare-fun tp!2339524 () Bool)

(declare-fun tp!2339525 () Bool)

(assert (=> b!7876164 (= e!4651853 (and tp!2339524 tp!2339525))))

(assert (=> b!7875999 (= tp!2339470 e!4651853)))

(declare-fun b!7876165 () Bool)

(declare-fun tp!2339526 () Bool)

(assert (=> b!7876165 (= e!4651853 tp!2339526)))

(assert (= (and b!7875999 (is-ElementMatch!21166 (reg!21495 r2!6138))) b!7876163))

(assert (= (and b!7875999 (is-Concat!30011 (reg!21495 r2!6138))) b!7876164))

(assert (= (and b!7875999 (is-Star!21166 (reg!21495 r2!6138))) b!7876165))

(assert (= (and b!7875999 (is-Union!21166 (reg!21495 r2!6138))) b!7876166))

(declare-fun b!7876167 () Bool)

(declare-fun e!4651854 () Bool)

(assert (=> b!7876167 (= e!4651854 tp_is_empty!52731)))

(declare-fun b!7876170 () Bool)

(declare-fun tp!2339527 () Bool)

(declare-fun tp!2339528 () Bool)

(assert (=> b!7876170 (= e!4651854 (and tp!2339527 tp!2339528))))

(declare-fun b!7876168 () Bool)

(declare-fun tp!2339529 () Bool)

(declare-fun tp!2339530 () Bool)

(assert (=> b!7876168 (= e!4651854 (and tp!2339529 tp!2339530))))

(assert (=> b!7875993 (= tp!2339469 e!4651854)))

(declare-fun b!7876169 () Bool)

(declare-fun tp!2339531 () Bool)

(assert (=> b!7876169 (= e!4651854 tp!2339531)))

(assert (= (and b!7875993 (is-ElementMatch!21166 (regOne!42845 r1!6200))) b!7876167))

(assert (= (and b!7875993 (is-Concat!30011 (regOne!42845 r1!6200))) b!7876168))

(assert (= (and b!7875993 (is-Star!21166 (regOne!42845 r1!6200))) b!7876169))

(assert (= (and b!7875993 (is-Union!21166 (regOne!42845 r1!6200))) b!7876170))

(declare-fun b!7876171 () Bool)

(declare-fun e!4651855 () Bool)

(assert (=> b!7876171 (= e!4651855 tp_is_empty!52731)))

(declare-fun b!7876174 () Bool)

(declare-fun tp!2339532 () Bool)

(declare-fun tp!2339533 () Bool)

(assert (=> b!7876174 (= e!4651855 (and tp!2339532 tp!2339533))))

(declare-fun b!7876172 () Bool)

(declare-fun tp!2339534 () Bool)

(declare-fun tp!2339535 () Bool)

(assert (=> b!7876172 (= e!4651855 (and tp!2339534 tp!2339535))))

(assert (=> b!7875993 (= tp!2339467 e!4651855)))

(declare-fun b!7876173 () Bool)

(declare-fun tp!2339536 () Bool)

(assert (=> b!7876173 (= e!4651855 tp!2339536)))

(assert (= (and b!7875993 (is-ElementMatch!21166 (regTwo!42845 r1!6200))) b!7876171))

(assert (= (and b!7875993 (is-Concat!30011 (regTwo!42845 r1!6200))) b!7876172))

(assert (= (and b!7875993 (is-Star!21166 (regTwo!42845 r1!6200))) b!7876173))

(assert (= (and b!7875993 (is-Union!21166 (regTwo!42845 r1!6200))) b!7876174))

(declare-fun b!7876179 () Bool)

(declare-fun e!4651858 () Bool)

(declare-fun tp!2339539 () Bool)

(assert (=> b!7876179 (= e!4651858 (and tp_is_empty!52731 tp!2339539))))

(assert (=> b!7875992 (= tp!2339468 e!4651858)))

(assert (= (and b!7875992 (is-Cons!73901 (t!388760 s!14219))) b!7876179))

(declare-fun b!7876180 () Bool)

(declare-fun e!4651859 () Bool)

(assert (=> b!7876180 (= e!4651859 tp_is_empty!52731)))

(declare-fun b!7876183 () Bool)

(declare-fun tp!2339540 () Bool)

(declare-fun tp!2339541 () Bool)

(assert (=> b!7876183 (= e!4651859 (and tp!2339540 tp!2339541))))

(declare-fun b!7876181 () Bool)

(declare-fun tp!2339542 () Bool)

(declare-fun tp!2339543 () Bool)

(assert (=> b!7876181 (= e!4651859 (and tp!2339542 tp!2339543))))

(assert (=> b!7875997 (= tp!2339472 e!4651859)))

(declare-fun b!7876182 () Bool)

(declare-fun tp!2339544 () Bool)

(assert (=> b!7876182 (= e!4651859 tp!2339544)))

(assert (= (and b!7875997 (is-ElementMatch!21166 (regOne!42844 r2!6138))) b!7876180))

(assert (= (and b!7875997 (is-Concat!30011 (regOne!42844 r2!6138))) b!7876181))

(assert (= (and b!7875997 (is-Star!21166 (regOne!42844 r2!6138))) b!7876182))

(assert (= (and b!7875997 (is-Union!21166 (regOne!42844 r2!6138))) b!7876183))

(declare-fun b!7876184 () Bool)

(declare-fun e!4651860 () Bool)

(assert (=> b!7876184 (= e!4651860 tp_is_empty!52731)))

(declare-fun b!7876187 () Bool)

(declare-fun tp!2339545 () Bool)

(declare-fun tp!2339546 () Bool)

(assert (=> b!7876187 (= e!4651860 (and tp!2339545 tp!2339546))))

(declare-fun b!7876185 () Bool)

(declare-fun tp!2339547 () Bool)

(declare-fun tp!2339548 () Bool)

(assert (=> b!7876185 (= e!4651860 (and tp!2339547 tp!2339548))))

(assert (=> b!7875997 (= tp!2339465 e!4651860)))

(declare-fun b!7876186 () Bool)

(declare-fun tp!2339549 () Bool)

(assert (=> b!7876186 (= e!4651860 tp!2339549)))

(assert (= (and b!7875997 (is-ElementMatch!21166 (regTwo!42844 r2!6138))) b!7876184))

(assert (= (and b!7875997 (is-Concat!30011 (regTwo!42844 r2!6138))) b!7876185))

(assert (= (and b!7875997 (is-Star!21166 (regTwo!42844 r2!6138))) b!7876186))

(assert (= (and b!7875997 (is-Union!21166 (regTwo!42844 r2!6138))) b!7876187))

(declare-fun b!7876188 () Bool)

(declare-fun e!4651861 () Bool)

(assert (=> b!7876188 (= e!4651861 tp_is_empty!52731)))

(declare-fun b!7876191 () Bool)

(declare-fun tp!2339550 () Bool)

(declare-fun tp!2339551 () Bool)

(assert (=> b!7876191 (= e!4651861 (and tp!2339550 tp!2339551))))

(declare-fun b!7876189 () Bool)

(declare-fun tp!2339552 () Bool)

(declare-fun tp!2339553 () Bool)

(assert (=> b!7876189 (= e!4651861 (and tp!2339552 tp!2339553))))

(assert (=> b!7875991 (= tp!2339473 e!4651861)))

(declare-fun b!7876190 () Bool)

(declare-fun tp!2339554 () Bool)

(assert (=> b!7876190 (= e!4651861 tp!2339554)))

(assert (= (and b!7875991 (is-ElementMatch!21166 (regOne!42845 r2!6138))) b!7876188))

(assert (= (and b!7875991 (is-Concat!30011 (regOne!42845 r2!6138))) b!7876189))

(assert (= (and b!7875991 (is-Star!21166 (regOne!42845 r2!6138))) b!7876190))

(assert (= (and b!7875991 (is-Union!21166 (regOne!42845 r2!6138))) b!7876191))

(declare-fun b!7876192 () Bool)

(declare-fun e!4651862 () Bool)

(assert (=> b!7876192 (= e!4651862 tp_is_empty!52731)))

(declare-fun b!7876195 () Bool)

(declare-fun tp!2339555 () Bool)

(declare-fun tp!2339556 () Bool)

(assert (=> b!7876195 (= e!4651862 (and tp!2339555 tp!2339556))))

(declare-fun b!7876193 () Bool)

(declare-fun tp!2339557 () Bool)

(declare-fun tp!2339558 () Bool)

(assert (=> b!7876193 (= e!4651862 (and tp!2339557 tp!2339558))))

(assert (=> b!7875991 (= tp!2339464 e!4651862)))

(declare-fun b!7876194 () Bool)

(declare-fun tp!2339559 () Bool)

(assert (=> b!7876194 (= e!4651862 tp!2339559)))

(assert (= (and b!7875991 (is-ElementMatch!21166 (regTwo!42845 r2!6138))) b!7876192))

(assert (= (and b!7875991 (is-Concat!30011 (regTwo!42845 r2!6138))) b!7876193))

(assert (= (and b!7875991 (is-Star!21166 (regTwo!42845 r2!6138))) b!7876194))

(assert (= (and b!7875991 (is-Union!21166 (regTwo!42845 r2!6138))) b!7876195))

(declare-fun b!7876196 () Bool)

(declare-fun e!4651863 () Bool)

(assert (=> b!7876196 (= e!4651863 tp_is_empty!52731)))

(declare-fun b!7876199 () Bool)

(declare-fun tp!2339560 () Bool)

(declare-fun tp!2339561 () Bool)

(assert (=> b!7876199 (= e!4651863 (and tp!2339560 tp!2339561))))

(declare-fun b!7876197 () Bool)

(declare-fun tp!2339562 () Bool)

(declare-fun tp!2339563 () Bool)

(assert (=> b!7876197 (= e!4651863 (and tp!2339562 tp!2339563))))

(assert (=> b!7875996 (= tp!2339463 e!4651863)))

(declare-fun b!7876198 () Bool)

(declare-fun tp!2339564 () Bool)

(assert (=> b!7876198 (= e!4651863 tp!2339564)))

(assert (= (and b!7875996 (is-ElementMatch!21166 (regOne!42844 r1!6200))) b!7876196))

(assert (= (and b!7875996 (is-Concat!30011 (regOne!42844 r1!6200))) b!7876197))

(assert (= (and b!7875996 (is-Star!21166 (regOne!42844 r1!6200))) b!7876198))

(assert (= (and b!7875996 (is-Union!21166 (regOne!42844 r1!6200))) b!7876199))

(declare-fun b!7876200 () Bool)

(declare-fun e!4651864 () Bool)

(assert (=> b!7876200 (= e!4651864 tp_is_empty!52731)))

(declare-fun b!7876203 () Bool)

(declare-fun tp!2339565 () Bool)

(declare-fun tp!2339566 () Bool)

(assert (=> b!7876203 (= e!4651864 (and tp!2339565 tp!2339566))))

(declare-fun b!7876201 () Bool)

(declare-fun tp!2339567 () Bool)

(declare-fun tp!2339568 () Bool)

(assert (=> b!7876201 (= e!4651864 (and tp!2339567 tp!2339568))))

(assert (=> b!7875996 (= tp!2339466 e!4651864)))

(declare-fun b!7876202 () Bool)

(declare-fun tp!2339569 () Bool)

(assert (=> b!7876202 (= e!4651864 tp!2339569)))

(assert (= (and b!7875996 (is-ElementMatch!21166 (regTwo!42844 r1!6200))) b!7876200))

(assert (= (and b!7875996 (is-Concat!30011 (regTwo!42844 r1!6200))) b!7876201))

(assert (= (and b!7875996 (is-Star!21166 (regTwo!42844 r1!6200))) b!7876202))

(assert (= (and b!7875996 (is-Union!21166 (regTwo!42844 r1!6200))) b!7876203))

(push 1)

(assert (not b!7876197))

(assert (not b!7876169))

(assert (not b!7876190))

(assert (not b!7876189))

(assert (not bm!730388))

(assert (not b!7876129))

(assert (not b!7876193))

(assert (not b!7876199))

(assert (not b!7876172))

(assert (not b!7876195))

(assert (not b!7876202))

(assert (not b!7876181))

(assert (not b!7876134))

(assert (not b!7876198))

(assert (not bm!730380))

(assert (not b!7876042))

(assert (not b!7876136))

(assert (not b!7876173))

(assert (not b!7876165))

(assert (not b!7876187))

(assert (not b!7876161))

(assert (not b!7876160))

(assert (not b!7876174))

(assert (not b!7876132))

(assert (not b!7876185))

(assert tp_is_empty!52731)

(assert (not b!7876179))

(assert (not b!7876143))

(assert (not b!7876166))

(assert (not b!7876128))

(assert (not bm!730378))

(assert (not b!7876186))

(assert (not b!7876191))

(assert (not b!7876170))

(assert (not b!7876203))

(assert (not d!2355656))

(assert (not b!7876164))

(assert (not b!7876162))

(assert (not bm!730386))

(assert (not b!7876183))

(assert (not b!7876064))

(assert (not b!7876194))

(assert (not b!7876201))

(assert (not b!7876182))

(assert (not bm!730385))

(assert (not b!7876130))

(assert (not b!7876168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

