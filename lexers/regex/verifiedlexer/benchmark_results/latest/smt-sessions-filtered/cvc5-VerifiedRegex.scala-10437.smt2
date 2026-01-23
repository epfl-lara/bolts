; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!539414 () Bool)

(assert start!539414)

(declare-fun b!5113410 () Bool)

(declare-fun res!2176657 () Bool)

(declare-fun e!3189166 () Bool)

(assert (=> b!5113410 (=> (not res!2176657) (not e!3189166))))

(declare-datatypes ((C!28594 0))(
  ( (C!28595 (val!23949 Int)) )
))
(declare-datatypes ((Regex!14164 0))(
  ( (ElementMatch!14164 (c!878558 C!28594)) (Concat!23009 (regOne!28840 Regex!14164) (regTwo!28840 Regex!14164)) (EmptyExpr!14164) (Star!14164 (reg!14493 Regex!14164)) (EmptyLang!14164) (Union!14164 (regOne!28841 Regex!14164) (regTwo!28841 Regex!14164)) )
))
(declare-datatypes ((List!59221 0))(
  ( (Nil!59097) (Cons!59097 (h!65545 Regex!14164) (t!372222 List!59221)) )
))
(declare-datatypes ((Context!7096 0))(
  ( (Context!7097 (exprs!4048 List!59221)) )
))
(declare-fun baseZ!46 () (Set Context!7096))

(declare-datatypes ((List!59222 0))(
  ( (Nil!59098) (Cons!59098 (h!65546 C!28594) (t!372223 List!59222)) )
))
(declare-fun knownP!20 () List!59222)

(declare-fun matchZipper!832 ((Set Context!7096) List!59222) Bool)

(assert (=> b!5113410 (= res!2176657 (matchZipper!832 baseZ!46 knownP!20))))

(declare-fun b!5113411 () Bool)

(declare-fun e!3189165 () Bool)

(assert (=> b!5113411 (= e!3189166 (not e!3189165))))

(declare-fun res!2176662 () Bool)

(assert (=> b!5113411 (=> res!2176662 e!3189165)))

(declare-fun z!4463 () (Set Context!7096))

(declare-fun lt!2106336 () List!59222)

(assert (=> b!5113411 (= res!2176662 (not (matchZipper!832 z!4463 lt!2106336)))))

(declare-fun testedP!265 () List!59222)

(declare-fun getSuffix!3243 (List!59222 List!59222) List!59222)

(assert (=> b!5113411 (= lt!2106336 (getSuffix!3243 knownP!20 testedP!265))))

(declare-fun isPrefix!5569 (List!59222 List!59222) Bool)

(assert (=> b!5113411 (isPrefix!5569 testedP!265 knownP!20)))

(declare-fun input!5745 () List!59222)

(declare-datatypes ((Unit!150211 0))(
  ( (Unit!150212) )
))
(declare-fun lt!2106335 () Unit!150211)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!706 (List!59222 List!59222 List!59222) Unit!150211)

(assert (=> b!5113411 (= lt!2106335 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!706 knownP!20 testedP!265 input!5745))))

(declare-fun b!5113412 () Bool)

(declare-fun e!3189167 () Bool)

(declare-fun e!3189174 () Bool)

(assert (=> b!5113412 (= e!3189167 e!3189174)))

(declare-fun res!2176668 () Bool)

(assert (=> b!5113412 (=> res!2176668 e!3189174)))

(declare-fun lt!2106337 () List!59222)

(assert (=> b!5113412 (= res!2176668 (not (= lt!2106337 input!5745)))))

(declare-fun lt!2106339 () List!59222)

(declare-fun lt!2106327 () List!59222)

(declare-fun ++!12989 (List!59222 List!59222) List!59222)

(assert (=> b!5113412 (= lt!2106337 (++!12989 lt!2106339 lt!2106327))))

(assert (=> b!5113412 (= lt!2106339 (++!12989 testedP!265 lt!2106336))))

(declare-fun b!5113413 () Bool)

(declare-fun res!2176663 () Bool)

(assert (=> b!5113413 (=> res!2176663 e!3189165)))

(declare-fun derivationZipper!63 ((Set Context!7096) List!59222) (Set Context!7096))

