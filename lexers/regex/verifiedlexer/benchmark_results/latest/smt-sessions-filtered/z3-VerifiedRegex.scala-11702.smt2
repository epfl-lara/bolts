; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!660628 () Bool)

(assert start!660628)

(declare-fun b!6835745 () Bool)

(assert (=> b!6835745 true))

(assert (=> b!6835745 true))

(declare-fun lambda!386479 () Int)

(declare-fun lambda!386478 () Int)

(assert (=> b!6835745 (not (= lambda!386479 lambda!386478))))

(assert (=> b!6835745 true))

(assert (=> b!6835745 true))

(declare-fun lambda!386480 () Int)

(assert (=> b!6835745 (not (= lambda!386480 lambda!386478))))

(assert (=> b!6835745 (not (= lambda!386480 lambda!386479))))

(assert (=> b!6835745 true))

(assert (=> b!6835745 true))

(declare-fun b!6835749 () Bool)

(assert (=> b!6835749 true))

(declare-fun b!6835737 () Bool)

(assert (=> b!6835737 true))

(declare-fun b!6835717 () Bool)

(declare-fun res!2791532 () Bool)

(declare-fun e!4123142 () Bool)

(assert (=> b!6835717 (=> res!2791532 e!4123142)))

(declare-datatypes ((C!33572 0))(
  ( (C!33573 (val!26488 Int)) )
))
(declare-datatypes ((Regex!16651 0))(
  ( (ElementMatch!16651 (c!1272811 C!33572)) (Concat!25496 (regOne!33814 Regex!16651) (regTwo!33814 Regex!16651)) (EmptyExpr!16651) (Star!16651 (reg!16980 Regex!16651)) (EmptyLang!16651) (Union!16651 (regOne!33815 Regex!16651) (regTwo!33815 Regex!16651)) )
))
(declare-fun lt!2454576 () Regex!16651)

(declare-fun r!7292 () Regex!16651)

