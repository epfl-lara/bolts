; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!644062 () Bool)

(assert start!644062)

(declare-fun b!6573692 () Bool)

(assert (=> b!6573692 true))

(assert (=> b!6573692 true))

(declare-fun lambda!366168 () Int)

(declare-fun lambda!366167 () Int)

(assert (=> b!6573692 (not (= lambda!366168 lambda!366167))))

(assert (=> b!6573692 true))

(assert (=> b!6573692 true))

(declare-fun b!6573688 () Bool)

(assert (=> b!6573688 true))

(declare-fun b!6573649 () Bool)

(declare-fun res!2697692 () Bool)

(declare-fun e!3978797 () Bool)

(assert (=> b!6573649 (=> res!2697692 e!3978797)))

(declare-datatypes ((C!33172 0))(
  ( (C!33173 (val!26288 Int)) )
))
(declare-datatypes ((Regex!16451 0))(
  ( (ElementMatch!16451 (c!1208648 C!33172)) (Concat!25296 (regOne!33414 Regex!16451) (regTwo!33414 Regex!16451)) (EmptyExpr!16451) (Star!16451 (reg!16780 Regex!16451)) (EmptyLang!16451) (Union!16451 (regOne!33415 Regex!16451) (regTwo!33415 Regex!16451)) )
))
(declare-datatypes ((List!65652 0))(
  ( (Nil!65528) (Cons!65528 (h!71976 Regex!16451) (t!379298 List!65652)) )
))
(declare-datatypes ((Context!11670 0))(
  ( (Context!11671 (exprs!6335 List!65652)) )
))
(declare-datatypes ((List!65653 0))(
  ( (Nil!65529) (Cons!65529 (h!71977 Context!11670) (t!379299 List!65653)) )
))
(declare-fun zl!343 () List!65653)

(declare-fun lt!2409349 () Context!11670)

(declare-fun zipperDepth!388 (List!65653) Int)

(assert (=> b!6573649 (= res!2697692 (< (zipperDepth!388 zl!343) (zipperDepth!388 (Cons!65529 lt!2409349 Nil!65529))))))

(declare-fun b!6573650 () Bool)

(declare-fun e!3978784 () Bool)

(declare-fun e!3978791 () Bool)

(assert (=> b!6573650 (= e!3978784 e!3978791)))

(declare-fun res!2697680 () Bool)

(assert (=> b!6573650 (=> res!2697680 e!3978791)))

(declare-fun lt!2409343 () Context!11670)

(declare-fun r!7292 () Regex!16451)

(declare-fun unfocusZipper!2193 (List!65653) Regex!16451)

(assert (=> b!6573650 (= res!2697680 (not (= (unfocusZipper!2193 (Cons!65529 lt!2409343 Nil!65529)) (reg!16780 (regOne!33414 r!7292)))))))

(declare-fun lt!2409346 () Context!11670)

(declare-datatypes ((List!65654 0))(
  ( (Nil!65530) (Cons!65530 (h!71978 C!33172) (t!379300 List!65654)) )
))
(declare-fun s!2326 () List!65654)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2409358 () (InoxSet Context!11670))

(declare-fun lambda!366169 () Int)

(declare-fun flatMap!1956 ((InoxSet Context!11670) Int) (InoxSet Context!11670))

(declare-fun derivationStepZipperUp!1625 (Context!11670 C!33172) (InoxSet Context!11670))

(assert (=> b!6573650 (= (flatMap!1956 lt!2409358 lambda!366169) (derivationStepZipperUp!1625 lt!2409346 (h!71978 s!2326)))))

(declare-datatypes ((Unit!159139 0))(
  ( (Unit!159140) )
))
(declare-fun lt!2409362 () Unit!159139)

(declare-fun lemmaFlatMapOnSingletonSet!1482 ((InoxSet Context!11670) Context!11670 Int) Unit!159139)

(assert (=> b!6573650 (= lt!2409362 (lemmaFlatMapOnSingletonSet!1482 lt!2409358 lt!2409346 lambda!366169))))

(declare-fun lt!2409336 () (InoxSet Context!11670))

(assert (=> b!6573650 (= (flatMap!1956 lt!2409336 lambda!366169) (derivationStepZipperUp!1625 lt!2409343 (h!71978 s!2326)))))

(declare-fun lt!2409344 () Unit!159139)

(assert (=> b!6573650 (= lt!2409344 (lemmaFlatMapOnSingletonSet!1482 lt!2409336 lt!2409343 lambda!366169))))

(declare-fun lt!2409338 () (InoxSet Context!11670))

(assert (=> b!6573650 (= lt!2409338 (derivationStepZipperUp!1625 lt!2409346 (h!71978 s!2326)))))

(declare-fun lt!2409345 () (InoxSet Context!11670))

(assert (=> b!6573650 (= lt!2409345 (derivationStepZipperUp!1625 lt!2409343 (h!71978 s!2326)))))

(assert (=> b!6573650 (= lt!2409358 (store ((as const (Array Context!11670 Bool)) false) lt!2409346 true))))

(assert (=> b!6573650 (= lt!2409336 (store ((as const (Array Context!11670 Bool)) false) lt!2409343 true))))

(assert (=> b!6573650 (= lt!2409343 (Context!11671 (Cons!65528 (reg!16780 (regOne!33414 r!7292)) Nil!65528)))))

(declare-fun b!6573651 () Bool)

(declare-fun e!3978800 () Bool)

(assert (=> b!6573651 (= e!3978791 e!3978800)))

(declare-fun res!2697707 () Bool)

(assert (=> b!6573651 (=> res!2697707 e!3978800)))

(declare-fun lt!2409361 () Bool)

(assert (=> b!6573651 (= res!2697707 lt!2409361)))

(declare-fun lt!2409356 () Regex!16451)

(declare-fun matchR!8634 (Regex!16451 List!65654) Bool)

(declare-fun matchRSpec!3552 (Regex!16451 List!65654) Bool)

(assert (=> b!6573651 (= (matchR!8634 lt!2409356 s!2326) (matchRSpec!3552 lt!2409356 s!2326))))

(declare-fun lt!2409329 () Unit!159139)

(declare-fun mainMatchTheorem!3552 (Regex!16451 List!65654) Unit!159139)

(assert (=> b!6573651 (= lt!2409329 (mainMatchTheorem!3552 lt!2409356 s!2326))))

(declare-fun b!6573652 () Bool)

(declare-fun res!2697688 () Bool)

(assert (=> b!6573652 (=> res!2697688 e!3978800)))

(declare-fun lt!2409348 () Bool)

(assert (=> b!6573652 (= res!2697688 (not lt!2409348))))

(declare-fun b!6573653 () Bool)

(declare-fun e!3978782 () Bool)

(assert (=> b!6573653 (= e!3978800 e!3978782)))

(declare-fun res!2697697 () Bool)

(assert (=> b!6573653 (=> res!2697697 e!3978782)))

(declare-fun e!3978798 () Bool)

(assert (=> b!6573653 (= res!2697697 e!3978798)))

(declare-fun res!2697685 () Bool)

(assert (=> b!6573653 (=> (not res!2697685) (not e!3978798))))

(declare-fun lt!2409360 () Bool)

(assert (=> b!6573653 (= res!2697685 (not lt!2409360))))

(declare-fun lt!2409332 () (InoxSet Context!11670))

(declare-fun matchZipper!2463 ((InoxSet Context!11670) List!65654) Bool)

(assert (=> b!6573653 (= lt!2409360 (matchZipper!2463 lt!2409332 (t!379300 s!2326)))))

(declare-fun b!6573654 () Bool)

(declare-fun e!3978790 () Bool)

(declare-fun tp!1814378 () Bool)

(declare-fun tp!1814372 () Bool)

(assert (=> b!6573654 (= e!3978790 (and tp!1814378 tp!1814372))))

(declare-fun b!6573655 () Bool)

(declare-fun lt!2409340 () (InoxSet Context!11670))

(assert (=> b!6573655 (= e!3978798 (not (matchZipper!2463 lt!2409340 (t!379300 s!2326))))))

(declare-fun b!6573656 () Bool)

(declare-fun e!3978801 () Bool)

(declare-fun e!3978792 () Bool)

(assert (=> b!6573656 (= e!3978801 e!3978792)))

(declare-fun res!2697696 () Bool)

(assert (=> b!6573656 (=> res!2697696 e!3978792)))

(declare-fun lt!2409337 () Regex!16451)

(assert (=> b!6573656 (= res!2697696 (not (= r!7292 lt!2409337)))))

(declare-fun lt!2409359 () Regex!16451)

(assert (=> b!6573656 (= lt!2409337 (Concat!25296 lt!2409359 (regTwo!33414 r!7292)))))

(declare-fun b!6573657 () Bool)

(declare-fun res!2697690 () Bool)

(declare-fun e!3978785 () Bool)

(assert (=> b!6573657 (=> res!2697690 e!3978785)))

(get-info :version)

(assert (=> b!6573657 (= res!2697690 (not ((_ is Cons!65528) (exprs!6335 (h!71977 zl!343)))))))

(declare-fun b!6573658 () Bool)

(declare-fun res!2697681 () Bool)

(assert (=> b!6573658 (=> res!2697681 e!3978801)))

(declare-fun lt!2409354 () (InoxSet Context!11670))

(declare-fun lt!2409342 () (InoxSet Context!11670))

(assert (=> b!6573658 (= res!2697681 (not (= (matchZipper!2463 lt!2409342 s!2326) (matchZipper!2463 lt!2409354 (t!379300 s!2326)))))))

(declare-fun b!6573659 () Bool)

(declare-fun e!3978793 () Bool)

(assert (=> b!6573659 (= e!3978782 e!3978793)))

(declare-fun res!2697704 () Bool)

(assert (=> b!6573659 (=> res!2697704 e!3978793)))

(declare-fun lt!2409347 () (InoxSet Context!11670))

(declare-fun derivationStepZipper!2417 ((InoxSet Context!11670) C!33172) (InoxSet Context!11670))

(assert (=> b!6573659 (= res!2697704 (not (= lt!2409340 (derivationStepZipper!2417 lt!2409347 (h!71978 s!2326)))))))

(assert (=> b!6573659 (= (flatMap!1956 lt!2409347 lambda!366169) (derivationStepZipperUp!1625 lt!2409349 (h!71978 s!2326)))))

(declare-fun lt!2409327 () Unit!159139)

(assert (=> b!6573659 (= lt!2409327 (lemmaFlatMapOnSingletonSet!1482 lt!2409347 lt!2409349 lambda!366169))))

(assert (=> b!6573659 (= lt!2409347 (store ((as const (Array Context!11670 Bool)) false) lt!2409349 true))))

(declare-fun b!6573660 () Bool)

(declare-fun res!2697679 () Bool)

(assert (=> b!6573660 (=> res!2697679 e!3978785)))

(declare-fun generalisedConcat!2048 (List!65652) Regex!16451)

(assert (=> b!6573660 (= res!2697679 (not (= r!7292 (generalisedConcat!2048 (exprs!6335 (h!71977 zl!343))))))))

(declare-fun b!6573661 () Bool)

(declare-fun e!3978786 () Bool)

(declare-fun e!3978799 () Bool)

(assert (=> b!6573661 (= e!3978786 e!3978799)))

(declare-fun res!2697686 () Bool)

(assert (=> b!6573661 (=> (not res!2697686) (not e!3978799))))

(declare-fun lt!2409328 () Regex!16451)

(assert (=> b!6573661 (= res!2697686 (= r!7292 lt!2409328))))

(assert (=> b!6573661 (= lt!2409328 (unfocusZipper!2193 zl!343))))

(declare-fun b!6573662 () Bool)

(declare-fun lt!2409351 () Regex!16451)

(declare-fun validRegex!8187 (Regex!16451) Bool)

(assert (=> b!6573662 (= e!3978797 (validRegex!8187 lt!2409351))))

(declare-fun b!6573663 () Bool)

(declare-fun e!3978796 () Bool)

(assert (=> b!6573663 (= e!3978796 e!3978801)))

(declare-fun res!2697702 () Bool)

(assert (=> b!6573663 (=> res!2697702 e!3978801)))

(declare-fun lt!2409330 () (InoxSet Context!11670))

(assert (=> b!6573663 (= res!2697702 (not (= lt!2409354 lt!2409330)))))

(declare-fun lt!2409352 () Context!11670)

(assert (=> b!6573663 (= (flatMap!1956 lt!2409342 lambda!366169) (derivationStepZipperUp!1625 lt!2409352 (h!71978 s!2326)))))

(declare-fun lt!2409353 () Unit!159139)

(assert (=> b!6573663 (= lt!2409353 (lemmaFlatMapOnSingletonSet!1482 lt!2409342 lt!2409352 lambda!366169))))

(declare-fun lt!2409331 () (InoxSet Context!11670))

(assert (=> b!6573663 (= lt!2409331 (derivationStepZipperUp!1625 lt!2409352 (h!71978 s!2326)))))

(assert (=> b!6573663 (= lt!2409354 (derivationStepZipper!2417 lt!2409342 (h!71978 s!2326)))))

(assert (=> b!6573663 (= lt!2409342 (store ((as const (Array Context!11670 Bool)) false) lt!2409352 true))))

(declare-fun lt!2409334 () List!65652)

(assert (=> b!6573663 (= lt!2409352 (Context!11671 (Cons!65528 (reg!16780 (regOne!33414 r!7292)) lt!2409334)))))

(declare-fun b!6573664 () Bool)

(declare-fun res!2697687 () Bool)

(assert (=> b!6573664 (=> res!2697687 e!3978791)))

(assert (=> b!6573664 (= res!2697687 (not (= (unfocusZipper!2193 (Cons!65529 lt!2409346 Nil!65529)) lt!2409337)))))

(declare-fun b!6573665 () Bool)

(declare-fun e!3978794 () Bool)

(declare-fun nullable!6444 (Regex!16451) Bool)

(assert (=> b!6573665 (= e!3978794 (nullable!6444 (regOne!33414 (regOne!33414 r!7292))))))

(declare-fun b!6573666 () Bool)

(declare-fun res!2697693 () Bool)

(assert (=> b!6573666 (=> res!2697693 e!3978782)))

(assert (=> b!6573666 (= res!2697693 (not (matchZipper!2463 lt!2409340 (t!379300 s!2326))))))

(declare-fun b!6573667 () Bool)

(declare-fun tp!1814374 () Bool)

(declare-fun tp!1814377 () Bool)

(assert (=> b!6573667 (= e!3978790 (and tp!1814374 tp!1814377))))

(declare-fun res!2697705 () Bool)

(assert (=> start!644062 (=> (not res!2697705) (not e!3978786))))

(assert (=> start!644062 (= res!2697705 (validRegex!8187 r!7292))))

(assert (=> start!644062 e!3978786))

(assert (=> start!644062 e!3978790))

(declare-fun condSetEmpty!44896 () Bool)

(declare-fun z!1189 () (InoxSet Context!11670))

(assert (=> start!644062 (= condSetEmpty!44896 (= z!1189 ((as const (Array Context!11670 Bool)) false)))))

(declare-fun setRes!44896 () Bool)

(assert (=> start!644062 setRes!44896))

(declare-fun e!3978789 () Bool)

(assert (=> start!644062 e!3978789))

(declare-fun e!3978783 () Bool)

(assert (=> start!644062 e!3978783))

(declare-fun b!6573668 () Bool)

(assert (=> b!6573668 (= e!3978792 e!3978784)))

(declare-fun res!2697708 () Bool)

(assert (=> b!6573668 (=> res!2697708 e!3978784)))

(assert (=> b!6573668 (= res!2697708 (not (= (unfocusZipper!2193 (Cons!65529 lt!2409352 Nil!65529)) lt!2409356)))))

(assert (=> b!6573668 (= lt!2409356 (Concat!25296 (reg!16780 (regOne!33414 r!7292)) lt!2409337))))

(declare-fun b!6573669 () Bool)

(declare-fun res!2697703 () Bool)

(assert (=> b!6573669 (=> res!2697703 e!3978785)))

(declare-fun isEmpty!37781 (List!65653) Bool)

(assert (=> b!6573669 (= res!2697703 (not (isEmpty!37781 (t!379299 zl!343))))))

(declare-fun b!6573670 () Bool)

(declare-fun res!2697701 () Bool)

(assert (=> b!6573670 (=> res!2697701 e!3978785)))

(declare-fun generalisedUnion!2295 (List!65652) Regex!16451)

(declare-fun unfocusZipperList!1872 (List!65653) List!65652)

(assert (=> b!6573670 (= res!2697701 (not (= r!7292 (generalisedUnion!2295 (unfocusZipperList!1872 zl!343)))))))

(declare-fun b!6573671 () Bool)

(declare-fun e!3978802 () Unit!159139)

(declare-fun Unit!159141 () Unit!159139)

(assert (=> b!6573671 (= e!3978802 Unit!159141)))

(declare-fun setIsEmpty!44896 () Bool)

(assert (=> setIsEmpty!44896 setRes!44896))

(declare-fun b!6573672 () Bool)

(declare-fun res!2697706 () Bool)

(assert (=> b!6573672 (=> res!2697706 e!3978800)))

(assert (=> b!6573672 (= res!2697706 (not (matchZipper!2463 z!1189 s!2326)))))

(declare-fun b!6573673 () Bool)

(declare-fun res!2697698 () Bool)

(declare-fun e!3978795 () Bool)

(assert (=> b!6573673 (=> res!2697698 e!3978795)))

(assert (=> b!6573673 (= res!2697698 (or ((_ is Concat!25296) (regOne!33414 r!7292)) (not ((_ is Star!16451) (regOne!33414 r!7292)))))))

(declare-fun b!6573674 () Bool)

(declare-fun e!3978804 () Bool)

(declare-fun tp!1814376 () Bool)

(assert (=> b!6573674 (= e!3978804 tp!1814376)))

(declare-fun b!6573675 () Bool)

(assert (=> b!6573675 (= e!3978793 e!3978797)))

(declare-fun res!2697684 () Bool)

(assert (=> b!6573675 (=> res!2697684 e!3978797)))

(declare-fun regexDepth!348 (Regex!16451) Int)

(assert (=> b!6573675 (= res!2697684 (< (regexDepth!348 r!7292) (regexDepth!348 lt!2409351)))))

(assert (=> b!6573675 (= lt!2409351 (generalisedConcat!2048 (t!379298 (exprs!6335 (h!71977 zl!343)))))))

(declare-fun b!6573676 () Bool)

(declare-fun res!2697710 () Bool)

(assert (=> b!6573676 (=> res!2697710 e!3978801)))

(assert (=> b!6573676 (= res!2697710 (not (= lt!2409328 r!7292)))))

(declare-fun b!6573677 () Bool)

(declare-fun Unit!159142 () Unit!159139)

(assert (=> b!6573677 (= e!3978802 Unit!159142)))

(declare-fun lt!2409333 () Unit!159139)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1282 ((InoxSet Context!11670) (InoxSet Context!11670) List!65654) Unit!159139)

(assert (=> b!6573677 (= lt!2409333 (lemmaZipperConcatMatchesSameAsBothZippers!1282 lt!2409332 lt!2409340 (t!379300 s!2326)))))

(declare-fun res!2697700 () Bool)

(assert (=> b!6573677 (= res!2697700 (matchZipper!2463 lt!2409332 (t!379300 s!2326)))))

(declare-fun e!3978788 () Bool)

(assert (=> b!6573677 (=> res!2697700 e!3978788)))

(assert (=> b!6573677 (= (matchZipper!2463 ((_ map or) lt!2409332 lt!2409340) (t!379300 s!2326)) e!3978788)))

(declare-fun b!6573678 () Bool)

(declare-fun tp!1814371 () Bool)

(assert (=> b!6573678 (= e!3978790 tp!1814371)))

(declare-fun setElem!44896 () Context!11670)

(declare-fun setNonEmpty!44896 () Bool)

(declare-fun e!3978787 () Bool)

(declare-fun tp!1814370 () Bool)

(declare-fun inv!84374 (Context!11670) Bool)

(assert (=> setNonEmpty!44896 (= setRes!44896 (and tp!1814370 (inv!84374 setElem!44896) e!3978787))))

(declare-fun setRest!44896 () (InoxSet Context!11670))

(assert (=> setNonEmpty!44896 (= z!1189 ((_ map or) (store ((as const (Array Context!11670 Bool)) false) setElem!44896 true) setRest!44896))))

(declare-fun b!6573679 () Bool)

(declare-fun res!2697691 () Bool)

(assert (=> b!6573679 (=> (not res!2697691) (not e!3978786))))

(declare-fun toList!10235 ((InoxSet Context!11670)) List!65653)

(assert (=> b!6573679 (= res!2697691 (= (toList!10235 z!1189) zl!343))))

(declare-fun b!6573680 () Bool)

(declare-fun tp!1814379 () Bool)

(assert (=> b!6573680 (= e!3978787 tp!1814379)))

(declare-fun b!6573681 () Bool)

(assert (=> b!6573681 (= e!3978799 (not e!3978785))))

(declare-fun res!2697682 () Bool)

(assert (=> b!6573681 (=> res!2697682 e!3978785)))

(assert (=> b!6573681 (= res!2697682 (not ((_ is Cons!65529) zl!343)))))

(assert (=> b!6573681 (= lt!2409361 (matchRSpec!3552 r!7292 s!2326))))

(assert (=> b!6573681 (= lt!2409361 (matchR!8634 r!7292 s!2326))))

(declare-fun lt!2409339 () Unit!159139)

(assert (=> b!6573681 (= lt!2409339 (mainMatchTheorem!3552 r!7292 s!2326))))

(declare-fun b!6573682 () Bool)

(assert (=> b!6573682 (= e!3978788 (matchZipper!2463 lt!2409340 (t!379300 s!2326)))))

(declare-fun b!6573683 () Bool)

(declare-fun res!2697678 () Bool)

(assert (=> b!6573683 (=> res!2697678 e!3978785)))

(assert (=> b!6573683 (= res!2697678 (or ((_ is EmptyExpr!16451) r!7292) ((_ is EmptyLang!16451) r!7292) ((_ is ElementMatch!16451) r!7292) ((_ is Union!16451) r!7292) (not ((_ is Concat!25296) r!7292))))))

(declare-fun b!6573684 () Bool)

(declare-fun tp!1814373 () Bool)

(assert (=> b!6573684 (= e!3978789 (and (inv!84374 (h!71977 zl!343)) e!3978804 tp!1814373))))

(declare-fun b!6573685 () Bool)

(declare-fun tp_is_empty!42155 () Bool)

(assert (=> b!6573685 (= e!3978790 tp_is_empty!42155)))

(declare-fun b!6573686 () Bool)

(declare-fun res!2697677 () Bool)

(declare-fun e!3978803 () Bool)

(assert (=> b!6573686 (=> res!2697677 e!3978803)))

(declare-fun isEmpty!37782 (List!65652) Bool)

(assert (=> b!6573686 (= res!2697677 (isEmpty!37782 (t!379298 (exprs!6335 (h!71977 zl!343)))))))

(declare-fun b!6573687 () Bool)

(declare-fun tp!1814375 () Bool)

(assert (=> b!6573687 (= e!3978783 (and tp_is_empty!42155 tp!1814375))))

(assert (=> b!6573688 (= e!3978803 e!3978795)))

(declare-fun res!2697689 () Bool)

(assert (=> b!6573688 (=> res!2697689 e!3978795)))

(assert (=> b!6573688 (= res!2697689 (or (and ((_ is ElementMatch!16451) (regOne!33414 r!7292)) (= (c!1208648 (regOne!33414 r!7292)) (h!71978 s!2326))) ((_ is Union!16451) (regOne!33414 r!7292))))))

(declare-fun lt!2409326 () Unit!159139)

(assert (=> b!6573688 (= lt!2409326 e!3978802)))

(declare-fun c!1208647 () Bool)

(assert (=> b!6573688 (= c!1208647 lt!2409348)))

(assert (=> b!6573688 (= lt!2409348 (nullable!6444 (h!71976 (exprs!6335 (h!71977 zl!343)))))))

(assert (=> b!6573688 (= (flatMap!1956 z!1189 lambda!366169) (derivationStepZipperUp!1625 (h!71977 zl!343) (h!71978 s!2326)))))

(declare-fun lt!2409355 () Unit!159139)

(assert (=> b!6573688 (= lt!2409355 (lemmaFlatMapOnSingletonSet!1482 z!1189 (h!71977 zl!343) lambda!366169))))

(assert (=> b!6573688 (= lt!2409340 (derivationStepZipperUp!1625 lt!2409349 (h!71978 s!2326)))))

(declare-fun derivationStepZipperDown!1699 (Regex!16451 Context!11670 C!33172) (InoxSet Context!11670))

(assert (=> b!6573688 (= lt!2409332 (derivationStepZipperDown!1699 (h!71976 (exprs!6335 (h!71977 zl!343))) lt!2409349 (h!71978 s!2326)))))

(assert (=> b!6573688 (= lt!2409349 (Context!11671 (t!379298 (exprs!6335 (h!71977 zl!343)))))))

(declare-fun lt!2409341 () (InoxSet Context!11670))

(assert (=> b!6573688 (= lt!2409341 (derivationStepZipperUp!1625 (Context!11671 (Cons!65528 (h!71976 (exprs!6335 (h!71977 zl!343))) (t!379298 (exprs!6335 (h!71977 zl!343))))) (h!71978 s!2326)))))

(declare-fun b!6573689 () Bool)

(declare-fun res!2697694 () Bool)

(assert (=> b!6573689 (=> res!2697694 e!3978782)))

(assert (=> b!6573689 (= res!2697694 lt!2409360)))

(declare-fun b!6573690 () Bool)

(assert (=> b!6573690 (= e!3978795 e!3978796)))

(declare-fun res!2697683 () Bool)

(assert (=> b!6573690 (=> res!2697683 e!3978796)))

(assert (=> b!6573690 (= res!2697683 (not (= lt!2409332 lt!2409330)))))

(assert (=> b!6573690 (= lt!2409330 (derivationStepZipperDown!1699 (reg!16780 (regOne!33414 r!7292)) lt!2409346 (h!71978 s!2326)))))

(assert (=> b!6573690 (= lt!2409346 (Context!11671 lt!2409334))))

(assert (=> b!6573690 (= lt!2409334 (Cons!65528 lt!2409359 (t!379298 (exprs!6335 (h!71977 zl!343)))))))

