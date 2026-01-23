; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243984 () Bool)

(assert start!243984)

(declare-fun b!2498766 () Bool)

(declare-fun e!1585198 () Bool)

(declare-fun tp!800054 () Bool)

(declare-fun tp!800055 () Bool)

(assert (=> b!2498766 (= e!1585198 (and tp!800054 tp!800055))))

(declare-fun b!2498767 () Bool)

(declare-fun tp!800053 () Bool)

(declare-fun tp!800056 () Bool)

(assert (=> b!2498767 (= e!1585198 (and tp!800053 tp!800056))))

(declare-fun b!2498768 () Bool)

(declare-fun e!1585195 () Bool)

(declare-fun tp_is_empty!12641 () Bool)

(declare-fun tp!800057 () Bool)

(assert (=> b!2498768 (= e!1585195 (and tp_is_empty!12641 tp!800057))))

(declare-fun b!2498769 () Bool)

(declare-fun res!1056835 () Bool)

(declare-fun e!1585197 () Bool)

(assert (=> b!2498769 (=> res!1056835 e!1585197)))

(declare-datatypes ((C!14944 0))(
  ( (C!14945 (val!9124 Int)) )
))
(declare-datatypes ((Regex!7393 0))(
  ( (ElementMatch!7393 (c!397463 C!14944)) (Concat!12089 (regOne!15298 Regex!7393) (regTwo!15298 Regex!7393)) (EmptyExpr!7393) (Star!7393 (reg!7722 Regex!7393)) (EmptyLang!7393) (Union!7393 (regOne!15299 Regex!7393) (regTwo!15299 Regex!7393)) )
))
(declare-fun r!27340 () Regex!7393)

(declare-datatypes ((List!29458 0))(
  ( (Nil!29358) (Cons!29358 (h!34778 C!14944) (t!211157 List!29458)) )
))
(declare-datatypes ((tuple2!29404 0))(
  ( (tuple2!29405 (_1!17244 List!29458) (_2!17244 List!29458)) )
))
(declare-fun lt!895376 () tuple2!29404)

(declare-fun c!14016 () C!14944)

(declare-fun matchR!3402 (Regex!7393 List!29458) Bool)

(assert (=> b!2498769 (= res!1056835 (not (matchR!3402 (reg!7722 r!27340) (Cons!29358 c!14016 (_1!17244 lt!895376)))))))

(declare-fun b!2498770 () Bool)

(declare-fun res!1056840 () Bool)

(assert (=> b!2498770 (=> res!1056840 e!1585197)))

(declare-fun lt!895383 () Regex!7393)

(assert (=> b!2498770 (= res!1056840 (not (matchR!3402 lt!895383 (_2!17244 lt!895376))))))

(declare-fun b!2498771 () Bool)

(declare-fun e!1585192 () Bool)

(declare-fun e!1585194 () Bool)

(assert (=> b!2498771 (= e!1585192 e!1585194)))

(declare-fun res!1056842 () Bool)

(assert (=> b!2498771 (=> (not res!1056842) (not e!1585194))))

(declare-fun lt!895377 () Regex!7393)

(declare-fun nullable!2310 (Regex!7393) Bool)

(assert (=> b!2498771 (= res!1056842 (nullable!2310 lt!895377))))

(declare-fun lt!895375 () Regex!7393)

(declare-fun tl!4068 () List!29458)

(declare-fun derivative!88 (Regex!7393 List!29458) Regex!7393)

(assert (=> b!2498771 (= lt!895377 (derivative!88 lt!895375 tl!4068))))

(declare-fun derivativeStep!1962 (Regex!7393 C!14944) Regex!7393)

(assert (=> b!2498771 (= lt!895375 (derivativeStep!1962 r!27340 c!14016))))

(declare-fun b!2498772 () Bool)

(declare-fun e!1585193 () Bool)

(assert (=> b!2498772 (= e!1585193 e!1585197)))

(declare-fun res!1056838 () Bool)

(assert (=> b!2498772 (=> res!1056838 e!1585197)))

(declare-fun ++!7175 (List!29458 List!29458) List!29458)

(assert (=> b!2498772 (= res!1056838 (not (= (++!7175 (_1!17244 lt!895376) (_2!17244 lt!895376)) tl!4068)))))