(assert (=> b!6835717 (= res!2791532 (or (not (= lt!2454576 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6835718 () Bool)

(declare-fun e!4123152 () Bool)

(declare-fun tp!1870737 () Bool)

(declare-fun tp!1870734 () Bool)

(assert (=> b!6835718 (= e!4123152 (and tp!1870737 tp!1870734))))

(declare-fun b!6835719 () Bool)

(declare-fun e!4123148 () Bool)

(declare-fun e!4123143 () Bool)

(assert (=> b!6835719 (= e!4123148 e!4123143)))

(declare-fun res!2791523 () Bool)

(assert (=> b!6835719 (=> res!2791523 e!4123143)))

(declare-datatypes ((List!66252 0))(
  ( (Nil!66128) (Cons!66128 (h!72576 C!33572) (t!379995 List!66252)) )
))
(declare-fun s!2326 () List!66252)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!66253 0))(
  ( (Nil!66129) (Cons!66129 (h!72577 Regex!16651) (t!379996 List!66253)) )
))
(declare-datatypes ((Context!12070 0))(
  ( (Context!12071 (exprs!6535 List!66253)) )
))
(declare-fun lt!2454575 () (InoxSet Context!12070))

(declare-fun lt!2454579 () (InoxSet Context!12070))

(declare-fun derivationStepZipper!2595 ((InoxSet Context!12070) C!33572) (InoxSet Context!12070))

(assert (=> b!6835719 (= res!2791523 (not (= lt!2454579 (derivationStepZipper!2595 lt!2454575 (h!72576 s!2326)))))))

(declare-fun lt!2454596 () Context!12070)

(declare-fun lambda!386481 () Int)

(declare-fun flatMap!2132 ((InoxSet Context!12070) Int) (InoxSet Context!12070))

(declare-fun derivationStepZipperUp!1805 (Context!12070 C!33572) (InoxSet Context!12070))

(assert (=> b!6835719 (= (flatMap!2132 lt!2454575 lambda!386481) (derivationStepZipperUp!1805 lt!2454596 (h!72576 s!2326)))))

(declare-datatypes ((Unit!159995 0))(
  ( (Unit!159996) )
))
(declare-fun lt!2454606 () Unit!159995)

(declare-fun lemmaFlatMapOnSingletonSet!1658 ((InoxSet Context!12070) Context!12070 Int) Unit!159995)

(assert (=> b!6835719 (= lt!2454606 (lemmaFlatMapOnSingletonSet!1658 lt!2454575 lt!2454596 lambda!386481))))

(declare-fun lt!2454600 () (InoxSet Context!12070))

(declare-fun lt!2454574 () Context!12070)

(assert (=> b!6835719 (= (flatMap!2132 lt!2454600 lambda!386481) (derivationStepZipperUp!1805 lt!2454574 (h!72576 s!2326)))))

(declare-fun lt!2454603 () Unit!159995)

(assert (=> b!6835719 (= lt!2454603 (lemmaFlatMapOnSingletonSet!1658 lt!2454600 lt!2454574 lambda!386481))))

(declare-fun lt!2454584 () (InoxSet Context!12070))

(assert (=> b!6835719 (= lt!2454584 (derivationStepZipperUp!1805 lt!2454596 (h!72576 s!2326)))))

(declare-fun lt!2454582 () (InoxSet Context!12070))

(assert (=> b!6835719 (= lt!2454582 (derivationStepZipperUp!1805 lt!2454574 (h!72576 s!2326)))))

(assert (=> b!6835719 (= lt!2454575 (store ((as const (Array Context!12070 Bool)) false) lt!2454596 true))))

(assert (=> b!6835719 (= lt!2454600 (store ((as const (Array Context!12070 Bool)) false) lt!2454574 true))))

(declare-fun lt!2454578 () List!66253)

(assert (=> b!6835719 (= lt!2454574 (Context!12071 lt!2454578))))

(assert (=> b!6835719 (= lt!2454578 (Cons!66129 (reg!16980 r!7292) Nil!66129))))

(declare-fun b!6835720 () Bool)

(declare-fun e!4123151 () Bool)

(declare-fun tp_is_empty!42555 () Bool)

(declare-fun tp!1870743 () Bool)

(assert (=> b!6835720 (= e!4123151 (and tp_is_empty!42555 tp!1870743))))

(declare-fun b!6835721 () Bool)

(declare-fun e!4123140 () Bool)

(declare-fun e!4123153 () Bool)

(assert (=> b!6835721 (= e!4123140 e!4123153)))

(declare-fun res!2791530 () Bool)

(assert (=> b!6835721 (=> res!2791530 e!4123153)))

(declare-fun lt!2454564 () Bool)

(assert (=> b!6835721 (= res!2791530 lt!2454564)))

(declare-fun lt!2454604 () Regex!16651)

(declare-fun matchRSpec!3752 (Regex!16651 List!66252) Bool)

(assert (=> b!6835721 (= lt!2454564 (matchRSpec!3752 lt!2454604 s!2326))))

(declare-fun matchR!8834 (Regex!16651 List!66252) Bool)

(assert (=> b!6835721 (= lt!2454564 (matchR!8834 lt!2454604 s!2326))))

(declare-fun lt!2454601 () Unit!159995)

(declare-fun mainMatchTheorem!3752 (Regex!16651 List!66252) Unit!159995)

(assert (=> b!6835721 (= lt!2454601 (mainMatchTheorem!3752 lt!2454604 s!2326))))

(declare-fun b!6835722 () Bool)

(declare-fun res!2791522 () Bool)

(declare-fun e!4123147 () Bool)

(assert (=> b!6835722 (=> res!2791522 e!4123147)))

(declare-datatypes ((List!66254 0))(
  ( (Nil!66130) (Cons!66130 (h!72578 Context!12070) (t!379997 List!66254)) )
))
(declare-fun zl!343 () List!66254)

(get-info :version)

(assert (=> b!6835722 (= res!2791522 (not ((_ is Cons!66129) (exprs!6535 (h!72578 zl!343)))))))

(declare-fun b!6835723 () Bool)

(declare-fun e!4123150 () Bool)

(declare-fun tp!1870735 () Bool)

(assert (=> b!6835723 (= e!4123150 tp!1870735)))

(declare-fun b!6835724 () Bool)

(declare-fun e!4123154 () Bool)

(assert (=> b!6835724 (= e!4123143 e!4123154)))

(declare-fun res!2791517 () Bool)

(assert (=> b!6835724 (=> res!2791517 e!4123154)))

(declare-fun lt!2454567 () List!66254)

(declare-fun unfocusZipper!2393 (List!66254) Regex!16651)

(assert (=> b!6835724 (= res!2791517 (not (= (unfocusZipper!2393 lt!2454567) (reg!16980 r!7292))))))

(assert (=> b!6835724 (= lt!2454567 (Cons!66130 lt!2454574 Nil!66130))))

(declare-fun b!6835725 () Bool)

(declare-fun e!4123141 () Bool)

(declare-fun e!4123155 () Bool)

(assert (=> b!6835725 (= e!4123141 e!4123155)))

(declare-fun res!2791510 () Bool)

(assert (=> b!6835725 (=> (not res!2791510) (not e!4123155))))

(assert (=> b!6835725 (= res!2791510 (= r!7292 lt!2454576))))

(assert (=> b!6835725 (= lt!2454576 (unfocusZipper!2393 zl!343))))

(declare-fun b!6835726 () Bool)

(declare-fun res!2791519 () Bool)

(assert (=> b!6835726 (=> res!2791519 e!4123147)))

(assert (=> b!6835726 (= res!2791519 (or ((_ is EmptyExpr!16651) r!7292) ((_ is EmptyLang!16651) r!7292) ((_ is ElementMatch!16651) r!7292) ((_ is Union!16651) r!7292) ((_ is Concat!25496) r!7292)))))

(declare-fun b!6835727 () Bool)

(declare-fun e!4123139 () Bool)

(assert (=> b!6835727 (= e!4123139 false)))

(declare-fun b!6835728 () Bool)

(declare-fun lt!2454563 () Bool)

(assert (=> b!6835728 (= e!4123153 (not lt!2454563))))

(declare-fun lt!2454569 () Unit!159995)

(declare-fun e!4123149 () Unit!159995)

(assert (=> b!6835728 (= lt!2454569 e!4123149)))

(declare-fun c!1272810 () Bool)

(assert (=> b!6835728 (= c!1272810 lt!2454563)))

(declare-fun z!1189 () (InoxSet Context!12070))

(declare-fun matchZipper!2637 ((InoxSet Context!12070) List!66252) Bool)

(assert (=> b!6835728 (= lt!2454563 (matchZipper!2637 z!1189 s!2326))))

(declare-fun b!6835729 () Bool)

(declare-fun Unit!159997 () Unit!159995)

(assert (=> b!6835729 (= e!4123149 Unit!159997)))

(declare-fun e!4123146 () Bool)

(declare-fun b!6835730 () Bool)

(declare-fun tp!1870742 () Bool)

(declare-fun inv!84874 (Context!12070) Bool)

(assert (=> b!6835730 (= e!4123146 (and (inv!84874 (h!72578 zl!343)) e!4123150 tp!1870742))))

(declare-fun b!6835731 () Bool)

(declare-fun tp!1870741 () Bool)

(assert (=> b!6835731 (= e!4123152 tp!1870741)))

(declare-fun res!2791515 () Bool)

(assert (=> start!660628 (=> (not res!2791515) (not e!4123141))))

(declare-fun validRegex!8387 (Regex!16651) Bool)

(assert (=> start!660628 (= res!2791515 (validRegex!8387 r!7292))))

(assert (=> start!660628 e!4123141))

(assert (=> start!660628 e!4123152))

(declare-fun condSetEmpty!46951 () Bool)

(assert (=> start!660628 (= condSetEmpty!46951 (= z!1189 ((as const (Array Context!12070 Bool)) false)))))

(declare-fun setRes!46951 () Bool)

(assert (=> start!660628 setRes!46951))

(assert (=> start!660628 e!4123146))

(assert (=> start!660628 e!4123151))

(declare-fun b!6835732 () Bool)

(declare-fun res!2791527 () Bool)

(assert (=> b!6835732 (=> res!2791527 e!4123147)))

(declare-fun generalisedConcat!2248 (List!66253) Regex!16651)

(assert (=> b!6835732 (= res!2791527 (not (= r!7292 (generalisedConcat!2248 (exprs!6535 (h!72578 zl!343))))))))

(declare-fun b!6835733 () Bool)

(assert (=> b!6835733 (= e!4123152 tp_is_empty!42555)))

(declare-fun b!6835734 () Bool)

(assert (=> b!6835734 (= e!4123155 (not e!4123147))))

(declare-fun res!2791516 () Bool)

(assert (=> b!6835734 (=> res!2791516 e!4123147)))

(assert (=> b!6835734 (= res!2791516 (not ((_ is Cons!66130) zl!343)))))

(declare-fun lt!2454585 () Bool)

(assert (=> b!6835734 (= lt!2454585 (matchRSpec!3752 r!7292 s!2326))))

(assert (=> b!6835734 (= lt!2454585 (matchR!8834 r!7292 s!2326))))

(declare-fun lt!2454588 () Unit!159995)

(assert (=> b!6835734 (= lt!2454588 (mainMatchTheorem!3752 r!7292 s!2326))))

(declare-fun b!6835735 () Bool)

(declare-fun res!2791511 () Bool)

(assert (=> b!6835735 (=> res!2791511 e!4123142)))

(declare-fun lt!2454566 () (InoxSet Context!12070))

(assert (=> b!6835735 (= res!2791511 (not (= (matchZipper!2637 lt!2454566 s!2326) (matchZipper!2637 (derivationStepZipper!2595 lt!2454566 (h!72576 s!2326)) (t!379995 s!2326)))))))

(declare-fun setIsEmpty!46951 () Bool)

(assert (=> setIsEmpty!46951 setRes!46951))

(declare-fun b!6835736 () Bool)

(declare-fun e!4123158 () Bool)

(declare-fun lt!2454589 () Bool)

(assert (=> b!6835736 (= e!4123158 lt!2454589)))

(declare-fun Unit!159998 () Unit!159995)

(assert (=> b!6835737 (= e!4123149 Unit!159998)))

(declare-fun lt!2454595 () Unit!159995)

(declare-fun lambda!386482 () Int)

(declare-fun lemmaMapOnSingletonSet!286 ((InoxSet Context!12070) Context!12070 Int) Unit!159995)

(assert (=> b!6835737 (= lt!2454595 (lemmaMapOnSingletonSet!286 lt!2454600 lt!2454574 lambda!386482))))

(declare-fun lt!2454598 () Unit!159995)

(declare-fun lambda!386483 () Int)

(declare-fun lt!2454586 () List!66253)

(declare-fun lemmaConcatPreservesForall!480 (List!66253 List!66253 Int) Unit!159995)

(assert (=> b!6835737 (= lt!2454598 (lemmaConcatPreservesForall!480 lt!2454578 lt!2454586 lambda!386483))))

(declare-fun map!15137 ((InoxSet Context!12070) Int) (InoxSet Context!12070))

(declare-fun ++!14848 (List!66253 List!66253) List!66253)

(assert (=> b!6835737 (= (map!15137 lt!2454600 lambda!386482) (store ((as const (Array Context!12070 Bool)) false) (Context!12071 (++!14848 lt!2454578 lt!2454586)) true))))

(declare-fun lt!2454590 () Unit!159995)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!260 ((InoxSet Context!12070) Context!12070 List!66252) Unit!159995)

(assert (=> b!6835737 (= lt!2454590 (lemmaConcatZipperMatchesStringThenFindConcatDefined!260 lt!2454600 lt!2454596 s!2326))))

(declare-datatypes ((tuple2!67252 0))(
  ( (tuple2!67253 (_1!36929 List!66252) (_2!36929 List!66252)) )
))
(declare-datatypes ((Option!16538 0))(
  ( (None!16537) (Some!16537 (v!52749 tuple2!67252)) )
))
(declare-fun lt!2454592 () Option!16538)

(declare-fun findConcatSeparationZippers!260 ((InoxSet Context!12070) (InoxSet Context!12070) List!66252 List!66252 List!66252) Option!16538)

(assert (=> b!6835737 (= lt!2454592 (findConcatSeparationZippers!260 lt!2454600 lt!2454575 Nil!66128 s!2326 s!2326))))

(declare-fun isDefined!13241 (Option!16538) Bool)

(assert (=> b!6835737 (isDefined!13241 lt!2454592)))

(declare-fun lt!2454571 () tuple2!67252)

(declare-fun get!23046 (Option!16538) tuple2!67252)

(assert (=> b!6835737 (= lt!2454571 (get!23046 lt!2454592))))

(declare-fun lt!2454599 () Unit!159995)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!274 (Context!12070 Context!12070 List!66252 List!66252) Unit!159995)