(assert (=> b!6573690 (= lt!2409359 (Star!16451 (reg!16780 (regOne!33414 r!7292))))))

(declare-fun b!6573691 () Bool)

(declare-fun res!2697709 () Bool)

(assert (=> b!6573691 (=> res!2697709 e!3978795)))

(assert (=> b!6573691 (= res!2697709 e!3978794)))

(declare-fun res!2697699 () Bool)

(assert (=> b!6573691 (=> (not res!2697699) (not e!3978794))))

(assert (=> b!6573691 (= res!2697699 ((_ is Concat!25296) (regOne!33414 r!7292)))))

(assert (=> b!6573692 (= e!3978785 e!3978803)))

(declare-fun res!2697695 () Bool)

(assert (=> b!6573692 (=> res!2697695 e!3978803)))

(declare-fun lt!2409350 () Bool)

(assert (=> b!6573692 (= res!2697695 (or (not (= lt!2409361 lt!2409350)) ((_ is Nil!65530) s!2326)))))

(declare-fun Exists!3521 (Int) Bool)

(assert (=> b!6573692 (= (Exists!3521 lambda!366167) (Exists!3521 lambda!366168))))

(declare-fun lt!2409335 () Unit!159139)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2058 (Regex!16451 Regex!16451 List!65654) Unit!159139)

(assert (=> b!6573692 (= lt!2409335 (lemmaExistCutMatchRandMatchRSpecEquivalent!2058 (regOne!33414 r!7292) (regTwo!33414 r!7292) s!2326))))

(assert (=> b!6573692 (= lt!2409350 (Exists!3521 lambda!366167))))

(declare-datatypes ((tuple2!66860 0))(
  ( (tuple2!66861 (_1!36733 List!65654) (_2!36733 List!65654)) )
))
(declare-datatypes ((Option!16342 0))(
  ( (None!16341) (Some!16341 (v!52526 tuple2!66860)) )
))
(declare-fun isDefined!13045 (Option!16342) Bool)

(declare-fun findConcatSeparation!2756 (Regex!16451 Regex!16451 List!65654 List!65654 List!65654) Option!16342)

(assert (=> b!6573692 (= lt!2409350 (isDefined!13045 (findConcatSeparation!2756 (regOne!33414 r!7292) (regTwo!33414 r!7292) Nil!65530 s!2326 s!2326)))))

(declare-fun lt!2409357 () Unit!159139)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2520 (Regex!16451 Regex!16451 List!65654) Unit!159139)

(assert (=> b!6573692 (= lt!2409357 (lemmaFindConcatSeparationEquivalentToExists!2520 (regOne!33414 r!7292) (regTwo!33414 r!7292) s!2326))))

(assert (= (and start!644062 res!2697705) b!6573679))

(assert (= (and b!6573679 res!2697691) b!6573661))

(assert (= (and b!6573661 res!2697686) b!6573681))

(assert (= (and b!6573681 (not res!2697682)) b!6573669))

(assert (= (and b!6573669 (not res!2697703)) b!6573660))

(assert (= (and b!6573660 (not res!2697679)) b!6573657))

(assert (= (and b!6573657 (not res!2697690)) b!6573670))

(assert (= (and b!6573670 (not res!2697701)) b!6573683))

(assert (= (and b!6573683 (not res!2697678)) b!6573692))

(assert (= (and b!6573692 (not res!2697695)) b!6573686))

(assert (= (and b!6573686 (not res!2697677)) b!6573688))

(assert (= (and b!6573688 c!1208647) b!6573677))

(assert (= (and b!6573688 (not c!1208647)) b!6573671))

(assert (= (and b!6573677 (not res!2697700)) b!6573682))

(assert (= (and b!6573688 (not res!2697689)) b!6573691))

(assert (= (and b!6573691 res!2697699) b!6573665))

(assert (= (and b!6573691 (not res!2697709)) b!6573673))

(assert (= (and b!6573673 (not res!2697698)) b!6573690))

(assert (= (and b!6573690 (not res!2697683)) b!6573663))

(assert (= (and b!6573663 (not res!2697702)) b!6573658))

(assert (= (and b!6573658 (not res!2697681)) b!6573676))

(assert (= (and b!6573676 (not res!2697710)) b!6573656))

(assert (= (and b!6573656 (not res!2697696)) b!6573668))

(assert (= (and b!6573668 (not res!2697708)) b!6573650))

(assert (= (and b!6573650 (not res!2697680)) b!6573664))

(assert (= (and b!6573664 (not res!2697687)) b!6573651))

(assert (= (and b!6573651 (not res!2697707)) b!6573672))

(assert (= (and b!6573672 (not res!2697706)) b!6573652))

(assert (= (and b!6573652 (not res!2697688)) b!6573653))

(assert (= (and b!6573653 res!2697685) b!6573655))

(assert (= (and b!6573653 (not res!2697697)) b!6573689))

(assert (= (and b!6573689 (not res!2697694)) b!6573666))

(assert (= (and b!6573666 (not res!2697693)) b!6573659))

(assert (= (and b!6573659 (not res!2697704)) b!6573675))

(assert (= (and b!6573675 (not res!2697684)) b!6573649))

(assert (= (and b!6573649 (not res!2697692)) b!6573662))

(assert (= (and start!644062 ((_ is ElementMatch!16451) r!7292)) b!6573685))

(assert (= (and start!644062 ((_ is Concat!25296) r!7292)) b!6573654))

(assert (= (and start!644062 ((_ is Star!16451) r!7292)) b!6573678))

(assert (= (and start!644062 ((_ is Union!16451) r!7292)) b!6573667))

(assert (= (and start!644062 condSetEmpty!44896) setIsEmpty!44896))

(assert (= (and start!644062 (not condSetEmpty!44896)) setNonEmpty!44896))

(assert (= setNonEmpty!44896 b!6573680))

(assert (= b!6573684 b!6573674))

(assert (= (and start!644062 ((_ is Cons!65529) zl!343)) b!6573684))

(assert (= (and start!644062 ((_ is Cons!65530) s!2326)) b!6573687))

(declare-fun m!7354780 () Bool)

(assert (=> setNonEmpty!44896 m!7354780))

(declare-fun m!7354782 () Bool)

(assert (=> b!6573660 m!7354782))

(declare-fun m!7354784 () Bool)

(assert (=> b!6573651 m!7354784))

(declare-fun m!7354786 () Bool)

(assert (=> b!6573651 m!7354786))

(declare-fun m!7354788 () Bool)

(assert (=> b!6573651 m!7354788))

(declare-fun m!7354790 () Bool)

(assert (=> b!6573649 m!7354790))

(declare-fun m!7354792 () Bool)

(assert (=> b!6573649 m!7354792))

(declare-fun m!7354794 () Bool)

(assert (=> b!6573692 m!7354794))

(declare-fun m!7354796 () Bool)

(assert (=> b!6573692 m!7354796))

(declare-fun m!7354798 () Bool)

(assert (=> b!6573692 m!7354798))

(declare-fun m!7354800 () Bool)

(assert (=> b!6573692 m!7354800))

(declare-fun m!7354802 () Bool)

(assert (=> b!6573692 m!7354802))

(assert (=> b!6573692 m!7354794))

(assert (=> b!6573692 m!7354796))

(declare-fun m!7354804 () Bool)

(assert (=> b!6573692 m!7354804))

(declare-fun m!7354806 () Bool)

(assert (=> b!6573686 m!7354806))

(declare-fun m!7354808 () Bool)

(assert (=> b!6573662 m!7354808))

(declare-fun m!7354810 () Bool)

(assert (=> b!6573672 m!7354810))

(declare-fun m!7354812 () Bool)

(assert (=> b!6573675 m!7354812))

(declare-fun m!7354814 () Bool)

(assert (=> b!6573675 m!7354814))

(declare-fun m!7354816 () Bool)

(assert (=> b!6573675 m!7354816))

(declare-fun m!7354818 () Bool)

(assert (=> b!6573666 m!7354818))

(declare-fun m!7354820 () Bool)

(assert (=> b!6573663 m!7354820))

(declare-fun m!7354822 () Bool)

(assert (=> b!6573663 m!7354822))

(declare-fun m!7354824 () Bool)

(assert (=> b!6573663 m!7354824))

(declare-fun m!7354826 () Bool)

(assert (=> b!6573663 m!7354826))

(declare-fun m!7354828 () Bool)

(assert (=> b!6573663 m!7354828))

(declare-fun m!7354830 () Bool)

(assert (=> b!6573661 m!7354830))

(declare-fun m!7354832 () Bool)

(assert (=> b!6573665 m!7354832))

(declare-fun m!7354834 () Bool)

(assert (=> b!6573650 m!7354834))

(declare-fun m!7354836 () Bool)

(assert (=> b!6573650 m!7354836))

(declare-fun m!7354838 () Bool)

(assert (=> b!6573650 m!7354838))

(declare-fun m!7354840 () Bool)

(assert (=> b!6573650 m!7354840))

(declare-fun m!7354842 () Bool)

(assert (=> b!6573650 m!7354842))

(declare-fun m!7354844 () Bool)

(assert (=> b!6573650 m!7354844))

(declare-fun m!7354846 () Bool)

(assert (=> b!6573650 m!7354846))

(declare-fun m!7354848 () Bool)

(assert (=> b!6573650 m!7354848))

(declare-fun m!7354850 () Bool)

(assert (=> b!6573650 m!7354850))

(declare-fun m!7354852 () Bool)

(assert (=> b!6573669 m!7354852))

(assert (=> b!6573655 m!7354818))

(assert (=> b!6573682 m!7354818))

(declare-fun m!7354854 () Bool)

(assert (=> b!6573681 m!7354854))

(declare-fun m!7354856 () Bool)

(assert (=> b!6573681 m!7354856))

(declare-fun m!7354858 () Bool)

(assert (=> b!6573681 m!7354858))

(declare-fun m!7354860 () Bool)

(assert (=> b!6573688 m!7354860))

(declare-fun m!7354862 () Bool)

(assert (=> b!6573688 m!7354862))

(declare-fun m!7354864 () Bool)

(assert (=> b!6573688 m!7354864))

(declare-fun m!7354866 () Bool)

(assert (=> b!6573688 m!7354866))

(declare-fun m!7354868 () Bool)

(assert (=> b!6573688 m!7354868))

(declare-fun m!7354870 () Bool)

(assert (=> b!6573688 m!7354870))

(declare-fun m!7354872 () Bool)

(assert (=> b!6573688 m!7354872))

(declare-fun m!7354874 () Bool)

(assert (=> b!6573664 m!7354874))

(declare-fun m!7354876 () Bool)

(assert (=> b!6573659 m!7354876))

(assert (=> b!6573659 m!7354870))

(declare-fun m!7354878 () Bool)

(assert (=> b!6573659 m!7354878))

(declare-fun m!7354880 () Bool)

(assert (=> b!6573659 m!7354880))

(declare-fun m!7354882 () Bool)

(assert (=> b!6573659 m!7354882))

(declare-fun m!7354884 () Bool)

(assert (=> b!6573670 m!7354884))

(assert (=> b!6573670 m!7354884))

(declare-fun m!7354886 () Bool)

(assert (=> b!6573670 m!7354886))

(declare-fun m!7354888 () Bool)

(assert (=> start!644062 m!7354888))

(declare-fun m!7354890 () Bool)

(assert (=> b!6573668 m!7354890))

(declare-fun m!7354892 () Bool)

(assert (=> b!6573679 m!7354892))

(declare-fun m!7354894 () Bool)

(assert (=> b!6573684 m!7354894))

(declare-fun m!7354896 () Bool)

(assert (=> b!6573690 m!7354896))

(declare-fun m!7354898 () Bool)

(assert (=> b!6573658 m!7354898))

(declare-fun m!7354900 () Bool)

(assert (=> b!6573658 m!7354900))

(declare-fun m!7354902 () Bool)

(assert (=> b!6573677 m!7354902))

(declare-fun m!7354904 () Bool)

(assert (=> b!6573677 m!7354904))

(declare-fun m!7354906 () Bool)

(assert (=> b!6573677 m!7354906))

(assert (=> b!6573653 m!7354904))

(check-sat (not b!6573659) (not b!6573664) (not b!6573665) (not b!6573658) (not b!6573654) (not b!6573649) (not b!6573669) (not b!6573680) (not b!6573650) (not b!6573675) (not b!6573661) (not b!6573681) (not b!6573674) (not b!6573682) (not b!6573687) (not b!6573651) (not b!6573692) (not b!6573690) tp_is_empty!42155 (not b!6573688) (not b!6573668) (not start!644062) (not b!6573653) (not b!6573672) (not b!6573686) (not setNonEmpty!44896) (not b!6573666) (not b!6573679) (not b!6573670) (not b!6573677) (not b!6573660) (not b!6573684) (not b!6573663) (not b!6573655) (not b!6573662) (not b!6573678) (not b!6573667))
(check-sat)
(get-model)

(declare-fun bm!572155 () Bool)

(declare-fun call!572160 () (InoxSet Context!11670))

(assert (=> bm!572155 (= call!572160 (derivationStepZipperDown!1699 (h!71976 (exprs!6335 lt!2409349)) (Context!11671 (t!379298 (exprs!6335 lt!2409349))) (h!71978 s!2326)))))

(declare-fun b!6573709 () Bool)

(declare-fun e!3978812 () (InoxSet Context!11670))

(assert (=> b!6573709 (= e!3978812 ((as const (Array Context!11670 Bool)) false))))

(declare-fun d!2062205 () Bool)

(declare-fun c!1208654 () Bool)

(declare-fun e!3978811 () Bool)

(assert (=> d!2062205 (= c!1208654 e!3978811)))

(declare-fun res!2697713 () Bool)

(assert (=> d!2062205 (=> (not res!2697713) (not e!3978811))))

(assert (=> d!2062205 (= res!2697713 ((_ is Cons!65528) (exprs!6335 lt!2409349)))))

(declare-fun e!3978813 () (InoxSet Context!11670))

(assert (=> d!2062205 (= (derivationStepZipperUp!1625 lt!2409349 (h!71978 s!2326)) e!3978813)))

(declare-fun b!6573710 () Bool)

(assert (=> b!6573710 (= e!3978811 (nullable!6444 (h!71976 (exprs!6335 lt!2409349))))))

(declare-fun b!6573711 () Bool)

(assert (=> b!6573711 (= e!3978812 call!572160)))

(declare-fun b!6573712 () Bool)

(assert (=> b!6573712 (= e!3978813 e!3978812)))

(declare-fun c!1208653 () Bool)

(assert (=> b!6573712 (= c!1208653 ((_ is Cons!65528) (exprs!6335 lt!2409349)))))

(declare-fun b!6573713 () Bool)

(assert (=> b!6573713 (= e!3978813 ((_ map or) call!572160 (derivationStepZipperUp!1625 (Context!11671 (t!379298 (exprs!6335 lt!2409349))) (h!71978 s!2326))))))

(assert (= (and d!2062205 res!2697713) b!6573710))

(assert (= (and d!2062205 c!1208654) b!6573713))

(assert (= (and d!2062205 (not c!1208654)) b!6573712))

(assert (= (and b!6573712 c!1208653) b!6573711))

(assert (= (and b!6573712 (not c!1208653)) b!6573709))

(assert (= (or b!6573713 b!6573711) bm!572155))

(declare-fun m!7354908 () Bool)

(assert (=> bm!572155 m!7354908))

(declare-fun m!7354910 () Bool)

(assert (=> b!6573710 m!7354910))

(declare-fun m!7354912 () Bool)

(assert (=> b!6573713 m!7354912))

(assert (=> b!6573688 d!2062205))

(declare-fun b!6573746 () Bool)

(declare-fun e!3978831 () (InoxSet Context!11670))

(assert (=> b!6573746 (= e!3978831 (store ((as const (Array Context!11670 Bool)) false) lt!2409349 true))))

(declare-fun bm!572168 () Bool)

(declare-fun call!572173 () (InoxSet Context!11670))

(declare-fun call!572174 () (InoxSet Context!11670))

(assert (=> bm!572168 (= call!572173 call!572174)))

(declare-fun c!1208670 () Bool)

(declare-fun call!572175 () (InoxSet Context!11670))

(declare-fun c!1208671 () Bool)

(declare-fun c!1208672 () Bool)

(declare-fun call!572178 () List!65652)

(declare-fun bm!572169 () Bool)

(assert (=> bm!572169 (= call!572175 (derivationStepZipperDown!1699 (ite c!1208672 (regTwo!33415 (h!71976 (exprs!6335 (h!71977 zl!343)))) (ite c!1208670 (regTwo!33414 (h!71976 (exprs!6335 (h!71977 zl!343)))) (ite c!1208671 (regOne!33414 (h!71976 (exprs!6335 (h!71977 zl!343)))) (reg!16780 (h!71976 (exprs!6335 (h!71977 zl!343))))))) (ite (or c!1208672 c!1208670) lt!2409349 (Context!11671 call!572178)) (h!71978 s!2326)))))

(declare-fun b!6573747 () Bool)

(declare-fun e!3978835 () (InoxSet Context!11670))

(assert (=> b!6573747 (= e!3978835 call!572173)))

(declare-fun b!6573748 () Bool)

(declare-fun e!3978836 () (InoxSet Context!11670))

(declare-fun call!572176 () (InoxSet Context!11670))

(assert (=> b!6573748 (= e!3978836 ((_ map or) call!572176 call!572174))))

(declare-fun b!6573749 () Bool)

(declare-fun e!3978832 () (InoxSet Context!11670))

(assert (=> b!6573749 (= e!3978831 e!3978832)))

(assert (=> b!6573749 (= c!1208672 ((_ is Union!16451) (h!71976 (exprs!6335 (h!71977 zl!343)))))))

(declare-fun d!2062207 () Bool)

(declare-fun c!1208673 () Bool)

(assert (=> d!2062207 (= c!1208673 (and ((_ is ElementMatch!16451) (h!71976 (exprs!6335 (h!71977 zl!343)))) (= (c!1208648 (h!71976 (exprs!6335 (h!71977 zl!343)))) (h!71978 s!2326))))))

(assert (=> d!2062207 (= (derivationStepZipperDown!1699 (h!71976 (exprs!6335 (h!71977 zl!343))) lt!2409349 (h!71978 s!2326)) e!3978831)))

(declare-fun bm!572170 () Bool)

(assert (=> bm!572170 (= call!572174 call!572175)))

(declare-fun bm!572171 () Bool)

(declare-fun call!572177 () List!65652)

(assert (=> bm!572171 (= call!572176 (derivationStepZipperDown!1699 (ite c!1208672 (regOne!33415 (h!71976 (exprs!6335 (h!71977 zl!343)))) (regOne!33414 (h!71976 (exprs!6335 (h!71977 zl!343))))) (ite c!1208672 lt!2409349 (Context!11671 call!572177)) (h!71978 s!2326)))))

(declare-fun b!6573750 () Bool)

(declare-fun e!3978833 () (InoxSet Context!11670))

(assert (=> b!6573750 (= e!3978833 ((as const (Array Context!11670 Bool)) false))))

(declare-fun b!6573751 () Bool)

(declare-fun c!1208674 () Bool)

(assert (=> b!6573751 (= c!1208674 ((_ is Star!16451) (h!71976 (exprs!6335 (h!71977 zl!343)))))))

(assert (=> b!6573751 (= e!3978835 e!3978833)))

(declare-fun b!6573752 () Bool)

(declare-fun e!3978834 () Bool)

(assert (=> b!6573752 (= c!1208670 e!3978834)))

(declare-fun res!2697716 () Bool)

(assert (=> b!6573752 (=> (not res!2697716) (not e!3978834))))

(assert (=> b!6573752 (= res!2697716 ((_ is Concat!25296) (h!71976 (exprs!6335 (h!71977 zl!343)))))))

(assert (=> b!6573752 (= e!3978832 e!3978836)))

(declare-fun b!6573753 () Bool)

(assert (=> b!6573753 (= e!3978832 ((_ map or) call!572176 call!572175))))

(declare-fun bm!572172 () Bool)

(declare-fun $colon$colon!2291 (List!65652 Regex!16451) List!65652)

(assert (=> bm!572172 (= call!572177 ($colon$colon!2291 (exprs!6335 lt!2409349) (ite (or c!1208670 c!1208671) (regTwo!33414 (h!71976 (exprs!6335 (h!71977 zl!343)))) (h!71976 (exprs!6335 (h!71977 zl!343))))))))

(declare-fun b!6573754 () Bool)

(assert (=> b!6573754 (= e!3978836 e!3978835)))

(assert (=> b!6573754 (= c!1208671 ((_ is Concat!25296) (h!71976 (exprs!6335 (h!71977 zl!343)))))))

(declare-fun b!6573755 () Bool)

(assert (=> b!6573755 (= e!3978833 call!572173)))

(declare-fun b!6573756 () Bool)

(assert (=> b!6573756 (= e!3978834 (nullable!6444 (regOne!33414 (h!71976 (exprs!6335 (h!71977 zl!343))))))))

(declare-fun bm!572173 () Bool)

(assert (=> bm!572173 (= call!572178 call!572177)))

(assert (= (and d!2062207 c!1208673) b!6573746))

(assert (= (and d!2062207 (not c!1208673)) b!6573749))

(assert (= (and b!6573749 c!1208672) b!6573753))

(assert (= (and b!6573749 (not c!1208672)) b!6573752))

(assert (= (and b!6573752 res!2697716) b!6573756))

(assert (= (and b!6573752 c!1208670) b!6573748))

(assert (= (and b!6573752 (not c!1208670)) b!6573754))

(assert (= (and b!6573754 c!1208671) b!6573747))

(assert (= (and b!6573754 (not c!1208671)) b!6573751))

(assert (= (and b!6573751 c!1208674) b!6573755))

(assert (= (and b!6573751 (not c!1208674)) b!6573750))

(assert (= (or b!6573747 b!6573755) bm!572173))

(assert (= (or b!6573747 b!6573755) bm!572168))

(assert (= (or b!6573748 bm!572173) bm!572172))

(assert (= (or b!6573748 bm!572168) bm!572170))

(assert (= (or b!6573753 bm!572170) bm!572169))

(assert (= (or b!6573753 b!6573748) bm!572171))

(assert (=> b!6573746 m!7354878))

(declare-fun m!7354944 () Bool)

(assert (=> bm!572171 m!7354944))

(declare-fun m!7354946 () Bool)

(assert (=> bm!572172 m!7354946))

(declare-fun m!7354948 () Bool)

(assert (=> bm!572169 m!7354948))

(declare-fun m!7354950 () Bool)

(assert (=> b!6573756 m!7354950))

(assert (=> b!6573688 d!2062207))

(declare-fun d!2062217 () Bool)

(declare-fun nullableFct!2369 (Regex!16451) Bool)

(assert (=> d!2062217 (= (nullable!6444 (h!71976 (exprs!6335 (h!71977 zl!343)))) (nullableFct!2369 (h!71976 (exprs!6335 (h!71977 zl!343)))))))

(declare-fun bs!1678922 () Bool)

(assert (= bs!1678922 d!2062217))

(declare-fun m!7354952 () Bool)

(assert (=> bs!1678922 m!7354952))

(assert (=> b!6573688 d!2062217))

(declare-fun bm!572174 () Bool)

(declare-fun call!572179 () (InoxSet Context!11670))

(assert (=> bm!572174 (= call!572179 (derivationStepZipperDown!1699 (h!71976 (exprs!6335 (Context!11671 (Cons!65528 (h!71976 (exprs!6335 (h!71977 zl!343))) (t!379298 (exprs!6335 (h!71977 zl!343))))))) (Context!11671 (t!379298 (exprs!6335 (Context!11671 (Cons!65528 (h!71976 (exprs!6335 (h!71977 zl!343))) (t!379298 (exprs!6335 (h!71977 zl!343)))))))) (h!71978 s!2326)))))

(declare-fun b!6573767 () Bool)

(declare-fun e!3978844 () (InoxSet Context!11670))

(assert (=> b!6573767 (= e!3978844 ((as const (Array Context!11670 Bool)) false))))

(declare-fun d!2062219 () Bool)

(declare-fun c!1208680 () Bool)

(declare-fun e!3978843 () Bool)

(assert (=> d!2062219 (= c!1208680 e!3978843)))

(declare-fun res!2697719 () Bool)

(assert (=> d!2062219 (=> (not res!2697719) (not e!3978843))))

(assert (=> d!2062219 (= res!2697719 ((_ is Cons!65528) (exprs!6335 (Context!11671 (Cons!65528 (h!71976 (exprs!6335 (h!71977 zl!343))) (t!379298 (exprs!6335 (h!71977 zl!343))))))))))

(declare-fun e!3978845 () (InoxSet Context!11670))

(assert (=> d!2062219 (= (derivationStepZipperUp!1625 (Context!11671 (Cons!65528 (h!71976 (exprs!6335 (h!71977 zl!343))) (t!379298 (exprs!6335 (h!71977 zl!343))))) (h!71978 s!2326)) e!3978845)))

(declare-fun b!6573768 () Bool)

(assert (=> b!6573768 (= e!3978843 (nullable!6444 (h!71976 (exprs!6335 (Context!11671 (Cons!65528 (h!71976 (exprs!6335 (h!71977 zl!343))) (t!379298 (exprs!6335 (h!71977 zl!343)))))))))))

(declare-fun b!6573769 () Bool)

(assert (=> b!6573769 (= e!3978844 call!572179)))

(declare-fun b!6573770 () Bool)

(assert (=> b!6573770 (= e!3978845 e!3978844)))

(declare-fun c!1208679 () Bool)

(assert (=> b!6573770 (= c!1208679 ((_ is Cons!65528) (exprs!6335 (Context!11671 (Cons!65528 (h!71976 (exprs!6335 (h!71977 zl!343))) (t!379298 (exprs!6335 (h!71977 zl!343))))))))))

(declare-fun b!6573771 () Bool)

(assert (=> b!6573771 (= e!3978845 ((_ map or) call!572179 (derivationStepZipperUp!1625 (Context!11671 (t!379298 (exprs!6335 (Context!11671 (Cons!65528 (h!71976 (exprs!6335 (h!71977 zl!343))) (t!379298 (exprs!6335 (h!71977 zl!343)))))))) (h!71978 s!2326))))))

(assert (= (and d!2062219 res!2697719) b!6573768))

(assert (= (and d!2062219 c!1208680) b!6573771))

