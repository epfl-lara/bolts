; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287300 () Bool)

(assert start!287300)

(declare-fun b!2969003 () Bool)

(declare-fun e!1868228 () Bool)

(declare-fun e!1868231 () Bool)

(assert (=> b!2969003 (= e!1868228 (not e!1868231))))

(declare-fun res!1224528 () Bool)

(assert (=> b!2969003 (=> res!1224528 e!1868231)))

(declare-fun lt!1035824 () Bool)

(declare-datatypes ((C!18688 0))(
  ( (C!18689 (val!11380 Int)) )
))
(declare-datatypes ((Regex!9251 0))(
  ( (ElementMatch!9251 (c!487023 C!18688)) (Concat!14572 (regOne!19014 Regex!9251) (regTwo!19014 Regex!9251)) (EmptyExpr!9251) (Star!9251 (reg!9580 Regex!9251)) (EmptyLang!9251) (Union!9251 (regOne!19015 Regex!9251) (regTwo!19015 Regex!9251)) )
))
(declare-fun r!17423 () Regex!9251)

(get-info :version)

(assert (=> b!2969003 (= res!1224528 (or lt!1035824 ((_ is Concat!14572) r!17423) ((_ is Union!9251) r!17423) (not ((_ is Star!9251) r!17423))))))

(declare-datatypes ((List!35116 0))(
  ( (Nil!34992) (Cons!34992 (h!40412 C!18688) (t!234181 List!35116)) )
))
(declare-fun s!11993 () List!35116)

(declare-fun matchRSpec!1388 (Regex!9251 List!35116) Bool)

(assert (=> b!2969003 (= lt!1035824 (matchRSpec!1388 r!17423 s!11993))))

(declare-fun matchR!4133 (Regex!9251 List!35116) Bool)

(assert (=> b!2969003 (= lt!1035824 (matchR!4133 r!17423 s!11993))))

(declare-datatypes ((Unit!48881 0))(
  ( (Unit!48882) )
))
(declare-fun lt!1035827 () Unit!48881)

(declare-fun mainMatchTheorem!1388 (Regex!9251 List!35116) Unit!48881)

(assert (=> b!2969003 (= lt!1035827 (mainMatchTheorem!1388 r!17423 s!11993))))

(declare-fun b!2969004 () Bool)

(declare-fun e!1868226 () Bool)

(assert (=> b!2969004 (= e!1868231 e!1868226)))

(declare-fun res!1224530 () Bool)

(assert (=> b!2969004 (=> res!1224530 e!1868226)))

(declare-fun lt!1035825 () Regex!9251)

(declare-fun isEmptyLang!365 (Regex!9251) Bool)

(assert (=> b!2969004 (= res!1224530 (not (isEmptyLang!365 lt!1035825)))))

(declare-fun simplify!252 (Regex!9251) Regex!9251)

(assert (=> b!2969004 (= lt!1035825 (simplify!252 (reg!9580 r!17423)))))

(declare-fun b!2969005 () Bool)

(declare-fun e!1868229 () Bool)

(declare-fun tp!946856 () Bool)

(declare-fun tp!946855 () Bool)

(assert (=> b!2969005 (= e!1868229 (and tp!946856 tp!946855))))

(declare-fun b!2969006 () Bool)

(declare-fun e!1868227 () Bool)

(assert (=> b!2969006 (= e!1868227 true)))

(declare-fun lt!1035826 () Bool)

(declare-fun lt!1035828 () Regex!9251)

(assert (=> b!2969006 (= lt!1035826 (matchR!4133 lt!1035828 s!11993))))

(declare-fun b!2969007 () Bool)

(declare-fun e!1868225 () Bool)

(assert (=> b!2969007 (= e!1868226 e!1868225)))

(declare-fun res!1224527 () Bool)

(assert (=> b!2969007 (=> res!1224527 e!1868225)))

(declare-fun lt!1035822 () Bool)

(assert (=> b!2969007 (= res!1224527 (not lt!1035822))))

(assert (=> b!2969007 (= lt!1035822 (matchR!4133 lt!1035825 s!11993))))

(assert (=> b!2969007 (= lt!1035822 (matchR!4133 (reg!9580 r!17423) s!11993))))

(declare-fun lt!1035823 () Unit!48881)

(declare-fun lemmaSimplifySound!160 (Regex!9251 List!35116) Unit!48881)

