; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284784 () Bool)

(assert start!284784)

(declare-fun b!2928127 () Bool)

(assert (=> b!2928127 true))

(assert (=> b!2928127 true))

(assert (=> b!2928127 true))

(declare-fun lambda!108830 () Int)

(declare-fun lambda!108829 () Int)

(assert (=> b!2928127 (not (= lambda!108830 lambda!108829))))

(assert (=> b!2928127 true))

(assert (=> b!2928127 true))

(assert (=> b!2928127 true))

(declare-fun b!2928119 () Bool)

(declare-fun e!1846734 () Bool)

(declare-fun tp!938715 () Bool)

(declare-fun tp!938713 () Bool)

(assert (=> b!2928119 (= e!1846734 (and tp!938715 tp!938713))))

(declare-fun b!2928120 () Bool)

(declare-fun e!1846736 () Bool)

(declare-fun tp_is_empty!15625 () Bool)

(declare-fun tp!938714 () Bool)

(assert (=> b!2928120 (= e!1846736 (and tp_is_empty!15625 tp!938714))))

(declare-fun res!1208562 () Bool)

(declare-fun e!1846737 () Bool)

(assert (=> start!284784 (=> (not res!1208562) (not e!1846737))))

(declare-datatypes ((C!18248 0))(
  ( (C!18249 (val!11160 Int)) )
))
(declare-datatypes ((Regex!9031 0))(
  ( (ElementMatch!9031 (c!478221 C!18248)) (Concat!14352 (regOne!18574 Regex!9031) (regTwo!18574 Regex!9031)) (EmptyExpr!9031) (Star!9031 (reg!9360 Regex!9031)) (EmptyLang!9031) (Union!9031 (regOne!18575 Regex!9031) (regTwo!18575 Regex!9031)) )
))
(declare-fun r!17423 () Regex!9031)

(declare-fun validRegex!3764 (Regex!9031) Bool)

(assert (=> start!284784 (= res!1208562 (validRegex!3764 r!17423))))

(assert (=> start!284784 e!1846737))

(assert (=> start!284784 e!1846734))

(assert (=> start!284784 e!1846736))

(declare-fun b!2928121 () Bool)

(assert (=> b!2928121 (= e!1846734 tp_is_empty!15625)))

(declare-fun b!2928122 () Bool)

(declare-fun res!1208559 () Bool)

(declare-fun e!1846733 () Bool)

(assert (=> b!2928122 (=> res!1208559 e!1846733)))

(declare-datatypes ((List!34896 0))(
  ( (Nil!34772) (Cons!34772 (h!40192 C!18248) (t!233961 List!34896)) )
))
(declare-fun s!11993 () List!34896)

(declare-fun isEmpty!19015 (List!34896) Bool)

(assert (=> b!2928122 (= res!1208559 (isEmpty!19015 s!11993))))

(declare-fun b!2928123 () Bool)

(declare-fun tp!938712 () Bool)

(declare-fun tp!938716 () Bool)

(assert (=> b!2928123 (= e!1846734 (and tp!938712 tp!938716))))

(declare-fun b!2928124 () Bool)

(declare-fun tp!938717 () Bool)

(assert (=> b!2928124 (= e!1846734 tp!938717)))

(declare-fun b!2928125 () Bool)

(assert (=> b!2928125 (= e!1846737 (not e!1846733))))

(declare-fun res!1208561 () Bool)

(assert (=> b!2928125 (=> res!1208561 e!1846733)))

(declare-fun lt!1027177 () Bool)

(get-info :version)

(assert (=> b!2928125 (= res!1208561 (or (not lt!1027177) ((_ is Concat!14352) r!17423) ((_ is Union!9031) r!17423) (not ((_ is Star!9031) r!17423))))))

(declare-fun matchRSpec!1168 (Regex!9031 List!34896) Bool)

(assert (=> b!2928125 (= lt!1027177 (matchRSpec!1168 r!17423 s!11993))))

(declare-fun matchR!3913 (Regex!9031 List!34896) Bool)

(assert (=> b!2928125 (= lt!1027177 (matchR!3913 r!17423 s!11993))))

(declare-datatypes ((Unit!48401 0))(
  ( (Unit!48402) )
))
(declare-fun lt!1027173 () Unit!48401)

(declare-fun mainMatchTheorem!1168 (Regex!9031 List!34896) Unit!48401)

(assert (=> b!2928125 (= lt!1027173 (mainMatchTheorem!1168 r!17423 s!11993))))

