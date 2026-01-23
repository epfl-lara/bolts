; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285792 () Bool)

(assert start!285792)

(declare-fun res!1215030 () Bool)

(declare-fun e!1854973 () Bool)

(assert (=> start!285792 (=> (not res!1215030) (not e!1854973))))

(declare-datatypes ((C!18424 0))(
  ( (C!18425 (val!11248 Int)) )
))
(declare-datatypes ((Regex!9119 0))(
  ( (ElementMatch!9119 (c!481497 C!18424)) (Concat!14440 (regOne!18750 Regex!9119) (regTwo!18750 Regex!9119)) (EmptyExpr!9119) (Star!9119 (reg!9448 Regex!9119)) (EmptyLang!9119) (Union!9119 (regOne!18751 Regex!9119) (regTwo!18751 Regex!9119)) )
))
(declare-fun r!17423 () Regex!9119)

(declare-fun validRegex!3852 (Regex!9119) Bool)

(assert (=> start!285792 (= res!1215030 (validRegex!3852 r!17423))))

(assert (=> start!285792 e!1854973))

(declare-fun e!1854976 () Bool)

(assert (=> start!285792 e!1854976))

(declare-fun e!1854974 () Bool)

(assert (=> start!285792 e!1854974))

(declare-fun b!2944015 () Bool)

(declare-fun tp_is_empty!15801 () Bool)

(assert (=> b!2944015 (= e!1854976 tp_is_empty!15801)))

(declare-fun b!2944016 () Bool)

(declare-fun res!1215021 () Bool)

(declare-fun e!1854972 () Bool)

(assert (=> b!2944016 (=> res!1215021 e!1854972)))

(declare-datatypes ((List!34984 0))(
  ( (Nil!34860) (Cons!34860 (h!40280 C!18424) (t!234049 List!34984)) )
))
(declare-fun s!11993 () List!34984)

(declare-fun isEmpty!19121 (List!34984) Bool)

(assert (=> b!2944016 (= res!1215021 (isEmpty!19121 s!11993))))

(declare-fun b!2944017 () Bool)

(declare-fun res!1215032 () Bool)

(declare-fun e!1854977 () Bool)

(assert (=> b!2944017 (=> res!1215032 e!1854977)))

(declare-fun ++!8317 (List!34984 List!34984) List!34984)

(assert (=> b!2944017 (= res!1215032 (not (= (++!8317 s!11993 Nil!34860) s!11993)))))

(declare-fun b!2944018 () Bool)

(declare-fun res!1215031 () Bool)

(declare-fun e!1854975 () Bool)

(assert (=> b!2944018 (=> res!1215031 e!1854975)))

(declare-fun lt!1030756 () Regex!9119)

(declare-fun isEmptyExpr!322 (Regex!9119) Bool)

(assert (=> b!2944018 (= res!1215031 (isEmptyExpr!322 lt!1030756))))

(declare-fun b!2944019 () Bool)

(declare-fun res!1215029 () Bool)

(assert (=> b!2944019 (=> res!1215029 e!1854977)))

(assert (=> b!2944019 (= res!1215029 (not (validRegex!3852 (regOne!18750 r!17423))))))

(declare-fun b!2944020 () Bool)

(declare-fun tp!941897 () Bool)

(declare-fun tp!941892 () Bool)

(assert (=> b!2944020 (= e!1854976 (and tp!941897 tp!941892))))

(declare-fun b!2944021 () Bool)

(declare-fun res!1215024 () Bool)

(assert (=> b!2944021 (=> res!1215024 e!1854977)))

(declare-fun isPrefix!2760 (List!34984 List!34984) Bool)

(assert (=> b!2944021 (= res!1215024 (not (isPrefix!2760 Nil!34860 s!11993)))))

(declare-fun b!2944022 () Bool)

(declare-fun res!1215025 () Bool)

(assert (=> b!2944022 (=> res!1215025 e!1854975)))

(declare-fun lt!1030754 () Regex!9119)

(declare-fun isEmptyLang!241 (Regex!9119) Bool)

(assert (=> b!2944022 (= res!1215025 (isEmptyLang!241 lt!1030754))))