(assert (=> b!6835737 (= lt!2454599 (lemmaConcatenateContextMatchesConcatOfStrings!274 lt!2454574 lt!2454596 (_1!36929 lt!2454571) (_2!36929 lt!2454571)))))

(declare-fun lt!2454565 () Unit!159995)

(assert (=> b!6835737 (= lt!2454565 (lemmaConcatPreservesForall!480 lt!2454578 lt!2454586 lambda!386483))))

(declare-fun lt!2454568 () List!66253)

(assert (=> b!6835737 (= lt!2454568 (++!14848 lt!2454578 lt!2454586))))

(declare-fun lt!2454593 () List!66252)

(declare-fun ++!14849 (List!66252 List!66252) List!66252)

(assert (=> b!6835737 (= lt!2454593 (++!14849 (_1!36929 lt!2454571) (_2!36929 lt!2454571)))))

(assert (=> b!6835737 (matchZipper!2637 (store ((as const (Array Context!12070 Bool)) false) (Context!12071 lt!2454568) true) lt!2454593)))

(declare-fun lt!2454580 () Unit!159995)

(declare-fun theoremZipperRegexEquiv!953 ((InoxSet Context!12070) List!66254 Regex!16651 List!66252) Unit!159995)

(assert (=> b!6835737 (= lt!2454580 (theoremZipperRegexEquiv!953 lt!2454600 lt!2454567 (reg!16980 r!7292) (_1!36929 lt!2454571)))))

