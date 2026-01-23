; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!553218 () Bool)

(assert start!553218)

(declare-fun b!5231546 () Bool)

(assert (=> b!5231546 true))

(assert (=> b!5231546 true))

(declare-fun lambda!262818 () Int)

(declare-fun lambda!262817 () Int)

(assert (=> b!5231546 (not (= lambda!262818 lambda!262817))))

(assert (=> b!5231546 true))

(assert (=> b!5231546 true))

(declare-fun b!5231542 () Bool)

(assert (=> b!5231542 true))

(declare-fun b!5231532 () Bool)

(declare-fun res!2220679 () Bool)

(declare-fun e!3255650 () Bool)

(assert (=> b!5231532 (=> res!2220679 e!3255650)))

(declare-datatypes ((C!29916 0))(
  ( (C!29917 (val!24660 Int)) )
))
(declare-datatypes ((Regex!14823 0))(
  ( (ElementMatch!14823 (c!903567 C!29916)) (Concat!23668 (regOne!30158 Regex!14823) (regTwo!30158 Regex!14823)) (EmptyExpr!14823) (Star!14823 (reg!15152 Regex!14823)) (EmptyLang!14823) (Union!14823 (regOne!30159 Regex!14823) (regTwo!30159 Regex!14823)) )
))
(declare-datatypes ((List!60768 0))(
  ( (Nil!60644) (Cons!60644 (h!67092 Regex!14823) (t!373947 List!60768)) )
))
(declare-datatypes ((Context!8414 0))(
  ( (Context!8415 (exprs!4707 List!60768)) )
))
(declare-datatypes ((List!60769 0))(
  ( (Nil!60645) (Cons!60645 (h!67093 Context!8414) (t!373948 List!60769)) )
))
(declare-fun zl!343 () List!60769)

(declare-fun isEmpty!32571 (List!60768) Bool)

(assert (=> b!5231532 (= res!2220679 (isEmpty!32571 (t!373947 (exprs!4707 (h!67093 zl!343)))))))

(declare-fun b!5231533 () Bool)

(declare-fun e!3255664 () Bool)

(declare-fun tp_is_empty!38899 () Bool)

(assert (=> b!5231533 (= e!3255664 tp_is_empty!38899)))

(declare-fun b!5231534 () Bool)

(declare-fun e!3255644 () Bool)

(declare-fun e!3255657 () Bool)

(assert (=> b!5231534 (= e!3255644 e!3255657)))

(declare-fun res!2220670 () Bool)

(assert (=> b!5231534 (=> res!2220670 e!3255657)))

(declare-fun e!3255648 () Bool)

(assert (=> b!5231534 (= res!2220670 e!3255648)))

(declare-fun res!2220659 () Bool)

(assert (=> b!5231534 (=> (not res!2220659) (not e!3255648))))

(declare-datatypes ((List!60770 0))(
  ( (Nil!60646) (Cons!60646 (h!67094 C!29916) (t!373949 List!60770)) )
))
(declare-fun s!2326 () List!60770)

(declare-fun lt!2145366 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2145339 () (InoxSet Context!8414))

(declare-fun matchZipper!1067 ((InoxSet Context!8414) List!60770) Bool)

(assert (=> b!5231534 (= res!2220659 (not (= (matchZipper!1067 lt!2145339 (t!373949 s!2326)) lt!2145366)))))

(declare-fun lt!2145335 () (InoxSet Context!8414))

(declare-fun e!3255658 () Bool)

(assert (=> b!5231534 (= (matchZipper!1067 lt!2145335 (t!373949 s!2326)) e!3255658)))

(declare-fun res!2220681 () Bool)

(assert (=> b!5231534 (=> res!2220681 e!3255658)))

(assert (=> b!5231534 (= res!2220681 lt!2145366)))

(declare-fun lt!2145351 () (InoxSet Context!8414))

(assert (=> b!5231534 (= lt!2145366 (matchZipper!1067 lt!2145351 (t!373949 s!2326)))))

(declare-fun lt!2145342 () (InoxSet Context!8414))

(declare-datatypes ((Unit!152598 0))(
  ( (Unit!152599) )
))
(declare-fun lt!2145347 () Unit!152598)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!60 ((InoxSet Context!8414) (InoxSet Context!8414) List!60770) Unit!152598)

(assert (=> b!5231534 (= lt!2145347 (lemmaZipperConcatMatchesSameAsBothZippers!60 lt!2145351 lt!2145342 (t!373949 s!2326)))))

(declare-fun b!5231535 () Bool)

(declare-fun res!2220666 () Bool)

(declare-fun e!3255659 () Bool)

(assert (=> b!5231535 (=> res!2220666 e!3255659)))

(declare-fun lt!2145360 () List!60768)

