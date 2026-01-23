; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285008 () Bool)

(assert start!285008)

(declare-fun b!2930971 () Bool)

(assert (=> b!2930971 true))

(assert (=> b!2930971 true))

(assert (=> b!2930971 true))

(declare-fun lambda!109094 () Int)

(declare-fun lambda!109093 () Int)

(assert (=> b!2930971 (not (= lambda!109094 lambda!109093))))

(assert (=> b!2930971 true))

(assert (=> b!2930971 true))

(assert (=> b!2930971 true))

(declare-fun b!2930959 () Bool)

(declare-fun e!1848183 () Bool)

(declare-fun tp_is_empty!15661 () Bool)

(assert (=> b!2930959 (= e!1848183 tp_is_empty!15661)))

(declare-fun b!2930960 () Bool)

(declare-fun tp!939342 () Bool)

(declare-fun tp!939341 () Bool)

(assert (=> b!2930960 (= e!1848183 (and tp!939342 tp!939341))))

(declare-fun b!2930961 () Bool)

(declare-fun e!1848180 () Bool)

(declare-fun e!1848181 () Bool)

(assert (=> b!2930961 (= e!1848180 e!1848181)))

(declare-fun res!1209980 () Bool)

(assert (=> b!2930961 (=> res!1209980 e!1848181)))

(declare-datatypes ((C!18284 0))(
  ( (C!18285 (val!11178 Int)) )
))
(declare-datatypes ((Regex!9049 0))(
  ( (ElementMatch!9049 (c!478639 C!18284)) (Concat!14370 (regOne!18610 Regex!9049) (regTwo!18610 Regex!9049)) (EmptyExpr!9049) (Star!9049 (reg!9378 Regex!9049)) (EmptyLang!9049) (Union!9049 (regOne!18611 Regex!9049) (regTwo!18611 Regex!9049)) )
))
(declare-fun r!17423 () Regex!9049)

(declare-datatypes ((List!34914 0))(
  ( (Nil!34790) (Cons!34790 (h!40210 C!18284) (t!233979 List!34914)) )
))
(declare-datatypes ((tuple2!33748 0))(
  ( (tuple2!33749 (_1!20006 List!34914) (_2!20006 List!34914)) )
))
(declare-fun lt!1027805 () tuple2!33748)

(declare-fun matchR!3931 (Regex!9049 List!34914) Bool)

(assert (=> b!2930961 (= res!1209980 (not (matchR!3931 (reg!9378 r!17423) (_1!20006 lt!1027805))))))

(declare-datatypes ((Option!6606 0))(
  ( (None!6605) (Some!6605 (v!34739 tuple2!33748)) )
))
(declare-fun lt!1027810 () Option!6606)

(declare-fun get!10622 (Option!6606) tuple2!33748)

(assert (=> b!2930961 (= lt!1027805 (get!10622 lt!1027810))))

(declare-fun b!2930962 () Bool)

(declare-fun e!1848182 () Bool)

(declare-fun e!1848185 () Bool)

(assert (=> b!2930962 (= e!1848182 (not e!1848185))))

(declare-fun res!1209979 () Bool)

(assert (=> b!2930962 (=> res!1209979 e!1848185)))

(declare-fun lt!1027809 () Bool)

(get-info :version)

(assert (=> b!2930962 (= res!1209979 (or (not lt!1027809) ((_ is Concat!14370) r!17423) ((_ is Union!9049) r!17423) (not ((_ is Star!9049) r!17423))))))

(declare-fun s!11993 () List!34914)

(declare-fun matchRSpec!1186 (Regex!9049 List!34914) Bool)

(assert (=> b!2930962 (= lt!1027809 (matchRSpec!1186 r!17423 s!11993))))

(assert (=> b!2930962 (= lt!1027809 (matchR!3931 r!17423 s!11993))))

(declare-datatypes ((Unit!48437 0))(
  ( (Unit!48438) )
))
(declare-fun lt!1027811 () Unit!48437)

(declare-fun mainMatchTheorem!1186 (Regex!9049 List!34914) Unit!48437)

(assert (=> b!2930962 (= lt!1027811 (mainMatchTheorem!1186 r!17423 s!11993))))

(declare-fun res!1209984 () Bool)