(assert (= (and d!2062219 (not c!1208680)) b!6573770))

(assert (= (and b!6573770 c!1208679) b!6573769))

(assert (= (and b!6573770 (not c!1208679)) b!6573767))

(assert (= (or b!6573771 b!6573769) bm!572174))

(declare-fun m!7354954 () Bool)

(assert (=> bm!572174 m!7354954))

(declare-fun m!7354956 () Bool)

(assert (=> b!6573768 m!7354956))

(declare-fun m!7354958 () Bool)

(assert (=> b!6573771 m!7354958))

(assert (=> b!6573688 d!2062219))

(declare-fun d!2062221 () Bool)

(declare-fun dynLambda!26070 (Int Context!11670) (InoxSet Context!11670))

(assert (=> d!2062221 (= (flatMap!1956 z!1189 lambda!366169) (dynLambda!26070 lambda!366169 (h!71977 zl!343)))))

(declare-fun lt!2409374 () Unit!159139)

(declare-fun choose!49113 ((InoxSet Context!11670) Context!11670 Int) Unit!159139)

(assert (=> d!2062221 (= lt!2409374 (choose!49113 z!1189 (h!71977 zl!343) lambda!366169))))

(assert (=> d!2062221 (= z!1189 (store ((as const (Array Context!11670 Bool)) false) (h!71977 zl!343) true))))

(assert (=> d!2062221 (= (lemmaFlatMapOnSingletonSet!1482 z!1189 (h!71977 zl!343) lambda!366169) lt!2409374)))

(declare-fun b_lambda!248609 () Bool)

(assert (=> (not b_lambda!248609) (not d!2062221)))

(declare-fun bs!1678925 () Bool)

(assert (= bs!1678925 d!2062221))

(assert (=> bs!1678925 m!7354864))

(declare-fun m!7354988 () Bool)

(assert (=> bs!1678925 m!7354988))

(declare-fun m!7354990 () Bool)

(assert (=> bs!1678925 m!7354990))

(declare-fun m!7354992 () Bool)

(assert (=> bs!1678925 m!7354992))

(assert (=> b!6573688 d!2062221))

(declare-fun bm!572175 () Bool)

(declare-fun call!572180 () (InoxSet Context!11670))

(assert (=> bm!572175 (= call!572180 (derivationStepZipperDown!1699 (h!71976 (exprs!6335 (h!71977 zl!343))) (Context!11671 (t!379298 (exprs!6335 (h!71977 zl!343)))) (h!71978 s!2326)))))

(declare-fun b!6573789 () Bool)

(declare-fun e!3978856 () (InoxSet Context!11670))

(assert (=> b!6573789 (= e!3978856 ((as const (Array Context!11670 Bool)) false))))

(declare-fun d!2062229 () Bool)

(declare-fun c!1208684 () Bool)

(declare-fun e!3978855 () Bool)

(assert (=> d!2062229 (= c!1208684 e!3978855)))

(declare-fun res!2697733 () Bool)

(assert (=> d!2062229 (=> (not res!2697733) (not e!3978855))))

(assert (=> d!2062229 (= res!2697733 ((_ is Cons!65528) (exprs!6335 (h!71977 zl!343))))))

(declare-fun e!3978857 () (InoxSet Context!11670))

(assert (=> d!2062229 (= (derivationStepZipperUp!1625 (h!71977 zl!343) (h!71978 s!2326)) e!3978857)))

(declare-fun b!6573790 () Bool)

(assert (=> b!6573790 (= e!3978855 (nullable!6444 (h!71976 (exprs!6335 (h!71977 zl!343)))))))

(declare-fun b!6573791 () Bool)

(assert (=> b!6573791 (= e!3978856 call!572180)))

(declare-fun b!6573792 () Bool)

(assert (=> b!6573792 (= e!3978857 e!3978856)))

(declare-fun c!1208683 () Bool)

(assert (=> b!6573792 (= c!1208683 ((_ is Cons!65528) (exprs!6335 (h!71977 zl!343))))))

(declare-fun b!6573793 () Bool)

(assert (=> b!6573793 (= e!3978857 ((_ map or) call!572180 (derivationStepZipperUp!1625 (Context!11671 (t!379298 (exprs!6335 (h!71977 zl!343)))) (h!71978 s!2326))))))

(assert (= (and d!2062229 res!2697733) b!6573790))

(assert (= (and d!2062229 c!1208684) b!6573793))

(assert (= (and d!2062229 (not c!1208684)) b!6573792))

(assert (= (and b!6573792 c!1208683) b!6573791))

(assert (= (and b!6573792 (not c!1208683)) b!6573789))

(assert (= (or b!6573793 b!6573791) bm!572175))

(declare-fun m!7354994 () Bool)

(assert (=> bm!572175 m!7354994))

(assert (=> b!6573790 m!7354872))

(declare-fun m!7354996 () Bool)

(assert (=> b!6573793 m!7354996))

(assert (=> b!6573688 d!2062229))

(declare-fun d!2062231 () Bool)

(declare-fun choose!49114 ((InoxSet Context!11670) Int) (InoxSet Context!11670))

(assert (=> d!2062231 (= (flatMap!1956 z!1189 lambda!366169) (choose!49114 z!1189 lambda!366169))))

(declare-fun bs!1678926 () Bool)

(assert (= bs!1678926 d!2062231))

(declare-fun m!7354998 () Bool)

(assert (=> bs!1678926 m!7354998))

(assert (=> b!6573688 d!2062231))

(declare-fun d!2062233 () Bool)

(declare-fun lt!2409380 () Regex!16451)

(assert (=> d!2062233 (validRegex!8187 lt!2409380)))

(assert (=> d!2062233 (= lt!2409380 (generalisedUnion!2295 (unfocusZipperList!1872 (Cons!65529 lt!2409352 Nil!65529))))))

(assert (=> d!2062233 (= (unfocusZipper!2193 (Cons!65529 lt!2409352 Nil!65529)) lt!2409380)))

(declare-fun bs!1678929 () Bool)

(assert (= bs!1678929 d!2062233))

(declare-fun m!7355004 () Bool)

(assert (=> bs!1678929 m!7355004))

(declare-fun m!7355006 () Bool)

(assert (=> bs!1678929 m!7355006))

(assert (=> bs!1678929 m!7355006))

(declare-fun m!7355008 () Bool)

(assert (=> bs!1678929 m!7355008))

(assert (=> b!6573668 d!2062233))

(declare-fun b!6573860 () Bool)

(declare-fun e!3978899 () Bool)

(declare-fun lt!2409389 () Regex!16451)

(declare-fun isUnion!1268 (Regex!16451) Bool)

(assert (=> b!6573860 (= e!3978899 (isUnion!1268 lt!2409389))))

(declare-fun b!6573861 () Bool)

(declare-fun e!3978896 () Bool)

(declare-fun e!3978897 () Bool)

(assert (=> b!6573861 (= e!3978896 e!3978897)))

(declare-fun c!1208709 () Bool)

(assert (=> b!6573861 (= c!1208709 (isEmpty!37782 (unfocusZipperList!1872 zl!343)))))

(declare-fun b!6573862 () Bool)

(declare-fun e!3978901 () Regex!16451)

(declare-fun e!3978900 () Regex!16451)

(assert (=> b!6573862 (= e!3978901 e!3978900)))

(declare-fun c!1208710 () Bool)

(assert (=> b!6573862 (= c!1208710 ((_ is Cons!65528) (unfocusZipperList!1872 zl!343)))))

(declare-fun b!6573863 () Bool)

(assert (=> b!6573863 (= e!3978901 (h!71976 (unfocusZipperList!1872 zl!343)))))

(declare-fun b!6573864 () Bool)

(assert (=> b!6573864 (= e!3978897 e!3978899)))

(declare-fun c!1208706 () Bool)

(declare-fun tail!12438 (List!65652) List!65652)

(assert (=> b!6573864 (= c!1208706 (isEmpty!37782 (tail!12438 (unfocusZipperList!1872 zl!343))))))

(declare-fun b!6573865 () Bool)

(declare-fun head!13353 (List!65652) Regex!16451)

(assert (=> b!6573865 (= e!3978899 (= lt!2409389 (head!13353 (unfocusZipperList!1872 zl!343))))))

(declare-fun d!2062237 () Bool)

(assert (=> d!2062237 e!3978896))

(declare-fun res!2697756 () Bool)

(assert (=> d!2062237 (=> (not res!2697756) (not e!3978896))))

(assert (=> d!2062237 (= res!2697756 (validRegex!8187 lt!2409389))))

(assert (=> d!2062237 (= lt!2409389 e!3978901)))

(declare-fun c!1208707 () Bool)

(declare-fun e!3978895 () Bool)

(assert (=> d!2062237 (= c!1208707 e!3978895)))

(declare-fun res!2697757 () Bool)

(assert (=> d!2062237 (=> (not res!2697757) (not e!3978895))))

(assert (=> d!2062237 (= res!2697757 ((_ is Cons!65528) (unfocusZipperList!1872 zl!343)))))

(declare-fun lambda!366184 () Int)

(declare-fun forall!15625 (List!65652 Int) Bool)

(assert (=> d!2062237 (forall!15625 (unfocusZipperList!1872 zl!343) lambda!366184)))

(assert (=> d!2062237 (= (generalisedUnion!2295 (unfocusZipperList!1872 zl!343)) lt!2409389)))

(declare-fun b!6573866 () Bool)

(assert (=> b!6573866 (= e!3978900 EmptyLang!16451)))

(declare-fun b!6573867 () Bool)

(assert (=> b!6573867 (= e!3978895 (isEmpty!37782 (t!379298 (unfocusZipperList!1872 zl!343))))))

(declare-fun b!6573868 () Bool)

(declare-fun isEmptyLang!1838 (Regex!16451) Bool)

(assert (=> b!6573868 (= e!3978897 (isEmptyLang!1838 lt!2409389))))

(declare-fun b!6573869 () Bool)

(assert (=> b!6573869 (= e!3978900 (Union!16451 (h!71976 (unfocusZipperList!1872 zl!343)) (generalisedUnion!2295 (t!379298 (unfocusZipperList!1872 zl!343)))))))

(assert (= (and d!2062237 res!2697757) b!6573867))

(assert (= (and d!2062237 c!1208707) b!6573863))

(assert (= (and d!2062237 (not c!1208707)) b!6573862))

(assert (= (and b!6573862 c!1208710) b!6573869))

(assert (= (and b!6573862 (not c!1208710)) b!6573866))

(assert (= (and d!2062237 res!2697756) b!6573861))

(assert (= (and b!6573861 c!1208709) b!6573868))

(assert (= (and b!6573861 (not c!1208709)) b!6573864))

(assert (= (and b!6573864 c!1208706) b!6573865))

(assert (= (and b!6573864 (not c!1208706)) b!6573860))

(assert (=> b!6573861 m!7354884))

(declare-fun m!7355046 () Bool)

(assert (=> b!6573861 m!7355046))

(declare-fun m!7355048 () Bool)

(assert (=> d!2062237 m!7355048))

(assert (=> d!2062237 m!7354884))

(declare-fun m!7355050 () Bool)

(assert (=> d!2062237 m!7355050))

(declare-fun m!7355052 () Bool)

(assert (=> b!6573868 m!7355052))

(declare-fun m!7355054 () Bool)

(assert (=> b!6573869 m!7355054))

(declare-fun m!7355060 () Bool)

(assert (=> b!6573860 m!7355060))

(assert (=> b!6573864 m!7354884))

(declare-fun m!7355064 () Bool)

(assert (=> b!6573864 m!7355064))

(assert (=> b!6573864 m!7355064))

(declare-fun m!7355066 () Bool)

(assert (=> b!6573864 m!7355066))

(declare-fun m!7355068 () Bool)

(assert (=> b!6573867 m!7355068))

(assert (=> b!6573865 m!7354884))

(declare-fun m!7355070 () Bool)

(assert (=> b!6573865 m!7355070))

(assert (=> b!6573670 d!2062237))

(declare-fun bs!1678935 () Bool)

(declare-fun d!2062253 () Bool)

(assert (= bs!1678935 (and d!2062253 d!2062237)))

(declare-fun lambda!366190 () Int)

(assert (=> bs!1678935 (= lambda!366190 lambda!366184)))

(declare-fun lt!2409398 () List!65652)

(assert (=> d!2062253 (forall!15625 lt!2409398 lambda!366190)))

(declare-fun e!3978925 () List!65652)

(assert (=> d!2062253 (= lt!2409398 e!3978925)))

(declare-fun c!1208725 () Bool)

(assert (=> d!2062253 (= c!1208725 ((_ is Cons!65529) zl!343))))

(assert (=> d!2062253 (= (unfocusZipperList!1872 zl!343) lt!2409398)))

(declare-fun b!6573907 () Bool)

(assert (=> b!6573907 (= e!3978925 (Cons!65528 (generalisedConcat!2048 (exprs!6335 (h!71977 zl!343))) (unfocusZipperList!1872 (t!379299 zl!343))))))

(declare-fun b!6573908 () Bool)

(assert (=> b!6573908 (= e!3978925 Nil!65528)))

(assert (= (and d!2062253 c!1208725) b!6573907))

(assert (= (and d!2062253 (not c!1208725)) b!6573908))

(declare-fun m!7355092 () Bool)

(assert (=> d!2062253 m!7355092))

(assert (=> b!6573907 m!7354782))

(declare-fun m!7355094 () Bool)

(assert (=> b!6573907 m!7355094))

(assert (=> b!6573670 d!2062253))

(declare-fun d!2062257 () Bool)

(assert (=> d!2062257 (= (isEmpty!37781 (t!379299 zl!343)) ((_ is Nil!65529) (t!379299 zl!343)))))

(assert (=> b!6573669 d!2062257))

(declare-fun d!2062259 () Bool)

(declare-fun c!1208735 () Bool)

(declare-fun isEmpty!37785 (List!65654) Bool)

(assert (=> d!2062259 (= c!1208735 (isEmpty!37785 (t!379300 s!2326)))))

(declare-fun e!3978945 () Bool)

(assert (=> d!2062259 (= (matchZipper!2463 lt!2409340 (t!379300 s!2326)) e!3978945)))

(declare-fun b!6573937 () Bool)

(declare-fun nullableZipper!2196 ((InoxSet Context!11670)) Bool)

(assert (=> b!6573937 (= e!3978945 (nullableZipper!2196 lt!2409340))))

(declare-fun b!6573938 () Bool)

(declare-fun head!13354 (List!65654) C!33172)

(declare-fun tail!12439 (List!65654) List!65654)

(assert (=> b!6573938 (= e!3978945 (matchZipper!2463 (derivationStepZipper!2417 lt!2409340 (head!13354 (t!379300 s!2326))) (tail!12439 (t!379300 s!2326))))))

(assert (= (and d!2062259 c!1208735) b!6573937))

(assert (= (and d!2062259 (not c!1208735)) b!6573938))

(declare-fun m!7355100 () Bool)

(assert (=> d!2062259 m!7355100))

(declare-fun m!7355102 () Bool)

(assert (=> b!6573937 m!7355102))

(declare-fun m!7355104 () Bool)

(assert (=> b!6573938 m!7355104))

(assert (=> b!6573938 m!7355104))

(declare-fun m!7355106 () Bool)

(assert (=> b!6573938 m!7355106))

(declare-fun m!7355108 () Bool)

(assert (=> b!6573938 m!7355108))

(assert (=> b!6573938 m!7355106))

(assert (=> b!6573938 m!7355108))

(declare-fun m!7355110 () Bool)

(assert (=> b!6573938 m!7355110))

(assert (=> b!6573666 d!2062259))

(declare-fun d!2062263 () Bool)

(assert (=> d!2062263 (= (nullable!6444 (regOne!33414 (regOne!33414 r!7292))) (nullableFct!2369 (regOne!33414 (regOne!33414 r!7292))))))

(declare-fun bs!1678938 () Bool)

(assert (= bs!1678938 d!2062263))

(declare-fun m!7355118 () Bool)

(assert (=> bs!1678938 m!7355118))

(assert (=> b!6573665 d!2062263))

(declare-fun d!2062267 () Bool)

(assert (=> d!2062267 (= (isEmpty!37782 (t!379298 (exprs!6335 (h!71977 zl!343)))) ((_ is Nil!65528) (t!379298 (exprs!6335 (h!71977 zl!343)))))))

(assert (=> b!6573686 d!2062267))

(declare-fun d!2062269 () Bool)

(assert (=> d!2062269 (= (flatMap!1956 lt!2409342 lambda!366169) (choose!49114 lt!2409342 lambda!366169))))

(declare-fun bs!1678939 () Bool)

(assert (= bs!1678939 d!2062269))

(declare-fun m!7355120 () Bool)

(assert (=> bs!1678939 m!7355120))

(assert (=> b!6573663 d!2062269))

(declare-fun bm!572185 () Bool)

(declare-fun call!572190 () (InoxSet Context!11670))

(assert (=> bm!572185 (= call!572190 (derivationStepZipperDown!1699 (h!71976 (exprs!6335 lt!2409352)) (Context!11671 (t!379298 (exprs!6335 lt!2409352))) (h!71978 s!2326)))))

(declare-fun b!6573948 () Bool)

(declare-fun e!3978954 () (InoxSet Context!11670))

(assert (=> b!6573948 (= e!3978954 ((as const (Array Context!11670 Bool)) false))))

(declare-fun d!2062271 () Bool)

(declare-fun c!1208739 () Bool)

(declare-fun e!3978953 () Bool)

(assert (=> d!2062271 (= c!1208739 e!3978953)))

(declare-fun res!2697782 () Bool)

(assert (=> d!2062271 (=> (not res!2697782) (not e!3978953))))

(assert (=> d!2062271 (= res!2697782 ((_ is Cons!65528) (exprs!6335 lt!2409352)))))

(declare-fun e!3978955 () (InoxSet Context!11670))

(assert (=> d!2062271 (= (derivationStepZipperUp!1625 lt!2409352 (h!71978 s!2326)) e!3978955)))

(declare-fun b!6573949 () Bool)

(assert (=> b!6573949 (= e!3978953 (nullable!6444 (h!71976 (exprs!6335 lt!2409352))))))

(declare-fun b!6573950 () Bool)

(assert (=> b!6573950 (= e!3978954 call!572190)))

(declare-fun b!6573951 () Bool)

(assert (=> b!6573951 (= e!3978955 e!3978954)))

(declare-fun c!1208738 () Bool)

(assert (=> b!6573951 (= c!1208738 ((_ is Cons!65528) (exprs!6335 lt!2409352)))))

(declare-fun b!6573952 () Bool)

(assert (=> b!6573952 (= e!3978955 ((_ map or) call!572190 (derivationStepZipperUp!1625 (Context!11671 (t!379298 (exprs!6335 lt!2409352))) (h!71978 s!2326))))))

(assert (= (and d!2062271 res!2697782) b!6573949))

(assert (= (and d!2062271 c!1208739) b!6573952))

(assert (= (and d!2062271 (not c!1208739)) b!6573951))

(assert (= (and b!6573951 c!1208738) b!6573950))

(assert (= (and b!6573951 (not c!1208738)) b!6573948))

(assert (= (or b!6573952 b!6573950) bm!572185))

(declare-fun m!7355122 () Bool)

(assert (=> bm!572185 m!7355122))

(declare-fun m!7355124 () Bool)

(assert (=> b!6573949 m!7355124))

(declare-fun m!7355126 () Bool)

(assert (=> b!6573952 m!7355126))

(assert (=> b!6573663 d!2062271))

(declare-fun d!2062273 () Bool)

(assert (=> d!2062273 (= (flatMap!1956 lt!2409342 lambda!366169) (dynLambda!26070 lambda!366169 lt!2409352))))

(declare-fun lt!2409402 () Unit!159139)

(assert (=> d!2062273 (= lt!2409402 (choose!49113 lt!2409342 lt!2409352 lambda!366169))))

(assert (=> d!2062273 (= lt!2409342 (store ((as const (Array Context!11670 Bool)) false) lt!2409352 true))))

(assert (=> d!2062273 (= (lemmaFlatMapOnSingletonSet!1482 lt!2409342 lt!2409352 lambda!366169) lt!2409402)))

(declare-fun b_lambda!248611 () Bool)

(assert (=> (not b_lambda!248611) (not d!2062273)))

(declare-fun bs!1678940 () Bool)

(assert (= bs!1678940 d!2062273))

(assert (=> bs!1678940 m!7354828))

(declare-fun m!7355128 () Bool)

(assert (=> bs!1678940 m!7355128))

(declare-fun m!7355130 () Bool)

(assert (=> bs!1678940 m!7355130))

(assert (=> bs!1678940 m!7354822))

(assert (=> b!6573663 d!2062273))

(declare-fun bs!1678941 () Bool)

(declare-fun d!2062275 () Bool)

(assert (= bs!1678941 (and d!2062275 b!6573688)))

(declare-fun lambda!366196 () Int)

(assert (=> bs!1678941 (= lambda!366196 lambda!366169)))

(assert (=> d!2062275 true))

(assert (=> d!2062275 (= (derivationStepZipper!2417 lt!2409342 (h!71978 s!2326)) (flatMap!1956 lt!2409342 lambda!366196))))

(declare-fun bs!1678942 () Bool)

(assert (= bs!1678942 d!2062275))

(declare-fun m!7355132 () Bool)

(assert (=> bs!1678942 m!7355132))

(assert (=> b!6573663 d!2062275))

(assert (=> b!6573682 d!2062259))

(declare-fun bs!1678943 () Bool)

(declare-fun d!2062277 () Bool)

(assert (= bs!1678943 (and d!2062277 d!2062237)))

(declare-fun lambda!366199 () Int)

(assert (=> bs!1678943 (= lambda!366199 lambda!366184)))

(declare-fun bs!1678944 () Bool)

(assert (= bs!1678944 (and d!2062277 d!2062253)))

(assert (=> bs!1678944 (= lambda!366199 lambda!366190)))

(assert (=> d!2062277 (= (inv!84374 (h!71977 zl!343)) (forall!15625 (exprs!6335 (h!71977 zl!343)) lambda!366199))))

(declare-fun bs!1678945 () Bool)

(assert (= bs!1678945 d!2062277))

(declare-fun m!7355134 () Bool)

(assert (=> bs!1678945 m!7355134))

(assert (=> b!6573684 d!2062277))

(declare-fun d!2062279 () Bool)

(declare-fun lt!2409405 () Regex!16451)

(assert (=> d!2062279 (validRegex!8187 lt!2409405)))

(assert (=> d!2062279 (= lt!2409405 (generalisedUnion!2295 (unfocusZipperList!1872 (Cons!65529 lt!2409346 Nil!65529))))))

(assert (=> d!2062279 (= (unfocusZipper!2193 (Cons!65529 lt!2409346 Nil!65529)) lt!2409405)))

(declare-fun bs!1678946 () Bool)

(assert (= bs!1678946 d!2062279))

(declare-fun m!7355136 () Bool)

(assert (=> bs!1678946 m!7355136))

(declare-fun m!7355138 () Bool)

(assert (=> bs!1678946 m!7355138))

(assert (=> bs!1678946 m!7355138))

(declare-fun m!7355140 () Bool)

(assert (=> bs!1678946 m!7355140))

(assert (=> b!6573664 d!2062279))

(declare-fun d!2062281 () Bool)

(declare-fun e!3978998 () Bool)

(assert (=> d!2062281 e!3978998))

(declare-fun res!2697797 () Bool)

(assert (=> d!2062281 (=> (not res!2697797) (not e!3978998))))

(declare-fun lt!2409410 () List!65653)

(declare-fun noDuplicate!2256 (List!65653) Bool)

(assert (=> d!2062281 (= res!2697797 (noDuplicate!2256 lt!2409410))))

(declare-fun choose!49115 ((InoxSet Context!11670)) List!65653)

(assert (=> d!2062281 (= lt!2409410 (choose!49115 z!1189))))

(assert (=> d!2062281 (= (toList!10235 z!1189) lt!2409410)))

(declare-fun b!6574025 () Bool)

(declare-fun content!12622 (List!65653) (InoxSet Context!11670))

(assert (=> b!6574025 (= e!3978998 (= (content!12622 lt!2409410) z!1189))))

(assert (= (and d!2062281 res!2697797) b!6574025))

(declare-fun m!7355152 () Bool)

(assert (=> d!2062281 m!7355152))

(declare-fun m!7355154 () Bool)

(assert (=> d!2062281 m!7355154))

(declare-fun m!7355156 () Bool)

(assert (=> b!6574025 m!7355156))

(assert (=> b!6573679 d!2062281))

(declare-fun bs!1678952 () Bool)

(declare-fun d!2062285 () Bool)

(assert (= bs!1678952 (and d!2062285 d!2062237)))

(declare-fun lambda!366211 () Int)

(assert (=> bs!1678952 (= lambda!366211 lambda!366184)))

(declare-fun bs!1678953 () Bool)

(assert (= bs!1678953 (and d!2062285 d!2062253)))

(assert (=> bs!1678953 (= lambda!366211 lambda!366190)))

(declare-fun bs!1678955 () Bool)

(assert (= bs!1678955 (and d!2062285 d!2062277)))

(assert (=> bs!1678955 (= lambda!366211 lambda!366199)))

(declare-fun b!6574062 () Bool)

(declare-fun e!3979023 () Regex!16451)

(declare-fun e!3979024 () Regex!16451)

(assert (=> b!6574062 (= e!3979023 e!3979024)))

(declare-fun c!1208790 () Bool)

(assert (=> b!6574062 (= c!1208790 ((_ is Cons!65528) (exprs!6335 (h!71977 zl!343))))))

(declare-fun b!6574063 () Bool)

(declare-fun e!3979021 () Bool)

(declare-fun e!3979025 () Bool)

(assert (=> b!6574063 (= e!3979021 e!3979025)))

(declare-fun c!1208792 () Bool)

(assert (=> b!6574063 (= c!1208792 (isEmpty!37782 (tail!12438 (exprs!6335 (h!71977 zl!343)))))))

(declare-fun b!6574064 () Bool)

(assert (=> b!6574064 (= e!3979023 (h!71976 (exprs!6335 (h!71977 zl!343))))))

(declare-fun b!6574065 () Bool)

(declare-fun lt!2409426 () Regex!16451)

(declare-fun isConcat!1352 (Regex!16451) Bool)

(assert (=> b!6574065 (= e!3979025 (isConcat!1352 lt!2409426))))

