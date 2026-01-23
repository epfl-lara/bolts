; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!586336 () Bool)

(assert start!586336)

(declare-fun b!5679738 () Bool)

(assert (=> b!5679738 true))

(assert (=> b!5679738 true))

(declare-fun lambda!306018 () Int)

(declare-fun lambda!306017 () Int)

(assert (=> b!5679738 (not (= lambda!306018 lambda!306017))))

(assert (=> b!5679738 true))

(assert (=> b!5679738 true))

(declare-fun b!5679736 () Bool)

(assert (=> b!5679736 true))

(declare-fun b!5679728 () Bool)

(declare-fun e!3495736 () Bool)

(declare-fun tp!1574988 () Bool)

(assert (=> b!5679728 (= e!3495736 tp!1574988)))

(declare-fun b!5679729 () Bool)

(declare-fun e!3495731 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31616 0))(
  ( (C!31617 (val!25510 Int)) )
))
(declare-datatypes ((Regex!15673 0))(
  ( (ElementMatch!15673 (c!999361 C!31616)) (Concat!24518 (regOne!31858 Regex!15673) (regTwo!31858 Regex!15673)) (EmptyExpr!15673) (Star!15673 (reg!16002 Regex!15673)) (EmptyLang!15673) (Union!15673 (regOne!31859 Regex!15673) (regTwo!31859 Regex!15673)) )
))
(declare-datatypes ((List!63318 0))(
  ( (Nil!63194) (Cons!63194 (h!69642 Regex!15673) (t!376630 List!63318)) )
))
(declare-datatypes ((Context!10114 0))(
  ( (Context!10115 (exprs!5557 List!63318)) )
))
(declare-fun lt!2270156 () (InoxSet Context!10114))

(declare-datatypes ((List!63319 0))(
  ( (Nil!63195) (Cons!63195 (h!69643 C!31616) (t!376631 List!63319)) )
))
(declare-fun s!2326 () List!63319)

(declare-fun matchZipper!1811 ((InoxSet Context!10114) List!63319) Bool)

(assert (=> b!5679729 (= e!3495731 (matchZipper!1811 lt!2270156 (t!376631 s!2326)))))

(declare-fun b!5679730 () Bool)

(declare-fun e!3495740 () Bool)

(declare-fun tp!1574982 () Bool)

(assert (=> b!5679730 (= e!3495740 tp!1574982)))

(declare-fun b!5679731 () Bool)

(declare-fun res!2400073 () Bool)

(declare-fun e!3495735 () Bool)

(assert (=> b!5679731 (=> res!2400073 e!3495735)))

(declare-datatypes ((List!63320 0))(
  ( (Nil!63196) (Cons!63196 (h!69644 Context!10114) (t!376632 List!63320)) )
))
(declare-fun zl!343 () List!63320)

(declare-fun isEmpty!35045 (List!63318) Bool)

(assert (=> b!5679731 (= res!2400073 (isEmpty!35045 (t!376630 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5679732 () Bool)

(declare-fun tp!1574986 () Bool)

(declare-fun tp!1574984 () Bool)

(assert (=> b!5679732 (= e!3495736 (and tp!1574986 tp!1574984))))

(declare-fun b!5679733 () Bool)

(declare-fun res!2400072 () Bool)

(declare-fun e!3495739 () Bool)

(assert (=> b!5679733 (=> res!2400072 e!3495739)))

(get-info :version)

(assert (=> b!5679733 (= res!2400072 (not ((_ is Cons!63194) (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5679734 () Bool)

(declare-fun res!2400084 () Bool)

(assert (=> b!5679734 (=> res!2400084 e!3495739)))

(declare-fun r!7292 () Regex!15673)

(declare-fun generalisedConcat!1288 (List!63318) Regex!15673)

(assert (=> b!5679734 (= res!2400084 (not (= r!7292 (generalisedConcat!1288 (exprs!5557 (h!69644 zl!343))))))))

(declare-fun b!5679735 () Bool)

(declare-datatypes ((Unit!156224 0))(
  ( (Unit!156225) )
))
(declare-fun e!3495743 () Unit!156224)

(declare-fun Unit!156226 () Unit!156224)

(assert (=> b!5679735 (= e!3495743 Unit!156226)))

(declare-fun e!3495738 () Bool)

(assert (=> b!5679736 (= e!3495735 e!3495738)))

(declare-fun res!2400076 () Bool)

(assert (=> b!5679736 (=> res!2400076 e!3495738)))

(assert (=> b!5679736 (= res!2400076 (or (and ((_ is ElementMatch!15673) (regOne!31858 r!7292)) (= (c!999361 (regOne!31858 r!7292)) (h!69643 s!2326))) ((_ is Union!15673) (regOne!31858 r!7292))))))

(declare-fun lt!2270162 () Unit!156224)

(assert (=> b!5679736 (= lt!2270162 e!3495743)))

(declare-fun c!999360 () Bool)

(declare-fun nullable!5705 (Regex!15673) Bool)

(assert (=> b!5679736 (= c!999360 (nullable!5705 (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!10114))

(declare-fun lambda!306019 () Int)

(declare-fun flatMap!1286 ((InoxSet Context!10114) Int) (InoxSet Context!10114))

(declare-fun derivationStepZipperUp!941 (Context!10114 C!31616) (InoxSet Context!10114))

(assert (=> b!5679736 (= (flatMap!1286 z!1189 lambda!306019) (derivationStepZipperUp!941 (h!69644 zl!343) (h!69643 s!2326)))))

(declare-fun lt!2270158 () Unit!156224)

(declare-fun lemmaFlatMapOnSingletonSet!818 ((InoxSet Context!10114) Context!10114 Int) Unit!156224)

(assert (=> b!5679736 (= lt!2270158 (lemmaFlatMapOnSingletonSet!818 z!1189 (h!69644 zl!343) lambda!306019))))

(declare-fun lt!2270159 () Context!10114)

(assert (=> b!5679736 (= lt!2270156 (derivationStepZipperUp!941 lt!2270159 (h!69643 s!2326)))))

(declare-fun lt!2270160 () (InoxSet Context!10114))

(declare-fun derivationStepZipperDown!1015 (Regex!15673 Context!10114 C!31616) (InoxSet Context!10114))

(assert (=> b!5679736 (= lt!2270160 (derivationStepZipperDown!1015 (h!69642 (exprs!5557 (h!69644 zl!343))) lt!2270159 (h!69643 s!2326)))))

(assert (=> b!5679736 (= lt!2270159 (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun lt!2270170 () (InoxSet Context!10114))

(assert (=> b!5679736 (= lt!2270170 (derivationStepZipperUp!941 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))) (h!69643 s!2326)))))

(declare-fun b!5679737 () Bool)

(declare-fun res!2400074 () Bool)

(assert (=> b!5679737 (=> res!2400074 e!3495739)))

(declare-fun generalisedUnion!1536 (List!63318) Regex!15673)

(declare-fun unfocusZipperList!1101 (List!63320) List!63318)

(assert (=> b!5679737 (= res!2400074 (not (= r!7292 (generalisedUnion!1536 (unfocusZipperList!1101 zl!343)))))))

(declare-fun b!5679739 () Bool)

(declare-fun e!3495732 () Bool)

(declare-fun tp_is_empty!40599 () Bool)

(declare-fun tp!1574990 () Bool)

(assert (=> b!5679739 (= e!3495732 (and tp_is_empty!40599 tp!1574990))))

(declare-fun b!5679740 () Bool)

(assert (=> b!5679740 (= e!3495736 tp_is_empty!40599)))

(declare-fun setElem!37995 () Context!10114)

(declare-fun setNonEmpty!37995 () Bool)

(declare-fun setRes!37995 () Bool)

(declare-fun tp!1574985 () Bool)

(declare-fun e!3495733 () Bool)

(declare-fun inv!82429 (Context!10114) Bool)

(assert (=> setNonEmpty!37995 (= setRes!37995 (and tp!1574985 (inv!82429 setElem!37995) e!3495733))))

(declare-fun setRest!37995 () (InoxSet Context!10114))

(assert (=> setNonEmpty!37995 (= z!1189 ((_ map or) (store ((as const (Array Context!10114 Bool)) false) setElem!37995 true) setRest!37995))))

(declare-fun b!5679741 () Bool)

(declare-fun e!3495737 () Bool)

(assert (=> b!5679741 (= e!3495737 (not e!3495739))))

(declare-fun res!2400082 () Bool)

(assert (=> b!5679741 (=> res!2400082 e!3495739)))

(assert (=> b!5679741 (= res!2400082 (not ((_ is Cons!63196) zl!343)))))

(declare-fun lt!2270157 () Bool)

(declare-fun matchRSpec!2776 (Regex!15673 List!63319) Bool)

(assert (=> b!5679741 (= lt!2270157 (matchRSpec!2776 r!7292 s!2326))))

(declare-fun matchR!7858 (Regex!15673 List!63319) Bool)

(assert (=> b!5679741 (= lt!2270157 (matchR!7858 r!7292 s!2326))))

(declare-fun lt!2270166 () Unit!156224)

(declare-fun mainMatchTheorem!2776 (Regex!15673 List!63319) Unit!156224)

(assert (=> b!5679741 (= lt!2270166 (mainMatchTheorem!2776 r!7292 s!2326))))

(declare-fun b!5679742 () Bool)

(declare-fun res!2400079 () Bool)

(assert (=> b!5679742 (=> res!2400079 e!3495738)))

(assert (=> b!5679742 (= res!2400079 (or ((_ is Concat!24518) (regOne!31858 r!7292)) (not ((_ is Star!15673) (regOne!31858 r!7292)))))))

(declare-fun b!5679743 () Bool)

(declare-fun tp!1574987 () Bool)

(assert (=> b!5679743 (= e!3495733 tp!1574987)))

(declare-fun b!5679744 () Bool)

(declare-fun res!2400071 () Bool)

(assert (=> b!5679744 (=> res!2400071 e!3495739)))

(declare-fun isEmpty!35046 (List!63320) Bool)

(assert (=> b!5679744 (= res!2400071 (not (isEmpty!35046 (t!376632 zl!343))))))

(declare-fun b!5679745 () Bool)

(declare-fun e!3495742 () Bool)

(assert (=> b!5679745 (= e!3495738 e!3495742)))

(declare-fun res!2400077 () Bool)

(assert (=> b!5679745 (=> res!2400077 e!3495742)))

(declare-fun lt!2270154 () (InoxSet Context!10114))

(assert (=> b!5679745 (= res!2400077 (not (= lt!2270160 lt!2270154)))))

(declare-fun lt!2270172 () List!63318)

(assert (=> b!5679745 (= lt!2270154 (derivationStepZipperDown!1015 (reg!16002 (regOne!31858 r!7292)) (Context!10115 lt!2270172) (h!69643 s!2326)))))

(assert (=> b!5679745 (= lt!2270172 (Cons!63194 (Star!15673 (reg!16002 (regOne!31858 r!7292))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun e!3495744 () Bool)

(declare-fun lt!2270155 () (InoxSet Context!10114))

(declare-fun lt!2270163 () (InoxSet Context!10114))

(declare-fun b!5679746 () Bool)

(assert (=> b!5679746 (= e!3495744 (= (matchZipper!1811 lt!2270155 s!2326) (matchZipper!1811 lt!2270163 (t!376631 s!2326))))))

(declare-fun setIsEmpty!37995 () Bool)

(assert (=> setIsEmpty!37995 setRes!37995))

(declare-fun b!5679747 () Bool)

(declare-fun res!2400085 () Bool)

(assert (=> b!5679747 (=> (not res!2400085) (not e!3495737))))

(declare-fun unfocusZipper!1415 (List!63320) Regex!15673)

(assert (=> b!5679747 (= res!2400085 (= r!7292 (unfocusZipper!1415 zl!343)))))

(declare-fun b!5679748 () Bool)

(declare-fun res!2400070 () Bool)

(assert (=> b!5679748 (=> (not res!2400070) (not e!3495737))))

(declare-fun toList!9457 ((InoxSet Context!10114)) List!63320)

(assert (=> b!5679748 (= res!2400070 (= (toList!9457 z!1189) zl!343))))

(declare-fun b!5679749 () Bool)

(declare-fun Unit!156227 () Unit!156224)

(assert (=> b!5679749 (= e!3495743 Unit!156227)))

(declare-fun lt!2270164 () Unit!156224)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!698 ((InoxSet Context!10114) (InoxSet Context!10114) List!63319) Unit!156224)

(assert (=> b!5679749 (= lt!2270164 (lemmaZipperConcatMatchesSameAsBothZippers!698 lt!2270160 lt!2270156 (t!376631 s!2326)))))

(declare-fun res!2400081 () Bool)

(assert (=> b!5679749 (= res!2400081 (matchZipper!1811 lt!2270160 (t!376631 s!2326)))))

(assert (=> b!5679749 (=> res!2400081 e!3495731)))

(assert (=> b!5679749 (= (matchZipper!1811 ((_ map or) lt!2270160 lt!2270156) (t!376631 s!2326)) e!3495731)))

(declare-fun b!5679750 () Bool)

(assert (=> b!5679750 (= e!3495742 e!3495744)))

(declare-fun res!2400075 () Bool)

(assert (=> b!5679750 (=> res!2400075 e!3495744)))

(assert (=> b!5679750 (= res!2400075 (not (= lt!2270163 lt!2270154)))))

(declare-fun lt!2270169 () Context!10114)

(assert (=> b!5679750 (= (flatMap!1286 lt!2270155 lambda!306019) (derivationStepZipperUp!941 lt!2270169 (h!69643 s!2326)))))

(declare-fun lt!2270167 () Unit!156224)

(assert (=> b!5679750 (= lt!2270167 (lemmaFlatMapOnSingletonSet!818 lt!2270155 lt!2270169 lambda!306019))))

(declare-fun lt!2270165 () (InoxSet Context!10114))

(assert (=> b!5679750 (= lt!2270165 (derivationStepZipperUp!941 lt!2270169 (h!69643 s!2326)))))

(declare-fun derivationStepZipper!1756 ((InoxSet Context!10114) C!31616) (InoxSet Context!10114))

(assert (=> b!5679750 (= lt!2270163 (derivationStepZipper!1756 lt!2270155 (h!69643 s!2326)))))

(assert (=> b!5679750 (= lt!2270155 (store ((as const (Array Context!10114 Bool)) false) lt!2270169 true))))

(assert (=> b!5679750 (= lt!2270169 (Context!10115 (Cons!63194 (reg!16002 (regOne!31858 r!7292)) lt!2270172)))))

(declare-fun res!2400083 () Bool)

(assert (=> start!586336 (=> (not res!2400083) (not e!3495737))))

(declare-fun validRegex!7409 (Regex!15673) Bool)

(assert (=> start!586336 (= res!2400083 (validRegex!7409 r!7292))))

(assert (=> start!586336 e!3495737))

(assert (=> start!586336 e!3495736))

(declare-fun condSetEmpty!37995 () Bool)

(assert (=> start!586336 (= condSetEmpty!37995 (= z!1189 ((as const (Array Context!10114 Bool)) false)))))

(assert (=> start!586336 setRes!37995))

(declare-fun e!3495734 () Bool)

(assert (=> start!586336 e!3495734))

(assert (=> start!586336 e!3495732))

(assert (=> b!5679738 (= e!3495739 e!3495735)))

(declare-fun res!2400078 () Bool)

(assert (=> b!5679738 (=> res!2400078 e!3495735)))

(declare-fun lt!2270168 () Bool)

(assert (=> b!5679738 (= res!2400078 (or (not (= lt!2270157 lt!2270168)) ((_ is Nil!63195) s!2326)))))

(declare-fun Exists!2773 (Int) Bool)

(assert (=> b!5679738 (= (Exists!2773 lambda!306017) (Exists!2773 lambda!306018))))

(declare-fun lt!2270161 () Unit!156224)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1402 (Regex!15673 Regex!15673 List!63319) Unit!156224)

(assert (=> b!5679738 (= lt!2270161 (lemmaExistCutMatchRandMatchRSpecEquivalent!1402 (regOne!31858 r!7292) (regTwo!31858 r!7292) s!2326))))

(assert (=> b!5679738 (= lt!2270168 (Exists!2773 lambda!306017))))

(declare-datatypes ((tuple2!65540 0))(
  ( (tuple2!65541 (_1!36073 List!63319) (_2!36073 List!63319)) )
))
(declare-datatypes ((Option!15682 0))(
  ( (None!15681) (Some!15681 (v!51730 tuple2!65540)) )
))
(declare-fun isDefined!12385 (Option!15682) Bool)

(declare-fun findConcatSeparation!2096 (Regex!15673 Regex!15673 List!63319 List!63319 List!63319) Option!15682)

(assert (=> b!5679738 (= lt!2270168 (isDefined!12385 (findConcatSeparation!2096 (regOne!31858 r!7292) (regTwo!31858 r!7292) Nil!63195 s!2326 s!2326)))))

(declare-fun lt!2270171 () Unit!156224)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1860 (Regex!15673 Regex!15673 List!63319) Unit!156224)

(assert (=> b!5679738 (= lt!2270171 (lemmaFindConcatSeparationEquivalentToExists!1860 (regOne!31858 r!7292) (regTwo!31858 r!7292) s!2326))))

(declare-fun tp!1574981 () Bool)

(declare-fun b!5679751 () Bool)

(assert (=> b!5679751 (= e!3495734 (and (inv!82429 (h!69644 zl!343)) e!3495740 tp!1574981))))

(declare-fun b!5679752 () Bool)

(declare-fun e!3495741 () Bool)

(assert (=> b!5679752 (= e!3495741 (nullable!5705 (regOne!31858 (regOne!31858 r!7292))))))

(declare-fun b!5679753 () Bool)

(declare-fun res!2400080 () Bool)

(assert (=> b!5679753 (=> res!2400080 e!3495739)))

(assert (=> b!5679753 (= res!2400080 (or ((_ is EmptyExpr!15673) r!7292) ((_ is EmptyLang!15673) r!7292) ((_ is ElementMatch!15673) r!7292) ((_ is Union!15673) r!7292) (not ((_ is Concat!24518) r!7292))))))

(declare-fun b!5679754 () Bool)

(declare-fun res!2400069 () Bool)

(assert (=> b!5679754 (=> res!2400069 e!3495738)))

(assert (=> b!5679754 (= res!2400069 e!3495741)))

(declare-fun res!2400068 () Bool)

(assert (=> b!5679754 (=> (not res!2400068) (not e!3495741))))

(assert (=> b!5679754 (= res!2400068 ((_ is Concat!24518) (regOne!31858 r!7292)))))

(declare-fun b!5679755 () Bool)

(declare-fun tp!1574983 () Bool)

(declare-fun tp!1574989 () Bool)

(assert (=> b!5679755 (= e!3495736 (and tp!1574983 tp!1574989))))

(assert (= (and start!586336 res!2400083) b!5679748))

(assert (= (and b!5679748 res!2400070) b!5679747))

(assert (= (and b!5679747 res!2400085) b!5679741))

(assert (= (and b!5679741 (not res!2400082)) b!5679744))

(assert (= (and b!5679744 (not res!2400071)) b!5679734))

(assert (= (and b!5679734 (not res!2400084)) b!5679733))

(assert (= (and b!5679733 (not res!2400072)) b!5679737))

(assert (= (and b!5679737 (not res!2400074)) b!5679753))

(assert (= (and b!5679753 (not res!2400080)) b!5679738))

(assert (= (and b!5679738 (not res!2400078)) b!5679731))

(assert (= (and b!5679731 (not res!2400073)) b!5679736))

(assert (= (and b!5679736 c!999360) b!5679749))

(assert (= (and b!5679736 (not c!999360)) b!5679735))

(assert (= (and b!5679749 (not res!2400081)) b!5679729))

(assert (= (and b!5679736 (not res!2400076)) b!5679754))

(assert (= (and b!5679754 res!2400068) b!5679752))

(assert (= (and b!5679754 (not res!2400069)) b!5679742))

(assert (= (and b!5679742 (not res!2400079)) b!5679745))

(assert (= (and b!5679745 (not res!2400077)) b!5679750))

(assert (= (and b!5679750 (not res!2400075)) b!5679746))

(assert (= (and start!586336 ((_ is ElementMatch!15673) r!7292)) b!5679740))

(assert (= (and start!586336 ((_ is Concat!24518) r!7292)) b!5679755))

(assert (= (and start!586336 ((_ is Star!15673) r!7292)) b!5679728))

(assert (= (and start!586336 ((_ is Union!15673) r!7292)) b!5679732))

(assert (= (and start!586336 condSetEmpty!37995) setIsEmpty!37995))

(assert (= (and start!586336 (not condSetEmpty!37995)) setNonEmpty!37995))

(assert (= setNonEmpty!37995 b!5679743))

(assert (= b!5679751 b!5679730))

(assert (= (and start!586336 ((_ is Cons!63196) zl!343)) b!5679751))

(assert (= (and start!586336 ((_ is Cons!63195) s!2326)) b!5679739))

(declare-fun m!6639400 () Bool)

(assert (=> b!5679748 m!6639400))

(declare-fun m!6639402 () Bool)

(assert (=> b!5679750 m!6639402))

(declare-fun m!6639404 () Bool)

(assert (=> b!5679750 m!6639404))

(declare-fun m!6639406 () Bool)

(assert (=> b!5679750 m!6639406))

(declare-fun m!6639408 () Bool)

(assert (=> b!5679750 m!6639408))

(declare-fun m!6639410 () Bool)

(assert (=> b!5679750 m!6639410))

(declare-fun m!6639412 () Bool)

(assert (=> b!5679731 m!6639412))

(declare-fun m!6639414 () Bool)

(assert (=> b!5679746 m!6639414))

(declare-fun m!6639416 () Bool)

(assert (=> b!5679746 m!6639416))

(declare-fun m!6639418 () Bool)

(assert (=> b!5679752 m!6639418))

(declare-fun m!6639420 () Bool)

(assert (=> b!5679729 m!6639420))

(declare-fun m!6639422 () Bool)

(assert (=> b!5679734 m!6639422))

(declare-fun m!6639424 () Bool)

(assert (=> b!5679741 m!6639424))

(declare-fun m!6639426 () Bool)

(assert (=> b!5679741 m!6639426))

(declare-fun m!6639428 () Bool)

(assert (=> b!5679741 m!6639428))

(declare-fun m!6639430 () Bool)

(assert (=> b!5679736 m!6639430))

(declare-fun m!6639432 () Bool)

(assert (=> b!5679736 m!6639432))

(declare-fun m!6639434 () Bool)

(assert (=> b!5679736 m!6639434))

(declare-fun m!6639436 () Bool)

(assert (=> b!5679736 m!6639436))

(declare-fun m!6639438 () Bool)

(assert (=> b!5679736 m!6639438))

(declare-fun m!6639440 () Bool)

(assert (=> b!5679736 m!6639440))

(declare-fun m!6639442 () Bool)

(assert (=> b!5679736 m!6639442))

(declare-fun m!6639444 () Bool)

(assert (=> b!5679749 m!6639444))

(declare-fun m!6639446 () Bool)

(assert (=> b!5679749 m!6639446))

(declare-fun m!6639448 () Bool)

(assert (=> b!5679749 m!6639448))

(declare-fun m!6639450 () Bool)

(assert (=> setNonEmpty!37995 m!6639450))

(declare-fun m!6639452 () Bool)

(assert (=> b!5679738 m!6639452))

(declare-fun m!6639454 () Bool)

(assert (=> b!5679738 m!6639454))

(declare-fun m!6639456 () Bool)

(assert (=> b!5679738 m!6639456))

(assert (=> b!5679738 m!6639452))

(declare-fun m!6639458 () Bool)

(assert (=> b!5679738 m!6639458))

(declare-fun m!6639460 () Bool)

(assert (=> b!5679738 m!6639460))

(assert (=> b!5679738 m!6639454))

(declare-fun m!6639462 () Bool)

(assert (=> b!5679738 m!6639462))

(declare-fun m!6639464 () Bool)

(assert (=> b!5679751 m!6639464))

(declare-fun m!6639466 () Bool)

(assert (=> b!5679747 m!6639466))

(declare-fun m!6639468 () Bool)

(assert (=> b!5679745 m!6639468))

(declare-fun m!6639470 () Bool)

(assert (=> b!5679744 m!6639470))

(declare-fun m!6639472 () Bool)

(assert (=> start!586336 m!6639472))

(declare-fun m!6639474 () Bool)

(assert (=> b!5679737 m!6639474))

(assert (=> b!5679737 m!6639474))

(declare-fun m!6639476 () Bool)

(assert (=> b!5679737 m!6639476))

(check-sat (not setNonEmpty!37995) (not b!5679739) (not b!5679745) (not b!5679734) (not b!5679736) (not b!5679730) (not b!5679743) tp_is_empty!40599 (not b!5679731) (not b!5679741) (not b!5679750) (not b!5679748) (not b!5679729) (not b!5679752) (not b!5679749) (not b!5679738) (not b!5679747) (not b!5679728) (not b!5679737) (not b!5679746) (not b!5679744) (not b!5679732) (not b!5679755) (not b!5679751) (not start!586336))
(check-sat)
(get-model)

(declare-fun b!5679962 () Bool)

(declare-fun e!3495861 () Bool)

(declare-fun e!3495863 () Bool)

(assert (=> b!5679962 (= e!3495861 e!3495863)))

(declare-fun c!999433 () Bool)

(declare-fun tail!11149 (List!63318) List!63318)

(assert (=> b!5679962 (= c!999433 (isEmpty!35045 (tail!11149 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5679963 () Bool)

(declare-fun e!3495859 () Bool)

(assert (=> b!5679963 (= e!3495859 e!3495861)))

(declare-fun c!999434 () Bool)

(assert (=> b!5679963 (= c!999434 (isEmpty!35045 (exprs!5557 (h!69644 zl!343))))))

(declare-fun b!5679964 () Bool)

(declare-fun e!3495862 () Regex!15673)

(declare-fun e!3495860 () Regex!15673)

(assert (=> b!5679964 (= e!3495862 e!3495860)))

(declare-fun c!999432 () Bool)

(assert (=> b!5679964 (= c!999432 ((_ is Cons!63194) (exprs!5557 (h!69644 zl!343))))))

(declare-fun b!5679965 () Bool)

(assert (=> b!5679965 (= e!3495860 (Concat!24518 (h!69642 (exprs!5557 (h!69644 zl!343))) (generalisedConcat!1288 (t!376630 (exprs!5557 (h!69644 zl!343))))))))

(declare-fun b!5679966 () Bool)

(declare-fun lt!2270195 () Regex!15673)

(declare-fun head!12054 (List!63318) Regex!15673)

(assert (=> b!5679966 (= e!3495863 (= lt!2270195 (head!12054 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5679967 () Bool)

(declare-fun isEmptyExpr!1195 (Regex!15673) Bool)

(assert (=> b!5679967 (= e!3495861 (isEmptyExpr!1195 lt!2270195))))

(declare-fun b!5679968 () Bool)

(declare-fun isConcat!718 (Regex!15673) Bool)

(assert (=> b!5679968 (= e!3495863 (isConcat!718 lt!2270195))))

(declare-fun b!5679969 () Bool)

(assert (=> b!5679969 (= e!3495860 EmptyExpr!15673)))

(declare-fun b!5679970 () Bool)

(declare-fun e!3495858 () Bool)

(assert (=> b!5679970 (= e!3495858 (isEmpty!35045 (t!376630 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5679971 () Bool)

(assert (=> b!5679971 (= e!3495862 (h!69642 (exprs!5557 (h!69644 zl!343))))))

(declare-fun d!1792602 () Bool)

(assert (=> d!1792602 e!3495859))

(declare-fun res!2400150 () Bool)

(assert (=> d!1792602 (=> (not res!2400150) (not e!3495859))))

(assert (=> d!1792602 (= res!2400150 (validRegex!7409 lt!2270195))))

(assert (=> d!1792602 (= lt!2270195 e!3495862)))

(declare-fun c!999431 () Bool)

(assert (=> d!1792602 (= c!999431 e!3495858)))

(declare-fun res!2400151 () Bool)

(assert (=> d!1792602 (=> (not res!2400151) (not e!3495858))))

(assert (=> d!1792602 (= res!2400151 ((_ is Cons!63194) (exprs!5557 (h!69644 zl!343))))))

(declare-fun lambda!306034 () Int)

(declare-fun forall!14820 (List!63318 Int) Bool)

(assert (=> d!1792602 (forall!14820 (exprs!5557 (h!69644 zl!343)) lambda!306034)))

(assert (=> d!1792602 (= (generalisedConcat!1288 (exprs!5557 (h!69644 zl!343))) lt!2270195)))

(assert (= (and d!1792602 res!2400151) b!5679970))

(assert (= (and d!1792602 c!999431) b!5679971))

(assert (= (and d!1792602 (not c!999431)) b!5679964))

(assert (= (and b!5679964 c!999432) b!5679965))

(assert (= (and b!5679964 (not c!999432)) b!5679969))

(assert (= (and d!1792602 res!2400150) b!5679963))

(assert (= (and b!5679963 c!999434) b!5679967))

(assert (= (and b!5679963 (not c!999434)) b!5679962))

(assert (= (and b!5679962 c!999433) b!5679966))

(assert (= (and b!5679962 (not c!999433)) b!5679968))

(declare-fun m!6639588 () Bool)

(assert (=> b!5679963 m!6639588))

(assert (=> b!5679970 m!6639412))

(declare-fun m!6639590 () Bool)

(assert (=> b!5679965 m!6639590))

(declare-fun m!6639592 () Bool)

(assert (=> b!5679967 m!6639592))

(declare-fun m!6639594 () Bool)

(assert (=> d!1792602 m!6639594))

(declare-fun m!6639596 () Bool)

(assert (=> d!1792602 m!6639596))

(declare-fun m!6639598 () Bool)

(assert (=> b!5679968 m!6639598))

(declare-fun m!6639600 () Bool)

(assert (=> b!5679962 m!6639600))

(assert (=> b!5679962 m!6639600))

(declare-fun m!6639602 () Bool)

(assert (=> b!5679962 m!6639602))

(declare-fun m!6639604 () Bool)

(assert (=> b!5679966 m!6639604))

(assert (=> b!5679734 d!1792602))

(declare-fun d!1792620 () Bool)

(assert (=> d!1792620 (= (isEmpty!35046 (t!376632 zl!343)) ((_ is Nil!63196) (t!376632 zl!343)))))

(assert (=> b!5679744 d!1792620))

(declare-fun d!1792626 () Bool)

(declare-fun nullableFct!1783 (Regex!15673) Bool)

(assert (=> d!1792626 (= (nullable!5705 (regOne!31858 (regOne!31858 r!7292))) (nullableFct!1783 (regOne!31858 (regOne!31858 r!7292))))))

(declare-fun bs!1323799 () Bool)

(assert (= bs!1323799 d!1792626))

(declare-fun m!6639620 () Bool)

(assert (=> bs!1323799 m!6639620))

(assert (=> b!5679752 d!1792626))

(declare-fun bs!1323810 () Bool)

(declare-fun b!5680103 () Bool)

(assert (= bs!1323810 (and b!5680103 b!5679738)))

(declare-fun lambda!306050 () Int)

(assert (=> bs!1323810 (not (= lambda!306050 lambda!306017))))

(assert (=> bs!1323810 (not (= lambda!306050 lambda!306018))))

(assert (=> b!5680103 true))

(assert (=> b!5680103 true))

(declare-fun bs!1323814 () Bool)

(declare-fun b!5680107 () Bool)

(assert (= bs!1323814 (and b!5680107 b!5679738)))

(declare-fun lambda!306052 () Int)

(assert (=> bs!1323814 (not (= lambda!306052 lambda!306017))))

(assert (=> bs!1323814 (= lambda!306052 lambda!306018)))

(declare-fun bs!1323816 () Bool)

(assert (= bs!1323816 (and b!5680107 b!5680103)))

(assert (=> bs!1323816 (not (= lambda!306052 lambda!306050))))

(assert (=> b!5680107 true))

(assert (=> b!5680107 true))

(declare-fun call!431221 () Bool)

(declare-fun c!999479 () Bool)

(declare-fun bm!431215 () Bool)

(assert (=> bm!431215 (= call!431221 (Exists!2773 (ite c!999479 lambda!306050 lambda!306052)))))

(declare-fun b!5680098 () Bool)

(declare-fun res!2400196 () Bool)

(declare-fun e!3495936 () Bool)

(assert (=> b!5680098 (=> res!2400196 e!3495936)))

(declare-fun call!431220 () Bool)

(assert (=> b!5680098 (= res!2400196 call!431220)))

(declare-fun e!3495937 () Bool)

(assert (=> b!5680098 (= e!3495937 e!3495936)))

(declare-fun b!5680099 () Bool)

(declare-fun e!3495941 () Bool)

(assert (=> b!5680099 (= e!3495941 e!3495937)))

(assert (=> b!5680099 (= c!999479 ((_ is Star!15673) r!7292))))

(declare-fun b!5680100 () Bool)

(declare-fun e!3495938 () Bool)

(assert (=> b!5680100 (= e!3495938 (matchRSpec!2776 (regTwo!31859 r!7292) s!2326))))

(declare-fun b!5680101 () Bool)

(assert (=> b!5680101 (= e!3495941 e!3495938)))

(declare-fun res!2400195 () Bool)

(assert (=> b!5680101 (= res!2400195 (matchRSpec!2776 (regOne!31859 r!7292) s!2326))))

(assert (=> b!5680101 (=> res!2400195 e!3495938)))

(declare-fun b!5680102 () Bool)

(declare-fun e!3495939 () Bool)

(declare-fun e!3495940 () Bool)

(assert (=> b!5680102 (= e!3495939 e!3495940)))

(declare-fun res!2400194 () Bool)

(assert (=> b!5680102 (= res!2400194 (not ((_ is EmptyLang!15673) r!7292)))))

(assert (=> b!5680102 (=> (not res!2400194) (not e!3495940))))

(declare-fun b!5680104 () Bool)

(declare-fun c!999480 () Bool)

(assert (=> b!5680104 (= c!999480 ((_ is ElementMatch!15673) r!7292))))

(declare-fun e!3495942 () Bool)

(assert (=> b!5680104 (= e!3495940 e!3495942)))

(declare-fun b!5680105 () Bool)

(assert (=> b!5680105 (= e!3495939 call!431220)))

(declare-fun bm!431216 () Bool)

(declare-fun isEmpty!35048 (List!63319) Bool)

(assert (=> bm!431216 (= call!431220 (isEmpty!35048 s!2326))))

(declare-fun b!5680106 () Bool)

(assert (=> b!5680106 (= e!3495942 (= s!2326 (Cons!63195 (c!999361 r!7292) Nil!63195)))))

(assert (=> b!5680107 (= e!3495937 call!431221)))

(declare-fun b!5680108 () Bool)

(declare-fun c!999478 () Bool)

(assert (=> b!5680108 (= c!999478 ((_ is Union!15673) r!7292))))

(assert (=> b!5680108 (= e!3495942 e!3495941)))

(declare-fun d!1792632 () Bool)

(declare-fun c!999477 () Bool)

(assert (=> d!1792632 (= c!999477 ((_ is EmptyExpr!15673) r!7292))))

(assert (=> d!1792632 (= (matchRSpec!2776 r!7292 s!2326) e!3495939)))

(assert (=> b!5680103 (= e!3495936 call!431221)))

(assert (= (and d!1792632 c!999477) b!5680105))

(assert (= (and d!1792632 (not c!999477)) b!5680102))

(assert (= (and b!5680102 res!2400194) b!5680104))

(assert (= (and b!5680104 c!999480) b!5680106))

(assert (= (and b!5680104 (not c!999480)) b!5680108))

(assert (= (and b!5680108 c!999478) b!5680101))

(assert (= (and b!5680108 (not c!999478)) b!5680099))

(assert (= (and b!5680101 (not res!2400195)) b!5680100))

(assert (= (and b!5680099 c!999479) b!5680098))

(assert (= (and b!5680099 (not c!999479)) b!5680107))

(assert (= (and b!5680098 (not res!2400196)) b!5680103))

(assert (= (or b!5680103 b!5680107) bm!431215))

(assert (= (or b!5680105 b!5680098) bm!431216))

(declare-fun m!6639704 () Bool)

(assert (=> bm!431215 m!6639704))

(declare-fun m!6639706 () Bool)

(assert (=> b!5680100 m!6639706))

(declare-fun m!6639708 () Bool)

(assert (=> b!5680101 m!6639708))

(declare-fun m!6639710 () Bool)

(assert (=> bm!431216 m!6639710))

(assert (=> b!5679741 d!1792632))

(declare-fun b!5680186 () Bool)

(declare-fun res!2400240 () Bool)

(declare-fun e!3495989 () Bool)

(assert (=> b!5680186 (=> res!2400240 e!3495989)))

(assert (=> b!5680186 (= res!2400240 (not ((_ is ElementMatch!15673) r!7292)))))

(declare-fun e!3495992 () Bool)

(assert (=> b!5680186 (= e!3495992 e!3495989)))

(declare-fun b!5680187 () Bool)

(declare-fun lt!2270221 () Bool)

(assert (=> b!5680187 (= e!3495992 (not lt!2270221))))

(declare-fun b!5680188 () Bool)

(declare-fun e!3495986 () Bool)

(declare-fun head!12055 (List!63319) C!31616)

(assert (=> b!5680188 (= e!3495986 (not (= (head!12055 s!2326) (c!999361 r!7292))))))

(declare-fun b!5680189 () Bool)

(declare-fun e!3495987 () Bool)

(assert (=> b!5680189 (= e!3495987 e!3495992)))

(declare-fun c!999494 () Bool)

(assert (=> b!5680189 (= c!999494 ((_ is EmptyLang!15673) r!7292))))

(declare-fun d!1792658 () Bool)

(assert (=> d!1792658 e!3495987))

(declare-fun c!999495 () Bool)

(assert (=> d!1792658 (= c!999495 ((_ is EmptyExpr!15673) r!7292))))

(declare-fun e!3495991 () Bool)

(assert (=> d!1792658 (= lt!2270221 e!3495991)))

(declare-fun c!999493 () Bool)

(assert (=> d!1792658 (= c!999493 (isEmpty!35048 s!2326))))

(assert (=> d!1792658 (validRegex!7409 r!7292)))

(assert (=> d!1792658 (= (matchR!7858 r!7292 s!2326) lt!2270221)))

(declare-fun b!5680190 () Bool)

(declare-fun res!2400241 () Bool)

(assert (=> b!5680190 (=> res!2400241 e!3495986)))

(declare-fun tail!11150 (List!63319) List!63319)

(assert (=> b!5680190 (= res!2400241 (not (isEmpty!35048 (tail!11150 s!2326))))))

(declare-fun b!5680191 () Bool)

(declare-fun derivativeStep!4490 (Regex!15673 C!31616) Regex!15673)

(assert (=> b!5680191 (= e!3495991 (matchR!7858 (derivativeStep!4490 r!7292 (head!12055 s!2326)) (tail!11150 s!2326)))))

(declare-fun bm!431228 () Bool)

(declare-fun call!431233 () Bool)

(assert (=> bm!431228 (= call!431233 (isEmpty!35048 s!2326))))

(declare-fun b!5680192 () Bool)

(declare-fun res!2400244 () Bool)

(assert (=> b!5680192 (=> res!2400244 e!3495989)))

(declare-fun e!3495988 () Bool)

(assert (=> b!5680192 (= res!2400244 e!3495988)))

(declare-fun res!2400246 () Bool)

(assert (=> b!5680192 (=> (not res!2400246) (not e!3495988))))

(assert (=> b!5680192 (= res!2400246 lt!2270221)))

(declare-fun b!5680193 () Bool)

(declare-fun e!3495990 () Bool)

(assert (=> b!5680193 (= e!3495990 e!3495986)))

(declare-fun res!2400242 () Bool)

(assert (=> b!5680193 (=> res!2400242 e!3495986)))

(assert (=> b!5680193 (= res!2400242 call!431233)))

(declare-fun b!5680194 () Bool)

(assert (=> b!5680194 (= e!3495989 e!3495990)))

(declare-fun res!2400243 () Bool)

(assert (=> b!5680194 (=> (not res!2400243) (not e!3495990))))

(assert (=> b!5680194 (= res!2400243 (not lt!2270221))))

(declare-fun b!5680195 () Bool)

(assert (=> b!5680195 (= e!3495988 (= (head!12055 s!2326) (c!999361 r!7292)))))

(declare-fun b!5680196 () Bool)

(declare-fun res!2400247 () Bool)

(assert (=> b!5680196 (=> (not res!2400247) (not e!3495988))))

(assert (=> b!5680196 (= res!2400247 (not call!431233))))

(declare-fun b!5680197 () Bool)

(declare-fun res!2400245 () Bool)

(assert (=> b!5680197 (=> (not res!2400245) (not e!3495988))))

(assert (=> b!5680197 (= res!2400245 (isEmpty!35048 (tail!11150 s!2326)))))

(declare-fun b!5680198 () Bool)

(assert (=> b!5680198 (= e!3495991 (nullable!5705 r!7292))))

(declare-fun b!5680199 () Bool)

(assert (=> b!5680199 (= e!3495987 (= lt!2270221 call!431233))))

(assert (= (and d!1792658 c!999493) b!5680198))

(assert (= (and d!1792658 (not c!999493)) b!5680191))

(assert (= (and d!1792658 c!999495) b!5680199))

(assert (= (and d!1792658 (not c!999495)) b!5680189))

(assert (= (and b!5680189 c!999494) b!5680187))

(assert (= (and b!5680189 (not c!999494)) b!5680186))

(assert (= (and b!5680186 (not res!2400240)) b!5680192))

(assert (= (and b!5680192 res!2400246) b!5680196))

(assert (= (and b!5680196 res!2400247) b!5680197))

(assert (= (and b!5680197 res!2400245) b!5680195))

(assert (= (and b!5680192 (not res!2400244)) b!5680194))

(assert (= (and b!5680194 res!2400243) b!5680193))

(assert (= (and b!5680193 (not res!2400242)) b!5680190))

(assert (= (and b!5680190 (not res!2400241)) b!5680188))

(assert (= (or b!5680199 b!5680193 b!5680196) bm!431228))

(declare-fun m!6639728 () Bool)

(assert (=> b!5680198 m!6639728))

(declare-fun m!6639730 () Bool)

(assert (=> b!5680197 m!6639730))

(assert (=> b!5680197 m!6639730))

(declare-fun m!6639732 () Bool)

(assert (=> b!5680197 m!6639732))

(declare-fun m!6639734 () Bool)

(assert (=> b!5680191 m!6639734))

(assert (=> b!5680191 m!6639734))

(declare-fun m!6639736 () Bool)

(assert (=> b!5680191 m!6639736))

(assert (=> b!5680191 m!6639730))

(assert (=> b!5680191 m!6639736))

(assert (=> b!5680191 m!6639730))

(declare-fun m!6639738 () Bool)

(assert (=> b!5680191 m!6639738))

(assert (=> d!1792658 m!6639710))

(assert (=> d!1792658 m!6639472))

(assert (=> b!5680188 m!6639734))

(assert (=> b!5680195 m!6639734))

(assert (=> bm!431228 m!6639710))

(assert (=> b!5680190 m!6639730))

(assert (=> b!5680190 m!6639730))

(assert (=> b!5680190 m!6639732))

(assert (=> b!5679741 d!1792658))

(declare-fun d!1792666 () Bool)

(assert (=> d!1792666 (= (matchR!7858 r!7292 s!2326) (matchRSpec!2776 r!7292 s!2326))))

(declare-fun lt!2270224 () Unit!156224)

(declare-fun choose!42970 (Regex!15673 List!63319) Unit!156224)

(assert (=> d!1792666 (= lt!2270224 (choose!42970 r!7292 s!2326))))

(assert (=> d!1792666 (validRegex!7409 r!7292)))

(assert (=> d!1792666 (= (mainMatchTheorem!2776 r!7292 s!2326) lt!2270224)))

(declare-fun bs!1323830 () Bool)

(assert (= bs!1323830 d!1792666))

(assert (=> bs!1323830 m!6639426))

(assert (=> bs!1323830 m!6639424))

(declare-fun m!6639744 () Bool)

(assert (=> bs!1323830 m!6639744))

(assert (=> bs!1323830 m!6639472))

(assert (=> b!5679741 d!1792666))

(declare-fun d!1792672 () Bool)

(declare-fun choose!42972 ((InoxSet Context!10114) Int) (InoxSet Context!10114))

(assert (=> d!1792672 (= (flatMap!1286 lt!2270155 lambda!306019) (choose!42972 lt!2270155 lambda!306019))))

(declare-fun bs!1323831 () Bool)

(assert (= bs!1323831 d!1792672))

(declare-fun m!6639746 () Bool)

(assert (=> bs!1323831 m!6639746))

(assert (=> b!5679750 d!1792672))

(declare-fun b!5680254 () Bool)

(declare-fun e!3496021 () (InoxSet Context!10114))

(declare-fun e!3496022 () (InoxSet Context!10114))

(assert (=> b!5680254 (= e!3496021 e!3496022)))

(declare-fun c!999500 () Bool)

(assert (=> b!5680254 (= c!999500 ((_ is Cons!63194) (exprs!5557 lt!2270169)))))

(declare-fun call!431236 () (InoxSet Context!10114))

(declare-fun b!5680255 () Bool)

(assert (=> b!5680255 (= e!3496021 ((_ map or) call!431236 (derivationStepZipperUp!941 (Context!10115 (t!376630 (exprs!5557 lt!2270169))) (h!69643 s!2326))))))

(declare-fun b!5680256 () Bool)

(declare-fun e!3496020 () Bool)

(assert (=> b!5680256 (= e!3496020 (nullable!5705 (h!69642 (exprs!5557 lt!2270169))))))

(declare-fun bm!431231 () Bool)

(assert (=> bm!431231 (= call!431236 (derivationStepZipperDown!1015 (h!69642 (exprs!5557 lt!2270169)) (Context!10115 (t!376630 (exprs!5557 lt!2270169))) (h!69643 s!2326)))))

(declare-fun d!1792674 () Bool)

(declare-fun c!999501 () Bool)

(assert (=> d!1792674 (= c!999501 e!3496020)))

(declare-fun res!2400250 () Bool)

(assert (=> d!1792674 (=> (not res!2400250) (not e!3496020))))

(assert (=> d!1792674 (= res!2400250 ((_ is Cons!63194) (exprs!5557 lt!2270169)))))

(assert (=> d!1792674 (= (derivationStepZipperUp!941 lt!2270169 (h!69643 s!2326)) e!3496021)))

(declare-fun b!5680257 () Bool)

(assert (=> b!5680257 (= e!3496022 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680258 () Bool)

(assert (=> b!5680258 (= e!3496022 call!431236)))

(assert (= (and d!1792674 res!2400250) b!5680256))

(assert (= (and d!1792674 c!999501) b!5680255))

(assert (= (and d!1792674 (not c!999501)) b!5680254))

(assert (= (and b!5680254 c!999500) b!5680258))

(assert (= (and b!5680254 (not c!999500)) b!5680257))

(assert (= (or b!5680255 b!5680258) bm!431231))

(declare-fun m!6639748 () Bool)

(assert (=> b!5680255 m!6639748))

(declare-fun m!6639750 () Bool)

(assert (=> b!5680256 m!6639750))

(declare-fun m!6639752 () Bool)

(assert (=> bm!431231 m!6639752))

(assert (=> b!5679750 d!1792674))

(declare-fun d!1792676 () Bool)

(declare-fun dynLambda!24730 (Int Context!10114) (InoxSet Context!10114))

(assert (=> d!1792676 (= (flatMap!1286 lt!2270155 lambda!306019) (dynLambda!24730 lambda!306019 lt!2270169))))

(declare-fun lt!2270227 () Unit!156224)

(declare-fun choose!42974 ((InoxSet Context!10114) Context!10114 Int) Unit!156224)

(assert (=> d!1792676 (= lt!2270227 (choose!42974 lt!2270155 lt!2270169 lambda!306019))))

(assert (=> d!1792676 (= lt!2270155 (store ((as const (Array Context!10114 Bool)) false) lt!2270169 true))))

(assert (=> d!1792676 (= (lemmaFlatMapOnSingletonSet!818 lt!2270155 lt!2270169 lambda!306019) lt!2270227)))

(declare-fun b_lambda!214775 () Bool)

(assert (=> (not b_lambda!214775) (not d!1792676)))

(declare-fun bs!1323832 () Bool)

(assert (= bs!1323832 d!1792676))

(assert (=> bs!1323832 m!6639402))

(declare-fun m!6639754 () Bool)

(assert (=> bs!1323832 m!6639754))

(declare-fun m!6639756 () Bool)

(assert (=> bs!1323832 m!6639756))

(assert (=> bs!1323832 m!6639410))

(assert (=> b!5679750 d!1792676))

(declare-fun bs!1323833 () Bool)

(declare-fun d!1792678 () Bool)

(assert (= bs!1323833 (and d!1792678 b!5679736)))

(declare-fun lambda!306062 () Int)

(assert (=> bs!1323833 (= lambda!306062 lambda!306019)))

(assert (=> d!1792678 true))

(assert (=> d!1792678 (= (derivationStepZipper!1756 lt!2270155 (h!69643 s!2326)) (flatMap!1286 lt!2270155 lambda!306062))))

(declare-fun bs!1323834 () Bool)

(assert (= bs!1323834 d!1792678))

(declare-fun m!6639758 () Bool)

(assert (=> bs!1323834 m!6639758))

(assert (=> b!5679750 d!1792678))

(declare-fun bs!1323835 () Bool)

(declare-fun d!1792680 () Bool)

(assert (= bs!1323835 (and d!1792680 d!1792602)))

(declare-fun lambda!306065 () Int)

(assert (=> bs!1323835 (= lambda!306065 lambda!306034)))

(assert (=> d!1792680 (= (inv!82429 (h!69644 zl!343)) (forall!14820 (exprs!5557 (h!69644 zl!343)) lambda!306065))))

(declare-fun bs!1323836 () Bool)

(assert (= bs!1323836 d!1792680))

(declare-fun m!6639760 () Bool)

(assert (=> bs!1323836 m!6639760))

(assert (=> b!5679751 d!1792680))

(declare-fun d!1792682 () Bool)

(assert (=> d!1792682 (= (isEmpty!35045 (t!376630 (exprs!5557 (h!69644 zl!343)))) ((_ is Nil!63194) (t!376630 (exprs!5557 (h!69644 zl!343)))))))

(assert (=> b!5679731 d!1792682))

(declare-fun e!3496025 () Bool)

(declare-fun d!1792684 () Bool)

(assert (=> d!1792684 (= (matchZipper!1811 ((_ map or) lt!2270160 lt!2270156) (t!376631 s!2326)) e!3496025)))

(declare-fun res!2400253 () Bool)

(assert (=> d!1792684 (=> res!2400253 e!3496025)))

(assert (=> d!1792684 (= res!2400253 (matchZipper!1811 lt!2270160 (t!376631 s!2326)))))

(declare-fun lt!2270230 () Unit!156224)

(declare-fun choose!42976 ((InoxSet Context!10114) (InoxSet Context!10114) List!63319) Unit!156224)

(assert (=> d!1792684 (= lt!2270230 (choose!42976 lt!2270160 lt!2270156 (t!376631 s!2326)))))

(assert (=> d!1792684 (= (lemmaZipperConcatMatchesSameAsBothZippers!698 lt!2270160 lt!2270156 (t!376631 s!2326)) lt!2270230)))

(declare-fun b!5680263 () Bool)

(assert (=> b!5680263 (= e!3496025 (matchZipper!1811 lt!2270156 (t!376631 s!2326)))))

(assert (= (and d!1792684 (not res!2400253)) b!5680263))

(assert (=> d!1792684 m!6639448))

(assert (=> d!1792684 m!6639446))

(declare-fun m!6639762 () Bool)

(assert (=> d!1792684 m!6639762))

(assert (=> b!5680263 m!6639420))

(assert (=> b!5679749 d!1792684))

(declare-fun d!1792686 () Bool)

(declare-fun c!999506 () Bool)

(assert (=> d!1792686 (= c!999506 (isEmpty!35048 (t!376631 s!2326)))))

(declare-fun e!3496028 () Bool)

(assert (=> d!1792686 (= (matchZipper!1811 lt!2270160 (t!376631 s!2326)) e!3496028)))

(declare-fun b!5680268 () Bool)

(declare-fun nullableZipper!1637 ((InoxSet Context!10114)) Bool)

(assert (=> b!5680268 (= e!3496028 (nullableZipper!1637 lt!2270160))))

(declare-fun b!5680269 () Bool)

(assert (=> b!5680269 (= e!3496028 (matchZipper!1811 (derivationStepZipper!1756 lt!2270160 (head!12055 (t!376631 s!2326))) (tail!11150 (t!376631 s!2326))))))

(assert (= (and d!1792686 c!999506) b!5680268))

(assert (= (and d!1792686 (not c!999506)) b!5680269))

(declare-fun m!6639764 () Bool)

(assert (=> d!1792686 m!6639764))

(declare-fun m!6639766 () Bool)

(assert (=> b!5680268 m!6639766))

(declare-fun m!6639768 () Bool)

(assert (=> b!5680269 m!6639768))

(assert (=> b!5680269 m!6639768))

(declare-fun m!6639770 () Bool)

(assert (=> b!5680269 m!6639770))

(declare-fun m!6639772 () Bool)

(assert (=> b!5680269 m!6639772))

(assert (=> b!5680269 m!6639770))

(assert (=> b!5680269 m!6639772))

(declare-fun m!6639774 () Bool)

(assert (=> b!5680269 m!6639774))

(assert (=> b!5679749 d!1792686))

(declare-fun d!1792688 () Bool)

(declare-fun c!999507 () Bool)

(assert (=> d!1792688 (= c!999507 (isEmpty!35048 (t!376631 s!2326)))))

(declare-fun e!3496029 () Bool)

(assert (=> d!1792688 (= (matchZipper!1811 ((_ map or) lt!2270160 lt!2270156) (t!376631 s!2326)) e!3496029)))

(declare-fun b!5680270 () Bool)

(assert (=> b!5680270 (= e!3496029 (nullableZipper!1637 ((_ map or) lt!2270160 lt!2270156)))))

(declare-fun b!5680271 () Bool)

(assert (=> b!5680271 (= e!3496029 (matchZipper!1811 (derivationStepZipper!1756 ((_ map or) lt!2270160 lt!2270156) (head!12055 (t!376631 s!2326))) (tail!11150 (t!376631 s!2326))))))

(assert (= (and d!1792688 c!999507) b!5680270))

(assert (= (and d!1792688 (not c!999507)) b!5680271))

(assert (=> d!1792688 m!6639764))

(declare-fun m!6639776 () Bool)

(assert (=> b!5680270 m!6639776))

(assert (=> b!5680271 m!6639768))

(assert (=> b!5680271 m!6639768))

(declare-fun m!6639778 () Bool)

(assert (=> b!5680271 m!6639778))

(assert (=> b!5680271 m!6639772))

(assert (=> b!5680271 m!6639778))

(assert (=> b!5680271 m!6639772))

(declare-fun m!6639780 () Bool)

(assert (=> b!5680271 m!6639780))

(assert (=> b!5679749 d!1792688))

(declare-fun bs!1323837 () Bool)

(declare-fun d!1792690 () Bool)

(assert (= bs!1323837 (and d!1792690 d!1792602)))

(declare-fun lambda!306066 () Int)

(assert (=> bs!1323837 (= lambda!306066 lambda!306034)))

(declare-fun bs!1323838 () Bool)

(assert (= bs!1323838 (and d!1792690 d!1792680)))

(assert (=> bs!1323838 (= lambda!306066 lambda!306065)))

(assert (=> d!1792690 (= (inv!82429 setElem!37995) (forall!14820 (exprs!5557 setElem!37995) lambda!306066))))

(declare-fun bs!1323839 () Bool)

(assert (= bs!1323839 d!1792690))

(declare-fun m!6639782 () Bool)

(assert (=> bs!1323839 m!6639782))

(assert (=> setNonEmpty!37995 d!1792690))

(declare-fun d!1792692 () Bool)

(declare-fun c!999508 () Bool)

(assert (=> d!1792692 (= c!999508 (isEmpty!35048 (t!376631 s!2326)))))

(declare-fun e!3496030 () Bool)

(assert (=> d!1792692 (= (matchZipper!1811 lt!2270156 (t!376631 s!2326)) e!3496030)))

(declare-fun b!5680272 () Bool)

(assert (=> b!5680272 (= e!3496030 (nullableZipper!1637 lt!2270156))))

(declare-fun b!5680273 () Bool)

(assert (=> b!5680273 (= e!3496030 (matchZipper!1811 (derivationStepZipper!1756 lt!2270156 (head!12055 (t!376631 s!2326))) (tail!11150 (t!376631 s!2326))))))

(assert (= (and d!1792692 c!999508) b!5680272))

(assert (= (and d!1792692 (not c!999508)) b!5680273))

(assert (=> d!1792692 m!6639764))

(declare-fun m!6639784 () Bool)

(assert (=> b!5680272 m!6639784))

(assert (=> b!5680273 m!6639768))

(assert (=> b!5680273 m!6639768))

(declare-fun m!6639786 () Bool)

(assert (=> b!5680273 m!6639786))

(assert (=> b!5680273 m!6639772))

(assert (=> b!5680273 m!6639786))

(assert (=> b!5680273 m!6639772))

(declare-fun m!6639788 () Bool)

(assert (=> b!5680273 m!6639788))

(assert (=> b!5679729 d!1792692))

(declare-fun d!1792694 () Bool)

(declare-fun e!3496033 () Bool)

(assert (=> d!1792694 e!3496033))

(declare-fun res!2400256 () Bool)

(assert (=> d!1792694 (=> (not res!2400256) (not e!3496033))))

(declare-fun lt!2270233 () List!63320)

(declare-fun noDuplicate!1617 (List!63320) Bool)

(assert (=> d!1792694 (= res!2400256 (noDuplicate!1617 lt!2270233))))

(declare-fun choose!42977 ((InoxSet Context!10114)) List!63320)

(assert (=> d!1792694 (= lt!2270233 (choose!42977 z!1189))))

(assert (=> d!1792694 (= (toList!9457 z!1189) lt!2270233)))

(declare-fun b!5680276 () Bool)

(declare-fun content!11448 (List!63320) (InoxSet Context!10114))

(assert (=> b!5680276 (= e!3496033 (= (content!11448 lt!2270233) z!1189))))

(assert (= (and d!1792694 res!2400256) b!5680276))

(declare-fun m!6639790 () Bool)

(assert (=> d!1792694 m!6639790))

(declare-fun m!6639792 () Bool)

(assert (=> d!1792694 m!6639792))

(declare-fun m!6639794 () Bool)

(assert (=> b!5680276 m!6639794))

(assert (=> b!5679748 d!1792694))

(declare-fun b!5680295 () Bool)

(declare-fun e!3496045 () Bool)

(declare-fun lt!2270240 () Option!15682)

(declare-fun ++!13871 (List!63319 List!63319) List!63319)

(declare-fun get!21775 (Option!15682) tuple2!65540)

(assert (=> b!5680295 (= e!3496045 (= (++!13871 (_1!36073 (get!21775 lt!2270240)) (_2!36073 (get!21775 lt!2270240))) s!2326))))

(declare-fun b!5680296 () Bool)

(declare-fun res!2400268 () Bool)

(assert (=> b!5680296 (=> (not res!2400268) (not e!3496045))))

(assert (=> b!5680296 (= res!2400268 (matchR!7858 (regTwo!31858 r!7292) (_2!36073 (get!21775 lt!2270240))))))

(declare-fun b!5680297 () Bool)

(declare-fun res!2400267 () Bool)

(assert (=> b!5680297 (=> (not res!2400267) (not e!3496045))))

(assert (=> b!5680297 (= res!2400267 (matchR!7858 (regOne!31858 r!7292) (_1!36073 (get!21775 lt!2270240))))))

(declare-fun d!1792696 () Bool)

(declare-fun e!3496046 () Bool)

(assert (=> d!1792696 e!3496046))

(declare-fun res!2400271 () Bool)

(assert (=> d!1792696 (=> res!2400271 e!3496046)))

(assert (=> d!1792696 (= res!2400271 e!3496045)))

(declare-fun res!2400270 () Bool)

(assert (=> d!1792696 (=> (not res!2400270) (not e!3496045))))

(assert (=> d!1792696 (= res!2400270 (isDefined!12385 lt!2270240))))

(declare-fun e!3496048 () Option!15682)

(assert (=> d!1792696 (= lt!2270240 e!3496048)))

(declare-fun c!999514 () Bool)

(declare-fun e!3496044 () Bool)

(assert (=> d!1792696 (= c!999514 e!3496044)))

(declare-fun res!2400269 () Bool)

(assert (=> d!1792696 (=> (not res!2400269) (not e!3496044))))

(assert (=> d!1792696 (= res!2400269 (matchR!7858 (regOne!31858 r!7292) Nil!63195))))

(assert (=> d!1792696 (validRegex!7409 (regOne!31858 r!7292))))

(assert (=> d!1792696 (= (findConcatSeparation!2096 (regOne!31858 r!7292) (regTwo!31858 r!7292) Nil!63195 s!2326 s!2326) lt!2270240)))

(declare-fun b!5680298 () Bool)

(assert (=> b!5680298 (= e!3496046 (not (isDefined!12385 lt!2270240)))))

(declare-fun b!5680299 () Bool)

(declare-fun e!3496047 () Option!15682)

(assert (=> b!5680299 (= e!3496048 e!3496047)))

(declare-fun c!999513 () Bool)

(assert (=> b!5680299 (= c!999513 ((_ is Nil!63195) s!2326))))

(declare-fun b!5680300 () Bool)

(assert (=> b!5680300 (= e!3496047 None!15681)))

(declare-fun b!5680301 () Bool)

(assert (=> b!5680301 (= e!3496048 (Some!15681 (tuple2!65541 Nil!63195 s!2326)))))

(declare-fun b!5680302 () Bool)

(declare-fun lt!2270242 () Unit!156224)

(declare-fun lt!2270241 () Unit!156224)

(assert (=> b!5680302 (= lt!2270242 lt!2270241)))

(assert (=> b!5680302 (= (++!13871 (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195)) (t!376631 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2040 (List!63319 C!31616 List!63319 List!63319) Unit!156224)

(assert (=> b!5680302 (= lt!2270241 (lemmaMoveElementToOtherListKeepsConcatEq!2040 Nil!63195 (h!69643 s!2326) (t!376631 s!2326) s!2326))))

(assert (=> b!5680302 (= e!3496047 (findConcatSeparation!2096 (regOne!31858 r!7292) (regTwo!31858 r!7292) (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195)) (t!376631 s!2326) s!2326))))

(declare-fun b!5680303 () Bool)

(assert (=> b!5680303 (= e!3496044 (matchR!7858 (regTwo!31858 r!7292) s!2326))))

(assert (= (and d!1792696 res!2400269) b!5680303))

(assert (= (and d!1792696 c!999514) b!5680301))

(assert (= (and d!1792696 (not c!999514)) b!5680299))

(assert (= (and b!5680299 c!999513) b!5680300))

(assert (= (and b!5680299 (not c!999513)) b!5680302))

(assert (= (and d!1792696 res!2400270) b!5680297))

(assert (= (and b!5680297 res!2400267) b!5680296))

(assert (= (and b!5680296 res!2400268) b!5680295))

(assert (= (and d!1792696 (not res!2400271)) b!5680298))

(declare-fun m!6639796 () Bool)

(assert (=> d!1792696 m!6639796))

(declare-fun m!6639798 () Bool)

(assert (=> d!1792696 m!6639798))

(declare-fun m!6639800 () Bool)

(assert (=> d!1792696 m!6639800))

(declare-fun m!6639802 () Bool)

(assert (=> b!5680302 m!6639802))

(assert (=> b!5680302 m!6639802))

(declare-fun m!6639804 () Bool)

(assert (=> b!5680302 m!6639804))

(declare-fun m!6639806 () Bool)

(assert (=> b!5680302 m!6639806))

(assert (=> b!5680302 m!6639802))

(declare-fun m!6639808 () Bool)

(assert (=> b!5680302 m!6639808))

(declare-fun m!6639810 () Bool)

(assert (=> b!5680297 m!6639810))

(declare-fun m!6639812 () Bool)

(assert (=> b!5680297 m!6639812))

(declare-fun m!6639814 () Bool)

(assert (=> b!5680303 m!6639814))

(assert (=> b!5680298 m!6639796))

(assert (=> b!5680295 m!6639810))

(declare-fun m!6639816 () Bool)

(assert (=> b!5680295 m!6639816))

(assert (=> b!5680296 m!6639810))

(declare-fun m!6639818 () Bool)

(assert (=> b!5680296 m!6639818))

(assert (=> b!5679738 d!1792696))

(declare-fun d!1792698 () Bool)

(declare-fun choose!42978 (Int) Bool)

(assert (=> d!1792698 (= (Exists!2773 lambda!306017) (choose!42978 lambda!306017))))

(declare-fun bs!1323840 () Bool)

(assert (= bs!1323840 d!1792698))

(declare-fun m!6639820 () Bool)

(assert (=> bs!1323840 m!6639820))

(assert (=> b!5679738 d!1792698))

(declare-fun d!1792700 () Bool)

(assert (=> d!1792700 (= (Exists!2773 lambda!306018) (choose!42978 lambda!306018))))

(declare-fun bs!1323841 () Bool)

(assert (= bs!1323841 d!1792700))

(declare-fun m!6639822 () Bool)

(assert (=> bs!1323841 m!6639822))

(assert (=> b!5679738 d!1792700))

(declare-fun bs!1323842 () Bool)

(declare-fun d!1792702 () Bool)

(assert (= bs!1323842 (and d!1792702 b!5679738)))

(declare-fun lambda!306069 () Int)

(assert (=> bs!1323842 (= lambda!306069 lambda!306017)))

(assert (=> bs!1323842 (not (= lambda!306069 lambda!306018))))

(declare-fun bs!1323843 () Bool)

(assert (= bs!1323843 (and d!1792702 b!5680103)))

(assert (=> bs!1323843 (not (= lambda!306069 lambda!306050))))

(declare-fun bs!1323844 () Bool)

(assert (= bs!1323844 (and d!1792702 b!5680107)))

(assert (=> bs!1323844 (not (= lambda!306069 lambda!306052))))

(assert (=> d!1792702 true))

(assert (=> d!1792702 true))

(assert (=> d!1792702 true))

(assert (=> d!1792702 (= (isDefined!12385 (findConcatSeparation!2096 (regOne!31858 r!7292) (regTwo!31858 r!7292) Nil!63195 s!2326 s!2326)) (Exists!2773 lambda!306069))))

(declare-fun lt!2270245 () Unit!156224)

(declare-fun choose!42979 (Regex!15673 Regex!15673 List!63319) Unit!156224)

(assert (=> d!1792702 (= lt!2270245 (choose!42979 (regOne!31858 r!7292) (regTwo!31858 r!7292) s!2326))))

(assert (=> d!1792702 (validRegex!7409 (regOne!31858 r!7292))))

(assert (=> d!1792702 (= (lemmaFindConcatSeparationEquivalentToExists!1860 (regOne!31858 r!7292) (regTwo!31858 r!7292) s!2326) lt!2270245)))

(declare-fun bs!1323845 () Bool)

(assert (= bs!1323845 d!1792702))

(assert (=> bs!1323845 m!6639800))

(assert (=> bs!1323845 m!6639454))

(assert (=> bs!1323845 m!6639454))

(assert (=> bs!1323845 m!6639456))

(declare-fun m!6639824 () Bool)

(assert (=> bs!1323845 m!6639824))

(declare-fun m!6639826 () Bool)

(assert (=> bs!1323845 m!6639826))

(assert (=> b!5679738 d!1792702))

(declare-fun bs!1323846 () Bool)

(declare-fun d!1792704 () Bool)

(assert (= bs!1323846 (and d!1792704 b!5679738)))

(declare-fun lambda!306074 () Int)

(assert (=> bs!1323846 (not (= lambda!306074 lambda!306018))))

(declare-fun bs!1323847 () Bool)

(assert (= bs!1323847 (and d!1792704 b!5680103)))

(assert (=> bs!1323847 (not (= lambda!306074 lambda!306050))))

(declare-fun bs!1323848 () Bool)

(assert (= bs!1323848 (and d!1792704 b!5680107)))

(assert (=> bs!1323848 (not (= lambda!306074 lambda!306052))))

(declare-fun bs!1323849 () Bool)

(assert (= bs!1323849 (and d!1792704 d!1792702)))

(assert (=> bs!1323849 (= lambda!306074 lambda!306069)))

(assert (=> bs!1323846 (= lambda!306074 lambda!306017)))

(assert (=> d!1792704 true))

(assert (=> d!1792704 true))

(assert (=> d!1792704 true))

(declare-fun lambda!306075 () Int)

(assert (=> bs!1323846 (= lambda!306075 lambda!306018)))

(assert (=> bs!1323847 (not (= lambda!306075 lambda!306050))))

(assert (=> bs!1323848 (= lambda!306075 lambda!306052)))

(declare-fun bs!1323850 () Bool)

(assert (= bs!1323850 d!1792704))

(assert (=> bs!1323850 (not (= lambda!306075 lambda!306074))))

(assert (=> bs!1323849 (not (= lambda!306075 lambda!306069))))

(assert (=> bs!1323846 (not (= lambda!306075 lambda!306017))))

(assert (=> d!1792704 true))

(assert (=> d!1792704 true))

(assert (=> d!1792704 true))

(assert (=> d!1792704 (= (Exists!2773 lambda!306074) (Exists!2773 lambda!306075))))

(declare-fun lt!2270248 () Unit!156224)

(declare-fun choose!42980 (Regex!15673 Regex!15673 List!63319) Unit!156224)

(assert (=> d!1792704 (= lt!2270248 (choose!42980 (regOne!31858 r!7292) (regTwo!31858 r!7292) s!2326))))

(assert (=> d!1792704 (validRegex!7409 (regOne!31858 r!7292))))

(assert (=> d!1792704 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1402 (regOne!31858 r!7292) (regTwo!31858 r!7292) s!2326) lt!2270248)))

(declare-fun m!6639828 () Bool)

(assert (=> bs!1323850 m!6639828))

(declare-fun m!6639830 () Bool)

(assert (=> bs!1323850 m!6639830))

(declare-fun m!6639832 () Bool)

(assert (=> bs!1323850 m!6639832))

(assert (=> bs!1323850 m!6639800))

(assert (=> b!5679738 d!1792704))

(declare-fun d!1792706 () Bool)

(declare-fun isEmpty!35050 (Option!15682) Bool)

(assert (=> d!1792706 (= (isDefined!12385 (findConcatSeparation!2096 (regOne!31858 r!7292) (regTwo!31858 r!7292) Nil!63195 s!2326 s!2326)) (not (isEmpty!35050 (findConcatSeparation!2096 (regOne!31858 r!7292) (regTwo!31858 r!7292) Nil!63195 s!2326 s!2326))))))

(declare-fun bs!1323851 () Bool)

(assert (= bs!1323851 d!1792706))

(assert (=> bs!1323851 m!6639454))

(declare-fun m!6639834 () Bool)

(assert (=> bs!1323851 m!6639834))

(assert (=> b!5679738 d!1792706))

(declare-fun c!999519 () Bool)

(declare-fun c!999520 () Bool)

(declare-fun call!431245 () Bool)

(declare-fun bm!431238 () Bool)

(assert (=> bm!431238 (= call!431245 (validRegex!7409 (ite c!999520 (reg!16002 r!7292) (ite c!999519 (regTwo!31859 r!7292) (regTwo!31858 r!7292)))))))

(declare-fun b!5680335 () Bool)

(declare-fun e!3496072 () Bool)

(declare-fun e!3496074 () Bool)

(assert (=> b!5680335 (= e!3496072 e!3496074)))

(declare-fun res!2400298 () Bool)

(assert (=> b!5680335 (=> (not res!2400298) (not e!3496074))))

(declare-fun call!431243 () Bool)

(assert (=> b!5680335 (= res!2400298 call!431243)))

(declare-fun b!5680336 () Bool)

(declare-fun call!431244 () Bool)

(assert (=> b!5680336 (= e!3496074 call!431244)))

(declare-fun b!5680337 () Bool)

(declare-fun e!3496070 () Bool)

(declare-fun e!3496071 () Bool)

(assert (=> b!5680337 (= e!3496070 e!3496071)))

(assert (=> b!5680337 (= c!999519 ((_ is Union!15673) r!7292))))

(declare-fun b!5680338 () Bool)

(declare-fun res!2400294 () Bool)

(assert (=> b!5680338 (=> res!2400294 e!3496072)))

(assert (=> b!5680338 (= res!2400294 (not ((_ is Concat!24518) r!7292)))))

(assert (=> b!5680338 (= e!3496071 e!3496072)))

(declare-fun b!5680339 () Bool)

(declare-fun e!3496069 () Bool)

(assert (=> b!5680339 (= e!3496069 call!431245)))

(declare-fun b!5680340 () Bool)

(declare-fun e!3496075 () Bool)

(assert (=> b!5680340 (= e!3496075 e!3496070)))

(assert (=> b!5680340 (= c!999520 ((_ is Star!15673) r!7292))))

(declare-fun b!5680341 () Bool)

(declare-fun res!2400296 () Bool)

(declare-fun e!3496073 () Bool)

(assert (=> b!5680341 (=> (not res!2400296) (not e!3496073))))

(assert (=> b!5680341 (= res!2400296 call!431243)))

(assert (=> b!5680341 (= e!3496071 e!3496073)))

(declare-fun bm!431239 () Bool)

(assert (=> bm!431239 (= call!431243 (validRegex!7409 (ite c!999519 (regOne!31859 r!7292) (regOne!31858 r!7292))))))

(declare-fun bm!431240 () Bool)

(assert (=> bm!431240 (= call!431244 call!431245)))

(declare-fun b!5680342 () Bool)

(assert (=> b!5680342 (= e!3496070 e!3496069)))

(declare-fun res!2400297 () Bool)

(assert (=> b!5680342 (= res!2400297 (not (nullable!5705 (reg!16002 r!7292))))))

(assert (=> b!5680342 (=> (not res!2400297) (not e!3496069))))

(declare-fun b!5680334 () Bool)

(assert (=> b!5680334 (= e!3496073 call!431244)))

(declare-fun d!1792708 () Bool)

(declare-fun res!2400295 () Bool)

(assert (=> d!1792708 (=> res!2400295 e!3496075)))

(assert (=> d!1792708 (= res!2400295 ((_ is ElementMatch!15673) r!7292))))

(assert (=> d!1792708 (= (validRegex!7409 r!7292) e!3496075)))

(assert (= (and d!1792708 (not res!2400295)) b!5680340))

(assert (= (and b!5680340 c!999520) b!5680342))

(assert (= (and b!5680340 (not c!999520)) b!5680337))

(assert (= (and b!5680342 res!2400297) b!5680339))

(assert (= (and b!5680337 c!999519) b!5680341))

(assert (= (and b!5680337 (not c!999519)) b!5680338))

(assert (= (and b!5680341 res!2400296) b!5680334))

(assert (= (and b!5680338 (not res!2400294)) b!5680335))

(assert (= (and b!5680335 res!2400298) b!5680336))

(assert (= (or b!5680334 b!5680336) bm!431240))

(assert (= (or b!5680341 b!5680335) bm!431239))

(assert (= (or b!5680339 bm!431240) bm!431238))

(declare-fun m!6639836 () Bool)

(assert (=> bm!431238 m!6639836))

(declare-fun m!6639838 () Bool)

(assert (=> bm!431239 m!6639838))

(declare-fun m!6639840 () Bool)

(assert (=> b!5680342 m!6639840))

(assert (=> start!586336 d!1792708))

(declare-fun d!1792710 () Bool)

(declare-fun lt!2270251 () Regex!15673)

(assert (=> d!1792710 (validRegex!7409 lt!2270251)))

(assert (=> d!1792710 (= lt!2270251 (generalisedUnion!1536 (unfocusZipperList!1101 zl!343)))))

(assert (=> d!1792710 (= (unfocusZipper!1415 zl!343) lt!2270251)))

(declare-fun bs!1323852 () Bool)

(assert (= bs!1323852 d!1792710))

(declare-fun m!6639842 () Bool)

(assert (=> bs!1323852 m!6639842))

(assert (=> bs!1323852 m!6639474))

(assert (=> bs!1323852 m!6639474))

(assert (=> bs!1323852 m!6639476))

(assert (=> b!5679747 d!1792710))

(declare-fun d!1792712 () Bool)

(declare-fun c!999521 () Bool)

(assert (=> d!1792712 (= c!999521 (isEmpty!35048 s!2326))))

(declare-fun e!3496076 () Bool)

(assert (=> d!1792712 (= (matchZipper!1811 lt!2270155 s!2326) e!3496076)))

(declare-fun b!5680343 () Bool)

(assert (=> b!5680343 (= e!3496076 (nullableZipper!1637 lt!2270155))))

(declare-fun b!5680344 () Bool)

(assert (=> b!5680344 (= e!3496076 (matchZipper!1811 (derivationStepZipper!1756 lt!2270155 (head!12055 s!2326)) (tail!11150 s!2326)))))

(assert (= (and d!1792712 c!999521) b!5680343))

(assert (= (and d!1792712 (not c!999521)) b!5680344))

(assert (=> d!1792712 m!6639710))

(declare-fun m!6639844 () Bool)

(assert (=> b!5680343 m!6639844))

(assert (=> b!5680344 m!6639734))

(assert (=> b!5680344 m!6639734))

(declare-fun m!6639846 () Bool)

(assert (=> b!5680344 m!6639846))

(assert (=> b!5680344 m!6639730))

(assert (=> b!5680344 m!6639846))

(assert (=> b!5680344 m!6639730))

(declare-fun m!6639848 () Bool)

(assert (=> b!5680344 m!6639848))

(assert (=> b!5679746 d!1792712))

(declare-fun d!1792714 () Bool)

(declare-fun c!999522 () Bool)

(assert (=> d!1792714 (= c!999522 (isEmpty!35048 (t!376631 s!2326)))))

(declare-fun e!3496077 () Bool)

(assert (=> d!1792714 (= (matchZipper!1811 lt!2270163 (t!376631 s!2326)) e!3496077)))

(declare-fun b!5680345 () Bool)

(assert (=> b!5680345 (= e!3496077 (nullableZipper!1637 lt!2270163))))

(declare-fun b!5680346 () Bool)

(assert (=> b!5680346 (= e!3496077 (matchZipper!1811 (derivationStepZipper!1756 lt!2270163 (head!12055 (t!376631 s!2326))) (tail!11150 (t!376631 s!2326))))))

(assert (= (and d!1792714 c!999522) b!5680345))

(assert (= (and d!1792714 (not c!999522)) b!5680346))

(assert (=> d!1792714 m!6639764))

(declare-fun m!6639850 () Bool)

(assert (=> b!5680345 m!6639850))

(assert (=> b!5680346 m!6639768))

(assert (=> b!5680346 m!6639768))

(declare-fun m!6639852 () Bool)

(assert (=> b!5680346 m!6639852))

(assert (=> b!5680346 m!6639772))

(assert (=> b!5680346 m!6639852))

(assert (=> b!5680346 m!6639772))

(declare-fun m!6639854 () Bool)

(assert (=> b!5680346 m!6639854))

(assert (=> b!5679746 d!1792714))

(declare-fun bs!1323853 () Bool)

(declare-fun d!1792716 () Bool)

(assert (= bs!1323853 (and d!1792716 d!1792602)))

(declare-fun lambda!306078 () Int)

(assert (=> bs!1323853 (= lambda!306078 lambda!306034)))

(declare-fun bs!1323854 () Bool)

(assert (= bs!1323854 (and d!1792716 d!1792680)))

(assert (=> bs!1323854 (= lambda!306078 lambda!306065)))

(declare-fun bs!1323855 () Bool)

(assert (= bs!1323855 (and d!1792716 d!1792690)))

(assert (=> bs!1323855 (= lambda!306078 lambda!306066)))

(declare-fun b!5680367 () Bool)

(declare-fun e!3496091 () Regex!15673)

(declare-fun e!3496094 () Regex!15673)

(assert (=> b!5680367 (= e!3496091 e!3496094)))

(declare-fun c!999532 () Bool)

(assert (=> b!5680367 (= c!999532 ((_ is Cons!63194) (unfocusZipperList!1101 zl!343)))))

(declare-fun b!5680368 () Bool)

(declare-fun e!3496090 () Bool)

(declare-fun e!3496093 () Bool)

(assert (=> b!5680368 (= e!3496090 e!3496093)))

(declare-fun c!999533 () Bool)

(assert (=> b!5680368 (= c!999533 (isEmpty!35045 (unfocusZipperList!1101 zl!343)))))

(declare-fun b!5680369 () Bool)

(declare-fun e!3496092 () Bool)

(declare-fun lt!2270254 () Regex!15673)

(assert (=> b!5680369 (= e!3496092 (= lt!2270254 (head!12054 (unfocusZipperList!1101 zl!343))))))

(declare-fun b!5680370 () Bool)

(assert (=> b!5680370 (= e!3496094 EmptyLang!15673)))

(assert (=> d!1792716 e!3496090))

(declare-fun res!2400304 () Bool)

(assert (=> d!1792716 (=> (not res!2400304) (not e!3496090))))

(assert (=> d!1792716 (= res!2400304 (validRegex!7409 lt!2270254))))

(assert (=> d!1792716 (= lt!2270254 e!3496091)))

(declare-fun c!999531 () Bool)

(declare-fun e!3496095 () Bool)

(assert (=> d!1792716 (= c!999531 e!3496095)))

(declare-fun res!2400303 () Bool)

(assert (=> d!1792716 (=> (not res!2400303) (not e!3496095))))

(assert (=> d!1792716 (= res!2400303 ((_ is Cons!63194) (unfocusZipperList!1101 zl!343)))))

(assert (=> d!1792716 (forall!14820 (unfocusZipperList!1101 zl!343) lambda!306078)))

(assert (=> d!1792716 (= (generalisedUnion!1536 (unfocusZipperList!1101 zl!343)) lt!2270254)))

(declare-fun b!5680371 () Bool)

(assert (=> b!5680371 (= e!3496094 (Union!15673 (h!69642 (unfocusZipperList!1101 zl!343)) (generalisedUnion!1536 (t!376630 (unfocusZipperList!1101 zl!343)))))))

(declare-fun b!5680372 () Bool)

(assert (=> b!5680372 (= e!3496091 (h!69642 (unfocusZipperList!1101 zl!343)))))

(declare-fun b!5680373 () Bool)

(declare-fun isUnion!636 (Regex!15673) Bool)

(assert (=> b!5680373 (= e!3496092 (isUnion!636 lt!2270254))))

(declare-fun b!5680374 () Bool)

(declare-fun isEmptyLang!1206 (Regex!15673) Bool)

(assert (=> b!5680374 (= e!3496093 (isEmptyLang!1206 lt!2270254))))

(declare-fun b!5680375 () Bool)

(assert (=> b!5680375 (= e!3496095 (isEmpty!35045 (t!376630 (unfocusZipperList!1101 zl!343))))))

(declare-fun b!5680376 () Bool)

(assert (=> b!5680376 (= e!3496093 e!3496092)))

(declare-fun c!999534 () Bool)

(assert (=> b!5680376 (= c!999534 (isEmpty!35045 (tail!11149 (unfocusZipperList!1101 zl!343))))))

(assert (= (and d!1792716 res!2400303) b!5680375))

(assert (= (and d!1792716 c!999531) b!5680372))

(assert (= (and d!1792716 (not c!999531)) b!5680367))

(assert (= (and b!5680367 c!999532) b!5680371))

(assert (= (and b!5680367 (not c!999532)) b!5680370))

(assert (= (and d!1792716 res!2400304) b!5680368))

(assert (= (and b!5680368 c!999533) b!5680374))

(assert (= (and b!5680368 (not c!999533)) b!5680376))

(assert (= (and b!5680376 c!999534) b!5680369))

(assert (= (and b!5680376 (not c!999534)) b!5680373))

(declare-fun m!6639856 () Bool)

(assert (=> d!1792716 m!6639856))

(assert (=> d!1792716 m!6639474))

(declare-fun m!6639858 () Bool)

(assert (=> d!1792716 m!6639858))

(declare-fun m!6639860 () Bool)

(assert (=> b!5680371 m!6639860))

(assert (=> b!5680368 m!6639474))

(declare-fun m!6639862 () Bool)

(assert (=> b!5680368 m!6639862))

(declare-fun m!6639864 () Bool)

(assert (=> b!5680373 m!6639864))

(declare-fun m!6639866 () Bool)

(assert (=> b!5680374 m!6639866))

(assert (=> b!5680376 m!6639474))

(declare-fun m!6639868 () Bool)

(assert (=> b!5680376 m!6639868))

(assert (=> b!5680376 m!6639868))

(declare-fun m!6639870 () Bool)

(assert (=> b!5680376 m!6639870))

(assert (=> b!5680369 m!6639474))

(declare-fun m!6639872 () Bool)

(assert (=> b!5680369 m!6639872))

(declare-fun m!6639874 () Bool)

(assert (=> b!5680375 m!6639874))

(assert (=> b!5679737 d!1792716))

(declare-fun bs!1323856 () Bool)

(declare-fun d!1792718 () Bool)

(assert (= bs!1323856 (and d!1792718 d!1792602)))

(declare-fun lambda!306081 () Int)

(assert (=> bs!1323856 (= lambda!306081 lambda!306034)))

(declare-fun bs!1323857 () Bool)

(assert (= bs!1323857 (and d!1792718 d!1792680)))

(assert (=> bs!1323857 (= lambda!306081 lambda!306065)))

(declare-fun bs!1323858 () Bool)

(assert (= bs!1323858 (and d!1792718 d!1792690)))

(assert (=> bs!1323858 (= lambda!306081 lambda!306066)))

(declare-fun bs!1323859 () Bool)

(assert (= bs!1323859 (and d!1792718 d!1792716)))

(assert (=> bs!1323859 (= lambda!306081 lambda!306078)))

(declare-fun lt!2270257 () List!63318)

(assert (=> d!1792718 (forall!14820 lt!2270257 lambda!306081)))

(declare-fun e!3496098 () List!63318)

(assert (=> d!1792718 (= lt!2270257 e!3496098)))

(declare-fun c!999537 () Bool)

(assert (=> d!1792718 (= c!999537 ((_ is Cons!63196) zl!343))))

(assert (=> d!1792718 (= (unfocusZipperList!1101 zl!343) lt!2270257)))

(declare-fun b!5680381 () Bool)

(assert (=> b!5680381 (= e!3496098 (Cons!63194 (generalisedConcat!1288 (exprs!5557 (h!69644 zl!343))) (unfocusZipperList!1101 (t!376632 zl!343))))))

(declare-fun b!5680382 () Bool)

(assert (=> b!5680382 (= e!3496098 Nil!63194)))

(assert (= (and d!1792718 c!999537) b!5680381))

(assert (= (and d!1792718 (not c!999537)) b!5680382))

(declare-fun m!6639876 () Bool)

(assert (=> d!1792718 m!6639876))

(assert (=> b!5680381 m!6639422))

(declare-fun m!6639878 () Bool)

(assert (=> b!5680381 m!6639878))

(assert (=> b!5679737 d!1792718))

(declare-fun b!5680383 () Bool)

(declare-fun e!3496100 () (InoxSet Context!10114))

(declare-fun e!3496101 () (InoxSet Context!10114))

(assert (=> b!5680383 (= e!3496100 e!3496101)))

(declare-fun c!999538 () Bool)

(assert (=> b!5680383 (= c!999538 ((_ is Cons!63194) (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))))))

(declare-fun b!5680384 () Bool)

(declare-fun call!431246 () (InoxSet Context!10114))

(assert (=> b!5680384 (= e!3496100 ((_ map or) call!431246 (derivationStepZipperUp!941 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (h!69643 s!2326))))))

(declare-fun b!5680385 () Bool)

(declare-fun e!3496099 () Bool)

(assert (=> b!5680385 (= e!3496099 (nullable!5705 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))))))

(declare-fun bm!431241 () Bool)

(assert (=> bm!431241 (= call!431246 (derivationStepZipperDown!1015 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))) (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (h!69643 s!2326)))))

(declare-fun d!1792720 () Bool)

(declare-fun c!999539 () Bool)

(assert (=> d!1792720 (= c!999539 e!3496099)))

(declare-fun res!2400305 () Bool)

(assert (=> d!1792720 (=> (not res!2400305) (not e!3496099))))

(assert (=> d!1792720 (= res!2400305 ((_ is Cons!63194) (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))))))

(assert (=> d!1792720 (= (derivationStepZipperUp!941 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))) (h!69643 s!2326)) e!3496100)))

(declare-fun b!5680386 () Bool)

(assert (=> b!5680386 (= e!3496101 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680387 () Bool)

(assert (=> b!5680387 (= e!3496101 call!431246)))

(assert (= (and d!1792720 res!2400305) b!5680385))

(assert (= (and d!1792720 c!999539) b!5680384))

(assert (= (and d!1792720 (not c!999539)) b!5680383))

(assert (= (and b!5680383 c!999538) b!5680387))

(assert (= (and b!5680383 (not c!999538)) b!5680386))

(assert (= (or b!5680384 b!5680387) bm!431241))

(declare-fun m!6639880 () Bool)

(assert (=> b!5680384 m!6639880))

(declare-fun m!6639882 () Bool)

(assert (=> b!5680385 m!6639882))

(declare-fun m!6639884 () Bool)

(assert (=> bm!431241 m!6639884))

(assert (=> b!5679736 d!1792720))

(declare-fun d!1792722 () Bool)

(assert (=> d!1792722 (= (flatMap!1286 z!1189 lambda!306019) (choose!42972 z!1189 lambda!306019))))

(declare-fun bs!1323860 () Bool)

(assert (= bs!1323860 d!1792722))

(declare-fun m!6639886 () Bool)

(assert (=> bs!1323860 m!6639886))

(assert (=> b!5679736 d!1792722))

(declare-fun b!5680410 () Bool)

(declare-fun e!3496114 () (InoxSet Context!10114))

(declare-fun call!431261 () (InoxSet Context!10114))

(assert (=> b!5680410 (= e!3496114 call!431261)))

(declare-fun b!5680411 () Bool)

(assert (=> b!5680411 (= e!3496114 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680412 () Bool)

(declare-fun e!3496115 () (InoxSet Context!10114))

(declare-fun call!431259 () (InoxSet Context!10114))

(declare-fun call!431262 () (InoxSet Context!10114))

(assert (=> b!5680412 (= e!3496115 ((_ map or) call!431259 call!431262))))

(declare-fun b!5680413 () Bool)

(declare-fun e!3496118 () (InoxSet Context!10114))

(assert (=> b!5680413 (= e!3496118 e!3496115)))

(declare-fun c!999550 () Bool)

(assert (=> b!5680413 (= c!999550 ((_ is Union!15673) (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun bm!431254 () Bool)

(declare-fun call!431260 () (InoxSet Context!10114))

(assert (=> bm!431254 (= call!431261 call!431260)))

(declare-fun d!1792724 () Bool)

(declare-fun c!999554 () Bool)

(assert (=> d!1792724 (= c!999554 (and ((_ is ElementMatch!15673) (h!69642 (exprs!5557 (h!69644 zl!343)))) (= (c!999361 (h!69642 (exprs!5557 (h!69644 zl!343)))) (h!69643 s!2326))))))

(assert (=> d!1792724 (= (derivationStepZipperDown!1015 (h!69642 (exprs!5557 (h!69644 zl!343))) lt!2270159 (h!69643 s!2326)) e!3496118)))

(declare-fun b!5680414 () Bool)

(declare-fun e!3496117 () (InoxSet Context!10114))

(assert (=> b!5680414 (= e!3496117 call!431261)))

(declare-fun b!5680415 () Bool)

(declare-fun e!3496119 () (InoxSet Context!10114))

(assert (=> b!5680415 (= e!3496119 e!3496117)))

(declare-fun c!999553 () Bool)

(assert (=> b!5680415 (= c!999553 ((_ is Concat!24518) (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5680416 () Bool)

(declare-fun c!999551 () Bool)

(assert (=> b!5680416 (= c!999551 ((_ is Star!15673) (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(assert (=> b!5680416 (= e!3496117 e!3496114)))

(declare-fun call!431264 () List!63318)

(declare-fun bm!431255 () Bool)

(declare-fun c!999552 () Bool)

(declare-fun $colon$colon!1704 (List!63318 Regex!15673) List!63318)

(assert (=> bm!431255 (= call!431264 ($colon$colon!1704 (exprs!5557 lt!2270159) (ite (or c!999552 c!999553) (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (h!69642 (exprs!5557 (h!69644 zl!343))))))))

(declare-fun b!5680417 () Bool)

(declare-fun e!3496116 () Bool)

(assert (=> b!5680417 (= c!999552 e!3496116)))

(declare-fun res!2400308 () Bool)

(assert (=> b!5680417 (=> (not res!2400308) (not e!3496116))))

(assert (=> b!5680417 (= res!2400308 ((_ is Concat!24518) (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(assert (=> b!5680417 (= e!3496115 e!3496119)))

(declare-fun bm!431256 () Bool)

(declare-fun call!431263 () List!63318)

(assert (=> bm!431256 (= call!431263 call!431264)))

(declare-fun bm!431257 () Bool)

(assert (=> bm!431257 (= call!431262 (derivationStepZipperDown!1015 (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343))))) (ite c!999550 lt!2270159 (Context!10115 call!431264)) (h!69643 s!2326)))))

(declare-fun b!5680418 () Bool)

(assert (=> b!5680418 (= e!3496119 ((_ map or) call!431262 call!431260))))

(declare-fun bm!431258 () Bool)

(assert (=> bm!431258 (= call!431259 (derivationStepZipperDown!1015 (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343))))))) (ite (or c!999550 c!999552) lt!2270159 (Context!10115 call!431263)) (h!69643 s!2326)))))

(declare-fun b!5680419 () Bool)

(assert (=> b!5680419 (= e!3496118 (store ((as const (Array Context!10114 Bool)) false) lt!2270159 true))))

(declare-fun b!5680420 () Bool)

(assert (=> b!5680420 (= e!3496116 (nullable!5705 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343))))))))

(declare-fun bm!431259 () Bool)

(assert (=> bm!431259 (= call!431260 call!431259)))

(assert (= (and d!1792724 c!999554) b!5680419))

(assert (= (and d!1792724 (not c!999554)) b!5680413))

(assert (= (and b!5680413 c!999550) b!5680412))

(assert (= (and b!5680413 (not c!999550)) b!5680417))

(assert (= (and b!5680417 res!2400308) b!5680420))

(assert (= (and b!5680417 c!999552) b!5680418))

(assert (= (and b!5680417 (not c!999552)) b!5680415))

(assert (= (and b!5680415 c!999553) b!5680414))

(assert (= (and b!5680415 (not c!999553)) b!5680416))

(assert (= (and b!5680416 c!999551) b!5680410))

(assert (= (and b!5680416 (not c!999551)) b!5680411))

(assert (= (or b!5680414 b!5680410) bm!431256))

(assert (= (or b!5680414 b!5680410) bm!431254))

(assert (= (or b!5680418 bm!431256) bm!431255))

(assert (= (or b!5680418 bm!431254) bm!431259))

(assert (= (or b!5680412 b!5680418) bm!431257))

(assert (= (or b!5680412 bm!431259) bm!431258))

(declare-fun m!6639888 () Bool)

(assert (=> bm!431257 m!6639888))

(declare-fun m!6639890 () Bool)

(assert (=> bm!431255 m!6639890))

(declare-fun m!6639892 () Bool)

(assert (=> b!5680420 m!6639892))

(declare-fun m!6639894 () Bool)

(assert (=> bm!431258 m!6639894))

(declare-fun m!6639896 () Bool)

(assert (=> b!5680419 m!6639896))

(assert (=> b!5679736 d!1792724))

(declare-fun b!5680421 () Bool)

(declare-fun e!3496121 () (InoxSet Context!10114))

(declare-fun e!3496122 () (InoxSet Context!10114))

(assert (=> b!5680421 (= e!3496121 e!3496122)))

(declare-fun c!999555 () Bool)

(assert (=> b!5680421 (= c!999555 ((_ is Cons!63194) (exprs!5557 (h!69644 zl!343))))))

(declare-fun call!431265 () (InoxSet Context!10114))

(declare-fun b!5680422 () Bool)

(assert (=> b!5680422 (= e!3496121 ((_ map or) call!431265 (derivationStepZipperUp!941 (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343)))) (h!69643 s!2326))))))

(declare-fun b!5680423 () Bool)

(declare-fun e!3496120 () Bool)

(assert (=> b!5680423 (= e!3496120 (nullable!5705 (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun bm!431260 () Bool)

(assert (=> bm!431260 (= call!431265 (derivationStepZipperDown!1015 (h!69642 (exprs!5557 (h!69644 zl!343))) (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343)))) (h!69643 s!2326)))))

(declare-fun d!1792726 () Bool)

(declare-fun c!999556 () Bool)

(assert (=> d!1792726 (= c!999556 e!3496120)))

(declare-fun res!2400309 () Bool)

(assert (=> d!1792726 (=> (not res!2400309) (not e!3496120))))

(assert (=> d!1792726 (= res!2400309 ((_ is Cons!63194) (exprs!5557 (h!69644 zl!343))))))

(assert (=> d!1792726 (= (derivationStepZipperUp!941 (h!69644 zl!343) (h!69643 s!2326)) e!3496121)))

(declare-fun b!5680424 () Bool)

(assert (=> b!5680424 (= e!3496122 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680425 () Bool)

(assert (=> b!5680425 (= e!3496122 call!431265)))

(assert (= (and d!1792726 res!2400309) b!5680423))

(assert (= (and d!1792726 c!999556) b!5680422))

(assert (= (and d!1792726 (not c!999556)) b!5680421))

(assert (= (and b!5680421 c!999555) b!5680425))

(assert (= (and b!5680421 (not c!999555)) b!5680424))

(assert (= (or b!5680422 b!5680425) bm!431260))

(declare-fun m!6639898 () Bool)

(assert (=> b!5680422 m!6639898))

(assert (=> b!5680423 m!6639434))

(declare-fun m!6639900 () Bool)

(assert (=> bm!431260 m!6639900))

(assert (=> b!5679736 d!1792726))

(declare-fun b!5680426 () Bool)

(declare-fun e!3496124 () (InoxSet Context!10114))

(declare-fun e!3496125 () (InoxSet Context!10114))

(assert (=> b!5680426 (= e!3496124 e!3496125)))

(declare-fun c!999557 () Bool)

(assert (=> b!5680426 (= c!999557 ((_ is Cons!63194) (exprs!5557 lt!2270159)))))

(declare-fun b!5680427 () Bool)

(declare-fun call!431266 () (InoxSet Context!10114))

(assert (=> b!5680427 (= e!3496124 ((_ map or) call!431266 (derivationStepZipperUp!941 (Context!10115 (t!376630 (exprs!5557 lt!2270159))) (h!69643 s!2326))))))

(declare-fun b!5680428 () Bool)

(declare-fun e!3496123 () Bool)

(assert (=> b!5680428 (= e!3496123 (nullable!5705 (h!69642 (exprs!5557 lt!2270159))))))

(declare-fun bm!431261 () Bool)

(assert (=> bm!431261 (= call!431266 (derivationStepZipperDown!1015 (h!69642 (exprs!5557 lt!2270159)) (Context!10115 (t!376630 (exprs!5557 lt!2270159))) (h!69643 s!2326)))))

(declare-fun d!1792728 () Bool)

(declare-fun c!999558 () Bool)

(assert (=> d!1792728 (= c!999558 e!3496123)))

(declare-fun res!2400310 () Bool)

(assert (=> d!1792728 (=> (not res!2400310) (not e!3496123))))

(assert (=> d!1792728 (= res!2400310 ((_ is Cons!63194) (exprs!5557 lt!2270159)))))

(assert (=> d!1792728 (= (derivationStepZipperUp!941 lt!2270159 (h!69643 s!2326)) e!3496124)))

(declare-fun b!5680429 () Bool)

(assert (=> b!5680429 (= e!3496125 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680430 () Bool)

(assert (=> b!5680430 (= e!3496125 call!431266)))

(assert (= (and d!1792728 res!2400310) b!5680428))

(assert (= (and d!1792728 c!999558) b!5680427))

(assert (= (and d!1792728 (not c!999558)) b!5680426))

(assert (= (and b!5680426 c!999557) b!5680430))

(assert (= (and b!5680426 (not c!999557)) b!5680429))

(assert (= (or b!5680427 b!5680430) bm!431261))

(declare-fun m!6639902 () Bool)

(assert (=> b!5680427 m!6639902))

(declare-fun m!6639904 () Bool)

(assert (=> b!5680428 m!6639904))

(declare-fun m!6639906 () Bool)

(assert (=> bm!431261 m!6639906))

(assert (=> b!5679736 d!1792728))

(declare-fun d!1792730 () Bool)

(assert (=> d!1792730 (= (nullable!5705 (h!69642 (exprs!5557 (h!69644 zl!343)))) (nullableFct!1783 (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun bs!1323861 () Bool)

(assert (= bs!1323861 d!1792730))

(declare-fun m!6639908 () Bool)

(assert (=> bs!1323861 m!6639908))

(assert (=> b!5679736 d!1792730))

(declare-fun d!1792732 () Bool)

(assert (=> d!1792732 (= (flatMap!1286 z!1189 lambda!306019) (dynLambda!24730 lambda!306019 (h!69644 zl!343)))))

(declare-fun lt!2270258 () Unit!156224)

(assert (=> d!1792732 (= lt!2270258 (choose!42974 z!1189 (h!69644 zl!343) lambda!306019))))

(assert (=> d!1792732 (= z!1189 (store ((as const (Array Context!10114 Bool)) false) (h!69644 zl!343) true))))

(assert (=> d!1792732 (= (lemmaFlatMapOnSingletonSet!818 z!1189 (h!69644 zl!343) lambda!306019) lt!2270258)))

(declare-fun b_lambda!214777 () Bool)

(assert (=> (not b_lambda!214777) (not d!1792732)))

(declare-fun bs!1323862 () Bool)

(assert (= bs!1323862 d!1792732))

(assert (=> bs!1323862 m!6639442))

(declare-fun m!6639910 () Bool)

(assert (=> bs!1323862 m!6639910))

(declare-fun m!6639912 () Bool)

(assert (=> bs!1323862 m!6639912))

(declare-fun m!6639914 () Bool)

(assert (=> bs!1323862 m!6639914))

(assert (=> b!5679736 d!1792732))

(declare-fun b!5680431 () Bool)

(declare-fun e!3496126 () (InoxSet Context!10114))

(declare-fun call!431269 () (InoxSet Context!10114))

(assert (=> b!5680431 (= e!3496126 call!431269)))

(declare-fun b!5680432 () Bool)

(assert (=> b!5680432 (= e!3496126 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680433 () Bool)

(declare-fun e!3496127 () (InoxSet Context!10114))

(declare-fun call!431267 () (InoxSet Context!10114))

(declare-fun call!431270 () (InoxSet Context!10114))

(assert (=> b!5680433 (= e!3496127 ((_ map or) call!431267 call!431270))))

(declare-fun b!5680434 () Bool)

(declare-fun e!3496130 () (InoxSet Context!10114))

(assert (=> b!5680434 (= e!3496130 e!3496127)))

(declare-fun c!999559 () Bool)

(assert (=> b!5680434 (= c!999559 ((_ is Union!15673) (reg!16002 (regOne!31858 r!7292))))))

(declare-fun bm!431262 () Bool)

(declare-fun call!431268 () (InoxSet Context!10114))

(assert (=> bm!431262 (= call!431269 call!431268)))

(declare-fun d!1792734 () Bool)

(declare-fun c!999563 () Bool)

(assert (=> d!1792734 (= c!999563 (and ((_ is ElementMatch!15673) (reg!16002 (regOne!31858 r!7292))) (= (c!999361 (reg!16002 (regOne!31858 r!7292))) (h!69643 s!2326))))))

(assert (=> d!1792734 (= (derivationStepZipperDown!1015 (reg!16002 (regOne!31858 r!7292)) (Context!10115 lt!2270172) (h!69643 s!2326)) e!3496130)))

(declare-fun b!5680435 () Bool)

(declare-fun e!3496129 () (InoxSet Context!10114))

(assert (=> b!5680435 (= e!3496129 call!431269)))

(declare-fun b!5680436 () Bool)

(declare-fun e!3496131 () (InoxSet Context!10114))

(assert (=> b!5680436 (= e!3496131 e!3496129)))

(declare-fun c!999562 () Bool)

(assert (=> b!5680436 (= c!999562 ((_ is Concat!24518) (reg!16002 (regOne!31858 r!7292))))))

(declare-fun b!5680437 () Bool)

(declare-fun c!999560 () Bool)

(assert (=> b!5680437 (= c!999560 ((_ is Star!15673) (reg!16002 (regOne!31858 r!7292))))))

(assert (=> b!5680437 (= e!3496129 e!3496126)))

(declare-fun c!999561 () Bool)

(declare-fun call!431272 () List!63318)

(declare-fun bm!431263 () Bool)

(assert (=> bm!431263 (= call!431272 ($colon$colon!1704 (exprs!5557 (Context!10115 lt!2270172)) (ite (or c!999561 c!999562) (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (regOne!31858 r!7292)))))))

(declare-fun b!5680438 () Bool)

(declare-fun e!3496128 () Bool)

(assert (=> b!5680438 (= c!999561 e!3496128)))

(declare-fun res!2400311 () Bool)

(assert (=> b!5680438 (=> (not res!2400311) (not e!3496128))))

(assert (=> b!5680438 (= res!2400311 ((_ is Concat!24518) (reg!16002 (regOne!31858 r!7292))))))

(assert (=> b!5680438 (= e!3496127 e!3496131)))

(declare-fun bm!431264 () Bool)

(declare-fun call!431271 () List!63318)

(assert (=> bm!431264 (= call!431271 call!431272)))

(declare-fun bm!431265 () Bool)

(assert (=> bm!431265 (= call!431270 (derivationStepZipperDown!1015 (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292)))) (ite c!999559 (Context!10115 lt!2270172) (Context!10115 call!431272)) (h!69643 s!2326)))))

(declare-fun b!5680439 () Bool)

(assert (=> b!5680439 (= e!3496131 ((_ map or) call!431270 call!431268))))

(declare-fun bm!431266 () Bool)

(assert (=> bm!431266 (= call!431267 (derivationStepZipperDown!1015 (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292)))))) (ite (or c!999559 c!999561) (Context!10115 lt!2270172) (Context!10115 call!431271)) (h!69643 s!2326)))))

(declare-fun b!5680440 () Bool)

(assert (=> b!5680440 (= e!3496130 (store ((as const (Array Context!10114 Bool)) false) (Context!10115 lt!2270172) true))))

(declare-fun b!5680441 () Bool)

(assert (=> b!5680441 (= e!3496128 (nullable!5705 (regOne!31858 (reg!16002 (regOne!31858 r!7292)))))))

(declare-fun bm!431267 () Bool)

(assert (=> bm!431267 (= call!431268 call!431267)))

(assert (= (and d!1792734 c!999563) b!5680440))

(assert (= (and d!1792734 (not c!999563)) b!5680434))

(assert (= (and b!5680434 c!999559) b!5680433))

(assert (= (and b!5680434 (not c!999559)) b!5680438))

(assert (= (and b!5680438 res!2400311) b!5680441))

(assert (= (and b!5680438 c!999561) b!5680439))

(assert (= (and b!5680438 (not c!999561)) b!5680436))

(assert (= (and b!5680436 c!999562) b!5680435))

(assert (= (and b!5680436 (not c!999562)) b!5680437))

(assert (= (and b!5680437 c!999560) b!5680431))

(assert (= (and b!5680437 (not c!999560)) b!5680432))

(assert (= (or b!5680435 b!5680431) bm!431264))

(assert (= (or b!5680435 b!5680431) bm!431262))

(assert (= (or b!5680439 bm!431264) bm!431263))

(assert (= (or b!5680439 bm!431262) bm!431267))

(assert (= (or b!5680433 b!5680439) bm!431265))

(assert (= (or b!5680433 bm!431267) bm!431266))

(declare-fun m!6639916 () Bool)

(assert (=> bm!431265 m!6639916))

(declare-fun m!6639918 () Bool)

(assert (=> bm!431263 m!6639918))

(declare-fun m!6639920 () Bool)

(assert (=> b!5680441 m!6639920))

(declare-fun m!6639922 () Bool)

(assert (=> bm!431266 m!6639922))

(declare-fun m!6639924 () Bool)

(assert (=> b!5680440 m!6639924))

(assert (=> b!5679745 d!1792734))

(declare-fun b!5680446 () Bool)

(declare-fun e!3496134 () Bool)

(declare-fun tp!1575053 () Bool)

(declare-fun tp!1575054 () Bool)

(assert (=> b!5680446 (= e!3496134 (and tp!1575053 tp!1575054))))

(assert (=> b!5679743 (= tp!1574987 e!3496134)))

(assert (= (and b!5679743 ((_ is Cons!63194) (exprs!5557 setElem!37995))) b!5680446))

(declare-fun b!5680459 () Bool)

(declare-fun e!3496137 () Bool)

(declare-fun tp!1575067 () Bool)

(assert (=> b!5680459 (= e!3496137 tp!1575067)))

(declare-fun b!5680457 () Bool)

(assert (=> b!5680457 (= e!3496137 tp_is_empty!40599)))

(assert (=> b!5679728 (= tp!1574988 e!3496137)))

(declare-fun b!5680460 () Bool)

(declare-fun tp!1575068 () Bool)

(declare-fun tp!1575069 () Bool)

(assert (=> b!5680460 (= e!3496137 (and tp!1575068 tp!1575069))))

(declare-fun b!5680458 () Bool)

(declare-fun tp!1575066 () Bool)

(declare-fun tp!1575065 () Bool)

(assert (=> b!5680458 (= e!3496137 (and tp!1575066 tp!1575065))))

(assert (= (and b!5679728 ((_ is ElementMatch!15673) (reg!16002 r!7292))) b!5680457))

(assert (= (and b!5679728 ((_ is Concat!24518) (reg!16002 r!7292))) b!5680458))

(assert (= (and b!5679728 ((_ is Star!15673) (reg!16002 r!7292))) b!5680459))

(assert (= (and b!5679728 ((_ is Union!15673) (reg!16002 r!7292))) b!5680460))

(declare-fun b!5680465 () Bool)

(declare-fun e!3496140 () Bool)

(declare-fun tp!1575072 () Bool)

(assert (=> b!5680465 (= e!3496140 (and tp_is_empty!40599 tp!1575072))))

(assert (=> b!5679739 (= tp!1574990 e!3496140)))

(assert (= (and b!5679739 ((_ is Cons!63195) (t!376631 s!2326))) b!5680465))

(declare-fun b!5680468 () Bool)

(declare-fun e!3496141 () Bool)

(declare-fun tp!1575075 () Bool)

(assert (=> b!5680468 (= e!3496141 tp!1575075)))

(declare-fun b!5680466 () Bool)

(assert (=> b!5680466 (= e!3496141 tp_is_empty!40599)))

(assert (=> b!5679732 (= tp!1574986 e!3496141)))

(declare-fun b!5680469 () Bool)

(declare-fun tp!1575076 () Bool)

(declare-fun tp!1575077 () Bool)

(assert (=> b!5680469 (= e!3496141 (and tp!1575076 tp!1575077))))

(declare-fun b!5680467 () Bool)

(declare-fun tp!1575074 () Bool)

(declare-fun tp!1575073 () Bool)

(assert (=> b!5680467 (= e!3496141 (and tp!1575074 tp!1575073))))

(assert (= (and b!5679732 ((_ is ElementMatch!15673) (regOne!31859 r!7292))) b!5680466))

(assert (= (and b!5679732 ((_ is Concat!24518) (regOne!31859 r!7292))) b!5680467))

(assert (= (and b!5679732 ((_ is Star!15673) (regOne!31859 r!7292))) b!5680468))

(assert (= (and b!5679732 ((_ is Union!15673) (regOne!31859 r!7292))) b!5680469))

(declare-fun b!5680472 () Bool)

(declare-fun e!3496142 () Bool)

(declare-fun tp!1575080 () Bool)

(assert (=> b!5680472 (= e!3496142 tp!1575080)))

(declare-fun b!5680470 () Bool)

(assert (=> b!5680470 (= e!3496142 tp_is_empty!40599)))

(assert (=> b!5679732 (= tp!1574984 e!3496142)))

(declare-fun b!5680473 () Bool)

(declare-fun tp!1575081 () Bool)

(declare-fun tp!1575082 () Bool)

(assert (=> b!5680473 (= e!3496142 (and tp!1575081 tp!1575082))))

(declare-fun b!5680471 () Bool)

(declare-fun tp!1575079 () Bool)

(declare-fun tp!1575078 () Bool)

(assert (=> b!5680471 (= e!3496142 (and tp!1575079 tp!1575078))))

(assert (= (and b!5679732 ((_ is ElementMatch!15673) (regTwo!31859 r!7292))) b!5680470))

(assert (= (and b!5679732 ((_ is Concat!24518) (regTwo!31859 r!7292))) b!5680471))

(assert (= (and b!5679732 ((_ is Star!15673) (regTwo!31859 r!7292))) b!5680472))

(assert (= (and b!5679732 ((_ is Union!15673) (regTwo!31859 r!7292))) b!5680473))

(declare-fun b!5680481 () Bool)

(declare-fun e!3496148 () Bool)

(declare-fun tp!1575087 () Bool)

(assert (=> b!5680481 (= e!3496148 tp!1575087)))

(declare-fun tp!1575088 () Bool)

(declare-fun b!5680480 () Bool)

(declare-fun e!3496147 () Bool)

(assert (=> b!5680480 (= e!3496147 (and (inv!82429 (h!69644 (t!376632 zl!343))) e!3496148 tp!1575088))))

(assert (=> b!5679751 (= tp!1574981 e!3496147)))

(assert (= b!5680480 b!5680481))

(assert (= (and b!5679751 ((_ is Cons!63196) (t!376632 zl!343))) b!5680480))

(declare-fun m!6639926 () Bool)

(assert (=> b!5680480 m!6639926))

(declare-fun b!5680482 () Bool)

(declare-fun e!3496149 () Bool)

(declare-fun tp!1575089 () Bool)

(declare-fun tp!1575090 () Bool)

(assert (=> b!5680482 (= e!3496149 (and tp!1575089 tp!1575090))))

(assert (=> b!5679730 (= tp!1574982 e!3496149)))

(assert (= (and b!5679730 ((_ is Cons!63194) (exprs!5557 (h!69644 zl!343)))) b!5680482))

(declare-fun condSetEmpty!38001 () Bool)

(assert (=> setNonEmpty!37995 (= condSetEmpty!38001 (= setRest!37995 ((as const (Array Context!10114 Bool)) false)))))

(declare-fun setRes!38001 () Bool)

(assert (=> setNonEmpty!37995 (= tp!1574985 setRes!38001)))

(declare-fun setIsEmpty!38001 () Bool)

(assert (=> setIsEmpty!38001 setRes!38001))

(declare-fun setElem!38001 () Context!10114)

(declare-fun e!3496152 () Bool)

(declare-fun setNonEmpty!38001 () Bool)

(declare-fun tp!1575095 () Bool)

(assert (=> setNonEmpty!38001 (= setRes!38001 (and tp!1575095 (inv!82429 setElem!38001) e!3496152))))

(declare-fun setRest!38001 () (InoxSet Context!10114))

(assert (=> setNonEmpty!38001 (= setRest!37995 ((_ map or) (store ((as const (Array Context!10114 Bool)) false) setElem!38001 true) setRest!38001))))

(declare-fun b!5680487 () Bool)

(declare-fun tp!1575096 () Bool)

(assert (=> b!5680487 (= e!3496152 tp!1575096)))

(assert (= (and setNonEmpty!37995 condSetEmpty!38001) setIsEmpty!38001))

(assert (= (and setNonEmpty!37995 (not condSetEmpty!38001)) setNonEmpty!38001))

(assert (= setNonEmpty!38001 b!5680487))

(declare-fun m!6639928 () Bool)

(assert (=> setNonEmpty!38001 m!6639928))

(declare-fun b!5680490 () Bool)

(declare-fun e!3496153 () Bool)

(declare-fun tp!1575099 () Bool)

(assert (=> b!5680490 (= e!3496153 tp!1575099)))

(declare-fun b!5680488 () Bool)

(assert (=> b!5680488 (= e!3496153 tp_is_empty!40599)))

(assert (=> b!5679755 (= tp!1574983 e!3496153)))

(declare-fun b!5680491 () Bool)

(declare-fun tp!1575100 () Bool)

(declare-fun tp!1575101 () Bool)

(assert (=> b!5680491 (= e!3496153 (and tp!1575100 tp!1575101))))

(declare-fun b!5680489 () Bool)

(declare-fun tp!1575098 () Bool)

(declare-fun tp!1575097 () Bool)

(assert (=> b!5680489 (= e!3496153 (and tp!1575098 tp!1575097))))

(assert (= (and b!5679755 ((_ is ElementMatch!15673) (regOne!31858 r!7292))) b!5680488))

(assert (= (and b!5679755 ((_ is Concat!24518) (regOne!31858 r!7292))) b!5680489))

(assert (= (and b!5679755 ((_ is Star!15673) (regOne!31858 r!7292))) b!5680490))

(assert (= (and b!5679755 ((_ is Union!15673) (regOne!31858 r!7292))) b!5680491))

(declare-fun b!5680494 () Bool)

(declare-fun e!3496154 () Bool)

(declare-fun tp!1575104 () Bool)

(assert (=> b!5680494 (= e!3496154 tp!1575104)))

(declare-fun b!5680492 () Bool)

(assert (=> b!5680492 (= e!3496154 tp_is_empty!40599)))

(assert (=> b!5679755 (= tp!1574989 e!3496154)))

(declare-fun b!5680495 () Bool)

(declare-fun tp!1575105 () Bool)

(declare-fun tp!1575106 () Bool)

(assert (=> b!5680495 (= e!3496154 (and tp!1575105 tp!1575106))))

(declare-fun b!5680493 () Bool)

(declare-fun tp!1575103 () Bool)

(declare-fun tp!1575102 () Bool)

(assert (=> b!5680493 (= e!3496154 (and tp!1575103 tp!1575102))))

(assert (= (and b!5679755 ((_ is ElementMatch!15673) (regTwo!31858 r!7292))) b!5680492))

(assert (= (and b!5679755 ((_ is Concat!24518) (regTwo!31858 r!7292))) b!5680493))

(assert (= (and b!5679755 ((_ is Star!15673) (regTwo!31858 r!7292))) b!5680494))

(assert (= (and b!5679755 ((_ is Union!15673) (regTwo!31858 r!7292))) b!5680495))

(declare-fun b_lambda!214779 () Bool)

(assert (= b_lambda!214775 (or b!5679736 b_lambda!214779)))

(declare-fun bs!1323863 () Bool)

(declare-fun d!1792736 () Bool)

(assert (= bs!1323863 (and d!1792736 b!5679736)))

(assert (=> bs!1323863 (= (dynLambda!24730 lambda!306019 lt!2270169) (derivationStepZipperUp!941 lt!2270169 (h!69643 s!2326)))))

(assert (=> bs!1323863 m!6639404))

(assert (=> d!1792676 d!1792736))

(declare-fun b_lambda!214781 () Bool)

(assert (= b_lambda!214777 (or b!5679736 b_lambda!214781)))

(declare-fun bs!1323864 () Bool)

(declare-fun d!1792738 () Bool)

(assert (= bs!1323864 (and d!1792738 b!5679736)))

(assert (=> bs!1323864 (= (dynLambda!24730 lambda!306019 (h!69644 zl!343)) (derivationStepZipperUp!941 (h!69644 zl!343) (h!69643 s!2326)))))

(assert (=> bs!1323864 m!6639432))

(assert (=> d!1792732 d!1792738))

(check-sat (not d!1792718) (not b!5680472) (not b!5680458) (not b!5680303) (not setNonEmpty!38001) (not b!5680422) (not b!5680191) (not b!5680460) (not b!5679963) (not b!5680270) (not b!5680295) (not d!1792686) (not b!5679967) (not bm!431265) (not b!5680195) (not b!5680273) (not b!5680296) (not b!5680491) (not bm!431261) (not b!5680344) (not b!5680271) (not b!5680487) (not b!5680480) (not b!5680256) (not b!5680428) (not b!5680188) (not bm!431255) (not b!5680100) (not d!1792732) (not b!5680385) (not d!1792692) (not b!5680272) (not d!1792716) (not b!5680489) (not d!1792700) (not b!5680268) (not d!1792710) (not d!1792602) (not b!5680490) (not b!5680345) (not bm!431231) (not b!5680375) (not b!5680441) (not b!5679968) (not bs!1323864) (not d!1792702) (not d!1792684) (not b!5680495) (not b!5680471) (not b!5680276) (not d!1792672) (not b!5680423) (not b!5680420) (not d!1792706) (not b!5680197) (not d!1792678) (not b!5680465) (not bm!431263) (not d!1792704) (not b!5679970) (not b!5680302) (not b!5680473) (not b!5680342) (not b!5680482) (not b!5680263) (not b!5680255) (not b!5680269) (not bm!431258) (not b!5680446) (not b!5680374) (not d!1792694) (not b!5680368) (not bm!431260) (not d!1792688) (not d!1792676) (not bm!431241) tp_is_empty!40599 (not b!5680371) (not b!5680297) (not b!5679965) (not b!5680481) (not b!5680190) (not b!5680467) (not bm!431238) (not bm!431216) (not b!5680346) (not b!5680468) (not bs!1323863) (not b!5680198) (not b!5680493) (not b!5679962) (not b!5680343) (not d!1792698) (not d!1792680) (not b!5680459) (not bm!431239) (not d!1792714) (not d!1792658) (not bm!431266) (not b!5680494) (not b!5680101) (not b!5680469) (not b!5680373) (not b_lambda!214779) (not bm!431228) (not d!1792712) (not d!1792626) (not b!5680381) (not d!1792730) (not d!1792722) (not b!5680369) (not d!1792696) (not b!5680298) (not b!5680376) (not d!1792666) (not b!5680427) (not bm!431215) (not d!1792690) (not bm!431257) (not b!5680384) (not b_lambda!214781) (not b!5679966))
(check-sat)
(get-model)

(declare-fun d!1792740 () Bool)

(assert (=> d!1792740 true))

(declare-fun setRes!38004 () Bool)

(assert (=> d!1792740 setRes!38004))

(declare-fun condSetEmpty!38004 () Bool)

(declare-fun res!2400314 () (InoxSet Context!10114))

(assert (=> d!1792740 (= condSetEmpty!38004 (= res!2400314 ((as const (Array Context!10114 Bool)) false)))))

(assert (=> d!1792740 (= (choose!42972 z!1189 lambda!306019) res!2400314)))

(declare-fun setIsEmpty!38004 () Bool)

(assert (=> setIsEmpty!38004 setRes!38004))

(declare-fun tp!1575112 () Bool)

(declare-fun setElem!38004 () Context!10114)

(declare-fun e!3496157 () Bool)

(declare-fun setNonEmpty!38004 () Bool)

(assert (=> setNonEmpty!38004 (= setRes!38004 (and tp!1575112 (inv!82429 setElem!38004) e!3496157))))

(declare-fun setRest!38004 () (InoxSet Context!10114))

(assert (=> setNonEmpty!38004 (= res!2400314 ((_ map or) (store ((as const (Array Context!10114 Bool)) false) setElem!38004 true) setRest!38004))))

(declare-fun b!5680498 () Bool)

(declare-fun tp!1575111 () Bool)

(assert (=> b!5680498 (= e!3496157 tp!1575111)))

(assert (= (and d!1792740 condSetEmpty!38004) setIsEmpty!38004))

(assert (= (and d!1792740 (not condSetEmpty!38004)) setNonEmpty!38004))

(assert (= setNonEmpty!38004 b!5680498))

(declare-fun m!6639930 () Bool)

(assert (=> setNonEmpty!38004 m!6639930))

(assert (=> d!1792722 d!1792740))

(declare-fun d!1792742 () Bool)

(assert (=> d!1792742 (= (nullable!5705 r!7292) (nullableFct!1783 r!7292))))

(declare-fun bs!1323865 () Bool)

(assert (= bs!1323865 d!1792742))

(declare-fun m!6639932 () Bool)

(assert (=> bs!1323865 m!6639932))

(assert (=> b!5680198 d!1792742))

(declare-fun bs!1323866 () Bool)

(declare-fun b!5680504 () Bool)

(assert (= bs!1323866 (and b!5680504 b!5679738)))

(declare-fun lambda!306082 () Int)

(assert (=> bs!1323866 (not (= lambda!306082 lambda!306018))))

(declare-fun bs!1323867 () Bool)

(assert (= bs!1323867 (and b!5680504 d!1792704)))

(assert (=> bs!1323867 (not (= lambda!306082 lambda!306075))))

(declare-fun bs!1323868 () Bool)

(assert (= bs!1323868 (and b!5680504 b!5680103)))

(assert (=> bs!1323868 (= (and (= (reg!16002 (regTwo!31859 r!7292)) (reg!16002 r!7292)) (= (regTwo!31859 r!7292) r!7292)) (= lambda!306082 lambda!306050))))

(declare-fun bs!1323869 () Bool)

(assert (= bs!1323869 (and b!5680504 b!5680107)))

(assert (=> bs!1323869 (not (= lambda!306082 lambda!306052))))

(assert (=> bs!1323867 (not (= lambda!306082 lambda!306074))))

(declare-fun bs!1323870 () Bool)

(assert (= bs!1323870 (and b!5680504 d!1792702)))

(assert (=> bs!1323870 (not (= lambda!306082 lambda!306069))))

(assert (=> bs!1323866 (not (= lambda!306082 lambda!306017))))

(assert (=> b!5680504 true))

(assert (=> b!5680504 true))

(declare-fun bs!1323871 () Bool)

(declare-fun b!5680508 () Bool)

(assert (= bs!1323871 (and b!5680508 b!5680504)))

(declare-fun lambda!306083 () Int)

(assert (=> bs!1323871 (not (= lambda!306083 lambda!306082))))

(declare-fun bs!1323872 () Bool)

(assert (= bs!1323872 (and b!5680508 b!5679738)))

(assert (=> bs!1323872 (= (and (= (regOne!31858 (regTwo!31859 r!7292)) (regOne!31858 r!7292)) (= (regTwo!31858 (regTwo!31859 r!7292)) (regTwo!31858 r!7292))) (= lambda!306083 lambda!306018))))

(declare-fun bs!1323873 () Bool)

(assert (= bs!1323873 (and b!5680508 d!1792704)))

(assert (=> bs!1323873 (= (and (= (regOne!31858 (regTwo!31859 r!7292)) (regOne!31858 r!7292)) (= (regTwo!31858 (regTwo!31859 r!7292)) (regTwo!31858 r!7292))) (= lambda!306083 lambda!306075))))

(declare-fun bs!1323874 () Bool)

(assert (= bs!1323874 (and b!5680508 b!5680103)))

(assert (=> bs!1323874 (not (= lambda!306083 lambda!306050))))

(declare-fun bs!1323875 () Bool)

(assert (= bs!1323875 (and b!5680508 b!5680107)))

(assert (=> bs!1323875 (= (and (= (regOne!31858 (regTwo!31859 r!7292)) (regOne!31858 r!7292)) (= (regTwo!31858 (regTwo!31859 r!7292)) (regTwo!31858 r!7292))) (= lambda!306083 lambda!306052))))

(assert (=> bs!1323873 (not (= lambda!306083 lambda!306074))))

(declare-fun bs!1323876 () Bool)

(assert (= bs!1323876 (and b!5680508 d!1792702)))

(assert (=> bs!1323876 (not (= lambda!306083 lambda!306069))))

(assert (=> bs!1323872 (not (= lambda!306083 lambda!306017))))

(assert (=> b!5680508 true))

(assert (=> b!5680508 true))

(declare-fun c!999566 () Bool)

(declare-fun call!431274 () Bool)

(declare-fun bm!431268 () Bool)

(assert (=> bm!431268 (= call!431274 (Exists!2773 (ite c!999566 lambda!306082 lambda!306083)))))

(declare-fun b!5680499 () Bool)

(declare-fun res!2400317 () Bool)

(declare-fun e!3496158 () Bool)

(assert (=> b!5680499 (=> res!2400317 e!3496158)))

(declare-fun call!431273 () Bool)

(assert (=> b!5680499 (= res!2400317 call!431273)))

(declare-fun e!3496159 () Bool)

(assert (=> b!5680499 (= e!3496159 e!3496158)))

(declare-fun b!5680500 () Bool)

(declare-fun e!3496163 () Bool)

(assert (=> b!5680500 (= e!3496163 e!3496159)))

(assert (=> b!5680500 (= c!999566 ((_ is Star!15673) (regTwo!31859 r!7292)))))

(declare-fun b!5680501 () Bool)

(declare-fun e!3496160 () Bool)

(assert (=> b!5680501 (= e!3496160 (matchRSpec!2776 (regTwo!31859 (regTwo!31859 r!7292)) s!2326))))

(declare-fun b!5680502 () Bool)

(assert (=> b!5680502 (= e!3496163 e!3496160)))

(declare-fun res!2400316 () Bool)

(assert (=> b!5680502 (= res!2400316 (matchRSpec!2776 (regOne!31859 (regTwo!31859 r!7292)) s!2326))))

(assert (=> b!5680502 (=> res!2400316 e!3496160)))

(declare-fun b!5680503 () Bool)

(declare-fun e!3496161 () Bool)

(declare-fun e!3496162 () Bool)

(assert (=> b!5680503 (= e!3496161 e!3496162)))

(declare-fun res!2400315 () Bool)

(assert (=> b!5680503 (= res!2400315 (not ((_ is EmptyLang!15673) (regTwo!31859 r!7292))))))

(assert (=> b!5680503 (=> (not res!2400315) (not e!3496162))))

(declare-fun b!5680505 () Bool)

(declare-fun c!999567 () Bool)

(assert (=> b!5680505 (= c!999567 ((_ is ElementMatch!15673) (regTwo!31859 r!7292)))))

(declare-fun e!3496164 () Bool)

(assert (=> b!5680505 (= e!3496162 e!3496164)))

(declare-fun b!5680506 () Bool)

(assert (=> b!5680506 (= e!3496161 call!431273)))

(declare-fun bm!431269 () Bool)

(assert (=> bm!431269 (= call!431273 (isEmpty!35048 s!2326))))

(declare-fun b!5680507 () Bool)

(assert (=> b!5680507 (= e!3496164 (= s!2326 (Cons!63195 (c!999361 (regTwo!31859 r!7292)) Nil!63195)))))

(assert (=> b!5680508 (= e!3496159 call!431274)))

(declare-fun b!5680509 () Bool)

(declare-fun c!999565 () Bool)

(assert (=> b!5680509 (= c!999565 ((_ is Union!15673) (regTwo!31859 r!7292)))))

(assert (=> b!5680509 (= e!3496164 e!3496163)))

(declare-fun d!1792744 () Bool)

(declare-fun c!999564 () Bool)

(assert (=> d!1792744 (= c!999564 ((_ is EmptyExpr!15673) (regTwo!31859 r!7292)))))

(assert (=> d!1792744 (= (matchRSpec!2776 (regTwo!31859 r!7292) s!2326) e!3496161)))

(assert (=> b!5680504 (= e!3496158 call!431274)))

(assert (= (and d!1792744 c!999564) b!5680506))

(assert (= (and d!1792744 (not c!999564)) b!5680503))

(assert (= (and b!5680503 res!2400315) b!5680505))

(assert (= (and b!5680505 c!999567) b!5680507))

(assert (= (and b!5680505 (not c!999567)) b!5680509))

(assert (= (and b!5680509 c!999565) b!5680502))

(assert (= (and b!5680509 (not c!999565)) b!5680500))

(assert (= (and b!5680502 (not res!2400316)) b!5680501))

(assert (= (and b!5680500 c!999566) b!5680499))

(assert (= (and b!5680500 (not c!999566)) b!5680508))

(assert (= (and b!5680499 (not res!2400317)) b!5680504))

(assert (= (or b!5680504 b!5680508) bm!431268))

(assert (= (or b!5680506 b!5680499) bm!431269))

(declare-fun m!6639934 () Bool)

(assert (=> bm!431268 m!6639934))

(declare-fun m!6639936 () Bool)

(assert (=> b!5680501 m!6639936))

(declare-fun m!6639938 () Bool)

(assert (=> b!5680502 m!6639938))

(assert (=> bm!431269 m!6639710))

(assert (=> b!5680100 d!1792744))

(declare-fun d!1792746 () Bool)

(assert (=> d!1792746 (= (isEmpty!35045 (unfocusZipperList!1101 zl!343)) ((_ is Nil!63194) (unfocusZipperList!1101 zl!343)))))

(assert (=> b!5680368 d!1792746))

(declare-fun bs!1323877 () Bool)

(declare-fun d!1792748 () Bool)

(assert (= bs!1323877 (and d!1792748 d!1792716)))

(declare-fun lambda!306084 () Int)

(assert (=> bs!1323877 (= lambda!306084 lambda!306078)))

(declare-fun bs!1323878 () Bool)

(assert (= bs!1323878 (and d!1792748 d!1792602)))

(assert (=> bs!1323878 (= lambda!306084 lambda!306034)))

(declare-fun bs!1323879 () Bool)

(assert (= bs!1323879 (and d!1792748 d!1792680)))

(assert (=> bs!1323879 (= lambda!306084 lambda!306065)))

(declare-fun bs!1323880 () Bool)

(assert (= bs!1323880 (and d!1792748 d!1792718)))

(assert (=> bs!1323880 (= lambda!306084 lambda!306081)))

(declare-fun bs!1323881 () Bool)

(assert (= bs!1323881 (and d!1792748 d!1792690)))

(assert (=> bs!1323881 (= lambda!306084 lambda!306066)))

(declare-fun b!5680510 () Bool)

(declare-fun e!3496168 () Bool)

(declare-fun e!3496170 () Bool)

(assert (=> b!5680510 (= e!3496168 e!3496170)))

(declare-fun c!999570 () Bool)

(assert (=> b!5680510 (= c!999570 (isEmpty!35045 (tail!11149 (t!376630 (exprs!5557 (h!69644 zl!343))))))))

(declare-fun b!5680511 () Bool)

(declare-fun e!3496166 () Bool)

(assert (=> b!5680511 (= e!3496166 e!3496168)))

(declare-fun c!999571 () Bool)

(assert (=> b!5680511 (= c!999571 (isEmpty!35045 (t!376630 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5680512 () Bool)

(declare-fun e!3496169 () Regex!15673)

(declare-fun e!3496167 () Regex!15673)

(assert (=> b!5680512 (= e!3496169 e!3496167)))

(declare-fun c!999569 () Bool)

(assert (=> b!5680512 (= c!999569 ((_ is Cons!63194) (t!376630 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5680513 () Bool)

(assert (=> b!5680513 (= e!3496167 (Concat!24518 (h!69642 (t!376630 (exprs!5557 (h!69644 zl!343)))) (generalisedConcat!1288 (t!376630 (t!376630 (exprs!5557 (h!69644 zl!343)))))))))

(declare-fun b!5680514 () Bool)

(declare-fun lt!2270259 () Regex!15673)

(assert (=> b!5680514 (= e!3496170 (= lt!2270259 (head!12054 (t!376630 (exprs!5557 (h!69644 zl!343))))))))

(declare-fun b!5680515 () Bool)

(assert (=> b!5680515 (= e!3496168 (isEmptyExpr!1195 lt!2270259))))

(declare-fun b!5680516 () Bool)

(assert (=> b!5680516 (= e!3496170 (isConcat!718 lt!2270259))))

(declare-fun b!5680517 () Bool)

(assert (=> b!5680517 (= e!3496167 EmptyExpr!15673)))

(declare-fun b!5680518 () Bool)

(declare-fun e!3496165 () Bool)

(assert (=> b!5680518 (= e!3496165 (isEmpty!35045 (t!376630 (t!376630 (exprs!5557 (h!69644 zl!343))))))))

(declare-fun b!5680519 () Bool)

(assert (=> b!5680519 (= e!3496169 (h!69642 (t!376630 (exprs!5557 (h!69644 zl!343)))))))

(assert (=> d!1792748 e!3496166))

(declare-fun res!2400318 () Bool)

(assert (=> d!1792748 (=> (not res!2400318) (not e!3496166))))

(assert (=> d!1792748 (= res!2400318 (validRegex!7409 lt!2270259))))

(assert (=> d!1792748 (= lt!2270259 e!3496169)))

(declare-fun c!999568 () Bool)

(assert (=> d!1792748 (= c!999568 e!3496165)))

(declare-fun res!2400319 () Bool)

(assert (=> d!1792748 (=> (not res!2400319) (not e!3496165))))

(assert (=> d!1792748 (= res!2400319 ((_ is Cons!63194) (t!376630 (exprs!5557 (h!69644 zl!343)))))))

(assert (=> d!1792748 (forall!14820 (t!376630 (exprs!5557 (h!69644 zl!343))) lambda!306084)))

(assert (=> d!1792748 (= (generalisedConcat!1288 (t!376630 (exprs!5557 (h!69644 zl!343)))) lt!2270259)))

(assert (= (and d!1792748 res!2400319) b!5680518))

(assert (= (and d!1792748 c!999568) b!5680519))

(assert (= (and d!1792748 (not c!999568)) b!5680512))

(assert (= (and b!5680512 c!999569) b!5680513))

(assert (= (and b!5680512 (not c!999569)) b!5680517))

(assert (= (and d!1792748 res!2400318) b!5680511))

(assert (= (and b!5680511 c!999571) b!5680515))

(assert (= (and b!5680511 (not c!999571)) b!5680510))

(assert (= (and b!5680510 c!999570) b!5680514))

(assert (= (and b!5680510 (not c!999570)) b!5680516))

(assert (=> b!5680511 m!6639412))

(declare-fun m!6639940 () Bool)

(assert (=> b!5680518 m!6639940))

(declare-fun m!6639942 () Bool)

(assert (=> b!5680513 m!6639942))

(declare-fun m!6639944 () Bool)

(assert (=> b!5680515 m!6639944))

(declare-fun m!6639946 () Bool)

(assert (=> d!1792748 m!6639946))

(declare-fun m!6639948 () Bool)

(assert (=> d!1792748 m!6639948))

(declare-fun m!6639950 () Bool)

(assert (=> b!5680516 m!6639950))

(declare-fun m!6639952 () Bool)

(assert (=> b!5680510 m!6639952))

(assert (=> b!5680510 m!6639952))

(declare-fun m!6639954 () Bool)

(assert (=> b!5680510 m!6639954))

(declare-fun m!6639956 () Bool)

(assert (=> b!5680514 m!6639956))

(assert (=> b!5679965 d!1792748))

(declare-fun d!1792750 () Bool)

(declare-fun res!2400324 () Bool)

(declare-fun e!3496175 () Bool)

(assert (=> d!1792750 (=> res!2400324 e!3496175)))

(assert (=> d!1792750 (= res!2400324 ((_ is Nil!63194) (exprs!5557 (h!69644 zl!343))))))

(assert (=> d!1792750 (= (forall!14820 (exprs!5557 (h!69644 zl!343)) lambda!306065) e!3496175)))

(declare-fun b!5680524 () Bool)

(declare-fun e!3496176 () Bool)

(assert (=> b!5680524 (= e!3496175 e!3496176)))

(declare-fun res!2400325 () Bool)

(assert (=> b!5680524 (=> (not res!2400325) (not e!3496176))))

(declare-fun dynLambda!24731 (Int Regex!15673) Bool)

(assert (=> b!5680524 (= res!2400325 (dynLambda!24731 lambda!306065 (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5680525 () Bool)

(assert (=> b!5680525 (= e!3496176 (forall!14820 (t!376630 (exprs!5557 (h!69644 zl!343))) lambda!306065))))

(assert (= (and d!1792750 (not res!2400324)) b!5680524))

(assert (= (and b!5680524 res!2400325) b!5680525))

(declare-fun b_lambda!214783 () Bool)

(assert (=> (not b_lambda!214783) (not b!5680524)))

(declare-fun m!6639958 () Bool)

(assert (=> b!5680524 m!6639958))

(declare-fun m!6639960 () Bool)

(assert (=> b!5680525 m!6639960))

(assert (=> d!1792680 d!1792750))

(declare-fun d!1792752 () Bool)

(assert (=> d!1792752 (= (isDefined!12385 lt!2270240) (not (isEmpty!35050 lt!2270240)))))

(declare-fun bs!1323882 () Bool)

(assert (= bs!1323882 d!1792752))

(declare-fun m!6639962 () Bool)

(assert (=> bs!1323882 m!6639962))

(assert (=> d!1792696 d!1792752))

(declare-fun b!5680526 () Bool)

(declare-fun res!2400326 () Bool)

(declare-fun e!3496180 () Bool)

(assert (=> b!5680526 (=> res!2400326 e!3496180)))

(assert (=> b!5680526 (= res!2400326 (not ((_ is ElementMatch!15673) (regOne!31858 r!7292))))))

(declare-fun e!3496183 () Bool)

(assert (=> b!5680526 (= e!3496183 e!3496180)))

(declare-fun b!5680527 () Bool)

(declare-fun lt!2270260 () Bool)

(assert (=> b!5680527 (= e!3496183 (not lt!2270260))))

(declare-fun b!5680528 () Bool)

(declare-fun e!3496177 () Bool)

(assert (=> b!5680528 (= e!3496177 (not (= (head!12055 Nil!63195) (c!999361 (regOne!31858 r!7292)))))))

(declare-fun b!5680529 () Bool)

(declare-fun e!3496178 () Bool)

(assert (=> b!5680529 (= e!3496178 e!3496183)))

(declare-fun c!999573 () Bool)

(assert (=> b!5680529 (= c!999573 ((_ is EmptyLang!15673) (regOne!31858 r!7292)))))

(declare-fun d!1792754 () Bool)

(assert (=> d!1792754 e!3496178))

(declare-fun c!999574 () Bool)

(assert (=> d!1792754 (= c!999574 ((_ is EmptyExpr!15673) (regOne!31858 r!7292)))))

(declare-fun e!3496182 () Bool)

(assert (=> d!1792754 (= lt!2270260 e!3496182)))

(declare-fun c!999572 () Bool)

(assert (=> d!1792754 (= c!999572 (isEmpty!35048 Nil!63195))))

(assert (=> d!1792754 (validRegex!7409 (regOne!31858 r!7292))))

(assert (=> d!1792754 (= (matchR!7858 (regOne!31858 r!7292) Nil!63195) lt!2270260)))

(declare-fun b!5680530 () Bool)

(declare-fun res!2400327 () Bool)

(assert (=> b!5680530 (=> res!2400327 e!3496177)))

(assert (=> b!5680530 (= res!2400327 (not (isEmpty!35048 (tail!11150 Nil!63195))))))

(declare-fun b!5680531 () Bool)

(assert (=> b!5680531 (= e!3496182 (matchR!7858 (derivativeStep!4490 (regOne!31858 r!7292) (head!12055 Nil!63195)) (tail!11150 Nil!63195)))))

(declare-fun bm!431270 () Bool)

(declare-fun call!431275 () Bool)

(assert (=> bm!431270 (= call!431275 (isEmpty!35048 Nil!63195))))

(declare-fun b!5680532 () Bool)

(declare-fun res!2400330 () Bool)

(assert (=> b!5680532 (=> res!2400330 e!3496180)))

(declare-fun e!3496179 () Bool)

(assert (=> b!5680532 (= res!2400330 e!3496179)))

(declare-fun res!2400332 () Bool)

(assert (=> b!5680532 (=> (not res!2400332) (not e!3496179))))

(assert (=> b!5680532 (= res!2400332 lt!2270260)))

(declare-fun b!5680533 () Bool)

(declare-fun e!3496181 () Bool)

(assert (=> b!5680533 (= e!3496181 e!3496177)))

(declare-fun res!2400328 () Bool)

(assert (=> b!5680533 (=> res!2400328 e!3496177)))

(assert (=> b!5680533 (= res!2400328 call!431275)))

(declare-fun b!5680534 () Bool)

(assert (=> b!5680534 (= e!3496180 e!3496181)))

(declare-fun res!2400329 () Bool)

(assert (=> b!5680534 (=> (not res!2400329) (not e!3496181))))

(assert (=> b!5680534 (= res!2400329 (not lt!2270260))))

(declare-fun b!5680535 () Bool)

(assert (=> b!5680535 (= e!3496179 (= (head!12055 Nil!63195) (c!999361 (regOne!31858 r!7292))))))

(declare-fun b!5680536 () Bool)

(declare-fun res!2400333 () Bool)

(assert (=> b!5680536 (=> (not res!2400333) (not e!3496179))))

(assert (=> b!5680536 (= res!2400333 (not call!431275))))

(declare-fun b!5680537 () Bool)

(declare-fun res!2400331 () Bool)

(assert (=> b!5680537 (=> (not res!2400331) (not e!3496179))))

(assert (=> b!5680537 (= res!2400331 (isEmpty!35048 (tail!11150 Nil!63195)))))

(declare-fun b!5680538 () Bool)

(assert (=> b!5680538 (= e!3496182 (nullable!5705 (regOne!31858 r!7292)))))

(declare-fun b!5680539 () Bool)

(assert (=> b!5680539 (= e!3496178 (= lt!2270260 call!431275))))

(assert (= (and d!1792754 c!999572) b!5680538))

(assert (= (and d!1792754 (not c!999572)) b!5680531))

(assert (= (and d!1792754 c!999574) b!5680539))

(assert (= (and d!1792754 (not c!999574)) b!5680529))

(assert (= (and b!5680529 c!999573) b!5680527))

(assert (= (and b!5680529 (not c!999573)) b!5680526))

(assert (= (and b!5680526 (not res!2400326)) b!5680532))

(assert (= (and b!5680532 res!2400332) b!5680536))

(assert (= (and b!5680536 res!2400333) b!5680537))

(assert (= (and b!5680537 res!2400331) b!5680535))

(assert (= (and b!5680532 (not res!2400330)) b!5680534))

(assert (= (and b!5680534 res!2400329) b!5680533))

(assert (= (and b!5680533 (not res!2400328)) b!5680530))

(assert (= (and b!5680530 (not res!2400327)) b!5680528))

(assert (= (or b!5680539 b!5680533 b!5680536) bm!431270))

(declare-fun m!6639964 () Bool)

(assert (=> b!5680538 m!6639964))

(declare-fun m!6639966 () Bool)

(assert (=> b!5680537 m!6639966))

(assert (=> b!5680537 m!6639966))

(declare-fun m!6639968 () Bool)

(assert (=> b!5680537 m!6639968))

(declare-fun m!6639970 () Bool)

(assert (=> b!5680531 m!6639970))

(assert (=> b!5680531 m!6639970))

(declare-fun m!6639972 () Bool)

(assert (=> b!5680531 m!6639972))

(assert (=> b!5680531 m!6639966))

(assert (=> b!5680531 m!6639972))

(assert (=> b!5680531 m!6639966))

(declare-fun m!6639974 () Bool)

(assert (=> b!5680531 m!6639974))

(declare-fun m!6639976 () Bool)

(assert (=> d!1792754 m!6639976))

(assert (=> d!1792754 m!6639800))

(assert (=> b!5680528 m!6639970))

(assert (=> b!5680535 m!6639970))

(assert (=> bm!431270 m!6639976))

(assert (=> b!5680530 m!6639966))

(assert (=> b!5680530 m!6639966))

(assert (=> b!5680530 m!6639968))

(assert (=> d!1792696 d!1792754))

(declare-fun c!999575 () Bool)

(declare-fun call!431278 () Bool)

(declare-fun c!999576 () Bool)

(declare-fun bm!431271 () Bool)

(assert (=> bm!431271 (= call!431278 (validRegex!7409 (ite c!999576 (reg!16002 (regOne!31858 r!7292)) (ite c!999575 (regTwo!31859 (regOne!31858 r!7292)) (regTwo!31858 (regOne!31858 r!7292))))))))

(declare-fun b!5680541 () Bool)

(declare-fun e!3496187 () Bool)

(declare-fun e!3496189 () Bool)

(assert (=> b!5680541 (= e!3496187 e!3496189)))

(declare-fun res!2400338 () Bool)

(assert (=> b!5680541 (=> (not res!2400338) (not e!3496189))))

(declare-fun call!431276 () Bool)

(assert (=> b!5680541 (= res!2400338 call!431276)))

(declare-fun b!5680542 () Bool)

(declare-fun call!431277 () Bool)

(assert (=> b!5680542 (= e!3496189 call!431277)))

(declare-fun b!5680543 () Bool)

(declare-fun e!3496185 () Bool)

(declare-fun e!3496186 () Bool)

(assert (=> b!5680543 (= e!3496185 e!3496186)))

(assert (=> b!5680543 (= c!999575 ((_ is Union!15673) (regOne!31858 r!7292)))))

(declare-fun b!5680544 () Bool)

(declare-fun res!2400334 () Bool)

(assert (=> b!5680544 (=> res!2400334 e!3496187)))

(assert (=> b!5680544 (= res!2400334 (not ((_ is Concat!24518) (regOne!31858 r!7292))))))

(assert (=> b!5680544 (= e!3496186 e!3496187)))

(declare-fun b!5680545 () Bool)

(declare-fun e!3496184 () Bool)

(assert (=> b!5680545 (= e!3496184 call!431278)))

(declare-fun b!5680546 () Bool)

(declare-fun e!3496190 () Bool)

(assert (=> b!5680546 (= e!3496190 e!3496185)))

(assert (=> b!5680546 (= c!999576 ((_ is Star!15673) (regOne!31858 r!7292)))))

(declare-fun b!5680547 () Bool)

(declare-fun res!2400336 () Bool)

(declare-fun e!3496188 () Bool)

(assert (=> b!5680547 (=> (not res!2400336) (not e!3496188))))

(assert (=> b!5680547 (= res!2400336 call!431276)))

(assert (=> b!5680547 (= e!3496186 e!3496188)))

(declare-fun bm!431272 () Bool)

(assert (=> bm!431272 (= call!431276 (validRegex!7409 (ite c!999575 (regOne!31859 (regOne!31858 r!7292)) (regOne!31858 (regOne!31858 r!7292)))))))

(declare-fun bm!431273 () Bool)

(assert (=> bm!431273 (= call!431277 call!431278)))

(declare-fun b!5680548 () Bool)

(assert (=> b!5680548 (= e!3496185 e!3496184)))

(declare-fun res!2400337 () Bool)

(assert (=> b!5680548 (= res!2400337 (not (nullable!5705 (reg!16002 (regOne!31858 r!7292)))))))

(assert (=> b!5680548 (=> (not res!2400337) (not e!3496184))))

(declare-fun b!5680540 () Bool)

(assert (=> b!5680540 (= e!3496188 call!431277)))

(declare-fun d!1792756 () Bool)

(declare-fun res!2400335 () Bool)

(assert (=> d!1792756 (=> res!2400335 e!3496190)))

(assert (=> d!1792756 (= res!2400335 ((_ is ElementMatch!15673) (regOne!31858 r!7292)))))

(assert (=> d!1792756 (= (validRegex!7409 (regOne!31858 r!7292)) e!3496190)))

(assert (= (and d!1792756 (not res!2400335)) b!5680546))

(assert (= (and b!5680546 c!999576) b!5680548))

(assert (= (and b!5680546 (not c!999576)) b!5680543))

(assert (= (and b!5680548 res!2400337) b!5680545))

(assert (= (and b!5680543 c!999575) b!5680547))

(assert (= (and b!5680543 (not c!999575)) b!5680544))

(assert (= (and b!5680547 res!2400336) b!5680540))

(assert (= (and b!5680544 (not res!2400334)) b!5680541))

(assert (= (and b!5680541 res!2400338) b!5680542))

(assert (= (or b!5680540 b!5680542) bm!431273))

(assert (= (or b!5680547 b!5680541) bm!431272))

(assert (= (or b!5680545 bm!431273) bm!431271))

(declare-fun m!6639978 () Bool)

(assert (=> bm!431271 m!6639978))

(declare-fun m!6639980 () Bool)

(assert (=> bm!431272 m!6639980))

(declare-fun m!6639982 () Bool)

(assert (=> b!5680548 m!6639982))

(assert (=> d!1792696 d!1792756))

(declare-fun b!5680549 () Bool)

(declare-fun res!2400339 () Bool)

(declare-fun e!3496194 () Bool)

(assert (=> b!5680549 (=> res!2400339 e!3496194)))

(assert (=> b!5680549 (= res!2400339 (not ((_ is ElementMatch!15673) (derivativeStep!4490 r!7292 (head!12055 s!2326)))))))

(declare-fun e!3496197 () Bool)

(assert (=> b!5680549 (= e!3496197 e!3496194)))

(declare-fun b!5680550 () Bool)

(declare-fun lt!2270261 () Bool)

(assert (=> b!5680550 (= e!3496197 (not lt!2270261))))

(declare-fun b!5680551 () Bool)

(declare-fun e!3496191 () Bool)

(assert (=> b!5680551 (= e!3496191 (not (= (head!12055 (tail!11150 s!2326)) (c!999361 (derivativeStep!4490 r!7292 (head!12055 s!2326))))))))

(declare-fun b!5680552 () Bool)

(declare-fun e!3496192 () Bool)

(assert (=> b!5680552 (= e!3496192 e!3496197)))

(declare-fun c!999578 () Bool)

(assert (=> b!5680552 (= c!999578 ((_ is EmptyLang!15673) (derivativeStep!4490 r!7292 (head!12055 s!2326))))))

(declare-fun d!1792758 () Bool)

(assert (=> d!1792758 e!3496192))

(declare-fun c!999579 () Bool)

(assert (=> d!1792758 (= c!999579 ((_ is EmptyExpr!15673) (derivativeStep!4490 r!7292 (head!12055 s!2326))))))

(declare-fun e!3496196 () Bool)

(assert (=> d!1792758 (= lt!2270261 e!3496196)))

(declare-fun c!999577 () Bool)

(assert (=> d!1792758 (= c!999577 (isEmpty!35048 (tail!11150 s!2326)))))

(assert (=> d!1792758 (validRegex!7409 (derivativeStep!4490 r!7292 (head!12055 s!2326)))))

(assert (=> d!1792758 (= (matchR!7858 (derivativeStep!4490 r!7292 (head!12055 s!2326)) (tail!11150 s!2326)) lt!2270261)))

(declare-fun b!5680553 () Bool)

(declare-fun res!2400340 () Bool)

(assert (=> b!5680553 (=> res!2400340 e!3496191)))

(assert (=> b!5680553 (= res!2400340 (not (isEmpty!35048 (tail!11150 (tail!11150 s!2326)))))))

(declare-fun b!5680554 () Bool)

(assert (=> b!5680554 (= e!3496196 (matchR!7858 (derivativeStep!4490 (derivativeStep!4490 r!7292 (head!12055 s!2326)) (head!12055 (tail!11150 s!2326))) (tail!11150 (tail!11150 s!2326))))))

(declare-fun bm!431274 () Bool)

(declare-fun call!431279 () Bool)

(assert (=> bm!431274 (= call!431279 (isEmpty!35048 (tail!11150 s!2326)))))

(declare-fun b!5680555 () Bool)

(declare-fun res!2400343 () Bool)

(assert (=> b!5680555 (=> res!2400343 e!3496194)))

(declare-fun e!3496193 () Bool)

(assert (=> b!5680555 (= res!2400343 e!3496193)))

(declare-fun res!2400345 () Bool)

(assert (=> b!5680555 (=> (not res!2400345) (not e!3496193))))

(assert (=> b!5680555 (= res!2400345 lt!2270261)))

(declare-fun b!5680556 () Bool)

(declare-fun e!3496195 () Bool)

(assert (=> b!5680556 (= e!3496195 e!3496191)))

(declare-fun res!2400341 () Bool)

(assert (=> b!5680556 (=> res!2400341 e!3496191)))

(assert (=> b!5680556 (= res!2400341 call!431279)))

(declare-fun b!5680557 () Bool)

(assert (=> b!5680557 (= e!3496194 e!3496195)))

(declare-fun res!2400342 () Bool)

(assert (=> b!5680557 (=> (not res!2400342) (not e!3496195))))

(assert (=> b!5680557 (= res!2400342 (not lt!2270261))))

(declare-fun b!5680558 () Bool)

(assert (=> b!5680558 (= e!3496193 (= (head!12055 (tail!11150 s!2326)) (c!999361 (derivativeStep!4490 r!7292 (head!12055 s!2326)))))))

(declare-fun b!5680559 () Bool)

(declare-fun res!2400346 () Bool)

(assert (=> b!5680559 (=> (not res!2400346) (not e!3496193))))

(assert (=> b!5680559 (= res!2400346 (not call!431279))))

(declare-fun b!5680560 () Bool)

(declare-fun res!2400344 () Bool)

(assert (=> b!5680560 (=> (not res!2400344) (not e!3496193))))

(assert (=> b!5680560 (= res!2400344 (isEmpty!35048 (tail!11150 (tail!11150 s!2326))))))

(declare-fun b!5680561 () Bool)

(assert (=> b!5680561 (= e!3496196 (nullable!5705 (derivativeStep!4490 r!7292 (head!12055 s!2326))))))

(declare-fun b!5680562 () Bool)

(assert (=> b!5680562 (= e!3496192 (= lt!2270261 call!431279))))

(assert (= (and d!1792758 c!999577) b!5680561))

(assert (= (and d!1792758 (not c!999577)) b!5680554))

(assert (= (and d!1792758 c!999579) b!5680562))

(assert (= (and d!1792758 (not c!999579)) b!5680552))

(assert (= (and b!5680552 c!999578) b!5680550))

(assert (= (and b!5680552 (not c!999578)) b!5680549))

(assert (= (and b!5680549 (not res!2400339)) b!5680555))

(assert (= (and b!5680555 res!2400345) b!5680559))

(assert (= (and b!5680559 res!2400346) b!5680560))

(assert (= (and b!5680560 res!2400344) b!5680558))

(assert (= (and b!5680555 (not res!2400343)) b!5680557))

(assert (= (and b!5680557 res!2400342) b!5680556))

(assert (= (and b!5680556 (not res!2400341)) b!5680553))

(assert (= (and b!5680553 (not res!2400340)) b!5680551))

(assert (= (or b!5680562 b!5680556 b!5680559) bm!431274))

(assert (=> b!5680561 m!6639736))

(declare-fun m!6639984 () Bool)

(assert (=> b!5680561 m!6639984))

(assert (=> b!5680560 m!6639730))

(declare-fun m!6639986 () Bool)

(assert (=> b!5680560 m!6639986))

(assert (=> b!5680560 m!6639986))

(declare-fun m!6639988 () Bool)

(assert (=> b!5680560 m!6639988))

(assert (=> b!5680554 m!6639730))

(declare-fun m!6639990 () Bool)

(assert (=> b!5680554 m!6639990))

(assert (=> b!5680554 m!6639736))

(assert (=> b!5680554 m!6639990))

(declare-fun m!6639992 () Bool)

(assert (=> b!5680554 m!6639992))

(assert (=> b!5680554 m!6639730))

(assert (=> b!5680554 m!6639986))

(assert (=> b!5680554 m!6639992))

(assert (=> b!5680554 m!6639986))

(declare-fun m!6639994 () Bool)

(assert (=> b!5680554 m!6639994))

(assert (=> d!1792758 m!6639730))

(assert (=> d!1792758 m!6639732))

(assert (=> d!1792758 m!6639736))

(declare-fun m!6639996 () Bool)

(assert (=> d!1792758 m!6639996))

(assert (=> b!5680551 m!6639730))

(assert (=> b!5680551 m!6639990))

(assert (=> b!5680558 m!6639730))

(assert (=> b!5680558 m!6639990))

(assert (=> bm!431274 m!6639730))

(assert (=> bm!431274 m!6639732))

(assert (=> b!5680553 m!6639730))

(assert (=> b!5680553 m!6639986))

(assert (=> b!5680553 m!6639986))

(assert (=> b!5680553 m!6639988))

(assert (=> b!5680191 d!1792758))

(declare-fun bm!431283 () Bool)

(declare-fun c!999592 () Bool)

(declare-fun c!999591 () Bool)

(declare-fun call!431288 () Regex!15673)

(assert (=> bm!431283 (= call!431288 (derivativeStep!4490 (ite c!999592 (regTwo!31859 r!7292) (ite c!999591 (reg!16002 r!7292) (regOne!31858 r!7292))) (head!12055 s!2326)))))

(declare-fun bm!431284 () Bool)

(declare-fun call!431291 () Regex!15673)

(declare-fun c!999593 () Bool)

(assert (=> bm!431284 (= call!431291 (derivativeStep!4490 (ite c!999592 (regOne!31859 r!7292) (ite c!999593 (regTwo!31858 r!7292) (regOne!31858 r!7292))) (head!12055 s!2326)))))

(declare-fun b!5680583 () Bool)

(assert (=> b!5680583 (= c!999593 (nullable!5705 (regOne!31858 r!7292)))))

(declare-fun e!3496211 () Regex!15673)

(declare-fun e!3496209 () Regex!15673)

(assert (=> b!5680583 (= e!3496211 e!3496209)))

(declare-fun b!5680584 () Bool)

(declare-fun call!431290 () Regex!15673)

(assert (=> b!5680584 (= e!3496209 (Union!15673 (Concat!24518 call!431290 (regTwo!31858 r!7292)) EmptyLang!15673))))

(declare-fun b!5680585 () Bool)

(declare-fun e!3496212 () Regex!15673)

(assert (=> b!5680585 (= e!3496212 EmptyLang!15673)))

(declare-fun b!5680586 () Bool)

(declare-fun e!3496208 () Regex!15673)

(assert (=> b!5680586 (= e!3496208 (Union!15673 call!431291 call!431288))))

(declare-fun b!5680587 () Bool)

(assert (=> b!5680587 (= e!3496208 e!3496211)))

(assert (=> b!5680587 (= c!999591 ((_ is Star!15673) r!7292))))

(declare-fun b!5680588 () Bool)

(declare-fun call!431289 () Regex!15673)

(assert (=> b!5680588 (= e!3496209 (Union!15673 (Concat!24518 call!431289 (regTwo!31858 r!7292)) call!431290))))

(declare-fun d!1792760 () Bool)

(declare-fun lt!2270264 () Regex!15673)

(assert (=> d!1792760 (validRegex!7409 lt!2270264)))

(assert (=> d!1792760 (= lt!2270264 e!3496212)))

(declare-fun c!999594 () Bool)

(assert (=> d!1792760 (= c!999594 (or ((_ is EmptyExpr!15673) r!7292) ((_ is EmptyLang!15673) r!7292)))))

(assert (=> d!1792760 (validRegex!7409 r!7292)))

(assert (=> d!1792760 (= (derivativeStep!4490 r!7292 (head!12055 s!2326)) lt!2270264)))

(declare-fun bm!431285 () Bool)

(assert (=> bm!431285 (= call!431289 call!431288)))

(declare-fun b!5680589 () Bool)

(declare-fun e!3496210 () Regex!15673)

(assert (=> b!5680589 (= e!3496212 e!3496210)))

(declare-fun c!999590 () Bool)

(assert (=> b!5680589 (= c!999590 ((_ is ElementMatch!15673) r!7292))))

(declare-fun bm!431286 () Bool)

(assert (=> bm!431286 (= call!431290 call!431291)))

(declare-fun b!5680590 () Bool)

(assert (=> b!5680590 (= e!3496210 (ite (= (head!12055 s!2326) (c!999361 r!7292)) EmptyExpr!15673 EmptyLang!15673))))

(declare-fun b!5680591 () Bool)

(assert (=> b!5680591 (= e!3496211 (Concat!24518 call!431289 r!7292))))

(declare-fun b!5680592 () Bool)

(assert (=> b!5680592 (= c!999592 ((_ is Union!15673) r!7292))))

(assert (=> b!5680592 (= e!3496210 e!3496208)))

(assert (= (and d!1792760 c!999594) b!5680585))

(assert (= (and d!1792760 (not c!999594)) b!5680589))

(assert (= (and b!5680589 c!999590) b!5680590))

(assert (= (and b!5680589 (not c!999590)) b!5680592))

(assert (= (and b!5680592 c!999592) b!5680586))

(assert (= (and b!5680592 (not c!999592)) b!5680587))

(assert (= (and b!5680587 c!999591) b!5680591))

(assert (= (and b!5680587 (not c!999591)) b!5680583))

(assert (= (and b!5680583 c!999593) b!5680588))

(assert (= (and b!5680583 (not c!999593)) b!5680584))

(assert (= (or b!5680588 b!5680584) bm!431286))

(assert (= (or b!5680591 b!5680588) bm!431285))

(assert (= (or b!5680586 bm!431285) bm!431283))

(assert (= (or b!5680586 bm!431286) bm!431284))

(assert (=> bm!431283 m!6639734))

(declare-fun m!6639998 () Bool)

(assert (=> bm!431283 m!6639998))

(assert (=> bm!431284 m!6639734))

(declare-fun m!6640000 () Bool)

(assert (=> bm!431284 m!6640000))

(assert (=> b!5680583 m!6639964))

(declare-fun m!6640002 () Bool)

(assert (=> d!1792760 m!6640002))

(assert (=> d!1792760 m!6639472))

(assert (=> b!5680191 d!1792760))

(declare-fun d!1792770 () Bool)

(assert (=> d!1792770 (= (head!12055 s!2326) (h!69643 s!2326))))

(assert (=> b!5680191 d!1792770))

(declare-fun d!1792772 () Bool)

(assert (=> d!1792772 (= (tail!11150 s!2326) (t!376631 s!2326))))

(assert (=> b!5680191 d!1792772))

(declare-fun b!5680601 () Bool)

(declare-fun e!3496218 () (InoxSet Context!10114))

(declare-fun e!3496219 () (InoxSet Context!10114))

(assert (=> b!5680601 (= e!3496218 e!3496219)))

(declare-fun c!999597 () Bool)

(assert (=> b!5680601 (= c!999597 ((_ is Cons!63194) (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))))))))

(declare-fun b!5680602 () Bool)

(declare-fun call!431292 () (InoxSet Context!10114))

(assert (=> b!5680602 (= e!3496218 ((_ map or) call!431292 (derivationStepZipperUp!941 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))))))) (h!69643 s!2326))))))

(declare-fun b!5680603 () Bool)

(declare-fun e!3496217 () Bool)

(assert (=> b!5680603 (= e!3496217 (nullable!5705 (h!69642 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))))))))))

(declare-fun bm!431287 () Bool)

(assert (=> bm!431287 (= call!431292 (derivationStepZipperDown!1015 (h!69642 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))))) (Context!10115 (t!376630 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))))))) (h!69643 s!2326)))))

(declare-fun d!1792774 () Bool)

(declare-fun c!999598 () Bool)

(assert (=> d!1792774 (= c!999598 e!3496217)))

(declare-fun res!2400351 () Bool)

(assert (=> d!1792774 (=> (not res!2400351) (not e!3496217))))

(assert (=> d!1792774 (= res!2400351 ((_ is Cons!63194) (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))))))))

(assert (=> d!1792774 (= (derivationStepZipperUp!941 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (h!69643 s!2326)) e!3496218)))

(declare-fun b!5680604 () Bool)

(assert (=> b!5680604 (= e!3496219 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680605 () Bool)

(assert (=> b!5680605 (= e!3496219 call!431292)))

(assert (= (and d!1792774 res!2400351) b!5680603))

(assert (= (and d!1792774 c!999598) b!5680602))

(assert (= (and d!1792774 (not c!999598)) b!5680601))

(assert (= (and b!5680601 c!999597) b!5680605))

(assert (= (and b!5680601 (not c!999597)) b!5680604))

(assert (= (or b!5680602 b!5680605) bm!431287))

(declare-fun m!6640004 () Bool)

(assert (=> b!5680602 m!6640004))

(declare-fun m!6640006 () Bool)

(assert (=> b!5680603 m!6640006))

(declare-fun m!6640008 () Bool)

(assert (=> bm!431287 m!6640008))

(assert (=> b!5680384 d!1792774))

(assert (=> bs!1323864 d!1792726))

(declare-fun d!1792776 () Bool)

(declare-fun res!2400352 () Bool)

(declare-fun e!3496220 () Bool)

(assert (=> d!1792776 (=> res!2400352 e!3496220)))

(assert (=> d!1792776 (= res!2400352 ((_ is Nil!63194) lt!2270257))))

(assert (=> d!1792776 (= (forall!14820 lt!2270257 lambda!306081) e!3496220)))

(declare-fun b!5680606 () Bool)

(declare-fun e!3496221 () Bool)

(assert (=> b!5680606 (= e!3496220 e!3496221)))

(declare-fun res!2400353 () Bool)

(assert (=> b!5680606 (=> (not res!2400353) (not e!3496221))))

(assert (=> b!5680606 (= res!2400353 (dynLambda!24731 lambda!306081 (h!69642 lt!2270257)))))

(declare-fun b!5680607 () Bool)

(assert (=> b!5680607 (= e!3496221 (forall!14820 (t!376630 lt!2270257) lambda!306081))))

(assert (= (and d!1792776 (not res!2400352)) b!5680606))

(assert (= (and b!5680606 res!2400353) b!5680607))

(declare-fun b_lambda!214785 () Bool)

(assert (=> (not b_lambda!214785) (not b!5680606)))

(declare-fun m!6640010 () Bool)

(assert (=> b!5680606 m!6640010))

(declare-fun m!6640012 () Bool)

(assert (=> b!5680607 m!6640012))

(assert (=> d!1792718 d!1792776))

(assert (=> b!5680381 d!1792602))

(declare-fun bs!1323883 () Bool)

(declare-fun d!1792778 () Bool)

(assert (= bs!1323883 (and d!1792778 d!1792716)))

(declare-fun lambda!306085 () Int)

(assert (=> bs!1323883 (= lambda!306085 lambda!306078)))

(declare-fun bs!1323884 () Bool)

(assert (= bs!1323884 (and d!1792778 d!1792602)))

(assert (=> bs!1323884 (= lambda!306085 lambda!306034)))

(declare-fun bs!1323885 () Bool)

(assert (= bs!1323885 (and d!1792778 d!1792680)))

(assert (=> bs!1323885 (= lambda!306085 lambda!306065)))

(declare-fun bs!1323886 () Bool)

(assert (= bs!1323886 (and d!1792778 d!1792718)))

(assert (=> bs!1323886 (= lambda!306085 lambda!306081)))

(declare-fun bs!1323887 () Bool)

(assert (= bs!1323887 (and d!1792778 d!1792690)))

(assert (=> bs!1323887 (= lambda!306085 lambda!306066)))

(declare-fun bs!1323888 () Bool)

(assert (= bs!1323888 (and d!1792778 d!1792748)))

(assert (=> bs!1323888 (= lambda!306085 lambda!306084)))

(declare-fun lt!2270267 () List!63318)

(assert (=> d!1792778 (forall!14820 lt!2270267 lambda!306085)))

(declare-fun e!3496222 () List!63318)

(assert (=> d!1792778 (= lt!2270267 e!3496222)))

(declare-fun c!999599 () Bool)

(assert (=> d!1792778 (= c!999599 ((_ is Cons!63196) (t!376632 zl!343)))))

(assert (=> d!1792778 (= (unfocusZipperList!1101 (t!376632 zl!343)) lt!2270267)))

(declare-fun b!5680608 () Bool)

(assert (=> b!5680608 (= e!3496222 (Cons!63194 (generalisedConcat!1288 (exprs!5557 (h!69644 (t!376632 zl!343)))) (unfocusZipperList!1101 (t!376632 (t!376632 zl!343)))))))

(declare-fun b!5680609 () Bool)

(assert (=> b!5680609 (= e!3496222 Nil!63194)))

(assert (= (and d!1792778 c!999599) b!5680608))

(assert (= (and d!1792778 (not c!999599)) b!5680609))

(declare-fun m!6640014 () Bool)

(assert (=> d!1792778 m!6640014))

(declare-fun m!6640016 () Bool)

(assert (=> b!5680608 m!6640016))

(declare-fun m!6640018 () Bool)

(assert (=> b!5680608 m!6640018))

(assert (=> b!5680381 d!1792778))

(declare-fun d!1792780 () Bool)

(assert (=> d!1792780 (= (nullable!5705 (h!69642 (exprs!5557 lt!2270159))) (nullableFct!1783 (h!69642 (exprs!5557 lt!2270159))))))

(declare-fun bs!1323889 () Bool)

(assert (= bs!1323889 d!1792780))

(declare-fun m!6640020 () Bool)

(assert (=> bs!1323889 m!6640020))

(assert (=> b!5680428 d!1792780))

(declare-fun d!1792782 () Bool)

(declare-fun lambda!306088 () Int)

(declare-fun exists!2209 ((InoxSet Context!10114) Int) Bool)

(assert (=> d!1792782 (= (nullableZipper!1637 lt!2270160) (exists!2209 lt!2270160 lambda!306088))))

(declare-fun bs!1323891 () Bool)

(assert (= bs!1323891 d!1792782))

(declare-fun m!6640038 () Bool)

(assert (=> bs!1323891 m!6640038))

(assert (=> b!5680268 d!1792782))

(declare-fun d!1792788 () Bool)

(assert (=> d!1792788 (= (nullable!5705 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343))))) (nullableFct!1783 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343))))))))

(declare-fun bs!1323892 () Bool)

(assert (= bs!1323892 d!1792788))

(declare-fun m!6640040 () Bool)

(assert (=> bs!1323892 m!6640040))

(assert (=> b!5680420 d!1792788))

(declare-fun b!5680616 () Bool)

(declare-fun res!2400356 () Bool)

(declare-fun e!3496229 () Bool)

(assert (=> b!5680616 (=> res!2400356 e!3496229)))

(assert (=> b!5680616 (= res!2400356 (not ((_ is ElementMatch!15673) (regTwo!31858 r!7292))))))

(declare-fun e!3496232 () Bool)

(assert (=> b!5680616 (= e!3496232 e!3496229)))

(declare-fun b!5680617 () Bool)

(declare-fun lt!2270270 () Bool)

(assert (=> b!5680617 (= e!3496232 (not lt!2270270))))

(declare-fun b!5680618 () Bool)

(declare-fun e!3496226 () Bool)

(assert (=> b!5680618 (= e!3496226 (not (= (head!12055 (_2!36073 (get!21775 lt!2270240))) (c!999361 (regTwo!31858 r!7292)))))))

(declare-fun b!5680619 () Bool)

(declare-fun e!3496227 () Bool)

(assert (=> b!5680619 (= e!3496227 e!3496232)))

(declare-fun c!999605 () Bool)

(assert (=> b!5680619 (= c!999605 ((_ is EmptyLang!15673) (regTwo!31858 r!7292)))))

(declare-fun d!1792792 () Bool)

(assert (=> d!1792792 e!3496227))

(declare-fun c!999606 () Bool)

(assert (=> d!1792792 (= c!999606 ((_ is EmptyExpr!15673) (regTwo!31858 r!7292)))))

(declare-fun e!3496231 () Bool)

(assert (=> d!1792792 (= lt!2270270 e!3496231)))

(declare-fun c!999604 () Bool)

(assert (=> d!1792792 (= c!999604 (isEmpty!35048 (_2!36073 (get!21775 lt!2270240))))))

(assert (=> d!1792792 (validRegex!7409 (regTwo!31858 r!7292))))

(assert (=> d!1792792 (= (matchR!7858 (regTwo!31858 r!7292) (_2!36073 (get!21775 lt!2270240))) lt!2270270)))

(declare-fun b!5680620 () Bool)

(declare-fun res!2400357 () Bool)

(assert (=> b!5680620 (=> res!2400357 e!3496226)))

(assert (=> b!5680620 (= res!2400357 (not (isEmpty!35048 (tail!11150 (_2!36073 (get!21775 lt!2270240))))))))

(declare-fun b!5680621 () Bool)

(assert (=> b!5680621 (= e!3496231 (matchR!7858 (derivativeStep!4490 (regTwo!31858 r!7292) (head!12055 (_2!36073 (get!21775 lt!2270240)))) (tail!11150 (_2!36073 (get!21775 lt!2270240)))))))

(declare-fun bm!431288 () Bool)

(declare-fun call!431293 () Bool)

(assert (=> bm!431288 (= call!431293 (isEmpty!35048 (_2!36073 (get!21775 lt!2270240))))))

(declare-fun b!5680622 () Bool)

(declare-fun res!2400360 () Bool)

(assert (=> b!5680622 (=> res!2400360 e!3496229)))

(declare-fun e!3496228 () Bool)

(assert (=> b!5680622 (= res!2400360 e!3496228)))

(declare-fun res!2400362 () Bool)

(assert (=> b!5680622 (=> (not res!2400362) (not e!3496228))))

(assert (=> b!5680622 (= res!2400362 lt!2270270)))

(declare-fun b!5680623 () Bool)

(declare-fun e!3496230 () Bool)

(assert (=> b!5680623 (= e!3496230 e!3496226)))

(declare-fun res!2400358 () Bool)

(assert (=> b!5680623 (=> res!2400358 e!3496226)))

(assert (=> b!5680623 (= res!2400358 call!431293)))

(declare-fun b!5680624 () Bool)

(assert (=> b!5680624 (= e!3496229 e!3496230)))

(declare-fun res!2400359 () Bool)

(assert (=> b!5680624 (=> (not res!2400359) (not e!3496230))))

(assert (=> b!5680624 (= res!2400359 (not lt!2270270))))

(declare-fun b!5680625 () Bool)

(assert (=> b!5680625 (= e!3496228 (= (head!12055 (_2!36073 (get!21775 lt!2270240))) (c!999361 (regTwo!31858 r!7292))))))

(declare-fun b!5680626 () Bool)

(declare-fun res!2400363 () Bool)

(assert (=> b!5680626 (=> (not res!2400363) (not e!3496228))))

(assert (=> b!5680626 (= res!2400363 (not call!431293))))

(declare-fun b!5680627 () Bool)

(declare-fun res!2400361 () Bool)

(assert (=> b!5680627 (=> (not res!2400361) (not e!3496228))))

(assert (=> b!5680627 (= res!2400361 (isEmpty!35048 (tail!11150 (_2!36073 (get!21775 lt!2270240)))))))

(declare-fun b!5680628 () Bool)

(assert (=> b!5680628 (= e!3496231 (nullable!5705 (regTwo!31858 r!7292)))))

(declare-fun b!5680629 () Bool)

(assert (=> b!5680629 (= e!3496227 (= lt!2270270 call!431293))))

(assert (= (and d!1792792 c!999604) b!5680628))

(assert (= (and d!1792792 (not c!999604)) b!5680621))

(assert (= (and d!1792792 c!999606) b!5680629))

(assert (= (and d!1792792 (not c!999606)) b!5680619))

(assert (= (and b!5680619 c!999605) b!5680617))

(assert (= (and b!5680619 (not c!999605)) b!5680616))

(assert (= (and b!5680616 (not res!2400356)) b!5680622))

(assert (= (and b!5680622 res!2400362) b!5680626))

(assert (= (and b!5680626 res!2400363) b!5680627))

(assert (= (and b!5680627 res!2400361) b!5680625))

(assert (= (and b!5680622 (not res!2400360)) b!5680624))

(assert (= (and b!5680624 res!2400359) b!5680623))

(assert (= (and b!5680623 (not res!2400358)) b!5680620))

(assert (= (and b!5680620 (not res!2400357)) b!5680618))

(assert (= (or b!5680629 b!5680623 b!5680626) bm!431288))

(declare-fun m!6640042 () Bool)

(assert (=> b!5680628 m!6640042))

(declare-fun m!6640044 () Bool)

(assert (=> b!5680627 m!6640044))

(assert (=> b!5680627 m!6640044))

(declare-fun m!6640046 () Bool)

(assert (=> b!5680627 m!6640046))

(declare-fun m!6640048 () Bool)

(assert (=> b!5680621 m!6640048))

(assert (=> b!5680621 m!6640048))

(declare-fun m!6640050 () Bool)

(assert (=> b!5680621 m!6640050))

(assert (=> b!5680621 m!6640044))

(assert (=> b!5680621 m!6640050))

(assert (=> b!5680621 m!6640044))

(declare-fun m!6640052 () Bool)

(assert (=> b!5680621 m!6640052))

(declare-fun m!6640054 () Bool)

(assert (=> d!1792792 m!6640054))

(declare-fun m!6640056 () Bool)

(assert (=> d!1792792 m!6640056))

(assert (=> b!5680618 m!6640048))

(assert (=> b!5680625 m!6640048))

(assert (=> bm!431288 m!6640054))

(assert (=> b!5680620 m!6640044))

(assert (=> b!5680620 m!6640044))

(assert (=> b!5680620 m!6640046))

(assert (=> b!5680296 d!1792792))

(declare-fun d!1792794 () Bool)

(assert (=> d!1792794 (= (get!21775 lt!2270240) (v!51730 lt!2270240))))

(assert (=> b!5680296 d!1792794))

(declare-fun b!5680641 () Bool)

(declare-fun e!3496240 () (InoxSet Context!10114))

(declare-fun call!431298 () (InoxSet Context!10114))

(assert (=> b!5680641 (= e!3496240 call!431298)))

(declare-fun b!5680642 () Bool)

(assert (=> b!5680642 (= e!3496240 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680643 () Bool)

(declare-fun e!3496241 () (InoxSet Context!10114))

(declare-fun call!431296 () (InoxSet Context!10114))

(declare-fun call!431299 () (InoxSet Context!10114))

(assert (=> b!5680643 (= e!3496241 ((_ map or) call!431296 call!431299))))

(declare-fun b!5680644 () Bool)

(declare-fun e!3496244 () (InoxSet Context!10114))

(assert (=> b!5680644 (= e!3496244 e!3496241)))

(declare-fun c!999611 () Bool)

(assert (=> b!5680644 (= c!999611 ((_ is Union!15673) (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))))))

(declare-fun bm!431291 () Bool)

(declare-fun call!431297 () (InoxSet Context!10114))

(assert (=> bm!431291 (= call!431298 call!431297)))

(declare-fun d!1792798 () Bool)

(declare-fun c!999615 () Bool)

(assert (=> d!1792798 (= c!999615 (and ((_ is ElementMatch!15673) (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))) (= (c!999361 (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))) (h!69643 s!2326))))))

(assert (=> d!1792798 (= (derivationStepZipperDown!1015 (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343))))) (ite c!999550 lt!2270159 (Context!10115 call!431264)) (h!69643 s!2326)) e!3496244)))

(declare-fun b!5680645 () Bool)

(declare-fun e!3496243 () (InoxSet Context!10114))

(assert (=> b!5680645 (= e!3496243 call!431298)))

(declare-fun b!5680646 () Bool)

(declare-fun e!3496245 () (InoxSet Context!10114))

(assert (=> b!5680646 (= e!3496245 e!3496243)))

(declare-fun c!999614 () Bool)

(assert (=> b!5680646 (= c!999614 ((_ is Concat!24518) (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))))))

(declare-fun b!5680647 () Bool)

(declare-fun c!999612 () Bool)

(assert (=> b!5680647 (= c!999612 ((_ is Star!15673) (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))))))

(assert (=> b!5680647 (= e!3496243 e!3496240)))

(declare-fun bm!431292 () Bool)

(declare-fun c!999613 () Bool)

(declare-fun call!431301 () List!63318)

(assert (=> bm!431292 (= call!431301 ($colon$colon!1704 (exprs!5557 (ite c!999550 lt!2270159 (Context!10115 call!431264))) (ite (or c!999613 c!999614) (regTwo!31858 (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))) (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343))))))))))

(declare-fun b!5680648 () Bool)

(declare-fun e!3496242 () Bool)

(assert (=> b!5680648 (= c!999613 e!3496242)))

(declare-fun res!2400367 () Bool)

(assert (=> b!5680648 (=> (not res!2400367) (not e!3496242))))

(assert (=> b!5680648 (= res!2400367 ((_ is Concat!24518) (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))))))

(assert (=> b!5680648 (= e!3496241 e!3496245)))

(declare-fun bm!431293 () Bool)

(declare-fun call!431300 () List!63318)

(assert (=> bm!431293 (= call!431300 call!431301)))

(declare-fun bm!431294 () Bool)

(assert (=> bm!431294 (= call!431299 (derivationStepZipperDown!1015 (ite c!999611 (regTwo!31859 (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))) (regOne!31858 (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343))))))) (ite c!999611 (ite c!999550 lt!2270159 (Context!10115 call!431264)) (Context!10115 call!431301)) (h!69643 s!2326)))))

(declare-fun b!5680649 () Bool)

(assert (=> b!5680649 (= e!3496245 ((_ map or) call!431299 call!431297))))

(declare-fun bm!431295 () Bool)

(assert (=> bm!431295 (= call!431296 (derivationStepZipperDown!1015 (ite c!999611 (regOne!31859 (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))) (ite c!999613 (regTwo!31858 (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))) (ite c!999614 (regOne!31858 (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))) (reg!16002 (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343))))))))) (ite (or c!999611 c!999613) (ite c!999550 lt!2270159 (Context!10115 call!431264)) (Context!10115 call!431300)) (h!69643 s!2326)))))

(declare-fun b!5680650 () Bool)

(assert (=> b!5680650 (= e!3496244 (store ((as const (Array Context!10114 Bool)) false) (ite c!999550 lt!2270159 (Context!10115 call!431264)) true))))

(declare-fun b!5680651 () Bool)

(assert (=> b!5680651 (= e!3496242 (nullable!5705 (regOne!31858 (ite c!999550 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343))))))))))

(declare-fun bm!431296 () Bool)

(assert (=> bm!431296 (= call!431297 call!431296)))

(assert (= (and d!1792798 c!999615) b!5680650))

(assert (= (and d!1792798 (not c!999615)) b!5680644))

(assert (= (and b!5680644 c!999611) b!5680643))

(assert (= (and b!5680644 (not c!999611)) b!5680648))

(assert (= (and b!5680648 res!2400367) b!5680651))

(assert (= (and b!5680648 c!999613) b!5680649))

(assert (= (and b!5680648 (not c!999613)) b!5680646))

(assert (= (and b!5680646 c!999614) b!5680645))

(assert (= (and b!5680646 (not c!999614)) b!5680647))

(assert (= (and b!5680647 c!999612) b!5680641))

(assert (= (and b!5680647 (not c!999612)) b!5680642))

(assert (= (or b!5680645 b!5680641) bm!431293))

(assert (= (or b!5680645 b!5680641) bm!431291))

(assert (= (or b!5680649 bm!431293) bm!431292))

(assert (= (or b!5680649 bm!431291) bm!431296))

(assert (= (or b!5680643 b!5680649) bm!431294))

(assert (= (or b!5680643 bm!431296) bm!431295))

(declare-fun m!6640064 () Bool)

(assert (=> bm!431294 m!6640064))

(declare-fun m!6640066 () Bool)

(assert (=> bm!431292 m!6640066))

(declare-fun m!6640068 () Bool)

(assert (=> b!5680651 m!6640068))

(declare-fun m!6640070 () Bool)

(assert (=> bm!431295 m!6640070))

(declare-fun m!6640072 () Bool)

(assert (=> b!5680650 m!6640072))

(assert (=> bm!431257 d!1792798))

(declare-fun d!1792800 () Bool)

(declare-fun c!999618 () Bool)

(assert (=> d!1792800 (= c!999618 ((_ is Nil!63196) lt!2270233))))

(declare-fun e!3496248 () (InoxSet Context!10114))

(assert (=> d!1792800 (= (content!11448 lt!2270233) e!3496248)))

(declare-fun b!5680656 () Bool)

(assert (=> b!5680656 (= e!3496248 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680657 () Bool)

(assert (=> b!5680657 (= e!3496248 ((_ map or) (store ((as const (Array Context!10114 Bool)) false) (h!69644 lt!2270233) true) (content!11448 (t!376632 lt!2270233))))))

(assert (= (and d!1792800 c!999618) b!5680656))

(assert (= (and d!1792800 (not c!999618)) b!5680657))

(declare-fun m!6640074 () Bool)

(assert (=> b!5680657 m!6640074))

(declare-fun m!6640076 () Bool)

(assert (=> b!5680657 m!6640076))

(assert (=> b!5680276 d!1792800))

(declare-fun d!1792802 () Bool)

(assert (=> d!1792802 (= (isUnion!636 lt!2270254) ((_ is Union!15673) lt!2270254))))

(assert (=> b!5680373 d!1792802))

(declare-fun d!1792804 () Bool)

(assert (=> d!1792804 true))

(declare-fun setRes!38005 () Bool)

(assert (=> d!1792804 setRes!38005))

(declare-fun condSetEmpty!38005 () Bool)

(declare-fun res!2400368 () (InoxSet Context!10114))

(assert (=> d!1792804 (= condSetEmpty!38005 (= res!2400368 ((as const (Array Context!10114 Bool)) false)))))

(assert (=> d!1792804 (= (choose!42972 lt!2270155 lambda!306019) res!2400368)))

(declare-fun setIsEmpty!38005 () Bool)

(assert (=> setIsEmpty!38005 setRes!38005))

(declare-fun tp!1575114 () Bool)

(declare-fun setNonEmpty!38005 () Bool)

(declare-fun setElem!38005 () Context!10114)

(declare-fun e!3496249 () Bool)

(assert (=> setNonEmpty!38005 (= setRes!38005 (and tp!1575114 (inv!82429 setElem!38005) e!3496249))))

(declare-fun setRest!38005 () (InoxSet Context!10114))

(assert (=> setNonEmpty!38005 (= res!2400368 ((_ map or) (store ((as const (Array Context!10114 Bool)) false) setElem!38005 true) setRest!38005))))

(declare-fun b!5680658 () Bool)

(declare-fun tp!1575113 () Bool)

(assert (=> b!5680658 (= e!3496249 tp!1575113)))

(assert (= (and d!1792804 condSetEmpty!38005) setIsEmpty!38005))

(assert (= (and d!1792804 (not condSetEmpty!38005)) setNonEmpty!38005))

(assert (= setNonEmpty!38005 b!5680658))

(declare-fun m!6640078 () Bool)

(assert (=> setNonEmpty!38005 m!6640078))

(assert (=> d!1792672 d!1792804))

(declare-fun d!1792806 () Bool)

(assert (=> d!1792806 (= (isEmpty!35048 (tail!11150 s!2326)) ((_ is Nil!63195) (tail!11150 s!2326)))))

(assert (=> b!5680197 d!1792806))

(assert (=> b!5680197 d!1792772))

(declare-fun d!1792808 () Bool)

(assert (=> d!1792808 (= (isEmpty!35048 (t!376631 s!2326)) ((_ is Nil!63195) (t!376631 s!2326)))))

(assert (=> d!1792688 d!1792808))

(declare-fun d!1792810 () Bool)

(assert (=> d!1792810 (= (isEmpty!35050 (findConcatSeparation!2096 (regOne!31858 r!7292) (regTwo!31858 r!7292) Nil!63195 s!2326 s!2326)) (not ((_ is Some!15681) (findConcatSeparation!2096 (regOne!31858 r!7292) (regTwo!31858 r!7292) Nil!63195 s!2326 s!2326))))))

(assert (=> d!1792706 d!1792810))

(assert (=> d!1792692 d!1792808))

(declare-fun d!1792812 () Bool)

(assert (=> d!1792812 (= (isConcat!718 lt!2270195) ((_ is Concat!24518) lt!2270195))))

(assert (=> b!5679968 d!1792812))

(declare-fun d!1792814 () Bool)

(declare-fun res!2400381 () Bool)

(declare-fun e!3496272 () Bool)

(assert (=> d!1792814 (=> res!2400381 e!3496272)))

(assert (=> d!1792814 (= res!2400381 ((_ is EmptyExpr!15673) (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(assert (=> d!1792814 (= (nullableFct!1783 (h!69642 (exprs!5557 (h!69644 zl!343)))) e!3496272)))

(declare-fun bm!431307 () Bool)

(declare-fun call!431312 () Bool)

(declare-fun c!999626 () Bool)

(assert (=> bm!431307 (= call!431312 (nullable!5705 (ite c!999626 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))))))

(declare-fun bm!431308 () Bool)

(declare-fun call!431313 () Bool)

(assert (=> bm!431308 (= call!431313 (nullable!5705 (ite c!999626 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))))))))

(declare-fun b!5680684 () Bool)

(declare-fun e!3496269 () Bool)

(declare-fun e!3496270 () Bool)

(assert (=> b!5680684 (= e!3496269 e!3496270)))

(declare-fun res!2400383 () Bool)

(assert (=> b!5680684 (=> res!2400383 e!3496270)))

(assert (=> b!5680684 (= res!2400383 ((_ is Star!15673) (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5680685 () Bool)

(declare-fun e!3496268 () Bool)

(assert (=> b!5680685 (= e!3496270 e!3496268)))

(assert (=> b!5680685 (= c!999626 ((_ is Union!15673) (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5680686 () Bool)

(declare-fun e!3496273 () Bool)

(assert (=> b!5680686 (= e!3496268 e!3496273)))

(declare-fun res!2400382 () Bool)

(assert (=> b!5680686 (= res!2400382 call!431313)))

(assert (=> b!5680686 (=> res!2400382 e!3496273)))

(declare-fun b!5680687 () Bool)

(assert (=> b!5680687 (= e!3496272 e!3496269)))

(declare-fun res!2400384 () Bool)

(assert (=> b!5680687 (=> (not res!2400384) (not e!3496269))))

(assert (=> b!5680687 (= res!2400384 (and (not ((_ is EmptyLang!15673) (h!69642 (exprs!5557 (h!69644 zl!343))))) (not ((_ is ElementMatch!15673) (h!69642 (exprs!5557 (h!69644 zl!343)))))))))

(declare-fun b!5680688 () Bool)

(declare-fun e!3496271 () Bool)

(assert (=> b!5680688 (= e!3496271 call!431312)))

(declare-fun b!5680689 () Bool)

(assert (=> b!5680689 (= e!3496273 call!431312)))

(declare-fun b!5680690 () Bool)

(assert (=> b!5680690 (= e!3496268 e!3496271)))

(declare-fun res!2400380 () Bool)

(assert (=> b!5680690 (= res!2400380 call!431313)))

(assert (=> b!5680690 (=> (not res!2400380) (not e!3496271))))

(assert (= (and d!1792814 (not res!2400381)) b!5680687))

(assert (= (and b!5680687 res!2400384) b!5680684))

(assert (= (and b!5680684 (not res!2400383)) b!5680685))

(assert (= (and b!5680685 c!999626) b!5680686))

(assert (= (and b!5680685 (not c!999626)) b!5680690))

(assert (= (and b!5680686 (not res!2400382)) b!5680689))

(assert (= (and b!5680690 res!2400380) b!5680688))

(assert (= (or b!5680689 b!5680688) bm!431307))

(assert (= (or b!5680686 b!5680690) bm!431308))

(declare-fun m!6640096 () Bool)

(assert (=> bm!431307 m!6640096))

(declare-fun m!6640098 () Bool)

(assert (=> bm!431308 m!6640098))

(assert (=> d!1792730 d!1792814))

(declare-fun d!1792820 () Bool)

(assert (=> d!1792820 (= (flatMap!1286 lt!2270155 lambda!306062) (choose!42972 lt!2270155 lambda!306062))))

(declare-fun bs!1323910 () Bool)

(assert (= bs!1323910 d!1792820))

(declare-fun m!6640102 () Bool)

(assert (=> bs!1323910 m!6640102))

(assert (=> d!1792678 d!1792820))

(declare-fun d!1792824 () Bool)

(declare-fun c!999627 () Bool)

(assert (=> d!1792824 (= c!999627 (isEmpty!35048 (tail!11150 s!2326)))))

(declare-fun e!3496274 () Bool)

(assert (=> d!1792824 (= (matchZipper!1811 (derivationStepZipper!1756 lt!2270155 (head!12055 s!2326)) (tail!11150 s!2326)) e!3496274)))

(declare-fun b!5680691 () Bool)

(assert (=> b!5680691 (= e!3496274 (nullableZipper!1637 (derivationStepZipper!1756 lt!2270155 (head!12055 s!2326))))))

(declare-fun b!5680692 () Bool)

(assert (=> b!5680692 (= e!3496274 (matchZipper!1811 (derivationStepZipper!1756 (derivationStepZipper!1756 lt!2270155 (head!12055 s!2326)) (head!12055 (tail!11150 s!2326))) (tail!11150 (tail!11150 s!2326))))))

(assert (= (and d!1792824 c!999627) b!5680691))

(assert (= (and d!1792824 (not c!999627)) b!5680692))

(assert (=> d!1792824 m!6639730))

(assert (=> d!1792824 m!6639732))

(assert (=> b!5680691 m!6639846))

(declare-fun m!6640104 () Bool)

(assert (=> b!5680691 m!6640104))

(assert (=> b!5680692 m!6639730))

(assert (=> b!5680692 m!6639990))

(assert (=> b!5680692 m!6639846))

(assert (=> b!5680692 m!6639990))

(declare-fun m!6640106 () Bool)

(assert (=> b!5680692 m!6640106))

(assert (=> b!5680692 m!6639730))

(assert (=> b!5680692 m!6639986))

(assert (=> b!5680692 m!6640106))

(assert (=> b!5680692 m!6639986))

(declare-fun m!6640108 () Bool)

(assert (=> b!5680692 m!6640108))

(assert (=> b!5680344 d!1792824))

(declare-fun bs!1323911 () Bool)

(declare-fun d!1792826 () Bool)

(assert (= bs!1323911 (and d!1792826 b!5679736)))

(declare-fun lambda!306092 () Int)

(assert (=> bs!1323911 (= (= (head!12055 s!2326) (h!69643 s!2326)) (= lambda!306092 lambda!306019))))

(declare-fun bs!1323912 () Bool)

(assert (= bs!1323912 (and d!1792826 d!1792678)))

(assert (=> bs!1323912 (= (= (head!12055 s!2326) (h!69643 s!2326)) (= lambda!306092 lambda!306062))))

(assert (=> d!1792826 true))

(assert (=> d!1792826 (= (derivationStepZipper!1756 lt!2270155 (head!12055 s!2326)) (flatMap!1286 lt!2270155 lambda!306092))))

(declare-fun bs!1323913 () Bool)

(assert (= bs!1323913 d!1792826))

(declare-fun m!6640110 () Bool)

(assert (=> bs!1323913 m!6640110))

(assert (=> b!5680344 d!1792826))

(assert (=> b!5680344 d!1792770))

(assert (=> b!5680344 d!1792772))

(declare-fun call!431316 () Bool)

(declare-fun c!999628 () Bool)

(declare-fun bm!431309 () Bool)

(declare-fun c!999629 () Bool)

(assert (=> bm!431309 (= call!431316 (validRegex!7409 (ite c!999629 (reg!16002 (ite c!999519 (regOne!31859 r!7292) (regOne!31858 r!7292))) (ite c!999628 (regTwo!31859 (ite c!999519 (regOne!31859 r!7292) (regOne!31858 r!7292))) (regTwo!31858 (ite c!999519 (regOne!31859 r!7292) (regOne!31858 r!7292)))))))))

(declare-fun b!5680694 () Bool)

(declare-fun e!3496278 () Bool)

(declare-fun e!3496280 () Bool)

(assert (=> b!5680694 (= e!3496278 e!3496280)))

(declare-fun res!2400391 () Bool)

(assert (=> b!5680694 (=> (not res!2400391) (not e!3496280))))

(declare-fun call!431314 () Bool)

(assert (=> b!5680694 (= res!2400391 call!431314)))

(declare-fun b!5680695 () Bool)

(declare-fun call!431315 () Bool)

(assert (=> b!5680695 (= e!3496280 call!431315)))

(declare-fun b!5680696 () Bool)

(declare-fun e!3496276 () Bool)

(declare-fun e!3496277 () Bool)

(assert (=> b!5680696 (= e!3496276 e!3496277)))

(assert (=> b!5680696 (= c!999628 ((_ is Union!15673) (ite c!999519 (regOne!31859 r!7292) (regOne!31858 r!7292))))))

(declare-fun b!5680697 () Bool)

(declare-fun res!2400387 () Bool)

(assert (=> b!5680697 (=> res!2400387 e!3496278)))

(assert (=> b!5680697 (= res!2400387 (not ((_ is Concat!24518) (ite c!999519 (regOne!31859 r!7292) (regOne!31858 r!7292)))))))

(assert (=> b!5680697 (= e!3496277 e!3496278)))

(declare-fun b!5680698 () Bool)

(declare-fun e!3496275 () Bool)

(assert (=> b!5680698 (= e!3496275 call!431316)))

(declare-fun b!5680699 () Bool)

(declare-fun e!3496281 () Bool)

(assert (=> b!5680699 (= e!3496281 e!3496276)))

(assert (=> b!5680699 (= c!999629 ((_ is Star!15673) (ite c!999519 (regOne!31859 r!7292) (regOne!31858 r!7292))))))

(declare-fun b!5680700 () Bool)

(declare-fun res!2400389 () Bool)

(declare-fun e!3496279 () Bool)

(assert (=> b!5680700 (=> (not res!2400389) (not e!3496279))))

(assert (=> b!5680700 (= res!2400389 call!431314)))

(assert (=> b!5680700 (= e!3496277 e!3496279)))

(declare-fun bm!431310 () Bool)

(assert (=> bm!431310 (= call!431314 (validRegex!7409 (ite c!999628 (regOne!31859 (ite c!999519 (regOne!31859 r!7292) (regOne!31858 r!7292))) (regOne!31858 (ite c!999519 (regOne!31859 r!7292) (regOne!31858 r!7292))))))))

(declare-fun bm!431311 () Bool)

(assert (=> bm!431311 (= call!431315 call!431316)))

(declare-fun b!5680701 () Bool)

(assert (=> b!5680701 (= e!3496276 e!3496275)))

(declare-fun res!2400390 () Bool)

(assert (=> b!5680701 (= res!2400390 (not (nullable!5705 (reg!16002 (ite c!999519 (regOne!31859 r!7292) (regOne!31858 r!7292))))))))

(assert (=> b!5680701 (=> (not res!2400390) (not e!3496275))))

(declare-fun b!5680693 () Bool)

(assert (=> b!5680693 (= e!3496279 call!431315)))

(declare-fun d!1792828 () Bool)

(declare-fun res!2400388 () Bool)

(assert (=> d!1792828 (=> res!2400388 e!3496281)))

(assert (=> d!1792828 (= res!2400388 ((_ is ElementMatch!15673) (ite c!999519 (regOne!31859 r!7292) (regOne!31858 r!7292))))))

(assert (=> d!1792828 (= (validRegex!7409 (ite c!999519 (regOne!31859 r!7292) (regOne!31858 r!7292))) e!3496281)))

(assert (= (and d!1792828 (not res!2400388)) b!5680699))

(assert (= (and b!5680699 c!999629) b!5680701))

(assert (= (and b!5680699 (not c!999629)) b!5680696))

(assert (= (and b!5680701 res!2400390) b!5680698))

(assert (= (and b!5680696 c!999628) b!5680700))

(assert (= (and b!5680696 (not c!999628)) b!5680697))

(assert (= (and b!5680700 res!2400389) b!5680693))

(assert (= (and b!5680697 (not res!2400387)) b!5680694))

(assert (= (and b!5680694 res!2400391) b!5680695))

(assert (= (or b!5680693 b!5680695) bm!431311))

(assert (= (or b!5680700 b!5680694) bm!431310))

(assert (= (or b!5680698 bm!431311) bm!431309))

(declare-fun m!6640112 () Bool)

(assert (=> bm!431309 m!6640112))

(declare-fun m!6640114 () Bool)

(assert (=> bm!431310 m!6640114))

(declare-fun m!6640116 () Bool)

(assert (=> b!5680701 m!6640116))

(assert (=> bm!431239 d!1792828))

(declare-fun b!5680702 () Bool)

(declare-fun res!2400393 () Bool)

(declare-fun e!3496285 () Bool)

(assert (=> b!5680702 (=> res!2400393 e!3496285)))

(assert (=> b!5680702 (= res!2400393 (not ((_ is ElementMatch!15673) (regTwo!31858 r!7292))))))

(declare-fun e!3496288 () Bool)

(assert (=> b!5680702 (= e!3496288 e!3496285)))

(declare-fun b!5680703 () Bool)

(declare-fun lt!2270271 () Bool)

(assert (=> b!5680703 (= e!3496288 (not lt!2270271))))

(declare-fun b!5680704 () Bool)

(declare-fun e!3496282 () Bool)

(assert (=> b!5680704 (= e!3496282 (not (= (head!12055 s!2326) (c!999361 (regTwo!31858 r!7292)))))))

(declare-fun b!5680705 () Bool)

(declare-fun e!3496283 () Bool)

(assert (=> b!5680705 (= e!3496283 e!3496288)))

(declare-fun c!999631 () Bool)

(assert (=> b!5680705 (= c!999631 ((_ is EmptyLang!15673) (regTwo!31858 r!7292)))))

(declare-fun d!1792832 () Bool)

(assert (=> d!1792832 e!3496283))

(declare-fun c!999632 () Bool)

(assert (=> d!1792832 (= c!999632 ((_ is EmptyExpr!15673) (regTwo!31858 r!7292)))))

(declare-fun e!3496287 () Bool)

(assert (=> d!1792832 (= lt!2270271 e!3496287)))

(declare-fun c!999630 () Bool)

(assert (=> d!1792832 (= c!999630 (isEmpty!35048 s!2326))))

(assert (=> d!1792832 (validRegex!7409 (regTwo!31858 r!7292))))

(assert (=> d!1792832 (= (matchR!7858 (regTwo!31858 r!7292) s!2326) lt!2270271)))

(declare-fun b!5680706 () Bool)

(declare-fun res!2400394 () Bool)

(assert (=> b!5680706 (=> res!2400394 e!3496282)))

(assert (=> b!5680706 (= res!2400394 (not (isEmpty!35048 (tail!11150 s!2326))))))

(declare-fun b!5680707 () Bool)

(assert (=> b!5680707 (= e!3496287 (matchR!7858 (derivativeStep!4490 (regTwo!31858 r!7292) (head!12055 s!2326)) (tail!11150 s!2326)))))

(declare-fun bm!431312 () Bool)

(declare-fun call!431317 () Bool)

(assert (=> bm!431312 (= call!431317 (isEmpty!35048 s!2326))))

(declare-fun b!5680708 () Bool)

(declare-fun res!2400397 () Bool)

(assert (=> b!5680708 (=> res!2400397 e!3496285)))

(declare-fun e!3496284 () Bool)

(assert (=> b!5680708 (= res!2400397 e!3496284)))

(declare-fun res!2400399 () Bool)

(assert (=> b!5680708 (=> (not res!2400399) (not e!3496284))))

(assert (=> b!5680708 (= res!2400399 lt!2270271)))

(declare-fun b!5680709 () Bool)

(declare-fun e!3496286 () Bool)

(assert (=> b!5680709 (= e!3496286 e!3496282)))

(declare-fun res!2400395 () Bool)

(assert (=> b!5680709 (=> res!2400395 e!3496282)))

(assert (=> b!5680709 (= res!2400395 call!431317)))

(declare-fun b!5680710 () Bool)

(assert (=> b!5680710 (= e!3496285 e!3496286)))

(declare-fun res!2400396 () Bool)

(assert (=> b!5680710 (=> (not res!2400396) (not e!3496286))))

(assert (=> b!5680710 (= res!2400396 (not lt!2270271))))

(declare-fun b!5680711 () Bool)

(assert (=> b!5680711 (= e!3496284 (= (head!12055 s!2326) (c!999361 (regTwo!31858 r!7292))))))

(declare-fun b!5680712 () Bool)

(declare-fun res!2400400 () Bool)

(assert (=> b!5680712 (=> (not res!2400400) (not e!3496284))))

(assert (=> b!5680712 (= res!2400400 (not call!431317))))

(declare-fun b!5680713 () Bool)

(declare-fun res!2400398 () Bool)

(assert (=> b!5680713 (=> (not res!2400398) (not e!3496284))))

(assert (=> b!5680713 (= res!2400398 (isEmpty!35048 (tail!11150 s!2326)))))

(declare-fun b!5680714 () Bool)

(assert (=> b!5680714 (= e!3496287 (nullable!5705 (regTwo!31858 r!7292)))))

(declare-fun b!5680715 () Bool)

(assert (=> b!5680715 (= e!3496283 (= lt!2270271 call!431317))))

(assert (= (and d!1792832 c!999630) b!5680714))

(assert (= (and d!1792832 (not c!999630)) b!5680707))

(assert (= (and d!1792832 c!999632) b!5680715))

(assert (= (and d!1792832 (not c!999632)) b!5680705))

(assert (= (and b!5680705 c!999631) b!5680703))

(assert (= (and b!5680705 (not c!999631)) b!5680702))

(assert (= (and b!5680702 (not res!2400393)) b!5680708))

(assert (= (and b!5680708 res!2400399) b!5680712))

(assert (= (and b!5680712 res!2400400) b!5680713))

(assert (= (and b!5680713 res!2400398) b!5680711))

(assert (= (and b!5680708 (not res!2400397)) b!5680710))

(assert (= (and b!5680710 res!2400396) b!5680709))

(assert (= (and b!5680709 (not res!2400395)) b!5680706))

(assert (= (and b!5680706 (not res!2400394)) b!5680704))

(assert (= (or b!5680715 b!5680709 b!5680712) bm!431312))

(assert (=> b!5680714 m!6640042))

(assert (=> b!5680713 m!6639730))

(assert (=> b!5680713 m!6639730))

(assert (=> b!5680713 m!6639732))

(assert (=> b!5680707 m!6639734))

(assert (=> b!5680707 m!6639734))

(declare-fun m!6640118 () Bool)

(assert (=> b!5680707 m!6640118))

(assert (=> b!5680707 m!6639730))

(assert (=> b!5680707 m!6640118))

(assert (=> b!5680707 m!6639730))

(declare-fun m!6640120 () Bool)

(assert (=> b!5680707 m!6640120))

(assert (=> d!1792832 m!6639710))

(assert (=> d!1792832 m!6640056))

(assert (=> b!5680704 m!6639734))

(assert (=> b!5680711 m!6639734))

(assert (=> bm!431312 m!6639710))

(assert (=> b!5680706 m!6639730))

(assert (=> b!5680706 m!6639730))

(assert (=> b!5680706 m!6639732))

(assert (=> b!5680303 d!1792832))

(declare-fun d!1792834 () Bool)

(assert (=> d!1792834 (= (isEmpty!35048 s!2326) ((_ is Nil!63195) s!2326))))

(assert (=> d!1792712 d!1792834))

(assert (=> b!5680190 d!1792806))

(assert (=> b!5680190 d!1792772))

(declare-fun d!1792836 () Bool)

(declare-fun res!2400403 () Bool)

(declare-fun e!3496291 () Bool)

(assert (=> d!1792836 (=> res!2400403 e!3496291)))

(assert (=> d!1792836 (= res!2400403 ((_ is Nil!63194) (exprs!5557 setElem!37995)))))

(assert (=> d!1792836 (= (forall!14820 (exprs!5557 setElem!37995) lambda!306066) e!3496291)))

(declare-fun b!5680718 () Bool)

(declare-fun e!3496292 () Bool)

(assert (=> b!5680718 (= e!3496291 e!3496292)))

(declare-fun res!2400404 () Bool)

(assert (=> b!5680718 (=> (not res!2400404) (not e!3496292))))

(assert (=> b!5680718 (= res!2400404 (dynLambda!24731 lambda!306066 (h!69642 (exprs!5557 setElem!37995))))))

(declare-fun b!5680719 () Bool)

(assert (=> b!5680719 (= e!3496292 (forall!14820 (t!376630 (exprs!5557 setElem!37995)) lambda!306066))))

(assert (= (and d!1792836 (not res!2400403)) b!5680718))

(assert (= (and b!5680718 res!2400404) b!5680719))

(declare-fun b_lambda!214787 () Bool)

(assert (=> (not b_lambda!214787) (not b!5680718)))

(declare-fun m!6640122 () Bool)

(assert (=> b!5680718 m!6640122))

(declare-fun m!6640124 () Bool)

(assert (=> b!5680719 m!6640124))

(assert (=> d!1792690 d!1792836))

(declare-fun b!5680720 () Bool)

(declare-fun e!3496293 () (InoxSet Context!10114))

(declare-fun call!431320 () (InoxSet Context!10114))

(assert (=> b!5680720 (= e!3496293 call!431320)))

(declare-fun b!5680721 () Bool)

(assert (=> b!5680721 (= e!3496293 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680722 () Bool)

(declare-fun e!3496294 () (InoxSet Context!10114))

(declare-fun call!431318 () (InoxSet Context!10114))

(declare-fun call!431321 () (InoxSet Context!10114))

(assert (=> b!5680722 (= e!3496294 ((_ map or) call!431318 call!431321))))

(declare-fun b!5680723 () Bool)

(declare-fun e!3496297 () (InoxSet Context!10114))

(assert (=> b!5680723 (= e!3496297 e!3496294)))

(declare-fun c!999633 () Bool)

(assert (=> b!5680723 (= c!999633 ((_ is Union!15673) (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun bm!431313 () Bool)

(declare-fun call!431319 () (InoxSet Context!10114))

(assert (=> bm!431313 (= call!431320 call!431319)))

(declare-fun d!1792838 () Bool)

(declare-fun c!999637 () Bool)

(assert (=> d!1792838 (= c!999637 (and ((_ is ElementMatch!15673) (h!69642 (exprs!5557 (h!69644 zl!343)))) (= (c!999361 (h!69642 (exprs!5557 (h!69644 zl!343)))) (h!69643 s!2326))))))

(assert (=> d!1792838 (= (derivationStepZipperDown!1015 (h!69642 (exprs!5557 (h!69644 zl!343))) (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343)))) (h!69643 s!2326)) e!3496297)))

(declare-fun b!5680724 () Bool)

(declare-fun e!3496296 () (InoxSet Context!10114))

(assert (=> b!5680724 (= e!3496296 call!431320)))

(declare-fun b!5680725 () Bool)

(declare-fun e!3496298 () (InoxSet Context!10114))

(assert (=> b!5680725 (= e!3496298 e!3496296)))

(declare-fun c!999636 () Bool)

(assert (=> b!5680725 (= c!999636 ((_ is Concat!24518) (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5680726 () Bool)

(declare-fun c!999634 () Bool)

(assert (=> b!5680726 (= c!999634 ((_ is Star!15673) (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(assert (=> b!5680726 (= e!3496296 e!3496293)))

(declare-fun call!431323 () List!63318)

(declare-fun bm!431314 () Bool)

(declare-fun c!999635 () Bool)

(assert (=> bm!431314 (= call!431323 ($colon$colon!1704 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343))))) (ite (or c!999635 c!999636) (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (h!69642 (exprs!5557 (h!69644 zl!343))))))))

(declare-fun b!5680727 () Bool)

(declare-fun e!3496295 () Bool)

(assert (=> b!5680727 (= c!999635 e!3496295)))

(declare-fun res!2400405 () Bool)

(assert (=> b!5680727 (=> (not res!2400405) (not e!3496295))))

(assert (=> b!5680727 (= res!2400405 ((_ is Concat!24518) (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(assert (=> b!5680727 (= e!3496294 e!3496298)))

(declare-fun bm!431315 () Bool)

(declare-fun call!431322 () List!63318)

(assert (=> bm!431315 (= call!431322 call!431323)))

(declare-fun bm!431316 () Bool)

(assert (=> bm!431316 (= call!431321 (derivationStepZipperDown!1015 (ite c!999633 (regTwo!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343))))) (ite c!999633 (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343)))) (Context!10115 call!431323)) (h!69643 s!2326)))))

(declare-fun b!5680728 () Bool)

(assert (=> b!5680728 (= e!3496298 ((_ map or) call!431321 call!431319))))

(declare-fun bm!431317 () Bool)

(assert (=> bm!431317 (= call!431318 (derivationStepZipperDown!1015 (ite c!999633 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999635 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999636 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343))))))) (ite (or c!999633 c!999635) (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343)))) (Context!10115 call!431322)) (h!69643 s!2326)))))

(declare-fun b!5680729 () Bool)

(assert (=> b!5680729 (= e!3496297 (store ((as const (Array Context!10114 Bool)) false) (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343)))) true))))

(declare-fun b!5680730 () Bool)

(assert (=> b!5680730 (= e!3496295 (nullable!5705 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343))))))))

(declare-fun bm!431318 () Bool)

(assert (=> bm!431318 (= call!431319 call!431318)))

(assert (= (and d!1792838 c!999637) b!5680729))

(assert (= (and d!1792838 (not c!999637)) b!5680723))

(assert (= (and b!5680723 c!999633) b!5680722))

(assert (= (and b!5680723 (not c!999633)) b!5680727))

(assert (= (and b!5680727 res!2400405) b!5680730))

(assert (= (and b!5680727 c!999635) b!5680728))

(assert (= (and b!5680727 (not c!999635)) b!5680725))

(assert (= (and b!5680725 c!999636) b!5680724))

(assert (= (and b!5680725 (not c!999636)) b!5680726))

(assert (= (and b!5680726 c!999634) b!5680720))

(assert (= (and b!5680726 (not c!999634)) b!5680721))

(assert (= (or b!5680724 b!5680720) bm!431315))

(assert (= (or b!5680724 b!5680720) bm!431313))

(assert (= (or b!5680728 bm!431315) bm!431314))

(assert (= (or b!5680728 bm!431313) bm!431318))

(assert (= (or b!5680722 b!5680728) bm!431316))

(assert (= (or b!5680722 bm!431318) bm!431317))

(declare-fun m!6640126 () Bool)

(assert (=> bm!431316 m!6640126))

(declare-fun m!6640128 () Bool)

(assert (=> bm!431314 m!6640128))

(assert (=> b!5680730 m!6639892))

(declare-fun m!6640130 () Bool)

(assert (=> bm!431317 m!6640130))

(declare-fun m!6640132 () Bool)

(assert (=> b!5680729 m!6640132))

(assert (=> bm!431260 d!1792838))

(declare-fun d!1792840 () Bool)

(assert (=> d!1792840 (= (Exists!2773 lambda!306074) (choose!42978 lambda!306074))))

(declare-fun bs!1323914 () Bool)

(assert (= bs!1323914 d!1792840))

(declare-fun m!6640134 () Bool)

(assert (=> bs!1323914 m!6640134))

(assert (=> d!1792704 d!1792840))

(declare-fun d!1792842 () Bool)

(assert (=> d!1792842 (= (Exists!2773 lambda!306075) (choose!42978 lambda!306075))))

(declare-fun bs!1323915 () Bool)

(assert (= bs!1323915 d!1792842))

(declare-fun m!6640138 () Bool)

(assert (=> bs!1323915 m!6640138))

(assert (=> d!1792704 d!1792842))

(declare-fun bs!1323916 () Bool)

(declare-fun d!1792846 () Bool)

(assert (= bs!1323916 (and d!1792846 b!5680504)))

(declare-fun lambda!306097 () Int)

(assert (=> bs!1323916 (not (= lambda!306097 lambda!306082))))

(declare-fun bs!1323917 () Bool)

(assert (= bs!1323917 (and d!1792846 b!5679738)))

(assert (=> bs!1323917 (not (= lambda!306097 lambda!306018))))

(declare-fun bs!1323918 () Bool)

(assert (= bs!1323918 (and d!1792846 d!1792704)))

(assert (=> bs!1323918 (not (= lambda!306097 lambda!306075))))

(declare-fun bs!1323919 () Bool)

(assert (= bs!1323919 (and d!1792846 b!5680103)))

(assert (=> bs!1323919 (not (= lambda!306097 lambda!306050))))

(declare-fun bs!1323920 () Bool)

(assert (= bs!1323920 (and d!1792846 b!5680508)))

(assert (=> bs!1323920 (not (= lambda!306097 lambda!306083))))

(declare-fun bs!1323921 () Bool)

(assert (= bs!1323921 (and d!1792846 b!5680107)))

(assert (=> bs!1323921 (not (= lambda!306097 lambda!306052))))

(assert (=> bs!1323918 (= lambda!306097 lambda!306074)))

(declare-fun bs!1323922 () Bool)

(assert (= bs!1323922 (and d!1792846 d!1792702)))

(assert (=> bs!1323922 (= lambda!306097 lambda!306069)))

(assert (=> bs!1323917 (= lambda!306097 lambda!306017)))

(assert (=> d!1792846 true))

(assert (=> d!1792846 true))

(assert (=> d!1792846 true))

(declare-fun lambda!306098 () Int)

(assert (=> bs!1323916 (not (= lambda!306098 lambda!306082))))

(assert (=> bs!1323917 (= lambda!306098 lambda!306018)))

(assert (=> bs!1323918 (= lambda!306098 lambda!306075)))

(assert (=> bs!1323919 (not (= lambda!306098 lambda!306050))))

(declare-fun bs!1323923 () Bool)

(assert (= bs!1323923 d!1792846))

(assert (=> bs!1323923 (not (= lambda!306098 lambda!306097))))

(assert (=> bs!1323920 (= (and (= (regOne!31858 r!7292) (regOne!31858 (regTwo!31859 r!7292))) (= (regTwo!31858 r!7292) (regTwo!31858 (regTwo!31859 r!7292)))) (= lambda!306098 lambda!306083))))

(assert (=> bs!1323921 (= lambda!306098 lambda!306052)))

(assert (=> bs!1323918 (not (= lambda!306098 lambda!306074))))

(assert (=> bs!1323922 (not (= lambda!306098 lambda!306069))))

(assert (=> bs!1323917 (not (= lambda!306098 lambda!306017))))

(assert (=> d!1792846 true))

(assert (=> d!1792846 true))

(assert (=> d!1792846 true))

(assert (=> d!1792846 (= (Exists!2773 lambda!306097) (Exists!2773 lambda!306098))))

(assert (=> d!1792846 true))

(declare-fun _$90!1432 () Unit!156224)

(assert (=> d!1792846 (= (choose!42980 (regOne!31858 r!7292) (regTwo!31858 r!7292) s!2326) _$90!1432)))

(declare-fun m!6640172 () Bool)

(assert (=> bs!1323923 m!6640172))

(declare-fun m!6640174 () Bool)

(assert (=> bs!1323923 m!6640174))

(assert (=> d!1792704 d!1792846))

(assert (=> d!1792704 d!1792756))

(declare-fun b!5680779 () Bool)

(declare-fun e!3496325 () (InoxSet Context!10114))

(declare-fun e!3496326 () (InoxSet Context!10114))

(assert (=> b!5680779 (= e!3496325 e!3496326)))

(declare-fun c!999649 () Bool)

(assert (=> b!5680779 (= c!999649 ((_ is Cons!63194) (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270159))))))))

(declare-fun call!431332 () (InoxSet Context!10114))

(declare-fun b!5680780 () Bool)

(assert (=> b!5680780 (= e!3496325 ((_ map or) call!431332 (derivationStepZipperUp!941 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270159)))))) (h!69643 s!2326))))))

(declare-fun b!5680781 () Bool)

(declare-fun e!3496324 () Bool)

(assert (=> b!5680781 (= e!3496324 (nullable!5705 (h!69642 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270159)))))))))

(declare-fun bm!431327 () Bool)

(assert (=> bm!431327 (= call!431332 (derivationStepZipperDown!1015 (h!69642 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270159))))) (Context!10115 (t!376630 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270159)))))) (h!69643 s!2326)))))

(declare-fun d!1792856 () Bool)

(declare-fun c!999650 () Bool)

(assert (=> d!1792856 (= c!999650 e!3496324)))

(declare-fun res!2400432 () Bool)

(assert (=> d!1792856 (=> (not res!2400432) (not e!3496324))))

(assert (=> d!1792856 (= res!2400432 ((_ is Cons!63194) (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270159))))))))

(assert (=> d!1792856 (= (derivationStepZipperUp!941 (Context!10115 (t!376630 (exprs!5557 lt!2270159))) (h!69643 s!2326)) e!3496325)))

(declare-fun b!5680782 () Bool)

(assert (=> b!5680782 (= e!3496326 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680783 () Bool)

(assert (=> b!5680783 (= e!3496326 call!431332)))

(assert (= (and d!1792856 res!2400432) b!5680781))

(assert (= (and d!1792856 c!999650) b!5680780))

(assert (= (and d!1792856 (not c!999650)) b!5680779))

(assert (= (and b!5680779 c!999649) b!5680783))

(assert (= (and b!5680779 (not c!999649)) b!5680782))

(assert (= (or b!5680780 b!5680783) bm!431327))

(declare-fun m!6640176 () Bool)

(assert (=> b!5680780 m!6640176))

(declare-fun m!6640178 () Bool)

(assert (=> b!5680781 m!6640178))

(declare-fun m!6640180 () Bool)

(assert (=> bm!431327 m!6640180))

(assert (=> b!5680427 d!1792856))

(declare-fun b!5680784 () Bool)

(declare-fun e!3496327 () (InoxSet Context!10114))

(declare-fun call!431335 () (InoxSet Context!10114))

(assert (=> b!5680784 (= e!3496327 call!431335)))

(declare-fun b!5680785 () Bool)

(assert (=> b!5680785 (= e!3496327 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680786 () Bool)

(declare-fun e!3496328 () (InoxSet Context!10114))

(declare-fun call!431333 () (InoxSet Context!10114))

(declare-fun call!431336 () (InoxSet Context!10114))

(assert (=> b!5680786 (= e!3496328 ((_ map or) call!431333 call!431336))))

(declare-fun b!5680787 () Bool)

(declare-fun e!3496331 () (InoxSet Context!10114))

(assert (=> b!5680787 (= e!3496331 e!3496328)))

(declare-fun c!999651 () Bool)

(assert (=> b!5680787 (= c!999651 ((_ is Union!15673) (h!69642 (exprs!5557 lt!2270169))))))

(declare-fun bm!431328 () Bool)

(declare-fun call!431334 () (InoxSet Context!10114))

(assert (=> bm!431328 (= call!431335 call!431334)))

(declare-fun d!1792858 () Bool)

(declare-fun c!999655 () Bool)

(assert (=> d!1792858 (= c!999655 (and ((_ is ElementMatch!15673) (h!69642 (exprs!5557 lt!2270169))) (= (c!999361 (h!69642 (exprs!5557 lt!2270169))) (h!69643 s!2326))))))

(assert (=> d!1792858 (= (derivationStepZipperDown!1015 (h!69642 (exprs!5557 lt!2270169)) (Context!10115 (t!376630 (exprs!5557 lt!2270169))) (h!69643 s!2326)) e!3496331)))

(declare-fun b!5680788 () Bool)

(declare-fun e!3496330 () (InoxSet Context!10114))

(assert (=> b!5680788 (= e!3496330 call!431335)))

(declare-fun b!5680789 () Bool)

(declare-fun e!3496332 () (InoxSet Context!10114))

(assert (=> b!5680789 (= e!3496332 e!3496330)))

(declare-fun c!999654 () Bool)

(assert (=> b!5680789 (= c!999654 ((_ is Concat!24518) (h!69642 (exprs!5557 lt!2270169))))))

(declare-fun b!5680790 () Bool)

(declare-fun c!999652 () Bool)

(assert (=> b!5680790 (= c!999652 ((_ is Star!15673) (h!69642 (exprs!5557 lt!2270169))))))

(assert (=> b!5680790 (= e!3496330 e!3496327)))

(declare-fun call!431338 () List!63318)

(declare-fun bm!431329 () Bool)

(declare-fun c!999653 () Bool)

(assert (=> bm!431329 (= call!431338 ($colon$colon!1704 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270169)))) (ite (or c!999653 c!999654) (regTwo!31858 (h!69642 (exprs!5557 lt!2270169))) (h!69642 (exprs!5557 lt!2270169)))))))

(declare-fun b!5680791 () Bool)

(declare-fun e!3496329 () Bool)

(assert (=> b!5680791 (= c!999653 e!3496329)))

(declare-fun res!2400433 () Bool)

(assert (=> b!5680791 (=> (not res!2400433) (not e!3496329))))

(assert (=> b!5680791 (= res!2400433 ((_ is Concat!24518) (h!69642 (exprs!5557 lt!2270169))))))

(assert (=> b!5680791 (= e!3496328 e!3496332)))

(declare-fun bm!431330 () Bool)

(declare-fun call!431337 () List!63318)

(assert (=> bm!431330 (= call!431337 call!431338)))

(declare-fun bm!431331 () Bool)

(assert (=> bm!431331 (= call!431336 (derivationStepZipperDown!1015 (ite c!999651 (regTwo!31859 (h!69642 (exprs!5557 lt!2270169))) (regOne!31858 (h!69642 (exprs!5557 lt!2270169)))) (ite c!999651 (Context!10115 (t!376630 (exprs!5557 lt!2270169))) (Context!10115 call!431338)) (h!69643 s!2326)))))

(declare-fun b!5680792 () Bool)

(assert (=> b!5680792 (= e!3496332 ((_ map or) call!431336 call!431334))))

(declare-fun bm!431332 () Bool)

(assert (=> bm!431332 (= call!431333 (derivationStepZipperDown!1015 (ite c!999651 (regOne!31859 (h!69642 (exprs!5557 lt!2270169))) (ite c!999653 (regTwo!31858 (h!69642 (exprs!5557 lt!2270169))) (ite c!999654 (regOne!31858 (h!69642 (exprs!5557 lt!2270169))) (reg!16002 (h!69642 (exprs!5557 lt!2270169)))))) (ite (or c!999651 c!999653) (Context!10115 (t!376630 (exprs!5557 lt!2270169))) (Context!10115 call!431337)) (h!69643 s!2326)))))

(declare-fun b!5680793 () Bool)

(assert (=> b!5680793 (= e!3496331 (store ((as const (Array Context!10114 Bool)) false) (Context!10115 (t!376630 (exprs!5557 lt!2270169))) true))))

(declare-fun b!5680794 () Bool)

(assert (=> b!5680794 (= e!3496329 (nullable!5705 (regOne!31858 (h!69642 (exprs!5557 lt!2270169)))))))

(declare-fun bm!431333 () Bool)

(assert (=> bm!431333 (= call!431334 call!431333)))

(assert (= (and d!1792858 c!999655) b!5680793))

(assert (= (and d!1792858 (not c!999655)) b!5680787))

(assert (= (and b!5680787 c!999651) b!5680786))

(assert (= (and b!5680787 (not c!999651)) b!5680791))

(assert (= (and b!5680791 res!2400433) b!5680794))

(assert (= (and b!5680791 c!999653) b!5680792))

(assert (= (and b!5680791 (not c!999653)) b!5680789))

(assert (= (and b!5680789 c!999654) b!5680788))

(assert (= (and b!5680789 (not c!999654)) b!5680790))

(assert (= (and b!5680790 c!999652) b!5680784))

(assert (= (and b!5680790 (not c!999652)) b!5680785))

(assert (= (or b!5680788 b!5680784) bm!431330))

(assert (= (or b!5680788 b!5680784) bm!431328))

(assert (= (or b!5680792 bm!431330) bm!431329))

(assert (= (or b!5680792 bm!431328) bm!431333))

(assert (= (or b!5680786 b!5680792) bm!431331))

(assert (= (or b!5680786 bm!431333) bm!431332))

(declare-fun m!6640182 () Bool)

(assert (=> bm!431331 m!6640182))

(declare-fun m!6640184 () Bool)

(assert (=> bm!431329 m!6640184))

(declare-fun m!6640186 () Bool)

(assert (=> b!5680794 m!6640186))

(declare-fun m!6640188 () Bool)

(assert (=> bm!431332 m!6640188))

(declare-fun m!6640190 () Bool)

(assert (=> b!5680793 m!6640190))

(assert (=> bm!431231 d!1792858))

(declare-fun b!5680805 () Bool)

(declare-fun res!2400438 () Bool)

(declare-fun e!3496337 () Bool)

(assert (=> b!5680805 (=> (not res!2400438) (not e!3496337))))

(declare-fun lt!2270276 () List!63319)

(declare-fun size!39999 (List!63319) Int)

(assert (=> b!5680805 (= res!2400438 (= (size!39999 lt!2270276) (+ (size!39999 (_1!36073 (get!21775 lt!2270240))) (size!39999 (_2!36073 (get!21775 lt!2270240))))))))

(declare-fun b!5680803 () Bool)

(declare-fun e!3496338 () List!63319)

(assert (=> b!5680803 (= e!3496338 (_2!36073 (get!21775 lt!2270240)))))

(declare-fun d!1792860 () Bool)

(assert (=> d!1792860 e!3496337))

(declare-fun res!2400439 () Bool)

(assert (=> d!1792860 (=> (not res!2400439) (not e!3496337))))

(declare-fun content!11450 (List!63319) (InoxSet C!31616))

(assert (=> d!1792860 (= res!2400439 (= (content!11450 lt!2270276) ((_ map or) (content!11450 (_1!36073 (get!21775 lt!2270240))) (content!11450 (_2!36073 (get!21775 lt!2270240))))))))

(assert (=> d!1792860 (= lt!2270276 e!3496338)))

(declare-fun c!999658 () Bool)

(assert (=> d!1792860 (= c!999658 ((_ is Nil!63195) (_1!36073 (get!21775 lt!2270240))))))

(assert (=> d!1792860 (= (++!13871 (_1!36073 (get!21775 lt!2270240)) (_2!36073 (get!21775 lt!2270240))) lt!2270276)))

(declare-fun b!5680804 () Bool)

(assert (=> b!5680804 (= e!3496338 (Cons!63195 (h!69643 (_1!36073 (get!21775 lt!2270240))) (++!13871 (t!376631 (_1!36073 (get!21775 lt!2270240))) (_2!36073 (get!21775 lt!2270240)))))))

(declare-fun b!5680806 () Bool)

(assert (=> b!5680806 (= e!3496337 (or (not (= (_2!36073 (get!21775 lt!2270240)) Nil!63195)) (= lt!2270276 (_1!36073 (get!21775 lt!2270240)))))))

(assert (= (and d!1792860 c!999658) b!5680803))

(assert (= (and d!1792860 (not c!999658)) b!5680804))

(assert (= (and d!1792860 res!2400439) b!5680805))

(assert (= (and b!5680805 res!2400438) b!5680806))

(declare-fun m!6640192 () Bool)

(assert (=> b!5680805 m!6640192))

(declare-fun m!6640194 () Bool)

(assert (=> b!5680805 m!6640194))

(declare-fun m!6640196 () Bool)

(assert (=> b!5680805 m!6640196))

(declare-fun m!6640198 () Bool)

(assert (=> d!1792860 m!6640198))

(declare-fun m!6640200 () Bool)

(assert (=> d!1792860 m!6640200))

(declare-fun m!6640202 () Bool)

(assert (=> d!1792860 m!6640202))

(declare-fun m!6640204 () Bool)

(assert (=> b!5680804 m!6640204))

(assert (=> b!5680295 d!1792860))

(assert (=> b!5680295 d!1792794))

(declare-fun d!1792862 () Bool)

(assert (=> d!1792862 (= (isEmpty!35045 (tail!11149 (unfocusZipperList!1101 zl!343))) ((_ is Nil!63194) (tail!11149 (unfocusZipperList!1101 zl!343))))))

(assert (=> b!5680376 d!1792862))

(declare-fun d!1792864 () Bool)

(assert (=> d!1792864 (= (tail!11149 (unfocusZipperList!1101 zl!343)) (t!376630 (unfocusZipperList!1101 zl!343)))))

(assert (=> b!5680376 d!1792864))

(declare-fun d!1792866 () Bool)

(declare-fun c!999669 () Bool)

(assert (=> d!1792866 (= c!999669 (isEmpty!35048 (tail!11150 (t!376631 s!2326))))))

(declare-fun e!3496349 () Bool)

(assert (=> d!1792866 (= (matchZipper!1811 (derivationStepZipper!1756 ((_ map or) lt!2270160 lt!2270156) (head!12055 (t!376631 s!2326))) (tail!11150 (t!376631 s!2326))) e!3496349)))

(declare-fun b!5680827 () Bool)

(assert (=> b!5680827 (= e!3496349 (nullableZipper!1637 (derivationStepZipper!1756 ((_ map or) lt!2270160 lt!2270156) (head!12055 (t!376631 s!2326)))))))

(declare-fun b!5680828 () Bool)

(assert (=> b!5680828 (= e!3496349 (matchZipper!1811 (derivationStepZipper!1756 (derivationStepZipper!1756 ((_ map or) lt!2270160 lt!2270156) (head!12055 (t!376631 s!2326))) (head!12055 (tail!11150 (t!376631 s!2326)))) (tail!11150 (tail!11150 (t!376631 s!2326)))))))

(assert (= (and d!1792866 c!999669) b!5680827))

(assert (= (and d!1792866 (not c!999669)) b!5680828))

(assert (=> d!1792866 m!6639772))

(declare-fun m!6640206 () Bool)

(assert (=> d!1792866 m!6640206))

(assert (=> b!5680827 m!6639778))

(declare-fun m!6640208 () Bool)

(assert (=> b!5680827 m!6640208))

(assert (=> b!5680828 m!6639772))

(declare-fun m!6640210 () Bool)

(assert (=> b!5680828 m!6640210))

(assert (=> b!5680828 m!6639778))

(assert (=> b!5680828 m!6640210))

(declare-fun m!6640212 () Bool)

(assert (=> b!5680828 m!6640212))

(assert (=> b!5680828 m!6639772))

(declare-fun m!6640214 () Bool)

(assert (=> b!5680828 m!6640214))

(assert (=> b!5680828 m!6640212))

(assert (=> b!5680828 m!6640214))

(declare-fun m!6640216 () Bool)

(assert (=> b!5680828 m!6640216))

(assert (=> b!5680271 d!1792866))

(declare-fun bs!1323924 () Bool)

(declare-fun d!1792868 () Bool)

(assert (= bs!1323924 (and d!1792868 b!5679736)))

(declare-fun lambda!306099 () Int)

(assert (=> bs!1323924 (= (= (head!12055 (t!376631 s!2326)) (h!69643 s!2326)) (= lambda!306099 lambda!306019))))

(declare-fun bs!1323925 () Bool)

(assert (= bs!1323925 (and d!1792868 d!1792678)))

(assert (=> bs!1323925 (= (= (head!12055 (t!376631 s!2326)) (h!69643 s!2326)) (= lambda!306099 lambda!306062))))

(declare-fun bs!1323926 () Bool)

(assert (= bs!1323926 (and d!1792868 d!1792826)))

(assert (=> bs!1323926 (= (= (head!12055 (t!376631 s!2326)) (head!12055 s!2326)) (= lambda!306099 lambda!306092))))

(assert (=> d!1792868 true))

(assert (=> d!1792868 (= (derivationStepZipper!1756 ((_ map or) lt!2270160 lt!2270156) (head!12055 (t!376631 s!2326))) (flatMap!1286 ((_ map or) lt!2270160 lt!2270156) lambda!306099))))

(declare-fun bs!1323927 () Bool)

(assert (= bs!1323927 d!1792868))

(declare-fun m!6640218 () Bool)

(assert (=> bs!1323927 m!6640218))

(assert (=> b!5680271 d!1792868))

(declare-fun d!1792870 () Bool)

(assert (=> d!1792870 (= (head!12055 (t!376631 s!2326)) (h!69643 (t!376631 s!2326)))))

(assert (=> b!5680271 d!1792870))

(declare-fun d!1792872 () Bool)

(assert (=> d!1792872 (= (tail!11150 (t!376631 s!2326)) (t!376631 (t!376631 s!2326)))))

(assert (=> b!5680271 d!1792872))

(declare-fun d!1792874 () Bool)

(assert (=> d!1792874 (= (nullable!5705 (regOne!31858 (reg!16002 (regOne!31858 r!7292)))) (nullableFct!1783 (regOne!31858 (reg!16002 (regOne!31858 r!7292)))))))

(declare-fun bs!1323928 () Bool)

(assert (= bs!1323928 d!1792874))

(declare-fun m!6640220 () Bool)

(assert (=> bs!1323928 m!6640220))

(assert (=> b!5680441 d!1792874))

(assert (=> d!1792732 d!1792722))

(declare-fun d!1792876 () Bool)

(assert (=> d!1792876 (= (flatMap!1286 z!1189 lambda!306019) (dynLambda!24730 lambda!306019 (h!69644 zl!343)))))

(assert (=> d!1792876 true))

(declare-fun _$13!2336 () Unit!156224)

(assert (=> d!1792876 (= (choose!42974 z!1189 (h!69644 zl!343) lambda!306019) _$13!2336)))

(declare-fun b_lambda!214789 () Bool)

(assert (=> (not b_lambda!214789) (not d!1792876)))

(declare-fun bs!1323929 () Bool)

(assert (= bs!1323929 d!1792876))

(assert (=> bs!1323929 m!6639442))

(assert (=> bs!1323929 m!6639910))

(assert (=> d!1792732 d!1792876))

(declare-fun b!5680829 () Bool)

(declare-fun e!3496350 () (InoxSet Context!10114))

(declare-fun call!431349 () (InoxSet Context!10114))

(assert (=> b!5680829 (= e!3496350 call!431349)))

(declare-fun b!5680830 () Bool)

(assert (=> b!5680830 (= e!3496350 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680831 () Bool)

(declare-fun e!3496351 () (InoxSet Context!10114))

(declare-fun call!431347 () (InoxSet Context!10114))

(declare-fun call!431350 () (InoxSet Context!10114))

(assert (=> b!5680831 (= e!3496351 ((_ map or) call!431347 call!431350))))

(declare-fun b!5680832 () Bool)

(declare-fun e!3496354 () (InoxSet Context!10114))

(assert (=> b!5680832 (= e!3496354 e!3496351)))

(declare-fun c!999670 () Bool)

(assert (=> b!5680832 (= c!999670 ((_ is Union!15673) (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292))))))))

(declare-fun bm!431342 () Bool)

(declare-fun call!431348 () (InoxSet Context!10114))

(assert (=> bm!431342 (= call!431349 call!431348)))

(declare-fun d!1792878 () Bool)

(declare-fun c!999674 () Bool)

(assert (=> d!1792878 (= c!999674 (and ((_ is ElementMatch!15673) (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292))))) (= (c!999361 (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292))))) (h!69643 s!2326))))))

(assert (=> d!1792878 (= (derivationStepZipperDown!1015 (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292)))) (ite c!999559 (Context!10115 lt!2270172) (Context!10115 call!431272)) (h!69643 s!2326)) e!3496354)))

(declare-fun b!5680833 () Bool)

(declare-fun e!3496353 () (InoxSet Context!10114))

(assert (=> b!5680833 (= e!3496353 call!431349)))

(declare-fun b!5680834 () Bool)

(declare-fun e!3496355 () (InoxSet Context!10114))

(assert (=> b!5680834 (= e!3496355 e!3496353)))

(declare-fun c!999673 () Bool)

(assert (=> b!5680834 (= c!999673 ((_ is Concat!24518) (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292))))))))

(declare-fun b!5680835 () Bool)

(declare-fun c!999671 () Bool)

(assert (=> b!5680835 (= c!999671 ((_ is Star!15673) (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292))))))))

(assert (=> b!5680835 (= e!3496353 e!3496350)))

(declare-fun call!431352 () List!63318)

(declare-fun bm!431343 () Bool)

(declare-fun c!999672 () Bool)

(assert (=> bm!431343 (= call!431352 ($colon$colon!1704 (exprs!5557 (ite c!999559 (Context!10115 lt!2270172) (Context!10115 call!431272))) (ite (or c!999672 c!999673) (regTwo!31858 (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292))))) (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292)))))))))

(declare-fun b!5680836 () Bool)

(declare-fun e!3496352 () Bool)

(assert (=> b!5680836 (= c!999672 e!3496352)))

(declare-fun res!2400440 () Bool)

(assert (=> b!5680836 (=> (not res!2400440) (not e!3496352))))

(assert (=> b!5680836 (= res!2400440 ((_ is Concat!24518) (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292))))))))

(assert (=> b!5680836 (= e!3496351 e!3496355)))

(declare-fun bm!431344 () Bool)

(declare-fun call!431351 () List!63318)

(assert (=> bm!431344 (= call!431351 call!431352)))

(declare-fun bm!431345 () Bool)

(assert (=> bm!431345 (= call!431350 (derivationStepZipperDown!1015 (ite c!999670 (regTwo!31859 (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292))))) (regOne!31858 (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292)))))) (ite c!999670 (ite c!999559 (Context!10115 lt!2270172) (Context!10115 call!431272)) (Context!10115 call!431352)) (h!69643 s!2326)))))

(declare-fun b!5680837 () Bool)

(assert (=> b!5680837 (= e!3496355 ((_ map or) call!431350 call!431348))))

(declare-fun bm!431346 () Bool)

(assert (=> bm!431346 (= call!431347 (derivationStepZipperDown!1015 (ite c!999670 (regOne!31859 (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292))))) (ite c!999672 (regTwo!31858 (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292))))) (ite c!999673 (regOne!31858 (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292))))) (reg!16002 (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292)))))))) (ite (or c!999670 c!999672) (ite c!999559 (Context!10115 lt!2270172) (Context!10115 call!431272)) (Context!10115 call!431351)) (h!69643 s!2326)))))

(declare-fun b!5680838 () Bool)

(assert (=> b!5680838 (= e!3496354 (store ((as const (Array Context!10114 Bool)) false) (ite c!999559 (Context!10115 lt!2270172) (Context!10115 call!431272)) true))))

(declare-fun b!5680839 () Bool)

(assert (=> b!5680839 (= e!3496352 (nullable!5705 (regOne!31858 (ite c!999559 (regTwo!31859 (reg!16002 (regOne!31858 r!7292))) (regOne!31858 (reg!16002 (regOne!31858 r!7292)))))))))

(declare-fun bm!431347 () Bool)

(assert (=> bm!431347 (= call!431348 call!431347)))

(assert (= (and d!1792878 c!999674) b!5680838))

(assert (= (and d!1792878 (not c!999674)) b!5680832))

(assert (= (and b!5680832 c!999670) b!5680831))

(assert (= (and b!5680832 (not c!999670)) b!5680836))

(assert (= (and b!5680836 res!2400440) b!5680839))

(assert (= (and b!5680836 c!999672) b!5680837))

(assert (= (and b!5680836 (not c!999672)) b!5680834))

(assert (= (and b!5680834 c!999673) b!5680833))

(assert (= (and b!5680834 (not c!999673)) b!5680835))

(assert (= (and b!5680835 c!999671) b!5680829))

(assert (= (and b!5680835 (not c!999671)) b!5680830))

(assert (= (or b!5680833 b!5680829) bm!431344))

(assert (= (or b!5680833 b!5680829) bm!431342))

(assert (= (or b!5680837 bm!431344) bm!431343))

(assert (= (or b!5680837 bm!431342) bm!431347))

(assert (= (or b!5680831 b!5680837) bm!431345))

(assert (= (or b!5680831 bm!431347) bm!431346))

(declare-fun m!6640222 () Bool)

(assert (=> bm!431345 m!6640222))

(declare-fun m!6640224 () Bool)

(assert (=> bm!431343 m!6640224))

(declare-fun m!6640226 () Bool)

(assert (=> b!5680839 m!6640226))

(declare-fun m!6640228 () Bool)

(assert (=> bm!431346 m!6640228))

(declare-fun m!6640230 () Bool)

(assert (=> b!5680838 m!6640230))

(assert (=> bm!431265 d!1792878))

(declare-fun d!1792880 () Bool)

(assert (=> d!1792880 (= (isEmptyExpr!1195 lt!2270195) ((_ is EmptyExpr!15673) lt!2270195))))

(assert (=> b!5679967 d!1792880))

(declare-fun d!1792882 () Bool)

(assert (=> d!1792882 true))

(assert (=> d!1792882 true))

(declare-fun res!2400443 () Bool)

(assert (=> d!1792882 (= (choose!42978 lambda!306017) res!2400443)))

(assert (=> d!1792698 d!1792882))

(declare-fun bs!1323930 () Bool)

(declare-fun d!1792884 () Bool)

(assert (= bs!1323930 (and d!1792884 d!1792782)))

(declare-fun lambda!306100 () Int)

(assert (=> bs!1323930 (= lambda!306100 lambda!306088)))

(assert (=> d!1792884 (= (nullableZipper!1637 lt!2270155) (exists!2209 lt!2270155 lambda!306100))))

(declare-fun bs!1323931 () Bool)

(assert (= bs!1323931 d!1792884))

(declare-fun m!6640232 () Bool)

(assert (=> bs!1323931 m!6640232))

(assert (=> b!5680343 d!1792884))

(declare-fun bm!431348 () Bool)

(declare-fun c!999675 () Bool)

(declare-fun c!999676 () Bool)

(declare-fun call!431355 () Bool)

(assert (=> bm!431348 (= call!431355 (validRegex!7409 (ite c!999676 (reg!16002 lt!2270254) (ite c!999675 (regTwo!31859 lt!2270254) (regTwo!31858 lt!2270254)))))))

(declare-fun b!5680841 () Bool)

(declare-fun e!3496359 () Bool)

(declare-fun e!3496361 () Bool)

(assert (=> b!5680841 (= e!3496359 e!3496361)))

(declare-fun res!2400448 () Bool)

(assert (=> b!5680841 (=> (not res!2400448) (not e!3496361))))

(declare-fun call!431353 () Bool)

(assert (=> b!5680841 (= res!2400448 call!431353)))

(declare-fun b!5680842 () Bool)

(declare-fun call!431354 () Bool)

(assert (=> b!5680842 (= e!3496361 call!431354)))

(declare-fun b!5680843 () Bool)

(declare-fun e!3496357 () Bool)

(declare-fun e!3496358 () Bool)

(assert (=> b!5680843 (= e!3496357 e!3496358)))

(assert (=> b!5680843 (= c!999675 ((_ is Union!15673) lt!2270254))))

(declare-fun b!5680844 () Bool)

(declare-fun res!2400444 () Bool)

(assert (=> b!5680844 (=> res!2400444 e!3496359)))

(assert (=> b!5680844 (= res!2400444 (not ((_ is Concat!24518) lt!2270254)))))

(assert (=> b!5680844 (= e!3496358 e!3496359)))

(declare-fun b!5680845 () Bool)

(declare-fun e!3496356 () Bool)

(assert (=> b!5680845 (= e!3496356 call!431355)))

(declare-fun b!5680846 () Bool)

(declare-fun e!3496362 () Bool)

(assert (=> b!5680846 (= e!3496362 e!3496357)))

(assert (=> b!5680846 (= c!999676 ((_ is Star!15673) lt!2270254))))

(declare-fun b!5680847 () Bool)

(declare-fun res!2400446 () Bool)

(declare-fun e!3496360 () Bool)

(assert (=> b!5680847 (=> (not res!2400446) (not e!3496360))))

(assert (=> b!5680847 (= res!2400446 call!431353)))

(assert (=> b!5680847 (= e!3496358 e!3496360)))

(declare-fun bm!431349 () Bool)

(assert (=> bm!431349 (= call!431353 (validRegex!7409 (ite c!999675 (regOne!31859 lt!2270254) (regOne!31858 lt!2270254))))))

(declare-fun bm!431350 () Bool)

(assert (=> bm!431350 (= call!431354 call!431355)))

(declare-fun b!5680848 () Bool)

(assert (=> b!5680848 (= e!3496357 e!3496356)))

(declare-fun res!2400447 () Bool)

(assert (=> b!5680848 (= res!2400447 (not (nullable!5705 (reg!16002 lt!2270254))))))

(assert (=> b!5680848 (=> (not res!2400447) (not e!3496356))))

(declare-fun b!5680840 () Bool)

(assert (=> b!5680840 (= e!3496360 call!431354)))

(declare-fun d!1792886 () Bool)

(declare-fun res!2400445 () Bool)

(assert (=> d!1792886 (=> res!2400445 e!3496362)))

(assert (=> d!1792886 (= res!2400445 ((_ is ElementMatch!15673) lt!2270254))))

(assert (=> d!1792886 (= (validRegex!7409 lt!2270254) e!3496362)))

(assert (= (and d!1792886 (not res!2400445)) b!5680846))

(assert (= (and b!5680846 c!999676) b!5680848))

(assert (= (and b!5680846 (not c!999676)) b!5680843))

(assert (= (and b!5680848 res!2400447) b!5680845))

(assert (= (and b!5680843 c!999675) b!5680847))

(assert (= (and b!5680843 (not c!999675)) b!5680844))

(assert (= (and b!5680847 res!2400446) b!5680840))

(assert (= (and b!5680844 (not res!2400444)) b!5680841))

(assert (= (and b!5680841 res!2400448) b!5680842))

(assert (= (or b!5680840 b!5680842) bm!431350))

(assert (= (or b!5680847 b!5680841) bm!431349))

(assert (= (or b!5680845 bm!431350) bm!431348))

(declare-fun m!6640234 () Bool)

(assert (=> bm!431348 m!6640234))

(declare-fun m!6640236 () Bool)

(assert (=> bm!431349 m!6640236))

(declare-fun m!6640238 () Bool)

(assert (=> b!5680848 m!6640238))

(assert (=> d!1792716 d!1792886))

(declare-fun d!1792888 () Bool)

(declare-fun res!2400449 () Bool)

(declare-fun e!3496363 () Bool)

(assert (=> d!1792888 (=> res!2400449 e!3496363)))

(assert (=> d!1792888 (= res!2400449 ((_ is Nil!63194) (unfocusZipperList!1101 zl!343)))))

(assert (=> d!1792888 (= (forall!14820 (unfocusZipperList!1101 zl!343) lambda!306078) e!3496363)))

(declare-fun b!5680849 () Bool)

(declare-fun e!3496364 () Bool)

(assert (=> b!5680849 (= e!3496363 e!3496364)))

(declare-fun res!2400450 () Bool)

(assert (=> b!5680849 (=> (not res!2400450) (not e!3496364))))

(assert (=> b!5680849 (= res!2400450 (dynLambda!24731 lambda!306078 (h!69642 (unfocusZipperList!1101 zl!343))))))

(declare-fun b!5680850 () Bool)

(assert (=> b!5680850 (= e!3496364 (forall!14820 (t!376630 (unfocusZipperList!1101 zl!343)) lambda!306078))))

(assert (= (and d!1792888 (not res!2400449)) b!5680849))

(assert (= (and b!5680849 res!2400450) b!5680850))

(declare-fun b_lambda!214791 () Bool)

(assert (=> (not b_lambda!214791) (not b!5680849)))

(declare-fun m!6640240 () Bool)

(assert (=> b!5680849 m!6640240))

(declare-fun m!6640242 () Bool)

(assert (=> b!5680850 m!6640242))

(assert (=> d!1792716 d!1792888))

(declare-fun d!1792890 () Bool)

(declare-fun res!2400455 () Bool)

(declare-fun e!3496369 () Bool)

(assert (=> d!1792890 (=> res!2400455 e!3496369)))

(assert (=> d!1792890 (= res!2400455 ((_ is Nil!63196) lt!2270233))))

(assert (=> d!1792890 (= (noDuplicate!1617 lt!2270233) e!3496369)))

(declare-fun b!5680855 () Bool)

(declare-fun e!3496370 () Bool)

(assert (=> b!5680855 (= e!3496369 e!3496370)))

(declare-fun res!2400456 () Bool)

(assert (=> b!5680855 (=> (not res!2400456) (not e!3496370))))

(declare-fun contains!19844 (List!63320 Context!10114) Bool)

(assert (=> b!5680855 (= res!2400456 (not (contains!19844 (t!376632 lt!2270233) (h!69644 lt!2270233))))))

(declare-fun b!5680856 () Bool)

(assert (=> b!5680856 (= e!3496370 (noDuplicate!1617 (t!376632 lt!2270233)))))

(assert (= (and d!1792890 (not res!2400455)) b!5680855))

(assert (= (and b!5680855 res!2400456) b!5680856))

(declare-fun m!6640244 () Bool)

(assert (=> b!5680855 m!6640244))

(declare-fun m!6640246 () Bool)

(assert (=> b!5680856 m!6640246))

(assert (=> d!1792694 d!1792890))

(declare-fun d!1792892 () Bool)

(declare-fun e!3496384 () Bool)

(assert (=> d!1792892 e!3496384))

(declare-fun res!2400461 () Bool)

(assert (=> d!1792892 (=> (not res!2400461) (not e!3496384))))

(declare-fun res!2400462 () List!63320)

(assert (=> d!1792892 (= res!2400461 (noDuplicate!1617 res!2400462))))

(declare-fun e!3496383 () Bool)

(assert (=> d!1792892 e!3496383))

(assert (=> d!1792892 (= (choose!42977 z!1189) res!2400462)))

(declare-fun b!5680874 () Bool)

(declare-fun e!3496382 () Bool)

(declare-fun tp!1575126 () Bool)

(assert (=> b!5680874 (= e!3496382 tp!1575126)))

(declare-fun tp!1575125 () Bool)

(declare-fun b!5680873 () Bool)

(assert (=> b!5680873 (= e!3496383 (and (inv!82429 (h!69644 res!2400462)) e!3496382 tp!1575125))))

(declare-fun b!5680875 () Bool)

(assert (=> b!5680875 (= e!3496384 (= (content!11448 res!2400462) z!1189))))

(assert (= b!5680873 b!5680874))

(assert (= (and d!1792892 ((_ is Cons!63196) res!2400462)) b!5680873))

(assert (= (and d!1792892 res!2400461) b!5680875))

(declare-fun m!6640248 () Bool)

(assert (=> d!1792892 m!6640248))

(declare-fun m!6640250 () Bool)

(assert (=> b!5680873 m!6640250))

(declare-fun m!6640252 () Bool)

(assert (=> b!5680875 m!6640252))

(assert (=> d!1792694 d!1792892))

(declare-fun b!5680876 () Bool)

(declare-fun e!3496385 () (InoxSet Context!10114))

(declare-fun call!431362 () (InoxSet Context!10114))

(assert (=> b!5680876 (= e!3496385 call!431362)))

(declare-fun b!5680877 () Bool)

(assert (=> b!5680877 (= e!3496385 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680878 () Bool)

(declare-fun e!3496386 () (InoxSet Context!10114))

(declare-fun call!431360 () (InoxSet Context!10114))

(declare-fun call!431363 () (InoxSet Context!10114))

(assert (=> b!5680878 (= e!3496386 ((_ map or) call!431360 call!431363))))

(declare-fun b!5680879 () Bool)

(declare-fun e!3496389 () (InoxSet Context!10114))

(assert (=> b!5680879 (= e!3496389 e!3496386)))

(declare-fun c!999682 () Bool)

(assert (=> b!5680879 (= c!999682 ((_ is Union!15673) (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))))))

(declare-fun bm!431355 () Bool)

(declare-fun call!431361 () (InoxSet Context!10114))

(assert (=> bm!431355 (= call!431362 call!431361)))

(declare-fun d!1792894 () Bool)

(declare-fun c!999686 () Bool)

(assert (=> d!1792894 (= c!999686 (and ((_ is ElementMatch!15673) (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (= (c!999361 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (h!69643 s!2326))))))

(assert (=> d!1792894 (= (derivationStepZipperDown!1015 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))) (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (h!69643 s!2326)) e!3496389)))

(declare-fun b!5680880 () Bool)

(declare-fun e!3496388 () (InoxSet Context!10114))

(assert (=> b!5680880 (= e!3496388 call!431362)))

(declare-fun b!5680881 () Bool)

(declare-fun e!3496390 () (InoxSet Context!10114))

(assert (=> b!5680881 (= e!3496390 e!3496388)))

(declare-fun c!999685 () Bool)

(assert (=> b!5680881 (= c!999685 ((_ is Concat!24518) (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))))))

(declare-fun b!5680882 () Bool)

(declare-fun c!999683 () Bool)

(assert (=> b!5680882 (= c!999683 ((_ is Star!15673) (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))))))

(assert (=> b!5680882 (= e!3496388 e!3496385)))

(declare-fun c!999684 () Bool)

(declare-fun call!431365 () List!63318)

(declare-fun bm!431356 () Bool)

(assert (=> bm!431356 (= call!431365 ($colon$colon!1704 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))))) (ite (or c!999684 c!999685) (regTwo!31858 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))))))))

(declare-fun b!5680883 () Bool)

(declare-fun e!3496387 () Bool)

(assert (=> b!5680883 (= c!999684 e!3496387)))

(declare-fun res!2400463 () Bool)

(assert (=> b!5680883 (=> (not res!2400463) (not e!3496387))))

(assert (=> b!5680883 (= res!2400463 ((_ is Concat!24518) (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))))))

(assert (=> b!5680883 (= e!3496386 e!3496390)))

(declare-fun bm!431357 () Bool)

(declare-fun call!431364 () List!63318)

(assert (=> bm!431357 (= call!431364 call!431365)))

(declare-fun bm!431358 () Bool)

(assert (=> bm!431358 (= call!431363 (derivationStepZipperDown!1015 (ite c!999682 (regTwo!31859 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (regOne!31858 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))))) (ite c!999682 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (Context!10115 call!431365)) (h!69643 s!2326)))))

(declare-fun b!5680884 () Bool)

(assert (=> b!5680884 (= e!3496390 ((_ map or) call!431363 call!431361))))

(declare-fun bm!431359 () Bool)

(assert (=> bm!431359 (= call!431360 (derivationStepZipperDown!1015 (ite c!999682 (regOne!31859 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (ite c!999684 (regTwo!31858 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (ite c!999685 (regOne!31858 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (reg!16002 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))))))) (ite (or c!999682 c!999684) (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (Context!10115 call!431364)) (h!69643 s!2326)))))

(declare-fun b!5680885 () Bool)

(assert (=> b!5680885 (= e!3496389 (store ((as const (Array Context!10114 Bool)) false) (Context!10115 (t!376630 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) true))))

(declare-fun b!5680886 () Bool)

(assert (=> b!5680886 (= e!3496387 (nullable!5705 (regOne!31858 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))))))))

(declare-fun bm!431360 () Bool)

(assert (=> bm!431360 (= call!431361 call!431360)))

(assert (= (and d!1792894 c!999686) b!5680885))

(assert (= (and d!1792894 (not c!999686)) b!5680879))

(assert (= (and b!5680879 c!999682) b!5680878))

(assert (= (and b!5680879 (not c!999682)) b!5680883))

(assert (= (and b!5680883 res!2400463) b!5680886))

(assert (= (and b!5680883 c!999684) b!5680884))

(assert (= (and b!5680883 (not c!999684)) b!5680881))

(assert (= (and b!5680881 c!999685) b!5680880))

(assert (= (and b!5680881 (not c!999685)) b!5680882))

(assert (= (and b!5680882 c!999683) b!5680876))

(assert (= (and b!5680882 (not c!999683)) b!5680877))

(assert (= (or b!5680880 b!5680876) bm!431357))

(assert (= (or b!5680880 b!5680876) bm!431355))

(assert (= (or b!5680884 bm!431357) bm!431356))

(assert (= (or b!5680884 bm!431355) bm!431360))

(assert (= (or b!5680878 b!5680884) bm!431358))

(assert (= (or b!5680878 bm!431360) bm!431359))

(declare-fun m!6640262 () Bool)

(assert (=> bm!431358 m!6640262))

(declare-fun m!6640264 () Bool)

(assert (=> bm!431356 m!6640264))

(declare-fun m!6640266 () Bool)

(assert (=> b!5680886 m!6640266))

(declare-fun m!6640268 () Bool)

(assert (=> bm!431359 m!6640268))

(declare-fun m!6640270 () Bool)

(assert (=> b!5680885 m!6640270))

(assert (=> bm!431241 d!1792894))

(declare-fun d!1792900 () Bool)

(assert (=> d!1792900 (= (isEmpty!35045 (exprs!5557 (h!69644 zl!343))) ((_ is Nil!63194) (exprs!5557 (h!69644 zl!343))))))

(assert (=> b!5679963 d!1792900))

(assert (=> d!1792684 d!1792688))

(assert (=> d!1792684 d!1792686))

(declare-fun e!3496395 () Bool)

(declare-fun d!1792904 () Bool)

(assert (=> d!1792904 (= (matchZipper!1811 ((_ map or) lt!2270160 lt!2270156) (t!376631 s!2326)) e!3496395)))

(declare-fun res!2400467 () Bool)

(assert (=> d!1792904 (=> res!2400467 e!3496395)))

(assert (=> d!1792904 (= res!2400467 (matchZipper!1811 lt!2270160 (t!376631 s!2326)))))

(assert (=> d!1792904 true))

(declare-fun _$48!1320 () Unit!156224)

(assert (=> d!1792904 (= (choose!42976 lt!2270160 lt!2270156 (t!376631 s!2326)) _$48!1320)))

(declare-fun b!5680893 () Bool)

(assert (=> b!5680893 (= e!3496395 (matchZipper!1811 lt!2270156 (t!376631 s!2326)))))

(assert (= (and d!1792904 (not res!2400467)) b!5680893))

(assert (=> d!1792904 m!6639448))

(assert (=> d!1792904 m!6639446))

(assert (=> b!5680893 m!6639420))

(assert (=> d!1792684 d!1792904))

(assert (=> d!1792686 d!1792808))

(assert (=> d!1792702 d!1792696))

(assert (=> d!1792702 d!1792756))

(assert (=> d!1792702 d!1792706))

(declare-fun d!1792910 () Bool)

(assert (=> d!1792910 (= (Exists!2773 lambda!306069) (choose!42978 lambda!306069))))

(declare-fun bs!1323932 () Bool)

(assert (= bs!1323932 d!1792910))

(declare-fun m!6640272 () Bool)

(assert (=> bs!1323932 m!6640272))

(assert (=> d!1792702 d!1792910))

(declare-fun bs!1323937 () Bool)

(declare-fun d!1792912 () Bool)

(assert (= bs!1323937 (and d!1792912 b!5680504)))

(declare-fun lambda!306107 () Int)

(assert (=> bs!1323937 (not (= lambda!306107 lambda!306082))))

(declare-fun bs!1323938 () Bool)

(assert (= bs!1323938 (and d!1792912 b!5679738)))

(assert (=> bs!1323938 (not (= lambda!306107 lambda!306018))))

(declare-fun bs!1323939 () Bool)

(assert (= bs!1323939 (and d!1792912 d!1792704)))

(assert (=> bs!1323939 (not (= lambda!306107 lambda!306075))))

(declare-fun bs!1323940 () Bool)

(assert (= bs!1323940 (and d!1792912 b!5680103)))

(assert (=> bs!1323940 (not (= lambda!306107 lambda!306050))))

(declare-fun bs!1323941 () Bool)

(assert (= bs!1323941 (and d!1792912 d!1792846)))

(assert (=> bs!1323941 (= lambda!306107 lambda!306097)))

(declare-fun bs!1323942 () Bool)

(assert (= bs!1323942 (and d!1792912 b!5680508)))

(assert (=> bs!1323942 (not (= lambda!306107 lambda!306083))))

(declare-fun bs!1323943 () Bool)

(assert (= bs!1323943 (and d!1792912 b!5680107)))

(assert (=> bs!1323943 (not (= lambda!306107 lambda!306052))))

(assert (=> bs!1323939 (= lambda!306107 lambda!306074)))

(assert (=> bs!1323941 (not (= lambda!306107 lambda!306098))))

(declare-fun bs!1323944 () Bool)

(assert (= bs!1323944 (and d!1792912 d!1792702)))

(assert (=> bs!1323944 (= lambda!306107 lambda!306069)))

(assert (=> bs!1323938 (= lambda!306107 lambda!306017)))

(assert (=> d!1792912 true))

(assert (=> d!1792912 true))

(assert (=> d!1792912 true))

(assert (=> d!1792912 (= (isDefined!12385 (findConcatSeparation!2096 (regOne!31858 r!7292) (regTwo!31858 r!7292) Nil!63195 s!2326 s!2326)) (Exists!2773 lambda!306107))))

(assert (=> d!1792912 true))

(declare-fun _$89!1808 () Unit!156224)

(assert (=> d!1792912 (= (choose!42979 (regOne!31858 r!7292) (regTwo!31858 r!7292) s!2326) _$89!1808)))

(declare-fun bs!1323945 () Bool)

(assert (= bs!1323945 d!1792912))

(assert (=> bs!1323945 m!6639454))

(assert (=> bs!1323945 m!6639454))

(assert (=> bs!1323945 m!6639456))

(declare-fun m!6640288 () Bool)

(assert (=> bs!1323945 m!6640288))

(assert (=> d!1792702 d!1792912))

(assert (=> b!5680423 d!1792730))

(assert (=> b!5680263 d!1792692))

(declare-fun b!5680911 () Bool)

(declare-fun res!2400477 () Bool)

(declare-fun e!3496406 () Bool)

(assert (=> b!5680911 (=> (not res!2400477) (not e!3496406))))

(declare-fun lt!2270280 () List!63319)

(assert (=> b!5680911 (= res!2400477 (= (size!39999 lt!2270280) (+ (size!39999 (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195))) (size!39999 (t!376631 s!2326)))))))

(declare-fun b!5680909 () Bool)

(declare-fun e!3496407 () List!63319)

(assert (=> b!5680909 (= e!3496407 (t!376631 s!2326))))

(declare-fun d!1792928 () Bool)

(assert (=> d!1792928 e!3496406))

(declare-fun res!2400478 () Bool)

(assert (=> d!1792928 (=> (not res!2400478) (not e!3496406))))

(assert (=> d!1792928 (= res!2400478 (= (content!11450 lt!2270280) ((_ map or) (content!11450 (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195))) (content!11450 (t!376631 s!2326)))))))

(assert (=> d!1792928 (= lt!2270280 e!3496407)))

(declare-fun c!999694 () Bool)

(assert (=> d!1792928 (= c!999694 ((_ is Nil!63195) (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195))))))

(assert (=> d!1792928 (= (++!13871 (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195)) (t!376631 s!2326)) lt!2270280)))

(declare-fun b!5680910 () Bool)

(assert (=> b!5680910 (= e!3496407 (Cons!63195 (h!69643 (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195))) (++!13871 (t!376631 (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195))) (t!376631 s!2326))))))

(declare-fun b!5680912 () Bool)

(assert (=> b!5680912 (= e!3496406 (or (not (= (t!376631 s!2326) Nil!63195)) (= lt!2270280 (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195)))))))

(assert (= (and d!1792928 c!999694) b!5680909))

(assert (= (and d!1792928 (not c!999694)) b!5680910))

(assert (= (and d!1792928 res!2400478) b!5680911))

(assert (= (and b!5680911 res!2400477) b!5680912))

(declare-fun m!6640292 () Bool)

(assert (=> b!5680911 m!6640292))

(assert (=> b!5680911 m!6639802))

(declare-fun m!6640294 () Bool)

(assert (=> b!5680911 m!6640294))

(declare-fun m!6640296 () Bool)

(assert (=> b!5680911 m!6640296))

(declare-fun m!6640298 () Bool)

(assert (=> d!1792928 m!6640298))

(assert (=> d!1792928 m!6639802))

(declare-fun m!6640300 () Bool)

(assert (=> d!1792928 m!6640300))

(declare-fun m!6640302 () Bool)

(assert (=> d!1792928 m!6640302))

(declare-fun m!6640304 () Bool)

(assert (=> b!5680910 m!6640304))

(assert (=> b!5680302 d!1792928))

(declare-fun b!5680915 () Bool)

(declare-fun res!2400479 () Bool)

(declare-fun e!3496408 () Bool)

(assert (=> b!5680915 (=> (not res!2400479) (not e!3496408))))

(declare-fun lt!2270281 () List!63319)

(assert (=> b!5680915 (= res!2400479 (= (size!39999 lt!2270281) (+ (size!39999 Nil!63195) (size!39999 (Cons!63195 (h!69643 s!2326) Nil!63195)))))))

(declare-fun b!5680913 () Bool)

(declare-fun e!3496409 () List!63319)

(assert (=> b!5680913 (= e!3496409 (Cons!63195 (h!69643 s!2326) Nil!63195))))

(declare-fun d!1792932 () Bool)

(assert (=> d!1792932 e!3496408))

(declare-fun res!2400480 () Bool)

(assert (=> d!1792932 (=> (not res!2400480) (not e!3496408))))

(assert (=> d!1792932 (= res!2400480 (= (content!11450 lt!2270281) ((_ map or) (content!11450 Nil!63195) (content!11450 (Cons!63195 (h!69643 s!2326) Nil!63195)))))))

(assert (=> d!1792932 (= lt!2270281 e!3496409)))

(declare-fun c!999695 () Bool)

(assert (=> d!1792932 (= c!999695 ((_ is Nil!63195) Nil!63195))))

(assert (=> d!1792932 (= (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195)) lt!2270281)))

(declare-fun b!5680914 () Bool)

(assert (=> b!5680914 (= e!3496409 (Cons!63195 (h!69643 Nil!63195) (++!13871 (t!376631 Nil!63195) (Cons!63195 (h!69643 s!2326) Nil!63195))))))

(declare-fun b!5680916 () Bool)

(assert (=> b!5680916 (= e!3496408 (or (not (= (Cons!63195 (h!69643 s!2326) Nil!63195) Nil!63195)) (= lt!2270281 Nil!63195)))))

(assert (= (and d!1792932 c!999695) b!5680913))

(assert (= (and d!1792932 (not c!999695)) b!5680914))

(assert (= (and d!1792932 res!2400480) b!5680915))

(assert (= (and b!5680915 res!2400479) b!5680916))

(declare-fun m!6640306 () Bool)

(assert (=> b!5680915 m!6640306))

(declare-fun m!6640308 () Bool)

(assert (=> b!5680915 m!6640308))

(declare-fun m!6640310 () Bool)

(assert (=> b!5680915 m!6640310))

(declare-fun m!6640312 () Bool)

(assert (=> d!1792932 m!6640312))

(declare-fun m!6640314 () Bool)

(assert (=> d!1792932 m!6640314))

(declare-fun m!6640316 () Bool)

(assert (=> d!1792932 m!6640316))

(declare-fun m!6640318 () Bool)

(assert (=> b!5680914 m!6640318))

(assert (=> b!5680302 d!1792932))

(declare-fun d!1792934 () Bool)

(assert (=> d!1792934 (= (++!13871 (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195)) (t!376631 s!2326)) s!2326)))

(declare-fun lt!2270285 () Unit!156224)

(declare-fun choose!42981 (List!63319 C!31616 List!63319 List!63319) Unit!156224)

(assert (=> d!1792934 (= lt!2270285 (choose!42981 Nil!63195 (h!69643 s!2326) (t!376631 s!2326) s!2326))))

(assert (=> d!1792934 (= (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) (t!376631 s!2326))) s!2326)))

(assert (=> d!1792934 (= (lemmaMoveElementToOtherListKeepsConcatEq!2040 Nil!63195 (h!69643 s!2326) (t!376631 s!2326) s!2326) lt!2270285)))

(declare-fun bs!1323947 () Bool)

(assert (= bs!1323947 d!1792934))

(assert (=> bs!1323947 m!6639802))

(assert (=> bs!1323947 m!6639802))

(assert (=> bs!1323947 m!6639804))

(declare-fun m!6640334 () Bool)

(assert (=> bs!1323947 m!6640334))

(declare-fun m!6640338 () Bool)

(assert (=> bs!1323947 m!6640338))

(assert (=> b!5680302 d!1792934))

(declare-fun b!5680937 () Bool)

(declare-fun e!3496424 () Bool)

(declare-fun lt!2270286 () Option!15682)

(assert (=> b!5680937 (= e!3496424 (= (++!13871 (_1!36073 (get!21775 lt!2270286)) (_2!36073 (get!21775 lt!2270286))) s!2326))))

(declare-fun b!5680938 () Bool)

(declare-fun res!2400496 () Bool)

(assert (=> b!5680938 (=> (not res!2400496) (not e!3496424))))

(assert (=> b!5680938 (= res!2400496 (matchR!7858 (regTwo!31858 r!7292) (_2!36073 (get!21775 lt!2270286))))))

(declare-fun b!5680939 () Bool)

(declare-fun res!2400495 () Bool)

(assert (=> b!5680939 (=> (not res!2400495) (not e!3496424))))

(assert (=> b!5680939 (= res!2400495 (matchR!7858 (regOne!31858 r!7292) (_1!36073 (get!21775 lt!2270286))))))

(declare-fun d!1792942 () Bool)

(declare-fun e!3496425 () Bool)

(assert (=> d!1792942 e!3496425))

(declare-fun res!2400499 () Bool)

(assert (=> d!1792942 (=> res!2400499 e!3496425)))

(assert (=> d!1792942 (= res!2400499 e!3496424)))

(declare-fun res!2400498 () Bool)

(assert (=> d!1792942 (=> (not res!2400498) (not e!3496424))))

(assert (=> d!1792942 (= res!2400498 (isDefined!12385 lt!2270286))))

(declare-fun e!3496427 () Option!15682)

(assert (=> d!1792942 (= lt!2270286 e!3496427)))

(declare-fun c!999700 () Bool)

(declare-fun e!3496423 () Bool)

(assert (=> d!1792942 (= c!999700 e!3496423)))

(declare-fun res!2400497 () Bool)

(assert (=> d!1792942 (=> (not res!2400497) (not e!3496423))))

(assert (=> d!1792942 (= res!2400497 (matchR!7858 (regOne!31858 r!7292) (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195))))))

(assert (=> d!1792942 (validRegex!7409 (regOne!31858 r!7292))))

(assert (=> d!1792942 (= (findConcatSeparation!2096 (regOne!31858 r!7292) (regTwo!31858 r!7292) (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195)) (t!376631 s!2326) s!2326) lt!2270286)))

(declare-fun b!5680940 () Bool)

(assert (=> b!5680940 (= e!3496425 (not (isDefined!12385 lt!2270286)))))

(declare-fun b!5680941 () Bool)

(declare-fun e!3496426 () Option!15682)

(assert (=> b!5680941 (= e!3496427 e!3496426)))

(declare-fun c!999699 () Bool)

(assert (=> b!5680941 (= c!999699 ((_ is Nil!63195) (t!376631 s!2326)))))

(declare-fun b!5680942 () Bool)

(assert (=> b!5680942 (= e!3496426 None!15681)))

(declare-fun b!5680943 () Bool)

(assert (=> b!5680943 (= e!3496427 (Some!15681 (tuple2!65541 (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195)) (t!376631 s!2326))))))

(declare-fun b!5680944 () Bool)

(declare-fun lt!2270288 () Unit!156224)

(declare-fun lt!2270287 () Unit!156224)

(assert (=> b!5680944 (= lt!2270288 lt!2270287)))

(assert (=> b!5680944 (= (++!13871 (++!13871 (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195)) (Cons!63195 (h!69643 (t!376631 s!2326)) Nil!63195)) (t!376631 (t!376631 s!2326))) s!2326)))

(assert (=> b!5680944 (= lt!2270287 (lemmaMoveElementToOtherListKeepsConcatEq!2040 (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195)) (h!69643 (t!376631 s!2326)) (t!376631 (t!376631 s!2326)) s!2326))))

(assert (=> b!5680944 (= e!3496426 (findConcatSeparation!2096 (regOne!31858 r!7292) (regTwo!31858 r!7292) (++!13871 (++!13871 Nil!63195 (Cons!63195 (h!69643 s!2326) Nil!63195)) (Cons!63195 (h!69643 (t!376631 s!2326)) Nil!63195)) (t!376631 (t!376631 s!2326)) s!2326))))

(declare-fun b!5680945 () Bool)

(assert (=> b!5680945 (= e!3496423 (matchR!7858 (regTwo!31858 r!7292) (t!376631 s!2326)))))

(assert (= (and d!1792942 res!2400497) b!5680945))

(assert (= (and d!1792942 c!999700) b!5680943))

(assert (= (and d!1792942 (not c!999700)) b!5680941))

(assert (= (and b!5680941 c!999699) b!5680942))

(assert (= (and b!5680941 (not c!999699)) b!5680944))

(assert (= (and d!1792942 res!2400498) b!5680939))

(assert (= (and b!5680939 res!2400495) b!5680938))

(assert (= (and b!5680938 res!2400496) b!5680937))

(assert (= (and d!1792942 (not res!2400499)) b!5680940))

(declare-fun m!6640348 () Bool)

(assert (=> d!1792942 m!6640348))

(assert (=> d!1792942 m!6639802))

(declare-fun m!6640350 () Bool)

(assert (=> d!1792942 m!6640350))

(assert (=> d!1792942 m!6639800))

(assert (=> b!5680944 m!6639802))

(declare-fun m!6640352 () Bool)

(assert (=> b!5680944 m!6640352))

(assert (=> b!5680944 m!6640352))

(declare-fun m!6640354 () Bool)

(assert (=> b!5680944 m!6640354))

(assert (=> b!5680944 m!6639802))

(declare-fun m!6640356 () Bool)

(assert (=> b!5680944 m!6640356))

(assert (=> b!5680944 m!6640352))

(declare-fun m!6640358 () Bool)

(assert (=> b!5680944 m!6640358))

(declare-fun m!6640360 () Bool)

(assert (=> b!5680939 m!6640360))

(declare-fun m!6640362 () Bool)

(assert (=> b!5680939 m!6640362))

(declare-fun m!6640364 () Bool)

(assert (=> b!5680945 m!6640364))

(assert (=> b!5680940 m!6640348))

(assert (=> b!5680937 m!6640360))

(declare-fun m!6640370 () Bool)

(assert (=> b!5680937 m!6640370))

(assert (=> b!5680938 m!6640360))

(declare-fun m!6640372 () Bool)

(assert (=> b!5680938 m!6640372))

(assert (=> b!5680302 d!1792942))

(assert (=> bm!431216 d!1792834))

(assert (=> b!5680298 d!1792752))

(declare-fun d!1792950 () Bool)

(assert (=> d!1792950 (= (nullable!5705 (h!69642 (exprs!5557 lt!2270169))) (nullableFct!1783 (h!69642 (exprs!5557 lt!2270169))))))

(declare-fun bs!1323948 () Bool)

(assert (= bs!1323948 d!1792950))

(declare-fun m!6640376 () Bool)

(assert (=> bs!1323948 m!6640376))

(assert (=> b!5680256 d!1792950))

(declare-fun d!1792954 () Bool)

(declare-fun c!999705 () Bool)

(assert (=> d!1792954 (= c!999705 (isEmpty!35048 (tail!11150 (t!376631 s!2326))))))

(declare-fun e!3496436 () Bool)

(assert (=> d!1792954 (= (matchZipper!1811 (derivationStepZipper!1756 lt!2270163 (head!12055 (t!376631 s!2326))) (tail!11150 (t!376631 s!2326))) e!3496436)))

(declare-fun b!5680958 () Bool)

(assert (=> b!5680958 (= e!3496436 (nullableZipper!1637 (derivationStepZipper!1756 lt!2270163 (head!12055 (t!376631 s!2326)))))))

(declare-fun b!5680959 () Bool)

(assert (=> b!5680959 (= e!3496436 (matchZipper!1811 (derivationStepZipper!1756 (derivationStepZipper!1756 lt!2270163 (head!12055 (t!376631 s!2326))) (head!12055 (tail!11150 (t!376631 s!2326)))) (tail!11150 (tail!11150 (t!376631 s!2326)))))))

(assert (= (and d!1792954 c!999705) b!5680958))

(assert (= (and d!1792954 (not c!999705)) b!5680959))

(assert (=> d!1792954 m!6639772))

(assert (=> d!1792954 m!6640206))

(assert (=> b!5680958 m!6639852))

(declare-fun m!6640382 () Bool)

(assert (=> b!5680958 m!6640382))

(assert (=> b!5680959 m!6639772))

(assert (=> b!5680959 m!6640210))

(assert (=> b!5680959 m!6639852))

(assert (=> b!5680959 m!6640210))

(declare-fun m!6640384 () Bool)

(assert (=> b!5680959 m!6640384))

(assert (=> b!5680959 m!6639772))

(assert (=> b!5680959 m!6640214))

(assert (=> b!5680959 m!6640384))

(assert (=> b!5680959 m!6640214))

(declare-fun m!6640386 () Bool)

(assert (=> b!5680959 m!6640386))

(assert (=> b!5680346 d!1792954))

(declare-fun bs!1323949 () Bool)

(declare-fun d!1792958 () Bool)

(assert (= bs!1323949 (and d!1792958 b!5679736)))

(declare-fun lambda!306108 () Int)

(assert (=> bs!1323949 (= (= (head!12055 (t!376631 s!2326)) (h!69643 s!2326)) (= lambda!306108 lambda!306019))))

(declare-fun bs!1323950 () Bool)

(assert (= bs!1323950 (and d!1792958 d!1792678)))

(assert (=> bs!1323950 (= (= (head!12055 (t!376631 s!2326)) (h!69643 s!2326)) (= lambda!306108 lambda!306062))))

(declare-fun bs!1323951 () Bool)

(assert (= bs!1323951 (and d!1792958 d!1792826)))

(assert (=> bs!1323951 (= (= (head!12055 (t!376631 s!2326)) (head!12055 s!2326)) (= lambda!306108 lambda!306092))))

(declare-fun bs!1323952 () Bool)

(assert (= bs!1323952 (and d!1792958 d!1792868)))

(assert (=> bs!1323952 (= lambda!306108 lambda!306099)))

(assert (=> d!1792958 true))

(assert (=> d!1792958 (= (derivationStepZipper!1756 lt!2270163 (head!12055 (t!376631 s!2326))) (flatMap!1286 lt!2270163 lambda!306108))))

(declare-fun bs!1323953 () Bool)

(assert (= bs!1323953 d!1792958))

(declare-fun m!6640390 () Bool)

(assert (=> bs!1323953 m!6640390))

(assert (=> b!5680346 d!1792958))

(assert (=> b!5680346 d!1792870))

(assert (=> b!5680346 d!1792872))

(declare-fun bs!1323954 () Bool)

(declare-fun d!1792962 () Bool)

(assert (= bs!1323954 (and d!1792962 d!1792782)))

(declare-fun lambda!306109 () Int)

(assert (=> bs!1323954 (= lambda!306109 lambda!306088)))

(declare-fun bs!1323955 () Bool)

(assert (= bs!1323955 (and d!1792962 d!1792884)))

(assert (=> bs!1323955 (= lambda!306109 lambda!306100)))

(assert (=> d!1792962 (= (nullableZipper!1637 ((_ map or) lt!2270160 lt!2270156)) (exists!2209 ((_ map or) lt!2270160 lt!2270156) lambda!306109))))

(declare-fun bs!1323958 () Bool)

(assert (= bs!1323958 d!1792962))

(declare-fun m!6640396 () Bool)

(assert (=> bs!1323958 m!6640396))

(assert (=> b!5680270 d!1792962))

(declare-fun d!1792966 () Bool)

(declare-fun c!999708 () Bool)

(assert (=> d!1792966 (= c!999708 (isEmpty!35048 (tail!11150 (t!376631 s!2326))))))

(declare-fun e!3496440 () Bool)

(assert (=> d!1792966 (= (matchZipper!1811 (derivationStepZipper!1756 lt!2270156 (head!12055 (t!376631 s!2326))) (tail!11150 (t!376631 s!2326))) e!3496440)))

(declare-fun b!5680965 () Bool)

(assert (=> b!5680965 (= e!3496440 (nullableZipper!1637 (derivationStepZipper!1756 lt!2270156 (head!12055 (t!376631 s!2326)))))))

(declare-fun b!5680966 () Bool)

(assert (=> b!5680966 (= e!3496440 (matchZipper!1811 (derivationStepZipper!1756 (derivationStepZipper!1756 lt!2270156 (head!12055 (t!376631 s!2326))) (head!12055 (tail!11150 (t!376631 s!2326)))) (tail!11150 (tail!11150 (t!376631 s!2326)))))))

(assert (= (and d!1792966 c!999708) b!5680965))

(assert (= (and d!1792966 (not c!999708)) b!5680966))

(assert (=> d!1792966 m!6639772))

(assert (=> d!1792966 m!6640206))

(assert (=> b!5680965 m!6639786))

(declare-fun m!6640398 () Bool)

(assert (=> b!5680965 m!6640398))

(assert (=> b!5680966 m!6639772))

(assert (=> b!5680966 m!6640210))

(assert (=> b!5680966 m!6639786))

(assert (=> b!5680966 m!6640210))

(declare-fun m!6640402 () Bool)

(assert (=> b!5680966 m!6640402))

(assert (=> b!5680966 m!6639772))

(assert (=> b!5680966 m!6640214))

(assert (=> b!5680966 m!6640402))

(assert (=> b!5680966 m!6640214))

(declare-fun m!6640404 () Bool)

(assert (=> b!5680966 m!6640404))

(assert (=> b!5680273 d!1792966))

(declare-fun bs!1323965 () Bool)

(declare-fun d!1792970 () Bool)

(assert (= bs!1323965 (and d!1792970 d!1792678)))

(declare-fun lambda!306111 () Int)

(assert (=> bs!1323965 (= (= (head!12055 (t!376631 s!2326)) (h!69643 s!2326)) (= lambda!306111 lambda!306062))))

(declare-fun bs!1323967 () Bool)

(assert (= bs!1323967 (and d!1792970 b!5679736)))

(assert (=> bs!1323967 (= (= (head!12055 (t!376631 s!2326)) (h!69643 s!2326)) (= lambda!306111 lambda!306019))))

(declare-fun bs!1323969 () Bool)

(assert (= bs!1323969 (and d!1792970 d!1792868)))

(assert (=> bs!1323969 (= lambda!306111 lambda!306099)))

(declare-fun bs!1323971 () Bool)

(assert (= bs!1323971 (and d!1792970 d!1792826)))

(assert (=> bs!1323971 (= (= (head!12055 (t!376631 s!2326)) (head!12055 s!2326)) (= lambda!306111 lambda!306092))))

(declare-fun bs!1323973 () Bool)

(assert (= bs!1323973 (and d!1792970 d!1792958)))

(assert (=> bs!1323973 (= lambda!306111 lambda!306108)))

(assert (=> d!1792970 true))

(assert (=> d!1792970 (= (derivationStepZipper!1756 lt!2270156 (head!12055 (t!376631 s!2326))) (flatMap!1286 lt!2270156 lambda!306111))))

(declare-fun bs!1323976 () Bool)

(assert (= bs!1323976 d!1792970))

(declare-fun m!6640406 () Bool)

(assert (=> bs!1323976 m!6640406))

(assert (=> b!5680273 d!1792970))

(assert (=> b!5680273 d!1792870))

(assert (=> b!5680273 d!1792872))

(declare-fun b!5680977 () Bool)

(declare-fun e!3496447 () (InoxSet Context!10114))

(declare-fun call!431375 () (InoxSet Context!10114))

(assert (=> b!5680977 (= e!3496447 call!431375)))

(declare-fun b!5680978 () Bool)

(assert (=> b!5680978 (= e!3496447 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5680979 () Bool)

(declare-fun e!3496448 () (InoxSet Context!10114))

(declare-fun call!431373 () (InoxSet Context!10114))

(declare-fun call!431376 () (InoxSet Context!10114))

(assert (=> b!5680979 (= e!3496448 ((_ map or) call!431373 call!431376))))

(declare-fun b!5680980 () Bool)

(declare-fun e!3496451 () (InoxSet Context!10114))

(assert (=> b!5680980 (= e!3496451 e!3496448)))

(declare-fun c!999713 () Bool)

(assert (=> b!5680980 (= c!999713 ((_ is Union!15673) (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343)))))))))))

(declare-fun bm!431368 () Bool)

(declare-fun call!431374 () (InoxSet Context!10114))

(assert (=> bm!431368 (= call!431375 call!431374)))

(declare-fun d!1792972 () Bool)

(declare-fun c!999717 () Bool)

(assert (=> d!1792972 (= c!999717 (and ((_ is ElementMatch!15673) (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343)))))))) (= (c!999361 (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343)))))))) (h!69643 s!2326))))))

(assert (=> d!1792972 (= (derivationStepZipperDown!1015 (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343))))))) (ite (or c!999550 c!999552) lt!2270159 (Context!10115 call!431263)) (h!69643 s!2326)) e!3496451)))

(declare-fun b!5680981 () Bool)

(declare-fun e!3496450 () (InoxSet Context!10114))

(assert (=> b!5680981 (= e!3496450 call!431375)))

(declare-fun b!5680982 () Bool)

(declare-fun e!3496452 () (InoxSet Context!10114))

(assert (=> b!5680982 (= e!3496452 e!3496450)))

(declare-fun c!999716 () Bool)

(assert (=> b!5680982 (= c!999716 ((_ is Concat!24518) (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343)))))))))))

(declare-fun c!999714 () Bool)

(declare-fun b!5680983 () Bool)

(assert (=> b!5680983 (= c!999714 ((_ is Star!15673) (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343)))))))))))

(assert (=> b!5680983 (= e!3496450 e!3496447)))

(declare-fun c!999715 () Bool)

(declare-fun call!431378 () List!63318)

(declare-fun bm!431369 () Bool)

(assert (=> bm!431369 (= call!431378 ($colon$colon!1704 (exprs!5557 (ite (or c!999550 c!999552) lt!2270159 (Context!10115 call!431263))) (ite (or c!999715 c!999716) (regTwo!31858 (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343)))))))) (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343))))))))))))

(declare-fun b!5680984 () Bool)

(declare-fun e!3496449 () Bool)

(assert (=> b!5680984 (= c!999715 e!3496449)))

(declare-fun res!2400507 () Bool)

(assert (=> b!5680984 (=> (not res!2400507) (not e!3496449))))

(assert (=> b!5680984 (= res!2400507 ((_ is Concat!24518) (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343)))))))))))

(assert (=> b!5680984 (= e!3496448 e!3496452)))

(declare-fun bm!431370 () Bool)

(declare-fun call!431377 () List!63318)

(assert (=> bm!431370 (= call!431377 call!431378)))

(declare-fun bm!431371 () Bool)

(assert (=> bm!431371 (= call!431376 (derivationStepZipperDown!1015 (ite c!999713 (regTwo!31859 (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343)))))))) (regOne!31858 (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343))))))))) (ite c!999713 (ite (or c!999550 c!999552) lt!2270159 (Context!10115 call!431263)) (Context!10115 call!431378)) (h!69643 s!2326)))))

(declare-fun b!5680985 () Bool)

(assert (=> b!5680985 (= e!3496452 ((_ map or) call!431376 call!431374))))

(declare-fun bm!431372 () Bool)

(assert (=> bm!431372 (= call!431373 (derivationStepZipperDown!1015 (ite c!999713 (regOne!31859 (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343)))))))) (ite c!999715 (regTwo!31858 (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343)))))))) (ite c!999716 (regOne!31858 (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343)))))))) (reg!16002 (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343))))))))))) (ite (or c!999713 c!999715) (ite (or c!999550 c!999552) lt!2270159 (Context!10115 call!431263)) (Context!10115 call!431377)) (h!69643 s!2326)))))

(declare-fun b!5680986 () Bool)

(assert (=> b!5680986 (= e!3496451 (store ((as const (Array Context!10114 Bool)) false) (ite (or c!999550 c!999552) lt!2270159 (Context!10115 call!431263)) true))))

(declare-fun b!5680987 () Bool)

(assert (=> b!5680987 (= e!3496449 (nullable!5705 (regOne!31858 (ite c!999550 (regOne!31859 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999552 (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (ite c!999553 (regOne!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (reg!16002 (h!69642 (exprs!5557 (h!69644 zl!343))))))))))))

(declare-fun bm!431373 () Bool)

(assert (=> bm!431373 (= call!431374 call!431373)))

(assert (= (and d!1792972 c!999717) b!5680986))

(assert (= (and d!1792972 (not c!999717)) b!5680980))

(assert (= (and b!5680980 c!999713) b!5680979))

(assert (= (and b!5680980 (not c!999713)) b!5680984))

(assert (= (and b!5680984 res!2400507) b!5680987))

(assert (= (and b!5680984 c!999715) b!5680985))

(assert (= (and b!5680984 (not c!999715)) b!5680982))

(assert (= (and b!5680982 c!999716) b!5680981))

(assert (= (and b!5680982 (not c!999716)) b!5680983))

(assert (= (and b!5680983 c!999714) b!5680977))

(assert (= (and b!5680983 (not c!999714)) b!5680978))

(assert (= (or b!5680981 b!5680977) bm!431370))

(assert (= (or b!5680981 b!5680977) bm!431368))

(assert (= (or b!5680985 bm!431370) bm!431369))

(assert (= (or b!5680985 bm!431368) bm!431373))

(assert (= (or b!5680979 b!5680985) bm!431371))

(assert (= (or b!5680979 bm!431373) bm!431372))

(declare-fun m!6640426 () Bool)

(assert (=> bm!431371 m!6640426))

(declare-fun m!6640428 () Bool)

(assert (=> bm!431369 m!6640428))

(declare-fun m!6640430 () Bool)

(assert (=> b!5680987 m!6640430))

(declare-fun m!6640432 () Bool)

(assert (=> bm!431372 m!6640432))

(declare-fun m!6640434 () Bool)

(assert (=> b!5680986 m!6640434))

(assert (=> bm!431258 d!1792972))

(declare-fun d!1792976 () Bool)

(assert (=> d!1792976 (= (isEmpty!35045 (t!376630 (unfocusZipperList!1101 zl!343))) ((_ is Nil!63194) (t!376630 (unfocusZipperList!1101 zl!343))))))

(assert (=> b!5680375 d!1792976))

(declare-fun bs!1323981 () Bool)

(declare-fun d!1792978 () Bool)

(assert (= bs!1323981 (and d!1792978 d!1792716)))

(declare-fun lambda!306114 () Int)

(assert (=> bs!1323981 (= lambda!306114 lambda!306078)))

(declare-fun bs!1323982 () Bool)

(assert (= bs!1323982 (and d!1792978 d!1792602)))

(assert (=> bs!1323982 (= lambda!306114 lambda!306034)))

(declare-fun bs!1323984 () Bool)

(assert (= bs!1323984 (and d!1792978 d!1792680)))

(assert (=> bs!1323984 (= lambda!306114 lambda!306065)))

(declare-fun bs!1323985 () Bool)

(assert (= bs!1323985 (and d!1792978 d!1792718)))

(assert (=> bs!1323985 (= lambda!306114 lambda!306081)))

(declare-fun bs!1323987 () Bool)

(assert (= bs!1323987 (and d!1792978 d!1792690)))

(assert (=> bs!1323987 (= lambda!306114 lambda!306066)))

(declare-fun bs!1323988 () Bool)

(assert (= bs!1323988 (and d!1792978 d!1792748)))

(assert (=> bs!1323988 (= lambda!306114 lambda!306084)))

(declare-fun bs!1323990 () Bool)

(assert (= bs!1323990 (and d!1792978 d!1792778)))

(assert (=> bs!1323990 (= lambda!306114 lambda!306085)))

(declare-fun b!5680999 () Bool)

(declare-fun e!3496461 () Regex!15673)

(declare-fun e!3496464 () Regex!15673)

(assert (=> b!5680999 (= e!3496461 e!3496464)))

(declare-fun c!999723 () Bool)

(assert (=> b!5680999 (= c!999723 ((_ is Cons!63194) (t!376630 (unfocusZipperList!1101 zl!343))))))

(declare-fun b!5681000 () Bool)

(declare-fun e!3496460 () Bool)

(declare-fun e!3496463 () Bool)

(assert (=> b!5681000 (= e!3496460 e!3496463)))

(declare-fun c!999724 () Bool)

(assert (=> b!5681000 (= c!999724 (isEmpty!35045 (t!376630 (unfocusZipperList!1101 zl!343))))))

(declare-fun b!5681001 () Bool)

(declare-fun e!3496462 () Bool)

(declare-fun lt!2270290 () Regex!15673)

(assert (=> b!5681001 (= e!3496462 (= lt!2270290 (head!12054 (t!376630 (unfocusZipperList!1101 zl!343)))))))

(declare-fun b!5681002 () Bool)

(assert (=> b!5681002 (= e!3496464 EmptyLang!15673)))

(assert (=> d!1792978 e!3496460))

(declare-fun res!2400512 () Bool)

(assert (=> d!1792978 (=> (not res!2400512) (not e!3496460))))

(assert (=> d!1792978 (= res!2400512 (validRegex!7409 lt!2270290))))

(assert (=> d!1792978 (= lt!2270290 e!3496461)))

(declare-fun c!999722 () Bool)

(declare-fun e!3496465 () Bool)

(assert (=> d!1792978 (= c!999722 e!3496465)))

(declare-fun res!2400511 () Bool)

(assert (=> d!1792978 (=> (not res!2400511) (not e!3496465))))

(assert (=> d!1792978 (= res!2400511 ((_ is Cons!63194) (t!376630 (unfocusZipperList!1101 zl!343))))))

(assert (=> d!1792978 (forall!14820 (t!376630 (unfocusZipperList!1101 zl!343)) lambda!306114)))

(assert (=> d!1792978 (= (generalisedUnion!1536 (t!376630 (unfocusZipperList!1101 zl!343))) lt!2270290)))

(declare-fun b!5681003 () Bool)

(assert (=> b!5681003 (= e!3496464 (Union!15673 (h!69642 (t!376630 (unfocusZipperList!1101 zl!343))) (generalisedUnion!1536 (t!376630 (t!376630 (unfocusZipperList!1101 zl!343))))))))

(declare-fun b!5681004 () Bool)

(assert (=> b!5681004 (= e!3496461 (h!69642 (t!376630 (unfocusZipperList!1101 zl!343))))))

(declare-fun b!5681005 () Bool)

(assert (=> b!5681005 (= e!3496462 (isUnion!636 lt!2270290))))

(declare-fun b!5681006 () Bool)

(assert (=> b!5681006 (= e!3496463 (isEmptyLang!1206 lt!2270290))))

(declare-fun b!5681007 () Bool)

(assert (=> b!5681007 (= e!3496465 (isEmpty!35045 (t!376630 (t!376630 (unfocusZipperList!1101 zl!343)))))))

(declare-fun b!5681008 () Bool)

(assert (=> b!5681008 (= e!3496463 e!3496462)))

(declare-fun c!999725 () Bool)

(assert (=> b!5681008 (= c!999725 (isEmpty!35045 (tail!11149 (t!376630 (unfocusZipperList!1101 zl!343)))))))

(assert (= (and d!1792978 res!2400511) b!5681007))

(assert (= (and d!1792978 c!999722) b!5681004))

(assert (= (and d!1792978 (not c!999722)) b!5680999))

(assert (= (and b!5680999 c!999723) b!5681003))

(assert (= (and b!5680999 (not c!999723)) b!5681002))

(assert (= (and d!1792978 res!2400512) b!5681000))

(assert (= (and b!5681000 c!999724) b!5681006))

(assert (= (and b!5681000 (not c!999724)) b!5681008))

(assert (= (and b!5681008 c!999725) b!5681001))

(assert (= (and b!5681008 (not c!999725)) b!5681005))

(declare-fun m!6640436 () Bool)

(assert (=> d!1792978 m!6640436))

(declare-fun m!6640438 () Bool)

(assert (=> d!1792978 m!6640438))

(declare-fun m!6640440 () Bool)

(assert (=> b!5681003 m!6640440))

(assert (=> b!5681000 m!6639874))

(declare-fun m!6640442 () Bool)

(assert (=> b!5681005 m!6640442))

(declare-fun m!6640444 () Bool)

(assert (=> b!5681006 m!6640444))

(declare-fun m!6640446 () Bool)

(assert (=> b!5681008 m!6640446))

(assert (=> b!5681008 m!6640446))

(declare-fun m!6640448 () Bool)

(assert (=> b!5681008 m!6640448))

(declare-fun m!6640450 () Bool)

(assert (=> b!5681001 m!6640450))

(declare-fun m!6640452 () Bool)

(assert (=> b!5681007 m!6640452))

(assert (=> b!5680371 d!1792978))

(declare-fun c!999726 () Bool)

(declare-fun bm!431376 () Bool)

(declare-fun call!431383 () Bool)

(declare-fun c!999727 () Bool)

(assert (=> bm!431376 (= call!431383 (validRegex!7409 (ite c!999727 (reg!16002 (ite c!999520 (reg!16002 r!7292) (ite c!999519 (regTwo!31859 r!7292) (regTwo!31858 r!7292)))) (ite c!999726 (regTwo!31859 (ite c!999520 (reg!16002 r!7292) (ite c!999519 (regTwo!31859 r!7292) (regTwo!31858 r!7292)))) (regTwo!31858 (ite c!999520 (reg!16002 r!7292) (ite c!999519 (regTwo!31859 r!7292) (regTwo!31858 r!7292))))))))))

(declare-fun b!5681010 () Bool)

(declare-fun e!3496469 () Bool)

(declare-fun e!3496471 () Bool)

(assert (=> b!5681010 (= e!3496469 e!3496471)))

(declare-fun res!2400517 () Bool)

(assert (=> b!5681010 (=> (not res!2400517) (not e!3496471))))

(declare-fun call!431381 () Bool)

(assert (=> b!5681010 (= res!2400517 call!431381)))

(declare-fun b!5681011 () Bool)

(declare-fun call!431382 () Bool)

(assert (=> b!5681011 (= e!3496471 call!431382)))

(declare-fun b!5681012 () Bool)

(declare-fun e!3496467 () Bool)

(declare-fun e!3496468 () Bool)

(assert (=> b!5681012 (= e!3496467 e!3496468)))

(assert (=> b!5681012 (= c!999726 ((_ is Union!15673) (ite c!999520 (reg!16002 r!7292) (ite c!999519 (regTwo!31859 r!7292) (regTwo!31858 r!7292)))))))

(declare-fun b!5681013 () Bool)

(declare-fun res!2400513 () Bool)

(assert (=> b!5681013 (=> res!2400513 e!3496469)))

(assert (=> b!5681013 (= res!2400513 (not ((_ is Concat!24518) (ite c!999520 (reg!16002 r!7292) (ite c!999519 (regTwo!31859 r!7292) (regTwo!31858 r!7292))))))))

(assert (=> b!5681013 (= e!3496468 e!3496469)))

(declare-fun b!5681014 () Bool)

(declare-fun e!3496466 () Bool)

(assert (=> b!5681014 (= e!3496466 call!431383)))

(declare-fun b!5681015 () Bool)

(declare-fun e!3496472 () Bool)

(assert (=> b!5681015 (= e!3496472 e!3496467)))

(assert (=> b!5681015 (= c!999727 ((_ is Star!15673) (ite c!999520 (reg!16002 r!7292) (ite c!999519 (regTwo!31859 r!7292) (regTwo!31858 r!7292)))))))

(declare-fun b!5681016 () Bool)

(declare-fun res!2400515 () Bool)

(declare-fun e!3496470 () Bool)

(assert (=> b!5681016 (=> (not res!2400515) (not e!3496470))))

(assert (=> b!5681016 (= res!2400515 call!431381)))

(assert (=> b!5681016 (= e!3496468 e!3496470)))

(declare-fun bm!431377 () Bool)

(assert (=> bm!431377 (= call!431381 (validRegex!7409 (ite c!999726 (regOne!31859 (ite c!999520 (reg!16002 r!7292) (ite c!999519 (regTwo!31859 r!7292) (regTwo!31858 r!7292)))) (regOne!31858 (ite c!999520 (reg!16002 r!7292) (ite c!999519 (regTwo!31859 r!7292) (regTwo!31858 r!7292)))))))))

(declare-fun bm!431378 () Bool)

(assert (=> bm!431378 (= call!431382 call!431383)))

(declare-fun b!5681017 () Bool)

(assert (=> b!5681017 (= e!3496467 e!3496466)))

(declare-fun res!2400516 () Bool)

(assert (=> b!5681017 (= res!2400516 (not (nullable!5705 (reg!16002 (ite c!999520 (reg!16002 r!7292) (ite c!999519 (regTwo!31859 r!7292) (regTwo!31858 r!7292)))))))))

(assert (=> b!5681017 (=> (not res!2400516) (not e!3496466))))

(declare-fun b!5681009 () Bool)

(assert (=> b!5681009 (= e!3496470 call!431382)))

(declare-fun d!1792980 () Bool)

(declare-fun res!2400514 () Bool)

(assert (=> d!1792980 (=> res!2400514 e!3496472)))

(assert (=> d!1792980 (= res!2400514 ((_ is ElementMatch!15673) (ite c!999520 (reg!16002 r!7292) (ite c!999519 (regTwo!31859 r!7292) (regTwo!31858 r!7292)))))))

(assert (=> d!1792980 (= (validRegex!7409 (ite c!999520 (reg!16002 r!7292) (ite c!999519 (regTwo!31859 r!7292) (regTwo!31858 r!7292)))) e!3496472)))

(assert (= (and d!1792980 (not res!2400514)) b!5681015))

(assert (= (and b!5681015 c!999727) b!5681017))

(assert (= (and b!5681015 (not c!999727)) b!5681012))

(assert (= (and b!5681017 res!2400516) b!5681014))

(assert (= (and b!5681012 c!999726) b!5681016))

(assert (= (and b!5681012 (not c!999726)) b!5681013))

(assert (= (and b!5681016 res!2400515) b!5681009))

(assert (= (and b!5681013 (not res!2400513)) b!5681010))

(assert (= (and b!5681010 res!2400517) b!5681011))

(assert (= (or b!5681009 b!5681011) bm!431378))

(assert (= (or b!5681016 b!5681010) bm!431377))

(assert (= (or b!5681014 bm!431378) bm!431376))

(declare-fun m!6640454 () Bool)

(assert (=> bm!431376 m!6640454))

(declare-fun m!6640456 () Bool)

(assert (=> bm!431377 m!6640456))

(declare-fun m!6640458 () Bool)

(assert (=> b!5681017 m!6640458))

(assert (=> bm!431238 d!1792980))

(assert (=> d!1792714 d!1792808))

(declare-fun d!1792982 () Bool)

(assert (=> d!1792982 (= (head!12054 (unfocusZipperList!1101 zl!343)) (h!69642 (unfocusZipperList!1101 zl!343)))))

(assert (=> b!5680369 d!1792982))

(declare-fun d!1792984 () Bool)

(assert (=> d!1792984 (= ($colon$colon!1704 (exprs!5557 (Context!10115 lt!2270172)) (ite (or c!999561 c!999562) (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (regOne!31858 r!7292)))) (Cons!63194 (ite (or c!999561 c!999562) (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (regOne!31858 r!7292))) (exprs!5557 (Context!10115 lt!2270172))))))

(assert (=> bm!431263 d!1792984))

(declare-fun call!431392 () Bool)

(declare-fun bm!431385 () Bool)

(declare-fun c!999733 () Bool)

(declare-fun c!999734 () Bool)

(assert (=> bm!431385 (= call!431392 (validRegex!7409 (ite c!999734 (reg!16002 lt!2270251) (ite c!999733 (regTwo!31859 lt!2270251) (regTwo!31858 lt!2270251)))))))

(declare-fun b!5681030 () Bool)

(declare-fun e!3496482 () Bool)

(declare-fun e!3496484 () Bool)

(assert (=> b!5681030 (= e!3496482 e!3496484)))

(declare-fun res!2400523 () Bool)

(assert (=> b!5681030 (=> (not res!2400523) (not e!3496484))))

(declare-fun call!431390 () Bool)

(assert (=> b!5681030 (= res!2400523 call!431390)))

(declare-fun b!5681031 () Bool)

(declare-fun call!431391 () Bool)

(assert (=> b!5681031 (= e!3496484 call!431391)))

(declare-fun b!5681032 () Bool)

(declare-fun e!3496480 () Bool)

(declare-fun e!3496481 () Bool)

(assert (=> b!5681032 (= e!3496480 e!3496481)))

(assert (=> b!5681032 (= c!999733 ((_ is Union!15673) lt!2270251))))

(declare-fun b!5681033 () Bool)

(declare-fun res!2400519 () Bool)

(assert (=> b!5681033 (=> res!2400519 e!3496482)))

(assert (=> b!5681033 (= res!2400519 (not ((_ is Concat!24518) lt!2270251)))))

(assert (=> b!5681033 (= e!3496481 e!3496482)))

(declare-fun b!5681034 () Bool)

(declare-fun e!3496479 () Bool)

(assert (=> b!5681034 (= e!3496479 call!431392)))

(declare-fun b!5681035 () Bool)

(declare-fun e!3496485 () Bool)

(assert (=> b!5681035 (= e!3496485 e!3496480)))

(assert (=> b!5681035 (= c!999734 ((_ is Star!15673) lt!2270251))))

(declare-fun b!5681036 () Bool)

(declare-fun res!2400521 () Bool)

(declare-fun e!3496483 () Bool)

(assert (=> b!5681036 (=> (not res!2400521) (not e!3496483))))

(assert (=> b!5681036 (= res!2400521 call!431390)))

(assert (=> b!5681036 (= e!3496481 e!3496483)))

(declare-fun bm!431386 () Bool)

(assert (=> bm!431386 (= call!431390 (validRegex!7409 (ite c!999733 (regOne!31859 lt!2270251) (regOne!31858 lt!2270251))))))

(declare-fun bm!431387 () Bool)

(assert (=> bm!431387 (= call!431391 call!431392)))

(declare-fun b!5681037 () Bool)

(assert (=> b!5681037 (= e!3496480 e!3496479)))

(declare-fun res!2400522 () Bool)

(assert (=> b!5681037 (= res!2400522 (not (nullable!5705 (reg!16002 lt!2270251))))))

(assert (=> b!5681037 (=> (not res!2400522) (not e!3496479))))

(declare-fun b!5681029 () Bool)

(assert (=> b!5681029 (= e!3496483 call!431391)))

(declare-fun d!1792988 () Bool)

(declare-fun res!2400520 () Bool)

(assert (=> d!1792988 (=> res!2400520 e!3496485)))

(assert (=> d!1792988 (= res!2400520 ((_ is ElementMatch!15673) lt!2270251))))

(assert (=> d!1792988 (= (validRegex!7409 lt!2270251) e!3496485)))

(assert (= (and d!1792988 (not res!2400520)) b!5681035))

(assert (= (and b!5681035 c!999734) b!5681037))

(assert (= (and b!5681035 (not c!999734)) b!5681032))

(assert (= (and b!5681037 res!2400522) b!5681034))

(assert (= (and b!5681032 c!999733) b!5681036))

(assert (= (and b!5681032 (not c!999733)) b!5681033))

(assert (= (and b!5681036 res!2400521) b!5681029))

(assert (= (and b!5681033 (not res!2400519)) b!5681030))

(assert (= (and b!5681030 res!2400523) b!5681031))

(assert (= (or b!5681029 b!5681031) bm!431387))

(assert (= (or b!5681036 b!5681030) bm!431386))

(assert (= (or b!5681034 bm!431387) bm!431385))

(declare-fun m!6640466 () Bool)

(assert (=> bm!431385 m!6640466))

(declare-fun m!6640468 () Bool)

(assert (=> bm!431386 m!6640468))

(declare-fun m!6640470 () Bool)

(assert (=> b!5681037 m!6640470))

(assert (=> d!1792710 d!1792988))

(assert (=> d!1792710 d!1792716))

(assert (=> d!1792710 d!1792718))

(declare-fun bs!1323999 () Bool)

(declare-fun d!1792990 () Bool)

(assert (= bs!1323999 (and d!1792990 d!1792716)))

(declare-fun lambda!306116 () Int)

(assert (=> bs!1323999 (= lambda!306116 lambda!306078)))

(declare-fun bs!1324000 () Bool)

(assert (= bs!1324000 (and d!1792990 d!1792602)))

(assert (=> bs!1324000 (= lambda!306116 lambda!306034)))

(declare-fun bs!1324001 () Bool)

(assert (= bs!1324001 (and d!1792990 d!1792680)))

(assert (=> bs!1324001 (= lambda!306116 lambda!306065)))

(declare-fun bs!1324002 () Bool)

(assert (= bs!1324002 (and d!1792990 d!1792718)))

(assert (=> bs!1324002 (= lambda!306116 lambda!306081)))

(declare-fun bs!1324003 () Bool)

(assert (= bs!1324003 (and d!1792990 d!1792978)))

(assert (=> bs!1324003 (= lambda!306116 lambda!306114)))

(declare-fun bs!1324004 () Bool)

(assert (= bs!1324004 (and d!1792990 d!1792690)))

(assert (=> bs!1324004 (= lambda!306116 lambda!306066)))

(declare-fun bs!1324005 () Bool)

(assert (= bs!1324005 (and d!1792990 d!1792748)))

(assert (=> bs!1324005 (= lambda!306116 lambda!306084)))

(declare-fun bs!1324006 () Bool)

(assert (= bs!1324006 (and d!1792990 d!1792778)))

(assert (=> bs!1324006 (= lambda!306116 lambda!306085)))

(assert (=> d!1792990 (= (inv!82429 (h!69644 (t!376632 zl!343))) (forall!14820 (exprs!5557 (h!69644 (t!376632 zl!343))) lambda!306116))))

(declare-fun bs!1324007 () Bool)

(assert (= bs!1324007 d!1792990))

(declare-fun m!6640480 () Bool)

(assert (=> bs!1324007 m!6640480))

(assert (=> b!5680480 d!1792990))

(assert (=> b!5679970 d!1792682))

(declare-fun bs!1324009 () Bool)

(declare-fun d!1792994 () Bool)

(assert (= bs!1324009 (and d!1792994 d!1792716)))

(declare-fun lambda!306117 () Int)

(assert (=> bs!1324009 (= lambda!306117 lambda!306078)))

(declare-fun bs!1324010 () Bool)

(assert (= bs!1324010 (and d!1792994 d!1792602)))

(assert (=> bs!1324010 (= lambda!306117 lambda!306034)))

(declare-fun bs!1324011 () Bool)

(assert (= bs!1324011 (and d!1792994 d!1792718)))

(assert (=> bs!1324011 (= lambda!306117 lambda!306081)))

(declare-fun bs!1324012 () Bool)

(assert (= bs!1324012 (and d!1792994 d!1792978)))

(assert (=> bs!1324012 (= lambda!306117 lambda!306114)))

(declare-fun bs!1324013 () Bool)

(assert (= bs!1324013 (and d!1792994 d!1792690)))

(assert (=> bs!1324013 (= lambda!306117 lambda!306066)))

(declare-fun bs!1324014 () Bool)

(assert (= bs!1324014 (and d!1792994 d!1792748)))

(assert (=> bs!1324014 (= lambda!306117 lambda!306084)))

(declare-fun bs!1324015 () Bool)

(assert (= bs!1324015 (and d!1792994 d!1792778)))

(assert (=> bs!1324015 (= lambda!306117 lambda!306085)))

(declare-fun bs!1324016 () Bool)

(assert (= bs!1324016 (and d!1792994 d!1792680)))

(assert (=> bs!1324016 (= lambda!306117 lambda!306065)))

(declare-fun bs!1324017 () Bool)

(assert (= bs!1324017 (and d!1792994 d!1792990)))

(assert (=> bs!1324017 (= lambda!306117 lambda!306116)))

(assert (=> d!1792994 (= (inv!82429 setElem!38001) (forall!14820 (exprs!5557 setElem!38001) lambda!306117))))

(declare-fun bs!1324018 () Bool)

(assert (= bs!1324018 d!1792994))

(declare-fun m!6640486 () Bool)

(assert (=> bs!1324018 m!6640486))

(assert (=> setNonEmpty!38001 d!1792994))

(assert (=> d!1792676 d!1792672))

(declare-fun d!1792998 () Bool)

(assert (=> d!1792998 (= (flatMap!1286 lt!2270155 lambda!306019) (dynLambda!24730 lambda!306019 lt!2270169))))

(assert (=> d!1792998 true))

(declare-fun _$13!2337 () Unit!156224)

(assert (=> d!1792998 (= (choose!42974 lt!2270155 lt!2270169 lambda!306019) _$13!2337)))

(declare-fun b_lambda!214797 () Bool)

(assert (=> (not b_lambda!214797) (not d!1792998)))

(declare-fun bs!1324019 () Bool)

(assert (= bs!1324019 d!1792998))

(assert (=> bs!1324019 m!6639402))

(assert (=> bs!1324019 m!6639754))

(assert (=> d!1792676 d!1792998))

(declare-fun bs!1324020 () Bool)

(declare-fun b!5681043 () Bool)

(assert (= bs!1324020 (and b!5681043 b!5679738)))

(declare-fun lambda!306118 () Int)

(assert (=> bs!1324020 (not (= lambda!306118 lambda!306018))))

(declare-fun bs!1324021 () Bool)

(assert (= bs!1324021 (and b!5681043 d!1792704)))

(assert (=> bs!1324021 (not (= lambda!306118 lambda!306075))))

(declare-fun bs!1324022 () Bool)

(assert (= bs!1324022 (and b!5681043 b!5680103)))

(assert (=> bs!1324022 (= (and (= (reg!16002 (regOne!31859 r!7292)) (reg!16002 r!7292)) (= (regOne!31859 r!7292) r!7292)) (= lambda!306118 lambda!306050))))

(declare-fun bs!1324023 () Bool)

(assert (= bs!1324023 (and b!5681043 d!1792846)))

(assert (=> bs!1324023 (not (= lambda!306118 lambda!306097))))

(declare-fun bs!1324024 () Bool)

(assert (= bs!1324024 (and b!5681043 b!5680508)))

(assert (=> bs!1324024 (not (= lambda!306118 lambda!306083))))

(declare-fun bs!1324025 () Bool)

(assert (= bs!1324025 (and b!5681043 b!5680107)))

(assert (=> bs!1324025 (not (= lambda!306118 lambda!306052))))

(assert (=> bs!1324021 (not (= lambda!306118 lambda!306074))))

(assert (=> bs!1324023 (not (= lambda!306118 lambda!306098))))

(declare-fun bs!1324026 () Bool)

(assert (= bs!1324026 (and b!5681043 d!1792912)))

(assert (=> bs!1324026 (not (= lambda!306118 lambda!306107))))

(declare-fun bs!1324027 () Bool)

(assert (= bs!1324027 (and b!5681043 b!5680504)))

(assert (=> bs!1324027 (= (and (= (reg!16002 (regOne!31859 r!7292)) (reg!16002 (regTwo!31859 r!7292))) (= (regOne!31859 r!7292) (regTwo!31859 r!7292))) (= lambda!306118 lambda!306082))))

(declare-fun bs!1324028 () Bool)

(assert (= bs!1324028 (and b!5681043 d!1792702)))

(assert (=> bs!1324028 (not (= lambda!306118 lambda!306069))))

(assert (=> bs!1324020 (not (= lambda!306118 lambda!306017))))

(assert (=> b!5681043 true))

(assert (=> b!5681043 true))

(declare-fun bs!1324029 () Bool)

(declare-fun b!5681047 () Bool)

(assert (= bs!1324029 (and b!5681047 b!5679738)))

(declare-fun lambda!306119 () Int)

(assert (=> bs!1324029 (= (and (= (regOne!31858 (regOne!31859 r!7292)) (regOne!31858 r!7292)) (= (regTwo!31858 (regOne!31859 r!7292)) (regTwo!31858 r!7292))) (= lambda!306119 lambda!306018))))

(declare-fun bs!1324030 () Bool)

(assert (= bs!1324030 (and b!5681047 d!1792704)))

(assert (=> bs!1324030 (= (and (= (regOne!31858 (regOne!31859 r!7292)) (regOne!31858 r!7292)) (= (regTwo!31858 (regOne!31859 r!7292)) (regTwo!31858 r!7292))) (= lambda!306119 lambda!306075))))

(declare-fun bs!1324031 () Bool)

(assert (= bs!1324031 (and b!5681047 b!5680103)))

(assert (=> bs!1324031 (not (= lambda!306119 lambda!306050))))

(declare-fun bs!1324032 () Bool)

(assert (= bs!1324032 (and b!5681047 d!1792846)))

(assert (=> bs!1324032 (not (= lambda!306119 lambda!306097))))

(declare-fun bs!1324033 () Bool)

(assert (= bs!1324033 (and b!5681047 b!5681043)))

(assert (=> bs!1324033 (not (= lambda!306119 lambda!306118))))

(declare-fun bs!1324034 () Bool)

(assert (= bs!1324034 (and b!5681047 b!5680508)))

(assert (=> bs!1324034 (= (and (= (regOne!31858 (regOne!31859 r!7292)) (regOne!31858 (regTwo!31859 r!7292))) (= (regTwo!31858 (regOne!31859 r!7292)) (regTwo!31858 (regTwo!31859 r!7292)))) (= lambda!306119 lambda!306083))))

(declare-fun bs!1324035 () Bool)

(assert (= bs!1324035 (and b!5681047 b!5680107)))

(assert (=> bs!1324035 (= (and (= (regOne!31858 (regOne!31859 r!7292)) (regOne!31858 r!7292)) (= (regTwo!31858 (regOne!31859 r!7292)) (regTwo!31858 r!7292))) (= lambda!306119 lambda!306052))))

(assert (=> bs!1324030 (not (= lambda!306119 lambda!306074))))

(assert (=> bs!1324032 (= (and (= (regOne!31858 (regOne!31859 r!7292)) (regOne!31858 r!7292)) (= (regTwo!31858 (regOne!31859 r!7292)) (regTwo!31858 r!7292))) (= lambda!306119 lambda!306098))))

(declare-fun bs!1324036 () Bool)

(assert (= bs!1324036 (and b!5681047 d!1792912)))

(assert (=> bs!1324036 (not (= lambda!306119 lambda!306107))))

(declare-fun bs!1324037 () Bool)

(assert (= bs!1324037 (and b!5681047 b!5680504)))

(assert (=> bs!1324037 (not (= lambda!306119 lambda!306082))))

(declare-fun bs!1324038 () Bool)

(assert (= bs!1324038 (and b!5681047 d!1792702)))

(assert (=> bs!1324038 (not (= lambda!306119 lambda!306069))))

(assert (=> bs!1324029 (not (= lambda!306119 lambda!306017))))

(assert (=> b!5681047 true))

(assert (=> b!5681047 true))

(declare-fun call!431394 () Bool)

(declare-fun bm!431388 () Bool)

(declare-fun c!999737 () Bool)

(assert (=> bm!431388 (= call!431394 (Exists!2773 (ite c!999737 lambda!306118 lambda!306119)))))

(declare-fun b!5681038 () Bool)

(declare-fun res!2400526 () Bool)

(declare-fun e!3496486 () Bool)

(assert (=> b!5681038 (=> res!2400526 e!3496486)))

(declare-fun call!431393 () Bool)

(assert (=> b!5681038 (= res!2400526 call!431393)))

(declare-fun e!3496487 () Bool)

(assert (=> b!5681038 (= e!3496487 e!3496486)))

(declare-fun b!5681039 () Bool)

(declare-fun e!3496491 () Bool)

(assert (=> b!5681039 (= e!3496491 e!3496487)))

(assert (=> b!5681039 (= c!999737 ((_ is Star!15673) (regOne!31859 r!7292)))))

(declare-fun b!5681040 () Bool)

(declare-fun e!3496488 () Bool)

(assert (=> b!5681040 (= e!3496488 (matchRSpec!2776 (regTwo!31859 (regOne!31859 r!7292)) s!2326))))

(declare-fun b!5681041 () Bool)

(assert (=> b!5681041 (= e!3496491 e!3496488)))

(declare-fun res!2400525 () Bool)

(assert (=> b!5681041 (= res!2400525 (matchRSpec!2776 (regOne!31859 (regOne!31859 r!7292)) s!2326))))

(assert (=> b!5681041 (=> res!2400525 e!3496488)))

(declare-fun b!5681042 () Bool)

(declare-fun e!3496489 () Bool)

(declare-fun e!3496490 () Bool)

(assert (=> b!5681042 (= e!3496489 e!3496490)))

(declare-fun res!2400524 () Bool)

(assert (=> b!5681042 (= res!2400524 (not ((_ is EmptyLang!15673) (regOne!31859 r!7292))))))

(assert (=> b!5681042 (=> (not res!2400524) (not e!3496490))))

(declare-fun b!5681044 () Bool)

(declare-fun c!999738 () Bool)

(assert (=> b!5681044 (= c!999738 ((_ is ElementMatch!15673) (regOne!31859 r!7292)))))

(declare-fun e!3496492 () Bool)

(assert (=> b!5681044 (= e!3496490 e!3496492)))

(declare-fun b!5681045 () Bool)

(assert (=> b!5681045 (= e!3496489 call!431393)))

(declare-fun bm!431389 () Bool)

(assert (=> bm!431389 (= call!431393 (isEmpty!35048 s!2326))))

(declare-fun b!5681046 () Bool)

(assert (=> b!5681046 (= e!3496492 (= s!2326 (Cons!63195 (c!999361 (regOne!31859 r!7292)) Nil!63195)))))

(assert (=> b!5681047 (= e!3496487 call!431394)))

(declare-fun b!5681048 () Bool)

(declare-fun c!999736 () Bool)

(assert (=> b!5681048 (= c!999736 ((_ is Union!15673) (regOne!31859 r!7292)))))

(assert (=> b!5681048 (= e!3496492 e!3496491)))

(declare-fun d!1793000 () Bool)

(declare-fun c!999735 () Bool)

(assert (=> d!1793000 (= c!999735 ((_ is EmptyExpr!15673) (regOne!31859 r!7292)))))

(assert (=> d!1793000 (= (matchRSpec!2776 (regOne!31859 r!7292) s!2326) e!3496489)))

(assert (=> b!5681043 (= e!3496486 call!431394)))

(assert (= (and d!1793000 c!999735) b!5681045))

(assert (= (and d!1793000 (not c!999735)) b!5681042))

(assert (= (and b!5681042 res!2400524) b!5681044))

(assert (= (and b!5681044 c!999738) b!5681046))

(assert (= (and b!5681044 (not c!999738)) b!5681048))

(assert (= (and b!5681048 c!999736) b!5681041))

(assert (= (and b!5681048 (not c!999736)) b!5681039))

(assert (= (and b!5681041 (not res!2400525)) b!5681040))

(assert (= (and b!5681039 c!999737) b!5681038))

(assert (= (and b!5681039 (not c!999737)) b!5681047))

(assert (= (and b!5681038 (not res!2400526)) b!5681043))

(assert (= (or b!5681043 b!5681047) bm!431388))

(assert (= (or b!5681045 b!5681038) bm!431389))

(declare-fun m!6640488 () Bool)

(assert (=> bm!431388 m!6640488))

(declare-fun m!6640490 () Bool)

(assert (=> b!5681040 m!6640490))

(declare-fun m!6640492 () Bool)

(assert (=> b!5681041 m!6640492))

(assert (=> bm!431389 m!6639710))

(assert (=> b!5680101 d!1793000))

(declare-fun d!1793006 () Bool)

(declare-fun res!2400532 () Bool)

(declare-fun e!3496506 () Bool)

(assert (=> d!1793006 (=> res!2400532 e!3496506)))

(assert (=> d!1793006 (= res!2400532 ((_ is EmptyExpr!15673) (regOne!31858 (regOne!31858 r!7292))))))

(assert (=> d!1793006 (= (nullableFct!1783 (regOne!31858 (regOne!31858 r!7292))) e!3496506)))

(declare-fun bm!431396 () Bool)

(declare-fun call!431401 () Bool)

(declare-fun c!999744 () Bool)

(assert (=> bm!431396 (= call!431401 (nullable!5705 (ite c!999744 (regTwo!31859 (regOne!31858 (regOne!31858 r!7292))) (regTwo!31858 (regOne!31858 (regOne!31858 r!7292))))))))

(declare-fun bm!431397 () Bool)

(declare-fun call!431402 () Bool)

(assert (=> bm!431397 (= call!431402 (nullable!5705 (ite c!999744 (regOne!31859 (regOne!31858 (regOne!31858 r!7292))) (regOne!31858 (regOne!31858 (regOne!31858 r!7292))))))))

(declare-fun b!5681063 () Bool)

(declare-fun e!3496503 () Bool)

(declare-fun e!3496504 () Bool)

(assert (=> b!5681063 (= e!3496503 e!3496504)))

(declare-fun res!2400534 () Bool)

(assert (=> b!5681063 (=> res!2400534 e!3496504)))

(assert (=> b!5681063 (= res!2400534 ((_ is Star!15673) (regOne!31858 (regOne!31858 r!7292))))))

(declare-fun b!5681064 () Bool)

(declare-fun e!3496502 () Bool)

(assert (=> b!5681064 (= e!3496504 e!3496502)))

(assert (=> b!5681064 (= c!999744 ((_ is Union!15673) (regOne!31858 (regOne!31858 r!7292))))))

(declare-fun b!5681065 () Bool)

(declare-fun e!3496507 () Bool)

(assert (=> b!5681065 (= e!3496502 e!3496507)))

(declare-fun res!2400533 () Bool)

(assert (=> b!5681065 (= res!2400533 call!431402)))

(assert (=> b!5681065 (=> res!2400533 e!3496507)))

(declare-fun b!5681066 () Bool)

(assert (=> b!5681066 (= e!3496506 e!3496503)))

(declare-fun res!2400535 () Bool)

(assert (=> b!5681066 (=> (not res!2400535) (not e!3496503))))

(assert (=> b!5681066 (= res!2400535 (and (not ((_ is EmptyLang!15673) (regOne!31858 (regOne!31858 r!7292)))) (not ((_ is ElementMatch!15673) (regOne!31858 (regOne!31858 r!7292))))))))

(declare-fun b!5681067 () Bool)

(declare-fun e!3496505 () Bool)

(assert (=> b!5681067 (= e!3496505 call!431401)))

(declare-fun b!5681068 () Bool)

(assert (=> b!5681068 (= e!3496507 call!431401)))

(declare-fun b!5681069 () Bool)

(assert (=> b!5681069 (= e!3496502 e!3496505)))

(declare-fun res!2400531 () Bool)

(assert (=> b!5681069 (= res!2400531 call!431402)))

(assert (=> b!5681069 (=> (not res!2400531) (not e!3496505))))

(assert (= (and d!1793006 (not res!2400532)) b!5681066))

(assert (= (and b!5681066 res!2400535) b!5681063))

(assert (= (and b!5681063 (not res!2400534)) b!5681064))

(assert (= (and b!5681064 c!999744) b!5681065))

(assert (= (and b!5681064 (not c!999744)) b!5681069))

(assert (= (and b!5681065 (not res!2400533)) b!5681068))

(assert (= (and b!5681069 res!2400531) b!5681067))

(assert (= (or b!5681068 b!5681067) bm!431396))

(assert (= (or b!5681065 b!5681069) bm!431397))

(declare-fun m!6640494 () Bool)

(assert (=> bm!431396 m!6640494))

(declare-fun m!6640496 () Bool)

(assert (=> bm!431397 m!6640496))

(assert (=> d!1792626 d!1793006))

(assert (=> b!5680195 d!1792770))

(declare-fun d!1793008 () Bool)

(assert (=> d!1793008 (= (head!12054 (exprs!5557 (h!69644 zl!343))) (h!69642 (exprs!5557 (h!69644 zl!343))))))

(assert (=> b!5679966 d!1793008))

(assert (=> d!1792658 d!1792834))

(assert (=> d!1792658 d!1792708))

(declare-fun d!1793010 () Bool)

(assert (=> d!1793010 (= (Exists!2773 (ite c!999479 lambda!306050 lambda!306052)) (choose!42978 (ite c!999479 lambda!306050 lambda!306052)))))

(declare-fun bs!1324040 () Bool)

(assert (= bs!1324040 d!1793010))

(declare-fun m!6640500 () Bool)

(assert (=> bs!1324040 m!6640500))

(assert (=> bm!431215 d!1793010))

(declare-fun c!999745 () Bool)

(declare-fun call!431405 () Bool)

(declare-fun bm!431398 () Bool)

(declare-fun c!999746 () Bool)

(assert (=> bm!431398 (= call!431405 (validRegex!7409 (ite c!999746 (reg!16002 lt!2270195) (ite c!999745 (regTwo!31859 lt!2270195) (regTwo!31858 lt!2270195)))))))

(declare-fun b!5681071 () Bool)

(declare-fun e!3496511 () Bool)

(declare-fun e!3496513 () Bool)

(assert (=> b!5681071 (= e!3496511 e!3496513)))

(declare-fun res!2400540 () Bool)

(assert (=> b!5681071 (=> (not res!2400540) (not e!3496513))))

(declare-fun call!431403 () Bool)

(assert (=> b!5681071 (= res!2400540 call!431403)))

(declare-fun b!5681072 () Bool)

(declare-fun call!431404 () Bool)

(assert (=> b!5681072 (= e!3496513 call!431404)))

(declare-fun b!5681073 () Bool)

(declare-fun e!3496509 () Bool)

(declare-fun e!3496510 () Bool)

(assert (=> b!5681073 (= e!3496509 e!3496510)))

(assert (=> b!5681073 (= c!999745 ((_ is Union!15673) lt!2270195))))

(declare-fun b!5681074 () Bool)

(declare-fun res!2400536 () Bool)

(assert (=> b!5681074 (=> res!2400536 e!3496511)))

(assert (=> b!5681074 (= res!2400536 (not ((_ is Concat!24518) lt!2270195)))))

(assert (=> b!5681074 (= e!3496510 e!3496511)))

(declare-fun b!5681075 () Bool)

(declare-fun e!3496508 () Bool)

(assert (=> b!5681075 (= e!3496508 call!431405)))

(declare-fun b!5681076 () Bool)

(declare-fun e!3496514 () Bool)

(assert (=> b!5681076 (= e!3496514 e!3496509)))

(assert (=> b!5681076 (= c!999746 ((_ is Star!15673) lt!2270195))))

(declare-fun b!5681077 () Bool)

(declare-fun res!2400538 () Bool)

(declare-fun e!3496512 () Bool)

(assert (=> b!5681077 (=> (not res!2400538) (not e!3496512))))

(assert (=> b!5681077 (= res!2400538 call!431403)))

(assert (=> b!5681077 (= e!3496510 e!3496512)))

(declare-fun bm!431399 () Bool)

(assert (=> bm!431399 (= call!431403 (validRegex!7409 (ite c!999745 (regOne!31859 lt!2270195) (regOne!31858 lt!2270195))))))

(declare-fun bm!431400 () Bool)

(assert (=> bm!431400 (= call!431404 call!431405)))

(declare-fun b!5681078 () Bool)

(assert (=> b!5681078 (= e!3496509 e!3496508)))

(declare-fun res!2400539 () Bool)

(assert (=> b!5681078 (= res!2400539 (not (nullable!5705 (reg!16002 lt!2270195))))))

(assert (=> b!5681078 (=> (not res!2400539) (not e!3496508))))

(declare-fun b!5681070 () Bool)

(assert (=> b!5681070 (= e!3496512 call!431404)))

(declare-fun d!1793012 () Bool)

(declare-fun res!2400537 () Bool)

(assert (=> d!1793012 (=> res!2400537 e!3496514)))

(assert (=> d!1793012 (= res!2400537 ((_ is ElementMatch!15673) lt!2270195))))

(assert (=> d!1793012 (= (validRegex!7409 lt!2270195) e!3496514)))

(assert (= (and d!1793012 (not res!2400537)) b!5681076))

(assert (= (and b!5681076 c!999746) b!5681078))

(assert (= (and b!5681076 (not c!999746)) b!5681073))

(assert (= (and b!5681078 res!2400539) b!5681075))

(assert (= (and b!5681073 c!999745) b!5681077))

(assert (= (and b!5681073 (not c!999745)) b!5681074))

(assert (= (and b!5681077 res!2400538) b!5681070))

(assert (= (and b!5681074 (not res!2400536)) b!5681071))

(assert (= (and b!5681071 res!2400540) b!5681072))

(assert (= (or b!5681070 b!5681072) bm!431400))

(assert (= (or b!5681077 b!5681071) bm!431399))

(assert (= (or b!5681075 bm!431400) bm!431398))

(declare-fun m!6640512 () Bool)

(assert (=> bm!431398 m!6640512))

(declare-fun m!6640514 () Bool)

(assert (=> bm!431399 m!6640514))

(declare-fun m!6640516 () Bool)

(assert (=> b!5681078 m!6640516))

(assert (=> d!1792602 d!1793012))

(declare-fun d!1793018 () Bool)

(declare-fun res!2400541 () Bool)

(declare-fun e!3496515 () Bool)

(assert (=> d!1793018 (=> res!2400541 e!3496515)))

(assert (=> d!1793018 (= res!2400541 ((_ is Nil!63194) (exprs!5557 (h!69644 zl!343))))))

(assert (=> d!1793018 (= (forall!14820 (exprs!5557 (h!69644 zl!343)) lambda!306034) e!3496515)))

(declare-fun b!5681079 () Bool)

(declare-fun e!3496516 () Bool)

(assert (=> b!5681079 (= e!3496515 e!3496516)))

(declare-fun res!2400542 () Bool)

(assert (=> b!5681079 (=> (not res!2400542) (not e!3496516))))

(assert (=> b!5681079 (= res!2400542 (dynLambda!24731 lambda!306034 (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun b!5681080 () Bool)

(assert (=> b!5681080 (= e!3496516 (forall!14820 (t!376630 (exprs!5557 (h!69644 zl!343))) lambda!306034))))

(assert (= (and d!1793018 (not res!2400541)) b!5681079))

(assert (= (and b!5681079 res!2400542) b!5681080))

(declare-fun b_lambda!214799 () Bool)

(assert (=> (not b_lambda!214799) (not b!5681079)))

(declare-fun m!6640518 () Bool)

(assert (=> b!5681079 m!6640518))

(declare-fun m!6640520 () Bool)

(assert (=> b!5681080 m!6640520))

(assert (=> d!1792602 d!1793018))

(assert (=> bm!431228 d!1792834))

(declare-fun d!1793024 () Bool)

(assert (=> d!1793024 (= (nullable!5705 (reg!16002 r!7292)) (nullableFct!1783 (reg!16002 r!7292)))))

(declare-fun bs!1324044 () Bool)

(assert (= bs!1324044 d!1793024))

(declare-fun m!6640522 () Bool)

(assert (=> bs!1324044 m!6640522))

(assert (=> b!5680342 d!1793024))

(declare-fun d!1793026 () Bool)

(assert (=> d!1793026 (= (isEmpty!35045 (tail!11149 (exprs!5557 (h!69644 zl!343)))) ((_ is Nil!63194) (tail!11149 (exprs!5557 (h!69644 zl!343)))))))

(assert (=> b!5679962 d!1793026))

(declare-fun d!1793028 () Bool)

(assert (=> d!1793028 (= (tail!11149 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343))))))

(assert (=> b!5679962 d!1793028))

(assert (=> d!1792666 d!1792658))

(assert (=> d!1792666 d!1792632))

(declare-fun d!1793032 () Bool)

(assert (=> d!1793032 (= (matchR!7858 r!7292 s!2326) (matchRSpec!2776 r!7292 s!2326))))

(assert (=> d!1793032 true))

(declare-fun _$88!3981 () Unit!156224)

(assert (=> d!1793032 (= (choose!42970 r!7292 s!2326) _$88!3981)))

(declare-fun bs!1324047 () Bool)

(assert (= bs!1324047 d!1793032))

(assert (=> bs!1324047 m!6639426))

(assert (=> bs!1324047 m!6639424))

(assert (=> d!1792666 d!1793032))

(assert (=> d!1792666 d!1792708))

(declare-fun d!1793040 () Bool)

(assert (=> d!1793040 (= (nullable!5705 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))) (nullableFct!1783 (h!69642 (exprs!5557 (Context!10115 (Cons!63194 (h!69642 (exprs!5557 (h!69644 zl!343))) (t!376630 (exprs!5557 (h!69644 zl!343)))))))))))

(declare-fun bs!1324048 () Bool)

(assert (= bs!1324048 d!1793040))

(declare-fun m!6640542 () Bool)

(assert (=> bs!1324048 m!6640542))

(assert (=> b!5680385 d!1793040))

(assert (=> b!5680188 d!1792770))

(declare-fun b!5681112 () Bool)

(declare-fun e!3496537 () (InoxSet Context!10114))

(declare-fun e!3496538 () (InoxSet Context!10114))

(assert (=> b!5681112 (= e!3496537 e!3496538)))

(declare-fun c!999759 () Bool)

(assert (=> b!5681112 (= c!999759 ((_ is Cons!63194) (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343)))))))))

(declare-fun call!431421 () (InoxSet Context!10114))

(declare-fun b!5681113 () Bool)

(assert (=> b!5681113 (= e!3496537 ((_ map or) call!431421 (derivationStepZipperUp!941 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343))))))) (h!69643 s!2326))))))

(declare-fun b!5681114 () Bool)

(declare-fun e!3496536 () Bool)

(assert (=> b!5681114 (= e!3496536 (nullable!5705 (h!69642 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343))))))))))

(declare-fun bm!431416 () Bool)

(assert (=> bm!431416 (= call!431421 (derivationStepZipperDown!1015 (h!69642 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343)))))) (Context!10115 (t!376630 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343))))))) (h!69643 s!2326)))))

(declare-fun d!1793042 () Bool)

(declare-fun c!999760 () Bool)

(assert (=> d!1793042 (= c!999760 e!3496536)))

(declare-fun res!2400550 () Bool)

(assert (=> d!1793042 (=> (not res!2400550) (not e!3496536))))

(assert (=> d!1793042 (= res!2400550 ((_ is Cons!63194) (exprs!5557 (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343)))))))))

(assert (=> d!1793042 (= (derivationStepZipperUp!941 (Context!10115 (t!376630 (exprs!5557 (h!69644 zl!343)))) (h!69643 s!2326)) e!3496537)))

(declare-fun b!5681115 () Bool)

(assert (=> b!5681115 (= e!3496538 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5681116 () Bool)

(assert (=> b!5681116 (= e!3496538 call!431421)))

(assert (= (and d!1793042 res!2400550) b!5681114))

(assert (= (and d!1793042 c!999760) b!5681113))

(assert (= (and d!1793042 (not c!999760)) b!5681112))

(assert (= (and b!5681112 c!999759) b!5681116))

(assert (= (and b!5681112 (not c!999759)) b!5681115))

(assert (= (or b!5681113 b!5681116) bm!431416))

(declare-fun m!6640546 () Bool)

(assert (=> b!5681113 m!6640546))

(declare-fun m!6640550 () Bool)

(assert (=> b!5681114 m!6640550))

(declare-fun m!6640554 () Bool)

(assert (=> bm!431416 m!6640554))

(assert (=> b!5680422 d!1793042))

(assert (=> bs!1323863 d!1792674))

(declare-fun b!5681117 () Bool)

(declare-fun e!3496539 () (InoxSet Context!10114))

(declare-fun call!431424 () (InoxSet Context!10114))

(assert (=> b!5681117 (= e!3496539 call!431424)))

(declare-fun b!5681118 () Bool)

(assert (=> b!5681118 (= e!3496539 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5681119 () Bool)

(declare-fun e!3496540 () (InoxSet Context!10114))

(declare-fun call!431422 () (InoxSet Context!10114))

(declare-fun call!431425 () (InoxSet Context!10114))

(assert (=> b!5681119 (= e!3496540 ((_ map or) call!431422 call!431425))))

(declare-fun b!5681120 () Bool)

(declare-fun e!3496543 () (InoxSet Context!10114))

(assert (=> b!5681120 (= e!3496543 e!3496540)))

(declare-fun c!999761 () Bool)

(assert (=> b!5681120 (= c!999761 ((_ is Union!15673) (h!69642 (exprs!5557 lt!2270159))))))

(declare-fun bm!431417 () Bool)

(declare-fun call!431423 () (InoxSet Context!10114))

(assert (=> bm!431417 (= call!431424 call!431423)))

(declare-fun d!1793044 () Bool)

(declare-fun c!999765 () Bool)

(assert (=> d!1793044 (= c!999765 (and ((_ is ElementMatch!15673) (h!69642 (exprs!5557 lt!2270159))) (= (c!999361 (h!69642 (exprs!5557 lt!2270159))) (h!69643 s!2326))))))

(assert (=> d!1793044 (= (derivationStepZipperDown!1015 (h!69642 (exprs!5557 lt!2270159)) (Context!10115 (t!376630 (exprs!5557 lt!2270159))) (h!69643 s!2326)) e!3496543)))

(declare-fun b!5681121 () Bool)

(declare-fun e!3496542 () (InoxSet Context!10114))

(assert (=> b!5681121 (= e!3496542 call!431424)))

(declare-fun b!5681122 () Bool)

(declare-fun e!3496544 () (InoxSet Context!10114))

(assert (=> b!5681122 (= e!3496544 e!3496542)))

(declare-fun c!999764 () Bool)

(assert (=> b!5681122 (= c!999764 ((_ is Concat!24518) (h!69642 (exprs!5557 lt!2270159))))))

(declare-fun b!5681123 () Bool)

(declare-fun c!999762 () Bool)

(assert (=> b!5681123 (= c!999762 ((_ is Star!15673) (h!69642 (exprs!5557 lt!2270159))))))

(assert (=> b!5681123 (= e!3496542 e!3496539)))

(declare-fun c!999763 () Bool)

(declare-fun bm!431418 () Bool)

(declare-fun call!431427 () List!63318)

(assert (=> bm!431418 (= call!431427 ($colon$colon!1704 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270159)))) (ite (or c!999763 c!999764) (regTwo!31858 (h!69642 (exprs!5557 lt!2270159))) (h!69642 (exprs!5557 lt!2270159)))))))

(declare-fun b!5681124 () Bool)

(declare-fun e!3496541 () Bool)

(assert (=> b!5681124 (= c!999763 e!3496541)))

(declare-fun res!2400551 () Bool)

(assert (=> b!5681124 (=> (not res!2400551) (not e!3496541))))

(assert (=> b!5681124 (= res!2400551 ((_ is Concat!24518) (h!69642 (exprs!5557 lt!2270159))))))

(assert (=> b!5681124 (= e!3496540 e!3496544)))

(declare-fun bm!431419 () Bool)

(declare-fun call!431426 () List!63318)

(assert (=> bm!431419 (= call!431426 call!431427)))

(declare-fun bm!431420 () Bool)

(assert (=> bm!431420 (= call!431425 (derivationStepZipperDown!1015 (ite c!999761 (regTwo!31859 (h!69642 (exprs!5557 lt!2270159))) (regOne!31858 (h!69642 (exprs!5557 lt!2270159)))) (ite c!999761 (Context!10115 (t!376630 (exprs!5557 lt!2270159))) (Context!10115 call!431427)) (h!69643 s!2326)))))

(declare-fun b!5681125 () Bool)

(assert (=> b!5681125 (= e!3496544 ((_ map or) call!431425 call!431423))))

(declare-fun bm!431421 () Bool)

(assert (=> bm!431421 (= call!431422 (derivationStepZipperDown!1015 (ite c!999761 (regOne!31859 (h!69642 (exprs!5557 lt!2270159))) (ite c!999763 (regTwo!31858 (h!69642 (exprs!5557 lt!2270159))) (ite c!999764 (regOne!31858 (h!69642 (exprs!5557 lt!2270159))) (reg!16002 (h!69642 (exprs!5557 lt!2270159)))))) (ite (or c!999761 c!999763) (Context!10115 (t!376630 (exprs!5557 lt!2270159))) (Context!10115 call!431426)) (h!69643 s!2326)))))

(declare-fun b!5681126 () Bool)

(assert (=> b!5681126 (= e!3496543 (store ((as const (Array Context!10114 Bool)) false) (Context!10115 (t!376630 (exprs!5557 lt!2270159))) true))))

(declare-fun b!5681127 () Bool)

(assert (=> b!5681127 (= e!3496541 (nullable!5705 (regOne!31858 (h!69642 (exprs!5557 lt!2270159)))))))

(declare-fun bm!431422 () Bool)

(assert (=> bm!431422 (= call!431423 call!431422)))

(assert (= (and d!1793044 c!999765) b!5681126))

(assert (= (and d!1793044 (not c!999765)) b!5681120))

(assert (= (and b!5681120 c!999761) b!5681119))

(assert (= (and b!5681120 (not c!999761)) b!5681124))

(assert (= (and b!5681124 res!2400551) b!5681127))

(assert (= (and b!5681124 c!999763) b!5681125))

(assert (= (and b!5681124 (not c!999763)) b!5681122))

(assert (= (and b!5681122 c!999764) b!5681121))

(assert (= (and b!5681122 (not c!999764)) b!5681123))

(assert (= (and b!5681123 c!999762) b!5681117))

(assert (= (and b!5681123 (not c!999762)) b!5681118))

(assert (= (or b!5681121 b!5681117) bm!431419))

(assert (= (or b!5681121 b!5681117) bm!431417))

(assert (= (or b!5681125 bm!431419) bm!431418))

(assert (= (or b!5681125 bm!431417) bm!431422))

(assert (= (or b!5681119 b!5681125) bm!431420))

(assert (= (or b!5681119 bm!431422) bm!431421))

(declare-fun m!6640560 () Bool)

(assert (=> bm!431420 m!6640560))

(declare-fun m!6640562 () Bool)

(assert (=> bm!431418 m!6640562))

(declare-fun m!6640564 () Bool)

(assert (=> b!5681127 m!6640564))

(declare-fun m!6640566 () Bool)

(assert (=> bm!431421 m!6640566))

(declare-fun m!6640570 () Bool)

(assert (=> b!5681126 m!6640570))

(assert (=> bm!431261 d!1793044))

(declare-fun d!1793048 () Bool)

(declare-fun c!999771 () Bool)

(assert (=> d!1793048 (= c!999771 (isEmpty!35048 (tail!11150 (t!376631 s!2326))))))

(declare-fun e!3496551 () Bool)

(assert (=> d!1793048 (= (matchZipper!1811 (derivationStepZipper!1756 lt!2270160 (head!12055 (t!376631 s!2326))) (tail!11150 (t!376631 s!2326))) e!3496551)))

(declare-fun b!5681139 () Bool)

(assert (=> b!5681139 (= e!3496551 (nullableZipper!1637 (derivationStepZipper!1756 lt!2270160 (head!12055 (t!376631 s!2326)))))))

(declare-fun b!5681140 () Bool)

(assert (=> b!5681140 (= e!3496551 (matchZipper!1811 (derivationStepZipper!1756 (derivationStepZipper!1756 lt!2270160 (head!12055 (t!376631 s!2326))) (head!12055 (tail!11150 (t!376631 s!2326)))) (tail!11150 (tail!11150 (t!376631 s!2326)))))))

(assert (= (and d!1793048 c!999771) b!5681139))

(assert (= (and d!1793048 (not c!999771)) b!5681140))

(assert (=> d!1793048 m!6639772))

(assert (=> d!1793048 m!6640206))

(assert (=> b!5681139 m!6639770))

(declare-fun m!6640580 () Bool)

(assert (=> b!5681139 m!6640580))

(assert (=> b!5681140 m!6639772))

(assert (=> b!5681140 m!6640210))

(assert (=> b!5681140 m!6639770))

(assert (=> b!5681140 m!6640210))

(declare-fun m!6640582 () Bool)

(assert (=> b!5681140 m!6640582))

(assert (=> b!5681140 m!6639772))

(assert (=> b!5681140 m!6640214))

(assert (=> b!5681140 m!6640582))

(assert (=> b!5681140 m!6640214))

(declare-fun m!6640584 () Bool)

(assert (=> b!5681140 m!6640584))

(assert (=> b!5680269 d!1793048))

(declare-fun bs!1324049 () Bool)

(declare-fun d!1793052 () Bool)

(assert (= bs!1324049 (and d!1793052 d!1792678)))

(declare-fun lambda!306121 () Int)

(assert (=> bs!1324049 (= (= (head!12055 (t!376631 s!2326)) (h!69643 s!2326)) (= lambda!306121 lambda!306062))))

(declare-fun bs!1324050 () Bool)

(assert (= bs!1324050 (and d!1793052 b!5679736)))

(assert (=> bs!1324050 (= (= (head!12055 (t!376631 s!2326)) (h!69643 s!2326)) (= lambda!306121 lambda!306019))))

(declare-fun bs!1324051 () Bool)

(assert (= bs!1324051 (and d!1793052 d!1792970)))

(assert (=> bs!1324051 (= lambda!306121 lambda!306111)))

(declare-fun bs!1324052 () Bool)

(assert (= bs!1324052 (and d!1793052 d!1792868)))

(assert (=> bs!1324052 (= lambda!306121 lambda!306099)))

(declare-fun bs!1324053 () Bool)

(assert (= bs!1324053 (and d!1793052 d!1792826)))

(assert (=> bs!1324053 (= (= (head!12055 (t!376631 s!2326)) (head!12055 s!2326)) (= lambda!306121 lambda!306092))))

(declare-fun bs!1324054 () Bool)

(assert (= bs!1324054 (and d!1793052 d!1792958)))

(assert (=> bs!1324054 (= lambda!306121 lambda!306108)))

(assert (=> d!1793052 true))

(assert (=> d!1793052 (= (derivationStepZipper!1756 lt!2270160 (head!12055 (t!376631 s!2326))) (flatMap!1286 lt!2270160 lambda!306121))))

(declare-fun bs!1324055 () Bool)

(assert (= bs!1324055 d!1793052))

(declare-fun m!6640592 () Bool)

(assert (=> bs!1324055 m!6640592))

(assert (=> b!5680269 d!1793052))

(assert (=> b!5680269 d!1792870))

(assert (=> b!5680269 d!1792872))

(declare-fun d!1793054 () Bool)

(assert (=> d!1793054 (= (isEmptyLang!1206 lt!2270254) ((_ is EmptyLang!15673) lt!2270254))))

(assert (=> b!5680374 d!1793054))

(declare-fun b!5681165 () Bool)

(declare-fun res!2400563 () Bool)

(declare-fun e!3496568 () Bool)

(assert (=> b!5681165 (=> res!2400563 e!3496568)))

(assert (=> b!5681165 (= res!2400563 (not ((_ is ElementMatch!15673) (regOne!31858 r!7292))))))

(declare-fun e!3496571 () Bool)

(assert (=> b!5681165 (= e!3496571 e!3496568)))

(declare-fun b!5681166 () Bool)

(declare-fun lt!2270293 () Bool)

(assert (=> b!5681166 (= e!3496571 (not lt!2270293))))

(declare-fun b!5681167 () Bool)

(declare-fun e!3496565 () Bool)

(assert (=> b!5681167 (= e!3496565 (not (= (head!12055 (_1!36073 (get!21775 lt!2270240))) (c!999361 (regOne!31858 r!7292)))))))

(declare-fun b!5681168 () Bool)

(declare-fun e!3496566 () Bool)

(assert (=> b!5681168 (= e!3496566 e!3496571)))

(declare-fun c!999780 () Bool)

(assert (=> b!5681168 (= c!999780 ((_ is EmptyLang!15673) (regOne!31858 r!7292)))))

(declare-fun d!1793058 () Bool)

(assert (=> d!1793058 e!3496566))

(declare-fun c!999781 () Bool)

(assert (=> d!1793058 (= c!999781 ((_ is EmptyExpr!15673) (regOne!31858 r!7292)))))

(declare-fun e!3496570 () Bool)

(assert (=> d!1793058 (= lt!2270293 e!3496570)))

(declare-fun c!999779 () Bool)

(assert (=> d!1793058 (= c!999779 (isEmpty!35048 (_1!36073 (get!21775 lt!2270240))))))

(assert (=> d!1793058 (validRegex!7409 (regOne!31858 r!7292))))

(assert (=> d!1793058 (= (matchR!7858 (regOne!31858 r!7292) (_1!36073 (get!21775 lt!2270240))) lt!2270293)))

(declare-fun b!5681169 () Bool)

(declare-fun res!2400564 () Bool)

(assert (=> b!5681169 (=> res!2400564 e!3496565)))

(assert (=> b!5681169 (= res!2400564 (not (isEmpty!35048 (tail!11150 (_1!36073 (get!21775 lt!2270240))))))))

(declare-fun b!5681170 () Bool)

(assert (=> b!5681170 (= e!3496570 (matchR!7858 (derivativeStep!4490 (regOne!31858 r!7292) (head!12055 (_1!36073 (get!21775 lt!2270240)))) (tail!11150 (_1!36073 (get!21775 lt!2270240)))))))

(declare-fun bm!431430 () Bool)

(declare-fun call!431435 () Bool)

(assert (=> bm!431430 (= call!431435 (isEmpty!35048 (_1!36073 (get!21775 lt!2270240))))))

(declare-fun b!5681171 () Bool)

(declare-fun res!2400567 () Bool)

(assert (=> b!5681171 (=> res!2400567 e!3496568)))

(declare-fun e!3496567 () Bool)

(assert (=> b!5681171 (= res!2400567 e!3496567)))

(declare-fun res!2400569 () Bool)

(assert (=> b!5681171 (=> (not res!2400569) (not e!3496567))))

(assert (=> b!5681171 (= res!2400569 lt!2270293)))

(declare-fun b!5681172 () Bool)

(declare-fun e!3496569 () Bool)

(assert (=> b!5681172 (= e!3496569 e!3496565)))

(declare-fun res!2400565 () Bool)

(assert (=> b!5681172 (=> res!2400565 e!3496565)))

(assert (=> b!5681172 (= res!2400565 call!431435)))

(declare-fun b!5681173 () Bool)

(assert (=> b!5681173 (= e!3496568 e!3496569)))

(declare-fun res!2400566 () Bool)

(assert (=> b!5681173 (=> (not res!2400566) (not e!3496569))))

(assert (=> b!5681173 (= res!2400566 (not lt!2270293))))

(declare-fun b!5681174 () Bool)

(assert (=> b!5681174 (= e!3496567 (= (head!12055 (_1!36073 (get!21775 lt!2270240))) (c!999361 (regOne!31858 r!7292))))))

(declare-fun b!5681175 () Bool)

(declare-fun res!2400570 () Bool)

(assert (=> b!5681175 (=> (not res!2400570) (not e!3496567))))

(assert (=> b!5681175 (= res!2400570 (not call!431435))))

(declare-fun b!5681176 () Bool)

(declare-fun res!2400568 () Bool)

(assert (=> b!5681176 (=> (not res!2400568) (not e!3496567))))

(assert (=> b!5681176 (= res!2400568 (isEmpty!35048 (tail!11150 (_1!36073 (get!21775 lt!2270240)))))))

(declare-fun b!5681177 () Bool)

(assert (=> b!5681177 (= e!3496570 (nullable!5705 (regOne!31858 r!7292)))))

(declare-fun b!5681178 () Bool)

(assert (=> b!5681178 (= e!3496566 (= lt!2270293 call!431435))))

(assert (= (and d!1793058 c!999779) b!5681177))

(assert (= (and d!1793058 (not c!999779)) b!5681170))

(assert (= (and d!1793058 c!999781) b!5681178))

(assert (= (and d!1793058 (not c!999781)) b!5681168))

(assert (= (and b!5681168 c!999780) b!5681166))

(assert (= (and b!5681168 (not c!999780)) b!5681165))

(assert (= (and b!5681165 (not res!2400563)) b!5681171))

(assert (= (and b!5681171 res!2400569) b!5681175))

(assert (= (and b!5681175 res!2400570) b!5681176))

(assert (= (and b!5681176 res!2400568) b!5681174))

(assert (= (and b!5681171 (not res!2400567)) b!5681173))

(assert (= (and b!5681173 res!2400566) b!5681172))

(assert (= (and b!5681172 (not res!2400565)) b!5681169))

(assert (= (and b!5681169 (not res!2400564)) b!5681167))

(assert (= (or b!5681178 b!5681172 b!5681175) bm!431430))

(assert (=> b!5681177 m!6639964))

(declare-fun m!6640600 () Bool)

(assert (=> b!5681176 m!6640600))

(assert (=> b!5681176 m!6640600))

(declare-fun m!6640602 () Bool)

(assert (=> b!5681176 m!6640602))

(declare-fun m!6640604 () Bool)

(assert (=> b!5681170 m!6640604))

(assert (=> b!5681170 m!6640604))

(declare-fun m!6640606 () Bool)

(assert (=> b!5681170 m!6640606))

(assert (=> b!5681170 m!6640600))

(assert (=> b!5681170 m!6640606))

(assert (=> b!5681170 m!6640600))

(declare-fun m!6640608 () Bool)

(assert (=> b!5681170 m!6640608))

(declare-fun m!6640610 () Bool)

(assert (=> d!1793058 m!6640610))

(assert (=> d!1793058 m!6639800))

(assert (=> b!5681167 m!6640604))

(assert (=> b!5681174 m!6640604))

(assert (=> bm!431430 m!6640610))

(assert (=> b!5681169 m!6640600))

(assert (=> b!5681169 m!6640600))

(assert (=> b!5681169 m!6640602))

(assert (=> b!5680297 d!1793058))

(assert (=> b!5680297 d!1792794))

(declare-fun b!5681179 () Bool)

(declare-fun e!3496573 () (InoxSet Context!10114))

(declare-fun e!3496574 () (InoxSet Context!10114))

(assert (=> b!5681179 (= e!3496573 e!3496574)))

(declare-fun c!999782 () Bool)

(assert (=> b!5681179 (= c!999782 ((_ is Cons!63194) (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270169))))))))

(declare-fun call!431436 () (InoxSet Context!10114))

(declare-fun b!5681180 () Bool)

(assert (=> b!5681180 (= e!3496573 ((_ map or) call!431436 (derivationStepZipperUp!941 (Context!10115 (t!376630 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270169)))))) (h!69643 s!2326))))))

(declare-fun b!5681181 () Bool)

(declare-fun e!3496572 () Bool)

(assert (=> b!5681181 (= e!3496572 (nullable!5705 (h!69642 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270169)))))))))

(declare-fun bm!431431 () Bool)

(assert (=> bm!431431 (= call!431436 (derivationStepZipperDown!1015 (h!69642 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270169))))) (Context!10115 (t!376630 (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270169)))))) (h!69643 s!2326)))))

(declare-fun d!1793060 () Bool)

(declare-fun c!999783 () Bool)

(assert (=> d!1793060 (= c!999783 e!3496572)))

(declare-fun res!2400571 () Bool)

(assert (=> d!1793060 (=> (not res!2400571) (not e!3496572))))

(assert (=> d!1793060 (= res!2400571 ((_ is Cons!63194) (exprs!5557 (Context!10115 (t!376630 (exprs!5557 lt!2270169))))))))

(assert (=> d!1793060 (= (derivationStepZipperUp!941 (Context!10115 (t!376630 (exprs!5557 lt!2270169))) (h!69643 s!2326)) e!3496573)))

(declare-fun b!5681182 () Bool)

(assert (=> b!5681182 (= e!3496574 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5681183 () Bool)

(assert (=> b!5681183 (= e!3496574 call!431436)))

(assert (= (and d!1793060 res!2400571) b!5681181))

(assert (= (and d!1793060 c!999783) b!5681180))

(assert (= (and d!1793060 (not c!999783)) b!5681179))

(assert (= (and b!5681179 c!999782) b!5681183))

(assert (= (and b!5681179 (not c!999782)) b!5681182))

(assert (= (or b!5681180 b!5681183) bm!431431))

(declare-fun m!6640632 () Bool)

(assert (=> b!5681180 m!6640632))

(declare-fun m!6640636 () Bool)

(assert (=> b!5681181 m!6640636))

(declare-fun m!6640640 () Bool)

(assert (=> bm!431431 m!6640640))

(assert (=> b!5680255 d!1793060))

(declare-fun bs!1324064 () Bool)

(declare-fun d!1793064 () Bool)

(assert (= bs!1324064 (and d!1793064 d!1792782)))

(declare-fun lambda!306123 () Int)

(assert (=> bs!1324064 (= lambda!306123 lambda!306088)))

(declare-fun bs!1324065 () Bool)

(assert (= bs!1324065 (and d!1793064 d!1792884)))

(assert (=> bs!1324065 (= lambda!306123 lambda!306100)))

(declare-fun bs!1324066 () Bool)

(assert (= bs!1324066 (and d!1793064 d!1792962)))

(assert (=> bs!1324066 (= lambda!306123 lambda!306109)))

(assert (=> d!1793064 (= (nullableZipper!1637 lt!2270163) (exists!2209 lt!2270163 lambda!306123))))

(declare-fun bs!1324067 () Bool)

(assert (= bs!1324067 d!1793064))

(declare-fun m!6640648 () Bool)

(assert (=> bs!1324067 m!6640648))

(assert (=> b!5680345 d!1793064))

(declare-fun d!1793068 () Bool)

(assert (=> d!1793068 true))

(assert (=> d!1793068 true))

(declare-fun res!2400572 () Bool)

(assert (=> d!1793068 (= (choose!42978 lambda!306018) res!2400572)))

(assert (=> d!1792700 d!1793068))

(declare-fun d!1793070 () Bool)

(assert (=> d!1793070 (= ($colon$colon!1704 (exprs!5557 lt!2270159) (ite (or c!999552 c!999553) (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (h!69642 (exprs!5557 (h!69644 zl!343))))) (Cons!63194 (ite (or c!999552 c!999553) (regTwo!31858 (h!69642 (exprs!5557 (h!69644 zl!343)))) (h!69642 (exprs!5557 (h!69644 zl!343)))) (exprs!5557 lt!2270159)))))

(assert (=> bm!431255 d!1793070))

(declare-fun bs!1324071 () Bool)

(declare-fun d!1793072 () Bool)

(assert (= bs!1324071 (and d!1793072 d!1792782)))

(declare-fun lambda!306125 () Int)

(assert (=> bs!1324071 (= lambda!306125 lambda!306088)))

(declare-fun bs!1324072 () Bool)

(assert (= bs!1324072 (and d!1793072 d!1792884)))

(assert (=> bs!1324072 (= lambda!306125 lambda!306100)))

(declare-fun bs!1324073 () Bool)

(assert (= bs!1324073 (and d!1793072 d!1792962)))

(assert (=> bs!1324073 (= lambda!306125 lambda!306109)))

(declare-fun bs!1324074 () Bool)

(assert (= bs!1324074 (and d!1793072 d!1793064)))

(assert (=> bs!1324074 (= lambda!306125 lambda!306123)))

(assert (=> d!1793072 (= (nullableZipper!1637 lt!2270156) (exists!2209 lt!2270156 lambda!306125))))

(declare-fun bs!1324075 () Bool)

(assert (= bs!1324075 d!1793072))

(declare-fun m!6640652 () Bool)

(assert (=> bs!1324075 m!6640652))

(assert (=> b!5680272 d!1793072))

(declare-fun b!5681186 () Bool)

(declare-fun e!3496576 () (InoxSet Context!10114))

(declare-fun call!431439 () (InoxSet Context!10114))

(assert (=> b!5681186 (= e!3496576 call!431439)))

(declare-fun b!5681187 () Bool)

(assert (=> b!5681187 (= e!3496576 ((as const (Array Context!10114 Bool)) false))))

(declare-fun b!5681188 () Bool)

(declare-fun e!3496577 () (InoxSet Context!10114))

(declare-fun call!431437 () (InoxSet Context!10114))

(declare-fun call!431440 () (InoxSet Context!10114))

(assert (=> b!5681188 (= e!3496577 ((_ map or) call!431437 call!431440))))

(declare-fun b!5681189 () Bool)

(declare-fun e!3496580 () (InoxSet Context!10114))

(assert (=> b!5681189 (= e!3496580 e!3496577)))

(declare-fun c!999785 () Bool)

(assert (=> b!5681189 (= c!999785 ((_ is Union!15673) (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292))))))))))

(declare-fun bm!431432 () Bool)

(declare-fun call!431438 () (InoxSet Context!10114))

(assert (=> bm!431432 (= call!431439 call!431438)))

(declare-fun c!999789 () Bool)

(declare-fun d!1793080 () Bool)

(assert (=> d!1793080 (= c!999789 (and ((_ is ElementMatch!15673) (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292))))))) (= (c!999361 (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292))))))) (h!69643 s!2326))))))

(assert (=> d!1793080 (= (derivationStepZipperDown!1015 (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292)))))) (ite (or c!999559 c!999561) (Context!10115 lt!2270172) (Context!10115 call!431271)) (h!69643 s!2326)) e!3496580)))

(declare-fun b!5681190 () Bool)

(declare-fun e!3496579 () (InoxSet Context!10114))

(assert (=> b!5681190 (= e!3496579 call!431439)))

(declare-fun b!5681191 () Bool)

(declare-fun e!3496581 () (InoxSet Context!10114))

(assert (=> b!5681191 (= e!3496581 e!3496579)))

(declare-fun c!999788 () Bool)

(assert (=> b!5681191 (= c!999788 ((_ is Concat!24518) (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292))))))))))

(declare-fun b!5681192 () Bool)

(declare-fun c!999786 () Bool)

(assert (=> b!5681192 (= c!999786 ((_ is Star!15673) (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292))))))))))

(assert (=> b!5681192 (= e!3496579 e!3496576)))

(declare-fun call!431442 () List!63318)

(declare-fun c!999787 () Bool)

(declare-fun bm!431433 () Bool)

(assert (=> bm!431433 (= call!431442 ($colon$colon!1704 (exprs!5557 (ite (or c!999559 c!999561) (Context!10115 lt!2270172) (Context!10115 call!431271))) (ite (or c!999787 c!999788) (regTwo!31858 (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292))))))) (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292)))))))))))

(declare-fun b!5681193 () Bool)

(declare-fun e!3496578 () Bool)

(assert (=> b!5681193 (= c!999787 e!3496578)))

(declare-fun res!2400573 () Bool)

(assert (=> b!5681193 (=> (not res!2400573) (not e!3496578))))

(assert (=> b!5681193 (= res!2400573 ((_ is Concat!24518) (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292))))))))))

(assert (=> b!5681193 (= e!3496577 e!3496581)))

(declare-fun bm!431434 () Bool)

(declare-fun call!431441 () List!63318)

(assert (=> bm!431434 (= call!431441 call!431442)))

(declare-fun bm!431435 () Bool)

(assert (=> bm!431435 (= call!431440 (derivationStepZipperDown!1015 (ite c!999785 (regTwo!31859 (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292))))))) (regOne!31858 (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292)))))))) (ite c!999785 (ite (or c!999559 c!999561) (Context!10115 lt!2270172) (Context!10115 call!431271)) (Context!10115 call!431442)) (h!69643 s!2326)))))

(declare-fun b!5681194 () Bool)

(assert (=> b!5681194 (= e!3496581 ((_ map or) call!431440 call!431438))))

(declare-fun bm!431436 () Bool)

(assert (=> bm!431436 (= call!431437 (derivationStepZipperDown!1015 (ite c!999785 (regOne!31859 (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292))))))) (ite c!999787 (regTwo!31858 (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292))))))) (ite c!999788 (regOne!31858 (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292))))))) (reg!16002 (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292)))))))))) (ite (or c!999785 c!999787) (ite (or c!999559 c!999561) (Context!10115 lt!2270172) (Context!10115 call!431271)) (Context!10115 call!431441)) (h!69643 s!2326)))))

(declare-fun b!5681195 () Bool)

(assert (=> b!5681195 (= e!3496580 (store ((as const (Array Context!10114 Bool)) false) (ite (or c!999559 c!999561) (Context!10115 lt!2270172) (Context!10115 call!431271)) true))))

(declare-fun b!5681196 () Bool)

(assert (=> b!5681196 (= e!3496578 (nullable!5705 (regOne!31858 (ite c!999559 (regOne!31859 (reg!16002 (regOne!31858 r!7292))) (ite c!999561 (regTwo!31858 (reg!16002 (regOne!31858 r!7292))) (ite c!999562 (regOne!31858 (reg!16002 (regOne!31858 r!7292))) (reg!16002 (reg!16002 (regOne!31858 r!7292)))))))))))

(declare-fun bm!431437 () Bool)

(assert (=> bm!431437 (= call!431438 call!431437)))

(assert (= (and d!1793080 c!999789) b!5681195))

(assert (= (and d!1793080 (not c!999789)) b!5681189))

(assert (= (and b!5681189 c!999785) b!5681188))

(assert (= (and b!5681189 (not c!999785)) b!5681193))

(assert (= (and b!5681193 res!2400573) b!5681196))

(assert (= (and b!5681193 c!999787) b!5681194))

(assert (= (and b!5681193 (not c!999787)) b!5681191))

(assert (= (and b!5681191 c!999788) b!5681190))

(assert (= (and b!5681191 (not c!999788)) b!5681192))

(assert (= (and b!5681192 c!999786) b!5681186))

(assert (= (and b!5681192 (not c!999786)) b!5681187))

(assert (= (or b!5681190 b!5681186) bm!431434))

(assert (= (or b!5681190 b!5681186) bm!431432))

(assert (= (or b!5681194 bm!431434) bm!431433))

(assert (= (or b!5681194 bm!431432) bm!431437))

(assert (= (or b!5681188 b!5681194) bm!431435))

(assert (= (or b!5681188 bm!431437) bm!431436))

(declare-fun m!6640654 () Bool)

(assert (=> bm!431435 m!6640654))

(declare-fun m!6640656 () Bool)

(assert (=> bm!431433 m!6640656))

(declare-fun m!6640658 () Bool)

(assert (=> b!5681196 m!6640658))

(declare-fun m!6640660 () Bool)

(assert (=> bm!431436 m!6640660))

(declare-fun m!6640662 () Bool)

(assert (=> b!5681195 m!6640662))

(assert (=> bm!431266 d!1793080))

(declare-fun b!5681205 () Bool)

(declare-fun e!3496588 () Bool)

(declare-fun tp!1575129 () Bool)

(assert (=> b!5681205 (= e!3496588 tp!1575129)))

(declare-fun b!5681203 () Bool)

(assert (=> b!5681203 (= e!3496588 tp_is_empty!40599)))

(assert (=> b!5680493 (= tp!1575103 e!3496588)))

(declare-fun b!5681206 () Bool)

(declare-fun tp!1575130 () Bool)

(declare-fun tp!1575131 () Bool)

(assert (=> b!5681206 (= e!3496588 (and tp!1575130 tp!1575131))))

(declare-fun b!5681204 () Bool)

(declare-fun tp!1575128 () Bool)

(declare-fun tp!1575127 () Bool)

(assert (=> b!5681204 (= e!3496588 (and tp!1575128 tp!1575127))))

(assert (= (and b!5680493 ((_ is ElementMatch!15673) (regOne!31858 (regTwo!31858 r!7292)))) b!5681203))

(assert (= (and b!5680493 ((_ is Concat!24518) (regOne!31858 (regTwo!31858 r!7292)))) b!5681204))

(assert (= (and b!5680493 ((_ is Star!15673) (regOne!31858 (regTwo!31858 r!7292)))) b!5681205))

(assert (= (and b!5680493 ((_ is Union!15673) (regOne!31858 (regTwo!31858 r!7292)))) b!5681206))

(declare-fun b!5681209 () Bool)

(declare-fun e!3496589 () Bool)

(declare-fun tp!1575134 () Bool)

(assert (=> b!5681209 (= e!3496589 tp!1575134)))

(declare-fun b!5681207 () Bool)

(assert (=> b!5681207 (= e!3496589 tp_is_empty!40599)))

(assert (=> b!5680493 (= tp!1575102 e!3496589)))

(declare-fun b!5681210 () Bool)

(declare-fun tp!1575135 () Bool)

(declare-fun tp!1575136 () Bool)

(assert (=> b!5681210 (= e!3496589 (and tp!1575135 tp!1575136))))

(declare-fun b!5681208 () Bool)

(declare-fun tp!1575133 () Bool)

(declare-fun tp!1575132 () Bool)

(assert (=> b!5681208 (= e!3496589 (and tp!1575133 tp!1575132))))

(assert (= (and b!5680493 ((_ is ElementMatch!15673) (regTwo!31858 (regTwo!31858 r!7292)))) b!5681207))

(assert (= (and b!5680493 ((_ is Concat!24518) (regTwo!31858 (regTwo!31858 r!7292)))) b!5681208))

(assert (= (and b!5680493 ((_ is Star!15673) (regTwo!31858 (regTwo!31858 r!7292)))) b!5681209))

(assert (= (and b!5680493 ((_ is Union!15673) (regTwo!31858 (regTwo!31858 r!7292)))) b!5681210))

(declare-fun b!5681213 () Bool)

(declare-fun e!3496590 () Bool)

(declare-fun tp!1575139 () Bool)

(assert (=> b!5681213 (= e!3496590 tp!1575139)))

(declare-fun b!5681211 () Bool)

(assert (=> b!5681211 (= e!3496590 tp_is_empty!40599)))

(assert (=> b!5680473 (= tp!1575081 e!3496590)))

(declare-fun b!5681214 () Bool)

(declare-fun tp!1575140 () Bool)

(declare-fun tp!1575141 () Bool)

(assert (=> b!5681214 (= e!3496590 (and tp!1575140 tp!1575141))))

(declare-fun b!5681212 () Bool)

(declare-fun tp!1575138 () Bool)

(declare-fun tp!1575137 () Bool)

(assert (=> b!5681212 (= e!3496590 (and tp!1575138 tp!1575137))))

(assert (= (and b!5680473 ((_ is ElementMatch!15673) (regOne!31859 (regTwo!31859 r!7292)))) b!5681211))

(assert (= (and b!5680473 ((_ is Concat!24518) (regOne!31859 (regTwo!31859 r!7292)))) b!5681212))

(assert (= (and b!5680473 ((_ is Star!15673) (regOne!31859 (regTwo!31859 r!7292)))) b!5681213))

(assert (= (and b!5680473 ((_ is Union!15673) (regOne!31859 (regTwo!31859 r!7292)))) b!5681214))

(declare-fun b!5681221 () Bool)

(declare-fun e!3496595 () Bool)

(declare-fun tp!1575146 () Bool)

(assert (=> b!5681221 (= e!3496595 tp!1575146)))

(declare-fun b!5681219 () Bool)

(assert (=> b!5681219 (= e!3496595 tp_is_empty!40599)))

(assert (=> b!5680473 (= tp!1575082 e!3496595)))

(declare-fun b!5681222 () Bool)

(declare-fun tp!1575147 () Bool)

(declare-fun tp!1575148 () Bool)

(assert (=> b!5681222 (= e!3496595 (and tp!1575147 tp!1575148))))

(declare-fun b!5681220 () Bool)

(declare-fun tp!1575145 () Bool)

(declare-fun tp!1575144 () Bool)

(assert (=> b!5681220 (= e!3496595 (and tp!1575145 tp!1575144))))

(assert (= (and b!5680473 ((_ is ElementMatch!15673) (regTwo!31859 (regTwo!31859 r!7292)))) b!5681219))

(assert (= (and b!5680473 ((_ is Concat!24518) (regTwo!31859 (regTwo!31859 r!7292)))) b!5681220))

(assert (= (and b!5680473 ((_ is Star!15673) (regTwo!31859 (regTwo!31859 r!7292)))) b!5681221))

(assert (= (and b!5680473 ((_ is Union!15673) (regTwo!31859 (regTwo!31859 r!7292)))) b!5681222))

(declare-fun b!5681224 () Bool)

(declare-fun e!3496599 () Bool)

(declare-fun tp!1575151 () Bool)

(assert (=> b!5681224 (= e!3496599 tp!1575151)))

(declare-fun b!5681223 () Bool)

(declare-fun e!3496597 () Bool)

(declare-fun tp!1575152 () Bool)

(assert (=> b!5681223 (= e!3496597 (and (inv!82429 (h!69644 (t!376632 (t!376632 zl!343)))) e!3496599 tp!1575152))))

(assert (=> b!5680480 (= tp!1575088 e!3496597)))

(assert (= b!5681223 b!5681224))

(assert (= (and b!5680480 ((_ is Cons!63196) (t!376632 (t!376632 zl!343)))) b!5681223))

(declare-fun m!6640668 () Bool)

(assert (=> b!5681223 m!6640668))

(declare-fun b!5681229 () Bool)

(declare-fun e!3496600 () Bool)

(declare-fun tp!1575155 () Bool)

(assert (=> b!5681229 (= e!3496600 tp!1575155)))

(declare-fun b!5681227 () Bool)

(assert (=> b!5681227 (= e!3496600 tp_is_empty!40599)))

(assert (=> b!5680494 (= tp!1575104 e!3496600)))

(declare-fun b!5681230 () Bool)

(declare-fun tp!1575156 () Bool)

(declare-fun tp!1575157 () Bool)

(assert (=> b!5681230 (= e!3496600 (and tp!1575156 tp!1575157))))

(declare-fun b!5681228 () Bool)

(declare-fun tp!1575154 () Bool)

(declare-fun tp!1575153 () Bool)

(assert (=> b!5681228 (= e!3496600 (and tp!1575154 tp!1575153))))

(assert (= (and b!5680494 ((_ is ElementMatch!15673) (reg!16002 (regTwo!31858 r!7292)))) b!5681227))

(assert (= (and b!5680494 ((_ is Concat!24518) (reg!16002 (regTwo!31858 r!7292)))) b!5681228))

(assert (= (and b!5680494 ((_ is Star!15673) (reg!16002 (regTwo!31858 r!7292)))) b!5681229))

(assert (= (and b!5680494 ((_ is Union!15673) (reg!16002 (regTwo!31858 r!7292)))) b!5681230))

(declare-fun b!5681231 () Bool)

(declare-fun e!3496601 () Bool)

(declare-fun tp!1575158 () Bool)

(declare-fun tp!1575159 () Bool)

(assert (=> b!5681231 (= e!3496601 (and tp!1575158 tp!1575159))))

(assert (=> b!5680487 (= tp!1575096 e!3496601)))

(assert (= (and b!5680487 ((_ is Cons!63194) (exprs!5557 setElem!38001))) b!5681231))

(declare-fun b!5681232 () Bool)

(declare-fun e!3496602 () Bool)

(declare-fun tp!1575160 () Bool)

(assert (=> b!5681232 (= e!3496602 (and tp_is_empty!40599 tp!1575160))))

(assert (=> b!5680465 (= tp!1575072 e!3496602)))

(assert (= (and b!5680465 ((_ is Cons!63195) (t!376631 (t!376631 s!2326)))) b!5681232))

(declare-fun condSetEmpty!38009 () Bool)

(assert (=> setNonEmpty!38001 (= condSetEmpty!38009 (= setRest!38001 ((as const (Array Context!10114 Bool)) false)))))

(declare-fun setRes!38009 () Bool)

(assert (=> setNonEmpty!38001 (= tp!1575095 setRes!38009)))

(declare-fun setIsEmpty!38009 () Bool)

(assert (=> setIsEmpty!38009 setRes!38009))

(declare-fun setElem!38009 () Context!10114)

(declare-fun e!3496603 () Bool)

(declare-fun tp!1575161 () Bool)

(declare-fun setNonEmpty!38009 () Bool)

(assert (=> setNonEmpty!38009 (= setRes!38009 (and tp!1575161 (inv!82429 setElem!38009) e!3496603))))

(declare-fun setRest!38009 () (InoxSet Context!10114))

(assert (=> setNonEmpty!38009 (= setRest!38001 ((_ map or) (store ((as const (Array Context!10114 Bool)) false) setElem!38009 true) setRest!38009))))

(declare-fun b!5681233 () Bool)

(declare-fun tp!1575162 () Bool)

(assert (=> b!5681233 (= e!3496603 tp!1575162)))

(assert (= (and setNonEmpty!38001 condSetEmpty!38009) setIsEmpty!38009))

(assert (= (and setNonEmpty!38001 (not condSetEmpty!38009)) setNonEmpty!38009))

(assert (= setNonEmpty!38009 b!5681233))

(declare-fun m!6640670 () Bool)

(assert (=> setNonEmpty!38009 m!6640670))

(declare-fun b!5681236 () Bool)

(declare-fun e!3496604 () Bool)

(declare-fun tp!1575165 () Bool)

(assert (=> b!5681236 (= e!3496604 tp!1575165)))

(declare-fun b!5681234 () Bool)

(assert (=> b!5681234 (= e!3496604 tp_is_empty!40599)))

(assert (=> b!5680471 (= tp!1575079 e!3496604)))

(declare-fun b!5681237 () Bool)

(declare-fun tp!1575166 () Bool)

(declare-fun tp!1575167 () Bool)

(assert (=> b!5681237 (= e!3496604 (and tp!1575166 tp!1575167))))

(declare-fun b!5681235 () Bool)

(declare-fun tp!1575164 () Bool)

(declare-fun tp!1575163 () Bool)

(assert (=> b!5681235 (= e!3496604 (and tp!1575164 tp!1575163))))

(assert (= (and b!5680471 ((_ is ElementMatch!15673) (regOne!31858 (regTwo!31859 r!7292)))) b!5681234))

(assert (= (and b!5680471 ((_ is Concat!24518) (regOne!31858 (regTwo!31859 r!7292)))) b!5681235))

(assert (= (and b!5680471 ((_ is Star!15673) (regOne!31858 (regTwo!31859 r!7292)))) b!5681236))

(assert (= (and b!5680471 ((_ is Union!15673) (regOne!31858 (regTwo!31859 r!7292)))) b!5681237))

(declare-fun b!5681243 () Bool)

(declare-fun e!3496608 () Bool)

(declare-fun tp!1575172 () Bool)

(assert (=> b!5681243 (= e!3496608 tp!1575172)))

(declare-fun b!5681241 () Bool)

(assert (=> b!5681241 (= e!3496608 tp_is_empty!40599)))

(assert (=> b!5680471 (= tp!1575078 e!3496608)))

(declare-fun b!5681244 () Bool)

(declare-fun tp!1575173 () Bool)

(declare-fun tp!1575174 () Bool)

(assert (=> b!5681244 (= e!3496608 (and tp!1575173 tp!1575174))))

(declare-fun b!5681242 () Bool)

(declare-fun tp!1575171 () Bool)

(declare-fun tp!1575170 () Bool)

(assert (=> b!5681242 (= e!3496608 (and tp!1575171 tp!1575170))))

(assert (= (and b!5680471 ((_ is ElementMatch!15673) (regTwo!31858 (regTwo!31859 r!7292)))) b!5681241))

(assert (= (and b!5680471 ((_ is Concat!24518) (regTwo!31858 (regTwo!31859 r!7292)))) b!5681242))

(assert (= (and b!5680471 ((_ is Star!15673) (regTwo!31858 (regTwo!31859 r!7292)))) b!5681243))

(assert (= (and b!5680471 ((_ is Union!15673) (regTwo!31858 (regTwo!31859 r!7292)))) b!5681244))

(declare-fun b!5681247 () Bool)

(declare-fun e!3496609 () Bool)

(declare-fun tp!1575177 () Bool)

(assert (=> b!5681247 (= e!3496609 tp!1575177)))

(declare-fun b!5681245 () Bool)

(assert (=> b!5681245 (= e!3496609 tp_is_empty!40599)))

(assert (=> b!5680472 (= tp!1575080 e!3496609)))

(declare-fun b!5681248 () Bool)

(declare-fun tp!1575178 () Bool)

(declare-fun tp!1575179 () Bool)

(assert (=> b!5681248 (= e!3496609 (and tp!1575178 tp!1575179))))

(declare-fun b!5681246 () Bool)

(declare-fun tp!1575176 () Bool)

(declare-fun tp!1575175 () Bool)

(assert (=> b!5681246 (= e!3496609 (and tp!1575176 tp!1575175))))

(assert (= (and b!5680472 ((_ is ElementMatch!15673) (reg!16002 (regTwo!31859 r!7292)))) b!5681245))

(assert (= (and b!5680472 ((_ is Concat!24518) (reg!16002 (regTwo!31859 r!7292)))) b!5681246))

(assert (= (and b!5680472 ((_ is Star!15673) (reg!16002 (regTwo!31859 r!7292)))) b!5681247))

(assert (= (and b!5680472 ((_ is Union!15673) (reg!16002 (regTwo!31859 r!7292)))) b!5681248))

(declare-fun b!5681251 () Bool)

(declare-fun e!3496610 () Bool)

(declare-fun tp!1575182 () Bool)

(assert (=> b!5681251 (= e!3496610 tp!1575182)))

(declare-fun b!5681249 () Bool)

(assert (=> b!5681249 (= e!3496610 tp_is_empty!40599)))

(assert (=> b!5680491 (= tp!1575100 e!3496610)))

(declare-fun b!5681252 () Bool)

(declare-fun tp!1575183 () Bool)

(declare-fun tp!1575184 () Bool)

(assert (=> b!5681252 (= e!3496610 (and tp!1575183 tp!1575184))))

(declare-fun b!5681250 () Bool)

(declare-fun tp!1575181 () Bool)

(declare-fun tp!1575180 () Bool)

(assert (=> b!5681250 (= e!3496610 (and tp!1575181 tp!1575180))))

(assert (= (and b!5680491 ((_ is ElementMatch!15673) (regOne!31859 (regOne!31858 r!7292)))) b!5681249))

(assert (= (and b!5680491 ((_ is Concat!24518) (regOne!31859 (regOne!31858 r!7292)))) b!5681250))

(assert (= (and b!5680491 ((_ is Star!15673) (regOne!31859 (regOne!31858 r!7292)))) b!5681251))

(assert (= (and b!5680491 ((_ is Union!15673) (regOne!31859 (regOne!31858 r!7292)))) b!5681252))

(declare-fun b!5681255 () Bool)

(declare-fun e!3496611 () Bool)

(declare-fun tp!1575187 () Bool)

(assert (=> b!5681255 (= e!3496611 tp!1575187)))

(declare-fun b!5681253 () Bool)

(assert (=> b!5681253 (= e!3496611 tp_is_empty!40599)))

(assert (=> b!5680491 (= tp!1575101 e!3496611)))

(declare-fun b!5681256 () Bool)

(declare-fun tp!1575188 () Bool)

(declare-fun tp!1575189 () Bool)

(assert (=> b!5681256 (= e!3496611 (and tp!1575188 tp!1575189))))

(declare-fun b!5681254 () Bool)

(declare-fun tp!1575186 () Bool)

(declare-fun tp!1575185 () Bool)

(assert (=> b!5681254 (= e!3496611 (and tp!1575186 tp!1575185))))

(assert (= (and b!5680491 ((_ is ElementMatch!15673) (regTwo!31859 (regOne!31858 r!7292)))) b!5681253))

(assert (= (and b!5680491 ((_ is Concat!24518) (regTwo!31859 (regOne!31858 r!7292)))) b!5681254))

(assert (= (and b!5680491 ((_ is Star!15673) (regTwo!31859 (regOne!31858 r!7292)))) b!5681255))

(assert (= (and b!5680491 ((_ is Union!15673) (regTwo!31859 (regOne!31858 r!7292)))) b!5681256))

(declare-fun b!5681259 () Bool)

(declare-fun e!3496612 () Bool)

(declare-fun tp!1575192 () Bool)

(assert (=> b!5681259 (= e!3496612 tp!1575192)))

(declare-fun b!5681257 () Bool)

(assert (=> b!5681257 (= e!3496612 tp_is_empty!40599)))

(assert (=> b!5680490 (= tp!1575099 e!3496612)))

(declare-fun b!5681260 () Bool)

(declare-fun tp!1575193 () Bool)

(declare-fun tp!1575194 () Bool)

(assert (=> b!5681260 (= e!3496612 (and tp!1575193 tp!1575194))))

(declare-fun b!5681258 () Bool)

(declare-fun tp!1575191 () Bool)

(declare-fun tp!1575190 () Bool)

(assert (=> b!5681258 (= e!3496612 (and tp!1575191 tp!1575190))))

(assert (= (and b!5680490 ((_ is ElementMatch!15673) (reg!16002 (regOne!31858 r!7292)))) b!5681257))

(assert (= (and b!5680490 ((_ is Concat!24518) (reg!16002 (regOne!31858 r!7292)))) b!5681258))

(assert (= (and b!5680490 ((_ is Star!15673) (reg!16002 (regOne!31858 r!7292)))) b!5681259))

(assert (= (and b!5680490 ((_ is Union!15673) (reg!16002 (regOne!31858 r!7292)))) b!5681260))

(declare-fun b!5681272 () Bool)

(declare-fun e!3496620 () Bool)

(declare-fun tp!1575197 () Bool)

(assert (=> b!5681272 (= e!3496620 tp!1575197)))

(declare-fun b!5681270 () Bool)

(assert (=> b!5681270 (= e!3496620 tp_is_empty!40599)))

(assert (=> b!5680446 (= tp!1575053 e!3496620)))

(declare-fun b!5681273 () Bool)

(declare-fun tp!1575198 () Bool)

(declare-fun tp!1575199 () Bool)

(assert (=> b!5681273 (= e!3496620 (and tp!1575198 tp!1575199))))

(declare-fun b!5681271 () Bool)

(declare-fun tp!1575196 () Bool)

(declare-fun tp!1575195 () Bool)

(assert (=> b!5681271 (= e!3496620 (and tp!1575196 tp!1575195))))

(assert (= (and b!5680446 ((_ is ElementMatch!15673) (h!69642 (exprs!5557 setElem!37995)))) b!5681270))

(assert (= (and b!5680446 ((_ is Concat!24518) (h!69642 (exprs!5557 setElem!37995)))) b!5681271))

(assert (= (and b!5680446 ((_ is Star!15673) (h!69642 (exprs!5557 setElem!37995)))) b!5681272))

(assert (= (and b!5680446 ((_ is Union!15673) (h!69642 (exprs!5557 setElem!37995)))) b!5681273))

(declare-fun b!5681274 () Bool)

(declare-fun e!3496621 () Bool)

(declare-fun tp!1575200 () Bool)

(declare-fun tp!1575201 () Bool)

(assert (=> b!5681274 (= e!3496621 (and tp!1575200 tp!1575201))))

(assert (=> b!5680446 (= tp!1575054 e!3496621)))

(assert (= (and b!5680446 ((_ is Cons!63194) (t!376630 (exprs!5557 setElem!37995)))) b!5681274))

(declare-fun b!5681277 () Bool)

(declare-fun e!3496622 () Bool)

(declare-fun tp!1575204 () Bool)

(assert (=> b!5681277 (= e!3496622 tp!1575204)))

(declare-fun b!5681275 () Bool)

(assert (=> b!5681275 (= e!3496622 tp_is_empty!40599)))

(assert (=> b!5680469 (= tp!1575076 e!3496622)))

(declare-fun b!5681278 () Bool)

(declare-fun tp!1575205 () Bool)

(declare-fun tp!1575206 () Bool)

(assert (=> b!5681278 (= e!3496622 (and tp!1575205 tp!1575206))))

(declare-fun b!5681276 () Bool)

(declare-fun tp!1575203 () Bool)

(declare-fun tp!1575202 () Bool)

(assert (=> b!5681276 (= e!3496622 (and tp!1575203 tp!1575202))))

(assert (= (and b!5680469 ((_ is ElementMatch!15673) (regOne!31859 (regOne!31859 r!7292)))) b!5681275))

(assert (= (and b!5680469 ((_ is Concat!24518) (regOne!31859 (regOne!31859 r!7292)))) b!5681276))

(assert (= (and b!5680469 ((_ is Star!15673) (regOne!31859 (regOne!31859 r!7292)))) b!5681277))

(assert (= (and b!5680469 ((_ is Union!15673) (regOne!31859 (regOne!31859 r!7292)))) b!5681278))

(declare-fun b!5681281 () Bool)

(declare-fun e!3496623 () Bool)

(declare-fun tp!1575209 () Bool)

(assert (=> b!5681281 (= e!3496623 tp!1575209)))

(declare-fun b!5681279 () Bool)

(assert (=> b!5681279 (= e!3496623 tp_is_empty!40599)))

(assert (=> b!5680469 (= tp!1575077 e!3496623)))

(declare-fun b!5681282 () Bool)

(declare-fun tp!1575210 () Bool)

(declare-fun tp!1575211 () Bool)

(assert (=> b!5681282 (= e!3496623 (and tp!1575210 tp!1575211))))

(declare-fun b!5681280 () Bool)

(declare-fun tp!1575208 () Bool)

(declare-fun tp!1575207 () Bool)

(assert (=> b!5681280 (= e!3496623 (and tp!1575208 tp!1575207))))

(assert (= (and b!5680469 ((_ is ElementMatch!15673) (regTwo!31859 (regOne!31859 r!7292)))) b!5681279))

(assert (= (and b!5680469 ((_ is Concat!24518) (regTwo!31859 (regOne!31859 r!7292)))) b!5681280))

(assert (= (and b!5680469 ((_ is Star!15673) (regTwo!31859 (regOne!31859 r!7292)))) b!5681281))

(assert (= (and b!5680469 ((_ is Union!15673) (regTwo!31859 (regOne!31859 r!7292)))) b!5681282))

(declare-fun b!5681287 () Bool)

(declare-fun e!3496626 () Bool)

(declare-fun tp!1575214 () Bool)

(assert (=> b!5681287 (= e!3496626 tp!1575214)))

(declare-fun b!5681285 () Bool)

(assert (=> b!5681285 (= e!3496626 tp_is_empty!40599)))

(assert (=> b!5680468 (= tp!1575075 e!3496626)))

(declare-fun b!5681288 () Bool)

(declare-fun tp!1575215 () Bool)

(declare-fun tp!1575216 () Bool)

(assert (=> b!5681288 (= e!3496626 (and tp!1575215 tp!1575216))))

(declare-fun b!5681286 () Bool)

(declare-fun tp!1575213 () Bool)

(declare-fun tp!1575212 () Bool)

(assert (=> b!5681286 (= e!3496626 (and tp!1575213 tp!1575212))))

(assert (= (and b!5680468 ((_ is ElementMatch!15673) (reg!16002 (regOne!31859 r!7292)))) b!5681285))

(assert (= (and b!5680468 ((_ is Concat!24518) (reg!16002 (regOne!31859 r!7292)))) b!5681286))

(assert (= (and b!5680468 ((_ is Star!15673) (reg!16002 (regOne!31859 r!7292)))) b!5681287))

(assert (= (and b!5680468 ((_ is Union!15673) (reg!16002 (regOne!31859 r!7292)))) b!5681288))

(declare-fun b!5681291 () Bool)

(declare-fun e!3496627 () Bool)

(declare-fun tp!1575219 () Bool)

(assert (=> b!5681291 (= e!3496627 tp!1575219)))

(declare-fun b!5681289 () Bool)

(assert (=> b!5681289 (= e!3496627 tp_is_empty!40599)))

(assert (=> b!5680489 (= tp!1575098 e!3496627)))

(declare-fun b!5681292 () Bool)

(declare-fun tp!1575220 () Bool)

(declare-fun tp!1575221 () Bool)

(assert (=> b!5681292 (= e!3496627 (and tp!1575220 tp!1575221))))

(declare-fun b!5681290 () Bool)

(declare-fun tp!1575218 () Bool)

(declare-fun tp!1575217 () Bool)

(assert (=> b!5681290 (= e!3496627 (and tp!1575218 tp!1575217))))

(assert (= (and b!5680489 ((_ is ElementMatch!15673) (regOne!31858 (regOne!31858 r!7292)))) b!5681289))

(assert (= (and b!5680489 ((_ is Concat!24518) (regOne!31858 (regOne!31858 r!7292)))) b!5681290))

(assert (= (and b!5680489 ((_ is Star!15673) (regOne!31858 (regOne!31858 r!7292)))) b!5681291))

(assert (= (and b!5680489 ((_ is Union!15673) (regOne!31858 (regOne!31858 r!7292)))) b!5681292))

(declare-fun b!5681295 () Bool)

(declare-fun e!3496632 () Bool)

(declare-fun tp!1575224 () Bool)

(assert (=> b!5681295 (= e!3496632 tp!1575224)))

(declare-fun b!5681293 () Bool)

(assert (=> b!5681293 (= e!3496632 tp_is_empty!40599)))

(assert (=> b!5680489 (= tp!1575097 e!3496632)))

(declare-fun b!5681296 () Bool)

(declare-fun tp!1575225 () Bool)

(declare-fun tp!1575226 () Bool)

(assert (=> b!5681296 (= e!3496632 (and tp!1575225 tp!1575226))))

(declare-fun b!5681294 () Bool)

(declare-fun tp!1575223 () Bool)

(declare-fun tp!1575222 () Bool)

(assert (=> b!5681294 (= e!3496632 (and tp!1575223 tp!1575222))))

(assert (= (and b!5680489 ((_ is ElementMatch!15673) (regTwo!31858 (regOne!31858 r!7292)))) b!5681293))

(assert (= (and b!5680489 ((_ is Concat!24518) (regTwo!31858 (regOne!31858 r!7292)))) b!5681294))

(assert (= (and b!5680489 ((_ is Star!15673) (regTwo!31858 (regOne!31858 r!7292)))) b!5681295))

(assert (= (and b!5680489 ((_ is Union!15673) (regTwo!31858 (regOne!31858 r!7292)))) b!5681296))

(declare-fun b!5681308 () Bool)

(declare-fun e!3496636 () Bool)

(declare-fun tp!1575229 () Bool)

(assert (=> b!5681308 (= e!3496636 tp!1575229)))

(declare-fun b!5681306 () Bool)

(assert (=> b!5681306 (= e!3496636 tp_is_empty!40599)))

(assert (=> b!5680482 (= tp!1575089 e!3496636)))

(declare-fun b!5681309 () Bool)

(declare-fun tp!1575230 () Bool)

(declare-fun tp!1575231 () Bool)

(assert (=> b!5681309 (= e!3496636 (and tp!1575230 tp!1575231))))

(declare-fun b!5681307 () Bool)

(declare-fun tp!1575228 () Bool)

(declare-fun tp!1575227 () Bool)

(assert (=> b!5681307 (= e!3496636 (and tp!1575228 tp!1575227))))

(assert (= (and b!5680482 ((_ is ElementMatch!15673) (h!69642 (exprs!5557 (h!69644 zl!343))))) b!5681306))

(assert (= (and b!5680482 ((_ is Concat!24518) (h!69642 (exprs!5557 (h!69644 zl!343))))) b!5681307))

(assert (= (and b!5680482 ((_ is Star!15673) (h!69642 (exprs!5557 (h!69644 zl!343))))) b!5681308))

(assert (= (and b!5680482 ((_ is Union!15673) (h!69642 (exprs!5557 (h!69644 zl!343))))) b!5681309))

(declare-fun b!5681310 () Bool)

(declare-fun e!3496637 () Bool)

(declare-fun tp!1575232 () Bool)

(declare-fun tp!1575233 () Bool)

(assert (=> b!5681310 (= e!3496637 (and tp!1575232 tp!1575233))))

(assert (=> b!5680482 (= tp!1575090 e!3496637)))

(assert (= (and b!5680482 ((_ is Cons!63194) (t!376630 (exprs!5557 (h!69644 zl!343))))) b!5681310))

(declare-fun b!5681313 () Bool)

(declare-fun e!3496638 () Bool)

(declare-fun tp!1575236 () Bool)

(assert (=> b!5681313 (= e!3496638 tp!1575236)))

(declare-fun b!5681311 () Bool)

(assert (=> b!5681311 (= e!3496638 tp_is_empty!40599)))

(assert (=> b!5680460 (= tp!1575068 e!3496638)))

(declare-fun b!5681314 () Bool)

(declare-fun tp!1575237 () Bool)

(declare-fun tp!1575238 () Bool)

(assert (=> b!5681314 (= e!3496638 (and tp!1575237 tp!1575238))))

(declare-fun b!5681312 () Bool)

(declare-fun tp!1575235 () Bool)

(declare-fun tp!1575234 () Bool)

(assert (=> b!5681312 (= e!3496638 (and tp!1575235 tp!1575234))))

(assert (= (and b!5680460 ((_ is ElementMatch!15673) (regOne!31859 (reg!16002 r!7292)))) b!5681311))

(assert (= (and b!5680460 ((_ is Concat!24518) (regOne!31859 (reg!16002 r!7292)))) b!5681312))

(assert (= (and b!5680460 ((_ is Star!15673) (regOne!31859 (reg!16002 r!7292)))) b!5681313))

(assert (= (and b!5680460 ((_ is Union!15673) (regOne!31859 (reg!16002 r!7292)))) b!5681314))

(declare-fun b!5681317 () Bool)

(declare-fun e!3496639 () Bool)

(declare-fun tp!1575241 () Bool)

(assert (=> b!5681317 (= e!3496639 tp!1575241)))

(declare-fun b!5681315 () Bool)

(assert (=> b!5681315 (= e!3496639 tp_is_empty!40599)))

(assert (=> b!5680460 (= tp!1575069 e!3496639)))

(declare-fun b!5681318 () Bool)

(declare-fun tp!1575242 () Bool)

(declare-fun tp!1575243 () Bool)

(assert (=> b!5681318 (= e!3496639 (and tp!1575242 tp!1575243))))

(declare-fun b!5681316 () Bool)

(declare-fun tp!1575240 () Bool)

(declare-fun tp!1575239 () Bool)

(assert (=> b!5681316 (= e!3496639 (and tp!1575240 tp!1575239))))

(assert (= (and b!5680460 ((_ is ElementMatch!15673) (regTwo!31859 (reg!16002 r!7292)))) b!5681315))

(assert (= (and b!5680460 ((_ is Concat!24518) (regTwo!31859 (reg!16002 r!7292)))) b!5681316))

(assert (= (and b!5680460 ((_ is Star!15673) (regTwo!31859 (reg!16002 r!7292)))) b!5681317))

(assert (= (and b!5680460 ((_ is Union!15673) (regTwo!31859 (reg!16002 r!7292)))) b!5681318))

(declare-fun b!5681321 () Bool)

(declare-fun e!3496646 () Bool)

(declare-fun tp!1575246 () Bool)

(assert (=> b!5681321 (= e!3496646 tp!1575246)))

(declare-fun b!5681319 () Bool)

(assert (=> b!5681319 (= e!3496646 tp_is_empty!40599)))

(assert (=> b!5680467 (= tp!1575074 e!3496646)))

(declare-fun b!5681323 () Bool)

(declare-fun tp!1575247 () Bool)

(declare-fun tp!1575248 () Bool)

(assert (=> b!5681323 (= e!3496646 (and tp!1575247 tp!1575248))))

(declare-fun b!5681320 () Bool)

(declare-fun tp!1575245 () Bool)

(declare-fun tp!1575244 () Bool)

(assert (=> b!5681320 (= e!3496646 (and tp!1575245 tp!1575244))))

(assert (= (and b!5680467 ((_ is ElementMatch!15673) (regOne!31858 (regOne!31859 r!7292)))) b!5681319))

(assert (= (and b!5680467 ((_ is Concat!24518) (regOne!31858 (regOne!31859 r!7292)))) b!5681320))

(assert (= (and b!5680467 ((_ is Star!15673) (regOne!31858 (regOne!31859 r!7292)))) b!5681321))

(assert (= (and b!5680467 ((_ is Union!15673) (regOne!31858 (regOne!31859 r!7292)))) b!5681323))

(declare-fun b!5681339 () Bool)

(declare-fun e!3496648 () Bool)

(declare-fun tp!1575251 () Bool)

(assert (=> b!5681339 (= e!3496648 tp!1575251)))

(declare-fun b!5681337 () Bool)

(assert (=> b!5681337 (= e!3496648 tp_is_empty!40599)))

(assert (=> b!5680467 (= tp!1575073 e!3496648)))

(declare-fun b!5681340 () Bool)

(declare-fun tp!1575252 () Bool)

(declare-fun tp!1575253 () Bool)

(assert (=> b!5681340 (= e!3496648 (and tp!1575252 tp!1575253))))

(declare-fun b!5681338 () Bool)

(declare-fun tp!1575250 () Bool)

(declare-fun tp!1575249 () Bool)

(assert (=> b!5681338 (= e!3496648 (and tp!1575250 tp!1575249))))

(assert (= (and b!5680467 ((_ is ElementMatch!15673) (regTwo!31858 (regOne!31859 r!7292)))) b!5681337))

(assert (= (and b!5680467 ((_ is Concat!24518) (regTwo!31858 (regOne!31859 r!7292)))) b!5681338))

(assert (= (and b!5680467 ((_ is Star!15673) (regTwo!31858 (regOne!31859 r!7292)))) b!5681339))

(assert (= (and b!5680467 ((_ is Union!15673) (regTwo!31858 (regOne!31859 r!7292)))) b!5681340))

(declare-fun b!5681343 () Bool)

(declare-fun e!3496649 () Bool)

(declare-fun tp!1575256 () Bool)

(assert (=> b!5681343 (= e!3496649 tp!1575256)))

(declare-fun b!5681341 () Bool)

(assert (=> b!5681341 (= e!3496649 tp_is_empty!40599)))

(assert (=> b!5680458 (= tp!1575066 e!3496649)))

(declare-fun b!5681344 () Bool)

(declare-fun tp!1575257 () Bool)

(declare-fun tp!1575258 () Bool)

(assert (=> b!5681344 (= e!3496649 (and tp!1575257 tp!1575258))))

(declare-fun b!5681342 () Bool)

(declare-fun tp!1575255 () Bool)

(declare-fun tp!1575254 () Bool)

(assert (=> b!5681342 (= e!3496649 (and tp!1575255 tp!1575254))))

(assert (= (and b!5680458 ((_ is ElementMatch!15673) (regOne!31858 (reg!16002 r!7292)))) b!5681341))

(assert (= (and b!5680458 ((_ is Concat!24518) (regOne!31858 (reg!16002 r!7292)))) b!5681342))

(assert (= (and b!5680458 ((_ is Star!15673) (regOne!31858 (reg!16002 r!7292)))) b!5681343))

(assert (= (and b!5680458 ((_ is Union!15673) (regOne!31858 (reg!16002 r!7292)))) b!5681344))

(declare-fun b!5681347 () Bool)

(declare-fun e!3496650 () Bool)

(declare-fun tp!1575261 () Bool)

(assert (=> b!5681347 (= e!3496650 tp!1575261)))

(declare-fun b!5681345 () Bool)

(assert (=> b!5681345 (= e!3496650 tp_is_empty!40599)))

(assert (=> b!5680458 (= tp!1575065 e!3496650)))

(declare-fun b!5681348 () Bool)

(declare-fun tp!1575262 () Bool)

(declare-fun tp!1575263 () Bool)

(assert (=> b!5681348 (= e!3496650 (and tp!1575262 tp!1575263))))

(declare-fun b!5681346 () Bool)

(declare-fun tp!1575260 () Bool)

(declare-fun tp!1575259 () Bool)

(assert (=> b!5681346 (= e!3496650 (and tp!1575260 tp!1575259))))

(assert (= (and b!5680458 ((_ is ElementMatch!15673) (regTwo!31858 (reg!16002 r!7292)))) b!5681345))

(assert (= (and b!5680458 ((_ is Concat!24518) (regTwo!31858 (reg!16002 r!7292)))) b!5681346))

(assert (= (and b!5680458 ((_ is Star!15673) (regTwo!31858 (reg!16002 r!7292)))) b!5681347))

(assert (= (and b!5680458 ((_ is Union!15673) (regTwo!31858 (reg!16002 r!7292)))) b!5681348))

(declare-fun b!5681351 () Bool)

(declare-fun e!3496651 () Bool)

(declare-fun tp!1575266 () Bool)

(assert (=> b!5681351 (= e!3496651 tp!1575266)))

(declare-fun b!5681349 () Bool)

(assert (=> b!5681349 (= e!3496651 tp_is_empty!40599)))

(assert (=> b!5680459 (= tp!1575067 e!3496651)))

(declare-fun b!5681352 () Bool)

(declare-fun tp!1575267 () Bool)

(declare-fun tp!1575268 () Bool)

(assert (=> b!5681352 (= e!3496651 (and tp!1575267 tp!1575268))))

(declare-fun b!5681350 () Bool)

(declare-fun tp!1575265 () Bool)

(declare-fun tp!1575264 () Bool)

(assert (=> b!5681350 (= e!3496651 (and tp!1575265 tp!1575264))))

(assert (= (and b!5680459 ((_ is ElementMatch!15673) (reg!16002 (reg!16002 r!7292)))) b!5681349))

(assert (= (and b!5680459 ((_ is Concat!24518) (reg!16002 (reg!16002 r!7292)))) b!5681350))

(assert (= (and b!5680459 ((_ is Star!15673) (reg!16002 (reg!16002 r!7292)))) b!5681351))

(assert (= (and b!5680459 ((_ is Union!15673) (reg!16002 (reg!16002 r!7292)))) b!5681352))

(declare-fun b!5681353 () Bool)

(declare-fun e!3496652 () Bool)

(declare-fun tp!1575269 () Bool)

(declare-fun tp!1575270 () Bool)

(assert (=> b!5681353 (= e!3496652 (and tp!1575269 tp!1575270))))

(assert (=> b!5680481 (= tp!1575087 e!3496652)))

(assert (= (and b!5680481 ((_ is Cons!63194) (exprs!5557 (h!69644 (t!376632 zl!343))))) b!5681353))

(declare-fun b!5681356 () Bool)

(declare-fun e!3496653 () Bool)

(declare-fun tp!1575273 () Bool)

(assert (=> b!5681356 (= e!3496653 tp!1575273)))

(declare-fun b!5681354 () Bool)

(assert (=> b!5681354 (= e!3496653 tp_is_empty!40599)))

(assert (=> b!5680495 (= tp!1575105 e!3496653)))

(declare-fun b!5681357 () Bool)

(declare-fun tp!1575274 () Bool)

(declare-fun tp!1575275 () Bool)

(assert (=> b!5681357 (= e!3496653 (and tp!1575274 tp!1575275))))

(declare-fun b!5681355 () Bool)

(declare-fun tp!1575272 () Bool)

(declare-fun tp!1575271 () Bool)

(assert (=> b!5681355 (= e!3496653 (and tp!1575272 tp!1575271))))

(assert (= (and b!5680495 ((_ is ElementMatch!15673) (regOne!31859 (regTwo!31858 r!7292)))) b!5681354))

(assert (= (and b!5680495 ((_ is Concat!24518) (regOne!31859 (regTwo!31858 r!7292)))) b!5681355))

(assert (= (and b!5680495 ((_ is Star!15673) (regOne!31859 (regTwo!31858 r!7292)))) b!5681356))

(assert (= (and b!5680495 ((_ is Union!15673) (regOne!31859 (regTwo!31858 r!7292)))) b!5681357))

(declare-fun b!5681361 () Bool)

(declare-fun e!3496661 () Bool)

(declare-fun tp!1575278 () Bool)

(assert (=> b!5681361 (= e!3496661 tp!1575278)))

(declare-fun b!5681358 () Bool)

(assert (=> b!5681358 (= e!3496661 tp_is_empty!40599)))

(assert (=> b!5680495 (= tp!1575106 e!3496661)))

(declare-fun b!5681362 () Bool)

(declare-fun tp!1575279 () Bool)

(declare-fun tp!1575280 () Bool)

(assert (=> b!5681362 (= e!3496661 (and tp!1575279 tp!1575280))))

(declare-fun b!5681359 () Bool)

(declare-fun tp!1575277 () Bool)

(declare-fun tp!1575276 () Bool)

(assert (=> b!5681359 (= e!3496661 (and tp!1575277 tp!1575276))))

(assert (= (and b!5680495 ((_ is ElementMatch!15673) (regTwo!31859 (regTwo!31858 r!7292)))) b!5681358))

(assert (= (and b!5680495 ((_ is Concat!24518) (regTwo!31859 (regTwo!31858 r!7292)))) b!5681359))

(assert (= (and b!5680495 ((_ is Star!15673) (regTwo!31859 (regTwo!31858 r!7292)))) b!5681361))

(assert (= (and b!5680495 ((_ is Union!15673) (regTwo!31859 (regTwo!31858 r!7292)))) b!5681362))

(declare-fun b_lambda!214803 () Bool)

(assert (= b_lambda!214791 (or d!1792716 b_lambda!214803)))

(declare-fun bs!1324076 () Bool)

(declare-fun d!1793098 () Bool)

(assert (= bs!1324076 (and d!1793098 d!1792716)))

(assert (=> bs!1324076 (= (dynLambda!24731 lambda!306078 (h!69642 (unfocusZipperList!1101 zl!343))) (validRegex!7409 (h!69642 (unfocusZipperList!1101 zl!343))))))

(declare-fun m!6640710 () Bool)

(assert (=> bs!1324076 m!6640710))

(assert (=> b!5680849 d!1793098))

(declare-fun b_lambda!214805 () Bool)

(assert (= b_lambda!214787 (or d!1792690 b_lambda!214805)))

(declare-fun bs!1324077 () Bool)

(declare-fun d!1793100 () Bool)

(assert (= bs!1324077 (and d!1793100 d!1792690)))

(assert (=> bs!1324077 (= (dynLambda!24731 lambda!306066 (h!69642 (exprs!5557 setElem!37995))) (validRegex!7409 (h!69642 (exprs!5557 setElem!37995))))))

(declare-fun m!6640714 () Bool)

(assert (=> bs!1324077 m!6640714))

(assert (=> b!5680718 d!1793100))

(declare-fun b_lambda!214807 () Bool)

(assert (= b_lambda!214797 (or b!5679736 b_lambda!214807)))

(assert (=> d!1792998 d!1792736))

(declare-fun b_lambda!214809 () Bool)

(assert (= b_lambda!214785 (or d!1792718 b_lambda!214809)))

(declare-fun bs!1324078 () Bool)

(declare-fun d!1793104 () Bool)

(assert (= bs!1324078 (and d!1793104 d!1792718)))

(assert (=> bs!1324078 (= (dynLambda!24731 lambda!306081 (h!69642 lt!2270257)) (validRegex!7409 (h!69642 lt!2270257)))))

(declare-fun m!6640716 () Bool)

(assert (=> bs!1324078 m!6640716))

(assert (=> b!5680606 d!1793104))

(declare-fun b_lambda!214811 () Bool)

(assert (= b_lambda!214783 (or d!1792680 b_lambda!214811)))

(declare-fun bs!1324079 () Bool)

(declare-fun d!1793106 () Bool)

(assert (= bs!1324079 (and d!1793106 d!1792680)))

(assert (=> bs!1324079 (= (dynLambda!24731 lambda!306065 (h!69642 (exprs!5557 (h!69644 zl!343)))) (validRegex!7409 (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(declare-fun m!6640718 () Bool)

(assert (=> bs!1324079 m!6640718))

(assert (=> b!5680524 d!1793106))

(declare-fun b_lambda!214813 () Bool)

(assert (= b_lambda!214799 (or d!1792602 b_lambda!214813)))

(declare-fun bs!1324080 () Bool)

(declare-fun d!1793108 () Bool)

(assert (= bs!1324080 (and d!1793108 d!1792602)))

(assert (=> bs!1324080 (= (dynLambda!24731 lambda!306034 (h!69642 (exprs!5557 (h!69644 zl!343)))) (validRegex!7409 (h!69642 (exprs!5557 (h!69644 zl!343)))))))

(assert (=> bs!1324080 m!6640718))

(assert (=> b!5681079 d!1793108))

(declare-fun b_lambda!214815 () Bool)

(assert (= b_lambda!214789 (or b!5679736 b_lambda!214815)))

(assert (=> d!1792876 d!1792738))

(check-sat (not bm!431271) (not bm!431418) (not b!5680910) (not b!5681041) (not bm!431284) (not b!5681167) (not b!5681114) (not b!5680911) (not d!1792788) (not b!5681177) (not b!5680937) (not bm!431332) (not d!1792832) (not b!5680537) (not b!5681232) (not b!5681006) (not b!5680848) (not b!5681278) (not bm!431388) (not b!5681348) (not b!5681212) (not b!5680839) (not b!5680706) (not b!5681362) (not b!5680704) (not bm!431433) (not b!5681351) (not bm!431310) (not d!1792742) (not b!5680498) (not b!5680628) (not bm!431377) (not d!1792954) (not b!5681221) (not bm!431399) (not b!5681040) (not b!5681274) (not b!5681310) (not b!5680511) (not bm!431331) (not b!5681237) (not d!1793064) (not b!5681346) (not b!5680608) (not b!5681001) (not b!5680530) (not b!5681228) (not bm!431348) (not b!5680893) (not d!1792958) (not b!5681316) (not b!5680518) (not b!5680828) (not bm!431270) (not d!1792840) (not b!5680525) (not b!5680651) (not b!5681242) (not b!5681312) (not bm!431349) (not bm!431292) (not d!1792874) (not d!1793052) (not b!5681127) (not bs!1324079) (not bm!431372) (not setNonEmpty!38004) (not b!5681307) (not b!5681204) (not d!1792884) (not setNonEmpty!38009) (not d!1792752) (not b!5681003) (not b!5681320) (not b!5681309) (not b!5681229) (not d!1792932) (not b!5680620) (not d!1793024) (not d!1792782) (not b!5681352) (not bm!431356) (not d!1793048) (not b!5681250) (not b!5681343) (not b!5680714) (not b!5681251) (not b!5680516) (not b!5680657) (not b!5680794) (not b!5681308) (not b!5680502) (not b!5680711) (not d!1792846) (not b!5681317) (not bm!431431) (not b!5680958) (not bm!431283) (not b!5681295) (not b!5680515) (not b!5680874) (not bm!431386) (not bm!431316) (not bm!431327) (not b!5681213) (not b!5681344) (not d!1792990) (not b!5681272) (not d!1792912) (not b!5680875) (not d!1793032) (not b!5680713) (not bm!431396) (not b!5681292) (not b!5680719) (not b!5681248) (not b!5681170) (not b!5681169) (not b!5681252) (not b!5680944) (not b!5681210) (not d!1792934) (not b!5680939) (not b!5681259) (not d!1792842) (not bm!431287) (not bm!431435) (not b!5680691) (not b!5680873) (not b!5681260) (not bm!431329) (not b_lambda!214811) (not b!5680625) (not b!5680510) (not b!5681318) (not b!5681180) (not b!5681338) (not d!1792904) (not b!5681000) (not d!1793040) (not bm!431397) (not b!5681291) (not b!5680551) (not b!5680945) (not d!1792994) (not bm!431274) (not b!5681205) (not d!1792966) (not bm!431359) (not bs!1324080) (not b!5681230) (not b!5681236) (not bm!431369) (not bm!431376) (not d!1792748) (not bm!431421) (not bs!1324077) (not bm!431430) (not bm!431343) (not bm!431345) (not b!5681342) (not b!5680959) (not b!5680627) (not b!5681231) (not b!5681139) (not b!5681244) (not b!5681355) (not b!5680538) (not b!5681347) (not d!1792910) (not setNonEmpty!38005) (not bm!431268) (not b!5681359) (not b!5680621) (not bs!1324076) (not bm!431358) (not b!5680938) (not b!5680850) (not bm!431272) tp_is_empty!40599 (not bm!431295) (not b!5680730) (not b!5681206) (not b!5681235) (not b!5681196) (not bs!1324078) (not b!5680987) (not b!5680886) (not b!5680914) (not b!5681174) (not b!5680514) (not b!5680560) (not bm!431309) (not b_lambda!214815) (not b!5681277) (not b!5681314) (not b!5680618) (not d!1792998) (not bm!431436) (not b!5681339) (not b!5681255) (not b!5681361) (not d!1792826) (not b!5681282) (not b!5680692) (not b!5681005) (not b!5680805) (not d!1793010) (not d!1792962) (not b!5680915) (not b!5680658) (not d!1792758) (not bm!431398) (not b!5681290) (not d!1792978) (not b!5680501) (not d!1792780) (not b!5680554) (not b!5680827) (not d!1792820) (not bm!431294) (not b!5680804) (not d!1793058) (not b!5680513) (not b!5681246) (not b!5681176) (not b!5681294) (not d!1792760) (not b!5681113) (not d!1793072) (not b!5681214) (not b!5681288) (not b!5680965) (not b!5680966) (not b!5680855) (not b!5681256) (not bm!431308) (not b!5681258) (not b_lambda!214807) (not d!1792950) (not bm!431385) (not b!5680561) (not b_lambda!214803) (not b!5681008) (not d!1792892) (not b!5680558) (not bm!431416) (not b!5681243) (not b_lambda!214805) (not b!5681220) (not d!1792942) (not b!5680940) (not bm!431389) (not b!5681224) (not b!5680780) (not b_lambda!214813) (not b!5681007) (not b!5681078) (not b!5680528) (not bm!431346) (not b!5681323) (not b!5680535) (not b!5681286) (not d!1792754) (not bm!431307) (not b!5681233) (not bm!431288) (not b!5680602) (not b!5681254) (not b!5681037) (not d!1792866) (not d!1792824) (not d!1792928) (not b!5680707) (not d!1792868) (not b!5681140) (not b!5680583) (not b_lambda!214779) (not b!5681080) (not b!5681353) (not b!5681209) (not b!5681350) (not b!5680856) (not bm!431371) (not bm!431317) (not b!5681296) (not b!5681357) (not b!5680553) (not b!5681247) (not b!5680548) (not b!5681340) (not d!1792876) (not b!5681321) (not d!1792778) (not b!5681017) (not b!5681356) (not b!5680603) (not b!5680781) (not b_lambda!214809) (not d!1792860) (not b!5681271) (not d!1792970) (not bm!431314) (not b!5680531) (not bm!431420) (not b!5680701) (not b!5681273) (not b!5681280) (not bm!431269) (not b!5681208) (not b!5681181) (not d!1792792) (not b!5681287) (not bm!431312) (not b!5681222) (not b!5681223) (not b!5681276) (not b_lambda!214781) (not b!5681281) (not b!5680607) (not b!5681313))
(check-sat)
