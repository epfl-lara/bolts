; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285136 () Bool)

(assert start!285136)

(declare-fun b!2932861 () Bool)

(assert (=> b!2932861 true))

(assert (=> b!2932861 true))

(assert (=> b!2932861 true))

(declare-fun lambda!109218 () Int)

(declare-fun lambda!109217 () Int)

(assert (=> b!2932861 (not (= lambda!109218 lambda!109217))))

(assert (=> b!2932861 true))

(assert (=> b!2932861 true))

(assert (=> b!2932861 true))

(declare-fun b!2932859 () Bool)

(declare-fun e!1849171 () Bool)

(declare-datatypes ((C!18300 0))(
  ( (C!18301 (val!11186 Int)) )
))
(declare-datatypes ((Regex!9057 0))(
  ( (ElementMatch!9057 (c!479051 C!18300)) (Concat!14378 (regOne!18626 Regex!9057) (regTwo!18626 Regex!9057)) (EmptyExpr!9057) (Star!9057 (reg!9386 Regex!9057)) (EmptyLang!9057) (Union!9057 (regOne!18627 Regex!9057) (regTwo!18627 Regex!9057)) )
))
(declare-fun lt!1028322 () Regex!9057)

(declare-fun validRegex!3790 (Regex!9057) Bool)

(assert (=> b!2932859 (= e!1849171 (validRegex!3790 lt!1028322))))

(declare-datatypes ((List!34922 0))(
  ( (Nil!34798) (Cons!34798 (h!40218 C!18300) (t!233987 List!34922)) )
))
(declare-datatypes ((tuple2!33764 0))(
  ( (tuple2!33765 (_1!20014 List!34922) (_2!20014 List!34922)) )
))
(declare-fun lt!1028328 () tuple2!33764)

(declare-fun matchR!3939 (Regex!9057 List!34922) Bool)

(declare-fun simplify!64 (Regex!9057) Regex!9057)

(assert (=> b!2932859 (matchR!3939 (simplify!64 lt!1028322) (_2!20014 lt!1028328))))

(declare-datatypes ((Unit!48467 0))(
  ( (Unit!48468) )
))
(declare-fun lt!1028325 () Unit!48467)

(declare-fun lemmaSimplifySound!60 (Regex!9057 List!34922) Unit!48467)

(assert (=> b!2932859 (= lt!1028325 (lemmaSimplifySound!60 lt!1028322 (_2!20014 lt!1028328)))))

(declare-fun lt!1028321 () Unit!48467)

(declare-fun e!1849173 () Unit!48467)

(assert (=> b!2932859 (= lt!1028321 e!1849173)))

(declare-fun c!479050 () Bool)

(declare-fun s!11993 () List!34922)

(declare-fun size!26453 (List!34922) Int)

(assert (=> b!2932859 (= c!479050 (= (size!26453 (_2!20014 lt!1028328)) (size!26453 s!11993)))))

(declare-fun r!17423 () Regex!9057)

(assert (=> b!2932859 (matchR!3939 (simplify!64 (reg!9386 r!17423)) (_1!20014 lt!1028328))))

(declare-fun lt!1028320 () Unit!48467)

(assert (=> b!2932859 (= lt!1028320 (lemmaSimplifySound!60 (reg!9386 r!17423) (_1!20014 lt!1028328)))))

(declare-fun b!2932860 () Bool)

(declare-fun Unit!48469 () Unit!48467)

(assert (=> b!2932860 (= e!1849173 Unit!48469)))

(declare-fun lt!1028327 () Unit!48467)

(declare-fun mainMatchTheorem!1194 (Regex!9057 List!34922) Unit!48467)

(assert (=> b!2932860 (= lt!1028327 (mainMatchTheorem!1194 (reg!9386 r!17423) (_1!20014 lt!1028328)))))

(assert (=> b!2932860 false))

(declare-fun e!1849172 () Bool)

(declare-fun e!1849170 () Bool)

(assert (=> b!2932861 (= e!1849172 e!1849170)))

(declare-fun res!1210780 () Bool)

(assert (=> b!2932861 (=> res!1210780 e!1849170)))

(declare-fun lt!1028330 () Bool)

(assert (=> b!2932861 (= res!1210780 (not lt!1028330))))

(declare-fun Exists!1419 (Int) Bool)

(assert (=> b!2932861 (= (Exists!1419 lambda!109217) (Exists!1419 lambda!109218))))

