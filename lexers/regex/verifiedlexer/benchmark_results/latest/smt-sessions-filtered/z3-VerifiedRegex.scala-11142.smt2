; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!577778 () Bool)

(assert start!577778)

(declare-fun b!5550542 () Bool)

(assert (=> b!5550542 true))

(assert (=> b!5550542 true))

(declare-fun lambda!297650 () Int)

(declare-fun lambda!297649 () Int)

(assert (=> b!5550542 (not (= lambda!297650 lambda!297649))))

(assert (=> b!5550542 true))

(assert (=> b!5550542 true))

(declare-fun b!5550550 () Bool)

(assert (=> b!5550550 true))

(declare-fun b!5550531 () Bool)

(declare-fun e!3428392 () Bool)

(declare-fun tp_is_empty!40315 () Bool)

(assert (=> b!5550531 (= e!3428392 tp_is_empty!40315)))

(declare-fun setNonEmpty!36907 () Bool)

(declare-fun e!3428391 () Bool)

(declare-datatypes ((C!31332 0))(
  ( (C!31333 (val!25368 Int)) )
))
(declare-datatypes ((Regex!15531 0))(
  ( (ElementMatch!15531 (c!971481 C!31332)) (Concat!24376 (regOne!31574 Regex!15531) (regTwo!31574 Regex!15531)) (EmptyExpr!15531) (Star!15531 (reg!15860 Regex!15531)) (EmptyLang!15531) (Union!15531 (regOne!31575 Regex!15531) (regTwo!31575 Regex!15531)) )
))
(declare-datatypes ((List!62892 0))(
  ( (Nil!62768) (Cons!62768 (h!69216 Regex!15531) (t!376155 List!62892)) )
))
(declare-datatypes ((Context!9830 0))(
  ( (Context!9831 (exprs!5415 List!62892)) )
))
(declare-fun setElem!36907 () Context!9830)

(declare-fun setRes!36907 () Bool)

(declare-fun tp!1531583 () Bool)

(declare-fun inv!82074 (Context!9830) Bool)

(assert (=> setNonEmpty!36907 (= setRes!36907 (and tp!1531583 (inv!82074 setElem!36907) e!3428391))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9830))

(declare-fun setRest!36907 () (InoxSet Context!9830))

(assert (=> setNonEmpty!36907 (= z!1189 ((_ map or) (store ((as const (Array Context!9830 Bool)) false) setElem!36907 true) setRest!36907))))

(declare-fun b!5550532 () Bool)

(declare-fun tp!1531582 () Bool)

(assert (=> b!5550532 (= e!3428392 tp!1531582)))

(declare-fun b!5550533 () Bool)

(declare-fun res!2359582 () Bool)

(declare-fun e!3428390 () Bool)

(assert (=> b!5550533 (=> (not res!2359582) (not e!3428390))))

(declare-datatypes ((List!62893 0))(
  ( (Nil!62769) (Cons!62769 (h!69217 Context!9830) (t!376156 List!62893)) )
))
(declare-fun zl!343 () List!62893)

(declare-fun toList!9315 ((InoxSet Context!9830)) List!62893)

(assert (=> b!5550533 (= res!2359582 (= (toList!9315 z!1189) zl!343))))

(declare-fun tp!1531590 () Bool)

(declare-fun e!3428396 () Bool)

(declare-fun e!3428393 () Bool)

(declare-fun b!5550534 () Bool)

(assert (=> b!5550534 (= e!3428396 (and (inv!82074 (h!69217 zl!343)) e!3428393 tp!1531590))))

(declare-fun b!5550535 () Bool)

(declare-fun res!2359580 () Bool)

(assert (=> b!5550535 (=> (not res!2359580) (not e!3428390))))

(declare-fun r!7292 () Regex!15531)

(declare-fun unfocusZipper!1273 (List!62893) Regex!15531)

(assert (=> b!5550535 (= res!2359580 (= r!7292 (unfocusZipper!1273 zl!343)))))

(declare-fun setIsEmpty!36907 () Bool)

(assert (=> setIsEmpty!36907 setRes!36907))

(declare-fun b!5550536 () Bool)

(declare-fun tp!1531588 () Bool)

(assert (=> b!5550536 (= e!3428391 tp!1531588)))

(declare-fun b!5550537 () Bool)

(declare-fun res!2359575 () Bool)

(declare-fun e!3428388 () Bool)

(assert (=> b!5550537 (=> res!2359575 e!3428388)))

(get-info :version)

(assert (=> b!5550537 (= res!2359575 (or ((_ is EmptyExpr!15531) r!7292) ((_ is EmptyLang!15531) r!7292) ((_ is ElementMatch!15531) r!7292) ((_ is Union!15531) r!7292) (not ((_ is Concat!24376) r!7292))))))

(declare-fun b!5550538 () Bool)

(declare-fun res!2359573 () Bool)

(assert (=> b!5550538 (=> res!2359573 e!3428388)))

(declare-fun isEmpty!34557 (List!62893) Bool)

(assert (=> b!5550538 (= res!2359573 (not (isEmpty!34557 (t!376156 zl!343))))))

(declare-fun b!5550539 () Bool)

(assert (=> b!5550539 (= e!3428390 (not e!3428388))))

(declare-fun res!2359571 () Bool)

(assert (=> b!5550539 (=> res!2359571 e!3428388)))

(assert (=> b!5550539 (= res!2359571 (not ((_ is Cons!62769) zl!343)))))

(declare-fun lt!2250223 () Bool)

(declare-datatypes ((List!62894 0))(
  ( (Nil!62770) (Cons!62770 (h!69218 C!31332) (t!376157 List!62894)) )
))
(declare-fun s!2326 () List!62894)

(declare-fun matchRSpec!2634 (Regex!15531 List!62894) Bool)

(assert (=> b!5550539 (= lt!2250223 (matchRSpec!2634 r!7292 s!2326))))

(declare-fun matchR!7716 (Regex!15531 List!62894) Bool)

(assert (=> b!5550539 (= lt!2250223 (matchR!7716 r!7292 s!2326))))

(declare-datatypes ((Unit!155522 0))(
  ( (Unit!155523) )
))
(declare-fun lt!2250224 () Unit!155522)

(declare-fun mainMatchTheorem!2634 (Regex!15531 List!62894) Unit!155522)

(assert (=> b!5550539 (= lt!2250224 (mainMatchTheorem!2634 r!7292 s!2326))))

(declare-fun b!5550540 () Bool)

(declare-fun tp!1531587 () Bool)

(declare-fun tp!1531589 () Bool)

(assert (=> b!5550540 (= e!3428392 (and tp!1531587 tp!1531589))))

(declare-fun b!5550541 () Bool)

(declare-fun lt!2250225 () (InoxSet Context!9830))

(declare-fun e!3428395 () Bool)

(declare-fun lt!2250227 () (InoxSet Context!9830))

(declare-fun lt!2250222 () (InoxSet Context!9830))

(assert (=> b!5550541 (= e!3428395 (= lt!2250225 ((_ map or) lt!2250227 lt!2250222)))))

(declare-fun e!3428389 () Bool)

(assert (=> b!5550542 (= e!3428388 e!3428389)))

(declare-fun res!2359576 () Bool)

(assert (=> b!5550542 (=> res!2359576 e!3428389)))

(declare-fun lt!2250221 () Bool)

(assert (=> b!5550542 (= res!2359576 (or (not (= lt!2250223 lt!2250221)) ((_ is Nil!62770) s!2326)))))

(declare-fun Exists!2631 (Int) Bool)

(assert (=> b!5550542 (= (Exists!2631 lambda!297649) (Exists!2631 lambda!297650))))

(declare-fun lt!2250220 () Unit!155522)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1260 (Regex!15531 Regex!15531 List!62894) Unit!155522)

(assert (=> b!5550542 (= lt!2250220 (lemmaExistCutMatchRandMatchRSpecEquivalent!1260 (regOne!31574 r!7292) (regTwo!31574 r!7292) s!2326))))

(assert (=> b!5550542 (= lt!2250221 (Exists!2631 lambda!297649))))

(declare-datatypes ((tuple2!65256 0))(
  ( (tuple2!65257 (_1!35931 List!62894) (_2!35931 List!62894)) )
))
(declare-datatypes ((Option!15540 0))(
  ( (None!15539) (Some!15539 (v!51578 tuple2!65256)) )
))
(declare-fun isDefined!12243 (Option!15540) Bool)

(declare-fun findConcatSeparation!1954 (Regex!15531 Regex!15531 List!62894 List!62894 List!62894) Option!15540)

(assert (=> b!5550542 (= lt!2250221 (isDefined!12243 (findConcatSeparation!1954 (regOne!31574 r!7292) (regTwo!31574 r!7292) Nil!62770 s!2326 s!2326)))))

(declare-fun lt!2250218 () Unit!155522)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1718 (Regex!15531 Regex!15531 List!62894) Unit!155522)

(assert (=> b!5550542 (= lt!2250218 (lemmaFindConcatSeparationEquivalentToExists!1718 (regOne!31574 r!7292) (regTwo!31574 r!7292) s!2326))))

(declare-fun b!5550543 () Bool)

(declare-fun tp!1531585 () Bool)

(declare-fun tp!1531591 () Bool)

(assert (=> b!5550543 (= e!3428392 (and tp!1531585 tp!1531591))))

(declare-fun b!5550544 () Bool)

(declare-fun res!2359574 () Bool)

(assert (=> b!5550544 (=> res!2359574 e!3428388)))

(declare-fun generalisedConcat!1146 (List!62892) Regex!15531)

(assert (=> b!5550544 (= res!2359574 (not (= r!7292 (generalisedConcat!1146 (exprs!5415 (h!69217 zl!343))))))))

(declare-fun b!5550545 () Bool)

(declare-fun res!2359572 () Bool)

(assert (=> b!5550545 (=> res!2359572 e!3428389)))

(declare-fun isEmpty!34558 (List!62892) Bool)

(assert (=> b!5550545 (= res!2359572 (isEmpty!34558 (t!376155 (exprs!5415 (h!69217 zl!343)))))))

(declare-fun b!5550546 () Bool)

(declare-fun res!2359579 () Bool)

(assert (=> b!5550546 (=> res!2359579 e!3428388)))

(assert (=> b!5550546 (= res!2359579 (not ((_ is Cons!62768) (exprs!5415 (h!69217 zl!343)))))))

(declare-fun b!5550547 () Bool)

(declare-fun tp!1531586 () Bool)

(assert (=> b!5550547 (= e!3428393 tp!1531586)))

(declare-fun b!5550548 () Bool)

(declare-fun res!2359581 () Bool)

(assert (=> b!5550548 (=> res!2359581 e!3428388)))

(declare-fun generalisedUnion!1394 (List!62892) Regex!15531)

(declare-fun unfocusZipperList!959 (List!62893) List!62892)

(assert (=> b!5550548 (= res!2359581 (not (= r!7292 (generalisedUnion!1394 (unfocusZipperList!959 zl!343)))))))

(declare-fun b!5550549 () Bool)

(declare-fun e!3428394 () Bool)

(declare-fun tp!1531584 () Bool)

(assert (=> b!5550549 (= e!3428394 (and tp_is_empty!40315 tp!1531584))))

(assert (=> b!5550550 (= e!3428389 e!3428395)))

(declare-fun res!2359577 () Bool)

(assert (=> b!5550550 (=> res!2359577 e!3428395)))

(declare-fun nullable!5563 (Regex!15531) Bool)

(assert (=> b!5550550 (= res!2359577 (not (nullable!5563 (h!69216 (exprs!5415 (h!69217 zl!343))))))))

(declare-fun lambda!297651 () Int)

(declare-fun flatMap!1144 ((InoxSet Context!9830) Int) (InoxSet Context!9830))

(declare-fun derivationStepZipperUp!799 (Context!9830 C!31332) (InoxSet Context!9830))

(assert (=> b!5550550 (= (flatMap!1144 z!1189 lambda!297651) (derivationStepZipperUp!799 (h!69217 zl!343) (h!69218 s!2326)))))

(declare-fun lt!2250226 () Unit!155522)

(declare-fun lemmaFlatMapOnSingletonSet!676 ((InoxSet Context!9830) Context!9830 Int) Unit!155522)

(assert (=> b!5550550 (= lt!2250226 (lemmaFlatMapOnSingletonSet!676 z!1189 (h!69217 zl!343) lambda!297651))))