(assert (=> b!5113413 (= res!2176663 (not (= (derivationZipper!63 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5113414 () Bool)

(declare-fun res!2176667 () Bool)

(assert (=> b!5113414 (=> res!2176667 e!3189165)))

(declare-fun lt!2106328 () Int)

(declare-fun lt!2106329 () Int)

(assert (=> b!5113414 (= res!2176667 (= lt!2106328 lt!2106329))))

(declare-fun setElem!29915 () Context!7096)

(declare-fun tp!1426698 () Bool)

(declare-fun e!3189175 () Bool)

(declare-fun setNonEmpty!29915 () Bool)

(declare-fun setRes!29915 () Bool)

(declare-fun inv!78592 (Context!7096) Bool)

(assert (=> setNonEmpty!29915 (= setRes!29915 (and tp!1426698 (inv!78592 setElem!29915) e!3189175))))

(declare-fun setRest!29916 () (Set Context!7096))

(assert (=> setNonEmpty!29915 (= z!4463 (set.union (set.insert setElem!29915 (as set.empty (Set Context!7096))) setRest!29916))))

(declare-fun b!5113415 () Bool)

(declare-fun e!3189171 () Bool)

(assert (=> b!5113415 (= e!3189171 e!3189166)))

(declare-fun res!2176660 () Bool)

(assert (=> b!5113415 (=> (not res!2176660) (not e!3189166))))

(assert (=> b!5113415 (= res!2176660 (>= lt!2106329 lt!2106328))))

(declare-fun size!39470 (List!59222) Int)

(assert (=> b!5113415 (= lt!2106328 (size!39470 testedP!265))))

(assert (=> b!5113415 (= lt!2106329 (size!39470 knownP!20))))

(declare-fun b!5113416 () Bool)

(assert (=> b!5113416 (= e!3189165 e!3189167)))

(declare-fun res!2176665 () Bool)

(assert (=> b!5113416 (=> res!2176665 e!3189167)))

(assert (=> b!5113416 (= res!2176665 (not (= (++!12989 knownP!20 lt!2106327) input!5745)))))

(assert (=> b!5113416 (= lt!2106327 (getSuffix!3243 input!5745 knownP!20))))

(declare-fun lt!2106330 () List!59222)

(declare-fun lt!2106325 () List!59222)

(assert (=> b!5113416 (= lt!2106330 (getSuffix!3243 knownP!20 lt!2106325))))

(assert (=> b!5113416 (isPrefix!5569 lt!2106325 knownP!20)))

(declare-fun lt!2106332 () Unit!150211)

(assert (=> b!5113416 (= lt!2106332 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!706 knownP!20 lt!2106325 input!5745))))

(declare-fun lt!2106334 () C!28594)

(declare-fun derivationStepZipper!799 ((Set Context!7096) C!28594) (Set Context!7096))

(assert (=> b!5113416 (= (derivationZipper!63 baseZ!46 lt!2106325) (derivationStepZipper!799 z!4463 lt!2106334))))

(declare-fun lt!2106338 () Unit!150211)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!24 ((Set Context!7096) (Set Context!7096) List!59222 C!28594) Unit!150211)

(assert (=> b!5113416 (= lt!2106338 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!24 baseZ!46 z!4463 testedP!265 lt!2106334))))

(assert (=> b!5113416 (isPrefix!5569 lt!2106325 input!5745)))

(declare-fun lt!2106333 () Unit!150211)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!959 (List!59222 List!59222) Unit!150211)

(assert (=> b!5113416 (= lt!2106333 (lemmaAddHeadSuffixToPrefixStillPrefix!959 testedP!265 input!5745))))

(assert (=> b!5113416 (= lt!2106325 (++!12989 testedP!265 (Cons!59098 lt!2106334 Nil!59098)))))

(declare-fun lt!2106340 () List!59222)

(declare-fun head!10892 (List!59222) C!28594)

(assert (=> b!5113416 (= lt!2106334 (head!10892 lt!2106340))))

(assert (=> b!5113416 (= lt!2106340 (getSuffix!3243 input!5745 testedP!265))))

(declare-fun b!5113417 () Bool)

(declare-fun res!2176669 () Bool)

(declare-fun e!3189172 () Bool)

(assert (=> b!5113417 (=> res!2176669 e!3189172)))

(declare-fun $colon$colon!1110 (List!59222 C!28594) List!59222)

(declare-fun tail!10033 (List!59222) List!59222)

(assert (=> b!5113417 (= res!2176669 (not (= lt!2106336 ($colon$colon!1110 (tail!10033 lt!2106336) lt!2106334))))))

(declare-fun b!5113418 () Bool)

(declare-fun res!2176659 () Bool)

(assert (=> b!5113418 (=> res!2176659 e!3189174)))

(assert (=> b!5113418 (= res!2176659 (not (= (++!12989 testedP!265 lt!2106340) input!5745)))))

(declare-fun b!5113419 () Bool)

(declare-fun e!3189164 () Bool)

(declare-fun tp_is_empty!37601 () Bool)

(declare-fun tp!1426704 () Bool)

(assert (=> b!5113419 (= e!3189164 (and tp_is_empty!37601 tp!1426704))))

(declare-fun res!2176658 () Bool)

(assert (=> start!539414 (=> (not res!2176658) (not e!3189171))))

(assert (=> start!539414 (= res!2176658 (isPrefix!5569 testedP!265 input!5745))))

(assert (=> start!539414 e!3189171))

(assert (=> start!539414 e!3189164))

(declare-fun condSetEmpty!29916 () Bool)

(assert (=> start!539414 (= condSetEmpty!29916 (= z!4463 (as set.empty (Set Context!7096))))))

(assert (=> start!539414 setRes!29915))

(declare-fun e!3189173 () Bool)

(assert (=> start!539414 e!3189173))

(declare-fun condSetEmpty!29915 () Bool)

(assert (=> start!539414 (= condSetEmpty!29915 (= baseZ!46 (as set.empty (Set Context!7096))))))

(declare-fun setRes!29916 () Bool)

(assert (=> start!539414 setRes!29916))

(declare-fun e!3189169 () Bool)

(assert (=> start!539414 e!3189169))

(declare-fun b!5113420 () Bool)

(declare-fun e!3189168 () Bool)

(declare-fun tp!1426703 () Bool)

(assert (=> b!5113420 (= e!3189168 tp!1426703)))

(declare-fun b!5113421 () Bool)

(declare-fun tp!1426701 () Bool)

(assert (=> b!5113421 (= e!3189175 tp!1426701)))

(declare-fun b!5113422 () Bool)

(declare-fun res!2176670 () Bool)

(assert (=> b!5113422 (=> res!2176670 e!3189165)))

(declare-fun lostCauseZipper!1050 ((Set Context!7096)) Bool)

(assert (=> b!5113422 (= res!2176670 (lostCauseZipper!1050 z!4463))))

(declare-fun setIsEmpty!29915 () Bool)

(assert (=> setIsEmpty!29915 setRes!29916))

(declare-fun b!5113423 () Bool)

(declare-fun e!3189170 () Bool)

(assert (=> b!5113423 (= e!3189174 e!3189170)))

(declare-fun res!2176666 () Bool)

(assert (=> b!5113423 (=> res!2176666 e!3189170)))

(declare-fun lt!2106326 () List!59222)

(assert (=> b!5113423 (= res!2176666 (not (= lt!2106326 input!5745)))))

(assert (=> b!5113423 (= lt!2106337 lt!2106326)))

(declare-fun lt!2106331 () List!59222)

(assert (=> b!5113423 (= lt!2106326 (++!12989 testedP!265 lt!2106331))))

(assert (=> b!5113423 (= lt!2106331 (++!12989 lt!2106336 lt!2106327))))

(declare-fun lt!2106342 () Unit!150211)

(declare-fun lemmaConcatAssociativity!2747 (List!59222 List!59222 List!59222) Unit!150211)

(assert (=> b!5113423 (= lt!2106342 (lemmaConcatAssociativity!2747 testedP!265 lt!2106336 lt!2106327))))

(declare-fun b!5113424 () Bool)

(assert (=> b!5113424 (= e!3189172 (or (not (= lt!2106339 knownP!20)) (not (= lt!2106340 Nil!59098))))))

(declare-fun setIsEmpty!29916 () Bool)

(assert (=> setIsEmpty!29916 setRes!29915))

(declare-fun b!5113425 () Bool)

(declare-fun tp!1426702 () Bool)

(assert (=> b!5113425 (= e!3189173 (and tp_is_empty!37601 tp!1426702))))

(declare-fun tp!1426700 () Bool)

(declare-fun setElem!29916 () Context!7096)

(declare-fun setNonEmpty!29916 () Bool)

(assert (=> setNonEmpty!29916 (= setRes!29916 (and tp!1426700 (inv!78592 setElem!29916) e!3189168))))

(declare-fun setRest!29915 () (Set Context!7096))

(assert (=> setNonEmpty!29916 (= baseZ!46 (set.union (set.insert setElem!29916 (as set.empty (Set Context!7096))) setRest!29915))))

(declare-fun b!5113426 () Bool)

(declare-fun res!2176661 () Bool)

(assert (=> b!5113426 (=> res!2176661 e!3189165)))

(assert (=> b!5113426 (= res!2176661 (>= lt!2106328 (size!39470 input!5745)))))

(declare-fun b!5113427 () Bool)

(declare-fun tp!1426699 () Bool)

(assert (=> b!5113427 (= e!3189169 (and tp_is_empty!37601 tp!1426699))))

(declare-fun b!5113428 () Bool)

(declare-fun res!2176671 () Bool)

(assert (=> b!5113428 (=> (not res!2176671) (not e!3189171))))

(assert (=> b!5113428 (= res!2176671 (isPrefix!5569 knownP!20 input!5745))))

(declare-fun b!5113429 () Bool)

(assert (=> b!5113429 (= e!3189170 e!3189172)))

(declare-fun res!2176664 () Bool)

(assert (=> b!5113429 (=> res!2176664 e!3189172)))

(assert (=> b!5113429 (= res!2176664 (not (= (head!10892 lt!2106336) lt!2106334)))))

(assert (=> b!5113429 (= lt!2106331 lt!2106340)))

(declare-fun lt!2106341 () Unit!150211)

(declare-fun lemmaSamePrefixThenSameSuffix!2615 (List!59222 List!59222 List!59222 List!59222 List!59222) Unit!150211)

(assert (=> b!5113429 (= lt!2106341 (lemmaSamePrefixThenSameSuffix!2615 testedP!265 lt!2106331 testedP!265 lt!2106340 input!5745))))

(assert (= (and start!539414 res!2176658) b!5113428))

(assert (= (and b!5113428 res!2176671) b!5113415))

(assert (= (and b!5113415 res!2176660) b!5113410))

(assert (= (and b!5113410 res!2176657) b!5113411))

(assert (= (and b!5113411 (not res!2176662)) b!5113413))

(assert (= (and b!5113413 (not res!2176663)) b!5113422))

(assert (= (and b!5113422 (not res!2176670)) b!5113414))

(assert (= (and b!5113414 (not res!2176667)) b!5113426))

(assert (= (and b!5113426 (not res!2176661)) b!5113416))

(assert (= (and b!5113416 (not res!2176665)) b!5113412))

(assert (= (and b!5113412 (not res!2176668)) b!5113418))

(assert (= (and b!5113418 (not res!2176659)) b!5113423))

(assert (= (and b!5113423 (not res!2176666)) b!5113429))

(assert (= (and b!5113429 (not res!2176664)) b!5113417))

(assert (= (and b!5113417 (not res!2176669)) b!5113424))

(assert (= (and start!539414 (is-Cons!59098 input!5745)) b!5113419))

(assert (= (and start!539414 condSetEmpty!29916) setIsEmpty!29916))

(assert (= (and start!539414 (not condSetEmpty!29916)) setNonEmpty!29915))

(assert (= setNonEmpty!29915 b!5113421))

(assert (= (and start!539414 (is-Cons!59098 testedP!265)) b!5113425))

(assert (= (and start!539414 condSetEmpty!29915) setIsEmpty!29915))

(assert (= (and start!539414 (not condSetEmpty!29915)) setNonEmpty!29916))

(assert (= setNonEmpty!29916 b!5113420))

(assert (= (and start!539414 (is-Cons!59098 knownP!20)) b!5113427))

(declare-fun m!6171610 () Bool)

(assert (=> b!5113416 m!6171610))

(declare-fun m!6171612 () Bool)

(assert (=> b!5113416 m!6171612))

(declare-fun m!6171614 () Bool)

(assert (=> b!5113416 m!6171614))

(declare-fun m!6171616 () Bool)

(assert (=> b!5113416 m!6171616))

(declare-fun m!6171618 () Bool)

(assert (=> b!5113416 m!6171618))

(declare-fun m!6171620 () Bool)

(assert (=> b!5113416 m!6171620))

(declare-fun m!6171622 () Bool)

(assert (=> b!5113416 m!6171622))

(declare-fun m!6171624 () Bool)

(assert (=> b!5113416 m!6171624))

(declare-fun m!6171626 () Bool)

(assert (=> b!5113416 m!6171626))

(declare-fun m!6171628 () Bool)

(assert (=> b!5113416 m!6171628))

(declare-fun m!6171630 () Bool)

(assert (=> b!5113416 m!6171630))

(declare-fun m!6171632 () Bool)

(assert (=> b!5113416 m!6171632))

(declare-fun m!6171634 () Bool)

(assert (=> b!5113416 m!6171634))

(declare-fun m!6171636 () Bool)

(assert (=> setNonEmpty!29915 m!6171636))

(declare-fun m!6171638 () Bool)

(assert (=> b!5113413 m!6171638))

(declare-fun m!6171640 () Bool)

(assert (=> b!5113426 m!6171640))

(declare-fun m!6171642 () Bool)

(assert (=> b!5113428 m!6171642))

(declare-fun m!6171644 () Bool)

(assert (=> b!5113422 m!6171644))

(declare-fun m!6171646 () Bool)

(assert (=> setNonEmpty!29916 m!6171646))

(declare-fun m!6171648 () Bool)

(assert (=> b!5113410 m!6171648))

(declare-fun m!6171650 () Bool)

(assert (=> b!5113417 m!6171650))

(assert (=> b!5113417 m!6171650))

(declare-fun m!6171652 () Bool)

(assert (=> b!5113417 m!6171652))

(declare-fun m!6171654 () Bool)

(assert (=> b!5113429 m!6171654))

(declare-fun m!6171656 () Bool)

(assert (=> b!5113429 m!6171656))

(declare-fun m!6171658 () Bool)

(assert (=> b!5113411 m!6171658))

(declare-fun m!6171660 () Bool)

(assert (=> b!5113411 m!6171660))

(declare-fun m!6171662 () Bool)

(assert (=> b!5113411 m!6171662))

(declare-fun m!6171664 () Bool)

(assert (=> b!5113411 m!6171664))

(declare-fun m!6171666 () Bool)

(assert (=> b!5113415 m!6171666))

(declare-fun m!6171668 () Bool)

(assert (=> b!5113415 m!6171668))

(declare-fun m!6171670 () Bool)

(assert (=> start!539414 m!6171670))

(declare-fun m!6171672 () Bool)

(assert (=> b!5113423 m!6171672))

(declare-fun m!6171674 () Bool)

(assert (=> b!5113423 m!6171674))

(declare-fun m!6171676 () Bool)

(assert (=> b!5113423 m!6171676))

(declare-fun m!6171678 () Bool)

(assert (=> b!5113412 m!6171678))

(declare-fun m!6171680 () Bool)

(assert (=> b!5113412 m!6171680))

(declare-fun m!6171682 () Bool)

(assert (=> b!5113418 m!6171682))

(push 1)

(assert (not b!5113419))

(assert (not b!5113428))

(assert (not b!5113420))

(assert (not setNonEmpty!29916))

(assert (not b!5113422))

(assert tp_is_empty!37601)

(assert (not b!5113426))

(assert (not setNonEmpty!29915))

(assert (not b!5113411))

(assert (not b!5113423))

(assert (not b!5113427))

(assert (not b!5113412))

(assert (not b!5113425))

(assert (not b!5113413))

(assert (not b!5113415))

(assert (not b!5113410))

(assert (not b!5113418))

(assert (not b!5113416))

(assert (not start!539414))

(assert (not b!5113429))

(assert (not b!5113417))

(assert (not b!5113421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1652566 () Bool)

(declare-fun lt!2106399 () Int)

(assert (=> d!1652566 (>= lt!2106399 0)))

(declare-fun e!3189214 () Int)

(assert (=> d!1652566 (= lt!2106399 e!3189214)))

(declare-fun c!878562 () Bool)

(assert (=> d!1652566 (= c!878562 (is-Nil!59098 testedP!265))))

(assert (=> d!1652566 (= (size!39470 testedP!265) lt!2106399)))

(declare-fun b!5113494 () Bool)

(assert (=> b!5113494 (= e!3189214 0)))

(declare-fun b!5113495 () Bool)

(assert (=> b!5113495 (= e!3189214 (+ 1 (size!39470 (t!372223 testedP!265))))))

(assert (= (and d!1652566 c!878562) b!5113494))

(assert (= (and d!1652566 (not c!878562)) b!5113495))

(declare-fun m!6171758 () Bool)

(assert (=> b!5113495 m!6171758))

(assert (=> b!5113415 d!1652566))

(declare-fun d!1652568 () Bool)

(declare-fun lt!2106400 () Int)

(assert (=> d!1652568 (>= lt!2106400 0)))

(declare-fun e!3189215 () Int)

(assert (=> d!1652568 (= lt!2106400 e!3189215)))

(declare-fun c!878563 () Bool)

(assert (=> d!1652568 (= c!878563 (is-Nil!59098 knownP!20))))

(assert (=> d!1652568 (= (size!39470 knownP!20) lt!2106400)))

(declare-fun b!5113496 () Bool)

(assert (=> b!5113496 (= e!3189215 0)))

(declare-fun b!5113497 () Bool)

(assert (=> b!5113497 (= e!3189215 (+ 1 (size!39470 (t!372223 knownP!20))))))

(assert (= (and d!1652568 c!878563) b!5113496))

(assert (= (and d!1652568 (not c!878563)) b!5113497))

(declare-fun m!6171760 () Bool)

(assert (=> b!5113497 m!6171760))

(assert (=> b!5113415 d!1652568))

(declare-fun b!5113508 () Bool)

(declare-fun res!2176722 () Bool)

(declare-fun e!3189221 () Bool)

(assert (=> b!5113508 (=> (not res!2176722) (not e!3189221))))

(declare-fun lt!2106403 () List!59222)

(assert (=> b!5113508 (= res!2176722 (= (size!39470 lt!2106403) (+ (size!39470 testedP!265) (size!39470 lt!2106331))))))

(declare-fun b!5113507 () Bool)

(declare-fun e!3189220 () List!59222)

(assert (=> b!5113507 (= e!3189220 (Cons!59098 (h!65546 testedP!265) (++!12989 (t!372223 testedP!265) lt!2106331)))))

(declare-fun d!1652570 () Bool)

(assert (=> d!1652570 e!3189221))

(declare-fun res!2176721 () Bool)

(assert (=> d!1652570 (=> (not res!2176721) (not e!3189221))))

(declare-fun content!10504 (List!59222) (Set C!28594))

(assert (=> d!1652570 (= res!2176721 (= (content!10504 lt!2106403) (set.union (content!10504 testedP!265) (content!10504 lt!2106331))))))

(assert (=> d!1652570 (= lt!2106403 e!3189220)))

(declare-fun c!878566 () Bool)

(assert (=> d!1652570 (= c!878566 (is-Nil!59098 testedP!265))))

(assert (=> d!1652570 (= (++!12989 testedP!265 lt!2106331) lt!2106403)))

(declare-fun b!5113509 () Bool)

(assert (=> b!5113509 (= e!3189221 (or (not (= lt!2106331 Nil!59098)) (= lt!2106403 testedP!265)))))

(declare-fun b!5113506 () Bool)

(assert (=> b!5113506 (= e!3189220 lt!2106331)))

(assert (= (and d!1652570 c!878566) b!5113506))

(assert (= (and d!1652570 (not c!878566)) b!5113507))

(assert (= (and d!1652570 res!2176721) b!5113508))

(assert (= (and b!5113508 res!2176722) b!5113509))

(declare-fun m!6171762 () Bool)

(assert (=> b!5113508 m!6171762))

(assert (=> b!5113508 m!6171666))

(declare-fun m!6171764 () Bool)

(assert (=> b!5113508 m!6171764))

(declare-fun m!6171766 () Bool)

(assert (=> b!5113507 m!6171766))

(declare-fun m!6171768 () Bool)

(assert (=> d!1652570 m!6171768))

(declare-fun m!6171770 () Bool)

(assert (=> d!1652570 m!6171770))

(declare-fun m!6171772 () Bool)

(assert (=> d!1652570 m!6171772))

(assert (=> b!5113423 d!1652570))

(declare-fun b!5113512 () Bool)

(declare-fun res!2176724 () Bool)

(declare-fun e!3189223 () Bool)

(assert (=> b!5113512 (=> (not res!2176724) (not e!3189223))))

(declare-fun lt!2106404 () List!59222)

(assert (=> b!5113512 (= res!2176724 (= (size!39470 lt!2106404) (+ (size!39470 lt!2106336) (size!39470 lt!2106327))))))

(declare-fun b!5113511 () Bool)

(declare-fun e!3189222 () List!59222)

(assert (=> b!5113511 (= e!3189222 (Cons!59098 (h!65546 lt!2106336) (++!12989 (t!372223 lt!2106336) lt!2106327)))))

(declare-fun d!1652572 () Bool)

(assert (=> d!1652572 e!3189223))

(declare-fun res!2176723 () Bool)

(assert (=> d!1652572 (=> (not res!2176723) (not e!3189223))))

(assert (=> d!1652572 (= res!2176723 (= (content!10504 lt!2106404) (set.union (content!10504 lt!2106336) (content!10504 lt!2106327))))))

(assert (=> d!1652572 (= lt!2106404 e!3189222)))

(declare-fun c!878567 () Bool)

(assert (=> d!1652572 (= c!878567 (is-Nil!59098 lt!2106336))))

(assert (=> d!1652572 (= (++!12989 lt!2106336 lt!2106327) lt!2106404)))

(declare-fun b!5113513 () Bool)

(assert (=> b!5113513 (= e!3189223 (or (not (= lt!2106327 Nil!59098)) (= lt!2106404 lt!2106336)))))

(declare-fun b!5113510 () Bool)

(assert (=> b!5113510 (= e!3189222 lt!2106327)))

(assert (= (and d!1652572 c!878567) b!5113510))

(assert (= (and d!1652572 (not c!878567)) b!5113511))

(assert (= (and d!1652572 res!2176723) b!5113512))

(assert (= (and b!5113512 res!2176724) b!5113513))

(declare-fun m!6171774 () Bool)

(assert (=> b!5113512 m!6171774))

(declare-fun m!6171776 () Bool)

(assert (=> b!5113512 m!6171776))

(declare-fun m!6171778 () Bool)

(assert (=> b!5113512 m!6171778))

(declare-fun m!6171780 () Bool)

(assert (=> b!5113511 m!6171780))

(declare-fun m!6171782 () Bool)

(assert (=> d!1652572 m!6171782))

(declare-fun m!6171784 () Bool)

(assert (=> d!1652572 m!6171784))

(declare-fun m!6171786 () Bool)

(assert (=> d!1652572 m!6171786))

(assert (=> b!5113423 d!1652572))

(declare-fun d!1652574 () Bool)

(assert (=> d!1652574 (= (++!12989 (++!12989 testedP!265 lt!2106336) lt!2106327) (++!12989 testedP!265 (++!12989 lt!2106336 lt!2106327)))))

(declare-fun lt!2106407 () Unit!150211)

(declare-fun choose!37517 (List!59222 List!59222 List!59222) Unit!150211)

(assert (=> d!1652574 (= lt!2106407 (choose!37517 testedP!265 lt!2106336 lt!2106327))))

(assert (=> d!1652574 (= (lemmaConcatAssociativity!2747 testedP!265 lt!2106336 lt!2106327) lt!2106407)))

(declare-fun bs!1192210 () Bool)

(assert (= bs!1192210 d!1652574))

(assert (=> bs!1192210 m!6171680))

(assert (=> bs!1192210 m!6171674))

(assert (=> bs!1192210 m!6171674))

(declare-fun m!6171788 () Bool)

(assert (=> bs!1192210 m!6171788))

(assert (=> bs!1192210 m!6171680))

(declare-fun m!6171790 () Bool)

(assert (=> bs!1192210 m!6171790))

(declare-fun m!6171792 () Bool)

(assert (=> bs!1192210 m!6171792))

(assert (=> b!5113423 d!1652574))

(declare-fun d!1652578 () Bool)

(declare-fun lambda!250617 () Int)

(declare-fun forall!13557 (List!59221 Int) Bool)

(assert (=> d!1652578 (= (inv!78592 setElem!29915) (forall!13557 (exprs!4048 setElem!29915) lambda!250617))))

(declare-fun bs!1192211 () Bool)

(assert (= bs!1192211 d!1652578))

(declare-fun m!6171794 () Bool)

(assert (=> bs!1192211 m!6171794))

(assert (=> setNonEmpty!29915 d!1652578))

(declare-fun d!1652580 () Bool)

(declare-fun c!878574 () Bool)

(assert (=> d!1652580 (= c!878574 (is-Cons!59098 testedP!265))))

(declare-fun e!3189228 () (Set Context!7096))

(assert (=> d!1652580 (= (derivationZipper!63 baseZ!46 testedP!265) e!3189228)))

(declare-fun b!5113522 () Bool)

(assert (=> b!5113522 (= e!3189228 (derivationZipper!63 (derivationStepZipper!799 baseZ!46 (h!65546 testedP!265)) (t!372223 testedP!265)))))

(declare-fun b!5113523 () Bool)

(assert (=> b!5113523 (= e!3189228 baseZ!46)))

(assert (= (and d!1652580 c!878574) b!5113522))

(assert (= (and d!1652580 (not c!878574)) b!5113523))

(declare-fun m!6171796 () Bool)

(assert (=> b!5113522 m!6171796))

(assert (=> b!5113522 m!6171796))

(declare-fun m!6171798 () Bool)

(assert (=> b!5113522 m!6171798))

(assert (=> b!5113413 d!1652580))

(declare-fun b!5113534 () Bool)

(declare-fun e!3189235 () Bool)

(assert (=> b!5113534 (= e!3189235 (isPrefix!5569 (tail!10033 testedP!265) (tail!10033 input!5745)))))

(declare-fun b!5113532 () Bool)

(declare-fun e!3189236 () Bool)

(assert (=> b!5113532 (= e!3189236 e!3189235)))

(declare-fun res!2176736 () Bool)

(assert (=> b!5113532 (=> (not res!2176736) (not e!3189235))))

(assert (=> b!5113532 (= res!2176736 (not (is-Nil!59098 input!5745)))))

(declare-fun b!5113535 () Bool)

(declare-fun e!3189237 () Bool)

(assert (=> b!5113535 (= e!3189237 (>= (size!39470 input!5745) (size!39470 testedP!265)))))

(declare-fun d!1652582 () Bool)

(assert (=> d!1652582 e!3189237))

(declare-fun res!2176734 () Bool)

(assert (=> d!1652582 (=> res!2176734 e!3189237)))

(declare-fun lt!2106414 () Bool)

(assert (=> d!1652582 (= res!2176734 (not lt!2106414))))

(assert (=> d!1652582 (= lt!2106414 e!3189236)))

(declare-fun res!2176733 () Bool)

(assert (=> d!1652582 (=> res!2176733 e!3189236)))

(assert (=> d!1652582 (= res!2176733 (is-Nil!59098 testedP!265))))

(assert (=> d!1652582 (= (isPrefix!5569 testedP!265 input!5745) lt!2106414)))

(declare-fun b!5113533 () Bool)

(declare-fun res!2176735 () Bool)

(assert (=> b!5113533 (=> (not res!2176735) (not e!3189235))))

(assert (=> b!5113533 (= res!2176735 (= (head!10892 testedP!265) (head!10892 input!5745)))))

(assert (= (and d!1652582 (not res!2176733)) b!5113532))

(assert (= (and b!5113532 res!2176736) b!5113533))

(assert (= (and b!5113533 res!2176735) b!5113534))

(assert (= (and d!1652582 (not res!2176734)) b!5113535))

(declare-fun m!6171800 () Bool)

(assert (=> b!5113534 m!6171800))

(declare-fun m!6171802 () Bool)

(assert (=> b!5113534 m!6171802))

(assert (=> b!5113534 m!6171800))

(assert (=> b!5113534 m!6171802))

(declare-fun m!6171804 () Bool)

(assert (=> b!5113534 m!6171804))

(assert (=> b!5113535 m!6171640))

(assert (=> b!5113535 m!6171666))

(declare-fun m!6171806 () Bool)

(assert (=> b!5113533 m!6171806))

(declare-fun m!6171808 () Bool)

(assert (=> b!5113533 m!6171808))

(assert (=> start!539414 d!1652582))

(declare-fun d!1652584 () Bool)

(assert (=> d!1652584 (= (head!10892 lt!2106336) (h!65546 lt!2106336))))

(assert (=> b!5113429 d!1652584))

(declare-fun d!1652586 () Bool)

(assert (=> d!1652586 (= lt!2106331 lt!2106340)))

(declare-fun lt!2106417 () Unit!150211)

(declare-fun choose!37518 (List!59222 List!59222 List!59222 List!59222 List!59222) Unit!150211)

(assert (=> d!1652586 (= lt!2106417 (choose!37518 testedP!265 lt!2106331 testedP!265 lt!2106340 input!5745))))

(assert (=> d!1652586 (isPrefix!5569 testedP!265 input!5745)))

(assert (=> d!1652586 (= (lemmaSamePrefixThenSameSuffix!2615 testedP!265 lt!2106331 testedP!265 lt!2106340 input!5745) lt!2106417)))

(declare-fun bs!1192212 () Bool)

(assert (= bs!1192212 d!1652586))

(declare-fun m!6171810 () Bool)

(assert (=> bs!1192212 m!6171810))

(assert (=> bs!1192212 m!6171670))

(assert (=> b!5113429 d!1652586))

(declare-fun b!5113538 () Bool)

(declare-fun res!2176738 () Bool)

(declare-fun e!3189239 () Bool)

(assert (=> b!5113538 (=> (not res!2176738) (not e!3189239))))

(declare-fun lt!2106418 () List!59222)

(assert (=> b!5113538 (= res!2176738 (= (size!39470 lt!2106418) (+ (size!39470 lt!2106339) (size!39470 lt!2106327))))))

(declare-fun b!5113537 () Bool)

(declare-fun e!3189238 () List!59222)

(assert (=> b!5113537 (= e!3189238 (Cons!59098 (h!65546 lt!2106339) (++!12989 (t!372223 lt!2106339) lt!2106327)))))

(declare-fun d!1652588 () Bool)

(assert (=> d!1652588 e!3189239))

(declare-fun res!2176737 () Bool)

(assert (=> d!1652588 (=> (not res!2176737) (not e!3189239))))

(assert (=> d!1652588 (= res!2176737 (= (content!10504 lt!2106418) (set.union (content!10504 lt!2106339) (content!10504 lt!2106327))))))

(assert (=> d!1652588 (= lt!2106418 e!3189238)))

(declare-fun c!878575 () Bool)

(assert (=> d!1652588 (= c!878575 (is-Nil!59098 lt!2106339))))

(assert (=> d!1652588 (= (++!12989 lt!2106339 lt!2106327) lt!2106418)))

(declare-fun b!5113539 () Bool)

(assert (=> b!5113539 (= e!3189239 (or (not (= lt!2106327 Nil!59098)) (= lt!2106418 lt!2106339)))))

(declare-fun b!5113536 () Bool)

(assert (=> b!5113536 (= e!3189238 lt!2106327)))

(assert (= (and d!1652588 c!878575) b!5113536))

(assert (= (and d!1652588 (not c!878575)) b!5113537))

(assert (= (and d!1652588 res!2176737) b!5113538))

(assert (= (and b!5113538 res!2176738) b!5113539))

(declare-fun m!6171812 () Bool)

(assert (=> b!5113538 m!6171812))

(declare-fun m!6171814 () Bool)

(assert (=> b!5113538 m!6171814))

(assert (=> b!5113538 m!6171778))

(declare-fun m!6171816 () Bool)

(assert (=> b!5113537 m!6171816))

(declare-fun m!6171818 () Bool)

(assert (=> d!1652588 m!6171818))

(declare-fun m!6171820 () Bool)

(assert (=> d!1652588 m!6171820))

(assert (=> d!1652588 m!6171786))

(assert (=> b!5113412 d!1652588))

(declare-fun b!5113542 () Bool)

(declare-fun res!2176740 () Bool)

(declare-fun e!3189241 () Bool)

(assert (=> b!5113542 (=> (not res!2176740) (not e!3189241))))

(declare-fun lt!2106419 () List!59222)

(assert (=> b!5113542 (= res!2176740 (= (size!39470 lt!2106419) (+ (size!39470 testedP!265) (size!39470 lt!2106336))))))

(declare-fun b!5113541 () Bool)

(declare-fun e!3189240 () List!59222)

(assert (=> b!5113541 (= e!3189240 (Cons!59098 (h!65546 testedP!265) (++!12989 (t!372223 testedP!265) lt!2106336)))))

(declare-fun d!1652590 () Bool)

(assert (=> d!1652590 e!3189241))

(declare-fun res!2176739 () Bool)

(assert (=> d!1652590 (=> (not res!2176739) (not e!3189241))))

(assert (=> d!1652590 (= res!2176739 (= (content!10504 lt!2106419) (set.union (content!10504 testedP!265) (content!10504 lt!2106336))))))

(assert (=> d!1652590 (= lt!2106419 e!3189240)))

(declare-fun c!878576 () Bool)

(assert (=> d!1652590 (= c!878576 (is-Nil!59098 testedP!265))))

(assert (=> d!1652590 (= (++!12989 testedP!265 lt!2106336) lt!2106419)))

(declare-fun b!5113543 () Bool)

(assert (=> b!5113543 (= e!3189241 (or (not (= lt!2106336 Nil!59098)) (= lt!2106419 testedP!265)))))

(declare-fun b!5113540 () Bool)

(assert (=> b!5113540 (= e!3189240 lt!2106336)))

(assert (= (and d!1652590 c!878576) b!5113540))

(assert (= (and d!1652590 (not c!878576)) b!5113541))

(assert (= (and d!1652590 res!2176739) b!5113542))

(assert (= (and b!5113542 res!2176740) b!5113543))

(declare-fun m!6171822 () Bool)

(assert (=> b!5113542 m!6171822))

(assert (=> b!5113542 m!6171666))

(assert (=> b!5113542 m!6171776))

(declare-fun m!6171824 () Bool)

(assert (=> b!5113541 m!6171824))

(declare-fun m!6171826 () Bool)

(assert (=> d!1652590 m!6171826))

(assert (=> d!1652590 m!6171770))

(assert (=> d!1652590 m!6171784))

(assert (=> b!5113412 d!1652590))

(declare-fun bs!1192213 () Bool)

(declare-fun b!5113548 () Bool)

(declare-fun d!1652592 () Bool)

(assert (= bs!1192213 (and b!5113548 d!1652592)))

(declare-fun lambda!250631 () Int)

(declare-fun lambda!250630 () Int)

(assert (=> bs!1192213 (not (= lambda!250631 lambda!250630))))

(declare-fun bs!1192214 () Bool)

(declare-fun b!5113549 () Bool)

(assert (= bs!1192214 (and b!5113549 d!1652592)))

(declare-fun lambda!250632 () Int)

(assert (=> bs!1192214 (not (= lambda!250632 lambda!250630))))

(declare-fun bs!1192215 () Bool)

(assert (= bs!1192215 (and b!5113549 b!5113548)))

(assert (=> bs!1192215 (= lambda!250632 lambda!250631)))

(declare-fun e!3189248 () Unit!150211)

(declare-fun Unit!150215 () Unit!150211)

(assert (=> b!5113549 (= e!3189248 Unit!150215)))

(declare-datatypes ((List!59225 0))(
  ( (Nil!59101) (Cons!59101 (h!65549 Context!7096) (t!372227 List!59225)) )
))
(declare-fun lt!2106438 () List!59225)

(declare-fun call!356454 () List!59225)

(assert (=> b!5113549 (= lt!2106438 call!356454)))

(declare-fun lt!2106440 () Unit!150211)

(declare-fun lemmaForallThenNotExists!294 (List!59225 Int) Unit!150211)

(assert (=> b!5113549 (= lt!2106440 (lemmaForallThenNotExists!294 lt!2106438 lambda!250630))))

(declare-fun call!356455 () Bool)

(assert (=> b!5113549 (not call!356455)))

(declare-fun lt!2106439 () Unit!150211)

(assert (=> b!5113549 (= lt!2106439 lt!2106440)))

(declare-fun bm!356449 () Bool)

(declare-fun toList!8237 ((Set Context!7096)) List!59225)

(assert (=> bm!356449 (= call!356454 (toList!8237 z!4463))))

(declare-fun lt!2106441 () Bool)

(declare-datatypes ((Option!14671 0))(
  ( (None!14670) (Some!14670 (v!50683 List!59222)) )
))
(declare-fun isEmpty!31882 (Option!14671) Bool)

(declare-fun getLanguageWitness!788 ((Set Context!7096)) Option!14671)

(assert (=> d!1652592 (= lt!2106441 (isEmpty!31882 (getLanguageWitness!788 z!4463)))))

(declare-fun forall!13558 ((Set Context!7096) Int) Bool)

(assert (=> d!1652592 (= lt!2106441 (forall!13558 z!4463 lambda!250630))))

(declare-fun lt!2106443 () Unit!150211)

(assert (=> d!1652592 (= lt!2106443 e!3189248)))

(declare-fun c!878587 () Bool)

(assert (=> d!1652592 (= c!878587 (not (forall!13558 z!4463 lambda!250630)))))

(assert (=> d!1652592 (= (lostCauseZipper!1050 z!4463) lt!2106441)))

(declare-fun Unit!150216 () Unit!150211)

(assert (=> b!5113548 (= e!3189248 Unit!150216)))

(declare-fun lt!2106437 () List!59225)

(assert (=> b!5113548 (= lt!2106437 call!356454)))

(declare-fun lt!2106442 () Unit!150211)

(declare-fun lemmaNotForallThenExists!311 (List!59225 Int) Unit!150211)

(assert (=> b!5113548 (= lt!2106442 (lemmaNotForallThenExists!311 lt!2106437 lambda!250630))))

(assert (=> b!5113548 call!356455))

(declare-fun lt!2106436 () Unit!150211)

(assert (=> b!5113548 (= lt!2106436 lt!2106442)))

(declare-fun bm!356450 () Bool)

(declare-fun exists!1448 (List!59225 Int) Bool)

(assert (=> bm!356450 (= call!356455 (exists!1448 (ite c!878587 lt!2106437 lt!2106438) (ite c!878587 lambda!250631 lambda!250632)))))

(assert (= (and d!1652592 c!878587) b!5113548))

(assert (= (and d!1652592 (not c!878587)) b!5113549))

(assert (= (or b!5113548 b!5113549) bm!356449))

(assert (= (or b!5113548 b!5113549) bm!356450))

(declare-fun m!6171828 () Bool)

(assert (=> b!5113549 m!6171828))

(declare-fun m!6171830 () Bool)

(assert (=> d!1652592 m!6171830))

(assert (=> d!1652592 m!6171830))

(declare-fun m!6171832 () Bool)

(assert (=> d!1652592 m!6171832))

(declare-fun m!6171834 () Bool)

(assert (=> d!1652592 m!6171834))

(assert (=> d!1652592 m!6171834))

(declare-fun m!6171836 () Bool)

(assert (=> bm!356449 m!6171836))

(declare-fun m!6171838 () Bool)

(assert (=> bm!356450 m!6171838))

(declare-fun m!6171840 () Bool)

(assert (=> b!5113548 m!6171840))

(assert (=> b!5113422 d!1652592))

(declare-fun b!5113552 () Bool)

(declare-fun e!3189249 () Bool)

(assert (=> b!5113552 (= e!3189249 (isPrefix!5569 (tail!10033 knownP!20) (tail!10033 input!5745)))))

(declare-fun b!5113550 () Bool)

(declare-fun e!3189250 () Bool)

(assert (=> b!5113550 (= e!3189250 e!3189249)))

(declare-fun res!2176744 () Bool)

(assert (=> b!5113550 (=> (not res!2176744) (not e!3189249))))

(assert (=> b!5113550 (= res!2176744 (not (is-Nil!59098 input!5745)))))

(declare-fun b!5113553 () Bool)

(declare-fun e!3189251 () Bool)

(assert (=> b!5113553 (= e!3189251 (>= (size!39470 input!5745) (size!39470 knownP!20)))))

(declare-fun d!1652594 () Bool)

(assert (=> d!1652594 e!3189251))

(declare-fun res!2176742 () Bool)

(assert (=> d!1652594 (=> res!2176742 e!3189251)))

(declare-fun lt!2106444 () Bool)

(assert (=> d!1652594 (= res!2176742 (not lt!2106444))))

(assert (=> d!1652594 (= lt!2106444 e!3189250)))

(declare-fun res!2176741 () Bool)

(assert (=> d!1652594 (=> res!2176741 e!3189250)))

(assert (=> d!1652594 (= res!2176741 (is-Nil!59098 knownP!20))))

(assert (=> d!1652594 (= (isPrefix!5569 knownP!20 input!5745) lt!2106444)))

(declare-fun b!5113551 () Bool)

(declare-fun res!2176743 () Bool)

(assert (=> b!5113551 (=> (not res!2176743) (not e!3189249))))

(assert (=> b!5113551 (= res!2176743 (= (head!10892 knownP!20) (head!10892 input!5745)))))

(assert (= (and d!1652594 (not res!2176741)) b!5113550))

(assert (= (and b!5113550 res!2176744) b!5113551))

(assert (= (and b!5113551 res!2176743) b!5113552))

(assert (= (and d!1652594 (not res!2176742)) b!5113553))

(declare-fun m!6171842 () Bool)

(assert (=> b!5113552 m!6171842))

(assert (=> b!5113552 m!6171802))

(assert (=> b!5113552 m!6171842))

(assert (=> b!5113552 m!6171802))

(declare-fun m!6171844 () Bool)

(assert (=> b!5113552 m!6171844))

(assert (=> b!5113553 m!6171640))

(assert (=> b!5113553 m!6171668))

(declare-fun m!6171846 () Bool)

(assert (=> b!5113551 m!6171846))

(assert (=> b!5113551 m!6171808))

(assert (=> b!5113428 d!1652594))

(declare-fun d!1652596 () Bool)

(declare-fun c!878590 () Bool)

(declare-fun isEmpty!31883 (List!59222) Bool)

(assert (=> d!1652596 (= c!878590 (isEmpty!31883 lt!2106336))))

(declare-fun e!3189254 () Bool)

(assert (=> d!1652596 (= (matchZipper!832 z!4463 lt!2106336) e!3189254)))

(declare-fun b!5113558 () Bool)

(declare-fun nullableZipper!1001 ((Set Context!7096)) Bool)

(assert (=> b!5113558 (= e!3189254 (nullableZipper!1001 z!4463))))

(declare-fun b!5113559 () Bool)

(assert (=> b!5113559 (= e!3189254 (matchZipper!832 (derivationStepZipper!799 z!4463 (head!10892 lt!2106336)) (tail!10033 lt!2106336)))))

(assert (= (and d!1652596 c!878590) b!5113558))

(assert (= (and d!1652596 (not c!878590)) b!5113559))

(declare-fun m!6171848 () Bool)

(assert (=> d!1652596 m!6171848))

(declare-fun m!6171850 () Bool)

(assert (=> b!5113558 m!6171850))

(assert (=> b!5113559 m!6171654))

(assert (=> b!5113559 m!6171654))

(declare-fun m!6171852 () Bool)

(assert (=> b!5113559 m!6171852))

(assert (=> b!5113559 m!6171650))

(assert (=> b!5113559 m!6171852))

(assert (=> b!5113559 m!6171650))

(declare-fun m!6171854 () Bool)

(assert (=> b!5113559 m!6171854))

(assert (=> b!5113411 d!1652596))

(declare-fun d!1652598 () Bool)

(declare-fun lt!2106447 () List!59222)

(assert (=> d!1652598 (= (++!12989 testedP!265 lt!2106447) knownP!20)))

(declare-fun e!3189257 () List!59222)

(assert (=> d!1652598 (= lt!2106447 e!3189257)))

(declare-fun c!878593 () Bool)

(assert (=> d!1652598 (= c!878593 (is-Cons!59098 testedP!265))))

(assert (=> d!1652598 (>= (size!39470 knownP!20) (size!39470 testedP!265))))

(assert (=> d!1652598 (= (getSuffix!3243 knownP!20 testedP!265) lt!2106447)))

(declare-fun b!5113564 () Bool)

(assert (=> b!5113564 (= e!3189257 (getSuffix!3243 (tail!10033 knownP!20) (t!372223 testedP!265)))))

(declare-fun b!5113565 () Bool)

(assert (=> b!5113565 (= e!3189257 knownP!20)))

(assert (= (and d!1652598 c!878593) b!5113564))

(assert (= (and d!1652598 (not c!878593)) b!5113565))

(declare-fun m!6171856 () Bool)

(assert (=> d!1652598 m!6171856))

(assert (=> d!1652598 m!6171668))

(assert (=> d!1652598 m!6171666))

(assert (=> b!5113564 m!6171842))

(assert (=> b!5113564 m!6171842))

(declare-fun m!6171858 () Bool)

(assert (=> b!5113564 m!6171858))

(assert (=> b!5113411 d!1652598))

(declare-fun b!5113568 () Bool)

(declare-fun e!3189258 () Bool)

(assert (=> b!5113568 (= e!3189258 (isPrefix!5569 (tail!10033 testedP!265) (tail!10033 knownP!20)))))

(declare-fun b!5113566 () Bool)

(declare-fun e!3189259 () Bool)

(assert (=> b!5113566 (= e!3189259 e!3189258)))

(declare-fun res!2176748 () Bool)

(assert (=> b!5113566 (=> (not res!2176748) (not e!3189258))))

(assert (=> b!5113566 (= res!2176748 (not (is-Nil!59098 knownP!20)))))

(declare-fun b!5113569 () Bool)

(declare-fun e!3189260 () Bool)

(assert (=> b!5113569 (= e!3189260 (>= (size!39470 knownP!20) (size!39470 testedP!265)))))

(declare-fun d!1652600 () Bool)

(assert (=> d!1652600 e!3189260))

(declare-fun res!2176746 () Bool)

(assert (=> d!1652600 (=> res!2176746 e!3189260)))

(declare-fun lt!2106448 () Bool)

(assert (=> d!1652600 (= res!2176746 (not lt!2106448))))

(assert (=> d!1652600 (= lt!2106448 e!3189259)))

(declare-fun res!2176745 () Bool)

(assert (=> d!1652600 (=> res!2176745 e!3189259)))

(assert (=> d!1652600 (= res!2176745 (is-Nil!59098 testedP!265))))

(assert (=> d!1652600 (= (isPrefix!5569 testedP!265 knownP!20) lt!2106448)))

(declare-fun b!5113567 () Bool)

(declare-fun res!2176747 () Bool)

(assert (=> b!5113567 (=> (not res!2176747) (not e!3189258))))

(assert (=> b!5113567 (= res!2176747 (= (head!10892 testedP!265) (head!10892 knownP!20)))))

(assert (= (and d!1652600 (not res!2176745)) b!5113566))

(assert (= (and b!5113566 res!2176748) b!5113567))

(assert (= (and b!5113567 res!2176747) b!5113568))

(assert (= (and d!1652600 (not res!2176746)) b!5113569))

(assert (=> b!5113568 m!6171800))

(assert (=> b!5113568 m!6171842))

(assert (=> b!5113568 m!6171800))

(assert (=> b!5113568 m!6171842))

(declare-fun m!6171860 () Bool)

(assert (=> b!5113568 m!6171860))

(assert (=> b!5113569 m!6171668))

(assert (=> b!5113569 m!6171666))

(assert (=> b!5113567 m!6171806))

(assert (=> b!5113567 m!6171846))

(assert (=> b!5113411 d!1652600))

(declare-fun d!1652602 () Bool)

(assert (=> d!1652602 (isPrefix!5569 testedP!265 knownP!20)))

(declare-fun lt!2106451 () Unit!150211)

(declare-fun choose!37519 (List!59222 List!59222 List!59222) Unit!150211)

(assert (=> d!1652602 (= lt!2106451 (choose!37519 knownP!20 testedP!265 input!5745))))

(assert (=> d!1652602 (isPrefix!5569 knownP!20 input!5745)))

(assert (=> d!1652602 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!706 knownP!20 testedP!265 input!5745) lt!2106451)))