(declare-fun b!6574066 () Bool)

(assert (=> b!6574066 (= e!3979025 (= lt!2409426 (head!13353 (exprs!6335 (h!71977 zl!343)))))))

(declare-fun b!6574068 () Bool)

(assert (=> b!6574068 (= e!3979024 (Concat!25296 (h!71976 (exprs!6335 (h!71977 zl!343))) (generalisedConcat!2048 (t!379298 (exprs!6335 (h!71977 zl!343))))))))

(declare-fun b!6574069 () Bool)

(declare-fun isEmptyExpr!1829 (Regex!16451) Bool)

(assert (=> b!6574069 (= e!3979021 (isEmptyExpr!1829 lt!2409426))))

(declare-fun b!6574070 () Bool)

(declare-fun e!3979026 () Bool)

(assert (=> b!6574070 (= e!3979026 e!3979021)))

(declare-fun c!1208791 () Bool)

(assert (=> b!6574070 (= c!1208791 (isEmpty!37782 (exprs!6335 (h!71977 zl!343))))))

(declare-fun b!6574072 () Bool)

(declare-fun e!3979022 () Bool)

(assert (=> b!6574072 (= e!3979022 (isEmpty!37782 (t!379298 (exprs!6335 (h!71977 zl!343)))))))

(assert (=> d!2062285 e!3979026))

(declare-fun res!2697807 () Bool)

(assert (=> d!2062285 (=> (not res!2697807) (not e!3979026))))

(assert (=> d!2062285 (= res!2697807 (validRegex!8187 lt!2409426))))

(assert (=> d!2062285 (= lt!2409426 e!3979023)))

(declare-fun c!1208793 () Bool)

(assert (=> d!2062285 (= c!1208793 e!3979022)))

(declare-fun res!2697806 () Bool)

(assert (=> d!2062285 (=> (not res!2697806) (not e!3979022))))

(assert (=> d!2062285 (= res!2697806 ((_ is Cons!65528) (exprs!6335 (h!71977 zl!343))))))

(assert (=> d!2062285 (forall!15625 (exprs!6335 (h!71977 zl!343)) lambda!366211)))

(assert (=> d!2062285 (= (generalisedConcat!2048 (exprs!6335 (h!71977 zl!343))) lt!2409426)))

(declare-fun b!6574067 () Bool)

(assert (=> b!6574067 (= e!3979024 EmptyExpr!16451)))

(assert (= (and d!2062285 res!2697806) b!6574072))

(assert (= (and d!2062285 c!1208793) b!6574064))

(assert (= (and d!2062285 (not c!1208793)) b!6574062))

(assert (= (and b!6574062 c!1208790) b!6574068))

(assert (= (and b!6574062 (not c!1208790)) b!6574067))

(assert (= (and d!2062285 res!2697807) b!6574070))

(assert (= (and b!6574070 c!1208791) b!6574069))

(assert (= (and b!6574070 (not c!1208791)) b!6574063))

(assert (= (and b!6574063 c!1208792) b!6574066))

(assert (= (and b!6574063 (not c!1208792)) b!6574065))

(declare-fun m!7355206 () Bool)

(assert (=> b!6574065 m!7355206))

(declare-fun m!7355208 () Bool)

(assert (=> d!2062285 m!7355208))

(declare-fun m!7355210 () Bool)

(assert (=> d!2062285 m!7355210))

(assert (=> b!6574068 m!7354816))

(assert (=> b!6574072 m!7354806))

(declare-fun m!7355212 () Bool)

(assert (=> b!6574066 m!7355212))

(declare-fun m!7355214 () Bool)

(assert (=> b!6574063 m!7355214))

(assert (=> b!6574063 m!7355214))

(declare-fun m!7355216 () Bool)

(assert (=> b!6574063 m!7355216))

(declare-fun m!7355218 () Bool)

(assert (=> b!6574070 m!7355218))

(declare-fun m!7355220 () Bool)

(assert (=> b!6574069 m!7355220))

(assert (=> b!6573660 d!2062285))

(declare-fun bs!1678972 () Bool)

(declare-fun b!6574161 () Bool)

(assert (= bs!1678972 (and b!6574161 b!6573692)))

(declare-fun lambda!366226 () Int)

(assert (=> bs!1678972 (not (= lambda!366226 lambda!366167))))

(assert (=> bs!1678972 (not (= lambda!366226 lambda!366168))))

(assert (=> b!6574161 true))

(assert (=> b!6574161 true))

(declare-fun bs!1678973 () Bool)

(declare-fun b!6574163 () Bool)

(assert (= bs!1678973 (and b!6574163 b!6573692)))

(declare-fun lambda!366229 () Int)

(assert (=> bs!1678973 (not (= lambda!366229 lambda!366167))))

(assert (=> bs!1678973 (= lambda!366229 lambda!366168)))

(declare-fun bs!1678974 () Bool)

(assert (= bs!1678974 (and b!6574163 b!6574161)))

(assert (=> bs!1678974 (not (= lambda!366229 lambda!366226))))

(assert (=> b!6574163 true))

(assert (=> b!6574163 true))

(declare-fun b!6574156 () Bool)

(declare-fun e!3979077 () Bool)

(assert (=> b!6574156 (= e!3979077 (= s!2326 (Cons!65530 (c!1208648 r!7292) Nil!65530)))))

(declare-fun d!2062297 () Bool)

(declare-fun c!1208823 () Bool)

(assert (=> d!2062297 (= c!1208823 ((_ is EmptyExpr!16451) r!7292))))

(declare-fun e!3979082 () Bool)

(assert (=> d!2062297 (= (matchRSpec!3552 r!7292 s!2326) e!3979082)))

(declare-fun b!6574157 () Bool)

(declare-fun c!1208822 () Bool)

(assert (=> b!6574157 (= c!1208822 ((_ is Union!16451) r!7292))))

(declare-fun e!3979081 () Bool)

(assert (=> b!6574157 (= e!3979077 e!3979081)))

(declare-fun b!6574158 () Bool)

(declare-fun e!3979079 () Bool)

(assert (=> b!6574158 (= e!3979079 (matchRSpec!3552 (regTwo!33415 r!7292) s!2326))))

(declare-fun b!6574159 () Bool)

(declare-fun call!572227 () Bool)

(assert (=> b!6574159 (= e!3979082 call!572227)))

(declare-fun b!6574160 () Bool)

(declare-fun e!3979078 () Bool)

(assert (=> b!6574160 (= e!3979081 e!3979078)))

(declare-fun c!1208824 () Bool)

(assert (=> b!6574160 (= c!1208824 ((_ is Star!16451) r!7292))))

(declare-fun bm!572221 () Bool)

(declare-fun call!572226 () Bool)

(assert (=> bm!572221 (= call!572226 (Exists!3521 (ite c!1208824 lambda!366226 lambda!366229)))))

(declare-fun bm!572222 () Bool)

(assert (=> bm!572222 (= call!572227 (isEmpty!37785 s!2326))))

(declare-fun e!3979076 () Bool)

(assert (=> b!6574161 (= e!3979076 call!572226)))

(declare-fun b!6574162 () Bool)

(declare-fun c!1208821 () Bool)

(assert (=> b!6574162 (= c!1208821 ((_ is ElementMatch!16451) r!7292))))

(declare-fun e!3979080 () Bool)

(assert (=> b!6574162 (= e!3979080 e!3979077)))

(assert (=> b!6574163 (= e!3979078 call!572226)))

(declare-fun b!6574164 () Bool)

(assert (=> b!6574164 (= e!3979082 e!3979080)))

(declare-fun res!2697839 () Bool)

(assert (=> b!6574164 (= res!2697839 (not ((_ is EmptyLang!16451) r!7292)))))

(assert (=> b!6574164 (=> (not res!2697839) (not e!3979080))))

(declare-fun b!6574165 () Bool)

(assert (=> b!6574165 (= e!3979081 e!3979079)))

(declare-fun res!2697838 () Bool)

(assert (=> b!6574165 (= res!2697838 (matchRSpec!3552 (regOne!33415 r!7292) s!2326))))

(assert (=> b!6574165 (=> res!2697838 e!3979079)))

(declare-fun b!6574166 () Bool)

(declare-fun res!2697840 () Bool)

(assert (=> b!6574166 (=> res!2697840 e!3979076)))

(assert (=> b!6574166 (= res!2697840 call!572227)))

(assert (=> b!6574166 (= e!3979078 e!3979076)))

(assert (= (and d!2062297 c!1208823) b!6574159))

(assert (= (and d!2062297 (not c!1208823)) b!6574164))

(assert (= (and b!6574164 res!2697839) b!6574162))

(assert (= (and b!6574162 c!1208821) b!6574156))

(assert (= (and b!6574162 (not c!1208821)) b!6574157))

(assert (= (and b!6574157 c!1208822) b!6574165))

(assert (= (and b!6574157 (not c!1208822)) b!6574160))

(assert (= (and b!6574165 (not res!2697838)) b!6574158))

(assert (= (and b!6574160 c!1208824) b!6574166))

(assert (= (and b!6574160 (not c!1208824)) b!6574163))

(assert (= (and b!6574166 (not res!2697840)) b!6574161))

(assert (= (or b!6574161 b!6574163) bm!572221))

(assert (= (or b!6574159 b!6574166) bm!572222))

(declare-fun m!7355266 () Bool)

(assert (=> b!6574158 m!7355266))

(declare-fun m!7355268 () Bool)

(assert (=> bm!572221 m!7355268))

(declare-fun m!7355270 () Bool)

(assert (=> bm!572222 m!7355270))

(declare-fun m!7355272 () Bool)

(assert (=> b!6574165 m!7355272))

(assert (=> b!6573681 d!2062297))

(declare-fun b!6574216 () Bool)

(declare-fun e!3979109 () Bool)

(declare-fun lt!2409444 () Bool)

(assert (=> b!6574216 (= e!3979109 (not lt!2409444))))

(declare-fun b!6574217 () Bool)

(declare-fun e!3979112 () Bool)

(declare-fun derivativeStep!5134 (Regex!16451 C!33172) Regex!16451)

(assert (=> b!6574217 (= e!3979112 (matchR!8634 (derivativeStep!5134 r!7292 (head!13354 s!2326)) (tail!12439 s!2326)))))

(declare-fun b!6574218 () Bool)

(declare-fun res!2697876 () Bool)

(declare-fun e!3979108 () Bool)

(assert (=> b!6574218 (=> res!2697876 e!3979108)))

(declare-fun e!3979113 () Bool)

(assert (=> b!6574218 (= res!2697876 e!3979113)))

(declare-fun res!2697874 () Bool)

(assert (=> b!6574218 (=> (not res!2697874) (not e!3979113))))

(assert (=> b!6574218 (= res!2697874 lt!2409444)))

(declare-fun b!6574219 () Bool)

(declare-fun e!3979110 () Bool)

(declare-fun e!3979114 () Bool)

(assert (=> b!6574219 (= e!3979110 e!3979114)))

(declare-fun res!2697872 () Bool)

(assert (=> b!6574219 (=> res!2697872 e!3979114)))

(declare-fun call!572236 () Bool)

(assert (=> b!6574219 (= res!2697872 call!572236)))

(declare-fun b!6574220 () Bool)

(assert (=> b!6574220 (= e!3979112 (nullable!6444 r!7292))))

(declare-fun b!6574221 () Bool)

(declare-fun res!2697870 () Bool)

(assert (=> b!6574221 (=> res!2697870 e!3979114)))

(assert (=> b!6574221 (= res!2697870 (not (isEmpty!37785 (tail!12439 s!2326))))))

(declare-fun b!6574222 () Bool)

(assert (=> b!6574222 (= e!3979108 e!3979110)))

(declare-fun res!2697877 () Bool)

(assert (=> b!6574222 (=> (not res!2697877) (not e!3979110))))

(assert (=> b!6574222 (= res!2697877 (not lt!2409444))))

(declare-fun b!6574224 () Bool)

(assert (=> b!6574224 (= e!3979113 (= (head!13354 s!2326) (c!1208648 r!7292)))))

(declare-fun b!6574225 () Bool)

(declare-fun e!3979111 () Bool)

(assert (=> b!6574225 (= e!3979111 e!3979109)))

(declare-fun c!1208837 () Bool)

(assert (=> b!6574225 (= c!1208837 ((_ is EmptyLang!16451) r!7292))))

(declare-fun b!6574226 () Bool)

(declare-fun res!2697873 () Bool)

(assert (=> b!6574226 (=> (not res!2697873) (not e!3979113))))

(assert (=> b!6574226 (= res!2697873 (not call!572236))))

(declare-fun b!6574227 () Bool)

(assert (=> b!6574227 (= e!3979114 (not (= (head!13354 s!2326) (c!1208648 r!7292))))))

(declare-fun bm!572231 () Bool)

(assert (=> bm!572231 (= call!572236 (isEmpty!37785 s!2326))))

(declare-fun b!6574223 () Bool)

(declare-fun res!2697871 () Bool)

(assert (=> b!6574223 (=> (not res!2697871) (not e!3979113))))

(assert (=> b!6574223 (= res!2697871 (isEmpty!37785 (tail!12439 s!2326)))))

(declare-fun d!2062319 () Bool)

(assert (=> d!2062319 e!3979111))

(declare-fun c!1208836 () Bool)

(assert (=> d!2062319 (= c!1208836 ((_ is EmptyExpr!16451) r!7292))))

(assert (=> d!2062319 (= lt!2409444 e!3979112)))

(declare-fun c!1208835 () Bool)

(assert (=> d!2062319 (= c!1208835 (isEmpty!37785 s!2326))))

(assert (=> d!2062319 (validRegex!8187 r!7292)))

(assert (=> d!2062319 (= (matchR!8634 r!7292 s!2326) lt!2409444)))

(declare-fun b!6574228 () Bool)

(declare-fun res!2697875 () Bool)

(assert (=> b!6574228 (=> res!2697875 e!3979108)))

(assert (=> b!6574228 (= res!2697875 (not ((_ is ElementMatch!16451) r!7292)))))

(assert (=> b!6574228 (= e!3979109 e!3979108)))

(declare-fun b!6574229 () Bool)

(assert (=> b!6574229 (= e!3979111 (= lt!2409444 call!572236))))

(assert (= (and d!2062319 c!1208835) b!6574220))

(assert (= (and d!2062319 (not c!1208835)) b!6574217))

(assert (= (and d!2062319 c!1208836) b!6574229))

(assert (= (and d!2062319 (not c!1208836)) b!6574225))

(assert (= (and b!6574225 c!1208837) b!6574216))

(assert (= (and b!6574225 (not c!1208837)) b!6574228))

(assert (= (and b!6574228 (not res!2697875)) b!6574218))

(assert (= (and b!6574218 res!2697874) b!6574226))

(assert (= (and b!6574226 res!2697873) b!6574223))

(assert (= (and b!6574223 res!2697871) b!6574224))

(assert (= (and b!6574218 (not res!2697876)) b!6574222))

(assert (= (and b!6574222 res!2697877) b!6574219))

(assert (= (and b!6574219 (not res!2697872)) b!6574221))

(assert (= (and b!6574221 (not res!2697870)) b!6574227))

(assert (= (or b!6574229 b!6574219 b!6574226) bm!572231))

(declare-fun m!7355280 () Bool)

(assert (=> b!6574224 m!7355280))

(assert (=> bm!572231 m!7355270))

(assert (=> b!6574227 m!7355280))

(declare-fun m!7355282 () Bool)

(assert (=> b!6574223 m!7355282))

(assert (=> b!6574223 m!7355282))

(declare-fun m!7355284 () Bool)

(assert (=> b!6574223 m!7355284))

(assert (=> d!2062319 m!7355270))

(assert (=> d!2062319 m!7354888))

(assert (=> b!6574217 m!7355280))

(assert (=> b!6574217 m!7355280))

(declare-fun m!7355286 () Bool)

(assert (=> b!6574217 m!7355286))

(assert (=> b!6574217 m!7355282))

(assert (=> b!6574217 m!7355286))

(assert (=> b!6574217 m!7355282))

(declare-fun m!7355288 () Bool)

(assert (=> b!6574217 m!7355288))

(assert (=> b!6574221 m!7355282))

(assert (=> b!6574221 m!7355282))

(assert (=> b!6574221 m!7355284))

(declare-fun m!7355290 () Bool)

(assert (=> b!6574220 m!7355290))

(assert (=> b!6573681 d!2062319))

(declare-fun d!2062323 () Bool)

(assert (=> d!2062323 (= (matchR!8634 r!7292 s!2326) (matchRSpec!3552 r!7292 s!2326))))

(declare-fun lt!2409449 () Unit!159139)

(declare-fun choose!49117 (Regex!16451 List!65654) Unit!159139)

(assert (=> d!2062323 (= lt!2409449 (choose!49117 r!7292 s!2326))))

(assert (=> d!2062323 (validRegex!8187 r!7292)))

(assert (=> d!2062323 (= (mainMatchTheorem!3552 r!7292 s!2326) lt!2409449)))

(declare-fun bs!1678982 () Bool)

(assert (= bs!1678982 d!2062323))

(assert (=> bs!1678982 m!7354856))

(assert (=> bs!1678982 m!7354854))

(declare-fun m!7355292 () Bool)

(assert (=> bs!1678982 m!7355292))

(assert (=> bs!1678982 m!7354888))

(assert (=> b!6573681 d!2062323))

(declare-fun bm!572241 () Bool)

(declare-fun call!572246 () Bool)

(declare-fun call!572248 () Bool)

(assert (=> bm!572241 (= call!572246 call!572248)))

(declare-fun b!6574290 () Bool)

(declare-fun res!2697913 () Bool)

(declare-fun e!3979152 () Bool)

(assert (=> b!6574290 (=> (not res!2697913) (not e!3979152))))

(declare-fun call!572247 () Bool)

(assert (=> b!6574290 (= res!2697913 call!572247)))

(declare-fun e!3979150 () Bool)

(assert (=> b!6574290 (= e!3979150 e!3979152)))

(declare-fun b!6574291 () Bool)

(declare-fun e!3979151 () Bool)

(assert (=> b!6574291 (= e!3979151 e!3979150)))

(declare-fun c!1208851 () Bool)

(assert (=> b!6574291 (= c!1208851 ((_ is Union!16451) lt!2409351))))

(declare-fun b!6574292 () Bool)

(assert (=> b!6574292 (= e!3979152 call!572246)))

(declare-fun d!2062325 () Bool)

(declare-fun res!2697915 () Bool)

(declare-fun e!3979153 () Bool)

(assert (=> d!2062325 (=> res!2697915 e!3979153)))

(assert (=> d!2062325 (= res!2697915 ((_ is ElementMatch!16451) lt!2409351))))

(assert (=> d!2062325 (= (validRegex!8187 lt!2409351) e!3979153)))

(declare-fun b!6574293 () Bool)

(declare-fun e!3979155 () Bool)

(declare-fun e!3979154 () Bool)

(assert (=> b!6574293 (= e!3979155 e!3979154)))

(declare-fun res!2697912 () Bool)

(assert (=> b!6574293 (=> (not res!2697912) (not e!3979154))))

(assert (=> b!6574293 (= res!2697912 call!572247)))

(declare-fun b!6574294 () Bool)

(assert (=> b!6574294 (= e!3979153 e!3979151)))

(declare-fun c!1208852 () Bool)

(assert (=> b!6574294 (= c!1208852 ((_ is Star!16451) lt!2409351))))

(declare-fun bm!572242 () Bool)

(assert (=> bm!572242 (= call!572248 (validRegex!8187 (ite c!1208852 (reg!16780 lt!2409351) (ite c!1208851 (regTwo!33415 lt!2409351) (regTwo!33414 lt!2409351)))))))

(declare-fun bm!572243 () Bool)

(assert (=> bm!572243 (= call!572247 (validRegex!8187 (ite c!1208851 (regOne!33415 lt!2409351) (regOne!33414 lt!2409351))))))

(declare-fun b!6574295 () Bool)

(declare-fun e!3979156 () Bool)

(assert (=> b!6574295 (= e!3979151 e!3979156)))

(declare-fun res!2697914 () Bool)

(assert (=> b!6574295 (= res!2697914 (not (nullable!6444 (reg!16780 lt!2409351))))))

(assert (=> b!6574295 (=> (not res!2697914) (not e!3979156))))

(declare-fun b!6574296 () Bool)

(assert (=> b!6574296 (= e!3979154 call!572246)))

(declare-fun b!6574297 () Bool)

(assert (=> b!6574297 (= e!3979156 call!572248)))

(declare-fun b!6574298 () Bool)

(declare-fun res!2697916 () Bool)

(assert (=> b!6574298 (=> res!2697916 e!3979155)))

(assert (=> b!6574298 (= res!2697916 (not ((_ is Concat!25296) lt!2409351)))))

(assert (=> b!6574298 (= e!3979150 e!3979155)))

(assert (= (and d!2062325 (not res!2697915)) b!6574294))

(assert (= (and b!6574294 c!1208852) b!6574295))

(assert (= (and b!6574294 (not c!1208852)) b!6574291))

(assert (= (and b!6574295 res!2697914) b!6574297))

(assert (= (and b!6574291 c!1208851) b!6574290))

(assert (= (and b!6574291 (not c!1208851)) b!6574298))

(assert (= (and b!6574290 res!2697913) b!6574292))

(assert (= (and b!6574298 (not res!2697916)) b!6574293))

(assert (= (and b!6574293 res!2697912) b!6574296))

(assert (= (or b!6574292 b!6574296) bm!572241))

(assert (= (or b!6574290 b!6574293) bm!572243))

(assert (= (or b!6574297 bm!572241) bm!572242))

(declare-fun m!7355302 () Bool)

(assert (=> bm!572242 m!7355302))

(declare-fun m!7355304 () Bool)

(assert (=> bm!572243 m!7355304))

(declare-fun m!7355306 () Bool)

(assert (=> b!6574295 m!7355306))

(assert (=> b!6573662 d!2062325))

(declare-fun d!2062329 () Bool)

(declare-fun lt!2409451 () Regex!16451)

(assert (=> d!2062329 (validRegex!8187 lt!2409451)))

(assert (=> d!2062329 (= lt!2409451 (generalisedUnion!2295 (unfocusZipperList!1872 zl!343)))))

(assert (=> d!2062329 (= (unfocusZipper!2193 zl!343) lt!2409451)))

(declare-fun bs!1678983 () Bool)

(assert (= bs!1678983 d!2062329))

(declare-fun m!7355308 () Bool)

(assert (=> bs!1678983 m!7355308))

(assert (=> bs!1678983 m!7354884))

(assert (=> bs!1678983 m!7354884))

(assert (=> bs!1678983 m!7354886))

(assert (=> b!6573661 d!2062329))

(declare-fun d!2062331 () Bool)

(declare-fun c!1208853 () Bool)

(assert (=> d!2062331 (= c!1208853 (isEmpty!37785 s!2326))))

(declare-fun e!3979157 () Bool)

(assert (=> d!2062331 (= (matchZipper!2463 lt!2409342 s!2326) e!3979157)))

(declare-fun b!6574299 () Bool)

(assert (=> b!6574299 (= e!3979157 (nullableZipper!2196 lt!2409342))))

(declare-fun b!6574300 () Bool)

(assert (=> b!6574300 (= e!3979157 (matchZipper!2463 (derivationStepZipper!2417 lt!2409342 (head!13354 s!2326)) (tail!12439 s!2326)))))

(assert (= (and d!2062331 c!1208853) b!6574299))

(assert (= (and d!2062331 (not c!1208853)) b!6574300))

(assert (=> d!2062331 m!7355270))

(declare-fun m!7355310 () Bool)

(assert (=> b!6574299 m!7355310))

(assert (=> b!6574300 m!7355280))

(assert (=> b!6574300 m!7355280))

(declare-fun m!7355312 () Bool)

(assert (=> b!6574300 m!7355312))

(assert (=> b!6574300 m!7355282))

(assert (=> b!6574300 m!7355312))

(assert (=> b!6574300 m!7355282))

(declare-fun m!7355314 () Bool)

(assert (=> b!6574300 m!7355314))

(assert (=> b!6573658 d!2062331))

(declare-fun d!2062333 () Bool)

(declare-fun c!1208854 () Bool)

(assert (=> d!2062333 (= c!1208854 (isEmpty!37785 (t!379300 s!2326)))))

(declare-fun e!3979158 () Bool)

(assert (=> d!2062333 (= (matchZipper!2463 lt!2409354 (t!379300 s!2326)) e!3979158)))

(declare-fun b!6574301 () Bool)

(assert (=> b!6574301 (= e!3979158 (nullableZipper!2196 lt!2409354))))

(declare-fun b!6574302 () Bool)

(assert (=> b!6574302 (= e!3979158 (matchZipper!2463 (derivationStepZipper!2417 lt!2409354 (head!13354 (t!379300 s!2326))) (tail!12439 (t!379300 s!2326))))))

(assert (= (and d!2062333 c!1208854) b!6574301))

(assert (= (and d!2062333 (not c!1208854)) b!6574302))

(assert (=> d!2062333 m!7355100))

(declare-fun m!7355316 () Bool)

(assert (=> b!6574301 m!7355316))

(assert (=> b!6574302 m!7355104))

(assert (=> b!6574302 m!7355104))

(declare-fun m!7355318 () Bool)

(assert (=> b!6574302 m!7355318))

(assert (=> b!6574302 m!7355108))

(assert (=> b!6574302 m!7355318))

(assert (=> b!6574302 m!7355108))

(declare-fun m!7355320 () Bool)

(assert (=> b!6574302 m!7355320))

(assert (=> b!6573658 d!2062333))

(declare-fun bs!1678984 () Bool)

(declare-fun d!2062335 () Bool)

(assert (= bs!1678984 (and d!2062335 b!6573688)))

(declare-fun lambda!366234 () Int)

(assert (=> bs!1678984 (= lambda!366234 lambda!366169)))

(declare-fun bs!1678985 () Bool)

(assert (= bs!1678985 (and d!2062335 d!2062275)))

(assert (=> bs!1678985 (= lambda!366234 lambda!366196)))

(assert (=> d!2062335 true))

(assert (=> d!2062335 (= (derivationStepZipper!2417 lt!2409347 (h!71978 s!2326)) (flatMap!1956 lt!2409347 lambda!366234))))

(declare-fun bs!1678986 () Bool)

(assert (= bs!1678986 d!2062335))

