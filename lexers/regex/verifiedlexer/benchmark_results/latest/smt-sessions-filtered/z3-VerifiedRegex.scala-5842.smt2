; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287200 () Bool)

(assert start!287200)

(declare-fun b!2967084 () Bool)

(declare-fun e!1867187 () Bool)

(declare-fun tp!946339 () Bool)

(declare-fun tp!946338 () Bool)

(assert (=> b!2967084 (= e!1867187 (and tp!946339 tp!946338))))

(declare-fun b!2967085 () Bool)

(declare-fun tp_is_empty!16033 () Bool)

(assert (=> b!2967085 (= e!1867187 tp_is_empty!16033)))

(declare-fun b!2967086 () Bool)

(declare-fun e!1867191 () Bool)

(declare-fun e!1867185 () Bool)

(assert (=> b!2967086 (= e!1867191 e!1867185)))

(declare-fun res!1223834 () Bool)

(assert (=> b!2967086 (=> res!1223834 e!1867185)))

(declare-datatypes ((C!18656 0))(
  ( (C!18657 (val!11364 Int)) )
))
(declare-datatypes ((Regex!9235 0))(
  ( (ElementMatch!9235 (c!486633 C!18656)) (Concat!14556 (regOne!18982 Regex!9235) (regTwo!18982 Regex!9235)) (EmptyExpr!9235) (Star!9235 (reg!9564 Regex!9235)) (EmptyLang!9235) (Union!9235 (regOne!18983 Regex!9235) (regTwo!18983 Regex!9235)) )
))
(declare-fun lt!1035412 () Regex!9235)

(declare-fun isEmptyLang!351 (Regex!9235) Bool)

(assert (=> b!2967086 (= res!1223834 (isEmptyLang!351 lt!1035412))))

(declare-fun lt!1035408 () Regex!9235)

(declare-fun r!17423 () Regex!9235)

(declare-fun simplify!238 (Regex!9235) Regex!9235)

(assert (=> b!2967086 (= lt!1035408 (simplify!238 (regTwo!18983 r!17423)))))

(assert (=> b!2967086 (= lt!1035412 (simplify!238 (regOne!18983 r!17423)))))

(declare-fun b!2967087 () Bool)

(declare-fun res!1223833 () Bool)

(assert (=> b!2967087 (=> res!1223833 e!1867185)))

(assert (=> b!2967087 (= res!1223833 (isEmptyLang!351 lt!1035408))))

(declare-fun res!1223830 () Bool)

(declare-fun e!1867189 () Bool)

(assert (=> start!287200 (=> (not res!1223830) (not e!1867189))))

(declare-fun validRegex!3968 (Regex!9235) Bool)

(assert (=> start!287200 (= res!1223830 (validRegex!3968 r!17423))))

(assert (=> start!287200 e!1867189))

(assert (=> start!287200 e!1867187))

(declare-fun e!1867186 () Bool)

(assert (=> start!287200 e!1867186))

(declare-fun b!2967088 () Bool)

(declare-fun e!1867190 () Bool)

(assert (=> b!2967088 (= e!1867185 e!1867190)))

(declare-fun res!1223829 () Bool)

(assert (=> b!2967088 (=> res!1223829 e!1867190)))

(declare-fun lt!1035409 () Bool)

(assert (=> b!2967088 (= res!1223829 lt!1035409)))

(declare-fun e!1867188 () Bool)

(assert (=> b!2967088 e!1867188))

(declare-fun res!1223831 () Bool)

(assert (=> b!2967088 (=> res!1223831 e!1867188)))

(assert (=> b!2967088 (= res!1223831 lt!1035409)))

(declare-datatypes ((List!35100 0))(
  ( (Nil!34976) (Cons!34976 (h!40396 C!18656) (t!234165 List!35100)) )
))
(declare-fun s!11993 () List!35100)

(declare-fun matchR!4117 (Regex!9235 List!35100) Bool)

(assert (=> b!2967088 (= lt!1035409 (matchR!4117 lt!1035412 s!11993))))

(declare-datatypes ((Unit!48849 0))(
  ( (Unit!48850) )
))
(declare-fun lt!1035414 () Unit!48849)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!284 (Regex!9235 Regex!9235 List!35100) Unit!48849)

(assert (=> b!2967088 (= lt!1035414 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!284 lt!1035412 lt!1035408 s!11993))))

(declare-fun b!2967089 () Bool)

(assert (=> b!2967089 (= e!1867190 true)))

(assert (=> b!2967089 (= (matchR!4117 (regTwo!18983 r!17423) s!11993) (matchR!4117 lt!1035408 s!11993))))

(declare-fun lt!1035410 () Unit!48849)

(declare-fun lemmaSimplifySound!152 (Regex!9235 List!35100) Unit!48849)