(declare-fun validRegex!6559 (Regex!14823) Bool)

(declare-fun generalisedConcat!492 (List!60768) Regex!14823)

(assert (=> b!5231535 (= res!2220666 (not (validRegex!6559 (generalisedConcat!492 lt!2145360))))))

(declare-fun b!5231536 () Bool)

(declare-fun e!3255661 () Unit!152598)

(declare-fun Unit!152600 () Unit!152598)

(assert (=> b!5231536 (= e!3255661 Unit!152600)))

(declare-fun b!5231537 () Bool)

(assert (=> b!5231537 (= e!3255658 (matchZipper!1067 lt!2145342 (t!373949 s!2326)))))

(declare-fun b!5231538 () Bool)

(declare-fun e!3255654 () Bool)

(declare-fun tp!1465977 () Bool)

(assert (=> b!5231538 (= e!3255654 (and tp_is_empty!38899 tp!1465977))))

(declare-fun b!5231539 () Bool)

(declare-fun e!3255651 () Bool)

(declare-fun lt!2145365 () (InoxSet Context!8414))

(assert (=> b!5231539 (= e!3255651 (matchZipper!1067 lt!2145365 s!2326))))

(declare-fun b!5231540 () Bool)

(declare-fun res!2220662 () Bool)

(declare-fun e!3255645 () Bool)

(assert (=> b!5231540 (=> res!2220662 e!3255645)))

(declare-fun r!7292 () Regex!14823)

(declare-fun lt!2145336 () Regex!14823)

(assert (=> b!5231540 (= res!2220662 (or (not (= lt!2145336 r!7292)) (not (= (exprs!4707 (h!67093 zl!343)) (Cons!60644 (regOne!30158 r!7292) (t!373947 (exprs!4707 (h!67093 zl!343))))))))))

(declare-fun b!5231541 () Bool)

(declare-fun e!3255656 () Unit!152598)

(declare-fun Unit!152601 () Unit!152598)

(assert (=> b!5231541 (= e!3255656 Unit!152601)))

(declare-fun lt!2145368 () Unit!152598)

(declare-fun lt!2145341 () (InoxSet Context!8414))

(assert (=> b!5231541 (= lt!2145368 (lemmaZipperConcatMatchesSameAsBothZippers!60 lt!2145339 lt!2145341 (t!373949 s!2326)))))

(declare-fun res!2220660 () Bool)

(assert (=> b!5231541 (= res!2220660 (matchZipper!1067 lt!2145339 (t!373949 s!2326)))))

(declare-fun e!3255642 () Bool)

(assert (=> b!5231541 (=> res!2220660 e!3255642)))

(assert (=> b!5231541 (= (matchZipper!1067 ((_ map or) lt!2145339 lt!2145341) (t!373949 s!2326)) e!3255642)))

(declare-fun e!3255655 () Bool)

(assert (=> b!5231542 (= e!3255650 e!3255655)))

(declare-fun res!2220674 () Bool)

(assert (=> b!5231542 (=> res!2220674 e!3255655)))

(get-info :version)

(assert (=> b!5231542 (= res!2220674 (or (and ((_ is ElementMatch!14823) (regOne!30158 r!7292)) (= (c!903567 (regOne!30158 r!7292)) (h!67094 s!2326))) (not ((_ is Union!14823) (regOne!30158 r!7292)))))))

(declare-fun lt!2145356 () Unit!152598)

(assert (=> b!5231542 (= lt!2145356 e!3255656)))

(declare-fun c!903566 () Bool)

(declare-fun nullable!4992 (Regex!14823) Bool)

(assert (=> b!5231542 (= c!903566 (nullable!4992 (h!67092 (exprs!4707 (h!67093 zl!343)))))))

(declare-fun lambda!262819 () Int)

(declare-fun z!1189 () (InoxSet Context!8414))

(declare-fun flatMap!550 ((InoxSet Context!8414) Int) (InoxSet Context!8414))

(declare-fun derivationStepZipperUp!195 (Context!8414 C!29916) (InoxSet Context!8414))

(assert (=> b!5231542 (= (flatMap!550 z!1189 lambda!262819) (derivationStepZipperUp!195 (h!67093 zl!343) (h!67094 s!2326)))))

(declare-fun lt!2145345 () Unit!152598)

(declare-fun lemmaFlatMapOnSingletonSet!82 ((InoxSet Context!8414) Context!8414 Int) Unit!152598)

(assert (=> b!5231542 (= lt!2145345 (lemmaFlatMapOnSingletonSet!82 z!1189 (h!67093 zl!343) lambda!262819))))

(declare-fun lt!2145353 () Context!8414)

(assert (=> b!5231542 (= lt!2145341 (derivationStepZipperUp!195 lt!2145353 (h!67094 s!2326)))))