(declare-datatypes ((Option!5822 0))(
  ( (None!5821) (Some!5821 (v!31752 tuple2!29404)) )
))
(declare-fun lt!895380 () Option!5822)

(declare-fun get!9101 (Option!5822) tuple2!29404)

(assert (=> b!2498772 (= lt!895376 (get!9101 lt!895380))))

(declare-fun isDefined!4644 (Option!5822) Bool)

(assert (=> b!2498772 (isDefined!4644 lt!895380)))

(declare-fun lt!895382 () Regex!7393)

(declare-fun findConcatSeparation!844 (Regex!7393 Regex!7393 List!29458 List!29458 List!29458) Option!5822)

(assert (=> b!2498772 (= lt!895380 (findConcatSeparation!844 lt!895382 lt!895383 Nil!29358 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43055 0))(
  ( (Unit!43056) )
))
(declare-fun lt!895384 () Unit!43055)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!126 (Regex!7393 Regex!7393 List!29458) Unit!43055)

(assert (=> b!2498772 (= lt!895384 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!126 lt!895382 lt!895383 tl!4068))))

(declare-fun b!2498774 () Bool)

(declare-fun e!1585196 () Bool)

(assert (=> b!2498774 (= e!1585194 e!1585196)))

(declare-fun res!1056839 () Bool)

(assert (=> b!2498774 (=> (not res!1056839) (not e!1585196))))

(assert (=> b!2498774 (= res!1056839 (= lt!895375 (Concat!12089 lt!895382 lt!895383)))))

(assert (=> b!2498774 (= lt!895383 (Star!7393 (reg!7722 r!27340)))))

(assert (=> b!2498774 (= lt!895382 (derivativeStep!1962 (reg!7722 r!27340) c!14016))))

(declare-fun b!2498775 () Bool)

(assert (=> b!2498775 (= e!1585196 (not e!1585193))))

(declare-fun res!1056834 () Bool)

(assert (=> b!2498775 (=> res!1056834 e!1585193)))

(declare-fun lt!895381 () Bool)

(assert (=> b!2498775 (= res!1056834 (not lt!895381))))

(assert (=> b!2498775 (= lt!895381 (matchR!3402 lt!895377 Nil!29358))))

(assert (=> b!2498775 (= lt!895381 (matchR!3402 lt!895375 tl!4068))))

(declare-fun lt!895378 () Unit!43055)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!48 (Regex!7393 List!29458) Unit!43055)

(assert (=> b!2498775 (= lt!895378 (lemmaMatchRIsSameAsWholeDerivativeAndNil!48 lt!895375 tl!4068))))

(declare-fun b!2498776 () Bool)

(assert (=> b!2498776 (= e!1585198 tp_is_empty!12641)))

(declare-fun b!2498777 () Bool)

(declare-fun res!1056833 () Bool)

(assert (=> b!2498777 (=> res!1056833 e!1585197)))

(assert (=> b!2498777 (= res!1056833 (not (matchR!3402 lt!895382 (_1!17244 lt!895376))))))

(declare-fun b!2498778 () Bool)

(declare-fun tp!800058 () Bool)

(assert (=> b!2498778 (= e!1585198 tp!800058)))

(declare-fun b!2498779 () Bool)

(declare-fun res!1056836 () Bool)

(assert (=> b!2498779 (=> (not res!1056836) (not e!1585194))))

(get-info :version)

(assert (=> b!2498779 (= res!1056836 (and (not ((_ is EmptyExpr!7393) r!27340)) (not ((_ is EmptyLang!7393) r!27340)) (not ((_ is ElementMatch!7393) r!27340)) (not ((_ is Union!7393) r!27340)) ((_ is Star!7393) r!27340)))))

(declare-fun b!2498780 () Bool)

(declare-fun res!1056841 () Bool)

(assert (=> b!2498780 (=> (not res!1056841) (not e!1585196))))

(assert (=> b!2498780 (= res!1056841 (not (nullable!2310 (derivative!88 lt!895382 tl!4068))))))

(declare-fun b!2498773 () Bool)

(assert (=> b!2498773 (= e!1585197 true)))

(assert (=> b!2498773 (matchR!3402 (derivative!88 lt!895382 (_1!17244 lt!895376)) Nil!29358)))

