; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734348 () Bool)

(assert start!734348)

(declare-fun b!7625105 () Bool)

(assert (=> b!7625105 true))

(assert (=> b!7625105 true))

(declare-fun bs!1943624 () Bool)

(declare-fun b!7625097 () Bool)

(assert (= bs!1943624 (and b!7625097 b!7625105)))

(declare-fun lambda!468733 () Int)

(declare-fun lambda!468732 () Int)

(assert (=> bs!1943624 (not (= lambda!468733 lambda!468732))))

(assert (=> b!7625097 true))

(assert (=> b!7625097 true))

(declare-fun res!3053295 () Bool)

(declare-fun e!4533629 () Bool)

(assert (=> b!7625097 (=> res!3053295 e!4533629)))

(declare-fun Exists!4499 (Int) Bool)

(assert (=> b!7625097 (= res!3053295 (not (Exists!4499 lambda!468733)))))

(declare-fun b!7625098 () Bool)

(declare-fun e!4533632 () Bool)

(assert (=> b!7625098 (= e!4533632 e!4533629)))

(declare-fun res!3053298 () Bool)

(assert (=> b!7625098 (=> res!3053298 e!4533629)))

(assert (=> b!7625098 (= res!3053298 (Exists!4499 lambda!468732))))

(declare-datatypes ((Unit!167612 0))(
  ( (Unit!167613) )
))
(declare-fun lt!2657751 () Unit!167612)

(declare-fun e!4533628 () Unit!167612)

(assert (=> b!7625098 (= lt!2657751 e!4533628)))

(declare-fun c!1405057 () Bool)

(declare-datatypes ((C!41012 0))(
  ( (C!41013 (val!30946 Int)) )
))
(declare-datatypes ((Regex!20343 0))(
  ( (ElementMatch!20343 (c!1405058 C!41012)) (Concat!29188 (regOne!41198 Regex!20343) (regTwo!41198 Regex!20343)) (EmptyExpr!20343) (Star!20343 (reg!20672 Regex!20343)) (EmptyLang!20343) (Union!20343 (regOne!41199 Regex!20343) (regTwo!41199 Regex!20343)) )
))
(declare-fun r!14126 () Regex!20343)

(declare-datatypes ((List!73196 0))(
  ( (Nil!73072) (Cons!73072 (h!79520 C!41012) (t!387931 List!73196)) )
))
(declare-fun s!9605 () List!73196)

(declare-fun matchR!9850 (Regex!20343 List!73196) Bool)

(assert (=> b!7625098 (= c!1405057 (matchR!9850 r!14126 s!9605))))

(declare-fun b!7625099 () Bool)

(declare-fun e!4533633 () Bool)

(declare-fun tp!2226229 () Bool)

(declare-fun tp!2226227 () Bool)

(assert (=> b!7625099 (= e!4533633 (and tp!2226229 tp!2226227))))

(declare-fun b!7625100 () Bool)

(declare-fun tp!2226226 () Bool)

(assert (=> b!7625100 (= e!4533633 tp!2226226)))

(declare-fun b!7625101 () Bool)

(declare-fun tp_is_empty!51041 () Bool)

(assert (=> b!7625101 (= e!4533633 tp_is_empty!51041)))

(declare-fun b!7625102 () Bool)

(declare-fun res!3053300 () Bool)

(declare-fun e!4533631 () Bool)

(assert (=> b!7625102 (=> (not res!3053300) (not e!4533631))))

(get-info :version)

(assert (=> b!7625102 (= res!3053300 (and (not ((_ is EmptyExpr!20343) r!14126)) (not ((_ is EmptyLang!20343) r!14126)) (not ((_ is ElementMatch!20343) r!14126)) (not ((_ is Union!20343) r!14126)) ((_ is Star!20343) r!14126)))))

(declare-fun b!7625104 () Bool)

(declare-fun tp!2226228 () Bool)

(declare-fun tp!2226230 () Bool)

(assert (=> b!7625104 (= e!4533633 (and tp!2226228 tp!2226230))))

(declare-fun res!3053299 () Bool)

(assert (=> start!734348 (=> (not res!3053299) (not e!4533631))))