(declare-fun b!2944023 () Bool)

(assert (=> b!2944023 (= e!1854972 e!1854975)))

(declare-fun res!1215028 () Bool)

(assert (=> b!2944023 (=> res!1215028 e!1854975)))

(assert (=> b!2944023 (= res!1215028 (isEmptyLang!241 lt!1030756))))

(declare-fun simplify!124 (Regex!9119) Regex!9119)

(assert (=> b!2944023 (= lt!1030754 (simplify!124 (regTwo!18750 r!17423)))))

(assert (=> b!2944023 (= lt!1030756 (simplify!124 (regOne!18750 r!17423)))))

(declare-fun b!2944024 () Bool)

(declare-fun res!1215027 () Bool)

(assert (=> b!2944024 (=> res!1215027 e!1854977)))

(assert (=> b!2944024 (= res!1215027 (not (validRegex!3852 (regTwo!18750 r!17423))))))

(declare-fun b!2944025 () Bool)

(assert (=> b!2944025 (= e!1854975 e!1854977)))

(declare-fun res!1215023 () Bool)

(assert (=> b!2944025 (=> res!1215023 e!1854977)))

(declare-fun lt!1030753 () Bool)

(assert (=> b!2944025 (= res!1215023 (not lt!1030753))))

(declare-fun matchR!4001 (Regex!9119 List!34984) Bool)

(assert (=> b!2944025 (= (matchR!4001 (regTwo!18750 r!17423) Nil!34860) (matchR!4001 lt!1030754 Nil!34860))))

(declare-datatypes ((Unit!48617 0))(
  ( (Unit!48618) )
))
(declare-fun lt!1030752 () Unit!48617)

(declare-fun lemmaSimplifySound!106 (Regex!9119 List!34984) Unit!48617)

(assert (=> b!2944025 (= lt!1030752 (lemmaSimplifySound!106 (regTwo!18750 r!17423) Nil!34860))))

(assert (=> b!2944025 (= lt!1030753 (matchR!4001 lt!1030756 s!11993))))

(assert (=> b!2944025 (= lt!1030753 (matchR!4001 (regOne!18750 r!17423) s!11993))))

(declare-fun lt!1030757 () Unit!48617)

(assert (=> b!2944025 (= lt!1030757 (lemmaSimplifySound!106 (regOne!18750 r!17423) s!11993))))

(declare-fun b!2944026 () Bool)

(declare-fun res!1215022 () Bool)

(assert (=> b!2944026 (=> res!1215022 e!1854975)))

(assert (=> b!2944026 (= res!1215022 (not (isEmptyExpr!322 lt!1030754)))))

(declare-fun b!2944027 () Bool)

(declare-fun tp!941895 () Bool)

(assert (=> b!2944027 (= e!1854974 (and tp_is_empty!15801 tp!941895))))

(declare-fun b!2944028 () Bool)

(assert (=> b!2944028 (= e!1854977 true)))

(declare-fun lt!1030758 () List!34984)

(assert (=> b!2944028 (= lt!1030758 (++!8317 Nil!34860 s!11993))))

(declare-fun b!2944029 () Bool)

(assert (=> b!2944029 (= e!1854973 (not e!1854972))))

(declare-fun res!1215026 () Bool)

(assert (=> b!2944029 (=> res!1215026 e!1854972)))

(declare-fun lt!1030759 () Bool)

(get-info :version)

(assert (=> b!2944029 (= res!1215026 (or lt!1030759 (not ((_ is Concat!14440) r!17423))))))

(declare-fun matchRSpec!1256 (Regex!9119 List!34984) Bool)

(assert (=> b!2944029 (= lt!1030759 (matchRSpec!1256 r!17423 s!11993))))

(assert (=> b!2944029 (= lt!1030759 (matchR!4001 r!17423 s!11993))))

(declare-fun lt!1030755 () Unit!48617)

(declare-fun mainMatchTheorem!1256 (Regex!9119 List!34984) Unit!48617)

(assert (=> b!2944029 (= lt!1030755 (mainMatchTheorem!1256 r!17423 s!11993))))

(declare-fun b!2944030 () Bool)