(declare-fun derivationStepZipperDown!271 (Regex!14823 Context!8414 C!29916) (InoxSet Context!8414))

(assert (=> b!5231542 (= lt!2145339 (derivationStepZipperDown!271 (h!67092 (exprs!4707 (h!67093 zl!343))) lt!2145353 (h!67094 s!2326)))))

(assert (=> b!5231542 (= lt!2145353 (Context!8415 (t!373947 (exprs!4707 (h!67093 zl!343)))))))

(declare-fun lt!2145338 () (InoxSet Context!8414))

(assert (=> b!5231542 (= lt!2145338 (derivationStepZipperUp!195 (Context!8415 (Cons!60644 (h!67092 (exprs!4707 (h!67093 zl!343))) (t!373947 (exprs!4707 (h!67093 zl!343))))) (h!67094 s!2326)))))

(declare-fun b!5231543 () Bool)

(declare-fun res!2220671 () Bool)

(assert (=> b!5231543 (=> res!2220671 e!3255659)))

(declare-fun lt!2145355 () (InoxSet Context!8414))

(declare-fun lt!2145363 () List!60769)

(declare-fun toList!8607 ((InoxSet Context!8414)) List!60769)

(assert (=> b!5231543 (= res!2220671 (not (= (toList!8607 lt!2145355) lt!2145363)))))

(declare-fun b!5231544 () Bool)

(declare-fun tp!1465982 () Bool)

(declare-fun tp!1465980 () Bool)

(assert (=> b!5231544 (= e!3255664 (and tp!1465982 tp!1465980))))

(declare-fun setIsEmpty!33323 () Bool)

(declare-fun setRes!33323 () Bool)

(assert (=> setIsEmpty!33323 setRes!33323))

(declare-fun b!5231545 () Bool)

(declare-fun tp!1465985 () Bool)

(assert (=> b!5231545 (= e!3255664 tp!1465985)))

(declare-fun e!3255663 () Bool)

(assert (=> b!5231546 (= e!3255663 e!3255650)))

(declare-fun res!2220678 () Bool)

(assert (=> b!5231546 (=> res!2220678 e!3255650)))

(declare-fun lt!2145334 () Bool)

(declare-fun lt!2145350 () Bool)

(assert (=> b!5231546 (= res!2220678 (or (not (= lt!2145334 lt!2145350)) ((_ is Nil!60646) s!2326)))))

(declare-fun Exists!2004 (Int) Bool)

(assert (=> b!5231546 (= (Exists!2004 lambda!262817) (Exists!2004 lambda!262818))))

(declare-fun lt!2145337 () Unit!152598)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!658 (Regex!14823 Regex!14823 List!60770) Unit!152598)

(assert (=> b!5231546 (= lt!2145337 (lemmaExistCutMatchRandMatchRSpecEquivalent!658 (regOne!30158 r!7292) (regTwo!30158 r!7292) s!2326))))

(assert (=> b!5231546 (= lt!2145350 (Exists!2004 lambda!262817))))

(declare-datatypes ((tuple2!64044 0))(
  ( (tuple2!64045 (_1!35325 List!60770) (_2!35325 List!60770)) )
))
(declare-datatypes ((Option!14934 0))(
  ( (None!14933) (Some!14933 (v!50962 tuple2!64044)) )
))
(declare-fun isDefined!11637 (Option!14934) Bool)

(declare-fun findConcatSeparation!1348 (Regex!14823 Regex!14823 List!60770 List!60770 List!60770) Option!14934)

(assert (=> b!5231546 (= lt!2145350 (isDefined!11637 (findConcatSeparation!1348 (regOne!30158 r!7292) (regTwo!30158 r!7292) Nil!60646 s!2326 s!2326)))))

(declare-fun lt!2145359 () Unit!152598)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1112 (Regex!14823 Regex!14823 List!60770) Unit!152598)

(assert (=> b!5231546 (= lt!2145359 (lemmaFindConcatSeparationEquivalentToExists!1112 (regOne!30158 r!7292) (regTwo!30158 r!7292) s!2326))))

(declare-fun b!5231547 () Bool)

(declare-fun Unit!152602 () Unit!152598)

(assert (=> b!5231547 (= e!3255656 Unit!152602)))

(declare-fun b!5231548 () Bool)

(declare-fun e!3255662 () Bool)

(declare-fun tp!1465979 () Bool)

(assert (=> b!5231548 (= e!3255662 tp!1465979)))

(declare-fun b!5231549 () Bool)

(assert (=> b!5231549 (= e!3255655 e!3255644)))

(declare-fun res!2220676 () Bool)

(assert (=> b!5231549 (=> res!2220676 e!3255644)))

