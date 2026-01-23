; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287156 () Bool)

(assert start!287156)

(declare-fun b!2966230 () Bool)

(declare-fun e!1866717 () Bool)

(declare-fun tp!946152 () Bool)

(declare-fun tp!946155 () Bool)

(assert (=> b!2966230 (= e!1866717 (and tp!946152 tp!946155))))

(declare-fun b!2966232 () Bool)

(declare-fun tp!946153 () Bool)

(declare-fun tp!946156 () Bool)

(assert (=> b!2966232 (= e!1866717 (and tp!946153 tp!946156))))

(declare-fun b!2966233 () Bool)

(declare-fun res!1223483 () Bool)

(declare-fun e!1866720 () Bool)

(assert (=> b!2966233 (=> res!1223483 e!1866720)))

(declare-datatypes ((C!18644 0))(
  ( (C!18645 (val!11358 Int)) )
))
(declare-datatypes ((Regex!9229 0))(
  ( (ElementMatch!9229 (c!486457 C!18644)) (Concat!14550 (regOne!18970 Regex!9229) (regTwo!18970 Regex!9229)) (EmptyExpr!9229) (Star!9229 (reg!9558 Regex!9229)) (EmptyLang!9229) (Union!9229 (regOne!18971 Regex!9229) (regTwo!18971 Regex!9229)) )
))
(declare-fun lt!1035215 () Regex!9229)

(declare-datatypes ((List!35094 0))(
  ( (Nil!34970) (Cons!34970 (h!40390 C!18644) (t!234159 List!35094)) )
))
(declare-fun s!11993 () List!35094)

(declare-fun lt!1035220 () Regex!9229)

(declare-fun matchR!4111 (Regex!9229 List!35094) Bool)

(assert (=> b!2966233 (= res!1223483 (not (matchR!4111 (Union!9229 lt!1035215 lt!1035220) s!11993)))))

(declare-fun b!2966234 () Bool)

(declare-fun e!1866722 () Bool)

(assert (=> b!2966234 (= e!1866722 (matchR!4111 lt!1035220 s!11993))))

(declare-fun b!2966235 () Bool)

(declare-fun e!1866718 () Bool)

(declare-fun e!1866721 () Bool)

(assert (=> b!2966235 (= e!1866718 (not e!1866721))))

(declare-fun res!1223487 () Bool)

(assert (=> b!2966235 (=> res!1223487 e!1866721)))

(declare-fun lt!1035217 () Bool)

(declare-fun r!17423 () Regex!9229)

(get-info :version)

(assert (=> b!2966235 (= res!1223487 (or lt!1035217 ((_ is Concat!14550) r!17423) (not ((_ is Union!9229) r!17423))))))

(declare-fun matchRSpec!1366 (Regex!9229 List!35094) Bool)

(assert (=> b!2966235 (= lt!1035217 (matchRSpec!1366 r!17423 s!11993))))

(assert (=> b!2966235 (= lt!1035217 (matchR!4111 r!17423 s!11993))))

(declare-datatypes ((Unit!48837 0))(
  ( (Unit!48838) )
))
(declare-fun lt!1035214 () Unit!48837)

(declare-fun mainMatchTheorem!1366 (Regex!9229 List!35094) Unit!48837)

(assert (=> b!2966235 (= lt!1035214 (mainMatchTheorem!1366 r!17423 s!11993))))

(declare-fun b!2966236 () Bool)

(declare-fun tp!946157 () Bool)

(assert (=> b!2966236 (= e!1866717 tp!946157)))

(declare-fun b!2966237 () Bool)

(declare-fun e!1866719 () Bool)

(assert (=> b!2966237 (= e!1866719 true)))

(assert (=> b!2966237 (matchR!4111 (regOne!18971 r!17423) s!11993)))

(declare-fun lt!1035216 () Unit!48837)

(declare-fun lemmaSimplifySound!148 (Regex!9229 List!35094) Unit!48837)

(assert (=> b!2966237 (= lt!1035216 (lemmaSimplifySound!148 (regOne!18971 r!17423) s!11993))))

(declare-fun b!2966238 () Bool)

(declare-fun res!1223488 () Bool)

(assert (=> b!2966238 (=> res!1223488 e!1866720)))

(declare-fun isEmptyLang!345 (Regex!9229) Bool)

(assert (=> b!2966238 (= res!1223488 (isEmptyLang!345 lt!1035220))))

(declare-fun b!2966239 () Bool)

(declare-fun tp_is_empty!16021 () Bool)

(assert (=> b!2966239 (= e!1866717 tp_is_empty!16021)))

(declare-fun b!2966240 () Bool)

(declare-fun e!1866723 () Bool)

(declare-fun tp!946154 () Bool)

