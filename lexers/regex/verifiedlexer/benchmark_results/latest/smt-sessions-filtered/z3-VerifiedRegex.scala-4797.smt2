; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246904 () Bool)

(assert start!246904)

(declare-fun b!2542945 () Bool)

(declare-fun e!1607848 () Bool)

(declare-fun tp_is_empty!12993 () Bool)

(declare-fun tp!811922 () Bool)

(assert (=> b!2542945 (= e!1607848 (and tp_is_empty!12993 tp!811922))))

(declare-fun b!2542946 () Bool)

(declare-fun res!1071741 () Bool)

(declare-fun e!1607849 () Bool)

(assert (=> b!2542946 (=> (not res!1071741) (not e!1607849))))

(declare-datatypes ((C!15296 0))(
  ( (C!15297 (val!9300 Int)) )
))
(declare-datatypes ((List!29634 0))(
  ( (Nil!29534) (Cons!29534 (h!34954 C!15296) (t!211333 List!29634)) )
))
(declare-fun tl!4068 () List!29634)

(declare-datatypes ((Regex!7569 0))(
  ( (ElementMatch!7569 (c!407169 C!15296)) (Concat!12265 (regOne!15650 Regex!7569) (regTwo!15650 Regex!7569)) (EmptyExpr!7569) (Star!7569 (reg!7898 Regex!7569)) (EmptyLang!7569) (Union!7569 (regOne!15651 Regex!7569) (regTwo!15651 Regex!7569)) )
))
(declare-fun r!27340 () Regex!7569)

(declare-fun c!14016 () C!15296)

(declare-fun nullable!2486 (Regex!7569) Bool)

(declare-fun derivative!264 (Regex!7569 List!29634) Regex!7569)

(declare-fun derivativeStep!2138 (Regex!7569 C!15296) Regex!7569)

(assert (=> b!2542946 (= res!1071741 (nullable!2486 (derivative!264 (derivativeStep!2138 r!27340 c!14016) tl!4068)))))

(declare-fun b!2542947 () Bool)

(declare-fun res!1071742 () Bool)

(assert (=> b!2542947 (=> (not res!1071742) (not e!1607849))))

(assert (=> b!2542947 (= res!1071742 (not (nullable!2486 (derivative!264 (derivativeStep!2138 (regOne!15651 r!27340) c!14016) tl!4068))))))

(declare-fun res!1071743 () Bool)

(assert (=> start!246904 (=> (not res!1071743) (not e!1607849))))

(declare-fun validRegex!3195 (Regex!7569) Bool)

(assert (=> start!246904 (= res!1071743 (validRegex!3195 r!27340))))

(assert (=> start!246904 e!1607849))

(declare-fun e!1607850 () Bool)

(assert (=> start!246904 e!1607850))

(assert (=> start!246904 tp_is_empty!12993))

(assert (=> start!246904 e!1607848))

(declare-fun b!2542948 () Bool)

(declare-fun tp!811921 () Bool)

(declare-fun tp!811919 () Bool)

(assert (=> b!2542948 (= e!1607850 (and tp!811921 tp!811919))))

(declare-fun b!2542949 () Bool)

(declare-fun tp!811920 () Bool)

(assert (=> b!2542949 (= e!1607850 tp!811920)))

(declare-fun b!2542950 () Bool)

(declare-fun res!1071744 () Bool)

(assert (=> b!2542950 (=> (not res!1071744) (not e!1607849))))

(get-info :version)

(assert (=> b!2542950 (= res!1071744 (and (not ((_ is EmptyExpr!7569) r!27340)) (not ((_ is EmptyLang!7569) r!27340)) (not ((_ is ElementMatch!7569) r!27340)) ((_ is Union!7569) r!27340)))))

(declare-fun b!2542951 () Bool)

(declare-fun res!1071740 () Bool)

(assert (=> b!2542951 (=> (not res!1071740) (not e!1607849))))

(assert (=> b!2542951 (= res!1071740 (not (nullable!2486 (derivative!264 (derivativeStep!2138 (regTwo!15651 r!27340) c!14016) tl!4068))))))

(declare-fun b!2542952 () Bool)

(assert (=> b!2542952 (= e!1607850 tp_is_empty!12993)))

(declare-fun b!2542953 () Bool)

(assert (=> b!2542953 (= e!1607849 (not true))))

(declare-fun lt!902167 () Bool)

(declare-fun lt!902161 () Bool)

(assert (=> b!2542953 (or lt!902167 lt!902161)))

(declare-datatypes ((Unit!43339 0))(
  ( (Unit!43340) )
))
(declare-fun lt!902164 () Unit!43339)

(declare-fun lt!902160 () List!29634)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!194 (Regex!7569 Regex!7569 List!29634) Unit!43339)

(assert (=> b!2542953 (= lt!902164 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!194 (regOne!15651 r!27340) (regTwo!15651 r!27340) lt!902160))))

(declare-fun lt!902166 () Regex!7569)

(declare-fun matchR!3524 (Regex!7569 List!29634) Bool)

(assert (=> b!2542953 (= lt!902161 (matchR!3524 lt!902166 Nil!29534))))

(assert (=> b!2542953 (= lt!902161 (matchR!3524 (regTwo!15651 r!27340) lt!902160))))