(declare-fun lt!2250219 () Context!9830)

(assert (=> b!5550550 (= lt!2250222 (derivationStepZipperUp!799 lt!2250219 (h!69218 s!2326)))))

(declare-fun derivationStepZipperDown!873 (Regex!15531 Context!9830 C!31332) (InoxSet Context!9830))

(assert (=> b!5550550 (= lt!2250227 (derivationStepZipperDown!873 (h!69216 (exprs!5415 (h!69217 zl!343))) lt!2250219 (h!69218 s!2326)))))

(assert (=> b!5550550 (= lt!2250219 (Context!9831 (t!376155 (exprs!5415 (h!69217 zl!343)))))))

(assert (=> b!5550550 (= lt!2250225 (derivationStepZipperUp!799 (Context!9831 (Cons!62768 (h!69216 (exprs!5415 (h!69217 zl!343))) (t!376155 (exprs!5415 (h!69217 zl!343))))) (h!69218 s!2326)))))

(declare-fun res!2359578 () Bool)

(assert (=> start!577778 (=> (not res!2359578) (not e!3428390))))

(declare-fun validRegex!7267 (Regex!15531) Bool)

(assert (=> start!577778 (= res!2359578 (validRegex!7267 r!7292))))

(assert (=> start!577778 e!3428390))

(assert (=> start!577778 e!3428392))

(declare-fun condSetEmpty!36907 () Bool)

(assert (=> start!577778 (= condSetEmpty!36907 (= z!1189 ((as const (Array Context!9830 Bool)) false)))))

(assert (=> start!577778 setRes!36907))

(assert (=> start!577778 e!3428396))

(assert (=> start!577778 e!3428394))

(assert (= (and start!577778 res!2359578) b!5550533))

(assert (= (and b!5550533 res!2359582) b!5550535))

(assert (= (and b!5550535 res!2359580) b!5550539))

(assert (= (and b!5550539 (not res!2359571)) b!5550538))

(assert (= (and b!5550538 (not res!2359573)) b!5550544))

(assert (= (and b!5550544 (not res!2359574)) b!5550546))

(assert (= (and b!5550546 (not res!2359579)) b!5550548))

(assert (= (and b!5550548 (not res!2359581)) b!5550537))

(assert (= (and b!5550537 (not res!2359575)) b!5550542))

(assert (= (and b!5550542 (not res!2359576)) b!5550545))

(assert (= (and b!5550545 (not res!2359572)) b!5550550))

(assert (= (and b!5550550 (not res!2359577)) b!5550541))

(assert (= (and start!577778 ((_ is ElementMatch!15531) r!7292)) b!5550531))

(assert (= (and start!577778 ((_ is Concat!24376) r!7292)) b!5550540))

(assert (= (and start!577778 ((_ is Star!15531) r!7292)) b!5550532))

(assert (= (and start!577778 ((_ is Union!15531) r!7292)) b!5550543))

(assert (= (and start!577778 condSetEmpty!36907) setIsEmpty!36907))

(assert (= (and start!577778 (not condSetEmpty!36907)) setNonEmpty!36907))

(assert (= setNonEmpty!36907 b!5550536))

(assert (= b!5550534 b!5550547))

(assert (= (and start!577778 ((_ is Cons!62769) zl!343)) b!5550534))

(assert (= (and start!577778 ((_ is Cons!62770) s!2326)) b!5550549))

(declare-fun m!6544636 () Bool)

(assert (=> b!5550535 m!6544636))

(declare-fun m!6544638 () Bool)

(assert (=> b!5550534 m!6544638))

(declare-fun m!6544640 () Bool)

(assert (=> b!5550550 m!6544640))

(declare-fun m!6544642 () Bool)

(assert (=> b!5550550 m!6544642))

(declare-fun m!6544644 () Bool)

(assert (=> b!5550550 m!6544644))

(declare-fun m!6544646 () Bool)

(assert (=> b!5550550 m!6544646))

(declare-fun m!6544648 () Bool)

(assert (=> b!5550550 m!6544648))

(declare-fun m!6544650 () Bool)

(assert (=> b!5550550 m!6544650))

(declare-fun m!6544652 () Bool)

(assert (=> b!5550550 m!6544652))

(declare-fun m!6544654 () Bool)

(assert (=> b!5550548 m!6544654))

(assert (=> b!5550548 m!6544654))

(declare-fun m!6544656 () Bool)

(assert (=> b!5550548 m!6544656))

(declare-fun m!6544658 () Bool)

(assert (=> b!5550538 m!6544658))

(declare-fun m!6544660 () Bool)

(assert (=> b!5550539 m!6544660))

(declare-fun m!6544662 () Bool)

(assert (=> b!5550539 m!6544662))

(declare-fun m!6544664 () Bool)

(assert (=> b!5550539 m!6544664))

(declare-fun m!6544666 () Bool)

(assert (=> start!577778 m!6544666))

(declare-fun m!6544668 () Bool)

(assert (=> b!5550545 m!6544668))

(declare-fun m!6544670 () Bool)

(assert (=> b!5550542 m!6544670))

(declare-fun m!6544672 () Bool)

(assert (=> b!5550542 m!6544672))

(declare-fun m!6544674 () Bool)

(assert (=> b!5550542 m!6544674))

(declare-fun m!6544676 () Bool)

(assert (=> b!5550542 m!6544676))

(declare-fun m!6544678 () Bool)

(assert (=> b!5550542 m!6544678))

(assert (=> b!5550542 m!6544676))

(assert (=> b!5550542 m!6544672))

(declare-fun m!6544680 () Bool)

(assert (=> b!5550542 m!6544680))

(declare-fun m!6544682 () Bool)

(assert (=> b!5550544 m!6544682))

(declare-fun m!6544684 () Bool)

(assert (=> setNonEmpty!36907 m!6544684))

(declare-fun m!6544686 () Bool)

(assert (=> b!5550533 m!6544686))

(check-sat (not b!5550543) (not start!577778) (not b!5550535) (not b!5550540) (not b!5550545) (not b!5550542) (not b!5550539) (not b!5550533) (not b!5550548) (not b!5550532) (not b!5550544) tp_is_empty!40315 (not b!5550536) (not b!5550534) (not b!5550550) (not b!5550549) (not b!5550547) (not setNonEmpty!36907) (not b!5550538))
(check-sat)
(get-model)

(declare-fun b!5550577 () Bool)

(declare-fun e!3428410 () Bool)

(declare-fun lt!2250230 () Regex!15531)

(declare-fun isUnion!535 (Regex!15531) Bool)

(assert (=> b!5550577 (= e!3428410 (isUnion!535 lt!2250230))))

(declare-fun d!1757525 () Bool)

(declare-fun e!3428414 () Bool)

(assert (=> d!1757525 e!3428414))

(declare-fun res!2359587 () Bool)

(assert (=> d!1757525 (=> (not res!2359587) (not e!3428414))))

(assert (=> d!1757525 (= res!2359587 (validRegex!7267 lt!2250230))))

(declare-fun e!3428409 () Regex!15531)

(assert (=> d!1757525 (= lt!2250230 e!3428409)))

(declare-fun c!971492 () Bool)

(declare-fun e!3428411 () Bool)

(assert (=> d!1757525 (= c!971492 e!3428411)))

(declare-fun res!2359588 () Bool)

(assert (=> d!1757525 (=> (not res!2359588) (not e!3428411))))

(assert (=> d!1757525 (= res!2359588 ((_ is Cons!62768) (unfocusZipperList!959 zl!343)))))

(declare-fun lambda!297654 () Int)

(declare-fun forall!14704 (List!62892 Int) Bool)

(assert (=> d!1757525 (forall!14704 (unfocusZipperList!959 zl!343) lambda!297654)))

(assert (=> d!1757525 (= (generalisedUnion!1394 (unfocusZipperList!959 zl!343)) lt!2250230)))

(declare-fun b!5550578 () Bool)

(assert (=> b!5550578 (= e!3428409 (h!69216 (unfocusZipperList!959 zl!343)))))

(declare-fun b!5550579 () Bool)

(declare-fun e!3428412 () Regex!15531)

(assert (=> b!5550579 (= e!3428412 (Union!15531 (h!69216 (unfocusZipperList!959 zl!343)) (generalisedUnion!1394 (t!376155 (unfocusZipperList!959 zl!343)))))))

(declare-fun b!5550580 () Bool)

(assert (=> b!5550580 (= e!3428411 (isEmpty!34558 (t!376155 (unfocusZipperList!959 zl!343))))))

(declare-fun b!5550581 () Bool)

(declare-fun e!3428413 () Bool)

(assert (=> b!5550581 (= e!3428414 e!3428413)))

(declare-fun c!971490 () Bool)

(assert (=> b!5550581 (= c!971490 (isEmpty!34558 (unfocusZipperList!959 zl!343)))))

(declare-fun b!5550582 () Bool)

(assert (=> b!5550582 (= e!3428409 e!3428412)))

(declare-fun c!971491 () Bool)

(assert (=> b!5550582 (= c!971491 ((_ is Cons!62768) (unfocusZipperList!959 zl!343)))))

(declare-fun b!5550583 () Bool)

(declare-fun head!11847 (List!62892) Regex!15531)

(assert (=> b!5550583 (= e!3428410 (= lt!2250230 (head!11847 (unfocusZipperList!959 zl!343))))))

(declare-fun b!5550584 () Bool)

(assert (=> b!5550584 (= e!3428413 e!3428410)))

(declare-fun c!971493 () Bool)

(declare-fun tail!10942 (List!62892) List!62892)

(assert (=> b!5550584 (= c!971493 (isEmpty!34558 (tail!10942 (unfocusZipperList!959 zl!343))))))

(declare-fun b!5550585 () Bool)

(declare-fun isEmptyLang!1105 (Regex!15531) Bool)

(assert (=> b!5550585 (= e!3428413 (isEmptyLang!1105 lt!2250230))))

(declare-fun b!5550586 () Bool)

(assert (=> b!5550586 (= e!3428412 EmptyLang!15531)))

(assert (= (and d!1757525 res!2359588) b!5550580))

(assert (= (and d!1757525 c!971492) b!5550578))

(assert (= (and d!1757525 (not c!971492)) b!5550582))

(assert (= (and b!5550582 c!971491) b!5550579))

(assert (= (and b!5550582 (not c!971491)) b!5550586))

(assert (= (and d!1757525 res!2359587) b!5550581))

(assert (= (and b!5550581 c!971490) b!5550585))

(assert (= (and b!5550581 (not c!971490)) b!5550584))

(assert (= (and b!5550584 c!971493) b!5550583))

(assert (= (and b!5550584 (not c!971493)) b!5550577))

(declare-fun m!6544688 () Bool)

(assert (=> b!5550580 m!6544688))

(declare-fun m!6544690 () Bool)

(assert (=> b!5550579 m!6544690))

(declare-fun m!6544692 () Bool)

(assert (=> b!5550577 m!6544692))

(assert (=> b!5550581 m!6544654))

(declare-fun m!6544694 () Bool)

(assert (=> b!5550581 m!6544694))

(assert (=> b!5550583 m!6544654))

(declare-fun m!6544696 () Bool)

(assert (=> b!5550583 m!6544696))

(assert (=> b!5550584 m!6544654))

(declare-fun m!6544698 () Bool)

(assert (=> b!5550584 m!6544698))

(assert (=> b!5550584 m!6544698))

(declare-fun m!6544700 () Bool)

(assert (=> b!5550584 m!6544700))

(declare-fun m!6544702 () Bool)

(assert (=> b!5550585 m!6544702))

(declare-fun m!6544704 () Bool)

(assert (=> d!1757525 m!6544704))

(assert (=> d!1757525 m!6544654))

(declare-fun m!6544706 () Bool)

(assert (=> d!1757525 m!6544706))

(assert (=> b!5550548 d!1757525))

(declare-fun bs!1286069 () Bool)

(declare-fun d!1757527 () Bool)

(assert (= bs!1286069 (and d!1757527 d!1757525)))

(declare-fun lambda!297657 () Int)

(assert (=> bs!1286069 (= lambda!297657 lambda!297654)))

(declare-fun lt!2250233 () List!62892)

(assert (=> d!1757527 (forall!14704 lt!2250233 lambda!297657)))

(declare-fun e!3428417 () List!62892)

(assert (=> d!1757527 (= lt!2250233 e!3428417)))

(declare-fun c!971496 () Bool)

