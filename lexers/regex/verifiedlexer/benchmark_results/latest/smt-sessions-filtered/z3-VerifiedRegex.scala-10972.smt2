; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!568126 () Bool)

(assert start!568126)

(declare-fun b!5410653 () Bool)

(assert (=> b!5410653 true))

(assert (=> b!5410653 true))

(declare-fun lambda!282523 () Int)

(declare-fun lambda!282522 () Int)

(assert (=> b!5410653 (not (= lambda!282523 lambda!282522))))

(assert (=> b!5410653 true))

(assert (=> b!5410653 true))

(declare-fun b!5410669 () Bool)

(assert (=> b!5410669 true))

(declare-fun b!5410650 () Bool)

(assert (=> b!5410650 true))

(declare-fun bs!1249556 () Bool)

(declare-fun b!5410672 () Bool)

(assert (= bs!1249556 (and b!5410672 b!5410653)))

(declare-datatypes ((C!30652 0))(
  ( (C!30653 (val!25028 Int)) )
))
(declare-datatypes ((Regex!15191 0))(
  ( (ElementMatch!15191 (c!943211 C!30652)) (Concat!24036 (regOne!30894 Regex!15191) (regTwo!30894 Regex!15191)) (EmptyExpr!15191) (Star!15191 (reg!15520 Regex!15191)) (EmptyLang!15191) (Union!15191 (regOne!30895 Regex!15191) (regTwo!30895 Regex!15191)) )
))
(declare-fun r!7292 () Regex!15191)

(declare-fun lambda!282527 () Int)

(declare-fun lt!2206708 () Regex!15191)

(assert (=> bs!1249556 (= (= lt!2206708 (regOne!30894 r!7292)) (= lambda!282527 lambda!282522))))

(assert (=> bs!1249556 (not (= lambda!282527 lambda!282523))))

(assert (=> b!5410672 true))

(assert (=> b!5410672 true))

(assert (=> b!5410672 true))

(declare-fun lambda!282528 () Int)

(assert (=> bs!1249556 (not (= lambda!282528 lambda!282522))))

(assert (=> bs!1249556 (= (= lt!2206708 (regOne!30894 r!7292)) (= lambda!282528 lambda!282523))))

(assert (=> b!5410672 (not (= lambda!282528 lambda!282527))))

(assert (=> b!5410672 true))

(assert (=> b!5410672 true))

(assert (=> b!5410672 true))

(declare-fun bs!1249557 () Bool)

(declare-fun b!5410658 () Bool)

(assert (= bs!1249557 (and b!5410658 b!5410653)))

(declare-fun lt!2206725 () Regex!15191)

(declare-fun lambda!282529 () Int)

(declare-datatypes ((List!61872 0))(
  ( (Nil!61748) (Cons!61748 (h!68196 C!30652) (t!375095 List!61872)) )
))
(declare-datatypes ((tuple2!64780 0))(
  ( (tuple2!64781 (_1!35693 List!61872) (_2!35693 List!61872)) )
))
(declare-fun lt!2206741 () tuple2!64780)

(declare-fun s!2326 () List!61872)

(assert (=> bs!1249557 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282529 lambda!282522))))

(assert (=> bs!1249557 (not (= lambda!282529 lambda!282523))))

(declare-fun bs!1249558 () Bool)

(assert (= bs!1249558 (and b!5410658 b!5410672)))

(assert (=> bs!1249558 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282529 lambda!282527))))

(assert (=> bs!1249558 (not (= lambda!282529 lambda!282528))))

(assert (=> b!5410658 true))

(assert (=> b!5410658 true))

(assert (=> b!5410658 true))

(declare-fun lambda!282530 () Int)

(assert (=> bs!1249558 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282530 lambda!282528))))

(assert (=> bs!1249557 (not (= lambda!282530 lambda!282522))))

(assert (=> bs!1249557 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282530 lambda!282523))))

(assert (=> bs!1249558 (not (= lambda!282530 lambda!282527))))

(assert (=> b!5410658 (not (= lambda!282530 lambda!282529))))

(assert (=> b!5410658 true))

(assert (=> b!5410658 true))

(assert (=> b!5410658 true))

(declare-fun lambda!282531 () Int)

(assert (=> bs!1249558 (not (= lambda!282531 lambda!282528))))

(assert (=> b!5410658 (not (= lambda!282531 lambda!282530))))

(assert (=> bs!1249557 (not (= lambda!282531 lambda!282522))))

(assert (=> bs!1249557 (not (= lambda!282531 lambda!282523))))

(assert (=> bs!1249558 (not (= lambda!282531 lambda!282527))))

(assert (=> b!5410658 (not (= lambda!282531 lambda!282529))))

(assert (=> b!5410658 true))

(assert (=> b!5410658 true))

(assert (=> b!5410658 true))

(declare-fun b!5410636 () Bool)

(declare-datatypes ((Unit!154286 0))(
  ( (Unit!154287) )
))
(declare-fun e!3354084 () Unit!154286)

(declare-fun Unit!154288 () Unit!154286)

(assert (=> b!5410636 (= e!3354084 Unit!154288)))

(declare-fun b!5410637 () Bool)

(declare-fun e!3354082 () Bool)

(declare-fun e!3354079 () Bool)

(assert (=> b!5410637 (= e!3354082 e!3354079)))

(declare-fun res!2301285 () Bool)

(assert (=> b!5410637 (=> res!2301285 e!3354079)))

(declare-fun lt!2206719 () List!61872)

(assert (=> b!5410637 (= res!2301285 (not (= s!2326 lt!2206719)))))

(declare-fun lt!2206704 () tuple2!64780)

(declare-fun ++!13555 (List!61872 List!61872) List!61872)

(assert (=> b!5410637 (= lt!2206719 (++!13555 (_1!35693 lt!2206704) (_2!35693 lt!2206704)))))

(declare-datatypes ((Option!15302 0))(
  ( (None!15301) (Some!15301 (v!51330 tuple2!64780)) )
))
(declare-fun lt!2206751 () Option!15302)

(declare-fun get!21289 (Option!15302) tuple2!64780)

(assert (=> b!5410637 (= lt!2206704 (get!21289 lt!2206751))))

(declare-fun isDefined!12005 (Option!15302) Bool)

(assert (=> b!5410637 (isDefined!12005 lt!2206751)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61873 0))(
  ( (Nil!61749) (Cons!61749 (h!68197 Regex!15191) (t!375096 List!61873)) )
))
(declare-datatypes ((Context!9150 0))(
  ( (Context!9151 (exprs!5075 List!61873)) )
))
(declare-fun lt!2206713 () (InoxSet Context!9150))

(declare-fun lt!2206746 () (InoxSet Context!9150))

(declare-fun findConcatSeparationZippers!48 ((InoxSet Context!9150) (InoxSet Context!9150) List!61872 List!61872 List!61872) Option!15302)

(assert (=> b!5410637 (= lt!2206751 (findConcatSeparationZippers!48 lt!2206746 lt!2206713 Nil!61748 s!2326 s!2326))))

(declare-fun lt!2206711 () Context!9150)

(declare-fun lt!2206754 () Unit!154286)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!48 ((InoxSet Context!9150) Context!9150 List!61872) Unit!154286)

(assert (=> b!5410637 (= lt!2206754 (lemmaConcatZipperMatchesStringThenFindConcatDefined!48 lt!2206746 lt!2206711 s!2326))))

(declare-fun b!5410638 () Bool)

(declare-fun Unit!154289 () Unit!154286)

(assert (=> b!5410638 (= e!3354084 Unit!154289)))

(declare-fun lt!2206745 () Unit!154286)

(declare-fun lt!2206710 () (InoxSet Context!9150))

(declare-fun lt!2206732 () (InoxSet Context!9150))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!428 ((InoxSet Context!9150) (InoxSet Context!9150) List!61872) Unit!154286)

(assert (=> b!5410638 (= lt!2206745 (lemmaZipperConcatMatchesSameAsBothZippers!428 lt!2206710 lt!2206732 (t!375095 s!2326)))))

(declare-fun res!2301300 () Bool)

(declare-fun matchZipper!1435 ((InoxSet Context!9150) List!61872) Bool)

(assert (=> b!5410638 (= res!2301300 (matchZipper!1435 lt!2206710 (t!375095 s!2326)))))

(declare-fun e!3354072 () Bool)

(assert (=> b!5410638 (=> res!2301300 e!3354072)))

(assert (=> b!5410638 (= (matchZipper!1435 ((_ map or) lt!2206710 lt!2206732) (t!375095 s!2326)) e!3354072)))

(declare-fun b!5410639 () Bool)

(declare-fun e!3354081 () Bool)

(declare-fun e!3354083 () Bool)

(assert (=> b!5410639 (= e!3354081 e!3354083)))

(declare-fun res!2301277 () Bool)

(assert (=> b!5410639 (=> res!2301277 e!3354083)))

(declare-fun lt!2206755 () Bool)

(declare-fun lt!2206728 () (InoxSet Context!9150))

(assert (=> b!5410639 (= res!2301277 (not (= lt!2206755 (matchZipper!1435 lt!2206728 (t!375095 s!2326)))))))

(declare-fun lt!2206739 () (InoxSet Context!9150))

(assert (=> b!5410639 (= lt!2206755 (matchZipper!1435 lt!2206739 s!2326))))

(declare-fun b!5410640 () Bool)

(declare-fun e!3354069 () Bool)

(declare-fun tp!1495668 () Bool)

(assert (=> b!5410640 (= e!3354069 tp!1495668)))

(declare-fun b!5410641 () Bool)

(declare-fun e!3354078 () Bool)

(declare-fun e!3354066 () Bool)

(assert (=> b!5410641 (= e!3354078 e!3354066)))

(declare-fun res!2301305 () Bool)

(assert (=> b!5410641 (=> res!2301305 e!3354066)))

(declare-fun e!3354080 () Bool)

(assert (=> b!5410641 (= res!2301305 e!3354080)))

(declare-fun res!2301294 () Bool)

(assert (=> b!5410641 (=> (not res!2301294) (not e!3354080))))

(declare-fun lt!2206734 () Bool)

(assert (=> b!5410641 (= res!2301294 (not lt!2206734))))

(assert (=> b!5410641 (= lt!2206734 (matchZipper!1435 lt!2206710 (t!375095 s!2326)))))

(declare-fun b!5410642 () Bool)

(declare-fun e!3354085 () Bool)

(declare-fun tp!1495665 () Bool)

(declare-fun tp!1495671 () Bool)

(assert (=> b!5410642 (= e!3354085 (and tp!1495665 tp!1495671))))

(declare-fun b!5410643 () Bool)

(declare-fun e!3354064 () Bool)

(assert (=> b!5410643 (= e!3354064 e!3354081)))

(declare-fun res!2301288 () Bool)

(assert (=> b!5410643 (=> res!2301288 e!3354081)))

(declare-fun lt!2206727 () (InoxSet Context!9150))

(assert (=> b!5410643 (= res!2301288 (not (= lt!2206728 lt!2206727)))))

(declare-fun lt!2206715 () Context!9150)

(declare-fun lambda!282524 () Int)

(declare-fun flatMap!918 ((InoxSet Context!9150) Int) (InoxSet Context!9150))

(declare-fun derivationStepZipperUp!563 (Context!9150 C!30652) (InoxSet Context!9150))

(assert (=> b!5410643 (= (flatMap!918 lt!2206739 lambda!282524) (derivationStepZipperUp!563 lt!2206715 (h!68196 s!2326)))))

(declare-fun lt!2206738 () Unit!154286)

(declare-fun lemmaFlatMapOnSingletonSet!450 ((InoxSet Context!9150) Context!9150 Int) Unit!154286)

(assert (=> b!5410643 (= lt!2206738 (lemmaFlatMapOnSingletonSet!450 lt!2206739 lt!2206715 lambda!282524))))

(declare-fun lt!2206747 () (InoxSet Context!9150))

(assert (=> b!5410643 (= lt!2206747 (derivationStepZipperUp!563 lt!2206715 (h!68196 s!2326)))))

(declare-fun derivationStepZipper!1430 ((InoxSet Context!9150) C!30652) (InoxSet Context!9150))

(assert (=> b!5410643 (= lt!2206728 (derivationStepZipper!1430 lt!2206739 (h!68196 s!2326)))))

(assert (=> b!5410643 (= lt!2206739 (store ((as const (Array Context!9150 Bool)) false) lt!2206715 true))))

(declare-fun lt!2206730 () List!61873)

(assert (=> b!5410643 (= lt!2206715 (Context!9151 (Cons!61749 (reg!15520 (regOne!30894 r!7292)) lt!2206730)))))

(declare-fun tp!1495672 () Bool)

(declare-fun b!5410644 () Bool)

(declare-datatypes ((List!61874 0))(
  ( (Nil!61750) (Cons!61750 (h!68198 Context!9150) (t!375097 List!61874)) )
))
(declare-fun zl!343 () List!61874)

(declare-fun e!3354075 () Bool)

(declare-fun e!3354076 () Bool)

(declare-fun inv!81224 (Context!9150) Bool)

(assert (=> b!5410644 (= e!3354076 (and (inv!81224 (h!68198 zl!343)) e!3354075 tp!1495672))))

(declare-fun b!5410645 () Bool)

(declare-fun e!3354086 () Bool)

(declare-fun e!3354067 () Bool)

(assert (=> b!5410645 (= e!3354086 e!3354067)))

(declare-fun res!2301307 () Bool)

(assert (=> b!5410645 (=> res!2301307 e!3354067)))

(declare-fun lt!2206753 () Regex!15191)

(declare-fun unfocusZipper!933 (List!61874) Regex!15191)

(assert (=> b!5410645 (= res!2301307 (not (= (unfocusZipper!933 (Cons!61750 lt!2206715 Nil!61750)) lt!2206753)))))

(declare-fun lt!2206706 () Regex!15191)

(assert (=> b!5410645 (= lt!2206753 (Concat!24036 (reg!15520 (regOne!30894 r!7292)) lt!2206706))))

(declare-fun b!5410646 () Bool)

(declare-fun res!2301274 () Bool)

(assert (=> b!5410646 (=> res!2301274 e!3354079)))

(assert (=> b!5410646 (= res!2301274 (not (matchZipper!1435 lt!2206746 (_1!35693 lt!2206704))))))

(declare-fun b!5410647 () Bool)

(declare-fun tp!1495667 () Bool)

(assert (=> b!5410647 (= e!3354085 tp!1495667)))

(declare-fun b!5410648 () Bool)

(declare-fun tp_is_empty!39635 () Bool)

(assert (=> b!5410648 (= e!3354085 tp_is_empty!39635)))

(declare-fun b!5410649 () Bool)

(declare-fun e!3354062 () Bool)

(declare-fun nullable!5360 (Regex!15191) Bool)

(assert (=> b!5410649 (= e!3354062 (nullable!5360 (regOne!30894 (regOne!30894 r!7292))))))

(assert (=> b!5410650 (= e!3354066 e!3354082)))

(declare-fun res!2301297 () Bool)

(assert (=> b!5410650 (=> res!2301297 e!3354082)))

(declare-fun appendTo!50 ((InoxSet Context!9150) Context!9150) (InoxSet Context!9150))

(assert (=> b!5410650 (= res!2301297 (not (= (appendTo!50 lt!2206746 lt!2206711) lt!2206739)))))

(declare-fun lt!2206698 () List!61873)

(declare-fun lambda!282525 () Int)

(declare-fun map!14171 ((InoxSet Context!9150) Int) (InoxSet Context!9150))

(declare-fun ++!13556 (List!61873 List!61873) List!61873)

(assert (=> b!5410650 (= (map!14171 lt!2206746 lambda!282525) (store ((as const (Array Context!9150 Bool)) false) (Context!9151 (++!13556 lt!2206698 lt!2206730)) true))))

(declare-fun lambda!282526 () Int)

(declare-fun lt!2206723 () Unit!154286)

(declare-fun lemmaConcatPreservesForall!216 (List!61873 List!61873 Int) Unit!154286)

(assert (=> b!5410650 (= lt!2206723 (lemmaConcatPreservesForall!216 lt!2206698 lt!2206730 lambda!282526))))

(declare-fun lt!2206699 () Unit!154286)

(declare-fun lt!2206697 () Context!9150)

(declare-fun lemmaMapOnSingletonSet!50 ((InoxSet Context!9150) Context!9150 Int) Unit!154286)

(assert (=> b!5410650 (= lt!2206699 (lemmaMapOnSingletonSet!50 lt!2206746 lt!2206697 lambda!282525))))

(declare-fun b!5410651 () Bool)

(declare-fun res!2301304 () Bool)

(declare-fun e!3354063 () Bool)

(assert (=> b!5410651 (=> res!2301304 e!3354063)))

(get-info :version)

(assert (=> b!5410651 (= res!2301304 (or ((_ is EmptyExpr!15191) r!7292) ((_ is EmptyLang!15191) r!7292) ((_ is ElementMatch!15191) r!7292) ((_ is Union!15191) r!7292) (not ((_ is Concat!24036) r!7292))))))

(declare-fun b!5410652 () Bool)

(declare-fun e!3354077 () Bool)

(declare-fun e!3354068 () Bool)

(assert (=> b!5410652 (= e!3354077 e!3354068)))

(declare-fun res!2301275 () Bool)

(assert (=> b!5410652 (=> res!2301275 e!3354068)))

(declare-fun lt!2206740 () List!61874)

(assert (=> b!5410652 (= res!2301275 (not (= (unfocusZipper!933 lt!2206740) lt!2206706)))))

(assert (=> b!5410652 (= lt!2206740 (Cons!61750 lt!2206711 Nil!61750))))

(declare-fun e!3354061 () Bool)

(assert (=> b!5410653 (= e!3354063 e!3354061)))

(declare-fun res!2301289 () Bool)

(assert (=> b!5410653 (=> res!2301289 e!3354061)))

(declare-fun lt!2206743 () Bool)

(declare-fun lt!2206717 () Bool)

(assert (=> b!5410653 (= res!2301289 (or (not (= lt!2206717 lt!2206743)) ((_ is Nil!61748) s!2326)))))

(declare-fun Exists!2372 (Int) Bool)

(assert (=> b!5410653 (= (Exists!2372 lambda!282522) (Exists!2372 lambda!282523))))

(declare-fun lt!2206742 () Unit!154286)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1026 (Regex!15191 Regex!15191 List!61872) Unit!154286)

(assert (=> b!5410653 (= lt!2206742 (lemmaExistCutMatchRandMatchRSpecEquivalent!1026 (regOne!30894 r!7292) (regTwo!30894 r!7292) s!2326))))

(assert (=> b!5410653 (= lt!2206743 (Exists!2372 lambda!282522))))

(declare-fun findConcatSeparation!1716 (Regex!15191 Regex!15191 List!61872 List!61872 List!61872) Option!15302)

(assert (=> b!5410653 (= lt!2206743 (isDefined!12005 (findConcatSeparation!1716 (regOne!30894 r!7292) (regTwo!30894 r!7292) Nil!61748 s!2326 s!2326)))))

(declare-fun lt!2206752 () Unit!154286)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1480 (Regex!15191 Regex!15191 List!61872) Unit!154286)

(assert (=> b!5410653 (= lt!2206752 (lemmaFindConcatSeparationEquivalentToExists!1480 (regOne!30894 r!7292) (regTwo!30894 r!7292) s!2326))))

(declare-fun b!5410654 () Bool)

(assert (=> b!5410654 (= e!3354072 (matchZipper!1435 lt!2206732 (t!375095 s!2326)))))

(declare-fun b!5410655 () Bool)

(declare-fun res!2301295 () Bool)

(declare-fun e!3354073 () Bool)

(assert (=> b!5410655 (=> res!2301295 e!3354073)))

(assert (=> b!5410655 (= res!2301295 e!3354062)))

(declare-fun res!2301278 () Bool)

(assert (=> b!5410655 (=> (not res!2301278) (not e!3354062))))

(assert (=> b!5410655 (= res!2301278 ((_ is Concat!24036) (regOne!30894 r!7292)))))

(declare-fun b!5410656 () Bool)

(declare-fun res!2301298 () Bool)

(assert (=> b!5410656 (=> res!2301298 e!3354078)))

(declare-fun lt!2206731 () Bool)

(assert (=> b!5410656 (= res!2301298 (not lt!2206731))))

(declare-fun b!5410657 () Bool)

(declare-fun res!2301281 () Bool)

(declare-fun e!3354060 () Bool)

(assert (=> b!5410657 (=> (not res!2301281) (not e!3354060))))

(declare-fun z!1189 () (InoxSet Context!9150))

(declare-fun toList!8975 ((InoxSet Context!9150)) List!61874)

(assert (=> b!5410657 (= res!2301281 (= (toList!8975 z!1189) zl!343))))

(declare-fun e!3354070 () Bool)

(declare-fun validRegex!6927 (Regex!15191) Bool)

(assert (=> b!5410658 (= e!3354070 (validRegex!6927 (reg!15520 (regOne!30894 r!7292))))))

(assert (=> b!5410658 (= (Exists!2372 lambda!282529) (Exists!2372 lambda!282531))))

(declare-fun lt!2206756 () Unit!154286)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!402 (Regex!15191 List!61872) Unit!154286)

(assert (=> b!5410658 (= lt!2206756 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!402 (reg!15520 (regOne!30894 r!7292)) (_1!35693 lt!2206741)))))

(assert (=> b!5410658 (= (Exists!2372 lambda!282529) (Exists!2372 lambda!282530))))

(declare-fun lt!2206716 () Unit!154286)

(assert (=> b!5410658 (= lt!2206716 (lemmaExistCutMatchRandMatchRSpecEquivalent!1026 (reg!15520 (regOne!30894 r!7292)) lt!2206725 (_1!35693 lt!2206741)))))

(assert (=> b!5410658 (= (isDefined!12005 (findConcatSeparation!1716 (reg!15520 (regOne!30894 r!7292)) lt!2206725 Nil!61748 (_1!35693 lt!2206741) (_1!35693 lt!2206741))) (Exists!2372 lambda!282529))))

(declare-fun lt!2206729 () Unit!154286)

(assert (=> b!5410658 (= lt!2206729 (lemmaFindConcatSeparationEquivalentToExists!1480 (reg!15520 (regOne!30894 r!7292)) lt!2206725 (_1!35693 lt!2206741)))))

(declare-fun matchRSpec!2294 (Regex!15191 List!61872) Bool)

(assert (=> b!5410658 (matchRSpec!2294 lt!2206708 (_1!35693 lt!2206741))))

(declare-fun lt!2206758 () Unit!154286)

(declare-fun mainMatchTheorem!2294 (Regex!15191 List!61872) Unit!154286)

(assert (=> b!5410658 (= lt!2206758 (mainMatchTheorem!2294 lt!2206708 (_1!35693 lt!2206741)))))

(declare-fun b!5410659 () Bool)

(assert (=> b!5410659 (= e!3354080 (not (matchZipper!1435 lt!2206732 (t!375095 s!2326))))))

(declare-fun res!2301306 () Bool)

(assert (=> start!568126 (=> (not res!2301306) (not e!3354060))))

(assert (=> start!568126 (= res!2301306 (validRegex!6927 r!7292))))

(assert (=> start!568126 e!3354060))

(assert (=> start!568126 e!3354085))

(declare-fun condSetEmpty!35249 () Bool)

(assert (=> start!568126 (= condSetEmpty!35249 (= z!1189 ((as const (Array Context!9150 Bool)) false)))))

(declare-fun setRes!35249 () Bool)

(assert (=> start!568126 setRes!35249))

(assert (=> start!568126 e!3354076))

(declare-fun e!3354074 () Bool)

(assert (=> start!568126 e!3354074))

(declare-fun tp!1495670 () Bool)

(declare-fun setNonEmpty!35249 () Bool)

(declare-fun setElem!35249 () Context!9150)

(assert (=> setNonEmpty!35249 (= setRes!35249 (and tp!1495670 (inv!81224 setElem!35249) e!3354069))))

(declare-fun setRest!35249 () (InoxSet Context!9150))

(assert (=> setNonEmpty!35249 (= z!1189 ((_ map or) (store ((as const (Array Context!9150 Bool)) false) setElem!35249 true) setRest!35249))))

(declare-fun b!5410660 () Bool)

(assert (=> b!5410660 (= e!3354083 e!3354086)))

(declare-fun res!2301290 () Bool)

(assert (=> b!5410660 (=> res!2301290 e!3354086)))

(assert (=> b!5410660 (= res!2301290 (not (= r!7292 lt!2206706)))))

(assert (=> b!5410660 (= lt!2206706 (Concat!24036 lt!2206725 (regTwo!30894 r!7292)))))

(declare-fun setIsEmpty!35249 () Bool)

(assert (=> setIsEmpty!35249 setRes!35249))

(declare-fun b!5410661 () Bool)

(declare-fun res!2301292 () Bool)

(assert (=> b!5410661 (=> res!2301292 e!3354063)))

(declare-fun isEmpty!33736 (List!61874) Bool)

(assert (=> b!5410661 (= res!2301292 (not (isEmpty!33736 (t!375097 zl!343))))))

(declare-fun b!5410662 () Bool)

(declare-fun e!3354065 () Bool)

(assert (=> b!5410662 (= e!3354060 e!3354065)))

(declare-fun res!2301280 () Bool)

(assert (=> b!5410662 (=> (not res!2301280) (not e!3354065))))

(declare-fun lt!2206736 () Regex!15191)

(assert (=> b!5410662 (= res!2301280 (= r!7292 lt!2206736))))

(assert (=> b!5410662 (= lt!2206736 (unfocusZipper!933 zl!343))))

(declare-fun b!5410663 () Bool)

(declare-fun tp!1495664 () Bool)

(assert (=> b!5410663 (= e!3354074 (and tp_is_empty!39635 tp!1495664))))

(declare-fun b!5410664 () Bool)

(declare-fun res!2301283 () Bool)

(assert (=> b!5410664 (=> res!2301283 e!3354063)))

(assert (=> b!5410664 (= res!2301283 (not ((_ is Cons!61749) (exprs!5075 (h!68198 zl!343)))))))

(declare-fun b!5410665 () Bool)

(assert (=> b!5410665 (= e!3354067 e!3354077)))

(declare-fun res!2301284 () Bool)

(assert (=> b!5410665 (=> res!2301284 e!3354077)))

(declare-fun lt!2206703 () List!61874)

(assert (=> b!5410665 (= res!2301284 (not (= (unfocusZipper!933 lt!2206703) (reg!15520 (regOne!30894 r!7292)))))))

(assert (=> b!5410665 (= lt!2206703 (Cons!61750 lt!2206697 Nil!61750))))

(assert (=> b!5410665 (= (flatMap!918 lt!2206713 lambda!282524) (derivationStepZipperUp!563 lt!2206711 (h!68196 s!2326)))))

(declare-fun lt!2206744 () Unit!154286)

(assert (=> b!5410665 (= lt!2206744 (lemmaFlatMapOnSingletonSet!450 lt!2206713 lt!2206711 lambda!282524))))

(assert (=> b!5410665 (= (flatMap!918 lt!2206746 lambda!282524) (derivationStepZipperUp!563 lt!2206697 (h!68196 s!2326)))))

(declare-fun lt!2206720 () Unit!154286)

(assert (=> b!5410665 (= lt!2206720 (lemmaFlatMapOnSingletonSet!450 lt!2206746 lt!2206697 lambda!282524))))

(declare-fun lt!2206735 () (InoxSet Context!9150))

(assert (=> b!5410665 (= lt!2206735 (derivationStepZipperUp!563 lt!2206711 (h!68196 s!2326)))))

(declare-fun lt!2206707 () (InoxSet Context!9150))

(assert (=> b!5410665 (= lt!2206707 (derivationStepZipperUp!563 lt!2206697 (h!68196 s!2326)))))

(assert (=> b!5410665 (= lt!2206713 (store ((as const (Array Context!9150 Bool)) false) lt!2206711 true))))

(assert (=> b!5410665 (= lt!2206746 (store ((as const (Array Context!9150 Bool)) false) lt!2206697 true))))

(assert (=> b!5410665 (= lt!2206697 (Context!9151 lt!2206698))))

(assert (=> b!5410665 (= lt!2206698 (Cons!61749 (reg!15520 (regOne!30894 r!7292)) Nil!61749))))

(declare-fun b!5410666 () Bool)

(declare-fun res!2301273 () Bool)

(assert (=> b!5410666 (=> res!2301273 e!3354083)))

(assert (=> b!5410666 (= res!2301273 (not (= lt!2206736 r!7292)))))

(declare-fun b!5410667 () Bool)

(assert (=> b!5410667 (= e!3354068 e!3354078)))

(declare-fun res!2301272 () Bool)

(assert (=> b!5410667 (=> res!2301272 e!3354078)))

(assert (=> b!5410667 (= res!2301272 lt!2206717)))

(declare-fun lt!2206748 () Bool)

(assert (=> b!5410667 (= lt!2206748 (matchRSpec!2294 lt!2206753 s!2326))))

(declare-fun matchR!7376 (Regex!15191 List!61872) Bool)

(assert (=> b!5410667 (= lt!2206748 (matchR!7376 lt!2206753 s!2326))))

(declare-fun lt!2206724 () Unit!154286)

(assert (=> b!5410667 (= lt!2206724 (mainMatchTheorem!2294 lt!2206753 s!2326))))

(declare-fun b!5410668 () Bool)

(declare-fun tp!1495669 () Bool)

(declare-fun tp!1495673 () Bool)

(assert (=> b!5410668 (= e!3354085 (and tp!1495669 tp!1495673))))

(assert (=> b!5410669 (= e!3354061 e!3354073)))

(declare-fun res!2301276 () Bool)

(assert (=> b!5410669 (=> res!2301276 e!3354073)))

(assert (=> b!5410669 (= res!2301276 (or (and ((_ is ElementMatch!15191) (regOne!30894 r!7292)) (= (c!943211 (regOne!30894 r!7292)) (h!68196 s!2326))) ((_ is Union!15191) (regOne!30894 r!7292))))))

(declare-fun lt!2206718 () Unit!154286)

(assert (=> b!5410669 (= lt!2206718 e!3354084)))

(declare-fun c!943210 () Bool)

(assert (=> b!5410669 (= c!943210 lt!2206731)))

(assert (=> b!5410669 (= lt!2206731 (nullable!5360 (h!68197 (exprs!5075 (h!68198 zl!343)))))))

(assert (=> b!5410669 (= (flatMap!918 z!1189 lambda!282524) (derivationStepZipperUp!563 (h!68198 zl!343) (h!68196 s!2326)))))

(declare-fun lt!2206714 () Unit!154286)

(assert (=> b!5410669 (= lt!2206714 (lemmaFlatMapOnSingletonSet!450 z!1189 (h!68198 zl!343) lambda!282524))))

(declare-fun lt!2206726 () Context!9150)

(assert (=> b!5410669 (= lt!2206732 (derivationStepZipperUp!563 lt!2206726 (h!68196 s!2326)))))

(declare-fun derivationStepZipperDown!639 (Regex!15191 Context!9150 C!30652) (InoxSet Context!9150))

(assert (=> b!5410669 (= lt!2206710 (derivationStepZipperDown!639 (h!68197 (exprs!5075 (h!68198 zl!343))) lt!2206726 (h!68196 s!2326)))))

(assert (=> b!5410669 (= lt!2206726 (Context!9151 (t!375096 (exprs!5075 (h!68198 zl!343)))))))

(declare-fun lt!2206709 () (InoxSet Context!9150))

(assert (=> b!5410669 (= lt!2206709 (derivationStepZipperUp!563 (Context!9151 (Cons!61749 (h!68197 (exprs!5075 (h!68198 zl!343))) (t!375096 (exprs!5075 (h!68198 zl!343))))) (h!68196 s!2326)))))

(declare-fun b!5410670 () Bool)

(assert (=> b!5410670 (= e!3354065 (not e!3354063))))

(declare-fun res!2301286 () Bool)

(assert (=> b!5410670 (=> res!2301286 e!3354063)))

(assert (=> b!5410670 (= res!2301286 (not ((_ is Cons!61750) zl!343)))))

(assert (=> b!5410670 (= lt!2206717 (matchRSpec!2294 r!7292 s!2326))))

(assert (=> b!5410670 (= lt!2206717 (matchR!7376 r!7292 s!2326))))

(declare-fun lt!2206749 () Unit!154286)

(assert (=> b!5410670 (= lt!2206749 (mainMatchTheorem!2294 r!7292 s!2326))))

(declare-fun b!5410671 () Bool)

(declare-fun e!3354071 () Bool)

(assert (=> b!5410671 (= e!3354071 lt!2206748)))

(assert (=> b!5410672 (= e!3354079 e!3354070)))

(declare-fun res!2301291 () Bool)

(assert (=> b!5410672 (=> res!2301291 e!3354070)))

(assert (=> b!5410672 (= res!2301291 (not (matchR!7376 lt!2206708 (_1!35693 lt!2206741))))))

(declare-fun lt!2206702 () Option!15302)

(assert (=> b!5410672 (= lt!2206741 (get!21289 lt!2206702))))

(assert (=> b!5410672 (= (Exists!2372 lambda!282527) (Exists!2372 lambda!282528))))

(declare-fun lt!2206712 () Unit!154286)

(assert (=> b!5410672 (= lt!2206712 (lemmaExistCutMatchRandMatchRSpecEquivalent!1026 lt!2206708 (regTwo!30894 r!7292) s!2326))))

(assert (=> b!5410672 (= (isDefined!12005 lt!2206702) (Exists!2372 lambda!282527))))

(assert (=> b!5410672 (= lt!2206702 (findConcatSeparation!1716 lt!2206708 (regTwo!30894 r!7292) Nil!61748 s!2326 s!2326))))

(declare-fun lt!2206722 () Unit!154286)

(assert (=> b!5410672 (= lt!2206722 (lemmaFindConcatSeparationEquivalentToExists!1480 lt!2206708 (regTwo!30894 r!7292) s!2326))))

(declare-fun lt!2206757 () Regex!15191)

(assert (=> b!5410672 (matchRSpec!2294 lt!2206757 s!2326)))

(declare-fun lt!2206701 () Unit!154286)

(assert (=> b!5410672 (= lt!2206701 (mainMatchTheorem!2294 lt!2206757 s!2326))))

(assert (=> b!5410672 (matchR!7376 lt!2206757 s!2326)))

(assert (=> b!5410672 (= lt!2206757 (Concat!24036 lt!2206708 (regTwo!30894 r!7292)))))

(assert (=> b!5410672 (= lt!2206708 (Concat!24036 (reg!15520 (regOne!30894 r!7292)) lt!2206725))))

(declare-fun lt!2206700 () Unit!154286)

(declare-fun lemmaConcatAssociative!44 (Regex!15191 Regex!15191 Regex!15191 List!61872) Unit!154286)

(assert (=> b!5410672 (= lt!2206700 (lemmaConcatAssociative!44 (reg!15520 (regOne!30894 r!7292)) lt!2206725 (regTwo!30894 r!7292) s!2326))))

(assert (=> b!5410672 e!3354071))

(declare-fun res!2301303 () Bool)

(assert (=> b!5410672 (=> (not res!2301303) (not e!3354071))))

(assert (=> b!5410672 (= res!2301303 (matchR!7376 lt!2206753 lt!2206719))))

(declare-fun lt!2206733 () Unit!154286)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!214 (Regex!15191 Regex!15191 List!61872 List!61872) Unit!154286)

(assert (=> b!5410672 (= lt!2206733 (lemmaTwoRegexMatchThenConcatMatchesConcatString!214 (reg!15520 (regOne!30894 r!7292)) lt!2206706 (_1!35693 lt!2206704) (_2!35693 lt!2206704)))))

(assert (=> b!5410672 (matchR!7376 lt!2206706 (_2!35693 lt!2206704))))

(declare-fun lt!2206705 () Unit!154286)

(declare-fun theoremZipperRegexEquiv!505 ((InoxSet Context!9150) List!61874 Regex!15191 List!61872) Unit!154286)

(assert (=> b!5410672 (= lt!2206705 (theoremZipperRegexEquiv!505 lt!2206713 lt!2206740 lt!2206706 (_2!35693 lt!2206704)))))

(assert (=> b!5410672 (matchR!7376 (reg!15520 (regOne!30894 r!7292)) (_1!35693 lt!2206704))))

(declare-fun lt!2206750 () Unit!154286)

(assert (=> b!5410672 (= lt!2206750 (theoremZipperRegexEquiv!505 lt!2206746 lt!2206703 (reg!15520 (regOne!30894 r!7292)) (_1!35693 lt!2206704)))))

(assert (=> b!5410672 (matchZipper!1435 (store ((as const (Array Context!9150 Bool)) false) (Context!9151 (++!13556 lt!2206698 lt!2206730)) true) lt!2206719)))

(declare-fun lt!2206737 () Unit!154286)

(assert (=> b!5410672 (= lt!2206737 (lemmaConcatPreservesForall!216 lt!2206698 lt!2206730 lambda!282526))))

(declare-fun lt!2206721 () Unit!154286)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!64 (Context!9150 Context!9150 List!61872 List!61872) Unit!154286)

(assert (=> b!5410672 (= lt!2206721 (lemmaConcatenateContextMatchesConcatOfStrings!64 lt!2206697 lt!2206711 (_1!35693 lt!2206704) (_2!35693 lt!2206704)))))

(declare-fun b!5410673 () Bool)

(declare-fun res!2301279 () Bool)

(assert (=> b!5410673 (=> res!2301279 e!3354073)))

(assert (=> b!5410673 (= res!2301279 (or ((_ is Concat!24036) (regOne!30894 r!7292)) (not ((_ is Star!15191) (regOne!30894 r!7292)))))))

(declare-fun b!5410674 () Bool)

(declare-fun res!2301299 () Bool)

(assert (=> b!5410674 (=> res!2301299 e!3354079)))

(assert (=> b!5410674 (= res!2301299 (not (matchZipper!1435 lt!2206713 (_2!35693 lt!2206704))))))

(declare-fun b!5410675 () Bool)

(declare-fun res!2301282 () Bool)

(assert (=> b!5410675 (=> res!2301282 e!3354063)))

(declare-fun generalisedConcat!860 (List!61873) Regex!15191)

(assert (=> b!5410675 (= res!2301282 (not (= r!7292 (generalisedConcat!860 (exprs!5075 (h!68198 zl!343))))))))

(declare-fun b!5410676 () Bool)

(declare-fun res!2301287 () Bool)

(assert (=> b!5410676 (=> res!2301287 e!3354063)))

(declare-fun generalisedUnion!1120 (List!61873) Regex!15191)

(declare-fun unfocusZipperList!633 (List!61874) List!61873)

(assert (=> b!5410676 (= res!2301287 (not (= r!7292 (generalisedUnion!1120 (unfocusZipperList!633 zl!343)))))))

(declare-fun b!5410677 () Bool)

(assert (=> b!5410677 (= e!3354073 e!3354064)))

(declare-fun res!2301301 () Bool)

(assert (=> b!5410677 (=> res!2301301 e!3354064)))

(assert (=> b!5410677 (= res!2301301 (not (= lt!2206710 lt!2206727)))))

(assert (=> b!5410677 (= lt!2206727 (derivationStepZipperDown!639 (reg!15520 (regOne!30894 r!7292)) lt!2206711 (h!68196 s!2326)))))

(assert (=> b!5410677 (= lt!2206711 (Context!9151 lt!2206730))))

(assert (=> b!5410677 (= lt!2206730 (Cons!61749 lt!2206725 (t!375096 (exprs!5075 (h!68198 zl!343)))))))

(assert (=> b!5410677 (= lt!2206725 (Star!15191 (reg!15520 (regOne!30894 r!7292))))))

(declare-fun b!5410678 () Bool)

(declare-fun res!2301302 () Bool)

(assert (=> b!5410678 (=> res!2301302 e!3354078)))

(assert (=> b!5410678 (= res!2301302 (not (matchZipper!1435 z!1189 s!2326)))))

(declare-fun b!5410679 () Bool)

(declare-fun tp!1495666 () Bool)

(assert (=> b!5410679 (= e!3354075 tp!1495666)))

(declare-fun b!5410680 () Bool)

(declare-fun res!2301296 () Bool)

(assert (=> b!5410680 (=> res!2301296 e!3354066)))

(assert (=> b!5410680 (= res!2301296 (or (not lt!2206734) (not lt!2206755)))))

(declare-fun b!5410681 () Bool)

(declare-fun res!2301293 () Bool)

(assert (=> b!5410681 (=> res!2301293 e!3354061)))

(declare-fun isEmpty!33737 (List!61873) Bool)

(assert (=> b!5410681 (= res!2301293 (isEmpty!33737 (t!375096 (exprs!5075 (h!68198 zl!343)))))))

(assert (= (and start!568126 res!2301306) b!5410657))

(assert (= (and b!5410657 res!2301281) b!5410662))

(assert (= (and b!5410662 res!2301280) b!5410670))

(assert (= (and b!5410670 (not res!2301286)) b!5410661))

(assert (= (and b!5410661 (not res!2301292)) b!5410675))

(assert (= (and b!5410675 (not res!2301282)) b!5410664))

(assert (= (and b!5410664 (not res!2301283)) b!5410676))

(assert (= (and b!5410676 (not res!2301287)) b!5410651))

(assert (= (and b!5410651 (not res!2301304)) b!5410653))

(assert (= (and b!5410653 (not res!2301289)) b!5410681))

(assert (= (and b!5410681 (not res!2301293)) b!5410669))

(assert (= (and b!5410669 c!943210) b!5410638))

(assert (= (and b!5410669 (not c!943210)) b!5410636))

(assert (= (and b!5410638 (not res!2301300)) b!5410654))

(assert (= (and b!5410669 (not res!2301276)) b!5410655))

(assert (= (and b!5410655 res!2301278) b!5410649))

(assert (= (and b!5410655 (not res!2301295)) b!5410673))

(assert (= (and b!5410673 (not res!2301279)) b!5410677))

(assert (= (and b!5410677 (not res!2301301)) b!5410643))

(assert (= (and b!5410643 (not res!2301288)) b!5410639))

(assert (= (and b!5410639 (not res!2301277)) b!5410666))

(assert (= (and b!5410666 (not res!2301273)) b!5410660))

(assert (= (and b!5410660 (not res!2301290)) b!5410645))

(assert (= (and b!5410645 (not res!2301307)) b!5410665))

(assert (= (and b!5410665 (not res!2301284)) b!5410652))

(assert (= (and b!5410652 (not res!2301275)) b!5410667))

(assert (= (and b!5410667 (not res!2301272)) b!5410678))

(assert (= (and b!5410678 (not res!2301302)) b!5410656))

(assert (= (and b!5410656 (not res!2301298)) b!5410641))

(assert (= (and b!5410641 res!2301294) b!5410659))

(assert (= (and b!5410641 (not res!2301305)) b!5410680))

(assert (= (and b!5410680 (not res!2301296)) b!5410650))

(assert (= (and b!5410650 (not res!2301297)) b!5410637))

(assert (= (and b!5410637 (not res!2301285)) b!5410646))

(assert (= (and b!5410646 (not res!2301274)) b!5410674))

(assert (= (and b!5410674 (not res!2301299)) b!5410672))

(assert (= (and b!5410672 res!2301303) b!5410671))

(assert (= (and b!5410672 (not res!2301291)) b!5410658))

(assert (= (and start!568126 ((_ is ElementMatch!15191) r!7292)) b!5410648))

(assert (= (and start!568126 ((_ is Concat!24036) r!7292)) b!5410668))

(assert (= (and start!568126 ((_ is Star!15191) r!7292)) b!5410647))

(assert (= (and start!568126 ((_ is Union!15191) r!7292)) b!5410642))

(assert (= (and start!568126 condSetEmpty!35249) setIsEmpty!35249))

(assert (= (and start!568126 (not condSetEmpty!35249)) setNonEmpty!35249))

(assert (= setNonEmpty!35249 b!5410640))

(assert (= b!5410644 b!5410679))

(assert (= (and start!568126 ((_ is Cons!61750) zl!343)) b!5410644))

(assert (= (and start!568126 ((_ is Cons!61748) s!2326)) b!5410663))

(declare-fun m!6434664 () Bool)

(assert (=> b!5410677 m!6434664))

(declare-fun m!6434666 () Bool)

(assert (=> b!5410672 m!6434666))

(declare-fun m!6434668 () Bool)

(assert (=> b!5410672 m!6434668))

(declare-fun m!6434670 () Bool)

(assert (=> b!5410672 m!6434670))

(declare-fun m!6434672 () Bool)

(assert (=> b!5410672 m!6434672))

(declare-fun m!6434674 () Bool)

(assert (=> b!5410672 m!6434674))

(declare-fun m!6434676 () Bool)

(assert (=> b!5410672 m!6434676))

(declare-fun m!6434678 () Bool)

(assert (=> b!5410672 m!6434678))

(declare-fun m!6434680 () Bool)

(assert (=> b!5410672 m!6434680))

(declare-fun m!6434682 () Bool)

(assert (=> b!5410672 m!6434682))

(declare-fun m!6434684 () Bool)

(assert (=> b!5410672 m!6434684))

(assert (=> b!5410672 m!6434672))

(declare-fun m!6434686 () Bool)

(assert (=> b!5410672 m!6434686))

(declare-fun m!6434688 () Bool)

(assert (=> b!5410672 m!6434688))

(declare-fun m!6434690 () Bool)

(assert (=> b!5410672 m!6434690))

(declare-fun m!6434692 () Bool)

(assert (=> b!5410672 m!6434692))

(declare-fun m!6434694 () Bool)

(assert (=> b!5410672 m!6434694))

(declare-fun m!6434696 () Bool)

(assert (=> b!5410672 m!6434696))

(declare-fun m!6434698 () Bool)

(assert (=> b!5410672 m!6434698))

(declare-fun m!6434700 () Bool)

(assert (=> b!5410672 m!6434700))

(declare-fun m!6434702 () Bool)

(assert (=> b!5410672 m!6434702))

(declare-fun m!6434704 () Bool)

(assert (=> b!5410672 m!6434704))

(declare-fun m!6434706 () Bool)

(assert (=> b!5410672 m!6434706))

(declare-fun m!6434708 () Bool)

(assert (=> b!5410672 m!6434708))

(declare-fun m!6434710 () Bool)

(assert (=> b!5410672 m!6434710))

(assert (=> b!5410672 m!6434676))

(declare-fun m!6434712 () Bool)

(assert (=> b!5410681 m!6434712))

(declare-fun m!6434714 () Bool)

(assert (=> b!5410639 m!6434714))

(declare-fun m!6434716 () Bool)

(assert (=> b!5410639 m!6434716))

(declare-fun m!6434718 () Bool)

(assert (=> b!5410665 m!6434718))

(declare-fun m!6434720 () Bool)

(assert (=> b!5410665 m!6434720))

(declare-fun m!6434722 () Bool)

(assert (=> b!5410665 m!6434722))

(declare-fun m!6434724 () Bool)

(assert (=> b!5410665 m!6434724))

(declare-fun m!6434726 () Bool)

(assert (=> b!5410665 m!6434726))

(declare-fun m!6434728 () Bool)

(assert (=> b!5410665 m!6434728))

(declare-fun m!6434730 () Bool)

(assert (=> b!5410665 m!6434730))

(declare-fun m!6434732 () Bool)

(assert (=> b!5410665 m!6434732))

(declare-fun m!6434734 () Bool)

(assert (=> b!5410665 m!6434734))

(declare-fun m!6434736 () Bool)

(assert (=> b!5410662 m!6434736))

(declare-fun m!6434738 () Bool)

(assert (=> b!5410646 m!6434738))

(declare-fun m!6434740 () Bool)

(assert (=> b!5410678 m!6434740))

(declare-fun m!6434742 () Bool)

(assert (=> b!5410654 m!6434742))

(declare-fun m!6434744 () Bool)

(assert (=> b!5410669 m!6434744))

(declare-fun m!6434746 () Bool)

(assert (=> b!5410669 m!6434746))

(declare-fun m!6434748 () Bool)

(assert (=> b!5410669 m!6434748))

(declare-fun m!6434750 () Bool)

(assert (=> b!5410669 m!6434750))

(declare-fun m!6434752 () Bool)

(assert (=> b!5410669 m!6434752))

(declare-fun m!6434754 () Bool)

(assert (=> b!5410669 m!6434754))

(declare-fun m!6434756 () Bool)

(assert (=> b!5410669 m!6434756))

(declare-fun m!6434758 () Bool)

(assert (=> b!5410653 m!6434758))

(declare-fun m!6434760 () Bool)

(assert (=> b!5410653 m!6434760))

(declare-fun m!6434762 () Bool)

(assert (=> b!5410653 m!6434762))

(declare-fun m!6434764 () Bool)

(assert (=> b!5410653 m!6434764))

(assert (=> b!5410653 m!6434760))

(declare-fun m!6434766 () Bool)

(assert (=> b!5410653 m!6434766))

(declare-fun m!6434768 () Bool)

(assert (=> b!5410653 m!6434768))

(assert (=> b!5410653 m!6434758))

(declare-fun m!6434770 () Bool)

(assert (=> b!5410675 m!6434770))

(declare-fun m!6434772 () Bool)

(assert (=> b!5410652 m!6434772))

(declare-fun m!6434774 () Bool)

(assert (=> b!5410644 m!6434774))

(declare-fun m!6434776 () Bool)

(assert (=> b!5410638 m!6434776))

(declare-fun m!6434778 () Bool)

(assert (=> b!5410638 m!6434778))

(declare-fun m!6434780 () Bool)

(assert (=> b!5410638 m!6434780))

(assert (=> b!5410659 m!6434742))

(declare-fun m!6434782 () Bool)

(assert (=> b!5410674 m!6434782))

(declare-fun m!6434784 () Bool)

(assert (=> setNonEmpty!35249 m!6434784))

(assert (=> b!5410641 m!6434778))

(declare-fun m!6434786 () Bool)

(assert (=> start!568126 m!6434786))

(declare-fun m!6434788 () Bool)

(assert (=> b!5410643 m!6434788))

(declare-fun m!6434790 () Bool)

(assert (=> b!5410643 m!6434790))

(declare-fun m!6434792 () Bool)

(assert (=> b!5410643 m!6434792))

(declare-fun m!6434794 () Bool)

(assert (=> b!5410643 m!6434794))

(declare-fun m!6434796 () Bool)

(assert (=> b!5410643 m!6434796))

(declare-fun m!6434798 () Bool)

(assert (=> b!5410637 m!6434798))

(declare-fun m!6434800 () Bool)

(assert (=> b!5410637 m!6434800))

(declare-fun m!6434802 () Bool)

(assert (=> b!5410637 m!6434802))

(declare-fun m!6434804 () Bool)

(assert (=> b!5410637 m!6434804))

(declare-fun m!6434806 () Bool)

(assert (=> b!5410637 m!6434806))

(declare-fun m!6434808 () Bool)

(assert (=> b!5410661 m!6434808))

(declare-fun m!6434810 () Bool)

(assert (=> b!5410645 m!6434810))

(declare-fun m!6434812 () Bool)

(assert (=> b!5410649 m!6434812))

(declare-fun m!6434814 () Bool)

(assert (=> b!5410658 m!6434814))

(declare-fun m!6434816 () Bool)

(assert (=> b!5410658 m!6434816))

(declare-fun m!6434818 () Bool)

(assert (=> b!5410658 m!6434818))

(declare-fun m!6434820 () Bool)

(assert (=> b!5410658 m!6434820))

(declare-fun m!6434822 () Bool)

(assert (=> b!5410658 m!6434822))

(assert (=> b!5410658 m!6434818))

(declare-fun m!6434824 () Bool)

(assert (=> b!5410658 m!6434824))

(assert (=> b!5410658 m!6434820))

(declare-fun m!6434826 () Bool)

(assert (=> b!5410658 m!6434826))

(assert (=> b!5410658 m!6434820))

(declare-fun m!6434828 () Bool)

(assert (=> b!5410658 m!6434828))

(declare-fun m!6434830 () Bool)

(assert (=> b!5410658 m!6434830))

(declare-fun m!6434832 () Bool)

(assert (=> b!5410658 m!6434832))

(declare-fun m!6434834 () Bool)

(assert (=> b!5410658 m!6434834))

(declare-fun m!6434836 () Bool)

(assert (=> b!5410657 m!6434836))

(declare-fun m!6434838 () Bool)

(assert (=> b!5410676 m!6434838))

(assert (=> b!5410676 m!6434838))

(declare-fun m!6434840 () Bool)

(assert (=> b!5410676 m!6434840))

(declare-fun m!6434842 () Bool)

(assert (=> b!5410667 m!6434842))

(declare-fun m!6434844 () Bool)

(assert (=> b!5410667 m!6434844))

(declare-fun m!6434846 () Bool)

(assert (=> b!5410667 m!6434846))

(declare-fun m!6434848 () Bool)

(assert (=> b!5410670 m!6434848))

(declare-fun m!6434850 () Bool)

(assert (=> b!5410670 m!6434850))

(declare-fun m!6434852 () Bool)

(assert (=> b!5410670 m!6434852))

(declare-fun m!6434854 () Bool)

(assert (=> b!5410650 m!6434854))

(declare-fun m!6434856 () Bool)

(assert (=> b!5410650 m!6434856))

(assert (=> b!5410650 m!6434694))

(assert (=> b!5410650 m!6434676))

(declare-fun m!6434858 () Bool)

(assert (=> b!5410650 m!6434858))

(assert (=> b!5410650 m!6434688))

(check-sat (not b!5410650) (not b!5410657) (not b!5410674) (not b!5410640) (not b!5410678) (not b!5410663) tp_is_empty!39635 (not start!568126) (not b!5410670) (not b!5410672) (not b!5410677) (not b!5410644) (not b!5410669) (not b!5410652) (not b!5410646) (not b!5410639) (not b!5410654) (not b!5410642) (not b!5410665) (not b!5410641) (not b!5410681) (not b!5410645) (not b!5410675) (not b!5410659) (not setNonEmpty!35249) (not b!5410668) (not b!5410643) (not b!5410638) (not b!5410653) (not b!5410649) (not b!5410658) (not b!5410679) (not b!5410637) (not b!5410661) (not b!5410662) (not b!5410667) (not b!5410676) (not b!5410647))
(check-sat)
(get-model)

(declare-fun d!1726907 () Bool)

(declare-fun choose!40853 ((InoxSet Context!9150) Int) (InoxSet Context!9150))

(assert (=> d!1726907 (= (flatMap!918 lt!2206739 lambda!282524) (choose!40853 lt!2206739 lambda!282524))))

(declare-fun bs!1249612 () Bool)

(assert (= bs!1249612 d!1726907))

(declare-fun m!6435092 () Bool)

(assert (=> bs!1249612 m!6435092))

(assert (=> b!5410643 d!1726907))

(declare-fun b!5410992 () Bool)

(declare-fun e!3354258 () (InoxSet Context!9150))

(declare-fun e!3354257 () (InoxSet Context!9150))

(assert (=> b!5410992 (= e!3354258 e!3354257)))

(declare-fun c!943304 () Bool)

(assert (=> b!5410992 (= c!943304 ((_ is Cons!61749) (exprs!5075 lt!2206715)))))

(declare-fun call!387180 () (InoxSet Context!9150))

(declare-fun b!5410993 () Bool)

(assert (=> b!5410993 (= e!3354258 ((_ map or) call!387180 (derivationStepZipperUp!563 (Context!9151 (t!375096 (exprs!5075 lt!2206715))) (h!68196 s!2326))))))

(declare-fun b!5410994 () Bool)

(assert (=> b!5410994 (= e!3354257 call!387180)))

(declare-fun bm!387175 () Bool)

(assert (=> bm!387175 (= call!387180 (derivationStepZipperDown!639 (h!68197 (exprs!5075 lt!2206715)) (Context!9151 (t!375096 (exprs!5075 lt!2206715))) (h!68196 s!2326)))))

(declare-fun b!5410995 () Bool)

(declare-fun e!3354256 () Bool)

(assert (=> b!5410995 (= e!3354256 (nullable!5360 (h!68197 (exprs!5075 lt!2206715))))))

(declare-fun b!5410996 () Bool)

(assert (=> b!5410996 (= e!3354257 ((as const (Array Context!9150 Bool)) false))))

(declare-fun d!1726909 () Bool)

(declare-fun c!943303 () Bool)

(assert (=> d!1726909 (= c!943303 e!3354256)))

(declare-fun res!2301428 () Bool)

(assert (=> d!1726909 (=> (not res!2301428) (not e!3354256))))

(assert (=> d!1726909 (= res!2301428 ((_ is Cons!61749) (exprs!5075 lt!2206715)))))

(assert (=> d!1726909 (= (derivationStepZipperUp!563 lt!2206715 (h!68196 s!2326)) e!3354258)))

(assert (= (and d!1726909 res!2301428) b!5410995))

(assert (= (and d!1726909 c!943303) b!5410993))

(assert (= (and d!1726909 (not c!943303)) b!5410992))

(assert (= (and b!5410992 c!943304) b!5410994))

(assert (= (and b!5410992 (not c!943304)) b!5410996))

(assert (= (or b!5410993 b!5410994) bm!387175))

(declare-fun m!6435112 () Bool)

(assert (=> b!5410993 m!6435112))

(declare-fun m!6435114 () Bool)

(assert (=> bm!387175 m!6435114))

(declare-fun m!6435116 () Bool)

(assert (=> b!5410995 m!6435116))

(assert (=> b!5410643 d!1726909))

(declare-fun d!1726921 () Bool)

(declare-fun dynLambda!24326 (Int Context!9150) (InoxSet Context!9150))

(assert (=> d!1726921 (= (flatMap!918 lt!2206739 lambda!282524) (dynLambda!24326 lambda!282524 lt!2206715))))

(declare-fun lt!2206810 () Unit!154286)

(declare-fun choose!40854 ((InoxSet Context!9150) Context!9150 Int) Unit!154286)

(assert (=> d!1726921 (= lt!2206810 (choose!40854 lt!2206739 lt!2206715 lambda!282524))))

(assert (=> d!1726921 (= lt!2206739 (store ((as const (Array Context!9150 Bool)) false) lt!2206715 true))))

(assert (=> d!1726921 (= (lemmaFlatMapOnSingletonSet!450 lt!2206739 lt!2206715 lambda!282524) lt!2206810)))

(declare-fun b_lambda!206675 () Bool)

(assert (=> (not b_lambda!206675) (not d!1726921)))

(declare-fun bs!1249647 () Bool)

(assert (= bs!1249647 d!1726921))

(assert (=> bs!1249647 m!6434794))

(declare-fun m!6435134 () Bool)

(assert (=> bs!1249647 m!6435134))

(declare-fun m!6435138 () Bool)

(assert (=> bs!1249647 m!6435138))

(assert (=> bs!1249647 m!6434790))

(assert (=> b!5410643 d!1726921))

(declare-fun bs!1249665 () Bool)

(declare-fun d!1726925 () Bool)

(assert (= bs!1249665 (and d!1726925 b!5410669)))

(declare-fun lambda!282566 () Int)

(assert (=> bs!1249665 (= lambda!282566 lambda!282524)))

(assert (=> d!1726925 true))

(assert (=> d!1726925 (= (derivationStepZipper!1430 lt!2206739 (h!68196 s!2326)) (flatMap!918 lt!2206739 lambda!282566))))

(declare-fun bs!1249669 () Bool)

(assert (= bs!1249669 d!1726925))

(declare-fun m!6435160 () Bool)

(assert (=> bs!1249669 m!6435160))

(assert (=> b!5410643 d!1726925))

(declare-fun d!1726935 () Bool)

(declare-fun lt!2206815 () Regex!15191)

(assert (=> d!1726935 (validRegex!6927 lt!2206815)))

(assert (=> d!1726935 (= lt!2206815 (generalisedUnion!1120 (unfocusZipperList!633 zl!343)))))

(assert (=> d!1726935 (= (unfocusZipper!933 zl!343) lt!2206815)))

(declare-fun bs!1249680 () Bool)

(assert (= bs!1249680 d!1726935))

(declare-fun m!6435170 () Bool)

(assert (=> bs!1249680 m!6435170))

(assert (=> bs!1249680 m!6434838))

(assert (=> bs!1249680 m!6434838))

(assert (=> bs!1249680 m!6434840))

(assert (=> b!5410662 d!1726935))

(declare-fun d!1726941 () Bool)

(declare-fun c!943325 () Bool)

(declare-fun isEmpty!33739 (List!61872) Bool)

(assert (=> d!1726941 (= c!943325 (isEmpty!33739 (t!375095 s!2326)))))

(declare-fun e!3354299 () Bool)

(assert (=> d!1726941 (= (matchZipper!1435 lt!2206710 (t!375095 s!2326)) e!3354299)))

(declare-fun b!5411059 () Bool)

(declare-fun nullableZipper!1444 ((InoxSet Context!9150)) Bool)

(assert (=> b!5411059 (= e!3354299 (nullableZipper!1444 lt!2206710))))

(declare-fun b!5411060 () Bool)

(declare-fun head!11605 (List!61872) C!30652)

(declare-fun tail!10702 (List!61872) List!61872)

(assert (=> b!5411060 (= e!3354299 (matchZipper!1435 (derivationStepZipper!1430 lt!2206710 (head!11605 (t!375095 s!2326))) (tail!10702 (t!375095 s!2326))))))

(assert (= (and d!1726941 c!943325) b!5411059))

(assert (= (and d!1726941 (not c!943325)) b!5411060))

(declare-fun m!6435172 () Bool)

(assert (=> d!1726941 m!6435172))

(declare-fun m!6435174 () Bool)

(assert (=> b!5411059 m!6435174))

(declare-fun m!6435176 () Bool)

(assert (=> b!5411060 m!6435176))

(assert (=> b!5411060 m!6435176))

(declare-fun m!6435178 () Bool)

(assert (=> b!5411060 m!6435178))

(declare-fun m!6435180 () Bool)

(assert (=> b!5411060 m!6435180))

(assert (=> b!5411060 m!6435178))

(assert (=> b!5411060 m!6435180))

(declare-fun m!6435182 () Bool)

(assert (=> b!5411060 m!6435182))

(assert (=> b!5410641 d!1726941))

(declare-fun d!1726943 () Bool)

(assert (=> d!1726943 (= (isEmpty!33736 (t!375097 zl!343)) ((_ is Nil!61750) (t!375097 zl!343)))))

(assert (=> b!5410661 d!1726943))

(declare-fun d!1726947 () Bool)

(declare-fun lt!2206819 () Regex!15191)

(assert (=> d!1726947 (validRegex!6927 lt!2206819)))

(assert (=> d!1726947 (= lt!2206819 (generalisedUnion!1120 (unfocusZipperList!633 (Cons!61750 lt!2206715 Nil!61750))))))

(assert (=> d!1726947 (= (unfocusZipper!933 (Cons!61750 lt!2206715 Nil!61750)) lt!2206819)))

(declare-fun bs!1249684 () Bool)

(assert (= bs!1249684 d!1726947))

(declare-fun m!6435204 () Bool)

(assert (=> bs!1249684 m!6435204))

(declare-fun m!6435206 () Bool)

(assert (=> bs!1249684 m!6435206))

(assert (=> bs!1249684 m!6435206))

(declare-fun m!6435208 () Bool)

(assert (=> bs!1249684 m!6435208))

(assert (=> b!5410645 d!1726947))

(declare-fun b!5411071 () Bool)

(declare-fun e!3354308 () (InoxSet Context!9150))

(declare-fun e!3354307 () (InoxSet Context!9150))

(assert (=> b!5411071 (= e!3354308 e!3354307)))

(declare-fun c!943331 () Bool)

(assert (=> b!5411071 (= c!943331 ((_ is Cons!61749) (exprs!5075 lt!2206697)))))

(declare-fun b!5411072 () Bool)

(declare-fun call!387190 () (InoxSet Context!9150))

(assert (=> b!5411072 (= e!3354308 ((_ map or) call!387190 (derivationStepZipperUp!563 (Context!9151 (t!375096 (exprs!5075 lt!2206697))) (h!68196 s!2326))))))

(declare-fun b!5411073 () Bool)

(assert (=> b!5411073 (= e!3354307 call!387190)))

(declare-fun bm!387185 () Bool)

(assert (=> bm!387185 (= call!387190 (derivationStepZipperDown!639 (h!68197 (exprs!5075 lt!2206697)) (Context!9151 (t!375096 (exprs!5075 lt!2206697))) (h!68196 s!2326)))))

(declare-fun b!5411074 () Bool)

(declare-fun e!3354306 () Bool)

(assert (=> b!5411074 (= e!3354306 (nullable!5360 (h!68197 (exprs!5075 lt!2206697))))))

(declare-fun b!5411075 () Bool)

(assert (=> b!5411075 (= e!3354307 ((as const (Array Context!9150 Bool)) false))))

(declare-fun d!1726949 () Bool)

(declare-fun c!943330 () Bool)

(assert (=> d!1726949 (= c!943330 e!3354306)))

(declare-fun res!2301455 () Bool)

(assert (=> d!1726949 (=> (not res!2301455) (not e!3354306))))

(assert (=> d!1726949 (= res!2301455 ((_ is Cons!61749) (exprs!5075 lt!2206697)))))

(assert (=> d!1726949 (= (derivationStepZipperUp!563 lt!2206697 (h!68196 s!2326)) e!3354308)))

(assert (= (and d!1726949 res!2301455) b!5411074))

(assert (= (and d!1726949 c!943330) b!5411072))

(assert (= (and d!1726949 (not c!943330)) b!5411071))

(assert (= (and b!5411071 c!943331) b!5411073))

(assert (= (and b!5411071 (not c!943331)) b!5411075))

(assert (= (or b!5411072 b!5411073) bm!387185))

(declare-fun m!6435210 () Bool)

(assert (=> b!5411072 m!6435210))

(declare-fun m!6435212 () Bool)

(assert (=> bm!387185 m!6435212))

(declare-fun m!6435214 () Bool)

(assert (=> b!5411074 m!6435214))

(assert (=> b!5410665 d!1726949))

(declare-fun d!1726951 () Bool)

(declare-fun lt!2206820 () Regex!15191)

(assert (=> d!1726951 (validRegex!6927 lt!2206820)))

(assert (=> d!1726951 (= lt!2206820 (generalisedUnion!1120 (unfocusZipperList!633 lt!2206703)))))

(assert (=> d!1726951 (= (unfocusZipper!933 lt!2206703) lt!2206820)))

(declare-fun bs!1249685 () Bool)

(assert (= bs!1249685 d!1726951))

(declare-fun m!6435216 () Bool)

(assert (=> bs!1249685 m!6435216))

(declare-fun m!6435218 () Bool)

(assert (=> bs!1249685 m!6435218))

(assert (=> bs!1249685 m!6435218))

(declare-fun m!6435220 () Bool)

(assert (=> bs!1249685 m!6435220))

(assert (=> b!5410665 d!1726951))

(declare-fun d!1726953 () Bool)

(assert (=> d!1726953 (= (flatMap!918 lt!2206746 lambda!282524) (choose!40853 lt!2206746 lambda!282524))))

(declare-fun bs!1249686 () Bool)

(assert (= bs!1249686 d!1726953))

(declare-fun m!6435222 () Bool)

(assert (=> bs!1249686 m!6435222))

(assert (=> b!5410665 d!1726953))

(declare-fun b!5411080 () Bool)

(declare-fun e!3354313 () (InoxSet Context!9150))

(declare-fun e!3354312 () (InoxSet Context!9150))

(assert (=> b!5411080 (= e!3354313 e!3354312)))

(declare-fun c!943335 () Bool)

(assert (=> b!5411080 (= c!943335 ((_ is Cons!61749) (exprs!5075 lt!2206711)))))

(declare-fun call!387191 () (InoxSet Context!9150))

(declare-fun b!5411081 () Bool)

(assert (=> b!5411081 (= e!3354313 ((_ map or) call!387191 (derivationStepZipperUp!563 (Context!9151 (t!375096 (exprs!5075 lt!2206711))) (h!68196 s!2326))))))

(declare-fun b!5411082 () Bool)

(assert (=> b!5411082 (= e!3354312 call!387191)))

(declare-fun bm!387186 () Bool)

(assert (=> bm!387186 (= call!387191 (derivationStepZipperDown!639 (h!68197 (exprs!5075 lt!2206711)) (Context!9151 (t!375096 (exprs!5075 lt!2206711))) (h!68196 s!2326)))))

(declare-fun b!5411083 () Bool)

(declare-fun e!3354311 () Bool)

(assert (=> b!5411083 (= e!3354311 (nullable!5360 (h!68197 (exprs!5075 lt!2206711))))))

(declare-fun b!5411084 () Bool)

(assert (=> b!5411084 (= e!3354312 ((as const (Array Context!9150 Bool)) false))))

(declare-fun d!1726955 () Bool)

(declare-fun c!943334 () Bool)

(assert (=> d!1726955 (= c!943334 e!3354311)))

(declare-fun res!2301456 () Bool)

(assert (=> d!1726955 (=> (not res!2301456) (not e!3354311))))

(assert (=> d!1726955 (= res!2301456 ((_ is Cons!61749) (exprs!5075 lt!2206711)))))

(assert (=> d!1726955 (= (derivationStepZipperUp!563 lt!2206711 (h!68196 s!2326)) e!3354313)))

(assert (= (and d!1726955 res!2301456) b!5411083))

(assert (= (and d!1726955 c!943334) b!5411081))

(assert (= (and d!1726955 (not c!943334)) b!5411080))

(assert (= (and b!5411080 c!943335) b!5411082))

(assert (= (and b!5411080 (not c!943335)) b!5411084))

(assert (= (or b!5411081 b!5411082) bm!387186))

(declare-fun m!6435224 () Bool)

(assert (=> b!5411081 m!6435224))

(declare-fun m!6435226 () Bool)

(assert (=> bm!387186 m!6435226))

(declare-fun m!6435228 () Bool)

(assert (=> b!5411083 m!6435228))

(assert (=> b!5410665 d!1726955))

(declare-fun d!1726957 () Bool)

(assert (=> d!1726957 (= (flatMap!918 lt!2206713 lambda!282524) (choose!40853 lt!2206713 lambda!282524))))

(declare-fun bs!1249687 () Bool)

(assert (= bs!1249687 d!1726957))

(declare-fun m!6435230 () Bool)

(assert (=> bs!1249687 m!6435230))

(assert (=> b!5410665 d!1726957))

(declare-fun d!1726959 () Bool)

(assert (=> d!1726959 (= (flatMap!918 lt!2206713 lambda!282524) (dynLambda!24326 lambda!282524 lt!2206711))))

(declare-fun lt!2206823 () Unit!154286)

(assert (=> d!1726959 (= lt!2206823 (choose!40854 lt!2206713 lt!2206711 lambda!282524))))

(assert (=> d!1726959 (= lt!2206713 (store ((as const (Array Context!9150 Bool)) false) lt!2206711 true))))

(assert (=> d!1726959 (= (lemmaFlatMapOnSingletonSet!450 lt!2206713 lt!2206711 lambda!282524) lt!2206823)))

(declare-fun b_lambda!206677 () Bool)

(assert (=> (not b_lambda!206677) (not d!1726959)))

(declare-fun bs!1249688 () Bool)

(assert (= bs!1249688 d!1726959))

(assert (=> bs!1249688 m!6434728))

(declare-fun m!6435232 () Bool)

(assert (=> bs!1249688 m!6435232))

(declare-fun m!6435234 () Bool)

(assert (=> bs!1249688 m!6435234))

(assert (=> bs!1249688 m!6434720))

(assert (=> b!5410665 d!1726959))

(declare-fun d!1726961 () Bool)

(assert (=> d!1726961 (= (flatMap!918 lt!2206746 lambda!282524) (dynLambda!24326 lambda!282524 lt!2206697))))

(declare-fun lt!2206825 () Unit!154286)

(assert (=> d!1726961 (= lt!2206825 (choose!40854 lt!2206746 lt!2206697 lambda!282524))))

(assert (=> d!1726961 (= lt!2206746 (store ((as const (Array Context!9150 Bool)) false) lt!2206697 true))))

(assert (=> d!1726961 (= (lemmaFlatMapOnSingletonSet!450 lt!2206746 lt!2206697 lambda!282524) lt!2206825)))

(declare-fun b_lambda!206679 () Bool)

(assert (=> (not b_lambda!206679) (not d!1726961)))

(declare-fun bs!1249693 () Bool)

(assert (= bs!1249693 d!1726961))

(assert (=> bs!1249693 m!6434726))

(declare-fun m!6435236 () Bool)

(assert (=> bs!1249693 m!6435236))

(declare-fun m!6435238 () Bool)

(assert (=> bs!1249693 m!6435238))

(assert (=> bs!1249693 m!6434734))

(assert (=> b!5410665 d!1726961))

(declare-fun bs!1249695 () Bool)

(declare-fun d!1726963 () Bool)

(assert (= bs!1249695 (and d!1726963 b!5410650)))

(declare-fun lambda!282577 () Int)

(assert (=> bs!1249695 (= lambda!282577 lambda!282526)))

(declare-fun forall!14537 (List!61873 Int) Bool)

(assert (=> d!1726963 (= (inv!81224 (h!68198 zl!343)) (forall!14537 (exprs!5075 (h!68198 zl!343)) lambda!282577))))

(declare-fun bs!1249696 () Bool)

(assert (= bs!1249696 d!1726963))

(declare-fun m!6435246 () Bool)

(assert (=> bs!1249696 m!6435246))

(assert (=> b!5410644 d!1726963))

(declare-fun bs!1249699 () Bool)

(declare-fun b!5411166 () Bool)

(assert (= bs!1249699 (and b!5411166 b!5410672)))

(declare-fun lambda!282582 () Int)

(assert (=> bs!1249699 (not (= lambda!282582 lambda!282528))))

(declare-fun bs!1249700 () Bool)

(assert (= bs!1249700 (and b!5411166 b!5410658)))

(assert (=> bs!1249700 (= (and (= s!2326 (_1!35693 lt!2206741)) (= (reg!15520 lt!2206753) (reg!15520 (regOne!30894 r!7292))) (= lt!2206753 lt!2206725)) (= lambda!282582 lambda!282531))))

(assert (=> bs!1249700 (not (= lambda!282582 lambda!282530))))

(declare-fun bs!1249701 () Bool)

(assert (= bs!1249701 (and b!5411166 b!5410653)))

(assert (=> bs!1249701 (not (= lambda!282582 lambda!282522))))

(assert (=> bs!1249701 (not (= lambda!282582 lambda!282523))))

(assert (=> bs!1249699 (not (= lambda!282582 lambda!282527))))

(assert (=> bs!1249700 (not (= lambda!282582 lambda!282529))))

(assert (=> b!5411166 true))

(assert (=> b!5411166 true))

(declare-fun bs!1249702 () Bool)

(declare-fun b!5411159 () Bool)

(assert (= bs!1249702 (and b!5411159 b!5410672)))

(declare-fun lambda!282583 () Int)

(assert (=> bs!1249702 (= (and (= (regOne!30894 lt!2206753) lt!2206708) (= (regTwo!30894 lt!2206753) (regTwo!30894 r!7292))) (= lambda!282583 lambda!282528))))

(declare-fun bs!1249703 () Bool)

(assert (= bs!1249703 (and b!5411159 b!5410658)))

(assert (=> bs!1249703 (not (= lambda!282583 lambda!282531))))

(assert (=> bs!1249703 (= (and (= s!2326 (_1!35693 lt!2206741)) (= (regOne!30894 lt!2206753) (reg!15520 (regOne!30894 r!7292))) (= (regTwo!30894 lt!2206753) lt!2206725)) (= lambda!282583 lambda!282530))))

(declare-fun bs!1249704 () Bool)

(assert (= bs!1249704 (and b!5411159 b!5410653)))

(assert (=> bs!1249704 (not (= lambda!282583 lambda!282522))))

(assert (=> bs!1249704 (= (and (= (regOne!30894 lt!2206753) (regOne!30894 r!7292)) (= (regTwo!30894 lt!2206753) (regTwo!30894 r!7292))) (= lambda!282583 lambda!282523))))

(assert (=> bs!1249702 (not (= lambda!282583 lambda!282527))))

(declare-fun bs!1249705 () Bool)

(assert (= bs!1249705 (and b!5411159 b!5411166)))

(assert (=> bs!1249705 (not (= lambda!282583 lambda!282582))))

(assert (=> bs!1249703 (not (= lambda!282583 lambda!282529))))

(assert (=> b!5411159 true))

(assert (=> b!5411159 true))

(declare-fun b!5411158 () Bool)

(declare-fun e!3354357 () Bool)

(declare-fun e!3354355 () Bool)

(assert (=> b!5411158 (= e!3354357 e!3354355)))

(declare-fun res!2301494 () Bool)

(assert (=> b!5411158 (= res!2301494 (matchRSpec!2294 (regOne!30895 lt!2206753) s!2326))))

(assert (=> b!5411158 (=> res!2301494 e!3354355)))

(declare-fun e!3354360 () Bool)

(declare-fun call!387197 () Bool)

(assert (=> b!5411159 (= e!3354360 call!387197)))

(declare-fun b!5411161 () Bool)

(declare-fun e!3354356 () Bool)

(declare-fun e!3354358 () Bool)

(assert (=> b!5411161 (= e!3354356 e!3354358)))

(declare-fun res!2301495 () Bool)

(assert (=> b!5411161 (= res!2301495 (not ((_ is EmptyLang!15191) lt!2206753)))))

(assert (=> b!5411161 (=> (not res!2301495) (not e!3354358))))

(declare-fun b!5411162 () Bool)

(declare-fun c!943356 () Bool)

(assert (=> b!5411162 (= c!943356 ((_ is Union!15191) lt!2206753))))

(declare-fun e!3354354 () Bool)

(assert (=> b!5411162 (= e!3354354 e!3354357)))

(declare-fun bm!387191 () Bool)

(declare-fun c!943355 () Bool)

(assert (=> bm!387191 (= call!387197 (Exists!2372 (ite c!943355 lambda!282582 lambda!282583)))))

(declare-fun b!5411163 () Bool)

(assert (=> b!5411163 (= e!3354355 (matchRSpec!2294 (regTwo!30895 lt!2206753) s!2326))))

(declare-fun bm!387192 () Bool)

(declare-fun call!387196 () Bool)

(assert (=> bm!387192 (= call!387196 (isEmpty!33739 s!2326))))

(declare-fun b!5411164 () Bool)

(assert (=> b!5411164 (= e!3354354 (= s!2326 (Cons!61748 (c!943211 lt!2206753) Nil!61748)))))

(declare-fun b!5411160 () Bool)

(declare-fun c!943354 () Bool)

(assert (=> b!5411160 (= c!943354 ((_ is ElementMatch!15191) lt!2206753))))

(assert (=> b!5411160 (= e!3354358 e!3354354)))

(declare-fun d!1726971 () Bool)

(declare-fun c!943357 () Bool)

(assert (=> d!1726971 (= c!943357 ((_ is EmptyExpr!15191) lt!2206753))))

(assert (=> d!1726971 (= (matchRSpec!2294 lt!2206753 s!2326) e!3354356)))

(declare-fun b!5411165 () Bool)

(declare-fun res!2301496 () Bool)

(declare-fun e!3354359 () Bool)

(assert (=> b!5411165 (=> res!2301496 e!3354359)))

(assert (=> b!5411165 (= res!2301496 call!387196)))

(assert (=> b!5411165 (= e!3354360 e!3354359)))

(assert (=> b!5411166 (= e!3354359 call!387197)))

(declare-fun b!5411167 () Bool)

(assert (=> b!5411167 (= e!3354357 e!3354360)))

(assert (=> b!5411167 (= c!943355 ((_ is Star!15191) lt!2206753))))

(declare-fun b!5411168 () Bool)

(assert (=> b!5411168 (= e!3354356 call!387196)))

(assert (= (and d!1726971 c!943357) b!5411168))

(assert (= (and d!1726971 (not c!943357)) b!5411161))

(assert (= (and b!5411161 res!2301495) b!5411160))

(assert (= (and b!5411160 c!943354) b!5411164))

(assert (= (and b!5411160 (not c!943354)) b!5411162))

(assert (= (and b!5411162 c!943356) b!5411158))

(assert (= (and b!5411162 (not c!943356)) b!5411167))

(assert (= (and b!5411158 (not res!2301494)) b!5411163))

(assert (= (and b!5411167 c!943355) b!5411165))

(assert (= (and b!5411167 (not c!943355)) b!5411159))

(assert (= (and b!5411165 (not res!2301496)) b!5411166))

(assert (= (or b!5411166 b!5411159) bm!387191))

(assert (= (or b!5411168 b!5411165) bm!387192))

(declare-fun m!6435304 () Bool)

(assert (=> b!5411158 m!6435304))

(declare-fun m!6435306 () Bool)

(assert (=> bm!387191 m!6435306))

(declare-fun m!6435308 () Bool)

(assert (=> b!5411163 m!6435308))

(declare-fun m!6435310 () Bool)

(assert (=> bm!387192 m!6435310))

(assert (=> b!5410667 d!1726971))

(declare-fun b!5411249 () Bool)

(declare-fun e!3354405 () Bool)

(declare-fun derivativeStep!4265 (Regex!15191 C!30652) Regex!15191)

(assert (=> b!5411249 (= e!3354405 (matchR!7376 (derivativeStep!4265 lt!2206753 (head!11605 s!2326)) (tail!10702 s!2326)))))

(declare-fun b!5411250 () Bool)

(declare-fun e!3354409 () Bool)

(assert (=> b!5411250 (= e!3354409 (= (head!11605 s!2326) (c!943211 lt!2206753)))))

(declare-fun b!5411251 () Bool)

(declare-fun res!2301536 () Bool)

(declare-fun e!3354404 () Bool)

(assert (=> b!5411251 (=> res!2301536 e!3354404)))

(assert (=> b!5411251 (= res!2301536 (not ((_ is ElementMatch!15191) lt!2206753)))))

(declare-fun e!3354407 () Bool)

(assert (=> b!5411251 (= e!3354407 e!3354404)))

(declare-fun b!5411252 () Bool)

(declare-fun res!2301537 () Bool)

(assert (=> b!5411252 (=> (not res!2301537) (not e!3354409))))

(assert (=> b!5411252 (= res!2301537 (isEmpty!33739 (tail!10702 s!2326)))))

(declare-fun bm!387205 () Bool)

(declare-fun call!387210 () Bool)

(assert (=> bm!387205 (= call!387210 (isEmpty!33739 s!2326))))

(declare-fun b!5411253 () Bool)

(declare-fun e!3354406 () Bool)

(declare-fun e!3354403 () Bool)

(assert (=> b!5411253 (= e!3354406 e!3354403)))

(declare-fun res!2301540 () Bool)

(assert (=> b!5411253 (=> res!2301540 e!3354403)))

(assert (=> b!5411253 (= res!2301540 call!387210)))

(declare-fun b!5411254 () Bool)

(assert (=> b!5411254 (= e!3354403 (not (= (head!11605 s!2326) (c!943211 lt!2206753))))))

(declare-fun b!5411255 () Bool)

(assert (=> b!5411255 (= e!3354404 e!3354406)))

(declare-fun res!2301538 () Bool)

(assert (=> b!5411255 (=> (not res!2301538) (not e!3354406))))

(declare-fun lt!2206857 () Bool)

(assert (=> b!5411255 (= res!2301538 (not lt!2206857))))

(declare-fun b!5411257 () Bool)

(declare-fun e!3354408 () Bool)

(assert (=> b!5411257 (= e!3354408 e!3354407)))

(declare-fun c!943380 () Bool)

(assert (=> b!5411257 (= c!943380 ((_ is EmptyLang!15191) lt!2206753))))

(declare-fun b!5411258 () Bool)

(declare-fun res!2301535 () Bool)

(assert (=> b!5411258 (=> (not res!2301535) (not e!3354409))))

(assert (=> b!5411258 (= res!2301535 (not call!387210))))

(declare-fun d!1726985 () Bool)

(assert (=> d!1726985 e!3354408))

(declare-fun c!943382 () Bool)

(assert (=> d!1726985 (= c!943382 ((_ is EmptyExpr!15191) lt!2206753))))

(assert (=> d!1726985 (= lt!2206857 e!3354405)))

(declare-fun c!943381 () Bool)

(assert (=> d!1726985 (= c!943381 (isEmpty!33739 s!2326))))

(assert (=> d!1726985 (validRegex!6927 lt!2206753)))

(assert (=> d!1726985 (= (matchR!7376 lt!2206753 s!2326) lt!2206857)))

(declare-fun b!5411256 () Bool)

(assert (=> b!5411256 (= e!3354407 (not lt!2206857))))

(declare-fun b!5411259 () Bool)

(assert (=> b!5411259 (= e!3354405 (nullable!5360 lt!2206753))))

(declare-fun b!5411260 () Bool)

(declare-fun res!2301533 () Bool)

(assert (=> b!5411260 (=> res!2301533 e!3354404)))

(assert (=> b!5411260 (= res!2301533 e!3354409)))

(declare-fun res!2301539 () Bool)

(assert (=> b!5411260 (=> (not res!2301539) (not e!3354409))))

(assert (=> b!5411260 (= res!2301539 lt!2206857)))

(declare-fun b!5411261 () Bool)

(assert (=> b!5411261 (= e!3354408 (= lt!2206857 call!387210))))

(declare-fun b!5411262 () Bool)

(declare-fun res!2301534 () Bool)

(assert (=> b!5411262 (=> res!2301534 e!3354403)))

(assert (=> b!5411262 (= res!2301534 (not (isEmpty!33739 (tail!10702 s!2326))))))

(assert (= (and d!1726985 c!943381) b!5411259))

(assert (= (and d!1726985 (not c!943381)) b!5411249))

(assert (= (and d!1726985 c!943382) b!5411261))

(assert (= (and d!1726985 (not c!943382)) b!5411257))

(assert (= (and b!5411257 c!943380) b!5411256))

(assert (= (and b!5411257 (not c!943380)) b!5411251))

(assert (= (and b!5411251 (not res!2301536)) b!5411260))

(assert (= (and b!5411260 res!2301539) b!5411258))

(assert (= (and b!5411258 res!2301535) b!5411252))

(assert (= (and b!5411252 res!2301537) b!5411250))

(assert (= (and b!5411260 (not res!2301533)) b!5411255))

(assert (= (and b!5411255 res!2301538) b!5411253))

(assert (= (and b!5411253 (not res!2301540)) b!5411262))

(assert (= (and b!5411262 (not res!2301534)) b!5411254))

(assert (= (or b!5411261 b!5411253 b!5411258) bm!387205))

(declare-fun m!6435380 () Bool)

(assert (=> b!5411252 m!6435380))

(assert (=> b!5411252 m!6435380))

(declare-fun m!6435382 () Bool)

(assert (=> b!5411252 m!6435382))

(assert (=> b!5411262 m!6435380))

(assert (=> b!5411262 m!6435380))

(assert (=> b!5411262 m!6435382))

(declare-fun m!6435384 () Bool)

(assert (=> b!5411259 m!6435384))

(declare-fun m!6435386 () Bool)

(assert (=> b!5411254 m!6435386))

(assert (=> b!5411249 m!6435386))

(assert (=> b!5411249 m!6435386))

(declare-fun m!6435388 () Bool)

(assert (=> b!5411249 m!6435388))

(assert (=> b!5411249 m!6435380))

(assert (=> b!5411249 m!6435388))

(assert (=> b!5411249 m!6435380))

(declare-fun m!6435390 () Bool)

(assert (=> b!5411249 m!6435390))

(assert (=> bm!387205 m!6435310))

(assert (=> d!1726985 m!6435310))

(declare-fun m!6435392 () Bool)

(assert (=> d!1726985 m!6435392))

(assert (=> b!5411250 m!6435386))

(assert (=> b!5410667 d!1726985))

(declare-fun d!1727009 () Bool)

(assert (=> d!1727009 (= (matchR!7376 lt!2206753 s!2326) (matchRSpec!2294 lt!2206753 s!2326))))

(declare-fun lt!2206866 () Unit!154286)

(declare-fun choose!40858 (Regex!15191 List!61872) Unit!154286)

(assert (=> d!1727009 (= lt!2206866 (choose!40858 lt!2206753 s!2326))))

(assert (=> d!1727009 (validRegex!6927 lt!2206753)))

(assert (=> d!1727009 (= (mainMatchTheorem!2294 lt!2206753 s!2326) lt!2206866)))

(declare-fun bs!1249729 () Bool)

(assert (= bs!1249729 d!1727009))

(assert (=> bs!1249729 m!6434844))

(assert (=> bs!1249729 m!6434842))

(declare-fun m!6435394 () Bool)

(assert (=> bs!1249729 m!6435394))

(assert (=> bs!1249729 m!6435392))

(assert (=> b!5410667 d!1727009))

(declare-fun d!1727011 () Bool)

(declare-fun c!943383 () Bool)

(assert (=> d!1727011 (= c!943383 (isEmpty!33739 (_1!35693 lt!2206704)))))

(declare-fun e!3354410 () Bool)

(assert (=> d!1727011 (= (matchZipper!1435 lt!2206746 (_1!35693 lt!2206704)) e!3354410)))

(declare-fun b!5411263 () Bool)

(assert (=> b!5411263 (= e!3354410 (nullableZipper!1444 lt!2206746))))

(declare-fun b!5411264 () Bool)

(assert (=> b!5411264 (= e!3354410 (matchZipper!1435 (derivationStepZipper!1430 lt!2206746 (head!11605 (_1!35693 lt!2206704))) (tail!10702 (_1!35693 lt!2206704))))))

(assert (= (and d!1727011 c!943383) b!5411263))

(assert (= (and d!1727011 (not c!943383)) b!5411264))

(declare-fun m!6435396 () Bool)

(assert (=> d!1727011 m!6435396))

(declare-fun m!6435398 () Bool)

(assert (=> b!5411263 m!6435398))

(declare-fun m!6435400 () Bool)

(assert (=> b!5411264 m!6435400))

(assert (=> b!5411264 m!6435400))

(declare-fun m!6435402 () Bool)

(assert (=> b!5411264 m!6435402))

(declare-fun m!6435406 () Bool)

(assert (=> b!5411264 m!6435406))

(assert (=> b!5411264 m!6435402))

(assert (=> b!5411264 m!6435406))

(declare-fun m!6435410 () Bool)

(assert (=> b!5411264 m!6435410))

(assert (=> b!5410646 d!1727011))

(declare-fun d!1727013 () Bool)

(declare-fun choose!40859 ((InoxSet Context!9150) Int) (InoxSet Context!9150))

(assert (=> d!1727013 (= (map!14171 lt!2206746 lambda!282525) (choose!40859 lt!2206746 lambda!282525))))

(declare-fun bs!1249733 () Bool)

(assert (= bs!1249733 d!1727013))

(declare-fun m!6435420 () Bool)

(assert (=> bs!1249733 m!6435420))

(assert (=> b!5410650 d!1727013))

(declare-fun d!1727017 () Bool)

(assert (=> d!1727017 (forall!14537 (++!13556 lt!2206698 lt!2206730) lambda!282526)))

(declare-fun lt!2206873 () Unit!154286)

(declare-fun choose!40860 (List!61873 List!61873 Int) Unit!154286)

(assert (=> d!1727017 (= lt!2206873 (choose!40860 lt!2206698 lt!2206730 lambda!282526))))

(assert (=> d!1727017 (forall!14537 lt!2206698 lambda!282526)))

(assert (=> d!1727017 (= (lemmaConcatPreservesForall!216 lt!2206698 lt!2206730 lambda!282526) lt!2206873)))

(declare-fun bs!1249736 () Bool)

(assert (= bs!1249736 d!1727017))

(assert (=> bs!1249736 m!6434688))

(assert (=> bs!1249736 m!6434688))

(declare-fun m!6435436 () Bool)

(assert (=> bs!1249736 m!6435436))

(declare-fun m!6435438 () Bool)

(assert (=> bs!1249736 m!6435438))

(declare-fun m!6435440 () Bool)

(assert (=> bs!1249736 m!6435440))

(assert (=> b!5410650 d!1727017))

(declare-fun d!1727023 () Bool)

(declare-fun dynLambda!24327 (Int Context!9150) Context!9150)

(assert (=> d!1727023 (= (map!14171 lt!2206746 lambda!282525) (store ((as const (Array Context!9150 Bool)) false) (dynLambda!24327 lambda!282525 lt!2206697) true))))

(declare-fun lt!2206876 () Unit!154286)

(declare-fun choose!40861 ((InoxSet Context!9150) Context!9150 Int) Unit!154286)

(assert (=> d!1727023 (= lt!2206876 (choose!40861 lt!2206746 lt!2206697 lambda!282525))))

(assert (=> d!1727023 (= lt!2206746 (store ((as const (Array Context!9150 Bool)) false) lt!2206697 true))))

(assert (=> d!1727023 (= (lemmaMapOnSingletonSet!50 lt!2206746 lt!2206697 lambda!282525) lt!2206876)))

(declare-fun b_lambda!206683 () Bool)

(assert (=> (not b_lambda!206683) (not d!1727023)))

(declare-fun bs!1249750 () Bool)

(assert (= bs!1249750 d!1727023))

(declare-fun m!6435442 () Bool)

(assert (=> bs!1249750 m!6435442))

(assert (=> bs!1249750 m!6434734))

(declare-fun m!6435444 () Bool)

(assert (=> bs!1249750 m!6435444))

(assert (=> bs!1249750 m!6435442))

(declare-fun m!6435446 () Bool)

(assert (=> bs!1249750 m!6435446))

(assert (=> bs!1249750 m!6434854))

(assert (=> b!5410650 d!1727023))

(declare-fun bs!1249752 () Bool)

(declare-fun d!1727025 () Bool)

(assert (= bs!1249752 (and d!1727025 b!5410650)))

(declare-fun lambda!282599 () Int)

(assert (=> bs!1249752 (= (= (exprs!5075 lt!2206711) lt!2206730) (= lambda!282599 lambda!282525))))

(assert (=> d!1727025 true))

(assert (=> d!1727025 (= (appendTo!50 lt!2206746 lt!2206711) (map!14171 lt!2206746 lambda!282599))))

(declare-fun bs!1249753 () Bool)

(assert (= bs!1249753 d!1727025))

(declare-fun m!6435464 () Bool)

(assert (=> bs!1249753 m!6435464))

(assert (=> b!5410650 d!1727025))

(declare-fun d!1727031 () Bool)

(declare-fun e!3354428 () Bool)

(assert (=> d!1727031 e!3354428))

(declare-fun res!2301559 () Bool)

(assert (=> d!1727031 (=> (not res!2301559) (not e!3354428))))

(declare-fun lt!2206885 () List!61873)

(declare-fun content!11077 (List!61873) (InoxSet Regex!15191))

(assert (=> d!1727031 (= res!2301559 (= (content!11077 lt!2206885) ((_ map or) (content!11077 lt!2206698) (content!11077 lt!2206730))))))

(declare-fun e!3354427 () List!61873)

(assert (=> d!1727031 (= lt!2206885 e!3354427)))

(declare-fun c!943392 () Bool)

(assert (=> d!1727031 (= c!943392 ((_ is Nil!61749) lt!2206698))))

(assert (=> d!1727031 (= (++!13556 lt!2206698 lt!2206730) lt!2206885)))

(declare-fun b!5411301 () Bool)

(assert (=> b!5411301 (= e!3354428 (or (not (= lt!2206730 Nil!61749)) (= lt!2206885 lt!2206698)))))

(declare-fun b!5411299 () Bool)

(assert (=> b!5411299 (= e!3354427 (Cons!61749 (h!68197 lt!2206698) (++!13556 (t!375096 lt!2206698) lt!2206730)))))

(declare-fun b!5411300 () Bool)

(declare-fun res!2301558 () Bool)

(assert (=> b!5411300 (=> (not res!2301558) (not e!3354428))))

(declare-fun size!39853 (List!61873) Int)

(assert (=> b!5411300 (= res!2301558 (= (size!39853 lt!2206885) (+ (size!39853 lt!2206698) (size!39853 lt!2206730))))))

(declare-fun b!5411298 () Bool)

(assert (=> b!5411298 (= e!3354427 lt!2206730)))

(assert (= (and d!1727031 c!943392) b!5411298))

(assert (= (and d!1727031 (not c!943392)) b!5411299))

(assert (= (and d!1727031 res!2301559) b!5411300))

(assert (= (and b!5411300 res!2301558) b!5411301))

(declare-fun m!6435470 () Bool)

(assert (=> d!1727031 m!6435470))

(declare-fun m!6435472 () Bool)

(assert (=> d!1727031 m!6435472))

(declare-fun m!6435474 () Bool)

(assert (=> d!1727031 m!6435474))

(declare-fun m!6435476 () Bool)

(assert (=> b!5411299 m!6435476))

(declare-fun m!6435478 () Bool)

(assert (=> b!5411300 m!6435478))

(declare-fun m!6435480 () Bool)

(assert (=> b!5411300 m!6435480))

(declare-fun m!6435482 () Bool)

(assert (=> b!5411300 m!6435482))

(assert (=> b!5410650 d!1727031))

(declare-fun bs!1249756 () Bool)

(declare-fun b!5411310 () Bool)

(assert (= bs!1249756 (and b!5411310 b!5410672)))

(declare-fun lambda!282600 () Int)

(assert (=> bs!1249756 (not (= lambda!282600 lambda!282528))))

(declare-fun bs!1249757 () Bool)

(assert (= bs!1249757 (and b!5411310 b!5410658)))

(assert (=> bs!1249757 (= (and (= s!2326 (_1!35693 lt!2206741)) (= (reg!15520 r!7292) (reg!15520 (regOne!30894 r!7292))) (= r!7292 lt!2206725)) (= lambda!282600 lambda!282531))))

(assert (=> bs!1249757 (not (= lambda!282600 lambda!282530))))

(declare-fun bs!1249758 () Bool)

(assert (= bs!1249758 (and b!5411310 b!5410653)))

(assert (=> bs!1249758 (not (= lambda!282600 lambda!282522))))

(assert (=> bs!1249758 (not (= lambda!282600 lambda!282523))))

(declare-fun bs!1249759 () Bool)

(assert (= bs!1249759 (and b!5411310 b!5411159)))

(assert (=> bs!1249759 (not (= lambda!282600 lambda!282583))))

(assert (=> bs!1249756 (not (= lambda!282600 lambda!282527))))

(declare-fun bs!1249760 () Bool)

(assert (= bs!1249760 (and b!5411310 b!5411166)))

(assert (=> bs!1249760 (= (and (= (reg!15520 r!7292) (reg!15520 lt!2206753)) (= r!7292 lt!2206753)) (= lambda!282600 lambda!282582))))

(assert (=> bs!1249757 (not (= lambda!282600 lambda!282529))))

(assert (=> b!5411310 true))

(assert (=> b!5411310 true))

(declare-fun bs!1249761 () Bool)

(declare-fun b!5411303 () Bool)

(assert (= bs!1249761 (and b!5411303 b!5410672)))

(declare-fun lambda!282601 () Int)

(assert (=> bs!1249761 (= (= (regOne!30894 r!7292) lt!2206708) (= lambda!282601 lambda!282528))))

(declare-fun bs!1249762 () Bool)

(assert (= bs!1249762 (and b!5411303 b!5410658)))

(assert (=> bs!1249762 (not (= lambda!282601 lambda!282531))))

(assert (=> bs!1249762 (= (and (= s!2326 (_1!35693 lt!2206741)) (= (regOne!30894 r!7292) (reg!15520 (regOne!30894 r!7292))) (= (regTwo!30894 r!7292) lt!2206725)) (= lambda!282601 lambda!282530))))

(declare-fun bs!1249763 () Bool)

(assert (= bs!1249763 (and b!5411303 b!5410653)))

(assert (=> bs!1249763 (not (= lambda!282601 lambda!282522))))

(assert (=> bs!1249763 (= lambda!282601 lambda!282523)))

(declare-fun bs!1249764 () Bool)

(assert (= bs!1249764 (and b!5411303 b!5411159)))

(assert (=> bs!1249764 (= (and (= (regOne!30894 r!7292) (regOne!30894 lt!2206753)) (= (regTwo!30894 r!7292) (regTwo!30894 lt!2206753))) (= lambda!282601 lambda!282583))))

(assert (=> bs!1249761 (not (= lambda!282601 lambda!282527))))

(declare-fun bs!1249765 () Bool)

(assert (= bs!1249765 (and b!5411303 b!5411310)))

(assert (=> bs!1249765 (not (= lambda!282601 lambda!282600))))

(declare-fun bs!1249766 () Bool)

(assert (= bs!1249766 (and b!5411303 b!5411166)))

(assert (=> bs!1249766 (not (= lambda!282601 lambda!282582))))

(assert (=> bs!1249762 (not (= lambda!282601 lambda!282529))))

(assert (=> b!5411303 true))

(assert (=> b!5411303 true))

(declare-fun b!5411302 () Bool)

(declare-fun e!3354432 () Bool)

(declare-fun e!3354430 () Bool)

(assert (=> b!5411302 (= e!3354432 e!3354430)))

(declare-fun res!2301560 () Bool)

(assert (=> b!5411302 (= res!2301560 (matchRSpec!2294 (regOne!30895 r!7292) s!2326))))

(assert (=> b!5411302 (=> res!2301560 e!3354430)))

(declare-fun e!3354435 () Bool)

(declare-fun call!387213 () Bool)

(assert (=> b!5411303 (= e!3354435 call!387213)))

(declare-fun b!5411305 () Bool)

(declare-fun e!3354431 () Bool)

(declare-fun e!3354433 () Bool)

(assert (=> b!5411305 (= e!3354431 e!3354433)))

(declare-fun res!2301561 () Bool)

(assert (=> b!5411305 (= res!2301561 (not ((_ is EmptyLang!15191) r!7292)))))

(assert (=> b!5411305 (=> (not res!2301561) (not e!3354433))))

(declare-fun b!5411306 () Bool)

(declare-fun c!943395 () Bool)

(assert (=> b!5411306 (= c!943395 ((_ is Union!15191) r!7292))))

(declare-fun e!3354429 () Bool)

(assert (=> b!5411306 (= e!3354429 e!3354432)))

(declare-fun bm!387207 () Bool)

(declare-fun c!943394 () Bool)

(assert (=> bm!387207 (= call!387213 (Exists!2372 (ite c!943394 lambda!282600 lambda!282601)))))

(declare-fun b!5411307 () Bool)

(assert (=> b!5411307 (= e!3354430 (matchRSpec!2294 (regTwo!30895 r!7292) s!2326))))

(declare-fun bm!387208 () Bool)

(declare-fun call!387212 () Bool)

(assert (=> bm!387208 (= call!387212 (isEmpty!33739 s!2326))))

(declare-fun b!5411308 () Bool)

(assert (=> b!5411308 (= e!3354429 (= s!2326 (Cons!61748 (c!943211 r!7292) Nil!61748)))))

(declare-fun b!5411304 () Bool)

(declare-fun c!943393 () Bool)

(assert (=> b!5411304 (= c!943393 ((_ is ElementMatch!15191) r!7292))))

(assert (=> b!5411304 (= e!3354433 e!3354429)))

(declare-fun d!1727037 () Bool)

(declare-fun c!943396 () Bool)

(assert (=> d!1727037 (= c!943396 ((_ is EmptyExpr!15191) r!7292))))

(assert (=> d!1727037 (= (matchRSpec!2294 r!7292 s!2326) e!3354431)))

(declare-fun b!5411309 () Bool)

(declare-fun res!2301562 () Bool)

(declare-fun e!3354434 () Bool)

(assert (=> b!5411309 (=> res!2301562 e!3354434)))

(assert (=> b!5411309 (= res!2301562 call!387212)))

(assert (=> b!5411309 (= e!3354435 e!3354434)))

(assert (=> b!5411310 (= e!3354434 call!387213)))

(declare-fun b!5411311 () Bool)

(assert (=> b!5411311 (= e!3354432 e!3354435)))

(assert (=> b!5411311 (= c!943394 ((_ is Star!15191) r!7292))))

(declare-fun b!5411312 () Bool)

(assert (=> b!5411312 (= e!3354431 call!387212)))

(assert (= (and d!1727037 c!943396) b!5411312))

(assert (= (and d!1727037 (not c!943396)) b!5411305))

(assert (= (and b!5411305 res!2301561) b!5411304))

(assert (= (and b!5411304 c!943393) b!5411308))

(assert (= (and b!5411304 (not c!943393)) b!5411306))

(assert (= (and b!5411306 c!943395) b!5411302))

(assert (= (and b!5411306 (not c!943395)) b!5411311))

(assert (= (and b!5411302 (not res!2301560)) b!5411307))

(assert (= (and b!5411311 c!943394) b!5411309))

(assert (= (and b!5411311 (not c!943394)) b!5411303))

(assert (= (and b!5411309 (not res!2301562)) b!5411310))

(assert (= (or b!5411310 b!5411303) bm!387207))

(assert (= (or b!5411312 b!5411309) bm!387208))

(declare-fun m!6435484 () Bool)

(assert (=> b!5411302 m!6435484))

(declare-fun m!6435486 () Bool)

(assert (=> bm!387207 m!6435486))

(declare-fun m!6435488 () Bool)

(assert (=> b!5411307 m!6435488))

(assert (=> bm!387208 m!6435310))

(assert (=> b!5410670 d!1727037))

(declare-fun b!5411319 () Bool)

(declare-fun e!3354441 () Bool)

(assert (=> b!5411319 (= e!3354441 (matchR!7376 (derivativeStep!4265 r!7292 (head!11605 s!2326)) (tail!10702 s!2326)))))

(declare-fun b!5411320 () Bool)

(declare-fun e!3354445 () Bool)

(assert (=> b!5411320 (= e!3354445 (= (head!11605 s!2326) (c!943211 r!7292)))))

(declare-fun b!5411321 () Bool)

(declare-fun res!2301572 () Bool)

(declare-fun e!3354440 () Bool)

(assert (=> b!5411321 (=> res!2301572 e!3354440)))

(assert (=> b!5411321 (= res!2301572 (not ((_ is ElementMatch!15191) r!7292)))))

(declare-fun e!3354443 () Bool)

(assert (=> b!5411321 (= e!3354443 e!3354440)))

(declare-fun b!5411322 () Bool)

(declare-fun res!2301573 () Bool)

(assert (=> b!5411322 (=> (not res!2301573) (not e!3354445))))

(assert (=> b!5411322 (= res!2301573 (isEmpty!33739 (tail!10702 s!2326)))))

(declare-fun bm!387209 () Bool)

(declare-fun call!387214 () Bool)

(assert (=> bm!387209 (= call!387214 (isEmpty!33739 s!2326))))

(declare-fun b!5411323 () Bool)

(declare-fun e!3354442 () Bool)

(declare-fun e!3354439 () Bool)

(assert (=> b!5411323 (= e!3354442 e!3354439)))

(declare-fun res!2301576 () Bool)

(assert (=> b!5411323 (=> res!2301576 e!3354439)))

(assert (=> b!5411323 (= res!2301576 call!387214)))

(declare-fun b!5411324 () Bool)

(assert (=> b!5411324 (= e!3354439 (not (= (head!11605 s!2326) (c!943211 r!7292))))))

(declare-fun b!5411325 () Bool)

(assert (=> b!5411325 (= e!3354440 e!3354442)))

(declare-fun res!2301574 () Bool)

(assert (=> b!5411325 (=> (not res!2301574) (not e!3354442))))

(declare-fun lt!2206889 () Bool)

(assert (=> b!5411325 (= res!2301574 (not lt!2206889))))

(declare-fun b!5411327 () Bool)

(declare-fun e!3354444 () Bool)

(assert (=> b!5411327 (= e!3354444 e!3354443)))

(declare-fun c!943397 () Bool)

(assert (=> b!5411327 (= c!943397 ((_ is EmptyLang!15191) r!7292))))

(declare-fun b!5411328 () Bool)

(declare-fun res!2301571 () Bool)

(assert (=> b!5411328 (=> (not res!2301571) (not e!3354445))))

(assert (=> b!5411328 (= res!2301571 (not call!387214))))

(declare-fun d!1727039 () Bool)

(assert (=> d!1727039 e!3354444))

(declare-fun c!943399 () Bool)

(assert (=> d!1727039 (= c!943399 ((_ is EmptyExpr!15191) r!7292))))

(assert (=> d!1727039 (= lt!2206889 e!3354441)))

(declare-fun c!943398 () Bool)

(assert (=> d!1727039 (= c!943398 (isEmpty!33739 s!2326))))

(assert (=> d!1727039 (validRegex!6927 r!7292)))

(assert (=> d!1727039 (= (matchR!7376 r!7292 s!2326) lt!2206889)))

(declare-fun b!5411326 () Bool)

(assert (=> b!5411326 (= e!3354443 (not lt!2206889))))

(declare-fun b!5411329 () Bool)

(assert (=> b!5411329 (= e!3354441 (nullable!5360 r!7292))))

(declare-fun b!5411330 () Bool)

(declare-fun res!2301569 () Bool)

(assert (=> b!5411330 (=> res!2301569 e!3354440)))

(assert (=> b!5411330 (= res!2301569 e!3354445)))

(declare-fun res!2301575 () Bool)

(assert (=> b!5411330 (=> (not res!2301575) (not e!3354445))))

(assert (=> b!5411330 (= res!2301575 lt!2206889)))

(declare-fun b!5411331 () Bool)

(assert (=> b!5411331 (= e!3354444 (= lt!2206889 call!387214))))

(declare-fun b!5411332 () Bool)

(declare-fun res!2301570 () Bool)

(assert (=> b!5411332 (=> res!2301570 e!3354439)))

(assert (=> b!5411332 (= res!2301570 (not (isEmpty!33739 (tail!10702 s!2326))))))

(assert (= (and d!1727039 c!943398) b!5411329))

(assert (= (and d!1727039 (not c!943398)) b!5411319))

(assert (= (and d!1727039 c!943399) b!5411331))

(assert (= (and d!1727039 (not c!943399)) b!5411327))

(assert (= (and b!5411327 c!943397) b!5411326))

(assert (= (and b!5411327 (not c!943397)) b!5411321))

(assert (= (and b!5411321 (not res!2301572)) b!5411330))

(assert (= (and b!5411330 res!2301575) b!5411328))

(assert (= (and b!5411328 res!2301571) b!5411322))

(assert (= (and b!5411322 res!2301573) b!5411320))

(assert (= (and b!5411330 (not res!2301569)) b!5411325))

(assert (= (and b!5411325 res!2301574) b!5411323))

(assert (= (and b!5411323 (not res!2301576)) b!5411332))

(assert (= (and b!5411332 (not res!2301570)) b!5411324))

(assert (= (or b!5411331 b!5411323 b!5411328) bm!387209))

(assert (=> b!5411322 m!6435380))

(assert (=> b!5411322 m!6435380))

(assert (=> b!5411322 m!6435382))

(assert (=> b!5411332 m!6435380))

(assert (=> b!5411332 m!6435380))

(assert (=> b!5411332 m!6435382))

(declare-fun m!6435500 () Bool)

(assert (=> b!5411329 m!6435500))

(assert (=> b!5411324 m!6435386))

(assert (=> b!5411319 m!6435386))

(assert (=> b!5411319 m!6435386))

(declare-fun m!6435502 () Bool)

(assert (=> b!5411319 m!6435502))

(assert (=> b!5411319 m!6435380))

(assert (=> b!5411319 m!6435502))

(assert (=> b!5411319 m!6435380))

(declare-fun m!6435504 () Bool)

(assert (=> b!5411319 m!6435504))

(assert (=> bm!387209 m!6435310))

(assert (=> d!1727039 m!6435310))

(assert (=> d!1727039 m!6434786))

(assert (=> b!5411320 m!6435386))

(assert (=> b!5410670 d!1727039))

(declare-fun d!1727043 () Bool)

(assert (=> d!1727043 (= (matchR!7376 r!7292 s!2326) (matchRSpec!2294 r!7292 s!2326))))

(declare-fun lt!2206891 () Unit!154286)

(assert (=> d!1727043 (= lt!2206891 (choose!40858 r!7292 s!2326))))

(assert (=> d!1727043 (validRegex!6927 r!7292)))

(assert (=> d!1727043 (= (mainMatchTheorem!2294 r!7292 s!2326) lt!2206891)))

(declare-fun bs!1249767 () Bool)

(assert (= bs!1249767 d!1727043))

(assert (=> bs!1249767 m!6434850))

(assert (=> bs!1249767 m!6434848))

(declare-fun m!6435514 () Bool)

(assert (=> bs!1249767 m!6435514))

(assert (=> bs!1249767 m!6434786))

(assert (=> b!5410670 d!1727043))

(declare-fun d!1727047 () Bool)

(declare-fun nullableFct!1595 (Regex!15191) Bool)

(assert (=> d!1727047 (= (nullable!5360 (regOne!30894 (regOne!30894 r!7292))) (nullableFct!1595 (regOne!30894 (regOne!30894 r!7292))))))

(declare-fun bs!1249768 () Bool)

(assert (= bs!1249768 d!1727047))

(declare-fun m!6435516 () Bool)

(assert (=> bs!1249768 m!6435516))

(assert (=> b!5410649 d!1727047))

(declare-fun d!1727049 () Bool)

(assert (=> d!1727049 (= (flatMap!918 z!1189 lambda!282524) (dynLambda!24326 lambda!282524 (h!68198 zl!343)))))

(declare-fun lt!2206892 () Unit!154286)

(assert (=> d!1727049 (= lt!2206892 (choose!40854 z!1189 (h!68198 zl!343) lambda!282524))))

(assert (=> d!1727049 (= z!1189 (store ((as const (Array Context!9150 Bool)) false) (h!68198 zl!343) true))))

(assert (=> d!1727049 (= (lemmaFlatMapOnSingletonSet!450 z!1189 (h!68198 zl!343) lambda!282524) lt!2206892)))

(declare-fun b_lambda!206685 () Bool)

(assert (=> (not b_lambda!206685) (not d!1727049)))

(declare-fun bs!1249769 () Bool)

(assert (= bs!1249769 d!1727049))

(assert (=> bs!1249769 m!6434746))

(declare-fun m!6435518 () Bool)

(assert (=> bs!1249769 m!6435518))

(declare-fun m!6435520 () Bool)

(assert (=> bs!1249769 m!6435520))

(declare-fun m!6435522 () Bool)

(assert (=> bs!1249769 m!6435522))

(assert (=> b!5410669 d!1727049))

(declare-fun d!1727051 () Bool)

(assert (=> d!1727051 (= (flatMap!918 z!1189 lambda!282524) (choose!40853 z!1189 lambda!282524))))

(declare-fun bs!1249770 () Bool)

(assert (= bs!1249770 d!1727051))

(declare-fun m!6435524 () Bool)

(assert (=> bs!1249770 m!6435524))

(assert (=> b!5410669 d!1727051))

(declare-fun d!1727053 () Bool)

(assert (=> d!1727053 (= (nullable!5360 (h!68197 (exprs!5075 (h!68198 zl!343)))) (nullableFct!1595 (h!68197 (exprs!5075 (h!68198 zl!343)))))))

(declare-fun bs!1249771 () Bool)

(assert (= bs!1249771 d!1727053))

(declare-fun m!6435526 () Bool)

(assert (=> bs!1249771 m!6435526))

(assert (=> b!5410669 d!1727053))

(declare-fun b!5411390 () Bool)

(declare-fun e!3354484 () (InoxSet Context!9150))

(assert (=> b!5411390 (= e!3354484 (store ((as const (Array Context!9150 Bool)) false) lt!2206726 true))))

(declare-fun call!387233 () List!61873)

(declare-fun call!387234 () (InoxSet Context!9150))

(declare-fun bm!387226 () Bool)

(declare-fun c!943419 () Bool)

(declare-fun c!943422 () Bool)

(declare-fun c!943423 () Bool)

(assert (=> bm!387226 (= call!387234 (derivationStepZipperDown!639 (ite c!943422 (regOne!30895 (h!68197 (exprs!5075 (h!68198 zl!343)))) (ite c!943419 (regTwo!30894 (h!68197 (exprs!5075 (h!68198 zl!343)))) (ite c!943423 (regOne!30894 (h!68197 (exprs!5075 (h!68198 zl!343)))) (reg!15520 (h!68197 (exprs!5075 (h!68198 zl!343))))))) (ite (or c!943422 c!943419) lt!2206726 (Context!9151 call!387233)) (h!68196 s!2326)))))

(declare-fun bm!387227 () Bool)

(declare-fun call!387230 () List!61873)

(assert (=> bm!387227 (= call!387233 call!387230)))

(declare-fun bm!387228 () Bool)

(declare-fun call!387236 () (InoxSet Context!9150))

(declare-fun call!387232 () (InoxSet Context!9150))

(assert (=> bm!387228 (= call!387236 call!387232)))

(declare-fun b!5411394 () Bool)

(declare-fun e!3354479 () (InoxSet Context!9150))

(declare-fun e!3354486 () (InoxSet Context!9150))

(assert (=> b!5411394 (= e!3354479 e!3354486)))

(assert (=> b!5411394 (= c!943423 ((_ is Concat!24036) (h!68197 (exprs!5075 (h!68198 zl!343)))))))

(declare-fun bm!387229 () Bool)

(declare-fun $colon$colon!1494 (List!61873 Regex!15191) List!61873)

(assert (=> bm!387229 (= call!387230 ($colon$colon!1494 (exprs!5075 lt!2206726) (ite (or c!943419 c!943423) (regTwo!30894 (h!68197 (exprs!5075 (h!68198 zl!343)))) (h!68197 (exprs!5075 (h!68198 zl!343))))))))

(declare-fun b!5411397 () Bool)

(declare-fun e!3354487 () Bool)

(assert (=> b!5411397 (= c!943419 e!3354487)))

(declare-fun res!2301598 () Bool)

(assert (=> b!5411397 (=> (not res!2301598) (not e!3354487))))

(assert (=> b!5411397 (= res!2301598 ((_ is Concat!24036) (h!68197 (exprs!5075 (h!68198 zl!343)))))))

(declare-fun e!3354480 () (InoxSet Context!9150))

(assert (=> b!5411397 (= e!3354480 e!3354479)))

(declare-fun b!5411399 () Bool)

(assert (=> b!5411399 (= e!3354486 call!387236)))

(declare-fun b!5411401 () Bool)

(assert (=> b!5411401 (= e!3354484 e!3354480)))

(assert (=> b!5411401 (= c!943422 ((_ is Union!15191) (h!68197 (exprs!5075 (h!68198 zl!343)))))))

(declare-fun b!5411402 () Bool)

(declare-fun e!3354478 () (InoxSet Context!9150))

(assert (=> b!5411402 (= e!3354478 call!387236)))

(declare-fun d!1727055 () Bool)

(declare-fun c!943424 () Bool)

(assert (=> d!1727055 (= c!943424 (and ((_ is ElementMatch!15191) (h!68197 (exprs!5075 (h!68198 zl!343)))) (= (c!943211 (h!68197 (exprs!5075 (h!68198 zl!343)))) (h!68196 s!2326))))))

(assert (=> d!1727055 (= (derivationStepZipperDown!639 (h!68197 (exprs!5075 (h!68198 zl!343))) lt!2206726 (h!68196 s!2326)) e!3354484)))

(declare-fun b!5411403 () Bool)

(declare-fun call!387235 () (InoxSet Context!9150))

(assert (=> b!5411403 (= e!3354479 ((_ map or) call!387235 call!387232))))

(declare-fun bm!387230 () Bool)

(assert (=> bm!387230 (= call!387232 call!387234)))

(declare-fun b!5411404 () Bool)

(declare-fun c!943421 () Bool)

(assert (=> b!5411404 (= c!943421 ((_ is Star!15191) (h!68197 (exprs!5075 (h!68198 zl!343)))))))

(assert (=> b!5411404 (= e!3354486 e!3354478)))

(declare-fun b!5411405 () Bool)

(assert (=> b!5411405 (= e!3354487 (nullable!5360 (regOne!30894 (h!68197 (exprs!5075 (h!68198 zl!343))))))))

(declare-fun bm!387231 () Bool)

(assert (=> bm!387231 (= call!387235 (derivationStepZipperDown!639 (ite c!943422 (regTwo!30895 (h!68197 (exprs!5075 (h!68198 zl!343)))) (regOne!30894 (h!68197 (exprs!5075 (h!68198 zl!343))))) (ite c!943422 lt!2206726 (Context!9151 call!387230)) (h!68196 s!2326)))))

(declare-fun b!5411406 () Bool)

(assert (=> b!5411406 (= e!3354478 ((as const (Array Context!9150 Bool)) false))))

(declare-fun b!5411407 () Bool)

(assert (=> b!5411407 (= e!3354480 ((_ map or) call!387234 call!387235))))

(assert (= (and d!1727055 c!943424) b!5411390))

(assert (= (and d!1727055 (not c!943424)) b!5411401))

(assert (= (and b!5411401 c!943422) b!5411407))

(assert (= (and b!5411401 (not c!943422)) b!5411397))

(assert (= (and b!5411397 res!2301598) b!5411405))

(assert (= (and b!5411397 c!943419) b!5411403))

(assert (= (and b!5411397 (not c!943419)) b!5411394))

(assert (= (and b!5411394 c!943423) b!5411399))

(assert (= (and b!5411394 (not c!943423)) b!5411404))

(assert (= (and b!5411404 c!943421) b!5411402))

(assert (= (and b!5411404 (not c!943421)) b!5411406))

(assert (= (or b!5411399 b!5411402) bm!387227))

(assert (= (or b!5411399 b!5411402) bm!387228))

(assert (= (or b!5411403 bm!387227) bm!387229))

(assert (= (or b!5411403 bm!387228) bm!387230))

(assert (= (or b!5411407 b!5411403) bm!387231))

(assert (= (or b!5411407 bm!387230) bm!387226))

(declare-fun m!6435544 () Bool)

(assert (=> bm!387229 m!6435544))

(declare-fun m!6435546 () Bool)

(assert (=> bm!387231 m!6435546))

(declare-fun m!6435548 () Bool)

(assert (=> b!5411405 m!6435548))

(declare-fun m!6435550 () Bool)

(assert (=> b!5411390 m!6435550))

(declare-fun m!6435552 () Bool)

(assert (=> bm!387226 m!6435552))

(assert (=> b!5410669 d!1727055))

(declare-fun b!5411410 () Bool)

(declare-fun e!3354491 () (InoxSet Context!9150))

(declare-fun e!3354490 () (InoxSet Context!9150))

(assert (=> b!5411410 (= e!3354491 e!3354490)))

(declare-fun c!943427 () Bool)

(assert (=> b!5411410 (= c!943427 ((_ is Cons!61749) (exprs!5075 (h!68198 zl!343))))))

(declare-fun b!5411411 () Bool)

(declare-fun call!387237 () (InoxSet Context!9150))

(assert (=> b!5411411 (= e!3354491 ((_ map or) call!387237 (derivationStepZipperUp!563 (Context!9151 (t!375096 (exprs!5075 (h!68198 zl!343)))) (h!68196 s!2326))))))

(declare-fun b!5411412 () Bool)

(assert (=> b!5411412 (= e!3354490 call!387237)))

(declare-fun bm!387232 () Bool)

(assert (=> bm!387232 (= call!387237 (derivationStepZipperDown!639 (h!68197 (exprs!5075 (h!68198 zl!343))) (Context!9151 (t!375096 (exprs!5075 (h!68198 zl!343)))) (h!68196 s!2326)))))

(declare-fun b!5411413 () Bool)

(declare-fun e!3354489 () Bool)

(assert (=> b!5411413 (= e!3354489 (nullable!5360 (h!68197 (exprs!5075 (h!68198 zl!343)))))))

(declare-fun b!5411414 () Bool)

(assert (=> b!5411414 (= e!3354490 ((as const (Array Context!9150 Bool)) false))))

(declare-fun d!1727063 () Bool)

(declare-fun c!943426 () Bool)

(assert (=> d!1727063 (= c!943426 e!3354489)))

(declare-fun res!2301602 () Bool)

(assert (=> d!1727063 (=> (not res!2301602) (not e!3354489))))

(assert (=> d!1727063 (= res!2301602 ((_ is Cons!61749) (exprs!5075 (h!68198 zl!343))))))

(assert (=> d!1727063 (= (derivationStepZipperUp!563 (h!68198 zl!343) (h!68196 s!2326)) e!3354491)))

(assert (= (and d!1727063 res!2301602) b!5411413))

(assert (= (and d!1727063 c!943426) b!5411411))

(assert (= (and d!1727063 (not c!943426)) b!5411410))

(assert (= (and b!5411410 c!943427) b!5411412))

(assert (= (and b!5411410 (not c!943427)) b!5411414))

(assert (= (or b!5411411 b!5411412) bm!387232))

(declare-fun m!6435560 () Bool)

(assert (=> b!5411411 m!6435560))

(declare-fun m!6435562 () Bool)

(assert (=> bm!387232 m!6435562))

(assert (=> b!5411413 m!6434756))

(assert (=> b!5410669 d!1727063))

(declare-fun b!5411415 () Bool)

(declare-fun e!3354494 () (InoxSet Context!9150))

(declare-fun e!3354493 () (InoxSet Context!9150))

(assert (=> b!5411415 (= e!3354494 e!3354493)))

(declare-fun c!943429 () Bool)

(assert (=> b!5411415 (= c!943429 ((_ is Cons!61749) (exprs!5075 lt!2206726)))))

(declare-fun call!387238 () (InoxSet Context!9150))

(declare-fun b!5411416 () Bool)

(assert (=> b!5411416 (= e!3354494 ((_ map or) call!387238 (derivationStepZipperUp!563 (Context!9151 (t!375096 (exprs!5075 lt!2206726))) (h!68196 s!2326))))))

(declare-fun b!5411417 () Bool)

(assert (=> b!5411417 (= e!3354493 call!387238)))

(declare-fun bm!387233 () Bool)

(assert (=> bm!387233 (= call!387238 (derivationStepZipperDown!639 (h!68197 (exprs!5075 lt!2206726)) (Context!9151 (t!375096 (exprs!5075 lt!2206726))) (h!68196 s!2326)))))

(declare-fun b!5411418 () Bool)

(declare-fun e!3354492 () Bool)

(assert (=> b!5411418 (= e!3354492 (nullable!5360 (h!68197 (exprs!5075 lt!2206726))))))

(declare-fun b!5411419 () Bool)

(assert (=> b!5411419 (= e!3354493 ((as const (Array Context!9150 Bool)) false))))

(declare-fun d!1727067 () Bool)

(declare-fun c!943428 () Bool)

(assert (=> d!1727067 (= c!943428 e!3354492)))

(declare-fun res!2301603 () Bool)

(assert (=> d!1727067 (=> (not res!2301603) (not e!3354492))))

(assert (=> d!1727067 (= res!2301603 ((_ is Cons!61749) (exprs!5075 lt!2206726)))))

(assert (=> d!1727067 (= (derivationStepZipperUp!563 lt!2206726 (h!68196 s!2326)) e!3354494)))

(assert (= (and d!1727067 res!2301603) b!5411418))

(assert (= (and d!1727067 c!943428) b!5411416))

(assert (= (and d!1727067 (not c!943428)) b!5411415))

(assert (= (and b!5411415 c!943429) b!5411417))

(assert (= (and b!5411415 (not c!943429)) b!5411419))

(assert (= (or b!5411416 b!5411417) bm!387233))

(declare-fun m!6435568 () Bool)

(assert (=> b!5411416 m!6435568))

(declare-fun m!6435572 () Bool)

(assert (=> bm!387233 m!6435572))

(declare-fun m!6435574 () Bool)

(assert (=> b!5411418 m!6435574))

(assert (=> b!5410669 d!1727067))

(declare-fun b!5411434 () Bool)

(declare-fun e!3354504 () (InoxSet Context!9150))

(declare-fun e!3354503 () (InoxSet Context!9150))

(assert (=> b!5411434 (= e!3354504 e!3354503)))

(declare-fun c!943434 () Bool)

(assert (=> b!5411434 (= c!943434 ((_ is Cons!61749) (exprs!5075 (Context!9151 (Cons!61749 (h!68197 (exprs!5075 (h!68198 zl!343))) (t!375096 (exprs!5075 (h!68198 zl!343))))))))))

(declare-fun call!387240 () (InoxSet Context!9150))

(declare-fun b!5411435 () Bool)

(assert (=> b!5411435 (= e!3354504 ((_ map or) call!387240 (derivationStepZipperUp!563 (Context!9151 (t!375096 (exprs!5075 (Context!9151 (Cons!61749 (h!68197 (exprs!5075 (h!68198 zl!343))) (t!375096 (exprs!5075 (h!68198 zl!343)))))))) (h!68196 s!2326))))))

(declare-fun b!5411436 () Bool)

(assert (=> b!5411436 (= e!3354503 call!387240)))

(declare-fun bm!387235 () Bool)

(assert (=> bm!387235 (= call!387240 (derivationStepZipperDown!639 (h!68197 (exprs!5075 (Context!9151 (Cons!61749 (h!68197 (exprs!5075 (h!68198 zl!343))) (t!375096 (exprs!5075 (h!68198 zl!343))))))) (Context!9151 (t!375096 (exprs!5075 (Context!9151 (Cons!61749 (h!68197 (exprs!5075 (h!68198 zl!343))) (t!375096 (exprs!5075 (h!68198 zl!343)))))))) (h!68196 s!2326)))))

(declare-fun b!5411437 () Bool)

(declare-fun e!3354502 () Bool)

(assert (=> b!5411437 (= e!3354502 (nullable!5360 (h!68197 (exprs!5075 (Context!9151 (Cons!61749 (h!68197 (exprs!5075 (h!68198 zl!343))) (t!375096 (exprs!5075 (h!68198 zl!343)))))))))))

(declare-fun b!5411438 () Bool)

(assert (=> b!5411438 (= e!3354503 ((as const (Array Context!9150 Bool)) false))))

(declare-fun d!1727075 () Bool)

(declare-fun c!943433 () Bool)

(assert (=> d!1727075 (= c!943433 e!3354502)))

(declare-fun res!2301612 () Bool)

(assert (=> d!1727075 (=> (not res!2301612) (not e!3354502))))

(assert (=> d!1727075 (= res!2301612 ((_ is Cons!61749) (exprs!5075 (Context!9151 (Cons!61749 (h!68197 (exprs!5075 (h!68198 zl!343))) (t!375096 (exprs!5075 (h!68198 zl!343))))))))))

(assert (=> d!1727075 (= (derivationStepZipperUp!563 (Context!9151 (Cons!61749 (h!68197 (exprs!5075 (h!68198 zl!343))) (t!375096 (exprs!5075 (h!68198 zl!343))))) (h!68196 s!2326)) e!3354504)))

(assert (= (and d!1727075 res!2301612) b!5411437))

(assert (= (and d!1727075 c!943433) b!5411435))

(assert (= (and d!1727075 (not c!943433)) b!5411434))

(assert (= (and b!5411434 c!943434) b!5411436))

(assert (= (and b!5411434 (not c!943434)) b!5411438))

(assert (= (or b!5411435 b!5411436) bm!387235))

(declare-fun m!6435576 () Bool)

(assert (=> b!5411435 m!6435576))

(declare-fun m!6435578 () Bool)

(assert (=> bm!387235 m!6435578))

(declare-fun m!6435580 () Bool)

(assert (=> b!5411437 m!6435580))

(assert (=> b!5410669 d!1727075))

(declare-fun d!1727077 () Bool)

(declare-fun c!943435 () Bool)

(assert (=> d!1727077 (= c!943435 (isEmpty!33739 (_2!35693 lt!2206704)))))

(declare-fun e!3354505 () Bool)

(assert (=> d!1727077 (= (matchZipper!1435 lt!2206713 (_2!35693 lt!2206704)) e!3354505)))

(declare-fun b!5411439 () Bool)

(assert (=> b!5411439 (= e!3354505 (nullableZipper!1444 lt!2206713))))

(declare-fun b!5411440 () Bool)

(assert (=> b!5411440 (= e!3354505 (matchZipper!1435 (derivationStepZipper!1430 lt!2206713 (head!11605 (_2!35693 lt!2206704))) (tail!10702 (_2!35693 lt!2206704))))))

(assert (= (and d!1727077 c!943435) b!5411439))

(assert (= (and d!1727077 (not c!943435)) b!5411440))

(declare-fun m!6435586 () Bool)

(assert (=> d!1727077 m!6435586))

(declare-fun m!6435588 () Bool)

(assert (=> b!5411439 m!6435588))

(declare-fun m!6435592 () Bool)

(assert (=> b!5411440 m!6435592))

(assert (=> b!5411440 m!6435592))

(declare-fun m!6435596 () Bool)

(assert (=> b!5411440 m!6435596))

(declare-fun m!6435598 () Bool)

(assert (=> b!5411440 m!6435598))

(assert (=> b!5411440 m!6435596))

(assert (=> b!5411440 m!6435598))

(declare-fun m!6435602 () Bool)

(assert (=> b!5411440 m!6435602))

(assert (=> b!5410674 d!1727077))

(declare-fun b!5411520 () Bool)

(declare-fun e!3354545 () Option!15302)

(assert (=> b!5411520 (= e!3354545 (Some!15301 (tuple2!64781 Nil!61748 s!2326)))))

(declare-fun b!5411521 () Bool)

(declare-fun lt!2206910 () Unit!154286)

(declare-fun lt!2206908 () Unit!154286)

(assert (=> b!5411521 (= lt!2206910 lt!2206908)))

(assert (=> b!5411521 (= (++!13555 (++!13555 Nil!61748 (Cons!61748 (h!68196 s!2326) Nil!61748)) (t!375095 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1839 (List!61872 C!30652 List!61872 List!61872) Unit!154286)

(assert (=> b!5411521 (= lt!2206908 (lemmaMoveElementToOtherListKeepsConcatEq!1839 Nil!61748 (h!68196 s!2326) (t!375095 s!2326) s!2326))))

(declare-fun e!3354544 () Option!15302)

(assert (=> b!5411521 (= e!3354544 (findConcatSeparation!1716 (regOne!30894 r!7292) (regTwo!30894 r!7292) (++!13555 Nil!61748 (Cons!61748 (h!68196 s!2326) Nil!61748)) (t!375095 s!2326) s!2326))))

(declare-fun b!5411522 () Bool)

(assert (=> b!5411522 (= e!3354545 e!3354544)))

(declare-fun c!943445 () Bool)

(assert (=> b!5411522 (= c!943445 ((_ is Nil!61748) s!2326))))

(declare-fun d!1727079 () Bool)

(declare-fun e!3354542 () Bool)

(assert (=> d!1727079 e!3354542))

(declare-fun res!2301626 () Bool)

(assert (=> d!1727079 (=> res!2301626 e!3354542)))

(declare-fun e!3354546 () Bool)

(assert (=> d!1727079 (= res!2301626 e!3354546)))

(declare-fun res!2301628 () Bool)

(assert (=> d!1727079 (=> (not res!2301628) (not e!3354546))))

(declare-fun lt!2206909 () Option!15302)

(assert (=> d!1727079 (= res!2301628 (isDefined!12005 lt!2206909))))

(assert (=> d!1727079 (= lt!2206909 e!3354545)))

(declare-fun c!943444 () Bool)

(declare-fun e!3354543 () Bool)

(assert (=> d!1727079 (= c!943444 e!3354543)))

(declare-fun res!2301624 () Bool)

(assert (=> d!1727079 (=> (not res!2301624) (not e!3354543))))

(assert (=> d!1727079 (= res!2301624 (matchR!7376 (regOne!30894 r!7292) Nil!61748))))

(assert (=> d!1727079 (validRegex!6927 (regOne!30894 r!7292))))

(assert (=> d!1727079 (= (findConcatSeparation!1716 (regOne!30894 r!7292) (regTwo!30894 r!7292) Nil!61748 s!2326 s!2326) lt!2206909)))

(declare-fun b!5411523 () Bool)

(declare-fun res!2301627 () Bool)

(assert (=> b!5411523 (=> (not res!2301627) (not e!3354546))))

(assert (=> b!5411523 (= res!2301627 (matchR!7376 (regTwo!30894 r!7292) (_2!35693 (get!21289 lt!2206909))))))

(declare-fun b!5411524 () Bool)

(declare-fun res!2301625 () Bool)

(assert (=> b!5411524 (=> (not res!2301625) (not e!3354546))))

(assert (=> b!5411524 (= res!2301625 (matchR!7376 (regOne!30894 r!7292) (_1!35693 (get!21289 lt!2206909))))))

(declare-fun b!5411525 () Bool)

(assert (=> b!5411525 (= e!3354543 (matchR!7376 (regTwo!30894 r!7292) s!2326))))

(declare-fun b!5411526 () Bool)

(assert (=> b!5411526 (= e!3354544 None!15301)))

(declare-fun b!5411527 () Bool)

(assert (=> b!5411527 (= e!3354546 (= (++!13555 (_1!35693 (get!21289 lt!2206909)) (_2!35693 (get!21289 lt!2206909))) s!2326))))

(declare-fun b!5411528 () Bool)

(assert (=> b!5411528 (= e!3354542 (not (isDefined!12005 lt!2206909)))))

(assert (= (and d!1727079 res!2301624) b!5411525))

(assert (= (and d!1727079 c!943444) b!5411520))

(assert (= (and d!1727079 (not c!943444)) b!5411522))

(assert (= (and b!5411522 c!943445) b!5411526))

(assert (= (and b!5411522 (not c!943445)) b!5411521))

(assert (= (and d!1727079 res!2301628) b!5411524))

(assert (= (and b!5411524 res!2301625) b!5411523))

(assert (= (and b!5411523 res!2301627) b!5411527))

(assert (= (and d!1727079 (not res!2301626)) b!5411528))

(declare-fun m!6435634 () Bool)

(assert (=> b!5411521 m!6435634))

(assert (=> b!5411521 m!6435634))

(declare-fun m!6435636 () Bool)

(assert (=> b!5411521 m!6435636))

(declare-fun m!6435638 () Bool)

(assert (=> b!5411521 m!6435638))

(assert (=> b!5411521 m!6435634))

(declare-fun m!6435640 () Bool)

(assert (=> b!5411521 m!6435640))

(declare-fun m!6435642 () Bool)

(assert (=> d!1727079 m!6435642))

(declare-fun m!6435644 () Bool)

(assert (=> d!1727079 m!6435644))

(declare-fun m!6435646 () Bool)

(assert (=> d!1727079 m!6435646))

(declare-fun m!6435648 () Bool)

(assert (=> b!5411523 m!6435648))

(declare-fun m!6435650 () Bool)

(assert (=> b!5411523 m!6435650))

(assert (=> b!5411527 m!6435648))

(declare-fun m!6435652 () Bool)

(assert (=> b!5411527 m!6435652))

(assert (=> b!5411528 m!6435642))

(declare-fun m!6435654 () Bool)

(assert (=> b!5411525 m!6435654))

(assert (=> b!5411524 m!6435648))

(declare-fun m!6435656 () Bool)

(assert (=> b!5411524 m!6435656))

(assert (=> b!5410653 d!1727079))

(declare-fun d!1727105 () Bool)

(declare-fun choose!40866 (Int) Bool)

(assert (=> d!1727105 (= (Exists!2372 lambda!282522) (choose!40866 lambda!282522))))

(declare-fun bs!1249826 () Bool)

(assert (= bs!1249826 d!1727105))

(declare-fun m!6435658 () Bool)

(assert (=> bs!1249826 m!6435658))

(assert (=> b!5410653 d!1727105))

(declare-fun d!1727107 () Bool)

(assert (=> d!1727107 (= (Exists!2372 lambda!282523) (choose!40866 lambda!282523))))

(declare-fun bs!1249827 () Bool)

(assert (= bs!1249827 d!1727107))

(declare-fun m!6435660 () Bool)

(assert (=> bs!1249827 m!6435660))

(assert (=> b!5410653 d!1727107))

(declare-fun bs!1249828 () Bool)

(declare-fun d!1727109 () Bool)

(assert (= bs!1249828 (and d!1727109 b!5411303)))

(declare-fun lambda!282610 () Int)

(assert (=> bs!1249828 (not (= lambda!282610 lambda!282601))))

(declare-fun bs!1249829 () Bool)

(assert (= bs!1249829 (and d!1727109 b!5410672)))

(assert (=> bs!1249829 (not (= lambda!282610 lambda!282528))))

(declare-fun bs!1249830 () Bool)

(assert (= bs!1249830 (and d!1727109 b!5410658)))

(assert (=> bs!1249830 (not (= lambda!282610 lambda!282531))))

(assert (=> bs!1249830 (not (= lambda!282610 lambda!282530))))

(declare-fun bs!1249831 () Bool)

(assert (= bs!1249831 (and d!1727109 b!5410653)))

(assert (=> bs!1249831 (= lambda!282610 lambda!282522)))

(assert (=> bs!1249831 (not (= lambda!282610 lambda!282523))))

(declare-fun bs!1249832 () Bool)

(assert (= bs!1249832 (and d!1727109 b!5411159)))

(assert (=> bs!1249832 (not (= lambda!282610 lambda!282583))))

(assert (=> bs!1249829 (= (= (regOne!30894 r!7292) lt!2206708) (= lambda!282610 lambda!282527))))

(declare-fun bs!1249833 () Bool)

(assert (= bs!1249833 (and d!1727109 b!5411310)))

(assert (=> bs!1249833 (not (= lambda!282610 lambda!282600))))

(declare-fun bs!1249834 () Bool)

(assert (= bs!1249834 (and d!1727109 b!5411166)))

(assert (=> bs!1249834 (not (= lambda!282610 lambda!282582))))

(assert (=> bs!1249830 (= (and (= s!2326 (_1!35693 lt!2206741)) (= (regOne!30894 r!7292) (reg!15520 (regOne!30894 r!7292))) (= (regTwo!30894 r!7292) lt!2206725)) (= lambda!282610 lambda!282529))))

(assert (=> d!1727109 true))

(assert (=> d!1727109 true))

(assert (=> d!1727109 true))

(assert (=> d!1727109 (= (isDefined!12005 (findConcatSeparation!1716 (regOne!30894 r!7292) (regTwo!30894 r!7292) Nil!61748 s!2326 s!2326)) (Exists!2372 lambda!282610))))

(declare-fun lt!2206913 () Unit!154286)

(declare-fun choose!40867 (Regex!15191 Regex!15191 List!61872) Unit!154286)

(assert (=> d!1727109 (= lt!2206913 (choose!40867 (regOne!30894 r!7292) (regTwo!30894 r!7292) s!2326))))

(assert (=> d!1727109 (validRegex!6927 (regOne!30894 r!7292))))

(assert (=> d!1727109 (= (lemmaFindConcatSeparationEquivalentToExists!1480 (regOne!30894 r!7292) (regTwo!30894 r!7292) s!2326) lt!2206913)))

(declare-fun bs!1249835 () Bool)

(assert (= bs!1249835 d!1727109))

(assert (=> bs!1249835 m!6435646))

(declare-fun m!6435662 () Bool)

(assert (=> bs!1249835 m!6435662))

(declare-fun m!6435664 () Bool)

(assert (=> bs!1249835 m!6435664))

(assert (=> bs!1249835 m!6434760))

(assert (=> bs!1249835 m!6434760))

(assert (=> bs!1249835 m!6434762))

(assert (=> b!5410653 d!1727109))

(declare-fun bs!1249836 () Bool)

(declare-fun d!1727111 () Bool)

(assert (= bs!1249836 (and d!1727111 b!5411303)))

(declare-fun lambda!282615 () Int)

(assert (=> bs!1249836 (not (= lambda!282615 lambda!282601))))

(declare-fun bs!1249837 () Bool)

(assert (= bs!1249837 (and d!1727111 b!5410672)))

(assert (=> bs!1249837 (not (= lambda!282615 lambda!282528))))

(declare-fun bs!1249838 () Bool)

(assert (= bs!1249838 (and d!1727111 b!5410658)))

(assert (=> bs!1249838 (not (= lambda!282615 lambda!282531))))

(assert (=> bs!1249838 (not (= lambda!282615 lambda!282530))))

(declare-fun bs!1249839 () Bool)

(assert (= bs!1249839 (and d!1727111 b!5410653)))

(assert (=> bs!1249839 (= lambda!282615 lambda!282522)))

(assert (=> bs!1249839 (not (= lambda!282615 lambda!282523))))

(declare-fun bs!1249840 () Bool)

(assert (= bs!1249840 (and d!1727111 b!5411159)))

(assert (=> bs!1249840 (not (= lambda!282615 lambda!282583))))

(assert (=> bs!1249837 (= (= (regOne!30894 r!7292) lt!2206708) (= lambda!282615 lambda!282527))))

(declare-fun bs!1249841 () Bool)

(assert (= bs!1249841 (and d!1727111 b!5411310)))

(assert (=> bs!1249841 (not (= lambda!282615 lambda!282600))))

(declare-fun bs!1249842 () Bool)

(assert (= bs!1249842 (and d!1727111 d!1727109)))

(assert (=> bs!1249842 (= lambda!282615 lambda!282610)))

(declare-fun bs!1249843 () Bool)

(assert (= bs!1249843 (and d!1727111 b!5411166)))

(assert (=> bs!1249843 (not (= lambda!282615 lambda!282582))))

(assert (=> bs!1249838 (= (and (= s!2326 (_1!35693 lt!2206741)) (= (regOne!30894 r!7292) (reg!15520 (regOne!30894 r!7292))) (= (regTwo!30894 r!7292) lt!2206725)) (= lambda!282615 lambda!282529))))

(assert (=> d!1727111 true))

(assert (=> d!1727111 true))

(assert (=> d!1727111 true))

(declare-fun lambda!282616 () Int)

(assert (=> bs!1249836 (= lambda!282616 lambda!282601)))

(assert (=> bs!1249837 (= (= (regOne!30894 r!7292) lt!2206708) (= lambda!282616 lambda!282528))))

(assert (=> bs!1249838 (not (= lambda!282616 lambda!282531))))

(assert (=> bs!1249838 (= (and (= s!2326 (_1!35693 lt!2206741)) (= (regOne!30894 r!7292) (reg!15520 (regOne!30894 r!7292))) (= (regTwo!30894 r!7292) lt!2206725)) (= lambda!282616 lambda!282530))))

(assert (=> bs!1249839 (not (= lambda!282616 lambda!282522))))

(assert (=> bs!1249839 (= lambda!282616 lambda!282523)))

(declare-fun bs!1249844 () Bool)

(assert (= bs!1249844 d!1727111))

(assert (=> bs!1249844 (not (= lambda!282616 lambda!282615))))

(assert (=> bs!1249840 (= (and (= (regOne!30894 r!7292) (regOne!30894 lt!2206753)) (= (regTwo!30894 r!7292) (regTwo!30894 lt!2206753))) (= lambda!282616 lambda!282583))))

(assert (=> bs!1249837 (not (= lambda!282616 lambda!282527))))

(assert (=> bs!1249841 (not (= lambda!282616 lambda!282600))))

(assert (=> bs!1249842 (not (= lambda!282616 lambda!282610))))

(assert (=> bs!1249843 (not (= lambda!282616 lambda!282582))))

(assert (=> bs!1249838 (not (= lambda!282616 lambda!282529))))

(assert (=> d!1727111 true))

(assert (=> d!1727111 true))

(assert (=> d!1727111 true))

(assert (=> d!1727111 (= (Exists!2372 lambda!282615) (Exists!2372 lambda!282616))))

(declare-fun lt!2206916 () Unit!154286)

(declare-fun choose!40868 (Regex!15191 Regex!15191 List!61872) Unit!154286)

(assert (=> d!1727111 (= lt!2206916 (choose!40868 (regOne!30894 r!7292) (regTwo!30894 r!7292) s!2326))))

(assert (=> d!1727111 (validRegex!6927 (regOne!30894 r!7292))))

(assert (=> d!1727111 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1026 (regOne!30894 r!7292) (regTwo!30894 r!7292) s!2326) lt!2206916)))

(declare-fun m!6435666 () Bool)

(assert (=> bs!1249844 m!6435666))

(declare-fun m!6435668 () Bool)

(assert (=> bs!1249844 m!6435668))

(declare-fun m!6435670 () Bool)

(assert (=> bs!1249844 m!6435670))

(assert (=> bs!1249844 m!6435646))

(assert (=> b!5410653 d!1727111))

(declare-fun d!1727113 () Bool)

(declare-fun isEmpty!33741 (Option!15302) Bool)

(assert (=> d!1727113 (= (isDefined!12005 (findConcatSeparation!1716 (regOne!30894 r!7292) (regTwo!30894 r!7292) Nil!61748 s!2326 s!2326)) (not (isEmpty!33741 (findConcatSeparation!1716 (regOne!30894 r!7292) (regTwo!30894 r!7292) Nil!61748 s!2326 s!2326))))))

(declare-fun bs!1249845 () Bool)

(assert (= bs!1249845 d!1727113))

(assert (=> bs!1249845 m!6434760))

(declare-fun m!6435672 () Bool)

(assert (=> bs!1249845 m!6435672))

(assert (=> b!5410653 d!1727113))

(declare-fun b!5411559 () Bool)

(declare-fun e!3354569 () Bool)

(declare-fun e!3354567 () Bool)

(assert (=> b!5411559 (= e!3354569 e!3354567)))

(declare-fun c!943450 () Bool)

(assert (=> b!5411559 (= c!943450 ((_ is Star!15191) r!7292))))

(declare-fun b!5411560 () Bool)

(declare-fun res!2301655 () Bool)

(declare-fun e!3354570 () Bool)

(assert (=> b!5411560 (=> (not res!2301655) (not e!3354570))))

(declare-fun call!387248 () Bool)

(assert (=> b!5411560 (= res!2301655 call!387248)))

(declare-fun e!3354568 () Bool)

(assert (=> b!5411560 (= e!3354568 e!3354570)))

(declare-fun bm!387243 () Bool)

(declare-fun call!387250 () Bool)

(assert (=> bm!387243 (= call!387248 call!387250)))

(declare-fun bm!387244 () Bool)

(declare-fun c!943451 () Bool)

(assert (=> bm!387244 (= call!387250 (validRegex!6927 (ite c!943450 (reg!15520 r!7292) (ite c!943451 (regOne!30895 r!7292) (regOne!30894 r!7292)))))))

(declare-fun b!5411561 () Bool)

(assert (=> b!5411561 (= e!3354567 e!3354568)))

(assert (=> b!5411561 (= c!943451 ((_ is Union!15191) r!7292))))

(declare-fun b!5411562 () Bool)

(declare-fun e!3354573 () Bool)

(assert (=> b!5411562 (= e!3354573 call!387250)))

(declare-fun b!5411563 () Bool)

(declare-fun e!3354572 () Bool)

(declare-fun call!387249 () Bool)

(assert (=> b!5411563 (= e!3354572 call!387249)))

(declare-fun b!5411564 () Bool)

(declare-fun e!3354571 () Bool)

(assert (=> b!5411564 (= e!3354571 e!3354572)))

(declare-fun res!2301653 () Bool)

(assert (=> b!5411564 (=> (not res!2301653) (not e!3354572))))

(assert (=> b!5411564 (= res!2301653 call!387248)))

(declare-fun d!1727115 () Bool)

(declare-fun res!2301652 () Bool)

(assert (=> d!1727115 (=> res!2301652 e!3354569)))

(assert (=> d!1727115 (= res!2301652 ((_ is ElementMatch!15191) r!7292))))

(assert (=> d!1727115 (= (validRegex!6927 r!7292) e!3354569)))

(declare-fun bm!387245 () Bool)

(assert (=> bm!387245 (= call!387249 (validRegex!6927 (ite c!943451 (regTwo!30895 r!7292) (regTwo!30894 r!7292))))))

(declare-fun b!5411565 () Bool)

(declare-fun res!2301651 () Bool)

(assert (=> b!5411565 (=> res!2301651 e!3354571)))

(assert (=> b!5411565 (= res!2301651 (not ((_ is Concat!24036) r!7292)))))

(assert (=> b!5411565 (= e!3354568 e!3354571)))

(declare-fun b!5411566 () Bool)

(assert (=> b!5411566 (= e!3354570 call!387249)))

(declare-fun b!5411567 () Bool)

(assert (=> b!5411567 (= e!3354567 e!3354573)))

(declare-fun res!2301654 () Bool)

(assert (=> b!5411567 (= res!2301654 (not (nullable!5360 (reg!15520 r!7292))))))

(assert (=> b!5411567 (=> (not res!2301654) (not e!3354573))))

(assert (= (and d!1727115 (not res!2301652)) b!5411559))

(assert (= (and b!5411559 c!943450) b!5411567))

(assert (= (and b!5411559 (not c!943450)) b!5411561))

(assert (= (and b!5411567 res!2301654) b!5411562))

(assert (= (and b!5411561 c!943451) b!5411560))

(assert (= (and b!5411561 (not c!943451)) b!5411565))

(assert (= (and b!5411560 res!2301655) b!5411566))

(assert (= (and b!5411565 (not res!2301651)) b!5411564))

(assert (= (and b!5411564 res!2301653) b!5411563))

(assert (= (or b!5411566 b!5411563) bm!387245))

(assert (= (or b!5411560 b!5411564) bm!387243))

(assert (= (or b!5411562 bm!387243) bm!387244))

(declare-fun m!6435674 () Bool)

(assert (=> bm!387244 m!6435674))

(declare-fun m!6435676 () Bool)

(assert (=> bm!387245 m!6435676))

(declare-fun m!6435678 () Bool)

(assert (=> b!5411567 m!6435678))

(assert (=> start!568126 d!1727115))

(declare-fun d!1727117 () Bool)

(declare-fun lt!2206917 () Regex!15191)

(assert (=> d!1727117 (validRegex!6927 lt!2206917)))

(assert (=> d!1727117 (= lt!2206917 (generalisedUnion!1120 (unfocusZipperList!633 lt!2206740)))))

(assert (=> d!1727117 (= (unfocusZipper!933 lt!2206740) lt!2206917)))

(declare-fun bs!1249846 () Bool)

(assert (= bs!1249846 d!1727117))

(declare-fun m!6435680 () Bool)

(assert (=> bs!1249846 m!6435680))

(declare-fun m!6435682 () Bool)

(assert (=> bs!1249846 m!6435682))

(assert (=> bs!1249846 m!6435682))

(declare-fun m!6435684 () Bool)

(assert (=> bs!1249846 m!6435684))

(assert (=> b!5410652 d!1727117))

(declare-fun d!1727119 () Bool)

(assert (=> d!1727119 (= (matchR!7376 lt!2206706 (_2!35693 lt!2206704)) (matchZipper!1435 lt!2206713 (_2!35693 lt!2206704)))))

(declare-fun lt!2206920 () Unit!154286)

(declare-fun choose!40869 ((InoxSet Context!9150) List!61874 Regex!15191 List!61872) Unit!154286)

(assert (=> d!1727119 (= lt!2206920 (choose!40869 lt!2206713 lt!2206740 lt!2206706 (_2!35693 lt!2206704)))))

(assert (=> d!1727119 (validRegex!6927 lt!2206706)))

(assert (=> d!1727119 (= (theoremZipperRegexEquiv!505 lt!2206713 lt!2206740 lt!2206706 (_2!35693 lt!2206704)) lt!2206920)))

(declare-fun bs!1249847 () Bool)

(assert (= bs!1249847 d!1727119))

(assert (=> bs!1249847 m!6434708))

(assert (=> bs!1249847 m!6434782))

(declare-fun m!6435686 () Bool)

(assert (=> bs!1249847 m!6435686))

(declare-fun m!6435688 () Bool)

(assert (=> bs!1249847 m!6435688))

(assert (=> b!5410672 d!1727119))

(declare-fun d!1727121 () Bool)

(declare-fun c!943452 () Bool)

(assert (=> d!1727121 (= c!943452 (isEmpty!33739 lt!2206719))))

(declare-fun e!3354574 () Bool)

(assert (=> d!1727121 (= (matchZipper!1435 (store ((as const (Array Context!9150 Bool)) false) (Context!9151 (++!13556 lt!2206698 lt!2206730)) true) lt!2206719) e!3354574)))

(declare-fun b!5411568 () Bool)

(assert (=> b!5411568 (= e!3354574 (nullableZipper!1444 (store ((as const (Array Context!9150 Bool)) false) (Context!9151 (++!13556 lt!2206698 lt!2206730)) true)))))

(declare-fun b!5411569 () Bool)

(assert (=> b!5411569 (= e!3354574 (matchZipper!1435 (derivationStepZipper!1430 (store ((as const (Array Context!9150 Bool)) false) (Context!9151 (++!13556 lt!2206698 lt!2206730)) true) (head!11605 lt!2206719)) (tail!10702 lt!2206719)))))

(assert (= (and d!1727121 c!943452) b!5411568))

(assert (= (and d!1727121 (not c!943452)) b!5411569))

(declare-fun m!6435690 () Bool)

(assert (=> d!1727121 m!6435690))

(assert (=> b!5411568 m!6434676))

(declare-fun m!6435692 () Bool)

(assert (=> b!5411568 m!6435692))

(declare-fun m!6435694 () Bool)

(assert (=> b!5411569 m!6435694))

(assert (=> b!5411569 m!6434676))

(assert (=> b!5411569 m!6435694))

(declare-fun m!6435696 () Bool)

(assert (=> b!5411569 m!6435696))

(declare-fun m!6435698 () Bool)

(assert (=> b!5411569 m!6435698))

(assert (=> b!5411569 m!6435696))

(assert (=> b!5411569 m!6435698))

(declare-fun m!6435700 () Bool)

(assert (=> b!5411569 m!6435700))

(assert (=> b!5410672 d!1727121))

(declare-fun b!5411570 () Bool)

(declare-fun e!3354577 () Bool)

(assert (=> b!5411570 (= e!3354577 (matchR!7376 (derivativeStep!4265 (reg!15520 (regOne!30894 r!7292)) (head!11605 (_1!35693 lt!2206704))) (tail!10702 (_1!35693 lt!2206704))))))

(declare-fun b!5411571 () Bool)

(declare-fun e!3354581 () Bool)

(assert (=> b!5411571 (= e!3354581 (= (head!11605 (_1!35693 lt!2206704)) (c!943211 (reg!15520 (regOne!30894 r!7292)))))))

(declare-fun b!5411572 () Bool)

(declare-fun res!2301659 () Bool)

(declare-fun e!3354576 () Bool)

(assert (=> b!5411572 (=> res!2301659 e!3354576)))

(assert (=> b!5411572 (= res!2301659 (not ((_ is ElementMatch!15191) (reg!15520 (regOne!30894 r!7292)))))))

(declare-fun e!3354579 () Bool)

(assert (=> b!5411572 (= e!3354579 e!3354576)))

(declare-fun b!5411573 () Bool)

(declare-fun res!2301660 () Bool)

(assert (=> b!5411573 (=> (not res!2301660) (not e!3354581))))

(assert (=> b!5411573 (= res!2301660 (isEmpty!33739 (tail!10702 (_1!35693 lt!2206704))))))

(declare-fun bm!387246 () Bool)

(declare-fun call!387251 () Bool)

(assert (=> bm!387246 (= call!387251 (isEmpty!33739 (_1!35693 lt!2206704)))))

(declare-fun b!5411574 () Bool)

(declare-fun e!3354578 () Bool)

(declare-fun e!3354575 () Bool)

(assert (=> b!5411574 (= e!3354578 e!3354575)))

(declare-fun res!2301663 () Bool)

(assert (=> b!5411574 (=> res!2301663 e!3354575)))

(assert (=> b!5411574 (= res!2301663 call!387251)))

(declare-fun b!5411575 () Bool)

(assert (=> b!5411575 (= e!3354575 (not (= (head!11605 (_1!35693 lt!2206704)) (c!943211 (reg!15520 (regOne!30894 r!7292))))))))

(declare-fun b!5411576 () Bool)

(assert (=> b!5411576 (= e!3354576 e!3354578)))

(declare-fun res!2301661 () Bool)

(assert (=> b!5411576 (=> (not res!2301661) (not e!3354578))))

(declare-fun lt!2206921 () Bool)

(assert (=> b!5411576 (= res!2301661 (not lt!2206921))))

(declare-fun b!5411578 () Bool)

(declare-fun e!3354580 () Bool)

(assert (=> b!5411578 (= e!3354580 e!3354579)))

(declare-fun c!943453 () Bool)

(assert (=> b!5411578 (= c!943453 ((_ is EmptyLang!15191) (reg!15520 (regOne!30894 r!7292))))))

(declare-fun b!5411579 () Bool)

(declare-fun res!2301658 () Bool)

(assert (=> b!5411579 (=> (not res!2301658) (not e!3354581))))

(assert (=> b!5411579 (= res!2301658 (not call!387251))))

(declare-fun d!1727123 () Bool)

(assert (=> d!1727123 e!3354580))

(declare-fun c!943455 () Bool)

(assert (=> d!1727123 (= c!943455 ((_ is EmptyExpr!15191) (reg!15520 (regOne!30894 r!7292))))))

(assert (=> d!1727123 (= lt!2206921 e!3354577)))

(declare-fun c!943454 () Bool)

(assert (=> d!1727123 (= c!943454 (isEmpty!33739 (_1!35693 lt!2206704)))))

(assert (=> d!1727123 (validRegex!6927 (reg!15520 (regOne!30894 r!7292)))))

(assert (=> d!1727123 (= (matchR!7376 (reg!15520 (regOne!30894 r!7292)) (_1!35693 lt!2206704)) lt!2206921)))

(declare-fun b!5411577 () Bool)

(assert (=> b!5411577 (= e!3354579 (not lt!2206921))))

(declare-fun b!5411580 () Bool)

(assert (=> b!5411580 (= e!3354577 (nullable!5360 (reg!15520 (regOne!30894 r!7292))))))

(declare-fun b!5411581 () Bool)

(declare-fun res!2301656 () Bool)

(assert (=> b!5411581 (=> res!2301656 e!3354576)))

(assert (=> b!5411581 (= res!2301656 e!3354581)))

(declare-fun res!2301662 () Bool)

(assert (=> b!5411581 (=> (not res!2301662) (not e!3354581))))

(assert (=> b!5411581 (= res!2301662 lt!2206921)))

(declare-fun b!5411582 () Bool)

(assert (=> b!5411582 (= e!3354580 (= lt!2206921 call!387251))))

(declare-fun b!5411583 () Bool)

(declare-fun res!2301657 () Bool)

(assert (=> b!5411583 (=> res!2301657 e!3354575)))

(assert (=> b!5411583 (= res!2301657 (not (isEmpty!33739 (tail!10702 (_1!35693 lt!2206704)))))))

(assert (= (and d!1727123 c!943454) b!5411580))

(assert (= (and d!1727123 (not c!943454)) b!5411570))

(assert (= (and d!1727123 c!943455) b!5411582))

(assert (= (and d!1727123 (not c!943455)) b!5411578))

(assert (= (and b!5411578 c!943453) b!5411577))

(assert (= (and b!5411578 (not c!943453)) b!5411572))

(assert (= (and b!5411572 (not res!2301659)) b!5411581))

(assert (= (and b!5411581 res!2301662) b!5411579))

(assert (= (and b!5411579 res!2301658) b!5411573))

(assert (= (and b!5411573 res!2301660) b!5411571))

(assert (= (and b!5411581 (not res!2301656)) b!5411576))

(assert (= (and b!5411576 res!2301661) b!5411574))

(assert (= (and b!5411574 (not res!2301663)) b!5411583))

(assert (= (and b!5411583 (not res!2301657)) b!5411575))

(assert (= (or b!5411582 b!5411574 b!5411579) bm!387246))

(assert (=> b!5411573 m!6435406))

(assert (=> b!5411573 m!6435406))

(declare-fun m!6435702 () Bool)

(assert (=> b!5411573 m!6435702))

(assert (=> b!5411583 m!6435406))

(assert (=> b!5411583 m!6435406))

(assert (=> b!5411583 m!6435702))

(declare-fun m!6435704 () Bool)

(assert (=> b!5411580 m!6435704))

(assert (=> b!5411575 m!6435400))

(assert (=> b!5411570 m!6435400))

(assert (=> b!5411570 m!6435400))

(declare-fun m!6435706 () Bool)

(assert (=> b!5411570 m!6435706))

(assert (=> b!5411570 m!6435406))

(assert (=> b!5411570 m!6435706))

(assert (=> b!5411570 m!6435406))

(declare-fun m!6435708 () Bool)

(assert (=> b!5411570 m!6435708))

(assert (=> bm!387246 m!6435396))

(assert (=> d!1727123 m!6435396))

(assert (=> d!1727123 m!6434826))

(assert (=> b!5411571 m!6435400))

(assert (=> b!5410672 d!1727123))

(declare-fun b!5411584 () Bool)

(declare-fun e!3354584 () Bool)

(assert (=> b!5411584 (= e!3354584 (matchR!7376 (derivativeStep!4265 lt!2206753 (head!11605 lt!2206719)) (tail!10702 lt!2206719)))))

(declare-fun b!5411585 () Bool)

(declare-fun e!3354588 () Bool)

(assert (=> b!5411585 (= e!3354588 (= (head!11605 lt!2206719) (c!943211 lt!2206753)))))

(declare-fun b!5411586 () Bool)

(declare-fun res!2301667 () Bool)

(declare-fun e!3354583 () Bool)

(assert (=> b!5411586 (=> res!2301667 e!3354583)))

(assert (=> b!5411586 (= res!2301667 (not ((_ is ElementMatch!15191) lt!2206753)))))

(declare-fun e!3354586 () Bool)

(assert (=> b!5411586 (= e!3354586 e!3354583)))

(declare-fun b!5411587 () Bool)

(declare-fun res!2301668 () Bool)

(assert (=> b!5411587 (=> (not res!2301668) (not e!3354588))))

(assert (=> b!5411587 (= res!2301668 (isEmpty!33739 (tail!10702 lt!2206719)))))

(declare-fun bm!387247 () Bool)

(declare-fun call!387252 () Bool)

(assert (=> bm!387247 (= call!387252 (isEmpty!33739 lt!2206719))))

(declare-fun b!5411588 () Bool)

(declare-fun e!3354585 () Bool)

(declare-fun e!3354582 () Bool)

(assert (=> b!5411588 (= e!3354585 e!3354582)))

(declare-fun res!2301671 () Bool)

(assert (=> b!5411588 (=> res!2301671 e!3354582)))

(assert (=> b!5411588 (= res!2301671 call!387252)))

(declare-fun b!5411589 () Bool)

(assert (=> b!5411589 (= e!3354582 (not (= (head!11605 lt!2206719) (c!943211 lt!2206753))))))

(declare-fun b!5411590 () Bool)

(assert (=> b!5411590 (= e!3354583 e!3354585)))

(declare-fun res!2301669 () Bool)

(assert (=> b!5411590 (=> (not res!2301669) (not e!3354585))))

(declare-fun lt!2206922 () Bool)

(assert (=> b!5411590 (= res!2301669 (not lt!2206922))))

(declare-fun b!5411592 () Bool)

(declare-fun e!3354587 () Bool)

(assert (=> b!5411592 (= e!3354587 e!3354586)))

(declare-fun c!943456 () Bool)

(assert (=> b!5411592 (= c!943456 ((_ is EmptyLang!15191) lt!2206753))))

(declare-fun b!5411593 () Bool)

(declare-fun res!2301666 () Bool)

(assert (=> b!5411593 (=> (not res!2301666) (not e!3354588))))

(assert (=> b!5411593 (= res!2301666 (not call!387252))))

(declare-fun d!1727125 () Bool)

(assert (=> d!1727125 e!3354587))

(declare-fun c!943458 () Bool)

(assert (=> d!1727125 (= c!943458 ((_ is EmptyExpr!15191) lt!2206753))))

(assert (=> d!1727125 (= lt!2206922 e!3354584)))

(declare-fun c!943457 () Bool)

(assert (=> d!1727125 (= c!943457 (isEmpty!33739 lt!2206719))))

(assert (=> d!1727125 (validRegex!6927 lt!2206753)))

(assert (=> d!1727125 (= (matchR!7376 lt!2206753 lt!2206719) lt!2206922)))

(declare-fun b!5411591 () Bool)

(assert (=> b!5411591 (= e!3354586 (not lt!2206922))))

(declare-fun b!5411594 () Bool)

(assert (=> b!5411594 (= e!3354584 (nullable!5360 lt!2206753))))

(declare-fun b!5411595 () Bool)

(declare-fun res!2301664 () Bool)

(assert (=> b!5411595 (=> res!2301664 e!3354583)))

(assert (=> b!5411595 (= res!2301664 e!3354588)))

(declare-fun res!2301670 () Bool)

(assert (=> b!5411595 (=> (not res!2301670) (not e!3354588))))

(assert (=> b!5411595 (= res!2301670 lt!2206922)))

(declare-fun b!5411596 () Bool)

(assert (=> b!5411596 (= e!3354587 (= lt!2206922 call!387252))))

(declare-fun b!5411597 () Bool)

(declare-fun res!2301665 () Bool)

(assert (=> b!5411597 (=> res!2301665 e!3354582)))

(assert (=> b!5411597 (= res!2301665 (not (isEmpty!33739 (tail!10702 lt!2206719))))))

(assert (= (and d!1727125 c!943457) b!5411594))

(assert (= (and d!1727125 (not c!943457)) b!5411584))

(assert (= (and d!1727125 c!943458) b!5411596))

(assert (= (and d!1727125 (not c!943458)) b!5411592))

(assert (= (and b!5411592 c!943456) b!5411591))

(assert (= (and b!5411592 (not c!943456)) b!5411586))

(assert (= (and b!5411586 (not res!2301667)) b!5411595))

(assert (= (and b!5411595 res!2301670) b!5411593))

(assert (= (and b!5411593 res!2301666) b!5411587))

(assert (= (and b!5411587 res!2301668) b!5411585))

(assert (= (and b!5411595 (not res!2301664)) b!5411590))

(assert (= (and b!5411590 res!2301669) b!5411588))

(assert (= (and b!5411588 (not res!2301671)) b!5411597))

(assert (= (and b!5411597 (not res!2301665)) b!5411589))

(assert (= (or b!5411596 b!5411588 b!5411593) bm!387247))

(assert (=> b!5411587 m!6435698))

(assert (=> b!5411587 m!6435698))

(declare-fun m!6435710 () Bool)

(assert (=> b!5411587 m!6435710))

(assert (=> b!5411597 m!6435698))

(assert (=> b!5411597 m!6435698))

(assert (=> b!5411597 m!6435710))

(assert (=> b!5411594 m!6435384))

(assert (=> b!5411589 m!6435694))

(assert (=> b!5411584 m!6435694))

(assert (=> b!5411584 m!6435694))

(declare-fun m!6435712 () Bool)

(assert (=> b!5411584 m!6435712))

(assert (=> b!5411584 m!6435698))

(assert (=> b!5411584 m!6435712))

(assert (=> b!5411584 m!6435698))

(declare-fun m!6435714 () Bool)

(assert (=> b!5411584 m!6435714))

(assert (=> bm!387247 m!6435690))

(assert (=> d!1727125 m!6435690))

(assert (=> d!1727125 m!6435392))

(assert (=> b!5411585 m!6435694))

(assert (=> b!5410672 d!1727125))

(assert (=> b!5410672 d!1727017))

(declare-fun bs!1249848 () Bool)

(declare-fun d!1727127 () Bool)

(assert (= bs!1249848 (and d!1727127 b!5410650)))

(declare-fun lambda!282619 () Int)

(assert (=> bs!1249848 (= lambda!282619 lambda!282526)))

(declare-fun bs!1249849 () Bool)

(assert (= bs!1249849 (and d!1727127 d!1726963)))

(assert (=> bs!1249849 (= lambda!282619 lambda!282577)))

(assert (=> d!1727127 (matchZipper!1435 (store ((as const (Array Context!9150 Bool)) false) (Context!9151 (++!13556 (exprs!5075 lt!2206697) (exprs!5075 lt!2206711))) true) (++!13555 (_1!35693 lt!2206704) (_2!35693 lt!2206704)))))

(declare-fun lt!2206928 () Unit!154286)

(assert (=> d!1727127 (= lt!2206928 (lemmaConcatPreservesForall!216 (exprs!5075 lt!2206697) (exprs!5075 lt!2206711) lambda!282619))))

(declare-fun lt!2206927 () Unit!154286)

(declare-fun choose!40871 (Context!9150 Context!9150 List!61872 List!61872) Unit!154286)

(assert (=> d!1727127 (= lt!2206927 (choose!40871 lt!2206697 lt!2206711 (_1!35693 lt!2206704) (_2!35693 lt!2206704)))))

(assert (=> d!1727127 (matchZipper!1435 (store ((as const (Array Context!9150 Bool)) false) lt!2206697 true) (_1!35693 lt!2206704))))

(assert (=> d!1727127 (= (lemmaConcatenateContextMatchesConcatOfStrings!64 lt!2206697 lt!2206711 (_1!35693 lt!2206704) (_2!35693 lt!2206704)) lt!2206927)))

(declare-fun bs!1249850 () Bool)

(assert (= bs!1249850 d!1727127))

(declare-fun m!6435716 () Bool)

(assert (=> bs!1249850 m!6435716))

(declare-fun m!6435718 () Bool)

(assert (=> bs!1249850 m!6435718))

(declare-fun m!6435720 () Bool)

(assert (=> bs!1249850 m!6435720))

(assert (=> bs!1249850 m!6434734))

(declare-fun m!6435722 () Bool)

(assert (=> bs!1249850 m!6435722))

(declare-fun m!6435724 () Bool)

(assert (=> bs!1249850 m!6435724))

(assert (=> bs!1249850 m!6434802))

(declare-fun m!6435726 () Bool)

(assert (=> bs!1249850 m!6435726))

(assert (=> bs!1249850 m!6434734))

(assert (=> bs!1249850 m!6435724))

(assert (=> bs!1249850 m!6434802))

(assert (=> b!5410672 d!1727127))

(declare-fun d!1727129 () Bool)

(assert (=> d!1727129 (= (matchR!7376 (Concat!24036 (Concat!24036 (reg!15520 (regOne!30894 r!7292)) lt!2206725) (regTwo!30894 r!7292)) s!2326) (matchR!7376 (Concat!24036 (reg!15520 (regOne!30894 r!7292)) (Concat!24036 lt!2206725 (regTwo!30894 r!7292))) s!2326))))

(declare-fun lt!2206931 () Unit!154286)

(declare-fun choose!40872 (Regex!15191 Regex!15191 Regex!15191 List!61872) Unit!154286)

(assert (=> d!1727129 (= lt!2206931 (choose!40872 (reg!15520 (regOne!30894 r!7292)) lt!2206725 (regTwo!30894 r!7292) s!2326))))

(declare-fun e!3354591 () Bool)

(assert (=> d!1727129 e!3354591))

(declare-fun res!2301676 () Bool)

(assert (=> d!1727129 (=> (not res!2301676) (not e!3354591))))

(assert (=> d!1727129 (= res!2301676 (validRegex!6927 (reg!15520 (regOne!30894 r!7292))))))

(assert (=> d!1727129 (= (lemmaConcatAssociative!44 (reg!15520 (regOne!30894 r!7292)) lt!2206725 (regTwo!30894 r!7292) s!2326) lt!2206931)))

(declare-fun b!5411602 () Bool)

(declare-fun res!2301677 () Bool)

(assert (=> b!5411602 (=> (not res!2301677) (not e!3354591))))

(assert (=> b!5411602 (= res!2301677 (validRegex!6927 lt!2206725))))

(declare-fun b!5411603 () Bool)

(assert (=> b!5411603 (= e!3354591 (validRegex!6927 (regTwo!30894 r!7292)))))

(assert (= (and d!1727129 res!2301676) b!5411602))

(assert (= (and b!5411602 res!2301677) b!5411603))

(declare-fun m!6435728 () Bool)

(assert (=> d!1727129 m!6435728))

(declare-fun m!6435730 () Bool)

(assert (=> d!1727129 m!6435730))

(declare-fun m!6435732 () Bool)

(assert (=> d!1727129 m!6435732))

(assert (=> d!1727129 m!6434826))

(declare-fun m!6435734 () Bool)

(assert (=> b!5411602 m!6435734))

(declare-fun m!6435736 () Bool)

(assert (=> b!5411603 m!6435736))

(assert (=> b!5410672 d!1727129))

(declare-fun d!1727131 () Bool)

(assert (=> d!1727131 (= (Exists!2372 lambda!282527) (choose!40866 lambda!282527))))

(declare-fun bs!1249851 () Bool)

(assert (= bs!1249851 d!1727131))

(declare-fun m!6435738 () Bool)

(assert (=> bs!1249851 m!6435738))

(assert (=> b!5410672 d!1727131))

(assert (=> b!5410672 d!1727031))

(declare-fun bs!1249852 () Bool)

(declare-fun d!1727133 () Bool)

(assert (= bs!1249852 (and d!1727133 b!5411303)))

(declare-fun lambda!282620 () Int)

(assert (=> bs!1249852 (not (= lambda!282620 lambda!282601))))

(declare-fun bs!1249853 () Bool)

(assert (= bs!1249853 (and d!1727133 b!5410672)))

(assert (=> bs!1249853 (not (= lambda!282620 lambda!282528))))

(declare-fun bs!1249854 () Bool)

(assert (= bs!1249854 (and d!1727133 b!5410658)))

(assert (=> bs!1249854 (not (= lambda!282620 lambda!282531))))

(assert (=> bs!1249854 (not (= lambda!282620 lambda!282530))))

(declare-fun bs!1249855 () Bool)

(assert (= bs!1249855 (and d!1727133 b!5410653)))

(assert (=> bs!1249855 (= (= lt!2206708 (regOne!30894 r!7292)) (= lambda!282620 lambda!282522))))

(assert (=> bs!1249855 (not (= lambda!282620 lambda!282523))))

(declare-fun bs!1249856 () Bool)

(assert (= bs!1249856 (and d!1727133 b!5411159)))

(assert (=> bs!1249856 (not (= lambda!282620 lambda!282583))))

(assert (=> bs!1249853 (= lambda!282620 lambda!282527)))

(declare-fun bs!1249857 () Bool)

(assert (= bs!1249857 (and d!1727133 b!5411310)))

(assert (=> bs!1249857 (not (= lambda!282620 lambda!282600))))

(declare-fun bs!1249858 () Bool)

(assert (= bs!1249858 (and d!1727133 d!1727109)))

(assert (=> bs!1249858 (= (= lt!2206708 (regOne!30894 r!7292)) (= lambda!282620 lambda!282610))))

(declare-fun bs!1249859 () Bool)

(assert (= bs!1249859 (and d!1727133 d!1727111)))

(assert (=> bs!1249859 (not (= lambda!282620 lambda!282616))))

(assert (=> bs!1249859 (= (= lt!2206708 (regOne!30894 r!7292)) (= lambda!282620 lambda!282615))))

(declare-fun bs!1249860 () Bool)

(assert (= bs!1249860 (and d!1727133 b!5411166)))

(assert (=> bs!1249860 (not (= lambda!282620 lambda!282582))))

(assert (=> bs!1249854 (= (and (= s!2326 (_1!35693 lt!2206741)) (= lt!2206708 (reg!15520 (regOne!30894 r!7292))) (= (regTwo!30894 r!7292) lt!2206725)) (= lambda!282620 lambda!282529))))

(assert (=> d!1727133 true))

(assert (=> d!1727133 true))

(assert (=> d!1727133 true))

(declare-fun bs!1249861 () Bool)

(assert (= bs!1249861 d!1727133))

(declare-fun lambda!282621 () Int)

(assert (=> bs!1249861 (not (= lambda!282621 lambda!282620))))

(assert (=> bs!1249852 (= (= lt!2206708 (regOne!30894 r!7292)) (= lambda!282621 lambda!282601))))

(assert (=> bs!1249853 (= lambda!282621 lambda!282528)))

(assert (=> bs!1249854 (not (= lambda!282621 lambda!282531))))

(assert (=> bs!1249854 (= (and (= s!2326 (_1!35693 lt!2206741)) (= lt!2206708 (reg!15520 (regOne!30894 r!7292))) (= (regTwo!30894 r!7292) lt!2206725)) (= lambda!282621 lambda!282530))))

(assert (=> bs!1249855 (not (= lambda!282621 lambda!282522))))

(assert (=> bs!1249855 (= (= lt!2206708 (regOne!30894 r!7292)) (= lambda!282621 lambda!282523))))

(assert (=> bs!1249856 (= (and (= lt!2206708 (regOne!30894 lt!2206753)) (= (regTwo!30894 r!7292) (regTwo!30894 lt!2206753))) (= lambda!282621 lambda!282583))))

(assert (=> bs!1249853 (not (= lambda!282621 lambda!282527))))

(assert (=> bs!1249857 (not (= lambda!282621 lambda!282600))))

(assert (=> bs!1249858 (not (= lambda!282621 lambda!282610))))

(assert (=> bs!1249859 (= (= lt!2206708 (regOne!30894 r!7292)) (= lambda!282621 lambda!282616))))

(assert (=> bs!1249859 (not (= lambda!282621 lambda!282615))))

(assert (=> bs!1249860 (not (= lambda!282621 lambda!282582))))

(assert (=> bs!1249854 (not (= lambda!282621 lambda!282529))))

(assert (=> d!1727133 true))

(assert (=> d!1727133 true))

(assert (=> d!1727133 true))

(assert (=> d!1727133 (= (Exists!2372 lambda!282620) (Exists!2372 lambda!282621))))

(declare-fun lt!2206932 () Unit!154286)

(assert (=> d!1727133 (= lt!2206932 (choose!40868 lt!2206708 (regTwo!30894 r!7292) s!2326))))

(assert (=> d!1727133 (validRegex!6927 lt!2206708)))

(assert (=> d!1727133 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1026 lt!2206708 (regTwo!30894 r!7292) s!2326) lt!2206932)))

(declare-fun m!6435740 () Bool)

(assert (=> bs!1249861 m!6435740))

(declare-fun m!6435742 () Bool)

(assert (=> bs!1249861 m!6435742))

(declare-fun m!6435744 () Bool)

(assert (=> bs!1249861 m!6435744))

(declare-fun m!6435746 () Bool)

(assert (=> bs!1249861 m!6435746))

(assert (=> b!5410672 d!1727133))

(declare-fun b!5411604 () Bool)

(declare-fun e!3354594 () Bool)

(assert (=> b!5411604 (= e!3354594 (matchR!7376 (derivativeStep!4265 lt!2206757 (head!11605 s!2326)) (tail!10702 s!2326)))))

(declare-fun b!5411605 () Bool)

(declare-fun e!3354598 () Bool)

(assert (=> b!5411605 (= e!3354598 (= (head!11605 s!2326) (c!943211 lt!2206757)))))

(declare-fun b!5411606 () Bool)

(declare-fun res!2301681 () Bool)

(declare-fun e!3354593 () Bool)

(assert (=> b!5411606 (=> res!2301681 e!3354593)))

(assert (=> b!5411606 (= res!2301681 (not ((_ is ElementMatch!15191) lt!2206757)))))

(declare-fun e!3354596 () Bool)

(assert (=> b!5411606 (= e!3354596 e!3354593)))

(declare-fun b!5411607 () Bool)

(declare-fun res!2301682 () Bool)

(assert (=> b!5411607 (=> (not res!2301682) (not e!3354598))))

(assert (=> b!5411607 (= res!2301682 (isEmpty!33739 (tail!10702 s!2326)))))

(declare-fun bm!387248 () Bool)

(declare-fun call!387253 () Bool)

(assert (=> bm!387248 (= call!387253 (isEmpty!33739 s!2326))))

(declare-fun b!5411608 () Bool)

(declare-fun e!3354595 () Bool)

(declare-fun e!3354592 () Bool)

(assert (=> b!5411608 (= e!3354595 e!3354592)))

(declare-fun res!2301685 () Bool)

(assert (=> b!5411608 (=> res!2301685 e!3354592)))

(assert (=> b!5411608 (= res!2301685 call!387253)))

(declare-fun b!5411609 () Bool)

(assert (=> b!5411609 (= e!3354592 (not (= (head!11605 s!2326) (c!943211 lt!2206757))))))

(declare-fun b!5411610 () Bool)

(assert (=> b!5411610 (= e!3354593 e!3354595)))

(declare-fun res!2301683 () Bool)

(assert (=> b!5411610 (=> (not res!2301683) (not e!3354595))))

(declare-fun lt!2206933 () Bool)

(assert (=> b!5411610 (= res!2301683 (not lt!2206933))))

(declare-fun b!5411612 () Bool)

(declare-fun e!3354597 () Bool)

(assert (=> b!5411612 (= e!3354597 e!3354596)))

(declare-fun c!943459 () Bool)

(assert (=> b!5411612 (= c!943459 ((_ is EmptyLang!15191) lt!2206757))))

(declare-fun b!5411613 () Bool)

(declare-fun res!2301680 () Bool)

(assert (=> b!5411613 (=> (not res!2301680) (not e!3354598))))

(assert (=> b!5411613 (= res!2301680 (not call!387253))))

(declare-fun d!1727135 () Bool)

(assert (=> d!1727135 e!3354597))

(declare-fun c!943461 () Bool)

(assert (=> d!1727135 (= c!943461 ((_ is EmptyExpr!15191) lt!2206757))))

(assert (=> d!1727135 (= lt!2206933 e!3354594)))

(declare-fun c!943460 () Bool)

(assert (=> d!1727135 (= c!943460 (isEmpty!33739 s!2326))))

(assert (=> d!1727135 (validRegex!6927 lt!2206757)))

(assert (=> d!1727135 (= (matchR!7376 lt!2206757 s!2326) lt!2206933)))

(declare-fun b!5411611 () Bool)

(assert (=> b!5411611 (= e!3354596 (not lt!2206933))))

(declare-fun b!5411614 () Bool)

(assert (=> b!5411614 (= e!3354594 (nullable!5360 lt!2206757))))

(declare-fun b!5411615 () Bool)

(declare-fun res!2301678 () Bool)

(assert (=> b!5411615 (=> res!2301678 e!3354593)))

(assert (=> b!5411615 (= res!2301678 e!3354598)))

(declare-fun res!2301684 () Bool)

(assert (=> b!5411615 (=> (not res!2301684) (not e!3354598))))

(assert (=> b!5411615 (= res!2301684 lt!2206933)))

(declare-fun b!5411616 () Bool)

(assert (=> b!5411616 (= e!3354597 (= lt!2206933 call!387253))))

(declare-fun b!5411617 () Bool)

(declare-fun res!2301679 () Bool)

(assert (=> b!5411617 (=> res!2301679 e!3354592)))

(assert (=> b!5411617 (= res!2301679 (not (isEmpty!33739 (tail!10702 s!2326))))))

(assert (= (and d!1727135 c!943460) b!5411614))

(assert (= (and d!1727135 (not c!943460)) b!5411604))

(assert (= (and d!1727135 c!943461) b!5411616))

(assert (= (and d!1727135 (not c!943461)) b!5411612))

(assert (= (and b!5411612 c!943459) b!5411611))

(assert (= (and b!5411612 (not c!943459)) b!5411606))

(assert (= (and b!5411606 (not res!2301681)) b!5411615))

(assert (= (and b!5411615 res!2301684) b!5411613))

(assert (= (and b!5411613 res!2301680) b!5411607))

(assert (= (and b!5411607 res!2301682) b!5411605))

(assert (= (and b!5411615 (not res!2301678)) b!5411610))

(assert (= (and b!5411610 res!2301683) b!5411608))

(assert (= (and b!5411608 (not res!2301685)) b!5411617))

(assert (= (and b!5411617 (not res!2301679)) b!5411609))

(assert (= (or b!5411616 b!5411608 b!5411613) bm!387248))

(assert (=> b!5411607 m!6435380))

(assert (=> b!5411607 m!6435380))

(assert (=> b!5411607 m!6435382))

(assert (=> b!5411617 m!6435380))

(assert (=> b!5411617 m!6435380))

(assert (=> b!5411617 m!6435382))

(declare-fun m!6435748 () Bool)

(assert (=> b!5411614 m!6435748))

(assert (=> b!5411609 m!6435386))

(assert (=> b!5411604 m!6435386))

(assert (=> b!5411604 m!6435386))

(declare-fun m!6435750 () Bool)

(assert (=> b!5411604 m!6435750))

(assert (=> b!5411604 m!6435380))

(assert (=> b!5411604 m!6435750))

(assert (=> b!5411604 m!6435380))

(declare-fun m!6435752 () Bool)

(assert (=> b!5411604 m!6435752))

(assert (=> bm!387248 m!6435310))

(assert (=> d!1727135 m!6435310))

(declare-fun m!6435754 () Bool)

(assert (=> d!1727135 m!6435754))

(assert (=> b!5411605 m!6435386))

(assert (=> b!5410672 d!1727135))

(declare-fun d!1727137 () Bool)

(assert (=> d!1727137 (= (get!21289 lt!2206702) (v!51330 lt!2206702))))

(assert (=> b!5410672 d!1727137))

(declare-fun d!1727139 () Bool)

(assert (=> d!1727139 (= (matchR!7376 (reg!15520 (regOne!30894 r!7292)) (_1!35693 lt!2206704)) (matchZipper!1435 lt!2206746 (_1!35693 lt!2206704)))))

(declare-fun lt!2206934 () Unit!154286)

(assert (=> d!1727139 (= lt!2206934 (choose!40869 lt!2206746 lt!2206703 (reg!15520 (regOne!30894 r!7292)) (_1!35693 lt!2206704)))))

(assert (=> d!1727139 (validRegex!6927 (reg!15520 (regOne!30894 r!7292)))))

(assert (=> d!1727139 (= (theoremZipperRegexEquiv!505 lt!2206746 lt!2206703 (reg!15520 (regOne!30894 r!7292)) (_1!35693 lt!2206704)) lt!2206934)))

(declare-fun bs!1249862 () Bool)

(assert (= bs!1249862 d!1727139))

(assert (=> bs!1249862 m!6434702))

(assert (=> bs!1249862 m!6434738))

(declare-fun m!6435756 () Bool)

(assert (=> bs!1249862 m!6435756))

(assert (=> bs!1249862 m!6434826))

(assert (=> b!5410672 d!1727139))

(declare-fun b!5411618 () Bool)

(declare-fun e!3354602 () Option!15302)

(assert (=> b!5411618 (= e!3354602 (Some!15301 (tuple2!64781 Nil!61748 s!2326)))))

(declare-fun b!5411619 () Bool)

(declare-fun lt!2206937 () Unit!154286)

(declare-fun lt!2206935 () Unit!154286)

(assert (=> b!5411619 (= lt!2206937 lt!2206935)))

(assert (=> b!5411619 (= (++!13555 (++!13555 Nil!61748 (Cons!61748 (h!68196 s!2326) Nil!61748)) (t!375095 s!2326)) s!2326)))

(assert (=> b!5411619 (= lt!2206935 (lemmaMoveElementToOtherListKeepsConcatEq!1839 Nil!61748 (h!68196 s!2326) (t!375095 s!2326) s!2326))))

(declare-fun e!3354601 () Option!15302)

(assert (=> b!5411619 (= e!3354601 (findConcatSeparation!1716 lt!2206708 (regTwo!30894 r!7292) (++!13555 Nil!61748 (Cons!61748 (h!68196 s!2326) Nil!61748)) (t!375095 s!2326) s!2326))))

(declare-fun b!5411620 () Bool)

(assert (=> b!5411620 (= e!3354602 e!3354601)))

(declare-fun c!943463 () Bool)

(assert (=> b!5411620 (= c!943463 ((_ is Nil!61748) s!2326))))

(declare-fun d!1727141 () Bool)

(declare-fun e!3354599 () Bool)

(assert (=> d!1727141 e!3354599))

(declare-fun res!2301688 () Bool)

(assert (=> d!1727141 (=> res!2301688 e!3354599)))

(declare-fun e!3354603 () Bool)

(assert (=> d!1727141 (= res!2301688 e!3354603)))

(declare-fun res!2301690 () Bool)

(assert (=> d!1727141 (=> (not res!2301690) (not e!3354603))))

(declare-fun lt!2206936 () Option!15302)

(assert (=> d!1727141 (= res!2301690 (isDefined!12005 lt!2206936))))

(assert (=> d!1727141 (= lt!2206936 e!3354602)))

(declare-fun c!943462 () Bool)

(declare-fun e!3354600 () Bool)

(assert (=> d!1727141 (= c!943462 e!3354600)))

(declare-fun res!2301686 () Bool)

(assert (=> d!1727141 (=> (not res!2301686) (not e!3354600))))

(assert (=> d!1727141 (= res!2301686 (matchR!7376 lt!2206708 Nil!61748))))

(assert (=> d!1727141 (validRegex!6927 lt!2206708)))

(assert (=> d!1727141 (= (findConcatSeparation!1716 lt!2206708 (regTwo!30894 r!7292) Nil!61748 s!2326 s!2326) lt!2206936)))

(declare-fun b!5411621 () Bool)

(declare-fun res!2301689 () Bool)

(assert (=> b!5411621 (=> (not res!2301689) (not e!3354603))))

(assert (=> b!5411621 (= res!2301689 (matchR!7376 (regTwo!30894 r!7292) (_2!35693 (get!21289 lt!2206936))))))

(declare-fun b!5411622 () Bool)

(declare-fun res!2301687 () Bool)

(assert (=> b!5411622 (=> (not res!2301687) (not e!3354603))))

(assert (=> b!5411622 (= res!2301687 (matchR!7376 lt!2206708 (_1!35693 (get!21289 lt!2206936))))))

(declare-fun b!5411623 () Bool)

(assert (=> b!5411623 (= e!3354600 (matchR!7376 (regTwo!30894 r!7292) s!2326))))

(declare-fun b!5411624 () Bool)

(assert (=> b!5411624 (= e!3354601 None!15301)))

(declare-fun b!5411625 () Bool)

(assert (=> b!5411625 (= e!3354603 (= (++!13555 (_1!35693 (get!21289 lt!2206936)) (_2!35693 (get!21289 lt!2206936))) s!2326))))

(declare-fun b!5411626 () Bool)

(assert (=> b!5411626 (= e!3354599 (not (isDefined!12005 lt!2206936)))))

(assert (= (and d!1727141 res!2301686) b!5411623))

(assert (= (and d!1727141 c!943462) b!5411618))

(assert (= (and d!1727141 (not c!943462)) b!5411620))

(assert (= (and b!5411620 c!943463) b!5411624))

(assert (= (and b!5411620 (not c!943463)) b!5411619))

(assert (= (and d!1727141 res!2301690) b!5411622))

(assert (= (and b!5411622 res!2301687) b!5411621))

(assert (= (and b!5411621 res!2301689) b!5411625))

(assert (= (and d!1727141 (not res!2301688)) b!5411626))

(assert (=> b!5411619 m!6435634))

(assert (=> b!5411619 m!6435634))

(assert (=> b!5411619 m!6435636))

(assert (=> b!5411619 m!6435638))

(assert (=> b!5411619 m!6435634))

(declare-fun m!6435758 () Bool)

(assert (=> b!5411619 m!6435758))

(declare-fun m!6435760 () Bool)

(assert (=> d!1727141 m!6435760))

(declare-fun m!6435762 () Bool)

(assert (=> d!1727141 m!6435762))

(assert (=> d!1727141 m!6435746))

(declare-fun m!6435764 () Bool)

(assert (=> b!5411621 m!6435764))

(declare-fun m!6435766 () Bool)

(assert (=> b!5411621 m!6435766))

(assert (=> b!5411625 m!6435764))

(declare-fun m!6435768 () Bool)

(assert (=> b!5411625 m!6435768))

(assert (=> b!5411626 m!6435760))

(assert (=> b!5411623 m!6435654))

(assert (=> b!5411622 m!6435764))

(declare-fun m!6435770 () Bool)

(assert (=> b!5411622 m!6435770))

(assert (=> b!5410672 d!1727141))

(declare-fun b!5411627 () Bool)

(declare-fun e!3354606 () Bool)

(assert (=> b!5411627 (= e!3354606 (matchR!7376 (derivativeStep!4265 lt!2206708 (head!11605 (_1!35693 lt!2206741))) (tail!10702 (_1!35693 lt!2206741))))))

(declare-fun b!5411628 () Bool)

(declare-fun e!3354610 () Bool)

(assert (=> b!5411628 (= e!3354610 (= (head!11605 (_1!35693 lt!2206741)) (c!943211 lt!2206708)))))

(declare-fun b!5411629 () Bool)

(declare-fun res!2301694 () Bool)

(declare-fun e!3354605 () Bool)

(assert (=> b!5411629 (=> res!2301694 e!3354605)))

(assert (=> b!5411629 (= res!2301694 (not ((_ is ElementMatch!15191) lt!2206708)))))

(declare-fun e!3354608 () Bool)

(assert (=> b!5411629 (= e!3354608 e!3354605)))

(declare-fun b!5411630 () Bool)

(declare-fun res!2301695 () Bool)

(assert (=> b!5411630 (=> (not res!2301695) (not e!3354610))))

(assert (=> b!5411630 (= res!2301695 (isEmpty!33739 (tail!10702 (_1!35693 lt!2206741))))))

(declare-fun bm!387249 () Bool)

(declare-fun call!387254 () Bool)

(assert (=> bm!387249 (= call!387254 (isEmpty!33739 (_1!35693 lt!2206741)))))

(declare-fun b!5411631 () Bool)

(declare-fun e!3354607 () Bool)

(declare-fun e!3354604 () Bool)

(assert (=> b!5411631 (= e!3354607 e!3354604)))

(declare-fun res!2301698 () Bool)

(assert (=> b!5411631 (=> res!2301698 e!3354604)))

(assert (=> b!5411631 (= res!2301698 call!387254)))

(declare-fun b!5411632 () Bool)

(assert (=> b!5411632 (= e!3354604 (not (= (head!11605 (_1!35693 lt!2206741)) (c!943211 lt!2206708))))))

(declare-fun b!5411633 () Bool)

(assert (=> b!5411633 (= e!3354605 e!3354607)))

(declare-fun res!2301696 () Bool)

(assert (=> b!5411633 (=> (not res!2301696) (not e!3354607))))

(declare-fun lt!2206938 () Bool)

(assert (=> b!5411633 (= res!2301696 (not lt!2206938))))

(declare-fun b!5411635 () Bool)

(declare-fun e!3354609 () Bool)

(assert (=> b!5411635 (= e!3354609 e!3354608)))

(declare-fun c!943464 () Bool)

(assert (=> b!5411635 (= c!943464 ((_ is EmptyLang!15191) lt!2206708))))

(declare-fun b!5411636 () Bool)

(declare-fun res!2301693 () Bool)

(assert (=> b!5411636 (=> (not res!2301693) (not e!3354610))))

(assert (=> b!5411636 (= res!2301693 (not call!387254))))

(declare-fun d!1727143 () Bool)

(assert (=> d!1727143 e!3354609))

(declare-fun c!943466 () Bool)

(assert (=> d!1727143 (= c!943466 ((_ is EmptyExpr!15191) lt!2206708))))

(assert (=> d!1727143 (= lt!2206938 e!3354606)))

(declare-fun c!943465 () Bool)

(assert (=> d!1727143 (= c!943465 (isEmpty!33739 (_1!35693 lt!2206741)))))

(assert (=> d!1727143 (validRegex!6927 lt!2206708)))

(assert (=> d!1727143 (= (matchR!7376 lt!2206708 (_1!35693 lt!2206741)) lt!2206938)))

(declare-fun b!5411634 () Bool)

(assert (=> b!5411634 (= e!3354608 (not lt!2206938))))

(declare-fun b!5411637 () Bool)

(assert (=> b!5411637 (= e!3354606 (nullable!5360 lt!2206708))))

(declare-fun b!5411638 () Bool)

(declare-fun res!2301691 () Bool)

(assert (=> b!5411638 (=> res!2301691 e!3354605)))

(assert (=> b!5411638 (= res!2301691 e!3354610)))

(declare-fun res!2301697 () Bool)

(assert (=> b!5411638 (=> (not res!2301697) (not e!3354610))))

(assert (=> b!5411638 (= res!2301697 lt!2206938)))

(declare-fun b!5411639 () Bool)

(assert (=> b!5411639 (= e!3354609 (= lt!2206938 call!387254))))

(declare-fun b!5411640 () Bool)

(declare-fun res!2301692 () Bool)

(assert (=> b!5411640 (=> res!2301692 e!3354604)))

(assert (=> b!5411640 (= res!2301692 (not (isEmpty!33739 (tail!10702 (_1!35693 lt!2206741)))))))

(assert (= (and d!1727143 c!943465) b!5411637))

(assert (= (and d!1727143 (not c!943465)) b!5411627))

(assert (= (and d!1727143 c!943466) b!5411639))

(assert (= (and d!1727143 (not c!943466)) b!5411635))

(assert (= (and b!5411635 c!943464) b!5411634))

(assert (= (and b!5411635 (not c!943464)) b!5411629))

(assert (= (and b!5411629 (not res!2301694)) b!5411638))

(assert (= (and b!5411638 res!2301697) b!5411636))

(assert (= (and b!5411636 res!2301693) b!5411630))

(assert (= (and b!5411630 res!2301695) b!5411628))

(assert (= (and b!5411638 (not res!2301691)) b!5411633))

(assert (= (and b!5411633 res!2301696) b!5411631))

(assert (= (and b!5411631 (not res!2301698)) b!5411640))

(assert (= (and b!5411640 (not res!2301692)) b!5411632))

(assert (= (or b!5411639 b!5411631 b!5411636) bm!387249))

(declare-fun m!6435772 () Bool)

(assert (=> b!5411630 m!6435772))

(assert (=> b!5411630 m!6435772))

(declare-fun m!6435774 () Bool)

(assert (=> b!5411630 m!6435774))

(assert (=> b!5411640 m!6435772))

(assert (=> b!5411640 m!6435772))

(assert (=> b!5411640 m!6435774))

(declare-fun m!6435776 () Bool)

(assert (=> b!5411637 m!6435776))

(declare-fun m!6435778 () Bool)

(assert (=> b!5411632 m!6435778))

(assert (=> b!5411627 m!6435778))

(assert (=> b!5411627 m!6435778))

(declare-fun m!6435780 () Bool)

(assert (=> b!5411627 m!6435780))

(assert (=> b!5411627 m!6435772))

(assert (=> b!5411627 m!6435780))

(assert (=> b!5411627 m!6435772))

(declare-fun m!6435782 () Bool)

(assert (=> b!5411627 m!6435782))

(declare-fun m!6435784 () Bool)

(assert (=> bm!387249 m!6435784))

(assert (=> d!1727143 m!6435784))

(assert (=> d!1727143 m!6435746))

(assert (=> b!5411628 m!6435778))

(assert (=> b!5410672 d!1727143))

(declare-fun d!1727145 () Bool)

(assert (=> d!1727145 (= (Exists!2372 lambda!282528) (choose!40866 lambda!282528))))

(declare-fun bs!1249863 () Bool)

(assert (= bs!1249863 d!1727145))

(declare-fun m!6435786 () Bool)

(assert (=> bs!1249863 m!6435786))

(assert (=> b!5410672 d!1727145))

(declare-fun d!1727147 () Bool)

(assert (=> d!1727147 (= (isDefined!12005 lt!2206702) (not (isEmpty!33741 lt!2206702)))))

(declare-fun bs!1249864 () Bool)

(assert (= bs!1249864 d!1727147))

(declare-fun m!6435788 () Bool)

(assert (=> bs!1249864 m!6435788))

(assert (=> b!5410672 d!1727147))

(declare-fun bs!1249865 () Bool)

(declare-fun d!1727149 () Bool)

(assert (= bs!1249865 (and d!1727149 d!1727133)))

(declare-fun lambda!282622 () Int)

(assert (=> bs!1249865 (not (= lambda!282622 lambda!282621))))

(assert (=> bs!1249865 (= lambda!282622 lambda!282620)))

(declare-fun bs!1249866 () Bool)

(assert (= bs!1249866 (and d!1727149 b!5411303)))

(assert (=> bs!1249866 (not (= lambda!282622 lambda!282601))))

(declare-fun bs!1249867 () Bool)

(assert (= bs!1249867 (and d!1727149 b!5410672)))

(assert (=> bs!1249867 (not (= lambda!282622 lambda!282528))))

(declare-fun bs!1249868 () Bool)

(assert (= bs!1249868 (and d!1727149 b!5410658)))

(assert (=> bs!1249868 (not (= lambda!282622 lambda!282531))))

(assert (=> bs!1249868 (not (= lambda!282622 lambda!282530))))

(declare-fun bs!1249869 () Bool)

(assert (= bs!1249869 (and d!1727149 b!5410653)))

(assert (=> bs!1249869 (= (= lt!2206708 (regOne!30894 r!7292)) (= lambda!282622 lambda!282522))))

(assert (=> bs!1249869 (not (= lambda!282622 lambda!282523))))

(declare-fun bs!1249870 () Bool)

(assert (= bs!1249870 (and d!1727149 b!5411159)))

(assert (=> bs!1249870 (not (= lambda!282622 lambda!282583))))

(assert (=> bs!1249867 (= lambda!282622 lambda!282527)))

(declare-fun bs!1249871 () Bool)

(assert (= bs!1249871 (and d!1727149 b!5411310)))

(assert (=> bs!1249871 (not (= lambda!282622 lambda!282600))))

(declare-fun bs!1249872 () Bool)

(assert (= bs!1249872 (and d!1727149 d!1727109)))

(assert (=> bs!1249872 (= (= lt!2206708 (regOne!30894 r!7292)) (= lambda!282622 lambda!282610))))

(declare-fun bs!1249873 () Bool)

(assert (= bs!1249873 (and d!1727149 d!1727111)))

(assert (=> bs!1249873 (not (= lambda!282622 lambda!282616))))

(assert (=> bs!1249873 (= (= lt!2206708 (regOne!30894 r!7292)) (= lambda!282622 lambda!282615))))

(declare-fun bs!1249874 () Bool)

(assert (= bs!1249874 (and d!1727149 b!5411166)))

(assert (=> bs!1249874 (not (= lambda!282622 lambda!282582))))

(assert (=> bs!1249868 (= (and (= s!2326 (_1!35693 lt!2206741)) (= lt!2206708 (reg!15520 (regOne!30894 r!7292))) (= (regTwo!30894 r!7292) lt!2206725)) (= lambda!282622 lambda!282529))))

(assert (=> d!1727149 true))

(assert (=> d!1727149 true))

(assert (=> d!1727149 true))

(assert (=> d!1727149 (= (isDefined!12005 (findConcatSeparation!1716 lt!2206708 (regTwo!30894 r!7292) Nil!61748 s!2326 s!2326)) (Exists!2372 lambda!282622))))

(declare-fun lt!2206939 () Unit!154286)

(assert (=> d!1727149 (= lt!2206939 (choose!40867 lt!2206708 (regTwo!30894 r!7292) s!2326))))

(assert (=> d!1727149 (validRegex!6927 lt!2206708)))

(assert (=> d!1727149 (= (lemmaFindConcatSeparationEquivalentToExists!1480 lt!2206708 (regTwo!30894 r!7292) s!2326) lt!2206939)))

(declare-fun bs!1249875 () Bool)

(assert (= bs!1249875 d!1727149))

(assert (=> bs!1249875 m!6435746))

(declare-fun m!6435790 () Bool)

(assert (=> bs!1249875 m!6435790))

(declare-fun m!6435792 () Bool)

(assert (=> bs!1249875 m!6435792))

(assert (=> bs!1249875 m!6434698))

(assert (=> bs!1249875 m!6434698))

(declare-fun m!6435794 () Bool)

(assert (=> bs!1249875 m!6435794))

(assert (=> b!5410672 d!1727149))

(declare-fun b!5411641 () Bool)

(declare-fun e!3354613 () Bool)

(assert (=> b!5411641 (= e!3354613 (matchR!7376 (derivativeStep!4265 lt!2206706 (head!11605 (_2!35693 lt!2206704))) (tail!10702 (_2!35693 lt!2206704))))))

(declare-fun b!5411642 () Bool)

(declare-fun e!3354617 () Bool)

(assert (=> b!5411642 (= e!3354617 (= (head!11605 (_2!35693 lt!2206704)) (c!943211 lt!2206706)))))

(declare-fun b!5411643 () Bool)

(declare-fun res!2301702 () Bool)

(declare-fun e!3354612 () Bool)

(assert (=> b!5411643 (=> res!2301702 e!3354612)))

(assert (=> b!5411643 (= res!2301702 (not ((_ is ElementMatch!15191) lt!2206706)))))

(declare-fun e!3354615 () Bool)

(assert (=> b!5411643 (= e!3354615 e!3354612)))

(declare-fun b!5411644 () Bool)

(declare-fun res!2301703 () Bool)

(assert (=> b!5411644 (=> (not res!2301703) (not e!3354617))))

(assert (=> b!5411644 (= res!2301703 (isEmpty!33739 (tail!10702 (_2!35693 lt!2206704))))))

(declare-fun bm!387250 () Bool)

(declare-fun call!387255 () Bool)

(assert (=> bm!387250 (= call!387255 (isEmpty!33739 (_2!35693 lt!2206704)))))

(declare-fun b!5411645 () Bool)

(declare-fun e!3354614 () Bool)

(declare-fun e!3354611 () Bool)

(assert (=> b!5411645 (= e!3354614 e!3354611)))

(declare-fun res!2301706 () Bool)

(assert (=> b!5411645 (=> res!2301706 e!3354611)))

(assert (=> b!5411645 (= res!2301706 call!387255)))

(declare-fun b!5411646 () Bool)

(assert (=> b!5411646 (= e!3354611 (not (= (head!11605 (_2!35693 lt!2206704)) (c!943211 lt!2206706))))))

(declare-fun b!5411647 () Bool)

(assert (=> b!5411647 (= e!3354612 e!3354614)))

(declare-fun res!2301704 () Bool)

(assert (=> b!5411647 (=> (not res!2301704) (not e!3354614))))

(declare-fun lt!2206940 () Bool)

(assert (=> b!5411647 (= res!2301704 (not lt!2206940))))

(declare-fun b!5411649 () Bool)

(declare-fun e!3354616 () Bool)

(assert (=> b!5411649 (= e!3354616 e!3354615)))

(declare-fun c!943467 () Bool)

(assert (=> b!5411649 (= c!943467 ((_ is EmptyLang!15191) lt!2206706))))

(declare-fun b!5411650 () Bool)

(declare-fun res!2301701 () Bool)

(assert (=> b!5411650 (=> (not res!2301701) (not e!3354617))))

(assert (=> b!5411650 (= res!2301701 (not call!387255))))

(declare-fun d!1727151 () Bool)

(assert (=> d!1727151 e!3354616))

(declare-fun c!943469 () Bool)

(assert (=> d!1727151 (= c!943469 ((_ is EmptyExpr!15191) lt!2206706))))

(assert (=> d!1727151 (= lt!2206940 e!3354613)))

(declare-fun c!943468 () Bool)

(assert (=> d!1727151 (= c!943468 (isEmpty!33739 (_2!35693 lt!2206704)))))

(assert (=> d!1727151 (validRegex!6927 lt!2206706)))

(assert (=> d!1727151 (= (matchR!7376 lt!2206706 (_2!35693 lt!2206704)) lt!2206940)))

(declare-fun b!5411648 () Bool)

(assert (=> b!5411648 (= e!3354615 (not lt!2206940))))

(declare-fun b!5411651 () Bool)

(assert (=> b!5411651 (= e!3354613 (nullable!5360 lt!2206706))))

(declare-fun b!5411652 () Bool)

(declare-fun res!2301699 () Bool)

(assert (=> b!5411652 (=> res!2301699 e!3354612)))

(assert (=> b!5411652 (= res!2301699 e!3354617)))

(declare-fun res!2301705 () Bool)

(assert (=> b!5411652 (=> (not res!2301705) (not e!3354617))))

(assert (=> b!5411652 (= res!2301705 lt!2206940)))

(declare-fun b!5411653 () Bool)

(assert (=> b!5411653 (= e!3354616 (= lt!2206940 call!387255))))

(declare-fun b!5411654 () Bool)

(declare-fun res!2301700 () Bool)

(assert (=> b!5411654 (=> res!2301700 e!3354611)))

(assert (=> b!5411654 (= res!2301700 (not (isEmpty!33739 (tail!10702 (_2!35693 lt!2206704)))))))

(assert (= (and d!1727151 c!943468) b!5411651))

(assert (= (and d!1727151 (not c!943468)) b!5411641))

(assert (= (and d!1727151 c!943469) b!5411653))

(assert (= (and d!1727151 (not c!943469)) b!5411649))

(assert (= (and b!5411649 c!943467) b!5411648))

(assert (= (and b!5411649 (not c!943467)) b!5411643))

(assert (= (and b!5411643 (not res!2301702)) b!5411652))

(assert (= (and b!5411652 res!2301705) b!5411650))

(assert (= (and b!5411650 res!2301701) b!5411644))

(assert (= (and b!5411644 res!2301703) b!5411642))

(assert (= (and b!5411652 (not res!2301699)) b!5411647))

(assert (= (and b!5411647 res!2301704) b!5411645))

(assert (= (and b!5411645 (not res!2301706)) b!5411654))

(assert (= (and b!5411654 (not res!2301700)) b!5411646))

(assert (= (or b!5411653 b!5411645 b!5411650) bm!387250))

(assert (=> b!5411644 m!6435598))

(assert (=> b!5411644 m!6435598))

(declare-fun m!6435796 () Bool)

(assert (=> b!5411644 m!6435796))

(assert (=> b!5411654 m!6435598))

(assert (=> b!5411654 m!6435598))

(assert (=> b!5411654 m!6435796))

(declare-fun m!6435798 () Bool)

(assert (=> b!5411651 m!6435798))

(assert (=> b!5411646 m!6435592))

(assert (=> b!5411641 m!6435592))

(assert (=> b!5411641 m!6435592))

(declare-fun m!6435800 () Bool)

(assert (=> b!5411641 m!6435800))

(assert (=> b!5411641 m!6435598))

(assert (=> b!5411641 m!6435800))

(assert (=> b!5411641 m!6435598))

(declare-fun m!6435802 () Bool)

(assert (=> b!5411641 m!6435802))

(assert (=> bm!387250 m!6435586))

(assert (=> d!1727151 m!6435586))

(assert (=> d!1727151 m!6435688))

(assert (=> b!5411642 m!6435592))

(assert (=> b!5410672 d!1727151))

(declare-fun bs!1249876 () Bool)

(declare-fun b!5411663 () Bool)

(assert (= bs!1249876 (and b!5411663 d!1727133)))

(declare-fun lambda!282623 () Int)

(assert (=> bs!1249876 (not (= lambda!282623 lambda!282621))))

(declare-fun bs!1249877 () Bool)

(assert (= bs!1249877 (and b!5411663 d!1727149)))

(assert (=> bs!1249877 (not (= lambda!282623 lambda!282622))))

(assert (=> bs!1249876 (not (= lambda!282623 lambda!282620))))

(declare-fun bs!1249878 () Bool)

(assert (= bs!1249878 (and b!5411663 b!5411303)))

(assert (=> bs!1249878 (not (= lambda!282623 lambda!282601))))

(declare-fun bs!1249879 () Bool)

(assert (= bs!1249879 (and b!5411663 b!5410672)))

(assert (=> bs!1249879 (not (= lambda!282623 lambda!282528))))

(declare-fun bs!1249880 () Bool)

(assert (= bs!1249880 (and b!5411663 b!5410658)))

(assert (=> bs!1249880 (= (and (= s!2326 (_1!35693 lt!2206741)) (= (reg!15520 lt!2206757) (reg!15520 (regOne!30894 r!7292))) (= lt!2206757 lt!2206725)) (= lambda!282623 lambda!282531))))

(assert (=> bs!1249880 (not (= lambda!282623 lambda!282530))))

(declare-fun bs!1249881 () Bool)

(assert (= bs!1249881 (and b!5411663 b!5410653)))

(assert (=> bs!1249881 (not (= lambda!282623 lambda!282522))))

(assert (=> bs!1249881 (not (= lambda!282623 lambda!282523))))

(declare-fun bs!1249882 () Bool)

(assert (= bs!1249882 (and b!5411663 b!5411159)))

(assert (=> bs!1249882 (not (= lambda!282623 lambda!282583))))

(assert (=> bs!1249879 (not (= lambda!282623 lambda!282527))))

(declare-fun bs!1249883 () Bool)

(assert (= bs!1249883 (and b!5411663 b!5411310)))

(assert (=> bs!1249883 (= (and (= (reg!15520 lt!2206757) (reg!15520 r!7292)) (= lt!2206757 r!7292)) (= lambda!282623 lambda!282600))))

(declare-fun bs!1249884 () Bool)

(assert (= bs!1249884 (and b!5411663 d!1727109)))

(assert (=> bs!1249884 (not (= lambda!282623 lambda!282610))))

(declare-fun bs!1249885 () Bool)

(assert (= bs!1249885 (and b!5411663 d!1727111)))

(assert (=> bs!1249885 (not (= lambda!282623 lambda!282616))))

(assert (=> bs!1249885 (not (= lambda!282623 lambda!282615))))

(declare-fun bs!1249886 () Bool)

(assert (= bs!1249886 (and b!5411663 b!5411166)))

(assert (=> bs!1249886 (= (and (= (reg!15520 lt!2206757) (reg!15520 lt!2206753)) (= lt!2206757 lt!2206753)) (= lambda!282623 lambda!282582))))

(assert (=> bs!1249880 (not (= lambda!282623 lambda!282529))))

(assert (=> b!5411663 true))

(assert (=> b!5411663 true))

(declare-fun bs!1249887 () Bool)

(declare-fun b!5411656 () Bool)

(assert (= bs!1249887 (and b!5411656 d!1727133)))

(declare-fun lambda!282624 () Int)

(assert (=> bs!1249887 (= (and (= (regOne!30894 lt!2206757) lt!2206708) (= (regTwo!30894 lt!2206757) (regTwo!30894 r!7292))) (= lambda!282624 lambda!282621))))

(declare-fun bs!1249888 () Bool)

(assert (= bs!1249888 (and b!5411656 d!1727149)))

(assert (=> bs!1249888 (not (= lambda!282624 lambda!282622))))

(assert (=> bs!1249887 (not (= lambda!282624 lambda!282620))))

(declare-fun bs!1249889 () Bool)

(assert (= bs!1249889 (and b!5411656 b!5411303)))

(assert (=> bs!1249889 (= (and (= (regOne!30894 lt!2206757) (regOne!30894 r!7292)) (= (regTwo!30894 lt!2206757) (regTwo!30894 r!7292))) (= lambda!282624 lambda!282601))))

(declare-fun bs!1249890 () Bool)

(assert (= bs!1249890 (and b!5411656 b!5410672)))

(assert (=> bs!1249890 (= (and (= (regOne!30894 lt!2206757) lt!2206708) (= (regTwo!30894 lt!2206757) (regTwo!30894 r!7292))) (= lambda!282624 lambda!282528))))

(declare-fun bs!1249891 () Bool)

(assert (= bs!1249891 (and b!5411656 b!5410658)))

(assert (=> bs!1249891 (not (= lambda!282624 lambda!282531))))

(assert (=> bs!1249891 (= (and (= s!2326 (_1!35693 lt!2206741)) (= (regOne!30894 lt!2206757) (reg!15520 (regOne!30894 r!7292))) (= (regTwo!30894 lt!2206757) lt!2206725)) (= lambda!282624 lambda!282530))))

(declare-fun bs!1249892 () Bool)

(assert (= bs!1249892 (and b!5411656 b!5410653)))

(assert (=> bs!1249892 (= (and (= (regOne!30894 lt!2206757) (regOne!30894 r!7292)) (= (regTwo!30894 lt!2206757) (regTwo!30894 r!7292))) (= lambda!282624 lambda!282523))))

(declare-fun bs!1249893 () Bool)

(assert (= bs!1249893 (and b!5411656 b!5411159)))

(assert (=> bs!1249893 (= (and (= (regOne!30894 lt!2206757) (regOne!30894 lt!2206753)) (= (regTwo!30894 lt!2206757) (regTwo!30894 lt!2206753))) (= lambda!282624 lambda!282583))))

(assert (=> bs!1249890 (not (= lambda!282624 lambda!282527))))

(declare-fun bs!1249894 () Bool)

(assert (= bs!1249894 (and b!5411656 b!5411310)))

(assert (=> bs!1249894 (not (= lambda!282624 lambda!282600))))

(declare-fun bs!1249895 () Bool)

(assert (= bs!1249895 (and b!5411656 d!1727109)))

(assert (=> bs!1249895 (not (= lambda!282624 lambda!282610))))

(declare-fun bs!1249896 () Bool)

(assert (= bs!1249896 (and b!5411656 b!5411663)))

(assert (=> bs!1249896 (not (= lambda!282624 lambda!282623))))

(assert (=> bs!1249892 (not (= lambda!282624 lambda!282522))))

(declare-fun bs!1249897 () Bool)

(assert (= bs!1249897 (and b!5411656 d!1727111)))

(assert (=> bs!1249897 (= (and (= (regOne!30894 lt!2206757) (regOne!30894 r!7292)) (= (regTwo!30894 lt!2206757) (regTwo!30894 r!7292))) (= lambda!282624 lambda!282616))))

(assert (=> bs!1249897 (not (= lambda!282624 lambda!282615))))

(declare-fun bs!1249898 () Bool)

(assert (= bs!1249898 (and b!5411656 b!5411166)))

(assert (=> bs!1249898 (not (= lambda!282624 lambda!282582))))

(assert (=> bs!1249891 (not (= lambda!282624 lambda!282529))))

(assert (=> b!5411656 true))

(assert (=> b!5411656 true))

(declare-fun b!5411655 () Bool)

(declare-fun e!3354621 () Bool)

(declare-fun e!3354619 () Bool)

(assert (=> b!5411655 (= e!3354621 e!3354619)))

(declare-fun res!2301707 () Bool)

(assert (=> b!5411655 (= res!2301707 (matchRSpec!2294 (regOne!30895 lt!2206757) s!2326))))

(assert (=> b!5411655 (=> res!2301707 e!3354619)))

(declare-fun e!3354624 () Bool)

(declare-fun call!387257 () Bool)

(assert (=> b!5411656 (= e!3354624 call!387257)))

(declare-fun b!5411658 () Bool)

(declare-fun e!3354620 () Bool)

(declare-fun e!3354622 () Bool)

(assert (=> b!5411658 (= e!3354620 e!3354622)))

(declare-fun res!2301708 () Bool)

(assert (=> b!5411658 (= res!2301708 (not ((_ is EmptyLang!15191) lt!2206757)))))

(assert (=> b!5411658 (=> (not res!2301708) (not e!3354622))))

(declare-fun b!5411659 () Bool)

(declare-fun c!943472 () Bool)

(assert (=> b!5411659 (= c!943472 ((_ is Union!15191) lt!2206757))))

(declare-fun e!3354618 () Bool)

(assert (=> b!5411659 (= e!3354618 e!3354621)))

(declare-fun bm!387251 () Bool)

(declare-fun c!943471 () Bool)

(assert (=> bm!387251 (= call!387257 (Exists!2372 (ite c!943471 lambda!282623 lambda!282624)))))

(declare-fun b!5411660 () Bool)

(assert (=> b!5411660 (= e!3354619 (matchRSpec!2294 (regTwo!30895 lt!2206757) s!2326))))

(declare-fun bm!387252 () Bool)

(declare-fun call!387256 () Bool)

(assert (=> bm!387252 (= call!387256 (isEmpty!33739 s!2326))))

(declare-fun b!5411661 () Bool)

(assert (=> b!5411661 (= e!3354618 (= s!2326 (Cons!61748 (c!943211 lt!2206757) Nil!61748)))))

(declare-fun b!5411657 () Bool)

(declare-fun c!943470 () Bool)

(assert (=> b!5411657 (= c!943470 ((_ is ElementMatch!15191) lt!2206757))))

(assert (=> b!5411657 (= e!3354622 e!3354618)))

(declare-fun d!1727153 () Bool)

(declare-fun c!943473 () Bool)

(assert (=> d!1727153 (= c!943473 ((_ is EmptyExpr!15191) lt!2206757))))

(assert (=> d!1727153 (= (matchRSpec!2294 lt!2206757 s!2326) e!3354620)))

(declare-fun b!5411662 () Bool)

(declare-fun res!2301709 () Bool)

(declare-fun e!3354623 () Bool)

(assert (=> b!5411662 (=> res!2301709 e!3354623)))

(assert (=> b!5411662 (= res!2301709 call!387256)))

(assert (=> b!5411662 (= e!3354624 e!3354623)))

(assert (=> b!5411663 (= e!3354623 call!387257)))

(declare-fun b!5411664 () Bool)

(assert (=> b!5411664 (= e!3354621 e!3354624)))

(assert (=> b!5411664 (= c!943471 ((_ is Star!15191) lt!2206757))))

(declare-fun b!5411665 () Bool)

(assert (=> b!5411665 (= e!3354620 call!387256)))

(assert (= (and d!1727153 c!943473) b!5411665))

(assert (= (and d!1727153 (not c!943473)) b!5411658))

(assert (= (and b!5411658 res!2301708) b!5411657))

(assert (= (and b!5411657 c!943470) b!5411661))

(assert (= (and b!5411657 (not c!943470)) b!5411659))

(assert (= (and b!5411659 c!943472) b!5411655))

(assert (= (and b!5411659 (not c!943472)) b!5411664))

(assert (= (and b!5411655 (not res!2301707)) b!5411660))

(assert (= (and b!5411664 c!943471) b!5411662))

(assert (= (and b!5411664 (not c!943471)) b!5411656))

(assert (= (and b!5411662 (not res!2301709)) b!5411663))

(assert (= (or b!5411663 b!5411656) bm!387251))

(assert (= (or b!5411665 b!5411662) bm!387252))

(declare-fun m!6435804 () Bool)

(assert (=> b!5411655 m!6435804))

(declare-fun m!6435806 () Bool)

(assert (=> bm!387251 m!6435806))

(declare-fun m!6435808 () Bool)

(assert (=> b!5411660 m!6435808))

(assert (=> bm!387252 m!6435310))

(assert (=> b!5410672 d!1727153))

(declare-fun d!1727155 () Bool)

(assert (=> d!1727155 (matchR!7376 (Concat!24036 (reg!15520 (regOne!30894 r!7292)) lt!2206706) (++!13555 (_1!35693 lt!2206704) (_2!35693 lt!2206704)))))

(declare-fun lt!2206943 () Unit!154286)

(declare-fun choose!40876 (Regex!15191 Regex!15191 List!61872 List!61872) Unit!154286)

(assert (=> d!1727155 (= lt!2206943 (choose!40876 (reg!15520 (regOne!30894 r!7292)) lt!2206706 (_1!35693 lt!2206704) (_2!35693 lt!2206704)))))

(declare-fun e!3354627 () Bool)

(assert (=> d!1727155 e!3354627))

(declare-fun res!2301712 () Bool)

(assert (=> d!1727155 (=> (not res!2301712) (not e!3354627))))

(assert (=> d!1727155 (= res!2301712 (validRegex!6927 (reg!15520 (regOne!30894 r!7292))))))

(assert (=> d!1727155 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!214 (reg!15520 (regOne!30894 r!7292)) lt!2206706 (_1!35693 lt!2206704) (_2!35693 lt!2206704)) lt!2206943)))

(declare-fun b!5411668 () Bool)

(assert (=> b!5411668 (= e!3354627 (validRegex!6927 lt!2206706))))

(assert (= (and d!1727155 res!2301712) b!5411668))

(assert (=> d!1727155 m!6434802))

(assert (=> d!1727155 m!6434802))

(declare-fun m!6435810 () Bool)

(assert (=> d!1727155 m!6435810))

(declare-fun m!6435812 () Bool)

(assert (=> d!1727155 m!6435812))

(assert (=> d!1727155 m!6434826))

(assert (=> b!5411668 m!6435688))

(assert (=> b!5410672 d!1727155))

(declare-fun d!1727157 () Bool)

(assert (=> d!1727157 (= (matchR!7376 lt!2206757 s!2326) (matchRSpec!2294 lt!2206757 s!2326))))

(declare-fun lt!2206944 () Unit!154286)

(assert (=> d!1727157 (= lt!2206944 (choose!40858 lt!2206757 s!2326))))

(assert (=> d!1727157 (validRegex!6927 lt!2206757)))

(assert (=> d!1727157 (= (mainMatchTheorem!2294 lt!2206757 s!2326) lt!2206944)))

(declare-fun bs!1249899 () Bool)

(assert (= bs!1249899 d!1727157))

(assert (=> bs!1249899 m!6434704))

(assert (=> bs!1249899 m!6434696))

(declare-fun m!6435814 () Bool)

(assert (=> bs!1249899 m!6435814))

(assert (=> bs!1249899 m!6435754))

(assert (=> b!5410672 d!1727157))

(declare-fun bs!1249900 () Bool)

(declare-fun d!1727159 () Bool)

(assert (= bs!1249900 (and d!1727159 b!5410650)))

(declare-fun lambda!282627 () Int)

(assert (=> bs!1249900 (= lambda!282627 lambda!282526)))

(declare-fun bs!1249901 () Bool)

(assert (= bs!1249901 (and d!1727159 d!1726963)))

(assert (=> bs!1249901 (= lambda!282627 lambda!282577)))

(declare-fun bs!1249902 () Bool)

(assert (= bs!1249902 (and d!1727159 d!1727127)))

(assert (=> bs!1249902 (= lambda!282627 lambda!282619)))

(declare-fun b!5411689 () Bool)

(declare-fun e!3354643 () Bool)

(declare-fun lt!2206947 () Regex!15191)

(declare-fun head!11606 (List!61873) Regex!15191)

(assert (=> b!5411689 (= e!3354643 (= lt!2206947 (head!11606 (unfocusZipperList!633 zl!343))))))

(declare-fun e!3354642 () Bool)

(assert (=> d!1727159 e!3354642))

(declare-fun res!2301718 () Bool)

(assert (=> d!1727159 (=> (not res!2301718) (not e!3354642))))

(assert (=> d!1727159 (= res!2301718 (validRegex!6927 lt!2206947))))

(declare-fun e!3354641 () Regex!15191)

(assert (=> d!1727159 (= lt!2206947 e!3354641)))

(declare-fun c!943483 () Bool)

(declare-fun e!3354644 () Bool)

(assert (=> d!1727159 (= c!943483 e!3354644)))

(declare-fun res!2301717 () Bool)

(assert (=> d!1727159 (=> (not res!2301717) (not e!3354644))))

(assert (=> d!1727159 (= res!2301717 ((_ is Cons!61749) (unfocusZipperList!633 zl!343)))))

(assert (=> d!1727159 (forall!14537 (unfocusZipperList!633 zl!343) lambda!282627)))

(assert (=> d!1727159 (= (generalisedUnion!1120 (unfocusZipperList!633 zl!343)) lt!2206947)))

(declare-fun b!5411690 () Bool)

(assert (=> b!5411690 (= e!3354641 (h!68197 (unfocusZipperList!633 zl!343)))))

(declare-fun b!5411691 () Bool)

(declare-fun e!3354645 () Regex!15191)

(assert (=> b!5411691 (= e!3354645 EmptyLang!15191)))

(declare-fun b!5411692 () Bool)

(declare-fun e!3354640 () Bool)

(assert (=> b!5411692 (= e!3354640 e!3354643)))

(declare-fun c!943485 () Bool)

(declare-fun tail!10703 (List!61873) List!61873)

(assert (=> b!5411692 (= c!943485 (isEmpty!33737 (tail!10703 (unfocusZipperList!633 zl!343))))))

(declare-fun b!5411693 () Bool)

(declare-fun isEmptyLang!985 (Regex!15191) Bool)

(assert (=> b!5411693 (= e!3354640 (isEmptyLang!985 lt!2206947))))

(declare-fun b!5411694 () Bool)

(declare-fun isUnion!417 (Regex!15191) Bool)

(assert (=> b!5411694 (= e!3354643 (isUnion!417 lt!2206947))))

(declare-fun b!5411695 () Bool)

(assert (=> b!5411695 (= e!3354642 e!3354640)))

(declare-fun c!943482 () Bool)

(assert (=> b!5411695 (= c!943482 (isEmpty!33737 (unfocusZipperList!633 zl!343)))))

(declare-fun b!5411696 () Bool)

(assert (=> b!5411696 (= e!3354645 (Union!15191 (h!68197 (unfocusZipperList!633 zl!343)) (generalisedUnion!1120 (t!375096 (unfocusZipperList!633 zl!343)))))))

(declare-fun b!5411697 () Bool)

(assert (=> b!5411697 (= e!3354641 e!3354645)))

(declare-fun c!943484 () Bool)

(assert (=> b!5411697 (= c!943484 ((_ is Cons!61749) (unfocusZipperList!633 zl!343)))))

(declare-fun b!5411698 () Bool)

(assert (=> b!5411698 (= e!3354644 (isEmpty!33737 (t!375096 (unfocusZipperList!633 zl!343))))))

(assert (= (and d!1727159 res!2301717) b!5411698))

(assert (= (and d!1727159 c!943483) b!5411690))

(assert (= (and d!1727159 (not c!943483)) b!5411697))

(assert (= (and b!5411697 c!943484) b!5411696))

(assert (= (and b!5411697 (not c!943484)) b!5411691))

(assert (= (and d!1727159 res!2301718) b!5411695))

(assert (= (and b!5411695 c!943482) b!5411693))

(assert (= (and b!5411695 (not c!943482)) b!5411692))

(assert (= (and b!5411692 c!943485) b!5411689))

(assert (= (and b!5411692 (not c!943485)) b!5411694))

(assert (=> b!5411695 m!6434838))

(declare-fun m!6435816 () Bool)

(assert (=> b!5411695 m!6435816))

(assert (=> b!5411689 m!6434838))

(declare-fun m!6435818 () Bool)

(assert (=> b!5411689 m!6435818))

(declare-fun m!6435820 () Bool)

(assert (=> d!1727159 m!6435820))

(assert (=> d!1727159 m!6434838))

(declare-fun m!6435822 () Bool)

(assert (=> d!1727159 m!6435822))

(declare-fun m!6435824 () Bool)

(assert (=> b!5411696 m!6435824))

(declare-fun m!6435826 () Bool)

(assert (=> b!5411694 m!6435826))

(declare-fun m!6435828 () Bool)

(assert (=> b!5411693 m!6435828))

(assert (=> b!5411692 m!6434838))

(declare-fun m!6435830 () Bool)

(assert (=> b!5411692 m!6435830))

(assert (=> b!5411692 m!6435830))

(declare-fun m!6435832 () Bool)

(assert (=> b!5411692 m!6435832))

(declare-fun m!6435834 () Bool)

(assert (=> b!5411698 m!6435834))

(assert (=> b!5410676 d!1727159))

(declare-fun bs!1249903 () Bool)

(declare-fun d!1727161 () Bool)

(assert (= bs!1249903 (and d!1727161 b!5410650)))

(declare-fun lambda!282630 () Int)

(assert (=> bs!1249903 (= lambda!282630 lambda!282526)))

(declare-fun bs!1249904 () Bool)

(assert (= bs!1249904 (and d!1727161 d!1726963)))

(assert (=> bs!1249904 (= lambda!282630 lambda!282577)))

(declare-fun bs!1249905 () Bool)

(assert (= bs!1249905 (and d!1727161 d!1727127)))

(assert (=> bs!1249905 (= lambda!282630 lambda!282619)))

(declare-fun bs!1249906 () Bool)

(assert (= bs!1249906 (and d!1727161 d!1727159)))

(assert (=> bs!1249906 (= lambda!282630 lambda!282627)))

(declare-fun lt!2206950 () List!61873)

(assert (=> d!1727161 (forall!14537 lt!2206950 lambda!282630)))

(declare-fun e!3354648 () List!61873)

(assert (=> d!1727161 (= lt!2206950 e!3354648)))

(declare-fun c!943488 () Bool)

(assert (=> d!1727161 (= c!943488 ((_ is Cons!61750) zl!343))))

(assert (=> d!1727161 (= (unfocusZipperList!633 zl!343) lt!2206950)))

(declare-fun b!5411703 () Bool)

(assert (=> b!5411703 (= e!3354648 (Cons!61749 (generalisedConcat!860 (exprs!5075 (h!68198 zl!343))) (unfocusZipperList!633 (t!375097 zl!343))))))

(declare-fun b!5411704 () Bool)

(assert (=> b!5411704 (= e!3354648 Nil!61749)))

(assert (= (and d!1727161 c!943488) b!5411703))

(assert (= (and d!1727161 (not c!943488)) b!5411704))

(declare-fun m!6435836 () Bool)

(assert (=> d!1727161 m!6435836))

(assert (=> b!5411703 m!6434770))

(declare-fun m!6435838 () Bool)

(assert (=> b!5411703 m!6435838))

(assert (=> b!5410676 d!1727161))

(declare-fun bs!1249907 () Bool)

(declare-fun d!1727163 () Bool)

(assert (= bs!1249907 (and d!1727163 d!1727161)))

(declare-fun lambda!282633 () Int)

(assert (=> bs!1249907 (= lambda!282633 lambda!282630)))

(declare-fun bs!1249908 () Bool)

(assert (= bs!1249908 (and d!1727163 d!1727127)))

(assert (=> bs!1249908 (= lambda!282633 lambda!282619)))

(declare-fun bs!1249909 () Bool)

(assert (= bs!1249909 (and d!1727163 d!1727159)))

(assert (=> bs!1249909 (= lambda!282633 lambda!282627)))

(declare-fun bs!1249910 () Bool)

(assert (= bs!1249910 (and d!1727163 b!5410650)))

(assert (=> bs!1249910 (= lambda!282633 lambda!282526)))

(declare-fun bs!1249911 () Bool)

(assert (= bs!1249911 (and d!1727163 d!1726963)))

(assert (=> bs!1249911 (= lambda!282633 lambda!282577)))

(declare-fun b!5411725 () Bool)

(declare-fun e!3354661 () Regex!15191)

(assert (=> b!5411725 (= e!3354661 (h!68197 (exprs!5075 (h!68198 zl!343))))))

(declare-fun b!5411726 () Bool)

(declare-fun e!3354664 () Bool)

(declare-fun lt!2206953 () Regex!15191)

(declare-fun isEmptyExpr!976 (Regex!15191) Bool)

(assert (=> b!5411726 (= e!3354664 (isEmptyExpr!976 lt!2206953))))

(declare-fun b!5411727 () Bool)

(declare-fun e!3354663 () Regex!15191)

(assert (=> b!5411727 (= e!3354661 e!3354663)))

(declare-fun c!943497 () Bool)

(assert (=> b!5411727 (= c!943497 ((_ is Cons!61749) (exprs!5075 (h!68198 zl!343))))))

(declare-fun e!3354662 () Bool)

(assert (=> d!1727163 e!3354662))

(declare-fun res!2301723 () Bool)

(assert (=> d!1727163 (=> (not res!2301723) (not e!3354662))))

(assert (=> d!1727163 (= res!2301723 (validRegex!6927 lt!2206953))))

(assert (=> d!1727163 (= lt!2206953 e!3354661)))

(declare-fun c!943499 () Bool)

(declare-fun e!3354666 () Bool)

(assert (=> d!1727163 (= c!943499 e!3354666)))

(declare-fun res!2301724 () Bool)

(assert (=> d!1727163 (=> (not res!2301724) (not e!3354666))))

(assert (=> d!1727163 (= res!2301724 ((_ is Cons!61749) (exprs!5075 (h!68198 zl!343))))))

(assert (=> d!1727163 (forall!14537 (exprs!5075 (h!68198 zl!343)) lambda!282633)))

(assert (=> d!1727163 (= (generalisedConcat!860 (exprs!5075 (h!68198 zl!343))) lt!2206953)))

(declare-fun b!5411728 () Bool)

(assert (=> b!5411728 (= e!3354662 e!3354664)))

(declare-fun c!943498 () Bool)

(assert (=> b!5411728 (= c!943498 (isEmpty!33737 (exprs!5075 (h!68198 zl!343))))))

(declare-fun b!5411729 () Bool)

(assert (=> b!5411729 (= e!3354663 EmptyExpr!15191)))

(declare-fun b!5411730 () Bool)

(declare-fun e!3354665 () Bool)

(assert (=> b!5411730 (= e!3354665 (= lt!2206953 (head!11606 (exprs!5075 (h!68198 zl!343)))))))

(declare-fun b!5411731 () Bool)

(assert (=> b!5411731 (= e!3354666 (isEmpty!33737 (t!375096 (exprs!5075 (h!68198 zl!343)))))))

(declare-fun b!5411732 () Bool)

(declare-fun isConcat!499 (Regex!15191) Bool)

(assert (=> b!5411732 (= e!3354665 (isConcat!499 lt!2206953))))

(declare-fun b!5411733 () Bool)

(assert (=> b!5411733 (= e!3354664 e!3354665)))

(declare-fun c!943500 () Bool)

(assert (=> b!5411733 (= c!943500 (isEmpty!33737 (tail!10703 (exprs!5075 (h!68198 zl!343)))))))

(declare-fun b!5411734 () Bool)

(assert (=> b!5411734 (= e!3354663 (Concat!24036 (h!68197 (exprs!5075 (h!68198 zl!343))) (generalisedConcat!860 (t!375096 (exprs!5075 (h!68198 zl!343))))))))

(assert (= (and d!1727163 res!2301724) b!5411731))

(assert (= (and d!1727163 c!943499) b!5411725))

(assert (= (and d!1727163 (not c!943499)) b!5411727))

(assert (= (and b!5411727 c!943497) b!5411734))

(assert (= (and b!5411727 (not c!943497)) b!5411729))

(assert (= (and d!1727163 res!2301723) b!5411728))

(assert (= (and b!5411728 c!943498) b!5411726))

(assert (= (and b!5411728 (not c!943498)) b!5411733))

(assert (= (and b!5411733 c!943500) b!5411730))

(assert (= (and b!5411733 (not c!943500)) b!5411732))

(declare-fun m!6435840 () Bool)

(assert (=> b!5411733 m!6435840))

(assert (=> b!5411733 m!6435840))

(declare-fun m!6435842 () Bool)

(assert (=> b!5411733 m!6435842))

(declare-fun m!6435844 () Bool)

(assert (=> b!5411734 m!6435844))

(declare-fun m!6435846 () Bool)

(assert (=> b!5411726 m!6435846))

(assert (=> b!5411731 m!6434712))

(declare-fun m!6435848 () Bool)

(assert (=> b!5411730 m!6435848))

(declare-fun m!6435850 () Bool)

(assert (=> b!5411732 m!6435850))

(declare-fun m!6435852 () Bool)

(assert (=> d!1727163 m!6435852))

(declare-fun m!6435854 () Bool)

(assert (=> d!1727163 m!6435854))

(declare-fun m!6435856 () Bool)

(assert (=> b!5411728 m!6435856))

(assert (=> b!5410675 d!1727163))

(declare-fun d!1727165 () Bool)

(declare-fun c!943501 () Bool)

(assert (=> d!1727165 (= c!943501 (isEmpty!33739 (t!375095 s!2326)))))

(declare-fun e!3354667 () Bool)

(assert (=> d!1727165 (= (matchZipper!1435 lt!2206732 (t!375095 s!2326)) e!3354667)))

(declare-fun b!5411735 () Bool)

(assert (=> b!5411735 (= e!3354667 (nullableZipper!1444 lt!2206732))))

(declare-fun b!5411736 () Bool)

(assert (=> b!5411736 (= e!3354667 (matchZipper!1435 (derivationStepZipper!1430 lt!2206732 (head!11605 (t!375095 s!2326))) (tail!10702 (t!375095 s!2326))))))

(assert (= (and d!1727165 c!943501) b!5411735))

(assert (= (and d!1727165 (not c!943501)) b!5411736))

(assert (=> d!1727165 m!6435172))

(declare-fun m!6435858 () Bool)

(assert (=> b!5411735 m!6435858))

(assert (=> b!5411736 m!6435176))

(assert (=> b!5411736 m!6435176))

(declare-fun m!6435860 () Bool)

(assert (=> b!5411736 m!6435860))

(assert (=> b!5411736 m!6435180))

(assert (=> b!5411736 m!6435860))

(assert (=> b!5411736 m!6435180))

(declare-fun m!6435862 () Bool)

(assert (=> b!5411736 m!6435862))

(assert (=> b!5410654 d!1727165))

(assert (=> b!5410659 d!1727165))

(declare-fun b!5411755 () Bool)

(declare-fun e!3354678 () Option!15302)

(assert (=> b!5411755 (= e!3354678 (Some!15301 (tuple2!64781 Nil!61748 s!2326)))))

(declare-fun b!5411756 () Bool)

(declare-fun e!3354682 () Option!15302)

(assert (=> b!5411756 (= e!3354678 e!3354682)))

(declare-fun c!943506 () Bool)

(assert (=> b!5411756 (= c!943506 ((_ is Nil!61748) s!2326))))

(declare-fun b!5411757 () Bool)

(declare-fun lt!2206960 () Unit!154286)

(declare-fun lt!2206961 () Unit!154286)

(assert (=> b!5411757 (= lt!2206960 lt!2206961)))

(assert (=> b!5411757 (= (++!13555 (++!13555 Nil!61748 (Cons!61748 (h!68196 s!2326) Nil!61748)) (t!375095 s!2326)) s!2326)))

(assert (=> b!5411757 (= lt!2206961 (lemmaMoveElementToOtherListKeepsConcatEq!1839 Nil!61748 (h!68196 s!2326) (t!375095 s!2326) s!2326))))

(assert (=> b!5411757 (= e!3354682 (findConcatSeparationZippers!48 lt!2206746 lt!2206713 (++!13555 Nil!61748 (Cons!61748 (h!68196 s!2326) Nil!61748)) (t!375095 s!2326) s!2326))))

(declare-fun b!5411758 () Bool)

(declare-fun e!3354680 () Bool)

(assert (=> b!5411758 (= e!3354680 (matchZipper!1435 lt!2206713 s!2326))))

(declare-fun b!5411759 () Bool)

(declare-fun res!2301736 () Bool)

(declare-fun e!3354679 () Bool)

(assert (=> b!5411759 (=> (not res!2301736) (not e!3354679))))

(declare-fun lt!2206962 () Option!15302)

(assert (=> b!5411759 (= res!2301736 (matchZipper!1435 lt!2206746 (_1!35693 (get!21289 lt!2206962))))))

(declare-fun b!5411760 () Bool)

(declare-fun e!3354681 () Bool)

(assert (=> b!5411760 (= e!3354681 (not (isDefined!12005 lt!2206962)))))

(declare-fun d!1727167 () Bool)

(assert (=> d!1727167 e!3354681))

(declare-fun res!2301738 () Bool)

(assert (=> d!1727167 (=> res!2301738 e!3354681)))

(assert (=> d!1727167 (= res!2301738 e!3354679)))

(declare-fun res!2301739 () Bool)

(assert (=> d!1727167 (=> (not res!2301739) (not e!3354679))))

(assert (=> d!1727167 (= res!2301739 (isDefined!12005 lt!2206962))))

(assert (=> d!1727167 (= lt!2206962 e!3354678)))

(declare-fun c!943507 () Bool)

(assert (=> d!1727167 (= c!943507 e!3354680)))

(declare-fun res!2301737 () Bool)

(assert (=> d!1727167 (=> (not res!2301737) (not e!3354680))))

(assert (=> d!1727167 (= res!2301737 (matchZipper!1435 lt!2206746 Nil!61748))))

(assert (=> d!1727167 (= (++!13555 Nil!61748 s!2326) s!2326)))

(assert (=> d!1727167 (= (findConcatSeparationZippers!48 lt!2206746 lt!2206713 Nil!61748 s!2326 s!2326) lt!2206962)))

(declare-fun b!5411761 () Bool)

(declare-fun res!2301735 () Bool)

(assert (=> b!5411761 (=> (not res!2301735) (not e!3354679))))

(assert (=> b!5411761 (= res!2301735 (matchZipper!1435 lt!2206713 (_2!35693 (get!21289 lt!2206962))))))

(declare-fun b!5411762 () Bool)

(assert (=> b!5411762 (= e!3354682 None!15301)))

(declare-fun b!5411763 () Bool)

(assert (=> b!5411763 (= e!3354679 (= (++!13555 (_1!35693 (get!21289 lt!2206962)) (_2!35693 (get!21289 lt!2206962))) s!2326))))

(assert (= (and d!1727167 res!2301737) b!5411758))

(assert (= (and d!1727167 c!943507) b!5411755))

(assert (= (and d!1727167 (not c!943507)) b!5411756))

(assert (= (and b!5411756 c!943506) b!5411762))

(assert (= (and b!5411756 (not c!943506)) b!5411757))

(assert (= (and d!1727167 res!2301739) b!5411759))

(assert (= (and b!5411759 res!2301736) b!5411761))

(assert (= (and b!5411761 res!2301735) b!5411763))

(assert (= (and d!1727167 (not res!2301738)) b!5411760))

(declare-fun m!6435864 () Bool)

(assert (=> d!1727167 m!6435864))

(declare-fun m!6435866 () Bool)

(assert (=> d!1727167 m!6435866))

(declare-fun m!6435868 () Bool)

(assert (=> d!1727167 m!6435868))

(declare-fun m!6435870 () Bool)

(assert (=> b!5411763 m!6435870))

(declare-fun m!6435872 () Bool)

(assert (=> b!5411763 m!6435872))

(assert (=> b!5411759 m!6435870))

(declare-fun m!6435874 () Bool)

(assert (=> b!5411759 m!6435874))

(declare-fun m!6435876 () Bool)

(assert (=> b!5411758 m!6435876))

(assert (=> b!5411761 m!6435870))

(declare-fun m!6435878 () Bool)

(assert (=> b!5411761 m!6435878))

(assert (=> b!5411760 m!6435864))

(assert (=> b!5411757 m!6435634))

(assert (=> b!5411757 m!6435634))

(assert (=> b!5411757 m!6435636))

(assert (=> b!5411757 m!6435638))

(assert (=> b!5411757 m!6435634))

(declare-fun m!6435880 () Bool)

(assert (=> b!5411757 m!6435880))

(assert (=> b!5410637 d!1727167))

(declare-fun d!1727169 () Bool)

(assert (=> d!1727169 (= (get!21289 lt!2206751) (v!51330 lt!2206751))))

(assert (=> b!5410637 d!1727169))

(declare-fun d!1727171 () Bool)

(assert (=> d!1727171 (= (isDefined!12005 lt!2206751) (not (isEmpty!33741 lt!2206751)))))

(declare-fun bs!1249912 () Bool)

(assert (= bs!1249912 d!1727171))

(declare-fun m!6435882 () Bool)

(assert (=> bs!1249912 m!6435882))

(assert (=> b!5410637 d!1727171))

(declare-fun b!5411772 () Bool)

(declare-fun e!3354687 () List!61872)

(assert (=> b!5411772 (= e!3354687 (_2!35693 lt!2206704))))

(declare-fun b!5411775 () Bool)

(declare-fun e!3354688 () Bool)

(declare-fun lt!2206965 () List!61872)

(assert (=> b!5411775 (= e!3354688 (or (not (= (_2!35693 lt!2206704) Nil!61748)) (= lt!2206965 (_1!35693 lt!2206704))))))

(declare-fun b!5411774 () Bool)

(declare-fun res!2301745 () Bool)

(assert (=> b!5411774 (=> (not res!2301745) (not e!3354688))))

(declare-fun size!39856 (List!61872) Int)

(assert (=> b!5411774 (= res!2301745 (= (size!39856 lt!2206965) (+ (size!39856 (_1!35693 lt!2206704)) (size!39856 (_2!35693 lt!2206704)))))))

(declare-fun d!1727173 () Bool)

(assert (=> d!1727173 e!3354688))

(declare-fun res!2301744 () Bool)

(assert (=> d!1727173 (=> (not res!2301744) (not e!3354688))))

(declare-fun content!11080 (List!61872) (InoxSet C!30652))

(assert (=> d!1727173 (= res!2301744 (= (content!11080 lt!2206965) ((_ map or) (content!11080 (_1!35693 lt!2206704)) (content!11080 (_2!35693 lt!2206704)))))))

(assert (=> d!1727173 (= lt!2206965 e!3354687)))

(declare-fun c!943510 () Bool)

(assert (=> d!1727173 (= c!943510 ((_ is Nil!61748) (_1!35693 lt!2206704)))))

(assert (=> d!1727173 (= (++!13555 (_1!35693 lt!2206704) (_2!35693 lt!2206704)) lt!2206965)))

(declare-fun b!5411773 () Bool)

(assert (=> b!5411773 (= e!3354687 (Cons!61748 (h!68196 (_1!35693 lt!2206704)) (++!13555 (t!375095 (_1!35693 lt!2206704)) (_2!35693 lt!2206704))))))

(assert (= (and d!1727173 c!943510) b!5411772))

(assert (= (and d!1727173 (not c!943510)) b!5411773))

(assert (= (and d!1727173 res!2301744) b!5411774))

(assert (= (and b!5411774 res!2301745) b!5411775))

(declare-fun m!6435884 () Bool)

(assert (=> b!5411774 m!6435884))

(declare-fun m!6435886 () Bool)

(assert (=> b!5411774 m!6435886))

(declare-fun m!6435888 () Bool)

(assert (=> b!5411774 m!6435888))

(declare-fun m!6435890 () Bool)

(assert (=> d!1727173 m!6435890))

(declare-fun m!6435892 () Bool)

(assert (=> d!1727173 m!6435892))

(declare-fun m!6435894 () Bool)

(assert (=> d!1727173 m!6435894))

(declare-fun m!6435896 () Bool)

(assert (=> b!5411773 m!6435896))

(assert (=> b!5410637 d!1727173))

(declare-fun d!1727175 () Bool)

(assert (=> d!1727175 (isDefined!12005 (findConcatSeparationZippers!48 lt!2206746 (store ((as const (Array Context!9150 Bool)) false) lt!2206711 true) Nil!61748 s!2326 s!2326))))

(declare-fun lt!2206968 () Unit!154286)

(declare-fun choose!40877 ((InoxSet Context!9150) Context!9150 List!61872) Unit!154286)

(assert (=> d!1727175 (= lt!2206968 (choose!40877 lt!2206746 lt!2206711 s!2326))))

(assert (=> d!1727175 (matchZipper!1435 (appendTo!50 lt!2206746 lt!2206711) s!2326)))

(assert (=> d!1727175 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!48 lt!2206746 lt!2206711 s!2326) lt!2206968)))

(declare-fun bs!1249913 () Bool)

(assert (= bs!1249913 d!1727175))

(assert (=> bs!1249913 m!6434858))

(declare-fun m!6435898 () Bool)

(assert (=> bs!1249913 m!6435898))

(declare-fun m!6435900 () Bool)

(assert (=> bs!1249913 m!6435900))

(assert (=> bs!1249913 m!6434720))

(assert (=> bs!1249913 m!6434720))

(assert (=> bs!1249913 m!6435898))

(assert (=> bs!1249913 m!6434858))

(declare-fun m!6435902 () Bool)

(assert (=> bs!1249913 m!6435902))

(declare-fun m!6435904 () Bool)

(assert (=> bs!1249913 m!6435904))

(assert (=> b!5410637 d!1727175))

(declare-fun d!1727177 () Bool)

(assert (=> d!1727177 (= (Exists!2372 lambda!282529) (choose!40866 lambda!282529))))

(declare-fun bs!1249914 () Bool)

(assert (= bs!1249914 d!1727177))

(declare-fun m!6435906 () Bool)

(assert (=> bs!1249914 m!6435906))

(assert (=> b!5410658 d!1727177))

(declare-fun b!5411776 () Bool)

(declare-fun e!3354691 () Bool)

(declare-fun e!3354689 () Bool)

(assert (=> b!5411776 (= e!3354691 e!3354689)))

(declare-fun c!943511 () Bool)

(assert (=> b!5411776 (= c!943511 ((_ is Star!15191) (reg!15520 (regOne!30894 r!7292))))))

(declare-fun b!5411777 () Bool)

(declare-fun res!2301750 () Bool)

(declare-fun e!3354692 () Bool)

(assert (=> b!5411777 (=> (not res!2301750) (not e!3354692))))

(declare-fun call!387258 () Bool)

(assert (=> b!5411777 (= res!2301750 call!387258)))

(declare-fun e!3354690 () Bool)

(assert (=> b!5411777 (= e!3354690 e!3354692)))

(declare-fun bm!387253 () Bool)

(declare-fun call!387260 () Bool)

(assert (=> bm!387253 (= call!387258 call!387260)))

(declare-fun bm!387254 () Bool)

(declare-fun c!943512 () Bool)

(assert (=> bm!387254 (= call!387260 (validRegex!6927 (ite c!943511 (reg!15520 (reg!15520 (regOne!30894 r!7292))) (ite c!943512 (regOne!30895 (reg!15520 (regOne!30894 r!7292))) (regOne!30894 (reg!15520 (regOne!30894 r!7292)))))))))

(declare-fun b!5411778 () Bool)

(assert (=> b!5411778 (= e!3354689 e!3354690)))

(assert (=> b!5411778 (= c!943512 ((_ is Union!15191) (reg!15520 (regOne!30894 r!7292))))))

(declare-fun b!5411779 () Bool)

(declare-fun e!3354695 () Bool)

(assert (=> b!5411779 (= e!3354695 call!387260)))

(declare-fun b!5411780 () Bool)

(declare-fun e!3354694 () Bool)

(declare-fun call!387259 () Bool)

(assert (=> b!5411780 (= e!3354694 call!387259)))

(declare-fun b!5411781 () Bool)

(declare-fun e!3354693 () Bool)

(assert (=> b!5411781 (= e!3354693 e!3354694)))

(declare-fun res!2301748 () Bool)

(assert (=> b!5411781 (=> (not res!2301748) (not e!3354694))))

(assert (=> b!5411781 (= res!2301748 call!387258)))

(declare-fun d!1727179 () Bool)

(declare-fun res!2301747 () Bool)

(assert (=> d!1727179 (=> res!2301747 e!3354691)))

(assert (=> d!1727179 (= res!2301747 ((_ is ElementMatch!15191) (reg!15520 (regOne!30894 r!7292))))))

(assert (=> d!1727179 (= (validRegex!6927 (reg!15520 (regOne!30894 r!7292))) e!3354691)))

(declare-fun bm!387255 () Bool)

(assert (=> bm!387255 (= call!387259 (validRegex!6927 (ite c!943512 (regTwo!30895 (reg!15520 (regOne!30894 r!7292))) (regTwo!30894 (reg!15520 (regOne!30894 r!7292))))))))

(declare-fun b!5411782 () Bool)

(declare-fun res!2301746 () Bool)

(assert (=> b!5411782 (=> res!2301746 e!3354693)))

(assert (=> b!5411782 (= res!2301746 (not ((_ is Concat!24036) (reg!15520 (regOne!30894 r!7292)))))))

(assert (=> b!5411782 (= e!3354690 e!3354693)))

(declare-fun b!5411783 () Bool)

(assert (=> b!5411783 (= e!3354692 call!387259)))

(declare-fun b!5411784 () Bool)

(assert (=> b!5411784 (= e!3354689 e!3354695)))

(declare-fun res!2301749 () Bool)

(assert (=> b!5411784 (= res!2301749 (not (nullable!5360 (reg!15520 (reg!15520 (regOne!30894 r!7292))))))))

(assert (=> b!5411784 (=> (not res!2301749) (not e!3354695))))

(assert (= (and d!1727179 (not res!2301747)) b!5411776))

(assert (= (and b!5411776 c!943511) b!5411784))

(assert (= (and b!5411776 (not c!943511)) b!5411778))

(assert (= (and b!5411784 res!2301749) b!5411779))

(assert (= (and b!5411778 c!943512) b!5411777))

(assert (= (and b!5411778 (not c!943512)) b!5411782))

(assert (= (and b!5411777 res!2301750) b!5411783))

(assert (= (and b!5411782 (not res!2301746)) b!5411781))

(assert (= (and b!5411781 res!2301748) b!5411780))

(assert (= (or b!5411783 b!5411780) bm!387255))

(assert (= (or b!5411777 b!5411781) bm!387253))

(assert (= (or b!5411779 bm!387253) bm!387254))

(declare-fun m!6435908 () Bool)

(assert (=> bm!387254 m!6435908))

(declare-fun m!6435910 () Bool)

(assert (=> bm!387255 m!6435910))

(declare-fun m!6435912 () Bool)

(assert (=> b!5411784 m!6435912))

(assert (=> b!5410658 d!1727179))

(declare-fun d!1727181 () Bool)

(assert (=> d!1727181 (= (Exists!2372 lambda!282531) (choose!40866 lambda!282531))))

(declare-fun bs!1249915 () Bool)

(assert (= bs!1249915 d!1727181))

(declare-fun m!6435914 () Bool)

(assert (=> bs!1249915 m!6435914))

(assert (=> b!5410658 d!1727181))

(declare-fun bs!1249916 () Bool)

(declare-fun d!1727183 () Bool)

(assert (= bs!1249916 (and d!1727183 d!1727133)))

(declare-fun lambda!282638 () Int)

(assert (=> bs!1249916 (not (= lambda!282638 lambda!282621))))

(declare-fun bs!1249917 () Bool)

(assert (= bs!1249917 (and d!1727183 d!1727149)))

(assert (=> bs!1249917 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= (Star!15191 (reg!15520 (regOne!30894 r!7292))) (regTwo!30894 r!7292))) (= lambda!282638 lambda!282622))))

(assert (=> bs!1249916 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= (Star!15191 (reg!15520 (regOne!30894 r!7292))) (regTwo!30894 r!7292))) (= lambda!282638 lambda!282620))))

(declare-fun bs!1249918 () Bool)

(assert (= bs!1249918 (and d!1727183 b!5411303)))

(assert (=> bs!1249918 (not (= lambda!282638 lambda!282601))))

(declare-fun bs!1249919 () Bool)

(assert (= bs!1249919 (and d!1727183 b!5410658)))

(assert (=> bs!1249919 (not (= lambda!282638 lambda!282531))))

(assert (=> bs!1249919 (not (= lambda!282638 lambda!282530))))

(declare-fun bs!1249920 () Bool)

(assert (= bs!1249920 (and d!1727183 b!5410653)))

(assert (=> bs!1249920 (not (= lambda!282638 lambda!282523))))

(declare-fun bs!1249921 () Bool)

(assert (= bs!1249921 (and d!1727183 b!5411159)))

(assert (=> bs!1249921 (not (= lambda!282638 lambda!282583))))

(declare-fun bs!1249922 () Bool)

(assert (= bs!1249922 (and d!1727183 b!5410672)))

(assert (=> bs!1249922 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= (Star!15191 (reg!15520 (regOne!30894 r!7292))) (regTwo!30894 r!7292))) (= lambda!282638 lambda!282527))))

(declare-fun bs!1249923 () Bool)

(assert (= bs!1249923 (and d!1727183 b!5411310)))

(assert (=> bs!1249923 (not (= lambda!282638 lambda!282600))))

(declare-fun bs!1249924 () Bool)

(assert (= bs!1249924 (and d!1727183 d!1727109)))

(assert (=> bs!1249924 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= (Star!15191 (reg!15520 (regOne!30894 r!7292))) (regTwo!30894 r!7292))) (= lambda!282638 lambda!282610))))

(declare-fun bs!1249925 () Bool)

(assert (= bs!1249925 (and d!1727183 b!5411656)))

(assert (=> bs!1249925 (not (= lambda!282638 lambda!282624))))

(assert (=> bs!1249922 (not (= lambda!282638 lambda!282528))))

(declare-fun bs!1249926 () Bool)

(assert (= bs!1249926 (and d!1727183 b!5411663)))

(assert (=> bs!1249926 (not (= lambda!282638 lambda!282623))))

(assert (=> bs!1249920 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= (Star!15191 (reg!15520 (regOne!30894 r!7292))) (regTwo!30894 r!7292))) (= lambda!282638 lambda!282522))))

(declare-fun bs!1249927 () Bool)

(assert (= bs!1249927 (and d!1727183 d!1727111)))

(assert (=> bs!1249927 (not (= lambda!282638 lambda!282616))))

(assert (=> bs!1249927 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= (Star!15191 (reg!15520 (regOne!30894 r!7292))) (regTwo!30894 r!7292))) (= lambda!282638 lambda!282615))))

(declare-fun bs!1249928 () Bool)

(assert (= bs!1249928 (and d!1727183 b!5411166)))

(assert (=> bs!1249928 (not (= lambda!282638 lambda!282582))))

(assert (=> bs!1249919 (= (= (Star!15191 (reg!15520 (regOne!30894 r!7292))) lt!2206725) (= lambda!282638 lambda!282529))))

(assert (=> d!1727183 true))

(assert (=> d!1727183 true))

(declare-fun lambda!282639 () Int)

(assert (=> bs!1249916 (not (= lambda!282639 lambda!282621))))

(assert (=> bs!1249917 (not (= lambda!282639 lambda!282622))))

(assert (=> bs!1249918 (not (= lambda!282639 lambda!282601))))

(assert (=> bs!1249919 (= (= (Star!15191 (reg!15520 (regOne!30894 r!7292))) lt!2206725) (= lambda!282639 lambda!282531))))

(assert (=> bs!1249919 (not (= lambda!282639 lambda!282530))))

(assert (=> bs!1249920 (not (= lambda!282639 lambda!282523))))

(assert (=> bs!1249921 (not (= lambda!282639 lambda!282583))))

(assert (=> bs!1249922 (not (= lambda!282639 lambda!282527))))

(assert (=> bs!1249923 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (reg!15520 r!7292)) (= (Star!15191 (reg!15520 (regOne!30894 r!7292))) r!7292)) (= lambda!282639 lambda!282600))))

(assert (=> bs!1249924 (not (= lambda!282639 lambda!282610))))

(declare-fun bs!1249929 () Bool)

(assert (= bs!1249929 d!1727183))

(assert (=> bs!1249929 (not (= lambda!282639 lambda!282638))))

(assert (=> bs!1249916 (not (= lambda!282639 lambda!282620))))

(assert (=> bs!1249925 (not (= lambda!282639 lambda!282624))))

(assert (=> bs!1249922 (not (= lambda!282639 lambda!282528))))

(assert (=> bs!1249926 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (reg!15520 lt!2206757)) (= (Star!15191 (reg!15520 (regOne!30894 r!7292))) lt!2206757)) (= lambda!282639 lambda!282623))))

(assert (=> bs!1249920 (not (= lambda!282639 lambda!282522))))

(assert (=> bs!1249927 (not (= lambda!282639 lambda!282616))))

(assert (=> bs!1249927 (not (= lambda!282639 lambda!282615))))

(assert (=> bs!1249928 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (reg!15520 lt!2206753)) (= (Star!15191 (reg!15520 (regOne!30894 r!7292))) lt!2206753)) (= lambda!282639 lambda!282582))))

(assert (=> bs!1249919 (not (= lambda!282639 lambda!282529))))

(assert (=> d!1727183 true))

(assert (=> d!1727183 true))

(assert (=> d!1727183 (= (Exists!2372 lambda!282638) (Exists!2372 lambda!282639))))

(declare-fun lt!2206971 () Unit!154286)

(declare-fun choose!40878 (Regex!15191 List!61872) Unit!154286)

(assert (=> d!1727183 (= lt!2206971 (choose!40878 (reg!15520 (regOne!30894 r!7292)) (_1!35693 lt!2206741)))))

(assert (=> d!1727183 (validRegex!6927 (reg!15520 (regOne!30894 r!7292)))))

(assert (=> d!1727183 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!402 (reg!15520 (regOne!30894 r!7292)) (_1!35693 lt!2206741)) lt!2206971)))

(declare-fun m!6435916 () Bool)

(assert (=> bs!1249929 m!6435916))

(declare-fun m!6435918 () Bool)

(assert (=> bs!1249929 m!6435918))

(declare-fun m!6435920 () Bool)

(assert (=> bs!1249929 m!6435920))

(assert (=> bs!1249929 m!6434826))

(assert (=> b!5410658 d!1727183))

(declare-fun bs!1249930 () Bool)

(declare-fun d!1727185 () Bool)

(assert (= bs!1249930 (and d!1727185 d!1727133)))

(declare-fun lambda!282640 () Int)

(assert (=> bs!1249930 (not (= lambda!282640 lambda!282621))))

(declare-fun bs!1249931 () Bool)

(assert (= bs!1249931 (and d!1727185 d!1727149)))

(assert (=> bs!1249931 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282640 lambda!282622))))

(declare-fun bs!1249932 () Bool)

(assert (= bs!1249932 (and d!1727185 b!5411303)))

(assert (=> bs!1249932 (not (= lambda!282640 lambda!282601))))

(declare-fun bs!1249933 () Bool)

(assert (= bs!1249933 (and d!1727185 b!5410658)))

(assert (=> bs!1249933 (not (= lambda!282640 lambda!282531))))

(assert (=> bs!1249933 (not (= lambda!282640 lambda!282530))))

(declare-fun bs!1249934 () Bool)

(assert (= bs!1249934 (and d!1727185 b!5410653)))

(assert (=> bs!1249934 (not (= lambda!282640 lambda!282523))))

(declare-fun bs!1249935 () Bool)

(assert (= bs!1249935 (and d!1727185 b!5411159)))

(assert (=> bs!1249935 (not (= lambda!282640 lambda!282583))))

(declare-fun bs!1249936 () Bool)

(assert (= bs!1249936 (and d!1727185 b!5410672)))

(assert (=> bs!1249936 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282640 lambda!282527))))

(declare-fun bs!1249937 () Bool)

(assert (= bs!1249937 (and d!1727185 d!1727109)))

(assert (=> bs!1249937 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282640 lambda!282610))))

(declare-fun bs!1249938 () Bool)

(assert (= bs!1249938 (and d!1727185 d!1727183)))

(assert (=> bs!1249938 (= (= lt!2206725 (Star!15191 (reg!15520 (regOne!30894 r!7292)))) (= lambda!282640 lambda!282638))))

(assert (=> bs!1249930 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282640 lambda!282620))))

(declare-fun bs!1249939 () Bool)

(assert (= bs!1249939 (and d!1727185 b!5411656)))

(assert (=> bs!1249939 (not (= lambda!282640 lambda!282624))))

(assert (=> bs!1249936 (not (= lambda!282640 lambda!282528))))

(declare-fun bs!1249940 () Bool)

(assert (= bs!1249940 (and d!1727185 b!5411663)))

(assert (=> bs!1249940 (not (= lambda!282640 lambda!282623))))

(assert (=> bs!1249934 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282640 lambda!282522))))

(declare-fun bs!1249941 () Bool)

(assert (= bs!1249941 (and d!1727185 d!1727111)))

(assert (=> bs!1249941 (not (= lambda!282640 lambda!282616))))

(assert (=> bs!1249941 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282640 lambda!282615))))

(declare-fun bs!1249942 () Bool)

(assert (= bs!1249942 (and d!1727185 b!5411310)))

(assert (=> bs!1249942 (not (= lambda!282640 lambda!282600))))

(assert (=> bs!1249938 (not (= lambda!282640 lambda!282639))))

(declare-fun bs!1249943 () Bool)

(assert (= bs!1249943 (and d!1727185 b!5411166)))

(assert (=> bs!1249943 (not (= lambda!282640 lambda!282582))))

(assert (=> bs!1249933 (= lambda!282640 lambda!282529)))

(assert (=> d!1727185 true))

(assert (=> d!1727185 true))

(assert (=> d!1727185 true))

(assert (=> d!1727185 (= (isDefined!12005 (findConcatSeparation!1716 (reg!15520 (regOne!30894 r!7292)) lt!2206725 Nil!61748 (_1!35693 lt!2206741) (_1!35693 lt!2206741))) (Exists!2372 lambda!282640))))

(declare-fun lt!2206972 () Unit!154286)

(assert (=> d!1727185 (= lt!2206972 (choose!40867 (reg!15520 (regOne!30894 r!7292)) lt!2206725 (_1!35693 lt!2206741)))))

(assert (=> d!1727185 (validRegex!6927 (reg!15520 (regOne!30894 r!7292)))))

(assert (=> d!1727185 (= (lemmaFindConcatSeparationEquivalentToExists!1480 (reg!15520 (regOne!30894 r!7292)) lt!2206725 (_1!35693 lt!2206741)) lt!2206972)))

(declare-fun bs!1249944 () Bool)

(assert (= bs!1249944 d!1727185))

(assert (=> bs!1249944 m!6434826))

(declare-fun m!6435922 () Bool)

(assert (=> bs!1249944 m!6435922))

(declare-fun m!6435924 () Bool)

(assert (=> bs!1249944 m!6435924))

(assert (=> bs!1249944 m!6434818))

(assert (=> bs!1249944 m!6434818))

(assert (=> bs!1249944 m!6434824))

(assert (=> b!5410658 d!1727185))

(declare-fun d!1727187 () Bool)

(assert (=> d!1727187 (= (isDefined!12005 (findConcatSeparation!1716 (reg!15520 (regOne!30894 r!7292)) lt!2206725 Nil!61748 (_1!35693 lt!2206741) (_1!35693 lt!2206741))) (not (isEmpty!33741 (findConcatSeparation!1716 (reg!15520 (regOne!30894 r!7292)) lt!2206725 Nil!61748 (_1!35693 lt!2206741) (_1!35693 lt!2206741)))))))

(declare-fun bs!1249945 () Bool)

(assert (= bs!1249945 d!1727187))

(assert (=> bs!1249945 m!6434818))

(declare-fun m!6435926 () Bool)

(assert (=> bs!1249945 m!6435926))

(assert (=> b!5410658 d!1727187))

(declare-fun b!5411795 () Bool)

(declare-fun e!3354703 () Option!15302)

(assert (=> b!5411795 (= e!3354703 (Some!15301 (tuple2!64781 Nil!61748 (_1!35693 lt!2206741))))))

(declare-fun b!5411796 () Bool)

(declare-fun lt!2206975 () Unit!154286)

(declare-fun lt!2206973 () Unit!154286)

(assert (=> b!5411796 (= lt!2206975 lt!2206973)))

(assert (=> b!5411796 (= (++!13555 (++!13555 Nil!61748 (Cons!61748 (h!68196 (_1!35693 lt!2206741)) Nil!61748)) (t!375095 (_1!35693 lt!2206741))) (_1!35693 lt!2206741))))

(assert (=> b!5411796 (= lt!2206973 (lemmaMoveElementToOtherListKeepsConcatEq!1839 Nil!61748 (h!68196 (_1!35693 lt!2206741)) (t!375095 (_1!35693 lt!2206741)) (_1!35693 lt!2206741)))))

(declare-fun e!3354702 () Option!15302)

(assert (=> b!5411796 (= e!3354702 (findConcatSeparation!1716 (reg!15520 (regOne!30894 r!7292)) lt!2206725 (++!13555 Nil!61748 (Cons!61748 (h!68196 (_1!35693 lt!2206741)) Nil!61748)) (t!375095 (_1!35693 lt!2206741)) (_1!35693 lt!2206741)))))

(declare-fun b!5411797 () Bool)

(assert (=> b!5411797 (= e!3354703 e!3354702)))

(declare-fun c!943514 () Bool)

(assert (=> b!5411797 (= c!943514 ((_ is Nil!61748) (_1!35693 lt!2206741)))))

(declare-fun d!1727189 () Bool)

(declare-fun e!3354700 () Bool)

(assert (=> d!1727189 e!3354700))

(declare-fun res!2301763 () Bool)

(assert (=> d!1727189 (=> res!2301763 e!3354700)))

(declare-fun e!3354704 () Bool)

(assert (=> d!1727189 (= res!2301763 e!3354704)))

(declare-fun res!2301765 () Bool)

(assert (=> d!1727189 (=> (not res!2301765) (not e!3354704))))

(declare-fun lt!2206974 () Option!15302)

(assert (=> d!1727189 (= res!2301765 (isDefined!12005 lt!2206974))))

(assert (=> d!1727189 (= lt!2206974 e!3354703)))

(declare-fun c!943513 () Bool)

(declare-fun e!3354701 () Bool)

(assert (=> d!1727189 (= c!943513 e!3354701)))

(declare-fun res!2301761 () Bool)

(assert (=> d!1727189 (=> (not res!2301761) (not e!3354701))))

(assert (=> d!1727189 (= res!2301761 (matchR!7376 (reg!15520 (regOne!30894 r!7292)) Nil!61748))))

(assert (=> d!1727189 (validRegex!6927 (reg!15520 (regOne!30894 r!7292)))))

(assert (=> d!1727189 (= (findConcatSeparation!1716 (reg!15520 (regOne!30894 r!7292)) lt!2206725 Nil!61748 (_1!35693 lt!2206741) (_1!35693 lt!2206741)) lt!2206974)))

(declare-fun b!5411798 () Bool)

(declare-fun res!2301764 () Bool)

(assert (=> b!5411798 (=> (not res!2301764) (not e!3354704))))

(assert (=> b!5411798 (= res!2301764 (matchR!7376 lt!2206725 (_2!35693 (get!21289 lt!2206974))))))

(declare-fun b!5411799 () Bool)

(declare-fun res!2301762 () Bool)

(assert (=> b!5411799 (=> (not res!2301762) (not e!3354704))))

(assert (=> b!5411799 (= res!2301762 (matchR!7376 (reg!15520 (regOne!30894 r!7292)) (_1!35693 (get!21289 lt!2206974))))))

(declare-fun b!5411800 () Bool)

(assert (=> b!5411800 (= e!3354701 (matchR!7376 lt!2206725 (_1!35693 lt!2206741)))))

(declare-fun b!5411801 () Bool)

(assert (=> b!5411801 (= e!3354702 None!15301)))

(declare-fun b!5411802 () Bool)

(assert (=> b!5411802 (= e!3354704 (= (++!13555 (_1!35693 (get!21289 lt!2206974)) (_2!35693 (get!21289 lt!2206974))) (_1!35693 lt!2206741)))))

(declare-fun b!5411803 () Bool)

(assert (=> b!5411803 (= e!3354700 (not (isDefined!12005 lt!2206974)))))

(assert (= (and d!1727189 res!2301761) b!5411800))

(assert (= (and d!1727189 c!943513) b!5411795))

(assert (= (and d!1727189 (not c!943513)) b!5411797))

(assert (= (and b!5411797 c!943514) b!5411801))

(assert (= (and b!5411797 (not c!943514)) b!5411796))

(assert (= (and d!1727189 res!2301765) b!5411799))

(assert (= (and b!5411799 res!2301762) b!5411798))

(assert (= (and b!5411798 res!2301764) b!5411802))

(assert (= (and d!1727189 (not res!2301763)) b!5411803))

(declare-fun m!6435928 () Bool)

(assert (=> b!5411796 m!6435928))

(assert (=> b!5411796 m!6435928))

(declare-fun m!6435930 () Bool)

(assert (=> b!5411796 m!6435930))

(declare-fun m!6435932 () Bool)

(assert (=> b!5411796 m!6435932))

(assert (=> b!5411796 m!6435928))

(declare-fun m!6435934 () Bool)

(assert (=> b!5411796 m!6435934))

(declare-fun m!6435936 () Bool)

(assert (=> d!1727189 m!6435936))

(declare-fun m!6435938 () Bool)

(assert (=> d!1727189 m!6435938))

(assert (=> d!1727189 m!6434826))

(declare-fun m!6435940 () Bool)

(assert (=> b!5411798 m!6435940))

(declare-fun m!6435942 () Bool)

(assert (=> b!5411798 m!6435942))

(assert (=> b!5411802 m!6435940))

(declare-fun m!6435944 () Bool)

(assert (=> b!5411802 m!6435944))

(assert (=> b!5411803 m!6435936))

(declare-fun m!6435946 () Bool)

(assert (=> b!5411800 m!6435946))

(assert (=> b!5411799 m!6435940))

(declare-fun m!6435948 () Bool)

(assert (=> b!5411799 m!6435948))

(assert (=> b!5410658 d!1727189))

(declare-fun bs!1249946 () Bool)

(declare-fun d!1727191 () Bool)

(assert (= bs!1249946 (and d!1727191 d!1727133)))

(declare-fun lambda!282641 () Int)

(assert (=> bs!1249946 (not (= lambda!282641 lambda!282621))))

(declare-fun bs!1249947 () Bool)

(assert (= bs!1249947 (and d!1727191 d!1727149)))

(assert (=> bs!1249947 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282641 lambda!282622))))

(declare-fun bs!1249948 () Bool)

(assert (= bs!1249948 (and d!1727191 b!5411303)))

(assert (=> bs!1249948 (not (= lambda!282641 lambda!282601))))

(declare-fun bs!1249949 () Bool)

(assert (= bs!1249949 (and d!1727191 b!5410658)))

(assert (=> bs!1249949 (not (= lambda!282641 lambda!282531))))

(assert (=> bs!1249949 (not (= lambda!282641 lambda!282530))))

(declare-fun bs!1249950 () Bool)

(assert (= bs!1249950 (and d!1727191 b!5410653)))

(assert (=> bs!1249950 (not (= lambda!282641 lambda!282523))))

(declare-fun bs!1249951 () Bool)

(assert (= bs!1249951 (and d!1727191 b!5411159)))

(assert (=> bs!1249951 (not (= lambda!282641 lambda!282583))))

(declare-fun bs!1249952 () Bool)

(assert (= bs!1249952 (and d!1727191 b!5410672)))

(assert (=> bs!1249952 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282641 lambda!282527))))

(declare-fun bs!1249953 () Bool)

(assert (= bs!1249953 (and d!1727191 d!1727185)))

(assert (=> bs!1249953 (= lambda!282641 lambda!282640)))

(declare-fun bs!1249954 () Bool)

(assert (= bs!1249954 (and d!1727191 d!1727109)))

(assert (=> bs!1249954 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282641 lambda!282610))))

(declare-fun bs!1249955 () Bool)

(assert (= bs!1249955 (and d!1727191 d!1727183)))

(assert (=> bs!1249955 (= (= lt!2206725 (Star!15191 (reg!15520 (regOne!30894 r!7292)))) (= lambda!282641 lambda!282638))))

(assert (=> bs!1249946 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282641 lambda!282620))))

(declare-fun bs!1249956 () Bool)

(assert (= bs!1249956 (and d!1727191 b!5411656)))

(assert (=> bs!1249956 (not (= lambda!282641 lambda!282624))))

(assert (=> bs!1249952 (not (= lambda!282641 lambda!282528))))

(declare-fun bs!1249957 () Bool)

(assert (= bs!1249957 (and d!1727191 b!5411663)))

(assert (=> bs!1249957 (not (= lambda!282641 lambda!282623))))

(assert (=> bs!1249950 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282641 lambda!282522))))

(declare-fun bs!1249958 () Bool)

(assert (= bs!1249958 (and d!1727191 d!1727111)))

(assert (=> bs!1249958 (not (= lambda!282641 lambda!282616))))

(assert (=> bs!1249958 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282641 lambda!282615))))

(declare-fun bs!1249959 () Bool)

(assert (= bs!1249959 (and d!1727191 b!5411310)))

(assert (=> bs!1249959 (not (= lambda!282641 lambda!282600))))

(assert (=> bs!1249955 (not (= lambda!282641 lambda!282639))))

(declare-fun bs!1249960 () Bool)

(assert (= bs!1249960 (and d!1727191 b!5411166)))

(assert (=> bs!1249960 (not (= lambda!282641 lambda!282582))))

(assert (=> bs!1249949 (= lambda!282641 lambda!282529)))

(assert (=> d!1727191 true))

(assert (=> d!1727191 true))

(assert (=> d!1727191 true))

(declare-fun lambda!282642 () Int)

(assert (=> bs!1249946 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282642 lambda!282621))))

(assert (=> bs!1249947 (not (= lambda!282642 lambda!282622))))

(declare-fun bs!1249961 () Bool)

(assert (= bs!1249961 d!1727191))

(assert (=> bs!1249961 (not (= lambda!282642 lambda!282641))))

(assert (=> bs!1249948 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282642 lambda!282601))))

(assert (=> bs!1249949 (not (= lambda!282642 lambda!282531))))

(assert (=> bs!1249949 (= lambda!282642 lambda!282530)))

(assert (=> bs!1249950 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282642 lambda!282523))))

(assert (=> bs!1249951 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 lt!2206753)) (= lt!2206725 (regTwo!30894 lt!2206753))) (= lambda!282642 lambda!282583))))

(assert (=> bs!1249952 (not (= lambda!282642 lambda!282527))))

(assert (=> bs!1249953 (not (= lambda!282642 lambda!282640))))

(assert (=> bs!1249954 (not (= lambda!282642 lambda!282610))))

(assert (=> bs!1249955 (not (= lambda!282642 lambda!282638))))

(assert (=> bs!1249946 (not (= lambda!282642 lambda!282620))))

(assert (=> bs!1249956 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 lt!2206757)) (= lt!2206725 (regTwo!30894 lt!2206757))) (= lambda!282642 lambda!282624))))

(assert (=> bs!1249952 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) lt!2206708) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282642 lambda!282528))))

(assert (=> bs!1249957 (not (= lambda!282642 lambda!282623))))

(assert (=> bs!1249950 (not (= lambda!282642 lambda!282522))))

(assert (=> bs!1249958 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 (regOne!30894 r!7292)) (regOne!30894 r!7292)) (= lt!2206725 (regTwo!30894 r!7292))) (= lambda!282642 lambda!282616))))

(assert (=> bs!1249958 (not (= lambda!282642 lambda!282615))))

(assert (=> bs!1249959 (not (= lambda!282642 lambda!282600))))

(assert (=> bs!1249955 (not (= lambda!282642 lambda!282639))))

(assert (=> bs!1249960 (not (= lambda!282642 lambda!282582))))

(assert (=> bs!1249949 (not (= lambda!282642 lambda!282529))))

(assert (=> d!1727191 true))

(assert (=> d!1727191 true))

(assert (=> d!1727191 true))

(assert (=> d!1727191 (= (Exists!2372 lambda!282641) (Exists!2372 lambda!282642))))

(declare-fun lt!2206976 () Unit!154286)

(assert (=> d!1727191 (= lt!2206976 (choose!40868 (reg!15520 (regOne!30894 r!7292)) lt!2206725 (_1!35693 lt!2206741)))))

(assert (=> d!1727191 (validRegex!6927 (reg!15520 (regOne!30894 r!7292)))))

(assert (=> d!1727191 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1026 (reg!15520 (regOne!30894 r!7292)) lt!2206725 (_1!35693 lt!2206741)) lt!2206976)))

(declare-fun m!6435950 () Bool)

(assert (=> bs!1249961 m!6435950))

(declare-fun m!6435952 () Bool)

(assert (=> bs!1249961 m!6435952))

(declare-fun m!6435954 () Bool)

(assert (=> bs!1249961 m!6435954))

(assert (=> bs!1249961 m!6434826))

(assert (=> b!5410658 d!1727191))

(declare-fun d!1727193 () Bool)

(assert (=> d!1727193 (= (matchR!7376 lt!2206708 (_1!35693 lt!2206741)) (matchRSpec!2294 lt!2206708 (_1!35693 lt!2206741)))))

(declare-fun lt!2206977 () Unit!154286)

(assert (=> d!1727193 (= lt!2206977 (choose!40858 lt!2206708 (_1!35693 lt!2206741)))))

(assert (=> d!1727193 (validRegex!6927 lt!2206708)))

(assert (=> d!1727193 (= (mainMatchTheorem!2294 lt!2206708 (_1!35693 lt!2206741)) lt!2206977)))

(declare-fun bs!1249962 () Bool)

(assert (= bs!1249962 d!1727193))

(assert (=> bs!1249962 m!6434682))

(assert (=> bs!1249962 m!6434828))

(declare-fun m!6435956 () Bool)

(assert (=> bs!1249962 m!6435956))

(assert (=> bs!1249962 m!6435746))

(assert (=> b!5410658 d!1727193))

(declare-fun d!1727195 () Bool)

(assert (=> d!1727195 (= (Exists!2372 lambda!282530) (choose!40866 lambda!282530))))

(declare-fun bs!1249963 () Bool)

(assert (= bs!1249963 d!1727195))

(declare-fun m!6435958 () Bool)

(assert (=> bs!1249963 m!6435958))

(assert (=> b!5410658 d!1727195))

(declare-fun bs!1249964 () Bool)

(declare-fun b!5411812 () Bool)

(assert (= bs!1249964 (and b!5411812 d!1727133)))

(declare-fun lambda!282643 () Int)

(assert (=> bs!1249964 (not (= lambda!282643 lambda!282621))))

(declare-fun bs!1249965 () Bool)

(assert (= bs!1249965 (and b!5411812 d!1727149)))

(assert (=> bs!1249965 (not (= lambda!282643 lambda!282622))))

(declare-fun bs!1249966 () Bool)

(assert (= bs!1249966 (and b!5411812 d!1727191)))

(assert (=> bs!1249966 (not (= lambda!282643 lambda!282641))))

(declare-fun bs!1249967 () Bool)

(assert (= bs!1249967 (and b!5411812 b!5411303)))

(assert (=> bs!1249967 (not (= lambda!282643 lambda!282601))))

(declare-fun bs!1249968 () Bool)

(assert (= bs!1249968 (and b!5411812 b!5410658)))

(assert (=> bs!1249968 (= (and (= (reg!15520 lt!2206708) (reg!15520 (regOne!30894 r!7292))) (= lt!2206708 lt!2206725)) (= lambda!282643 lambda!282531))))

(assert (=> bs!1249968 (not (= lambda!282643 lambda!282530))))

(declare-fun bs!1249969 () Bool)

(assert (= bs!1249969 (and b!5411812 b!5410653)))

(assert (=> bs!1249969 (not (= lambda!282643 lambda!282523))))

(declare-fun bs!1249970 () Bool)

(assert (= bs!1249970 (and b!5411812 b!5411159)))

(assert (=> bs!1249970 (not (= lambda!282643 lambda!282583))))

(declare-fun bs!1249971 () Bool)

(assert (= bs!1249971 (and b!5411812 b!5410672)))

(assert (=> bs!1249971 (not (= lambda!282643 lambda!282527))))

(assert (=> bs!1249966 (not (= lambda!282643 lambda!282642))))

(declare-fun bs!1249972 () Bool)

(assert (= bs!1249972 (and b!5411812 d!1727185)))

(assert (=> bs!1249972 (not (= lambda!282643 lambda!282640))))

(declare-fun bs!1249973 () Bool)

(assert (= bs!1249973 (and b!5411812 d!1727109)))

(assert (=> bs!1249973 (not (= lambda!282643 lambda!282610))))

(declare-fun bs!1249974 () Bool)

(assert (= bs!1249974 (and b!5411812 d!1727183)))

(assert (=> bs!1249974 (not (= lambda!282643 lambda!282638))))

(assert (=> bs!1249964 (not (= lambda!282643 lambda!282620))))

(declare-fun bs!1249975 () Bool)

(assert (= bs!1249975 (and b!5411812 b!5411656)))

(assert (=> bs!1249975 (not (= lambda!282643 lambda!282624))))

(assert (=> bs!1249971 (not (= lambda!282643 lambda!282528))))

(declare-fun bs!1249976 () Bool)

(assert (= bs!1249976 (and b!5411812 b!5411663)))

(assert (=> bs!1249976 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 lt!2206708) (reg!15520 lt!2206757)) (= lt!2206708 lt!2206757)) (= lambda!282643 lambda!282623))))

(assert (=> bs!1249969 (not (= lambda!282643 lambda!282522))))

(declare-fun bs!1249977 () Bool)

(assert (= bs!1249977 (and b!5411812 d!1727111)))

(assert (=> bs!1249977 (not (= lambda!282643 lambda!282616))))

(assert (=> bs!1249977 (not (= lambda!282643 lambda!282615))))

(declare-fun bs!1249978 () Bool)

(assert (= bs!1249978 (and b!5411812 b!5411310)))

(assert (=> bs!1249978 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 lt!2206708) (reg!15520 r!7292)) (= lt!2206708 r!7292)) (= lambda!282643 lambda!282600))))

(assert (=> bs!1249974 (= (and (= (reg!15520 lt!2206708) (reg!15520 (regOne!30894 r!7292))) (= lt!2206708 (Star!15191 (reg!15520 (regOne!30894 r!7292))))) (= lambda!282643 lambda!282639))))

(declare-fun bs!1249979 () Bool)

(assert (= bs!1249979 (and b!5411812 b!5411166)))

(assert (=> bs!1249979 (= (and (= (_1!35693 lt!2206741) s!2326) (= (reg!15520 lt!2206708) (reg!15520 lt!2206753)) (= lt!2206708 lt!2206753)) (= lambda!282643 lambda!282582))))

(assert (=> bs!1249968 (not (= lambda!282643 lambda!282529))))

(assert (=> b!5411812 true))

(assert (=> b!5411812 true))

(declare-fun bs!1249980 () Bool)

(declare-fun b!5411805 () Bool)

(assert (= bs!1249980 (and b!5411805 d!1727133)))

(declare-fun lambda!282644 () Int)

(assert (=> bs!1249980 (= (and (= (_1!35693 lt!2206741) s!2326) (= (regOne!30894 lt!2206708) lt!2206708) (= (regTwo!30894 lt!2206708) (regTwo!30894 r!7292))) (= lambda!282644 lambda!282621))))

(declare-fun bs!1249981 () Bool)

(assert (= bs!1249981 (and b!5411805 d!1727149)))

(assert (=> bs!1249981 (not (= lambda!282644 lambda!282622))))

(declare-fun bs!1249982 () Bool)

(assert (= bs!1249982 (and b!5411805 d!1727191)))

(assert (=> bs!1249982 (not (= lambda!282644 lambda!282641))))

(declare-fun bs!1249983 () Bool)

(assert (= bs!1249983 (and b!5411805 b!5411303)))

(assert (=> bs!1249983 (= (and (= (_1!35693 lt!2206741) s!2326) (= (regOne!30894 lt!2206708) (regOne!30894 r!7292)) (= (regTwo!30894 lt!2206708) (regTwo!30894 r!7292))) (= lambda!282644 lambda!282601))))

(declare-fun bs!1249984 () Bool)

(assert (= bs!1249984 (and b!5411805 b!5410658)))

(assert (=> bs!1249984 (not (= lambda!282644 lambda!282531))))

(assert (=> bs!1249984 (= (and (= (regOne!30894 lt!2206708) (reg!15520 (regOne!30894 r!7292))) (= (regTwo!30894 lt!2206708) lt!2206725)) (= lambda!282644 lambda!282530))))

(declare-fun bs!1249985 () Bool)

(assert (= bs!1249985 (and b!5411805 b!5410653)))

(assert (=> bs!1249985 (= (and (= (_1!35693 lt!2206741) s!2326) (= (regOne!30894 lt!2206708) (regOne!30894 r!7292)) (= (regTwo!30894 lt!2206708) (regTwo!30894 r!7292))) (= lambda!282644 lambda!282523))))

(declare-fun bs!1249986 () Bool)

(assert (= bs!1249986 (and b!5411805 b!5411159)))

(assert (=> bs!1249986 (= (and (= (_1!35693 lt!2206741) s!2326) (= (regOne!30894 lt!2206708) (regOne!30894 lt!2206753)) (= (regTwo!30894 lt!2206708) (regTwo!30894 lt!2206753))) (= lambda!282644 lambda!282583))))

(assert (=> bs!1249982 (= (and (= (regOne!30894 lt!2206708) (reg!15520 (regOne!30894 r!7292))) (= (regTwo!30894 lt!2206708) lt!2206725)) (= lambda!282644 lambda!282642))))

(declare-fun bs!1249987 () Bool)

(assert (= bs!1249987 (and b!5411805 d!1727185)))

(assert (=> bs!1249987 (not (= lambda!282644 lambda!282640))))

(declare-fun bs!1249988 () Bool)

(assert (= bs!1249988 (and b!5411805 d!1727109)))

(assert (=> bs!1249988 (not (= lambda!282644 lambda!282610))))

(declare-fun bs!1249989 () Bool)

(assert (= bs!1249989 (and b!5411805 d!1727183)))

(assert (=> bs!1249989 (not (= lambda!282644 lambda!282638))))

(assert (=> bs!1249980 (not (= lambda!282644 lambda!282620))))

(declare-fun bs!1249990 () Bool)

(assert (= bs!1249990 (and b!5411805 b!5411656)))

(assert (=> bs!1249990 (= (and (= (_1!35693 lt!2206741) s!2326) (= (regOne!30894 lt!2206708) (regOne!30894 lt!2206757)) (= (regTwo!30894 lt!2206708) (regTwo!30894 lt!2206757))) (= lambda!282644 lambda!282624))))

(declare-fun bs!1249991 () Bool)

(assert (= bs!1249991 (and b!5411805 b!5410672)))

(assert (=> bs!1249991 (= (and (= (_1!35693 lt!2206741) s!2326) (= (regOne!30894 lt!2206708) lt!2206708) (= (regTwo!30894 lt!2206708) (regTwo!30894 r!7292))) (= lambda!282644 lambda!282528))))

(declare-fun bs!1249992 () Bool)

(assert (= bs!1249992 (and b!5411805 b!5411663)))

(assert (=> bs!1249992 (not (= lambda!282644 lambda!282623))))

(assert (=> bs!1249985 (not (= lambda!282644 lambda!282522))))

(declare-fun bs!1249993 () Bool)

(assert (= bs!1249993 (and b!5411805 d!1727111)))

(assert (=> bs!1249993 (= (and (= (_1!35693 lt!2206741) s!2326) (= (regOne!30894 lt!2206708) (regOne!30894 r!7292)) (= (regTwo!30894 lt!2206708) (regTwo!30894 r!7292))) (= lambda!282644 lambda!282616))))

(assert (=> bs!1249993 (not (= lambda!282644 lambda!282615))))

(assert (=> bs!1249991 (not (= lambda!282644 lambda!282527))))

(declare-fun bs!1249994 () Bool)

(assert (= bs!1249994 (and b!5411805 b!5411812)))

(assert (=> bs!1249994 (not (= lambda!282644 lambda!282643))))

(declare-fun bs!1249995 () Bool)

(assert (= bs!1249995 (and b!5411805 b!5411310)))

(assert (=> bs!1249995 (not (= lambda!282644 lambda!282600))))

(assert (=> bs!1249989 (not (= lambda!282644 lambda!282639))))

(declare-fun bs!1249996 () Bool)

(assert (= bs!1249996 (and b!5411805 b!5411166)))

(assert (=> bs!1249996 (not (= lambda!282644 lambda!282582))))

(assert (=> bs!1249984 (not (= lambda!282644 lambda!282529))))

(assert (=> b!5411805 true))

(assert (=> b!5411805 true))

(declare-fun b!5411804 () Bool)

(declare-fun e!3354708 () Bool)

(declare-fun e!3354706 () Bool)

(assert (=> b!5411804 (= e!3354708 e!3354706)))

(declare-fun res!2301766 () Bool)

(assert (=> b!5411804 (= res!2301766 (matchRSpec!2294 (regOne!30895 lt!2206708) (_1!35693 lt!2206741)))))

(assert (=> b!5411804 (=> res!2301766 e!3354706)))

(declare-fun e!3354711 () Bool)

(declare-fun call!387262 () Bool)

(assert (=> b!5411805 (= e!3354711 call!387262)))

(declare-fun b!5411807 () Bool)

(declare-fun e!3354707 () Bool)

(declare-fun e!3354709 () Bool)

(assert (=> b!5411807 (= e!3354707 e!3354709)))

(declare-fun res!2301767 () Bool)

(assert (=> b!5411807 (= res!2301767 (not ((_ is EmptyLang!15191) lt!2206708)))))

(assert (=> b!5411807 (=> (not res!2301767) (not e!3354709))))

(declare-fun b!5411808 () Bool)

(declare-fun c!943517 () Bool)

(assert (=> b!5411808 (= c!943517 ((_ is Union!15191) lt!2206708))))

(declare-fun e!3354705 () Bool)

(assert (=> b!5411808 (= e!3354705 e!3354708)))

(declare-fun bm!387256 () Bool)

(declare-fun c!943516 () Bool)

(assert (=> bm!387256 (= call!387262 (Exists!2372 (ite c!943516 lambda!282643 lambda!282644)))))

(declare-fun b!5411809 () Bool)

(assert (=> b!5411809 (= e!3354706 (matchRSpec!2294 (regTwo!30895 lt!2206708) (_1!35693 lt!2206741)))))

(declare-fun bm!387257 () Bool)

(declare-fun call!387261 () Bool)

(assert (=> bm!387257 (= call!387261 (isEmpty!33739 (_1!35693 lt!2206741)))))

(declare-fun b!5411810 () Bool)

(assert (=> b!5411810 (= e!3354705 (= (_1!35693 lt!2206741) (Cons!61748 (c!943211 lt!2206708) Nil!61748)))))

(declare-fun b!5411806 () Bool)

(declare-fun c!943515 () Bool)

(assert (=> b!5411806 (= c!943515 ((_ is ElementMatch!15191) lt!2206708))))

(assert (=> b!5411806 (= e!3354709 e!3354705)))

(declare-fun d!1727197 () Bool)

(declare-fun c!943518 () Bool)

(assert (=> d!1727197 (= c!943518 ((_ is EmptyExpr!15191) lt!2206708))))

(assert (=> d!1727197 (= (matchRSpec!2294 lt!2206708 (_1!35693 lt!2206741)) e!3354707)))

(declare-fun b!5411811 () Bool)

(declare-fun res!2301768 () Bool)

(declare-fun e!3354710 () Bool)

(assert (=> b!5411811 (=> res!2301768 e!3354710)))

(assert (=> b!5411811 (= res!2301768 call!387261)))

(assert (=> b!5411811 (= e!3354711 e!3354710)))

(assert (=> b!5411812 (= e!3354710 call!387262)))

(declare-fun b!5411813 () Bool)

(assert (=> b!5411813 (= e!3354708 e!3354711)))

(assert (=> b!5411813 (= c!943516 ((_ is Star!15191) lt!2206708))))

(declare-fun b!5411814 () Bool)

(assert (=> b!5411814 (= e!3354707 call!387261)))

(assert (= (and d!1727197 c!943518) b!5411814))

(assert (= (and d!1727197 (not c!943518)) b!5411807))

(assert (= (and b!5411807 res!2301767) b!5411806))

(assert (= (and b!5411806 c!943515) b!5411810))

(assert (= (and b!5411806 (not c!943515)) b!5411808))

(assert (= (and b!5411808 c!943517) b!5411804))

(assert (= (and b!5411808 (not c!943517)) b!5411813))

(assert (= (and b!5411804 (not res!2301766)) b!5411809))

(assert (= (and b!5411813 c!943516) b!5411811))

(assert (= (and b!5411813 (not c!943516)) b!5411805))

(assert (= (and b!5411811 (not res!2301768)) b!5411812))

(assert (= (or b!5411812 b!5411805) bm!387256))

(assert (= (or b!5411814 b!5411811) bm!387257))

(declare-fun m!6435960 () Bool)

(assert (=> b!5411804 m!6435960))

(declare-fun m!6435962 () Bool)

(assert (=> bm!387256 m!6435962))

(declare-fun m!6435964 () Bool)

(assert (=> b!5411809 m!6435964))

(assert (=> bm!387257 m!6435784))

(assert (=> b!5410658 d!1727197))

(declare-fun d!1727199 () Bool)

(declare-fun c!943519 () Bool)

(assert (=> d!1727199 (= c!943519 (isEmpty!33739 s!2326))))

(declare-fun e!3354712 () Bool)

(assert (=> d!1727199 (= (matchZipper!1435 z!1189 s!2326) e!3354712)))

(declare-fun b!5411815 () Bool)

(assert (=> b!5411815 (= e!3354712 (nullableZipper!1444 z!1189))))

(declare-fun b!5411816 () Bool)

(assert (=> b!5411816 (= e!3354712 (matchZipper!1435 (derivationStepZipper!1430 z!1189 (head!11605 s!2326)) (tail!10702 s!2326)))))

(assert (= (and d!1727199 c!943519) b!5411815))

(assert (= (and d!1727199 (not c!943519)) b!5411816))

(assert (=> d!1727199 m!6435310))

(declare-fun m!6435966 () Bool)

(assert (=> b!5411815 m!6435966))

(assert (=> b!5411816 m!6435386))

(assert (=> b!5411816 m!6435386))

(declare-fun m!6435968 () Bool)

(assert (=> b!5411816 m!6435968))

(assert (=> b!5411816 m!6435380))

(assert (=> b!5411816 m!6435968))

(assert (=> b!5411816 m!6435380))

(declare-fun m!6435970 () Bool)

(assert (=> b!5411816 m!6435970))

(assert (=> b!5410678 d!1727199))

(declare-fun bs!1249997 () Bool)

(declare-fun d!1727201 () Bool)

(assert (= bs!1249997 (and d!1727201 d!1727161)))

(declare-fun lambda!282645 () Int)

(assert (=> bs!1249997 (= lambda!282645 lambda!282630)))

(declare-fun bs!1249998 () Bool)

(assert (= bs!1249998 (and d!1727201 d!1727127)))

(assert (=> bs!1249998 (= lambda!282645 lambda!282619)))

(declare-fun bs!1249999 () Bool)

(assert (= bs!1249999 (and d!1727201 d!1727163)))

(assert (=> bs!1249999 (= lambda!282645 lambda!282633)))

(declare-fun bs!1250000 () Bool)

(assert (= bs!1250000 (and d!1727201 d!1727159)))

(assert (=> bs!1250000 (= lambda!282645 lambda!282627)))

(declare-fun bs!1250001 () Bool)

(assert (= bs!1250001 (and d!1727201 b!5410650)))

(assert (=> bs!1250001 (= lambda!282645 lambda!282526)))

(declare-fun bs!1250002 () Bool)

(assert (= bs!1250002 (and d!1727201 d!1726963)))

(assert (=> bs!1250002 (= lambda!282645 lambda!282577)))

(assert (=> d!1727201 (= (inv!81224 setElem!35249) (forall!14537 (exprs!5075 setElem!35249) lambda!282645))))

(declare-fun bs!1250003 () Bool)

(assert (= bs!1250003 d!1727201))

(declare-fun m!6435972 () Bool)

(assert (=> bs!1250003 m!6435972))

(assert (=> setNonEmpty!35249 d!1727201))

(declare-fun d!1727203 () Bool)

(declare-fun e!3354715 () Bool)

(assert (=> d!1727203 e!3354715))

(declare-fun res!2301771 () Bool)

(assert (=> d!1727203 (=> (not res!2301771) (not e!3354715))))

(declare-fun lt!2206980 () List!61874)

(declare-fun noDuplicate!1394 (List!61874) Bool)

(assert (=> d!1727203 (= res!2301771 (noDuplicate!1394 lt!2206980))))

(declare-fun choose!40879 ((InoxSet Context!9150)) List!61874)

(assert (=> d!1727203 (= lt!2206980 (choose!40879 z!1189))))

(assert (=> d!1727203 (= (toList!8975 z!1189) lt!2206980)))

(declare-fun b!5411819 () Bool)

(declare-fun content!11081 (List!61874) (InoxSet Context!9150))

(assert (=> b!5411819 (= e!3354715 (= (content!11081 lt!2206980) z!1189))))

(assert (= (and d!1727203 res!2301771) b!5411819))

(declare-fun m!6435974 () Bool)

(assert (=> d!1727203 m!6435974))

(declare-fun m!6435976 () Bool)

(assert (=> d!1727203 m!6435976))

(declare-fun m!6435978 () Bool)

(assert (=> b!5411819 m!6435978))

(assert (=> b!5410657 d!1727203))

(declare-fun b!5411820 () Bool)

(declare-fun e!3354719 () (InoxSet Context!9150))

(assert (=> b!5411820 (= e!3354719 (store ((as const (Array Context!9150 Bool)) false) lt!2206711 true))))

(declare-fun call!387266 () (InoxSet Context!9150))

(declare-fun c!943522 () Bool)

(declare-fun call!387265 () List!61873)

(declare-fun c!943523 () Bool)

(declare-fun bm!387258 () Bool)

(declare-fun c!943520 () Bool)

(assert (=> bm!387258 (= call!387266 (derivationStepZipperDown!639 (ite c!943522 (regOne!30895 (reg!15520 (regOne!30894 r!7292))) (ite c!943520 (regTwo!30894 (reg!15520 (regOne!30894 r!7292))) (ite c!943523 (regOne!30894 (reg!15520 (regOne!30894 r!7292))) (reg!15520 (reg!15520 (regOne!30894 r!7292)))))) (ite (or c!943522 c!943520) lt!2206711 (Context!9151 call!387265)) (h!68196 s!2326)))))

(declare-fun bm!387259 () Bool)

(declare-fun call!387263 () List!61873)

(assert (=> bm!387259 (= call!387265 call!387263)))

(declare-fun bm!387260 () Bool)

(declare-fun call!387268 () (InoxSet Context!9150))

(declare-fun call!387264 () (InoxSet Context!9150))

(assert (=> bm!387260 (= call!387268 call!387264)))

(declare-fun b!5411821 () Bool)

(declare-fun e!3354717 () (InoxSet Context!9150))

(declare-fun e!3354720 () (InoxSet Context!9150))

(assert (=> b!5411821 (= e!3354717 e!3354720)))

(assert (=> b!5411821 (= c!943523 ((_ is Concat!24036) (reg!15520 (regOne!30894 r!7292))))))

(declare-fun bm!387261 () Bool)

(assert (=> bm!387261 (= call!387263 ($colon$colon!1494 (exprs!5075 lt!2206711) (ite (or c!943520 c!943523) (regTwo!30894 (reg!15520 (regOne!30894 r!7292))) (reg!15520 (regOne!30894 r!7292)))))))

(declare-fun b!5411822 () Bool)

(declare-fun e!3354721 () Bool)

(assert (=> b!5411822 (= c!943520 e!3354721)))

(declare-fun res!2301772 () Bool)

(assert (=> b!5411822 (=> (not res!2301772) (not e!3354721))))

(assert (=> b!5411822 (= res!2301772 ((_ is Concat!24036) (reg!15520 (regOne!30894 r!7292))))))

(declare-fun e!3354718 () (InoxSet Context!9150))

(assert (=> b!5411822 (= e!3354718 e!3354717)))

(declare-fun b!5411823 () Bool)

(assert (=> b!5411823 (= e!3354720 call!387268)))

(declare-fun b!5411824 () Bool)

(assert (=> b!5411824 (= e!3354719 e!3354718)))

(assert (=> b!5411824 (= c!943522 ((_ is Union!15191) (reg!15520 (regOne!30894 r!7292))))))

(declare-fun b!5411825 () Bool)

(declare-fun e!3354716 () (InoxSet Context!9150))

(assert (=> b!5411825 (= e!3354716 call!387268)))

(declare-fun d!1727205 () Bool)

(declare-fun c!943524 () Bool)

(assert (=> d!1727205 (= c!943524 (and ((_ is ElementMatch!15191) (reg!15520 (regOne!30894 r!7292))) (= (c!943211 (reg!15520 (regOne!30894 r!7292))) (h!68196 s!2326))))))

(assert (=> d!1727205 (= (derivationStepZipperDown!639 (reg!15520 (regOne!30894 r!7292)) lt!2206711 (h!68196 s!2326)) e!3354719)))

(declare-fun b!5411826 () Bool)

(declare-fun call!387267 () (InoxSet Context!9150))

(assert (=> b!5411826 (= e!3354717 ((_ map or) call!387267 call!387264))))

(declare-fun bm!387262 () Bool)

(assert (=> bm!387262 (= call!387264 call!387266)))

(declare-fun b!5411827 () Bool)

(declare-fun c!943521 () Bool)

(assert (=> b!5411827 (= c!943521 ((_ is Star!15191) (reg!15520 (regOne!30894 r!7292))))))

(assert (=> b!5411827 (= e!3354720 e!3354716)))

(declare-fun b!5411828 () Bool)

(assert (=> b!5411828 (= e!3354721 (nullable!5360 (regOne!30894 (reg!15520 (regOne!30894 r!7292)))))))

(declare-fun bm!387263 () Bool)

(assert (=> bm!387263 (= call!387267 (derivationStepZipperDown!639 (ite c!943522 (regTwo!30895 (reg!15520 (regOne!30894 r!7292))) (regOne!30894 (reg!15520 (regOne!30894 r!7292)))) (ite c!943522 lt!2206711 (Context!9151 call!387263)) (h!68196 s!2326)))))

(declare-fun b!5411829 () Bool)

(assert (=> b!5411829 (= e!3354716 ((as const (Array Context!9150 Bool)) false))))

(declare-fun b!5411830 () Bool)

(assert (=> b!5411830 (= e!3354718 ((_ map or) call!387266 call!387267))))

(assert (= (and d!1727205 c!943524) b!5411820))

(assert (= (and d!1727205 (not c!943524)) b!5411824))

(assert (= (and b!5411824 c!943522) b!5411830))

(assert (= (and b!5411824 (not c!943522)) b!5411822))

(assert (= (and b!5411822 res!2301772) b!5411828))

(assert (= (and b!5411822 c!943520) b!5411826))

(assert (= (and b!5411822 (not c!943520)) b!5411821))

(assert (= (and b!5411821 c!943523) b!5411823))

(assert (= (and b!5411821 (not c!943523)) b!5411827))

(assert (= (and b!5411827 c!943521) b!5411825))

(assert (= (and b!5411827 (not c!943521)) b!5411829))

(assert (= (or b!5411823 b!5411825) bm!387259))

(assert (= (or b!5411823 b!5411825) bm!387260))

(assert (= (or b!5411826 bm!387259) bm!387261))

(assert (= (or b!5411826 bm!387260) bm!387262))

(assert (= (or b!5411830 b!5411826) bm!387263))

(assert (= (or b!5411830 bm!387262) bm!387258))

(declare-fun m!6435980 () Bool)

(assert (=> bm!387261 m!6435980))

(declare-fun m!6435982 () Bool)

(assert (=> bm!387263 m!6435982))

(declare-fun m!6435984 () Bool)

(assert (=> b!5411828 m!6435984))

(assert (=> b!5411820 m!6434720))

(declare-fun m!6435986 () Bool)

(assert (=> bm!387258 m!6435986))

(assert (=> b!5410677 d!1727205))

(declare-fun d!1727207 () Bool)

(assert (=> d!1727207 (= (isEmpty!33737 (t!375096 (exprs!5075 (h!68198 zl!343)))) ((_ is Nil!61749) (t!375096 (exprs!5075 (h!68198 zl!343)))))))

(assert (=> b!5410681 d!1727207))

(declare-fun d!1727209 () Bool)

(declare-fun c!943525 () Bool)

(assert (=> d!1727209 (= c!943525 (isEmpty!33739 (t!375095 s!2326)))))

(declare-fun e!3354722 () Bool)

(assert (=> d!1727209 (= (matchZipper!1435 lt!2206728 (t!375095 s!2326)) e!3354722)))

(declare-fun b!5411831 () Bool)

(assert (=> b!5411831 (= e!3354722 (nullableZipper!1444 lt!2206728))))

(declare-fun b!5411832 () Bool)

(assert (=> b!5411832 (= e!3354722 (matchZipper!1435 (derivationStepZipper!1430 lt!2206728 (head!11605 (t!375095 s!2326))) (tail!10702 (t!375095 s!2326))))))

(assert (= (and d!1727209 c!943525) b!5411831))

(assert (= (and d!1727209 (not c!943525)) b!5411832))

(assert (=> d!1727209 m!6435172))

(declare-fun m!6435988 () Bool)

(assert (=> b!5411831 m!6435988))

(assert (=> b!5411832 m!6435176))

(assert (=> b!5411832 m!6435176))

(declare-fun m!6435990 () Bool)

(assert (=> b!5411832 m!6435990))

(assert (=> b!5411832 m!6435180))

(assert (=> b!5411832 m!6435990))

(assert (=> b!5411832 m!6435180))

(declare-fun m!6435992 () Bool)

(assert (=> b!5411832 m!6435992))

(assert (=> b!5410639 d!1727209))

(declare-fun d!1727211 () Bool)

(declare-fun c!943526 () Bool)

(assert (=> d!1727211 (= c!943526 (isEmpty!33739 s!2326))))

(declare-fun e!3354723 () Bool)

(assert (=> d!1727211 (= (matchZipper!1435 lt!2206739 s!2326) e!3354723)))

(declare-fun b!5411833 () Bool)

(assert (=> b!5411833 (= e!3354723 (nullableZipper!1444 lt!2206739))))

(declare-fun b!5411834 () Bool)

(assert (=> b!5411834 (= e!3354723 (matchZipper!1435 (derivationStepZipper!1430 lt!2206739 (head!11605 s!2326)) (tail!10702 s!2326)))))

(assert (= (and d!1727211 c!943526) b!5411833))

(assert (= (and d!1727211 (not c!943526)) b!5411834))

(assert (=> d!1727211 m!6435310))

(declare-fun m!6435994 () Bool)

(assert (=> b!5411833 m!6435994))

(assert (=> b!5411834 m!6435386))

(assert (=> b!5411834 m!6435386))

(declare-fun m!6435996 () Bool)

(assert (=> b!5411834 m!6435996))

(assert (=> b!5411834 m!6435380))

(assert (=> b!5411834 m!6435996))

(assert (=> b!5411834 m!6435380))

(declare-fun m!6435998 () Bool)

(assert (=> b!5411834 m!6435998))

(assert (=> b!5410639 d!1727211))

(declare-fun e!3354726 () Bool)

(declare-fun d!1727213 () Bool)

(assert (=> d!1727213 (= (matchZipper!1435 ((_ map or) lt!2206710 lt!2206732) (t!375095 s!2326)) e!3354726)))

(declare-fun res!2301775 () Bool)

(assert (=> d!1727213 (=> res!2301775 e!3354726)))

(assert (=> d!1727213 (= res!2301775 (matchZipper!1435 lt!2206710 (t!375095 s!2326)))))

(declare-fun lt!2206983 () Unit!154286)

(declare-fun choose!40880 ((InoxSet Context!9150) (InoxSet Context!9150) List!61872) Unit!154286)

(assert (=> d!1727213 (= lt!2206983 (choose!40880 lt!2206710 lt!2206732 (t!375095 s!2326)))))

(assert (=> d!1727213 (= (lemmaZipperConcatMatchesSameAsBothZippers!428 lt!2206710 lt!2206732 (t!375095 s!2326)) lt!2206983)))

(declare-fun b!5411837 () Bool)

(assert (=> b!5411837 (= e!3354726 (matchZipper!1435 lt!2206732 (t!375095 s!2326)))))

(assert (= (and d!1727213 (not res!2301775)) b!5411837))

(assert (=> d!1727213 m!6434780))

(assert (=> d!1727213 m!6434778))

(declare-fun m!6436000 () Bool)

(assert (=> d!1727213 m!6436000))

(assert (=> b!5411837 m!6434742))

(assert (=> b!5410638 d!1727213))

(assert (=> b!5410638 d!1726941))

(declare-fun d!1727215 () Bool)

(declare-fun c!943527 () Bool)

(assert (=> d!1727215 (= c!943527 (isEmpty!33739 (t!375095 s!2326)))))

(declare-fun e!3354727 () Bool)

(assert (=> d!1727215 (= (matchZipper!1435 ((_ map or) lt!2206710 lt!2206732) (t!375095 s!2326)) e!3354727)))

(declare-fun b!5411838 () Bool)

(assert (=> b!5411838 (= e!3354727 (nullableZipper!1444 ((_ map or) lt!2206710 lt!2206732)))))

(declare-fun b!5411839 () Bool)

(assert (=> b!5411839 (= e!3354727 (matchZipper!1435 (derivationStepZipper!1430 ((_ map or) lt!2206710 lt!2206732) (head!11605 (t!375095 s!2326))) (tail!10702 (t!375095 s!2326))))))

(assert (= (and d!1727215 c!943527) b!5411838))

(assert (= (and d!1727215 (not c!943527)) b!5411839))

(assert (=> d!1727215 m!6435172))

(declare-fun m!6436002 () Bool)

(assert (=> b!5411838 m!6436002))

(assert (=> b!5411839 m!6435176))

(assert (=> b!5411839 m!6435176))

(declare-fun m!6436004 () Bool)

(assert (=> b!5411839 m!6436004))

(assert (=> b!5411839 m!6435180))

(assert (=> b!5411839 m!6436004))

(assert (=> b!5411839 m!6435180))

(declare-fun m!6436006 () Bool)

(assert (=> b!5411839 m!6436006))

(assert (=> b!5410638 d!1727215))

(declare-fun b!5411844 () Bool)

(declare-fun e!3354730 () Bool)

(declare-fun tp!1495736 () Bool)

(declare-fun tp!1495737 () Bool)

(assert (=> b!5411844 (= e!3354730 (and tp!1495736 tp!1495737))))

(assert (=> b!5410679 (= tp!1495666 e!3354730)))

(assert (= (and b!5410679 ((_ is Cons!61749) (exprs!5075 (h!68198 zl!343)))) b!5411844))

(declare-fun b!5411849 () Bool)

(declare-fun e!3354733 () Bool)

(declare-fun tp!1495740 () Bool)

(assert (=> b!5411849 (= e!3354733 (and tp_is_empty!39635 tp!1495740))))

(assert (=> b!5410663 (= tp!1495664 e!3354733)))

(assert (= (and b!5410663 ((_ is Cons!61748) (t!375095 s!2326))) b!5411849))

(declare-fun b!5411860 () Bool)

(declare-fun e!3354736 () Bool)

(assert (=> b!5411860 (= e!3354736 tp_is_empty!39635)))

(assert (=> b!5410668 (= tp!1495669 e!3354736)))

(declare-fun b!5411862 () Bool)

(declare-fun tp!1495755 () Bool)

(assert (=> b!5411862 (= e!3354736 tp!1495755)))

(declare-fun b!5411861 () Bool)

(declare-fun tp!1495752 () Bool)

(declare-fun tp!1495753 () Bool)

(assert (=> b!5411861 (= e!3354736 (and tp!1495752 tp!1495753))))

(declare-fun b!5411863 () Bool)

(declare-fun tp!1495751 () Bool)

(declare-fun tp!1495754 () Bool)

(assert (=> b!5411863 (= e!3354736 (and tp!1495751 tp!1495754))))

(assert (= (and b!5410668 ((_ is ElementMatch!15191) (regOne!30894 r!7292))) b!5411860))

(assert (= (and b!5410668 ((_ is Concat!24036) (regOne!30894 r!7292))) b!5411861))

(assert (= (and b!5410668 ((_ is Star!15191) (regOne!30894 r!7292))) b!5411862))

(assert (= (and b!5410668 ((_ is Union!15191) (regOne!30894 r!7292))) b!5411863))

(declare-fun b!5411864 () Bool)

(declare-fun e!3354737 () Bool)

(assert (=> b!5411864 (= e!3354737 tp_is_empty!39635)))

(assert (=> b!5410668 (= tp!1495673 e!3354737)))

(declare-fun b!5411866 () Bool)

(declare-fun tp!1495760 () Bool)

(assert (=> b!5411866 (= e!3354737 tp!1495760)))

(declare-fun b!5411865 () Bool)

(declare-fun tp!1495757 () Bool)

(declare-fun tp!1495758 () Bool)

(assert (=> b!5411865 (= e!3354737 (and tp!1495757 tp!1495758))))

(declare-fun b!5411867 () Bool)

(declare-fun tp!1495756 () Bool)

(declare-fun tp!1495759 () Bool)

(assert (=> b!5411867 (= e!3354737 (and tp!1495756 tp!1495759))))

(assert (= (and b!5410668 ((_ is ElementMatch!15191) (regTwo!30894 r!7292))) b!5411864))

(assert (= (and b!5410668 ((_ is Concat!24036) (regTwo!30894 r!7292))) b!5411865))

(assert (= (and b!5410668 ((_ is Star!15191) (regTwo!30894 r!7292))) b!5411866))

(assert (= (and b!5410668 ((_ is Union!15191) (regTwo!30894 r!7292))) b!5411867))

(declare-fun b!5411868 () Bool)

(declare-fun e!3354738 () Bool)

(assert (=> b!5411868 (= e!3354738 tp_is_empty!39635)))

(assert (=> b!5410642 (= tp!1495665 e!3354738)))

(declare-fun b!5411870 () Bool)

(declare-fun tp!1495765 () Bool)

(assert (=> b!5411870 (= e!3354738 tp!1495765)))

(declare-fun b!5411869 () Bool)

(declare-fun tp!1495762 () Bool)

(declare-fun tp!1495763 () Bool)

(assert (=> b!5411869 (= e!3354738 (and tp!1495762 tp!1495763))))

(declare-fun b!5411871 () Bool)

(declare-fun tp!1495761 () Bool)

(declare-fun tp!1495764 () Bool)

(assert (=> b!5411871 (= e!3354738 (and tp!1495761 tp!1495764))))

(assert (= (and b!5410642 ((_ is ElementMatch!15191) (regOne!30895 r!7292))) b!5411868))

(assert (= (and b!5410642 ((_ is Concat!24036) (regOne!30895 r!7292))) b!5411869))

(assert (= (and b!5410642 ((_ is Star!15191) (regOne!30895 r!7292))) b!5411870))

(assert (= (and b!5410642 ((_ is Union!15191) (regOne!30895 r!7292))) b!5411871))

(declare-fun b!5411872 () Bool)

(declare-fun e!3354739 () Bool)

(assert (=> b!5411872 (= e!3354739 tp_is_empty!39635)))

(assert (=> b!5410642 (= tp!1495671 e!3354739)))

(declare-fun b!5411874 () Bool)

(declare-fun tp!1495770 () Bool)

(assert (=> b!5411874 (= e!3354739 tp!1495770)))

(declare-fun b!5411873 () Bool)

(declare-fun tp!1495767 () Bool)

(declare-fun tp!1495768 () Bool)

(assert (=> b!5411873 (= e!3354739 (and tp!1495767 tp!1495768))))

(declare-fun b!5411875 () Bool)

(declare-fun tp!1495766 () Bool)

(declare-fun tp!1495769 () Bool)

(assert (=> b!5411875 (= e!3354739 (and tp!1495766 tp!1495769))))

(assert (= (and b!5410642 ((_ is ElementMatch!15191) (regTwo!30895 r!7292))) b!5411872))

(assert (= (and b!5410642 ((_ is Concat!24036) (regTwo!30895 r!7292))) b!5411873))

(assert (= (and b!5410642 ((_ is Star!15191) (regTwo!30895 r!7292))) b!5411874))

(assert (= (and b!5410642 ((_ is Union!15191) (regTwo!30895 r!7292))) b!5411875))

(declare-fun b!5411876 () Bool)

(declare-fun e!3354740 () Bool)

(assert (=> b!5411876 (= e!3354740 tp_is_empty!39635)))

(assert (=> b!5410647 (= tp!1495667 e!3354740)))

(declare-fun b!5411878 () Bool)

(declare-fun tp!1495775 () Bool)

(assert (=> b!5411878 (= e!3354740 tp!1495775)))

(declare-fun b!5411877 () Bool)

(declare-fun tp!1495772 () Bool)

(declare-fun tp!1495773 () Bool)

(assert (=> b!5411877 (= e!3354740 (and tp!1495772 tp!1495773))))

(declare-fun b!5411879 () Bool)

(declare-fun tp!1495771 () Bool)

(declare-fun tp!1495774 () Bool)

(assert (=> b!5411879 (= e!3354740 (and tp!1495771 tp!1495774))))

(assert (= (and b!5410647 ((_ is ElementMatch!15191) (reg!15520 r!7292))) b!5411876))

(assert (= (and b!5410647 ((_ is Concat!24036) (reg!15520 r!7292))) b!5411877))

(assert (= (and b!5410647 ((_ is Star!15191) (reg!15520 r!7292))) b!5411878))

(assert (= (and b!5410647 ((_ is Union!15191) (reg!15520 r!7292))) b!5411879))

(declare-fun condSetEmpty!35255 () Bool)

(assert (=> setNonEmpty!35249 (= condSetEmpty!35255 (= setRest!35249 ((as const (Array Context!9150 Bool)) false)))))

(declare-fun setRes!35255 () Bool)

(assert (=> setNonEmpty!35249 (= tp!1495670 setRes!35255)))

(declare-fun setIsEmpty!35255 () Bool)

(assert (=> setIsEmpty!35255 setRes!35255))

(declare-fun tp!1495781 () Bool)

(declare-fun setNonEmpty!35255 () Bool)

(declare-fun e!3354743 () Bool)

(declare-fun setElem!35255 () Context!9150)

(assert (=> setNonEmpty!35255 (= setRes!35255 (and tp!1495781 (inv!81224 setElem!35255) e!3354743))))

(declare-fun setRest!35255 () (InoxSet Context!9150))

(assert (=> setNonEmpty!35255 (= setRest!35249 ((_ map or) (store ((as const (Array Context!9150 Bool)) false) setElem!35255 true) setRest!35255))))

(declare-fun b!5411884 () Bool)

(declare-fun tp!1495780 () Bool)

(assert (=> b!5411884 (= e!3354743 tp!1495780)))

(assert (= (and setNonEmpty!35249 condSetEmpty!35255) setIsEmpty!35255))

(assert (= (and setNonEmpty!35249 (not condSetEmpty!35255)) setNonEmpty!35255))

(assert (= setNonEmpty!35255 b!5411884))

(declare-fun m!6436008 () Bool)

(assert (=> setNonEmpty!35255 m!6436008))

(declare-fun b!5411885 () Bool)

(declare-fun e!3354744 () Bool)

(declare-fun tp!1495782 () Bool)

(declare-fun tp!1495783 () Bool)

(assert (=> b!5411885 (= e!3354744 (and tp!1495782 tp!1495783))))

(assert (=> b!5410640 (= tp!1495668 e!3354744)))

(assert (= (and b!5410640 ((_ is Cons!61749) (exprs!5075 setElem!35249))) b!5411885))

(declare-fun b!5411893 () Bool)

(declare-fun e!3354750 () Bool)

(declare-fun tp!1495788 () Bool)

(assert (=> b!5411893 (= e!3354750 tp!1495788)))

(declare-fun e!3354749 () Bool)

(declare-fun b!5411892 () Bool)

(declare-fun tp!1495789 () Bool)

(assert (=> b!5411892 (= e!3354749 (and (inv!81224 (h!68198 (t!375097 zl!343))) e!3354750 tp!1495789))))

(assert (=> b!5410644 (= tp!1495672 e!3354749)))

(assert (= b!5411892 b!5411893))

(assert (= (and b!5410644 ((_ is Cons!61750) (t!375097 zl!343))) b!5411892))

(declare-fun m!6436010 () Bool)

(assert (=> b!5411892 m!6436010))

(declare-fun b_lambda!206699 () Bool)

(assert (= b_lambda!206675 (or b!5410669 b_lambda!206699)))

(declare-fun bs!1250004 () Bool)

(declare-fun d!1727217 () Bool)

(assert (= bs!1250004 (and d!1727217 b!5410669)))

(assert (=> bs!1250004 (= (dynLambda!24326 lambda!282524 lt!2206715) (derivationStepZipperUp!563 lt!2206715 (h!68196 s!2326)))))

(assert (=> bs!1250004 m!6434788))

(assert (=> d!1726921 d!1727217))

(declare-fun b_lambda!206701 () Bool)

(assert (= b_lambda!206685 (or b!5410669 b_lambda!206701)))

(declare-fun bs!1250005 () Bool)

(declare-fun d!1727219 () Bool)

(assert (= bs!1250005 (and d!1727219 b!5410669)))

(assert (=> bs!1250005 (= (dynLambda!24326 lambda!282524 (h!68198 zl!343)) (derivationStepZipperUp!563 (h!68198 zl!343) (h!68196 s!2326)))))

(assert (=> bs!1250005 m!6434754))

(assert (=> d!1727049 d!1727219))

(declare-fun b_lambda!206703 () Bool)

(assert (= b_lambda!206677 (or b!5410669 b_lambda!206703)))

(declare-fun bs!1250006 () Bool)

(declare-fun d!1727221 () Bool)

(assert (= bs!1250006 (and d!1727221 b!5410669)))

(assert (=> bs!1250006 (= (dynLambda!24326 lambda!282524 lt!2206711) (derivationStepZipperUp!563 lt!2206711 (h!68196 s!2326)))))

(assert (=> bs!1250006 m!6434718))

(assert (=> d!1726959 d!1727221))

(declare-fun b_lambda!206705 () Bool)

(assert (= b_lambda!206679 (or b!5410669 b_lambda!206705)))

(declare-fun bs!1250007 () Bool)

(declare-fun d!1727223 () Bool)

(assert (= bs!1250007 (and d!1727223 b!5410669)))

(assert (=> bs!1250007 (= (dynLambda!24326 lambda!282524 lt!2206697) (derivationStepZipperUp!563 lt!2206697 (h!68196 s!2326)))))

(assert (=> bs!1250007 m!6434722))

(assert (=> d!1726961 d!1727223))

(declare-fun b_lambda!206707 () Bool)

(assert (= b_lambda!206683 (or b!5410650 b_lambda!206707)))

(declare-fun bs!1250008 () Bool)

(declare-fun d!1727225 () Bool)

(assert (= bs!1250008 (and d!1727225 b!5410650)))

(declare-fun lt!2206984 () Unit!154286)

(assert (=> bs!1250008 (= lt!2206984 (lemmaConcatPreservesForall!216 (exprs!5075 lt!2206697) lt!2206730 lambda!282526))))

(assert (=> bs!1250008 (= (dynLambda!24327 lambda!282525 lt!2206697) (Context!9151 (++!13556 (exprs!5075 lt!2206697) lt!2206730)))))

(declare-fun m!6436012 () Bool)

(assert (=> bs!1250008 m!6436012))

(declare-fun m!6436014 () Bool)

(assert (=> bs!1250008 m!6436014))

(assert (=> d!1727023 d!1727225))

(check-sat (not bm!387231) (not bm!387229) (not b!5411250) (not d!1727129) (not b!5411839) (not b!5411654) (not b!5411703) (not bs!1250004) (not bm!387185) (not b!5411567) (not b!5411873) (not b!5411585) (not d!1727151) (not b!5411524) (not b!5411879) (not b!5411861) (not d!1727157) (not d!1727125) (not b!5411800) (not b!5411796) (not b!5411332) (not b!5411307) (not b!5411692) (not b!5411893) (not d!1726935) (not b!5411628) (not d!1727023) (not d!1727121) (not d!1727109) (not b!5411405) (not b!5411660) (not b_lambda!206703) (not b!5411689) (not b!5411569) (not d!1727185) (not b!5411584) (not b!5411646) (not b!5411849) (not b!5411871) (not b!5411597) (not b!5411831) (not d!1727031) (not d!1727199) (not b!5411081) (not bm!387191) (not d!1727107) (not b!5411733) (not d!1727171) (not b!5411163) (not bm!387244) (not d!1727181) (not d!1727117) (not d!1727187) (not d!1727047) (not d!1727017) (not d!1727155) (not bm!387208) (not b!5411630) (not b!5411604) (not d!1727141) (not b!5411568) (not b!5411734) (not b!5411254) (not b!5411644) (not d!1727113) (not b!5411587) (not b!5411625) (not d!1727161) (not b!5411774) (not d!1727195) (not d!1726941) (not b!5411730) (not d!1727209) (not setNonEmpty!35255) (not d!1727203) (not d!1727177) (not b!5410995) (not d!1726961) (not d!1726921) (not b!5411885) (not b!5411799) (not d!1727077) (not d!1727149) (not bm!387205) (not b!5411866) (not b!5411784) (not b!5411302) (not b!5411695) (not b!5411642) (not b!5411632) (not b!5411875) (not b!5411874) tp_is_empty!39635 (not d!1726951) (not d!1726947) (not d!1727145) (not b!5411694) (not b!5411844) (not d!1727193) (not bm!387186) (not d!1727201) (not b_lambda!206705) (not b!5411619) (not b!5411865) (not b_lambda!206701) (not b!5411819) (not bm!387209) (not b!5411439) (not d!1726963) (not d!1727189) (not d!1727043) (not d!1727159) (not b!5411696) (not bm!387261) (not b!5411867) (not b!5411580) (not b!5411815) (not b!5411761) (not d!1727215) (not d!1727111) (not bm!387192) (not b!5411329) (not b!5411320) (not b!5411319) (not bm!387207) (not b!5411623) (not bm!387246) (not b!5411731) (not b!5411609) (not b!5411158) (not d!1727163) (not b!5411884) (not bm!387248) (not b!5411528) (not b!5411758) (not bm!387263) (not d!1727173) (not b!5411803) (not b!5411809) (not d!1727039) (not b!5411249) (not b!5411816) (not b!5411573) (not bs!1250008) (not bm!387249) (not b!5411263) (not b!5411726) (not bm!387250) (not b!5411837) (not b!5411798) (not bm!387245) (not b!5411655) (not b!5411626) (not b!5411802) (not d!1726907) (not d!1727009) (not b!5411259) (not d!1727175) (not b!5411300) (not d!1726957) (not bm!387247) (not b!5411521) (not b!5411440) (not b!5411832) (not d!1727147) (not b!5411863) (not d!1727165) (not b!5411735) (not b!5411074) (not b!5411617) (not d!1727167) (not b!5411834) (not d!1727183) (not bm!387235) (not b!5411570) (not b!5411668) (not b!5411838) (not b!5411413) (not b!5411773) (not b!5411527) (not b!5411571) (not b!5411732) (not b!5411525) (not b!5411651) (not d!1727123) (not b!5411589) (not d!1727079) (not d!1727049) (not d!1727133) (not b!5411870) (not d!1727139) (not d!1727013) (not d!1727025) (not b!5411322) (not b!5411862) (not d!1727105) (not b!5411072) (not b!5411602) (not d!1727131) (not b!5411607) (not b_lambda!206707) (not b!5411324) (not d!1726985) (not b!5411614) (not b!5411637) (not d!1727051) (not d!1727011) (not b!5411299) (not b!5411757) (not b!5411262) (not b!5411059) (not d!1726925) (not b!5411693) (not b!5411264) (not bm!387226) (not bs!1250005) (not b!5411523) (not b!5411641) (not bm!387256) (not d!1726959) (not b!5411833) (not b!5411437) (not d!1727053) (not b!5411416) (not b!5411418) (not bm!387233) (not b!5410993) (not bm!387232) (not b!5411060) (not b!5411760) (not b!5411828) (not bs!1250007) (not bm!387258) (not d!1727143) (not b!5411575) (not d!1727127) (not b!5411640) (not b!5411728) (not b!5411252) (not b!5411627) (not b!5411083) (not b!5411411) (not b!5411736) (not b!5411622) (not b!5411698) (not d!1727119) (not b!5411603) (not bm!387175) (not d!1727191) (not d!1727135) (not b!5411594) (not bm!387257) (not bm!387252) (not b!5411621) (not b!5411759) (not b!5411763) (not bm!387254) (not bm!387255) (not d!1727211) (not b!5411435) (not b!5411892) (not b!5411804) (not d!1726953) (not b!5411583) (not b!5411877) (not b_lambda!206699) (not bs!1250006) (not b!5411605) (not bm!387251) (not b!5411869) (not d!1727213) (not b!5411878))
(check-sat)
