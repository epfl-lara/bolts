; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549786 () Bool)

(assert start!549786)

(declare-fun b!5195558 () Bool)

(assert (=> b!5195558 true))

(assert (=> b!5195558 true))

(declare-fun lambda!259947 () Int)

(declare-fun lambda!259946 () Int)

(assert (=> b!5195558 (not (= lambda!259947 lambda!259946))))

(assert (=> b!5195558 true))

(assert (=> b!5195558 true))

(declare-fun b!5195543 () Bool)

(declare-fun e!3235834 () Bool)

(declare-fun tp_is_empty!38759 () Bool)

(assert (=> b!5195543 (= e!3235834 tp_is_empty!38759)))

(declare-fun setIsEmpty!32872 () Bool)

(declare-fun setRes!32872 () Bool)

(assert (=> setIsEmpty!32872 setRes!32872))

(declare-fun b!5195544 () Bool)

(declare-fun res!2206895 () Bool)

(declare-fun e!3235837 () Bool)

(assert (=> b!5195544 (=> res!2206895 e!3235837)))

(declare-datatypes ((C!29776 0))(
  ( (C!29777 (val!24590 Int)) )
))
(declare-datatypes ((Regex!14753 0))(
  ( (ElementMatch!14753 (c!895518 C!29776)) (Concat!23598 (regOne!30018 Regex!14753) (regTwo!30018 Regex!14753)) (EmptyExpr!14753) (Star!14753 (reg!15082 Regex!14753)) (EmptyLang!14753) (Union!14753 (regOne!30019 Regex!14753) (regTwo!30019 Regex!14753)) )
))
(declare-fun r!7292 () Regex!14753)

(get-info :version)

(assert (=> b!5195544 (= res!2206895 (or ((_ is EmptyExpr!14753) r!7292) ((_ is EmptyLang!14753) r!7292) ((_ is ElementMatch!14753) r!7292) ((_ is Union!14753) r!7292) (not ((_ is Concat!23598) r!7292))))))

(declare-fun b!5195545 () Bool)

(declare-fun e!3235833 () Bool)

(declare-fun e!3235835 () Bool)

(assert (=> b!5195545 (= e!3235833 e!3235835)))

(declare-fun res!2206898 () Bool)

(assert (=> b!5195545 (=> res!2206898 e!3235835)))

(declare-fun lt!2138752 () Bool)

(declare-fun lt!2138747 () Bool)

(assert (=> b!5195545 (= res!2206898 (not (= lt!2138752 lt!2138747)))))

(assert (=> b!5195545 (= lt!2138747 lt!2138752)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!60558 0))(
  ( (Nil!60434) (Cons!60434 (h!66882 Regex!14753) (t!373711 List!60558)) )
))
(declare-datatypes ((Context!8274 0))(
  ( (Context!8275 (exprs!4637 List!60558)) )
))
(declare-fun z!1189 () (InoxSet Context!8274))

(declare-fun nullableZipper!1215 ((InoxSet Context!8274)) Bool)

(assert (=> b!5195545 (= lt!2138752 (nullableZipper!1215 z!1189))))

(declare-fun nullable!4932 (Regex!14753) Bool)

(assert (=> b!5195545 (= lt!2138747 (nullable!4932 r!7292))))

(declare-datatypes ((Unit!152340 0))(
  ( (Unit!152341) )
))
(declare-fun lt!2138755 () Unit!152340)

(declare-fun lemmaUnfocusPreservesNullability!8 (Regex!14753 (InoxSet Context!8274)) Unit!152340)

(assert (=> b!5195545 (= lt!2138755 (lemmaUnfocusPreservesNullability!8 r!7292 z!1189))))

(declare-fun res!2206894 () Bool)

(declare-fun e!3235829 () Bool)

(assert (=> start!549786 (=> (not res!2206894) (not e!3235829))))

(declare-fun validRegex!6489 (Regex!14753) Bool)

(assert (=> start!549786 (= res!2206894 (validRegex!6489 r!7292))))

(assert (=> start!549786 e!3235829))

(assert (=> start!549786 e!3235834))

(declare-fun condSetEmpty!32872 () Bool)

(assert (=> start!549786 (= condSetEmpty!32872 (= z!1189 ((as const (Array Context!8274 Bool)) false)))))