(declare-fun bs!1192216 () Bool)

(assert (= bs!1192216 d!1652602))

(assert (=> bs!1192216 m!6171662))

(declare-fun m!6171862 () Bool)

(assert (=> bs!1192216 m!6171862))

(assert (=> bs!1192216 m!6171642))

(assert (=> b!5113411 d!1652602))

(declare-fun d!1652604 () Bool)

(declare-fun c!878594 () Bool)

(assert (=> d!1652604 (= c!878594 (isEmpty!31883 knownP!20))))

(declare-fun e!3189261 () Bool)

(assert (=> d!1652604 (= (matchZipper!832 baseZ!46 knownP!20) e!3189261)))

(declare-fun b!5113570 () Bool)

(assert (=> b!5113570 (= e!3189261 (nullableZipper!1001 baseZ!46))))

(declare-fun b!5113571 () Bool)

(assert (=> b!5113571 (= e!3189261 (matchZipper!832 (derivationStepZipper!799 baseZ!46 (head!10892 knownP!20)) (tail!10033 knownP!20)))))

(assert (= (and d!1652604 c!878594) b!5113570))

(assert (= (and d!1652604 (not c!878594)) b!5113571))

(declare-fun m!6171864 () Bool)

(assert (=> d!1652604 m!6171864))

