; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288756 () Bool)

(assert start!288756)

(declare-fun b!2989753 () Bool)

(assert (=> b!2989753 true))

(assert (=> b!2989753 true))

(assert (=> b!2989753 true))

(declare-fun lambda!111760 () Int)

(declare-fun lambda!111759 () Int)

(assert (=> b!2989753 (not (= lambda!111760 lambda!111759))))

(assert (=> b!2989753 true))

(assert (=> b!2989753 true))

(assert (=> b!2989753 true))

(declare-fun b!2989749 () Bool)

(declare-fun e!1879469 () Bool)

(declare-fun e!1879470 () Bool)

(assert (=> b!2989749 (= e!1879469 e!1879470)))

(declare-fun res!1233182 () Bool)

(assert (=> b!2989749 (=> res!1233182 e!1879470)))

(declare-fun lt!1040188 () Int)

(declare-fun lt!1040195 () Int)

(assert (=> b!2989749 (= res!1233182 (not (= lt!1040188 lt!1040195)))))

(declare-datatypes ((C!18876 0))(
  ( (C!18877 (val!11474 Int)) )
))
(declare-datatypes ((List!35210 0))(
  ( (Nil!35086) (Cons!35086 (h!40506 C!18876) (t!234275 List!35210)) )
))
(declare-fun s!11993 () List!35210)

(declare-fun size!26495 (List!35210) Int)

(assert (=> b!2989749 (= lt!1040195 (size!26495 s!11993))))

(declare-datatypes ((tuple2!34008 0))(
  ( (tuple2!34009 (_1!20136 List!35210) (_2!20136 List!35210)) )
))
(declare-fun lt!1040185 () tuple2!34008)

(assert (=> b!2989749 (= lt!1040188 (size!26495 (_2!20136 lt!1040185)))))

(declare-datatypes ((Regex!9345 0))(
  ( (ElementMatch!9345 (c!491291 C!18876)) (Concat!14666 (regOne!19202 Regex!9345) (regTwo!19202 Regex!9345)) (EmptyExpr!9345) (Star!9345 (reg!9674 Regex!9345)) (EmptyLang!9345) (Union!9345 (regOne!19203 Regex!9345) (regTwo!19203 Regex!9345)) )
))
(declare-fun r!17423 () Regex!9345)

(declare-fun matchR!4227 (Regex!9345 List!35210) Bool)

(declare-fun simplify!336 (Regex!9345) Regex!9345)

(assert (=> b!2989749 (matchR!4227 (simplify!336 (reg!9674 r!17423)) (_1!20136 lt!1040185))))

(declare-datatypes ((Unit!49093 0))(
  ( (Unit!49094) )
))
(declare-fun lt!1040196 () Unit!49093)

(declare-fun lemmaSimplifySound!194 (Regex!9345 List!35210) Unit!49093)

(assert (=> b!2989749 (= lt!1040196 (lemmaSimplifySound!194 (reg!9674 r!17423) (_1!20136 lt!1040185)))))

(declare-fun b!2989750 () Bool)

(declare-fun e!1879473 () Bool)

(declare-fun tp!950749 () Bool)

(assert (=> b!2989750 (= e!1879473 tp!950749)))

(declare-fun res!1233175 () Bool)

(declare-fun e!1879472 () Bool)

(assert (=> start!288756 (=> (not res!1233175) (not e!1879472))))

(declare-fun validRegex!4078 (Regex!9345) Bool)

(assert (=> start!288756 (= res!1233175 (validRegex!4078 r!17423))))

(assert (=> start!288756 e!1879472))

(assert (=> start!288756 e!1879473))

(declare-fun e!1879474 () Bool)

(assert (=> start!288756 e!1879474))

(declare-fun b!2989751 () Bool)

(declare-fun res!1233180 () Bool)

(declare-fun e!1879475 () Bool)

(assert (=> b!2989751 (=> res!1233180 e!1879475)))

(declare-fun isEmpty!19354 (List!35210) Bool)

(assert (=> b!2989751 (= res!1233180 (isEmpty!19354 s!11993))))

(declare-fun b!2989752 () Bool)

(declare-fun tp!950748 () Bool)

(declare-fun tp!950750 () Bool)

(assert (=> b!2989752 (= e!1879473 (and tp!950748 tp!950750))))

(declare-fun e!1879471 () Bool)

