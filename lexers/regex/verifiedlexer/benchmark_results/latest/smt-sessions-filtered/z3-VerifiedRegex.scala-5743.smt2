; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284880 () Bool)

(assert start!284880)

(declare-fun b!2929237 () Bool)

(assert (=> b!2929237 true))

(assert (=> b!2929237 true))

(assert (=> b!2929237 true))

(declare-fun lambda!108938 () Int)

(declare-fun lambda!108937 () Int)

(assert (=> b!2929237 (not (= lambda!108938 lambda!108937))))

(assert (=> b!2929237 true))

(assert (=> b!2929237 true))

(assert (=> b!2929237 true))

(declare-fun res!1209119 () Bool)

(declare-fun e!1847307 () Bool)

(assert (=> start!284880 (=> (not res!1209119) (not e!1847307))))

(declare-datatypes ((C!18260 0))(
  ( (C!18261 (val!11166 Int)) )
))
(declare-datatypes ((Regex!9037 0))(
  ( (ElementMatch!9037 (c!478377 C!18260)) (Concat!14358 (regOne!18586 Regex!9037) (regTwo!18586 Regex!9037)) (EmptyExpr!9037) (Star!9037 (reg!9366 Regex!9037)) (EmptyLang!9037) (Union!9037 (regOne!18587 Regex!9037) (regTwo!18587 Regex!9037)) )
))
(declare-fun r!17423 () Regex!9037)

(declare-fun validRegex!3770 (Regex!9037) Bool)

(assert (=> start!284880 (= res!1209119 (validRegex!3770 r!17423))))

(assert (=> start!284880 e!1847307))

(declare-fun e!1847308 () Bool)

(assert (=> start!284880 e!1847308))

(declare-fun e!1847309 () Bool)

(assert (=> start!284880 e!1847309))

(declare-fun b!2929230 () Bool)

(declare-fun res!1209120 () Bool)

(declare-fun e!1847305 () Bool)

(assert (=> b!2929230 (=> res!1209120 e!1847305)))

(declare-datatypes ((List!34902 0))(
  ( (Nil!34778) (Cons!34778 (h!40198 C!18260) (t!233967 List!34902)) )
))
(declare-fun s!11993 () List!34902)

(declare-fun isEmpty!19025 (List!34902) Bool)

(assert (=> b!2929230 (= res!1209120 (isEmpty!19025 s!11993))))

(declare-fun b!2929231 () Bool)

(declare-fun tp!938972 () Bool)

(assert (=> b!2929231 (= e!1847308 tp!938972)))

(declare-fun b!2929232 () Bool)

(declare-fun tp!938977 () Bool)

(declare-fun tp!938975 () Bool)

(assert (=> b!2929232 (= e!1847308 (and tp!938977 tp!938975))))

(declare-fun b!2929233 () Bool)

(declare-fun tp_is_empty!15637 () Bool)

(declare-fun tp!938974 () Bool)

(assert (=> b!2929233 (= e!1847309 (and tp_is_empty!15637 tp!938974))))

(declare-fun b!2929234 () Bool)

(declare-fun tp!938973 () Bool)

(declare-fun tp!938976 () Bool)

(assert (=> b!2929234 (= e!1847308 (and tp!938973 tp!938976))))

(declare-fun b!2929235 () Bool)

(declare-fun e!1847306 () Bool)

(declare-fun lt!1027364 () Regex!9037)

(assert (=> b!2929235 (= e!1847306 (validRegex!3770 lt!1027364))))

(declare-fun b!2929236 () Bool)

(declare-fun res!1209116 () Bool)

(assert (=> b!2929236 (=> res!1209116 e!1847306)))

(assert (=> b!2929236 (= res!1209116 (not (validRegex!3770 (reg!9366 r!17423))))))

(assert (=> b!2929237 (= e!1847305 e!1847306)))

(declare-fun res!1209117 () Bool)

(assert (=> b!2929237 (=> res!1209117 e!1847306)))

(declare-fun lt!1027366 () Bool)

(assert (=> b!2929237 (= res!1209117 (not lt!1027366))))

(declare-fun Exists!1399 (Int) Bool)

(assert (=> b!2929237 (= (Exists!1399 lambda!108937) (Exists!1399 lambda!108938))))

(declare-datatypes ((Unit!48413 0))(
  ( (Unit!48414) )
))
(declare-fun lt!1027367 () Unit!48413)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!210 (Regex!9037 List!34902) Unit!48413)

(assert (=> b!2929237 (= lt!1027367 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!210 (reg!9366 r!17423) s!11993))))

(assert (=> b!2929237 (= lt!1027366 (Exists!1399 lambda!108937))))

