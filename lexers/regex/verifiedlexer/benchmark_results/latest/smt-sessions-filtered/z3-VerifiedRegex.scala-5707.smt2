; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283972 () Bool)

(assert start!283972)

(declare-fun b!2914211 () Bool)

(assert (=> b!2914211 true))

(assert (=> b!2914211 true))

(declare-fun lambda!108328 () Int)

(declare-fun lambda!108327 () Int)

(assert (=> b!2914211 (not (= lambda!108328 lambda!108327))))

(assert (=> b!2914211 true))

(assert (=> b!2914211 true))

(declare-fun b!2914204 () Bool)

(declare-fun e!1839139 () Bool)

(declare-fun e!1839138 () Bool)

(assert (=> b!2914204 (= e!1839139 (not e!1839138))))

(declare-fun res!1203071 () Bool)

(assert (=> b!2914204 (=> res!1203071 e!1839138)))

(declare-fun lt!1024310 () Bool)

(declare-datatypes ((C!18116 0))(
  ( (C!18117 (val!11094 Int)) )
))
(declare-datatypes ((Regex!8965 0))(
  ( (ElementMatch!8965 (c!475199 C!18116)) (Concat!14286 (regOne!18442 Regex!8965) (regTwo!18442 Regex!8965)) (EmptyExpr!8965) (Star!8965 (reg!9294 Regex!8965)) (EmptyLang!8965) (Union!8965 (regOne!18443 Regex!8965) (regTwo!18443 Regex!8965)) )
))
(declare-fun r!17423 () Regex!8965)

(get-info :version)

(assert (=> b!2914204 (= res!1203071 (or (not lt!1024310) (not ((_ is Concat!14286) r!17423))))))

(declare-datatypes ((List!34830 0))(
  ( (Nil!34706) (Cons!34706 (h!40126 C!18116) (t!233895 List!34830)) )
))
(declare-fun s!11993 () List!34830)

(declare-fun matchRSpec!1102 (Regex!8965 List!34830) Bool)

(assert (=> b!2914204 (= lt!1024310 (matchRSpec!1102 r!17423 s!11993))))

(declare-fun matchR!3847 (Regex!8965 List!34830) Bool)

(assert (=> b!2914204 (= lt!1024310 (matchR!3847 r!17423 s!11993))))

(declare-datatypes ((Unit!48269 0))(
  ( (Unit!48270) )
))
(declare-fun lt!1024313 () Unit!48269)

(declare-fun mainMatchTheorem!1102 (Regex!8965 List!34830) Unit!48269)

(assert (=> b!2914204 (= lt!1024313 (mainMatchTheorem!1102 r!17423 s!11993))))

(declare-fun b!2914206 () Bool)

(declare-fun e!1839141 () Bool)

(declare-fun tp!936084 () Bool)

(declare-fun tp!936081 () Bool)

(assert (=> b!2914206 (= e!1839141 (and tp!936084 tp!936081))))

(declare-fun b!2914207 () Bool)

(declare-fun res!1203068 () Bool)

(assert (=> b!2914207 (=> res!1203068 e!1839138)))

(declare-fun isEmpty!18955 (List!34830) Bool)

(assert (=> b!2914207 (= res!1203068 (isEmpty!18955 s!11993))))

(declare-fun b!2914208 () Bool)

(declare-fun e!1839137 () Bool)

(declare-fun tp_is_empty!15493 () Bool)

(declare-fun tp!936082 () Bool)

(assert (=> b!2914208 (= e!1839137 (and tp_is_empty!15493 tp!936082))))

(declare-fun b!2914209 () Bool)

(declare-fun res!1203070 () Bool)

(declare-fun e!1839140 () Bool)

(assert (=> b!2914209 (=> res!1203070 e!1839140)))

(declare-datatypes ((tuple2!33668 0))(
  ( (tuple2!33669 (_1!19966 List!34830) (_2!19966 List!34830)) )
))
(declare-fun lt!1024312 () tuple2!33668)

(assert (=> b!2914209 (= res!1203070 (not (matchR!3847 (regTwo!18442 r!17423) (_2!19966 lt!1024312))))))

(declare-fun b!2914210 () Bool)

(declare-fun tp!936085 () Bool)

(assert (=> b!2914210 (= e!1839141 tp!936085)))

(assert (=> b!2914211 (= e!1839138 e!1839140)))

(declare-fun res!1203072 () Bool)

(assert (=> b!2914211 (=> res!1203072 e!1839140)))

(assert (=> b!2914211 (= res!1203072 (not (matchR!3847 (regOne!18442 r!17423) (_1!19966 lt!1024312))))))

(declare-datatypes ((Option!6566 0))(
  ( (None!6565) (Some!6565 (v!34699 tuple2!33668)) )
))
(declare-fun lt!1024314 () Option!6566)

