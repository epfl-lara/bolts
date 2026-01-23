; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243780 () Bool)

(assert start!243780)

(declare-fun b!2496246 () Bool)

(declare-fun e!1583900 () Bool)

(assert (=> b!2496246 (= e!1583900 true)))

(declare-datatypes ((C!14916 0))(
  ( (C!14917 (val!9110 Int)) )
))
(declare-datatypes ((Regex!7379 0))(
  ( (ElementMatch!7379 (c!396977 C!14916)) (Concat!12075 (regOne!15270 Regex!7379) (regTwo!15270 Regex!7379)) (EmptyExpr!7379) (Star!7379 (reg!7708 Regex!7379)) (EmptyLang!7379) (Union!7379 (regOne!15271 Regex!7379) (regTwo!15271 Regex!7379)) )
))
(declare-fun lt!894738 () Regex!7379)

(declare-fun lt!894742 () Regex!7379)

(declare-datatypes ((List!29444 0))(
  ( (Nil!29344) (Cons!29344 (h!34764 C!14916) (t!211143 List!29444)) )
))
(declare-fun tl!4068 () List!29444)

(declare-datatypes ((tuple2!29376 0))(
  ( (tuple2!29377 (_1!17230 List!29444) (_2!17230 List!29444)) )
))
(declare-datatypes ((Option!5808 0))(
  ( (None!5807) (Some!5807 (v!31738 tuple2!29376)) )
))
(declare-fun isDefined!4630 (Option!5808) Bool)

(declare-fun findConcatSeparation!830 (Regex!7379 Regex!7379 List!29444 List!29444 List!29444) Option!5808)

(assert (=> b!2496246 (isDefined!4630 (findConcatSeparation!830 lt!894738 lt!894742 Nil!29344 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43027 0))(
  ( (Unit!43028) )
))
(declare-fun lt!894740 () Unit!43027)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!112 (Regex!7379 Regex!7379 List!29444) Unit!43027)

(assert (=> b!2496246 (= lt!894740 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!112 lt!894738 lt!894742 tl!4068))))

(declare-fun b!2496247 () Bool)

(declare-fun e!1583903 () Bool)

(declare-fun e!1583902 () Bool)

(assert (=> b!2496247 (= e!1583903 e!1583902)))

(declare-fun res!1055750 () Bool)

(assert (=> b!2496247 (=> (not res!1055750) (not e!1583902))))

(declare-fun lt!894741 () Regex!7379)

(assert (=> b!2496247 (= res!1055750 (= lt!894741 (Concat!12075 lt!894738 lt!894742)))))

(declare-fun r!27340 () Regex!7379)

(assert (=> b!2496247 (= lt!894742 (Star!7379 (reg!7708 r!27340)))))

(declare-fun c!14016 () C!14916)

(declare-fun derivativeStep!1948 (Regex!7379 C!14916) Regex!7379)

(assert (=> b!2496247 (= lt!894738 (derivativeStep!1948 (reg!7708 r!27340) c!14016))))

(declare-fun res!1055748 () Bool)

(declare-fun e!1583899 () Bool)

(assert (=> start!243780 (=> (not res!1055748) (not e!1583899))))

(declare-fun validRegex!3005 (Regex!7379) Bool)

(assert (=> start!243780 (= res!1055748 (validRegex!3005 r!27340))))

(assert (=> start!243780 e!1583899))

(declare-fun e!1583901 () Bool)

(assert (=> start!243780 e!1583901))

(declare-fun tp_is_empty!12613 () Bool)

(assert (=> start!243780 tp_is_empty!12613))

(declare-fun e!1583904 () Bool)

(assert (=> start!243780 e!1583904))

(declare-fun b!2496248 () Bool)

(declare-fun tp!799502 () Bool)

(assert (=> b!2496248 (= e!1583901 tp!799502)))

(declare-fun b!2496249 () Bool)

(declare-fun res!1055752 () Bool)

(assert (=> b!2496249 (=> (not res!1055752) (not e!1583903))))

(get-info :version)

(assert (=> b!2496249 (= res!1055752 (and (not ((_ is EmptyExpr!7379) r!27340)) (not ((_ is EmptyLang!7379) r!27340)) (not ((_ is ElementMatch!7379) r!27340)) (not ((_ is Union!7379) r!27340)) ((_ is Star!7379) r!27340)))))

(declare-fun b!2496250 () Bool)

(declare-fun res!1055751 () Bool)

(assert (=> b!2496250 (=> (not res!1055751) (not e!1583902))))

(declare-fun nullable!2296 (Regex!7379) Bool)

(declare-fun derivative!74 (Regex!7379 List!29444) Regex!7379)

(assert (=> b!2496250 (= res!1055751 (not (nullable!2296 (derivative!74 lt!894738 tl!4068))))))

