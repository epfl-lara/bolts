; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572174 () Bool)

(assert start!572174)

(declare-fun b!5465672 () Bool)

(assert (=> b!5465672 true))

(assert (=> b!5465672 true))

(declare-fun lambda!290393 () Int)

(declare-fun lambda!290392 () Int)

(assert (=> b!5465672 (not (= lambda!290393 lambda!290392))))

(assert (=> b!5465672 true))

(assert (=> b!5465672 true))

(declare-fun lambda!290394 () Int)

(assert (=> b!5465672 (not (= lambda!290394 lambda!290392))))

(assert (=> b!5465672 (not (= lambda!290394 lambda!290393))))

(assert (=> b!5465672 true))

(assert (=> b!5465672 true))

(declare-fun b!5465655 () Bool)

(assert (=> b!5465655 true))

(declare-fun b!5465651 () Bool)

(declare-fun e!3383962 () Bool)

(assert (=> b!5465651 (= e!3383962 true)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30904 0))(
  ( (C!30905 (val!25154 Int)) )
))
(declare-datatypes ((Regex!15317 0))(
  ( (ElementMatch!15317 (c!954863 C!30904)) (Concat!24162 (regOne!31146 Regex!15317) (regTwo!31146 Regex!15317)) (EmptyExpr!15317) (Star!15317 (reg!15646 Regex!15317)) (EmptyLang!15317) (Union!15317 (regOne!31147 Regex!15317) (regTwo!31147 Regex!15317)) )
))
(declare-datatypes ((List!62250 0))(
  ( (Nil!62126) (Cons!62126 (h!68574 Regex!15317) (t!375479 List!62250)) )
))
(declare-datatypes ((Context!9402 0))(
  ( (Context!9403 (exprs!5201 List!62250)) )
))
(declare-fun lt!2233312 () (InoxSet Context!9402))

(declare-fun r!7292 () Regex!15317)

(declare-datatypes ((List!62251 0))(
  ( (Nil!62127) (Cons!62127 (h!68575 C!30904) (t!375480 List!62251)) )
))
(declare-fun s!2326 () List!62251)

(declare-fun derivationStepZipperUp!669 (Context!9402 C!30904) (InoxSet Context!9402))

(assert (=> b!5465651 (= lt!2233312 (derivationStepZipperUp!669 (Context!9403 (Cons!62126 (reg!15646 r!7292) (Cons!62126 r!7292 Nil!62126))) (h!68575 s!2326)))))

(declare-fun b!5465652 () Bool)

(declare-fun e!3383964 () Bool)

(declare-fun tp!1503363 () Bool)

(declare-fun tp!1503358 () Bool)

(assert (=> b!5465652 (= e!3383964 (and tp!1503363 tp!1503358))))

(declare-fun b!5465653 () Bool)

(declare-fun e!3383963 () Bool)

(declare-fun e!3383959 () Bool)

(assert (=> b!5465653 (= e!3383963 e!3383959)))

(declare-fun res!2328670 () Bool)

(assert (=> b!5465653 (=> res!2328670 e!3383959)))

(declare-fun lt!2233314 () (InoxSet Context!9402))

(declare-fun lt!2233315 () (InoxSet Context!9402))

(assert (=> b!5465653 (= res!2328670 (not (= lt!2233314 lt!2233315)))))

(declare-fun derivationStepZipperDown!743 (Regex!15317 Context!9402 C!30904) (InoxSet Context!9402))

(assert (=> b!5465653 (= lt!2233315 (derivationStepZipperDown!743 r!7292 (Context!9403 Nil!62126) (h!68575 s!2326)))))

(assert (=> b!5465653 (= lt!2233314 (derivationStepZipperUp!669 (Context!9403 (Cons!62126 r!7292 Nil!62126)) (h!68575 s!2326)))))

(declare-fun b!5465654 () Bool)

(declare-fun tp_is_empty!39887 () Bool)

(assert (=> b!5465654 (= e!3383964 tp_is_empty!39887)))

(assert (=> b!5465655 (= e!3383959 e!3383962)))