(assert (=> b!2989753 (= e!1879475 e!1879471)))

(declare-fun res!1233181 () Bool)

(assert (=> b!2989753 (=> res!1233181 e!1879471)))

(declare-fun lt!1040186 () Bool)

(assert (=> b!2989753 (= res!1233181 (not lt!1040186))))

(declare-fun Exists!1618 (Int) Bool)

(assert (=> b!2989753 (= (Exists!1618 lambda!111759) (Exists!1618 lambda!111760))))

(declare-fun lt!1040191 () Unit!49093)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!294 (Regex!9345 List!35210) Unit!49093)

(assert (=> b!2989753 (= lt!1040191 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!294 (reg!9674 r!17423) s!11993))))

(assert (=> b!2989753 (= lt!1040186 (Exists!1618 lambda!111759))))

(declare-datatypes ((Option!6736 0))(
  ( (None!6735) (Some!6735 (v!34869 tuple2!34008)) )
))
(declare-fun lt!1040190 () Option!6736)

(declare-fun isDefined!5287 (Option!6736) Bool)

(assert (=> b!2989753 (= lt!1040186 (isDefined!5287 lt!1040190))))

(declare-fun lt!1040192 () Regex!9345)

(declare-fun findConcatSeparation!1130 (Regex!9345 Regex!9345 List!35210 List!35210 List!35210) Option!6736)

(assert (=> b!2989753 (= lt!1040190 (findConcatSeparation!1130 (reg!9674 r!17423) lt!1040192 Nil!35086 s!11993 s!11993))))

(declare-fun lt!1040194 () Unit!49093)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!908 (Regex!9345 Regex!9345 List!35210) Unit!49093)

(assert (=> b!2989753 (= lt!1040194 (lemmaFindConcatSeparationEquivalentToExists!908 (reg!9674 r!17423) lt!1040192 s!11993))))

(assert (=> b!2989753 (= lt!1040192 (Star!9345 (reg!9674 r!17423)))))

(declare-fun b!2989754 () Bool)

(declare-fun res!1233179 () Bool)

(assert (=> b!2989754 (=> res!1233179 e!1879469)))

(assert (=> b!2989754 (= res!1233179 (not (matchR!4227 lt!1040192 (_2!20136 lt!1040185))))))

(declare-fun b!2989755 () Bool)

(assert (=> b!2989755 (= e!1879471 e!1879469)))

(declare-fun res!1233177 () Bool)

(assert (=> b!2989755 (=> res!1233177 e!1879469)))

(assert (=> b!2989755 (= res!1233177 (not (matchR!4227 (reg!9674 r!17423) (_1!20136 lt!1040185))))))

(declare-fun get!10876 (Option!6736) tuple2!34008)

(assert (=> b!2989755 (= lt!1040185 (get!10876 lt!1040190))))

(declare-fun b!2989756 () Bool)

(declare-fun tp_is_empty!16253 () Bool)

(assert (=> b!2989756 (= e!1879473 tp_is_empty!16253)))

(declare-fun b!2989757 () Bool)

(declare-fun tp!950753 () Bool)

(assert (=> b!2989757 (= e!1879474 (and tp_is_empty!16253 tp!950753))))

(declare-fun b!2989758 () Bool)

(declare-fun res!1233176 () Bool)

(assert (=> b!2989758 (=> res!1233176 e!1879470)))

(declare-fun ++!8389 (List!35210 List!35210) List!35210)

(assert (=> b!2989758 (= res!1233176 (not (= (++!8389 (_1!20136 lt!1040185) (_2!20136 lt!1040185)) s!11993)))))

(declare-fun b!2989759 () Bool)

(declare-fun lt!1040193 () Int)

(assert (=> b!2989759 (= e!1879470 (or (not (= (+ lt!1040193 lt!1040188) lt!1040195)) (= lt!1040193 0)))))

(assert (=> b!2989759 (= lt!1040193 (size!26495 (_1!20136 lt!1040185)))))

(declare-fun b!2989760 () Bool)

(declare-fun tp!950751 () Bool)

(declare-fun tp!950752 () Bool)

(assert (=> b!2989760 (= e!1879473 (and tp!950751 tp!950752))))

(declare-fun b!2989761 () Bool)

(assert (=> b!2989761 (= e!1879472 (not e!1879475))))

(declare-fun res!1233178 () Bool)

