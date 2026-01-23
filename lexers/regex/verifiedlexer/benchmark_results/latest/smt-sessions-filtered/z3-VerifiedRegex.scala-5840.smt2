; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287160 () Bool)

(assert start!287160)

(declare-fun b!2966297 () Bool)

(declare-fun e!1866756 () Bool)

(declare-fun e!1866757 () Bool)

(assert (=> b!2966297 (= e!1866756 e!1866757)))

(declare-fun res!1223523 () Bool)

(assert (=> b!2966297 (=> res!1223523 e!1866757)))

(declare-datatypes ((C!18648 0))(
  ( (C!18649 (val!11360 Int)) )
))
(declare-datatypes ((Regex!9231 0))(
  ( (ElementMatch!9231 (c!486459 C!18648)) (Concat!14552 (regOne!18974 Regex!9231) (regTwo!18974 Regex!9231)) (EmptyExpr!9231) (Star!9231 (reg!9560 Regex!9231)) (EmptyLang!9231) (Union!9231 (regOne!18975 Regex!9231) (regTwo!18975 Regex!9231)) )
))
(declare-fun lt!1035247 () Regex!9231)

(declare-fun isEmptyLang!347 (Regex!9231) Bool)

(assert (=> b!2966297 (= res!1223523 (isEmptyLang!347 lt!1035247))))

(declare-fun lt!1035246 () Regex!9231)

(declare-fun r!17423 () Regex!9231)

(declare-fun simplify!234 (Regex!9231) Regex!9231)

(assert (=> b!2966297 (= lt!1035246 (simplify!234 (regTwo!18975 r!17423)))))

(assert (=> b!2966297 (= lt!1035247 (simplify!234 (regOne!18975 r!17423)))))

(declare-fun b!2966298 () Bool)

(declare-fun e!1866755 () Bool)

(assert (=> b!2966298 (= e!1866755 (not e!1866756))))

(declare-fun res!1223519 () Bool)

(assert (=> b!2966298 (=> res!1223519 e!1866756)))

(declare-fun lt!1035250 () Bool)

(get-info :version)

(assert (=> b!2966298 (= res!1223519 (or lt!1035250 ((_ is Concat!14552) r!17423) (not ((_ is Union!9231) r!17423))))))

(declare-datatypes ((List!35096 0))(
  ( (Nil!34972) (Cons!34972 (h!40392 C!18648) (t!234161 List!35096)) )
))
(declare-fun s!11993 () List!35096)

(declare-fun matchRSpec!1368 (Regex!9231 List!35096) Bool)

(assert (=> b!2966298 (= lt!1035250 (matchRSpec!1368 r!17423 s!11993))))

(declare-fun matchR!4113 (Regex!9231 List!35096) Bool)

(assert (=> b!2966298 (= lt!1035250 (matchR!4113 r!17423 s!11993))))

(declare-datatypes ((Unit!48841 0))(
  ( (Unit!48842) )
))
(declare-fun lt!1035249 () Unit!48841)

(declare-fun mainMatchTheorem!1368 (Regex!9231 List!35096) Unit!48841)

(assert (=> b!2966298 (= lt!1035249 (mainMatchTheorem!1368 r!17423 s!11993))))

(declare-fun b!2966299 () Bool)

(declare-fun e!1866759 () Bool)

(declare-fun tp_is_empty!16025 () Bool)

(assert (=> b!2966299 (= e!1866759 tp_is_empty!16025)))

(declare-fun b!2966300 () Bool)

(declare-fun e!1866758 () Bool)

(declare-fun tp!946188 () Bool)

(assert (=> b!2966300 (= e!1866758 (and tp_is_empty!16025 tp!946188))))

(declare-fun b!2966301 () Bool)

(declare-fun res!1223520 () Bool)

(assert (=> b!2966301 (=> res!1223520 e!1866757)))

(assert (=> b!2966301 (= res!1223520 (not (matchR!4113 (Union!9231 lt!1035247 lt!1035246) s!11993)))))

(declare-fun b!2966302 () Bool)

(declare-fun tp!946190 () Bool)

(declare-fun tp!946191 () Bool)

(assert (=> b!2966302 (= e!1866759 (and tp!946190 tp!946191))))