(assert (=> b!5231549 (= res!2220676 (not (= lt!2145339 lt!2145335)))))

(assert (=> b!5231549 (= lt!2145335 ((_ map or) lt!2145351 lt!2145342))))

(assert (=> b!5231549 (= lt!2145342 (derivationStepZipperDown!271 (regTwo!30159 (regOne!30158 r!7292)) lt!2145353 (h!67094 s!2326)))))

(assert (=> b!5231549 (= lt!2145351 (derivationStepZipperDown!271 (regOne!30159 (regOne!30158 r!7292)) lt!2145353 (h!67094 s!2326)))))

(declare-fun b!5231550 () Bool)

(declare-fun res!2220675 () Bool)

(assert (=> b!5231550 (=> res!2220675 e!3255663)))

(declare-fun isEmpty!32572 (List!60769) Bool)

(assert (=> b!5231550 (= res!2220675 (not (isEmpty!32572 (t!373948 zl!343))))))

(declare-fun b!5231551 () Bool)

(declare-fun res!2220664 () Bool)

(assert (=> b!5231551 (=> res!2220664 e!3255663)))

(assert (=> b!5231551 (= res!2220664 (not (= r!7292 (generalisedConcat!492 (exprs!4707 (h!67093 zl!343))))))))

(declare-fun b!5231552 () Bool)

(assert (=> b!5231552 (= e!3255645 e!3255659)))

(declare-fun res!2220672 () Bool)

(assert (=> b!5231552 (=> res!2220672 e!3255659)))

(declare-fun lt!2145344 () Int)

(declare-fun lt!2145354 () Int)

(assert (=> b!5231552 (= res!2220672 (>= lt!2145344 lt!2145354))))

(declare-fun zipperDepthTotal!4 (List!60769) Int)

(assert (=> b!5231552 (= lt!2145354 (zipperDepthTotal!4 zl!343))))

(assert (=> b!5231552 (= lt!2145344 (zipperDepthTotal!4 lt!2145363))))

(declare-fun lt!2145349 () Context!8414)

(assert (=> b!5231552 (= lt!2145363 (Cons!60645 lt!2145349 Nil!60645))))

(declare-fun b!5231553 () Bool)

(assert (=> b!5231553 (= e!3255648 (not (matchZipper!1067 lt!2145342 (t!373949 s!2326))))))

(declare-fun b!5231554 () Bool)

(declare-fun e!3255649 () Unit!152598)

(declare-fun Unit!152603 () Unit!152598)

(assert (=> b!5231554 (= e!3255649 Unit!152603)))

(declare-fun b!5231555 () Bool)

(declare-fun e!3255653 () Bool)

(assert (=> b!5231555 (= e!3255653 (not e!3255663))))

(declare-fun res!2220673 () Bool)

(assert (=> b!5231555 (=> res!2220673 e!3255663)))

(assert (=> b!5231555 (= res!2220673 (not ((_ is Cons!60645) zl!343)))))

(declare-fun matchRSpec!1926 (Regex!14823 List!60770) Bool)

(assert (=> b!5231555 (= lt!2145334 (matchRSpec!1926 r!7292 s!2326))))

(declare-fun matchR!7008 (Regex!14823 List!60770) Bool)

(assert (=> b!5231555 (= lt!2145334 (matchR!7008 r!7292 s!2326))))

(declare-fun lt!2145361 () Unit!152598)

(declare-fun mainMatchTheorem!1926 (Regex!14823 List!60770) Unit!152598)

(assert (=> b!5231555 (= lt!2145361 (mainMatchTheorem!1926 r!7292 s!2326))))

(declare-fun b!5231556 () Bool)

(declare-fun e!3255660 () Bool)

(assert (=> b!5231556 (= e!3255660 (matchZipper!1067 lt!2145341 (t!373949 s!2326)))))

(declare-fun b!5231557 () Bool)

(declare-fun res!2220665 () Bool)

(assert (=> b!5231557 (=> res!2220665 e!3255663)))

(assert (=> b!5231557 (= res!2220665 (or ((_ is EmptyExpr!14823) r!7292) ((_ is EmptyLang!14823) r!7292) ((_ is ElementMatch!14823) r!7292) ((_ is Union!14823) r!7292) (not ((_ is Concat!23668) r!7292))))))

(declare-fun b!5231558 () Bool)

(declare-fun res!2220677 () Bool)

(declare-fun e!3255647 () Bool)

(assert (=> b!5231558 (=> (not res!2220677) (not e!3255647))))

(assert (=> b!5231558 (= res!2220677 (= (toList!8607 z!1189) zl!343))))

(declare-fun b!5231559 () Bool)

(declare-fun tp!1465983 () Bool)

