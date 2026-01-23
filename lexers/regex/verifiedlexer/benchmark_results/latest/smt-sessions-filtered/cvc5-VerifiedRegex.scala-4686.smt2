; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243506 () Bool)

(assert start!243506)

(declare-fun b!2492567 () Bool)

(declare-fun e!1582011 () Bool)

(declare-fun tp!798300 () Bool)

(declare-fun tp!798295 () Bool)

(assert (=> b!2492567 (= e!1582011 (and tp!798300 tp!798295))))

(declare-fun res!1054448 () Bool)

(declare-fun e!1582012 () Bool)

(assert (=> start!243506 (=> (not res!1054448) (not e!1582012))))

(declare-datatypes ((C!14850 0))(
  ( (C!14851 (val!9077 Int)) )
))
(declare-datatypes ((Regex!7346 0))(
  ( (ElementMatch!7346 (c!396282 C!14850)) (Concat!12042 (regOne!15204 Regex!7346) (regTwo!15204 Regex!7346)) (EmptyExpr!7346) (Star!7346 (reg!7675 Regex!7346)) (EmptyLang!7346) (Union!7346 (regOne!15205 Regex!7346) (regTwo!15205 Regex!7346)) )
))
(declare-fun r!27340 () Regex!7346)

(declare-fun validRegex!2972 (Regex!7346) Bool)

(assert (=> start!243506 (= res!1054448 (validRegex!2972 r!27340))))

(assert (=> start!243506 e!1582012))

(assert (=> start!243506 e!1582011))

(declare-fun tp_is_empty!12547 () Bool)

(assert (=> start!243506 tp_is_empty!12547))

(declare-fun e!1582013 () Bool)

(assert (=> start!243506 e!1582013))

(declare-fun b!2492568 () Bool)

(assert (=> b!2492568 (= e!1582011 tp_is_empty!12547)))

(declare-fun b!2492569 () Bool)

(declare-fun tp!798298 () Bool)

(assert (=> b!2492569 (= e!1582013 (and tp_is_empty!12547 tp!798298))))

(declare-fun b!2492570 () Bool)

(declare-fun res!1054451 () Bool)

(assert (=> b!2492570 (=> (not res!1054451) (not e!1582012))))

(assert (=> b!2492570 (= res!1054451 (and (not (is-EmptyExpr!7346 r!27340)) (not (is-EmptyLang!7346 r!27340)) (not (is-ElementMatch!7346 r!27340)) (is-Union!7346 r!27340)))))

(declare-fun b!2492571 () Bool)

(assert (=> b!2492571 (= e!1582012 (not true))))

(declare-datatypes ((List!29411 0))(
  ( (Nil!29311) (Cons!29311 (h!34731 C!14850) (t!211110 List!29411)) )
))
(declare-fun lt!894041 () List!29411)

(declare-fun matchR!3367 (Regex!7346 List!29411) Bool)

(declare-fun derivative!41 (Regex!7346 List!29411) Regex!7346)

(assert (=> b!2492571 (= (matchR!3367 (regOne!15205 r!27340) lt!894041) (matchR!3367 (derivative!41 (regOne!15205 r!27340) lt!894041) Nil!29311))))

(declare-datatypes ((Unit!42985 0))(
  ( (Unit!42986) )
))
(declare-fun lt!894040 () Unit!42985)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!13 (Regex!7346 List!29411) Unit!42985)

(assert (=> b!2492571 (= lt!894040 (lemmaMatchRIsSameAsWholeDerivativeAndNil!13 (regOne!15205 r!27340) lt!894041))))

(assert (=> b!2492571 (= (matchR!3367 r!27340 lt!894041) (matchR!3367 (derivative!41 r!27340 lt!894041) Nil!29311))))

(declare-fun lt!894039 () Unit!42985)

(assert (=> b!2492571 (= lt!894039 (lemmaMatchRIsSameAsWholeDerivativeAndNil!13 r!27340 lt!894041))))

(declare-fun c!14016 () C!14850)

(declare-fun tl!4068 () List!29411)

(assert (=> b!2492571 (= lt!894041 (Cons!29311 c!14016 tl!4068))))

(declare-fun b!2492572 () Bool)

(declare-fun res!1054449 () Bool)

(assert (=> b!2492572 (=> (not res!1054449) (not e!1582012))))

(declare-fun nullable!2263 (Regex!7346) Bool)

(declare-fun derivativeStep!1915 (Regex!7346 C!14850) Regex!7346)