(assert (=> start!285008 (=> (not res!1209984) (not e!1848182))))

(declare-fun validRegex!3782 (Regex!9049) Bool)

(assert (=> start!285008 (= res!1209984 (validRegex!3782 r!17423))))

(assert (=> start!285008 e!1848182))

(assert (=> start!285008 e!1848183))

(declare-fun e!1848179 () Bool)

(assert (=> start!285008 e!1848179))

(declare-fun b!2930963 () Bool)

(declare-fun e!1848184 () Bool)

(assert (=> b!2930963 (= e!1848184 true)))

(declare-fun lt!1027804 () Int)

(declare-fun size!26445 (List!34914) Int)

(assert (=> b!2930963 (= lt!1027804 (size!26445 (_1!20006 lt!1027805)))))

(declare-fun b!2930964 () Bool)

(declare-fun res!1209982 () Bool)

(assert (=> b!2930964 (=> res!1209982 e!1848184)))

(declare-fun ++!8299 (List!34914 List!34914) List!34914)

(assert (=> b!2930964 (= res!1209982 (not (= (++!8299 (_1!20006 lt!1027805) (_2!20006 lt!1027805)) s!11993)))))

(declare-fun b!2930965 () Bool)

(declare-fun tp!939345 () Bool)

(assert (=> b!2930965 (= e!1848183 tp!939345)))

(declare-fun b!2930966 () Bool)

(declare-fun res!1209977 () Bool)

(assert (=> b!2930966 (=> res!1209977 e!1848185)))

(declare-fun isEmpty!19041 (List!34914) Bool)

(assert (=> b!2930966 (= res!1209977 (isEmpty!19041 s!11993))))

(declare-fun b!2930967 () Bool)

(declare-fun res!1209981 () Bool)

(assert (=> b!2930967 (=> res!1209981 e!1848181)))

(declare-fun lt!1027806 () Regex!9049)

(assert (=> b!2930967 (= res!1209981 (not (matchR!3931 lt!1027806 (_2!20006 lt!1027805))))))

(declare-fun b!2930968 () Bool)

(assert (=> b!2930968 (= e!1848181 e!1848184)))

(declare-fun res!1209978 () Bool)

(assert (=> b!2930968 (=> res!1209978 e!1848184)))

(assert (=> b!2930968 (= res!1209978 (not (= (size!26445 (_2!20006 lt!1027805)) (size!26445 s!11993))))))

(declare-fun simplify!56 (Regex!9049) Regex!9049)

(assert (=> b!2930968 (matchR!3931 (simplify!56 (reg!9378 r!17423)) (_1!20006 lt!1027805))))

(declare-fun lt!1027802 () Unit!48437)

(declare-fun lemmaSimplifySound!52 (Regex!9049 List!34914) Unit!48437)

(assert (=> b!2930968 (= lt!1027802 (lemmaSimplifySound!52 (reg!9378 r!17423) (_1!20006 lt!1027805)))))

(declare-fun b!2930969 () Bool)

(declare-fun tp!939343 () Bool)

(assert (=> b!2930969 (= e!1848179 (and tp_is_empty!15661 tp!939343))))

(declare-fun b!2930970 () Bool)

(declare-fun tp!939344 () Bool)

(declare-fun tp!939340 () Bool)

(assert (=> b!2930970 (= e!1848183 (and tp!939344 tp!939340))))

(assert (=> b!2930971 (= e!1848185 e!1848180)))

(declare-fun res!1209983 () Bool)

(assert (=> b!2930971 (=> res!1209983 e!1848180)))

(declare-fun lt!1027807 () Bool)

(assert (=> b!2930971 (= res!1209983 (not lt!1027807))))

(declare-fun Exists!1411 (Int) Bool)

(assert (=> b!2930971 (= (Exists!1411 lambda!109093) (Exists!1411 lambda!109094))))

(declare-fun lt!1027803 () Unit!48437)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!222 (Regex!9049 List!34914) Unit!48437)

(assert (=> b!2930971 (= lt!1027803 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!222 (reg!9378 r!17423) s!11993))))

(assert (=> b!2930971 (= lt!1027807 (Exists!1411 lambda!109093))))

(declare-fun isDefined!5157 (Option!6606) Bool)

