; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731588 () Bool)

(assert start!731588)

(declare-fun b!7576567 () Bool)

(declare-fun e!4509987 () Bool)

(declare-fun tp_is_empty!50477 () Bool)

(declare-fun tp!2207743 () Bool)

(assert (=> b!7576567 (= e!4509987 (and tp_is_empty!50477 tp!2207743))))

(declare-fun b!7576568 () Bool)

(declare-fun e!4509989 () Bool)

(assert (=> b!7576568 (= e!4509989 true)))

(declare-datatypes ((C!40448 0))(
  ( (C!40449 (val!30664 Int)) )
))
(declare-datatypes ((Regex!20061 0))(
  ( (ElementMatch!20061 (c!1397594 C!40448)) (Concat!28906 (regOne!40634 Regex!20061) (regTwo!40634 Regex!20061)) (EmptyExpr!20061) (Star!20061 (reg!20390 Regex!20061)) (EmptyLang!20061) (Union!20061 (regOne!40635 Regex!20061) (regTwo!40635 Regex!20061)) )
))
(declare-fun r!22341 () Regex!20061)

(declare-datatypes ((List!72944 0))(
  ( (Nil!72820) (Cons!72820 (h!79268 C!40448) (t!387679 List!72944)) )
))
(declare-fun s!13436 () List!72944)

(declare-fun matchR!9655 (Regex!20061 List!72944) Bool)

(assert (=> b!7576568 (not (matchR!9655 (regTwo!40635 r!22341) s!13436))))

(declare-datatypes ((Unit!167080 0))(
  ( (Unit!167081) )
))
(declare-fun lt!2652234 () Unit!167080)

(declare-fun lemmaLostCauseCannotMatch!79 (Regex!20061 List!72944) Unit!167080)

(assert (=> b!7576568 (= lt!2652234 (lemmaLostCauseCannotMatch!79 (regTwo!40635 r!22341) s!13436))))

(assert (=> b!7576568 (not (matchR!9655 (regOne!40635 r!22341) s!13436))))

(declare-fun lt!2652236 () Unit!167080)

(assert (=> b!7576568 (= lt!2652236 (lemmaLostCauseCannotMatch!79 (regOne!40635 r!22341) s!13436))))

(declare-fun b!7576569 () Bool)

(declare-fun e!4509988 () Bool)

(assert (=> b!7576569 (= e!4509988 (not e!4509989))))

(declare-fun res!3035397 () Bool)

(assert (=> b!7576569 (=> res!3035397 e!4509989)))

(get-info :version)

(assert (=> b!7576569 (= res!3035397 (or ((_ is EmptyLang!20061) r!22341) ((_ is EmptyExpr!20061) r!22341) ((_ is ElementMatch!20061) r!22341) (not ((_ is Union!20061) r!22341))))))

(declare-fun matchRSpec!4378 (Regex!20061 List!72944) Bool)

(assert (=> b!7576569 (= (matchR!9655 r!22341 s!13436) (matchRSpec!4378 r!22341 s!13436))))

(declare-fun lt!2652235 () Unit!167080)

(declare-fun mainMatchTheorem!4372 (Regex!20061 List!72944) Unit!167080)

(assert (=> b!7576569 (= lt!2652235 (mainMatchTheorem!4372 r!22341 s!13436))))

(declare-fun b!7576570 () Bool)

(declare-fun res!3035399 () Bool)

(assert (=> b!7576570 (=> (not res!3035399) (not e!4509988))))

(declare-fun isEmpty!41487 (List!72944) Bool)

(assert (=> b!7576570 (= res!3035399 (not (isEmpty!41487 s!13436)))))

(declare-fun b!7576571 () Bool)

(declare-fun e!4509986 () Bool)

(declare-fun tp!2207740 () Bool)

(assert (=> b!7576571 (= e!4509986 tp!2207740)))

(declare-fun b!7576572 () Bool)

(declare-fun res!3035400 () Bool)

(assert (=> b!7576572 (=> (not res!3035400) (not e!4509988))))

(declare-fun lostCause!1837 (Regex!20061) Bool)

(assert (=> b!7576572 (= res!3035400 (lostCause!1837 r!22341))))

(declare-fun b!7576573 () Bool)

(declare-fun tp!2207742 () Bool)

(declare-fun tp!2207741 () Bool)

(assert (=> b!7576573 (= e!4509986 (and tp!2207742 tp!2207741))))

(declare-fun b!7576574 () Bool)

(assert (=> b!7576574 (= e!4509986 tp_is_empty!50477)))

(declare-fun b!7576575 () Bool)

(declare-fun tp!2207744 () Bool)

(declare-fun tp!2207745 () Bool)

(assert (=> b!7576575 (= e!4509986 (and tp!2207744 tp!2207745))))

(declare-fun res!3035398 () Bool)

(assert (=> start!731588 (=> (not res!3035398) (not e!4509988))))

(declare-fun validRegex!10489 (Regex!20061) Bool)

(assert (=> start!731588 (= res!3035398 (validRegex!10489 r!22341))))

(assert (=> start!731588 e!4509988))

(assert (=> start!731588 e!4509986))

(assert (=> start!731588 e!4509987))

(assert (= (and start!731588 res!3035398) b!7576572))

(assert (= (and b!7576572 res!3035400) b!7576570))

(assert (= (and b!7576570 res!3035399) b!7576569))

(assert (= (and b!7576569 (not res!3035397)) b!7576568))

(assert (= (and start!731588 ((_ is ElementMatch!20061) r!22341)) b!7576574))

(assert (= (and start!731588 ((_ is Concat!28906) r!22341)) b!7576575))

(assert (= (and start!731588 ((_ is Star!20061) r!22341)) b!7576571))

(assert (= (and start!731588 ((_ is Union!20061) r!22341)) b!7576573))

(assert (= (and start!731588 ((_ is Cons!72820) s!13436)) b!7576567))

(declare-fun m!8134406 () Bool)

(assert (=> b!7576572 m!8134406))

(declare-fun m!8134408 () Bool)

(assert (=> b!7576568 m!8134408))

(declare-fun m!8134410 () Bool)

(assert (=> b!7576568 m!8134410))

(declare-fun m!8134412 () Bool)

(assert (=> b!7576568 m!8134412))

(declare-fun m!8134414 () Bool)

(assert (=> b!7576568 m!8134414))

(declare-fun m!8134416 () Bool)

(assert (=> b!7576570 m!8134416))

(declare-fun m!8134418 () Bool)

(assert (=> start!731588 m!8134418))

(declare-fun m!8134420 () Bool)

(assert (=> b!7576569 m!8134420))

(declare-fun m!8134422 () Bool)

(assert (=> b!7576569 m!8134422))

(declare-fun m!8134424 () Bool)

(assert (=> b!7576569 m!8134424))

(check-sat tp_is_empty!50477 (not b!7576569) (not b!7576572) (not b!7576568) (not start!731588) (not b!7576570) (not b!7576567) (not b!7576573) (not b!7576575) (not b!7576571))
(check-sat)
