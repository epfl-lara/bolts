; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731004 () Bool)

(assert start!731004)

(declare-fun b!7568671 () Bool)

(declare-fun res!3032063 () Bool)

(declare-fun e!4506225 () Bool)

(assert (=> b!7568671 (=> (not res!3032063) (not e!4506225))))

(declare-datatypes ((C!40312 0))(
  ( (C!40313 (val!30596 Int)) )
))
(declare-datatypes ((Regex!19993 0))(
  ( (ElementMatch!19993 (c!1396628 C!40312)) (Concat!28838 (regOne!40498 Regex!19993) (regTwo!40498 Regex!19993)) (EmptyExpr!19993) (Star!19993 (reg!20322 Regex!19993)) (EmptyLang!19993) (Union!19993 (regOne!40499 Regex!19993) (regTwo!40499 Regex!19993)) )
))
(declare-fun baseR!100 () Regex!19993)

(declare-datatypes ((List!72876 0))(
  ( (Nil!72752) (Cons!72752 (h!79200 C!40312) (t!387611 List!72876)) )
))
(declare-fun testedP!418 () List!72876)

(declare-fun matchR!9593 (Regex!19993 List!72876) Bool)

(assert (=> b!7568671 (= res!3032063 (matchR!9593 baseR!100 testedP!418))))

(declare-fun b!7568672 () Bool)

(declare-fun res!3032062 () Bool)

(assert (=> b!7568672 (=> (not res!3032062) (not e!4506225))))

(declare-fun input!7855 () List!72876)

(declare-fun isPrefix!6199 (List!72876 List!72876) Bool)

(assert (=> b!7568672 (= res!3032062 (isPrefix!6199 testedP!418 input!7855))))

(declare-fun b!7568673 () Bool)

(declare-fun e!4506229 () Bool)

(declare-fun tp!2204606 () Bool)

(declare-fun tp!2204602 () Bool)

(assert (=> b!7568673 (= e!4506229 (and tp!2204606 tp!2204602))))

(declare-fun b!7568674 () Bool)

(declare-fun tp_is_empty!50341 () Bool)

(assert (=> b!7568674 (= e!4506229 tp_is_empty!50341)))

(declare-fun b!7568675 () Bool)

(declare-fun tp!2204610 () Bool)

(declare-fun tp!2204605 () Bool)

(assert (=> b!7568675 (= e!4506229 (and tp!2204610 tp!2204605))))

(declare-fun b!7568676 () Bool)

(declare-fun e!4506224 () Bool)

(declare-fun tp!2204604 () Bool)

(assert (=> b!7568676 (= e!4506224 (and tp_is_empty!50341 tp!2204604))))

(declare-fun b!7568677 () Bool)

(declare-fun e!4506228 () Bool)

(assert (=> b!7568677 (= e!4506225 e!4506228)))

(declare-fun res!3032060 () Bool)

(assert (=> b!7568677 (=> (not res!3032060) (not e!4506228))))

(declare-fun lt!2650890 () Regex!19993)

(declare-fun r!24129 () Regex!19993)

(assert (=> b!7568677 (= res!3032060 (= lt!2650890 r!24129))))

(declare-fun derivative!519 (Regex!19993 List!72876) Regex!19993)

(assert (=> b!7568677 (= lt!2650890 (derivative!519 baseR!100 testedP!418))))

(declare-fun b!7568678 () Bool)

(declare-fun e!4506227 () Bool)

(declare-fun tp!2204613 () Bool)

(declare-fun tp!2204612 () Bool)

(assert (=> b!7568678 (= e!4506227 (and tp!2204613 tp!2204612))))

(declare-fun b!7568679 () Bool)

(assert (=> b!7568679 (= e!4506228 (not true))))

(assert (=> b!7568679 (matchR!9593 lt!2650890 Nil!72752)))

(declare-datatypes ((Unit!166938 0))(
  ( (Unit!166939) )
))
(declare-fun lt!2650889 () Unit!166938)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!262 (Regex!19993 List!72876) Unit!166938)

