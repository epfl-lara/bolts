; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285804 () Bool)

(assert start!285804)

(declare-fun b!2944307 () Bool)

(assert (=> b!2944307 true))

(assert (=> b!2944307 true))

(declare-fun lambda!109592 () Int)

(declare-fun lambda!109591 () Int)

(assert (=> b!2944307 (not (= lambda!109592 lambda!109591))))

(assert (=> b!2944307 true))

(assert (=> b!2944307 true))

(declare-fun b!2944297 () Bool)

(declare-fun e!1855100 () Bool)

(declare-fun e!1855099 () Bool)

(assert (=> b!2944297 (= e!1855100 e!1855099)))

(declare-fun res!1215206 () Bool)

(assert (=> b!2944297 (=> res!1215206 e!1855099)))

(declare-fun lt!1030915 () Bool)

(assert (=> b!2944297 (= res!1215206 (not lt!1030915))))

(declare-datatypes ((C!18436 0))(
  ( (C!18437 (val!11254 Int)) )
))
(declare-datatypes ((Regex!9125 0))(
  ( (ElementMatch!9125 (c!481503 C!18436)) (Concat!14446 (regOne!18762 Regex!9125) (regTwo!18762 Regex!9125)) (EmptyExpr!9125) (Star!9125 (reg!9454 Regex!9125)) (EmptyLang!9125) (Union!9125 (regOne!18763 Regex!9125) (regTwo!18763 Regex!9125)) )
))
(declare-fun r!17423 () Regex!9125)

(declare-fun lt!1030913 () Regex!9125)

(declare-datatypes ((List!34990 0))(
  ( (Nil!34866) (Cons!34866 (h!40286 C!18436) (t!234055 List!34990)) )
))
(declare-fun matchR!4007 (Regex!9125 List!34990) Bool)

(assert (=> b!2944297 (= (matchR!4007 (regTwo!18762 r!17423) Nil!34866) (matchR!4007 lt!1030913 Nil!34866))))

(declare-datatypes ((Unit!48629 0))(
  ( (Unit!48630) )
))
(declare-fun lt!1030921 () Unit!48629)

(declare-fun lemmaSimplifySound!112 (Regex!9125 List!34990) Unit!48629)

(assert (=> b!2944297 (= lt!1030921 (lemmaSimplifySound!112 (regTwo!18762 r!17423) Nil!34866))))

(declare-fun lt!1030914 () Regex!9125)

(declare-fun s!11993 () List!34990)

(assert (=> b!2944297 (= lt!1030915 (matchR!4007 lt!1030914 s!11993))))

(assert (=> b!2944297 (= lt!1030915 (matchR!4007 (regOne!18762 r!17423) s!11993))))

(declare-fun lt!1030918 () Unit!48629)

(assert (=> b!2944297 (= lt!1030918 (lemmaSimplifySound!112 (regOne!18762 r!17423) s!11993))))

(declare-fun b!2944298 () Bool)

(declare-fun res!1215201 () Bool)

(assert (=> b!2944298 (=> res!1215201 e!1855100)))

(declare-fun isEmptyLang!247 (Regex!9125) Bool)

(assert (=> b!2944298 (= res!1215201 (isEmptyLang!247 lt!1030913))))

(declare-fun b!2944299 () Bool)

(declare-fun e!1855098 () Bool)

(declare-fun tp!942004 () Bool)

(declare-fun tp!942003 () Bool)

(assert (=> b!2944299 (= e!1855098 (and tp!942004 tp!942003))))

(declare-fun b!2944300 () Bool)

(declare-fun res!1215208 () Bool)

(assert (=> b!2944300 (=> res!1215208 e!1855100)))

(declare-fun isEmptyExpr!328 (Regex!9125) Bool)

(assert (=> b!2944300 (= res!1215208 (not (isEmptyExpr!328 lt!1030913)))))

(declare-fun b!2944301 () Bool)

(declare-fun tp_is_empty!15813 () Bool)

(assert (=> b!2944301 (= e!1855098 tp_is_empty!15813)))

(declare-fun b!2944302 () Bool)

(declare-fun e!1855096 () Bool)

(declare-fun e!1855101 () Bool)

(assert (=> b!2944302 (= e!1855096 (not e!1855101))))

(declare-fun res!1215205 () Bool)

(assert (=> b!2944302 (=> res!1215205 e!1855101)))

(declare-fun lt!1030919 () Bool)