(declare-fun res!2328672 () Bool)

(assert (=> b!5465655 (=> res!2328672 e!3383962)))

(declare-fun z!1189 () (InoxSet Context!9402))

(declare-fun derivationStepZipper!1512 ((InoxSet Context!9402) C!30904) (InoxSet Context!9402))

(assert (=> b!5465655 (= res!2328672 (not (= (derivationStepZipper!1512 z!1189 (h!68575 s!2326)) lt!2233315)))))

(declare-fun lambda!290395 () Int)

(declare-datatypes ((List!62252 0))(
  ( (Nil!62128) (Cons!62128 (h!68576 Context!9402) (t!375481 List!62252)) )
))
(declare-fun zl!343 () List!62252)

(declare-fun flatMap!1020 ((InoxSet Context!9402) Int) (InoxSet Context!9402))

(assert (=> b!5465655 (= (flatMap!1020 z!1189 lambda!290395) (derivationStepZipperUp!669 (h!68576 zl!343) (h!68575 s!2326)))))

(declare-datatypes ((Unit!155084 0))(
  ( (Unit!155085) )
))
(declare-fun lt!2233311 () Unit!155084)

(declare-fun lemmaFlatMapOnSingletonSet!552 ((InoxSet Context!9402) Context!9402 Int) Unit!155084)

(assert (=> b!5465655 (= lt!2233311 (lemmaFlatMapOnSingletonSet!552 z!1189 (h!68576 zl!343) lambda!290395))))

(declare-fun b!5465656 () Bool)

(declare-fun e!3383966 () Bool)

(declare-fun tp!1503362 () Bool)

(assert (=> b!5465656 (= e!3383966 tp!1503362)))

(declare-fun b!5465657 () Bool)

(declare-fun tp!1503364 () Bool)

(declare-fun tp!1503360 () Bool)

(assert (=> b!5465657 (= e!3383964 (and tp!1503364 tp!1503360))))

(declare-fun b!5465658 () Bool)

(declare-fun res!2328679 () Bool)

(assert (=> b!5465658 (=> res!2328679 e!3383963)))

(get-info :version)

(assert (=> b!5465658 (= res!2328679 ((_ is Nil!62127) s!2326))))

(declare-fun b!5465659 () Bool)

(declare-fun res!2328676 () Bool)

(declare-fun e!3383961 () Bool)

(assert (=> b!5465659 (=> res!2328676 e!3383961)))

(assert (=> b!5465659 (= res!2328676 (not ((_ is Cons!62126) (exprs!5201 (h!68576 zl!343)))))))

(declare-fun b!5465660 () Bool)

(declare-fun res!2328669 () Bool)

(assert (=> b!5465660 (=> res!2328669 e!3383961)))

(assert (=> b!5465660 (= res!2328669 (or ((_ is EmptyExpr!15317) r!7292) ((_ is EmptyLang!15317) r!7292) ((_ is ElementMatch!15317) r!7292) ((_ is Union!15317) r!7292) ((_ is Concat!24162) r!7292)))))

(declare-fun b!5465661 () Bool)

(declare-fun e!3383965 () Bool)

(declare-fun lt!2233318 () Bool)

(assert (=> b!5465661 (= e!3383965 lt!2233318)))

(declare-fun res!2328680 () Bool)

(declare-fun e!3383958 () Bool)

(assert (=> start!572174 (=> (not res!2328680) (not e!3383958))))

(declare-fun validRegex!7053 (Regex!15317) Bool)

(assert (=> start!572174 (= res!2328680 (validRegex!7053 r!7292))))

(assert (=> start!572174 e!3383958))

(assert (=> start!572174 e!3383964))

(declare-fun condSetEmpty!35827 () Bool)

(assert (=> start!572174 (= condSetEmpty!35827 (= z!1189 ((as const (Array Context!9402 Bool)) false)))))

(declare-fun setRes!35827 () Bool)

(assert (=> start!572174 setRes!35827))

(declare-fun e!3383956 () Bool)

(assert (=> start!572174 e!3383956))

(declare-fun e!3383960 () Bool)