(declare-fun lt!895379 () Unit!43055)

(assert (=> b!2498773 (= lt!895379 (lemmaMatchRIsSameAsWholeDerivativeAndNil!48 lt!895382 (_1!17244 lt!895376)))))

(declare-fun res!1056837 () Bool)

(assert (=> start!243984 (=> (not res!1056837) (not e!1585192))))

(declare-fun validRegex!3019 (Regex!7393) Bool)

(assert (=> start!243984 (= res!1056837 (validRegex!3019 r!27340))))

(assert (=> start!243984 e!1585192))

(assert (=> start!243984 e!1585198))

(assert (=> start!243984 tp_is_empty!12641))

(assert (=> start!243984 e!1585195))

(assert (= (and start!243984 res!1056837) b!2498771))

(assert (= (and b!2498771 res!1056842) b!2498779))

(assert (= (and b!2498779 res!1056836) b!2498774))

(assert (= (and b!2498774 res!1056839) b!2498780))

(assert (= (and b!2498780 res!1056841) b!2498775))

(assert (= (and b!2498775 (not res!1056834)) b!2498772))

(assert (= (and b!2498772 (not res!1056838)) b!2498770))

(assert (= (and b!2498770 (not res!1056840)) b!2498769))

(assert (= (and b!2498769 (not res!1056835)) b!2498777))

(assert (= (and b!2498777 (not res!1056833)) b!2498773))

(assert (= (and start!243984 ((_ is ElementMatch!7393) r!27340)) b!2498776))

(assert (= (and start!243984 ((_ is Concat!12089) r!27340)) b!2498766))

(assert (= (and start!243984 ((_ is Star!7393) r!27340)) b!2498778))

(assert (= (and start!243984 ((_ is Union!7393) r!27340)) b!2498767))

(assert (= (and start!243984 ((_ is Cons!29358) tl!4068)) b!2498768))

(declare-fun m!2862343 () Bool)

(assert (=> b!2498772 m!2862343))

(declare-fun m!2862345 () Bool)

(assert (=> b!2498772 m!2862345))

(declare-fun m!2862347 () Bool)

(assert (=> b!2498772 m!2862347))

(declare-fun m!2862349 () Bool)

(assert (=> b!2498772 m!2862349))

(declare-fun m!2862351 () Bool)

(assert (=> b!2498772 m!2862351))

(declare-fun m!2862353 () Bool)

(assert (=> b!2498780 m!2862353))

(assert (=> b!2498780 m!2862353))

(declare-fun m!2862355 () Bool)

(assert (=> b!2498780 m!2862355))

(declare-fun m!2862357 () Bool)

(assert (=> b!2498771 m!2862357))

(declare-fun m!2862359 () Bool)

(assert (=> b!2498771 m!2862359))

(declare-fun m!2862361 () Bool)

(assert (=> b!2498771 m!2862361))

(declare-fun m!2862363 () Bool)

(assert (=> start!243984 m!2862363))

(declare-fun m!2862365 () Bool)

(assert (=> b!2498777 m!2862365))

(declare-fun m!2862367 () Bool)

(assert (=> b!2498769 m!2862367))

(declare-fun m!2862369 () Bool)

(assert (=> b!2498770 m!2862369))

(declare-fun m!2862371 () Bool)

(assert (=> b!2498775 m!2862371))

(declare-fun m!2862373 () Bool)

(assert (=> b!2498775 m!2862373))

(declare-fun m!2862375 () Bool)

(assert (=> b!2498775 m!2862375))

(declare-fun m!2862377 () Bool)

(assert (=> b!2498773 m!2862377))

(assert (=> b!2498773 m!2862377))

(declare-fun m!2862379 () Bool)

(assert (=> b!2498773 m!2862379))

(declare-fun m!2862381 () Bool)

(assert (=> b!2498773 m!2862381))

(declare-fun m!2862383 () Bool)

(assert (=> b!2498774 m!2862383))

(check-sat (not b!2498766) (not b!2498767) (not b!2498775) (not b!2498778) tp_is_empty!12641 (not b!2498770) (not b!2498777) (not b!2498771) (not b!2498772) (not b!2498780) (not b!2498769) (not b!2498768) (not start!243984) (not b!2498774) (not b!2498773))
(check-sat)