(assert (=> d!1757527 (= c!971496 ((_ is Cons!62769) zl!343))))

(assert (=> d!1757527 (= (unfocusZipperList!959 zl!343) lt!2250233)))

(declare-fun b!5550591 () Bool)

(assert (=> b!5550591 (= e!3428417 (Cons!62768 (generalisedConcat!1146 (exprs!5415 (h!69217 zl!343))) (unfocusZipperList!959 (t!376156 zl!343))))))

(declare-fun b!5550592 () Bool)

(assert (=> b!5550592 (= e!3428417 Nil!62768)))

(assert (= (and d!1757527 c!971496) b!5550591))

(assert (= (and d!1757527 (not c!971496)) b!5550592))

(declare-fun m!6544708 () Bool)

(assert (=> d!1757527 m!6544708))

(assert (=> b!5550591 m!6544682))

(declare-fun m!6544710 () Bool)

(assert (=> b!5550591 m!6544710))

(assert (=> b!5550548 d!1757527))

(declare-fun b!5550615 () Bool)

(declare-fun e!3428431 () (InoxSet Context!9830))

(assert (=> b!5550615 (= e!3428431 (store ((as const (Array Context!9830 Bool)) false) lt!2250219 true))))

(declare-fun b!5550616 () Bool)

(declare-fun e!3428432 () (InoxSet Context!9830))

(assert (=> b!5550616 (= e!3428431 e!3428432)))

(declare-fun c!971509 () Bool)

(assert (=> b!5550616 (= c!971509 ((_ is Union!15531) (h!69216 (exprs!5415 (h!69217 zl!343)))))))

(declare-fun c!971508 () Bool)

(declare-fun call!413662 () (InoxSet Context!9830))

(declare-fun call!413659 () List!62892)

(declare-fun c!971510 () Bool)

(declare-fun bm!413653 () Bool)

(assert (=> bm!413653 (= call!413662 (derivationStepZipperDown!873 (ite c!971509 (regOne!31575 (h!69216 (exprs!5415 (h!69217 zl!343)))) (ite c!971508 (regTwo!31574 (h!69216 (exprs!5415 (h!69217 zl!343)))) (ite c!971510 (regOne!31574 (h!69216 (exprs!5415 (h!69217 zl!343)))) (reg!15860 (h!69216 (exprs!5415 (h!69217 zl!343))))))) (ite (or c!971509 c!971508) lt!2250219 (Context!9831 call!413659)) (h!69218 s!2326)))))

(declare-fun bm!413654 () Bool)

(declare-fun call!413663 () List!62892)

(declare-fun $colon$colon!1601 (List!62892 Regex!15531) List!62892)

(assert (=> bm!413654 (= call!413663 ($colon$colon!1601 (exprs!5415 lt!2250219) (ite (or c!971508 c!971510) (regTwo!31574 (h!69216 (exprs!5415 (h!69217 zl!343)))) (h!69216 (exprs!5415 (h!69217 zl!343))))))))

(declare-fun b!5550618 () Bool)

(declare-fun e!3428430 () (InoxSet Context!9830))

(declare-fun call!413658 () (InoxSet Context!9830))

(declare-fun call!413660 () (InoxSet Context!9830))

(assert (=> b!5550618 (= e!3428430 ((_ map or) call!413658 call!413660))))

(declare-fun b!5550619 () Bool)

(declare-fun e!3428433 () Bool)

(assert (=> b!5550619 (= c!971508 e!3428433)))

(declare-fun res!2359591 () Bool)

(assert (=> b!5550619 (=> (not res!2359591) (not e!3428433))))

(assert (=> b!5550619 (= res!2359591 ((_ is Concat!24376) (h!69216 (exprs!5415 (h!69217 zl!343)))))))

(assert (=> b!5550619 (= e!3428432 e!3428430)))

(declare-fun bm!413655 () Bool)

(assert (=> bm!413655 (= call!413658 (derivationStepZipperDown!873 (ite c!971509 (regTwo!31575 (h!69216 (exprs!5415 (h!69217 zl!343)))) (regOne!31574 (h!69216 (exprs!5415 (h!69217 zl!343))))) (ite c!971509 lt!2250219 (Context!9831 call!413663)) (h!69218 s!2326)))))

(declare-fun b!5550620 () Bool)

(declare-fun e!3428435 () (InoxSet Context!9830))

(declare-fun call!413661 () (InoxSet Context!9830))

(assert (=> b!5550620 (= e!3428435 call!413661)))

(declare-fun bm!413656 () Bool)

(assert (=> bm!413656 (= call!413659 call!413663)))

(declare-fun b!5550621 () Bool)

(declare-fun e!3428434 () (InoxSet Context!9830))

(assert (=> b!5550621 (= e!3428430 e!3428434)))

(assert (=> b!5550621 (= c!971510 ((_ is Concat!24376) (h!69216 (exprs!5415 (h!69217 zl!343)))))))

(declare-fun b!5550622 () Bool)

(assert (=> b!5550622 (= e!3428432 ((_ map or) call!413662 call!413658))))

(declare-fun b!5550623 () Bool)

(assert (=> b!5550623 (= e!3428435 ((as const (Array Context!9830 Bool)) false))))

(declare-fun b!5550617 () Bool)

(declare-fun c!971511 () Bool)

(assert (=> b!5550617 (= c!971511 ((_ is Star!15531) (h!69216 (exprs!5415 (h!69217 zl!343)))))))

(assert (=> b!5550617 (= e!3428434 e!3428435)))

(declare-fun d!1757529 () Bool)

(declare-fun c!971507 () Bool)

(assert (=> d!1757529 (= c!971507 (and ((_ is ElementMatch!15531) (h!69216 (exprs!5415 (h!69217 zl!343)))) (= (c!971481 (h!69216 (exprs!5415 (h!69217 zl!343)))) (h!69218 s!2326))))))

(assert (=> d!1757529 (= (derivationStepZipperDown!873 (h!69216 (exprs!5415 (h!69217 zl!343))) lt!2250219 (h!69218 s!2326)) e!3428431)))

(declare-fun bm!413657 () Bool)

(assert (=> bm!413657 (= call!413660 call!413662)))

(declare-fun bm!413658 () Bool)

(assert (=> bm!413658 (= call!413661 call!413660)))

(declare-fun b!5550624 () Bool)

(assert (=> b!5550624 (= e!3428434 call!413661)))

(declare-fun b!5550625 () Bool)

(assert (=> b!5550625 (= e!3428433 (nullable!5563 (regOne!31574 (h!69216 (exprs!5415 (h!69217 zl!343))))))))

(assert (= (and d!1757529 c!971507) b!5550615))

(assert (= (and d!1757529 (not c!971507)) b!5550616))

(assert (= (and b!5550616 c!971509) b!5550622))

(assert (= (and b!5550616 (not c!971509)) b!5550619))

(assert (= (and b!5550619 res!2359591) b!5550625))

(assert (= (and b!5550619 c!971508) b!5550618))

(assert (= (and b!5550619 (not c!971508)) b!5550621))

(assert (= (and b!5550621 c!971510) b!5550624))

(assert (= (and b!5550621 (not c!971510)) b!5550617))

(assert (= (and b!5550617 c!971511) b!5550620))

(assert (= (and b!5550617 (not c!971511)) b!5550623))

(assert (= (or b!5550624 b!5550620) bm!413656))

(assert (= (or b!5550624 b!5550620) bm!413658))

(assert (= (or b!5550618 bm!413656) bm!413654))

(assert (= (or b!5550618 bm!413658) bm!413657))

(assert (= (or b!5550622 b!5550618) bm!413655))

(assert (= (or b!5550622 bm!413657) bm!413653))

(declare-fun m!6544712 () Bool)

(assert (=> b!5550625 m!6544712))

(declare-fun m!6544714 () Bool)

(assert (=> bm!413653 m!6544714))

(declare-fun m!6544716 () Bool)

(assert (=> bm!413654 m!6544716))

(declare-fun m!6544718 () Bool)

(assert (=> bm!413655 m!6544718))

(declare-fun m!6544720 () Bool)

(assert (=> b!5550615 m!6544720))

(assert (=> b!5550550 d!1757529))

(declare-fun b!5550636 () Bool)

(declare-fun e!3428443 () (InoxSet Context!9830))

(declare-fun call!413666 () (InoxSet Context!9830))

(assert (=> b!5550636 (= e!3428443 call!413666)))

(declare-fun b!5550637 () Bool)

(declare-fun e!3428442 () Bool)

(assert (=> b!5550637 (= e!3428442 (nullable!5563 (h!69216 (exprs!5415 lt!2250219))))))

(declare-fun e!3428444 () (InoxSet Context!9830))

(declare-fun b!5550638 () Bool)

(assert (=> b!5550638 (= e!3428444 ((_ map or) call!413666 (derivationStepZipperUp!799 (Context!9831 (t!376155 (exprs!5415 lt!2250219))) (h!69218 s!2326))))))

(declare-fun bm!413661 () Bool)

(assert (=> bm!413661 (= call!413666 (derivationStepZipperDown!873 (h!69216 (exprs!5415 lt!2250219)) (Context!9831 (t!376155 (exprs!5415 lt!2250219))) (h!69218 s!2326)))))

(declare-fun b!5550639 () Bool)

(assert (=> b!5550639 (= e!3428443 ((as const (Array Context!9830 Bool)) false))))

(declare-fun d!1757531 () Bool)

(declare-fun c!971517 () Bool)

(assert (=> d!1757531 (= c!971517 e!3428442)))

(declare-fun res!2359594 () Bool)

(assert (=> d!1757531 (=> (not res!2359594) (not e!3428442))))

(assert (=> d!1757531 (= res!2359594 ((_ is Cons!62768) (exprs!5415 lt!2250219)))))

(assert (=> d!1757531 (= (derivationStepZipperUp!799 lt!2250219 (h!69218 s!2326)) e!3428444)))

(declare-fun b!5550640 () Bool)

(assert (=> b!5550640 (= e!3428444 e!3428443)))

(declare-fun c!971516 () Bool)

(assert (=> b!5550640 (= c!971516 ((_ is Cons!62768) (exprs!5415 lt!2250219)))))

(assert (= (and d!1757531 res!2359594) b!5550637))

(assert (= (and d!1757531 c!971517) b!5550638))

(assert (= (and d!1757531 (not c!971517)) b!5550640))

(assert (= (and b!5550640 c!971516) b!5550636))

(assert (= (and b!5550640 (not c!971516)) b!5550639))

(assert (= (or b!5550638 b!5550636) bm!413661))

(declare-fun m!6544726 () Bool)

(assert (=> b!5550637 m!6544726))

(declare-fun m!6544728 () Bool)

(assert (=> b!5550638 m!6544728))

(declare-fun m!6544730 () Bool)

(assert (=> bm!413661 m!6544730))

(assert (=> b!5550550 d!1757531))

(declare-fun d!1757539 () Bool)

(declare-fun nullableFct!1680 (Regex!15531) Bool)

(assert (=> d!1757539 (= (nullable!5563 (h!69216 (exprs!5415 (h!69217 zl!343)))) (nullableFct!1680 (h!69216 (exprs!5415 (h!69217 zl!343)))))))

(declare-fun bs!1286072 () Bool)

(assert (= bs!1286072 d!1757539))

(declare-fun m!6544732 () Bool)

(assert (=> bs!1286072 m!6544732))

(assert (=> b!5550550 d!1757539))

(declare-fun b!5550641 () Bool)

(declare-fun e!3428446 () (InoxSet Context!9830))

(declare-fun call!413667 () (InoxSet Context!9830))

(assert (=> b!5550641 (= e!3428446 call!413667)))

(declare-fun b!5550642 () Bool)

(declare-fun e!3428445 () Bool)

(assert (=> b!5550642 (= e!3428445 (nullable!5563 (h!69216 (exprs!5415 (Context!9831 (Cons!62768 (h!69216 (exprs!5415 (h!69217 zl!343))) (t!376155 (exprs!5415 (h!69217 zl!343)))))))))))

(declare-fun b!5550643 () Bool)

(declare-fun e!3428447 () (InoxSet Context!9830))

(assert (=> b!5550643 (= e!3428447 ((_ map or) call!413667 (derivationStepZipperUp!799 (Context!9831 (t!376155 (exprs!5415 (Context!9831 (Cons!62768 (h!69216 (exprs!5415 (h!69217 zl!343))) (t!376155 (exprs!5415 (h!69217 zl!343)))))))) (h!69218 s!2326))))))

