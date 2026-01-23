; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243648 () Bool)

(assert start!243648)

(declare-fun b!2494642 () Bool)

(declare-fun e!1583055 () Bool)

(declare-fun tp!799094 () Bool)

(declare-fun tp!799093 () Bool)

(assert (=> b!2494642 (= e!1583055 (and tp!799094 tp!799093))))

(declare-fun b!2494643 () Bool)

(declare-fun e!1583051 () Bool)

(assert (=> b!2494643 (= e!1583051 true)))

(declare-fun lt!894361 () Bool)

(declare-datatypes ((C!14896 0))(
  ( (C!14897 (val!9100 Int)) )
))
(declare-datatypes ((Regex!7369 0))(
  ( (ElementMatch!7369 (c!396657 C!14896)) (Concat!12065 (regOne!15250 Regex!7369) (regTwo!15250 Regex!7369)) (EmptyExpr!7369) (Star!7369 (reg!7698 Regex!7369)) (EmptyLang!7369) (Union!7369 (regOne!15251 Regex!7369) (regTwo!15251 Regex!7369)) )
))
(declare-fun lt!894360 () Regex!7369)

(declare-datatypes ((List!29434 0))(
  ( (Nil!29334) (Cons!29334 (h!34754 C!14896) (t!211133 List!29434)) )
))
(declare-fun tl!4068 () List!29434)

(declare-fun matchR!3378 (Regex!7369 List!29434) Bool)

(assert (=> b!2494643 (= lt!894361 (matchR!3378 lt!894360 tl!4068))))

(declare-fun b!2494644 () Bool)

(declare-fun tp!799092 () Bool)

(assert (=> b!2494644 (= e!1583055 tp!799092)))

(declare-fun b!2494646 () Bool)

(declare-fun e!1583053 () Bool)

(assert (=> b!2494646 (= e!1583053 (not e!1583051))))

(declare-fun res!1055123 () Bool)

(assert (=> b!2494646 (=> res!1055123 e!1583051)))

(declare-fun lt!894362 () Bool)

(assert (=> b!2494646 (= res!1055123 (not lt!894362))))

(declare-fun lt!894366 () Regex!7369)

(assert (=> b!2494646 (= lt!894362 (matchR!3378 lt!894366 Nil!29334))))

(declare-fun lt!894363 () Regex!7369)

(assert (=> b!2494646 (= lt!894362 (matchR!3378 lt!894363 tl!4068))))

(declare-datatypes ((Unit!43007 0))(
  ( (Unit!43008) )
))
(declare-fun lt!894364 () Unit!43007)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!24 (Regex!7369 List!29434) Unit!43007)

(assert (=> b!2494646 (= lt!894364 (lemmaMatchRIsSameAsWholeDerivativeAndNil!24 lt!894363 tl!4068))))

(declare-fun b!2494647 () Bool)

(declare-fun tp!799091 () Bool)

(declare-fun tp!799090 () Bool)

(assert (=> b!2494647 (= e!1583055 (and tp!799091 tp!799090))))

(declare-fun b!2494648 () Bool)

(declare-fun e!1583056 () Bool)

(declare-fun tp_is_empty!12593 () Bool)

(declare-fun tp!799089 () Bool)

(assert (=> b!2494648 (= e!1583056 (and tp_is_empty!12593 tp!799089))))

(declare-fun b!2494649 () Bool)

(declare-fun res!1055130 () Bool)

(assert (=> b!2494649 (=> (not res!1055130) (not e!1583053))))

(declare-fun lt!894365 () Regex!7369)

(declare-fun nullable!2286 (Regex!7369) Bool)

(declare-fun derivative!64 (Regex!7369 List!29434) Regex!7369)

(assert (=> b!2494649 (= res!1055130 (not (nullable!2286 (derivative!64 lt!894365 tl!4068))))))

(declare-fun b!2494650 () Bool)

(declare-fun e!1583054 () Bool)

(declare-fun e!1583052 () Bool)

(assert (=> b!2494650 (= e!1583054 e!1583052)))

(declare-fun res!1055124 () Bool)

(assert (=> b!2494650 (=> (not res!1055124) (not e!1583052))))

(assert (=> b!2494650 (= res!1055124 (nullable!2286 lt!894366))))

(assert (=> b!2494650 (= lt!894366 (derivative!64 lt!894363 tl!4068))))

(declare-fun r!27340 () Regex!7369)

(declare-fun c!14016 () C!14896)

(declare-fun derivativeStep!1938 (Regex!7369 C!14896) Regex!7369)

(assert (=> b!2494650 (= lt!894363 (derivativeStep!1938 r!27340 c!14016))))

(declare-fun b!2494645 () Bool)

(declare-fun res!1055127 () Bool)

(assert (=> b!2494645 (=> (not res!1055127) (not e!1583052))))