(assert (=> b!2542953 (= lt!902166 (derivative!264 (regTwo!15651 r!27340) lt!902160))))

(declare-fun lt!902168 () Unit!43339)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!170 (Regex!7569 List!29634) Unit!43339)

(assert (=> b!2542953 (= lt!902168 (lemmaMatchRIsSameAsWholeDerivativeAndNil!170 (regTwo!15651 r!27340) lt!902160))))

(declare-fun lt!902165 () Regex!7569)

(assert (=> b!2542953 (= lt!902167 (matchR!3524 lt!902165 Nil!29534))))

(assert (=> b!2542953 (= lt!902167 (matchR!3524 (regOne!15651 r!27340) lt!902160))))

(assert (=> b!2542953 (= lt!902165 (derivative!264 (regOne!15651 r!27340) lt!902160))))

(declare-fun lt!902162 () Unit!43339)

(assert (=> b!2542953 (= lt!902162 (lemmaMatchRIsSameAsWholeDerivativeAndNil!170 (regOne!15651 r!27340) lt!902160))))

(assert (=> b!2542953 (= (matchR!3524 r!27340 lt!902160) (matchR!3524 (derivative!264 r!27340 lt!902160) Nil!29534))))

(declare-fun lt!902163 () Unit!43339)

(assert (=> b!2542953 (= lt!902163 (lemmaMatchRIsSameAsWholeDerivativeAndNil!170 r!27340 lt!902160))))

(assert (=> b!2542953 (= lt!902160 (Cons!29534 c!14016 tl!4068))))

(declare-fun b!2542954 () Bool)

(declare-fun tp!811918 () Bool)

(declare-fun tp!811917 () Bool)

(assert (=> b!2542954 (= e!1607850 (and tp!811918 tp!811917))))

(assert (= (and start!246904 res!1071743) b!2542946))

(assert (= (and b!2542946 res!1071741) b!2542950))

(assert (= (and b!2542950 res!1071744) b!2542947))

(assert (= (and b!2542947 res!1071742) b!2542951))

(assert (= (and b!2542951 res!1071740) b!2542953))

(assert (= (and start!246904 ((_ is ElementMatch!7569) r!27340)) b!2542952))

(assert (= (and start!246904 ((_ is Concat!12265) r!27340)) b!2542954))

(assert (= (and start!246904 ((_ is Star!7569) r!27340)) b!2542949))

(assert (= (and start!246904 ((_ is Union!7569) r!27340)) b!2542948))

(assert (= (and start!246904 ((_ is Cons!29534) tl!4068)) b!2542945))

(declare-fun m!2889175 () Bool)

(assert (=> b!2542946 m!2889175))

(assert (=> b!2542946 m!2889175))

(declare-fun m!2889177 () Bool)

(assert (=> b!2542946 m!2889177))

(assert (=> b!2542946 m!2889177))

(declare-fun m!2889179 () Bool)

(assert (=> b!2542946 m!2889179))

(declare-fun m!2889181 () Bool)

(assert (=> start!246904 m!2889181))

(declare-fun m!2889183 () Bool)

(assert (=> b!2542953 m!2889183))

(declare-fun m!2889185 () Bool)

(assert (=> b!2542953 m!2889185))

(declare-fun m!2889187 () Bool)

(assert (=> b!2542953 m!2889187))

(declare-fun m!2889189 () Bool)

(assert (=> b!2542953 m!2889189))

(declare-fun m!2889191 () Bool)

(assert (=> b!2542953 m!2889191))

(declare-fun m!2889193 () Bool)

(assert (=> b!2542953 m!2889193))

(declare-fun m!2889195 () Bool)

(assert (=> b!2542953 m!2889195))

(declare-fun m!2889197 () Bool)

(assert (=> b!2542953 m!2889197))

(declare-fun m!2889199 () Bool)

(assert (=> b!2542953 m!2889199))

(declare-fun m!2889201 () Bool)

(assert (=> b!2542953 m!2889201))

(declare-fun m!2889203 () Bool)

(assert (=> b!2542953 m!2889203))

(declare-fun m!2889205 () Bool)

(assert (=> b!2542953 m!2889205))

(assert (=> b!2542953 m!2889205))

(declare-fun m!2889207 () Bool)

(assert (=> b!2542953 m!2889207))

(declare-fun m!2889209 () Bool)

(assert (=> b!2542951 m!2889209))

(assert (=> b!2542951 m!2889209))

(declare-fun m!2889211 () Bool)

(assert (=> b!2542951 m!2889211))

(assert (=> b!2542951 m!2889211))

(declare-fun m!2889213 () Bool)

(assert (=> b!2542951 m!2889213))

(declare-fun m!2889215 () Bool)

(assert (=> b!2542947 m!2889215))

(assert (=> b!2542947 m!2889215))

(declare-fun m!2889217 () Bool)

(assert (=> b!2542947 m!2889217))

(assert (=> b!2542947 m!2889217))

(declare-fun m!2889219 () Bool)

(assert (=> b!2542947 m!2889219))

(check-sat (not b!2542951) (not b!2542946) (not b!2542949) (not b!2542948) (not start!246904) tp_is_empty!12993 (not b!2542953) (not b!2542945) (not b!2542947) (not b!2542954))
(check-sat)