(declare-fun bm!413662 () Bool)

(assert (=> bm!413662 (= call!413667 (derivationStepZipperDown!873 (h!69216 (exprs!5415 (Context!9831 (Cons!62768 (h!69216 (exprs!5415 (h!69217 zl!343))) (t!376155 (exprs!5415 (h!69217 zl!343))))))) (Context!9831 (t!376155 (exprs!5415 (Context!9831 (Cons!62768 (h!69216 (exprs!5415 (h!69217 zl!343))) (t!376155 (exprs!5415 (h!69217 zl!343)))))))) (h!69218 s!2326)))))

(declare-fun b!5550644 () Bool)

(assert (=> b!5550644 (= e!3428446 ((as const (Array Context!9830 Bool)) false))))

(declare-fun d!1757541 () Bool)

(declare-fun c!971519 () Bool)

(assert (=> d!1757541 (= c!971519 e!3428445)))

(declare-fun res!2359595 () Bool)

(assert (=> d!1757541 (=> (not res!2359595) (not e!3428445))))

(assert (=> d!1757541 (= res!2359595 ((_ is Cons!62768) (exprs!5415 (Context!9831 (Cons!62768 (h!69216 (exprs!5415 (h!69217 zl!343))) (t!376155 (exprs!5415 (h!69217 zl!343))))))))))

(assert (=> d!1757541 (= (derivationStepZipperUp!799 (Context!9831 (Cons!62768 (h!69216 (exprs!5415 (h!69217 zl!343))) (t!376155 (exprs!5415 (h!69217 zl!343))))) (h!69218 s!2326)) e!3428447)))

(declare-fun b!5550645 () Bool)

(assert (=> b!5550645 (= e!3428447 e!3428446)))

(declare-fun c!971518 () Bool)

(assert (=> b!5550645 (= c!971518 ((_ is Cons!62768) (exprs!5415 (Context!9831 (Cons!62768 (h!69216 (exprs!5415 (h!69217 zl!343))) (t!376155 (exprs!5415 (h!69217 zl!343))))))))))

(assert (= (and d!1757541 res!2359595) b!5550642))

(assert (= (and d!1757541 c!971519) b!5550643))

(assert (= (and d!1757541 (not c!971519)) b!5550645))

(assert (= (and b!5550645 c!971518) b!5550641))

(assert (= (and b!5550645 (not c!971518)) b!5550644))

(assert (= (or b!5550643 b!5550641) bm!413662))

(declare-fun m!6544734 () Bool)

(assert (=> b!5550642 m!6544734))

(declare-fun m!6544736 () Bool)

(assert (=> b!5550643 m!6544736))

(declare-fun m!6544738 () Bool)

(assert (=> bm!413662 m!6544738))

(assert (=> b!5550550 d!1757541))

(declare-fun d!1757543 () Bool)

(declare-fun choose!42079 ((InoxSet Context!9830) Int) (InoxSet Context!9830))

(assert (=> d!1757543 (= (flatMap!1144 z!1189 lambda!297651) (choose!42079 z!1189 lambda!297651))))

(declare-fun bs!1286073 () Bool)

(assert (= bs!1286073 d!1757543))

(declare-fun m!6544740 () Bool)

(assert (=> bs!1286073 m!6544740))

(assert (=> b!5550550 d!1757543))

(declare-fun b!5550646 () Bool)

(declare-fun e!3428449 () (InoxSet Context!9830))

(declare-fun call!413668 () (InoxSet Context!9830))

(assert (=> b!5550646 (= e!3428449 call!413668)))

(declare-fun b!5550647 () Bool)

(declare-fun e!3428448 () Bool)

(assert (=> b!5550647 (= e!3428448 (nullable!5563 (h!69216 (exprs!5415 (h!69217 zl!343)))))))

(declare-fun b!5550648 () Bool)

(declare-fun e!3428450 () (InoxSet Context!9830))

(assert (=> b!5550648 (= e!3428450 ((_ map or) call!413668 (derivationStepZipperUp!799 (Context!9831 (t!376155 (exprs!5415 (h!69217 zl!343)))) (h!69218 s!2326))))))

(declare-fun bm!413663 () Bool)

(assert (=> bm!413663 (= call!413668 (derivationStepZipperDown!873 (h!69216 (exprs!5415 (h!69217 zl!343))) (Context!9831 (t!376155 (exprs!5415 (h!69217 zl!343)))) (h!69218 s!2326)))))

(declare-fun b!5550649 () Bool)

(assert (=> b!5550649 (= e!3428449 ((as const (Array Context!9830 Bool)) false))))

(declare-fun d!1757545 () Bool)

(declare-fun c!971521 () Bool)

(assert (=> d!1757545 (= c!971521 e!3428448)))

(declare-fun res!2359596 () Bool)

(assert (=> d!1757545 (=> (not res!2359596) (not e!3428448))))

(assert (=> d!1757545 (= res!2359596 ((_ is Cons!62768) (exprs!5415 (h!69217 zl!343))))))

(assert (=> d!1757545 (= (derivationStepZipperUp!799 (h!69217 zl!343) (h!69218 s!2326)) e!3428450)))

(declare-fun b!5550650 () Bool)

(assert (=> b!5550650 (= e!3428450 e!3428449)))

(declare-fun c!971520 () Bool)

(assert (=> b!5550650 (= c!971520 ((_ is Cons!62768) (exprs!5415 (h!69217 zl!343))))))

(assert (= (and d!1757545 res!2359596) b!5550647))

(assert (= (and d!1757545 c!971521) b!5550648))

(assert (= (and d!1757545 (not c!971521)) b!5550650))

(assert (= (and b!5550650 c!971520) b!5550646))

(assert (= (and b!5550650 (not c!971520)) b!5550649))

(assert (= (or b!5550648 b!5550646) bm!413663))

(assert (=> b!5550647 m!6544646))

(declare-fun m!6544748 () Bool)

(assert (=> b!5550648 m!6544748))

(declare-fun m!6544750 () Bool)

(assert (=> bm!413663 m!6544750))

(assert (=> b!5550550 d!1757545))

(declare-fun d!1757549 () Bool)

(declare-fun dynLambda!24550 (Int Context!9830) (InoxSet Context!9830))

(assert (=> d!1757549 (= (flatMap!1144 z!1189 lambda!297651) (dynLambda!24550 lambda!297651 (h!69217 zl!343)))))

(declare-fun lt!2250242 () Unit!155522)

(declare-fun choose!42080 ((InoxSet Context!9830) Context!9830 Int) Unit!155522)

(assert (=> d!1757549 (= lt!2250242 (choose!42080 z!1189 (h!69217 zl!343) lambda!297651))))

(assert (=> d!1757549 (= z!1189 (store ((as const (Array Context!9830 Bool)) false) (h!69217 zl!343) true))))

(assert (=> d!1757549 (= (lemmaFlatMapOnSingletonSet!676 z!1189 (h!69217 zl!343) lambda!297651) lt!2250242)))

(declare-fun b_lambda!210893 () Bool)

(assert (=> (not b_lambda!210893) (not d!1757549)))

(declare-fun bs!1286076 () Bool)

(assert (= bs!1286076 d!1757549))

(assert (=> bs!1286076 m!6544642))

(declare-fun m!6544754 () Bool)

(assert (=> bs!1286076 m!6544754))

(declare-fun m!6544756 () Bool)

(assert (=> bs!1286076 m!6544756))

(declare-fun m!6544758 () Bool)

(assert (=> bs!1286076 m!6544758))

(assert (=> b!5550550 d!1757549))

(declare-fun d!1757553 () Bool)

(assert (=> d!1757553 (= (isEmpty!34557 (t!376156 zl!343)) ((_ is Nil!62769) (t!376156 zl!343)))))

(assert (=> b!5550538 d!1757553))

(declare-fun b!5550684 () Bool)

(declare-fun res!2359611 () Bool)

(declare-fun e!3428474 () Bool)

(assert (=> b!5550684 (=> res!2359611 e!3428474)))

(assert (=> b!5550684 (= res!2359611 (not ((_ is Concat!24376) r!7292)))))

(declare-fun e!3428478 () Bool)

(assert (=> b!5550684 (= e!3428478 e!3428474)))

(declare-fun b!5550685 () Bool)

(declare-fun e!3428475 () Bool)

(assert (=> b!5550685 (= e!3428474 e!3428475)))

(declare-fun res!2359613 () Bool)

(assert (=> b!5550685 (=> (not res!2359613) (not e!3428475))))

(declare-fun call!413679 () Bool)

(assert (=> b!5550685 (= res!2359613 call!413679)))

(declare-fun bm!413673 () Bool)

(declare-fun c!971533 () Bool)

(declare-fun call!413680 () Bool)

(declare-fun c!971532 () Bool)

(assert (=> bm!413673 (= call!413680 (validRegex!7267 (ite c!971532 (reg!15860 r!7292) (ite c!971533 (regTwo!31575 r!7292) (regTwo!31574 r!7292)))))))

(declare-fun b!5550686 () Bool)

(declare-fun e!3428477 () Bool)

(declare-fun e!3428476 () Bool)

(assert (=> b!5550686 (= e!3428477 e!3428476)))

(assert (=> b!5550686 (= c!971532 ((_ is Star!15531) r!7292))))

(declare-fun b!5550687 () Bool)

(declare-fun call!413678 () Bool)

(assert (=> b!5550687 (= e!3428475 call!413678)))

(declare-fun bm!413674 () Bool)

(assert (=> bm!413674 (= call!413678 call!413680)))

(declare-fun b!5550689 () Bool)

(assert (=> b!5550689 (= e!3428476 e!3428478)))

(assert (=> b!5550689 (= c!971533 ((_ is Union!15531) r!7292))))

(declare-fun b!5550690 () Bool)

(declare-fun res!2359612 () Bool)

(declare-fun e!3428480 () Bool)

(assert (=> b!5550690 (=> (not res!2359612) (not e!3428480))))

(assert (=> b!5550690 (= res!2359612 call!413679)))

(assert (=> b!5550690 (= e!3428478 e!3428480)))

(declare-fun b!5550691 () Bool)

(declare-fun e!3428479 () Bool)

(assert (=> b!5550691 (= e!3428479 call!413680)))

(declare-fun bm!413675 () Bool)

(assert (=> bm!413675 (= call!413679 (validRegex!7267 (ite c!971533 (regOne!31575 r!7292) (regOne!31574 r!7292))))))

(declare-fun b!5550692 () Bool)

(assert (=> b!5550692 (= e!3428476 e!3428479)))

(declare-fun res!2359610 () Bool)

(assert (=> b!5550692 (= res!2359610 (not (nullable!5563 (reg!15860 r!7292))))))

(assert (=> b!5550692 (=> (not res!2359610) (not e!3428479))))

(declare-fun b!5550688 () Bool)

(assert (=> b!5550688 (= e!3428480 call!413678)))

(declare-fun d!1757555 () Bool)

(declare-fun res!2359614 () Bool)

(assert (=> d!1757555 (=> res!2359614 e!3428477)))

(assert (=> d!1757555 (= res!2359614 ((_ is ElementMatch!15531) r!7292))))

(assert (=> d!1757555 (= (validRegex!7267 r!7292) e!3428477)))

(assert (= (and d!1757555 (not res!2359614)) b!5550686))

(assert (= (and b!5550686 c!971532) b!5550692))

(assert (= (and b!5550686 (not c!971532)) b!5550689))

(assert (= (and b!5550692 res!2359610) b!5550691))

(assert (= (and b!5550689 c!971533) b!5550690))

(assert (= (and b!5550689 (not c!971533)) b!5550684))

(assert (= (and b!5550690 res!2359612) b!5550688))

(assert (= (and b!5550684 (not res!2359611)) b!5550685))

(assert (= (and b!5550685 res!2359613) b!5550687))

(assert (= (or b!5550688 b!5550687) bm!413674))

(assert (= (or b!5550690 b!5550685) bm!413675))

(assert (= (or b!5550691 bm!413674) bm!413673))

(declare-fun m!6544768 () Bool)

(assert (=> bm!413673 m!6544768))

(declare-fun m!6544770 () Bool)

(assert (=> bm!413675 m!6544770))

(declare-fun m!6544772 () Bool)

(assert (=> b!5550692 m!6544772))

(assert (=> start!577778 d!1757555))

(declare-fun bs!1286078 () Bool)

(declare-fun b!5550781 () Bool)

