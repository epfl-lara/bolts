; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!247032 () Bool)

(assert start!247032)

(declare-fun b!2544811 () Bool)

(declare-fun e!1608812 () Bool)

(declare-datatypes ((C!15320 0))(
  ( (C!15321 (val!9312 Int)) )
))
(declare-datatypes ((Regex!7581 0))(
  ( (ElementMatch!7581 (c!407607 C!15320)) (Concat!12277 (regOne!15674 Regex!7581) (regTwo!15674 Regex!7581)) (EmptyExpr!7581) (Star!7581 (reg!7910 Regex!7581)) (EmptyLang!7581) (Union!7581 (regOne!15675 Regex!7581) (regTwo!15675 Regex!7581)) )
))
(declare-fun lt!902402 () Regex!7581)

(declare-fun validRegex!3207 (Regex!7581) Bool)

(assert (=> b!2544811 (= e!1608812 (validRegex!3207 lt!902402))))

(declare-fun b!2544812 () Bool)

(declare-fun res!1072229 () Bool)

(assert (=> b!2544812 (=> res!1072229 e!1608812)))

(declare-fun lt!902401 () Regex!7581)

(assert (=> b!2544812 (= res!1072229 (not (validRegex!3207 lt!902401)))))

(declare-fun b!2544814 () Bool)

(declare-fun e!1608813 () Bool)

(declare-fun e!1608811 () Bool)

(assert (=> b!2544814 (= e!1608813 e!1608811)))

(declare-fun res!1072233 () Bool)

(assert (=> b!2544814 (=> (not res!1072233) (not e!1608811))))

(declare-fun lt!902400 () Regex!7581)

(declare-fun nullable!2498 (Regex!7581) Bool)

(assert (=> b!2544814 (= res!1072233 (nullable!2498 lt!902400))))

(declare-fun lt!902403 () Regex!7581)

(declare-datatypes ((List!29646 0))(
  ( (Nil!29546) (Cons!29546 (h!34966 C!15320) (t!211345 List!29646)) )
))
(declare-fun tl!4068 () List!29646)

(declare-fun derivative!276 (Regex!7581 List!29646) Regex!7581)

(assert (=> b!2544814 (= lt!902400 (derivative!276 lt!902403 tl!4068))))

(declare-fun r!27340 () Regex!7581)

(declare-fun c!14016 () C!15320)

(declare-fun derivativeStep!2150 (Regex!7581 C!15320) Regex!7581)

(assert (=> b!2544814 (= lt!902403 (derivativeStep!2150 r!27340 c!14016))))

(declare-fun b!2544815 () Bool)

(declare-fun e!1608810 () Bool)

(declare-fun tp_is_empty!13017 () Bool)

(declare-fun tp!812518 () Bool)

(assert (=> b!2544815 (= e!1608810 (and tp_is_empty!13017 tp!812518))))

(declare-fun res!1072231 () Bool)

(assert (=> start!247032 (=> (not res!1072231) (not e!1608813))))

(assert (=> start!247032 (= res!1072231 (validRegex!3207 r!27340))))

(assert (=> start!247032 e!1608813))

(declare-fun e!1608814 () Bool)

(assert (=> start!247032 e!1608814))

(assert (=> start!247032 tp_is_empty!13017))

(assert (=> start!247032 e!1608810))

(declare-fun b!2544813 () Bool)

(declare-fun e!1608809 () Bool)

(assert (=> b!2544813 (= e!1608809 (not e!1608812))))

(declare-fun res!1072228 () Bool)

(assert (=> b!2544813 (=> res!1072228 e!1608812)))

(declare-fun lt!902404 () Bool)

(assert (=> b!2544813 (= res!1072228 (not lt!902404))))

(declare-fun matchR!3528 (Regex!7581 List!29646) Bool)

(assert (=> b!2544813 (= lt!902404 (matchR!3528 lt!902400 Nil!29546))))

(assert (=> b!2544813 (= lt!902404 (matchR!3528 lt!902403 tl!4068))))

(declare-datatypes ((Unit!43351 0))(
  ( (Unit!43352) )
))
(declare-fun lt!902399 () Unit!43351)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!174 (Regex!7581 List!29646) Unit!43351)

(assert (=> b!2544813 (= lt!902399 (lemmaMatchRIsSameAsWholeDerivativeAndNil!174 lt!902403 tl!4068))))

(declare-fun b!2544816 () Bool)

(declare-fun tp!812515 () Bool)