(assert (=> b!2966240 (= e!1866723 (and tp_is_empty!16021 tp!946154))))

(declare-fun b!2966241 () Bool)

(assert (=> b!2966241 (= e!1866721 e!1866720)))

(declare-fun res!1223485 () Bool)

(assert (=> b!2966241 (=> res!1223485 e!1866720)))

(assert (=> b!2966241 (= res!1223485 (isEmptyLang!345 lt!1035215))))

(declare-fun simplify!232 (Regex!9229) Regex!9229)

(assert (=> b!2966241 (= lt!1035220 (simplify!232 (regTwo!18971 r!17423)))))

(assert (=> b!2966241 (= lt!1035215 (simplify!232 (regOne!18971 r!17423)))))

(declare-fun res!1223482 () Bool)

(assert (=> start!287156 (=> (not res!1223482) (not e!1866718))))

(declare-fun validRegex!3962 (Regex!9229) Bool)

(assert (=> start!287156 (= res!1223482 (validRegex!3962 r!17423))))

(assert (=> start!287156 e!1866718))

(assert (=> start!287156 e!1866717))

(assert (=> start!287156 e!1866723))

(declare-fun b!2966231 () Bool)

(assert (=> b!2966231 (= e!1866720 e!1866719)))

(declare-fun res!1223486 () Bool)

(assert (=> b!2966231 (=> res!1223486 e!1866719)))

(declare-fun lt!1035218 () Bool)

(assert (=> b!2966231 (= res!1223486 (not lt!1035218))))

(assert (=> b!2966231 e!1866722))

(declare-fun res!1223484 () Bool)

(assert (=> b!2966231 (=> res!1223484 e!1866722)))

(assert (=> b!2966231 (= res!1223484 lt!1035218)))

(assert (=> b!2966231 (= lt!1035218 (matchR!4111 lt!1035215 s!11993))))

(declare-fun lt!1035219 () Unit!48837)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!278 (Regex!9229 Regex!9229 List!35094) Unit!48837)

(assert (=> b!2966231 (= lt!1035219 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!278 lt!1035215 lt!1035220 s!11993))))

(assert (= (and start!287156 res!1223482) b!2966235))

(assert (= (and b!2966235 (not res!1223487)) b!2966241))

(assert (= (and b!2966241 (not res!1223485)) b!2966238))

(assert (= (and b!2966238 (not res!1223488)) b!2966233))

(assert (= (and b!2966233 (not res!1223483)) b!2966231))

(assert (= (and b!2966231 (not res!1223484)) b!2966234))

(assert (= (and b!2966231 (not res!1223486)) b!2966237))

(assert (= (and start!287156 ((_ is ElementMatch!9229) r!17423)) b!2966239))

(assert (= (and start!287156 ((_ is Concat!14550) r!17423)) b!2966232))

(assert (= (and start!287156 ((_ is Star!9229) r!17423)) b!2966236))

(assert (= (and start!287156 ((_ is Union!9229) r!17423)) b!2966230))

(assert (= (and start!287156 ((_ is Cons!34970) s!11993)) b!2966240))

(declare-fun m!3336415 () Bool)

(assert (=> start!287156 m!3336415))

(declare-fun m!3336417 () Bool)

(assert (=> b!2966233 m!3336417))

(declare-fun m!3336419 () Bool)

(assert (=> b!2966231 m!3336419))

(declare-fun m!3336421 () Bool)

(assert (=> b!2966231 m!3336421))

(declare-fun m!3336423 () Bool)

(assert (=> b!2966238 m!3336423))

(declare-fun m!3336425 () Bool)

(assert (=> b!2966235 m!3336425))

(declare-fun m!3336427 () Bool)

(assert (=> b!2966235 m!3336427))

(declare-fun m!3336429 () Bool)

(assert (=> b!2966235 m!3336429))

(declare-fun m!3336431 () Bool)

(assert (=> b!2966241 m!3336431))

(declare-fun m!3336433 () Bool)

(assert (=> b!2966241 m!3336433))

(declare-fun m!3336435 () Bool)

(assert (=> b!2966241 m!3336435))

(declare-fun m!3336437 () Bool)

(assert (=> b!2966237 m!3336437))

(declare-fun m!3336439 () Bool)

(assert (=> b!2966237 m!3336439))

(declare-fun m!3336441 () Bool)

(assert (=> b!2966234 m!3336441))

(check-sat (not b!2966240) (not b!2966232) (not b!2966231) (not b!2966237) tp_is_empty!16021 (not b!2966233) (not b!2966235) (not b!2966238) (not b!2966234) (not start!287156) (not b!2966241) (not b!2966236) (not b!2966230))
(check-sat)