(assert (= bs!1286078 (and b!5550781 b!5550542)))

(declare-fun lambda!297665 () Int)

(assert (=> bs!1286078 (not (= lambda!297665 lambda!297649))))

(assert (=> bs!1286078 (not (= lambda!297665 lambda!297650))))

(assert (=> b!5550781 true))

(assert (=> b!5550781 true))

(declare-fun bs!1286079 () Bool)

(declare-fun b!5550777 () Bool)

(assert (= bs!1286079 (and b!5550777 b!5550542)))

(declare-fun lambda!297666 () Int)

(assert (=> bs!1286079 (not (= lambda!297666 lambda!297649))))

(assert (=> bs!1286079 (= lambda!297666 lambda!297650)))

(declare-fun bs!1286080 () Bool)

(assert (= bs!1286080 (and b!5550777 b!5550781)))

(assert (=> bs!1286080 (not (= lambda!297666 lambda!297665))))

(assert (=> b!5550777 true))

(assert (=> b!5550777 true))

(declare-fun b!5550771 () Bool)

(declare-fun e!3428530 () Bool)

(assert (=> b!5550771 (= e!3428530 (matchRSpec!2634 (regTwo!31575 r!7292) s!2326))))

(declare-fun bm!413700 () Bool)

(declare-fun c!971562 () Bool)

(declare-fun call!413706 () Bool)

(assert (=> bm!413700 (= call!413706 (Exists!2631 (ite c!971562 lambda!297665 lambda!297666)))))

(declare-fun b!5550772 () Bool)

(declare-fun e!3428527 () Bool)

(declare-fun call!413705 () Bool)

(assert (=> b!5550772 (= e!3428527 call!413705)))

(declare-fun b!5550773 () Bool)

(declare-fun c!971563 () Bool)

(assert (=> b!5550773 (= c!971563 ((_ is Union!15531) r!7292))))

(declare-fun e!3428532 () Bool)

(declare-fun e!3428526 () Bool)

(assert (=> b!5550773 (= e!3428532 e!3428526)))

(declare-fun b!5550774 () Bool)

(declare-fun res!2359640 () Bool)

(declare-fun e!3428528 () Bool)

(assert (=> b!5550774 (=> res!2359640 e!3428528)))

(assert (=> b!5550774 (= res!2359640 call!413705)))

(declare-fun e!3428531 () Bool)

(assert (=> b!5550774 (= e!3428531 e!3428528)))

(declare-fun b!5550775 () Bool)

(declare-fun e!3428529 () Bool)

(assert (=> b!5550775 (= e!3428527 e!3428529)))

(declare-fun res!2359639 () Bool)

(assert (=> b!5550775 (= res!2359639 (not ((_ is EmptyLang!15531) r!7292)))))

(assert (=> b!5550775 (=> (not res!2359639) (not e!3428529))))

(declare-fun b!5550776 () Bool)

(assert (=> b!5550776 (= e!3428526 e!3428530)))

(declare-fun res!2359641 () Bool)

(assert (=> b!5550776 (= res!2359641 (matchRSpec!2634 (regOne!31575 r!7292) s!2326))))

(assert (=> b!5550776 (=> res!2359641 e!3428530)))

(declare-fun b!5550778 () Bool)

(assert (=> b!5550778 (= e!3428532 (= s!2326 (Cons!62770 (c!971481 r!7292) Nil!62770)))))

(declare-fun b!5550779 () Bool)

(assert (=> b!5550779 (= e!3428526 e!3428531)))

(assert (=> b!5550779 (= c!971562 ((_ is Star!15531) r!7292))))

(declare-fun b!5550780 () Bool)

(declare-fun c!971561 () Bool)

(assert (=> b!5550780 (= c!971561 ((_ is ElementMatch!15531) r!7292))))

(assert (=> b!5550780 (= e!3428529 e!3428532)))

(declare-fun bm!413701 () Bool)

(declare-fun isEmpty!34559 (List!62894) Bool)

(assert (=> bm!413701 (= call!413705 (isEmpty!34559 s!2326))))

(assert (=> b!5550781 (= e!3428528 call!413706)))

(assert (=> b!5550777 (= e!3428531 call!413706)))

(declare-fun d!1757561 () Bool)

(declare-fun c!971564 () Bool)

(assert (=> d!1757561 (= c!971564 ((_ is EmptyExpr!15531) r!7292))))

(assert (=> d!1757561 (= (matchRSpec!2634 r!7292 s!2326) e!3428527)))

(assert (= (and d!1757561 c!971564) b!5550772))

(assert (= (and d!1757561 (not c!971564)) b!5550775))

(assert (= (and b!5550775 res!2359639) b!5550780))

(assert (= (and b!5550780 c!971561) b!5550778))

(assert (= (and b!5550780 (not c!971561)) b!5550773))

(assert (= (and b!5550773 c!971563) b!5550776))

(assert (= (and b!5550773 (not c!971563)) b!5550779))

(assert (= (and b!5550776 (not res!2359641)) b!5550771))

(assert (= (and b!5550779 c!971562) b!5550774))

(assert (= (and b!5550779 (not c!971562)) b!5550777))

(assert (= (and b!5550774 (not res!2359640)) b!5550781))

(assert (= (or b!5550781 b!5550777) bm!413700))

(assert (= (or b!5550772 b!5550774) bm!413701))

(declare-fun m!6544800 () Bool)

(assert (=> b!5550771 m!6544800))

(declare-fun m!6544802 () Bool)

(assert (=> bm!413700 m!6544802))

(declare-fun m!6544804 () Bool)

(assert (=> b!5550776 m!6544804))

(declare-fun m!6544806 () Bool)

(assert (=> bm!413701 m!6544806))

(assert (=> b!5550539 d!1757561))

(declare-fun b!5550846 () Bool)

(declare-fun e!3428574 () Bool)

(declare-fun derivativeStep!4387 (Regex!15531 C!31332) Regex!15531)

(declare-fun head!11848 (List!62894) C!31332)

(declare-fun tail!10943 (List!62894) List!62894)

(assert (=> b!5550846 (= e!3428574 (matchR!7716 (derivativeStep!4387 r!7292 (head!11848 s!2326)) (tail!10943 s!2326)))))

(declare-fun b!5550848 () Bool)

(declare-fun res!2359671 () Bool)

(declare-fun e!3428569 () Bool)

(assert (=> b!5550848 (=> res!2359671 e!3428569)))

(assert (=> b!5550848 (= res!2359671 (not ((_ is ElementMatch!15531) r!7292)))))

(declare-fun e!3428571 () Bool)

(assert (=> b!5550848 (= e!3428571 e!3428569)))

(declare-fun b!5550849 () Bool)

(declare-fun res!2359668 () Bool)

(declare-fun e!3428572 () Bool)

(assert (=> b!5550849 (=> res!2359668 e!3428572)))

(assert (=> b!5550849 (= res!2359668 (not (isEmpty!34559 (tail!10943 s!2326))))))

(declare-fun b!5550850 () Bool)

(declare-fun e!3428568 () Bool)

(declare-fun lt!2250254 () Bool)

(declare-fun call!413709 () Bool)

(assert (=> b!5550850 (= e!3428568 (= lt!2250254 call!413709))))

(declare-fun b!5550851 () Bool)

(declare-fun e!3428573 () Bool)

(assert (=> b!5550851 (= e!3428569 e!3428573)))

(declare-fun res!2359666 () Bool)

(assert (=> b!5550851 (=> (not res!2359666) (not e!3428573))))

(assert (=> b!5550851 (= res!2359666 (not lt!2250254))))

(declare-fun b!5550852 () Bool)

(declare-fun res!2359670 () Bool)

(assert (=> b!5550852 (=> res!2359670 e!3428569)))

(declare-fun e!3428570 () Bool)

(assert (=> b!5550852 (= res!2359670 e!3428570)))

(declare-fun res!2359669 () Bool)

(assert (=> b!5550852 (=> (not res!2359669) (not e!3428570))))

(assert (=> b!5550852 (= res!2359669 lt!2250254)))

(declare-fun d!1757575 () Bool)

(assert (=> d!1757575 e!3428568))

(declare-fun c!971588 () Bool)

(assert (=> d!1757575 (= c!971588 ((_ is EmptyExpr!15531) r!7292))))

(assert (=> d!1757575 (= lt!2250254 e!3428574)))

(declare-fun c!971587 () Bool)

(assert (=> d!1757575 (= c!971587 (isEmpty!34559 s!2326))))

(assert (=> d!1757575 (validRegex!7267 r!7292)))

(assert (=> d!1757575 (= (matchR!7716 r!7292 s!2326) lt!2250254)))

(declare-fun b!5550847 () Bool)

(assert (=> b!5550847 (= e!3428568 e!3428571)))

(declare-fun c!971586 () Bool)

(assert (=> b!5550847 (= c!971586 ((_ is EmptyLang!15531) r!7292))))

(declare-fun b!5550853 () Bool)

(assert (=> b!5550853 (= e!3428573 e!3428572)))

(declare-fun res!2359667 () Bool)

(assert (=> b!5550853 (=> res!2359667 e!3428572)))

(assert (=> b!5550853 (= res!2359667 call!413709)))

(declare-fun b!5550854 () Bool)

(assert (=> b!5550854 (= e!3428574 (nullable!5563 r!7292))))

(declare-fun b!5550855 () Bool)

(declare-fun res!2359664 () Bool)

(assert (=> b!5550855 (=> (not res!2359664) (not e!3428570))))

(assert (=> b!5550855 (= res!2359664 (isEmpty!34559 (tail!10943 s!2326)))))

(declare-fun b!5550856 () Bool)

(assert (=> b!5550856 (= e!3428571 (not lt!2250254))))

(declare-fun b!5550857 () Bool)

(declare-fun res!2359665 () Bool)

(assert (=> b!5550857 (=> (not res!2359665) (not e!3428570))))

(assert (=> b!5550857 (= res!2359665 (not call!413709))))

(declare-fun b!5550858 () Bool)

(assert (=> b!5550858 (= e!3428570 (= (head!11848 s!2326) (c!971481 r!7292)))))

(declare-fun b!5550859 () Bool)

(assert (=> b!5550859 (= e!3428572 (not (= (head!11848 s!2326) (c!971481 r!7292))))))

(declare-fun bm!413704 () Bool)

(assert (=> bm!413704 (= call!413709 (isEmpty!34559 s!2326))))

(assert (= (and d!1757575 c!971587) b!5550854))

(assert (= (and d!1757575 (not c!971587)) b!5550846))

(assert (= (and d!1757575 c!971588) b!5550850))

(assert (= (and d!1757575 (not c!971588)) b!5550847))

(assert (= (and b!5550847 c!971586) b!5550856))

(assert (= (and b!5550847 (not c!971586)) b!5550848))

(assert (= (and b!5550848 (not res!2359671)) b!5550852))

(assert (= (and b!5550852 res!2359669) b!5550857))

(assert (= (and b!5550857 res!2359665) b!5550855))

(assert (= (and b!5550855 res!2359664) b!5550858))

(assert (= (and b!5550852 (not res!2359670)) b!5550851))

(assert (= (and b!5550851 res!2359666) b!5550853))

(assert (= (and b!5550853 (not res!2359667)) b!5550849))

(assert (= (and b!5550849 (not res!2359668)) b!5550859))

(assert (= (or b!5550850 b!5550853 b!5550857) bm!413704))

(declare-fun m!6544832 () Bool)

(assert (=> b!5550858 m!6544832))

(assert (=> b!5550859 m!6544832))

(assert (=> d!1757575 m!6544806))

(assert (=> d!1757575 m!6544666))

(declare-fun m!6544834 () Bool)

(assert (=> b!5550855 m!6544834))

(assert (=> b!5550855 m!6544834))

(declare-fun m!6544836 () Bool)

(assert (=> b!5550855 m!6544836))

(assert (=> bm!413704 m!6544806))

(declare-fun m!6544838 () Bool)

(assert (=> b!5550854 m!6544838))

(assert (=> b!5550846 m!6544832))

(assert (=> b!5550846 m!6544832))

(declare-fun m!6544840 () Bool)

(assert (=> b!5550846 m!6544840))

(assert (=> b!5550846 m!6544834))

(assert (=> b!5550846 m!6544840))

(assert (=> b!5550846 m!6544834))

(declare-fun m!6544842 () Bool)

(assert (=> b!5550846 m!6544842))

(assert (=> b!5550849 m!6544834))