(assert (=> b!6835737 (= (matchR!8834 (reg!16980 r!7292) (_1!36929 lt!2454571)) (matchZipper!2637 lt!2454600 (_1!36929 lt!2454571)))))

(declare-fun lt!2454577 () Unit!159995)

(declare-fun lt!2454572 () List!66254)

(assert (=> b!6835737 (= lt!2454577 (theoremZipperRegexEquiv!953 lt!2454575 lt!2454572 r!7292 (_2!36929 lt!2454571)))))

(assert (=> b!6835737 (= (matchR!8834 r!7292 (_2!36929 lt!2454571)) (matchZipper!2637 lt!2454575 (_2!36929 lt!2454571)))))

(declare-fun lt!2454591 () Unit!159995)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!390 (Regex!16651 Regex!16651 List!66252 List!66252) Unit!159995)

(assert (=> b!6835737 (= lt!2454591 (lemmaTwoRegexMatchThenConcatMatchesConcatString!390 (reg!16980 r!7292) r!7292 (_1!36929 lt!2454571) (_2!36929 lt!2454571)))))

(declare-fun res!2791512 () Bool)

(assert (=> b!6835737 (= res!2791512 (matchR!8834 lt!2454604 lt!2454593))))

(assert (=> b!6835737 (=> (not res!2791512) (not e!4123139))))