(assert (=> b!2967089 (= lt!1035410 (lemmaSimplifySound!152 (regTwo!18983 r!17423) s!11993))))

(declare-fun b!2967090 () Bool)

(assert (=> b!2967090 (= e!1867188 (matchR!4117 lt!1035408 s!11993))))

(declare-fun b!2967091 () Bool)

(declare-fun tp!946340 () Bool)

(assert (=> b!2967091 (= e!1867186 (and tp_is_empty!16033 tp!946340))))

(declare-fun b!2967092 () Bool)

(declare-fun res!1223832 () Bool)

(assert (=> b!2967092 (=> res!1223832 e!1867185)))

(assert (=> b!2967092 (= res!1223832 (not (matchR!4117 (Union!9235 lt!1035412 lt!1035408) s!11993)))))

(declare-fun b!2967093 () Bool)

(declare-fun tp!946336 () Bool)

(assert (=> b!2967093 (= e!1867187 tp!946336)))

(declare-fun b!2967094 () Bool)

(declare-fun tp!946341 () Bool)

(declare-fun tp!946337 () Bool)

(assert (=> b!2967094 (= e!1867187 (and tp!946341 tp!946337))))

(declare-fun b!2967095 () Bool)

(assert (=> b!2967095 (= e!1867189 (not e!1867191))))

(declare-fun res!1223828 () Bool)

(assert (=> b!2967095 (=> res!1223828 e!1867191)))

(declare-fun lt!1035411 () Bool)

(get-info :version)

(assert (=> b!2967095 (= res!1223828 (or lt!1035411 ((_ is Concat!14556) r!17423) (not ((_ is Union!9235) r!17423))))))

(declare-fun matchRSpec!1372 (Regex!9235 List!35100) Bool)

(assert (=> b!2967095 (= lt!1035411 (matchRSpec!1372 r!17423 s!11993))))

(assert (=> b!2967095 (= lt!1035411 (matchR!4117 r!17423 s!11993))))

(declare-fun lt!1035413 () Unit!48849)

(declare-fun mainMatchTheorem!1372 (Regex!9235 List!35100) Unit!48849)

(assert (=> b!2967095 (= lt!1035413 (mainMatchTheorem!1372 r!17423 s!11993))))

(assert (= (and start!287200 res!1223830) b!2967095))

(assert (= (and b!2967095 (not res!1223828)) b!2967086))

(assert (= (and b!2967086 (not res!1223834)) b!2967087))

(assert (= (and b!2967087 (not res!1223833)) b!2967092))

(assert (= (and b!2967092 (not res!1223832)) b!2967088))

(assert (= (and b!2967088 (not res!1223831)) b!2967090))

(assert (= (and b!2967088 (not res!1223829)) b!2967089))

(assert (= (and start!287200 ((_ is ElementMatch!9235) r!17423)) b!2967085))

(assert (= (and start!287200 ((_ is Concat!14556) r!17423)) b!2967094))

(assert (= (and start!287200 ((_ is Star!9235) r!17423)) b!2967093))

(assert (= (and start!287200 ((_ is Union!9235) r!17423)) b!2967084))

(assert (= (and start!287200 ((_ is Cons!34976) s!11993)) b!2967091))

(declare-fun m!3336791 () Bool)

(assert (=> b!2967088 m!3336791))

(declare-fun m!3336793 () Bool)

(assert (=> b!2967088 m!3336793))

(declare-fun m!3336795 () Bool)

(assert (=> b!2967092 m!3336795))

(declare-fun m!3336797 () Bool)

(assert (=> b!2967090 m!3336797))

(declare-fun m!3336799 () Bool)

(assert (=> start!287200 m!3336799))

(declare-fun m!3336801 () Bool)

(assert (=> b!2967086 m!3336801))

(declare-fun m!3336803 () Bool)

(assert (=> b!2967086 m!3336803))

(declare-fun m!3336805 () Bool)

(assert (=> b!2967086 m!3336805))

(declare-fun m!3336807 () Bool)

(assert (=> b!2967087 m!3336807))

(declare-fun m!3336809 () Bool)

(assert (=> b!2967089 m!3336809))

(assert (=> b!2967089 m!3336797))

(declare-fun m!3336811 () Bool)

(assert (=> b!2967089 m!3336811))

(declare-fun m!3336813 () Bool)

(assert (=> b!2967095 m!3336813))

(declare-fun m!3336815 () Bool)

(assert (=> b!2967095 m!3336815))

(declare-fun m!3336817 () Bool)

(assert (=> b!2967095 m!3336817))

(check-sat (not b!2967094) (not b!2967084) (not b!2967092) (not b!2967095) (not b!2967091) (not b!2967089) (not b!2967088) (not b!2967086) (not b!2967087) (not b!2967090) tp_is_empty!16033 (not start!287200) (not b!2967093))
(check-sat)