(declare-fun tp!1465981 () Bool)

(assert (=> b!5231559 (= e!3255664 (and tp!1465983 tp!1465981))))

(declare-fun b!5231560 () Bool)

(declare-fun e!3255643 () Bool)

(declare-fun tp!1465978 () Bool)

(assert (=> b!5231560 (= e!3255643 tp!1465978)))

(declare-fun setNonEmpty!33323 () Bool)

(declare-fun tp!1465976 () Bool)

(declare-fun setElem!33323 () Context!8414)

(declare-fun inv!80304 (Context!8414) Bool)

(assert (=> setNonEmpty!33323 (= setRes!33323 (and tp!1465976 (inv!80304 setElem!33323) e!3255662))))

(declare-fun setRest!33323 () (InoxSet Context!8414))

(assert (=> setNonEmpty!33323 (= z!1189 ((_ map or) (store ((as const (Array Context!8414 Bool)) false) setElem!33323 true) setRest!33323))))

(declare-fun b!5231561 () Bool)

(assert (=> b!5231561 (= e!3255659 true)))

(declare-fun lt!2145357 () Regex!14823)

(declare-fun unfocusZipper!565 (List!60769) Regex!14823)

(assert (=> b!5231561 (= lt!2145357 (unfocusZipper!565 lt!2145363))))

(declare-fun b!5231562 () Bool)

(assert (=> b!5231562 (= e!3255647 e!3255653)))

(declare-fun res!2220661 () Bool)

(assert (=> b!5231562 (=> (not res!2220661) (not e!3255653))))

(assert (=> b!5231562 (= res!2220661 (= r!7292 lt!2145336))))

(assert (=> b!5231562 (= lt!2145336 (unfocusZipper!565 zl!343))))

(declare-fun b!5231563 () Bool)

(declare-fun res!2220680 () Bool)

(assert (=> b!5231563 (=> res!2220680 e!3255663)))

(declare-fun generalisedUnion!752 (List!60768) Regex!14823)

(declare-fun unfocusZipperList!265 (List!60769) List!60768)

(assert (=> b!5231563 (= res!2220680 (not (= r!7292 (generalisedUnion!752 (unfocusZipperList!265 zl!343)))))))

(declare-fun res!2220668 () Bool)

(assert (=> start!553218 (=> (not res!2220668) (not e!3255647))))

(assert (=> start!553218 (= res!2220668 (validRegex!6559 r!7292))))

(assert (=> start!553218 e!3255647))

(assert (=> start!553218 e!3255664))

(declare-fun condSetEmpty!33323 () Bool)

(assert (=> start!553218 (= condSetEmpty!33323 (= z!1189 ((as const (Array Context!8414 Bool)) false)))))

(assert (=> start!553218 setRes!33323))

(declare-fun e!3255652 () Bool)

(assert (=> start!553218 e!3255652))

(assert (=> start!553218 e!3255654))

(declare-fun b!5231564 () Bool)

(declare-fun res!2220683 () Bool)

(assert (=> b!5231564 (=> res!2220683 e!3255659)))

(declare-fun lt!2145340 () Context!8414)

(assert (=> b!5231564 (= res!2220683 (>= (zipperDepthTotal!4 (Cons!60645 lt!2145340 Nil!60645)) lt!2145354))))

(declare-fun b!5231565 () Bool)

(assert (=> b!5231565 (= e!3255657 e!3255645)))

(declare-fun res!2220682 () Bool)

(assert (=> b!5231565 (=> res!2220682 e!3255645)))

(assert (=> b!5231565 (= res!2220682 (not (= (matchZipper!1067 z!1189 s!2326) e!3255651)))))

(declare-fun res!2220667 () Bool)

(assert (=> b!5231565 (=> res!2220667 e!3255651)))

(assert (=> b!5231565 (= res!2220667 (matchZipper!1067 lt!2145355 s!2326))))

(declare-fun lt!2145343 () Unit!152598)

(assert (=> b!5231565 (= lt!2145343 e!3255661)))

(declare-fun c!903565 () Bool)

(assert (=> b!5231565 (= c!903565 (nullable!4992 (regTwo!30159 (regOne!30158 r!7292))))))

(assert (=> b!5231565 (= (flatMap!550 lt!2145365 lambda!262819) (derivationStepZipperUp!195 lt!2145340 (h!67094 s!2326)))))

(declare-fun lt!2145346 () Unit!152598)

(assert (=> b!5231565 (= lt!2145346 (lemmaFlatMapOnSingletonSet!82 lt!2145365 lt!2145340 lambda!262819))))

(declare-fun lt!2145358 () (InoxSet Context!8414))

(assert (=> b!5231565 (= lt!2145358 (derivationStepZipperUp!195 lt!2145340 (h!67094 s!2326)))))

