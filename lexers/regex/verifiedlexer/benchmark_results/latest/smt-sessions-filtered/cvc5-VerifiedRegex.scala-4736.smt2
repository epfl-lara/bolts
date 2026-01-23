; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244702 () Bool)

(assert start!244702)

(declare-fun b!2508469 () Bool)

(declare-fun e!1590103 () Bool)

(declare-fun tp_is_empty!12747 () Bool)

(assert (=> b!2508469 (= e!1590103 tp_is_empty!12747)))

(declare-fun b!2508470 () Bool)

(declare-fun res!1060521 () Bool)

(declare-fun e!1590102 () Bool)

(assert (=> b!2508470 (=> (not res!1060521) (not e!1590102))))

(declare-datatypes ((C!15050 0))(
  ( (C!15051 (val!9177 Int)) )
))
(declare-datatypes ((Regex!7446 0))(
  ( (ElementMatch!7446 (c!399496 C!15050)) (Concat!12142 (regOne!15404 Regex!7446) (regTwo!15404 Regex!7446)) (EmptyExpr!7446) (Star!7446 (reg!7775 Regex!7446)) (EmptyLang!7446) (Union!7446 (regOne!15405 Regex!7446) (regTwo!15405 Regex!7446)) )
))
(declare-fun r!27340 () Regex!7446)

(assert (=> b!2508470 (= res!1060521 (and (not (is-EmptyExpr!7446 r!27340)) (not (is-EmptyLang!7446 r!27340)) (not (is-ElementMatch!7446 r!27340)) (not (is-Union!7446 r!27340)) (not (is-Star!7446 r!27340))))))

(declare-fun b!2508471 () Bool)

(declare-fun res!1060524 () Bool)

(assert (=> b!2508471 (=> (not res!1060524) (not e!1590102))))

(declare-datatypes ((List!29511 0))(
  ( (Nil!29411) (Cons!29411 (h!34831 C!15050) (t!211210 List!29511)) )
))
(declare-fun tl!4068 () List!29511)

(declare-fun c!14016 () C!15050)

(declare-fun nullable!2363 (Regex!7446) Bool)

(declare-fun derivative!141 (Regex!7446 List!29511) Regex!7446)

(declare-fun derivativeStep!2015 (Regex!7446 C!15050) Regex!7446)

(assert (=> b!2508471 (= res!1060524 (nullable!2363 (derivative!141 (derivativeStep!2015 r!27340 c!14016) tl!4068)))))

(declare-fun b!2508472 () Bool)

(declare-fun tp!802377 () Bool)

(declare-fun tp!802380 () Bool)

(assert (=> b!2508472 (= e!1590103 (and tp!802377 tp!802380))))

(declare-fun b!2508474 () Bool)

(declare-fun e!1590101 () Bool)

(declare-fun tp!802379 () Bool)

(assert (=> b!2508474 (= e!1590101 (and tp_is_empty!12747 tp!802379))))

(declare-fun b!2508475 () Bool)

(assert (=> b!2508475 (= e!1590102 false)))

(declare-fun lt!897247 () Bool)

(declare-fun validRegex!3072 (Regex!7446) Bool)

(assert (=> b!2508475 (= lt!897247 (validRegex!3072 (Union!7446 (Concat!12142 (derivativeStep!2015 (regOne!15404 r!27340) c!14016) (regTwo!15404 r!27340)) EmptyLang!7446)))))

(declare-fun b!2508476 () Bool)

(declare-fun tp!802375 () Bool)

(assert (=> b!2508476 (= e!1590103 tp!802375)))

(declare-fun b!2508477 () Bool)

(declare-fun tp!802376 () Bool)

(declare-fun tp!802378 () Bool)

(assert (=> b!2508477 (= e!1590103 (and tp!802376 tp!802378))))

(declare-fun b!2508473 () Bool)

(declare-fun res!1060523 () Bool)

(assert (=> b!2508473 (=> (not res!1060523) (not e!1590102))))

(assert (=> b!2508473 (= res!1060523 (not (nullable!2363 (regOne!15404 r!27340))))))

(declare-fun res!1060522 () Bool)

(assert (=> start!244702 (=> (not res!1060522) (not e!1590102))))

(assert (=> start!244702 (= res!1060522 (validRegex!3072 r!27340))))

(assert (=> start!244702 e!1590102))

(assert (=> start!244702 e!1590103))

(assert (=> start!244702 tp_is_empty!12747))

(assert (=> start!244702 e!1590101))

(assert (= (and start!244702 res!1060522) b!2508471))

(assert (= (and b!2508471 res!1060524) b!2508470))

(assert (= (and b!2508470 res!1060521) b!2508473))

(assert (= (and b!2508473 res!1060523) b!2508475))

(assert (= (and start!244702 (is-ElementMatch!7446 r!27340)) b!2508469))

(assert (= (and start!244702 (is-Concat!12142 r!27340)) b!2508477))

(assert (= (and start!244702 (is-Star!7446 r!27340)) b!2508476))

(assert (= (and start!244702 (is-Union!7446 r!27340)) b!2508472))

(assert (= (and start!244702 (is-Cons!29411 tl!4068)) b!2508474))

(declare-fun m!2868213 () Bool)

(assert (=> b!2508471 m!2868213))

(assert (=> b!2508471 m!2868213))

(declare-fun m!2868215 () Bool)

(assert (=> b!2508471 m!2868215))

(assert (=> b!2508471 m!2868215))

(declare-fun m!2868217 () Bool)

(assert (=> b!2508471 m!2868217))

(declare-fun m!2868219 () Bool)

(assert (=> b!2508475 m!2868219))

(declare-fun m!2868221 () Bool)

(assert (=> b!2508475 m!2868221))

(declare-fun m!2868223 () Bool)

(assert (=> b!2508473 m!2868223))

(declare-fun m!2868225 () Bool)

(assert (=> start!244702 m!2868225))

(push 1)

(assert (not start!244702))

(assert (not b!2508472))

(assert (not b!2508474))

(assert (not b!2508471))

(assert tp_is_empty!12747)

(assert (not b!2508473))

(assert (not b!2508475))

(assert (not b!2508477))

(assert (not b!2508476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