(assert (=> b!2544816 (= e!1608814 tp!812515)))

(declare-fun b!2544817 () Bool)

(declare-fun tp!812513 () Bool)

(declare-fun tp!812517 () Bool)

(assert (=> b!2544817 (= e!1608814 (and tp!812513 tp!812517))))

(declare-fun b!2544818 () Bool)

(declare-fun res!1072232 () Bool)

(assert (=> b!2544818 (=> (not res!1072232) (not e!1608809))))

(assert (=> b!2544818 (= res!1072232 (not (nullable!2498 (derivative!276 lt!902401 tl!4068))))))

(declare-fun b!2544819 () Bool)

(declare-fun res!1072230 () Bool)

(assert (=> b!2544819 (=> (not res!1072230) (not e!1608811))))

(get-info :version)

(assert (=> b!2544819 (= res!1072230 (and (not ((_ is EmptyExpr!7581) r!27340)) (not ((_ is EmptyLang!7581) r!27340)) (not ((_ is ElementMatch!7581) r!27340)) (not ((_ is Union!7581) r!27340)) ((_ is Star!7581) r!27340)))))

(declare-fun b!2544820 () Bool)

(assert (=> b!2544820 (= e!1608811 e!1608809)))

(declare-fun res!1072234 () Bool)

(assert (=> b!2544820 (=> (not res!1072234) (not e!1608809))))

(assert (=> b!2544820 (= res!1072234 (= lt!902403 (Concat!12277 lt!902401 lt!902402)))))

(assert (=> b!2544820 (= lt!902402 (Star!7581 (reg!7910 r!27340)))))

(assert (=> b!2544820 (= lt!902401 (derivativeStep!2150 (reg!7910 r!27340) c!14016))))

(declare-fun b!2544821 () Bool)

(declare-fun tp!812516 () Bool)

(declare-fun tp!812514 () Bool)

(assert (=> b!2544821 (= e!1608814 (and tp!812516 tp!812514))))

(declare-fun b!2544822 () Bool)

(assert (=> b!2544822 (= e!1608814 tp_is_empty!13017)))

(assert (= (and start!247032 res!1072231) b!2544814))

(assert (= (and b!2544814 res!1072233) b!2544819))

(assert (= (and b!2544819 res!1072230) b!2544820))

(assert (= (and b!2544820 res!1072234) b!2544818))

(assert (= (and b!2544818 res!1072232) b!2544813))

(assert (= (and b!2544813 (not res!1072228)) b!2544812))

(assert (= (and b!2544812 (not res!1072229)) b!2544811))

(assert (= (and start!247032 ((_ is ElementMatch!7581) r!27340)) b!2544822))

(assert (= (and start!247032 ((_ is Concat!12277) r!27340)) b!2544817))

(assert (= (and start!247032 ((_ is Star!7581) r!27340)) b!2544816))

(assert (= (and start!247032 ((_ is Union!7581) r!27340)) b!2544821))

(assert (= (and start!247032 ((_ is Cons!29546) tl!4068)) b!2544815))

(declare-fun m!2890057 () Bool)

(assert (=> b!2544812 m!2890057))

(declare-fun m!2890059 () Bool)

(assert (=> b!2544814 m!2890059))

(declare-fun m!2890061 () Bool)

(assert (=> b!2544814 m!2890061))

(declare-fun m!2890063 () Bool)

(assert (=> b!2544814 m!2890063))

(declare-fun m!2890065 () Bool)

(assert (=> b!2544820 m!2890065))

(declare-fun m!2890067 () Bool)

(assert (=> start!247032 m!2890067))

(declare-fun m!2890069 () Bool)

(assert (=> b!2544818 m!2890069))

(assert (=> b!2544818 m!2890069))

(declare-fun m!2890071 () Bool)

(assert (=> b!2544818 m!2890071))

(declare-fun m!2890073 () Bool)

(assert (=> b!2544813 m!2890073))

(declare-fun m!2890075 () Bool)

(assert (=> b!2544813 m!2890075))

(declare-fun m!2890077 () Bool)

(assert (=> b!2544813 m!2890077))

(declare-fun m!2890079 () Bool)

(assert (=> b!2544811 m!2890079))

(check-sat (not start!247032) (not b!2544817) (not b!2544815) (not b!2544814) (not b!2544821) (not b!2544813) (not b!2544820) (not b!2544812) (not b!2544816) (not b!2544818) (not b!2544811) tp_is_empty!13017)
(check-sat)
