; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285692 () Bool)

(assert start!285692)

(declare-fun b!2942210 () Bool)

(assert (=> b!2942210 true))

(assert (=> b!2942210 true))

(declare-fun b!2942208 () Bool)

(declare-fun res!1214295 () Bool)

(declare-fun e!1854069 () Bool)

(assert (=> b!2942208 (=> res!1214295 e!1854069)))

(declare-datatypes ((C!18396 0))(
  ( (C!18397 (val!11234 Int)) )
))
(declare-datatypes ((Regex!9105 0))(
  ( (ElementMatch!9105 (c!481133 C!18396)) (Concat!14426 (regOne!18722 Regex!9105) (regTwo!18722 Regex!9105)) (EmptyExpr!9105) (Star!9105 (reg!9434 Regex!9105)) (EmptyLang!9105) (Union!9105 (regOne!18723 Regex!9105) (regTwo!18723 Regex!9105)) )
))
(declare-fun lt!1030341 () Regex!9105)

(declare-fun isEmptyLang!229 (Regex!9105) Bool)

(assert (=> b!2942208 (= res!1214295 (isEmptyLang!229 lt!1030341))))

(declare-fun b!2942209 () Bool)

(declare-fun e!1854066 () Bool)

(declare-fun tp!941492 () Bool)

(declare-fun tp!941488 () Bool)

(assert (=> b!2942209 (= e!1854066 (and tp!941492 tp!941488))))

(declare-fun e!1854067 () Bool)

(assert (=> b!2942210 (= e!1854067 true)))

(declare-fun lambda!109530 () Int)

(declare-fun Exists!1453 (Int) Bool)

(assert (=> b!2942210 (Exists!1453 lambda!109530)))

(declare-datatypes ((Unit!48589 0))(
  ( (Unit!48590) )
))
(declare-fun lt!1030337 () Unit!48589)

(declare-fun r!17423 () Regex!9105)

(declare-datatypes ((List!34970 0))(
  ( (Nil!34846) (Cons!34846 (h!40266 C!18396) (t!234035 List!34970)) )
))
(declare-fun s!11993 () List!34970)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!804 (Regex!9105 Regex!9105 List!34970) Unit!48589)

(assert (=> b!2942210 (= lt!1030337 (lemmaFindConcatSeparationEquivalentToExists!804 (regOne!18722 r!17423) (regTwo!18722 r!17423) s!11993))))

(declare-datatypes ((tuple2!33796 0))(
  ( (tuple2!33797 (_1!20030 List!34970) (_2!20030 List!34970)) )
))
(declare-datatypes ((Option!6630 0))(
  ( (None!6629) (Some!6629 (v!34763 tuple2!33796)) )
))
(declare-fun isDefined!5181 (Option!6630) Bool)

(declare-fun findConcatSeparation!1024 (Regex!9105 Regex!9105 List!34970 List!34970 List!34970) Option!6630)

(assert (=> b!2942210 (isDefined!5181 (findConcatSeparation!1024 (regOne!18722 r!17423) (regTwo!18722 r!17423) Nil!34846 s!11993 s!11993))))

(declare-fun lt!1030342 () Unit!48589)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!12 (Regex!9105 Regex!9105 List!34970 List!34970 List!34970 List!34970 List!34970) Unit!48589)

(assert (=> b!2942210 (= lt!1030342 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!12 (regOne!18722 r!17423) (regTwo!18722 r!17423) Nil!34846 s!11993 s!11993 Nil!34846 s!11993))))

(declare-fun b!2942211 () Bool)

(declare-fun res!1214299 () Bool)

(assert (=> b!2942211 (=> res!1214299 e!1854069)))

(declare-fun lt!1030343 () Regex!9105)

(declare-fun isEmptyExpr!310 (Regex!9105) Bool)

(assert (=> b!2942211 (= res!1214299 (not (isEmptyExpr!310 lt!1030343)))))

(declare-fun b!2942212 () Bool)

(declare-fun tp!941489 () Bool)

(declare-fun tp!941490 () Bool)