(declare-fun m!7355322 () Bool)

(assert (=> bs!1678986 m!7355322))

(assert (=> b!6573659 d!2062335))

(declare-fun d!2062337 () Bool)

(assert (=> d!2062337 (= (flatMap!1956 lt!2409347 lambda!366169) (choose!49114 lt!2409347 lambda!366169))))

(declare-fun bs!1678987 () Bool)

(assert (= bs!1678987 d!2062337))

(declare-fun m!7355324 () Bool)

(assert (=> bs!1678987 m!7355324))

(assert (=> b!6573659 d!2062337))

(assert (=> b!6573659 d!2062205))

(declare-fun d!2062339 () Bool)

(assert (=> d!2062339 (= (flatMap!1956 lt!2409347 lambda!366169) (dynLambda!26070 lambda!366169 lt!2409349))))

(declare-fun lt!2409452 () Unit!159139)

(assert (=> d!2062339 (= lt!2409452 (choose!49113 lt!2409347 lt!2409349 lambda!366169))))

(assert (=> d!2062339 (= lt!2409347 (store ((as const (Array Context!11670 Bool)) false) lt!2409349 true))))

(assert (=> d!2062339 (= (lemmaFlatMapOnSingletonSet!1482 lt!2409347 lt!2409349 lambda!366169) lt!2409452)))

(declare-fun b_lambda!248615 () Bool)

(assert (=> (not b_lambda!248615) (not d!2062339)))

(declare-fun bs!1678988 () Bool)

(assert (= bs!1678988 d!2062339))

(assert (=> bs!1678988 m!7354876))

(declare-fun m!7355326 () Bool)

(assert (=> bs!1678988 m!7355326))

(declare-fun m!7355328 () Bool)

(assert (=> bs!1678988 m!7355328))

(assert (=> bs!1678988 m!7354878))

(assert (=> b!6573659 d!2062339))

(declare-fun bs!1678989 () Bool)

(declare-fun d!2062341 () Bool)

(assert (= bs!1678989 (and d!2062341 d!2062237)))

(declare-fun lambda!366235 () Int)

(assert (=> bs!1678989 (= lambda!366235 lambda!366184)))

(declare-fun bs!1678990 () Bool)

(assert (= bs!1678990 (and d!2062341 d!2062253)))

(assert (=> bs!1678990 (= lambda!366235 lambda!366190)))

(declare-fun bs!1678991 () Bool)

(assert (= bs!1678991 (and d!2062341 d!2062277)))

(assert (=> bs!1678991 (= lambda!366235 lambda!366199)))

(declare-fun bs!1678992 () Bool)

(assert (= bs!1678992 (and d!2062341 d!2062285)))

(assert (=> bs!1678992 (= lambda!366235 lambda!366211)))

(assert (=> d!2062341 (= (inv!84374 setElem!44896) (forall!15625 (exprs!6335 setElem!44896) lambda!366235))))

(declare-fun bs!1678993 () Bool)

(assert (= bs!1678993 d!2062341))

(declare-fun m!7355330 () Bool)

(assert (=> bs!1678993 m!7355330))

(assert (=> setNonEmpty!44896 d!2062341))

(assert (=> b!6573655 d!2062259))

(declare-fun b!6574384 () Bool)

(declare-fun res!2697937 () Bool)

(declare-fun e!3979206 () Bool)

(assert (=> b!6574384 (=> (not res!2697937) (not e!3979206))))

(declare-fun lt!2409460 () Int)

(declare-fun call!572281 () Int)

(assert (=> b!6574384 (= res!2697937 (> lt!2409460 call!572281))))

(declare-fun e!3979208 () Bool)

(assert (=> b!6574384 (= e!3979208 e!3979206)))

(declare-fun b!6574385 () Bool)

(declare-fun call!572280 () Int)

(assert (=> b!6574385 (= e!3979206 (> lt!2409460 call!572280))))

(declare-fun b!6574386 () Bool)

(declare-fun c!1208886 () Bool)

(assert (=> b!6574386 (= c!1208886 ((_ is Union!16451) r!7292))))

(declare-fun e!3979212 () Int)

(declare-fun e!3979209 () Int)

(assert (=> b!6574386 (= e!3979212 e!3979209)))

(declare-fun b!6574387 () Bool)

(declare-fun e!3979213 () Int)

(assert (=> b!6574387 (= e!3979213 e!3979212)))

(declare-fun c!1208888 () Bool)

(assert (=> b!6574387 (= c!1208888 ((_ is Star!16451) r!7292))))

(declare-fun b!6574388 () Bool)

(declare-fun e!3979211 () Bool)

(declare-fun e!3979214 () Bool)

(assert (=> b!6574388 (= e!3979211 e!3979214)))

(declare-fun c!1208887 () Bool)

(assert (=> b!6574388 (= c!1208887 ((_ is Union!16451) r!7292))))

(declare-fun bm!572269 () Bool)

(assert (=> bm!572269 (= call!572280 (regexDepth!348 (ite c!1208887 (regTwo!33415 r!7292) (regTwo!33414 r!7292))))))

(declare-fun bm!572270 () Bool)

(declare-fun call!572282 () Int)

(assert (=> bm!572270 (= call!572281 call!572282)))

(declare-fun bm!572271 () Bool)

(declare-fun call!572274 () Int)

(assert (=> bm!572271 (= call!572274 (regexDepth!348 (ite c!1208888 (reg!16780 r!7292) (ite c!1208886 (regTwo!33415 r!7292) (regOne!33414 r!7292)))))))

(declare-fun b!6574389 () Bool)

(declare-fun e!3979207 () Bool)

(assert (=> b!6574389 (= e!3979207 (> lt!2409460 call!572281))))

(declare-fun b!6574390 () Bool)

(assert (=> b!6574390 (= e!3979207 (= lt!2409460 1))))

(declare-fun b!6574391 () Bool)

(assert (=> b!6574391 (= e!3979214 e!3979208)))

(declare-fun c!1208889 () Bool)

(assert (=> b!6574391 (= c!1208889 ((_ is Concat!25296) r!7292))))

(declare-fun b!6574392 () Bool)

(declare-fun e!3979210 () Int)

(declare-fun call!572276 () Int)

(assert (=> b!6574392 (= e!3979210 (+ 1 call!572276))))

(declare-fun bm!572272 () Bool)

(declare-fun call!572277 () Int)

(assert (=> bm!572272 (= call!572277 call!572274)))

(declare-fun b!6574393 () Bool)

(assert (=> b!6574393 (= e!3979209 (+ 1 call!572276))))

(declare-fun b!6574394 () Bool)

(assert (=> b!6574394 (= e!3979212 (+ 1 call!572274))))

(declare-fun bm!572273 () Bool)

(assert (=> bm!572273 (= call!572282 (regexDepth!348 (ite c!1208887 (regOne!33415 r!7292) (ite c!1208889 (regOne!33414 r!7292) (reg!16780 r!7292)))))))

(declare-fun b!6574395 () Bool)

(assert (=> b!6574395 (= e!3979209 e!3979210)))

(declare-fun c!1208892 () Bool)

(assert (=> b!6574395 (= c!1208892 ((_ is Concat!25296) r!7292))))

(declare-fun d!2062343 () Bool)

(assert (=> d!2062343 e!3979211))

(declare-fun res!2697936 () Bool)

(assert (=> d!2062343 (=> (not res!2697936) (not e!3979211))))

(assert (=> d!2062343 (= res!2697936 (> lt!2409460 0))))

(assert (=> d!2062343 (= lt!2409460 e!3979213)))

(declare-fun c!1208890 () Bool)

(assert (=> d!2062343 (= c!1208890 ((_ is ElementMatch!16451) r!7292))))

(assert (=> d!2062343 (= (regexDepth!348 r!7292) lt!2409460)))

(declare-fun b!6574396 () Bool)

(declare-fun e!3979205 () Bool)

(assert (=> b!6574396 (= e!3979205 (> lt!2409460 call!572280))))

(declare-fun b!6574397 () Bool)

(assert (=> b!6574397 (= e!3979214 e!3979205)))

(declare-fun res!2697938 () Bool)

(assert (=> b!6574397 (= res!2697938 (> lt!2409460 call!572282))))

(assert (=> b!6574397 (=> (not res!2697938) (not e!3979205))))

(declare-fun bm!572274 () Bool)

(declare-fun call!572275 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!572274 (= call!572276 (maxBigInt!0 (ite c!1208886 call!572275 call!572277) (ite c!1208886 call!572277 call!572275)))))

(declare-fun bm!572275 () Bool)

(assert (=> bm!572275 (= call!572275 (regexDepth!348 (ite c!1208886 (regOne!33415 r!7292) (regTwo!33414 r!7292))))))

(declare-fun b!6574398 () Bool)

(assert (=> b!6574398 (= e!3979210 1)))

(declare-fun b!6574399 () Bool)

(assert (=> b!6574399 (= e!3979213 1)))

(declare-fun b!6574400 () Bool)

(declare-fun c!1208891 () Bool)

(assert (=> b!6574400 (= c!1208891 ((_ is Star!16451) r!7292))))

(assert (=> b!6574400 (= e!3979208 e!3979207)))

(assert (= (and d!2062343 c!1208890) b!6574399))

(assert (= (and d!2062343 (not c!1208890)) b!6574387))

(assert (= (and b!6574387 c!1208888) b!6574394))

(assert (= (and b!6574387 (not c!1208888)) b!6574386))

(assert (= (and b!6574386 c!1208886) b!6574393))

(assert (= (and b!6574386 (not c!1208886)) b!6574395))

(assert (= (and b!6574395 c!1208892) b!6574392))

(assert (= (and b!6574395 (not c!1208892)) b!6574398))

(assert (= (or b!6574393 b!6574392) bm!572272))

(assert (= (or b!6574393 b!6574392) bm!572275))

(assert (= (or b!6574393 b!6574392) bm!572274))

(assert (= (or b!6574394 bm!572272) bm!572271))

(assert (= (and d!2062343 res!2697936) b!6574388))

(assert (= (and b!6574388 c!1208887) b!6574397))

(assert (= (and b!6574388 (not c!1208887)) b!6574391))

(assert (= (and b!6574397 res!2697938) b!6574396))

(assert (= (and b!6574391 c!1208889) b!6574384))

(assert (= (and b!6574391 (not c!1208889)) b!6574400))

(assert (= (and b!6574384 res!2697937) b!6574385))

(assert (= (and b!6574400 c!1208891) b!6574389))

(assert (= (and b!6574400 (not c!1208891)) b!6574390))

(assert (= (or b!6574384 b!6574389) bm!572270))

(assert (= (or b!6574396 b!6574385) bm!572269))

(assert (= (or b!6574397 bm!572270) bm!572273))

(declare-fun m!7355350 () Bool)

(assert (=> bm!572269 m!7355350))

(declare-fun m!7355352 () Bool)

(assert (=> bm!572275 m!7355352))

(declare-fun m!7355354 () Bool)

(assert (=> bm!572271 m!7355354))

(declare-fun m!7355356 () Bool)

(assert (=> bm!572274 m!7355356))

(declare-fun m!7355358 () Bool)

(assert (=> bm!572273 m!7355358))

(assert (=> b!6573675 d!2062343))

(declare-fun b!6574401 () Bool)

(declare-fun res!2697940 () Bool)

(declare-fun e!3979216 () Bool)

(assert (=> b!6574401 (=> (not res!2697940) (not e!3979216))))

(declare-fun lt!2409461 () Int)

(declare-fun call!572290 () Int)

(assert (=> b!6574401 (= res!2697940 (> lt!2409461 call!572290))))

(declare-fun e!3979218 () Bool)

(assert (=> b!6574401 (= e!3979218 e!3979216)))

(declare-fun b!6574402 () Bool)

(declare-fun call!572289 () Int)

(assert (=> b!6574402 (= e!3979216 (> lt!2409461 call!572289))))

(declare-fun b!6574403 () Bool)

(declare-fun c!1208893 () Bool)

(assert (=> b!6574403 (= c!1208893 ((_ is Union!16451) lt!2409351))))

(declare-fun e!3979222 () Int)

(declare-fun e!3979219 () Int)

(assert (=> b!6574403 (= e!3979222 e!3979219)))

(declare-fun b!6574404 () Bool)

(declare-fun e!3979223 () Int)

(assert (=> b!6574404 (= e!3979223 e!3979222)))

(declare-fun c!1208895 () Bool)

(assert (=> b!6574404 (= c!1208895 ((_ is Star!16451) lt!2409351))))

(declare-fun b!6574405 () Bool)

(declare-fun e!3979221 () Bool)

(declare-fun e!3979224 () Bool)

(assert (=> b!6574405 (= e!3979221 e!3979224)))

(declare-fun c!1208894 () Bool)

(assert (=> b!6574405 (= c!1208894 ((_ is Union!16451) lt!2409351))))

(declare-fun bm!572280 () Bool)

(assert (=> bm!572280 (= call!572289 (regexDepth!348 (ite c!1208894 (regTwo!33415 lt!2409351) (regTwo!33414 lt!2409351))))))

(declare-fun bm!572281 () Bool)

(declare-fun call!572291 () Int)

(assert (=> bm!572281 (= call!572290 call!572291)))

(declare-fun bm!572282 () Bool)

(declare-fun call!572285 () Int)

(assert (=> bm!572282 (= call!572285 (regexDepth!348 (ite c!1208895 (reg!16780 lt!2409351) (ite c!1208893 (regTwo!33415 lt!2409351) (regOne!33414 lt!2409351)))))))

(declare-fun b!6574406 () Bool)

(declare-fun e!3979217 () Bool)

(assert (=> b!6574406 (= e!3979217 (> lt!2409461 call!572290))))

(declare-fun b!6574407 () Bool)

(assert (=> b!6574407 (= e!3979217 (= lt!2409461 1))))

(declare-fun b!6574408 () Bool)

(assert (=> b!6574408 (= e!3979224 e!3979218)))

(declare-fun c!1208896 () Bool)

(assert (=> b!6574408 (= c!1208896 ((_ is Concat!25296) lt!2409351))))

(declare-fun b!6574409 () Bool)

(declare-fun e!3979220 () Int)

(declare-fun call!572287 () Int)

(assert (=> b!6574409 (= e!3979220 (+ 1 call!572287))))

(declare-fun bm!572283 () Bool)

(declare-fun call!572288 () Int)

(assert (=> bm!572283 (= call!572288 call!572285)))

(declare-fun b!6574410 () Bool)

(assert (=> b!6574410 (= e!3979219 (+ 1 call!572287))))

(declare-fun b!6574411 () Bool)

(assert (=> b!6574411 (= e!3979222 (+ 1 call!572285))))

(declare-fun bm!572284 () Bool)

(assert (=> bm!572284 (= call!572291 (regexDepth!348 (ite c!1208894 (regOne!33415 lt!2409351) (ite c!1208896 (regOne!33414 lt!2409351) (reg!16780 lt!2409351)))))))

(declare-fun b!6574412 () Bool)

(assert (=> b!6574412 (= e!3979219 e!3979220)))

(declare-fun c!1208899 () Bool)

(assert (=> b!6574412 (= c!1208899 ((_ is Concat!25296) lt!2409351))))

(declare-fun d!2062353 () Bool)

(assert (=> d!2062353 e!3979221))

(declare-fun res!2697939 () Bool)

(assert (=> d!2062353 (=> (not res!2697939) (not e!3979221))))

(assert (=> d!2062353 (= res!2697939 (> lt!2409461 0))))

(assert (=> d!2062353 (= lt!2409461 e!3979223)))

(declare-fun c!1208897 () Bool)

(assert (=> d!2062353 (= c!1208897 ((_ is ElementMatch!16451) lt!2409351))))

(assert (=> d!2062353 (= (regexDepth!348 lt!2409351) lt!2409461)))

(declare-fun b!6574413 () Bool)

(declare-fun e!3979215 () Bool)

(assert (=> b!6574413 (= e!3979215 (> lt!2409461 call!572289))))

(declare-fun b!6574414 () Bool)

(assert (=> b!6574414 (= e!3979224 e!3979215)))

(declare-fun res!2697941 () Bool)

(assert (=> b!6574414 (= res!2697941 (> lt!2409461 call!572291))))

(assert (=> b!6574414 (=> (not res!2697941) (not e!3979215))))

(declare-fun bm!572285 () Bool)

(declare-fun call!572286 () Int)

(assert (=> bm!572285 (= call!572287 (maxBigInt!0 (ite c!1208893 call!572286 call!572288) (ite c!1208893 call!572288 call!572286)))))

(declare-fun bm!572286 () Bool)

(assert (=> bm!572286 (= call!572286 (regexDepth!348 (ite c!1208893 (regOne!33415 lt!2409351) (regTwo!33414 lt!2409351))))))

(declare-fun b!6574415 () Bool)

(assert (=> b!6574415 (= e!3979220 1)))

(declare-fun b!6574416 () Bool)

(assert (=> b!6574416 (= e!3979223 1)))

(declare-fun b!6574417 () Bool)

(declare-fun c!1208898 () Bool)

(assert (=> b!6574417 (= c!1208898 ((_ is Star!16451) lt!2409351))))

(assert (=> b!6574417 (= e!3979218 e!3979217)))

(assert (= (and d!2062353 c!1208897) b!6574416))

(assert (= (and d!2062353 (not c!1208897)) b!6574404))

(assert (= (and b!6574404 c!1208895) b!6574411))

(assert (= (and b!6574404 (not c!1208895)) b!6574403))

(assert (= (and b!6574403 c!1208893) b!6574410))

(assert (= (and b!6574403 (not c!1208893)) b!6574412))

(assert (= (and b!6574412 c!1208899) b!6574409))

(assert (= (and b!6574412 (not c!1208899)) b!6574415))

(assert (= (or b!6574410 b!6574409) bm!572283))

(assert (= (or b!6574410 b!6574409) bm!572286))

(assert (= (or b!6574410 b!6574409) bm!572285))

(assert (= (or b!6574411 bm!572283) bm!572282))

(assert (= (and d!2062353 res!2697939) b!6574405))

(assert (= (and b!6574405 c!1208894) b!6574414))

(assert (= (and b!6574405 (not c!1208894)) b!6574408))

(assert (= (and b!6574414 res!2697941) b!6574413))

(assert (= (and b!6574408 c!1208896) b!6574401))

(assert (= (and b!6574408 (not c!1208896)) b!6574417))

(assert (= (and b!6574401 res!2697940) b!6574402))

(assert (= (and b!6574417 c!1208898) b!6574406))

(assert (= (and b!6574417 (not c!1208898)) b!6574407))

(assert (= (or b!6574401 b!6574406) bm!572281))

(assert (= (or b!6574413 b!6574402) bm!572280))

(assert (= (or b!6574414 bm!572281) bm!572284))

(declare-fun m!7355360 () Bool)

(assert (=> bm!572280 m!7355360))

(declare-fun m!7355362 () Bool)

(assert (=> bm!572286 m!7355362))

(declare-fun m!7355364 () Bool)

(assert (=> bm!572282 m!7355364))

(declare-fun m!7355366 () Bool)

(assert (=> bm!572285 m!7355366))

(declare-fun m!7355368 () Bool)

(assert (=> bm!572284 m!7355368))

(assert (=> b!6573675 d!2062353))

(declare-fun bs!1679007 () Bool)

(declare-fun d!2062355 () Bool)

(assert (= bs!1679007 (and d!2062355 d!2062253)))

(declare-fun lambda!366238 () Int)

(assert (=> bs!1679007 (= lambda!366238 lambda!366190)))

(declare-fun bs!1679008 () Bool)

(assert (= bs!1679008 (and d!2062355 d!2062237)))

(assert (=> bs!1679008 (= lambda!366238 lambda!366184)))

(declare-fun bs!1679009 () Bool)

(assert (= bs!1679009 (and d!2062355 d!2062277)))

(assert (=> bs!1679009 (= lambda!366238 lambda!366199)))

(declare-fun bs!1679010 () Bool)

(assert (= bs!1679010 (and d!2062355 d!2062285)))

(assert (=> bs!1679010 (= lambda!366238 lambda!366211)))

(declare-fun bs!1679011 () Bool)

(assert (= bs!1679011 (and d!2062355 d!2062341)))

(assert (=> bs!1679011 (= lambda!366238 lambda!366235)))

(declare-fun b!6574418 () Bool)

(declare-fun e!3979227 () Regex!16451)

(declare-fun e!3979228 () Regex!16451)

(assert (=> b!6574418 (= e!3979227 e!3979228)))

(declare-fun c!1208900 () Bool)

(assert (=> b!6574418 (= c!1208900 ((_ is Cons!65528) (t!379298 (exprs!6335 (h!71977 zl!343)))))))

(declare-fun b!6574419 () Bool)

(declare-fun e!3979225 () Bool)

(declare-fun e!3979229 () Bool)

(assert (=> b!6574419 (= e!3979225 e!3979229)))

(declare-fun c!1208902 () Bool)

(assert (=> b!6574419 (= c!1208902 (isEmpty!37782 (tail!12438 (t!379298 (exprs!6335 (h!71977 zl!343))))))))

(declare-fun b!6574420 () Bool)

(assert (=> b!6574420 (= e!3979227 (h!71976 (t!379298 (exprs!6335 (h!71977 zl!343)))))))

(declare-fun b!6574421 () Bool)

(declare-fun lt!2409462 () Regex!16451)

(assert (=> b!6574421 (= e!3979229 (isConcat!1352 lt!2409462))))

(declare-fun b!6574422 () Bool)

(assert (=> b!6574422 (= e!3979229 (= lt!2409462 (head!13353 (t!379298 (exprs!6335 (h!71977 zl!343))))))))

(declare-fun b!6574424 () Bool)

(assert (=> b!6574424 (= e!3979228 (Concat!25296 (h!71976 (t!379298 (exprs!6335 (h!71977 zl!343)))) (generalisedConcat!2048 (t!379298 (t!379298 (exprs!6335 (h!71977 zl!343)))))))))

(declare-fun b!6574425 () Bool)

(assert (=> b!6574425 (= e!3979225 (isEmptyExpr!1829 lt!2409462))))

(declare-fun b!6574426 () Bool)

(declare-fun e!3979230 () Bool)

(assert (=> b!6574426 (= e!3979230 e!3979225)))

(declare-fun c!1208901 () Bool)

(assert (=> b!6574426 (= c!1208901 (isEmpty!37782 (t!379298 (exprs!6335 (h!71977 zl!343)))))))

(declare-fun b!6574427 () Bool)

(declare-fun e!3979226 () Bool)

(assert (=> b!6574427 (= e!3979226 (isEmpty!37782 (t!379298 (t!379298 (exprs!6335 (h!71977 zl!343))))))))

(assert (=> d!2062355 e!3979230))

(declare-fun res!2697943 () Bool)

(assert (=> d!2062355 (=> (not res!2697943) (not e!3979230))))

(assert (=> d!2062355 (= res!2697943 (validRegex!8187 lt!2409462))))

(assert (=> d!2062355 (= lt!2409462 e!3979227)))

(declare-fun c!1208903 () Bool)

(assert (=> d!2062355 (= c!1208903 e!3979226)))

(declare-fun res!2697942 () Bool)

(assert (=> d!2062355 (=> (not res!2697942) (not e!3979226))))

(assert (=> d!2062355 (= res!2697942 ((_ is Cons!65528) (t!379298 (exprs!6335 (h!71977 zl!343)))))))

(assert (=> d!2062355 (forall!15625 (t!379298 (exprs!6335 (h!71977 zl!343))) lambda!366238)))

(assert (=> d!2062355 (= (generalisedConcat!2048 (t!379298 (exprs!6335 (h!71977 zl!343)))) lt!2409462)))

(declare-fun b!6574423 () Bool)

(assert (=> b!6574423 (= e!3979228 EmptyExpr!16451)))

(assert (= (and d!2062355 res!2697942) b!6574427))

(assert (= (and d!2062355 c!1208903) b!6574420))

(assert (= (and d!2062355 (not c!1208903)) b!6574418))

(assert (= (and b!6574418 c!1208900) b!6574424))

(assert (= (and b!6574418 (not c!1208900)) b!6574423))

(assert (= (and d!2062355 res!2697943) b!6574426))

(assert (= (and b!6574426 c!1208901) b!6574425))

(assert (= (and b!6574426 (not c!1208901)) b!6574419))

(assert (= (and b!6574419 c!1208902) b!6574422))

(assert (= (and b!6574419 (not c!1208902)) b!6574421))

(declare-fun m!7355370 () Bool)

(assert (=> b!6574421 m!7355370))

(declare-fun m!7355372 () Bool)

(assert (=> d!2062355 m!7355372))

(declare-fun m!7355374 () Bool)

(assert (=> d!2062355 m!7355374))

(declare-fun m!7355376 () Bool)

(assert (=> b!6574424 m!7355376))

(declare-fun m!7355378 () Bool)

(assert (=> b!6574427 m!7355378))

(declare-fun m!7355380 () Bool)

(assert (=> b!6574422 m!7355380))

(declare-fun m!7355382 () Bool)

(assert (=> b!6574419 m!7355382))

(assert (=> b!6574419 m!7355382))

(declare-fun m!7355384 () Bool)

(assert (=> b!6574419 m!7355384))

(assert (=> b!6574426 m!7354806))

(declare-fun m!7355386 () Bool)

(assert (=> b!6574425 m!7355386))

(assert (=> b!6573675 d!2062355))

(declare-fun e!3979248 () Bool)

(declare-fun d!2062357 () Bool)

(assert (=> d!2062357 (= (matchZipper!2463 ((_ map or) lt!2409332 lt!2409340) (t!379300 s!2326)) e!3979248)))

(declare-fun res!2697949 () Bool)

(assert (=> d!2062357 (=> res!2697949 e!3979248)))

(assert (=> d!2062357 (= res!2697949 (matchZipper!2463 lt!2409332 (t!379300 s!2326)))))

(declare-fun lt!2409466 () Unit!159139)

(declare-fun choose!49121 ((InoxSet Context!11670) (InoxSet Context!11670) List!65654) Unit!159139)

(assert (=> d!2062357 (= lt!2409466 (choose!49121 lt!2409332 lt!2409340 (t!379300 s!2326)))))

(assert (=> d!2062357 (= (lemmaZipperConcatMatchesSameAsBothZippers!1282 lt!2409332 lt!2409340 (t!379300 s!2326)) lt!2409466)))