(get-info :version)

(assert (=> b!2494645 (= res!1055127 (and (not ((_ is EmptyExpr!7369) r!27340)) (not ((_ is EmptyLang!7369) r!27340)) (not ((_ is ElementMatch!7369) r!27340)) (not ((_ is Union!7369) r!27340)) ((_ is Star!7369) r!27340)))))

(declare-fun res!1055128 () Bool)

(assert (=> start!243648 (=> (not res!1055128) (not e!1583054))))

(declare-fun validRegex!2995 (Regex!7369) Bool)

(assert (=> start!243648 (= res!1055128 (validRegex!2995 r!27340))))

(assert (=> start!243648 e!1583054))

(assert (=> start!243648 e!1583055))

(assert (=> start!243648 tp_is_empty!12593))

(assert (=> start!243648 e!1583056))

(declare-fun b!2494651 () Bool)

(assert (=> b!2494651 (= e!1583055 tp_is_empty!12593)))

(declare-fun b!2494652 () Bool)

(declare-fun res!1055125 () Bool)

(assert (=> b!2494652 (=> res!1055125 e!1583051)))

(assert (=> b!2494652 (= res!1055125 (not (validRegex!2995 lt!894365)))))

(declare-fun b!2494653 () Bool)

(assert (=> b!2494653 (= e!1583052 e!1583053)))

(declare-fun res!1055129 () Bool)

(assert (=> b!2494653 (=> (not res!1055129) (not e!1583053))))

(assert (=> b!2494653 (= res!1055129 (= lt!894363 lt!894360))))

(declare-fun lt!894359 () Regex!7369)

(assert (=> b!2494653 (= lt!894360 (Concat!12065 lt!894365 lt!894359))))

(assert (=> b!2494653 (= lt!894359 (Star!7369 (reg!7698 r!27340)))))

(assert (=> b!2494653 (= lt!894365 (derivativeStep!1938 (reg!7698 r!27340) c!14016))))

(declare-fun b!2494654 () Bool)

(declare-fun res!1055126 () Bool)

(assert (=> b!2494654 (=> res!1055126 e!1583051)))

(assert (=> b!2494654 (= res!1055126 (not (validRegex!2995 lt!894359)))))

(assert (= (and start!243648 res!1055128) b!2494650))

(assert (= (and b!2494650 res!1055124) b!2494645))

(assert (= (and b!2494645 res!1055127) b!2494653))

(assert (= (and b!2494653 res!1055129) b!2494649))

(assert (= (and b!2494649 res!1055130) b!2494646))

(assert (= (and b!2494646 (not res!1055123)) b!2494652))

(assert (= (and b!2494652 (not res!1055125)) b!2494654))

(assert (= (and b!2494654 (not res!1055126)) b!2494643))

(assert (= (and start!243648 ((_ is ElementMatch!7369) r!27340)) b!2494651))

(assert (= (and start!243648 ((_ is Concat!12065) r!27340)) b!2494642))

(assert (= (and start!243648 ((_ is Star!7369) r!27340)) b!2494644))

(assert (= (and start!243648 ((_ is Union!7369) r!27340)) b!2494647))

(assert (= (and start!243648 ((_ is Cons!29334) tl!4068)) b!2494648))

(declare-fun m!2859683 () Bool)

(assert (=> b!2494643 m!2859683))

(declare-fun m!2859685 () Bool)

(assert (=> b!2494649 m!2859685))

(assert (=> b!2494649 m!2859685))

(declare-fun m!2859687 () Bool)

(assert (=> b!2494649 m!2859687))

(declare-fun m!2859689 () Bool)

(assert (=> b!2494653 m!2859689))

(declare-fun m!2859691 () Bool)

(assert (=> b!2494646 m!2859691))

(declare-fun m!2859693 () Bool)

(assert (=> b!2494646 m!2859693))

(declare-fun m!2859695 () Bool)

(assert (=> b!2494646 m!2859695))

(declare-fun m!2859697 () Bool)

(assert (=> b!2494650 m!2859697))

(declare-fun m!2859699 () Bool)

(assert (=> b!2494650 m!2859699))

(declare-fun m!2859701 () Bool)

(assert (=> b!2494650 m!2859701))

(declare-fun m!2859703 () Bool)

(assert (=> b!2494654 m!2859703))

(declare-fun m!2859705 () Bool)

(assert (=> start!243648 m!2859705))

(declare-fun m!2859707 () Bool)

(assert (=> b!2494652 m!2859707))

(check-sat (not b!2494653) (not b!2494643) (not b!2494644) (not b!2494648) (not b!2494642) (not b!2494652) (not b!2494647) tp_is_empty!12593 (not start!243648) (not b!2494649) (not b!2494650) (not b!2494654) (not b!2494646))
(check-sat)