(declare-fun get!10549 (Option!6566) tuple2!33668)

(assert (=> b!2914211 (= lt!1024312 (get!10549 lt!1024314))))

(declare-fun Exists!1345 (Int) Bool)

(assert (=> b!2914211 (= (Exists!1345 lambda!108327) (Exists!1345 lambda!108328))))

(declare-fun lt!1024315 () Unit!48269)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!486 (Regex!8965 Regex!8965 List!34830) Unit!48269)

(assert (=> b!2914211 (= lt!1024315 (lemmaExistCutMatchRandMatchRSpecEquivalent!486 (regOne!18442 r!17423) (regTwo!18442 r!17423) s!11993))))

(declare-fun isDefined!5117 (Option!6566) Bool)

(assert (=> b!2914211 (= (isDefined!5117 lt!1024314) (Exists!1345 lambda!108327))))

(declare-fun findConcatSeparation!960 (Regex!8965 Regex!8965 List!34830 List!34830 List!34830) Option!6566)

(assert (=> b!2914211 (= lt!1024314 (findConcatSeparation!960 (regOne!18442 r!17423) (regTwo!18442 r!17423) Nil!34706 s!11993 s!11993))))

(declare-fun lt!1024311 () Unit!48269)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!742 (Regex!8965 Regex!8965 List!34830) Unit!48269)

(assert (=> b!2914211 (= lt!1024311 (lemmaFindConcatSeparationEquivalentToExists!742 (regOne!18442 r!17423) (regTwo!18442 r!17423) s!11993))))

(declare-fun res!1203069 () Bool)

(assert (=> start!283972 (=> (not res!1203069) (not e!1839139))))

(declare-fun validRegex!3698 (Regex!8965) Bool)

(assert (=> start!283972 (= res!1203069 (validRegex!3698 r!17423))))

(assert (=> start!283972 e!1839139))

(assert (=> start!283972 e!1839141))

(assert (=> start!283972 e!1839137))

(declare-fun b!2914205 () Bool)

(declare-fun tp!936080 () Bool)

(declare-fun tp!936083 () Bool)

(assert (=> b!2914205 (= e!1839141 (and tp!936080 tp!936083))))

(declare-fun b!2914212 () Bool)

(assert (=> b!2914212 (= e!1839140 true)))

(declare-fun b!2914213 () Bool)

(assert (=> b!2914213 (= e!1839141 tp_is_empty!15493)))

(assert (= (and start!283972 res!1203069) b!2914204))

(assert (= (and b!2914204 (not res!1203071)) b!2914207))

(assert (= (and b!2914207 (not res!1203068)) b!2914211))

(assert (= (and b!2914211 (not res!1203072)) b!2914209))

(assert (= (and b!2914209 (not res!1203070)) b!2914212))

(assert (= (and start!283972 ((_ is ElementMatch!8965) r!17423)) b!2914213))

(assert (= (and start!283972 ((_ is Concat!14286) r!17423)) b!2914205))

(assert (= (and start!283972 ((_ is Star!8965) r!17423)) b!2914210))

(assert (= (and start!283972 ((_ is Union!8965) r!17423)) b!2914206))

(assert (= (and start!283972 ((_ is Cons!34706) s!11993)) b!2914208))

(declare-fun m!3313833 () Bool)

(assert (=> b!2914204 m!3313833))

(declare-fun m!3313835 () Bool)

(assert (=> b!2914204 m!3313835))

(declare-fun m!3313837 () Bool)

(assert (=> b!2914204 m!3313837))

(declare-fun m!3313839 () Bool)

(assert (=> start!283972 m!3313839))

(declare-fun m!3313841 () Bool)

(assert (=> b!2914211 m!3313841))

(declare-fun m!3313843 () Bool)

(assert (=> b!2914211 m!3313843))

(declare-fun m!3313845 () Bool)

(assert (=> b!2914211 m!3313845))

(declare-fun m!3313847 () Bool)

(assert (=> b!2914211 m!3313847))

(declare-fun m!3313849 () Bool)

(assert (=> b!2914211 m!3313849))

(declare-fun m!3313851 () Bool)

(assert (=> b!2914211 m!3313851))

(declare-fun m!3313853 () Bool)

(assert (=> b!2914211 m!3313853))

(assert (=> b!2914211 m!3313851))

(declare-fun m!3313855 () Bool)

(assert (=> b!2914211 m!3313855))

(declare-fun m!3313857 () Bool)

(assert (=> b!2914207 m!3313857))

(declare-fun m!3313859 () Bool)

(assert (=> b!2914209 m!3313859))

(check-sat (not b!2914209) tp_is_empty!15493 (not b!2914206) (not b!2914208) (not b!2914207) (not b!2914210) (not b!2914205) (not b!2914211) (not b!2914204) (not start!283972))
(check-sat)