(declare-fun b!6574457 () Bool)

(assert (=> b!6574457 (= e!3979248 (matchZipper!2463 lt!2409340 (t!379300 s!2326)))))

(assert (= (and d!2062357 (not res!2697949)) b!6574457))

(assert (=> d!2062357 m!7354906))

(assert (=> d!2062357 m!7354904))

(declare-fun m!7355412 () Bool)

(assert (=> d!2062357 m!7355412))

(assert (=> b!6574457 m!7354818))

(assert (=> b!6573677 d!2062357))

(declare-fun d!2062369 () Bool)

(declare-fun c!1208916 () Bool)

(assert (=> d!2062369 (= c!1208916 (isEmpty!37785 (t!379300 s!2326)))))

(declare-fun e!3979249 () Bool)

(assert (=> d!2062369 (= (matchZipper!2463 lt!2409332 (t!379300 s!2326)) e!3979249)))

(declare-fun b!6574458 () Bool)

(assert (=> b!6574458 (= e!3979249 (nullableZipper!2196 lt!2409332))))

(declare-fun b!6574459 () Bool)

(assert (=> b!6574459 (= e!3979249 (matchZipper!2463 (derivationStepZipper!2417 lt!2409332 (head!13354 (t!379300 s!2326))) (tail!12439 (t!379300 s!2326))))))

(assert (= (and d!2062369 c!1208916) b!6574458))

(assert (= (and d!2062369 (not c!1208916)) b!6574459))

(assert (=> d!2062369 m!7355100))

(declare-fun m!7355420 () Bool)

(assert (=> b!6574458 m!7355420))

(assert (=> b!6574459 m!7355104))

(assert (=> b!6574459 m!7355104))

(declare-fun m!7355422 () Bool)

(assert (=> b!6574459 m!7355422))

(assert (=> b!6574459 m!7355108))

(assert (=> b!6574459 m!7355422))

(assert (=> b!6574459 m!7355108))

(declare-fun m!7355424 () Bool)

(assert (=> b!6574459 m!7355424))

(assert (=> b!6573677 d!2062369))

(declare-fun d!2062373 () Bool)

(declare-fun c!1208919 () Bool)

(assert (=> d!2062373 (= c!1208919 (isEmpty!37785 (t!379300 s!2326)))))

(declare-fun e!3979253 () Bool)

(assert (=> d!2062373 (= (matchZipper!2463 ((_ map or) lt!2409332 lt!2409340) (t!379300 s!2326)) e!3979253)))

(declare-fun b!6574465 () Bool)

(assert (=> b!6574465 (= e!3979253 (nullableZipper!2196 ((_ map or) lt!2409332 lt!2409340)))))

(declare-fun b!6574466 () Bool)

(assert (=> b!6574466 (= e!3979253 (matchZipper!2463 (derivationStepZipper!2417 ((_ map or) lt!2409332 lt!2409340) (head!13354 (t!379300 s!2326))) (tail!12439 (t!379300 s!2326))))))

(assert (= (and d!2062373 c!1208919) b!6574465))

(assert (= (and d!2062373 (not c!1208919)) b!6574466))

(assert (=> d!2062373 m!7355100))

(declare-fun m!7355426 () Bool)

(assert (=> b!6574465 m!7355426))

(assert (=> b!6574466 m!7355104))

(assert (=> b!6574466 m!7355104))

(declare-fun m!7355430 () Bool)

(assert (=> b!6574466 m!7355430))

(assert (=> b!6574466 m!7355108))

(assert (=> b!6574466 m!7355430))

(assert (=> b!6574466 m!7355108))

(declare-fun m!7355434 () Bool)

(assert (=> b!6574466 m!7355434))

(assert (=> b!6573677 d!2062373))

(declare-fun d!2062375 () Bool)

(declare-fun c!1208920 () Bool)

(assert (=> d!2062375 (= c!1208920 (isEmpty!37785 s!2326))))

(declare-fun e!3979254 () Bool)

(assert (=> d!2062375 (= (matchZipper!2463 z!1189 s!2326) e!3979254)))

(declare-fun b!6574467 () Bool)

(assert (=> b!6574467 (= e!3979254 (nullableZipper!2196 z!1189))))

(declare-fun b!6574468 () Bool)

(assert (=> b!6574468 (= e!3979254 (matchZipper!2463 (derivationStepZipper!2417 z!1189 (head!13354 s!2326)) (tail!12439 s!2326)))))

(assert (= (and d!2062375 c!1208920) b!6574467))

(assert (= (and d!2062375 (not c!1208920)) b!6574468))

(assert (=> d!2062375 m!7355270))

(declare-fun m!7355438 () Bool)

(assert (=> b!6574467 m!7355438))

(assert (=> b!6574468 m!7355280))

(assert (=> b!6574468 m!7355280))

(declare-fun m!7355440 () Bool)

(assert (=> b!6574468 m!7355440))

(assert (=> b!6574468 m!7355282))

(assert (=> b!6574468 m!7355440))

(assert (=> b!6574468 m!7355282))

(declare-fun m!7355442 () Bool)

(assert (=> b!6574468 m!7355442))

(assert (=> b!6573672 d!2062375))

(declare-fun bm!572302 () Bool)

(declare-fun call!572307 () Bool)

(declare-fun call!572309 () Bool)

(assert (=> bm!572302 (= call!572307 call!572309)))

(declare-fun b!6574474 () Bool)

(declare-fun res!2697953 () Bool)

(declare-fun e!3979260 () Bool)

(assert (=> b!6574474 (=> (not res!2697953) (not e!3979260))))

(declare-fun call!572308 () Bool)

(assert (=> b!6574474 (= res!2697953 call!572308)))

(declare-fun e!3979258 () Bool)

(assert (=> b!6574474 (= e!3979258 e!3979260)))

(declare-fun b!6574475 () Bool)

(declare-fun e!3979259 () Bool)

(assert (=> b!6574475 (= e!3979259 e!3979258)))

(declare-fun c!1208923 () Bool)

(assert (=> b!6574475 (= c!1208923 ((_ is Union!16451) r!7292))))

(declare-fun b!6574476 () Bool)

(assert (=> b!6574476 (= e!3979260 call!572307)))

(declare-fun d!2062379 () Bool)

(declare-fun res!2697955 () Bool)

(declare-fun e!3979261 () Bool)

(assert (=> d!2062379 (=> res!2697955 e!3979261)))

(assert (=> d!2062379 (= res!2697955 ((_ is ElementMatch!16451) r!7292))))

(assert (=> d!2062379 (= (validRegex!8187 r!7292) e!3979261)))

(declare-fun b!6574477 () Bool)

(declare-fun e!3979263 () Bool)

(declare-fun e!3979262 () Bool)

(assert (=> b!6574477 (= e!3979263 e!3979262)))

(declare-fun res!2697952 () Bool)

(assert (=> b!6574477 (=> (not res!2697952) (not e!3979262))))

(assert (=> b!6574477 (= res!2697952 call!572308)))

(declare-fun b!6574478 () Bool)

(assert (=> b!6574478 (= e!3979261 e!3979259)))

(declare-fun c!1208924 () Bool)

(assert (=> b!6574478 (= c!1208924 ((_ is Star!16451) r!7292))))

(declare-fun bm!572303 () Bool)

(assert (=> bm!572303 (= call!572309 (validRegex!8187 (ite c!1208924 (reg!16780 r!7292) (ite c!1208923 (regTwo!33415 r!7292) (regTwo!33414 r!7292)))))))

(declare-fun bm!572304 () Bool)

(assert (=> bm!572304 (= call!572308 (validRegex!8187 (ite c!1208923 (regOne!33415 r!7292) (regOne!33414 r!7292))))))

(declare-fun b!6574479 () Bool)

(declare-fun e!3979264 () Bool)

(assert (=> b!6574479 (= e!3979259 e!3979264)))

(declare-fun res!2697954 () Bool)

(assert (=> b!6574479 (= res!2697954 (not (nullable!6444 (reg!16780 r!7292))))))

(assert (=> b!6574479 (=> (not res!2697954) (not e!3979264))))

(declare-fun b!6574480 () Bool)

(assert (=> b!6574480 (= e!3979262 call!572307)))

(declare-fun b!6574481 () Bool)

(assert (=> b!6574481 (= e!3979264 call!572309)))

(declare-fun b!6574482 () Bool)

(declare-fun res!2697956 () Bool)

(assert (=> b!6574482 (=> res!2697956 e!3979263)))

(assert (=> b!6574482 (= res!2697956 (not ((_ is Concat!25296) r!7292)))))

(assert (=> b!6574482 (= e!3979258 e!3979263)))

(assert (= (and d!2062379 (not res!2697955)) b!6574478))

(assert (= (and b!6574478 c!1208924) b!6574479))

(assert (= (and b!6574478 (not c!1208924)) b!6574475))

(assert (= (and b!6574479 res!2697954) b!6574481))

(assert (= (and b!6574475 c!1208923) b!6574474))

(assert (= (and b!6574475 (not c!1208923)) b!6574482))

(assert (= (and b!6574474 res!2697953) b!6574476))

(assert (= (and b!6574482 (not res!2697956)) b!6574477))

(assert (= (and b!6574477 res!2697952) b!6574480))

(assert (= (or b!6574476 b!6574480) bm!572302))

(assert (= (or b!6574474 b!6574477) bm!572304))

(assert (= (or b!6574481 bm!572302) bm!572303))

(declare-fun m!7355450 () Bool)

(assert (=> bm!572303 m!7355450))

(declare-fun m!7355452 () Bool)

(assert (=> bm!572304 m!7355452))

(declare-fun m!7355454 () Bool)

(assert (=> b!6574479 m!7355454))

(assert (=> start!644062 d!2062379))

(assert (=> b!6573653 d!2062369))

(declare-fun d!2062385 () Bool)

(assert (=> d!2062385 (= (flatMap!1956 lt!2409336 lambda!366169) (dynLambda!26070 lambda!366169 lt!2409343))))

(declare-fun lt!2409467 () Unit!159139)

(assert (=> d!2062385 (= lt!2409467 (choose!49113 lt!2409336 lt!2409343 lambda!366169))))

(assert (=> d!2062385 (= lt!2409336 (store ((as const (Array Context!11670 Bool)) false) lt!2409343 true))))

(assert (=> d!2062385 (= (lemmaFlatMapOnSingletonSet!1482 lt!2409336 lt!2409343 lambda!366169) lt!2409467)))

(declare-fun b_lambda!248619 () Bool)

(assert (=> (not b_lambda!248619) (not d!2062385)))

(declare-fun bs!1679021 () Bool)

(assert (= bs!1679021 d!2062385))

(assert (=> bs!1679021 m!7354846))

(declare-fun m!7355458 () Bool)

(assert (=> bs!1679021 m!7355458))

(declare-fun m!7355460 () Bool)

(assert (=> bs!1679021 m!7355460))

(assert (=> bs!1679021 m!7354850))

(assert (=> b!6573650 d!2062385))

(declare-fun bm!572308 () Bool)

(declare-fun call!572313 () (InoxSet Context!11670))

(assert (=> bm!572308 (= call!572313 (derivationStepZipperDown!1699 (h!71976 (exprs!6335 lt!2409346)) (Context!11671 (t!379298 (exprs!6335 lt!2409346))) (h!71978 s!2326)))))

(declare-fun b!6574492 () Bool)

(declare-fun e!3979273 () (InoxSet Context!11670))

(assert (=> b!6574492 (= e!3979273 ((as const (Array Context!11670 Bool)) false))))

(declare-fun d!2062389 () Bool)

(declare-fun c!1208928 () Bool)

(declare-fun e!3979272 () Bool)

(assert (=> d!2062389 (= c!1208928 e!3979272)))

(declare-fun res!2697962 () Bool)

(assert (=> d!2062389 (=> (not res!2697962) (not e!3979272))))

(assert (=> d!2062389 (= res!2697962 ((_ is Cons!65528) (exprs!6335 lt!2409346)))))

(declare-fun e!3979274 () (InoxSet Context!11670))

(assert (=> d!2062389 (= (derivationStepZipperUp!1625 lt!2409346 (h!71978 s!2326)) e!3979274)))

(declare-fun b!6574493 () Bool)

(assert (=> b!6574493 (= e!3979272 (nullable!6444 (h!71976 (exprs!6335 lt!2409346))))))

(declare-fun b!6574494 () Bool)

(assert (=> b!6574494 (= e!3979273 call!572313)))

(declare-fun b!6574495 () Bool)

(assert (=> b!6574495 (= e!3979274 e!3979273)))

(declare-fun c!1208927 () Bool)

(assert (=> b!6574495 (= c!1208927 ((_ is Cons!65528) (exprs!6335 lt!2409346)))))

(declare-fun b!6574496 () Bool)

(assert (=> b!6574496 (= e!3979274 ((_ map or) call!572313 (derivationStepZipperUp!1625 (Context!11671 (t!379298 (exprs!6335 lt!2409346))) (h!71978 s!2326))))))

(assert (= (and d!2062389 res!2697962) b!6574493))

(assert (= (and d!2062389 c!1208928) b!6574496))

(assert (= (and d!2062389 (not c!1208928)) b!6574495))

(assert (= (and b!6574495 c!1208927) b!6574494))

(assert (= (and b!6574495 (not c!1208927)) b!6574492))

(assert (= (or b!6574496 b!6574494) bm!572308))

(declare-fun m!7355464 () Bool)

(assert (=> bm!572308 m!7355464))

(declare-fun m!7355468 () Bool)

(assert (=> b!6574493 m!7355468))

(declare-fun m!7355472 () Bool)

(assert (=> b!6574496 m!7355472))

(assert (=> b!6573650 d!2062389))

(declare-fun d!2062391 () Bool)

(assert (=> d!2062391 (= (flatMap!1956 lt!2409336 lambda!366169) (choose!49114 lt!2409336 lambda!366169))))

(declare-fun bs!1679022 () Bool)

(assert (= bs!1679022 d!2062391))

(declare-fun m!7355474 () Bool)

(assert (=> bs!1679022 m!7355474))

(assert (=> b!6573650 d!2062391))

(declare-fun d!2062395 () Bool)

(assert (=> d!2062395 (= (flatMap!1956 lt!2409358 lambda!366169) (dynLambda!26070 lambda!366169 lt!2409346))))

(declare-fun lt!2409469 () Unit!159139)

(assert (=> d!2062395 (= lt!2409469 (choose!49113 lt!2409358 lt!2409346 lambda!366169))))

(assert (=> d!2062395 (= lt!2409358 (store ((as const (Array Context!11670 Bool)) false) lt!2409346 true))))

(assert (=> d!2062395 (= (lemmaFlatMapOnSingletonSet!1482 lt!2409358 lt!2409346 lambda!366169) lt!2409469)))

(declare-fun b_lambda!248621 () Bool)

(assert (=> (not b_lambda!248621) (not d!2062395)))

(declare-fun bs!1679024 () Bool)

(assert (= bs!1679024 d!2062395))

(assert (=> bs!1679024 m!7354842))

(declare-fun m!7355482 () Bool)

(assert (=> bs!1679024 m!7355482))

(declare-fun m!7355484 () Bool)

(assert (=> bs!1679024 m!7355484))

(assert (=> bs!1679024 m!7354836))

(assert (=> b!6573650 d!2062395))

(declare-fun bm!572309 () Bool)

(declare-fun call!572314 () (InoxSet Context!11670))

(assert (=> bm!572309 (= call!572314 (derivationStepZipperDown!1699 (h!71976 (exprs!6335 lt!2409343)) (Context!11671 (t!379298 (exprs!6335 lt!2409343))) (h!71978 s!2326)))))

(declare-fun b!6574497 () Bool)

(declare-fun e!3979276 () (InoxSet Context!11670))

(assert (=> b!6574497 (= e!3979276 ((as const (Array Context!11670 Bool)) false))))

(declare-fun d!2062399 () Bool)

(declare-fun c!1208930 () Bool)

(declare-fun e!3979275 () Bool)

(assert (=> d!2062399 (= c!1208930 e!3979275)))

(declare-fun res!2697963 () Bool)

(assert (=> d!2062399 (=> (not res!2697963) (not e!3979275))))

(assert (=> d!2062399 (= res!2697963 ((_ is Cons!65528) (exprs!6335 lt!2409343)))))

(declare-fun e!3979277 () (InoxSet Context!11670))

(assert (=> d!2062399 (= (derivationStepZipperUp!1625 lt!2409343 (h!71978 s!2326)) e!3979277)))

(declare-fun b!6574498 () Bool)

(assert (=> b!6574498 (= e!3979275 (nullable!6444 (h!71976 (exprs!6335 lt!2409343))))))

(declare-fun b!6574499 () Bool)

(assert (=> b!6574499 (= e!3979276 call!572314)))

(declare-fun b!6574500 () Bool)

(assert (=> b!6574500 (= e!3979277 e!3979276)))

(declare-fun c!1208929 () Bool)

(assert (=> b!6574500 (= c!1208929 ((_ is Cons!65528) (exprs!6335 lt!2409343)))))

(declare-fun b!6574501 () Bool)

(assert (=> b!6574501 (= e!3979277 ((_ map or) call!572314 (derivationStepZipperUp!1625 (Context!11671 (t!379298 (exprs!6335 lt!2409343))) (h!71978 s!2326))))))

(assert (= (and d!2062399 res!2697963) b!6574498))

(assert (= (and d!2062399 c!1208930) b!6574501))

(assert (= (and d!2062399 (not c!1208930)) b!6574500))

(assert (= (and b!6574500 c!1208929) b!6574499))

(assert (= (and b!6574500 (not c!1208929)) b!6574497))

(assert (= (or b!6574501 b!6574499) bm!572309))

(declare-fun m!7355494 () Bool)

(assert (=> bm!572309 m!7355494))

(declare-fun m!7355496 () Bool)

(assert (=> b!6574498 m!7355496))

(declare-fun m!7355498 () Bool)

(assert (=> b!6574501 m!7355498))

(assert (=> b!6573650 d!2062399))

(declare-fun d!2062407 () Bool)

(assert (=> d!2062407 (= (flatMap!1956 lt!2409358 lambda!366169) (choose!49114 lt!2409358 lambda!366169))))

(declare-fun bs!1679028 () Bool)

(assert (= bs!1679028 d!2062407))

(declare-fun m!7355500 () Bool)

(assert (=> bs!1679028 m!7355500))

(assert (=> b!6573650 d!2062407))

(declare-fun d!2062409 () Bool)

(declare-fun lt!2409471 () Regex!16451)

(assert (=> d!2062409 (validRegex!8187 lt!2409471)))

(assert (=> d!2062409 (= lt!2409471 (generalisedUnion!2295 (unfocusZipperList!1872 (Cons!65529 lt!2409343 Nil!65529))))))

(assert (=> d!2062409 (= (unfocusZipper!2193 (Cons!65529 lt!2409343 Nil!65529)) lt!2409471)))

(declare-fun bs!1679029 () Bool)

(assert (= bs!1679029 d!2062409))

(declare-fun m!7355508 () Bool)

(assert (=> bs!1679029 m!7355508))

(declare-fun m!7355510 () Bool)

(assert (=> bs!1679029 m!7355510))

(assert (=> bs!1679029 m!7355510))

(declare-fun m!7355512 () Bool)

(assert (=> bs!1679029 m!7355512))

(assert (=> b!6573650 d!2062409))

(declare-fun b!6574572 () Bool)

(assert (=> b!6574572 true))

(declare-fun bs!1679041 () Bool)

(declare-fun b!6574574 () Bool)

(assert (= bs!1679041 (and b!6574574 b!6574572)))

(declare-fun lt!2409485 () Int)

(declare-fun lambda!366248 () Int)

(declare-fun lambda!366249 () Int)

(declare-fun lt!2409483 () Int)

(assert (=> bs!1679041 (= (= lt!2409485 lt!2409483) (= lambda!366249 lambda!366248))))

(assert (=> b!6574574 true))

(declare-fun d!2062413 () Bool)

(declare-fun e!3979312 () Bool)

(assert (=> d!2062413 e!3979312))

(declare-fun res!2697968 () Bool)

(assert (=> d!2062413 (=> (not res!2697968) (not e!3979312))))

(assert (=> d!2062413 (= res!2697968 (>= lt!2409485 0))))

(declare-fun e!3979311 () Int)

(assert (=> d!2062413 (= lt!2409485 e!3979311)))

(declare-fun c!1208943 () Bool)

(assert (=> d!2062413 (= c!1208943 ((_ is Cons!65529) zl!343))))

(assert (=> d!2062413 (= (zipperDepth!388 zl!343) lt!2409485)))

(assert (=> b!6574572 (= e!3979311 lt!2409483)))

(declare-fun contextDepth!277 (Context!11670) Int)

(assert (=> b!6574572 (= lt!2409483 (maxBigInt!0 (contextDepth!277 (h!71977 zl!343)) (zipperDepth!388 (t!379299 zl!343))))))

(declare-fun lt!2409482 () Unit!159139)

(declare-fun lambda!366247 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!261 (List!65653 Int Int Int) Unit!159139)

(assert (=> b!6574572 (= lt!2409482 (lemmaForallContextDepthBiggerThanTransitive!261 (t!379299 zl!343) lt!2409483 (zipperDepth!388 (t!379299 zl!343)) lambda!366247))))

(declare-fun forall!15627 (List!65653 Int) Bool)

(assert (=> b!6574572 (forall!15627 (t!379299 zl!343) lambda!366248)))

(declare-fun lt!2409484 () Unit!159139)

(assert (=> b!6574572 (= lt!2409484 lt!2409482)))

(declare-fun b!6574573 () Bool)

(assert (=> b!6574573 (= e!3979311 0)))

(assert (=> b!6574574 (= e!3979312 (forall!15627 zl!343 lambda!366249))))

(assert (= (and d!2062413 c!1208943) b!6574572))

(assert (= (and d!2062413 (not c!1208943)) b!6574573))

(assert (= (and d!2062413 res!2697968) b!6574574))

(declare-fun m!7355536 () Bool)

(assert (=> b!6574572 m!7355536))

(declare-fun m!7355538 () Bool)

(assert (=> b!6574572 m!7355538))

(declare-fun m!7355540 () Bool)

(assert (=> b!6574572 m!7355540))

(declare-fun m!7355542 () Bool)

(assert (=> b!6574572 m!7355542))

(assert (=> b!6574572 m!7355540))

(assert (=> b!6574572 m!7355538))

(assert (=> b!6574572 m!7355540))

(declare-fun m!7355544 () Bool)

(assert (=> b!6574572 m!7355544))

(declare-fun m!7355546 () Bool)

(assert (=> b!6574574 m!7355546))

(assert (=> b!6573649 d!2062413))

(declare-fun bs!1679042 () Bool)

(declare-fun b!6574577 () Bool)

(assert (= bs!1679042 (and b!6574577 b!6574572)))

(declare-fun lambda!366250 () Int)

(assert (=> bs!1679042 (= lambda!366250 lambda!366247)))

(declare-fun lt!2409487 () Int)

(declare-fun lambda!366251 () Int)

(assert (=> bs!1679042 (= (= lt!2409487 lt!2409483) (= lambda!366251 lambda!366248))))

(declare-fun bs!1679043 () Bool)

(assert (= bs!1679043 (and b!6574577 b!6574574)))

(assert (=> bs!1679043 (= (= lt!2409487 lt!2409485) (= lambda!366251 lambda!366249))))

(assert (=> b!6574577 true))

(declare-fun bs!1679044 () Bool)

(declare-fun b!6574579 () Bool)

(assert (= bs!1679044 (and b!6574579 b!6574572)))

(declare-fun lt!2409489 () Int)

(declare-fun lambda!366252 () Int)

(assert (=> bs!1679044 (= (= lt!2409489 lt!2409483) (= lambda!366252 lambda!366248))))

(declare-fun bs!1679045 () Bool)

(assert (= bs!1679045 (and b!6574579 b!6574574)))

(assert (=> bs!1679045 (= (= lt!2409489 lt!2409485) (= lambda!366252 lambda!366249))))

(declare-fun bs!1679046 () Bool)

(assert (= bs!1679046 (and b!6574579 b!6574577)))

(assert (=> bs!1679046 (= (= lt!2409489 lt!2409487) (= lambda!366252 lambda!366251))))

(assert (=> b!6574579 true))

(declare-fun d!2062433 () Bool)

(declare-fun e!3979314 () Bool)

(assert (=> d!2062433 e!3979314))

(declare-fun res!2697969 () Bool)

(assert (=> d!2062433 (=> (not res!2697969) (not e!3979314))))

(assert (=> d!2062433 (= res!2697969 (>= lt!2409489 0))))

(declare-fun e!3979313 () Int)

(assert (=> d!2062433 (= lt!2409489 e!3979313)))

(declare-fun c!1208944 () Bool)

(assert (=> d!2062433 (= c!1208944 ((_ is Cons!65529) (Cons!65529 lt!2409349 Nil!65529)))))

(assert (=> d!2062433 (= (zipperDepth!388 (Cons!65529 lt!2409349 Nil!65529)) lt!2409489)))

(assert (=> b!6574577 (= e!3979313 lt!2409487)))

(assert (=> b!6574577 (= lt!2409487 (maxBigInt!0 (contextDepth!277 (h!71977 (Cons!65529 lt!2409349 Nil!65529))) (zipperDepth!388 (t!379299 (Cons!65529 lt!2409349 Nil!65529)))))))

(declare-fun lt!2409486 () Unit!159139)

(assert (=> b!6574577 (= lt!2409486 (lemmaForallContextDepthBiggerThanTransitive!261 (t!379299 (Cons!65529 lt!2409349 Nil!65529)) lt!2409487 (zipperDepth!388 (t!379299 (Cons!65529 lt!2409349 Nil!65529))) lambda!366250))))

(assert (=> b!6574577 (forall!15627 (t!379299 (Cons!65529 lt!2409349 Nil!65529)) lambda!366251)))

(declare-fun lt!2409488 () Unit!159139)

(assert (=> b!6574577 (= lt!2409488 lt!2409486)))

(declare-fun b!6574578 () Bool)

(assert (=> b!6574578 (= e!3979313 0)))

(assert (=> b!6574579 (= e!3979314 (forall!15627 (Cons!65529 lt!2409349 Nil!65529) lambda!366252))))

(assert (= (and d!2062433 c!1208944) b!6574577))

(assert (= (and d!2062433 (not c!1208944)) b!6574578))