(declare-fun b!2966303 () Bool)

(declare-fun e!1866754 () Bool)

(assert (=> b!2966303 (= e!1866754 (matchR!4113 lt!1035246 s!11993))))

(declare-fun res!1223524 () Bool)

(assert (=> start!287160 (=> (not res!1223524) (not e!1866755))))

(declare-fun validRegex!3964 (Regex!9231) Bool)

(assert (=> start!287160 (= res!1223524 (validRegex!3964 r!17423))))

(assert (=> start!287160 e!1866755))

(assert (=> start!287160 e!1866759))

(assert (=> start!287160 e!1866758))

(declare-fun b!2966304 () Bool)

(declare-fun res!1223522 () Bool)

(assert (=> b!2966304 (=> res!1223522 e!1866757)))

(assert (=> b!2966304 (= res!1223522 (isEmptyLang!347 lt!1035246))))

(declare-fun b!2966305 () Bool)

(declare-fun tp!946189 () Bool)

(declare-fun tp!946192 () Bool)

(assert (=> b!2966305 (= e!1866759 (and tp!946189 tp!946192))))

(declare-fun b!2966306 () Bool)

(declare-fun tp!946193 () Bool)

(assert (=> b!2966306 (= e!1866759 tp!946193)))

(declare-fun b!2966307 () Bool)

(assert (=> b!2966307 (= e!1866757 true)))

(assert (=> b!2966307 e!1866754))

(declare-fun res!1223521 () Bool)

(assert (=> b!2966307 (=> res!1223521 e!1866754)))

(assert (=> b!2966307 (= res!1223521 (matchR!4113 lt!1035247 s!11993))))

(declare-fun lt!1035248 () Unit!48841)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!280 (Regex!9231 Regex!9231 List!35096) Unit!48841)

(assert (=> b!2966307 (= lt!1035248 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!280 lt!1035247 lt!1035246 s!11993))))

(assert (= (and start!287160 res!1223524) b!2966298))

(assert (= (and b!2966298 (not res!1223519)) b!2966297))

(assert (= (and b!2966297 (not res!1223523)) b!2966304))

(assert (= (and b!2966304 (not res!1223522)) b!2966301))

(assert (= (and b!2966301 (not res!1223520)) b!2966307))

(assert (= (and b!2966307 (not res!1223521)) b!2966303))

(assert (= (and start!287160 ((_ is ElementMatch!9231) r!17423)) b!2966299))

(assert (= (and start!287160 ((_ is Concat!14552) r!17423)) b!2966305))

(assert (= (and start!287160 ((_ is Star!9231) r!17423)) b!2966306))

(assert (= (and start!287160 ((_ is Union!9231) r!17423)) b!2966302))

(assert (= (and start!287160 ((_ is Cons!34972) s!11993)) b!2966300))

(declare-fun m!3336467 () Bool)

(assert (=> b!2966298 m!3336467))

(declare-fun m!3336469 () Bool)

(assert (=> b!2966298 m!3336469))

(declare-fun m!3336471 () Bool)

(assert (=> b!2966298 m!3336471))

(declare-fun m!3336473 () Bool)

(assert (=> b!2966304 m!3336473))

(declare-fun m!3336475 () Bool)

(assert (=> b!2966303 m!3336475))

(declare-fun m!3336477 () Bool)

(assert (=> b!2966297 m!3336477))

(declare-fun m!3336479 () Bool)

(assert (=> b!2966297 m!3336479))

(declare-fun m!3336481 () Bool)

(assert (=> b!2966297 m!3336481))

(declare-fun m!3336483 () Bool)

(assert (=> start!287160 m!3336483))

(declare-fun m!3336485 () Bool)

(assert (=> b!2966307 m!3336485))

(declare-fun m!3336487 () Bool)

(assert (=> b!2966307 m!3336487))

(declare-fun m!3336489 () Bool)

(assert (=> b!2966301 m!3336489))

(check-sat (not b!2966301) (not b!2966302) tp_is_empty!16025 (not b!2966297) (not b!2966304) (not b!2966305) (not b!2966306) (not b!2966300) (not start!287160) (not b!2966298) (not b!2966307) (not b!2966303))
(check-sat)
