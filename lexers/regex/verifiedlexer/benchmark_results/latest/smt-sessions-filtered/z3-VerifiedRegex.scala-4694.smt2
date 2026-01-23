; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243588 () Bool)

(assert start!243588)

(declare-fun b!2493741 () Bool)

(declare-fun res!1054804 () Bool)

(declare-fun e!1582593 () Bool)

(assert (=> b!2493741 (=> (not res!1054804) (not e!1582593))))

(declare-datatypes ((C!14884 0))(
  ( (C!14885 (val!9094 Int)) )
))
(declare-datatypes ((Regex!7363 0))(
  ( (ElementMatch!7363 (c!396475 C!14884)) (Concat!12059 (regOne!15238 Regex!7363) (regTwo!15238 Regex!7363)) (EmptyExpr!7363) (Star!7363 (reg!7692 Regex!7363)) (EmptyLang!7363) (Union!7363 (regOne!15239 Regex!7363) (regTwo!15239 Regex!7363)) )
))
(declare-fun lt!894203 () Regex!7363)

(declare-datatypes ((List!29428 0))(
  ( (Nil!29328) (Cons!29328 (h!34748 C!14884) (t!211127 List!29428)) )
))
(declare-fun tl!4068 () List!29428)

(declare-fun nullable!2280 (Regex!7363) Bool)

(declare-fun derivative!58 (Regex!7363 List!29428) Regex!7363)

(assert (=> b!2493741 (= res!1054804 (not (nullable!2280 (derivative!58 lt!894203 tl!4068))))))

(declare-fun res!1054805 () Bool)

(declare-fun e!1582590 () Bool)

(assert (=> start!243588 (=> (not res!1054805) (not e!1582590))))

(declare-fun r!27340 () Regex!7363)

(declare-fun validRegex!2989 (Regex!7363) Bool)

(assert (=> start!243588 (= res!1054805 (validRegex!2989 r!27340))))

(assert (=> start!243588 e!1582590))

(declare-fun e!1582594 () Bool)

(assert (=> start!243588 e!1582594))

(declare-fun tp_is_empty!12581 () Bool)

(assert (=> start!243588 tp_is_empty!12581))

(declare-fun e!1582591 () Bool)

(assert (=> start!243588 e!1582591))

(declare-fun b!2493742 () Bool)

(declare-fun res!1054808 () Bool)

(declare-fun e!1582592 () Bool)

(assert (=> b!2493742 (=> (not res!1054808) (not e!1582592))))

(get-info :version)

(assert (=> b!2493742 (= res!1054808 (and (not ((_ is EmptyExpr!7363) r!27340)) (not ((_ is EmptyLang!7363) r!27340)) (not ((_ is ElementMatch!7363) r!27340)) (not ((_ is Union!7363) r!27340)) ((_ is Star!7363) r!27340)))))

(declare-fun b!2493743 () Bool)

(declare-fun tp!798829 () Bool)

(declare-fun tp!798833 () Bool)

(assert (=> b!2493743 (= e!1582594 (and tp!798829 tp!798833))))

(declare-fun b!2493744 () Bool)

(assert (=> b!2493744 (= e!1582594 tp_is_empty!12581)))

(declare-fun b!2493745 () Bool)

(declare-fun tp!798834 () Bool)

(assert (=> b!2493745 (= e!1582594 tp!798834)))

(declare-fun b!2493746 () Bool)

(assert (=> b!2493746 (= e!1582592 e!1582593)))

(declare-fun res!1054807 () Bool)

(assert (=> b!2493746 (=> (not res!1054807) (not e!1582593))))

(declare-fun lt!894202 () Regex!7363)

(assert (=> b!2493746 (= res!1054807 (= lt!894202 (Concat!12059 lt!894203 (Star!7363 (reg!7692 r!27340)))))))

(declare-fun c!14016 () C!14884)

(declare-fun derivativeStep!1932 (Regex!7363 C!14884) Regex!7363)

