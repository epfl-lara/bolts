; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731008 () Bool)

(assert start!731008)

(declare-fun b!7568771 () Bool)

(declare-fun e!4506271 () Bool)

(declare-fun e!4506270 () Bool)

(assert (=> b!7568771 (= e!4506271 e!4506270)))

(declare-fun res!3032105 () Bool)

(assert (=> b!7568771 (=> (not res!3032105) (not e!4506270))))

(declare-datatypes ((C!40316 0))(
  ( (C!40317 (val!30598 Int)) )
))
(declare-datatypes ((Regex!19995 0))(
  ( (ElementMatch!19995 (c!1396630 C!40316)) (Concat!28840 (regOne!40502 Regex!19995) (regTwo!40502 Regex!19995)) (EmptyExpr!19995) (Star!19995 (reg!20324 Regex!19995)) (EmptyLang!19995) (Union!19995 (regOne!40503 Regex!19995) (regTwo!40503 Regex!19995)) )
))
(declare-fun lt!2650907 () Regex!19995)

(declare-fun r!24129 () Regex!19995)

(assert (=> b!7568771 (= res!3032105 (= lt!2650907 r!24129))))

(declare-fun baseR!100 () Regex!19995)

(declare-datatypes ((List!72878 0))(
  ( (Nil!72754) (Cons!72754 (h!79202 C!40316) (t!387613 List!72878)) )
))
(declare-fun testedP!418 () List!72878)

(declare-fun derivative!521 (Regex!19995 List!72878) Regex!19995)

(assert (=> b!7568771 (= lt!2650907 (derivative!521 baseR!100 testedP!418))))

(declare-fun b!7568772 () Bool)

(declare-fun e!4506268 () Bool)

(assert (=> b!7568772 (= e!4506270 (not e!4506268))))

(declare-fun res!3032106 () Bool)

(assert (=> b!7568772 (=> res!3032106 e!4506268)))

(declare-fun matchR!9595 (Regex!19995 List!72878) Bool)

(assert (=> b!7568772 (= res!3032106 (not (matchR!9595 r!24129 Nil!72754)))))

(assert (=> b!7568772 (matchR!9595 lt!2650907 Nil!72754)))

(declare-datatypes ((Unit!166942 0))(
  ( (Unit!166943) )
))
(declare-fun lt!2650908 () Unit!166942)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!264 (Regex!19995 List!72878) Unit!166942)

(assert (=> b!7568772 (= lt!2650908 (lemmaMatchRIsSameAsWholeDerivativeAndNil!264 baseR!100 testedP!418))))

(declare-fun b!7568773 () Bool)

(declare-fun e!4506267 () Bool)

(declare-fun tp!2204679 () Bool)

(declare-fun tp!2204681 () Bool)

(assert (=> b!7568773 (= e!4506267 (and tp!2204679 tp!2204681))))

(declare-fun res!3032100 () Bool)

(assert (=> start!731008 (=> (not res!3032100) (not e!4506271))))

(declare-fun validRegex!10423 (Regex!19995) Bool)

(assert (=> start!731008 (= res!3032100 (validRegex!10423 baseR!100))))

(assert (=> start!731008 e!4506271))

(assert (=> start!731008 e!4506267))

(declare-fun e!4506265 () Bool)

(assert (=> start!731008 e!4506265))

(declare-fun e!4506269 () Bool)

(assert (=> start!731008 e!4506269))

(declare-fun e!4506266 () Bool)

(assert (=> start!731008 e!4506266))

(declare-fun b!7568774 () Bool)

(declare-fun tp_is_empty!50345 () Bool)

(declare-fun tp!2204674 () Bool)

(assert (=> b!7568774 (= e!4506269 (and tp_is_empty!50345 tp!2204674))))

(declare-fun b!7568775 () Bool)

(declare-fun tp!2204678 () Bool)

(assert (=> b!7568775 (= e!4506265 tp!2204678)))

(declare-fun b!7568776 () Bool)

(declare-fun tp!2204676 () Bool)

(declare-fun tp!2204684 () Bool)

(assert (=> b!7568776 (= e!4506265 (and tp!2204676 tp!2204684))))

(declare-fun b!7568777 () Bool)

(declare-fun tp!2204675 () Bool)

(declare-fun tp!2204680 () Bool)

(assert (=> b!7568777 (= e!4506265 (and tp!2204675 tp!2204680))))

(declare-fun b!7568778 () Bool)

(assert (=> b!7568778 (= e!4506268 true)))

(declare-fun lt!2650906 () Bool)

(declare-fun lostCause!1775 (Regex!19995) Bool)

(assert (=> b!7568778 (= lt!2650906 (lostCause!1775 r!24129))))

(declare-fun b!7568779 () Bool)

(assert (=> b!7568779 (= e!4506267 tp_is_empty!50345)))

