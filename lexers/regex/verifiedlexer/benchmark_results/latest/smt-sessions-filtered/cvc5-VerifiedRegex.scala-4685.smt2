; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243502 () Bool)

(assert start!243502)

(declare-fun b!2492507 () Bool)

(declare-fun res!1054421 () Bool)

(declare-fun e!1581993 () Bool)

(assert (=> b!2492507 (=> (not res!1054421) (not e!1581993))))

(declare-datatypes ((C!14846 0))(
  ( (C!14847 (val!9075 Int)) )
))
(declare-datatypes ((List!29409 0))(
  ( (Nil!29309) (Cons!29309 (h!34729 C!14846) (t!211108 List!29409)) )
))
(declare-fun tl!4068 () List!29409)

(declare-datatypes ((Regex!7344 0))(
  ( (ElementMatch!7344 (c!396280 C!14846)) (Concat!12040 (regOne!15200 Regex!7344) (regTwo!15200 Regex!7344)) (EmptyExpr!7344) (Star!7344 (reg!7673 Regex!7344)) (EmptyLang!7344) (Union!7344 (regOne!15201 Regex!7344) (regTwo!15201 Regex!7344)) )
))
(declare-fun r!27340 () Regex!7344)

(declare-fun c!14016 () C!14846)

(declare-fun nullable!2261 (Regex!7344) Bool)

(declare-fun derivative!39 (Regex!7344 List!29409) Regex!7344)

(declare-fun derivativeStep!1913 (Regex!7344 C!14846) Regex!7344)

(assert (=> b!2492507 (= res!1054421 (not (nullable!2261 (derivative!39 (derivativeStep!1913 (regOne!15201 r!27340) c!14016) tl!4068))))))

(declare-fun b!2492508 () Bool)

(declare-fun e!1581995 () Bool)

(declare-fun tp!798263 () Bool)

(assert (=> b!2492508 (= e!1581995 tp!798263)))

(declare-fun b!2492509 () Bool)

(declare-fun tp!798261 () Bool)

(declare-fun tp!798262 () Bool)

(assert (=> b!2492509 (= e!1581995 (and tp!798261 tp!798262))))

(declare-fun b!2492510 () Bool)

(declare-fun tp_is_empty!12543 () Bool)

(assert (=> b!2492510 (= e!1581995 tp_is_empty!12543)))

(declare-fun res!1054417 () Bool)

(assert (=> start!243502 (=> (not res!1054417) (not e!1581993))))

(declare-fun validRegex!2970 (Regex!7344) Bool)

(assert (=> start!243502 (= res!1054417 (validRegex!2970 r!27340))))

(assert (=> start!243502 e!1581993))

(assert (=> start!243502 e!1581995))

(assert (=> start!243502 tp_is_empty!12543))

(declare-fun e!1581994 () Bool)

(assert (=> start!243502 e!1581994))

(declare-fun b!2492511 () Bool)

(declare-fun res!1054419 () Bool)

(assert (=> b!2492511 (=> (not res!1054419) (not e!1581993))))

(assert (=> b!2492511 (= res!1054419 (not (nullable!2261 (derivative!39 (derivativeStep!1913 (regTwo!15201 r!27340) c!14016) tl!4068))))))

(declare-fun b!2492512 () Bool)

(assert (=> b!2492512 (= e!1581993 (not true))))

(declare-fun lt!894026 () List!29409)

(declare-fun matchR!3365 (Regex!7344 List!29409) Bool)

(assert (=> b!2492512 (= (matchR!3365 r!27340 lt!894026) (matchR!3365 (derivative!39 r!27340 lt!894026) Nil!29309))))

(declare-datatypes ((Unit!42981 0))(
  ( (Unit!42982) )
))
(declare-fun lt!894025 () Unit!42981)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!11 (Regex!7344 List!29409) Unit!42981)

(assert (=> b!2492512 (= lt!894025 (lemmaMatchRIsSameAsWholeDerivativeAndNil!11 r!27340 lt!894026))))