(declare-fun b!2496251 () Bool)

(assert (=> b!2496251 (= e!1583901 tp_is_empty!12613)))

(declare-fun b!2496252 () Bool)

(declare-fun tp!799498 () Bool)

(assert (=> b!2496252 (= e!1583904 (and tp_is_empty!12613 tp!799498))))

(declare-fun b!2496253 () Bool)

(declare-fun tp!799497 () Bool)

(declare-fun tp!799499 () Bool)

(assert (=> b!2496253 (= e!1583901 (and tp!799497 tp!799499))))

(declare-fun b!2496254 () Bool)

(assert (=> b!2496254 (= e!1583902 (not e!1583900))))

(declare-fun res!1055747 () Bool)

(assert (=> b!2496254 (=> res!1055747 e!1583900)))

(declare-fun lt!894739 () Bool)

(assert (=> b!2496254 (= res!1055747 (not lt!894739))))

(declare-fun lt!894744 () Regex!7379)

(declare-fun matchR!3388 (Regex!7379 List!29444) Bool)

(assert (=> b!2496254 (= lt!894739 (matchR!3388 lt!894744 Nil!29344))))

(assert (=> b!2496254 (= lt!894739 (matchR!3388 lt!894741 tl!4068))))

(declare-fun lt!894743 () Unit!43027)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!34 (Regex!7379 List!29444) Unit!43027)

(assert (=> b!2496254 (= lt!894743 (lemmaMatchRIsSameAsWholeDerivativeAndNil!34 lt!894741 tl!4068))))

(declare-fun b!2496255 () Bool)

(declare-fun tp!799500 () Bool)

(declare-fun tp!799501 () Bool)

(assert (=> b!2496255 (= e!1583901 (and tp!799500 tp!799501))))

(declare-fun b!2496256 () Bool)

(assert (=> b!2496256 (= e!1583899 e!1583903)))

(declare-fun res!1055749 () Bool)

(assert (=> b!2496256 (=> (not res!1055749) (not e!1583903))))

(assert (=> b!2496256 (= res!1055749 (nullable!2296 lt!894744))))

(assert (=> b!2496256 (= lt!894744 (derivative!74 lt!894741 tl!4068))))

(assert (=> b!2496256 (= lt!894741 (derivativeStep!1948 r!27340 c!14016))))

(assert (= (and start!243780 res!1055748) b!2496256))

(assert (= (and b!2496256 res!1055749) b!2496249))

(assert (= (and b!2496249 res!1055752) b!2496247))

(assert (= (and b!2496247 res!1055750) b!2496250))

(assert (= (and b!2496250 res!1055751) b!2496254))

(assert (= (and b!2496254 (not res!1055747)) b!2496246))

(assert (= (and start!243780 ((_ is ElementMatch!7379) r!27340)) b!2496251))

(assert (= (and start!243780 ((_ is Concat!12075) r!27340)) b!2496255))

(assert (= (and start!243780 ((_ is Star!7379) r!27340)) b!2496248))

(assert (= (and start!243780 ((_ is Union!7379) r!27340)) b!2496253))

(assert (= (and start!243780 ((_ is Cons!29344) tl!4068)) b!2496252))

(declare-fun m!2860647 () Bool)

(assert (=> start!243780 m!2860647))

(declare-fun m!2860649 () Bool)

(assert (=> b!2496256 m!2860649))

(declare-fun m!2860651 () Bool)

(assert (=> b!2496256 m!2860651))

(declare-fun m!2860653 () Bool)

(assert (=> b!2496256 m!2860653))

(declare-fun m!2860655 () Bool)

(assert (=> b!2496254 m!2860655))

(declare-fun m!2860657 () Bool)

(assert (=> b!2496254 m!2860657))

(declare-fun m!2860659 () Bool)

(assert (=> b!2496254 m!2860659))

(declare-fun m!2860661 () Bool)

(assert (=> b!2496247 m!2860661))

(declare-fun m!2860663 () Bool)

(assert (=> b!2496250 m!2860663))

(assert (=> b!2496250 m!2860663))

(declare-fun m!2860665 () Bool)

(assert (=> b!2496250 m!2860665))

(declare-fun m!2860667 () Bool)

(assert (=> b!2496246 m!2860667))

(assert (=> b!2496246 m!2860667))

(declare-fun m!2860669 () Bool)

(assert (=> b!2496246 m!2860669))

(declare-fun m!2860671 () Bool)

(assert (=> b!2496246 m!2860671))

(check-sat (not b!2496246) (not b!2496248) (not b!2496250) (not b!2496254) tp_is_empty!12613 (not b!2496256) (not b!2496247) (not b!2496255) (not b!2496253) (not start!243780) (not b!2496252))
(check-sat)