(declare-fun lt!2145348 () Unit!152598)

(assert (=> b!5231565 (= lt!2145348 e!3255649)))

(declare-fun c!903564 () Bool)

(assert (=> b!5231565 (= c!903564 (nullable!4992 (regOne!30159 (regOne!30158 r!7292))))))

(assert (=> b!5231565 (= (flatMap!550 lt!2145355 lambda!262819) (derivationStepZipperUp!195 lt!2145349 (h!67094 s!2326)))))

(declare-fun lt!2145367 () Unit!152598)

(assert (=> b!5231565 (= lt!2145367 (lemmaFlatMapOnSingletonSet!82 lt!2145355 lt!2145349 lambda!262819))))

(declare-fun lt!2145352 () (InoxSet Context!8414))

(assert (=> b!5231565 (= lt!2145352 (derivationStepZipperUp!195 lt!2145349 (h!67094 s!2326)))))

(assert (=> b!5231565 (= lt!2145365 (store ((as const (Array Context!8414 Bool)) false) lt!2145340 true))))

(assert (=> b!5231565 (= lt!2145340 (Context!8415 (Cons!60644 (regTwo!30159 (regOne!30158 r!7292)) (t!373947 (exprs!4707 (h!67093 zl!343))))))))

(assert (=> b!5231565 (= lt!2145355 (store ((as const (Array Context!8414 Bool)) false) lt!2145349 true))))

(assert (=> b!5231565 (= lt!2145349 (Context!8415 lt!2145360))))

(assert (=> b!5231565 (= lt!2145360 (Cons!60644 (regOne!30159 (regOne!30158 r!7292)) (t!373947 (exprs!4707 (h!67093 zl!343)))))))

(declare-fun tp!1465984 () Bool)

(declare-fun b!5231566 () Bool)

(assert (=> b!5231566 (= e!3255652 (and (inv!80304 (h!67093 zl!343)) e!3255643 tp!1465984))))

(declare-fun b!5231567 () Bool)

(assert (=> b!5231567 (= e!3255642 (matchZipper!1067 lt!2145341 (t!373949 s!2326)))))

(declare-fun b!5231568 () Bool)

(declare-fun e!3255646 () Bool)

(assert (=> b!5231568 (= e!3255646 (matchZipper!1067 lt!2145341 (t!373949 s!2326)))))

(declare-fun b!5231569 () Bool)

(declare-fun res!2220658 () Bool)

(assert (=> b!5231569 (=> res!2220658 e!3255663)))

(assert (=> b!5231569 (= res!2220658 (not ((_ is Cons!60644) (exprs!4707 (h!67093 zl!343)))))))

(declare-fun b!5231570 () Bool)

(declare-fun Unit!152604 () Unit!152598)

(assert (=> b!5231570 (= e!3255661 Unit!152604)))

(declare-fun lt!2145364 () Unit!152598)

(assert (=> b!5231570 (= lt!2145364 (lemmaZipperConcatMatchesSameAsBothZippers!60 lt!2145342 lt!2145341 (t!373949 s!2326)))))

(declare-fun res!2220669 () Bool)

(assert (=> b!5231570 (= res!2220669 (matchZipper!1067 lt!2145342 (t!373949 s!2326)))))

(assert (=> b!5231570 (=> res!2220669 e!3255660)))

(assert (=> b!5231570 (= (matchZipper!1067 ((_ map or) lt!2145342 lt!2145341) (t!373949 s!2326)) e!3255660)))

(declare-fun b!5231571 () Bool)

(declare-fun Unit!152605 () Unit!152598)

(assert (=> b!5231571 (= e!3255649 Unit!152605)))

(declare-fun lt!2145362 () Unit!152598)

(assert (=> b!5231571 (= lt!2145362 (lemmaZipperConcatMatchesSameAsBothZippers!60 lt!2145351 lt!2145341 (t!373949 s!2326)))))

(declare-fun res!2220663 () Bool)

(assert (=> b!5231571 (= res!2220663 lt!2145366)))

(assert (=> b!5231571 (=> res!2220663 e!3255646)))

(assert (=> b!5231571 (= (matchZipper!1067 ((_ map or) lt!2145351 lt!2145341) (t!373949 s!2326)) e!3255646)))

(assert (= (and start!553218 res!2220668) b!5231558))

(assert (= (and b!5231558 res!2220677) b!5231562))

(assert (= (and b!5231562 res!2220661) b!5231555))

(assert (= (and b!5231555 (not res!2220673)) b!5231550))

(assert (= (and b!5231550 (not res!2220675)) b!5231551))

(assert (= (and b!5231551 (not res!2220664)) b!5231569))

(assert (= (and b!5231569 (not res!2220658)) b!5231563))