(assert (=> start!572174 e!3383960))

(declare-fun b!5465662 () Bool)

(declare-fun res!2328674 () Bool)

(assert (=> b!5465662 (=> (not res!2328674) (not e!3383958))))

(declare-fun unfocusZipper!1059 (List!62252) Regex!15317)

(assert (=> b!5465662 (= res!2328674 (= r!7292 (unfocusZipper!1059 zl!343)))))

(declare-fun b!5465663 () Bool)

(declare-fun tp!1503361 () Bool)

(assert (=> b!5465663 (= e!3383964 tp!1503361)))

(declare-fun b!5465664 () Bool)

(declare-fun tp!1503359 () Bool)

(assert (=> b!5465664 (= e!3383960 (and tp_is_empty!39887 tp!1503359))))

(declare-fun setIsEmpty!35827 () Bool)

(assert (=> setIsEmpty!35827 setRes!35827))

(declare-fun b!5465665 () Bool)

(declare-fun res!2328673 () Bool)

(assert (=> b!5465665 (=> res!2328673 e!3383961)))

(declare-fun generalisedUnion!1246 (List!62250) Regex!15317)

(declare-fun unfocusZipperList!759 (List!62252) List!62250)

(assert (=> b!5465665 (= res!2328673 (not (= r!7292 (generalisedUnion!1246 (unfocusZipperList!759 zl!343)))))))

(declare-fun b!5465666 () Bool)

(declare-fun res!2328681 () Bool)

(assert (=> b!5465666 (=> res!2328681 e!3383961)))

(declare-fun generalisedConcat!986 (List!62250) Regex!15317)

(assert (=> b!5465666 (= res!2328681 (not (= r!7292 (generalisedConcat!986 (exprs!5201 (h!68576 zl!343))))))))

(declare-fun setElem!35827 () Context!9402)

(declare-fun setNonEmpty!35827 () Bool)

(declare-fun tp!1503356 () Bool)

(declare-fun inv!81539 (Context!9402) Bool)

(assert (=> setNonEmpty!35827 (= setRes!35827 (and tp!1503356 (inv!81539 setElem!35827) e!3383966))))

(declare-fun setRest!35827 () (InoxSet Context!9402))

(assert (=> setNonEmpty!35827 (= z!1189 ((_ map or) (store ((as const (Array Context!9402 Bool)) false) setElem!35827 true) setRest!35827))))

(declare-fun b!5465667 () Bool)

(declare-fun e!3383957 () Bool)

(declare-fun tp!1503357 () Bool)

(assert (=> b!5465667 (= e!3383957 tp!1503357)))

(declare-fun b!5465668 () Bool)

(assert (=> b!5465668 (= e!3383958 (not e!3383961))))

(declare-fun res!2328675 () Bool)

(assert (=> b!5465668 (=> res!2328675 e!3383961)))

(assert (=> b!5465668 (= res!2328675 (not ((_ is Cons!62128) zl!343)))))

(declare-fun lt!2233317 () Bool)

(declare-fun matchRSpec!2420 (Regex!15317 List!62251) Bool)

(assert (=> b!5465668 (= lt!2233317 (matchRSpec!2420 r!7292 s!2326))))

(declare-fun matchR!7502 (Regex!15317 List!62251) Bool)

(assert (=> b!5465668 (= lt!2233317 (matchR!7502 r!7292 s!2326))))

(declare-fun lt!2233316 () Unit!155084)

(declare-fun mainMatchTheorem!2420 (Regex!15317 List!62251) Unit!155084)

(assert (=> b!5465668 (= lt!2233316 (mainMatchTheorem!2420 r!7292 s!2326))))

(declare-fun tp!1503365 () Bool)

(declare-fun b!5465669 () Bool)

(assert (=> b!5465669 (= e!3383956 (and (inv!81539 (h!68576 zl!343)) e!3383957 tp!1503365))))

(declare-fun b!5465670 () Bool)

(declare-fun res!2328678 () Bool)

(assert (=> b!5465670 (=> res!2328678 e!3383961)))