(declare-fun m!6171866 () Bool)

(assert (=> b!5113570 m!6171866))

(assert (=> b!5113571 m!6171846))

(assert (=> b!5113571 m!6171846))

(declare-fun m!6171868 () Bool)

(assert (=> b!5113571 m!6171868))

(assert (=> b!5113571 m!6171842))

(assert (=> b!5113571 m!6171868))

(assert (=> b!5113571 m!6171842))

(declare-fun m!6171870 () Bool)

(assert (=> b!5113571 m!6171870))

(assert (=> b!5113410 d!1652604))

(declare-fun bs!1192217 () Bool)

(declare-fun d!1652606 () Bool)

(assert (= bs!1192217 (and d!1652606 d!1652578)))

(declare-fun lambda!250633 () Int)

(assert (=> bs!1192217 (= lambda!250633 lambda!250617)))

(assert (=> d!1652606 (= (inv!78592 setElem!29916) (forall!13557 (exprs!4048 setElem!29916) lambda!250633))))

(declare-fun bs!1192218 () Bool)

(assert (= bs!1192218 d!1652606))

(declare-fun m!6171872 () Bool)

(assert (=> bs!1192218 m!6171872))

(assert (=> setNonEmpty!29916 d!1652606))

(declare-fun b!5113574 () Bool)