(assert (=> b!2492572 (= res!1054449 (not (nullable!2263 (derivative!41 (derivativeStep!1915 (regOne!15205 r!27340) c!14016) tl!4068))))))

(declare-fun b!2492573 () Bool)

(declare-fun tp!798297 () Bool)

(declare-fun tp!798296 () Bool)

(assert (=> b!2492573 (= e!1582011 (and tp!798297 tp!798296))))

(declare-fun b!2492574 () Bool)

(declare-fun res!1054447 () Bool)

(assert (=> b!2492574 (=> (not res!1054447) (not e!1582012))))

(assert (=> b!2492574 (= res!1054447 (not (nullable!2263 (derivative!41 (derivativeStep!1915 (regTwo!15205 r!27340) c!14016) tl!4068))))))

(declare-fun b!2492575 () Bool)

(declare-fun tp!798299 () Bool)

(assert (=> b!2492575 (= e!1582011 tp!798299)))

(declare-fun b!2492576 () Bool)

(declare-fun res!1054450 () Bool)

(assert (=> b!2492576 (=> (not res!1054450) (not e!1582012))))

(assert (=> b!2492576 (= res!1054450 (nullable!2263 (derivative!41 (derivativeStep!1915 r!27340 c!14016) tl!4068)))))

(assert (= (and start!243506 res!1054448) b!2492576))

(assert (= (and b!2492576 res!1054450) b!2492570))

(assert (= (and b!2492570 res!1054451) b!2492572))

(assert (= (and b!2492572 res!1054449) b!2492574))

(assert (= (and b!2492574 res!1054447) b!2492571))

(assert (= (and start!243506 (is-ElementMatch!7346 r!27340)) b!2492568))

(assert (= (and start!243506 (is-Concat!12042 r!27340)) b!2492567))

(assert (= (and start!243506 (is-Star!7346 r!27340)) b!2492575))

(assert (= (and start!243506 (is-Union!7346 r!27340)) b!2492573))

(assert (= (and start!243506 (is-Cons!29311 tl!4068)) b!2492569))

(declare-fun m!2858673 () Bool)

(assert (=> start!243506 m!2858673))

(declare-fun m!2858675 () Bool)

(assert (=> b!2492574 m!2858675))

(assert (=> b!2492574 m!2858675))

(declare-fun m!2858677 () Bool)

(assert (=> b!2492574 m!2858677))

(assert (=> b!2492574 m!2858677))

(declare-fun m!2858679 () Bool)

(assert (=> b!2492574 m!2858679))

(declare-fun m!2858681 () Bool)

(assert (=> b!2492571 m!2858681))

(declare-fun m!2858683 () Bool)

(assert (=> b!2492571 m!2858683))

(declare-fun m!2858685 () Bool)

(assert (=> b!2492571 m!2858685))

(declare-fun m!2858687 () Bool)

(assert (=> b!2492571 m!2858687))

(assert (=> b!2492571 m!2858685))

(declare-fun m!2858689 () Bool)

(assert (=> b!2492571 m!2858689))

(assert (=> b!2492571 m!2858681))

(declare-fun m!2858691 () Bool)

(assert (=> b!2492571 m!2858691))

(declare-fun m!2858693 () Bool)

(assert (=> b!2492571 m!2858693))

(declare-fun m!2858695 () Bool)

(assert (=> b!2492571 m!2858695))

(declare-fun m!2858697 () Bool)

(assert (=> b!2492572 m!2858697))

(assert (=> b!2492572 m!2858697))

(declare-fun m!2858699 () Bool)

(assert (=> b!2492572 m!2858699))

(assert (=> b!2492572 m!2858699))

(declare-fun m!2858701 () Bool)

(assert (=> b!2492572 m!2858701))

(declare-fun m!2858703 () Bool)

(assert (=> b!2492576 m!2858703))

(assert (=> b!2492576 m!2858703))

(declare-fun m!2858705 () Bool)

(assert (=> b!2492576 m!2858705))

(assert (=> b!2492576 m!2858705))

(declare-fun m!2858707 () Bool)

(assert (=> b!2492576 m!2858707))

(push 1)

(assert (not b!2492573))

(assert (not b!2492569))

(assert (not b!2492567))

(assert (not start!243506))

(assert tp_is_empty!12547)

(assert (not b!2492574))

(assert (not b!2492575))

(assert (not b!2492571))

(assert (not b!2492572))

(assert (not b!2492576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