(declare-datatypes ((tuple2!33724 0))(
  ( (tuple2!33725 (_1!19994 List!34902) (_2!19994 List!34902)) )
))
(declare-datatypes ((Option!6594 0))(
  ( (None!6593) (Some!6593 (v!34727 tuple2!33724)) )
))
(declare-fun isDefined!5145 (Option!6594) Bool)

(declare-fun findConcatSeparation!988 (Regex!9037 Regex!9037 List!34902 List!34902 List!34902) Option!6594)

(assert (=> b!2929237 (= lt!1027366 (isDefined!5145 (findConcatSeparation!988 (reg!9366 r!17423) lt!1027364 Nil!34778 s!11993 s!11993)))))

(declare-fun lt!1027368 () Unit!48413)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!770 (Regex!9037 Regex!9037 List!34902) Unit!48413)

(assert (=> b!2929237 (= lt!1027368 (lemmaFindConcatSeparationEquivalentToExists!770 (reg!9366 r!17423) lt!1027364 s!11993))))

(assert (=> b!2929237 (= lt!1027364 (Star!9037 (reg!9366 r!17423)))))

(declare-fun b!2929238 () Bool)

(assert (=> b!2929238 (= e!1847307 (not e!1847305))))

(declare-fun res!1209118 () Bool)

(assert (=> b!2929238 (=> res!1209118 e!1847305)))

(declare-fun lt!1027365 () Bool)

(get-info :version)

(assert (=> b!2929238 (= res!1209118 (or (not lt!1027365) ((_ is Concat!14358) r!17423) ((_ is Union!9037) r!17423) (not ((_ is Star!9037) r!17423))))))

(declare-fun matchRSpec!1174 (Regex!9037 List!34902) Bool)

(assert (=> b!2929238 (= lt!1027365 (matchRSpec!1174 r!17423 s!11993))))

(declare-fun matchR!3919 (Regex!9037 List!34902) Bool)

(assert (=> b!2929238 (= lt!1027365 (matchR!3919 r!17423 s!11993))))

(declare-fun lt!1027369 () Unit!48413)

(declare-fun mainMatchTheorem!1174 (Regex!9037 List!34902) Unit!48413)

(assert (=> b!2929238 (= lt!1027369 (mainMatchTheorem!1174 r!17423 s!11993))))

(declare-fun b!2929239 () Bool)

(assert (=> b!2929239 (= e!1847308 tp_is_empty!15637)))

(assert (= (and start!284880 res!1209119) b!2929238))

(assert (= (and b!2929238 (not res!1209118)) b!2929230))

(assert (= (and b!2929230 (not res!1209120)) b!2929237))

(assert (= (and b!2929237 (not res!1209117)) b!2929236))

(assert (= (and b!2929236 (not res!1209116)) b!2929235))

(assert (= (and start!284880 ((_ is ElementMatch!9037) r!17423)) b!2929239))

(assert (= (and start!284880 ((_ is Concat!14358) r!17423)) b!2929232))

(assert (= (and start!284880 ((_ is Star!9037) r!17423)) b!2929231))

(assert (= (and start!284880 ((_ is Union!9037) r!17423)) b!2929234))

(assert (= (and start!284880 ((_ is Cons!34778) s!11993)) b!2929233))

(declare-fun m!3320191 () Bool)

(assert (=> b!2929236 m!3320191))

(declare-fun m!3320193 () Bool)

(assert (=> b!2929238 m!3320193))

(declare-fun m!3320195 () Bool)

(assert (=> b!2929238 m!3320195))

(declare-fun m!3320197 () Bool)

(assert (=> b!2929238 m!3320197))

(declare-fun m!3320199 () Bool)

(assert (=> start!284880 m!3320199))

(declare-fun m!3320201 () Bool)

(assert (=> b!2929237 m!3320201))

(declare-fun m!3320203 () Bool)

(assert (=> b!2929237 m!3320203))

(declare-fun m!3320205 () Bool)

(assert (=> b!2929237 m!3320205))

(declare-fun m!3320207 () Bool)

(assert (=> b!2929237 m!3320207))

(declare-fun m!3320209 () Bool)

(assert (=> b!2929237 m!3320209))

(assert (=> b!2929237 m!3320205))

(declare-fun m!3320211 () Bool)

(assert (=> b!2929237 m!3320211))

(assert (=> b!2929237 m!3320211))

(declare-fun m!3320213 () Bool)

(assert (=> b!2929235 m!3320213))

(declare-fun m!3320215 () Bool)

(assert (=> b!2929230 m!3320215))

(check-sat tp_is_empty!15637 (not b!2929236) (not b!2929238) (not b!2929230) (not b!2929234) (not b!2929237) (not b!2929233) (not b!2929231) (not b!2929235) (not start!284880) (not b!2929232))
(check-sat)