(assert (=> b!5550849 m!6544834))

(assert (=> b!5550849 m!6544836))

(assert (=> b!5550539 d!1757575))

(declare-fun d!1757581 () Bool)

(assert (=> d!1757581 (= (matchR!7716 r!7292 s!2326) (matchRSpec!2634 r!7292 s!2326))))

(declare-fun lt!2250259 () Unit!155522)

(declare-fun choose!42082 (Regex!15531 List!62894) Unit!155522)

(assert (=> d!1757581 (= lt!2250259 (choose!42082 r!7292 s!2326))))

(assert (=> d!1757581 (validRegex!7267 r!7292)))

(assert (=> d!1757581 (= (mainMatchTheorem!2634 r!7292 s!2326) lt!2250259)))

(declare-fun bs!1286084 () Bool)

(assert (= bs!1286084 d!1757581))

(assert (=> bs!1286084 m!6544662))

(assert (=> bs!1286084 m!6544660))

(declare-fun m!6544844 () Bool)

(assert (=> bs!1286084 m!6544844))

(assert (=> bs!1286084 m!6544666))

(assert (=> b!5550539 d!1757581))

(declare-fun b!5550940 () Bool)

(declare-fun e!3428624 () Option!15540)

(assert (=> b!5550940 (= e!3428624 None!15539)))

(declare-fun b!5550941 () Bool)

(declare-fun res!2359706 () Bool)

(declare-fun e!3428621 () Bool)

(assert (=> b!5550941 (=> (not res!2359706) (not e!3428621))))

(declare-fun lt!2250267 () Option!15540)

(declare-fun get!21603 (Option!15540) tuple2!65256)

(assert (=> b!5550941 (= res!2359706 (matchR!7716 (regOne!31574 r!7292) (_1!35931 (get!21603 lt!2250267))))))

(declare-fun b!5550942 () Bool)

(declare-fun ++!13770 (List!62894 List!62894) List!62894)

(assert (=> b!5550942 (= e!3428621 (= (++!13770 (_1!35931 (get!21603 lt!2250267)) (_2!35931 (get!21603 lt!2250267))) s!2326))))

(declare-fun b!5550943 () Bool)

(declare-fun e!3428622 () Bool)

(assert (=> b!5550943 (= e!3428622 (not (isDefined!12243 lt!2250267)))))

(declare-fun d!1757583 () Bool)

(assert (=> d!1757583 e!3428622))

(declare-fun res!2359707 () Bool)

(assert (=> d!1757583 (=> res!2359707 e!3428622)))

(assert (=> d!1757583 (= res!2359707 e!3428621)))

(declare-fun res!2359708 () Bool)

(assert (=> d!1757583 (=> (not res!2359708) (not e!3428621))))

(assert (=> d!1757583 (= res!2359708 (isDefined!12243 lt!2250267))))

(declare-fun e!3428623 () Option!15540)

(assert (=> d!1757583 (= lt!2250267 e!3428623)))

(declare-fun c!971613 () Bool)

(declare-fun e!3428625 () Bool)

(assert (=> d!1757583 (= c!971613 e!3428625)))

(declare-fun res!2359704 () Bool)

(assert (=> d!1757583 (=> (not res!2359704) (not e!3428625))))

(assert (=> d!1757583 (= res!2359704 (matchR!7716 (regOne!31574 r!7292) Nil!62770))))

(assert (=> d!1757583 (validRegex!7267 (regOne!31574 r!7292))))

(assert (=> d!1757583 (= (findConcatSeparation!1954 (regOne!31574 r!7292) (regTwo!31574 r!7292) Nil!62770 s!2326 s!2326) lt!2250267)))

(declare-fun b!5550944 () Bool)

(assert (=> b!5550944 (= e!3428623 (Some!15539 (tuple2!65257 Nil!62770 s!2326)))))

(declare-fun b!5550945 () Bool)

(declare-fun res!2359705 () Bool)

(assert (=> b!5550945 (=> (not res!2359705) (not e!3428621))))

(assert (=> b!5550945 (= res!2359705 (matchR!7716 (regTwo!31574 r!7292) (_2!35931 (get!21603 lt!2250267))))))

(declare-fun b!5550946 () Bool)

(declare-fun lt!2250268 () Unit!155522)

(declare-fun lt!2250269 () Unit!155522)

(assert (=> b!5550946 (= lt!2250268 lt!2250269)))