(assert (=> b!6835737 e!4123139))

(declare-fun b!6835738 () Bool)

(declare-fun e!4123156 () Bool)

(declare-fun e!4123144 () Bool)

(assert (=> b!6835738 (= e!4123156 e!4123144)))

(declare-fun res!2791513 () Bool)

(assert (=> b!6835738 (=> res!2791513 e!4123144)))

(declare-fun lt!2454597 () (InoxSet Context!12070))

(declare-fun lt!2454570 () (InoxSet Context!12070))

(assert (=> b!6835738 (= res!2791513 (not (= lt!2454597 lt!2454570)))))

(declare-fun derivationStepZipperDown!1879 (Regex!16651 Context!12070 C!33572) (InoxSet Context!12070))

(assert (=> b!6835738 (= lt!2454570 (derivationStepZipperDown!1879 r!7292 (Context!12071 Nil!66129) (h!72576 s!2326)))))

(assert (=> b!6835738 (= lt!2454597 (derivationStepZipperUp!1805 (Context!12071 (Cons!66129 r!7292 Nil!66129)) (h!72576 s!2326)))))

(assert (=> b!6835738 (= lt!2454579 (derivationStepZipper!2595 z!1189 (h!72576 s!2326)))))

(declare-fun b!6835739 () Bool)

(assert (=> b!6835739 (= e!4123142 e!4123148)))

(declare-fun res!2791529 () Bool)

(assert (=> b!6835739 (=> res!2791529 e!4123148)))

(declare-fun lt!2454587 () Context!12070)

(assert (=> b!6835739 (= res!2791529 (not (= (unfocusZipper!2393 (Cons!66130 lt!2454587 Nil!66130)) lt!2454604)))))

(assert (=> b!6835739 (= lt!2454604 (Concat!25496 (reg!16980 r!7292) r!7292))))

(declare-fun b!6835740 () Bool)

(declare-fun res!2791518 () Bool)

(assert (=> b!6835740 (=> res!2791518 e!4123156)))

(assert (=> b!6835740 (= res!2791518 ((_ is Nil!66128) s!2326))))

(declare-fun setNonEmpty!46951 () Bool)

(declare-fun setElem!46951 () Context!12070)

(declare-fun tp!1870740 () Bool)

(declare-fun e!4123145 () Bool)

(assert (=> setNonEmpty!46951 (= setRes!46951 (and tp!1870740 (inv!84874 setElem!46951) e!4123145))))

(declare-fun setRest!46951 () (InoxSet Context!12070))

(assert (=> setNonEmpty!46951 (= z!1189 ((_ map or) (store ((as const (Array Context!12070 Bool)) false) setElem!46951 true) setRest!46951))))

(declare-fun b!6835741 () Bool)

(declare-fun tp!1870736 () Bool)

(declare-fun tp!1870738 () Bool)

(assert (=> b!6835741 (= e!4123152 (and tp!1870736 tp!1870738))))

(declare-fun b!6835742 () Bool)

(declare-fun res!2791528 () Bool)

(assert (=> b!6835742 (=> (not res!2791528) (not e!4123141))))

(declare-fun toList!10435 ((InoxSet Context!12070)) List!66254)

(assert (=> b!6835742 (= res!2791528 (= (toList!10435 z!1189) zl!343))))

(declare-fun b!6835743 () Bool)

(declare-fun tp!1870739 () Bool)

(assert (=> b!6835743 (= e!4123145 tp!1870739)))

(declare-fun b!6835744 () Bool)

(assert (=> b!6835744 (= e!4123154 e!4123140)))

(declare-fun res!2791524 () Bool)

(assert (=> b!6835744 (=> res!2791524 e!4123140)))

(assert (=> b!6835744 (= res!2791524 (not (= (unfocusZipper!2393 lt!2454572) r!7292)))))

(assert (=> b!6835744 (= lt!2454572 (Cons!66130 lt!2454596 Nil!66130))))

(assert (=> b!6835745 (= e!4123147 e!4123156)))

(declare-fun res!2791521 () Bool)

(assert (=> b!6835745 (=> res!2791521 e!4123156)))

(assert (=> b!6835745 (= res!2791521 (not (= lt!2454585 e!4123158)))))

(declare-fun res!2791520 () Bool)

(assert (=> b!6835745 (=> res!2791520 e!4123158)))

(declare-fun isEmpty!38517 (List!66252) Bool)

(assert (=> b!6835745 (= res!2791520 (isEmpty!38517 s!2326))))

(declare-fun Exists!3719 (Int) Bool)

(assert (=> b!6835745 (= (Exists!3719 lambda!386478) (Exists!3719 lambda!386480))))