(assert (= (and d!2062433 res!2697969) b!6574579))

(declare-fun m!7355548 () Bool)

(assert (=> b!6574577 m!7355548))

(declare-fun m!7355550 () Bool)

(assert (=> b!6574577 m!7355550))

(declare-fun m!7355552 () Bool)

(assert (=> b!6574577 m!7355552))

(declare-fun m!7355554 () Bool)

(assert (=> b!6574577 m!7355554))

(assert (=> b!6574577 m!7355552))

(assert (=> b!6574577 m!7355550))

(assert (=> b!6574577 m!7355552))

(declare-fun m!7355556 () Bool)

(assert (=> b!6574577 m!7355556))

(declare-fun m!7355558 () Bool)

(assert (=> b!6574579 m!7355558))

(assert (=> b!6573649 d!2062433))

(declare-fun b!6574580 () Bool)

(declare-fun e!3979315 () (InoxSet Context!11670))

(assert (=> b!6574580 (= e!3979315 (store ((as const (Array Context!11670 Bool)) false) lt!2409346 true))))

(declare-fun bm!572312 () Bool)

(declare-fun call!572317 () (InoxSet Context!11670))

(declare-fun call!572318 () (InoxSet Context!11670))

(assert (=> bm!572312 (= call!572317 call!572318)))

(declare-fun bm!572313 () Bool)

(declare-fun c!1208946 () Bool)

(declare-fun call!572322 () List!65652)

(declare-fun call!572319 () (InoxSet Context!11670))

(declare-fun c!1208947 () Bool)

(declare-fun c!1208945 () Bool)

(assert (=> bm!572313 (= call!572319 (derivationStepZipperDown!1699 (ite c!1208947 (regTwo!33415 (reg!16780 (regOne!33414 r!7292))) (ite c!1208945 (regTwo!33414 (reg!16780 (regOne!33414 r!7292))) (ite c!1208946 (regOne!33414 (reg!16780 (regOne!33414 r!7292))) (reg!16780 (reg!16780 (regOne!33414 r!7292)))))) (ite (or c!1208947 c!1208945) lt!2409346 (Context!11671 call!572322)) (h!71978 s!2326)))))

(declare-fun b!6574581 () Bool)

(declare-fun e!3979319 () (InoxSet Context!11670))

(assert (=> b!6574581 (= e!3979319 call!572317)))

(declare-fun b!6574582 () Bool)

(declare-fun e!3979320 () (InoxSet Context!11670))

(declare-fun call!572320 () (InoxSet Context!11670))

(assert (=> b!6574582 (= e!3979320 ((_ map or) call!572320 call!572318))))

(declare-fun b!6574583 () Bool)

(declare-fun e!3979316 () (InoxSet Context!11670))

(assert (=> b!6574583 (= e!3979315 e!3979316)))

(assert (=> b!6574583 (= c!1208947 ((_ is Union!16451) (reg!16780 (regOne!33414 r!7292))))))

(declare-fun d!2062435 () Bool)

(declare-fun c!1208948 () Bool)

(assert (=> d!2062435 (= c!1208948 (and ((_ is ElementMatch!16451) (reg!16780 (regOne!33414 r!7292))) (= (c!1208648 (reg!16780 (regOne!33414 r!7292))) (h!71978 s!2326))))))

(assert (=> d!2062435 (= (derivationStepZipperDown!1699 (reg!16780 (regOne!33414 r!7292)) lt!2409346 (h!71978 s!2326)) e!3979315)))

(declare-fun bm!572314 () Bool)

(assert (=> bm!572314 (= call!572318 call!572319)))

(declare-fun call!572321 () List!65652)

(declare-fun bm!572315 () Bool)

(assert (=> bm!572315 (= call!572320 (derivationStepZipperDown!1699 (ite c!1208947 (regOne!33415 (reg!16780 (regOne!33414 r!7292))) (regOne!33414 (reg!16780 (regOne!33414 r!7292)))) (ite c!1208947 lt!2409346 (Context!11671 call!572321)) (h!71978 s!2326)))))

(declare-fun b!6574584 () Bool)

(declare-fun e!3979317 () (InoxSet Context!11670))

(assert (=> b!6574584 (= e!3979317 ((as const (Array Context!11670 Bool)) false))))

(declare-fun b!6574585 () Bool)

(declare-fun c!1208949 () Bool)

(assert (=> b!6574585 (= c!1208949 ((_ is Star!16451) (reg!16780 (regOne!33414 r!7292))))))

(assert (=> b!6574585 (= e!3979319 e!3979317)))

(declare-fun b!6574586 () Bool)

(declare-fun e!3979318 () Bool)

(assert (=> b!6574586 (= c!1208945 e!3979318)))

(declare-fun res!2697970 () Bool)

(assert (=> b!6574586 (=> (not res!2697970) (not e!3979318))))

(assert (=> b!6574586 (= res!2697970 ((_ is Concat!25296) (reg!16780 (regOne!33414 r!7292))))))

(assert (=> b!6574586 (= e!3979316 e!3979320)))

(declare-fun b!6574587 () Bool)

(assert (=> b!6574587 (= e!3979316 ((_ map or) call!572320 call!572319))))

(declare-fun bm!572316 () Bool)

(assert (=> bm!572316 (= call!572321 ($colon$colon!2291 (exprs!6335 lt!2409346) (ite (or c!1208945 c!1208946) (regTwo!33414 (reg!16780 (regOne!33414 r!7292))) (reg!16780 (regOne!33414 r!7292)))))))

(declare-fun b!6574588 () Bool)

(assert (=> b!6574588 (= e!3979320 e!3979319)))

(assert (=> b!6574588 (= c!1208946 ((_ is Concat!25296) (reg!16780 (regOne!33414 r!7292))))))

(declare-fun b!6574589 () Bool)

(assert (=> b!6574589 (= e!3979317 call!572317)))

(declare-fun b!6574590 () Bool)

(assert (=> b!6574590 (= e!3979318 (nullable!6444 (regOne!33414 (reg!16780 (regOne!33414 r!7292)))))))

(declare-fun bm!572317 () Bool)

(assert (=> bm!572317 (= call!572322 call!572321)))

(assert (= (and d!2062435 c!1208948) b!6574580))

(assert (= (and d!2062435 (not c!1208948)) b!6574583))

(assert (= (and b!6574583 c!1208947) b!6574587))

(assert (= (and b!6574583 (not c!1208947)) b!6574586))

(assert (= (and b!6574586 res!2697970) b!6574590))

(assert (= (and b!6574586 c!1208945) b!6574582))

(assert (= (and b!6574586 (not c!1208945)) b!6574588))

(assert (= (and b!6574588 c!1208946) b!6574581))

(assert (= (and b!6574588 (not c!1208946)) b!6574585))

(assert (= (and b!6574585 c!1208949) b!6574589))

(assert (= (and b!6574585 (not c!1208949)) b!6574584))

(assert (= (or b!6574581 b!6574589) bm!572317))

(assert (= (or b!6574581 b!6574589) bm!572312))

(assert (= (or b!6574582 bm!572317) bm!572316))

(assert (= (or b!6574582 bm!572312) bm!572314))

(assert (= (or b!6574587 bm!572314) bm!572313))

(assert (= (or b!6574587 b!6574582) bm!572315))

(assert (=> b!6574580 m!7354836))

(declare-fun m!7355560 () Bool)

(assert (=> bm!572315 m!7355560))

(declare-fun m!7355562 () Bool)

(assert (=> bm!572316 m!7355562))

(declare-fun m!7355564 () Bool)

(assert (=> bm!572313 m!7355564))

(declare-fun m!7355566 () Bool)

(assert (=> b!6574590 m!7355566))

(assert (=> b!6573690 d!2062435))

(declare-fun b!6574591 () Bool)

(declare-fun e!3979322 () Bool)

(declare-fun lt!2409490 () Bool)

(assert (=> b!6574591 (= e!3979322 (not lt!2409490))))

(declare-fun b!6574592 () Bool)

(declare-fun e!3979325 () Bool)

(assert (=> b!6574592 (= e!3979325 (matchR!8634 (derivativeStep!5134 lt!2409356 (head!13354 s!2326)) (tail!12439 s!2326)))))

(declare-fun b!6574593 () Bool)

(declare-fun res!2697977 () Bool)

(declare-fun e!3979321 () Bool)

(assert (=> b!6574593 (=> res!2697977 e!3979321)))

(declare-fun e!3979326 () Bool)

(assert (=> b!6574593 (= res!2697977 e!3979326)))

(declare-fun res!2697975 () Bool)

(assert (=> b!6574593 (=> (not res!2697975) (not e!3979326))))

(assert (=> b!6574593 (= res!2697975 lt!2409490)))

(declare-fun b!6574594 () Bool)

(declare-fun e!3979323 () Bool)

(declare-fun e!3979327 () Bool)

(assert (=> b!6574594 (= e!3979323 e!3979327)))

(declare-fun res!2697973 () Bool)

(assert (=> b!6574594 (=> res!2697973 e!3979327)))

(declare-fun call!572323 () Bool)

(assert (=> b!6574594 (= res!2697973 call!572323)))

(declare-fun b!6574595 () Bool)

(assert (=> b!6574595 (= e!3979325 (nullable!6444 lt!2409356))))

(declare-fun b!6574596 () Bool)

(declare-fun res!2697971 () Bool)

(assert (=> b!6574596 (=> res!2697971 e!3979327)))

(assert (=> b!6574596 (= res!2697971 (not (isEmpty!37785 (tail!12439 s!2326))))))

(declare-fun b!6574597 () Bool)

(assert (=> b!6574597 (= e!3979321 e!3979323)))

(declare-fun res!2697978 () Bool)

(assert (=> b!6574597 (=> (not res!2697978) (not e!3979323))))

(assert (=> b!6574597 (= res!2697978 (not lt!2409490))))

(declare-fun b!6574599 () Bool)

(assert (=> b!6574599 (= e!3979326 (= (head!13354 s!2326) (c!1208648 lt!2409356)))))

(declare-fun b!6574600 () Bool)

(declare-fun e!3979324 () Bool)

(assert (=> b!6574600 (= e!3979324 e!3979322)))

(declare-fun c!1208952 () Bool)

(assert (=> b!6574600 (= c!1208952 ((_ is EmptyLang!16451) lt!2409356))))

(declare-fun b!6574601 () Bool)

(declare-fun res!2697974 () Bool)

(assert (=> b!6574601 (=> (not res!2697974) (not e!3979326))))

(assert (=> b!6574601 (= res!2697974 (not call!572323))))

(declare-fun b!6574602 () Bool)

(assert (=> b!6574602 (= e!3979327 (not (= (head!13354 s!2326) (c!1208648 lt!2409356))))))

(declare-fun bm!572318 () Bool)

(assert (=> bm!572318 (= call!572323 (isEmpty!37785 s!2326))))

(declare-fun b!6574598 () Bool)

(declare-fun res!2697972 () Bool)

(assert (=> b!6574598 (=> (not res!2697972) (not e!3979326))))

(assert (=> b!6574598 (= res!2697972 (isEmpty!37785 (tail!12439 s!2326)))))

(declare-fun d!2062437 () Bool)

(assert (=> d!2062437 e!3979324))

(declare-fun c!1208951 () Bool)

(assert (=> d!2062437 (= c!1208951 ((_ is EmptyExpr!16451) lt!2409356))))

(assert (=> d!2062437 (= lt!2409490 e!3979325)))

(declare-fun c!1208950 () Bool)

(assert (=> d!2062437 (= c!1208950 (isEmpty!37785 s!2326))))

(assert (=> d!2062437 (validRegex!8187 lt!2409356)))

(assert (=> d!2062437 (= (matchR!8634 lt!2409356 s!2326) lt!2409490)))

(declare-fun b!6574603 () Bool)

(declare-fun res!2697976 () Bool)

(assert (=> b!6574603 (=> res!2697976 e!3979321)))

(assert (=> b!6574603 (= res!2697976 (not ((_ is ElementMatch!16451) lt!2409356)))))

(assert (=> b!6574603 (= e!3979322 e!3979321)))

(declare-fun b!6574604 () Bool)

(assert (=> b!6574604 (= e!3979324 (= lt!2409490 call!572323))))

(assert (= (and d!2062437 c!1208950) b!6574595))

(assert (= (and d!2062437 (not c!1208950)) b!6574592))

(assert (= (and d!2062437 c!1208951) b!6574604))

(assert (= (and d!2062437 (not c!1208951)) b!6574600))

(assert (= (and b!6574600 c!1208952) b!6574591))

(assert (= (and b!6574600 (not c!1208952)) b!6574603))

(assert (= (and b!6574603 (not res!2697976)) b!6574593))

(assert (= (and b!6574593 res!2697975) b!6574601))

(assert (= (and b!6574601 res!2697974) b!6574598))

(assert (= (and b!6574598 res!2697972) b!6574599))

(assert (= (and b!6574593 (not res!2697977)) b!6574597))

(assert (= (and b!6574597 res!2697978) b!6574594))

(assert (= (and b!6574594 (not res!2697973)) b!6574596))

(assert (= (and b!6574596 (not res!2697971)) b!6574602))

(assert (= (or b!6574604 b!6574594 b!6574601) bm!572318))

(assert (=> b!6574599 m!7355280))

(assert (=> bm!572318 m!7355270))

(assert (=> b!6574602 m!7355280))

(assert (=> b!6574598 m!7355282))

(assert (=> b!6574598 m!7355282))

(assert (=> b!6574598 m!7355284))

(assert (=> d!2062437 m!7355270))

(declare-fun m!7355568 () Bool)

(assert (=> d!2062437 m!7355568))

(assert (=> b!6574592 m!7355280))

(assert (=> b!6574592 m!7355280))

(declare-fun m!7355570 () Bool)

(assert (=> b!6574592 m!7355570))

(assert (=> b!6574592 m!7355282))

(assert (=> b!6574592 m!7355570))

(assert (=> b!6574592 m!7355282))

(declare-fun m!7355572 () Bool)

(assert (=> b!6574592 m!7355572))

(assert (=> b!6574596 m!7355282))

(assert (=> b!6574596 m!7355282))

(assert (=> b!6574596 m!7355284))

(declare-fun m!7355574 () Bool)

(assert (=> b!6574595 m!7355574))

(assert (=> b!6573651 d!2062437))

(declare-fun bs!1679047 () Bool)

(declare-fun b!6574610 () Bool)

(assert (= bs!1679047 (and b!6574610 b!6573692)))

(declare-fun lambda!366253 () Int)

(assert (=> bs!1679047 (not (= lambda!366253 lambda!366167))))

(assert (=> bs!1679047 (not (= lambda!366253 lambda!366168))))

(declare-fun bs!1679048 () Bool)

(assert (= bs!1679048 (and b!6574610 b!6574161)))

(assert (=> bs!1679048 (= (and (= (reg!16780 lt!2409356) (reg!16780 r!7292)) (= lt!2409356 r!7292)) (= lambda!366253 lambda!366226))))

(declare-fun bs!1679049 () Bool)

(assert (= bs!1679049 (and b!6574610 b!6574163)))

(assert (=> bs!1679049 (not (= lambda!366253 lambda!366229))))

(assert (=> b!6574610 true))

(assert (=> b!6574610 true))

(declare-fun bs!1679050 () Bool)

(declare-fun b!6574612 () Bool)

(assert (= bs!1679050 (and b!6574612 b!6573692)))

(declare-fun lambda!366254 () Int)

(assert (=> bs!1679050 (not (= lambda!366254 lambda!366167))))

(declare-fun bs!1679051 () Bool)

(assert (= bs!1679051 (and b!6574612 b!6574163)))

(assert (=> bs!1679051 (= (and (= (regOne!33414 lt!2409356) (regOne!33414 r!7292)) (= (regTwo!33414 lt!2409356) (regTwo!33414 r!7292))) (= lambda!366254 lambda!366229))))

(declare-fun bs!1679052 () Bool)

(assert (= bs!1679052 (and b!6574612 b!6574161)))

(assert (=> bs!1679052 (not (= lambda!366254 lambda!366226))))

(assert (=> bs!1679050 (= (and (= (regOne!33414 lt!2409356) (regOne!33414 r!7292)) (= (regTwo!33414 lt!2409356) (regTwo!33414 r!7292))) (= lambda!366254 lambda!366168))))

(declare-fun bs!1679053 () Bool)

(assert (= bs!1679053 (and b!6574612 b!6574610)))

(assert (=> bs!1679053 (not (= lambda!366254 lambda!366253))))

(assert (=> b!6574612 true))

(assert (=> b!6574612 true))

(declare-fun b!6574605 () Bool)

(declare-fun e!3979329 () Bool)

(assert (=> b!6574605 (= e!3979329 (= s!2326 (Cons!65530 (c!1208648 lt!2409356) Nil!65530)))))

(declare-fun d!2062439 () Bool)

(declare-fun c!1208955 () Bool)

(assert (=> d!2062439 (= c!1208955 ((_ is EmptyExpr!16451) lt!2409356))))

(declare-fun e!3979334 () Bool)

(assert (=> d!2062439 (= (matchRSpec!3552 lt!2409356 s!2326) e!3979334)))

(declare-fun b!6574606 () Bool)

(declare-fun c!1208954 () Bool)

(assert (=> b!6574606 (= c!1208954 ((_ is Union!16451) lt!2409356))))

(declare-fun e!3979333 () Bool)

(assert (=> b!6574606 (= e!3979329 e!3979333)))

(declare-fun b!6574607 () Bool)

(declare-fun e!3979331 () Bool)

(assert (=> b!6574607 (= e!3979331 (matchRSpec!3552 (regTwo!33415 lt!2409356) s!2326))))

(declare-fun b!6574608 () Bool)

(declare-fun call!572325 () Bool)

(assert (=> b!6574608 (= e!3979334 call!572325)))

(declare-fun b!6574609 () Bool)

(declare-fun e!3979330 () Bool)

(assert (=> b!6574609 (= e!3979333 e!3979330)))

(declare-fun c!1208956 () Bool)

(assert (=> b!6574609 (= c!1208956 ((_ is Star!16451) lt!2409356))))

(declare-fun bm!572319 () Bool)

(declare-fun call!572324 () Bool)

(assert (=> bm!572319 (= call!572324 (Exists!3521 (ite c!1208956 lambda!366253 lambda!366254)))))

(declare-fun bm!572320 () Bool)

(assert (=> bm!572320 (= call!572325 (isEmpty!37785 s!2326))))

(declare-fun e!3979328 () Bool)

(assert (=> b!6574610 (= e!3979328 call!572324)))

(declare-fun b!6574611 () Bool)

(declare-fun c!1208953 () Bool)

(assert (=> b!6574611 (= c!1208953 ((_ is ElementMatch!16451) lt!2409356))))

(declare-fun e!3979332 () Bool)

(assert (=> b!6574611 (= e!3979332 e!3979329)))

(assert (=> b!6574612 (= e!3979330 call!572324)))

(declare-fun b!6574613 () Bool)

(assert (=> b!6574613 (= e!3979334 e!3979332)))

(declare-fun res!2697980 () Bool)

(assert (=> b!6574613 (= res!2697980 (not ((_ is EmptyLang!16451) lt!2409356)))))

(assert (=> b!6574613 (=> (not res!2697980) (not e!3979332))))

(declare-fun b!6574614 () Bool)

(assert (=> b!6574614 (= e!3979333 e!3979331)))

(declare-fun res!2697979 () Bool)

(assert (=> b!6574614 (= res!2697979 (matchRSpec!3552 (regOne!33415 lt!2409356) s!2326))))

(assert (=> b!6574614 (=> res!2697979 e!3979331)))

(declare-fun b!6574615 () Bool)

(declare-fun res!2697981 () Bool)

(assert (=> b!6574615 (=> res!2697981 e!3979328)))

(assert (=> b!6574615 (= res!2697981 call!572325)))

(assert (=> b!6574615 (= e!3979330 e!3979328)))

(assert (= (and d!2062439 c!1208955) b!6574608))

(assert (= (and d!2062439 (not c!1208955)) b!6574613))

(assert (= (and b!6574613 res!2697980) b!6574611))

(assert (= (and b!6574611 c!1208953) b!6574605))

(assert (= (and b!6574611 (not c!1208953)) b!6574606))

(assert (= (and b!6574606 c!1208954) b!6574614))

(assert (= (and b!6574606 (not c!1208954)) b!6574609))

(assert (= (and b!6574614 (not res!2697979)) b!6574607))

(assert (= (and b!6574609 c!1208956) b!6574615))

(assert (= (and b!6574609 (not c!1208956)) b!6574612))

(assert (= (and b!6574615 (not res!2697981)) b!6574610))

(assert (= (or b!6574610 b!6574612) bm!572319))

(assert (= (or b!6574608 b!6574615) bm!572320))

(declare-fun m!7355576 () Bool)

(assert (=> b!6574607 m!7355576))

(declare-fun m!7355578 () Bool)

(assert (=> bm!572319 m!7355578))

(assert (=> bm!572320 m!7355270))

(declare-fun m!7355580 () Bool)

(assert (=> b!6574614 m!7355580))

(assert (=> b!6573651 d!2062439))

(declare-fun d!2062441 () Bool)

(assert (=> d!2062441 (= (matchR!8634 lt!2409356 s!2326) (matchRSpec!3552 lt!2409356 s!2326))))

(declare-fun lt!2409491 () Unit!159139)

(assert (=> d!2062441 (= lt!2409491 (choose!49117 lt!2409356 s!2326))))

(assert (=> d!2062441 (validRegex!8187 lt!2409356)))

(assert (=> d!2062441 (= (mainMatchTheorem!3552 lt!2409356 s!2326) lt!2409491)))

(declare-fun bs!1679054 () Bool)

(assert (= bs!1679054 d!2062441))

(assert (=> bs!1679054 m!7354784))

(assert (=> bs!1679054 m!7354786))

(declare-fun m!7355582 () Bool)

(assert (=> bs!1679054 m!7355582))

(assert (=> bs!1679054 m!7355568))

(assert (=> b!6573651 d!2062441))

(declare-fun d!2062443 () Bool)

(declare-fun e!3979348 () Bool)

(assert (=> d!2062443 e!3979348))

(declare-fun res!2697993 () Bool)

(assert (=> d!2062443 (=> res!2697993 e!3979348)))

(declare-fun e!3979346 () Bool)

(assert (=> d!2062443 (= res!2697993 e!3979346)))

(declare-fun res!2697992 () Bool)

(assert (=> d!2062443 (=> (not res!2697992) (not e!3979346))))

(declare-fun lt!2409498 () Option!16342)

(assert (=> d!2062443 (= res!2697992 (isDefined!13045 lt!2409498))))

(declare-fun e!3979349 () Option!16342)

(assert (=> d!2062443 (= lt!2409498 e!3979349)))

(declare-fun c!1208962 () Bool)

(declare-fun e!3979345 () Bool)

(assert (=> d!2062443 (= c!1208962 e!3979345)))

(declare-fun res!2697995 () Bool)

(assert (=> d!2062443 (=> (not res!2697995) (not e!3979345))))

(assert (=> d!2062443 (= res!2697995 (matchR!8634 (regOne!33414 r!7292) Nil!65530))))

(assert (=> d!2062443 (validRegex!8187 (regOne!33414 r!7292))))

(assert (=> d!2062443 (= (findConcatSeparation!2756 (regOne!33414 r!7292) (regTwo!33414 r!7292) Nil!65530 s!2326 s!2326) lt!2409498)))

(declare-fun b!6574634 () Bool)

(declare-fun e!3979347 () Option!16342)

(assert (=> b!6574634 (= e!3979347 None!16341)))

(declare-fun b!6574635 () Bool)

(assert (=> b!6574635 (= e!3979348 (not (isDefined!13045 lt!2409498)))))

(declare-fun b!6574636 () Bool)

(declare-fun res!2697994 () Bool)

(assert (=> b!6574636 (=> (not res!2697994) (not e!3979346))))

(declare-fun get!22758 (Option!16342) tuple2!66860)

(assert (=> b!6574636 (= res!2697994 (matchR!8634 (regTwo!33414 r!7292) (_2!36733 (get!22758 lt!2409498))))))

(declare-fun b!6574637 () Bool)

(assert (=> b!6574637 (= e!3979345 (matchR!8634 (regTwo!33414 r!7292) s!2326))))

(declare-fun b!6574638 () Bool)

(declare-fun ++!14597 (List!65654 List!65654) List!65654)

(assert (=> b!6574638 (= e!3979346 (= (++!14597 (_1!36733 (get!22758 lt!2409498)) (_2!36733 (get!22758 lt!2409498))) s!2326))))

(declare-fun b!6574639 () Bool)

(declare-fun lt!2409500 () Unit!159139)

(declare-fun lt!2409499 () Unit!159139)

(assert (=> b!6574639 (= lt!2409500 lt!2409499)))