(declare-fun b!7568780 () Bool)

(declare-fun tp!2204683 () Bool)

(declare-fun tp!2204685 () Bool)

(assert (=> b!7568780 (= e!4506267 (and tp!2204683 tp!2204685))))

(declare-fun b!7568781 () Bool)

(declare-fun res!3032104 () Bool)

(assert (=> b!7568781 (=> (not res!3032104) (not e!4506271))))

(assert (=> b!7568781 (= res!3032104 (matchR!9595 baseR!100 testedP!418))))

(declare-fun b!7568782 () Bool)

(declare-fun res!3032103 () Bool)

(assert (=> b!7568782 (=> (not res!3032103) (not e!4506271))))

(declare-fun input!7855 () List!72878)

(declare-fun isPrefix!6201 (List!72878 List!72878) Bool)

(assert (=> b!7568782 (= res!3032103 (isPrefix!6201 testedP!418 input!7855))))

(declare-fun b!7568783 () Bool)

(declare-fun tp!2204677 () Bool)

(assert (=> b!7568783 (= e!4506266 (and tp_is_empty!50345 tp!2204677))))

(declare-fun b!7568784 () Bool)

(declare-fun tp!2204682 () Bool)

(assert (=> b!7568784 (= e!4506267 tp!2204682)))

(declare-fun b!7568785 () Bool)

(declare-fun res!3032102 () Bool)

(assert (=> b!7568785 (=> (not res!3032102) (not e!4506271))))

(assert (=> b!7568785 (= res!3032102 (validRegex!10423 r!24129))))

(declare-fun b!7568786 () Bool)

(assert (=> b!7568786 (= e!4506265 tp_is_empty!50345)))

(declare-fun b!7568787 () Bool)

(declare-fun res!3032101 () Bool)

(assert (=> b!7568787 (=> res!3032101 e!4506268)))

(declare-fun nullable!8721 (Regex!19995) Bool)

(assert (=> b!7568787 (= res!3032101 (not (nullable!8721 r!24129)))))

(assert (= (and start!731008 res!3032100) b!7568785))

(assert (= (and b!7568785 res!3032102) b!7568782))

(assert (= (and b!7568782 res!3032103) b!7568781))

(assert (= (and b!7568781 res!3032104) b!7568771))

(assert (= (and b!7568771 res!3032105) b!7568772))

(assert (= (and b!7568772 (not res!3032106)) b!7568787))

(assert (= (and b!7568787 (not res!3032101)) b!7568778))

(get-info :version)

(assert (= (and start!731008 ((_ is ElementMatch!19995) baseR!100)) b!7568779))

(assert (= (and start!731008 ((_ is Concat!28840) baseR!100)) b!7568773))

(assert (= (and start!731008 ((_ is Star!19995) baseR!100)) b!7568784))

(assert (= (and start!731008 ((_ is Union!19995) baseR!100)) b!7568780))

(assert (= (and start!731008 ((_ is ElementMatch!19995) r!24129)) b!7568786))

(assert (= (and start!731008 ((_ is Concat!28840) r!24129)) b!7568776))

(assert (= (and start!731008 ((_ is Star!19995) r!24129)) b!7568775))

(assert (= (and start!731008 ((_ is Union!19995) r!24129)) b!7568777))

(assert (= (and start!731008 ((_ is Cons!72754) testedP!418)) b!7568774))

(assert (= (and start!731008 ((_ is Cons!72754) input!7855)) b!7568783))

(declare-fun m!8130990 () Bool)

(assert (=> b!7568772 m!8130990))

(declare-fun m!8130992 () Bool)

(assert (=> b!7568772 m!8130992))

(declare-fun m!8130994 () Bool)

(assert (=> b!7568772 m!8130994))

(declare-fun m!8130996 () Bool)

(assert (=> b!7568787 m!8130996))

(declare-fun m!8130998 () Bool)

(assert (=> b!7568778 m!8130998))

(declare-fun m!8131000 () Bool)

(assert (=> b!7568771 m!8131000))

(declare-fun m!8131002 () Bool)

(assert (=> b!7568785 m!8131002))

(declare-fun m!8131004 () Bool)

(assert (=> b!7568782 m!8131004))

(declare-fun m!8131006 () Bool)

(assert (=> start!731008 m!8131006))

(declare-fun m!8131008 () Bool)

(assert (=> b!7568781 m!8131008))

(check-sat (not b!7568773) tp_is_empty!50345 (not start!731008) (not b!7568775) (not b!7568782) (not b!7568778) (not b!7568783) (not b!7568787) (not b!7568785) (not b!7568776) (not b!7568774) (not b!7568772) (not b!7568784) (not b!7568781) (not b!7568771) (not b!7568777) (not b!7568780))
(check-sat)
