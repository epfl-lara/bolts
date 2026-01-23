; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243510 () Bool)

(assert start!243510)

(declare-fun b!2492631 () Bool)

(declare-fun res!1054482 () Bool)

(declare-fun e!1582032 () Bool)

(assert (=> b!2492631 (=> (not res!1054482) (not e!1582032))))

(declare-datatypes ((C!14854 0))(
  ( (C!14855 (val!9079 Int)) )
))
(declare-datatypes ((List!29413 0))(
  ( (Nil!29313) (Cons!29313 (h!34733 C!14854) (t!211112 List!29413)) )
))
(declare-fun tl!4068 () List!29413)

(declare-datatypes ((Regex!7348 0))(
  ( (ElementMatch!7348 (c!396284 C!14854)) (Concat!12044 (regOne!15208 Regex!7348) (regTwo!15208 Regex!7348)) (EmptyExpr!7348) (Star!7348 (reg!7677 Regex!7348)) (EmptyLang!7348) (Union!7348 (regOne!15209 Regex!7348) (regTwo!15209 Regex!7348)) )
))
(declare-fun r!27340 () Regex!7348)

(declare-fun c!14016 () C!14854)

(declare-fun nullable!2265 (Regex!7348) Bool)

(declare-fun derivative!43 (Regex!7348 List!29413) Regex!7348)

(declare-fun derivativeStep!1917 (Regex!7348 C!14854) Regex!7348)

(assert (=> b!2492631 (= res!1054482 (not (nullable!2265 (derivative!43 (derivativeStep!1917 (regOne!15209 r!27340) c!14016) tl!4068))))))

(declare-fun b!2492632 () Bool)

(declare-fun e!1582031 () Bool)

(declare-fun tp_is_empty!12551 () Bool)

(assert (=> b!2492632 (= e!1582031 tp_is_empty!12551)))

(declare-fun res!1054485 () Bool)

(assert (=> start!243510 (=> (not res!1054485) (not e!1582032))))

(declare-fun validRegex!2974 (Regex!7348) Bool)

(assert (=> start!243510 (= res!1054485 (validRegex!2974 r!27340))))

(assert (=> start!243510 e!1582032))

(assert (=> start!243510 e!1582031))

(assert (=> start!243510 tp_is_empty!12551))

(declare-fun e!1582033 () Bool)

(assert (=> start!243510 e!1582033))

(declare-fun b!2492633 () Bool)

(declare-fun tp!798334 () Bool)

(assert (=> b!2492633 (= e!1582031 tp!798334)))

(declare-fun b!2492634 () Bool)

(declare-fun res!1054486 () Bool)

(declare-fun e!1582034 () Bool)

(assert (=> b!2492634 (=> res!1054486 e!1582034)))

(assert (=> b!2492634 (= res!1054486 (not (validRegex!2974 (regTwo!15209 r!27340))))))

(declare-fun b!2492635 () Bool)

(declare-fun res!1054484 () Bool)

(assert (=> b!2492635 (=> (not res!1054484) (not e!1582032))))

(assert (=> b!2492635 (= res!1054484 (and (not (is-EmptyExpr!7348 r!27340)) (not (is-EmptyLang!7348 r!27340)) (not (is-ElementMatch!7348 r!27340)) (is-Union!7348 r!27340)))))

(declare-fun b!2492636 () Bool)

(declare-fun res!1054483 () Bool)

(assert (=> b!2492636 (=> (not res!1054483) (not e!1582032))))

(assert (=> b!2492636 (= res!1054483 (nullable!2265 (derivative!43 (derivativeStep!1917 r!27340 c!14016) tl!4068)))))

(declare-fun b!2492637 () Bool)

(declare-fun tp!798332 () Bool)

(declare-fun tp!798335 () Bool)

(assert (=> b!2492637 (= e!1582031 (and tp!798332 tp!798335))))

(declare-fun b!2492638 () Bool)

(declare-fun res!1054487 () Bool)

(assert (=> b!2492638 (=> (not res!1054487) (not e!1582032))))

(assert (=> b!2492638 (= res!1054487 (not (nullable!2265 (derivative!43 (derivativeStep!1917 (regTwo!15209 r!27340) c!14016) tl!4068))))))

(declare-fun b!2492639 () Bool)

(assert (=> b!2492639 (= e!1582032 (not e!1582034))))

(declare-fun res!1054481 () Bool)

(assert (=> b!2492639 (=> res!1054481 e!1582034)))

(assert (=> b!2492639 (= res!1054481 (not (validRegex!2974 (regOne!15209 r!27340))))))

(declare-fun lt!894061 () List!29413)

(declare-fun matchR!3369 (Regex!7348 List!29413) Bool)

(assert (=> b!2492639 (= (matchR!3369 (regTwo!15209 r!27340) lt!894061) (matchR!3369 (derivative!43 (regTwo!15209 r!27340) lt!894061) Nil!29313))))

(declare-datatypes ((Unit!42989 0))(
  ( (Unit!42990) )
))
(declare-fun lt!894064 () Unit!42989)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!15 (Regex!7348 List!29413) Unit!42989)

(assert (=> b!2492639 (= lt!894064 (lemmaMatchRIsSameAsWholeDerivativeAndNil!15 (regTwo!15209 r!27340) lt!894061))))

(assert (=> b!2492639 (= (matchR!3369 (regOne!15209 r!27340) lt!894061) (matchR!3369 (derivative!43 (regOne!15209 r!27340) lt!894061) Nil!29313))))