(assert (=> b!6574639 (= (++!14597 (++!14597 Nil!65530 (Cons!65530 (h!71978 s!2326) Nil!65530)) (t!379300 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2594 (List!65654 C!33172 List!65654 List!65654) Unit!159139)

(assert (=> b!6574639 (= lt!2409499 (lemmaMoveElementToOtherListKeepsConcatEq!2594 Nil!65530 (h!71978 s!2326) (t!379300 s!2326) s!2326))))

(assert (=> b!6574639 (= e!3979347 (findConcatSeparation!2756 (regOne!33414 r!7292) (regTwo!33414 r!7292) (++!14597 Nil!65530 (Cons!65530 (h!71978 s!2326) Nil!65530)) (t!379300 s!2326) s!2326))))

(declare-fun b!6574640 () Bool)

(declare-fun res!2697996 () Bool)

(assert (=> b!6574640 (=> (not res!2697996) (not e!3979346))))

(assert (=> b!6574640 (= res!2697996 (matchR!8634 (regOne!33414 r!7292) (_1!36733 (get!22758 lt!2409498))))))

(declare-fun b!6574641 () Bool)

(assert (=> b!6574641 (= e!3979349 (Some!16341 (tuple2!66861 Nil!65530 s!2326)))))

(declare-fun b!6574642 () Bool)

(assert (=> b!6574642 (= e!3979349 e!3979347)))

(declare-fun c!1208961 () Bool)

(assert (=> b!6574642 (= c!1208961 ((_ is Nil!65530) s!2326))))

(assert (= (and d!2062443 res!2697995) b!6574637))

(assert (= (and d!2062443 c!1208962) b!6574641))

(assert (= (and d!2062443 (not c!1208962)) b!6574642))

(assert (= (and b!6574642 c!1208961) b!6574634))

(assert (= (and b!6574642 (not c!1208961)) b!6574639))

(assert (= (and d!2062443 res!2697992) b!6574640))

(assert (= (and b!6574640 res!2697996) b!6574636))

(assert (= (and b!6574636 res!2697994) b!6574638))

(assert (= (and d!2062443 (not res!2697993)) b!6574635))

(declare-fun m!7355584 () Bool)

(assert (=> b!6574637 m!7355584))

(declare-fun m!7355586 () Bool)

(assert (=> b!6574640 m!7355586))

(declare-fun m!7355588 () Bool)

(assert (=> b!6574640 m!7355588))

(declare-fun m!7355590 () Bool)

(assert (=> b!6574635 m!7355590))

(assert (=> d!2062443 m!7355590))

(declare-fun m!7355592 () Bool)

(assert (=> d!2062443 m!7355592))

(declare-fun m!7355594 () Bool)

(assert (=> d!2062443 m!7355594))

(assert (=> b!6574638 m!7355586))

(declare-fun m!7355596 () Bool)

(assert (=> b!6574638 m!7355596))

(assert (=> b!6574636 m!7355586))

(declare-fun m!7355598 () Bool)

(assert (=> b!6574636 m!7355598))

(declare-fun m!7355600 () Bool)

(assert (=> b!6574639 m!7355600))

(assert (=> b!6574639 m!7355600))

(declare-fun m!7355602 () Bool)

(assert (=> b!6574639 m!7355602))

(declare-fun m!7355604 () Bool)

(assert (=> b!6574639 m!7355604))

(assert (=> b!6574639 m!7355600))

(declare-fun m!7355606 () Bool)

(assert (=> b!6574639 m!7355606))

(assert (=> b!6573692 d!2062443))

(declare-fun d!2062445 () Bool)

(declare-fun choose!49122 (Int) Bool)

(assert (=> d!2062445 (= (Exists!3521 lambda!366167) (choose!49122 lambda!366167))))

(declare-fun bs!1679055 () Bool)

(assert (= bs!1679055 d!2062445))

(declare-fun m!7355608 () Bool)

(assert (=> bs!1679055 m!7355608))

(assert (=> b!6573692 d!2062445))

(declare-fun d!2062447 () Bool)

(assert (=> d!2062447 (= (Exists!3521 lambda!366168) (choose!49122 lambda!366168))))

(declare-fun bs!1679056 () Bool)

(assert (= bs!1679056 d!2062447))

(declare-fun m!7355610 () Bool)

(assert (=> bs!1679056 m!7355610))

(assert (=> b!6573692 d!2062447))

(declare-fun bs!1679057 () Bool)

(declare-fun d!2062449 () Bool)

(assert (= bs!1679057 (and d!2062449 b!6573692)))

(declare-fun lambda!366257 () Int)

(assert (=> bs!1679057 (= lambda!366257 lambda!366167)))

(declare-fun bs!1679058 () Bool)

(assert (= bs!1679058 (and d!2062449 b!6574163)))

(assert (=> bs!1679058 (not (= lambda!366257 lambda!366229))))

(declare-fun bs!1679059 () Bool)

(assert (= bs!1679059 (and d!2062449 b!6574612)))

(assert (=> bs!1679059 (not (= lambda!366257 lambda!366254))))

(declare-fun bs!1679060 () Bool)

(assert (= bs!1679060 (and d!2062449 b!6574161)))

(assert (=> bs!1679060 (not (= lambda!366257 lambda!366226))))

(assert (=> bs!1679057 (not (= lambda!366257 lambda!366168))))

(declare-fun bs!1679061 () Bool)

(assert (= bs!1679061 (and d!2062449 b!6574610)))

(assert (=> bs!1679061 (not (= lambda!366257 lambda!366253))))

(assert (=> d!2062449 true))

(assert (=> d!2062449 true))

(assert (=> d!2062449 true))

(assert (=> d!2062449 (= (isDefined!13045 (findConcatSeparation!2756 (regOne!33414 r!7292) (regTwo!33414 r!7292) Nil!65530 s!2326 s!2326)) (Exists!3521 lambda!366257))))

(declare-fun lt!2409503 () Unit!159139)

(declare-fun choose!49123 (Regex!16451 Regex!16451 List!65654) Unit!159139)

(assert (=> d!2062449 (= lt!2409503 (choose!49123 (regOne!33414 r!7292) (regTwo!33414 r!7292) s!2326))))

(assert (=> d!2062449 (validRegex!8187 (regOne!33414 r!7292))))

(assert (=> d!2062449 (= (lemmaFindConcatSeparationEquivalentToExists!2520 (regOne!33414 r!7292) (regTwo!33414 r!7292) s!2326) lt!2409503)))

(declare-fun bs!1679062 () Bool)

(assert (= bs!1679062 d!2062449))

(declare-fun m!7355612 () Bool)

(assert (=> bs!1679062 m!7355612))

(declare-fun m!7355614 () Bool)

(assert (=> bs!1679062 m!7355614))

(assert (=> bs!1679062 m!7355594))

(assert (=> bs!1679062 m!7354796))

(assert (=> bs!1679062 m!7354798))

(assert (=> bs!1679062 m!7354796))

(assert (=> b!6573692 d!2062449))

(declare-fun bs!1679063 () Bool)

(declare-fun d!2062451 () Bool)

(assert (= bs!1679063 (and d!2062451 b!6573692)))

(declare-fun lambda!366262 () Int)

(assert (=> bs!1679063 (= lambda!366262 lambda!366167)))

(declare-fun bs!1679064 () Bool)

(assert (= bs!1679064 (and d!2062451 d!2062449)))

(assert (=> bs!1679064 (= lambda!366262 lambda!366257)))

(declare-fun bs!1679065 () Bool)

(assert (= bs!1679065 (and d!2062451 b!6574163)))

(assert (=> bs!1679065 (not (= lambda!366262 lambda!366229))))

(declare-fun bs!1679066 () Bool)

(assert (= bs!1679066 (and d!2062451 b!6574612)))

(assert (=> bs!1679066 (not (= lambda!366262 lambda!366254))))

(declare-fun bs!1679067 () Bool)

(assert (= bs!1679067 (and d!2062451 b!6574161)))

(assert (=> bs!1679067 (not (= lambda!366262 lambda!366226))))

(assert (=> bs!1679063 (not (= lambda!366262 lambda!366168))))

(declare-fun bs!1679068 () Bool)

(assert (= bs!1679068 (and d!2062451 b!6574610)))

(assert (=> bs!1679068 (not (= lambda!366262 lambda!366253))))

(assert (=> d!2062451 true))

(assert (=> d!2062451 true))

(assert (=> d!2062451 true))

(declare-fun lambda!366263 () Int)

(assert (=> bs!1679063 (not (= lambda!366263 lambda!366167))))

(assert (=> bs!1679064 (not (= lambda!366263 lambda!366257))))

(assert (=> bs!1679065 (= lambda!366263 lambda!366229)))

(assert (=> bs!1679066 (= (and (= (regOne!33414 r!7292) (regOne!33414 lt!2409356)) (= (regTwo!33414 r!7292) (regTwo!33414 lt!2409356))) (= lambda!366263 lambda!366254))))

(assert (=> bs!1679067 (not (= lambda!366263 lambda!366226))))

(assert (=> bs!1679063 (= lambda!366263 lambda!366168)))

(assert (=> bs!1679068 (not (= lambda!366263 lambda!366253))))

(declare-fun bs!1679069 () Bool)

(assert (= bs!1679069 d!2062451))

(assert (=> bs!1679069 (not (= lambda!366263 lambda!366262))))

(assert (=> d!2062451 true))

(assert (=> d!2062451 true))

(assert (=> d!2062451 true))

(assert (=> d!2062451 (= (Exists!3521 lambda!366262) (Exists!3521 lambda!366263))))

(declare-fun lt!2409506 () Unit!159139)

(declare-fun choose!49124 (Regex!16451 Regex!16451 List!65654) Unit!159139)

(assert (=> d!2062451 (= lt!2409506 (choose!49124 (regOne!33414 r!7292) (regTwo!33414 r!7292) s!2326))))

(assert (=> d!2062451 (validRegex!8187 (regOne!33414 r!7292))))

(assert (=> d!2062451 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2058 (regOne!33414 r!7292) (regTwo!33414 r!7292) s!2326) lt!2409506)))

(declare-fun m!7355616 () Bool)

(assert (=> bs!1679069 m!7355616))

(declare-fun m!7355618 () Bool)

(assert (=> bs!1679069 m!7355618))

(declare-fun m!7355620 () Bool)

(assert (=> bs!1679069 m!7355620))

(assert (=> bs!1679069 m!7355594))

(assert (=> b!6573692 d!2062451))

(declare-fun d!2062453 () Bool)

(declare-fun isEmpty!37786 (Option!16342) Bool)

(assert (=> d!2062453 (= (isDefined!13045 (findConcatSeparation!2756 (regOne!33414 r!7292) (regTwo!33414 r!7292) Nil!65530 s!2326 s!2326)) (not (isEmpty!37786 (findConcatSeparation!2756 (regOne!33414 r!7292) (regTwo!33414 r!7292) Nil!65530 s!2326 s!2326))))))

(declare-fun bs!1679070 () Bool)

(assert (= bs!1679070 d!2062453))

(assert (=> bs!1679070 m!7354796))

(declare-fun m!7355622 () Bool)

(assert (=> bs!1679070 m!7355622))

(assert (=> b!6573692 d!2062453))

(declare-fun b!6574666 () Bool)

(declare-fun e!3979358 () Bool)

(declare-fun tp!1814451 () Bool)

(declare-fun tp!1814452 () Bool)

(assert (=> b!6574666 (= e!3979358 (and tp!1814451 tp!1814452))))

(declare-fun b!6574667 () Bool)

(declare-fun tp!1814449 () Bool)

(assert (=> b!6574667 (= e!3979358 tp!1814449)))

(declare-fun b!6574668 () Bool)

(declare-fun tp!1814448 () Bool)

(declare-fun tp!1814450 () Bool)

(assert (=> b!6574668 (= e!3979358 (and tp!1814448 tp!1814450))))

(assert (=> b!6573678 (= tp!1814371 e!3979358)))

(declare-fun b!6574665 () Bool)

(assert (=> b!6574665 (= e!3979358 tp_is_empty!42155)))

(assert (= (and b!6573678 ((_ is ElementMatch!16451) (reg!16780 r!7292))) b!6574665))

(assert (= (and b!6573678 ((_ is Concat!25296) (reg!16780 r!7292))) b!6574666))

(assert (= (and b!6573678 ((_ is Star!16451) (reg!16780 r!7292))) b!6574667))

(assert (= (and b!6573678 ((_ is Union!16451) (reg!16780 r!7292))) b!6574668))

(declare-fun b!6574673 () Bool)

(declare-fun e!3979361 () Bool)

(declare-fun tp!1814455 () Bool)

(assert (=> b!6574673 (= e!3979361 (and tp_is_empty!42155 tp!1814455))))

(assert (=> b!6573687 (= tp!1814375 e!3979361)))

(assert (= (and b!6573687 ((_ is Cons!65530) (t!379300 s!2326))) b!6574673))

(declare-fun b!6574678 () Bool)

(declare-fun e!3979364 () Bool)

(declare-fun tp!1814460 () Bool)

(declare-fun tp!1814461 () Bool)

(assert (=> b!6574678 (= e!3979364 (and tp!1814460 tp!1814461))))

(assert (=> b!6573674 (= tp!1814376 e!3979364)))

(assert (= (and b!6573674 ((_ is Cons!65528) (exprs!6335 (h!71977 zl!343)))) b!6574678))

(declare-fun b!6574686 () Bool)

(declare-fun e!3979370 () Bool)

(declare-fun tp!1814466 () Bool)

(assert (=> b!6574686 (= e!3979370 tp!1814466)))

(declare-fun e!3979369 () Bool)

(declare-fun tp!1814467 () Bool)

(declare-fun b!6574685 () Bool)

(assert (=> b!6574685 (= e!3979369 (and (inv!84374 (h!71977 (t!379299 zl!343))) e!3979370 tp!1814467))))

(assert (=> b!6573684 (= tp!1814373 e!3979369)))

(assert (= b!6574685 b!6574686))

(assert (= (and b!6573684 ((_ is Cons!65529) (t!379299 zl!343))) b!6574685))

(declare-fun m!7355624 () Bool)

(assert (=> b!6574685 m!7355624))

(declare-fun b!6574688 () Bool)

(declare-fun e!3979371 () Bool)

(declare-fun tp!1814471 () Bool)

(declare-fun tp!1814472 () Bool)

(assert (=> b!6574688 (= e!3979371 (and tp!1814471 tp!1814472))))

(declare-fun b!6574689 () Bool)

(declare-fun tp!1814469 () Bool)

(assert (=> b!6574689 (= e!3979371 tp!1814469)))

(declare-fun b!6574690 () Bool)

(declare-fun tp!1814468 () Bool)

(declare-fun tp!1814470 () Bool)

(assert (=> b!6574690 (= e!3979371 (and tp!1814468 tp!1814470))))

(assert (=> b!6573654 (= tp!1814378 e!3979371)))

(declare-fun b!6574687 () Bool)

(assert (=> b!6574687 (= e!3979371 tp_is_empty!42155)))

(assert (= (and b!6573654 ((_ is ElementMatch!16451) (regOne!33414 r!7292))) b!6574687))

(assert (= (and b!6573654 ((_ is Concat!25296) (regOne!33414 r!7292))) b!6574688))

(assert (= (and b!6573654 ((_ is Star!16451) (regOne!33414 r!7292))) b!6574689))

(assert (= (and b!6573654 ((_ is Union!16451) (regOne!33414 r!7292))) b!6574690))

(declare-fun b!6574692 () Bool)

(declare-fun e!3979372 () Bool)

(declare-fun tp!1814476 () Bool)

(declare-fun tp!1814477 () Bool)

(assert (=> b!6574692 (= e!3979372 (and tp!1814476 tp!1814477))))

(declare-fun b!6574693 () Bool)

(declare-fun tp!1814474 () Bool)

(assert (=> b!6574693 (= e!3979372 tp!1814474)))

(declare-fun b!6574694 () Bool)

(declare-fun tp!1814473 () Bool)

(declare-fun tp!1814475 () Bool)

(assert (=> b!6574694 (= e!3979372 (and tp!1814473 tp!1814475))))

(assert (=> b!6573654 (= tp!1814372 e!3979372)))

(declare-fun b!6574691 () Bool)

(assert (=> b!6574691 (= e!3979372 tp_is_empty!42155)))

(assert (= (and b!6573654 ((_ is ElementMatch!16451) (regTwo!33414 r!7292))) b!6574691))

(assert (= (and b!6573654 ((_ is Concat!25296) (regTwo!33414 r!7292))) b!6574692))

(assert (= (and b!6573654 ((_ is Star!16451) (regTwo!33414 r!7292))) b!6574693))

(assert (= (and b!6573654 ((_ is Union!16451) (regTwo!33414 r!7292))) b!6574694))

(declare-fun condSetEmpty!44902 () Bool)

(assert (=> setNonEmpty!44896 (= condSetEmpty!44902 (= setRest!44896 ((as const (Array Context!11670 Bool)) false)))))

(declare-fun setRes!44902 () Bool)

(assert (=> setNonEmpty!44896 (= tp!1814370 setRes!44902)))

(declare-fun setIsEmpty!44902 () Bool)

(assert (=> setIsEmpty!44902 setRes!44902))

(declare-fun setElem!44902 () Context!11670)

(declare-fun tp!1814482 () Bool)

(declare-fun e!3979375 () Bool)

(declare-fun setNonEmpty!44902 () Bool)

(assert (=> setNonEmpty!44902 (= setRes!44902 (and tp!1814482 (inv!84374 setElem!44902) e!3979375))))

(declare-fun setRest!44902 () (InoxSet Context!11670))

(assert (=> setNonEmpty!44902 (= setRest!44896 ((_ map or) (store ((as const (Array Context!11670 Bool)) false) setElem!44902 true) setRest!44902))))

(declare-fun b!6574699 () Bool)

(declare-fun tp!1814483 () Bool)

(assert (=> b!6574699 (= e!3979375 tp!1814483)))

(assert (= (and setNonEmpty!44896 condSetEmpty!44902) setIsEmpty!44902))

(assert (= (and setNonEmpty!44896 (not condSetEmpty!44902)) setNonEmpty!44902))

(assert (= setNonEmpty!44902 b!6574699))

(declare-fun m!7355626 () Bool)

(assert (=> setNonEmpty!44902 m!7355626))

(declare-fun b!6574700 () Bool)

(declare-fun e!3979376 () Bool)

(declare-fun tp!1814484 () Bool)

(declare-fun tp!1814485 () Bool)

(assert (=> b!6574700 (= e!3979376 (and tp!1814484 tp!1814485))))

(assert (=> b!6573680 (= tp!1814379 e!3979376)))

(assert (= (and b!6573680 ((_ is Cons!65528) (exprs!6335 setElem!44896))) b!6574700))

(declare-fun b!6574702 () Bool)

(declare-fun e!3979377 () Bool)

(declare-fun tp!1814489 () Bool)

(declare-fun tp!1814490 () Bool)

(assert (=> b!6574702 (= e!3979377 (and tp!1814489 tp!1814490))))

(declare-fun b!6574703 () Bool)

(declare-fun tp!1814487 () Bool)

(assert (=> b!6574703 (= e!3979377 tp!1814487)))

(declare-fun b!6574704 () Bool)

(declare-fun tp!1814486 () Bool)

(declare-fun tp!1814488 () Bool)

(assert (=> b!6574704 (= e!3979377 (and tp!1814486 tp!1814488))))

(assert (=> b!6573667 (= tp!1814374 e!3979377)))

(declare-fun b!6574701 () Bool)

(assert (=> b!6574701 (= e!3979377 tp_is_empty!42155)))

(assert (= (and b!6573667 ((_ is ElementMatch!16451) (regOne!33415 r!7292))) b!6574701))

(assert (= (and b!6573667 ((_ is Concat!25296) (regOne!33415 r!7292))) b!6574702))

(assert (= (and b!6573667 ((_ is Star!16451) (regOne!33415 r!7292))) b!6574703))

(assert (= (and b!6573667 ((_ is Union!16451) (regOne!33415 r!7292))) b!6574704))

(declare-fun b!6574706 () Bool)

(declare-fun e!3979378 () Bool)

(declare-fun tp!1814494 () Bool)

(declare-fun tp!1814495 () Bool)

(assert (=> b!6574706 (= e!3979378 (and tp!1814494 tp!1814495))))

(declare-fun b!6574707 () Bool)

(declare-fun tp!1814492 () Bool)

(assert (=> b!6574707 (= e!3979378 tp!1814492)))

(declare-fun b!6574708 () Bool)

(declare-fun tp!1814491 () Bool)

(declare-fun tp!1814493 () Bool)

(assert (=> b!6574708 (= e!3979378 (and tp!1814491 tp!1814493))))

(assert (=> b!6573667 (= tp!1814377 e!3979378)))

(declare-fun b!6574705 () Bool)

(assert (=> b!6574705 (= e!3979378 tp_is_empty!42155)))

(assert (= (and b!6573667 ((_ is ElementMatch!16451) (regTwo!33415 r!7292))) b!6574705))

(assert (= (and b!6573667 ((_ is Concat!25296) (regTwo!33415 r!7292))) b!6574706))

(assert (= (and b!6573667 ((_ is Star!16451) (regTwo!33415 r!7292))) b!6574707))

(assert (= (and b!6573667 ((_ is Union!16451) (regTwo!33415 r!7292))) b!6574708))

(declare-fun b_lambda!248639 () Bool)

(assert (= b_lambda!248609 (or b!6573688 b_lambda!248639)))

(declare-fun bs!1679071 () Bool)

(declare-fun d!2062455 () Bool)

(assert (= bs!1679071 (and d!2062455 b!6573688)))

(assert (=> bs!1679071 (= (dynLambda!26070 lambda!366169 (h!71977 zl!343)) (derivationStepZipperUp!1625 (h!71977 zl!343) (h!71978 s!2326)))))

(assert (=> bs!1679071 m!7354862))

(assert (=> d!2062221 d!2062455))

(declare-fun b_lambda!248641 () Bool)

(assert (= b_lambda!248615 (or b!6573688 b_lambda!248641)))

(declare-fun bs!1679072 () Bool)

(declare-fun d!2062457 () Bool)

(assert (= bs!1679072 (and d!2062457 b!6573688)))

(assert (=> bs!1679072 (= (dynLambda!26070 lambda!366169 lt!2409349) (derivationStepZipperUp!1625 lt!2409349 (h!71978 s!2326)))))

(assert (=> bs!1679072 m!7354870))

(assert (=> d!2062339 d!2062457))

(declare-fun b_lambda!248643 () Bool)

(assert (= b_lambda!248621 (or b!6573688 b_lambda!248643)))

(declare-fun bs!1679073 () Bool)

(declare-fun d!2062459 () Bool)

(assert (= bs!1679073 (and d!2062459 b!6573688)))

(assert (=> bs!1679073 (= (dynLambda!26070 lambda!366169 lt!2409346) (derivationStepZipperUp!1625 lt!2409346 (h!71978 s!2326)))))

(assert (=> bs!1679073 m!7354834))

(assert (=> d!2062395 d!2062459))

(declare-fun b_lambda!248645 () Bool)

(assert (= b_lambda!248619 (or b!6573688 b_lambda!248645)))

(declare-fun bs!1679074 () Bool)

(declare-fun d!2062461 () Bool)

(assert (= bs!1679074 (and d!2062461 b!6573688)))

(assert (=> bs!1679074 (= (dynLambda!26070 lambda!366169 lt!2409343) (derivationStepZipperUp!1625 lt!2409343 (h!71978 s!2326)))))

(assert (=> bs!1679074 m!7354840))

(assert (=> d!2062385 d!2062461))

(declare-fun b_lambda!248647 () Bool)

(assert (= b_lambda!248611 (or b!6573688 b_lambda!248647)))

(declare-fun bs!1679075 () Bool)

(declare-fun d!2062463 () Bool)

(assert (= bs!1679075 (and d!2062463 b!6573688)))

(assert (=> bs!1679075 (= (dynLambda!26070 lambda!366169 lt!2409352) (derivationStepZipperUp!1625 lt!2409352 (h!71978 s!2326)))))

(assert (=> bs!1679075 m!7354824))

(assert (=> d!2062273 d!2062463))

(check-sat (not bm!572282) (not b!6574640) (not b!6574667) (not b!6574302) (not b!6573864) (not bm!572155) (not bs!1679071) (not bm!572169) (not b!6573793) (not b!6573771) (not b!6574690) (not b!6574467) (not b!6574501) (not b!6574598) (not bs!1679074) (not b!6574702) (not d!2062285) (not setNonEmpty!44902) (not d!2062259) (not bm!572271) (not b!6574666) (not d!2062233) (not d!2062217) (not d!2062269) (not b!6574498) (not b!6574223) (not b!6573790) (not bm!572273) (not b!6574072) (not b!6574572) (not d!2062335) (not bm!572320) (not d!2062391) (not d!2062277) (not d!2062447) (not b!6574419) (not d!2062339) (not b!6574070) (not d!2062323) (not d!2062395) (not bm!572316) (not d!2062341) (not b!6574458) (not bm!572304) (not d!2062253) (not b!6574686) (not b!6573865) (not bm!572308) (not bm!572318) (not b!6574707) (not b!6574693) (not b_lambda!248643) (not bm!572172) (not bm!572185) (not b!6573867) (not bm!572222) (not d!2062231) (not b!6574069) (not b!6574466) (not b!6574704) (not bs!1679073) (not bm!572175) tp_is_empty!42155 (not d!2062237) (not b!6574220) (not b!6574427) (not b!6574025) (not d!2062409) (not d!2062263) (not b!6574457) (not bm!572275) (not b!6574459) (not d!2062281) (not b_lambda!248647) (not b!6574637) (not d!2062441) (not bm!572284) (not d!2062385) (not b!6573869) (not bm!572313) (not bm!572171) (not b_lambda!248639) (not b!6574421) (not b!6574577) (not b!6574299) (not d!2062337) (not b!6573713) (not b!6574574) (not d!2062369) (not d!2062445) (not b!6574590) (not b!6574592) (not b!6574300) (not b!6574422) (not bm!572221) (not d!2062355) (not b!6574066) (not d!2062333) (not b!6574614) (not bm!572309) (not b!6574227) (not b!6574158) (not b!6574424) (not b!6574602) (not bm!572174) (not b!6574479) (not b!6573860) (not b!6574295) (not d!2062279) (not b!6574688) (not b!6574301) (not d!2062275) (not d!2062449) (not b!6574165) (not bm!572303) (not b!6574465) (not b!6574496) (not b!6573949) (not b!6573710) (not bm!572285) (not bm!572286) (not b!6574706) (not bm!572242) (not d!2062329) (not bm!572280) (not d!2062319) (not b!6574638) (not b!6574068) (not b!6574636) (not b!6574221) (not bm!572319) (not b!6574426) (not b!6574596) (not b!6574689) (not d!2062451) (not d!2062453) (not b!6574579) (not b_lambda!248641) (not d!2062273) (not b!6574217) (not b!6574599) (not d!2062375) (not bs!1679075) (not bm!572243) (not b!6574224) (not bm!572315) (not b!6574703) (not b!6574694) (not b!6574493) (not b!6574668) (not d!2062407) (not b!6574607) (not b!6573868) (not d!2062357) (not b!6573937) (not bm!572274) (not bs!1679072) (not b!6574700) (not b!6574699) (not b!6574708) (not b!6573952) (not b!6573861) (not b!6574692) (not b!6573907) (not b!6574425) (not b!6574639) (not d!2062443) (not bm!572269) (not b!6574685) (not b_lambda!248645) (not d!2062437) (not b!6573768) (not b!6574678) (not b!6573938) (not b!6574063) (not b!6574595) (not b!6574635) (not d!2062373) (not bm!572231) (not b!6573756) (not d!2062331) (not b!6574468) (not d!2062221) (not b!6574065) (not b!6574673))
(check-sat)