(assert (=> b!2492512 (= lt!894026 (Cons!29309 c!14016 tl!4068))))

(declare-fun b!2492513 () Bool)

(declare-fun tp!798260 () Bool)

(declare-fun tp!798264 () Bool)

(assert (=> b!2492513 (= e!1581995 (and tp!798260 tp!798264))))

(declare-fun b!2492514 () Bool)

(declare-fun tp!798259 () Bool)

(assert (=> b!2492514 (= e!1581994 (and tp_is_empty!12543 tp!798259))))

(declare-fun b!2492515 () Bool)

(declare-fun res!1054420 () Bool)

(assert (=> b!2492515 (=> (not res!1054420) (not e!1581993))))

(assert (=> b!2492515 (= res!1054420 (nullable!2261 (derivative!39 (derivativeStep!1913 r!27340 c!14016) tl!4068)))))

(declare-fun b!2492516 () Bool)

(declare-fun res!1054418 () Bool)

(assert (=> b!2492516 (=> (not res!1054418) (not e!1581993))))

(assert (=> b!2492516 (= res!1054418 (and (not (is-EmptyExpr!7344 r!27340)) (not (is-EmptyLang!7344 r!27340)) (not (is-ElementMatch!7344 r!27340)) (is-Union!7344 r!27340)))))

(assert (= (and start!243502 res!1054417) b!2492515))

(assert (= (and b!2492515 res!1054420) b!2492516))

(assert (= (and b!2492516 res!1054418) b!2492507))

(assert (= (and b!2492507 res!1054421) b!2492511))

(assert (= (and b!2492511 res!1054419) b!2492512))

(assert (= (and start!243502 (is-ElementMatch!7344 r!27340)) b!2492510))

(assert (= (and start!243502 (is-Concat!12040 r!27340)) b!2492509))

(assert (= (and start!243502 (is-Star!7344 r!27340)) b!2492508))

(assert (= (and start!243502 (is-Union!7344 r!27340)) b!2492513))

(assert (= (and start!243502 (is-Cons!29309 tl!4068)) b!2492514))

(declare-fun m!2858617 () Bool)

(assert (=> b!2492507 m!2858617))

(assert (=> b!2492507 m!2858617))

(declare-fun m!2858619 () Bool)

(assert (=> b!2492507 m!2858619))

(assert (=> b!2492507 m!2858619))

(declare-fun m!2858621 () Bool)

(assert (=> b!2492507 m!2858621))

(declare-fun m!2858623 () Bool)

(assert (=> b!2492515 m!2858623))

(assert (=> b!2492515 m!2858623))

(declare-fun m!2858625 () Bool)

(assert (=> b!2492515 m!2858625))

(assert (=> b!2492515 m!2858625))

(declare-fun m!2858627 () Bool)

(assert (=> b!2492515 m!2858627))

(declare-fun m!2858629 () Bool)

(assert (=> start!243502 m!2858629))

(declare-fun m!2858631 () Bool)

(assert (=> b!2492511 m!2858631))

(assert (=> b!2492511 m!2858631))

(declare-fun m!2858633 () Bool)

(assert (=> b!2492511 m!2858633))

(assert (=> b!2492511 m!2858633))

(declare-fun m!2858635 () Bool)

(assert (=> b!2492511 m!2858635))

(declare-fun m!2858637 () Bool)

(assert (=> b!2492512 m!2858637))

(declare-fun m!2858639 () Bool)

(assert (=> b!2492512 m!2858639))

(assert (=> b!2492512 m!2858639))

(declare-fun m!2858641 () Bool)

(assert (=> b!2492512 m!2858641))

(declare-fun m!2858643 () Bool)

(assert (=> b!2492512 m!2858643))

(push 1)

(assert (not b!2492509))

(assert (not b!2492507))

(assert (not b!2492511))

(assert (not b!2492512))

(assert (not b!2492513))

(assert tp_is_empty!12543)

(assert (not b!2492514))

(assert (not b!2492508))

(assert (not start!243502))

(assert (not b!2492515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

