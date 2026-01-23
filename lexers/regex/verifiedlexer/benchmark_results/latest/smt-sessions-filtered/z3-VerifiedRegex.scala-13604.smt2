; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731056 () Bool)

(assert start!731056)

(declare-fun b!7569578 () Bool)

(declare-fun e!4506624 () Bool)

(declare-fun tp!2205101 () Bool)

(declare-fun tp!2205097 () Bool)

(assert (=> b!7569578 (= e!4506624 (and tp!2205101 tp!2205097))))

(declare-fun b!7569579 () Bool)

(declare-fun e!4506627 () Bool)

(declare-fun e!4506625 () Bool)

(assert (=> b!7569579 (= e!4506627 (not e!4506625))))

(declare-fun res!3032442 () Bool)

(assert (=> b!7569579 (=> res!3032442 e!4506625)))

(declare-datatypes ((C!40332 0))(
  ( (C!40333 (val!30606 Int)) )
))
(declare-datatypes ((Regex!20003 0))(
  ( (ElementMatch!20003 (c!1396698 C!40332)) (Concat!28848 (regOne!40518 Regex!20003) (regTwo!40518 Regex!20003)) (EmptyExpr!20003) (Star!20003 (reg!20332 Regex!20003)) (EmptyLang!20003) (Union!20003 (regOne!40519 Regex!20003) (regTwo!40519 Regex!20003)) )
))
(declare-fun r!24129 () Regex!20003)

(declare-datatypes ((List!72886 0))(
  ( (Nil!72762) (Cons!72762 (h!79210 C!40332) (t!387621 List!72886)) )
))
(declare-fun matchR!9603 (Regex!20003 List!72886) Bool)

(assert (=> b!7569579 (= res!3032442 (not (matchR!9603 r!24129 Nil!72762)))))

(declare-fun lt!2651024 () Regex!20003)

(assert (=> b!7569579 (matchR!9603 lt!2651024 Nil!72762)))

(declare-datatypes ((Unit!166958 0))(
  ( (Unit!166959) )
))
(declare-fun lt!2651025 () Unit!166958)

(declare-fun baseR!100 () Regex!20003)

(declare-fun testedP!418 () List!72886)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!272 (Regex!20003 List!72886) Unit!166958)

(assert (=> b!7569579 (= lt!2651025 (lemmaMatchRIsSameAsWholeDerivativeAndNil!272 baseR!100 testedP!418))))

(declare-fun b!7569581 () Bool)

(declare-fun e!4506629 () Bool)

(declare-fun tp!2205093 () Bool)

(assert (=> b!7569581 (= e!4506629 tp!2205093)))

(declare-fun b!7569582 () Bool)

(declare-fun res!3032435 () Bool)

(declare-fun e!4506623 () Bool)

(assert (=> b!7569582 (=> (not res!3032435) (not e!4506623))))

(assert (=> b!7569582 (= res!3032435 (matchR!9603 baseR!100 testedP!418))))

(declare-fun b!7569583 () Bool)

(declare-fun e!4506626 () Bool)

(declare-fun tp_is_empty!50361 () Bool)

(declare-fun tp!2205098 () Bool)

(assert (=> b!7569583 (= e!4506626 (and tp_is_empty!50361 tp!2205098))))

(declare-fun b!7569584 () Bool)

(assert (=> b!7569584 (= e!4506623 e!4506627)))

(declare-fun res!3032440 () Bool)

(assert (=> b!7569584 (=> (not res!3032440) (not e!4506627))))

(assert (=> b!7569584 (= res!3032440 (= lt!2651024 r!24129))))

(declare-fun derivative!529 (Regex!20003 List!72886) Regex!20003)

(assert (=> b!7569584 (= lt!2651024 (derivative!529 baseR!100 testedP!418))))

(declare-fun b!7569585 () Bool)

(declare-fun res!3032438 () Bool)

(assert (=> b!7569585 (=> res!3032438 e!4506625)))

(declare-fun lostCause!1783 (Regex!20003) Bool)

(assert (=> b!7569585 (= res!3032438 (lostCause!1783 r!24129))))

(declare-fun b!7569586 () Bool)

(declare-fun tp!2205092 () Bool)

(assert (=> b!7569586 (= e!4506624 tp!2205092)))

(declare-fun b!7569587 () Bool)

(declare-fun tp!2205096 () Bool)

(declare-fun tp!2205090 () Bool)

(assert (=> b!7569587 (= e!4506629 (and tp!2205096 tp!2205090))))

(declare-fun res!3032441 () Bool)

(assert (=> start!731056 (=> (not res!3032441) (not e!4506623))))

(declare-fun validRegex!10431 (Regex!20003) Bool)

(assert (=> start!731056 (= res!3032441 (validRegex!10431 baseR!100))))

(assert (=> start!731056 e!4506623))

(assert (=> start!731056 e!4506624))

(assert (=> start!731056 e!4506629))

(assert (=> start!731056 e!4506626))

(declare-fun e!4506628 () Bool)

(assert (=> start!731056 e!4506628))

(declare-fun b!7569580 () Bool)

(declare-fun tp!2205094 () Bool)

(assert (=> b!7569580 (= e!4506628 (and tp_is_empty!50361 tp!2205094))))

(declare-fun b!7569588 () Bool)

(declare-fun res!3032436 () Bool)

(assert (=> b!7569588 (=> res!3032436 e!4506625)))