(get-info :version)

(assert (=> b!2944302 (= res!1215205 (or lt!1030919 (not ((_ is Concat!14446) r!17423))))))

(declare-fun matchRSpec!1262 (Regex!9125 List!34990) Bool)

(assert (=> b!2944302 (= lt!1030919 (matchRSpec!1262 r!17423 s!11993))))

(assert (=> b!2944302 (= lt!1030919 (matchR!4007 r!17423 s!11993))))

(declare-fun lt!1030917 () Unit!48629)

(declare-fun mainMatchTheorem!1262 (Regex!9125 List!34990) Unit!48629)

(assert (=> b!2944302 (= lt!1030917 (mainMatchTheorem!1262 r!17423 s!11993))))

(declare-fun b!2944303 () Bool)

(declare-fun res!1215204 () Bool)

(assert (=> b!2944303 (=> res!1215204 e!1855100)))

(assert (=> b!2944303 (= res!1215204 (isEmptyExpr!328 lt!1030914))))

(declare-fun b!2944304 () Bool)

(declare-fun res!1215203 () Bool)

(assert (=> b!2944304 (=> res!1215203 e!1855101)))

(declare-fun isEmpty!19127 (List!34990) Bool)

(assert (=> b!2944304 (= res!1215203 (isEmpty!19127 s!11993))))

(declare-fun b!2944305 () Bool)

(declare-fun e!1855097 () Bool)

(declare-fun tp!942002 () Bool)

(assert (=> b!2944305 (= e!1855097 (and tp_is_empty!15813 tp!942002))))

(declare-fun b!2944306 () Bool)

(assert (=> b!2944306 (= e!1855101 e!1855100)))

(declare-fun res!1215207 () Bool)

(assert (=> b!2944306 (=> res!1215207 e!1855100)))

(assert (=> b!2944306 (= res!1215207 (isEmptyLang!247 lt!1030914))))

(declare-fun simplify!130 (Regex!9125) Regex!9125)

(assert (=> b!2944306 (= lt!1030913 (simplify!130 (regTwo!18762 r!17423)))))

(assert (=> b!2944306 (= lt!1030914 (simplify!130 (regOne!18762 r!17423)))))

(declare-fun b!2944308 () Bool)

(declare-fun tp!942000 () Bool)

(declare-fun tp!942001 () Bool)

(assert (=> b!2944308 (= e!1855098 (and tp!942000 tp!942001))))

(declare-fun b!2944309 () Bool)

(declare-fun tp!942005 () Bool)

(assert (=> b!2944309 (= e!1855098 tp!942005)))

(declare-fun res!1215202 () Bool)

(assert (=> start!285804 (=> (not res!1215202) (not e!1855096))))

(declare-fun validRegex!3858 (Regex!9125) Bool)

(assert (=> start!285804 (= res!1215202 (validRegex!3858 r!17423))))

(assert (=> start!285804 e!1855096))

(assert (=> start!285804 e!1855098))

(assert (=> start!285804 e!1855097))

(assert (=> b!2944307 (= e!1855099 true)))

(declare-fun Exists!1463 (Int) Bool)

(assert (=> b!2944307 (= (Exists!1463 lambda!109591) (Exists!1463 lambda!109592))))

(declare-fun lt!1030916 () Unit!48629)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!506 (Regex!9125 Regex!9125 List!34990) Unit!48629)

(assert (=> b!2944307 (= lt!1030916 (lemmaExistCutMatchRandMatchRSpecEquivalent!506 (regOne!18762 r!17423) (regTwo!18762 r!17423) s!11993))))

(assert (=> b!2944307 (Exists!1463 lambda!109591)))

(declare-fun lt!1030920 () Unit!48629)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!810 (Regex!9125 Regex!9125 List!34990) Unit!48629)

(assert (=> b!2944307 (= lt!1030920 (lemmaFindConcatSeparationEquivalentToExists!810 (regOne!18762 r!17423) (regTwo!18762 r!17423) s!11993))))

(declare-datatypes ((tuple2!33812 0))(
  ( (tuple2!33813 (_1!20038 List!34990) (_2!20038 List!34990)) )
))
(declare-datatypes ((Option!6638 0))(
  ( (None!6637) (Some!6637 (v!34771 tuple2!33812)) )
))
(declare-fun isDefined!5189 (Option!6638) Bool)

