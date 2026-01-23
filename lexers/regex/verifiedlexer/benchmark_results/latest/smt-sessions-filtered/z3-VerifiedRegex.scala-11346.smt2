; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!600340 () Bool)

(assert start!600340)

(declare-fun b!5885544 () Bool)

(assert (=> b!5885544 true))

(declare-fun b!5885539 () Bool)

(declare-fun e!3606381 () Bool)

(declare-fun e!3606393 () Bool)

(assert (=> b!5885539 (= e!3606381 e!3606393)))

(declare-fun res!2472185 () Bool)

(assert (=> b!5885539 (=> res!2472185 e!3606393)))

(declare-fun lt!2307225 () Bool)

(declare-fun lt!2307200 () Bool)

(assert (=> b!5885539 (= res!2472185 (not (= lt!2307225 lt!2307200)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32148 0))(
  ( (C!32149 (val!25776 Int)) )
))
(declare-datatypes ((Regex!15939 0))(
  ( (ElementMatch!15939 (c!1045073 C!32148)) (Concat!24784 (regOne!32390 Regex!15939) (regTwo!32390 Regex!15939)) (EmptyExpr!15939) (Star!15939 (reg!16268 Regex!15939)) (EmptyLang!15939) (Union!15939 (regOne!32391 Regex!15939) (regTwo!32391 Regex!15939)) )
))
(declare-datatypes ((List!64116 0))(
  ( (Nil!63992) (Cons!63992 (h!70440 Regex!15939) (t!377497 List!64116)) )
))
(declare-datatypes ((Context!10646 0))(
  ( (Context!10647 (exprs!5823 List!64116)) )
))
(declare-fun z!1189 () (InoxSet Context!10646))

(declare-datatypes ((List!64117 0))(
  ( (Nil!63993) (Cons!63993 (h!70441 C!32148) (t!377498 List!64117)) )
))
(declare-fun s!2326 () List!64117)

(declare-fun matchZipper!2005 ((InoxSet Context!10646) List!64117) Bool)

(assert (=> b!5885539 (= lt!2307200 (matchZipper!2005 z!1189 s!2326))))

(declare-fun lt!2307215 () (InoxSet Context!10646))

(assert (=> b!5885539 (= lt!2307225 (matchZipper!2005 lt!2307215 (t!377498 s!2326)))))

(declare-fun b!5885540 () Bool)

(declare-fun e!3606392 () Bool)

(declare-fun tp!1631627 () Bool)

(assert (=> b!5885540 (= e!3606392 tp!1631627)))

(declare-fun b!5885541 () Bool)

(declare-fun e!3606386 () Bool)

(declare-fun e!3606387 () Bool)

(assert (=> b!5885541 (= e!3606386 (not e!3606387))))

(declare-fun res!2472175 () Bool)

(assert (=> b!5885541 (=> res!2472175 e!3606387)))

(declare-datatypes ((List!64118 0))(
  ( (Nil!63994) (Cons!63994 (h!70442 Context!10646) (t!377499 List!64118)) )
))
(declare-fun zl!343 () List!64118)

(get-info :version)

(assert (=> b!5885541 (= res!2472175 (not ((_ is Cons!63994) zl!343)))))

(declare-fun lt!2307218 () Bool)

(declare-fun r!7292 () Regex!15939)

(declare-fun matchRSpec!3040 (Regex!15939 List!64117) Bool)

(assert (=> b!5885541 (= lt!2307218 (matchRSpec!3040 r!7292 s!2326))))

(declare-fun matchR!8122 (Regex!15939 List!64117) Bool)

(assert (=> b!5885541 (= lt!2307218 (matchR!8122 r!7292 s!2326))))

(declare-datatypes ((Unit!157149 0))(
  ( (Unit!157150) )
))
(declare-fun lt!2307212 () Unit!157149)

(declare-fun mainMatchTheorem!3040 (Regex!15939 List!64117) Unit!157149)

(assert (=> b!5885541 (= lt!2307212 (mainMatchTheorem!3040 r!7292 s!2326))))

(declare-fun b!5885542 () Bool)

(declare-fun e!3606380 () Bool)

(declare-fun e!3606385 () Bool)

(assert (=> b!5885542 (= e!3606380 e!3606385)))

(declare-fun res!2472177 () Bool)

(assert (=> b!5885542 (=> res!2472177 e!3606385)))

(declare-fun lt!2307223 () (InoxSet Context!10646))

(declare-fun lt!2307210 () Bool)

(assert (=> b!5885542 (= res!2472177 (not (= lt!2307210 (matchZipper!2005 lt!2307223 (t!377498 s!2326)))))))

(declare-fun lt!2307222 () (InoxSet Context!10646))

(assert (=> b!5885542 (= lt!2307210 (matchZipper!2005 lt!2307222 s!2326))))

(declare-fun b!5885543 () Bool)

(declare-fun res!2472191 () Bool)

(assert (=> b!5885543 (=> res!2472191 e!3606387)))

(declare-fun generalisedConcat!1536 (List!64116) Regex!15939)

(assert (=> b!5885543 (= res!2472191 (not (= r!7292 (generalisedConcat!1536 (exprs!5823 (h!70442 zl!343))))))))

(declare-fun e!3606391 () Bool)

(assert (=> b!5885544 (= e!3606391 e!3606381)))

(declare-fun res!2472183 () Bool)

(assert (=> b!5885544 (=> res!2472183 e!3606381)))

(declare-fun derivationStepZipper!1938 ((InoxSet Context!10646) C!32148) (InoxSet Context!10646))

(assert (=> b!5885544 (= res!2472183 (not (= (derivationStepZipper!1938 z!1189 (h!70441 s!2326)) lt!2307215)))))

(declare-fun lambda!321393 () Int)

(declare-fun flatMap!1470 ((InoxSet Context!10646) Int) (InoxSet Context!10646))

(declare-fun derivationStepZipperUp!1131 (Context!10646 C!32148) (InoxSet Context!10646))

(assert (=> b!5885544 (= (flatMap!1470 z!1189 lambda!321393) (derivationStepZipperUp!1131 (h!70442 zl!343) (h!70441 s!2326)))))

(declare-fun lt!2307220 () Unit!157149)

(declare-fun lemmaFlatMapOnSingletonSet!998 ((InoxSet Context!10646) Context!10646 Int) Unit!157149)

(assert (=> b!5885544 (= lt!2307220 (lemmaFlatMapOnSingletonSet!998 z!1189 (h!70442 zl!343) lambda!321393))))

(declare-fun b!5885545 () Bool)

(declare-fun e!3606390 () Bool)

(assert (=> b!5885545 (= e!3606387 e!3606390)))

(declare-fun res!2472192 () Bool)

(assert (=> b!5885545 (=> res!2472192 e!3606390)))

(declare-fun lt!2307216 () Bool)

(declare-fun lt!2307217 () Bool)

(assert (=> b!5885545 (= res!2472192 (or (not (= lt!2307218 (or lt!2307216 lt!2307217))) ((_ is Nil!63993) s!2326)))))

(assert (=> b!5885545 (= lt!2307217 (matchRSpec!3040 (regTwo!32391 r!7292) s!2326))))

(assert (=> b!5885545 (= lt!2307217 (matchR!8122 (regTwo!32391 r!7292) s!2326))))

(declare-fun lt!2307202 () Unit!157149)

(assert (=> b!5885545 (= lt!2307202 (mainMatchTheorem!3040 (regTwo!32391 r!7292) s!2326))))

(assert (=> b!5885545 (= lt!2307216 (matchRSpec!3040 (regOne!32391 r!7292) s!2326))))

(assert (=> b!5885545 (= lt!2307216 (matchR!8122 (regOne!32391 r!7292) s!2326))))

(declare-fun lt!2307227 () Unit!157149)

(assert (=> b!5885545 (= lt!2307227 (mainMatchTheorem!3040 (regOne!32391 r!7292) s!2326))))

(declare-fun b!5885547 () Bool)

(declare-fun e!3606388 () Bool)

(declare-fun tp_is_empty!41131 () Bool)

(assert (=> b!5885547 (= e!3606388 tp_is_empty!41131)))

(declare-fun b!5885548 () Bool)

(declare-fun e!3606394 () Bool)

(declare-fun tp!1631625 () Bool)

(assert (=> b!5885548 (= e!3606394 tp!1631625)))

(declare-fun b!5885549 () Bool)

(declare-fun e!3606379 () Bool)

(declare-fun tp!1631626 () Bool)

(assert (=> b!5885549 (= e!3606379 (and tp_is_empty!41131 tp!1631626))))

(declare-fun b!5885550 () Bool)

(declare-fun res!2472176 () Bool)

(assert (=> b!5885550 (=> res!2472176 e!3606387)))

(declare-fun isEmpty!35850 (List!64118) Bool)

(assert (=> b!5885550 (= res!2472176 (not (isEmpty!35850 (t!377499 zl!343))))))

(declare-fun b!5885551 () Bool)

(declare-fun tp!1631630 () Bool)

(assert (=> b!5885551 (= e!3606388 tp!1631630)))

(declare-fun e!3606383 () Bool)

(declare-fun b!5885552 () Bool)

(declare-fun tp!1631624 () Bool)

(declare-fun inv!83094 (Context!10646) Bool)

(assert (=> b!5885552 (= e!3606383 (and (inv!83094 (h!70442 zl!343)) e!3606392 tp!1631624))))

(declare-fun b!5885553 () Bool)

(declare-fun e!3606382 () Bool)

(assert (=> b!5885553 (= e!3606393 e!3606382)))

(declare-fun res!2472190 () Bool)

(assert (=> b!5885553 (=> res!2472190 e!3606382)))

(declare-fun lt!2307207 () Bool)

(assert (=> b!5885553 (= res!2472190 (or (not (= lt!2307207 lt!2307225)) (not (= lt!2307207 lt!2307200))))))

(assert (=> b!5885553 (= lt!2307225 lt!2307207)))

(declare-fun e!3606384 () Bool)

(assert (=> b!5885553 (= lt!2307207 e!3606384)))

(declare-fun res!2472189 () Bool)

(assert (=> b!5885553 (=> res!2472189 e!3606384)))

(declare-fun lt!2307208 () Bool)

(assert (=> b!5885553 (= res!2472189 lt!2307208)))

(declare-fun lt!2307209 () (InoxSet Context!10646))

(assert (=> b!5885553 (= lt!2307208 (matchZipper!2005 lt!2307209 (t!377498 s!2326)))))

(declare-fun lt!2307213 () Unit!157149)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!840 ((InoxSet Context!10646) (InoxSet Context!10646) List!64117) Unit!157149)

(assert (=> b!5885553 (= lt!2307213 (lemmaZipperConcatMatchesSameAsBothZippers!840 lt!2307209 lt!2307223 (t!377498 s!2326)))))

(declare-fun b!5885554 () Bool)

(declare-fun tp!1631631 () Bool)

(declare-fun tp!1631632 () Bool)

(assert (=> b!5885554 (= e!3606388 (and tp!1631631 tp!1631632))))

(declare-fun b!5885555 () Bool)

(assert (=> b!5885555 (= e!3606382 e!3606380)))

(declare-fun res!2472182 () Bool)

(assert (=> b!5885555 (=> res!2472182 e!3606380)))

(declare-fun lt!2307199 () Bool)

(assert (=> b!5885555 (= res!2472182 (not (= lt!2307199 lt!2307208)))))

(declare-fun lt!2307201 () (InoxSet Context!10646))

(assert (=> b!5885555 (= lt!2307199 (matchZipper!2005 lt!2307201 s!2326))))

(declare-fun lt!2307204 () Context!10646)

(assert (=> b!5885555 (= (flatMap!1470 lt!2307222 lambda!321393) (derivationStepZipperUp!1131 lt!2307204 (h!70441 s!2326)))))

(declare-fun lt!2307226 () Unit!157149)

(assert (=> b!5885555 (= lt!2307226 (lemmaFlatMapOnSingletonSet!998 lt!2307222 lt!2307204 lambda!321393))))

(declare-fun lt!2307214 () Context!10646)

(assert (=> b!5885555 (= (flatMap!1470 lt!2307201 lambda!321393) (derivationStepZipperUp!1131 lt!2307214 (h!70441 s!2326)))))

(declare-fun lt!2307221 () Unit!157149)

(assert (=> b!5885555 (= lt!2307221 (lemmaFlatMapOnSingletonSet!998 lt!2307201 lt!2307214 lambda!321393))))

(declare-fun lt!2307203 () (InoxSet Context!10646))

(assert (=> b!5885555 (= lt!2307203 (derivationStepZipperUp!1131 lt!2307204 (h!70441 s!2326)))))

(declare-fun lt!2307224 () (InoxSet Context!10646))

(assert (=> b!5885555 (= lt!2307224 (derivationStepZipperUp!1131 lt!2307214 (h!70441 s!2326)))))

(assert (=> b!5885555 (= lt!2307222 (store ((as const (Array Context!10646 Bool)) false) lt!2307204 true))))

(assert (=> b!5885555 (= lt!2307204 (Context!10647 (Cons!63992 (regTwo!32391 r!7292) Nil!63992)))))

(assert (=> b!5885555 (= lt!2307201 (store ((as const (Array Context!10646 Bool)) false) lt!2307214 true))))

(assert (=> b!5885555 (= lt!2307214 (Context!10647 (Cons!63992 (regOne!32391 r!7292) Nil!63992)))))

(declare-fun res!2472188 () Bool)

(assert (=> start!600340 (=> (not res!2472188) (not e!3606386))))

(declare-fun validRegex!7675 (Regex!15939) Bool)

(assert (=> start!600340 (= res!2472188 (validRegex!7675 r!7292))))

(assert (=> start!600340 e!3606386))

(assert (=> start!600340 e!3606388))

(declare-fun condSetEmpty!39905 () Bool)

(assert (=> start!600340 (= condSetEmpty!39905 (= z!1189 ((as const (Array Context!10646 Bool)) false)))))

(declare-fun setRes!39905 () Bool)

(assert (=> start!600340 setRes!39905))

(assert (=> start!600340 e!3606383))

(assert (=> start!600340 e!3606379))

(declare-fun b!5885546 () Bool)

(assert (=> b!5885546 (= e!3606385 (inv!83094 lt!2307204))))

(assert (=> b!5885546 (= lt!2307216 lt!2307199)))

(declare-fun lt!2307206 () Unit!157149)

(declare-fun theoremZipperRegexEquiv!691 ((InoxSet Context!10646) List!64118 Regex!15939 List!64117) Unit!157149)

(assert (=> b!5885546 (= lt!2307206 (theoremZipperRegexEquiv!691 lt!2307201 (Cons!63994 lt!2307214 Nil!63994) (regOne!32391 r!7292) s!2326))))

(declare-fun b!5885556 () Bool)

(declare-fun res!2472174 () Bool)

(assert (=> b!5885556 (=> res!2472174 e!3606387)))

(assert (=> b!5885556 (= res!2472174 (or ((_ is EmptyExpr!15939) r!7292) ((_ is EmptyLang!15939) r!7292) ((_ is ElementMatch!15939) r!7292) (not ((_ is Union!15939) r!7292))))))

(declare-fun b!5885557 () Bool)

(assert (=> b!5885557 (= e!3606384 (matchZipper!2005 lt!2307223 (t!377498 s!2326)))))

(declare-fun b!5885558 () Bool)

(declare-fun res!2472181 () Bool)

(assert (=> b!5885558 (=> res!2472181 e!3606387)))

(assert (=> b!5885558 (= res!2472181 (not ((_ is Cons!63992) (exprs!5823 (h!70442 zl!343)))))))

(declare-fun b!5885559 () Bool)

(declare-fun tp!1631628 () Bool)

(declare-fun tp!1631629 () Bool)

(assert (=> b!5885559 (= e!3606388 (and tp!1631628 tp!1631629))))

(declare-fun b!5885560 () Bool)

(declare-fun res!2472184 () Bool)

(assert (=> b!5885560 (=> (not res!2472184) (not e!3606386))))

(declare-fun unfocusZipper!1681 (List!64118) Regex!15939)

(assert (=> b!5885560 (= res!2472184 (= r!7292 (unfocusZipper!1681 zl!343)))))

(declare-fun b!5885561 () Bool)

(declare-fun res!2472178 () Bool)

(assert (=> b!5885561 (=> res!2472178 e!3606387)))

(declare-fun generalisedUnion!1783 (List!64116) Regex!15939)

(declare-fun unfocusZipperList!1360 (List!64118) List!64116)

(assert (=> b!5885561 (= res!2472178 (not (= r!7292 (generalisedUnion!1783 (unfocusZipperList!1360 zl!343)))))))

(declare-fun setIsEmpty!39905 () Bool)

(assert (=> setIsEmpty!39905 setRes!39905))

(declare-fun b!5885562 () Bool)

(declare-fun e!3606389 () Bool)

(assert (=> b!5885562 (= e!3606389 e!3606391)))

(declare-fun res!2472180 () Bool)

(assert (=> b!5885562 (=> res!2472180 e!3606391)))

(declare-fun lt!2307211 () (InoxSet Context!10646))

(assert (=> b!5885562 (= res!2472180 (not (= lt!2307211 lt!2307215)))))

(assert (=> b!5885562 (= lt!2307215 ((_ map or) lt!2307209 lt!2307223))))

(declare-fun lt!2307219 () Context!10646)

(declare-fun derivationStepZipperDown!1205 (Regex!15939 Context!10646 C!32148) (InoxSet Context!10646))

(assert (=> b!5885562 (= lt!2307223 (derivationStepZipperDown!1205 (regTwo!32391 r!7292) lt!2307219 (h!70441 s!2326)))))

(assert (=> b!5885562 (= lt!2307209 (derivationStepZipperDown!1205 (regOne!32391 r!7292) lt!2307219 (h!70441 s!2326)))))

(declare-fun b!5885563 () Bool)

(assert (=> b!5885563 (= e!3606390 e!3606389)))

(declare-fun res!2472187 () Bool)

(assert (=> b!5885563 (=> res!2472187 e!3606389)))

(declare-fun lt!2307205 () (InoxSet Context!10646))

(assert (=> b!5885563 (= res!2472187 (not (= lt!2307205 lt!2307211)))))

(assert (=> b!5885563 (= lt!2307211 (derivationStepZipperDown!1205 r!7292 lt!2307219 (h!70441 s!2326)))))

(assert (=> b!5885563 (= lt!2307219 (Context!10647 Nil!63992))))

(assert (=> b!5885563 (= lt!2307205 (derivationStepZipperUp!1131 (Context!10647 (Cons!63992 r!7292 Nil!63992)) (h!70441 s!2326)))))

(declare-fun tp!1631633 () Bool)

(declare-fun setElem!39905 () Context!10646)

(declare-fun setNonEmpty!39905 () Bool)

(assert (=> setNonEmpty!39905 (= setRes!39905 (and tp!1631633 (inv!83094 setElem!39905) e!3606394))))

(declare-fun setRest!39905 () (InoxSet Context!10646))

(assert (=> setNonEmpty!39905 (= z!1189 ((_ map or) (store ((as const (Array Context!10646 Bool)) false) setElem!39905 true) setRest!39905))))

(declare-fun b!5885564 () Bool)

(declare-fun res!2472186 () Bool)

(assert (=> b!5885564 (=> (not res!2472186) (not e!3606386))))

(declare-fun toList!9723 ((InoxSet Context!10646)) List!64118)

(assert (=> b!5885564 (= res!2472186 (= (toList!9723 z!1189) zl!343))))

(declare-fun b!5885565 () Bool)

(declare-fun res!2472179 () Bool)

(assert (=> b!5885565 (=> res!2472179 e!3606385)))

(assert (=> b!5885565 (= res!2472179 (not (= (or lt!2307199 lt!2307210) lt!2307200)))))

(assert (= (and start!600340 res!2472188) b!5885564))

(assert (= (and b!5885564 res!2472186) b!5885560))

(assert (= (and b!5885560 res!2472184) b!5885541))

(assert (= (and b!5885541 (not res!2472175)) b!5885550))

(assert (= (and b!5885550 (not res!2472176)) b!5885543))

(assert (= (and b!5885543 (not res!2472191)) b!5885558))

(assert (= (and b!5885558 (not res!2472181)) b!5885561))

(assert (= (and b!5885561 (not res!2472178)) b!5885556))

(assert (= (and b!5885556 (not res!2472174)) b!5885545))

(assert (= (and b!5885545 (not res!2472192)) b!5885563))

(assert (= (and b!5885563 (not res!2472187)) b!5885562))

(assert (= (and b!5885562 (not res!2472180)) b!5885544))

(assert (= (and b!5885544 (not res!2472183)) b!5885539))

(assert (= (and b!5885539 (not res!2472185)) b!5885553))

(assert (= (and b!5885553 (not res!2472189)) b!5885557))

(assert (= (and b!5885553 (not res!2472190)) b!5885555))

(assert (= (and b!5885555 (not res!2472182)) b!5885542))

(assert (= (and b!5885542 (not res!2472177)) b!5885565))

(assert (= (and b!5885565 (not res!2472179)) b!5885546))

(assert (= (and start!600340 ((_ is ElementMatch!15939) r!7292)) b!5885547))

(assert (= (and start!600340 ((_ is Concat!24784) r!7292)) b!5885559))

(assert (= (and start!600340 ((_ is Star!15939) r!7292)) b!5885551))

(assert (= (and start!600340 ((_ is Union!15939) r!7292)) b!5885554))

(assert (= (and start!600340 condSetEmpty!39905) setIsEmpty!39905))

(assert (= (and start!600340 (not condSetEmpty!39905)) setNonEmpty!39905))

(assert (= setNonEmpty!39905 b!5885548))

(assert (= b!5885552 b!5885540))

(assert (= (and start!600340 ((_ is Cons!63994) zl!343)) b!5885552))

(assert (= (and start!600340 ((_ is Cons!63993) s!2326)) b!5885549))

(declare-fun m!6794396 () Bool)

(assert (=> b!5885560 m!6794396))

(declare-fun m!6794398 () Bool)

(assert (=> b!5885545 m!6794398))

(declare-fun m!6794400 () Bool)

(assert (=> b!5885545 m!6794400))

(declare-fun m!6794402 () Bool)

(assert (=> b!5885545 m!6794402))

(declare-fun m!6794404 () Bool)

(assert (=> b!5885545 m!6794404))

(declare-fun m!6794406 () Bool)

(assert (=> b!5885545 m!6794406))

(declare-fun m!6794408 () Bool)

(assert (=> b!5885545 m!6794408))

(declare-fun m!6794410 () Bool)

(assert (=> b!5885541 m!6794410))

(declare-fun m!6794412 () Bool)

(assert (=> b!5885541 m!6794412))

(declare-fun m!6794414 () Bool)

(assert (=> b!5885541 m!6794414))

(declare-fun m!6794416 () Bool)

(assert (=> b!5885550 m!6794416))

(declare-fun m!6794418 () Bool)

(assert (=> b!5885542 m!6794418))

(declare-fun m!6794420 () Bool)

(assert (=> b!5885542 m!6794420))

(declare-fun m!6794422 () Bool)

(assert (=> setNonEmpty!39905 m!6794422))

(declare-fun m!6794424 () Bool)

(assert (=> b!5885539 m!6794424))

(declare-fun m!6794426 () Bool)

(assert (=> b!5885539 m!6794426))

(declare-fun m!6794428 () Bool)

(assert (=> b!5885546 m!6794428))

(declare-fun m!6794430 () Bool)

(assert (=> b!5885546 m!6794430))

(declare-fun m!6794432 () Bool)

(assert (=> b!5885561 m!6794432))

(assert (=> b!5885561 m!6794432))

(declare-fun m!6794434 () Bool)

(assert (=> b!5885561 m!6794434))

(declare-fun m!6794436 () Bool)

(assert (=> b!5885564 m!6794436))

(declare-fun m!6794438 () Bool)

(assert (=> b!5885555 m!6794438))

(declare-fun m!6794440 () Bool)

(assert (=> b!5885555 m!6794440))

(declare-fun m!6794442 () Bool)

(assert (=> b!5885555 m!6794442))

(declare-fun m!6794444 () Bool)

(assert (=> b!5885555 m!6794444))

(declare-fun m!6794446 () Bool)

(assert (=> b!5885555 m!6794446))

(declare-fun m!6794448 () Bool)

(assert (=> b!5885555 m!6794448))

(declare-fun m!6794450 () Bool)

(assert (=> b!5885555 m!6794450))

(declare-fun m!6794452 () Bool)

(assert (=> b!5885555 m!6794452))

(declare-fun m!6794454 () Bool)

(assert (=> b!5885555 m!6794454))

(declare-fun m!6794456 () Bool)

(assert (=> b!5885552 m!6794456))

(declare-fun m!6794458 () Bool)

(assert (=> start!600340 m!6794458))

(declare-fun m!6794460 () Bool)

(assert (=> b!5885562 m!6794460))

(declare-fun m!6794462 () Bool)

(assert (=> b!5885562 m!6794462))

(declare-fun m!6794464 () Bool)

(assert (=> b!5885543 m!6794464))

(assert (=> b!5885557 m!6794418))

(declare-fun m!6794466 () Bool)

(assert (=> b!5885553 m!6794466))

(declare-fun m!6794468 () Bool)

(assert (=> b!5885553 m!6794468))

(declare-fun m!6794470 () Bool)

(assert (=> b!5885563 m!6794470))

(declare-fun m!6794472 () Bool)

(assert (=> b!5885563 m!6794472))

(declare-fun m!6794474 () Bool)

(assert (=> b!5885544 m!6794474))

(declare-fun m!6794476 () Bool)

(assert (=> b!5885544 m!6794476))

(declare-fun m!6794478 () Bool)

(assert (=> b!5885544 m!6794478))

(declare-fun m!6794480 () Bool)

(assert (=> b!5885544 m!6794480))

(check-sat (not b!5885543) (not b!5885541) (not b!5885549) (not b!5885548) (not b!5885562) (not start!600340) (not b!5885563) (not b!5885551) (not b!5885550) tp_is_empty!41131 (not b!5885560) (not b!5885544) (not b!5885564) (not b!5885561) (not b!5885553) (not b!5885542) (not b!5885539) (not b!5885559) (not b!5885546) (not b!5885545) (not b!5885540) (not b!5885555) (not b!5885554) (not b!5885557) (not b!5885552) (not setNonEmpty!39905))
(check-sat)
(get-model)

(declare-fun d!1847629 () Bool)

(declare-fun c!1045076 () Bool)

(declare-fun isEmpty!35852 (List!64117) Bool)

(assert (=> d!1847629 (= c!1045076 (isEmpty!35852 (t!377498 s!2326)))))

(declare-fun e!3606397 () Bool)

(assert (=> d!1847629 (= (matchZipper!2005 lt!2307223 (t!377498 s!2326)) e!3606397)))

(declare-fun b!5885572 () Bool)

(declare-fun nullableZipper!1777 ((InoxSet Context!10646)) Bool)

(assert (=> b!5885572 (= e!3606397 (nullableZipper!1777 lt!2307223))))

(declare-fun b!5885573 () Bool)

(declare-fun head!12431 (List!64117) C!32148)

(declare-fun tail!11516 (List!64117) List!64117)

(assert (=> b!5885573 (= e!3606397 (matchZipper!2005 (derivationStepZipper!1938 lt!2307223 (head!12431 (t!377498 s!2326))) (tail!11516 (t!377498 s!2326))))))

(assert (= (and d!1847629 c!1045076) b!5885572))

(assert (= (and d!1847629 (not c!1045076)) b!5885573))

(declare-fun m!6794482 () Bool)

(assert (=> d!1847629 m!6794482))

(declare-fun m!6794484 () Bool)

(assert (=> b!5885572 m!6794484))

(declare-fun m!6794486 () Bool)

(assert (=> b!5885573 m!6794486))

(assert (=> b!5885573 m!6794486))

(declare-fun m!6794488 () Bool)

(assert (=> b!5885573 m!6794488))

(declare-fun m!6794490 () Bool)

(assert (=> b!5885573 m!6794490))

(assert (=> b!5885573 m!6794488))

(assert (=> b!5885573 m!6794490))

(declare-fun m!6794492 () Bool)

(assert (=> b!5885573 m!6794492))

(assert (=> b!5885557 d!1847629))

(declare-fun d!1847631 () Bool)

(declare-fun lambda!321396 () Int)

(declare-fun forall!15026 (List!64116 Int) Bool)

(assert (=> d!1847631 (= (inv!83094 lt!2307204) (forall!15026 (exprs!5823 lt!2307204) lambda!321396))))

(declare-fun bs!1390430 () Bool)

(assert (= bs!1390430 d!1847631))

(declare-fun m!6794494 () Bool)

(assert (=> bs!1390430 m!6794494))

(assert (=> b!5885546 d!1847631))

(declare-fun d!1847635 () Bool)

(assert (=> d!1847635 (= (matchR!8122 (regOne!32391 r!7292) s!2326) (matchZipper!2005 lt!2307201 s!2326))))

(declare-fun lt!2307230 () Unit!157149)

(declare-fun choose!44501 ((InoxSet Context!10646) List!64118 Regex!15939 List!64117) Unit!157149)

(assert (=> d!1847635 (= lt!2307230 (choose!44501 lt!2307201 (Cons!63994 lt!2307214 Nil!63994) (regOne!32391 r!7292) s!2326))))

(assert (=> d!1847635 (validRegex!7675 (regOne!32391 r!7292))))

(assert (=> d!1847635 (= (theoremZipperRegexEquiv!691 lt!2307201 (Cons!63994 lt!2307214 Nil!63994) (regOne!32391 r!7292) s!2326) lt!2307230)))

(declare-fun bs!1390431 () Bool)

(assert (= bs!1390431 d!1847635))

(assert (=> bs!1390431 m!6794408))

(assert (=> bs!1390431 m!6794438))

(declare-fun m!6794496 () Bool)

(assert (=> bs!1390431 m!6794496))

(declare-fun m!6794498 () Bool)

(assert (=> bs!1390431 m!6794498))

(assert (=> b!5885546 d!1847635))

(declare-fun b!5885774 () Bool)

(assert (=> b!5885774 true))

(assert (=> b!5885774 true))

(declare-fun bs!1390441 () Bool)

(declare-fun b!5885764 () Bool)

(assert (= bs!1390441 (and b!5885764 b!5885774)))

(declare-fun lambda!321413 () Int)

(declare-fun lambda!321412 () Int)

(assert (=> bs!1390441 (not (= lambda!321413 lambda!321412))))

(assert (=> b!5885764 true))

(assert (=> b!5885764 true))

(declare-fun e!3606504 () Bool)

(declare-fun call!464101 () Bool)

(assert (=> b!5885764 (= e!3606504 call!464101)))

(declare-fun b!5885765 () Bool)

(declare-fun c!1045135 () Bool)

(assert (=> b!5885765 (= c!1045135 ((_ is Union!15939) (regTwo!32391 r!7292)))))

(declare-fun e!3606501 () Bool)

(declare-fun e!3606502 () Bool)

(assert (=> b!5885765 (= e!3606501 e!3606502)))

(declare-fun c!1045133 () Bool)

(declare-fun bm!464095 () Bool)

(declare-fun Exists!3011 (Int) Bool)

(assert (=> bm!464095 (= call!464101 (Exists!3011 (ite c!1045133 lambda!321412 lambda!321413)))))

(declare-fun d!1847637 () Bool)

(declare-fun c!1045134 () Bool)

(assert (=> d!1847637 (= c!1045134 ((_ is EmptyExpr!15939) (regTwo!32391 r!7292)))))

(declare-fun e!3606505 () Bool)

(assert (=> d!1847637 (= (matchRSpec!3040 (regTwo!32391 r!7292) s!2326) e!3606505)))

(declare-fun bm!464096 () Bool)

(declare-fun call!464100 () Bool)

(assert (=> bm!464096 (= call!464100 (isEmpty!35852 s!2326))))

(declare-fun b!5885766 () Bool)

(declare-fun e!3606506 () Bool)

(assert (=> b!5885766 (= e!3606506 (matchRSpec!3040 (regTwo!32391 (regTwo!32391 r!7292)) s!2326))))

(declare-fun b!5885767 () Bool)

(assert (=> b!5885767 (= e!3606501 (= s!2326 (Cons!63993 (c!1045073 (regTwo!32391 r!7292)) Nil!63993)))))

(declare-fun b!5885768 () Bool)

(assert (=> b!5885768 (= e!3606502 e!3606504)))

(assert (=> b!5885768 (= c!1045133 ((_ is Star!15939) (regTwo!32391 r!7292)))))

(declare-fun b!5885769 () Bool)

(declare-fun res!2472268 () Bool)

(declare-fun e!3606500 () Bool)

(assert (=> b!5885769 (=> res!2472268 e!3606500)))

(assert (=> b!5885769 (= res!2472268 call!464100)))

(assert (=> b!5885769 (= e!3606504 e!3606500)))

(declare-fun b!5885770 () Bool)

(assert (=> b!5885770 (= e!3606505 call!464100)))

(declare-fun b!5885771 () Bool)

(declare-fun c!1045136 () Bool)

(assert (=> b!5885771 (= c!1045136 ((_ is ElementMatch!15939) (regTwo!32391 r!7292)))))

(declare-fun e!3606503 () Bool)

(assert (=> b!5885771 (= e!3606503 e!3606501)))

(declare-fun b!5885772 () Bool)

(assert (=> b!5885772 (= e!3606502 e!3606506)))

(declare-fun res!2472267 () Bool)

(assert (=> b!5885772 (= res!2472267 (matchRSpec!3040 (regOne!32391 (regTwo!32391 r!7292)) s!2326))))

(assert (=> b!5885772 (=> res!2472267 e!3606506)))

(declare-fun b!5885773 () Bool)

(assert (=> b!5885773 (= e!3606505 e!3606503)))

(declare-fun res!2472269 () Bool)

(assert (=> b!5885773 (= res!2472269 (not ((_ is EmptyLang!15939) (regTwo!32391 r!7292))))))

(assert (=> b!5885773 (=> (not res!2472269) (not e!3606503))))

(assert (=> b!5885774 (= e!3606500 call!464101)))

(assert (= (and d!1847637 c!1045134) b!5885770))

(assert (= (and d!1847637 (not c!1045134)) b!5885773))

(assert (= (and b!5885773 res!2472269) b!5885771))

(assert (= (and b!5885771 c!1045136) b!5885767))

(assert (= (and b!5885771 (not c!1045136)) b!5885765))

(assert (= (and b!5885765 c!1045135) b!5885772))

(assert (= (and b!5885765 (not c!1045135)) b!5885768))

(assert (= (and b!5885772 (not res!2472267)) b!5885766))

(assert (= (and b!5885768 c!1045133) b!5885769))

(assert (= (and b!5885768 (not c!1045133)) b!5885764))

(assert (= (and b!5885769 (not res!2472268)) b!5885774))

(assert (= (or b!5885774 b!5885764) bm!464095))

(assert (= (or b!5885770 b!5885769) bm!464096))

(declare-fun m!6794580 () Bool)

(assert (=> bm!464095 m!6794580))

(declare-fun m!6794582 () Bool)

(assert (=> bm!464096 m!6794582))

(declare-fun m!6794584 () Bool)

(assert (=> b!5885766 m!6794584))

(declare-fun m!6794586 () Bool)

(assert (=> b!5885772 m!6794586))

(assert (=> b!5885545 d!1847637))

(declare-fun d!1847665 () Bool)

(assert (=> d!1847665 (= (matchR!8122 (regOne!32391 r!7292) s!2326) (matchRSpec!3040 (regOne!32391 r!7292) s!2326))))

(declare-fun lt!2307241 () Unit!157149)

(declare-fun choose!44502 (Regex!15939 List!64117) Unit!157149)

(assert (=> d!1847665 (= lt!2307241 (choose!44502 (regOne!32391 r!7292) s!2326))))

(assert (=> d!1847665 (validRegex!7675 (regOne!32391 r!7292))))

(assert (=> d!1847665 (= (mainMatchTheorem!3040 (regOne!32391 r!7292) s!2326) lt!2307241)))

(declare-fun bs!1390447 () Bool)

(assert (= bs!1390447 d!1847665))

(assert (=> bs!1390447 m!6794408))

(assert (=> bs!1390447 m!6794404))

(declare-fun m!6794598 () Bool)

(assert (=> bs!1390447 m!6794598))

(assert (=> bs!1390447 m!6794498))

(assert (=> b!5885545 d!1847665))

(declare-fun d!1847673 () Bool)

(declare-fun e!3606584 () Bool)

(assert (=> d!1847673 e!3606584))

(declare-fun c!1045175 () Bool)

(assert (=> d!1847673 (= c!1045175 ((_ is EmptyExpr!15939) (regTwo!32391 r!7292)))))

(declare-fun lt!2307259 () Bool)

(declare-fun e!3606580 () Bool)

(assert (=> d!1847673 (= lt!2307259 e!3606580)))

(declare-fun c!1045173 () Bool)

(assert (=> d!1847673 (= c!1045173 (isEmpty!35852 s!2326))))

(assert (=> d!1847673 (validRegex!7675 (regTwo!32391 r!7292))))

(assert (=> d!1847673 (= (matchR!8122 (regTwo!32391 r!7292) s!2326) lt!2307259)))

(declare-fun b!5885903 () Bool)

(declare-fun res!2472327 () Bool)

(declare-fun e!3606581 () Bool)

(assert (=> b!5885903 (=> (not res!2472327) (not e!3606581))))

(declare-fun call!464121 () Bool)

(assert (=> b!5885903 (= res!2472327 (not call!464121))))

(declare-fun b!5885904 () Bool)

(declare-fun res!2472323 () Bool)

(declare-fun e!3606579 () Bool)

(assert (=> b!5885904 (=> res!2472323 e!3606579)))

(assert (=> b!5885904 (= res!2472323 e!3606581)))

(declare-fun res!2472325 () Bool)

(assert (=> b!5885904 (=> (not res!2472325) (not e!3606581))))

(assert (=> b!5885904 (= res!2472325 lt!2307259)))

(declare-fun b!5885905 () Bool)

(assert (=> b!5885905 (= e!3606584 (= lt!2307259 call!464121))))

(declare-fun b!5885906 () Bool)

(declare-fun e!3606582 () Bool)

(assert (=> b!5885906 (= e!3606579 e!3606582)))

(declare-fun res!2472326 () Bool)

(assert (=> b!5885906 (=> (not res!2472326) (not e!3606582))))

(assert (=> b!5885906 (= res!2472326 (not lt!2307259))))

(declare-fun b!5885907 () Bool)

(declare-fun e!3606587 () Bool)

(assert (=> b!5885907 (= e!3606582 e!3606587)))

(declare-fun res!2472322 () Bool)

(assert (=> b!5885907 (=> res!2472322 e!3606587)))

(assert (=> b!5885907 (= res!2472322 call!464121)))

(declare-fun b!5885908 () Bool)

(assert (=> b!5885908 (= e!3606581 (= (head!12431 s!2326) (c!1045073 (regTwo!32391 r!7292))))))

(declare-fun bm!464116 () Bool)

(assert (=> bm!464116 (= call!464121 (isEmpty!35852 s!2326))))

(declare-fun b!5885909 () Bool)

(assert (=> b!5885909 (= e!3606587 (not (= (head!12431 s!2326) (c!1045073 (regTwo!32391 r!7292)))))))

(declare-fun b!5885910 () Bool)

(declare-fun nullable!5939 (Regex!15939) Bool)

(assert (=> b!5885910 (= e!3606580 (nullable!5939 (regTwo!32391 r!7292)))))

(declare-fun b!5885911 () Bool)

(declare-fun e!3606583 () Bool)

(assert (=> b!5885911 (= e!3606583 (not lt!2307259))))

(declare-fun b!5885912 () Bool)

(declare-fun res!2472321 () Bool)

(assert (=> b!5885912 (=> res!2472321 e!3606579)))

(assert (=> b!5885912 (= res!2472321 (not ((_ is ElementMatch!15939) (regTwo!32391 r!7292))))))

(assert (=> b!5885912 (= e!3606583 e!3606579)))

(declare-fun b!5885913 () Bool)

(declare-fun res!2472324 () Bool)

(assert (=> b!5885913 (=> res!2472324 e!3606587)))

(assert (=> b!5885913 (= res!2472324 (not (isEmpty!35852 (tail!11516 s!2326))))))

(declare-fun b!5885916 () Bool)

(assert (=> b!5885916 (= e!3606584 e!3606583)))

(declare-fun c!1045174 () Bool)

(assert (=> b!5885916 (= c!1045174 ((_ is EmptyLang!15939) (regTwo!32391 r!7292)))))

(declare-fun b!5885917 () Bool)

(declare-fun derivativeStep!4677 (Regex!15939 C!32148) Regex!15939)

(assert (=> b!5885917 (= e!3606580 (matchR!8122 (derivativeStep!4677 (regTwo!32391 r!7292) (head!12431 s!2326)) (tail!11516 s!2326)))))

(declare-fun b!5885918 () Bool)

(declare-fun res!2472320 () Bool)

(assert (=> b!5885918 (=> (not res!2472320) (not e!3606581))))

(assert (=> b!5885918 (= res!2472320 (isEmpty!35852 (tail!11516 s!2326)))))

(assert (= (and d!1847673 c!1045173) b!5885910))

(assert (= (and d!1847673 (not c!1045173)) b!5885917))

(assert (= (and d!1847673 c!1045175) b!5885905))

(assert (= (and d!1847673 (not c!1045175)) b!5885916))

(assert (= (and b!5885916 c!1045174) b!5885911))

(assert (= (and b!5885916 (not c!1045174)) b!5885912))

(assert (= (and b!5885912 (not res!2472321)) b!5885904))

(assert (= (and b!5885904 res!2472325) b!5885903))

(assert (= (and b!5885903 res!2472327) b!5885918))

(assert (= (and b!5885918 res!2472320) b!5885908))

(assert (= (and b!5885904 (not res!2472323)) b!5885906))

(assert (= (and b!5885906 res!2472326) b!5885907))

(assert (= (and b!5885907 (not res!2472322)) b!5885913))

(assert (= (and b!5885913 (not res!2472324)) b!5885909))

(assert (= (or b!5885905 b!5885903 b!5885907) bm!464116))

(declare-fun m!6794662 () Bool)

(assert (=> b!5885913 m!6794662))

(assert (=> b!5885913 m!6794662))

(declare-fun m!6794664 () Bool)

(assert (=> b!5885913 m!6794664))

(declare-fun m!6794666 () Bool)

(assert (=> b!5885909 m!6794666))

(assert (=> b!5885918 m!6794662))

(assert (=> b!5885918 m!6794662))

(assert (=> b!5885918 m!6794664))

(assert (=> b!5885917 m!6794666))

(assert (=> b!5885917 m!6794666))

(declare-fun m!6794668 () Bool)

(assert (=> b!5885917 m!6794668))

(assert (=> b!5885917 m!6794662))

(assert (=> b!5885917 m!6794668))

(assert (=> b!5885917 m!6794662))

(declare-fun m!6794670 () Bool)

(assert (=> b!5885917 m!6794670))

(assert (=> bm!464116 m!6794582))

(assert (=> b!5885908 m!6794666))

(declare-fun m!6794672 () Bool)

(assert (=> b!5885910 m!6794672))

(assert (=> d!1847673 m!6794582))

(declare-fun m!6794674 () Bool)

(assert (=> d!1847673 m!6794674))

(assert (=> b!5885545 d!1847673))

(declare-fun d!1847705 () Bool)

(assert (=> d!1847705 (= (matchR!8122 (regTwo!32391 r!7292) s!2326) (matchRSpec!3040 (regTwo!32391 r!7292) s!2326))))

(declare-fun lt!2307260 () Unit!157149)

(assert (=> d!1847705 (= lt!2307260 (choose!44502 (regTwo!32391 r!7292) s!2326))))

(assert (=> d!1847705 (validRegex!7675 (regTwo!32391 r!7292))))

(assert (=> d!1847705 (= (mainMatchTheorem!3040 (regTwo!32391 r!7292) s!2326) lt!2307260)))

(declare-fun bs!1390467 () Bool)

(assert (= bs!1390467 d!1847705))

(assert (=> bs!1390467 m!6794402))

(assert (=> bs!1390467 m!6794398))

(declare-fun m!6794676 () Bool)

(assert (=> bs!1390467 m!6794676))

(assert (=> bs!1390467 m!6794674))

(assert (=> b!5885545 d!1847705))

(declare-fun bs!1390471 () Bool)

(declare-fun b!5885953 () Bool)

(assert (= bs!1390471 (and b!5885953 b!5885774)))

(declare-fun lambda!321424 () Int)

(assert (=> bs!1390471 (= (and (= (reg!16268 (regOne!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292))) (= (regOne!32391 r!7292) (regTwo!32391 r!7292))) (= lambda!321424 lambda!321412))))

(declare-fun bs!1390472 () Bool)

(assert (= bs!1390472 (and b!5885953 b!5885764)))

(assert (=> bs!1390472 (not (= lambda!321424 lambda!321413))))

(assert (=> b!5885953 true))

(assert (=> b!5885953 true))

(declare-fun bs!1390473 () Bool)

(declare-fun b!5885943 () Bool)

(assert (= bs!1390473 (and b!5885943 b!5885774)))

(declare-fun lambda!321425 () Int)

(assert (=> bs!1390473 (not (= lambda!321425 lambda!321412))))

(declare-fun bs!1390474 () Bool)

(assert (= bs!1390474 (and b!5885943 b!5885764)))

(assert (=> bs!1390474 (= (and (= (regOne!32390 (regOne!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292))) (= (regTwo!32390 (regOne!32391 r!7292)) (regTwo!32390 (regTwo!32391 r!7292)))) (= lambda!321425 lambda!321413))))

(declare-fun bs!1390475 () Bool)

(assert (= bs!1390475 (and b!5885943 b!5885953)))

(assert (=> bs!1390475 (not (= lambda!321425 lambda!321424))))

(assert (=> b!5885943 true))

(assert (=> b!5885943 true))

(declare-fun e!3606608 () Bool)

(declare-fun call!464123 () Bool)

(assert (=> b!5885943 (= e!3606608 call!464123)))

(declare-fun b!5885944 () Bool)

(declare-fun c!1045190 () Bool)

(assert (=> b!5885944 (= c!1045190 ((_ is Union!15939) (regOne!32391 r!7292)))))

(declare-fun e!3606605 () Bool)

(declare-fun e!3606606 () Bool)

(assert (=> b!5885944 (= e!3606605 e!3606606)))

(declare-fun bm!464117 () Bool)

(declare-fun c!1045188 () Bool)

(assert (=> bm!464117 (= call!464123 (Exists!3011 (ite c!1045188 lambda!321424 lambda!321425)))))

(declare-fun d!1847707 () Bool)

(declare-fun c!1045189 () Bool)

(assert (=> d!1847707 (= c!1045189 ((_ is EmptyExpr!15939) (regOne!32391 r!7292)))))

(declare-fun e!3606609 () Bool)

(assert (=> d!1847707 (= (matchRSpec!3040 (regOne!32391 r!7292) s!2326) e!3606609)))

(declare-fun bm!464118 () Bool)

(declare-fun call!464122 () Bool)

(assert (=> bm!464118 (= call!464122 (isEmpty!35852 s!2326))))

(declare-fun b!5885945 () Bool)

(declare-fun e!3606610 () Bool)

(assert (=> b!5885945 (= e!3606610 (matchRSpec!3040 (regTwo!32391 (regOne!32391 r!7292)) s!2326))))

(declare-fun b!5885946 () Bool)

(assert (=> b!5885946 (= e!3606605 (= s!2326 (Cons!63993 (c!1045073 (regOne!32391 r!7292)) Nil!63993)))))

(declare-fun b!5885947 () Bool)

(assert (=> b!5885947 (= e!3606606 e!3606608)))

(assert (=> b!5885947 (= c!1045188 ((_ is Star!15939) (regOne!32391 r!7292)))))

(declare-fun b!5885948 () Bool)

(declare-fun res!2472335 () Bool)

(declare-fun e!3606604 () Bool)

(assert (=> b!5885948 (=> res!2472335 e!3606604)))

(assert (=> b!5885948 (= res!2472335 call!464122)))

(assert (=> b!5885948 (= e!3606608 e!3606604)))

(declare-fun b!5885949 () Bool)

(assert (=> b!5885949 (= e!3606609 call!464122)))

(declare-fun b!5885950 () Bool)

(declare-fun c!1045191 () Bool)

(assert (=> b!5885950 (= c!1045191 ((_ is ElementMatch!15939) (regOne!32391 r!7292)))))

(declare-fun e!3606607 () Bool)

(assert (=> b!5885950 (= e!3606607 e!3606605)))

(declare-fun b!5885951 () Bool)

(assert (=> b!5885951 (= e!3606606 e!3606610)))

(declare-fun res!2472334 () Bool)

(assert (=> b!5885951 (= res!2472334 (matchRSpec!3040 (regOne!32391 (regOne!32391 r!7292)) s!2326))))

(assert (=> b!5885951 (=> res!2472334 e!3606610)))

(declare-fun b!5885952 () Bool)

(assert (=> b!5885952 (= e!3606609 e!3606607)))

(declare-fun res!2472336 () Bool)

(assert (=> b!5885952 (= res!2472336 (not ((_ is EmptyLang!15939) (regOne!32391 r!7292))))))

(assert (=> b!5885952 (=> (not res!2472336) (not e!3606607))))

(assert (=> b!5885953 (= e!3606604 call!464123)))

(assert (= (and d!1847707 c!1045189) b!5885949))

(assert (= (and d!1847707 (not c!1045189)) b!5885952))

(assert (= (and b!5885952 res!2472336) b!5885950))

(assert (= (and b!5885950 c!1045191) b!5885946))

(assert (= (and b!5885950 (not c!1045191)) b!5885944))

(assert (= (and b!5885944 c!1045190) b!5885951))

(assert (= (and b!5885944 (not c!1045190)) b!5885947))

(assert (= (and b!5885951 (not res!2472334)) b!5885945))

(assert (= (and b!5885947 c!1045188) b!5885948))

(assert (= (and b!5885947 (not c!1045188)) b!5885943))

(assert (= (and b!5885948 (not res!2472335)) b!5885953))

(assert (= (or b!5885953 b!5885943) bm!464117))

(assert (= (or b!5885949 b!5885948) bm!464118))

(declare-fun m!6794698 () Bool)

(assert (=> bm!464117 m!6794698))

(assert (=> bm!464118 m!6794582))

(declare-fun m!6794700 () Bool)

(assert (=> b!5885945 m!6794700))

(declare-fun m!6794702 () Bool)

(assert (=> b!5885951 m!6794702))

(assert (=> b!5885545 d!1847707))

(declare-fun d!1847711 () Bool)

(declare-fun e!3606628 () Bool)

(assert (=> d!1847711 e!3606628))

(declare-fun c!1045202 () Bool)

(assert (=> d!1847711 (= c!1045202 ((_ is EmptyExpr!15939) (regOne!32391 r!7292)))))

(declare-fun lt!2307264 () Bool)

(declare-fun e!3606624 () Bool)

(assert (=> d!1847711 (= lt!2307264 e!3606624)))

(declare-fun c!1045200 () Bool)

(assert (=> d!1847711 (= c!1045200 (isEmpty!35852 s!2326))))

(assert (=> d!1847711 (validRegex!7675 (regOne!32391 r!7292))))

(assert (=> d!1847711 (= (matchR!8122 (regOne!32391 r!7292) s!2326) lt!2307264)))

(declare-fun b!5885974 () Bool)

(declare-fun res!2472348 () Bool)

(declare-fun e!3606625 () Bool)

(assert (=> b!5885974 (=> (not res!2472348) (not e!3606625))))

(declare-fun call!464124 () Bool)

(assert (=> b!5885974 (= res!2472348 (not call!464124))))

(declare-fun b!5885975 () Bool)

(declare-fun res!2472344 () Bool)

(declare-fun e!3606623 () Bool)

(assert (=> b!5885975 (=> res!2472344 e!3606623)))

(assert (=> b!5885975 (= res!2472344 e!3606625)))

(declare-fun res!2472346 () Bool)

(assert (=> b!5885975 (=> (not res!2472346) (not e!3606625))))

(assert (=> b!5885975 (= res!2472346 lt!2307264)))

(declare-fun b!5885976 () Bool)

(assert (=> b!5885976 (= e!3606628 (= lt!2307264 call!464124))))

(declare-fun b!5885977 () Bool)

(declare-fun e!3606626 () Bool)

(assert (=> b!5885977 (= e!3606623 e!3606626)))

(declare-fun res!2472347 () Bool)

(assert (=> b!5885977 (=> (not res!2472347) (not e!3606626))))

(assert (=> b!5885977 (= res!2472347 (not lt!2307264))))

(declare-fun b!5885978 () Bool)

(declare-fun e!3606629 () Bool)

(assert (=> b!5885978 (= e!3606626 e!3606629)))

(declare-fun res!2472343 () Bool)

(assert (=> b!5885978 (=> res!2472343 e!3606629)))

(assert (=> b!5885978 (= res!2472343 call!464124)))

(declare-fun b!5885979 () Bool)

(assert (=> b!5885979 (= e!3606625 (= (head!12431 s!2326) (c!1045073 (regOne!32391 r!7292))))))

(declare-fun bm!464119 () Bool)

(assert (=> bm!464119 (= call!464124 (isEmpty!35852 s!2326))))

(declare-fun b!5885980 () Bool)

(assert (=> b!5885980 (= e!3606629 (not (= (head!12431 s!2326) (c!1045073 (regOne!32391 r!7292)))))))

(declare-fun b!5885981 () Bool)

(assert (=> b!5885981 (= e!3606624 (nullable!5939 (regOne!32391 r!7292)))))

(declare-fun b!5885982 () Bool)

(declare-fun e!3606627 () Bool)

(assert (=> b!5885982 (= e!3606627 (not lt!2307264))))

(declare-fun b!5885983 () Bool)

(declare-fun res!2472342 () Bool)

(assert (=> b!5885983 (=> res!2472342 e!3606623)))

(assert (=> b!5885983 (= res!2472342 (not ((_ is ElementMatch!15939) (regOne!32391 r!7292))))))

(assert (=> b!5885983 (= e!3606627 e!3606623)))

(declare-fun b!5885984 () Bool)

(declare-fun res!2472345 () Bool)

(assert (=> b!5885984 (=> res!2472345 e!3606629)))

(assert (=> b!5885984 (= res!2472345 (not (isEmpty!35852 (tail!11516 s!2326))))))

(declare-fun b!5885985 () Bool)

(assert (=> b!5885985 (= e!3606628 e!3606627)))

(declare-fun c!1045201 () Bool)

(assert (=> b!5885985 (= c!1045201 ((_ is EmptyLang!15939) (regOne!32391 r!7292)))))

(declare-fun b!5885986 () Bool)

(assert (=> b!5885986 (= e!3606624 (matchR!8122 (derivativeStep!4677 (regOne!32391 r!7292) (head!12431 s!2326)) (tail!11516 s!2326)))))

(declare-fun b!5885987 () Bool)

(declare-fun res!2472341 () Bool)

(assert (=> b!5885987 (=> (not res!2472341) (not e!3606625))))

(assert (=> b!5885987 (= res!2472341 (isEmpty!35852 (tail!11516 s!2326)))))

(assert (= (and d!1847711 c!1045200) b!5885981))

(assert (= (and d!1847711 (not c!1045200)) b!5885986))

(assert (= (and d!1847711 c!1045202) b!5885976))

(assert (= (and d!1847711 (not c!1045202)) b!5885985))

(assert (= (and b!5885985 c!1045201) b!5885982))

(assert (= (and b!5885985 (not c!1045201)) b!5885983))

(assert (= (and b!5885983 (not res!2472342)) b!5885975))

(assert (= (and b!5885975 res!2472346) b!5885974))

(assert (= (and b!5885974 res!2472348) b!5885987))

(assert (= (and b!5885987 res!2472341) b!5885979))

(assert (= (and b!5885975 (not res!2472344)) b!5885977))

(assert (= (and b!5885977 res!2472347) b!5885978))

(assert (= (and b!5885978 (not res!2472343)) b!5885984))

(assert (= (and b!5885984 (not res!2472345)) b!5885980))

(assert (= (or b!5885976 b!5885974 b!5885978) bm!464119))

(assert (=> b!5885984 m!6794662))

(assert (=> b!5885984 m!6794662))

(assert (=> b!5885984 m!6794664))

(assert (=> b!5885980 m!6794666))

(assert (=> b!5885987 m!6794662))

(assert (=> b!5885987 m!6794662))

(assert (=> b!5885987 m!6794664))

(assert (=> b!5885986 m!6794666))

(assert (=> b!5885986 m!6794666))

(declare-fun m!6794704 () Bool)

(assert (=> b!5885986 m!6794704))

(assert (=> b!5885986 m!6794662))

(assert (=> b!5885986 m!6794704))

(assert (=> b!5885986 m!6794662))

(declare-fun m!6794706 () Bool)

(assert (=> b!5885986 m!6794706))

(assert (=> bm!464119 m!6794582))

(assert (=> b!5885979 m!6794666))

(declare-fun m!6794708 () Bool)

(assert (=> b!5885981 m!6794708))

(assert (=> d!1847711 m!6794582))

(assert (=> d!1847711 m!6794498))

(assert (=> b!5885545 d!1847711))

(declare-fun d!1847713 () Bool)

(declare-fun e!3606640 () Bool)

(assert (=> d!1847713 e!3606640))

(declare-fun res!2472353 () Bool)

(assert (=> d!1847713 (=> (not res!2472353) (not e!3606640))))

(declare-fun lt!2307270 () List!64118)

(declare-fun noDuplicate!1804 (List!64118) Bool)

(assert (=> d!1847713 (= res!2472353 (noDuplicate!1804 lt!2307270))))

(declare-fun choose!44506 ((InoxSet Context!10646)) List!64118)

(assert (=> d!1847713 (= lt!2307270 (choose!44506 z!1189))))

(assert (=> d!1847713 (= (toList!9723 z!1189) lt!2307270)))

(declare-fun b!5886004 () Bool)

(declare-fun content!11769 (List!64118) (InoxSet Context!10646))

(assert (=> b!5886004 (= e!3606640 (= (content!11769 lt!2307270) z!1189))))

(assert (= (and d!1847713 res!2472353) b!5886004))

(declare-fun m!6794730 () Bool)

(assert (=> d!1847713 m!6794730))

(declare-fun m!6794732 () Bool)

(assert (=> d!1847713 m!6794732))

(declare-fun m!6794734 () Bool)

(assert (=> b!5886004 m!6794734))

(assert (=> b!5885564 d!1847713))

(declare-fun d!1847717 () Bool)

(declare-fun c!1045209 () Bool)

(assert (=> d!1847717 (= c!1045209 (isEmpty!35852 s!2326))))

(declare-fun e!3606641 () Bool)

(assert (=> d!1847717 (= (matchZipper!2005 z!1189 s!2326) e!3606641)))

(declare-fun b!5886005 () Bool)

(assert (=> b!5886005 (= e!3606641 (nullableZipper!1777 z!1189))))

(declare-fun b!5886006 () Bool)

(assert (=> b!5886006 (= e!3606641 (matchZipper!2005 (derivationStepZipper!1938 z!1189 (head!12431 s!2326)) (tail!11516 s!2326)))))

(assert (= (and d!1847717 c!1045209) b!5886005))

(assert (= (and d!1847717 (not c!1045209)) b!5886006))

(assert (=> d!1847717 m!6794582))

(declare-fun m!6794736 () Bool)

(assert (=> b!5886005 m!6794736))

(assert (=> b!5886006 m!6794666))

(assert (=> b!5886006 m!6794666))

(declare-fun m!6794738 () Bool)

(assert (=> b!5886006 m!6794738))

(assert (=> b!5886006 m!6794662))

(assert (=> b!5886006 m!6794738))

(assert (=> b!5886006 m!6794662))

(declare-fun m!6794740 () Bool)

(assert (=> b!5886006 m!6794740))

(assert (=> b!5885539 d!1847717))

(declare-fun d!1847719 () Bool)

(declare-fun c!1045211 () Bool)

(assert (=> d!1847719 (= c!1045211 (isEmpty!35852 (t!377498 s!2326)))))

(declare-fun e!3606643 () Bool)

(assert (=> d!1847719 (= (matchZipper!2005 lt!2307215 (t!377498 s!2326)) e!3606643)))

(declare-fun b!5886009 () Bool)

(assert (=> b!5886009 (= e!3606643 (nullableZipper!1777 lt!2307215))))

(declare-fun b!5886010 () Bool)

(assert (=> b!5886010 (= e!3606643 (matchZipper!2005 (derivationStepZipper!1938 lt!2307215 (head!12431 (t!377498 s!2326))) (tail!11516 (t!377498 s!2326))))))

(assert (= (and d!1847719 c!1045211) b!5886009))

(assert (= (and d!1847719 (not c!1045211)) b!5886010))

(assert (=> d!1847719 m!6794482))

(declare-fun m!6794742 () Bool)

(assert (=> b!5886009 m!6794742))

(assert (=> b!5886010 m!6794486))

(assert (=> b!5886010 m!6794486))

(declare-fun m!6794744 () Bool)

(assert (=> b!5886010 m!6794744))

(assert (=> b!5886010 m!6794490))

(assert (=> b!5886010 m!6794744))

(assert (=> b!5886010 m!6794490))

(declare-fun m!6794746 () Bool)

(assert (=> b!5886010 m!6794746))

(assert (=> b!5885539 d!1847719))

(declare-fun d!1847721 () Bool)

(declare-fun lt!2307274 () Regex!15939)

(assert (=> d!1847721 (validRegex!7675 lt!2307274)))

(assert (=> d!1847721 (= lt!2307274 (generalisedUnion!1783 (unfocusZipperList!1360 zl!343)))))

(assert (=> d!1847721 (= (unfocusZipper!1681 zl!343) lt!2307274)))

(declare-fun bs!1390485 () Bool)

(assert (= bs!1390485 d!1847721))

(declare-fun m!6794758 () Bool)

(assert (=> bs!1390485 m!6794758))

(assert (=> bs!1390485 m!6794432))

(assert (=> bs!1390485 m!6794432))

(assert (=> bs!1390485 m!6794434))

(assert (=> b!5885560 d!1847721))

(declare-fun bs!1390486 () Bool)

(declare-fun b!5886025 () Bool)

(assert (= bs!1390486 (and b!5886025 b!5885774)))

(declare-fun lambda!321432 () Int)

(assert (=> bs!1390486 (= (and (= (reg!16268 r!7292) (reg!16268 (regTwo!32391 r!7292))) (= r!7292 (regTwo!32391 r!7292))) (= lambda!321432 lambda!321412))))

(declare-fun bs!1390487 () Bool)

(assert (= bs!1390487 (and b!5886025 b!5885764)))

(assert (=> bs!1390487 (not (= lambda!321432 lambda!321413))))

(declare-fun bs!1390488 () Bool)

(assert (= bs!1390488 (and b!5886025 b!5885953)))

(assert (=> bs!1390488 (= (and (= (reg!16268 r!7292) (reg!16268 (regOne!32391 r!7292))) (= r!7292 (regOne!32391 r!7292))) (= lambda!321432 lambda!321424))))

(declare-fun bs!1390489 () Bool)

(assert (= bs!1390489 (and b!5886025 b!5885943)))

(assert (=> bs!1390489 (not (= lambda!321432 lambda!321425))))

(assert (=> b!5886025 true))

(assert (=> b!5886025 true))

(declare-fun bs!1390491 () Bool)

(declare-fun b!5886015 () Bool)

(assert (= bs!1390491 (and b!5886015 b!5886025)))

(declare-fun lambda!321433 () Int)

(assert (=> bs!1390491 (not (= lambda!321433 lambda!321432))))

(declare-fun bs!1390492 () Bool)

(assert (= bs!1390492 (and b!5886015 b!5885764)))

(assert (=> bs!1390492 (= (and (= (regOne!32390 r!7292) (regOne!32390 (regTwo!32391 r!7292))) (= (regTwo!32390 r!7292) (regTwo!32390 (regTwo!32391 r!7292)))) (= lambda!321433 lambda!321413))))

(declare-fun bs!1390493 () Bool)

(assert (= bs!1390493 (and b!5886015 b!5885953)))

(assert (=> bs!1390493 (not (= lambda!321433 lambda!321424))))

(declare-fun bs!1390494 () Bool)

(assert (= bs!1390494 (and b!5886015 b!5885774)))

(assert (=> bs!1390494 (not (= lambda!321433 lambda!321412))))

(declare-fun bs!1390495 () Bool)

(assert (= bs!1390495 (and b!5886015 b!5885943)))

(assert (=> bs!1390495 (= (and (= (regOne!32390 r!7292) (regOne!32390 (regOne!32391 r!7292))) (= (regTwo!32390 r!7292) (regTwo!32390 (regOne!32391 r!7292)))) (= lambda!321433 lambda!321425))))

(assert (=> b!5886015 true))

(assert (=> b!5886015 true))

(declare-fun e!3606651 () Bool)

(declare-fun call!464126 () Bool)

(assert (=> b!5886015 (= e!3606651 call!464126)))

(declare-fun b!5886016 () Bool)

(declare-fun c!1045215 () Bool)

(assert (=> b!5886016 (= c!1045215 ((_ is Union!15939) r!7292))))

(declare-fun e!3606646 () Bool)

(declare-fun e!3606649 () Bool)

(assert (=> b!5886016 (= e!3606646 e!3606649)))

(declare-fun bm!464120 () Bool)

(declare-fun c!1045213 () Bool)

(assert (=> bm!464120 (= call!464126 (Exists!3011 (ite c!1045213 lambda!321432 lambda!321433)))))

(declare-fun d!1847727 () Bool)

(declare-fun c!1045214 () Bool)

(assert (=> d!1847727 (= c!1045214 ((_ is EmptyExpr!15939) r!7292))))

(declare-fun e!3606652 () Bool)

(assert (=> d!1847727 (= (matchRSpec!3040 r!7292 s!2326) e!3606652)))

(declare-fun bm!464121 () Bool)

(declare-fun call!464125 () Bool)

(assert (=> bm!464121 (= call!464125 (isEmpty!35852 s!2326))))

(declare-fun b!5886017 () Bool)

(declare-fun e!3606653 () Bool)

(assert (=> b!5886017 (= e!3606653 (matchRSpec!3040 (regTwo!32391 r!7292) s!2326))))

(declare-fun b!5886018 () Bool)

(assert (=> b!5886018 (= e!3606646 (= s!2326 (Cons!63993 (c!1045073 r!7292) Nil!63993)))))

(declare-fun b!5886019 () Bool)

(assert (=> b!5886019 (= e!3606649 e!3606651)))

(assert (=> b!5886019 (= c!1045213 ((_ is Star!15939) r!7292))))

(declare-fun b!5886020 () Bool)

(declare-fun res!2472355 () Bool)

(declare-fun e!3606645 () Bool)

(assert (=> b!5886020 (=> res!2472355 e!3606645)))

(assert (=> b!5886020 (= res!2472355 call!464125)))

(assert (=> b!5886020 (= e!3606651 e!3606645)))

(declare-fun b!5886021 () Bool)

(assert (=> b!5886021 (= e!3606652 call!464125)))

(declare-fun b!5886022 () Bool)

(declare-fun c!1045216 () Bool)

(assert (=> b!5886022 (= c!1045216 ((_ is ElementMatch!15939) r!7292))))

(declare-fun e!3606650 () Bool)

(assert (=> b!5886022 (= e!3606650 e!3606646)))

(declare-fun b!5886023 () Bool)

(assert (=> b!5886023 (= e!3606649 e!3606653)))

(declare-fun res!2472354 () Bool)

(assert (=> b!5886023 (= res!2472354 (matchRSpec!3040 (regOne!32391 r!7292) s!2326))))

(assert (=> b!5886023 (=> res!2472354 e!3606653)))

(declare-fun b!5886024 () Bool)

(assert (=> b!5886024 (= e!3606652 e!3606650)))

(declare-fun res!2472358 () Bool)

(assert (=> b!5886024 (= res!2472358 (not ((_ is EmptyLang!15939) r!7292)))))

(assert (=> b!5886024 (=> (not res!2472358) (not e!3606650))))

(assert (=> b!5886025 (= e!3606645 call!464126)))

(assert (= (and d!1847727 c!1045214) b!5886021))

(assert (= (and d!1847727 (not c!1045214)) b!5886024))

(assert (= (and b!5886024 res!2472358) b!5886022))

(assert (= (and b!5886022 c!1045216) b!5886018))

(assert (= (and b!5886022 (not c!1045216)) b!5886016))

(assert (= (and b!5886016 c!1045215) b!5886023))

(assert (= (and b!5886016 (not c!1045215)) b!5886019))

(assert (= (and b!5886023 (not res!2472354)) b!5886017))

(assert (= (and b!5886019 c!1045213) b!5886020))

(assert (= (and b!5886019 (not c!1045213)) b!5886015))

(assert (= (and b!5886020 (not res!2472355)) b!5886025))

(assert (= (or b!5886025 b!5886015) bm!464120))

(assert (= (or b!5886021 b!5886020) bm!464121))

(declare-fun m!6794780 () Bool)

(assert (=> bm!464120 m!6794780))

(assert (=> bm!464121 m!6794582))

(assert (=> b!5886017 m!6794398))

(assert (=> b!5886023 m!6794404))

(assert (=> b!5885541 d!1847727))

(declare-fun d!1847737 () Bool)

(declare-fun e!3606671 () Bool)

(assert (=> d!1847737 e!3606671))

(declare-fun c!1045228 () Bool)

(assert (=> d!1847737 (= c!1045228 ((_ is EmptyExpr!15939) r!7292))))

(declare-fun lt!2307281 () Bool)

(declare-fun e!3606667 () Bool)

(assert (=> d!1847737 (= lt!2307281 e!3606667)))

(declare-fun c!1045226 () Bool)

(assert (=> d!1847737 (= c!1045226 (isEmpty!35852 s!2326))))

(assert (=> d!1847737 (validRegex!7675 r!7292)))

(assert (=> d!1847737 (= (matchR!8122 r!7292 s!2326) lt!2307281)))

(declare-fun b!5886047 () Bool)

(declare-fun res!2472369 () Bool)

(declare-fun e!3606668 () Bool)

(assert (=> b!5886047 (=> (not res!2472369) (not e!3606668))))

(declare-fun call!464134 () Bool)

(assert (=> b!5886047 (= res!2472369 (not call!464134))))

(declare-fun b!5886048 () Bool)

(declare-fun res!2472365 () Bool)

(declare-fun e!3606665 () Bool)

(assert (=> b!5886048 (=> res!2472365 e!3606665)))

(assert (=> b!5886048 (= res!2472365 e!3606668)))

(declare-fun res!2472367 () Bool)

(assert (=> b!5886048 (=> (not res!2472367) (not e!3606668))))

(assert (=> b!5886048 (= res!2472367 lt!2307281)))

(declare-fun b!5886049 () Bool)

(assert (=> b!5886049 (= e!3606671 (= lt!2307281 call!464134))))

(declare-fun b!5886050 () Bool)

(declare-fun e!3606669 () Bool)

(assert (=> b!5886050 (= e!3606665 e!3606669)))

(declare-fun res!2472368 () Bool)

(assert (=> b!5886050 (=> (not res!2472368) (not e!3606669))))

(assert (=> b!5886050 (= res!2472368 (not lt!2307281))))

(declare-fun b!5886051 () Bool)

(declare-fun e!3606672 () Bool)

(assert (=> b!5886051 (= e!3606669 e!3606672)))

(declare-fun res!2472364 () Bool)

(assert (=> b!5886051 (=> res!2472364 e!3606672)))

(assert (=> b!5886051 (= res!2472364 call!464134)))

(declare-fun b!5886052 () Bool)

(assert (=> b!5886052 (= e!3606668 (= (head!12431 s!2326) (c!1045073 r!7292)))))

(declare-fun bm!464129 () Bool)

(assert (=> bm!464129 (= call!464134 (isEmpty!35852 s!2326))))

(declare-fun b!5886053 () Bool)

(assert (=> b!5886053 (= e!3606672 (not (= (head!12431 s!2326) (c!1045073 r!7292))))))

(declare-fun b!5886054 () Bool)

(assert (=> b!5886054 (= e!3606667 (nullable!5939 r!7292))))

(declare-fun b!5886055 () Bool)

(declare-fun e!3606670 () Bool)

(assert (=> b!5886055 (= e!3606670 (not lt!2307281))))

(declare-fun b!5886056 () Bool)

(declare-fun res!2472363 () Bool)

(assert (=> b!5886056 (=> res!2472363 e!3606665)))

(assert (=> b!5886056 (= res!2472363 (not ((_ is ElementMatch!15939) r!7292)))))

(assert (=> b!5886056 (= e!3606670 e!3606665)))

(declare-fun b!5886057 () Bool)

(declare-fun res!2472366 () Bool)

(assert (=> b!5886057 (=> res!2472366 e!3606672)))

(assert (=> b!5886057 (= res!2472366 (not (isEmpty!35852 (tail!11516 s!2326))))))

(declare-fun b!5886058 () Bool)

(assert (=> b!5886058 (= e!3606671 e!3606670)))

(declare-fun c!1045227 () Bool)

(assert (=> b!5886058 (= c!1045227 ((_ is EmptyLang!15939) r!7292))))

(declare-fun b!5886059 () Bool)

(assert (=> b!5886059 (= e!3606667 (matchR!8122 (derivativeStep!4677 r!7292 (head!12431 s!2326)) (tail!11516 s!2326)))))

(declare-fun b!5886060 () Bool)

(declare-fun res!2472362 () Bool)

(assert (=> b!5886060 (=> (not res!2472362) (not e!3606668))))

(assert (=> b!5886060 (= res!2472362 (isEmpty!35852 (tail!11516 s!2326)))))

(assert (= (and d!1847737 c!1045226) b!5886054))

(assert (= (and d!1847737 (not c!1045226)) b!5886059))

(assert (= (and d!1847737 c!1045228) b!5886049))

(assert (= (and d!1847737 (not c!1045228)) b!5886058))

(assert (= (and b!5886058 c!1045227) b!5886055))

(assert (= (and b!5886058 (not c!1045227)) b!5886056))

(assert (= (and b!5886056 (not res!2472363)) b!5886048))

(assert (= (and b!5886048 res!2472367) b!5886047))

(assert (= (and b!5886047 res!2472369) b!5886060))

(assert (= (and b!5886060 res!2472362) b!5886052))

(assert (= (and b!5886048 (not res!2472365)) b!5886050))

(assert (= (and b!5886050 res!2472368) b!5886051))

(assert (= (and b!5886051 (not res!2472364)) b!5886057))

(assert (= (and b!5886057 (not res!2472366)) b!5886053))

(assert (= (or b!5886049 b!5886047 b!5886051) bm!464129))

(assert (=> b!5886057 m!6794662))

(assert (=> b!5886057 m!6794662))

(assert (=> b!5886057 m!6794664))

(assert (=> b!5886053 m!6794666))

(assert (=> b!5886060 m!6794662))

(assert (=> b!5886060 m!6794662))

(assert (=> b!5886060 m!6794664))

(assert (=> b!5886059 m!6794666))

(assert (=> b!5886059 m!6794666))

(declare-fun m!6794794 () Bool)

(assert (=> b!5886059 m!6794794))

(assert (=> b!5886059 m!6794662))

(assert (=> b!5886059 m!6794794))

(assert (=> b!5886059 m!6794662))

(declare-fun m!6794796 () Bool)

(assert (=> b!5886059 m!6794796))

(assert (=> bm!464129 m!6794582))

(assert (=> b!5886052 m!6794666))

(declare-fun m!6794798 () Bool)

(assert (=> b!5886054 m!6794798))

(assert (=> d!1847737 m!6794582))

(assert (=> d!1847737 m!6794458))

(assert (=> b!5885541 d!1847737))

(declare-fun d!1847741 () Bool)

(assert (=> d!1847741 (= (matchR!8122 r!7292 s!2326) (matchRSpec!3040 r!7292 s!2326))))

(declare-fun lt!2307282 () Unit!157149)

(assert (=> d!1847741 (= lt!2307282 (choose!44502 r!7292 s!2326))))

(assert (=> d!1847741 (validRegex!7675 r!7292)))

(assert (=> d!1847741 (= (mainMatchTheorem!3040 r!7292 s!2326) lt!2307282)))

(declare-fun bs!1390496 () Bool)

(assert (= bs!1390496 d!1847741))

(assert (=> bs!1390496 m!6794412))

(assert (=> bs!1390496 m!6794410))

(declare-fun m!6794802 () Bool)

(assert (=> bs!1390496 m!6794802))

(assert (=> bs!1390496 m!6794458))

(assert (=> b!5885541 d!1847741))

(declare-fun bm!464142 () Bool)

(declare-fun call!464150 () (InoxSet Context!10646))

(declare-fun call!464147 () (InoxSet Context!10646))

(assert (=> bm!464142 (= call!464150 call!464147)))

(declare-fun b!5886137 () Bool)

(declare-fun e!3606709 () (InoxSet Context!10646))

(declare-fun call!464148 () (InoxSet Context!10646))

(assert (=> b!5886137 (= e!3606709 ((_ map or) call!464148 call!464147))))

(declare-fun b!5886139 () Bool)

(declare-fun c!1045241 () Bool)

(assert (=> b!5886139 (= c!1045241 ((_ is Star!15939) (regTwo!32391 r!7292)))))

(declare-fun e!3606708 () (InoxSet Context!10646))

(declare-fun e!3606710 () (InoxSet Context!10646))

(assert (=> b!5886139 (= e!3606708 e!3606710)))

(declare-fun b!5886140 () Bool)

(declare-fun e!3606712 () (InoxSet Context!10646))

(assert (=> b!5886140 (= e!3606712 (store ((as const (Array Context!10646 Bool)) false) lt!2307219 true))))

(declare-fun b!5886141 () Bool)

(declare-fun c!1045240 () Bool)

(declare-fun e!3606713 () Bool)

(assert (=> b!5886141 (= c!1045240 e!3606713)))

(declare-fun res!2472372 () Bool)

(assert (=> b!5886141 (=> (not res!2472372) (not e!3606713))))

(assert (=> b!5886141 (= res!2472372 ((_ is Concat!24784) (regTwo!32391 r!7292)))))

(declare-fun e!3606711 () (InoxSet Context!10646))

(assert (=> b!5886141 (= e!3606711 e!3606709)))

(declare-fun bm!464143 () Bool)

(declare-fun call!464152 () List!64116)

(declare-fun call!464151 () List!64116)

(assert (=> bm!464143 (= call!464152 call!464151)))

(declare-fun bm!464144 () Bool)

(declare-fun c!1045242 () Bool)

(assert (=> bm!464144 (= call!464148 (derivationStepZipperDown!1205 (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292))) (ite c!1045242 lt!2307219 (Context!10647 call!464151)) (h!70441 s!2326)))))

(declare-fun c!1045243 () Bool)

(declare-fun call!464149 () (InoxSet Context!10646))

(declare-fun bm!464145 () Bool)

(assert (=> bm!464145 (= call!464149 (derivationStepZipperDown!1205 (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292))))) (ite (or c!1045242 c!1045240) lt!2307219 (Context!10647 call!464152)) (h!70441 s!2326)))))

(declare-fun b!5886142 () Bool)

(assert (=> b!5886142 (= e!3606711 ((_ map or) call!464148 call!464149))))

(declare-fun b!5886143 () Bool)

(assert (=> b!5886143 (= e!3606710 call!464150)))

(declare-fun b!5886144 () Bool)

(assert (=> b!5886144 (= e!3606713 (nullable!5939 (regOne!32390 (regTwo!32391 r!7292))))))

(declare-fun bm!464146 () Bool)

(assert (=> bm!464146 (= call!464147 call!464149)))

(declare-fun b!5886145 () Bool)

(assert (=> b!5886145 (= e!3606710 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464147 () Bool)

(declare-fun $colon$colon!1844 (List!64116 Regex!15939) List!64116)

(assert (=> bm!464147 (= call!464151 ($colon$colon!1844 (exprs!5823 lt!2307219) (ite (or c!1045240 c!1045243) (regTwo!32390 (regTwo!32391 r!7292)) (regTwo!32391 r!7292))))))

(declare-fun b!5886138 () Bool)

(assert (=> b!5886138 (= e!3606708 call!464150)))

(declare-fun d!1847743 () Bool)

(declare-fun c!1045239 () Bool)

(assert (=> d!1847743 (= c!1045239 (and ((_ is ElementMatch!15939) (regTwo!32391 r!7292)) (= (c!1045073 (regTwo!32391 r!7292)) (h!70441 s!2326))))))

(assert (=> d!1847743 (= (derivationStepZipperDown!1205 (regTwo!32391 r!7292) lt!2307219 (h!70441 s!2326)) e!3606712)))

(declare-fun b!5886146 () Bool)

(assert (=> b!5886146 (= e!3606712 e!3606711)))

(assert (=> b!5886146 (= c!1045242 ((_ is Union!15939) (regTwo!32391 r!7292)))))

(declare-fun b!5886147 () Bool)

(assert (=> b!5886147 (= e!3606709 e!3606708)))

(assert (=> b!5886147 (= c!1045243 ((_ is Concat!24784) (regTwo!32391 r!7292)))))

(assert (= (and d!1847743 c!1045239) b!5886140))

(assert (= (and d!1847743 (not c!1045239)) b!5886146))

(assert (= (and b!5886146 c!1045242) b!5886142))

(assert (= (and b!5886146 (not c!1045242)) b!5886141))

(assert (= (and b!5886141 res!2472372) b!5886144))

(assert (= (and b!5886141 c!1045240) b!5886137))

(assert (= (and b!5886141 (not c!1045240)) b!5886147))

(assert (= (and b!5886147 c!1045243) b!5886138))

(assert (= (and b!5886147 (not c!1045243)) b!5886139))

(assert (= (and b!5886139 c!1045241) b!5886143))

(assert (= (and b!5886139 (not c!1045241)) b!5886145))

(assert (= (or b!5886138 b!5886143) bm!464143))

(assert (= (or b!5886138 b!5886143) bm!464142))

(assert (= (or b!5886137 bm!464143) bm!464147))

(assert (= (or b!5886137 bm!464142) bm!464146))

(assert (= (or b!5886142 bm!464146) bm!464145))

(assert (= (or b!5886142 b!5886137) bm!464144))

(declare-fun m!6794806 () Bool)

(assert (=> bm!464145 m!6794806))

(declare-fun m!6794808 () Bool)

(assert (=> b!5886144 m!6794808))

(declare-fun m!6794810 () Bool)

(assert (=> bm!464144 m!6794810))

(declare-fun m!6794812 () Bool)

(assert (=> bm!464147 m!6794812))

(declare-fun m!6794814 () Bool)

(assert (=> b!5886140 m!6794814))

(assert (=> b!5885562 d!1847743))

(declare-fun bm!464148 () Bool)

(declare-fun call!464156 () (InoxSet Context!10646))

(declare-fun call!464153 () (InoxSet Context!10646))

(assert (=> bm!464148 (= call!464156 call!464153)))

(declare-fun b!5886148 () Bool)

(declare-fun e!3606715 () (InoxSet Context!10646))

(declare-fun call!464154 () (InoxSet Context!10646))

(assert (=> b!5886148 (= e!3606715 ((_ map or) call!464154 call!464153))))

(declare-fun b!5886150 () Bool)

(declare-fun c!1045246 () Bool)

(assert (=> b!5886150 (= c!1045246 ((_ is Star!15939) (regOne!32391 r!7292)))))

(declare-fun e!3606714 () (InoxSet Context!10646))

(declare-fun e!3606716 () (InoxSet Context!10646))

(assert (=> b!5886150 (= e!3606714 e!3606716)))

(declare-fun b!5886151 () Bool)

(declare-fun e!3606718 () (InoxSet Context!10646))

(assert (=> b!5886151 (= e!3606718 (store ((as const (Array Context!10646 Bool)) false) lt!2307219 true))))

(declare-fun b!5886152 () Bool)

(declare-fun c!1045245 () Bool)

(declare-fun e!3606719 () Bool)

(assert (=> b!5886152 (= c!1045245 e!3606719)))

(declare-fun res!2472373 () Bool)

(assert (=> b!5886152 (=> (not res!2472373) (not e!3606719))))

(assert (=> b!5886152 (= res!2472373 ((_ is Concat!24784) (regOne!32391 r!7292)))))

(declare-fun e!3606717 () (InoxSet Context!10646))

(assert (=> b!5886152 (= e!3606717 e!3606715)))

(declare-fun bm!464149 () Bool)

(declare-fun call!464158 () List!64116)

(declare-fun call!464157 () List!64116)

(assert (=> bm!464149 (= call!464158 call!464157)))

(declare-fun bm!464150 () Bool)

(declare-fun c!1045247 () Bool)

(assert (=> bm!464150 (= call!464154 (derivationStepZipperDown!1205 (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292))) (ite c!1045247 lt!2307219 (Context!10647 call!464157)) (h!70441 s!2326)))))

(declare-fun bm!464151 () Bool)

(declare-fun call!464155 () (InoxSet Context!10646))

(declare-fun c!1045248 () Bool)

(assert (=> bm!464151 (= call!464155 (derivationStepZipperDown!1205 (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292))))) (ite (or c!1045247 c!1045245) lt!2307219 (Context!10647 call!464158)) (h!70441 s!2326)))))

(declare-fun b!5886153 () Bool)

(assert (=> b!5886153 (= e!3606717 ((_ map or) call!464154 call!464155))))

(declare-fun b!5886154 () Bool)

(assert (=> b!5886154 (= e!3606716 call!464156)))

(declare-fun b!5886155 () Bool)

(assert (=> b!5886155 (= e!3606719 (nullable!5939 (regOne!32390 (regOne!32391 r!7292))))))

(declare-fun bm!464152 () Bool)

(assert (=> bm!464152 (= call!464153 call!464155)))

(declare-fun b!5886156 () Bool)

(assert (=> b!5886156 (= e!3606716 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464153 () Bool)

(assert (=> bm!464153 (= call!464157 ($colon$colon!1844 (exprs!5823 lt!2307219) (ite (or c!1045245 c!1045248) (regTwo!32390 (regOne!32391 r!7292)) (regOne!32391 r!7292))))))

(declare-fun b!5886149 () Bool)

(assert (=> b!5886149 (= e!3606714 call!464156)))

(declare-fun d!1847751 () Bool)

(declare-fun c!1045244 () Bool)

(assert (=> d!1847751 (= c!1045244 (and ((_ is ElementMatch!15939) (regOne!32391 r!7292)) (= (c!1045073 (regOne!32391 r!7292)) (h!70441 s!2326))))))

(assert (=> d!1847751 (= (derivationStepZipperDown!1205 (regOne!32391 r!7292) lt!2307219 (h!70441 s!2326)) e!3606718)))

(declare-fun b!5886157 () Bool)

(assert (=> b!5886157 (= e!3606718 e!3606717)))

(assert (=> b!5886157 (= c!1045247 ((_ is Union!15939) (regOne!32391 r!7292)))))

(declare-fun b!5886158 () Bool)

(assert (=> b!5886158 (= e!3606715 e!3606714)))

(assert (=> b!5886158 (= c!1045248 ((_ is Concat!24784) (regOne!32391 r!7292)))))

(assert (= (and d!1847751 c!1045244) b!5886151))

(assert (= (and d!1847751 (not c!1045244)) b!5886157))

(assert (= (and b!5886157 c!1045247) b!5886153))

(assert (= (and b!5886157 (not c!1045247)) b!5886152))

(assert (= (and b!5886152 res!2472373) b!5886155))

(assert (= (and b!5886152 c!1045245) b!5886148))

(assert (= (and b!5886152 (not c!1045245)) b!5886158))

(assert (= (and b!5886158 c!1045248) b!5886149))

(assert (= (and b!5886158 (not c!1045248)) b!5886150))

(assert (= (and b!5886150 c!1045246) b!5886154))

(assert (= (and b!5886150 (not c!1045246)) b!5886156))

(assert (= (or b!5886149 b!5886154) bm!464149))

(assert (= (or b!5886149 b!5886154) bm!464148))

(assert (= (or b!5886148 bm!464149) bm!464153))

(assert (= (or b!5886148 bm!464148) bm!464152))

(assert (= (or b!5886153 bm!464152) bm!464151))

(assert (= (or b!5886153 b!5886148) bm!464150))

(declare-fun m!6794816 () Bool)

(assert (=> bm!464151 m!6794816))

(declare-fun m!6794818 () Bool)

(assert (=> b!5886155 m!6794818))

(declare-fun m!6794820 () Bool)

(assert (=> bm!464150 m!6794820))

(declare-fun m!6794822 () Bool)

(assert (=> bm!464153 m!6794822))

(assert (=> b!5886151 m!6794814))

(assert (=> b!5885562 d!1847751))

(declare-fun bs!1390500 () Bool)

(declare-fun d!1847753 () Bool)

(assert (= bs!1390500 (and d!1847753 d!1847631)))

(declare-fun lambda!321434 () Int)

(assert (=> bs!1390500 (= lambda!321434 lambda!321396)))

(assert (=> d!1847753 (= (inv!83094 (h!70442 zl!343)) (forall!15026 (exprs!5823 (h!70442 zl!343)) lambda!321434))))

(declare-fun bs!1390501 () Bool)

(assert (= bs!1390501 d!1847753))

(declare-fun m!6794824 () Bool)

(assert (=> bs!1390501 m!6794824))

(assert (=> b!5885552 d!1847753))

(declare-fun bs!1390502 () Bool)

(declare-fun d!1847755 () Bool)

(assert (= bs!1390502 (and d!1847755 d!1847631)))

(declare-fun lambda!321437 () Int)

(assert (=> bs!1390502 (= lambda!321437 lambda!321396)))

(declare-fun bs!1390503 () Bool)

(assert (= bs!1390503 (and d!1847755 d!1847753)))

(assert (=> bs!1390503 (= lambda!321437 lambda!321434)))

(declare-fun b!5886179 () Bool)

(declare-fun e!3606736 () Bool)

(declare-fun e!3606735 () Bool)

(assert (=> b!5886179 (= e!3606736 e!3606735)))

(declare-fun c!1045257 () Bool)

(declare-fun isEmpty!35854 (List!64116) Bool)

(assert (=> b!5886179 (= c!1045257 (isEmpty!35854 (unfocusZipperList!1360 zl!343)))))

(declare-fun b!5886180 () Bool)

(declare-fun e!3606733 () Regex!15939)

(assert (=> b!5886180 (= e!3606733 (Union!15939 (h!70440 (unfocusZipperList!1360 zl!343)) (generalisedUnion!1783 (t!377497 (unfocusZipperList!1360 zl!343)))))))

(declare-fun b!5886181 () Bool)

(declare-fun e!3606737 () Regex!15939)

(assert (=> b!5886181 (= e!3606737 (h!70440 (unfocusZipperList!1360 zl!343)))))

(declare-fun b!5886182 () Bool)

(assert (=> b!5886182 (= e!3606737 e!3606733)))

(declare-fun c!1045260 () Bool)

(assert (=> b!5886182 (= c!1045260 ((_ is Cons!63992) (unfocusZipperList!1360 zl!343)))))

(assert (=> d!1847755 e!3606736))

(declare-fun res!2472379 () Bool)

(assert (=> d!1847755 (=> (not res!2472379) (not e!3606736))))

(declare-fun lt!2307285 () Regex!15939)

(assert (=> d!1847755 (= res!2472379 (validRegex!7675 lt!2307285))))

(assert (=> d!1847755 (= lt!2307285 e!3606737)))

(declare-fun c!1045258 () Bool)

(declare-fun e!3606734 () Bool)

(assert (=> d!1847755 (= c!1045258 e!3606734)))

(declare-fun res!2472378 () Bool)

(assert (=> d!1847755 (=> (not res!2472378) (not e!3606734))))

(assert (=> d!1847755 (= res!2472378 ((_ is Cons!63992) (unfocusZipperList!1360 zl!343)))))

(assert (=> d!1847755 (forall!15026 (unfocusZipperList!1360 zl!343) lambda!321437)))

(assert (=> d!1847755 (= (generalisedUnion!1783 (unfocusZipperList!1360 zl!343)) lt!2307285)))

(declare-fun b!5886183 () Bool)

(assert (=> b!5886183 (= e!3606733 EmptyLang!15939)))

(declare-fun b!5886184 () Bool)

(declare-fun e!3606732 () Bool)

(declare-fun isUnion!812 (Regex!15939) Bool)

(assert (=> b!5886184 (= e!3606732 (isUnion!812 lt!2307285))))

(declare-fun b!5886185 () Bool)

(assert (=> b!5886185 (= e!3606734 (isEmpty!35854 (t!377497 (unfocusZipperList!1360 zl!343))))))

(declare-fun b!5886186 () Bool)

(declare-fun head!12433 (List!64116) Regex!15939)

(assert (=> b!5886186 (= e!3606732 (= lt!2307285 (head!12433 (unfocusZipperList!1360 zl!343))))))

(declare-fun b!5886187 () Bool)

(assert (=> b!5886187 (= e!3606735 e!3606732)))

(declare-fun c!1045259 () Bool)

(declare-fun tail!11518 (List!64116) List!64116)

(assert (=> b!5886187 (= c!1045259 (isEmpty!35854 (tail!11518 (unfocusZipperList!1360 zl!343))))))

(declare-fun b!5886188 () Bool)

(declare-fun isEmptyLang!1382 (Regex!15939) Bool)

(assert (=> b!5886188 (= e!3606735 (isEmptyLang!1382 lt!2307285))))

(assert (= (and d!1847755 res!2472378) b!5886185))

(assert (= (and d!1847755 c!1045258) b!5886181))

(assert (= (and d!1847755 (not c!1045258)) b!5886182))

(assert (= (and b!5886182 c!1045260) b!5886180))

(assert (= (and b!5886182 (not c!1045260)) b!5886183))

(assert (= (and d!1847755 res!2472379) b!5886179))

(assert (= (and b!5886179 c!1045257) b!5886188))

(assert (= (and b!5886179 (not c!1045257)) b!5886187))

(assert (= (and b!5886187 c!1045259) b!5886186))

(assert (= (and b!5886187 (not c!1045259)) b!5886184))

(declare-fun m!6794826 () Bool)

(assert (=> d!1847755 m!6794826))

(assert (=> d!1847755 m!6794432))

(declare-fun m!6794828 () Bool)

(assert (=> d!1847755 m!6794828))

(declare-fun m!6794830 () Bool)

(assert (=> b!5886180 m!6794830))

(declare-fun m!6794832 () Bool)

(assert (=> b!5886185 m!6794832))

(assert (=> b!5886186 m!6794432))

(declare-fun m!6794834 () Bool)

(assert (=> b!5886186 m!6794834))

(assert (=> b!5886187 m!6794432))

(declare-fun m!6794836 () Bool)

(assert (=> b!5886187 m!6794836))

(assert (=> b!5886187 m!6794836))

(declare-fun m!6794838 () Bool)

(assert (=> b!5886187 m!6794838))

(assert (=> b!5886179 m!6794432))

(declare-fun m!6794840 () Bool)

(assert (=> b!5886179 m!6794840))

(declare-fun m!6794842 () Bool)

(assert (=> b!5886184 m!6794842))

(declare-fun m!6794844 () Bool)

(assert (=> b!5886188 m!6794844))

(assert (=> b!5885561 d!1847755))

(declare-fun bs!1390504 () Bool)

(declare-fun d!1847757 () Bool)

(assert (= bs!1390504 (and d!1847757 d!1847631)))

(declare-fun lambda!321440 () Int)

(assert (=> bs!1390504 (= lambda!321440 lambda!321396)))

(declare-fun bs!1390505 () Bool)

(assert (= bs!1390505 (and d!1847757 d!1847753)))

(assert (=> bs!1390505 (= lambda!321440 lambda!321434)))

(declare-fun bs!1390506 () Bool)

(assert (= bs!1390506 (and d!1847757 d!1847755)))

(assert (=> bs!1390506 (= lambda!321440 lambda!321437)))

(declare-fun lt!2307288 () List!64116)

(assert (=> d!1847757 (forall!15026 lt!2307288 lambda!321440)))

(declare-fun e!3606740 () List!64116)

(assert (=> d!1847757 (= lt!2307288 e!3606740)))

(declare-fun c!1045263 () Bool)

(assert (=> d!1847757 (= c!1045263 ((_ is Cons!63994) zl!343))))

(assert (=> d!1847757 (= (unfocusZipperList!1360 zl!343) lt!2307288)))

(declare-fun b!5886193 () Bool)

(assert (=> b!5886193 (= e!3606740 (Cons!63992 (generalisedConcat!1536 (exprs!5823 (h!70442 zl!343))) (unfocusZipperList!1360 (t!377499 zl!343))))))

(declare-fun b!5886194 () Bool)

(assert (=> b!5886194 (= e!3606740 Nil!63992)))

(assert (= (and d!1847757 c!1045263) b!5886193))

(assert (= (and d!1847757 (not c!1045263)) b!5886194))

(declare-fun m!6794846 () Bool)

(assert (=> d!1847757 m!6794846))

(assert (=> b!5886193 m!6794464))

(declare-fun m!6794848 () Bool)

(assert (=> b!5886193 m!6794848))

(assert (=> b!5885561 d!1847757))

(declare-fun d!1847759 () Bool)

(assert (=> d!1847759 (= (isEmpty!35850 (t!377499 zl!343)) ((_ is Nil!63994) (t!377499 zl!343)))))

(assert (=> b!5885550 d!1847759))

(declare-fun bs!1390507 () Bool)

(declare-fun d!1847761 () Bool)

(assert (= bs!1390507 (and d!1847761 d!1847631)))

(declare-fun lambda!321441 () Int)

(assert (=> bs!1390507 (= lambda!321441 lambda!321396)))

(declare-fun bs!1390508 () Bool)

(assert (= bs!1390508 (and d!1847761 d!1847753)))

(assert (=> bs!1390508 (= lambda!321441 lambda!321434)))

(declare-fun bs!1390509 () Bool)

(assert (= bs!1390509 (and d!1847761 d!1847755)))

(assert (=> bs!1390509 (= lambda!321441 lambda!321437)))

(declare-fun bs!1390510 () Bool)

(assert (= bs!1390510 (and d!1847761 d!1847757)))

(assert (=> bs!1390510 (= lambda!321441 lambda!321440)))

(assert (=> d!1847761 (= (inv!83094 setElem!39905) (forall!15026 (exprs!5823 setElem!39905) lambda!321441))))

(declare-fun bs!1390511 () Bool)

(assert (= bs!1390511 d!1847761))

(declare-fun m!6794850 () Bool)

(assert (=> bs!1390511 m!6794850))

(assert (=> setNonEmpty!39905 d!1847761))

(declare-fun d!1847763 () Bool)

(declare-fun c!1045264 () Bool)

(assert (=> d!1847763 (= c!1045264 (isEmpty!35852 s!2326))))

(declare-fun e!3606741 () Bool)

(assert (=> d!1847763 (= (matchZipper!2005 lt!2307201 s!2326) e!3606741)))

(declare-fun b!5886195 () Bool)

(assert (=> b!5886195 (= e!3606741 (nullableZipper!1777 lt!2307201))))

(declare-fun b!5886196 () Bool)

(assert (=> b!5886196 (= e!3606741 (matchZipper!2005 (derivationStepZipper!1938 lt!2307201 (head!12431 s!2326)) (tail!11516 s!2326)))))

(assert (= (and d!1847763 c!1045264) b!5886195))

(assert (= (and d!1847763 (not c!1045264)) b!5886196))

(assert (=> d!1847763 m!6794582))

(declare-fun m!6794852 () Bool)

(assert (=> b!5886195 m!6794852))

(assert (=> b!5886196 m!6794666))

(assert (=> b!5886196 m!6794666))

(declare-fun m!6794854 () Bool)

(assert (=> b!5886196 m!6794854))

(assert (=> b!5886196 m!6794662))

(assert (=> b!5886196 m!6794854))

(assert (=> b!5886196 m!6794662))

(declare-fun m!6794856 () Bool)

(assert (=> b!5886196 m!6794856))

(assert (=> b!5885555 d!1847763))

(declare-fun d!1847765 () Bool)

(declare-fun c!1045270 () Bool)

(declare-fun e!3606748 () Bool)

(assert (=> d!1847765 (= c!1045270 e!3606748)))

(declare-fun res!2472382 () Bool)

(assert (=> d!1847765 (=> (not res!2472382) (not e!3606748))))

(assert (=> d!1847765 (= res!2472382 ((_ is Cons!63992) (exprs!5823 lt!2307214)))))

(declare-fun e!3606749 () (InoxSet Context!10646))

(assert (=> d!1847765 (= (derivationStepZipperUp!1131 lt!2307214 (h!70441 s!2326)) e!3606749)))

(declare-fun b!5886207 () Bool)

(assert (=> b!5886207 (= e!3606748 (nullable!5939 (h!70440 (exprs!5823 lt!2307214))))))

(declare-fun bm!464156 () Bool)

(declare-fun call!464161 () (InoxSet Context!10646))

(assert (=> bm!464156 (= call!464161 (derivationStepZipperDown!1205 (h!70440 (exprs!5823 lt!2307214)) (Context!10647 (t!377497 (exprs!5823 lt!2307214))) (h!70441 s!2326)))))

(declare-fun b!5886208 () Bool)

(assert (=> b!5886208 (= e!3606749 ((_ map or) call!464161 (derivationStepZipperUp!1131 (Context!10647 (t!377497 (exprs!5823 lt!2307214))) (h!70441 s!2326))))))

(declare-fun b!5886209 () Bool)

(declare-fun e!3606750 () (InoxSet Context!10646))

(assert (=> b!5886209 (= e!3606750 ((as const (Array Context!10646 Bool)) false))))

(declare-fun b!5886210 () Bool)

(assert (=> b!5886210 (= e!3606749 e!3606750)))

(declare-fun c!1045269 () Bool)

(assert (=> b!5886210 (= c!1045269 ((_ is Cons!63992) (exprs!5823 lt!2307214)))))

(declare-fun b!5886211 () Bool)

(assert (=> b!5886211 (= e!3606750 call!464161)))

(assert (= (and d!1847765 res!2472382) b!5886207))

(assert (= (and d!1847765 c!1045270) b!5886208))

(assert (= (and d!1847765 (not c!1045270)) b!5886210))

(assert (= (and b!5886210 c!1045269) b!5886211))

(assert (= (and b!5886210 (not c!1045269)) b!5886209))

(assert (= (or b!5886208 b!5886211) bm!464156))

(declare-fun m!6794858 () Bool)

(assert (=> b!5886207 m!6794858))

(declare-fun m!6794860 () Bool)

(assert (=> bm!464156 m!6794860))

(declare-fun m!6794862 () Bool)

(assert (=> b!5886208 m!6794862))

(assert (=> b!5885555 d!1847765))

(declare-fun d!1847767 () Bool)

(declare-fun c!1045272 () Bool)

(declare-fun e!3606751 () Bool)

(assert (=> d!1847767 (= c!1045272 e!3606751)))

(declare-fun res!2472383 () Bool)

(assert (=> d!1847767 (=> (not res!2472383) (not e!3606751))))

(assert (=> d!1847767 (= res!2472383 ((_ is Cons!63992) (exprs!5823 lt!2307204)))))

(declare-fun e!3606752 () (InoxSet Context!10646))

(assert (=> d!1847767 (= (derivationStepZipperUp!1131 lt!2307204 (h!70441 s!2326)) e!3606752)))

(declare-fun b!5886212 () Bool)

(assert (=> b!5886212 (= e!3606751 (nullable!5939 (h!70440 (exprs!5823 lt!2307204))))))

(declare-fun bm!464157 () Bool)

(declare-fun call!464162 () (InoxSet Context!10646))

(assert (=> bm!464157 (= call!464162 (derivationStepZipperDown!1205 (h!70440 (exprs!5823 lt!2307204)) (Context!10647 (t!377497 (exprs!5823 lt!2307204))) (h!70441 s!2326)))))

(declare-fun b!5886213 () Bool)

(assert (=> b!5886213 (= e!3606752 ((_ map or) call!464162 (derivationStepZipperUp!1131 (Context!10647 (t!377497 (exprs!5823 lt!2307204))) (h!70441 s!2326))))))

(declare-fun b!5886214 () Bool)

(declare-fun e!3606753 () (InoxSet Context!10646))

(assert (=> b!5886214 (= e!3606753 ((as const (Array Context!10646 Bool)) false))))

(declare-fun b!5886215 () Bool)

(assert (=> b!5886215 (= e!3606752 e!3606753)))

(declare-fun c!1045271 () Bool)

(assert (=> b!5886215 (= c!1045271 ((_ is Cons!63992) (exprs!5823 lt!2307204)))))

(declare-fun b!5886216 () Bool)

(assert (=> b!5886216 (= e!3606753 call!464162)))

(assert (= (and d!1847767 res!2472383) b!5886212))

(assert (= (and d!1847767 c!1045272) b!5886213))

(assert (= (and d!1847767 (not c!1045272)) b!5886215))

(assert (= (and b!5886215 c!1045271) b!5886216))

(assert (= (and b!5886215 (not c!1045271)) b!5886214))

(assert (= (or b!5886213 b!5886216) bm!464157))

(declare-fun m!6794864 () Bool)

(assert (=> b!5886212 m!6794864))

(declare-fun m!6794866 () Bool)

(assert (=> bm!464157 m!6794866))

(declare-fun m!6794868 () Bool)

(assert (=> b!5886213 m!6794868))

(assert (=> b!5885555 d!1847767))

(declare-fun d!1847769 () Bool)

(declare-fun choose!44509 ((InoxSet Context!10646) Int) (InoxSet Context!10646))

(assert (=> d!1847769 (= (flatMap!1470 lt!2307222 lambda!321393) (choose!44509 lt!2307222 lambda!321393))))

(declare-fun bs!1390512 () Bool)

(assert (= bs!1390512 d!1847769))

(declare-fun m!6794870 () Bool)

(assert (=> bs!1390512 m!6794870))

(assert (=> b!5885555 d!1847769))

(declare-fun d!1847771 () Bool)

(assert (=> d!1847771 (= (flatMap!1470 lt!2307201 lambda!321393) (choose!44509 lt!2307201 lambda!321393))))

(declare-fun bs!1390513 () Bool)

(assert (= bs!1390513 d!1847771))

(declare-fun m!6794872 () Bool)

(assert (=> bs!1390513 m!6794872))

(assert (=> b!5885555 d!1847771))

(declare-fun d!1847773 () Bool)

(declare-fun dynLambda!25031 (Int Context!10646) (InoxSet Context!10646))

(assert (=> d!1847773 (= (flatMap!1470 lt!2307201 lambda!321393) (dynLambda!25031 lambda!321393 lt!2307214))))

(declare-fun lt!2307291 () Unit!157149)

(declare-fun choose!44510 ((InoxSet Context!10646) Context!10646 Int) Unit!157149)

(assert (=> d!1847773 (= lt!2307291 (choose!44510 lt!2307201 lt!2307214 lambda!321393))))

(assert (=> d!1847773 (= lt!2307201 (store ((as const (Array Context!10646 Bool)) false) lt!2307214 true))))

(assert (=> d!1847773 (= (lemmaFlatMapOnSingletonSet!998 lt!2307201 lt!2307214 lambda!321393) lt!2307291)))

(declare-fun b_lambda!221425 () Bool)

(assert (=> (not b_lambda!221425) (not d!1847773)))

(declare-fun bs!1390514 () Bool)

(assert (= bs!1390514 d!1847773))

(assert (=> bs!1390514 m!6794446))

(declare-fun m!6794874 () Bool)

(assert (=> bs!1390514 m!6794874))

(declare-fun m!6794876 () Bool)

(assert (=> bs!1390514 m!6794876))

(assert (=> bs!1390514 m!6794452))

(assert (=> b!5885555 d!1847773))

(declare-fun d!1847775 () Bool)

(assert (=> d!1847775 (= (flatMap!1470 lt!2307222 lambda!321393) (dynLambda!25031 lambda!321393 lt!2307204))))

(declare-fun lt!2307292 () Unit!157149)

(assert (=> d!1847775 (= lt!2307292 (choose!44510 lt!2307222 lt!2307204 lambda!321393))))

(assert (=> d!1847775 (= lt!2307222 (store ((as const (Array Context!10646 Bool)) false) lt!2307204 true))))

(assert (=> d!1847775 (= (lemmaFlatMapOnSingletonSet!998 lt!2307222 lt!2307204 lambda!321393) lt!2307292)))

(declare-fun b_lambda!221427 () Bool)

(assert (=> (not b_lambda!221427) (not d!1847775)))

(declare-fun bs!1390515 () Bool)

(assert (= bs!1390515 d!1847775))

(assert (=> bs!1390515 m!6794442))

(declare-fun m!6794878 () Bool)

(assert (=> bs!1390515 m!6794878))

(declare-fun m!6794880 () Bool)

(assert (=> bs!1390515 m!6794880))

(assert (=> bs!1390515 m!6794444))

(assert (=> b!5885555 d!1847775))

(declare-fun b!5886235 () Bool)

(declare-fun e!3606772 () Bool)

(declare-fun e!3606771 () Bool)

(assert (=> b!5886235 (= e!3606772 e!3606771)))

(declare-fun res!2472397 () Bool)

(assert (=> b!5886235 (= res!2472397 (not (nullable!5939 (reg!16268 r!7292))))))

(assert (=> b!5886235 (=> (not res!2472397) (not e!3606771))))

(declare-fun b!5886236 () Bool)

(declare-fun e!3606773 () Bool)

(declare-fun e!3606768 () Bool)

(assert (=> b!5886236 (= e!3606773 e!3606768)))

(declare-fun res!2472394 () Bool)

(assert (=> b!5886236 (=> (not res!2472394) (not e!3606768))))

(declare-fun call!464169 () Bool)

(assert (=> b!5886236 (= res!2472394 call!464169)))

(declare-fun bm!464164 () Bool)

(declare-fun c!1045278 () Bool)

(assert (=> bm!464164 (= call!464169 (validRegex!7675 (ite c!1045278 (regOne!32391 r!7292) (regOne!32390 r!7292))))))

(declare-fun d!1847777 () Bool)

(declare-fun res!2472396 () Bool)

(declare-fun e!3606774 () Bool)

(assert (=> d!1847777 (=> res!2472396 e!3606774)))

(assert (=> d!1847777 (= res!2472396 ((_ is ElementMatch!15939) r!7292))))

(assert (=> d!1847777 (= (validRegex!7675 r!7292) e!3606774)))

(declare-fun b!5886237 () Bool)

(declare-fun e!3606769 () Bool)

(declare-fun call!464171 () Bool)

(assert (=> b!5886237 (= e!3606769 call!464171)))

(declare-fun b!5886238 () Bool)

(assert (=> b!5886238 (= e!3606774 e!3606772)))

(declare-fun c!1045277 () Bool)

(assert (=> b!5886238 (= c!1045277 ((_ is Star!15939) r!7292))))

(declare-fun b!5886239 () Bool)

(declare-fun res!2472398 () Bool)

(assert (=> b!5886239 (=> (not res!2472398) (not e!3606769))))

(assert (=> b!5886239 (= res!2472398 call!464169)))

(declare-fun e!3606770 () Bool)

(assert (=> b!5886239 (= e!3606770 e!3606769)))

(declare-fun b!5886240 () Bool)

(assert (=> b!5886240 (= e!3606768 call!464171)))

(declare-fun b!5886241 () Bool)

(declare-fun res!2472395 () Bool)

(assert (=> b!5886241 (=> res!2472395 e!3606773)))

(assert (=> b!5886241 (= res!2472395 (not ((_ is Concat!24784) r!7292)))))

(assert (=> b!5886241 (= e!3606770 e!3606773)))

(declare-fun b!5886242 () Bool)

(assert (=> b!5886242 (= e!3606772 e!3606770)))

(assert (=> b!5886242 (= c!1045278 ((_ is Union!15939) r!7292))))

(declare-fun call!464170 () Bool)

(declare-fun bm!464165 () Bool)

(assert (=> bm!464165 (= call!464170 (validRegex!7675 (ite c!1045277 (reg!16268 r!7292) (ite c!1045278 (regTwo!32391 r!7292) (regTwo!32390 r!7292)))))))

(declare-fun bm!464166 () Bool)

(assert (=> bm!464166 (= call!464171 call!464170)))

(declare-fun b!5886243 () Bool)

(assert (=> b!5886243 (= e!3606771 call!464170)))

(assert (= (and d!1847777 (not res!2472396)) b!5886238))

(assert (= (and b!5886238 c!1045277) b!5886235))

(assert (= (and b!5886238 (not c!1045277)) b!5886242))

(assert (= (and b!5886235 res!2472397) b!5886243))

(assert (= (and b!5886242 c!1045278) b!5886239))

(assert (= (and b!5886242 (not c!1045278)) b!5886241))

(assert (= (and b!5886239 res!2472398) b!5886237))

(assert (= (and b!5886241 (not res!2472395)) b!5886236))

(assert (= (and b!5886236 res!2472394) b!5886240))

(assert (= (or b!5886237 b!5886240) bm!464166))

(assert (= (or b!5886239 b!5886236) bm!464164))

(assert (= (or b!5886243 bm!464166) bm!464165))

(declare-fun m!6794882 () Bool)

(assert (=> b!5886235 m!6794882))

(declare-fun m!6794884 () Bool)

(assert (=> bm!464164 m!6794884))

(declare-fun m!6794886 () Bool)

(assert (=> bm!464165 m!6794886))

(assert (=> start!600340 d!1847777))

(declare-fun bs!1390516 () Bool)

(declare-fun d!1847779 () Bool)

(assert (= bs!1390516 (and d!1847779 b!5885544)))

(declare-fun lambda!321444 () Int)

(assert (=> bs!1390516 (= lambda!321444 lambda!321393)))

(assert (=> d!1847779 true))

(assert (=> d!1847779 (= (derivationStepZipper!1938 z!1189 (h!70441 s!2326)) (flatMap!1470 z!1189 lambda!321444))))

(declare-fun bs!1390517 () Bool)

(assert (= bs!1390517 d!1847779))

(declare-fun m!6794888 () Bool)

(assert (=> bs!1390517 m!6794888))

(assert (=> b!5885544 d!1847779))

(declare-fun d!1847781 () Bool)

(assert (=> d!1847781 (= (flatMap!1470 z!1189 lambda!321393) (choose!44509 z!1189 lambda!321393))))

(declare-fun bs!1390518 () Bool)

(assert (= bs!1390518 d!1847781))

(declare-fun m!6794890 () Bool)

(assert (=> bs!1390518 m!6794890))

(assert (=> b!5885544 d!1847781))

(declare-fun d!1847783 () Bool)

(declare-fun c!1045282 () Bool)

(declare-fun e!3606775 () Bool)

(assert (=> d!1847783 (= c!1045282 e!3606775)))

(declare-fun res!2472399 () Bool)

(assert (=> d!1847783 (=> (not res!2472399) (not e!3606775))))

(assert (=> d!1847783 (= res!2472399 ((_ is Cons!63992) (exprs!5823 (h!70442 zl!343))))))

(declare-fun e!3606776 () (InoxSet Context!10646))

(assert (=> d!1847783 (= (derivationStepZipperUp!1131 (h!70442 zl!343) (h!70441 s!2326)) e!3606776)))

(declare-fun b!5886246 () Bool)

(assert (=> b!5886246 (= e!3606775 (nullable!5939 (h!70440 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun bm!464167 () Bool)

(declare-fun call!464172 () (InoxSet Context!10646))

(assert (=> bm!464167 (= call!464172 (derivationStepZipperDown!1205 (h!70440 (exprs!5823 (h!70442 zl!343))) (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343)))) (h!70441 s!2326)))))

(declare-fun b!5886247 () Bool)

(assert (=> b!5886247 (= e!3606776 ((_ map or) call!464172 (derivationStepZipperUp!1131 (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343)))) (h!70441 s!2326))))))

(declare-fun b!5886248 () Bool)

(declare-fun e!3606777 () (InoxSet Context!10646))

(assert (=> b!5886248 (= e!3606777 ((as const (Array Context!10646 Bool)) false))))

(declare-fun b!5886249 () Bool)

(assert (=> b!5886249 (= e!3606776 e!3606777)))

(declare-fun c!1045281 () Bool)

(assert (=> b!5886249 (= c!1045281 ((_ is Cons!63992) (exprs!5823 (h!70442 zl!343))))))

(declare-fun b!5886250 () Bool)

(assert (=> b!5886250 (= e!3606777 call!464172)))

(assert (= (and d!1847783 res!2472399) b!5886246))

(assert (= (and d!1847783 c!1045282) b!5886247))

(assert (= (and d!1847783 (not c!1045282)) b!5886249))

(assert (= (and b!5886249 c!1045281) b!5886250))

(assert (= (and b!5886249 (not c!1045281)) b!5886248))

(assert (= (or b!5886247 b!5886250) bm!464167))

(declare-fun m!6794892 () Bool)

(assert (=> b!5886246 m!6794892))

(declare-fun m!6794894 () Bool)

(assert (=> bm!464167 m!6794894))

(declare-fun m!6794896 () Bool)

(assert (=> b!5886247 m!6794896))

(assert (=> b!5885544 d!1847783))

(declare-fun d!1847785 () Bool)

(assert (=> d!1847785 (= (flatMap!1470 z!1189 lambda!321393) (dynLambda!25031 lambda!321393 (h!70442 zl!343)))))

(declare-fun lt!2307293 () Unit!157149)

(assert (=> d!1847785 (= lt!2307293 (choose!44510 z!1189 (h!70442 zl!343) lambda!321393))))

(assert (=> d!1847785 (= z!1189 (store ((as const (Array Context!10646 Bool)) false) (h!70442 zl!343) true))))

(assert (=> d!1847785 (= (lemmaFlatMapOnSingletonSet!998 z!1189 (h!70442 zl!343) lambda!321393) lt!2307293)))

(declare-fun b_lambda!221429 () Bool)

(assert (=> (not b_lambda!221429) (not d!1847785)))

(declare-fun bs!1390519 () Bool)

(assert (= bs!1390519 d!1847785))

(assert (=> bs!1390519 m!6794476))

(declare-fun m!6794898 () Bool)

(assert (=> bs!1390519 m!6794898))

(declare-fun m!6794900 () Bool)

(assert (=> bs!1390519 m!6794900))

(declare-fun m!6794902 () Bool)

(assert (=> bs!1390519 m!6794902))

(assert (=> b!5885544 d!1847785))

(declare-fun d!1847787 () Bool)

(declare-fun c!1045283 () Bool)

(assert (=> d!1847787 (= c!1045283 (isEmpty!35852 (t!377498 s!2326)))))

(declare-fun e!3606778 () Bool)

(assert (=> d!1847787 (= (matchZipper!2005 lt!2307209 (t!377498 s!2326)) e!3606778)))

(declare-fun b!5886251 () Bool)

(assert (=> b!5886251 (= e!3606778 (nullableZipper!1777 lt!2307209))))

(declare-fun b!5886252 () Bool)

(assert (=> b!5886252 (= e!3606778 (matchZipper!2005 (derivationStepZipper!1938 lt!2307209 (head!12431 (t!377498 s!2326))) (tail!11516 (t!377498 s!2326))))))

(assert (= (and d!1847787 c!1045283) b!5886251))

(assert (= (and d!1847787 (not c!1045283)) b!5886252))

(assert (=> d!1847787 m!6794482))

(declare-fun m!6794904 () Bool)

(assert (=> b!5886251 m!6794904))

(assert (=> b!5886252 m!6794486))

(assert (=> b!5886252 m!6794486))

(declare-fun m!6794906 () Bool)

(assert (=> b!5886252 m!6794906))

(assert (=> b!5886252 m!6794490))

(assert (=> b!5886252 m!6794906))

(assert (=> b!5886252 m!6794490))

(declare-fun m!6794908 () Bool)

(assert (=> b!5886252 m!6794908))

(assert (=> b!5885553 d!1847787))

(declare-fun d!1847789 () Bool)

(declare-fun e!3606781 () Bool)

(assert (=> d!1847789 (= (matchZipper!2005 ((_ map or) lt!2307209 lt!2307223) (t!377498 s!2326)) e!3606781)))

(declare-fun res!2472402 () Bool)

(assert (=> d!1847789 (=> res!2472402 e!3606781)))

(assert (=> d!1847789 (= res!2472402 (matchZipper!2005 lt!2307209 (t!377498 s!2326)))))

(declare-fun lt!2307296 () Unit!157149)

(declare-fun choose!44511 ((InoxSet Context!10646) (InoxSet Context!10646) List!64117) Unit!157149)

(assert (=> d!1847789 (= lt!2307296 (choose!44511 lt!2307209 lt!2307223 (t!377498 s!2326)))))

(assert (=> d!1847789 (= (lemmaZipperConcatMatchesSameAsBothZippers!840 lt!2307209 lt!2307223 (t!377498 s!2326)) lt!2307296)))

(declare-fun b!5886255 () Bool)

(assert (=> b!5886255 (= e!3606781 (matchZipper!2005 lt!2307223 (t!377498 s!2326)))))

(assert (= (and d!1847789 (not res!2472402)) b!5886255))

(declare-fun m!6794910 () Bool)

(assert (=> d!1847789 m!6794910))

(assert (=> d!1847789 m!6794466))

(declare-fun m!6794912 () Bool)

(assert (=> d!1847789 m!6794912))

(assert (=> b!5886255 m!6794418))

(assert (=> b!5885553 d!1847789))

(assert (=> b!5885542 d!1847629))

(declare-fun d!1847791 () Bool)

(declare-fun c!1045284 () Bool)

(assert (=> d!1847791 (= c!1045284 (isEmpty!35852 s!2326))))

(declare-fun e!3606782 () Bool)

(assert (=> d!1847791 (= (matchZipper!2005 lt!2307222 s!2326) e!3606782)))

(declare-fun b!5886256 () Bool)

(assert (=> b!5886256 (= e!3606782 (nullableZipper!1777 lt!2307222))))

(declare-fun b!5886257 () Bool)

(assert (=> b!5886257 (= e!3606782 (matchZipper!2005 (derivationStepZipper!1938 lt!2307222 (head!12431 s!2326)) (tail!11516 s!2326)))))

(assert (= (and d!1847791 c!1045284) b!5886256))

(assert (= (and d!1847791 (not c!1045284)) b!5886257))

(assert (=> d!1847791 m!6794582))

(declare-fun m!6794914 () Bool)

(assert (=> b!5886256 m!6794914))

(assert (=> b!5886257 m!6794666))

(assert (=> b!5886257 m!6794666))

(declare-fun m!6794916 () Bool)

(assert (=> b!5886257 m!6794916))

(assert (=> b!5886257 m!6794662))

(assert (=> b!5886257 m!6794916))

(assert (=> b!5886257 m!6794662))

(declare-fun m!6794918 () Bool)

(assert (=> b!5886257 m!6794918))

(assert (=> b!5885542 d!1847791))

(declare-fun bs!1390520 () Bool)

(declare-fun d!1847793 () Bool)

(assert (= bs!1390520 (and d!1847793 d!1847757)))

(declare-fun lambda!321447 () Int)

(assert (=> bs!1390520 (= lambda!321447 lambda!321440)))

(declare-fun bs!1390521 () Bool)

(assert (= bs!1390521 (and d!1847793 d!1847755)))

(assert (=> bs!1390521 (= lambda!321447 lambda!321437)))

(declare-fun bs!1390522 () Bool)

(assert (= bs!1390522 (and d!1847793 d!1847761)))

(assert (=> bs!1390522 (= lambda!321447 lambda!321441)))

(declare-fun bs!1390523 () Bool)

(assert (= bs!1390523 (and d!1847793 d!1847631)))

(assert (=> bs!1390523 (= lambda!321447 lambda!321396)))

(declare-fun bs!1390524 () Bool)

(assert (= bs!1390524 (and d!1847793 d!1847753)))

(assert (=> bs!1390524 (= lambda!321447 lambda!321434)))

(declare-fun e!3606796 () Bool)

(assert (=> d!1847793 e!3606796))

(declare-fun res!2472407 () Bool)

(assert (=> d!1847793 (=> (not res!2472407) (not e!3606796))))

(declare-fun lt!2307299 () Regex!15939)

(assert (=> d!1847793 (= res!2472407 (validRegex!7675 lt!2307299))))

(declare-fun e!3606800 () Regex!15939)

(assert (=> d!1847793 (= lt!2307299 e!3606800)))

(declare-fun c!1045293 () Bool)

(declare-fun e!3606797 () Bool)

(assert (=> d!1847793 (= c!1045293 e!3606797)))

(declare-fun res!2472408 () Bool)

(assert (=> d!1847793 (=> (not res!2472408) (not e!3606797))))

(assert (=> d!1847793 (= res!2472408 ((_ is Cons!63992) (exprs!5823 (h!70442 zl!343))))))

(assert (=> d!1847793 (forall!15026 (exprs!5823 (h!70442 zl!343)) lambda!321447)))

(assert (=> d!1847793 (= (generalisedConcat!1536 (exprs!5823 (h!70442 zl!343))) lt!2307299)))

(declare-fun b!5886278 () Bool)

(declare-fun e!3606799 () Regex!15939)

(assert (=> b!5886278 (= e!3606799 EmptyExpr!15939)))

(declare-fun b!5886279 () Bool)

(assert (=> b!5886279 (= e!3606797 (isEmpty!35854 (t!377497 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun b!5886280 () Bool)

(declare-fun e!3606798 () Bool)

(assert (=> b!5886280 (= e!3606798 (= lt!2307299 (head!12433 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun b!5886281 () Bool)

(declare-fun isConcat!897 (Regex!15939) Bool)

(assert (=> b!5886281 (= e!3606798 (isConcat!897 lt!2307299))))

(declare-fun b!5886282 () Bool)

(assert (=> b!5886282 (= e!3606799 (Concat!24784 (h!70440 (exprs!5823 (h!70442 zl!343))) (generalisedConcat!1536 (t!377497 (exprs!5823 (h!70442 zl!343))))))))

(declare-fun b!5886283 () Bool)

(declare-fun e!3606795 () Bool)

(assert (=> b!5886283 (= e!3606795 e!3606798)))

(declare-fun c!1045296 () Bool)

(assert (=> b!5886283 (= c!1045296 (isEmpty!35854 (tail!11518 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun b!5886284 () Bool)

(assert (=> b!5886284 (= e!3606800 (h!70440 (exprs!5823 (h!70442 zl!343))))))

(declare-fun b!5886285 () Bool)

(declare-fun isEmptyExpr!1374 (Regex!15939) Bool)

(assert (=> b!5886285 (= e!3606795 (isEmptyExpr!1374 lt!2307299))))

(declare-fun b!5886286 () Bool)

(assert (=> b!5886286 (= e!3606800 e!3606799)))

(declare-fun c!1045295 () Bool)

(assert (=> b!5886286 (= c!1045295 ((_ is Cons!63992) (exprs!5823 (h!70442 zl!343))))))

(declare-fun b!5886287 () Bool)

(assert (=> b!5886287 (= e!3606796 e!3606795)))

(declare-fun c!1045294 () Bool)

(assert (=> b!5886287 (= c!1045294 (isEmpty!35854 (exprs!5823 (h!70442 zl!343))))))

(assert (= (and d!1847793 res!2472408) b!5886279))

(assert (= (and d!1847793 c!1045293) b!5886284))

(assert (= (and d!1847793 (not c!1045293)) b!5886286))

(assert (= (and b!5886286 c!1045295) b!5886282))

(assert (= (and b!5886286 (not c!1045295)) b!5886278))

(assert (= (and d!1847793 res!2472407) b!5886287))

(assert (= (and b!5886287 c!1045294) b!5886285))

(assert (= (and b!5886287 (not c!1045294)) b!5886283))

(assert (= (and b!5886283 c!1045296) b!5886280))

(assert (= (and b!5886283 (not c!1045296)) b!5886281))

(declare-fun m!6794920 () Bool)

(assert (=> b!5886280 m!6794920))

(declare-fun m!6794922 () Bool)

(assert (=> b!5886279 m!6794922))

(declare-fun m!6794924 () Bool)

(assert (=> d!1847793 m!6794924))

(declare-fun m!6794926 () Bool)

(assert (=> d!1847793 m!6794926))

(declare-fun m!6794928 () Bool)

(assert (=> b!5886282 m!6794928))

(declare-fun m!6794930 () Bool)

(assert (=> b!5886281 m!6794930))

(declare-fun m!6794932 () Bool)

(assert (=> b!5886287 m!6794932))

(declare-fun m!6794934 () Bool)

(assert (=> b!5886283 m!6794934))

(assert (=> b!5886283 m!6794934))

(declare-fun m!6794936 () Bool)

(assert (=> b!5886283 m!6794936))

(declare-fun m!6794938 () Bool)

(assert (=> b!5886285 m!6794938))

(assert (=> b!5885543 d!1847793))

(declare-fun bm!464168 () Bool)

(declare-fun call!464176 () (InoxSet Context!10646))

(declare-fun call!464173 () (InoxSet Context!10646))

(assert (=> bm!464168 (= call!464176 call!464173)))

(declare-fun b!5886288 () Bool)

(declare-fun e!3606802 () (InoxSet Context!10646))

(declare-fun call!464174 () (InoxSet Context!10646))

(assert (=> b!5886288 (= e!3606802 ((_ map or) call!464174 call!464173))))

(declare-fun b!5886290 () Bool)

(declare-fun c!1045299 () Bool)

(assert (=> b!5886290 (= c!1045299 ((_ is Star!15939) r!7292))))

(declare-fun e!3606801 () (InoxSet Context!10646))

(declare-fun e!3606803 () (InoxSet Context!10646))

(assert (=> b!5886290 (= e!3606801 e!3606803)))

(declare-fun b!5886291 () Bool)

(declare-fun e!3606805 () (InoxSet Context!10646))

(assert (=> b!5886291 (= e!3606805 (store ((as const (Array Context!10646 Bool)) false) lt!2307219 true))))

(declare-fun b!5886292 () Bool)

(declare-fun c!1045298 () Bool)

(declare-fun e!3606806 () Bool)

(assert (=> b!5886292 (= c!1045298 e!3606806)))

(declare-fun res!2472409 () Bool)

(assert (=> b!5886292 (=> (not res!2472409) (not e!3606806))))

(assert (=> b!5886292 (= res!2472409 ((_ is Concat!24784) r!7292))))

(declare-fun e!3606804 () (InoxSet Context!10646))

(assert (=> b!5886292 (= e!3606804 e!3606802)))

(declare-fun bm!464169 () Bool)

(declare-fun call!464178 () List!64116)

(declare-fun call!464177 () List!64116)

(assert (=> bm!464169 (= call!464178 call!464177)))

(declare-fun bm!464170 () Bool)

(declare-fun c!1045300 () Bool)

(assert (=> bm!464170 (= call!464174 (derivationStepZipperDown!1205 (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292)) (ite c!1045300 lt!2307219 (Context!10647 call!464177)) (h!70441 s!2326)))))

(declare-fun call!464175 () (InoxSet Context!10646))

(declare-fun bm!464171 () Bool)

(declare-fun c!1045301 () Bool)

(assert (=> bm!464171 (= call!464175 (derivationStepZipperDown!1205 (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292)))) (ite (or c!1045300 c!1045298) lt!2307219 (Context!10647 call!464178)) (h!70441 s!2326)))))

(declare-fun b!5886293 () Bool)

(assert (=> b!5886293 (= e!3606804 ((_ map or) call!464174 call!464175))))

(declare-fun b!5886294 () Bool)

(assert (=> b!5886294 (= e!3606803 call!464176)))

(declare-fun b!5886295 () Bool)

(assert (=> b!5886295 (= e!3606806 (nullable!5939 (regOne!32390 r!7292)))))

(declare-fun bm!464172 () Bool)

(assert (=> bm!464172 (= call!464173 call!464175)))

(declare-fun b!5886296 () Bool)

(assert (=> b!5886296 (= e!3606803 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464173 () Bool)

(assert (=> bm!464173 (= call!464177 ($colon$colon!1844 (exprs!5823 lt!2307219) (ite (or c!1045298 c!1045301) (regTwo!32390 r!7292) r!7292)))))

(declare-fun b!5886289 () Bool)

(assert (=> b!5886289 (= e!3606801 call!464176)))

(declare-fun d!1847795 () Bool)

(declare-fun c!1045297 () Bool)

(assert (=> d!1847795 (= c!1045297 (and ((_ is ElementMatch!15939) r!7292) (= (c!1045073 r!7292) (h!70441 s!2326))))))

(assert (=> d!1847795 (= (derivationStepZipperDown!1205 r!7292 lt!2307219 (h!70441 s!2326)) e!3606805)))

(declare-fun b!5886297 () Bool)

(assert (=> b!5886297 (= e!3606805 e!3606804)))

(assert (=> b!5886297 (= c!1045300 ((_ is Union!15939) r!7292))))

(declare-fun b!5886298 () Bool)

(assert (=> b!5886298 (= e!3606802 e!3606801)))

(assert (=> b!5886298 (= c!1045301 ((_ is Concat!24784) r!7292))))

(assert (= (and d!1847795 c!1045297) b!5886291))

(assert (= (and d!1847795 (not c!1045297)) b!5886297))

(assert (= (and b!5886297 c!1045300) b!5886293))

(assert (= (and b!5886297 (not c!1045300)) b!5886292))

(assert (= (and b!5886292 res!2472409) b!5886295))

(assert (= (and b!5886292 c!1045298) b!5886288))

(assert (= (and b!5886292 (not c!1045298)) b!5886298))

(assert (= (and b!5886298 c!1045301) b!5886289))

(assert (= (and b!5886298 (not c!1045301)) b!5886290))

(assert (= (and b!5886290 c!1045299) b!5886294))

(assert (= (and b!5886290 (not c!1045299)) b!5886296))

(assert (= (or b!5886289 b!5886294) bm!464169))

(assert (= (or b!5886289 b!5886294) bm!464168))

(assert (= (or b!5886288 bm!464169) bm!464173))

(assert (= (or b!5886288 bm!464168) bm!464172))

(assert (= (or b!5886293 bm!464172) bm!464171))

(assert (= (or b!5886293 b!5886288) bm!464170))

(declare-fun m!6794940 () Bool)

(assert (=> bm!464171 m!6794940))

(declare-fun m!6794942 () Bool)

(assert (=> b!5886295 m!6794942))

(declare-fun m!6794944 () Bool)

(assert (=> bm!464170 m!6794944))

(declare-fun m!6794946 () Bool)

(assert (=> bm!464173 m!6794946))

(assert (=> b!5886291 m!6794814))

(assert (=> b!5885563 d!1847795))

(declare-fun d!1847797 () Bool)

(declare-fun c!1045303 () Bool)

(declare-fun e!3606807 () Bool)

(assert (=> d!1847797 (= c!1045303 e!3606807)))

(declare-fun res!2472410 () Bool)

(assert (=> d!1847797 (=> (not res!2472410) (not e!3606807))))

(assert (=> d!1847797 (= res!2472410 ((_ is Cons!63992) (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992)))))))

(declare-fun e!3606808 () (InoxSet Context!10646))

(assert (=> d!1847797 (= (derivationStepZipperUp!1131 (Context!10647 (Cons!63992 r!7292 Nil!63992)) (h!70441 s!2326)) e!3606808)))

(declare-fun b!5886299 () Bool)

(assert (=> b!5886299 (= e!3606807 (nullable!5939 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))))))

(declare-fun bm!464174 () Bool)

(declare-fun call!464179 () (InoxSet Context!10646))

(assert (=> bm!464174 (= call!464179 (derivationStepZipperDown!1205 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992)))) (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (h!70441 s!2326)))))

(declare-fun b!5886300 () Bool)

(assert (=> b!5886300 (= e!3606808 ((_ map or) call!464179 (derivationStepZipperUp!1131 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (h!70441 s!2326))))))

(declare-fun b!5886301 () Bool)

(declare-fun e!3606809 () (InoxSet Context!10646))

(assert (=> b!5886301 (= e!3606809 ((as const (Array Context!10646 Bool)) false))))

(declare-fun b!5886302 () Bool)

(assert (=> b!5886302 (= e!3606808 e!3606809)))

(declare-fun c!1045302 () Bool)

(assert (=> b!5886302 (= c!1045302 ((_ is Cons!63992) (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992)))))))

(declare-fun b!5886303 () Bool)

(assert (=> b!5886303 (= e!3606809 call!464179)))

(assert (= (and d!1847797 res!2472410) b!5886299))

(assert (= (and d!1847797 c!1045303) b!5886300))

(assert (= (and d!1847797 (not c!1045303)) b!5886302))

(assert (= (and b!5886302 c!1045302) b!5886303))

(assert (= (and b!5886302 (not c!1045302)) b!5886301))

(assert (= (or b!5886300 b!5886303) bm!464174))

(declare-fun m!6794948 () Bool)

(assert (=> b!5886299 m!6794948))

(declare-fun m!6794950 () Bool)

(assert (=> bm!464174 m!6794950))

(declare-fun m!6794952 () Bool)

(assert (=> b!5886300 m!6794952))

(assert (=> b!5885563 d!1847797))

(declare-fun b!5886311 () Bool)

(declare-fun e!3606815 () Bool)

(declare-fun tp!1631696 () Bool)

(assert (=> b!5886311 (= e!3606815 tp!1631696)))

(declare-fun tp!1631697 () Bool)

(declare-fun b!5886310 () Bool)

(declare-fun e!3606814 () Bool)

(assert (=> b!5886310 (= e!3606814 (and (inv!83094 (h!70442 (t!377499 zl!343))) e!3606815 tp!1631697))))

(assert (=> b!5885552 (= tp!1631624 e!3606814)))

(assert (= b!5886310 b!5886311))

(assert (= (and b!5885552 ((_ is Cons!63994) (t!377499 zl!343))) b!5886310))

(declare-fun m!6794954 () Bool)

(assert (=> b!5886310 m!6794954))

(declare-fun b!5886325 () Bool)

(declare-fun e!3606818 () Bool)

(declare-fun tp!1631711 () Bool)

(declare-fun tp!1631710 () Bool)

(assert (=> b!5886325 (= e!3606818 (and tp!1631711 tp!1631710))))

(declare-fun b!5886324 () Bool)

(declare-fun tp!1631709 () Bool)

(assert (=> b!5886324 (= e!3606818 tp!1631709)))

(assert (=> b!5885551 (= tp!1631630 e!3606818)))

(declare-fun b!5886323 () Bool)

(declare-fun tp!1631708 () Bool)

(declare-fun tp!1631712 () Bool)

(assert (=> b!5886323 (= e!3606818 (and tp!1631708 tp!1631712))))

(declare-fun b!5886322 () Bool)

(assert (=> b!5886322 (= e!3606818 tp_is_empty!41131)))

(assert (= (and b!5885551 ((_ is ElementMatch!15939) (reg!16268 r!7292))) b!5886322))

(assert (= (and b!5885551 ((_ is Concat!24784) (reg!16268 r!7292))) b!5886323))

(assert (= (and b!5885551 ((_ is Star!15939) (reg!16268 r!7292))) b!5886324))

(assert (= (and b!5885551 ((_ is Union!15939) (reg!16268 r!7292))) b!5886325))

(declare-fun b!5886330 () Bool)

(declare-fun e!3606821 () Bool)

(declare-fun tp!1631717 () Bool)

(declare-fun tp!1631718 () Bool)

(assert (=> b!5886330 (= e!3606821 (and tp!1631717 tp!1631718))))

(assert (=> b!5885540 (= tp!1631627 e!3606821)))

(assert (= (and b!5885540 ((_ is Cons!63992) (exprs!5823 (h!70442 zl!343)))) b!5886330))

(declare-fun b!5886335 () Bool)

(declare-fun e!3606824 () Bool)

(declare-fun tp!1631721 () Bool)

(assert (=> b!5886335 (= e!3606824 (and tp_is_empty!41131 tp!1631721))))

(assert (=> b!5885549 (= tp!1631626 e!3606824)))

(assert (= (and b!5885549 ((_ is Cons!63993) (t!377498 s!2326))) b!5886335))

(declare-fun condSetEmpty!39911 () Bool)

(assert (=> setNonEmpty!39905 (= condSetEmpty!39911 (= setRest!39905 ((as const (Array Context!10646 Bool)) false)))))

(declare-fun setRes!39911 () Bool)

(assert (=> setNonEmpty!39905 (= tp!1631633 setRes!39911)))

(declare-fun setIsEmpty!39911 () Bool)

(assert (=> setIsEmpty!39911 setRes!39911))

(declare-fun setNonEmpty!39911 () Bool)

(declare-fun setElem!39911 () Context!10646)

(declare-fun tp!1631727 () Bool)

(declare-fun e!3606827 () Bool)

(assert (=> setNonEmpty!39911 (= setRes!39911 (and tp!1631727 (inv!83094 setElem!39911) e!3606827))))

(declare-fun setRest!39911 () (InoxSet Context!10646))

(assert (=> setNonEmpty!39911 (= setRest!39905 ((_ map or) (store ((as const (Array Context!10646 Bool)) false) setElem!39911 true) setRest!39911))))

(declare-fun b!5886340 () Bool)

(declare-fun tp!1631726 () Bool)

(assert (=> b!5886340 (= e!3606827 tp!1631726)))

(assert (= (and setNonEmpty!39905 condSetEmpty!39911) setIsEmpty!39911))

(assert (= (and setNonEmpty!39905 (not condSetEmpty!39911)) setNonEmpty!39911))

(assert (= setNonEmpty!39911 b!5886340))

(declare-fun m!6794956 () Bool)

(assert (=> setNonEmpty!39911 m!6794956))

(declare-fun b!5886344 () Bool)

(declare-fun e!3606828 () Bool)

(declare-fun tp!1631731 () Bool)

(declare-fun tp!1631730 () Bool)

(assert (=> b!5886344 (= e!3606828 (and tp!1631731 tp!1631730))))

(declare-fun b!5886343 () Bool)

(declare-fun tp!1631729 () Bool)

(assert (=> b!5886343 (= e!3606828 tp!1631729)))

(assert (=> b!5885554 (= tp!1631631 e!3606828)))

(declare-fun b!5886342 () Bool)

(declare-fun tp!1631728 () Bool)

(declare-fun tp!1631732 () Bool)

(assert (=> b!5886342 (= e!3606828 (and tp!1631728 tp!1631732))))

(declare-fun b!5886341 () Bool)

(assert (=> b!5886341 (= e!3606828 tp_is_empty!41131)))

(assert (= (and b!5885554 ((_ is ElementMatch!15939) (regOne!32391 r!7292))) b!5886341))

(assert (= (and b!5885554 ((_ is Concat!24784) (regOne!32391 r!7292))) b!5886342))

(assert (= (and b!5885554 ((_ is Star!15939) (regOne!32391 r!7292))) b!5886343))

(assert (= (and b!5885554 ((_ is Union!15939) (regOne!32391 r!7292))) b!5886344))

(declare-fun b!5886348 () Bool)

(declare-fun e!3606829 () Bool)

(declare-fun tp!1631736 () Bool)

(declare-fun tp!1631735 () Bool)

(assert (=> b!5886348 (= e!3606829 (and tp!1631736 tp!1631735))))

(declare-fun b!5886347 () Bool)

(declare-fun tp!1631734 () Bool)

(assert (=> b!5886347 (= e!3606829 tp!1631734)))

(assert (=> b!5885554 (= tp!1631632 e!3606829)))

(declare-fun b!5886346 () Bool)

(declare-fun tp!1631733 () Bool)

(declare-fun tp!1631737 () Bool)

(assert (=> b!5886346 (= e!3606829 (and tp!1631733 tp!1631737))))

(declare-fun b!5886345 () Bool)

(assert (=> b!5886345 (= e!3606829 tp_is_empty!41131)))

(assert (= (and b!5885554 ((_ is ElementMatch!15939) (regTwo!32391 r!7292))) b!5886345))

(assert (= (and b!5885554 ((_ is Concat!24784) (regTwo!32391 r!7292))) b!5886346))

(assert (= (and b!5885554 ((_ is Star!15939) (regTwo!32391 r!7292))) b!5886347))

(assert (= (and b!5885554 ((_ is Union!15939) (regTwo!32391 r!7292))) b!5886348))

(declare-fun b!5886352 () Bool)

(declare-fun e!3606830 () Bool)

(declare-fun tp!1631741 () Bool)

(declare-fun tp!1631740 () Bool)

(assert (=> b!5886352 (= e!3606830 (and tp!1631741 tp!1631740))))

(declare-fun b!5886351 () Bool)

(declare-fun tp!1631739 () Bool)

(assert (=> b!5886351 (= e!3606830 tp!1631739)))

(assert (=> b!5885559 (= tp!1631628 e!3606830)))

(declare-fun b!5886350 () Bool)

(declare-fun tp!1631738 () Bool)

(declare-fun tp!1631742 () Bool)

(assert (=> b!5886350 (= e!3606830 (and tp!1631738 tp!1631742))))

(declare-fun b!5886349 () Bool)

(assert (=> b!5886349 (= e!3606830 tp_is_empty!41131)))

(assert (= (and b!5885559 ((_ is ElementMatch!15939) (regOne!32390 r!7292))) b!5886349))

(assert (= (and b!5885559 ((_ is Concat!24784) (regOne!32390 r!7292))) b!5886350))

(assert (= (and b!5885559 ((_ is Star!15939) (regOne!32390 r!7292))) b!5886351))

(assert (= (and b!5885559 ((_ is Union!15939) (regOne!32390 r!7292))) b!5886352))

(declare-fun b!5886356 () Bool)

(declare-fun e!3606831 () Bool)

(declare-fun tp!1631746 () Bool)

(declare-fun tp!1631745 () Bool)

(assert (=> b!5886356 (= e!3606831 (and tp!1631746 tp!1631745))))

(declare-fun b!5886355 () Bool)

(declare-fun tp!1631744 () Bool)

(assert (=> b!5886355 (= e!3606831 tp!1631744)))

(assert (=> b!5885559 (= tp!1631629 e!3606831)))

(declare-fun b!5886354 () Bool)

(declare-fun tp!1631743 () Bool)

(declare-fun tp!1631747 () Bool)

(assert (=> b!5886354 (= e!3606831 (and tp!1631743 tp!1631747))))

(declare-fun b!5886353 () Bool)

(assert (=> b!5886353 (= e!3606831 tp_is_empty!41131)))

(assert (= (and b!5885559 ((_ is ElementMatch!15939) (regTwo!32390 r!7292))) b!5886353))

(assert (= (and b!5885559 ((_ is Concat!24784) (regTwo!32390 r!7292))) b!5886354))

(assert (= (and b!5885559 ((_ is Star!15939) (regTwo!32390 r!7292))) b!5886355))

(assert (= (and b!5885559 ((_ is Union!15939) (regTwo!32390 r!7292))) b!5886356))

(declare-fun b!5886357 () Bool)

(declare-fun e!3606832 () Bool)

(declare-fun tp!1631748 () Bool)

(declare-fun tp!1631749 () Bool)

(assert (=> b!5886357 (= e!3606832 (and tp!1631748 tp!1631749))))

(assert (=> b!5885548 (= tp!1631625 e!3606832)))

(assert (= (and b!5885548 ((_ is Cons!63992) (exprs!5823 setElem!39905))) b!5886357))

(declare-fun b_lambda!221431 () Bool)

(assert (= b_lambda!221427 (or b!5885544 b_lambda!221431)))

(declare-fun bs!1390525 () Bool)

(declare-fun d!1847799 () Bool)

(assert (= bs!1390525 (and d!1847799 b!5885544)))

(assert (=> bs!1390525 (= (dynLambda!25031 lambda!321393 lt!2307204) (derivationStepZipperUp!1131 lt!2307204 (h!70441 s!2326)))))

(assert (=> bs!1390525 m!6794440))

(assert (=> d!1847775 d!1847799))

(declare-fun b_lambda!221433 () Bool)

(assert (= b_lambda!221425 (or b!5885544 b_lambda!221433)))

(declare-fun bs!1390526 () Bool)

(declare-fun d!1847801 () Bool)

(assert (= bs!1390526 (and d!1847801 b!5885544)))

(assert (=> bs!1390526 (= (dynLambda!25031 lambda!321393 lt!2307214) (derivationStepZipperUp!1131 lt!2307214 (h!70441 s!2326)))))

(assert (=> bs!1390526 m!6794450))

(assert (=> d!1847773 d!1847801))

(declare-fun b_lambda!221435 () Bool)

(assert (= b_lambda!221429 (or b!5885544 b_lambda!221435)))

(declare-fun bs!1390527 () Bool)

(declare-fun d!1847803 () Bool)

(assert (= bs!1390527 (and d!1847803 b!5885544)))

(assert (=> bs!1390527 (= (dynLambda!25031 lambda!321393 (h!70442 zl!343)) (derivationStepZipperUp!1131 (h!70442 zl!343) (h!70441 s!2326)))))

(assert (=> bs!1390527 m!6794478))

(assert (=> d!1847785 d!1847803))

(check-sat (not b!5885986) (not d!1847741) (not b!5886059) (not d!1847629) (not d!1847773) (not d!1847719) (not b!5886257) (not b!5885908) (not b!5886355) (not b!5886246) (not b!5885951) (not b!5886193) (not bm!464117) (not b!5886052) (not b!5886300) (not b_lambda!221431) (not b!5886212) (not b!5886256) (not b!5886247) (not b!5886023) (not b!5885909) (not b!5886213) (not b!5885572) (not d!1847713) (not b!5885945) (not b!5886354) (not b_lambda!221433) (not b!5886255) (not d!1847635) (not bm!464164) (not b!5886155) (not b!5885913) (not d!1847769) (not b!5886185) (not d!1847771) (not d!1847755) (not b!5886352) (not bm!464174) (not b!5885981) (not b!5886325) (not b!5886299) (not b!5886285) (not bm!464153) (not b!5886311) (not b!5886057) (not b!5886235) (not b!5886324) (not b!5886346) (not b!5886251) (not bm!464095) (not b!5885918) (not setNonEmpty!39911) (not b!5886330) (not b!5886179) (not b!5886340) (not b!5886335) (not b!5885979) (not bm!464144) (not d!1847789) (not d!1847717) (not b!5886295) (not b!5886282) (not d!1847673) (not bm!464171) (not b!5886184) (not b!5886344) (not b!5886017) (not bm!464121) (not b!5886188) (not b!5886195) (not b!5885917) (not b!5886207) (not b!5885980) (not b!5886310) (not bm!464151) (not b!5886283) (not b!5885772) (not b!5886348) (not b!5886287) (not bm!464129) (not d!1847711) (not d!1847737) (not b!5886054) (not d!1847757) (not b!5886343) (not bm!464170) (not bm!464145) (not d!1847753) (not d!1847775) (not bm!464156) (not b!5886006) (not b!5885910) (not bm!464165) (not b!5886004) (not b!5886144) (not d!1847779) (not b!5886187) (not b!5886252) (not bm!464119) (not b!5886351) (not d!1847721) (not d!1847761) (not b_lambda!221435) (not b!5886060) (not d!1847791) (not b!5886009) tp_is_empty!41131 (not b!5886357) (not b!5886279) (not b!5886342) (not d!1847781) (not b!5886186) (not bm!464150) (not b!5886356) (not b!5886180) (not bm!464157) (not bm!464167) (not bm!464096) (not b!5885573) (not b!5885766) (not d!1847785) (not b!5886053) (not b!5886280) (not b!5886005) (not b!5886196) (not d!1847631) (not b!5886323) (not bm!464116) (not b!5886347) (not b!5886281) (not bm!464120) (not b!5886010) (not bm!464173) (not b!5885987) (not d!1847793) (not bs!1390525) (not b!5885984) (not b!5886208) (not d!1847763) (not bm!464147) (not b!5886350) (not d!1847705) (not d!1847787) (not bs!1390526) (not bs!1390527) (not bm!464118) (not d!1847665))
(check-sat)
(get-model)

(declare-fun d!1848045 () Bool)

(assert (=> d!1848045 (= (isEmpty!35852 s!2326) ((_ is Nil!63993) s!2326))))

(assert (=> bm!464116 d!1848045))

(declare-fun bm!464291 () Bool)

(declare-fun call!464299 () (InoxSet Context!10646))

(declare-fun call!464296 () (InoxSet Context!10646))

(assert (=> bm!464291 (= call!464299 call!464296)))

(declare-fun b!5886884 () Bool)

(declare-fun e!3607126 () (InoxSet Context!10646))

(declare-fun call!464297 () (InoxSet Context!10646))

(assert (=> b!5886884 (= e!3607126 ((_ map or) call!464297 call!464296))))

(declare-fun b!5886886 () Bool)

(declare-fun c!1045449 () Bool)

(assert (=> b!5886886 (= c!1045449 ((_ is Star!15939) (h!70440 (exprs!5823 lt!2307204))))))

(declare-fun e!3607125 () (InoxSet Context!10646))

(declare-fun e!3607127 () (InoxSet Context!10646))

(assert (=> b!5886886 (= e!3607125 e!3607127)))

(declare-fun b!5886887 () Bool)

(declare-fun e!3607129 () (InoxSet Context!10646))

(assert (=> b!5886887 (= e!3607129 (store ((as const (Array Context!10646 Bool)) false) (Context!10647 (t!377497 (exprs!5823 lt!2307204))) true))))

(declare-fun b!5886888 () Bool)

(declare-fun c!1045448 () Bool)

(declare-fun e!3607130 () Bool)

(assert (=> b!5886888 (= c!1045448 e!3607130)))

(declare-fun res!2472536 () Bool)

(assert (=> b!5886888 (=> (not res!2472536) (not e!3607130))))

(assert (=> b!5886888 (= res!2472536 ((_ is Concat!24784) (h!70440 (exprs!5823 lt!2307204))))))

(declare-fun e!3607128 () (InoxSet Context!10646))

(assert (=> b!5886888 (= e!3607128 e!3607126)))

(declare-fun bm!464292 () Bool)

(declare-fun call!464301 () List!64116)

(declare-fun call!464300 () List!64116)

(assert (=> bm!464292 (= call!464301 call!464300)))

(declare-fun bm!464293 () Bool)

(declare-fun c!1045450 () Bool)

(assert (=> bm!464293 (= call!464297 (derivationStepZipperDown!1205 (ite c!1045450 (regOne!32391 (h!70440 (exprs!5823 lt!2307204))) (regOne!32390 (h!70440 (exprs!5823 lt!2307204)))) (ite c!1045450 (Context!10647 (t!377497 (exprs!5823 lt!2307204))) (Context!10647 call!464300)) (h!70441 s!2326)))))

(declare-fun c!1045451 () Bool)

(declare-fun bm!464294 () Bool)

(declare-fun call!464298 () (InoxSet Context!10646))

(assert (=> bm!464294 (= call!464298 (derivationStepZipperDown!1205 (ite c!1045450 (regTwo!32391 (h!70440 (exprs!5823 lt!2307204))) (ite c!1045448 (regTwo!32390 (h!70440 (exprs!5823 lt!2307204))) (ite c!1045451 (regOne!32390 (h!70440 (exprs!5823 lt!2307204))) (reg!16268 (h!70440 (exprs!5823 lt!2307204)))))) (ite (or c!1045450 c!1045448) (Context!10647 (t!377497 (exprs!5823 lt!2307204))) (Context!10647 call!464301)) (h!70441 s!2326)))))

(declare-fun b!5886889 () Bool)

(assert (=> b!5886889 (= e!3607128 ((_ map or) call!464297 call!464298))))

(declare-fun b!5886890 () Bool)

(assert (=> b!5886890 (= e!3607127 call!464299)))

(declare-fun b!5886891 () Bool)

(assert (=> b!5886891 (= e!3607130 (nullable!5939 (regOne!32390 (h!70440 (exprs!5823 lt!2307204)))))))

(declare-fun bm!464295 () Bool)

(assert (=> bm!464295 (= call!464296 call!464298)))

(declare-fun b!5886892 () Bool)

(assert (=> b!5886892 (= e!3607127 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464296 () Bool)

(assert (=> bm!464296 (= call!464300 ($colon$colon!1844 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307204)))) (ite (or c!1045448 c!1045451) (regTwo!32390 (h!70440 (exprs!5823 lt!2307204))) (h!70440 (exprs!5823 lt!2307204)))))))

(declare-fun b!5886885 () Bool)

(assert (=> b!5886885 (= e!3607125 call!464299)))

(declare-fun d!1848047 () Bool)

(declare-fun c!1045447 () Bool)

(assert (=> d!1848047 (= c!1045447 (and ((_ is ElementMatch!15939) (h!70440 (exprs!5823 lt!2307204))) (= (c!1045073 (h!70440 (exprs!5823 lt!2307204))) (h!70441 s!2326))))))

(assert (=> d!1848047 (= (derivationStepZipperDown!1205 (h!70440 (exprs!5823 lt!2307204)) (Context!10647 (t!377497 (exprs!5823 lt!2307204))) (h!70441 s!2326)) e!3607129)))

(declare-fun b!5886893 () Bool)

(assert (=> b!5886893 (= e!3607129 e!3607128)))

(assert (=> b!5886893 (= c!1045450 ((_ is Union!15939) (h!70440 (exprs!5823 lt!2307204))))))

(declare-fun b!5886894 () Bool)

(assert (=> b!5886894 (= e!3607126 e!3607125)))

(assert (=> b!5886894 (= c!1045451 ((_ is Concat!24784) (h!70440 (exprs!5823 lt!2307204))))))

(assert (= (and d!1848047 c!1045447) b!5886887))

(assert (= (and d!1848047 (not c!1045447)) b!5886893))

(assert (= (and b!5886893 c!1045450) b!5886889))

(assert (= (and b!5886893 (not c!1045450)) b!5886888))

(assert (= (and b!5886888 res!2472536) b!5886891))

(assert (= (and b!5886888 c!1045448) b!5886884))

(assert (= (and b!5886888 (not c!1045448)) b!5886894))

(assert (= (and b!5886894 c!1045451) b!5886885))

(assert (= (and b!5886894 (not c!1045451)) b!5886886))

(assert (= (and b!5886886 c!1045449) b!5886890))

(assert (= (and b!5886886 (not c!1045449)) b!5886892))

(assert (= (or b!5886885 b!5886890) bm!464292))

(assert (= (or b!5886885 b!5886890) bm!464291))

(assert (= (or b!5886884 bm!464292) bm!464296))

(assert (= (or b!5886884 bm!464291) bm!464295))

(assert (= (or b!5886889 bm!464295) bm!464294))

(assert (= (or b!5886889 b!5886884) bm!464293))

(declare-fun m!6795402 () Bool)

(assert (=> bm!464294 m!6795402))

(declare-fun m!6795404 () Bool)

(assert (=> b!5886891 m!6795404))

(declare-fun m!6795406 () Bool)

(assert (=> bm!464293 m!6795406))

(declare-fun m!6795408 () Bool)

(assert (=> bm!464296 m!6795408))

(declare-fun m!6795410 () Bool)

(assert (=> b!5886887 m!6795410))

(assert (=> bm!464157 d!1848047))

(assert (=> b!5886023 d!1847707))

(declare-fun bm!464297 () Bool)

(declare-fun call!464305 () (InoxSet Context!10646))

(declare-fun call!464302 () (InoxSet Context!10646))

(assert (=> bm!464297 (= call!464305 call!464302)))

(declare-fun b!5886895 () Bool)

(declare-fun e!3607132 () (InoxSet Context!10646))

(declare-fun call!464303 () (InoxSet Context!10646))

(assert (=> b!5886895 (= e!3607132 ((_ map or) call!464303 call!464302))))

(declare-fun b!5886897 () Bool)

(declare-fun c!1045454 () Bool)

(assert (=> b!5886897 (= c!1045454 ((_ is Star!15939) (h!70440 (exprs!5823 lt!2307214))))))

(declare-fun e!3607131 () (InoxSet Context!10646))

(declare-fun e!3607133 () (InoxSet Context!10646))

(assert (=> b!5886897 (= e!3607131 e!3607133)))

(declare-fun b!5886898 () Bool)

(declare-fun e!3607135 () (InoxSet Context!10646))

(assert (=> b!5886898 (= e!3607135 (store ((as const (Array Context!10646 Bool)) false) (Context!10647 (t!377497 (exprs!5823 lt!2307214))) true))))

(declare-fun b!5886899 () Bool)

(declare-fun c!1045453 () Bool)

(declare-fun e!3607136 () Bool)

(assert (=> b!5886899 (= c!1045453 e!3607136)))

(declare-fun res!2472537 () Bool)

(assert (=> b!5886899 (=> (not res!2472537) (not e!3607136))))

(assert (=> b!5886899 (= res!2472537 ((_ is Concat!24784) (h!70440 (exprs!5823 lt!2307214))))))

(declare-fun e!3607134 () (InoxSet Context!10646))

(assert (=> b!5886899 (= e!3607134 e!3607132)))

(declare-fun bm!464298 () Bool)

(declare-fun call!464307 () List!64116)

(declare-fun call!464306 () List!64116)

(assert (=> bm!464298 (= call!464307 call!464306)))

(declare-fun bm!464299 () Bool)

(declare-fun c!1045455 () Bool)

(assert (=> bm!464299 (= call!464303 (derivationStepZipperDown!1205 (ite c!1045455 (regOne!32391 (h!70440 (exprs!5823 lt!2307214))) (regOne!32390 (h!70440 (exprs!5823 lt!2307214)))) (ite c!1045455 (Context!10647 (t!377497 (exprs!5823 lt!2307214))) (Context!10647 call!464306)) (h!70441 s!2326)))))

(declare-fun call!464304 () (InoxSet Context!10646))

(declare-fun c!1045456 () Bool)

(declare-fun bm!464300 () Bool)

(assert (=> bm!464300 (= call!464304 (derivationStepZipperDown!1205 (ite c!1045455 (regTwo!32391 (h!70440 (exprs!5823 lt!2307214))) (ite c!1045453 (regTwo!32390 (h!70440 (exprs!5823 lt!2307214))) (ite c!1045456 (regOne!32390 (h!70440 (exprs!5823 lt!2307214))) (reg!16268 (h!70440 (exprs!5823 lt!2307214)))))) (ite (or c!1045455 c!1045453) (Context!10647 (t!377497 (exprs!5823 lt!2307214))) (Context!10647 call!464307)) (h!70441 s!2326)))))

(declare-fun b!5886900 () Bool)

(assert (=> b!5886900 (= e!3607134 ((_ map or) call!464303 call!464304))))

(declare-fun b!5886901 () Bool)

(assert (=> b!5886901 (= e!3607133 call!464305)))

(declare-fun b!5886902 () Bool)

(assert (=> b!5886902 (= e!3607136 (nullable!5939 (regOne!32390 (h!70440 (exprs!5823 lt!2307214)))))))

(declare-fun bm!464301 () Bool)

(assert (=> bm!464301 (= call!464302 call!464304)))

(declare-fun b!5886903 () Bool)

(assert (=> b!5886903 (= e!3607133 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464302 () Bool)

(assert (=> bm!464302 (= call!464306 ($colon$colon!1844 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307214)))) (ite (or c!1045453 c!1045456) (regTwo!32390 (h!70440 (exprs!5823 lt!2307214))) (h!70440 (exprs!5823 lt!2307214)))))))

(declare-fun b!5886896 () Bool)

(assert (=> b!5886896 (= e!3607131 call!464305)))

(declare-fun d!1848049 () Bool)

(declare-fun c!1045452 () Bool)

(assert (=> d!1848049 (= c!1045452 (and ((_ is ElementMatch!15939) (h!70440 (exprs!5823 lt!2307214))) (= (c!1045073 (h!70440 (exprs!5823 lt!2307214))) (h!70441 s!2326))))))

(assert (=> d!1848049 (= (derivationStepZipperDown!1205 (h!70440 (exprs!5823 lt!2307214)) (Context!10647 (t!377497 (exprs!5823 lt!2307214))) (h!70441 s!2326)) e!3607135)))

(declare-fun b!5886904 () Bool)

(assert (=> b!5886904 (= e!3607135 e!3607134)))

(assert (=> b!5886904 (= c!1045455 ((_ is Union!15939) (h!70440 (exprs!5823 lt!2307214))))))

(declare-fun b!5886905 () Bool)

(assert (=> b!5886905 (= e!3607132 e!3607131)))

(assert (=> b!5886905 (= c!1045456 ((_ is Concat!24784) (h!70440 (exprs!5823 lt!2307214))))))

(assert (= (and d!1848049 c!1045452) b!5886898))

(assert (= (and d!1848049 (not c!1045452)) b!5886904))

(assert (= (and b!5886904 c!1045455) b!5886900))

(assert (= (and b!5886904 (not c!1045455)) b!5886899))

(assert (= (and b!5886899 res!2472537) b!5886902))

(assert (= (and b!5886899 c!1045453) b!5886895))

(assert (= (and b!5886899 (not c!1045453)) b!5886905))

(assert (= (and b!5886905 c!1045456) b!5886896))

(assert (= (and b!5886905 (not c!1045456)) b!5886897))

(assert (= (and b!5886897 c!1045454) b!5886901))

(assert (= (and b!5886897 (not c!1045454)) b!5886903))

(assert (= (or b!5886896 b!5886901) bm!464298))

(assert (= (or b!5886896 b!5886901) bm!464297))

(assert (= (or b!5886895 bm!464298) bm!464302))

(assert (= (or b!5886895 bm!464297) bm!464301))

(assert (= (or b!5886900 bm!464301) bm!464300))

(assert (= (or b!5886900 b!5886895) bm!464299))

(declare-fun m!6795412 () Bool)

(assert (=> bm!464300 m!6795412))

(declare-fun m!6795414 () Bool)

(assert (=> b!5886902 m!6795414))

(declare-fun m!6795416 () Bool)

(assert (=> bm!464299 m!6795416))

(declare-fun m!6795418 () Bool)

(assert (=> bm!464302 m!6795418))

(declare-fun m!6795420 () Bool)

(assert (=> b!5886898 m!6795420))

(assert (=> bm!464156 d!1848049))

(declare-fun d!1848051 () Bool)

(assert (=> d!1848051 true))

(declare-fun setRes!39920 () Bool)

(assert (=> d!1848051 setRes!39920))

(declare-fun condSetEmpty!39920 () Bool)

(declare-fun res!2472540 () (InoxSet Context!10646))

(assert (=> d!1848051 (= condSetEmpty!39920 (= res!2472540 ((as const (Array Context!10646 Bool)) false)))))

(assert (=> d!1848051 (= (choose!44509 lt!2307201 lambda!321393) res!2472540)))

(declare-fun setIsEmpty!39920 () Bool)

(assert (=> setIsEmpty!39920 setRes!39920))

(declare-fun setNonEmpty!39920 () Bool)

(declare-fun setElem!39920 () Context!10646)

(declare-fun tp!1631919 () Bool)

(declare-fun e!3607139 () Bool)

(assert (=> setNonEmpty!39920 (= setRes!39920 (and tp!1631919 (inv!83094 setElem!39920) e!3607139))))

(declare-fun setRest!39920 () (InoxSet Context!10646))

(assert (=> setNonEmpty!39920 (= res!2472540 ((_ map or) (store ((as const (Array Context!10646 Bool)) false) setElem!39920 true) setRest!39920))))

(declare-fun b!5886908 () Bool)

(declare-fun tp!1631918 () Bool)

(assert (=> b!5886908 (= e!3607139 tp!1631918)))

(assert (= (and d!1848051 condSetEmpty!39920) setIsEmpty!39920))

(assert (= (and d!1848051 (not condSetEmpty!39920)) setNonEmpty!39920))

(assert (= setNonEmpty!39920 b!5886908))

(declare-fun m!6795422 () Bool)

(assert (=> setNonEmpty!39920 m!6795422))

(assert (=> d!1847771 d!1848051))

(declare-fun d!1848053 () Bool)

(declare-fun lambda!321477 () Int)

(declare-fun exists!2326 ((InoxSet Context!10646) Int) Bool)

(assert (=> d!1848053 (= (nullableZipper!1777 lt!2307215) (exists!2326 lt!2307215 lambda!321477))))

(declare-fun bs!1390728 () Bool)

(assert (= bs!1390728 d!1848053))

(declare-fun m!6795424 () Bool)

(assert (=> bs!1390728 m!6795424))

(assert (=> b!5886009 d!1848053))

(declare-fun d!1848055 () Bool)

(assert (=> d!1848055 (= (flatMap!1470 z!1189 lambda!321444) (choose!44509 z!1189 lambda!321444))))

(declare-fun bs!1390729 () Bool)

(assert (= bs!1390729 d!1848055))

(declare-fun m!6795426 () Bool)

(assert (=> bs!1390729 m!6795426))

(assert (=> d!1847779 d!1848055))

(declare-fun bs!1390730 () Bool)

(declare-fun d!1848057 () Bool)

(assert (= bs!1390730 (and d!1848057 d!1848053)))

(declare-fun lambda!321478 () Int)

(assert (=> bs!1390730 (= lambda!321478 lambda!321477)))

(assert (=> d!1848057 (= (nullableZipper!1777 lt!2307209) (exists!2326 lt!2307209 lambda!321478))))

(declare-fun bs!1390731 () Bool)

(assert (= bs!1390731 d!1848057))

(declare-fun m!6795428 () Bool)

(assert (=> bs!1390731 m!6795428))

(assert (=> b!5886251 d!1848057))

(declare-fun d!1848059 () Bool)

(assert (=> d!1848059 (= (isEmpty!35852 (t!377498 s!2326)) ((_ is Nil!63993) (t!377498 s!2326)))))

(assert (=> d!1847629 d!1848059))

(declare-fun bs!1390732 () Bool)

(declare-fun b!5886919 () Bool)

(assert (= bs!1390732 (and b!5886919 b!5886025)))

(declare-fun lambda!321479 () Int)

(assert (=> bs!1390732 (= (and (= (reg!16268 (regOne!32391 (regTwo!32391 r!7292))) (reg!16268 r!7292)) (= (regOne!32391 (regTwo!32391 r!7292)) r!7292)) (= lambda!321479 lambda!321432))))

(declare-fun bs!1390733 () Bool)

(assert (= bs!1390733 (and b!5886919 b!5885764)))

(assert (=> bs!1390733 (not (= lambda!321479 lambda!321413))))

(declare-fun bs!1390734 () Bool)

(assert (= bs!1390734 (and b!5886919 b!5885953)))

(assert (=> bs!1390734 (= (and (= (reg!16268 (regOne!32391 (regTwo!32391 r!7292))) (reg!16268 (regOne!32391 r!7292))) (= (regOne!32391 (regTwo!32391 r!7292)) (regOne!32391 r!7292))) (= lambda!321479 lambda!321424))))

(declare-fun bs!1390735 () Bool)

(assert (= bs!1390735 (and b!5886919 b!5885774)))

(assert (=> bs!1390735 (= (and (= (reg!16268 (regOne!32391 (regTwo!32391 r!7292))) (reg!16268 (regTwo!32391 r!7292))) (= (regOne!32391 (regTwo!32391 r!7292)) (regTwo!32391 r!7292))) (= lambda!321479 lambda!321412))))

(declare-fun bs!1390736 () Bool)

(assert (= bs!1390736 (and b!5886919 b!5886015)))

(assert (=> bs!1390736 (not (= lambda!321479 lambda!321433))))

(declare-fun bs!1390737 () Bool)

(assert (= bs!1390737 (and b!5886919 b!5885943)))

(assert (=> bs!1390737 (not (= lambda!321479 lambda!321425))))

(assert (=> b!5886919 true))

(assert (=> b!5886919 true))

(declare-fun bs!1390738 () Bool)

(declare-fun b!5886909 () Bool)

(assert (= bs!1390738 (and b!5886909 b!5886919)))

(declare-fun lambda!321480 () Int)

(assert (=> bs!1390738 (not (= lambda!321480 lambda!321479))))

(declare-fun bs!1390739 () Bool)

(assert (= bs!1390739 (and b!5886909 b!5886025)))

(assert (=> bs!1390739 (not (= lambda!321480 lambda!321432))))

(declare-fun bs!1390740 () Bool)

(assert (= bs!1390740 (and b!5886909 b!5885764)))

(assert (=> bs!1390740 (= (and (= (regOne!32390 (regOne!32391 (regTwo!32391 r!7292))) (regOne!32390 (regTwo!32391 r!7292))) (= (regTwo!32390 (regOne!32391 (regTwo!32391 r!7292))) (regTwo!32390 (regTwo!32391 r!7292)))) (= lambda!321480 lambda!321413))))

(declare-fun bs!1390741 () Bool)

(assert (= bs!1390741 (and b!5886909 b!5885953)))

(assert (=> bs!1390741 (not (= lambda!321480 lambda!321424))))

(declare-fun bs!1390742 () Bool)

(assert (= bs!1390742 (and b!5886909 b!5885774)))

(assert (=> bs!1390742 (not (= lambda!321480 lambda!321412))))

(declare-fun bs!1390743 () Bool)

(assert (= bs!1390743 (and b!5886909 b!5886015)))

(assert (=> bs!1390743 (= (and (= (regOne!32390 (regOne!32391 (regTwo!32391 r!7292))) (regOne!32390 r!7292)) (= (regTwo!32390 (regOne!32391 (regTwo!32391 r!7292))) (regTwo!32390 r!7292))) (= lambda!321480 lambda!321433))))

(declare-fun bs!1390744 () Bool)

(assert (= bs!1390744 (and b!5886909 b!5885943)))

(assert (=> bs!1390744 (= (and (= (regOne!32390 (regOne!32391 (regTwo!32391 r!7292))) (regOne!32390 (regOne!32391 r!7292))) (= (regTwo!32390 (regOne!32391 (regTwo!32391 r!7292))) (regTwo!32390 (regOne!32391 r!7292)))) (= lambda!321480 lambda!321425))))

(assert (=> b!5886909 true))

(assert (=> b!5886909 true))

(declare-fun e!3607144 () Bool)

(declare-fun call!464309 () Bool)

(assert (=> b!5886909 (= e!3607144 call!464309)))

(declare-fun b!5886910 () Bool)

(declare-fun c!1045461 () Bool)

(assert (=> b!5886910 (= c!1045461 ((_ is Union!15939) (regOne!32391 (regTwo!32391 r!7292))))))

(declare-fun e!3607141 () Bool)

(declare-fun e!3607142 () Bool)

(assert (=> b!5886910 (= e!3607141 e!3607142)))

(declare-fun bm!464303 () Bool)

(declare-fun c!1045459 () Bool)

(assert (=> bm!464303 (= call!464309 (Exists!3011 (ite c!1045459 lambda!321479 lambda!321480)))))

(declare-fun d!1848061 () Bool)

(declare-fun c!1045460 () Bool)

(assert (=> d!1848061 (= c!1045460 ((_ is EmptyExpr!15939) (regOne!32391 (regTwo!32391 r!7292))))))

(declare-fun e!3607145 () Bool)

(assert (=> d!1848061 (= (matchRSpec!3040 (regOne!32391 (regTwo!32391 r!7292)) s!2326) e!3607145)))

(declare-fun bm!464304 () Bool)

(declare-fun call!464308 () Bool)

(assert (=> bm!464304 (= call!464308 (isEmpty!35852 s!2326))))

(declare-fun b!5886911 () Bool)

(declare-fun e!3607146 () Bool)

(assert (=> b!5886911 (= e!3607146 (matchRSpec!3040 (regTwo!32391 (regOne!32391 (regTwo!32391 r!7292))) s!2326))))

(declare-fun b!5886912 () Bool)

(assert (=> b!5886912 (= e!3607141 (= s!2326 (Cons!63993 (c!1045073 (regOne!32391 (regTwo!32391 r!7292))) Nil!63993)))))

(declare-fun b!5886913 () Bool)

(assert (=> b!5886913 (= e!3607142 e!3607144)))

(assert (=> b!5886913 (= c!1045459 ((_ is Star!15939) (regOne!32391 (regTwo!32391 r!7292))))))

(declare-fun b!5886914 () Bool)

(declare-fun res!2472542 () Bool)

(declare-fun e!3607140 () Bool)

(assert (=> b!5886914 (=> res!2472542 e!3607140)))

(assert (=> b!5886914 (= res!2472542 call!464308)))

(assert (=> b!5886914 (= e!3607144 e!3607140)))

(declare-fun b!5886915 () Bool)

(assert (=> b!5886915 (= e!3607145 call!464308)))

(declare-fun b!5886916 () Bool)

(declare-fun c!1045462 () Bool)

(assert (=> b!5886916 (= c!1045462 ((_ is ElementMatch!15939) (regOne!32391 (regTwo!32391 r!7292))))))

(declare-fun e!3607143 () Bool)

(assert (=> b!5886916 (= e!3607143 e!3607141)))

(declare-fun b!5886917 () Bool)

(assert (=> b!5886917 (= e!3607142 e!3607146)))

(declare-fun res!2472541 () Bool)

(assert (=> b!5886917 (= res!2472541 (matchRSpec!3040 (regOne!32391 (regOne!32391 (regTwo!32391 r!7292))) s!2326))))

(assert (=> b!5886917 (=> res!2472541 e!3607146)))

(declare-fun b!5886918 () Bool)

(assert (=> b!5886918 (= e!3607145 e!3607143)))

(declare-fun res!2472543 () Bool)

(assert (=> b!5886918 (= res!2472543 (not ((_ is EmptyLang!15939) (regOne!32391 (regTwo!32391 r!7292)))))))

(assert (=> b!5886918 (=> (not res!2472543) (not e!3607143))))

(assert (=> b!5886919 (= e!3607140 call!464309)))

(assert (= (and d!1848061 c!1045460) b!5886915))

(assert (= (and d!1848061 (not c!1045460)) b!5886918))

(assert (= (and b!5886918 res!2472543) b!5886916))

(assert (= (and b!5886916 c!1045462) b!5886912))

(assert (= (and b!5886916 (not c!1045462)) b!5886910))

(assert (= (and b!5886910 c!1045461) b!5886917))

(assert (= (and b!5886910 (not c!1045461)) b!5886913))

(assert (= (and b!5886917 (not res!2472541)) b!5886911))

(assert (= (and b!5886913 c!1045459) b!5886914))

(assert (= (and b!5886913 (not c!1045459)) b!5886909))

(assert (= (and b!5886914 (not res!2472542)) b!5886919))

(assert (= (or b!5886919 b!5886909) bm!464303))

(assert (= (or b!5886915 b!5886914) bm!464304))

(declare-fun m!6795430 () Bool)

(assert (=> bm!464303 m!6795430))

(assert (=> bm!464304 m!6794582))

(declare-fun m!6795432 () Bool)

(assert (=> b!5886911 m!6795432))

(declare-fun m!6795434 () Bool)

(assert (=> b!5886917 m!6795434))

(assert (=> b!5885772 d!1848061))

(declare-fun d!1848063 () Bool)

(assert (=> d!1848063 (= (isEmpty!35854 (t!377497 (unfocusZipperList!1360 zl!343))) ((_ is Nil!63992) (t!377497 (unfocusZipperList!1360 zl!343))))))

(assert (=> b!5886185 d!1848063))

(declare-fun d!1848065 () Bool)

(declare-fun choose!44513 (Int) Bool)

(assert (=> d!1848065 (= (Exists!3011 (ite c!1045133 lambda!321412 lambda!321413)) (choose!44513 (ite c!1045133 lambda!321412 lambda!321413)))))

(declare-fun bs!1390745 () Bool)

(assert (= bs!1390745 d!1848065))

(declare-fun m!6795436 () Bool)

(assert (=> bs!1390745 m!6795436))

(assert (=> bm!464095 d!1848065))

(assert (=> bs!1390525 d!1847767))

(assert (=> bm!464129 d!1848045))

(declare-fun d!1848067 () Bool)

(assert (=> d!1848067 (= ($colon$colon!1844 (exprs!5823 lt!2307219) (ite (or c!1045240 c!1045243) (regTwo!32390 (regTwo!32391 r!7292)) (regTwo!32391 r!7292))) (Cons!63992 (ite (or c!1045240 c!1045243) (regTwo!32390 (regTwo!32391 r!7292)) (regTwo!32391 r!7292)) (exprs!5823 lt!2307219)))))

(assert (=> bm!464147 d!1848067))

(declare-fun d!1848069 () Bool)

(assert (=> d!1848069 (= (isEmpty!35854 (tail!11518 (exprs!5823 (h!70442 zl!343)))) ((_ is Nil!63992) (tail!11518 (exprs!5823 (h!70442 zl!343)))))))

(assert (=> b!5886283 d!1848069))

(declare-fun d!1848071 () Bool)

(assert (=> d!1848071 (= (tail!11518 (exprs!5823 (h!70442 zl!343))) (t!377497 (exprs!5823 (h!70442 zl!343))))))

(assert (=> b!5886283 d!1848071))

(declare-fun d!1848073 () Bool)

(assert (=> d!1848073 true))

(declare-fun setRes!39921 () Bool)

(assert (=> d!1848073 setRes!39921))

(declare-fun condSetEmpty!39921 () Bool)

(declare-fun res!2472544 () (InoxSet Context!10646))

(assert (=> d!1848073 (= condSetEmpty!39921 (= res!2472544 ((as const (Array Context!10646 Bool)) false)))))

(assert (=> d!1848073 (= (choose!44509 lt!2307222 lambda!321393) res!2472544)))

(declare-fun setIsEmpty!39921 () Bool)

(assert (=> setIsEmpty!39921 setRes!39921))

(declare-fun e!3607147 () Bool)

(declare-fun setElem!39921 () Context!10646)

(declare-fun tp!1631921 () Bool)

(declare-fun setNonEmpty!39921 () Bool)

(assert (=> setNonEmpty!39921 (= setRes!39921 (and tp!1631921 (inv!83094 setElem!39921) e!3607147))))

(declare-fun setRest!39921 () (InoxSet Context!10646))

(assert (=> setNonEmpty!39921 (= res!2472544 ((_ map or) (store ((as const (Array Context!10646 Bool)) false) setElem!39921 true) setRest!39921))))

(declare-fun b!5886920 () Bool)

(declare-fun tp!1631920 () Bool)

(assert (=> b!5886920 (= e!3607147 tp!1631920)))

(assert (= (and d!1848073 condSetEmpty!39921) setIsEmpty!39921))

(assert (= (and d!1848073 (not condSetEmpty!39921)) setNonEmpty!39921))

(assert (= setNonEmpty!39921 b!5886920))

(declare-fun m!6795438 () Bool)

(assert (=> setNonEmpty!39921 m!6795438))

(assert (=> d!1847769 d!1848073))

(declare-fun d!1848075 () Bool)

(assert (=> d!1848075 (= (isEmpty!35852 (tail!11516 s!2326)) ((_ is Nil!63993) (tail!11516 s!2326)))))

(assert (=> b!5885987 d!1848075))

(declare-fun d!1848077 () Bool)

(assert (=> d!1848077 (= (tail!11516 s!2326) (t!377498 s!2326))))

(assert (=> b!5885987 d!1848077))

(declare-fun b!5886921 () Bool)

(declare-fun e!3607152 () Bool)

(declare-fun e!3607151 () Bool)

(assert (=> b!5886921 (= e!3607152 e!3607151)))

(declare-fun res!2472548 () Bool)

(assert (=> b!5886921 (= res!2472548 (not (nullable!5939 (reg!16268 lt!2307285))))))

(assert (=> b!5886921 (=> (not res!2472548) (not e!3607151))))

(declare-fun b!5886922 () Bool)

(declare-fun e!3607153 () Bool)

(declare-fun e!3607148 () Bool)

(assert (=> b!5886922 (= e!3607153 e!3607148)))

(declare-fun res!2472545 () Bool)

(assert (=> b!5886922 (=> (not res!2472545) (not e!3607148))))

(declare-fun call!464310 () Bool)

(assert (=> b!5886922 (= res!2472545 call!464310)))

(declare-fun bm!464305 () Bool)

(declare-fun c!1045464 () Bool)

(assert (=> bm!464305 (= call!464310 (validRegex!7675 (ite c!1045464 (regOne!32391 lt!2307285) (regOne!32390 lt!2307285))))))

(declare-fun d!1848079 () Bool)

(declare-fun res!2472547 () Bool)

(declare-fun e!3607154 () Bool)

(assert (=> d!1848079 (=> res!2472547 e!3607154)))

(assert (=> d!1848079 (= res!2472547 ((_ is ElementMatch!15939) lt!2307285))))

(assert (=> d!1848079 (= (validRegex!7675 lt!2307285) e!3607154)))

(declare-fun b!5886923 () Bool)

(declare-fun e!3607149 () Bool)

(declare-fun call!464312 () Bool)

(assert (=> b!5886923 (= e!3607149 call!464312)))

(declare-fun b!5886924 () Bool)

(assert (=> b!5886924 (= e!3607154 e!3607152)))

(declare-fun c!1045463 () Bool)

(assert (=> b!5886924 (= c!1045463 ((_ is Star!15939) lt!2307285))))

(declare-fun b!5886925 () Bool)

(declare-fun res!2472549 () Bool)

(assert (=> b!5886925 (=> (not res!2472549) (not e!3607149))))

(assert (=> b!5886925 (= res!2472549 call!464310)))

(declare-fun e!3607150 () Bool)

(assert (=> b!5886925 (= e!3607150 e!3607149)))

(declare-fun b!5886926 () Bool)

(assert (=> b!5886926 (= e!3607148 call!464312)))

(declare-fun b!5886927 () Bool)

(declare-fun res!2472546 () Bool)

(assert (=> b!5886927 (=> res!2472546 e!3607153)))

(assert (=> b!5886927 (= res!2472546 (not ((_ is Concat!24784) lt!2307285)))))

(assert (=> b!5886927 (= e!3607150 e!3607153)))

(declare-fun b!5886928 () Bool)

(assert (=> b!5886928 (= e!3607152 e!3607150)))

(assert (=> b!5886928 (= c!1045464 ((_ is Union!15939) lt!2307285))))

(declare-fun call!464311 () Bool)

(declare-fun bm!464306 () Bool)

(assert (=> bm!464306 (= call!464311 (validRegex!7675 (ite c!1045463 (reg!16268 lt!2307285) (ite c!1045464 (regTwo!32391 lt!2307285) (regTwo!32390 lt!2307285)))))))

(declare-fun bm!464307 () Bool)

(assert (=> bm!464307 (= call!464312 call!464311)))

(declare-fun b!5886929 () Bool)

(assert (=> b!5886929 (= e!3607151 call!464311)))

(assert (= (and d!1848079 (not res!2472547)) b!5886924))

(assert (= (and b!5886924 c!1045463) b!5886921))

(assert (= (and b!5886924 (not c!1045463)) b!5886928))

(assert (= (and b!5886921 res!2472548) b!5886929))

(assert (= (and b!5886928 c!1045464) b!5886925))

(assert (= (and b!5886928 (not c!1045464)) b!5886927))

(assert (= (and b!5886925 res!2472549) b!5886923))

(assert (= (and b!5886927 (not res!2472546)) b!5886922))

(assert (= (and b!5886922 res!2472545) b!5886926))

(assert (= (or b!5886923 b!5886926) bm!464307))

(assert (= (or b!5886925 b!5886922) bm!464305))

(assert (= (or b!5886929 bm!464307) bm!464306))

(declare-fun m!6795440 () Bool)

(assert (=> b!5886921 m!6795440))

(declare-fun m!6795442 () Bool)

(assert (=> bm!464305 m!6795442))

(declare-fun m!6795444 () Bool)

(assert (=> bm!464306 m!6795444))

(assert (=> d!1847755 d!1848079))

(declare-fun d!1848081 () Bool)

(declare-fun res!2472554 () Bool)

(declare-fun e!3607159 () Bool)

(assert (=> d!1848081 (=> res!2472554 e!3607159)))

(assert (=> d!1848081 (= res!2472554 ((_ is Nil!63992) (unfocusZipperList!1360 zl!343)))))

(assert (=> d!1848081 (= (forall!15026 (unfocusZipperList!1360 zl!343) lambda!321437) e!3607159)))

(declare-fun b!5886934 () Bool)

(declare-fun e!3607160 () Bool)

(assert (=> b!5886934 (= e!3607159 e!3607160)))

(declare-fun res!2472555 () Bool)

(assert (=> b!5886934 (=> (not res!2472555) (not e!3607160))))

(declare-fun dynLambda!25033 (Int Regex!15939) Bool)

(assert (=> b!5886934 (= res!2472555 (dynLambda!25033 lambda!321437 (h!70440 (unfocusZipperList!1360 zl!343))))))

(declare-fun b!5886935 () Bool)

(assert (=> b!5886935 (= e!3607160 (forall!15026 (t!377497 (unfocusZipperList!1360 zl!343)) lambda!321437))))

(assert (= (and d!1848081 (not res!2472554)) b!5886934))

(assert (= (and b!5886934 res!2472555) b!5886935))

(declare-fun b_lambda!221473 () Bool)

(assert (=> (not b_lambda!221473) (not b!5886934)))

(declare-fun m!6795446 () Bool)

(assert (=> b!5886934 m!6795446))

(declare-fun m!6795448 () Bool)

(assert (=> b!5886935 m!6795448))

(assert (=> d!1847755 d!1848081))

(assert (=> d!1847763 d!1848045))

(assert (=> bm!464119 d!1848045))

(assert (=> b!5886060 d!1848075))

(assert (=> b!5886060 d!1848077))

(declare-fun bs!1390746 () Bool)

(declare-fun d!1848083 () Bool)

(assert (= bs!1390746 (and d!1848083 d!1848053)))

(declare-fun lambda!321481 () Int)

(assert (=> bs!1390746 (= lambda!321481 lambda!321477)))

(declare-fun bs!1390747 () Bool)

(assert (= bs!1390747 (and d!1848083 d!1848057)))

(assert (=> bs!1390747 (= lambda!321481 lambda!321478)))

(assert (=> d!1848083 (= (nullableZipper!1777 z!1189) (exists!2326 z!1189 lambda!321481))))

(declare-fun bs!1390748 () Bool)

(assert (= bs!1390748 d!1848083))

(declare-fun m!6795450 () Bool)

(assert (=> bs!1390748 m!6795450))

(assert (=> b!5886005 d!1848083))

(declare-fun bs!1390749 () Bool)

(declare-fun b!5886946 () Bool)

(assert (= bs!1390749 (and b!5886946 b!5886919)))

(declare-fun lambda!321482 () Int)

(assert (=> bs!1390749 (= (and (= (reg!16268 (regTwo!32391 (regOne!32391 r!7292))) (reg!16268 (regOne!32391 (regTwo!32391 r!7292)))) (= (regTwo!32391 (regOne!32391 r!7292)) (regOne!32391 (regTwo!32391 r!7292)))) (= lambda!321482 lambda!321479))))

(declare-fun bs!1390750 () Bool)

(assert (= bs!1390750 (and b!5886946 b!5886025)))

(assert (=> bs!1390750 (= (and (= (reg!16268 (regTwo!32391 (regOne!32391 r!7292))) (reg!16268 r!7292)) (= (regTwo!32391 (regOne!32391 r!7292)) r!7292)) (= lambda!321482 lambda!321432))))

(declare-fun bs!1390751 () Bool)

(assert (= bs!1390751 (and b!5886946 b!5885764)))

(assert (=> bs!1390751 (not (= lambda!321482 lambda!321413))))

(declare-fun bs!1390752 () Bool)

(assert (= bs!1390752 (and b!5886946 b!5885953)))

(assert (=> bs!1390752 (= (and (= (reg!16268 (regTwo!32391 (regOne!32391 r!7292))) (reg!16268 (regOne!32391 r!7292))) (= (regTwo!32391 (regOne!32391 r!7292)) (regOne!32391 r!7292))) (= lambda!321482 lambda!321424))))

(declare-fun bs!1390753 () Bool)

(assert (= bs!1390753 (and b!5886946 b!5885774)))

(assert (=> bs!1390753 (= (and (= (reg!16268 (regTwo!32391 (regOne!32391 r!7292))) (reg!16268 (regTwo!32391 r!7292))) (= (regTwo!32391 (regOne!32391 r!7292)) (regTwo!32391 r!7292))) (= lambda!321482 lambda!321412))))

(declare-fun bs!1390754 () Bool)

(assert (= bs!1390754 (and b!5886946 b!5886015)))

(assert (=> bs!1390754 (not (= lambda!321482 lambda!321433))))

(declare-fun bs!1390755 () Bool)

(assert (= bs!1390755 (and b!5886946 b!5885943)))

(assert (=> bs!1390755 (not (= lambda!321482 lambda!321425))))

(declare-fun bs!1390756 () Bool)

(assert (= bs!1390756 (and b!5886946 b!5886909)))

(assert (=> bs!1390756 (not (= lambda!321482 lambda!321480))))

(assert (=> b!5886946 true))

(assert (=> b!5886946 true))

(declare-fun bs!1390757 () Bool)

(declare-fun b!5886936 () Bool)

(assert (= bs!1390757 (and b!5886936 b!5886919)))

(declare-fun lambda!321483 () Int)

(assert (=> bs!1390757 (not (= lambda!321483 lambda!321479))))

(declare-fun bs!1390758 () Bool)

(assert (= bs!1390758 (and b!5886936 b!5886025)))

(assert (=> bs!1390758 (not (= lambda!321483 lambda!321432))))

(declare-fun bs!1390759 () Bool)

(assert (= bs!1390759 (and b!5886936 b!5885764)))

(assert (=> bs!1390759 (= (and (= (regOne!32390 (regTwo!32391 (regOne!32391 r!7292))) (regOne!32390 (regTwo!32391 r!7292))) (= (regTwo!32390 (regTwo!32391 (regOne!32391 r!7292))) (regTwo!32390 (regTwo!32391 r!7292)))) (= lambda!321483 lambda!321413))))

(declare-fun bs!1390760 () Bool)

(assert (= bs!1390760 (and b!5886936 b!5885953)))

(assert (=> bs!1390760 (not (= lambda!321483 lambda!321424))))

(declare-fun bs!1390761 () Bool)

(assert (= bs!1390761 (and b!5886936 b!5885774)))

(assert (=> bs!1390761 (not (= lambda!321483 lambda!321412))))

(declare-fun bs!1390762 () Bool)

(assert (= bs!1390762 (and b!5886936 b!5886946)))

(assert (=> bs!1390762 (not (= lambda!321483 lambda!321482))))

(declare-fun bs!1390763 () Bool)

(assert (= bs!1390763 (and b!5886936 b!5886015)))

(assert (=> bs!1390763 (= (and (= (regOne!32390 (regTwo!32391 (regOne!32391 r!7292))) (regOne!32390 r!7292)) (= (regTwo!32390 (regTwo!32391 (regOne!32391 r!7292))) (regTwo!32390 r!7292))) (= lambda!321483 lambda!321433))))

(declare-fun bs!1390764 () Bool)

(assert (= bs!1390764 (and b!5886936 b!5885943)))

(assert (=> bs!1390764 (= (and (= (regOne!32390 (regTwo!32391 (regOne!32391 r!7292))) (regOne!32390 (regOne!32391 r!7292))) (= (regTwo!32390 (regTwo!32391 (regOne!32391 r!7292))) (regTwo!32390 (regOne!32391 r!7292)))) (= lambda!321483 lambda!321425))))

(declare-fun bs!1390765 () Bool)

(assert (= bs!1390765 (and b!5886936 b!5886909)))

(assert (=> bs!1390765 (= (and (= (regOne!32390 (regTwo!32391 (regOne!32391 r!7292))) (regOne!32390 (regOne!32391 (regTwo!32391 r!7292)))) (= (regTwo!32390 (regTwo!32391 (regOne!32391 r!7292))) (regTwo!32390 (regOne!32391 (regTwo!32391 r!7292))))) (= lambda!321483 lambda!321480))))

(assert (=> b!5886936 true))

(assert (=> b!5886936 true))

(declare-fun e!3607165 () Bool)

(declare-fun call!464314 () Bool)

(assert (=> b!5886936 (= e!3607165 call!464314)))

(declare-fun b!5886937 () Bool)

(declare-fun c!1045467 () Bool)

(assert (=> b!5886937 (= c!1045467 ((_ is Union!15939) (regTwo!32391 (regOne!32391 r!7292))))))

(declare-fun e!3607162 () Bool)

(declare-fun e!3607163 () Bool)

(assert (=> b!5886937 (= e!3607162 e!3607163)))

(declare-fun c!1045465 () Bool)

(declare-fun bm!464308 () Bool)

(assert (=> bm!464308 (= call!464314 (Exists!3011 (ite c!1045465 lambda!321482 lambda!321483)))))

(declare-fun d!1848085 () Bool)

(declare-fun c!1045466 () Bool)

(assert (=> d!1848085 (= c!1045466 ((_ is EmptyExpr!15939) (regTwo!32391 (regOne!32391 r!7292))))))

(declare-fun e!3607166 () Bool)

(assert (=> d!1848085 (= (matchRSpec!3040 (regTwo!32391 (regOne!32391 r!7292)) s!2326) e!3607166)))

(declare-fun bm!464309 () Bool)

(declare-fun call!464313 () Bool)

(assert (=> bm!464309 (= call!464313 (isEmpty!35852 s!2326))))

(declare-fun b!5886938 () Bool)

(declare-fun e!3607167 () Bool)

(assert (=> b!5886938 (= e!3607167 (matchRSpec!3040 (regTwo!32391 (regTwo!32391 (regOne!32391 r!7292))) s!2326))))

(declare-fun b!5886939 () Bool)

(assert (=> b!5886939 (= e!3607162 (= s!2326 (Cons!63993 (c!1045073 (regTwo!32391 (regOne!32391 r!7292))) Nil!63993)))))

(declare-fun b!5886940 () Bool)

(assert (=> b!5886940 (= e!3607163 e!3607165)))

(assert (=> b!5886940 (= c!1045465 ((_ is Star!15939) (regTwo!32391 (regOne!32391 r!7292))))))

(declare-fun b!5886941 () Bool)

(declare-fun res!2472557 () Bool)

(declare-fun e!3607161 () Bool)

(assert (=> b!5886941 (=> res!2472557 e!3607161)))

(assert (=> b!5886941 (= res!2472557 call!464313)))

(assert (=> b!5886941 (= e!3607165 e!3607161)))

(declare-fun b!5886942 () Bool)

(assert (=> b!5886942 (= e!3607166 call!464313)))

(declare-fun b!5886943 () Bool)

(declare-fun c!1045468 () Bool)

(assert (=> b!5886943 (= c!1045468 ((_ is ElementMatch!15939) (regTwo!32391 (regOne!32391 r!7292))))))

(declare-fun e!3607164 () Bool)

(assert (=> b!5886943 (= e!3607164 e!3607162)))

(declare-fun b!5886944 () Bool)

(assert (=> b!5886944 (= e!3607163 e!3607167)))

(declare-fun res!2472556 () Bool)

(assert (=> b!5886944 (= res!2472556 (matchRSpec!3040 (regOne!32391 (regTwo!32391 (regOne!32391 r!7292))) s!2326))))

(assert (=> b!5886944 (=> res!2472556 e!3607167)))

(declare-fun b!5886945 () Bool)

(assert (=> b!5886945 (= e!3607166 e!3607164)))

(declare-fun res!2472558 () Bool)

(assert (=> b!5886945 (= res!2472558 (not ((_ is EmptyLang!15939) (regTwo!32391 (regOne!32391 r!7292)))))))

(assert (=> b!5886945 (=> (not res!2472558) (not e!3607164))))

(assert (=> b!5886946 (= e!3607161 call!464314)))

(assert (= (and d!1848085 c!1045466) b!5886942))

(assert (= (and d!1848085 (not c!1045466)) b!5886945))

(assert (= (and b!5886945 res!2472558) b!5886943))

(assert (= (and b!5886943 c!1045468) b!5886939))

(assert (= (and b!5886943 (not c!1045468)) b!5886937))

(assert (= (and b!5886937 c!1045467) b!5886944))

(assert (= (and b!5886937 (not c!1045467)) b!5886940))

(assert (= (and b!5886944 (not res!2472556)) b!5886938))

(assert (= (and b!5886940 c!1045465) b!5886941))

(assert (= (and b!5886940 (not c!1045465)) b!5886936))

(assert (= (and b!5886941 (not res!2472557)) b!5886946))

(assert (= (or b!5886946 b!5886936) bm!464308))

(assert (= (or b!5886942 b!5886941) bm!464309))

(declare-fun m!6795452 () Bool)

(assert (=> bm!464308 m!6795452))

(assert (=> bm!464309 m!6794582))

(declare-fun m!6795454 () Bool)

(assert (=> b!5886938 m!6795454))

(declare-fun m!6795456 () Bool)

(assert (=> b!5886944 m!6795456))

(assert (=> b!5885945 d!1848085))

(declare-fun d!1848087 () Bool)

(assert (=> d!1848087 (= (isEmpty!35854 (t!377497 (exprs!5823 (h!70442 zl!343)))) ((_ is Nil!63992) (t!377497 (exprs!5823 (h!70442 zl!343)))))))

(assert (=> b!5886279 d!1848087))

(declare-fun b!5886947 () Bool)

(declare-fun e!3607172 () Bool)

(declare-fun e!3607171 () Bool)

(assert (=> b!5886947 (= e!3607172 e!3607171)))

(declare-fun res!2472562 () Bool)

(assert (=> b!5886947 (= res!2472562 (not (nullable!5939 (reg!16268 (ite c!1045278 (regOne!32391 r!7292) (regOne!32390 r!7292))))))))

(assert (=> b!5886947 (=> (not res!2472562) (not e!3607171))))

(declare-fun b!5886948 () Bool)

(declare-fun e!3607173 () Bool)

(declare-fun e!3607168 () Bool)

(assert (=> b!5886948 (= e!3607173 e!3607168)))

(declare-fun res!2472559 () Bool)

(assert (=> b!5886948 (=> (not res!2472559) (not e!3607168))))

(declare-fun call!464315 () Bool)

(assert (=> b!5886948 (= res!2472559 call!464315)))

(declare-fun c!1045470 () Bool)

(declare-fun bm!464310 () Bool)

(assert (=> bm!464310 (= call!464315 (validRegex!7675 (ite c!1045470 (regOne!32391 (ite c!1045278 (regOne!32391 r!7292) (regOne!32390 r!7292))) (regOne!32390 (ite c!1045278 (regOne!32391 r!7292) (regOne!32390 r!7292))))))))

(declare-fun d!1848089 () Bool)

(declare-fun res!2472561 () Bool)

(declare-fun e!3607174 () Bool)

(assert (=> d!1848089 (=> res!2472561 e!3607174)))

(assert (=> d!1848089 (= res!2472561 ((_ is ElementMatch!15939) (ite c!1045278 (regOne!32391 r!7292) (regOne!32390 r!7292))))))

(assert (=> d!1848089 (= (validRegex!7675 (ite c!1045278 (regOne!32391 r!7292) (regOne!32390 r!7292))) e!3607174)))

(declare-fun b!5886949 () Bool)

(declare-fun e!3607169 () Bool)

(declare-fun call!464317 () Bool)

(assert (=> b!5886949 (= e!3607169 call!464317)))

(declare-fun b!5886950 () Bool)

(assert (=> b!5886950 (= e!3607174 e!3607172)))

(declare-fun c!1045469 () Bool)

(assert (=> b!5886950 (= c!1045469 ((_ is Star!15939) (ite c!1045278 (regOne!32391 r!7292) (regOne!32390 r!7292))))))

(declare-fun b!5886951 () Bool)

(declare-fun res!2472563 () Bool)

(assert (=> b!5886951 (=> (not res!2472563) (not e!3607169))))

(assert (=> b!5886951 (= res!2472563 call!464315)))

(declare-fun e!3607170 () Bool)

(assert (=> b!5886951 (= e!3607170 e!3607169)))

(declare-fun b!5886952 () Bool)

(assert (=> b!5886952 (= e!3607168 call!464317)))

(declare-fun b!5886953 () Bool)

(declare-fun res!2472560 () Bool)

(assert (=> b!5886953 (=> res!2472560 e!3607173)))

(assert (=> b!5886953 (= res!2472560 (not ((_ is Concat!24784) (ite c!1045278 (regOne!32391 r!7292) (regOne!32390 r!7292)))))))

(assert (=> b!5886953 (= e!3607170 e!3607173)))

(declare-fun b!5886954 () Bool)

(assert (=> b!5886954 (= e!3607172 e!3607170)))

(assert (=> b!5886954 (= c!1045470 ((_ is Union!15939) (ite c!1045278 (regOne!32391 r!7292) (regOne!32390 r!7292))))))

(declare-fun bm!464311 () Bool)

(declare-fun call!464316 () Bool)

(assert (=> bm!464311 (= call!464316 (validRegex!7675 (ite c!1045469 (reg!16268 (ite c!1045278 (regOne!32391 r!7292) (regOne!32390 r!7292))) (ite c!1045470 (regTwo!32391 (ite c!1045278 (regOne!32391 r!7292) (regOne!32390 r!7292))) (regTwo!32390 (ite c!1045278 (regOne!32391 r!7292) (regOne!32390 r!7292)))))))))

(declare-fun bm!464312 () Bool)

(assert (=> bm!464312 (= call!464317 call!464316)))

(declare-fun b!5886955 () Bool)

(assert (=> b!5886955 (= e!3607171 call!464316)))

(assert (= (and d!1848089 (not res!2472561)) b!5886950))

(assert (= (and b!5886950 c!1045469) b!5886947))

(assert (= (and b!5886950 (not c!1045469)) b!5886954))

(assert (= (and b!5886947 res!2472562) b!5886955))

(assert (= (and b!5886954 c!1045470) b!5886951))

(assert (= (and b!5886954 (not c!1045470)) b!5886953))

(assert (= (and b!5886951 res!2472563) b!5886949))

(assert (= (and b!5886953 (not res!2472560)) b!5886948))

(assert (= (and b!5886948 res!2472559) b!5886952))

(assert (= (or b!5886949 b!5886952) bm!464312))

(assert (= (or b!5886951 b!5886948) bm!464310))

(assert (= (or b!5886955 bm!464312) bm!464311))

(declare-fun m!6795458 () Bool)

(assert (=> b!5886947 m!6795458))

(declare-fun m!6795460 () Bool)

(assert (=> bm!464310 m!6795460))

(declare-fun m!6795462 () Bool)

(assert (=> bm!464311 m!6795462))

(assert (=> bm!464164 d!1848089))

(declare-fun bm!464313 () Bool)

(declare-fun call!464321 () (InoxSet Context!10646))

(declare-fun call!464318 () (InoxSet Context!10646))

(assert (=> bm!464313 (= call!464321 call!464318)))

(declare-fun b!5886956 () Bool)

(declare-fun e!3607176 () (InoxSet Context!10646))

(declare-fun call!464319 () (InoxSet Context!10646))

(assert (=> b!5886956 (= e!3607176 ((_ map or) call!464319 call!464318))))

(declare-fun c!1045473 () Bool)

(declare-fun b!5886958 () Bool)

(assert (=> b!5886958 (= c!1045473 ((_ is Star!15939) (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292))))))))

(declare-fun e!3607175 () (InoxSet Context!10646))

(declare-fun e!3607177 () (InoxSet Context!10646))

(assert (=> b!5886958 (= e!3607175 e!3607177)))

(declare-fun e!3607179 () (InoxSet Context!10646))

(declare-fun b!5886959 () Bool)

(assert (=> b!5886959 (= e!3607179 (store ((as const (Array Context!10646 Bool)) false) (ite (or c!1045300 c!1045298) lt!2307219 (Context!10647 call!464178)) true))))

(declare-fun b!5886960 () Bool)

(declare-fun c!1045472 () Bool)

(declare-fun e!3607180 () Bool)

(assert (=> b!5886960 (= c!1045472 e!3607180)))

(declare-fun res!2472564 () Bool)

(assert (=> b!5886960 (=> (not res!2472564) (not e!3607180))))

(assert (=> b!5886960 (= res!2472564 ((_ is Concat!24784) (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292))))))))

(declare-fun e!3607178 () (InoxSet Context!10646))

(assert (=> b!5886960 (= e!3607178 e!3607176)))

(declare-fun bm!464314 () Bool)

(declare-fun call!464323 () List!64116)

(declare-fun call!464322 () List!64116)

(assert (=> bm!464314 (= call!464323 call!464322)))

(declare-fun c!1045474 () Bool)

(declare-fun bm!464315 () Bool)

(assert (=> bm!464315 (= call!464319 (derivationStepZipperDown!1205 (ite c!1045474 (regOne!32391 (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292))))) (regOne!32390 (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292)))))) (ite c!1045474 (ite (or c!1045300 c!1045298) lt!2307219 (Context!10647 call!464178)) (Context!10647 call!464322)) (h!70441 s!2326)))))

(declare-fun c!1045475 () Bool)

(declare-fun bm!464316 () Bool)

(declare-fun call!464320 () (InoxSet Context!10646))

(assert (=> bm!464316 (= call!464320 (derivationStepZipperDown!1205 (ite c!1045474 (regTwo!32391 (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292))))) (ite c!1045472 (regTwo!32390 (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292))))) (ite c!1045475 (regOne!32390 (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292))))) (reg!16268 (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292)))))))) (ite (or c!1045474 c!1045472) (ite (or c!1045300 c!1045298) lt!2307219 (Context!10647 call!464178)) (Context!10647 call!464323)) (h!70441 s!2326)))))

(declare-fun b!5886961 () Bool)

(assert (=> b!5886961 (= e!3607178 ((_ map or) call!464319 call!464320))))

(declare-fun b!5886962 () Bool)

(assert (=> b!5886962 (= e!3607177 call!464321)))

(declare-fun b!5886963 () Bool)

(assert (=> b!5886963 (= e!3607180 (nullable!5939 (regOne!32390 (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292)))))))))

(declare-fun bm!464317 () Bool)

(assert (=> bm!464317 (= call!464318 call!464320)))

(declare-fun b!5886964 () Bool)

(assert (=> b!5886964 (= e!3607177 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464318 () Bool)

(assert (=> bm!464318 (= call!464322 ($colon$colon!1844 (exprs!5823 (ite (or c!1045300 c!1045298) lt!2307219 (Context!10647 call!464178))) (ite (or c!1045472 c!1045475) (regTwo!32390 (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292))))) (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292)))))))))

(declare-fun b!5886957 () Bool)

(assert (=> b!5886957 (= e!3607175 call!464321)))

(declare-fun d!1848091 () Bool)

(declare-fun c!1045471 () Bool)

(assert (=> d!1848091 (= c!1045471 (and ((_ is ElementMatch!15939) (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292))))) (= (c!1045073 (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292))))) (h!70441 s!2326))))))

(assert (=> d!1848091 (= (derivationStepZipperDown!1205 (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292)))) (ite (or c!1045300 c!1045298) lt!2307219 (Context!10647 call!464178)) (h!70441 s!2326)) e!3607179)))

(declare-fun b!5886965 () Bool)

(assert (=> b!5886965 (= e!3607179 e!3607178)))

(assert (=> b!5886965 (= c!1045474 ((_ is Union!15939) (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292))))))))

(declare-fun b!5886966 () Bool)

(assert (=> b!5886966 (= e!3607176 e!3607175)))

(assert (=> b!5886966 (= c!1045475 ((_ is Concat!24784) (ite c!1045300 (regTwo!32391 r!7292) (ite c!1045298 (regTwo!32390 r!7292) (ite c!1045301 (regOne!32390 r!7292) (reg!16268 r!7292))))))))

(assert (= (and d!1848091 c!1045471) b!5886959))

(assert (= (and d!1848091 (not c!1045471)) b!5886965))

(assert (= (and b!5886965 c!1045474) b!5886961))

(assert (= (and b!5886965 (not c!1045474)) b!5886960))

(assert (= (and b!5886960 res!2472564) b!5886963))

(assert (= (and b!5886960 c!1045472) b!5886956))

(assert (= (and b!5886960 (not c!1045472)) b!5886966))

(assert (= (and b!5886966 c!1045475) b!5886957))

(assert (= (and b!5886966 (not c!1045475)) b!5886958))

(assert (= (and b!5886958 c!1045473) b!5886962))

(assert (= (and b!5886958 (not c!1045473)) b!5886964))

(assert (= (or b!5886957 b!5886962) bm!464314))

(assert (= (or b!5886957 b!5886962) bm!464313))

(assert (= (or b!5886956 bm!464314) bm!464318))

(assert (= (or b!5886956 bm!464313) bm!464317))

(assert (= (or b!5886961 bm!464317) bm!464316))

(assert (= (or b!5886961 b!5886956) bm!464315))

(declare-fun m!6795464 () Bool)

(assert (=> bm!464316 m!6795464))

(declare-fun m!6795466 () Bool)

(assert (=> b!5886963 m!6795466))

(declare-fun m!6795468 () Bool)

(assert (=> bm!464315 m!6795468))

(declare-fun m!6795470 () Bool)

(assert (=> bm!464318 m!6795470))

(declare-fun m!6795472 () Bool)

(assert (=> b!5886959 m!6795472))

(assert (=> bm!464171 d!1848091))

(declare-fun d!1848093 () Bool)

(declare-fun nullableFct!1924 (Regex!15939) Bool)

(assert (=> d!1848093 (= (nullable!5939 (h!70440 (exprs!5823 lt!2307204))) (nullableFct!1924 (h!70440 (exprs!5823 lt!2307204))))))

(declare-fun bs!1390766 () Bool)

(assert (= bs!1390766 d!1848093))

(declare-fun m!6795474 () Bool)

(assert (=> bs!1390766 m!6795474))

(assert (=> b!5886212 d!1848093))

(declare-fun d!1848095 () Bool)

(assert (=> d!1848095 (= (head!12431 s!2326) (h!70441 s!2326))))

(assert (=> b!5885908 d!1848095))

(declare-fun d!1848097 () Bool)

(assert (=> d!1848097 (= (nullable!5939 (h!70440 (exprs!5823 lt!2307214))) (nullableFct!1924 (h!70440 (exprs!5823 lt!2307214))))))

(declare-fun bs!1390767 () Bool)

(assert (= bs!1390767 d!1848097))

(declare-fun m!6795476 () Bool)

(assert (=> bs!1390767 m!6795476))

(assert (=> b!5886207 d!1848097))

(declare-fun d!1848099 () Bool)

(assert (=> d!1848099 (= (isUnion!812 lt!2307285) ((_ is Union!15939) lt!2307285))))

(assert (=> b!5886184 d!1848099))

(assert (=> d!1847665 d!1847711))

(assert (=> d!1847665 d!1847707))

(declare-fun d!1848101 () Bool)

(assert (=> d!1848101 (= (matchR!8122 (regOne!32391 r!7292) s!2326) (matchRSpec!3040 (regOne!32391 r!7292) s!2326))))

(assert (=> d!1848101 true))

(declare-fun _$88!4348 () Unit!157149)

(assert (=> d!1848101 (= (choose!44502 (regOne!32391 r!7292) s!2326) _$88!4348)))

(declare-fun bs!1390768 () Bool)

(assert (= bs!1390768 d!1848101))

(assert (=> bs!1390768 m!6794408))

(assert (=> bs!1390768 m!6794404))

(assert (=> d!1847665 d!1848101))

(declare-fun b!5886967 () Bool)

(declare-fun e!3607185 () Bool)

(declare-fun e!3607184 () Bool)

(assert (=> b!5886967 (= e!3607185 e!3607184)))

(declare-fun res!2472568 () Bool)

(assert (=> b!5886967 (= res!2472568 (not (nullable!5939 (reg!16268 (regOne!32391 r!7292)))))))

(assert (=> b!5886967 (=> (not res!2472568) (not e!3607184))))

(declare-fun b!5886968 () Bool)

(declare-fun e!3607186 () Bool)

(declare-fun e!3607181 () Bool)

(assert (=> b!5886968 (= e!3607186 e!3607181)))

(declare-fun res!2472565 () Bool)

(assert (=> b!5886968 (=> (not res!2472565) (not e!3607181))))

(declare-fun call!464324 () Bool)

(assert (=> b!5886968 (= res!2472565 call!464324)))

(declare-fun bm!464319 () Bool)

(declare-fun c!1045477 () Bool)

(assert (=> bm!464319 (= call!464324 (validRegex!7675 (ite c!1045477 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))))))

(declare-fun d!1848103 () Bool)

(declare-fun res!2472567 () Bool)

(declare-fun e!3607187 () Bool)

(assert (=> d!1848103 (=> res!2472567 e!3607187)))

(assert (=> d!1848103 (= res!2472567 ((_ is ElementMatch!15939) (regOne!32391 r!7292)))))

(assert (=> d!1848103 (= (validRegex!7675 (regOne!32391 r!7292)) e!3607187)))

(declare-fun b!5886969 () Bool)

(declare-fun e!3607182 () Bool)

(declare-fun call!464326 () Bool)

(assert (=> b!5886969 (= e!3607182 call!464326)))

(declare-fun b!5886970 () Bool)

(assert (=> b!5886970 (= e!3607187 e!3607185)))

(declare-fun c!1045476 () Bool)

(assert (=> b!5886970 (= c!1045476 ((_ is Star!15939) (regOne!32391 r!7292)))))

(declare-fun b!5886971 () Bool)

(declare-fun res!2472569 () Bool)

(assert (=> b!5886971 (=> (not res!2472569) (not e!3607182))))

(assert (=> b!5886971 (= res!2472569 call!464324)))

(declare-fun e!3607183 () Bool)

(assert (=> b!5886971 (= e!3607183 e!3607182)))

(declare-fun b!5886972 () Bool)

(assert (=> b!5886972 (= e!3607181 call!464326)))

(declare-fun b!5886973 () Bool)

(declare-fun res!2472566 () Bool)

(assert (=> b!5886973 (=> res!2472566 e!3607186)))

(assert (=> b!5886973 (= res!2472566 (not ((_ is Concat!24784) (regOne!32391 r!7292))))))

(assert (=> b!5886973 (= e!3607183 e!3607186)))

(declare-fun b!5886974 () Bool)

(assert (=> b!5886974 (= e!3607185 e!3607183)))

(assert (=> b!5886974 (= c!1045477 ((_ is Union!15939) (regOne!32391 r!7292)))))

(declare-fun call!464325 () Bool)

(declare-fun bm!464320 () Bool)

(assert (=> bm!464320 (= call!464325 (validRegex!7675 (ite c!1045476 (reg!16268 (regOne!32391 r!7292)) (ite c!1045477 (regTwo!32391 (regOne!32391 r!7292)) (regTwo!32390 (regOne!32391 r!7292))))))))

(declare-fun bm!464321 () Bool)

(assert (=> bm!464321 (= call!464326 call!464325)))

(declare-fun b!5886975 () Bool)

(assert (=> b!5886975 (= e!3607184 call!464325)))

(assert (= (and d!1848103 (not res!2472567)) b!5886970))

(assert (= (and b!5886970 c!1045476) b!5886967))

(assert (= (and b!5886970 (not c!1045476)) b!5886974))

(assert (= (and b!5886967 res!2472568) b!5886975))

(assert (= (and b!5886974 c!1045477) b!5886971))

(assert (= (and b!5886974 (not c!1045477)) b!5886973))

(assert (= (and b!5886971 res!2472569) b!5886969))

(assert (= (and b!5886973 (not res!2472566)) b!5886968))

(assert (= (and b!5886968 res!2472565) b!5886972))

(assert (= (or b!5886969 b!5886972) bm!464321))

(assert (= (or b!5886971 b!5886968) bm!464319))

(assert (= (or b!5886975 bm!464321) bm!464320))

(declare-fun m!6795478 () Bool)

(assert (=> b!5886967 m!6795478))

(declare-fun m!6795480 () Bool)

(assert (=> bm!464319 m!6795480))

(declare-fun m!6795482 () Bool)

(assert (=> bm!464320 m!6795482))

(assert (=> d!1847665 d!1848103))

(assert (=> b!5885979 d!1848095))

(assert (=> b!5885909 d!1848095))

(declare-fun bs!1390769 () Bool)

(declare-fun d!1848105 () Bool)

(assert (= bs!1390769 (and d!1848105 d!1847757)))

(declare-fun lambda!321484 () Int)

(assert (=> bs!1390769 (= lambda!321484 lambda!321440)))

(declare-fun bs!1390770 () Bool)

(assert (= bs!1390770 (and d!1848105 d!1847755)))

(assert (=> bs!1390770 (= lambda!321484 lambda!321437)))

(declare-fun bs!1390771 () Bool)

(assert (= bs!1390771 (and d!1848105 d!1847761)))

(assert (=> bs!1390771 (= lambda!321484 lambda!321441)))

(declare-fun bs!1390772 () Bool)

(assert (= bs!1390772 (and d!1848105 d!1847631)))

(assert (=> bs!1390772 (= lambda!321484 lambda!321396)))

(declare-fun bs!1390773 () Bool)

(assert (= bs!1390773 (and d!1848105 d!1847753)))

(assert (=> bs!1390773 (= lambda!321484 lambda!321434)))

(declare-fun bs!1390774 () Bool)

(assert (= bs!1390774 (and d!1848105 d!1847793)))

(assert (=> bs!1390774 (= lambda!321484 lambda!321447)))

(assert (=> d!1848105 (= (inv!83094 setElem!39911) (forall!15026 (exprs!5823 setElem!39911) lambda!321484))))

(declare-fun bs!1390775 () Bool)

(assert (= bs!1390775 d!1848105))

(declare-fun m!6795484 () Bool)

(assert (=> bs!1390775 m!6795484))

(assert (=> setNonEmpty!39911 d!1848105))

(declare-fun d!1848107 () Bool)

(assert (=> d!1848107 (= (isEmpty!35854 (exprs!5823 (h!70442 zl!343))) ((_ is Nil!63992) (exprs!5823 (h!70442 zl!343))))))

(assert (=> b!5886287 d!1848107))

(declare-fun d!1848109 () Bool)

(declare-fun c!1045480 () Bool)

(assert (=> d!1848109 (= c!1045480 ((_ is Nil!63994) lt!2307270))))

(declare-fun e!3607190 () (InoxSet Context!10646))

(assert (=> d!1848109 (= (content!11769 lt!2307270) e!3607190)))

(declare-fun b!5886980 () Bool)

(assert (=> b!5886980 (= e!3607190 ((as const (Array Context!10646 Bool)) false))))

(declare-fun b!5886981 () Bool)

(assert (=> b!5886981 (= e!3607190 ((_ map or) (store ((as const (Array Context!10646 Bool)) false) (h!70442 lt!2307270) true) (content!11769 (t!377499 lt!2307270))))))

(assert (= (and d!1848109 c!1045480) b!5886980))

(assert (= (and d!1848109 (not c!1045480)) b!5886981))

(declare-fun m!6795486 () Bool)

(assert (=> b!5886981 m!6795486))

(declare-fun m!6795488 () Bool)

(assert (=> b!5886981 m!6795488))

(assert (=> b!5886004 d!1848109))

(assert (=> d!1847719 d!1848059))

(declare-fun d!1848111 () Bool)

(declare-fun c!1045481 () Bool)

(assert (=> d!1848111 (= c!1045481 (isEmpty!35852 (tail!11516 s!2326)))))

(declare-fun e!3607191 () Bool)

(assert (=> d!1848111 (= (matchZipper!2005 (derivationStepZipper!1938 lt!2307201 (head!12431 s!2326)) (tail!11516 s!2326)) e!3607191)))

(declare-fun b!5886982 () Bool)

(assert (=> b!5886982 (= e!3607191 (nullableZipper!1777 (derivationStepZipper!1938 lt!2307201 (head!12431 s!2326))))))

(declare-fun b!5886983 () Bool)

(assert (=> b!5886983 (= e!3607191 (matchZipper!2005 (derivationStepZipper!1938 (derivationStepZipper!1938 lt!2307201 (head!12431 s!2326)) (head!12431 (tail!11516 s!2326))) (tail!11516 (tail!11516 s!2326))))))

(assert (= (and d!1848111 c!1045481) b!5886982))

(assert (= (and d!1848111 (not c!1045481)) b!5886983))

(assert (=> d!1848111 m!6794662))

(assert (=> d!1848111 m!6794664))

(assert (=> b!5886982 m!6794854))

(declare-fun m!6795490 () Bool)

(assert (=> b!5886982 m!6795490))

(assert (=> b!5886983 m!6794662))

(declare-fun m!6795492 () Bool)

(assert (=> b!5886983 m!6795492))

(assert (=> b!5886983 m!6794854))

(assert (=> b!5886983 m!6795492))

(declare-fun m!6795494 () Bool)

(assert (=> b!5886983 m!6795494))

(assert (=> b!5886983 m!6794662))

(declare-fun m!6795496 () Bool)

(assert (=> b!5886983 m!6795496))

(assert (=> b!5886983 m!6795494))

(assert (=> b!5886983 m!6795496))

(declare-fun m!6795498 () Bool)

(assert (=> b!5886983 m!6795498))

(assert (=> b!5886196 d!1848111))

(declare-fun bs!1390776 () Bool)

(declare-fun d!1848113 () Bool)

(assert (= bs!1390776 (and d!1848113 b!5885544)))

(declare-fun lambda!321485 () Int)

(assert (=> bs!1390776 (= (= (head!12431 s!2326) (h!70441 s!2326)) (= lambda!321485 lambda!321393))))

(declare-fun bs!1390777 () Bool)

(assert (= bs!1390777 (and d!1848113 d!1847779)))

(assert (=> bs!1390777 (= (= (head!12431 s!2326) (h!70441 s!2326)) (= lambda!321485 lambda!321444))))

(assert (=> d!1848113 true))

(assert (=> d!1848113 (= (derivationStepZipper!1938 lt!2307201 (head!12431 s!2326)) (flatMap!1470 lt!2307201 lambda!321485))))

(declare-fun bs!1390778 () Bool)

(assert (= bs!1390778 d!1848113))

(declare-fun m!6795500 () Bool)

(assert (=> bs!1390778 m!6795500))

(assert (=> b!5886196 d!1848113))

(assert (=> b!5886196 d!1848095))

(assert (=> b!5886196 d!1848077))

(declare-fun d!1848115 () Bool)

(declare-fun c!1045483 () Bool)

(declare-fun e!3607192 () Bool)

(assert (=> d!1848115 (= c!1045483 e!3607192)))

(declare-fun res!2472570 () Bool)

(assert (=> d!1848115 (=> (not res!2472570) (not e!3607192))))

(assert (=> d!1848115 (= res!2472570 ((_ is Cons!63992) (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343)))))))))

(declare-fun e!3607193 () (InoxSet Context!10646))

(assert (=> d!1848115 (= (derivationStepZipperUp!1131 (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343)))) (h!70441 s!2326)) e!3607193)))

(declare-fun b!5886984 () Bool)

(assert (=> b!5886984 (= e!3607192 (nullable!5939 (h!70440 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343))))))))))

(declare-fun bm!464322 () Bool)

(declare-fun call!464327 () (InoxSet Context!10646))

(assert (=> bm!464322 (= call!464327 (derivationStepZipperDown!1205 (h!70440 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343)))))) (Context!10647 (t!377497 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343))))))) (h!70441 s!2326)))))

(declare-fun b!5886985 () Bool)

(assert (=> b!5886985 (= e!3607193 ((_ map or) call!464327 (derivationStepZipperUp!1131 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343))))))) (h!70441 s!2326))))))

(declare-fun b!5886986 () Bool)

(declare-fun e!3607194 () (InoxSet Context!10646))

(assert (=> b!5886986 (= e!3607194 ((as const (Array Context!10646 Bool)) false))))

(declare-fun b!5886987 () Bool)

(assert (=> b!5886987 (= e!3607193 e!3607194)))

(declare-fun c!1045482 () Bool)

(assert (=> b!5886987 (= c!1045482 ((_ is Cons!63992) (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343)))))))))

(declare-fun b!5886988 () Bool)

(assert (=> b!5886988 (= e!3607194 call!464327)))

(assert (= (and d!1848115 res!2472570) b!5886984))

(assert (= (and d!1848115 c!1045483) b!5886985))

(assert (= (and d!1848115 (not c!1045483)) b!5886987))

(assert (= (and b!5886987 c!1045482) b!5886988))

(assert (= (and b!5886987 (not c!1045482)) b!5886986))

(assert (= (or b!5886985 b!5886988) bm!464322))

(declare-fun m!6795502 () Bool)

(assert (=> b!5886984 m!6795502))

(declare-fun m!6795504 () Bool)

(assert (=> bm!464322 m!6795504))

(declare-fun m!6795506 () Bool)

(assert (=> b!5886985 m!6795506))

(assert (=> b!5886247 d!1848115))

(declare-fun d!1848117 () Bool)

(declare-fun c!1045484 () Bool)

(assert (=> d!1848117 (= c!1045484 (isEmpty!35852 (tail!11516 (t!377498 s!2326))))))

(declare-fun e!3607195 () Bool)

(assert (=> d!1848117 (= (matchZipper!2005 (derivationStepZipper!1938 lt!2307223 (head!12431 (t!377498 s!2326))) (tail!11516 (t!377498 s!2326))) e!3607195)))

(declare-fun b!5886989 () Bool)

(assert (=> b!5886989 (= e!3607195 (nullableZipper!1777 (derivationStepZipper!1938 lt!2307223 (head!12431 (t!377498 s!2326)))))))

(declare-fun b!5886990 () Bool)

(assert (=> b!5886990 (= e!3607195 (matchZipper!2005 (derivationStepZipper!1938 (derivationStepZipper!1938 lt!2307223 (head!12431 (t!377498 s!2326))) (head!12431 (tail!11516 (t!377498 s!2326)))) (tail!11516 (tail!11516 (t!377498 s!2326)))))))

(assert (= (and d!1848117 c!1045484) b!5886989))

(assert (= (and d!1848117 (not c!1045484)) b!5886990))

(assert (=> d!1848117 m!6794490))

(declare-fun m!6795508 () Bool)

(assert (=> d!1848117 m!6795508))

(assert (=> b!5886989 m!6794488))

(declare-fun m!6795510 () Bool)

(assert (=> b!5886989 m!6795510))

(assert (=> b!5886990 m!6794490))

(declare-fun m!6795512 () Bool)

(assert (=> b!5886990 m!6795512))

(assert (=> b!5886990 m!6794488))

(assert (=> b!5886990 m!6795512))

(declare-fun m!6795514 () Bool)

(assert (=> b!5886990 m!6795514))

(assert (=> b!5886990 m!6794490))

(declare-fun m!6795516 () Bool)

(assert (=> b!5886990 m!6795516))

(assert (=> b!5886990 m!6795514))

(assert (=> b!5886990 m!6795516))

(declare-fun m!6795518 () Bool)

(assert (=> b!5886990 m!6795518))

(assert (=> b!5885573 d!1848117))

(declare-fun bs!1390779 () Bool)

(declare-fun d!1848119 () Bool)

(assert (= bs!1390779 (and d!1848119 b!5885544)))

(declare-fun lambda!321486 () Int)

(assert (=> bs!1390779 (= (= (head!12431 (t!377498 s!2326)) (h!70441 s!2326)) (= lambda!321486 lambda!321393))))

(declare-fun bs!1390780 () Bool)

(assert (= bs!1390780 (and d!1848119 d!1847779)))

(assert (=> bs!1390780 (= (= (head!12431 (t!377498 s!2326)) (h!70441 s!2326)) (= lambda!321486 lambda!321444))))

(declare-fun bs!1390781 () Bool)

(assert (= bs!1390781 (and d!1848119 d!1848113)))

(assert (=> bs!1390781 (= (= (head!12431 (t!377498 s!2326)) (head!12431 s!2326)) (= lambda!321486 lambda!321485))))

(assert (=> d!1848119 true))

(assert (=> d!1848119 (= (derivationStepZipper!1938 lt!2307223 (head!12431 (t!377498 s!2326))) (flatMap!1470 lt!2307223 lambda!321486))))

(declare-fun bs!1390782 () Bool)

(assert (= bs!1390782 d!1848119))

(declare-fun m!6795520 () Bool)

(assert (=> bs!1390782 m!6795520))

(assert (=> b!5885573 d!1848119))

(declare-fun d!1848121 () Bool)

(assert (=> d!1848121 (= (head!12431 (t!377498 s!2326)) (h!70441 (t!377498 s!2326)))))

(assert (=> b!5885573 d!1848121))

(declare-fun d!1848123 () Bool)

(assert (=> d!1848123 (= (tail!11516 (t!377498 s!2326)) (t!377498 (t!377498 s!2326)))))

(assert (=> b!5885573 d!1848123))

(declare-fun bs!1390783 () Bool)

(declare-fun d!1848125 () Bool)

(assert (= bs!1390783 (and d!1848125 d!1848105)))

(declare-fun lambda!321487 () Int)

(assert (=> bs!1390783 (= lambda!321487 lambda!321484)))

(declare-fun bs!1390784 () Bool)

(assert (= bs!1390784 (and d!1848125 d!1847757)))

(assert (=> bs!1390784 (= lambda!321487 lambda!321440)))

(declare-fun bs!1390785 () Bool)

(assert (= bs!1390785 (and d!1848125 d!1847755)))

(assert (=> bs!1390785 (= lambda!321487 lambda!321437)))

(declare-fun bs!1390786 () Bool)

(assert (= bs!1390786 (and d!1848125 d!1847761)))

(assert (=> bs!1390786 (= lambda!321487 lambda!321441)))

(declare-fun bs!1390787 () Bool)

(assert (= bs!1390787 (and d!1848125 d!1847631)))

(assert (=> bs!1390787 (= lambda!321487 lambda!321396)))

(declare-fun bs!1390788 () Bool)

(assert (= bs!1390788 (and d!1848125 d!1847753)))

(assert (=> bs!1390788 (= lambda!321487 lambda!321434)))

(declare-fun bs!1390789 () Bool)

(assert (= bs!1390789 (and d!1848125 d!1847793)))

(assert (=> bs!1390789 (= lambda!321487 lambda!321447)))

(declare-fun b!5886991 () Bool)

(declare-fun e!3607200 () Bool)

(declare-fun e!3607199 () Bool)

(assert (=> b!5886991 (= e!3607200 e!3607199)))

(declare-fun c!1045485 () Bool)

(assert (=> b!5886991 (= c!1045485 (isEmpty!35854 (t!377497 (unfocusZipperList!1360 zl!343))))))

(declare-fun b!5886992 () Bool)

(declare-fun e!3607197 () Regex!15939)

(assert (=> b!5886992 (= e!3607197 (Union!15939 (h!70440 (t!377497 (unfocusZipperList!1360 zl!343))) (generalisedUnion!1783 (t!377497 (t!377497 (unfocusZipperList!1360 zl!343))))))))

(declare-fun b!5886993 () Bool)

(declare-fun e!3607201 () Regex!15939)

(assert (=> b!5886993 (= e!3607201 (h!70440 (t!377497 (unfocusZipperList!1360 zl!343))))))

(declare-fun b!5886994 () Bool)

(assert (=> b!5886994 (= e!3607201 e!3607197)))

(declare-fun c!1045488 () Bool)

(assert (=> b!5886994 (= c!1045488 ((_ is Cons!63992) (t!377497 (unfocusZipperList!1360 zl!343))))))

(assert (=> d!1848125 e!3607200))

(declare-fun res!2472572 () Bool)

(assert (=> d!1848125 (=> (not res!2472572) (not e!3607200))))

(declare-fun lt!2307311 () Regex!15939)

(assert (=> d!1848125 (= res!2472572 (validRegex!7675 lt!2307311))))

(assert (=> d!1848125 (= lt!2307311 e!3607201)))

(declare-fun c!1045486 () Bool)

(declare-fun e!3607198 () Bool)

(assert (=> d!1848125 (= c!1045486 e!3607198)))

(declare-fun res!2472571 () Bool)

(assert (=> d!1848125 (=> (not res!2472571) (not e!3607198))))

(assert (=> d!1848125 (= res!2472571 ((_ is Cons!63992) (t!377497 (unfocusZipperList!1360 zl!343))))))

(assert (=> d!1848125 (forall!15026 (t!377497 (unfocusZipperList!1360 zl!343)) lambda!321487)))

(assert (=> d!1848125 (= (generalisedUnion!1783 (t!377497 (unfocusZipperList!1360 zl!343))) lt!2307311)))

(declare-fun b!5886995 () Bool)

(assert (=> b!5886995 (= e!3607197 EmptyLang!15939)))

(declare-fun b!5886996 () Bool)

(declare-fun e!3607196 () Bool)

(assert (=> b!5886996 (= e!3607196 (isUnion!812 lt!2307311))))

(declare-fun b!5886997 () Bool)

(assert (=> b!5886997 (= e!3607198 (isEmpty!35854 (t!377497 (t!377497 (unfocusZipperList!1360 zl!343)))))))

(declare-fun b!5886998 () Bool)

(assert (=> b!5886998 (= e!3607196 (= lt!2307311 (head!12433 (t!377497 (unfocusZipperList!1360 zl!343)))))))

(declare-fun b!5886999 () Bool)

(assert (=> b!5886999 (= e!3607199 e!3607196)))

(declare-fun c!1045487 () Bool)

(assert (=> b!5886999 (= c!1045487 (isEmpty!35854 (tail!11518 (t!377497 (unfocusZipperList!1360 zl!343)))))))

(declare-fun b!5887000 () Bool)

(assert (=> b!5887000 (= e!3607199 (isEmptyLang!1382 lt!2307311))))

(assert (= (and d!1848125 res!2472571) b!5886997))

(assert (= (and d!1848125 c!1045486) b!5886993))

(assert (= (and d!1848125 (not c!1045486)) b!5886994))

(assert (= (and b!5886994 c!1045488) b!5886992))

(assert (= (and b!5886994 (not c!1045488)) b!5886995))

(assert (= (and d!1848125 res!2472572) b!5886991))

(assert (= (and b!5886991 c!1045485) b!5887000))

(assert (= (and b!5886991 (not c!1045485)) b!5886999))

(assert (= (and b!5886999 c!1045487) b!5886998))

(assert (= (and b!5886999 (not c!1045487)) b!5886996))

(declare-fun m!6795522 () Bool)

(assert (=> d!1848125 m!6795522))

(declare-fun m!6795524 () Bool)

(assert (=> d!1848125 m!6795524))

(declare-fun m!6795526 () Bool)

(assert (=> b!5886992 m!6795526))

(declare-fun m!6795528 () Bool)

(assert (=> b!5886997 m!6795528))

(declare-fun m!6795530 () Bool)

(assert (=> b!5886998 m!6795530))

(declare-fun m!6795532 () Bool)

(assert (=> b!5886999 m!6795532))

(assert (=> b!5886999 m!6795532))

(declare-fun m!6795534 () Bool)

(assert (=> b!5886999 m!6795534))

(assert (=> b!5886991 m!6794832))

(declare-fun m!6795536 () Bool)

(assert (=> b!5886996 m!6795536))

(declare-fun m!6795538 () Bool)

(assert (=> b!5887000 m!6795538))

(assert (=> b!5886180 d!1848125))

(assert (=> bs!1390526 d!1847765))

(assert (=> b!5886052 d!1848095))

(assert (=> b!5886193 d!1847793))

(declare-fun bs!1390790 () Bool)

(declare-fun d!1848127 () Bool)

(assert (= bs!1390790 (and d!1848127 d!1848105)))

(declare-fun lambda!321488 () Int)

(assert (=> bs!1390790 (= lambda!321488 lambda!321484)))

(declare-fun bs!1390791 () Bool)

(assert (= bs!1390791 (and d!1848127 d!1847757)))

(assert (=> bs!1390791 (= lambda!321488 lambda!321440)))

(declare-fun bs!1390792 () Bool)

(assert (= bs!1390792 (and d!1848127 d!1847755)))

(assert (=> bs!1390792 (= lambda!321488 lambda!321437)))

(declare-fun bs!1390793 () Bool)

(assert (= bs!1390793 (and d!1848127 d!1847631)))

(assert (=> bs!1390793 (= lambda!321488 lambda!321396)))

(declare-fun bs!1390794 () Bool)

(assert (= bs!1390794 (and d!1848127 d!1847753)))

(assert (=> bs!1390794 (= lambda!321488 lambda!321434)))

(declare-fun bs!1390795 () Bool)

(assert (= bs!1390795 (and d!1848127 d!1847793)))

(assert (=> bs!1390795 (= lambda!321488 lambda!321447)))

(declare-fun bs!1390796 () Bool)

(assert (= bs!1390796 (and d!1848127 d!1847761)))

(assert (=> bs!1390796 (= lambda!321488 lambda!321441)))

(declare-fun bs!1390797 () Bool)

(assert (= bs!1390797 (and d!1848127 d!1848125)))

(assert (=> bs!1390797 (= lambda!321488 lambda!321487)))

(declare-fun lt!2307312 () List!64116)

(assert (=> d!1848127 (forall!15026 lt!2307312 lambda!321488)))

(declare-fun e!3607202 () List!64116)

(assert (=> d!1848127 (= lt!2307312 e!3607202)))

(declare-fun c!1045489 () Bool)

(assert (=> d!1848127 (= c!1045489 ((_ is Cons!63994) (t!377499 zl!343)))))

(assert (=> d!1848127 (= (unfocusZipperList!1360 (t!377499 zl!343)) lt!2307312)))

(declare-fun b!5887001 () Bool)

(assert (=> b!5887001 (= e!3607202 (Cons!63992 (generalisedConcat!1536 (exprs!5823 (h!70442 (t!377499 zl!343)))) (unfocusZipperList!1360 (t!377499 (t!377499 zl!343)))))))

(declare-fun b!5887002 () Bool)

(assert (=> b!5887002 (= e!3607202 Nil!63992)))

(assert (= (and d!1848127 c!1045489) b!5887001))

(assert (= (and d!1848127 (not c!1045489)) b!5887002))

(declare-fun m!6795540 () Bool)

(assert (=> d!1848127 m!6795540))

(declare-fun m!6795542 () Bool)

(assert (=> b!5887001 m!6795542))

(declare-fun m!6795544 () Bool)

(assert (=> b!5887001 m!6795544))

(assert (=> b!5886193 d!1848127))

(declare-fun d!1848129 () Bool)

(declare-fun res!2472573 () Bool)

(declare-fun e!3607203 () Bool)

(assert (=> d!1848129 (=> res!2472573 e!3607203)))

(assert (=> d!1848129 (= res!2472573 ((_ is Nil!63992) lt!2307288))))

(assert (=> d!1848129 (= (forall!15026 lt!2307288 lambda!321440) e!3607203)))

(declare-fun b!5887003 () Bool)

(declare-fun e!3607204 () Bool)

(assert (=> b!5887003 (= e!3607203 e!3607204)))

(declare-fun res!2472574 () Bool)

(assert (=> b!5887003 (=> (not res!2472574) (not e!3607204))))

(assert (=> b!5887003 (= res!2472574 (dynLambda!25033 lambda!321440 (h!70440 lt!2307288)))))

(declare-fun b!5887004 () Bool)

(assert (=> b!5887004 (= e!3607204 (forall!15026 (t!377497 lt!2307288) lambda!321440))))

(assert (= (and d!1848129 (not res!2472573)) b!5887003))

(assert (= (and b!5887003 res!2472574) b!5887004))

(declare-fun b_lambda!221475 () Bool)

(assert (=> (not b_lambda!221475) (not b!5887003)))

(declare-fun m!6795546 () Bool)

(assert (=> b!5887003 m!6795546))

(declare-fun m!6795548 () Bool)

(assert (=> b!5887004 m!6795548))

(assert (=> d!1847757 d!1848129))

(declare-fun d!1848131 () Bool)

(assert (=> d!1848131 (= (nullable!5939 (regOne!32390 r!7292)) (nullableFct!1924 (regOne!32390 r!7292)))))

(declare-fun bs!1390798 () Bool)

(assert (= bs!1390798 d!1848131))

(declare-fun m!6795550 () Bool)

(assert (=> bs!1390798 m!6795550))

(assert (=> b!5886295 d!1848131))

(declare-fun d!1848133 () Bool)

(declare-fun e!3607210 () Bool)

(assert (=> d!1848133 e!3607210))

(declare-fun c!1045492 () Bool)

(assert (=> d!1848133 (= c!1045492 ((_ is EmptyExpr!15939) (derivativeStep!4677 (regOne!32391 r!7292) (head!12431 s!2326))))))

(declare-fun lt!2307313 () Bool)

(declare-fun e!3607206 () Bool)

(assert (=> d!1848133 (= lt!2307313 e!3607206)))

(declare-fun c!1045490 () Bool)

(assert (=> d!1848133 (= c!1045490 (isEmpty!35852 (tail!11516 s!2326)))))

(assert (=> d!1848133 (validRegex!7675 (derivativeStep!4677 (regOne!32391 r!7292) (head!12431 s!2326)))))

(assert (=> d!1848133 (= (matchR!8122 (derivativeStep!4677 (regOne!32391 r!7292) (head!12431 s!2326)) (tail!11516 s!2326)) lt!2307313)))

(declare-fun b!5887005 () Bool)

(declare-fun res!2472582 () Bool)

(declare-fun e!3607207 () Bool)

(assert (=> b!5887005 (=> (not res!2472582) (not e!3607207))))

(declare-fun call!464328 () Bool)

(assert (=> b!5887005 (= res!2472582 (not call!464328))))

(declare-fun b!5887006 () Bool)

(declare-fun res!2472578 () Bool)

(declare-fun e!3607205 () Bool)

(assert (=> b!5887006 (=> res!2472578 e!3607205)))

(assert (=> b!5887006 (= res!2472578 e!3607207)))

(declare-fun res!2472580 () Bool)

(assert (=> b!5887006 (=> (not res!2472580) (not e!3607207))))

(assert (=> b!5887006 (= res!2472580 lt!2307313)))

(declare-fun b!5887007 () Bool)

(assert (=> b!5887007 (= e!3607210 (= lt!2307313 call!464328))))

(declare-fun b!5887008 () Bool)

(declare-fun e!3607208 () Bool)

(assert (=> b!5887008 (= e!3607205 e!3607208)))

(declare-fun res!2472581 () Bool)

(assert (=> b!5887008 (=> (not res!2472581) (not e!3607208))))

(assert (=> b!5887008 (= res!2472581 (not lt!2307313))))

(declare-fun b!5887009 () Bool)

(declare-fun e!3607211 () Bool)

(assert (=> b!5887009 (= e!3607208 e!3607211)))

(declare-fun res!2472577 () Bool)

(assert (=> b!5887009 (=> res!2472577 e!3607211)))

(assert (=> b!5887009 (= res!2472577 call!464328)))

(declare-fun b!5887010 () Bool)

(assert (=> b!5887010 (= e!3607207 (= (head!12431 (tail!11516 s!2326)) (c!1045073 (derivativeStep!4677 (regOne!32391 r!7292) (head!12431 s!2326)))))))

(declare-fun bm!464323 () Bool)

(assert (=> bm!464323 (= call!464328 (isEmpty!35852 (tail!11516 s!2326)))))

(declare-fun b!5887011 () Bool)

(assert (=> b!5887011 (= e!3607211 (not (= (head!12431 (tail!11516 s!2326)) (c!1045073 (derivativeStep!4677 (regOne!32391 r!7292) (head!12431 s!2326))))))))

(declare-fun b!5887012 () Bool)

(assert (=> b!5887012 (= e!3607206 (nullable!5939 (derivativeStep!4677 (regOne!32391 r!7292) (head!12431 s!2326))))))

(declare-fun b!5887013 () Bool)

(declare-fun e!3607209 () Bool)

(assert (=> b!5887013 (= e!3607209 (not lt!2307313))))

(declare-fun b!5887014 () Bool)

(declare-fun res!2472576 () Bool)

(assert (=> b!5887014 (=> res!2472576 e!3607205)))

(assert (=> b!5887014 (= res!2472576 (not ((_ is ElementMatch!15939) (derivativeStep!4677 (regOne!32391 r!7292) (head!12431 s!2326)))))))

(assert (=> b!5887014 (= e!3607209 e!3607205)))

(declare-fun b!5887015 () Bool)

(declare-fun res!2472579 () Bool)

(assert (=> b!5887015 (=> res!2472579 e!3607211)))

(assert (=> b!5887015 (= res!2472579 (not (isEmpty!35852 (tail!11516 (tail!11516 s!2326)))))))

(declare-fun b!5887016 () Bool)

(assert (=> b!5887016 (= e!3607210 e!3607209)))

(declare-fun c!1045491 () Bool)

(assert (=> b!5887016 (= c!1045491 ((_ is EmptyLang!15939) (derivativeStep!4677 (regOne!32391 r!7292) (head!12431 s!2326))))))

(declare-fun b!5887017 () Bool)

(assert (=> b!5887017 (= e!3607206 (matchR!8122 (derivativeStep!4677 (derivativeStep!4677 (regOne!32391 r!7292) (head!12431 s!2326)) (head!12431 (tail!11516 s!2326))) (tail!11516 (tail!11516 s!2326))))))

(declare-fun b!5887018 () Bool)

(declare-fun res!2472575 () Bool)

(assert (=> b!5887018 (=> (not res!2472575) (not e!3607207))))

(assert (=> b!5887018 (= res!2472575 (isEmpty!35852 (tail!11516 (tail!11516 s!2326))))))

(assert (= (and d!1848133 c!1045490) b!5887012))

(assert (= (and d!1848133 (not c!1045490)) b!5887017))

(assert (= (and d!1848133 c!1045492) b!5887007))

(assert (= (and d!1848133 (not c!1045492)) b!5887016))

(assert (= (and b!5887016 c!1045491) b!5887013))

(assert (= (and b!5887016 (not c!1045491)) b!5887014))

(assert (= (and b!5887014 (not res!2472576)) b!5887006))

(assert (= (and b!5887006 res!2472580) b!5887005))

(assert (= (and b!5887005 res!2472582) b!5887018))

(assert (= (and b!5887018 res!2472575) b!5887010))

(assert (= (and b!5887006 (not res!2472578)) b!5887008))

(assert (= (and b!5887008 res!2472581) b!5887009))

(assert (= (and b!5887009 (not res!2472577)) b!5887015))

(assert (= (and b!5887015 (not res!2472579)) b!5887011))

(assert (= (or b!5887007 b!5887005 b!5887009) bm!464323))

(assert (=> b!5887015 m!6794662))

(assert (=> b!5887015 m!6795496))

(assert (=> b!5887015 m!6795496))

(declare-fun m!6795552 () Bool)

(assert (=> b!5887015 m!6795552))

(assert (=> b!5887011 m!6794662))

(assert (=> b!5887011 m!6795492))

(assert (=> b!5887018 m!6794662))

(assert (=> b!5887018 m!6795496))

(assert (=> b!5887018 m!6795496))

(assert (=> b!5887018 m!6795552))

(assert (=> b!5887017 m!6794662))

(assert (=> b!5887017 m!6795492))

(assert (=> b!5887017 m!6794704))

(assert (=> b!5887017 m!6795492))

(declare-fun m!6795554 () Bool)

(assert (=> b!5887017 m!6795554))

(assert (=> b!5887017 m!6794662))

(assert (=> b!5887017 m!6795496))

(assert (=> b!5887017 m!6795554))

(assert (=> b!5887017 m!6795496))

(declare-fun m!6795556 () Bool)

(assert (=> b!5887017 m!6795556))

(assert (=> bm!464323 m!6794662))

(assert (=> bm!464323 m!6794664))

(assert (=> b!5887010 m!6794662))

(assert (=> b!5887010 m!6795492))

(assert (=> b!5887012 m!6794704))

(declare-fun m!6795558 () Bool)

(assert (=> b!5887012 m!6795558))

(assert (=> d!1848133 m!6794662))

(assert (=> d!1848133 m!6794664))

(assert (=> d!1848133 m!6794704))

(declare-fun m!6795560 () Bool)

(assert (=> d!1848133 m!6795560))

(assert (=> b!5885986 d!1848133))

(declare-fun c!1045503 () Bool)

(declare-fun call!464339 () Regex!15939)

(declare-fun bm!464332 () Bool)

(declare-fun c!1045507 () Bool)

(assert (=> bm!464332 (= call!464339 (derivativeStep!4677 (ite c!1045507 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045503 (reg!16268 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))) (head!12431 s!2326)))))

(declare-fun d!1848135 () Bool)

(declare-fun lt!2307316 () Regex!15939)

(assert (=> d!1848135 (validRegex!7675 lt!2307316)))

(declare-fun e!3607225 () Regex!15939)

(assert (=> d!1848135 (= lt!2307316 e!3607225)))

(declare-fun c!1045505 () Bool)

(assert (=> d!1848135 (= c!1045505 (or ((_ is EmptyExpr!15939) (regOne!32391 r!7292)) ((_ is EmptyLang!15939) (regOne!32391 r!7292))))))

(assert (=> d!1848135 (validRegex!7675 (regOne!32391 r!7292))))

(assert (=> d!1848135 (= (derivativeStep!4677 (regOne!32391 r!7292) (head!12431 s!2326)) lt!2307316)))

(declare-fun b!5887039 () Bool)

(assert (=> b!5887039 (= c!1045507 ((_ is Union!15939) (regOne!32391 r!7292)))))

(declare-fun e!3607223 () Regex!15939)

(declare-fun e!3607226 () Regex!15939)

(assert (=> b!5887039 (= e!3607223 e!3607226)))

(declare-fun b!5887040 () Bool)

(declare-fun e!3607222 () Regex!15939)

(assert (=> b!5887040 (= e!3607226 e!3607222)))

(assert (=> b!5887040 (= c!1045503 ((_ is Star!15939) (regOne!32391 r!7292)))))

(declare-fun b!5887041 () Bool)

(declare-fun call!464337 () Regex!15939)

(assert (=> b!5887041 (= e!3607226 (Union!15939 call!464337 call!464339))))

(declare-fun b!5887042 () Bool)

(declare-fun call!464338 () Regex!15939)

(assert (=> b!5887042 (= e!3607222 (Concat!24784 call!464338 (regOne!32391 r!7292)))))

(declare-fun b!5887043 () Bool)

(assert (=> b!5887043 (= e!3607225 e!3607223)))

(declare-fun c!1045504 () Bool)

(assert (=> b!5887043 (= c!1045504 ((_ is ElementMatch!15939) (regOne!32391 r!7292)))))

(declare-fun c!1045506 () Bool)

(declare-fun bm!464333 () Bool)

(assert (=> bm!464333 (= call!464337 (derivativeStep!4677 (ite c!1045507 (regOne!32391 (regOne!32391 r!7292)) (ite c!1045506 (regTwo!32390 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))) (head!12431 s!2326)))))

(declare-fun bm!464334 () Bool)

(declare-fun call!464340 () Regex!15939)

(assert (=> bm!464334 (= call!464340 call!464337)))

(declare-fun b!5887044 () Bool)

(assert (=> b!5887044 (= e!3607223 (ite (= (head!12431 s!2326) (c!1045073 (regOne!32391 r!7292))) EmptyExpr!15939 EmptyLang!15939))))

(declare-fun b!5887045 () Bool)

(declare-fun e!3607224 () Regex!15939)

(assert (=> b!5887045 (= e!3607224 (Union!15939 (Concat!24784 call!464338 (regTwo!32390 (regOne!32391 r!7292))) call!464340))))

(declare-fun b!5887046 () Bool)

(assert (=> b!5887046 (= c!1045506 (nullable!5939 (regOne!32390 (regOne!32391 r!7292))))))

(assert (=> b!5887046 (= e!3607222 e!3607224)))

(declare-fun bm!464335 () Bool)

(assert (=> bm!464335 (= call!464338 call!464339)))

(declare-fun b!5887047 () Bool)

(assert (=> b!5887047 (= e!3607224 (Union!15939 (Concat!24784 call!464340 (regTwo!32390 (regOne!32391 r!7292))) EmptyLang!15939))))

(declare-fun b!5887048 () Bool)

(assert (=> b!5887048 (= e!3607225 EmptyLang!15939)))

(assert (= (and d!1848135 c!1045505) b!5887048))

(assert (= (and d!1848135 (not c!1045505)) b!5887043))

(assert (= (and b!5887043 c!1045504) b!5887044))

(assert (= (and b!5887043 (not c!1045504)) b!5887039))

(assert (= (and b!5887039 c!1045507) b!5887041))

(assert (= (and b!5887039 (not c!1045507)) b!5887040))

(assert (= (and b!5887040 c!1045503) b!5887042))

(assert (= (and b!5887040 (not c!1045503)) b!5887046))

(assert (= (and b!5887046 c!1045506) b!5887045))

(assert (= (and b!5887046 (not c!1045506)) b!5887047))

(assert (= (or b!5887045 b!5887047) bm!464334))

(assert (= (or b!5887042 b!5887045) bm!464335))

(assert (= (or b!5887041 bm!464335) bm!464332))

(assert (= (or b!5887041 bm!464334) bm!464333))

(assert (=> bm!464332 m!6794666))

(declare-fun m!6795562 () Bool)

(assert (=> bm!464332 m!6795562))

(declare-fun m!6795564 () Bool)

(assert (=> d!1848135 m!6795564))

(assert (=> d!1848135 m!6794498))

(assert (=> bm!464333 m!6794666))

(declare-fun m!6795566 () Bool)

(assert (=> bm!464333 m!6795566))

(assert (=> b!5887046 m!6794818))

(assert (=> b!5885986 d!1848135))

(assert (=> b!5885986 d!1848095))

(assert (=> b!5885986 d!1848077))

(declare-fun bs!1390799 () Bool)

(declare-fun d!1848137 () Bool)

(assert (= bs!1390799 (and d!1848137 d!1848105)))

(declare-fun lambda!321489 () Int)

(assert (=> bs!1390799 (= lambda!321489 lambda!321484)))

(declare-fun bs!1390800 () Bool)

(assert (= bs!1390800 (and d!1848137 d!1847757)))

(assert (=> bs!1390800 (= lambda!321489 lambda!321440)))

(declare-fun bs!1390801 () Bool)

(assert (= bs!1390801 (and d!1848137 d!1847755)))

(assert (=> bs!1390801 (= lambda!321489 lambda!321437)))

(declare-fun bs!1390802 () Bool)

(assert (= bs!1390802 (and d!1848137 d!1847631)))

(assert (=> bs!1390802 (= lambda!321489 lambda!321396)))

(declare-fun bs!1390803 () Bool)

(assert (= bs!1390803 (and d!1848137 d!1847753)))

(assert (=> bs!1390803 (= lambda!321489 lambda!321434)))

(declare-fun bs!1390804 () Bool)

(assert (= bs!1390804 (and d!1848137 d!1848127)))

(assert (=> bs!1390804 (= lambda!321489 lambda!321488)))

(declare-fun bs!1390805 () Bool)

(assert (= bs!1390805 (and d!1848137 d!1847793)))

(assert (=> bs!1390805 (= lambda!321489 lambda!321447)))

(declare-fun bs!1390806 () Bool)

(assert (= bs!1390806 (and d!1848137 d!1847761)))

(assert (=> bs!1390806 (= lambda!321489 lambda!321441)))

(declare-fun bs!1390807 () Bool)

(assert (= bs!1390807 (and d!1848137 d!1848125)))

(assert (=> bs!1390807 (= lambda!321489 lambda!321487)))

(declare-fun e!3607228 () Bool)

(assert (=> d!1848137 e!3607228))

(declare-fun res!2472583 () Bool)

(assert (=> d!1848137 (=> (not res!2472583) (not e!3607228))))

(declare-fun lt!2307317 () Regex!15939)

(assert (=> d!1848137 (= res!2472583 (validRegex!7675 lt!2307317))))

(declare-fun e!3607232 () Regex!15939)

(assert (=> d!1848137 (= lt!2307317 e!3607232)))

(declare-fun c!1045508 () Bool)

(declare-fun e!3607229 () Bool)

(assert (=> d!1848137 (= c!1045508 e!3607229)))

(declare-fun res!2472584 () Bool)

(assert (=> d!1848137 (=> (not res!2472584) (not e!3607229))))

(assert (=> d!1848137 (= res!2472584 ((_ is Cons!63992) (t!377497 (exprs!5823 (h!70442 zl!343)))))))

(assert (=> d!1848137 (forall!15026 (t!377497 (exprs!5823 (h!70442 zl!343))) lambda!321489)))

(assert (=> d!1848137 (= (generalisedConcat!1536 (t!377497 (exprs!5823 (h!70442 zl!343)))) lt!2307317)))

(declare-fun b!5887049 () Bool)

(declare-fun e!3607231 () Regex!15939)

(assert (=> b!5887049 (= e!3607231 EmptyExpr!15939)))

(declare-fun b!5887050 () Bool)

(assert (=> b!5887050 (= e!3607229 (isEmpty!35854 (t!377497 (t!377497 (exprs!5823 (h!70442 zl!343))))))))

(declare-fun b!5887051 () Bool)

(declare-fun e!3607230 () Bool)

(assert (=> b!5887051 (= e!3607230 (= lt!2307317 (head!12433 (t!377497 (exprs!5823 (h!70442 zl!343))))))))

(declare-fun b!5887052 () Bool)

(assert (=> b!5887052 (= e!3607230 (isConcat!897 lt!2307317))))

(declare-fun b!5887053 () Bool)

(assert (=> b!5887053 (= e!3607231 (Concat!24784 (h!70440 (t!377497 (exprs!5823 (h!70442 zl!343)))) (generalisedConcat!1536 (t!377497 (t!377497 (exprs!5823 (h!70442 zl!343)))))))))

(declare-fun b!5887054 () Bool)

(declare-fun e!3607227 () Bool)

(assert (=> b!5887054 (= e!3607227 e!3607230)))

(declare-fun c!1045511 () Bool)

(assert (=> b!5887054 (= c!1045511 (isEmpty!35854 (tail!11518 (t!377497 (exprs!5823 (h!70442 zl!343))))))))

(declare-fun b!5887055 () Bool)

(assert (=> b!5887055 (= e!3607232 (h!70440 (t!377497 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun b!5887056 () Bool)

(assert (=> b!5887056 (= e!3607227 (isEmptyExpr!1374 lt!2307317))))

(declare-fun b!5887057 () Bool)

(assert (=> b!5887057 (= e!3607232 e!3607231)))

(declare-fun c!1045510 () Bool)

(assert (=> b!5887057 (= c!1045510 ((_ is Cons!63992) (t!377497 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun b!5887058 () Bool)

(assert (=> b!5887058 (= e!3607228 e!3607227)))

(declare-fun c!1045509 () Bool)

(assert (=> b!5887058 (= c!1045509 (isEmpty!35854 (t!377497 (exprs!5823 (h!70442 zl!343)))))))

(assert (= (and d!1848137 res!2472584) b!5887050))

(assert (= (and d!1848137 c!1045508) b!5887055))

(assert (= (and d!1848137 (not c!1045508)) b!5887057))

(assert (= (and b!5887057 c!1045510) b!5887053))

(assert (= (and b!5887057 (not c!1045510)) b!5887049))

(assert (= (and d!1848137 res!2472583) b!5887058))

(assert (= (and b!5887058 c!1045509) b!5887056))

(assert (= (and b!5887058 (not c!1045509)) b!5887054))

(assert (= (and b!5887054 c!1045511) b!5887051))

(assert (= (and b!5887054 (not c!1045511)) b!5887052))

(declare-fun m!6795568 () Bool)

(assert (=> b!5887051 m!6795568))

(declare-fun m!6795570 () Bool)

(assert (=> b!5887050 m!6795570))

(declare-fun m!6795572 () Bool)

(assert (=> d!1848137 m!6795572))

(declare-fun m!6795574 () Bool)

(assert (=> d!1848137 m!6795574))

(declare-fun m!6795576 () Bool)

(assert (=> b!5887053 m!6795576))

(declare-fun m!6795578 () Bool)

(assert (=> b!5887052 m!6795578))

(assert (=> b!5887058 m!6794922))

(declare-fun m!6795580 () Bool)

(assert (=> b!5887054 m!6795580))

(assert (=> b!5887054 m!6795580))

(declare-fun m!6795582 () Bool)

(assert (=> b!5887054 m!6795582))

(declare-fun m!6795584 () Bool)

(assert (=> b!5887056 m!6795584))

(assert (=> b!5886282 d!1848137))

(assert (=> d!1847791 d!1848045))

(assert (=> d!1847635 d!1847711))

(assert (=> d!1847635 d!1847763))

(declare-fun d!1848139 () Bool)

(assert (=> d!1848139 (= (matchR!8122 (regOne!32391 r!7292) s!2326) (matchZipper!2005 lt!2307201 s!2326))))

(assert (=> d!1848139 true))

(declare-fun _$44!1460 () Unit!157149)

(assert (=> d!1848139 (= (choose!44501 lt!2307201 (Cons!63994 lt!2307214 Nil!63994) (regOne!32391 r!7292) s!2326) _$44!1460)))

(declare-fun bs!1390808 () Bool)

(assert (= bs!1390808 d!1848139))

(assert (=> bs!1390808 m!6794408))

(assert (=> bs!1390808 m!6794438))

(assert (=> d!1847635 d!1848139))

(assert (=> d!1847635 d!1848103))

(declare-fun d!1848141 () Bool)

(declare-fun c!1045513 () Bool)

(declare-fun e!3607233 () Bool)

(assert (=> d!1848141 (= c!1045513 e!3607233)))

(declare-fun res!2472585 () Bool)

(assert (=> d!1848141 (=> (not res!2472585) (not e!3607233))))

(assert (=> d!1848141 (= res!2472585 ((_ is Cons!63992) (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))))))))

(declare-fun e!3607234 () (InoxSet Context!10646))

(assert (=> d!1848141 (= (derivationStepZipperUp!1131 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (h!70441 s!2326)) e!3607234)))

(declare-fun b!5887059 () Bool)

(assert (=> b!5887059 (= e!3607233 (nullable!5939 (h!70440 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992)))))))))))

(declare-fun bm!464336 () Bool)

(declare-fun call!464341 () (InoxSet Context!10646))

(assert (=> bm!464336 (= call!464341 (derivationStepZipperDown!1205 (h!70440 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))))) (Context!10647 (t!377497 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992)))))))) (h!70441 s!2326)))))

(declare-fun b!5887060 () Bool)

(assert (=> b!5887060 (= e!3607234 ((_ map or) call!464341 (derivationStepZipperUp!1131 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992)))))))) (h!70441 s!2326))))))

(declare-fun b!5887061 () Bool)

(declare-fun e!3607235 () (InoxSet Context!10646))

(assert (=> b!5887061 (= e!3607235 ((as const (Array Context!10646 Bool)) false))))

(declare-fun b!5887062 () Bool)

(assert (=> b!5887062 (= e!3607234 e!3607235)))

(declare-fun c!1045512 () Bool)

(assert (=> b!5887062 (= c!1045512 ((_ is Cons!63992) (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))))))))

(declare-fun b!5887063 () Bool)

(assert (=> b!5887063 (= e!3607235 call!464341)))

(assert (= (and d!1848141 res!2472585) b!5887059))

(assert (= (and d!1848141 c!1045513) b!5887060))

(assert (= (and d!1848141 (not c!1045513)) b!5887062))

(assert (= (and b!5887062 c!1045512) b!5887063))

(assert (= (and b!5887062 (not c!1045512)) b!5887061))

(assert (= (or b!5887060 b!5887063) bm!464336))

(declare-fun m!6795586 () Bool)

(assert (=> b!5887059 m!6795586))

(declare-fun m!6795588 () Bool)

(assert (=> bm!464336 m!6795588))

(declare-fun m!6795590 () Bool)

(assert (=> b!5887060 m!6795590))

(assert (=> b!5886300 d!1848141))

(declare-fun b!5887064 () Bool)

(declare-fun e!3607240 () Bool)

(declare-fun e!3607239 () Bool)

(assert (=> b!5887064 (= e!3607240 e!3607239)))

(declare-fun res!2472589 () Bool)

(assert (=> b!5887064 (= res!2472589 (not (nullable!5939 (reg!16268 (ite c!1045277 (reg!16268 r!7292) (ite c!1045278 (regTwo!32391 r!7292) (regTwo!32390 r!7292)))))))))

(assert (=> b!5887064 (=> (not res!2472589) (not e!3607239))))

(declare-fun b!5887065 () Bool)

(declare-fun e!3607241 () Bool)

(declare-fun e!3607236 () Bool)

(assert (=> b!5887065 (= e!3607241 e!3607236)))

(declare-fun res!2472586 () Bool)

(assert (=> b!5887065 (=> (not res!2472586) (not e!3607236))))

(declare-fun call!464342 () Bool)

(assert (=> b!5887065 (= res!2472586 call!464342)))

(declare-fun c!1045515 () Bool)

(declare-fun bm!464337 () Bool)

(assert (=> bm!464337 (= call!464342 (validRegex!7675 (ite c!1045515 (regOne!32391 (ite c!1045277 (reg!16268 r!7292) (ite c!1045278 (regTwo!32391 r!7292) (regTwo!32390 r!7292)))) (regOne!32390 (ite c!1045277 (reg!16268 r!7292) (ite c!1045278 (regTwo!32391 r!7292) (regTwo!32390 r!7292)))))))))

(declare-fun d!1848143 () Bool)

(declare-fun res!2472588 () Bool)

(declare-fun e!3607242 () Bool)

(assert (=> d!1848143 (=> res!2472588 e!3607242)))

(assert (=> d!1848143 (= res!2472588 ((_ is ElementMatch!15939) (ite c!1045277 (reg!16268 r!7292) (ite c!1045278 (regTwo!32391 r!7292) (regTwo!32390 r!7292)))))))

(assert (=> d!1848143 (= (validRegex!7675 (ite c!1045277 (reg!16268 r!7292) (ite c!1045278 (regTwo!32391 r!7292) (regTwo!32390 r!7292)))) e!3607242)))

(declare-fun b!5887066 () Bool)

(declare-fun e!3607237 () Bool)

(declare-fun call!464344 () Bool)

(assert (=> b!5887066 (= e!3607237 call!464344)))

(declare-fun b!5887067 () Bool)

(assert (=> b!5887067 (= e!3607242 e!3607240)))

(declare-fun c!1045514 () Bool)

(assert (=> b!5887067 (= c!1045514 ((_ is Star!15939) (ite c!1045277 (reg!16268 r!7292) (ite c!1045278 (regTwo!32391 r!7292) (regTwo!32390 r!7292)))))))

(declare-fun b!5887068 () Bool)

(declare-fun res!2472590 () Bool)

(assert (=> b!5887068 (=> (not res!2472590) (not e!3607237))))

(assert (=> b!5887068 (= res!2472590 call!464342)))

(declare-fun e!3607238 () Bool)

(assert (=> b!5887068 (= e!3607238 e!3607237)))

(declare-fun b!5887069 () Bool)

(assert (=> b!5887069 (= e!3607236 call!464344)))

(declare-fun b!5887070 () Bool)

(declare-fun res!2472587 () Bool)

(assert (=> b!5887070 (=> res!2472587 e!3607241)))

(assert (=> b!5887070 (= res!2472587 (not ((_ is Concat!24784) (ite c!1045277 (reg!16268 r!7292) (ite c!1045278 (regTwo!32391 r!7292) (regTwo!32390 r!7292))))))))

(assert (=> b!5887070 (= e!3607238 e!3607241)))

(declare-fun b!5887071 () Bool)

(assert (=> b!5887071 (= e!3607240 e!3607238)))

(assert (=> b!5887071 (= c!1045515 ((_ is Union!15939) (ite c!1045277 (reg!16268 r!7292) (ite c!1045278 (regTwo!32391 r!7292) (regTwo!32390 r!7292)))))))

(declare-fun bm!464338 () Bool)

(declare-fun call!464343 () Bool)

(assert (=> bm!464338 (= call!464343 (validRegex!7675 (ite c!1045514 (reg!16268 (ite c!1045277 (reg!16268 r!7292) (ite c!1045278 (regTwo!32391 r!7292) (regTwo!32390 r!7292)))) (ite c!1045515 (regTwo!32391 (ite c!1045277 (reg!16268 r!7292) (ite c!1045278 (regTwo!32391 r!7292) (regTwo!32390 r!7292)))) (regTwo!32390 (ite c!1045277 (reg!16268 r!7292) (ite c!1045278 (regTwo!32391 r!7292) (regTwo!32390 r!7292))))))))))

(declare-fun bm!464339 () Bool)

(assert (=> bm!464339 (= call!464344 call!464343)))

(declare-fun b!5887072 () Bool)

(assert (=> b!5887072 (= e!3607239 call!464343)))

(assert (= (and d!1848143 (not res!2472588)) b!5887067))

(assert (= (and b!5887067 c!1045514) b!5887064))

(assert (= (and b!5887067 (not c!1045514)) b!5887071))

(assert (= (and b!5887064 res!2472589) b!5887072))

(assert (= (and b!5887071 c!1045515) b!5887068))

(assert (= (and b!5887071 (not c!1045515)) b!5887070))

(assert (= (and b!5887068 res!2472590) b!5887066))

(assert (= (and b!5887070 (not res!2472587)) b!5887065))

(assert (= (and b!5887065 res!2472586) b!5887069))

(assert (= (or b!5887066 b!5887069) bm!464339))

(assert (= (or b!5887068 b!5887065) bm!464337))

(assert (= (or b!5887072 bm!464339) bm!464338))

(declare-fun m!6795592 () Bool)

(assert (=> b!5887064 m!6795592))

(declare-fun m!6795594 () Bool)

(assert (=> bm!464337 m!6795594))

(declare-fun m!6795596 () Bool)

(assert (=> bm!464338 m!6795596))

(assert (=> bm!464165 d!1848143))

(declare-fun d!1848145 () Bool)

(assert (=> d!1848145 (= (isEmptyLang!1382 lt!2307285) ((_ is EmptyLang!15939) lt!2307285))))

(assert (=> b!5886188 d!1848145))

(assert (=> d!1847737 d!1848045))

(assert (=> d!1847737 d!1847777))

(declare-fun d!1848147 () Bool)

(declare-fun e!3607248 () Bool)

(assert (=> d!1848147 e!3607248))

(declare-fun c!1045518 () Bool)

(assert (=> d!1848147 (= c!1045518 ((_ is EmptyExpr!15939) (derivativeStep!4677 r!7292 (head!12431 s!2326))))))

(declare-fun lt!2307318 () Bool)

(declare-fun e!3607244 () Bool)

(assert (=> d!1848147 (= lt!2307318 e!3607244)))

(declare-fun c!1045516 () Bool)

(assert (=> d!1848147 (= c!1045516 (isEmpty!35852 (tail!11516 s!2326)))))

(assert (=> d!1848147 (validRegex!7675 (derivativeStep!4677 r!7292 (head!12431 s!2326)))))

(assert (=> d!1848147 (= (matchR!8122 (derivativeStep!4677 r!7292 (head!12431 s!2326)) (tail!11516 s!2326)) lt!2307318)))

(declare-fun b!5887073 () Bool)

(declare-fun res!2472598 () Bool)

(declare-fun e!3607245 () Bool)

(assert (=> b!5887073 (=> (not res!2472598) (not e!3607245))))

(declare-fun call!464345 () Bool)

(assert (=> b!5887073 (= res!2472598 (not call!464345))))

(declare-fun b!5887074 () Bool)

(declare-fun res!2472594 () Bool)

(declare-fun e!3607243 () Bool)

(assert (=> b!5887074 (=> res!2472594 e!3607243)))

(assert (=> b!5887074 (= res!2472594 e!3607245)))

(declare-fun res!2472596 () Bool)

(assert (=> b!5887074 (=> (not res!2472596) (not e!3607245))))

(assert (=> b!5887074 (= res!2472596 lt!2307318)))

(declare-fun b!5887075 () Bool)

(assert (=> b!5887075 (= e!3607248 (= lt!2307318 call!464345))))

(declare-fun b!5887076 () Bool)

(declare-fun e!3607246 () Bool)

(assert (=> b!5887076 (= e!3607243 e!3607246)))

(declare-fun res!2472597 () Bool)

(assert (=> b!5887076 (=> (not res!2472597) (not e!3607246))))

(assert (=> b!5887076 (= res!2472597 (not lt!2307318))))

(declare-fun b!5887077 () Bool)

(declare-fun e!3607249 () Bool)

(assert (=> b!5887077 (= e!3607246 e!3607249)))

(declare-fun res!2472593 () Bool)

(assert (=> b!5887077 (=> res!2472593 e!3607249)))

(assert (=> b!5887077 (= res!2472593 call!464345)))

(declare-fun b!5887078 () Bool)

(assert (=> b!5887078 (= e!3607245 (= (head!12431 (tail!11516 s!2326)) (c!1045073 (derivativeStep!4677 r!7292 (head!12431 s!2326)))))))

(declare-fun bm!464340 () Bool)

(assert (=> bm!464340 (= call!464345 (isEmpty!35852 (tail!11516 s!2326)))))

(declare-fun b!5887079 () Bool)

(assert (=> b!5887079 (= e!3607249 (not (= (head!12431 (tail!11516 s!2326)) (c!1045073 (derivativeStep!4677 r!7292 (head!12431 s!2326))))))))

(declare-fun b!5887080 () Bool)

(assert (=> b!5887080 (= e!3607244 (nullable!5939 (derivativeStep!4677 r!7292 (head!12431 s!2326))))))

(declare-fun b!5887081 () Bool)

(declare-fun e!3607247 () Bool)

(assert (=> b!5887081 (= e!3607247 (not lt!2307318))))

(declare-fun b!5887082 () Bool)

(declare-fun res!2472592 () Bool)

(assert (=> b!5887082 (=> res!2472592 e!3607243)))

(assert (=> b!5887082 (= res!2472592 (not ((_ is ElementMatch!15939) (derivativeStep!4677 r!7292 (head!12431 s!2326)))))))

(assert (=> b!5887082 (= e!3607247 e!3607243)))

(declare-fun b!5887083 () Bool)

(declare-fun res!2472595 () Bool)

(assert (=> b!5887083 (=> res!2472595 e!3607249)))

(assert (=> b!5887083 (= res!2472595 (not (isEmpty!35852 (tail!11516 (tail!11516 s!2326)))))))

(declare-fun b!5887084 () Bool)

(assert (=> b!5887084 (= e!3607248 e!3607247)))

(declare-fun c!1045517 () Bool)

(assert (=> b!5887084 (= c!1045517 ((_ is EmptyLang!15939) (derivativeStep!4677 r!7292 (head!12431 s!2326))))))

(declare-fun b!5887085 () Bool)

(assert (=> b!5887085 (= e!3607244 (matchR!8122 (derivativeStep!4677 (derivativeStep!4677 r!7292 (head!12431 s!2326)) (head!12431 (tail!11516 s!2326))) (tail!11516 (tail!11516 s!2326))))))

(declare-fun b!5887086 () Bool)

(declare-fun res!2472591 () Bool)

(assert (=> b!5887086 (=> (not res!2472591) (not e!3607245))))

(assert (=> b!5887086 (= res!2472591 (isEmpty!35852 (tail!11516 (tail!11516 s!2326))))))

(assert (= (and d!1848147 c!1045516) b!5887080))

(assert (= (and d!1848147 (not c!1045516)) b!5887085))

(assert (= (and d!1848147 c!1045518) b!5887075))

(assert (= (and d!1848147 (not c!1045518)) b!5887084))

(assert (= (and b!5887084 c!1045517) b!5887081))

(assert (= (and b!5887084 (not c!1045517)) b!5887082))

(assert (= (and b!5887082 (not res!2472592)) b!5887074))

(assert (= (and b!5887074 res!2472596) b!5887073))

(assert (= (and b!5887073 res!2472598) b!5887086))

(assert (= (and b!5887086 res!2472591) b!5887078))

(assert (= (and b!5887074 (not res!2472594)) b!5887076))

(assert (= (and b!5887076 res!2472597) b!5887077))

(assert (= (and b!5887077 (not res!2472593)) b!5887083))

(assert (= (and b!5887083 (not res!2472595)) b!5887079))

(assert (= (or b!5887075 b!5887073 b!5887077) bm!464340))

(assert (=> b!5887083 m!6794662))

(assert (=> b!5887083 m!6795496))

(assert (=> b!5887083 m!6795496))

(assert (=> b!5887083 m!6795552))

(assert (=> b!5887079 m!6794662))

(assert (=> b!5887079 m!6795492))

(assert (=> b!5887086 m!6794662))

(assert (=> b!5887086 m!6795496))

(assert (=> b!5887086 m!6795496))

(assert (=> b!5887086 m!6795552))

(assert (=> b!5887085 m!6794662))

(assert (=> b!5887085 m!6795492))

(assert (=> b!5887085 m!6794794))

(assert (=> b!5887085 m!6795492))

(declare-fun m!6795598 () Bool)

(assert (=> b!5887085 m!6795598))

(assert (=> b!5887085 m!6794662))

(assert (=> b!5887085 m!6795496))

(assert (=> b!5887085 m!6795598))

(assert (=> b!5887085 m!6795496))

(declare-fun m!6795600 () Bool)

(assert (=> b!5887085 m!6795600))

(assert (=> bm!464340 m!6794662))

(assert (=> bm!464340 m!6794664))

(assert (=> b!5887078 m!6794662))

(assert (=> b!5887078 m!6795492))

(assert (=> b!5887080 m!6794794))

(declare-fun m!6795602 () Bool)

(assert (=> b!5887080 m!6795602))

(assert (=> d!1848147 m!6794662))

(assert (=> d!1848147 m!6794664))

(assert (=> d!1848147 m!6794794))

(declare-fun m!6795604 () Bool)

(assert (=> d!1848147 m!6795604))

(assert (=> b!5886059 d!1848147))

(declare-fun bm!464341 () Bool)

(declare-fun c!1045523 () Bool)

(declare-fun call!464348 () Regex!15939)

(declare-fun c!1045519 () Bool)

(assert (=> bm!464341 (= call!464348 (derivativeStep!4677 (ite c!1045523 (regTwo!32391 r!7292) (ite c!1045519 (reg!16268 r!7292) (regOne!32390 r!7292))) (head!12431 s!2326)))))

(declare-fun d!1848149 () Bool)

(declare-fun lt!2307319 () Regex!15939)

(assert (=> d!1848149 (validRegex!7675 lt!2307319)))

(declare-fun e!3607253 () Regex!15939)

(assert (=> d!1848149 (= lt!2307319 e!3607253)))

(declare-fun c!1045521 () Bool)

(assert (=> d!1848149 (= c!1045521 (or ((_ is EmptyExpr!15939) r!7292) ((_ is EmptyLang!15939) r!7292)))))

(assert (=> d!1848149 (validRegex!7675 r!7292)))

(assert (=> d!1848149 (= (derivativeStep!4677 r!7292 (head!12431 s!2326)) lt!2307319)))

(declare-fun b!5887087 () Bool)

(assert (=> b!5887087 (= c!1045523 ((_ is Union!15939) r!7292))))

(declare-fun e!3607251 () Regex!15939)

(declare-fun e!3607254 () Regex!15939)

(assert (=> b!5887087 (= e!3607251 e!3607254)))

(declare-fun b!5887088 () Bool)

(declare-fun e!3607250 () Regex!15939)

(assert (=> b!5887088 (= e!3607254 e!3607250)))

(assert (=> b!5887088 (= c!1045519 ((_ is Star!15939) r!7292))))

(declare-fun b!5887089 () Bool)

(declare-fun call!464346 () Regex!15939)

(assert (=> b!5887089 (= e!3607254 (Union!15939 call!464346 call!464348))))

(declare-fun b!5887090 () Bool)

(declare-fun call!464347 () Regex!15939)

(assert (=> b!5887090 (= e!3607250 (Concat!24784 call!464347 r!7292))))

(declare-fun b!5887091 () Bool)

(assert (=> b!5887091 (= e!3607253 e!3607251)))

(declare-fun c!1045520 () Bool)

(assert (=> b!5887091 (= c!1045520 ((_ is ElementMatch!15939) r!7292))))

(declare-fun bm!464342 () Bool)

(declare-fun c!1045522 () Bool)

(assert (=> bm!464342 (= call!464346 (derivativeStep!4677 (ite c!1045523 (regOne!32391 r!7292) (ite c!1045522 (regTwo!32390 r!7292) (regOne!32390 r!7292))) (head!12431 s!2326)))))

(declare-fun bm!464343 () Bool)

(declare-fun call!464349 () Regex!15939)

(assert (=> bm!464343 (= call!464349 call!464346)))

(declare-fun b!5887092 () Bool)

(assert (=> b!5887092 (= e!3607251 (ite (= (head!12431 s!2326) (c!1045073 r!7292)) EmptyExpr!15939 EmptyLang!15939))))

(declare-fun b!5887093 () Bool)

(declare-fun e!3607252 () Regex!15939)

(assert (=> b!5887093 (= e!3607252 (Union!15939 (Concat!24784 call!464347 (regTwo!32390 r!7292)) call!464349))))

(declare-fun b!5887094 () Bool)

(assert (=> b!5887094 (= c!1045522 (nullable!5939 (regOne!32390 r!7292)))))

(assert (=> b!5887094 (= e!3607250 e!3607252)))

(declare-fun bm!464344 () Bool)

(assert (=> bm!464344 (= call!464347 call!464348)))

(declare-fun b!5887095 () Bool)

(assert (=> b!5887095 (= e!3607252 (Union!15939 (Concat!24784 call!464349 (regTwo!32390 r!7292)) EmptyLang!15939))))

(declare-fun b!5887096 () Bool)

(assert (=> b!5887096 (= e!3607253 EmptyLang!15939)))

(assert (= (and d!1848149 c!1045521) b!5887096))

(assert (= (and d!1848149 (not c!1045521)) b!5887091))

(assert (= (and b!5887091 c!1045520) b!5887092))

(assert (= (and b!5887091 (not c!1045520)) b!5887087))

(assert (= (and b!5887087 c!1045523) b!5887089))

(assert (= (and b!5887087 (not c!1045523)) b!5887088))

(assert (= (and b!5887088 c!1045519) b!5887090))

(assert (= (and b!5887088 (not c!1045519)) b!5887094))

(assert (= (and b!5887094 c!1045522) b!5887093))

(assert (= (and b!5887094 (not c!1045522)) b!5887095))

(assert (= (or b!5887093 b!5887095) bm!464343))

(assert (= (or b!5887090 b!5887093) bm!464344))

(assert (= (or b!5887089 bm!464344) bm!464341))

(assert (= (or b!5887089 bm!464343) bm!464342))

(assert (=> bm!464341 m!6794666))

(declare-fun m!6795606 () Bool)

(assert (=> bm!464341 m!6795606))

(declare-fun m!6795608 () Bool)

(assert (=> d!1848149 m!6795608))

(assert (=> d!1848149 m!6794458))

(assert (=> bm!464342 m!6794666))

(declare-fun m!6795610 () Bool)

(assert (=> bm!464342 m!6795610))

(assert (=> b!5887094 m!6794942))

(assert (=> b!5886059 d!1848149))

(assert (=> b!5886059 d!1848095))

(assert (=> b!5886059 d!1848077))

(declare-fun bm!464345 () Bool)

(declare-fun call!464353 () (InoxSet Context!10646))

(declare-fun call!464350 () (InoxSet Context!10646))

(assert (=> bm!464345 (= call!464353 call!464350)))

(declare-fun b!5887097 () Bool)

(declare-fun e!3607256 () (InoxSet Context!10646))

(declare-fun call!464351 () (InoxSet Context!10646))

(assert (=> b!5887097 (= e!3607256 ((_ map or) call!464351 call!464350))))

(declare-fun b!5887099 () Bool)

(declare-fun c!1045526 () Bool)

(assert (=> b!5887099 (= c!1045526 ((_ is Star!15939) (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292))))))

(declare-fun e!3607255 () (InoxSet Context!10646))

(declare-fun e!3607257 () (InoxSet Context!10646))

(assert (=> b!5887099 (= e!3607255 e!3607257)))

(declare-fun b!5887100 () Bool)

(declare-fun e!3607259 () (InoxSet Context!10646))

(assert (=> b!5887100 (= e!3607259 (store ((as const (Array Context!10646 Bool)) false) (ite c!1045300 lt!2307219 (Context!10647 call!464177)) true))))

(declare-fun b!5887101 () Bool)

(declare-fun c!1045525 () Bool)

(declare-fun e!3607260 () Bool)

(assert (=> b!5887101 (= c!1045525 e!3607260)))

(declare-fun res!2472599 () Bool)

(assert (=> b!5887101 (=> (not res!2472599) (not e!3607260))))

(assert (=> b!5887101 (= res!2472599 ((_ is Concat!24784) (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292))))))

(declare-fun e!3607258 () (InoxSet Context!10646))

(assert (=> b!5887101 (= e!3607258 e!3607256)))

(declare-fun bm!464346 () Bool)

(declare-fun call!464355 () List!64116)

(declare-fun call!464354 () List!64116)

(assert (=> bm!464346 (= call!464355 call!464354)))

(declare-fun c!1045527 () Bool)

(declare-fun bm!464347 () Bool)

(assert (=> bm!464347 (= call!464351 (derivationStepZipperDown!1205 (ite c!1045527 (regOne!32391 (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292))) (regOne!32390 (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292)))) (ite c!1045527 (ite c!1045300 lt!2307219 (Context!10647 call!464177)) (Context!10647 call!464354)) (h!70441 s!2326)))))

(declare-fun bm!464348 () Bool)

(declare-fun c!1045528 () Bool)

(declare-fun call!464352 () (InoxSet Context!10646))

(assert (=> bm!464348 (= call!464352 (derivationStepZipperDown!1205 (ite c!1045527 (regTwo!32391 (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292))) (ite c!1045525 (regTwo!32390 (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292))) (ite c!1045528 (regOne!32390 (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292))) (reg!16268 (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292)))))) (ite (or c!1045527 c!1045525) (ite c!1045300 lt!2307219 (Context!10647 call!464177)) (Context!10647 call!464355)) (h!70441 s!2326)))))

(declare-fun b!5887102 () Bool)

(assert (=> b!5887102 (= e!3607258 ((_ map or) call!464351 call!464352))))

(declare-fun b!5887103 () Bool)

(assert (=> b!5887103 (= e!3607257 call!464353)))

(declare-fun b!5887104 () Bool)

(assert (=> b!5887104 (= e!3607260 (nullable!5939 (regOne!32390 (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292)))))))

(declare-fun bm!464349 () Bool)

(assert (=> bm!464349 (= call!464350 call!464352)))

(declare-fun b!5887105 () Bool)

(assert (=> b!5887105 (= e!3607257 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464350 () Bool)

(assert (=> bm!464350 (= call!464354 ($colon$colon!1844 (exprs!5823 (ite c!1045300 lt!2307219 (Context!10647 call!464177))) (ite (or c!1045525 c!1045528) (regTwo!32390 (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292))) (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292)))))))

(declare-fun b!5887098 () Bool)

(assert (=> b!5887098 (= e!3607255 call!464353)))

(declare-fun c!1045524 () Bool)

(declare-fun d!1848151 () Bool)

(assert (=> d!1848151 (= c!1045524 (and ((_ is ElementMatch!15939) (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292))) (= (c!1045073 (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292))) (h!70441 s!2326))))))

(assert (=> d!1848151 (= (derivationStepZipperDown!1205 (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292)) (ite c!1045300 lt!2307219 (Context!10647 call!464177)) (h!70441 s!2326)) e!3607259)))

(declare-fun b!5887106 () Bool)

(assert (=> b!5887106 (= e!3607259 e!3607258)))

(assert (=> b!5887106 (= c!1045527 ((_ is Union!15939) (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292))))))

(declare-fun b!5887107 () Bool)

(assert (=> b!5887107 (= e!3607256 e!3607255)))

(assert (=> b!5887107 (= c!1045528 ((_ is Concat!24784) (ite c!1045300 (regOne!32391 r!7292) (regOne!32390 r!7292))))))

(assert (= (and d!1848151 c!1045524) b!5887100))

(assert (= (and d!1848151 (not c!1045524)) b!5887106))

(assert (= (and b!5887106 c!1045527) b!5887102))

(assert (= (and b!5887106 (not c!1045527)) b!5887101))

(assert (= (and b!5887101 res!2472599) b!5887104))

(assert (= (and b!5887101 c!1045525) b!5887097))

(assert (= (and b!5887101 (not c!1045525)) b!5887107))

(assert (= (and b!5887107 c!1045528) b!5887098))

(assert (= (and b!5887107 (not c!1045528)) b!5887099))

(assert (= (and b!5887099 c!1045526) b!5887103))

(assert (= (and b!5887099 (not c!1045526)) b!5887105))

(assert (= (or b!5887098 b!5887103) bm!464346))

(assert (= (or b!5887098 b!5887103) bm!464345))

(assert (= (or b!5887097 bm!464346) bm!464350))

(assert (= (or b!5887097 bm!464345) bm!464349))

(assert (= (or b!5887102 bm!464349) bm!464348))

(assert (= (or b!5887102 b!5887097) bm!464347))

(declare-fun m!6795612 () Bool)

(assert (=> bm!464348 m!6795612))

(declare-fun m!6795614 () Bool)

(assert (=> b!5887104 m!6795614))

(declare-fun m!6795616 () Bool)

(assert (=> bm!464347 m!6795616))

(declare-fun m!6795618 () Bool)

(assert (=> bm!464350 m!6795618))

(declare-fun m!6795620 () Bool)

(assert (=> b!5887100 m!6795620))

(assert (=> bm!464170 d!1848151))

(declare-fun bm!464351 () Bool)

(declare-fun call!464359 () (InoxSet Context!10646))

(declare-fun call!464356 () (InoxSet Context!10646))

(assert (=> bm!464351 (= call!464359 call!464356)))

(declare-fun b!5887108 () Bool)

(declare-fun e!3607262 () (InoxSet Context!10646))

(declare-fun call!464357 () (InoxSet Context!10646))

(assert (=> b!5887108 (= e!3607262 ((_ map or) call!464357 call!464356))))

(declare-fun b!5887110 () Bool)

(declare-fun c!1045531 () Bool)

(assert (=> b!5887110 (= c!1045531 ((_ is Star!15939) (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292)))))))))

(declare-fun e!3607261 () (InoxSet Context!10646))

(declare-fun e!3607263 () (InoxSet Context!10646))

(assert (=> b!5887110 (= e!3607261 e!3607263)))

(declare-fun e!3607265 () (InoxSet Context!10646))

(declare-fun b!5887111 () Bool)

(assert (=> b!5887111 (= e!3607265 (store ((as const (Array Context!10646 Bool)) false) (ite (or c!1045247 c!1045245) lt!2307219 (Context!10647 call!464158)) true))))

(declare-fun b!5887112 () Bool)

(declare-fun c!1045530 () Bool)

(declare-fun e!3607266 () Bool)

(assert (=> b!5887112 (= c!1045530 e!3607266)))

(declare-fun res!2472600 () Bool)

(assert (=> b!5887112 (=> (not res!2472600) (not e!3607266))))

(assert (=> b!5887112 (= res!2472600 ((_ is Concat!24784) (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292)))))))))

(declare-fun e!3607264 () (InoxSet Context!10646))

(assert (=> b!5887112 (= e!3607264 e!3607262)))

(declare-fun bm!464352 () Bool)

(declare-fun call!464361 () List!64116)

(declare-fun call!464360 () List!64116)

(assert (=> bm!464352 (= call!464361 call!464360)))

(declare-fun c!1045532 () Bool)

(declare-fun bm!464353 () Bool)

(assert (=> bm!464353 (= call!464357 (derivationStepZipperDown!1205 (ite c!1045532 (regOne!32391 (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292)))))) (regOne!32390 (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292))))))) (ite c!1045532 (ite (or c!1045247 c!1045245) lt!2307219 (Context!10647 call!464158)) (Context!10647 call!464360)) (h!70441 s!2326)))))

(declare-fun bm!464354 () Bool)

(declare-fun c!1045533 () Bool)

(declare-fun call!464358 () (InoxSet Context!10646))

(assert (=> bm!464354 (= call!464358 (derivationStepZipperDown!1205 (ite c!1045532 (regTwo!32391 (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292)))))) (ite c!1045530 (regTwo!32390 (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292)))))) (ite c!1045533 (regOne!32390 (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292)))))) (reg!16268 (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292))))))))) (ite (or c!1045532 c!1045530) (ite (or c!1045247 c!1045245) lt!2307219 (Context!10647 call!464158)) (Context!10647 call!464361)) (h!70441 s!2326)))))

(declare-fun b!5887113 () Bool)

(assert (=> b!5887113 (= e!3607264 ((_ map or) call!464357 call!464358))))

(declare-fun b!5887114 () Bool)

(assert (=> b!5887114 (= e!3607263 call!464359)))

(declare-fun b!5887115 () Bool)

(assert (=> b!5887115 (= e!3607266 (nullable!5939 (regOne!32390 (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292))))))))))

(declare-fun bm!464355 () Bool)

(assert (=> bm!464355 (= call!464356 call!464358)))

(declare-fun b!5887116 () Bool)

(assert (=> b!5887116 (= e!3607263 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464356 () Bool)

(assert (=> bm!464356 (= call!464360 ($colon$colon!1844 (exprs!5823 (ite (or c!1045247 c!1045245) lt!2307219 (Context!10647 call!464158))) (ite (or c!1045530 c!1045533) (regTwo!32390 (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292)))))) (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292))))))))))

(declare-fun b!5887109 () Bool)

(assert (=> b!5887109 (= e!3607261 call!464359)))

(declare-fun c!1045529 () Bool)

(declare-fun d!1848153 () Bool)

(assert (=> d!1848153 (= c!1045529 (and ((_ is ElementMatch!15939) (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292)))))) (= (c!1045073 (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292)))))) (h!70441 s!2326))))))

(assert (=> d!1848153 (= (derivationStepZipperDown!1205 (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292))))) (ite (or c!1045247 c!1045245) lt!2307219 (Context!10647 call!464158)) (h!70441 s!2326)) e!3607265)))

(declare-fun b!5887117 () Bool)

(assert (=> b!5887117 (= e!3607265 e!3607264)))

(assert (=> b!5887117 (= c!1045532 ((_ is Union!15939) (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292)))))))))

(declare-fun b!5887118 () Bool)

(assert (=> b!5887118 (= e!3607262 e!3607261)))

(assert (=> b!5887118 (= c!1045533 ((_ is Concat!24784) (ite c!1045247 (regTwo!32391 (regOne!32391 r!7292)) (ite c!1045245 (regTwo!32390 (regOne!32391 r!7292)) (ite c!1045248 (regOne!32390 (regOne!32391 r!7292)) (reg!16268 (regOne!32391 r!7292)))))))))

(assert (= (and d!1848153 c!1045529) b!5887111))

(assert (= (and d!1848153 (not c!1045529)) b!5887117))

(assert (= (and b!5887117 c!1045532) b!5887113))

(assert (= (and b!5887117 (not c!1045532)) b!5887112))

(assert (= (and b!5887112 res!2472600) b!5887115))

(assert (= (and b!5887112 c!1045530) b!5887108))

(assert (= (and b!5887112 (not c!1045530)) b!5887118))

(assert (= (and b!5887118 c!1045533) b!5887109))

(assert (= (and b!5887118 (not c!1045533)) b!5887110))

(assert (= (and b!5887110 c!1045531) b!5887114))

(assert (= (and b!5887110 (not c!1045531)) b!5887116))

(assert (= (or b!5887109 b!5887114) bm!464352))

(assert (= (or b!5887109 b!5887114) bm!464351))

(assert (= (or b!5887108 bm!464352) bm!464356))

(assert (= (or b!5887108 bm!464351) bm!464355))

(assert (= (or b!5887113 bm!464355) bm!464354))

(assert (= (or b!5887113 b!5887108) bm!464353))

(declare-fun m!6795622 () Bool)

(assert (=> bm!464354 m!6795622))

(declare-fun m!6795624 () Bool)

(assert (=> b!5887115 m!6795624))

(declare-fun m!6795626 () Bool)

(assert (=> bm!464353 m!6795626))

(declare-fun m!6795628 () Bool)

(assert (=> bm!464356 m!6795628))

(declare-fun m!6795630 () Bool)

(assert (=> b!5887111 m!6795630))

(assert (=> bm!464151 d!1848153))

(assert (=> bs!1390527 d!1847783))

(declare-fun d!1848155 () Bool)

(assert (=> d!1848155 (= (nullable!5939 r!7292) (nullableFct!1924 r!7292))))

(declare-fun bs!1390809 () Bool)

(assert (= bs!1390809 d!1848155))

(declare-fun m!6795632 () Bool)

(assert (=> bs!1390809 m!6795632))

(assert (=> b!5886054 d!1848155))

(declare-fun bm!464357 () Bool)

(declare-fun call!464365 () (InoxSet Context!10646))

(declare-fun call!464362 () (InoxSet Context!10646))

(assert (=> bm!464357 (= call!464365 call!464362)))

(declare-fun b!5887119 () Bool)

(declare-fun e!3607268 () (InoxSet Context!10646))

(declare-fun call!464363 () (InoxSet Context!10646))

(assert (=> b!5887119 (= e!3607268 ((_ map or) call!464363 call!464362))))

(declare-fun c!1045536 () Bool)

(declare-fun b!5887121 () Bool)

(assert (=> b!5887121 (= c!1045536 ((_ is Star!15939) (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292)))))))))

(declare-fun e!3607267 () (InoxSet Context!10646))

(declare-fun e!3607269 () (InoxSet Context!10646))

(assert (=> b!5887121 (= e!3607267 e!3607269)))

(declare-fun b!5887122 () Bool)

(declare-fun e!3607271 () (InoxSet Context!10646))

(assert (=> b!5887122 (= e!3607271 (store ((as const (Array Context!10646 Bool)) false) (ite (or c!1045242 c!1045240) lt!2307219 (Context!10647 call!464152)) true))))

(declare-fun b!5887123 () Bool)

(declare-fun c!1045535 () Bool)

(declare-fun e!3607272 () Bool)

(assert (=> b!5887123 (= c!1045535 e!3607272)))

(declare-fun res!2472601 () Bool)

(assert (=> b!5887123 (=> (not res!2472601) (not e!3607272))))

(assert (=> b!5887123 (= res!2472601 ((_ is Concat!24784) (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292)))))))))

(declare-fun e!3607270 () (InoxSet Context!10646))

(assert (=> b!5887123 (= e!3607270 e!3607268)))

(declare-fun bm!464358 () Bool)

(declare-fun call!464367 () List!64116)

(declare-fun call!464366 () List!64116)

(assert (=> bm!464358 (= call!464367 call!464366)))

(declare-fun c!1045537 () Bool)

(declare-fun bm!464359 () Bool)

(assert (=> bm!464359 (= call!464363 (derivationStepZipperDown!1205 (ite c!1045537 (regOne!32391 (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292)))))) (regOne!32390 (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292))))))) (ite c!1045537 (ite (or c!1045242 c!1045240) lt!2307219 (Context!10647 call!464152)) (Context!10647 call!464366)) (h!70441 s!2326)))))

(declare-fun bm!464360 () Bool)

(declare-fun c!1045538 () Bool)

(declare-fun call!464364 () (InoxSet Context!10646))

(assert (=> bm!464360 (= call!464364 (derivationStepZipperDown!1205 (ite c!1045537 (regTwo!32391 (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292)))))) (ite c!1045535 (regTwo!32390 (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292)))))) (ite c!1045538 (regOne!32390 (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292)))))) (reg!16268 (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292))))))))) (ite (or c!1045537 c!1045535) (ite (or c!1045242 c!1045240) lt!2307219 (Context!10647 call!464152)) (Context!10647 call!464367)) (h!70441 s!2326)))))

(declare-fun b!5887124 () Bool)

(assert (=> b!5887124 (= e!3607270 ((_ map or) call!464363 call!464364))))

(declare-fun b!5887125 () Bool)

(assert (=> b!5887125 (= e!3607269 call!464365)))

(declare-fun b!5887126 () Bool)

(assert (=> b!5887126 (= e!3607272 (nullable!5939 (regOne!32390 (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292))))))))))

(declare-fun bm!464361 () Bool)

(assert (=> bm!464361 (= call!464362 call!464364)))

(declare-fun b!5887127 () Bool)

(assert (=> b!5887127 (= e!3607269 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464362 () Bool)

(assert (=> bm!464362 (= call!464366 ($colon$colon!1844 (exprs!5823 (ite (or c!1045242 c!1045240) lt!2307219 (Context!10647 call!464152))) (ite (or c!1045535 c!1045538) (regTwo!32390 (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292)))))) (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292))))))))))

(declare-fun b!5887120 () Bool)

(assert (=> b!5887120 (= e!3607267 call!464365)))

(declare-fun d!1848157 () Bool)

(declare-fun c!1045534 () Bool)

(assert (=> d!1848157 (= c!1045534 (and ((_ is ElementMatch!15939) (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292)))))) (= (c!1045073 (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292)))))) (h!70441 s!2326))))))

(assert (=> d!1848157 (= (derivationStepZipperDown!1205 (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292))))) (ite (or c!1045242 c!1045240) lt!2307219 (Context!10647 call!464152)) (h!70441 s!2326)) e!3607271)))

(declare-fun b!5887128 () Bool)

(assert (=> b!5887128 (= e!3607271 e!3607270)))

(assert (=> b!5887128 (= c!1045537 ((_ is Union!15939) (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292)))))))))

(declare-fun b!5887129 () Bool)

(assert (=> b!5887129 (= e!3607268 e!3607267)))

(assert (=> b!5887129 (= c!1045538 ((_ is Concat!24784) (ite c!1045242 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045240 (regTwo!32390 (regTwo!32391 r!7292)) (ite c!1045243 (regOne!32390 (regTwo!32391 r!7292)) (reg!16268 (regTwo!32391 r!7292)))))))))

(assert (= (and d!1848157 c!1045534) b!5887122))

(assert (= (and d!1848157 (not c!1045534)) b!5887128))

(assert (= (and b!5887128 c!1045537) b!5887124))

(assert (= (and b!5887128 (not c!1045537)) b!5887123))

(assert (= (and b!5887123 res!2472601) b!5887126))

(assert (= (and b!5887123 c!1045535) b!5887119))

(assert (= (and b!5887123 (not c!1045535)) b!5887129))

(assert (= (and b!5887129 c!1045538) b!5887120))

(assert (= (and b!5887129 (not c!1045538)) b!5887121))

(assert (= (and b!5887121 c!1045536) b!5887125))

(assert (= (and b!5887121 (not c!1045536)) b!5887127))

(assert (= (or b!5887120 b!5887125) bm!464358))

(assert (= (or b!5887120 b!5887125) bm!464357))

(assert (= (or b!5887119 bm!464358) bm!464362))

(assert (= (or b!5887119 bm!464357) bm!464361))

(assert (= (or b!5887124 bm!464361) bm!464360))

(assert (= (or b!5887124 b!5887119) bm!464359))

(declare-fun m!6795634 () Bool)

(assert (=> bm!464360 m!6795634))

(declare-fun m!6795636 () Bool)

(assert (=> b!5887126 m!6795636))

(declare-fun m!6795638 () Bool)

(assert (=> bm!464359 m!6795638))

(declare-fun m!6795640 () Bool)

(assert (=> bm!464362 m!6795640))

(declare-fun m!6795642 () Bool)

(assert (=> b!5887122 m!6795642))

(assert (=> bm!464145 d!1848157))

(declare-fun b!5887130 () Bool)

(declare-fun e!3607277 () Bool)

(declare-fun e!3607276 () Bool)

(assert (=> b!5887130 (= e!3607277 e!3607276)))

(declare-fun res!2472605 () Bool)

(assert (=> b!5887130 (= res!2472605 (not (nullable!5939 (reg!16268 lt!2307299))))))

(assert (=> b!5887130 (=> (not res!2472605) (not e!3607276))))

(declare-fun b!5887131 () Bool)

(declare-fun e!3607278 () Bool)

(declare-fun e!3607273 () Bool)

(assert (=> b!5887131 (= e!3607278 e!3607273)))

(declare-fun res!2472602 () Bool)

(assert (=> b!5887131 (=> (not res!2472602) (not e!3607273))))

(declare-fun call!464368 () Bool)

(assert (=> b!5887131 (= res!2472602 call!464368)))

(declare-fun bm!464363 () Bool)

(declare-fun c!1045540 () Bool)

(assert (=> bm!464363 (= call!464368 (validRegex!7675 (ite c!1045540 (regOne!32391 lt!2307299) (regOne!32390 lt!2307299))))))

(declare-fun d!1848159 () Bool)

(declare-fun res!2472604 () Bool)

(declare-fun e!3607279 () Bool)

(assert (=> d!1848159 (=> res!2472604 e!3607279)))

(assert (=> d!1848159 (= res!2472604 ((_ is ElementMatch!15939) lt!2307299))))

(assert (=> d!1848159 (= (validRegex!7675 lt!2307299) e!3607279)))

(declare-fun b!5887132 () Bool)

(declare-fun e!3607274 () Bool)

(declare-fun call!464370 () Bool)

(assert (=> b!5887132 (= e!3607274 call!464370)))

(declare-fun b!5887133 () Bool)

(assert (=> b!5887133 (= e!3607279 e!3607277)))

(declare-fun c!1045539 () Bool)

(assert (=> b!5887133 (= c!1045539 ((_ is Star!15939) lt!2307299))))

(declare-fun b!5887134 () Bool)

(declare-fun res!2472606 () Bool)

(assert (=> b!5887134 (=> (not res!2472606) (not e!3607274))))

(assert (=> b!5887134 (= res!2472606 call!464368)))

(declare-fun e!3607275 () Bool)

(assert (=> b!5887134 (= e!3607275 e!3607274)))

(declare-fun b!5887135 () Bool)

(assert (=> b!5887135 (= e!3607273 call!464370)))

(declare-fun b!5887136 () Bool)

(declare-fun res!2472603 () Bool)

(assert (=> b!5887136 (=> res!2472603 e!3607278)))

(assert (=> b!5887136 (= res!2472603 (not ((_ is Concat!24784) lt!2307299)))))

(assert (=> b!5887136 (= e!3607275 e!3607278)))

(declare-fun b!5887137 () Bool)

(assert (=> b!5887137 (= e!3607277 e!3607275)))

(assert (=> b!5887137 (= c!1045540 ((_ is Union!15939) lt!2307299))))

(declare-fun call!464369 () Bool)

(declare-fun bm!464364 () Bool)

(assert (=> bm!464364 (= call!464369 (validRegex!7675 (ite c!1045539 (reg!16268 lt!2307299) (ite c!1045540 (regTwo!32391 lt!2307299) (regTwo!32390 lt!2307299)))))))

(declare-fun bm!464365 () Bool)

(assert (=> bm!464365 (= call!464370 call!464369)))

(declare-fun b!5887138 () Bool)

(assert (=> b!5887138 (= e!3607276 call!464369)))

(assert (= (and d!1848159 (not res!2472604)) b!5887133))

(assert (= (and b!5887133 c!1045539) b!5887130))

(assert (= (and b!5887133 (not c!1045539)) b!5887137))

(assert (= (and b!5887130 res!2472605) b!5887138))

(assert (= (and b!5887137 c!1045540) b!5887134))

(assert (= (and b!5887137 (not c!1045540)) b!5887136))

(assert (= (and b!5887134 res!2472606) b!5887132))

(assert (= (and b!5887136 (not res!2472603)) b!5887131))

(assert (= (and b!5887131 res!2472602) b!5887135))

(assert (= (or b!5887132 b!5887135) bm!464365))

(assert (= (or b!5887134 b!5887131) bm!464363))

(assert (= (or b!5887138 bm!464365) bm!464364))

(declare-fun m!6795644 () Bool)

(assert (=> b!5887130 m!6795644))

(declare-fun m!6795646 () Bool)

(assert (=> bm!464363 m!6795646))

(declare-fun m!6795648 () Bool)

(assert (=> bm!464364 m!6795648))

(assert (=> d!1847793 d!1848159))

(declare-fun d!1848161 () Bool)

(declare-fun res!2472607 () Bool)

(declare-fun e!3607280 () Bool)

(assert (=> d!1848161 (=> res!2472607 e!3607280)))

(assert (=> d!1848161 (= res!2472607 ((_ is Nil!63992) (exprs!5823 (h!70442 zl!343))))))

(assert (=> d!1848161 (= (forall!15026 (exprs!5823 (h!70442 zl!343)) lambda!321447) e!3607280)))

(declare-fun b!5887139 () Bool)

(declare-fun e!3607281 () Bool)

(assert (=> b!5887139 (= e!3607280 e!3607281)))

(declare-fun res!2472608 () Bool)

(assert (=> b!5887139 (=> (not res!2472608) (not e!3607281))))

(assert (=> b!5887139 (= res!2472608 (dynLambda!25033 lambda!321447 (h!70440 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun b!5887140 () Bool)

(assert (=> b!5887140 (= e!3607281 (forall!15026 (t!377497 (exprs!5823 (h!70442 zl!343))) lambda!321447))))

(assert (= (and d!1848161 (not res!2472607)) b!5887139))

(assert (= (and b!5887139 res!2472608) b!5887140))

(declare-fun b_lambda!221477 () Bool)

(assert (=> (not b_lambda!221477) (not b!5887139)))

(declare-fun m!6795650 () Bool)

(assert (=> b!5887139 m!6795650))

(declare-fun m!6795652 () Bool)

(assert (=> b!5887140 m!6795652))

(assert (=> d!1847793 d!1848161))

(declare-fun bs!1390810 () Bool)

(declare-fun d!1848163 () Bool)

(assert (= bs!1390810 (and d!1848163 d!1848053)))

(declare-fun lambda!321490 () Int)

(assert (=> bs!1390810 (= lambda!321490 lambda!321477)))

(declare-fun bs!1390811 () Bool)

(assert (= bs!1390811 (and d!1848163 d!1848057)))

(assert (=> bs!1390811 (= lambda!321490 lambda!321478)))

(declare-fun bs!1390812 () Bool)

(assert (= bs!1390812 (and d!1848163 d!1848083)))

(assert (=> bs!1390812 (= lambda!321490 lambda!321481)))

(assert (=> d!1848163 (= (nullableZipper!1777 lt!2307223) (exists!2326 lt!2307223 lambda!321490))))

(declare-fun bs!1390813 () Bool)

(assert (= bs!1390813 d!1848163))

(declare-fun m!6795654 () Bool)

(assert (=> bs!1390813 m!6795654))

(assert (=> b!5885572 d!1848163))

(declare-fun bs!1390814 () Bool)

(declare-fun b!5887151 () Bool)

(assert (= bs!1390814 (and b!5887151 b!5886919)))

(declare-fun lambda!321491 () Int)

(assert (=> bs!1390814 (= (and (= (reg!16268 (regTwo!32391 (regTwo!32391 r!7292))) (reg!16268 (regOne!32391 (regTwo!32391 r!7292)))) (= (regTwo!32391 (regTwo!32391 r!7292)) (regOne!32391 (regTwo!32391 r!7292)))) (= lambda!321491 lambda!321479))))

(declare-fun bs!1390815 () Bool)

(assert (= bs!1390815 (and b!5887151 b!5886025)))

(assert (=> bs!1390815 (= (and (= (reg!16268 (regTwo!32391 (regTwo!32391 r!7292))) (reg!16268 r!7292)) (= (regTwo!32391 (regTwo!32391 r!7292)) r!7292)) (= lambda!321491 lambda!321432))))

(declare-fun bs!1390816 () Bool)

(assert (= bs!1390816 (and b!5887151 b!5885764)))

(assert (=> bs!1390816 (not (= lambda!321491 lambda!321413))))

(declare-fun bs!1390817 () Bool)

(assert (= bs!1390817 (and b!5887151 b!5885953)))

(assert (=> bs!1390817 (= (and (= (reg!16268 (regTwo!32391 (regTwo!32391 r!7292))) (reg!16268 (regOne!32391 r!7292))) (= (regTwo!32391 (regTwo!32391 r!7292)) (regOne!32391 r!7292))) (= lambda!321491 lambda!321424))))

(declare-fun bs!1390818 () Bool)

(assert (= bs!1390818 (and b!5887151 b!5885774)))

(assert (=> bs!1390818 (= (and (= (reg!16268 (regTwo!32391 (regTwo!32391 r!7292))) (reg!16268 (regTwo!32391 r!7292))) (= (regTwo!32391 (regTwo!32391 r!7292)) (regTwo!32391 r!7292))) (= lambda!321491 lambda!321412))))

(declare-fun bs!1390819 () Bool)

(assert (= bs!1390819 (and b!5887151 b!5886946)))

(assert (=> bs!1390819 (= (and (= (reg!16268 (regTwo!32391 (regTwo!32391 r!7292))) (reg!16268 (regTwo!32391 (regOne!32391 r!7292)))) (= (regTwo!32391 (regTwo!32391 r!7292)) (regTwo!32391 (regOne!32391 r!7292)))) (= lambda!321491 lambda!321482))))

(declare-fun bs!1390820 () Bool)

(assert (= bs!1390820 (and b!5887151 b!5886015)))

(assert (=> bs!1390820 (not (= lambda!321491 lambda!321433))))

(declare-fun bs!1390821 () Bool)

(assert (= bs!1390821 (and b!5887151 b!5886936)))

(assert (=> bs!1390821 (not (= lambda!321491 lambda!321483))))

(declare-fun bs!1390822 () Bool)

(assert (= bs!1390822 (and b!5887151 b!5885943)))

(assert (=> bs!1390822 (not (= lambda!321491 lambda!321425))))

(declare-fun bs!1390823 () Bool)

(assert (= bs!1390823 (and b!5887151 b!5886909)))

(assert (=> bs!1390823 (not (= lambda!321491 lambda!321480))))

(assert (=> b!5887151 true))

(assert (=> b!5887151 true))

(declare-fun bs!1390824 () Bool)

(declare-fun b!5887141 () Bool)

(assert (= bs!1390824 (and b!5887141 b!5886919)))

(declare-fun lambda!321492 () Int)

(assert (=> bs!1390824 (not (= lambda!321492 lambda!321479))))

(declare-fun bs!1390825 () Bool)

(assert (= bs!1390825 (and b!5887141 b!5886025)))

(assert (=> bs!1390825 (not (= lambda!321492 lambda!321432))))

(declare-fun bs!1390826 () Bool)

(assert (= bs!1390826 (and b!5887141 b!5885764)))

(assert (=> bs!1390826 (= (and (= (regOne!32390 (regTwo!32391 (regTwo!32391 r!7292))) (regOne!32390 (regTwo!32391 r!7292))) (= (regTwo!32390 (regTwo!32391 (regTwo!32391 r!7292))) (regTwo!32390 (regTwo!32391 r!7292)))) (= lambda!321492 lambda!321413))))

(declare-fun bs!1390827 () Bool)

(assert (= bs!1390827 (and b!5887141 b!5885953)))

(assert (=> bs!1390827 (not (= lambda!321492 lambda!321424))))

(declare-fun bs!1390828 () Bool)

(assert (= bs!1390828 (and b!5887141 b!5885774)))

(assert (=> bs!1390828 (not (= lambda!321492 lambda!321412))))

(declare-fun bs!1390829 () Bool)

(assert (= bs!1390829 (and b!5887141 b!5886946)))

(assert (=> bs!1390829 (not (= lambda!321492 lambda!321482))))

(declare-fun bs!1390830 () Bool)

(assert (= bs!1390830 (and b!5887141 b!5886015)))

(assert (=> bs!1390830 (= (and (= (regOne!32390 (regTwo!32391 (regTwo!32391 r!7292))) (regOne!32390 r!7292)) (= (regTwo!32390 (regTwo!32391 (regTwo!32391 r!7292))) (regTwo!32390 r!7292))) (= lambda!321492 lambda!321433))))

(declare-fun bs!1390831 () Bool)

(assert (= bs!1390831 (and b!5887141 b!5886936)))

(assert (=> bs!1390831 (= (and (= (regOne!32390 (regTwo!32391 (regTwo!32391 r!7292))) (regOne!32390 (regTwo!32391 (regOne!32391 r!7292)))) (= (regTwo!32390 (regTwo!32391 (regTwo!32391 r!7292))) (regTwo!32390 (regTwo!32391 (regOne!32391 r!7292))))) (= lambda!321492 lambda!321483))))

(declare-fun bs!1390832 () Bool)

(assert (= bs!1390832 (and b!5887141 b!5885943)))

(assert (=> bs!1390832 (= (and (= (regOne!32390 (regTwo!32391 (regTwo!32391 r!7292))) (regOne!32390 (regOne!32391 r!7292))) (= (regTwo!32390 (regTwo!32391 (regTwo!32391 r!7292))) (regTwo!32390 (regOne!32391 r!7292)))) (= lambda!321492 lambda!321425))))

(declare-fun bs!1390833 () Bool)

(assert (= bs!1390833 (and b!5887141 b!5886909)))

(assert (=> bs!1390833 (= (and (= (regOne!32390 (regTwo!32391 (regTwo!32391 r!7292))) (regOne!32390 (regOne!32391 (regTwo!32391 r!7292)))) (= (regTwo!32390 (regTwo!32391 (regTwo!32391 r!7292))) (regTwo!32390 (regOne!32391 (regTwo!32391 r!7292))))) (= lambda!321492 lambda!321480))))

(declare-fun bs!1390834 () Bool)

(assert (= bs!1390834 (and b!5887141 b!5887151)))

(assert (=> bs!1390834 (not (= lambda!321492 lambda!321491))))

(assert (=> b!5887141 true))

(assert (=> b!5887141 true))

(declare-fun e!3607286 () Bool)

(declare-fun call!464372 () Bool)

(assert (=> b!5887141 (= e!3607286 call!464372)))

(declare-fun b!5887142 () Bool)

(declare-fun c!1045543 () Bool)

(assert (=> b!5887142 (= c!1045543 ((_ is Union!15939) (regTwo!32391 (regTwo!32391 r!7292))))))

(declare-fun e!3607283 () Bool)

(declare-fun e!3607284 () Bool)

(assert (=> b!5887142 (= e!3607283 e!3607284)))

(declare-fun c!1045541 () Bool)

(declare-fun bm!464366 () Bool)

(assert (=> bm!464366 (= call!464372 (Exists!3011 (ite c!1045541 lambda!321491 lambda!321492)))))

(declare-fun d!1848165 () Bool)

(declare-fun c!1045542 () Bool)

(assert (=> d!1848165 (= c!1045542 ((_ is EmptyExpr!15939) (regTwo!32391 (regTwo!32391 r!7292))))))

(declare-fun e!3607287 () Bool)

(assert (=> d!1848165 (= (matchRSpec!3040 (regTwo!32391 (regTwo!32391 r!7292)) s!2326) e!3607287)))

(declare-fun bm!464367 () Bool)

(declare-fun call!464371 () Bool)

(assert (=> bm!464367 (= call!464371 (isEmpty!35852 s!2326))))

(declare-fun b!5887143 () Bool)

(declare-fun e!3607288 () Bool)

(assert (=> b!5887143 (= e!3607288 (matchRSpec!3040 (regTwo!32391 (regTwo!32391 (regTwo!32391 r!7292))) s!2326))))

(declare-fun b!5887144 () Bool)

(assert (=> b!5887144 (= e!3607283 (= s!2326 (Cons!63993 (c!1045073 (regTwo!32391 (regTwo!32391 r!7292))) Nil!63993)))))

(declare-fun b!5887145 () Bool)

(assert (=> b!5887145 (= e!3607284 e!3607286)))

(assert (=> b!5887145 (= c!1045541 ((_ is Star!15939) (regTwo!32391 (regTwo!32391 r!7292))))))

(declare-fun b!5887146 () Bool)

(declare-fun res!2472610 () Bool)

(declare-fun e!3607282 () Bool)

(assert (=> b!5887146 (=> res!2472610 e!3607282)))

(assert (=> b!5887146 (= res!2472610 call!464371)))

(assert (=> b!5887146 (= e!3607286 e!3607282)))

(declare-fun b!5887147 () Bool)

(assert (=> b!5887147 (= e!3607287 call!464371)))

(declare-fun b!5887148 () Bool)

(declare-fun c!1045544 () Bool)

(assert (=> b!5887148 (= c!1045544 ((_ is ElementMatch!15939) (regTwo!32391 (regTwo!32391 r!7292))))))

(declare-fun e!3607285 () Bool)

(assert (=> b!5887148 (= e!3607285 e!3607283)))

(declare-fun b!5887149 () Bool)

(assert (=> b!5887149 (= e!3607284 e!3607288)))

(declare-fun res!2472609 () Bool)

(assert (=> b!5887149 (= res!2472609 (matchRSpec!3040 (regOne!32391 (regTwo!32391 (regTwo!32391 r!7292))) s!2326))))

(assert (=> b!5887149 (=> res!2472609 e!3607288)))

(declare-fun b!5887150 () Bool)

(assert (=> b!5887150 (= e!3607287 e!3607285)))

(declare-fun res!2472611 () Bool)

(assert (=> b!5887150 (= res!2472611 (not ((_ is EmptyLang!15939) (regTwo!32391 (regTwo!32391 r!7292)))))))

(assert (=> b!5887150 (=> (not res!2472611) (not e!3607285))))

(assert (=> b!5887151 (= e!3607282 call!464372)))

(assert (= (and d!1848165 c!1045542) b!5887147))

(assert (= (and d!1848165 (not c!1045542)) b!5887150))

(assert (= (and b!5887150 res!2472611) b!5887148))

(assert (= (and b!5887148 c!1045544) b!5887144))

(assert (= (and b!5887148 (not c!1045544)) b!5887142))

(assert (= (and b!5887142 c!1045543) b!5887149))

(assert (= (and b!5887142 (not c!1045543)) b!5887145))

(assert (= (and b!5887149 (not res!2472609)) b!5887143))

(assert (= (and b!5887145 c!1045541) b!5887146))

(assert (= (and b!5887145 (not c!1045541)) b!5887141))

(assert (= (and b!5887146 (not res!2472610)) b!5887151))

(assert (= (or b!5887151 b!5887141) bm!464366))

(assert (= (or b!5887147 b!5887146) bm!464367))

(declare-fun m!6795656 () Bool)

(assert (=> bm!464366 m!6795656))

(assert (=> bm!464367 m!6794582))

(declare-fun m!6795658 () Bool)

(assert (=> b!5887143 m!6795658))

(declare-fun m!6795660 () Bool)

(assert (=> b!5887149 m!6795660))

(assert (=> b!5885766 d!1848165))

(declare-fun b!5887152 () Bool)

(declare-fun e!3607293 () Bool)

(declare-fun e!3607292 () Bool)

(assert (=> b!5887152 (= e!3607293 e!3607292)))

(declare-fun res!2472615 () Bool)

(assert (=> b!5887152 (= res!2472615 (not (nullable!5939 (reg!16268 lt!2307274))))))

(assert (=> b!5887152 (=> (not res!2472615) (not e!3607292))))

(declare-fun b!5887153 () Bool)

(declare-fun e!3607294 () Bool)

(declare-fun e!3607289 () Bool)

(assert (=> b!5887153 (= e!3607294 e!3607289)))

(declare-fun res!2472612 () Bool)

(assert (=> b!5887153 (=> (not res!2472612) (not e!3607289))))

(declare-fun call!464373 () Bool)

(assert (=> b!5887153 (= res!2472612 call!464373)))

(declare-fun bm!464368 () Bool)

(declare-fun c!1045546 () Bool)

(assert (=> bm!464368 (= call!464373 (validRegex!7675 (ite c!1045546 (regOne!32391 lt!2307274) (regOne!32390 lt!2307274))))))

(declare-fun d!1848167 () Bool)

(declare-fun res!2472614 () Bool)

(declare-fun e!3607295 () Bool)

(assert (=> d!1848167 (=> res!2472614 e!3607295)))

(assert (=> d!1848167 (= res!2472614 ((_ is ElementMatch!15939) lt!2307274))))

(assert (=> d!1848167 (= (validRegex!7675 lt!2307274) e!3607295)))

(declare-fun b!5887154 () Bool)

(declare-fun e!3607290 () Bool)

(declare-fun call!464375 () Bool)

(assert (=> b!5887154 (= e!3607290 call!464375)))

(declare-fun b!5887155 () Bool)

(assert (=> b!5887155 (= e!3607295 e!3607293)))

(declare-fun c!1045545 () Bool)

(assert (=> b!5887155 (= c!1045545 ((_ is Star!15939) lt!2307274))))

(declare-fun b!5887156 () Bool)

(declare-fun res!2472616 () Bool)

(assert (=> b!5887156 (=> (not res!2472616) (not e!3607290))))

(assert (=> b!5887156 (= res!2472616 call!464373)))

(declare-fun e!3607291 () Bool)

(assert (=> b!5887156 (= e!3607291 e!3607290)))

(declare-fun b!5887157 () Bool)

(assert (=> b!5887157 (= e!3607289 call!464375)))

(declare-fun b!5887158 () Bool)

(declare-fun res!2472613 () Bool)

(assert (=> b!5887158 (=> res!2472613 e!3607294)))

(assert (=> b!5887158 (= res!2472613 (not ((_ is Concat!24784) lt!2307274)))))

(assert (=> b!5887158 (= e!3607291 e!3607294)))

(declare-fun b!5887159 () Bool)

(assert (=> b!5887159 (= e!3607293 e!3607291)))

(assert (=> b!5887159 (= c!1045546 ((_ is Union!15939) lt!2307274))))

(declare-fun call!464374 () Bool)

(declare-fun bm!464369 () Bool)

(assert (=> bm!464369 (= call!464374 (validRegex!7675 (ite c!1045545 (reg!16268 lt!2307274) (ite c!1045546 (regTwo!32391 lt!2307274) (regTwo!32390 lt!2307274)))))))

(declare-fun bm!464370 () Bool)

(assert (=> bm!464370 (= call!464375 call!464374)))

(declare-fun b!5887160 () Bool)

(assert (=> b!5887160 (= e!3607292 call!464374)))

(assert (= (and d!1848167 (not res!2472614)) b!5887155))

(assert (= (and b!5887155 c!1045545) b!5887152))

(assert (= (and b!5887155 (not c!1045545)) b!5887159))

(assert (= (and b!5887152 res!2472615) b!5887160))

(assert (= (and b!5887159 c!1045546) b!5887156))

(assert (= (and b!5887159 (not c!1045546)) b!5887158))

(assert (= (and b!5887156 res!2472616) b!5887154))

(assert (= (and b!5887158 (not res!2472613)) b!5887153))

(assert (= (and b!5887153 res!2472612) b!5887157))

(assert (= (or b!5887154 b!5887157) bm!464370))

(assert (= (or b!5887156 b!5887153) bm!464368))

(assert (= (or b!5887160 bm!464370) bm!464369))

(declare-fun m!6795662 () Bool)

(assert (=> b!5887152 m!6795662))

(declare-fun m!6795664 () Bool)

(assert (=> bm!464368 m!6795664))

(declare-fun m!6795666 () Bool)

(assert (=> bm!464369 m!6795666))

(assert (=> d!1847721 d!1848167))

(assert (=> d!1847721 d!1847755))

(assert (=> d!1847721 d!1847757))

(declare-fun bs!1390835 () Bool)

(declare-fun d!1848169 () Bool)

(assert (= bs!1390835 (and d!1848169 d!1848053)))

(declare-fun lambda!321493 () Int)

(assert (=> bs!1390835 (= lambda!321493 lambda!321477)))

(declare-fun bs!1390836 () Bool)

(assert (= bs!1390836 (and d!1848169 d!1848057)))

(assert (=> bs!1390836 (= lambda!321493 lambda!321478)))

(declare-fun bs!1390837 () Bool)

(assert (= bs!1390837 (and d!1848169 d!1848083)))

(assert (=> bs!1390837 (= lambda!321493 lambda!321481)))

(declare-fun bs!1390838 () Bool)

(assert (= bs!1390838 (and d!1848169 d!1848163)))

(assert (=> bs!1390838 (= lambda!321493 lambda!321490)))

(assert (=> d!1848169 (= (nullableZipper!1777 lt!2307201) (exists!2326 lt!2307201 lambda!321493))))

(declare-fun bs!1390839 () Bool)

(assert (= bs!1390839 d!1848169))

(declare-fun m!6795668 () Bool)

(assert (=> bs!1390839 m!6795668))

(assert (=> b!5886195 d!1848169))

(declare-fun bm!464371 () Bool)

(declare-fun call!464379 () (InoxSet Context!10646))

(declare-fun call!464376 () (InoxSet Context!10646))

(assert (=> bm!464371 (= call!464379 call!464376)))

(declare-fun b!5887161 () Bool)

(declare-fun e!3607297 () (InoxSet Context!10646))

(declare-fun call!464377 () (InoxSet Context!10646))

(assert (=> b!5887161 (= e!3607297 ((_ map or) call!464377 call!464376))))

(declare-fun b!5887163 () Bool)

(declare-fun c!1045549 () Bool)

(assert (=> b!5887163 (= c!1045549 ((_ is Star!15939) (h!70440 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun e!3607296 () (InoxSet Context!10646))

(declare-fun e!3607298 () (InoxSet Context!10646))

(assert (=> b!5887163 (= e!3607296 e!3607298)))

(declare-fun b!5887164 () Bool)

(declare-fun e!3607300 () (InoxSet Context!10646))

(assert (=> b!5887164 (= e!3607300 (store ((as const (Array Context!10646 Bool)) false) (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343)))) true))))

(declare-fun b!5887165 () Bool)

(declare-fun c!1045548 () Bool)

(declare-fun e!3607301 () Bool)

(assert (=> b!5887165 (= c!1045548 e!3607301)))

(declare-fun res!2472617 () Bool)

(assert (=> b!5887165 (=> (not res!2472617) (not e!3607301))))

(assert (=> b!5887165 (= res!2472617 ((_ is Concat!24784) (h!70440 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun e!3607299 () (InoxSet Context!10646))

(assert (=> b!5887165 (= e!3607299 e!3607297)))

(declare-fun bm!464372 () Bool)

(declare-fun call!464381 () List!64116)

(declare-fun call!464380 () List!64116)

(assert (=> bm!464372 (= call!464381 call!464380)))

(declare-fun bm!464373 () Bool)

(declare-fun c!1045550 () Bool)

(assert (=> bm!464373 (= call!464377 (derivationStepZipperDown!1205 (ite c!1045550 (regOne!32391 (h!70440 (exprs!5823 (h!70442 zl!343)))) (regOne!32390 (h!70440 (exprs!5823 (h!70442 zl!343))))) (ite c!1045550 (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343)))) (Context!10647 call!464380)) (h!70441 s!2326)))))

(declare-fun call!464378 () (InoxSet Context!10646))

(declare-fun c!1045551 () Bool)

(declare-fun bm!464374 () Bool)

(assert (=> bm!464374 (= call!464378 (derivationStepZipperDown!1205 (ite c!1045550 (regTwo!32391 (h!70440 (exprs!5823 (h!70442 zl!343)))) (ite c!1045548 (regTwo!32390 (h!70440 (exprs!5823 (h!70442 zl!343)))) (ite c!1045551 (regOne!32390 (h!70440 (exprs!5823 (h!70442 zl!343)))) (reg!16268 (h!70440 (exprs!5823 (h!70442 zl!343))))))) (ite (or c!1045550 c!1045548) (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343)))) (Context!10647 call!464381)) (h!70441 s!2326)))))

(declare-fun b!5887166 () Bool)

(assert (=> b!5887166 (= e!3607299 ((_ map or) call!464377 call!464378))))

(declare-fun b!5887167 () Bool)

(assert (=> b!5887167 (= e!3607298 call!464379)))

(declare-fun b!5887168 () Bool)

(assert (=> b!5887168 (= e!3607301 (nullable!5939 (regOne!32390 (h!70440 (exprs!5823 (h!70442 zl!343))))))))

(declare-fun bm!464375 () Bool)

(assert (=> bm!464375 (= call!464376 call!464378)))

(declare-fun b!5887169 () Bool)

(assert (=> b!5887169 (= e!3607298 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464376 () Bool)

(assert (=> bm!464376 (= call!464380 ($colon$colon!1844 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343))))) (ite (or c!1045548 c!1045551) (regTwo!32390 (h!70440 (exprs!5823 (h!70442 zl!343)))) (h!70440 (exprs!5823 (h!70442 zl!343))))))))

(declare-fun b!5887162 () Bool)

(assert (=> b!5887162 (= e!3607296 call!464379)))

(declare-fun d!1848171 () Bool)

(declare-fun c!1045547 () Bool)

(assert (=> d!1848171 (= c!1045547 (and ((_ is ElementMatch!15939) (h!70440 (exprs!5823 (h!70442 zl!343)))) (= (c!1045073 (h!70440 (exprs!5823 (h!70442 zl!343)))) (h!70441 s!2326))))))

(assert (=> d!1848171 (= (derivationStepZipperDown!1205 (h!70440 (exprs!5823 (h!70442 zl!343))) (Context!10647 (t!377497 (exprs!5823 (h!70442 zl!343)))) (h!70441 s!2326)) e!3607300)))

(declare-fun b!5887170 () Bool)

(assert (=> b!5887170 (= e!3607300 e!3607299)))

(assert (=> b!5887170 (= c!1045550 ((_ is Union!15939) (h!70440 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun b!5887171 () Bool)

(assert (=> b!5887171 (= e!3607297 e!3607296)))

(assert (=> b!5887171 (= c!1045551 ((_ is Concat!24784) (h!70440 (exprs!5823 (h!70442 zl!343)))))))

(assert (= (and d!1848171 c!1045547) b!5887164))

(assert (= (and d!1848171 (not c!1045547)) b!5887170))

(assert (= (and b!5887170 c!1045550) b!5887166))

(assert (= (and b!5887170 (not c!1045550)) b!5887165))

(assert (= (and b!5887165 res!2472617) b!5887168))

(assert (= (and b!5887165 c!1045548) b!5887161))

(assert (= (and b!5887165 (not c!1045548)) b!5887171))

(assert (= (and b!5887171 c!1045551) b!5887162))

(assert (= (and b!5887171 (not c!1045551)) b!5887163))

(assert (= (and b!5887163 c!1045549) b!5887167))

(assert (= (and b!5887163 (not c!1045549)) b!5887169))

(assert (= (or b!5887162 b!5887167) bm!464372))

(assert (= (or b!5887162 b!5887167) bm!464371))

(assert (= (or b!5887161 bm!464372) bm!464376))

(assert (= (or b!5887161 bm!464371) bm!464375))

(assert (= (or b!5887166 bm!464375) bm!464374))

(assert (= (or b!5887166 b!5887161) bm!464373))

(declare-fun m!6795670 () Bool)

(assert (=> bm!464374 m!6795670))

(declare-fun m!6795672 () Bool)

(assert (=> b!5887168 m!6795672))

(declare-fun m!6795674 () Bool)

(assert (=> bm!464373 m!6795674))

(declare-fun m!6795676 () Bool)

(assert (=> bm!464376 m!6795676))

(declare-fun m!6795678 () Bool)

(assert (=> b!5887164 m!6795678))

(assert (=> bm!464167 d!1848171))

(declare-fun d!1848173 () Bool)

(declare-fun c!1045552 () Bool)

(assert (=> d!1848173 (= c!1045552 (isEmpty!35852 (tail!11516 s!2326)))))

(declare-fun e!3607302 () Bool)

(assert (=> d!1848173 (= (matchZipper!2005 (derivationStepZipper!1938 lt!2307222 (head!12431 s!2326)) (tail!11516 s!2326)) e!3607302)))

(declare-fun b!5887172 () Bool)

(assert (=> b!5887172 (= e!3607302 (nullableZipper!1777 (derivationStepZipper!1938 lt!2307222 (head!12431 s!2326))))))

(declare-fun b!5887173 () Bool)

(assert (=> b!5887173 (= e!3607302 (matchZipper!2005 (derivationStepZipper!1938 (derivationStepZipper!1938 lt!2307222 (head!12431 s!2326)) (head!12431 (tail!11516 s!2326))) (tail!11516 (tail!11516 s!2326))))))

(assert (= (and d!1848173 c!1045552) b!5887172))

(assert (= (and d!1848173 (not c!1045552)) b!5887173))

(assert (=> d!1848173 m!6794662))

(assert (=> d!1848173 m!6794664))

(assert (=> b!5887172 m!6794916))

(declare-fun m!6795680 () Bool)

(assert (=> b!5887172 m!6795680))

(assert (=> b!5887173 m!6794662))

(assert (=> b!5887173 m!6795492))

(assert (=> b!5887173 m!6794916))

(assert (=> b!5887173 m!6795492))

(declare-fun m!6795682 () Bool)

(assert (=> b!5887173 m!6795682))

(assert (=> b!5887173 m!6794662))

(assert (=> b!5887173 m!6795496))

(assert (=> b!5887173 m!6795682))

(assert (=> b!5887173 m!6795496))

(declare-fun m!6795684 () Bool)

(assert (=> b!5887173 m!6795684))

(assert (=> b!5886257 d!1848173))

(declare-fun bs!1390840 () Bool)

(declare-fun d!1848175 () Bool)

(assert (= bs!1390840 (and d!1848175 b!5885544)))

(declare-fun lambda!321494 () Int)

(assert (=> bs!1390840 (= (= (head!12431 s!2326) (h!70441 s!2326)) (= lambda!321494 lambda!321393))))

(declare-fun bs!1390841 () Bool)

(assert (= bs!1390841 (and d!1848175 d!1847779)))

(assert (=> bs!1390841 (= (= (head!12431 s!2326) (h!70441 s!2326)) (= lambda!321494 lambda!321444))))

(declare-fun bs!1390842 () Bool)

(assert (= bs!1390842 (and d!1848175 d!1848113)))

(assert (=> bs!1390842 (= lambda!321494 lambda!321485)))

(declare-fun bs!1390843 () Bool)

(assert (= bs!1390843 (and d!1848175 d!1848119)))

(assert (=> bs!1390843 (= (= (head!12431 s!2326) (head!12431 (t!377498 s!2326))) (= lambda!321494 lambda!321486))))

(assert (=> d!1848175 true))

(assert (=> d!1848175 (= (derivationStepZipper!1938 lt!2307222 (head!12431 s!2326)) (flatMap!1470 lt!2307222 lambda!321494))))

(declare-fun bs!1390844 () Bool)

(assert (= bs!1390844 d!1848175))

(declare-fun m!6795686 () Bool)

(assert (=> bs!1390844 m!6795686))

(assert (=> b!5886257 d!1848175))

(assert (=> b!5886257 d!1848095))

(assert (=> b!5886257 d!1848077))

(assert (=> b!5886017 d!1847637))

(declare-fun d!1848177 () Bool)

(assert (=> d!1848177 (= (isEmpty!35854 (unfocusZipperList!1360 zl!343)) ((_ is Nil!63992) (unfocusZipperList!1360 zl!343)))))

(assert (=> b!5886179 d!1848177))

(assert (=> d!1847711 d!1848045))

(assert (=> d!1847711 d!1848103))

(declare-fun d!1848179 () Bool)

(assert (=> d!1848179 (= (isConcat!897 lt!2307299) ((_ is Concat!24784) lt!2307299))))

(assert (=> b!5886281 d!1848179))

(declare-fun d!1848181 () Bool)

(assert (=> d!1848181 (= (nullable!5939 (regOne!32390 (regOne!32391 r!7292))) (nullableFct!1924 (regOne!32390 (regOne!32391 r!7292))))))

(declare-fun bs!1390845 () Bool)

(assert (= bs!1390845 d!1848181))

(declare-fun m!6795688 () Bool)

(assert (=> bs!1390845 m!6795688))

(assert (=> b!5886155 d!1848181))

(declare-fun d!1848183 () Bool)

(assert (=> d!1848183 (= ($colon$colon!1844 (exprs!5823 lt!2307219) (ite (or c!1045298 c!1045301) (regTwo!32390 r!7292) r!7292)) (Cons!63992 (ite (or c!1045298 c!1045301) (regTwo!32390 r!7292) r!7292) (exprs!5823 lt!2307219)))))

(assert (=> bm!464173 d!1848183))

(declare-fun bs!1390846 () Bool)

(declare-fun b!5887184 () Bool)

(assert (= bs!1390846 (and b!5887184 b!5886919)))

(declare-fun lambda!321495 () Int)

(assert (=> bs!1390846 (= (and (= (reg!16268 (regOne!32391 (regOne!32391 r!7292))) (reg!16268 (regOne!32391 (regTwo!32391 r!7292)))) (= (regOne!32391 (regOne!32391 r!7292)) (regOne!32391 (regTwo!32391 r!7292)))) (= lambda!321495 lambda!321479))))

(declare-fun bs!1390847 () Bool)

(assert (= bs!1390847 (and b!5887184 b!5886025)))

(assert (=> bs!1390847 (= (and (= (reg!16268 (regOne!32391 (regOne!32391 r!7292))) (reg!16268 r!7292)) (= (regOne!32391 (regOne!32391 r!7292)) r!7292)) (= lambda!321495 lambda!321432))))

(declare-fun bs!1390848 () Bool)

(assert (= bs!1390848 (and b!5887184 b!5885764)))

(assert (=> bs!1390848 (not (= lambda!321495 lambda!321413))))

(declare-fun bs!1390849 () Bool)

(assert (= bs!1390849 (and b!5887184 b!5885953)))

(assert (=> bs!1390849 (= (and (= (reg!16268 (regOne!32391 (regOne!32391 r!7292))) (reg!16268 (regOne!32391 r!7292))) (= (regOne!32391 (regOne!32391 r!7292)) (regOne!32391 r!7292))) (= lambda!321495 lambda!321424))))

(declare-fun bs!1390850 () Bool)

(assert (= bs!1390850 (and b!5887184 b!5885774)))

(assert (=> bs!1390850 (= (and (= (reg!16268 (regOne!32391 (regOne!32391 r!7292))) (reg!16268 (regTwo!32391 r!7292))) (= (regOne!32391 (regOne!32391 r!7292)) (regTwo!32391 r!7292))) (= lambda!321495 lambda!321412))))

(declare-fun bs!1390851 () Bool)

(assert (= bs!1390851 (and b!5887184 b!5886015)))

(assert (=> bs!1390851 (not (= lambda!321495 lambda!321433))))

(declare-fun bs!1390852 () Bool)

(assert (= bs!1390852 (and b!5887184 b!5886936)))

(assert (=> bs!1390852 (not (= lambda!321495 lambda!321483))))

(declare-fun bs!1390853 () Bool)

(assert (= bs!1390853 (and b!5887184 b!5885943)))

(assert (=> bs!1390853 (not (= lambda!321495 lambda!321425))))

(declare-fun bs!1390854 () Bool)

(assert (= bs!1390854 (and b!5887184 b!5886909)))

(assert (=> bs!1390854 (not (= lambda!321495 lambda!321480))))

(declare-fun bs!1390855 () Bool)

(assert (= bs!1390855 (and b!5887184 b!5887151)))

(assert (=> bs!1390855 (= (and (= (reg!16268 (regOne!32391 (regOne!32391 r!7292))) (reg!16268 (regTwo!32391 (regTwo!32391 r!7292)))) (= (regOne!32391 (regOne!32391 r!7292)) (regTwo!32391 (regTwo!32391 r!7292)))) (= lambda!321495 lambda!321491))))

(declare-fun bs!1390856 () Bool)

(assert (= bs!1390856 (and b!5887184 b!5887141)))

(assert (=> bs!1390856 (not (= lambda!321495 lambda!321492))))

(declare-fun bs!1390857 () Bool)

(assert (= bs!1390857 (and b!5887184 b!5886946)))

(assert (=> bs!1390857 (= (and (= (reg!16268 (regOne!32391 (regOne!32391 r!7292))) (reg!16268 (regTwo!32391 (regOne!32391 r!7292)))) (= (regOne!32391 (regOne!32391 r!7292)) (regTwo!32391 (regOne!32391 r!7292)))) (= lambda!321495 lambda!321482))))

(assert (=> b!5887184 true))

(assert (=> b!5887184 true))

(declare-fun bs!1390858 () Bool)

(declare-fun b!5887174 () Bool)

(assert (= bs!1390858 (and b!5887174 b!5886919)))

(declare-fun lambda!321496 () Int)

(assert (=> bs!1390858 (not (= lambda!321496 lambda!321479))))

(declare-fun bs!1390859 () Bool)

(assert (= bs!1390859 (and b!5887174 b!5886025)))

(assert (=> bs!1390859 (not (= lambda!321496 lambda!321432))))

(declare-fun bs!1390860 () Bool)

(assert (= bs!1390860 (and b!5887174 b!5887184)))

(assert (=> bs!1390860 (not (= lambda!321496 lambda!321495))))

(declare-fun bs!1390861 () Bool)

(assert (= bs!1390861 (and b!5887174 b!5885764)))

(assert (=> bs!1390861 (= (and (= (regOne!32390 (regOne!32391 (regOne!32391 r!7292))) (regOne!32390 (regTwo!32391 r!7292))) (= (regTwo!32390 (regOne!32391 (regOne!32391 r!7292))) (regTwo!32390 (regTwo!32391 r!7292)))) (= lambda!321496 lambda!321413))))

(declare-fun bs!1390862 () Bool)

(assert (= bs!1390862 (and b!5887174 b!5885953)))

(assert (=> bs!1390862 (not (= lambda!321496 lambda!321424))))

(declare-fun bs!1390863 () Bool)

(assert (= bs!1390863 (and b!5887174 b!5885774)))

(assert (=> bs!1390863 (not (= lambda!321496 lambda!321412))))

(declare-fun bs!1390864 () Bool)

(assert (= bs!1390864 (and b!5887174 b!5886015)))

(assert (=> bs!1390864 (= (and (= (regOne!32390 (regOne!32391 (regOne!32391 r!7292))) (regOne!32390 r!7292)) (= (regTwo!32390 (regOne!32391 (regOne!32391 r!7292))) (regTwo!32390 r!7292))) (= lambda!321496 lambda!321433))))

(declare-fun bs!1390865 () Bool)

(assert (= bs!1390865 (and b!5887174 b!5886936)))

(assert (=> bs!1390865 (= (and (= (regOne!32390 (regOne!32391 (regOne!32391 r!7292))) (regOne!32390 (regTwo!32391 (regOne!32391 r!7292)))) (= (regTwo!32390 (regOne!32391 (regOne!32391 r!7292))) (regTwo!32390 (regTwo!32391 (regOne!32391 r!7292))))) (= lambda!321496 lambda!321483))))

(declare-fun bs!1390866 () Bool)

(assert (= bs!1390866 (and b!5887174 b!5885943)))

(assert (=> bs!1390866 (= (and (= (regOne!32390 (regOne!32391 (regOne!32391 r!7292))) (regOne!32390 (regOne!32391 r!7292))) (= (regTwo!32390 (regOne!32391 (regOne!32391 r!7292))) (regTwo!32390 (regOne!32391 r!7292)))) (= lambda!321496 lambda!321425))))

(declare-fun bs!1390867 () Bool)

(assert (= bs!1390867 (and b!5887174 b!5886909)))

(assert (=> bs!1390867 (= (and (= (regOne!32390 (regOne!32391 (regOne!32391 r!7292))) (regOne!32390 (regOne!32391 (regTwo!32391 r!7292)))) (= (regTwo!32390 (regOne!32391 (regOne!32391 r!7292))) (regTwo!32390 (regOne!32391 (regTwo!32391 r!7292))))) (= lambda!321496 lambda!321480))))

(declare-fun bs!1390868 () Bool)

(assert (= bs!1390868 (and b!5887174 b!5887151)))

(assert (=> bs!1390868 (not (= lambda!321496 lambda!321491))))

(declare-fun bs!1390869 () Bool)

(assert (= bs!1390869 (and b!5887174 b!5887141)))

(assert (=> bs!1390869 (= (and (= (regOne!32390 (regOne!32391 (regOne!32391 r!7292))) (regOne!32390 (regTwo!32391 (regTwo!32391 r!7292)))) (= (regTwo!32390 (regOne!32391 (regOne!32391 r!7292))) (regTwo!32390 (regTwo!32391 (regTwo!32391 r!7292))))) (= lambda!321496 lambda!321492))))

(declare-fun bs!1390870 () Bool)

(assert (= bs!1390870 (and b!5887174 b!5886946)))

(assert (=> bs!1390870 (not (= lambda!321496 lambda!321482))))

(assert (=> b!5887174 true))

(assert (=> b!5887174 true))

(declare-fun e!3607307 () Bool)

(declare-fun call!464383 () Bool)

(assert (=> b!5887174 (= e!3607307 call!464383)))

(declare-fun b!5887175 () Bool)

(declare-fun c!1045555 () Bool)

(assert (=> b!5887175 (= c!1045555 ((_ is Union!15939) (regOne!32391 (regOne!32391 r!7292))))))

(declare-fun e!3607304 () Bool)

(declare-fun e!3607305 () Bool)

(assert (=> b!5887175 (= e!3607304 e!3607305)))

(declare-fun c!1045553 () Bool)

(declare-fun bm!464377 () Bool)

(assert (=> bm!464377 (= call!464383 (Exists!3011 (ite c!1045553 lambda!321495 lambda!321496)))))

(declare-fun d!1848185 () Bool)

(declare-fun c!1045554 () Bool)

(assert (=> d!1848185 (= c!1045554 ((_ is EmptyExpr!15939) (regOne!32391 (regOne!32391 r!7292))))))

(declare-fun e!3607308 () Bool)

(assert (=> d!1848185 (= (matchRSpec!3040 (regOne!32391 (regOne!32391 r!7292)) s!2326) e!3607308)))

(declare-fun bm!464378 () Bool)

(declare-fun call!464382 () Bool)

(assert (=> bm!464378 (= call!464382 (isEmpty!35852 s!2326))))

(declare-fun b!5887176 () Bool)

(declare-fun e!3607309 () Bool)

(assert (=> b!5887176 (= e!3607309 (matchRSpec!3040 (regTwo!32391 (regOne!32391 (regOne!32391 r!7292))) s!2326))))

(declare-fun b!5887177 () Bool)

(assert (=> b!5887177 (= e!3607304 (= s!2326 (Cons!63993 (c!1045073 (regOne!32391 (regOne!32391 r!7292))) Nil!63993)))))

(declare-fun b!5887178 () Bool)

(assert (=> b!5887178 (= e!3607305 e!3607307)))

(assert (=> b!5887178 (= c!1045553 ((_ is Star!15939) (regOne!32391 (regOne!32391 r!7292))))))

(declare-fun b!5887179 () Bool)

(declare-fun res!2472619 () Bool)

(declare-fun e!3607303 () Bool)

(assert (=> b!5887179 (=> res!2472619 e!3607303)))

(assert (=> b!5887179 (= res!2472619 call!464382)))

(assert (=> b!5887179 (= e!3607307 e!3607303)))

(declare-fun b!5887180 () Bool)

(assert (=> b!5887180 (= e!3607308 call!464382)))

(declare-fun b!5887181 () Bool)

(declare-fun c!1045556 () Bool)

(assert (=> b!5887181 (= c!1045556 ((_ is ElementMatch!15939) (regOne!32391 (regOne!32391 r!7292))))))

(declare-fun e!3607306 () Bool)

(assert (=> b!5887181 (= e!3607306 e!3607304)))

(declare-fun b!5887182 () Bool)

(assert (=> b!5887182 (= e!3607305 e!3607309)))

(declare-fun res!2472618 () Bool)

(assert (=> b!5887182 (= res!2472618 (matchRSpec!3040 (regOne!32391 (regOne!32391 (regOne!32391 r!7292))) s!2326))))

(assert (=> b!5887182 (=> res!2472618 e!3607309)))

(declare-fun b!5887183 () Bool)

(assert (=> b!5887183 (= e!3607308 e!3607306)))

(declare-fun res!2472620 () Bool)

(assert (=> b!5887183 (= res!2472620 (not ((_ is EmptyLang!15939) (regOne!32391 (regOne!32391 r!7292)))))))

(assert (=> b!5887183 (=> (not res!2472620) (not e!3607306))))

(assert (=> b!5887184 (= e!3607303 call!464383)))

(assert (= (and d!1848185 c!1045554) b!5887180))

(assert (= (and d!1848185 (not c!1045554)) b!5887183))

(assert (= (and b!5887183 res!2472620) b!5887181))

(assert (= (and b!5887181 c!1045556) b!5887177))

(assert (= (and b!5887181 (not c!1045556)) b!5887175))

(assert (= (and b!5887175 c!1045555) b!5887182))

(assert (= (and b!5887175 (not c!1045555)) b!5887178))

(assert (= (and b!5887182 (not res!2472618)) b!5887176))

(assert (= (and b!5887178 c!1045553) b!5887179))

(assert (= (and b!5887178 (not c!1045553)) b!5887174))

(assert (= (and b!5887179 (not res!2472619)) b!5887184))

(assert (= (or b!5887184 b!5887174) bm!464377))

(assert (= (or b!5887180 b!5887179) bm!464378))

(declare-fun m!6795690 () Bool)

(assert (=> bm!464377 m!6795690))

(assert (=> bm!464378 m!6794582))

(declare-fun m!6795692 () Bool)

(assert (=> b!5887176 m!6795692))

(declare-fun m!6795694 () Bool)

(assert (=> b!5887182 m!6795694))

(assert (=> b!5885951 d!1848185))

(declare-fun bm!464379 () Bool)

(declare-fun call!464387 () (InoxSet Context!10646))

(declare-fun call!464384 () (InoxSet Context!10646))

(assert (=> bm!464379 (= call!464387 call!464384)))

(declare-fun b!5887185 () Bool)

(declare-fun e!3607311 () (InoxSet Context!10646))

(declare-fun call!464385 () (InoxSet Context!10646))

(assert (=> b!5887185 (= e!3607311 ((_ map or) call!464385 call!464384))))

(declare-fun b!5887187 () Bool)

(declare-fun c!1045559 () Bool)

(assert (=> b!5887187 (= c!1045559 ((_ is Star!15939) (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))))))

(declare-fun e!3607310 () (InoxSet Context!10646))

(declare-fun e!3607312 () (InoxSet Context!10646))

(assert (=> b!5887187 (= e!3607310 e!3607312)))

(declare-fun b!5887188 () Bool)

(declare-fun e!3607314 () (InoxSet Context!10646))

(assert (=> b!5887188 (= e!3607314 (store ((as const (Array Context!10646 Bool)) false) (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) true))))

(declare-fun b!5887189 () Bool)

(declare-fun c!1045558 () Bool)

(declare-fun e!3607315 () Bool)

(assert (=> b!5887189 (= c!1045558 e!3607315)))

(declare-fun res!2472621 () Bool)

(assert (=> b!5887189 (=> (not res!2472621) (not e!3607315))))

(assert (=> b!5887189 (= res!2472621 ((_ is Concat!24784) (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))))))

(declare-fun e!3607313 () (InoxSet Context!10646))

(assert (=> b!5887189 (= e!3607313 e!3607311)))

(declare-fun bm!464380 () Bool)

(declare-fun call!464389 () List!64116)

(declare-fun call!464388 () List!64116)

(assert (=> bm!464380 (= call!464389 call!464388)))

(declare-fun bm!464381 () Bool)

(declare-fun c!1045560 () Bool)

(assert (=> bm!464381 (= call!464385 (derivationStepZipperDown!1205 (ite c!1045560 (regOne!32391 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (regOne!32390 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992)))))) (ite c!1045560 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (Context!10647 call!464388)) (h!70441 s!2326)))))

(declare-fun bm!464382 () Bool)

(declare-fun c!1045561 () Bool)

(declare-fun call!464386 () (InoxSet Context!10646))

(assert (=> bm!464382 (= call!464386 (derivationStepZipperDown!1205 (ite c!1045560 (regTwo!32391 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (ite c!1045558 (regTwo!32390 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (ite c!1045561 (regOne!32390 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (reg!16268 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992)))))))) (ite (or c!1045560 c!1045558) (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (Context!10647 call!464389)) (h!70441 s!2326)))))

(declare-fun b!5887190 () Bool)

(assert (=> b!5887190 (= e!3607313 ((_ map or) call!464385 call!464386))))

(declare-fun b!5887191 () Bool)

(assert (=> b!5887191 (= e!3607312 call!464387)))

(declare-fun b!5887192 () Bool)

(assert (=> b!5887192 (= e!3607315 (nullable!5939 (regOne!32390 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992)))))))))

(declare-fun bm!464383 () Bool)

(assert (=> bm!464383 (= call!464384 call!464386)))

(declare-fun b!5887193 () Bool)

(assert (=> b!5887193 (= e!3607312 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464384 () Bool)

(assert (=> bm!464384 (= call!464388 ($colon$colon!1844 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992)))))) (ite (or c!1045558 c!1045561) (regTwo!32390 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992)))))))))

(declare-fun b!5887186 () Bool)

(assert (=> b!5887186 (= e!3607310 call!464387)))

(declare-fun d!1848187 () Bool)

(declare-fun c!1045557 () Bool)

(assert (=> d!1848187 (= c!1045557 (and ((_ is ElementMatch!15939) (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (= (c!1045073 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (h!70441 s!2326))))))

(assert (=> d!1848187 (= (derivationStepZipperDown!1205 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992)))) (Context!10647 (t!377497 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (h!70441 s!2326)) e!3607314)))

(declare-fun b!5887194 () Bool)

(assert (=> b!5887194 (= e!3607314 e!3607313)))

(assert (=> b!5887194 (= c!1045560 ((_ is Union!15939) (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))))))

(declare-fun b!5887195 () Bool)

(assert (=> b!5887195 (= e!3607311 e!3607310)))

(assert (=> b!5887195 (= c!1045561 ((_ is Concat!24784) (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))))))

(assert (= (and d!1848187 c!1045557) b!5887188))

(assert (= (and d!1848187 (not c!1045557)) b!5887194))

(assert (= (and b!5887194 c!1045560) b!5887190))

(assert (= (and b!5887194 (not c!1045560)) b!5887189))

(assert (= (and b!5887189 res!2472621) b!5887192))

(assert (= (and b!5887189 c!1045558) b!5887185))

(assert (= (and b!5887189 (not c!1045558)) b!5887195))

(assert (= (and b!5887195 c!1045561) b!5887186))

(assert (= (and b!5887195 (not c!1045561)) b!5887187))

(assert (= (and b!5887187 c!1045559) b!5887191))

(assert (= (and b!5887187 (not c!1045559)) b!5887193))

(assert (= (or b!5887186 b!5887191) bm!464380))

(assert (= (or b!5887186 b!5887191) bm!464379))

(assert (= (or b!5887185 bm!464380) bm!464384))

(assert (= (or b!5887185 bm!464379) bm!464383))

(assert (= (or b!5887190 bm!464383) bm!464382))

(assert (= (or b!5887190 b!5887185) bm!464381))

(declare-fun m!6795696 () Bool)

(assert (=> bm!464382 m!6795696))

(declare-fun m!6795698 () Bool)

(assert (=> b!5887192 m!6795698))

(declare-fun m!6795700 () Bool)

(assert (=> bm!464381 m!6795700))

(declare-fun m!6795702 () Bool)

(assert (=> bm!464384 m!6795702))

(declare-fun m!6795704 () Bool)

(assert (=> b!5887188 m!6795704))

(assert (=> bm!464174 d!1848187))

(assert (=> b!5885918 d!1848075))

(assert (=> b!5885918 d!1848077))

(declare-fun d!1848189 () Bool)

(assert (=> d!1848189 (= (isEmptyExpr!1374 lt!2307299) ((_ is EmptyExpr!15939) lt!2307299))))

(assert (=> b!5886285 d!1848189))

(declare-fun d!1848191 () Bool)

(assert (=> d!1848191 (= (nullable!5939 (reg!16268 r!7292)) (nullableFct!1924 (reg!16268 r!7292)))))

(declare-fun bs!1390871 () Bool)

(assert (= bs!1390871 d!1848191))

(declare-fun m!6795706 () Bool)

(assert (=> bs!1390871 m!6795706))

(assert (=> b!5886235 d!1848191))

(declare-fun d!1848193 () Bool)

(assert (=> d!1848193 (= (isEmpty!35854 (tail!11518 (unfocusZipperList!1360 zl!343))) ((_ is Nil!63992) (tail!11518 (unfocusZipperList!1360 zl!343))))))

(assert (=> b!5886187 d!1848193))

(declare-fun d!1848195 () Bool)

(assert (=> d!1848195 (= (tail!11518 (unfocusZipperList!1360 zl!343)) (t!377497 (unfocusZipperList!1360 zl!343)))))

(assert (=> b!5886187 d!1848195))

(declare-fun d!1848197 () Bool)

(declare-fun res!2472622 () Bool)

(declare-fun e!3607316 () Bool)

(assert (=> d!1848197 (=> res!2472622 e!3607316)))

(assert (=> d!1848197 (= res!2472622 ((_ is Nil!63992) (exprs!5823 setElem!39905)))))

(assert (=> d!1848197 (= (forall!15026 (exprs!5823 setElem!39905) lambda!321441) e!3607316)))

(declare-fun b!5887196 () Bool)

(declare-fun e!3607317 () Bool)

(assert (=> b!5887196 (= e!3607316 e!3607317)))

(declare-fun res!2472623 () Bool)

(assert (=> b!5887196 (=> (not res!2472623) (not e!3607317))))

(assert (=> b!5887196 (= res!2472623 (dynLambda!25033 lambda!321441 (h!70440 (exprs!5823 setElem!39905))))))

(declare-fun b!5887197 () Bool)

(assert (=> b!5887197 (= e!3607317 (forall!15026 (t!377497 (exprs!5823 setElem!39905)) lambda!321441))))

(assert (= (and d!1848197 (not res!2472622)) b!5887196))

(assert (= (and b!5887196 res!2472623) b!5887197))

(declare-fun b_lambda!221479 () Bool)

(assert (=> (not b_lambda!221479) (not b!5887196)))

(declare-fun m!6795708 () Bool)

(assert (=> b!5887196 m!6795708))

(declare-fun m!6795710 () Bool)

(assert (=> b!5887197 m!6795710))

(assert (=> d!1847761 d!1848197))

(assert (=> bm!464118 d!1848045))

(declare-fun d!1848199 () Bool)

(assert (=> d!1848199 (= (nullable!5939 (regOne!32391 r!7292)) (nullableFct!1924 (regOne!32391 r!7292)))))

(declare-fun bs!1390872 () Bool)

(assert (= bs!1390872 d!1848199))

(declare-fun m!6795712 () Bool)

(assert (=> bs!1390872 m!6795712))

(assert (=> b!5885981 d!1848199))

(declare-fun d!1848201 () Bool)

(assert (=> d!1848201 (= (nullable!5939 (regTwo!32391 r!7292)) (nullableFct!1924 (regTwo!32391 r!7292)))))

(declare-fun bs!1390873 () Bool)

(assert (= bs!1390873 d!1848201))

(declare-fun m!6795714 () Bool)

(assert (=> bs!1390873 m!6795714))

(assert (=> b!5885910 d!1848201))

(assert (=> d!1847785 d!1847781))

(declare-fun d!1848203 () Bool)

(assert (=> d!1848203 (= (flatMap!1470 z!1189 lambda!321393) (dynLambda!25031 lambda!321393 (h!70442 zl!343)))))

(assert (=> d!1848203 true))

(declare-fun _$13!2637 () Unit!157149)

(assert (=> d!1848203 (= (choose!44510 z!1189 (h!70442 zl!343) lambda!321393) _$13!2637)))

(declare-fun b_lambda!221481 () Bool)

(assert (=> (not b_lambda!221481) (not d!1848203)))

(declare-fun bs!1390874 () Bool)

(assert (= bs!1390874 d!1848203))

(assert (=> bs!1390874 m!6794476))

(assert (=> bs!1390874 m!6794898))

(assert (=> d!1847785 d!1848203))

(declare-fun bm!464385 () Bool)

(declare-fun call!464393 () (InoxSet Context!10646))

(declare-fun call!464390 () (InoxSet Context!10646))

(assert (=> bm!464385 (= call!464393 call!464390)))

(declare-fun b!5887198 () Bool)

(declare-fun e!3607319 () (InoxSet Context!10646))

(declare-fun call!464391 () (InoxSet Context!10646))

(assert (=> b!5887198 (= e!3607319 ((_ map or) call!464391 call!464390))))

(declare-fun b!5887200 () Bool)

(declare-fun c!1045564 () Bool)

(assert (=> b!5887200 (= c!1045564 ((_ is Star!15939) (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))))))

(declare-fun e!3607318 () (InoxSet Context!10646))

(declare-fun e!3607320 () (InoxSet Context!10646))

(assert (=> b!5887200 (= e!3607318 e!3607320)))

(declare-fun b!5887201 () Bool)

(declare-fun e!3607322 () (InoxSet Context!10646))

(assert (=> b!5887201 (= e!3607322 (store ((as const (Array Context!10646 Bool)) false) (ite c!1045247 lt!2307219 (Context!10647 call!464157)) true))))

(declare-fun b!5887202 () Bool)

(declare-fun c!1045563 () Bool)

(declare-fun e!3607323 () Bool)

(assert (=> b!5887202 (= c!1045563 e!3607323)))

(declare-fun res!2472624 () Bool)

(assert (=> b!5887202 (=> (not res!2472624) (not e!3607323))))

(assert (=> b!5887202 (= res!2472624 ((_ is Concat!24784) (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))))))

(declare-fun e!3607321 () (InoxSet Context!10646))

(assert (=> b!5887202 (= e!3607321 e!3607319)))

(declare-fun bm!464386 () Bool)

(declare-fun call!464395 () List!64116)

(declare-fun call!464394 () List!64116)

(assert (=> bm!464386 (= call!464395 call!464394)))

(declare-fun bm!464387 () Bool)

(declare-fun c!1045565 () Bool)

(assert (=> bm!464387 (= call!464391 (derivationStepZipperDown!1205 (ite c!1045565 (regOne!32391 (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))) (regOne!32390 (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292))))) (ite c!1045565 (ite c!1045247 lt!2307219 (Context!10647 call!464157)) (Context!10647 call!464394)) (h!70441 s!2326)))))

(declare-fun call!464392 () (InoxSet Context!10646))

(declare-fun bm!464388 () Bool)

(declare-fun c!1045566 () Bool)

(assert (=> bm!464388 (= call!464392 (derivationStepZipperDown!1205 (ite c!1045565 (regTwo!32391 (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))) (ite c!1045563 (regTwo!32390 (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))) (ite c!1045566 (regOne!32390 (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))) (reg!16268 (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292))))))) (ite (or c!1045565 c!1045563) (ite c!1045247 lt!2307219 (Context!10647 call!464157)) (Context!10647 call!464395)) (h!70441 s!2326)))))

(declare-fun b!5887203 () Bool)

(assert (=> b!5887203 (= e!3607321 ((_ map or) call!464391 call!464392))))

(declare-fun b!5887204 () Bool)

(assert (=> b!5887204 (= e!3607320 call!464393)))

(declare-fun b!5887205 () Bool)

(assert (=> b!5887205 (= e!3607323 (nullable!5939 (regOne!32390 (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292))))))))

(declare-fun bm!464389 () Bool)

(assert (=> bm!464389 (= call!464390 call!464392)))

(declare-fun b!5887206 () Bool)

(assert (=> b!5887206 (= e!3607320 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464390 () Bool)

(assert (=> bm!464390 (= call!464394 ($colon$colon!1844 (exprs!5823 (ite c!1045247 lt!2307219 (Context!10647 call!464157))) (ite (or c!1045563 c!1045566) (regTwo!32390 (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))) (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292))))))))

(declare-fun b!5887199 () Bool)

(assert (=> b!5887199 (= e!3607318 call!464393)))

(declare-fun d!1848205 () Bool)

(declare-fun c!1045562 () Bool)

(assert (=> d!1848205 (= c!1045562 (and ((_ is ElementMatch!15939) (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))) (= (c!1045073 (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))) (h!70441 s!2326))))))

(assert (=> d!1848205 (= (derivationStepZipperDown!1205 (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292))) (ite c!1045247 lt!2307219 (Context!10647 call!464157)) (h!70441 s!2326)) e!3607322)))

(declare-fun b!5887207 () Bool)

(assert (=> b!5887207 (= e!3607322 e!3607321)))

(assert (=> b!5887207 (= c!1045565 ((_ is Union!15939) (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))))))

(declare-fun b!5887208 () Bool)

(assert (=> b!5887208 (= e!3607319 e!3607318)))

(assert (=> b!5887208 (= c!1045566 ((_ is Concat!24784) (ite c!1045247 (regOne!32391 (regOne!32391 r!7292)) (regOne!32390 (regOne!32391 r!7292)))))))

(assert (= (and d!1848205 c!1045562) b!5887201))

(assert (= (and d!1848205 (not c!1045562)) b!5887207))

(assert (= (and b!5887207 c!1045565) b!5887203))

(assert (= (and b!5887207 (not c!1045565)) b!5887202))

(assert (= (and b!5887202 res!2472624) b!5887205))

(assert (= (and b!5887202 c!1045563) b!5887198))

(assert (= (and b!5887202 (not c!1045563)) b!5887208))

(assert (= (and b!5887208 c!1045566) b!5887199))

(assert (= (and b!5887208 (not c!1045566)) b!5887200))

(assert (= (and b!5887200 c!1045564) b!5887204))

(assert (= (and b!5887200 (not c!1045564)) b!5887206))

(assert (= (or b!5887199 b!5887204) bm!464386))

(assert (= (or b!5887199 b!5887204) bm!464385))

(assert (= (or b!5887198 bm!464386) bm!464390))

(assert (= (or b!5887198 bm!464385) bm!464389))

(assert (= (or b!5887203 bm!464389) bm!464388))

(assert (= (or b!5887203 b!5887198) bm!464387))

(declare-fun m!6795716 () Bool)

(assert (=> bm!464388 m!6795716))

(declare-fun m!6795718 () Bool)

(assert (=> b!5887205 m!6795718))

(declare-fun m!6795720 () Bool)

(assert (=> bm!464387 m!6795720))

(declare-fun m!6795722 () Bool)

(assert (=> bm!464390 m!6795722))

(declare-fun m!6795724 () Bool)

(assert (=> b!5887201 m!6795724))

(assert (=> bm!464150 d!1848205))

(assert (=> b!5886053 d!1848095))

(assert (=> d!1847775 d!1847769))

(declare-fun d!1848207 () Bool)

(assert (=> d!1848207 (= (flatMap!1470 lt!2307222 lambda!321393) (dynLambda!25031 lambda!321393 lt!2307204))))

(assert (=> d!1848207 true))

(declare-fun _$13!2638 () Unit!157149)

(assert (=> d!1848207 (= (choose!44510 lt!2307222 lt!2307204 lambda!321393) _$13!2638)))

(declare-fun b_lambda!221483 () Bool)

(assert (=> (not b_lambda!221483) (not d!1848207)))

(declare-fun bs!1390875 () Bool)

(assert (= bs!1390875 d!1848207))

(assert (=> bs!1390875 m!6794442))

(assert (=> bs!1390875 m!6794878))

(assert (=> d!1847775 d!1848207))

(declare-fun d!1848209 () Bool)

(declare-fun res!2472629 () Bool)

(declare-fun e!3607328 () Bool)

(assert (=> d!1848209 (=> res!2472629 e!3607328)))

(assert (=> d!1848209 (= res!2472629 ((_ is Nil!63994) lt!2307270))))

(assert (=> d!1848209 (= (noDuplicate!1804 lt!2307270) e!3607328)))

(declare-fun b!5887213 () Bool)

(declare-fun e!3607329 () Bool)

(assert (=> b!5887213 (= e!3607328 e!3607329)))

(declare-fun res!2472630 () Bool)

(assert (=> b!5887213 (=> (not res!2472630) (not e!3607329))))

(declare-fun contains!19943 (List!64118 Context!10646) Bool)

(assert (=> b!5887213 (= res!2472630 (not (contains!19943 (t!377499 lt!2307270) (h!70442 lt!2307270))))))

(declare-fun b!5887214 () Bool)

(assert (=> b!5887214 (= e!3607329 (noDuplicate!1804 (t!377499 lt!2307270)))))

(assert (= (and d!1848209 (not res!2472629)) b!5887213))

(assert (= (and b!5887213 res!2472630) b!5887214))

(declare-fun m!6795726 () Bool)

(assert (=> b!5887213 m!6795726))

(declare-fun m!6795728 () Bool)

(assert (=> b!5887214 m!6795728))

(assert (=> d!1847713 d!1848209))

(declare-fun d!1848211 () Bool)

(declare-fun e!3607338 () Bool)

(assert (=> d!1848211 e!3607338))

(declare-fun res!2472636 () Bool)

(assert (=> d!1848211 (=> (not res!2472636) (not e!3607338))))

(declare-fun res!2472635 () List!64118)

(assert (=> d!1848211 (= res!2472636 (noDuplicate!1804 res!2472635))))

(declare-fun e!3607336 () Bool)

(assert (=> d!1848211 e!3607336))

(assert (=> d!1848211 (= (choose!44506 z!1189) res!2472635)))

(declare-fun b!5887222 () Bool)

(declare-fun e!3607337 () Bool)

(declare-fun tp!1631927 () Bool)

(assert (=> b!5887222 (= e!3607337 tp!1631927)))

(declare-fun b!5887221 () Bool)

(declare-fun tp!1631926 () Bool)

(assert (=> b!5887221 (= e!3607336 (and (inv!83094 (h!70442 res!2472635)) e!3607337 tp!1631926))))

(declare-fun b!5887223 () Bool)

(assert (=> b!5887223 (= e!3607338 (= (content!11769 res!2472635) z!1189))))

(assert (= b!5887221 b!5887222))

(assert (= (and d!1848211 ((_ is Cons!63994) res!2472635)) b!5887221))

(assert (= (and d!1848211 res!2472636) b!5887223))

(declare-fun m!6795730 () Bool)

(assert (=> d!1848211 m!6795730))

(declare-fun m!6795732 () Bool)

(assert (=> b!5887221 m!6795732))

(declare-fun m!6795734 () Bool)

(assert (=> b!5887223 m!6795734))

(assert (=> d!1847713 d!1848211))

(declare-fun d!1848213 () Bool)

(declare-fun c!1045568 () Bool)

(declare-fun e!3607339 () Bool)

(assert (=> d!1848213 (= c!1045568 e!3607339)))

(declare-fun res!2472637 () Bool)

(assert (=> d!1848213 (=> (not res!2472637) (not e!3607339))))

(assert (=> d!1848213 (= res!2472637 ((_ is Cons!63992) (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307214))))))))

(declare-fun e!3607340 () (InoxSet Context!10646))

(assert (=> d!1848213 (= (derivationStepZipperUp!1131 (Context!10647 (t!377497 (exprs!5823 lt!2307214))) (h!70441 s!2326)) e!3607340)))

(declare-fun b!5887224 () Bool)

(assert (=> b!5887224 (= e!3607339 (nullable!5939 (h!70440 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307214)))))))))

(declare-fun bm!464391 () Bool)

(declare-fun call!464396 () (InoxSet Context!10646))

(assert (=> bm!464391 (= call!464396 (derivationStepZipperDown!1205 (h!70440 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307214))))) (Context!10647 (t!377497 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307214)))))) (h!70441 s!2326)))))

(declare-fun b!5887225 () Bool)

(assert (=> b!5887225 (= e!3607340 ((_ map or) call!464396 (derivationStepZipperUp!1131 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307214)))))) (h!70441 s!2326))))))

(declare-fun b!5887226 () Bool)

(declare-fun e!3607341 () (InoxSet Context!10646))

(assert (=> b!5887226 (= e!3607341 ((as const (Array Context!10646 Bool)) false))))

(declare-fun b!5887227 () Bool)

(assert (=> b!5887227 (= e!3607340 e!3607341)))

(declare-fun c!1045567 () Bool)

(assert (=> b!5887227 (= c!1045567 ((_ is Cons!63992) (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307214))))))))

(declare-fun b!5887228 () Bool)

(assert (=> b!5887228 (= e!3607341 call!464396)))

(assert (= (and d!1848213 res!2472637) b!5887224))

(assert (= (and d!1848213 c!1045568) b!5887225))

(assert (= (and d!1848213 (not c!1045568)) b!5887227))

(assert (= (and b!5887227 c!1045567) b!5887228))

(assert (= (and b!5887227 (not c!1045567)) b!5887226))

(assert (= (or b!5887225 b!5887228) bm!464391))

(declare-fun m!6795736 () Bool)

(assert (=> b!5887224 m!6795736))

(declare-fun m!6795738 () Bool)

(assert (=> bm!464391 m!6795738))

(declare-fun m!6795740 () Bool)

(assert (=> b!5887225 m!6795740))

(assert (=> b!5886208 d!1848213))

(declare-fun bm!464392 () Bool)

(declare-fun call!464400 () (InoxSet Context!10646))

(declare-fun call!464397 () (InoxSet Context!10646))

(assert (=> bm!464392 (= call!464400 call!464397)))

(declare-fun b!5887229 () Bool)

(declare-fun e!3607343 () (InoxSet Context!10646))

(declare-fun call!464398 () (InoxSet Context!10646))

(assert (=> b!5887229 (= e!3607343 ((_ map or) call!464398 call!464397))))

(declare-fun b!5887231 () Bool)

(declare-fun c!1045571 () Bool)

(assert (=> b!5887231 (= c!1045571 ((_ is Star!15939) (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))))))

(declare-fun e!3607342 () (InoxSet Context!10646))

(declare-fun e!3607344 () (InoxSet Context!10646))

(assert (=> b!5887231 (= e!3607342 e!3607344)))

(declare-fun e!3607346 () (InoxSet Context!10646))

(declare-fun b!5887232 () Bool)

(assert (=> b!5887232 (= e!3607346 (store ((as const (Array Context!10646 Bool)) false) (ite c!1045242 lt!2307219 (Context!10647 call!464151)) true))))

(declare-fun b!5887233 () Bool)

(declare-fun c!1045570 () Bool)

(declare-fun e!3607347 () Bool)

(assert (=> b!5887233 (= c!1045570 e!3607347)))

(declare-fun res!2472638 () Bool)

(assert (=> b!5887233 (=> (not res!2472638) (not e!3607347))))

(assert (=> b!5887233 (= res!2472638 ((_ is Concat!24784) (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))))))

(declare-fun e!3607345 () (InoxSet Context!10646))

(assert (=> b!5887233 (= e!3607345 e!3607343)))

(declare-fun bm!464393 () Bool)

(declare-fun call!464402 () List!64116)

(declare-fun call!464401 () List!64116)

(assert (=> bm!464393 (= call!464402 call!464401)))

(declare-fun c!1045572 () Bool)

(declare-fun bm!464394 () Bool)

(assert (=> bm!464394 (= call!464398 (derivationStepZipperDown!1205 (ite c!1045572 (regOne!32391 (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))) (regOne!32390 (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292))))) (ite c!1045572 (ite c!1045242 lt!2307219 (Context!10647 call!464151)) (Context!10647 call!464401)) (h!70441 s!2326)))))

(declare-fun call!464399 () (InoxSet Context!10646))

(declare-fun c!1045573 () Bool)

(declare-fun bm!464395 () Bool)

(assert (=> bm!464395 (= call!464399 (derivationStepZipperDown!1205 (ite c!1045572 (regTwo!32391 (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))) (ite c!1045570 (regTwo!32390 (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))) (ite c!1045573 (regOne!32390 (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))) (reg!16268 (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292))))))) (ite (or c!1045572 c!1045570) (ite c!1045242 lt!2307219 (Context!10647 call!464151)) (Context!10647 call!464402)) (h!70441 s!2326)))))

(declare-fun b!5887234 () Bool)

(assert (=> b!5887234 (= e!3607345 ((_ map or) call!464398 call!464399))))

(declare-fun b!5887235 () Bool)

(assert (=> b!5887235 (= e!3607344 call!464400)))

(declare-fun b!5887236 () Bool)

(assert (=> b!5887236 (= e!3607347 (nullable!5939 (regOne!32390 (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292))))))))

(declare-fun bm!464396 () Bool)

(assert (=> bm!464396 (= call!464397 call!464399)))

(declare-fun b!5887237 () Bool)

(assert (=> b!5887237 (= e!3607344 ((as const (Array Context!10646 Bool)) false))))

(declare-fun bm!464397 () Bool)

(assert (=> bm!464397 (= call!464401 ($colon$colon!1844 (exprs!5823 (ite c!1045242 lt!2307219 (Context!10647 call!464151))) (ite (or c!1045570 c!1045573) (regTwo!32390 (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))) (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292))))))))

(declare-fun b!5887230 () Bool)

(assert (=> b!5887230 (= e!3607342 call!464400)))

(declare-fun c!1045569 () Bool)

(declare-fun d!1848215 () Bool)

(assert (=> d!1848215 (= c!1045569 (and ((_ is ElementMatch!15939) (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))) (= (c!1045073 (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))) (h!70441 s!2326))))))

(assert (=> d!1848215 (= (derivationStepZipperDown!1205 (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292))) (ite c!1045242 lt!2307219 (Context!10647 call!464151)) (h!70441 s!2326)) e!3607346)))

(declare-fun b!5887238 () Bool)

(assert (=> b!5887238 (= e!3607346 e!3607345)))

(assert (=> b!5887238 (= c!1045572 ((_ is Union!15939) (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))))))

(declare-fun b!5887239 () Bool)

(assert (=> b!5887239 (= e!3607343 e!3607342)))

(assert (=> b!5887239 (= c!1045573 ((_ is Concat!24784) (ite c!1045242 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))))))

(assert (= (and d!1848215 c!1045569) b!5887232))

(assert (= (and d!1848215 (not c!1045569)) b!5887238))

(assert (= (and b!5887238 c!1045572) b!5887234))

(assert (= (and b!5887238 (not c!1045572)) b!5887233))

(assert (= (and b!5887233 res!2472638) b!5887236))

(assert (= (and b!5887233 c!1045570) b!5887229))

(assert (= (and b!5887233 (not c!1045570)) b!5887239))

(assert (= (and b!5887239 c!1045573) b!5887230))

(assert (= (and b!5887239 (not c!1045573)) b!5887231))

(assert (= (and b!5887231 c!1045571) b!5887235))

(assert (= (and b!5887231 (not c!1045571)) b!5887237))

(assert (= (or b!5887230 b!5887235) bm!464393))

(assert (= (or b!5887230 b!5887235) bm!464392))

(assert (= (or b!5887229 bm!464393) bm!464397))

(assert (= (or b!5887229 bm!464392) bm!464396))

(assert (= (or b!5887234 bm!464396) bm!464395))

(assert (= (or b!5887234 b!5887229) bm!464394))

(declare-fun m!6795742 () Bool)

(assert (=> bm!464395 m!6795742))

(declare-fun m!6795744 () Bool)

(assert (=> b!5887236 m!6795744))

(declare-fun m!6795746 () Bool)

(assert (=> bm!464394 m!6795746))

(declare-fun m!6795748 () Bool)

(assert (=> bm!464397 m!6795748))

(declare-fun m!6795750 () Bool)

(assert (=> b!5887232 m!6795750))

(assert (=> bm!464144 d!1848215))

(declare-fun d!1848217 () Bool)

(declare-fun c!1045574 () Bool)

(assert (=> d!1848217 (= c!1045574 (isEmpty!35852 (tail!11516 (t!377498 s!2326))))))

(declare-fun e!3607348 () Bool)

(assert (=> d!1848217 (= (matchZipper!2005 (derivationStepZipper!1938 lt!2307209 (head!12431 (t!377498 s!2326))) (tail!11516 (t!377498 s!2326))) e!3607348)))

(declare-fun b!5887240 () Bool)

(assert (=> b!5887240 (= e!3607348 (nullableZipper!1777 (derivationStepZipper!1938 lt!2307209 (head!12431 (t!377498 s!2326)))))))

(declare-fun b!5887241 () Bool)

(assert (=> b!5887241 (= e!3607348 (matchZipper!2005 (derivationStepZipper!1938 (derivationStepZipper!1938 lt!2307209 (head!12431 (t!377498 s!2326))) (head!12431 (tail!11516 (t!377498 s!2326)))) (tail!11516 (tail!11516 (t!377498 s!2326)))))))

(assert (= (and d!1848217 c!1045574) b!5887240))

(assert (= (and d!1848217 (not c!1045574)) b!5887241))

(assert (=> d!1848217 m!6794490))

(assert (=> d!1848217 m!6795508))

(assert (=> b!5887240 m!6794906))

(declare-fun m!6795752 () Bool)

(assert (=> b!5887240 m!6795752))

(assert (=> b!5887241 m!6794490))

(assert (=> b!5887241 m!6795512))

(assert (=> b!5887241 m!6794906))

(assert (=> b!5887241 m!6795512))

(declare-fun m!6795754 () Bool)

(assert (=> b!5887241 m!6795754))

(assert (=> b!5887241 m!6794490))

(assert (=> b!5887241 m!6795516))

(assert (=> b!5887241 m!6795754))

(assert (=> b!5887241 m!6795516))

(declare-fun m!6795756 () Bool)

(assert (=> b!5887241 m!6795756))

(assert (=> b!5886252 d!1848217))

(declare-fun bs!1390876 () Bool)

(declare-fun d!1848219 () Bool)

(assert (= bs!1390876 (and d!1848219 d!1848175)))

(declare-fun lambda!321497 () Int)

(assert (=> bs!1390876 (= (= (head!12431 (t!377498 s!2326)) (head!12431 s!2326)) (= lambda!321497 lambda!321494))))

(declare-fun bs!1390877 () Bool)

(assert (= bs!1390877 (and d!1848219 d!1847779)))

(assert (=> bs!1390877 (= (= (head!12431 (t!377498 s!2326)) (h!70441 s!2326)) (= lambda!321497 lambda!321444))))

(declare-fun bs!1390878 () Bool)

(assert (= bs!1390878 (and d!1848219 d!1848119)))

(assert (=> bs!1390878 (= lambda!321497 lambda!321486)))

(declare-fun bs!1390879 () Bool)

(assert (= bs!1390879 (and d!1848219 d!1848113)))

(assert (=> bs!1390879 (= (= (head!12431 (t!377498 s!2326)) (head!12431 s!2326)) (= lambda!321497 lambda!321485))))

(declare-fun bs!1390880 () Bool)

(assert (= bs!1390880 (and d!1848219 b!5885544)))

(assert (=> bs!1390880 (= (= (head!12431 (t!377498 s!2326)) (h!70441 s!2326)) (= lambda!321497 lambda!321393))))

(assert (=> d!1848219 true))

(assert (=> d!1848219 (= (derivationStepZipper!1938 lt!2307209 (head!12431 (t!377498 s!2326))) (flatMap!1470 lt!2307209 lambda!321497))))

(declare-fun bs!1390881 () Bool)

(assert (= bs!1390881 d!1848219))

(declare-fun m!6795758 () Bool)

(assert (=> bs!1390881 m!6795758))

(assert (=> b!5886252 d!1848219))

(assert (=> b!5886252 d!1848121))

(assert (=> b!5886252 d!1848123))

(declare-fun d!1848221 () Bool)

(declare-fun c!1045576 () Bool)

(declare-fun e!3607349 () Bool)

(assert (=> d!1848221 (= c!1045576 e!3607349)))

(declare-fun res!2472639 () Bool)

(assert (=> d!1848221 (=> (not res!2472639) (not e!3607349))))

(assert (=> d!1848221 (= res!2472639 ((_ is Cons!63992) (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307204))))))))

(declare-fun e!3607350 () (InoxSet Context!10646))

(assert (=> d!1848221 (= (derivationStepZipperUp!1131 (Context!10647 (t!377497 (exprs!5823 lt!2307204))) (h!70441 s!2326)) e!3607350)))

(declare-fun b!5887242 () Bool)

(assert (=> b!5887242 (= e!3607349 (nullable!5939 (h!70440 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307204)))))))))

(declare-fun bm!464398 () Bool)

(declare-fun call!464403 () (InoxSet Context!10646))

(assert (=> bm!464398 (= call!464403 (derivationStepZipperDown!1205 (h!70440 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307204))))) (Context!10647 (t!377497 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307204)))))) (h!70441 s!2326)))))

(declare-fun b!5887243 () Bool)

(assert (=> b!5887243 (= e!3607350 ((_ map or) call!464403 (derivationStepZipperUp!1131 (Context!10647 (t!377497 (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307204)))))) (h!70441 s!2326))))))

(declare-fun b!5887244 () Bool)

(declare-fun e!3607351 () (InoxSet Context!10646))

(assert (=> b!5887244 (= e!3607351 ((as const (Array Context!10646 Bool)) false))))

(declare-fun b!5887245 () Bool)

(assert (=> b!5887245 (= e!3607350 e!3607351)))

(declare-fun c!1045575 () Bool)

(assert (=> b!5887245 (= c!1045575 ((_ is Cons!63992) (exprs!5823 (Context!10647 (t!377497 (exprs!5823 lt!2307204))))))))

(declare-fun b!5887246 () Bool)

(assert (=> b!5887246 (= e!3607351 call!464403)))

(assert (= (and d!1848221 res!2472639) b!5887242))

(assert (= (and d!1848221 c!1045576) b!5887243))

(assert (= (and d!1848221 (not c!1045576)) b!5887245))

(assert (= (and b!5887245 c!1045575) b!5887246))

(assert (= (and b!5887245 (not c!1045575)) b!5887244))

(assert (= (or b!5887243 b!5887246) bm!464398))

(declare-fun m!6795760 () Bool)

(assert (=> b!5887242 m!6795760))

(declare-fun m!6795762 () Bool)

(assert (=> bm!464398 m!6795762))

(declare-fun m!6795764 () Bool)

(assert (=> b!5887243 m!6795764))

(assert (=> b!5886213 d!1848221))

(assert (=> b!5886057 d!1848075))

(assert (=> b!5886057 d!1848077))

(assert (=> d!1847717 d!1848045))

(declare-fun d!1848223 () Bool)

(assert (=> d!1848223 (= (Exists!3011 (ite c!1045188 lambda!321424 lambda!321425)) (choose!44513 (ite c!1045188 lambda!321424 lambda!321425)))))

(declare-fun bs!1390882 () Bool)

(assert (= bs!1390882 d!1848223))

(declare-fun m!6795766 () Bool)

(assert (=> bs!1390882 m!6795766))

(assert (=> bm!464117 d!1848223))

(declare-fun d!1848225 () Bool)

(declare-fun c!1045577 () Bool)

(assert (=> d!1848225 (= c!1045577 (isEmpty!35852 (tail!11516 (t!377498 s!2326))))))

(declare-fun e!3607352 () Bool)

(assert (=> d!1848225 (= (matchZipper!2005 (derivationStepZipper!1938 lt!2307215 (head!12431 (t!377498 s!2326))) (tail!11516 (t!377498 s!2326))) e!3607352)))

(declare-fun b!5887247 () Bool)

(assert (=> b!5887247 (= e!3607352 (nullableZipper!1777 (derivationStepZipper!1938 lt!2307215 (head!12431 (t!377498 s!2326)))))))

(declare-fun b!5887248 () Bool)

(assert (=> b!5887248 (= e!3607352 (matchZipper!2005 (derivationStepZipper!1938 (derivationStepZipper!1938 lt!2307215 (head!12431 (t!377498 s!2326))) (head!12431 (tail!11516 (t!377498 s!2326)))) (tail!11516 (tail!11516 (t!377498 s!2326)))))))

(assert (= (and d!1848225 c!1045577) b!5887247))

(assert (= (and d!1848225 (not c!1045577)) b!5887248))

(assert (=> d!1848225 m!6794490))

(assert (=> d!1848225 m!6795508))

(assert (=> b!5887247 m!6794744))

(declare-fun m!6795768 () Bool)

(assert (=> b!5887247 m!6795768))

(assert (=> b!5887248 m!6794490))

(assert (=> b!5887248 m!6795512))

(assert (=> b!5887248 m!6794744))

(assert (=> b!5887248 m!6795512))

(declare-fun m!6795770 () Bool)

(assert (=> b!5887248 m!6795770))

(assert (=> b!5887248 m!6794490))

(assert (=> b!5887248 m!6795516))

(assert (=> b!5887248 m!6795770))

(assert (=> b!5887248 m!6795516))

(declare-fun m!6795772 () Bool)

(assert (=> b!5887248 m!6795772))

(assert (=> b!5886010 d!1848225))

(declare-fun bs!1390883 () Bool)

(declare-fun d!1848227 () Bool)

(assert (= bs!1390883 (and d!1848227 d!1848219)))

(declare-fun lambda!321498 () Int)

(assert (=> bs!1390883 (= lambda!321498 lambda!321497)))

(declare-fun bs!1390884 () Bool)

(assert (= bs!1390884 (and d!1848227 d!1848175)))

(assert (=> bs!1390884 (= (= (head!12431 (t!377498 s!2326)) (head!12431 s!2326)) (= lambda!321498 lambda!321494))))

(declare-fun bs!1390885 () Bool)

(assert (= bs!1390885 (and d!1848227 d!1847779)))

(assert (=> bs!1390885 (= (= (head!12431 (t!377498 s!2326)) (h!70441 s!2326)) (= lambda!321498 lambda!321444))))

(declare-fun bs!1390886 () Bool)

(assert (= bs!1390886 (and d!1848227 d!1848119)))

(assert (=> bs!1390886 (= lambda!321498 lambda!321486)))

(declare-fun bs!1390887 () Bool)

(assert (= bs!1390887 (and d!1848227 d!1848113)))

(assert (=> bs!1390887 (= (= (head!12431 (t!377498 s!2326)) (head!12431 s!2326)) (= lambda!321498 lambda!321485))))

(declare-fun bs!1390888 () Bool)

(assert (= bs!1390888 (and d!1848227 b!5885544)))

(assert (=> bs!1390888 (= (= (head!12431 (t!377498 s!2326)) (h!70441 s!2326)) (= lambda!321498 lambda!321393))))

(assert (=> d!1848227 true))

(assert (=> d!1848227 (= (derivationStepZipper!1938 lt!2307215 (head!12431 (t!377498 s!2326))) (flatMap!1470 lt!2307215 lambda!321498))))

(declare-fun bs!1390889 () Bool)

(assert (= bs!1390889 d!1848227))

(declare-fun m!6795774 () Bool)

(assert (=> bs!1390889 m!6795774))

(assert (=> b!5886010 d!1848227))

(assert (=> b!5886010 d!1848121))

(assert (=> b!5886010 d!1848123))

(declare-fun bs!1390890 () Bool)

(declare-fun d!1848229 () Bool)

(assert (= bs!1390890 (and d!1848229 d!1848105)))

(declare-fun lambda!321499 () Int)

(assert (=> bs!1390890 (= lambda!321499 lambda!321484)))

(declare-fun bs!1390891 () Bool)

(assert (= bs!1390891 (and d!1848229 d!1847757)))

(assert (=> bs!1390891 (= lambda!321499 lambda!321440)))

(declare-fun bs!1390892 () Bool)

(assert (= bs!1390892 (and d!1848229 d!1847755)))

(assert (=> bs!1390892 (= lambda!321499 lambda!321437)))

(declare-fun bs!1390893 () Bool)

(assert (= bs!1390893 (and d!1848229 d!1847631)))

(assert (=> bs!1390893 (= lambda!321499 lambda!321396)))

(declare-fun bs!1390894 () Bool)

(assert (= bs!1390894 (and d!1848229 d!1847753)))

(assert (=> bs!1390894 (= lambda!321499 lambda!321434)))

(declare-fun bs!1390895 () Bool)

(assert (= bs!1390895 (and d!1848229 d!1848137)))

(assert (=> bs!1390895 (= lambda!321499 lambda!321489)))

(declare-fun bs!1390896 () Bool)

(assert (= bs!1390896 (and d!1848229 d!1848127)))

(assert (=> bs!1390896 (= lambda!321499 lambda!321488)))

(declare-fun bs!1390897 () Bool)

(assert (= bs!1390897 (and d!1848229 d!1847793)))

(assert (=> bs!1390897 (= lambda!321499 lambda!321447)))

(declare-fun bs!1390898 () Bool)

(assert (= bs!1390898 (and d!1848229 d!1847761)))

(assert (=> bs!1390898 (= lambda!321499 lambda!321441)))

(declare-fun bs!1390899 () Bool)

(assert (= bs!1390899 (and d!1848229 d!1848125)))

(assert (=> bs!1390899 (= lambda!321499 lambda!321487)))

(assert (=> d!1848229 (= (inv!83094 (h!70442 (t!377499 zl!343))) (forall!15026 (exprs!5823 (h!70442 (t!377499 zl!343))) lambda!321499))))

(declare-fun bs!1390900 () Bool)

(assert (= bs!1390900 d!1848229))

(declare-fun m!6795776 () Bool)

(assert (=> bs!1390900 m!6795776))

(assert (=> b!5886310 d!1848229))

(declare-fun d!1848231 () Bool)

(assert (=> d!1848231 true))

(declare-fun setRes!39922 () Bool)

(assert (=> d!1848231 setRes!39922))

(declare-fun condSetEmpty!39922 () Bool)

(declare-fun res!2472640 () (InoxSet Context!10646))

(assert (=> d!1848231 (= condSetEmpty!39922 (= res!2472640 ((as const (Array Context!10646 Bool)) false)))))

(assert (=> d!1848231 (= (choose!44509 z!1189 lambda!321393) res!2472640)))

(declare-fun setIsEmpty!39922 () Bool)

(assert (=> setIsEmpty!39922 setRes!39922))

(declare-fun e!3607353 () Bool)

(declare-fun tp!1631929 () Bool)

(declare-fun setElem!39922 () Context!10646)

(declare-fun setNonEmpty!39922 () Bool)

(assert (=> setNonEmpty!39922 (= setRes!39922 (and tp!1631929 (inv!83094 setElem!39922) e!3607353))))

(declare-fun setRest!39922 () (InoxSet Context!10646))

(assert (=> setNonEmpty!39922 (= res!2472640 ((_ map or) (store ((as const (Array Context!10646 Bool)) false) setElem!39922 true) setRest!39922))))

(declare-fun b!5887249 () Bool)

(declare-fun tp!1631928 () Bool)

(assert (=> b!5887249 (= e!3607353 tp!1631928)))

(assert (= (and d!1848231 condSetEmpty!39922) setIsEmpty!39922))

(assert (= (and d!1848231 (not condSetEmpty!39922)) setNonEmpty!39922))

(assert (= setNonEmpty!39922 b!5887249))

(declare-fun m!6795778 () Bool)

(assert (=> setNonEmpty!39922 m!6795778))

(assert (=> d!1847781 d!1848231))

(assert (=> bm!464096 d!1848045))

(assert (=> d!1847673 d!1848045))

(declare-fun b!5887250 () Bool)

(declare-fun e!3607358 () Bool)

(declare-fun e!3607357 () Bool)

(assert (=> b!5887250 (= e!3607358 e!3607357)))

(declare-fun res!2472644 () Bool)

(assert (=> b!5887250 (= res!2472644 (not (nullable!5939 (reg!16268 (regTwo!32391 r!7292)))))))

(assert (=> b!5887250 (=> (not res!2472644) (not e!3607357))))

(declare-fun b!5887251 () Bool)

(declare-fun e!3607359 () Bool)

(declare-fun e!3607354 () Bool)

(assert (=> b!5887251 (= e!3607359 e!3607354)))

(declare-fun res!2472641 () Bool)

(assert (=> b!5887251 (=> (not res!2472641) (not e!3607354))))

(declare-fun call!464404 () Bool)

(assert (=> b!5887251 (= res!2472641 call!464404)))

(declare-fun bm!464399 () Bool)

(declare-fun c!1045579 () Bool)

(assert (=> bm!464399 (= call!464404 (validRegex!7675 (ite c!1045579 (regOne!32391 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))))))

(declare-fun d!1848233 () Bool)

(declare-fun res!2472643 () Bool)

(declare-fun e!3607360 () Bool)

(assert (=> d!1848233 (=> res!2472643 e!3607360)))

(assert (=> d!1848233 (= res!2472643 ((_ is ElementMatch!15939) (regTwo!32391 r!7292)))))

(assert (=> d!1848233 (= (validRegex!7675 (regTwo!32391 r!7292)) e!3607360)))

(declare-fun b!5887252 () Bool)

(declare-fun e!3607355 () Bool)

(declare-fun call!464406 () Bool)

(assert (=> b!5887252 (= e!3607355 call!464406)))

(declare-fun b!5887253 () Bool)

(assert (=> b!5887253 (= e!3607360 e!3607358)))

(declare-fun c!1045578 () Bool)

(assert (=> b!5887253 (= c!1045578 ((_ is Star!15939) (regTwo!32391 r!7292)))))

(declare-fun b!5887254 () Bool)

(declare-fun res!2472645 () Bool)

(assert (=> b!5887254 (=> (not res!2472645) (not e!3607355))))

(assert (=> b!5887254 (= res!2472645 call!464404)))

(declare-fun e!3607356 () Bool)

(assert (=> b!5887254 (= e!3607356 e!3607355)))

(declare-fun b!5887255 () Bool)

(assert (=> b!5887255 (= e!3607354 call!464406)))

(declare-fun b!5887256 () Bool)

(declare-fun res!2472642 () Bool)

(assert (=> b!5887256 (=> res!2472642 e!3607359)))

(assert (=> b!5887256 (= res!2472642 (not ((_ is Concat!24784) (regTwo!32391 r!7292))))))

(assert (=> b!5887256 (= e!3607356 e!3607359)))

(declare-fun b!5887257 () Bool)

(assert (=> b!5887257 (= e!3607358 e!3607356)))

(assert (=> b!5887257 (= c!1045579 ((_ is Union!15939) (regTwo!32391 r!7292)))))

(declare-fun call!464405 () Bool)

(declare-fun bm!464400 () Bool)

(assert (=> bm!464400 (= call!464405 (validRegex!7675 (ite c!1045578 (reg!16268 (regTwo!32391 r!7292)) (ite c!1045579 (regTwo!32391 (regTwo!32391 r!7292)) (regTwo!32390 (regTwo!32391 r!7292))))))))

(declare-fun bm!464401 () Bool)

(assert (=> bm!464401 (= call!464406 call!464405)))

(declare-fun b!5887258 () Bool)

(assert (=> b!5887258 (= e!3607357 call!464405)))

(assert (= (and d!1848233 (not res!2472643)) b!5887253))

(assert (= (and b!5887253 c!1045578) b!5887250))

(assert (= (and b!5887253 (not c!1045578)) b!5887257))

(assert (= (and b!5887250 res!2472644) b!5887258))

(assert (= (and b!5887257 c!1045579) b!5887254))

(assert (= (and b!5887257 (not c!1045579)) b!5887256))

(assert (= (and b!5887254 res!2472645) b!5887252))

(assert (= (and b!5887256 (not res!2472642)) b!5887251))

(assert (= (and b!5887251 res!2472641) b!5887255))

(assert (= (or b!5887252 b!5887255) bm!464401))

(assert (= (or b!5887254 b!5887251) bm!464399))

(assert (= (or b!5887258 bm!464401) bm!464400))

(declare-fun m!6795780 () Bool)

(assert (=> b!5887250 m!6795780))

(declare-fun m!6795782 () Bool)

(assert (=> bm!464399 m!6795782))

(declare-fun m!6795784 () Bool)

(assert (=> bm!464400 m!6795784))

(assert (=> d!1847673 d!1848233))

(assert (=> bm!464121 d!1848045))

(declare-fun bs!1390901 () Bool)

(declare-fun d!1848235 () Bool)

(assert (= bs!1390901 (and d!1848235 d!1848163)))

(declare-fun lambda!321500 () Int)

(assert (=> bs!1390901 (= lambda!321500 lambda!321490)))

(declare-fun bs!1390902 () Bool)

(assert (= bs!1390902 (and d!1848235 d!1848057)))

(assert (=> bs!1390902 (= lambda!321500 lambda!321478)))

(declare-fun bs!1390903 () Bool)

(assert (= bs!1390903 (and d!1848235 d!1848053)))

(assert (=> bs!1390903 (= lambda!321500 lambda!321477)))

(declare-fun bs!1390904 () Bool)

(assert (= bs!1390904 (and d!1848235 d!1848083)))

(assert (=> bs!1390904 (= lambda!321500 lambda!321481)))

(declare-fun bs!1390905 () Bool)

(assert (= bs!1390905 (and d!1848235 d!1848169)))

(assert (=> bs!1390905 (= lambda!321500 lambda!321493)))

(assert (=> d!1848235 (= (nullableZipper!1777 lt!2307222) (exists!2326 lt!2307222 lambda!321500))))

(declare-fun bs!1390906 () Bool)

(assert (= bs!1390906 d!1848235))

(declare-fun m!6795786 () Bool)

(assert (=> bs!1390906 m!6795786))

(assert (=> b!5886256 d!1848235))

(assert (=> d!1847705 d!1847673))

(assert (=> d!1847705 d!1847637))

(declare-fun d!1848237 () Bool)

(assert (=> d!1848237 (= (matchR!8122 (regTwo!32391 r!7292) s!2326) (matchRSpec!3040 (regTwo!32391 r!7292) s!2326))))

(assert (=> d!1848237 true))

(declare-fun _$88!4349 () Unit!157149)

(assert (=> d!1848237 (= (choose!44502 (regTwo!32391 r!7292) s!2326) _$88!4349)))

(declare-fun bs!1390907 () Bool)

(assert (= bs!1390907 d!1848237))

(assert (=> bs!1390907 m!6794402))

(assert (=> bs!1390907 m!6794398))

(assert (=> d!1847705 d!1848237))

(assert (=> d!1847705 d!1848233))

(declare-fun d!1848239 () Bool)

(assert (=> d!1848239 (= (nullable!5939 (h!70440 (exprs!5823 (h!70442 zl!343)))) (nullableFct!1924 (h!70440 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun bs!1390908 () Bool)

(assert (= bs!1390908 d!1848239))

(declare-fun m!6795788 () Bool)

(assert (=> bs!1390908 m!6795788))

(assert (=> b!5886246 d!1848239))

(assert (=> d!1847741 d!1847737))

(assert (=> d!1847741 d!1847727))

(declare-fun d!1848241 () Bool)

(assert (=> d!1848241 (= (matchR!8122 r!7292 s!2326) (matchRSpec!3040 r!7292 s!2326))))

(assert (=> d!1848241 true))

(declare-fun _$88!4350 () Unit!157149)

(assert (=> d!1848241 (= (choose!44502 r!7292 s!2326) _$88!4350)))

(declare-fun bs!1390909 () Bool)

(assert (= bs!1390909 d!1848241))

(assert (=> bs!1390909 m!6794412))

(assert (=> bs!1390909 m!6794410))

(assert (=> d!1847741 d!1848241))

(assert (=> d!1847741 d!1847777))

(assert (=> d!1847787 d!1848059))

(declare-fun d!1848243 () Bool)

(declare-fun c!1045580 () Bool)

(assert (=> d!1848243 (= c!1045580 (isEmpty!35852 (t!377498 s!2326)))))

(declare-fun e!3607361 () Bool)

(assert (=> d!1848243 (= (matchZipper!2005 ((_ map or) lt!2307209 lt!2307223) (t!377498 s!2326)) e!3607361)))

(declare-fun b!5887259 () Bool)

(assert (=> b!5887259 (= e!3607361 (nullableZipper!1777 ((_ map or) lt!2307209 lt!2307223)))))

(declare-fun b!5887260 () Bool)

(assert (=> b!5887260 (= e!3607361 (matchZipper!2005 (derivationStepZipper!1938 ((_ map or) lt!2307209 lt!2307223) (head!12431 (t!377498 s!2326))) (tail!11516 (t!377498 s!2326))))))

(assert (= (and d!1848243 c!1045580) b!5887259))

(assert (= (and d!1848243 (not c!1045580)) b!5887260))

(assert (=> d!1848243 m!6794482))

(declare-fun m!6795790 () Bool)

(assert (=> b!5887259 m!6795790))

(assert (=> b!5887260 m!6794486))

(assert (=> b!5887260 m!6794486))

(declare-fun m!6795792 () Bool)

(assert (=> b!5887260 m!6795792))

(assert (=> b!5887260 m!6794490))

(assert (=> b!5887260 m!6795792))

(assert (=> b!5887260 m!6794490))

(declare-fun m!6795794 () Bool)

(assert (=> b!5887260 m!6795794))

(assert (=> d!1847789 d!1848243))

(assert (=> d!1847789 d!1847787))

(declare-fun e!3607364 () Bool)

(declare-fun d!1848245 () Bool)

(assert (=> d!1848245 (= (matchZipper!2005 ((_ map or) lt!2307209 lt!2307223) (t!377498 s!2326)) e!3607364)))

(declare-fun res!2472648 () Bool)

(assert (=> d!1848245 (=> res!2472648 e!3607364)))

(assert (=> d!1848245 (= res!2472648 (matchZipper!2005 lt!2307209 (t!377498 s!2326)))))

(assert (=> d!1848245 true))

(declare-fun _$48!1467 () Unit!157149)

(assert (=> d!1848245 (= (choose!44511 lt!2307209 lt!2307223 (t!377498 s!2326)) _$48!1467)))

(declare-fun b!5887263 () Bool)

(assert (=> b!5887263 (= e!3607364 (matchZipper!2005 lt!2307223 (t!377498 s!2326)))))

(assert (= (and d!1848245 (not res!2472648)) b!5887263))

(assert (=> d!1848245 m!6794910))

(assert (=> d!1848245 m!6794466))

(assert (=> b!5887263 m!6794418))

(assert (=> d!1847789 d!1848245))

(declare-fun d!1848247 () Bool)

(assert (=> d!1848247 (= (nullable!5939 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))) (nullableFct!1924 (h!70440 (exprs!5823 (Context!10647 (Cons!63992 r!7292 Nil!63992))))))))

(declare-fun bs!1390910 () Bool)

(assert (= bs!1390910 d!1848247))

(declare-fun m!6795796 () Bool)

(assert (=> bs!1390910 m!6795796))

(assert (=> b!5886299 d!1848247))

(declare-fun d!1848249 () Bool)

(declare-fun e!3607370 () Bool)

(assert (=> d!1848249 e!3607370))

(declare-fun c!1045583 () Bool)

(assert (=> d!1848249 (= c!1045583 ((_ is EmptyExpr!15939) (derivativeStep!4677 (regTwo!32391 r!7292) (head!12431 s!2326))))))

(declare-fun lt!2307320 () Bool)

(declare-fun e!3607366 () Bool)

(assert (=> d!1848249 (= lt!2307320 e!3607366)))

(declare-fun c!1045581 () Bool)

(assert (=> d!1848249 (= c!1045581 (isEmpty!35852 (tail!11516 s!2326)))))

(assert (=> d!1848249 (validRegex!7675 (derivativeStep!4677 (regTwo!32391 r!7292) (head!12431 s!2326)))))

(assert (=> d!1848249 (= (matchR!8122 (derivativeStep!4677 (regTwo!32391 r!7292) (head!12431 s!2326)) (tail!11516 s!2326)) lt!2307320)))

(declare-fun b!5887264 () Bool)

(declare-fun res!2472656 () Bool)

(declare-fun e!3607367 () Bool)

(assert (=> b!5887264 (=> (not res!2472656) (not e!3607367))))

(declare-fun call!464407 () Bool)

(assert (=> b!5887264 (= res!2472656 (not call!464407))))

(declare-fun b!5887265 () Bool)

(declare-fun res!2472652 () Bool)

(declare-fun e!3607365 () Bool)

(assert (=> b!5887265 (=> res!2472652 e!3607365)))

(assert (=> b!5887265 (= res!2472652 e!3607367)))

(declare-fun res!2472654 () Bool)

(assert (=> b!5887265 (=> (not res!2472654) (not e!3607367))))

(assert (=> b!5887265 (= res!2472654 lt!2307320)))

(declare-fun b!5887266 () Bool)

(assert (=> b!5887266 (= e!3607370 (= lt!2307320 call!464407))))

(declare-fun b!5887267 () Bool)

(declare-fun e!3607368 () Bool)

(assert (=> b!5887267 (= e!3607365 e!3607368)))

(declare-fun res!2472655 () Bool)

(assert (=> b!5887267 (=> (not res!2472655) (not e!3607368))))

(assert (=> b!5887267 (= res!2472655 (not lt!2307320))))

(declare-fun b!5887268 () Bool)

(declare-fun e!3607371 () Bool)

(assert (=> b!5887268 (= e!3607368 e!3607371)))

(declare-fun res!2472651 () Bool)

(assert (=> b!5887268 (=> res!2472651 e!3607371)))

(assert (=> b!5887268 (= res!2472651 call!464407)))

(declare-fun b!5887269 () Bool)

(assert (=> b!5887269 (= e!3607367 (= (head!12431 (tail!11516 s!2326)) (c!1045073 (derivativeStep!4677 (regTwo!32391 r!7292) (head!12431 s!2326)))))))

(declare-fun bm!464402 () Bool)

(assert (=> bm!464402 (= call!464407 (isEmpty!35852 (tail!11516 s!2326)))))

(declare-fun b!5887270 () Bool)

(assert (=> b!5887270 (= e!3607371 (not (= (head!12431 (tail!11516 s!2326)) (c!1045073 (derivativeStep!4677 (regTwo!32391 r!7292) (head!12431 s!2326))))))))

(declare-fun b!5887271 () Bool)

(assert (=> b!5887271 (= e!3607366 (nullable!5939 (derivativeStep!4677 (regTwo!32391 r!7292) (head!12431 s!2326))))))

(declare-fun b!5887272 () Bool)

(declare-fun e!3607369 () Bool)

(assert (=> b!5887272 (= e!3607369 (not lt!2307320))))

(declare-fun b!5887273 () Bool)

(declare-fun res!2472650 () Bool)

(assert (=> b!5887273 (=> res!2472650 e!3607365)))

(assert (=> b!5887273 (= res!2472650 (not ((_ is ElementMatch!15939) (derivativeStep!4677 (regTwo!32391 r!7292) (head!12431 s!2326)))))))

(assert (=> b!5887273 (= e!3607369 e!3607365)))

(declare-fun b!5887274 () Bool)

(declare-fun res!2472653 () Bool)

(assert (=> b!5887274 (=> res!2472653 e!3607371)))

(assert (=> b!5887274 (= res!2472653 (not (isEmpty!35852 (tail!11516 (tail!11516 s!2326)))))))

(declare-fun b!5887275 () Bool)

(assert (=> b!5887275 (= e!3607370 e!3607369)))

(declare-fun c!1045582 () Bool)

(assert (=> b!5887275 (= c!1045582 ((_ is EmptyLang!15939) (derivativeStep!4677 (regTwo!32391 r!7292) (head!12431 s!2326))))))

(declare-fun b!5887276 () Bool)

(assert (=> b!5887276 (= e!3607366 (matchR!8122 (derivativeStep!4677 (derivativeStep!4677 (regTwo!32391 r!7292) (head!12431 s!2326)) (head!12431 (tail!11516 s!2326))) (tail!11516 (tail!11516 s!2326))))))

(declare-fun b!5887277 () Bool)

(declare-fun res!2472649 () Bool)

(assert (=> b!5887277 (=> (not res!2472649) (not e!3607367))))

(assert (=> b!5887277 (= res!2472649 (isEmpty!35852 (tail!11516 (tail!11516 s!2326))))))

(assert (= (and d!1848249 c!1045581) b!5887271))

(assert (= (and d!1848249 (not c!1045581)) b!5887276))

(assert (= (and d!1848249 c!1045583) b!5887266))

(assert (= (and d!1848249 (not c!1045583)) b!5887275))

(assert (= (and b!5887275 c!1045582) b!5887272))

(assert (= (and b!5887275 (not c!1045582)) b!5887273))

(assert (= (and b!5887273 (not res!2472650)) b!5887265))

(assert (= (and b!5887265 res!2472654) b!5887264))

(assert (= (and b!5887264 res!2472656) b!5887277))

(assert (= (and b!5887277 res!2472649) b!5887269))

(assert (= (and b!5887265 (not res!2472652)) b!5887267))

(assert (= (and b!5887267 res!2472655) b!5887268))

(assert (= (and b!5887268 (not res!2472651)) b!5887274))

(assert (= (and b!5887274 (not res!2472653)) b!5887270))

(assert (= (or b!5887266 b!5887264 b!5887268) bm!464402))

(assert (=> b!5887274 m!6794662))

(assert (=> b!5887274 m!6795496))

(assert (=> b!5887274 m!6795496))

(assert (=> b!5887274 m!6795552))

(assert (=> b!5887270 m!6794662))

(assert (=> b!5887270 m!6795492))

(assert (=> b!5887277 m!6794662))

(assert (=> b!5887277 m!6795496))

(assert (=> b!5887277 m!6795496))

(assert (=> b!5887277 m!6795552))

(assert (=> b!5887276 m!6794662))

(assert (=> b!5887276 m!6795492))

(assert (=> b!5887276 m!6794668))

(assert (=> b!5887276 m!6795492))

(declare-fun m!6795798 () Bool)

(assert (=> b!5887276 m!6795798))

(assert (=> b!5887276 m!6794662))

(assert (=> b!5887276 m!6795496))

(assert (=> b!5887276 m!6795798))

(assert (=> b!5887276 m!6795496))

(declare-fun m!6795800 () Bool)

(assert (=> b!5887276 m!6795800))

(assert (=> bm!464402 m!6794662))

(assert (=> bm!464402 m!6794664))

(assert (=> b!5887269 m!6794662))

(assert (=> b!5887269 m!6795492))

(assert (=> b!5887271 m!6794668))

(declare-fun m!6795802 () Bool)

(assert (=> b!5887271 m!6795802))

(assert (=> d!1848249 m!6794662))

(assert (=> d!1848249 m!6794664))

(assert (=> d!1848249 m!6794668))

(declare-fun m!6795804 () Bool)

(assert (=> d!1848249 m!6795804))

(assert (=> b!5885917 d!1848249))

(declare-fun bm!464403 () Bool)

(declare-fun c!1045584 () Bool)

(declare-fun call!464410 () Regex!15939)

(declare-fun c!1045588 () Bool)

(assert (=> bm!464403 (= call!464410 (derivativeStep!4677 (ite c!1045588 (regTwo!32391 (regTwo!32391 r!7292)) (ite c!1045584 (reg!16268 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))) (head!12431 s!2326)))))

(declare-fun d!1848251 () Bool)

(declare-fun lt!2307321 () Regex!15939)

(assert (=> d!1848251 (validRegex!7675 lt!2307321)))

(declare-fun e!3607375 () Regex!15939)

(assert (=> d!1848251 (= lt!2307321 e!3607375)))

(declare-fun c!1045586 () Bool)

(assert (=> d!1848251 (= c!1045586 (or ((_ is EmptyExpr!15939) (regTwo!32391 r!7292)) ((_ is EmptyLang!15939) (regTwo!32391 r!7292))))))

(assert (=> d!1848251 (validRegex!7675 (regTwo!32391 r!7292))))

(assert (=> d!1848251 (= (derivativeStep!4677 (regTwo!32391 r!7292) (head!12431 s!2326)) lt!2307321)))

(declare-fun b!5887278 () Bool)

(assert (=> b!5887278 (= c!1045588 ((_ is Union!15939) (regTwo!32391 r!7292)))))

(declare-fun e!3607373 () Regex!15939)

(declare-fun e!3607376 () Regex!15939)

(assert (=> b!5887278 (= e!3607373 e!3607376)))

(declare-fun b!5887279 () Bool)

(declare-fun e!3607372 () Regex!15939)

(assert (=> b!5887279 (= e!3607376 e!3607372)))

(assert (=> b!5887279 (= c!1045584 ((_ is Star!15939) (regTwo!32391 r!7292)))))

(declare-fun b!5887280 () Bool)

(declare-fun call!464408 () Regex!15939)

(assert (=> b!5887280 (= e!3607376 (Union!15939 call!464408 call!464410))))

(declare-fun b!5887281 () Bool)

(declare-fun call!464409 () Regex!15939)

(assert (=> b!5887281 (= e!3607372 (Concat!24784 call!464409 (regTwo!32391 r!7292)))))

(declare-fun b!5887282 () Bool)

(assert (=> b!5887282 (= e!3607375 e!3607373)))

(declare-fun c!1045585 () Bool)

(assert (=> b!5887282 (= c!1045585 ((_ is ElementMatch!15939) (regTwo!32391 r!7292)))))

(declare-fun c!1045587 () Bool)

(declare-fun bm!464404 () Bool)

(assert (=> bm!464404 (= call!464408 (derivativeStep!4677 (ite c!1045588 (regOne!32391 (regTwo!32391 r!7292)) (ite c!1045587 (regTwo!32390 (regTwo!32391 r!7292)) (regOne!32390 (regTwo!32391 r!7292)))) (head!12431 s!2326)))))

(declare-fun bm!464405 () Bool)

(declare-fun call!464411 () Regex!15939)

(assert (=> bm!464405 (= call!464411 call!464408)))

(declare-fun b!5887283 () Bool)

(assert (=> b!5887283 (= e!3607373 (ite (= (head!12431 s!2326) (c!1045073 (regTwo!32391 r!7292))) EmptyExpr!15939 EmptyLang!15939))))

(declare-fun b!5887284 () Bool)

(declare-fun e!3607374 () Regex!15939)

(assert (=> b!5887284 (= e!3607374 (Union!15939 (Concat!24784 call!464409 (regTwo!32390 (regTwo!32391 r!7292))) call!464411))))

(declare-fun b!5887285 () Bool)

(assert (=> b!5887285 (= c!1045587 (nullable!5939 (regOne!32390 (regTwo!32391 r!7292))))))

(assert (=> b!5887285 (= e!3607372 e!3607374)))

(declare-fun bm!464406 () Bool)

(assert (=> bm!464406 (= call!464409 call!464410)))

(declare-fun b!5887286 () Bool)

(assert (=> b!5887286 (= e!3607374 (Union!15939 (Concat!24784 call!464411 (regTwo!32390 (regTwo!32391 r!7292))) EmptyLang!15939))))

(declare-fun b!5887287 () Bool)

(assert (=> b!5887287 (= e!3607375 EmptyLang!15939)))

(assert (= (and d!1848251 c!1045586) b!5887287))

(assert (= (and d!1848251 (not c!1045586)) b!5887282))

(assert (= (and b!5887282 c!1045585) b!5887283))

(assert (= (and b!5887282 (not c!1045585)) b!5887278))

(assert (= (and b!5887278 c!1045588) b!5887280))

(assert (= (and b!5887278 (not c!1045588)) b!5887279))

(assert (= (and b!5887279 c!1045584) b!5887281))

(assert (= (and b!5887279 (not c!1045584)) b!5887285))

(assert (= (and b!5887285 c!1045587) b!5887284))

(assert (= (and b!5887285 (not c!1045587)) b!5887286))

(assert (= (or b!5887284 b!5887286) bm!464405))

(assert (= (or b!5887281 b!5887284) bm!464406))

(assert (= (or b!5887280 bm!464406) bm!464403))

(assert (= (or b!5887280 bm!464405) bm!464404))

(assert (=> bm!464403 m!6794666))

(declare-fun m!6795806 () Bool)

(assert (=> bm!464403 m!6795806))

(declare-fun m!6795808 () Bool)

(assert (=> d!1848251 m!6795808))

(assert (=> d!1848251 m!6794674))

(assert (=> bm!464404 m!6794666))

(declare-fun m!6795810 () Bool)

(assert (=> bm!464404 m!6795810))

(assert (=> b!5887285 m!6794808))

(assert (=> b!5885917 d!1848251))

(assert (=> b!5885917 d!1848095))

(assert (=> b!5885917 d!1848077))

(declare-fun d!1848253 () Bool)

(declare-fun res!2472657 () Bool)

(declare-fun e!3607377 () Bool)

(assert (=> d!1848253 (=> res!2472657 e!3607377)))

(assert (=> d!1848253 (= res!2472657 ((_ is Nil!63992) (exprs!5823 lt!2307204)))))

(assert (=> d!1848253 (= (forall!15026 (exprs!5823 lt!2307204) lambda!321396) e!3607377)))

(declare-fun b!5887288 () Bool)

(declare-fun e!3607378 () Bool)

(assert (=> b!5887288 (= e!3607377 e!3607378)))

(declare-fun res!2472658 () Bool)

(assert (=> b!5887288 (=> (not res!2472658) (not e!3607378))))

(assert (=> b!5887288 (= res!2472658 (dynLambda!25033 lambda!321396 (h!70440 (exprs!5823 lt!2307204))))))

(declare-fun b!5887289 () Bool)

(assert (=> b!5887289 (= e!3607378 (forall!15026 (t!377497 (exprs!5823 lt!2307204)) lambda!321396))))

(assert (= (and d!1848253 (not res!2472657)) b!5887288))

(assert (= (and b!5887288 res!2472658) b!5887289))

(declare-fun b_lambda!221485 () Bool)

(assert (=> (not b_lambda!221485) (not b!5887288)))

(declare-fun m!6795812 () Bool)

(assert (=> b!5887288 m!6795812))

(declare-fun m!6795814 () Bool)

(assert (=> b!5887289 m!6795814))

(assert (=> d!1847631 d!1848253))

(declare-fun d!1848255 () Bool)

(assert (=> d!1848255 (= (Exists!3011 (ite c!1045213 lambda!321432 lambda!321433)) (choose!44513 (ite c!1045213 lambda!321432 lambda!321433)))))

(declare-fun bs!1390911 () Bool)

(assert (= bs!1390911 d!1848255))

(declare-fun m!6795816 () Bool)

(assert (=> bs!1390911 m!6795816))

(assert (=> bm!464120 d!1848255))

(declare-fun d!1848257 () Bool)

(assert (=> d!1848257 (= ($colon$colon!1844 (exprs!5823 lt!2307219) (ite (or c!1045245 c!1045248) (regTwo!32390 (regOne!32391 r!7292)) (regOne!32391 r!7292))) (Cons!63992 (ite (or c!1045245 c!1045248) (regTwo!32390 (regOne!32391 r!7292)) (regOne!32391 r!7292)) (exprs!5823 lt!2307219)))))

(assert (=> bm!464153 d!1848257))

(assert (=> b!5885980 d!1848095))

(declare-fun d!1848259 () Bool)

(assert (=> d!1848259 (= (head!12433 (unfocusZipperList!1360 zl!343)) (h!70440 (unfocusZipperList!1360 zl!343)))))

(assert (=> b!5886186 d!1848259))

(assert (=> b!5886255 d!1847629))

(declare-fun d!1848261 () Bool)

(assert (=> d!1848261 (= (nullable!5939 (regOne!32390 (regTwo!32391 r!7292))) (nullableFct!1924 (regOne!32390 (regTwo!32391 r!7292))))))

(declare-fun bs!1390912 () Bool)

(assert (= bs!1390912 d!1848261))

(declare-fun m!6795818 () Bool)

(assert (=> bs!1390912 m!6795818))

(assert (=> b!5886144 d!1848261))

(assert (=> d!1847773 d!1847771))

(declare-fun d!1848263 () Bool)

(assert (=> d!1848263 (= (flatMap!1470 lt!2307201 lambda!321393) (dynLambda!25031 lambda!321393 lt!2307214))))

(assert (=> d!1848263 true))

(declare-fun _$13!2639 () Unit!157149)

(assert (=> d!1848263 (= (choose!44510 lt!2307201 lt!2307214 lambda!321393) _$13!2639)))

(declare-fun b_lambda!221487 () Bool)

(assert (=> (not b_lambda!221487) (not d!1848263)))

(declare-fun bs!1390913 () Bool)

(assert (= bs!1390913 d!1848263))

(assert (=> bs!1390913 m!6794446))

(assert (=> bs!1390913 m!6794874))

(assert (=> d!1847773 d!1848263))

(declare-fun d!1848265 () Bool)

(declare-fun res!2472659 () Bool)

(declare-fun e!3607379 () Bool)

(assert (=> d!1848265 (=> res!2472659 e!3607379)))

(assert (=> d!1848265 (= res!2472659 ((_ is Nil!63992) (exprs!5823 (h!70442 zl!343))))))

(assert (=> d!1848265 (= (forall!15026 (exprs!5823 (h!70442 zl!343)) lambda!321434) e!3607379)))

(declare-fun b!5887290 () Bool)

(declare-fun e!3607380 () Bool)

(assert (=> b!5887290 (= e!3607379 e!3607380)))

(declare-fun res!2472660 () Bool)

(assert (=> b!5887290 (=> (not res!2472660) (not e!3607380))))

(assert (=> b!5887290 (= res!2472660 (dynLambda!25033 lambda!321434 (h!70440 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun b!5887291 () Bool)

(assert (=> b!5887291 (= e!3607380 (forall!15026 (t!377497 (exprs!5823 (h!70442 zl!343))) lambda!321434))))

(assert (= (and d!1848265 (not res!2472659)) b!5887290))

(assert (= (and b!5887290 res!2472660) b!5887291))

(declare-fun b_lambda!221489 () Bool)

(assert (=> (not b_lambda!221489) (not b!5887290)))

(declare-fun m!6795820 () Bool)

(assert (=> b!5887290 m!6795820))

(declare-fun m!6795822 () Bool)

(assert (=> b!5887291 m!6795822))

(assert (=> d!1847753 d!1848265))

(declare-fun d!1848267 () Bool)

(declare-fun c!1045589 () Bool)

(assert (=> d!1848267 (= c!1045589 (isEmpty!35852 (tail!11516 s!2326)))))

(declare-fun e!3607381 () Bool)

(assert (=> d!1848267 (= (matchZipper!2005 (derivationStepZipper!1938 z!1189 (head!12431 s!2326)) (tail!11516 s!2326)) e!3607381)))

(declare-fun b!5887292 () Bool)

(assert (=> b!5887292 (= e!3607381 (nullableZipper!1777 (derivationStepZipper!1938 z!1189 (head!12431 s!2326))))))

(declare-fun b!5887293 () Bool)

(assert (=> b!5887293 (= e!3607381 (matchZipper!2005 (derivationStepZipper!1938 (derivationStepZipper!1938 z!1189 (head!12431 s!2326)) (head!12431 (tail!11516 s!2326))) (tail!11516 (tail!11516 s!2326))))))

(assert (= (and d!1848267 c!1045589) b!5887292))

(assert (= (and d!1848267 (not c!1045589)) b!5887293))

(assert (=> d!1848267 m!6794662))

(assert (=> d!1848267 m!6794664))

(assert (=> b!5887292 m!6794738))

(declare-fun m!6795824 () Bool)

(assert (=> b!5887292 m!6795824))

(assert (=> b!5887293 m!6794662))

(assert (=> b!5887293 m!6795492))

(assert (=> b!5887293 m!6794738))

(assert (=> b!5887293 m!6795492))

(declare-fun m!6795826 () Bool)

(assert (=> b!5887293 m!6795826))

(assert (=> b!5887293 m!6794662))

(assert (=> b!5887293 m!6795496))

(assert (=> b!5887293 m!6795826))

(assert (=> b!5887293 m!6795496))

(declare-fun m!6795828 () Bool)

(assert (=> b!5887293 m!6795828))

(assert (=> b!5886006 d!1848267))

(declare-fun bs!1390914 () Bool)

(declare-fun d!1848269 () Bool)

(assert (= bs!1390914 (and d!1848269 d!1848219)))

(declare-fun lambda!321501 () Int)

(assert (=> bs!1390914 (= (= (head!12431 s!2326) (head!12431 (t!377498 s!2326))) (= lambda!321501 lambda!321497))))

(declare-fun bs!1390915 () Bool)

(assert (= bs!1390915 (and d!1848269 d!1848175)))

(assert (=> bs!1390915 (= lambda!321501 lambda!321494)))

(declare-fun bs!1390916 () Bool)

(assert (= bs!1390916 (and d!1848269 d!1847779)))

(assert (=> bs!1390916 (= (= (head!12431 s!2326) (h!70441 s!2326)) (= lambda!321501 lambda!321444))))

(declare-fun bs!1390917 () Bool)

(assert (= bs!1390917 (and d!1848269 d!1848119)))

(assert (=> bs!1390917 (= (= (head!12431 s!2326) (head!12431 (t!377498 s!2326))) (= lambda!321501 lambda!321486))))

(declare-fun bs!1390918 () Bool)

(assert (= bs!1390918 (and d!1848269 d!1848113)))

(assert (=> bs!1390918 (= lambda!321501 lambda!321485)))

(declare-fun bs!1390919 () Bool)

(assert (= bs!1390919 (and d!1848269 b!5885544)))

(assert (=> bs!1390919 (= (= (head!12431 s!2326) (h!70441 s!2326)) (= lambda!321501 lambda!321393))))

(declare-fun bs!1390920 () Bool)

(assert (= bs!1390920 (and d!1848269 d!1848227)))

(assert (=> bs!1390920 (= (= (head!12431 s!2326) (head!12431 (t!377498 s!2326))) (= lambda!321501 lambda!321498))))

(assert (=> d!1848269 true))

(assert (=> d!1848269 (= (derivationStepZipper!1938 z!1189 (head!12431 s!2326)) (flatMap!1470 z!1189 lambda!321501))))

(declare-fun bs!1390921 () Bool)

(assert (= bs!1390921 d!1848269))

(declare-fun m!6795830 () Bool)

(assert (=> bs!1390921 m!6795830))

(assert (=> b!5886006 d!1848269))

(assert (=> b!5886006 d!1848095))

(assert (=> b!5886006 d!1848077))

(assert (=> b!5885984 d!1848075))

(assert (=> b!5885984 d!1848077))

(declare-fun d!1848271 () Bool)

(assert (=> d!1848271 (= (head!12433 (exprs!5823 (h!70442 zl!343))) (h!70440 (exprs!5823 (h!70442 zl!343))))))

(assert (=> b!5886280 d!1848271))

(assert (=> b!5885913 d!1848075))

(assert (=> b!5885913 d!1848077))

(declare-fun b!5887297 () Bool)

(declare-fun e!3607382 () Bool)

(declare-fun tp!1631933 () Bool)

(declare-fun tp!1631932 () Bool)

(assert (=> b!5887297 (= e!3607382 (and tp!1631933 tp!1631932))))

(declare-fun b!5887296 () Bool)

(declare-fun tp!1631931 () Bool)

(assert (=> b!5887296 (= e!3607382 tp!1631931)))

(assert (=> b!5886325 (= tp!1631711 e!3607382)))

(declare-fun b!5887295 () Bool)

(declare-fun tp!1631930 () Bool)

(declare-fun tp!1631934 () Bool)

(assert (=> b!5887295 (= e!3607382 (and tp!1631930 tp!1631934))))

(declare-fun b!5887294 () Bool)

(assert (=> b!5887294 (= e!3607382 tp_is_empty!41131)))

(assert (= (and b!5886325 ((_ is ElementMatch!15939) (regOne!32391 (reg!16268 r!7292)))) b!5887294))

(assert (= (and b!5886325 ((_ is Concat!24784) (regOne!32391 (reg!16268 r!7292)))) b!5887295))

(assert (= (and b!5886325 ((_ is Star!15939) (regOne!32391 (reg!16268 r!7292)))) b!5887296))

(assert (= (and b!5886325 ((_ is Union!15939) (regOne!32391 (reg!16268 r!7292)))) b!5887297))

(declare-fun b!5887301 () Bool)

(declare-fun e!3607383 () Bool)

(declare-fun tp!1631938 () Bool)

(declare-fun tp!1631937 () Bool)

(assert (=> b!5887301 (= e!3607383 (and tp!1631938 tp!1631937))))

(declare-fun b!5887300 () Bool)

(declare-fun tp!1631936 () Bool)

(assert (=> b!5887300 (= e!3607383 tp!1631936)))

(assert (=> b!5886325 (= tp!1631710 e!3607383)))

(declare-fun b!5887299 () Bool)

(declare-fun tp!1631935 () Bool)

(declare-fun tp!1631939 () Bool)

(assert (=> b!5887299 (= e!3607383 (and tp!1631935 tp!1631939))))

(declare-fun b!5887298 () Bool)

(assert (=> b!5887298 (= e!3607383 tp_is_empty!41131)))

(assert (= (and b!5886325 ((_ is ElementMatch!15939) (regTwo!32391 (reg!16268 r!7292)))) b!5887298))

(assert (= (and b!5886325 ((_ is Concat!24784) (regTwo!32391 (reg!16268 r!7292)))) b!5887299))

(assert (= (and b!5886325 ((_ is Star!15939) (regTwo!32391 (reg!16268 r!7292)))) b!5887300))

(assert (= (and b!5886325 ((_ is Union!15939) (regTwo!32391 (reg!16268 r!7292)))) b!5887301))

(declare-fun b!5887305 () Bool)

(declare-fun e!3607384 () Bool)

(declare-fun tp!1631943 () Bool)

(declare-fun tp!1631942 () Bool)

(assert (=> b!5887305 (= e!3607384 (and tp!1631943 tp!1631942))))

(declare-fun b!5887304 () Bool)

(declare-fun tp!1631941 () Bool)

(assert (=> b!5887304 (= e!3607384 tp!1631941)))

(assert (=> b!5886355 (= tp!1631744 e!3607384)))

(declare-fun b!5887303 () Bool)

(declare-fun tp!1631940 () Bool)

(declare-fun tp!1631944 () Bool)

(assert (=> b!5887303 (= e!3607384 (and tp!1631940 tp!1631944))))

(declare-fun b!5887302 () Bool)

(assert (=> b!5887302 (= e!3607384 tp_is_empty!41131)))

(assert (= (and b!5886355 ((_ is ElementMatch!15939) (reg!16268 (regTwo!32390 r!7292)))) b!5887302))

(assert (= (and b!5886355 ((_ is Concat!24784) (reg!16268 (regTwo!32390 r!7292)))) b!5887303))

(assert (= (and b!5886355 ((_ is Star!15939) (reg!16268 (regTwo!32390 r!7292)))) b!5887304))

(assert (= (and b!5886355 ((_ is Union!15939) (reg!16268 (regTwo!32390 r!7292)))) b!5887305))

(declare-fun b!5887309 () Bool)

(declare-fun e!3607385 () Bool)

(declare-fun tp!1631948 () Bool)

(declare-fun tp!1631947 () Bool)

(assert (=> b!5887309 (= e!3607385 (and tp!1631948 tp!1631947))))

(declare-fun b!5887308 () Bool)

(declare-fun tp!1631946 () Bool)

(assert (=> b!5887308 (= e!3607385 tp!1631946)))

(assert (=> b!5886354 (= tp!1631743 e!3607385)))

(declare-fun b!5887307 () Bool)

(declare-fun tp!1631945 () Bool)

(declare-fun tp!1631949 () Bool)

(assert (=> b!5887307 (= e!3607385 (and tp!1631945 tp!1631949))))

(declare-fun b!5887306 () Bool)

(assert (=> b!5887306 (= e!3607385 tp_is_empty!41131)))

(assert (= (and b!5886354 ((_ is ElementMatch!15939) (regOne!32390 (regTwo!32390 r!7292)))) b!5887306))

(assert (= (and b!5886354 ((_ is Concat!24784) (regOne!32390 (regTwo!32390 r!7292)))) b!5887307))

(assert (= (and b!5886354 ((_ is Star!15939) (regOne!32390 (regTwo!32390 r!7292)))) b!5887308))

(assert (= (and b!5886354 ((_ is Union!15939) (regOne!32390 (regTwo!32390 r!7292)))) b!5887309))

(declare-fun b!5887313 () Bool)

(declare-fun e!3607386 () Bool)

(declare-fun tp!1631953 () Bool)

(declare-fun tp!1631952 () Bool)

(assert (=> b!5887313 (= e!3607386 (and tp!1631953 tp!1631952))))

(declare-fun b!5887312 () Bool)

(declare-fun tp!1631951 () Bool)

(assert (=> b!5887312 (= e!3607386 tp!1631951)))

(assert (=> b!5886354 (= tp!1631747 e!3607386)))

(declare-fun b!5887311 () Bool)

(declare-fun tp!1631950 () Bool)

(declare-fun tp!1631954 () Bool)

(assert (=> b!5887311 (= e!3607386 (and tp!1631950 tp!1631954))))

(declare-fun b!5887310 () Bool)

(assert (=> b!5887310 (= e!3607386 tp_is_empty!41131)))

(assert (= (and b!5886354 ((_ is ElementMatch!15939) (regTwo!32390 (regTwo!32390 r!7292)))) b!5887310))

(assert (= (and b!5886354 ((_ is Concat!24784) (regTwo!32390 (regTwo!32390 r!7292)))) b!5887311))

(assert (= (and b!5886354 ((_ is Star!15939) (regTwo!32390 (regTwo!32390 r!7292)))) b!5887312))

(assert (= (and b!5886354 ((_ is Union!15939) (regTwo!32390 (regTwo!32390 r!7292)))) b!5887313))

(declare-fun b!5887317 () Bool)

(declare-fun e!3607387 () Bool)

(declare-fun tp!1631958 () Bool)

(declare-fun tp!1631957 () Bool)

(assert (=> b!5887317 (= e!3607387 (and tp!1631958 tp!1631957))))

(declare-fun b!5887316 () Bool)

(declare-fun tp!1631956 () Bool)

(assert (=> b!5887316 (= e!3607387 tp!1631956)))

(assert (=> b!5886356 (= tp!1631746 e!3607387)))

(declare-fun b!5887315 () Bool)

(declare-fun tp!1631955 () Bool)

(declare-fun tp!1631959 () Bool)

(assert (=> b!5887315 (= e!3607387 (and tp!1631955 tp!1631959))))

(declare-fun b!5887314 () Bool)

(assert (=> b!5887314 (= e!3607387 tp_is_empty!41131)))

(assert (= (and b!5886356 ((_ is ElementMatch!15939) (regOne!32391 (regTwo!32390 r!7292)))) b!5887314))

(assert (= (and b!5886356 ((_ is Concat!24784) (regOne!32391 (regTwo!32390 r!7292)))) b!5887315))

(assert (= (and b!5886356 ((_ is Star!15939) (regOne!32391 (regTwo!32390 r!7292)))) b!5887316))

(assert (= (and b!5886356 ((_ is Union!15939) (regOne!32391 (regTwo!32390 r!7292)))) b!5887317))

(declare-fun b!5887321 () Bool)

(declare-fun e!3607388 () Bool)

(declare-fun tp!1631963 () Bool)

(declare-fun tp!1631962 () Bool)

(assert (=> b!5887321 (= e!3607388 (and tp!1631963 tp!1631962))))

(declare-fun b!5887320 () Bool)

(declare-fun tp!1631961 () Bool)

(assert (=> b!5887320 (= e!3607388 tp!1631961)))

(assert (=> b!5886356 (= tp!1631745 e!3607388)))

(declare-fun b!5887319 () Bool)

(declare-fun tp!1631960 () Bool)

(declare-fun tp!1631964 () Bool)

(assert (=> b!5887319 (= e!3607388 (and tp!1631960 tp!1631964))))

(declare-fun b!5887318 () Bool)

(assert (=> b!5887318 (= e!3607388 tp_is_empty!41131)))

(assert (= (and b!5886356 ((_ is ElementMatch!15939) (regTwo!32391 (regTwo!32390 r!7292)))) b!5887318))

(assert (= (and b!5886356 ((_ is Concat!24784) (regTwo!32391 (regTwo!32390 r!7292)))) b!5887319))

(assert (= (and b!5886356 ((_ is Star!15939) (regTwo!32391 (regTwo!32390 r!7292)))) b!5887320))

(assert (= (and b!5886356 ((_ is Union!15939) (regTwo!32391 (regTwo!32390 r!7292)))) b!5887321))

(declare-fun b!5887325 () Bool)

(declare-fun e!3607389 () Bool)

(declare-fun tp!1631968 () Bool)

(declare-fun tp!1631967 () Bool)

(assert (=> b!5887325 (= e!3607389 (and tp!1631968 tp!1631967))))

(declare-fun b!5887324 () Bool)

(declare-fun tp!1631966 () Bool)

(assert (=> b!5887324 (= e!3607389 tp!1631966)))

(assert (=> b!5886347 (= tp!1631734 e!3607389)))

(declare-fun b!5887323 () Bool)

(declare-fun tp!1631965 () Bool)

(declare-fun tp!1631969 () Bool)

(assert (=> b!5887323 (= e!3607389 (and tp!1631965 tp!1631969))))

(declare-fun b!5887322 () Bool)

(assert (=> b!5887322 (= e!3607389 tp_is_empty!41131)))

(assert (= (and b!5886347 ((_ is ElementMatch!15939) (reg!16268 (regTwo!32391 r!7292)))) b!5887322))

(assert (= (and b!5886347 ((_ is Concat!24784) (reg!16268 (regTwo!32391 r!7292)))) b!5887323))

(assert (= (and b!5886347 ((_ is Star!15939) (reg!16268 (regTwo!32391 r!7292)))) b!5887324))

(assert (= (and b!5886347 ((_ is Union!15939) (reg!16268 (regTwo!32391 r!7292)))) b!5887325))

(declare-fun b!5887326 () Bool)

(declare-fun e!3607390 () Bool)

(declare-fun tp!1631970 () Bool)

(declare-fun tp!1631971 () Bool)

(assert (=> b!5887326 (= e!3607390 (and tp!1631970 tp!1631971))))

(assert (=> b!5886311 (= tp!1631696 e!3607390)))

(assert (= (and b!5886311 ((_ is Cons!63992) (exprs!5823 (h!70442 (t!377499 zl!343))))) b!5887326))

(declare-fun b!5887330 () Bool)

(declare-fun e!3607391 () Bool)

(declare-fun tp!1631975 () Bool)

(declare-fun tp!1631974 () Bool)

(assert (=> b!5887330 (= e!3607391 (and tp!1631975 tp!1631974))))

(declare-fun b!5887329 () Bool)

(declare-fun tp!1631973 () Bool)

(assert (=> b!5887329 (= e!3607391 tp!1631973)))

(assert (=> b!5886346 (= tp!1631733 e!3607391)))

(declare-fun b!5887328 () Bool)

(declare-fun tp!1631972 () Bool)

(declare-fun tp!1631976 () Bool)

(assert (=> b!5887328 (= e!3607391 (and tp!1631972 tp!1631976))))

(declare-fun b!5887327 () Bool)

(assert (=> b!5887327 (= e!3607391 tp_is_empty!41131)))

(assert (= (and b!5886346 ((_ is ElementMatch!15939) (regOne!32390 (regTwo!32391 r!7292)))) b!5887327))

(assert (= (and b!5886346 ((_ is Concat!24784) (regOne!32390 (regTwo!32391 r!7292)))) b!5887328))

(assert (= (and b!5886346 ((_ is Star!15939) (regOne!32390 (regTwo!32391 r!7292)))) b!5887329))

(assert (= (and b!5886346 ((_ is Union!15939) (regOne!32390 (regTwo!32391 r!7292)))) b!5887330))

(declare-fun b!5887334 () Bool)

(declare-fun e!3607392 () Bool)

(declare-fun tp!1631980 () Bool)

(declare-fun tp!1631979 () Bool)

(assert (=> b!5887334 (= e!3607392 (and tp!1631980 tp!1631979))))

(declare-fun b!5887333 () Bool)

(declare-fun tp!1631978 () Bool)

(assert (=> b!5887333 (= e!3607392 tp!1631978)))

(assert (=> b!5886346 (= tp!1631737 e!3607392)))

(declare-fun b!5887332 () Bool)

(declare-fun tp!1631977 () Bool)

(declare-fun tp!1631981 () Bool)

(assert (=> b!5887332 (= e!3607392 (and tp!1631977 tp!1631981))))

(declare-fun b!5887331 () Bool)

(assert (=> b!5887331 (= e!3607392 tp_is_empty!41131)))

(assert (= (and b!5886346 ((_ is ElementMatch!15939) (regTwo!32390 (regTwo!32391 r!7292)))) b!5887331))

(assert (= (and b!5886346 ((_ is Concat!24784) (regTwo!32390 (regTwo!32391 r!7292)))) b!5887332))

(assert (= (and b!5886346 ((_ is Star!15939) (regTwo!32390 (regTwo!32391 r!7292)))) b!5887333))

(assert (= (and b!5886346 ((_ is Union!15939) (regTwo!32390 (regTwo!32391 r!7292)))) b!5887334))

(declare-fun b!5887336 () Bool)

(declare-fun e!3607394 () Bool)

(declare-fun tp!1631982 () Bool)

(assert (=> b!5887336 (= e!3607394 tp!1631982)))

(declare-fun tp!1631983 () Bool)

(declare-fun e!3607393 () Bool)

(declare-fun b!5887335 () Bool)

(assert (=> b!5887335 (= e!3607393 (and (inv!83094 (h!70442 (t!377499 (t!377499 zl!343)))) e!3607394 tp!1631983))))

(assert (=> b!5886310 (= tp!1631697 e!3607393)))

(assert (= b!5887335 b!5887336))

(assert (= (and b!5886310 ((_ is Cons!63994) (t!377499 (t!377499 zl!343)))) b!5887335))

(declare-fun m!6795832 () Bool)

(assert (=> b!5887335 m!6795832))

(declare-fun condSetEmpty!39923 () Bool)

(assert (=> setNonEmpty!39911 (= condSetEmpty!39923 (= setRest!39911 ((as const (Array Context!10646 Bool)) false)))))

(declare-fun setRes!39923 () Bool)

(assert (=> setNonEmpty!39911 (= tp!1631727 setRes!39923)))

(declare-fun setIsEmpty!39923 () Bool)

(assert (=> setIsEmpty!39923 setRes!39923))

(declare-fun e!3607395 () Bool)

(declare-fun setNonEmpty!39923 () Bool)

(declare-fun tp!1631985 () Bool)

(declare-fun setElem!39923 () Context!10646)

(assert (=> setNonEmpty!39923 (= setRes!39923 (and tp!1631985 (inv!83094 setElem!39923) e!3607395))))

(declare-fun setRest!39923 () (InoxSet Context!10646))

(assert (=> setNonEmpty!39923 (= setRest!39911 ((_ map or) (store ((as const (Array Context!10646 Bool)) false) setElem!39923 true) setRest!39923))))

(declare-fun b!5887337 () Bool)

(declare-fun tp!1631984 () Bool)

(assert (=> b!5887337 (= e!3607395 tp!1631984)))

(assert (= (and setNonEmpty!39911 condSetEmpty!39923) setIsEmpty!39923))

(assert (= (and setNonEmpty!39911 (not condSetEmpty!39923)) setNonEmpty!39923))

(assert (= setNonEmpty!39923 b!5887337))

(declare-fun m!6795834 () Bool)

(assert (=> setNonEmpty!39923 m!6795834))

(declare-fun b!5887341 () Bool)

(declare-fun e!3607396 () Bool)

(declare-fun tp!1631989 () Bool)

(declare-fun tp!1631988 () Bool)

(assert (=> b!5887341 (= e!3607396 (and tp!1631989 tp!1631988))))

(declare-fun b!5887340 () Bool)

(declare-fun tp!1631987 () Bool)

(assert (=> b!5887340 (= e!3607396 tp!1631987)))

(assert (=> b!5886352 (= tp!1631741 e!3607396)))

(declare-fun b!5887339 () Bool)

(declare-fun tp!1631986 () Bool)

(declare-fun tp!1631990 () Bool)

(assert (=> b!5887339 (= e!3607396 (and tp!1631986 tp!1631990))))

(declare-fun b!5887338 () Bool)

(assert (=> b!5887338 (= e!3607396 tp_is_empty!41131)))

(assert (= (and b!5886352 ((_ is ElementMatch!15939) (regOne!32391 (regOne!32390 r!7292)))) b!5887338))

(assert (= (and b!5886352 ((_ is Concat!24784) (regOne!32391 (regOne!32390 r!7292)))) b!5887339))

(assert (= (and b!5886352 ((_ is Star!15939) (regOne!32391 (regOne!32390 r!7292)))) b!5887340))

(assert (= (and b!5886352 ((_ is Union!15939) (regOne!32391 (regOne!32390 r!7292)))) b!5887341))

(declare-fun b!5887345 () Bool)

(declare-fun e!3607397 () Bool)

(declare-fun tp!1631994 () Bool)

(declare-fun tp!1631993 () Bool)

(assert (=> b!5887345 (= e!3607397 (and tp!1631994 tp!1631993))))

(declare-fun b!5887344 () Bool)

(declare-fun tp!1631992 () Bool)

(assert (=> b!5887344 (= e!3607397 tp!1631992)))

(assert (=> b!5886352 (= tp!1631740 e!3607397)))

(declare-fun b!5887343 () Bool)

(declare-fun tp!1631991 () Bool)

(declare-fun tp!1631995 () Bool)

(assert (=> b!5887343 (= e!3607397 (and tp!1631991 tp!1631995))))

(declare-fun b!5887342 () Bool)

(assert (=> b!5887342 (= e!3607397 tp_is_empty!41131)))

(assert (= (and b!5886352 ((_ is ElementMatch!15939) (regTwo!32391 (regOne!32390 r!7292)))) b!5887342))

(assert (= (and b!5886352 ((_ is Concat!24784) (regTwo!32391 (regOne!32390 r!7292)))) b!5887343))

(assert (= (and b!5886352 ((_ is Star!15939) (regTwo!32391 (regOne!32390 r!7292)))) b!5887344))

(assert (= (and b!5886352 ((_ is Union!15939) (regTwo!32391 (regOne!32390 r!7292)))) b!5887345))

(declare-fun b!5887349 () Bool)

(declare-fun e!3607398 () Bool)

(declare-fun tp!1631999 () Bool)

(declare-fun tp!1631998 () Bool)

(assert (=> b!5887349 (= e!3607398 (and tp!1631999 tp!1631998))))

(declare-fun b!5887348 () Bool)

(declare-fun tp!1631997 () Bool)

(assert (=> b!5887348 (= e!3607398 tp!1631997)))

(assert (=> b!5886343 (= tp!1631729 e!3607398)))

(declare-fun b!5887347 () Bool)

(declare-fun tp!1631996 () Bool)

(declare-fun tp!1632000 () Bool)

(assert (=> b!5887347 (= e!3607398 (and tp!1631996 tp!1632000))))

(declare-fun b!5887346 () Bool)

(assert (=> b!5887346 (= e!3607398 tp_is_empty!41131)))

(assert (= (and b!5886343 ((_ is ElementMatch!15939) (reg!16268 (regOne!32391 r!7292)))) b!5887346))

(assert (= (and b!5886343 ((_ is Concat!24784) (reg!16268 (regOne!32391 r!7292)))) b!5887347))

(assert (= (and b!5886343 ((_ is Star!15939) (reg!16268 (regOne!32391 r!7292)))) b!5887348))

(assert (= (and b!5886343 ((_ is Union!15939) (reg!16268 (regOne!32391 r!7292)))) b!5887349))

(declare-fun b!5887353 () Bool)

(declare-fun e!3607399 () Bool)

(declare-fun tp!1632004 () Bool)

(declare-fun tp!1632003 () Bool)

(assert (=> b!5887353 (= e!3607399 (and tp!1632004 tp!1632003))))

(declare-fun b!5887352 () Bool)

(declare-fun tp!1632002 () Bool)

(assert (=> b!5887352 (= e!3607399 tp!1632002)))

(assert (=> b!5886330 (= tp!1631717 e!3607399)))

(declare-fun b!5887351 () Bool)

(declare-fun tp!1632001 () Bool)

(declare-fun tp!1632005 () Bool)

(assert (=> b!5887351 (= e!3607399 (and tp!1632001 tp!1632005))))

(declare-fun b!5887350 () Bool)

(assert (=> b!5887350 (= e!3607399 tp_is_empty!41131)))

(assert (= (and b!5886330 ((_ is ElementMatch!15939) (h!70440 (exprs!5823 (h!70442 zl!343))))) b!5887350))

(assert (= (and b!5886330 ((_ is Concat!24784) (h!70440 (exprs!5823 (h!70442 zl!343))))) b!5887351))

(assert (= (and b!5886330 ((_ is Star!15939) (h!70440 (exprs!5823 (h!70442 zl!343))))) b!5887352))

(assert (= (and b!5886330 ((_ is Union!15939) (h!70440 (exprs!5823 (h!70442 zl!343))))) b!5887353))

(declare-fun b!5887354 () Bool)

(declare-fun e!3607400 () Bool)

(declare-fun tp!1632006 () Bool)

(declare-fun tp!1632007 () Bool)

(assert (=> b!5887354 (= e!3607400 (and tp!1632006 tp!1632007))))

(assert (=> b!5886330 (= tp!1631718 e!3607400)))

(assert (= (and b!5886330 ((_ is Cons!63992) (t!377497 (exprs!5823 (h!70442 zl!343))))) b!5887354))

(declare-fun b!5887358 () Bool)

(declare-fun e!3607401 () Bool)

(declare-fun tp!1632011 () Bool)

(declare-fun tp!1632010 () Bool)

(assert (=> b!5887358 (= e!3607401 (and tp!1632011 tp!1632010))))

(declare-fun b!5887357 () Bool)

(declare-fun tp!1632009 () Bool)

(assert (=> b!5887357 (= e!3607401 tp!1632009)))

(assert (=> b!5886344 (= tp!1631731 e!3607401)))

(declare-fun b!5887356 () Bool)

(declare-fun tp!1632008 () Bool)

(declare-fun tp!1632012 () Bool)

(assert (=> b!5887356 (= e!3607401 (and tp!1632008 tp!1632012))))

(declare-fun b!5887355 () Bool)

(assert (=> b!5887355 (= e!3607401 tp_is_empty!41131)))

(assert (= (and b!5886344 ((_ is ElementMatch!15939) (regOne!32391 (regOne!32391 r!7292)))) b!5887355))

(assert (= (and b!5886344 ((_ is Concat!24784) (regOne!32391 (regOne!32391 r!7292)))) b!5887356))

(assert (= (and b!5886344 ((_ is Star!15939) (regOne!32391 (regOne!32391 r!7292)))) b!5887357))

(assert (= (and b!5886344 ((_ is Union!15939) (regOne!32391 (regOne!32391 r!7292)))) b!5887358))

(declare-fun b!5887362 () Bool)

(declare-fun e!3607402 () Bool)

(declare-fun tp!1632016 () Bool)

(declare-fun tp!1632015 () Bool)

(assert (=> b!5887362 (= e!3607402 (and tp!1632016 tp!1632015))))

(declare-fun b!5887361 () Bool)

(declare-fun tp!1632014 () Bool)

(assert (=> b!5887361 (= e!3607402 tp!1632014)))

(assert (=> b!5886344 (= tp!1631730 e!3607402)))

(declare-fun b!5887360 () Bool)

(declare-fun tp!1632013 () Bool)

(declare-fun tp!1632017 () Bool)

(assert (=> b!5887360 (= e!3607402 (and tp!1632013 tp!1632017))))

(declare-fun b!5887359 () Bool)

(assert (=> b!5887359 (= e!3607402 tp_is_empty!41131)))

(assert (= (and b!5886344 ((_ is ElementMatch!15939) (regTwo!32391 (regOne!32391 r!7292)))) b!5887359))

(assert (= (and b!5886344 ((_ is Concat!24784) (regTwo!32391 (regOne!32391 r!7292)))) b!5887360))

(assert (= (and b!5886344 ((_ is Star!15939) (regTwo!32391 (regOne!32391 r!7292)))) b!5887361))

(assert (= (and b!5886344 ((_ is Union!15939) (regTwo!32391 (regOne!32391 r!7292)))) b!5887362))

(declare-fun b!5887366 () Bool)

(declare-fun e!3607403 () Bool)

(declare-fun tp!1632021 () Bool)

(declare-fun tp!1632020 () Bool)

(assert (=> b!5887366 (= e!3607403 (and tp!1632021 tp!1632020))))

(declare-fun b!5887365 () Bool)

(declare-fun tp!1632019 () Bool)

(assert (=> b!5887365 (= e!3607403 tp!1632019)))

(assert (=> b!5886323 (= tp!1631708 e!3607403)))

(declare-fun b!5887364 () Bool)

(declare-fun tp!1632018 () Bool)

(declare-fun tp!1632022 () Bool)

(assert (=> b!5887364 (= e!3607403 (and tp!1632018 tp!1632022))))

(declare-fun b!5887363 () Bool)

(assert (=> b!5887363 (= e!3607403 tp_is_empty!41131)))

(assert (= (and b!5886323 ((_ is ElementMatch!15939) (regOne!32390 (reg!16268 r!7292)))) b!5887363))

(assert (= (and b!5886323 ((_ is Concat!24784) (regOne!32390 (reg!16268 r!7292)))) b!5887364))

(assert (= (and b!5886323 ((_ is Star!15939) (regOne!32390 (reg!16268 r!7292)))) b!5887365))

(assert (= (and b!5886323 ((_ is Union!15939) (regOne!32390 (reg!16268 r!7292)))) b!5887366))

(declare-fun b!5887370 () Bool)

(declare-fun e!3607404 () Bool)

(declare-fun tp!1632026 () Bool)

(declare-fun tp!1632025 () Bool)

(assert (=> b!5887370 (= e!3607404 (and tp!1632026 tp!1632025))))

(declare-fun b!5887369 () Bool)

(declare-fun tp!1632024 () Bool)

(assert (=> b!5887369 (= e!3607404 tp!1632024)))

(assert (=> b!5886323 (= tp!1631712 e!3607404)))

(declare-fun b!5887368 () Bool)

(declare-fun tp!1632023 () Bool)

(declare-fun tp!1632027 () Bool)

(assert (=> b!5887368 (= e!3607404 (and tp!1632023 tp!1632027))))

(declare-fun b!5887367 () Bool)

(assert (=> b!5887367 (= e!3607404 tp_is_empty!41131)))

(assert (= (and b!5886323 ((_ is ElementMatch!15939) (regTwo!32390 (reg!16268 r!7292)))) b!5887367))

(assert (= (and b!5886323 ((_ is Concat!24784) (regTwo!32390 (reg!16268 r!7292)))) b!5887368))

(assert (= (and b!5886323 ((_ is Star!15939) (regTwo!32390 (reg!16268 r!7292)))) b!5887369))

(assert (= (and b!5886323 ((_ is Union!15939) (regTwo!32390 (reg!16268 r!7292)))) b!5887370))

(declare-fun b!5887374 () Bool)

(declare-fun e!3607405 () Bool)

(declare-fun tp!1632031 () Bool)

(declare-fun tp!1632030 () Bool)

(assert (=> b!5887374 (= e!3607405 (and tp!1632031 tp!1632030))))

(declare-fun b!5887373 () Bool)

(declare-fun tp!1632029 () Bool)

(assert (=> b!5887373 (= e!3607405 tp!1632029)))

(assert (=> b!5886324 (= tp!1631709 e!3607405)))

(declare-fun b!5887372 () Bool)

(declare-fun tp!1632028 () Bool)

(declare-fun tp!1632032 () Bool)

(assert (=> b!5887372 (= e!3607405 (and tp!1632028 tp!1632032))))

(declare-fun b!5887371 () Bool)

(assert (=> b!5887371 (= e!3607405 tp_is_empty!41131)))

(assert (= (and b!5886324 ((_ is ElementMatch!15939) (reg!16268 (reg!16268 r!7292)))) b!5887371))

(assert (= (and b!5886324 ((_ is Concat!24784) (reg!16268 (reg!16268 r!7292)))) b!5887372))

(assert (= (and b!5886324 ((_ is Star!15939) (reg!16268 (reg!16268 r!7292)))) b!5887373))

(assert (= (and b!5886324 ((_ is Union!15939) (reg!16268 (reg!16268 r!7292)))) b!5887374))

(declare-fun b!5887375 () Bool)

(declare-fun e!3607406 () Bool)

(declare-fun tp!1632033 () Bool)

(assert (=> b!5887375 (= e!3607406 (and tp_is_empty!41131 tp!1632033))))

(assert (=> b!5886335 (= tp!1631721 e!3607406)))

(assert (= (and b!5886335 ((_ is Cons!63993) (t!377498 (t!377498 s!2326)))) b!5887375))

(declare-fun b!5887379 () Bool)

(declare-fun e!3607407 () Bool)

(declare-fun tp!1632037 () Bool)

(declare-fun tp!1632036 () Bool)

(assert (=> b!5887379 (= e!3607407 (and tp!1632037 tp!1632036))))

(declare-fun b!5887378 () Bool)

(declare-fun tp!1632035 () Bool)

(assert (=> b!5887378 (= e!3607407 tp!1632035)))

(assert (=> b!5886350 (= tp!1631738 e!3607407)))

(declare-fun b!5887377 () Bool)

(declare-fun tp!1632034 () Bool)

(declare-fun tp!1632038 () Bool)

(assert (=> b!5887377 (= e!3607407 (and tp!1632034 tp!1632038))))

(declare-fun b!5887376 () Bool)

(assert (=> b!5887376 (= e!3607407 tp_is_empty!41131)))

(assert (= (and b!5886350 ((_ is ElementMatch!15939) (regOne!32390 (regOne!32390 r!7292)))) b!5887376))

(assert (= (and b!5886350 ((_ is Concat!24784) (regOne!32390 (regOne!32390 r!7292)))) b!5887377))

(assert (= (and b!5886350 ((_ is Star!15939) (regOne!32390 (regOne!32390 r!7292)))) b!5887378))

(assert (= (and b!5886350 ((_ is Union!15939) (regOne!32390 (regOne!32390 r!7292)))) b!5887379))

(declare-fun b!5887383 () Bool)

(declare-fun e!3607408 () Bool)

(declare-fun tp!1632042 () Bool)

(declare-fun tp!1632041 () Bool)

(assert (=> b!5887383 (= e!3607408 (and tp!1632042 tp!1632041))))

(declare-fun b!5887382 () Bool)

(declare-fun tp!1632040 () Bool)

(assert (=> b!5887382 (= e!3607408 tp!1632040)))

(assert (=> b!5886350 (= tp!1631742 e!3607408)))

(declare-fun b!5887381 () Bool)

(declare-fun tp!1632039 () Bool)

(declare-fun tp!1632043 () Bool)

(assert (=> b!5887381 (= e!3607408 (and tp!1632039 tp!1632043))))

(declare-fun b!5887380 () Bool)

(assert (=> b!5887380 (= e!3607408 tp_is_empty!41131)))

(assert (= (and b!5886350 ((_ is ElementMatch!15939) (regTwo!32390 (regOne!32390 r!7292)))) b!5887380))

(assert (= (and b!5886350 ((_ is Concat!24784) (regTwo!32390 (regOne!32390 r!7292)))) b!5887381))

(assert (= (and b!5886350 ((_ is Star!15939) (regTwo!32390 (regOne!32390 r!7292)))) b!5887382))

(assert (= (and b!5886350 ((_ is Union!15939) (regTwo!32390 (regOne!32390 r!7292)))) b!5887383))

(declare-fun b!5887387 () Bool)

(declare-fun e!3607409 () Bool)

(declare-fun tp!1632047 () Bool)

(declare-fun tp!1632046 () Bool)

(assert (=> b!5887387 (= e!3607409 (and tp!1632047 tp!1632046))))

(declare-fun b!5887386 () Bool)

(declare-fun tp!1632045 () Bool)

(assert (=> b!5887386 (= e!3607409 tp!1632045)))

(assert (=> b!5886342 (= tp!1631728 e!3607409)))

(declare-fun b!5887385 () Bool)

(declare-fun tp!1632044 () Bool)

(declare-fun tp!1632048 () Bool)

(assert (=> b!5887385 (= e!3607409 (and tp!1632044 tp!1632048))))

(declare-fun b!5887384 () Bool)

(assert (=> b!5887384 (= e!3607409 tp_is_empty!41131)))

(assert (= (and b!5886342 ((_ is ElementMatch!15939) (regOne!32390 (regOne!32391 r!7292)))) b!5887384))

(assert (= (and b!5886342 ((_ is Concat!24784) (regOne!32390 (regOne!32391 r!7292)))) b!5887385))

(assert (= (and b!5886342 ((_ is Star!15939) (regOne!32390 (regOne!32391 r!7292)))) b!5887386))

(assert (= (and b!5886342 ((_ is Union!15939) (regOne!32390 (regOne!32391 r!7292)))) b!5887387))

(declare-fun b!5887391 () Bool)

(declare-fun e!3607410 () Bool)

(declare-fun tp!1632052 () Bool)

(declare-fun tp!1632051 () Bool)

(assert (=> b!5887391 (= e!3607410 (and tp!1632052 tp!1632051))))

(declare-fun b!5887390 () Bool)

(declare-fun tp!1632050 () Bool)

(assert (=> b!5887390 (= e!3607410 tp!1632050)))

(assert (=> b!5886342 (= tp!1631732 e!3607410)))

(declare-fun b!5887389 () Bool)

(declare-fun tp!1632049 () Bool)

(declare-fun tp!1632053 () Bool)

(assert (=> b!5887389 (= e!3607410 (and tp!1632049 tp!1632053))))

(declare-fun b!5887388 () Bool)

(assert (=> b!5887388 (= e!3607410 tp_is_empty!41131)))

(assert (= (and b!5886342 ((_ is ElementMatch!15939) (regTwo!32390 (regOne!32391 r!7292)))) b!5887388))

(assert (= (and b!5886342 ((_ is Concat!24784) (regTwo!32390 (regOne!32391 r!7292)))) b!5887389))

(assert (= (and b!5886342 ((_ is Star!15939) (regTwo!32390 (regOne!32391 r!7292)))) b!5887390))

(assert (= (and b!5886342 ((_ is Union!15939) (regTwo!32390 (regOne!32391 r!7292)))) b!5887391))

(declare-fun b!5887395 () Bool)

(declare-fun e!3607411 () Bool)

(declare-fun tp!1632057 () Bool)

(declare-fun tp!1632056 () Bool)

(assert (=> b!5887395 (= e!3607411 (and tp!1632057 tp!1632056))))

(declare-fun b!5887394 () Bool)

(declare-fun tp!1632055 () Bool)

(assert (=> b!5887394 (= e!3607411 tp!1632055)))

(assert (=> b!5886351 (= tp!1631739 e!3607411)))

(declare-fun b!5887393 () Bool)

(declare-fun tp!1632054 () Bool)

(declare-fun tp!1632058 () Bool)

(assert (=> b!5887393 (= e!3607411 (and tp!1632054 tp!1632058))))

(declare-fun b!5887392 () Bool)

(assert (=> b!5887392 (= e!3607411 tp_is_empty!41131)))

(assert (= (and b!5886351 ((_ is ElementMatch!15939) (reg!16268 (regOne!32390 r!7292)))) b!5887392))

(assert (= (and b!5886351 ((_ is Concat!24784) (reg!16268 (regOne!32390 r!7292)))) b!5887393))

(assert (= (and b!5886351 ((_ is Star!15939) (reg!16268 (regOne!32390 r!7292)))) b!5887394))

(assert (= (and b!5886351 ((_ is Union!15939) (reg!16268 (regOne!32390 r!7292)))) b!5887395))

(declare-fun b!5887399 () Bool)

(declare-fun e!3607412 () Bool)

(declare-fun tp!1632062 () Bool)

(declare-fun tp!1632061 () Bool)

(assert (=> b!5887399 (= e!3607412 (and tp!1632062 tp!1632061))))

(declare-fun b!5887398 () Bool)

(declare-fun tp!1632060 () Bool)

(assert (=> b!5887398 (= e!3607412 tp!1632060)))

(assert (=> b!5886348 (= tp!1631736 e!3607412)))

(declare-fun b!5887397 () Bool)

(declare-fun tp!1632059 () Bool)

(declare-fun tp!1632063 () Bool)

(assert (=> b!5887397 (= e!3607412 (and tp!1632059 tp!1632063))))

(declare-fun b!5887396 () Bool)

(assert (=> b!5887396 (= e!3607412 tp_is_empty!41131)))

(assert (= (and b!5886348 ((_ is ElementMatch!15939) (regOne!32391 (regTwo!32391 r!7292)))) b!5887396))

(assert (= (and b!5886348 ((_ is Concat!24784) (regOne!32391 (regTwo!32391 r!7292)))) b!5887397))

(assert (= (and b!5886348 ((_ is Star!15939) (regOne!32391 (regTwo!32391 r!7292)))) b!5887398))

(assert (= (and b!5886348 ((_ is Union!15939) (regOne!32391 (regTwo!32391 r!7292)))) b!5887399))

(declare-fun b!5887403 () Bool)

(declare-fun e!3607413 () Bool)

(declare-fun tp!1632067 () Bool)

(declare-fun tp!1632066 () Bool)

(assert (=> b!5887403 (= e!3607413 (and tp!1632067 tp!1632066))))

(declare-fun b!5887402 () Bool)

(declare-fun tp!1632065 () Bool)

(assert (=> b!5887402 (= e!3607413 tp!1632065)))

(assert (=> b!5886348 (= tp!1631735 e!3607413)))

(declare-fun b!5887401 () Bool)

(declare-fun tp!1632064 () Bool)

(declare-fun tp!1632068 () Bool)

(assert (=> b!5887401 (= e!3607413 (and tp!1632064 tp!1632068))))

(declare-fun b!5887400 () Bool)

(assert (=> b!5887400 (= e!3607413 tp_is_empty!41131)))

(assert (= (and b!5886348 ((_ is ElementMatch!15939) (regTwo!32391 (regTwo!32391 r!7292)))) b!5887400))

(assert (= (and b!5886348 ((_ is Concat!24784) (regTwo!32391 (regTwo!32391 r!7292)))) b!5887401))

(assert (= (and b!5886348 ((_ is Star!15939) (regTwo!32391 (regTwo!32391 r!7292)))) b!5887402))

(assert (= (and b!5886348 ((_ is Union!15939) (regTwo!32391 (regTwo!32391 r!7292)))) b!5887403))

(declare-fun b!5887404 () Bool)

(declare-fun e!3607414 () Bool)

(declare-fun tp!1632069 () Bool)

(declare-fun tp!1632070 () Bool)

(assert (=> b!5887404 (= e!3607414 (and tp!1632069 tp!1632070))))

(assert (=> b!5886340 (= tp!1631726 e!3607414)))

(assert (= (and b!5886340 ((_ is Cons!63992) (exprs!5823 setElem!39911))) b!5887404))

(declare-fun b!5887408 () Bool)

(declare-fun e!3607415 () Bool)

(declare-fun tp!1632074 () Bool)

(declare-fun tp!1632073 () Bool)

(assert (=> b!5887408 (= e!3607415 (and tp!1632074 tp!1632073))))

(declare-fun b!5887407 () Bool)

(declare-fun tp!1632072 () Bool)

(assert (=> b!5887407 (= e!3607415 tp!1632072)))

(assert (=> b!5886357 (= tp!1631748 e!3607415)))

(declare-fun b!5887406 () Bool)

(declare-fun tp!1632071 () Bool)

(declare-fun tp!1632075 () Bool)

(assert (=> b!5887406 (= e!3607415 (and tp!1632071 tp!1632075))))

(declare-fun b!5887405 () Bool)

(assert (=> b!5887405 (= e!3607415 tp_is_empty!41131)))

(assert (= (and b!5886357 ((_ is ElementMatch!15939) (h!70440 (exprs!5823 setElem!39905)))) b!5887405))

(assert (= (and b!5886357 ((_ is Concat!24784) (h!70440 (exprs!5823 setElem!39905)))) b!5887406))

(assert (= (and b!5886357 ((_ is Star!15939) (h!70440 (exprs!5823 setElem!39905)))) b!5887407))

(assert (= (and b!5886357 ((_ is Union!15939) (h!70440 (exprs!5823 setElem!39905)))) b!5887408))

(declare-fun b!5887409 () Bool)

(declare-fun e!3607416 () Bool)

(declare-fun tp!1632076 () Bool)

(declare-fun tp!1632077 () Bool)

(assert (=> b!5887409 (= e!3607416 (and tp!1632076 tp!1632077))))

(assert (=> b!5886357 (= tp!1631749 e!3607416)))

(assert (= (and b!5886357 ((_ is Cons!63992) (t!377497 (exprs!5823 setElem!39905)))) b!5887409))

(declare-fun b_lambda!221491 () Bool)

(assert (= b_lambda!221481 (or b!5885544 b_lambda!221491)))

(assert (=> d!1848203 d!1847803))

(declare-fun b_lambda!221493 () Bool)

(assert (= b_lambda!221489 (or d!1847753 b_lambda!221493)))

(declare-fun bs!1390922 () Bool)

(declare-fun d!1848273 () Bool)

(assert (= bs!1390922 (and d!1848273 d!1847753)))

(assert (=> bs!1390922 (= (dynLambda!25033 lambda!321434 (h!70440 (exprs!5823 (h!70442 zl!343)))) (validRegex!7675 (h!70440 (exprs!5823 (h!70442 zl!343)))))))

(declare-fun m!6795836 () Bool)

(assert (=> bs!1390922 m!6795836))

(assert (=> b!5887290 d!1848273))

(declare-fun b_lambda!221495 () Bool)

(assert (= b_lambda!221475 (or d!1847757 b_lambda!221495)))

(declare-fun bs!1390923 () Bool)

(declare-fun d!1848275 () Bool)

(assert (= bs!1390923 (and d!1848275 d!1847757)))

(assert (=> bs!1390923 (= (dynLambda!25033 lambda!321440 (h!70440 lt!2307288)) (validRegex!7675 (h!70440 lt!2307288)))))

(declare-fun m!6795838 () Bool)

(assert (=> bs!1390923 m!6795838))

(assert (=> b!5887003 d!1848275))

(declare-fun b_lambda!221497 () Bool)

(assert (= b_lambda!221473 (or d!1847755 b_lambda!221497)))

(declare-fun bs!1390924 () Bool)

(declare-fun d!1848277 () Bool)

(assert (= bs!1390924 (and d!1848277 d!1847755)))

(assert (=> bs!1390924 (= (dynLambda!25033 lambda!321437 (h!70440 (unfocusZipperList!1360 zl!343))) (validRegex!7675 (h!70440 (unfocusZipperList!1360 zl!343))))))

(declare-fun m!6795840 () Bool)

(assert (=> bs!1390924 m!6795840))

(assert (=> b!5886934 d!1848277))

(declare-fun b_lambda!221499 () Bool)

(assert (= b_lambda!221479 (or d!1847761 b_lambda!221499)))

(declare-fun bs!1390925 () Bool)

(declare-fun d!1848279 () Bool)

(assert (= bs!1390925 (and d!1848279 d!1847761)))

(assert (=> bs!1390925 (= (dynLambda!25033 lambda!321441 (h!70440 (exprs!5823 setElem!39905))) (validRegex!7675 (h!70440 (exprs!5823 setElem!39905))))))

(declare-fun m!6795842 () Bool)

(assert (=> bs!1390925 m!6795842))

(assert (=> b!5887196 d!1848279))

(declare-fun b_lambda!221501 () Bool)

(assert (= b_lambda!221487 (or b!5885544 b_lambda!221501)))

(assert (=> d!1848263 d!1847801))

(declare-fun b_lambda!221503 () Bool)

(assert (= b_lambda!221477 (or d!1847793 b_lambda!221503)))

(declare-fun bs!1390926 () Bool)

(declare-fun d!1848281 () Bool)

(assert (= bs!1390926 (and d!1848281 d!1847793)))

(assert (=> bs!1390926 (= (dynLambda!25033 lambda!321447 (h!70440 (exprs!5823 (h!70442 zl!343)))) (validRegex!7675 (h!70440 (exprs!5823 (h!70442 zl!343)))))))

(assert (=> bs!1390926 m!6795836))

(assert (=> b!5887139 d!1848281))

(declare-fun b_lambda!221505 () Bool)

(assert (= b_lambda!221485 (or d!1847631 b_lambda!221505)))

(declare-fun bs!1390927 () Bool)

(declare-fun d!1848283 () Bool)

(assert (= bs!1390927 (and d!1848283 d!1847631)))

(assert (=> bs!1390927 (= (dynLambda!25033 lambda!321396 (h!70440 (exprs!5823 lt!2307204))) (validRegex!7675 (h!70440 (exprs!5823 lt!2307204))))))

(declare-fun m!6795844 () Bool)

(assert (=> bs!1390927 m!6795844))

(assert (=> b!5887288 d!1848283))

(declare-fun b_lambda!221507 () Bool)

(assert (= b_lambda!221483 (or b!5885544 b_lambda!221507)))

(assert (=> d!1848207 d!1847799))

(check-sat (not b!5887308) (not b!5887348) (not b!5886997) (not d!1848207) (not d!1848173) (not bm!464311) (not b!5887221) (not b!5886992) (not b!5887269) (not b!5887086) (not b!5886982) (not b!5887386) (not b!5887309) (not b!5887406) (not bm!464395) (not bm!464382) (not b!5887274) (not b!5887015) (not bm!464293) (not b_lambda!221503) (not b!5887339) (not b!5887140) (not d!1848175) (not b!5887378) (not b!5887374) (not d!1848117) (not b!5887052) (not d!1848251) (not d!1848217) (not b!5887259) (not b!5887130) (not b!5886938) (not b_lambda!221431) (not b!5887060) (not bs!1390922) (not b!5887408) (not b!5887056) (not b!5887332) (not b!5887353) (not d!1848133) (not b!5887345) (not b!5887263) (not b!5887334) (not bm!464376) (not d!1848105) (not b!5886963) (not b!5887323) (not b!5887004) (not d!1848149) (not b!5887054) (not d!1848131) (not d!1848227) (not b!5887313) (not b!5887291) (not b!5887381) (not b!5887197) (not b!5887094) (not setNonEmpty!39923) (not b_lambda!221499) (not b!5887330) (not b!5887053) (not b!5887375) (not b!5887271) (not b!5887391) (not b!5886990) (not b!5887317) (not b!5887403) (not b!5887365) (not d!1848065) (not b!5887394) (not b!5887409) (not bm!464364) (not b_lambda!221433) (not b!5887312) (not b!5887017) (not d!1848229) (not bs!1390924) (not b!5887046) (not b!5887333) (not bm!464348) (not b!5887397) (not b!5887058) (not b!5886998) (not bm!464402) (not d!1848147) (not b!5887370) (not bm!464336) (not b!5886999) (not b!5887295) (not b!5887225) (not b!5887242) (not b!5887387) (not d!1848113) (not b!5887050) (not b!5886981) (not b!5887390) (not d!1848111) (not b!5886996) (not bm!464388) (not b!5887173) (not d!1848237) (not b!5887172) (not bm!464391) (not bm!464378) (not d!1848239) (not d!1848223) (not d!1848243) (not b!5887059) (not b!5887051) (not bm!464368) (not bm!464294) (not b!5887354) (not bm!464394) (not b!5887335) (not bm!464340) (not b!5886991) (not bs!1390923) (not b!5887085) (not d!1848155) (not bm!464404) (not b!5887293) (not bm!464398) (not b!5887366) (not b!5887398) (not b!5887404) (not bm!464399) (not b!5887292) (not b!5887285) (not b!5887249) (not b!5886902) (not b!5887305) (not b!5887182) (not b!5887337) (not bm!464300) (not b!5887010) (not b!5887369) (not b!5887401) (not b!5887289) (not d!1848263) (not d!1848057) (not b!5887307) (not b!5887343) (not bm!464308) (not bm!464333) (not d!1848101) (not bm!464296) (not b!5887176) (not b!5887064) (not b!5886921) (not bs!1390926) (not b!5887340) (not b!5887399) (not b!5886983) (not d!1848127) (not b!5887368) (not d!1848269) (not b!5887351) (not bm!464319) (not b!5887364) (not b!5887104) (not bm!464403) (not b!5887377) (not b!5887316) (not d!1848219) (not b!5887250) (not b_lambda!221491) (not b!5887347) (not d!1848135) (not b!5887236) (not b!5887192) (not bs!1390925) (not b!5887385) (not bm!464316) (not bm!464356) (not bm!464306) (not bm!464366) (not b!5887361) (not b!5887393) (not bm!464354) (not b!5887300) (not b!5887303) (not b!5886911) (not d!1848245) (not b!5887223) (not bm!464341) (not bm!464342) (not bm!464299) (not b!5887143) (not b!5887224) (not b!5887362) (not b!5887078) (not bm!464374) (not b!5887383) (not b!5886985) (not b!5887304) (not b!5886917) (not b!5887349) (not b!5887324) (not bs!1390927) (not d!1848053) (not d!1848119) (not b!5887213) (not bm!464359) (not b!5886935) (not d!1848225) (not b!5887329) (not d!1848097) (not bm!464397) (not b!5887373) (not b!5887319) (not b!5887311) (not d!1848247) (not b!5887080) (not b!5886967) (not b_lambda!221505) (not b!5887407) (not b!5887001) (not b!5887321) (not bm!464347) (not b!5886908) (not setNonEmpty!39920) (not d!1848093) (not b!5887276) (not bm!464353) (not b!5886891) (not b!5887012) (not d!1848083) (not b!5887341) (not setNonEmpty!39921) (not b!5887240) (not bm!464360) (not d!1848191) (not b_lambda!221507) (not bm!464363) (not b!5887000) (not b!5887270) (not b!5887301) (not d!1848125) (not b!5887079) (not bm!464377) (not d!1848137) (not bm!464318) (not b!5887344) (not b_lambda!221497) (not bm!464315) (not b!5887328) (not b_lambda!221435) (not d!1848169) (not bm!464304) (not b_lambda!221493) (not b!5887083) (not b!5887149) (not d!1848203) (not d!1848181) (not d!1848261) (not bm!464384) (not b!5886989) tp_is_empty!41131 (not bm!464309) (not bm!464320) (not b!5887115) (not b!5887247) (not b!5887126) (not bm!464350) (not b!5886984) (not b!5887299) (not bm!464369) (not b!5887241) (not b!5887379) (not d!1848199) (not bm!464323) (not d!1848267) (not b!5887372) (not b!5887320) (not b!5887395) (not d!1848211) (not bm!464381) (not b!5887018) (not b!5886920) (not bm!464310) (not d!1848241) (not d!1848139) (not b!5887402) (not d!1848255) (not b!5887260) (not b!5887296) (not b!5887326) (not d!1848163) (not b!5887243) (not bm!464302) (not bm!464362) (not b!5887011) (not bm!464337) (not b!5887382) (not b!5886944) (not d!1848201) (not b_lambda!221501) (not bm!464387) (not b!5887352) (not d!1848249) (not b!5887315) (not b!5887297) (not b!5887214) (not b!5886947) (not bm!464332) (not b!5887248) (not b!5887360) (not b!5887356) (not bm!464322) (not setNonEmpty!39922) (not b!5887168) (not b!5887277) (not bm!464400) (not bm!464305) (not b!5887358) (not b!5887152) (not d!1848055) (not bm!464367) (not bm!464373) (not b!5887357) (not b!5887336) (not b!5887205) (not b!5887389) (not b!5887222) (not b_lambda!221495) (not bm!464303) (not d!1848235) (not bm!464338) (not bm!464390) (not b!5887325))
(check-sat)