(assert (=> b!2989761 (=> res!1233178 e!1879475)))

(declare-fun lt!1040189 () Bool)

(get-info :version)

(assert (=> b!2989761 (= res!1233178 (or (not lt!1040189) ((_ is Concat!14666) r!17423) ((_ is Union!9345) r!17423) (not ((_ is Star!9345) r!17423))))))

(declare-fun matchRSpec!1482 (Regex!9345 List!35210) Bool)

(assert (=> b!2989761 (= lt!1040189 (matchRSpec!1482 r!17423 s!11993))))

(assert (=> b!2989761 (= lt!1040189 (matchR!4227 r!17423 s!11993))))

(declare-fun lt!1040187 () Unit!49093)

(declare-fun mainMatchTheorem!1482 (Regex!9345 List!35210) Unit!49093)

(assert (=> b!2989761 (= lt!1040187 (mainMatchTheorem!1482 r!17423 s!11993))))

(assert (= (and start!288756 res!1233175) b!2989761))

(assert (= (and b!2989761 (not res!1233178)) b!2989751))

(assert (= (and b!2989751 (not res!1233180)) b!2989753))

(assert (= (and b!2989753 (not res!1233181)) b!2989755))

(assert (= (and b!2989755 (not res!1233177)) b!2989754))

(assert (= (and b!2989754 (not res!1233179)) b!2989749))

(assert (= (and b!2989749 (not res!1233182)) b!2989758))

(assert (= (and b!2989758 (not res!1233176)) b!2989759))

(assert (= (and start!288756 ((_ is ElementMatch!9345) r!17423)) b!2989756))

(assert (= (and start!288756 ((_ is Concat!14666) r!17423)) b!2989760))

(assert (= (and start!288756 ((_ is Star!9345) r!17423)) b!2989750))

(assert (= (and start!288756 ((_ is Union!9345) r!17423)) b!2989752))

(assert (= (and start!288756 ((_ is Cons!35086) s!11993)) b!2989757))

(declare-fun m!3346515 () Bool)

(assert (=> b!2989751 m!3346515))

(declare-fun m!3346517 () Bool)

(assert (=> b!2989753 m!3346517))

(declare-fun m!3346519 () Bool)

(assert (=> b!2989753 m!3346519))

(declare-fun m!3346521 () Bool)

(assert (=> b!2989753 m!3346521))

(declare-fun m!3346523 () Bool)

(assert (=> b!2989753 m!3346523))

(declare-fun m!3346525 () Bool)

(assert (=> b!2989753 m!3346525))

(assert (=> b!2989753 m!3346525))

(declare-fun m!3346527 () Bool)

(assert (=> b!2989753 m!3346527))

(declare-fun m!3346529 () Bool)

(assert (=> b!2989758 m!3346529))

(declare-fun m!3346531 () Bool)

(assert (=> b!2989754 m!3346531))

(declare-fun m!3346533 () Bool)

(assert (=> b!2989755 m!3346533))

(declare-fun m!3346535 () Bool)

(assert (=> b!2989755 m!3346535))

(declare-fun m!3346537 () Bool)

(assert (=> b!2989749 m!3346537))

(declare-fun m!3346539 () Bool)

(assert (=> b!2989749 m!3346539))

(declare-fun m!3346541 () Bool)

(assert (=> b!2989749 m!3346541))

(declare-fun m!3346543 () Bool)

(assert (=> b!2989749 m!3346543))

(declare-fun m!3346545 () Bool)

(assert (=> b!2989749 m!3346545))

(assert (=> b!2989749 m!3346539))

(declare-fun m!3346547 () Bool)

(assert (=> b!2989761 m!3346547))

(declare-fun m!3346549 () Bool)

(assert (=> b!2989761 m!3346549))

(declare-fun m!3346551 () Bool)

(assert (=> b!2989761 m!3346551))

(declare-fun m!3346553 () Bool)

(assert (=> b!2989759 m!3346553))

(declare-fun m!3346555 () Bool)

(assert (=> start!288756 m!3346555))

(check-sat tp_is_empty!16253 (not b!2989757) (not start!288756) (not b!2989749) (not b!2989751) (not b!2989755) (not b!2989758) (not b!2989752) (not b!2989759) (not b!2989761) (not b!2989760) (not b!2989750) (not b!2989753) (not b!2989754))
(check-sat)