(declare-fun lt!2454583 () Unit!159995)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2246 (Regex!16651 Regex!16651 List!66252) Unit!159995)

(assert (=> b!6835745 (= lt!2454583 (lemmaExistCutMatchRandMatchRSpecEquivalent!2246 (reg!16980 r!7292) r!7292 s!2326))))

(assert (=> b!6835745 (= (Exists!3719 lambda!386478) (Exists!3719 lambda!386479))))

(declare-fun lt!2454602 () Unit!159995)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!810 (Regex!16651 List!66252) Unit!159995)

(assert (=> b!6835745 (= lt!2454602 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!810 (reg!16980 r!7292) s!2326))))

(assert (=> b!6835745 (= lt!2454589 (Exists!3719 lambda!386478))))

(declare-fun findConcatSeparation!2952 (Regex!16651 Regex!16651 List!66252 List!66252 List!66252) Option!16538)

(assert (=> b!6835745 (= lt!2454589 (isDefined!13241 (findConcatSeparation!2952 (reg!16980 r!7292) r!7292 Nil!66128 s!2326 s!2326)))))

(declare-fun lt!2454573 () Unit!159995)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2716 (Regex!16651 Regex!16651 List!66252) Unit!159995)

(assert (=> b!6835745 (= lt!2454573 (lemmaFindConcatSeparationEquivalentToExists!2716 (reg!16980 r!7292) r!7292 s!2326))))

(declare-fun b!6835746 () Bool)

(declare-fun res!2791525 () Bool)

(assert (=> b!6835746 (=> res!2791525 e!4123147)))

(declare-fun isEmpty!38518 (List!66254) Bool)

(assert (=> b!6835746 (= res!2791525 (not (isEmpty!38518 (t!379997 zl!343))))))

(declare-fun b!6835747 () Bool)

(declare-fun res!2791514 () Bool)

(assert (=> b!6835747 (=> res!2791514 e!4123147)))

(declare-fun generalisedUnion!2495 (List!66253) Regex!16651)

(declare-fun unfocusZipperList!2072 (List!66254) List!66253)

(assert (=> b!6835747 (= res!2791514 (not (= r!7292 (generalisedUnion!2495 (unfocusZipperList!2072 zl!343)))))))

(declare-fun b!6835748 () Bool)

(declare-fun e!4123157 () Bool)

(assert (=> b!6835748 (= e!4123157 e!4123142)))

(declare-fun res!2791531 () Bool)

(assert (=> b!6835748 (=> res!2791531 e!4123142)))

(assert (=> b!6835748 (= res!2791531 (not (= lt!2454579 (derivationStepZipperDown!1879 (reg!16980 r!7292) lt!2454596 (h!72576 s!2326)))))))

(assert (=> b!6835748 (= lt!2454596 (Context!12071 lt!2454586))))

(assert (=> b!6835748 (= (flatMap!2132 lt!2454566 lambda!386481) (derivationStepZipperUp!1805 lt!2454587 (h!72576 s!2326)))))

(declare-fun lt!2454581 () Unit!159995)

(assert (=> b!6835748 (= lt!2454581 (lemmaFlatMapOnSingletonSet!1658 lt!2454566 lt!2454587 lambda!386481))))

(declare-fun lt!2454605 () (InoxSet Context!12070))

(assert (=> b!6835748 (= lt!2454605 (derivationStepZipperUp!1805 lt!2454587 (h!72576 s!2326)))))

(assert (=> b!6835748 (= lt!2454566 (store ((as const (Array Context!12070 Bool)) false) lt!2454587 true))))

(assert (=> b!6835748 (= lt!2454587 (Context!12071 (Cons!66129 (reg!16980 r!7292) lt!2454586)))))

(assert (=> b!6835748 (= lt!2454586 (Cons!66129 r!7292 Nil!66129))))

(assert (=> b!6835749 (= e!4123144 e!4123157)))

(declare-fun res!2791526 () Bool)

(assert (=> b!6835749 (=> res!2791526 e!4123157)))

(assert (=> b!6835749 (= res!2791526 (not (= lt!2454579 lt!2454570)))))

(assert (=> b!6835749 (= (flatMap!2132 z!1189 lambda!386481) (derivationStepZipperUp!1805 (h!72578 zl!343) (h!72576 s!2326)))))

(declare-fun lt!2454594 () Unit!159995)

(assert (=> b!6835749 (= lt!2454594 (lemmaFlatMapOnSingletonSet!1658 z!1189 (h!72578 zl!343) lambda!386481))))

(assert (= (and start!660628 res!2791515) b!6835742))

(assert (= (and b!6835742 res!2791528) b!6835725))

(assert (= (and b!6835725 res!2791510) b!6835734))

(assert (= (and b!6835734 (not res!2791516)) b!6835746))

(assert (= (and b!6835746 (not res!2791525)) b!6835732))

(assert (= (and b!6835732 (not res!2791527)) b!6835722))