(declare-fun findConcatSeparation!1032 (Regex!9125 Regex!9125 List!34990 List!34990 List!34990) Option!6638)

(assert (=> b!2944307 (isDefined!5189 (findConcatSeparation!1032 (regOne!18762 r!17423) (regTwo!18762 r!17423) Nil!34866 s!11993 s!11993))))

(declare-fun lt!1030912 () Unit!48629)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!20 (Regex!9125 Regex!9125 List!34990 List!34990 List!34990 List!34990 List!34990) Unit!48629)

(assert (=> b!2944307 (= lt!1030912 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!20 (regOne!18762 r!17423) (regTwo!18762 r!17423) s!11993 Nil!34866 s!11993 Nil!34866 s!11993))))

(assert (= (and start!285804 res!1215202) b!2944302))

(assert (= (and b!2944302 (not res!1215205)) b!2944304))

(assert (= (and b!2944304 (not res!1215203)) b!2944306))

(assert (= (and b!2944306 (not res!1215207)) b!2944298))

(assert (= (and b!2944298 (not res!1215201)) b!2944303))

(assert (= (and b!2944303 (not res!1215204)) b!2944300))

(assert (= (and b!2944300 (not res!1215208)) b!2944297))

(assert (= (and b!2944297 (not res!1215206)) b!2944307))

(assert (= (and start!285804 ((_ is ElementMatch!9125) r!17423)) b!2944301))

(assert (= (and start!285804 ((_ is Concat!14446) r!17423)) b!2944308))

(assert (= (and start!285804 ((_ is Star!9125) r!17423)) b!2944309))

(assert (= (and start!285804 ((_ is Union!9125) r!17423)) b!2944299))

(assert (= (and start!285804 ((_ is Cons!34866) s!11993)) b!2944305))

(declare-fun m!3327089 () Bool)

(assert (=> b!2944304 m!3327089))

(declare-fun m!3327091 () Bool)

(assert (=> b!2944307 m!3327091))

(declare-fun m!3327093 () Bool)

(assert (=> b!2944307 m!3327093))

(declare-fun m!3327095 () Bool)

(assert (=> b!2944307 m!3327095))

(declare-fun m!3327097 () Bool)

(assert (=> b!2944307 m!3327097))

(declare-fun m!3327099 () Bool)

(assert (=> b!2944307 m!3327099))

(assert (=> b!2944307 m!3327095))

(declare-fun m!3327101 () Bool)

(assert (=> b!2944307 m!3327101))

(assert (=> b!2944307 m!3327099))

(declare-fun m!3327103 () Bool)

(assert (=> b!2944307 m!3327103))

(declare-fun m!3327105 () Bool)

(assert (=> b!2944306 m!3327105))

(declare-fun m!3327107 () Bool)

(assert (=> b!2944306 m!3327107))

(declare-fun m!3327109 () Bool)

(assert (=> b!2944306 m!3327109))

(declare-fun m!3327111 () Bool)

(assert (=> b!2944298 m!3327111))

(declare-fun m!3327113 () Bool)

(assert (=> b!2944303 m!3327113))

(declare-fun m!3327115 () Bool)

(assert (=> start!285804 m!3327115))

(declare-fun m!3327117 () Bool)

(assert (=> b!2944302 m!3327117))

(declare-fun m!3327119 () Bool)

(assert (=> b!2944302 m!3327119))

(declare-fun m!3327121 () Bool)

(assert (=> b!2944302 m!3327121))

(declare-fun m!3327123 () Bool)

(assert (=> b!2944297 m!3327123))

(declare-fun m!3327125 () Bool)

(assert (=> b!2944297 m!3327125))

(declare-fun m!3327127 () Bool)

(assert (=> b!2944297 m!3327127))

(declare-fun m!3327129 () Bool)

(assert (=> b!2944297 m!3327129))

(declare-fun m!3327131 () Bool)

(assert (=> b!2944297 m!3327131))

(declare-fun m!3327133 () Bool)

(assert (=> b!2944297 m!3327133))

(declare-fun m!3327135 () Bool)

(assert (=> b!2944300 m!3327135))

(check-sat (not b!2944309) (not b!2944297) (not b!2944303) (not b!2944305) (not b!2944308) (not b!2944299) (not b!2944304) tp_is_empty!15813 (not start!285804) (not b!2944298) (not b!2944307) (not b!2944306) (not b!2944302) (not b!2944300))
(check-sat)