(declare-fun tp!941893 () Bool)

(assert (=> b!2944030 (= e!1854976 tp!941893)))

(declare-fun b!2944031 () Bool)

(declare-fun tp!941896 () Bool)

(declare-fun tp!941894 () Bool)

(assert (=> b!2944031 (= e!1854976 (and tp!941896 tp!941894))))

(assert (= (and start!285792 res!1215030) b!2944029))

(assert (= (and b!2944029 (not res!1215026)) b!2944016))

(assert (= (and b!2944016 (not res!1215021)) b!2944023))

(assert (= (and b!2944023 (not res!1215028)) b!2944022))

(assert (= (and b!2944022 (not res!1215025)) b!2944018))

(assert (= (and b!2944018 (not res!1215031)) b!2944026))

(assert (= (and b!2944026 (not res!1215022)) b!2944025))

(assert (= (and b!2944025 (not res!1215023)) b!2944019))

(assert (= (and b!2944019 (not res!1215029)) b!2944024))

(assert (= (and b!2944024 (not res!1215027)) b!2944017))

(assert (= (and b!2944017 (not res!1215032)) b!2944021))

(assert (= (and b!2944021 (not res!1215024)) b!2944028))

(assert (= (and start!285792 ((_ is ElementMatch!9119) r!17423)) b!2944015))

(assert (= (and start!285792 ((_ is Concat!14440) r!17423)) b!2944020))

(assert (= (and start!285792 ((_ is Star!9119) r!17423)) b!2944030))

(assert (= (and start!285792 ((_ is Union!9119) r!17423)) b!2944031))

(assert (= (and start!285792 ((_ is Cons!34860) s!11993)) b!2944027))

(declare-fun m!3326829 () Bool)

(assert (=> b!2944024 m!3326829))

(declare-fun m!3326831 () Bool)

(assert (=> b!2944028 m!3326831))

(declare-fun m!3326833 () Bool)

(assert (=> b!2944019 m!3326833))

(declare-fun m!3326835 () Bool)

(assert (=> b!2944021 m!3326835))

(declare-fun m!3326837 () Bool)

(assert (=> start!285792 m!3326837))

(declare-fun m!3326839 () Bool)

(assert (=> b!2944017 m!3326839))

(declare-fun m!3326841 () Bool)

(assert (=> b!2944029 m!3326841))

(declare-fun m!3326843 () Bool)

(assert (=> b!2944029 m!3326843))

(declare-fun m!3326845 () Bool)

(assert (=> b!2944029 m!3326845))

(declare-fun m!3326847 () Bool)

(assert (=> b!2944022 m!3326847))

(declare-fun m!3326849 () Bool)

(assert (=> b!2944025 m!3326849))

(declare-fun m!3326851 () Bool)

(assert (=> b!2944025 m!3326851))

(declare-fun m!3326853 () Bool)

(assert (=> b!2944025 m!3326853))

(declare-fun m!3326855 () Bool)

(assert (=> b!2944025 m!3326855))

(declare-fun m!3326857 () Bool)

(assert (=> b!2944025 m!3326857))

(declare-fun m!3326859 () Bool)

(assert (=> b!2944025 m!3326859))

(declare-fun m!3326861 () Bool)

(assert (=> b!2944026 m!3326861))

(declare-fun m!3326863 () Bool)

(assert (=> b!2944018 m!3326863))

(declare-fun m!3326865 () Bool)

(assert (=> b!2944016 m!3326865))

(declare-fun m!3326867 () Bool)

(assert (=> b!2944023 m!3326867))

(declare-fun m!3326869 () Bool)

(assert (=> b!2944023 m!3326869))

(declare-fun m!3326871 () Bool)

(assert (=> b!2944023 m!3326871))

(check-sat (not b!2944024) (not b!2944016) (not b!2944023) (not b!2944020) (not b!2944031) (not start!285792) (not b!2944029) tp_is_empty!15801 (not b!2944017) (not b!2944027) (not b!2944021) (not b!2944025) (not b!2944018) (not b!2944022) (not b!2944019) (not b!2944026) (not b!2944028) (not b!2944030))
(check-sat)