(declare-fun res!2176750 () Bool)

(declare-fun e!3189263 () Bool)

(assert (=> b!5113574 (=> (not res!2176750) (not e!3189263))))

(declare-fun lt!2106452 () List!59222)

(assert (=> b!5113574 (= res!2176750 (= (size!39470 lt!2106452) (+ (size!39470 testedP!265) (size!39470 lt!2106340))))))

(declare-fun b!5113573 () Bool)

(declare-fun e!3189262 () List!59222)

(assert (=> b!5113573 (= e!3189262 (Cons!59098 (h!65546 testedP!265) (++!12989 (t!372223 testedP!265) lt!2106340)))))

(declare-fun d!1652608 () Bool)

(assert (=> d!1652608 e!3189263))

(declare-fun res!2176749 () Bool)

(assert (=> d!1652608 (=> (not res!2176749) (not e!3189263))))

(assert (=> d!1652608 (= res!2176749 (= (content!10504 lt!2106452) (set.union (content!10504 testedP!265) (content!10504 lt!2106340))))))

(assert (=> d!1652608 (= lt!2106452 e!3189262)))

(declare-fun c!878595 () Bool)

(assert (=> d!1652608 (= c!878595 (is-Nil!59098 testedP!265))))

(assert (=> d!1652608 (= (++!12989 testedP!265 lt!2106340) lt!2106452)))

