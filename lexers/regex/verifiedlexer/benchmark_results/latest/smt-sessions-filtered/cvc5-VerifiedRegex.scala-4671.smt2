; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243290 () Bool)

(assert start!243290)

(declare-fun b!2489905 () Bool)

(declare-fun e!1580743 () Bool)

(declare-fun tp!797147 () Bool)

(declare-fun tp!797149 () Bool)

(assert (=> b!2489905 (= e!1580743 (and tp!797147 tp!797149))))

(declare-fun b!2489906 () Bool)

(declare-fun tp!797148 () Bool)

(declare-fun tp!797151 () Bool)

(assert (=> b!2489906 (= e!1580743 (and tp!797148 tp!797151))))

(declare-fun b!2489907 () Bool)

(declare-fun e!1580742 () Bool)

(assert (=> b!2489907 (= e!1580742 false)))

(declare-datatypes ((C!14790 0))(
  ( (C!14791 (val!9047 Int)) )
))
(declare-datatypes ((List!29381 0))(
  ( (Nil!29281) (Cons!29281 (h!34701 C!14790) (t!211080 List!29381)) )
))
(declare-fun tl!4068 () List!29381)

(declare-fun lt!893841 () Bool)

(declare-datatypes ((Regex!7316 0))(
  ( (ElementMatch!7316 (c!395760 C!14790)) (Concat!12012 (regOne!15144 Regex!7316) (regTwo!15144 Regex!7316)) (EmptyExpr!7316) (Star!7316 (reg!7645 Regex!7316)) (EmptyLang!7316) (Union!7316 (regOne!15145 Regex!7316) (regTwo!15145 Regex!7316)) )
))
(declare-fun r!27340 () Regex!7316)

(declare-fun c!14016 () C!14790)

(declare-fun nullable!2233 (Regex!7316) Bool)

(declare-fun derivative!11 (Regex!7316 List!29381) Regex!7316)

(declare-fun derivativeStep!1885 (Regex!7316 C!14790) Regex!7316)

(assert (=> b!2489907 (= lt!893841 (nullable!2233 (derivative!11 (derivativeStep!1885 r!27340 c!14016) tl!4068)))))

(declare-fun res!1053779 () Bool)

(assert (=> start!243290 (=> (not res!1053779) (not e!1580742))))

(declare-fun validRegex!2942 (Regex!7316) Bool)

(assert (=> start!243290 (= res!1053779 (validRegex!2942 r!27340))))

(assert (=> start!243290 e!1580742))

(assert (=> start!243290 e!1580743))

(declare-fun tp_is_empty!12487 () Bool)

(assert (=> start!243290 tp_is_empty!12487))

(declare-fun e!1580741 () Bool)

(assert (=> start!243290 e!1580741))

(declare-fun b!2489908 () Bool)

(declare-fun tp!797150 () Bool)

(assert (=> b!2489908 (= e!1580741 (and tp_is_empty!12487 tp!797150))))

(declare-fun b!2489909 () Bool)

(declare-fun tp!797152 () Bool)

(assert (=> b!2489909 (= e!1580743 tp!797152)))

(declare-fun b!2489910 () Bool)

(assert (=> b!2489910 (= e!1580743 tp_is_empty!12487)))

(assert (= (and start!243290 res!1053779) b!2489907))

(assert (= (and start!243290 (is-ElementMatch!7316 r!27340)) b!2489910))

(assert (= (and start!243290 (is-Concat!12012 r!27340)) b!2489905))

(assert (= (and start!243290 (is-Star!7316 r!27340)) b!2489909))

(assert (= (and start!243290 (is-Union!7316 r!27340)) b!2489906))

(assert (= (and start!243290 (is-Cons!29281 tl!4068)) b!2489908))

(declare-fun m!2857613 () Bool)

(assert (=> b!2489907 m!2857613))

(assert (=> b!2489907 m!2857613))

(declare-fun m!2857615 () Bool)

(assert (=> b!2489907 m!2857615))

(assert (=> b!2489907 m!2857615))

(declare-fun m!2857617 () Bool)

(assert (=> b!2489907 m!2857617))

(declare-fun m!2857619 () Bool)

(assert (=> start!243290 m!2857619))

(push 1)

(assert tp_is_empty!12487)

(assert (not start!243290))

(assert (not b!2489909))

(assert (not b!2489908))

(assert (not b!2489907))

(assert (not b!2489906))

(assert (not b!2489905))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