(assert (=> b!2942212 (= e!1854066 (and tp!941489 tp!941490))))

(declare-fun b!2942213 () Bool)

(declare-fun e!1854071 () Bool)

(declare-fun e!1854068 () Bool)

(assert (=> b!2942213 (= e!1854071 (not e!1854068))))

(declare-fun res!1214293 () Bool)

(assert (=> b!2942213 (=> res!1214293 e!1854068)))

(declare-fun lt!1030338 () Bool)

(get-info :version)

(assert (=> b!2942213 (= res!1214293 (or lt!1030338 (not ((_ is Concat!14426) r!17423))))))

(declare-fun matchRSpec!1242 (Regex!9105 List!34970) Bool)

(assert (=> b!2942213 (= lt!1030338 (matchRSpec!1242 r!17423 s!11993))))

(declare-fun matchR!3987 (Regex!9105 List!34970) Bool)

(assert (=> b!2942213 (= lt!1030338 (matchR!3987 r!17423 s!11993))))

(declare-fun lt!1030339 () Unit!48589)

(declare-fun mainMatchTheorem!1242 (Regex!9105 List!34970) Unit!48589)

(assert (=> b!2942213 (= lt!1030339 (mainMatchTheorem!1242 r!17423 s!11993))))

(declare-fun b!2942214 () Bool)

(assert (=> b!2942214 (= e!1854069 e!1854067)))

(declare-fun res!1214292 () Bool)

(assert (=> b!2942214 (=> res!1214292 e!1854067)))

(declare-fun lt!1030336 () Bool)

(assert (=> b!2942214 (= res!1214292 (not lt!1030336))))

(assert (=> b!2942214 (= lt!1030336 (matchR!3987 lt!1030341 s!11993))))

(assert (=> b!2942214 (= lt!1030336 (matchR!3987 (regTwo!18722 r!17423) s!11993))))

(declare-fun lt!1030340 () Unit!48589)

(declare-fun lemmaSimplifySound!94 (Regex!9105 List!34970) Unit!48589)

(assert (=> b!2942214 (= lt!1030340 (lemmaSimplifySound!94 (regTwo!18722 r!17423) s!11993))))

(declare-fun b!2942215 () Bool)

(declare-fun tp_is_empty!15773 () Bool)

(assert (=> b!2942215 (= e!1854066 tp_is_empty!15773)))

(declare-fun b!2942216 () Bool)

(declare-fun res!1214300 () Bool)

(assert (=> b!2942216 (=> res!1214300 e!1854068)))

(declare-fun isEmpty!19107 (List!34970) Bool)

(assert (=> b!2942216 (= res!1214300 (isEmpty!19107 s!11993))))

(declare-fun b!2942217 () Bool)

(assert (=> b!2942217 (= e!1854068 e!1854069)))

(declare-fun res!1214296 () Bool)

(assert (=> b!2942217 (=> res!1214296 e!1854069)))

(assert (=> b!2942217 (= res!1214296 (isEmptyLang!229 lt!1030343))))

(declare-fun simplify!110 (Regex!9105) Regex!9105)

(assert (=> b!2942217 (= lt!1030341 (simplify!110 (regTwo!18722 r!17423)))))

(assert (=> b!2942217 (= lt!1030343 (simplify!110 (regOne!18722 r!17423)))))

(declare-fun b!2942218 () Bool)

(declare-fun res!1214294 () Bool)

(assert (=> b!2942218 (=> res!1214294 e!1854067)))

(assert (=> b!2942218 (= res!1214294 (not (matchR!3987 (regOne!18722 r!17423) Nil!34846)))))

(declare-fun b!2942219 () Bool)

(declare-fun e!1854070 () Bool)

(declare-fun tp!941491 () Bool)

(assert (=> b!2942219 (= e!1854070 (and tp_is_empty!15773 tp!941491))))

(declare-fun res!1214297 () Bool)

(assert (=> start!285692 (=> (not res!1214297) (not e!1854071))))

(declare-fun validRegex!3838 (Regex!9105) Bool)