(declare-fun lt!1028324 () Unit!48467)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!230 (Regex!9057 List!34922) Unit!48467)

(assert (=> b!2932861 (= lt!1028324 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!230 (reg!9386 r!17423) s!11993))))

(assert (=> b!2932861 (= lt!1028330 (Exists!1419 lambda!109217))))

(declare-datatypes ((Option!6614 0))(
  ( (None!6613) (Some!6613 (v!34747 tuple2!33764)) )
))
(declare-fun lt!1028329 () Option!6614)

(declare-fun isDefined!5165 (Option!6614) Bool)

(assert (=> b!2932861 (= lt!1028330 (isDefined!5165 lt!1028329))))

(declare-fun findConcatSeparation!1008 (Regex!9057 Regex!9057 List!34922 List!34922 List!34922) Option!6614)

(assert (=> b!2932861 (= lt!1028329 (findConcatSeparation!1008 (reg!9386 r!17423) lt!1028322 Nil!34798 s!11993 s!11993))))

(declare-fun lt!1028326 () Unit!48467)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!790 (Regex!9057 Regex!9057 List!34922) Unit!48467)

(assert (=> b!2932861 (= lt!1028326 (lemmaFindConcatSeparationEquivalentToExists!790 (reg!9386 r!17423) lt!1028322 s!11993))))

(assert (=> b!2932861 (= lt!1028322 (Star!9057 (reg!9386 r!17423)))))

(declare-fun b!2932862 () Bool)

(declare-fun e!1849167 () Bool)

(declare-fun tp!939639 () Bool)

(declare-fun tp!939640 () Bool)

(assert (=> b!2932862 (= e!1849167 (and tp!939639 tp!939640))))

(declare-fun b!2932863 () Bool)

(declare-fun e!1849168 () Bool)

(assert (=> b!2932863 (= e!1849168 (not e!1849172))))

(declare-fun res!1210783 () Bool)

(assert (=> b!2932863 (=> res!1210783 e!1849172)))

(declare-fun lt!1028331 () Bool)

(get-info :version)

(assert (=> b!2932863 (= res!1210783 (or (not lt!1028331) ((_ is Concat!14378) r!17423) ((_ is Union!9057) r!17423) (not ((_ is Star!9057) r!17423))))))

(declare-fun matchRSpec!1194 (Regex!9057 List!34922) Bool)

(assert (=> b!2932863 (= lt!1028331 (matchRSpec!1194 r!17423 s!11993))))

(assert (=> b!2932863 (= lt!1028331 (matchR!3939 r!17423 s!11993))))

(declare-fun lt!1028323 () Unit!48467)

(assert (=> b!2932863 (= lt!1028323 (mainMatchTheorem!1194 r!17423 s!11993))))

(declare-fun b!2932864 () Bool)

(declare-fun res!1210781 () Bool)

(assert (=> b!2932864 (=> res!1210781 e!1849172)))

(declare-fun isEmpty!19053 (List!34922) Bool)

(assert (=> b!2932864 (= res!1210781 (isEmpty!19053 s!11993))))

(declare-fun b!2932865 () Bool)

(assert (=> b!2932865 (= e!1849170 e!1849171)))

(declare-fun res!1210782 () Bool)

(assert (=> b!2932865 (=> res!1210782 e!1849171)))

(assert (=> b!2932865 (= res!1210782 (not (matchR!3939 (reg!9386 r!17423) (_1!20014 lt!1028328))))))

(declare-fun get!10634 (Option!6614) tuple2!33764)

(assert (=> b!2932865 (= lt!1028328 (get!10634 lt!1028329))))

(declare-fun res!1210779 () Bool)

(assert (=> start!285136 (=> (not res!1210779) (not e!1849168))))

(assert (=> start!285136 (= res!1210779 (validRegex!3790 r!17423))))

(assert (=> start!285136 e!1849168))

(assert (=> start!285136 e!1849167))

(declare-fun e!1849169 () Bool)

(assert (=> start!285136 e!1849169))

(declare-fun b!2932866 () Bool)

(declare-fun tp_is_empty!15677 () Bool)

(declare-fun tp!939636 () Bool)

(assert (=> b!2932866 (= e!1849169 (and tp_is_empty!15677 tp!939636))))

(declare-fun b!2932867 () Bool)

(declare-fun tp!939641 () Bool)

(declare-fun tp!939638 () Bool)

(assert (=> b!2932867 (= e!1849167 (and tp!939641 tp!939638))))