(declare-fun isEmpty!34090 (List!62252) Bool)

(assert (=> b!5465670 (= res!2328678 (not (isEmpty!34090 (t!375481 zl!343))))))

(declare-fun b!5465671 () Bool)

(declare-fun res!2328682 () Bool)

(assert (=> b!5465671 (=> (not res!2328682) (not e!3383958))))

(declare-fun toList!9101 ((InoxSet Context!9402)) List!62252)

(assert (=> b!5465671 (= res!2328682 (= (toList!9101 z!1189) zl!343))))

(assert (=> b!5465672 (= e!3383961 e!3383963)))

(declare-fun res!2328671 () Bool)

(assert (=> b!5465672 (=> res!2328671 e!3383963)))

(assert (=> b!5465672 (= res!2328671 (not (= lt!2233317 e!3383965)))))

(declare-fun res!2328677 () Bool)

(assert (=> b!5465672 (=> res!2328677 e!3383965)))

(declare-fun isEmpty!34091 (List!62251) Bool)

(assert (=> b!5465672 (= res!2328677 (isEmpty!34091 s!2326))))

(declare-fun Exists!2496 (Int) Bool)

(assert (=> b!5465672 (= (Exists!2496 lambda!290392) (Exists!2496 lambda!290394))))

(declare-fun lt!2233313 () Unit!155084)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1146 (Regex!15317 Regex!15317 List!62251) Unit!155084)

(assert (=> b!5465672 (= lt!2233313 (lemmaExistCutMatchRandMatchRSpecEquivalent!1146 (reg!15646 r!7292) r!7292 s!2326))))

(assert (=> b!5465672 (= (Exists!2496 lambda!290392) (Exists!2496 lambda!290393))))

(declare-fun lt!2233310 () Unit!155084)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!470 (Regex!15317 List!62251) Unit!155084)

(assert (=> b!5465672 (= lt!2233310 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!470 (reg!15646 r!7292) s!2326))))

(assert (=> b!5465672 (= lt!2233318 (Exists!2496 lambda!290392))))

(declare-datatypes ((tuple2!65028 0))(
  ( (tuple2!65029 (_1!35817 List!62251) (_2!35817 List!62251)) )
))
(declare-datatypes ((Option!15426 0))(
  ( (None!15425) (Some!15425 (v!51454 tuple2!65028)) )
))
(declare-fun isDefined!12129 (Option!15426) Bool)

(declare-fun findConcatSeparation!1840 (Regex!15317 Regex!15317 List!62251 List!62251 List!62251) Option!15426)

(assert (=> b!5465672 (= lt!2233318 (isDefined!12129 (findConcatSeparation!1840 (reg!15646 r!7292) r!7292 Nil!62127 s!2326 s!2326)))))

(declare-fun lt!2233319 () Unit!155084)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1604 (Regex!15317 Regex!15317 List!62251) Unit!155084)

(assert (=> b!5465672 (= lt!2233319 (lemmaFindConcatSeparationEquivalentToExists!1604 (reg!15646 r!7292) r!7292 s!2326))))

(assert (= (and start!572174 res!2328680) b!5465671))

(assert (= (and b!5465671 res!2328682) b!5465662))

(assert (= (and b!5465662 res!2328674) b!5465668))

(assert (= (and b!5465668 (not res!2328675)) b!5465670))

(assert (= (and b!5465670 (not res!2328678)) b!5465666))

(assert (= (and b!5465666 (not res!2328681)) b!5465659))

(assert (= (and b!5465659 (not res!2328676)) b!5465665))

(assert (= (and b!5465665 (not res!2328673)) b!5465660))

(assert (= (and b!5465660 (not res!2328669)) b!5465672))

(assert (= (and b!5465672 (not res!2328677)) b!5465661))

(assert (= (and b!5465672 (not res!2328671)) b!5465658))

(assert (= (and b!5465658 (not res!2328679)) b!5465653))

(assert (= (and b!5465653 (not res!2328670)) b!5465655))

(assert (= (and b!5465655 (not res!2328672)) b!5465651))

