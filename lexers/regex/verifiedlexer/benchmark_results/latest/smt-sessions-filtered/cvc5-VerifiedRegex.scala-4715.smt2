; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244086 () Bool)

(assert start!244086)

(declare-fun b!2500257 () Bool)

(declare-fun e!1585909 () Bool)

(declare-fun tp!800556 () Bool)

(declare-fun tp!800558 () Bool)

(assert (=> b!2500257 (= e!1585909 (and tp!800556 tp!800558))))

(declare-fun b!2500258 () Bool)

(declare-fun tp_is_empty!12663 () Bool)

(assert (=> b!2500258 (= e!1585909 tp_is_empty!12663)))

(declare-fun b!2500259 () Bool)

(declare-fun res!1057259 () Bool)

(declare-fun e!1585910 () Bool)

(assert (=> b!2500259 (=> (not res!1057259) (not e!1585910))))

(declare-datatypes ((C!14966 0))(
  ( (C!14967 (val!9135 Int)) )
))
(declare-datatypes ((List!29469 0))(
  ( (Nil!29369) (Cons!29369 (h!34789 C!14966) (t!211168 List!29469)) )
))
(declare-fun tl!4068 () List!29469)

(declare-datatypes ((Regex!7404 0))(
  ( (ElementMatch!7404 (c!397784 C!14966)) (Concat!12100 (regOne!15320 Regex!7404) (regTwo!15320 Regex!7404)) (EmptyExpr!7404) (Star!7404 (reg!7733 Regex!7404)) (EmptyLang!7404) (Union!7404 (regOne!15321 Regex!7404) (regTwo!15321 Regex!7404)) )
))
(declare-fun r!27340 () Regex!7404)

(declare-fun c!14016 () C!14966)

(declare-fun nullable!2321 (Regex!7404) Bool)

(declare-fun derivative!99 (Regex!7404 List!29469) Regex!7404)

(declare-fun derivativeStep!1973 (Regex!7404 C!14966) Regex!7404)

(assert (=> b!2500259 (= res!1057259 (nullable!2321 (derivative!99 (derivativeStep!1973 r!27340 c!14016) tl!4068)))))

(declare-fun b!2500260 () Bool)

(declare-fun res!1057261 () Bool)

(assert (=> b!2500260 (=> (not res!1057261) (not e!1585910))))

(assert (=> b!2500260 (= res!1057261 (and (not (is-EmptyExpr!7404 r!27340)) (not (is-EmptyLang!7404 r!27340)) (not (is-ElementMatch!7404 r!27340)) (not (is-Union!7404 r!27340)) (not (is-Star!7404 r!27340))))))

(declare-fun res!1057260 () Bool)

(assert (=> start!244086 (=> (not res!1057260) (not e!1585910))))

(declare-fun validRegex!3030 (Regex!7404) Bool)

(assert (=> start!244086 (= res!1057260 (validRegex!3030 r!27340))))

(assert (=> start!244086 e!1585910))

(assert (=> start!244086 e!1585909))

(assert (=> start!244086 tp_is_empty!12663))

(declare-fun e!1585911 () Bool)

(assert (=> start!244086 e!1585911))

(declare-fun b!2500261 () Bool)

(declare-fun tp!800559 () Bool)

(declare-fun tp!800560 () Bool)

(assert (=> b!2500261 (= e!1585909 (and tp!800559 tp!800560))))

(declare-fun b!2500262 () Bool)

(assert (=> b!2500262 (= e!1585910 (not true))))

(declare-fun lt!895515 () Regex!7404)

(declare-fun matchR!3407 (Regex!7404 List!29469) Bool)

(assert (=> b!2500262 (= (matchR!3407 lt!895515 tl!4068) (matchR!3407 (derivative!99 lt!895515 tl!4068) Nil!29369))))

(declare-datatypes ((Unit!43065 0))(
  ( (Unit!43066) )
))
(declare-fun lt!895516 () Unit!43065)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!53 (Regex!7404 List!29469) Unit!43065)

(assert (=> b!2500262 (= lt!895516 (lemmaMatchRIsSameAsWholeDerivativeAndNil!53 lt!895515 tl!4068))))

(assert (=> b!2500262 (= lt!895515 (Union!7404 (Concat!12100 (derivativeStep!1973 (regOne!15320 r!27340) c!14016) (regTwo!15320 r!27340)) (derivativeStep!1973 (regTwo!15320 r!27340) c!14016)))))

(declare-fun b!2500263 () Bool)

(declare-fun tp!800555 () Bool)

(assert (=> b!2500263 (= e!1585911 (and tp_is_empty!12663 tp!800555))))

(declare-fun b!2500264 () Bool)

(declare-fun res!1057262 () Bool)

(assert (=> b!2500264 (=> (not res!1057262) (not e!1585910))))

(assert (=> b!2500264 (= res!1057262 (nullable!2321 (regOne!15320 r!27340)))))

(declare-fun b!2500265 () Bool)

(declare-fun tp!800557 () Bool)

(assert (=> b!2500265 (= e!1585909 tp!800557)))

(assert (= (and start!244086 res!1057260) b!2500259))

(assert (= (and b!2500259 res!1057259) b!2500260))

(assert (= (and b!2500260 res!1057261) b!2500264))

(assert (= (and b!2500264 res!1057262) b!2500262))

(assert (= (and start!244086 (is-ElementMatch!7404 r!27340)) b!2500258))

(assert (= (and start!244086 (is-Concat!12100 r!27340)) b!2500257))

(assert (= (and start!244086 (is-Star!7404 r!27340)) b!2500265))

(assert (= (and start!244086 (is-Union!7404 r!27340)) b!2500261))

(assert (= (and start!244086 (is-Cons!29369 tl!4068)) b!2500263))

(declare-fun m!2863057 () Bool)

(assert (=> b!2500259 m!2863057))

(assert (=> b!2500259 m!2863057))

(declare-fun m!2863059 () Bool)

(assert (=> b!2500259 m!2863059))

(assert (=> b!2500259 m!2863059))

(declare-fun m!2863061 () Bool)

(assert (=> b!2500259 m!2863061))

(declare-fun m!2863063 () Bool)

(assert (=> start!244086 m!2863063))

(declare-fun m!2863065 () Bool)

(assert (=> b!2500262 m!2863065))

(declare-fun m!2863067 () Bool)

(assert (=> b!2500262 m!2863067))

(declare-fun m!2863069 () Bool)

(assert (=> b!2500262 m!2863069))

(declare-fun m!2863071 () Bool)

(assert (=> b!2500262 m!2863071))

(declare-fun m!2863073 () Bool)

(assert (=> b!2500262 m!2863073))

(assert (=> b!2500262 m!2863073))

(declare-fun m!2863075 () Bool)

(assert (=> b!2500262 m!2863075))

(declare-fun m!2863077 () Bool)

(assert (=> b!2500264 m!2863077))

(push 1)

(assert (not start!244086))

(assert (not b!2500262))

(assert (not b!2500261))

(assert (not b!2500259))

(assert (not b!2500264))

(assert (not b!2500263))

(assert (not b!2500257))

(assert tp_is_empty!12663)

(assert (not b!2500265))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