(declare-fun b!2932868 () Bool)

(declare-fun tp!939637 () Bool)

(assert (=> b!2932868 (= e!1849167 tp!939637)))

(declare-fun b!2932869 () Bool)

(declare-fun res!1210784 () Bool)

(assert (=> b!2932869 (=> res!1210784 e!1849171)))

(assert (=> b!2932869 (= res!1210784 (not (matchR!3939 lt!1028322 (_2!20014 lt!1028328))))))

(declare-fun b!2932870 () Bool)

(assert (=> b!2932870 (= e!1849167 tp_is_empty!15677)))

(declare-fun b!2932871 () Bool)

(declare-fun Unit!48470 () Unit!48467)

(assert (=> b!2932871 (= e!1849173 Unit!48470)))

(assert (= (and start!285136 res!1210779) b!2932863))

(assert (= (and b!2932863 (not res!1210783)) b!2932864))

(assert (= (and b!2932864 (not res!1210781)) b!2932861))

(assert (= (and b!2932861 (not res!1210780)) b!2932865))

(assert (= (and b!2932865 (not res!1210782)) b!2932869))

(assert (= (and b!2932869 (not res!1210784)) b!2932859))

(assert (= (and b!2932859 c!479050) b!2932860))

(assert (= (and b!2932859 (not c!479050)) b!2932871))

(assert (= (and start!285136 ((_ is ElementMatch!9057) r!17423)) b!2932870))

(assert (= (and start!285136 ((_ is Concat!14378) r!17423)) b!2932862))

(assert (= (and start!285136 ((_ is Star!9057) r!17423)) b!2932868))

(assert (= (and start!285136 ((_ is Union!9057) r!17423)) b!2932867))

(assert (= (and start!285136 ((_ is Cons!34798) s!11993)) b!2932866))

(declare-fun m!3322029 () Bool)

(assert (=> b!2932865 m!3322029))

(declare-fun m!3322031 () Bool)

(assert (=> b!2932865 m!3322031))

(declare-fun m!3322033 () Bool)

(assert (=> b!2932869 m!3322033))

(declare-fun m!3322035 () Bool)

(assert (=> b!2932859 m!3322035))

(declare-fun m!3322037 () Bool)

(assert (=> b!2932859 m!3322037))

(declare-fun m!3322039 () Bool)

(assert (=> b!2932859 m!3322039))

(declare-fun m!3322041 () Bool)

(assert (=> b!2932859 m!3322041))

(declare-fun m!3322043 () Bool)

(assert (=> b!2932859 m!3322043))

(declare-fun m!3322045 () Bool)

(assert (=> b!2932859 m!3322045))

(assert (=> b!2932859 m!3322039))

(declare-fun m!3322047 () Bool)

(assert (=> b!2932859 m!3322047))

(declare-fun m!3322049 () Bool)

(assert (=> b!2932859 m!3322049))

(declare-fun m!3322051 () Bool)

(assert (=> b!2932859 m!3322051))

(assert (=> b!2932859 m!3322049))

(declare-fun m!3322053 () Bool)

(assert (=> b!2932864 m!3322053))

(declare-fun m!3322055 () Bool)

(assert (=> b!2932860 m!3322055))

(declare-fun m!3322057 () Bool)

(assert (=> b!2932861 m!3322057))

(declare-fun m!3322059 () Bool)

(assert (=> b!2932861 m!3322059))

(declare-fun m!3322061 () Bool)

(assert (=> b!2932861 m!3322061))

(declare-fun m!3322063 () Bool)

(assert (=> b!2932861 m!3322063))

(declare-fun m!3322065 () Bool)

(assert (=> b!2932861 m!3322065))

(assert (=> b!2932861 m!3322063))

(declare-fun m!3322067 () Bool)

(assert (=> b!2932861 m!3322067))

(declare-fun m!3322069 () Bool)

(assert (=> start!285136 m!3322069))

(declare-fun m!3322071 () Bool)

(assert (=> b!2932863 m!3322071))

(declare-fun m!3322073 () Bool)

(assert (=> b!2932863 m!3322073))

(declare-fun m!3322075 () Bool)

(assert (=> b!2932863 m!3322075))

(check-sat (not b!2932859) (not b!2932861) (not b!2932860) (not b!2932868) (not b!2932867) tp_is_empty!15677 (not b!2932864) (not b!2932862) (not b!2932866) (not start!285136) (not b!2932865) (not b!2932863) (not b!2932869))
(check-sat)