(assert (= (and start!572174 ((_ is ElementMatch!15317) r!7292)) b!5465654))

(assert (= (and start!572174 ((_ is Concat!24162) r!7292)) b!5465657))

(assert (= (and start!572174 ((_ is Star!15317) r!7292)) b!5465663))

(assert (= (and start!572174 ((_ is Union!15317) r!7292)) b!5465652))

(assert (= (and start!572174 condSetEmpty!35827) setIsEmpty!35827))

(assert (= (and start!572174 (not condSetEmpty!35827)) setNonEmpty!35827))

(assert (= setNonEmpty!35827 b!5465656))

(assert (= b!5465669 b!5465667))

(assert (= (and start!572174 ((_ is Cons!62128) zl!343)) b!5465669))

(assert (= (and start!572174 ((_ is Cons!62127) s!2326)) b!5465664))

(declare-fun m!6485400 () Bool)

(assert (=> b!5465651 m!6485400))

(declare-fun m!6485402 () Bool)

(assert (=> b!5465666 m!6485402))

(declare-fun m!6485404 () Bool)

(assert (=> b!5465669 m!6485404))

(declare-fun m!6485406 () Bool)

(assert (=> b!5465671 m!6485406))

(declare-fun m!6485408 () Bool)

(assert (=> start!572174 m!6485408))

(declare-fun m!6485410 () Bool)

(assert (=> b!5465662 m!6485410))

(declare-fun m!6485412 () Bool)

(assert (=> b!5465655 m!6485412))

(declare-fun m!6485414 () Bool)

(assert (=> b!5465655 m!6485414))

(declare-fun m!6485416 () Bool)

(assert (=> b!5465655 m!6485416))

(declare-fun m!6485418 () Bool)

(assert (=> b!5465655 m!6485418))

(declare-fun m!6485420 () Bool)

(assert (=> b!5465665 m!6485420))

(assert (=> b!5465665 m!6485420))

(declare-fun m!6485422 () Bool)

(assert (=> b!5465665 m!6485422))

(declare-fun m!6485424 () Bool)

(assert (=> b!5465668 m!6485424))

(declare-fun m!6485426 () Bool)

(assert (=> b!5465668 m!6485426))

(declare-fun m!6485428 () Bool)

(assert (=> b!5465668 m!6485428))

(declare-fun m!6485430 () Bool)

(assert (=> b!5465670 m!6485430))

(declare-fun m!6485432 () Bool)

(assert (=> setNonEmpty!35827 m!6485432))

(declare-fun m!6485434 () Bool)

(assert (=> b!5465672 m!6485434))

(declare-fun m!6485436 () Bool)

(assert (=> b!5465672 m!6485436))

(declare-fun m!6485438 () Bool)

(assert (=> b!5465672 m!6485438))

(declare-fun m!6485440 () Bool)

(assert (=> b!5465672 m!6485440))

(declare-fun m!6485442 () Bool)

(assert (=> b!5465672 m!6485442))

(assert (=> b!5465672 m!6485436))

(assert (=> b!5465672 m!6485436))

(assert (=> b!5465672 m!6485442))

(declare-fun m!6485444 () Bool)

(assert (=> b!5465672 m!6485444))

(declare-fun m!6485446 () Bool)

(assert (=> b!5465672 m!6485446))

(declare-fun m!6485448 () Bool)

(assert (=> b!5465672 m!6485448))

(declare-fun m!6485450 () Bool)

(assert (=> b!5465672 m!6485450))

(declare-fun m!6485452 () Bool)

(assert (=> b!5465653 m!6485452))

(declare-fun m!6485454 () Bool)

(assert (=> b!5465653 m!6485454))

(check-sat (not b!5465651) (not b!5465655) (not b!5465669) (not b!5465671) (not b!5465663) (not b!5465666) (not b!5465662) (not b!5465670) (not b!5465672) (not b!5465656) tp_is_empty!39887 (not b!5465665) (not b!5465653) (not b!5465668) (not b!5465652) (not b!5465667) (not b!5465657) (not start!572174) (not setNonEmpty!35827) (not b!5465664))
(check-sat)