(declare-fun b!5113575 () Bool)

(assert (=> b!5113575 (= e!3189263 (or (not (= lt!2106340 Nil!59098)) (= lt!2106452 testedP!265)))))

(declare-fun b!5113572 () Bool)

(assert (=> b!5113572 (= e!3189262 lt!2106340)))

(assert (= (and d!1652608 c!878595) b!5113572))

(assert (= (and d!1652608 (not c!878595)) b!5113573))

(assert (= (and d!1652608 res!2176749) b!5113574))

(assert (= (and b!5113574 res!2176750) b!5113575))

(declare-fun m!6171874 () Bool)

(assert (=> b!5113574 m!6171874))

(assert (=> b!5113574 m!6171666))

(declare-fun m!6171876 () Bool)

(assert (=> b!5113574 m!6171876))

(declare-fun m!6171878 () Bool)

(assert (=> b!5113573 m!6171878))

(declare-fun m!6171880 () Bool)

(assert (=> d!1652608 m!6171880))

(assert (=> d!1652608 m!6171770))

(declare-fun m!6171882 () Bool)

(assert (=> d!1652608 m!6171882))

(assert (=> b!5113418 d!1652608))

(declare-fun d!1652610 () Bool)

(declare-fun lt!2106453 () Int)

(assert (=> d!1652610 (>= lt!2106453 0)))

(declare-fun e!3189264 () Int)

(assert (=> d!1652610 (= lt!2106453 e!3189264)))

(declare-fun c!878596 () Bool)

(assert (=> d!1652610 (= c!878596 (is-Nil!59098 input!5745))))

(assert (=> d!1652610 (= (size!39470 input!5745) lt!2106453)))

(declare-fun b!5113576 () Bool)

(assert (=> b!5113576 (= e!3189264 0)))

(declare-fun b!5113577 () Bool)

(assert (=> b!5113577 (= e!3189264 (+ 1 (size!39470 (t!372223 input!5745))))))

(assert (= (and d!1652610 c!878596) b!5113576))

(assert (= (and d!1652610 (not c!878596)) b!5113577))

(declare-fun m!6171884 () Bool)

(assert (=> b!5113577 m!6171884))

(assert (=> b!5113426 d!1652610))

(declare-fun b!5113580 () Bool)

(declare-fun e!3189265 () Bool)

(assert (=> b!5113580 (= e!3189265 (isPrefix!5569 (tail!10033 lt!2106325) (tail!10033 knownP!20)))))

(declare-fun b!5113578 () Bool)

(declare-fun e!3189266 () Bool)

(assert (=> b!5113578 (= e!3189266 e!3189265)))

(declare-fun res!2176754 () Bool)

(assert (=> b!5113578 (=> (not res!2176754) (not e!3189265))))

(assert (=> b!5113578 (= res!2176754 (not (is-Nil!59098 knownP!20)))))

(declare-fun b!5113581 () Bool)

(declare-fun e!3189267 () Bool)

(assert (=> b!5113581 (= e!3189267 (>= (size!39470 knownP!20) (size!39470 lt!2106325)))))

(declare-fun d!1652612 () Bool)

(assert (=> d!1652612 e!3189267))

(declare-fun res!2176752 () Bool)

(assert (=> d!1652612 (=> res!2176752 e!3189267)))

(declare-fun lt!2106454 () Bool)

(assert (=> d!1652612 (= res!2176752 (not lt!2106454))))

(assert (=> d!1652612 (= lt!2106454 e!3189266)))

(declare-fun res!2176751 () Bool)

(assert (=> d!1652612 (=> res!2176751 e!3189266)))

(assert (=> d!1652612 (= res!2176751 (is-Nil!59098 lt!2106325))))

(assert (=> d!1652612 (= (isPrefix!5569 lt!2106325 knownP!20) lt!2106454)))

(declare-fun b!5113579 () Bool)

(declare-fun res!2176753 () Bool)

(assert (=> b!5113579 (=> (not res!2176753) (not e!3189265))))

(assert (=> b!5113579 (= res!2176753 (= (head!10892 lt!2106325) (head!10892 knownP!20)))))

(assert (= (and d!1652612 (not res!2176751)) b!5113578))

(assert (= (and b!5113578 res!2176754) b!5113579))

(assert (= (and b!5113579 res!2176753) b!5113580))

(assert (= (and d!1652612 (not res!2176752)) b!5113581))

(declare-fun m!6171886 () Bool)

(assert (=> b!5113580 m!6171886))

(assert (=> b!5113580 m!6171842))

(assert (=> b!5113580 m!6171886))

(assert (=> b!5113580 m!6171842))

(declare-fun m!6171888 () Bool)

(assert (=> b!5113580 m!6171888))

(assert (=> b!5113581 m!6171668))

(declare-fun m!6171890 () Bool)

(assert (=> b!5113581 m!6171890))

(declare-fun m!6171892 () Bool)

(assert (=> b!5113579 m!6171892))

(assert (=> b!5113579 m!6171846))

(assert (=> b!5113416 d!1652612))

(declare-fun b!5113584 () Bool)

(declare-fun res!2176756 () Bool)

(declare-fun e!3189269 () Bool)

(assert (=> b!5113584 (=> (not res!2176756) (not e!3189269))))

(declare-fun lt!2106455 () List!59222)

(assert (=> b!5113584 (= res!2176756 (= (size!39470 lt!2106455) (+ (size!39470 testedP!265) (size!39470 (Cons!59098 lt!2106334 Nil!59098)))))))

(declare-fun b!5113583 () Bool)

(declare-fun e!3189268 () List!59222)

(assert (=> b!5113583 (= e!3189268 (Cons!59098 (h!65546 testedP!265) (++!12989 (t!372223 testedP!265) (Cons!59098 lt!2106334 Nil!59098))))))

(declare-fun d!1652614 () Bool)

(assert (=> d!1652614 e!3189269))

(declare-fun res!2176755 () Bool)

(assert (=> d!1652614 (=> (not res!2176755) (not e!3189269))))

(assert (=> d!1652614 (= res!2176755 (= (content!10504 lt!2106455) (set.union (content!10504 testedP!265) (content!10504 (Cons!59098 lt!2106334 Nil!59098)))))))

(assert (=> d!1652614 (= lt!2106455 e!3189268)))

(declare-fun c!878597 () Bool)

(assert (=> d!1652614 (= c!878597 (is-Nil!59098 testedP!265))))

(assert (=> d!1652614 (= (++!12989 testedP!265 (Cons!59098 lt!2106334 Nil!59098)) lt!2106455)))

(declare-fun b!5113585 () Bool)

(assert (=> b!5113585 (= e!3189269 (or (not (= (Cons!59098 lt!2106334 Nil!59098) Nil!59098)) (= lt!2106455 testedP!265)))))

(declare-fun b!5113582 () Bool)

(assert (=> b!5113582 (= e!3189268 (Cons!59098 lt!2106334 Nil!59098))))

(assert (= (and d!1652614 c!878597) b!5113582))

(assert (= (and d!1652614 (not c!878597)) b!5113583))

(assert (= (and d!1652614 res!2176755) b!5113584))

(assert (= (and b!5113584 res!2176756) b!5113585))

(declare-fun m!6171894 () Bool)

(assert (=> b!5113584 m!6171894))

(assert (=> b!5113584 m!6171666))

(declare-fun m!6171896 () Bool)

(assert (=> b!5113584 m!6171896))

(declare-fun m!6171898 () Bool)

(assert (=> b!5113583 m!6171898))

(declare-fun m!6171900 () Bool)

(assert (=> d!1652614 m!6171900))

(assert (=> d!1652614 m!6171770))

(declare-fun m!6171902 () Bool)

(assert (=> d!1652614 m!6171902))

(assert (=> b!5113416 d!1652614))

(declare-fun b!5113588 () Bool)

(declare-fun e!3189270 () Bool)

(assert (=> b!5113588 (= e!3189270 (isPrefix!5569 (tail!10033 lt!2106325) (tail!10033 input!5745)))))

(declare-fun b!5113586 () Bool)

(declare-fun e!3189271 () Bool)

(assert (=> b!5113586 (= e!3189271 e!3189270)))

(declare-fun res!2176760 () Bool)

(assert (=> b!5113586 (=> (not res!2176760) (not e!3189270))))

(assert (=> b!5113586 (= res!2176760 (not (is-Nil!59098 input!5745)))))

(declare-fun b!5113589 () Bool)

(declare-fun e!3189272 () Bool)

(assert (=> b!5113589 (= e!3189272 (>= (size!39470 input!5745) (size!39470 lt!2106325)))))

(declare-fun d!1652616 () Bool)

(assert (=> d!1652616 e!3189272))

(declare-fun res!2176758 () Bool)

(assert (=> d!1652616 (=> res!2176758 e!3189272)))

(declare-fun lt!2106456 () Bool)