(assert (=> start!549786 setRes!32872))

(declare-fun e!3235830 () Bool)

(assert (=> start!549786 e!3235830))

(declare-fun e!3235832 () Bool)

(assert (=> start!549786 e!3235832))

(declare-fun b!5195546 () Bool)

(declare-fun res!2206899 () Bool)

(assert (=> b!5195546 (=> res!2206899 e!3235837)))

(declare-datatypes ((List!60559 0))(
  ( (Nil!60435) (Cons!60435 (h!66883 Context!8274) (t!373712 List!60559)) )
))
(declare-fun zl!343 () List!60559)

(declare-fun generalisedConcat!422 (List!60558) Regex!14753)

(assert (=> b!5195546 (= res!2206899 (not (= r!7292 (generalisedConcat!422 (exprs!4637 (h!66883 zl!343))))))))

(declare-fun b!5195547 () Bool)

(declare-fun res!2206896 () Bool)

(assert (=> b!5195547 (=> res!2206896 e!3235837)))

(declare-fun isEmpty!32359 (List!60559) Bool)

(assert (=> b!5195547 (= res!2206896 (not (isEmpty!32359 (t!373712 zl!343))))))

(declare-fun b!5195548 () Bool)

(declare-fun res!2206893 () Bool)

(assert (=> b!5195548 (=> res!2206893 e!3235837)))

(declare-fun generalisedUnion!682 (List!60558) Regex!14753)

(declare-fun unfocusZipperList!195 (List!60559) List!60558)

(assert (=> b!5195548 (= res!2206893 (not (= r!7292 (generalisedUnion!682 (unfocusZipperList!195 zl!343)))))))

(declare-fun b!5195549 () Bool)

(declare-fun e!3235831 () Bool)

(declare-fun tp!1457479 () Bool)

(assert (=> b!5195549 (= e!3235831 tp!1457479)))

(declare-fun b!5195550 () Bool)

(declare-fun tp!1457477 () Bool)

(assert (=> b!5195550 (= e!3235832 (and tp_is_empty!38759 tp!1457477))))

(declare-fun tp!1457478 () Bool)

(declare-fun b!5195551 () Bool)

(declare-fun e!3235836 () Bool)

(declare-fun inv!80129 (Context!8274) Bool)

(assert (=> b!5195551 (= e!3235830 (and (inv!80129 (h!66883 zl!343)) e!3235836 tp!1457478))))

(declare-fun b!5195552 () Bool)

(declare-fun tp!1457476 () Bool)

(declare-fun tp!1457475 () Bool)

(assert (=> b!5195552 (= e!3235834 (and tp!1457476 tp!1457475))))

(declare-fun b!5195553 () Bool)

(declare-fun res!2206897 () Bool)

(assert (=> b!5195553 (=> (not res!2206897) (not e!3235829))))

(declare-fun unfocusZipper!495 (List!60559) Regex!14753)

(assert (=> b!5195553 (= res!2206897 (= r!7292 (unfocusZipper!495 zl!343)))))

(declare-fun b!5195554 () Bool)

(declare-fun res!2206892 () Bool)

(assert (=> b!5195554 (=> (not res!2206892) (not e!3235829))))

(declare-fun toList!8537 ((InoxSet Context!8274)) List!60559)

(assert (=> b!5195554 (= res!2206892 (= (toList!8537 z!1189) zl!343))))

(declare-fun b!5195555 () Bool)

(assert (=> b!5195555 (= e!3235835 true)))

(declare-fun lt!2138748 () Bool)

(declare-datatypes ((List!60560 0))(
  ( (Nil!60436) (Cons!60436 (h!66884 C!29776) (t!373713 List!60560)) )
))
(declare-fun s!2326 () List!60560)

(declare-fun matchZipper!1017 ((InoxSet Context!8274) List!60560) Bool)

(assert (=> b!5195555 (= lt!2138748 (matchZipper!1017 z!1189 s!2326))))

(declare-fun b!5195556 () Bool)

(declare-fun tp!1457480 () Bool)

(declare-fun tp!1457474 () Bool)

(assert (=> b!5195556 (= e!3235834 (and tp!1457480 tp!1457474))))

(declare-fun b!5195557 () Bool)