(declare-fun validRegex!10763 (Regex!20343) Bool)

(assert (=> start!734348 (= res!3053299 (validRegex!10763 r!14126))))

(assert (=> start!734348 e!4533631))

(assert (=> start!734348 e!4533633))

(declare-fun e!4533630 () Bool)

(assert (=> start!734348 e!4533630))

(declare-fun b!7625103 () Bool)

(declare-fun Unit!167614 () Unit!167612)

(assert (=> b!7625103 (= e!4533628 Unit!167614)))

(assert (=> b!7625105 (= e!4533631 (not e!4533632))))

(declare-fun res!3053296 () Bool)

(assert (=> b!7625105 (=> res!3053296 e!4533632)))

(declare-fun lt!2657750 () Bool)

(assert (=> b!7625105 (= res!3053296 lt!2657750)))

(assert (=> b!7625105 (= lt!2657750 (Exists!4499 lambda!468732))))

(declare-datatypes ((tuple2!69248 0))(
  ( (tuple2!69249 (_1!37927 List!73196) (_2!37927 List!73196)) )
))
(declare-datatypes ((Option!17418 0))(
  ( (None!17417) (Some!17417 (v!54552 tuple2!69248)) )
))
(declare-fun isDefined!14034 (Option!17418) Bool)

(declare-fun findConcatSeparation!3448 (Regex!20343 Regex!20343 List!73196 List!73196 List!73196) Option!17418)

(assert (=> b!7625105 (= lt!2657750 (isDefined!14034 (findConcatSeparation!3448 (reg!20672 r!14126) r!14126 Nil!73072 s!9605 s!9605)))))

(declare-fun lt!2657755 () Unit!167612)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3206 (Regex!20343 Regex!20343 List!73196) Unit!167612)

(assert (=> b!7625105 (= lt!2657755 (lemmaFindConcatSeparationEquivalentToExists!3206 (reg!20672 r!14126) r!14126 s!9605))))

(declare-fun b!7625106 () Bool)

(assert (=> b!7625106 (= e!4533629 true)))

(assert (=> b!7625106 false))

(declare-fun lt!2657756 () tuple2!69248)

(declare-fun lt!2657758 () Unit!167612)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!122 (Regex!20343 Regex!20343 List!73196 List!73196 List!73196 List!73196 List!73196) Unit!167612)

(assert (=> b!7625106 (= lt!2657758 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!122 (reg!20672 r!14126) r!14126 (_1!37927 lt!2657756) (_2!37927 lt!2657756) s!9605 Nil!73072 s!9605))))

(declare-fun matchRSpec!4526 (Regex!20343 List!73196) Bool)

(assert (=> b!7625106 (= (matchR!9850 r!14126 (_2!37927 lt!2657756)) (matchRSpec!4526 r!14126 (_2!37927 lt!2657756)))))

(declare-fun lt!2657754 () Unit!167612)

(declare-fun mainMatchTheorem!4516 (Regex!20343 List!73196) Unit!167612)

(assert (=> b!7625106 (= lt!2657754 (mainMatchTheorem!4516 r!14126 (_2!37927 lt!2657756)))))

(assert (=> b!7625106 (= (matchR!9850 (reg!20672 r!14126) (_1!37927 lt!2657756)) (matchRSpec!4526 (reg!20672 r!14126) (_1!37927 lt!2657756)))))

(declare-fun lt!2657752 () Unit!167612)

(assert (=> b!7625106 (= lt!2657752 (mainMatchTheorem!4516 (reg!20672 r!14126) (_1!37927 lt!2657756)))))

(declare-fun pickWitness!456 (Int) tuple2!69248)

(assert (=> b!7625106 (= lt!2657756 (pickWitness!456 lambda!468733))))

(declare-fun b!7625107 () Bool)

(declare-fun tp!2226231 () Bool)

(assert (=> b!7625107 (= e!4533630 (and tp_is_empty!51041 tp!2226231))))

(declare-fun b!7625108 () Bool)

(declare-fun Unit!167615 () Unit!167612)

(assert (=> b!7625108 (= e!4533628 Unit!167615)))

(declare-fun lt!2657757 () Unit!167612)

