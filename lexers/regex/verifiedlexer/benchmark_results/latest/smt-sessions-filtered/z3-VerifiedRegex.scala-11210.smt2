; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!585900 () Bool)

(assert start!585900)

(declare-fun b!5675588 () Bool)

(assert (=> b!5675588 true))

(assert (=> b!5675588 true))

(declare-fun lambda!305714 () Int)

(declare-fun lambda!305713 () Int)

(assert (=> b!5675588 (not (= lambda!305714 lambda!305713))))

(assert (=> b!5675588 true))

(assert (=> b!5675588 true))

(declare-fun b!5675580 () Bool)

(assert (=> b!5675580 true))

(declare-fun b!5675566 () Bool)

(declare-fun e!3493467 () Bool)

(declare-fun tp_is_empty!40587 () Bool)

(assert (=> b!5675566 (= e!3493467 tp_is_empty!40587)))

(declare-fun b!5675567 () Bool)

(declare-fun res!2398539 () Bool)

(declare-fun e!3493473 () Bool)

(assert (=> b!5675567 (=> res!2398539 e!3493473)))

(declare-datatypes ((C!31604 0))(
  ( (C!31605 (val!25504 Int)) )
))
(declare-datatypes ((Regex!15667 0))(
  ( (ElementMatch!15667 (c!998425 C!31604)) (Concat!24512 (regOne!31846 Regex!15667) (regTwo!31846 Regex!15667)) (EmptyExpr!15667) (Star!15667 (reg!15996 Regex!15667)) (EmptyLang!15667) (Union!15667 (regOne!31847 Regex!15667) (regTwo!31847 Regex!15667)) )
))
(declare-fun r!7292 () Regex!15667)

(get-info :version)

(assert (=> b!5675567 (= res!2398539 (or ((_ is Concat!24512) (regOne!31846 r!7292)) (not ((_ is Star!15667) (regOne!31846 r!7292)))))))

(declare-fun b!5675568 () Bool)

(declare-fun res!2398549 () Bool)

(declare-fun e!3493470 () Bool)

(assert (=> b!5675568 (=> res!2398549 e!3493470)))

(declare-datatypes ((List!63300 0))(
  ( (Nil!63176) (Cons!63176 (h!69624 Regex!15667) (t!376608 List!63300)) )
))
(declare-datatypes ((Context!10102 0))(
  ( (Context!10103 (exprs!5551 List!63300)) )
))
(declare-datatypes ((List!63301 0))(
  ( (Nil!63177) (Cons!63177 (h!69625 Context!10102) (t!376609 List!63301)) )
))
(declare-fun zl!343 () List!63301)

(declare-fun isEmpty!35025 (List!63300) Bool)

(assert (=> b!5675568 (= res!2398549 (isEmpty!35025 (t!376608 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5675569 () Bool)

(declare-fun res!2398552 () Bool)

(declare-fun e!3493469 () Bool)

(assert (=> b!5675569 (=> res!2398552 e!3493469)))

(assert (=> b!5675569 (= res!2398552 (not ((_ is Cons!63176) (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5675570 () Bool)

(declare-fun e!3493478 () Bool)

(declare-fun tp!1573931 () Bool)

(assert (=> b!5675570 (= e!3493478 tp!1573931)))

(declare-fun b!5675571 () Bool)

(declare-fun tp!1573928 () Bool)

(assert (=> b!5675571 (= e!3493467 tp!1573928)))

(declare-fun setIsEmpty!37947 () Bool)

(declare-fun setRes!37947 () Bool)

(assert (=> setIsEmpty!37947 setRes!37947))

(declare-fun b!5675572 () Bool)

(declare-fun res!2398547 () Bool)

(assert (=> b!5675572 (=> res!2398547 e!3493469)))

(assert (=> b!5675572 (= res!2398547 (or ((_ is EmptyExpr!15667) r!7292) ((_ is EmptyLang!15667) r!7292) ((_ is ElementMatch!15667) r!7292) ((_ is Union!15667) r!7292) (not ((_ is Concat!24512) r!7292))))))

(declare-fun b!5675573 () Bool)

(declare-fun res!2398545 () Bool)

(declare-fun e!3493477 () Bool)

(assert (=> b!5675573 (=> (not res!2398545) (not e!3493477))))

(declare-fun unfocusZipper!1409 (List!63301) Regex!15667)

(assert (=> b!5675573 (= res!2398545 (= r!7292 (unfocusZipper!1409 zl!343)))))

(declare-fun b!5675574 () Bool)

(declare-fun tp!1573925 () Bool)

(declare-fun tp!1573932 () Bool)

(assert (=> b!5675574 (= e!3493467 (and tp!1573925 tp!1573932))))

(declare-fun b!5675575 () Bool)

(declare-datatypes ((Unit!156200 0))(
  ( (Unit!156201) )
))
(declare-fun e!3493474 () Unit!156200)

(declare-fun Unit!156202 () Unit!156200)

(assert (=> b!5675575 (= e!3493474 Unit!156202)))

(declare-fun b!5675576 () Bool)

(declare-fun e!3493471 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2269585 () (InoxSet Context!10102))

(declare-datatypes ((List!63302 0))(
  ( (Nil!63178) (Cons!63178 (h!69626 C!31604) (t!376610 List!63302)) )
))
(declare-fun s!2326 () List!63302)

(declare-fun matchZipper!1805 ((InoxSet Context!10102) List!63302) Bool)

(assert (=> b!5675576 (= e!3493471 (matchZipper!1805 lt!2269585 (t!376610 s!2326)))))

(declare-fun res!2398546 () Bool)

(assert (=> start!585900 (=> (not res!2398546) (not e!3493477))))

(declare-fun validRegex!7403 (Regex!15667) Bool)

(assert (=> start!585900 (= res!2398546 (validRegex!7403 r!7292))))

(assert (=> start!585900 e!3493477))

(assert (=> start!585900 e!3493467))

(declare-fun condSetEmpty!37947 () Bool)

(declare-fun z!1189 () (InoxSet Context!10102))

(assert (=> start!585900 (= condSetEmpty!37947 (= z!1189 ((as const (Array Context!10102 Bool)) false)))))

(assert (=> start!585900 setRes!37947))

(declare-fun e!3493475 () Bool)

(assert (=> start!585900 e!3493475))

(declare-fun e!3493468 () Bool)

(assert (=> start!585900 e!3493468))

(declare-fun b!5675577 () Bool)

(declare-fun res!2398541 () Bool)

(assert (=> b!5675577 (=> res!2398541 e!3493469)))

(declare-fun generalisedUnion!1530 (List!63300) Regex!15667)

(declare-fun unfocusZipperList!1095 (List!63301) List!63300)

(assert (=> b!5675577 (= res!2398541 (not (= r!7292 (generalisedUnion!1530 (unfocusZipperList!1095 zl!343)))))))

(declare-fun b!5675578 () Bool)

(declare-fun lt!2269582 () (InoxSet Context!10102))

(declare-fun derivationStepZipperDown!1009 (Regex!15667 Context!10102 C!31604) (InoxSet Context!10102))

(assert (=> b!5675578 (= e!3493473 (= lt!2269582 (derivationStepZipperDown!1009 (reg!15996 (regOne!31846 r!7292)) (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (h!69626 s!2326))))))

(declare-fun b!5675579 () Bool)

(assert (=> b!5675579 (= e!3493477 (not e!3493469))))

(declare-fun res!2398543 () Bool)

(assert (=> b!5675579 (=> res!2398543 e!3493469)))

(assert (=> b!5675579 (= res!2398543 (not ((_ is Cons!63177) zl!343)))))

(declare-fun lt!2269579 () Bool)

(declare-fun matchRSpec!2770 (Regex!15667 List!63302) Bool)

(assert (=> b!5675579 (= lt!2269579 (matchRSpec!2770 r!7292 s!2326))))

(declare-fun matchR!7852 (Regex!15667 List!63302) Bool)

(assert (=> b!5675579 (= lt!2269579 (matchR!7852 r!7292 s!2326))))

(declare-fun lt!2269586 () Unit!156200)

(declare-fun mainMatchTheorem!2770 (Regex!15667 List!63302) Unit!156200)

(assert (=> b!5675579 (= lt!2269586 (mainMatchTheorem!2770 r!7292 s!2326))))

(assert (=> b!5675580 (= e!3493470 e!3493473)))

(declare-fun res!2398542 () Bool)

(assert (=> b!5675580 (=> res!2398542 e!3493473)))

(assert (=> b!5675580 (= res!2398542 (or (and ((_ is ElementMatch!15667) (regOne!31846 r!7292)) (= (c!998425 (regOne!31846 r!7292)) (h!69626 s!2326))) ((_ is Union!15667) (regOne!31846 r!7292))))))

(declare-fun lt!2269588 () Unit!156200)

(assert (=> b!5675580 (= lt!2269588 e!3493474)))

(declare-fun c!998424 () Bool)

(declare-fun nullable!5699 (Regex!15667) Bool)

(assert (=> b!5675580 (= c!998424 (nullable!5699 (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun lambda!305715 () Int)

(declare-fun flatMap!1280 ((InoxSet Context!10102) Int) (InoxSet Context!10102))

(declare-fun derivationStepZipperUp!935 (Context!10102 C!31604) (InoxSet Context!10102))

(assert (=> b!5675580 (= (flatMap!1280 z!1189 lambda!305715) (derivationStepZipperUp!935 (h!69625 zl!343) (h!69626 s!2326)))))

(declare-fun lt!2269581 () Unit!156200)

(declare-fun lemmaFlatMapOnSingletonSet!812 ((InoxSet Context!10102) Context!10102 Int) Unit!156200)

(assert (=> b!5675580 (= lt!2269581 (lemmaFlatMapOnSingletonSet!812 z!1189 (h!69625 zl!343) lambda!305715))))

(declare-fun lt!2269587 () Context!10102)

(assert (=> b!5675580 (= lt!2269585 (derivationStepZipperUp!935 lt!2269587 (h!69626 s!2326)))))

(assert (=> b!5675580 (= lt!2269582 (derivationStepZipperDown!1009 (h!69624 (exprs!5551 (h!69625 zl!343))) lt!2269587 (h!69626 s!2326)))))

(assert (=> b!5675580 (= lt!2269587 (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun lt!2269589 () (InoxSet Context!10102))

(assert (=> b!5675580 (= lt!2269589 (derivationStepZipperUp!935 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (h!69626 s!2326)))))

(declare-fun e!3493472 () Bool)

(declare-fun b!5675581 () Bool)

(declare-fun tp!1573934 () Bool)

(declare-fun inv!82414 (Context!10102) Bool)

(assert (=> b!5675581 (= e!3493475 (and (inv!82414 (h!69625 zl!343)) e!3493472 tp!1573934))))

(declare-fun b!5675582 () Bool)

(declare-fun res!2398548 () Bool)

(assert (=> b!5675582 (=> (not res!2398548) (not e!3493477))))

(declare-fun toList!9451 ((InoxSet Context!10102)) List!63301)

(assert (=> b!5675582 (= res!2398548 (= (toList!9451 z!1189) zl!343))))

(declare-fun b!5675583 () Bool)

(declare-fun tp!1573926 () Bool)

(assert (=> b!5675583 (= e!3493468 (and tp_is_empty!40587 tp!1573926))))

(declare-fun b!5675584 () Bool)

(declare-fun Unit!156203 () Unit!156200)

(assert (=> b!5675584 (= e!3493474 Unit!156203)))

(declare-fun lt!2269583 () Unit!156200)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!692 ((InoxSet Context!10102) (InoxSet Context!10102) List!63302) Unit!156200)

(assert (=> b!5675584 (= lt!2269583 (lemmaZipperConcatMatchesSameAsBothZippers!692 lt!2269582 lt!2269585 (t!376610 s!2326)))))

(declare-fun res!2398538 () Bool)

(assert (=> b!5675584 (= res!2398538 (matchZipper!1805 lt!2269582 (t!376610 s!2326)))))

(assert (=> b!5675584 (=> res!2398538 e!3493471)))

(assert (=> b!5675584 (= (matchZipper!1805 ((_ map or) lt!2269582 lt!2269585) (t!376610 s!2326)) e!3493471)))

(declare-fun b!5675585 () Bool)

(declare-fun e!3493476 () Bool)

(assert (=> b!5675585 (= e!3493476 (nullable!5699 (regOne!31846 (regOne!31846 r!7292))))))

(declare-fun b!5675586 () Bool)

(declare-fun tp!1573927 () Bool)

(declare-fun tp!1573933 () Bool)

(assert (=> b!5675586 (= e!3493467 (and tp!1573927 tp!1573933))))

(declare-fun b!5675587 () Bool)

(declare-fun tp!1573930 () Bool)

(assert (=> b!5675587 (= e!3493472 tp!1573930)))

(assert (=> b!5675588 (= e!3493469 e!3493470)))

(declare-fun res!2398551 () Bool)

(assert (=> b!5675588 (=> res!2398551 e!3493470)))

(declare-fun lt!2269580 () Bool)

(assert (=> b!5675588 (= res!2398551 (or (not (= lt!2269579 lt!2269580)) ((_ is Nil!63178) s!2326)))))

(declare-fun Exists!2767 (Int) Bool)

(assert (=> b!5675588 (= (Exists!2767 lambda!305713) (Exists!2767 lambda!305714))))

(declare-fun lt!2269590 () Unit!156200)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1396 (Regex!15667 Regex!15667 List!63302) Unit!156200)

(assert (=> b!5675588 (= lt!2269590 (lemmaExistCutMatchRandMatchRSpecEquivalent!1396 (regOne!31846 r!7292) (regTwo!31846 r!7292) s!2326))))

(assert (=> b!5675588 (= lt!2269580 (Exists!2767 lambda!305713))))

(declare-datatypes ((tuple2!65528 0))(
  ( (tuple2!65529 (_1!36067 List!63302) (_2!36067 List!63302)) )
))
(declare-datatypes ((Option!15676 0))(
  ( (None!15675) (Some!15675 (v!51724 tuple2!65528)) )
))
(declare-fun isDefined!12379 (Option!15676) Bool)

(declare-fun findConcatSeparation!2090 (Regex!15667 Regex!15667 List!63302 List!63302 List!63302) Option!15676)

(assert (=> b!5675588 (= lt!2269580 (isDefined!12379 (findConcatSeparation!2090 (regOne!31846 r!7292) (regTwo!31846 r!7292) Nil!63178 s!2326 s!2326)))))

(declare-fun lt!2269584 () Unit!156200)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1854 (Regex!15667 Regex!15667 List!63302) Unit!156200)

(assert (=> b!5675588 (= lt!2269584 (lemmaFindConcatSeparationEquivalentToExists!1854 (regOne!31846 r!7292) (regTwo!31846 r!7292) s!2326))))

(declare-fun setElem!37947 () Context!10102)

(declare-fun setNonEmpty!37947 () Bool)

(declare-fun tp!1573929 () Bool)

(assert (=> setNonEmpty!37947 (= setRes!37947 (and tp!1573929 (inv!82414 setElem!37947) e!3493478))))

(declare-fun setRest!37947 () (InoxSet Context!10102))

(assert (=> setNonEmpty!37947 (= z!1189 ((_ map or) (store ((as const (Array Context!10102 Bool)) false) setElem!37947 true) setRest!37947))))

(declare-fun b!5675589 () Bool)

(declare-fun res!2398553 () Bool)

(assert (=> b!5675589 (=> res!2398553 e!3493469)))

(declare-fun isEmpty!35026 (List!63301) Bool)

(assert (=> b!5675589 (= res!2398553 (not (isEmpty!35026 (t!376609 zl!343))))))

(declare-fun b!5675590 () Bool)

(declare-fun res!2398550 () Bool)

(assert (=> b!5675590 (=> res!2398550 e!3493473)))

(assert (=> b!5675590 (= res!2398550 e!3493476)))

(declare-fun res!2398540 () Bool)

(assert (=> b!5675590 (=> (not res!2398540) (not e!3493476))))

(assert (=> b!5675590 (= res!2398540 ((_ is Concat!24512) (regOne!31846 r!7292)))))

(declare-fun b!5675591 () Bool)

(declare-fun res!2398544 () Bool)

(assert (=> b!5675591 (=> res!2398544 e!3493469)))

(declare-fun generalisedConcat!1282 (List!63300) Regex!15667)

(assert (=> b!5675591 (= res!2398544 (not (= r!7292 (generalisedConcat!1282 (exprs!5551 (h!69625 zl!343))))))))

(assert (= (and start!585900 res!2398546) b!5675582))

(assert (= (and b!5675582 res!2398548) b!5675573))

(assert (= (and b!5675573 res!2398545) b!5675579))

(assert (= (and b!5675579 (not res!2398543)) b!5675589))

(assert (= (and b!5675589 (not res!2398553)) b!5675591))

(assert (= (and b!5675591 (not res!2398544)) b!5675569))

(assert (= (and b!5675569 (not res!2398552)) b!5675577))

(assert (= (and b!5675577 (not res!2398541)) b!5675572))

(assert (= (and b!5675572 (not res!2398547)) b!5675588))

(assert (= (and b!5675588 (not res!2398551)) b!5675568))

(assert (= (and b!5675568 (not res!2398549)) b!5675580))

(assert (= (and b!5675580 c!998424) b!5675584))

(assert (= (and b!5675580 (not c!998424)) b!5675575))

(assert (= (and b!5675584 (not res!2398538)) b!5675576))

(assert (= (and b!5675580 (not res!2398542)) b!5675590))

(assert (= (and b!5675590 res!2398540) b!5675585))

(assert (= (and b!5675590 (not res!2398550)) b!5675567))

(assert (= (and b!5675567 (not res!2398539)) b!5675578))

(assert (= (and start!585900 ((_ is ElementMatch!15667) r!7292)) b!5675566))

(assert (= (and start!585900 ((_ is Concat!24512) r!7292)) b!5675586))

(assert (= (and start!585900 ((_ is Star!15667) r!7292)) b!5675571))

(assert (= (and start!585900 ((_ is Union!15667) r!7292)) b!5675574))

(assert (= (and start!585900 condSetEmpty!37947) setIsEmpty!37947))

(assert (= (and start!585900 (not condSetEmpty!37947)) setNonEmpty!37947))

(assert (= setNonEmpty!37947 b!5675570))

(assert (= b!5675581 b!5675587))

(assert (= (and start!585900 ((_ is Cons!63177) zl!343)) b!5675581))

(assert (= (and start!585900 ((_ is Cons!63178) s!2326)) b!5675583))

(declare-fun m!6636358 () Bool)

(assert (=> setNonEmpty!37947 m!6636358))

(declare-fun m!6636360 () Bool)

(assert (=> b!5675582 m!6636360))

(declare-fun m!6636362 () Bool)

(assert (=> b!5675591 m!6636362))

(declare-fun m!6636364 () Bool)

(assert (=> b!5675589 m!6636364))

(declare-fun m!6636366 () Bool)

(assert (=> b!5675584 m!6636366))

(declare-fun m!6636368 () Bool)

(assert (=> b!5675584 m!6636368))

(declare-fun m!6636370 () Bool)

(assert (=> b!5675584 m!6636370))

(declare-fun m!6636372 () Bool)

(assert (=> b!5675588 m!6636372))

(declare-fun m!6636374 () Bool)

(assert (=> b!5675588 m!6636374))

(declare-fun m!6636376 () Bool)

(assert (=> b!5675588 m!6636376))

(declare-fun m!6636378 () Bool)

(assert (=> b!5675588 m!6636378))

(assert (=> b!5675588 m!6636372))

(declare-fun m!6636380 () Bool)

(assert (=> b!5675588 m!6636380))

(assert (=> b!5675588 m!6636374))

(declare-fun m!6636382 () Bool)

(assert (=> b!5675588 m!6636382))

(declare-fun m!6636384 () Bool)

(assert (=> b!5675577 m!6636384))

(assert (=> b!5675577 m!6636384))

(declare-fun m!6636386 () Bool)

(assert (=> b!5675577 m!6636386))

(declare-fun m!6636388 () Bool)

(assert (=> b!5675581 m!6636388))

(declare-fun m!6636390 () Bool)

(assert (=> start!585900 m!6636390))

(declare-fun m!6636392 () Bool)

(assert (=> b!5675568 m!6636392))

(declare-fun m!6636394 () Bool)

(assert (=> b!5675585 m!6636394))

(declare-fun m!6636396 () Bool)

(assert (=> b!5675579 m!6636396))

(declare-fun m!6636398 () Bool)

(assert (=> b!5675579 m!6636398))

(declare-fun m!6636400 () Bool)

(assert (=> b!5675579 m!6636400))

(declare-fun m!6636402 () Bool)

(assert (=> b!5675578 m!6636402))

(declare-fun m!6636404 () Bool)

(assert (=> b!5675576 m!6636404))

(declare-fun m!6636406 () Bool)

(assert (=> b!5675580 m!6636406))

(declare-fun m!6636408 () Bool)

(assert (=> b!5675580 m!6636408))

(declare-fun m!6636410 () Bool)

(assert (=> b!5675580 m!6636410))

(declare-fun m!6636412 () Bool)

(assert (=> b!5675580 m!6636412))

(declare-fun m!6636414 () Bool)

(assert (=> b!5675580 m!6636414))

(declare-fun m!6636416 () Bool)

(assert (=> b!5675580 m!6636416))

(declare-fun m!6636418 () Bool)

(assert (=> b!5675580 m!6636418))

(declare-fun m!6636420 () Bool)

(assert (=> b!5675573 m!6636420))

(check-sat (not b!5675584) (not b!5675578) (not b!5675583) (not b!5675573) (not start!585900) (not b!5675580) (not b!5675574) tp_is_empty!40587 (not b!5675582) (not b!5675581) (not b!5675585) (not b!5675568) (not b!5675586) (not setNonEmpty!37947) (not b!5675589) (not b!5675577) (not b!5675591) (not b!5675587) (not b!5675579) (not b!5675588) (not b!5675571) (not b!5675576) (not b!5675570))
(check-sat)
(get-model)

(declare-fun d!1791461 () Bool)

(declare-fun c!998428 () Bool)

(declare-fun isEmpty!35028 (List!63302) Bool)

(assert (=> d!1791461 (= c!998428 (isEmpty!35028 (t!376610 s!2326)))))

(declare-fun e!3493481 () Bool)

(assert (=> d!1791461 (= (matchZipper!1805 lt!2269585 (t!376610 s!2326)) e!3493481)))

(declare-fun b!5675602 () Bool)

(declare-fun nullableZipper!1633 ((InoxSet Context!10102)) Bool)

(assert (=> b!5675602 (= e!3493481 (nullableZipper!1633 lt!2269585))))

(declare-fun b!5675603 () Bool)

(declare-fun derivationStepZipper!1752 ((InoxSet Context!10102) C!31604) (InoxSet Context!10102))

(declare-fun head!12045 (List!63302) C!31604)

(declare-fun tail!11140 (List!63302) List!63302)

(assert (=> b!5675603 (= e!3493481 (matchZipper!1805 (derivationStepZipper!1752 lt!2269585 (head!12045 (t!376610 s!2326))) (tail!11140 (t!376610 s!2326))))))

(assert (= (and d!1791461 c!998428) b!5675602))

(assert (= (and d!1791461 (not c!998428)) b!5675603))

(declare-fun m!6636422 () Bool)

(assert (=> d!1791461 m!6636422))

(declare-fun m!6636424 () Bool)

(assert (=> b!5675602 m!6636424))

(declare-fun m!6636426 () Bool)

(assert (=> b!5675603 m!6636426))

(assert (=> b!5675603 m!6636426))

(declare-fun m!6636428 () Bool)

(assert (=> b!5675603 m!6636428))

(declare-fun m!6636430 () Bool)

(assert (=> b!5675603 m!6636430))

(assert (=> b!5675603 m!6636428))

(assert (=> b!5675603 m!6636430))

(declare-fun m!6636432 () Bool)

(assert (=> b!5675603 m!6636432))

(assert (=> b!5675576 d!1791461))

(declare-fun b!5675662 () Bool)

(declare-fun e!3493517 () Bool)

(declare-fun e!3493519 () Bool)

(assert (=> b!5675662 (= e!3493517 e!3493519)))

(declare-fun c!998451 () Bool)

(assert (=> b!5675662 (= c!998451 (isEmpty!35025 (unfocusZipperList!1095 zl!343)))))

(declare-fun b!5675663 () Bool)

(declare-fun e!3493516 () Regex!15667)

(assert (=> b!5675663 (= e!3493516 EmptyLang!15667)))

(declare-fun b!5675664 () Bool)

(declare-fun e!3493518 () Bool)

(declare-fun lt!2269593 () Regex!15667)

(declare-fun head!12046 (List!63300) Regex!15667)

(assert (=> b!5675664 (= e!3493518 (= lt!2269593 (head!12046 (unfocusZipperList!1095 zl!343))))))

(declare-fun d!1791463 () Bool)

(assert (=> d!1791463 e!3493517))

(declare-fun res!2398574 () Bool)

(assert (=> d!1791463 (=> (not res!2398574) (not e!3493517))))

(assert (=> d!1791463 (= res!2398574 (validRegex!7403 lt!2269593))))

(declare-fun e!3493515 () Regex!15667)

(assert (=> d!1791463 (= lt!2269593 e!3493515)))

(declare-fun c!998450 () Bool)

(declare-fun e!3493520 () Bool)

(assert (=> d!1791463 (= c!998450 e!3493520)))

(declare-fun res!2398575 () Bool)

(assert (=> d!1791463 (=> (not res!2398575) (not e!3493520))))

(assert (=> d!1791463 (= res!2398575 ((_ is Cons!63176) (unfocusZipperList!1095 zl!343)))))

(declare-fun lambda!305722 () Int)

(declare-fun forall!14815 (List!63300 Int) Bool)

(assert (=> d!1791463 (forall!14815 (unfocusZipperList!1095 zl!343) lambda!305722)))

(assert (=> d!1791463 (= (generalisedUnion!1530 (unfocusZipperList!1095 zl!343)) lt!2269593)))

(declare-fun b!5675665 () Bool)

(assert (=> b!5675665 (= e!3493515 e!3493516)))

(declare-fun c!998448 () Bool)

(assert (=> b!5675665 (= c!998448 ((_ is Cons!63176) (unfocusZipperList!1095 zl!343)))))

(declare-fun b!5675666 () Bool)

(declare-fun isEmptyLang!1201 (Regex!15667) Bool)

(assert (=> b!5675666 (= e!3493519 (isEmptyLang!1201 lt!2269593))))

(declare-fun b!5675667 () Bool)

(assert (=> b!5675667 (= e!3493519 e!3493518)))

(declare-fun c!998449 () Bool)

(declare-fun tail!11141 (List!63300) List!63300)

(assert (=> b!5675667 (= c!998449 (isEmpty!35025 (tail!11141 (unfocusZipperList!1095 zl!343))))))

(declare-fun b!5675668 () Bool)

(declare-fun isUnion!631 (Regex!15667) Bool)

(assert (=> b!5675668 (= e!3493518 (isUnion!631 lt!2269593))))

(declare-fun b!5675669 () Bool)

(assert (=> b!5675669 (= e!3493516 (Union!15667 (h!69624 (unfocusZipperList!1095 zl!343)) (generalisedUnion!1530 (t!376608 (unfocusZipperList!1095 zl!343)))))))

(declare-fun b!5675670 () Bool)

(assert (=> b!5675670 (= e!3493520 (isEmpty!35025 (t!376608 (unfocusZipperList!1095 zl!343))))))

(declare-fun b!5675671 () Bool)

(assert (=> b!5675671 (= e!3493515 (h!69624 (unfocusZipperList!1095 zl!343)))))

(assert (= (and d!1791463 res!2398575) b!5675670))

(assert (= (and d!1791463 c!998450) b!5675671))

(assert (= (and d!1791463 (not c!998450)) b!5675665))

(assert (= (and b!5675665 c!998448) b!5675669))

(assert (= (and b!5675665 (not c!998448)) b!5675663))

(assert (= (and d!1791463 res!2398574) b!5675662))

(assert (= (and b!5675662 c!998451) b!5675666))

(assert (= (and b!5675662 (not c!998451)) b!5675667))

(assert (= (and b!5675667 c!998449) b!5675664))

(assert (= (and b!5675667 (not c!998449)) b!5675668))

(declare-fun m!6636446 () Bool)

(assert (=> b!5675666 m!6636446))

(assert (=> b!5675664 m!6636384))

(declare-fun m!6636448 () Bool)

(assert (=> b!5675664 m!6636448))

(declare-fun m!6636450 () Bool)

(assert (=> d!1791463 m!6636450))

(assert (=> d!1791463 m!6636384))

(declare-fun m!6636452 () Bool)

(assert (=> d!1791463 m!6636452))

(declare-fun m!6636454 () Bool)

(assert (=> b!5675670 m!6636454))

(assert (=> b!5675662 m!6636384))

(declare-fun m!6636456 () Bool)

(assert (=> b!5675662 m!6636456))

(declare-fun m!6636458 () Bool)

(assert (=> b!5675669 m!6636458))

(declare-fun m!6636460 () Bool)

(assert (=> b!5675668 m!6636460))

(assert (=> b!5675667 m!6636384))

(declare-fun m!6636462 () Bool)

(assert (=> b!5675667 m!6636462))

(assert (=> b!5675667 m!6636462))

(declare-fun m!6636464 () Bool)

(assert (=> b!5675667 m!6636464))

(assert (=> b!5675577 d!1791463))

(declare-fun bs!1323154 () Bool)

(declare-fun d!1791469 () Bool)

(assert (= bs!1323154 (and d!1791469 d!1791463)))

(declare-fun lambda!305727 () Int)

(assert (=> bs!1323154 (= lambda!305727 lambda!305722)))

(declare-fun lt!2269596 () List!63300)

(assert (=> d!1791469 (forall!14815 lt!2269596 lambda!305727)))

(declare-fun e!3493530 () List!63300)

(assert (=> d!1791469 (= lt!2269596 e!3493530)))

(declare-fun c!998458 () Bool)

(assert (=> d!1791469 (= c!998458 ((_ is Cons!63177) zl!343))))

(assert (=> d!1791469 (= (unfocusZipperList!1095 zl!343) lt!2269596)))

(declare-fun b!5675687 () Bool)

(assert (=> b!5675687 (= e!3493530 (Cons!63176 (generalisedConcat!1282 (exprs!5551 (h!69625 zl!343))) (unfocusZipperList!1095 (t!376609 zl!343))))))

(declare-fun b!5675688 () Bool)

(assert (=> b!5675688 (= e!3493530 Nil!63176)))

(assert (= (and d!1791469 c!998458) b!5675687))

(assert (= (and d!1791469 (not c!998458)) b!5675688))

(declare-fun m!6636474 () Bool)

(assert (=> d!1791469 m!6636474))

(assert (=> b!5675687 m!6636362))

(declare-fun m!6636476 () Bool)

(assert (=> b!5675687 m!6636476))

(assert (=> b!5675577 d!1791469))

(declare-fun b!5675825 () Bool)

(declare-fun res!2398635 () Bool)

(declare-fun e!3493610 () Bool)

(assert (=> b!5675825 (=> (not res!2398635) (not e!3493610))))

(declare-fun lt!2269613 () Option!15676)

(declare-fun get!21768 (Option!15676) tuple2!65528)

(assert (=> b!5675825 (= res!2398635 (matchR!7852 (regOne!31846 r!7292) (_1!36067 (get!21768 lt!2269613))))))

(declare-fun b!5675826 () Bool)

(declare-fun e!3493611 () Bool)

(assert (=> b!5675826 (= e!3493611 (matchR!7852 (regTwo!31846 r!7292) s!2326))))

(declare-fun b!5675827 () Bool)

(declare-fun e!3493612 () Option!15676)

(declare-fun e!3493609 () Option!15676)

(assert (=> b!5675827 (= e!3493612 e!3493609)))

(declare-fun c!998501 () Bool)

(assert (=> b!5675827 (= c!998501 ((_ is Nil!63178) s!2326))))

(declare-fun b!5675828 () Bool)

(declare-fun ++!13867 (List!63302 List!63302) List!63302)

(assert (=> b!5675828 (= e!3493610 (= (++!13867 (_1!36067 (get!21768 lt!2269613)) (_2!36067 (get!21768 lt!2269613))) s!2326))))

(declare-fun b!5675829 () Bool)

(declare-fun lt!2269612 () Unit!156200)

(declare-fun lt!2269614 () Unit!156200)

(assert (=> b!5675829 (= lt!2269612 lt!2269614)))

(assert (=> b!5675829 (= (++!13867 (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178)) (t!376610 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2036 (List!63302 C!31604 List!63302 List!63302) Unit!156200)

(assert (=> b!5675829 (= lt!2269614 (lemmaMoveElementToOtherListKeepsConcatEq!2036 Nil!63178 (h!69626 s!2326) (t!376610 s!2326) s!2326))))

(assert (=> b!5675829 (= e!3493609 (findConcatSeparation!2090 (regOne!31846 r!7292) (regTwo!31846 r!7292) (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178)) (t!376610 s!2326) s!2326))))

(declare-fun b!5675830 () Bool)

(declare-fun res!2398633 () Bool)

(assert (=> b!5675830 (=> (not res!2398633) (not e!3493610))))

(assert (=> b!5675830 (= res!2398633 (matchR!7852 (regTwo!31846 r!7292) (_2!36067 (get!21768 lt!2269613))))))

(declare-fun d!1791473 () Bool)

(declare-fun e!3493613 () Bool)

(assert (=> d!1791473 e!3493613))

(declare-fun res!2398632 () Bool)

(assert (=> d!1791473 (=> res!2398632 e!3493613)))

(assert (=> d!1791473 (= res!2398632 e!3493610)))

(declare-fun res!2398634 () Bool)

(assert (=> d!1791473 (=> (not res!2398634) (not e!3493610))))

(assert (=> d!1791473 (= res!2398634 (isDefined!12379 lt!2269613))))

(assert (=> d!1791473 (= lt!2269613 e!3493612)))

(declare-fun c!998502 () Bool)

(assert (=> d!1791473 (= c!998502 e!3493611)))

(declare-fun res!2398631 () Bool)

(assert (=> d!1791473 (=> (not res!2398631) (not e!3493611))))

(assert (=> d!1791473 (= res!2398631 (matchR!7852 (regOne!31846 r!7292) Nil!63178))))

(assert (=> d!1791473 (validRegex!7403 (regOne!31846 r!7292))))

(assert (=> d!1791473 (= (findConcatSeparation!2090 (regOne!31846 r!7292) (regTwo!31846 r!7292) Nil!63178 s!2326 s!2326) lt!2269613)))

(declare-fun b!5675831 () Bool)

(assert (=> b!5675831 (= e!3493609 None!15675)))

(declare-fun b!5675832 () Bool)

(assert (=> b!5675832 (= e!3493613 (not (isDefined!12379 lt!2269613)))))

(declare-fun b!5675833 () Bool)

(assert (=> b!5675833 (= e!3493612 (Some!15675 (tuple2!65529 Nil!63178 s!2326)))))

(assert (= (and d!1791473 res!2398631) b!5675826))

(assert (= (and d!1791473 c!998502) b!5675833))

(assert (= (and d!1791473 (not c!998502)) b!5675827))

(assert (= (and b!5675827 c!998501) b!5675831))

(assert (= (and b!5675827 (not c!998501)) b!5675829))

(assert (= (and d!1791473 res!2398634) b!5675825))

(assert (= (and b!5675825 res!2398635) b!5675830))

(assert (= (and b!5675830 res!2398633) b!5675828))

(assert (= (and d!1791473 (not res!2398632)) b!5675832))

(declare-fun m!6636534 () Bool)

(assert (=> b!5675825 m!6636534))

(declare-fun m!6636536 () Bool)

(assert (=> b!5675825 m!6636536))

(declare-fun m!6636538 () Bool)

(assert (=> b!5675826 m!6636538))

(assert (=> b!5675830 m!6636534))

(declare-fun m!6636540 () Bool)

(assert (=> b!5675830 m!6636540))

(declare-fun m!6636542 () Bool)

(assert (=> d!1791473 m!6636542))

(declare-fun m!6636544 () Bool)

(assert (=> d!1791473 m!6636544))

(declare-fun m!6636546 () Bool)

(assert (=> d!1791473 m!6636546))

(declare-fun m!6636548 () Bool)

(assert (=> b!5675829 m!6636548))

(assert (=> b!5675829 m!6636548))

(declare-fun m!6636550 () Bool)

(assert (=> b!5675829 m!6636550))

(declare-fun m!6636552 () Bool)

(assert (=> b!5675829 m!6636552))

(assert (=> b!5675829 m!6636548))

(declare-fun m!6636554 () Bool)

(assert (=> b!5675829 m!6636554))

(assert (=> b!5675828 m!6636534))

(declare-fun m!6636556 () Bool)

(assert (=> b!5675828 m!6636556))

(assert (=> b!5675832 m!6636542))

(assert (=> b!5675588 d!1791473))

(declare-fun d!1791497 () Bool)

(declare-fun choose!42936 (Int) Bool)

(assert (=> d!1791497 (= (Exists!2767 lambda!305713) (choose!42936 lambda!305713))))

(declare-fun bs!1323159 () Bool)

(assert (= bs!1323159 d!1791497))

(declare-fun m!6636558 () Bool)

(assert (=> bs!1323159 m!6636558))

(assert (=> b!5675588 d!1791497))

(declare-fun bs!1323166 () Bool)

(declare-fun d!1791499 () Bool)

(assert (= bs!1323166 (and d!1791499 b!5675588)))

(declare-fun lambda!305735 () Int)

(assert (=> bs!1323166 (= lambda!305735 lambda!305713)))

(assert (=> bs!1323166 (not (= lambda!305735 lambda!305714))))

(assert (=> d!1791499 true))

(assert (=> d!1791499 true))

(assert (=> d!1791499 true))

(declare-fun lambda!305736 () Int)

(assert (=> bs!1323166 (not (= lambda!305736 lambda!305713))))

(assert (=> bs!1323166 (= lambda!305736 lambda!305714)))

(declare-fun bs!1323167 () Bool)

(assert (= bs!1323167 d!1791499))

(assert (=> bs!1323167 (not (= lambda!305736 lambda!305735))))

(assert (=> d!1791499 true))

(assert (=> d!1791499 true))

(assert (=> d!1791499 true))

(assert (=> d!1791499 (= (Exists!2767 lambda!305735) (Exists!2767 lambda!305736))))

(declare-fun lt!2269629 () Unit!156200)

(declare-fun choose!42937 (Regex!15667 Regex!15667 List!63302) Unit!156200)

(assert (=> d!1791499 (= lt!2269629 (choose!42937 (regOne!31846 r!7292) (regTwo!31846 r!7292) s!2326))))

(assert (=> d!1791499 (validRegex!7403 (regOne!31846 r!7292))))

(assert (=> d!1791499 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1396 (regOne!31846 r!7292) (regTwo!31846 r!7292) s!2326) lt!2269629)))

(declare-fun m!6636592 () Bool)

(assert (=> bs!1323167 m!6636592))

(declare-fun m!6636594 () Bool)

(assert (=> bs!1323167 m!6636594))

(declare-fun m!6636596 () Bool)

(assert (=> bs!1323167 m!6636596))

(assert (=> bs!1323167 m!6636546))

(assert (=> b!5675588 d!1791499))

(declare-fun d!1791509 () Bool)

(declare-fun isEmpty!35030 (Option!15676) Bool)

(assert (=> d!1791509 (= (isDefined!12379 (findConcatSeparation!2090 (regOne!31846 r!7292) (regTwo!31846 r!7292) Nil!63178 s!2326 s!2326)) (not (isEmpty!35030 (findConcatSeparation!2090 (regOne!31846 r!7292) (regTwo!31846 r!7292) Nil!63178 s!2326 s!2326))))))

(declare-fun bs!1323168 () Bool)

(assert (= bs!1323168 d!1791509))

(assert (=> bs!1323168 m!6636374))

(declare-fun m!6636598 () Bool)

(assert (=> bs!1323168 m!6636598))

(assert (=> b!5675588 d!1791509))

(declare-fun bs!1323175 () Bool)

(declare-fun d!1791511 () Bool)

(assert (= bs!1323175 (and d!1791511 b!5675588)))

(declare-fun lambda!305747 () Int)

(assert (=> bs!1323175 (= lambda!305747 lambda!305713)))

(assert (=> bs!1323175 (not (= lambda!305747 lambda!305714))))

(declare-fun bs!1323176 () Bool)

(assert (= bs!1323176 (and d!1791511 d!1791499)))

(assert (=> bs!1323176 (= lambda!305747 lambda!305735)))

(assert (=> bs!1323176 (not (= lambda!305747 lambda!305736))))

(assert (=> d!1791511 true))

(assert (=> d!1791511 true))

(assert (=> d!1791511 true))

(assert (=> d!1791511 (= (isDefined!12379 (findConcatSeparation!2090 (regOne!31846 r!7292) (regTwo!31846 r!7292) Nil!63178 s!2326 s!2326)) (Exists!2767 lambda!305747))))

(declare-fun lt!2269638 () Unit!156200)

(declare-fun choose!42938 (Regex!15667 Regex!15667 List!63302) Unit!156200)

(assert (=> d!1791511 (= lt!2269638 (choose!42938 (regOne!31846 r!7292) (regTwo!31846 r!7292) s!2326))))

(assert (=> d!1791511 (validRegex!7403 (regOne!31846 r!7292))))

(assert (=> d!1791511 (= (lemmaFindConcatSeparationEquivalentToExists!1854 (regOne!31846 r!7292) (regTwo!31846 r!7292) s!2326) lt!2269638)))

(declare-fun bs!1323177 () Bool)

(assert (= bs!1323177 d!1791511))

(assert (=> bs!1323177 m!6636546))

(declare-fun m!6636622 () Bool)

(assert (=> bs!1323177 m!6636622))

(declare-fun m!6636624 () Bool)

(assert (=> bs!1323177 m!6636624))

(assert (=> bs!1323177 m!6636374))

(assert (=> bs!1323177 m!6636376))

(assert (=> bs!1323177 m!6636374))

(assert (=> b!5675588 d!1791511))

(declare-fun d!1791523 () Bool)

(assert (=> d!1791523 (= (Exists!2767 lambda!305714) (choose!42936 lambda!305714))))

(declare-fun bs!1323178 () Bool)

(assert (= bs!1323178 d!1791523))

(declare-fun m!6636626 () Bool)

(assert (=> bs!1323178 m!6636626))

(assert (=> b!5675588 d!1791523))

(declare-fun d!1791525 () Bool)

(assert (=> d!1791525 (= (isEmpty!35025 (t!376608 (exprs!5551 (h!69625 zl!343)))) ((_ is Nil!63176) (t!376608 (exprs!5551 (h!69625 zl!343)))))))

(assert (=> b!5675568 d!1791525))

(declare-fun b!5676001 () Bool)

(declare-fun e!3493712 () (InoxSet Context!10102))

(assert (=> b!5676001 (= e!3493712 (store ((as const (Array Context!10102 Bool)) false) (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) true))))

(declare-fun bm!430659 () Bool)

(declare-fun call!430666 () (InoxSet Context!10102))

(declare-fun call!430664 () (InoxSet Context!10102))

(assert (=> bm!430659 (= call!430666 call!430664)))

(declare-fun b!5676002 () Bool)

(declare-fun e!3493714 () (InoxSet Context!10102))

(declare-fun call!430667 () (InoxSet Context!10102))

(declare-fun call!430668 () (InoxSet Context!10102))

(assert (=> b!5676002 (= e!3493714 ((_ map or) call!430667 call!430668))))

(declare-fun b!5676003 () Bool)

(declare-fun e!3493717 () Bool)

(assert (=> b!5676003 (= e!3493717 (nullable!5699 (regOne!31846 (reg!15996 (regOne!31846 r!7292)))))))

(declare-fun bm!430660 () Bool)

(declare-fun call!430669 () List!63300)

(declare-fun c!998557 () Bool)

(assert (=> bm!430660 (= call!430667 (derivationStepZipperDown!1009 (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292)))) (ite c!998557 (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (Context!10103 call!430669)) (h!69626 s!2326)))))

(declare-fun bm!430661 () Bool)

(declare-fun call!430665 () List!63300)

(assert (=> bm!430661 (= call!430665 call!430669)))

(declare-fun b!5676004 () Bool)

(declare-fun e!3493713 () (InoxSet Context!10102))

(assert (=> b!5676004 (= e!3493713 ((_ map or) call!430667 call!430664))))

(declare-fun b!5676005 () Bool)

(declare-fun c!998558 () Bool)

(assert (=> b!5676005 (= c!998558 e!3493717)))

(declare-fun res!2398701 () Bool)

(assert (=> b!5676005 (=> (not res!2398701) (not e!3493717))))

(assert (=> b!5676005 (= res!2398701 ((_ is Concat!24512) (reg!15996 (regOne!31846 r!7292))))))

(assert (=> b!5676005 (= e!3493714 e!3493713)))

(declare-fun bm!430662 () Bool)

(assert (=> bm!430662 (= call!430664 call!430668)))

(declare-fun b!5676007 () Bool)

(assert (=> b!5676007 (= e!3493712 e!3493714)))

(assert (=> b!5676007 (= c!998557 ((_ is Union!15667) (reg!15996 (regOne!31846 r!7292))))))

(declare-fun b!5676008 () Bool)

(declare-fun e!3493715 () (InoxSet Context!10102))

(assert (=> b!5676008 (= e!3493715 ((as const (Array Context!10102 Bool)) false))))

(declare-fun b!5676009 () Bool)

(assert (=> b!5676009 (= e!3493715 call!430666)))

(declare-fun c!998555 () Bool)

(declare-fun bm!430663 () Bool)

(declare-fun $colon$colon!1700 (List!63300 Regex!15667) List!63300)

(assert (=> bm!430663 (= call!430669 ($colon$colon!1700 (exprs!5551 (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343)))))) (ite (or c!998558 c!998555) (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (regOne!31846 r!7292)))))))

(declare-fun d!1791527 () Bool)

(declare-fun c!998556 () Bool)

(assert (=> d!1791527 (= c!998556 (and ((_ is ElementMatch!15667) (reg!15996 (regOne!31846 r!7292))) (= (c!998425 (reg!15996 (regOne!31846 r!7292))) (h!69626 s!2326))))))

(assert (=> d!1791527 (= (derivationStepZipperDown!1009 (reg!15996 (regOne!31846 r!7292)) (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (h!69626 s!2326)) e!3493712)))

(declare-fun b!5676006 () Bool)

(declare-fun e!3493716 () (InoxSet Context!10102))

(assert (=> b!5676006 (= e!3493716 call!430666)))

(declare-fun b!5676010 () Bool)

(assert (=> b!5676010 (= e!3493713 e!3493716)))

(assert (=> b!5676010 (= c!998555 ((_ is Concat!24512) (reg!15996 (regOne!31846 r!7292))))))

(declare-fun bm!430664 () Bool)

(assert (=> bm!430664 (= call!430668 (derivationStepZipperDown!1009 (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292)))))) (ite (or c!998557 c!998558) (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (Context!10103 call!430665)) (h!69626 s!2326)))))

(declare-fun b!5676011 () Bool)

(declare-fun c!998554 () Bool)

(assert (=> b!5676011 (= c!998554 ((_ is Star!15667) (reg!15996 (regOne!31846 r!7292))))))

(assert (=> b!5676011 (= e!3493716 e!3493715)))

(assert (= (and d!1791527 c!998556) b!5676001))

(assert (= (and d!1791527 (not c!998556)) b!5676007))

(assert (= (and b!5676007 c!998557) b!5676002))

(assert (= (and b!5676007 (not c!998557)) b!5676005))

(assert (= (and b!5676005 res!2398701) b!5676003))

(assert (= (and b!5676005 c!998558) b!5676004))

(assert (= (and b!5676005 (not c!998558)) b!5676010))

(assert (= (and b!5676010 c!998555) b!5676006))

(assert (= (and b!5676010 (not c!998555)) b!5676011))

(assert (= (and b!5676011 c!998554) b!5676009))

(assert (= (and b!5676011 (not c!998554)) b!5676008))

(assert (= (or b!5676006 b!5676009) bm!430661))

(assert (= (or b!5676006 b!5676009) bm!430659))

(assert (= (or b!5676004 bm!430661) bm!430663))

(assert (= (or b!5676004 bm!430659) bm!430662))

(assert (= (or b!5676002 bm!430662) bm!430664))

(assert (= (or b!5676002 b!5676004) bm!430660))

(declare-fun m!6636694 () Bool)

(assert (=> b!5676003 m!6636694))

(declare-fun m!6636696 () Bool)

(assert (=> b!5676001 m!6636696))

(declare-fun m!6636698 () Bool)

(assert (=> bm!430663 m!6636698))

(declare-fun m!6636700 () Bool)

(assert (=> bm!430660 m!6636700))

(declare-fun m!6636702 () Bool)

(assert (=> bm!430664 m!6636702))

(assert (=> b!5675578 d!1791527))

(declare-fun bs!1323193 () Bool)

(declare-fun d!1791547 () Bool)

(assert (= bs!1323193 (and d!1791547 d!1791463)))

(declare-fun lambda!305761 () Int)

(assert (=> bs!1323193 (= lambda!305761 lambda!305722)))

(declare-fun bs!1323194 () Bool)

(assert (= bs!1323194 (and d!1791547 d!1791469)))

(assert (=> bs!1323194 (= lambda!305761 lambda!305727)))

(assert (=> d!1791547 (= (inv!82414 setElem!37947) (forall!14815 (exprs!5551 setElem!37947) lambda!305761))))

(declare-fun bs!1323195 () Bool)

(assert (= bs!1323195 d!1791547))

(declare-fun m!6636708 () Bool)

(assert (=> bs!1323195 m!6636708))

(assert (=> setNonEmpty!37947 d!1791547))

(declare-fun bs!1323197 () Bool)

(declare-fun b!5676100 () Bool)

(assert (= bs!1323197 (and b!5676100 d!1791511)))

(declare-fun lambda!305766 () Int)

(assert (=> bs!1323197 (not (= lambda!305766 lambda!305747))))

(declare-fun bs!1323198 () Bool)

(assert (= bs!1323198 (and b!5676100 b!5675588)))

(assert (=> bs!1323198 (not (= lambda!305766 lambda!305713))))

(declare-fun bs!1323199 () Bool)

(assert (= bs!1323199 (and b!5676100 d!1791499)))

(assert (=> bs!1323199 (not (= lambda!305766 lambda!305736))))

(assert (=> bs!1323198 (not (= lambda!305766 lambda!305714))))

(assert (=> bs!1323199 (not (= lambda!305766 lambda!305735))))

(assert (=> b!5676100 true))

(assert (=> b!5676100 true))

(declare-fun bs!1323200 () Bool)

(declare-fun b!5676105 () Bool)

(assert (= bs!1323200 (and b!5676105 d!1791511)))

(declare-fun lambda!305767 () Int)

(assert (=> bs!1323200 (not (= lambda!305767 lambda!305747))))

(declare-fun bs!1323201 () Bool)

(assert (= bs!1323201 (and b!5676105 b!5675588)))

(assert (=> bs!1323201 (not (= lambda!305767 lambda!305713))))

(declare-fun bs!1323202 () Bool)

(assert (= bs!1323202 (and b!5676105 b!5676100)))

(assert (=> bs!1323202 (not (= lambda!305767 lambda!305766))))

(declare-fun bs!1323203 () Bool)

(assert (= bs!1323203 (and b!5676105 d!1791499)))

(assert (=> bs!1323203 (= lambda!305767 lambda!305736)))

(assert (=> bs!1323201 (= lambda!305767 lambda!305714)))

(assert (=> bs!1323203 (not (= lambda!305767 lambda!305735))))

(assert (=> b!5676105 true))

(assert (=> b!5676105 true))

(declare-fun bm!430669 () Bool)

(declare-fun c!998571 () Bool)

(declare-fun call!430674 () Bool)

(assert (=> bm!430669 (= call!430674 (Exists!2767 (ite c!998571 lambda!305766 lambda!305767)))))

(declare-fun e!3493762 () Bool)

(assert (=> b!5676100 (= e!3493762 call!430674)))

(declare-fun b!5676101 () Bool)

(declare-fun e!3493764 () Bool)

(declare-fun e!3493760 () Bool)

(assert (=> b!5676101 (= e!3493764 e!3493760)))

(assert (=> b!5676101 (= c!998571 ((_ is Star!15667) r!7292))))

(declare-fun b!5676102 () Bool)

(declare-fun c!998568 () Bool)

(assert (=> b!5676102 (= c!998568 ((_ is Union!15667) r!7292))))

(declare-fun e!3493766 () Bool)

(assert (=> b!5676102 (= e!3493766 e!3493764)))

(declare-fun bm!430670 () Bool)

(declare-fun call!430675 () Bool)

(assert (=> bm!430670 (= call!430675 (isEmpty!35028 s!2326))))

(declare-fun b!5676103 () Bool)

(declare-fun e!3493763 () Bool)

(assert (=> b!5676103 (= e!3493763 (matchRSpec!2770 (regTwo!31847 r!7292) s!2326))))

(declare-fun b!5676104 () Bool)

(declare-fun res!2398718 () Bool)

(assert (=> b!5676104 (=> res!2398718 e!3493762)))

(assert (=> b!5676104 (= res!2398718 call!430675)))

(assert (=> b!5676104 (= e!3493760 e!3493762)))

(assert (=> b!5676105 (= e!3493760 call!430674)))

(declare-fun b!5676106 () Bool)

(declare-fun c!998569 () Bool)

(assert (=> b!5676106 (= c!998569 ((_ is ElementMatch!15667) r!7292))))

(declare-fun e!3493761 () Bool)

(assert (=> b!5676106 (= e!3493761 e!3493766)))

(declare-fun b!5676107 () Bool)

(declare-fun e!3493765 () Bool)

(assert (=> b!5676107 (= e!3493765 e!3493761)))

(declare-fun res!2398719 () Bool)

(assert (=> b!5676107 (= res!2398719 (not ((_ is EmptyLang!15667) r!7292)))))

(assert (=> b!5676107 (=> (not res!2398719) (not e!3493761))))

(declare-fun b!5676108 () Bool)

(assert (=> b!5676108 (= e!3493765 call!430675)))

(declare-fun b!5676109 () Bool)

(assert (=> b!5676109 (= e!3493764 e!3493763)))

(declare-fun res!2398720 () Bool)

(assert (=> b!5676109 (= res!2398720 (matchRSpec!2770 (regOne!31847 r!7292) s!2326))))

(assert (=> b!5676109 (=> res!2398720 e!3493763)))

(declare-fun b!5676110 () Bool)

(assert (=> b!5676110 (= e!3493766 (= s!2326 (Cons!63178 (c!998425 r!7292) Nil!63178)))))

(declare-fun d!1791549 () Bool)

(declare-fun c!998570 () Bool)

(assert (=> d!1791549 (= c!998570 ((_ is EmptyExpr!15667) r!7292))))

(assert (=> d!1791549 (= (matchRSpec!2770 r!7292 s!2326) e!3493765)))

(assert (= (and d!1791549 c!998570) b!5676108))

(assert (= (and d!1791549 (not c!998570)) b!5676107))

(assert (= (and b!5676107 res!2398719) b!5676106))

(assert (= (and b!5676106 c!998569) b!5676110))

(assert (= (and b!5676106 (not c!998569)) b!5676102))

(assert (= (and b!5676102 c!998568) b!5676109))

(assert (= (and b!5676102 (not c!998568)) b!5676101))

(assert (= (and b!5676109 (not res!2398720)) b!5676103))

(assert (= (and b!5676101 c!998571) b!5676104))

(assert (= (and b!5676101 (not c!998571)) b!5676105))

(assert (= (and b!5676104 (not res!2398718)) b!5676100))

(assert (= (or b!5676100 b!5676105) bm!430669))

(assert (= (or b!5676108 b!5676104) bm!430670))

(declare-fun m!6636710 () Bool)

(assert (=> bm!430669 m!6636710))

(declare-fun m!6636712 () Bool)

(assert (=> bm!430670 m!6636712))

(declare-fun m!6636714 () Bool)

(assert (=> b!5676103 m!6636714))

(declare-fun m!6636716 () Bool)

(assert (=> b!5676109 m!6636716))

(assert (=> b!5675579 d!1791549))

(declare-fun b!5676139 () Bool)

(declare-fun res!2398741 () Bool)

(declare-fun e!3493782 () Bool)

(assert (=> b!5676139 (=> res!2398741 e!3493782)))

(assert (=> b!5676139 (= res!2398741 (not (isEmpty!35028 (tail!11140 s!2326))))))

(declare-fun b!5676140 () Bool)

(declare-fun e!3493781 () Bool)

(declare-fun lt!2269656 () Bool)

(declare-fun call!430678 () Bool)

(assert (=> b!5676140 (= e!3493781 (= lt!2269656 call!430678))))

(declare-fun b!5676141 () Bool)

(declare-fun e!3493783 () Bool)

(assert (=> b!5676141 (= e!3493783 (= (head!12045 s!2326) (c!998425 r!7292)))))

(declare-fun b!5676143 () Bool)

(declare-fun res!2398743 () Bool)

(declare-fun e!3493786 () Bool)

(assert (=> b!5676143 (=> res!2398743 e!3493786)))

(assert (=> b!5676143 (= res!2398743 e!3493783)))

(declare-fun res!2398739 () Bool)

(assert (=> b!5676143 (=> (not res!2398739) (not e!3493783))))

(assert (=> b!5676143 (= res!2398739 lt!2269656)))

(declare-fun b!5676144 () Bool)

(declare-fun res!2398738 () Bool)

(assert (=> b!5676144 (=> res!2398738 e!3493786)))

(assert (=> b!5676144 (= res!2398738 (not ((_ is ElementMatch!15667) r!7292)))))

(declare-fun e!3493787 () Bool)

(assert (=> b!5676144 (= e!3493787 e!3493786)))

(declare-fun b!5676145 () Bool)

(declare-fun res!2398744 () Bool)

(assert (=> b!5676145 (=> (not res!2398744) (not e!3493783))))

(assert (=> b!5676145 (= res!2398744 (isEmpty!35028 (tail!11140 s!2326)))))

(declare-fun b!5676146 () Bool)

(declare-fun res!2398742 () Bool)

(assert (=> b!5676146 (=> (not res!2398742) (not e!3493783))))

(assert (=> b!5676146 (= res!2398742 (not call!430678))))

(declare-fun b!5676147 () Bool)

(assert (=> b!5676147 (= e!3493781 e!3493787)))

(declare-fun c!998580 () Bool)

(assert (=> b!5676147 (= c!998580 ((_ is EmptyLang!15667) r!7292))))

(declare-fun b!5676148 () Bool)

(declare-fun e!3493784 () Bool)

(assert (=> b!5676148 (= e!3493784 (nullable!5699 r!7292))))

(declare-fun b!5676149 () Bool)

(declare-fun derivativeStep!4486 (Regex!15667 C!31604) Regex!15667)

(assert (=> b!5676149 (= e!3493784 (matchR!7852 (derivativeStep!4486 r!7292 (head!12045 s!2326)) (tail!11140 s!2326)))))

(declare-fun b!5676142 () Bool)

(assert (=> b!5676142 (= e!3493782 (not (= (head!12045 s!2326) (c!998425 r!7292))))))

(declare-fun d!1791553 () Bool)

(assert (=> d!1791553 e!3493781))

(declare-fun c!998579 () Bool)

(assert (=> d!1791553 (= c!998579 ((_ is EmptyExpr!15667) r!7292))))

(assert (=> d!1791553 (= lt!2269656 e!3493784)))

(declare-fun c!998578 () Bool)

(assert (=> d!1791553 (= c!998578 (isEmpty!35028 s!2326))))

(assert (=> d!1791553 (validRegex!7403 r!7292)))

(assert (=> d!1791553 (= (matchR!7852 r!7292 s!2326) lt!2269656)))

(declare-fun b!5676150 () Bool)

(declare-fun e!3493785 () Bool)

(assert (=> b!5676150 (= e!3493785 e!3493782)))

(declare-fun res!2398737 () Bool)

(assert (=> b!5676150 (=> res!2398737 e!3493782)))

(assert (=> b!5676150 (= res!2398737 call!430678)))

(declare-fun b!5676151 () Bool)

(assert (=> b!5676151 (= e!3493786 e!3493785)))

(declare-fun res!2398740 () Bool)

(assert (=> b!5676151 (=> (not res!2398740) (not e!3493785))))

(assert (=> b!5676151 (= res!2398740 (not lt!2269656))))

(declare-fun bm!430673 () Bool)

(assert (=> bm!430673 (= call!430678 (isEmpty!35028 s!2326))))

(declare-fun b!5676152 () Bool)

(assert (=> b!5676152 (= e!3493787 (not lt!2269656))))

(assert (= (and d!1791553 c!998578) b!5676148))

(assert (= (and d!1791553 (not c!998578)) b!5676149))

(assert (= (and d!1791553 c!998579) b!5676140))

(assert (= (and d!1791553 (not c!998579)) b!5676147))

(assert (= (and b!5676147 c!998580) b!5676152))

(assert (= (and b!5676147 (not c!998580)) b!5676144))

(assert (= (and b!5676144 (not res!2398738)) b!5676143))

(assert (= (and b!5676143 res!2398739) b!5676146))

(assert (= (and b!5676146 res!2398742) b!5676145))

(assert (= (and b!5676145 res!2398744) b!5676141))

(assert (= (and b!5676143 (not res!2398743)) b!5676151))

(assert (= (and b!5676151 res!2398740) b!5676150))

(assert (= (and b!5676150 (not res!2398737)) b!5676139))

(assert (= (and b!5676139 (not res!2398741)) b!5676142))

(assert (= (or b!5676140 b!5676146 b!5676150) bm!430673))

(assert (=> bm!430673 m!6636712))

(declare-fun m!6636718 () Bool)

(assert (=> b!5676142 m!6636718))

(assert (=> b!5676141 m!6636718))

(declare-fun m!6636720 () Bool)

(assert (=> b!5676148 m!6636720))

(declare-fun m!6636722 () Bool)

(assert (=> b!5676139 m!6636722))

(assert (=> b!5676139 m!6636722))

(declare-fun m!6636724 () Bool)

(assert (=> b!5676139 m!6636724))

(assert (=> d!1791553 m!6636712))

(assert (=> d!1791553 m!6636390))

(assert (=> b!5676149 m!6636718))

(assert (=> b!5676149 m!6636718))

(declare-fun m!6636726 () Bool)

(assert (=> b!5676149 m!6636726))

(assert (=> b!5676149 m!6636722))

(assert (=> b!5676149 m!6636726))

(assert (=> b!5676149 m!6636722))

(declare-fun m!6636728 () Bool)

(assert (=> b!5676149 m!6636728))

(assert (=> b!5676145 m!6636722))

(assert (=> b!5676145 m!6636722))

(assert (=> b!5676145 m!6636724))

(assert (=> b!5675579 d!1791553))

(declare-fun d!1791555 () Bool)

(assert (=> d!1791555 (= (matchR!7852 r!7292 s!2326) (matchRSpec!2770 r!7292 s!2326))))

(declare-fun lt!2269659 () Unit!156200)

(declare-fun choose!42940 (Regex!15667 List!63302) Unit!156200)

(assert (=> d!1791555 (= lt!2269659 (choose!42940 r!7292 s!2326))))

(assert (=> d!1791555 (validRegex!7403 r!7292)))

(assert (=> d!1791555 (= (mainMatchTheorem!2770 r!7292 s!2326) lt!2269659)))

(declare-fun bs!1323204 () Bool)

(assert (= bs!1323204 d!1791555))

(assert (=> bs!1323204 m!6636398))

(assert (=> bs!1323204 m!6636396))

(declare-fun m!6636730 () Bool)

(assert (=> bs!1323204 m!6636730))

(assert (=> bs!1323204 m!6636390))

(assert (=> b!5675579 d!1791555))

(declare-fun d!1791557 () Bool)

(assert (=> d!1791557 (= (isEmpty!35026 (t!376609 zl!343)) ((_ is Nil!63177) (t!376609 zl!343)))))

(assert (=> b!5675589 d!1791557))

(declare-fun b!5676153 () Bool)

(declare-fun e!3493788 () (InoxSet Context!10102))

(assert (=> b!5676153 (= e!3493788 (store ((as const (Array Context!10102 Bool)) false) lt!2269587 true))))

(declare-fun bm!430674 () Bool)

(declare-fun call!430681 () (InoxSet Context!10102))

(declare-fun call!430679 () (InoxSet Context!10102))

(assert (=> bm!430674 (= call!430681 call!430679)))

(declare-fun b!5676154 () Bool)

(declare-fun e!3493790 () (InoxSet Context!10102))

(declare-fun call!430682 () (InoxSet Context!10102))

(declare-fun call!430683 () (InoxSet Context!10102))

(assert (=> b!5676154 (= e!3493790 ((_ map or) call!430682 call!430683))))

(declare-fun b!5676155 () Bool)

(declare-fun e!3493793 () Bool)

(assert (=> b!5676155 (= e!3493793 (nullable!5699 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343))))))))

(declare-fun call!430684 () List!63300)

(declare-fun c!998584 () Bool)

(declare-fun bm!430675 () Bool)

(assert (=> bm!430675 (= call!430682 (derivationStepZipperDown!1009 (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343))))) (ite c!998584 lt!2269587 (Context!10103 call!430684)) (h!69626 s!2326)))))

(declare-fun bm!430676 () Bool)

(declare-fun call!430680 () List!63300)

(assert (=> bm!430676 (= call!430680 call!430684)))

(declare-fun b!5676156 () Bool)

(declare-fun e!3493789 () (InoxSet Context!10102))

(assert (=> b!5676156 (= e!3493789 ((_ map or) call!430682 call!430679))))

(declare-fun b!5676157 () Bool)

(declare-fun c!998585 () Bool)

(assert (=> b!5676157 (= c!998585 e!3493793)))

(declare-fun res!2398745 () Bool)

(assert (=> b!5676157 (=> (not res!2398745) (not e!3493793))))

(assert (=> b!5676157 (= res!2398745 ((_ is Concat!24512) (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(assert (=> b!5676157 (= e!3493790 e!3493789)))

(declare-fun bm!430677 () Bool)

(assert (=> bm!430677 (= call!430679 call!430683)))

(declare-fun b!5676159 () Bool)

(assert (=> b!5676159 (= e!3493788 e!3493790)))

(assert (=> b!5676159 (= c!998584 ((_ is Union!15667) (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5676160 () Bool)

(declare-fun e!3493791 () (InoxSet Context!10102))

(assert (=> b!5676160 (= e!3493791 ((as const (Array Context!10102 Bool)) false))))

(declare-fun b!5676161 () Bool)

(assert (=> b!5676161 (= e!3493791 call!430681)))

(declare-fun bm!430678 () Bool)

(declare-fun c!998582 () Bool)

(assert (=> bm!430678 (= call!430684 ($colon$colon!1700 (exprs!5551 lt!2269587) (ite (or c!998585 c!998582) (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (h!69624 (exprs!5551 (h!69625 zl!343))))))))

(declare-fun d!1791559 () Bool)

(declare-fun c!998583 () Bool)

(assert (=> d!1791559 (= c!998583 (and ((_ is ElementMatch!15667) (h!69624 (exprs!5551 (h!69625 zl!343)))) (= (c!998425 (h!69624 (exprs!5551 (h!69625 zl!343)))) (h!69626 s!2326))))))

(assert (=> d!1791559 (= (derivationStepZipperDown!1009 (h!69624 (exprs!5551 (h!69625 zl!343))) lt!2269587 (h!69626 s!2326)) e!3493788)))

(declare-fun b!5676158 () Bool)

(declare-fun e!3493792 () (InoxSet Context!10102))

(assert (=> b!5676158 (= e!3493792 call!430681)))

(declare-fun b!5676162 () Bool)

(assert (=> b!5676162 (= e!3493789 e!3493792)))

(assert (=> b!5676162 (= c!998582 ((_ is Concat!24512) (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun bm!430679 () Bool)

(assert (=> bm!430679 (= call!430683 (derivationStepZipperDown!1009 (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343))))))) (ite (or c!998584 c!998585) lt!2269587 (Context!10103 call!430680)) (h!69626 s!2326)))))

(declare-fun b!5676163 () Bool)

(declare-fun c!998581 () Bool)

(assert (=> b!5676163 (= c!998581 ((_ is Star!15667) (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(assert (=> b!5676163 (= e!3493792 e!3493791)))

(assert (= (and d!1791559 c!998583) b!5676153))

(assert (= (and d!1791559 (not c!998583)) b!5676159))

(assert (= (and b!5676159 c!998584) b!5676154))

(assert (= (and b!5676159 (not c!998584)) b!5676157))

(assert (= (and b!5676157 res!2398745) b!5676155))

(assert (= (and b!5676157 c!998585) b!5676156))

(assert (= (and b!5676157 (not c!998585)) b!5676162))

(assert (= (and b!5676162 c!998582) b!5676158))

(assert (= (and b!5676162 (not c!998582)) b!5676163))

(assert (= (and b!5676163 c!998581) b!5676161))

(assert (= (and b!5676163 (not c!998581)) b!5676160))

(assert (= (or b!5676158 b!5676161) bm!430676))

(assert (= (or b!5676158 b!5676161) bm!430674))

(assert (= (or b!5676156 bm!430676) bm!430678))

(assert (= (or b!5676156 bm!430674) bm!430677))

(assert (= (or b!5676154 bm!430677) bm!430679))

(assert (= (or b!5676154 b!5676156) bm!430675))

(declare-fun m!6636732 () Bool)

(assert (=> b!5676155 m!6636732))

(declare-fun m!6636734 () Bool)

(assert (=> b!5676153 m!6636734))

(declare-fun m!6636736 () Bool)

(assert (=> bm!430678 m!6636736))

(declare-fun m!6636738 () Bool)

(assert (=> bm!430675 m!6636738))

(declare-fun m!6636740 () Bool)

(assert (=> bm!430679 m!6636740))

(assert (=> b!5675580 d!1791559))

(declare-fun d!1791561 () Bool)

(declare-fun nullableFct!1779 (Regex!15667) Bool)

(assert (=> d!1791561 (= (nullable!5699 (h!69624 (exprs!5551 (h!69625 zl!343)))) (nullableFct!1779 (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun bs!1323205 () Bool)

(assert (= bs!1323205 d!1791561))

(declare-fun m!6636742 () Bool)

(assert (=> bs!1323205 m!6636742))

(assert (=> b!5675580 d!1791561))

(declare-fun b!5676174 () Bool)

(declare-fun e!3493800 () (InoxSet Context!10102))

(assert (=> b!5676174 (= e!3493800 ((as const (Array Context!10102 Bool)) false))))

(declare-fun bm!430682 () Bool)

(declare-fun call!430687 () (InoxSet Context!10102))

(assert (=> bm!430682 (= call!430687 (derivationStepZipperDown!1009 (h!69624 (exprs!5551 lt!2269587)) (Context!10103 (t!376608 (exprs!5551 lt!2269587))) (h!69626 s!2326)))))

(declare-fun b!5676175 () Bool)

(declare-fun e!3493802 () Bool)

(assert (=> b!5676175 (= e!3493802 (nullable!5699 (h!69624 (exprs!5551 lt!2269587))))))

(declare-fun b!5676176 () Bool)

(declare-fun e!3493801 () (InoxSet Context!10102))

(assert (=> b!5676176 (= e!3493801 e!3493800)))

(declare-fun c!998591 () Bool)

(assert (=> b!5676176 (= c!998591 ((_ is Cons!63176) (exprs!5551 lt!2269587)))))

(declare-fun d!1791563 () Bool)

(declare-fun c!998590 () Bool)

(assert (=> d!1791563 (= c!998590 e!3493802)))

(declare-fun res!2398748 () Bool)

(assert (=> d!1791563 (=> (not res!2398748) (not e!3493802))))

(assert (=> d!1791563 (= res!2398748 ((_ is Cons!63176) (exprs!5551 lt!2269587)))))

(assert (=> d!1791563 (= (derivationStepZipperUp!935 lt!2269587 (h!69626 s!2326)) e!3493801)))

(declare-fun b!5676177 () Bool)

(assert (=> b!5676177 (= e!3493800 call!430687)))

(declare-fun b!5676178 () Bool)

(assert (=> b!5676178 (= e!3493801 ((_ map or) call!430687 (derivationStepZipperUp!935 (Context!10103 (t!376608 (exprs!5551 lt!2269587))) (h!69626 s!2326))))))

(assert (= (and d!1791563 res!2398748) b!5676175))

(assert (= (and d!1791563 c!998590) b!5676178))

(assert (= (and d!1791563 (not c!998590)) b!5676176))

(assert (= (and b!5676176 c!998591) b!5676177))

(assert (= (and b!5676176 (not c!998591)) b!5676174))

(assert (= (or b!5676178 b!5676177) bm!430682))

(declare-fun m!6636744 () Bool)

(assert (=> bm!430682 m!6636744))

(declare-fun m!6636746 () Bool)

(assert (=> b!5676175 m!6636746))

(declare-fun m!6636748 () Bool)

(assert (=> b!5676178 m!6636748))

(assert (=> b!5675580 d!1791563))

(declare-fun b!5676179 () Bool)

(declare-fun e!3493803 () (InoxSet Context!10102))

(assert (=> b!5676179 (= e!3493803 ((as const (Array Context!10102 Bool)) false))))

(declare-fun bm!430683 () Bool)

(declare-fun call!430688 () (InoxSet Context!10102))

(assert (=> bm!430683 (= call!430688 (derivationStepZipperDown!1009 (h!69624 (exprs!5551 (h!69625 zl!343))) (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343)))) (h!69626 s!2326)))))

(declare-fun b!5676180 () Bool)

(declare-fun e!3493805 () Bool)

(assert (=> b!5676180 (= e!3493805 (nullable!5699 (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5676181 () Bool)

(declare-fun e!3493804 () (InoxSet Context!10102))

(assert (=> b!5676181 (= e!3493804 e!3493803)))

(declare-fun c!998593 () Bool)

(assert (=> b!5676181 (= c!998593 ((_ is Cons!63176) (exprs!5551 (h!69625 zl!343))))))

(declare-fun d!1791565 () Bool)

(declare-fun c!998592 () Bool)

(assert (=> d!1791565 (= c!998592 e!3493805)))

(declare-fun res!2398749 () Bool)

(assert (=> d!1791565 (=> (not res!2398749) (not e!3493805))))

(assert (=> d!1791565 (= res!2398749 ((_ is Cons!63176) (exprs!5551 (h!69625 zl!343))))))

(assert (=> d!1791565 (= (derivationStepZipperUp!935 (h!69625 zl!343) (h!69626 s!2326)) e!3493804)))

(declare-fun b!5676182 () Bool)

(assert (=> b!5676182 (= e!3493803 call!430688)))

(declare-fun b!5676183 () Bool)

(assert (=> b!5676183 (= e!3493804 ((_ map or) call!430688 (derivationStepZipperUp!935 (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343)))) (h!69626 s!2326))))))

(assert (= (and d!1791565 res!2398749) b!5676180))

(assert (= (and d!1791565 c!998592) b!5676183))

(assert (= (and d!1791565 (not c!998592)) b!5676181))

(assert (= (and b!5676181 c!998593) b!5676182))

(assert (= (and b!5676181 (not c!998593)) b!5676179))

(assert (= (or b!5676183 b!5676182) bm!430683))

(declare-fun m!6636750 () Bool)

(assert (=> bm!430683 m!6636750))

(assert (=> b!5676180 m!6636416))

(declare-fun m!6636752 () Bool)

(assert (=> b!5676183 m!6636752))

(assert (=> b!5675580 d!1791565))

(declare-fun d!1791567 () Bool)

(declare-fun dynLambda!24722 (Int Context!10102) (InoxSet Context!10102))

(assert (=> d!1791567 (= (flatMap!1280 z!1189 lambda!305715) (dynLambda!24722 lambda!305715 (h!69625 zl!343)))))

(declare-fun lt!2269662 () Unit!156200)

(declare-fun choose!42941 ((InoxSet Context!10102) Context!10102 Int) Unit!156200)

(assert (=> d!1791567 (= lt!2269662 (choose!42941 z!1189 (h!69625 zl!343) lambda!305715))))

(assert (=> d!1791567 (= z!1189 (store ((as const (Array Context!10102 Bool)) false) (h!69625 zl!343) true))))

(assert (=> d!1791567 (= (lemmaFlatMapOnSingletonSet!812 z!1189 (h!69625 zl!343) lambda!305715) lt!2269662)))

(declare-fun b_lambda!214643 () Bool)

(assert (=> (not b_lambda!214643) (not d!1791567)))

(declare-fun bs!1323206 () Bool)

(assert (= bs!1323206 d!1791567))

(assert (=> bs!1323206 m!6636418))

(declare-fun m!6636754 () Bool)

(assert (=> bs!1323206 m!6636754))

(declare-fun m!6636756 () Bool)

(assert (=> bs!1323206 m!6636756))

(declare-fun m!6636758 () Bool)

(assert (=> bs!1323206 m!6636758))

(assert (=> b!5675580 d!1791567))

(declare-fun d!1791569 () Bool)

(declare-fun choose!42942 ((InoxSet Context!10102) Int) (InoxSet Context!10102))

(assert (=> d!1791569 (= (flatMap!1280 z!1189 lambda!305715) (choose!42942 z!1189 lambda!305715))))

(declare-fun bs!1323207 () Bool)

(assert (= bs!1323207 d!1791569))

(declare-fun m!6636760 () Bool)

(assert (=> bs!1323207 m!6636760))

(assert (=> b!5675580 d!1791569))

(declare-fun b!5676184 () Bool)

(declare-fun e!3493806 () (InoxSet Context!10102))

(assert (=> b!5676184 (= e!3493806 ((as const (Array Context!10102 Bool)) false))))

(declare-fun bm!430684 () Bool)

(declare-fun call!430689 () (InoxSet Context!10102))

(assert (=> bm!430684 (= call!430689 (derivationStepZipperDown!1009 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))) (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (h!69626 s!2326)))))

(declare-fun b!5676185 () Bool)

(declare-fun e!3493808 () Bool)

(assert (=> b!5676185 (= e!3493808 (nullable!5699 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))))))

(declare-fun b!5676186 () Bool)

(declare-fun e!3493807 () (InoxSet Context!10102))

(assert (=> b!5676186 (= e!3493807 e!3493806)))

(declare-fun c!998595 () Bool)

(assert (=> b!5676186 (= c!998595 ((_ is Cons!63176) (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))))))

(declare-fun d!1791571 () Bool)

(declare-fun c!998594 () Bool)

(assert (=> d!1791571 (= c!998594 e!3493808)))

(declare-fun res!2398750 () Bool)

(assert (=> d!1791571 (=> (not res!2398750) (not e!3493808))))

(assert (=> d!1791571 (= res!2398750 ((_ is Cons!63176) (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))))))

(assert (=> d!1791571 (= (derivationStepZipperUp!935 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (h!69626 s!2326)) e!3493807)))

(declare-fun b!5676187 () Bool)

(assert (=> b!5676187 (= e!3493806 call!430689)))

(declare-fun b!5676188 () Bool)

(assert (=> b!5676188 (= e!3493807 ((_ map or) call!430689 (derivationStepZipperUp!935 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (h!69626 s!2326))))))

(assert (= (and d!1791571 res!2398750) b!5676185))

(assert (= (and d!1791571 c!998594) b!5676188))

(assert (= (and d!1791571 (not c!998594)) b!5676186))

(assert (= (and b!5676186 c!998595) b!5676187))

(assert (= (and b!5676186 (not c!998595)) b!5676184))

(assert (= (or b!5676188 b!5676187) bm!430684))

(declare-fun m!6636762 () Bool)

(assert (=> bm!430684 m!6636762))

(declare-fun m!6636764 () Bool)

(assert (=> b!5676185 m!6636764))

(declare-fun m!6636766 () Bool)

(assert (=> b!5676188 m!6636766))

(assert (=> b!5675580 d!1791571))

(declare-fun bs!1323208 () Bool)

(declare-fun d!1791573 () Bool)

(assert (= bs!1323208 (and d!1791573 d!1791463)))

(declare-fun lambda!305768 () Int)

(assert (=> bs!1323208 (= lambda!305768 lambda!305722)))

(declare-fun bs!1323209 () Bool)

(assert (= bs!1323209 (and d!1791573 d!1791469)))

(assert (=> bs!1323209 (= lambda!305768 lambda!305727)))

(declare-fun bs!1323210 () Bool)

(assert (= bs!1323210 (and d!1791573 d!1791547)))

(assert (=> bs!1323210 (= lambda!305768 lambda!305761)))

(assert (=> d!1791573 (= (inv!82414 (h!69625 zl!343)) (forall!14815 (exprs!5551 (h!69625 zl!343)) lambda!305768))))

(declare-fun bs!1323211 () Bool)

(assert (= bs!1323211 d!1791573))

(declare-fun m!6636768 () Bool)

(assert (=> bs!1323211 m!6636768))

(assert (=> b!5675581 d!1791573))

(declare-fun bs!1323212 () Bool)

(declare-fun d!1791575 () Bool)

(assert (= bs!1323212 (and d!1791575 d!1791463)))

(declare-fun lambda!305771 () Int)

(assert (=> bs!1323212 (= lambda!305771 lambda!305722)))

(declare-fun bs!1323213 () Bool)

(assert (= bs!1323213 (and d!1791575 d!1791469)))

(assert (=> bs!1323213 (= lambda!305771 lambda!305727)))

(declare-fun bs!1323214 () Bool)

(assert (= bs!1323214 (and d!1791575 d!1791547)))

(assert (=> bs!1323214 (= lambda!305771 lambda!305761)))

(declare-fun bs!1323215 () Bool)

(assert (= bs!1323215 (and d!1791575 d!1791573)))

(assert (=> bs!1323215 (= lambda!305771 lambda!305768)))

(declare-fun b!5676209 () Bool)

(declare-fun e!3493826 () Regex!15667)

(assert (=> b!5676209 (= e!3493826 (h!69624 (exprs!5551 (h!69625 zl!343))))))

(declare-fun b!5676210 () Bool)

(declare-fun e!3493821 () Regex!15667)

(assert (=> b!5676210 (= e!3493821 EmptyExpr!15667)))

(declare-fun b!5676211 () Bool)

(assert (=> b!5676211 (= e!3493826 e!3493821)))

(declare-fun c!998606 () Bool)

(assert (=> b!5676211 (= c!998606 ((_ is Cons!63176) (exprs!5551 (h!69625 zl!343))))))

(declare-fun e!3493822 () Bool)

(assert (=> d!1791575 e!3493822))

(declare-fun res!2398756 () Bool)

(assert (=> d!1791575 (=> (not res!2398756) (not e!3493822))))

(declare-fun lt!2269665 () Regex!15667)

(assert (=> d!1791575 (= res!2398756 (validRegex!7403 lt!2269665))))

(assert (=> d!1791575 (= lt!2269665 e!3493826)))

(declare-fun c!998607 () Bool)

(declare-fun e!3493824 () Bool)

(assert (=> d!1791575 (= c!998607 e!3493824)))

(declare-fun res!2398755 () Bool)

(assert (=> d!1791575 (=> (not res!2398755) (not e!3493824))))

(assert (=> d!1791575 (= res!2398755 ((_ is Cons!63176) (exprs!5551 (h!69625 zl!343))))))

(assert (=> d!1791575 (forall!14815 (exprs!5551 (h!69625 zl!343)) lambda!305771)))

(assert (=> d!1791575 (= (generalisedConcat!1282 (exprs!5551 (h!69625 zl!343))) lt!2269665)))

(declare-fun b!5676212 () Bool)

(assert (=> b!5676212 (= e!3493824 (isEmpty!35025 (t!376608 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5676213 () Bool)

(assert (=> b!5676213 (= e!3493821 (Concat!24512 (h!69624 (exprs!5551 (h!69625 zl!343))) (generalisedConcat!1282 (t!376608 (exprs!5551 (h!69625 zl!343))))))))

(declare-fun b!5676214 () Bool)

(declare-fun e!3493825 () Bool)

(declare-fun isConcat!714 (Regex!15667) Bool)

(assert (=> b!5676214 (= e!3493825 (isConcat!714 lt!2269665))))

(declare-fun b!5676215 () Bool)

(assert (=> b!5676215 (= e!3493825 (= lt!2269665 (head!12046 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5676216 () Bool)

(declare-fun e!3493823 () Bool)

(assert (=> b!5676216 (= e!3493823 e!3493825)))

(declare-fun c!998604 () Bool)

(assert (=> b!5676216 (= c!998604 (isEmpty!35025 (tail!11141 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5676217 () Bool)

(assert (=> b!5676217 (= e!3493822 e!3493823)))

(declare-fun c!998605 () Bool)

(assert (=> b!5676217 (= c!998605 (isEmpty!35025 (exprs!5551 (h!69625 zl!343))))))

(declare-fun b!5676218 () Bool)

(declare-fun isEmptyExpr!1191 (Regex!15667) Bool)

(assert (=> b!5676218 (= e!3493823 (isEmptyExpr!1191 lt!2269665))))

(assert (= (and d!1791575 res!2398755) b!5676212))

(assert (= (and d!1791575 c!998607) b!5676209))

(assert (= (and d!1791575 (not c!998607)) b!5676211))

(assert (= (and b!5676211 c!998606) b!5676213))

(assert (= (and b!5676211 (not c!998606)) b!5676210))

(assert (= (and d!1791575 res!2398756) b!5676217))

(assert (= (and b!5676217 c!998605) b!5676218))

(assert (= (and b!5676217 (not c!998605)) b!5676216))

(assert (= (and b!5676216 c!998604) b!5676215))

(assert (= (and b!5676216 (not c!998604)) b!5676214))

(declare-fun m!6636770 () Bool)

(assert (=> b!5676215 m!6636770))

(declare-fun m!6636772 () Bool)

(assert (=> b!5676213 m!6636772))

(declare-fun m!6636774 () Bool)

(assert (=> d!1791575 m!6636774))

(declare-fun m!6636776 () Bool)

(assert (=> d!1791575 m!6636776))

(declare-fun m!6636778 () Bool)

(assert (=> b!5676217 m!6636778))

(declare-fun m!6636780 () Bool)

(assert (=> b!5676216 m!6636780))

(assert (=> b!5676216 m!6636780))

(declare-fun m!6636782 () Bool)

(assert (=> b!5676216 m!6636782))

(declare-fun m!6636784 () Bool)

(assert (=> b!5676214 m!6636784))

(declare-fun m!6636786 () Bool)

(assert (=> b!5676218 m!6636786))

(assert (=> b!5676212 m!6636392))

(assert (=> b!5675591 d!1791575))

(declare-fun d!1791577 () Bool)

(declare-fun e!3493829 () Bool)

(assert (=> d!1791577 e!3493829))

(declare-fun res!2398759 () Bool)

(assert (=> d!1791577 (=> (not res!2398759) (not e!3493829))))

(declare-fun lt!2269668 () List!63301)

(declare-fun noDuplicate!1613 (List!63301) Bool)

(assert (=> d!1791577 (= res!2398759 (noDuplicate!1613 lt!2269668))))

(declare-fun choose!42943 ((InoxSet Context!10102)) List!63301)

(assert (=> d!1791577 (= lt!2269668 (choose!42943 z!1189))))

(assert (=> d!1791577 (= (toList!9451 z!1189) lt!2269668)))

(declare-fun b!5676221 () Bool)

(declare-fun content!11440 (List!63301) (InoxSet Context!10102))

(assert (=> b!5676221 (= e!3493829 (= (content!11440 lt!2269668) z!1189))))

(assert (= (and d!1791577 res!2398759) b!5676221))

(declare-fun m!6636788 () Bool)

(assert (=> d!1791577 m!6636788))

(declare-fun m!6636790 () Bool)

(assert (=> d!1791577 m!6636790))

(declare-fun m!6636792 () Bool)

(assert (=> b!5676221 m!6636792))

(assert (=> b!5675582 d!1791577))

(declare-fun d!1791579 () Bool)

(declare-fun lt!2269671 () Regex!15667)

(assert (=> d!1791579 (validRegex!7403 lt!2269671)))

(assert (=> d!1791579 (= lt!2269671 (generalisedUnion!1530 (unfocusZipperList!1095 zl!343)))))

(assert (=> d!1791579 (= (unfocusZipper!1409 zl!343) lt!2269671)))

(declare-fun bs!1323216 () Bool)

(assert (= bs!1323216 d!1791579))

(declare-fun m!6636794 () Bool)

(assert (=> bs!1323216 m!6636794))

(assert (=> bs!1323216 m!6636384))

(assert (=> bs!1323216 m!6636384))

(assert (=> bs!1323216 m!6636386))

(assert (=> b!5675573 d!1791579))

(declare-fun d!1791581 () Bool)

(declare-fun e!3493832 () Bool)

(assert (=> d!1791581 (= (matchZipper!1805 ((_ map or) lt!2269582 lt!2269585) (t!376610 s!2326)) e!3493832)))

(declare-fun res!2398762 () Bool)

(assert (=> d!1791581 (=> res!2398762 e!3493832)))

(assert (=> d!1791581 (= res!2398762 (matchZipper!1805 lt!2269582 (t!376610 s!2326)))))

(declare-fun lt!2269674 () Unit!156200)

(declare-fun choose!42944 ((InoxSet Context!10102) (InoxSet Context!10102) List!63302) Unit!156200)

(assert (=> d!1791581 (= lt!2269674 (choose!42944 lt!2269582 lt!2269585 (t!376610 s!2326)))))

(assert (=> d!1791581 (= (lemmaZipperConcatMatchesSameAsBothZippers!692 lt!2269582 lt!2269585 (t!376610 s!2326)) lt!2269674)))

(declare-fun b!5676224 () Bool)

(assert (=> b!5676224 (= e!3493832 (matchZipper!1805 lt!2269585 (t!376610 s!2326)))))

(assert (= (and d!1791581 (not res!2398762)) b!5676224))

(assert (=> d!1791581 m!6636370))

(assert (=> d!1791581 m!6636368))

(declare-fun m!6636796 () Bool)

(assert (=> d!1791581 m!6636796))

(assert (=> b!5676224 m!6636404))

(assert (=> b!5675584 d!1791581))

(declare-fun d!1791583 () Bool)

(declare-fun c!998608 () Bool)

(assert (=> d!1791583 (= c!998608 (isEmpty!35028 (t!376610 s!2326)))))

(declare-fun e!3493833 () Bool)

(assert (=> d!1791583 (= (matchZipper!1805 lt!2269582 (t!376610 s!2326)) e!3493833)))

(declare-fun b!5676225 () Bool)

(assert (=> b!5676225 (= e!3493833 (nullableZipper!1633 lt!2269582))))

(declare-fun b!5676226 () Bool)

(assert (=> b!5676226 (= e!3493833 (matchZipper!1805 (derivationStepZipper!1752 lt!2269582 (head!12045 (t!376610 s!2326))) (tail!11140 (t!376610 s!2326))))))

(assert (= (and d!1791583 c!998608) b!5676225))

(assert (= (and d!1791583 (not c!998608)) b!5676226))

(assert (=> d!1791583 m!6636422))

(declare-fun m!6636798 () Bool)

(assert (=> b!5676225 m!6636798))

(assert (=> b!5676226 m!6636426))

(assert (=> b!5676226 m!6636426))

(declare-fun m!6636800 () Bool)

(assert (=> b!5676226 m!6636800))

(assert (=> b!5676226 m!6636430))

(assert (=> b!5676226 m!6636800))

(assert (=> b!5676226 m!6636430))

(declare-fun m!6636802 () Bool)

(assert (=> b!5676226 m!6636802))

(assert (=> b!5675584 d!1791583))

(declare-fun d!1791585 () Bool)

(declare-fun c!998609 () Bool)

(assert (=> d!1791585 (= c!998609 (isEmpty!35028 (t!376610 s!2326)))))

(declare-fun e!3493834 () Bool)

(assert (=> d!1791585 (= (matchZipper!1805 ((_ map or) lt!2269582 lt!2269585) (t!376610 s!2326)) e!3493834)))

(declare-fun b!5676227 () Bool)

(assert (=> b!5676227 (= e!3493834 (nullableZipper!1633 ((_ map or) lt!2269582 lt!2269585)))))

(declare-fun b!5676228 () Bool)

(assert (=> b!5676228 (= e!3493834 (matchZipper!1805 (derivationStepZipper!1752 ((_ map or) lt!2269582 lt!2269585) (head!12045 (t!376610 s!2326))) (tail!11140 (t!376610 s!2326))))))

(assert (= (and d!1791585 c!998609) b!5676227))

(assert (= (and d!1791585 (not c!998609)) b!5676228))

(assert (=> d!1791585 m!6636422))

(declare-fun m!6636804 () Bool)

(assert (=> b!5676227 m!6636804))

(assert (=> b!5676228 m!6636426))

(assert (=> b!5676228 m!6636426))

(declare-fun m!6636806 () Bool)

(assert (=> b!5676228 m!6636806))

(assert (=> b!5676228 m!6636430))

(assert (=> b!5676228 m!6636806))

(assert (=> b!5676228 m!6636430))

(declare-fun m!6636808 () Bool)

(assert (=> b!5676228 m!6636808))

(assert (=> b!5675584 d!1791585))

(declare-fun d!1791587 () Bool)

(assert (=> d!1791587 (= (nullable!5699 (regOne!31846 (regOne!31846 r!7292))) (nullableFct!1779 (regOne!31846 (regOne!31846 r!7292))))))

(declare-fun bs!1323217 () Bool)

(assert (= bs!1323217 d!1791587))

(declare-fun m!6636810 () Bool)

(assert (=> bs!1323217 m!6636810))

(assert (=> b!5675585 d!1791587))

(declare-fun b!5676247 () Bool)

(declare-fun e!3493852 () Bool)

(declare-fun e!3493850 () Bool)

(assert (=> b!5676247 (= e!3493852 e!3493850)))

(declare-fun c!998614 () Bool)

(assert (=> b!5676247 (= c!998614 ((_ is Union!15667) r!7292))))

(declare-fun b!5676248 () Bool)

(declare-fun e!3493849 () Bool)

(declare-fun call!430697 () Bool)

(assert (=> b!5676248 (= e!3493849 call!430697)))

(declare-fun b!5676249 () Bool)

(declare-fun res!2398776 () Bool)

(assert (=> b!5676249 (=> (not res!2398776) (not e!3493849))))

(declare-fun call!430696 () Bool)

(assert (=> b!5676249 (= res!2398776 call!430696)))

(assert (=> b!5676249 (= e!3493850 e!3493849)))

(declare-fun b!5676250 () Bool)

(declare-fun e!3493851 () Bool)

(assert (=> b!5676250 (= e!3493851 call!430697)))

(declare-fun b!5676251 () Bool)

(declare-fun res!2398774 () Bool)

(declare-fun e!3493855 () Bool)

(assert (=> b!5676251 (=> res!2398774 e!3493855)))

(assert (=> b!5676251 (= res!2398774 (not ((_ is Concat!24512) r!7292)))))

(assert (=> b!5676251 (= e!3493850 e!3493855)))

(declare-fun b!5676252 () Bool)

(declare-fun e!3493853 () Bool)

(declare-fun call!430698 () Bool)

(assert (=> b!5676252 (= e!3493853 call!430698)))

(declare-fun b!5676253 () Bool)

(assert (=> b!5676253 (= e!3493852 e!3493853)))

(declare-fun res!2398773 () Bool)

(assert (=> b!5676253 (= res!2398773 (not (nullable!5699 (reg!15996 r!7292))))))

(assert (=> b!5676253 (=> (not res!2398773) (not e!3493853))))

(declare-fun bm!430691 () Bool)

(declare-fun c!998615 () Bool)

(assert (=> bm!430691 (= call!430698 (validRegex!7403 (ite c!998615 (reg!15996 r!7292) (ite c!998614 (regTwo!31847 r!7292) (regTwo!31846 r!7292)))))))

(declare-fun d!1791589 () Bool)

(declare-fun res!2398777 () Bool)

(declare-fun e!3493854 () Bool)

(assert (=> d!1791589 (=> res!2398777 e!3493854)))

(assert (=> d!1791589 (= res!2398777 ((_ is ElementMatch!15667) r!7292))))

(assert (=> d!1791589 (= (validRegex!7403 r!7292) e!3493854)))

(declare-fun bm!430692 () Bool)

(assert (=> bm!430692 (= call!430697 call!430698)))

(declare-fun bm!430693 () Bool)

(assert (=> bm!430693 (= call!430696 (validRegex!7403 (ite c!998614 (regOne!31847 r!7292) (regOne!31846 r!7292))))))

(declare-fun b!5676254 () Bool)

(assert (=> b!5676254 (= e!3493854 e!3493852)))

(assert (=> b!5676254 (= c!998615 ((_ is Star!15667) r!7292))))

(declare-fun b!5676255 () Bool)

(assert (=> b!5676255 (= e!3493855 e!3493851)))

(declare-fun res!2398775 () Bool)

(assert (=> b!5676255 (=> (not res!2398775) (not e!3493851))))

(assert (=> b!5676255 (= res!2398775 call!430696)))

(assert (= (and d!1791589 (not res!2398777)) b!5676254))

(assert (= (and b!5676254 c!998615) b!5676253))

(assert (= (and b!5676254 (not c!998615)) b!5676247))

(assert (= (and b!5676253 res!2398773) b!5676252))

(assert (= (and b!5676247 c!998614) b!5676249))

(assert (= (and b!5676247 (not c!998614)) b!5676251))

(assert (= (and b!5676249 res!2398776) b!5676248))

(assert (= (and b!5676251 (not res!2398774)) b!5676255))

(assert (= (and b!5676255 res!2398775) b!5676250))

(assert (= (or b!5676248 b!5676250) bm!430692))

(assert (= (or b!5676249 b!5676255) bm!430693))

(assert (= (or b!5676252 bm!430692) bm!430691))

(declare-fun m!6636812 () Bool)

(assert (=> b!5676253 m!6636812))

(declare-fun m!6636814 () Bool)

(assert (=> bm!430691 m!6636814))

(declare-fun m!6636816 () Bool)

(assert (=> bm!430693 m!6636816))

(assert (=> start!585900 d!1791589))

(declare-fun b!5676268 () Bool)

(declare-fun e!3493858 () Bool)

(declare-fun tp!1574006 () Bool)

(assert (=> b!5676268 (= e!3493858 tp!1574006)))

(declare-fun b!5676267 () Bool)

(declare-fun tp!1574004 () Bool)

(declare-fun tp!1574007 () Bool)

(assert (=> b!5676267 (= e!3493858 (and tp!1574004 tp!1574007))))

(assert (=> b!5675586 (= tp!1573927 e!3493858)))

(declare-fun b!5676266 () Bool)

(assert (=> b!5676266 (= e!3493858 tp_is_empty!40587)))

(declare-fun b!5676269 () Bool)

(declare-fun tp!1574003 () Bool)

(declare-fun tp!1574005 () Bool)

(assert (=> b!5676269 (= e!3493858 (and tp!1574003 tp!1574005))))

(assert (= (and b!5675586 ((_ is ElementMatch!15667) (regOne!31846 r!7292))) b!5676266))

(assert (= (and b!5675586 ((_ is Concat!24512) (regOne!31846 r!7292))) b!5676267))

(assert (= (and b!5675586 ((_ is Star!15667) (regOne!31846 r!7292))) b!5676268))

(assert (= (and b!5675586 ((_ is Union!15667) (regOne!31846 r!7292))) b!5676269))

(declare-fun b!5676272 () Bool)

(declare-fun e!3493859 () Bool)

(declare-fun tp!1574011 () Bool)

(assert (=> b!5676272 (= e!3493859 tp!1574011)))

(declare-fun b!5676271 () Bool)

(declare-fun tp!1574009 () Bool)

(declare-fun tp!1574012 () Bool)

(assert (=> b!5676271 (= e!3493859 (and tp!1574009 tp!1574012))))

(assert (=> b!5675586 (= tp!1573933 e!3493859)))

(declare-fun b!5676270 () Bool)

(assert (=> b!5676270 (= e!3493859 tp_is_empty!40587)))

(declare-fun b!5676273 () Bool)

(declare-fun tp!1574008 () Bool)

(declare-fun tp!1574010 () Bool)

(assert (=> b!5676273 (= e!3493859 (and tp!1574008 tp!1574010))))

(assert (= (and b!5675586 ((_ is ElementMatch!15667) (regTwo!31846 r!7292))) b!5676270))

(assert (= (and b!5675586 ((_ is Concat!24512) (regTwo!31846 r!7292))) b!5676271))

(assert (= (and b!5675586 ((_ is Star!15667) (regTwo!31846 r!7292))) b!5676272))

(assert (= (and b!5675586 ((_ is Union!15667) (regTwo!31846 r!7292))) b!5676273))

(declare-fun b!5676276 () Bool)

(declare-fun e!3493860 () Bool)

(declare-fun tp!1574016 () Bool)

(assert (=> b!5676276 (= e!3493860 tp!1574016)))

(declare-fun b!5676275 () Bool)

(declare-fun tp!1574014 () Bool)

(declare-fun tp!1574017 () Bool)

(assert (=> b!5676275 (= e!3493860 (and tp!1574014 tp!1574017))))

(assert (=> b!5675571 (= tp!1573928 e!3493860)))

(declare-fun b!5676274 () Bool)

(assert (=> b!5676274 (= e!3493860 tp_is_empty!40587)))

(declare-fun b!5676277 () Bool)

(declare-fun tp!1574013 () Bool)

(declare-fun tp!1574015 () Bool)

(assert (=> b!5676277 (= e!3493860 (and tp!1574013 tp!1574015))))

(assert (= (and b!5675571 ((_ is ElementMatch!15667) (reg!15996 r!7292))) b!5676274))

(assert (= (and b!5675571 ((_ is Concat!24512) (reg!15996 r!7292))) b!5676275))

(assert (= (and b!5675571 ((_ is Star!15667) (reg!15996 r!7292))) b!5676276))

(assert (= (and b!5675571 ((_ is Union!15667) (reg!15996 r!7292))) b!5676277))

(declare-fun b!5676285 () Bool)

(declare-fun e!3493866 () Bool)

(declare-fun tp!1574022 () Bool)

(assert (=> b!5676285 (= e!3493866 tp!1574022)))

(declare-fun tp!1574023 () Bool)

(declare-fun e!3493865 () Bool)

(declare-fun b!5676284 () Bool)

(assert (=> b!5676284 (= e!3493865 (and (inv!82414 (h!69625 (t!376609 zl!343))) e!3493866 tp!1574023))))

(assert (=> b!5675581 (= tp!1573934 e!3493865)))

(assert (= b!5676284 b!5676285))

(assert (= (and b!5675581 ((_ is Cons!63177) (t!376609 zl!343))) b!5676284))

(declare-fun m!6636818 () Bool)

(assert (=> b!5676284 m!6636818))

(declare-fun b!5676290 () Bool)

(declare-fun e!3493869 () Bool)

(declare-fun tp!1574028 () Bool)

(declare-fun tp!1574029 () Bool)

(assert (=> b!5676290 (= e!3493869 (and tp!1574028 tp!1574029))))

(assert (=> b!5675587 (= tp!1573930 e!3493869)))

(assert (= (and b!5675587 ((_ is Cons!63176) (exprs!5551 (h!69625 zl!343)))) b!5676290))

(declare-fun b!5676295 () Bool)

(declare-fun e!3493872 () Bool)

(declare-fun tp!1574032 () Bool)

(assert (=> b!5676295 (= e!3493872 (and tp_is_empty!40587 tp!1574032))))

(assert (=> b!5675583 (= tp!1573926 e!3493872)))

(assert (= (and b!5675583 ((_ is Cons!63178) (t!376610 s!2326))) b!5676295))

(declare-fun condSetEmpty!37953 () Bool)

(assert (=> setNonEmpty!37947 (= condSetEmpty!37953 (= setRest!37947 ((as const (Array Context!10102 Bool)) false)))))

(declare-fun setRes!37953 () Bool)

(assert (=> setNonEmpty!37947 (= tp!1573929 setRes!37953)))

(declare-fun setIsEmpty!37953 () Bool)

(assert (=> setIsEmpty!37953 setRes!37953))

(declare-fun setNonEmpty!37953 () Bool)

(declare-fun setElem!37953 () Context!10102)

(declare-fun tp!1574037 () Bool)

(declare-fun e!3493875 () Bool)

(assert (=> setNonEmpty!37953 (= setRes!37953 (and tp!1574037 (inv!82414 setElem!37953) e!3493875))))

(declare-fun setRest!37953 () (InoxSet Context!10102))

(assert (=> setNonEmpty!37953 (= setRest!37947 ((_ map or) (store ((as const (Array Context!10102 Bool)) false) setElem!37953 true) setRest!37953))))

(declare-fun b!5676300 () Bool)

(declare-fun tp!1574038 () Bool)

(assert (=> b!5676300 (= e!3493875 tp!1574038)))

(assert (= (and setNonEmpty!37947 condSetEmpty!37953) setIsEmpty!37953))

(assert (= (and setNonEmpty!37947 (not condSetEmpty!37953)) setNonEmpty!37953))

(assert (= setNonEmpty!37953 b!5676300))

(declare-fun m!6636820 () Bool)

(assert (=> setNonEmpty!37953 m!6636820))

(declare-fun b!5676303 () Bool)

(declare-fun e!3493876 () Bool)

(declare-fun tp!1574042 () Bool)

(assert (=> b!5676303 (= e!3493876 tp!1574042)))

(declare-fun b!5676302 () Bool)

(declare-fun tp!1574040 () Bool)

(declare-fun tp!1574043 () Bool)

(assert (=> b!5676302 (= e!3493876 (and tp!1574040 tp!1574043))))

(assert (=> b!5675574 (= tp!1573925 e!3493876)))

(declare-fun b!5676301 () Bool)

(assert (=> b!5676301 (= e!3493876 tp_is_empty!40587)))

(declare-fun b!5676304 () Bool)

(declare-fun tp!1574039 () Bool)

(declare-fun tp!1574041 () Bool)

(assert (=> b!5676304 (= e!3493876 (and tp!1574039 tp!1574041))))

(assert (= (and b!5675574 ((_ is ElementMatch!15667) (regOne!31847 r!7292))) b!5676301))

(assert (= (and b!5675574 ((_ is Concat!24512) (regOne!31847 r!7292))) b!5676302))

(assert (= (and b!5675574 ((_ is Star!15667) (regOne!31847 r!7292))) b!5676303))

(assert (= (and b!5675574 ((_ is Union!15667) (regOne!31847 r!7292))) b!5676304))

(declare-fun b!5676307 () Bool)

(declare-fun e!3493877 () Bool)

(declare-fun tp!1574047 () Bool)

(assert (=> b!5676307 (= e!3493877 tp!1574047)))

(declare-fun b!5676306 () Bool)

(declare-fun tp!1574045 () Bool)

(declare-fun tp!1574048 () Bool)

(assert (=> b!5676306 (= e!3493877 (and tp!1574045 tp!1574048))))

(assert (=> b!5675574 (= tp!1573932 e!3493877)))

(declare-fun b!5676305 () Bool)

(assert (=> b!5676305 (= e!3493877 tp_is_empty!40587)))

(declare-fun b!5676308 () Bool)

(declare-fun tp!1574044 () Bool)

(declare-fun tp!1574046 () Bool)

(assert (=> b!5676308 (= e!3493877 (and tp!1574044 tp!1574046))))

(assert (= (and b!5675574 ((_ is ElementMatch!15667) (regTwo!31847 r!7292))) b!5676305))

(assert (= (and b!5675574 ((_ is Concat!24512) (regTwo!31847 r!7292))) b!5676306))

(assert (= (and b!5675574 ((_ is Star!15667) (regTwo!31847 r!7292))) b!5676307))

(assert (= (and b!5675574 ((_ is Union!15667) (regTwo!31847 r!7292))) b!5676308))

(declare-fun b!5676309 () Bool)

(declare-fun e!3493878 () Bool)

(declare-fun tp!1574049 () Bool)

(declare-fun tp!1574050 () Bool)

(assert (=> b!5676309 (= e!3493878 (and tp!1574049 tp!1574050))))

(assert (=> b!5675570 (= tp!1573931 e!3493878)))

(assert (= (and b!5675570 ((_ is Cons!63176) (exprs!5551 setElem!37947))) b!5676309))

(declare-fun b_lambda!214645 () Bool)

(assert (= b_lambda!214643 (or b!5675580 b_lambda!214645)))

(declare-fun bs!1323218 () Bool)

(declare-fun d!1791591 () Bool)

(assert (= bs!1323218 (and d!1791591 b!5675580)))

(assert (=> bs!1323218 (= (dynLambda!24722 lambda!305715 (h!69625 zl!343)) (derivationStepZipperUp!935 (h!69625 zl!343) (h!69626 s!2326)))))

(assert (=> bs!1323218 m!6636412))

(assert (=> d!1791567 d!1791591))

(check-sat (not b!5675829) (not b!5676145) (not b!5676253) (not b!5675826) (not b!5675825) (not b!5676214) (not b!5676212) (not d!1791567) (not d!1791579) (not d!1791577) (not bm!430663) (not b!5676268) (not b!5676295) (not d!1791587) (not b!5676273) (not bm!430679) (not d!1791497) (not d!1791511) (not b!5675687) tp_is_empty!40587 (not b!5676180) (not d!1791561) (not b!5676277) (not b!5676188) (not d!1791469) (not b!5675664) (not d!1791461) (not bm!430691) (not b!5676267) (not d!1791575) (not b!5676149) (not b!5676300) (not bm!430675) (not d!1791547) (not b!5676290) (not b!5675830) (not bm!430664) (not b!5676269) (not d!1791573) (not b!5676284) (not d!1791555) (not b!5676228) (not d!1791583) (not b!5676221) (not b_lambda!214645) (not b!5675832) (not b!5675668) (not b!5676303) (not b!5676285) (not b!5676213) (not b!5676178) (not b!5676272) (not b!5676275) (not b!5675602) (not bm!430669) (not b!5676155) (not b!5676307) (not b!5676271) (not b!5675667) (not bm!430682) (not b!5676139) (not b!5676302) (not b!5675662) (not d!1791463) (not b!5676224) (not d!1791553) (not b!5676003) (not bm!430683) (not b!5675828) (not b!5676109) (not d!1791499) (not b!5676216) (not bm!430678) (not setNonEmpty!37953) (not bm!430673) (not b!5676304) (not b!5676185) (not bm!430660) (not b!5676142) (not bm!430670) (not bm!430693) (not d!1791473) (not d!1791581) (not b!5675670) (not d!1791509) (not b!5676215) (not b!5676217) (not bm!430684) (not d!1791523) (not b!5676308) (not bs!1323218) (not b!5675603) (not b!5676175) (not b!5676227) (not d!1791569) (not b!5676141) (not b!5676218) (not b!5676276) (not b!5676225) (not b!5676306) (not b!5675669) (not b!5676226) (not b!5675666) (not b!5676103) (not d!1791585) (not b!5676148) (not b!5676183) (not b!5676309))
(check-sat)
(get-model)

(declare-fun b!5676310 () Bool)

(declare-fun e!3493879 () (InoxSet Context!10102))

(assert (=> b!5676310 (= e!3493879 ((as const (Array Context!10102 Bool)) false))))

(declare-fun bm!430694 () Bool)

(declare-fun call!430699 () (InoxSet Context!10102))

(assert (=> bm!430694 (= call!430699 (derivationStepZipperDown!1009 (h!69624 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))))) (Context!10103 (t!376608 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))))))) (h!69626 s!2326)))))

(declare-fun b!5676311 () Bool)

(declare-fun e!3493881 () Bool)

(assert (=> b!5676311 (= e!3493881 (nullable!5699 (h!69624 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))))))))))

(declare-fun b!5676312 () Bool)

(declare-fun e!3493880 () (InoxSet Context!10102))

(assert (=> b!5676312 (= e!3493880 e!3493879)))

(declare-fun c!998617 () Bool)

(assert (=> b!5676312 (= c!998617 ((_ is Cons!63176) (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))))))))

(declare-fun d!1791593 () Bool)

(declare-fun c!998616 () Bool)

(assert (=> d!1791593 (= c!998616 e!3493881)))

(declare-fun res!2398778 () Bool)

(assert (=> d!1791593 (=> (not res!2398778) (not e!3493881))))

(assert (=> d!1791593 (= res!2398778 ((_ is Cons!63176) (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))))))))

(assert (=> d!1791593 (= (derivationStepZipperUp!935 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (h!69626 s!2326)) e!3493880)))

(declare-fun b!5676313 () Bool)

(assert (=> b!5676313 (= e!3493879 call!430699)))

(declare-fun b!5676314 () Bool)

(assert (=> b!5676314 (= e!3493880 ((_ map or) call!430699 (derivationStepZipperUp!935 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))))))) (h!69626 s!2326))))))

(assert (= (and d!1791593 res!2398778) b!5676311))

(assert (= (and d!1791593 c!998616) b!5676314))

(assert (= (and d!1791593 (not c!998616)) b!5676312))

(assert (= (and b!5676312 c!998617) b!5676313))

(assert (= (and b!5676312 (not c!998617)) b!5676310))

(assert (= (or b!5676314 b!5676313) bm!430694))

(declare-fun m!6636822 () Bool)

(assert (=> bm!430694 m!6636822))

(declare-fun m!6636824 () Bool)

(assert (=> b!5676311 m!6636824))

(declare-fun m!6636826 () Bool)

(assert (=> b!5676314 m!6636826))

(assert (=> b!5676188 d!1791593))

(declare-fun d!1791595 () Bool)

(declare-fun res!2398783 () Bool)

(declare-fun e!3493886 () Bool)

(assert (=> d!1791595 (=> res!2398783 e!3493886)))

(assert (=> d!1791595 (= res!2398783 ((_ is Nil!63176) lt!2269596))))

(assert (=> d!1791595 (= (forall!14815 lt!2269596 lambda!305727) e!3493886)))

(declare-fun b!5676319 () Bool)

(declare-fun e!3493887 () Bool)

(assert (=> b!5676319 (= e!3493886 e!3493887)))

(declare-fun res!2398784 () Bool)

(assert (=> b!5676319 (=> (not res!2398784) (not e!3493887))))

(declare-fun dynLambda!24723 (Int Regex!15667) Bool)

(assert (=> b!5676319 (= res!2398784 (dynLambda!24723 lambda!305727 (h!69624 lt!2269596)))))

(declare-fun b!5676320 () Bool)

(assert (=> b!5676320 (= e!3493887 (forall!14815 (t!376608 lt!2269596) lambda!305727))))

(assert (= (and d!1791595 (not res!2398783)) b!5676319))

(assert (= (and b!5676319 res!2398784) b!5676320))

(declare-fun b_lambda!214647 () Bool)

(assert (=> (not b_lambda!214647) (not b!5676319)))

(declare-fun m!6636828 () Bool)

(assert (=> b!5676319 m!6636828))

(declare-fun m!6636830 () Bool)

(assert (=> b!5676320 m!6636830))

(assert (=> d!1791469 d!1791595))

(declare-fun d!1791597 () Bool)

(assert (=> d!1791597 (= (Exists!2767 (ite c!998571 lambda!305766 lambda!305767)) (choose!42936 (ite c!998571 lambda!305766 lambda!305767)))))

(declare-fun bs!1323219 () Bool)

(assert (= bs!1323219 d!1791597))

(declare-fun m!6636832 () Bool)

(assert (=> bs!1323219 m!6636832))

(assert (=> bm!430669 d!1791597))

(assert (=> b!5676224 d!1791461))

(declare-fun d!1791599 () Bool)

(declare-fun e!3493892 () Bool)

(assert (=> d!1791599 e!3493892))

(declare-fun res!2398790 () Bool)

(assert (=> d!1791599 (=> (not res!2398790) (not e!3493892))))

(declare-fun lt!2269677 () List!63302)

(declare-fun content!11441 (List!63302) (InoxSet C!31604))

(assert (=> d!1791599 (= res!2398790 (= (content!11441 lt!2269677) ((_ map or) (content!11441 (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178))) (content!11441 (t!376610 s!2326)))))))

(declare-fun e!3493893 () List!63302)

(assert (=> d!1791599 (= lt!2269677 e!3493893)))

(declare-fun c!998620 () Bool)

(assert (=> d!1791599 (= c!998620 ((_ is Nil!63178) (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178))))))

(assert (=> d!1791599 (= (++!13867 (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178)) (t!376610 s!2326)) lt!2269677)))

(declare-fun b!5676330 () Bool)

(assert (=> b!5676330 (= e!3493893 (Cons!63178 (h!69626 (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178))) (++!13867 (t!376610 (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178))) (t!376610 s!2326))))))

(declare-fun b!5676332 () Bool)

(assert (=> b!5676332 (= e!3493892 (or (not (= (t!376610 s!2326) Nil!63178)) (= lt!2269677 (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178)))))))

(declare-fun b!5676331 () Bool)

(declare-fun res!2398789 () Bool)

(assert (=> b!5676331 (=> (not res!2398789) (not e!3493892))))

(declare-fun size!39994 (List!63302) Int)

(assert (=> b!5676331 (= res!2398789 (= (size!39994 lt!2269677) (+ (size!39994 (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178))) (size!39994 (t!376610 s!2326)))))))

(declare-fun b!5676329 () Bool)

(assert (=> b!5676329 (= e!3493893 (t!376610 s!2326))))

(assert (= (and d!1791599 c!998620) b!5676329))

(assert (= (and d!1791599 (not c!998620)) b!5676330))

(assert (= (and d!1791599 res!2398790) b!5676331))

(assert (= (and b!5676331 res!2398789) b!5676332))

(declare-fun m!6636834 () Bool)

(assert (=> d!1791599 m!6636834))

(assert (=> d!1791599 m!6636548))

(declare-fun m!6636836 () Bool)

(assert (=> d!1791599 m!6636836))

(declare-fun m!6636838 () Bool)

(assert (=> d!1791599 m!6636838))

(declare-fun m!6636840 () Bool)

(assert (=> b!5676330 m!6636840))

(declare-fun m!6636842 () Bool)

(assert (=> b!5676331 m!6636842))

(assert (=> b!5676331 m!6636548))

(declare-fun m!6636844 () Bool)

(assert (=> b!5676331 m!6636844))

(declare-fun m!6636846 () Bool)

(assert (=> b!5676331 m!6636846))

(assert (=> b!5675829 d!1791599))

(declare-fun d!1791601 () Bool)

(declare-fun e!3493894 () Bool)

(assert (=> d!1791601 e!3493894))

(declare-fun res!2398792 () Bool)

(assert (=> d!1791601 (=> (not res!2398792) (not e!3493894))))

(declare-fun lt!2269678 () List!63302)

(assert (=> d!1791601 (= res!2398792 (= (content!11441 lt!2269678) ((_ map or) (content!11441 Nil!63178) (content!11441 (Cons!63178 (h!69626 s!2326) Nil!63178)))))))

(declare-fun e!3493895 () List!63302)

(assert (=> d!1791601 (= lt!2269678 e!3493895)))

(declare-fun c!998621 () Bool)

(assert (=> d!1791601 (= c!998621 ((_ is Nil!63178) Nil!63178))))

(assert (=> d!1791601 (= (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178)) lt!2269678)))

(declare-fun b!5676334 () Bool)

(assert (=> b!5676334 (= e!3493895 (Cons!63178 (h!69626 Nil!63178) (++!13867 (t!376610 Nil!63178) (Cons!63178 (h!69626 s!2326) Nil!63178))))))

(declare-fun b!5676336 () Bool)

(assert (=> b!5676336 (= e!3493894 (or (not (= (Cons!63178 (h!69626 s!2326) Nil!63178) Nil!63178)) (= lt!2269678 Nil!63178)))))

(declare-fun b!5676335 () Bool)

(declare-fun res!2398791 () Bool)

(assert (=> b!5676335 (=> (not res!2398791) (not e!3493894))))

(assert (=> b!5676335 (= res!2398791 (= (size!39994 lt!2269678) (+ (size!39994 Nil!63178) (size!39994 (Cons!63178 (h!69626 s!2326) Nil!63178)))))))

(declare-fun b!5676333 () Bool)

(assert (=> b!5676333 (= e!3493895 (Cons!63178 (h!69626 s!2326) Nil!63178))))

(assert (= (and d!1791601 c!998621) b!5676333))

(assert (= (and d!1791601 (not c!998621)) b!5676334))

(assert (= (and d!1791601 res!2398792) b!5676335))

(assert (= (and b!5676335 res!2398791) b!5676336))

(declare-fun m!6636848 () Bool)

(assert (=> d!1791601 m!6636848))

(declare-fun m!6636850 () Bool)

(assert (=> d!1791601 m!6636850))

(declare-fun m!6636852 () Bool)

(assert (=> d!1791601 m!6636852))

(declare-fun m!6636854 () Bool)

(assert (=> b!5676334 m!6636854))

(declare-fun m!6636856 () Bool)

(assert (=> b!5676335 m!6636856))

(declare-fun m!6636858 () Bool)

(assert (=> b!5676335 m!6636858))

(declare-fun m!6636860 () Bool)

(assert (=> b!5676335 m!6636860))

(assert (=> b!5675829 d!1791601))

(declare-fun d!1791603 () Bool)

(assert (=> d!1791603 (= (++!13867 (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178)) (t!376610 s!2326)) s!2326)))

(declare-fun lt!2269681 () Unit!156200)

(declare-fun choose!42945 (List!63302 C!31604 List!63302 List!63302) Unit!156200)

(assert (=> d!1791603 (= lt!2269681 (choose!42945 Nil!63178 (h!69626 s!2326) (t!376610 s!2326) s!2326))))

(assert (=> d!1791603 (= (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) (t!376610 s!2326))) s!2326)))

(assert (=> d!1791603 (= (lemmaMoveElementToOtherListKeepsConcatEq!2036 Nil!63178 (h!69626 s!2326) (t!376610 s!2326) s!2326) lt!2269681)))

(declare-fun bs!1323220 () Bool)

(assert (= bs!1323220 d!1791603))

(assert (=> bs!1323220 m!6636548))

(assert (=> bs!1323220 m!6636548))

(assert (=> bs!1323220 m!6636550))

(declare-fun m!6636862 () Bool)

(assert (=> bs!1323220 m!6636862))

(declare-fun m!6636864 () Bool)

(assert (=> bs!1323220 m!6636864))

(assert (=> b!5675829 d!1791603))

(declare-fun b!5676337 () Bool)

(declare-fun res!2398797 () Bool)

(declare-fun e!3493897 () Bool)

(assert (=> b!5676337 (=> (not res!2398797) (not e!3493897))))

(declare-fun lt!2269683 () Option!15676)

(assert (=> b!5676337 (= res!2398797 (matchR!7852 (regOne!31846 r!7292) (_1!36067 (get!21768 lt!2269683))))))

(declare-fun b!5676338 () Bool)

(declare-fun e!3493898 () Bool)

(assert (=> b!5676338 (= e!3493898 (matchR!7852 (regTwo!31846 r!7292) (t!376610 s!2326)))))

(declare-fun b!5676339 () Bool)

(declare-fun e!3493899 () Option!15676)

(declare-fun e!3493896 () Option!15676)

(assert (=> b!5676339 (= e!3493899 e!3493896)))

(declare-fun c!998622 () Bool)

(assert (=> b!5676339 (= c!998622 ((_ is Nil!63178) (t!376610 s!2326)))))

(declare-fun b!5676340 () Bool)

(assert (=> b!5676340 (= e!3493897 (= (++!13867 (_1!36067 (get!21768 lt!2269683)) (_2!36067 (get!21768 lt!2269683))) s!2326))))

(declare-fun b!5676341 () Bool)

(declare-fun lt!2269682 () Unit!156200)

(declare-fun lt!2269684 () Unit!156200)

(assert (=> b!5676341 (= lt!2269682 lt!2269684)))

(assert (=> b!5676341 (= (++!13867 (++!13867 (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178)) (Cons!63178 (h!69626 (t!376610 s!2326)) Nil!63178)) (t!376610 (t!376610 s!2326))) s!2326)))

(assert (=> b!5676341 (= lt!2269684 (lemmaMoveElementToOtherListKeepsConcatEq!2036 (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178)) (h!69626 (t!376610 s!2326)) (t!376610 (t!376610 s!2326)) s!2326))))

(assert (=> b!5676341 (= e!3493896 (findConcatSeparation!2090 (regOne!31846 r!7292) (regTwo!31846 r!7292) (++!13867 (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178)) (Cons!63178 (h!69626 (t!376610 s!2326)) Nil!63178)) (t!376610 (t!376610 s!2326)) s!2326))))

(declare-fun b!5676342 () Bool)

(declare-fun res!2398795 () Bool)

(assert (=> b!5676342 (=> (not res!2398795) (not e!3493897))))

(assert (=> b!5676342 (= res!2398795 (matchR!7852 (regTwo!31846 r!7292) (_2!36067 (get!21768 lt!2269683))))))

(declare-fun d!1791605 () Bool)

(declare-fun e!3493900 () Bool)

(assert (=> d!1791605 e!3493900))

(declare-fun res!2398794 () Bool)

(assert (=> d!1791605 (=> res!2398794 e!3493900)))

(assert (=> d!1791605 (= res!2398794 e!3493897)))

(declare-fun res!2398796 () Bool)

(assert (=> d!1791605 (=> (not res!2398796) (not e!3493897))))

(assert (=> d!1791605 (= res!2398796 (isDefined!12379 lt!2269683))))

(assert (=> d!1791605 (= lt!2269683 e!3493899)))

(declare-fun c!998623 () Bool)

(assert (=> d!1791605 (= c!998623 e!3493898)))

(declare-fun res!2398793 () Bool)

(assert (=> d!1791605 (=> (not res!2398793) (not e!3493898))))

(assert (=> d!1791605 (= res!2398793 (matchR!7852 (regOne!31846 r!7292) (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178))))))

(assert (=> d!1791605 (validRegex!7403 (regOne!31846 r!7292))))

(assert (=> d!1791605 (= (findConcatSeparation!2090 (regOne!31846 r!7292) (regTwo!31846 r!7292) (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178)) (t!376610 s!2326) s!2326) lt!2269683)))

(declare-fun b!5676343 () Bool)

(assert (=> b!5676343 (= e!3493896 None!15675)))

(declare-fun b!5676344 () Bool)

(assert (=> b!5676344 (= e!3493900 (not (isDefined!12379 lt!2269683)))))

(declare-fun b!5676345 () Bool)

(assert (=> b!5676345 (= e!3493899 (Some!15675 (tuple2!65529 (++!13867 Nil!63178 (Cons!63178 (h!69626 s!2326) Nil!63178)) (t!376610 s!2326))))))

(assert (= (and d!1791605 res!2398793) b!5676338))

(assert (= (and d!1791605 c!998623) b!5676345))

(assert (= (and d!1791605 (not c!998623)) b!5676339))

(assert (= (and b!5676339 c!998622) b!5676343))

(assert (= (and b!5676339 (not c!998622)) b!5676341))

(assert (= (and d!1791605 res!2398796) b!5676337))

(assert (= (and b!5676337 res!2398797) b!5676342))

(assert (= (and b!5676342 res!2398795) b!5676340))

(assert (= (and d!1791605 (not res!2398794)) b!5676344))

(declare-fun m!6636866 () Bool)

(assert (=> b!5676337 m!6636866))

(declare-fun m!6636868 () Bool)

(assert (=> b!5676337 m!6636868))

(declare-fun m!6636870 () Bool)

(assert (=> b!5676338 m!6636870))

(assert (=> b!5676342 m!6636866))

(declare-fun m!6636872 () Bool)

(assert (=> b!5676342 m!6636872))

(declare-fun m!6636874 () Bool)

(assert (=> d!1791605 m!6636874))

(assert (=> d!1791605 m!6636548))

(declare-fun m!6636876 () Bool)

(assert (=> d!1791605 m!6636876))

(assert (=> d!1791605 m!6636546))

(assert (=> b!5676341 m!6636548))

(declare-fun m!6636878 () Bool)

(assert (=> b!5676341 m!6636878))

(assert (=> b!5676341 m!6636878))

(declare-fun m!6636880 () Bool)

(assert (=> b!5676341 m!6636880))

(assert (=> b!5676341 m!6636548))

(declare-fun m!6636882 () Bool)

(assert (=> b!5676341 m!6636882))

(assert (=> b!5676341 m!6636878))

(declare-fun m!6636884 () Bool)

(assert (=> b!5676341 m!6636884))

(assert (=> b!5676340 m!6636866))

(declare-fun m!6636886 () Bool)

(assert (=> b!5676340 m!6636886))

(assert (=> b!5676344 m!6636874))

(assert (=> b!5675829 d!1791605))

(declare-fun bs!1323221 () Bool)

(declare-fun d!1791611 () Bool)

(assert (= bs!1323221 (and d!1791611 d!1791573)))

(declare-fun lambda!305773 () Int)

(assert (=> bs!1323221 (= lambda!305773 lambda!305768)))

(declare-fun bs!1323223 () Bool)

(assert (= bs!1323223 (and d!1791611 d!1791469)))

(assert (=> bs!1323223 (= lambda!305773 lambda!305727)))

(declare-fun bs!1323224 () Bool)

(assert (= bs!1323224 (and d!1791611 d!1791575)))

(assert (=> bs!1323224 (= lambda!305773 lambda!305771)))

(declare-fun bs!1323226 () Bool)

(assert (= bs!1323226 (and d!1791611 d!1791463)))

(assert (=> bs!1323226 (= lambda!305773 lambda!305722)))

(declare-fun bs!1323227 () Bool)

(assert (= bs!1323227 (and d!1791611 d!1791547)))

(assert (=> bs!1323227 (= lambda!305773 lambda!305761)))

(assert (=> d!1791611 (= (inv!82414 (h!69625 (t!376609 zl!343))) (forall!14815 (exprs!5551 (h!69625 (t!376609 zl!343))) lambda!305773))))

(declare-fun bs!1323229 () Bool)

(assert (= bs!1323229 d!1791611))

(declare-fun m!6636888 () Bool)

(assert (=> bs!1323229 m!6636888))

(assert (=> b!5676284 d!1791611))

(declare-fun b!5676346 () Bool)

(declare-fun e!3493901 () (InoxSet Context!10102))

(assert (=> b!5676346 (= e!3493901 (store ((as const (Array Context!10102 Bool)) false) (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) true))))

(declare-fun bm!430695 () Bool)

(declare-fun call!430702 () (InoxSet Context!10102))

(declare-fun call!430700 () (InoxSet Context!10102))

(assert (=> bm!430695 (= call!430702 call!430700)))

(declare-fun b!5676347 () Bool)

(declare-fun e!3493903 () (InoxSet Context!10102))

(declare-fun call!430703 () (InoxSet Context!10102))

(declare-fun call!430704 () (InoxSet Context!10102))

(assert (=> b!5676347 (= e!3493903 ((_ map or) call!430703 call!430704))))

(declare-fun b!5676348 () Bool)

(declare-fun e!3493906 () Bool)

(assert (=> b!5676348 (= e!3493906 (nullable!5699 (regOne!31846 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))))))))

(declare-fun call!430705 () List!63300)

(declare-fun bm!430696 () Bool)

(declare-fun c!998627 () Bool)

(assert (=> bm!430696 (= call!430703 (derivationStepZipperDown!1009 (ite c!998627 (regOne!31847 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (regOne!31846 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))))) (ite c!998627 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (Context!10103 call!430705)) (h!69626 s!2326)))))

(declare-fun bm!430697 () Bool)

(declare-fun call!430701 () List!63300)

(assert (=> bm!430697 (= call!430701 call!430705)))

(declare-fun b!5676349 () Bool)

(declare-fun e!3493902 () (InoxSet Context!10102))

(assert (=> b!5676349 (= e!3493902 ((_ map or) call!430703 call!430700))))

(declare-fun b!5676350 () Bool)

(declare-fun c!998628 () Bool)

(assert (=> b!5676350 (= c!998628 e!3493906)))

(declare-fun res!2398798 () Bool)

(assert (=> b!5676350 (=> (not res!2398798) (not e!3493906))))

(assert (=> b!5676350 (= res!2398798 ((_ is Concat!24512) (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))))))

(assert (=> b!5676350 (= e!3493903 e!3493902)))

(declare-fun bm!430698 () Bool)

(assert (=> bm!430698 (= call!430700 call!430704)))

(declare-fun b!5676352 () Bool)

(assert (=> b!5676352 (= e!3493901 e!3493903)))

(assert (=> b!5676352 (= c!998627 ((_ is Union!15667) (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))))))

(declare-fun b!5676353 () Bool)

(declare-fun e!3493904 () (InoxSet Context!10102))

(assert (=> b!5676353 (= e!3493904 ((as const (Array Context!10102 Bool)) false))))

(declare-fun b!5676354 () Bool)

(assert (=> b!5676354 (= e!3493904 call!430702)))

(declare-fun c!998625 () Bool)

(declare-fun bm!430699 () Bool)

(assert (=> bm!430699 (= call!430705 ($colon$colon!1700 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))))) (ite (or c!998628 c!998625) (regTwo!31846 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))))))))

(declare-fun d!1791613 () Bool)

(declare-fun c!998626 () Bool)

(assert (=> d!1791613 (= c!998626 (and ((_ is ElementMatch!15667) (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (= (c!998425 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (h!69626 s!2326))))))

(assert (=> d!1791613 (= (derivationStepZipperDown!1009 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))) (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (h!69626 s!2326)) e!3493901)))

(declare-fun b!5676351 () Bool)

(declare-fun e!3493905 () (InoxSet Context!10102))

(assert (=> b!5676351 (= e!3493905 call!430702)))

(declare-fun b!5676355 () Bool)

(assert (=> b!5676355 (= e!3493902 e!3493905)))

(assert (=> b!5676355 (= c!998625 ((_ is Concat!24512) (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))))))

(declare-fun bm!430700 () Bool)

(assert (=> bm!430700 (= call!430704 (derivationStepZipperDown!1009 (ite c!998627 (regTwo!31847 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (ite c!998628 (regTwo!31846 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (ite c!998625 (regOne!31846 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (reg!15996 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))))))) (ite (or c!998627 c!998628) (Context!10103 (t!376608 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (Context!10103 call!430701)) (h!69626 s!2326)))))

(declare-fun b!5676356 () Bool)

(declare-fun c!998624 () Bool)

(assert (=> b!5676356 (= c!998624 ((_ is Star!15667) (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))))))

(assert (=> b!5676356 (= e!3493905 e!3493904)))

(assert (= (and d!1791613 c!998626) b!5676346))

(assert (= (and d!1791613 (not c!998626)) b!5676352))

(assert (= (and b!5676352 c!998627) b!5676347))

(assert (= (and b!5676352 (not c!998627)) b!5676350))

(assert (= (and b!5676350 res!2398798) b!5676348))

(assert (= (and b!5676350 c!998628) b!5676349))

(assert (= (and b!5676350 (not c!998628)) b!5676355))

(assert (= (and b!5676355 c!998625) b!5676351))

(assert (= (and b!5676355 (not c!998625)) b!5676356))

(assert (= (and b!5676356 c!998624) b!5676354))

(assert (= (and b!5676356 (not c!998624)) b!5676353))

(assert (= (or b!5676351 b!5676354) bm!430697))

(assert (= (or b!5676351 b!5676354) bm!430695))

(assert (= (or b!5676349 bm!430697) bm!430699))

(assert (= (or b!5676349 bm!430695) bm!430698))

(assert (= (or b!5676347 bm!430698) bm!430700))

(assert (= (or b!5676347 b!5676349) bm!430696))

(declare-fun m!6636892 () Bool)

(assert (=> b!5676348 m!6636892))

(declare-fun m!6636894 () Bool)

(assert (=> b!5676346 m!6636894))

(declare-fun m!6636896 () Bool)

(assert (=> bm!430699 m!6636896))

(declare-fun m!6636898 () Bool)

(assert (=> bm!430696 m!6636898))

(declare-fun m!6636900 () Bool)

(assert (=> bm!430700 m!6636900))

(assert (=> bm!430684 d!1791613))

(declare-fun b!5676366 () Bool)

(declare-fun e!3493914 () (InoxSet Context!10102))

(assert (=> b!5676366 (= e!3493914 (store ((as const (Array Context!10102 Bool)) false) (ite (or c!998584 c!998585) lt!2269587 (Context!10103 call!430680)) true))))

(declare-fun bm!430704 () Bool)

(declare-fun call!430711 () (InoxSet Context!10102))

(declare-fun call!430709 () (InoxSet Context!10102))

(assert (=> bm!430704 (= call!430711 call!430709)))

(declare-fun b!5676367 () Bool)

(declare-fun e!3493916 () (InoxSet Context!10102))

(declare-fun call!430712 () (InoxSet Context!10102))

(declare-fun call!430713 () (InoxSet Context!10102))

(assert (=> b!5676367 (= e!3493916 ((_ map or) call!430712 call!430713))))

(declare-fun e!3493919 () Bool)

(declare-fun b!5676368 () Bool)

(assert (=> b!5676368 (= e!3493919 (nullable!5699 (regOne!31846 (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343))))))))))))

(declare-fun bm!430705 () Bool)

(declare-fun call!430714 () List!63300)

(declare-fun c!998634 () Bool)

(assert (=> bm!430705 (= call!430712 (derivationStepZipperDown!1009 (ite c!998634 (regOne!31847 (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343)))))))) (regOne!31846 (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343))))))))) (ite c!998634 (ite (or c!998584 c!998585) lt!2269587 (Context!10103 call!430680)) (Context!10103 call!430714)) (h!69626 s!2326)))))

(declare-fun bm!430706 () Bool)

(declare-fun call!430710 () List!63300)

(assert (=> bm!430706 (= call!430710 call!430714)))

(declare-fun b!5676369 () Bool)

(declare-fun e!3493915 () (InoxSet Context!10102))

(assert (=> b!5676369 (= e!3493915 ((_ map or) call!430712 call!430709))))

(declare-fun b!5676370 () Bool)

(declare-fun c!998635 () Bool)

(assert (=> b!5676370 (= c!998635 e!3493919)))

(declare-fun res!2398804 () Bool)

(assert (=> b!5676370 (=> (not res!2398804) (not e!3493919))))

(assert (=> b!5676370 (= res!2398804 ((_ is Concat!24512) (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343)))))))))))

(assert (=> b!5676370 (= e!3493916 e!3493915)))

(declare-fun bm!430707 () Bool)

(assert (=> bm!430707 (= call!430709 call!430713)))

(declare-fun b!5676372 () Bool)

(assert (=> b!5676372 (= e!3493914 e!3493916)))

(assert (=> b!5676372 (= c!998634 ((_ is Union!15667) (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343)))))))))))

(declare-fun b!5676373 () Bool)

(declare-fun e!3493917 () (InoxSet Context!10102))

(assert (=> b!5676373 (= e!3493917 ((as const (Array Context!10102 Bool)) false))))

(declare-fun b!5676374 () Bool)

(assert (=> b!5676374 (= e!3493917 call!430711)))

(declare-fun bm!430708 () Bool)

(declare-fun c!998632 () Bool)

(assert (=> bm!430708 (= call!430714 ($colon$colon!1700 (exprs!5551 (ite (or c!998584 c!998585) lt!2269587 (Context!10103 call!430680))) (ite (or c!998635 c!998632) (regTwo!31846 (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343)))))))) (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343))))))))))))

(declare-fun c!998633 () Bool)

(declare-fun d!1791617 () Bool)

(assert (=> d!1791617 (= c!998633 (and ((_ is ElementMatch!15667) (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343)))))))) (= (c!998425 (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343)))))))) (h!69626 s!2326))))))

(assert (=> d!1791617 (= (derivationStepZipperDown!1009 (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343))))))) (ite (or c!998584 c!998585) lt!2269587 (Context!10103 call!430680)) (h!69626 s!2326)) e!3493914)))

(declare-fun b!5676371 () Bool)

(declare-fun e!3493918 () (InoxSet Context!10102))

(assert (=> b!5676371 (= e!3493918 call!430711)))

(declare-fun b!5676375 () Bool)

(assert (=> b!5676375 (= e!3493915 e!3493918)))

(assert (=> b!5676375 (= c!998632 ((_ is Concat!24512) (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343)))))))))))

(declare-fun bm!430709 () Bool)

(assert (=> bm!430709 (= call!430713 (derivationStepZipperDown!1009 (ite c!998634 (regTwo!31847 (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343)))))))) (ite c!998635 (regTwo!31846 (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343)))))))) (ite c!998632 (regOne!31846 (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343)))))))) (reg!15996 (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343))))))))))) (ite (or c!998634 c!998635) (ite (or c!998584 c!998585) lt!2269587 (Context!10103 call!430680)) (Context!10103 call!430710)) (h!69626 s!2326)))))

(declare-fun b!5676376 () Bool)

(declare-fun c!998631 () Bool)

(assert (=> b!5676376 (= c!998631 ((_ is Star!15667) (ite c!998584 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998585 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998582 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343)))))))))))

(assert (=> b!5676376 (= e!3493918 e!3493917)))

(assert (= (and d!1791617 c!998633) b!5676366))

(assert (= (and d!1791617 (not c!998633)) b!5676372))

(assert (= (and b!5676372 c!998634) b!5676367))

(assert (= (and b!5676372 (not c!998634)) b!5676370))

(assert (= (and b!5676370 res!2398804) b!5676368))

(assert (= (and b!5676370 c!998635) b!5676369))

(assert (= (and b!5676370 (not c!998635)) b!5676375))

(assert (= (and b!5676375 c!998632) b!5676371))

(assert (= (and b!5676375 (not c!998632)) b!5676376))

(assert (= (and b!5676376 c!998631) b!5676374))

(assert (= (and b!5676376 (not c!998631)) b!5676373))

(assert (= (or b!5676371 b!5676374) bm!430706))

(assert (= (or b!5676371 b!5676374) bm!430704))

(assert (= (or b!5676369 bm!430706) bm!430708))

(assert (= (or b!5676369 bm!430704) bm!430707))

(assert (= (or b!5676367 bm!430707) bm!430709))

(assert (= (or b!5676367 b!5676369) bm!430705))

(declare-fun m!6636908 () Bool)

(assert (=> b!5676368 m!6636908))

(declare-fun m!6636910 () Bool)

(assert (=> b!5676366 m!6636910))

(declare-fun m!6636912 () Bool)

(assert (=> bm!430708 m!6636912))

(declare-fun m!6636914 () Bool)

(assert (=> bm!430705 m!6636914))

(declare-fun m!6636916 () Bool)

(assert (=> bm!430709 m!6636916))

(assert (=> bm!430679 d!1791617))

(declare-fun d!1791621 () Bool)

(declare-fun lambda!305776 () Int)

(declare-fun exists!2205 ((InoxSet Context!10102) Int) Bool)

(assert (=> d!1791621 (= (nullableZipper!1633 ((_ map or) lt!2269582 lt!2269585)) (exists!2205 ((_ map or) lt!2269582 lt!2269585) lambda!305776))))

(declare-fun bs!1323233 () Bool)

(assert (= bs!1323233 d!1791621))

(declare-fun m!6636928 () Bool)

(assert (=> bs!1323233 m!6636928))

(assert (=> b!5676227 d!1791621))

(declare-fun e!3493926 () (InoxSet Context!10102))

(declare-fun b!5676388 () Bool)

(assert (=> b!5676388 (= e!3493926 (store ((as const (Array Context!10102 Bool)) false) (ite c!998584 lt!2269587 (Context!10103 call!430684)) true))))

(declare-fun bm!430716 () Bool)

(declare-fun call!430723 () (InoxSet Context!10102))

(declare-fun call!430721 () (InoxSet Context!10102))

(assert (=> bm!430716 (= call!430723 call!430721)))

(declare-fun b!5676389 () Bool)

(declare-fun e!3493928 () (InoxSet Context!10102))

(declare-fun call!430724 () (InoxSet Context!10102))

(declare-fun call!430725 () (InoxSet Context!10102))

(assert (=> b!5676389 (= e!3493928 ((_ map or) call!430724 call!430725))))

(declare-fun b!5676390 () Bool)

(declare-fun e!3493931 () Bool)

(assert (=> b!5676390 (= e!3493931 (nullable!5699 (regOne!31846 (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343))))))))))

(declare-fun bm!430717 () Bool)

(declare-fun c!998646 () Bool)

(declare-fun call!430726 () List!63300)

(assert (=> bm!430717 (= call!430724 (derivationStepZipperDown!1009 (ite c!998646 (regOne!31847 (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))) (regOne!31846 (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343))))))) (ite c!998646 (ite c!998584 lt!2269587 (Context!10103 call!430684)) (Context!10103 call!430726)) (h!69626 s!2326)))))

(declare-fun bm!430718 () Bool)

(declare-fun call!430722 () List!63300)

(assert (=> bm!430718 (= call!430722 call!430726)))

(declare-fun b!5676391 () Bool)

(declare-fun e!3493927 () (InoxSet Context!10102))

(assert (=> b!5676391 (= e!3493927 ((_ map or) call!430724 call!430721))))

(declare-fun b!5676392 () Bool)

(declare-fun c!998647 () Bool)

(assert (=> b!5676392 (= c!998647 e!3493931)))

(declare-fun res!2398806 () Bool)

(assert (=> b!5676392 (=> (not res!2398806) (not e!3493931))))

(assert (=> b!5676392 (= res!2398806 ((_ is Concat!24512) (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))))))

(assert (=> b!5676392 (= e!3493928 e!3493927)))

(declare-fun bm!430719 () Bool)

(assert (=> bm!430719 (= call!430721 call!430725)))

(declare-fun b!5676394 () Bool)

(assert (=> b!5676394 (= e!3493926 e!3493928)))

(assert (=> b!5676394 (= c!998646 ((_ is Union!15667) (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))))))

(declare-fun b!5676395 () Bool)

(declare-fun e!3493929 () (InoxSet Context!10102))

(assert (=> b!5676395 (= e!3493929 ((as const (Array Context!10102 Bool)) false))))

(declare-fun b!5676396 () Bool)

(assert (=> b!5676396 (= e!3493929 call!430723)))

(declare-fun bm!430720 () Bool)

(declare-fun c!998644 () Bool)

(assert (=> bm!430720 (= call!430726 ($colon$colon!1700 (exprs!5551 (ite c!998584 lt!2269587 (Context!10103 call!430684))) (ite (or c!998647 c!998644) (regTwo!31846 (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))) (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343))))))))))

(declare-fun d!1791625 () Bool)

(declare-fun c!998645 () Bool)

(assert (=> d!1791625 (= c!998645 (and ((_ is ElementMatch!15667) (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))) (= (c!998425 (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))) (h!69626 s!2326))))))

(assert (=> d!1791625 (= (derivationStepZipperDown!1009 (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343))))) (ite c!998584 lt!2269587 (Context!10103 call!430684)) (h!69626 s!2326)) e!3493926)))

(declare-fun b!5676393 () Bool)

(declare-fun e!3493930 () (InoxSet Context!10102))

(assert (=> b!5676393 (= e!3493930 call!430723)))

(declare-fun b!5676397 () Bool)

(assert (=> b!5676397 (= e!3493927 e!3493930)))

(assert (=> b!5676397 (= c!998644 ((_ is Concat!24512) (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))))))

(declare-fun bm!430721 () Bool)

(assert (=> bm!430721 (= call!430725 (derivationStepZipperDown!1009 (ite c!998646 (regTwo!31847 (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))) (ite c!998647 (regTwo!31846 (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))) (ite c!998644 (regOne!31846 (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))) (reg!15996 (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343))))))))) (ite (or c!998646 c!998647) (ite c!998584 lt!2269587 (Context!10103 call!430684)) (Context!10103 call!430722)) (h!69626 s!2326)))))

(declare-fun b!5676398 () Bool)

(declare-fun c!998643 () Bool)

(assert (=> b!5676398 (= c!998643 ((_ is Star!15667) (ite c!998584 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))))))

(assert (=> b!5676398 (= e!3493930 e!3493929)))

(assert (= (and d!1791625 c!998645) b!5676388))

(assert (= (and d!1791625 (not c!998645)) b!5676394))

(assert (= (and b!5676394 c!998646) b!5676389))

(assert (= (and b!5676394 (not c!998646)) b!5676392))

(assert (= (and b!5676392 res!2398806) b!5676390))

(assert (= (and b!5676392 c!998647) b!5676391))

(assert (= (and b!5676392 (not c!998647)) b!5676397))

(assert (= (and b!5676397 c!998644) b!5676393))

(assert (= (and b!5676397 (not c!998644)) b!5676398))

(assert (= (and b!5676398 c!998643) b!5676396))

(assert (= (and b!5676398 (not c!998643)) b!5676395))

(assert (= (or b!5676393 b!5676396) bm!430718))

(assert (= (or b!5676393 b!5676396) bm!430716))

(assert (= (or b!5676391 bm!430718) bm!430720))

(assert (= (or b!5676391 bm!430716) bm!430719))

(assert (= (or b!5676389 bm!430719) bm!430721))

(assert (= (or b!5676389 b!5676391) bm!430717))

(declare-fun m!6636930 () Bool)

(assert (=> b!5676390 m!6636930))

(declare-fun m!6636932 () Bool)

(assert (=> b!5676388 m!6636932))

(declare-fun m!6636934 () Bool)

(assert (=> bm!430720 m!6636934))

(declare-fun m!6636936 () Bool)

(assert (=> bm!430717 m!6636936))

(declare-fun m!6636938 () Bool)

(assert (=> bm!430721 m!6636938))

(assert (=> bm!430675 d!1791625))

(declare-fun d!1791629 () Bool)

(declare-fun c!998655 () Bool)

(assert (=> d!1791629 (= c!998655 ((_ is Nil!63177) lt!2269668))))

(declare-fun e!3493940 () (InoxSet Context!10102))

(assert (=> d!1791629 (= (content!11440 lt!2269668) e!3493940)))

(declare-fun b!5676414 () Bool)

(assert (=> b!5676414 (= e!3493940 ((as const (Array Context!10102 Bool)) false))))

(declare-fun b!5676415 () Bool)

(assert (=> b!5676415 (= e!3493940 ((_ map or) (store ((as const (Array Context!10102 Bool)) false) (h!69625 lt!2269668) true) (content!11440 (t!376609 lt!2269668))))))

(assert (= (and d!1791629 c!998655) b!5676414))

(assert (= (and d!1791629 (not c!998655)) b!5676415))

(declare-fun m!6636946 () Bool)

(assert (=> b!5676415 m!6636946))

(declare-fun m!6636950 () Bool)

(assert (=> b!5676415 m!6636950))

(assert (=> b!5676221 d!1791629))

(assert (=> b!5675687 d!1791575))

(declare-fun bs!1323234 () Bool)

(declare-fun d!1791631 () Bool)

(assert (= bs!1323234 (and d!1791631 d!1791573)))

(declare-fun lambda!305777 () Int)

(assert (=> bs!1323234 (= lambda!305777 lambda!305768)))

(declare-fun bs!1323235 () Bool)

(assert (= bs!1323235 (and d!1791631 d!1791469)))

(assert (=> bs!1323235 (= lambda!305777 lambda!305727)))

(declare-fun bs!1323236 () Bool)

(assert (= bs!1323236 (and d!1791631 d!1791575)))

(assert (=> bs!1323236 (= lambda!305777 lambda!305771)))

(declare-fun bs!1323237 () Bool)

(assert (= bs!1323237 (and d!1791631 d!1791611)))

(assert (=> bs!1323237 (= lambda!305777 lambda!305773)))

(declare-fun bs!1323238 () Bool)

(assert (= bs!1323238 (and d!1791631 d!1791463)))

(assert (=> bs!1323238 (= lambda!305777 lambda!305722)))

(declare-fun bs!1323240 () Bool)

(assert (= bs!1323240 (and d!1791631 d!1791547)))

(assert (=> bs!1323240 (= lambda!305777 lambda!305761)))

(declare-fun lt!2269685 () List!63300)

(assert (=> d!1791631 (forall!14815 lt!2269685 lambda!305777)))

(declare-fun e!3493941 () List!63300)

(assert (=> d!1791631 (= lt!2269685 e!3493941)))

(declare-fun c!998656 () Bool)

(assert (=> d!1791631 (= c!998656 ((_ is Cons!63177) (t!376609 zl!343)))))

(assert (=> d!1791631 (= (unfocusZipperList!1095 (t!376609 zl!343)) lt!2269685)))

(declare-fun b!5676416 () Bool)

(assert (=> b!5676416 (= e!3493941 (Cons!63176 (generalisedConcat!1282 (exprs!5551 (h!69625 (t!376609 zl!343)))) (unfocusZipperList!1095 (t!376609 (t!376609 zl!343)))))))

(declare-fun b!5676417 () Bool)

(assert (=> b!5676417 (= e!3493941 Nil!63176)))

(assert (= (and d!1791631 c!998656) b!5676416))

(assert (= (and d!1791631 (not c!998656)) b!5676417))

(declare-fun m!6636954 () Bool)

(assert (=> d!1791631 m!6636954))

(declare-fun m!6636956 () Bool)

(assert (=> b!5676416 m!6636956))

(declare-fun m!6636958 () Bool)

(assert (=> b!5676416 m!6636958))

(assert (=> b!5675687 d!1791631))

(declare-fun d!1791637 () Bool)

(declare-fun res!2398808 () Bool)

(declare-fun e!3493943 () Bool)

(assert (=> d!1791637 (=> res!2398808 e!3493943)))

(assert (=> d!1791637 (= res!2398808 ((_ is Nil!63176) (exprs!5551 setElem!37947)))))

(assert (=> d!1791637 (= (forall!14815 (exprs!5551 setElem!37947) lambda!305761) e!3493943)))

(declare-fun b!5676420 () Bool)

(declare-fun e!3493944 () Bool)

(assert (=> b!5676420 (= e!3493943 e!3493944)))

(declare-fun res!2398809 () Bool)

(assert (=> b!5676420 (=> (not res!2398809) (not e!3493944))))

(assert (=> b!5676420 (= res!2398809 (dynLambda!24723 lambda!305761 (h!69624 (exprs!5551 setElem!37947))))))

(declare-fun b!5676421 () Bool)

(assert (=> b!5676421 (= e!3493944 (forall!14815 (t!376608 (exprs!5551 setElem!37947)) lambda!305761))))

(assert (= (and d!1791637 (not res!2398808)) b!5676420))

(assert (= (and b!5676420 res!2398809) b!5676421))

(declare-fun b_lambda!214649 () Bool)

(assert (=> (not b_lambda!214649) (not b!5676420)))

(declare-fun m!6636960 () Bool)

(assert (=> b!5676420 m!6636960))

(declare-fun m!6636962 () Bool)

(assert (=> b!5676421 m!6636962))

(assert (=> d!1791547 d!1791637))

(declare-fun d!1791639 () Bool)

(assert (=> d!1791639 (= (isConcat!714 lt!2269665) ((_ is Concat!24512) lt!2269665))))

(assert (=> b!5676214 d!1791639))

(declare-fun d!1791641 () Bool)

(assert (=> d!1791641 (= (head!12045 s!2326) (h!69626 s!2326))))

(assert (=> b!5676142 d!1791641))

(declare-fun d!1791645 () Bool)

(assert (=> d!1791645 (= (isEmpty!35028 s!2326) ((_ is Nil!63178) s!2326))))

(assert (=> bm!430670 d!1791645))

(declare-fun bs!1323246 () Bool)

(declare-fun d!1791647 () Bool)

(assert (= bs!1323246 (and d!1791647 d!1791573)))

(declare-fun lambda!305779 () Int)

(assert (=> bs!1323246 (= lambda!305779 lambda!305768)))

(declare-fun bs!1323247 () Bool)

(assert (= bs!1323247 (and d!1791647 d!1791469)))

(assert (=> bs!1323247 (= lambda!305779 lambda!305727)))

(declare-fun bs!1323248 () Bool)

(assert (= bs!1323248 (and d!1791647 d!1791611)))

(assert (=> bs!1323248 (= lambda!305779 lambda!305773)))

(declare-fun bs!1323249 () Bool)

(assert (= bs!1323249 (and d!1791647 d!1791463)))

(assert (=> bs!1323249 (= lambda!305779 lambda!305722)))

(declare-fun bs!1323250 () Bool)

(assert (= bs!1323250 (and d!1791647 d!1791547)))

(assert (=> bs!1323250 (= lambda!305779 lambda!305761)))

(declare-fun bs!1323251 () Bool)

(assert (= bs!1323251 (and d!1791647 d!1791631)))

(assert (=> bs!1323251 (= lambda!305779 lambda!305777)))

(declare-fun bs!1323252 () Bool)

(assert (= bs!1323252 (and d!1791647 d!1791575)))

(assert (=> bs!1323252 (= lambda!305779 lambda!305771)))

(assert (=> d!1791647 (= (inv!82414 setElem!37953) (forall!14815 (exprs!5551 setElem!37953) lambda!305779))))

(declare-fun bs!1323253 () Bool)

(assert (= bs!1323253 d!1791647))

(declare-fun m!6636970 () Bool)

(assert (=> bs!1323253 m!6636970))

(assert (=> setNonEmpty!37953 d!1791647))

(assert (=> b!5676212 d!1791525))

(assert (=> d!1791581 d!1791585))

(assert (=> d!1791581 d!1791583))

(declare-fun d!1791649 () Bool)

(declare-fun e!3493959 () Bool)

(assert (=> d!1791649 (= (matchZipper!1805 ((_ map or) lt!2269582 lt!2269585) (t!376610 s!2326)) e!3493959)))

(declare-fun res!2398815 () Bool)

(assert (=> d!1791649 (=> res!2398815 e!3493959)))

(assert (=> d!1791649 (= res!2398815 (matchZipper!1805 lt!2269582 (t!376610 s!2326)))))

(assert (=> d!1791649 true))

(declare-fun _$48!1308 () Unit!156200)

(assert (=> d!1791649 (= (choose!42944 lt!2269582 lt!2269585 (t!376610 s!2326)) _$48!1308)))

(declare-fun b!5676445 () Bool)

(assert (=> b!5676445 (= e!3493959 (matchZipper!1805 lt!2269585 (t!376610 s!2326)))))

(assert (= (and d!1791649 (not res!2398815)) b!5676445))

(assert (=> d!1791649 m!6636370))

(assert (=> d!1791649 m!6636368))

(assert (=> b!5676445 m!6636404))

(assert (=> d!1791581 d!1791649))

(declare-fun d!1791653 () Bool)

(assert (=> d!1791653 (= (nullable!5699 (regOne!31846 (reg!15996 (regOne!31846 r!7292)))) (nullableFct!1779 (regOne!31846 (reg!15996 (regOne!31846 r!7292)))))))

(declare-fun bs!1323261 () Bool)

(assert (= bs!1323261 d!1791653))

(declare-fun m!6636982 () Bool)

(assert (=> bs!1323261 m!6636982))

(assert (=> b!5676003 d!1791653))

(declare-fun d!1791655 () Bool)

(assert (=> d!1791655 (= (isEmpty!35028 (t!376610 s!2326)) ((_ is Nil!63178) (t!376610 s!2326)))))

(assert (=> d!1791583 d!1791655))

(assert (=> d!1791461 d!1791655))

(declare-fun b!5676446 () Bool)

(declare-fun e!3493963 () Bool)

(declare-fun e!3493961 () Bool)

(assert (=> b!5676446 (= e!3493963 e!3493961)))

(declare-fun c!998667 () Bool)

(assert (=> b!5676446 (= c!998667 ((_ is Union!15667) (ite c!998615 (reg!15996 r!7292) (ite c!998614 (regTwo!31847 r!7292) (regTwo!31846 r!7292)))))))

(declare-fun b!5676447 () Bool)

(declare-fun e!3493960 () Bool)

(declare-fun call!430740 () Bool)

(assert (=> b!5676447 (= e!3493960 call!430740)))

(declare-fun b!5676448 () Bool)

(declare-fun res!2398819 () Bool)

(assert (=> b!5676448 (=> (not res!2398819) (not e!3493960))))

(declare-fun call!430739 () Bool)

(assert (=> b!5676448 (= res!2398819 call!430739)))

(assert (=> b!5676448 (= e!3493961 e!3493960)))

(declare-fun b!5676449 () Bool)

(declare-fun e!3493962 () Bool)

(assert (=> b!5676449 (= e!3493962 call!430740)))

(declare-fun b!5676450 () Bool)

(declare-fun res!2398817 () Bool)

(declare-fun e!3493966 () Bool)

(assert (=> b!5676450 (=> res!2398817 e!3493966)))

(assert (=> b!5676450 (= res!2398817 (not ((_ is Concat!24512) (ite c!998615 (reg!15996 r!7292) (ite c!998614 (regTwo!31847 r!7292) (regTwo!31846 r!7292))))))))

(assert (=> b!5676450 (= e!3493961 e!3493966)))

(declare-fun b!5676451 () Bool)

(declare-fun e!3493964 () Bool)

(declare-fun call!430741 () Bool)

(assert (=> b!5676451 (= e!3493964 call!430741)))

(declare-fun b!5676452 () Bool)

(assert (=> b!5676452 (= e!3493963 e!3493964)))

(declare-fun res!2398816 () Bool)

(assert (=> b!5676452 (= res!2398816 (not (nullable!5699 (reg!15996 (ite c!998615 (reg!15996 r!7292) (ite c!998614 (regTwo!31847 r!7292) (regTwo!31846 r!7292)))))))))

(assert (=> b!5676452 (=> (not res!2398816) (not e!3493964))))

(declare-fun bm!430734 () Bool)

(declare-fun c!998668 () Bool)

(assert (=> bm!430734 (= call!430741 (validRegex!7403 (ite c!998668 (reg!15996 (ite c!998615 (reg!15996 r!7292) (ite c!998614 (regTwo!31847 r!7292) (regTwo!31846 r!7292)))) (ite c!998667 (regTwo!31847 (ite c!998615 (reg!15996 r!7292) (ite c!998614 (regTwo!31847 r!7292) (regTwo!31846 r!7292)))) (regTwo!31846 (ite c!998615 (reg!15996 r!7292) (ite c!998614 (regTwo!31847 r!7292) (regTwo!31846 r!7292))))))))))

(declare-fun d!1791657 () Bool)

(declare-fun res!2398820 () Bool)

(declare-fun e!3493965 () Bool)

(assert (=> d!1791657 (=> res!2398820 e!3493965)))

(assert (=> d!1791657 (= res!2398820 ((_ is ElementMatch!15667) (ite c!998615 (reg!15996 r!7292) (ite c!998614 (regTwo!31847 r!7292) (regTwo!31846 r!7292)))))))

(assert (=> d!1791657 (= (validRegex!7403 (ite c!998615 (reg!15996 r!7292) (ite c!998614 (regTwo!31847 r!7292) (regTwo!31846 r!7292)))) e!3493965)))

(declare-fun bm!430735 () Bool)

(assert (=> bm!430735 (= call!430740 call!430741)))

(declare-fun bm!430736 () Bool)

(assert (=> bm!430736 (= call!430739 (validRegex!7403 (ite c!998667 (regOne!31847 (ite c!998615 (reg!15996 r!7292) (ite c!998614 (regTwo!31847 r!7292) (regTwo!31846 r!7292)))) (regOne!31846 (ite c!998615 (reg!15996 r!7292) (ite c!998614 (regTwo!31847 r!7292) (regTwo!31846 r!7292)))))))))

(declare-fun b!5676453 () Bool)

(assert (=> b!5676453 (= e!3493965 e!3493963)))

(assert (=> b!5676453 (= c!998668 ((_ is Star!15667) (ite c!998615 (reg!15996 r!7292) (ite c!998614 (regTwo!31847 r!7292) (regTwo!31846 r!7292)))))))

(declare-fun b!5676454 () Bool)

(assert (=> b!5676454 (= e!3493966 e!3493962)))

(declare-fun res!2398818 () Bool)

(assert (=> b!5676454 (=> (not res!2398818) (not e!3493962))))

(assert (=> b!5676454 (= res!2398818 call!430739)))

(assert (= (and d!1791657 (not res!2398820)) b!5676453))

(assert (= (and b!5676453 c!998668) b!5676452))

(assert (= (and b!5676453 (not c!998668)) b!5676446))

(assert (= (and b!5676452 res!2398816) b!5676451))

(assert (= (and b!5676446 c!998667) b!5676448))

(assert (= (and b!5676446 (not c!998667)) b!5676450))

(assert (= (and b!5676448 res!2398819) b!5676447))

(assert (= (and b!5676450 (not res!2398817)) b!5676454))

(assert (= (and b!5676454 res!2398818) b!5676449))

(assert (= (or b!5676447 b!5676449) bm!430735))

(assert (= (or b!5676448 b!5676454) bm!430736))

(assert (= (or b!5676451 bm!430735) bm!430734))

(declare-fun m!6637002 () Bool)

(assert (=> b!5676452 m!6637002))

(declare-fun m!6637004 () Bool)

(assert (=> bm!430734 m!6637004))

(declare-fun m!6637006 () Bool)

(assert (=> bm!430736 m!6637006))

(assert (=> bm!430691 d!1791657))

(declare-fun d!1791661 () Bool)

(assert (=> d!1791661 (= (isEmptyLang!1201 lt!2269593) ((_ is EmptyLang!15667) lt!2269593))))

(assert (=> b!5675666 d!1791661))

(declare-fun d!1791663 () Bool)

(assert (=> d!1791663 (= (nullable!5699 r!7292) (nullableFct!1779 r!7292))))

(declare-fun bs!1323262 () Bool)

(assert (= bs!1323262 d!1791663))

(declare-fun m!6637008 () Bool)

(assert (=> bs!1323262 m!6637008))

(assert (=> b!5676148 d!1791663))

(declare-fun d!1791665 () Bool)

(assert (=> d!1791665 (= (head!12046 (unfocusZipperList!1095 zl!343)) (h!69624 (unfocusZipperList!1095 zl!343)))))

(assert (=> b!5675664 d!1791665))

(assert (=> d!1791553 d!1791645))

(assert (=> d!1791553 d!1791589))

(declare-fun d!1791667 () Bool)

(declare-fun res!2398822 () Bool)

(declare-fun e!3493973 () Bool)

(assert (=> d!1791667 (=> res!2398822 e!3493973)))

(assert (=> d!1791667 (= res!2398822 ((_ is Nil!63176) (exprs!5551 (h!69625 zl!343))))))

(assert (=> d!1791667 (= (forall!14815 (exprs!5551 (h!69625 zl!343)) lambda!305768) e!3493973)))

(declare-fun b!5676466 () Bool)

(declare-fun e!3493974 () Bool)

(assert (=> b!5676466 (= e!3493973 e!3493974)))

(declare-fun res!2398823 () Bool)

(assert (=> b!5676466 (=> (not res!2398823) (not e!3493974))))

(assert (=> b!5676466 (= res!2398823 (dynLambda!24723 lambda!305768 (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5676467 () Bool)

(assert (=> b!5676467 (= e!3493974 (forall!14815 (t!376608 (exprs!5551 (h!69625 zl!343))) lambda!305768))))

(assert (= (and d!1791667 (not res!2398822)) b!5676466))

(assert (= (and b!5676466 res!2398823) b!5676467))

(declare-fun b_lambda!214651 () Bool)

(assert (=> (not b_lambda!214651) (not b!5676466)))

(declare-fun m!6637010 () Bool)

(assert (=> b!5676466 m!6637010))

(declare-fun m!6637012 () Bool)

(assert (=> b!5676467 m!6637012))

(assert (=> d!1791573 d!1791667))

(declare-fun d!1791669 () Bool)

(assert (=> d!1791669 (= (isEmptyExpr!1191 lt!2269665) ((_ is EmptyExpr!15667) lt!2269665))))

(assert (=> b!5676218 d!1791669))

(declare-fun d!1791671 () Bool)

(declare-fun c!998674 () Bool)

(assert (=> d!1791671 (= c!998674 (isEmpty!35028 (tail!11140 (t!376610 s!2326))))))

(declare-fun e!3493975 () Bool)

(assert (=> d!1791671 (= (matchZipper!1805 (derivationStepZipper!1752 lt!2269585 (head!12045 (t!376610 s!2326))) (tail!11140 (t!376610 s!2326))) e!3493975)))

(declare-fun b!5676468 () Bool)

(assert (=> b!5676468 (= e!3493975 (nullableZipper!1633 (derivationStepZipper!1752 lt!2269585 (head!12045 (t!376610 s!2326)))))))

(declare-fun b!5676469 () Bool)

(assert (=> b!5676469 (= e!3493975 (matchZipper!1805 (derivationStepZipper!1752 (derivationStepZipper!1752 lt!2269585 (head!12045 (t!376610 s!2326))) (head!12045 (tail!11140 (t!376610 s!2326)))) (tail!11140 (tail!11140 (t!376610 s!2326)))))))

(assert (= (and d!1791671 c!998674) b!5676468))

(assert (= (and d!1791671 (not c!998674)) b!5676469))

(assert (=> d!1791671 m!6636430))

(declare-fun m!6637022 () Bool)

(assert (=> d!1791671 m!6637022))

(assert (=> b!5676468 m!6636428))

(declare-fun m!6637026 () Bool)

(assert (=> b!5676468 m!6637026))

(assert (=> b!5676469 m!6636430))

(declare-fun m!6637028 () Bool)

(assert (=> b!5676469 m!6637028))

(assert (=> b!5676469 m!6636428))

(assert (=> b!5676469 m!6637028))

(declare-fun m!6637030 () Bool)

(assert (=> b!5676469 m!6637030))

(assert (=> b!5676469 m!6636430))

(declare-fun m!6637032 () Bool)

(assert (=> b!5676469 m!6637032))

(assert (=> b!5676469 m!6637030))

(assert (=> b!5676469 m!6637032))

(declare-fun m!6637034 () Bool)

(assert (=> b!5676469 m!6637034))

(assert (=> b!5675603 d!1791671))

(declare-fun bs!1323263 () Bool)

(declare-fun d!1791675 () Bool)

(assert (= bs!1323263 (and d!1791675 b!5675580)))

(declare-fun lambda!305783 () Int)

(assert (=> bs!1323263 (= (= (head!12045 (t!376610 s!2326)) (h!69626 s!2326)) (= lambda!305783 lambda!305715))))

(assert (=> d!1791675 true))

(assert (=> d!1791675 (= (derivationStepZipper!1752 lt!2269585 (head!12045 (t!376610 s!2326))) (flatMap!1280 lt!2269585 lambda!305783))))

(declare-fun bs!1323264 () Bool)

(assert (= bs!1323264 d!1791675))

(declare-fun m!6637048 () Bool)

(assert (=> bs!1323264 m!6637048))

(assert (=> b!5675603 d!1791675))

(declare-fun d!1791679 () Bool)

(assert (=> d!1791679 (= (head!12045 (t!376610 s!2326)) (h!69626 (t!376610 s!2326)))))

(assert (=> b!5675603 d!1791679))

(declare-fun d!1791681 () Bool)

(assert (=> d!1791681 (= (tail!11140 (t!376610 s!2326)) (t!376610 (t!376610 s!2326)))))

(assert (=> b!5675603 d!1791681))

(declare-fun d!1791683 () Bool)

(assert (=> d!1791683 (= (isEmpty!35025 (tail!11141 (exprs!5551 (h!69625 zl!343)))) ((_ is Nil!63176) (tail!11141 (exprs!5551 (h!69625 zl!343)))))))

(assert (=> b!5676216 d!1791683))

(declare-fun d!1791685 () Bool)

(assert (=> d!1791685 (= (tail!11141 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343))))))

(assert (=> b!5676216 d!1791685))

(declare-fun d!1791687 () Bool)

(assert (=> d!1791687 (= (isEmpty!35025 (unfocusZipperList!1095 zl!343)) ((_ is Nil!63176) (unfocusZipperList!1095 zl!343)))))

(assert (=> b!5675662 d!1791687))

(assert (=> d!1791555 d!1791553))

(assert (=> d!1791555 d!1791549))

(declare-fun d!1791689 () Bool)

(assert (=> d!1791689 (= (matchR!7852 r!7292 s!2326) (matchRSpec!2770 r!7292 s!2326))))

(assert (=> d!1791689 true))

(declare-fun _$88!3966 () Unit!156200)

(assert (=> d!1791689 (= (choose!42940 r!7292 s!2326) _$88!3966)))

(declare-fun bs!1323267 () Bool)

(assert (= bs!1323267 d!1791689))

(assert (=> bs!1323267 m!6636398))

(assert (=> bs!1323267 m!6636396))

(assert (=> d!1791555 d!1791689))

(assert (=> d!1791555 d!1791589))

(declare-fun d!1791693 () Bool)

(declare-fun c!998680 () Bool)

(assert (=> d!1791693 (= c!998680 (isEmpty!35028 (tail!11140 (t!376610 s!2326))))))

(declare-fun e!3493977 () Bool)

(assert (=> d!1791693 (= (matchZipper!1805 (derivationStepZipper!1752 lt!2269582 (head!12045 (t!376610 s!2326))) (tail!11140 (t!376610 s!2326))) e!3493977)))

(declare-fun b!5676476 () Bool)

(assert (=> b!5676476 (= e!3493977 (nullableZipper!1633 (derivationStepZipper!1752 lt!2269582 (head!12045 (t!376610 s!2326)))))))

(declare-fun b!5676477 () Bool)

(assert (=> b!5676477 (= e!3493977 (matchZipper!1805 (derivationStepZipper!1752 (derivationStepZipper!1752 lt!2269582 (head!12045 (t!376610 s!2326))) (head!12045 (tail!11140 (t!376610 s!2326)))) (tail!11140 (tail!11140 (t!376610 s!2326)))))))

(assert (= (and d!1791693 c!998680) b!5676476))

(assert (= (and d!1791693 (not c!998680)) b!5676477))

(assert (=> d!1791693 m!6636430))

(assert (=> d!1791693 m!6637022))

(assert (=> b!5676476 m!6636800))

(declare-fun m!6637052 () Bool)

(assert (=> b!5676476 m!6637052))

(assert (=> b!5676477 m!6636430))

(assert (=> b!5676477 m!6637028))

(assert (=> b!5676477 m!6636800))

(assert (=> b!5676477 m!6637028))

(declare-fun m!6637054 () Bool)

(assert (=> b!5676477 m!6637054))

(assert (=> b!5676477 m!6636430))

(assert (=> b!5676477 m!6637032))

(assert (=> b!5676477 m!6637054))

(assert (=> b!5676477 m!6637032))

(declare-fun m!6637056 () Bool)

(assert (=> b!5676477 m!6637056))

(assert (=> b!5676226 d!1791693))

(declare-fun bs!1323268 () Bool)

(declare-fun d!1791697 () Bool)

(assert (= bs!1323268 (and d!1791697 b!5675580)))

(declare-fun lambda!305787 () Int)

(assert (=> bs!1323268 (= (= (head!12045 (t!376610 s!2326)) (h!69626 s!2326)) (= lambda!305787 lambda!305715))))

(declare-fun bs!1323269 () Bool)

(assert (= bs!1323269 (and d!1791697 d!1791675)))

(assert (=> bs!1323269 (= lambda!305787 lambda!305783)))

(assert (=> d!1791697 true))

(assert (=> d!1791697 (= (derivationStepZipper!1752 lt!2269582 (head!12045 (t!376610 s!2326))) (flatMap!1280 lt!2269582 lambda!305787))))

(declare-fun bs!1323270 () Bool)

(assert (= bs!1323270 d!1791697))

(declare-fun m!6637058 () Bool)

(assert (=> bs!1323270 m!6637058))

(assert (=> b!5676226 d!1791697))

(assert (=> b!5676226 d!1791679))

(assert (=> b!5676226 d!1791681))

(declare-fun d!1791699 () Bool)

(declare-fun e!3493978 () Bool)

(assert (=> d!1791699 e!3493978))

(declare-fun res!2398825 () Bool)

(assert (=> d!1791699 (=> (not res!2398825) (not e!3493978))))

(declare-fun lt!2269688 () List!63302)

(assert (=> d!1791699 (= res!2398825 (= (content!11441 lt!2269688) ((_ map or) (content!11441 (_1!36067 (get!21768 lt!2269613))) (content!11441 (_2!36067 (get!21768 lt!2269613))))))))

(declare-fun e!3493979 () List!63302)

(assert (=> d!1791699 (= lt!2269688 e!3493979)))

(declare-fun c!998681 () Bool)

(assert (=> d!1791699 (= c!998681 ((_ is Nil!63178) (_1!36067 (get!21768 lt!2269613))))))

(assert (=> d!1791699 (= (++!13867 (_1!36067 (get!21768 lt!2269613)) (_2!36067 (get!21768 lt!2269613))) lt!2269688)))

(declare-fun b!5676479 () Bool)

(assert (=> b!5676479 (= e!3493979 (Cons!63178 (h!69626 (_1!36067 (get!21768 lt!2269613))) (++!13867 (t!376610 (_1!36067 (get!21768 lt!2269613))) (_2!36067 (get!21768 lt!2269613)))))))

(declare-fun b!5676481 () Bool)

(assert (=> b!5676481 (= e!3493978 (or (not (= (_2!36067 (get!21768 lt!2269613)) Nil!63178)) (= lt!2269688 (_1!36067 (get!21768 lt!2269613)))))))

(declare-fun b!5676480 () Bool)

(declare-fun res!2398824 () Bool)

(assert (=> b!5676480 (=> (not res!2398824) (not e!3493978))))

(assert (=> b!5676480 (= res!2398824 (= (size!39994 lt!2269688) (+ (size!39994 (_1!36067 (get!21768 lt!2269613))) (size!39994 (_2!36067 (get!21768 lt!2269613))))))))

(declare-fun b!5676478 () Bool)

(assert (=> b!5676478 (= e!3493979 (_2!36067 (get!21768 lt!2269613)))))

(assert (= (and d!1791699 c!998681) b!5676478))

(assert (= (and d!1791699 (not c!998681)) b!5676479))

(assert (= (and d!1791699 res!2398825) b!5676480))

(assert (= (and b!5676480 res!2398824) b!5676481))

(declare-fun m!6637060 () Bool)

(assert (=> d!1791699 m!6637060))

(declare-fun m!6637062 () Bool)

(assert (=> d!1791699 m!6637062))

(declare-fun m!6637064 () Bool)

(assert (=> d!1791699 m!6637064))

(declare-fun m!6637066 () Bool)

(assert (=> b!5676479 m!6637066))

(declare-fun m!6637068 () Bool)

(assert (=> b!5676480 m!6637068))

(declare-fun m!6637070 () Bool)

(assert (=> b!5676480 m!6637070))

(declare-fun m!6637072 () Bool)

(assert (=> b!5676480 m!6637072))

(assert (=> b!5675828 d!1791699))

(declare-fun d!1791703 () Bool)

(assert (=> d!1791703 (= (get!21768 lt!2269613) (v!51724 lt!2269613))))

(assert (=> b!5675828 d!1791703))

(declare-fun b!5676482 () Bool)

(declare-fun e!3493980 () (InoxSet Context!10102))

(assert (=> b!5676482 (= e!3493980 ((as const (Array Context!10102 Bool)) false))))

(declare-fun bm!430743 () Bool)

(declare-fun call!430748 () (InoxSet Context!10102))

(assert (=> bm!430743 (= call!430748 (derivationStepZipperDown!1009 (h!69624 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343)))))) (Context!10103 (t!376608 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343))))))) (h!69626 s!2326)))))

(declare-fun b!5676483 () Bool)

(declare-fun e!3493982 () Bool)

(assert (=> b!5676483 (= e!3493982 (nullable!5699 (h!69624 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343))))))))))

(declare-fun b!5676484 () Bool)

(declare-fun e!3493981 () (InoxSet Context!10102))

(assert (=> b!5676484 (= e!3493981 e!3493980)))

(declare-fun c!998683 () Bool)

(assert (=> b!5676484 (= c!998683 ((_ is Cons!63176) (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343)))))))))

(declare-fun d!1791705 () Bool)

(declare-fun c!998682 () Bool)

(assert (=> d!1791705 (= c!998682 e!3493982)))

(declare-fun res!2398826 () Bool)

(assert (=> d!1791705 (=> (not res!2398826) (not e!3493982))))

(assert (=> d!1791705 (= res!2398826 ((_ is Cons!63176) (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343)))))))))

(assert (=> d!1791705 (= (derivationStepZipperUp!935 (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343)))) (h!69626 s!2326)) e!3493981)))

(declare-fun b!5676485 () Bool)

(assert (=> b!5676485 (= e!3493980 call!430748)))

(declare-fun b!5676486 () Bool)

(assert (=> b!5676486 (= e!3493981 ((_ map or) call!430748 (derivationStepZipperUp!935 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343))))))) (h!69626 s!2326))))))

(assert (= (and d!1791705 res!2398826) b!5676483))

(assert (= (and d!1791705 c!998682) b!5676486))

(assert (= (and d!1791705 (not c!998682)) b!5676484))

(assert (= (and b!5676484 c!998683) b!5676485))

(assert (= (and b!5676484 (not c!998683)) b!5676482))

(assert (= (or b!5676486 b!5676485) bm!430743))

(declare-fun m!6637074 () Bool)

(assert (=> bm!430743 m!6637074))

(declare-fun m!6637076 () Bool)

(assert (=> b!5676483 m!6637076))

(declare-fun m!6637078 () Bool)

(assert (=> b!5676486 m!6637078))

(assert (=> b!5676183 d!1791705))

(declare-fun d!1791707 () Bool)

(assert (=> d!1791707 (= (isDefined!12379 lt!2269613) (not (isEmpty!35030 lt!2269613)))))

(declare-fun bs!1323271 () Bool)

(assert (= bs!1323271 d!1791707))

(declare-fun m!6637080 () Bool)

(assert (=> bs!1323271 m!6637080))

(assert (=> d!1791473 d!1791707))

(declare-fun b!5676487 () Bool)

(declare-fun res!2398831 () Bool)

(declare-fun e!3493984 () Bool)

(assert (=> b!5676487 (=> res!2398831 e!3493984)))

(assert (=> b!5676487 (= res!2398831 (not (isEmpty!35028 (tail!11140 Nil!63178))))))

(declare-fun b!5676488 () Bool)

(declare-fun e!3493983 () Bool)

(declare-fun lt!2269689 () Bool)

(declare-fun call!430749 () Bool)

(assert (=> b!5676488 (= e!3493983 (= lt!2269689 call!430749))))

(declare-fun b!5676489 () Bool)

(declare-fun e!3493985 () Bool)

(assert (=> b!5676489 (= e!3493985 (= (head!12045 Nil!63178) (c!998425 (regOne!31846 r!7292))))))

(declare-fun b!5676491 () Bool)

(declare-fun res!2398833 () Bool)

(declare-fun e!3493988 () Bool)

(assert (=> b!5676491 (=> res!2398833 e!3493988)))

(assert (=> b!5676491 (= res!2398833 e!3493985)))

(declare-fun res!2398829 () Bool)

(assert (=> b!5676491 (=> (not res!2398829) (not e!3493985))))

(assert (=> b!5676491 (= res!2398829 lt!2269689)))

(declare-fun b!5676492 () Bool)

(declare-fun res!2398828 () Bool)

(assert (=> b!5676492 (=> res!2398828 e!3493988)))

(assert (=> b!5676492 (= res!2398828 (not ((_ is ElementMatch!15667) (regOne!31846 r!7292))))))

(declare-fun e!3493989 () Bool)

(assert (=> b!5676492 (= e!3493989 e!3493988)))

(declare-fun b!5676493 () Bool)

(declare-fun res!2398834 () Bool)

(assert (=> b!5676493 (=> (not res!2398834) (not e!3493985))))

(assert (=> b!5676493 (= res!2398834 (isEmpty!35028 (tail!11140 Nil!63178)))))

(declare-fun b!5676494 () Bool)

(declare-fun res!2398832 () Bool)

(assert (=> b!5676494 (=> (not res!2398832) (not e!3493985))))

(assert (=> b!5676494 (= res!2398832 (not call!430749))))

(declare-fun b!5676495 () Bool)

(assert (=> b!5676495 (= e!3493983 e!3493989)))

(declare-fun c!998686 () Bool)

(assert (=> b!5676495 (= c!998686 ((_ is EmptyLang!15667) (regOne!31846 r!7292)))))

(declare-fun b!5676496 () Bool)

(declare-fun e!3493986 () Bool)

(assert (=> b!5676496 (= e!3493986 (nullable!5699 (regOne!31846 r!7292)))))

(declare-fun b!5676497 () Bool)

(assert (=> b!5676497 (= e!3493986 (matchR!7852 (derivativeStep!4486 (regOne!31846 r!7292) (head!12045 Nil!63178)) (tail!11140 Nil!63178)))))

(declare-fun b!5676490 () Bool)

(assert (=> b!5676490 (= e!3493984 (not (= (head!12045 Nil!63178) (c!998425 (regOne!31846 r!7292)))))))

(declare-fun d!1791709 () Bool)

(assert (=> d!1791709 e!3493983))

(declare-fun c!998685 () Bool)

(assert (=> d!1791709 (= c!998685 ((_ is EmptyExpr!15667) (regOne!31846 r!7292)))))

(assert (=> d!1791709 (= lt!2269689 e!3493986)))

(declare-fun c!998684 () Bool)

(assert (=> d!1791709 (= c!998684 (isEmpty!35028 Nil!63178))))

(assert (=> d!1791709 (validRegex!7403 (regOne!31846 r!7292))))

(assert (=> d!1791709 (= (matchR!7852 (regOne!31846 r!7292) Nil!63178) lt!2269689)))

(declare-fun b!5676498 () Bool)

(declare-fun e!3493987 () Bool)

(assert (=> b!5676498 (= e!3493987 e!3493984)))

(declare-fun res!2398827 () Bool)

(assert (=> b!5676498 (=> res!2398827 e!3493984)))

(assert (=> b!5676498 (= res!2398827 call!430749)))

(declare-fun b!5676499 () Bool)

(assert (=> b!5676499 (= e!3493988 e!3493987)))

(declare-fun res!2398830 () Bool)

(assert (=> b!5676499 (=> (not res!2398830) (not e!3493987))))

(assert (=> b!5676499 (= res!2398830 (not lt!2269689))))

(declare-fun bm!430744 () Bool)

(assert (=> bm!430744 (= call!430749 (isEmpty!35028 Nil!63178))))

(declare-fun b!5676500 () Bool)

(assert (=> b!5676500 (= e!3493989 (not lt!2269689))))

(assert (= (and d!1791709 c!998684) b!5676496))

(assert (= (and d!1791709 (not c!998684)) b!5676497))

(assert (= (and d!1791709 c!998685) b!5676488))

(assert (= (and d!1791709 (not c!998685)) b!5676495))

(assert (= (and b!5676495 c!998686) b!5676500))

(assert (= (and b!5676495 (not c!998686)) b!5676492))

(assert (= (and b!5676492 (not res!2398828)) b!5676491))

(assert (= (and b!5676491 res!2398829) b!5676494))

(assert (= (and b!5676494 res!2398832) b!5676493))

(assert (= (and b!5676493 res!2398834) b!5676489))

(assert (= (and b!5676491 (not res!2398833)) b!5676499))

(assert (= (and b!5676499 res!2398830) b!5676498))

(assert (= (and b!5676498 (not res!2398827)) b!5676487))

(assert (= (and b!5676487 (not res!2398831)) b!5676490))

(assert (= (or b!5676488 b!5676494 b!5676498) bm!430744))

(declare-fun m!6637082 () Bool)

(assert (=> bm!430744 m!6637082))

(declare-fun m!6637084 () Bool)

(assert (=> b!5676490 m!6637084))

(assert (=> b!5676489 m!6637084))

(declare-fun m!6637086 () Bool)

(assert (=> b!5676496 m!6637086))

(declare-fun m!6637088 () Bool)

(assert (=> b!5676487 m!6637088))

(assert (=> b!5676487 m!6637088))

(declare-fun m!6637090 () Bool)

(assert (=> b!5676487 m!6637090))

(assert (=> d!1791709 m!6637082))

(assert (=> d!1791709 m!6636546))

(assert (=> b!5676497 m!6637084))

(assert (=> b!5676497 m!6637084))

(declare-fun m!6637092 () Bool)

(assert (=> b!5676497 m!6637092))

(assert (=> b!5676497 m!6637088))

(assert (=> b!5676497 m!6637092))

(assert (=> b!5676497 m!6637088))

(declare-fun m!6637094 () Bool)

(assert (=> b!5676497 m!6637094))

(assert (=> b!5676493 m!6637088))

(assert (=> b!5676493 m!6637088))

(assert (=> b!5676493 m!6637090))

(assert (=> d!1791473 d!1791709))

(declare-fun b!5676515 () Bool)

(declare-fun e!3494000 () Bool)

(declare-fun e!3493998 () Bool)

(assert (=> b!5676515 (= e!3494000 e!3493998)))

(declare-fun c!998690 () Bool)

(assert (=> b!5676515 (= c!998690 ((_ is Union!15667) (regOne!31846 r!7292)))))

(declare-fun b!5676516 () Bool)

(declare-fun e!3493997 () Bool)

(declare-fun call!430752 () Bool)

(assert (=> b!5676516 (= e!3493997 call!430752)))

(declare-fun b!5676517 () Bool)

(declare-fun res!2398846 () Bool)

(assert (=> b!5676517 (=> (not res!2398846) (not e!3493997))))

(declare-fun call!430751 () Bool)

(assert (=> b!5676517 (= res!2398846 call!430751)))

(assert (=> b!5676517 (= e!3493998 e!3493997)))

(declare-fun b!5676518 () Bool)

(declare-fun e!3493999 () Bool)

(assert (=> b!5676518 (= e!3493999 call!430752)))

(declare-fun b!5676519 () Bool)

(declare-fun res!2398844 () Bool)

(declare-fun e!3494003 () Bool)

(assert (=> b!5676519 (=> res!2398844 e!3494003)))

(assert (=> b!5676519 (= res!2398844 (not ((_ is Concat!24512) (regOne!31846 r!7292))))))

(assert (=> b!5676519 (= e!3493998 e!3494003)))

(declare-fun b!5676520 () Bool)

(declare-fun e!3494001 () Bool)

(declare-fun call!430753 () Bool)

(assert (=> b!5676520 (= e!3494001 call!430753)))

(declare-fun b!5676521 () Bool)

(assert (=> b!5676521 (= e!3494000 e!3494001)))

(declare-fun res!2398843 () Bool)

(assert (=> b!5676521 (= res!2398843 (not (nullable!5699 (reg!15996 (regOne!31846 r!7292)))))))

(assert (=> b!5676521 (=> (not res!2398843) (not e!3494001))))

(declare-fun bm!430746 () Bool)

(declare-fun c!998691 () Bool)

(assert (=> bm!430746 (= call!430753 (validRegex!7403 (ite c!998691 (reg!15996 (regOne!31846 r!7292)) (ite c!998690 (regTwo!31847 (regOne!31846 r!7292)) (regTwo!31846 (regOne!31846 r!7292))))))))

(declare-fun d!1791713 () Bool)

(declare-fun res!2398847 () Bool)

(declare-fun e!3494002 () Bool)

(assert (=> d!1791713 (=> res!2398847 e!3494002)))

(assert (=> d!1791713 (= res!2398847 ((_ is ElementMatch!15667) (regOne!31846 r!7292)))))

(assert (=> d!1791713 (= (validRegex!7403 (regOne!31846 r!7292)) e!3494002)))

(declare-fun bm!430747 () Bool)

(assert (=> bm!430747 (= call!430752 call!430753)))

(declare-fun bm!430748 () Bool)

(assert (=> bm!430748 (= call!430751 (validRegex!7403 (ite c!998690 (regOne!31847 (regOne!31846 r!7292)) (regOne!31846 (regOne!31846 r!7292)))))))

(declare-fun b!5676522 () Bool)

(assert (=> b!5676522 (= e!3494002 e!3494000)))

(assert (=> b!5676522 (= c!998691 ((_ is Star!15667) (regOne!31846 r!7292)))))

(declare-fun b!5676523 () Bool)

(assert (=> b!5676523 (= e!3494003 e!3493999)))

(declare-fun res!2398845 () Bool)

(assert (=> b!5676523 (=> (not res!2398845) (not e!3493999))))

(assert (=> b!5676523 (= res!2398845 call!430751)))

(assert (= (and d!1791713 (not res!2398847)) b!5676522))

(assert (= (and b!5676522 c!998691) b!5676521))

(assert (= (and b!5676522 (not c!998691)) b!5676515))

(assert (= (and b!5676521 res!2398843) b!5676520))

(assert (= (and b!5676515 c!998690) b!5676517))

(assert (= (and b!5676515 (not c!998690)) b!5676519))

(assert (= (and b!5676517 res!2398846) b!5676516))

(assert (= (and b!5676519 (not res!2398844)) b!5676523))

(assert (= (and b!5676523 res!2398845) b!5676518))

(assert (= (or b!5676516 b!5676518) bm!430747))

(assert (= (or b!5676517 b!5676523) bm!430748))

(assert (= (or b!5676520 bm!430747) bm!430746))

(declare-fun m!6637096 () Bool)

(assert (=> b!5676521 m!6637096))

(declare-fun m!6637098 () Bool)

(assert (=> bm!430746 m!6637098))

(declare-fun m!6637100 () Bool)

(assert (=> bm!430748 m!6637100))

(assert (=> d!1791473 d!1791713))

(assert (=> bs!1323218 d!1791565))

(declare-fun b!5676524 () Bool)

(declare-fun res!2398852 () Bool)

(declare-fun e!3494005 () Bool)

(assert (=> b!5676524 (=> res!2398852 e!3494005)))

(assert (=> b!5676524 (= res!2398852 (not (isEmpty!35028 (tail!11140 s!2326))))))

(declare-fun b!5676525 () Bool)

(declare-fun e!3494004 () Bool)

(declare-fun lt!2269691 () Bool)

(declare-fun call!430754 () Bool)

(assert (=> b!5676525 (= e!3494004 (= lt!2269691 call!430754))))

(declare-fun b!5676526 () Bool)

(declare-fun e!3494006 () Bool)

(assert (=> b!5676526 (= e!3494006 (= (head!12045 s!2326) (c!998425 (regTwo!31846 r!7292))))))

(declare-fun b!5676528 () Bool)

(declare-fun res!2398854 () Bool)

(declare-fun e!3494009 () Bool)

(assert (=> b!5676528 (=> res!2398854 e!3494009)))

(assert (=> b!5676528 (= res!2398854 e!3494006)))

(declare-fun res!2398850 () Bool)

(assert (=> b!5676528 (=> (not res!2398850) (not e!3494006))))

(assert (=> b!5676528 (= res!2398850 lt!2269691)))

(declare-fun b!5676529 () Bool)

(declare-fun res!2398849 () Bool)

(assert (=> b!5676529 (=> res!2398849 e!3494009)))

(assert (=> b!5676529 (= res!2398849 (not ((_ is ElementMatch!15667) (regTwo!31846 r!7292))))))

(declare-fun e!3494010 () Bool)

(assert (=> b!5676529 (= e!3494010 e!3494009)))

(declare-fun b!5676530 () Bool)

(declare-fun res!2398855 () Bool)

(assert (=> b!5676530 (=> (not res!2398855) (not e!3494006))))

(assert (=> b!5676530 (= res!2398855 (isEmpty!35028 (tail!11140 s!2326)))))

(declare-fun b!5676531 () Bool)

(declare-fun res!2398853 () Bool)

(assert (=> b!5676531 (=> (not res!2398853) (not e!3494006))))

(assert (=> b!5676531 (= res!2398853 (not call!430754))))

(declare-fun b!5676532 () Bool)

(assert (=> b!5676532 (= e!3494004 e!3494010)))

(declare-fun c!998694 () Bool)

(assert (=> b!5676532 (= c!998694 ((_ is EmptyLang!15667) (regTwo!31846 r!7292)))))

(declare-fun b!5676533 () Bool)

(declare-fun e!3494007 () Bool)

(assert (=> b!5676533 (= e!3494007 (nullable!5699 (regTwo!31846 r!7292)))))

(declare-fun b!5676534 () Bool)

(assert (=> b!5676534 (= e!3494007 (matchR!7852 (derivativeStep!4486 (regTwo!31846 r!7292) (head!12045 s!2326)) (tail!11140 s!2326)))))

(declare-fun b!5676527 () Bool)

(assert (=> b!5676527 (= e!3494005 (not (= (head!12045 s!2326) (c!998425 (regTwo!31846 r!7292)))))))

(declare-fun d!1791715 () Bool)

(assert (=> d!1791715 e!3494004))

(declare-fun c!998693 () Bool)

(assert (=> d!1791715 (= c!998693 ((_ is EmptyExpr!15667) (regTwo!31846 r!7292)))))

(assert (=> d!1791715 (= lt!2269691 e!3494007)))

(declare-fun c!998692 () Bool)

(assert (=> d!1791715 (= c!998692 (isEmpty!35028 s!2326))))

(assert (=> d!1791715 (validRegex!7403 (regTwo!31846 r!7292))))

(assert (=> d!1791715 (= (matchR!7852 (regTwo!31846 r!7292) s!2326) lt!2269691)))

(declare-fun b!5676535 () Bool)

(declare-fun e!3494008 () Bool)

(assert (=> b!5676535 (= e!3494008 e!3494005)))

(declare-fun res!2398848 () Bool)

(assert (=> b!5676535 (=> res!2398848 e!3494005)))

(assert (=> b!5676535 (= res!2398848 call!430754)))

(declare-fun b!5676536 () Bool)

(assert (=> b!5676536 (= e!3494009 e!3494008)))

(declare-fun res!2398851 () Bool)

(assert (=> b!5676536 (=> (not res!2398851) (not e!3494008))))

(assert (=> b!5676536 (= res!2398851 (not lt!2269691))))

(declare-fun bm!430749 () Bool)

(assert (=> bm!430749 (= call!430754 (isEmpty!35028 s!2326))))

(declare-fun b!5676537 () Bool)

(assert (=> b!5676537 (= e!3494010 (not lt!2269691))))

(assert (= (and d!1791715 c!998692) b!5676533))

(assert (= (and d!1791715 (not c!998692)) b!5676534))

(assert (= (and d!1791715 c!998693) b!5676525))

(assert (= (and d!1791715 (not c!998693)) b!5676532))

(assert (= (and b!5676532 c!998694) b!5676537))

(assert (= (and b!5676532 (not c!998694)) b!5676529))

(assert (= (and b!5676529 (not res!2398849)) b!5676528))

(assert (= (and b!5676528 res!2398850) b!5676531))

(assert (= (and b!5676531 res!2398853) b!5676530))

(assert (= (and b!5676530 res!2398855) b!5676526))

(assert (= (and b!5676528 (not res!2398854)) b!5676536))

(assert (= (and b!5676536 res!2398851) b!5676535))

(assert (= (and b!5676535 (not res!2398848)) b!5676524))

(assert (= (and b!5676524 (not res!2398852)) b!5676527))

(assert (= (or b!5676525 b!5676531 b!5676535) bm!430749))

(assert (=> bm!430749 m!6636712))

(assert (=> b!5676527 m!6636718))

(assert (=> b!5676526 m!6636718))

(declare-fun m!6637116 () Bool)

(assert (=> b!5676533 m!6637116))

(assert (=> b!5676524 m!6636722))

(assert (=> b!5676524 m!6636722))

(assert (=> b!5676524 m!6636724))

(assert (=> d!1791715 m!6636712))

(declare-fun m!6637120 () Bool)

(assert (=> d!1791715 m!6637120))

(assert (=> b!5676534 m!6636718))

(assert (=> b!5676534 m!6636718))

(declare-fun m!6637122 () Bool)

(assert (=> b!5676534 m!6637122))

(assert (=> b!5676534 m!6636722))

(assert (=> b!5676534 m!6637122))

(assert (=> b!5676534 m!6636722))

(declare-fun m!6637124 () Bool)

(assert (=> b!5676534 m!6637124))

(assert (=> b!5676530 m!6636722))

(assert (=> b!5676530 m!6636722))

(assert (=> b!5676530 m!6636724))

(assert (=> b!5675826 d!1791715))

(declare-fun d!1791719 () Bool)

(assert (=> d!1791719 (= (isEmpty!35025 (t!376608 (unfocusZipperList!1095 zl!343))) ((_ is Nil!63176) (t!376608 (unfocusZipperList!1095 zl!343))))))

(assert (=> b!5675670 d!1791719))

(declare-fun e!3494011 () (InoxSet Context!10102))

(declare-fun b!5676538 () Bool)

(assert (=> b!5676538 (= e!3494011 (store ((as const (Array Context!10102 Bool)) false) (ite (or c!998557 c!998558) (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (Context!10103 call!430665)) true))))

(declare-fun bm!430750 () Bool)

(declare-fun call!430757 () (InoxSet Context!10102))

(declare-fun call!430755 () (InoxSet Context!10102))

(assert (=> bm!430750 (= call!430757 call!430755)))

(declare-fun b!5676539 () Bool)

(declare-fun e!3494013 () (InoxSet Context!10102))

(declare-fun call!430758 () (InoxSet Context!10102))

(declare-fun call!430759 () (InoxSet Context!10102))

(assert (=> b!5676539 (= e!3494013 ((_ map or) call!430758 call!430759))))

(declare-fun e!3494016 () Bool)

(declare-fun b!5676540 () Bool)

(assert (=> b!5676540 (= e!3494016 (nullable!5699 (regOne!31846 (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292)))))))))))

(declare-fun call!430760 () List!63300)

(declare-fun bm!430751 () Bool)

(declare-fun c!998698 () Bool)

(assert (=> bm!430751 (= call!430758 (derivationStepZipperDown!1009 (ite c!998698 (regOne!31847 (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292))))))) (regOne!31846 (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292)))))))) (ite c!998698 (ite (or c!998557 c!998558) (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (Context!10103 call!430665)) (Context!10103 call!430760)) (h!69626 s!2326)))))

(declare-fun bm!430752 () Bool)

(declare-fun call!430756 () List!63300)

(assert (=> bm!430752 (= call!430756 call!430760)))

(declare-fun b!5676541 () Bool)

(declare-fun e!3494012 () (InoxSet Context!10102))

(assert (=> b!5676541 (= e!3494012 ((_ map or) call!430758 call!430755))))

(declare-fun b!5676542 () Bool)

(declare-fun c!998699 () Bool)

(assert (=> b!5676542 (= c!998699 e!3494016)))

(declare-fun res!2398856 () Bool)

(assert (=> b!5676542 (=> (not res!2398856) (not e!3494016))))

(assert (=> b!5676542 (= res!2398856 ((_ is Concat!24512) (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292))))))))))

(assert (=> b!5676542 (= e!3494013 e!3494012)))

(declare-fun bm!430753 () Bool)

(assert (=> bm!430753 (= call!430755 call!430759)))

(declare-fun b!5676544 () Bool)

(assert (=> b!5676544 (= e!3494011 e!3494013)))

(assert (=> b!5676544 (= c!998698 ((_ is Union!15667) (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292))))))))))

(declare-fun b!5676545 () Bool)

(declare-fun e!3494014 () (InoxSet Context!10102))

(assert (=> b!5676545 (= e!3494014 ((as const (Array Context!10102 Bool)) false))))

(declare-fun b!5676546 () Bool)

(assert (=> b!5676546 (= e!3494014 call!430757)))

(declare-fun c!998696 () Bool)

(declare-fun bm!430754 () Bool)

(assert (=> bm!430754 (= call!430760 ($colon$colon!1700 (exprs!5551 (ite (or c!998557 c!998558) (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (Context!10103 call!430665))) (ite (or c!998699 c!998696) (regTwo!31846 (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292))))))) (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292)))))))))))

(declare-fun d!1791721 () Bool)

(declare-fun c!998697 () Bool)

(assert (=> d!1791721 (= c!998697 (and ((_ is ElementMatch!15667) (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292))))))) (= (c!998425 (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292))))))) (h!69626 s!2326))))))

(assert (=> d!1791721 (= (derivationStepZipperDown!1009 (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292)))))) (ite (or c!998557 c!998558) (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (Context!10103 call!430665)) (h!69626 s!2326)) e!3494011)))

(declare-fun b!5676543 () Bool)

(declare-fun e!3494015 () (InoxSet Context!10102))

(assert (=> b!5676543 (= e!3494015 call!430757)))

(declare-fun b!5676547 () Bool)

(assert (=> b!5676547 (= e!3494012 e!3494015)))

(assert (=> b!5676547 (= c!998696 ((_ is Concat!24512) (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292))))))))))

(declare-fun bm!430755 () Bool)

(assert (=> bm!430755 (= call!430759 (derivationStepZipperDown!1009 (ite c!998698 (regTwo!31847 (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292))))))) (ite c!998699 (regTwo!31846 (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292))))))) (ite c!998696 (regOne!31846 (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292))))))) (reg!15996 (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292)))))))))) (ite (or c!998698 c!998699) (ite (or c!998557 c!998558) (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (Context!10103 call!430665)) (Context!10103 call!430756)) (h!69626 s!2326)))))

(declare-fun c!998695 () Bool)

(declare-fun b!5676548 () Bool)

(assert (=> b!5676548 (= c!998695 ((_ is Star!15667) (ite c!998557 (regTwo!31847 (reg!15996 (regOne!31846 r!7292))) (ite c!998558 (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (ite c!998555 (regOne!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (reg!15996 (regOne!31846 r!7292))))))))))

(assert (=> b!5676548 (= e!3494015 e!3494014)))

(assert (= (and d!1791721 c!998697) b!5676538))

(assert (= (and d!1791721 (not c!998697)) b!5676544))

(assert (= (and b!5676544 c!998698) b!5676539))

(assert (= (and b!5676544 (not c!998698)) b!5676542))

(assert (= (and b!5676542 res!2398856) b!5676540))

(assert (= (and b!5676542 c!998699) b!5676541))

(assert (= (and b!5676542 (not c!998699)) b!5676547))

(assert (= (and b!5676547 c!998696) b!5676543))

(assert (= (and b!5676547 (not c!998696)) b!5676548))

(assert (= (and b!5676548 c!998695) b!5676546))

(assert (= (and b!5676548 (not c!998695)) b!5676545))

(assert (= (or b!5676543 b!5676546) bm!430752))

(assert (= (or b!5676543 b!5676546) bm!430750))

(assert (= (or b!5676541 bm!430752) bm!430754))

(assert (= (or b!5676541 bm!430750) bm!430753))

(assert (= (or b!5676539 bm!430753) bm!430755))

(assert (= (or b!5676539 b!5676541) bm!430751))

(declare-fun m!6637126 () Bool)

(assert (=> b!5676540 m!6637126))

(declare-fun m!6637128 () Bool)

(assert (=> b!5676538 m!6637128))

(declare-fun m!6637130 () Bool)

(assert (=> bm!430754 m!6637130))

(declare-fun m!6637132 () Bool)

(assert (=> bm!430751 m!6637132))

(declare-fun m!6637134 () Bool)

(assert (=> bm!430755 m!6637134))

(assert (=> bm!430664 d!1791721))

(assert (=> d!1791585 d!1791655))

(declare-fun b!5676549 () Bool)

(declare-fun e!3494020 () Bool)

(declare-fun e!3494018 () Bool)

(assert (=> b!5676549 (= e!3494020 e!3494018)))

(declare-fun c!998700 () Bool)

(assert (=> b!5676549 (= c!998700 ((_ is Union!15667) (ite c!998614 (regOne!31847 r!7292) (regOne!31846 r!7292))))))

(declare-fun b!5676550 () Bool)

(declare-fun e!3494017 () Bool)

(declare-fun call!430762 () Bool)

(assert (=> b!5676550 (= e!3494017 call!430762)))

(declare-fun b!5676551 () Bool)

(declare-fun res!2398860 () Bool)

(assert (=> b!5676551 (=> (not res!2398860) (not e!3494017))))

(declare-fun call!430761 () Bool)

(assert (=> b!5676551 (= res!2398860 call!430761)))

(assert (=> b!5676551 (= e!3494018 e!3494017)))

(declare-fun b!5676552 () Bool)

(declare-fun e!3494019 () Bool)

(assert (=> b!5676552 (= e!3494019 call!430762)))

(declare-fun b!5676553 () Bool)

(declare-fun res!2398858 () Bool)

(declare-fun e!3494023 () Bool)

(assert (=> b!5676553 (=> res!2398858 e!3494023)))

(assert (=> b!5676553 (= res!2398858 (not ((_ is Concat!24512) (ite c!998614 (regOne!31847 r!7292) (regOne!31846 r!7292)))))))

(assert (=> b!5676553 (= e!3494018 e!3494023)))

(declare-fun b!5676554 () Bool)

(declare-fun e!3494021 () Bool)

(declare-fun call!430763 () Bool)

(assert (=> b!5676554 (= e!3494021 call!430763)))

(declare-fun b!5676555 () Bool)

(assert (=> b!5676555 (= e!3494020 e!3494021)))

(declare-fun res!2398857 () Bool)

(assert (=> b!5676555 (= res!2398857 (not (nullable!5699 (reg!15996 (ite c!998614 (regOne!31847 r!7292) (regOne!31846 r!7292))))))))

(assert (=> b!5676555 (=> (not res!2398857) (not e!3494021))))

(declare-fun bm!430756 () Bool)

(declare-fun c!998701 () Bool)

(assert (=> bm!430756 (= call!430763 (validRegex!7403 (ite c!998701 (reg!15996 (ite c!998614 (regOne!31847 r!7292) (regOne!31846 r!7292))) (ite c!998700 (regTwo!31847 (ite c!998614 (regOne!31847 r!7292) (regOne!31846 r!7292))) (regTwo!31846 (ite c!998614 (regOne!31847 r!7292) (regOne!31846 r!7292)))))))))

(declare-fun d!1791725 () Bool)

(declare-fun res!2398861 () Bool)

(declare-fun e!3494022 () Bool)

(assert (=> d!1791725 (=> res!2398861 e!3494022)))

(assert (=> d!1791725 (= res!2398861 ((_ is ElementMatch!15667) (ite c!998614 (regOne!31847 r!7292) (regOne!31846 r!7292))))))

(assert (=> d!1791725 (= (validRegex!7403 (ite c!998614 (regOne!31847 r!7292) (regOne!31846 r!7292))) e!3494022)))

(declare-fun bm!430757 () Bool)

(assert (=> bm!430757 (= call!430762 call!430763)))

(declare-fun bm!430758 () Bool)

(assert (=> bm!430758 (= call!430761 (validRegex!7403 (ite c!998700 (regOne!31847 (ite c!998614 (regOne!31847 r!7292) (regOne!31846 r!7292))) (regOne!31846 (ite c!998614 (regOne!31847 r!7292) (regOne!31846 r!7292))))))))

(declare-fun b!5676556 () Bool)

(assert (=> b!5676556 (= e!3494022 e!3494020)))

(assert (=> b!5676556 (= c!998701 ((_ is Star!15667) (ite c!998614 (regOne!31847 r!7292) (regOne!31846 r!7292))))))

(declare-fun b!5676557 () Bool)

(assert (=> b!5676557 (= e!3494023 e!3494019)))

(declare-fun res!2398859 () Bool)

(assert (=> b!5676557 (=> (not res!2398859) (not e!3494019))))

(assert (=> b!5676557 (= res!2398859 call!430761)))

(assert (= (and d!1791725 (not res!2398861)) b!5676556))

(assert (= (and b!5676556 c!998701) b!5676555))

(assert (= (and b!5676556 (not c!998701)) b!5676549))

(assert (= (and b!5676555 res!2398857) b!5676554))

(assert (= (and b!5676549 c!998700) b!5676551))

(assert (= (and b!5676549 (not c!998700)) b!5676553))

(assert (= (and b!5676551 res!2398860) b!5676550))

(assert (= (and b!5676553 (not res!2398858)) b!5676557))

(assert (= (and b!5676557 res!2398859) b!5676552))

(assert (= (or b!5676550 b!5676552) bm!430757))

(assert (= (or b!5676551 b!5676557) bm!430758))

(assert (= (or b!5676554 bm!430757) bm!430756))

(declare-fun m!6637136 () Bool)

(assert (=> b!5676555 m!6637136))

(declare-fun m!6637138 () Bool)

(assert (=> bm!430756 m!6637138))

(declare-fun m!6637140 () Bool)

(assert (=> bm!430758 m!6637140))

(assert (=> bm!430693 d!1791725))

(declare-fun b!5676558 () Bool)

(declare-fun e!3494024 () (InoxSet Context!10102))

(assert (=> b!5676558 (= e!3494024 (store ((as const (Array Context!10102 Bool)) false) (Context!10103 (t!376608 (exprs!5551 lt!2269587))) true))))

(declare-fun bm!430759 () Bool)

(declare-fun call!430766 () (InoxSet Context!10102))

(declare-fun call!430764 () (InoxSet Context!10102))

(assert (=> bm!430759 (= call!430766 call!430764)))

(declare-fun b!5676559 () Bool)

(declare-fun e!3494026 () (InoxSet Context!10102))

(declare-fun call!430767 () (InoxSet Context!10102))

(declare-fun call!430768 () (InoxSet Context!10102))

(assert (=> b!5676559 (= e!3494026 ((_ map or) call!430767 call!430768))))

(declare-fun b!5676560 () Bool)

(declare-fun e!3494029 () Bool)

(assert (=> b!5676560 (= e!3494029 (nullable!5699 (regOne!31846 (h!69624 (exprs!5551 lt!2269587)))))))

(declare-fun c!998705 () Bool)

(declare-fun call!430769 () List!63300)

(declare-fun bm!430760 () Bool)

(assert (=> bm!430760 (= call!430767 (derivationStepZipperDown!1009 (ite c!998705 (regOne!31847 (h!69624 (exprs!5551 lt!2269587))) (regOne!31846 (h!69624 (exprs!5551 lt!2269587)))) (ite c!998705 (Context!10103 (t!376608 (exprs!5551 lt!2269587))) (Context!10103 call!430769)) (h!69626 s!2326)))))

(declare-fun bm!430761 () Bool)

(declare-fun call!430765 () List!63300)

(assert (=> bm!430761 (= call!430765 call!430769)))

(declare-fun b!5676561 () Bool)

(declare-fun e!3494025 () (InoxSet Context!10102))

(assert (=> b!5676561 (= e!3494025 ((_ map or) call!430767 call!430764))))

(declare-fun b!5676562 () Bool)

(declare-fun c!998706 () Bool)

(assert (=> b!5676562 (= c!998706 e!3494029)))

(declare-fun res!2398862 () Bool)

(assert (=> b!5676562 (=> (not res!2398862) (not e!3494029))))

(assert (=> b!5676562 (= res!2398862 ((_ is Concat!24512) (h!69624 (exprs!5551 lt!2269587))))))

(assert (=> b!5676562 (= e!3494026 e!3494025)))

(declare-fun bm!430762 () Bool)

(assert (=> bm!430762 (= call!430764 call!430768)))

(declare-fun b!5676564 () Bool)

(assert (=> b!5676564 (= e!3494024 e!3494026)))

(assert (=> b!5676564 (= c!998705 ((_ is Union!15667) (h!69624 (exprs!5551 lt!2269587))))))

(declare-fun b!5676565 () Bool)

(declare-fun e!3494027 () (InoxSet Context!10102))

(assert (=> b!5676565 (= e!3494027 ((as const (Array Context!10102 Bool)) false))))

(declare-fun b!5676566 () Bool)

(assert (=> b!5676566 (= e!3494027 call!430766)))

(declare-fun bm!430763 () Bool)

(declare-fun c!998703 () Bool)

(assert (=> bm!430763 (= call!430769 ($colon$colon!1700 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 lt!2269587)))) (ite (or c!998706 c!998703) (regTwo!31846 (h!69624 (exprs!5551 lt!2269587))) (h!69624 (exprs!5551 lt!2269587)))))))

(declare-fun d!1791727 () Bool)

(declare-fun c!998704 () Bool)

(assert (=> d!1791727 (= c!998704 (and ((_ is ElementMatch!15667) (h!69624 (exprs!5551 lt!2269587))) (= (c!998425 (h!69624 (exprs!5551 lt!2269587))) (h!69626 s!2326))))))

(assert (=> d!1791727 (= (derivationStepZipperDown!1009 (h!69624 (exprs!5551 lt!2269587)) (Context!10103 (t!376608 (exprs!5551 lt!2269587))) (h!69626 s!2326)) e!3494024)))

(declare-fun b!5676563 () Bool)

(declare-fun e!3494028 () (InoxSet Context!10102))

(assert (=> b!5676563 (= e!3494028 call!430766)))

(declare-fun b!5676567 () Bool)

(assert (=> b!5676567 (= e!3494025 e!3494028)))

(assert (=> b!5676567 (= c!998703 ((_ is Concat!24512) (h!69624 (exprs!5551 lt!2269587))))))

(declare-fun bm!430764 () Bool)

(assert (=> bm!430764 (= call!430768 (derivationStepZipperDown!1009 (ite c!998705 (regTwo!31847 (h!69624 (exprs!5551 lt!2269587))) (ite c!998706 (regTwo!31846 (h!69624 (exprs!5551 lt!2269587))) (ite c!998703 (regOne!31846 (h!69624 (exprs!5551 lt!2269587))) (reg!15996 (h!69624 (exprs!5551 lt!2269587)))))) (ite (or c!998705 c!998706) (Context!10103 (t!376608 (exprs!5551 lt!2269587))) (Context!10103 call!430765)) (h!69626 s!2326)))))

(declare-fun b!5676568 () Bool)

(declare-fun c!998702 () Bool)

(assert (=> b!5676568 (= c!998702 ((_ is Star!15667) (h!69624 (exprs!5551 lt!2269587))))))

(assert (=> b!5676568 (= e!3494028 e!3494027)))

(assert (= (and d!1791727 c!998704) b!5676558))

(assert (= (and d!1791727 (not c!998704)) b!5676564))

(assert (= (and b!5676564 c!998705) b!5676559))

(assert (= (and b!5676564 (not c!998705)) b!5676562))

(assert (= (and b!5676562 res!2398862) b!5676560))

(assert (= (and b!5676562 c!998706) b!5676561))

(assert (= (and b!5676562 (not c!998706)) b!5676567))

(assert (= (and b!5676567 c!998703) b!5676563))

(assert (= (and b!5676567 (not c!998703)) b!5676568))

(assert (= (and b!5676568 c!998702) b!5676566))

(assert (= (and b!5676568 (not c!998702)) b!5676565))

(assert (= (or b!5676563 b!5676566) bm!430761))

(assert (= (or b!5676563 b!5676566) bm!430759))

(assert (= (or b!5676561 bm!430761) bm!430763))

(assert (= (or b!5676561 bm!430759) bm!430762))

(assert (= (or b!5676559 bm!430762) bm!430764))

(assert (= (or b!5676559 b!5676561) bm!430760))

(declare-fun m!6637142 () Bool)

(assert (=> b!5676560 m!6637142))

(declare-fun m!6637144 () Bool)

(assert (=> b!5676558 m!6637144))

(declare-fun m!6637146 () Bool)

(assert (=> bm!430763 m!6637146))

(declare-fun m!6637148 () Bool)

(assert (=> bm!430760 m!6637148))

(declare-fun m!6637150 () Bool)

(assert (=> bm!430764 m!6637150))

(assert (=> bm!430682 d!1791727))

(assert (=> bm!430673 d!1791645))

(declare-fun b!5676569 () Bool)

(declare-fun e!3494033 () Bool)

(declare-fun e!3494031 () Bool)

(assert (=> b!5676569 (= e!3494033 e!3494031)))

(declare-fun c!998707 () Bool)

(assert (=> b!5676569 (= c!998707 ((_ is Union!15667) lt!2269671))))

(declare-fun b!5676570 () Bool)

(declare-fun e!3494030 () Bool)

(declare-fun call!430771 () Bool)

(assert (=> b!5676570 (= e!3494030 call!430771)))

(declare-fun b!5676571 () Bool)

(declare-fun res!2398866 () Bool)

(assert (=> b!5676571 (=> (not res!2398866) (not e!3494030))))

(declare-fun call!430770 () Bool)

(assert (=> b!5676571 (= res!2398866 call!430770)))

(assert (=> b!5676571 (= e!3494031 e!3494030)))

(declare-fun b!5676572 () Bool)

(declare-fun e!3494032 () Bool)

(assert (=> b!5676572 (= e!3494032 call!430771)))

(declare-fun b!5676573 () Bool)

(declare-fun res!2398864 () Bool)

(declare-fun e!3494036 () Bool)

(assert (=> b!5676573 (=> res!2398864 e!3494036)))

(assert (=> b!5676573 (= res!2398864 (not ((_ is Concat!24512) lt!2269671)))))

(assert (=> b!5676573 (= e!3494031 e!3494036)))

(declare-fun b!5676574 () Bool)

(declare-fun e!3494034 () Bool)

(declare-fun call!430772 () Bool)

(assert (=> b!5676574 (= e!3494034 call!430772)))

(declare-fun b!5676575 () Bool)

(assert (=> b!5676575 (= e!3494033 e!3494034)))

(declare-fun res!2398863 () Bool)

(assert (=> b!5676575 (= res!2398863 (not (nullable!5699 (reg!15996 lt!2269671))))))

(assert (=> b!5676575 (=> (not res!2398863) (not e!3494034))))

(declare-fun bm!430765 () Bool)

(declare-fun c!998708 () Bool)

(assert (=> bm!430765 (= call!430772 (validRegex!7403 (ite c!998708 (reg!15996 lt!2269671) (ite c!998707 (regTwo!31847 lt!2269671) (regTwo!31846 lt!2269671)))))))

(declare-fun d!1791729 () Bool)

(declare-fun res!2398867 () Bool)

(declare-fun e!3494035 () Bool)

(assert (=> d!1791729 (=> res!2398867 e!3494035)))

(assert (=> d!1791729 (= res!2398867 ((_ is ElementMatch!15667) lt!2269671))))

(assert (=> d!1791729 (= (validRegex!7403 lt!2269671) e!3494035)))

(declare-fun bm!430766 () Bool)

(assert (=> bm!430766 (= call!430771 call!430772)))

(declare-fun bm!430767 () Bool)

(assert (=> bm!430767 (= call!430770 (validRegex!7403 (ite c!998707 (regOne!31847 lt!2269671) (regOne!31846 lt!2269671))))))

(declare-fun b!5676576 () Bool)

(assert (=> b!5676576 (= e!3494035 e!3494033)))

(assert (=> b!5676576 (= c!998708 ((_ is Star!15667) lt!2269671))))

(declare-fun b!5676577 () Bool)

(assert (=> b!5676577 (= e!3494036 e!3494032)))

(declare-fun res!2398865 () Bool)

(assert (=> b!5676577 (=> (not res!2398865) (not e!3494032))))

(assert (=> b!5676577 (= res!2398865 call!430770)))

(assert (= (and d!1791729 (not res!2398867)) b!5676576))

(assert (= (and b!5676576 c!998708) b!5676575))

(assert (= (and b!5676576 (not c!998708)) b!5676569))

(assert (= (and b!5676575 res!2398863) b!5676574))

(assert (= (and b!5676569 c!998707) b!5676571))

(assert (= (and b!5676569 (not c!998707)) b!5676573))

(assert (= (and b!5676571 res!2398866) b!5676570))

(assert (= (and b!5676573 (not res!2398864)) b!5676577))

(assert (= (and b!5676577 res!2398865) b!5676572))

(assert (= (or b!5676570 b!5676572) bm!430766))

(assert (= (or b!5676571 b!5676577) bm!430767))

(assert (= (or b!5676574 bm!430766) bm!430765))

(declare-fun m!6637152 () Bool)

(assert (=> b!5676575 m!6637152))

(declare-fun m!6637154 () Bool)

(assert (=> bm!430765 m!6637154))

(declare-fun m!6637156 () Bool)

(assert (=> bm!430767 m!6637156))

(assert (=> d!1791579 d!1791729))

(assert (=> d!1791579 d!1791463))

(assert (=> d!1791579 d!1791469))

(declare-fun d!1791731 () Bool)

(declare-fun res!2398872 () Bool)

(declare-fun e!3494041 () Bool)

(assert (=> d!1791731 (=> res!2398872 e!3494041)))

(assert (=> d!1791731 (= res!2398872 ((_ is Nil!63177) lt!2269668))))

(assert (=> d!1791731 (= (noDuplicate!1613 lt!2269668) e!3494041)))

(declare-fun b!5676582 () Bool)

(declare-fun e!3494042 () Bool)

(assert (=> b!5676582 (= e!3494041 e!3494042)))

(declare-fun res!2398873 () Bool)

(assert (=> b!5676582 (=> (not res!2398873) (not e!3494042))))

(declare-fun contains!19840 (List!63301 Context!10102) Bool)

(assert (=> b!5676582 (= res!2398873 (not (contains!19840 (t!376609 lt!2269668) (h!69625 lt!2269668))))))

(declare-fun b!5676583 () Bool)

(assert (=> b!5676583 (= e!3494042 (noDuplicate!1613 (t!376609 lt!2269668)))))

(assert (= (and d!1791731 (not res!2398872)) b!5676582))

(assert (= (and b!5676582 res!2398873) b!5676583))

(declare-fun m!6637158 () Bool)

(assert (=> b!5676582 m!6637158))

(declare-fun m!6637160 () Bool)

(assert (=> b!5676583 m!6637160))

(assert (=> d!1791577 d!1791731))

(declare-fun d!1791737 () Bool)

(declare-fun e!3494053 () Bool)

(assert (=> d!1791737 e!3494053))

(declare-fun res!2398881 () Bool)

(assert (=> d!1791737 (=> (not res!2398881) (not e!3494053))))

(declare-fun res!2398880 () List!63301)

(assert (=> d!1791737 (= res!2398881 (noDuplicate!1613 res!2398880))))

(declare-fun e!3494052 () Bool)

(assert (=> d!1791737 e!3494052))

(assert (=> d!1791737 (= (choose!42943 z!1189) res!2398880)))

(declare-fun b!5676593 () Bool)

(declare-fun e!3494051 () Bool)

(declare-fun tp!1574055 () Bool)

(assert (=> b!5676593 (= e!3494051 tp!1574055)))

(declare-fun b!5676592 () Bool)

(declare-fun tp!1574056 () Bool)

(assert (=> b!5676592 (= e!3494052 (and (inv!82414 (h!69625 res!2398880)) e!3494051 tp!1574056))))

(declare-fun b!5676594 () Bool)

(assert (=> b!5676594 (= e!3494053 (= (content!11440 res!2398880) z!1189))))

(assert (= b!5676592 b!5676593))

(assert (= (and d!1791737 ((_ is Cons!63177) res!2398880)) b!5676592))

(assert (= (and d!1791737 res!2398881) b!5676594))

(declare-fun m!6637162 () Bool)

(assert (=> d!1791737 m!6637162))

(declare-fun m!6637164 () Bool)

(assert (=> b!5676592 m!6637164))

(declare-fun m!6637166 () Bool)

(assert (=> b!5676594 m!6637166))

(assert (=> d!1791577 d!1791737))

(declare-fun d!1791739 () Bool)

(assert (=> d!1791739 (= (isUnion!631 lt!2269593) ((_ is Union!15667) lt!2269593))))

(assert (=> b!5675668 d!1791739))

(declare-fun d!1791741 () Bool)

(assert (=> d!1791741 (= ($colon$colon!1700 (exprs!5551 (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343)))))) (ite (or c!998558 c!998555) (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (regOne!31846 r!7292)))) (Cons!63176 (ite (or c!998558 c!998555) (regTwo!31846 (reg!15996 (regOne!31846 r!7292))) (reg!15996 (regOne!31846 r!7292))) (exprs!5551 (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))))))))

(assert (=> bm!430663 d!1791741))

(declare-fun b!5676607 () Bool)

(declare-fun e!3494064 () (InoxSet Context!10102))

(assert (=> b!5676607 (= e!3494064 (store ((as const (Array Context!10102 Bool)) false) (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343)))) true))))

(declare-fun bm!430770 () Bool)

(declare-fun call!430779 () (InoxSet Context!10102))

(declare-fun call!430777 () (InoxSet Context!10102))

(assert (=> bm!430770 (= call!430779 call!430777)))

(declare-fun b!5676608 () Bool)

(declare-fun e!3494066 () (InoxSet Context!10102))

(declare-fun call!430780 () (InoxSet Context!10102))

(declare-fun call!430781 () (InoxSet Context!10102))

(assert (=> b!5676608 (= e!3494066 ((_ map or) call!430780 call!430781))))

(declare-fun b!5676609 () Bool)

(declare-fun e!3494069 () Bool)

(assert (=> b!5676609 (= e!3494069 (nullable!5699 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343))))))))

(declare-fun call!430782 () List!63300)

(declare-fun bm!430771 () Bool)

(declare-fun c!998714 () Bool)

(assert (=> bm!430771 (= call!430780 (derivationStepZipperDown!1009 (ite c!998714 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343))))) (ite c!998714 (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343)))) (Context!10103 call!430782)) (h!69626 s!2326)))))

(declare-fun bm!430773 () Bool)

(declare-fun call!430778 () List!63300)

(assert (=> bm!430773 (= call!430778 call!430782)))

(declare-fun b!5676610 () Bool)

(declare-fun e!3494065 () (InoxSet Context!10102))

(assert (=> b!5676610 (= e!3494065 ((_ map or) call!430780 call!430777))))

(declare-fun b!5676611 () Bool)

(declare-fun c!998715 () Bool)

(assert (=> b!5676611 (= c!998715 e!3494069)))

(declare-fun res!2398890 () Bool)

(assert (=> b!5676611 (=> (not res!2398890) (not e!3494069))))

(assert (=> b!5676611 (= res!2398890 ((_ is Concat!24512) (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(assert (=> b!5676611 (= e!3494066 e!3494065)))

(declare-fun bm!430775 () Bool)

(assert (=> bm!430775 (= call!430777 call!430781)))

(declare-fun b!5676613 () Bool)

(assert (=> b!5676613 (= e!3494064 e!3494066)))

(assert (=> b!5676613 (= c!998714 ((_ is Union!15667) (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5676614 () Bool)

(declare-fun e!3494067 () (InoxSet Context!10102))

(assert (=> b!5676614 (= e!3494067 ((as const (Array Context!10102 Bool)) false))))

(declare-fun b!5676615 () Bool)

(assert (=> b!5676615 (= e!3494067 call!430779)))

(declare-fun bm!430776 () Bool)

(declare-fun c!998712 () Bool)

(assert (=> bm!430776 (= call!430782 ($colon$colon!1700 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343))))) (ite (or c!998715 c!998712) (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (h!69624 (exprs!5551 (h!69625 zl!343))))))))

(declare-fun d!1791743 () Bool)

(declare-fun c!998713 () Bool)

(assert (=> d!1791743 (= c!998713 (and ((_ is ElementMatch!15667) (h!69624 (exprs!5551 (h!69625 zl!343)))) (= (c!998425 (h!69624 (exprs!5551 (h!69625 zl!343)))) (h!69626 s!2326))))))

(assert (=> d!1791743 (= (derivationStepZipperDown!1009 (h!69624 (exprs!5551 (h!69625 zl!343))) (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343)))) (h!69626 s!2326)) e!3494064)))

(declare-fun b!5676612 () Bool)

(declare-fun e!3494068 () (InoxSet Context!10102))

(assert (=> b!5676612 (= e!3494068 call!430779)))

(declare-fun b!5676616 () Bool)

(assert (=> b!5676616 (= e!3494065 e!3494068)))

(assert (=> b!5676616 (= c!998712 ((_ is Concat!24512) (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun bm!430777 () Bool)

(assert (=> bm!430777 (= call!430781 (derivationStepZipperDown!1009 (ite c!998714 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998715 (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (ite c!998712 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (reg!15996 (h!69624 (exprs!5551 (h!69625 zl!343))))))) (ite (or c!998714 c!998715) (Context!10103 (t!376608 (exprs!5551 (h!69625 zl!343)))) (Context!10103 call!430778)) (h!69626 s!2326)))))

(declare-fun b!5676617 () Bool)

(declare-fun c!998711 () Bool)

(assert (=> b!5676617 (= c!998711 ((_ is Star!15667) (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(assert (=> b!5676617 (= e!3494068 e!3494067)))

(assert (= (and d!1791743 c!998713) b!5676607))

(assert (= (and d!1791743 (not c!998713)) b!5676613))

(assert (= (and b!5676613 c!998714) b!5676608))

(assert (= (and b!5676613 (not c!998714)) b!5676611))

(assert (= (and b!5676611 res!2398890) b!5676609))

(assert (= (and b!5676611 c!998715) b!5676610))

(assert (= (and b!5676611 (not c!998715)) b!5676616))

(assert (= (and b!5676616 c!998712) b!5676612))

(assert (= (and b!5676616 (not c!998712)) b!5676617))

(assert (= (and b!5676617 c!998711) b!5676615))

(assert (= (and b!5676617 (not c!998711)) b!5676614))

(assert (= (or b!5676612 b!5676615) bm!430773))

(assert (= (or b!5676612 b!5676615) bm!430770))

(assert (= (or b!5676610 bm!430773) bm!430776))

(assert (= (or b!5676610 bm!430770) bm!430775))

(assert (= (or b!5676608 bm!430775) bm!430777))

(assert (= (or b!5676608 b!5676610) bm!430771))

(assert (=> b!5676609 m!6636732))

(declare-fun m!6637168 () Bool)

(assert (=> b!5676607 m!6637168))

(declare-fun m!6637170 () Bool)

(assert (=> bm!430776 m!6637170))

(declare-fun m!6637172 () Bool)

(assert (=> bm!430771 m!6637172))

(declare-fun m!6637174 () Bool)

(assert (=> bm!430777 m!6637174))

(assert (=> bm!430683 d!1791743))

(declare-fun d!1791745 () Bool)

(assert (=> d!1791745 (= (isEmpty!35028 (tail!11140 s!2326)) ((_ is Nil!63178) (tail!11140 s!2326)))))

(assert (=> b!5676139 d!1791745))

(declare-fun d!1791747 () Bool)

(assert (=> d!1791747 (= (tail!11140 s!2326) (t!376610 s!2326))))

(assert (=> b!5676139 d!1791747))

(assert (=> b!5675832 d!1791707))

(declare-fun d!1791749 () Bool)

(assert (=> d!1791749 true))

(declare-fun setRes!37956 () Bool)

(assert (=> d!1791749 setRes!37956))

(declare-fun condSetEmpty!37956 () Bool)

(declare-fun res!2398893 () (InoxSet Context!10102))

(assert (=> d!1791749 (= condSetEmpty!37956 (= res!2398893 ((as const (Array Context!10102 Bool)) false)))))

(assert (=> d!1791749 (= (choose!42942 z!1189 lambda!305715) res!2398893)))

(declare-fun setIsEmpty!37956 () Bool)

(assert (=> setIsEmpty!37956 setRes!37956))

(declare-fun e!3494072 () Bool)

(declare-fun tp!1574061 () Bool)

(declare-fun setNonEmpty!37956 () Bool)

(declare-fun setElem!37956 () Context!10102)

(assert (=> setNonEmpty!37956 (= setRes!37956 (and tp!1574061 (inv!82414 setElem!37956) e!3494072))))

(declare-fun setRest!37956 () (InoxSet Context!10102))

(assert (=> setNonEmpty!37956 (= res!2398893 ((_ map or) (store ((as const (Array Context!10102 Bool)) false) setElem!37956 true) setRest!37956))))

(declare-fun b!5676620 () Bool)

(declare-fun tp!1574062 () Bool)

(assert (=> b!5676620 (= e!3494072 tp!1574062)))

(assert (= (and d!1791749 condSetEmpty!37956) setIsEmpty!37956))

(assert (= (and d!1791749 (not condSetEmpty!37956)) setNonEmpty!37956))

(assert (= setNonEmpty!37956 b!5676620))

(declare-fun m!6637176 () Bool)

(assert (=> setNonEmpty!37956 m!6637176))

(assert (=> d!1791569 d!1791749))

(declare-fun b!5676621 () Bool)

(declare-fun res!2398898 () Bool)

(declare-fun e!3494074 () Bool)

(assert (=> b!5676621 (=> res!2398898 e!3494074)))

(assert (=> b!5676621 (= res!2398898 (not (isEmpty!35028 (tail!11140 (_2!36067 (get!21768 lt!2269613))))))))

(declare-fun b!5676622 () Bool)

(declare-fun e!3494073 () Bool)

(declare-fun lt!2269692 () Bool)

(declare-fun call!430783 () Bool)

(assert (=> b!5676622 (= e!3494073 (= lt!2269692 call!430783))))

(declare-fun b!5676623 () Bool)

(declare-fun e!3494075 () Bool)

(assert (=> b!5676623 (= e!3494075 (= (head!12045 (_2!36067 (get!21768 lt!2269613))) (c!998425 (regTwo!31846 r!7292))))))

(declare-fun b!5676625 () Bool)

(declare-fun res!2398900 () Bool)

(declare-fun e!3494078 () Bool)

(assert (=> b!5676625 (=> res!2398900 e!3494078)))

(assert (=> b!5676625 (= res!2398900 e!3494075)))

(declare-fun res!2398896 () Bool)

(assert (=> b!5676625 (=> (not res!2398896) (not e!3494075))))

(assert (=> b!5676625 (= res!2398896 lt!2269692)))

(declare-fun b!5676626 () Bool)

(declare-fun res!2398895 () Bool)

(assert (=> b!5676626 (=> res!2398895 e!3494078)))

(assert (=> b!5676626 (= res!2398895 (not ((_ is ElementMatch!15667) (regTwo!31846 r!7292))))))

(declare-fun e!3494079 () Bool)

(assert (=> b!5676626 (= e!3494079 e!3494078)))

(declare-fun b!5676627 () Bool)

(declare-fun res!2398901 () Bool)

(assert (=> b!5676627 (=> (not res!2398901) (not e!3494075))))

(assert (=> b!5676627 (= res!2398901 (isEmpty!35028 (tail!11140 (_2!36067 (get!21768 lt!2269613)))))))

(declare-fun b!5676628 () Bool)

(declare-fun res!2398899 () Bool)

(assert (=> b!5676628 (=> (not res!2398899) (not e!3494075))))

(assert (=> b!5676628 (= res!2398899 (not call!430783))))

(declare-fun b!5676629 () Bool)

(assert (=> b!5676629 (= e!3494073 e!3494079)))

(declare-fun c!998718 () Bool)

(assert (=> b!5676629 (= c!998718 ((_ is EmptyLang!15667) (regTwo!31846 r!7292)))))

(declare-fun b!5676630 () Bool)

(declare-fun e!3494076 () Bool)

(assert (=> b!5676630 (= e!3494076 (nullable!5699 (regTwo!31846 r!7292)))))

(declare-fun b!5676631 () Bool)

(assert (=> b!5676631 (= e!3494076 (matchR!7852 (derivativeStep!4486 (regTwo!31846 r!7292) (head!12045 (_2!36067 (get!21768 lt!2269613)))) (tail!11140 (_2!36067 (get!21768 lt!2269613)))))))

(declare-fun b!5676624 () Bool)

(assert (=> b!5676624 (= e!3494074 (not (= (head!12045 (_2!36067 (get!21768 lt!2269613))) (c!998425 (regTwo!31846 r!7292)))))))

(declare-fun d!1791751 () Bool)

(assert (=> d!1791751 e!3494073))

(declare-fun c!998717 () Bool)

(assert (=> d!1791751 (= c!998717 ((_ is EmptyExpr!15667) (regTwo!31846 r!7292)))))

(assert (=> d!1791751 (= lt!2269692 e!3494076)))

(declare-fun c!998716 () Bool)

(assert (=> d!1791751 (= c!998716 (isEmpty!35028 (_2!36067 (get!21768 lt!2269613))))))

(assert (=> d!1791751 (validRegex!7403 (regTwo!31846 r!7292))))

(assert (=> d!1791751 (= (matchR!7852 (regTwo!31846 r!7292) (_2!36067 (get!21768 lt!2269613))) lt!2269692)))

(declare-fun b!5676632 () Bool)

(declare-fun e!3494077 () Bool)

(assert (=> b!5676632 (= e!3494077 e!3494074)))

(declare-fun res!2398894 () Bool)

(assert (=> b!5676632 (=> res!2398894 e!3494074)))

(assert (=> b!5676632 (= res!2398894 call!430783)))

(declare-fun b!5676633 () Bool)

(assert (=> b!5676633 (= e!3494078 e!3494077)))

(declare-fun res!2398897 () Bool)

(assert (=> b!5676633 (=> (not res!2398897) (not e!3494077))))

(assert (=> b!5676633 (= res!2398897 (not lt!2269692))))

(declare-fun bm!430778 () Bool)

(assert (=> bm!430778 (= call!430783 (isEmpty!35028 (_2!36067 (get!21768 lt!2269613))))))

(declare-fun b!5676634 () Bool)

(assert (=> b!5676634 (= e!3494079 (not lt!2269692))))

(assert (= (and d!1791751 c!998716) b!5676630))

(assert (= (and d!1791751 (not c!998716)) b!5676631))

(assert (= (and d!1791751 c!998717) b!5676622))

(assert (= (and d!1791751 (not c!998717)) b!5676629))

(assert (= (and b!5676629 c!998718) b!5676634))

(assert (= (and b!5676629 (not c!998718)) b!5676626))

(assert (= (and b!5676626 (not res!2398895)) b!5676625))

(assert (= (and b!5676625 res!2398896) b!5676628))

(assert (= (and b!5676628 res!2398899) b!5676627))

(assert (= (and b!5676627 res!2398901) b!5676623))

(assert (= (and b!5676625 (not res!2398900)) b!5676633))

(assert (= (and b!5676633 res!2398897) b!5676632))

(assert (= (and b!5676632 (not res!2398894)) b!5676621))

(assert (= (and b!5676621 (not res!2398898)) b!5676624))

(assert (= (or b!5676622 b!5676628 b!5676632) bm!430778))

(declare-fun m!6637178 () Bool)

(assert (=> bm!430778 m!6637178))

(declare-fun m!6637180 () Bool)

(assert (=> b!5676624 m!6637180))

(assert (=> b!5676623 m!6637180))

(assert (=> b!5676630 m!6637116))

(declare-fun m!6637182 () Bool)

(assert (=> b!5676621 m!6637182))

(assert (=> b!5676621 m!6637182))

(declare-fun m!6637184 () Bool)

(assert (=> b!5676621 m!6637184))

(assert (=> d!1791751 m!6637178))

(assert (=> d!1791751 m!6637120))

(assert (=> b!5676631 m!6637180))

(assert (=> b!5676631 m!6637180))

(declare-fun m!6637186 () Bool)

(assert (=> b!5676631 m!6637186))

(assert (=> b!5676631 m!6637182))

(assert (=> b!5676631 m!6637186))

(assert (=> b!5676631 m!6637182))

(declare-fun m!6637188 () Bool)

(assert (=> b!5676631 m!6637188))

(assert (=> b!5676627 m!6637182))

(assert (=> b!5676627 m!6637182))

(assert (=> b!5676627 m!6637184))

(assert (=> b!5675830 d!1791751))

(assert (=> b!5675830 d!1791703))

(declare-fun d!1791753 () Bool)

(declare-fun c!998720 () Bool)

(assert (=> d!1791753 (= c!998720 (isEmpty!35028 (tail!11140 (t!376610 s!2326))))))

(declare-fun e!3494086 () Bool)

(assert (=> d!1791753 (= (matchZipper!1805 (derivationStepZipper!1752 ((_ map or) lt!2269582 lt!2269585) (head!12045 (t!376610 s!2326))) (tail!11140 (t!376610 s!2326))) e!3494086)))

(declare-fun b!5676642 () Bool)

(assert (=> b!5676642 (= e!3494086 (nullableZipper!1633 (derivationStepZipper!1752 ((_ map or) lt!2269582 lt!2269585) (head!12045 (t!376610 s!2326)))))))

(declare-fun b!5676643 () Bool)

(assert (=> b!5676643 (= e!3494086 (matchZipper!1805 (derivationStepZipper!1752 (derivationStepZipper!1752 ((_ map or) lt!2269582 lt!2269585) (head!12045 (t!376610 s!2326))) (head!12045 (tail!11140 (t!376610 s!2326)))) (tail!11140 (tail!11140 (t!376610 s!2326)))))))

(assert (= (and d!1791753 c!998720) b!5676642))

(assert (= (and d!1791753 (not c!998720)) b!5676643))

(assert (=> d!1791753 m!6636430))

(assert (=> d!1791753 m!6637022))

(assert (=> b!5676642 m!6636806))

(declare-fun m!6637194 () Bool)

(assert (=> b!5676642 m!6637194))

(assert (=> b!5676643 m!6636430))

(assert (=> b!5676643 m!6637028))

(assert (=> b!5676643 m!6636806))

(assert (=> b!5676643 m!6637028))

(declare-fun m!6637196 () Bool)

(assert (=> b!5676643 m!6637196))

(assert (=> b!5676643 m!6636430))

(assert (=> b!5676643 m!6637032))

(assert (=> b!5676643 m!6637196))

(assert (=> b!5676643 m!6637032))

(declare-fun m!6637198 () Bool)

(assert (=> b!5676643 m!6637198))

(assert (=> b!5676228 d!1791753))

(declare-fun bs!1323274 () Bool)

(declare-fun d!1791757 () Bool)

(assert (= bs!1323274 (and d!1791757 b!5675580)))

(declare-fun lambda!305788 () Int)

(assert (=> bs!1323274 (= (= (head!12045 (t!376610 s!2326)) (h!69626 s!2326)) (= lambda!305788 lambda!305715))))

(declare-fun bs!1323275 () Bool)

(assert (= bs!1323275 (and d!1791757 d!1791675)))

(assert (=> bs!1323275 (= lambda!305788 lambda!305783)))

(declare-fun bs!1323276 () Bool)

(assert (= bs!1323276 (and d!1791757 d!1791697)))

(assert (=> bs!1323276 (= lambda!305788 lambda!305787)))

(assert (=> d!1791757 true))

(assert (=> d!1791757 (= (derivationStepZipper!1752 ((_ map or) lt!2269582 lt!2269585) (head!12045 (t!376610 s!2326))) (flatMap!1280 ((_ map or) lt!2269582 lt!2269585) lambda!305788))))

(declare-fun bs!1323277 () Bool)

(assert (= bs!1323277 d!1791757))

(declare-fun m!6637200 () Bool)

(assert (=> bs!1323277 m!6637200))

(assert (=> b!5676228 d!1791757))

(assert (=> b!5676228 d!1791679))

(assert (=> b!5676228 d!1791681))

(assert (=> d!1791511 d!1791473))

(assert (=> d!1791511 d!1791713))

(assert (=> d!1791511 d!1791509))

(declare-fun d!1791759 () Bool)

(assert (=> d!1791759 (= (Exists!2767 lambda!305747) (choose!42936 lambda!305747))))

(declare-fun bs!1323278 () Bool)

(assert (= bs!1323278 d!1791759))

(declare-fun m!6637202 () Bool)

(assert (=> bs!1323278 m!6637202))

(assert (=> d!1791511 d!1791759))

(declare-fun bs!1323290 () Bool)

(declare-fun d!1791761 () Bool)

(assert (= bs!1323290 (and d!1791761 d!1791511)))

(declare-fun lambda!305793 () Int)

(assert (=> bs!1323290 (= lambda!305793 lambda!305747)))

(declare-fun bs!1323291 () Bool)

(assert (= bs!1323291 (and d!1791761 b!5675588)))

(assert (=> bs!1323291 (= lambda!305793 lambda!305713)))

(declare-fun bs!1323292 () Bool)

(assert (= bs!1323292 (and d!1791761 b!5676100)))

(assert (=> bs!1323292 (not (= lambda!305793 lambda!305766))))

(declare-fun bs!1323293 () Bool)

(assert (= bs!1323293 (and d!1791761 d!1791499)))

(assert (=> bs!1323293 (not (= lambda!305793 lambda!305736))))

(declare-fun bs!1323295 () Bool)

(assert (= bs!1323295 (and d!1791761 b!5676105)))

(assert (=> bs!1323295 (not (= lambda!305793 lambda!305767))))

(assert (=> bs!1323291 (not (= lambda!305793 lambda!305714))))

(assert (=> bs!1323293 (= lambda!305793 lambda!305735)))

(assert (=> d!1791761 true))

(assert (=> d!1791761 true))

(assert (=> d!1791761 true))

(assert (=> d!1791761 (= (isDefined!12379 (findConcatSeparation!2090 (regOne!31846 r!7292) (regTwo!31846 r!7292) Nil!63178 s!2326 s!2326)) (Exists!2767 lambda!305793))))

(assert (=> d!1791761 true))

(declare-fun _$89!1796 () Unit!156200)

(assert (=> d!1791761 (= (choose!42938 (regOne!31846 r!7292) (regTwo!31846 r!7292) s!2326) _$89!1796)))

(declare-fun bs!1323297 () Bool)

(assert (= bs!1323297 d!1791761))

(assert (=> bs!1323297 m!6636374))

(assert (=> bs!1323297 m!6636374))

(assert (=> bs!1323297 m!6636376))

(declare-fun m!6637216 () Bool)

(assert (=> bs!1323297 m!6637216))

(assert (=> d!1791511 d!1791761))

(declare-fun b!5676659 () Bool)

(declare-fun e!3494096 () (InoxSet Context!10102))

(assert (=> b!5676659 (= e!3494096 ((as const (Array Context!10102 Bool)) false))))

(declare-fun bm!430783 () Bool)

(declare-fun call!430788 () (InoxSet Context!10102))

(assert (=> bm!430783 (= call!430788 (derivationStepZipperDown!1009 (h!69624 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 lt!2269587))))) (Context!10103 (t!376608 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 lt!2269587)))))) (h!69626 s!2326)))))

(declare-fun b!5676660 () Bool)

(declare-fun e!3494098 () Bool)

(assert (=> b!5676660 (= e!3494098 (nullable!5699 (h!69624 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 lt!2269587)))))))))

(declare-fun b!5676661 () Bool)

(declare-fun e!3494097 () (InoxSet Context!10102))

(assert (=> b!5676661 (= e!3494097 e!3494096)))

(declare-fun c!998726 () Bool)

(assert (=> b!5676661 (= c!998726 ((_ is Cons!63176) (exprs!5551 (Context!10103 (t!376608 (exprs!5551 lt!2269587))))))))

(declare-fun d!1791775 () Bool)

(declare-fun c!998725 () Bool)

(assert (=> d!1791775 (= c!998725 e!3494098)))

(declare-fun res!2398914 () Bool)

(assert (=> d!1791775 (=> (not res!2398914) (not e!3494098))))

(assert (=> d!1791775 (= res!2398914 ((_ is Cons!63176) (exprs!5551 (Context!10103 (t!376608 (exprs!5551 lt!2269587))))))))

(assert (=> d!1791775 (= (derivationStepZipperUp!935 (Context!10103 (t!376608 (exprs!5551 lt!2269587))) (h!69626 s!2326)) e!3494097)))

(declare-fun b!5676662 () Bool)

(assert (=> b!5676662 (= e!3494096 call!430788)))

(declare-fun b!5676663 () Bool)

(assert (=> b!5676663 (= e!3494097 ((_ map or) call!430788 (derivationStepZipperUp!935 (Context!10103 (t!376608 (exprs!5551 (Context!10103 (t!376608 (exprs!5551 lt!2269587)))))) (h!69626 s!2326))))))

(assert (= (and d!1791775 res!2398914) b!5676660))

(assert (= (and d!1791775 c!998725) b!5676663))

(assert (= (and d!1791775 (not c!998725)) b!5676661))

(assert (= (and b!5676661 c!998726) b!5676662))

(assert (= (and b!5676661 (not c!998726)) b!5676659))

(assert (= (or b!5676663 b!5676662) bm!430783))

(declare-fun m!6637218 () Bool)

(assert (=> bm!430783 m!6637218))

(declare-fun m!6637220 () Bool)

(assert (=> b!5676660 m!6637220))

(declare-fun m!6637222 () Bool)

(assert (=> b!5676663 m!6637222))

(assert (=> b!5676178 d!1791775))

(declare-fun d!1791777 () Bool)

(assert (=> d!1791777 (= (nullable!5699 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))) (nullableFct!1779 (h!69624 (exprs!5551 (Context!10103 (Cons!63176 (h!69624 (exprs!5551 (h!69625 zl!343))) (t!376608 (exprs!5551 (h!69625 zl!343)))))))))))

(declare-fun bs!1323299 () Bool)

(assert (= bs!1323299 d!1791777))

(declare-fun m!6637224 () Bool)

(assert (=> bs!1323299 m!6637224))

(assert (=> b!5676185 d!1791777))

(declare-fun d!1791779 () Bool)

(assert (=> d!1791779 (= (head!12046 (exprs!5551 (h!69625 zl!343))) (h!69624 (exprs!5551 (h!69625 zl!343))))))

(assert (=> b!5676215 d!1791779))

(assert (=> b!5676145 d!1791745))

(assert (=> b!5676145 d!1791747))

(declare-fun d!1791783 () Bool)

(assert (=> d!1791783 (= (nullable!5699 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343))))) (nullableFct!1779 (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343))))))))

(declare-fun bs!1323300 () Bool)

(assert (= bs!1323300 d!1791783))

(declare-fun m!6637226 () Bool)

(assert (=> bs!1323300 m!6637226))

(assert (=> b!5676155 d!1791783))

(declare-fun bs!1323301 () Bool)

(declare-fun d!1791785 () Bool)

(assert (= bs!1323301 (and d!1791785 d!1791621)))

(declare-fun lambda!305794 () Int)

(assert (=> bs!1323301 (= lambda!305794 lambda!305776)))

(assert (=> d!1791785 (= (nullableZipper!1633 lt!2269582) (exists!2205 lt!2269582 lambda!305794))))

(declare-fun bs!1323302 () Bool)

(assert (= bs!1323302 d!1791785))

(declare-fun m!6637228 () Bool)

(assert (=> bs!1323302 m!6637228))

(assert (=> b!5676225 d!1791785))

(declare-fun b!5676684 () Bool)

(declare-fun e!3494117 () Bool)

(declare-fun call!430793 () Bool)

(assert (=> b!5676684 (= e!3494117 call!430793)))

(declare-fun b!5676686 () Bool)

(declare-fun e!3494114 () Bool)

(declare-fun e!3494115 () Bool)

(assert (=> b!5676686 (= e!3494114 e!3494115)))

(declare-fun res!2398929 () Bool)

(declare-fun call!430794 () Bool)

(assert (=> b!5676686 (= res!2398929 call!430794)))

(assert (=> b!5676686 (=> (not res!2398929) (not e!3494115))))

(declare-fun b!5676687 () Bool)

(declare-fun e!3494119 () Bool)

(assert (=> b!5676687 (= e!3494119 e!3494114)))

(declare-fun c!998732 () Bool)

(assert (=> b!5676687 (= c!998732 ((_ is Union!15667) (regOne!31846 (regOne!31846 r!7292))))))

(declare-fun b!5676688 () Bool)

(assert (=> b!5676688 (= e!3494114 e!3494117)))

(declare-fun res!2398928 () Bool)

(assert (=> b!5676688 (= res!2398928 call!430794)))

(assert (=> b!5676688 (=> res!2398928 e!3494117)))

(declare-fun bm!430788 () Bool)

(assert (=> bm!430788 (= call!430793 (nullable!5699 (ite c!998732 (regTwo!31847 (regOne!31846 (regOne!31846 r!7292))) (regTwo!31846 (regOne!31846 (regOne!31846 r!7292))))))))

(declare-fun bm!430789 () Bool)

(assert (=> bm!430789 (= call!430794 (nullable!5699 (ite c!998732 (regOne!31847 (regOne!31846 (regOne!31846 r!7292))) (regOne!31846 (regOne!31846 (regOne!31846 r!7292))))))))

(declare-fun b!5676689 () Bool)

(assert (=> b!5676689 (= e!3494115 call!430793)))

(declare-fun b!5676690 () Bool)

(declare-fun e!3494116 () Bool)

(declare-fun e!3494118 () Bool)

(assert (=> b!5676690 (= e!3494116 e!3494118)))

(declare-fun res!2398925 () Bool)

(assert (=> b!5676690 (=> (not res!2398925) (not e!3494118))))

(assert (=> b!5676690 (= res!2398925 (and (not ((_ is EmptyLang!15667) (regOne!31846 (regOne!31846 r!7292)))) (not ((_ is ElementMatch!15667) (regOne!31846 (regOne!31846 r!7292))))))))

(declare-fun d!1791787 () Bool)

(declare-fun res!2398926 () Bool)

(assert (=> d!1791787 (=> res!2398926 e!3494116)))

(assert (=> d!1791787 (= res!2398926 ((_ is EmptyExpr!15667) (regOne!31846 (regOne!31846 r!7292))))))

(assert (=> d!1791787 (= (nullableFct!1779 (regOne!31846 (regOne!31846 r!7292))) e!3494116)))

(declare-fun b!5676685 () Bool)

(assert (=> b!5676685 (= e!3494118 e!3494119)))

(declare-fun res!2398927 () Bool)

(assert (=> b!5676685 (=> res!2398927 e!3494119)))

(assert (=> b!5676685 (= res!2398927 ((_ is Star!15667) (regOne!31846 (regOne!31846 r!7292))))))

(assert (= (and d!1791787 (not res!2398926)) b!5676690))

(assert (= (and b!5676690 res!2398925) b!5676685))

(assert (= (and b!5676685 (not res!2398927)) b!5676687))

(assert (= (and b!5676687 c!998732) b!5676688))

(assert (= (and b!5676687 (not c!998732)) b!5676686))

(assert (= (and b!5676688 (not res!2398928)) b!5676684))

(assert (= (and b!5676686 res!2398929) b!5676689))

(assert (= (or b!5676684 b!5676689) bm!430788))

(assert (= (or b!5676688 b!5676686) bm!430789))

(declare-fun m!6637234 () Bool)

(assert (=> bm!430788 m!6637234))

(declare-fun m!6637236 () Bool)

(assert (=> bm!430789 m!6637236))

(assert (=> d!1791587 d!1791787))

(declare-fun d!1791793 () Bool)

(assert (=> d!1791793 true))

(assert (=> d!1791793 true))

(declare-fun res!2398932 () Bool)

(assert (=> d!1791793 (= (choose!42936 lambda!305713) res!2398932)))

(assert (=> d!1791497 d!1791793))

(declare-fun b!5676691 () Bool)

(declare-fun e!3494120 () (InoxSet Context!10102))

(assert (=> b!5676691 (= e!3494120 (store ((as const (Array Context!10102 Bool)) false) (ite c!998557 (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (Context!10103 call!430669)) true))))

(declare-fun bm!430790 () Bool)

(declare-fun call!430797 () (InoxSet Context!10102))

(declare-fun call!430795 () (InoxSet Context!10102))

(assert (=> bm!430790 (= call!430797 call!430795)))

(declare-fun b!5676692 () Bool)

(declare-fun e!3494122 () (InoxSet Context!10102))

(declare-fun call!430798 () (InoxSet Context!10102))

(declare-fun call!430799 () (InoxSet Context!10102))

(assert (=> b!5676692 (= e!3494122 ((_ map or) call!430798 call!430799))))

(declare-fun b!5676693 () Bool)

(declare-fun e!3494125 () Bool)

(assert (=> b!5676693 (= e!3494125 (nullable!5699 (regOne!31846 (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292)))))))))

(declare-fun call!430800 () List!63300)

(declare-fun c!998736 () Bool)

(declare-fun bm!430791 () Bool)

(assert (=> bm!430791 (= call!430798 (derivationStepZipperDown!1009 (ite c!998736 (regOne!31847 (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292))))) (regOne!31846 (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292)))))) (ite c!998736 (ite c!998557 (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (Context!10103 call!430669)) (Context!10103 call!430800)) (h!69626 s!2326)))))

(declare-fun bm!430792 () Bool)

(declare-fun call!430796 () List!63300)

(assert (=> bm!430792 (= call!430796 call!430800)))

(declare-fun b!5676694 () Bool)

(declare-fun e!3494121 () (InoxSet Context!10102))

(assert (=> b!5676694 (= e!3494121 ((_ map or) call!430798 call!430795))))

(declare-fun b!5676695 () Bool)

(declare-fun c!998737 () Bool)

(assert (=> b!5676695 (= c!998737 e!3494125)))

(declare-fun res!2398933 () Bool)

(assert (=> b!5676695 (=> (not res!2398933) (not e!3494125))))

(assert (=> b!5676695 (= res!2398933 ((_ is Concat!24512) (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292))))))))

(assert (=> b!5676695 (= e!3494122 e!3494121)))

(declare-fun bm!430793 () Bool)

(assert (=> bm!430793 (= call!430795 call!430799)))

(declare-fun b!5676697 () Bool)

(assert (=> b!5676697 (= e!3494120 e!3494122)))

(assert (=> b!5676697 (= c!998736 ((_ is Union!15667) (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292))))))))

(declare-fun b!5676698 () Bool)

(declare-fun e!3494123 () (InoxSet Context!10102))

(assert (=> b!5676698 (= e!3494123 ((as const (Array Context!10102 Bool)) false))))

(declare-fun b!5676699 () Bool)

(assert (=> b!5676699 (= e!3494123 call!430797)))

(declare-fun bm!430794 () Bool)

(declare-fun c!998734 () Bool)

(assert (=> bm!430794 (= call!430800 ($colon$colon!1700 (exprs!5551 (ite c!998557 (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (Context!10103 call!430669))) (ite (or c!998737 c!998734) (regTwo!31846 (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292))))) (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292)))))))))

(declare-fun c!998735 () Bool)

(declare-fun d!1791795 () Bool)

(assert (=> d!1791795 (= c!998735 (and ((_ is ElementMatch!15667) (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292))))) (= (c!998425 (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292))))) (h!69626 s!2326))))))

(assert (=> d!1791795 (= (derivationStepZipperDown!1009 (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292)))) (ite c!998557 (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (Context!10103 call!430669)) (h!69626 s!2326)) e!3494120)))

(declare-fun b!5676696 () Bool)

(declare-fun e!3494124 () (InoxSet Context!10102))

(assert (=> b!5676696 (= e!3494124 call!430797)))

(declare-fun b!5676700 () Bool)

(assert (=> b!5676700 (= e!3494121 e!3494124)))

(assert (=> b!5676700 (= c!998734 ((_ is Concat!24512) (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292))))))))

(declare-fun bm!430795 () Bool)

(assert (=> bm!430795 (= call!430799 (derivationStepZipperDown!1009 (ite c!998736 (regTwo!31847 (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292))))) (ite c!998737 (regTwo!31846 (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292))))) (ite c!998734 (regOne!31846 (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292))))) (reg!15996 (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292)))))))) (ite (or c!998736 c!998737) (ite c!998557 (Context!10103 (Cons!63176 (Star!15667 (reg!15996 (regOne!31846 r!7292))) (t!376608 (exprs!5551 (h!69625 zl!343))))) (Context!10103 call!430669)) (Context!10103 call!430796)) (h!69626 s!2326)))))

(declare-fun b!5676701 () Bool)

(declare-fun c!998733 () Bool)

(assert (=> b!5676701 (= c!998733 ((_ is Star!15667) (ite c!998557 (regOne!31847 (reg!15996 (regOne!31846 r!7292))) (regOne!31846 (reg!15996 (regOne!31846 r!7292))))))))

(assert (=> b!5676701 (= e!3494124 e!3494123)))

(assert (= (and d!1791795 c!998735) b!5676691))

(assert (= (and d!1791795 (not c!998735)) b!5676697))

(assert (= (and b!5676697 c!998736) b!5676692))

(assert (= (and b!5676697 (not c!998736)) b!5676695))

(assert (= (and b!5676695 res!2398933) b!5676693))

(assert (= (and b!5676695 c!998737) b!5676694))

(assert (= (and b!5676695 (not c!998737)) b!5676700))

(assert (= (and b!5676700 c!998734) b!5676696))

(assert (= (and b!5676700 (not c!998734)) b!5676701))

(assert (= (and b!5676701 c!998733) b!5676699))

(assert (= (and b!5676701 (not c!998733)) b!5676698))

(assert (= (or b!5676696 b!5676699) bm!430792))

(assert (= (or b!5676696 b!5676699) bm!430790))

(assert (= (or b!5676694 bm!430792) bm!430794))

(assert (= (or b!5676694 bm!430790) bm!430793))

(assert (= (or b!5676692 bm!430793) bm!430795))

(assert (= (or b!5676692 b!5676694) bm!430791))

(declare-fun m!6637238 () Bool)

(assert (=> b!5676693 m!6637238))

(declare-fun m!6637240 () Bool)

(assert (=> b!5676691 m!6637240))

(declare-fun m!6637242 () Bool)

(assert (=> bm!430794 m!6637242))

(declare-fun m!6637244 () Bool)

(assert (=> bm!430791 m!6637244))

(declare-fun m!6637246 () Bool)

(assert (=> bm!430795 m!6637246))

(assert (=> bm!430660 d!1791795))

(declare-fun d!1791797 () Bool)

(assert (=> d!1791797 true))

(assert (=> d!1791797 true))

(declare-fun res!2398934 () Bool)

(assert (=> d!1791797 (= (choose!42936 lambda!305714) res!2398934)))

(assert (=> d!1791523 d!1791797))

(declare-fun bs!1323303 () Bool)

(declare-fun b!5676706 () Bool)

(assert (= bs!1323303 (and b!5676706 d!1791511)))

(declare-fun lambda!305795 () Int)

(assert (=> bs!1323303 (not (= lambda!305795 lambda!305747))))

(declare-fun bs!1323304 () Bool)

(assert (= bs!1323304 (and b!5676706 d!1791761)))

(assert (=> bs!1323304 (not (= lambda!305795 lambda!305793))))

(declare-fun bs!1323305 () Bool)

(assert (= bs!1323305 (and b!5676706 b!5675588)))

(assert (=> bs!1323305 (not (= lambda!305795 lambda!305713))))

(declare-fun bs!1323306 () Bool)

(assert (= bs!1323306 (and b!5676706 b!5676100)))

(assert (=> bs!1323306 (= (and (= (reg!15996 (regTwo!31847 r!7292)) (reg!15996 r!7292)) (= (regTwo!31847 r!7292) r!7292)) (= lambda!305795 lambda!305766))))

(declare-fun bs!1323307 () Bool)

(assert (= bs!1323307 (and b!5676706 d!1791499)))

(assert (=> bs!1323307 (not (= lambda!305795 lambda!305736))))

(declare-fun bs!1323308 () Bool)

(assert (= bs!1323308 (and b!5676706 b!5676105)))

(assert (=> bs!1323308 (not (= lambda!305795 lambda!305767))))

(assert (=> bs!1323305 (not (= lambda!305795 lambda!305714))))

(assert (=> bs!1323307 (not (= lambda!305795 lambda!305735))))

(assert (=> b!5676706 true))

(assert (=> b!5676706 true))

(declare-fun bs!1323309 () Bool)

(declare-fun b!5676711 () Bool)

(assert (= bs!1323309 (and b!5676711 d!1791511)))

(declare-fun lambda!305796 () Int)

(assert (=> bs!1323309 (not (= lambda!305796 lambda!305747))))

(declare-fun bs!1323310 () Bool)

(assert (= bs!1323310 (and b!5676711 d!1791761)))

(assert (=> bs!1323310 (not (= lambda!305796 lambda!305793))))

(declare-fun bs!1323311 () Bool)

(assert (= bs!1323311 (and b!5676711 b!5675588)))

(assert (=> bs!1323311 (not (= lambda!305796 lambda!305713))))

(declare-fun bs!1323312 () Bool)

(assert (= bs!1323312 (and b!5676711 b!5676100)))

(assert (=> bs!1323312 (not (= lambda!305796 lambda!305766))))

(declare-fun bs!1323313 () Bool)

(assert (= bs!1323313 (and b!5676711 d!1791499)))

(assert (=> bs!1323313 (= (and (= (regOne!31846 (regTwo!31847 r!7292)) (regOne!31846 r!7292)) (= (regTwo!31846 (regTwo!31847 r!7292)) (regTwo!31846 r!7292))) (= lambda!305796 lambda!305736))))

(declare-fun bs!1323314 () Bool)

(assert (= bs!1323314 (and b!5676711 b!5676105)))

(assert (=> bs!1323314 (= (and (= (regOne!31846 (regTwo!31847 r!7292)) (regOne!31846 r!7292)) (= (regTwo!31846 (regTwo!31847 r!7292)) (regTwo!31846 r!7292))) (= lambda!305796 lambda!305767))))

(declare-fun bs!1323315 () Bool)

(assert (= bs!1323315 (and b!5676711 b!5676706)))

(assert (=> bs!1323315 (not (= lambda!305796 lambda!305795))))

(assert (=> bs!1323311 (= (and (= (regOne!31846 (regTwo!31847 r!7292)) (regOne!31846 r!7292)) (= (regTwo!31846 (regTwo!31847 r!7292)) (regTwo!31846 r!7292))) (= lambda!305796 lambda!305714))))

(assert (=> bs!1323313 (not (= lambda!305796 lambda!305735))))

(assert (=> b!5676711 true))

(assert (=> b!5676711 true))

(declare-fun c!998743 () Bool)

(declare-fun bm!430796 () Bool)

(declare-fun call!430801 () Bool)

(assert (=> bm!430796 (= call!430801 (Exists!2767 (ite c!998743 lambda!305795 lambda!305796)))))

(declare-fun e!3494130 () Bool)

(assert (=> b!5676706 (= e!3494130 call!430801)))

(declare-fun b!5676707 () Bool)

(declare-fun e!3494132 () Bool)

(declare-fun e!3494128 () Bool)

(assert (=> b!5676707 (= e!3494132 e!3494128)))

(assert (=> b!5676707 (= c!998743 ((_ is Star!15667) (regTwo!31847 r!7292)))))

(declare-fun b!5676708 () Bool)

(declare-fun c!998740 () Bool)

(assert (=> b!5676708 (= c!998740 ((_ is Union!15667) (regTwo!31847 r!7292)))))

(declare-fun e!3494134 () Bool)

(assert (=> b!5676708 (= e!3494134 e!3494132)))

(declare-fun bm!430797 () Bool)

(declare-fun call!430802 () Bool)

(assert (=> bm!430797 (= call!430802 (isEmpty!35028 s!2326))))

(declare-fun b!5676709 () Bool)

(declare-fun e!3494131 () Bool)

(assert (=> b!5676709 (= e!3494131 (matchRSpec!2770 (regTwo!31847 (regTwo!31847 r!7292)) s!2326))))

(declare-fun b!5676710 () Bool)

(declare-fun res!2398935 () Bool)

(assert (=> b!5676710 (=> res!2398935 e!3494130)))

(assert (=> b!5676710 (= res!2398935 call!430802)))

(assert (=> b!5676710 (= e!3494128 e!3494130)))

(assert (=> b!5676711 (= e!3494128 call!430801)))

(declare-fun b!5676712 () Bool)

(declare-fun c!998741 () Bool)

(assert (=> b!5676712 (= c!998741 ((_ is ElementMatch!15667) (regTwo!31847 r!7292)))))

(declare-fun e!3494129 () Bool)

(assert (=> b!5676712 (= e!3494129 e!3494134)))

(declare-fun b!5676713 () Bool)

(declare-fun e!3494133 () Bool)

(assert (=> b!5676713 (= e!3494133 e!3494129)))

(declare-fun res!2398936 () Bool)

(assert (=> b!5676713 (= res!2398936 (not ((_ is EmptyLang!15667) (regTwo!31847 r!7292))))))

(assert (=> b!5676713 (=> (not res!2398936) (not e!3494129))))

(declare-fun b!5676714 () Bool)

(assert (=> b!5676714 (= e!3494133 call!430802)))

(declare-fun b!5676715 () Bool)

(assert (=> b!5676715 (= e!3494132 e!3494131)))

(declare-fun res!2398937 () Bool)

(assert (=> b!5676715 (= res!2398937 (matchRSpec!2770 (regOne!31847 (regTwo!31847 r!7292)) s!2326))))

(assert (=> b!5676715 (=> res!2398937 e!3494131)))

(declare-fun b!5676716 () Bool)

(assert (=> b!5676716 (= e!3494134 (= s!2326 (Cons!63178 (c!998425 (regTwo!31847 r!7292)) Nil!63178)))))

(declare-fun d!1791799 () Bool)

(declare-fun c!998742 () Bool)

(assert (=> d!1791799 (= c!998742 ((_ is EmptyExpr!15667) (regTwo!31847 r!7292)))))

(assert (=> d!1791799 (= (matchRSpec!2770 (regTwo!31847 r!7292) s!2326) e!3494133)))

(assert (= (and d!1791799 c!998742) b!5676714))

(assert (= (and d!1791799 (not c!998742)) b!5676713))

(assert (= (and b!5676713 res!2398936) b!5676712))

(assert (= (and b!5676712 c!998741) b!5676716))

(assert (= (and b!5676712 (not c!998741)) b!5676708))

(assert (= (and b!5676708 c!998740) b!5676715))

(assert (= (and b!5676708 (not c!998740)) b!5676707))

(assert (= (and b!5676715 (not res!2398937)) b!5676709))

(assert (= (and b!5676707 c!998743) b!5676710))

(assert (= (and b!5676707 (not c!998743)) b!5676711))

(assert (= (and b!5676710 (not res!2398935)) b!5676706))

(assert (= (or b!5676706 b!5676711) bm!430796))

(assert (= (or b!5676714 b!5676710) bm!430797))

(declare-fun m!6637248 () Bool)

(assert (=> bm!430796 m!6637248))

(assert (=> bm!430797 m!6636712))

(declare-fun m!6637250 () Bool)

(assert (=> b!5676709 m!6637250))

(declare-fun m!6637252 () Bool)

(assert (=> b!5676715 m!6637252))

(assert (=> b!5676103 d!1791799))

(declare-fun bs!1323316 () Bool)

(declare-fun d!1791801 () Bool)

(assert (= bs!1323316 (and d!1791801 d!1791573)))

(declare-fun lambda!305797 () Int)

(assert (=> bs!1323316 (= lambda!305797 lambda!305768)))

(declare-fun bs!1323317 () Bool)

(assert (= bs!1323317 (and d!1791801 d!1791647)))

(assert (=> bs!1323317 (= lambda!305797 lambda!305779)))

(declare-fun bs!1323318 () Bool)

(assert (= bs!1323318 (and d!1791801 d!1791469)))

(assert (=> bs!1323318 (= lambda!305797 lambda!305727)))

(declare-fun bs!1323319 () Bool)

(assert (= bs!1323319 (and d!1791801 d!1791611)))

(assert (=> bs!1323319 (= lambda!305797 lambda!305773)))

(declare-fun bs!1323320 () Bool)

(assert (= bs!1323320 (and d!1791801 d!1791463)))

(assert (=> bs!1323320 (= lambda!305797 lambda!305722)))

(declare-fun bs!1323321 () Bool)

(assert (= bs!1323321 (and d!1791801 d!1791547)))

(assert (=> bs!1323321 (= lambda!305797 lambda!305761)))

(declare-fun bs!1323322 () Bool)

(assert (= bs!1323322 (and d!1791801 d!1791631)))

(assert (=> bs!1323322 (= lambda!305797 lambda!305777)))

(declare-fun bs!1323323 () Bool)

(assert (= bs!1323323 (and d!1791801 d!1791575)))

(assert (=> bs!1323323 (= lambda!305797 lambda!305771)))

(declare-fun b!5676725 () Bool)

(declare-fun e!3494144 () Regex!15667)

(assert (=> b!5676725 (= e!3494144 (h!69624 (t!376608 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5676726 () Bool)

(declare-fun e!3494139 () Regex!15667)

(assert (=> b!5676726 (= e!3494139 EmptyExpr!15667)))

(declare-fun b!5676727 () Bool)

(assert (=> b!5676727 (= e!3494144 e!3494139)))

(declare-fun c!998747 () Bool)

(assert (=> b!5676727 (= c!998747 ((_ is Cons!63176) (t!376608 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun e!3494140 () Bool)

(assert (=> d!1791801 e!3494140))

(declare-fun res!2398945 () Bool)

(assert (=> d!1791801 (=> (not res!2398945) (not e!3494140))))

(declare-fun lt!2269696 () Regex!15667)

(assert (=> d!1791801 (= res!2398945 (validRegex!7403 lt!2269696))))

(assert (=> d!1791801 (= lt!2269696 e!3494144)))

(declare-fun c!998748 () Bool)

(declare-fun e!3494142 () Bool)

(assert (=> d!1791801 (= c!998748 e!3494142)))

(declare-fun res!2398944 () Bool)

(assert (=> d!1791801 (=> (not res!2398944) (not e!3494142))))

(assert (=> d!1791801 (= res!2398944 ((_ is Cons!63176) (t!376608 (exprs!5551 (h!69625 zl!343)))))))

(assert (=> d!1791801 (forall!14815 (t!376608 (exprs!5551 (h!69625 zl!343))) lambda!305797)))

(assert (=> d!1791801 (= (generalisedConcat!1282 (t!376608 (exprs!5551 (h!69625 zl!343)))) lt!2269696)))

(declare-fun b!5676728 () Bool)

(assert (=> b!5676728 (= e!3494142 (isEmpty!35025 (t!376608 (t!376608 (exprs!5551 (h!69625 zl!343))))))))

(declare-fun b!5676729 () Bool)

(assert (=> b!5676729 (= e!3494139 (Concat!24512 (h!69624 (t!376608 (exprs!5551 (h!69625 zl!343)))) (generalisedConcat!1282 (t!376608 (t!376608 (exprs!5551 (h!69625 zl!343)))))))))

(declare-fun b!5676730 () Bool)

(declare-fun e!3494143 () Bool)

(assert (=> b!5676730 (= e!3494143 (isConcat!714 lt!2269696))))

(declare-fun b!5676731 () Bool)

(assert (=> b!5676731 (= e!3494143 (= lt!2269696 (head!12046 (t!376608 (exprs!5551 (h!69625 zl!343))))))))

(declare-fun b!5676732 () Bool)

(declare-fun e!3494141 () Bool)

(assert (=> b!5676732 (= e!3494141 e!3494143)))

(declare-fun c!998745 () Bool)

(assert (=> b!5676732 (= c!998745 (isEmpty!35025 (tail!11141 (t!376608 (exprs!5551 (h!69625 zl!343))))))))

(declare-fun b!5676733 () Bool)

(assert (=> b!5676733 (= e!3494140 e!3494141)))

(declare-fun c!998746 () Bool)

(assert (=> b!5676733 (= c!998746 (isEmpty!35025 (t!376608 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5676734 () Bool)

(assert (=> b!5676734 (= e!3494141 (isEmptyExpr!1191 lt!2269696))))

(assert (= (and d!1791801 res!2398944) b!5676728))

(assert (= (and d!1791801 c!998748) b!5676725))

(assert (= (and d!1791801 (not c!998748)) b!5676727))

(assert (= (and b!5676727 c!998747) b!5676729))

(assert (= (and b!5676727 (not c!998747)) b!5676726))

(assert (= (and d!1791801 res!2398945) b!5676733))

(assert (= (and b!5676733 c!998746) b!5676734))

(assert (= (and b!5676733 (not c!998746)) b!5676732))

(assert (= (and b!5676732 c!998745) b!5676731))

(assert (= (and b!5676732 (not c!998745)) b!5676730))

(declare-fun m!6637282 () Bool)

(assert (=> b!5676731 m!6637282))

(declare-fun m!6637284 () Bool)

(assert (=> b!5676729 m!6637284))

(declare-fun m!6637286 () Bool)

(assert (=> d!1791801 m!6637286))

(declare-fun m!6637288 () Bool)

(assert (=> d!1791801 m!6637288))

(assert (=> b!5676733 m!6636392))

(declare-fun m!6637290 () Bool)

(assert (=> b!5676732 m!6637290))

(assert (=> b!5676732 m!6637290))

(declare-fun m!6637292 () Bool)

(assert (=> b!5676732 m!6637292))

(declare-fun m!6637294 () Bool)

(assert (=> b!5676730 m!6637294))

(declare-fun m!6637296 () Bool)

(assert (=> b!5676734 m!6637296))

(declare-fun m!6637298 () Bool)

(assert (=> b!5676728 m!6637298))

(assert (=> b!5676213 d!1791801))

(assert (=> d!1791567 d!1791569))

(declare-fun d!1791807 () Bool)

(assert (=> d!1791807 (= (flatMap!1280 z!1189 lambda!305715) (dynLambda!24722 lambda!305715 (h!69625 zl!343)))))

(assert (=> d!1791807 true))

(declare-fun _$13!2325 () Unit!156200)

(assert (=> d!1791807 (= (choose!42941 z!1189 (h!69625 zl!343) lambda!305715) _$13!2325)))

(declare-fun b_lambda!214655 () Bool)

(assert (=> (not b_lambda!214655) (not d!1791807)))

(declare-fun bs!1323324 () Bool)

(assert (= bs!1323324 d!1791807))

(assert (=> bs!1323324 m!6636418))

(assert (=> bs!1323324 m!6636754))

(assert (=> d!1791567 d!1791807))

(assert (=> b!5676141 d!1791641))

(declare-fun d!1791809 () Bool)

(assert (=> d!1791809 (= (isEmpty!35025 (tail!11141 (unfocusZipperList!1095 zl!343))) ((_ is Nil!63176) (tail!11141 (unfocusZipperList!1095 zl!343))))))

(assert (=> b!5675667 d!1791809))

(declare-fun d!1791811 () Bool)

(assert (=> d!1791811 (= (tail!11141 (unfocusZipperList!1095 zl!343)) (t!376608 (unfocusZipperList!1095 zl!343)))))

(assert (=> b!5675667 d!1791811))

(declare-fun d!1791813 () Bool)

(assert (=> d!1791813 (= (nullable!5699 (reg!15996 r!7292)) (nullableFct!1779 (reg!15996 r!7292)))))

(declare-fun bs!1323325 () Bool)

(assert (= bs!1323325 d!1791813))

(declare-fun m!6637300 () Bool)

(assert (=> bs!1323325 m!6637300))

(assert (=> b!5676253 d!1791813))

(declare-fun b!5676739 () Bool)

(declare-fun e!3494150 () Bool)

(declare-fun e!3494148 () Bool)

(assert (=> b!5676739 (= e!3494150 e!3494148)))

(declare-fun c!998750 () Bool)

(assert (=> b!5676739 (= c!998750 ((_ is Union!15667) lt!2269593))))

(declare-fun b!5676740 () Bool)

(declare-fun e!3494147 () Bool)

(declare-fun call!430804 () Bool)

(assert (=> b!5676740 (= e!3494147 call!430804)))

(declare-fun b!5676741 () Bool)

(declare-fun res!2398951 () Bool)

(assert (=> b!5676741 (=> (not res!2398951) (not e!3494147))))

(declare-fun call!430803 () Bool)

(assert (=> b!5676741 (= res!2398951 call!430803)))

(assert (=> b!5676741 (= e!3494148 e!3494147)))

(declare-fun b!5676742 () Bool)

(declare-fun e!3494149 () Bool)

(assert (=> b!5676742 (= e!3494149 call!430804)))

(declare-fun b!5676743 () Bool)

(declare-fun res!2398949 () Bool)

(declare-fun e!3494153 () Bool)

(assert (=> b!5676743 (=> res!2398949 e!3494153)))

(assert (=> b!5676743 (= res!2398949 (not ((_ is Concat!24512) lt!2269593)))))

(assert (=> b!5676743 (= e!3494148 e!3494153)))

(declare-fun b!5676744 () Bool)

(declare-fun e!3494151 () Bool)

(declare-fun call!430805 () Bool)

(assert (=> b!5676744 (= e!3494151 call!430805)))

(declare-fun b!5676745 () Bool)

(assert (=> b!5676745 (= e!3494150 e!3494151)))

(declare-fun res!2398948 () Bool)

(assert (=> b!5676745 (= res!2398948 (not (nullable!5699 (reg!15996 lt!2269593))))))

(assert (=> b!5676745 (=> (not res!2398948) (not e!3494151))))

(declare-fun c!998751 () Bool)

(declare-fun bm!430798 () Bool)

(assert (=> bm!430798 (= call!430805 (validRegex!7403 (ite c!998751 (reg!15996 lt!2269593) (ite c!998750 (regTwo!31847 lt!2269593) (regTwo!31846 lt!2269593)))))))

(declare-fun d!1791815 () Bool)

(declare-fun res!2398952 () Bool)

(declare-fun e!3494152 () Bool)

(assert (=> d!1791815 (=> res!2398952 e!3494152)))

(assert (=> d!1791815 (= res!2398952 ((_ is ElementMatch!15667) lt!2269593))))

(assert (=> d!1791815 (= (validRegex!7403 lt!2269593) e!3494152)))

(declare-fun bm!430799 () Bool)

(assert (=> bm!430799 (= call!430804 call!430805)))

(declare-fun bm!430800 () Bool)

(assert (=> bm!430800 (= call!430803 (validRegex!7403 (ite c!998750 (regOne!31847 lt!2269593) (regOne!31846 lt!2269593))))))

(declare-fun b!5676746 () Bool)

(assert (=> b!5676746 (= e!3494152 e!3494150)))

(assert (=> b!5676746 (= c!998751 ((_ is Star!15667) lt!2269593))))

(declare-fun b!5676747 () Bool)

(assert (=> b!5676747 (= e!3494153 e!3494149)))

(declare-fun res!2398950 () Bool)

(assert (=> b!5676747 (=> (not res!2398950) (not e!3494149))))

(assert (=> b!5676747 (= res!2398950 call!430803)))

(assert (= (and d!1791815 (not res!2398952)) b!5676746))

(assert (= (and b!5676746 c!998751) b!5676745))

(assert (= (and b!5676746 (not c!998751)) b!5676739))

(assert (= (and b!5676745 res!2398948) b!5676744))

(assert (= (and b!5676739 c!998750) b!5676741))

(assert (= (and b!5676739 (not c!998750)) b!5676743))

(assert (= (and b!5676741 res!2398951) b!5676740))

(assert (= (and b!5676743 (not res!2398949)) b!5676747))

(assert (= (and b!5676747 res!2398950) b!5676742))

(assert (= (or b!5676740 b!5676742) bm!430799))

(assert (= (or b!5676741 b!5676747) bm!430800))

(assert (= (or b!5676744 bm!430799) bm!430798))

(declare-fun m!6637302 () Bool)

(assert (=> b!5676745 m!6637302))

(declare-fun m!6637304 () Bool)

(assert (=> bm!430798 m!6637304))

(declare-fun m!6637306 () Bool)

(assert (=> bm!430800 m!6637306))

(assert (=> d!1791463 d!1791815))

(declare-fun d!1791817 () Bool)

(declare-fun res!2398953 () Bool)

(declare-fun e!3494154 () Bool)

(assert (=> d!1791817 (=> res!2398953 e!3494154)))

(assert (=> d!1791817 (= res!2398953 ((_ is Nil!63176) (unfocusZipperList!1095 zl!343)))))

(assert (=> d!1791817 (= (forall!14815 (unfocusZipperList!1095 zl!343) lambda!305722) e!3494154)))

(declare-fun b!5676748 () Bool)

(declare-fun e!3494155 () Bool)

(assert (=> b!5676748 (= e!3494154 e!3494155)))

(declare-fun res!2398954 () Bool)

(assert (=> b!5676748 (=> (not res!2398954) (not e!3494155))))

(assert (=> b!5676748 (= res!2398954 (dynLambda!24723 lambda!305722 (h!69624 (unfocusZipperList!1095 zl!343))))))

(declare-fun b!5676749 () Bool)

(assert (=> b!5676749 (= e!3494155 (forall!14815 (t!376608 (unfocusZipperList!1095 zl!343)) lambda!305722))))

(assert (= (and d!1791817 (not res!2398953)) b!5676748))

(assert (= (and b!5676748 res!2398954) b!5676749))

(declare-fun b_lambda!214657 () Bool)

(assert (=> (not b_lambda!214657) (not b!5676748)))

(declare-fun m!6637308 () Bool)

(assert (=> b!5676748 m!6637308))

(declare-fun m!6637310 () Bool)

(assert (=> b!5676749 m!6637310))

(assert (=> d!1791463 d!1791817))

(declare-fun b!5676750 () Bool)

(declare-fun res!2398959 () Bool)

(declare-fun e!3494157 () Bool)

(assert (=> b!5676750 (=> res!2398959 e!3494157)))

(assert (=> b!5676750 (= res!2398959 (not (isEmpty!35028 (tail!11140 (tail!11140 s!2326)))))))

(declare-fun b!5676751 () Bool)

(declare-fun e!3494156 () Bool)

(declare-fun lt!2269698 () Bool)

(declare-fun call!430806 () Bool)

(assert (=> b!5676751 (= e!3494156 (= lt!2269698 call!430806))))

(declare-fun b!5676752 () Bool)

(declare-fun e!3494158 () Bool)

(assert (=> b!5676752 (= e!3494158 (= (head!12045 (tail!11140 s!2326)) (c!998425 (derivativeStep!4486 r!7292 (head!12045 s!2326)))))))

(declare-fun b!5676754 () Bool)

(declare-fun res!2398961 () Bool)

(declare-fun e!3494161 () Bool)

(assert (=> b!5676754 (=> res!2398961 e!3494161)))

(assert (=> b!5676754 (= res!2398961 e!3494158)))

(declare-fun res!2398957 () Bool)

(assert (=> b!5676754 (=> (not res!2398957) (not e!3494158))))

(assert (=> b!5676754 (= res!2398957 lt!2269698)))

(declare-fun b!5676755 () Bool)

(declare-fun res!2398956 () Bool)

(assert (=> b!5676755 (=> res!2398956 e!3494161)))

(assert (=> b!5676755 (= res!2398956 (not ((_ is ElementMatch!15667) (derivativeStep!4486 r!7292 (head!12045 s!2326)))))))

(declare-fun e!3494162 () Bool)

(assert (=> b!5676755 (= e!3494162 e!3494161)))

(declare-fun b!5676756 () Bool)

(declare-fun res!2398962 () Bool)

(assert (=> b!5676756 (=> (not res!2398962) (not e!3494158))))

(assert (=> b!5676756 (= res!2398962 (isEmpty!35028 (tail!11140 (tail!11140 s!2326))))))

(declare-fun b!5676757 () Bool)

(declare-fun res!2398960 () Bool)

(assert (=> b!5676757 (=> (not res!2398960) (not e!3494158))))

(assert (=> b!5676757 (= res!2398960 (not call!430806))))

(declare-fun b!5676758 () Bool)

(assert (=> b!5676758 (= e!3494156 e!3494162)))

(declare-fun c!998754 () Bool)

(assert (=> b!5676758 (= c!998754 ((_ is EmptyLang!15667) (derivativeStep!4486 r!7292 (head!12045 s!2326))))))

(declare-fun b!5676759 () Bool)

(declare-fun e!3494159 () Bool)

(assert (=> b!5676759 (= e!3494159 (nullable!5699 (derivativeStep!4486 r!7292 (head!12045 s!2326))))))

(declare-fun b!5676760 () Bool)

(assert (=> b!5676760 (= e!3494159 (matchR!7852 (derivativeStep!4486 (derivativeStep!4486 r!7292 (head!12045 s!2326)) (head!12045 (tail!11140 s!2326))) (tail!11140 (tail!11140 s!2326))))))

(declare-fun b!5676753 () Bool)

(assert (=> b!5676753 (= e!3494157 (not (= (head!12045 (tail!11140 s!2326)) (c!998425 (derivativeStep!4486 r!7292 (head!12045 s!2326))))))))

(declare-fun d!1791819 () Bool)

(assert (=> d!1791819 e!3494156))

(declare-fun c!998753 () Bool)

(assert (=> d!1791819 (= c!998753 ((_ is EmptyExpr!15667) (derivativeStep!4486 r!7292 (head!12045 s!2326))))))

(assert (=> d!1791819 (= lt!2269698 e!3494159)))

(declare-fun c!998752 () Bool)

(assert (=> d!1791819 (= c!998752 (isEmpty!35028 (tail!11140 s!2326)))))

(assert (=> d!1791819 (validRegex!7403 (derivativeStep!4486 r!7292 (head!12045 s!2326)))))

(assert (=> d!1791819 (= (matchR!7852 (derivativeStep!4486 r!7292 (head!12045 s!2326)) (tail!11140 s!2326)) lt!2269698)))

(declare-fun b!5676761 () Bool)

(declare-fun e!3494160 () Bool)

(assert (=> b!5676761 (= e!3494160 e!3494157)))

(declare-fun res!2398955 () Bool)

(assert (=> b!5676761 (=> res!2398955 e!3494157)))

(assert (=> b!5676761 (= res!2398955 call!430806)))

(declare-fun b!5676762 () Bool)

(assert (=> b!5676762 (= e!3494161 e!3494160)))

(declare-fun res!2398958 () Bool)

(assert (=> b!5676762 (=> (not res!2398958) (not e!3494160))))

(assert (=> b!5676762 (= res!2398958 (not lt!2269698))))

(declare-fun bm!430801 () Bool)

(assert (=> bm!430801 (= call!430806 (isEmpty!35028 (tail!11140 s!2326)))))

(declare-fun b!5676763 () Bool)

(assert (=> b!5676763 (= e!3494162 (not lt!2269698))))

(assert (= (and d!1791819 c!998752) b!5676759))

(assert (= (and d!1791819 (not c!998752)) b!5676760))

(assert (= (and d!1791819 c!998753) b!5676751))

(assert (= (and d!1791819 (not c!998753)) b!5676758))

(assert (= (and b!5676758 c!998754) b!5676763))

(assert (= (and b!5676758 (not c!998754)) b!5676755))

(assert (= (and b!5676755 (not res!2398956)) b!5676754))

(assert (= (and b!5676754 res!2398957) b!5676757))

(assert (= (and b!5676757 res!2398960) b!5676756))

(assert (= (and b!5676756 res!2398962) b!5676752))

(assert (= (and b!5676754 (not res!2398961)) b!5676762))

(assert (= (and b!5676762 res!2398958) b!5676761))

(assert (= (and b!5676761 (not res!2398955)) b!5676750))

(assert (= (and b!5676750 (not res!2398959)) b!5676753))

(assert (= (or b!5676751 b!5676757 b!5676761) bm!430801))

(assert (=> bm!430801 m!6636722))

(assert (=> bm!430801 m!6636724))

(assert (=> b!5676753 m!6636722))

(declare-fun m!6637312 () Bool)

(assert (=> b!5676753 m!6637312))

(assert (=> b!5676752 m!6636722))

(assert (=> b!5676752 m!6637312))

(assert (=> b!5676759 m!6636726))

(declare-fun m!6637314 () Bool)

(assert (=> b!5676759 m!6637314))

(assert (=> b!5676750 m!6636722))

(declare-fun m!6637316 () Bool)

(assert (=> b!5676750 m!6637316))

(assert (=> b!5676750 m!6637316))

(declare-fun m!6637318 () Bool)

(assert (=> b!5676750 m!6637318))

(assert (=> d!1791819 m!6636722))

(assert (=> d!1791819 m!6636724))

(assert (=> d!1791819 m!6636726))

(declare-fun m!6637320 () Bool)

(assert (=> d!1791819 m!6637320))

(assert (=> b!5676760 m!6636722))

(assert (=> b!5676760 m!6637312))

(assert (=> b!5676760 m!6636726))

(assert (=> b!5676760 m!6637312))

(declare-fun m!6637322 () Bool)

(assert (=> b!5676760 m!6637322))

(assert (=> b!5676760 m!6636722))

(assert (=> b!5676760 m!6637316))

(assert (=> b!5676760 m!6637322))

(assert (=> b!5676760 m!6637316))

(declare-fun m!6637324 () Bool)

(assert (=> b!5676760 m!6637324))

(assert (=> b!5676756 m!6636722))

(assert (=> b!5676756 m!6637316))

(assert (=> b!5676756 m!6637316))

(assert (=> b!5676756 m!6637318))

(assert (=> b!5676149 d!1791819))

(declare-fun b!5676806 () Bool)

(declare-fun e!3494192 () Regex!15667)

(declare-fun e!3494191 () Regex!15667)

(assert (=> b!5676806 (= e!3494192 e!3494191)))

(declare-fun c!998771 () Bool)

(assert (=> b!5676806 (= c!998771 ((_ is ElementMatch!15667) r!7292))))

(declare-fun c!998772 () Bool)

(declare-fun call!430815 () Regex!15667)

(declare-fun bm!430810 () Bool)

(declare-fun c!998769 () Bool)

(assert (=> bm!430810 (= call!430815 (derivativeStep!4486 (ite c!998772 (regTwo!31847 r!7292) (ite c!998769 (reg!15996 r!7292) (regOne!31846 r!7292))) (head!12045 s!2326)))))

(declare-fun b!5676807 () Bool)

(declare-fun c!998770 () Bool)

(assert (=> b!5676807 (= c!998770 (nullable!5699 (regOne!31846 r!7292)))))

(declare-fun e!3494189 () Regex!15667)

(declare-fun e!3494193 () Regex!15667)

(assert (=> b!5676807 (= e!3494189 e!3494193)))

(declare-fun bm!430811 () Bool)

(declare-fun call!430816 () Regex!15667)

(assert (=> bm!430811 (= call!430816 call!430815)))

(declare-fun bm!430812 () Bool)

(declare-fun call!430817 () Regex!15667)

(declare-fun call!430818 () Regex!15667)

(assert (=> bm!430812 (= call!430817 call!430818)))

(declare-fun b!5676808 () Bool)

(declare-fun e!3494190 () Regex!15667)

(assert (=> b!5676808 (= e!3494190 (Union!15667 call!430818 call!430815))))

(declare-fun b!5676809 () Bool)

(assert (=> b!5676809 (= c!998772 ((_ is Union!15667) r!7292))))

(assert (=> b!5676809 (= e!3494191 e!3494190)))

(declare-fun b!5676810 () Bool)

(assert (=> b!5676810 (= e!3494192 EmptyLang!15667)))

(declare-fun b!5676811 () Bool)

(assert (=> b!5676811 (= e!3494191 (ite (= (head!12045 s!2326) (c!998425 r!7292)) EmptyExpr!15667 EmptyLang!15667))))

(declare-fun bm!430813 () Bool)

(assert (=> bm!430813 (= call!430818 (derivativeStep!4486 (ite c!998772 (regOne!31847 r!7292) (ite c!998770 (regTwo!31846 r!7292) (regOne!31846 r!7292))) (head!12045 s!2326)))))

(declare-fun b!5676812 () Bool)

(assert (=> b!5676812 (= e!3494189 (Concat!24512 call!430816 r!7292))))

(declare-fun b!5676813 () Bool)

(assert (=> b!5676813 (= e!3494193 (Union!15667 (Concat!24512 call!430816 (regTwo!31846 r!7292)) call!430817))))

(declare-fun d!1791821 () Bool)

(declare-fun lt!2269707 () Regex!15667)

(assert (=> d!1791821 (validRegex!7403 lt!2269707)))

(assert (=> d!1791821 (= lt!2269707 e!3494192)))

(declare-fun c!998773 () Bool)

(assert (=> d!1791821 (= c!998773 (or ((_ is EmptyExpr!15667) r!7292) ((_ is EmptyLang!15667) r!7292)))))

(assert (=> d!1791821 (validRegex!7403 r!7292)))

(assert (=> d!1791821 (= (derivativeStep!4486 r!7292 (head!12045 s!2326)) lt!2269707)))

(declare-fun b!5676814 () Bool)

(assert (=> b!5676814 (= e!3494193 (Union!15667 (Concat!24512 call!430817 (regTwo!31846 r!7292)) EmptyLang!15667))))

(declare-fun b!5676815 () Bool)

(assert (=> b!5676815 (= e!3494190 e!3494189)))

(assert (=> b!5676815 (= c!998769 ((_ is Star!15667) r!7292))))

(assert (= (and d!1791821 c!998773) b!5676810))

(assert (= (and d!1791821 (not c!998773)) b!5676806))

(assert (= (and b!5676806 c!998771) b!5676811))

(assert (= (and b!5676806 (not c!998771)) b!5676809))

(assert (= (and b!5676809 c!998772) b!5676808))

(assert (= (and b!5676809 (not c!998772)) b!5676815))

(assert (= (and b!5676815 c!998769) b!5676812))

(assert (= (and b!5676815 (not c!998769)) b!5676807))

(assert (= (and b!5676807 c!998770) b!5676813))

(assert (= (and b!5676807 (not c!998770)) b!5676814))

(assert (= (or b!5676813 b!5676814) bm!430812))

(assert (= (or b!5676812 b!5676813) bm!430811))

(assert (= (or b!5676808 bm!430811) bm!430810))

(assert (= (or b!5676808 bm!430812) bm!430813))

(assert (=> bm!430810 m!6636718))

(declare-fun m!6637366 () Bool)

(assert (=> bm!430810 m!6637366))

(assert (=> b!5676807 m!6637086))

(assert (=> bm!430813 m!6636718))

(declare-fun m!6637368 () Bool)

(assert (=> bm!430813 m!6637368))

(declare-fun m!6637370 () Bool)

(assert (=> d!1791821 m!6637370))

(assert (=> d!1791821 m!6636390))

(assert (=> b!5676149 d!1791821))

(assert (=> b!5676149 d!1791641))

(assert (=> b!5676149 d!1791747))

(declare-fun bs!1323339 () Bool)

(declare-fun b!5676820 () Bool)

(assert (= bs!1323339 (and b!5676820 d!1791511)))

(declare-fun lambda!305806 () Int)

(assert (=> bs!1323339 (not (= lambda!305806 lambda!305747))))

(declare-fun bs!1323341 () Bool)

(assert (= bs!1323341 (and b!5676820 d!1791761)))

(assert (=> bs!1323341 (not (= lambda!305806 lambda!305793))))

(declare-fun bs!1323343 () Bool)

(assert (= bs!1323343 (and b!5676820 b!5675588)))

(assert (=> bs!1323343 (not (= lambda!305806 lambda!305713))))

(declare-fun bs!1323345 () Bool)

(assert (= bs!1323345 (and b!5676820 d!1791499)))

(assert (=> bs!1323345 (not (= lambda!305806 lambda!305736))))

(declare-fun bs!1323347 () Bool)

(assert (= bs!1323347 (and b!5676820 b!5676105)))

(assert (=> bs!1323347 (not (= lambda!305806 lambda!305767))))

(declare-fun bs!1323349 () Bool)

(assert (= bs!1323349 (and b!5676820 b!5676706)))

(assert (=> bs!1323349 (= (and (= (reg!15996 (regOne!31847 r!7292)) (reg!15996 (regTwo!31847 r!7292))) (= (regOne!31847 r!7292) (regTwo!31847 r!7292))) (= lambda!305806 lambda!305795))))

(declare-fun bs!1323351 () Bool)

(assert (= bs!1323351 (and b!5676820 b!5676711)))

(assert (=> bs!1323351 (not (= lambda!305806 lambda!305796))))

(declare-fun bs!1323353 () Bool)

(assert (= bs!1323353 (and b!5676820 b!5676100)))

(assert (=> bs!1323353 (= (and (= (reg!15996 (regOne!31847 r!7292)) (reg!15996 r!7292)) (= (regOne!31847 r!7292) r!7292)) (= lambda!305806 lambda!305766))))

(assert (=> bs!1323343 (not (= lambda!305806 lambda!305714))))

(assert (=> bs!1323345 (not (= lambda!305806 lambda!305735))))

(assert (=> b!5676820 true))

(assert (=> b!5676820 true))

(declare-fun bs!1323355 () Bool)

(declare-fun b!5676825 () Bool)

(assert (= bs!1323355 (and b!5676825 d!1791511)))

(declare-fun lambda!305809 () Int)

(assert (=> bs!1323355 (not (= lambda!305809 lambda!305747))))

(declare-fun bs!1323356 () Bool)

(assert (= bs!1323356 (and b!5676825 d!1791761)))

(assert (=> bs!1323356 (not (= lambda!305809 lambda!305793))))

(declare-fun bs!1323357 () Bool)

(assert (= bs!1323357 (and b!5676825 b!5675588)))

(assert (=> bs!1323357 (not (= lambda!305809 lambda!305713))))

(declare-fun bs!1323358 () Bool)

(assert (= bs!1323358 (and b!5676825 d!1791499)))

(assert (=> bs!1323358 (= (and (= (regOne!31846 (regOne!31847 r!7292)) (regOne!31846 r!7292)) (= (regTwo!31846 (regOne!31847 r!7292)) (regTwo!31846 r!7292))) (= lambda!305809 lambda!305736))))

(declare-fun bs!1323359 () Bool)

(assert (= bs!1323359 (and b!5676825 b!5676820)))

(assert (=> bs!1323359 (not (= lambda!305809 lambda!305806))))

(declare-fun bs!1323360 () Bool)

(assert (= bs!1323360 (and b!5676825 b!5676105)))

(assert (=> bs!1323360 (= (and (= (regOne!31846 (regOne!31847 r!7292)) (regOne!31846 r!7292)) (= (regTwo!31846 (regOne!31847 r!7292)) (regTwo!31846 r!7292))) (= lambda!305809 lambda!305767))))

(declare-fun bs!1323361 () Bool)

(assert (= bs!1323361 (and b!5676825 b!5676706)))

(assert (=> bs!1323361 (not (= lambda!305809 lambda!305795))))

(declare-fun bs!1323362 () Bool)

(assert (= bs!1323362 (and b!5676825 b!5676711)))

(assert (=> bs!1323362 (= (and (= (regOne!31846 (regOne!31847 r!7292)) (regOne!31846 (regTwo!31847 r!7292))) (= (regTwo!31846 (regOne!31847 r!7292)) (regTwo!31846 (regTwo!31847 r!7292)))) (= lambda!305809 lambda!305796))))

(declare-fun bs!1323363 () Bool)

(assert (= bs!1323363 (and b!5676825 b!5676100)))

(assert (=> bs!1323363 (not (= lambda!305809 lambda!305766))))

(assert (=> bs!1323357 (= (and (= (regOne!31846 (regOne!31847 r!7292)) (regOne!31846 r!7292)) (= (regTwo!31846 (regOne!31847 r!7292)) (regTwo!31846 r!7292))) (= lambda!305809 lambda!305714))))

(assert (=> bs!1323358 (not (= lambda!305809 lambda!305735))))

(assert (=> b!5676825 true))

(assert (=> b!5676825 true))

(declare-fun c!998777 () Bool)

(declare-fun call!430819 () Bool)

(declare-fun bm!430814 () Bool)

(assert (=> bm!430814 (= call!430819 (Exists!2767 (ite c!998777 lambda!305806 lambda!305809)))))

(declare-fun e!3494198 () Bool)

(assert (=> b!5676820 (= e!3494198 call!430819)))

(declare-fun b!5676821 () Bool)

(declare-fun e!3494200 () Bool)

(declare-fun e!3494196 () Bool)

(assert (=> b!5676821 (= e!3494200 e!3494196)))

(assert (=> b!5676821 (= c!998777 ((_ is Star!15667) (regOne!31847 r!7292)))))

(declare-fun b!5676822 () Bool)

(declare-fun c!998774 () Bool)

(assert (=> b!5676822 (= c!998774 ((_ is Union!15667) (regOne!31847 r!7292)))))

(declare-fun e!3494202 () Bool)

(assert (=> b!5676822 (= e!3494202 e!3494200)))

(declare-fun bm!430815 () Bool)

(declare-fun call!430820 () Bool)

(assert (=> bm!430815 (= call!430820 (isEmpty!35028 s!2326))))

(declare-fun b!5676823 () Bool)

(declare-fun e!3494199 () Bool)

(assert (=> b!5676823 (= e!3494199 (matchRSpec!2770 (regTwo!31847 (regOne!31847 r!7292)) s!2326))))

(declare-fun b!5676824 () Bool)

(declare-fun res!2398985 () Bool)

(assert (=> b!5676824 (=> res!2398985 e!3494198)))

(assert (=> b!5676824 (= res!2398985 call!430820)))

(assert (=> b!5676824 (= e!3494196 e!3494198)))

(assert (=> b!5676825 (= e!3494196 call!430819)))

(declare-fun b!5676826 () Bool)

(declare-fun c!998775 () Bool)

(assert (=> b!5676826 (= c!998775 ((_ is ElementMatch!15667) (regOne!31847 r!7292)))))

(declare-fun e!3494197 () Bool)

(assert (=> b!5676826 (= e!3494197 e!3494202)))

(declare-fun b!5676827 () Bool)

(declare-fun e!3494201 () Bool)

(assert (=> b!5676827 (= e!3494201 e!3494197)))

(declare-fun res!2398986 () Bool)

(assert (=> b!5676827 (= res!2398986 (not ((_ is EmptyLang!15667) (regOne!31847 r!7292))))))

(assert (=> b!5676827 (=> (not res!2398986) (not e!3494197))))

(declare-fun b!5676828 () Bool)

(assert (=> b!5676828 (= e!3494201 call!430820)))

(declare-fun b!5676829 () Bool)

(assert (=> b!5676829 (= e!3494200 e!3494199)))

(declare-fun res!2398987 () Bool)

(assert (=> b!5676829 (= res!2398987 (matchRSpec!2770 (regOne!31847 (regOne!31847 r!7292)) s!2326))))

(assert (=> b!5676829 (=> res!2398987 e!3494199)))

(declare-fun b!5676830 () Bool)

(assert (=> b!5676830 (= e!3494202 (= s!2326 (Cons!63178 (c!998425 (regOne!31847 r!7292)) Nil!63178)))))

(declare-fun d!1791843 () Bool)

(declare-fun c!998776 () Bool)

(assert (=> d!1791843 (= c!998776 ((_ is EmptyExpr!15667) (regOne!31847 r!7292)))))

(assert (=> d!1791843 (= (matchRSpec!2770 (regOne!31847 r!7292) s!2326) e!3494201)))

(assert (= (and d!1791843 c!998776) b!5676828))

(assert (= (and d!1791843 (not c!998776)) b!5676827))

(assert (= (and b!5676827 res!2398986) b!5676826))

(assert (= (and b!5676826 c!998775) b!5676830))

(assert (= (and b!5676826 (not c!998775)) b!5676822))

(assert (= (and b!5676822 c!998774) b!5676829))

(assert (= (and b!5676822 (not c!998774)) b!5676821))

(assert (= (and b!5676829 (not res!2398987)) b!5676823))

(assert (= (and b!5676821 c!998777) b!5676824))

(assert (= (and b!5676821 (not c!998777)) b!5676825))

(assert (= (and b!5676824 (not res!2398985)) b!5676820))

(assert (= (or b!5676820 b!5676825) bm!430814))

(assert (= (or b!5676828 b!5676824) bm!430815))

(declare-fun m!6637378 () Bool)

(assert (=> bm!430814 m!6637378))

(assert (=> bm!430815 m!6636712))

(declare-fun m!6637382 () Bool)

(assert (=> b!5676823 m!6637382))

(declare-fun m!6637386 () Bool)

(assert (=> b!5676829 m!6637386))

(assert (=> b!5676109 d!1791843))

(declare-fun b!5676840 () Bool)

(declare-fun e!3494213 () Bool)

(declare-fun call!430824 () Bool)

(assert (=> b!5676840 (= e!3494213 call!430824)))

(declare-fun b!5676842 () Bool)

(declare-fun e!3494210 () Bool)

(declare-fun e!3494211 () Bool)

(assert (=> b!5676842 (= e!3494210 e!3494211)))

(declare-fun res!2398997 () Bool)

(declare-fun call!430825 () Bool)

(assert (=> b!5676842 (= res!2398997 call!430825)))

(assert (=> b!5676842 (=> (not res!2398997) (not e!3494211))))

(declare-fun b!5676843 () Bool)

(declare-fun e!3494215 () Bool)

(assert (=> b!5676843 (= e!3494215 e!3494210)))

(declare-fun c!998780 () Bool)

(assert (=> b!5676843 (= c!998780 ((_ is Union!15667) (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5676844 () Bool)

(assert (=> b!5676844 (= e!3494210 e!3494213)))

(declare-fun res!2398996 () Bool)

(assert (=> b!5676844 (= res!2398996 call!430825)))

(assert (=> b!5676844 (=> res!2398996 e!3494213)))

(declare-fun bm!430819 () Bool)

(assert (=> bm!430819 (= call!430824 (nullable!5699 (ite c!998780 (regTwo!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))))))

(declare-fun bm!430820 () Bool)

(assert (=> bm!430820 (= call!430825 (nullable!5699 (ite c!998780 (regOne!31847 (h!69624 (exprs!5551 (h!69625 zl!343)))) (regOne!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))))))))

(declare-fun b!5676845 () Bool)

(assert (=> b!5676845 (= e!3494211 call!430824)))

(declare-fun b!5676846 () Bool)

(declare-fun e!3494212 () Bool)

(declare-fun e!3494214 () Bool)

(assert (=> b!5676846 (= e!3494212 e!3494214)))

(declare-fun res!2398993 () Bool)

(assert (=> b!5676846 (=> (not res!2398993) (not e!3494214))))

(assert (=> b!5676846 (= res!2398993 (and (not ((_ is EmptyLang!15667) (h!69624 (exprs!5551 (h!69625 zl!343))))) (not ((_ is ElementMatch!15667) (h!69624 (exprs!5551 (h!69625 zl!343)))))))))

(declare-fun d!1791849 () Bool)

(declare-fun res!2398994 () Bool)

(assert (=> d!1791849 (=> res!2398994 e!3494212)))

(assert (=> d!1791849 (= res!2398994 ((_ is EmptyExpr!15667) (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(assert (=> d!1791849 (= (nullableFct!1779 (h!69624 (exprs!5551 (h!69625 zl!343)))) e!3494212)))

(declare-fun b!5676841 () Bool)

(assert (=> b!5676841 (= e!3494214 e!3494215)))

(declare-fun res!2398995 () Bool)

(assert (=> b!5676841 (=> res!2398995 e!3494215)))

(assert (=> b!5676841 (= res!2398995 ((_ is Star!15667) (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(assert (= (and d!1791849 (not res!2398994)) b!5676846))

(assert (= (and b!5676846 res!2398993) b!5676841))

(assert (= (and b!5676841 (not res!2398995)) b!5676843))

(assert (= (and b!5676843 c!998780) b!5676844))

(assert (= (and b!5676843 (not c!998780)) b!5676842))

(assert (= (and b!5676844 (not res!2398996)) b!5676840))

(assert (= (and b!5676842 res!2398997) b!5676845))

(assert (= (or b!5676840 b!5676845) bm!430819))

(assert (= (or b!5676844 b!5676842) bm!430820))

(declare-fun m!6637390 () Bool)

(assert (=> bm!430819 m!6637390))

(declare-fun m!6637392 () Bool)

(assert (=> bm!430820 m!6637392))

(assert (=> d!1791561 d!1791849))

(declare-fun bs!1323365 () Bool)

(declare-fun d!1791853 () Bool)

(assert (= bs!1323365 (and d!1791853 d!1791621)))

(declare-fun lambda!305810 () Int)

(assert (=> bs!1323365 (= lambda!305810 lambda!305776)))

(declare-fun bs!1323366 () Bool)

(assert (= bs!1323366 (and d!1791853 d!1791785)))

(assert (=> bs!1323366 (= lambda!305810 lambda!305794)))

(assert (=> d!1791853 (= (nullableZipper!1633 lt!2269585) (exists!2205 lt!2269585 lambda!305810))))

(declare-fun bs!1323367 () Bool)

(assert (= bs!1323367 d!1791853))

(declare-fun m!6637404 () Bool)

(assert (=> bs!1323367 m!6637404))

(assert (=> b!5675602 d!1791853))

(declare-fun d!1791855 () Bool)

(assert (=> d!1791855 (= (isEmpty!35030 (findConcatSeparation!2090 (regOne!31846 r!7292) (regTwo!31846 r!7292) Nil!63178 s!2326 s!2326)) (not ((_ is Some!15675) (findConcatSeparation!2090 (regOne!31846 r!7292) (regTwo!31846 r!7292) Nil!63178 s!2326 s!2326))))))

(assert (=> d!1791509 d!1791855))

(declare-fun d!1791861 () Bool)

(assert (=> d!1791861 (= (isEmpty!35025 (exprs!5551 (h!69625 zl!343))) ((_ is Nil!63176) (exprs!5551 (h!69625 zl!343))))))

(assert (=> b!5676217 d!1791861))

(declare-fun b!5676861 () Bool)

(declare-fun e!3494226 () Bool)

(declare-fun e!3494224 () Bool)

(assert (=> b!5676861 (= e!3494226 e!3494224)))

(declare-fun c!998784 () Bool)

(assert (=> b!5676861 (= c!998784 ((_ is Union!15667) lt!2269665))))

(declare-fun b!5676862 () Bool)

(declare-fun e!3494223 () Bool)

(declare-fun call!430828 () Bool)

(assert (=> b!5676862 (= e!3494223 call!430828)))

(declare-fun b!5676863 () Bool)

(declare-fun res!2399009 () Bool)

(assert (=> b!5676863 (=> (not res!2399009) (not e!3494223))))

(declare-fun call!430827 () Bool)

(assert (=> b!5676863 (= res!2399009 call!430827)))

(assert (=> b!5676863 (= e!3494224 e!3494223)))

(declare-fun b!5676864 () Bool)

(declare-fun e!3494225 () Bool)

(assert (=> b!5676864 (= e!3494225 call!430828)))

(declare-fun b!5676865 () Bool)

(declare-fun res!2399007 () Bool)

(declare-fun e!3494229 () Bool)

(assert (=> b!5676865 (=> res!2399007 e!3494229)))

(assert (=> b!5676865 (= res!2399007 (not ((_ is Concat!24512) lt!2269665)))))

(assert (=> b!5676865 (= e!3494224 e!3494229)))

(declare-fun b!5676866 () Bool)

(declare-fun e!3494227 () Bool)

(declare-fun call!430829 () Bool)

(assert (=> b!5676866 (= e!3494227 call!430829)))

(declare-fun b!5676867 () Bool)

(assert (=> b!5676867 (= e!3494226 e!3494227)))

(declare-fun res!2399006 () Bool)

(assert (=> b!5676867 (= res!2399006 (not (nullable!5699 (reg!15996 lt!2269665))))))

(assert (=> b!5676867 (=> (not res!2399006) (not e!3494227))))

(declare-fun bm!430822 () Bool)

(declare-fun c!998785 () Bool)

(assert (=> bm!430822 (= call!430829 (validRegex!7403 (ite c!998785 (reg!15996 lt!2269665) (ite c!998784 (regTwo!31847 lt!2269665) (regTwo!31846 lt!2269665)))))))

(declare-fun d!1791865 () Bool)

(declare-fun res!2399010 () Bool)

(declare-fun e!3494228 () Bool)

(assert (=> d!1791865 (=> res!2399010 e!3494228)))

(assert (=> d!1791865 (= res!2399010 ((_ is ElementMatch!15667) lt!2269665))))

(assert (=> d!1791865 (= (validRegex!7403 lt!2269665) e!3494228)))

(declare-fun bm!430823 () Bool)

(assert (=> bm!430823 (= call!430828 call!430829)))

(declare-fun bm!430824 () Bool)

(assert (=> bm!430824 (= call!430827 (validRegex!7403 (ite c!998784 (regOne!31847 lt!2269665) (regOne!31846 lt!2269665))))))

(declare-fun b!5676868 () Bool)

(assert (=> b!5676868 (= e!3494228 e!3494226)))

(assert (=> b!5676868 (= c!998785 ((_ is Star!15667) lt!2269665))))

(declare-fun b!5676869 () Bool)

(assert (=> b!5676869 (= e!3494229 e!3494225)))

(declare-fun res!2399008 () Bool)

(assert (=> b!5676869 (=> (not res!2399008) (not e!3494225))))

(assert (=> b!5676869 (= res!2399008 call!430827)))

(assert (= (and d!1791865 (not res!2399010)) b!5676868))

(assert (= (and b!5676868 c!998785) b!5676867))

(assert (= (and b!5676868 (not c!998785)) b!5676861))

(assert (= (and b!5676867 res!2399006) b!5676866))

(assert (= (and b!5676861 c!998784) b!5676863))

(assert (= (and b!5676861 (not c!998784)) b!5676865))

(assert (= (and b!5676863 res!2399009) b!5676862))

(assert (= (and b!5676865 (not res!2399007)) b!5676869))

(assert (= (and b!5676869 res!2399008) b!5676864))

(assert (= (or b!5676862 b!5676864) bm!430823))

(assert (= (or b!5676863 b!5676869) bm!430824))

(assert (= (or b!5676866 bm!430823) bm!430822))

(declare-fun m!6637412 () Bool)

(assert (=> b!5676867 m!6637412))

(declare-fun m!6637414 () Bool)

(assert (=> bm!430822 m!6637414))

(declare-fun m!6637416 () Bool)

(assert (=> bm!430824 m!6637416))

(assert (=> d!1791575 d!1791865))

(declare-fun d!1791869 () Bool)

(declare-fun res!2399011 () Bool)

(declare-fun e!3494230 () Bool)

(assert (=> d!1791869 (=> res!2399011 e!3494230)))

(assert (=> d!1791869 (= res!2399011 ((_ is Nil!63176) (exprs!5551 (h!69625 zl!343))))))

(assert (=> d!1791869 (= (forall!14815 (exprs!5551 (h!69625 zl!343)) lambda!305771) e!3494230)))

(declare-fun b!5676870 () Bool)

(declare-fun e!3494231 () Bool)

(assert (=> b!5676870 (= e!3494230 e!3494231)))

(declare-fun res!2399012 () Bool)

(assert (=> b!5676870 (=> (not res!2399012) (not e!3494231))))

(assert (=> b!5676870 (= res!2399012 (dynLambda!24723 lambda!305771 (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun b!5676871 () Bool)

(assert (=> b!5676871 (= e!3494231 (forall!14815 (t!376608 (exprs!5551 (h!69625 zl!343))) lambda!305771))))

(assert (= (and d!1791869 (not res!2399011)) b!5676870))

(assert (= (and b!5676870 res!2399012) b!5676871))

(declare-fun b_lambda!214661 () Bool)

(assert (=> (not b_lambda!214661) (not b!5676870)))

(declare-fun m!6637418 () Bool)

(assert (=> b!5676870 m!6637418))

(declare-fun m!6637420 () Bool)

(assert (=> b!5676871 m!6637420))

(assert (=> d!1791575 d!1791869))

(declare-fun d!1791871 () Bool)

(assert (=> d!1791871 (= ($colon$colon!1700 (exprs!5551 lt!2269587) (ite (or c!998585 c!998582) (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (h!69624 (exprs!5551 (h!69625 zl!343))))) (Cons!63176 (ite (or c!998585 c!998582) (regTwo!31846 (h!69624 (exprs!5551 (h!69625 zl!343)))) (h!69624 (exprs!5551 (h!69625 zl!343)))) (exprs!5551 lt!2269587)))))

(assert (=> bm!430678 d!1791871))

(declare-fun b!5676872 () Bool)

(declare-fun res!2399017 () Bool)

(declare-fun e!3494233 () Bool)

(assert (=> b!5676872 (=> res!2399017 e!3494233)))

(assert (=> b!5676872 (= res!2399017 (not (isEmpty!35028 (tail!11140 (_1!36067 (get!21768 lt!2269613))))))))

(declare-fun b!5676873 () Bool)

(declare-fun e!3494232 () Bool)

(declare-fun lt!2269709 () Bool)

(declare-fun call!430830 () Bool)

(assert (=> b!5676873 (= e!3494232 (= lt!2269709 call!430830))))

(declare-fun b!5676874 () Bool)

(declare-fun e!3494234 () Bool)

(assert (=> b!5676874 (= e!3494234 (= (head!12045 (_1!36067 (get!21768 lt!2269613))) (c!998425 (regOne!31846 r!7292))))))

(declare-fun b!5676876 () Bool)

(declare-fun res!2399019 () Bool)

(declare-fun e!3494237 () Bool)

(assert (=> b!5676876 (=> res!2399019 e!3494237)))

(assert (=> b!5676876 (= res!2399019 e!3494234)))

(declare-fun res!2399015 () Bool)

(assert (=> b!5676876 (=> (not res!2399015) (not e!3494234))))

(assert (=> b!5676876 (= res!2399015 lt!2269709)))

(declare-fun b!5676877 () Bool)

(declare-fun res!2399014 () Bool)

(assert (=> b!5676877 (=> res!2399014 e!3494237)))

(assert (=> b!5676877 (= res!2399014 (not ((_ is ElementMatch!15667) (regOne!31846 r!7292))))))

(declare-fun e!3494238 () Bool)

(assert (=> b!5676877 (= e!3494238 e!3494237)))

(declare-fun b!5676878 () Bool)

(declare-fun res!2399020 () Bool)

(assert (=> b!5676878 (=> (not res!2399020) (not e!3494234))))

(assert (=> b!5676878 (= res!2399020 (isEmpty!35028 (tail!11140 (_1!36067 (get!21768 lt!2269613)))))))

(declare-fun b!5676879 () Bool)

(declare-fun res!2399018 () Bool)

(assert (=> b!5676879 (=> (not res!2399018) (not e!3494234))))

(assert (=> b!5676879 (= res!2399018 (not call!430830))))

(declare-fun b!5676880 () Bool)

(assert (=> b!5676880 (= e!3494232 e!3494238)))

(declare-fun c!998788 () Bool)

(assert (=> b!5676880 (= c!998788 ((_ is EmptyLang!15667) (regOne!31846 r!7292)))))

(declare-fun b!5676881 () Bool)

(declare-fun e!3494235 () Bool)

(assert (=> b!5676881 (= e!3494235 (nullable!5699 (regOne!31846 r!7292)))))

(declare-fun b!5676882 () Bool)

(assert (=> b!5676882 (= e!3494235 (matchR!7852 (derivativeStep!4486 (regOne!31846 r!7292) (head!12045 (_1!36067 (get!21768 lt!2269613)))) (tail!11140 (_1!36067 (get!21768 lt!2269613)))))))

(declare-fun b!5676875 () Bool)

(assert (=> b!5676875 (= e!3494233 (not (= (head!12045 (_1!36067 (get!21768 lt!2269613))) (c!998425 (regOne!31846 r!7292)))))))

(declare-fun d!1791873 () Bool)

(assert (=> d!1791873 e!3494232))

(declare-fun c!998787 () Bool)

(assert (=> d!1791873 (= c!998787 ((_ is EmptyExpr!15667) (regOne!31846 r!7292)))))

(assert (=> d!1791873 (= lt!2269709 e!3494235)))

(declare-fun c!998786 () Bool)

(assert (=> d!1791873 (= c!998786 (isEmpty!35028 (_1!36067 (get!21768 lt!2269613))))))

(assert (=> d!1791873 (validRegex!7403 (regOne!31846 r!7292))))

(assert (=> d!1791873 (= (matchR!7852 (regOne!31846 r!7292) (_1!36067 (get!21768 lt!2269613))) lt!2269709)))

(declare-fun b!5676883 () Bool)

(declare-fun e!3494236 () Bool)

(assert (=> b!5676883 (= e!3494236 e!3494233)))

(declare-fun res!2399013 () Bool)

(assert (=> b!5676883 (=> res!2399013 e!3494233)))

(assert (=> b!5676883 (= res!2399013 call!430830)))

(declare-fun b!5676884 () Bool)

(assert (=> b!5676884 (= e!3494237 e!3494236)))

(declare-fun res!2399016 () Bool)

(assert (=> b!5676884 (=> (not res!2399016) (not e!3494236))))

(assert (=> b!5676884 (= res!2399016 (not lt!2269709))))

(declare-fun bm!430825 () Bool)

(assert (=> bm!430825 (= call!430830 (isEmpty!35028 (_1!36067 (get!21768 lt!2269613))))))

(declare-fun b!5676885 () Bool)

(assert (=> b!5676885 (= e!3494238 (not lt!2269709))))

(assert (= (and d!1791873 c!998786) b!5676881))

(assert (= (and d!1791873 (not c!998786)) b!5676882))

(assert (= (and d!1791873 c!998787) b!5676873))

(assert (= (and d!1791873 (not c!998787)) b!5676880))

(assert (= (and b!5676880 c!998788) b!5676885))

(assert (= (and b!5676880 (not c!998788)) b!5676877))

(assert (= (and b!5676877 (not res!2399014)) b!5676876))

(assert (= (and b!5676876 res!2399015) b!5676879))

(assert (= (and b!5676879 res!2399018) b!5676878))

(assert (= (and b!5676878 res!2399020) b!5676874))

(assert (= (and b!5676876 (not res!2399019)) b!5676884))

(assert (= (and b!5676884 res!2399016) b!5676883))

(assert (= (and b!5676883 (not res!2399013)) b!5676872))

(assert (= (and b!5676872 (not res!2399017)) b!5676875))

(assert (= (or b!5676873 b!5676879 b!5676883) bm!430825))

(declare-fun m!6637422 () Bool)

(assert (=> bm!430825 m!6637422))

(declare-fun m!6637424 () Bool)

(assert (=> b!5676875 m!6637424))

(assert (=> b!5676874 m!6637424))

(assert (=> b!5676881 m!6637086))

(declare-fun m!6637426 () Bool)

(assert (=> b!5676872 m!6637426))

(assert (=> b!5676872 m!6637426))

(declare-fun m!6637428 () Bool)

(assert (=> b!5676872 m!6637428))

(assert (=> d!1791873 m!6637422))

(assert (=> d!1791873 m!6636546))

(assert (=> b!5676882 m!6637424))

(assert (=> b!5676882 m!6637424))

(declare-fun m!6637430 () Bool)

(assert (=> b!5676882 m!6637430))

(assert (=> b!5676882 m!6637426))

(assert (=> b!5676882 m!6637430))

(assert (=> b!5676882 m!6637426))

(declare-fun m!6637432 () Bool)

(assert (=> b!5676882 m!6637432))

(assert (=> b!5676878 m!6637426))

(assert (=> b!5676878 m!6637426))

(assert (=> b!5676878 m!6637428))

(assert (=> b!5675825 d!1791873))

(assert (=> b!5675825 d!1791703))

(declare-fun bs!1323369 () Bool)

(declare-fun d!1791875 () Bool)

(assert (= bs!1323369 (and d!1791875 d!1791573)))

(declare-fun lambda!305811 () Int)

(assert (=> bs!1323369 (= lambda!305811 lambda!305768)))

(declare-fun bs!1323370 () Bool)

(assert (= bs!1323370 (and d!1791875 d!1791647)))

(assert (=> bs!1323370 (= lambda!305811 lambda!305779)))

(declare-fun bs!1323371 () Bool)

(assert (= bs!1323371 (and d!1791875 d!1791469)))

(assert (=> bs!1323371 (= lambda!305811 lambda!305727)))

(declare-fun bs!1323372 () Bool)

(assert (= bs!1323372 (and d!1791875 d!1791611)))

(assert (=> bs!1323372 (= lambda!305811 lambda!305773)))

(declare-fun bs!1323373 () Bool)

(assert (= bs!1323373 (and d!1791875 d!1791801)))

(assert (=> bs!1323373 (= lambda!305811 lambda!305797)))

(declare-fun bs!1323374 () Bool)

(assert (= bs!1323374 (and d!1791875 d!1791463)))

(assert (=> bs!1323374 (= lambda!305811 lambda!305722)))

(declare-fun bs!1323375 () Bool)

(assert (= bs!1323375 (and d!1791875 d!1791547)))

(assert (=> bs!1323375 (= lambda!305811 lambda!305761)))

(declare-fun bs!1323376 () Bool)

(assert (= bs!1323376 (and d!1791875 d!1791631)))

(assert (=> bs!1323376 (= lambda!305811 lambda!305777)))

(declare-fun bs!1323377 () Bool)

(assert (= bs!1323377 (and d!1791875 d!1791575)))

(assert (=> bs!1323377 (= lambda!305811 lambda!305771)))

(declare-fun b!5676886 () Bool)

(declare-fun e!3494241 () Bool)

(declare-fun e!3494243 () Bool)

(assert (=> b!5676886 (= e!3494241 e!3494243)))

(declare-fun c!998792 () Bool)

(assert (=> b!5676886 (= c!998792 (isEmpty!35025 (t!376608 (unfocusZipperList!1095 zl!343))))))

(declare-fun b!5676887 () Bool)

(declare-fun e!3494240 () Regex!15667)

(assert (=> b!5676887 (= e!3494240 EmptyLang!15667)))

(declare-fun b!5676888 () Bool)

(declare-fun e!3494242 () Bool)

(declare-fun lt!2269710 () Regex!15667)

(assert (=> b!5676888 (= e!3494242 (= lt!2269710 (head!12046 (t!376608 (unfocusZipperList!1095 zl!343)))))))

(assert (=> d!1791875 e!3494241))

(declare-fun res!2399021 () Bool)

(assert (=> d!1791875 (=> (not res!2399021) (not e!3494241))))

(assert (=> d!1791875 (= res!2399021 (validRegex!7403 lt!2269710))))

(declare-fun e!3494239 () Regex!15667)

(assert (=> d!1791875 (= lt!2269710 e!3494239)))

(declare-fun c!998791 () Bool)

(declare-fun e!3494244 () Bool)

(assert (=> d!1791875 (= c!998791 e!3494244)))

(declare-fun res!2399022 () Bool)

(assert (=> d!1791875 (=> (not res!2399022) (not e!3494244))))

(assert (=> d!1791875 (= res!2399022 ((_ is Cons!63176) (t!376608 (unfocusZipperList!1095 zl!343))))))

(assert (=> d!1791875 (forall!14815 (t!376608 (unfocusZipperList!1095 zl!343)) lambda!305811)))

(assert (=> d!1791875 (= (generalisedUnion!1530 (t!376608 (unfocusZipperList!1095 zl!343))) lt!2269710)))

(declare-fun b!5676889 () Bool)

(assert (=> b!5676889 (= e!3494239 e!3494240)))

(declare-fun c!998789 () Bool)

(assert (=> b!5676889 (= c!998789 ((_ is Cons!63176) (t!376608 (unfocusZipperList!1095 zl!343))))))

(declare-fun b!5676890 () Bool)

(assert (=> b!5676890 (= e!3494243 (isEmptyLang!1201 lt!2269710))))

(declare-fun b!5676891 () Bool)

(assert (=> b!5676891 (= e!3494243 e!3494242)))

(declare-fun c!998790 () Bool)

(assert (=> b!5676891 (= c!998790 (isEmpty!35025 (tail!11141 (t!376608 (unfocusZipperList!1095 zl!343)))))))

(declare-fun b!5676892 () Bool)

(assert (=> b!5676892 (= e!3494242 (isUnion!631 lt!2269710))))

(declare-fun b!5676893 () Bool)

(assert (=> b!5676893 (= e!3494240 (Union!15667 (h!69624 (t!376608 (unfocusZipperList!1095 zl!343))) (generalisedUnion!1530 (t!376608 (t!376608 (unfocusZipperList!1095 zl!343))))))))

(declare-fun b!5676894 () Bool)

(assert (=> b!5676894 (= e!3494244 (isEmpty!35025 (t!376608 (t!376608 (unfocusZipperList!1095 zl!343)))))))

(declare-fun b!5676895 () Bool)

(assert (=> b!5676895 (= e!3494239 (h!69624 (t!376608 (unfocusZipperList!1095 zl!343))))))

(assert (= (and d!1791875 res!2399022) b!5676894))

(assert (= (and d!1791875 c!998791) b!5676895))

(assert (= (and d!1791875 (not c!998791)) b!5676889))

(assert (= (and b!5676889 c!998789) b!5676893))

(assert (= (and b!5676889 (not c!998789)) b!5676887))

(assert (= (and d!1791875 res!2399021) b!5676886))

(assert (= (and b!5676886 c!998792) b!5676890))

(assert (= (and b!5676886 (not c!998792)) b!5676891))

(assert (= (and b!5676891 c!998790) b!5676888))

(assert (= (and b!5676891 (not c!998790)) b!5676892))

(declare-fun m!6637434 () Bool)

(assert (=> b!5676890 m!6637434))

(declare-fun m!6637436 () Bool)

(assert (=> b!5676888 m!6637436))

(declare-fun m!6637438 () Bool)

(assert (=> d!1791875 m!6637438))

(declare-fun m!6637440 () Bool)

(assert (=> d!1791875 m!6637440))

(declare-fun m!6637442 () Bool)

(assert (=> b!5676894 m!6637442))

(assert (=> b!5676886 m!6636454))

(declare-fun m!6637444 () Bool)

(assert (=> b!5676893 m!6637444))

(declare-fun m!6637446 () Bool)

(assert (=> b!5676892 m!6637446))

(declare-fun m!6637448 () Bool)

(assert (=> b!5676891 m!6637448))

(assert (=> b!5676891 m!6637448))

(declare-fun m!6637450 () Bool)

(assert (=> b!5676891 m!6637450))

(assert (=> b!5675669 d!1791875))

(declare-fun d!1791877 () Bool)

(assert (=> d!1791877 (= (nullable!5699 (h!69624 (exprs!5551 lt!2269587))) (nullableFct!1779 (h!69624 (exprs!5551 lt!2269587))))))

(declare-fun bs!1323378 () Bool)

(assert (= bs!1323378 d!1791877))

(declare-fun m!6637452 () Bool)

(assert (=> bs!1323378 m!6637452))

(assert (=> b!5676175 d!1791877))

(assert (=> b!5676180 d!1791561))

(declare-fun d!1791879 () Bool)

(assert (=> d!1791879 (= (Exists!2767 lambda!305735) (choose!42936 lambda!305735))))

(declare-fun bs!1323379 () Bool)

(assert (= bs!1323379 d!1791879))

(declare-fun m!6637454 () Bool)

(assert (=> bs!1323379 m!6637454))

(assert (=> d!1791499 d!1791879))

(declare-fun d!1791881 () Bool)

(assert (=> d!1791881 (= (Exists!2767 lambda!305736) (choose!42936 lambda!305736))))

(declare-fun bs!1323380 () Bool)

(assert (= bs!1323380 d!1791881))

(declare-fun m!6637456 () Bool)

(assert (=> bs!1323380 m!6637456))

(assert (=> d!1791499 d!1791881))

(declare-fun bs!1323401 () Bool)

(declare-fun d!1791883 () Bool)

(assert (= bs!1323401 (and d!1791883 d!1791511)))

(declare-fun lambda!305821 () Int)

(assert (=> bs!1323401 (= lambda!305821 lambda!305747)))

(declare-fun bs!1323402 () Bool)

(assert (= bs!1323402 (and d!1791883 d!1791761)))

(assert (=> bs!1323402 (= lambda!305821 lambda!305793)))

(declare-fun bs!1323403 () Bool)

(assert (= bs!1323403 (and d!1791883 b!5675588)))

(assert (=> bs!1323403 (= lambda!305821 lambda!305713)))

(declare-fun bs!1323404 () Bool)

(assert (= bs!1323404 (and d!1791883 d!1791499)))

(assert (=> bs!1323404 (not (= lambda!305821 lambda!305736))))

(declare-fun bs!1323405 () Bool)

(assert (= bs!1323405 (and d!1791883 b!5676825)))

(assert (=> bs!1323405 (not (= lambda!305821 lambda!305809))))

(declare-fun bs!1323406 () Bool)

(assert (= bs!1323406 (and d!1791883 b!5676820)))

(assert (=> bs!1323406 (not (= lambda!305821 lambda!305806))))

(declare-fun bs!1323408 () Bool)

(assert (= bs!1323408 (and d!1791883 b!5676105)))

(assert (=> bs!1323408 (not (= lambda!305821 lambda!305767))))

(declare-fun bs!1323410 () Bool)

(assert (= bs!1323410 (and d!1791883 b!5676706)))

(assert (=> bs!1323410 (not (= lambda!305821 lambda!305795))))

(declare-fun bs!1323412 () Bool)

(assert (= bs!1323412 (and d!1791883 b!5676711)))

(assert (=> bs!1323412 (not (= lambda!305821 lambda!305796))))

(declare-fun bs!1323413 () Bool)

(assert (= bs!1323413 (and d!1791883 b!5676100)))

(assert (=> bs!1323413 (not (= lambda!305821 lambda!305766))))

(assert (=> bs!1323403 (not (= lambda!305821 lambda!305714))))

(assert (=> bs!1323404 (= lambda!305821 lambda!305735)))

(assert (=> d!1791883 true))

(assert (=> d!1791883 true))

(assert (=> d!1791883 true))

(declare-fun bs!1323420 () Bool)

(assert (= bs!1323420 d!1791883))

(declare-fun lambda!305823 () Int)

(assert (=> bs!1323420 (not (= lambda!305823 lambda!305821))))

(assert (=> bs!1323401 (not (= lambda!305823 lambda!305747))))

(assert (=> bs!1323402 (not (= lambda!305823 lambda!305793))))

(assert (=> bs!1323403 (not (= lambda!305823 lambda!305713))))

(assert (=> bs!1323404 (= lambda!305823 lambda!305736)))

(assert (=> bs!1323405 (= (and (= (regOne!31846 r!7292) (regOne!31846 (regOne!31847 r!7292))) (= (regTwo!31846 r!7292) (regTwo!31846 (regOne!31847 r!7292)))) (= lambda!305823 lambda!305809))))

(assert (=> bs!1323406 (not (= lambda!305823 lambda!305806))))

(assert (=> bs!1323408 (= lambda!305823 lambda!305767)))

(assert (=> bs!1323410 (not (= lambda!305823 lambda!305795))))

(assert (=> bs!1323412 (= (and (= (regOne!31846 r!7292) (regOne!31846 (regTwo!31847 r!7292))) (= (regTwo!31846 r!7292) (regTwo!31846 (regTwo!31847 r!7292)))) (= lambda!305823 lambda!305796))))

(assert (=> bs!1323413 (not (= lambda!305823 lambda!305766))))

(assert (=> bs!1323403 (= lambda!305823 lambda!305714)))

(assert (=> bs!1323404 (not (= lambda!305823 lambda!305735))))

(assert (=> d!1791883 true))

(assert (=> d!1791883 true))

(assert (=> d!1791883 true))

(assert (=> d!1791883 (= (Exists!2767 lambda!305821) (Exists!2767 lambda!305823))))

(assert (=> d!1791883 true))

(declare-fun _$90!1423 () Unit!156200)

(assert (=> d!1791883 (= (choose!42937 (regOne!31846 r!7292) (regTwo!31846 r!7292) s!2326) _$90!1423)))

(declare-fun m!6637492 () Bool)

(assert (=> bs!1323420 m!6637492))

(declare-fun m!6637494 () Bool)

(assert (=> bs!1323420 m!6637494))

(assert (=> d!1791499 d!1791883))

(assert (=> d!1791499 d!1791713))

(declare-fun b!5676948 () Bool)

(declare-fun e!3494279 () Bool)

(declare-fun tp!1574069 () Bool)

(assert (=> b!5676948 (= e!3494279 tp!1574069)))

(declare-fun e!3494278 () Bool)

(declare-fun b!5676947 () Bool)

(declare-fun tp!1574070 () Bool)

(assert (=> b!5676947 (= e!3494278 (and (inv!82414 (h!69625 (t!376609 (t!376609 zl!343)))) e!3494279 tp!1574070))))

(assert (=> b!5676284 (= tp!1574023 e!3494278)))

(assert (= b!5676947 b!5676948))

(assert (= (and b!5676284 ((_ is Cons!63177) (t!376609 (t!376609 zl!343)))) b!5676947))

(declare-fun m!6637496 () Bool)

(assert (=> b!5676947 m!6637496))

(declare-fun b!5676949 () Bool)

(declare-fun e!3494280 () Bool)

(declare-fun tp!1574071 () Bool)

(declare-fun tp!1574072 () Bool)

(assert (=> b!5676949 (= e!3494280 (and tp!1574071 tp!1574072))))

(assert (=> b!5676285 (= tp!1574022 e!3494280)))

(assert (= (and b!5676285 ((_ is Cons!63176) (exprs!5551 (h!69625 (t!376609 zl!343))))) b!5676949))

(declare-fun b!5676952 () Bool)

(declare-fun e!3494281 () Bool)

(declare-fun tp!1574076 () Bool)

(assert (=> b!5676952 (= e!3494281 tp!1574076)))

(declare-fun b!5676951 () Bool)

(declare-fun tp!1574074 () Bool)

(declare-fun tp!1574077 () Bool)

(assert (=> b!5676951 (= e!3494281 (and tp!1574074 tp!1574077))))

(assert (=> b!5676308 (= tp!1574044 e!3494281)))

(declare-fun b!5676950 () Bool)

(assert (=> b!5676950 (= e!3494281 tp_is_empty!40587)))

(declare-fun b!5676953 () Bool)

(declare-fun tp!1574073 () Bool)

(declare-fun tp!1574075 () Bool)

(assert (=> b!5676953 (= e!3494281 (and tp!1574073 tp!1574075))))

(assert (= (and b!5676308 ((_ is ElementMatch!15667) (regOne!31847 (regTwo!31847 r!7292)))) b!5676950))

(assert (= (and b!5676308 ((_ is Concat!24512) (regOne!31847 (regTwo!31847 r!7292)))) b!5676951))

(assert (= (and b!5676308 ((_ is Star!15667) (regOne!31847 (regTwo!31847 r!7292)))) b!5676952))

(assert (= (and b!5676308 ((_ is Union!15667) (regOne!31847 (regTwo!31847 r!7292)))) b!5676953))

(declare-fun b!5676956 () Bool)

(declare-fun e!3494282 () Bool)

(declare-fun tp!1574081 () Bool)

(assert (=> b!5676956 (= e!3494282 tp!1574081)))

(declare-fun b!5676955 () Bool)

(declare-fun tp!1574079 () Bool)

(declare-fun tp!1574082 () Bool)

(assert (=> b!5676955 (= e!3494282 (and tp!1574079 tp!1574082))))

(assert (=> b!5676308 (= tp!1574046 e!3494282)))

(declare-fun b!5676954 () Bool)

(assert (=> b!5676954 (= e!3494282 tp_is_empty!40587)))

(declare-fun b!5676957 () Bool)

(declare-fun tp!1574078 () Bool)

(declare-fun tp!1574080 () Bool)

(assert (=> b!5676957 (= e!3494282 (and tp!1574078 tp!1574080))))

(assert (= (and b!5676308 ((_ is ElementMatch!15667) (regTwo!31847 (regTwo!31847 r!7292)))) b!5676954))

(assert (= (and b!5676308 ((_ is Concat!24512) (regTwo!31847 (regTwo!31847 r!7292)))) b!5676955))

(assert (= (and b!5676308 ((_ is Star!15667) (regTwo!31847 (regTwo!31847 r!7292)))) b!5676956))

(assert (= (and b!5676308 ((_ is Union!15667) (regTwo!31847 (regTwo!31847 r!7292)))) b!5676957))

(declare-fun b!5676958 () Bool)

(declare-fun e!3494283 () Bool)

(declare-fun tp!1574083 () Bool)

(declare-fun tp!1574084 () Bool)

(assert (=> b!5676958 (= e!3494283 (and tp!1574083 tp!1574084))))

(assert (=> b!5676300 (= tp!1574038 e!3494283)))

(assert (= (and b!5676300 ((_ is Cons!63176) (exprs!5551 setElem!37953))) b!5676958))

(declare-fun b!5676961 () Bool)

(declare-fun e!3494284 () Bool)

(declare-fun tp!1574088 () Bool)

(assert (=> b!5676961 (= e!3494284 tp!1574088)))

(declare-fun b!5676960 () Bool)

(declare-fun tp!1574086 () Bool)

(declare-fun tp!1574089 () Bool)

(assert (=> b!5676960 (= e!3494284 (and tp!1574086 tp!1574089))))

(assert (=> b!5676307 (= tp!1574047 e!3494284)))

(declare-fun b!5676959 () Bool)

(assert (=> b!5676959 (= e!3494284 tp_is_empty!40587)))

(declare-fun b!5676962 () Bool)

(declare-fun tp!1574085 () Bool)

(declare-fun tp!1574087 () Bool)

(assert (=> b!5676962 (= e!3494284 (and tp!1574085 tp!1574087))))

(assert (= (and b!5676307 ((_ is ElementMatch!15667) (reg!15996 (regTwo!31847 r!7292)))) b!5676959))

(assert (= (and b!5676307 ((_ is Concat!24512) (reg!15996 (regTwo!31847 r!7292)))) b!5676960))

(assert (= (and b!5676307 ((_ is Star!15667) (reg!15996 (regTwo!31847 r!7292)))) b!5676961))

(assert (= (and b!5676307 ((_ is Union!15667) (reg!15996 (regTwo!31847 r!7292)))) b!5676962))

(declare-fun condSetEmpty!37960 () Bool)

(assert (=> setNonEmpty!37953 (= condSetEmpty!37960 (= setRest!37953 ((as const (Array Context!10102 Bool)) false)))))

(declare-fun setRes!37960 () Bool)

(assert (=> setNonEmpty!37953 (= tp!1574037 setRes!37960)))

(declare-fun setIsEmpty!37960 () Bool)

(assert (=> setIsEmpty!37960 setRes!37960))

(declare-fun tp!1574090 () Bool)

(declare-fun setNonEmpty!37960 () Bool)

(declare-fun setElem!37960 () Context!10102)

(declare-fun e!3494286 () Bool)

(assert (=> setNonEmpty!37960 (= setRes!37960 (and tp!1574090 (inv!82414 setElem!37960) e!3494286))))

(declare-fun setRest!37960 () (InoxSet Context!10102))

(assert (=> setNonEmpty!37960 (= setRest!37953 ((_ map or) (store ((as const (Array Context!10102 Bool)) false) setElem!37960 true) setRest!37960))))

(declare-fun b!5676963 () Bool)

(declare-fun tp!1574091 () Bool)

(assert (=> b!5676963 (= e!3494286 tp!1574091)))

(assert (= (and setNonEmpty!37953 condSetEmpty!37960) setIsEmpty!37960))

(assert (= (and setNonEmpty!37953 (not condSetEmpty!37960)) setNonEmpty!37960))

(assert (= setNonEmpty!37960 b!5676963))

(declare-fun m!6637504 () Bool)

(assert (=> setNonEmpty!37960 m!6637504))

(declare-fun b!5676980 () Bool)

(declare-fun e!3494293 () Bool)

(declare-fun tp!1574095 () Bool)

(assert (=> b!5676980 (= e!3494293 tp!1574095)))

(declare-fun b!5676979 () Bool)

(declare-fun tp!1574093 () Bool)

(declare-fun tp!1574096 () Bool)

(assert (=> b!5676979 (= e!3494293 (and tp!1574093 tp!1574096))))

(assert (=> b!5676272 (= tp!1574011 e!3494293)))

(declare-fun b!5676978 () Bool)

(assert (=> b!5676978 (= e!3494293 tp_is_empty!40587)))

(declare-fun b!5676981 () Bool)

(declare-fun tp!1574092 () Bool)

(declare-fun tp!1574094 () Bool)

(assert (=> b!5676981 (= e!3494293 (and tp!1574092 tp!1574094))))

(assert (= (and b!5676272 ((_ is ElementMatch!15667) (reg!15996 (regTwo!31846 r!7292)))) b!5676978))

(assert (= (and b!5676272 ((_ is Concat!24512) (reg!15996 (regTwo!31846 r!7292)))) b!5676979))

(assert (= (and b!5676272 ((_ is Star!15667) (reg!15996 (regTwo!31846 r!7292)))) b!5676980))

(assert (= (and b!5676272 ((_ is Union!15667) (reg!15996 (regTwo!31846 r!7292)))) b!5676981))

(declare-fun b!5676984 () Bool)

(declare-fun e!3494294 () Bool)

(declare-fun tp!1574100 () Bool)

(assert (=> b!5676984 (= e!3494294 tp!1574100)))

(declare-fun b!5676983 () Bool)

(declare-fun tp!1574098 () Bool)

(declare-fun tp!1574101 () Bool)

(assert (=> b!5676983 (= e!3494294 (and tp!1574098 tp!1574101))))

(assert (=> b!5676273 (= tp!1574008 e!3494294)))

(declare-fun b!5676982 () Bool)

(assert (=> b!5676982 (= e!3494294 tp_is_empty!40587)))

(declare-fun b!5676985 () Bool)

(declare-fun tp!1574097 () Bool)

(declare-fun tp!1574099 () Bool)

(assert (=> b!5676985 (= e!3494294 (and tp!1574097 tp!1574099))))

(assert (= (and b!5676273 ((_ is ElementMatch!15667) (regOne!31847 (regTwo!31846 r!7292)))) b!5676982))

(assert (= (and b!5676273 ((_ is Concat!24512) (regOne!31847 (regTwo!31846 r!7292)))) b!5676983))

(assert (= (and b!5676273 ((_ is Star!15667) (regOne!31847 (regTwo!31846 r!7292)))) b!5676984))

(assert (= (and b!5676273 ((_ is Union!15667) (regOne!31847 (regTwo!31846 r!7292)))) b!5676985))

(declare-fun b!5676988 () Bool)

(declare-fun e!3494295 () Bool)

(declare-fun tp!1574105 () Bool)

(assert (=> b!5676988 (= e!3494295 tp!1574105)))

(declare-fun b!5676987 () Bool)

(declare-fun tp!1574103 () Bool)

(declare-fun tp!1574106 () Bool)

(assert (=> b!5676987 (= e!3494295 (and tp!1574103 tp!1574106))))

(assert (=> b!5676273 (= tp!1574010 e!3494295)))

(declare-fun b!5676986 () Bool)

(assert (=> b!5676986 (= e!3494295 tp_is_empty!40587)))

(declare-fun b!5676989 () Bool)

(declare-fun tp!1574102 () Bool)

(declare-fun tp!1574104 () Bool)

(assert (=> b!5676989 (= e!3494295 (and tp!1574102 tp!1574104))))

(assert (= (and b!5676273 ((_ is ElementMatch!15667) (regTwo!31847 (regTwo!31846 r!7292)))) b!5676986))

(assert (= (and b!5676273 ((_ is Concat!24512) (regTwo!31847 (regTwo!31846 r!7292)))) b!5676987))

(assert (= (and b!5676273 ((_ is Star!15667) (regTwo!31847 (regTwo!31846 r!7292)))) b!5676988))

(assert (= (and b!5676273 ((_ is Union!15667) (regTwo!31847 (regTwo!31846 r!7292)))) b!5676989))

(declare-fun b!5676992 () Bool)

(declare-fun e!3494296 () Bool)

(declare-fun tp!1574110 () Bool)

(assert (=> b!5676992 (= e!3494296 tp!1574110)))

(declare-fun b!5676991 () Bool)

(declare-fun tp!1574108 () Bool)

(declare-fun tp!1574111 () Bool)

(assert (=> b!5676991 (= e!3494296 (and tp!1574108 tp!1574111))))

(assert (=> b!5676306 (= tp!1574045 e!3494296)))

(declare-fun b!5676990 () Bool)

(assert (=> b!5676990 (= e!3494296 tp_is_empty!40587)))

(declare-fun b!5676993 () Bool)

(declare-fun tp!1574107 () Bool)

(declare-fun tp!1574109 () Bool)

(assert (=> b!5676993 (= e!3494296 (and tp!1574107 tp!1574109))))

(assert (= (and b!5676306 ((_ is ElementMatch!15667) (regOne!31846 (regTwo!31847 r!7292)))) b!5676990))

(assert (= (and b!5676306 ((_ is Concat!24512) (regOne!31846 (regTwo!31847 r!7292)))) b!5676991))

(assert (= (and b!5676306 ((_ is Star!15667) (regOne!31846 (regTwo!31847 r!7292)))) b!5676992))

(assert (= (and b!5676306 ((_ is Union!15667) (regOne!31846 (regTwo!31847 r!7292)))) b!5676993))

(declare-fun b!5676996 () Bool)

(declare-fun e!3494297 () Bool)

(declare-fun tp!1574115 () Bool)

(assert (=> b!5676996 (= e!3494297 tp!1574115)))

(declare-fun b!5676995 () Bool)

(declare-fun tp!1574113 () Bool)

(declare-fun tp!1574116 () Bool)

(assert (=> b!5676995 (= e!3494297 (and tp!1574113 tp!1574116))))

(assert (=> b!5676306 (= tp!1574048 e!3494297)))

(declare-fun b!5676994 () Bool)

(assert (=> b!5676994 (= e!3494297 tp_is_empty!40587)))

(declare-fun b!5676997 () Bool)

(declare-fun tp!1574112 () Bool)

(declare-fun tp!1574114 () Bool)

(assert (=> b!5676997 (= e!3494297 (and tp!1574112 tp!1574114))))

(assert (= (and b!5676306 ((_ is ElementMatch!15667) (regTwo!31846 (regTwo!31847 r!7292)))) b!5676994))

(assert (= (and b!5676306 ((_ is Concat!24512) (regTwo!31846 (regTwo!31847 r!7292)))) b!5676995))

(assert (= (and b!5676306 ((_ is Star!15667) (regTwo!31846 (regTwo!31847 r!7292)))) b!5676996))

(assert (= (and b!5676306 ((_ is Union!15667) (regTwo!31846 (regTwo!31847 r!7292)))) b!5676997))

(declare-fun b!5677000 () Bool)

(declare-fun e!3494298 () Bool)

(declare-fun tp!1574120 () Bool)

(assert (=> b!5677000 (= e!3494298 tp!1574120)))

(declare-fun b!5676999 () Bool)

(declare-fun tp!1574118 () Bool)

(declare-fun tp!1574121 () Bool)

(assert (=> b!5676999 (= e!3494298 (and tp!1574118 tp!1574121))))

(assert (=> b!5676271 (= tp!1574009 e!3494298)))

(declare-fun b!5676998 () Bool)

(assert (=> b!5676998 (= e!3494298 tp_is_empty!40587)))

(declare-fun b!5677001 () Bool)

(declare-fun tp!1574117 () Bool)

(declare-fun tp!1574119 () Bool)

(assert (=> b!5677001 (= e!3494298 (and tp!1574117 tp!1574119))))

(assert (= (and b!5676271 ((_ is ElementMatch!15667) (regOne!31846 (regTwo!31846 r!7292)))) b!5676998))

(assert (= (and b!5676271 ((_ is Concat!24512) (regOne!31846 (regTwo!31846 r!7292)))) b!5676999))

(assert (= (and b!5676271 ((_ is Star!15667) (regOne!31846 (regTwo!31846 r!7292)))) b!5677000))

(assert (= (and b!5676271 ((_ is Union!15667) (regOne!31846 (regTwo!31846 r!7292)))) b!5677001))

(declare-fun b!5677004 () Bool)

(declare-fun e!3494299 () Bool)

(declare-fun tp!1574125 () Bool)

(assert (=> b!5677004 (= e!3494299 tp!1574125)))

(declare-fun b!5677003 () Bool)

(declare-fun tp!1574123 () Bool)

(declare-fun tp!1574126 () Bool)

(assert (=> b!5677003 (= e!3494299 (and tp!1574123 tp!1574126))))

(assert (=> b!5676271 (= tp!1574012 e!3494299)))

(declare-fun b!5677002 () Bool)

(assert (=> b!5677002 (= e!3494299 tp_is_empty!40587)))

(declare-fun b!5677005 () Bool)

(declare-fun tp!1574122 () Bool)

(declare-fun tp!1574124 () Bool)

(assert (=> b!5677005 (= e!3494299 (and tp!1574122 tp!1574124))))

(assert (= (and b!5676271 ((_ is ElementMatch!15667) (regTwo!31846 (regTwo!31846 r!7292)))) b!5677002))

(assert (= (and b!5676271 ((_ is Concat!24512) (regTwo!31846 (regTwo!31846 r!7292)))) b!5677003))

(assert (= (and b!5676271 ((_ is Star!15667) (regTwo!31846 (regTwo!31846 r!7292)))) b!5677004))

(assert (= (and b!5676271 ((_ is Union!15667) (regTwo!31846 (regTwo!31846 r!7292)))) b!5677005))

(declare-fun b!5677006 () Bool)

(declare-fun e!3494300 () Bool)

(declare-fun tp!1574127 () Bool)

(assert (=> b!5677006 (= e!3494300 (and tp_is_empty!40587 tp!1574127))))

(assert (=> b!5676295 (= tp!1574032 e!3494300)))

(assert (= (and b!5676295 ((_ is Cons!63178) (t!376610 (t!376610 s!2326)))) b!5677006))

(declare-fun b!5677009 () Bool)

(declare-fun e!3494301 () Bool)

(declare-fun tp!1574131 () Bool)

(assert (=> b!5677009 (= e!3494301 tp!1574131)))

(declare-fun b!5677008 () Bool)

(declare-fun tp!1574129 () Bool)

(declare-fun tp!1574132 () Bool)

(assert (=> b!5677008 (= e!3494301 (and tp!1574129 tp!1574132))))

(assert (=> b!5676275 (= tp!1574014 e!3494301)))

(declare-fun b!5677007 () Bool)

(assert (=> b!5677007 (= e!3494301 tp_is_empty!40587)))

(declare-fun b!5677010 () Bool)

(declare-fun tp!1574128 () Bool)

(declare-fun tp!1574130 () Bool)

(assert (=> b!5677010 (= e!3494301 (and tp!1574128 tp!1574130))))

(assert (= (and b!5676275 ((_ is ElementMatch!15667) (regOne!31846 (reg!15996 r!7292)))) b!5677007))

(assert (= (and b!5676275 ((_ is Concat!24512) (regOne!31846 (reg!15996 r!7292)))) b!5677008))

(assert (= (and b!5676275 ((_ is Star!15667) (regOne!31846 (reg!15996 r!7292)))) b!5677009))

(assert (= (and b!5676275 ((_ is Union!15667) (regOne!31846 (reg!15996 r!7292)))) b!5677010))

(declare-fun b!5677013 () Bool)

(declare-fun e!3494302 () Bool)

(declare-fun tp!1574136 () Bool)

(assert (=> b!5677013 (= e!3494302 tp!1574136)))

(declare-fun b!5677012 () Bool)

(declare-fun tp!1574134 () Bool)

(declare-fun tp!1574137 () Bool)

(assert (=> b!5677012 (= e!3494302 (and tp!1574134 tp!1574137))))

(assert (=> b!5676275 (= tp!1574017 e!3494302)))

(declare-fun b!5677011 () Bool)

(assert (=> b!5677011 (= e!3494302 tp_is_empty!40587)))

(declare-fun b!5677014 () Bool)

(declare-fun tp!1574133 () Bool)

(declare-fun tp!1574135 () Bool)

(assert (=> b!5677014 (= e!3494302 (and tp!1574133 tp!1574135))))

(assert (= (and b!5676275 ((_ is ElementMatch!15667) (regTwo!31846 (reg!15996 r!7292)))) b!5677011))

(assert (= (and b!5676275 ((_ is Concat!24512) (regTwo!31846 (reg!15996 r!7292)))) b!5677012))

(assert (= (and b!5676275 ((_ is Star!15667) (regTwo!31846 (reg!15996 r!7292)))) b!5677013))

(assert (= (and b!5676275 ((_ is Union!15667) (regTwo!31846 (reg!15996 r!7292)))) b!5677014))

(declare-fun b!5677017 () Bool)

(declare-fun e!3494303 () Bool)

(declare-fun tp!1574141 () Bool)

(assert (=> b!5677017 (= e!3494303 tp!1574141)))

(declare-fun b!5677016 () Bool)

(declare-fun tp!1574139 () Bool)

(declare-fun tp!1574142 () Bool)

(assert (=> b!5677016 (= e!3494303 (and tp!1574139 tp!1574142))))

(assert (=> b!5676309 (= tp!1574049 e!3494303)))

(declare-fun b!5677015 () Bool)

(assert (=> b!5677015 (= e!3494303 tp_is_empty!40587)))

(declare-fun b!5677018 () Bool)

(declare-fun tp!1574138 () Bool)

(declare-fun tp!1574140 () Bool)

(assert (=> b!5677018 (= e!3494303 (and tp!1574138 tp!1574140))))

(assert (= (and b!5676309 ((_ is ElementMatch!15667) (h!69624 (exprs!5551 setElem!37947)))) b!5677015))

(assert (= (and b!5676309 ((_ is Concat!24512) (h!69624 (exprs!5551 setElem!37947)))) b!5677016))

(assert (= (and b!5676309 ((_ is Star!15667) (h!69624 (exprs!5551 setElem!37947)))) b!5677017))

(assert (= (and b!5676309 ((_ is Union!15667) (h!69624 (exprs!5551 setElem!37947)))) b!5677018))

(declare-fun b!5677019 () Bool)

(declare-fun e!3494304 () Bool)

(declare-fun tp!1574143 () Bool)

(declare-fun tp!1574144 () Bool)

(assert (=> b!5677019 (= e!3494304 (and tp!1574143 tp!1574144))))

(assert (=> b!5676309 (= tp!1574050 e!3494304)))

(assert (= (and b!5676309 ((_ is Cons!63176) (t!376608 (exprs!5551 setElem!37947)))) b!5677019))

(declare-fun b!5677022 () Bool)

(declare-fun e!3494305 () Bool)

(declare-fun tp!1574148 () Bool)

(assert (=> b!5677022 (= e!3494305 tp!1574148)))

(declare-fun b!5677021 () Bool)

(declare-fun tp!1574146 () Bool)

(declare-fun tp!1574149 () Bool)

(assert (=> b!5677021 (= e!3494305 (and tp!1574146 tp!1574149))))

(assert (=> b!5676304 (= tp!1574039 e!3494305)))

(declare-fun b!5677020 () Bool)

(assert (=> b!5677020 (= e!3494305 tp_is_empty!40587)))

(declare-fun b!5677023 () Bool)

(declare-fun tp!1574145 () Bool)

(declare-fun tp!1574147 () Bool)

(assert (=> b!5677023 (= e!3494305 (and tp!1574145 tp!1574147))))

(assert (= (and b!5676304 ((_ is ElementMatch!15667) (regOne!31847 (regOne!31847 r!7292)))) b!5677020))

(assert (= (and b!5676304 ((_ is Concat!24512) (regOne!31847 (regOne!31847 r!7292)))) b!5677021))

(assert (= (and b!5676304 ((_ is Star!15667) (regOne!31847 (regOne!31847 r!7292)))) b!5677022))

(assert (= (and b!5676304 ((_ is Union!15667) (regOne!31847 (regOne!31847 r!7292)))) b!5677023))

(declare-fun b!5677026 () Bool)

(declare-fun e!3494306 () Bool)

(declare-fun tp!1574153 () Bool)

(assert (=> b!5677026 (= e!3494306 tp!1574153)))

(declare-fun b!5677025 () Bool)

(declare-fun tp!1574151 () Bool)

(declare-fun tp!1574154 () Bool)

(assert (=> b!5677025 (= e!3494306 (and tp!1574151 tp!1574154))))

(assert (=> b!5676304 (= tp!1574041 e!3494306)))

(declare-fun b!5677024 () Bool)

(assert (=> b!5677024 (= e!3494306 tp_is_empty!40587)))

(declare-fun b!5677027 () Bool)

(declare-fun tp!1574150 () Bool)

(declare-fun tp!1574152 () Bool)

(assert (=> b!5677027 (= e!3494306 (and tp!1574150 tp!1574152))))

(assert (= (and b!5676304 ((_ is ElementMatch!15667) (regTwo!31847 (regOne!31847 r!7292)))) b!5677024))

(assert (= (and b!5676304 ((_ is Concat!24512) (regTwo!31847 (regOne!31847 r!7292)))) b!5677025))

(assert (= (and b!5676304 ((_ is Star!15667) (regTwo!31847 (regOne!31847 r!7292)))) b!5677026))

(assert (= (and b!5676304 ((_ is Union!15667) (regTwo!31847 (regOne!31847 r!7292)))) b!5677027))

(declare-fun b!5677030 () Bool)

(declare-fun e!3494307 () Bool)

(declare-fun tp!1574158 () Bool)

(assert (=> b!5677030 (= e!3494307 tp!1574158)))

(declare-fun b!5677029 () Bool)

(declare-fun tp!1574156 () Bool)

(declare-fun tp!1574159 () Bool)

(assert (=> b!5677029 (= e!3494307 (and tp!1574156 tp!1574159))))

(assert (=> b!5676290 (= tp!1574028 e!3494307)))

(declare-fun b!5677028 () Bool)

(assert (=> b!5677028 (= e!3494307 tp_is_empty!40587)))

(declare-fun b!5677031 () Bool)

(declare-fun tp!1574155 () Bool)

(declare-fun tp!1574157 () Bool)

(assert (=> b!5677031 (= e!3494307 (and tp!1574155 tp!1574157))))

(assert (= (and b!5676290 ((_ is ElementMatch!15667) (h!69624 (exprs!5551 (h!69625 zl!343))))) b!5677028))

(assert (= (and b!5676290 ((_ is Concat!24512) (h!69624 (exprs!5551 (h!69625 zl!343))))) b!5677029))

(assert (= (and b!5676290 ((_ is Star!15667) (h!69624 (exprs!5551 (h!69625 zl!343))))) b!5677030))

(assert (= (and b!5676290 ((_ is Union!15667) (h!69624 (exprs!5551 (h!69625 zl!343))))) b!5677031))

(declare-fun b!5677032 () Bool)

(declare-fun e!3494308 () Bool)

(declare-fun tp!1574160 () Bool)

(declare-fun tp!1574161 () Bool)

(assert (=> b!5677032 (= e!3494308 (and tp!1574160 tp!1574161))))

(assert (=> b!5676290 (= tp!1574029 e!3494308)))

(assert (= (and b!5676290 ((_ is Cons!63176) (t!376608 (exprs!5551 (h!69625 zl!343))))) b!5677032))

(declare-fun b!5677035 () Bool)

(declare-fun e!3494309 () Bool)

(declare-fun tp!1574165 () Bool)

(assert (=> b!5677035 (= e!3494309 tp!1574165)))

(declare-fun b!5677034 () Bool)

(declare-fun tp!1574163 () Bool)

(declare-fun tp!1574166 () Bool)

(assert (=> b!5677034 (= e!3494309 (and tp!1574163 tp!1574166))))

(assert (=> b!5676269 (= tp!1574003 e!3494309)))

(declare-fun b!5677033 () Bool)

(assert (=> b!5677033 (= e!3494309 tp_is_empty!40587)))

(declare-fun b!5677036 () Bool)

(declare-fun tp!1574162 () Bool)

(declare-fun tp!1574164 () Bool)

(assert (=> b!5677036 (= e!3494309 (and tp!1574162 tp!1574164))))

(assert (= (and b!5676269 ((_ is ElementMatch!15667) (regOne!31847 (regOne!31846 r!7292)))) b!5677033))

(assert (= (and b!5676269 ((_ is Concat!24512) (regOne!31847 (regOne!31846 r!7292)))) b!5677034))

(assert (= (and b!5676269 ((_ is Star!15667) (regOne!31847 (regOne!31846 r!7292)))) b!5677035))

(assert (= (and b!5676269 ((_ is Union!15667) (regOne!31847 (regOne!31846 r!7292)))) b!5677036))

(declare-fun b!5677039 () Bool)

(declare-fun e!3494310 () Bool)

(declare-fun tp!1574170 () Bool)

(assert (=> b!5677039 (= e!3494310 tp!1574170)))

(declare-fun b!5677038 () Bool)

(declare-fun tp!1574168 () Bool)

(declare-fun tp!1574171 () Bool)

(assert (=> b!5677038 (= e!3494310 (and tp!1574168 tp!1574171))))

(assert (=> b!5676269 (= tp!1574005 e!3494310)))

(declare-fun b!5677037 () Bool)

(assert (=> b!5677037 (= e!3494310 tp_is_empty!40587)))

(declare-fun b!5677040 () Bool)

(declare-fun tp!1574167 () Bool)

(declare-fun tp!1574169 () Bool)

(assert (=> b!5677040 (= e!3494310 (and tp!1574167 tp!1574169))))

(assert (= (and b!5676269 ((_ is ElementMatch!15667) (regTwo!31847 (regOne!31846 r!7292)))) b!5677037))

(assert (= (and b!5676269 ((_ is Concat!24512) (regTwo!31847 (regOne!31846 r!7292)))) b!5677038))

(assert (= (and b!5676269 ((_ is Star!15667) (regTwo!31847 (regOne!31846 r!7292)))) b!5677039))

(assert (= (and b!5676269 ((_ is Union!15667) (regTwo!31847 (regOne!31846 r!7292)))) b!5677040))

(declare-fun b!5677043 () Bool)

(declare-fun e!3494311 () Bool)

(declare-fun tp!1574175 () Bool)

(assert (=> b!5677043 (= e!3494311 tp!1574175)))

(declare-fun b!5677042 () Bool)

(declare-fun tp!1574173 () Bool)

(declare-fun tp!1574176 () Bool)

(assert (=> b!5677042 (= e!3494311 (and tp!1574173 tp!1574176))))

(assert (=> b!5676303 (= tp!1574042 e!3494311)))

(declare-fun b!5677041 () Bool)

(assert (=> b!5677041 (= e!3494311 tp_is_empty!40587)))

(declare-fun b!5677044 () Bool)

(declare-fun tp!1574172 () Bool)

(declare-fun tp!1574174 () Bool)

(assert (=> b!5677044 (= e!3494311 (and tp!1574172 tp!1574174))))

(assert (= (and b!5676303 ((_ is ElementMatch!15667) (reg!15996 (regOne!31847 r!7292)))) b!5677041))

(assert (= (and b!5676303 ((_ is Concat!24512) (reg!15996 (regOne!31847 r!7292)))) b!5677042))

(assert (= (and b!5676303 ((_ is Star!15667) (reg!15996 (regOne!31847 r!7292)))) b!5677043))

(assert (= (and b!5676303 ((_ is Union!15667) (reg!15996 (regOne!31847 r!7292)))) b!5677044))

(declare-fun b!5677047 () Bool)

(declare-fun e!3494312 () Bool)

(declare-fun tp!1574180 () Bool)

(assert (=> b!5677047 (= e!3494312 tp!1574180)))

(declare-fun b!5677046 () Bool)

(declare-fun tp!1574178 () Bool)

(declare-fun tp!1574181 () Bool)

(assert (=> b!5677046 (= e!3494312 (and tp!1574178 tp!1574181))))

(assert (=> b!5676277 (= tp!1574013 e!3494312)))

(declare-fun b!5677045 () Bool)

(assert (=> b!5677045 (= e!3494312 tp_is_empty!40587)))

(declare-fun b!5677048 () Bool)

(declare-fun tp!1574177 () Bool)

(declare-fun tp!1574179 () Bool)

(assert (=> b!5677048 (= e!3494312 (and tp!1574177 tp!1574179))))

(assert (= (and b!5676277 ((_ is ElementMatch!15667) (regOne!31847 (reg!15996 r!7292)))) b!5677045))

(assert (= (and b!5676277 ((_ is Concat!24512) (regOne!31847 (reg!15996 r!7292)))) b!5677046))

(assert (= (and b!5676277 ((_ is Star!15667) (regOne!31847 (reg!15996 r!7292)))) b!5677047))

(assert (= (and b!5676277 ((_ is Union!15667) (regOne!31847 (reg!15996 r!7292)))) b!5677048))

(declare-fun b!5677051 () Bool)

(declare-fun e!3494313 () Bool)

(declare-fun tp!1574185 () Bool)

(assert (=> b!5677051 (= e!3494313 tp!1574185)))

(declare-fun b!5677050 () Bool)

(declare-fun tp!1574183 () Bool)

(declare-fun tp!1574186 () Bool)

(assert (=> b!5677050 (= e!3494313 (and tp!1574183 tp!1574186))))

(assert (=> b!5676277 (= tp!1574015 e!3494313)))

(declare-fun b!5677049 () Bool)

(assert (=> b!5677049 (= e!3494313 tp_is_empty!40587)))

(declare-fun b!5677052 () Bool)

(declare-fun tp!1574182 () Bool)

(declare-fun tp!1574184 () Bool)

(assert (=> b!5677052 (= e!3494313 (and tp!1574182 tp!1574184))))

(assert (= (and b!5676277 ((_ is ElementMatch!15667) (regTwo!31847 (reg!15996 r!7292)))) b!5677049))

(assert (= (and b!5676277 ((_ is Concat!24512) (regTwo!31847 (reg!15996 r!7292)))) b!5677050))

(assert (= (and b!5676277 ((_ is Star!15667) (regTwo!31847 (reg!15996 r!7292)))) b!5677051))

(assert (= (and b!5676277 ((_ is Union!15667) (regTwo!31847 (reg!15996 r!7292)))) b!5677052))

(declare-fun b!5677055 () Bool)

(declare-fun e!3494314 () Bool)

(declare-fun tp!1574190 () Bool)

(assert (=> b!5677055 (= e!3494314 tp!1574190)))

(declare-fun b!5677054 () Bool)

(declare-fun tp!1574188 () Bool)

(declare-fun tp!1574191 () Bool)

(assert (=> b!5677054 (= e!3494314 (and tp!1574188 tp!1574191))))

(assert (=> b!5676268 (= tp!1574006 e!3494314)))

(declare-fun b!5677053 () Bool)

(assert (=> b!5677053 (= e!3494314 tp_is_empty!40587)))

(declare-fun b!5677056 () Bool)

(declare-fun tp!1574187 () Bool)

(declare-fun tp!1574189 () Bool)

(assert (=> b!5677056 (= e!3494314 (and tp!1574187 tp!1574189))))

(assert (= (and b!5676268 ((_ is ElementMatch!15667) (reg!15996 (regOne!31846 r!7292)))) b!5677053))

(assert (= (and b!5676268 ((_ is Concat!24512) (reg!15996 (regOne!31846 r!7292)))) b!5677054))

(assert (= (and b!5676268 ((_ is Star!15667) (reg!15996 (regOne!31846 r!7292)))) b!5677055))

(assert (= (and b!5676268 ((_ is Union!15667) (reg!15996 (regOne!31846 r!7292)))) b!5677056))

(declare-fun b!5677059 () Bool)

(declare-fun e!3494315 () Bool)

(declare-fun tp!1574195 () Bool)

(assert (=> b!5677059 (= e!3494315 tp!1574195)))

(declare-fun b!5677058 () Bool)

(declare-fun tp!1574193 () Bool)

(declare-fun tp!1574196 () Bool)

(assert (=> b!5677058 (= e!3494315 (and tp!1574193 tp!1574196))))

(assert (=> b!5676302 (= tp!1574040 e!3494315)))

(declare-fun b!5677057 () Bool)

(assert (=> b!5677057 (= e!3494315 tp_is_empty!40587)))

(declare-fun b!5677060 () Bool)

(declare-fun tp!1574192 () Bool)

(declare-fun tp!1574194 () Bool)

(assert (=> b!5677060 (= e!3494315 (and tp!1574192 tp!1574194))))

(assert (= (and b!5676302 ((_ is ElementMatch!15667) (regOne!31846 (regOne!31847 r!7292)))) b!5677057))

(assert (= (and b!5676302 ((_ is Concat!24512) (regOne!31846 (regOne!31847 r!7292)))) b!5677058))

(assert (= (and b!5676302 ((_ is Star!15667) (regOne!31846 (regOne!31847 r!7292)))) b!5677059))

(assert (= (and b!5676302 ((_ is Union!15667) (regOne!31846 (regOne!31847 r!7292)))) b!5677060))

(declare-fun b!5677063 () Bool)

(declare-fun e!3494316 () Bool)

(declare-fun tp!1574200 () Bool)

(assert (=> b!5677063 (= e!3494316 tp!1574200)))

(declare-fun b!5677062 () Bool)

(declare-fun tp!1574198 () Bool)

(declare-fun tp!1574201 () Bool)

(assert (=> b!5677062 (= e!3494316 (and tp!1574198 tp!1574201))))

(assert (=> b!5676302 (= tp!1574043 e!3494316)))

(declare-fun b!5677061 () Bool)

(assert (=> b!5677061 (= e!3494316 tp_is_empty!40587)))

(declare-fun b!5677064 () Bool)

(declare-fun tp!1574197 () Bool)

(declare-fun tp!1574199 () Bool)

(assert (=> b!5677064 (= e!3494316 (and tp!1574197 tp!1574199))))

(assert (= (and b!5676302 ((_ is ElementMatch!15667) (regTwo!31846 (regOne!31847 r!7292)))) b!5677061))

(assert (= (and b!5676302 ((_ is Concat!24512) (regTwo!31846 (regOne!31847 r!7292)))) b!5677062))

(assert (= (and b!5676302 ((_ is Star!15667) (regTwo!31846 (regOne!31847 r!7292)))) b!5677063))

(assert (= (and b!5676302 ((_ is Union!15667) (regTwo!31846 (regOne!31847 r!7292)))) b!5677064))

(declare-fun b!5677067 () Bool)

(declare-fun e!3494317 () Bool)

(declare-fun tp!1574205 () Bool)

(assert (=> b!5677067 (= e!3494317 tp!1574205)))

(declare-fun b!5677066 () Bool)

(declare-fun tp!1574203 () Bool)

(declare-fun tp!1574206 () Bool)

(assert (=> b!5677066 (= e!3494317 (and tp!1574203 tp!1574206))))

(assert (=> b!5676267 (= tp!1574004 e!3494317)))

(declare-fun b!5677065 () Bool)

(assert (=> b!5677065 (= e!3494317 tp_is_empty!40587)))

(declare-fun b!5677068 () Bool)

(declare-fun tp!1574202 () Bool)

(declare-fun tp!1574204 () Bool)

(assert (=> b!5677068 (= e!3494317 (and tp!1574202 tp!1574204))))

(assert (= (and b!5676267 ((_ is ElementMatch!15667) (regOne!31846 (regOne!31846 r!7292)))) b!5677065))

(assert (= (and b!5676267 ((_ is Concat!24512) (regOne!31846 (regOne!31846 r!7292)))) b!5677066))

(assert (= (and b!5676267 ((_ is Star!15667) (regOne!31846 (regOne!31846 r!7292)))) b!5677067))

(assert (= (and b!5676267 ((_ is Union!15667) (regOne!31846 (regOne!31846 r!7292)))) b!5677068))

(declare-fun b!5677071 () Bool)

(declare-fun e!3494318 () Bool)

(declare-fun tp!1574210 () Bool)

(assert (=> b!5677071 (= e!3494318 tp!1574210)))

(declare-fun b!5677070 () Bool)

(declare-fun tp!1574208 () Bool)

(declare-fun tp!1574211 () Bool)

(assert (=> b!5677070 (= e!3494318 (and tp!1574208 tp!1574211))))

(assert (=> b!5676267 (= tp!1574007 e!3494318)))

(declare-fun b!5677069 () Bool)

(assert (=> b!5677069 (= e!3494318 tp_is_empty!40587)))

(declare-fun b!5677072 () Bool)

(declare-fun tp!1574207 () Bool)

(declare-fun tp!1574209 () Bool)

(assert (=> b!5677072 (= e!3494318 (and tp!1574207 tp!1574209))))

(assert (= (and b!5676267 ((_ is ElementMatch!15667) (regTwo!31846 (regOne!31846 r!7292)))) b!5677069))

(assert (= (and b!5676267 ((_ is Concat!24512) (regTwo!31846 (regOne!31846 r!7292)))) b!5677070))

(assert (= (and b!5676267 ((_ is Star!15667) (regTwo!31846 (regOne!31846 r!7292)))) b!5677071))

(assert (= (and b!5676267 ((_ is Union!15667) (regTwo!31846 (regOne!31846 r!7292)))) b!5677072))

(declare-fun b!5677075 () Bool)

(declare-fun e!3494319 () Bool)

(declare-fun tp!1574215 () Bool)

(assert (=> b!5677075 (= e!3494319 tp!1574215)))

(declare-fun b!5677074 () Bool)

(declare-fun tp!1574213 () Bool)

(declare-fun tp!1574216 () Bool)

(assert (=> b!5677074 (= e!3494319 (and tp!1574213 tp!1574216))))

(assert (=> b!5676276 (= tp!1574016 e!3494319)))

(declare-fun b!5677073 () Bool)

(assert (=> b!5677073 (= e!3494319 tp_is_empty!40587)))

(declare-fun b!5677076 () Bool)

(declare-fun tp!1574212 () Bool)

(declare-fun tp!1574214 () Bool)

(assert (=> b!5677076 (= e!3494319 (and tp!1574212 tp!1574214))))

(assert (= (and b!5676276 ((_ is ElementMatch!15667) (reg!15996 (reg!15996 r!7292)))) b!5677073))

(assert (= (and b!5676276 ((_ is Concat!24512) (reg!15996 (reg!15996 r!7292)))) b!5677074))

(assert (= (and b!5676276 ((_ is Star!15667) (reg!15996 (reg!15996 r!7292)))) b!5677075))

(assert (= (and b!5676276 ((_ is Union!15667) (reg!15996 (reg!15996 r!7292)))) b!5677076))

(declare-fun b_lambda!214663 () Bool)

(assert (= b_lambda!214647 (or d!1791469 b_lambda!214663)))

(declare-fun bs!1323431 () Bool)

(declare-fun d!1791909 () Bool)

(assert (= bs!1323431 (and d!1791909 d!1791469)))

(assert (=> bs!1323431 (= (dynLambda!24723 lambda!305727 (h!69624 lt!2269596)) (validRegex!7403 (h!69624 lt!2269596)))))

(declare-fun m!6637520 () Bool)

(assert (=> bs!1323431 m!6637520))

(assert (=> b!5676319 d!1791909))

(declare-fun b_lambda!214665 () Bool)

(assert (= b_lambda!214651 (or d!1791573 b_lambda!214665)))

(declare-fun bs!1323432 () Bool)

(declare-fun d!1791911 () Bool)

(assert (= bs!1323432 (and d!1791911 d!1791573)))

(assert (=> bs!1323432 (= (dynLambda!24723 lambda!305768 (h!69624 (exprs!5551 (h!69625 zl!343)))) (validRegex!7403 (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(declare-fun m!6637522 () Bool)

(assert (=> bs!1323432 m!6637522))

(assert (=> b!5676466 d!1791911))

(declare-fun b_lambda!214667 () Bool)

(assert (= b_lambda!214649 (or d!1791547 b_lambda!214667)))

(declare-fun bs!1323433 () Bool)

(declare-fun d!1791913 () Bool)

(assert (= bs!1323433 (and d!1791913 d!1791547)))

(assert (=> bs!1323433 (= (dynLambda!24723 lambda!305761 (h!69624 (exprs!5551 setElem!37947))) (validRegex!7403 (h!69624 (exprs!5551 setElem!37947))))))

(declare-fun m!6637524 () Bool)

(assert (=> bs!1323433 m!6637524))

(assert (=> b!5676420 d!1791913))

(declare-fun b_lambda!214669 () Bool)

(assert (= b_lambda!214661 (or d!1791575 b_lambda!214669)))

(declare-fun bs!1323434 () Bool)

(declare-fun d!1791915 () Bool)

(assert (= bs!1323434 (and d!1791915 d!1791575)))

(assert (=> bs!1323434 (= (dynLambda!24723 lambda!305771 (h!69624 (exprs!5551 (h!69625 zl!343)))) (validRegex!7403 (h!69624 (exprs!5551 (h!69625 zl!343)))))))

(assert (=> bs!1323434 m!6637522))

(assert (=> b!5676870 d!1791915))

(declare-fun b_lambda!214671 () Bool)

(assert (= b_lambda!214657 (or d!1791463 b_lambda!214671)))

(declare-fun bs!1323435 () Bool)

(declare-fun d!1791917 () Bool)

(assert (= bs!1323435 (and d!1791917 d!1791463)))

(assert (=> bs!1323435 (= (dynLambda!24723 lambda!305722 (h!69624 (unfocusZipperList!1095 zl!343))) (validRegex!7403 (h!69624 (unfocusZipperList!1095 zl!343))))))

(declare-fun m!6637526 () Bool)

(assert (=> bs!1323435 m!6637526))

(assert (=> b!5676748 d!1791917))

(declare-fun b_lambda!214673 () Bool)

(assert (= b_lambda!214655 (or b!5675580 b_lambda!214673)))

(assert (=> d!1791807 d!1791591))

(check-sat (not b!5676630) (not b!5676949) (not b!5677038) (not b!5676729) (not b!5677010) (not b!5677058) (not b!5676452) (not d!1791675) (not b!5676745) (not b!5677031) (not bm!430754) (not b!5676878) (not b!5676594) (not b!5676330) (not b!5676643) (not bs!1323435) (not bm!430815) (not d!1791877) (not b!5676445) (not bm!430699) (not d!1791689) (not b!5677027) (not b!5676992) (not d!1791621) (not b!5676893) (not b!5676660) (not b!5677030) (not b!5677001) (not b!5676730) (not b!5676882) (not b!5676953) (not bm!430767) (not b!5676980) (not d!1791777) tp_is_empty!40587 (not bm!430789) (not b!5676881) (not b!5676642) (not b!5677048) (not b!5676890) (not b!5676752) (not b!5676892) (not bm!430758) (not b!5676314) (not b!5676886) (not b!5677047) (not d!1791611) (not b!5676540) (not d!1791737) (not d!1791807) (not b!5676734) (not bm!430794) (not b!5676891) (not b!5676489) (not b!5676490) (not b!5676335) (not bm!430791) (not b!5676733) (not b!5677055) (not b!5676416) (not bm!430734) (not b!5677018) (not b!5676338) (not b!5676749) (not bm!430746) (not d!1791697) (not b!5676560) (not bm!430744) (not d!1791853) (not b!5676524) (not b_lambda!214673) (not bs!1323433) (not b!5677059) (not b!5676477) (not b!5676624) (not b!5677044) (not b_lambda!214669) (not bm!430776) (not b!5676331) (not b!5676874) (not b!5676951) (not b!5677066) (not b!5676340) (not b!5677063) (not bm!430810) (not b!5677064) (not bs!1323434) (not bm!430765) (not b!5677052) (not b!5676526) (not b!5676709) (not b!5676981) (not bm!430801) (not b!5677051) (not b!5677034) (not b!5676958) (not bm!430778) (not bm!430736) (not b!5677067) (not b!5677054) (not d!1791649) (not b!5676534) (not b!5676867) (not bm!430694) (not b!5677023) (not b!5676497) (not b!5676592) (not b!5677032) (not b!5676952) (not d!1791813) (not b!5676320) (not bm!430796) (not d!1791875) (not b!5676334) (not b!5676480) (not b!5676997) (not b!5677046) (not b!5677022) (not d!1791709) (not bm!430721) (not d!1791653) (not b!5676988) (not b!5676623) (not b_lambda!214645) (not bm!430819) (not bm!430696) (not b!5676888) (not b!5676750) (not b!5677017) (not d!1791751) (not bs!1323431) (not b!5677035) (not b!5676693) (not b!5676995) (not b!5676530) (not setNonEmpty!37956) (not b!5677074) (not b_lambda!214671) (not bm!430797) (not d!1791601) (not bm!430800) (not b!5676993) (not b!5676715) (not b!5676991) (not b_lambda!214665) (not bm!430813) (not b!5676957) (not b!5676807) (not b!5676593) (not b!5677076) (not bm!430795) (not bm!430777) (not b!5676732) (not d!1791647) (not d!1791707) (not b_lambda!214667) (not d!1791605) (not b!5676875) (not bm!430708) (not b!5676467) (not b!5676985) (not bm!430755) (not b!5677062) (not d!1791699) (not bm!430798) (not b!5677005) (not b!5676961) (not d!1791757) (not b!5676311) (not b!5676609) (not bm!430748) (not b!5677008) (not b_lambda!214663) (not d!1791599) (not b!5677068) (not d!1791631) (not b!5677025) (not bm!430764) (not b!5677000) (not b!5676344) (not setNonEmpty!37960) (not b!5676421) (not bm!430783) (not d!1791821) (not d!1791759) (not b!5677014) (not b!5676728) (not bm!430822) (not b!5677016) (not b!5676753) (not d!1791761) (not b!5676823) (not b!5676872) (not b!5676948) (not b!5677043) (not bm!430771) (not d!1791783) (not b!5676996) (not b!5676337) (not b!5676989) (not bm!430705) (not b!5677012) (not bm!430760) (not b!5677003) (not b!5676760) (not b!5676583) (not b!5676483) (not b!5676341) (not b!5677071) (not b!5676731) (not b!5677013) (not b!5676963) (not b!5676469) (not d!1791671) (not bs!1323432) (not d!1791801) (not b!5676620) (not d!1791881) (not d!1791879) (not b!5676984) (not b!5676894) (not b!5676756) (not b!5676415) (not bm!430814) (not b!5676947) (not d!1791693) (not b!5676627) (not d!1791597) (not d!1791603) (not b!5676829) (not bm!430825) (not d!1791883) (not b!5676962) (not b!5677060) (not b!5676956) (not b!5676493) (not b!5677009) (not b!5676759) (not b!5677029) (not b!5676476) (not b!5676983) (not b!5677050) (not d!1791715) (not b!5676575) (not b!5676979) (not bm!430743) (not b!5676486) (not b!5676555) (not b!5676527) (not b!5676999) (not b!5676368) (not b!5676390) (not d!1791753) (not b!5676663) (not b!5677075) (not d!1791873) (not bm!430820) (not b!5676521) (not bm!430751) (not bm!430700) (not bm!430709) (not bm!430717) (not d!1791785) (not b!5677019) (not b!5677070) (not b!5677026) (not b!5676871) (not b!5677040) (not d!1791663) (not b!5676487) (not b!5676342) (not b!5676468) (not bm!430763) (not b!5676955) (not b!5677072) (not b!5677006) (not b!5676621) (not bm!430756) (not bm!430749) (not b!5677036) (not b!5676582) (not b!5676348) (not b!5676987) (not b!5676479) (not b!5677004) (not d!1791819) (not b!5676496) (not b!5676533) (not bm!430788) (not b!5676960) (not b!5677039) (not bm!430824) (not b!5676631) (not b!5677021) (not b!5677042) (not bm!430720) (not b!5677056))
(check-sat)