(assert (=> d!1652616 (= res!2176758 (not lt!2106456))))

(assert (=> d!1652616 (= lt!2106456 e!3189271)))

(declare-fun res!2176757 () Bool)

(assert (=> d!1652616 (=> res!2176757 e!3189271)))

(assert (=> d!1652616 (= res!2176757 (is-Nil!59098 lt!2106325))))

(assert (=> d!1652616 (= (isPrefix!5569 lt!2106325 input!5745) lt!2106456)))

(declare-fun b!5113587 () Bool)

(declare-fun res!2176759 () Bool)

(assert (=> b!5113587 (=> (not res!2176759) (not e!3189270))))

(assert (=> b!5113587 (= res!2176759 (= (head!10892 lt!2106325) (head!10892 input!5745)))))

(assert (= (and d!1652616 (not res!2176757)) b!5113586))

(assert (= (and b!5113586 res!2176760) b!5113587))

(assert (= (and b!5113587 res!2176759) b!5113588))

(assert (= (and d!1652616 (not res!2176758)) b!5113589))

(assert (=> b!5113588 m!6171886))

(assert (=> b!5113588 m!6171802))

(assert (=> b!5113588 m!6171886))

(assert (=> b!5113588 m!6171802))

(declare-fun m!6171904 () Bool)

(assert (=> b!5113588 m!6171904))

(assert (=> b!5113589 m!6171640))

(assert (=> b!5113589 m!6171890))

(assert (=> b!5113587 m!6171892))

(assert (=> b!5113587 m!6171808))

(assert (=> b!5113416 d!1652616))

(declare-fun d!1652618 () Bool)

(assert (=> d!1652618 (isPrefix!5569 lt!2106325 knownP!20)))

(declare-fun lt!2106457 () Unit!150211)

(assert (=> d!1652618 (= lt!2106457 (choose!37519 knownP!20 lt!2106325 input!5745))))

(assert (=> d!1652618 (isPrefix!5569 knownP!20 input!5745)))

(assert (=> d!1652618 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!706 knownP!20 lt!2106325 input!5745) lt!2106457)))

(declare-fun bs!1192219 () Bool)

(assert (= bs!1192219 d!1652618))

(assert (=> bs!1192219 m!6171620))

(declare-fun m!6171906 () Bool)

(assert (=> bs!1192219 m!6171906))

(assert (=> bs!1192219 m!6171642))

(assert (=> b!5113416 d!1652618))

(declare-fun d!1652620 () Bool)

(assert (=> d!1652620 (isPrefix!5569 (++!12989 testedP!265 (Cons!59098 (head!10892 (getSuffix!3243 input!5745 testedP!265)) Nil!59098)) input!5745)))

(declare-fun lt!2106460 () Unit!150211)

(declare-fun choose!37520 (List!59222 List!59222) Unit!150211)

(assert (=> d!1652620 (= lt!2106460 (choose!37520 testedP!265 input!5745))))

(assert (=> d!1652620 (isPrefix!5569 testedP!265 input!5745)))

(assert (=> d!1652620 (= (lemmaAddHeadSuffixToPrefixStillPrefix!959 testedP!265 input!5745) lt!2106460)))

(declare-fun bs!1192220 () Bool)

(assert (= bs!1192220 d!1652620))

(assert (=> bs!1192220 m!6171670))

(declare-fun m!6171908 () Bool)

(assert (=> bs!1192220 m!6171908))

(assert (=> bs!1192220 m!6171610))

(declare-fun m!6171910 () Bool)

(assert (=> bs!1192220 m!6171910))

(declare-fun m!6171912 () Bool)

(assert (=> bs!1192220 m!6171912))

(assert (=> bs!1192220 m!6171610))

(assert (=> bs!1192220 m!6171912))

(declare-fun m!6171914 () Bool)

(assert (=> bs!1192220 m!6171914))

(assert (=> b!5113416 d!1652620))

(declare-fun d!1652622 () Bool)

(assert (=> d!1652622 (= (head!10892 lt!2106340) (h!65546 lt!2106340))))

(assert (=> b!5113416 d!1652622))

(declare-fun d!1652624 () Bool)

(declare-fun lt!2106461 () List!59222)

(assert (=> d!1652624 (= (++!12989 knownP!20 lt!2106461) input!5745)))

(declare-fun e!3189273 () List!59222)

(assert (=> d!1652624 (= lt!2106461 e!3189273)))

(declare-fun c!878598 () Bool)

(assert (=> d!1652624 (= c!878598 (is-Cons!59098 knownP!20))))

(assert (=> d!1652624 (>= (size!39470 input!5745) (size!39470 knownP!20))))

(assert (=> d!1652624 (= (getSuffix!3243 input!5745 knownP!20) lt!2106461)))

(declare-fun b!5113590 () Bool)

(assert (=> b!5113590 (= e!3189273 (getSuffix!3243 (tail!10033 input!5745) (t!372223 knownP!20)))))

(declare-fun b!5113591 () Bool)

(assert (=> b!5113591 (= e!3189273 input!5745)))

(assert (= (and d!1652624 c!878598) b!5113590))

(assert (= (and d!1652624 (not c!878598)) b!5113591))

(declare-fun m!6171916 () Bool)

(assert (=> d!1652624 m!6171916))

(assert (=> d!1652624 m!6171640))

(assert (=> d!1652624 m!6171668))

(assert (=> b!5113590 m!6171802))

(assert (=> b!5113590 m!6171802))

(declare-fun m!6171918 () Bool)

(assert (=> b!5113590 m!6171918))

(assert (=> b!5113416 d!1652624))

(declare-fun d!1652626 () Bool)

(declare-fun lt!2106462 () List!59222)

(assert (=> d!1652626 (= (++!12989 testedP!265 lt!2106462) input!5745)))

(declare-fun e!3189274 () List!59222)

(assert (=> d!1652626 (= lt!2106462 e!3189274)))

(declare-fun c!878599 () Bool)

(assert (=> d!1652626 (= c!878599 (is-Cons!59098 testedP!265))))

(assert (=> d!1652626 (>= (size!39470 input!5745) (size!39470 testedP!265))))

(assert (=> d!1652626 (= (getSuffix!3243 input!5745 testedP!265) lt!2106462)))

(declare-fun b!5113592 () Bool)

(assert (=> b!5113592 (= e!3189274 (getSuffix!3243 (tail!10033 input!5745) (t!372223 testedP!265)))))

(declare-fun b!5113593 () Bool)

(assert (=> b!5113593 (= e!3189274 input!5745)))

(assert (= (and d!1652626 c!878599) b!5113592))

(assert (= (and d!1652626 (not c!878599)) b!5113593))

(declare-fun m!6171920 () Bool)

(assert (=> d!1652626 m!6171920))

(assert (=> d!1652626 m!6171640))

(assert (=> d!1652626 m!6171666))

(assert (=> b!5113592 m!6171802))

(assert (=> b!5113592 m!6171802))

(declare-fun m!6171922 () Bool)

(assert (=> b!5113592 m!6171922))

(assert (=> b!5113416 d!1652626))

(declare-fun d!1652628 () Bool)

(assert (=> d!1652628 true))

(declare-fun lambda!250636 () Int)

(declare-fun flatMap!335 ((Set Context!7096) Int) (Set Context!7096))

(assert (=> d!1652628 (= (derivationStepZipper!799 z!4463 lt!2106334) (flatMap!335 z!4463 lambda!250636))))

(declare-fun bs!1192221 () Bool)

(assert (= bs!1192221 d!1652628))

(declare-fun m!6171924 () Bool)

(assert (=> bs!1192221 m!6171924))

(assert (=> b!5113416 d!1652628))

(declare-fun d!1652630 () Bool)

(assert (=> d!1652630 (= (derivationZipper!63 baseZ!46 (++!12989 testedP!265 (Cons!59098 lt!2106334 Nil!59098))) (derivationStepZipper!799 z!4463 lt!2106334))))

(declare-fun lt!2106465 () Unit!150211)

(declare-fun choose!37521 ((Set Context!7096) (Set Context!7096) List!59222 C!28594) Unit!150211)

(assert (=> d!1652630 (= lt!2106465 (choose!37521 baseZ!46 z!4463 testedP!265 lt!2106334))))

(assert (=> d!1652630 (= (derivationZipper!63 baseZ!46 testedP!265) z!4463)))

(assert (=> d!1652630 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!24 baseZ!46 z!4463 testedP!265 lt!2106334) lt!2106465)))

(declare-fun bs!1192222 () Bool)

(assert (= bs!1192222 d!1652630))

(declare-fun m!6171926 () Bool)

(assert (=> bs!1192222 m!6171926))

(assert (=> bs!1192222 m!6171634))

(assert (=> bs!1192222 m!6171622))

(declare-fun m!6171928 () Bool)

(assert (=> bs!1192222 m!6171928))

(assert (=> bs!1192222 m!6171622))

(assert (=> bs!1192222 m!6171638))

(assert (=> b!5113416 d!1652630))

(declare-fun b!5113598 () Bool)

(declare-fun res!2176762 () Bool)

(declare-fun e!3189276 () Bool)

(assert (=> b!5113598 (=> (not res!2176762) (not e!3189276))))

(declare-fun lt!2106466 () List!59222)

(assert (=> b!5113598 (= res!2176762 (= (size!39470 lt!2106466) (+ (size!39470 knownP!20) (size!39470 lt!2106327))))))

(declare-fun b!5113597 () Bool)

(declare-fun e!3189275 () List!59222)

(assert (=> b!5113597 (= e!3189275 (Cons!59098 (h!65546 knownP!20) (++!12989 (t!372223 knownP!20) lt!2106327)))))

(declare-fun d!1652632 () Bool)

(assert (=> d!1652632 e!3189276))

(declare-fun res!2176761 () Bool)

(assert (=> d!1652632 (=> (not res!2176761) (not e!3189276))))

(assert (=> d!1652632 (= res!2176761 (= (content!10504 lt!2106466) (set.union (content!10504 knownP!20) (content!10504 lt!2106327))))))

(assert (=> d!1652632 (= lt!2106466 e!3189275)))

(declare-fun c!878603 () Bool)

(assert (=> d!1652632 (= c!878603 (is-Nil!59098 knownP!20))))

(assert (=> d!1652632 (= (++!12989 knownP!20 lt!2106327) lt!2106466)))

(declare-fun b!5113599 () Bool)

(assert (=> b!5113599 (= e!3189276 (or (not (= lt!2106327 Nil!59098)) (= lt!2106466 knownP!20)))))

(declare-fun b!5113596 () Bool)

(assert (=> b!5113596 (= e!3189275 lt!2106327)))

(assert (= (and d!1652632 c!878603) b!5113596))

(assert (= (and d!1652632 (not c!878603)) b!5113597))

(assert (= (and d!1652632 res!2176761) b!5113598))

(assert (= (and b!5113598 res!2176762) b!5113599))

(declare-fun m!6171930 () Bool)

(assert (=> b!5113598 m!6171930))

(assert (=> b!5113598 m!6171668))

(assert (=> b!5113598 m!6171778))

(declare-fun m!6171932 () Bool)