(declare-fun lt!894065 () Unit!42989)

(assert (=> b!2492639 (= lt!894065 (lemmaMatchRIsSameAsWholeDerivativeAndNil!15 (regOne!15209 r!27340) lt!894061))))

(assert (=> b!2492639 (= (matchR!3369 r!27340 lt!894061) (matchR!3369 (derivative!43 r!27340 lt!894061) Nil!29313))))

(declare-fun lt!894063 () Unit!42989)

(assert (=> b!2492639 (= lt!894063 (lemmaMatchRIsSameAsWholeDerivativeAndNil!15 r!27340 lt!894061))))

(assert (=> b!2492639 (= lt!894061 (Cons!29313 c!14016 tl!4068))))

(declare-fun b!2492640 () Bool)

(declare-fun tp!798331 () Bool)

(assert (=> b!2492640 (= e!1582033 (and tp_is_empty!12551 tp!798331))))

(declare-fun b!2492641 () Bool)

(assert (=> b!2492641 (= e!1582034 true)))

(declare-fun lt!894062 () Bool)

(assert (=> b!2492641 (= lt!894062 (matchR!3369 r!27340 lt!894061))))

(declare-fun b!2492642 () Bool)

(declare-fun tp!798336 () Bool)

(declare-fun tp!798333 () Bool)

(assert (=> b!2492642 (= e!1582031 (and tp!798336 tp!798333))))

(assert (= (and start!243510 res!1054485) b!2492636))

(assert (= (and b!2492636 res!1054483) b!2492635))

(assert (= (and b!2492635 res!1054484) b!2492631))

(assert (= (and b!2492631 res!1054482) b!2492638))

(assert (= (and b!2492638 res!1054487) b!2492639))

(assert (= (and b!2492639 (not res!1054481)) b!2492634))

(assert (= (and b!2492634 (not res!1054486)) b!2492641))

(assert (= (and start!243510 (is-ElementMatch!7348 r!27340)) b!2492632))

(assert (= (and start!243510 (is-Concat!12044 r!27340)) b!2492642))

(assert (= (and start!243510 (is-Star!7348 r!27340)) b!2492633))

(assert (= (and start!243510 (is-Union!7348 r!27340)) b!2492637))

(assert (= (and start!243510 (is-Cons!29313 tl!4068)) b!2492640))

(declare-fun m!2858745 () Bool)

(assert (=> b!2492639 m!2858745))

(declare-fun m!2858747 () Bool)

(assert (=> b!2492639 m!2858747))

(declare-fun m!2858749 () Bool)

(assert (=> b!2492639 m!2858749))

(declare-fun m!2858751 () Bool)

(assert (=> b!2492639 m!2858751))

(declare-fun m!2858753 () Bool)

(assert (=> b!2492639 m!2858753))

(declare-fun m!2858755 () Bool)

(assert (=> b!2492639 m!2858755))

(declare-fun m!2858757 () Bool)

(assert (=> b!2492639 m!2858757))

(assert (=> b!2492639 m!2858753))

(declare-fun m!2858759 () Bool)

(assert (=> b!2492639 m!2858759))

(declare-fun m!2858761 () Bool)

(assert (=> b!2492639 m!2858761))

(assert (=> b!2492639 m!2858751))

(declare-fun m!2858763 () Bool)

(assert (=> b!2492639 m!2858763))

(declare-fun m!2858765 () Bool)

(assert (=> b!2492639 m!2858765))

(declare-fun m!2858767 () Bool)

(assert (=> b!2492639 m!2858767))

(assert (=> b!2492639 m!2858759))

(declare-fun m!2858769 () Bool)

(assert (=> b!2492639 m!2858769))

(declare-fun m!2858771 () Bool)

(assert (=> b!2492634 m!2858771))

(assert (=> b!2492641 m!2858757))

(declare-fun m!2858773 () Bool)

(assert (=> b!2492638 m!2858773))

(assert (=> b!2492638 m!2858773))

(declare-fun m!2858775 () Bool)

(assert (=> b!2492638 m!2858775))

(assert (=> b!2492638 m!2858775))

(declare-fun m!2858777 () Bool)

(assert (=> b!2492638 m!2858777))

(declare-fun m!2858779 () Bool)

(assert (=> b!2492631 m!2858779))

(assert (=> b!2492631 m!2858779))

(declare-fun m!2858781 () Bool)

(assert (=> b!2492631 m!2858781))

(assert (=> b!2492631 m!2858781))

(declare-fun m!2858783 () Bool)

(assert (=> b!2492631 m!2858783))

(declare-fun m!2858785 () Bool)

(assert (=> start!243510 m!2858785))

(declare-fun m!2858787 () Bool)

(assert (=> b!2492636 m!2858787))

(assert (=> b!2492636 m!2858787))

(declare-fun m!2858789 () Bool)

(assert (=> b!2492636 m!2858789))

(assert (=> b!2492636 m!2858789))

(declare-fun m!2858791 () Bool)

(assert (=> b!2492636 m!2858791))

(push 1)

(assert (not b!2492639))

(assert (not b!2492641))

(assert (not b!2492638))

(assert (not start!243510))

(assert (not b!2492631))

(assert (not b!2492634))

(assert tp_is_empty!12551)

(assert (not b!2492640))

(assert (not b!2492637))

(assert (not b!2492636))

(assert (not b!2492633))

(assert (not b!2492642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

