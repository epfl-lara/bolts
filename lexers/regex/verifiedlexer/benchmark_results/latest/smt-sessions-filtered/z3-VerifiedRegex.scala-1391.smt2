; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73614 () Bool)

(assert start!73614)

(declare-fun b!822563 () Bool)

(declare-fun e!543363 () Bool)

(declare-fun tp!257033 () Bool)

(declare-fun tp!257030 () Bool)

(assert (=> b!822563 (= e!543363 (and tp!257033 tp!257030))))

(declare-fun b!822564 () Bool)

(declare-fun res!379560 () Bool)

(declare-fun e!543362 () Bool)

(assert (=> b!822564 (=> (not res!379560) (not e!543362))))

(declare-datatypes ((C!4652 0))(
  ( (C!4653 (val!2574 Int)) )
))
(declare-datatypes ((Regex!2041 0))(
  ( (ElementMatch!2041 (c!133318 C!4652)) (Concat!3772 (regOne!4594 Regex!2041) (regTwo!4594 Regex!2041)) (EmptyExpr!2041) (Star!2041 (reg!2370 Regex!2041)) (EmptyLang!2041) (Union!2041 (regOne!4595 Regex!2041) (regTwo!4595 Regex!2041)) )
))
(declare-fun r!27177 () Regex!2041)

(declare-fun c!13916 () C!4652)

(declare-datatypes ((List!8867 0))(
  ( (Nil!8851) (Cons!8851 (h!14252 C!4652) (t!93159 List!8867)) )
))
(declare-fun contains!1632 (List!8867 C!4652) Bool)

(declare-fun firstChars!12 (Regex!2041) List!8867)

(assert (=> b!822564 (= res!379560 (contains!1632 (firstChars!12 r!27177) c!13916))))

(declare-fun b!822565 () Bool)

(declare-fun tp!257034 () Bool)

(assert (=> b!822565 (= e!543363 tp!257034)))

(declare-fun b!822566 () Bool)

(declare-fun res!379561 () Bool)

(assert (=> b!822566 (=> (not res!379561) (not e!543362))))

(get-info :version)

(assert (=> b!822566 (= res!379561 (and (not ((_ is EmptyExpr!2041) r!27177)) (not ((_ is EmptyLang!2041) r!27177)) (not ((_ is ElementMatch!2041) r!27177)) (not ((_ is Star!2041) r!27177)) (not ((_ is Union!2041) r!27177))))))

(declare-fun b!822567 () Bool)

(declare-fun res!379562 () Bool)

(assert (=> b!822567 (=> (not res!379562) (not e!543362))))

(declare-fun nullable!492 (Regex!2041) Bool)

(assert (=> b!822567 (= res!379562 (not (nullable!492 (regOne!4594 r!27177))))))

(declare-fun b!822568 () Bool)

(assert (=> b!822568 (= e!543362 false)))

(declare-fun lt!317375 () Bool)

(assert (=> b!822568 (= lt!317375 (contains!1632 (firstChars!12 (regOne!4594 r!27177)) c!13916))))

(declare-fun b!822569 () Bool)

(declare-fun tp_is_empty!3805 () Bool)

(assert (=> b!822569 (= e!543363 tp_is_empty!3805)))

(declare-fun b!822570 () Bool)

(declare-fun res!379559 () Bool)

(assert (=> b!822570 (=> (not res!379559) (not e!543362))))

(declare-fun validRegex!594 (Regex!2041) Bool)

(assert (=> b!822570 (= res!379559 (validRegex!594 (regOne!4594 r!27177)))))

(declare-fun res!379563 () Bool)

(assert (=> start!73614 (=> (not res!379563) (not e!543362))))

(assert (=> start!73614 (= res!379563 (validRegex!594 r!27177))))

(assert (=> start!73614 e!543362))

(assert (=> start!73614 e!543363))

(assert (=> start!73614 tp_is_empty!3805))

(declare-fun b!822571 () Bool)

(declare-fun tp!257032 () Bool)

(declare-fun tp!257031 () Bool)

(assert (=> b!822571 (= e!543363 (and tp!257032 tp!257031))))

(assert (= (and start!73614 res!379563) b!822564))

(assert (= (and b!822564 res!379560) b!822566))

(assert (= (and b!822566 res!379561) b!822567))

(assert (= (and b!822567 res!379562) b!822570))

(assert (= (and b!822570 res!379559) b!822568))

(assert (= (and start!73614 ((_ is ElementMatch!2041) r!27177)) b!822569))

(assert (= (and start!73614 ((_ is Concat!3772) r!27177)) b!822571))

(assert (= (and start!73614 ((_ is Star!2041) r!27177)) b!822565))

(assert (= (and start!73614 ((_ is Union!2041) r!27177)) b!822563))

(declare-fun m!1063679 () Bool)

(assert (=> b!822564 m!1063679))

(assert (=> b!822564 m!1063679))

(declare-fun m!1063681 () Bool)

(assert (=> b!822564 m!1063681))

(declare-fun m!1063683 () Bool)

(assert (=> b!822568 m!1063683))

(assert (=> b!822568 m!1063683))

(declare-fun m!1063685 () Bool)

(assert (=> b!822568 m!1063685))

(declare-fun m!1063687 () Bool)

(assert (=> start!73614 m!1063687))

(declare-fun m!1063689 () Bool)

(assert (=> b!822570 m!1063689))

(declare-fun m!1063691 () Bool)

(assert (=> b!822567 m!1063691))

(check-sat (not start!73614) (not b!822567) (not b!822564) (not b!822568) (not b!822563) (not b!822570) (not b!822565) (not b!822571) tp_is_empty!3805)
(check-sat)