(assert (=> b!5550946 (= (++!13770 (++!13770 Nil!62770 (Cons!62770 (h!69218 s!2326) Nil!62770)) (t!376157 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1939 (List!62894 C!31332 List!62894 List!62894) Unit!155522)

(assert (=> b!5550946 (= lt!2250269 (lemmaMoveElementToOtherListKeepsConcatEq!1939 Nil!62770 (h!69218 s!2326) (t!376157 s!2326) s!2326))))

(assert (=> b!5550946 (= e!3428624 (findConcatSeparation!1954 (regOne!31574 r!7292) (regTwo!31574 r!7292) (++!13770 Nil!62770 (Cons!62770 (h!69218 s!2326) Nil!62770)) (t!376157 s!2326) s!2326))))

(declare-fun b!5550947 () Bool)

(assert (=> b!5550947 (= e!3428623 e!3428624)))

(declare-fun c!971614 () Bool)

(assert (=> b!5550947 (= c!971614 ((_ is Nil!62770) s!2326))))

(declare-fun b!5550948 () Bool)

(assert (=> b!5550948 (= e!3428625 (matchR!7716 (regTwo!31574 r!7292) s!2326))))

(assert (= (and d!1757583 res!2359704) b!5550948))

(assert (= (and d!1757583 c!971613) b!5550944))

(assert (= (and d!1757583 (not c!971613)) b!5550947))

(assert (= (and b!5550947 c!971614) b!5550940))

(assert (= (and b!5550947 (not c!971614)) b!5550946))

(assert (= (and d!1757583 res!2359708) b!5550941))

(assert (= (and b!5550941 res!2359706) b!5550945))

(assert (= (and b!5550945 res!2359705) b!5550942))

(assert (= (and d!1757583 (not res!2359707)) b!5550943))

(declare-fun m!6544864 () Bool)

(assert (=> b!5550946 m!6544864))

(assert (=> b!5550946 m!6544864))

(declare-fun m!6544866 () Bool)

(assert (=> b!5550946 m!6544866))

(declare-fun m!6544868 () Bool)

(assert (=> b!5550946 m!6544868))

(assert (=> b!5550946 m!6544864))

(declare-fun m!6544870 () Bool)

(assert (=> b!5550946 m!6544870))

(declare-fun m!6544872 () Bool)

(assert (=> d!1757583 m!6544872))

(declare-fun m!6544874 () Bool)

(assert (=> d!1757583 m!6544874))

(declare-fun m!6544876 () Bool)

(assert (=> d!1757583 m!6544876))

(declare-fun m!6544878 () Bool)

(assert (=> b!5550941 m!6544878))

(declare-fun m!6544880 () Bool)

(assert (=> b!5550941 m!6544880))

(declare-fun m!6544882 () Bool)

(assert (=> b!5550948 m!6544882))

(assert (=> b!5550943 m!6544872))

(assert (=> b!5550942 m!6544878))

(declare-fun m!6544884 () Bool)

(assert (=> b!5550942 m!6544884))

(assert (=> b!5550945 m!6544878))

(declare-fun m!6544886 () Bool)

(assert (=> b!5550945 m!6544886))

(assert (=> b!5550542 d!1757583))

(declare-fun d!1757587 () Bool)

(declare-fun choose!42084 (Int) Bool)

(assert (=> d!1757587 (= (Exists!2631 lambda!297650) (choose!42084 lambda!297650))))

(declare-fun bs!1286088 () Bool)

(assert (= bs!1286088 d!1757587))

(declare-fun m!6544888 () Bool)

(assert (=> bs!1286088 m!6544888))

(assert (=> b!5550542 d!1757587))

(declare-fun d!1757589 () Bool)

(assert (=> d!1757589 (= (Exists!2631 lambda!297649) (choose!42084 lambda!297649))))

(declare-fun bs!1286089 () Bool)

(assert (= bs!1286089 d!1757589))

(declare-fun m!6544890 () Bool)

(assert (=> bs!1286089 m!6544890))

(assert (=> b!5550542 d!1757589))

(declare-fun bs!1286093 () Bool)

(declare-fun d!1757591 () Bool)

(assert (= bs!1286093 (and d!1757591 b!5550542)))

(declare-fun lambda!297684 () Int)

(assert (=> bs!1286093 (= lambda!297684 lambda!297649)))

(assert (=> bs!1286093 (not (= lambda!297684 lambda!297650))))

(declare-fun bs!1286094 () Bool)

(assert (= bs!1286094 (and d!1757591 b!5550781)))

(assert (=> bs!1286094 (not (= lambda!297684 lambda!297665))))

(declare-fun bs!1286095 () Bool)

(assert (= bs!1286095 (and d!1757591 b!5550777)))

(assert (=> bs!1286095 (not (= lambda!297684 lambda!297666))))

(assert (=> d!1757591 true))

(assert (=> d!1757591 true))

(assert (=> d!1757591 true))

(assert (=> d!1757591 (= (isDefined!12243 (findConcatSeparation!1954 (regOne!31574 r!7292) (regTwo!31574 r!7292) Nil!62770 s!2326 s!2326)) (Exists!2631 lambda!297684))))

(declare-fun lt!2250272 () Unit!155522)

(declare-fun choose!42085 (Regex!15531 Regex!15531 List!62894) Unit!155522)

(assert (=> d!1757591 (= lt!2250272 (choose!42085 (regOne!31574 r!7292) (regTwo!31574 r!7292) s!2326))))

(assert (=> d!1757591 (validRegex!7267 (regOne!31574 r!7292))))

(assert (=> d!1757591 (= (lemmaFindConcatSeparationEquivalentToExists!1718 (regOne!31574 r!7292) (regTwo!31574 r!7292) s!2326) lt!2250272)))

(declare-fun bs!1286096 () Bool)

(assert (= bs!1286096 d!1757591))

(declare-fun m!6544900 () Bool)

(assert (=> bs!1286096 m!6544900))

(declare-fun m!6544902 () Bool)

(assert (=> bs!1286096 m!6544902))

(assert (=> bs!1286096 m!6544672))

(assert (=> bs!1286096 m!6544674))

(assert (=> bs!1286096 m!6544672))

(assert (=> bs!1286096 m!6544876))

(assert (=> b!5550542 d!1757591))

(declare-fun bs!1286098 () Bool)

(declare-fun d!1757595 () Bool)

(assert (= bs!1286098 (and d!1757595 b!5550777)))

(declare-fun lambda!297689 () Int)

(assert (=> bs!1286098 (not (= lambda!297689 lambda!297666))))

(declare-fun bs!1286099 () Bool)

(assert (= bs!1286099 (and d!1757595 b!5550781)))

(assert (=> bs!1286099 (not (= lambda!297689 lambda!297665))))

(declare-fun bs!1286100 () Bool)

(assert (= bs!1286100 (and d!1757595 b!5550542)))

(assert (=> bs!1286100 (not (= lambda!297689 lambda!297650))))

(assert (=> bs!1286100 (= lambda!297689 lambda!297649)))

(declare-fun bs!1286101 () Bool)

(assert (= bs!1286101 (and d!1757595 d!1757591)))

(assert (=> bs!1286101 (= lambda!297689 lambda!297684)))

(assert (=> d!1757595 true))

(assert (=> d!1757595 true))

(assert (=> d!1757595 true))

(declare-fun lambda!297690 () Int)

(assert (=> bs!1286098 (= lambda!297690 lambda!297666)))

(assert (=> bs!1286099 (not (= lambda!297690 lambda!297665))))

(declare-fun bs!1286102 () Bool)

(assert (= bs!1286102 d!1757595))

(assert (=> bs!1286102 (not (= lambda!297690 lambda!297689))))

(assert (=> bs!1286100 (= lambda!297690 lambda!297650)))

(assert (=> bs!1286100 (not (= lambda!297690 lambda!297649))))

(assert (=> bs!1286101 (not (= lambda!297690 lambda!297684))))

(assert (=> d!1757595 true))

(assert (=> d!1757595 true))

(assert (=> d!1757595 true))

(assert (=> d!1757595 (= (Exists!2631 lambda!297689) (Exists!2631 lambda!297690))))

(declare-fun lt!2250280 () Unit!155522)

(declare-fun choose!42086 (Regex!15531 Regex!15531 List!62894) Unit!155522)

(assert (=> d!1757595 (= lt!2250280 (choose!42086 (regOne!31574 r!7292) (regTwo!31574 r!7292) s!2326))))

(assert (=> d!1757595 (validRegex!7267 (regOne!31574 r!7292))))

(assert (=> d!1757595 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1260 (regOne!31574 r!7292) (regTwo!31574 r!7292) s!2326) lt!2250280)))

(declare-fun m!6544918 () Bool)

(assert (=> bs!1286102 m!6544918))

(declare-fun m!6544920 () Bool)

(assert (=> bs!1286102 m!6544920))

(declare-fun m!6544922 () Bool)

(assert (=> bs!1286102 m!6544922))

(assert (=> bs!1286102 m!6544876))

(assert (=> b!5550542 d!1757595))

(declare-fun d!1757601 () Bool)

(declare-fun isEmpty!34560 (Option!15540) Bool)

(assert (=> d!1757601 (= (isDefined!12243 (findConcatSeparation!1954 (regOne!31574 r!7292) (regTwo!31574 r!7292) Nil!62770 s!2326 s!2326)) (not (isEmpty!34560 (findConcatSeparation!1954 (regOne!31574 r!7292) (regTwo!31574 r!7292) Nil!62770 s!2326 s!2326))))))

(declare-fun bs!1286103 () Bool)

(assert (= bs!1286103 d!1757601))

(assert (=> bs!1286103 m!6544672))

(declare-fun m!6544924 () Bool)

(assert (=> bs!1286103 m!6544924))

(assert (=> b!5550542 d!1757601))

(declare-fun d!1757603 () Bool)

(declare-fun e!3428676 () Bool)

(assert (=> d!1757603 e!3428676))

(declare-fun res!2359760 () Bool)

(assert (=> d!1757603 (=> (not res!2359760) (not e!3428676))))

(declare-fun lt!2250284 () List!62893)

(declare-fun noDuplicate!1516 (List!62893) Bool)

(assert (=> d!1757603 (= res!2359760 (noDuplicate!1516 lt!2250284))))

(declare-fun choose!42087 ((InoxSet Context!9830)) List!62893)

(assert (=> d!1757603 (= lt!2250284 (choose!42087 z!1189))))

(assert (=> d!1757603 (= (toList!9315 z!1189) lt!2250284)))

(declare-fun b!5551034 () Bool)

(declare-fun content!11298 (List!62893) (InoxSet Context!9830))

(assert (=> b!5551034 (= e!3428676 (= (content!11298 lt!2250284) z!1189))))

(assert (= (and d!1757603 res!2359760) b!5551034))

(declare-fun m!6544926 () Bool)

(assert (=> d!1757603 m!6544926))

(declare-fun m!6544928 () Bool)

(assert (=> d!1757603 m!6544928))

(declare-fun m!6544930 () Bool)

(assert (=> b!5551034 m!6544930))

(assert (=> b!5550533 d!1757603))

(declare-fun bs!1286104 () Bool)

(declare-fun d!1757605 () Bool)

(assert (= bs!1286104 (and d!1757605 d!1757525)))

(declare-fun lambda!297693 () Int)

(assert (=> bs!1286104 (= lambda!297693 lambda!297654)))

(declare-fun bs!1286105 () Bool)

(assert (= bs!1286105 (and d!1757605 d!1757527)))

(assert (=> bs!1286105 (= lambda!297693 lambda!297657)))

(assert (=> d!1757605 (= (inv!82074 setElem!36907) (forall!14704 (exprs!5415 setElem!36907) lambda!297693))))

(declare-fun bs!1286106 () Bool)

(assert (= bs!1286106 d!1757605))

(declare-fun m!6544938 () Bool)

(assert (=> bs!1286106 m!6544938))

(assert (=> setNonEmpty!36907 d!1757605))

(declare-fun d!1757609 () Bool)

(declare-fun lt!2250287 () Regex!15531)

(assert (=> d!1757609 (validRegex!7267 lt!2250287)))

(assert (=> d!1757609 (= lt!2250287 (generalisedUnion!1394 (unfocusZipperList!959 zl!343)))))

(assert (=> d!1757609 (= (unfocusZipper!1273 zl!343) lt!2250287)))

(declare-fun bs!1286107 () Bool)

(assert (= bs!1286107 d!1757609))

(declare-fun m!6544940 () Bool)

(assert (=> bs!1286107 m!6544940))

(assert (=> bs!1286107 m!6544654))

(assert (=> bs!1286107 m!6544654))

(assert (=> bs!1286107 m!6544656))

(assert (=> b!5550535 d!1757609))

(declare-fun d!1757611 () Bool)

(assert (=> d!1757611 (= (isEmpty!34558 (t!376155 (exprs!5415 (h!69217 zl!343)))) ((_ is Nil!62768) (t!376155 (exprs!5415 (h!69217 zl!343)))))))

(assert (=> b!5550545 d!1757611))

(declare-fun bs!1286108 () Bool)

(declare-fun d!1757613 () Bool)

(assert (= bs!1286108 (and d!1757613 d!1757525)))

(declare-fun lambda!297694 () Int)

(assert (=> bs!1286108 (= lambda!297694 lambda!297654)))

(declare-fun bs!1286109 () Bool)

(assert (= bs!1286109 (and d!1757613 d!1757527)))

(assert (=> bs!1286109 (= lambda!297694 lambda!297657)))

(declare-fun bs!1286110 () Bool)

(assert (= bs!1286110 (and d!1757613 d!1757605)))

(assert (=> bs!1286110 (= lambda!297694 lambda!297693)))

(assert (=> d!1757613 (= (inv!82074 (h!69217 zl!343)) (forall!14704 (exprs!5415 (h!69217 zl!343)) lambda!297694))))

(declare-fun bs!1286111 () Bool)

(assert (= bs!1286111 d!1757613))

(declare-fun m!6544942 () Bool)

(assert (=> bs!1286111 m!6544942))

(assert (=> b!5550534 d!1757613))

(declare-fun bs!1286112 () Bool)

(declare-fun d!1757615 () Bool)

(assert (= bs!1286112 (and d!1757615 d!1757525)))

(declare-fun lambda!297697 () Int)

(assert (=> bs!1286112 (= lambda!297697 lambda!297654)))

(declare-fun bs!1286113 () Bool)

(assert (= bs!1286113 (and d!1757615 d!1757527)))

(assert (=> bs!1286113 (= lambda!297697 lambda!297657)))

(declare-fun bs!1286114 () Bool)

(assert (= bs!1286114 (and d!1757615 d!1757605)))

(assert (=> bs!1286114 (= lambda!297697 lambda!297693)))

(declare-fun bs!1286115 () Bool)

(assert (= bs!1286115 (and d!1757615 d!1757613)))

(assert (=> bs!1286115 (= lambda!297697 lambda!297694)))

(declare-fun b!5551082 () Bool)

(declare-fun e!3428707 () Bool)

(assert (=> b!5551082 (= e!3428707 (isEmpty!34558 (t!376155 (exprs!5415 (h!69217 zl!343)))))))

(declare-fun b!5551083 () Bool)

(declare-fun e!3428708 () Regex!15531)

(declare-fun e!3428711 () Regex!15531)

(assert (=> b!5551083 (= e!3428708 e!3428711)))

(declare-fun c!971646 () Bool)

(assert (=> b!5551083 (= c!971646 ((_ is Cons!62768) (exprs!5415 (h!69217 zl!343))))))

(declare-fun b!5551084 () Bool)

(assert (=> b!5551084 (= e!3428711 EmptyExpr!15531)))

(declare-fun b!5551085 () Bool)

(declare-fun e!3428710 () Bool)

(declare-fun lt!2250296 () Regex!15531)

(declare-fun isConcat!618 (Regex!15531) Bool)

(assert (=> b!5551085 (= e!3428710 (isConcat!618 lt!2250296))))

(declare-fun b!5551086 () Bool)

(declare-fun e!3428709 () Bool)

(declare-fun isEmptyExpr!1095 (Regex!15531) Bool)

(assert (=> b!5551086 (= e!3428709 (isEmptyExpr!1095 lt!2250296))))

(declare-fun b!5551087 () Bool)

(assert (=> b!5551087 (= e!3428709 e!3428710)))

(declare-fun c!971649 () Bool)

(assert (=> b!5551087 (= c!971649 (isEmpty!34558 (tail!10942 (exprs!5415 (h!69217 zl!343)))))))

(declare-fun b!5551088 () Bool)

(assert (=> b!5551088 (= e!3428710 (= lt!2250296 (head!11847 (exprs!5415 (h!69217 zl!343)))))))

(declare-fun b!5551090 () Bool)

(assert (=> b!5551090 (= e!3428708 (h!69216 (exprs!5415 (h!69217 zl!343))))))

(declare-fun b!5551091 () Bool)

(declare-fun e!3428706 () Bool)

(assert (=> b!5551091 (= e!3428706 e!3428709)))

(declare-fun c!971648 () Bool)

(assert (=> b!5551091 (= c!971648 (isEmpty!34558 (exprs!5415 (h!69217 zl!343))))))

(assert (=> d!1757615 e!3428706))

(declare-fun res!2359780 () Bool)

(assert (=> d!1757615 (=> (not res!2359780) (not e!3428706))))

(assert (=> d!1757615 (= res!2359780 (validRegex!7267 lt!2250296))))

(assert (=> d!1757615 (= lt!2250296 e!3428708)))

(declare-fun c!971647 () Bool)

(assert (=> d!1757615 (= c!971647 e!3428707)))

(declare-fun res!2359781 () Bool)

(assert (=> d!1757615 (=> (not res!2359781) (not e!3428707))))

(assert (=> d!1757615 (= res!2359781 ((_ is Cons!62768) (exprs!5415 (h!69217 zl!343))))))

(assert (=> d!1757615 (forall!14704 (exprs!5415 (h!69217 zl!343)) lambda!297697)))

(assert (=> d!1757615 (= (generalisedConcat!1146 (exprs!5415 (h!69217 zl!343))) lt!2250296)))

(declare-fun b!5551089 () Bool)

(assert (=> b!5551089 (= e!3428711 (Concat!24376 (h!69216 (exprs!5415 (h!69217 zl!343))) (generalisedConcat!1146 (t!376155 (exprs!5415 (h!69217 zl!343))))))))

(assert (= (and d!1757615 res!2359781) b!5551082))

(assert (= (and d!1757615 c!971647) b!5551090))

(assert (= (and d!1757615 (not c!971647)) b!5551083))

(assert (= (and b!5551083 c!971646) b!5551089))

(assert (= (and b!5551083 (not c!971646)) b!5551084))

(assert (= (and d!1757615 res!2359780) b!5551091))

(assert (= (and b!5551091 c!971648) b!5551086))

(assert (= (and b!5551091 (not c!971648)) b!5551087))

(assert (= (and b!5551087 c!971649) b!5551088))

(assert (= (and b!5551087 (not c!971649)) b!5551085))

(declare-fun m!6544944 () Bool)

(assert (=> b!5551085 m!6544944))

(assert (=> b!5551082 m!6544668))

(declare-fun m!6544946 () Bool)

(assert (=> b!5551089 m!6544946))

(declare-fun m!6544948 () Bool)

(assert (=> b!5551091 m!6544948))

(declare-fun m!6544950 () Bool)

(assert (=> b!5551087 m!6544950))

(assert (=> b!5551087 m!6544950))

(declare-fun m!6544952 () Bool)

(assert (=> b!5551087 m!6544952))

(declare-fun m!6544954 () Bool)

(assert (=> b!5551086 m!6544954))

(declare-fun m!6544956 () Bool)

(assert (=> b!5551088 m!6544956))

(declare-fun m!6544958 () Bool)

(assert (=> d!1757615 m!6544958))

(declare-fun m!6544960 () Bool)

(assert (=> d!1757615 m!6544960))

(assert (=> b!5550544 d!1757615))

(declare-fun b!5551114 () Bool)

(declare-fun e!3428719 () Bool)

(declare-fun tp!1531604 () Bool)

(declare-fun tp!1531602 () Bool)

(assert (=> b!5551114 (= e!3428719 (and tp!1531604 tp!1531602))))

(declare-fun b!5551111 () Bool)

(assert (=> b!5551111 (= e!3428719 tp_is_empty!40315)))

(declare-fun b!5551112 () Bool)

(declare-fun tp!1531606 () Bool)

(declare-fun tp!1531605 () Bool)

(assert (=> b!5551112 (= e!3428719 (and tp!1531606 tp!1531605))))

(declare-fun b!5551113 () Bool)

(declare-fun tp!1531603 () Bool)

(assert (=> b!5551113 (= e!3428719 tp!1531603)))

(assert (=> b!5550543 (= tp!1531585 e!3428719)))

(assert (= (and b!5550543 ((_ is ElementMatch!15531) (regOne!31575 r!7292))) b!5551111))

(assert (= (and b!5550543 ((_ is Concat!24376) (regOne!31575 r!7292))) b!5551112))

(assert (= (and b!5550543 ((_ is Star!15531) (regOne!31575 r!7292))) b!5551113))

(assert (= (and b!5550543 ((_ is Union!15531) (regOne!31575 r!7292))) b!5551114))

(declare-fun b!5551118 () Bool)

(declare-fun e!3428720 () Bool)

(declare-fun tp!1531609 () Bool)

(declare-fun tp!1531607 () Bool)

(assert (=> b!5551118 (= e!3428720 (and tp!1531609 tp!1531607))))

(declare-fun b!5551115 () Bool)

(assert (=> b!5551115 (= e!3428720 tp_is_empty!40315)))

(declare-fun b!5551116 () Bool)

(declare-fun tp!1531611 () Bool)

(declare-fun tp!1531610 () Bool)

(assert (=> b!5551116 (= e!3428720 (and tp!1531611 tp!1531610))))

(declare-fun b!5551117 () Bool)

(declare-fun tp!1531608 () Bool)

(assert (=> b!5551117 (= e!3428720 tp!1531608)))

(assert (=> b!5550543 (= tp!1531591 e!3428720)))

(assert (= (and b!5550543 ((_ is ElementMatch!15531) (regTwo!31575 r!7292))) b!5551115))

(assert (= (and b!5550543 ((_ is Concat!24376) (regTwo!31575 r!7292))) b!5551116))

(assert (= (and b!5550543 ((_ is Star!15531) (regTwo!31575 r!7292))) b!5551117))

(assert (= (and b!5550543 ((_ is Union!15531) (regTwo!31575 r!7292))) b!5551118))

(declare-fun condSetEmpty!36910 () Bool)

(assert (=> setNonEmpty!36907 (= condSetEmpty!36910 (= setRest!36907 ((as const (Array Context!9830 Bool)) false)))))

(declare-fun setRes!36910 () Bool)

(assert (=> setNonEmpty!36907 (= tp!1531583 setRes!36910)))

(declare-fun setIsEmpty!36910 () Bool)

(assert (=> setIsEmpty!36910 setRes!36910))

(declare-fun tp!1531617 () Bool)

(declare-fun setElem!36910 () Context!9830)

(declare-fun e!3428723 () Bool)

(declare-fun setNonEmpty!36910 () Bool)

(assert (=> setNonEmpty!36910 (= setRes!36910 (and tp!1531617 (inv!82074 setElem!36910) e!3428723))))

(declare-fun setRest!36910 () (InoxSet Context!9830))

(assert (=> setNonEmpty!36910 (= setRest!36907 ((_ map or) (store ((as const (Array Context!9830 Bool)) false) setElem!36910 true) setRest!36910))))

(declare-fun b!5551123 () Bool)

(declare-fun tp!1531616 () Bool)

(assert (=> b!5551123 (= e!3428723 tp!1531616)))

(assert (= (and setNonEmpty!36907 condSetEmpty!36910) setIsEmpty!36910))

(assert (= (and setNonEmpty!36907 (not condSetEmpty!36910)) setNonEmpty!36910))

(assert (= setNonEmpty!36910 b!5551123))

(declare-fun m!6544986 () Bool)

(assert (=> setNonEmpty!36910 m!6544986))

(declare-fun b!5551128 () Bool)

(declare-fun e!3428726 () Bool)

(declare-fun tp!1531622 () Bool)

(declare-fun tp!1531623 () Bool)

(assert (=> b!5551128 (= e!3428726 (and tp!1531622 tp!1531623))))

(assert (=> b!5550536 (= tp!1531588 e!3428726)))

(assert (= (and b!5550536 ((_ is Cons!62768) (exprs!5415 setElem!36907))) b!5551128))

(declare-fun b!5551129 () Bool)

(declare-fun e!3428727 () Bool)

(declare-fun tp!1531624 () Bool)

(declare-fun tp!1531625 () Bool)

(assert (=> b!5551129 (= e!3428727 (and tp!1531624 tp!1531625))))

(assert (=> b!5550547 (= tp!1531586 e!3428727)))

(assert (= (and b!5550547 ((_ is Cons!62768) (exprs!5415 (h!69217 zl!343)))) b!5551129))

(declare-fun b!5551133 () Bool)

(declare-fun e!3428728 () Bool)

(declare-fun tp!1531628 () Bool)

(declare-fun tp!1531626 () Bool)

(assert (=> b!5551133 (= e!3428728 (and tp!1531628 tp!1531626))))

(declare-fun b!5551130 () Bool)

(assert (=> b!5551130 (= e!3428728 tp_is_empty!40315)))

(declare-fun b!5551131 () Bool)

(declare-fun tp!1531630 () Bool)

(declare-fun tp!1531629 () Bool)

(assert (=> b!5551131 (= e!3428728 (and tp!1531630 tp!1531629))))

(declare-fun b!5551132 () Bool)

(declare-fun tp!1531627 () Bool)

(assert (=> b!5551132 (= e!3428728 tp!1531627)))

(assert (=> b!5550532 (= tp!1531582 e!3428728)))

(assert (= (and b!5550532 ((_ is ElementMatch!15531) (reg!15860 r!7292))) b!5551130))

(assert (= (and b!5550532 ((_ is Concat!24376) (reg!15860 r!7292))) b!5551131))

(assert (= (and b!5550532 ((_ is Star!15531) (reg!15860 r!7292))) b!5551132))

(assert (= (and b!5550532 ((_ is Union!15531) (reg!15860 r!7292))) b!5551133))

(declare-fun b!5551137 () Bool)

(declare-fun e!3428729 () Bool)

(declare-fun tp!1531633 () Bool)

(declare-fun tp!1531631 () Bool)

(assert (=> b!5551137 (= e!3428729 (and tp!1531633 tp!1531631))))

(declare-fun b!5551134 () Bool)

(assert (=> b!5551134 (= e!3428729 tp_is_empty!40315)))

(declare-fun b!5551135 () Bool)

(declare-fun tp!1531635 () Bool)

(declare-fun tp!1531634 () Bool)

(assert (=> b!5551135 (= e!3428729 (and tp!1531635 tp!1531634))))

(declare-fun b!5551136 () Bool)

(declare-fun tp!1531632 () Bool)

(assert (=> b!5551136 (= e!3428729 tp!1531632)))

(assert (=> b!5550540 (= tp!1531587 e!3428729)))

(assert (= (and b!5550540 ((_ is ElementMatch!15531) (regOne!31574 r!7292))) b!5551134))

(assert (= (and b!5550540 ((_ is Concat!24376) (regOne!31574 r!7292))) b!5551135))

(assert (= (and b!5550540 ((_ is Star!15531) (regOne!31574 r!7292))) b!5551136))

(assert (= (and b!5550540 ((_ is Union!15531) (regOne!31574 r!7292))) b!5551137))

(declare-fun b!5551141 () Bool)

(declare-fun e!3428730 () Bool)

(declare-fun tp!1531638 () Bool)

(declare-fun tp!1531636 () Bool)

(assert (=> b!5551141 (= e!3428730 (and tp!1531638 tp!1531636))))

(declare-fun b!5551138 () Bool)

(assert (=> b!5551138 (= e!3428730 tp_is_empty!40315)))

(declare-fun b!5551139 () Bool)

(declare-fun tp!1531640 () Bool)

(declare-fun tp!1531639 () Bool)

(assert (=> b!5551139 (= e!3428730 (and tp!1531640 tp!1531639))))

(declare-fun b!5551140 () Bool)

(declare-fun tp!1531637 () Bool)

(assert (=> b!5551140 (= e!3428730 tp!1531637)))

(assert (=> b!5550540 (= tp!1531589 e!3428730)))

(assert (= (and b!5550540 ((_ is ElementMatch!15531) (regTwo!31574 r!7292))) b!5551138))

(assert (= (and b!5550540 ((_ is Concat!24376) (regTwo!31574 r!7292))) b!5551139))

(assert (= (and b!5550540 ((_ is Star!15531) (regTwo!31574 r!7292))) b!5551140))

(assert (= (and b!5550540 ((_ is Union!15531) (regTwo!31574 r!7292))) b!5551141))

(declare-fun b!5551146 () Bool)

(declare-fun e!3428733 () Bool)

(declare-fun tp!1531643 () Bool)

(assert (=> b!5551146 (= e!3428733 (and tp_is_empty!40315 tp!1531643))))

(assert (=> b!5550549 (= tp!1531584 e!3428733)))

(assert (= (and b!5550549 ((_ is Cons!62770) (t!376157 s!2326))) b!5551146))

(declare-fun b!5551154 () Bool)

(declare-fun e!3428739 () Bool)

(declare-fun tp!1531648 () Bool)

(assert (=> b!5551154 (= e!3428739 tp!1531648)))

(declare-fun e!3428738 () Bool)

(declare-fun b!5551153 () Bool)

(declare-fun tp!1531649 () Bool)

(assert (=> b!5551153 (= e!3428738 (and (inv!82074 (h!69217 (t!376156 zl!343))) e!3428739 tp!1531649))))

(assert (=> b!5550534 (= tp!1531590 e!3428738)))

(assert (= b!5551153 b!5551154))

(assert (= (and b!5550534 ((_ is Cons!62769) (t!376156 zl!343))) b!5551153))

(declare-fun m!6544992 () Bool)

(assert (=> b!5551153 m!6544992))

(declare-fun b_lambda!210895 () Bool)

(assert (= b_lambda!210893 (or b!5550550 b_lambda!210895)))

(declare-fun bs!1286118 () Bool)

(declare-fun d!1757623 () Bool)

(assert (= bs!1286118 (and d!1757623 b!5550550)))

(assert (=> bs!1286118 (= (dynLambda!24550 lambda!297651 (h!69217 zl!343)) (derivationStepZipperUp!799 (h!69217 zl!343) (h!69218 s!2326)))))

(assert (=> bs!1286118 m!6544652))

(assert (=> d!1757549 d!1757623))

(check-sat (not bm!413675) (not bm!413662) (not b!5551088) (not b!5550858) (not d!1757613) (not b!5550942) (not bs!1286118) (not b!5550948) (not b!5551082) (not setNonEmpty!36910) (not d!1757539) (not d!1757549) (not b!5550591) (not b!5550771) (not d!1757615) (not d!1757525) (not b!5551129) (not b!5550637) (not b!5551116) (not d!1757583) (not d!1757605) (not b!5551089) (not b!5551128) (not b!5550585) (not b!5551118) (not b!5550638) (not b!5551153) (not b!5551137) (not b!5550854) (not b!5550648) (not d!1757589) (not d!1757601) (not b!5550579) tp_is_empty!40315 (not b!5550584) (not bm!413655) (not bm!413661) (not b!5550647) (not b!5550581) (not b!5551140) (not b!5551133) (not b!5551154) (not bm!413653) (not bm!413663) (not b!5551117) (not bm!413654) (not b!5550776) (not d!1757591) (not b!5550642) (not b!5551086) (not b!5550859) (not b!5550692) (not b!5550643) (not b!5551132) (not d!1757595) (not b!5551123) (not b!5551113) (not b!5550577) (not b!5550849) (not b!5551139) (not bm!413700) (not d!1757543) (not b!5550946) (not b!5551131) (not b!5550855) (not b!5550580) (not d!1757587) (not b!5551146) (not d!1757575) (not bm!413704) (not bm!413701) (not b!5551112) (not b!5551136) (not d!1757527) (not d!1757603) (not b!5551141) (not b!5551135) (not b!5551087) (not b!5550941) (not d!1757581) (not b!5550943) (not b!5551114) (not b!5550846) (not b!5550625) (not b!5551085) (not b_lambda!210895) (not b!5550583) (not b!5551034) (not d!1757609) (not bm!413673) (not b!5551091) (not b!5550945))
(check-sat)
