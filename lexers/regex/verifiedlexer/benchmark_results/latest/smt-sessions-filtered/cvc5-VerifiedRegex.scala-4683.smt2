; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243494 () Bool)

(assert start!243494)

(declare-fun b!2492394 () Bool)

(declare-fun e!1581957 () Bool)

(declare-fun tp!798187 () Bool)

(declare-fun tp!798189 () Bool)

(assert (=> b!2492394 (= e!1581957 (and tp!798187 tp!798189))))

(declare-fun b!2492395 () Bool)

(declare-fun tp!798188 () Bool)

(declare-fun tp!798190 () Bool)

(assert (=> b!2492395 (= e!1581957 (and tp!798188 tp!798190))))

(declare-fun b!2492396 () Bool)

(declare-fun tp!798192 () Bool)

(assert (=> b!2492396 (= e!1581957 tp!798192)))

(declare-fun b!2492397 () Bool)

(declare-fun tp_is_empty!12535 () Bool)

(assert (=> b!2492397 (= e!1581957 tp_is_empty!12535)))

(declare-fun b!2492393 () Bool)

(declare-fun res!1054366 () Bool)

(declare-fun e!1581958 () Bool)

(assert (=> b!2492393 (=> (not res!1054366) (not e!1581958))))

(declare-datatypes ((C!14838 0))(
  ( (C!14839 (val!9071 Int)) )
))
(declare-datatypes ((List!29405 0))(
  ( (Nil!29305) (Cons!29305 (h!34725 C!14838) (t!211104 List!29405)) )
))
(declare-fun tl!4068 () List!29405)

(declare-datatypes ((Regex!7340 0))(
  ( (ElementMatch!7340 (c!396276 C!14838)) (Concat!12036 (regOne!15192 Regex!7340) (regTwo!15192 Regex!7340)) (EmptyExpr!7340) (Star!7340 (reg!7669 Regex!7340)) (EmptyLang!7340) (Union!7340 (regOne!15193 Regex!7340) (regTwo!15193 Regex!7340)) )
))
(declare-fun r!27340 () Regex!7340)

(declare-fun c!14016 () C!14838)

(declare-fun nullable!2257 (Regex!7340) Bool)

(declare-fun derivative!35 (Regex!7340 List!29405) Regex!7340)

(declare-fun derivativeStep!1909 (Regex!7340 C!14838) Regex!7340)

(assert (=> b!2492393 (= res!1054366 (nullable!2257 (derivative!35 (derivativeStep!1909 (regTwo!15193 r!27340) c!14016) tl!4068)))))

(declare-fun res!1054367 () Bool)

(assert (=> start!243494 (=> (not res!1054367) (not e!1581958))))

(declare-fun validRegex!2966 (Regex!7340) Bool)

(assert (=> start!243494 (= res!1054367 (validRegex!2966 r!27340))))

(assert (=> start!243494 e!1581958))

(assert (=> start!243494 e!1581957))

(assert (=> start!243494 tp_is_empty!12535))

(declare-fun e!1581959 () Bool)

(assert (=> start!243494 e!1581959))

(declare-fun b!2492398 () Bool)

(declare-fun res!1054365 () Bool)

(assert (=> b!2492398 (=> (not res!1054365) (not e!1581958))))

(assert (=> b!2492398 (= res!1054365 (and (not (is-EmptyExpr!7340 r!27340)) (not (is-EmptyLang!7340 r!27340)) (not (is-ElementMatch!7340 r!27340)) (is-Union!7340 r!27340)))))

(declare-fun b!2492399 () Bool)

(declare-fun res!1054363 () Bool)

(assert (=> b!2492399 (=> (not res!1054363) (not e!1581958))))

(assert (=> b!2492399 (= res!1054363 (not (nullable!2257 (derivative!35 (derivativeStep!1909 (regOne!15193 r!27340) c!14016) tl!4068))))))

(declare-fun b!2492400 () Bool)

(assert (=> b!2492400 (= e!1581958 false)))

(declare-fun b!2492401 () Bool)

(declare-fun res!1054364 () Bool)

(assert (=> b!2492401 (=> (not res!1054364) (not e!1581958))))

(assert (=> b!2492401 (= res!1054364 (nullable!2257 (derivative!35 (derivativeStep!1909 r!27340 c!14016) tl!4068)))))

(declare-fun b!2492402 () Bool)

(declare-fun tp!798191 () Bool)

(assert (=> b!2492402 (= e!1581959 (and tp_is_empty!12535 tp!798191))))

(assert (= (and start!243494 res!1054367) b!2492401))

(assert (= (and b!2492401 res!1054364) b!2492398))

(assert (= (and b!2492398 res!1054365) b!2492399))

(assert (= (and b!2492399 res!1054363) b!2492393))

(assert (= (and b!2492393 res!1054366) b!2492400))

(assert (= (and start!243494 (is-ElementMatch!7340 r!27340)) b!2492397))

(assert (= (and start!243494 (is-Concat!12036 r!27340)) b!2492394))

(assert (= (and start!243494 (is-Star!7340 r!27340)) b!2492396))

(assert (= (and start!243494 (is-Union!7340 r!27340)) b!2492395))

(assert (= (and start!243494 (is-Cons!29305 tl!4068)) b!2492402))

(declare-fun m!2858537 () Bool)

(assert (=> b!2492393 m!2858537))

(assert (=> b!2492393 m!2858537))

(declare-fun m!2858539 () Bool)

(assert (=> b!2492393 m!2858539))

(assert (=> b!2492393 m!2858539))

(declare-fun m!2858541 () Bool)

(assert (=> b!2492393 m!2858541))

(declare-fun m!2858543 () Bool)

(assert (=> start!243494 m!2858543))

(declare-fun m!2858545 () Bool)

(assert (=> b!2492399 m!2858545))

(assert (=> b!2492399 m!2858545))

(declare-fun m!2858547 () Bool)

(assert (=> b!2492399 m!2858547))

(assert (=> b!2492399 m!2858547))

(declare-fun m!2858549 () Bool)

(assert (=> b!2492399 m!2858549))

(declare-fun m!2858551 () Bool)

(assert (=> b!2492401 m!2858551))

(assert (=> b!2492401 m!2858551))

(declare-fun m!2858553 () Bool)

(assert (=> b!2492401 m!2858553))

(assert (=> b!2492401 m!2858553))

(declare-fun m!2858555 () Bool)

(assert (=> b!2492401 m!2858555))

(push 1)

(assert (not b!2492401))

(assert (not b!2492393))

(assert (not b!2492395))

(assert (not b!2492396))

(assert (not b!2492394))

(assert (not b!2492399))

(assert (not start!243494))

(assert (not b!2492402))

(assert tp_is_empty!12535)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