(assert (= (and b!5231563 (not res!2220680)) b!5231557))

(assert (= (and b!5231557 (not res!2220665)) b!5231546))

(assert (= (and b!5231546 (not res!2220678)) b!5231532))

(assert (= (and b!5231532 (not res!2220679)) b!5231542))

(assert (= (and b!5231542 c!903566) b!5231541))

(assert (= (and b!5231542 (not c!903566)) b!5231547))

(assert (= (and b!5231541 (not res!2220660)) b!5231567))

(assert (= (and b!5231542 (not res!2220674)) b!5231549))

(assert (= (and b!5231549 (not res!2220676)) b!5231534))

(assert (= (and b!5231534 (not res!2220681)) b!5231537))

(assert (= (and b!5231534 res!2220659) b!5231553))

(assert (= (and b!5231534 (not res!2220670)) b!5231565))

(assert (= (and b!5231565 c!903564) b!5231571))

(assert (= (and b!5231565 (not c!903564)) b!5231554))

(assert (= (and b!5231571 (not res!2220663)) b!5231568))

(assert (= (and b!5231565 c!903565) b!5231570))

(assert (= (and b!5231565 (not c!903565)) b!5231536))

(assert (= (and b!5231570 (not res!2220669)) b!5231556))

(assert (= (and b!5231565 (not res!2220667)) b!5231539))

(assert (= (and b!5231565 (not res!2220682)) b!5231540))

(assert (= (and b!5231540 (not res!2220662)) b!5231552))

(assert (= (and b!5231552 (not res!2220672)) b!5231564))

(assert (= (and b!5231564 (not res!2220683)) b!5231535))

(assert (= (and b!5231535 (not res!2220666)) b!5231543))

(assert (= (and b!5231543 (not res!2220671)) b!5231561))

(assert (= (and start!553218 ((_ is ElementMatch!14823) r!7292)) b!5231533))

(assert (= (and start!553218 ((_ is Concat!23668) r!7292)) b!5231544))

(assert (= (and start!553218 ((_ is Star!14823) r!7292)) b!5231545))

(assert (= (and start!553218 ((_ is Union!14823) r!7292)) b!5231559))

(assert (= (and start!553218 condSetEmpty!33323) setIsEmpty!33323))

(assert (= (and start!553218 (not condSetEmpty!33323)) setNonEmpty!33323))

(assert (= setNonEmpty!33323 b!5231548))

(assert (= b!5231566 b!5231560))

(assert (= (and start!553218 ((_ is Cons!60645) zl!343)) b!5231566))

(assert (= (and start!553218 ((_ is Cons!60646) s!2326)) b!5231538))

(declare-fun m!6277284 () Bool)

(assert (=> b!5231542 m!6277284))

(declare-fun m!6277286 () Bool)

(assert (=> b!5231542 m!6277286))

(declare-fun m!6277288 () Bool)

(assert (=> b!5231542 m!6277288))

(declare-fun m!6277290 () Bool)

(assert (=> b!5231542 m!6277290))

(declare-fun m!6277292 () Bool)

(assert (=> b!5231542 m!6277292))

(declare-fun m!6277294 () Bool)

(assert (=> b!5231542 m!6277294))

(declare-fun m!6277296 () Bool)

(assert (=> b!5231542 m!6277296))

(declare-fun m!6277298 () Bool)

(assert (=> setNonEmpty!33323 m!6277298))

(declare-fun m!6277300 () Bool)

(assert (=> b!5231561 m!6277300))

(declare-fun m!6277302 () Bool)

(assert (=> b!5231571 m!6277302))

(declare-fun m!6277304 () Bool)

(assert (=> b!5231571 m!6277304))

(declare-fun m!6277306 () Bool)

(assert (=> b!5231550 m!6277306))

(declare-fun m!6277308 () Bool)

(assert (=> b!5231568 m!6277308))

(declare-fun m!6277310 () Bool)

(assert (=> b!5231558 m!6277310))

(declare-fun m!6277312 () Bool)

(assert (=> b!5231541 m!6277312))

(declare-fun m!6277314 () Bool)

(assert (=> b!5231541 m!6277314))

(declare-fun m!6277316 () Bool)

(assert (=> b!5231541 m!6277316))

(assert (=> b!5231556 m!6277308))

(declare-fun m!6277318 () Bool)

(assert (=> start!553218 m!6277318))

(declare-fun m!6277320 () Bool)

(assert (=> b!5231564 m!6277320))

(declare-fun m!6277322 () Bool)

(assert (=> b!5231565 m!6277322))

(declare-fun m!6277324 () Bool)

(assert (=> b!5231565 m!6277324))

(declare-fun m!6277326 () Bool)