(assert (=> b!2969007 (= lt!1035823 (lemmaSimplifySound!160 (reg!9580 r!17423) s!11993))))

(declare-fun b!2969008 () Bool)

(declare-fun tp!946857 () Bool)

(declare-fun tp!946853 () Bool)

(assert (=> b!2969008 (= e!1868229 (and tp!946857 tp!946853))))

(declare-fun b!2969009 () Bool)

(assert (=> b!2969009 (= e!1868225 e!1868227)))

(declare-fun res!1224526 () Bool)

(assert (=> b!2969009 (=> res!1224526 e!1868227)))

(declare-fun validRegex!3984 (Regex!9251) Bool)

(assert (=> b!2969009 (= res!1224526 (not (validRegex!3984 lt!1035828)))))

(assert (=> b!2969009 (= lt!1035828 (Star!9251 (reg!9580 r!17423)))))

(declare-fun res!1224525 () Bool)

(assert (=> start!287300 (=> (not res!1224525) (not e!1868228))))

(assert (=> start!287300 (= res!1224525 (validRegex!3984 r!17423))))

(assert (=> start!287300 e!1868228))

(assert (=> start!287300 e!1868229))

(declare-fun e!1868230 () Bool)

(assert (=> start!287300 e!1868230))

(declare-fun b!2969010 () Bool)

(declare-fun tp_is_empty!16065 () Bool)

(assert (=> b!2969010 (= e!1868229 tp_is_empty!16065)))

(declare-fun b!2969011 () Bool)

(declare-fun tp!946854 () Bool)

(assert (=> b!2969011 (= e!1868229 tp!946854)))

(declare-fun b!2969012 () Bool)

(declare-fun tp!946852 () Bool)

(assert (=> b!2969012 (= e!1868230 (and tp_is_empty!16065 tp!946852))))

(declare-fun b!2969013 () Bool)

(declare-fun res!1224529 () Bool)

(assert (=> b!2969013 (=> res!1224529 e!1868227)))

(assert (=> b!2969013 (= res!1224529 (not (matchR!4133 (reg!9580 r!17423) Nil!34992)))))

(assert (= (and start!287300 res!1224525) b!2969003))

(assert (= (and b!2969003 (not res!1224528)) b!2969004))

(assert (= (and b!2969004 (not res!1224530)) b!2969007))

(assert (= (and b!2969007 (not res!1224527)) b!2969009))

(assert (= (and b!2969009 (not res!1224526)) b!2969013))

(assert (= (and b!2969013 (not res!1224529)) b!2969006))

(assert (= (and start!287300 ((_ is ElementMatch!9251) r!17423)) b!2969010))

(assert (= (and start!287300 ((_ is Concat!14572) r!17423)) b!2969005))

(assert (= (and start!287300 ((_ is Star!9251) r!17423)) b!2969011))

(assert (= (and start!287300 ((_ is Union!9251) r!17423)) b!2969008))

(assert (= (and start!287300 ((_ is Cons!34992) s!11993)) b!2969012))

(declare-fun m!3337541 () Bool)

(assert (=> b!2969003 m!3337541))

(declare-fun m!3337543 () Bool)

(assert (=> b!2969003 m!3337543))

(declare-fun m!3337545 () Bool)

(assert (=> b!2969003 m!3337545))

(declare-fun m!3337547 () Bool)

(assert (=> b!2969004 m!3337547))

(declare-fun m!3337549 () Bool)

(assert (=> b!2969004 m!3337549))

(declare-fun m!3337551 () Bool)

(assert (=> start!287300 m!3337551))

(declare-fun m!3337553 () Bool)

(assert (=> b!2969013 m!3337553))

(declare-fun m!3337555 () Bool)

(assert (=> b!2969009 m!3337555))

(declare-fun m!3337557 () Bool)

(assert (=> b!2969006 m!3337557))

(declare-fun m!3337559 () Bool)

(assert (=> b!2969007 m!3337559))

(declare-fun m!3337561 () Bool)

(assert (=> b!2969007 m!3337561))

(declare-fun m!3337563 () Bool)

(assert (=> b!2969007 m!3337563))

(check-sat (not start!287300) (not b!2969006) (not b!2969009) (not b!2969004) (not b!2969013) (not b!2969008) (not b!2969011) (not b!2969012) (not b!2969007) tp_is_empty!16065 (not b!2969003) (not b!2969005))
(check-sat)