(declare-fun tp!1457472 () Bool)

(assert (=> b!5195557 (= e!3235836 tp!1457472)))

(assert (=> b!5195558 (= e!3235837 e!3235833)))

(declare-fun res!2206902 () Bool)

(assert (=> b!5195558 (=> res!2206902 e!3235833)))

(declare-fun lt!2138749 () Bool)

(declare-fun lt!2138753 () Bool)

(assert (=> b!5195558 (= res!2206902 (or (not (= lt!2138753 lt!2138749)) (not ((_ is Nil!60436) s!2326))))))

(declare-fun Exists!1934 (Int) Bool)

(assert (=> b!5195558 (= (Exists!1934 lambda!259946) (Exists!1934 lambda!259947))))

(declare-fun lt!2138751 () Unit!152340)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!588 (Regex!14753 Regex!14753 List!60560) Unit!152340)

(assert (=> b!5195558 (= lt!2138751 (lemmaExistCutMatchRandMatchRSpecEquivalent!588 (regOne!30018 r!7292) (regTwo!30018 r!7292) s!2326))))

(assert (=> b!5195558 (= lt!2138749 (Exists!1934 lambda!259946))))

(declare-datatypes ((tuple2!63904 0))(
  ( (tuple2!63905 (_1!35255 List!60560) (_2!35255 List!60560)) )
))
(declare-datatypes ((Option!14864 0))(
  ( (None!14863) (Some!14863 (v!50892 tuple2!63904)) )
))
(declare-fun isDefined!11567 (Option!14864) Bool)

(declare-fun findConcatSeparation!1278 (Regex!14753 Regex!14753 List!60560 List!60560 List!60560) Option!14864)

(assert (=> b!5195558 (= lt!2138749 (isDefined!11567 (findConcatSeparation!1278 (regOne!30018 r!7292) (regTwo!30018 r!7292) Nil!60436 s!2326 s!2326)))))

(declare-fun lt!2138754 () Unit!152340)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1042 (Regex!14753 Regex!14753 List!60560) Unit!152340)

(assert (=> b!5195558 (= lt!2138754 (lemmaFindConcatSeparationEquivalentToExists!1042 (regOne!30018 r!7292) (regTwo!30018 r!7292) s!2326))))

(declare-fun b!5195559 () Bool)

(assert (=> b!5195559 (= e!3235829 (not e!3235837))))

(declare-fun res!2206901 () Bool)

(assert (=> b!5195559 (=> res!2206901 e!3235837)))

(assert (=> b!5195559 (= res!2206901 (not ((_ is Cons!60435) zl!343)))))

(declare-fun matchRSpec!1856 (Regex!14753 List!60560) Bool)

(assert (=> b!5195559 (= lt!2138753 (matchRSpec!1856 r!7292 s!2326))))

(declare-fun matchR!6938 (Regex!14753 List!60560) Bool)

(assert (=> b!5195559 (= lt!2138753 (matchR!6938 r!7292 s!2326))))

(declare-fun lt!2138750 () Unit!152340)

(declare-fun mainMatchTheorem!1856 (Regex!14753 List!60560) Unit!152340)

(assert (=> b!5195559 (= lt!2138750 (mainMatchTheorem!1856 r!7292 s!2326))))

(declare-fun b!5195560 () Bool)

(declare-fun res!2206900 () Bool)

(assert (=> b!5195560 (=> res!2206900 e!3235837)))

(assert (=> b!5195560 (= res!2206900 (not ((_ is Cons!60434) (exprs!4637 (h!66883 zl!343)))))))

(declare-fun setNonEmpty!32872 () Bool)

(declare-fun setElem!32872 () Context!8274)

(declare-fun tp!1457481 () Bool)

(assert (=> setNonEmpty!32872 (= setRes!32872 (and tp!1457481 (inv!80129 setElem!32872) e!3235831))))

(declare-fun setRest!32872 () (InoxSet Context!8274))

(assert (=> setNonEmpty!32872 (= z!1189 ((_ map or) (store ((as const (Array Context!8274 Bool)) false) setElem!32872 true) setRest!32872))))

(declare-fun b!5195561 () Bool)

(declare-fun tp!1457473 () Bool)

(assert (=> b!5195561 (= e!3235834 tp!1457473)))