(assert (=> b!5231565 m!6277326))

(declare-fun m!6277328 () Bool)

(assert (=> b!5231565 m!6277328))

(declare-fun m!6277330 () Bool)

(assert (=> b!5231565 m!6277330))

(declare-fun m!6277332 () Bool)

(assert (=> b!5231565 m!6277332))

(declare-fun m!6277334 () Bool)

(assert (=> b!5231565 m!6277334))

(declare-fun m!6277336 () Bool)

(assert (=> b!5231565 m!6277336))

(declare-fun m!6277338 () Bool)

(assert (=> b!5231565 m!6277338))

(declare-fun m!6277340 () Bool)

(assert (=> b!5231565 m!6277340))

(declare-fun m!6277342 () Bool)

(assert (=> b!5231565 m!6277342))

(declare-fun m!6277344 () Bool)

(assert (=> b!5231565 m!6277344))

(declare-fun m!6277346 () Bool)

(assert (=> b!5231562 m!6277346))

(declare-fun m!6277348 () Bool)

(assert (=> b!5231566 m!6277348))

(declare-fun m!6277350 () Bool)

(assert (=> b!5231570 m!6277350))

(declare-fun m!6277352 () Bool)

(assert (=> b!5231570 m!6277352))

(declare-fun m!6277354 () Bool)

(assert (=> b!5231570 m!6277354))

(declare-fun m!6277356 () Bool)

(assert (=> b!5231549 m!6277356))

(declare-fun m!6277358 () Bool)

(assert (=> b!5231549 m!6277358))

(assert (=> b!5231553 m!6277352))

(declare-fun m!6277360 () Bool)

(assert (=> b!5231543 m!6277360))

(declare-fun m!6277362 () Bool)

(assert (=> b!5231555 m!6277362))

(declare-fun m!6277364 () Bool)

(assert (=> b!5231555 m!6277364))

(declare-fun m!6277366 () Bool)

(assert (=> b!5231555 m!6277366))

(declare-fun m!6277368 () Bool)

(assert (=> b!5231532 m!6277368))

(declare-fun m!6277370 () Bool)

(assert (=> b!5231539 m!6277370))

(declare-fun m!6277372 () Bool)

(assert (=> b!5231535 m!6277372))

(assert (=> b!5231535 m!6277372))

(declare-fun m!6277374 () Bool)

(assert (=> b!5231535 m!6277374))

(declare-fun m!6277376 () Bool)

(assert (=> b!5231551 m!6277376))

(assert (=> b!5231567 m!6277308))

(declare-fun m!6277378 () Bool)

(assert (=> b!5231563 m!6277378))

(assert (=> b!5231563 m!6277378))

(declare-fun m!6277380 () Bool)

(assert (=> b!5231563 m!6277380))

(assert (=> b!5231534 m!6277314))

(declare-fun m!6277382 () Bool)

(assert (=> b!5231534 m!6277382))

(declare-fun m!6277384 () Bool)

(assert (=> b!5231534 m!6277384))

(declare-fun m!6277386 () Bool)

(assert (=> b!5231534 m!6277386))

(declare-fun m!6277388 () Bool)

(assert (=> b!5231552 m!6277388))

(declare-fun m!6277390 () Bool)

(assert (=> b!5231552 m!6277390))

(assert (=> b!5231537 m!6277352))

(declare-fun m!6277392 () Bool)

(assert (=> b!5231546 m!6277392))

(declare-fun m!6277394 () Bool)

(assert (=> b!5231546 m!6277394))

(declare-fun m!6277396 () Bool)

(assert (=> b!5231546 m!6277396))

(assert (=> b!5231546 m!6277392))

(declare-fun m!6277398 () Bool)

(assert (=> b!5231546 m!6277398))

(declare-fun m!6277400 () Bool)

(assert (=> b!5231546 m!6277400))

(declare-fun m!6277402 () Bool)

(assert (=> b!5231546 m!6277402))

(assert (=> b!5231546 m!6277396))

(check-sat (not b!5231555) (not b!5231550) (not b!5231571) (not start!553218) (not b!5231542) (not b!5231556) (not b!5231546) tp_is_empty!38899 (not b!5231543) (not b!5231535) (not b!5231551) (not b!5231563) (not b!5231548) (not b!5231558) (not b!5231567) (not b!5231564) (not b!5231552) (not b!5231565) (not b!5231534) (not setNonEmpty!33323) (not b!5231549) (not b!5231532) (not b!5231541) (not b!5231539) (not b!5231568) (not b!5231561) (not b!5231553) (not b!5231544) (not b!5231566) (not b!5231545) (not b!5231570) (not b!5231538) (not b!5231559) (not b!5231537) (not b!5231562) (not b!5231560))
(check-sat)