(declare-fun nullable!8729 (Regex!20003) Bool)

(assert (=> b!7569588 (= res!3032436 (not (nullable!8729 r!24129)))))

(declare-fun b!7569589 () Bool)

(assert (=> b!7569589 (= e!4506625 true)))

(declare-fun lt!2651028 () Int)

(declare-fun input!7855 () List!72886)

(declare-fun size!42487 (List!72886) Int)

(assert (=> b!7569589 (= lt!2651028 (size!42487 input!7855))))

(declare-fun lt!2651027 () List!72886)

(declare-fun getSuffix!3671 (List!72886 List!72886) List!72886)

(assert (=> b!7569589 (= lt!2651027 (getSuffix!3671 input!7855 testedP!418))))

(declare-fun lt!2651026 () Int)

(assert (=> b!7569589 (= lt!2651026 (size!42487 testedP!418))))

(declare-fun b!7569590 () Bool)

(declare-fun tp!2205091 () Bool)

(declare-fun tp!2205095 () Bool)

(assert (=> b!7569590 (= e!4506624 (and tp!2205091 tp!2205095))))

(declare-fun b!7569591 () Bool)

(declare-fun res!3032439 () Bool)

(assert (=> b!7569591 (=> (not res!3032439) (not e!4506623))))

(assert (=> b!7569591 (= res!3032439 (validRegex!10431 r!24129))))

(declare-fun b!7569592 () Bool)

(assert (=> b!7569592 (= e!4506629 tp_is_empty!50361)))

(declare-fun b!7569593 () Bool)

(declare-fun tp!2205099 () Bool)

(declare-fun tp!2205100 () Bool)

(assert (=> b!7569593 (= e!4506629 (and tp!2205099 tp!2205100))))

(declare-fun b!7569594 () Bool)

(declare-fun res!3032437 () Bool)

(assert (=> b!7569594 (=> (not res!3032437) (not e!4506623))))

(declare-fun isPrefix!6209 (List!72886 List!72886) Bool)

(assert (=> b!7569594 (= res!3032437 (isPrefix!6209 testedP!418 input!7855))))

(declare-fun b!7569595 () Bool)

(assert (=> b!7569595 (= e!4506624 tp_is_empty!50361)))

(assert (= (and start!731056 res!3032441) b!7569591))

(assert (= (and b!7569591 res!3032439) b!7569594))

(assert (= (and b!7569594 res!3032437) b!7569582))

(assert (= (and b!7569582 res!3032435) b!7569584))

(assert (= (and b!7569584 res!3032440) b!7569579))

(assert (= (and b!7569579 (not res!3032442)) b!7569588))

(assert (= (and b!7569588 (not res!3032436)) b!7569585))

(assert (= (and b!7569585 (not res!3032438)) b!7569589))

(get-info :version)

(assert (= (and start!731056 ((_ is ElementMatch!20003) baseR!100)) b!7569595))

(assert (= (and start!731056 ((_ is Concat!28848) baseR!100)) b!7569578))

(assert (= (and start!731056 ((_ is Star!20003) baseR!100)) b!7569586))

(assert (= (and start!731056 ((_ is Union!20003) baseR!100)) b!7569590))

(assert (= (and start!731056 ((_ is ElementMatch!20003) r!24129)) b!7569592))

(assert (= (and start!731056 ((_ is Concat!28848) r!24129)) b!7569587))

(assert (= (and start!731056 ((_ is Star!20003) r!24129)) b!7569581))

(assert (= (and start!731056 ((_ is Union!20003) r!24129)) b!7569593))

(assert (= (and start!731056 ((_ is Cons!72762) testedP!418)) b!7569583))

(assert (= (and start!731056 ((_ is Cons!72762) input!7855)) b!7569580))

(declare-fun m!8131316 () Bool)

(assert (=> start!731056 m!8131316))

(declare-fun m!8131318 () Bool)

(assert (=> b!7569591 m!8131318))

(declare-fun m!8131320 () Bool)

(assert (=> b!7569582 m!8131320))

(declare-fun m!8131322 () Bool)

(assert (=> b!7569594 m!8131322))

(declare-fun m!8131324 () Bool)

(assert (=> b!7569588 m!8131324))

(declare-fun m!8131326 () Bool)

(assert (=> b!7569579 m!8131326))

(declare-fun m!8131328 () Bool)

(assert (=> b!7569579 m!8131328))

(declare-fun m!8131330 () Bool)

(assert (=> b!7569579 m!8131330))

(declare-fun m!8131332 () Bool)

(assert (=> b!7569585 m!8131332))

(declare-fun m!8131334 () Bool)

(assert (=> b!7569589 m!8131334))

(declare-fun m!8131336 () Bool)

(assert (=> b!7569589 m!8131336))

(declare-fun m!8131338 () Bool)

(assert (=> b!7569589 m!8131338))

(declare-fun m!8131340 () Bool)

(assert (=> b!7569584 m!8131340))

(check-sat (not b!7569581) (not b!7569587) (not b!7569578) (not b!7569585) (not b!7569593) (not b!7569588) tp_is_empty!50361 (not b!7569584) (not b!7569582) (not b!7569594) (not b!7569579) (not b!7569580) (not b!7569586) (not b!7569591) (not start!731056) (not b!7569590) (not b!7569583) (not b!7569589))
(check-sat)