(assert (=> b!2930971 (= lt!1027807 (isDefined!5157 lt!1027810))))

(declare-fun findConcatSeparation!1000 (Regex!9049 Regex!9049 List!34914 List!34914 List!34914) Option!6606)

(assert (=> b!2930971 (= lt!1027810 (findConcatSeparation!1000 (reg!9378 r!17423) lt!1027806 Nil!34790 s!11993 s!11993))))

(declare-fun lt!1027808 () Unit!48437)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!782 (Regex!9049 Regex!9049 List!34914) Unit!48437)

(assert (=> b!2930971 (= lt!1027808 (lemmaFindConcatSeparationEquivalentToExists!782 (reg!9378 r!17423) lt!1027806 s!11993))))

(assert (=> b!2930971 (= lt!1027806 (Star!9049 (reg!9378 r!17423)))))

(assert (= (and start!285008 res!1209984) b!2930962))

(assert (= (and b!2930962 (not res!1209979)) b!2930966))

(assert (= (and b!2930966 (not res!1209977)) b!2930971))

(assert (= (and b!2930971 (not res!1209983)) b!2930961))

(assert (= (and b!2930961 (not res!1209980)) b!2930967))

(assert (= (and b!2930967 (not res!1209981)) b!2930968))

(assert (= (and b!2930968 (not res!1209978)) b!2930964))

(assert (= (and b!2930964 (not res!1209982)) b!2930963))

(assert (= (and start!285008 ((_ is ElementMatch!9049) r!17423)) b!2930959))

(assert (= (and start!285008 ((_ is Concat!14370) r!17423)) b!2930960))

(assert (= (and start!285008 ((_ is Star!9049) r!17423)) b!2930965))

(assert (= (and start!285008 ((_ is Union!9049) r!17423)) b!2930970))

(assert (= (and start!285008 ((_ is Cons!34790) s!11993)) b!2930969))

(declare-fun m!3321023 () Bool)

(assert (=> start!285008 m!3321023))

(declare-fun m!3321025 () Bool)

(assert (=> b!2930968 m!3321025))

(declare-fun m!3321027 () Bool)

(assert (=> b!2930968 m!3321027))

(declare-fun m!3321029 () Bool)

(assert (=> b!2930968 m!3321029))

(declare-fun m!3321031 () Bool)

(assert (=> b!2930968 m!3321031))

(assert (=> b!2930968 m!3321029))

(declare-fun m!3321033 () Bool)

(assert (=> b!2930968 m!3321033))

(declare-fun m!3321035 () Bool)

(assert (=> b!2930971 m!3321035))

(declare-fun m!3321037 () Bool)

(assert (=> b!2930971 m!3321037))

(declare-fun m!3321039 () Bool)

(assert (=> b!2930971 m!3321039))

(assert (=> b!2930971 m!3321039))

(declare-fun m!3321041 () Bool)

(assert (=> b!2930971 m!3321041))

(declare-fun m!3321043 () Bool)

(assert (=> b!2930971 m!3321043))

(declare-fun m!3321045 () Bool)

(assert (=> b!2930971 m!3321045))

(declare-fun m!3321047 () Bool)

(assert (=> b!2930961 m!3321047))

(declare-fun m!3321049 () Bool)

(assert (=> b!2930961 m!3321049))

(declare-fun m!3321051 () Bool)

(assert (=> b!2930964 m!3321051))

(declare-fun m!3321053 () Bool)

(assert (=> b!2930962 m!3321053))

(declare-fun m!3321055 () Bool)

(assert (=> b!2930962 m!3321055))

(declare-fun m!3321057 () Bool)

(assert (=> b!2930962 m!3321057))

(declare-fun m!3321059 () Bool)

(assert (=> b!2930967 m!3321059))

(declare-fun m!3321061 () Bool)

(assert (=> b!2930963 m!3321061))

(declare-fun m!3321063 () Bool)

(assert (=> b!2930966 m!3321063))

(check-sat (not b!2930971) (not b!2930962) (not b!2930965) (not b!2930963) (not b!2930970) (not b!2930960) (not b!2930968) (not b!2930966) (not b!2930961) (not b!2930964) (not b!2930969) (not start!285008) tp_is_empty!15661 (not b!2930967))
(check-sat)