(assert (= (and b!6835722 (not res!2791522)) b!6835747))

(assert (= (and b!6835747 (not res!2791514)) b!6835726))

(assert (= (and b!6835726 (not res!2791519)) b!6835745))

(assert (= (and b!6835745 (not res!2791520)) b!6835736))

(assert (= (and b!6835745 (not res!2791521)) b!6835740))

(assert (= (and b!6835740 (not res!2791518)) b!6835738))

(assert (= (and b!6835738 (not res!2791513)) b!6835749))

(assert (= (and b!6835749 (not res!2791526)) b!6835748))

(assert (= (and b!6835748 (not res!2791531)) b!6835735))

(assert (= (and b!6835735 (not res!2791511)) b!6835717))

(assert (= (and b!6835717 (not res!2791532)) b!6835739))

(assert (= (and b!6835739 (not res!2791529)) b!6835719))

(assert (= (and b!6835719 (not res!2791523)) b!6835724))

(assert (= (and b!6835724 (not res!2791517)) b!6835744))

(assert (= (and b!6835744 (not res!2791524)) b!6835721))

(assert (= (and b!6835721 (not res!2791530)) b!6835728))

(assert (= (and b!6835728 c!1272810) b!6835737))

(assert (= (and b!6835728 (not c!1272810)) b!6835729))

(assert (= (and b!6835737 res!2791512) b!6835727))

(assert (= (and start!660628 ((_ is ElementMatch!16651) r!7292)) b!6835733))

(assert (= (and start!660628 ((_ is Concat!25496) r!7292)) b!6835718))

(assert (= (and start!660628 ((_ is Star!16651) r!7292)) b!6835731))

(assert (= (and start!660628 ((_ is Union!16651) r!7292)) b!6835741))

(assert (= (and start!660628 condSetEmpty!46951) setIsEmpty!46951))

(assert (= (and start!660628 (not condSetEmpty!46951)) setNonEmpty!46951))

(assert (= setNonEmpty!46951 b!6835743))

(assert (= b!6835730 b!6835723))

(assert (= (and start!660628 ((_ is Cons!66130) zl!343)) b!6835730))

(assert (= (and start!660628 ((_ is Cons!66128) s!2326)) b!6835720))

(declare-fun m!7581108 () Bool)

(assert (=> setNonEmpty!46951 m!7581108))

(declare-fun m!7581110 () Bool)

(assert (=> b!6835735 m!7581110))

(declare-fun m!7581112 () Bool)

(assert (=> b!6835735 m!7581112))

(assert (=> b!6835735 m!7581112))

(declare-fun m!7581114 () Bool)

(assert (=> b!6835735 m!7581114))

(declare-fun m!7581116 () Bool)

(assert (=> b!6835719 m!7581116))

(declare-fun m!7581118 () Bool)

(assert (=> b!6835719 m!7581118))

(declare-fun m!7581120 () Bool)

(assert (=> b!6835719 m!7581120))

(declare-fun m!7581122 () Bool)

(assert (=> b!6835719 m!7581122))

(declare-fun m!7581124 () Bool)

(assert (=> b!6835719 m!7581124))

(declare-fun m!7581126 () Bool)

(assert (=> b!6835719 m!7581126))

(declare-fun m!7581128 () Bool)

(assert (=> b!6835719 m!7581128))

(declare-fun m!7581130 () Bool)

(assert (=> b!6835719 m!7581130))

(declare-fun m!7581132 () Bool)

(assert (=> b!6835719 m!7581132))

(declare-fun m!7581134 () Bool)

(assert (=> b!6835744 m!7581134))

(declare-fun m!7581136 () Bool)

(assert (=> start!660628 m!7581136))

(declare-fun m!7581138 () Bool)

(assert (=> b!6835724 m!7581138))

(declare-fun m!7581140 () Bool)

(assert (=> b!6835732 m!7581140))

(declare-fun m!7581142 () Bool)

(assert (=> b!6835728 m!7581142))

(declare-fun m!7581144 () Bool)

(assert (=> b!6835725 m!7581144))

(declare-fun m!7581146 () Bool)

(assert (=> b!6835737 m!7581146))

(declare-fun m!7581148 () Bool)

(assert (=> b!6835737 m!7581148))

(declare-fun m!7581150 () Bool)

(assert (=> b!6835737 m!7581150))

(declare-fun m!7581152 () Bool)

(assert (=> b!6835737 m!7581152))

(declare-fun m!7581154 () Bool)

(assert (=> b!6835737 m!7581154))

(declare-fun m!7581156 () Bool)

(assert (=> b!6835737 m!7581156))

(assert (=> b!6835737 m!7581146))

(declare-fun m!7581158 () Bool)

(assert (=> b!6835737 m!7581158))

(declare-fun m!7581160 () Bool)

(assert (=> b!6835737 m!7581160))

(declare-fun m!7581162 () Bool)

(assert (=> b!6835737 m!7581162))

(declare-fun m!7581164 () Bool)