(assert (=> b!7568679 (= lt!2650889 (lemmaMatchRIsSameAsWholeDerivativeAndNil!262 baseR!100 testedP!418))))

(declare-fun b!7568680 () Bool)

(declare-fun res!3032061 () Bool)

(assert (=> b!7568680 (=> (not res!3032061) (not e!4506225))))

(declare-fun validRegex!10421 (Regex!19993) Bool)

(assert (=> b!7568680 (= res!3032061 (validRegex!10421 r!24129))))

(declare-fun b!7568681 () Bool)

(declare-fun tp!2204608 () Bool)

(assert (=> b!7568681 (= e!4506229 tp!2204608)))

(declare-fun res!3032064 () Bool)

(assert (=> start!731004 (=> (not res!3032064) (not e!4506225))))

(assert (=> start!731004 (= res!3032064 (validRegex!10421 baseR!100))))

(assert (=> start!731004 e!4506225))

(assert (=> start!731004 e!4506227))

(assert (=> start!731004 e!4506229))

(declare-fun e!4506226 () Bool)

(assert (=> start!731004 e!4506226))

(assert (=> start!731004 e!4506224))

(declare-fun b!7568682 () Bool)

(declare-fun tp!2204607 () Bool)

(declare-fun tp!2204611 () Bool)

(assert (=> b!7568682 (= e!4506227 (and tp!2204607 tp!2204611))))

(declare-fun b!7568683 () Bool)

(declare-fun tp!2204609 () Bool)

(assert (=> b!7568683 (= e!4506226 (and tp_is_empty!50341 tp!2204609))))

(declare-fun b!7568684 () Bool)

(assert (=> b!7568684 (= e!4506227 tp_is_empty!50341)))

(declare-fun b!7568685 () Bool)

(declare-fun tp!2204603 () Bool)

(assert (=> b!7568685 (= e!4506227 tp!2204603)))

(assert (= (and start!731004 res!3032064) b!7568680))

(assert (= (and b!7568680 res!3032061) b!7568672))

(assert (= (and b!7568672 res!3032062) b!7568671))

(assert (= (and b!7568671 res!3032063) b!7568677))

(assert (= (and b!7568677 res!3032060) b!7568679))

(get-info :version)

(assert (= (and start!731004 ((_ is ElementMatch!19993) baseR!100)) b!7568684))

(assert (= (and start!731004 ((_ is Concat!28838) baseR!100)) b!7568682))

(assert (= (and start!731004 ((_ is Star!19993) baseR!100)) b!7568685))

(assert (= (and start!731004 ((_ is Union!19993) baseR!100)) b!7568678))

(assert (= (and start!731004 ((_ is ElementMatch!19993) r!24129)) b!7568674))

(assert (= (and start!731004 ((_ is Concat!28838) r!24129)) b!7568675))

(assert (= (and start!731004 ((_ is Star!19993) r!24129)) b!7568681))

(assert (= (and start!731004 ((_ is Union!19993) r!24129)) b!7568673))

(assert (= (and start!731004 ((_ is Cons!72752) testedP!418)) b!7568683))

(assert (= (and start!731004 ((_ is Cons!72752) input!7855)) b!7568676))

(declare-fun m!8130956 () Bool)

(assert (=> start!731004 m!8130956))

(declare-fun m!8130958 () Bool)

(assert (=> b!7568680 m!8130958))

(declare-fun m!8130960 () Bool)

(assert (=> b!7568671 m!8130960))

(declare-fun m!8130962 () Bool)

(assert (=> b!7568679 m!8130962))

(declare-fun m!8130964 () Bool)

(assert (=> b!7568679 m!8130964))

(declare-fun m!8130966 () Bool)

(assert (=> b!7568677 m!8130966))

(declare-fun m!8130968 () Bool)

(assert (=> b!7568672 m!8130968))

(check-sat (not start!731004) (not b!7568671) (not b!7568673) (not b!7568681) (not b!7568683) tp_is_empty!50341 (not b!7568679) (not b!7568672) (not b!7568675) (not b!7568677) (not b!7568682) (not b!7568680) (not b!7568678) (not b!7568676) (not b!7568685))
(check-sat)