(assert (=> b!2493746 (= lt!894203 (derivativeStep!1932 (reg!7692 r!27340) c!14016))))

(declare-fun b!2493747 () Bool)

(assert (=> b!2493747 (= e!1582593 (not true))))

(declare-fun lt!894201 () Regex!7363)

(declare-fun matchR!3372 (Regex!7363 List!29428) Bool)

(assert (=> b!2493747 (= (matchR!3372 lt!894202 tl!4068) (matchR!3372 lt!894201 Nil!29328))))

(declare-datatypes ((Unit!42995 0))(
  ( (Unit!42996) )
))
(declare-fun lt!894204 () Unit!42995)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!18 (Regex!7363 List!29428) Unit!42995)

(assert (=> b!2493747 (= lt!894204 (lemmaMatchRIsSameAsWholeDerivativeAndNil!18 lt!894202 tl!4068))))

(declare-fun b!2493748 () Bool)

(declare-fun tp!798832 () Bool)

(declare-fun tp!798830 () Bool)

(assert (=> b!2493748 (= e!1582594 (and tp!798832 tp!798830))))

(declare-fun b!2493749 () Bool)

(assert (=> b!2493749 (= e!1582590 e!1582592)))

(declare-fun res!1054806 () Bool)

(assert (=> b!2493749 (=> (not res!1054806) (not e!1582592))))

(assert (=> b!2493749 (= res!1054806 (nullable!2280 lt!894201))))

(assert (=> b!2493749 (= lt!894201 (derivative!58 lt!894202 tl!4068))))

(assert (=> b!2493749 (= lt!894202 (derivativeStep!1932 r!27340 c!14016))))

(declare-fun b!2493750 () Bool)

(declare-fun tp!798831 () Bool)

(assert (=> b!2493750 (= e!1582591 (and tp_is_empty!12581 tp!798831))))

(assert (= (and start!243588 res!1054805) b!2493749))

(assert (= (and b!2493749 res!1054806) b!2493742))

(assert (= (and b!2493742 res!1054808) b!2493746))

(assert (= (and b!2493746 res!1054807) b!2493741))

(assert (= (and b!2493741 res!1054804) b!2493747))

(assert (= (and start!243588 ((_ is ElementMatch!7363) r!27340)) b!2493744))

(assert (= (and start!243588 ((_ is Concat!12059) r!27340)) b!2493743))

(assert (= (and start!243588 ((_ is Star!7363) r!27340)) b!2493745))

(assert (= (and start!243588 ((_ is Union!7363) r!27340)) b!2493748))

(assert (= (and start!243588 ((_ is Cons!29328) tl!4068)) b!2493750))

(declare-fun m!2859229 () Bool)

(assert (=> b!2493749 m!2859229))

(declare-fun m!2859231 () Bool)

(assert (=> b!2493749 m!2859231))

(declare-fun m!2859233 () Bool)

(assert (=> b!2493749 m!2859233))

(declare-fun m!2859235 () Bool)

(assert (=> b!2493741 m!2859235))

(assert (=> b!2493741 m!2859235))

(declare-fun m!2859237 () Bool)

(assert (=> b!2493741 m!2859237))

(declare-fun m!2859239 () Bool)

(assert (=> start!243588 m!2859239))

(declare-fun m!2859241 () Bool)

(assert (=> b!2493746 m!2859241))

(declare-fun m!2859243 () Bool)

(assert (=> b!2493747 m!2859243))

(declare-fun m!2859245 () Bool)

(assert (=> b!2493747 m!2859245))

(declare-fun m!2859247 () Bool)

(assert (=> b!2493747 m!2859247))

(check-sat (not b!2493747) tp_is_empty!12581 (not start!243588) (not b!2493743) (not b!2493745) (not b!2493749) (not b!2493746) (not b!2493748) (not b!2493741) (not b!2493750))
(check-sat)