(declare-fun lemmaStarAppConcat!24 (Regex!20343 List!73196) Unit!167612)

(assert (=> b!7625108 (= lt!2657757 (lemmaStarAppConcat!24 (reg!20672 r!14126) s!9605))))

(assert (=> b!7625108 (matchR!9850 (Concat!29188 (reg!20672 r!14126) r!14126) s!9605)))

(declare-fun lt!2657753 () Unit!167612)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!256 (Regex!20343 Regex!20343 List!73196) Unit!167612)

(assert (=> b!7625108 (= lt!2657753 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!256 (reg!20672 r!14126) r!14126 s!9605))))

(assert (=> b!7625108 false))

(declare-fun b!7625109 () Bool)

(declare-fun res!3053297 () Bool)

(assert (=> b!7625109 (=> (not res!3053297) (not e!4533631))))

(declare-fun isEmpty!41700 (List!73196) Bool)

(assert (=> b!7625109 (= res!3053297 (not (isEmpty!41700 s!9605)))))

(assert (= (and start!734348 res!3053299) b!7625102))

(assert (= (and b!7625102 res!3053300) b!7625109))

(assert (= (and b!7625109 res!3053297) b!7625105))

(assert (= (and b!7625105 (not res!3053296)) b!7625098))

(assert (= (and b!7625098 c!1405057) b!7625108))

(assert (= (and b!7625098 (not c!1405057)) b!7625103))

(assert (= (and b!7625098 (not res!3053298)) b!7625097))

(assert (= (and b!7625097 (not res!3053295)) b!7625106))

(assert (= (and start!734348 ((_ is ElementMatch!20343) r!14126)) b!7625101))

(assert (= (and start!734348 ((_ is Concat!29188) r!14126)) b!7625099))

(assert (= (and start!734348 ((_ is Star!20343) r!14126)) b!7625100))

(assert (= (and start!734348 ((_ is Union!20343) r!14126)) b!7625104))

(assert (= (and start!734348 ((_ is Cons!73072) s!9605)) b!7625107))

(declare-fun m!8154992 () Bool)

(assert (=> b!7625106 m!8154992))

(declare-fun m!8154994 () Bool)

(assert (=> b!7625106 m!8154994))

(declare-fun m!8154996 () Bool)

(assert (=> b!7625106 m!8154996))

(declare-fun m!8154998 () Bool)

(assert (=> b!7625106 m!8154998))

(declare-fun m!8155000 () Bool)

(assert (=> b!7625106 m!8155000))

(declare-fun m!8155002 () Bool)

(assert (=> b!7625106 m!8155002))

(declare-fun m!8155004 () Bool)

(assert (=> b!7625106 m!8155004))

(declare-fun m!8155006 () Bool)

(assert (=> b!7625106 m!8155006))

(declare-fun m!8155008 () Bool)

(assert (=> b!7625098 m!8155008))

(declare-fun m!8155010 () Bool)

(assert (=> b!7625098 m!8155010))

(assert (=> b!7625105 m!8155008))

(declare-fun m!8155012 () Bool)

(assert (=> b!7625105 m!8155012))

(assert (=> b!7625105 m!8155012))

(declare-fun m!8155014 () Bool)

(assert (=> b!7625105 m!8155014))

(declare-fun m!8155016 () Bool)

(assert (=> b!7625105 m!8155016))

(declare-fun m!8155018 () Bool)

(assert (=> start!734348 m!8155018))

(declare-fun m!8155020 () Bool)

(assert (=> b!7625109 m!8155020))

(declare-fun m!8155022 () Bool)

(assert (=> b!7625108 m!8155022))

(declare-fun m!8155024 () Bool)

(assert (=> b!7625108 m!8155024))

(declare-fun m!8155026 () Bool)

(assert (=> b!7625108 m!8155026))

(declare-fun m!8155028 () Bool)

(assert (=> b!7625097 m!8155028))

(check-sat (not b!7625108) (not b!7625098) (not b!7625104) (not b!7625105) (not b!7625106) (not b!7625099) tp_is_empty!51041 (not start!734348) (not b!7625109) (not b!7625100) (not b!7625107) (not b!7625097))
(check-sat)