(assert (=> b!5113597 m!6171932))

(declare-fun m!6171934 () Bool)

(assert (=> d!1652632 m!6171934))

(declare-fun m!6171936 () Bool)

(assert (=> d!1652632 m!6171936))

(assert (=> d!1652632 m!6171786))

(assert (=> b!5113416 d!1652632))

(declare-fun d!1652634 () Bool)

(declare-fun c!878604 () Bool)

(assert (=> d!1652634 (= c!878604 (is-Cons!59098 lt!2106325))))

(declare-fun e!3189277 () (Set Context!7096))

(assert (=> d!1652634 (= (derivationZipper!63 baseZ!46 lt!2106325) e!3189277)))

(declare-fun b!5113600 () Bool)

(assert (=> b!5113600 (= e!3189277 (derivationZipper!63 (derivationStepZipper!799 baseZ!46 (h!65546 lt!2106325)) (t!372223 lt!2106325)))))

(declare-fun b!5113601 () Bool)

(assert (=> b!5113601 (= e!3189277 baseZ!46)))

(assert (= (and d!1652634 c!878604) b!5113600))

(assert (= (and d!1652634 (not c!878604)) b!5113601))

(declare-fun m!6171938 () Bool)

(assert (=> b!5113600 m!6171938))

(assert (=> b!5113600 m!6171938))

(declare-fun m!6171940 () Bool)

(assert (=> b!5113600 m!6171940))

(assert (=> b!5113416 d!1652634))

(declare-fun d!1652636 () Bool)

(declare-fun lt!2106467 () List!59222)

(assert (=> d!1652636 (= (++!12989 lt!2106325 lt!2106467) knownP!20)))

(declare-fun e!3189278 () List!59222)

(assert (=> d!1652636 (= lt!2106467 e!3189278)))

(declare-fun c!878605 () Bool)

(assert (=> d!1652636 (= c!878605 (is-Cons!59098 lt!2106325))))

(assert (=> d!1652636 (>= (size!39470 knownP!20) (size!39470 lt!2106325))))

(assert (=> d!1652636 (= (getSuffix!3243 knownP!20 lt!2106325) lt!2106467)))

(declare-fun b!5113602 () Bool)

(assert (=> b!5113602 (= e!3189278 (getSuffix!3243 (tail!10033 knownP!20) (t!372223 lt!2106325)))))

(declare-fun b!5113603 () Bool)

(assert (=> b!5113603 (= e!3189278 knownP!20)))

(assert (= (and d!1652636 c!878605) b!5113602))

(assert (= (and d!1652636 (not c!878605)) b!5113603))

(declare-fun m!6171942 () Bool)

(assert (=> d!1652636 m!6171942))

(assert (=> d!1652636 m!6171668))

(assert (=> d!1652636 m!6171890))

(assert (=> b!5113602 m!6171842))

(assert (=> b!5113602 m!6171842))

(declare-fun m!6171944 () Bool)

(assert (=> b!5113602 m!6171944))

(assert (=> b!5113416 d!1652636))

(declare-fun d!1652638 () Bool)

(assert (=> d!1652638 (= ($colon$colon!1110 (tail!10033 lt!2106336) lt!2106334) (Cons!59098 lt!2106334 (tail!10033 lt!2106336)))))

(assert (=> b!5113417 d!1652638))

(declare-fun d!1652640 () Bool)

(assert (=> d!1652640 (= (tail!10033 lt!2106336) (t!372223 lt!2106336))))

(assert (=> b!5113417 d!1652640))

(declare-fun b!5113608 () Bool)

(declare-fun e!3189281 () Bool)

(declare-fun tp!1426730 () Bool)

(declare-fun tp!1426731 () Bool)

(assert (=> b!5113608 (= e!3189281 (and tp!1426730 tp!1426731))))

(assert (=> b!5113420 (= tp!1426703 e!3189281)))

(assert (= (and b!5113420 (is-Cons!59097 (exprs!4048 setElem!29916))) b!5113608))

(declare-fun b!5113609 () Bool)

(declare-fun e!3189282 () Bool)

(declare-fun tp!1426732 () Bool)

(declare-fun tp!1426733 () Bool)

(assert (=> b!5113609 (= e!3189282 (and tp!1426732 tp!1426733))))

(assert (=> b!5113421 (= tp!1426701 e!3189282)))

(assert (= (and b!5113421 (is-Cons!59097 (exprs!4048 setElem!29915))) b!5113609))

(declare-fun b!5113614 () Bool)

(declare-fun e!3189285 () Bool)

(declare-fun tp!1426736 () Bool)

(assert (=> b!5113614 (= e!3189285 (and tp_is_empty!37601 tp!1426736))))

(assert (=> b!5113419 (= tp!1426704 e!3189285)))

(assert (= (and b!5113419 (is-Cons!59098 (t!372223 input!5745))) b!5113614))

(declare-fun b!5113615 () Bool)

(declare-fun e!3189286 () Bool)

(declare-fun tp!1426737 () Bool)

(assert (=> b!5113615 (= e!3189286 (and tp_is_empty!37601 tp!1426737))))

(assert (=> b!5113427 (= tp!1426699 e!3189286)))

(assert (= (and b!5113427 (is-Cons!59098 (t!372223 knownP!20))) b!5113615))

(declare-fun condSetEmpty!29925 () Bool)

(assert (=> setNonEmpty!29915 (= condSetEmpty!29925 (= setRest!29916 (as set.empty (Set Context!7096))))))

(declare-fun setRes!29925 () Bool)

(assert (=> setNonEmpty!29915 (= tp!1426698 setRes!29925)))

(declare-fun setIsEmpty!29925 () Bool)

(assert (=> setIsEmpty!29925 setRes!29925))

(declare-fun e!3189289 () Bool)

(declare-fun setElem!29925 () Context!7096)

(declare-fun setNonEmpty!29925 () Bool)

(declare-fun tp!1426742 () Bool)

(assert (=> setNonEmpty!29925 (= setRes!29925 (and tp!1426742 (inv!78592 setElem!29925) e!3189289))))

(declare-fun setRest!29925 () (Set Context!7096))

(assert (=> setNonEmpty!29925 (= setRest!29916 (set.union (set.insert setElem!29925 (as set.empty (Set Context!7096))) setRest!29925))))

(declare-fun b!5113620 () Bool)

(declare-fun tp!1426743 () Bool)

(assert (=> b!5113620 (= e!3189289 tp!1426743)))

(assert (= (and setNonEmpty!29915 condSetEmpty!29925) setIsEmpty!29925))

(assert (= (and setNonEmpty!29915 (not condSetEmpty!29925)) setNonEmpty!29925))

(assert (= setNonEmpty!29925 b!5113620))

(declare-fun m!6171946 () Bool)

(assert (=> setNonEmpty!29925 m!6171946))

(declare-fun condSetEmpty!29926 () Bool)

(assert (=> setNonEmpty!29916 (= condSetEmpty!29926 (= setRest!29915 (as set.empty (Set Context!7096))))))

(declare-fun setRes!29926 () Bool)

(assert (=> setNonEmpty!29916 (= tp!1426700 setRes!29926)))

(declare-fun setIsEmpty!29926 () Bool)

(assert (=> setIsEmpty!29926 setRes!29926))

(declare-fun tp!1426744 () Bool)

(declare-fun setElem!29926 () Context!7096)

(declare-fun setNonEmpty!29926 () Bool)

(declare-fun e!3189290 () Bool)

(assert (=> setNonEmpty!29926 (= setRes!29926 (and tp!1426744 (inv!78592 setElem!29926) e!3189290))))

(declare-fun setRest!29926 () (Set Context!7096))

(assert (=> setNonEmpty!29926 (= setRest!29915 (set.union (set.insert setElem!29926 (as set.empty (Set Context!7096))) setRest!29926))))

(declare-fun b!5113621 () Bool)

(declare-fun tp!1426745 () Bool)

(assert (=> b!5113621 (= e!3189290 tp!1426745)))

(assert (= (and setNonEmpty!29916 condSetEmpty!29926) setIsEmpty!29926))

(assert (= (and setNonEmpty!29916 (not condSetEmpty!29926)) setNonEmpty!29926))

(assert (= setNonEmpty!29926 b!5113621))

(declare-fun m!6171948 () Bool)

(assert (=> setNonEmpty!29926 m!6171948))

(declare-fun b!5113622 () Bool)

(declare-fun e!3189291 () Bool)

(declare-fun tp!1426746 () Bool)

(assert (=> b!5113622 (= e!3189291 (and tp_is_empty!37601 tp!1426746))))

(assert (=> b!5113425 (= tp!1426702 e!3189291)))

(assert (= (and b!5113425 (is-Cons!59098 (t!372223 testedP!265))) b!5113622))

(push 1)

(assert (not b!5113537))

(assert (not b!5113584))

(assert (not b!5113597))

(assert (not d!1652636))

(assert (not b!5113614))

(assert (not b!5113574))

(assert (not b!5113573))

(assert (not b!5113522))

(assert (not b!5113609))

(assert (not b!5113568))

(assert (not d!1652574))

(assert (not b!5113569))

(assert (not b!5113592))

(assert (not b!5113583))

(assert (not b!5113495))

(assert (not b!5113553))

(assert (not d!1652598))

(assert (not b!5113564))

(assert (not b!5113579))

(assert (not setNonEmpty!29926))

(assert (not b!5113621))

(assert (not b!5113615))

(assert (not b!5113581))

(assert (not b!5113558))

(assert (not b!5113589))

(assert (not b!5113511))

(assert (not d!1652578))

(assert (not d!1652592))

(assert (not d!1652626))

(assert (not b!5113622))

(assert (not b!5113533))

(assert (not b!5113551))

(assert (not b!5113538))

(assert (not b!5113534))

(assert (not b!5113608))

(assert (not b!5113512))

(assert (not b!5113567))

(assert (not b!5113588))

(assert (not d!1652604))

(assert (not d!1652590))

(assert (not d!1652606))

(assert (not d!1652602))

(assert (not d!1652614))

(assert (not b!5113580))

(assert (not b!5113542))

(assert (not d!1652618))

(assert (not b!5113600))

(assert (not b!5113508))

(assert (not b!5113548))

(assert (not d!1652624))

(assert tp_is_empty!37601)

(assert (not bm!356450))

(assert (not d!1652596))

(assert (not b!5113549))

(assert (not b!5113497))

(assert (not b!5113587))

(assert (not b!5113590))

(assert (not d!1652586))

(assert (not d!1652630))

(assert (not bm!356449))

(assert (not b!5113570))

(assert (not d!1652572))

(assert (not d!1652608))

(assert (not b!5113620))

(assert (not d!1652588))

(assert (not b!5113507))

(assert (not d!1652628))

(assert (not setNonEmpty!29925))

(assert (not b!5113541))

(assert (not d!1652570))

(assert (not b!5113559))

(assert (not b!5113552))

(assert (not b!5113602))

(assert (not b!5113571))

(assert (not d!1652632))

(assert (not b!5113535))

(assert (not d!1652620))

(assert (not b!5113598))

(assert (not b!5113577))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