(assert (=> b!6835737 m!7581164))

(declare-fun m!7581166 () Bool)

(assert (=> b!6835737 m!7581166))

(declare-fun m!7581168 () Bool)

(assert (=> b!6835737 m!7581168))

(declare-fun m!7581170 () Bool)

(assert (=> b!6835737 m!7581170))

(declare-fun m!7581172 () Bool)

(assert (=> b!6835737 m!7581172))

(declare-fun m!7581174 () Bool)

(assert (=> b!6835737 m!7581174))

(declare-fun m!7581176 () Bool)

(assert (=> b!6835737 m!7581176))

(declare-fun m!7581178 () Bool)

(assert (=> b!6835737 m!7581178))

(declare-fun m!7581180 () Bool)

(assert (=> b!6835737 m!7581180))

(assert (=> b!6835737 m!7581166))

(declare-fun m!7581182 () Bool)

(assert (=> b!6835737 m!7581182))

(declare-fun m!7581184 () Bool)

(assert (=> b!6835737 m!7581184))

(declare-fun m!7581186 () Bool)

(assert (=> b!6835737 m!7581186))

(declare-fun m!7581188 () Bool)

(assert (=> b!6835738 m!7581188))

(declare-fun m!7581190 () Bool)

(assert (=> b!6835738 m!7581190))

(declare-fun m!7581192 () Bool)

(assert (=> b!6835738 m!7581192))

(declare-fun m!7581194 () Bool)

(assert (=> b!6835749 m!7581194))

(declare-fun m!7581196 () Bool)

(assert (=> b!6835749 m!7581196))

(declare-fun m!7581198 () Bool)

(assert (=> b!6835749 m!7581198))

(declare-fun m!7581200 () Bool)

(assert (=> b!6835739 m!7581200))

(declare-fun m!7581202 () Bool)

(assert (=> b!6835745 m!7581202))

(declare-fun m!7581204 () Bool)

(assert (=> b!6835745 m!7581204))

(assert (=> b!6835745 m!7581202))

(declare-fun m!7581206 () Bool)

(assert (=> b!6835745 m!7581206))

(declare-fun m!7581208 () Bool)

(assert (=> b!6835745 m!7581208))

(declare-fun m!7581210 () Bool)

(assert (=> b!6835745 m!7581210))

(declare-fun m!7581212 () Bool)

(assert (=> b!6835745 m!7581212))

(declare-fun m!7581214 () Bool)

(assert (=> b!6835745 m!7581214))

(declare-fun m!7581216 () Bool)

(assert (=> b!6835745 m!7581216))

(assert (=> b!6835745 m!7581202))

(declare-fun m!7581218 () Bool)

(assert (=> b!6835745 m!7581218))

(assert (=> b!6835745 m!7581210))

(declare-fun m!7581220 () Bool)

(assert (=> b!6835734 m!7581220))

(declare-fun m!7581222 () Bool)

(assert (=> b!6835734 m!7581222))

(declare-fun m!7581224 () Bool)

(assert (=> b!6835734 m!7581224))

(declare-fun m!7581226 () Bool)

(assert (=> b!6835746 m!7581226))

(declare-fun m!7581228 () Bool)

(assert (=> b!6835730 m!7581228))

(declare-fun m!7581230 () Bool)

(assert (=> b!6835747 m!7581230))

(assert (=> b!6835747 m!7581230))

(declare-fun m!7581232 () Bool)

(assert (=> b!6835747 m!7581232))

(declare-fun m!7581234 () Bool)

(assert (=> b!6835742 m!7581234))

(declare-fun m!7581236 () Bool)

(assert (=> b!6835721 m!7581236))

(declare-fun m!7581238 () Bool)

(assert (=> b!6835721 m!7581238))

(declare-fun m!7581240 () Bool)

(assert (=> b!6835721 m!7581240))

(declare-fun m!7581242 () Bool)

(assert (=> b!6835748 m!7581242))

(declare-fun m!7581244 () Bool)

(assert (=> b!6835748 m!7581244))

(declare-fun m!7581246 () Bool)

(assert (=> b!6835748 m!7581246))

(declare-fun m!7581248 () Bool)

(assert (=> b!6835748 m!7581248))

(declare-fun m!7581250 () Bool)

(assert (=> b!6835748 m!7581250))

(check-sat (not b!6835747) (not b!6835719) (not start!660628) (not b!6835724) (not b!6835737) (not b!6835744) (not b!6835746) (not setNonEmpty!46951) (not b!6835748) (not b!6835720) (not b!6835738) (not b!6835743) (not b!6835739) (not b!6835734) (not b!6835735) (not b!6835723) (not b!6835745) (not b!6835732) (not b!6835741) (not b!6835742) (not b!6835728) (not b!6835721) (not b!6835718) (not b!6835731) (not b!6835749) tp_is_empty!42555 (not b!6835730) (not b!6835725))
(check-sat)