(declare-fun b!2928126 () Bool)

(declare-fun e!1846735 () Bool)

(declare-fun lt!1027176 () Regex!9031)

(assert (=> b!2928126 (= e!1846735 (validRegex!3764 lt!1027176))))

(assert (=> b!2928127 (= e!1846733 e!1846735)))

(declare-fun res!1208560 () Bool)

(assert (=> b!2928127 (=> res!1208560 e!1846735)))

(assert (=> b!2928127 (= res!1208560 (not (validRegex!3764 (reg!9360 r!17423))))))

(declare-fun Exists!1393 (Int) Bool)

(assert (=> b!2928127 (= (Exists!1393 lambda!108829) (Exists!1393 lambda!108830))))

(declare-fun lt!1027174 () Unit!48401)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!204 (Regex!9031 List!34896) Unit!48401)

(assert (=> b!2928127 (= lt!1027174 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!204 (reg!9360 r!17423) s!11993))))

(declare-datatypes ((tuple2!33712 0))(
  ( (tuple2!33713 (_1!19988 List!34896) (_2!19988 List!34896)) )
))
(declare-datatypes ((Option!6588 0))(
  ( (None!6587) (Some!6587 (v!34721 tuple2!33712)) )
))
(declare-fun isDefined!5139 (Option!6588) Bool)

(declare-fun findConcatSeparation!982 (Regex!9031 Regex!9031 List!34896 List!34896 List!34896) Option!6588)

(assert (=> b!2928127 (= (isDefined!5139 (findConcatSeparation!982 (reg!9360 r!17423) lt!1027176 Nil!34772 s!11993 s!11993)) (Exists!1393 lambda!108829))))

(declare-fun lt!1027175 () Unit!48401)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!764 (Regex!9031 Regex!9031 List!34896) Unit!48401)

(assert (=> b!2928127 (= lt!1027175 (lemmaFindConcatSeparationEquivalentToExists!764 (reg!9360 r!17423) lt!1027176 s!11993))))

(assert (=> b!2928127 (= lt!1027176 (Star!9031 (reg!9360 r!17423)))))

(assert (= (and start!284784 res!1208562) b!2928125))

(assert (= (and b!2928125 (not res!1208561)) b!2928122))

(assert (= (and b!2928122 (not res!1208559)) b!2928127))

(assert (= (and b!2928127 (not res!1208560)) b!2928126))

(assert (= (and start!284784 ((_ is ElementMatch!9031) r!17423)) b!2928121))

(assert (= (and start!284784 ((_ is Concat!14352) r!17423)) b!2928123))

(assert (= (and start!284784 ((_ is Star!9031) r!17423)) b!2928124))

(assert (= (and start!284784 ((_ is Union!9031) r!17423)) b!2928119))

(assert (= (and start!284784 ((_ is Cons!34772) s!11993)) b!2928120))

(declare-fun m!3319715 () Bool)

(assert (=> b!2928126 m!3319715))

(declare-fun m!3319717 () Bool)

(assert (=> start!284784 m!3319717))

(declare-fun m!3319719 () Bool)

(assert (=> b!2928122 m!3319719))

(declare-fun m!3319721 () Bool)

(assert (=> b!2928127 m!3319721))

(declare-fun m!3319723 () Bool)

(assert (=> b!2928127 m!3319723))

(assert (=> b!2928127 m!3319721))

(declare-fun m!3319725 () Bool)

(assert (=> b!2928127 m!3319725))

(declare-fun m!3319727 () Bool)

(assert (=> b!2928127 m!3319727))

(declare-fun m!3319729 () Bool)

(assert (=> b!2928127 m!3319729))

(assert (=> b!2928127 m!3319729))

(declare-fun m!3319731 () Bool)

(assert (=> b!2928127 m!3319731))

(declare-fun m!3319733 () Bool)

(assert (=> b!2928127 m!3319733))

(declare-fun m!3319735 () Bool)

(assert (=> b!2928125 m!3319735))

(declare-fun m!3319737 () Bool)

(assert (=> b!2928125 m!3319737))

(declare-fun m!3319739 () Bool)

(assert (=> b!2928125 m!3319739))

(check-sat (not b!2928125) (not b!2928127) (not b!2928120) (not b!2928119) (not b!2928124) (not b!2928123) tp_is_empty!15625 (not b!2928122) (not b!2928126) (not start!284784))
(check-sat)