(assert (=> start!285692 (= res!1214297 (validRegex!3838 r!17423))))

(assert (=> start!285692 e!1854071))

(assert (=> start!285692 e!1854066))

(assert (=> start!285692 e!1854070))

(declare-fun b!2942220 () Bool)

(declare-fun res!1214298 () Bool)

(assert (=> b!2942220 (=> res!1214298 e!1854067)))

(declare-fun nullable!2883 (Regex!9105) Bool)

(assert (=> b!2942220 (= res!1214298 (not (nullable!2883 (regOne!18722 r!17423))))))

(declare-fun b!2942221 () Bool)

(declare-fun tp!941493 () Bool)

(assert (=> b!2942221 (= e!1854066 tp!941493)))

(assert (= (and start!285692 res!1214297) b!2942213))

(assert (= (and b!2942213 (not res!1214293)) b!2942216))

(assert (= (and b!2942216 (not res!1214300)) b!2942217))

(assert (= (and b!2942217 (not res!1214296)) b!2942208))

(assert (= (and b!2942208 (not res!1214295)) b!2942211))

(assert (= (and b!2942211 (not res!1214299)) b!2942214))

(assert (= (and b!2942214 (not res!1214292)) b!2942220))

(assert (= (and b!2942220 (not res!1214298)) b!2942218))

(assert (= (and b!2942218 (not res!1214294)) b!2942210))

(assert (= (and start!285692 ((_ is ElementMatch!9105) r!17423)) b!2942215))

(assert (= (and start!285692 ((_ is Concat!14426) r!17423)) b!2942209))

(assert (= (and start!285692 ((_ is Star!9105) r!17423)) b!2942221))

(assert (= (and start!285692 ((_ is Union!9105) r!17423)) b!2942212))

(assert (= (and start!285692 ((_ is Cons!34846) s!11993)) b!2942219))

(declare-fun m!3325961 () Bool)

(assert (=> b!2942210 m!3325961))

(declare-fun m!3325963 () Bool)

(assert (=> b!2942210 m!3325963))

(declare-fun m!3325965 () Bool)

(assert (=> b!2942210 m!3325965))

(assert (=> b!2942210 m!3325963))

(declare-fun m!3325967 () Bool)

(assert (=> b!2942210 m!3325967))

(declare-fun m!3325969 () Bool)

(assert (=> b!2942210 m!3325969))

(declare-fun m!3325971 () Bool)

(assert (=> b!2942216 m!3325971))

(declare-fun m!3325973 () Bool)

(assert (=> b!2942211 m!3325973))

(declare-fun m!3325975 () Bool)

(assert (=> b!2942218 m!3325975))

(declare-fun m!3325977 () Bool)

(assert (=> b!2942214 m!3325977))

(declare-fun m!3325979 () Bool)

(assert (=> b!2942214 m!3325979))

(declare-fun m!3325981 () Bool)

(assert (=> b!2942214 m!3325981))

(declare-fun m!3325983 () Bool)

(assert (=> b!2942217 m!3325983))

(declare-fun m!3325985 () Bool)

(assert (=> b!2942217 m!3325985))

(declare-fun m!3325987 () Bool)

(assert (=> b!2942217 m!3325987))

(declare-fun m!3325989 () Bool)

(assert (=> b!2942208 m!3325989))

(declare-fun m!3325991 () Bool)

(assert (=> b!2942220 m!3325991))

(declare-fun m!3325993 () Bool)

(assert (=> start!285692 m!3325993))

(declare-fun m!3325995 () Bool)

(assert (=> b!2942213 m!3325995))

(declare-fun m!3325997 () Bool)

(assert (=> b!2942213 m!3325997))

(declare-fun m!3325999 () Bool)

(assert (=> b!2942213 m!3325999))

(check-sat (not b!2942219) (not b!2942217) (not b!2942216) (not start!285692) (not b!2942218) (not b!2942209) (not b!2942214) (not b!2942210) (not b!2942208) (not b!2942213) (not b!2942221) (not b!2942212) (not b!2942211) tp_is_empty!15773 (not b!2942220))
(check-sat)
