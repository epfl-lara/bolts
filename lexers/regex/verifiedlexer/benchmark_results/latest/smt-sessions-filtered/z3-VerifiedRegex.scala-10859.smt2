; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!560046 () Bool)

(assert start!560046)

(declare-fun b!5311796 () Bool)

(assert (=> b!5311796 true))

(assert (=> b!5311796 true))

(declare-fun lambda!270642 () Int)

(declare-fun lambda!270641 () Int)

(assert (=> b!5311796 (not (= lambda!270642 lambda!270641))))

(assert (=> b!5311796 true))

(assert (=> b!5311796 true))

(declare-fun b!5311803 () Bool)

(assert (=> b!5311803 true))

(declare-fun bs!1231586 () Bool)

(declare-fun b!5311810 () Bool)

(assert (= bs!1231586 (and b!5311810 b!5311796)))

(declare-datatypes ((C!30200 0))(
  ( (C!30201 (val!24802 Int)) )
))
(declare-datatypes ((Regex!14965 0))(
  ( (ElementMatch!14965 (c!922685 C!30200)) (Concat!23810 (regOne!30442 Regex!14965) (regTwo!30442 Regex!14965)) (EmptyExpr!14965) (Star!14965 (reg!15294 Regex!14965)) (EmptyLang!14965) (Union!14965 (regOne!30443 Regex!14965) (regTwo!30443 Regex!14965)) )
))
(declare-fun r!7292 () Regex!14965)

(declare-fun lambda!270644 () Int)

(declare-fun lt!2170350 () Regex!14965)

(assert (=> bs!1231586 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170350 (regTwo!30442 r!7292))) (= lambda!270644 lambda!270641))))

(assert (=> bs!1231586 (not (= lambda!270644 lambda!270642))))

(assert (=> b!5311810 true))

(assert (=> b!5311810 true))

(assert (=> b!5311810 true))

(declare-fun lambda!270645 () Int)

(assert (=> bs!1231586 (not (= lambda!270645 lambda!270641))))

(assert (=> bs!1231586 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170350 (regTwo!30442 r!7292))) (= lambda!270645 lambda!270642))))

(assert (=> b!5311810 (not (= lambda!270645 lambda!270644))))

(assert (=> b!5311810 true))

(assert (=> b!5311810 true))

(assert (=> b!5311810 true))

(declare-fun lambda!270646 () Int)

(declare-fun lt!2170370 () Regex!14965)

(assert (=> bs!1231586 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170370 (regTwo!30442 r!7292))) (= lambda!270646 lambda!270641))))

(assert (=> bs!1231586 (not (= lambda!270646 lambda!270642))))

(assert (=> b!5311810 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 (regOne!30442 r!7292))) (= lt!2170370 lt!2170350)) (= lambda!270646 lambda!270644))))

(assert (=> b!5311810 (not (= lambda!270646 lambda!270645))))

(assert (=> b!5311810 true))

(assert (=> b!5311810 true))

(assert (=> b!5311810 true))

(declare-fun lambda!270647 () Int)

(assert (=> bs!1231586 (not (= lambda!270647 lambda!270641))))

(assert (=> b!5311810 (not (= lambda!270647 lambda!270646))))

(assert (=> bs!1231586 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170370 (regTwo!30442 r!7292))) (= lambda!270647 lambda!270642))))

(assert (=> b!5311810 (not (= lambda!270647 lambda!270644))))

(assert (=> b!5311810 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 (regOne!30442 r!7292))) (= lt!2170370 lt!2170350)) (= lambda!270647 lambda!270645))))

(assert (=> b!5311810 true))

(assert (=> b!5311810 true))

(assert (=> b!5311810 true))

(declare-fun b!5311772 () Bool)

(declare-fun res!2253468 () Bool)

(declare-fun e!3300708 () Bool)

(assert (=> b!5311772 (=> res!2253468 e!3300708)))

(declare-datatypes ((List!61194 0))(
  ( (Nil!61070) (Cons!61070 (h!67518 C!30200) (t!374399 List!61194)) )
))
(declare-fun s!2326 () List!61194)

(declare-fun lt!2170342 () Bool)

(declare-fun lt!2170336 () Regex!14965)

(declare-fun matchR!7150 (Regex!14965 List!61194) Bool)

(assert (=> b!5311772 (= res!2253468 (not (= lt!2170342 (matchR!7150 (Concat!23810 lt!2170336 (regTwo!30442 r!7292)) s!2326))))))

(declare-fun b!5311773 () Bool)

(declare-fun e!3300712 () Bool)

(declare-fun e!3300709 () Bool)

(assert (=> b!5311773 (= e!3300712 e!3300709)))

(declare-fun res!2253461 () Bool)

(assert (=> b!5311773 (=> res!2253461 e!3300709)))

(declare-fun e!3300707 () Bool)

(assert (=> b!5311773 (= res!2253461 e!3300707)))

(declare-fun res!2253464 () Bool)

(assert (=> b!5311773 (=> (not res!2253464) (not e!3300707))))

(declare-fun lt!2170329 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61195 0))(
  ( (Nil!61071) (Cons!61071 (h!67519 Regex!14965) (t!374400 List!61195)) )
))
(declare-datatypes ((Context!8698 0))(
  ( (Context!8699 (exprs!4849 List!61195)) )
))
(declare-fun lt!2170376 () (InoxSet Context!8698))

(declare-fun matchZipper!1209 ((InoxSet Context!8698) List!61194) Bool)

(assert (=> b!5311773 (= res!2253464 (not (= lt!2170329 (matchZipper!1209 lt!2170376 (t!374399 s!2326)))))))

(declare-fun lt!2170379 () (InoxSet Context!8698))

(declare-fun e!3300713 () Bool)

(assert (=> b!5311773 (= (matchZipper!1209 lt!2170379 (t!374399 s!2326)) e!3300713)))

(declare-fun res!2253458 () Bool)

(assert (=> b!5311773 (=> res!2253458 e!3300713)))

(declare-fun lt!2170375 () Bool)

(assert (=> b!5311773 (= res!2253458 lt!2170375)))

(declare-fun lt!2170353 () (InoxSet Context!8698))

(declare-datatypes ((Unit!153378 0))(
  ( (Unit!153379) )
))
(declare-fun lt!2170337 () Unit!153378)

(declare-fun lt!2170358 () (InoxSet Context!8698))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!202 ((InoxSet Context!8698) (InoxSet Context!8698) List!61194) Unit!153378)

(assert (=> b!5311773 (= lt!2170337 (lemmaZipperConcatMatchesSameAsBothZippers!202 lt!2170353 lt!2170358 (t!374399 s!2326)))))

(declare-fun lt!2170343 () (InoxSet Context!8698))

(declare-fun lt!2170348 () Context!8698)

(declare-fun lambda!270643 () Int)

(declare-fun flatMap!692 ((InoxSet Context!8698) Int) (InoxSet Context!8698))

(declare-fun derivationStepZipperUp!337 (Context!8698 C!30200) (InoxSet Context!8698))

(assert (=> b!5311773 (= (flatMap!692 lt!2170343 lambda!270643) (derivationStepZipperUp!337 lt!2170348 (h!67518 s!2326)))))

(declare-fun lt!2170377 () Unit!153378)

(declare-fun lemmaFlatMapOnSingletonSet!224 ((InoxSet Context!8698) Context!8698 Int) Unit!153378)

(assert (=> b!5311773 (= lt!2170377 (lemmaFlatMapOnSingletonSet!224 lt!2170343 lt!2170348 lambda!270643))))

(declare-fun b!5311774 () Bool)

(declare-fun e!3300714 () Bool)

(declare-fun lt!2170345 () (InoxSet Context!8698))

(assert (=> b!5311774 (= e!3300714 (matchZipper!1209 lt!2170345 (t!374399 s!2326)))))

(declare-fun b!5311775 () Bool)

(declare-fun e!3300703 () Unit!153378)

(declare-fun Unit!153380 () Unit!153378)

(assert (=> b!5311775 (= e!3300703 Unit!153380)))

(declare-fun b!5311776 () Bool)

(declare-fun res!2253454 () Bool)

(declare-fun e!3300704 () Bool)

(assert (=> b!5311776 (=> res!2253454 e!3300704)))

(declare-datatypes ((List!61196 0))(
  ( (Nil!61072) (Cons!61072 (h!67520 Context!8698) (t!374401 List!61196)) )
))
(declare-fun zl!343 () List!61196)

(declare-fun generalisedUnion!894 (List!61195) Regex!14965)

(declare-fun unfocusZipperList!407 (List!61196) List!61195)

(assert (=> b!5311776 (= res!2253454 (not (= r!7292 (generalisedUnion!894 (unfocusZipperList!407 zl!343)))))))

(declare-fun b!5311777 () Bool)

(declare-fun res!2253445 () Bool)

(declare-fun e!3300702 () Bool)

(assert (=> b!5311777 (=> res!2253445 e!3300702)))

(declare-fun nullable!5134 (Regex!14965) Bool)

(assert (=> b!5311777 (= res!2253445 (not (nullable!5134 (regOne!30442 (regOne!30442 r!7292)))))))

(declare-fun b!5311778 () Bool)

(declare-fun e!3300711 () Bool)

(assert (=> b!5311778 (= e!3300711 e!3300712)))

(declare-fun res!2253455 () Bool)

(assert (=> b!5311778 (=> res!2253455 e!3300712)))

(assert (=> b!5311778 (= res!2253455 (not (= lt!2170376 lt!2170379)))))

(assert (=> b!5311778 (= lt!2170379 ((_ map or) lt!2170353 lt!2170358))))

(assert (=> b!5311778 (= lt!2170358 (derivationStepZipperUp!337 lt!2170348 (h!67518 s!2326)))))

(declare-fun lt!2170361 () (InoxSet Context!8698))

(declare-fun lt!2170349 () Context!8698)

(assert (=> b!5311778 (= (flatMap!692 lt!2170361 lambda!270643) (derivationStepZipperUp!337 lt!2170349 (h!67518 s!2326)))))

(declare-fun lt!2170369 () Unit!153378)

(assert (=> b!5311778 (= lt!2170369 (lemmaFlatMapOnSingletonSet!224 lt!2170361 lt!2170349 lambda!270643))))

(declare-fun lt!2170371 () (InoxSet Context!8698))

(assert (=> b!5311778 (= lt!2170371 (derivationStepZipperUp!337 lt!2170349 (h!67518 s!2326)))))

(declare-fun derivationStepZipper!1208 ((InoxSet Context!8698) C!30200) (InoxSet Context!8698))

(assert (=> b!5311778 (= lt!2170376 (derivationStepZipper!1208 lt!2170361 (h!67518 s!2326)))))

(assert (=> b!5311778 (= lt!2170343 (store ((as const (Array Context!8698 Bool)) false) lt!2170348 true))))

(assert (=> b!5311778 (= lt!2170361 (store ((as const (Array Context!8698 Bool)) false) lt!2170349 true))))

(declare-fun lt!2170364 () List!61195)

(assert (=> b!5311778 (= lt!2170349 (Context!8699 lt!2170364))))

(declare-fun lt!2170347 () List!61195)

(assert (=> b!5311778 (= lt!2170364 (Cons!61071 (regOne!30442 (regOne!30442 r!7292)) lt!2170347))))

(declare-fun b!5311779 () Bool)

(declare-fun e!3300692 () Bool)

(declare-fun tp!1479684 () Bool)

(assert (=> b!5311779 (= e!3300692 tp!1479684)))

(declare-fun b!5311780 () Bool)

(declare-fun e!3300693 () Bool)

(assert (=> b!5311780 (= e!3300708 e!3300693)))

(declare-fun res!2253441 () Bool)

(assert (=> b!5311780 (=> res!2253441 e!3300693)))

(declare-fun lt!2170352 () Bool)

(assert (=> b!5311780 (= res!2253441 (not (= lt!2170342 lt!2170352)))))

(assert (=> b!5311780 (= lt!2170352 (matchR!7150 (Concat!23810 lt!2170336 lt!2170370) s!2326))))

(declare-fun b!5311782 () Bool)

(assert (=> b!5311782 (= e!3300713 (matchZipper!1209 lt!2170358 (t!374399 s!2326)))))

(declare-fun b!5311783 () Bool)

(declare-fun e!3300705 () Bool)

(declare-fun tp!1479689 () Bool)

(declare-fun tp!1479692 () Bool)

(assert (=> b!5311783 (= e!3300705 (and tp!1479689 tp!1479692))))

(declare-fun b!5311784 () Bool)

(declare-fun tp_is_empty!39183 () Bool)

(assert (=> b!5311784 (= e!3300705 tp_is_empty!39183)))

(declare-fun b!5311785 () Bool)

(declare-fun e!3300696 () Bool)

(declare-fun lt!2170363 () (InoxSet Context!8698))

(assert (=> b!5311785 (= e!3300696 (matchZipper!1209 lt!2170363 (t!374399 s!2326)))))

(declare-fun b!5311786 () Bool)

(declare-fun res!2253449 () Bool)

(declare-fun e!3300695 () Bool)

(assert (=> b!5311786 (=> res!2253449 e!3300695)))

(declare-fun isEmpty!33035 (List!61195) Bool)

(assert (=> b!5311786 (= res!2253449 (isEmpty!33035 (t!374400 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun b!5311787 () Bool)

(declare-fun res!2253440 () Bool)

(declare-fun e!3300700 () Bool)

(assert (=> b!5311787 (=> (not res!2253440) (not e!3300700))))

(declare-fun unfocusZipper!707 (List!61196) Regex!14965)

(assert (=> b!5311787 (= res!2253440 (= r!7292 (unfocusZipper!707 zl!343)))))

(declare-fun b!5311788 () Bool)

(declare-fun res!2253447 () Bool)

(assert (=> b!5311788 (=> res!2253447 e!3300704)))

(declare-fun generalisedConcat!634 (List!61195) Regex!14965)

(assert (=> b!5311788 (= res!2253447 (not (= r!7292 (generalisedConcat!634 (exprs!4849 (h!67520 zl!343))))))))

(declare-fun b!5311789 () Bool)

(assert (=> b!5311789 (= e!3300707 (not (matchZipper!1209 (derivationStepZipper!1208 lt!2170343 (h!67518 s!2326)) (t!374399 s!2326))))))

(declare-fun b!5311790 () Bool)

(declare-fun res!2253466 () Bool)

(assert (=> b!5311790 (=> res!2253466 e!3300704)))

(get-info :version)

(assert (=> b!5311790 (= res!2253466 (or ((_ is EmptyExpr!14965) r!7292) ((_ is EmptyLang!14965) r!7292) ((_ is ElementMatch!14965) r!7292) ((_ is Union!14965) r!7292) (not ((_ is Concat!23810) r!7292))))))

(declare-fun b!5311791 () Bool)

(declare-fun res!2253450 () Bool)

(assert (=> b!5311791 (=> (not res!2253450) (not e!3300700))))

(declare-fun z!1189 () (InoxSet Context!8698))

(declare-fun toList!8749 ((InoxSet Context!8698)) List!61196)

(assert (=> b!5311791 (= res!2253450 (= (toList!8749 z!1189) zl!343))))

(declare-fun b!5311792 () Bool)

(declare-fun res!2253453 () Bool)

(assert (=> b!5311792 (=> res!2253453 e!3300704)))

(assert (=> b!5311792 (= res!2253453 (not ((_ is Cons!61071) (exprs!4849 (h!67520 zl!343)))))))

(declare-fun b!5311793 () Bool)

(declare-fun res!2253451 () Bool)

(declare-fun e!3300710 () Bool)

(assert (=> b!5311793 (=> res!2253451 e!3300710)))

(declare-fun lt!2170333 () List!61196)

(declare-fun zipperDepth!82 (List!61196) Int)

(assert (=> b!5311793 (= res!2253451 (> (zipperDepth!82 lt!2170333) (zipperDepth!82 zl!343)))))

(declare-fun b!5311794 () Bool)

(declare-fun e!3300699 () Bool)

(declare-fun tp!1479687 () Bool)

(assert (=> b!5311794 (= e!3300699 (and tp_is_empty!39183 tp!1479687))))

(declare-fun b!5311795 () Bool)

(declare-fun Unit!153381 () Unit!153378)

(assert (=> b!5311795 (= e!3300703 Unit!153381)))

(declare-fun lt!2170356 () (InoxSet Context!8698))

(declare-fun lt!2170351 () Unit!153378)

(assert (=> b!5311795 (= lt!2170351 (lemmaZipperConcatMatchesSameAsBothZippers!202 lt!2170356 lt!2170345 (t!374399 s!2326)))))

(declare-fun res!2253469 () Bool)

(assert (=> b!5311795 (= res!2253469 (matchZipper!1209 lt!2170356 (t!374399 s!2326)))))

(assert (=> b!5311795 (=> res!2253469 e!3300714)))

(assert (=> b!5311795 (= (matchZipper!1209 ((_ map or) lt!2170356 lt!2170345) (t!374399 s!2326)) e!3300714)))

(assert (=> b!5311796 (= e!3300704 e!3300695)))

(declare-fun res!2253457 () Bool)

(assert (=> b!5311796 (=> res!2253457 e!3300695)))

(declare-fun lt!2170338 () Bool)

(assert (=> b!5311796 (= res!2253457 (or (not (= lt!2170342 lt!2170338)) ((_ is Nil!61070) s!2326)))))

(declare-fun Exists!2146 (Int) Bool)

(assert (=> b!5311796 (= (Exists!2146 lambda!270641) (Exists!2146 lambda!270642))))

(declare-fun lt!2170362 () Unit!153378)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!800 (Regex!14965 Regex!14965 List!61194) Unit!153378)

(assert (=> b!5311796 (= lt!2170362 (lemmaExistCutMatchRandMatchRSpecEquivalent!800 (regOne!30442 r!7292) (regTwo!30442 r!7292) s!2326))))

(assert (=> b!5311796 (= lt!2170338 (Exists!2146 lambda!270641))))

(declare-datatypes ((tuple2!64328 0))(
  ( (tuple2!64329 (_1!35467 List!61194) (_2!35467 List!61194)) )
))
(declare-datatypes ((Option!15076 0))(
  ( (None!15075) (Some!15075 (v!51104 tuple2!64328)) )
))
(declare-fun isDefined!11779 (Option!15076) Bool)

(declare-fun findConcatSeparation!1490 (Regex!14965 Regex!14965 List!61194 List!61194 List!61194) Option!15076)

(assert (=> b!5311796 (= lt!2170338 (isDefined!11779 (findConcatSeparation!1490 (regOne!30442 r!7292) (regTwo!30442 r!7292) Nil!61070 s!2326 s!2326)))))

(declare-fun lt!2170340 () Unit!153378)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1254 (Regex!14965 Regex!14965 List!61194) Unit!153378)

(assert (=> b!5311796 (= lt!2170340 (lemmaFindConcatSeparationEquivalentToExists!1254 (regOne!30442 r!7292) (regTwo!30442 r!7292) s!2326))))

(declare-fun b!5311797 () Bool)

(declare-fun res!2253448 () Bool)

(assert (=> b!5311797 (=> res!2253448 e!3300708)))

(assert (=> b!5311797 (= res!2253448 (not (= lt!2170342 (matchR!7150 (Concat!23810 (regOne!30442 r!7292) (regTwo!30442 r!7292)) s!2326))))))

(declare-fun b!5311798 () Bool)

(declare-fun e!3300698 () Bool)

(assert (=> b!5311798 (= e!3300698 e!3300710)))

(declare-fun res!2253462 () Bool)

(assert (=> b!5311798 (=> res!2253462 e!3300710)))

(declare-fun zipperDepthTotal!126 (List!61196) Int)

(assert (=> b!5311798 (= res!2253462 (>= (zipperDepthTotal!126 lt!2170333) (zipperDepthTotal!126 zl!343)))))

(assert (=> b!5311798 (= lt!2170333 (Cons!61072 lt!2170349 Nil!61072))))

(declare-fun b!5311799 () Bool)

(declare-fun e!3300701 () Bool)

(declare-fun tp!1479686 () Bool)

(assert (=> b!5311799 (= e!3300701 tp!1479686)))

(declare-fun setIsEmpty!34157 () Bool)

(declare-fun setRes!34157 () Bool)

(assert (=> setIsEmpty!34157 setRes!34157))

(declare-fun b!5311800 () Bool)

(declare-fun res!2253465 () Bool)

(assert (=> b!5311800 (=> res!2253465 e!3300698)))

(declare-fun contextDepthTotal!106 (Context!8698) Int)

(assert (=> b!5311800 (= res!2253465 (>= (contextDepthTotal!106 lt!2170349) (contextDepthTotal!106 (h!67520 zl!343))))))

(declare-fun b!5311801 () Bool)

(declare-fun e!3300697 () Bool)

(assert (=> b!5311801 (= e!3300697 e!3300711)))

(declare-fun res!2253452 () Bool)

(assert (=> b!5311801 (=> res!2253452 e!3300711)))

(declare-fun e!3300694 () Bool)

(assert (=> b!5311801 (= res!2253452 e!3300694)))

(declare-fun res!2253443 () Bool)

(assert (=> b!5311801 (=> (not res!2253443) (not e!3300694))))

(assert (=> b!5311801 (= res!2253443 (not (= lt!2170329 lt!2170375)))))

(assert (=> b!5311801 (= lt!2170329 (matchZipper!1209 lt!2170356 (t!374399 s!2326)))))

(declare-fun lt!2170357 () (InoxSet Context!8698))

(assert (=> b!5311801 (= (matchZipper!1209 lt!2170357 (t!374399 s!2326)) e!3300696)))

(declare-fun res!2253444 () Bool)

(assert (=> b!5311801 (=> res!2253444 e!3300696)))

(assert (=> b!5311801 (= res!2253444 lt!2170375)))

(assert (=> b!5311801 (= lt!2170375 (matchZipper!1209 lt!2170353 (t!374399 s!2326)))))

(declare-fun lt!2170339 () Unit!153378)

(assert (=> b!5311801 (= lt!2170339 (lemmaZipperConcatMatchesSameAsBothZippers!202 lt!2170353 lt!2170363 (t!374399 s!2326)))))

(declare-fun b!5311802 () Bool)

(assert (=> b!5311802 (= e!3300709 e!3300698)))

(declare-fun res!2253446 () Bool)

(assert (=> b!5311802 (=> res!2253446 e!3300698)))

(assert (=> b!5311802 (= res!2253446 (not (= (exprs!4849 (h!67520 zl!343)) (Cons!61071 lt!2170336 (t!374400 (exprs!4849 (h!67520 zl!343)))))))))

(assert (=> b!5311802 (= lt!2170336 (Concat!23810 (regOne!30442 (regOne!30442 r!7292)) (regTwo!30442 (regOne!30442 r!7292))))))

(declare-fun res!2253467 () Bool)

(assert (=> start!560046 (=> (not res!2253467) (not e!3300700))))

(declare-fun validRegex!6701 (Regex!14965) Bool)

(assert (=> start!560046 (= res!2253467 (validRegex!6701 r!7292))))

(assert (=> start!560046 e!3300700))

(assert (=> start!560046 e!3300705))

(declare-fun condSetEmpty!34157 () Bool)

(assert (=> start!560046 (= condSetEmpty!34157 (= z!1189 ((as const (Array Context!8698 Bool)) false)))))

(assert (=> start!560046 setRes!34157))

(declare-fun e!3300706 () Bool)

(assert (=> start!560046 e!3300706))

(assert (=> start!560046 e!3300699))

(declare-fun b!5311781 () Bool)

(declare-fun res!2253459 () Bool)

(assert (=> b!5311781 (=> res!2253459 e!3300704)))

(declare-fun isEmpty!33036 (List!61196) Bool)

(assert (=> b!5311781 (= res!2253459 (not (isEmpty!33036 (t!374401 zl!343))))))

(assert (=> b!5311803 (= e!3300695 e!3300702)))

(declare-fun res!2253463 () Bool)

(assert (=> b!5311803 (=> res!2253463 e!3300702)))

(assert (=> b!5311803 (= res!2253463 (or (and ((_ is ElementMatch!14965) (regOne!30442 r!7292)) (= (c!922685 (regOne!30442 r!7292)) (h!67518 s!2326))) ((_ is Union!14965) (regOne!30442 r!7292)) (not ((_ is Concat!23810) (regOne!30442 r!7292)))))))

(declare-fun lt!2170366 () Unit!153378)

(assert (=> b!5311803 (= lt!2170366 e!3300703)))

(declare-fun c!922684 () Bool)

(assert (=> b!5311803 (= c!922684 (nullable!5134 (h!67519 (exprs!4849 (h!67520 zl!343)))))))

(assert (=> b!5311803 (= (flatMap!692 z!1189 lambda!270643) (derivationStepZipperUp!337 (h!67520 zl!343) (h!67518 s!2326)))))

(declare-fun lt!2170330 () Unit!153378)

(assert (=> b!5311803 (= lt!2170330 (lemmaFlatMapOnSingletonSet!224 z!1189 (h!67520 zl!343) lambda!270643))))

(declare-fun lt!2170335 () Context!8698)

(assert (=> b!5311803 (= lt!2170345 (derivationStepZipperUp!337 lt!2170335 (h!67518 s!2326)))))

(declare-fun derivationStepZipperDown!413 (Regex!14965 Context!8698 C!30200) (InoxSet Context!8698))

(assert (=> b!5311803 (= lt!2170356 (derivationStepZipperDown!413 (h!67519 (exprs!4849 (h!67520 zl!343))) lt!2170335 (h!67518 s!2326)))))

(assert (=> b!5311803 (= lt!2170335 (Context!8699 (t!374400 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun lt!2170372 () (InoxSet Context!8698))

(assert (=> b!5311803 (= lt!2170372 (derivationStepZipperUp!337 (Context!8699 (Cons!61071 (h!67519 (exprs!4849 (h!67520 zl!343))) (t!374400 (exprs!4849 (h!67520 zl!343))))) (h!67518 s!2326)))))

(declare-fun tp!1479690 () Bool)

(declare-fun b!5311804 () Bool)

(declare-fun inv!80659 (Context!8698) Bool)

(assert (=> b!5311804 (= e!3300706 (and (inv!80659 (h!67520 zl!343)) e!3300701 tp!1479690))))

(declare-fun b!5311805 () Bool)

(declare-fun tp!1479693 () Bool)

(assert (=> b!5311805 (= e!3300705 tp!1479693)))

(declare-fun b!5311806 () Bool)

(declare-fun lt!2170360 () Regex!14965)

(assert (=> b!5311806 (= e!3300693 (validRegex!6701 lt!2170360))))

(assert (=> b!5311806 (= lt!2170352 (matchR!7150 lt!2170360 s!2326))))

(assert (=> b!5311806 (= lt!2170360 (Concat!23810 (regOne!30442 (regOne!30442 r!7292)) (Concat!23810 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370)))))

(declare-fun lt!2170331 () Unit!153378)

(declare-fun lemmaConcatAssociative!6 (Regex!14965 Regex!14965 Regex!14965 List!61194) Unit!153378)

(assert (=> b!5311806 (= lt!2170331 (lemmaConcatAssociative!6 (regOne!30442 (regOne!30442 r!7292)) (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 s!2326))))

(declare-fun b!5311807 () Bool)

(declare-fun tp!1479685 () Bool)

(declare-fun tp!1479691 () Bool)

(assert (=> b!5311807 (= e!3300705 (and tp!1479685 tp!1479691))))

(declare-fun b!5311808 () Bool)

(assert (=> b!5311808 (= e!3300702 e!3300697)))

(declare-fun res!2253456 () Bool)

(assert (=> b!5311808 (=> res!2253456 e!3300697)))

(assert (=> b!5311808 (= res!2253456 (not (= lt!2170356 lt!2170357)))))

(assert (=> b!5311808 (= lt!2170357 ((_ map or) lt!2170353 lt!2170363))))

(assert (=> b!5311808 (= lt!2170363 (derivationStepZipperDown!413 (regTwo!30442 (regOne!30442 r!7292)) lt!2170335 (h!67518 s!2326)))))

(assert (=> b!5311808 (= lt!2170353 (derivationStepZipperDown!413 (regOne!30442 (regOne!30442 r!7292)) lt!2170348 (h!67518 s!2326)))))

(assert (=> b!5311808 (= lt!2170348 (Context!8699 lt!2170347))))

(assert (=> b!5311808 (= lt!2170347 (Cons!61071 (regTwo!30442 (regOne!30442 r!7292)) (t!374400 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun b!5311809 () Bool)

(assert (=> b!5311809 (= e!3300694 (not (matchZipper!1209 lt!2170363 (t!374399 s!2326))))))

(assert (=> b!5311810 (= e!3300710 e!3300708)))

(declare-fun res!2253442 () Bool)

(assert (=> b!5311810 (=> res!2253442 e!3300708)))

(declare-fun lt!2170344 () Bool)

(declare-fun lt!2170341 () Bool)

(declare-fun lt!2170355 () Bool)

(declare-fun lt!2170365 () Bool)

(declare-fun lt!2170373 () Bool)

(assert (=> b!5311810 (= res!2253442 (or (not (= lt!2170373 (or lt!2170355 lt!2170365))) (not (= lt!2170373 (or lt!2170341 lt!2170344)))))))

(assert (=> b!5311810 (= lt!2170373 (matchZipper!1209 z!1189 s!2326))))

(assert (=> b!5311810 (= (Exists!2146 lambda!270646) (Exists!2146 lambda!270647))))

(declare-fun lt!2170367 () Unit!153378)

(assert (=> b!5311810 (= lt!2170367 (lemmaExistCutMatchRandMatchRSpecEquivalent!800 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 s!2326))))

(assert (=> b!5311810 (= (isDefined!11779 (findConcatSeparation!1490 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 Nil!61070 s!2326 s!2326)) (Exists!2146 lambda!270646))))

(declare-fun lt!2170378 () Unit!153378)

(assert (=> b!5311810 (= lt!2170378 (lemmaFindConcatSeparationEquivalentToExists!1254 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 s!2326))))

(assert (=> b!5311810 (= lt!2170370 (generalisedConcat!634 (t!374400 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun matchRSpec!2068 (Regex!14965 List!61194) Bool)

(assert (=> b!5311810 (= lt!2170344 (matchRSpec!2068 lt!2170350 s!2326))))

(declare-fun lt!2170346 () Unit!153378)

(declare-fun mainMatchTheorem!2068 (Regex!14965 List!61194) Unit!153378)

(assert (=> b!5311810 (= lt!2170346 (mainMatchTheorem!2068 lt!2170350 s!2326))))

(assert (=> b!5311810 (= (Exists!2146 lambda!270644) (Exists!2146 lambda!270645))))

(declare-fun lt!2170374 () Unit!153378)

(assert (=> b!5311810 (= lt!2170374 (lemmaExistCutMatchRandMatchRSpecEquivalent!800 (regOne!30442 (regOne!30442 r!7292)) lt!2170350 s!2326))))

(assert (=> b!5311810 (= (isDefined!11779 (findConcatSeparation!1490 (regOne!30442 (regOne!30442 r!7292)) lt!2170350 Nil!61070 s!2326 s!2326)) (Exists!2146 lambda!270644))))

(declare-fun lt!2170332 () Unit!153378)

(assert (=> b!5311810 (= lt!2170332 (lemmaFindConcatSeparationEquivalentToExists!1254 (regOne!30442 (regOne!30442 r!7292)) lt!2170350 s!2326))))

(declare-fun lt!2170354 () Regex!14965)

(assert (=> b!5311810 (= lt!2170341 (matchRSpec!2068 lt!2170354 s!2326))))

(declare-fun lt!2170380 () Unit!153378)

(assert (=> b!5311810 (= lt!2170380 (mainMatchTheorem!2068 lt!2170354 s!2326))))

(assert (=> b!5311810 (= lt!2170344 lt!2170365)))

(assert (=> b!5311810 (= lt!2170365 (matchZipper!1209 lt!2170343 s!2326))))

(assert (=> b!5311810 (= lt!2170344 (matchR!7150 lt!2170350 s!2326))))

(declare-fun lt!2170368 () Unit!153378)

(declare-fun theoremZipperRegexEquiv!375 ((InoxSet Context!8698) List!61196 Regex!14965 List!61194) Unit!153378)

(assert (=> b!5311810 (= lt!2170368 (theoremZipperRegexEquiv!375 lt!2170343 (Cons!61072 lt!2170348 Nil!61072) lt!2170350 s!2326))))

(assert (=> b!5311810 (= lt!2170350 (generalisedConcat!634 lt!2170347))))

(assert (=> b!5311810 (= lt!2170341 lt!2170355)))

(assert (=> b!5311810 (= lt!2170355 (matchZipper!1209 lt!2170361 s!2326))))

(assert (=> b!5311810 (= lt!2170341 (matchR!7150 lt!2170354 s!2326))))

(declare-fun lt!2170334 () Unit!153378)

(assert (=> b!5311810 (= lt!2170334 (theoremZipperRegexEquiv!375 lt!2170361 lt!2170333 lt!2170354 s!2326))))

(assert (=> b!5311810 (= lt!2170354 (generalisedConcat!634 lt!2170364))))

(declare-fun b!5311811 () Bool)

(assert (=> b!5311811 (= e!3300700 (not e!3300704))))

(declare-fun res!2253460 () Bool)

(assert (=> b!5311811 (=> res!2253460 e!3300704)))

(assert (=> b!5311811 (= res!2253460 (not ((_ is Cons!61072) zl!343)))))

(assert (=> b!5311811 (= lt!2170342 (matchRSpec!2068 r!7292 s!2326))))

(assert (=> b!5311811 (= lt!2170342 (matchR!7150 r!7292 s!2326))))

(declare-fun lt!2170359 () Unit!153378)

(assert (=> b!5311811 (= lt!2170359 (mainMatchTheorem!2068 r!7292 s!2326))))

(declare-fun setElem!34157 () Context!8698)

(declare-fun tp!1479688 () Bool)

(declare-fun setNonEmpty!34157 () Bool)

(assert (=> setNonEmpty!34157 (= setRes!34157 (and tp!1479688 (inv!80659 setElem!34157) e!3300692))))

(declare-fun setRest!34157 () (InoxSet Context!8698))

(assert (=> setNonEmpty!34157 (= z!1189 ((_ map or) (store ((as const (Array Context!8698 Bool)) false) setElem!34157 true) setRest!34157))))

(assert (= (and start!560046 res!2253467) b!5311791))

(assert (= (and b!5311791 res!2253450) b!5311787))

(assert (= (and b!5311787 res!2253440) b!5311811))

(assert (= (and b!5311811 (not res!2253460)) b!5311781))

(assert (= (and b!5311781 (not res!2253459)) b!5311788))

(assert (= (and b!5311788 (not res!2253447)) b!5311792))

(assert (= (and b!5311792 (not res!2253453)) b!5311776))

(assert (= (and b!5311776 (not res!2253454)) b!5311790))

(assert (= (and b!5311790 (not res!2253466)) b!5311796))

(assert (= (and b!5311796 (not res!2253457)) b!5311786))

(assert (= (and b!5311786 (not res!2253449)) b!5311803))

(assert (= (and b!5311803 c!922684) b!5311795))

(assert (= (and b!5311803 (not c!922684)) b!5311775))

(assert (= (and b!5311795 (not res!2253469)) b!5311774))

(assert (= (and b!5311803 (not res!2253463)) b!5311777))

(assert (= (and b!5311777 (not res!2253445)) b!5311808))

(assert (= (and b!5311808 (not res!2253456)) b!5311801))

(assert (= (and b!5311801 (not res!2253444)) b!5311785))

(assert (= (and b!5311801 res!2253443) b!5311809))

(assert (= (and b!5311801 (not res!2253452)) b!5311778))

(assert (= (and b!5311778 (not res!2253455)) b!5311773))

(assert (= (and b!5311773 (not res!2253458)) b!5311782))

(assert (= (and b!5311773 res!2253464) b!5311789))

(assert (= (and b!5311773 (not res!2253461)) b!5311802))

(assert (= (and b!5311802 (not res!2253446)) b!5311800))

(assert (= (and b!5311800 (not res!2253465)) b!5311798))

(assert (= (and b!5311798 (not res!2253462)) b!5311793))

(assert (= (and b!5311793 (not res!2253451)) b!5311810))

(assert (= (and b!5311810 (not res!2253442)) b!5311797))

(assert (= (and b!5311797 (not res!2253448)) b!5311772))

(assert (= (and b!5311772 (not res!2253468)) b!5311780))

(assert (= (and b!5311780 (not res!2253441)) b!5311806))

(assert (= (and start!560046 ((_ is ElementMatch!14965) r!7292)) b!5311784))

(assert (= (and start!560046 ((_ is Concat!23810) r!7292)) b!5311807))

(assert (= (and start!560046 ((_ is Star!14965) r!7292)) b!5311805))

(assert (= (and start!560046 ((_ is Union!14965) r!7292)) b!5311783))

(assert (= (and start!560046 condSetEmpty!34157) setIsEmpty!34157))

(assert (= (and start!560046 (not condSetEmpty!34157)) setNonEmpty!34157))

(assert (= setNonEmpty!34157 b!5311779))

(assert (= b!5311804 b!5311799))

(assert (= (and start!560046 ((_ is Cons!61072) zl!343)) b!5311804))

(assert (= (and start!560046 ((_ is Cons!61070) s!2326)) b!5311794))

(declare-fun m!6348772 () Bool)

(assert (=> b!5311774 m!6348772))

(declare-fun m!6348774 () Bool)

(assert (=> b!5311800 m!6348774))

(declare-fun m!6348776 () Bool)

(assert (=> b!5311800 m!6348776))

(declare-fun m!6348778 () Bool)

(assert (=> b!5311797 m!6348778))

(declare-fun m!6348780 () Bool)

(assert (=> start!560046 m!6348780))

(declare-fun m!6348782 () Bool)

(assert (=> b!5311796 m!6348782))

(declare-fun m!6348784 () Bool)

(assert (=> b!5311796 m!6348784))

(declare-fun m!6348786 () Bool)

(assert (=> b!5311796 m!6348786))

(declare-fun m!6348788 () Bool)

(assert (=> b!5311796 m!6348788))

(assert (=> b!5311796 m!6348788))

(declare-fun m!6348790 () Bool)

(assert (=> b!5311796 m!6348790))

(assert (=> b!5311796 m!6348782))

(declare-fun m!6348792 () Bool)

(assert (=> b!5311796 m!6348792))

(declare-fun m!6348794 () Bool)

(assert (=> b!5311804 m!6348794))

(declare-fun m!6348796 () Bool)

(assert (=> b!5311793 m!6348796))

(declare-fun m!6348798 () Bool)

(assert (=> b!5311793 m!6348798))

(declare-fun m!6348800 () Bool)

(assert (=> b!5311776 m!6348800))

(assert (=> b!5311776 m!6348800))

(declare-fun m!6348802 () Bool)

(assert (=> b!5311776 m!6348802))

(declare-fun m!6348804 () Bool)

(assert (=> b!5311808 m!6348804))

(declare-fun m!6348806 () Bool)

(assert (=> b!5311808 m!6348806))

(declare-fun m!6348808 () Bool)

(assert (=> setNonEmpty!34157 m!6348808))

(declare-fun m!6348810 () Bool)

(assert (=> b!5311806 m!6348810))

(declare-fun m!6348812 () Bool)

(assert (=> b!5311806 m!6348812))

(declare-fun m!6348814 () Bool)

(assert (=> b!5311806 m!6348814))

(declare-fun m!6348816 () Bool)

(assert (=> b!5311778 m!6348816))

(declare-fun m!6348818 () Bool)

(assert (=> b!5311778 m!6348818))

(declare-fun m!6348820 () Bool)

(assert (=> b!5311778 m!6348820))

(declare-fun m!6348822 () Bool)

(assert (=> b!5311778 m!6348822))

(declare-fun m!6348824 () Bool)

(assert (=> b!5311778 m!6348824))

(declare-fun m!6348826 () Bool)

(assert (=> b!5311778 m!6348826))

(declare-fun m!6348828 () Bool)

(assert (=> b!5311778 m!6348828))

(declare-fun m!6348830 () Bool)

(assert (=> b!5311785 m!6348830))

(declare-fun m!6348832 () Bool)

(assert (=> b!5311795 m!6348832))

(declare-fun m!6348834 () Bool)

(assert (=> b!5311795 m!6348834))

(declare-fun m!6348836 () Bool)

(assert (=> b!5311795 m!6348836))

(declare-fun m!6348838 () Bool)

(assert (=> b!5311787 m!6348838))

(declare-fun m!6348840 () Bool)

(assert (=> b!5311791 m!6348840))

(declare-fun m!6348842 () Bool)

(assert (=> b!5311789 m!6348842))

(assert (=> b!5311789 m!6348842))

(declare-fun m!6348844 () Bool)

(assert (=> b!5311789 m!6348844))

(declare-fun m!6348846 () Bool)

(assert (=> b!5311786 m!6348846))

(declare-fun m!6348848 () Bool)

(assert (=> b!5311811 m!6348848))

(declare-fun m!6348850 () Bool)

(assert (=> b!5311811 m!6348850))

(declare-fun m!6348852 () Bool)

(assert (=> b!5311811 m!6348852))

(declare-fun m!6348854 () Bool)

(assert (=> b!5311788 m!6348854))

(assert (=> b!5311801 m!6348834))

(declare-fun m!6348856 () Bool)

(assert (=> b!5311801 m!6348856))

(declare-fun m!6348858 () Bool)

(assert (=> b!5311801 m!6348858))

(declare-fun m!6348860 () Bool)

(assert (=> b!5311801 m!6348860))

(declare-fun m!6348862 () Bool)

(assert (=> b!5311773 m!6348862))

(declare-fun m!6348864 () Bool)

(assert (=> b!5311773 m!6348864))

(declare-fun m!6348866 () Bool)

(assert (=> b!5311773 m!6348866))

(declare-fun m!6348868 () Bool)

(assert (=> b!5311773 m!6348868))

(declare-fun m!6348870 () Bool)

(assert (=> b!5311773 m!6348870))

(assert (=> b!5311773 m!6348828))

(declare-fun m!6348872 () Bool)

(assert (=> b!5311803 m!6348872))

(declare-fun m!6348874 () Bool)

(assert (=> b!5311803 m!6348874))

(declare-fun m!6348876 () Bool)

(assert (=> b!5311803 m!6348876))

(declare-fun m!6348878 () Bool)

(assert (=> b!5311803 m!6348878))

(declare-fun m!6348880 () Bool)

(assert (=> b!5311803 m!6348880))

(declare-fun m!6348882 () Bool)

(assert (=> b!5311803 m!6348882))

(declare-fun m!6348884 () Bool)

(assert (=> b!5311803 m!6348884))

(declare-fun m!6348886 () Bool)

(assert (=> b!5311777 m!6348886))

(declare-fun m!6348888 () Bool)

(assert (=> b!5311798 m!6348888))

(declare-fun m!6348890 () Bool)

(assert (=> b!5311798 m!6348890))

(declare-fun m!6348892 () Bool)

(assert (=> b!5311780 m!6348892))

(assert (=> b!5311809 m!6348830))

(declare-fun m!6348894 () Bool)

(assert (=> b!5311781 m!6348894))

(declare-fun m!6348896 () Bool)

(assert (=> b!5311772 m!6348896))

(declare-fun m!6348898 () Bool)

(assert (=> b!5311782 m!6348898))

(declare-fun m!6348900 () Bool)

(assert (=> b!5311810 m!6348900))

(declare-fun m!6348902 () Bool)

(assert (=> b!5311810 m!6348902))

(declare-fun m!6348904 () Bool)

(assert (=> b!5311810 m!6348904))

(declare-fun m!6348906 () Bool)

(assert (=> b!5311810 m!6348906))

(declare-fun m!6348908 () Bool)

(assert (=> b!5311810 m!6348908))

(declare-fun m!6348910 () Bool)

(assert (=> b!5311810 m!6348910))

(declare-fun m!6348912 () Bool)

(assert (=> b!5311810 m!6348912))

(assert (=> b!5311810 m!6348904))

(declare-fun m!6348914 () Bool)

(assert (=> b!5311810 m!6348914))

(declare-fun m!6348916 () Bool)

(assert (=> b!5311810 m!6348916))

(declare-fun m!6348918 () Bool)

(assert (=> b!5311810 m!6348918))

(declare-fun m!6348920 () Bool)

(assert (=> b!5311810 m!6348920))

(declare-fun m!6348922 () Bool)

(assert (=> b!5311810 m!6348922))

(declare-fun m!6348924 () Bool)

(assert (=> b!5311810 m!6348924))

(declare-fun m!6348926 () Bool)

(assert (=> b!5311810 m!6348926))

(declare-fun m!6348928 () Bool)

(assert (=> b!5311810 m!6348928))

(declare-fun m!6348930 () Bool)

(assert (=> b!5311810 m!6348930))

(declare-fun m!6348932 () Bool)

(assert (=> b!5311810 m!6348932))

(assert (=> b!5311810 m!6348928))

(declare-fun m!6348934 () Bool)

(assert (=> b!5311810 m!6348934))

(declare-fun m!6348936 () Bool)

(assert (=> b!5311810 m!6348936))

(declare-fun m!6348938 () Bool)

(assert (=> b!5311810 m!6348938))

(declare-fun m!6348940 () Bool)

(assert (=> b!5311810 m!6348940))

(declare-fun m!6348942 () Bool)

(assert (=> b!5311810 m!6348942))

(declare-fun m!6348944 () Bool)

(assert (=> b!5311810 m!6348944))

(declare-fun m!6348946 () Bool)

(assert (=> b!5311810 m!6348946))

(assert (=> b!5311810 m!6348916))

(assert (=> b!5311810 m!6348944))

(declare-fun m!6348948 () Bool)

(assert (=> b!5311810 m!6348948))

(declare-fun m!6348950 () Bool)

(assert (=> b!5311810 m!6348950))

(check-sat (not b!5311785) (not b!5311795) (not b!5311809) (not b!5311799) (not b!5311791) (not b!5311806) (not b!5311787) (not b!5311796) tp_is_empty!39183 (not b!5311777) (not b!5311788) (not b!5311773) (not b!5311778) (not b!5311810) (not b!5311807) (not b!5311797) (not b!5311800) (not b!5311804) (not b!5311780) (not b!5311782) (not start!560046) (not b!5311808) (not b!5311793) (not b!5311801) (not b!5311781) (not b!5311794) (not b!5311772) (not b!5311803) (not setNonEmpty!34157) (not b!5311783) (not b!5311774) (not b!5311811) (not b!5311789) (not b!5311779) (not b!5311798) (not b!5311786) (not b!5311776) (not b!5311805))
(check-sat)
(get-model)

(declare-fun e!3300745 () Bool)

(declare-fun d!1706776 () Bool)

(assert (=> d!1706776 (= (matchZipper!1209 ((_ map or) lt!2170356 lt!2170345) (t!374399 s!2326)) e!3300745)))

(declare-fun res!2253492 () Bool)

(assert (=> d!1706776 (=> res!2253492 e!3300745)))

(assert (=> d!1706776 (= res!2253492 (matchZipper!1209 lt!2170356 (t!374399 s!2326)))))

(declare-fun lt!2170383 () Unit!153378)

(declare-fun choose!39738 ((InoxSet Context!8698) (InoxSet Context!8698) List!61194) Unit!153378)

(assert (=> d!1706776 (= lt!2170383 (choose!39738 lt!2170356 lt!2170345 (t!374399 s!2326)))))

(assert (=> d!1706776 (= (lemmaZipperConcatMatchesSameAsBothZippers!202 lt!2170356 lt!2170345 (t!374399 s!2326)) lt!2170383)))

(declare-fun b!5311856 () Bool)

(assert (=> b!5311856 (= e!3300745 (matchZipper!1209 lt!2170345 (t!374399 s!2326)))))

(assert (= (and d!1706776 (not res!2253492)) b!5311856))

(assert (=> d!1706776 m!6348836))

(assert (=> d!1706776 m!6348834))

(declare-fun m!6348964 () Bool)

(assert (=> d!1706776 m!6348964))

(assert (=> b!5311856 m!6348772))

(assert (=> b!5311795 d!1706776))

(declare-fun d!1706782 () Bool)

(declare-fun c!922700 () Bool)

(declare-fun isEmpty!33037 (List!61194) Bool)

(assert (=> d!1706782 (= c!922700 (isEmpty!33037 (t!374399 s!2326)))))

(declare-fun e!3300752 () Bool)

(assert (=> d!1706782 (= (matchZipper!1209 lt!2170356 (t!374399 s!2326)) e!3300752)))

(declare-fun b!5311869 () Bool)

(declare-fun nullableZipper!1335 ((InoxSet Context!8698)) Bool)

(assert (=> b!5311869 (= e!3300752 (nullableZipper!1335 lt!2170356))))

(declare-fun b!5311870 () Bool)

(declare-fun head!11388 (List!61194) C!30200)

(declare-fun tail!10485 (List!61194) List!61194)

(assert (=> b!5311870 (= e!3300752 (matchZipper!1209 (derivationStepZipper!1208 lt!2170356 (head!11388 (t!374399 s!2326))) (tail!10485 (t!374399 s!2326))))))

(assert (= (and d!1706782 c!922700) b!5311869))

(assert (= (and d!1706782 (not c!922700)) b!5311870))

(declare-fun m!6348966 () Bool)

(assert (=> d!1706782 m!6348966))

(declare-fun m!6348968 () Bool)

(assert (=> b!5311869 m!6348968))

(declare-fun m!6348970 () Bool)

(assert (=> b!5311870 m!6348970))

(assert (=> b!5311870 m!6348970))

(declare-fun m!6348972 () Bool)

(assert (=> b!5311870 m!6348972))

(declare-fun m!6348974 () Bool)

(assert (=> b!5311870 m!6348974))

(assert (=> b!5311870 m!6348972))

(assert (=> b!5311870 m!6348974))

(declare-fun m!6348976 () Bool)

(assert (=> b!5311870 m!6348976))

(assert (=> b!5311795 d!1706782))

(declare-fun d!1706784 () Bool)

(declare-fun c!922703 () Bool)

(assert (=> d!1706784 (= c!922703 (isEmpty!33037 (t!374399 s!2326)))))

(declare-fun e!3300763 () Bool)

(assert (=> d!1706784 (= (matchZipper!1209 ((_ map or) lt!2170356 lt!2170345) (t!374399 s!2326)) e!3300763)))

(declare-fun b!5311891 () Bool)

(assert (=> b!5311891 (= e!3300763 (nullableZipper!1335 ((_ map or) lt!2170356 lt!2170345)))))

(declare-fun b!5311892 () Bool)

(assert (=> b!5311892 (= e!3300763 (matchZipper!1209 (derivationStepZipper!1208 ((_ map or) lt!2170356 lt!2170345) (head!11388 (t!374399 s!2326))) (tail!10485 (t!374399 s!2326))))))

(assert (= (and d!1706784 c!922703) b!5311891))

(assert (= (and d!1706784 (not c!922703)) b!5311892))

(assert (=> d!1706784 m!6348966))

(declare-fun m!6348978 () Bool)

(assert (=> b!5311891 m!6348978))

(assert (=> b!5311892 m!6348970))

(assert (=> b!5311892 m!6348970))

(declare-fun m!6348980 () Bool)

(assert (=> b!5311892 m!6348980))

(assert (=> b!5311892 m!6348974))

(assert (=> b!5311892 m!6348980))

(assert (=> b!5311892 m!6348974))

(declare-fun m!6348982 () Bool)

(assert (=> b!5311892 m!6348982))

(assert (=> b!5311795 d!1706784))

(declare-fun d!1706786 () Bool)

(declare-fun c!922704 () Bool)

(assert (=> d!1706786 (= c!922704 (isEmpty!33037 (t!374399 s!2326)))))

(declare-fun e!3300764 () Bool)

(assert (=> d!1706786 (= (matchZipper!1209 lt!2170376 (t!374399 s!2326)) e!3300764)))

(declare-fun b!5311893 () Bool)

(assert (=> b!5311893 (= e!3300764 (nullableZipper!1335 lt!2170376))))

(declare-fun b!5311894 () Bool)

(assert (=> b!5311894 (= e!3300764 (matchZipper!1209 (derivationStepZipper!1208 lt!2170376 (head!11388 (t!374399 s!2326))) (tail!10485 (t!374399 s!2326))))))

(assert (= (and d!1706786 c!922704) b!5311893))

(assert (= (and d!1706786 (not c!922704)) b!5311894))

(assert (=> d!1706786 m!6348966))

(declare-fun m!6348984 () Bool)

(assert (=> b!5311893 m!6348984))

(assert (=> b!5311894 m!6348970))

(assert (=> b!5311894 m!6348970))

(declare-fun m!6348986 () Bool)

(assert (=> b!5311894 m!6348986))

(assert (=> b!5311894 m!6348974))

(assert (=> b!5311894 m!6348986))

(assert (=> b!5311894 m!6348974))

(declare-fun m!6348988 () Bool)

(assert (=> b!5311894 m!6348988))

(assert (=> b!5311773 d!1706786))

(declare-fun d!1706788 () Bool)

(declare-fun choose!39739 ((InoxSet Context!8698) Int) (InoxSet Context!8698))

(assert (=> d!1706788 (= (flatMap!692 lt!2170343 lambda!270643) (choose!39739 lt!2170343 lambda!270643))))

(declare-fun bs!1231587 () Bool)

(assert (= bs!1231587 d!1706788))

(declare-fun m!6348990 () Bool)

(assert (=> bs!1231587 m!6348990))

(assert (=> b!5311773 d!1706788))

(declare-fun d!1706790 () Bool)

(declare-fun c!922705 () Bool)

(assert (=> d!1706790 (= c!922705 (isEmpty!33037 (t!374399 s!2326)))))

(declare-fun e!3300765 () Bool)

(assert (=> d!1706790 (= (matchZipper!1209 lt!2170379 (t!374399 s!2326)) e!3300765)))

(declare-fun b!5311895 () Bool)

(assert (=> b!5311895 (= e!3300765 (nullableZipper!1335 lt!2170379))))

(declare-fun b!5311896 () Bool)

(assert (=> b!5311896 (= e!3300765 (matchZipper!1209 (derivationStepZipper!1208 lt!2170379 (head!11388 (t!374399 s!2326))) (tail!10485 (t!374399 s!2326))))))

(assert (= (and d!1706790 c!922705) b!5311895))

(assert (= (and d!1706790 (not c!922705)) b!5311896))

(assert (=> d!1706790 m!6348966))

(declare-fun m!6348992 () Bool)

(assert (=> b!5311895 m!6348992))

(assert (=> b!5311896 m!6348970))

(assert (=> b!5311896 m!6348970))

(declare-fun m!6348994 () Bool)

(assert (=> b!5311896 m!6348994))

(assert (=> b!5311896 m!6348974))

(assert (=> b!5311896 m!6348994))

(assert (=> b!5311896 m!6348974))

(declare-fun m!6348996 () Bool)

(assert (=> b!5311896 m!6348996))

(assert (=> b!5311773 d!1706790))

(declare-fun d!1706792 () Bool)

(declare-fun dynLambda!24138 (Int Context!8698) (InoxSet Context!8698))

(assert (=> d!1706792 (= (flatMap!692 lt!2170343 lambda!270643) (dynLambda!24138 lambda!270643 lt!2170348))))

(declare-fun lt!2170388 () Unit!153378)

(declare-fun choose!39740 ((InoxSet Context!8698) Context!8698 Int) Unit!153378)

(assert (=> d!1706792 (= lt!2170388 (choose!39740 lt!2170343 lt!2170348 lambda!270643))))

(assert (=> d!1706792 (= lt!2170343 (store ((as const (Array Context!8698 Bool)) false) lt!2170348 true))))

(assert (=> d!1706792 (= (lemmaFlatMapOnSingletonSet!224 lt!2170343 lt!2170348 lambda!270643) lt!2170388)))

(declare-fun b_lambda!204429 () Bool)

(assert (=> (not b_lambda!204429) (not d!1706792)))

(declare-fun bs!1231588 () Bool)

(assert (= bs!1231588 d!1706792))

(assert (=> bs!1231588 m!6348862))

(declare-fun m!6348998 () Bool)

(assert (=> bs!1231588 m!6348998))

(declare-fun m!6349000 () Bool)

(assert (=> bs!1231588 m!6349000))

(assert (=> bs!1231588 m!6348816))

(assert (=> b!5311773 d!1706792))

(declare-fun d!1706794 () Bool)

(declare-fun e!3300773 () Bool)

(assert (=> d!1706794 (= (matchZipper!1209 ((_ map or) lt!2170353 lt!2170358) (t!374399 s!2326)) e!3300773)))

(declare-fun res!2253517 () Bool)

(assert (=> d!1706794 (=> res!2253517 e!3300773)))

(assert (=> d!1706794 (= res!2253517 (matchZipper!1209 lt!2170353 (t!374399 s!2326)))))

(declare-fun lt!2170390 () Unit!153378)

(assert (=> d!1706794 (= lt!2170390 (choose!39738 lt!2170353 lt!2170358 (t!374399 s!2326)))))

(assert (=> d!1706794 (= (lemmaZipperConcatMatchesSameAsBothZippers!202 lt!2170353 lt!2170358 (t!374399 s!2326)) lt!2170390)))

(declare-fun b!5311911 () Bool)

(assert (=> b!5311911 (= e!3300773 (matchZipper!1209 lt!2170358 (t!374399 s!2326)))))

(assert (= (and d!1706794 (not res!2253517)) b!5311911))

(declare-fun m!6349002 () Bool)

(assert (=> d!1706794 m!6349002))

(assert (=> d!1706794 m!6348858))

(declare-fun m!6349004 () Bool)

(assert (=> d!1706794 m!6349004))

(assert (=> b!5311911 m!6348898))

(assert (=> b!5311773 d!1706794))

(declare-fun e!3300783 () (InoxSet Context!8698))

(declare-fun call!378750 () (InoxSet Context!8698))

(declare-fun b!5311926 () Bool)

(assert (=> b!5311926 (= e!3300783 ((_ map or) call!378750 (derivationStepZipperUp!337 (Context!8699 (t!374400 (exprs!4849 lt!2170348))) (h!67518 s!2326))))))

(declare-fun b!5311927 () Bool)

(declare-fun e!3300784 () (InoxSet Context!8698))

(assert (=> b!5311927 (= e!3300784 ((as const (Array Context!8698 Bool)) false))))

(declare-fun b!5311928 () Bool)

(declare-fun e!3300782 () Bool)

(assert (=> b!5311928 (= e!3300782 (nullable!5134 (h!67519 (exprs!4849 lt!2170348))))))

(declare-fun d!1706796 () Bool)

(declare-fun c!922713 () Bool)

(assert (=> d!1706796 (= c!922713 e!3300782)))

(declare-fun res!2253524 () Bool)

(assert (=> d!1706796 (=> (not res!2253524) (not e!3300782))))

(assert (=> d!1706796 (= res!2253524 ((_ is Cons!61071) (exprs!4849 lt!2170348)))))

(assert (=> d!1706796 (= (derivationStepZipperUp!337 lt!2170348 (h!67518 s!2326)) e!3300783)))

(declare-fun b!5311929 () Bool)

(assert (=> b!5311929 (= e!3300784 call!378750)))

(declare-fun bm!378745 () Bool)

(assert (=> bm!378745 (= call!378750 (derivationStepZipperDown!413 (h!67519 (exprs!4849 lt!2170348)) (Context!8699 (t!374400 (exprs!4849 lt!2170348))) (h!67518 s!2326)))))

(declare-fun b!5311930 () Bool)

(assert (=> b!5311930 (= e!3300783 e!3300784)))

(declare-fun c!922714 () Bool)

(assert (=> b!5311930 (= c!922714 ((_ is Cons!61071) (exprs!4849 lt!2170348)))))

(assert (= (and d!1706796 res!2253524) b!5311928))

(assert (= (and d!1706796 c!922713) b!5311926))

(assert (= (and d!1706796 (not c!922713)) b!5311930))

(assert (= (and b!5311930 c!922714) b!5311929))

(assert (= (and b!5311930 (not c!922714)) b!5311927))

(assert (= (or b!5311926 b!5311929) bm!378745))

(declare-fun m!6349020 () Bool)

(assert (=> b!5311926 m!6349020))

(declare-fun m!6349022 () Bool)

(assert (=> b!5311928 m!6349022))

(declare-fun m!6349024 () Bool)

(assert (=> bm!378745 m!6349024))

(assert (=> b!5311773 d!1706796))

(declare-fun b!5311979 () Bool)

(declare-fun e!3300810 () Bool)

(declare-fun lt!2170399 () Bool)

(assert (=> b!5311979 (= e!3300810 (not lt!2170399))))

(declare-fun b!5311980 () Bool)

(declare-fun res!2253561 () Bool)

(declare-fun e!3300812 () Bool)

(assert (=> b!5311980 (=> (not res!2253561) (not e!3300812))))

(assert (=> b!5311980 (= res!2253561 (isEmpty!33037 (tail!10485 s!2326)))))

(declare-fun b!5311981 () Bool)

(declare-fun e!3300811 () Bool)

(declare-fun call!378754 () Bool)

(assert (=> b!5311981 (= e!3300811 (= lt!2170399 call!378754))))

(declare-fun b!5311982 () Bool)

(declare-fun e!3300815 () Bool)

(assert (=> b!5311982 (= e!3300815 (nullable!5134 (Concat!23810 lt!2170336 (regTwo!30442 r!7292))))))

(declare-fun b!5311984 () Bool)

(declare-fun derivativeStep!4157 (Regex!14965 C!30200) Regex!14965)

(assert (=> b!5311984 (= e!3300815 (matchR!7150 (derivativeStep!4157 (Concat!23810 lt!2170336 (regTwo!30442 r!7292)) (head!11388 s!2326)) (tail!10485 s!2326)))))

(declare-fun b!5311985 () Bool)

(declare-fun res!2253557 () Bool)

(declare-fun e!3300809 () Bool)

(assert (=> b!5311985 (=> res!2253557 e!3300809)))

(assert (=> b!5311985 (= res!2253557 (not (isEmpty!33037 (tail!10485 s!2326))))))

(declare-fun b!5311986 () Bool)

(assert (=> b!5311986 (= e!3300812 (= (head!11388 s!2326) (c!922685 (Concat!23810 lt!2170336 (regTwo!30442 r!7292)))))))

(declare-fun b!5311987 () Bool)

(declare-fun e!3300813 () Bool)

(assert (=> b!5311987 (= e!3300813 e!3300809)))

(declare-fun res!2253556 () Bool)

(assert (=> b!5311987 (=> res!2253556 e!3300809)))

(assert (=> b!5311987 (= res!2253556 call!378754)))

(declare-fun b!5311988 () Bool)

(declare-fun e!3300814 () Bool)

(assert (=> b!5311988 (= e!3300814 e!3300813)))

(declare-fun res!2253562 () Bool)

(assert (=> b!5311988 (=> (not res!2253562) (not e!3300813))))

(assert (=> b!5311988 (= res!2253562 (not lt!2170399))))

(declare-fun bm!378749 () Bool)

(assert (=> bm!378749 (= call!378754 (isEmpty!33037 s!2326))))

(declare-fun d!1706800 () Bool)

(assert (=> d!1706800 e!3300811))

(declare-fun c!922725 () Bool)

(assert (=> d!1706800 (= c!922725 ((_ is EmptyExpr!14965) (Concat!23810 lt!2170336 (regTwo!30442 r!7292))))))

(assert (=> d!1706800 (= lt!2170399 e!3300815)))

(declare-fun c!922726 () Bool)

(assert (=> d!1706800 (= c!922726 (isEmpty!33037 s!2326))))

(assert (=> d!1706800 (validRegex!6701 (Concat!23810 lt!2170336 (regTwo!30442 r!7292)))))

(assert (=> d!1706800 (= (matchR!7150 (Concat!23810 lt!2170336 (regTwo!30442 r!7292)) s!2326) lt!2170399)))

(declare-fun b!5311983 () Bool)

(declare-fun res!2253559 () Bool)

(assert (=> b!5311983 (=> res!2253559 e!3300814)))

(assert (=> b!5311983 (= res!2253559 (not ((_ is ElementMatch!14965) (Concat!23810 lt!2170336 (regTwo!30442 r!7292)))))))

(assert (=> b!5311983 (= e!3300810 e!3300814)))

(declare-fun b!5311989 () Bool)

(assert (=> b!5311989 (= e!3300811 e!3300810)))

(declare-fun c!922724 () Bool)

(assert (=> b!5311989 (= c!922724 ((_ is EmptyLang!14965) (Concat!23810 lt!2170336 (regTwo!30442 r!7292))))))

(declare-fun b!5311990 () Bool)

(declare-fun res!2253558 () Bool)

(assert (=> b!5311990 (=> (not res!2253558) (not e!3300812))))

(assert (=> b!5311990 (= res!2253558 (not call!378754))))

(declare-fun b!5311991 () Bool)

(declare-fun res!2253560 () Bool)

(assert (=> b!5311991 (=> res!2253560 e!3300814)))

(assert (=> b!5311991 (= res!2253560 e!3300812)))

(declare-fun res!2253555 () Bool)

(assert (=> b!5311991 (=> (not res!2253555) (not e!3300812))))

(assert (=> b!5311991 (= res!2253555 lt!2170399)))

(declare-fun b!5311992 () Bool)

(assert (=> b!5311992 (= e!3300809 (not (= (head!11388 s!2326) (c!922685 (Concat!23810 lt!2170336 (regTwo!30442 r!7292))))))))

(assert (= (and d!1706800 c!922726) b!5311982))

(assert (= (and d!1706800 (not c!922726)) b!5311984))

(assert (= (and d!1706800 c!922725) b!5311981))

(assert (= (and d!1706800 (not c!922725)) b!5311989))

(assert (= (and b!5311989 c!922724) b!5311979))

(assert (= (and b!5311989 (not c!922724)) b!5311983))

(assert (= (and b!5311983 (not res!2253559)) b!5311991))

(assert (= (and b!5311991 res!2253555) b!5311990))

(assert (= (and b!5311990 res!2253558) b!5311980))

(assert (= (and b!5311980 res!2253561) b!5311986))

(assert (= (and b!5311991 (not res!2253560)) b!5311988))

(assert (= (and b!5311988 res!2253562) b!5311987))

(assert (= (and b!5311987 (not res!2253556)) b!5311985))

(assert (= (and b!5311985 (not res!2253557)) b!5311992))

(assert (= (or b!5311981 b!5311987 b!5311990) bm!378749))

(declare-fun m!6349050 () Bool)

(assert (=> d!1706800 m!6349050))

(declare-fun m!6349052 () Bool)

(assert (=> d!1706800 m!6349052))

(declare-fun m!6349054 () Bool)

(assert (=> b!5311985 m!6349054))

(assert (=> b!5311985 m!6349054))

(declare-fun m!6349056 () Bool)

(assert (=> b!5311985 m!6349056))

(assert (=> bm!378749 m!6349050))

(declare-fun m!6349058 () Bool)

(assert (=> b!5311984 m!6349058))

(assert (=> b!5311984 m!6349058))

(declare-fun m!6349060 () Bool)

(assert (=> b!5311984 m!6349060))

(assert (=> b!5311984 m!6349054))

(assert (=> b!5311984 m!6349060))

(assert (=> b!5311984 m!6349054))

(declare-fun m!6349062 () Bool)

(assert (=> b!5311984 m!6349062))

(assert (=> b!5311980 m!6349054))

(assert (=> b!5311980 m!6349054))

(assert (=> b!5311980 m!6349056))

(assert (=> b!5311986 m!6349058))

(assert (=> b!5311992 m!6349058))

(declare-fun m!6349064 () Bool)

(assert (=> b!5311982 m!6349064))

(assert (=> b!5311772 d!1706800))

(declare-fun b!5311999 () Bool)

(assert (=> b!5311999 true))

(declare-fun bs!1231594 () Bool)

(declare-fun b!5312001 () Bool)

(assert (= bs!1231594 (and b!5312001 b!5311999)))

(declare-fun lambda!270658 () Int)

(declare-fun lambda!270659 () Int)

(declare-fun lt!2170411 () Int)

(declare-fun lt!2170409 () Int)

(assert (=> bs!1231594 (= (= lt!2170411 lt!2170409) (= lambda!270659 lambda!270658))))

(assert (=> b!5312001 true))

(declare-fun d!1706810 () Bool)

(declare-fun e!3300821 () Bool)

(assert (=> d!1706810 e!3300821))

(declare-fun res!2253565 () Bool)

(assert (=> d!1706810 (=> (not res!2253565) (not e!3300821))))

(assert (=> d!1706810 (= res!2253565 (>= lt!2170411 0))))

(declare-fun e!3300820 () Int)

(assert (=> d!1706810 (= lt!2170411 e!3300820)))

(declare-fun c!922735 () Bool)

(assert (=> d!1706810 (= c!922735 ((_ is Cons!61072) lt!2170333))))

(assert (=> d!1706810 (= (zipperDepth!82 lt!2170333) lt!2170411)))

(assert (=> b!5311999 (= e!3300820 lt!2170409)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!47 (Context!8698) Int)

(assert (=> b!5311999 (= lt!2170409 (maxBigInt!0 (contextDepth!47 (h!67520 lt!2170333)) (zipperDepth!82 (t!374401 lt!2170333))))))

(declare-fun lt!2170410 () Unit!153378)

(declare-fun lambda!270657 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!41 (List!61196 Int Int Int) Unit!153378)

(assert (=> b!5311999 (= lt!2170410 (lemmaForallContextDepthBiggerThanTransitive!41 (t!374401 lt!2170333) lt!2170409 (zipperDepth!82 (t!374401 lt!2170333)) lambda!270657))))

(declare-fun forall!14384 (List!61196 Int) Bool)

(assert (=> b!5311999 (forall!14384 (t!374401 lt!2170333) lambda!270658)))

(declare-fun lt!2170412 () Unit!153378)

(assert (=> b!5311999 (= lt!2170412 lt!2170410)))

(declare-fun b!5312000 () Bool)

(assert (=> b!5312000 (= e!3300820 0)))

(assert (=> b!5312001 (= e!3300821 (forall!14384 lt!2170333 lambda!270659))))

(assert (= (and d!1706810 c!922735) b!5311999))

(assert (= (and d!1706810 (not c!922735)) b!5312000))

(assert (= (and d!1706810 res!2253565) b!5312001))

(declare-fun m!6349072 () Bool)

(assert (=> b!5311999 m!6349072))

(declare-fun m!6349074 () Bool)

(assert (=> b!5311999 m!6349074))

(declare-fun m!6349076 () Bool)

(assert (=> b!5311999 m!6349076))

(declare-fun m!6349078 () Bool)

(assert (=> b!5311999 m!6349078))

(assert (=> b!5311999 m!6349078))

(assert (=> b!5311999 m!6349072))

(declare-fun m!6349080 () Bool)

(assert (=> b!5311999 m!6349080))

(assert (=> b!5311999 m!6349072))

(declare-fun m!6349082 () Bool)

(assert (=> b!5312001 m!6349082))

(assert (=> b!5311793 d!1706810))

(declare-fun bs!1231595 () Bool)

(declare-fun b!5312014 () Bool)

(assert (= bs!1231595 (and b!5312014 b!5311999)))

(declare-fun lambda!270660 () Int)

(assert (=> bs!1231595 (= lambda!270660 lambda!270657)))

(declare-fun lt!2170419 () Int)

(declare-fun lambda!270661 () Int)

(assert (=> bs!1231595 (= (= lt!2170419 lt!2170409) (= lambda!270661 lambda!270658))))

(declare-fun bs!1231596 () Bool)

(assert (= bs!1231596 (and b!5312014 b!5312001)))

(assert (=> bs!1231596 (= (= lt!2170419 lt!2170411) (= lambda!270661 lambda!270659))))

(assert (=> b!5312014 true))

(declare-fun bs!1231597 () Bool)

(declare-fun b!5312016 () Bool)

(assert (= bs!1231597 (and b!5312016 b!5311999)))

(declare-fun lt!2170421 () Int)

(declare-fun lambda!270662 () Int)

(assert (=> bs!1231597 (= (= lt!2170421 lt!2170409) (= lambda!270662 lambda!270658))))

(declare-fun bs!1231598 () Bool)

(assert (= bs!1231598 (and b!5312016 b!5312001)))

(assert (=> bs!1231598 (= (= lt!2170421 lt!2170411) (= lambda!270662 lambda!270659))))

(declare-fun bs!1231599 () Bool)

(assert (= bs!1231599 (and b!5312016 b!5312014)))

(assert (=> bs!1231599 (= (= lt!2170421 lt!2170419) (= lambda!270662 lambda!270661))))

(assert (=> b!5312016 true))

(declare-fun d!1706814 () Bool)

(declare-fun e!3300831 () Bool)

(assert (=> d!1706814 e!3300831))

(declare-fun res!2253570 () Bool)

(assert (=> d!1706814 (=> (not res!2253570) (not e!3300831))))

(assert (=> d!1706814 (= res!2253570 (>= lt!2170421 0))))

(declare-fun e!3300830 () Int)

(assert (=> d!1706814 (= lt!2170421 e!3300830)))

(declare-fun c!922740 () Bool)

(assert (=> d!1706814 (= c!922740 ((_ is Cons!61072) zl!343))))

(assert (=> d!1706814 (= (zipperDepth!82 zl!343) lt!2170421)))

(assert (=> b!5312014 (= e!3300830 lt!2170419)))

(assert (=> b!5312014 (= lt!2170419 (maxBigInt!0 (contextDepth!47 (h!67520 zl!343)) (zipperDepth!82 (t!374401 zl!343))))))

(declare-fun lt!2170420 () Unit!153378)

(assert (=> b!5312014 (= lt!2170420 (lemmaForallContextDepthBiggerThanTransitive!41 (t!374401 zl!343) lt!2170419 (zipperDepth!82 (t!374401 zl!343)) lambda!270660))))

(assert (=> b!5312014 (forall!14384 (t!374401 zl!343) lambda!270661)))

(declare-fun lt!2170422 () Unit!153378)

(assert (=> b!5312014 (= lt!2170422 lt!2170420)))

(declare-fun b!5312015 () Bool)

(assert (=> b!5312015 (= e!3300830 0)))

(assert (=> b!5312016 (= e!3300831 (forall!14384 zl!343 lambda!270662))))

(assert (= (and d!1706814 c!922740) b!5312014))

(assert (= (and d!1706814 (not c!922740)) b!5312015))

(assert (= (and d!1706814 res!2253570) b!5312016))

(declare-fun m!6349084 () Bool)

(assert (=> b!5312014 m!6349084))

(declare-fun m!6349086 () Bool)

(assert (=> b!5312014 m!6349086))

(declare-fun m!6349088 () Bool)

(assert (=> b!5312014 m!6349088))

(declare-fun m!6349090 () Bool)

(assert (=> b!5312014 m!6349090))

(assert (=> b!5312014 m!6349090))

(assert (=> b!5312014 m!6349084))

(declare-fun m!6349092 () Bool)

(assert (=> b!5312014 m!6349092))

(assert (=> b!5312014 m!6349084))

(declare-fun m!6349094 () Bool)

(assert (=> b!5312016 m!6349094))

(assert (=> b!5311793 d!1706814))

(declare-fun b!5312054 () Bool)

(declare-fun e!3300851 () Regex!14965)

(assert (=> b!5312054 (= e!3300851 (h!67519 (unfocusZipperList!407 zl!343)))))

(declare-fun b!5312055 () Bool)

(declare-fun e!3300856 () Regex!14965)

(assert (=> b!5312055 (= e!3300856 (Union!14965 (h!67519 (unfocusZipperList!407 zl!343)) (generalisedUnion!894 (t!374400 (unfocusZipperList!407 zl!343)))))))

(declare-fun b!5312056 () Bool)

(declare-fun e!3300855 () Bool)

(assert (=> b!5312056 (= e!3300855 (isEmpty!33035 (t!374400 (unfocusZipperList!407 zl!343))))))

(declare-fun d!1706816 () Bool)

(declare-fun e!3300854 () Bool)

(assert (=> d!1706816 e!3300854))

(declare-fun res!2253587 () Bool)

(assert (=> d!1706816 (=> (not res!2253587) (not e!3300854))))

(declare-fun lt!2170428 () Regex!14965)

(assert (=> d!1706816 (= res!2253587 (validRegex!6701 lt!2170428))))

(assert (=> d!1706816 (= lt!2170428 e!3300851)))

(declare-fun c!922753 () Bool)

(assert (=> d!1706816 (= c!922753 e!3300855)))

(declare-fun res!2253586 () Bool)

(assert (=> d!1706816 (=> (not res!2253586) (not e!3300855))))

(assert (=> d!1706816 (= res!2253586 ((_ is Cons!61071) (unfocusZipperList!407 zl!343)))))

(declare-fun lambda!270665 () Int)

(declare-fun forall!14385 (List!61195 Int) Bool)

(assert (=> d!1706816 (forall!14385 (unfocusZipperList!407 zl!343) lambda!270665)))

(assert (=> d!1706816 (= (generalisedUnion!894 (unfocusZipperList!407 zl!343)) lt!2170428)))

(declare-fun b!5312057 () Bool)

(declare-fun e!3300852 () Bool)

(declare-fun e!3300853 () Bool)

(assert (=> b!5312057 (= e!3300852 e!3300853)))

(declare-fun c!922754 () Bool)

(declare-fun tail!10487 (List!61195) List!61195)

(assert (=> b!5312057 (= c!922754 (isEmpty!33035 (tail!10487 (unfocusZipperList!407 zl!343))))))

(declare-fun b!5312058 () Bool)

(declare-fun head!11390 (List!61195) Regex!14965)

(assert (=> b!5312058 (= e!3300853 (= lt!2170428 (head!11390 (unfocusZipperList!407 zl!343))))))

(declare-fun b!5312059 () Bool)

(declare-fun isUnion!310 (Regex!14965) Bool)

(assert (=> b!5312059 (= e!3300853 (isUnion!310 lt!2170428))))

(declare-fun b!5312060 () Bool)

(declare-fun isEmptyLang!878 (Regex!14965) Bool)

(assert (=> b!5312060 (= e!3300852 (isEmptyLang!878 lt!2170428))))

(declare-fun b!5312061 () Bool)

(assert (=> b!5312061 (= e!3300854 e!3300852)))

(declare-fun c!922752 () Bool)

(assert (=> b!5312061 (= c!922752 (isEmpty!33035 (unfocusZipperList!407 zl!343)))))

(declare-fun b!5312062 () Bool)

(assert (=> b!5312062 (= e!3300856 EmptyLang!14965)))

(declare-fun b!5312063 () Bool)

(assert (=> b!5312063 (= e!3300851 e!3300856)))

(declare-fun c!922751 () Bool)

(assert (=> b!5312063 (= c!922751 ((_ is Cons!61071) (unfocusZipperList!407 zl!343)))))

(assert (= (and d!1706816 res!2253586) b!5312056))

(assert (= (and d!1706816 c!922753) b!5312054))

(assert (= (and d!1706816 (not c!922753)) b!5312063))

(assert (= (and b!5312063 c!922751) b!5312055))

(assert (= (and b!5312063 (not c!922751)) b!5312062))

(assert (= (and d!1706816 res!2253587) b!5312061))

(assert (= (and b!5312061 c!922752) b!5312060))

(assert (= (and b!5312061 (not c!922752)) b!5312057))

(assert (= (and b!5312057 c!922754) b!5312058))

(assert (= (and b!5312057 (not c!922754)) b!5312059))

(declare-fun m!6349120 () Bool)

(assert (=> d!1706816 m!6349120))

(assert (=> d!1706816 m!6348800))

(declare-fun m!6349122 () Bool)

(assert (=> d!1706816 m!6349122))

(assert (=> b!5312061 m!6348800))

(declare-fun m!6349124 () Bool)

(assert (=> b!5312061 m!6349124))

(declare-fun m!6349126 () Bool)

(assert (=> b!5312059 m!6349126))

(declare-fun m!6349128 () Bool)

(assert (=> b!5312056 m!6349128))

(assert (=> b!5312057 m!6348800))

(declare-fun m!6349130 () Bool)

(assert (=> b!5312057 m!6349130))

(assert (=> b!5312057 m!6349130))

(declare-fun m!6349132 () Bool)

(assert (=> b!5312057 m!6349132))

(declare-fun m!6349134 () Bool)

(assert (=> b!5312060 m!6349134))

(declare-fun m!6349136 () Bool)

(assert (=> b!5312055 m!6349136))

(assert (=> b!5312058 m!6348800))

(declare-fun m!6349138 () Bool)

(assert (=> b!5312058 m!6349138))

(assert (=> b!5311776 d!1706816))

(declare-fun bs!1231601 () Bool)

(declare-fun d!1706822 () Bool)

(assert (= bs!1231601 (and d!1706822 d!1706816)))

(declare-fun lambda!270670 () Int)

(assert (=> bs!1231601 (= lambda!270670 lambda!270665)))

(declare-fun lt!2170433 () List!61195)

(assert (=> d!1706822 (forall!14385 lt!2170433 lambda!270670)))

(declare-fun e!3300861 () List!61195)

(assert (=> d!1706822 (= lt!2170433 e!3300861)))

(declare-fun c!922757 () Bool)

(assert (=> d!1706822 (= c!922757 ((_ is Cons!61072) zl!343))))

(assert (=> d!1706822 (= (unfocusZipperList!407 zl!343) lt!2170433)))

(declare-fun b!5312072 () Bool)

(assert (=> b!5312072 (= e!3300861 (Cons!61071 (generalisedConcat!634 (exprs!4849 (h!67520 zl!343))) (unfocusZipperList!407 (t!374401 zl!343))))))

(declare-fun b!5312073 () Bool)

(assert (=> b!5312073 (= e!3300861 Nil!61071)))

(assert (= (and d!1706822 c!922757) b!5312072))

(assert (= (and d!1706822 (not c!922757)) b!5312073))

(declare-fun m!6349140 () Bool)

(assert (=> d!1706822 m!6349140))

(assert (=> b!5312072 m!6348854))

(declare-fun m!6349142 () Bool)

(assert (=> b!5312072 m!6349142))

(assert (=> b!5311776 d!1706822))

(declare-fun b!5312074 () Bool)

(declare-fun e!3300863 () Bool)

(declare-fun lt!2170434 () Bool)

(assert (=> b!5312074 (= e!3300863 (not lt!2170434))))

(declare-fun b!5312075 () Bool)

(declare-fun res!2253598 () Bool)

(declare-fun e!3300865 () Bool)

(assert (=> b!5312075 (=> (not res!2253598) (not e!3300865))))

(assert (=> b!5312075 (= res!2253598 (isEmpty!33037 (tail!10485 s!2326)))))

(declare-fun b!5312076 () Bool)

(declare-fun e!3300864 () Bool)

(declare-fun call!378755 () Bool)

(assert (=> b!5312076 (= e!3300864 (= lt!2170434 call!378755))))

(declare-fun b!5312077 () Bool)

(declare-fun e!3300868 () Bool)

(assert (=> b!5312077 (= e!3300868 (nullable!5134 (Concat!23810 (regOne!30442 r!7292) (regTwo!30442 r!7292))))))

(declare-fun b!5312079 () Bool)

(assert (=> b!5312079 (= e!3300868 (matchR!7150 (derivativeStep!4157 (Concat!23810 (regOne!30442 r!7292) (regTwo!30442 r!7292)) (head!11388 s!2326)) (tail!10485 s!2326)))))

(declare-fun b!5312080 () Bool)

(declare-fun res!2253594 () Bool)

(declare-fun e!3300862 () Bool)

(assert (=> b!5312080 (=> res!2253594 e!3300862)))

(assert (=> b!5312080 (= res!2253594 (not (isEmpty!33037 (tail!10485 s!2326))))))

(declare-fun b!5312081 () Bool)

(assert (=> b!5312081 (= e!3300865 (= (head!11388 s!2326) (c!922685 (Concat!23810 (regOne!30442 r!7292) (regTwo!30442 r!7292)))))))

(declare-fun b!5312082 () Bool)

(declare-fun e!3300866 () Bool)

(assert (=> b!5312082 (= e!3300866 e!3300862)))

(declare-fun res!2253593 () Bool)

(assert (=> b!5312082 (=> res!2253593 e!3300862)))

(assert (=> b!5312082 (= res!2253593 call!378755)))

(declare-fun b!5312083 () Bool)

(declare-fun e!3300867 () Bool)

(assert (=> b!5312083 (= e!3300867 e!3300866)))

(declare-fun res!2253599 () Bool)

(assert (=> b!5312083 (=> (not res!2253599) (not e!3300866))))

(assert (=> b!5312083 (= res!2253599 (not lt!2170434))))

(declare-fun bm!378750 () Bool)

(assert (=> bm!378750 (= call!378755 (isEmpty!33037 s!2326))))

(declare-fun d!1706824 () Bool)

(assert (=> d!1706824 e!3300864))

(declare-fun c!922759 () Bool)

(assert (=> d!1706824 (= c!922759 ((_ is EmptyExpr!14965) (Concat!23810 (regOne!30442 r!7292) (regTwo!30442 r!7292))))))

(assert (=> d!1706824 (= lt!2170434 e!3300868)))

(declare-fun c!922760 () Bool)

(assert (=> d!1706824 (= c!922760 (isEmpty!33037 s!2326))))

(assert (=> d!1706824 (validRegex!6701 (Concat!23810 (regOne!30442 r!7292) (regTwo!30442 r!7292)))))

(assert (=> d!1706824 (= (matchR!7150 (Concat!23810 (regOne!30442 r!7292) (regTwo!30442 r!7292)) s!2326) lt!2170434)))

(declare-fun b!5312078 () Bool)

(declare-fun res!2253596 () Bool)

(assert (=> b!5312078 (=> res!2253596 e!3300867)))

(assert (=> b!5312078 (= res!2253596 (not ((_ is ElementMatch!14965) (Concat!23810 (regOne!30442 r!7292) (regTwo!30442 r!7292)))))))

(assert (=> b!5312078 (= e!3300863 e!3300867)))

(declare-fun b!5312084 () Bool)

(assert (=> b!5312084 (= e!3300864 e!3300863)))

(declare-fun c!922758 () Bool)

(assert (=> b!5312084 (= c!922758 ((_ is EmptyLang!14965) (Concat!23810 (regOne!30442 r!7292) (regTwo!30442 r!7292))))))

(declare-fun b!5312085 () Bool)

(declare-fun res!2253595 () Bool)

(assert (=> b!5312085 (=> (not res!2253595) (not e!3300865))))

(assert (=> b!5312085 (= res!2253595 (not call!378755))))

(declare-fun b!5312086 () Bool)

(declare-fun res!2253597 () Bool)

(assert (=> b!5312086 (=> res!2253597 e!3300867)))

(assert (=> b!5312086 (= res!2253597 e!3300865)))

(declare-fun res!2253592 () Bool)

(assert (=> b!5312086 (=> (not res!2253592) (not e!3300865))))

(assert (=> b!5312086 (= res!2253592 lt!2170434)))

(declare-fun b!5312087 () Bool)

(assert (=> b!5312087 (= e!3300862 (not (= (head!11388 s!2326) (c!922685 (Concat!23810 (regOne!30442 r!7292) (regTwo!30442 r!7292))))))))

(assert (= (and d!1706824 c!922760) b!5312077))

(assert (= (and d!1706824 (not c!922760)) b!5312079))

(assert (= (and d!1706824 c!922759) b!5312076))

(assert (= (and d!1706824 (not c!922759)) b!5312084))

(assert (= (and b!5312084 c!922758) b!5312074))

(assert (= (and b!5312084 (not c!922758)) b!5312078))

(assert (= (and b!5312078 (not res!2253596)) b!5312086))

(assert (= (and b!5312086 res!2253592) b!5312085))

(assert (= (and b!5312085 res!2253595) b!5312075))

(assert (= (and b!5312075 res!2253598) b!5312081))

(assert (= (and b!5312086 (not res!2253597)) b!5312083))

(assert (= (and b!5312083 res!2253599) b!5312082))

(assert (= (and b!5312082 (not res!2253593)) b!5312080))

(assert (= (and b!5312080 (not res!2253594)) b!5312087))

(assert (= (or b!5312076 b!5312082 b!5312085) bm!378750))

(assert (=> d!1706824 m!6349050))

(declare-fun m!6349144 () Bool)

(assert (=> d!1706824 m!6349144))

(assert (=> b!5312080 m!6349054))

(assert (=> b!5312080 m!6349054))

(assert (=> b!5312080 m!6349056))

(assert (=> bm!378750 m!6349050))

(assert (=> b!5312079 m!6349058))

(assert (=> b!5312079 m!6349058))

(declare-fun m!6349146 () Bool)

(assert (=> b!5312079 m!6349146))

(assert (=> b!5312079 m!6349054))

(assert (=> b!5312079 m!6349146))

(assert (=> b!5312079 m!6349054))

(declare-fun m!6349148 () Bool)

(assert (=> b!5312079 m!6349148))

(assert (=> b!5312075 m!6349054))

(assert (=> b!5312075 m!6349054))

(assert (=> b!5312075 m!6349056))

(assert (=> b!5312081 m!6349058))

(assert (=> b!5312087 m!6349058))

(declare-fun m!6349150 () Bool)

(assert (=> b!5312077 m!6349150))

(assert (=> b!5311797 d!1706824))

(declare-fun b!5312116 () Bool)

(declare-fun res!2253616 () Bool)

(declare-fun e!3300886 () Bool)

(assert (=> b!5312116 (=> (not res!2253616) (not e!3300886))))

(declare-fun lt!2170444 () Option!15076)

(declare-fun get!21004 (Option!15076) tuple2!64328)

(assert (=> b!5312116 (= res!2253616 (matchR!7150 (regTwo!30442 r!7292) (_2!35467 (get!21004 lt!2170444))))))

(declare-fun b!5312117 () Bool)

(declare-fun lt!2170442 () Unit!153378)

(declare-fun lt!2170443 () Unit!153378)

(assert (=> b!5312117 (= lt!2170442 lt!2170443)))

(declare-fun ++!13316 (List!61194 List!61194) List!61194)

(assert (=> b!5312117 (= (++!13316 (++!13316 Nil!61070 (Cons!61070 (h!67518 s!2326) Nil!61070)) (t!374399 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1731 (List!61194 C!30200 List!61194 List!61194) Unit!153378)

(assert (=> b!5312117 (= lt!2170443 (lemmaMoveElementToOtherListKeepsConcatEq!1731 Nil!61070 (h!67518 s!2326) (t!374399 s!2326) s!2326))))

(declare-fun e!3300887 () Option!15076)

(assert (=> b!5312117 (= e!3300887 (findConcatSeparation!1490 (regOne!30442 r!7292) (regTwo!30442 r!7292) (++!13316 Nil!61070 (Cons!61070 (h!67518 s!2326) Nil!61070)) (t!374399 s!2326) s!2326))))

(declare-fun b!5312118 () Bool)

(assert (=> b!5312118 (= e!3300886 (= (++!13316 (_1!35467 (get!21004 lt!2170444)) (_2!35467 (get!21004 lt!2170444))) s!2326))))

(declare-fun b!5312119 () Bool)

(declare-fun res!2253618 () Bool)

(assert (=> b!5312119 (=> (not res!2253618) (not e!3300886))))

(assert (=> b!5312119 (= res!2253618 (matchR!7150 (regOne!30442 r!7292) (_1!35467 (get!21004 lt!2170444))))))

(declare-fun b!5312120 () Bool)

(assert (=> b!5312120 (= e!3300887 None!15075)))

(declare-fun b!5312121 () Bool)

(declare-fun e!3300888 () Bool)

(assert (=> b!5312121 (= e!3300888 (matchR!7150 (regTwo!30442 r!7292) s!2326))))

(declare-fun b!5312122 () Bool)

(declare-fun e!3300885 () Bool)

(assert (=> b!5312122 (= e!3300885 (not (isDefined!11779 lt!2170444)))))

(declare-fun d!1706826 () Bool)

(assert (=> d!1706826 e!3300885))

(declare-fun res!2253617 () Bool)

(assert (=> d!1706826 (=> res!2253617 e!3300885)))

(assert (=> d!1706826 (= res!2253617 e!3300886)))

(declare-fun res!2253615 () Bool)

(assert (=> d!1706826 (=> (not res!2253615) (not e!3300886))))

(assert (=> d!1706826 (= res!2253615 (isDefined!11779 lt!2170444))))

(declare-fun e!3300884 () Option!15076)

(assert (=> d!1706826 (= lt!2170444 e!3300884)))

(declare-fun c!922769 () Bool)

(assert (=> d!1706826 (= c!922769 e!3300888)))

(declare-fun res!2253614 () Bool)

(assert (=> d!1706826 (=> (not res!2253614) (not e!3300888))))

(assert (=> d!1706826 (= res!2253614 (matchR!7150 (regOne!30442 r!7292) Nil!61070))))

(assert (=> d!1706826 (validRegex!6701 (regOne!30442 r!7292))))

(assert (=> d!1706826 (= (findConcatSeparation!1490 (regOne!30442 r!7292) (regTwo!30442 r!7292) Nil!61070 s!2326 s!2326) lt!2170444)))

(declare-fun b!5312123 () Bool)

(assert (=> b!5312123 (= e!3300884 e!3300887)))

(declare-fun c!922768 () Bool)

(assert (=> b!5312123 (= c!922768 ((_ is Nil!61070) s!2326))))

(declare-fun b!5312124 () Bool)

(assert (=> b!5312124 (= e!3300884 (Some!15075 (tuple2!64329 Nil!61070 s!2326)))))

(assert (= (and d!1706826 res!2253614) b!5312121))

(assert (= (and d!1706826 c!922769) b!5312124))

(assert (= (and d!1706826 (not c!922769)) b!5312123))

(assert (= (and b!5312123 c!922768) b!5312120))

(assert (= (and b!5312123 (not c!922768)) b!5312117))

(assert (= (and d!1706826 res!2253615) b!5312119))

(assert (= (and b!5312119 res!2253618) b!5312116))

(assert (= (and b!5312116 res!2253616) b!5312118))

(assert (= (and d!1706826 (not res!2253617)) b!5312122))

(declare-fun m!6349172 () Bool)

(assert (=> b!5312122 m!6349172))

(declare-fun m!6349174 () Bool)

(assert (=> b!5312121 m!6349174))

(declare-fun m!6349176 () Bool)

(assert (=> b!5312117 m!6349176))

(assert (=> b!5312117 m!6349176))

(declare-fun m!6349178 () Bool)

(assert (=> b!5312117 m!6349178))

(declare-fun m!6349180 () Bool)

(assert (=> b!5312117 m!6349180))

(assert (=> b!5312117 m!6349176))

(declare-fun m!6349182 () Bool)

(assert (=> b!5312117 m!6349182))

(declare-fun m!6349184 () Bool)

(assert (=> b!5312118 m!6349184))

(declare-fun m!6349186 () Bool)

(assert (=> b!5312118 m!6349186))

(assert (=> d!1706826 m!6349172))

(declare-fun m!6349188 () Bool)

(assert (=> d!1706826 m!6349188))

(declare-fun m!6349190 () Bool)

(assert (=> d!1706826 m!6349190))

(assert (=> b!5312116 m!6349184))

(declare-fun m!6349192 () Bool)

(assert (=> b!5312116 m!6349192))

(assert (=> b!5312119 m!6349184))

(declare-fun m!6349194 () Bool)

(assert (=> b!5312119 m!6349194))

(assert (=> b!5311796 d!1706826))

(declare-fun d!1706834 () Bool)

(declare-fun choose!39746 (Int) Bool)

(assert (=> d!1706834 (= (Exists!2146 lambda!270641) (choose!39746 lambda!270641))))

(declare-fun bs!1231607 () Bool)

(assert (= bs!1231607 d!1706834))

(declare-fun m!6349196 () Bool)

(assert (=> bs!1231607 m!6349196))

(assert (=> b!5311796 d!1706834))

(declare-fun d!1706836 () Bool)

(assert (=> d!1706836 (= (Exists!2146 lambda!270642) (choose!39746 lambda!270642))))

(declare-fun bs!1231608 () Bool)

(assert (= bs!1231608 d!1706836))

(declare-fun m!6349198 () Bool)

(assert (=> bs!1231608 m!6349198))

(assert (=> b!5311796 d!1706836))

(declare-fun bs!1231609 () Bool)

(declare-fun d!1706838 () Bool)

(assert (= bs!1231609 (and d!1706838 b!5311810)))

(declare-fun lambda!270677 () Int)

(assert (=> bs!1231609 (not (= lambda!270677 lambda!270647))))

(declare-fun bs!1231610 () Bool)

(assert (= bs!1231610 (and d!1706838 b!5311796)))

(assert (=> bs!1231610 (= lambda!270677 lambda!270641)))

(assert (=> bs!1231609 (= (and (= (regOne!30442 r!7292) (regTwo!30442 (regOne!30442 r!7292))) (= (regTwo!30442 r!7292) lt!2170370)) (= lambda!270677 lambda!270646))))

(assert (=> bs!1231610 (not (= lambda!270677 lambda!270642))))

(assert (=> bs!1231609 (= (and (= (regOne!30442 r!7292) (regOne!30442 (regOne!30442 r!7292))) (= (regTwo!30442 r!7292) lt!2170350)) (= lambda!270677 lambda!270644))))

(assert (=> bs!1231609 (not (= lambda!270677 lambda!270645))))

(assert (=> d!1706838 true))

(assert (=> d!1706838 true))

(assert (=> d!1706838 true))

(assert (=> d!1706838 (= (isDefined!11779 (findConcatSeparation!1490 (regOne!30442 r!7292) (regTwo!30442 r!7292) Nil!61070 s!2326 s!2326)) (Exists!2146 lambda!270677))))

(declare-fun lt!2170447 () Unit!153378)

(declare-fun choose!39747 (Regex!14965 Regex!14965 List!61194) Unit!153378)

(assert (=> d!1706838 (= lt!2170447 (choose!39747 (regOne!30442 r!7292) (regTwo!30442 r!7292) s!2326))))

(assert (=> d!1706838 (validRegex!6701 (regOne!30442 r!7292))))

(assert (=> d!1706838 (= (lemmaFindConcatSeparationEquivalentToExists!1254 (regOne!30442 r!7292) (regTwo!30442 r!7292) s!2326) lt!2170447)))

(declare-fun bs!1231611 () Bool)

(assert (= bs!1231611 d!1706838))

(assert (=> bs!1231611 m!6348782))

(declare-fun m!6349210 () Bool)

(assert (=> bs!1231611 m!6349210))

(assert (=> bs!1231611 m!6348782))

(assert (=> bs!1231611 m!6348784))

(assert (=> bs!1231611 m!6349190))

(declare-fun m!6349218 () Bool)

(assert (=> bs!1231611 m!6349218))

(assert (=> b!5311796 d!1706838))

(declare-fun bs!1231615 () Bool)

(declare-fun d!1706844 () Bool)

(assert (= bs!1231615 (and d!1706844 b!5311810)))

(declare-fun lambda!270682 () Int)

(assert (=> bs!1231615 (not (= lambda!270682 lambda!270647))))

(declare-fun bs!1231616 () Bool)

(assert (= bs!1231616 (and d!1706844 b!5311796)))

(assert (=> bs!1231616 (= lambda!270682 lambda!270641)))

(assert (=> bs!1231615 (= (and (= (regOne!30442 r!7292) (regTwo!30442 (regOne!30442 r!7292))) (= (regTwo!30442 r!7292) lt!2170370)) (= lambda!270682 lambda!270646))))

(assert (=> bs!1231616 (not (= lambda!270682 lambda!270642))))

(assert (=> bs!1231615 (= (and (= (regOne!30442 r!7292) (regOne!30442 (regOne!30442 r!7292))) (= (regTwo!30442 r!7292) lt!2170350)) (= lambda!270682 lambda!270644))))

(declare-fun bs!1231617 () Bool)

(assert (= bs!1231617 (and d!1706844 d!1706838)))

(assert (=> bs!1231617 (= lambda!270682 lambda!270677)))

(assert (=> bs!1231615 (not (= lambda!270682 lambda!270645))))

(assert (=> d!1706844 true))

(assert (=> d!1706844 true))

(assert (=> d!1706844 true))

(declare-fun lambda!270683 () Int)

(assert (=> bs!1231615 (= (and (= (regOne!30442 r!7292) (regTwo!30442 (regOne!30442 r!7292))) (= (regTwo!30442 r!7292) lt!2170370)) (= lambda!270683 lambda!270647))))

(declare-fun bs!1231618 () Bool)

(assert (= bs!1231618 d!1706844))

(assert (=> bs!1231618 (not (= lambda!270683 lambda!270682))))

(assert (=> bs!1231616 (not (= lambda!270683 lambda!270641))))

(assert (=> bs!1231615 (not (= lambda!270683 lambda!270646))))

(assert (=> bs!1231616 (= lambda!270683 lambda!270642)))

(assert (=> bs!1231615 (not (= lambda!270683 lambda!270644))))

(assert (=> bs!1231617 (not (= lambda!270683 lambda!270677))))

(assert (=> bs!1231615 (= (and (= (regOne!30442 r!7292) (regOne!30442 (regOne!30442 r!7292))) (= (regTwo!30442 r!7292) lt!2170350)) (= lambda!270683 lambda!270645))))

(assert (=> d!1706844 true))

(assert (=> d!1706844 true))

(assert (=> d!1706844 true))

(assert (=> d!1706844 (= (Exists!2146 lambda!270682) (Exists!2146 lambda!270683))))

(declare-fun lt!2170456 () Unit!153378)

(declare-fun choose!39749 (Regex!14965 Regex!14965 List!61194) Unit!153378)

(assert (=> d!1706844 (= lt!2170456 (choose!39749 (regOne!30442 r!7292) (regTwo!30442 r!7292) s!2326))))

(assert (=> d!1706844 (validRegex!6701 (regOne!30442 r!7292))))

(assert (=> d!1706844 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!800 (regOne!30442 r!7292) (regTwo!30442 r!7292) s!2326) lt!2170456)))

(declare-fun m!6349246 () Bool)

(assert (=> bs!1231618 m!6349246))

(declare-fun m!6349248 () Bool)

(assert (=> bs!1231618 m!6349248))

(declare-fun m!6349250 () Bool)

(assert (=> bs!1231618 m!6349250))

(assert (=> bs!1231618 m!6349190))

(assert (=> b!5311796 d!1706844))

(declare-fun d!1706858 () Bool)

(declare-fun isEmpty!33040 (Option!15076) Bool)

(assert (=> d!1706858 (= (isDefined!11779 (findConcatSeparation!1490 (regOne!30442 r!7292) (regTwo!30442 r!7292) Nil!61070 s!2326 s!2326)) (not (isEmpty!33040 (findConcatSeparation!1490 (regOne!30442 r!7292) (regTwo!30442 r!7292) Nil!61070 s!2326 s!2326))))))

(declare-fun bs!1231619 () Bool)

(assert (= bs!1231619 d!1706858))

(assert (=> bs!1231619 m!6348782))

(declare-fun m!6349252 () Bool)

(assert (=> bs!1231619 m!6349252))

(assert (=> b!5311796 d!1706858))

(declare-fun d!1706860 () Bool)

(declare-fun c!922795 () Bool)

(assert (=> d!1706860 (= c!922795 (isEmpty!33037 (t!374399 s!2326)))))

(declare-fun e!3300931 () Bool)

(assert (=> d!1706860 (= (matchZipper!1209 lt!2170345 (t!374399 s!2326)) e!3300931)))

(declare-fun b!5312198 () Bool)

(assert (=> b!5312198 (= e!3300931 (nullableZipper!1335 lt!2170345))))

(declare-fun b!5312199 () Bool)

(assert (=> b!5312199 (= e!3300931 (matchZipper!1209 (derivationStepZipper!1208 lt!2170345 (head!11388 (t!374399 s!2326))) (tail!10485 (t!374399 s!2326))))))

(assert (= (and d!1706860 c!922795) b!5312198))

(assert (= (and d!1706860 (not c!922795)) b!5312199))

(assert (=> d!1706860 m!6348966))

(declare-fun m!6349254 () Bool)

(assert (=> b!5312198 m!6349254))

(assert (=> b!5312199 m!6348970))

(assert (=> b!5312199 m!6348970))

(declare-fun m!6349256 () Bool)

(assert (=> b!5312199 m!6349256))

(assert (=> b!5312199 m!6348974))

(assert (=> b!5312199 m!6349256))

(assert (=> b!5312199 m!6348974))

(declare-fun m!6349258 () Bool)

(assert (=> b!5312199 m!6349258))

(assert (=> b!5311774 d!1706860))

(declare-fun bs!1231620 () Bool)

(declare-fun d!1706862 () Bool)

(assert (= bs!1231620 (and d!1706862 b!5311803)))

(declare-fun lambda!270688 () Int)

(assert (=> bs!1231620 (= lambda!270688 lambda!270643)))

(assert (=> d!1706862 true))

(assert (=> d!1706862 (= (derivationStepZipper!1208 lt!2170361 (h!67518 s!2326)) (flatMap!692 lt!2170361 lambda!270688))))

(declare-fun bs!1231621 () Bool)

(assert (= bs!1231621 d!1706862))

(declare-fun m!6349260 () Bool)

(assert (=> bs!1231621 m!6349260))

(assert (=> b!5311778 d!1706862))

(declare-fun d!1706864 () Bool)

(assert (=> d!1706864 (= (flatMap!692 lt!2170361 lambda!270643) (choose!39739 lt!2170361 lambda!270643))))

(declare-fun bs!1231622 () Bool)

(assert (= bs!1231622 d!1706864))

(declare-fun m!6349262 () Bool)

(assert (=> bs!1231622 m!6349262))

(assert (=> b!5311778 d!1706864))

(declare-fun d!1706866 () Bool)

(assert (=> d!1706866 (= (flatMap!692 lt!2170361 lambda!270643) (dynLambda!24138 lambda!270643 lt!2170349))))

(declare-fun lt!2170459 () Unit!153378)

(assert (=> d!1706866 (= lt!2170459 (choose!39740 lt!2170361 lt!2170349 lambda!270643))))

(assert (=> d!1706866 (= lt!2170361 (store ((as const (Array Context!8698 Bool)) false) lt!2170349 true))))

(assert (=> d!1706866 (= (lemmaFlatMapOnSingletonSet!224 lt!2170361 lt!2170349 lambda!270643) lt!2170459)))

(declare-fun b_lambda!204433 () Bool)

(assert (=> (not b_lambda!204433) (not d!1706866)))

(declare-fun bs!1231623 () Bool)

(assert (= bs!1231623 d!1706866))

(assert (=> bs!1231623 m!6348818))

(declare-fun m!6349264 () Bool)

(assert (=> bs!1231623 m!6349264))

(declare-fun m!6349266 () Bool)

(assert (=> bs!1231623 m!6349266))

(assert (=> bs!1231623 m!6348820))

(assert (=> b!5311778 d!1706866))

(assert (=> b!5311778 d!1706796))

(declare-fun call!378779 () (InoxSet Context!8698))

(declare-fun e!3300945 () (InoxSet Context!8698))

(declare-fun b!5312222 () Bool)

(assert (=> b!5312222 (= e!3300945 ((_ map or) call!378779 (derivationStepZipperUp!337 (Context!8699 (t!374400 (exprs!4849 lt!2170349))) (h!67518 s!2326))))))

(declare-fun b!5312223 () Bool)

(declare-fun e!3300946 () (InoxSet Context!8698))

(assert (=> b!5312223 (= e!3300946 ((as const (Array Context!8698 Bool)) false))))

(declare-fun b!5312224 () Bool)

(declare-fun e!3300944 () Bool)

(assert (=> b!5312224 (= e!3300944 (nullable!5134 (h!67519 (exprs!4849 lt!2170349))))))

(declare-fun d!1706868 () Bool)

(declare-fun c!922806 () Bool)

(assert (=> d!1706868 (= c!922806 e!3300944)))

(declare-fun res!2253646 () Bool)

(assert (=> d!1706868 (=> (not res!2253646) (not e!3300944))))

(assert (=> d!1706868 (= res!2253646 ((_ is Cons!61071) (exprs!4849 lt!2170349)))))

(assert (=> d!1706868 (= (derivationStepZipperUp!337 lt!2170349 (h!67518 s!2326)) e!3300945)))

(declare-fun b!5312225 () Bool)

(assert (=> b!5312225 (= e!3300946 call!378779)))

(declare-fun bm!378774 () Bool)

(assert (=> bm!378774 (= call!378779 (derivationStepZipperDown!413 (h!67519 (exprs!4849 lt!2170349)) (Context!8699 (t!374400 (exprs!4849 lt!2170349))) (h!67518 s!2326)))))

(declare-fun b!5312226 () Bool)

(assert (=> b!5312226 (= e!3300945 e!3300946)))

(declare-fun c!922807 () Bool)

(assert (=> b!5312226 (= c!922807 ((_ is Cons!61071) (exprs!4849 lt!2170349)))))

(assert (= (and d!1706868 res!2253646) b!5312224))

(assert (= (and d!1706868 c!922806) b!5312222))

(assert (= (and d!1706868 (not c!922806)) b!5312226))

(assert (= (and b!5312226 c!922807) b!5312225))

(assert (= (and b!5312226 (not c!922807)) b!5312223))

(assert (= (or b!5312222 b!5312225) bm!378774))

(declare-fun m!6349268 () Bool)

(assert (=> b!5312222 m!6349268))

(declare-fun m!6349270 () Bool)

(assert (=> b!5312224 m!6349270))

(declare-fun m!6349272 () Bool)

(assert (=> bm!378774 m!6349272))

(assert (=> b!5311778 d!1706868))

(declare-fun d!1706870 () Bool)

(declare-fun lt!2170463 () Int)

(assert (=> d!1706870 (>= lt!2170463 0)))

(declare-fun e!3300955 () Int)

(assert (=> d!1706870 (= lt!2170463 e!3300955)))

(declare-fun c!922814 () Bool)

(assert (=> d!1706870 (= c!922814 ((_ is Cons!61072) lt!2170333))))

(assert (=> d!1706870 (= (zipperDepthTotal!126 lt!2170333) lt!2170463)))

(declare-fun b!5312241 () Bool)

(assert (=> b!5312241 (= e!3300955 (+ (contextDepthTotal!106 (h!67520 lt!2170333)) (zipperDepthTotal!126 (t!374401 lt!2170333))))))

(declare-fun b!5312242 () Bool)

(assert (=> b!5312242 (= e!3300955 0)))

(assert (= (and d!1706870 c!922814) b!5312241))

(assert (= (and d!1706870 (not c!922814)) b!5312242))

(declare-fun m!6349294 () Bool)

(assert (=> b!5312241 m!6349294))

(declare-fun m!6349296 () Bool)

(assert (=> b!5312241 m!6349296))

(assert (=> b!5311798 d!1706870))

(declare-fun d!1706874 () Bool)

(declare-fun lt!2170464 () Int)

(assert (=> d!1706874 (>= lt!2170464 0)))

(declare-fun e!3300956 () Int)

(assert (=> d!1706874 (= lt!2170464 e!3300956)))

(declare-fun c!922815 () Bool)

(assert (=> d!1706874 (= c!922815 ((_ is Cons!61072) zl!343))))

(assert (=> d!1706874 (= (zipperDepthTotal!126 zl!343) lt!2170464)))

(declare-fun b!5312243 () Bool)

(assert (=> b!5312243 (= e!3300956 (+ (contextDepthTotal!106 (h!67520 zl!343)) (zipperDepthTotal!126 (t!374401 zl!343))))))

(declare-fun b!5312244 () Bool)

(assert (=> b!5312244 (= e!3300956 0)))

(assert (= (and d!1706874 c!922815) b!5312243))

(assert (= (and d!1706874 (not c!922815)) b!5312244))

(assert (=> b!5312243 m!6348776))

(declare-fun m!6349298 () Bool)

(assert (=> b!5312243 m!6349298))

(assert (=> b!5311798 d!1706874))

(declare-fun d!1706876 () Bool)

(declare-fun nullableFct!1488 (Regex!14965) Bool)

(assert (=> d!1706876 (= (nullable!5134 (regOne!30442 (regOne!30442 r!7292))) (nullableFct!1488 (regOne!30442 (regOne!30442 r!7292))))))

(declare-fun bs!1231624 () Bool)

(assert (= bs!1231624 d!1706876))

(declare-fun m!6349300 () Bool)

(assert (=> bs!1231624 m!6349300))

(assert (=> b!5311777 d!1706876))

(assert (=> b!5311801 d!1706782))

(declare-fun d!1706878 () Bool)

(declare-fun c!922818 () Bool)

(assert (=> d!1706878 (= c!922818 (isEmpty!33037 (t!374399 s!2326)))))

(declare-fun e!3300959 () Bool)

(assert (=> d!1706878 (= (matchZipper!1209 lt!2170357 (t!374399 s!2326)) e!3300959)))

(declare-fun b!5312249 () Bool)

(assert (=> b!5312249 (= e!3300959 (nullableZipper!1335 lt!2170357))))

(declare-fun b!5312250 () Bool)

(assert (=> b!5312250 (= e!3300959 (matchZipper!1209 (derivationStepZipper!1208 lt!2170357 (head!11388 (t!374399 s!2326))) (tail!10485 (t!374399 s!2326))))))

(assert (= (and d!1706878 c!922818) b!5312249))

(assert (= (and d!1706878 (not c!922818)) b!5312250))

(assert (=> d!1706878 m!6348966))

(declare-fun m!6349302 () Bool)

(assert (=> b!5312249 m!6349302))

(assert (=> b!5312250 m!6348970))

(assert (=> b!5312250 m!6348970))

(declare-fun m!6349304 () Bool)

(assert (=> b!5312250 m!6349304))

(assert (=> b!5312250 m!6348974))

(assert (=> b!5312250 m!6349304))

(assert (=> b!5312250 m!6348974))

(declare-fun m!6349306 () Bool)

(assert (=> b!5312250 m!6349306))

(assert (=> b!5311801 d!1706878))

(declare-fun d!1706880 () Bool)

(declare-fun c!922819 () Bool)

(assert (=> d!1706880 (= c!922819 (isEmpty!33037 (t!374399 s!2326)))))

(declare-fun e!3300960 () Bool)

(assert (=> d!1706880 (= (matchZipper!1209 lt!2170353 (t!374399 s!2326)) e!3300960)))

(declare-fun b!5312251 () Bool)

(assert (=> b!5312251 (= e!3300960 (nullableZipper!1335 lt!2170353))))

(declare-fun b!5312252 () Bool)

(assert (=> b!5312252 (= e!3300960 (matchZipper!1209 (derivationStepZipper!1208 lt!2170353 (head!11388 (t!374399 s!2326))) (tail!10485 (t!374399 s!2326))))))

(assert (= (and d!1706880 c!922819) b!5312251))

(assert (= (and d!1706880 (not c!922819)) b!5312252))

(assert (=> d!1706880 m!6348966))

(declare-fun m!6349308 () Bool)

(assert (=> b!5312251 m!6349308))

(assert (=> b!5312252 m!6348970))

(assert (=> b!5312252 m!6348970))

(declare-fun m!6349310 () Bool)

(assert (=> b!5312252 m!6349310))

(assert (=> b!5312252 m!6348974))

(assert (=> b!5312252 m!6349310))

(assert (=> b!5312252 m!6348974))

(declare-fun m!6349312 () Bool)

(assert (=> b!5312252 m!6349312))

(assert (=> b!5311801 d!1706880))

(declare-fun d!1706882 () Bool)

(declare-fun e!3300961 () Bool)

(assert (=> d!1706882 (= (matchZipper!1209 ((_ map or) lt!2170353 lt!2170363) (t!374399 s!2326)) e!3300961)))

(declare-fun res!2253649 () Bool)

(assert (=> d!1706882 (=> res!2253649 e!3300961)))

(assert (=> d!1706882 (= res!2253649 (matchZipper!1209 lt!2170353 (t!374399 s!2326)))))

(declare-fun lt!2170467 () Unit!153378)

(assert (=> d!1706882 (= lt!2170467 (choose!39738 lt!2170353 lt!2170363 (t!374399 s!2326)))))

(assert (=> d!1706882 (= (lemmaZipperConcatMatchesSameAsBothZippers!202 lt!2170353 lt!2170363 (t!374399 s!2326)) lt!2170467)))

(declare-fun b!5312253 () Bool)

(assert (=> b!5312253 (= e!3300961 (matchZipper!1209 lt!2170363 (t!374399 s!2326)))))

(assert (= (and d!1706882 (not res!2253649)) b!5312253))

(declare-fun m!6349314 () Bool)

(assert (=> d!1706882 m!6349314))

(assert (=> d!1706882 m!6348858))

(declare-fun m!6349316 () Bool)

(assert (=> d!1706882 m!6349316))

(assert (=> b!5312253 m!6348830))

(assert (=> b!5311801 d!1706882))

(declare-fun d!1706884 () Bool)

(assert (=> d!1706884 (= (isEmpty!33036 (t!374401 zl!343)) ((_ is Nil!61072) (t!374401 zl!343)))))

(assert (=> b!5311781 d!1706884))

(declare-fun b!5312256 () Bool)

(declare-fun e!3300964 () Bool)

(declare-fun lt!2170469 () Bool)

(assert (=> b!5312256 (= e!3300964 (not lt!2170469))))

(declare-fun b!5312257 () Bool)

(declare-fun res!2253656 () Bool)

(declare-fun e!3300966 () Bool)

(assert (=> b!5312257 (=> (not res!2253656) (not e!3300966))))

(assert (=> b!5312257 (= res!2253656 (isEmpty!33037 (tail!10485 s!2326)))))

(declare-fun b!5312258 () Bool)

(declare-fun e!3300965 () Bool)

(declare-fun call!378780 () Bool)

(assert (=> b!5312258 (= e!3300965 (= lt!2170469 call!378780))))

(declare-fun b!5312259 () Bool)

(declare-fun e!3300969 () Bool)

(assert (=> b!5312259 (= e!3300969 (nullable!5134 (Concat!23810 lt!2170336 lt!2170370)))))

(declare-fun b!5312261 () Bool)

(assert (=> b!5312261 (= e!3300969 (matchR!7150 (derivativeStep!4157 (Concat!23810 lt!2170336 lt!2170370) (head!11388 s!2326)) (tail!10485 s!2326)))))

(declare-fun b!5312262 () Bool)

(declare-fun res!2253652 () Bool)

(declare-fun e!3300963 () Bool)

(assert (=> b!5312262 (=> res!2253652 e!3300963)))

(assert (=> b!5312262 (= res!2253652 (not (isEmpty!33037 (tail!10485 s!2326))))))

(declare-fun b!5312263 () Bool)

(assert (=> b!5312263 (= e!3300966 (= (head!11388 s!2326) (c!922685 (Concat!23810 lt!2170336 lt!2170370))))))

(declare-fun b!5312264 () Bool)

(declare-fun e!3300967 () Bool)

(assert (=> b!5312264 (= e!3300967 e!3300963)))

(declare-fun res!2253651 () Bool)

(assert (=> b!5312264 (=> res!2253651 e!3300963)))

(assert (=> b!5312264 (= res!2253651 call!378780)))

(declare-fun b!5312265 () Bool)

(declare-fun e!3300968 () Bool)

(assert (=> b!5312265 (= e!3300968 e!3300967)))

(declare-fun res!2253657 () Bool)

(assert (=> b!5312265 (=> (not res!2253657) (not e!3300967))))

(assert (=> b!5312265 (= res!2253657 (not lt!2170469))))

(declare-fun bm!378775 () Bool)

(assert (=> bm!378775 (= call!378780 (isEmpty!33037 s!2326))))

(declare-fun d!1706886 () Bool)

(assert (=> d!1706886 e!3300965))

(declare-fun c!922822 () Bool)

(assert (=> d!1706886 (= c!922822 ((_ is EmptyExpr!14965) (Concat!23810 lt!2170336 lt!2170370)))))

(assert (=> d!1706886 (= lt!2170469 e!3300969)))

(declare-fun c!922823 () Bool)

(assert (=> d!1706886 (= c!922823 (isEmpty!33037 s!2326))))

(assert (=> d!1706886 (validRegex!6701 (Concat!23810 lt!2170336 lt!2170370))))

(assert (=> d!1706886 (= (matchR!7150 (Concat!23810 lt!2170336 lt!2170370) s!2326) lt!2170469)))

(declare-fun b!5312260 () Bool)

(declare-fun res!2253654 () Bool)

(assert (=> b!5312260 (=> res!2253654 e!3300968)))

(assert (=> b!5312260 (= res!2253654 (not ((_ is ElementMatch!14965) (Concat!23810 lt!2170336 lt!2170370))))))

(assert (=> b!5312260 (= e!3300964 e!3300968)))

(declare-fun b!5312266 () Bool)

(assert (=> b!5312266 (= e!3300965 e!3300964)))

(declare-fun c!922821 () Bool)

(assert (=> b!5312266 (= c!922821 ((_ is EmptyLang!14965) (Concat!23810 lt!2170336 lt!2170370)))))

(declare-fun b!5312267 () Bool)

(declare-fun res!2253653 () Bool)

(assert (=> b!5312267 (=> (not res!2253653) (not e!3300966))))

(assert (=> b!5312267 (= res!2253653 (not call!378780))))

(declare-fun b!5312268 () Bool)

(declare-fun res!2253655 () Bool)

(assert (=> b!5312268 (=> res!2253655 e!3300968)))

(assert (=> b!5312268 (= res!2253655 e!3300966)))

(declare-fun res!2253650 () Bool)

(assert (=> b!5312268 (=> (not res!2253650) (not e!3300966))))

(assert (=> b!5312268 (= res!2253650 lt!2170469)))

(declare-fun b!5312269 () Bool)

(assert (=> b!5312269 (= e!3300963 (not (= (head!11388 s!2326) (c!922685 (Concat!23810 lt!2170336 lt!2170370)))))))

(assert (= (and d!1706886 c!922823) b!5312259))

(assert (= (and d!1706886 (not c!922823)) b!5312261))

(assert (= (and d!1706886 c!922822) b!5312258))

(assert (= (and d!1706886 (not c!922822)) b!5312266))

(assert (= (and b!5312266 c!922821) b!5312256))

(assert (= (and b!5312266 (not c!922821)) b!5312260))

(assert (= (and b!5312260 (not res!2253654)) b!5312268))

(assert (= (and b!5312268 res!2253650) b!5312267))

(assert (= (and b!5312267 res!2253653) b!5312257))

(assert (= (and b!5312257 res!2253656) b!5312263))

(assert (= (and b!5312268 (not res!2253655)) b!5312265))

(assert (= (and b!5312265 res!2253657) b!5312264))

(assert (= (and b!5312264 (not res!2253651)) b!5312262))

(assert (= (and b!5312262 (not res!2253652)) b!5312269))

(assert (= (or b!5312258 b!5312264 b!5312267) bm!378775))

(assert (=> d!1706886 m!6349050))

(declare-fun m!6349322 () Bool)

(assert (=> d!1706886 m!6349322))

(assert (=> b!5312262 m!6349054))

(assert (=> b!5312262 m!6349054))

(assert (=> b!5312262 m!6349056))

(assert (=> bm!378775 m!6349050))

(assert (=> b!5312261 m!6349058))

(assert (=> b!5312261 m!6349058))

(declare-fun m!6349324 () Bool)

(assert (=> b!5312261 m!6349324))

(assert (=> b!5312261 m!6349054))

(assert (=> b!5312261 m!6349324))

(assert (=> b!5312261 m!6349054))

(declare-fun m!6349326 () Bool)

(assert (=> b!5312261 m!6349326))

(assert (=> b!5312257 m!6349054))

(assert (=> b!5312257 m!6349054))

(assert (=> b!5312257 m!6349056))

(assert (=> b!5312263 m!6349058))

(assert (=> b!5312269 m!6349058))

(declare-fun m!6349328 () Bool)

(assert (=> b!5312259 m!6349328))

(assert (=> b!5311780 d!1706886))

(declare-fun d!1706890 () Bool)

(declare-fun lt!2170473 () Int)

(assert (=> d!1706890 (>= lt!2170473 0)))

(declare-fun e!3300972 () Int)

(assert (=> d!1706890 (= lt!2170473 e!3300972)))

(declare-fun c!922827 () Bool)

(assert (=> d!1706890 (= c!922827 ((_ is Cons!61071) (exprs!4849 lt!2170349)))))

(assert (=> d!1706890 (= (contextDepthTotal!106 lt!2170349) lt!2170473)))

(declare-fun b!5312274 () Bool)

(declare-fun regexDepthTotal!46 (Regex!14965) Int)

(assert (=> b!5312274 (= e!3300972 (+ (regexDepthTotal!46 (h!67519 (exprs!4849 lt!2170349))) (contextDepthTotal!106 (Context!8699 (t!374400 (exprs!4849 lt!2170349))))))))

(declare-fun b!5312275 () Bool)

(assert (=> b!5312275 (= e!3300972 1)))

(assert (= (and d!1706890 c!922827) b!5312274))

(assert (= (and d!1706890 (not c!922827)) b!5312275))

(declare-fun m!6349338 () Bool)

(assert (=> b!5312274 m!6349338))

(declare-fun m!6349340 () Bool)

(assert (=> b!5312274 m!6349340))

(assert (=> b!5311800 d!1706890))

(declare-fun d!1706896 () Bool)

(declare-fun lt!2170477 () Int)

(assert (=> d!1706896 (>= lt!2170477 0)))

(declare-fun e!3300978 () Int)

(assert (=> d!1706896 (= lt!2170477 e!3300978)))

(declare-fun c!922830 () Bool)

(assert (=> d!1706896 (= c!922830 ((_ is Cons!61071) (exprs!4849 (h!67520 zl!343))))))

(assert (=> d!1706896 (= (contextDepthTotal!106 (h!67520 zl!343)) lt!2170477)))

(declare-fun b!5312285 () Bool)

(assert (=> b!5312285 (= e!3300978 (+ (regexDepthTotal!46 (h!67519 (exprs!4849 (h!67520 zl!343)))) (contextDepthTotal!106 (Context!8699 (t!374400 (exprs!4849 (h!67520 zl!343)))))))))

(declare-fun b!5312286 () Bool)

(assert (=> b!5312286 (= e!3300978 1)))

(assert (= (and d!1706896 c!922830) b!5312285))

(assert (= (and d!1706896 (not c!922830)) b!5312286))

(declare-fun m!6349342 () Bool)

(assert (=> b!5312285 m!6349342))

(declare-fun m!6349344 () Bool)

(assert (=> b!5312285 m!6349344))

(assert (=> b!5311800 d!1706896))

(declare-fun bs!1231632 () Bool)

(declare-fun d!1706898 () Bool)

(assert (= bs!1231632 (and d!1706898 d!1706816)))

(declare-fun lambda!270697 () Int)

(assert (=> bs!1231632 (= lambda!270697 lambda!270665)))

(declare-fun bs!1231633 () Bool)

(assert (= bs!1231633 (and d!1706898 d!1706822)))

(assert (=> bs!1231633 (= lambda!270697 lambda!270670)))

(assert (=> d!1706898 (= (inv!80659 (h!67520 zl!343)) (forall!14385 (exprs!4849 (h!67520 zl!343)) lambda!270697))))

(declare-fun bs!1231634 () Bool)

(assert (= bs!1231634 d!1706898))

(declare-fun m!6349362 () Bool)

(assert (=> bs!1231634 m!6349362))

(assert (=> b!5311804 d!1706898))

(declare-fun b!5312287 () Bool)

(declare-fun call!378781 () (InoxSet Context!8698))

(declare-fun e!3300980 () (InoxSet Context!8698))

(assert (=> b!5312287 (= e!3300980 ((_ map or) call!378781 (derivationStepZipperUp!337 (Context!8699 (t!374400 (exprs!4849 lt!2170335))) (h!67518 s!2326))))))

(declare-fun b!5312288 () Bool)

(declare-fun e!3300981 () (InoxSet Context!8698))

(assert (=> b!5312288 (= e!3300981 ((as const (Array Context!8698 Bool)) false))))

(declare-fun b!5312289 () Bool)

(declare-fun e!3300979 () Bool)

(assert (=> b!5312289 (= e!3300979 (nullable!5134 (h!67519 (exprs!4849 lt!2170335))))))

(declare-fun d!1706902 () Bool)

(declare-fun c!922831 () Bool)

(assert (=> d!1706902 (= c!922831 e!3300979)))

(declare-fun res!2253663 () Bool)

(assert (=> d!1706902 (=> (not res!2253663) (not e!3300979))))

(assert (=> d!1706902 (= res!2253663 ((_ is Cons!61071) (exprs!4849 lt!2170335)))))

(assert (=> d!1706902 (= (derivationStepZipperUp!337 lt!2170335 (h!67518 s!2326)) e!3300980)))

(declare-fun b!5312290 () Bool)

(assert (=> b!5312290 (= e!3300981 call!378781)))

(declare-fun bm!378776 () Bool)

(assert (=> bm!378776 (= call!378781 (derivationStepZipperDown!413 (h!67519 (exprs!4849 lt!2170335)) (Context!8699 (t!374400 (exprs!4849 lt!2170335))) (h!67518 s!2326)))))

(declare-fun b!5312291 () Bool)

(assert (=> b!5312291 (= e!3300980 e!3300981)))

(declare-fun c!922832 () Bool)

(assert (=> b!5312291 (= c!922832 ((_ is Cons!61071) (exprs!4849 lt!2170335)))))

(assert (= (and d!1706902 res!2253663) b!5312289))

(assert (= (and d!1706902 c!922831) b!5312287))

(assert (= (and d!1706902 (not c!922831)) b!5312291))

(assert (= (and b!5312291 c!922832) b!5312290))

(assert (= (and b!5312291 (not c!922832)) b!5312288))

(assert (= (or b!5312287 b!5312290) bm!378776))

(declare-fun m!6349364 () Bool)

(assert (=> b!5312287 m!6349364))

(declare-fun m!6349366 () Bool)

(assert (=> b!5312289 m!6349366))

(declare-fun m!6349368 () Bool)

(assert (=> bm!378776 m!6349368))

(assert (=> b!5311803 d!1706902))

(declare-fun d!1706904 () Bool)

(assert (=> d!1706904 (= (nullable!5134 (h!67519 (exprs!4849 (h!67520 zl!343)))) (nullableFct!1488 (h!67519 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun bs!1231635 () Bool)

(assert (= bs!1231635 d!1706904))

(declare-fun m!6349370 () Bool)

(assert (=> bs!1231635 m!6349370))

(assert (=> b!5311803 d!1706904))

(declare-fun call!378782 () (InoxSet Context!8698))

(declare-fun b!5312292 () Bool)

(declare-fun e!3300983 () (InoxSet Context!8698))

(assert (=> b!5312292 (= e!3300983 ((_ map or) call!378782 (derivationStepZipperUp!337 (Context!8699 (t!374400 (exprs!4849 (Context!8699 (Cons!61071 (h!67519 (exprs!4849 (h!67520 zl!343))) (t!374400 (exprs!4849 (h!67520 zl!343)))))))) (h!67518 s!2326))))))

(declare-fun b!5312293 () Bool)

(declare-fun e!3300984 () (InoxSet Context!8698))

(assert (=> b!5312293 (= e!3300984 ((as const (Array Context!8698 Bool)) false))))

(declare-fun b!5312294 () Bool)

(declare-fun e!3300982 () Bool)

(assert (=> b!5312294 (= e!3300982 (nullable!5134 (h!67519 (exprs!4849 (Context!8699 (Cons!61071 (h!67519 (exprs!4849 (h!67520 zl!343))) (t!374400 (exprs!4849 (h!67520 zl!343)))))))))))

(declare-fun d!1706906 () Bool)

(declare-fun c!922833 () Bool)

(assert (=> d!1706906 (= c!922833 e!3300982)))

(declare-fun res!2253664 () Bool)

(assert (=> d!1706906 (=> (not res!2253664) (not e!3300982))))

(assert (=> d!1706906 (= res!2253664 ((_ is Cons!61071) (exprs!4849 (Context!8699 (Cons!61071 (h!67519 (exprs!4849 (h!67520 zl!343))) (t!374400 (exprs!4849 (h!67520 zl!343))))))))))

(assert (=> d!1706906 (= (derivationStepZipperUp!337 (Context!8699 (Cons!61071 (h!67519 (exprs!4849 (h!67520 zl!343))) (t!374400 (exprs!4849 (h!67520 zl!343))))) (h!67518 s!2326)) e!3300983)))

(declare-fun b!5312295 () Bool)

(assert (=> b!5312295 (= e!3300984 call!378782)))

(declare-fun bm!378777 () Bool)

(assert (=> bm!378777 (= call!378782 (derivationStepZipperDown!413 (h!67519 (exprs!4849 (Context!8699 (Cons!61071 (h!67519 (exprs!4849 (h!67520 zl!343))) (t!374400 (exprs!4849 (h!67520 zl!343))))))) (Context!8699 (t!374400 (exprs!4849 (Context!8699 (Cons!61071 (h!67519 (exprs!4849 (h!67520 zl!343))) (t!374400 (exprs!4849 (h!67520 zl!343)))))))) (h!67518 s!2326)))))

(declare-fun b!5312296 () Bool)

(assert (=> b!5312296 (= e!3300983 e!3300984)))

(declare-fun c!922834 () Bool)

(assert (=> b!5312296 (= c!922834 ((_ is Cons!61071) (exprs!4849 (Context!8699 (Cons!61071 (h!67519 (exprs!4849 (h!67520 zl!343))) (t!374400 (exprs!4849 (h!67520 zl!343))))))))))

(assert (= (and d!1706906 res!2253664) b!5312294))

(assert (= (and d!1706906 c!922833) b!5312292))

(assert (= (and d!1706906 (not c!922833)) b!5312296))

(assert (= (and b!5312296 c!922834) b!5312295))

(assert (= (and b!5312296 (not c!922834)) b!5312293))

(assert (= (or b!5312292 b!5312295) bm!378777))

(declare-fun m!6349372 () Bool)

(assert (=> b!5312292 m!6349372))

(declare-fun m!6349374 () Bool)

(assert (=> b!5312294 m!6349374))

(declare-fun m!6349376 () Bool)

(assert (=> bm!378777 m!6349376))

(assert (=> b!5311803 d!1706906))

(declare-fun d!1706908 () Bool)

(assert (=> d!1706908 (= (flatMap!692 z!1189 lambda!270643) (choose!39739 z!1189 lambda!270643))))

(declare-fun bs!1231636 () Bool)

(assert (= bs!1231636 d!1706908))

(declare-fun m!6349378 () Bool)

(assert (=> bs!1231636 m!6349378))

(assert (=> b!5311803 d!1706908))

(declare-fun bm!378791 () Bool)

(declare-fun call!378801 () (InoxSet Context!8698))

(declare-fun call!378800 () (InoxSet Context!8698))

(assert (=> bm!378791 (= call!378801 call!378800)))

(declare-fun bm!378792 () Bool)

(declare-fun call!378797 () List!61195)

(declare-fun call!378799 () List!61195)

(assert (=> bm!378792 (= call!378797 call!378799)))

(declare-fun b!5312363 () Bool)

(declare-fun e!3301023 () (InoxSet Context!8698))

(declare-fun call!378798 () (InoxSet Context!8698))

(declare-fun call!378796 () (InoxSet Context!8698))

(assert (=> b!5312363 (= e!3301023 ((_ map or) call!378798 call!378796))))

(declare-fun b!5312364 () Bool)

(declare-fun c!922863 () Bool)

(assert (=> b!5312364 (= c!922863 ((_ is Star!14965) (h!67519 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun e!3301024 () (InoxSet Context!8698))

(declare-fun e!3301027 () (InoxSet Context!8698))

(assert (=> b!5312364 (= e!3301024 e!3301027)))

(declare-fun d!1706910 () Bool)

(declare-fun c!922861 () Bool)

(assert (=> d!1706910 (= c!922861 (and ((_ is ElementMatch!14965) (h!67519 (exprs!4849 (h!67520 zl!343)))) (= (c!922685 (h!67519 (exprs!4849 (h!67520 zl!343)))) (h!67518 s!2326))))))

(declare-fun e!3301022 () (InoxSet Context!8698))

(assert (=> d!1706910 (= (derivationStepZipperDown!413 (h!67519 (exprs!4849 (h!67520 zl!343))) lt!2170335 (h!67518 s!2326)) e!3301022)))

(declare-fun b!5312365 () Bool)

(assert (=> b!5312365 (= e!3301027 call!378801)))

(declare-fun bm!378793 () Bool)

(declare-fun c!922860 () Bool)

(declare-fun c!922862 () Bool)

(declare-fun $colon$colon!1386 (List!61195 Regex!14965) List!61195)

(assert (=> bm!378793 (= call!378799 ($colon$colon!1386 (exprs!4849 lt!2170335) (ite (or c!922862 c!922860) (regTwo!30442 (h!67519 (exprs!4849 (h!67520 zl!343)))) (h!67519 (exprs!4849 (h!67520 zl!343))))))))

(declare-fun b!5312366 () Bool)

(declare-fun e!3301025 () (InoxSet Context!8698))

(assert (=> b!5312366 (= e!3301025 e!3301024)))

(assert (=> b!5312366 (= c!922860 ((_ is Concat!23810) (h!67519 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun b!5312367 () Bool)

(declare-fun e!3301026 () Bool)

(assert (=> b!5312367 (= e!3301026 (nullable!5134 (regOne!30442 (h!67519 (exprs!4849 (h!67520 zl!343))))))))

(declare-fun b!5312368 () Bool)

(assert (=> b!5312368 (= e!3301022 (store ((as const (Array Context!8698 Bool)) false) lt!2170335 true))))

(declare-fun bm!378794 () Bool)

(assert (=> bm!378794 (= call!378800 call!378796)))

(declare-fun bm!378795 () Bool)

(declare-fun c!922864 () Bool)

(assert (=> bm!378795 (= call!378796 (derivationStepZipperDown!413 (ite c!922864 (regTwo!30443 (h!67519 (exprs!4849 (h!67520 zl!343)))) (ite c!922862 (regTwo!30442 (h!67519 (exprs!4849 (h!67520 zl!343)))) (ite c!922860 (regOne!30442 (h!67519 (exprs!4849 (h!67520 zl!343)))) (reg!15294 (h!67519 (exprs!4849 (h!67520 zl!343))))))) (ite (or c!922864 c!922862) lt!2170335 (Context!8699 call!378797)) (h!67518 s!2326)))))

(declare-fun b!5312369 () Bool)

(assert (=> b!5312369 (= e!3301022 e!3301023)))

(assert (=> b!5312369 (= c!922864 ((_ is Union!14965) (h!67519 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun b!5312370 () Bool)

(assert (=> b!5312370 (= e!3301025 ((_ map or) call!378798 call!378800))))

(declare-fun b!5312371 () Bool)

(assert (=> b!5312371 (= e!3301024 call!378801)))

(declare-fun b!5312372 () Bool)

(assert (=> b!5312372 (= e!3301027 ((as const (Array Context!8698 Bool)) false))))

(declare-fun bm!378796 () Bool)

(assert (=> bm!378796 (= call!378798 (derivationStepZipperDown!413 (ite c!922864 (regOne!30443 (h!67519 (exprs!4849 (h!67520 zl!343)))) (regOne!30442 (h!67519 (exprs!4849 (h!67520 zl!343))))) (ite c!922864 lt!2170335 (Context!8699 call!378799)) (h!67518 s!2326)))))

(declare-fun b!5312373 () Bool)

(assert (=> b!5312373 (= c!922862 e!3301026)))

(declare-fun res!2253681 () Bool)

(assert (=> b!5312373 (=> (not res!2253681) (not e!3301026))))

(assert (=> b!5312373 (= res!2253681 ((_ is Concat!23810) (h!67519 (exprs!4849 (h!67520 zl!343)))))))

(assert (=> b!5312373 (= e!3301023 e!3301025)))

(assert (= (and d!1706910 c!922861) b!5312368))

(assert (= (and d!1706910 (not c!922861)) b!5312369))

(assert (= (and b!5312369 c!922864) b!5312363))

(assert (= (and b!5312369 (not c!922864)) b!5312373))

(assert (= (and b!5312373 res!2253681) b!5312367))

(assert (= (and b!5312373 c!922862) b!5312370))

(assert (= (and b!5312373 (not c!922862)) b!5312366))

(assert (= (and b!5312366 c!922860) b!5312371))

(assert (= (and b!5312366 (not c!922860)) b!5312364))

(assert (= (and b!5312364 c!922863) b!5312365))

(assert (= (and b!5312364 (not c!922863)) b!5312372))

(assert (= (or b!5312371 b!5312365) bm!378792))

(assert (= (or b!5312371 b!5312365) bm!378791))

(assert (= (or b!5312370 bm!378792) bm!378793))

(assert (= (or b!5312370 bm!378791) bm!378794))

(assert (= (or b!5312363 bm!378794) bm!378795))

(assert (= (or b!5312363 b!5312370) bm!378796))

(declare-fun m!6349410 () Bool)

(assert (=> b!5312368 m!6349410))

(declare-fun m!6349412 () Bool)

(assert (=> bm!378795 m!6349412))

(declare-fun m!6349414 () Bool)

(assert (=> b!5312367 m!6349414))

(declare-fun m!6349416 () Bool)

(assert (=> bm!378793 m!6349416))

(declare-fun m!6349418 () Bool)

(assert (=> bm!378796 m!6349418))

(assert (=> b!5311803 d!1706910))

(declare-fun b!5312374 () Bool)

(declare-fun call!378802 () (InoxSet Context!8698))

(declare-fun e!3301029 () (InoxSet Context!8698))

(assert (=> b!5312374 (= e!3301029 ((_ map or) call!378802 (derivationStepZipperUp!337 (Context!8699 (t!374400 (exprs!4849 (h!67520 zl!343)))) (h!67518 s!2326))))))

(declare-fun b!5312375 () Bool)

(declare-fun e!3301030 () (InoxSet Context!8698))

(assert (=> b!5312375 (= e!3301030 ((as const (Array Context!8698 Bool)) false))))

(declare-fun b!5312376 () Bool)

(declare-fun e!3301028 () Bool)

(assert (=> b!5312376 (= e!3301028 (nullable!5134 (h!67519 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun d!1706918 () Bool)

(declare-fun c!922865 () Bool)

(assert (=> d!1706918 (= c!922865 e!3301028)))

(declare-fun res!2253682 () Bool)

(assert (=> d!1706918 (=> (not res!2253682) (not e!3301028))))

(assert (=> d!1706918 (= res!2253682 ((_ is Cons!61071) (exprs!4849 (h!67520 zl!343))))))

(assert (=> d!1706918 (= (derivationStepZipperUp!337 (h!67520 zl!343) (h!67518 s!2326)) e!3301029)))

(declare-fun b!5312377 () Bool)

(assert (=> b!5312377 (= e!3301030 call!378802)))

(declare-fun bm!378797 () Bool)

(assert (=> bm!378797 (= call!378802 (derivationStepZipperDown!413 (h!67519 (exprs!4849 (h!67520 zl!343))) (Context!8699 (t!374400 (exprs!4849 (h!67520 zl!343)))) (h!67518 s!2326)))))

(declare-fun b!5312378 () Bool)

(assert (=> b!5312378 (= e!3301029 e!3301030)))

(declare-fun c!922866 () Bool)

(assert (=> b!5312378 (= c!922866 ((_ is Cons!61071) (exprs!4849 (h!67520 zl!343))))))

(assert (= (and d!1706918 res!2253682) b!5312376))

(assert (= (and d!1706918 c!922865) b!5312374))

(assert (= (and d!1706918 (not c!922865)) b!5312378))

(assert (= (and b!5312378 c!922866) b!5312377))

(assert (= (and b!5312378 (not c!922866)) b!5312375))

(assert (= (or b!5312374 b!5312377) bm!378797))

(declare-fun m!6349420 () Bool)

(assert (=> b!5312374 m!6349420))

(assert (=> b!5312376 m!6348880))

(declare-fun m!6349422 () Bool)

(assert (=> bm!378797 m!6349422))

(assert (=> b!5311803 d!1706918))

(declare-fun d!1706920 () Bool)

(assert (=> d!1706920 (= (flatMap!692 z!1189 lambda!270643) (dynLambda!24138 lambda!270643 (h!67520 zl!343)))))

(declare-fun lt!2170483 () Unit!153378)

(assert (=> d!1706920 (= lt!2170483 (choose!39740 z!1189 (h!67520 zl!343) lambda!270643))))

(assert (=> d!1706920 (= z!1189 (store ((as const (Array Context!8698 Bool)) false) (h!67520 zl!343) true))))

(assert (=> d!1706920 (= (lemmaFlatMapOnSingletonSet!224 z!1189 (h!67520 zl!343) lambda!270643) lt!2170483)))

(declare-fun b_lambda!204435 () Bool)

(assert (=> (not b_lambda!204435) (not d!1706920)))

(declare-fun bs!1231645 () Bool)

(assert (= bs!1231645 d!1706920))

(assert (=> bs!1231645 m!6348874))

(declare-fun m!6349424 () Bool)

(assert (=> bs!1231645 m!6349424))

(declare-fun m!6349426 () Bool)

(assert (=> bs!1231645 m!6349426))

(declare-fun m!6349428 () Bool)

(assert (=> bs!1231645 m!6349428))

(assert (=> b!5311803 d!1706920))

(declare-fun d!1706922 () Bool)

(declare-fun c!922867 () Bool)

(assert (=> d!1706922 (= c!922867 (isEmpty!33037 (t!374399 s!2326)))))

(declare-fun e!3301031 () Bool)

(assert (=> d!1706922 (= (matchZipper!1209 lt!2170358 (t!374399 s!2326)) e!3301031)))

(declare-fun b!5312379 () Bool)

(assert (=> b!5312379 (= e!3301031 (nullableZipper!1335 lt!2170358))))

(declare-fun b!5312380 () Bool)

(assert (=> b!5312380 (= e!3301031 (matchZipper!1209 (derivationStepZipper!1208 lt!2170358 (head!11388 (t!374399 s!2326))) (tail!10485 (t!374399 s!2326))))))

(assert (= (and d!1706922 c!922867) b!5312379))

(assert (= (and d!1706922 (not c!922867)) b!5312380))

(assert (=> d!1706922 m!6348966))

(declare-fun m!6349430 () Bool)

(assert (=> b!5312379 m!6349430))

(assert (=> b!5312380 m!6348970))

(assert (=> b!5312380 m!6348970))

(declare-fun m!6349432 () Bool)

(assert (=> b!5312380 m!6349432))

(assert (=> b!5312380 m!6348974))

(assert (=> b!5312380 m!6349432))

(assert (=> b!5312380 m!6348974))

(declare-fun m!6349434 () Bool)

(assert (=> b!5312380 m!6349434))

(assert (=> b!5311782 d!1706922))

(declare-fun d!1706924 () Bool)

(declare-fun lt!2170489 () Regex!14965)

(assert (=> d!1706924 (validRegex!6701 lt!2170489)))

(assert (=> d!1706924 (= lt!2170489 (generalisedUnion!894 (unfocusZipperList!407 zl!343)))))

(assert (=> d!1706924 (= (unfocusZipper!707 zl!343) lt!2170489)))

(declare-fun bs!1231647 () Bool)

(assert (= bs!1231647 d!1706924))

(declare-fun m!6349438 () Bool)

(assert (=> bs!1231647 m!6349438))

(assert (=> bs!1231647 m!6348800))

(assert (=> bs!1231647 m!6348800))

(assert (=> bs!1231647 m!6348802))

(assert (=> b!5311787 d!1706924))

(declare-fun d!1706928 () Bool)

(assert (=> d!1706928 (= (isEmpty!33035 (t!374400 (exprs!4849 (h!67520 zl!343)))) ((_ is Nil!61071) (t!374400 (exprs!4849 (h!67520 zl!343)))))))

(assert (=> b!5311786 d!1706928))

(declare-fun b!5312424 () Bool)

(declare-fun e!3301065 () Bool)

(declare-fun call!378812 () Bool)

(assert (=> b!5312424 (= e!3301065 call!378812)))

(declare-fun b!5312425 () Bool)

(declare-fun e!3301064 () Bool)

(declare-fun e!3301063 () Bool)

(assert (=> b!5312425 (= e!3301064 e!3301063)))

(declare-fun c!922879 () Bool)

(assert (=> b!5312425 (= c!922879 ((_ is Star!14965) lt!2170360))))

(declare-fun bm!378805 () Bool)

(declare-fun c!922878 () Bool)

(assert (=> bm!378805 (= call!378812 (validRegex!6701 (ite c!922878 (regTwo!30443 lt!2170360) (regTwo!30442 lt!2170360))))))

(declare-fun b!5312426 () Bool)

(declare-fun res!2253710 () Bool)

(declare-fun e!3301059 () Bool)

(assert (=> b!5312426 (=> res!2253710 e!3301059)))

(assert (=> b!5312426 (= res!2253710 (not ((_ is Concat!23810) lt!2170360)))))

(declare-fun e!3301062 () Bool)

(assert (=> b!5312426 (= e!3301062 e!3301059)))

(declare-fun b!5312427 () Bool)

(declare-fun e!3301060 () Bool)

(assert (=> b!5312427 (= e!3301059 e!3301060)))

(declare-fun res!2253706 () Bool)

(assert (=> b!5312427 (=> (not res!2253706) (not e!3301060))))

(declare-fun call!378811 () Bool)

(assert (=> b!5312427 (= res!2253706 call!378811)))

(declare-fun bm!378806 () Bool)

(declare-fun call!378810 () Bool)

(assert (=> bm!378806 (= call!378811 call!378810)))

(declare-fun b!5312428 () Bool)

(declare-fun e!3301061 () Bool)

(assert (=> b!5312428 (= e!3301061 call!378810)))

(declare-fun b!5312429 () Bool)

(assert (=> b!5312429 (= e!3301060 call!378812)))

(declare-fun b!5312430 () Bool)

(assert (=> b!5312430 (= e!3301063 e!3301061)))

(declare-fun res!2253708 () Bool)

(assert (=> b!5312430 (= res!2253708 (not (nullable!5134 (reg!15294 lt!2170360))))))

(assert (=> b!5312430 (=> (not res!2253708) (not e!3301061))))

(declare-fun d!1706930 () Bool)

(declare-fun res!2253707 () Bool)

(assert (=> d!1706930 (=> res!2253707 e!3301064)))

(assert (=> d!1706930 (= res!2253707 ((_ is ElementMatch!14965) lt!2170360))))

(assert (=> d!1706930 (= (validRegex!6701 lt!2170360) e!3301064)))

(declare-fun b!5312431 () Bool)

(declare-fun res!2253709 () Bool)

(assert (=> b!5312431 (=> (not res!2253709) (not e!3301065))))

(assert (=> b!5312431 (= res!2253709 call!378811)))

(assert (=> b!5312431 (= e!3301062 e!3301065)))

(declare-fun b!5312432 () Bool)

(assert (=> b!5312432 (= e!3301063 e!3301062)))

(assert (=> b!5312432 (= c!922878 ((_ is Union!14965) lt!2170360))))

(declare-fun bm!378807 () Bool)

(assert (=> bm!378807 (= call!378810 (validRegex!6701 (ite c!922879 (reg!15294 lt!2170360) (ite c!922878 (regOne!30443 lt!2170360) (regOne!30442 lt!2170360)))))))

(assert (= (and d!1706930 (not res!2253707)) b!5312425))

(assert (= (and b!5312425 c!922879) b!5312430))

(assert (= (and b!5312425 (not c!922879)) b!5312432))

(assert (= (and b!5312430 res!2253708) b!5312428))

(assert (= (and b!5312432 c!922878) b!5312431))

(assert (= (and b!5312432 (not c!922878)) b!5312426))

(assert (= (and b!5312431 res!2253709) b!5312424))

(assert (= (and b!5312426 (not res!2253710)) b!5312427))

(assert (= (and b!5312427 res!2253706) b!5312429))

(assert (= (or b!5312424 b!5312429) bm!378805))

(assert (= (or b!5312431 b!5312427) bm!378806))

(assert (= (or b!5312428 bm!378806) bm!378807))

(declare-fun m!6349476 () Bool)

(assert (=> bm!378805 m!6349476))

(declare-fun m!6349478 () Bool)

(assert (=> b!5312430 m!6349478))

(declare-fun m!6349480 () Bool)

(assert (=> bm!378807 m!6349480))

(assert (=> b!5311806 d!1706930))

(declare-fun b!5312437 () Bool)

(declare-fun e!3301069 () Bool)

(declare-fun lt!2170497 () Bool)

(assert (=> b!5312437 (= e!3301069 (not lt!2170497))))

(declare-fun b!5312438 () Bool)

(declare-fun res!2253717 () Bool)

(declare-fun e!3301071 () Bool)

(assert (=> b!5312438 (=> (not res!2253717) (not e!3301071))))

(assert (=> b!5312438 (= res!2253717 (isEmpty!33037 (tail!10485 s!2326)))))

(declare-fun b!5312439 () Bool)

(declare-fun e!3301070 () Bool)

(declare-fun call!378813 () Bool)

(assert (=> b!5312439 (= e!3301070 (= lt!2170497 call!378813))))

(declare-fun b!5312440 () Bool)

(declare-fun e!3301074 () Bool)

(assert (=> b!5312440 (= e!3301074 (nullable!5134 lt!2170360))))

(declare-fun b!5312442 () Bool)

(assert (=> b!5312442 (= e!3301074 (matchR!7150 (derivativeStep!4157 lt!2170360 (head!11388 s!2326)) (tail!10485 s!2326)))))

(declare-fun b!5312443 () Bool)

(declare-fun res!2253713 () Bool)

(declare-fun e!3301068 () Bool)

(assert (=> b!5312443 (=> res!2253713 e!3301068)))

(assert (=> b!5312443 (= res!2253713 (not (isEmpty!33037 (tail!10485 s!2326))))))

(declare-fun b!5312444 () Bool)

(assert (=> b!5312444 (= e!3301071 (= (head!11388 s!2326) (c!922685 lt!2170360)))))

(declare-fun b!5312445 () Bool)

(declare-fun e!3301072 () Bool)

(assert (=> b!5312445 (= e!3301072 e!3301068)))

(declare-fun res!2253712 () Bool)

(assert (=> b!5312445 (=> res!2253712 e!3301068)))

(assert (=> b!5312445 (= res!2253712 call!378813)))

(declare-fun b!5312446 () Bool)

(declare-fun e!3301073 () Bool)

(assert (=> b!5312446 (= e!3301073 e!3301072)))

(declare-fun res!2253718 () Bool)

(assert (=> b!5312446 (=> (not res!2253718) (not e!3301072))))

(assert (=> b!5312446 (= res!2253718 (not lt!2170497))))

(declare-fun bm!378808 () Bool)

(assert (=> bm!378808 (= call!378813 (isEmpty!33037 s!2326))))

(declare-fun d!1706942 () Bool)

(assert (=> d!1706942 e!3301070))

(declare-fun c!922883 () Bool)

(assert (=> d!1706942 (= c!922883 ((_ is EmptyExpr!14965) lt!2170360))))

(assert (=> d!1706942 (= lt!2170497 e!3301074)))

(declare-fun c!922884 () Bool)

(assert (=> d!1706942 (= c!922884 (isEmpty!33037 s!2326))))

(assert (=> d!1706942 (validRegex!6701 lt!2170360)))

(assert (=> d!1706942 (= (matchR!7150 lt!2170360 s!2326) lt!2170497)))

(declare-fun b!5312441 () Bool)

(declare-fun res!2253715 () Bool)

(assert (=> b!5312441 (=> res!2253715 e!3301073)))

(assert (=> b!5312441 (= res!2253715 (not ((_ is ElementMatch!14965) lt!2170360)))))

(assert (=> b!5312441 (= e!3301069 e!3301073)))

(declare-fun b!5312447 () Bool)

(assert (=> b!5312447 (= e!3301070 e!3301069)))

(declare-fun c!922882 () Bool)

(assert (=> b!5312447 (= c!922882 ((_ is EmptyLang!14965) lt!2170360))))

(declare-fun b!5312448 () Bool)

(declare-fun res!2253714 () Bool)

(assert (=> b!5312448 (=> (not res!2253714) (not e!3301071))))

(assert (=> b!5312448 (= res!2253714 (not call!378813))))

(declare-fun b!5312449 () Bool)

(declare-fun res!2253716 () Bool)

(assert (=> b!5312449 (=> res!2253716 e!3301073)))

(assert (=> b!5312449 (= res!2253716 e!3301071)))

(declare-fun res!2253711 () Bool)

(assert (=> b!5312449 (=> (not res!2253711) (not e!3301071))))

(assert (=> b!5312449 (= res!2253711 lt!2170497)))

(declare-fun b!5312450 () Bool)

(assert (=> b!5312450 (= e!3301068 (not (= (head!11388 s!2326) (c!922685 lt!2170360))))))

(assert (= (and d!1706942 c!922884) b!5312440))

(assert (= (and d!1706942 (not c!922884)) b!5312442))

(assert (= (and d!1706942 c!922883) b!5312439))

(assert (= (and d!1706942 (not c!922883)) b!5312447))

(assert (= (and b!5312447 c!922882) b!5312437))

(assert (= (and b!5312447 (not c!922882)) b!5312441))

(assert (= (and b!5312441 (not res!2253715)) b!5312449))

(assert (= (and b!5312449 res!2253711) b!5312448))

(assert (= (and b!5312448 res!2253714) b!5312438))

(assert (= (and b!5312438 res!2253717) b!5312444))

(assert (= (and b!5312449 (not res!2253716)) b!5312446))

(assert (= (and b!5312446 res!2253718) b!5312445))

(assert (= (and b!5312445 (not res!2253712)) b!5312443))

(assert (= (and b!5312443 (not res!2253713)) b!5312450))

(assert (= (or b!5312439 b!5312445 b!5312448) bm!378808))

(assert (=> d!1706942 m!6349050))

(assert (=> d!1706942 m!6348810))

(assert (=> b!5312443 m!6349054))

(assert (=> b!5312443 m!6349054))

(assert (=> b!5312443 m!6349056))

(assert (=> bm!378808 m!6349050))

(assert (=> b!5312442 m!6349058))

(assert (=> b!5312442 m!6349058))

(declare-fun m!6349490 () Bool)

(assert (=> b!5312442 m!6349490))

(assert (=> b!5312442 m!6349054))

(assert (=> b!5312442 m!6349490))

(assert (=> b!5312442 m!6349054))

(declare-fun m!6349492 () Bool)

(assert (=> b!5312442 m!6349492))

(assert (=> b!5312438 m!6349054))

(assert (=> b!5312438 m!6349054))

(assert (=> b!5312438 m!6349056))

(assert (=> b!5312444 m!6349058))

(assert (=> b!5312450 m!6349058))

(declare-fun m!6349494 () Bool)

(assert (=> b!5312440 m!6349494))

(assert (=> b!5311806 d!1706942))

(declare-fun d!1706948 () Bool)

(assert (=> d!1706948 (= (matchR!7150 (Concat!23810 (Concat!23810 (regOne!30442 (regOne!30442 r!7292)) (regTwo!30442 (regOne!30442 r!7292))) lt!2170370) s!2326) (matchR!7150 (Concat!23810 (regOne!30442 (regOne!30442 r!7292)) (Concat!23810 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370)) s!2326))))

(declare-fun lt!2170500 () Unit!153378)

(declare-fun choose!39753 (Regex!14965 Regex!14965 Regex!14965 List!61194) Unit!153378)

(assert (=> d!1706948 (= lt!2170500 (choose!39753 (regOne!30442 (regOne!30442 r!7292)) (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 s!2326))))

(declare-fun e!3301091 () Bool)

(assert (=> d!1706948 e!3301091))

(declare-fun res!2253729 () Bool)

(assert (=> d!1706948 (=> (not res!2253729) (not e!3301091))))

(assert (=> d!1706948 (= res!2253729 (validRegex!6701 (regOne!30442 (regOne!30442 r!7292))))))

(assert (=> d!1706948 (= (lemmaConcatAssociative!6 (regOne!30442 (regOne!30442 r!7292)) (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 s!2326) lt!2170500)))

(declare-fun b!5312477 () Bool)

(declare-fun res!2253730 () Bool)

(assert (=> b!5312477 (=> (not res!2253730) (not e!3301091))))

(assert (=> b!5312477 (= res!2253730 (validRegex!6701 (regTwo!30442 (regOne!30442 r!7292))))))

(declare-fun b!5312478 () Bool)

(assert (=> b!5312478 (= e!3301091 (validRegex!6701 lt!2170370))))

(assert (= (and d!1706948 res!2253729) b!5312477))

(assert (= (and b!5312477 res!2253730) b!5312478))

(declare-fun m!6349496 () Bool)

(assert (=> d!1706948 m!6349496))

(declare-fun m!6349498 () Bool)

(assert (=> d!1706948 m!6349498))

(declare-fun m!6349500 () Bool)

(assert (=> d!1706948 m!6349500))

(declare-fun m!6349502 () Bool)

(assert (=> d!1706948 m!6349502))

(declare-fun m!6349504 () Bool)

(assert (=> b!5312477 m!6349504))

(declare-fun m!6349506 () Bool)

(assert (=> b!5312478 m!6349506))

(assert (=> b!5311806 d!1706948))

(declare-fun d!1706950 () Bool)

(declare-fun c!922893 () Bool)

(assert (=> d!1706950 (= c!922893 (isEmpty!33037 (t!374399 s!2326)))))

(declare-fun e!3301092 () Bool)

(assert (=> d!1706950 (= (matchZipper!1209 lt!2170363 (t!374399 s!2326)) e!3301092)))

(declare-fun b!5312479 () Bool)

(assert (=> b!5312479 (= e!3301092 (nullableZipper!1335 lt!2170363))))

(declare-fun b!5312480 () Bool)

(assert (=> b!5312480 (= e!3301092 (matchZipper!1209 (derivationStepZipper!1208 lt!2170363 (head!11388 (t!374399 s!2326))) (tail!10485 (t!374399 s!2326))))))

(assert (= (and d!1706950 c!922893) b!5312479))

(assert (= (and d!1706950 (not c!922893)) b!5312480))

(assert (=> d!1706950 m!6348966))

(declare-fun m!6349508 () Bool)

(assert (=> b!5312479 m!6349508))

(assert (=> b!5312480 m!6348970))

(assert (=> b!5312480 m!6348970))

(declare-fun m!6349510 () Bool)

(assert (=> b!5312480 m!6349510))

(assert (=> b!5312480 m!6348974))

(assert (=> b!5312480 m!6349510))

(assert (=> b!5312480 m!6348974))

(declare-fun m!6349512 () Bool)

(assert (=> b!5312480 m!6349512))

(assert (=> b!5311785 d!1706950))

(declare-fun d!1706952 () Bool)

(declare-fun c!922894 () Bool)

(assert (=> d!1706952 (= c!922894 (isEmpty!33037 s!2326))))

(declare-fun e!3301093 () Bool)

(assert (=> d!1706952 (= (matchZipper!1209 lt!2170343 s!2326) e!3301093)))

(declare-fun b!5312481 () Bool)

(assert (=> b!5312481 (= e!3301093 (nullableZipper!1335 lt!2170343))))

(declare-fun b!5312482 () Bool)

(assert (=> b!5312482 (= e!3301093 (matchZipper!1209 (derivationStepZipper!1208 lt!2170343 (head!11388 s!2326)) (tail!10485 s!2326)))))

(assert (= (and d!1706952 c!922894) b!5312481))

(assert (= (and d!1706952 (not c!922894)) b!5312482))

(assert (=> d!1706952 m!6349050))

(declare-fun m!6349514 () Bool)

(assert (=> b!5312481 m!6349514))

(assert (=> b!5312482 m!6349058))

(assert (=> b!5312482 m!6349058))

(declare-fun m!6349516 () Bool)

(assert (=> b!5312482 m!6349516))

(assert (=> b!5312482 m!6349054))

(assert (=> b!5312482 m!6349516))

(assert (=> b!5312482 m!6349054))

(declare-fun m!6349518 () Bool)

(assert (=> b!5312482 m!6349518))

(assert (=> b!5311810 d!1706952))

(declare-fun d!1706954 () Bool)

(declare-fun c!922895 () Bool)

(assert (=> d!1706954 (= c!922895 (isEmpty!33037 s!2326))))

(declare-fun e!3301096 () Bool)

(assert (=> d!1706954 (= (matchZipper!1209 lt!2170361 s!2326) e!3301096)))

(declare-fun b!5312485 () Bool)

(assert (=> b!5312485 (= e!3301096 (nullableZipper!1335 lt!2170361))))

(declare-fun b!5312486 () Bool)

(assert (=> b!5312486 (= e!3301096 (matchZipper!1209 (derivationStepZipper!1208 lt!2170361 (head!11388 s!2326)) (tail!10485 s!2326)))))

(assert (= (and d!1706954 c!922895) b!5312485))

(assert (= (and d!1706954 (not c!922895)) b!5312486))

(assert (=> d!1706954 m!6349050))

(declare-fun m!6349520 () Bool)

(assert (=> b!5312485 m!6349520))

(assert (=> b!5312486 m!6349058))

(assert (=> b!5312486 m!6349058))

(declare-fun m!6349522 () Bool)

(assert (=> b!5312486 m!6349522))

(assert (=> b!5312486 m!6349054))

(assert (=> b!5312486 m!6349522))

(assert (=> b!5312486 m!6349054))

(declare-fun m!6349524 () Bool)

(assert (=> b!5312486 m!6349524))

(assert (=> b!5311810 d!1706954))

(declare-fun b!5312491 () Bool)

(declare-fun res!2253739 () Bool)

(declare-fun e!3301099 () Bool)

(assert (=> b!5312491 (=> (not res!2253739) (not e!3301099))))

(declare-fun lt!2170503 () Option!15076)

(assert (=> b!5312491 (= res!2253739 (matchR!7150 lt!2170370 (_2!35467 (get!21004 lt!2170503))))))

(declare-fun b!5312492 () Bool)

(declare-fun lt!2170501 () Unit!153378)

(declare-fun lt!2170502 () Unit!153378)

(assert (=> b!5312492 (= lt!2170501 lt!2170502)))

(assert (=> b!5312492 (= (++!13316 (++!13316 Nil!61070 (Cons!61070 (h!67518 s!2326) Nil!61070)) (t!374399 s!2326)) s!2326)))

(assert (=> b!5312492 (= lt!2170502 (lemmaMoveElementToOtherListKeepsConcatEq!1731 Nil!61070 (h!67518 s!2326) (t!374399 s!2326) s!2326))))

(declare-fun e!3301100 () Option!15076)

(assert (=> b!5312492 (= e!3301100 (findConcatSeparation!1490 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 (++!13316 Nil!61070 (Cons!61070 (h!67518 s!2326) Nil!61070)) (t!374399 s!2326) s!2326))))

(declare-fun b!5312493 () Bool)

(assert (=> b!5312493 (= e!3301099 (= (++!13316 (_1!35467 (get!21004 lt!2170503)) (_2!35467 (get!21004 lt!2170503))) s!2326))))

(declare-fun b!5312494 () Bool)

(declare-fun res!2253741 () Bool)

(assert (=> b!5312494 (=> (not res!2253741) (not e!3301099))))

(assert (=> b!5312494 (= res!2253741 (matchR!7150 (regTwo!30442 (regOne!30442 r!7292)) (_1!35467 (get!21004 lt!2170503))))))

(declare-fun b!5312495 () Bool)

(assert (=> b!5312495 (= e!3301100 None!15075)))

(declare-fun b!5312496 () Bool)

(declare-fun e!3301101 () Bool)

(assert (=> b!5312496 (= e!3301101 (matchR!7150 lt!2170370 s!2326))))

(declare-fun b!5312497 () Bool)

(declare-fun e!3301098 () Bool)

(assert (=> b!5312497 (= e!3301098 (not (isDefined!11779 lt!2170503)))))

(declare-fun d!1706956 () Bool)

(assert (=> d!1706956 e!3301098))

(declare-fun res!2253740 () Bool)

(assert (=> d!1706956 (=> res!2253740 e!3301098)))

(assert (=> d!1706956 (= res!2253740 e!3301099)))

(declare-fun res!2253738 () Bool)

(assert (=> d!1706956 (=> (not res!2253738) (not e!3301099))))

(assert (=> d!1706956 (= res!2253738 (isDefined!11779 lt!2170503))))

(declare-fun e!3301097 () Option!15076)

(assert (=> d!1706956 (= lt!2170503 e!3301097)))

(declare-fun c!922897 () Bool)

(assert (=> d!1706956 (= c!922897 e!3301101)))

(declare-fun res!2253737 () Bool)

(assert (=> d!1706956 (=> (not res!2253737) (not e!3301101))))

(assert (=> d!1706956 (= res!2253737 (matchR!7150 (regTwo!30442 (regOne!30442 r!7292)) Nil!61070))))

(assert (=> d!1706956 (validRegex!6701 (regTwo!30442 (regOne!30442 r!7292)))))

(assert (=> d!1706956 (= (findConcatSeparation!1490 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 Nil!61070 s!2326 s!2326) lt!2170503)))

(declare-fun b!5312498 () Bool)

(assert (=> b!5312498 (= e!3301097 e!3301100)))

(declare-fun c!922896 () Bool)

(assert (=> b!5312498 (= c!922896 ((_ is Nil!61070) s!2326))))

(declare-fun b!5312499 () Bool)

(assert (=> b!5312499 (= e!3301097 (Some!15075 (tuple2!64329 Nil!61070 s!2326)))))

(assert (= (and d!1706956 res!2253737) b!5312496))

(assert (= (and d!1706956 c!922897) b!5312499))

(assert (= (and d!1706956 (not c!922897)) b!5312498))

(assert (= (and b!5312498 c!922896) b!5312495))

(assert (= (and b!5312498 (not c!922896)) b!5312492))

(assert (= (and d!1706956 res!2253738) b!5312494))

(assert (= (and b!5312494 res!2253741) b!5312491))

(assert (= (and b!5312491 res!2253739) b!5312493))

(assert (= (and d!1706956 (not res!2253740)) b!5312497))

(declare-fun m!6349526 () Bool)

(assert (=> b!5312497 m!6349526))

(declare-fun m!6349528 () Bool)

(assert (=> b!5312496 m!6349528))

(assert (=> b!5312492 m!6349176))

(assert (=> b!5312492 m!6349176))

(assert (=> b!5312492 m!6349178))

(assert (=> b!5312492 m!6349180))

(assert (=> b!5312492 m!6349176))

(declare-fun m!6349530 () Bool)

(assert (=> b!5312492 m!6349530))

(declare-fun m!6349532 () Bool)

(assert (=> b!5312493 m!6349532))

(declare-fun m!6349534 () Bool)

(assert (=> b!5312493 m!6349534))

(assert (=> d!1706956 m!6349526))

(declare-fun m!6349536 () Bool)

(assert (=> d!1706956 m!6349536))

(assert (=> d!1706956 m!6349504))

(assert (=> b!5312491 m!6349532))

(declare-fun m!6349538 () Bool)

(assert (=> b!5312491 m!6349538))

(assert (=> b!5312494 m!6349532))

(declare-fun m!6349540 () Bool)

(assert (=> b!5312494 m!6349540))

(assert (=> b!5311810 d!1706956))

(declare-fun bs!1231676 () Bool)

(declare-fun b!5312564 () Bool)

(assert (= bs!1231676 (and b!5312564 b!5311810)))

(declare-fun lambda!270714 () Int)

(assert (=> bs!1231676 (not (= lambda!270714 lambda!270647))))

(declare-fun bs!1231678 () Bool)

(assert (= bs!1231678 (and b!5312564 d!1706844)))

(assert (=> bs!1231678 (not (= lambda!270714 lambda!270682))))

(declare-fun bs!1231679 () Bool)

(assert (= bs!1231679 (and b!5312564 b!5311796)))

(assert (=> bs!1231679 (not (= lambda!270714 lambda!270641))))

(assert (=> bs!1231678 (not (= lambda!270714 lambda!270683))))

(assert (=> bs!1231676 (not (= lambda!270714 lambda!270646))))

(assert (=> bs!1231679 (not (= lambda!270714 lambda!270642))))

(assert (=> bs!1231676 (not (= lambda!270714 lambda!270644))))

(declare-fun bs!1231682 () Bool)

(assert (= bs!1231682 (and b!5312564 d!1706838)))

(assert (=> bs!1231682 (not (= lambda!270714 lambda!270677))))

(assert (=> bs!1231676 (not (= lambda!270714 lambda!270645))))

(assert (=> b!5312564 true))

(assert (=> b!5312564 true))

(declare-fun bs!1231684 () Bool)

(declare-fun b!5312560 () Bool)

(assert (= bs!1231684 (and b!5312560 b!5311810)))

(declare-fun lambda!270715 () Int)

(assert (=> bs!1231684 (= (and (= (regOne!30442 lt!2170350) (regTwo!30442 (regOne!30442 r!7292))) (= (regTwo!30442 lt!2170350) lt!2170370)) (= lambda!270715 lambda!270647))))

(declare-fun bs!1231686 () Bool)

(assert (= bs!1231686 (and b!5312560 d!1706844)))

(assert (=> bs!1231686 (not (= lambda!270715 lambda!270682))))

(declare-fun bs!1231688 () Bool)

(assert (= bs!1231688 (and b!5312560 b!5311796)))

(assert (=> bs!1231688 (not (= lambda!270715 lambda!270641))))

(assert (=> bs!1231686 (= (and (= (regOne!30442 lt!2170350) (regOne!30442 r!7292)) (= (regTwo!30442 lt!2170350) (regTwo!30442 r!7292))) (= lambda!270715 lambda!270683))))

(assert (=> bs!1231684 (not (= lambda!270715 lambda!270646))))

(assert (=> bs!1231688 (= (and (= (regOne!30442 lt!2170350) (regOne!30442 r!7292)) (= (regTwo!30442 lt!2170350) (regTwo!30442 r!7292))) (= lambda!270715 lambda!270642))))

(declare-fun bs!1231691 () Bool)

(assert (= bs!1231691 (and b!5312560 b!5312564)))

(assert (=> bs!1231691 (not (= lambda!270715 lambda!270714))))

(assert (=> bs!1231684 (not (= lambda!270715 lambda!270644))))

(declare-fun bs!1231694 () Bool)

(assert (= bs!1231694 (and b!5312560 d!1706838)))

(assert (=> bs!1231694 (not (= lambda!270715 lambda!270677))))

(assert (=> bs!1231684 (= (and (= (regOne!30442 lt!2170350) (regOne!30442 (regOne!30442 r!7292))) (= (regTwo!30442 lt!2170350) lt!2170350)) (= lambda!270715 lambda!270645))))

(assert (=> b!5312560 true))

(assert (=> b!5312560 true))

(declare-fun bm!378819 () Bool)

(declare-fun call!378825 () Bool)

(declare-fun c!922915 () Bool)

(assert (=> bm!378819 (= call!378825 (Exists!2146 (ite c!922915 lambda!270714 lambda!270715)))))

(declare-fun b!5312557 () Bool)

(declare-fun e!3301140 () Bool)

(declare-fun e!3301137 () Bool)

(assert (=> b!5312557 (= e!3301140 e!3301137)))

(assert (=> b!5312557 (= c!922915 ((_ is Star!14965) lt!2170350))))

(declare-fun b!5312558 () Bool)

(declare-fun e!3301139 () Bool)

(assert (=> b!5312558 (= e!3301140 e!3301139)))

(declare-fun res!2253769 () Bool)

(assert (=> b!5312558 (= res!2253769 (matchRSpec!2068 (regOne!30443 lt!2170350) s!2326))))

(assert (=> b!5312558 (=> res!2253769 e!3301139)))

(declare-fun b!5312559 () Bool)

(declare-fun res!2253768 () Bool)

(declare-fun e!3301136 () Bool)

(assert (=> b!5312559 (=> res!2253768 e!3301136)))

(declare-fun call!378824 () Bool)

(assert (=> b!5312559 (= res!2253768 call!378824)))

(assert (=> b!5312559 (= e!3301137 e!3301136)))

(declare-fun bm!378820 () Bool)

(assert (=> bm!378820 (= call!378824 (isEmpty!33037 s!2326))))

(assert (=> b!5312560 (= e!3301137 call!378825)))

(declare-fun b!5312561 () Bool)

(declare-fun c!922914 () Bool)

(assert (=> b!5312561 (= c!922914 ((_ is ElementMatch!14965) lt!2170350))))

(declare-fun e!3301138 () Bool)

(declare-fun e!3301135 () Bool)

(assert (=> b!5312561 (= e!3301138 e!3301135)))

(declare-fun b!5312562 () Bool)

(assert (=> b!5312562 (= e!3301139 (matchRSpec!2068 (regTwo!30443 lt!2170350) s!2326))))

(declare-fun b!5312563 () Bool)

(assert (=> b!5312563 (= e!3301135 (= s!2326 (Cons!61070 (c!922685 lt!2170350) Nil!61070)))))

(declare-fun d!1706958 () Bool)

(declare-fun c!922916 () Bool)

(assert (=> d!1706958 (= c!922916 ((_ is EmptyExpr!14965) lt!2170350))))

(declare-fun e!3301141 () Bool)

(assert (=> d!1706958 (= (matchRSpec!2068 lt!2170350 s!2326) e!3301141)))

(assert (=> b!5312564 (= e!3301136 call!378825)))

(declare-fun b!5312565 () Bool)

(assert (=> b!5312565 (= e!3301141 e!3301138)))

(declare-fun res!2253767 () Bool)

(assert (=> b!5312565 (= res!2253767 (not ((_ is EmptyLang!14965) lt!2170350)))))

(assert (=> b!5312565 (=> (not res!2253767) (not e!3301138))))

(declare-fun b!5312566 () Bool)

(declare-fun c!922917 () Bool)

(assert (=> b!5312566 (= c!922917 ((_ is Union!14965) lt!2170350))))

(assert (=> b!5312566 (= e!3301135 e!3301140)))

(declare-fun b!5312567 () Bool)

(assert (=> b!5312567 (= e!3301141 call!378824)))

(assert (= (and d!1706958 c!922916) b!5312567))

(assert (= (and d!1706958 (not c!922916)) b!5312565))

(assert (= (and b!5312565 res!2253767) b!5312561))

(assert (= (and b!5312561 c!922914) b!5312563))

(assert (= (and b!5312561 (not c!922914)) b!5312566))

(assert (= (and b!5312566 c!922917) b!5312558))

(assert (= (and b!5312566 (not c!922917)) b!5312557))

(assert (= (and b!5312558 (not res!2253769)) b!5312562))

(assert (= (and b!5312557 c!922915) b!5312559))

(assert (= (and b!5312557 (not c!922915)) b!5312560))

(assert (= (and b!5312559 (not res!2253768)) b!5312564))

(assert (= (or b!5312564 b!5312560) bm!378819))

(assert (= (or b!5312567 b!5312559) bm!378820))

(declare-fun m!6349582 () Bool)

(assert (=> bm!378819 m!6349582))

(declare-fun m!6349584 () Bool)

(assert (=> b!5312558 m!6349584))

(assert (=> bm!378820 m!6349050))

(declare-fun m!6349586 () Bool)

(assert (=> b!5312562 m!6349586))

(assert (=> b!5311810 d!1706958))

(declare-fun bs!1231721 () Bool)

(declare-fun d!1706976 () Bool)

(assert (= bs!1231721 (and d!1706976 d!1706816)))

(declare-fun lambda!270722 () Int)

(assert (=> bs!1231721 (= lambda!270722 lambda!270665)))

(declare-fun bs!1231722 () Bool)

(assert (= bs!1231722 (and d!1706976 d!1706822)))

(assert (=> bs!1231722 (= lambda!270722 lambda!270670)))

(declare-fun bs!1231723 () Bool)

(assert (= bs!1231723 (and d!1706976 d!1706898)))

(assert (=> bs!1231723 (= lambda!270722 lambda!270697)))

(declare-fun b!5312599 () Bool)

(declare-fun e!3301161 () Regex!14965)

(declare-fun e!3301163 () Regex!14965)

(assert (=> b!5312599 (= e!3301161 e!3301163)))

(declare-fun c!922930 () Bool)

(assert (=> b!5312599 (= c!922930 ((_ is Cons!61071) (t!374400 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun b!5312600 () Bool)

(declare-fun e!3301164 () Bool)

(declare-fun lt!2170511 () Regex!14965)

(declare-fun isEmptyExpr!871 (Regex!14965) Bool)

(assert (=> b!5312600 (= e!3301164 (isEmptyExpr!871 lt!2170511))))

(declare-fun b!5312601 () Bool)

(declare-fun e!3301166 () Bool)

(assert (=> b!5312601 (= e!3301166 (isEmpty!33035 (t!374400 (t!374400 (exprs!4849 (h!67520 zl!343))))))))

(declare-fun b!5312602 () Bool)

(declare-fun e!3301162 () Bool)

(declare-fun isConcat!394 (Regex!14965) Bool)

(assert (=> b!5312602 (= e!3301162 (isConcat!394 lt!2170511))))

(declare-fun b!5312603 () Bool)

(assert (=> b!5312603 (= e!3301163 (Concat!23810 (h!67519 (t!374400 (exprs!4849 (h!67520 zl!343)))) (generalisedConcat!634 (t!374400 (t!374400 (exprs!4849 (h!67520 zl!343)))))))))

(declare-fun b!5312604 () Bool)

(assert (=> b!5312604 (= e!3301164 e!3301162)))

(declare-fun c!922931 () Bool)

(assert (=> b!5312604 (= c!922931 (isEmpty!33035 (tail!10487 (t!374400 (exprs!4849 (h!67520 zl!343))))))))

(declare-fun b!5312605 () Bool)

(assert (=> b!5312605 (= e!3301161 (h!67519 (t!374400 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun e!3301165 () Bool)

(assert (=> d!1706976 e!3301165))

(declare-fun res!2253777 () Bool)

(assert (=> d!1706976 (=> (not res!2253777) (not e!3301165))))

(assert (=> d!1706976 (= res!2253777 (validRegex!6701 lt!2170511))))

(assert (=> d!1706976 (= lt!2170511 e!3301161)))

(declare-fun c!922933 () Bool)

(assert (=> d!1706976 (= c!922933 e!3301166)))

(declare-fun res!2253778 () Bool)

(assert (=> d!1706976 (=> (not res!2253778) (not e!3301166))))

(assert (=> d!1706976 (= res!2253778 ((_ is Cons!61071) (t!374400 (exprs!4849 (h!67520 zl!343)))))))

(assert (=> d!1706976 (forall!14385 (t!374400 (exprs!4849 (h!67520 zl!343))) lambda!270722)))

(assert (=> d!1706976 (= (generalisedConcat!634 (t!374400 (exprs!4849 (h!67520 zl!343)))) lt!2170511)))

(declare-fun b!5312606 () Bool)

(assert (=> b!5312606 (= e!3301165 e!3301164)))

(declare-fun c!922932 () Bool)

(assert (=> b!5312606 (= c!922932 (isEmpty!33035 (t!374400 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun b!5312607 () Bool)

(assert (=> b!5312607 (= e!3301162 (= lt!2170511 (head!11390 (t!374400 (exprs!4849 (h!67520 zl!343))))))))

(declare-fun b!5312608 () Bool)

(assert (=> b!5312608 (= e!3301163 EmptyExpr!14965)))

(assert (= (and d!1706976 res!2253778) b!5312601))

(assert (= (and d!1706976 c!922933) b!5312605))

(assert (= (and d!1706976 (not c!922933)) b!5312599))

(assert (= (and b!5312599 c!922930) b!5312603))

(assert (= (and b!5312599 (not c!922930)) b!5312608))

(assert (= (and d!1706976 res!2253777) b!5312606))

(assert (= (and b!5312606 c!922932) b!5312600))

(assert (= (and b!5312606 (not c!922932)) b!5312604))

(assert (= (and b!5312604 c!922931) b!5312607))

(assert (= (and b!5312604 (not c!922931)) b!5312602))

(assert (=> b!5312606 m!6348846))

(declare-fun m!6349602 () Bool)

(assert (=> b!5312603 m!6349602))

(declare-fun m!6349604 () Bool)

(assert (=> b!5312601 m!6349604))

(declare-fun m!6349606 () Bool)

(assert (=> b!5312604 m!6349606))

(assert (=> b!5312604 m!6349606))

(declare-fun m!6349608 () Bool)

(assert (=> b!5312604 m!6349608))

(declare-fun m!6349610 () Bool)

(assert (=> d!1706976 m!6349610))

(declare-fun m!6349612 () Bool)

(assert (=> d!1706976 m!6349612))

(declare-fun m!6349614 () Bool)

(assert (=> b!5312600 m!6349614))

(declare-fun m!6349616 () Bool)

(assert (=> b!5312607 m!6349616))

(declare-fun m!6349618 () Bool)

(assert (=> b!5312602 m!6349618))

(assert (=> b!5311810 d!1706976))

(declare-fun d!1706984 () Bool)

(declare-fun c!922938 () Bool)

(assert (=> d!1706984 (= c!922938 (isEmpty!33037 s!2326))))

(declare-fun e!3301173 () Bool)

(assert (=> d!1706984 (= (matchZipper!1209 z!1189 s!2326) e!3301173)))

(declare-fun b!5312619 () Bool)

(assert (=> b!5312619 (= e!3301173 (nullableZipper!1335 z!1189))))

(declare-fun b!5312620 () Bool)

(assert (=> b!5312620 (= e!3301173 (matchZipper!1209 (derivationStepZipper!1208 z!1189 (head!11388 s!2326)) (tail!10485 s!2326)))))

(assert (= (and d!1706984 c!922938) b!5312619))

(assert (= (and d!1706984 (not c!922938)) b!5312620))

(assert (=> d!1706984 m!6349050))

(declare-fun m!6349620 () Bool)

(assert (=> b!5312619 m!6349620))

(assert (=> b!5312620 m!6349058))

(assert (=> b!5312620 m!6349058))

(declare-fun m!6349626 () Bool)

(assert (=> b!5312620 m!6349626))

(assert (=> b!5312620 m!6349054))

(assert (=> b!5312620 m!6349626))

(assert (=> b!5312620 m!6349054))

(declare-fun m!6349638 () Bool)

(assert (=> b!5312620 m!6349638))

(assert (=> b!5311810 d!1706984))

(declare-fun d!1706986 () Bool)

(assert (=> d!1706986 (= (Exists!2146 lambda!270647) (choose!39746 lambda!270647))))

(declare-fun bs!1231728 () Bool)

(assert (= bs!1231728 d!1706986))

(declare-fun m!6349646 () Bool)

(assert (=> bs!1231728 m!6349646))

(assert (=> b!5311810 d!1706986))

(declare-fun bs!1231730 () Bool)

(declare-fun d!1706990 () Bool)

(assert (= bs!1231730 (and d!1706990 b!5311810)))

(declare-fun lambda!270724 () Int)

(assert (=> bs!1231730 (not (= lambda!270724 lambda!270647))))

(declare-fun bs!1231731 () Bool)

(assert (= bs!1231731 (and d!1706990 d!1706844)))

(assert (=> bs!1231731 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170350 (regTwo!30442 r!7292))) (= lambda!270724 lambda!270682))))

(declare-fun bs!1231732 () Bool)

(assert (= bs!1231732 (and d!1706990 b!5311796)))

(assert (=> bs!1231732 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170350 (regTwo!30442 r!7292))) (= lambda!270724 lambda!270641))))

(assert (=> bs!1231731 (not (= lambda!270724 lambda!270683))))

(assert (=> bs!1231730 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regTwo!30442 (regOne!30442 r!7292))) (= lt!2170350 lt!2170370)) (= lambda!270724 lambda!270646))))

(declare-fun bs!1231733 () Bool)

(assert (= bs!1231733 (and d!1706990 b!5312560)))

(assert (=> bs!1231733 (not (= lambda!270724 lambda!270715))))

(assert (=> bs!1231732 (not (= lambda!270724 lambda!270642))))

(declare-fun bs!1231735 () Bool)

(assert (= bs!1231735 (and d!1706990 b!5312564)))

(assert (=> bs!1231735 (not (= lambda!270724 lambda!270714))))

(assert (=> bs!1231730 (= lambda!270724 lambda!270644)))

(declare-fun bs!1231736 () Bool)

(assert (= bs!1231736 (and d!1706990 d!1706838)))

(assert (=> bs!1231736 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170350 (regTwo!30442 r!7292))) (= lambda!270724 lambda!270677))))

(assert (=> bs!1231730 (not (= lambda!270724 lambda!270645))))

(assert (=> d!1706990 true))

(assert (=> d!1706990 true))

(assert (=> d!1706990 true))

(assert (=> d!1706990 (= (isDefined!11779 (findConcatSeparation!1490 (regOne!30442 (regOne!30442 r!7292)) lt!2170350 Nil!61070 s!2326 s!2326)) (Exists!2146 lambda!270724))))

(declare-fun lt!2170513 () Unit!153378)

(assert (=> d!1706990 (= lt!2170513 (choose!39747 (regOne!30442 (regOne!30442 r!7292)) lt!2170350 s!2326))))

(assert (=> d!1706990 (validRegex!6701 (regOne!30442 (regOne!30442 r!7292)))))

(assert (=> d!1706990 (= (lemmaFindConcatSeparationEquivalentToExists!1254 (regOne!30442 (regOne!30442 r!7292)) lt!2170350 s!2326) lt!2170513)))

(declare-fun bs!1231737 () Bool)

(assert (= bs!1231737 d!1706990))

(assert (=> bs!1231737 m!6348944))

(declare-fun m!6349672 () Bool)

(assert (=> bs!1231737 m!6349672))

(assert (=> bs!1231737 m!6348944))

(assert (=> bs!1231737 m!6348948))

(assert (=> bs!1231737 m!6349502))

(declare-fun m!6349674 () Bool)

(assert (=> bs!1231737 m!6349674))

(assert (=> b!5311810 d!1706990))

(declare-fun bs!1231738 () Bool)

(declare-fun d!1707002 () Bool)

(assert (= bs!1231738 (and d!1707002 d!1706816)))

(declare-fun lambda!270725 () Int)

(assert (=> bs!1231738 (= lambda!270725 lambda!270665)))

(declare-fun bs!1231739 () Bool)

(assert (= bs!1231739 (and d!1707002 d!1706822)))

(assert (=> bs!1231739 (= lambda!270725 lambda!270670)))

(declare-fun bs!1231740 () Bool)

(assert (= bs!1231740 (and d!1707002 d!1706898)))

(assert (=> bs!1231740 (= lambda!270725 lambda!270697)))

(declare-fun bs!1231741 () Bool)

(assert (= bs!1231741 (and d!1707002 d!1706976)))

(assert (=> bs!1231741 (= lambda!270725 lambda!270722)))

(declare-fun b!5312627 () Bool)

(declare-fun e!3301177 () Regex!14965)

(declare-fun e!3301179 () Regex!14965)

(assert (=> b!5312627 (= e!3301177 e!3301179)))

(declare-fun c!922942 () Bool)

(assert (=> b!5312627 (= c!922942 ((_ is Cons!61071) lt!2170347))))

(declare-fun b!5312628 () Bool)

(declare-fun e!3301180 () Bool)

(declare-fun lt!2170515 () Regex!14965)

(assert (=> b!5312628 (= e!3301180 (isEmptyExpr!871 lt!2170515))))

(declare-fun b!5312629 () Bool)

(declare-fun e!3301182 () Bool)

(assert (=> b!5312629 (= e!3301182 (isEmpty!33035 (t!374400 lt!2170347)))))

(declare-fun b!5312630 () Bool)

(declare-fun e!3301178 () Bool)

(assert (=> b!5312630 (= e!3301178 (isConcat!394 lt!2170515))))

(declare-fun b!5312631 () Bool)

(assert (=> b!5312631 (= e!3301179 (Concat!23810 (h!67519 lt!2170347) (generalisedConcat!634 (t!374400 lt!2170347))))))

(declare-fun b!5312632 () Bool)

(assert (=> b!5312632 (= e!3301180 e!3301178)))

(declare-fun c!922943 () Bool)

(assert (=> b!5312632 (= c!922943 (isEmpty!33035 (tail!10487 lt!2170347)))))

(declare-fun b!5312633 () Bool)

(assert (=> b!5312633 (= e!3301177 (h!67519 lt!2170347))))

(declare-fun e!3301181 () Bool)

(assert (=> d!1707002 e!3301181))

(declare-fun res!2253781 () Bool)

(assert (=> d!1707002 (=> (not res!2253781) (not e!3301181))))

(assert (=> d!1707002 (= res!2253781 (validRegex!6701 lt!2170515))))

(assert (=> d!1707002 (= lt!2170515 e!3301177)))

(declare-fun c!922945 () Bool)

(assert (=> d!1707002 (= c!922945 e!3301182)))

(declare-fun res!2253782 () Bool)

(assert (=> d!1707002 (=> (not res!2253782) (not e!3301182))))

(assert (=> d!1707002 (= res!2253782 ((_ is Cons!61071) lt!2170347))))

(assert (=> d!1707002 (forall!14385 lt!2170347 lambda!270725)))

(assert (=> d!1707002 (= (generalisedConcat!634 lt!2170347) lt!2170515)))

(declare-fun b!5312634 () Bool)

(assert (=> b!5312634 (= e!3301181 e!3301180)))

(declare-fun c!922944 () Bool)

(assert (=> b!5312634 (= c!922944 (isEmpty!33035 lt!2170347))))

(declare-fun b!5312635 () Bool)

(assert (=> b!5312635 (= e!3301178 (= lt!2170515 (head!11390 lt!2170347)))))

(declare-fun b!5312636 () Bool)

(assert (=> b!5312636 (= e!3301179 EmptyExpr!14965)))

(assert (= (and d!1707002 res!2253782) b!5312629))

(assert (= (and d!1707002 c!922945) b!5312633))

(assert (= (and d!1707002 (not c!922945)) b!5312627))

(assert (= (and b!5312627 c!922942) b!5312631))

(assert (= (and b!5312627 (not c!922942)) b!5312636))

(assert (= (and d!1707002 res!2253781) b!5312634))

(assert (= (and b!5312634 c!922944) b!5312628))

(assert (= (and b!5312634 (not c!922944)) b!5312632))

(assert (= (and b!5312632 c!922943) b!5312635))

(assert (= (and b!5312632 (not c!922943)) b!5312630))

(declare-fun m!6349676 () Bool)

(assert (=> b!5312634 m!6349676))

(declare-fun m!6349678 () Bool)

(assert (=> b!5312631 m!6349678))

(declare-fun m!6349680 () Bool)

(assert (=> b!5312629 m!6349680))

(declare-fun m!6349682 () Bool)

(assert (=> b!5312632 m!6349682))

(assert (=> b!5312632 m!6349682))

(declare-fun m!6349684 () Bool)

(assert (=> b!5312632 m!6349684))

(declare-fun m!6349686 () Bool)

(assert (=> d!1707002 m!6349686))

(declare-fun m!6349688 () Bool)

(assert (=> d!1707002 m!6349688))

(declare-fun m!6349690 () Bool)

(assert (=> b!5312628 m!6349690))

(declare-fun m!6349692 () Bool)

(assert (=> b!5312635 m!6349692))

(declare-fun m!6349694 () Bool)

(assert (=> b!5312630 m!6349694))

(assert (=> b!5311810 d!1707002))

(declare-fun d!1707004 () Bool)

(assert (=> d!1707004 (= (Exists!2146 lambda!270644) (choose!39746 lambda!270644))))

(declare-fun bs!1231742 () Bool)

(assert (= bs!1231742 d!1707004))

(declare-fun m!6349696 () Bool)

(assert (=> bs!1231742 m!6349696))

(assert (=> b!5311810 d!1707004))

(declare-fun d!1707006 () Bool)

(assert (=> d!1707006 (= (matchR!7150 lt!2170350 s!2326) (matchRSpec!2068 lt!2170350 s!2326))))

(declare-fun lt!2170521 () Unit!153378)

(declare-fun choose!39754 (Regex!14965 List!61194) Unit!153378)

(assert (=> d!1707006 (= lt!2170521 (choose!39754 lt!2170350 s!2326))))

(assert (=> d!1707006 (validRegex!6701 lt!2170350)))

(assert (=> d!1707006 (= (mainMatchTheorem!2068 lt!2170350 s!2326) lt!2170521)))

(declare-fun bs!1231743 () Bool)

(assert (= bs!1231743 d!1707006))

(assert (=> bs!1231743 m!6348936))

(assert (=> bs!1231743 m!6348912))

(declare-fun m!6349708 () Bool)

(assert (=> bs!1231743 m!6349708))

(declare-fun m!6349710 () Bool)

(assert (=> bs!1231743 m!6349710))

(assert (=> b!5311810 d!1707006))

(declare-fun b!5312656 () Bool)

(declare-fun e!3301197 () Bool)

(declare-fun lt!2170522 () Bool)

(assert (=> b!5312656 (= e!3301197 (not lt!2170522))))

(declare-fun b!5312657 () Bool)

(declare-fun res!2253796 () Bool)

(declare-fun e!3301199 () Bool)

(assert (=> b!5312657 (=> (not res!2253796) (not e!3301199))))

(assert (=> b!5312657 (= res!2253796 (isEmpty!33037 (tail!10485 s!2326)))))

(declare-fun b!5312658 () Bool)

(declare-fun e!3301198 () Bool)

(declare-fun call!378831 () Bool)

(assert (=> b!5312658 (= e!3301198 (= lt!2170522 call!378831))))

(declare-fun b!5312659 () Bool)

(declare-fun e!3301202 () Bool)

(assert (=> b!5312659 (= e!3301202 (nullable!5134 lt!2170350))))

(declare-fun b!5312661 () Bool)

(assert (=> b!5312661 (= e!3301202 (matchR!7150 (derivativeStep!4157 lt!2170350 (head!11388 s!2326)) (tail!10485 s!2326)))))

(declare-fun b!5312662 () Bool)

(declare-fun res!2253792 () Bool)

(declare-fun e!3301196 () Bool)

(assert (=> b!5312662 (=> res!2253792 e!3301196)))

(assert (=> b!5312662 (= res!2253792 (not (isEmpty!33037 (tail!10485 s!2326))))))

(declare-fun b!5312663 () Bool)

(assert (=> b!5312663 (= e!3301199 (= (head!11388 s!2326) (c!922685 lt!2170350)))))

(declare-fun b!5312664 () Bool)

(declare-fun e!3301200 () Bool)

(assert (=> b!5312664 (= e!3301200 e!3301196)))

(declare-fun res!2253791 () Bool)

(assert (=> b!5312664 (=> res!2253791 e!3301196)))

(assert (=> b!5312664 (= res!2253791 call!378831)))

(declare-fun b!5312665 () Bool)

(declare-fun e!3301201 () Bool)

(assert (=> b!5312665 (= e!3301201 e!3301200)))

(declare-fun res!2253797 () Bool)

(assert (=> b!5312665 (=> (not res!2253797) (not e!3301200))))

(assert (=> b!5312665 (= res!2253797 (not lt!2170522))))

(declare-fun bm!378826 () Bool)

(assert (=> bm!378826 (= call!378831 (isEmpty!33037 s!2326))))

(declare-fun d!1707012 () Bool)

(assert (=> d!1707012 e!3301198))

(declare-fun c!922953 () Bool)

(assert (=> d!1707012 (= c!922953 ((_ is EmptyExpr!14965) lt!2170350))))

(assert (=> d!1707012 (= lt!2170522 e!3301202)))

(declare-fun c!922954 () Bool)

(assert (=> d!1707012 (= c!922954 (isEmpty!33037 s!2326))))

(assert (=> d!1707012 (validRegex!6701 lt!2170350)))

(assert (=> d!1707012 (= (matchR!7150 lt!2170350 s!2326) lt!2170522)))

(declare-fun b!5312660 () Bool)

(declare-fun res!2253794 () Bool)

(assert (=> b!5312660 (=> res!2253794 e!3301201)))

(assert (=> b!5312660 (= res!2253794 (not ((_ is ElementMatch!14965) lt!2170350)))))

(assert (=> b!5312660 (= e!3301197 e!3301201)))

(declare-fun b!5312666 () Bool)

(assert (=> b!5312666 (= e!3301198 e!3301197)))

(declare-fun c!922952 () Bool)

(assert (=> b!5312666 (= c!922952 ((_ is EmptyLang!14965) lt!2170350))))

(declare-fun b!5312667 () Bool)

(declare-fun res!2253793 () Bool)

(assert (=> b!5312667 (=> (not res!2253793) (not e!3301199))))

(assert (=> b!5312667 (= res!2253793 (not call!378831))))

(declare-fun b!5312668 () Bool)

(declare-fun res!2253795 () Bool)

(assert (=> b!5312668 (=> res!2253795 e!3301201)))

(assert (=> b!5312668 (= res!2253795 e!3301199)))

(declare-fun res!2253790 () Bool)

(assert (=> b!5312668 (=> (not res!2253790) (not e!3301199))))

(assert (=> b!5312668 (= res!2253790 lt!2170522)))

(declare-fun b!5312669 () Bool)

(assert (=> b!5312669 (= e!3301196 (not (= (head!11388 s!2326) (c!922685 lt!2170350))))))

(assert (= (and d!1707012 c!922954) b!5312659))

(assert (= (and d!1707012 (not c!922954)) b!5312661))

(assert (= (and d!1707012 c!922953) b!5312658))

(assert (= (and d!1707012 (not c!922953)) b!5312666))

(assert (= (and b!5312666 c!922952) b!5312656))

(assert (= (and b!5312666 (not c!922952)) b!5312660))

(assert (= (and b!5312660 (not res!2253794)) b!5312668))

(assert (= (and b!5312668 res!2253790) b!5312667))

(assert (= (and b!5312667 res!2253793) b!5312657))

(assert (= (and b!5312657 res!2253796) b!5312663))

(assert (= (and b!5312668 (not res!2253795)) b!5312665))

(assert (= (and b!5312665 res!2253797) b!5312664))

(assert (= (and b!5312664 (not res!2253791)) b!5312662))

(assert (= (and b!5312662 (not res!2253792)) b!5312669))

(assert (= (or b!5312658 b!5312664 b!5312667) bm!378826))

(assert (=> d!1707012 m!6349050))

(assert (=> d!1707012 m!6349710))

(assert (=> b!5312662 m!6349054))

(assert (=> b!5312662 m!6349054))

(assert (=> b!5312662 m!6349056))

(assert (=> bm!378826 m!6349050))

(assert (=> b!5312661 m!6349058))

(assert (=> b!5312661 m!6349058))

(declare-fun m!6349712 () Bool)

(assert (=> b!5312661 m!6349712))

(assert (=> b!5312661 m!6349054))

(assert (=> b!5312661 m!6349712))

(assert (=> b!5312661 m!6349054))

(declare-fun m!6349714 () Bool)

(assert (=> b!5312661 m!6349714))

(assert (=> b!5312657 m!6349054))

(assert (=> b!5312657 m!6349054))

(assert (=> b!5312657 m!6349056))

(assert (=> b!5312663 m!6349058))

(assert (=> b!5312669 m!6349058))

(declare-fun m!6349716 () Bool)

(assert (=> b!5312659 m!6349716))

(assert (=> b!5311810 d!1707012))

(declare-fun bs!1231753 () Bool)

(declare-fun d!1707014 () Bool)

(assert (= bs!1231753 (and d!1707014 d!1707002)))

(declare-fun lambda!270727 () Int)

(assert (=> bs!1231753 (= lambda!270727 lambda!270725)))

(declare-fun bs!1231754 () Bool)

(assert (= bs!1231754 (and d!1707014 d!1706822)))

(assert (=> bs!1231754 (= lambda!270727 lambda!270670)))

(declare-fun bs!1231755 () Bool)

(assert (= bs!1231755 (and d!1707014 d!1706898)))

(assert (=> bs!1231755 (= lambda!270727 lambda!270697)))

(declare-fun bs!1231757 () Bool)

(assert (= bs!1231757 (and d!1707014 d!1706976)))

(assert (=> bs!1231757 (= lambda!270727 lambda!270722)))

(declare-fun bs!1231758 () Bool)

(assert (= bs!1231758 (and d!1707014 d!1706816)))

(assert (=> bs!1231758 (= lambda!270727 lambda!270665)))

(declare-fun b!5312670 () Bool)

(declare-fun e!3301203 () Regex!14965)

(declare-fun e!3301205 () Regex!14965)

(assert (=> b!5312670 (= e!3301203 e!3301205)))

(declare-fun c!922955 () Bool)

(assert (=> b!5312670 (= c!922955 ((_ is Cons!61071) lt!2170364))))

(declare-fun b!5312671 () Bool)

(declare-fun e!3301206 () Bool)

(declare-fun lt!2170523 () Regex!14965)

(assert (=> b!5312671 (= e!3301206 (isEmptyExpr!871 lt!2170523))))

(declare-fun b!5312672 () Bool)

(declare-fun e!3301208 () Bool)

(assert (=> b!5312672 (= e!3301208 (isEmpty!33035 (t!374400 lt!2170364)))))

(declare-fun b!5312673 () Bool)

(declare-fun e!3301204 () Bool)

(assert (=> b!5312673 (= e!3301204 (isConcat!394 lt!2170523))))

(declare-fun b!5312674 () Bool)

(assert (=> b!5312674 (= e!3301205 (Concat!23810 (h!67519 lt!2170364) (generalisedConcat!634 (t!374400 lt!2170364))))))

(declare-fun b!5312675 () Bool)

(assert (=> b!5312675 (= e!3301206 e!3301204)))

(declare-fun c!922956 () Bool)

(assert (=> b!5312675 (= c!922956 (isEmpty!33035 (tail!10487 lt!2170364)))))

(declare-fun b!5312676 () Bool)

(assert (=> b!5312676 (= e!3301203 (h!67519 lt!2170364))))

(declare-fun e!3301207 () Bool)

(assert (=> d!1707014 e!3301207))

(declare-fun res!2253798 () Bool)

(assert (=> d!1707014 (=> (not res!2253798) (not e!3301207))))

(assert (=> d!1707014 (= res!2253798 (validRegex!6701 lt!2170523))))

(assert (=> d!1707014 (= lt!2170523 e!3301203)))

(declare-fun c!922958 () Bool)

(assert (=> d!1707014 (= c!922958 e!3301208)))

(declare-fun res!2253799 () Bool)

(assert (=> d!1707014 (=> (not res!2253799) (not e!3301208))))

(assert (=> d!1707014 (= res!2253799 ((_ is Cons!61071) lt!2170364))))

(assert (=> d!1707014 (forall!14385 lt!2170364 lambda!270727)))

(assert (=> d!1707014 (= (generalisedConcat!634 lt!2170364) lt!2170523)))

(declare-fun b!5312677 () Bool)

(assert (=> b!5312677 (= e!3301207 e!3301206)))

(declare-fun c!922957 () Bool)

(assert (=> b!5312677 (= c!922957 (isEmpty!33035 lt!2170364))))

(declare-fun b!5312678 () Bool)

(assert (=> b!5312678 (= e!3301204 (= lt!2170523 (head!11390 lt!2170364)))))

(declare-fun b!5312679 () Bool)

(assert (=> b!5312679 (= e!3301205 EmptyExpr!14965)))

(assert (= (and d!1707014 res!2253799) b!5312672))

(assert (= (and d!1707014 c!922958) b!5312676))

(assert (= (and d!1707014 (not c!922958)) b!5312670))

(assert (= (and b!5312670 c!922955) b!5312674))

(assert (= (and b!5312670 (not c!922955)) b!5312679))

(assert (= (and d!1707014 res!2253798) b!5312677))

(assert (= (and b!5312677 c!922957) b!5312671))

(assert (= (and b!5312677 (not c!922957)) b!5312675))

(assert (= (and b!5312675 c!922956) b!5312678))

(assert (= (and b!5312675 (not c!922956)) b!5312673))

(declare-fun m!6349718 () Bool)

(assert (=> b!5312677 m!6349718))

(declare-fun m!6349720 () Bool)

(assert (=> b!5312674 m!6349720))

(declare-fun m!6349722 () Bool)

(assert (=> b!5312672 m!6349722))

(declare-fun m!6349724 () Bool)

(assert (=> b!5312675 m!6349724))

(assert (=> b!5312675 m!6349724))

(declare-fun m!6349726 () Bool)

(assert (=> b!5312675 m!6349726))

(declare-fun m!6349728 () Bool)

(assert (=> d!1707014 m!6349728))

(declare-fun m!6349730 () Bool)

(assert (=> d!1707014 m!6349730))

(declare-fun m!6349732 () Bool)

(assert (=> b!5312671 m!6349732))

(declare-fun m!6349734 () Bool)

(assert (=> b!5312678 m!6349734))

(declare-fun m!6349736 () Bool)

(assert (=> b!5312673 m!6349736))

(assert (=> b!5311810 d!1707014))

(declare-fun bs!1231763 () Bool)

(declare-fun d!1707016 () Bool)

(assert (= bs!1231763 (and d!1707016 b!5311810)))

(declare-fun lambda!270729 () Int)

(assert (=> bs!1231763 (not (= lambda!270729 lambda!270647))))

(declare-fun bs!1231765 () Bool)

(assert (= bs!1231765 (and d!1707016 d!1706990)))

(assert (=> bs!1231765 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 (regOne!30442 r!7292))) (= lt!2170370 lt!2170350)) (= lambda!270729 lambda!270724))))

(declare-fun bs!1231766 () Bool)

(assert (= bs!1231766 (and d!1707016 d!1706844)))

(assert (=> bs!1231766 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170370 (regTwo!30442 r!7292))) (= lambda!270729 lambda!270682))))

(declare-fun bs!1231768 () Bool)

(assert (= bs!1231768 (and d!1707016 b!5311796)))

(assert (=> bs!1231768 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170370 (regTwo!30442 r!7292))) (= lambda!270729 lambda!270641))))

(assert (=> bs!1231766 (not (= lambda!270729 lambda!270683))))

(assert (=> bs!1231763 (= lambda!270729 lambda!270646)))

(declare-fun bs!1231771 () Bool)

(assert (= bs!1231771 (and d!1707016 b!5312560)))

(assert (=> bs!1231771 (not (= lambda!270729 lambda!270715))))

(assert (=> bs!1231768 (not (= lambda!270729 lambda!270642))))

(declare-fun bs!1231774 () Bool)

(assert (= bs!1231774 (and d!1707016 b!5312564)))

(assert (=> bs!1231774 (not (= lambda!270729 lambda!270714))))

(assert (=> bs!1231763 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 (regOne!30442 r!7292))) (= lt!2170370 lt!2170350)) (= lambda!270729 lambda!270644))))

(declare-fun bs!1231776 () Bool)

(assert (= bs!1231776 (and d!1707016 d!1706838)))

(assert (=> bs!1231776 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170370 (regTwo!30442 r!7292))) (= lambda!270729 lambda!270677))))

(assert (=> bs!1231763 (not (= lambda!270729 lambda!270645))))

(assert (=> d!1707016 true))

(assert (=> d!1707016 true))

(assert (=> d!1707016 true))

(declare-fun lambda!270730 () Int)

(assert (=> bs!1231765 (not (= lambda!270730 lambda!270724))))

(assert (=> bs!1231766 (not (= lambda!270730 lambda!270682))))

(assert (=> bs!1231768 (not (= lambda!270730 lambda!270641))))

(assert (=> bs!1231766 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170370 (regTwo!30442 r!7292))) (= lambda!270730 lambda!270683))))

(assert (=> bs!1231763 (not (= lambda!270730 lambda!270646))))

(assert (=> bs!1231771 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 lt!2170350)) (= lt!2170370 (regTwo!30442 lt!2170350))) (= lambda!270730 lambda!270715))))

(assert (=> bs!1231768 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170370 (regTwo!30442 r!7292))) (= lambda!270730 lambda!270642))))

(assert (=> bs!1231774 (not (= lambda!270730 lambda!270714))))

(assert (=> bs!1231763 (not (= lambda!270730 lambda!270644))))

(assert (=> bs!1231776 (not (= lambda!270730 lambda!270677))))

(assert (=> bs!1231763 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 (regOne!30442 r!7292))) (= lt!2170370 lt!2170350)) (= lambda!270730 lambda!270645))))

(declare-fun bs!1231781 () Bool)

(assert (= bs!1231781 d!1707016))

(assert (=> bs!1231781 (not (= lambda!270730 lambda!270729))))

(assert (=> bs!1231763 (= lambda!270730 lambda!270647)))

(assert (=> d!1707016 true))

(assert (=> d!1707016 true))

(assert (=> d!1707016 true))

(assert (=> d!1707016 (= (Exists!2146 lambda!270729) (Exists!2146 lambda!270730))))

(declare-fun lt!2170524 () Unit!153378)

(assert (=> d!1707016 (= lt!2170524 (choose!39749 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 s!2326))))

(assert (=> d!1707016 (validRegex!6701 (regTwo!30442 (regOne!30442 r!7292)))))

(assert (=> d!1707016 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!800 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 s!2326) lt!2170524)))

(declare-fun m!6349744 () Bool)

(assert (=> bs!1231781 m!6349744))

(declare-fun m!6349746 () Bool)

(assert (=> bs!1231781 m!6349746))

(declare-fun m!6349748 () Bool)

(assert (=> bs!1231781 m!6349748))

(assert (=> bs!1231781 m!6349504))

(assert (=> b!5311810 d!1707016))

(declare-fun bs!1231783 () Bool)

(declare-fun d!1707020 () Bool)

(assert (= bs!1231783 (and d!1707020 d!1706990)))

(declare-fun lambda!270731 () Int)

(assert (=> bs!1231783 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 (regOne!30442 r!7292))) (= lt!2170370 lt!2170350)) (= lambda!270731 lambda!270724))))

(declare-fun bs!1231784 () Bool)

(assert (= bs!1231784 (and d!1707020 d!1706844)))

(assert (=> bs!1231784 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170370 (regTwo!30442 r!7292))) (= lambda!270731 lambda!270682))))

(declare-fun bs!1231785 () Bool)

(assert (= bs!1231785 (and d!1707020 b!5311796)))

(assert (=> bs!1231785 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170370 (regTwo!30442 r!7292))) (= lambda!270731 lambda!270641))))

(assert (=> bs!1231784 (not (= lambda!270731 lambda!270683))))

(declare-fun bs!1231786 () Bool)

(assert (= bs!1231786 (and d!1707020 b!5311810)))

(assert (=> bs!1231786 (= lambda!270731 lambda!270646)))

(declare-fun bs!1231787 () Bool)

(assert (= bs!1231787 (and d!1707020 b!5312560)))

(assert (=> bs!1231787 (not (= lambda!270731 lambda!270715))))

(assert (=> bs!1231785 (not (= lambda!270731 lambda!270642))))

(declare-fun bs!1231788 () Bool)

(assert (= bs!1231788 (and d!1707020 b!5312564)))

(assert (=> bs!1231788 (not (= lambda!270731 lambda!270714))))

(assert (=> bs!1231786 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 (regOne!30442 r!7292))) (= lt!2170370 lt!2170350)) (= lambda!270731 lambda!270644))))

(declare-fun bs!1231789 () Bool)

(assert (= bs!1231789 (and d!1707020 d!1706838)))

(assert (=> bs!1231789 (= (and (= (regTwo!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170370 (regTwo!30442 r!7292))) (= lambda!270731 lambda!270677))))

(assert (=> bs!1231786 (not (= lambda!270731 lambda!270645))))

(declare-fun bs!1231790 () Bool)

(assert (= bs!1231790 (and d!1707020 d!1707016)))

(assert (=> bs!1231790 (not (= lambda!270731 lambda!270730))))

(assert (=> bs!1231790 (= lambda!270731 lambda!270729)))

(assert (=> bs!1231786 (not (= lambda!270731 lambda!270647))))

(assert (=> d!1707020 true))

(assert (=> d!1707020 true))

(assert (=> d!1707020 true))

(assert (=> d!1707020 (= (isDefined!11779 (findConcatSeparation!1490 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 Nil!61070 s!2326 s!2326)) (Exists!2146 lambda!270731))))

(declare-fun lt!2170526 () Unit!153378)

(assert (=> d!1707020 (= lt!2170526 (choose!39747 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 s!2326))))

(assert (=> d!1707020 (validRegex!6701 (regTwo!30442 (regOne!30442 r!7292)))))

(assert (=> d!1707020 (= (lemmaFindConcatSeparationEquivalentToExists!1254 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 s!2326) lt!2170526)))

(declare-fun bs!1231791 () Bool)

(assert (= bs!1231791 d!1707020))

(assert (=> bs!1231791 m!6348928))

(declare-fun m!6349780 () Bool)

(assert (=> bs!1231791 m!6349780))

(assert (=> bs!1231791 m!6348928))

(assert (=> bs!1231791 m!6348930))

(assert (=> bs!1231791 m!6349504))

(declare-fun m!6349782 () Bool)

(assert (=> bs!1231791 m!6349782))

(assert (=> b!5311810 d!1707020))

(declare-fun d!1707034 () Bool)

(assert (=> d!1707034 (= (isDefined!11779 (findConcatSeparation!1490 (regOne!30442 (regOne!30442 r!7292)) lt!2170350 Nil!61070 s!2326 s!2326)) (not (isEmpty!33040 (findConcatSeparation!1490 (regOne!30442 (regOne!30442 r!7292)) lt!2170350 Nil!61070 s!2326 s!2326))))))

(declare-fun bs!1231792 () Bool)

(assert (= bs!1231792 d!1707034))

(assert (=> bs!1231792 m!6348944))

(declare-fun m!6349784 () Bool)

(assert (=> bs!1231792 m!6349784))

(assert (=> b!5311810 d!1707034))

(declare-fun bs!1231793 () Bool)

(declare-fun d!1707036 () Bool)

(assert (= bs!1231793 (and d!1707036 d!1706990)))

(declare-fun lambda!270732 () Int)

(assert (=> bs!1231793 (= lambda!270732 lambda!270724)))

(declare-fun bs!1231794 () Bool)

(assert (= bs!1231794 (and d!1707036 d!1706844)))

(assert (=> bs!1231794 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170350 (regTwo!30442 r!7292))) (= lambda!270732 lambda!270682))))

(declare-fun bs!1231795 () Bool)

(assert (= bs!1231795 (and d!1707036 b!5311796)))

(assert (=> bs!1231795 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170350 (regTwo!30442 r!7292))) (= lambda!270732 lambda!270641))))

(assert (=> bs!1231794 (not (= lambda!270732 lambda!270683))))

(declare-fun bs!1231796 () Bool)

(assert (= bs!1231796 (and d!1707036 b!5311810)))

(assert (=> bs!1231796 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regTwo!30442 (regOne!30442 r!7292))) (= lt!2170350 lt!2170370)) (= lambda!270732 lambda!270646))))

(declare-fun bs!1231797 () Bool)

(assert (= bs!1231797 (and d!1707036 b!5312560)))

(assert (=> bs!1231797 (not (= lambda!270732 lambda!270715))))

(assert (=> bs!1231795 (not (= lambda!270732 lambda!270642))))

(declare-fun bs!1231798 () Bool)

(assert (= bs!1231798 (and d!1707036 b!5312564)))

(assert (=> bs!1231798 (not (= lambda!270732 lambda!270714))))

(assert (=> bs!1231796 (= lambda!270732 lambda!270644)))

(declare-fun bs!1231799 () Bool)

(assert (= bs!1231799 (and d!1707036 d!1706838)))

(assert (=> bs!1231799 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170350 (regTwo!30442 r!7292))) (= lambda!270732 lambda!270677))))

(assert (=> bs!1231796 (not (= lambda!270732 lambda!270645))))

(declare-fun bs!1231800 () Bool)

(assert (= bs!1231800 (and d!1707036 d!1707016)))

(assert (=> bs!1231800 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regTwo!30442 (regOne!30442 r!7292))) (= lt!2170350 lt!2170370)) (= lambda!270732 lambda!270729))))

(assert (=> bs!1231796 (not (= lambda!270732 lambda!270647))))

(declare-fun bs!1231801 () Bool)

(assert (= bs!1231801 (and d!1707036 d!1707020)))

(assert (=> bs!1231801 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regTwo!30442 (regOne!30442 r!7292))) (= lt!2170350 lt!2170370)) (= lambda!270732 lambda!270731))))

(assert (=> bs!1231800 (not (= lambda!270732 lambda!270730))))

(assert (=> d!1707036 true))

(assert (=> d!1707036 true))

(assert (=> d!1707036 true))

(declare-fun lambda!270733 () Int)

(assert (=> bs!1231793 (not (= lambda!270733 lambda!270724))))

(assert (=> bs!1231794 (not (= lambda!270733 lambda!270682))))

(assert (=> bs!1231795 (not (= lambda!270733 lambda!270641))))

(assert (=> bs!1231794 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170350 (regTwo!30442 r!7292))) (= lambda!270733 lambda!270683))))

(assert (=> bs!1231796 (not (= lambda!270733 lambda!270646))))

(assert (=> bs!1231797 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regOne!30442 lt!2170350)) (= lt!2170350 (regTwo!30442 lt!2170350))) (= lambda!270733 lambda!270715))))

(assert (=> bs!1231795 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regOne!30442 r!7292)) (= lt!2170350 (regTwo!30442 r!7292))) (= lambda!270733 lambda!270642))))

(assert (=> bs!1231798 (not (= lambda!270733 lambda!270714))))

(assert (=> bs!1231796 (not (= lambda!270733 lambda!270644))))

(assert (=> bs!1231799 (not (= lambda!270733 lambda!270677))))

(assert (=> bs!1231796 (= lambda!270733 lambda!270645)))

(declare-fun bs!1231803 () Bool)

(assert (= bs!1231803 d!1707036))

(assert (=> bs!1231803 (not (= lambda!270733 lambda!270732))))

(assert (=> bs!1231800 (not (= lambda!270733 lambda!270729))))

(assert (=> bs!1231796 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regTwo!30442 (regOne!30442 r!7292))) (= lt!2170350 lt!2170370)) (= lambda!270733 lambda!270647))))

(assert (=> bs!1231801 (not (= lambda!270733 lambda!270731))))

(assert (=> bs!1231800 (= (and (= (regOne!30442 (regOne!30442 r!7292)) (regTwo!30442 (regOne!30442 r!7292))) (= lt!2170350 lt!2170370)) (= lambda!270733 lambda!270730))))

(assert (=> d!1707036 true))

(assert (=> d!1707036 true))

(assert (=> d!1707036 true))

(assert (=> d!1707036 (= (Exists!2146 lambda!270732) (Exists!2146 lambda!270733))))

(declare-fun lt!2170530 () Unit!153378)

(assert (=> d!1707036 (= lt!2170530 (choose!39749 (regOne!30442 (regOne!30442 r!7292)) lt!2170350 s!2326))))

(assert (=> d!1707036 (validRegex!6701 (regOne!30442 (regOne!30442 r!7292)))))

(assert (=> d!1707036 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!800 (regOne!30442 (regOne!30442 r!7292)) lt!2170350 s!2326) lt!2170530)))

(declare-fun m!6349802 () Bool)

(assert (=> bs!1231803 m!6349802))

(declare-fun m!6349804 () Bool)

(assert (=> bs!1231803 m!6349804))

(declare-fun m!6349806 () Bool)

(assert (=> bs!1231803 m!6349806))

(assert (=> bs!1231803 m!6349502))

(assert (=> b!5311810 d!1707036))

(declare-fun d!1707044 () Bool)

(assert (=> d!1707044 (= (Exists!2146 lambda!270645) (choose!39746 lambda!270645))))

(declare-fun bs!1231804 () Bool)

(assert (= bs!1231804 d!1707044))

(declare-fun m!6349808 () Bool)

(assert (=> bs!1231804 m!6349808))

(assert (=> b!5311810 d!1707044))

(declare-fun d!1707046 () Bool)

(assert (=> d!1707046 (= (matchR!7150 lt!2170354 s!2326) (matchRSpec!2068 lt!2170354 s!2326))))

(declare-fun lt!2170534 () Unit!153378)

(assert (=> d!1707046 (= lt!2170534 (choose!39754 lt!2170354 s!2326))))

(assert (=> d!1707046 (validRegex!6701 lt!2170354)))

(assert (=> d!1707046 (= (mainMatchTheorem!2068 lt!2170354 s!2326) lt!2170534)))

(declare-fun bs!1231805 () Bool)

(assert (= bs!1231805 d!1707046))

(assert (=> bs!1231805 m!6348934))

(assert (=> bs!1231805 m!6348924))

(declare-fun m!6349810 () Bool)

(assert (=> bs!1231805 m!6349810))

(declare-fun m!6349812 () Bool)

(assert (=> bs!1231805 m!6349812))

(assert (=> b!5311810 d!1707046))

(declare-fun d!1707048 () Bool)

(assert (=> d!1707048 (= (Exists!2146 lambda!270646) (choose!39746 lambda!270646))))

(declare-fun bs!1231806 () Bool)

(assert (= bs!1231806 d!1707048))

(declare-fun m!6349814 () Bool)

(assert (=> bs!1231806 m!6349814))

(assert (=> b!5311810 d!1707048))

(declare-fun d!1707050 () Bool)

(assert (=> d!1707050 (= (matchR!7150 lt!2170354 s!2326) (matchZipper!1209 lt!2170361 s!2326))))

(declare-fun lt!2170545 () Unit!153378)

(declare-fun choose!39756 ((InoxSet Context!8698) List!61196 Regex!14965 List!61194) Unit!153378)

(assert (=> d!1707050 (= lt!2170545 (choose!39756 lt!2170361 lt!2170333 lt!2170354 s!2326))))

(assert (=> d!1707050 (validRegex!6701 lt!2170354)))

(assert (=> d!1707050 (= (theoremZipperRegexEquiv!375 lt!2170361 lt!2170333 lt!2170354 s!2326) lt!2170545)))

(declare-fun bs!1231807 () Bool)

(assert (= bs!1231807 d!1707050))

(assert (=> bs!1231807 m!6348934))

(assert (=> bs!1231807 m!6348942))

(declare-fun m!6349816 () Bool)

(assert (=> bs!1231807 m!6349816))

(assert (=> bs!1231807 m!6349812))

(assert (=> b!5311810 d!1707050))

(declare-fun bs!1231808 () Bool)

(declare-fun b!5312728 () Bool)

(assert (= bs!1231808 (and b!5312728 d!1707036)))

(declare-fun lambda!270740 () Int)

(assert (=> bs!1231808 (not (= lambda!270740 lambda!270733))))

(declare-fun bs!1231809 () Bool)

(assert (= bs!1231809 (and b!5312728 d!1706990)))

(assert (=> bs!1231809 (not (= lambda!270740 lambda!270724))))

(declare-fun bs!1231810 () Bool)

(assert (= bs!1231810 (and b!5312728 d!1706844)))

(assert (=> bs!1231810 (not (= lambda!270740 lambda!270682))))

(declare-fun bs!1231811 () Bool)

(assert (= bs!1231811 (and b!5312728 b!5311796)))

(assert (=> bs!1231811 (not (= lambda!270740 lambda!270641))))

(assert (=> bs!1231810 (not (= lambda!270740 lambda!270683))))

(declare-fun bs!1231812 () Bool)

(assert (= bs!1231812 (and b!5312728 b!5311810)))

(assert (=> bs!1231812 (not (= lambda!270740 lambda!270646))))

(declare-fun bs!1231813 () Bool)

(assert (= bs!1231813 (and b!5312728 b!5312560)))

(assert (=> bs!1231813 (not (= lambda!270740 lambda!270715))))

(assert (=> bs!1231811 (not (= lambda!270740 lambda!270642))))

(declare-fun bs!1231814 () Bool)

(assert (= bs!1231814 (and b!5312728 b!5312564)))

(assert (=> bs!1231814 (= (and (= (reg!15294 lt!2170354) (reg!15294 lt!2170350)) (= lt!2170354 lt!2170350)) (= lambda!270740 lambda!270714))))

(assert (=> bs!1231812 (not (= lambda!270740 lambda!270644))))

(declare-fun bs!1231815 () Bool)

(assert (= bs!1231815 (and b!5312728 d!1706838)))

(assert (=> bs!1231815 (not (= lambda!270740 lambda!270677))))

(assert (=> bs!1231812 (not (= lambda!270740 lambda!270645))))

(assert (=> bs!1231808 (not (= lambda!270740 lambda!270732))))

(declare-fun bs!1231816 () Bool)

(assert (= bs!1231816 (and b!5312728 d!1707016)))

(assert (=> bs!1231816 (not (= lambda!270740 lambda!270729))))

(assert (=> bs!1231812 (not (= lambda!270740 lambda!270647))))

(declare-fun bs!1231817 () Bool)

(assert (= bs!1231817 (and b!5312728 d!1707020)))

(assert (=> bs!1231817 (not (= lambda!270740 lambda!270731))))

(assert (=> bs!1231816 (not (= lambda!270740 lambda!270730))))

(assert (=> b!5312728 true))

(assert (=> b!5312728 true))

(declare-fun bs!1231819 () Bool)

(declare-fun b!5312724 () Bool)

(assert (= bs!1231819 (and b!5312724 d!1707036)))

(declare-fun lambda!270744 () Int)

(assert (=> bs!1231819 (= (and (= (regOne!30442 lt!2170354) (regOne!30442 (regOne!30442 r!7292))) (= (regTwo!30442 lt!2170354) lt!2170350)) (= lambda!270744 lambda!270733))))

(declare-fun bs!1231820 () Bool)

(assert (= bs!1231820 (and b!5312724 d!1706990)))

(assert (=> bs!1231820 (not (= lambda!270744 lambda!270724))))

(declare-fun bs!1231821 () Bool)

(assert (= bs!1231821 (and b!5312724 d!1706844)))

(assert (=> bs!1231821 (not (= lambda!270744 lambda!270682))))

(declare-fun bs!1231822 () Bool)

(assert (= bs!1231822 (and b!5312724 b!5311796)))

(assert (=> bs!1231822 (not (= lambda!270744 lambda!270641))))

(assert (=> bs!1231821 (= (and (= (regOne!30442 lt!2170354) (regOne!30442 r!7292)) (= (regTwo!30442 lt!2170354) (regTwo!30442 r!7292))) (= lambda!270744 lambda!270683))))

(declare-fun bs!1231824 () Bool)

(assert (= bs!1231824 (and b!5312724 b!5311810)))

(assert (=> bs!1231824 (not (= lambda!270744 lambda!270646))))

(declare-fun bs!1231825 () Bool)

(assert (= bs!1231825 (and b!5312724 b!5312560)))

(assert (=> bs!1231825 (= (and (= (regOne!30442 lt!2170354) (regOne!30442 lt!2170350)) (= (regTwo!30442 lt!2170354) (regTwo!30442 lt!2170350))) (= lambda!270744 lambda!270715))))

(assert (=> bs!1231822 (= (and (= (regOne!30442 lt!2170354) (regOne!30442 r!7292)) (= (regTwo!30442 lt!2170354) (regTwo!30442 r!7292))) (= lambda!270744 lambda!270642))))

(declare-fun bs!1231827 () Bool)

(assert (= bs!1231827 (and b!5312724 b!5312564)))

(assert (=> bs!1231827 (not (= lambda!270744 lambda!270714))))

(assert (=> bs!1231824 (not (= lambda!270744 lambda!270644))))

(declare-fun bs!1231829 () Bool)

(assert (= bs!1231829 (and b!5312724 b!5312728)))

(assert (=> bs!1231829 (not (= lambda!270744 lambda!270740))))

(declare-fun bs!1231832 () Bool)

(assert (= bs!1231832 (and b!5312724 d!1706838)))

(assert (=> bs!1231832 (not (= lambda!270744 lambda!270677))))

(assert (=> bs!1231824 (= (and (= (regOne!30442 lt!2170354) (regOne!30442 (regOne!30442 r!7292))) (= (regTwo!30442 lt!2170354) lt!2170350)) (= lambda!270744 lambda!270645))))

(assert (=> bs!1231819 (not (= lambda!270744 lambda!270732))))

(declare-fun bs!1231833 () Bool)

(assert (= bs!1231833 (and b!5312724 d!1707016)))

(assert (=> bs!1231833 (not (= lambda!270744 lambda!270729))))

(assert (=> bs!1231824 (= (and (= (regOne!30442 lt!2170354) (regTwo!30442 (regOne!30442 r!7292))) (= (regTwo!30442 lt!2170354) lt!2170370)) (= lambda!270744 lambda!270647))))

(declare-fun bs!1231834 () Bool)

(assert (= bs!1231834 (and b!5312724 d!1707020)))

(assert (=> bs!1231834 (not (= lambda!270744 lambda!270731))))

(assert (=> bs!1231833 (= (and (= (regOne!30442 lt!2170354) (regTwo!30442 (regOne!30442 r!7292))) (= (regTwo!30442 lt!2170354) lt!2170370)) (= lambda!270744 lambda!270730))))

(assert (=> b!5312724 true))

(assert (=> b!5312724 true))

(declare-fun bm!378829 () Bool)

(declare-fun c!922976 () Bool)

(declare-fun call!378835 () Bool)

(assert (=> bm!378829 (= call!378835 (Exists!2146 (ite c!922976 lambda!270740 lambda!270744)))))

(declare-fun b!5312721 () Bool)

(declare-fun e!3301235 () Bool)

(declare-fun e!3301232 () Bool)

(assert (=> b!5312721 (= e!3301235 e!3301232)))

(assert (=> b!5312721 (= c!922976 ((_ is Star!14965) lt!2170354))))

(declare-fun b!5312722 () Bool)

(declare-fun e!3301234 () Bool)

(assert (=> b!5312722 (= e!3301235 e!3301234)))

(declare-fun res!2253819 () Bool)

(assert (=> b!5312722 (= res!2253819 (matchRSpec!2068 (regOne!30443 lt!2170354) s!2326))))

(assert (=> b!5312722 (=> res!2253819 e!3301234)))

(declare-fun b!5312723 () Bool)

(declare-fun res!2253818 () Bool)

(declare-fun e!3301231 () Bool)

(assert (=> b!5312723 (=> res!2253818 e!3301231)))

(declare-fun call!378834 () Bool)

(assert (=> b!5312723 (= res!2253818 call!378834)))

(assert (=> b!5312723 (= e!3301232 e!3301231)))

(declare-fun bm!378830 () Bool)

(assert (=> bm!378830 (= call!378834 (isEmpty!33037 s!2326))))

(assert (=> b!5312724 (= e!3301232 call!378835)))

(declare-fun b!5312725 () Bool)

(declare-fun c!922975 () Bool)

(assert (=> b!5312725 (= c!922975 ((_ is ElementMatch!14965) lt!2170354))))

(declare-fun e!3301233 () Bool)

(declare-fun e!3301230 () Bool)

(assert (=> b!5312725 (= e!3301233 e!3301230)))

(declare-fun b!5312726 () Bool)

(assert (=> b!5312726 (= e!3301234 (matchRSpec!2068 (regTwo!30443 lt!2170354) s!2326))))

(declare-fun b!5312727 () Bool)

(assert (=> b!5312727 (= e!3301230 (= s!2326 (Cons!61070 (c!922685 lt!2170354) Nil!61070)))))

(declare-fun d!1707052 () Bool)

(declare-fun c!922977 () Bool)

(assert (=> d!1707052 (= c!922977 ((_ is EmptyExpr!14965) lt!2170354))))

(declare-fun e!3301236 () Bool)

(assert (=> d!1707052 (= (matchRSpec!2068 lt!2170354 s!2326) e!3301236)))

(assert (=> b!5312728 (= e!3301231 call!378835)))

(declare-fun b!5312729 () Bool)

(assert (=> b!5312729 (= e!3301236 e!3301233)))

(declare-fun res!2253817 () Bool)

(assert (=> b!5312729 (= res!2253817 (not ((_ is EmptyLang!14965) lt!2170354)))))

(assert (=> b!5312729 (=> (not res!2253817) (not e!3301233))))

(declare-fun b!5312730 () Bool)

(declare-fun c!922978 () Bool)

(assert (=> b!5312730 (= c!922978 ((_ is Union!14965) lt!2170354))))

(assert (=> b!5312730 (= e!3301230 e!3301235)))

(declare-fun b!5312731 () Bool)

(assert (=> b!5312731 (= e!3301236 call!378834)))

(assert (= (and d!1707052 c!922977) b!5312731))

(assert (= (and d!1707052 (not c!922977)) b!5312729))

(assert (= (and b!5312729 res!2253817) b!5312725))

(assert (= (and b!5312725 c!922975) b!5312727))

(assert (= (and b!5312725 (not c!922975)) b!5312730))

(assert (= (and b!5312730 c!922978) b!5312722))

(assert (= (and b!5312730 (not c!922978)) b!5312721))

(assert (= (and b!5312722 (not res!2253819)) b!5312726))

(assert (= (and b!5312721 c!922976) b!5312723))

(assert (= (and b!5312721 (not c!922976)) b!5312724))

(assert (= (and b!5312723 (not res!2253818)) b!5312728))

(assert (= (or b!5312728 b!5312724) bm!378829))

(assert (= (or b!5312731 b!5312723) bm!378830))

(declare-fun m!6349842 () Bool)

(assert (=> bm!378829 m!6349842))

(declare-fun m!6349844 () Bool)

(assert (=> b!5312722 m!6349844))

(assert (=> bm!378830 m!6349050))

(declare-fun m!6349846 () Bool)

(assert (=> b!5312726 m!6349846))

(assert (=> b!5311810 d!1707052))

(declare-fun d!1707060 () Bool)

(assert (=> d!1707060 (= (matchR!7150 lt!2170350 s!2326) (matchZipper!1209 lt!2170343 s!2326))))

(declare-fun lt!2170554 () Unit!153378)

(assert (=> d!1707060 (= lt!2170554 (choose!39756 lt!2170343 (Cons!61072 lt!2170348 Nil!61072) lt!2170350 s!2326))))

(assert (=> d!1707060 (validRegex!6701 lt!2170350)))

(assert (=> d!1707060 (= (theoremZipperRegexEquiv!375 lt!2170343 (Cons!61072 lt!2170348 Nil!61072) lt!2170350 s!2326) lt!2170554)))

(declare-fun bs!1231835 () Bool)

(assert (= bs!1231835 d!1707060))

(assert (=> bs!1231835 m!6348936))

(assert (=> bs!1231835 m!6348922))

(declare-fun m!6349854 () Bool)

(assert (=> bs!1231835 m!6349854))

(assert (=> bs!1231835 m!6349710))

(assert (=> b!5311810 d!1707060))

(declare-fun b!5312744 () Bool)

(declare-fun e!3301245 () Bool)

(declare-fun lt!2170555 () Bool)

(assert (=> b!5312744 (= e!3301245 (not lt!2170555))))

(declare-fun b!5312745 () Bool)

(declare-fun res!2253830 () Bool)

(declare-fun e!3301247 () Bool)

(assert (=> b!5312745 (=> (not res!2253830) (not e!3301247))))

(assert (=> b!5312745 (= res!2253830 (isEmpty!33037 (tail!10485 s!2326)))))

(declare-fun b!5312746 () Bool)

(declare-fun e!3301246 () Bool)

(declare-fun call!378836 () Bool)

(assert (=> b!5312746 (= e!3301246 (= lt!2170555 call!378836))))

(declare-fun b!5312747 () Bool)

(declare-fun e!3301250 () Bool)

(assert (=> b!5312747 (= e!3301250 (nullable!5134 lt!2170354))))

(declare-fun b!5312749 () Bool)

(assert (=> b!5312749 (= e!3301250 (matchR!7150 (derivativeStep!4157 lt!2170354 (head!11388 s!2326)) (tail!10485 s!2326)))))

(declare-fun b!5312750 () Bool)

(declare-fun res!2253826 () Bool)

(declare-fun e!3301244 () Bool)

(assert (=> b!5312750 (=> res!2253826 e!3301244)))

(assert (=> b!5312750 (= res!2253826 (not (isEmpty!33037 (tail!10485 s!2326))))))

(declare-fun b!5312751 () Bool)

(assert (=> b!5312751 (= e!3301247 (= (head!11388 s!2326) (c!922685 lt!2170354)))))

(declare-fun b!5312752 () Bool)

(declare-fun e!3301248 () Bool)

(assert (=> b!5312752 (= e!3301248 e!3301244)))

(declare-fun res!2253825 () Bool)

(assert (=> b!5312752 (=> res!2253825 e!3301244)))

(assert (=> b!5312752 (= res!2253825 call!378836)))

(declare-fun b!5312753 () Bool)

(declare-fun e!3301249 () Bool)

(assert (=> b!5312753 (= e!3301249 e!3301248)))

(declare-fun res!2253831 () Bool)

(assert (=> b!5312753 (=> (not res!2253831) (not e!3301248))))

(assert (=> b!5312753 (= res!2253831 (not lt!2170555))))

(declare-fun bm!378831 () Bool)

(assert (=> bm!378831 (= call!378836 (isEmpty!33037 s!2326))))

(declare-fun d!1707064 () Bool)

(assert (=> d!1707064 e!3301246))

(declare-fun c!922985 () Bool)

(assert (=> d!1707064 (= c!922985 ((_ is EmptyExpr!14965) lt!2170354))))

(assert (=> d!1707064 (= lt!2170555 e!3301250)))

(declare-fun c!922986 () Bool)

(assert (=> d!1707064 (= c!922986 (isEmpty!33037 s!2326))))

(assert (=> d!1707064 (validRegex!6701 lt!2170354)))

(assert (=> d!1707064 (= (matchR!7150 lt!2170354 s!2326) lt!2170555)))

(declare-fun b!5312748 () Bool)

(declare-fun res!2253828 () Bool)

(assert (=> b!5312748 (=> res!2253828 e!3301249)))

(assert (=> b!5312748 (= res!2253828 (not ((_ is ElementMatch!14965) lt!2170354)))))

(assert (=> b!5312748 (= e!3301245 e!3301249)))

(declare-fun b!5312754 () Bool)

(assert (=> b!5312754 (= e!3301246 e!3301245)))

(declare-fun c!922984 () Bool)

(assert (=> b!5312754 (= c!922984 ((_ is EmptyLang!14965) lt!2170354))))

(declare-fun b!5312755 () Bool)

(declare-fun res!2253827 () Bool)

(assert (=> b!5312755 (=> (not res!2253827) (not e!3301247))))

(assert (=> b!5312755 (= res!2253827 (not call!378836))))

(declare-fun b!5312756 () Bool)

(declare-fun res!2253829 () Bool)

(assert (=> b!5312756 (=> res!2253829 e!3301249)))

(assert (=> b!5312756 (= res!2253829 e!3301247)))

(declare-fun res!2253824 () Bool)

(assert (=> b!5312756 (=> (not res!2253824) (not e!3301247))))

(assert (=> b!5312756 (= res!2253824 lt!2170555)))

(declare-fun b!5312757 () Bool)

(assert (=> b!5312757 (= e!3301244 (not (= (head!11388 s!2326) (c!922685 lt!2170354))))))

(assert (= (and d!1707064 c!922986) b!5312747))

(assert (= (and d!1707064 (not c!922986)) b!5312749))

(assert (= (and d!1707064 c!922985) b!5312746))

(assert (= (and d!1707064 (not c!922985)) b!5312754))

(assert (= (and b!5312754 c!922984) b!5312744))

(assert (= (and b!5312754 (not c!922984)) b!5312748))

(assert (= (and b!5312748 (not res!2253828)) b!5312756))

(assert (= (and b!5312756 res!2253824) b!5312755))

(assert (= (and b!5312755 res!2253827) b!5312745))

(assert (= (and b!5312745 res!2253830) b!5312751))

(assert (= (and b!5312756 (not res!2253829)) b!5312753))

(assert (= (and b!5312753 res!2253831) b!5312752))

(assert (= (and b!5312752 (not res!2253825)) b!5312750))

(assert (= (and b!5312750 (not res!2253826)) b!5312757))

(assert (= (or b!5312746 b!5312752 b!5312755) bm!378831))

(assert (=> d!1707064 m!6349050))

(assert (=> d!1707064 m!6349812))

(assert (=> b!5312750 m!6349054))

(assert (=> b!5312750 m!6349054))

(assert (=> b!5312750 m!6349056))

(assert (=> bm!378831 m!6349050))

(assert (=> b!5312749 m!6349058))

(assert (=> b!5312749 m!6349058))

(declare-fun m!6349856 () Bool)

(assert (=> b!5312749 m!6349856))

(assert (=> b!5312749 m!6349054))

(assert (=> b!5312749 m!6349856))

(assert (=> b!5312749 m!6349054))

(declare-fun m!6349858 () Bool)

(assert (=> b!5312749 m!6349858))

(assert (=> b!5312745 m!6349054))

(assert (=> b!5312745 m!6349054))

(assert (=> b!5312745 m!6349056))

(assert (=> b!5312751 m!6349058))

(assert (=> b!5312757 m!6349058))

(declare-fun m!6349860 () Bool)

(assert (=> b!5312747 m!6349860))

(assert (=> b!5311810 d!1707064))

(declare-fun d!1707066 () Bool)

(assert (=> d!1707066 (= (isDefined!11779 (findConcatSeparation!1490 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 Nil!61070 s!2326 s!2326)) (not (isEmpty!33040 (findConcatSeparation!1490 (regTwo!30442 (regOne!30442 r!7292)) lt!2170370 Nil!61070 s!2326 s!2326))))))

(declare-fun bs!1231836 () Bool)

(assert (= bs!1231836 d!1707066))

(assert (=> bs!1231836 m!6348928))

(declare-fun m!6349862 () Bool)

(assert (=> bs!1231836 m!6349862))

(assert (=> b!5311810 d!1707066))

(declare-fun b!5312758 () Bool)

(declare-fun res!2253834 () Bool)

(declare-fun e!3301253 () Bool)

(assert (=> b!5312758 (=> (not res!2253834) (not e!3301253))))

(declare-fun lt!2170558 () Option!15076)

(assert (=> b!5312758 (= res!2253834 (matchR!7150 lt!2170350 (_2!35467 (get!21004 lt!2170558))))))

(declare-fun b!5312759 () Bool)

(declare-fun lt!2170556 () Unit!153378)

(declare-fun lt!2170557 () Unit!153378)

(assert (=> b!5312759 (= lt!2170556 lt!2170557)))

(assert (=> b!5312759 (= (++!13316 (++!13316 Nil!61070 (Cons!61070 (h!67518 s!2326) Nil!61070)) (t!374399 s!2326)) s!2326)))

(assert (=> b!5312759 (= lt!2170557 (lemmaMoveElementToOtherListKeepsConcatEq!1731 Nil!61070 (h!67518 s!2326) (t!374399 s!2326) s!2326))))

(declare-fun e!3301254 () Option!15076)

(assert (=> b!5312759 (= e!3301254 (findConcatSeparation!1490 (regOne!30442 (regOne!30442 r!7292)) lt!2170350 (++!13316 Nil!61070 (Cons!61070 (h!67518 s!2326) Nil!61070)) (t!374399 s!2326) s!2326))))

(declare-fun b!5312760 () Bool)

(assert (=> b!5312760 (= e!3301253 (= (++!13316 (_1!35467 (get!21004 lt!2170558)) (_2!35467 (get!21004 lt!2170558))) s!2326))))

(declare-fun b!5312761 () Bool)

(declare-fun res!2253836 () Bool)

(assert (=> b!5312761 (=> (not res!2253836) (not e!3301253))))

(assert (=> b!5312761 (= res!2253836 (matchR!7150 (regOne!30442 (regOne!30442 r!7292)) (_1!35467 (get!21004 lt!2170558))))))

(declare-fun b!5312762 () Bool)

(assert (=> b!5312762 (= e!3301254 None!15075)))

(declare-fun b!5312763 () Bool)

(declare-fun e!3301255 () Bool)

(assert (=> b!5312763 (= e!3301255 (matchR!7150 lt!2170350 s!2326))))

(declare-fun b!5312764 () Bool)

(declare-fun e!3301252 () Bool)

(assert (=> b!5312764 (= e!3301252 (not (isDefined!11779 lt!2170558)))))

(declare-fun d!1707068 () Bool)

(assert (=> d!1707068 e!3301252))

(declare-fun res!2253835 () Bool)

(assert (=> d!1707068 (=> res!2253835 e!3301252)))

(assert (=> d!1707068 (= res!2253835 e!3301253)))

(declare-fun res!2253833 () Bool)

(assert (=> d!1707068 (=> (not res!2253833) (not e!3301253))))

(assert (=> d!1707068 (= res!2253833 (isDefined!11779 lt!2170558))))

(declare-fun e!3301251 () Option!15076)

(assert (=> d!1707068 (= lt!2170558 e!3301251)))

(declare-fun c!922990 () Bool)

(assert (=> d!1707068 (= c!922990 e!3301255)))

(declare-fun res!2253832 () Bool)

(assert (=> d!1707068 (=> (not res!2253832) (not e!3301255))))

(assert (=> d!1707068 (= res!2253832 (matchR!7150 (regOne!30442 (regOne!30442 r!7292)) Nil!61070))))

(assert (=> d!1707068 (validRegex!6701 (regOne!30442 (regOne!30442 r!7292)))))

(assert (=> d!1707068 (= (findConcatSeparation!1490 (regOne!30442 (regOne!30442 r!7292)) lt!2170350 Nil!61070 s!2326 s!2326) lt!2170558)))

(declare-fun b!5312765 () Bool)

(assert (=> b!5312765 (= e!3301251 e!3301254)))

(declare-fun c!922989 () Bool)

(assert (=> b!5312765 (= c!922989 ((_ is Nil!61070) s!2326))))

(declare-fun b!5312766 () Bool)

(assert (=> b!5312766 (= e!3301251 (Some!15075 (tuple2!64329 Nil!61070 s!2326)))))

(assert (= (and d!1707068 res!2253832) b!5312763))

(assert (= (and d!1707068 c!922990) b!5312766))

(assert (= (and d!1707068 (not c!922990)) b!5312765))

(assert (= (and b!5312765 c!922989) b!5312762))

(assert (= (and b!5312765 (not c!922989)) b!5312759))

(assert (= (and d!1707068 res!2253833) b!5312761))

(assert (= (and b!5312761 res!2253836) b!5312758))

(assert (= (and b!5312758 res!2253834) b!5312760))

(assert (= (and d!1707068 (not res!2253835)) b!5312764))

(declare-fun m!6349866 () Bool)

(assert (=> b!5312764 m!6349866))

(assert (=> b!5312763 m!6348936))

(assert (=> b!5312759 m!6349176))

(assert (=> b!5312759 m!6349176))

(assert (=> b!5312759 m!6349178))

(assert (=> b!5312759 m!6349180))

(assert (=> b!5312759 m!6349176))

(declare-fun m!6349868 () Bool)

(assert (=> b!5312759 m!6349868))

(declare-fun m!6349870 () Bool)

(assert (=> b!5312760 m!6349870))

(declare-fun m!6349872 () Bool)

(assert (=> b!5312760 m!6349872))

(assert (=> d!1707068 m!6349866))

(declare-fun m!6349874 () Bool)

(assert (=> d!1707068 m!6349874))

(assert (=> d!1707068 m!6349502))

(assert (=> b!5312758 m!6349870))

(declare-fun m!6349876 () Bool)

(assert (=> b!5312758 m!6349876))

(assert (=> b!5312761 m!6349870))

(declare-fun m!6349878 () Bool)

(assert (=> b!5312761 m!6349878))

(assert (=> b!5311810 d!1707068))

(assert (=> b!5311809 d!1706950))

(declare-fun d!1707072 () Bool)

(declare-fun c!922991 () Bool)

(assert (=> d!1707072 (= c!922991 (isEmpty!33037 (t!374399 s!2326)))))

(declare-fun e!3301256 () Bool)

(assert (=> d!1707072 (= (matchZipper!1209 (derivationStepZipper!1208 lt!2170343 (h!67518 s!2326)) (t!374399 s!2326)) e!3301256)))

(declare-fun b!5312769 () Bool)

(assert (=> b!5312769 (= e!3301256 (nullableZipper!1335 (derivationStepZipper!1208 lt!2170343 (h!67518 s!2326))))))

(declare-fun b!5312770 () Bool)

(assert (=> b!5312770 (= e!3301256 (matchZipper!1209 (derivationStepZipper!1208 (derivationStepZipper!1208 lt!2170343 (h!67518 s!2326)) (head!11388 (t!374399 s!2326))) (tail!10485 (t!374399 s!2326))))))

(assert (= (and d!1707072 c!922991) b!5312769))

(assert (= (and d!1707072 (not c!922991)) b!5312770))

(assert (=> d!1707072 m!6348966))

(assert (=> b!5312769 m!6348842))

(declare-fun m!6349880 () Bool)

(assert (=> b!5312769 m!6349880))

(assert (=> b!5312770 m!6348970))

(assert (=> b!5312770 m!6348842))

(assert (=> b!5312770 m!6348970))

(declare-fun m!6349882 () Bool)

(assert (=> b!5312770 m!6349882))

(assert (=> b!5312770 m!6348974))

(assert (=> b!5312770 m!6349882))

(assert (=> b!5312770 m!6348974))

(declare-fun m!6349884 () Bool)

(assert (=> b!5312770 m!6349884))

(assert (=> b!5311789 d!1707072))

(declare-fun bs!1231844 () Bool)

(declare-fun d!1707074 () Bool)

(assert (= bs!1231844 (and d!1707074 b!5311803)))

(declare-fun lambda!270754 () Int)

(assert (=> bs!1231844 (= lambda!270754 lambda!270643)))

(declare-fun bs!1231846 () Bool)

(assert (= bs!1231846 (and d!1707074 d!1706862)))

(assert (=> bs!1231846 (= lambda!270754 lambda!270688)))

(assert (=> d!1707074 true))

(assert (=> d!1707074 (= (derivationStepZipper!1208 lt!2170343 (h!67518 s!2326)) (flatMap!692 lt!2170343 lambda!270754))))

(declare-fun bs!1231847 () Bool)

(assert (= bs!1231847 d!1707074))

(declare-fun m!6349888 () Bool)

(assert (=> bs!1231847 m!6349888))

(assert (=> b!5311789 d!1707074))

(declare-fun b!5312782 () Bool)

(declare-fun e!3301269 () Bool)

(declare-fun call!378845 () Bool)

(assert (=> b!5312782 (= e!3301269 call!378845)))

(declare-fun b!5312783 () Bool)

(declare-fun e!3301268 () Bool)

(declare-fun e!3301267 () Bool)

(assert (=> b!5312783 (= e!3301268 e!3301267)))

(declare-fun c!922998 () Bool)

(assert (=> b!5312783 (= c!922998 ((_ is Star!14965) r!7292))))

(declare-fun bm!378838 () Bool)

(declare-fun c!922997 () Bool)

(assert (=> bm!378838 (= call!378845 (validRegex!6701 (ite c!922997 (regTwo!30443 r!7292) (regTwo!30442 r!7292))))))

(declare-fun b!5312784 () Bool)

(declare-fun res!2253842 () Bool)

(declare-fun e!3301263 () Bool)

(assert (=> b!5312784 (=> res!2253842 e!3301263)))

(assert (=> b!5312784 (= res!2253842 (not ((_ is Concat!23810) r!7292)))))

(declare-fun e!3301266 () Bool)

(assert (=> b!5312784 (= e!3301266 e!3301263)))

(declare-fun b!5312785 () Bool)

(declare-fun e!3301264 () Bool)

(assert (=> b!5312785 (= e!3301263 e!3301264)))

(declare-fun res!2253838 () Bool)

(assert (=> b!5312785 (=> (not res!2253838) (not e!3301264))))

(declare-fun call!378844 () Bool)

(assert (=> b!5312785 (= res!2253838 call!378844)))

(declare-fun bm!378839 () Bool)

(declare-fun call!378843 () Bool)

(assert (=> bm!378839 (= call!378844 call!378843)))

(declare-fun b!5312786 () Bool)

(declare-fun e!3301265 () Bool)

(assert (=> b!5312786 (= e!3301265 call!378843)))

(declare-fun b!5312787 () Bool)

(assert (=> b!5312787 (= e!3301264 call!378845)))

(declare-fun b!5312788 () Bool)

(assert (=> b!5312788 (= e!3301267 e!3301265)))

(declare-fun res!2253840 () Bool)

(assert (=> b!5312788 (= res!2253840 (not (nullable!5134 (reg!15294 r!7292))))))

(assert (=> b!5312788 (=> (not res!2253840) (not e!3301265))))

(declare-fun d!1707078 () Bool)

(declare-fun res!2253839 () Bool)

(assert (=> d!1707078 (=> res!2253839 e!3301268)))

(assert (=> d!1707078 (= res!2253839 ((_ is ElementMatch!14965) r!7292))))

(assert (=> d!1707078 (= (validRegex!6701 r!7292) e!3301268)))

(declare-fun b!5312789 () Bool)

(declare-fun res!2253841 () Bool)

(assert (=> b!5312789 (=> (not res!2253841) (not e!3301269))))

(assert (=> b!5312789 (= res!2253841 call!378844)))

(assert (=> b!5312789 (= e!3301266 e!3301269)))

(declare-fun b!5312790 () Bool)

(assert (=> b!5312790 (= e!3301267 e!3301266)))

(assert (=> b!5312790 (= c!922997 ((_ is Union!14965) r!7292))))

(declare-fun bm!378840 () Bool)

(assert (=> bm!378840 (= call!378843 (validRegex!6701 (ite c!922998 (reg!15294 r!7292) (ite c!922997 (regOne!30443 r!7292) (regOne!30442 r!7292)))))))

(assert (= (and d!1707078 (not res!2253839)) b!5312783))

(assert (= (and b!5312783 c!922998) b!5312788))

(assert (= (and b!5312783 (not c!922998)) b!5312790))

(assert (= (and b!5312788 res!2253840) b!5312786))

(assert (= (and b!5312790 c!922997) b!5312789))

(assert (= (and b!5312790 (not c!922997)) b!5312784))

(assert (= (and b!5312789 res!2253841) b!5312782))

(assert (= (and b!5312784 (not res!2253842)) b!5312785))

(assert (= (and b!5312785 res!2253838) b!5312787))

(assert (= (or b!5312782 b!5312787) bm!378838))

(assert (= (or b!5312789 b!5312785) bm!378839))

(assert (= (or b!5312786 bm!378839) bm!378840))

(declare-fun m!6349890 () Bool)

(assert (=> bm!378838 m!6349890))

(declare-fun m!6349892 () Bool)

(assert (=> b!5312788 m!6349892))

(declare-fun m!6349894 () Bool)

(assert (=> bm!378840 m!6349894))

(assert (=> start!560046 d!1707078))

(declare-fun bs!1231848 () Bool)

(declare-fun d!1707080 () Bool)

(assert (= bs!1231848 (and d!1707080 d!1707002)))

(declare-fun lambda!270755 () Int)

(assert (=> bs!1231848 (= lambda!270755 lambda!270725)))

(declare-fun bs!1231849 () Bool)

(assert (= bs!1231849 (and d!1707080 d!1706822)))

(assert (=> bs!1231849 (= lambda!270755 lambda!270670)))

(declare-fun bs!1231850 () Bool)

(assert (= bs!1231850 (and d!1707080 d!1706898)))

(assert (=> bs!1231850 (= lambda!270755 lambda!270697)))

(declare-fun bs!1231851 () Bool)

(assert (= bs!1231851 (and d!1707080 d!1706976)))

(assert (=> bs!1231851 (= lambda!270755 lambda!270722)))

(declare-fun bs!1231852 () Bool)

(assert (= bs!1231852 (and d!1707080 d!1706816)))

(assert (=> bs!1231852 (= lambda!270755 lambda!270665)))

(declare-fun bs!1231853 () Bool)

(assert (= bs!1231853 (and d!1707080 d!1707014)))

(assert (=> bs!1231853 (= lambda!270755 lambda!270727)))

(declare-fun b!5312791 () Bool)

(declare-fun e!3301270 () Regex!14965)

(declare-fun e!3301272 () Regex!14965)

(assert (=> b!5312791 (= e!3301270 e!3301272)))

(declare-fun c!922999 () Bool)

(assert (=> b!5312791 (= c!922999 ((_ is Cons!61071) (exprs!4849 (h!67520 zl!343))))))

(declare-fun b!5312792 () Bool)

(declare-fun e!3301273 () Bool)

(declare-fun lt!2170559 () Regex!14965)

(assert (=> b!5312792 (= e!3301273 (isEmptyExpr!871 lt!2170559))))

(declare-fun b!5312793 () Bool)

(declare-fun e!3301275 () Bool)

(assert (=> b!5312793 (= e!3301275 (isEmpty!33035 (t!374400 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun b!5312794 () Bool)

(declare-fun e!3301271 () Bool)

(assert (=> b!5312794 (= e!3301271 (isConcat!394 lt!2170559))))

(declare-fun b!5312795 () Bool)

(assert (=> b!5312795 (= e!3301272 (Concat!23810 (h!67519 (exprs!4849 (h!67520 zl!343))) (generalisedConcat!634 (t!374400 (exprs!4849 (h!67520 zl!343))))))))

(declare-fun b!5312796 () Bool)

(assert (=> b!5312796 (= e!3301273 e!3301271)))

(declare-fun c!923000 () Bool)

(assert (=> b!5312796 (= c!923000 (isEmpty!33035 (tail!10487 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun b!5312797 () Bool)

(assert (=> b!5312797 (= e!3301270 (h!67519 (exprs!4849 (h!67520 zl!343))))))

(declare-fun e!3301274 () Bool)

(assert (=> d!1707080 e!3301274))

(declare-fun res!2253843 () Bool)

(assert (=> d!1707080 (=> (not res!2253843) (not e!3301274))))

(assert (=> d!1707080 (= res!2253843 (validRegex!6701 lt!2170559))))

(assert (=> d!1707080 (= lt!2170559 e!3301270)))

(declare-fun c!923002 () Bool)

(assert (=> d!1707080 (= c!923002 e!3301275)))

(declare-fun res!2253844 () Bool)

(assert (=> d!1707080 (=> (not res!2253844) (not e!3301275))))

(assert (=> d!1707080 (= res!2253844 ((_ is Cons!61071) (exprs!4849 (h!67520 zl!343))))))

(assert (=> d!1707080 (forall!14385 (exprs!4849 (h!67520 zl!343)) lambda!270755)))

(assert (=> d!1707080 (= (generalisedConcat!634 (exprs!4849 (h!67520 zl!343))) lt!2170559)))

(declare-fun b!5312798 () Bool)

(assert (=> b!5312798 (= e!3301274 e!3301273)))

(declare-fun c!923001 () Bool)

(assert (=> b!5312798 (= c!923001 (isEmpty!33035 (exprs!4849 (h!67520 zl!343))))))

(declare-fun b!5312799 () Bool)

(assert (=> b!5312799 (= e!3301271 (= lt!2170559 (head!11390 (exprs!4849 (h!67520 zl!343)))))))

(declare-fun b!5312800 () Bool)

(assert (=> b!5312800 (= e!3301272 EmptyExpr!14965)))

(assert (= (and d!1707080 res!2253844) b!5312793))

(assert (= (and d!1707080 c!923002) b!5312797))

(assert (= (and d!1707080 (not c!923002)) b!5312791))

(assert (= (and b!5312791 c!922999) b!5312795))

(assert (= (and b!5312791 (not c!922999)) b!5312800))

(assert (= (and d!1707080 res!2253843) b!5312798))

(assert (= (and b!5312798 c!923001) b!5312792))

(assert (= (and b!5312798 (not c!923001)) b!5312796))

(assert (= (and b!5312796 c!923000) b!5312799))

(assert (= (and b!5312796 (not c!923000)) b!5312794))

(declare-fun m!6349904 () Bool)

(assert (=> b!5312798 m!6349904))

(assert (=> b!5312795 m!6348946))

(assert (=> b!5312793 m!6348846))

(declare-fun m!6349906 () Bool)

(assert (=> b!5312796 m!6349906))

(assert (=> b!5312796 m!6349906))

(declare-fun m!6349908 () Bool)

(assert (=> b!5312796 m!6349908))

(declare-fun m!6349910 () Bool)

(assert (=> d!1707080 m!6349910))

(declare-fun m!6349912 () Bool)

(assert (=> d!1707080 m!6349912))

(declare-fun m!6349914 () Bool)

(assert (=> b!5312792 m!6349914))

(declare-fun m!6349916 () Bool)

(assert (=> b!5312799 m!6349916))

(declare-fun m!6349920 () Bool)

(assert (=> b!5312794 m!6349920))

(assert (=> b!5311788 d!1707080))

(declare-fun bm!378847 () Bool)

(declare-fun call!378857 () (InoxSet Context!8698))

(declare-fun call!378856 () (InoxSet Context!8698))

(assert (=> bm!378847 (= call!378857 call!378856)))

(declare-fun bm!378848 () Bool)

(declare-fun call!378853 () List!61195)

(declare-fun call!378855 () List!61195)

(assert (=> bm!378848 (= call!378853 call!378855)))

(declare-fun b!5312812 () Bool)

(declare-fun e!3301283 () (InoxSet Context!8698))

(declare-fun call!378854 () (InoxSet Context!8698))

(declare-fun call!378852 () (InoxSet Context!8698))

(assert (=> b!5312812 (= e!3301283 ((_ map or) call!378854 call!378852))))

(declare-fun b!5312813 () Bool)

(declare-fun c!923011 () Bool)

(assert (=> b!5312813 (= c!923011 ((_ is Star!14965) (regTwo!30442 (regOne!30442 r!7292))))))

(declare-fun e!3301284 () (InoxSet Context!8698))

(declare-fun e!3301287 () (InoxSet Context!8698))

(assert (=> b!5312813 (= e!3301284 e!3301287)))

(declare-fun d!1707084 () Bool)

(declare-fun c!923009 () Bool)

(assert (=> d!1707084 (= c!923009 (and ((_ is ElementMatch!14965) (regTwo!30442 (regOne!30442 r!7292))) (= (c!922685 (regTwo!30442 (regOne!30442 r!7292))) (h!67518 s!2326))))))

(declare-fun e!3301282 () (InoxSet Context!8698))

(assert (=> d!1707084 (= (derivationStepZipperDown!413 (regTwo!30442 (regOne!30442 r!7292)) lt!2170335 (h!67518 s!2326)) e!3301282)))

(declare-fun b!5312814 () Bool)

(assert (=> b!5312814 (= e!3301287 call!378857)))

(declare-fun c!923008 () Bool)

(declare-fun bm!378849 () Bool)

(declare-fun c!923010 () Bool)

(assert (=> bm!378849 (= call!378855 ($colon$colon!1386 (exprs!4849 lt!2170335) (ite (or c!923010 c!923008) (regTwo!30442 (regTwo!30442 (regOne!30442 r!7292))) (regTwo!30442 (regOne!30442 r!7292)))))))

(declare-fun b!5312815 () Bool)

(declare-fun e!3301285 () (InoxSet Context!8698))

(assert (=> b!5312815 (= e!3301285 e!3301284)))

(assert (=> b!5312815 (= c!923008 ((_ is Concat!23810) (regTwo!30442 (regOne!30442 r!7292))))))

(declare-fun b!5312816 () Bool)

(declare-fun e!3301286 () Bool)

(assert (=> b!5312816 (= e!3301286 (nullable!5134 (regOne!30442 (regTwo!30442 (regOne!30442 r!7292)))))))

(declare-fun b!5312817 () Bool)

(assert (=> b!5312817 (= e!3301282 (store ((as const (Array Context!8698 Bool)) false) lt!2170335 true))))

(declare-fun bm!378850 () Bool)

(assert (=> bm!378850 (= call!378856 call!378852)))

(declare-fun bm!378851 () Bool)

(declare-fun c!923012 () Bool)

(assert (=> bm!378851 (= call!378852 (derivationStepZipperDown!413 (ite c!923012 (regTwo!30443 (regTwo!30442 (regOne!30442 r!7292))) (ite c!923010 (regTwo!30442 (regTwo!30442 (regOne!30442 r!7292))) (ite c!923008 (regOne!30442 (regTwo!30442 (regOne!30442 r!7292))) (reg!15294 (regTwo!30442 (regOne!30442 r!7292)))))) (ite (or c!923012 c!923010) lt!2170335 (Context!8699 call!378853)) (h!67518 s!2326)))))

(declare-fun b!5312818 () Bool)

(assert (=> b!5312818 (= e!3301282 e!3301283)))

(assert (=> b!5312818 (= c!923012 ((_ is Union!14965) (regTwo!30442 (regOne!30442 r!7292))))))

(declare-fun b!5312819 () Bool)

(assert (=> b!5312819 (= e!3301285 ((_ map or) call!378854 call!378856))))

(declare-fun b!5312820 () Bool)

(assert (=> b!5312820 (= e!3301284 call!378857)))

(declare-fun b!5312821 () Bool)

(assert (=> b!5312821 (= e!3301287 ((as const (Array Context!8698 Bool)) false))))

(declare-fun bm!378852 () Bool)

(assert (=> bm!378852 (= call!378854 (derivationStepZipperDown!413 (ite c!923012 (regOne!30443 (regTwo!30442 (regOne!30442 r!7292))) (regOne!30442 (regTwo!30442 (regOne!30442 r!7292)))) (ite c!923012 lt!2170335 (Context!8699 call!378855)) (h!67518 s!2326)))))

(declare-fun b!5312822 () Bool)

(assert (=> b!5312822 (= c!923010 e!3301286)))

(declare-fun res!2253846 () Bool)

(assert (=> b!5312822 (=> (not res!2253846) (not e!3301286))))

(assert (=> b!5312822 (= res!2253846 ((_ is Concat!23810) (regTwo!30442 (regOne!30442 r!7292))))))

(assert (=> b!5312822 (= e!3301283 e!3301285)))

(assert (= (and d!1707084 c!923009) b!5312817))

(assert (= (and d!1707084 (not c!923009)) b!5312818))

(assert (= (and b!5312818 c!923012) b!5312812))

(assert (= (and b!5312818 (not c!923012)) b!5312822))

(assert (= (and b!5312822 res!2253846) b!5312816))

(assert (= (and b!5312822 c!923010) b!5312819))

(assert (= (and b!5312822 (not c!923010)) b!5312815))

(assert (= (and b!5312815 c!923008) b!5312820))

(assert (= (and b!5312815 (not c!923008)) b!5312813))

(assert (= (and b!5312813 c!923011) b!5312814))

(assert (= (and b!5312813 (not c!923011)) b!5312821))

(assert (= (or b!5312820 b!5312814) bm!378848))

(assert (= (or b!5312820 b!5312814) bm!378847))

(assert (= (or b!5312819 bm!378848) bm!378849))

(assert (= (or b!5312819 bm!378847) bm!378850))

(assert (= (or b!5312812 bm!378850) bm!378851))

(assert (= (or b!5312812 b!5312819) bm!378852))

(assert (=> b!5312817 m!6349410))

(declare-fun m!6349936 () Bool)

(assert (=> bm!378851 m!6349936))

(declare-fun m!6349938 () Bool)

(assert (=> b!5312816 m!6349938))

(declare-fun m!6349940 () Bool)

(assert (=> bm!378849 m!6349940))

(declare-fun m!6349942 () Bool)

(assert (=> bm!378852 m!6349942))

(assert (=> b!5311808 d!1707084))

(declare-fun bm!378853 () Bool)

(declare-fun call!378863 () (InoxSet Context!8698))

(declare-fun call!378862 () (InoxSet Context!8698))

(assert (=> bm!378853 (= call!378863 call!378862)))

(declare-fun bm!378854 () Bool)

(declare-fun call!378859 () List!61195)

(declare-fun call!378861 () List!61195)

(assert (=> bm!378854 (= call!378859 call!378861)))

(declare-fun b!5312836 () Bool)

(declare-fun e!3301297 () (InoxSet Context!8698))

(declare-fun call!378860 () (InoxSet Context!8698))

(declare-fun call!378858 () (InoxSet Context!8698))

(assert (=> b!5312836 (= e!3301297 ((_ map or) call!378860 call!378858))))

(declare-fun b!5312837 () Bool)

(declare-fun c!923021 () Bool)

(assert (=> b!5312837 (= c!923021 ((_ is Star!14965) (regOne!30442 (regOne!30442 r!7292))))))

(declare-fun e!3301298 () (InoxSet Context!8698))

(declare-fun e!3301301 () (InoxSet Context!8698))

(assert (=> b!5312837 (= e!3301298 e!3301301)))

(declare-fun d!1707092 () Bool)

(declare-fun c!923019 () Bool)

(assert (=> d!1707092 (= c!923019 (and ((_ is ElementMatch!14965) (regOne!30442 (regOne!30442 r!7292))) (= (c!922685 (regOne!30442 (regOne!30442 r!7292))) (h!67518 s!2326))))))

(declare-fun e!3301296 () (InoxSet Context!8698))

(assert (=> d!1707092 (= (derivationStepZipperDown!413 (regOne!30442 (regOne!30442 r!7292)) lt!2170348 (h!67518 s!2326)) e!3301296)))

(declare-fun b!5312838 () Bool)

(assert (=> b!5312838 (= e!3301301 call!378863)))

(declare-fun bm!378855 () Bool)

(declare-fun c!923020 () Bool)

(declare-fun c!923018 () Bool)

(assert (=> bm!378855 (= call!378861 ($colon$colon!1386 (exprs!4849 lt!2170348) (ite (or c!923020 c!923018) (regTwo!30442 (regOne!30442 (regOne!30442 r!7292))) (regOne!30442 (regOne!30442 r!7292)))))))

(declare-fun b!5312839 () Bool)

(declare-fun e!3301299 () (InoxSet Context!8698))

(assert (=> b!5312839 (= e!3301299 e!3301298)))

(assert (=> b!5312839 (= c!923018 ((_ is Concat!23810) (regOne!30442 (regOne!30442 r!7292))))))

(declare-fun b!5312840 () Bool)

(declare-fun e!3301300 () Bool)

(assert (=> b!5312840 (= e!3301300 (nullable!5134 (regOne!30442 (regOne!30442 (regOne!30442 r!7292)))))))

(declare-fun b!5312841 () Bool)

(assert (=> b!5312841 (= e!3301296 (store ((as const (Array Context!8698 Bool)) false) lt!2170348 true))))

(declare-fun bm!378856 () Bool)

(assert (=> bm!378856 (= call!378862 call!378858)))

(declare-fun c!923022 () Bool)

(declare-fun bm!378857 () Bool)

(assert (=> bm!378857 (= call!378858 (derivationStepZipperDown!413 (ite c!923022 (regTwo!30443 (regOne!30442 (regOne!30442 r!7292))) (ite c!923020 (regTwo!30442 (regOne!30442 (regOne!30442 r!7292))) (ite c!923018 (regOne!30442 (regOne!30442 (regOne!30442 r!7292))) (reg!15294 (regOne!30442 (regOne!30442 r!7292)))))) (ite (or c!923022 c!923020) lt!2170348 (Context!8699 call!378859)) (h!67518 s!2326)))))

(declare-fun b!5312842 () Bool)

(assert (=> b!5312842 (= e!3301296 e!3301297)))

(assert (=> b!5312842 (= c!923022 ((_ is Union!14965) (regOne!30442 (regOne!30442 r!7292))))))

(declare-fun b!5312843 () Bool)

(assert (=> b!5312843 (= e!3301299 ((_ map or) call!378860 call!378862))))

(declare-fun b!5312844 () Bool)

(assert (=> b!5312844 (= e!3301298 call!378863)))

(declare-fun b!5312845 () Bool)

(assert (=> b!5312845 (= e!3301301 ((as const (Array Context!8698 Bool)) false))))

(declare-fun bm!378858 () Bool)

(assert (=> bm!378858 (= call!378860 (derivationStepZipperDown!413 (ite c!923022 (regOne!30443 (regOne!30442 (regOne!30442 r!7292))) (regOne!30442 (regOne!30442 (regOne!30442 r!7292)))) (ite c!923022 lt!2170348 (Context!8699 call!378861)) (h!67518 s!2326)))))

(declare-fun b!5312846 () Bool)

(assert (=> b!5312846 (= c!923020 e!3301300)))

(declare-fun res!2253850 () Bool)

(assert (=> b!5312846 (=> (not res!2253850) (not e!3301300))))

(assert (=> b!5312846 (= res!2253850 ((_ is Concat!23810) (regOne!30442 (regOne!30442 r!7292))))))

(assert (=> b!5312846 (= e!3301297 e!3301299)))

(assert (= (and d!1707092 c!923019) b!5312841))

(assert (= (and d!1707092 (not c!923019)) b!5312842))

(assert (= (and b!5312842 c!923022) b!5312836))

(assert (= (and b!5312842 (not c!923022)) b!5312846))

(assert (= (and b!5312846 res!2253850) b!5312840))

(assert (= (and b!5312846 c!923020) b!5312843))

(assert (= (and b!5312846 (not c!923020)) b!5312839))

(assert (= (and b!5312839 c!923018) b!5312844))

(assert (= (and b!5312839 (not c!923018)) b!5312837))

(assert (= (and b!5312837 c!923021) b!5312838))

(assert (= (and b!5312837 (not c!923021)) b!5312845))

(assert (= (or b!5312844 b!5312838) bm!378854))

(assert (= (or b!5312844 b!5312838) bm!378853))

(assert (= (or b!5312843 bm!378854) bm!378855))

(assert (= (or b!5312843 bm!378853) bm!378856))

(assert (= (or b!5312836 bm!378856) bm!378857))

(assert (= (or b!5312836 b!5312843) bm!378858))

(assert (=> b!5312841 m!6348816))

(declare-fun m!6349944 () Bool)

(assert (=> bm!378857 m!6349944))

(declare-fun m!6349946 () Bool)

(assert (=> b!5312840 m!6349946))

(declare-fun m!6349948 () Bool)

(assert (=> bm!378855 m!6349948))

(declare-fun m!6349952 () Bool)

(assert (=> bm!378858 m!6349952))

(assert (=> b!5311808 d!1707092))

(declare-fun bs!1231860 () Bool)

(declare-fun d!1707094 () Bool)

(assert (= bs!1231860 (and d!1707094 d!1707002)))

(declare-fun lambda!270757 () Int)

(assert (=> bs!1231860 (= lambda!270757 lambda!270725)))

(declare-fun bs!1231861 () Bool)

(assert (= bs!1231861 (and d!1707094 d!1707080)))

(assert (=> bs!1231861 (= lambda!270757 lambda!270755)))

(declare-fun bs!1231862 () Bool)

(assert (= bs!1231862 (and d!1707094 d!1706822)))

(assert (=> bs!1231862 (= lambda!270757 lambda!270670)))

(declare-fun bs!1231863 () Bool)

(assert (= bs!1231863 (and d!1707094 d!1706898)))

(assert (=> bs!1231863 (= lambda!270757 lambda!270697)))

(declare-fun bs!1231864 () Bool)

(assert (= bs!1231864 (and d!1707094 d!1706976)))

(assert (=> bs!1231864 (= lambda!270757 lambda!270722)))

(declare-fun bs!1231865 () Bool)

(assert (= bs!1231865 (and d!1707094 d!1706816)))

(assert (=> bs!1231865 (= lambda!270757 lambda!270665)))

(declare-fun bs!1231866 () Bool)

(assert (= bs!1231866 (and d!1707094 d!1707014)))

(assert (=> bs!1231866 (= lambda!270757 lambda!270727)))

(assert (=> d!1707094 (= (inv!80659 setElem!34157) (forall!14385 (exprs!4849 setElem!34157) lambda!270757))))

(declare-fun bs!1231867 () Bool)

(assert (= bs!1231867 d!1707094))

(declare-fun m!6349968 () Bool)

(assert (=> bs!1231867 m!6349968))

(assert (=> setNonEmpty!34157 d!1707094))

(declare-fun bs!1231868 () Bool)

(declare-fun b!5312854 () Bool)

(assert (= bs!1231868 (and b!5312854 d!1707036)))

(declare-fun lambda!270758 () Int)

(assert (=> bs!1231868 (not (= lambda!270758 lambda!270733))))

(declare-fun bs!1231869 () Bool)

(assert (= bs!1231869 (and b!5312854 d!1706990)))

(assert (=> bs!1231869 (not (= lambda!270758 lambda!270724))))

(declare-fun bs!1231870 () Bool)

(assert (= bs!1231870 (and b!5312854 d!1706844)))

(assert (=> bs!1231870 (not (= lambda!270758 lambda!270682))))

(declare-fun bs!1231871 () Bool)

(assert (= bs!1231871 (and b!5312854 b!5311796)))

(assert (=> bs!1231871 (not (= lambda!270758 lambda!270641))))

(assert (=> bs!1231870 (not (= lambda!270758 lambda!270683))))

(declare-fun bs!1231872 () Bool)

(assert (= bs!1231872 (and b!5312854 b!5311810)))

(assert (=> bs!1231872 (not (= lambda!270758 lambda!270646))))

(declare-fun bs!1231873 () Bool)

(assert (= bs!1231873 (and b!5312854 b!5312560)))

(assert (=> bs!1231873 (not (= lambda!270758 lambda!270715))))

(assert (=> bs!1231871 (not (= lambda!270758 lambda!270642))))

(declare-fun bs!1231874 () Bool)

(assert (= bs!1231874 (and b!5312854 b!5312564)))

(assert (=> bs!1231874 (= (and (= (reg!15294 r!7292) (reg!15294 lt!2170350)) (= r!7292 lt!2170350)) (= lambda!270758 lambda!270714))))

(assert (=> bs!1231872 (not (= lambda!270758 lambda!270644))))

(declare-fun bs!1231875 () Bool)

(assert (= bs!1231875 (and b!5312854 b!5312728)))

(assert (=> bs!1231875 (= (and (= (reg!15294 r!7292) (reg!15294 lt!2170354)) (= r!7292 lt!2170354)) (= lambda!270758 lambda!270740))))

(declare-fun bs!1231876 () Bool)

(assert (= bs!1231876 (and b!5312854 d!1706838)))

(assert (=> bs!1231876 (not (= lambda!270758 lambda!270677))))

(assert (=> bs!1231872 (not (= lambda!270758 lambda!270645))))

(assert (=> bs!1231868 (not (= lambda!270758 lambda!270732))))

(declare-fun bs!1231877 () Bool)

(assert (= bs!1231877 (and b!5312854 d!1707016)))

(assert (=> bs!1231877 (not (= lambda!270758 lambda!270729))))

(assert (=> bs!1231872 (not (= lambda!270758 lambda!270647))))

(declare-fun bs!1231878 () Bool)

(assert (= bs!1231878 (and b!5312854 b!5312724)))

(assert (=> bs!1231878 (not (= lambda!270758 lambda!270744))))

(declare-fun bs!1231879 () Bool)

(assert (= bs!1231879 (and b!5312854 d!1707020)))

(assert (=> bs!1231879 (not (= lambda!270758 lambda!270731))))

(assert (=> bs!1231877 (not (= lambda!270758 lambda!270730))))

(assert (=> b!5312854 true))

(assert (=> b!5312854 true))

(declare-fun bs!1231880 () Bool)

(declare-fun b!5312850 () Bool)

(assert (= bs!1231880 (and b!5312850 d!1707036)))

(declare-fun lambda!270759 () Int)

(assert (=> bs!1231880 (= (and (= (regOne!30442 r!7292) (regOne!30442 (regOne!30442 r!7292))) (= (regTwo!30442 r!7292) lt!2170350)) (= lambda!270759 lambda!270733))))

(declare-fun bs!1231881 () Bool)

(assert (= bs!1231881 (and b!5312850 d!1706990)))

(assert (=> bs!1231881 (not (= lambda!270759 lambda!270724))))

(declare-fun bs!1231882 () Bool)

(assert (= bs!1231882 (and b!5312850 d!1706844)))

(assert (=> bs!1231882 (not (= lambda!270759 lambda!270682))))

(declare-fun bs!1231883 () Bool)

(assert (= bs!1231883 (and b!5312850 b!5311796)))

(assert (=> bs!1231883 (not (= lambda!270759 lambda!270641))))

(assert (=> bs!1231882 (= lambda!270759 lambda!270683)))

(declare-fun bs!1231884 () Bool)

(assert (= bs!1231884 (and b!5312850 b!5311810)))

(assert (=> bs!1231884 (not (= lambda!270759 lambda!270646))))

(declare-fun bs!1231885 () Bool)

(assert (= bs!1231885 (and b!5312850 b!5312560)))

(assert (=> bs!1231885 (= (and (= (regOne!30442 r!7292) (regOne!30442 lt!2170350)) (= (regTwo!30442 r!7292) (regTwo!30442 lt!2170350))) (= lambda!270759 lambda!270715))))

(assert (=> bs!1231883 (= lambda!270759 lambda!270642)))

(declare-fun bs!1231886 () Bool)

(assert (= bs!1231886 (and b!5312850 b!5312564)))

(assert (=> bs!1231886 (not (= lambda!270759 lambda!270714))))

(assert (=> bs!1231884 (not (= lambda!270759 lambda!270644))))

(declare-fun bs!1231887 () Bool)

(assert (= bs!1231887 (and b!5312850 b!5312728)))

(assert (=> bs!1231887 (not (= lambda!270759 lambda!270740))))

(declare-fun bs!1231888 () Bool)

(assert (= bs!1231888 (and b!5312850 d!1706838)))

(assert (=> bs!1231888 (not (= lambda!270759 lambda!270677))))

(assert (=> bs!1231884 (= (and (= (regOne!30442 r!7292) (regOne!30442 (regOne!30442 r!7292))) (= (regTwo!30442 r!7292) lt!2170350)) (= lambda!270759 lambda!270645))))

(assert (=> bs!1231880 (not (= lambda!270759 lambda!270732))))

(declare-fun bs!1231890 () Bool)

(assert (= bs!1231890 (and b!5312850 b!5312854)))

(assert (=> bs!1231890 (not (= lambda!270759 lambda!270758))))

(declare-fun bs!1231892 () Bool)

(assert (= bs!1231892 (and b!5312850 d!1707016)))

(assert (=> bs!1231892 (not (= lambda!270759 lambda!270729))))

(assert (=> bs!1231884 (= (and (= (regOne!30442 r!7292) (regTwo!30442 (regOne!30442 r!7292))) (= (regTwo!30442 r!7292) lt!2170370)) (= lambda!270759 lambda!270647))))

(declare-fun bs!1231896 () Bool)

(assert (= bs!1231896 (and b!5312850 b!5312724)))

(assert (=> bs!1231896 (= (and (= (regOne!30442 r!7292) (regOne!30442 lt!2170354)) (= (regTwo!30442 r!7292) (regTwo!30442 lt!2170354))) (= lambda!270759 lambda!270744))))

(declare-fun bs!1231899 () Bool)

(assert (= bs!1231899 (and b!5312850 d!1707020)))

(assert (=> bs!1231899 (not (= lambda!270759 lambda!270731))))

(assert (=> bs!1231892 (= (and (= (regOne!30442 r!7292) (regTwo!30442 (regOne!30442 r!7292))) (= (regTwo!30442 r!7292) lt!2170370)) (= lambda!270759 lambda!270730))))

(assert (=> b!5312850 true))

(assert (=> b!5312850 true))

(declare-fun bm!378859 () Bool)

(declare-fun c!923024 () Bool)

(declare-fun call!378865 () Bool)

(assert (=> bm!378859 (= call!378865 (Exists!2146 (ite c!923024 lambda!270758 lambda!270759)))))

(declare-fun b!5312847 () Bool)

(declare-fun e!3301307 () Bool)

(declare-fun e!3301304 () Bool)

(assert (=> b!5312847 (= e!3301307 e!3301304)))

(assert (=> b!5312847 (= c!923024 ((_ is Star!14965) r!7292))))

(declare-fun b!5312848 () Bool)

(declare-fun e!3301306 () Bool)

(assert (=> b!5312848 (= e!3301307 e!3301306)))

(declare-fun res!2253853 () Bool)

(assert (=> b!5312848 (= res!2253853 (matchRSpec!2068 (regOne!30443 r!7292) s!2326))))

(assert (=> b!5312848 (=> res!2253853 e!3301306)))

(declare-fun b!5312849 () Bool)

(declare-fun res!2253852 () Bool)

(declare-fun e!3301303 () Bool)

(assert (=> b!5312849 (=> res!2253852 e!3301303)))

(declare-fun call!378864 () Bool)

(assert (=> b!5312849 (= res!2253852 call!378864)))

(assert (=> b!5312849 (= e!3301304 e!3301303)))

(declare-fun bm!378860 () Bool)

(assert (=> bm!378860 (= call!378864 (isEmpty!33037 s!2326))))

(assert (=> b!5312850 (= e!3301304 call!378865)))

(declare-fun b!5312851 () Bool)

(declare-fun c!923023 () Bool)

(assert (=> b!5312851 (= c!923023 ((_ is ElementMatch!14965) r!7292))))

(declare-fun e!3301305 () Bool)

(declare-fun e!3301302 () Bool)

(assert (=> b!5312851 (= e!3301305 e!3301302)))

(declare-fun b!5312852 () Bool)

(assert (=> b!5312852 (= e!3301306 (matchRSpec!2068 (regTwo!30443 r!7292) s!2326))))

(declare-fun b!5312853 () Bool)

(assert (=> b!5312853 (= e!3301302 (= s!2326 (Cons!61070 (c!922685 r!7292) Nil!61070)))))

(declare-fun d!1707098 () Bool)

(declare-fun c!923025 () Bool)

(assert (=> d!1707098 (= c!923025 ((_ is EmptyExpr!14965) r!7292))))

(declare-fun e!3301308 () Bool)

(assert (=> d!1707098 (= (matchRSpec!2068 r!7292 s!2326) e!3301308)))

(assert (=> b!5312854 (= e!3301303 call!378865)))

(declare-fun b!5312855 () Bool)

(assert (=> b!5312855 (= e!3301308 e!3301305)))

(declare-fun res!2253851 () Bool)

(assert (=> b!5312855 (= res!2253851 (not ((_ is EmptyLang!14965) r!7292)))))

(assert (=> b!5312855 (=> (not res!2253851) (not e!3301305))))

(declare-fun b!5312856 () Bool)

(declare-fun c!923026 () Bool)

(assert (=> b!5312856 (= c!923026 ((_ is Union!14965) r!7292))))

(assert (=> b!5312856 (= e!3301302 e!3301307)))

(declare-fun b!5312857 () Bool)

(assert (=> b!5312857 (= e!3301308 call!378864)))

(assert (= (and d!1707098 c!923025) b!5312857))

(assert (= (and d!1707098 (not c!923025)) b!5312855))

(assert (= (and b!5312855 res!2253851) b!5312851))

(assert (= (and b!5312851 c!923023) b!5312853))

(assert (= (and b!5312851 (not c!923023)) b!5312856))

(assert (= (and b!5312856 c!923026) b!5312848))

(assert (= (and b!5312856 (not c!923026)) b!5312847))

(assert (= (and b!5312848 (not res!2253853)) b!5312852))

(assert (= (and b!5312847 c!923024) b!5312849))

(assert (= (and b!5312847 (not c!923024)) b!5312850))

(assert (= (and b!5312849 (not res!2253852)) b!5312854))

(assert (= (or b!5312854 b!5312850) bm!378859))

(assert (= (or b!5312857 b!5312849) bm!378860))

(declare-fun m!6349990 () Bool)

(assert (=> bm!378859 m!6349990))

(declare-fun m!6349992 () Bool)

(assert (=> b!5312848 m!6349992))

(assert (=> bm!378860 m!6349050))

(declare-fun m!6349994 () Bool)

(assert (=> b!5312852 m!6349994))

(assert (=> b!5311811 d!1707098))

(declare-fun b!5312880 () Bool)

(declare-fun e!3301321 () Bool)

(declare-fun lt!2170568 () Bool)

(assert (=> b!5312880 (= e!3301321 (not lt!2170568))))

(declare-fun b!5312881 () Bool)

(declare-fun res!2253868 () Bool)

(declare-fun e!3301323 () Bool)

(assert (=> b!5312881 (=> (not res!2253868) (not e!3301323))))

(assert (=> b!5312881 (= res!2253868 (isEmpty!33037 (tail!10485 s!2326)))))

(declare-fun b!5312882 () Bool)

(declare-fun e!3301322 () Bool)

(declare-fun call!378867 () Bool)

(assert (=> b!5312882 (= e!3301322 (= lt!2170568 call!378867))))

(declare-fun b!5312883 () Bool)

(declare-fun e!3301326 () Bool)

(assert (=> b!5312883 (= e!3301326 (nullable!5134 r!7292))))

(declare-fun b!5312885 () Bool)

(assert (=> b!5312885 (= e!3301326 (matchR!7150 (derivativeStep!4157 r!7292 (head!11388 s!2326)) (tail!10485 s!2326)))))

(declare-fun b!5312886 () Bool)

(declare-fun res!2253864 () Bool)

(declare-fun e!3301320 () Bool)

(assert (=> b!5312886 (=> res!2253864 e!3301320)))

(assert (=> b!5312886 (= res!2253864 (not (isEmpty!33037 (tail!10485 s!2326))))))

(declare-fun b!5312887 () Bool)

(assert (=> b!5312887 (= e!3301323 (= (head!11388 s!2326) (c!922685 r!7292)))))

(declare-fun b!5312888 () Bool)

(declare-fun e!3301324 () Bool)

(assert (=> b!5312888 (= e!3301324 e!3301320)))

(declare-fun res!2253863 () Bool)

(assert (=> b!5312888 (=> res!2253863 e!3301320)))

(assert (=> b!5312888 (= res!2253863 call!378867)))

(declare-fun b!5312889 () Bool)

(declare-fun e!3301325 () Bool)

(assert (=> b!5312889 (= e!3301325 e!3301324)))

(declare-fun res!2253869 () Bool)

(assert (=> b!5312889 (=> (not res!2253869) (not e!3301324))))

(assert (=> b!5312889 (= res!2253869 (not lt!2170568))))

(declare-fun bm!378862 () Bool)

(assert (=> bm!378862 (= call!378867 (isEmpty!33037 s!2326))))

(declare-fun d!1707112 () Bool)

(assert (=> d!1707112 e!3301322))

(declare-fun c!923036 () Bool)

(assert (=> d!1707112 (= c!923036 ((_ is EmptyExpr!14965) r!7292))))

(assert (=> d!1707112 (= lt!2170568 e!3301326)))

(declare-fun c!923037 () Bool)

(assert (=> d!1707112 (= c!923037 (isEmpty!33037 s!2326))))

(assert (=> d!1707112 (validRegex!6701 r!7292)))

(assert (=> d!1707112 (= (matchR!7150 r!7292 s!2326) lt!2170568)))

(declare-fun b!5312884 () Bool)

(declare-fun res!2253866 () Bool)

(assert (=> b!5312884 (=> res!2253866 e!3301325)))

(assert (=> b!5312884 (= res!2253866 (not ((_ is ElementMatch!14965) r!7292)))))

(assert (=> b!5312884 (= e!3301321 e!3301325)))

(declare-fun b!5312890 () Bool)

(assert (=> b!5312890 (= e!3301322 e!3301321)))

(declare-fun c!923035 () Bool)

(assert (=> b!5312890 (= c!923035 ((_ is EmptyLang!14965) r!7292))))

(declare-fun b!5312891 () Bool)

(declare-fun res!2253865 () Bool)

(assert (=> b!5312891 (=> (not res!2253865) (not e!3301323))))

(assert (=> b!5312891 (= res!2253865 (not call!378867))))

(declare-fun b!5312892 () Bool)

(declare-fun res!2253867 () Bool)

(assert (=> b!5312892 (=> res!2253867 e!3301325)))

(assert (=> b!5312892 (= res!2253867 e!3301323)))

(declare-fun res!2253862 () Bool)

(assert (=> b!5312892 (=> (not res!2253862) (not e!3301323))))

(assert (=> b!5312892 (= res!2253862 lt!2170568)))

(declare-fun b!5312893 () Bool)

(assert (=> b!5312893 (= e!3301320 (not (= (head!11388 s!2326) (c!922685 r!7292))))))

(assert (= (and d!1707112 c!923037) b!5312883))

(assert (= (and d!1707112 (not c!923037)) b!5312885))

(assert (= (and d!1707112 c!923036) b!5312882))

(assert (= (and d!1707112 (not c!923036)) b!5312890))

(assert (= (and b!5312890 c!923035) b!5312880))

(assert (= (and b!5312890 (not c!923035)) b!5312884))

(assert (= (and b!5312884 (not res!2253866)) b!5312892))

(assert (= (and b!5312892 res!2253862) b!5312891))

(assert (= (and b!5312891 res!2253865) b!5312881))

(assert (= (and b!5312881 res!2253868) b!5312887))

(assert (= (and b!5312892 (not res!2253867)) b!5312889))

(assert (= (and b!5312889 res!2253869) b!5312888))

(assert (= (and b!5312888 (not res!2253863)) b!5312886))

(assert (= (and b!5312886 (not res!2253864)) b!5312893))

(assert (= (or b!5312882 b!5312888 b!5312891) bm!378862))

(assert (=> d!1707112 m!6349050))

(assert (=> d!1707112 m!6348780))

(assert (=> b!5312886 m!6349054))

(assert (=> b!5312886 m!6349054))

(assert (=> b!5312886 m!6349056))

(assert (=> bm!378862 m!6349050))

(assert (=> b!5312885 m!6349058))

(assert (=> b!5312885 m!6349058))

(declare-fun m!6350008 () Bool)

(assert (=> b!5312885 m!6350008))

(assert (=> b!5312885 m!6349054))

(assert (=> b!5312885 m!6350008))

(assert (=> b!5312885 m!6349054))

(declare-fun m!6350010 () Bool)

(assert (=> b!5312885 m!6350010))

(assert (=> b!5312881 m!6349054))

(assert (=> b!5312881 m!6349054))

(assert (=> b!5312881 m!6349056))

(assert (=> b!5312887 m!6349058))

(assert (=> b!5312893 m!6349058))

(declare-fun m!6350012 () Bool)

(assert (=> b!5312883 m!6350012))

(assert (=> b!5311811 d!1707112))

(declare-fun d!1707120 () Bool)

(assert (=> d!1707120 (= (matchR!7150 r!7292 s!2326) (matchRSpec!2068 r!7292 s!2326))))

(declare-fun lt!2170569 () Unit!153378)

(assert (=> d!1707120 (= lt!2170569 (choose!39754 r!7292 s!2326))))

(assert (=> d!1707120 (validRegex!6701 r!7292)))

(assert (=> d!1707120 (= (mainMatchTheorem!2068 r!7292 s!2326) lt!2170569)))

(declare-fun bs!1231906 () Bool)

(assert (= bs!1231906 d!1707120))

(assert (=> bs!1231906 m!6348850))

(assert (=> bs!1231906 m!6348848))

(declare-fun m!6350014 () Bool)

(assert (=> bs!1231906 m!6350014))

(assert (=> bs!1231906 m!6348780))

(assert (=> b!5311811 d!1707120))

(declare-fun d!1707122 () Bool)

(declare-fun e!3301336 () Bool)

(assert (=> d!1707122 e!3301336))

(declare-fun res!2253873 () Bool)

(assert (=> d!1707122 (=> (not res!2253873) (not e!3301336))))

(declare-fun lt!2170576 () List!61196)

(declare-fun noDuplicate!1291 (List!61196) Bool)

(assert (=> d!1707122 (= res!2253873 (noDuplicate!1291 lt!2170576))))

(declare-fun choose!39757 ((InoxSet Context!8698)) List!61196)

(assert (=> d!1707122 (= lt!2170576 (choose!39757 z!1189))))

(assert (=> d!1707122 (= (toList!8749 z!1189) lt!2170576)))

(declare-fun b!5312909 () Bool)

(declare-fun content!10881 (List!61196) (InoxSet Context!8698))

(assert (=> b!5312909 (= e!3301336 (= (content!10881 lt!2170576) z!1189))))

(assert (= (and d!1707122 res!2253873) b!5312909))

(declare-fun m!6350022 () Bool)

(assert (=> d!1707122 m!6350022))

(declare-fun m!6350024 () Bool)

(assert (=> d!1707122 m!6350024))

(declare-fun m!6350026 () Bool)

(assert (=> b!5312909 m!6350026))

(assert (=> b!5311791 d!1707122))

(declare-fun b!5312919 () Bool)

(declare-fun e!3301342 () Bool)

(declare-fun tp!1479701 () Bool)

(declare-fun tp!1479702 () Bool)

(assert (=> b!5312919 (= e!3301342 (and tp!1479701 tp!1479702))))

(assert (=> b!5311779 (= tp!1479684 e!3301342)))

(assert (= (and b!5311779 ((_ is Cons!61071) (exprs!4849 setElem!34157))) b!5312919))

(declare-fun b!5312934 () Bool)

(declare-fun e!3301347 () Bool)

(declare-fun tp!1479715 () Bool)

(assert (=> b!5312934 (= e!3301347 (and tp_is_empty!39183 tp!1479715))))

(assert (=> b!5311794 (= tp!1479687 e!3301347)))

(assert (= (and b!5311794 ((_ is Cons!61070) (t!374399 s!2326))) b!5312934))

(declare-fun b!5312950 () Bool)

(declare-fun e!3301355 () Bool)

(declare-fun tp!1479730 () Bool)

(assert (=> b!5312950 (= e!3301355 tp!1479730)))

(declare-fun b!5312949 () Bool)

(declare-fun e!3301354 () Bool)

(declare-fun tp!1479731 () Bool)

(assert (=> b!5312949 (= e!3301354 (and (inv!80659 (h!67520 (t!374401 zl!343))) e!3301355 tp!1479731))))

(assert (=> b!5311804 (= tp!1479690 e!3301354)))

(assert (= b!5312949 b!5312950))

(assert (= (and b!5311804 ((_ is Cons!61072) (t!374401 zl!343))) b!5312949))

(declare-fun m!6350028 () Bool)

(assert (=> b!5312949 m!6350028))

(declare-fun b!5312980 () Bool)

(declare-fun e!3301365 () Bool)

(declare-fun tp!1479763 () Bool)

(declare-fun tp!1479764 () Bool)

(assert (=> b!5312980 (= e!3301365 (and tp!1479763 tp!1479764))))

(assert (=> b!5311783 (= tp!1479689 e!3301365)))

(declare-fun b!5312982 () Bool)

(declare-fun tp!1479761 () Bool)

(declare-fun tp!1479765 () Bool)

(assert (=> b!5312982 (= e!3301365 (and tp!1479761 tp!1479765))))

(declare-fun b!5312981 () Bool)

(declare-fun tp!1479762 () Bool)

(assert (=> b!5312981 (= e!3301365 tp!1479762)))

(declare-fun b!5312979 () Bool)

(assert (=> b!5312979 (= e!3301365 tp_is_empty!39183)))

(assert (= (and b!5311783 ((_ is ElementMatch!14965) (regOne!30443 r!7292))) b!5312979))

(assert (= (and b!5311783 ((_ is Concat!23810) (regOne!30443 r!7292))) b!5312980))

(assert (= (and b!5311783 ((_ is Star!14965) (regOne!30443 r!7292))) b!5312981))

(assert (= (and b!5311783 ((_ is Union!14965) (regOne!30443 r!7292))) b!5312982))

(declare-fun b!5312984 () Bool)

(declare-fun e!3301366 () Bool)

(declare-fun tp!1479768 () Bool)

(declare-fun tp!1479769 () Bool)

(assert (=> b!5312984 (= e!3301366 (and tp!1479768 tp!1479769))))

(assert (=> b!5311783 (= tp!1479692 e!3301366)))

(declare-fun b!5312986 () Bool)

(declare-fun tp!1479766 () Bool)

(declare-fun tp!1479770 () Bool)

(assert (=> b!5312986 (= e!3301366 (and tp!1479766 tp!1479770))))

(declare-fun b!5312985 () Bool)

(declare-fun tp!1479767 () Bool)

(assert (=> b!5312985 (= e!3301366 tp!1479767)))

(declare-fun b!5312983 () Bool)

(assert (=> b!5312983 (= e!3301366 tp_is_empty!39183)))

(assert (= (and b!5311783 ((_ is ElementMatch!14965) (regTwo!30443 r!7292))) b!5312983))

(assert (= (and b!5311783 ((_ is Concat!23810) (regTwo!30443 r!7292))) b!5312984))

(assert (= (and b!5311783 ((_ is Star!14965) (regTwo!30443 r!7292))) b!5312985))

(assert (= (and b!5311783 ((_ is Union!14965) (regTwo!30443 r!7292))) b!5312986))

(declare-fun b!5312989 () Bool)

(declare-fun e!3301369 () Bool)

(declare-fun tp!1479773 () Bool)

(declare-fun tp!1479774 () Bool)

(assert (=> b!5312989 (= e!3301369 (and tp!1479773 tp!1479774))))

(assert (=> b!5311799 (= tp!1479686 e!3301369)))

(assert (= (and b!5311799 ((_ is Cons!61071) (exprs!4849 (h!67520 zl!343)))) b!5312989))

(declare-fun b!5312995 () Bool)

(declare-fun e!3301372 () Bool)

(declare-fun tp!1479779 () Bool)

(declare-fun tp!1479780 () Bool)

(assert (=> b!5312995 (= e!3301372 (and tp!1479779 tp!1479780))))

(assert (=> b!5311807 (= tp!1479685 e!3301372)))

(declare-fun b!5312997 () Bool)

(declare-fun tp!1479777 () Bool)

(declare-fun tp!1479781 () Bool)

(assert (=> b!5312997 (= e!3301372 (and tp!1479777 tp!1479781))))

(declare-fun b!5312996 () Bool)

(declare-fun tp!1479778 () Bool)

(assert (=> b!5312996 (= e!3301372 tp!1479778)))

(declare-fun b!5312994 () Bool)

(assert (=> b!5312994 (= e!3301372 tp_is_empty!39183)))

(assert (= (and b!5311807 ((_ is ElementMatch!14965) (regOne!30442 r!7292))) b!5312994))

(assert (= (and b!5311807 ((_ is Concat!23810) (regOne!30442 r!7292))) b!5312995))

(assert (= (and b!5311807 ((_ is Star!14965) (regOne!30442 r!7292))) b!5312996))

(assert (= (and b!5311807 ((_ is Union!14965) (regOne!30442 r!7292))) b!5312997))

(declare-fun b!5312999 () Bool)

(declare-fun e!3301373 () Bool)

(declare-fun tp!1479786 () Bool)

(declare-fun tp!1479787 () Bool)

(assert (=> b!5312999 (= e!3301373 (and tp!1479786 tp!1479787))))

(assert (=> b!5311807 (= tp!1479691 e!3301373)))

(declare-fun b!5313001 () Bool)

(declare-fun tp!1479784 () Bool)

(declare-fun tp!1479788 () Bool)

(assert (=> b!5313001 (= e!3301373 (and tp!1479784 tp!1479788))))

(declare-fun b!5313000 () Bool)

(declare-fun tp!1479785 () Bool)

(assert (=> b!5313000 (= e!3301373 tp!1479785)))

(declare-fun b!5312998 () Bool)

(assert (=> b!5312998 (= e!3301373 tp_is_empty!39183)))

(assert (= (and b!5311807 ((_ is ElementMatch!14965) (regTwo!30442 r!7292))) b!5312998))

(assert (= (and b!5311807 ((_ is Concat!23810) (regTwo!30442 r!7292))) b!5312999))

(assert (= (and b!5311807 ((_ is Star!14965) (regTwo!30442 r!7292))) b!5313000))

(assert (= (and b!5311807 ((_ is Union!14965) (regTwo!30442 r!7292))) b!5313001))

(declare-fun condSetEmpty!34163 () Bool)

(assert (=> setNonEmpty!34157 (= condSetEmpty!34163 (= setRest!34157 ((as const (Array Context!8698 Bool)) false)))))

(declare-fun setRes!34163 () Bool)

(assert (=> setNonEmpty!34157 (= tp!1479688 setRes!34163)))

(declare-fun setIsEmpty!34163 () Bool)

(assert (=> setIsEmpty!34163 setRes!34163))

(declare-fun tp!1479801 () Bool)

(declare-fun setNonEmpty!34163 () Bool)

(declare-fun e!3301380 () Bool)

(declare-fun setElem!34163 () Context!8698)

(assert (=> setNonEmpty!34163 (= setRes!34163 (and tp!1479801 (inv!80659 setElem!34163) e!3301380))))

(declare-fun setRest!34163 () (InoxSet Context!8698))

(assert (=> setNonEmpty!34163 (= setRest!34157 ((_ map or) (store ((as const (Array Context!8698 Bool)) false) setElem!34163 true) setRest!34163))))

(declare-fun b!5313012 () Bool)

(declare-fun tp!1479802 () Bool)

(assert (=> b!5313012 (= e!3301380 tp!1479802)))

(assert (= (and setNonEmpty!34157 condSetEmpty!34163) setIsEmpty!34163))

(assert (= (and setNonEmpty!34157 (not condSetEmpty!34163)) setNonEmpty!34163))

(assert (= setNonEmpty!34163 b!5313012))

(declare-fun m!6350034 () Bool)

(assert (=> setNonEmpty!34163 m!6350034))

(declare-fun b!5313015 () Bool)

(declare-fun e!3301382 () Bool)

(declare-fun tp!1479807 () Bool)

(declare-fun tp!1479808 () Bool)

(assert (=> b!5313015 (= e!3301382 (and tp!1479807 tp!1479808))))

(assert (=> b!5311805 (= tp!1479693 e!3301382)))

(declare-fun b!5313017 () Bool)

(declare-fun tp!1479805 () Bool)

(declare-fun tp!1479809 () Bool)

(assert (=> b!5313017 (= e!3301382 (and tp!1479805 tp!1479809))))

(declare-fun b!5313016 () Bool)

(declare-fun tp!1479806 () Bool)

(assert (=> b!5313016 (= e!3301382 tp!1479806)))

(declare-fun b!5313014 () Bool)

(assert (=> b!5313014 (= e!3301382 tp_is_empty!39183)))

(assert (= (and b!5311805 ((_ is ElementMatch!14965) (reg!15294 r!7292))) b!5313014))

(assert (= (and b!5311805 ((_ is Concat!23810) (reg!15294 r!7292))) b!5313015))

(assert (= (and b!5311805 ((_ is Star!14965) (reg!15294 r!7292))) b!5313016))

(assert (= (and b!5311805 ((_ is Union!14965) (reg!15294 r!7292))) b!5313017))

(declare-fun b_lambda!204447 () Bool)

(assert (= b_lambda!204433 (or b!5311803 b_lambda!204447)))

(declare-fun bs!1231908 () Bool)

(declare-fun d!1707128 () Bool)

(assert (= bs!1231908 (and d!1707128 b!5311803)))

(assert (=> bs!1231908 (= (dynLambda!24138 lambda!270643 lt!2170349) (derivationStepZipperUp!337 lt!2170349 (h!67518 s!2326)))))

(assert (=> bs!1231908 m!6348822))

(assert (=> d!1706866 d!1707128))

(declare-fun b_lambda!204449 () Bool)

(assert (= b_lambda!204429 (or b!5311803 b_lambda!204449)))

(declare-fun bs!1231911 () Bool)

(declare-fun d!1707134 () Bool)

(assert (= bs!1231911 (and d!1707134 b!5311803)))

(assert (=> bs!1231911 (= (dynLambda!24138 lambda!270643 lt!2170348) (derivationStepZipperUp!337 lt!2170348 (h!67518 s!2326)))))

(assert (=> bs!1231911 m!6348828))

(assert (=> d!1706792 d!1707134))

(declare-fun b_lambda!204451 () Bool)

(assert (= b_lambda!204435 (or b!5311803 b_lambda!204451)))

(declare-fun bs!1231912 () Bool)

(declare-fun d!1707136 () Bool)

(assert (= bs!1231912 (and d!1707136 b!5311803)))

(assert (=> bs!1231912 (= (dynLambda!24138 lambda!270643 (h!67520 zl!343)) (derivationStepZipperUp!337 (h!67520 zl!343) (h!67518 s!2326)))))

(assert (=> bs!1231912 m!6348876))

(assert (=> d!1706920 d!1707136))

(check-sat (not b!5312661) (not d!1706816) (not b!5312087) (not b!5312769) (not b!5313000) (not d!1707046) (not d!1706862) (not b!5312274) (not b!5312750) (not b!5312602) (not d!1706952) (not bm!378830) (not d!1707020) (not b!5312607) (not d!1706880) (not bm!378859) (not b!5312635) (not b!5311896) (not b!5312259) (not bm!378795) (not d!1706986) (not b!5312249) (not b!5312672) (not d!1707094) (not d!1707064) (not d!1706784) (not d!1706864) (not d!1707120) (not b!5312796) (not b!5312014) (not b!5312848) (not d!1706858) (not b!5312996) (not b!5312486) (not d!1706904) (not d!1707050) (not bm!378840) (not b!5312262) (not d!1707044) (not b!5312662) (not b!5312491) (not b!5312793) (not d!1706984) (not d!1707048) (not b!5312562) (not b_lambda!204447) (not b!5312984) (not b!5312055) (not bm!378829) (not b!5312376) (not b!5312443) (not b!5312747) (not bm!378797) (not b!5311926) (not d!1707112) (not b!5312252) (not b!5312620) (not d!1707036) (not b!5312072) (not bs!1231908) (not b!5312117) (not d!1707060) (not d!1706834) (not b!5312079) (not b!5311911) (not b!5312674) (not b!5312251) (not b!5312678) (not b!5312485) (not b!5312886) (not bm!378805) (not b_lambda!204449) (not bm!378807) (not b!5312257) (not b!5311980) (not bm!378774) (not b!5312634) (not d!1706886) (not b!5312224) (not bm!378838) (not d!1707066) (not d!1706800) (not b!5312199) (not d!1706790) (not b!5312122) (not b!5312982) (not bs!1231912) (not b!5312603) (not bm!378858) (not setNonEmpty!34163) (not b!5312059) (not b!5312243) (not b!5312980) (not d!1706788) (not d!1706942) (not b!5312285) (not b!5312673) (not d!1707080) (not b!5312294) (not b!5312444) (not b!5312669) (not b!5312016) (not b!5312671) (not b!5312438) (not b!5312629) (not b!5312367) (not b!5312119) (not b!5312893) (not d!1706794) (not b!5312949) (not d!1707072) (not b!5311999) (not b!5312759) (not bm!378819) (not b!5312887) (not b!5312763) (not d!1706822) (not d!1706898) (not b!5313012) (not b!5312058) (not d!1707002) (not d!1706954) (not b!5312919) (not d!1706776) (not b!5312442) (not d!1706844) (not b!5312999) (not b!5311986) (not b!5312950) (not bm!378808) (not b!5311891) (not d!1707014) (not d!1706792) (not d!1707034) (not bm!378793) (not b!5312480) (not d!1706920) (not b!5312770) (not b_lambda!204451) (not b!5312374) (not b!5312497) (not b!5312492) (not b!5313001) (not b!5312852) (not d!1706882) (not bm!378776) (not b!5312430) (not b!5312995) (not b!5312630) (not b!5312380) (not d!1706990) (not b!5312116) (not b!5311992) (not b!5312493) (not b!5311928) (not b!5312121) (not b!5312677) (not b!5312798) (not d!1706908) (not b!5312788) (not b!5312628) (not b!5312745) (not d!1706976) (not bm!378820) (not b!5313016) (not d!1706782) (not b!5313015) (not b!5312269) (not b!5311894) (not b!5312250) (not b!5312751) (not b!5312253) (not b!5312764) (not bm!378777) (not b!5312726) (not b!5312077) (not b!5313017) (not b!5312840) (not d!1706878) (not d!1706860) (not b!5312481) (not d!1707004) (not b!5312061) (not b!5312606) (not b!5312287) (not b!5311984) (not b!5312909) (not d!1706786) (not b!5312675) (not b!5312604) (not d!1706948) (not b!5312289) (not bm!378796) (not b!5312657) (not b!5312477) (not b!5312263) (not bm!378826) (not b!5312997) (not b!5312619) (not b!5312758) (not b!5312795) (not b!5312057) (not bm!378749) (not b!5312261) (not b!5312792) (not b!5312981) (not d!1706950) (not b!5312198) (not bm!378852) (not b!5312799) (not bs!1231911) (not bm!378745) (not b!5311985) (not b!5312440) tp_is_empty!39183 (not bm!378775) (not bm!378855) (not b!5312601) (not b!5312816) (not b!5312761) (not b!5311893) (not d!1706866) (not b!5312482) (not b!5312222) (not b!5311856) (not b!5312081) (not d!1707012) (not b!5312883) (not d!1706824) (not d!1706922) (not b!5312659) (not b!5311892) (not d!1706876) (not bm!378831) (not b!5312632) (not d!1706836) (not d!1706956) (not b!5312663) (not b!5312001) (not bm!378750) (not b!5312600) (not bm!378860) (not d!1706826) (not b!5312631) (not d!1707122) (not b!5311869) (not b!5311870) (not b!5312794) (not b!5312881) (not b!5312989) (not b!5312722) (not b!5312885) (not b!5312478) (not b!5312479) (not bm!378857) (not b!5312558) (not bm!378862) (not d!1706838) (not b!5312056) (not b!5312080) (not b!5312075) (not b!5312986) (not d!1706924) (not b!5312379) (not b!5312757) (not b!5312450) (not b!5312760) (not b!5311895) (not b!5312118) (not bm!378849) (not b!5312985) (not d!1707068) (not b!5312241) (not d!1707006) (not bm!378851) (not b!5311982) (not b!5312934) (not b!5312494) (not d!1707016) (not b!5312292) (not b!5312749) (not b!5312496) (not b!5312060) (not d!1707074))
(check-sat)