(assert (= (and start!549786 res!2206894) b!5195554))

(assert (= (and b!5195554 res!2206892) b!5195553))

(assert (= (and b!5195553 res!2206897) b!5195559))

(assert (= (and b!5195559 (not res!2206901)) b!5195547))

(assert (= (and b!5195547 (not res!2206896)) b!5195546))

(assert (= (and b!5195546 (not res!2206899)) b!5195560))

(assert (= (and b!5195560 (not res!2206900)) b!5195548))

(assert (= (and b!5195548 (not res!2206893)) b!5195544))

(assert (= (and b!5195544 (not res!2206895)) b!5195558))

(assert (= (and b!5195558 (not res!2206902)) b!5195545))

(assert (= (and b!5195545 (not res!2206898)) b!5195555))

(assert (= (and start!549786 ((_ is ElementMatch!14753) r!7292)) b!5195543))

(assert (= (and start!549786 ((_ is Concat!23598) r!7292)) b!5195556))

(assert (= (and start!549786 ((_ is Star!14753) r!7292)) b!5195561))

(assert (= (and start!549786 ((_ is Union!14753) r!7292)) b!5195552))

(assert (= (and start!549786 condSetEmpty!32872) setIsEmpty!32872))

(assert (= (and start!549786 (not condSetEmpty!32872)) setNonEmpty!32872))

(assert (= setNonEmpty!32872 b!5195549))

(assert (= b!5195551 b!5195557))

(assert (= (and start!549786 ((_ is Cons!60435) zl!343)) b!5195551))

(assert (= (and start!549786 ((_ is Cons!60436) s!2326)) b!5195550))

(declare-fun m!6249826 () Bool)

(assert (=> b!5195551 m!6249826))

(declare-fun m!6249828 () Bool)

(assert (=> setNonEmpty!32872 m!6249828))

(declare-fun m!6249830 () Bool)

(assert (=> b!5195553 m!6249830))

(declare-fun m!6249832 () Bool)

(assert (=> b!5195547 m!6249832))

(declare-fun m!6249834 () Bool)

(assert (=> b!5195558 m!6249834))

(declare-fun m!6249836 () Bool)

(assert (=> b!5195558 m!6249836))

(declare-fun m!6249838 () Bool)

(assert (=> b!5195558 m!6249838))

(declare-fun m!6249840 () Bool)

(assert (=> b!5195558 m!6249840))

(declare-fun m!6249842 () Bool)

(assert (=> b!5195558 m!6249842))

(assert (=> b!5195558 m!6249838))

(assert (=> b!5195558 m!6249834))

(declare-fun m!6249844 () Bool)

(assert (=> b!5195558 m!6249844))

(declare-fun m!6249846 () Bool)

(assert (=> b!5195548 m!6249846))

(assert (=> b!5195548 m!6249846))

(declare-fun m!6249848 () Bool)

(assert (=> b!5195548 m!6249848))

(declare-fun m!6249850 () Bool)

(assert (=> b!5195559 m!6249850))

(declare-fun m!6249852 () Bool)

(assert (=> b!5195559 m!6249852))

(declare-fun m!6249854 () Bool)

(assert (=> b!5195559 m!6249854))

(declare-fun m!6249856 () Bool)

(assert (=> b!5195554 m!6249856))

(declare-fun m!6249858 () Bool)

(assert (=> b!5195555 m!6249858))

(declare-fun m!6249860 () Bool)

(assert (=> b!5195545 m!6249860))

(declare-fun m!6249862 () Bool)

(assert (=> b!5195545 m!6249862))

(declare-fun m!6249864 () Bool)

(assert (=> b!5195545 m!6249864))

(declare-fun m!6249866 () Bool)

(assert (=> b!5195546 m!6249866))

(declare-fun m!6249868 () Bool)

(assert (=> start!549786 m!6249868))

(check-sat (not b!5195557) (not b!5195561) (not b!5195548) (not b!5195553) (not b!5195552) (not b!5195549) (not start!549786) (not b!5195558) (not b!5195559) (not b!5195554) tp_is_empty!38759 (not b!5195556) (not b!5195545) (not b!5195551) (not b!5195550) (not setNonEmpty!32872) (not b!5195547) (not b!5195555) (not b!5195546))
(check-sat)
