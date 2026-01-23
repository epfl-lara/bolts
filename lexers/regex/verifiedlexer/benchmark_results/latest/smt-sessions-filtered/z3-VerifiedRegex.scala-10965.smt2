; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!567642 () Bool)

(assert start!567642)

(declare-fun b!5404807 () Bool)

(assert (=> b!5404807 true))

(assert (=> b!5404807 true))

(declare-fun lambda!281712 () Int)

(declare-fun lambda!281711 () Int)

(assert (=> b!5404807 (not (= lambda!281712 lambda!281711))))

(assert (=> b!5404807 true))

(assert (=> b!5404807 true))

(declare-fun b!5404840 () Bool)

(assert (=> b!5404840 true))

(declare-fun b!5404816 () Bool)

(assert (=> b!5404816 true))

(declare-fun bs!1248726 () Bool)

(declare-fun b!5404812 () Bool)

(assert (= bs!1248726 (and b!5404812 b!5404807)))

(declare-datatypes ((C!30624 0))(
  ( (C!30625 (val!25014 Int)) )
))
(declare-datatypes ((Regex!15177 0))(
  ( (ElementMatch!15177 (c!942101 C!30624)) (Concat!24022 (regOne!30866 Regex!15177) (regTwo!30866 Regex!15177)) (EmptyExpr!15177) (Star!15177 (reg!15506 Regex!15177)) (EmptyLang!15177) (Union!15177 (regOne!30867 Regex!15177) (regTwo!30867 Regex!15177)) )
))
(declare-fun r!7292 () Regex!15177)

(declare-fun lt!2203635 () Regex!15177)

(declare-fun lambda!281716 () Int)

(assert (=> bs!1248726 (= (= lt!2203635 (regOne!30866 r!7292)) (= lambda!281716 lambda!281711))))

(assert (=> bs!1248726 (not (= lambda!281716 lambda!281712))))

(assert (=> b!5404812 true))

(assert (=> b!5404812 true))

(assert (=> b!5404812 true))

(declare-fun lambda!281717 () Int)

(assert (=> bs!1248726 (not (= lambda!281717 lambda!281711))))

(assert (=> bs!1248726 (= (= lt!2203635 (regOne!30866 r!7292)) (= lambda!281717 lambda!281712))))

(assert (=> b!5404812 (not (= lambda!281717 lambda!281716))))

(assert (=> b!5404812 true))

(assert (=> b!5404812 true))

(assert (=> b!5404812 true))

(declare-fun b!5404802 () Bool)

(declare-fun res!2298110 () Bool)

(declare-fun e!3350871 () Bool)

(assert (=> b!5404802 (=> res!2298110 e!3350871)))

(declare-datatypes ((List!61830 0))(
  ( (Nil!61706) (Cons!61706 (h!68154 Regex!15177) (t!375053 List!61830)) )
))
(declare-datatypes ((Context!9122 0))(
  ( (Context!9123 (exprs!5061 List!61830)) )
))
(declare-datatypes ((List!61831 0))(
  ( (Nil!61707) (Cons!61707 (h!68155 Context!9122) (t!375054 List!61831)) )
))
(declare-fun zl!343 () List!61831)

(declare-fun isEmpty!33696 (List!61831) Bool)

(assert (=> b!5404802 (= res!2298110 (not (isEmpty!33696 (t!375054 zl!343))))))

(declare-fun setIsEmpty!35189 () Bool)

(declare-fun setRes!35189 () Bool)

(assert (=> setIsEmpty!35189 setRes!35189))

(declare-fun setNonEmpty!35189 () Bool)

(declare-fun e!3350857 () Bool)

(declare-fun setElem!35189 () Context!9122)

(declare-fun tp!1494899 () Bool)

(declare-fun inv!81189 (Context!9122) Bool)

(assert (=> setNonEmpty!35189 (= setRes!35189 (and tp!1494899 (inv!81189 setElem!35189) e!3350857))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9122))

(declare-fun setRest!35189 () (InoxSet Context!9122))

(assert (=> setNonEmpty!35189 (= z!1189 ((_ map or) (store ((as const (Array Context!9122 Bool)) false) setElem!35189 true) setRest!35189))))

(declare-fun b!5404803 () Bool)

(declare-fun e!3350882 () Bool)

(declare-fun tp!1494896 () Bool)

(declare-fun tp!1494904 () Bool)

(assert (=> b!5404803 (= e!3350882 (and tp!1494896 tp!1494904))))

(declare-fun b!5404804 () Bool)

(declare-fun res!2298090 () Bool)

(declare-fun e!3350858 () Bool)

(assert (=> b!5404804 (=> res!2298090 e!3350858)))

(declare-fun lt!2203626 () (InoxSet Context!9122))

(declare-datatypes ((List!61832 0))(
  ( (Nil!61708) (Cons!61708 (h!68156 C!30624) (t!375055 List!61832)) )
))
(declare-datatypes ((tuple2!64752 0))(
  ( (tuple2!64753 (_1!35679 List!61832) (_2!35679 List!61832)) )
))
(declare-fun lt!2203613 () tuple2!64752)

(declare-fun matchZipper!1421 ((InoxSet Context!9122) List!61832) Bool)

(assert (=> b!5404804 (= res!2298090 (not (matchZipper!1421 lt!2203626 (_1!35679 lt!2203613))))))

(declare-fun b!5404805 () Bool)

(declare-fun e!3350869 () Bool)

(declare-fun e!3350881 () Bool)

(assert (=> b!5404805 (= e!3350869 e!3350881)))

(declare-fun res!2298113 () Bool)

(assert (=> b!5404805 (=> res!2298113 e!3350881)))

(declare-fun lt!2203583 () Bool)

(assert (=> b!5404805 (= res!2298113 lt!2203583)))

(declare-fun lt!2203586 () Bool)

(declare-fun lt!2203620 () Regex!15177)

(declare-fun s!2326 () List!61832)

(declare-fun matchRSpec!2280 (Regex!15177 List!61832) Bool)

(assert (=> b!5404805 (= lt!2203586 (matchRSpec!2280 lt!2203620 s!2326))))

(declare-fun matchR!7362 (Regex!15177 List!61832) Bool)

(assert (=> b!5404805 (= lt!2203586 (matchR!7362 lt!2203620 s!2326))))

(declare-datatypes ((Unit!154230 0))(
  ( (Unit!154231) )
))
(declare-fun lt!2203611 () Unit!154230)

(declare-fun mainMatchTheorem!2280 (Regex!15177 List!61832) Unit!154230)

(assert (=> b!5404805 (= lt!2203611 (mainMatchTheorem!2280 lt!2203620 s!2326))))

(declare-fun b!5404806 () Bool)

(declare-fun res!2298111 () Bool)

(assert (=> b!5404806 (=> res!2298111 e!3350881)))

(declare-fun lt!2203638 () Bool)

(assert (=> b!5404806 (= res!2298111 (not lt!2203638))))

(declare-fun e!3350861 () Bool)

(assert (=> b!5404807 (= e!3350871 e!3350861)))

(declare-fun res!2298103 () Bool)

(assert (=> b!5404807 (=> res!2298103 e!3350861)))

(declare-fun lt!2203634 () Bool)

(get-info :version)

(assert (=> b!5404807 (= res!2298103 (or (not (= lt!2203583 lt!2203634)) ((_ is Nil!61708) s!2326)))))

(declare-fun Exists!2358 (Int) Bool)

(assert (=> b!5404807 (= (Exists!2358 lambda!281711) (Exists!2358 lambda!281712))))

(declare-fun lt!2203606 () Unit!154230)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1012 (Regex!15177 Regex!15177 List!61832) Unit!154230)

(assert (=> b!5404807 (= lt!2203606 (lemmaExistCutMatchRandMatchRSpecEquivalent!1012 (regOne!30866 r!7292) (regTwo!30866 r!7292) s!2326))))

(assert (=> b!5404807 (= lt!2203634 (Exists!2358 lambda!281711))))

(declare-datatypes ((Option!15288 0))(
  ( (None!15287) (Some!15287 (v!51316 tuple2!64752)) )
))
(declare-fun isDefined!11991 (Option!15288) Bool)

(declare-fun findConcatSeparation!1702 (Regex!15177 Regex!15177 List!61832 List!61832 List!61832) Option!15288)

(assert (=> b!5404807 (= lt!2203634 (isDefined!11991 (findConcatSeparation!1702 (regOne!30866 r!7292) (regTwo!30866 r!7292) Nil!61708 s!2326 s!2326)))))

(declare-fun lt!2203628 () Unit!154230)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1466 (Regex!15177 Regex!15177 List!61832) Unit!154230)

(assert (=> b!5404807 (= lt!2203628 (lemmaFindConcatSeparationEquivalentToExists!1466 (regOne!30866 r!7292) (regTwo!30866 r!7292) s!2326))))

(declare-fun b!5404808 () Bool)

(declare-fun e!3350856 () Bool)

(declare-fun tp_is_empty!39607 () Bool)

(declare-fun tp!1494900 () Bool)

(assert (=> b!5404808 (= e!3350856 (and tp_is_empty!39607 tp!1494900))))

(declare-fun b!5404809 () Bool)

(declare-fun res!2298094 () Bool)

(declare-fun e!3350862 () Bool)

(assert (=> b!5404809 (=> (not res!2298094) (not e!3350862))))

(declare-fun toList!8961 ((InoxSet Context!9122)) List!61831)

(assert (=> b!5404809 (= res!2298094 (= (toList!8961 z!1189) zl!343))))

(declare-fun b!5404810 () Bool)

(declare-fun e!3350865 () Bool)

(declare-fun e!3350872 () Bool)

(assert (=> b!5404810 (= e!3350865 e!3350872)))

(declare-fun res!2298107 () Bool)

(assert (=> b!5404810 (=> res!2298107 e!3350872)))

(declare-fun lt!2203627 () Regex!15177)

(assert (=> b!5404810 (= res!2298107 (not (= r!7292 lt!2203627)))))

(declare-fun lt!2203629 () Regex!15177)

(assert (=> b!5404810 (= lt!2203627 (Concat!24022 lt!2203629 (regTwo!30866 r!7292)))))

(declare-fun b!5404811 () Bool)

(declare-fun e!3350880 () Unit!154230)

(declare-fun Unit!154232 () Unit!154230)

(assert (=> b!5404811 (= e!3350880 Unit!154232)))

(declare-fun lt!2203632 () Unit!154230)

(declare-fun lt!2203622 () (InoxSet Context!9122))

(declare-fun lt!2203610 () (InoxSet Context!9122))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!414 ((InoxSet Context!9122) (InoxSet Context!9122) List!61832) Unit!154230)

(assert (=> b!5404811 (= lt!2203632 (lemmaZipperConcatMatchesSameAsBothZippers!414 lt!2203622 lt!2203610 (t!375055 s!2326)))))

(declare-fun res!2298095 () Bool)

(assert (=> b!5404811 (= res!2298095 (matchZipper!1421 lt!2203622 (t!375055 s!2326)))))

(declare-fun e!3350878 () Bool)

(assert (=> b!5404811 (=> res!2298095 e!3350878)))

(assert (=> b!5404811 (= (matchZipper!1421 ((_ map or) lt!2203622 lt!2203610) (t!375055 s!2326)) e!3350878)))

(declare-fun e!3350863 () Bool)

(assert (=> b!5404812 (= e!3350858 e!3350863)))

(declare-fun res!2298121 () Bool)

(assert (=> b!5404812 (=> res!2298121 e!3350863)))

(declare-fun validRegex!6913 (Regex!15177) Bool)

(assert (=> b!5404812 (= res!2298121 (not (validRegex!6913 lt!2203635)))))

(assert (=> b!5404812 (= (Exists!2358 lambda!281716) (Exists!2358 lambda!281717))))

(declare-fun lt!2203600 () Unit!154230)

(assert (=> b!5404812 (= lt!2203600 (lemmaExistCutMatchRandMatchRSpecEquivalent!1012 lt!2203635 (regTwo!30866 r!7292) s!2326))))

(assert (=> b!5404812 (= (isDefined!11991 (findConcatSeparation!1702 lt!2203635 (regTwo!30866 r!7292) Nil!61708 s!2326 s!2326)) (Exists!2358 lambda!281716))))

(declare-fun lt!2203636 () Unit!154230)

(assert (=> b!5404812 (= lt!2203636 (lemmaFindConcatSeparationEquivalentToExists!1466 lt!2203635 (regTwo!30866 r!7292) s!2326))))

(declare-fun lt!2203584 () Regex!15177)

(assert (=> b!5404812 (matchRSpec!2280 lt!2203584 s!2326)))

(declare-fun lt!2203633 () Unit!154230)

(assert (=> b!5404812 (= lt!2203633 (mainMatchTheorem!2280 lt!2203584 s!2326))))

(assert (=> b!5404812 (matchR!7362 lt!2203584 s!2326)))

(assert (=> b!5404812 (= lt!2203584 (Concat!24022 lt!2203635 (regTwo!30866 r!7292)))))

(assert (=> b!5404812 (= lt!2203635 (Concat!24022 (reg!15506 (regOne!30866 r!7292)) lt!2203629))))

(declare-fun lt!2203607 () Unit!154230)

(declare-fun lemmaConcatAssociative!30 (Regex!15177 Regex!15177 Regex!15177 List!61832) Unit!154230)

(assert (=> b!5404812 (= lt!2203607 (lemmaConcatAssociative!30 (reg!15506 (regOne!30866 r!7292)) lt!2203629 (regTwo!30866 r!7292) s!2326))))

(declare-fun e!3350876 () Bool)

(assert (=> b!5404812 e!3350876))

(declare-fun res!2298099 () Bool)

(assert (=> b!5404812 (=> (not res!2298099) (not e!3350876))))

(declare-fun lt!2203601 () List!61832)

(assert (=> b!5404812 (= res!2298099 (matchR!7362 lt!2203620 lt!2203601))))

(declare-fun lt!2203616 () Unit!154230)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!200 (Regex!15177 Regex!15177 List!61832 List!61832) Unit!154230)

(assert (=> b!5404812 (= lt!2203616 (lemmaTwoRegexMatchThenConcatMatchesConcatString!200 (reg!15506 (regOne!30866 r!7292)) lt!2203627 (_1!35679 lt!2203613) (_2!35679 lt!2203613)))))

(assert (=> b!5404812 (matchR!7362 lt!2203627 (_2!35679 lt!2203613))))

(declare-fun lt!2203614 () List!61831)

(declare-fun lt!2203605 () (InoxSet Context!9122))

(declare-fun lt!2203593 () Unit!154230)

(declare-fun theoremZipperRegexEquiv!491 ((InoxSet Context!9122) List!61831 Regex!15177 List!61832) Unit!154230)

(assert (=> b!5404812 (= lt!2203593 (theoremZipperRegexEquiv!491 lt!2203605 lt!2203614 lt!2203627 (_2!35679 lt!2203613)))))

(assert (=> b!5404812 (matchR!7362 (reg!15506 (regOne!30866 r!7292)) (_1!35679 lt!2203613))))

(declare-fun lt!2203619 () Unit!154230)

(declare-fun lt!2203595 () List!61831)

(assert (=> b!5404812 (= lt!2203619 (theoremZipperRegexEquiv!491 lt!2203626 lt!2203595 (reg!15506 (regOne!30866 r!7292)) (_1!35679 lt!2203613)))))

(declare-fun lt!2203612 () List!61830)

(declare-fun lt!2203637 () List!61830)

(declare-fun ++!13527 (List!61830 List!61830) List!61830)

(assert (=> b!5404812 (matchZipper!1421 (store ((as const (Array Context!9122 Bool)) false) (Context!9123 (++!13527 lt!2203612 lt!2203637)) true) lt!2203601)))

(declare-fun lambda!281715 () Int)

(declare-fun lt!2203609 () Unit!154230)

(declare-fun lemmaConcatPreservesForall!202 (List!61830 List!61830 Int) Unit!154230)

(assert (=> b!5404812 (= lt!2203609 (lemmaConcatPreservesForall!202 lt!2203612 lt!2203637 lambda!281715))))

(declare-fun lt!2203624 () Context!9122)

(declare-fun lt!2203602 () Unit!154230)

(declare-fun lt!2203621 () Context!9122)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!50 (Context!9122 Context!9122 List!61832 List!61832) Unit!154230)

(assert (=> b!5404812 (= lt!2203602 (lemmaConcatenateContextMatchesConcatOfStrings!50 lt!2203624 lt!2203621 (_1!35679 lt!2203613) (_2!35679 lt!2203613)))))

(declare-fun tp!1494901 () Bool)

(declare-fun e!3350864 () Bool)

(declare-fun b!5404813 () Bool)

(declare-fun e!3350873 () Bool)

(assert (=> b!5404813 (= e!3350873 (and (inv!81189 (h!68155 zl!343)) e!3350864 tp!1494901))))

(declare-fun b!5404814 () Bool)

(assert (=> b!5404814 (= e!3350876 lt!2203586)))

(declare-fun b!5404815 () Bool)

(declare-fun res!2298105 () Bool)

(assert (=> b!5404815 (=> res!2298105 e!3350861)))

(declare-fun isEmpty!33697 (List!61830) Bool)

(assert (=> b!5404815 (= res!2298105 (isEmpty!33697 (t!375053 (exprs!5061 (h!68155 zl!343)))))))

(declare-fun e!3350875 () Bool)

(declare-fun e!3350859 () Bool)

(assert (=> b!5404816 (= e!3350875 e!3350859)))

(declare-fun res!2298102 () Bool)

(assert (=> b!5404816 (=> res!2298102 e!3350859)))

(declare-fun lt!2203630 () (InoxSet Context!9122))

(declare-fun appendTo!36 ((InoxSet Context!9122) Context!9122) (InoxSet Context!9122))

(assert (=> b!5404816 (= res!2298102 (not (= (appendTo!36 lt!2203626 lt!2203621) lt!2203630)))))

(declare-fun lambda!281714 () Int)

(declare-fun map!14150 ((InoxSet Context!9122) Int) (InoxSet Context!9122))

(assert (=> b!5404816 (= (map!14150 lt!2203626 lambda!281714) (store ((as const (Array Context!9122 Bool)) false) (Context!9123 (++!13527 lt!2203612 lt!2203637)) true))))

(declare-fun lt!2203596 () Unit!154230)

(assert (=> b!5404816 (= lt!2203596 (lemmaConcatPreservesForall!202 lt!2203612 lt!2203637 lambda!281715))))

(declare-fun lt!2203594 () Unit!154230)

(declare-fun lemmaMapOnSingletonSet!36 ((InoxSet Context!9122) Context!9122 Int) Unit!154230)

(assert (=> b!5404816 (= lt!2203594 (lemmaMapOnSingletonSet!36 lt!2203626 lt!2203624 lambda!281714))))

(declare-fun b!5404817 () Bool)

(declare-fun res!2298096 () Bool)

(assert (=> b!5404817 (=> res!2298096 e!3350871)))

(declare-fun generalisedConcat!846 (List!61830) Regex!15177)

(assert (=> b!5404817 (= res!2298096 (not (= r!7292 (generalisedConcat!846 (exprs!5061 (h!68155 zl!343))))))))

(declare-fun b!5404818 () Bool)

(declare-fun res!2298114 () Bool)

(assert (=> b!5404818 (=> res!2298114 e!3350881)))

(assert (=> b!5404818 (= res!2298114 (not (matchZipper!1421 z!1189 s!2326)))))

(declare-fun b!5404819 () Bool)

(declare-fun e!3350879 () Bool)

(assert (=> b!5404819 (= e!3350879 (not (matchZipper!1421 lt!2203610 (t!375055 s!2326))))))

(declare-fun b!5404820 () Bool)

(declare-fun res!2298093 () Bool)

(assert (=> b!5404820 (=> res!2298093 e!3350875)))

(declare-fun lt!2203592 () Bool)

(declare-fun lt!2203587 () Bool)

(assert (=> b!5404820 (= res!2298093 (or (not lt!2203592) (not lt!2203587)))))

(declare-fun b!5404821 () Bool)

(declare-fun e!3350867 () Bool)

(assert (=> b!5404821 (= e!3350872 e!3350867)))

(declare-fun res!2298097 () Bool)

(assert (=> b!5404821 (=> res!2298097 e!3350867)))

(declare-fun lt!2203623 () Context!9122)

(declare-fun unfocusZipper!919 (List!61831) Regex!15177)

(assert (=> b!5404821 (= res!2298097 (not (= (unfocusZipper!919 (Cons!61707 lt!2203623 Nil!61707)) lt!2203620)))))

(assert (=> b!5404821 (= lt!2203620 (Concat!24022 (reg!15506 (regOne!30866 r!7292)) lt!2203627))))

(declare-fun b!5404822 () Bool)

(assert (=> b!5404822 (= e!3350882 tp_is_empty!39607)))

(declare-fun b!5404823 () Bool)

(assert (=> b!5404823 (= e!3350878 (matchZipper!1421 lt!2203610 (t!375055 s!2326)))))

(declare-fun b!5404824 () Bool)

(declare-fun res!2298088 () Bool)

(assert (=> b!5404824 (=> res!2298088 e!3350858)))

(assert (=> b!5404824 (= res!2298088 (not (matchZipper!1421 lt!2203605 (_2!35679 lt!2203613))))))

(declare-fun b!5404825 () Bool)

(assert (=> b!5404825 (= e!3350881 e!3350875)))

(declare-fun res!2298109 () Bool)

(assert (=> b!5404825 (=> res!2298109 e!3350875)))

(assert (=> b!5404825 (= res!2298109 e!3350879)))

(declare-fun res!2298098 () Bool)

(assert (=> b!5404825 (=> (not res!2298098) (not e!3350879))))

(assert (=> b!5404825 (= res!2298098 (not lt!2203592))))

(assert (=> b!5404825 (= lt!2203592 (matchZipper!1421 lt!2203622 (t!375055 s!2326)))))

(declare-fun b!5404826 () Bool)

(declare-fun e!3350874 () Bool)

(declare-fun e!3350866 () Bool)

(assert (=> b!5404826 (= e!3350874 e!3350866)))

(declare-fun res!2298104 () Bool)

(assert (=> b!5404826 (=> res!2298104 e!3350866)))

(declare-fun lt!2203585 () (InoxSet Context!9122))

(declare-fun lt!2203631 () (InoxSet Context!9122))

(assert (=> b!5404826 (= res!2298104 (not (= lt!2203585 lt!2203631)))))

(declare-fun lambda!281713 () Int)

(declare-fun flatMap!904 ((InoxSet Context!9122) Int) (InoxSet Context!9122))

(declare-fun derivationStepZipperUp!549 (Context!9122 C!30624) (InoxSet Context!9122))

(assert (=> b!5404826 (= (flatMap!904 lt!2203630 lambda!281713) (derivationStepZipperUp!549 lt!2203623 (h!68156 s!2326)))))

(declare-fun lt!2203617 () Unit!154230)

(declare-fun lemmaFlatMapOnSingletonSet!436 ((InoxSet Context!9122) Context!9122 Int) Unit!154230)

(assert (=> b!5404826 (= lt!2203617 (lemmaFlatMapOnSingletonSet!436 lt!2203630 lt!2203623 lambda!281713))))

(declare-fun lt!2203603 () (InoxSet Context!9122))

(assert (=> b!5404826 (= lt!2203603 (derivationStepZipperUp!549 lt!2203623 (h!68156 s!2326)))))

(declare-fun derivationStepZipper!1416 ((InoxSet Context!9122) C!30624) (InoxSet Context!9122))

(assert (=> b!5404826 (= lt!2203585 (derivationStepZipper!1416 lt!2203630 (h!68156 s!2326)))))

(assert (=> b!5404826 (= lt!2203630 (store ((as const (Array Context!9122 Bool)) false) lt!2203623 true))))

(assert (=> b!5404826 (= lt!2203623 (Context!9123 (Cons!61706 (reg!15506 (regOne!30866 r!7292)) lt!2203637)))))

(declare-fun b!5404827 () Bool)

(declare-fun tp!1494905 () Bool)

(assert (=> b!5404827 (= e!3350857 tp!1494905)))

(declare-fun b!5404828 () Bool)

(declare-fun e!3350870 () Bool)

(assert (=> b!5404828 (= e!3350870 e!3350869)))

(declare-fun res!2298091 () Bool)

(assert (=> b!5404828 (=> res!2298091 e!3350869)))

(assert (=> b!5404828 (= res!2298091 (not (= (unfocusZipper!919 lt!2203614) lt!2203627)))))

(assert (=> b!5404828 (= lt!2203614 (Cons!61707 lt!2203621 Nil!61707))))

(declare-fun b!5404829 () Bool)

(declare-fun e!3350868 () Bool)

(assert (=> b!5404829 (= e!3350868 (not e!3350871))))

(declare-fun res!2298116 () Bool)

(assert (=> b!5404829 (=> res!2298116 e!3350871)))

(assert (=> b!5404829 (= res!2298116 (not ((_ is Cons!61707) zl!343)))))

(assert (=> b!5404829 (= lt!2203583 (matchRSpec!2280 r!7292 s!2326))))

(assert (=> b!5404829 (= lt!2203583 (matchR!7362 r!7292 s!2326))))

(declare-fun lt!2203604 () Unit!154230)

(assert (=> b!5404829 (= lt!2203604 (mainMatchTheorem!2280 r!7292 s!2326))))

(declare-fun b!5404830 () Bool)

(declare-fun res!2298108 () Bool)

(assert (=> b!5404830 (=> res!2298108 e!3350871)))

(declare-fun generalisedUnion!1106 (List!61830) Regex!15177)

(declare-fun unfocusZipperList!619 (List!61831) List!61830)

(assert (=> b!5404830 (= res!2298108 (not (= r!7292 (generalisedUnion!1106 (unfocusZipperList!619 zl!343)))))))

(declare-fun b!5404831 () Bool)

(assert (=> b!5404831 (= e!3350867 e!3350870)))

(declare-fun res!2298117 () Bool)

(assert (=> b!5404831 (=> res!2298117 e!3350870)))

(assert (=> b!5404831 (= res!2298117 (not (= (unfocusZipper!919 lt!2203595) (reg!15506 (regOne!30866 r!7292)))))))

(assert (=> b!5404831 (= lt!2203595 (Cons!61707 lt!2203624 Nil!61707))))

(assert (=> b!5404831 (= (flatMap!904 lt!2203605 lambda!281713) (derivationStepZipperUp!549 lt!2203621 (h!68156 s!2326)))))

(declare-fun lt!2203589 () Unit!154230)

(assert (=> b!5404831 (= lt!2203589 (lemmaFlatMapOnSingletonSet!436 lt!2203605 lt!2203621 lambda!281713))))

(assert (=> b!5404831 (= (flatMap!904 lt!2203626 lambda!281713) (derivationStepZipperUp!549 lt!2203624 (h!68156 s!2326)))))

(declare-fun lt!2203599 () Unit!154230)

(assert (=> b!5404831 (= lt!2203599 (lemmaFlatMapOnSingletonSet!436 lt!2203626 lt!2203624 lambda!281713))))

(declare-fun lt!2203588 () (InoxSet Context!9122))

(assert (=> b!5404831 (= lt!2203588 (derivationStepZipperUp!549 lt!2203621 (h!68156 s!2326)))))

(declare-fun lt!2203615 () (InoxSet Context!9122))

(assert (=> b!5404831 (= lt!2203615 (derivationStepZipperUp!549 lt!2203624 (h!68156 s!2326)))))

(assert (=> b!5404831 (= lt!2203605 (store ((as const (Array Context!9122 Bool)) false) lt!2203621 true))))

(assert (=> b!5404831 (= lt!2203626 (store ((as const (Array Context!9122 Bool)) false) lt!2203624 true))))

(assert (=> b!5404831 (= lt!2203624 (Context!9123 lt!2203612))))

(assert (=> b!5404831 (= lt!2203612 (Cons!61706 (reg!15506 (regOne!30866 r!7292)) Nil!61706))))

(declare-fun b!5404832 () Bool)

(assert (=> b!5404832 (= e!3350866 e!3350865)))

(declare-fun res!2298120 () Bool)

(assert (=> b!5404832 (=> res!2298120 e!3350865)))

(assert (=> b!5404832 (= res!2298120 (not (= lt!2203587 (matchZipper!1421 lt!2203585 (t!375055 s!2326)))))))

(assert (=> b!5404832 (= lt!2203587 (matchZipper!1421 lt!2203630 s!2326))))

(declare-fun b!5404833 () Bool)

(declare-fun tp!1494897 () Bool)

(declare-fun tp!1494903 () Bool)

(assert (=> b!5404833 (= e!3350882 (and tp!1494897 tp!1494903))))

(declare-fun b!5404834 () Bool)

(declare-fun res!2298118 () Bool)

(assert (=> b!5404834 (=> res!2298118 e!3350871)))

(assert (=> b!5404834 (= res!2298118 (not ((_ is Cons!61706) (exprs!5061 (h!68155 zl!343)))))))

(declare-fun b!5404835 () Bool)

(assert (=> b!5404835 (= e!3350859 e!3350858)))

(declare-fun res!2298106 () Bool)

(assert (=> b!5404835 (=> res!2298106 e!3350858)))

(assert (=> b!5404835 (= res!2298106 (not (= s!2326 lt!2203601)))))

(declare-fun ++!13528 (List!61832 List!61832) List!61832)

(assert (=> b!5404835 (= lt!2203601 (++!13528 (_1!35679 lt!2203613) (_2!35679 lt!2203613)))))

(declare-fun lt!2203598 () Option!15288)

(declare-fun get!21268 (Option!15288) tuple2!64752)

(assert (=> b!5404835 (= lt!2203613 (get!21268 lt!2203598))))

(assert (=> b!5404835 (isDefined!11991 lt!2203598)))

(declare-fun findConcatSeparationZippers!34 ((InoxSet Context!9122) (InoxSet Context!9122) List!61832 List!61832 List!61832) Option!15288)

(assert (=> b!5404835 (= lt!2203598 (findConcatSeparationZippers!34 lt!2203626 lt!2203605 Nil!61708 s!2326 s!2326))))

(declare-fun lt!2203608 () Unit!154230)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!34 ((InoxSet Context!9122) Context!9122 List!61832) Unit!154230)

(assert (=> b!5404835 (= lt!2203608 (lemmaConcatZipperMatchesStringThenFindConcatDefined!34 lt!2203626 lt!2203621 s!2326))))

(declare-fun b!5404836 () Bool)

(declare-fun res!2298087 () Bool)

(assert (=> b!5404836 (=> res!2298087 e!3350865)))

(declare-fun lt!2203618 () Regex!15177)

(assert (=> b!5404836 (= res!2298087 (not (= lt!2203618 r!7292)))))

(declare-fun b!5404837 () Bool)

(declare-fun e!3350877 () Bool)

(assert (=> b!5404837 (= e!3350877 e!3350874)))

(declare-fun res!2298101 () Bool)

(assert (=> b!5404837 (=> res!2298101 e!3350874)))

(assert (=> b!5404837 (= res!2298101 (not (= lt!2203622 lt!2203631)))))

(declare-fun derivationStepZipperDown!625 (Regex!15177 Context!9122 C!30624) (InoxSet Context!9122))

(assert (=> b!5404837 (= lt!2203631 (derivationStepZipperDown!625 (reg!15506 (regOne!30866 r!7292)) lt!2203621 (h!68156 s!2326)))))

(assert (=> b!5404837 (= lt!2203621 (Context!9123 lt!2203637))))

(assert (=> b!5404837 (= lt!2203637 (Cons!61706 lt!2203629 (t!375053 (exprs!5061 (h!68155 zl!343)))))))

(assert (=> b!5404837 (= lt!2203629 (Star!15177 (reg!15506 (regOne!30866 r!7292))))))

(declare-fun b!5404838 () Bool)

(declare-fun tp!1494902 () Bool)

(assert (=> b!5404838 (= e!3350864 tp!1494902)))

(declare-fun b!5404839 () Bool)

(declare-fun res!2298119 () Bool)

(assert (=> b!5404839 (=> res!2298119 e!3350877)))

(declare-fun e!3350860 () Bool)

(assert (=> b!5404839 (= res!2298119 e!3350860)))

(declare-fun res!2298112 () Bool)

(assert (=> b!5404839 (=> (not res!2298112) (not e!3350860))))

(assert (=> b!5404839 (= res!2298112 ((_ is Concat!24022) (regOne!30866 r!7292)))))

(assert (=> b!5404840 (= e!3350861 e!3350877)))

(declare-fun res!2298089 () Bool)

(assert (=> b!5404840 (=> res!2298089 e!3350877)))

(assert (=> b!5404840 (= res!2298089 (or (and ((_ is ElementMatch!15177) (regOne!30866 r!7292)) (= (c!942101 (regOne!30866 r!7292)) (h!68156 s!2326))) ((_ is Union!15177) (regOne!30866 r!7292))))))

(declare-fun lt!2203597 () Unit!154230)

(assert (=> b!5404840 (= lt!2203597 e!3350880)))

(declare-fun c!942100 () Bool)

(assert (=> b!5404840 (= c!942100 lt!2203638)))

(declare-fun nullable!5346 (Regex!15177) Bool)

(assert (=> b!5404840 (= lt!2203638 (nullable!5346 (h!68154 (exprs!5061 (h!68155 zl!343)))))))

(assert (=> b!5404840 (= (flatMap!904 z!1189 lambda!281713) (derivationStepZipperUp!549 (h!68155 zl!343) (h!68156 s!2326)))))

(declare-fun lt!2203625 () Unit!154230)

(assert (=> b!5404840 (= lt!2203625 (lemmaFlatMapOnSingletonSet!436 z!1189 (h!68155 zl!343) lambda!281713))))

(declare-fun lt!2203591 () Context!9122)

(assert (=> b!5404840 (= lt!2203610 (derivationStepZipperUp!549 lt!2203591 (h!68156 s!2326)))))

(assert (=> b!5404840 (= lt!2203622 (derivationStepZipperDown!625 (h!68154 (exprs!5061 (h!68155 zl!343))) lt!2203591 (h!68156 s!2326)))))

(assert (=> b!5404840 (= lt!2203591 (Context!9123 (t!375053 (exprs!5061 (h!68155 zl!343)))))))

(declare-fun lt!2203590 () (InoxSet Context!9122))

(assert (=> b!5404840 (= lt!2203590 (derivationStepZipperUp!549 (Context!9123 (Cons!61706 (h!68154 (exprs!5061 (h!68155 zl!343))) (t!375053 (exprs!5061 (h!68155 zl!343))))) (h!68156 s!2326)))))

(declare-fun res!2298115 () Bool)

(assert (=> start!567642 (=> (not res!2298115) (not e!3350862))))

(assert (=> start!567642 (= res!2298115 (validRegex!6913 r!7292))))

(assert (=> start!567642 e!3350862))

(assert (=> start!567642 e!3350882))

(declare-fun condSetEmpty!35189 () Bool)

(assert (=> start!567642 (= condSetEmpty!35189 (= z!1189 ((as const (Array Context!9122 Bool)) false)))))

(assert (=> start!567642 setRes!35189))

(assert (=> start!567642 e!3350873))

(assert (=> start!567642 e!3350856))

(declare-fun b!5404841 () Bool)

(assert (=> b!5404841 (= e!3350860 (nullable!5346 (regOne!30866 (regOne!30866 r!7292))))))

(declare-fun b!5404842 () Bool)

(declare-fun res!2298086 () Bool)

(assert (=> b!5404842 (=> res!2298086 e!3350877)))

(assert (=> b!5404842 (= res!2298086 (or ((_ is Concat!24022) (regOne!30866 r!7292)) (not ((_ is Star!15177) (regOne!30866 r!7292)))))))

(declare-fun b!5404843 () Bool)

(declare-fun Unit!154233 () Unit!154230)

(assert (=> b!5404843 (= e!3350880 Unit!154233)))

(declare-fun b!5404844 () Bool)

(declare-fun tp!1494898 () Bool)

(assert (=> b!5404844 (= e!3350882 tp!1494898)))

(declare-fun b!5404845 () Bool)

(assert (=> b!5404845 (= e!3350862 e!3350868)))

(declare-fun res!2298100 () Bool)

(assert (=> b!5404845 (=> (not res!2298100) (not e!3350868))))

(assert (=> b!5404845 (= res!2298100 (= r!7292 lt!2203618))))

(assert (=> b!5404845 (= lt!2203618 (unfocusZipper!919 zl!343))))

(declare-fun b!5404846 () Bool)

(declare-fun res!2298092 () Bool)

(assert (=> b!5404846 (=> res!2298092 e!3350871)))

(assert (=> b!5404846 (= res!2298092 (or ((_ is EmptyExpr!15177) r!7292) ((_ is EmptyLang!15177) r!7292) ((_ is ElementMatch!15177) r!7292) ((_ is Union!15177) r!7292) (not ((_ is Concat!24022) r!7292))))))

(declare-fun b!5404847 () Bool)

(assert (=> b!5404847 (= e!3350863 (validRegex!6913 (regTwo!30866 r!7292)))))

(assert (= (and start!567642 res!2298115) b!5404809))

(assert (= (and b!5404809 res!2298094) b!5404845))

(assert (= (and b!5404845 res!2298100) b!5404829))

(assert (= (and b!5404829 (not res!2298116)) b!5404802))

(assert (= (and b!5404802 (not res!2298110)) b!5404817))

(assert (= (and b!5404817 (not res!2298096)) b!5404834))

(assert (= (and b!5404834 (not res!2298118)) b!5404830))

(assert (= (and b!5404830 (not res!2298108)) b!5404846))

(assert (= (and b!5404846 (not res!2298092)) b!5404807))

(assert (= (and b!5404807 (not res!2298103)) b!5404815))

(assert (= (and b!5404815 (not res!2298105)) b!5404840))

(assert (= (and b!5404840 c!942100) b!5404811))

(assert (= (and b!5404840 (not c!942100)) b!5404843))

(assert (= (and b!5404811 (not res!2298095)) b!5404823))

(assert (= (and b!5404840 (not res!2298089)) b!5404839))

(assert (= (and b!5404839 res!2298112) b!5404841))

(assert (= (and b!5404839 (not res!2298119)) b!5404842))

(assert (= (and b!5404842 (not res!2298086)) b!5404837))

(assert (= (and b!5404837 (not res!2298101)) b!5404826))

(assert (= (and b!5404826 (not res!2298104)) b!5404832))

(assert (= (and b!5404832 (not res!2298120)) b!5404836))

(assert (= (and b!5404836 (not res!2298087)) b!5404810))

(assert (= (and b!5404810 (not res!2298107)) b!5404821))

(assert (= (and b!5404821 (not res!2298097)) b!5404831))

(assert (= (and b!5404831 (not res!2298117)) b!5404828))

(assert (= (and b!5404828 (not res!2298091)) b!5404805))

(assert (= (and b!5404805 (not res!2298113)) b!5404818))

(assert (= (and b!5404818 (not res!2298114)) b!5404806))

(assert (= (and b!5404806 (not res!2298111)) b!5404825))

(assert (= (and b!5404825 res!2298098) b!5404819))

(assert (= (and b!5404825 (not res!2298109)) b!5404820))

(assert (= (and b!5404820 (not res!2298093)) b!5404816))

(assert (= (and b!5404816 (not res!2298102)) b!5404835))

(assert (= (and b!5404835 (not res!2298106)) b!5404804))

(assert (= (and b!5404804 (not res!2298090)) b!5404824))

(assert (= (and b!5404824 (not res!2298088)) b!5404812))

(assert (= (and b!5404812 res!2298099) b!5404814))

(assert (= (and b!5404812 (not res!2298121)) b!5404847))

(assert (= (and start!567642 ((_ is ElementMatch!15177) r!7292)) b!5404822))

(assert (= (and start!567642 ((_ is Concat!24022) r!7292)) b!5404833))

(assert (= (and start!567642 ((_ is Star!15177) r!7292)) b!5404844))

(assert (= (and start!567642 ((_ is Union!15177) r!7292)) b!5404803))

(assert (= (and start!567642 condSetEmpty!35189) setIsEmpty!35189))

(assert (= (and start!567642 (not condSetEmpty!35189)) setNonEmpty!35189))

(assert (= setNonEmpty!35189 b!5404827))

(assert (= b!5404813 b!5404838))

(assert (= (and start!567642 ((_ is Cons!61707) zl!343)) b!5404813))

(assert (= (and start!567642 ((_ is Cons!61708) s!2326)) b!5404808))

(declare-fun m!6429066 () Bool)

(assert (=> b!5404841 m!6429066))

(declare-fun m!6429068 () Bool)

(assert (=> b!5404813 m!6429068))

(declare-fun m!6429070 () Bool)

(assert (=> b!5404828 m!6429070))

(declare-fun m!6429072 () Bool)

(assert (=> b!5404824 m!6429072))

(declare-fun m!6429074 () Bool)

(assert (=> b!5404845 m!6429074))

(declare-fun m!6429076 () Bool)

(assert (=> b!5404821 m!6429076))

(declare-fun m!6429078 () Bool)

(assert (=> b!5404804 m!6429078))

(declare-fun m!6429080 () Bool)

(assert (=> b!5404830 m!6429080))

(assert (=> b!5404830 m!6429080))

(declare-fun m!6429082 () Bool)

(assert (=> b!5404830 m!6429082))

(declare-fun m!6429084 () Bool)

(assert (=> b!5404818 m!6429084))

(declare-fun m!6429086 () Bool)

(assert (=> start!567642 m!6429086))

(declare-fun m!6429088 () Bool)

(assert (=> b!5404802 m!6429088))

(declare-fun m!6429090 () Bool)

(assert (=> b!5404832 m!6429090))

(declare-fun m!6429092 () Bool)

(assert (=> b!5404832 m!6429092))

(declare-fun m!6429094 () Bool)

(assert (=> b!5404825 m!6429094))

(declare-fun m!6429096 () Bool)

(assert (=> b!5404847 m!6429096))

(declare-fun m!6429098 () Bool)

(assert (=> b!5404807 m!6429098))

(declare-fun m!6429100 () Bool)

(assert (=> b!5404807 m!6429100))

(declare-fun m!6429102 () Bool)

(assert (=> b!5404807 m!6429102))

(declare-fun m!6429104 () Bool)

(assert (=> b!5404807 m!6429104))

(assert (=> b!5404807 m!6429104))

(declare-fun m!6429106 () Bool)

(assert (=> b!5404807 m!6429106))

(assert (=> b!5404807 m!6429100))

(declare-fun m!6429108 () Bool)

(assert (=> b!5404807 m!6429108))

(declare-fun m!6429110 () Bool)

(assert (=> b!5404823 m!6429110))

(declare-fun m!6429112 () Bool)

(assert (=> b!5404826 m!6429112))

(declare-fun m!6429114 () Bool)

(assert (=> b!5404826 m!6429114))

(declare-fun m!6429116 () Bool)

(assert (=> b!5404826 m!6429116))

(declare-fun m!6429118 () Bool)

(assert (=> b!5404826 m!6429118))

(declare-fun m!6429120 () Bool)

(assert (=> b!5404826 m!6429120))

(declare-fun m!6429122 () Bool)

(assert (=> b!5404835 m!6429122))

(declare-fun m!6429124 () Bool)

(assert (=> b!5404835 m!6429124))

(declare-fun m!6429126 () Bool)

(assert (=> b!5404835 m!6429126))

(declare-fun m!6429128 () Bool)

(assert (=> b!5404835 m!6429128))

(declare-fun m!6429130 () Bool)

(assert (=> b!5404835 m!6429130))

(declare-fun m!6429132 () Bool)

(assert (=> b!5404817 m!6429132))

(declare-fun m!6429134 () Bool)

(assert (=> b!5404840 m!6429134))

(declare-fun m!6429136 () Bool)

(assert (=> b!5404840 m!6429136))

(declare-fun m!6429138 () Bool)

(assert (=> b!5404840 m!6429138))

(declare-fun m!6429140 () Bool)

(assert (=> b!5404840 m!6429140))

(declare-fun m!6429142 () Bool)

(assert (=> b!5404840 m!6429142))

(declare-fun m!6429144 () Bool)

(assert (=> b!5404840 m!6429144))

(declare-fun m!6429146 () Bool)

(assert (=> b!5404840 m!6429146))

(declare-fun m!6429148 () Bool)

(assert (=> b!5404805 m!6429148))

(declare-fun m!6429150 () Bool)

(assert (=> b!5404805 m!6429150))

(declare-fun m!6429152 () Bool)

(assert (=> b!5404805 m!6429152))

(declare-fun m!6429154 () Bool)

(assert (=> b!5404815 m!6429154))

(declare-fun m!6429156 () Bool)

(assert (=> b!5404811 m!6429156))

(assert (=> b!5404811 m!6429094))

(declare-fun m!6429158 () Bool)

(assert (=> b!5404811 m!6429158))

(declare-fun m!6429160 () Bool)

(assert (=> b!5404816 m!6429160))

(declare-fun m!6429162 () Bool)

(assert (=> b!5404816 m!6429162))

(declare-fun m!6429164 () Bool)

(assert (=> b!5404816 m!6429164))

(declare-fun m!6429166 () Bool)

(assert (=> b!5404816 m!6429166))

(declare-fun m!6429168 () Bool)

(assert (=> b!5404816 m!6429168))

(declare-fun m!6429170 () Bool)

(assert (=> b!5404816 m!6429170))

(declare-fun m!6429172 () Bool)

(assert (=> b!5404831 m!6429172))

(declare-fun m!6429174 () Bool)

(assert (=> b!5404831 m!6429174))

(declare-fun m!6429176 () Bool)

(assert (=> b!5404831 m!6429176))

(declare-fun m!6429178 () Bool)

(assert (=> b!5404831 m!6429178))

(declare-fun m!6429180 () Bool)

(assert (=> b!5404831 m!6429180))

(declare-fun m!6429182 () Bool)

(assert (=> b!5404831 m!6429182))

(declare-fun m!6429184 () Bool)

(assert (=> b!5404831 m!6429184))

(declare-fun m!6429186 () Bool)

(assert (=> b!5404831 m!6429186))

(declare-fun m!6429188 () Bool)

(assert (=> b!5404831 m!6429188))

(declare-fun m!6429190 () Bool)

(assert (=> b!5404812 m!6429190))

(declare-fun m!6429192 () Bool)

(assert (=> b!5404812 m!6429192))

(declare-fun m!6429194 () Bool)

(assert (=> b!5404812 m!6429194))

(declare-fun m!6429196 () Bool)

(assert (=> b!5404812 m!6429196))

(assert (=> b!5404812 m!6429160))

(declare-fun m!6429198 () Bool)

(assert (=> b!5404812 m!6429198))

(assert (=> b!5404812 m!6429170))

(declare-fun m!6429200 () Bool)

(assert (=> b!5404812 m!6429200))

(declare-fun m!6429202 () Bool)

(assert (=> b!5404812 m!6429202))

(declare-fun m!6429204 () Bool)

(assert (=> b!5404812 m!6429204))

(assert (=> b!5404812 m!6429160))

(declare-fun m!6429206 () Bool)

(assert (=> b!5404812 m!6429206))

(declare-fun m!6429208 () Bool)

(assert (=> b!5404812 m!6429208))

(assert (=> b!5404812 m!6429190))

(declare-fun m!6429210 () Bool)

(assert (=> b!5404812 m!6429210))

(assert (=> b!5404812 m!6429168))

(declare-fun m!6429212 () Bool)

(assert (=> b!5404812 m!6429212))

(declare-fun m!6429214 () Bool)

(assert (=> b!5404812 m!6429214))

(declare-fun m!6429216 () Bool)

(assert (=> b!5404812 m!6429216))

(declare-fun m!6429218 () Bool)

(assert (=> b!5404812 m!6429218))

(assert (=> b!5404812 m!6429196))

(declare-fun m!6429220 () Bool)

(assert (=> b!5404812 m!6429220))

(declare-fun m!6429222 () Bool)

(assert (=> b!5404812 m!6429222))

(declare-fun m!6429224 () Bool)

(assert (=> b!5404812 m!6429224))

(declare-fun m!6429226 () Bool)

(assert (=> b!5404812 m!6429226))

(declare-fun m!6429228 () Bool)

(assert (=> setNonEmpty!35189 m!6429228))

(assert (=> b!5404819 m!6429110))

(declare-fun m!6429230 () Bool)

(assert (=> b!5404809 m!6429230))

(declare-fun m!6429232 () Bool)

(assert (=> b!5404837 m!6429232))

(declare-fun m!6429234 () Bool)

(assert (=> b!5404829 m!6429234))

(declare-fun m!6429236 () Bool)

(assert (=> b!5404829 m!6429236))

(declare-fun m!6429238 () Bool)

(assert (=> b!5404829 m!6429238))

(check-sat (not b!5404831) (not b!5404823) (not b!5404841) (not b!5404830) (not b!5404809) (not b!5404832) (not b!5404816) (not b!5404819) (not b!5404826) (not b!5404845) (not start!567642) (not b!5404804) (not b!5404825) (not b!5404829) (not b!5404847) (not b!5404813) (not b!5404827) (not b!5404815) (not b!5404828) (not b!5404824) (not b!5404837) (not setNonEmpty!35189) (not b!5404812) (not b!5404818) (not b!5404805) (not b!5404844) (not b!5404840) (not b!5404803) (not b!5404811) (not b!5404802) (not b!5404817) (not b!5404833) (not b!5404821) (not b!5404807) tp_is_empty!39607 (not b!5404838) (not b!5404835) (not b!5404808))
(check-sat)
(get-model)

(declare-fun d!1725772 () Bool)

(assert (=> d!1725772 (= (isEmpty!33697 (t!375053 (exprs!5061 (h!68155 zl!343)))) ((_ is Nil!61706) (t!375053 (exprs!5061 (h!68155 zl!343)))))))

(assert (=> b!5404815 d!1725772))

(declare-fun d!1725774 () Bool)

(declare-fun dynLambda!24313 (Int Context!9122) Context!9122)

(assert (=> d!1725774 (= (map!14150 lt!2203626 lambda!281714) (store ((as const (Array Context!9122 Bool)) false) (dynLambda!24313 lambda!281714 lt!2203624) true))))

(declare-fun lt!2203641 () Unit!154230)

(declare-fun choose!40751 ((InoxSet Context!9122) Context!9122 Int) Unit!154230)

(assert (=> d!1725774 (= lt!2203641 (choose!40751 lt!2203626 lt!2203624 lambda!281714))))

(assert (=> d!1725774 (= lt!2203626 (store ((as const (Array Context!9122 Bool)) false) lt!2203624 true))))

(assert (=> d!1725774 (= (lemmaMapOnSingletonSet!36 lt!2203626 lt!2203624 lambda!281714) lt!2203641)))

(declare-fun b_lambda!206549 () Bool)

(assert (=> (not b_lambda!206549) (not d!1725774)))

(declare-fun bs!1248727 () Bool)

(assert (= bs!1248727 d!1725774))

(assert (=> bs!1248727 m!6429162))

(declare-fun m!6429240 () Bool)

(assert (=> bs!1248727 m!6429240))

(assert (=> bs!1248727 m!6429240))

(declare-fun m!6429242 () Bool)

(assert (=> bs!1248727 m!6429242))

(declare-fun m!6429244 () Bool)

(assert (=> bs!1248727 m!6429244))

(assert (=> bs!1248727 m!6429180))

(assert (=> b!5404816 d!1725774))

(declare-fun d!1725776 () Bool)

(declare-fun forall!14530 (List!61830 Int) Bool)

(assert (=> d!1725776 (forall!14530 (++!13527 lt!2203612 lt!2203637) lambda!281715)))

(declare-fun lt!2203644 () Unit!154230)

(declare-fun choose!40752 (List!61830 List!61830 Int) Unit!154230)

(assert (=> d!1725776 (= lt!2203644 (choose!40752 lt!2203612 lt!2203637 lambda!281715))))

(assert (=> d!1725776 (forall!14530 lt!2203612 lambda!281715)))

(assert (=> d!1725776 (= (lemmaConcatPreservesForall!202 lt!2203612 lt!2203637 lambda!281715) lt!2203644)))

(declare-fun bs!1248728 () Bool)

(assert (= bs!1248728 d!1725776))

(assert (=> bs!1248728 m!6429168))

(assert (=> bs!1248728 m!6429168))

(declare-fun m!6429246 () Bool)

(assert (=> bs!1248728 m!6429246))

(declare-fun m!6429248 () Bool)

(assert (=> bs!1248728 m!6429248))

(declare-fun m!6429250 () Bool)

(assert (=> bs!1248728 m!6429250))

(assert (=> b!5404816 d!1725776))

(declare-fun bs!1248729 () Bool)

(declare-fun d!1725778 () Bool)

(assert (= bs!1248729 (and d!1725778 b!5404816)))

(declare-fun lambda!281722 () Int)

(assert (=> bs!1248729 (= (= (exprs!5061 lt!2203621) lt!2203637) (= lambda!281722 lambda!281714))))

(assert (=> d!1725778 true))

(assert (=> d!1725778 (= (appendTo!36 lt!2203626 lt!2203621) (map!14150 lt!2203626 lambda!281722))))

(declare-fun bs!1248730 () Bool)

(assert (= bs!1248730 d!1725778))

(declare-fun m!6429252 () Bool)

(assert (=> bs!1248730 m!6429252))

(assert (=> b!5404816 d!1725778))

(declare-fun d!1725780 () Bool)

(declare-fun choose!40753 ((InoxSet Context!9122) Int) (InoxSet Context!9122))

(assert (=> d!1725780 (= (map!14150 lt!2203626 lambda!281714) (choose!40753 lt!2203626 lambda!281714))))

(declare-fun bs!1248731 () Bool)

(assert (= bs!1248731 d!1725780))

(declare-fun m!6429254 () Bool)

(assert (=> bs!1248731 m!6429254))

(assert (=> b!5404816 d!1725780))

(declare-fun b!5404866 () Bool)

(declare-fun e!3350887 () List!61830)

(assert (=> b!5404866 (= e!3350887 lt!2203637)))

(declare-fun b!5404868 () Bool)

(declare-fun res!2298128 () Bool)

(declare-fun e!3350888 () Bool)

(assert (=> b!5404868 (=> (not res!2298128) (not e!3350888))))

(declare-fun lt!2203649 () List!61830)

(declare-fun size!39841 (List!61830) Int)

(assert (=> b!5404868 (= res!2298128 (= (size!39841 lt!2203649) (+ (size!39841 lt!2203612) (size!39841 lt!2203637))))))

(declare-fun d!1725782 () Bool)

(assert (=> d!1725782 e!3350888))

(declare-fun res!2298127 () Bool)

(assert (=> d!1725782 (=> (not res!2298127) (not e!3350888))))

(declare-fun content!11058 (List!61830) (InoxSet Regex!15177))

(assert (=> d!1725782 (= res!2298127 (= (content!11058 lt!2203649) ((_ map or) (content!11058 lt!2203612) (content!11058 lt!2203637))))))

(assert (=> d!1725782 (= lt!2203649 e!3350887)))

(declare-fun c!942105 () Bool)

(assert (=> d!1725782 (= c!942105 ((_ is Nil!61706) lt!2203612))))

(assert (=> d!1725782 (= (++!13527 lt!2203612 lt!2203637) lt!2203649)))

(declare-fun b!5404869 () Bool)

(assert (=> b!5404869 (= e!3350888 (or (not (= lt!2203637 Nil!61706)) (= lt!2203649 lt!2203612)))))

(declare-fun b!5404867 () Bool)

(assert (=> b!5404867 (= e!3350887 (Cons!61706 (h!68154 lt!2203612) (++!13527 (t!375053 lt!2203612) lt!2203637)))))

(assert (= (and d!1725782 c!942105) b!5404866))

(assert (= (and d!1725782 (not c!942105)) b!5404867))

(assert (= (and d!1725782 res!2298127) b!5404868))

(assert (= (and b!5404868 res!2298128) b!5404869))

(declare-fun m!6429256 () Bool)

(assert (=> b!5404868 m!6429256))

(declare-fun m!6429258 () Bool)

(assert (=> b!5404868 m!6429258))

(declare-fun m!6429260 () Bool)

(assert (=> b!5404868 m!6429260))

(declare-fun m!6429262 () Bool)

(assert (=> d!1725782 m!6429262))

(declare-fun m!6429264 () Bool)

(assert (=> d!1725782 m!6429264))

(declare-fun m!6429266 () Bool)

(assert (=> d!1725782 m!6429266))

(declare-fun m!6429268 () Bool)

(assert (=> b!5404867 m!6429268))

(assert (=> b!5404816 d!1725782))

(declare-fun bm!386768 () Bool)

(declare-fun c!942116 () Bool)

(declare-fun call!386777 () List!61830)

(declare-fun call!386774 () (InoxSet Context!9122))

(assert (=> bm!386768 (= call!386774 (derivationStepZipperDown!625 (ite c!942116 (regOne!30867 (reg!15506 (regOne!30866 r!7292))) (regOne!30866 (reg!15506 (regOne!30866 r!7292)))) (ite c!942116 lt!2203621 (Context!9123 call!386777)) (h!68156 s!2326)))))

(declare-fun b!5404892 () Bool)

(declare-fun e!3350904 () (InoxSet Context!9122))

(declare-fun call!386775 () (InoxSet Context!9122))

(assert (=> b!5404892 (= e!3350904 ((_ map or) call!386774 call!386775))))

(declare-fun bm!386769 () Bool)

(declare-fun call!386778 () (InoxSet Context!9122))

(declare-fun call!386776 () (InoxSet Context!9122))

(assert (=> bm!386769 (= call!386778 call!386776)))

(declare-fun d!1725784 () Bool)

(declare-fun c!942119 () Bool)

(assert (=> d!1725784 (= c!942119 (and ((_ is ElementMatch!15177) (reg!15506 (regOne!30866 r!7292))) (= (c!942101 (reg!15506 (regOne!30866 r!7292))) (h!68156 s!2326))))))

(declare-fun e!3350902 () (InoxSet Context!9122))

(assert (=> d!1725784 (= (derivationStepZipperDown!625 (reg!15506 (regOne!30866 r!7292)) lt!2203621 (h!68156 s!2326)) e!3350902)))

(declare-fun b!5404893 () Bool)

(declare-fun c!942120 () Bool)

(assert (=> b!5404893 (= c!942120 ((_ is Star!15177) (reg!15506 (regOne!30866 r!7292))))))

(declare-fun e!3350901 () (InoxSet Context!9122))

(declare-fun e!3350906 () (InoxSet Context!9122))

(assert (=> b!5404893 (= e!3350901 e!3350906)))

(declare-fun c!942118 () Bool)

(declare-fun c!942117 () Bool)

(declare-fun bm!386770 () Bool)

(declare-fun call!386773 () List!61830)

(assert (=> bm!386770 (= call!386775 (derivationStepZipperDown!625 (ite c!942116 (regTwo!30867 (reg!15506 (regOne!30866 r!7292))) (ite c!942118 (regTwo!30866 (reg!15506 (regOne!30866 r!7292))) (ite c!942117 (regOne!30866 (reg!15506 (regOne!30866 r!7292))) (reg!15506 (reg!15506 (regOne!30866 r!7292)))))) (ite (or c!942116 c!942118) lt!2203621 (Context!9123 call!386773)) (h!68156 s!2326)))))

(declare-fun b!5404894 () Bool)

(assert (=> b!5404894 (= e!3350902 e!3350904)))

(assert (=> b!5404894 (= c!942116 ((_ is Union!15177) (reg!15506 (regOne!30866 r!7292))))))

(declare-fun bm!386771 () Bool)

(declare-fun $colon$colon!1487 (List!61830 Regex!15177) List!61830)

(assert (=> bm!386771 (= call!386777 ($colon$colon!1487 (exprs!5061 lt!2203621) (ite (or c!942118 c!942117) (regTwo!30866 (reg!15506 (regOne!30866 r!7292))) (reg!15506 (regOne!30866 r!7292)))))))

(declare-fun b!5404895 () Bool)

(assert (=> b!5404895 (= e!3350902 (store ((as const (Array Context!9122 Bool)) false) lt!2203621 true))))

(declare-fun b!5404896 () Bool)

(declare-fun e!3350905 () (InoxSet Context!9122))

(assert (=> b!5404896 (= e!3350905 ((_ map or) call!386774 call!386776))))

(declare-fun b!5404897 () Bool)

(assert (=> b!5404897 (= e!3350901 call!386778)))

(declare-fun b!5404898 () Bool)

(declare-fun e!3350903 () Bool)

(assert (=> b!5404898 (= c!942118 e!3350903)))

(declare-fun res!2298131 () Bool)

(assert (=> b!5404898 (=> (not res!2298131) (not e!3350903))))

(assert (=> b!5404898 (= res!2298131 ((_ is Concat!24022) (reg!15506 (regOne!30866 r!7292))))))

(assert (=> b!5404898 (= e!3350904 e!3350905)))

(declare-fun b!5404899 () Bool)

(assert (=> b!5404899 (= e!3350905 e!3350901)))

(assert (=> b!5404899 (= c!942117 ((_ is Concat!24022) (reg!15506 (regOne!30866 r!7292))))))

(declare-fun bm!386772 () Bool)

(assert (=> bm!386772 (= call!386776 call!386775)))

(declare-fun bm!386773 () Bool)

(assert (=> bm!386773 (= call!386773 call!386777)))

(declare-fun b!5404900 () Bool)

(assert (=> b!5404900 (= e!3350906 ((as const (Array Context!9122 Bool)) false))))

(declare-fun b!5404901 () Bool)

(assert (=> b!5404901 (= e!3350906 call!386778)))

(declare-fun b!5404902 () Bool)

(assert (=> b!5404902 (= e!3350903 (nullable!5346 (regOne!30866 (reg!15506 (regOne!30866 r!7292)))))))

(assert (= (and d!1725784 c!942119) b!5404895))

(assert (= (and d!1725784 (not c!942119)) b!5404894))

(assert (= (and b!5404894 c!942116) b!5404892))

(assert (= (and b!5404894 (not c!942116)) b!5404898))

(assert (= (and b!5404898 res!2298131) b!5404902))

(assert (= (and b!5404898 c!942118) b!5404896))

(assert (= (and b!5404898 (not c!942118)) b!5404899))

(assert (= (and b!5404899 c!942117) b!5404897))

(assert (= (and b!5404899 (not c!942117)) b!5404893))

(assert (= (and b!5404893 c!942120) b!5404901))

(assert (= (and b!5404893 (not c!942120)) b!5404900))

(assert (= (or b!5404897 b!5404901) bm!386773))

(assert (= (or b!5404897 b!5404901) bm!386769))

(assert (= (or b!5404896 bm!386773) bm!386771))

(assert (= (or b!5404896 bm!386769) bm!386772))

(assert (= (or b!5404892 bm!386772) bm!386770))

(assert (= (or b!5404892 b!5404896) bm!386768))

(declare-fun m!6429270 () Bool)

(assert (=> b!5404902 m!6429270))

(declare-fun m!6429272 () Bool)

(assert (=> bm!386768 m!6429272))

(assert (=> b!5404895 m!6429182))

(declare-fun m!6429274 () Bool)

(assert (=> bm!386771 m!6429274))

(declare-fun m!6429276 () Bool)

(assert (=> bm!386770 m!6429276))

(assert (=> b!5404837 d!1725784))

(declare-fun b!5404911 () Bool)

(declare-fun e!3350912 () List!61832)

(assert (=> b!5404911 (= e!3350912 (_2!35679 lt!2203613))))

(declare-fun b!5404913 () Bool)

(declare-fun res!2298138 () Bool)

(declare-fun e!3350911 () Bool)

(assert (=> b!5404913 (=> (not res!2298138) (not e!3350911))))

(declare-fun lt!2203652 () List!61832)

(declare-fun size!39842 (List!61832) Int)

(assert (=> b!5404913 (= res!2298138 (= (size!39842 lt!2203652) (+ (size!39842 (_1!35679 lt!2203613)) (size!39842 (_2!35679 lt!2203613)))))))

(declare-fun d!1725786 () Bool)

(assert (=> d!1725786 e!3350911))

(declare-fun res!2298137 () Bool)

(assert (=> d!1725786 (=> (not res!2298137) (not e!3350911))))

(declare-fun content!11059 (List!61832) (InoxSet C!30624))

(assert (=> d!1725786 (= res!2298137 (= (content!11059 lt!2203652) ((_ map or) (content!11059 (_1!35679 lt!2203613)) (content!11059 (_2!35679 lt!2203613)))))))

(assert (=> d!1725786 (= lt!2203652 e!3350912)))

(declare-fun c!942123 () Bool)

(assert (=> d!1725786 (= c!942123 ((_ is Nil!61708) (_1!35679 lt!2203613)))))

(assert (=> d!1725786 (= (++!13528 (_1!35679 lt!2203613) (_2!35679 lt!2203613)) lt!2203652)))

(declare-fun b!5404912 () Bool)

(assert (=> b!5404912 (= e!3350912 (Cons!61708 (h!68156 (_1!35679 lt!2203613)) (++!13528 (t!375055 (_1!35679 lt!2203613)) (_2!35679 lt!2203613))))))

(declare-fun b!5404914 () Bool)

(assert (=> b!5404914 (= e!3350911 (or (not (= (_2!35679 lt!2203613) Nil!61708)) (= lt!2203652 (_1!35679 lt!2203613))))))

(assert (= (and d!1725786 c!942123) b!5404911))

(assert (= (and d!1725786 (not c!942123)) b!5404912))

(assert (= (and d!1725786 res!2298137) b!5404913))

(assert (= (and b!5404913 res!2298138) b!5404914))

(declare-fun m!6429278 () Bool)

(assert (=> b!5404913 m!6429278))

(declare-fun m!6429280 () Bool)

(assert (=> b!5404913 m!6429280))

(declare-fun m!6429282 () Bool)

(assert (=> b!5404913 m!6429282))

(declare-fun m!6429284 () Bool)

(assert (=> d!1725786 m!6429284))

(declare-fun m!6429286 () Bool)

(assert (=> d!1725786 m!6429286))

(declare-fun m!6429288 () Bool)

(assert (=> d!1725786 m!6429288))

(declare-fun m!6429290 () Bool)

(assert (=> b!5404912 m!6429290))

(assert (=> b!5404835 d!1725786))

(declare-fun d!1725788 () Bool)

(declare-fun isEmpty!33698 (Option!15288) Bool)

(assert (=> d!1725788 (= (isDefined!11991 lt!2203598) (not (isEmpty!33698 lt!2203598)))))

(declare-fun bs!1248732 () Bool)

(assert (= bs!1248732 d!1725788))

(declare-fun m!6429292 () Bool)

(assert (=> bs!1248732 m!6429292))

(assert (=> b!5404835 d!1725788))

(declare-fun d!1725790 () Bool)

(assert (=> d!1725790 (isDefined!11991 (findConcatSeparationZippers!34 lt!2203626 (store ((as const (Array Context!9122 Bool)) false) lt!2203621 true) Nil!61708 s!2326 s!2326))))

(declare-fun lt!2203655 () Unit!154230)

(declare-fun choose!40754 ((InoxSet Context!9122) Context!9122 List!61832) Unit!154230)

(assert (=> d!1725790 (= lt!2203655 (choose!40754 lt!2203626 lt!2203621 s!2326))))

(assert (=> d!1725790 (matchZipper!1421 (appendTo!36 lt!2203626 lt!2203621) s!2326)))

(assert (=> d!1725790 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!34 lt!2203626 lt!2203621 s!2326) lt!2203655)))

(declare-fun bs!1248733 () Bool)

(assert (= bs!1248733 d!1725790))

(assert (=> bs!1248733 m!6429182))

(declare-fun m!6429294 () Bool)

(assert (=> bs!1248733 m!6429294))

(assert (=> bs!1248733 m!6429166))

(declare-fun m!6429296 () Bool)

(assert (=> bs!1248733 m!6429296))

(assert (=> bs!1248733 m!6429182))

(assert (=> bs!1248733 m!6429294))

(declare-fun m!6429298 () Bool)

(assert (=> bs!1248733 m!6429298))

(assert (=> bs!1248733 m!6429166))

(declare-fun m!6429300 () Bool)

(assert (=> bs!1248733 m!6429300))

(assert (=> b!5404835 d!1725790))

(declare-fun d!1725794 () Bool)

(declare-fun e!3350928 () Bool)

(assert (=> d!1725794 e!3350928))

(declare-fun res!2298152 () Bool)

(assert (=> d!1725794 (=> res!2298152 e!3350928)))

(declare-fun e!3350930 () Bool)

(assert (=> d!1725794 (= res!2298152 e!3350930)))

(declare-fun res!2298153 () Bool)

(assert (=> d!1725794 (=> (not res!2298153) (not e!3350930))))

(declare-fun lt!2203671 () Option!15288)

(assert (=> d!1725794 (= res!2298153 (isDefined!11991 lt!2203671))))

(declare-fun e!3350929 () Option!15288)

(assert (=> d!1725794 (= lt!2203671 e!3350929)))

(declare-fun c!942128 () Bool)

(declare-fun e!3350927 () Bool)

(assert (=> d!1725794 (= c!942128 e!3350927)))

(declare-fun res!2298155 () Bool)

(assert (=> d!1725794 (=> (not res!2298155) (not e!3350927))))

(assert (=> d!1725794 (= res!2298155 (matchZipper!1421 lt!2203626 Nil!61708))))

(assert (=> d!1725794 (= (++!13528 Nil!61708 s!2326) s!2326)))

(assert (=> d!1725794 (= (findConcatSeparationZippers!34 lt!2203626 lt!2203605 Nil!61708 s!2326 s!2326) lt!2203671)))

(declare-fun b!5404936 () Bool)

(assert (=> b!5404936 (= e!3350927 (matchZipper!1421 lt!2203605 s!2326))))

(declare-fun b!5404937 () Bool)

(declare-fun e!3350926 () Option!15288)

(assert (=> b!5404937 (= e!3350926 None!15287)))

(declare-fun b!5404938 () Bool)

(declare-fun res!2298156 () Bool)

(assert (=> b!5404938 (=> (not res!2298156) (not e!3350930))))

(assert (=> b!5404938 (= res!2298156 (matchZipper!1421 lt!2203626 (_1!35679 (get!21268 lt!2203671))))))

(declare-fun b!5404939 () Bool)

(assert (=> b!5404939 (= e!3350930 (= (++!13528 (_1!35679 (get!21268 lt!2203671)) (_2!35679 (get!21268 lt!2203671))) s!2326))))

(declare-fun b!5404940 () Bool)

(assert (=> b!5404940 (= e!3350929 (Some!15287 (tuple2!64753 Nil!61708 s!2326)))))

(declare-fun b!5404941 () Bool)

(assert (=> b!5404941 (= e!3350929 e!3350926)))

(declare-fun c!942129 () Bool)

(assert (=> b!5404941 (= c!942129 ((_ is Nil!61708) s!2326))))

(declare-fun b!5404942 () Bool)

(assert (=> b!5404942 (= e!3350928 (not (isDefined!11991 lt!2203671)))))

(declare-fun b!5404943 () Bool)

(declare-fun res!2298154 () Bool)

(assert (=> b!5404943 (=> (not res!2298154) (not e!3350930))))

(assert (=> b!5404943 (= res!2298154 (matchZipper!1421 lt!2203605 (_2!35679 (get!21268 lt!2203671))))))

(declare-fun b!5404944 () Bool)

(declare-fun lt!2203672 () Unit!154230)

(declare-fun lt!2203673 () Unit!154230)

(assert (=> b!5404944 (= lt!2203672 lt!2203673)))

(assert (=> b!5404944 (= (++!13528 (++!13528 Nil!61708 (Cons!61708 (h!68156 s!2326) Nil!61708)) (t!375055 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1832 (List!61832 C!30624 List!61832 List!61832) Unit!154230)

(assert (=> b!5404944 (= lt!2203673 (lemmaMoveElementToOtherListKeepsConcatEq!1832 Nil!61708 (h!68156 s!2326) (t!375055 s!2326) s!2326))))

(assert (=> b!5404944 (= e!3350926 (findConcatSeparationZippers!34 lt!2203626 lt!2203605 (++!13528 Nil!61708 (Cons!61708 (h!68156 s!2326) Nil!61708)) (t!375055 s!2326) s!2326))))

(assert (= (and d!1725794 res!2298155) b!5404936))

(assert (= (and d!1725794 c!942128) b!5404940))

(assert (= (and d!1725794 (not c!942128)) b!5404941))

(assert (= (and b!5404941 c!942129) b!5404937))

(assert (= (and b!5404941 (not c!942129)) b!5404944))

(assert (= (and d!1725794 res!2298153) b!5404938))

(assert (= (and b!5404938 res!2298156) b!5404943))

(assert (= (and b!5404943 res!2298154) b!5404939))

(assert (= (and d!1725794 (not res!2298152)) b!5404942))

(declare-fun m!6429318 () Bool)

(assert (=> b!5404943 m!6429318))

(declare-fun m!6429320 () Bool)

(assert (=> b!5404943 m!6429320))

(assert (=> b!5404939 m!6429318))

(declare-fun m!6429322 () Bool)

(assert (=> b!5404939 m!6429322))

(declare-fun m!6429324 () Bool)

(assert (=> d!1725794 m!6429324))

(declare-fun m!6429326 () Bool)

(assert (=> d!1725794 m!6429326))

(declare-fun m!6429328 () Bool)

(assert (=> d!1725794 m!6429328))

(assert (=> b!5404938 m!6429318))

(declare-fun m!6429330 () Bool)

(assert (=> b!5404938 m!6429330))

(declare-fun m!6429332 () Bool)

(assert (=> b!5404944 m!6429332))

(assert (=> b!5404944 m!6429332))

(declare-fun m!6429334 () Bool)

(assert (=> b!5404944 m!6429334))

(declare-fun m!6429336 () Bool)

(assert (=> b!5404944 m!6429336))

(assert (=> b!5404944 m!6429332))

(declare-fun m!6429338 () Bool)

(assert (=> b!5404944 m!6429338))

(assert (=> b!5404942 m!6429324))

(declare-fun m!6429340 () Bool)

(assert (=> b!5404936 m!6429340))

(assert (=> b!5404835 d!1725794))

(declare-fun d!1725804 () Bool)

(assert (=> d!1725804 (= (get!21268 lt!2203598) (v!51316 lt!2203598))))

(assert (=> b!5404835 d!1725804))

(declare-fun d!1725806 () Bool)

(declare-fun c!942132 () Bool)

(declare-fun isEmpty!33699 (List!61832) Bool)

(assert (=> d!1725806 (= c!942132 (isEmpty!33699 s!2326))))

(declare-fun e!3350933 () Bool)

(assert (=> d!1725806 (= (matchZipper!1421 z!1189 s!2326) e!3350933)))

(declare-fun b!5404949 () Bool)

(declare-fun nullableZipper!1437 ((InoxSet Context!9122)) Bool)

(assert (=> b!5404949 (= e!3350933 (nullableZipper!1437 z!1189))))

(declare-fun b!5404950 () Bool)

(declare-fun head!11592 (List!61832) C!30624)

(declare-fun tail!10689 (List!61832) List!61832)

(assert (=> b!5404950 (= e!3350933 (matchZipper!1421 (derivationStepZipper!1416 z!1189 (head!11592 s!2326)) (tail!10689 s!2326)))))

(assert (= (and d!1725806 c!942132) b!5404949))

(assert (= (and d!1725806 (not c!942132)) b!5404950))

(declare-fun m!6429342 () Bool)

(assert (=> d!1725806 m!6429342))

(declare-fun m!6429344 () Bool)

(assert (=> b!5404949 m!6429344))

(declare-fun m!6429346 () Bool)

(assert (=> b!5404950 m!6429346))

(assert (=> b!5404950 m!6429346))

(declare-fun m!6429348 () Bool)

(assert (=> b!5404950 m!6429348))

(declare-fun m!6429350 () Bool)

(assert (=> b!5404950 m!6429350))

(assert (=> b!5404950 m!6429348))

(assert (=> b!5404950 m!6429350))

(declare-fun m!6429352 () Bool)

(assert (=> b!5404950 m!6429352))

(assert (=> b!5404818 d!1725806))

(declare-fun c!942133 () Bool)

(declare-fun call!386783 () List!61830)

(declare-fun bm!386774 () Bool)

(declare-fun call!386780 () (InoxSet Context!9122))

(assert (=> bm!386774 (= call!386780 (derivationStepZipperDown!625 (ite c!942133 (regOne!30867 (h!68154 (exprs!5061 (h!68155 zl!343)))) (regOne!30866 (h!68154 (exprs!5061 (h!68155 zl!343))))) (ite c!942133 lt!2203591 (Context!9123 call!386783)) (h!68156 s!2326)))))

(declare-fun b!5404951 () Bool)

(declare-fun e!3350937 () (InoxSet Context!9122))

(declare-fun call!386781 () (InoxSet Context!9122))

(assert (=> b!5404951 (= e!3350937 ((_ map or) call!386780 call!386781))))

(declare-fun bm!386775 () Bool)

(declare-fun call!386784 () (InoxSet Context!9122))

(declare-fun call!386782 () (InoxSet Context!9122))

(assert (=> bm!386775 (= call!386784 call!386782)))

(declare-fun d!1725808 () Bool)

(declare-fun c!942136 () Bool)

(assert (=> d!1725808 (= c!942136 (and ((_ is ElementMatch!15177) (h!68154 (exprs!5061 (h!68155 zl!343)))) (= (c!942101 (h!68154 (exprs!5061 (h!68155 zl!343)))) (h!68156 s!2326))))))

(declare-fun e!3350935 () (InoxSet Context!9122))

(assert (=> d!1725808 (= (derivationStepZipperDown!625 (h!68154 (exprs!5061 (h!68155 zl!343))) lt!2203591 (h!68156 s!2326)) e!3350935)))

(declare-fun b!5404952 () Bool)

(declare-fun c!942137 () Bool)

(assert (=> b!5404952 (= c!942137 ((_ is Star!15177) (h!68154 (exprs!5061 (h!68155 zl!343)))))))

(declare-fun e!3350934 () (InoxSet Context!9122))

(declare-fun e!3350939 () (InoxSet Context!9122))

(assert (=> b!5404952 (= e!3350934 e!3350939)))

(declare-fun bm!386776 () Bool)

(declare-fun c!942134 () Bool)

(declare-fun c!942135 () Bool)

(declare-fun call!386779 () List!61830)

(assert (=> bm!386776 (= call!386781 (derivationStepZipperDown!625 (ite c!942133 (regTwo!30867 (h!68154 (exprs!5061 (h!68155 zl!343)))) (ite c!942135 (regTwo!30866 (h!68154 (exprs!5061 (h!68155 zl!343)))) (ite c!942134 (regOne!30866 (h!68154 (exprs!5061 (h!68155 zl!343)))) (reg!15506 (h!68154 (exprs!5061 (h!68155 zl!343))))))) (ite (or c!942133 c!942135) lt!2203591 (Context!9123 call!386779)) (h!68156 s!2326)))))

(declare-fun b!5404953 () Bool)

(assert (=> b!5404953 (= e!3350935 e!3350937)))

(assert (=> b!5404953 (= c!942133 ((_ is Union!15177) (h!68154 (exprs!5061 (h!68155 zl!343)))))))

(declare-fun bm!386777 () Bool)

(assert (=> bm!386777 (= call!386783 ($colon$colon!1487 (exprs!5061 lt!2203591) (ite (or c!942135 c!942134) (regTwo!30866 (h!68154 (exprs!5061 (h!68155 zl!343)))) (h!68154 (exprs!5061 (h!68155 zl!343))))))))

(declare-fun b!5404954 () Bool)

(assert (=> b!5404954 (= e!3350935 (store ((as const (Array Context!9122 Bool)) false) lt!2203591 true))))

(declare-fun b!5404955 () Bool)

(declare-fun e!3350938 () (InoxSet Context!9122))

(assert (=> b!5404955 (= e!3350938 ((_ map or) call!386780 call!386782))))

(declare-fun b!5404956 () Bool)

(assert (=> b!5404956 (= e!3350934 call!386784)))

(declare-fun b!5404957 () Bool)

(declare-fun e!3350936 () Bool)

(assert (=> b!5404957 (= c!942135 e!3350936)))

(declare-fun res!2298157 () Bool)

(assert (=> b!5404957 (=> (not res!2298157) (not e!3350936))))

(assert (=> b!5404957 (= res!2298157 ((_ is Concat!24022) (h!68154 (exprs!5061 (h!68155 zl!343)))))))

(assert (=> b!5404957 (= e!3350937 e!3350938)))

(declare-fun b!5404958 () Bool)

(assert (=> b!5404958 (= e!3350938 e!3350934)))

(assert (=> b!5404958 (= c!942134 ((_ is Concat!24022) (h!68154 (exprs!5061 (h!68155 zl!343)))))))

(declare-fun bm!386778 () Bool)

(assert (=> bm!386778 (= call!386782 call!386781)))

(declare-fun bm!386779 () Bool)

(assert (=> bm!386779 (= call!386779 call!386783)))

(declare-fun b!5404959 () Bool)

(assert (=> b!5404959 (= e!3350939 ((as const (Array Context!9122 Bool)) false))))

(declare-fun b!5404960 () Bool)

(assert (=> b!5404960 (= e!3350939 call!386784)))

(declare-fun b!5404961 () Bool)

(assert (=> b!5404961 (= e!3350936 (nullable!5346 (regOne!30866 (h!68154 (exprs!5061 (h!68155 zl!343))))))))

(assert (= (and d!1725808 c!942136) b!5404954))

(assert (= (and d!1725808 (not c!942136)) b!5404953))

(assert (= (and b!5404953 c!942133) b!5404951))

(assert (= (and b!5404953 (not c!942133)) b!5404957))

(assert (= (and b!5404957 res!2298157) b!5404961))

(assert (= (and b!5404957 c!942135) b!5404955))

(assert (= (and b!5404957 (not c!942135)) b!5404958))

(assert (= (and b!5404958 c!942134) b!5404956))

(assert (= (and b!5404958 (not c!942134)) b!5404952))

(assert (= (and b!5404952 c!942137) b!5404960))

(assert (= (and b!5404952 (not c!942137)) b!5404959))

(assert (= (or b!5404956 b!5404960) bm!386779))

(assert (= (or b!5404956 b!5404960) bm!386775))

(assert (= (or b!5404955 bm!386779) bm!386777))

(assert (= (or b!5404955 bm!386775) bm!386778))

(assert (= (or b!5404951 bm!386778) bm!386776))

(assert (= (or b!5404951 b!5404955) bm!386774))

(declare-fun m!6429354 () Bool)

(assert (=> b!5404961 m!6429354))

(declare-fun m!6429356 () Bool)

(assert (=> bm!386774 m!6429356))

(declare-fun m!6429358 () Bool)

(assert (=> b!5404954 m!6429358))

(declare-fun m!6429360 () Bool)

(assert (=> bm!386777 m!6429360))

(declare-fun m!6429362 () Bool)

(assert (=> bm!386776 m!6429362))

(assert (=> b!5404840 d!1725808))

(declare-fun d!1725810 () Bool)

(declare-fun nullableFct!1588 (Regex!15177) Bool)

(assert (=> d!1725810 (= (nullable!5346 (h!68154 (exprs!5061 (h!68155 zl!343)))) (nullableFct!1588 (h!68154 (exprs!5061 (h!68155 zl!343)))))))

(declare-fun bs!1248736 () Bool)

(assert (= bs!1248736 d!1725810))

(declare-fun m!6429364 () Bool)

(assert (=> bs!1248736 m!6429364))

(assert (=> b!5404840 d!1725810))

(declare-fun b!5404999 () Bool)

(declare-fun e!3350962 () (InoxSet Context!9122))

(assert (=> b!5404999 (= e!3350962 ((as const (Array Context!9122 Bool)) false))))

(declare-fun d!1725812 () Bool)

(declare-fun c!942148 () Bool)

(declare-fun e!3350963 () Bool)

(assert (=> d!1725812 (= c!942148 e!3350963)))

(declare-fun res!2298175 () Bool)

(assert (=> d!1725812 (=> (not res!2298175) (not e!3350963))))

(assert (=> d!1725812 (= res!2298175 ((_ is Cons!61706) (exprs!5061 (Context!9123 (Cons!61706 (h!68154 (exprs!5061 (h!68155 zl!343))) (t!375053 (exprs!5061 (h!68155 zl!343))))))))))

(declare-fun e!3350961 () (InoxSet Context!9122))

(assert (=> d!1725812 (= (derivationStepZipperUp!549 (Context!9123 (Cons!61706 (h!68154 (exprs!5061 (h!68155 zl!343))) (t!375053 (exprs!5061 (h!68155 zl!343))))) (h!68156 s!2326)) e!3350961)))

(declare-fun b!5405000 () Bool)

(declare-fun call!386787 () (InoxSet Context!9122))

(assert (=> b!5405000 (= e!3350962 call!386787)))

(declare-fun b!5405001 () Bool)

(assert (=> b!5405001 (= e!3350963 (nullable!5346 (h!68154 (exprs!5061 (Context!9123 (Cons!61706 (h!68154 (exprs!5061 (h!68155 zl!343))) (t!375053 (exprs!5061 (h!68155 zl!343)))))))))))

(declare-fun b!5405002 () Bool)

(assert (=> b!5405002 (= e!3350961 e!3350962)))

(declare-fun c!942149 () Bool)

(assert (=> b!5405002 (= c!942149 ((_ is Cons!61706) (exprs!5061 (Context!9123 (Cons!61706 (h!68154 (exprs!5061 (h!68155 zl!343))) (t!375053 (exprs!5061 (h!68155 zl!343))))))))))

(declare-fun bm!386782 () Bool)

(assert (=> bm!386782 (= call!386787 (derivationStepZipperDown!625 (h!68154 (exprs!5061 (Context!9123 (Cons!61706 (h!68154 (exprs!5061 (h!68155 zl!343))) (t!375053 (exprs!5061 (h!68155 zl!343))))))) (Context!9123 (t!375053 (exprs!5061 (Context!9123 (Cons!61706 (h!68154 (exprs!5061 (h!68155 zl!343))) (t!375053 (exprs!5061 (h!68155 zl!343)))))))) (h!68156 s!2326)))))

(declare-fun b!5405003 () Bool)

(assert (=> b!5405003 (= e!3350961 ((_ map or) call!386787 (derivationStepZipperUp!549 (Context!9123 (t!375053 (exprs!5061 (Context!9123 (Cons!61706 (h!68154 (exprs!5061 (h!68155 zl!343))) (t!375053 (exprs!5061 (h!68155 zl!343)))))))) (h!68156 s!2326))))))

(assert (= (and d!1725812 res!2298175) b!5405001))

(assert (= (and d!1725812 c!942148) b!5405003))

(assert (= (and d!1725812 (not c!942148)) b!5405002))

(assert (= (and b!5405002 c!942149) b!5405000))

(assert (= (and b!5405002 (not c!942149)) b!5404999))

(assert (= (or b!5405003 b!5405000) bm!386782))

(declare-fun m!6429372 () Bool)

(assert (=> b!5405001 m!6429372))

(declare-fun m!6429376 () Bool)

(assert (=> bm!386782 m!6429376))

(declare-fun m!6429382 () Bool)

(assert (=> b!5405003 m!6429382))

(assert (=> b!5404840 d!1725812))

(declare-fun d!1725814 () Bool)

(declare-fun choose!40757 ((InoxSet Context!9122) Int) (InoxSet Context!9122))

(assert (=> d!1725814 (= (flatMap!904 z!1189 lambda!281713) (choose!40757 z!1189 lambda!281713))))

(declare-fun bs!1248737 () Bool)

(assert (= bs!1248737 d!1725814))

(declare-fun m!6429396 () Bool)

(assert (=> bs!1248737 m!6429396))

(assert (=> b!5404840 d!1725814))

(declare-fun b!5405004 () Bool)

(declare-fun e!3350965 () (InoxSet Context!9122))

(assert (=> b!5405004 (= e!3350965 ((as const (Array Context!9122 Bool)) false))))

(declare-fun d!1725818 () Bool)

(declare-fun c!942150 () Bool)

(declare-fun e!3350966 () Bool)

(assert (=> d!1725818 (= c!942150 e!3350966)))

(declare-fun res!2298176 () Bool)

(assert (=> d!1725818 (=> (not res!2298176) (not e!3350966))))

(assert (=> d!1725818 (= res!2298176 ((_ is Cons!61706) (exprs!5061 (h!68155 zl!343))))))

(declare-fun e!3350964 () (InoxSet Context!9122))

(assert (=> d!1725818 (= (derivationStepZipperUp!549 (h!68155 zl!343) (h!68156 s!2326)) e!3350964)))

(declare-fun b!5405005 () Bool)

(declare-fun call!386788 () (InoxSet Context!9122))

(assert (=> b!5405005 (= e!3350965 call!386788)))

(declare-fun b!5405006 () Bool)

(assert (=> b!5405006 (= e!3350966 (nullable!5346 (h!68154 (exprs!5061 (h!68155 zl!343)))))))

(declare-fun b!5405007 () Bool)

(assert (=> b!5405007 (= e!3350964 e!3350965)))

(declare-fun c!942151 () Bool)

(assert (=> b!5405007 (= c!942151 ((_ is Cons!61706) (exprs!5061 (h!68155 zl!343))))))

(declare-fun bm!386783 () Bool)

(assert (=> bm!386783 (= call!386788 (derivationStepZipperDown!625 (h!68154 (exprs!5061 (h!68155 zl!343))) (Context!9123 (t!375053 (exprs!5061 (h!68155 zl!343)))) (h!68156 s!2326)))))

(declare-fun b!5405008 () Bool)

(assert (=> b!5405008 (= e!3350964 ((_ map or) call!386788 (derivationStepZipperUp!549 (Context!9123 (t!375053 (exprs!5061 (h!68155 zl!343)))) (h!68156 s!2326))))))

(assert (= (and d!1725818 res!2298176) b!5405006))

(assert (= (and d!1725818 c!942150) b!5405008))

(assert (= (and d!1725818 (not c!942150)) b!5405007))

(assert (= (and b!5405007 c!942151) b!5405005))

(assert (= (and b!5405007 (not c!942151)) b!5405004))

(assert (= (or b!5405008 b!5405005) bm!386783))

(assert (=> b!5405006 m!6429140))

(declare-fun m!6429398 () Bool)

(assert (=> bm!386783 m!6429398))

(declare-fun m!6429400 () Bool)

(assert (=> b!5405008 m!6429400))

(assert (=> b!5404840 d!1725818))

(declare-fun d!1725820 () Bool)

(declare-fun dynLambda!24314 (Int Context!9122) (InoxSet Context!9122))

(assert (=> d!1725820 (= (flatMap!904 z!1189 lambda!281713) (dynLambda!24314 lambda!281713 (h!68155 zl!343)))))

(declare-fun lt!2203687 () Unit!154230)

(declare-fun choose!40758 ((InoxSet Context!9122) Context!9122 Int) Unit!154230)

(assert (=> d!1725820 (= lt!2203687 (choose!40758 z!1189 (h!68155 zl!343) lambda!281713))))

(assert (=> d!1725820 (= z!1189 (store ((as const (Array Context!9122 Bool)) false) (h!68155 zl!343) true))))

(assert (=> d!1725820 (= (lemmaFlatMapOnSingletonSet!436 z!1189 (h!68155 zl!343) lambda!281713) lt!2203687)))

(declare-fun b_lambda!206551 () Bool)

(assert (=> (not b_lambda!206551) (not d!1725820)))

(declare-fun bs!1248738 () Bool)

(assert (= bs!1248738 d!1725820))

(assert (=> bs!1248738 m!6429142))

(declare-fun m!6429402 () Bool)

(assert (=> bs!1248738 m!6429402))

(declare-fun m!6429404 () Bool)

(assert (=> bs!1248738 m!6429404))

(declare-fun m!6429406 () Bool)

(assert (=> bs!1248738 m!6429406))

(assert (=> b!5404840 d!1725820))

(declare-fun b!5405017 () Bool)

(declare-fun e!3350972 () (InoxSet Context!9122))

(assert (=> b!5405017 (= e!3350972 ((as const (Array Context!9122 Bool)) false))))

(declare-fun d!1725822 () Bool)

(declare-fun c!942154 () Bool)

(declare-fun e!3350973 () Bool)

(assert (=> d!1725822 (= c!942154 e!3350973)))

(declare-fun res!2298181 () Bool)

(assert (=> d!1725822 (=> (not res!2298181) (not e!3350973))))

(assert (=> d!1725822 (= res!2298181 ((_ is Cons!61706) (exprs!5061 lt!2203591)))))

(declare-fun e!3350971 () (InoxSet Context!9122))

(assert (=> d!1725822 (= (derivationStepZipperUp!549 lt!2203591 (h!68156 s!2326)) e!3350971)))

(declare-fun b!5405018 () Bool)

(declare-fun call!386789 () (InoxSet Context!9122))

(assert (=> b!5405018 (= e!3350972 call!386789)))

(declare-fun b!5405019 () Bool)

(assert (=> b!5405019 (= e!3350973 (nullable!5346 (h!68154 (exprs!5061 lt!2203591))))))

(declare-fun b!5405020 () Bool)

(assert (=> b!5405020 (= e!3350971 e!3350972)))

(declare-fun c!942155 () Bool)

(assert (=> b!5405020 (= c!942155 ((_ is Cons!61706) (exprs!5061 lt!2203591)))))

(declare-fun bm!386784 () Bool)

(assert (=> bm!386784 (= call!386789 (derivationStepZipperDown!625 (h!68154 (exprs!5061 lt!2203591)) (Context!9123 (t!375053 (exprs!5061 lt!2203591))) (h!68156 s!2326)))))

(declare-fun b!5405021 () Bool)

(assert (=> b!5405021 (= e!3350971 ((_ map or) call!386789 (derivationStepZipperUp!549 (Context!9123 (t!375053 (exprs!5061 lt!2203591))) (h!68156 s!2326))))))

(assert (= (and d!1725822 res!2298181) b!5405019))

(assert (= (and d!1725822 c!942154) b!5405021))

(assert (= (and d!1725822 (not c!942154)) b!5405020))

(assert (= (and b!5405020 c!942155) b!5405018))

(assert (= (and b!5405020 (not c!942155)) b!5405017))

(assert (= (or b!5405021 b!5405018) bm!386784))

(declare-fun m!6429408 () Bool)

(assert (=> b!5405019 m!6429408))

(declare-fun m!6429410 () Bool)

(assert (=> bm!386784 m!6429410))

(declare-fun m!6429412 () Bool)

(assert (=> b!5405021 m!6429412))

(assert (=> b!5404840 d!1725822))

(declare-fun bs!1248740 () Bool)

(declare-fun d!1725824 () Bool)

(assert (= bs!1248740 (and d!1725824 b!5404816)))

(declare-fun lambda!281725 () Int)

(assert (=> bs!1248740 (= lambda!281725 lambda!281715)))

(declare-fun b!5405073 () Bool)

(declare-fun e!3351013 () Regex!15177)

(assert (=> b!5405073 (= e!3351013 (h!68154 (exprs!5061 (h!68155 zl!343))))))

(declare-fun b!5405074 () Bool)

(declare-fun e!3351012 () Bool)

(declare-fun e!3351009 () Bool)

(assert (=> b!5405074 (= e!3351012 e!3351009)))

(declare-fun c!942174 () Bool)

(declare-fun tail!10690 (List!61830) List!61830)

(assert (=> b!5405074 (= c!942174 (isEmpty!33697 (tail!10690 (exprs!5061 (h!68155 zl!343)))))))

(declare-fun b!5405075 () Bool)

(declare-fun lt!2203691 () Regex!15177)

(declare-fun isConcat!493 (Regex!15177) Bool)

(assert (=> b!5405075 (= e!3351009 (isConcat!493 lt!2203691))))

(declare-fun b!5405076 () Bool)

(declare-fun e!3351014 () Regex!15177)

(assert (=> b!5405076 (= e!3351013 e!3351014)))

(declare-fun c!942173 () Bool)

(assert (=> b!5405076 (= c!942173 ((_ is Cons!61706) (exprs!5061 (h!68155 zl!343))))))

(declare-fun b!5405077 () Bool)

(declare-fun e!3351010 () Bool)

(assert (=> b!5405077 (= e!3351010 (isEmpty!33697 (t!375053 (exprs!5061 (h!68155 zl!343)))))))

(declare-fun b!5405079 () Bool)

(declare-fun e!3351011 () Bool)

(assert (=> b!5405079 (= e!3351011 e!3351012)))

(declare-fun c!942171 () Bool)

(assert (=> b!5405079 (= c!942171 (isEmpty!33697 (exprs!5061 (h!68155 zl!343))))))

(declare-fun b!5405080 () Bool)

(declare-fun isEmptyExpr!970 (Regex!15177) Bool)

(assert (=> b!5405080 (= e!3351012 (isEmptyExpr!970 lt!2203691))))

(declare-fun b!5405081 () Bool)

(declare-fun head!11593 (List!61830) Regex!15177)

(assert (=> b!5405081 (= e!3351009 (= lt!2203691 (head!11593 (exprs!5061 (h!68155 zl!343)))))))

(declare-fun b!5405082 () Bool)

(assert (=> b!5405082 (= e!3351014 EmptyExpr!15177)))

(declare-fun b!5405078 () Bool)

(assert (=> b!5405078 (= e!3351014 (Concat!24022 (h!68154 (exprs!5061 (h!68155 zl!343))) (generalisedConcat!846 (t!375053 (exprs!5061 (h!68155 zl!343))))))))

(assert (=> d!1725824 e!3351011))

(declare-fun res!2298204 () Bool)

(assert (=> d!1725824 (=> (not res!2298204) (not e!3351011))))

(assert (=> d!1725824 (= res!2298204 (validRegex!6913 lt!2203691))))

(assert (=> d!1725824 (= lt!2203691 e!3351013)))

(declare-fun c!942172 () Bool)

(assert (=> d!1725824 (= c!942172 e!3351010)))

(declare-fun res!2298203 () Bool)

(assert (=> d!1725824 (=> (not res!2298203) (not e!3351010))))

(assert (=> d!1725824 (= res!2298203 ((_ is Cons!61706) (exprs!5061 (h!68155 zl!343))))))

(assert (=> d!1725824 (forall!14530 (exprs!5061 (h!68155 zl!343)) lambda!281725)))

(assert (=> d!1725824 (= (generalisedConcat!846 (exprs!5061 (h!68155 zl!343))) lt!2203691)))

(assert (= (and d!1725824 res!2298203) b!5405077))

(assert (= (and d!1725824 c!942172) b!5405073))

(assert (= (and d!1725824 (not c!942172)) b!5405076))

(assert (= (and b!5405076 c!942173) b!5405078))

(assert (= (and b!5405076 (not c!942173)) b!5405082))

(assert (= (and d!1725824 res!2298204) b!5405079))

(assert (= (and b!5405079 c!942171) b!5405080))

(assert (= (and b!5405079 (not c!942171)) b!5405074))

(assert (= (and b!5405074 c!942174) b!5405081))

(assert (= (and b!5405074 (not c!942174)) b!5405075))

(declare-fun m!6429438 () Bool)

(assert (=> b!5405075 m!6429438))

(declare-fun m!6429440 () Bool)

(assert (=> b!5405079 m!6429440))

(declare-fun m!6429442 () Bool)

(assert (=> b!5405081 m!6429442))

(declare-fun m!6429444 () Bool)

(assert (=> b!5405074 m!6429444))

(assert (=> b!5405074 m!6429444))

(declare-fun m!6429446 () Bool)

(assert (=> b!5405074 m!6429446))

(assert (=> b!5405077 m!6429154))

(declare-fun m!6429448 () Bool)

(assert (=> d!1725824 m!6429448))

(declare-fun m!6429450 () Bool)

(assert (=> d!1725824 m!6429450))

(declare-fun m!6429452 () Bool)

(assert (=> b!5405078 m!6429452))

(declare-fun m!6429454 () Bool)

(assert (=> b!5405080 m!6429454))

(assert (=> b!5404817 d!1725824))

(declare-fun d!1725836 () Bool)

(assert (=> d!1725836 (= (isEmpty!33696 (t!375054 zl!343)) ((_ is Nil!61707) (t!375054 zl!343)))))

(assert (=> b!5404802 d!1725836))

(declare-fun bm!386804 () Bool)

(declare-fun call!386809 () Bool)

(declare-fun c!942187 () Bool)

(assert (=> bm!386804 (= call!386809 (validRegex!6913 (ite c!942187 (regTwo!30867 r!7292) (regTwo!30866 r!7292))))))

(declare-fun b!5405121 () Bool)

(declare-fun e!3351042 () Bool)

(declare-fun e!3351041 () Bool)

(assert (=> b!5405121 (= e!3351042 e!3351041)))

(declare-fun res!2298220 () Bool)

(assert (=> b!5405121 (= res!2298220 (not (nullable!5346 (reg!15506 r!7292))))))

(assert (=> b!5405121 (=> (not res!2298220) (not e!3351041))))

(declare-fun b!5405122 () Bool)

(declare-fun res!2298221 () Bool)

(declare-fun e!3351047 () Bool)

(assert (=> b!5405122 (=> res!2298221 e!3351047)))

(assert (=> b!5405122 (= res!2298221 (not ((_ is Concat!24022) r!7292)))))

(declare-fun e!3351044 () Bool)

(assert (=> b!5405122 (= e!3351044 e!3351047)))

(declare-fun b!5405123 () Bool)

(declare-fun res!2298219 () Bool)

(declare-fun e!3351043 () Bool)

(assert (=> b!5405123 (=> (not res!2298219) (not e!3351043))))

(declare-fun call!386811 () Bool)

(assert (=> b!5405123 (= res!2298219 call!386811)))

(assert (=> b!5405123 (= e!3351044 e!3351043)))

(declare-fun b!5405125 () Bool)

(assert (=> b!5405125 (= e!3351043 call!386809)))

(declare-fun b!5405126 () Bool)

(declare-fun call!386810 () Bool)

(assert (=> b!5405126 (= e!3351041 call!386810)))

(declare-fun b!5405127 () Bool)

(declare-fun e!3351046 () Bool)

(assert (=> b!5405127 (= e!3351047 e!3351046)))

(declare-fun res!2298222 () Bool)

(assert (=> b!5405127 (=> (not res!2298222) (not e!3351046))))

(assert (=> b!5405127 (= res!2298222 call!386811)))

(declare-fun b!5405128 () Bool)

(assert (=> b!5405128 (= e!3351042 e!3351044)))

(assert (=> b!5405128 (= c!942187 ((_ is Union!15177) r!7292))))

(declare-fun bm!386805 () Bool)

(assert (=> bm!386805 (= call!386811 call!386810)))

(declare-fun d!1725838 () Bool)

(declare-fun res!2298223 () Bool)

(declare-fun e!3351045 () Bool)

(assert (=> d!1725838 (=> res!2298223 e!3351045)))

(assert (=> d!1725838 (= res!2298223 ((_ is ElementMatch!15177) r!7292))))

(assert (=> d!1725838 (= (validRegex!6913 r!7292) e!3351045)))

(declare-fun b!5405124 () Bool)

(assert (=> b!5405124 (= e!3351046 call!386809)))

(declare-fun bm!386806 () Bool)

(declare-fun c!942188 () Bool)

(assert (=> bm!386806 (= call!386810 (validRegex!6913 (ite c!942188 (reg!15506 r!7292) (ite c!942187 (regOne!30867 r!7292) (regOne!30866 r!7292)))))))

(declare-fun b!5405129 () Bool)

(assert (=> b!5405129 (= e!3351045 e!3351042)))

(assert (=> b!5405129 (= c!942188 ((_ is Star!15177) r!7292))))

(assert (= (and d!1725838 (not res!2298223)) b!5405129))

(assert (= (and b!5405129 c!942188) b!5405121))

(assert (= (and b!5405129 (not c!942188)) b!5405128))

(assert (= (and b!5405121 res!2298220) b!5405126))

(assert (= (and b!5405128 c!942187) b!5405123))

(assert (= (and b!5405128 (not c!942187)) b!5405122))

(assert (= (and b!5405123 res!2298219) b!5405125))

(assert (= (and b!5405122 (not res!2298221)) b!5405127))

(assert (= (and b!5405127 res!2298222) b!5405124))

(assert (= (or b!5405125 b!5405124) bm!386804))

(assert (= (or b!5405123 b!5405127) bm!386805))

(assert (= (or b!5405126 bm!386805) bm!386806))

(declare-fun m!6429470 () Bool)

(assert (=> bm!386804 m!6429470))

(declare-fun m!6429472 () Bool)

(assert (=> b!5405121 m!6429472))

(declare-fun m!6429474 () Bool)

(assert (=> bm!386806 m!6429474))

(assert (=> start!567642 d!1725838))

(declare-fun d!1725846 () Bool)

(declare-fun lt!2203697 () Regex!15177)

(assert (=> d!1725846 (validRegex!6913 lt!2203697)))

(assert (=> d!1725846 (= lt!2203697 (generalisedUnion!1106 (unfocusZipperList!619 (Cons!61707 lt!2203623 Nil!61707))))))

(assert (=> d!1725846 (= (unfocusZipper!919 (Cons!61707 lt!2203623 Nil!61707)) lt!2203697)))

(declare-fun bs!1248744 () Bool)

(assert (= bs!1248744 d!1725846))

(declare-fun m!6429482 () Bool)

(assert (=> bs!1248744 m!6429482))

(declare-fun m!6429484 () Bool)

(assert (=> bs!1248744 m!6429484))

(assert (=> bs!1248744 m!6429484))

(declare-fun m!6429486 () Bool)

(assert (=> bs!1248744 m!6429486))

(assert (=> b!5404821 d!1725846))

(declare-fun d!1725850 () Bool)

(declare-fun c!942189 () Bool)

(assert (=> d!1725850 (= c!942189 (isEmpty!33699 (t!375055 s!2326)))))

(declare-fun e!3351048 () Bool)

(assert (=> d!1725850 (= (matchZipper!1421 lt!2203610 (t!375055 s!2326)) e!3351048)))

(declare-fun b!5405130 () Bool)

(assert (=> b!5405130 (= e!3351048 (nullableZipper!1437 lt!2203610))))

(declare-fun b!5405131 () Bool)

(assert (=> b!5405131 (= e!3351048 (matchZipper!1421 (derivationStepZipper!1416 lt!2203610 (head!11592 (t!375055 s!2326))) (tail!10689 (t!375055 s!2326))))))

(assert (= (and d!1725850 c!942189) b!5405130))

(assert (= (and d!1725850 (not c!942189)) b!5405131))

(declare-fun m!6429488 () Bool)

(assert (=> d!1725850 m!6429488))

(declare-fun m!6429490 () Bool)

(assert (=> b!5405130 m!6429490))

(declare-fun m!6429492 () Bool)

(assert (=> b!5405131 m!6429492))

(assert (=> b!5405131 m!6429492))

(declare-fun m!6429494 () Bool)

(assert (=> b!5405131 m!6429494))

(declare-fun m!6429496 () Bool)

(assert (=> b!5405131 m!6429496))

(assert (=> b!5405131 m!6429494))

(assert (=> b!5405131 m!6429496))

(declare-fun m!6429498 () Bool)

(assert (=> b!5405131 m!6429498))

(assert (=> b!5404819 d!1725850))

(declare-fun d!1725852 () Bool)

(assert (=> d!1725852 (= (nullable!5346 (regOne!30866 (regOne!30866 r!7292))) (nullableFct!1588 (regOne!30866 (regOne!30866 r!7292))))))

(declare-fun bs!1248745 () Bool)

(assert (= bs!1248745 d!1725852))

(declare-fun m!6429500 () Bool)

(assert (=> bs!1248745 m!6429500))

(assert (=> b!5404841 d!1725852))

(declare-fun bs!1248746 () Bool)

(declare-fun d!1725854 () Bool)

(assert (= bs!1248746 (and d!1725854 b!5404816)))

(declare-fun lambda!281728 () Int)

(assert (=> bs!1248746 (= lambda!281728 lambda!281715)))

(declare-fun bs!1248747 () Bool)

(assert (= bs!1248747 (and d!1725854 d!1725824)))

(assert (=> bs!1248747 (= lambda!281728 lambda!281725)))

(assert (=> d!1725854 (= (inv!81189 setElem!35189) (forall!14530 (exprs!5061 setElem!35189) lambda!281728))))

(declare-fun bs!1248748 () Bool)

(assert (= bs!1248748 d!1725854))

(declare-fun m!6429502 () Bool)

(assert (=> bs!1248748 m!6429502))

(assert (=> setNonEmpty!35189 d!1725854))

(assert (=> b!5404823 d!1725850))

(declare-fun d!1725856 () Bool)

(declare-fun c!942190 () Bool)

(assert (=> d!1725856 (= c!942190 (isEmpty!33699 (_2!35679 lt!2203613)))))

(declare-fun e!3351049 () Bool)

(assert (=> d!1725856 (= (matchZipper!1421 lt!2203605 (_2!35679 lt!2203613)) e!3351049)))

(declare-fun b!5405132 () Bool)

(assert (=> b!5405132 (= e!3351049 (nullableZipper!1437 lt!2203605))))

(declare-fun b!5405133 () Bool)

(assert (=> b!5405133 (= e!3351049 (matchZipper!1421 (derivationStepZipper!1416 lt!2203605 (head!11592 (_2!35679 lt!2203613))) (tail!10689 (_2!35679 lt!2203613))))))

(assert (= (and d!1725856 c!942190) b!5405132))

(assert (= (and d!1725856 (not c!942190)) b!5405133))

(declare-fun m!6429504 () Bool)

(assert (=> d!1725856 m!6429504))

(declare-fun m!6429506 () Bool)

(assert (=> b!5405132 m!6429506))

(declare-fun m!6429508 () Bool)

(assert (=> b!5405133 m!6429508))

(assert (=> b!5405133 m!6429508))

(declare-fun m!6429510 () Bool)

(assert (=> b!5405133 m!6429510))

(declare-fun m!6429512 () Bool)

(assert (=> b!5405133 m!6429512))

(assert (=> b!5405133 m!6429510))

(assert (=> b!5405133 m!6429512))

(declare-fun m!6429514 () Bool)

(assert (=> b!5405133 m!6429514))

(assert (=> b!5404824 d!1725856))

(declare-fun d!1725858 () Bool)

(declare-fun lt!2203698 () Regex!15177)

(assert (=> d!1725858 (validRegex!6913 lt!2203698)))

(assert (=> d!1725858 (= lt!2203698 (generalisedUnion!1106 (unfocusZipperList!619 zl!343)))))

(assert (=> d!1725858 (= (unfocusZipper!919 zl!343) lt!2203698)))

(declare-fun bs!1248749 () Bool)

(assert (= bs!1248749 d!1725858))

(declare-fun m!6429516 () Bool)

(assert (=> bs!1248749 m!6429516))

(assert (=> bs!1248749 m!6429080))

(assert (=> bs!1248749 m!6429080))

(assert (=> bs!1248749 m!6429082))

(assert (=> b!5404845 d!1725858))

(declare-fun d!1725860 () Bool)

(assert (=> d!1725860 (= (flatMap!904 lt!2203630 lambda!281713) (choose!40757 lt!2203630 lambda!281713))))

(declare-fun bs!1248750 () Bool)

(assert (= bs!1248750 d!1725860))

(declare-fun m!6429518 () Bool)

(assert (=> bs!1248750 m!6429518))

(assert (=> b!5404826 d!1725860))

(declare-fun b!5405150 () Bool)

(declare-fun e!3351059 () (InoxSet Context!9122))

(assert (=> b!5405150 (= e!3351059 ((as const (Array Context!9122 Bool)) false))))

(declare-fun d!1725862 () Bool)

(declare-fun c!942197 () Bool)

(declare-fun e!3351060 () Bool)

(assert (=> d!1725862 (= c!942197 e!3351060)))

(declare-fun res!2298226 () Bool)

(assert (=> d!1725862 (=> (not res!2298226) (not e!3351060))))

(assert (=> d!1725862 (= res!2298226 ((_ is Cons!61706) (exprs!5061 lt!2203623)))))

(declare-fun e!3351058 () (InoxSet Context!9122))

(assert (=> d!1725862 (= (derivationStepZipperUp!549 lt!2203623 (h!68156 s!2326)) e!3351058)))

(declare-fun b!5405152 () Bool)

(declare-fun call!386812 () (InoxSet Context!9122))

(assert (=> b!5405152 (= e!3351059 call!386812)))

(declare-fun b!5405154 () Bool)

(assert (=> b!5405154 (= e!3351060 (nullable!5346 (h!68154 (exprs!5061 lt!2203623))))))

(declare-fun b!5405155 () Bool)

(assert (=> b!5405155 (= e!3351058 e!3351059)))

(declare-fun c!942198 () Bool)

(assert (=> b!5405155 (= c!942198 ((_ is Cons!61706) (exprs!5061 lt!2203623)))))

(declare-fun bm!386807 () Bool)

(assert (=> bm!386807 (= call!386812 (derivationStepZipperDown!625 (h!68154 (exprs!5061 lt!2203623)) (Context!9123 (t!375053 (exprs!5061 lt!2203623))) (h!68156 s!2326)))))

(declare-fun b!5405156 () Bool)

(assert (=> b!5405156 (= e!3351058 ((_ map or) call!386812 (derivationStepZipperUp!549 (Context!9123 (t!375053 (exprs!5061 lt!2203623))) (h!68156 s!2326))))))

(assert (= (and d!1725862 res!2298226) b!5405154))

(assert (= (and d!1725862 c!942197) b!5405156))

(assert (= (and d!1725862 (not c!942197)) b!5405155))

(assert (= (and b!5405155 c!942198) b!5405152))

(assert (= (and b!5405155 (not c!942198)) b!5405150))

(assert (= (or b!5405156 b!5405152) bm!386807))

(declare-fun m!6429520 () Bool)

(assert (=> b!5405154 m!6429520))

(declare-fun m!6429522 () Bool)

(assert (=> bm!386807 m!6429522))

(declare-fun m!6429524 () Bool)

(assert (=> b!5405156 m!6429524))

(assert (=> b!5404826 d!1725862))

(declare-fun d!1725864 () Bool)

(assert (=> d!1725864 (= (flatMap!904 lt!2203630 lambda!281713) (dynLambda!24314 lambda!281713 lt!2203623))))

(declare-fun lt!2203699 () Unit!154230)

(assert (=> d!1725864 (= lt!2203699 (choose!40758 lt!2203630 lt!2203623 lambda!281713))))

(assert (=> d!1725864 (= lt!2203630 (store ((as const (Array Context!9122 Bool)) false) lt!2203623 true))))

(assert (=> d!1725864 (= (lemmaFlatMapOnSingletonSet!436 lt!2203630 lt!2203623 lambda!281713) lt!2203699)))

(declare-fun b_lambda!206555 () Bool)

(assert (=> (not b_lambda!206555) (not d!1725864)))

(declare-fun bs!1248751 () Bool)

(assert (= bs!1248751 d!1725864))

(assert (=> bs!1248751 m!6429114))

(declare-fun m!6429526 () Bool)

(assert (=> bs!1248751 m!6429526))

(declare-fun m!6429528 () Bool)

(assert (=> bs!1248751 m!6429528))

(assert (=> bs!1248751 m!6429120))

(assert (=> b!5404826 d!1725864))

(declare-fun bs!1248752 () Bool)

(declare-fun d!1725866 () Bool)

(assert (= bs!1248752 (and d!1725866 b!5404840)))

(declare-fun lambda!281731 () Int)

(assert (=> bs!1248752 (= lambda!281731 lambda!281713)))

(assert (=> d!1725866 true))

(assert (=> d!1725866 (= (derivationStepZipper!1416 lt!2203630 (h!68156 s!2326)) (flatMap!904 lt!2203630 lambda!281731))))

(declare-fun bs!1248753 () Bool)

(assert (= bs!1248753 d!1725866))

(declare-fun m!6429530 () Bool)

(assert (=> bs!1248753 m!6429530))

(assert (=> b!5404826 d!1725866))

(declare-fun bm!386820 () Bool)

(declare-fun call!386825 () Bool)

(declare-fun c!942205 () Bool)

(assert (=> bm!386820 (= call!386825 (validRegex!6913 (ite c!942205 (regTwo!30867 (regTwo!30866 r!7292)) (regTwo!30866 (regTwo!30866 r!7292)))))))

(declare-fun b!5405163 () Bool)

(declare-fun e!3351066 () Bool)

(declare-fun e!3351065 () Bool)

(assert (=> b!5405163 (= e!3351066 e!3351065)))

(declare-fun res!2298228 () Bool)

(assert (=> b!5405163 (= res!2298228 (not (nullable!5346 (reg!15506 (regTwo!30866 r!7292)))))))

(assert (=> b!5405163 (=> (not res!2298228) (not e!3351065))))

(declare-fun b!5405164 () Bool)

(declare-fun res!2298229 () Bool)

(declare-fun e!3351071 () Bool)

(assert (=> b!5405164 (=> res!2298229 e!3351071)))

(assert (=> b!5405164 (= res!2298229 (not ((_ is Concat!24022) (regTwo!30866 r!7292))))))

(declare-fun e!3351068 () Bool)

(assert (=> b!5405164 (= e!3351068 e!3351071)))

(declare-fun b!5405165 () Bool)

(declare-fun res!2298227 () Bool)

(declare-fun e!3351067 () Bool)

(assert (=> b!5405165 (=> (not res!2298227) (not e!3351067))))

(declare-fun call!386827 () Bool)

(assert (=> b!5405165 (= res!2298227 call!386827)))

(assert (=> b!5405165 (= e!3351068 e!3351067)))

(declare-fun b!5405167 () Bool)

(assert (=> b!5405167 (= e!3351067 call!386825)))

(declare-fun b!5405168 () Bool)

(declare-fun call!386826 () Bool)

(assert (=> b!5405168 (= e!3351065 call!386826)))

(declare-fun b!5405169 () Bool)

(declare-fun e!3351070 () Bool)

(assert (=> b!5405169 (= e!3351071 e!3351070)))

(declare-fun res!2298230 () Bool)

(assert (=> b!5405169 (=> (not res!2298230) (not e!3351070))))

(assert (=> b!5405169 (= res!2298230 call!386827)))

(declare-fun b!5405170 () Bool)

(assert (=> b!5405170 (= e!3351066 e!3351068)))

(assert (=> b!5405170 (= c!942205 ((_ is Union!15177) (regTwo!30866 r!7292)))))

(declare-fun bm!386821 () Bool)

(assert (=> bm!386821 (= call!386827 call!386826)))

(declare-fun d!1725868 () Bool)

(declare-fun res!2298231 () Bool)

(declare-fun e!3351069 () Bool)

(assert (=> d!1725868 (=> res!2298231 e!3351069)))

(assert (=> d!1725868 (= res!2298231 ((_ is ElementMatch!15177) (regTwo!30866 r!7292)))))

(assert (=> d!1725868 (= (validRegex!6913 (regTwo!30866 r!7292)) e!3351069)))

(declare-fun b!5405166 () Bool)

(assert (=> b!5405166 (= e!3351070 call!386825)))

(declare-fun c!942206 () Bool)

(declare-fun bm!386822 () Bool)

(assert (=> bm!386822 (= call!386826 (validRegex!6913 (ite c!942206 (reg!15506 (regTwo!30866 r!7292)) (ite c!942205 (regOne!30867 (regTwo!30866 r!7292)) (regOne!30866 (regTwo!30866 r!7292))))))))

(declare-fun b!5405171 () Bool)

(assert (=> b!5405171 (= e!3351069 e!3351066)))

(assert (=> b!5405171 (= c!942206 ((_ is Star!15177) (regTwo!30866 r!7292)))))

(assert (= (and d!1725868 (not res!2298231)) b!5405171))

(assert (= (and b!5405171 c!942206) b!5405163))

(assert (= (and b!5405171 (not c!942206)) b!5405170))

(assert (= (and b!5405163 res!2298228) b!5405168))

(assert (= (and b!5405170 c!942205) b!5405165))

(assert (= (and b!5405170 (not c!942205)) b!5405164))

(assert (= (and b!5405165 res!2298227) b!5405167))

(assert (= (and b!5405164 (not res!2298229)) b!5405169))

(assert (= (and b!5405169 res!2298230) b!5405166))

(assert (= (or b!5405167 b!5405166) bm!386820))

(assert (= (or b!5405165 b!5405169) bm!386821))

(assert (= (or b!5405168 bm!386821) bm!386822))

(declare-fun m!6429532 () Bool)

(assert (=> bm!386820 m!6429532))

(declare-fun m!6429534 () Bool)

(assert (=> b!5405163 m!6429534))

(declare-fun m!6429536 () Bool)

(assert (=> bm!386822 m!6429536))

(assert (=> b!5404847 d!1725868))

(declare-fun bs!1248760 () Bool)

(declare-fun b!5405241 () Bool)

(assert (= bs!1248760 (and b!5405241 b!5404807)))

(declare-fun lambda!281742 () Int)

(assert (=> bs!1248760 (not (= lambda!281742 lambda!281711))))

(assert (=> bs!1248760 (not (= lambda!281742 lambda!281712))))

(declare-fun bs!1248761 () Bool)

(assert (= bs!1248761 (and b!5405241 b!5404812)))

(assert (=> bs!1248761 (not (= lambda!281742 lambda!281716))))

(assert (=> bs!1248761 (not (= lambda!281742 lambda!281717))))

(assert (=> b!5405241 true))

(assert (=> b!5405241 true))

(declare-fun bs!1248762 () Bool)

(declare-fun b!5405235 () Bool)

(assert (= bs!1248762 (and b!5405235 b!5404812)))

(declare-fun lambda!281743 () Int)

(assert (=> bs!1248762 (not (= lambda!281743 lambda!281716))))

(declare-fun bs!1248763 () Bool)

(assert (= bs!1248763 (and b!5405235 b!5405241)))

(assert (=> bs!1248763 (not (= lambda!281743 lambda!281742))))

(assert (=> bs!1248762 (= (and (= (regOne!30866 lt!2203620) lt!2203635) (= (regTwo!30866 lt!2203620) (regTwo!30866 r!7292))) (= lambda!281743 lambda!281717))))

(declare-fun bs!1248764 () Bool)

(assert (= bs!1248764 (and b!5405235 b!5404807)))

(assert (=> bs!1248764 (= (and (= (regOne!30866 lt!2203620) (regOne!30866 r!7292)) (= (regTwo!30866 lt!2203620) (regTwo!30866 r!7292))) (= lambda!281743 lambda!281712))))

(assert (=> bs!1248764 (not (= lambda!281743 lambda!281711))))

(assert (=> b!5405235 true))

(assert (=> b!5405235 true))

(declare-fun d!1725870 () Bool)

(declare-fun c!942229 () Bool)

(assert (=> d!1725870 (= c!942229 ((_ is EmptyExpr!15177) lt!2203620))))

(declare-fun e!3351111 () Bool)

(assert (=> d!1725870 (= (matchRSpec!2280 lt!2203620 s!2326) e!3351111)))

(declare-fun b!5405233 () Bool)

(declare-fun e!3351108 () Bool)

(declare-fun e!3351110 () Bool)

(assert (=> b!5405233 (= e!3351108 e!3351110)))

(declare-fun c!942232 () Bool)

(assert (=> b!5405233 (= c!942232 ((_ is Star!15177) lt!2203620))))

(declare-fun b!5405234 () Bool)

(declare-fun e!3351106 () Bool)

(assert (=> b!5405234 (= e!3351108 e!3351106)))

(declare-fun res!2298253 () Bool)

(assert (=> b!5405234 (= res!2298253 (matchRSpec!2280 (regOne!30867 lt!2203620) s!2326))))

(assert (=> b!5405234 (=> res!2298253 e!3351106)))

(declare-fun call!386841 () Bool)

(assert (=> b!5405235 (= e!3351110 call!386841)))

(declare-fun b!5405236 () Bool)

(declare-fun call!386840 () Bool)

(assert (=> b!5405236 (= e!3351111 call!386840)))

(declare-fun b!5405237 () Bool)

(declare-fun res!2298252 () Bool)

(declare-fun e!3351109 () Bool)

(assert (=> b!5405237 (=> res!2298252 e!3351109)))

(assert (=> b!5405237 (= res!2298252 call!386840)))

(assert (=> b!5405237 (= e!3351110 e!3351109)))

(declare-fun bm!386835 () Bool)

(assert (=> bm!386835 (= call!386840 (isEmpty!33699 s!2326))))

(declare-fun b!5405238 () Bool)

(declare-fun e!3351107 () Bool)

(assert (=> b!5405238 (= e!3351111 e!3351107)))

(declare-fun res!2298251 () Bool)

(assert (=> b!5405238 (= res!2298251 (not ((_ is EmptyLang!15177) lt!2203620)))))

(assert (=> b!5405238 (=> (not res!2298251) (not e!3351107))))

(declare-fun b!5405239 () Bool)

(assert (=> b!5405239 (= e!3351106 (matchRSpec!2280 (regTwo!30867 lt!2203620) s!2326))))

(declare-fun b!5405240 () Bool)

(declare-fun c!942230 () Bool)

(assert (=> b!5405240 (= c!942230 ((_ is ElementMatch!15177) lt!2203620))))

(declare-fun e!3351105 () Bool)

(assert (=> b!5405240 (= e!3351107 e!3351105)))

(assert (=> b!5405241 (= e!3351109 call!386841)))

(declare-fun b!5405242 () Bool)

(declare-fun c!942231 () Bool)

(assert (=> b!5405242 (= c!942231 ((_ is Union!15177) lt!2203620))))

(assert (=> b!5405242 (= e!3351105 e!3351108)))

(declare-fun bm!386836 () Bool)

(assert (=> bm!386836 (= call!386841 (Exists!2358 (ite c!942232 lambda!281742 lambda!281743)))))

(declare-fun b!5405243 () Bool)

(assert (=> b!5405243 (= e!3351105 (= s!2326 (Cons!61708 (c!942101 lt!2203620) Nil!61708)))))

(assert (= (and d!1725870 c!942229) b!5405236))

(assert (= (and d!1725870 (not c!942229)) b!5405238))

(assert (= (and b!5405238 res!2298251) b!5405240))

(assert (= (and b!5405240 c!942230) b!5405243))

(assert (= (and b!5405240 (not c!942230)) b!5405242))

(assert (= (and b!5405242 c!942231) b!5405234))

(assert (= (and b!5405242 (not c!942231)) b!5405233))

(assert (= (and b!5405234 (not res!2298253)) b!5405239))

(assert (= (and b!5405233 c!942232) b!5405237))

(assert (= (and b!5405233 (not c!942232)) b!5405235))

(assert (= (and b!5405237 (not res!2298252)) b!5405241))

(assert (= (or b!5405241 b!5405235) bm!386836))

(assert (= (or b!5405236 b!5405237) bm!386835))

(declare-fun m!6429580 () Bool)

(assert (=> b!5405234 m!6429580))

(assert (=> bm!386835 m!6429342))

(declare-fun m!6429582 () Bool)

(assert (=> b!5405239 m!6429582))

(declare-fun m!6429584 () Bool)

(assert (=> bm!386836 m!6429584))

(assert (=> b!5404805 d!1725870))

(declare-fun bm!386839 () Bool)

(declare-fun call!386844 () Bool)

(assert (=> bm!386839 (= call!386844 (isEmpty!33699 s!2326))))

(declare-fun b!5405284 () Bool)

(declare-fun e!3351132 () Bool)

(declare-fun derivativeStep!4258 (Regex!15177 C!30624) Regex!15177)

(assert (=> b!5405284 (= e!3351132 (matchR!7362 (derivativeStep!4258 lt!2203620 (head!11592 s!2326)) (tail!10689 s!2326)))))

(declare-fun b!5405285 () Bool)

(declare-fun res!2298282 () Bool)

(declare-fun e!3351133 () Bool)

(assert (=> b!5405285 (=> (not res!2298282) (not e!3351133))))

(assert (=> b!5405285 (= res!2298282 (isEmpty!33699 (tail!10689 s!2326)))))

(declare-fun d!1725888 () Bool)

(declare-fun e!3351135 () Bool)

(assert (=> d!1725888 e!3351135))

(declare-fun c!942245 () Bool)

(assert (=> d!1725888 (= c!942245 ((_ is EmptyExpr!15177) lt!2203620))))

(declare-fun lt!2203714 () Bool)

(assert (=> d!1725888 (= lt!2203714 e!3351132)))

(declare-fun c!942243 () Bool)

(assert (=> d!1725888 (= c!942243 (isEmpty!33699 s!2326))))

(assert (=> d!1725888 (validRegex!6913 lt!2203620)))

(assert (=> d!1725888 (= (matchR!7362 lt!2203620 s!2326) lt!2203714)))

(declare-fun b!5405286 () Bool)

(declare-fun e!3351137 () Bool)

(assert (=> b!5405286 (= e!3351135 e!3351137)))

(declare-fun c!942244 () Bool)

(assert (=> b!5405286 (= c!942244 ((_ is EmptyLang!15177) lt!2203620))))

(declare-fun b!5405287 () Bool)

(assert (=> b!5405287 (= e!3351135 (= lt!2203714 call!386844))))

(declare-fun b!5405288 () Bool)

(assert (=> b!5405288 (= e!3351132 (nullable!5346 lt!2203620))))

(declare-fun b!5405289 () Bool)

(declare-fun res!2298281 () Bool)

(declare-fun e!3351138 () Bool)

(assert (=> b!5405289 (=> res!2298281 e!3351138)))

(assert (=> b!5405289 (= res!2298281 e!3351133)))

(declare-fun res!2298277 () Bool)

(assert (=> b!5405289 (=> (not res!2298277) (not e!3351133))))

(assert (=> b!5405289 (= res!2298277 lt!2203714)))

(declare-fun b!5405290 () Bool)

(declare-fun e!3351134 () Bool)

(assert (=> b!5405290 (= e!3351138 e!3351134)))

(declare-fun res!2298279 () Bool)

(assert (=> b!5405290 (=> (not res!2298279) (not e!3351134))))

(assert (=> b!5405290 (= res!2298279 (not lt!2203714))))

(declare-fun b!5405291 () Bool)

(declare-fun res!2298280 () Bool)

(declare-fun e!3351136 () Bool)

(assert (=> b!5405291 (=> res!2298280 e!3351136)))

(assert (=> b!5405291 (= res!2298280 (not (isEmpty!33699 (tail!10689 s!2326))))))

(declare-fun b!5405292 () Bool)

(assert (=> b!5405292 (= e!3351134 e!3351136)))

(declare-fun res!2298278 () Bool)

(assert (=> b!5405292 (=> res!2298278 e!3351136)))

(assert (=> b!5405292 (= res!2298278 call!386844)))

(declare-fun b!5405293 () Bool)

(declare-fun res!2298283 () Bool)

(assert (=> b!5405293 (=> res!2298283 e!3351138)))

(assert (=> b!5405293 (= res!2298283 (not ((_ is ElementMatch!15177) lt!2203620)))))

(assert (=> b!5405293 (= e!3351137 e!3351138)))

(declare-fun b!5405294 () Bool)

(assert (=> b!5405294 (= e!3351137 (not lt!2203714))))

(declare-fun b!5405295 () Bool)

(assert (=> b!5405295 (= e!3351133 (= (head!11592 s!2326) (c!942101 lt!2203620)))))

(declare-fun b!5405296 () Bool)

(declare-fun res!2298276 () Bool)

(assert (=> b!5405296 (=> (not res!2298276) (not e!3351133))))

(assert (=> b!5405296 (= res!2298276 (not call!386844))))

(declare-fun b!5405297 () Bool)

(assert (=> b!5405297 (= e!3351136 (not (= (head!11592 s!2326) (c!942101 lt!2203620))))))

(assert (= (and d!1725888 c!942243) b!5405288))

(assert (= (and d!1725888 (not c!942243)) b!5405284))

(assert (= (and d!1725888 c!942245) b!5405287))

(assert (= (and d!1725888 (not c!942245)) b!5405286))

(assert (= (and b!5405286 c!942244) b!5405294))

(assert (= (and b!5405286 (not c!942244)) b!5405293))

(assert (= (and b!5405293 (not res!2298283)) b!5405289))

(assert (= (and b!5405289 res!2298277) b!5405296))

(assert (= (and b!5405296 res!2298276) b!5405285))

(assert (= (and b!5405285 res!2298282) b!5405295))

(assert (= (and b!5405289 (not res!2298281)) b!5405290))

(assert (= (and b!5405290 res!2298279) b!5405292))

(assert (= (and b!5405292 (not res!2298278)) b!5405291))

(assert (= (and b!5405291 (not res!2298280)) b!5405297))

(assert (= (or b!5405287 b!5405292 b!5405296) bm!386839))

(assert (=> b!5405295 m!6429346))

(declare-fun m!6429614 () Bool)

(assert (=> b!5405288 m!6429614))

(assert (=> b!5405291 m!6429350))

(assert (=> b!5405291 m!6429350))

(declare-fun m!6429616 () Bool)

(assert (=> b!5405291 m!6429616))

(assert (=> bm!386839 m!6429342))

(assert (=> b!5405297 m!6429346))

(assert (=> d!1725888 m!6429342))

(declare-fun m!6429618 () Bool)

(assert (=> d!1725888 m!6429618))

(assert (=> b!5405285 m!6429350))

(assert (=> b!5405285 m!6429350))

(assert (=> b!5405285 m!6429616))

(assert (=> b!5405284 m!6429346))

(assert (=> b!5405284 m!6429346))

(declare-fun m!6429620 () Bool)

(assert (=> b!5405284 m!6429620))

(assert (=> b!5405284 m!6429350))

(assert (=> b!5405284 m!6429620))

(assert (=> b!5405284 m!6429350))

(declare-fun m!6429622 () Bool)

(assert (=> b!5405284 m!6429622))

(assert (=> b!5404805 d!1725888))

(declare-fun d!1725898 () Bool)

(assert (=> d!1725898 (= (matchR!7362 lt!2203620 s!2326) (matchRSpec!2280 lt!2203620 s!2326))))

(declare-fun lt!2203717 () Unit!154230)

(declare-fun choose!40761 (Regex!15177 List!61832) Unit!154230)

(assert (=> d!1725898 (= lt!2203717 (choose!40761 lt!2203620 s!2326))))

(assert (=> d!1725898 (validRegex!6913 lt!2203620)))

(assert (=> d!1725898 (= (mainMatchTheorem!2280 lt!2203620 s!2326) lt!2203717)))

(declare-fun bs!1248770 () Bool)

(assert (= bs!1248770 d!1725898))

(assert (=> bs!1248770 m!6429150))

(assert (=> bs!1248770 m!6429148))

(declare-fun m!6429626 () Bool)

(assert (=> bs!1248770 m!6429626))

(assert (=> bs!1248770 m!6429618))

(assert (=> b!5404805 d!1725898))

(declare-fun d!1725902 () Bool)

(declare-fun c!942246 () Bool)

(assert (=> d!1725902 (= c!942246 (isEmpty!33699 (_1!35679 lt!2203613)))))

(declare-fun e!3351139 () Bool)

(assert (=> d!1725902 (= (matchZipper!1421 lt!2203626 (_1!35679 lt!2203613)) e!3351139)))

(declare-fun b!5405300 () Bool)

(assert (=> b!5405300 (= e!3351139 (nullableZipper!1437 lt!2203626))))

(declare-fun b!5405301 () Bool)

(assert (=> b!5405301 (= e!3351139 (matchZipper!1421 (derivationStepZipper!1416 lt!2203626 (head!11592 (_1!35679 lt!2203613))) (tail!10689 (_1!35679 lt!2203613))))))

(assert (= (and d!1725902 c!942246) b!5405300))

(assert (= (and d!1725902 (not c!942246)) b!5405301))

(declare-fun m!6429628 () Bool)

(assert (=> d!1725902 m!6429628))

(declare-fun m!6429630 () Bool)

(assert (=> b!5405300 m!6429630))

(declare-fun m!6429632 () Bool)

(assert (=> b!5405301 m!6429632))

(assert (=> b!5405301 m!6429632))

(declare-fun m!6429634 () Bool)

(assert (=> b!5405301 m!6429634))

(declare-fun m!6429636 () Bool)

(assert (=> b!5405301 m!6429636))

(assert (=> b!5405301 m!6429634))

(assert (=> b!5405301 m!6429636))

(declare-fun m!6429638 () Bool)

(assert (=> b!5405301 m!6429638))

(assert (=> b!5404804 d!1725902))

(declare-fun d!1725904 () Bool)

(declare-fun c!942247 () Bool)

(assert (=> d!1725904 (= c!942247 (isEmpty!33699 (t!375055 s!2326)))))

(declare-fun e!3351142 () Bool)

(assert (=> d!1725904 (= (matchZipper!1421 lt!2203622 (t!375055 s!2326)) e!3351142)))

(declare-fun b!5405304 () Bool)

(assert (=> b!5405304 (= e!3351142 (nullableZipper!1437 lt!2203622))))

(declare-fun b!5405305 () Bool)

(assert (=> b!5405305 (= e!3351142 (matchZipper!1421 (derivationStepZipper!1416 lt!2203622 (head!11592 (t!375055 s!2326))) (tail!10689 (t!375055 s!2326))))))

(assert (= (and d!1725904 c!942247) b!5405304))

(assert (= (and d!1725904 (not c!942247)) b!5405305))

(assert (=> d!1725904 m!6429488))

(declare-fun m!6429640 () Bool)

(assert (=> b!5405304 m!6429640))

(assert (=> b!5405305 m!6429492))

(assert (=> b!5405305 m!6429492))

(declare-fun m!6429642 () Bool)

(assert (=> b!5405305 m!6429642))

(assert (=> b!5405305 m!6429496))

(assert (=> b!5405305 m!6429642))

(assert (=> b!5405305 m!6429496))

(declare-fun m!6429644 () Bool)

(assert (=> b!5405305 m!6429644))

(assert (=> b!5404825 d!1725904))

(declare-fun d!1725906 () Bool)

(declare-fun choose!40763 (Int) Bool)

(assert (=> d!1725906 (= (Exists!2358 lambda!281711) (choose!40763 lambda!281711))))

(declare-fun bs!1248771 () Bool)

(assert (= bs!1248771 d!1725906))

(declare-fun m!6429648 () Bool)

(assert (=> bs!1248771 m!6429648))

(assert (=> b!5404807 d!1725906))

(declare-fun bs!1248773 () Bool)

(declare-fun d!1725910 () Bool)

(assert (= bs!1248773 (and d!1725910 b!5404812)))

(declare-fun lambda!281751 () Int)

(assert (=> bs!1248773 (= (= (regOne!30866 r!7292) lt!2203635) (= lambda!281751 lambda!281716))))

(declare-fun bs!1248774 () Bool)

(assert (= bs!1248774 (and d!1725910 b!5405241)))

(assert (=> bs!1248774 (not (= lambda!281751 lambda!281742))))

(assert (=> bs!1248773 (not (= lambda!281751 lambda!281717))))

(declare-fun bs!1248775 () Bool)

(assert (= bs!1248775 (and d!1725910 b!5404807)))

(assert (=> bs!1248775 (not (= lambda!281751 lambda!281712))))

(declare-fun bs!1248776 () Bool)

(assert (= bs!1248776 (and d!1725910 b!5405235)))

(assert (=> bs!1248776 (not (= lambda!281751 lambda!281743))))

(assert (=> bs!1248775 (= lambda!281751 lambda!281711)))

(assert (=> d!1725910 true))

(assert (=> d!1725910 true))

(assert (=> d!1725910 true))

(assert (=> d!1725910 (= (isDefined!11991 (findConcatSeparation!1702 (regOne!30866 r!7292) (regTwo!30866 r!7292) Nil!61708 s!2326 s!2326)) (Exists!2358 lambda!281751))))

(declare-fun lt!2203723 () Unit!154230)

(declare-fun choose!40765 (Regex!15177 Regex!15177 List!61832) Unit!154230)

(assert (=> d!1725910 (= lt!2203723 (choose!40765 (regOne!30866 r!7292) (regTwo!30866 r!7292) s!2326))))

(assert (=> d!1725910 (validRegex!6913 (regOne!30866 r!7292))))

(assert (=> d!1725910 (= (lemmaFindConcatSeparationEquivalentToExists!1466 (regOne!30866 r!7292) (regTwo!30866 r!7292) s!2326) lt!2203723)))

(declare-fun bs!1248777 () Bool)

(assert (= bs!1248777 d!1725910))

(assert (=> bs!1248777 m!6429100))

(declare-fun m!6429670 () Bool)

(assert (=> bs!1248777 m!6429670))

(declare-fun m!6429672 () Bool)

(assert (=> bs!1248777 m!6429672))

(assert (=> bs!1248777 m!6429100))

(assert (=> bs!1248777 m!6429102))

(declare-fun m!6429674 () Bool)

(assert (=> bs!1248777 m!6429674))

(assert (=> b!5404807 d!1725910))

(declare-fun b!5405374 () Bool)

(declare-fun lt!2203742 () Unit!154230)

(declare-fun lt!2203743 () Unit!154230)

(assert (=> b!5405374 (= lt!2203742 lt!2203743)))

(assert (=> b!5405374 (= (++!13528 (++!13528 Nil!61708 (Cons!61708 (h!68156 s!2326) Nil!61708)) (t!375055 s!2326)) s!2326)))

(assert (=> b!5405374 (= lt!2203743 (lemmaMoveElementToOtherListKeepsConcatEq!1832 Nil!61708 (h!68156 s!2326) (t!375055 s!2326) s!2326))))

(declare-fun e!3351183 () Option!15288)

(assert (=> b!5405374 (= e!3351183 (findConcatSeparation!1702 (regOne!30866 r!7292) (regTwo!30866 r!7292) (++!13528 Nil!61708 (Cons!61708 (h!68156 s!2326) Nil!61708)) (t!375055 s!2326) s!2326))))

(declare-fun b!5405375 () Bool)

(declare-fun e!3351184 () Bool)

(declare-fun lt!2203741 () Option!15288)

(assert (=> b!5405375 (= e!3351184 (not (isDefined!11991 lt!2203741)))))

(declare-fun b!5405376 () Bool)

(declare-fun e!3351182 () Bool)

(assert (=> b!5405376 (= e!3351182 (= (++!13528 (_1!35679 (get!21268 lt!2203741)) (_2!35679 (get!21268 lt!2203741))) s!2326))))

(declare-fun b!5405377 () Bool)

(declare-fun res!2298325 () Bool)

(assert (=> b!5405377 (=> (not res!2298325) (not e!3351182))))

(assert (=> b!5405377 (= res!2298325 (matchR!7362 (regOne!30866 r!7292) (_1!35679 (get!21268 lt!2203741))))))

(declare-fun b!5405378 () Bool)

(declare-fun e!3351186 () Option!15288)

(assert (=> b!5405378 (= e!3351186 e!3351183)))

(declare-fun c!942262 () Bool)

(assert (=> b!5405378 (= c!942262 ((_ is Nil!61708) s!2326))))

(declare-fun d!1725920 () Bool)

(assert (=> d!1725920 e!3351184))

(declare-fun res!2298328 () Bool)

(assert (=> d!1725920 (=> res!2298328 e!3351184)))

(assert (=> d!1725920 (= res!2298328 e!3351182)))

(declare-fun res!2298326 () Bool)

(assert (=> d!1725920 (=> (not res!2298326) (not e!3351182))))

(assert (=> d!1725920 (= res!2298326 (isDefined!11991 lt!2203741))))

(assert (=> d!1725920 (= lt!2203741 e!3351186)))

(declare-fun c!942263 () Bool)

(declare-fun e!3351185 () Bool)

(assert (=> d!1725920 (= c!942263 e!3351185)))

(declare-fun res!2298329 () Bool)

(assert (=> d!1725920 (=> (not res!2298329) (not e!3351185))))

(assert (=> d!1725920 (= res!2298329 (matchR!7362 (regOne!30866 r!7292) Nil!61708))))

(assert (=> d!1725920 (validRegex!6913 (regOne!30866 r!7292))))

(assert (=> d!1725920 (= (findConcatSeparation!1702 (regOne!30866 r!7292) (regTwo!30866 r!7292) Nil!61708 s!2326 s!2326) lt!2203741)))

(declare-fun b!5405373 () Bool)

(assert (=> b!5405373 (= e!3351183 None!15287)))

(declare-fun b!5405379 () Bool)

(declare-fun res!2298327 () Bool)

(assert (=> b!5405379 (=> (not res!2298327) (not e!3351182))))

(assert (=> b!5405379 (= res!2298327 (matchR!7362 (regTwo!30866 r!7292) (_2!35679 (get!21268 lt!2203741))))))

(declare-fun b!5405380 () Bool)

(assert (=> b!5405380 (= e!3351186 (Some!15287 (tuple2!64753 Nil!61708 s!2326)))))

(declare-fun b!5405381 () Bool)

(assert (=> b!5405381 (= e!3351185 (matchR!7362 (regTwo!30866 r!7292) s!2326))))

(assert (= (and d!1725920 res!2298329) b!5405381))

(assert (= (and d!1725920 c!942263) b!5405380))

(assert (= (and d!1725920 (not c!942263)) b!5405378))

(assert (= (and b!5405378 c!942262) b!5405373))

(assert (= (and b!5405378 (not c!942262)) b!5405374))

(assert (= (and d!1725920 res!2298326) b!5405377))

(assert (= (and b!5405377 res!2298325) b!5405379))

(assert (= (and b!5405379 res!2298327) b!5405376))

(assert (= (and d!1725920 (not res!2298328)) b!5405375))

(declare-fun m!6429696 () Bool)

(assert (=> b!5405377 m!6429696))

(declare-fun m!6429698 () Bool)

(assert (=> b!5405377 m!6429698))

(declare-fun m!6429700 () Bool)

(assert (=> b!5405375 m!6429700))

(assert (=> d!1725920 m!6429700))

(declare-fun m!6429702 () Bool)

(assert (=> d!1725920 m!6429702))

(assert (=> d!1725920 m!6429670))

(declare-fun m!6429704 () Bool)

(assert (=> b!5405381 m!6429704))

(assert (=> b!5405379 m!6429696))

(declare-fun m!6429706 () Bool)

(assert (=> b!5405379 m!6429706))

(assert (=> b!5405374 m!6429332))

(assert (=> b!5405374 m!6429332))

(assert (=> b!5405374 m!6429334))

(assert (=> b!5405374 m!6429336))

(assert (=> b!5405374 m!6429332))

(declare-fun m!6429708 () Bool)

(assert (=> b!5405374 m!6429708))

(assert (=> b!5405376 m!6429696))

(declare-fun m!6429710 () Bool)

(assert (=> b!5405376 m!6429710))

(assert (=> b!5404807 d!1725920))

(declare-fun d!1725926 () Bool)

(assert (=> d!1725926 (= (Exists!2358 lambda!281712) (choose!40763 lambda!281712))))

(declare-fun bs!1248779 () Bool)

(assert (= bs!1248779 d!1725926))

(declare-fun m!6429712 () Bool)

(assert (=> bs!1248779 m!6429712))

(assert (=> b!5404807 d!1725926))

(declare-fun bs!1248783 () Bool)

(declare-fun d!1725928 () Bool)

(assert (= bs!1248783 (and d!1725928 b!5404812)))

(declare-fun lambda!281763 () Int)

(assert (=> bs!1248783 (= (= (regOne!30866 r!7292) lt!2203635) (= lambda!281763 lambda!281716))))

(declare-fun bs!1248784 () Bool)

(assert (= bs!1248784 (and d!1725928 d!1725910)))

(assert (=> bs!1248784 (= lambda!281763 lambda!281751)))

(declare-fun bs!1248785 () Bool)

(assert (= bs!1248785 (and d!1725928 b!5405241)))

(assert (=> bs!1248785 (not (= lambda!281763 lambda!281742))))

(assert (=> bs!1248783 (not (= lambda!281763 lambda!281717))))

(declare-fun bs!1248786 () Bool)

(assert (= bs!1248786 (and d!1725928 b!5404807)))

(assert (=> bs!1248786 (not (= lambda!281763 lambda!281712))))

(declare-fun bs!1248787 () Bool)

(assert (= bs!1248787 (and d!1725928 b!5405235)))

(assert (=> bs!1248787 (not (= lambda!281763 lambda!281743))))

(assert (=> bs!1248786 (= lambda!281763 lambda!281711)))

(assert (=> d!1725928 true))

(assert (=> d!1725928 true))

(assert (=> d!1725928 true))

(declare-fun lambda!281765 () Int)

(assert (=> bs!1248783 (not (= lambda!281765 lambda!281716))))

(assert (=> bs!1248784 (not (= lambda!281765 lambda!281751))))

(declare-fun bs!1248790 () Bool)

(assert (= bs!1248790 d!1725928))

(assert (=> bs!1248790 (not (= lambda!281765 lambda!281763))))

(assert (=> bs!1248785 (not (= lambda!281765 lambda!281742))))

(assert (=> bs!1248783 (= (= (regOne!30866 r!7292) lt!2203635) (= lambda!281765 lambda!281717))))

(assert (=> bs!1248786 (= lambda!281765 lambda!281712)))

(assert (=> bs!1248787 (= (and (= (regOne!30866 r!7292) (regOne!30866 lt!2203620)) (= (regTwo!30866 r!7292) (regTwo!30866 lt!2203620))) (= lambda!281765 lambda!281743))))

(assert (=> bs!1248786 (not (= lambda!281765 lambda!281711))))

(assert (=> d!1725928 true))

(assert (=> d!1725928 true))

(assert (=> d!1725928 true))

(assert (=> d!1725928 (= (Exists!2358 lambda!281763) (Exists!2358 lambda!281765))))

(declare-fun lt!2203749 () Unit!154230)

(declare-fun choose!40768 (Regex!15177 Regex!15177 List!61832) Unit!154230)

(assert (=> d!1725928 (= lt!2203749 (choose!40768 (regOne!30866 r!7292) (regTwo!30866 r!7292) s!2326))))

(assert (=> d!1725928 (validRegex!6913 (regOne!30866 r!7292))))

(assert (=> d!1725928 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1012 (regOne!30866 r!7292) (regTwo!30866 r!7292) s!2326) lt!2203749)))

(declare-fun m!6429718 () Bool)

(assert (=> bs!1248790 m!6429718))

(declare-fun m!6429720 () Bool)

(assert (=> bs!1248790 m!6429720))

(declare-fun m!6429722 () Bool)

(assert (=> bs!1248790 m!6429722))

(assert (=> bs!1248790 m!6429670))

(assert (=> b!5404807 d!1725928))

(declare-fun d!1725932 () Bool)

(assert (=> d!1725932 (= (isDefined!11991 (findConcatSeparation!1702 (regOne!30866 r!7292) (regTwo!30866 r!7292) Nil!61708 s!2326 s!2326)) (not (isEmpty!33698 (findConcatSeparation!1702 (regOne!30866 r!7292) (regTwo!30866 r!7292) Nil!61708 s!2326 s!2326))))))

(declare-fun bs!1248793 () Bool)

(assert (= bs!1248793 d!1725932))

(assert (=> bs!1248793 m!6429100))

(declare-fun m!6429724 () Bool)

(assert (=> bs!1248793 m!6429724))

(assert (=> b!5404807 d!1725932))

(declare-fun bs!1248794 () Bool)

(declare-fun b!5405406 () Bool)

(assert (= bs!1248794 (and b!5405406 b!5404812)))

(declare-fun lambda!281767 () Int)

(assert (=> bs!1248794 (not (= lambda!281767 lambda!281716))))

(declare-fun bs!1248796 () Bool)

(assert (= bs!1248796 (and b!5405406 d!1725910)))

(assert (=> bs!1248796 (not (= lambda!281767 lambda!281751))))

(declare-fun bs!1248797 () Bool)

(assert (= bs!1248797 (and b!5405406 d!1725928)))

(assert (=> bs!1248797 (not (= lambda!281767 lambda!281763))))

(declare-fun bs!1248799 () Bool)

(assert (= bs!1248799 (and b!5405406 b!5405241)))

(assert (=> bs!1248799 (= (and (= (reg!15506 r!7292) (reg!15506 lt!2203620)) (= r!7292 lt!2203620)) (= lambda!281767 lambda!281742))))

(assert (=> bs!1248797 (not (= lambda!281767 lambda!281765))))

(assert (=> bs!1248794 (not (= lambda!281767 lambda!281717))))

(declare-fun bs!1248800 () Bool)

(assert (= bs!1248800 (and b!5405406 b!5404807)))

(assert (=> bs!1248800 (not (= lambda!281767 lambda!281712))))

(declare-fun bs!1248801 () Bool)

(assert (= bs!1248801 (and b!5405406 b!5405235)))

(assert (=> bs!1248801 (not (= lambda!281767 lambda!281743))))

(assert (=> bs!1248800 (not (= lambda!281767 lambda!281711))))

(assert (=> b!5405406 true))

(assert (=> b!5405406 true))

(declare-fun bs!1248802 () Bool)

(declare-fun b!5405400 () Bool)

(assert (= bs!1248802 (and b!5405400 b!5404812)))

(declare-fun lambda!281768 () Int)

(assert (=> bs!1248802 (not (= lambda!281768 lambda!281716))))

(declare-fun bs!1248803 () Bool)

(assert (= bs!1248803 (and b!5405400 d!1725910)))

(assert (=> bs!1248803 (not (= lambda!281768 lambda!281751))))

(declare-fun bs!1248804 () Bool)

(assert (= bs!1248804 (and b!5405400 d!1725928)))

(assert (=> bs!1248804 (not (= lambda!281768 lambda!281763))))

(declare-fun bs!1248805 () Bool)

(assert (= bs!1248805 (and b!5405400 b!5405241)))

(assert (=> bs!1248805 (not (= lambda!281768 lambda!281742))))

(declare-fun bs!1248806 () Bool)

(assert (= bs!1248806 (and b!5405400 b!5405406)))

(assert (=> bs!1248806 (not (= lambda!281768 lambda!281767))))

(assert (=> bs!1248804 (= lambda!281768 lambda!281765)))

(assert (=> bs!1248802 (= (= (regOne!30866 r!7292) lt!2203635) (= lambda!281768 lambda!281717))))

(declare-fun bs!1248807 () Bool)

(assert (= bs!1248807 (and b!5405400 b!5404807)))

(assert (=> bs!1248807 (= lambda!281768 lambda!281712)))

(declare-fun bs!1248808 () Bool)

(assert (= bs!1248808 (and b!5405400 b!5405235)))

(assert (=> bs!1248808 (= (and (= (regOne!30866 r!7292) (regOne!30866 lt!2203620)) (= (regTwo!30866 r!7292) (regTwo!30866 lt!2203620))) (= lambda!281768 lambda!281743))))

(assert (=> bs!1248807 (not (= lambda!281768 lambda!281711))))

(assert (=> b!5405400 true))

(assert (=> b!5405400 true))

(declare-fun d!1725934 () Bool)

(declare-fun c!942264 () Bool)

(assert (=> d!1725934 (= c!942264 ((_ is EmptyExpr!15177) r!7292))))

(declare-fun e!3351201 () Bool)

(assert (=> d!1725934 (= (matchRSpec!2280 r!7292 s!2326) e!3351201)))

(declare-fun b!5405398 () Bool)

(declare-fun e!3351198 () Bool)

(declare-fun e!3351200 () Bool)

(assert (=> b!5405398 (= e!3351198 e!3351200)))

(declare-fun c!942267 () Bool)

(assert (=> b!5405398 (= c!942267 ((_ is Star!15177) r!7292))))

(declare-fun b!5405399 () Bool)

(declare-fun e!3351196 () Bool)

(assert (=> b!5405399 (= e!3351198 e!3351196)))

(declare-fun res!2298348 () Bool)

(assert (=> b!5405399 (= res!2298348 (matchRSpec!2280 (regOne!30867 r!7292) s!2326))))

(assert (=> b!5405399 (=> res!2298348 e!3351196)))

(declare-fun call!386849 () Bool)

(assert (=> b!5405400 (= e!3351200 call!386849)))

(declare-fun b!5405401 () Bool)

(declare-fun call!386848 () Bool)

(assert (=> b!5405401 (= e!3351201 call!386848)))

(declare-fun b!5405402 () Bool)

(declare-fun res!2298347 () Bool)

(declare-fun e!3351199 () Bool)

(assert (=> b!5405402 (=> res!2298347 e!3351199)))

(assert (=> b!5405402 (= res!2298347 call!386848)))

(assert (=> b!5405402 (= e!3351200 e!3351199)))

(declare-fun bm!386843 () Bool)

(assert (=> bm!386843 (= call!386848 (isEmpty!33699 s!2326))))

(declare-fun b!5405403 () Bool)

(declare-fun e!3351197 () Bool)

(assert (=> b!5405403 (= e!3351201 e!3351197)))

(declare-fun res!2298346 () Bool)

(assert (=> b!5405403 (= res!2298346 (not ((_ is EmptyLang!15177) r!7292)))))

(assert (=> b!5405403 (=> (not res!2298346) (not e!3351197))))

(declare-fun b!5405404 () Bool)

(assert (=> b!5405404 (= e!3351196 (matchRSpec!2280 (regTwo!30867 r!7292) s!2326))))

(declare-fun b!5405405 () Bool)

(declare-fun c!942265 () Bool)

(assert (=> b!5405405 (= c!942265 ((_ is ElementMatch!15177) r!7292))))

(declare-fun e!3351195 () Bool)

(assert (=> b!5405405 (= e!3351197 e!3351195)))

(assert (=> b!5405406 (= e!3351199 call!386849)))

(declare-fun b!5405407 () Bool)

(declare-fun c!942266 () Bool)

(assert (=> b!5405407 (= c!942266 ((_ is Union!15177) r!7292))))

(assert (=> b!5405407 (= e!3351195 e!3351198)))

(declare-fun bm!386844 () Bool)

(assert (=> bm!386844 (= call!386849 (Exists!2358 (ite c!942267 lambda!281767 lambda!281768)))))

(declare-fun b!5405408 () Bool)

(assert (=> b!5405408 (= e!3351195 (= s!2326 (Cons!61708 (c!942101 r!7292) Nil!61708)))))

(assert (= (and d!1725934 c!942264) b!5405401))

(assert (= (and d!1725934 (not c!942264)) b!5405403))

(assert (= (and b!5405403 res!2298346) b!5405405))

(assert (= (and b!5405405 c!942265) b!5405408))

(assert (= (and b!5405405 (not c!942265)) b!5405407))

(assert (= (and b!5405407 c!942266) b!5405399))

(assert (= (and b!5405407 (not c!942266)) b!5405398))

(assert (= (and b!5405399 (not res!2298348)) b!5405404))

(assert (= (and b!5405398 c!942267) b!5405402))

(assert (= (and b!5405398 (not c!942267)) b!5405400))

(assert (= (and b!5405402 (not res!2298347)) b!5405406))

(assert (= (or b!5405406 b!5405400) bm!386844))

(assert (= (or b!5405401 b!5405402) bm!386843))

(declare-fun m!6429740 () Bool)

(assert (=> b!5405399 m!6429740))

(assert (=> bm!386843 m!6429342))

(declare-fun m!6429742 () Bool)

(assert (=> b!5405404 m!6429742))

(declare-fun m!6429744 () Bool)

(assert (=> bm!386844 m!6429744))

(assert (=> b!5404829 d!1725934))

(declare-fun bm!386845 () Bool)

(declare-fun call!386850 () Bool)

(assert (=> bm!386845 (= call!386850 (isEmpty!33699 s!2326))))

(declare-fun b!5405409 () Bool)

(declare-fun e!3351202 () Bool)

(assert (=> b!5405409 (= e!3351202 (matchR!7362 (derivativeStep!4258 r!7292 (head!11592 s!2326)) (tail!10689 s!2326)))))

(declare-fun b!5405410 () Bool)

(declare-fun res!2298355 () Bool)

(declare-fun e!3351203 () Bool)

(assert (=> b!5405410 (=> (not res!2298355) (not e!3351203))))

(assert (=> b!5405410 (= res!2298355 (isEmpty!33699 (tail!10689 s!2326)))))

(declare-fun d!1725942 () Bool)

(declare-fun e!3351205 () Bool)

(assert (=> d!1725942 e!3351205))

(declare-fun c!942270 () Bool)

(assert (=> d!1725942 (= c!942270 ((_ is EmptyExpr!15177) r!7292))))

(declare-fun lt!2203752 () Bool)

(assert (=> d!1725942 (= lt!2203752 e!3351202)))

(declare-fun c!942268 () Bool)

(assert (=> d!1725942 (= c!942268 (isEmpty!33699 s!2326))))

(assert (=> d!1725942 (validRegex!6913 r!7292)))

(assert (=> d!1725942 (= (matchR!7362 r!7292 s!2326) lt!2203752)))

(declare-fun b!5405411 () Bool)

(declare-fun e!3351207 () Bool)

(assert (=> b!5405411 (= e!3351205 e!3351207)))

(declare-fun c!942269 () Bool)

(assert (=> b!5405411 (= c!942269 ((_ is EmptyLang!15177) r!7292))))

(declare-fun b!5405412 () Bool)

(assert (=> b!5405412 (= e!3351205 (= lt!2203752 call!386850))))

(declare-fun b!5405413 () Bool)

(assert (=> b!5405413 (= e!3351202 (nullable!5346 r!7292))))

(declare-fun b!5405414 () Bool)

(declare-fun res!2298354 () Bool)

(declare-fun e!3351208 () Bool)

(assert (=> b!5405414 (=> res!2298354 e!3351208)))

(assert (=> b!5405414 (= res!2298354 e!3351203)))

(declare-fun res!2298350 () Bool)

(assert (=> b!5405414 (=> (not res!2298350) (not e!3351203))))

(assert (=> b!5405414 (= res!2298350 lt!2203752)))

(declare-fun b!5405415 () Bool)

(declare-fun e!3351204 () Bool)

(assert (=> b!5405415 (= e!3351208 e!3351204)))

(declare-fun res!2298352 () Bool)

(assert (=> b!5405415 (=> (not res!2298352) (not e!3351204))))

(assert (=> b!5405415 (= res!2298352 (not lt!2203752))))

(declare-fun b!5405416 () Bool)

(declare-fun res!2298353 () Bool)

(declare-fun e!3351206 () Bool)

(assert (=> b!5405416 (=> res!2298353 e!3351206)))

(assert (=> b!5405416 (= res!2298353 (not (isEmpty!33699 (tail!10689 s!2326))))))

(declare-fun b!5405417 () Bool)

(assert (=> b!5405417 (= e!3351204 e!3351206)))

(declare-fun res!2298351 () Bool)

(assert (=> b!5405417 (=> res!2298351 e!3351206)))

(assert (=> b!5405417 (= res!2298351 call!386850)))

(declare-fun b!5405418 () Bool)

(declare-fun res!2298356 () Bool)

(assert (=> b!5405418 (=> res!2298356 e!3351208)))

(assert (=> b!5405418 (= res!2298356 (not ((_ is ElementMatch!15177) r!7292)))))

(assert (=> b!5405418 (= e!3351207 e!3351208)))

(declare-fun b!5405419 () Bool)

(assert (=> b!5405419 (= e!3351207 (not lt!2203752))))

(declare-fun b!5405420 () Bool)

(assert (=> b!5405420 (= e!3351203 (= (head!11592 s!2326) (c!942101 r!7292)))))

(declare-fun b!5405421 () Bool)

(declare-fun res!2298349 () Bool)

(assert (=> b!5405421 (=> (not res!2298349) (not e!3351203))))

(assert (=> b!5405421 (= res!2298349 (not call!386850))))

(declare-fun b!5405422 () Bool)

(assert (=> b!5405422 (= e!3351206 (not (= (head!11592 s!2326) (c!942101 r!7292))))))

(assert (= (and d!1725942 c!942268) b!5405413))

(assert (= (and d!1725942 (not c!942268)) b!5405409))

(assert (= (and d!1725942 c!942270) b!5405412))

(assert (= (and d!1725942 (not c!942270)) b!5405411))

(assert (= (and b!5405411 c!942269) b!5405419))

(assert (= (and b!5405411 (not c!942269)) b!5405418))

(assert (= (and b!5405418 (not res!2298356)) b!5405414))

(assert (= (and b!5405414 res!2298350) b!5405421))

(assert (= (and b!5405421 res!2298349) b!5405410))

(assert (= (and b!5405410 res!2298355) b!5405420))

(assert (= (and b!5405414 (not res!2298354)) b!5405415))

(assert (= (and b!5405415 res!2298352) b!5405417))

(assert (= (and b!5405417 (not res!2298351)) b!5405416))

(assert (= (and b!5405416 (not res!2298353)) b!5405422))

(assert (= (or b!5405412 b!5405417 b!5405421) bm!386845))

(assert (=> b!5405420 m!6429346))

(declare-fun m!6429746 () Bool)

(assert (=> b!5405413 m!6429746))

(assert (=> b!5405416 m!6429350))

(assert (=> b!5405416 m!6429350))

(assert (=> b!5405416 m!6429616))

(assert (=> bm!386845 m!6429342))

(assert (=> b!5405422 m!6429346))

(assert (=> d!1725942 m!6429342))

(assert (=> d!1725942 m!6429086))

(assert (=> b!5405410 m!6429350))

(assert (=> b!5405410 m!6429350))

(assert (=> b!5405410 m!6429616))

(assert (=> b!5405409 m!6429346))

(assert (=> b!5405409 m!6429346))

(declare-fun m!6429748 () Bool)

(assert (=> b!5405409 m!6429748))

(assert (=> b!5405409 m!6429350))

(assert (=> b!5405409 m!6429748))

(assert (=> b!5405409 m!6429350))

(declare-fun m!6429750 () Bool)

(assert (=> b!5405409 m!6429750))

(assert (=> b!5404829 d!1725942))

(declare-fun d!1725944 () Bool)

(assert (=> d!1725944 (= (matchR!7362 r!7292 s!2326) (matchRSpec!2280 r!7292 s!2326))))

(declare-fun lt!2203753 () Unit!154230)

(assert (=> d!1725944 (= lt!2203753 (choose!40761 r!7292 s!2326))))

(assert (=> d!1725944 (validRegex!6913 r!7292)))

(assert (=> d!1725944 (= (mainMatchTheorem!2280 r!7292 s!2326) lt!2203753)))

(declare-fun bs!1248809 () Bool)

(assert (= bs!1248809 d!1725944))

(assert (=> bs!1248809 m!6429236))

(assert (=> bs!1248809 m!6429234))

(declare-fun m!6429752 () Bool)

(assert (=> bs!1248809 m!6429752))

(assert (=> bs!1248809 m!6429086))

(assert (=> b!5404829 d!1725944))

(declare-fun d!1725946 () Bool)

(declare-fun lt!2203754 () Regex!15177)

(assert (=> d!1725946 (validRegex!6913 lt!2203754)))

(assert (=> d!1725946 (= lt!2203754 (generalisedUnion!1106 (unfocusZipperList!619 lt!2203614)))))

(assert (=> d!1725946 (= (unfocusZipper!919 lt!2203614) lt!2203754)))

(declare-fun bs!1248810 () Bool)

(assert (= bs!1248810 d!1725946))

(declare-fun m!6429754 () Bool)

(assert (=> bs!1248810 m!6429754))

(declare-fun m!6429756 () Bool)

(assert (=> bs!1248810 m!6429756))

(assert (=> bs!1248810 m!6429756))

(declare-fun m!6429758 () Bool)

(assert (=> bs!1248810 m!6429758))

(assert (=> b!5404828 d!1725946))

(declare-fun d!1725948 () Bool)

(declare-fun lt!2203755 () Regex!15177)

(assert (=> d!1725948 (validRegex!6913 lt!2203755)))

(assert (=> d!1725948 (= lt!2203755 (generalisedUnion!1106 (unfocusZipperList!619 lt!2203595)))))

(assert (=> d!1725948 (= (unfocusZipper!919 lt!2203595) lt!2203755)))

(declare-fun bs!1248811 () Bool)

(assert (= bs!1248811 d!1725948))

(declare-fun m!6429760 () Bool)

(assert (=> bs!1248811 m!6429760))

(declare-fun m!6429762 () Bool)

(assert (=> bs!1248811 m!6429762))

(assert (=> bs!1248811 m!6429762))

(declare-fun m!6429764 () Bool)

(assert (=> bs!1248811 m!6429764))

(assert (=> b!5404831 d!1725948))

(declare-fun d!1725950 () Bool)

(assert (=> d!1725950 (= (flatMap!904 lt!2203605 lambda!281713) (dynLambda!24314 lambda!281713 lt!2203621))))

(declare-fun lt!2203756 () Unit!154230)

(assert (=> d!1725950 (= lt!2203756 (choose!40758 lt!2203605 lt!2203621 lambda!281713))))

(assert (=> d!1725950 (= lt!2203605 (store ((as const (Array Context!9122 Bool)) false) lt!2203621 true))))

(assert (=> d!1725950 (= (lemmaFlatMapOnSingletonSet!436 lt!2203605 lt!2203621 lambda!281713) lt!2203756)))

(declare-fun b_lambda!206561 () Bool)

(assert (=> (not b_lambda!206561) (not d!1725950)))

(declare-fun bs!1248812 () Bool)

(assert (= bs!1248812 d!1725950))

(assert (=> bs!1248812 m!6429172))

(declare-fun m!6429766 () Bool)

(assert (=> bs!1248812 m!6429766))

(declare-fun m!6429768 () Bool)

(assert (=> bs!1248812 m!6429768))

(assert (=> bs!1248812 m!6429182))

(assert (=> b!5404831 d!1725950))

(declare-fun b!5405445 () Bool)

(declare-fun e!3351224 () (InoxSet Context!9122))

(assert (=> b!5405445 (= e!3351224 ((as const (Array Context!9122 Bool)) false))))

(declare-fun d!1725952 () Bool)

(declare-fun c!942279 () Bool)

(declare-fun e!3351225 () Bool)

(assert (=> d!1725952 (= c!942279 e!3351225)))

(declare-fun res!2298363 () Bool)

(assert (=> d!1725952 (=> (not res!2298363) (not e!3351225))))

(assert (=> d!1725952 (= res!2298363 ((_ is Cons!61706) (exprs!5061 lt!2203621)))))

(declare-fun e!3351223 () (InoxSet Context!9122))

(assert (=> d!1725952 (= (derivationStepZipperUp!549 lt!2203621 (h!68156 s!2326)) e!3351223)))

(declare-fun b!5405446 () Bool)

(declare-fun call!386851 () (InoxSet Context!9122))

(assert (=> b!5405446 (= e!3351224 call!386851)))

(declare-fun b!5405447 () Bool)

(assert (=> b!5405447 (= e!3351225 (nullable!5346 (h!68154 (exprs!5061 lt!2203621))))))

(declare-fun b!5405448 () Bool)

(assert (=> b!5405448 (= e!3351223 e!3351224)))

(declare-fun c!942280 () Bool)

(assert (=> b!5405448 (= c!942280 ((_ is Cons!61706) (exprs!5061 lt!2203621)))))

(declare-fun bm!386846 () Bool)

(assert (=> bm!386846 (= call!386851 (derivationStepZipperDown!625 (h!68154 (exprs!5061 lt!2203621)) (Context!9123 (t!375053 (exprs!5061 lt!2203621))) (h!68156 s!2326)))))

(declare-fun b!5405449 () Bool)

(assert (=> b!5405449 (= e!3351223 ((_ map or) call!386851 (derivationStepZipperUp!549 (Context!9123 (t!375053 (exprs!5061 lt!2203621))) (h!68156 s!2326))))))

(assert (= (and d!1725952 res!2298363) b!5405447))

(assert (= (and d!1725952 c!942279) b!5405449))

(assert (= (and d!1725952 (not c!942279)) b!5405448))

(assert (= (and b!5405448 c!942280) b!5405446))

(assert (= (and b!5405448 (not c!942280)) b!5405445))

(assert (= (or b!5405449 b!5405446) bm!386846))

(declare-fun m!6429770 () Bool)

(assert (=> b!5405447 m!6429770))

(declare-fun m!6429772 () Bool)

(assert (=> bm!386846 m!6429772))

(declare-fun m!6429774 () Bool)

(assert (=> b!5405449 m!6429774))

(assert (=> b!5404831 d!1725952))

(declare-fun d!1725954 () Bool)

(assert (=> d!1725954 (= (flatMap!904 lt!2203626 lambda!281713) (dynLambda!24314 lambda!281713 lt!2203624))))

(declare-fun lt!2203757 () Unit!154230)

(assert (=> d!1725954 (= lt!2203757 (choose!40758 lt!2203626 lt!2203624 lambda!281713))))

(assert (=> d!1725954 (= lt!2203626 (store ((as const (Array Context!9122 Bool)) false) lt!2203624 true))))

(assert (=> d!1725954 (= (lemmaFlatMapOnSingletonSet!436 lt!2203626 lt!2203624 lambda!281713) lt!2203757)))

(declare-fun b_lambda!206563 () Bool)

(assert (=> (not b_lambda!206563) (not d!1725954)))

(declare-fun bs!1248813 () Bool)

(assert (= bs!1248813 d!1725954))

(assert (=> bs!1248813 m!6429184))

(declare-fun m!6429776 () Bool)

(assert (=> bs!1248813 m!6429776))

(declare-fun m!6429778 () Bool)

(assert (=> bs!1248813 m!6429778))

(assert (=> bs!1248813 m!6429180))

(assert (=> b!5404831 d!1725954))

(declare-fun b!5405450 () Bool)

(declare-fun e!3351227 () (InoxSet Context!9122))

(assert (=> b!5405450 (= e!3351227 ((as const (Array Context!9122 Bool)) false))))

(declare-fun d!1725956 () Bool)

(declare-fun c!942281 () Bool)

(declare-fun e!3351228 () Bool)

(assert (=> d!1725956 (= c!942281 e!3351228)))

(declare-fun res!2298364 () Bool)

(assert (=> d!1725956 (=> (not res!2298364) (not e!3351228))))

(assert (=> d!1725956 (= res!2298364 ((_ is Cons!61706) (exprs!5061 lt!2203624)))))

(declare-fun e!3351226 () (InoxSet Context!9122))

(assert (=> d!1725956 (= (derivationStepZipperUp!549 lt!2203624 (h!68156 s!2326)) e!3351226)))

(declare-fun b!5405451 () Bool)

(declare-fun call!386852 () (InoxSet Context!9122))

(assert (=> b!5405451 (= e!3351227 call!386852)))

(declare-fun b!5405452 () Bool)

(assert (=> b!5405452 (= e!3351228 (nullable!5346 (h!68154 (exprs!5061 lt!2203624))))))

(declare-fun b!5405453 () Bool)

(assert (=> b!5405453 (= e!3351226 e!3351227)))

(declare-fun c!942282 () Bool)

(assert (=> b!5405453 (= c!942282 ((_ is Cons!61706) (exprs!5061 lt!2203624)))))

(declare-fun bm!386847 () Bool)

(assert (=> bm!386847 (= call!386852 (derivationStepZipperDown!625 (h!68154 (exprs!5061 lt!2203624)) (Context!9123 (t!375053 (exprs!5061 lt!2203624))) (h!68156 s!2326)))))

(declare-fun b!5405454 () Bool)

(assert (=> b!5405454 (= e!3351226 ((_ map or) call!386852 (derivationStepZipperUp!549 (Context!9123 (t!375053 (exprs!5061 lt!2203624))) (h!68156 s!2326))))))

(assert (= (and d!1725956 res!2298364) b!5405452))

(assert (= (and d!1725956 c!942281) b!5405454))

(assert (= (and d!1725956 (not c!942281)) b!5405453))

(assert (= (and b!5405453 c!942282) b!5405451))

(assert (= (and b!5405453 (not c!942282)) b!5405450))

(assert (= (or b!5405454 b!5405451) bm!386847))

(declare-fun m!6429780 () Bool)

(assert (=> b!5405452 m!6429780))

(declare-fun m!6429782 () Bool)

(assert (=> bm!386847 m!6429782))

(declare-fun m!6429784 () Bool)

(assert (=> b!5405454 m!6429784))

(assert (=> b!5404831 d!1725956))

(declare-fun d!1725958 () Bool)

(assert (=> d!1725958 (= (flatMap!904 lt!2203605 lambda!281713) (choose!40757 lt!2203605 lambda!281713))))

(declare-fun bs!1248814 () Bool)

(assert (= bs!1248814 d!1725958))

(declare-fun m!6429786 () Bool)

(assert (=> bs!1248814 m!6429786))

(assert (=> b!5404831 d!1725958))

(declare-fun d!1725960 () Bool)

(assert (=> d!1725960 (= (flatMap!904 lt!2203626 lambda!281713) (choose!40757 lt!2203626 lambda!281713))))

(declare-fun bs!1248815 () Bool)

(assert (= bs!1248815 d!1725960))

(declare-fun m!6429788 () Bool)

(assert (=> bs!1248815 m!6429788))

(assert (=> b!5404831 d!1725960))

(declare-fun d!1725962 () Bool)

(declare-fun c!942283 () Bool)

(assert (=> d!1725962 (= c!942283 (isEmpty!33699 (t!375055 s!2326)))))

(declare-fun e!3351231 () Bool)

(assert (=> d!1725962 (= (matchZipper!1421 lt!2203585 (t!375055 s!2326)) e!3351231)))

(declare-fun b!5405461 () Bool)

(assert (=> b!5405461 (= e!3351231 (nullableZipper!1437 lt!2203585))))

(declare-fun b!5405462 () Bool)

(assert (=> b!5405462 (= e!3351231 (matchZipper!1421 (derivationStepZipper!1416 lt!2203585 (head!11592 (t!375055 s!2326))) (tail!10689 (t!375055 s!2326))))))

(assert (= (and d!1725962 c!942283) b!5405461))

(assert (= (and d!1725962 (not c!942283)) b!5405462))

(assert (=> d!1725962 m!6429488))

(declare-fun m!6429790 () Bool)

(assert (=> b!5405461 m!6429790))

(assert (=> b!5405462 m!6429492))

(assert (=> b!5405462 m!6429492))

(declare-fun m!6429792 () Bool)

(assert (=> b!5405462 m!6429792))

(assert (=> b!5405462 m!6429496))

(assert (=> b!5405462 m!6429792))

(assert (=> b!5405462 m!6429496))

(declare-fun m!6429794 () Bool)

(assert (=> b!5405462 m!6429794))

(assert (=> b!5404832 d!1725962))

(declare-fun d!1725964 () Bool)

(declare-fun c!942284 () Bool)

(assert (=> d!1725964 (= c!942284 (isEmpty!33699 s!2326))))

(declare-fun e!3351232 () Bool)

(assert (=> d!1725964 (= (matchZipper!1421 lt!2203630 s!2326) e!3351232)))

(declare-fun b!5405463 () Bool)

(assert (=> b!5405463 (= e!3351232 (nullableZipper!1437 lt!2203630))))

(declare-fun b!5405464 () Bool)

(assert (=> b!5405464 (= e!3351232 (matchZipper!1421 (derivationStepZipper!1416 lt!2203630 (head!11592 s!2326)) (tail!10689 s!2326)))))

(assert (= (and d!1725964 c!942284) b!5405463))

(assert (= (and d!1725964 (not c!942284)) b!5405464))

(assert (=> d!1725964 m!6429342))

(declare-fun m!6429796 () Bool)

(assert (=> b!5405463 m!6429796))

(assert (=> b!5405464 m!6429346))

(assert (=> b!5405464 m!6429346))

(declare-fun m!6429798 () Bool)

(assert (=> b!5405464 m!6429798))

(assert (=> b!5405464 m!6429350))

(assert (=> b!5405464 m!6429798))

(assert (=> b!5405464 m!6429350))

(declare-fun m!6429800 () Bool)

(assert (=> b!5405464 m!6429800))

(assert (=> b!5404832 d!1725964))

(declare-fun bs!1248821 () Bool)

(declare-fun d!1725966 () Bool)

(assert (= bs!1248821 (and d!1725966 b!5404816)))

(declare-fun lambda!281777 () Int)

(assert (=> bs!1248821 (= lambda!281777 lambda!281715)))

(declare-fun bs!1248823 () Bool)

(assert (= bs!1248823 (and d!1725966 d!1725824)))

(assert (=> bs!1248823 (= lambda!281777 lambda!281725)))

(declare-fun bs!1248824 () Bool)

(assert (= bs!1248824 (and d!1725966 d!1725854)))

(assert (=> bs!1248824 (= lambda!281777 lambda!281728)))

(declare-fun b!5405500 () Bool)

(declare-fun e!3351257 () Bool)

(declare-fun e!3351259 () Bool)

(assert (=> b!5405500 (= e!3351257 e!3351259)))

(declare-fun c!942300 () Bool)

(assert (=> b!5405500 (= c!942300 (isEmpty!33697 (unfocusZipperList!619 zl!343)))))

(declare-fun b!5405501 () Bool)

(declare-fun e!3351256 () Bool)

(declare-fun lt!2203760 () Regex!15177)

(assert (=> b!5405501 (= e!3351256 (= lt!2203760 (head!11593 (unfocusZipperList!619 zl!343))))))

(declare-fun b!5405502 () Bool)

(declare-fun e!3351258 () Bool)

(assert (=> b!5405502 (= e!3351258 (isEmpty!33697 (t!375053 (unfocusZipperList!619 zl!343))))))

(declare-fun b!5405503 () Bool)

(declare-fun e!3351255 () Regex!15177)

(assert (=> b!5405503 (= e!3351255 (Union!15177 (h!68154 (unfocusZipperList!619 zl!343)) (generalisedUnion!1106 (t!375053 (unfocusZipperList!619 zl!343)))))))

(declare-fun b!5405504 () Bool)

(declare-fun e!3351254 () Regex!15177)

(assert (=> b!5405504 (= e!3351254 e!3351255)))

(declare-fun c!942298 () Bool)

(assert (=> b!5405504 (= c!942298 ((_ is Cons!61706) (unfocusZipperList!619 zl!343)))))

(declare-fun b!5405505 () Bool)

(assert (=> b!5405505 (= e!3351259 e!3351256)))

(declare-fun c!942297 () Bool)

(assert (=> b!5405505 (= c!942297 (isEmpty!33697 (tail!10690 (unfocusZipperList!619 zl!343))))))

(declare-fun b!5405506 () Bool)

(assert (=> b!5405506 (= e!3351255 EmptyLang!15177)))

(assert (=> d!1725966 e!3351257))

(declare-fun res!2298382 () Bool)

(assert (=> d!1725966 (=> (not res!2298382) (not e!3351257))))

(assert (=> d!1725966 (= res!2298382 (validRegex!6913 lt!2203760))))

(assert (=> d!1725966 (= lt!2203760 e!3351254)))

(declare-fun c!942299 () Bool)

(assert (=> d!1725966 (= c!942299 e!3351258)))

(declare-fun res!2298383 () Bool)

(assert (=> d!1725966 (=> (not res!2298383) (not e!3351258))))

(assert (=> d!1725966 (= res!2298383 ((_ is Cons!61706) (unfocusZipperList!619 zl!343)))))

(assert (=> d!1725966 (forall!14530 (unfocusZipperList!619 zl!343) lambda!281777)))

(assert (=> d!1725966 (= (generalisedUnion!1106 (unfocusZipperList!619 zl!343)) lt!2203760)))

(declare-fun b!5405507 () Bool)

(declare-fun isUnion!411 (Regex!15177) Bool)

(assert (=> b!5405507 (= e!3351256 (isUnion!411 lt!2203760))))

(declare-fun b!5405508 () Bool)

(declare-fun isEmptyLang!979 (Regex!15177) Bool)

(assert (=> b!5405508 (= e!3351259 (isEmptyLang!979 lt!2203760))))

(declare-fun b!5405509 () Bool)

(assert (=> b!5405509 (= e!3351254 (h!68154 (unfocusZipperList!619 zl!343)))))

(assert (= (and d!1725966 res!2298383) b!5405502))

(assert (= (and d!1725966 c!942299) b!5405509))

(assert (= (and d!1725966 (not c!942299)) b!5405504))

(assert (= (and b!5405504 c!942298) b!5405503))

(assert (= (and b!5405504 (not c!942298)) b!5405506))

(assert (= (and d!1725966 res!2298382) b!5405500))

(assert (= (and b!5405500 c!942300) b!5405508))

(assert (= (and b!5405500 (not c!942300)) b!5405505))

(assert (= (and b!5405505 c!942297) b!5405501))

(assert (= (and b!5405505 (not c!942297)) b!5405507))

(declare-fun m!6429802 () Bool)

(assert (=> b!5405502 m!6429802))

(declare-fun m!6429804 () Bool)

(assert (=> b!5405507 m!6429804))

(declare-fun m!6429806 () Bool)

(assert (=> b!5405503 m!6429806))

(assert (=> b!5405501 m!6429080))

(declare-fun m!6429808 () Bool)

(assert (=> b!5405501 m!6429808))

(declare-fun m!6429810 () Bool)

(assert (=> d!1725966 m!6429810))

(assert (=> d!1725966 m!6429080))

(declare-fun m!6429812 () Bool)

(assert (=> d!1725966 m!6429812))

(assert (=> b!5405505 m!6429080))

(declare-fun m!6429814 () Bool)

(assert (=> b!5405505 m!6429814))

(assert (=> b!5405505 m!6429814))

(declare-fun m!6429816 () Bool)

(assert (=> b!5405505 m!6429816))

(declare-fun m!6429818 () Bool)

(assert (=> b!5405508 m!6429818))

(assert (=> b!5405500 m!6429080))

(declare-fun m!6429820 () Bool)

(assert (=> b!5405500 m!6429820))

(assert (=> b!5404830 d!1725966))

(declare-fun bs!1248828 () Bool)

(declare-fun d!1725968 () Bool)

(assert (= bs!1248828 (and d!1725968 b!5404816)))

(declare-fun lambda!281780 () Int)

(assert (=> bs!1248828 (= lambda!281780 lambda!281715)))

(declare-fun bs!1248829 () Bool)

(assert (= bs!1248829 (and d!1725968 d!1725824)))

(assert (=> bs!1248829 (= lambda!281780 lambda!281725)))

(declare-fun bs!1248830 () Bool)

(assert (= bs!1248830 (and d!1725968 d!1725854)))

(assert (=> bs!1248830 (= lambda!281780 lambda!281728)))

(declare-fun bs!1248831 () Bool)

(assert (= bs!1248831 (and d!1725968 d!1725966)))

(assert (=> bs!1248831 (= lambda!281780 lambda!281777)))

(declare-fun lt!2203763 () List!61830)

(assert (=> d!1725968 (forall!14530 lt!2203763 lambda!281780)))

(declare-fun e!3351262 () List!61830)

(assert (=> d!1725968 (= lt!2203763 e!3351262)))

(declare-fun c!942303 () Bool)

(assert (=> d!1725968 (= c!942303 ((_ is Cons!61707) zl!343))))

(assert (=> d!1725968 (= (unfocusZipperList!619 zl!343) lt!2203763)))

(declare-fun b!5405514 () Bool)

(assert (=> b!5405514 (= e!3351262 (Cons!61706 (generalisedConcat!846 (exprs!5061 (h!68155 zl!343))) (unfocusZipperList!619 (t!375054 zl!343))))))

(declare-fun b!5405515 () Bool)

(assert (=> b!5405515 (= e!3351262 Nil!61706)))

(assert (= (and d!1725968 c!942303) b!5405514))

(assert (= (and d!1725968 (not c!942303)) b!5405515))

(declare-fun m!6429830 () Bool)

(assert (=> d!1725968 m!6429830))

(assert (=> b!5405514 m!6429132))

(declare-fun m!6429832 () Bool)

(assert (=> b!5405514 m!6429832))

(assert (=> b!5404830 d!1725968))

(declare-fun d!1725972 () Bool)

(declare-fun e!3351279 () Bool)

(assert (=> d!1725972 e!3351279))

(declare-fun res!2298402 () Bool)

(assert (=> d!1725972 (=> (not res!2298402) (not e!3351279))))

(declare-fun lt!2203768 () List!61831)

(declare-fun noDuplicate!1388 (List!61831) Bool)

(assert (=> d!1725972 (= res!2298402 (noDuplicate!1388 lt!2203768))))

(declare-fun choose!40772 ((InoxSet Context!9122)) List!61831)

(assert (=> d!1725972 (= lt!2203768 (choose!40772 z!1189))))

(assert (=> d!1725972 (= (toList!8961 z!1189) lt!2203768)))

(declare-fun b!5405546 () Bool)

(declare-fun content!11063 (List!61831) (InoxSet Context!9122))

(assert (=> b!5405546 (= e!3351279 (= (content!11063 lt!2203768) z!1189))))

(assert (= (and d!1725972 res!2298402) b!5405546))

(declare-fun m!6429834 () Bool)

(assert (=> d!1725972 m!6429834))

(declare-fun m!6429836 () Bool)

(assert (=> d!1725972 m!6429836))

(declare-fun m!6429838 () Bool)

(assert (=> b!5405546 m!6429838))

(assert (=> b!5404809 d!1725972))

(declare-fun bs!1248832 () Bool)

(declare-fun d!1725974 () Bool)

(assert (= bs!1248832 (and d!1725974 d!1725824)))

(declare-fun lambda!281781 () Int)

(assert (=> bs!1248832 (= lambda!281781 lambda!281725)))

(declare-fun bs!1248833 () Bool)

(assert (= bs!1248833 (and d!1725974 d!1725966)))

(assert (=> bs!1248833 (= lambda!281781 lambda!281777)))

(declare-fun bs!1248834 () Bool)

(assert (= bs!1248834 (and d!1725974 d!1725968)))

(assert (=> bs!1248834 (= lambda!281781 lambda!281780)))

(declare-fun bs!1248835 () Bool)

(assert (= bs!1248835 (and d!1725974 b!5404816)))

(assert (=> bs!1248835 (= lambda!281781 lambda!281715)))

(declare-fun bs!1248836 () Bool)

(assert (= bs!1248836 (and d!1725974 d!1725854)))

(assert (=> bs!1248836 (= lambda!281781 lambda!281728)))

(assert (=> d!1725974 (= (inv!81189 (h!68155 zl!343)) (forall!14530 (exprs!5061 (h!68155 zl!343)) lambda!281781))))

(declare-fun bs!1248837 () Bool)

(assert (= bs!1248837 d!1725974))

(declare-fun m!6429840 () Bool)

(assert (=> bs!1248837 m!6429840))

(assert (=> b!5404813 d!1725974))

(declare-fun d!1725976 () Bool)

(declare-fun e!3351289 () Bool)

(assert (=> d!1725976 (= (matchZipper!1421 ((_ map or) lt!2203622 lt!2203610) (t!375055 s!2326)) e!3351289)))

(declare-fun res!2298413 () Bool)

(assert (=> d!1725976 (=> res!2298413 e!3351289)))

(assert (=> d!1725976 (= res!2298413 (matchZipper!1421 lt!2203622 (t!375055 s!2326)))))

(declare-fun lt!2203772 () Unit!154230)

(declare-fun choose!40773 ((InoxSet Context!9122) (InoxSet Context!9122) List!61832) Unit!154230)

(assert (=> d!1725976 (= lt!2203772 (choose!40773 lt!2203622 lt!2203610 (t!375055 s!2326)))))

(assert (=> d!1725976 (= (lemmaZipperConcatMatchesSameAsBothZippers!414 lt!2203622 lt!2203610 (t!375055 s!2326)) lt!2203772)))

(declare-fun b!5405563 () Bool)

(assert (=> b!5405563 (= e!3351289 (matchZipper!1421 lt!2203610 (t!375055 s!2326)))))

(assert (= (and d!1725976 (not res!2298413)) b!5405563))

(assert (=> d!1725976 m!6429158))

(assert (=> d!1725976 m!6429094))

(declare-fun m!6429842 () Bool)

(assert (=> d!1725976 m!6429842))

(assert (=> b!5405563 m!6429110))

(assert (=> b!5404811 d!1725976))

(assert (=> b!5404811 d!1725904))

(declare-fun d!1725978 () Bool)

(declare-fun c!942313 () Bool)

(assert (=> d!1725978 (= c!942313 (isEmpty!33699 (t!375055 s!2326)))))

(declare-fun e!3351290 () Bool)

(assert (=> d!1725978 (= (matchZipper!1421 ((_ map or) lt!2203622 lt!2203610) (t!375055 s!2326)) e!3351290)))

(declare-fun b!5405564 () Bool)

(assert (=> b!5405564 (= e!3351290 (nullableZipper!1437 ((_ map or) lt!2203622 lt!2203610)))))

(declare-fun b!5405565 () Bool)

(assert (=> b!5405565 (= e!3351290 (matchZipper!1421 (derivationStepZipper!1416 ((_ map or) lt!2203622 lt!2203610) (head!11592 (t!375055 s!2326))) (tail!10689 (t!375055 s!2326))))))

(assert (= (and d!1725978 c!942313) b!5405564))

(assert (= (and d!1725978 (not c!942313)) b!5405565))

(assert (=> d!1725978 m!6429488))

(declare-fun m!6429852 () Bool)

(assert (=> b!5405564 m!6429852))

(assert (=> b!5405565 m!6429492))

(assert (=> b!5405565 m!6429492))

(declare-fun m!6429854 () Bool)

(assert (=> b!5405565 m!6429854))

(assert (=> b!5405565 m!6429496))

(assert (=> b!5405565 m!6429854))

(assert (=> b!5405565 m!6429496))

(declare-fun m!6429858 () Bool)

(assert (=> b!5405565 m!6429858))

(assert (=> b!5404811 d!1725978))

(declare-fun bm!386857 () Bool)

(declare-fun call!386862 () Bool)

(assert (=> bm!386857 (= call!386862 (isEmpty!33699 (_2!35679 lt!2203613)))))

(declare-fun b!5405566 () Bool)

(declare-fun e!3351291 () Bool)

(assert (=> b!5405566 (= e!3351291 (matchR!7362 (derivativeStep!4258 lt!2203627 (head!11592 (_2!35679 lt!2203613))) (tail!10689 (_2!35679 lt!2203613))))))

(declare-fun b!5405567 () Bool)

(declare-fun res!2298420 () Bool)

(declare-fun e!3351292 () Bool)

(assert (=> b!5405567 (=> (not res!2298420) (not e!3351292))))

(assert (=> b!5405567 (= res!2298420 (isEmpty!33699 (tail!10689 (_2!35679 lt!2203613))))))

(declare-fun d!1725980 () Bool)

(declare-fun e!3351294 () Bool)

(assert (=> d!1725980 e!3351294))

(declare-fun c!942316 () Bool)

(assert (=> d!1725980 (= c!942316 ((_ is EmptyExpr!15177) lt!2203627))))

(declare-fun lt!2203773 () Bool)

(assert (=> d!1725980 (= lt!2203773 e!3351291)))

(declare-fun c!942314 () Bool)

(assert (=> d!1725980 (= c!942314 (isEmpty!33699 (_2!35679 lt!2203613)))))

(assert (=> d!1725980 (validRegex!6913 lt!2203627)))

(assert (=> d!1725980 (= (matchR!7362 lt!2203627 (_2!35679 lt!2203613)) lt!2203773)))

(declare-fun b!5405568 () Bool)

(declare-fun e!3351296 () Bool)

(assert (=> b!5405568 (= e!3351294 e!3351296)))

(declare-fun c!942315 () Bool)

(assert (=> b!5405568 (= c!942315 ((_ is EmptyLang!15177) lt!2203627))))

(declare-fun b!5405569 () Bool)

(assert (=> b!5405569 (= e!3351294 (= lt!2203773 call!386862))))

(declare-fun b!5405570 () Bool)

(assert (=> b!5405570 (= e!3351291 (nullable!5346 lt!2203627))))

(declare-fun b!5405571 () Bool)

(declare-fun res!2298419 () Bool)

(declare-fun e!3351297 () Bool)

(assert (=> b!5405571 (=> res!2298419 e!3351297)))

(assert (=> b!5405571 (= res!2298419 e!3351292)))

(declare-fun res!2298415 () Bool)

(assert (=> b!5405571 (=> (not res!2298415) (not e!3351292))))

(assert (=> b!5405571 (= res!2298415 lt!2203773)))

(declare-fun b!5405572 () Bool)

(declare-fun e!3351293 () Bool)

(assert (=> b!5405572 (= e!3351297 e!3351293)))

(declare-fun res!2298417 () Bool)

(assert (=> b!5405572 (=> (not res!2298417) (not e!3351293))))

(assert (=> b!5405572 (= res!2298417 (not lt!2203773))))

(declare-fun b!5405573 () Bool)

(declare-fun res!2298418 () Bool)

(declare-fun e!3351295 () Bool)

(assert (=> b!5405573 (=> res!2298418 e!3351295)))

(assert (=> b!5405573 (= res!2298418 (not (isEmpty!33699 (tail!10689 (_2!35679 lt!2203613)))))))

(declare-fun b!5405574 () Bool)

(assert (=> b!5405574 (= e!3351293 e!3351295)))

(declare-fun res!2298416 () Bool)

(assert (=> b!5405574 (=> res!2298416 e!3351295)))

(assert (=> b!5405574 (= res!2298416 call!386862)))

(declare-fun b!5405575 () Bool)

(declare-fun res!2298421 () Bool)

(assert (=> b!5405575 (=> res!2298421 e!3351297)))

(assert (=> b!5405575 (= res!2298421 (not ((_ is ElementMatch!15177) lt!2203627)))))

(assert (=> b!5405575 (= e!3351296 e!3351297)))

(declare-fun b!5405576 () Bool)

(assert (=> b!5405576 (= e!3351296 (not lt!2203773))))

(declare-fun b!5405577 () Bool)

(assert (=> b!5405577 (= e!3351292 (= (head!11592 (_2!35679 lt!2203613)) (c!942101 lt!2203627)))))

(declare-fun b!5405578 () Bool)

(declare-fun res!2298414 () Bool)

(assert (=> b!5405578 (=> (not res!2298414) (not e!3351292))))

(assert (=> b!5405578 (= res!2298414 (not call!386862))))

(declare-fun b!5405579 () Bool)

(assert (=> b!5405579 (= e!3351295 (not (= (head!11592 (_2!35679 lt!2203613)) (c!942101 lt!2203627))))))

(assert (= (and d!1725980 c!942314) b!5405570))

(assert (= (and d!1725980 (not c!942314)) b!5405566))

(assert (= (and d!1725980 c!942316) b!5405569))

(assert (= (and d!1725980 (not c!942316)) b!5405568))

(assert (= (and b!5405568 c!942315) b!5405576))

(assert (= (and b!5405568 (not c!942315)) b!5405575))

(assert (= (and b!5405575 (not res!2298421)) b!5405571))

(assert (= (and b!5405571 res!2298415) b!5405578))

(assert (= (and b!5405578 res!2298414) b!5405567))

(assert (= (and b!5405567 res!2298420) b!5405577))

(assert (= (and b!5405571 (not res!2298419)) b!5405572))

(assert (= (and b!5405572 res!2298417) b!5405574))

(assert (= (and b!5405574 (not res!2298416)) b!5405573))

(assert (= (and b!5405573 (not res!2298418)) b!5405579))

(assert (= (or b!5405569 b!5405574 b!5405578) bm!386857))

(assert (=> b!5405577 m!6429508))

(declare-fun m!6429862 () Bool)

(assert (=> b!5405570 m!6429862))

(assert (=> b!5405573 m!6429512))

(assert (=> b!5405573 m!6429512))

(declare-fun m!6429864 () Bool)

(assert (=> b!5405573 m!6429864))

(assert (=> bm!386857 m!6429504))

(assert (=> b!5405579 m!6429508))

(assert (=> d!1725980 m!6429504))

(declare-fun m!6429866 () Bool)

(assert (=> d!1725980 m!6429866))

(assert (=> b!5405567 m!6429512))

(assert (=> b!5405567 m!6429512))

(assert (=> b!5405567 m!6429864))

(assert (=> b!5405566 m!6429508))

(assert (=> b!5405566 m!6429508))

(declare-fun m!6429868 () Bool)

(assert (=> b!5405566 m!6429868))

(assert (=> b!5405566 m!6429512))

(assert (=> b!5405566 m!6429868))

(assert (=> b!5405566 m!6429512))

(declare-fun m!6429870 () Bool)

(assert (=> b!5405566 m!6429870))

(assert (=> b!5404812 d!1725980))

(declare-fun d!1725984 () Bool)

(assert (=> d!1725984 (= (matchR!7362 (Concat!24022 (Concat!24022 (reg!15506 (regOne!30866 r!7292)) lt!2203629) (regTwo!30866 r!7292)) s!2326) (matchR!7362 (Concat!24022 (reg!15506 (regOne!30866 r!7292)) (Concat!24022 lt!2203629 (regTwo!30866 r!7292))) s!2326))))

(declare-fun lt!2203780 () Unit!154230)

(declare-fun choose!40775 (Regex!15177 Regex!15177 Regex!15177 List!61832) Unit!154230)

(assert (=> d!1725984 (= lt!2203780 (choose!40775 (reg!15506 (regOne!30866 r!7292)) lt!2203629 (regTwo!30866 r!7292) s!2326))))

(declare-fun e!3351302 () Bool)

(assert (=> d!1725984 e!3351302))

(declare-fun res!2298426 () Bool)

(assert (=> d!1725984 (=> (not res!2298426) (not e!3351302))))

(assert (=> d!1725984 (= res!2298426 (validRegex!6913 (reg!15506 (regOne!30866 r!7292))))))

(assert (=> d!1725984 (= (lemmaConcatAssociative!30 (reg!15506 (regOne!30866 r!7292)) lt!2203629 (regTwo!30866 r!7292) s!2326) lt!2203780)))

(declare-fun b!5405588 () Bool)

(declare-fun res!2298427 () Bool)

(assert (=> b!5405588 (=> (not res!2298427) (not e!3351302))))

(assert (=> b!5405588 (= res!2298427 (validRegex!6913 lt!2203629))))

(declare-fun b!5405589 () Bool)

(assert (=> b!5405589 (= e!3351302 (validRegex!6913 (regTwo!30866 r!7292)))))

(assert (= (and d!1725984 res!2298426) b!5405588))

(assert (= (and b!5405588 res!2298427) b!5405589))

(declare-fun m!6429892 () Bool)

(assert (=> d!1725984 m!6429892))

(declare-fun m!6429894 () Bool)

(assert (=> d!1725984 m!6429894))

(declare-fun m!6429896 () Bool)

(assert (=> d!1725984 m!6429896))

(declare-fun m!6429898 () Bool)

(assert (=> d!1725984 m!6429898))

(declare-fun m!6429900 () Bool)

(assert (=> b!5405588 m!6429900))

(assert (=> b!5405589 m!6429096))

(assert (=> b!5404812 d!1725984))

(declare-fun d!1725994 () Bool)

(assert (=> d!1725994 (= (Exists!2358 lambda!281716) (choose!40763 lambda!281716))))

(declare-fun bs!1248840 () Bool)

(assert (= bs!1248840 d!1725994))

(declare-fun m!6429902 () Bool)

(assert (=> bs!1248840 m!6429902))

(assert (=> b!5404812 d!1725994))

(declare-fun bs!1248855 () Bool)

(declare-fun d!1725996 () Bool)

(assert (= bs!1248855 (and d!1725996 d!1725824)))

(declare-fun lambda!281787 () Int)

(assert (=> bs!1248855 (= lambda!281787 lambda!281725)))

(declare-fun bs!1248856 () Bool)

(assert (= bs!1248856 (and d!1725996 d!1725966)))

(assert (=> bs!1248856 (= lambda!281787 lambda!281777)))

(declare-fun bs!1248858 () Bool)

(assert (= bs!1248858 (and d!1725996 d!1725968)))

(assert (=> bs!1248858 (= lambda!281787 lambda!281780)))

(declare-fun bs!1248860 () Bool)

(assert (= bs!1248860 (and d!1725996 b!5404816)))

(assert (=> bs!1248860 (= lambda!281787 lambda!281715)))

(declare-fun bs!1248861 () Bool)

(assert (= bs!1248861 (and d!1725996 d!1725854)))

(assert (=> bs!1248861 (= lambda!281787 lambda!281728)))

(declare-fun bs!1248862 () Bool)

(assert (= bs!1248862 (and d!1725996 d!1725974)))

(assert (=> bs!1248862 (= lambda!281787 lambda!281781)))

(assert (=> d!1725996 (matchZipper!1421 (store ((as const (Array Context!9122 Bool)) false) (Context!9123 (++!13527 (exprs!5061 lt!2203624) (exprs!5061 lt!2203621))) true) (++!13528 (_1!35679 lt!2203613) (_2!35679 lt!2203613)))))

(declare-fun lt!2203790 () Unit!154230)

(assert (=> d!1725996 (= lt!2203790 (lemmaConcatPreservesForall!202 (exprs!5061 lt!2203624) (exprs!5061 lt!2203621) lambda!281787))))

(declare-fun lt!2203789 () Unit!154230)

(declare-fun choose!40777 (Context!9122 Context!9122 List!61832 List!61832) Unit!154230)

(assert (=> d!1725996 (= lt!2203789 (choose!40777 lt!2203624 lt!2203621 (_1!35679 lt!2203613) (_2!35679 lt!2203613)))))

(assert (=> d!1725996 (matchZipper!1421 (store ((as const (Array Context!9122 Bool)) false) lt!2203624 true) (_1!35679 lt!2203613))))

(assert (=> d!1725996 (= (lemmaConcatenateContextMatchesConcatOfStrings!50 lt!2203624 lt!2203621 (_1!35679 lt!2203613) (_2!35679 lt!2203613)) lt!2203789)))

(declare-fun bs!1248866 () Bool)

(assert (= bs!1248866 d!1725996))

(assert (=> bs!1248866 m!6429180))

(assert (=> bs!1248866 m!6429122))

(declare-fun m!6429918 () Bool)

(assert (=> bs!1248866 m!6429918))

(assert (=> bs!1248866 m!6429180))

(declare-fun m!6429920 () Bool)

(assert (=> bs!1248866 m!6429920))

(declare-fun m!6429922 () Bool)

(assert (=> bs!1248866 m!6429922))

(declare-fun m!6429924 () Bool)

(assert (=> bs!1248866 m!6429924))

(assert (=> bs!1248866 m!6429122))

(declare-fun m!6429926 () Bool)

(assert (=> bs!1248866 m!6429926))

(assert (=> bs!1248866 m!6429924))

(declare-fun m!6429928 () Bool)

(assert (=> bs!1248866 m!6429928))

(assert (=> b!5404812 d!1725996))

(declare-fun d!1726002 () Bool)

(assert (=> d!1726002 (= (matchR!7362 lt!2203584 s!2326) (matchRSpec!2280 lt!2203584 s!2326))))

(declare-fun lt!2203791 () Unit!154230)

(assert (=> d!1726002 (= lt!2203791 (choose!40761 lt!2203584 s!2326))))

(assert (=> d!1726002 (validRegex!6913 lt!2203584)))

(assert (=> d!1726002 (= (mainMatchTheorem!2280 lt!2203584 s!2326) lt!2203791)))

(declare-fun bs!1248869 () Bool)

(assert (= bs!1248869 d!1726002))

(assert (=> bs!1248869 m!6429210))

(assert (=> bs!1248869 m!6429200))

(declare-fun m!6429930 () Bool)

(assert (=> bs!1248869 m!6429930))

(declare-fun m!6429932 () Bool)

(assert (=> bs!1248869 m!6429932))

(assert (=> b!5404812 d!1726002))

(assert (=> b!5404812 d!1725776))

(declare-fun bm!386860 () Bool)

(declare-fun call!386865 () Bool)

(declare-fun c!942323 () Bool)

(assert (=> bm!386860 (= call!386865 (validRegex!6913 (ite c!942323 (regTwo!30867 lt!2203635) (regTwo!30866 lt!2203635))))))

(declare-fun b!5405604 () Bool)

(declare-fun e!3351314 () Bool)

(declare-fun e!3351313 () Bool)

(assert (=> b!5405604 (= e!3351314 e!3351313)))

(declare-fun res!2298435 () Bool)

(assert (=> b!5405604 (= res!2298435 (not (nullable!5346 (reg!15506 lt!2203635))))))

(assert (=> b!5405604 (=> (not res!2298435) (not e!3351313))))

(declare-fun b!5405605 () Bool)

(declare-fun res!2298436 () Bool)

(declare-fun e!3351319 () Bool)

(assert (=> b!5405605 (=> res!2298436 e!3351319)))

(assert (=> b!5405605 (= res!2298436 (not ((_ is Concat!24022) lt!2203635)))))

(declare-fun e!3351316 () Bool)

(assert (=> b!5405605 (= e!3351316 e!3351319)))

(declare-fun b!5405606 () Bool)

(declare-fun res!2298434 () Bool)

(declare-fun e!3351315 () Bool)

(assert (=> b!5405606 (=> (not res!2298434) (not e!3351315))))

(declare-fun call!386867 () Bool)

(assert (=> b!5405606 (= res!2298434 call!386867)))

(assert (=> b!5405606 (= e!3351316 e!3351315)))

(declare-fun b!5405608 () Bool)

(assert (=> b!5405608 (= e!3351315 call!386865)))

(declare-fun b!5405609 () Bool)

(declare-fun call!386866 () Bool)

(assert (=> b!5405609 (= e!3351313 call!386866)))

(declare-fun b!5405610 () Bool)

(declare-fun e!3351318 () Bool)

(assert (=> b!5405610 (= e!3351319 e!3351318)))

(declare-fun res!2298437 () Bool)

(assert (=> b!5405610 (=> (not res!2298437) (not e!3351318))))

(assert (=> b!5405610 (= res!2298437 call!386867)))

(declare-fun b!5405611 () Bool)

(assert (=> b!5405611 (= e!3351314 e!3351316)))

(assert (=> b!5405611 (= c!942323 ((_ is Union!15177) lt!2203635))))

(declare-fun bm!386861 () Bool)

(assert (=> bm!386861 (= call!386867 call!386866)))

(declare-fun d!1726004 () Bool)

(declare-fun res!2298438 () Bool)

(declare-fun e!3351317 () Bool)

(assert (=> d!1726004 (=> res!2298438 e!3351317)))

(assert (=> d!1726004 (= res!2298438 ((_ is ElementMatch!15177) lt!2203635))))

(assert (=> d!1726004 (= (validRegex!6913 lt!2203635) e!3351317)))

(declare-fun b!5405607 () Bool)

(assert (=> b!5405607 (= e!3351318 call!386865)))

(declare-fun bm!386862 () Bool)

(declare-fun c!942324 () Bool)

(assert (=> bm!386862 (= call!386866 (validRegex!6913 (ite c!942324 (reg!15506 lt!2203635) (ite c!942323 (regOne!30867 lt!2203635) (regOne!30866 lt!2203635)))))))

(declare-fun b!5405612 () Bool)

(assert (=> b!5405612 (= e!3351317 e!3351314)))

(assert (=> b!5405612 (= c!942324 ((_ is Star!15177) lt!2203635))))

(assert (= (and d!1726004 (not res!2298438)) b!5405612))

(assert (= (and b!5405612 c!942324) b!5405604))

(assert (= (and b!5405612 (not c!942324)) b!5405611))

(assert (= (and b!5405604 res!2298435) b!5405609))

(assert (= (and b!5405611 c!942323) b!5405606))

(assert (= (and b!5405611 (not c!942323)) b!5405605))

(assert (= (and b!5405606 res!2298434) b!5405608))

(assert (= (and b!5405605 (not res!2298436)) b!5405610))

(assert (= (and b!5405610 res!2298437) b!5405607))

(assert (= (or b!5405608 b!5405607) bm!386860))

(assert (= (or b!5405606 b!5405610) bm!386861))

(assert (= (or b!5405609 bm!386861) bm!386862))

(declare-fun m!6429934 () Bool)

(assert (=> bm!386860 m!6429934))

(declare-fun m!6429936 () Bool)

(assert (=> b!5405604 m!6429936))

(declare-fun m!6429938 () Bool)

(assert (=> bm!386862 m!6429938))

(assert (=> b!5404812 d!1726004))

(assert (=> b!5404812 d!1725782))

(declare-fun bs!1248871 () Bool)

(declare-fun d!1726006 () Bool)

(assert (= bs!1248871 (and d!1726006 b!5404812)))

(declare-fun lambda!281789 () Int)

(assert (=> bs!1248871 (= lambda!281789 lambda!281716)))

(declare-fun bs!1248872 () Bool)

(assert (= bs!1248872 (and d!1726006 d!1725910)))

(assert (=> bs!1248872 (= (= lt!2203635 (regOne!30866 r!7292)) (= lambda!281789 lambda!281751))))

(declare-fun bs!1248873 () Bool)

(assert (= bs!1248873 (and d!1726006 d!1725928)))

(assert (=> bs!1248873 (= (= lt!2203635 (regOne!30866 r!7292)) (= lambda!281789 lambda!281763))))

(declare-fun bs!1248874 () Bool)

(assert (= bs!1248874 (and d!1726006 b!5405241)))

(assert (=> bs!1248874 (not (= lambda!281789 lambda!281742))))

(declare-fun bs!1248875 () Bool)

(assert (= bs!1248875 (and d!1726006 b!5405406)))

(assert (=> bs!1248875 (not (= lambda!281789 lambda!281767))))

(declare-fun bs!1248876 () Bool)

(assert (= bs!1248876 (and d!1726006 b!5405400)))

(assert (=> bs!1248876 (not (= lambda!281789 lambda!281768))))

(assert (=> bs!1248873 (not (= lambda!281789 lambda!281765))))

(assert (=> bs!1248871 (not (= lambda!281789 lambda!281717))))

(declare-fun bs!1248877 () Bool)

(assert (= bs!1248877 (and d!1726006 b!5404807)))

(assert (=> bs!1248877 (not (= lambda!281789 lambda!281712))))

(declare-fun bs!1248878 () Bool)

(assert (= bs!1248878 (and d!1726006 b!5405235)))

(assert (=> bs!1248878 (not (= lambda!281789 lambda!281743))))

(assert (=> bs!1248877 (= (= lt!2203635 (regOne!30866 r!7292)) (= lambda!281789 lambda!281711))))

(assert (=> d!1726006 true))

(assert (=> d!1726006 true))

(assert (=> d!1726006 true))

(declare-fun lambda!281790 () Int)

(assert (=> bs!1248871 (not (= lambda!281790 lambda!281716))))

(assert (=> bs!1248872 (not (= lambda!281790 lambda!281751))))

(assert (=> bs!1248874 (not (= lambda!281790 lambda!281742))))

(assert (=> bs!1248875 (not (= lambda!281790 lambda!281767))))

(assert (=> bs!1248876 (= (= lt!2203635 (regOne!30866 r!7292)) (= lambda!281790 lambda!281768))))

(assert (=> bs!1248873 (= (= lt!2203635 (regOne!30866 r!7292)) (= lambda!281790 lambda!281765))))

(assert (=> bs!1248871 (= lambda!281790 lambda!281717)))

(declare-fun bs!1248879 () Bool)

(assert (= bs!1248879 d!1726006))

(assert (=> bs!1248879 (not (= lambda!281790 lambda!281789))))

(assert (=> bs!1248873 (not (= lambda!281790 lambda!281763))))

(assert (=> bs!1248877 (= (= lt!2203635 (regOne!30866 r!7292)) (= lambda!281790 lambda!281712))))

(assert (=> bs!1248878 (= (and (= lt!2203635 (regOne!30866 lt!2203620)) (= (regTwo!30866 r!7292) (regTwo!30866 lt!2203620))) (= lambda!281790 lambda!281743))))

(assert (=> bs!1248877 (not (= lambda!281790 lambda!281711))))

(assert (=> d!1726006 true))

(assert (=> d!1726006 true))

(assert (=> d!1726006 true))

(assert (=> d!1726006 (= (Exists!2358 lambda!281789) (Exists!2358 lambda!281790))))

(declare-fun lt!2203792 () Unit!154230)

(assert (=> d!1726006 (= lt!2203792 (choose!40768 lt!2203635 (regTwo!30866 r!7292) s!2326))))

(assert (=> d!1726006 (validRegex!6913 lt!2203635)))

(assert (=> d!1726006 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1012 lt!2203635 (regTwo!30866 r!7292) s!2326) lt!2203792)))

(declare-fun m!6429946 () Bool)

(assert (=> bs!1248879 m!6429946))

(declare-fun m!6429948 () Bool)

(assert (=> bs!1248879 m!6429948))

(declare-fun m!6429950 () Bool)

(assert (=> bs!1248879 m!6429950))

(assert (=> bs!1248879 m!6429212))

(assert (=> b!5404812 d!1726006))

(declare-fun d!1726010 () Bool)

(assert (=> d!1726010 (= (Exists!2358 lambda!281717) (choose!40763 lambda!281717))))

(declare-fun bs!1248880 () Bool)

(assert (= bs!1248880 d!1726010))

(declare-fun m!6429952 () Bool)

(assert (=> bs!1248880 m!6429952))

(assert (=> b!5404812 d!1726010))

(declare-fun bs!1248881 () Bool)

(declare-fun d!1726012 () Bool)

(assert (= bs!1248881 (and d!1726012 b!5404812)))

(declare-fun lambda!281791 () Int)

(assert (=> bs!1248881 (= lambda!281791 lambda!281716)))

(declare-fun bs!1248882 () Bool)

(assert (= bs!1248882 (and d!1726012 d!1725910)))

(assert (=> bs!1248882 (= (= lt!2203635 (regOne!30866 r!7292)) (= lambda!281791 lambda!281751))))

(declare-fun bs!1248883 () Bool)

(assert (= bs!1248883 (and d!1726012 d!1726006)))

(assert (=> bs!1248883 (not (= lambda!281791 lambda!281790))))

(declare-fun bs!1248884 () Bool)

(assert (= bs!1248884 (and d!1726012 b!5405241)))

(assert (=> bs!1248884 (not (= lambda!281791 lambda!281742))))

(declare-fun bs!1248885 () Bool)

(assert (= bs!1248885 (and d!1726012 b!5405406)))

(assert (=> bs!1248885 (not (= lambda!281791 lambda!281767))))

(declare-fun bs!1248886 () Bool)

(assert (= bs!1248886 (and d!1726012 b!5405400)))

(assert (=> bs!1248886 (not (= lambda!281791 lambda!281768))))

(declare-fun bs!1248887 () Bool)

(assert (= bs!1248887 (and d!1726012 d!1725928)))

(assert (=> bs!1248887 (not (= lambda!281791 lambda!281765))))

(assert (=> bs!1248881 (not (= lambda!281791 lambda!281717))))

(assert (=> bs!1248883 (= lambda!281791 lambda!281789)))

(assert (=> bs!1248887 (= (= lt!2203635 (regOne!30866 r!7292)) (= lambda!281791 lambda!281763))))

(declare-fun bs!1248888 () Bool)

(assert (= bs!1248888 (and d!1726012 b!5404807)))

(assert (=> bs!1248888 (not (= lambda!281791 lambda!281712))))

(declare-fun bs!1248889 () Bool)

(assert (= bs!1248889 (and d!1726012 b!5405235)))

(assert (=> bs!1248889 (not (= lambda!281791 lambda!281743))))

(assert (=> bs!1248888 (= (= lt!2203635 (regOne!30866 r!7292)) (= lambda!281791 lambda!281711))))

(assert (=> d!1726012 true))

(assert (=> d!1726012 true))

(assert (=> d!1726012 true))

(assert (=> d!1726012 (= (isDefined!11991 (findConcatSeparation!1702 lt!2203635 (regTwo!30866 r!7292) Nil!61708 s!2326 s!2326)) (Exists!2358 lambda!281791))))

(declare-fun lt!2203793 () Unit!154230)

(assert (=> d!1726012 (= lt!2203793 (choose!40765 lt!2203635 (regTwo!30866 r!7292) s!2326))))

(assert (=> d!1726012 (validRegex!6913 lt!2203635)))

(assert (=> d!1726012 (= (lemmaFindConcatSeparationEquivalentToExists!1466 lt!2203635 (regTwo!30866 r!7292) s!2326) lt!2203793)))

(declare-fun bs!1248891 () Bool)

(assert (= bs!1248891 d!1726012))

(assert (=> bs!1248891 m!6429190))

(assert (=> bs!1248891 m!6429212))

(declare-fun m!6429958 () Bool)

(assert (=> bs!1248891 m!6429958))

(assert (=> bs!1248891 m!6429190))

(assert (=> bs!1248891 m!6429192))

(declare-fun m!6429966 () Bool)

(assert (=> bs!1248891 m!6429966))

(assert (=> b!5404812 d!1726012))

(declare-fun d!1726016 () Bool)

(declare-fun c!942326 () Bool)

(assert (=> d!1726016 (= c!942326 (isEmpty!33699 lt!2203601))))

(declare-fun e!3351321 () Bool)

(assert (=> d!1726016 (= (matchZipper!1421 (store ((as const (Array Context!9122 Bool)) false) (Context!9123 (++!13527 lt!2203612 lt!2203637)) true) lt!2203601) e!3351321)))

(declare-fun b!5405615 () Bool)

(assert (=> b!5405615 (= e!3351321 (nullableZipper!1437 (store ((as const (Array Context!9122 Bool)) false) (Context!9123 (++!13527 lt!2203612 lt!2203637)) true)))))

(declare-fun b!5405616 () Bool)

(assert (=> b!5405616 (= e!3351321 (matchZipper!1421 (derivationStepZipper!1416 (store ((as const (Array Context!9122 Bool)) false) (Context!9123 (++!13527 lt!2203612 lt!2203637)) true) (head!11592 lt!2203601)) (tail!10689 lt!2203601)))))

(assert (= (and d!1726016 c!942326) b!5405615))

(assert (= (and d!1726016 (not c!942326)) b!5405616))

(declare-fun m!6429976 () Bool)

(assert (=> d!1726016 m!6429976))

(assert (=> b!5405615 m!6429160))

(declare-fun m!6429978 () Bool)

(assert (=> b!5405615 m!6429978))

(declare-fun m!6429980 () Bool)

(assert (=> b!5405616 m!6429980))

(assert (=> b!5405616 m!6429160))

(assert (=> b!5405616 m!6429980))

(declare-fun m!6429982 () Bool)

(assert (=> b!5405616 m!6429982))

(declare-fun m!6429984 () Bool)

(assert (=> b!5405616 m!6429984))

(assert (=> b!5405616 m!6429982))

(assert (=> b!5405616 m!6429984))

(declare-fun m!6429986 () Bool)

(assert (=> b!5405616 m!6429986))

(assert (=> b!5404812 d!1726016))

(declare-fun d!1726022 () Bool)

(assert (=> d!1726022 (matchR!7362 (Concat!24022 (reg!15506 (regOne!30866 r!7292)) lt!2203627) (++!13528 (_1!35679 lt!2203613) (_2!35679 lt!2203613)))))

(declare-fun lt!2203800 () Unit!154230)

(declare-fun choose!40779 (Regex!15177 Regex!15177 List!61832 List!61832) Unit!154230)

(assert (=> d!1726022 (= lt!2203800 (choose!40779 (reg!15506 (regOne!30866 r!7292)) lt!2203627 (_1!35679 lt!2203613) (_2!35679 lt!2203613)))))

(declare-fun e!3351331 () Bool)

(assert (=> d!1726022 e!3351331))

(declare-fun res!2298446 () Bool)

(assert (=> d!1726022 (=> (not res!2298446) (not e!3351331))))

(assert (=> d!1726022 (= res!2298446 (validRegex!6913 (reg!15506 (regOne!30866 r!7292))))))

(assert (=> d!1726022 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!200 (reg!15506 (regOne!30866 r!7292)) lt!2203627 (_1!35679 lt!2203613) (_2!35679 lt!2203613)) lt!2203800)))

(declare-fun b!5405628 () Bool)

(assert (=> b!5405628 (= e!3351331 (validRegex!6913 lt!2203627))))

(assert (= (and d!1726022 res!2298446) b!5405628))

(assert (=> d!1726022 m!6429122))

(assert (=> d!1726022 m!6429122))

(declare-fun m!6429994 () Bool)

(assert (=> d!1726022 m!6429994))

(declare-fun m!6429996 () Bool)

(assert (=> d!1726022 m!6429996))

(assert (=> d!1726022 m!6429898))

(assert (=> b!5405628 m!6429866))

(assert (=> b!5404812 d!1726022))

(declare-fun bm!386866 () Bool)

(declare-fun call!386871 () Bool)

(assert (=> bm!386866 (= call!386871 (isEmpty!33699 s!2326))))

(declare-fun b!5405629 () Bool)

(declare-fun e!3351332 () Bool)

(assert (=> b!5405629 (= e!3351332 (matchR!7362 (derivativeStep!4258 lt!2203584 (head!11592 s!2326)) (tail!10689 s!2326)))))

(declare-fun b!5405630 () Bool)

(declare-fun res!2298453 () Bool)

(declare-fun e!3351333 () Bool)

(assert (=> b!5405630 (=> (not res!2298453) (not e!3351333))))

(assert (=> b!5405630 (= res!2298453 (isEmpty!33699 (tail!10689 s!2326)))))

(declare-fun d!1726026 () Bool)

(declare-fun e!3351335 () Bool)

(assert (=> d!1726026 e!3351335))

(declare-fun c!942331 () Bool)

(assert (=> d!1726026 (= c!942331 ((_ is EmptyExpr!15177) lt!2203584))))

(declare-fun lt!2203801 () Bool)

(assert (=> d!1726026 (= lt!2203801 e!3351332)))

(declare-fun c!942329 () Bool)

(assert (=> d!1726026 (= c!942329 (isEmpty!33699 s!2326))))

(assert (=> d!1726026 (validRegex!6913 lt!2203584)))

(assert (=> d!1726026 (= (matchR!7362 lt!2203584 s!2326) lt!2203801)))

(declare-fun b!5405631 () Bool)

(declare-fun e!3351337 () Bool)

(assert (=> b!5405631 (= e!3351335 e!3351337)))

(declare-fun c!942330 () Bool)

(assert (=> b!5405631 (= c!942330 ((_ is EmptyLang!15177) lt!2203584))))

(declare-fun b!5405632 () Bool)

(assert (=> b!5405632 (= e!3351335 (= lt!2203801 call!386871))))

(declare-fun b!5405633 () Bool)

(assert (=> b!5405633 (= e!3351332 (nullable!5346 lt!2203584))))

(declare-fun b!5405634 () Bool)

(declare-fun res!2298452 () Bool)

(declare-fun e!3351338 () Bool)

(assert (=> b!5405634 (=> res!2298452 e!3351338)))

(assert (=> b!5405634 (= res!2298452 e!3351333)))

(declare-fun res!2298448 () Bool)

(assert (=> b!5405634 (=> (not res!2298448) (not e!3351333))))

(assert (=> b!5405634 (= res!2298448 lt!2203801)))

(declare-fun b!5405635 () Bool)

(declare-fun e!3351334 () Bool)

(assert (=> b!5405635 (= e!3351338 e!3351334)))

(declare-fun res!2298450 () Bool)

(assert (=> b!5405635 (=> (not res!2298450) (not e!3351334))))

(assert (=> b!5405635 (= res!2298450 (not lt!2203801))))

(declare-fun b!5405636 () Bool)

(declare-fun res!2298451 () Bool)

(declare-fun e!3351336 () Bool)

(assert (=> b!5405636 (=> res!2298451 e!3351336)))

(assert (=> b!5405636 (= res!2298451 (not (isEmpty!33699 (tail!10689 s!2326))))))

(declare-fun b!5405637 () Bool)

(assert (=> b!5405637 (= e!3351334 e!3351336)))

(declare-fun res!2298449 () Bool)

(assert (=> b!5405637 (=> res!2298449 e!3351336)))

(assert (=> b!5405637 (= res!2298449 call!386871)))

(declare-fun b!5405638 () Bool)

(declare-fun res!2298454 () Bool)

(assert (=> b!5405638 (=> res!2298454 e!3351338)))

(assert (=> b!5405638 (= res!2298454 (not ((_ is ElementMatch!15177) lt!2203584)))))

(assert (=> b!5405638 (= e!3351337 e!3351338)))

(declare-fun b!5405639 () Bool)

(assert (=> b!5405639 (= e!3351337 (not lt!2203801))))

(declare-fun b!5405640 () Bool)

(assert (=> b!5405640 (= e!3351333 (= (head!11592 s!2326) (c!942101 lt!2203584)))))

(declare-fun b!5405641 () Bool)

(declare-fun res!2298447 () Bool)

(assert (=> b!5405641 (=> (not res!2298447) (not e!3351333))))

(assert (=> b!5405641 (= res!2298447 (not call!386871))))

(declare-fun b!5405642 () Bool)

(assert (=> b!5405642 (= e!3351336 (not (= (head!11592 s!2326) (c!942101 lt!2203584))))))

(assert (= (and d!1726026 c!942329) b!5405633))

(assert (= (and d!1726026 (not c!942329)) b!5405629))

(assert (= (and d!1726026 c!942331) b!5405632))

(assert (= (and d!1726026 (not c!942331)) b!5405631))

(assert (= (and b!5405631 c!942330) b!5405639))

(assert (= (and b!5405631 (not c!942330)) b!5405638))

(assert (= (and b!5405638 (not res!2298454)) b!5405634))

(assert (= (and b!5405634 res!2298448) b!5405641))

(assert (= (and b!5405641 res!2298447) b!5405630))

(assert (= (and b!5405630 res!2298453) b!5405640))

(assert (= (and b!5405634 (not res!2298452)) b!5405635))

(assert (= (and b!5405635 res!2298450) b!5405637))

(assert (= (and b!5405637 (not res!2298449)) b!5405636))

(assert (= (and b!5405636 (not res!2298451)) b!5405642))

(assert (= (or b!5405632 b!5405637 b!5405641) bm!386866))

(assert (=> b!5405640 m!6429346))

(declare-fun m!6429998 () Bool)

(assert (=> b!5405633 m!6429998))

(assert (=> b!5405636 m!6429350))

(assert (=> b!5405636 m!6429350))

(assert (=> b!5405636 m!6429616))

(assert (=> bm!386866 m!6429342))

(assert (=> b!5405642 m!6429346))

(assert (=> d!1726026 m!6429342))

(assert (=> d!1726026 m!6429932))

(assert (=> b!5405630 m!6429350))

(assert (=> b!5405630 m!6429350))

(assert (=> b!5405630 m!6429616))

(assert (=> b!5405629 m!6429346))

(assert (=> b!5405629 m!6429346))

(declare-fun m!6430000 () Bool)

(assert (=> b!5405629 m!6430000))

(assert (=> b!5405629 m!6429350))

(assert (=> b!5405629 m!6430000))

(assert (=> b!5405629 m!6429350))

(declare-fun m!6430002 () Bool)

(assert (=> b!5405629 m!6430002))

(assert (=> b!5404812 d!1726026))

(declare-fun bm!386867 () Bool)

(declare-fun call!386872 () Bool)

(assert (=> bm!386867 (= call!386872 (isEmpty!33699 (_1!35679 lt!2203613)))))

(declare-fun b!5405643 () Bool)

(declare-fun e!3351339 () Bool)

(assert (=> b!5405643 (= e!3351339 (matchR!7362 (derivativeStep!4258 (reg!15506 (regOne!30866 r!7292)) (head!11592 (_1!35679 lt!2203613))) (tail!10689 (_1!35679 lt!2203613))))))

(declare-fun b!5405644 () Bool)

(declare-fun res!2298461 () Bool)

(declare-fun e!3351340 () Bool)

(assert (=> b!5405644 (=> (not res!2298461) (not e!3351340))))

(assert (=> b!5405644 (= res!2298461 (isEmpty!33699 (tail!10689 (_1!35679 lt!2203613))))))

(declare-fun d!1726028 () Bool)

(declare-fun e!3351342 () Bool)

(assert (=> d!1726028 e!3351342))

(declare-fun c!942334 () Bool)

(assert (=> d!1726028 (= c!942334 ((_ is EmptyExpr!15177) (reg!15506 (regOne!30866 r!7292))))))

(declare-fun lt!2203802 () Bool)

(assert (=> d!1726028 (= lt!2203802 e!3351339)))

(declare-fun c!942332 () Bool)

(assert (=> d!1726028 (= c!942332 (isEmpty!33699 (_1!35679 lt!2203613)))))

(assert (=> d!1726028 (validRegex!6913 (reg!15506 (regOne!30866 r!7292)))))

(assert (=> d!1726028 (= (matchR!7362 (reg!15506 (regOne!30866 r!7292)) (_1!35679 lt!2203613)) lt!2203802)))

(declare-fun b!5405645 () Bool)

(declare-fun e!3351344 () Bool)

(assert (=> b!5405645 (= e!3351342 e!3351344)))

(declare-fun c!942333 () Bool)

(assert (=> b!5405645 (= c!942333 ((_ is EmptyLang!15177) (reg!15506 (regOne!30866 r!7292))))))

(declare-fun b!5405646 () Bool)

(assert (=> b!5405646 (= e!3351342 (= lt!2203802 call!386872))))

(declare-fun b!5405647 () Bool)

(assert (=> b!5405647 (= e!3351339 (nullable!5346 (reg!15506 (regOne!30866 r!7292))))))

(declare-fun b!5405648 () Bool)

(declare-fun res!2298460 () Bool)

(declare-fun e!3351345 () Bool)

(assert (=> b!5405648 (=> res!2298460 e!3351345)))

(assert (=> b!5405648 (= res!2298460 e!3351340)))

(declare-fun res!2298456 () Bool)

(assert (=> b!5405648 (=> (not res!2298456) (not e!3351340))))

(assert (=> b!5405648 (= res!2298456 lt!2203802)))

(declare-fun b!5405649 () Bool)

(declare-fun e!3351341 () Bool)

(assert (=> b!5405649 (= e!3351345 e!3351341)))

(declare-fun res!2298458 () Bool)

(assert (=> b!5405649 (=> (not res!2298458) (not e!3351341))))

(assert (=> b!5405649 (= res!2298458 (not lt!2203802))))

(declare-fun b!5405650 () Bool)

(declare-fun res!2298459 () Bool)

(declare-fun e!3351343 () Bool)

(assert (=> b!5405650 (=> res!2298459 e!3351343)))

(assert (=> b!5405650 (= res!2298459 (not (isEmpty!33699 (tail!10689 (_1!35679 lt!2203613)))))))

(declare-fun b!5405651 () Bool)

(assert (=> b!5405651 (= e!3351341 e!3351343)))

(declare-fun res!2298457 () Bool)

(assert (=> b!5405651 (=> res!2298457 e!3351343)))

(assert (=> b!5405651 (= res!2298457 call!386872)))

(declare-fun b!5405652 () Bool)

(declare-fun res!2298462 () Bool)

(assert (=> b!5405652 (=> res!2298462 e!3351345)))

(assert (=> b!5405652 (= res!2298462 (not ((_ is ElementMatch!15177) (reg!15506 (regOne!30866 r!7292)))))))

(assert (=> b!5405652 (= e!3351344 e!3351345)))

(declare-fun b!5405653 () Bool)

(assert (=> b!5405653 (= e!3351344 (not lt!2203802))))

(declare-fun b!5405654 () Bool)

(assert (=> b!5405654 (= e!3351340 (= (head!11592 (_1!35679 lt!2203613)) (c!942101 (reg!15506 (regOne!30866 r!7292)))))))

(declare-fun b!5405655 () Bool)

(declare-fun res!2298455 () Bool)

(assert (=> b!5405655 (=> (not res!2298455) (not e!3351340))))

(assert (=> b!5405655 (= res!2298455 (not call!386872))))

(declare-fun b!5405656 () Bool)

(assert (=> b!5405656 (= e!3351343 (not (= (head!11592 (_1!35679 lt!2203613)) (c!942101 (reg!15506 (regOne!30866 r!7292))))))))

(assert (= (and d!1726028 c!942332) b!5405647))

(assert (= (and d!1726028 (not c!942332)) b!5405643))

(assert (= (and d!1726028 c!942334) b!5405646))

(assert (= (and d!1726028 (not c!942334)) b!5405645))

(assert (= (and b!5405645 c!942333) b!5405653))

(assert (= (and b!5405645 (not c!942333)) b!5405652))

(assert (= (and b!5405652 (not res!2298462)) b!5405648))

(assert (= (and b!5405648 res!2298456) b!5405655))

(assert (= (and b!5405655 res!2298455) b!5405644))

(assert (= (and b!5405644 res!2298461) b!5405654))

(assert (= (and b!5405648 (not res!2298460)) b!5405649))

(assert (= (and b!5405649 res!2298458) b!5405651))

(assert (= (and b!5405651 (not res!2298457)) b!5405650))

(assert (= (and b!5405650 (not res!2298459)) b!5405656))

(assert (= (or b!5405646 b!5405651 b!5405655) bm!386867))

(assert (=> b!5405654 m!6429632))

(declare-fun m!6430004 () Bool)

(assert (=> b!5405647 m!6430004))

(assert (=> b!5405650 m!6429636))

(assert (=> b!5405650 m!6429636))

(declare-fun m!6430006 () Bool)

(assert (=> b!5405650 m!6430006))

(assert (=> bm!386867 m!6429628))

(assert (=> b!5405656 m!6429632))

(assert (=> d!1726028 m!6429628))

(assert (=> d!1726028 m!6429898))

(assert (=> b!5405644 m!6429636))

(assert (=> b!5405644 m!6429636))

(assert (=> b!5405644 m!6430006))

(assert (=> b!5405643 m!6429632))

(assert (=> b!5405643 m!6429632))

(declare-fun m!6430008 () Bool)

(assert (=> b!5405643 m!6430008))

(assert (=> b!5405643 m!6429636))

(assert (=> b!5405643 m!6430008))

(assert (=> b!5405643 m!6429636))

(declare-fun m!6430010 () Bool)

(assert (=> b!5405643 m!6430010))

(assert (=> b!5404812 d!1726028))

(declare-fun bm!386868 () Bool)

(declare-fun call!386873 () Bool)

(assert (=> bm!386868 (= call!386873 (isEmpty!33699 lt!2203601))))

(declare-fun b!5405657 () Bool)

(declare-fun e!3351346 () Bool)

(assert (=> b!5405657 (= e!3351346 (matchR!7362 (derivativeStep!4258 lt!2203620 (head!11592 lt!2203601)) (tail!10689 lt!2203601)))))

(declare-fun b!5405658 () Bool)

(declare-fun res!2298469 () Bool)

(declare-fun e!3351347 () Bool)

(assert (=> b!5405658 (=> (not res!2298469) (not e!3351347))))

(assert (=> b!5405658 (= res!2298469 (isEmpty!33699 (tail!10689 lt!2203601)))))

(declare-fun d!1726030 () Bool)

(declare-fun e!3351349 () Bool)

(assert (=> d!1726030 e!3351349))

(declare-fun c!942337 () Bool)

(assert (=> d!1726030 (= c!942337 ((_ is EmptyExpr!15177) lt!2203620))))

(declare-fun lt!2203807 () Bool)

(assert (=> d!1726030 (= lt!2203807 e!3351346)))

(declare-fun c!942335 () Bool)

(assert (=> d!1726030 (= c!942335 (isEmpty!33699 lt!2203601))))

(assert (=> d!1726030 (validRegex!6913 lt!2203620)))

(assert (=> d!1726030 (= (matchR!7362 lt!2203620 lt!2203601) lt!2203807)))

(declare-fun b!5405659 () Bool)

(declare-fun e!3351351 () Bool)

(assert (=> b!5405659 (= e!3351349 e!3351351)))

(declare-fun c!942336 () Bool)

(assert (=> b!5405659 (= c!942336 ((_ is EmptyLang!15177) lt!2203620))))

(declare-fun b!5405660 () Bool)

(assert (=> b!5405660 (= e!3351349 (= lt!2203807 call!386873))))

(declare-fun b!5405661 () Bool)

(assert (=> b!5405661 (= e!3351346 (nullable!5346 lt!2203620))))

(declare-fun b!5405662 () Bool)

(declare-fun res!2298468 () Bool)

(declare-fun e!3351352 () Bool)

(assert (=> b!5405662 (=> res!2298468 e!3351352)))

(assert (=> b!5405662 (= res!2298468 e!3351347)))

(declare-fun res!2298464 () Bool)

(assert (=> b!5405662 (=> (not res!2298464) (not e!3351347))))

(assert (=> b!5405662 (= res!2298464 lt!2203807)))

(declare-fun b!5405663 () Bool)

(declare-fun e!3351348 () Bool)

(assert (=> b!5405663 (= e!3351352 e!3351348)))

(declare-fun res!2298466 () Bool)

(assert (=> b!5405663 (=> (not res!2298466) (not e!3351348))))

(assert (=> b!5405663 (= res!2298466 (not lt!2203807))))

(declare-fun b!5405664 () Bool)

(declare-fun res!2298467 () Bool)

(declare-fun e!3351350 () Bool)

(assert (=> b!5405664 (=> res!2298467 e!3351350)))

(assert (=> b!5405664 (= res!2298467 (not (isEmpty!33699 (tail!10689 lt!2203601))))))

(declare-fun b!5405665 () Bool)

(assert (=> b!5405665 (= e!3351348 e!3351350)))

(declare-fun res!2298465 () Bool)

(assert (=> b!5405665 (=> res!2298465 e!3351350)))

(assert (=> b!5405665 (= res!2298465 call!386873)))

(declare-fun b!5405666 () Bool)

(declare-fun res!2298470 () Bool)

(assert (=> b!5405666 (=> res!2298470 e!3351352)))

(assert (=> b!5405666 (= res!2298470 (not ((_ is ElementMatch!15177) lt!2203620)))))

(assert (=> b!5405666 (= e!3351351 e!3351352)))

(declare-fun b!5405667 () Bool)

(assert (=> b!5405667 (= e!3351351 (not lt!2203807))))

(declare-fun b!5405668 () Bool)

(assert (=> b!5405668 (= e!3351347 (= (head!11592 lt!2203601) (c!942101 lt!2203620)))))

(declare-fun b!5405669 () Bool)

(declare-fun res!2298463 () Bool)

(assert (=> b!5405669 (=> (not res!2298463) (not e!3351347))))

(assert (=> b!5405669 (= res!2298463 (not call!386873))))

(declare-fun b!5405670 () Bool)

(assert (=> b!5405670 (= e!3351350 (not (= (head!11592 lt!2203601) (c!942101 lt!2203620))))))

(assert (= (and d!1726030 c!942335) b!5405661))

(assert (= (and d!1726030 (not c!942335)) b!5405657))

(assert (= (and d!1726030 c!942337) b!5405660))

(assert (= (and d!1726030 (not c!942337)) b!5405659))

(assert (= (and b!5405659 c!942336) b!5405667))

(assert (= (and b!5405659 (not c!942336)) b!5405666))

(assert (= (and b!5405666 (not res!2298470)) b!5405662))

(assert (= (and b!5405662 res!2298464) b!5405669))

(assert (= (and b!5405669 res!2298463) b!5405658))

(assert (= (and b!5405658 res!2298469) b!5405668))

(assert (= (and b!5405662 (not res!2298468)) b!5405663))

(assert (= (and b!5405663 res!2298466) b!5405665))

(assert (= (and b!5405665 (not res!2298465)) b!5405664))

(assert (= (and b!5405664 (not res!2298467)) b!5405670))

(assert (= (or b!5405660 b!5405665 b!5405669) bm!386868))

(assert (=> b!5405668 m!6429980))

(assert (=> b!5405661 m!6429614))

(assert (=> b!5405664 m!6429984))

(assert (=> b!5405664 m!6429984))

(declare-fun m!6430012 () Bool)

(assert (=> b!5405664 m!6430012))

(assert (=> bm!386868 m!6429976))

(assert (=> b!5405670 m!6429980))

(assert (=> d!1726030 m!6429976))

(assert (=> d!1726030 m!6429618))

(assert (=> b!5405658 m!6429984))

(assert (=> b!5405658 m!6429984))

(assert (=> b!5405658 m!6430012))

(assert (=> b!5405657 m!6429980))

(assert (=> b!5405657 m!6429980))

(declare-fun m!6430014 () Bool)

(assert (=> b!5405657 m!6430014))

(assert (=> b!5405657 m!6429984))

(assert (=> b!5405657 m!6430014))

(assert (=> b!5405657 m!6429984))

(declare-fun m!6430016 () Bool)

(assert (=> b!5405657 m!6430016))

(assert (=> b!5404812 d!1726030))

(declare-fun b!5405672 () Bool)

(declare-fun lt!2203811 () Unit!154230)

(declare-fun lt!2203812 () Unit!154230)

(assert (=> b!5405672 (= lt!2203811 lt!2203812)))

(assert (=> b!5405672 (= (++!13528 (++!13528 Nil!61708 (Cons!61708 (h!68156 s!2326) Nil!61708)) (t!375055 s!2326)) s!2326)))

(assert (=> b!5405672 (= lt!2203812 (lemmaMoveElementToOtherListKeepsConcatEq!1832 Nil!61708 (h!68156 s!2326) (t!375055 s!2326) s!2326))))

(declare-fun e!3351354 () Option!15288)

(assert (=> b!5405672 (= e!3351354 (findConcatSeparation!1702 lt!2203635 (regTwo!30866 r!7292) (++!13528 Nil!61708 (Cons!61708 (h!68156 s!2326) Nil!61708)) (t!375055 s!2326) s!2326))))

(declare-fun b!5405673 () Bool)

(declare-fun e!3351355 () Bool)

(declare-fun lt!2203810 () Option!15288)

(assert (=> b!5405673 (= e!3351355 (not (isDefined!11991 lt!2203810)))))

(declare-fun b!5405674 () Bool)

(declare-fun e!3351353 () Bool)

(assert (=> b!5405674 (= e!3351353 (= (++!13528 (_1!35679 (get!21268 lt!2203810)) (_2!35679 (get!21268 lt!2203810))) s!2326))))

(declare-fun b!5405675 () Bool)

(declare-fun res!2298471 () Bool)

(assert (=> b!5405675 (=> (not res!2298471) (not e!3351353))))

(assert (=> b!5405675 (= res!2298471 (matchR!7362 lt!2203635 (_1!35679 (get!21268 lt!2203810))))))

(declare-fun b!5405676 () Bool)

(declare-fun e!3351357 () Option!15288)

(assert (=> b!5405676 (= e!3351357 e!3351354)))

(declare-fun c!942338 () Bool)

(assert (=> b!5405676 (= c!942338 ((_ is Nil!61708) s!2326))))

(declare-fun d!1726032 () Bool)

(assert (=> d!1726032 e!3351355))

(declare-fun res!2298474 () Bool)

(assert (=> d!1726032 (=> res!2298474 e!3351355)))

(assert (=> d!1726032 (= res!2298474 e!3351353)))

(declare-fun res!2298472 () Bool)

(assert (=> d!1726032 (=> (not res!2298472) (not e!3351353))))

(assert (=> d!1726032 (= res!2298472 (isDefined!11991 lt!2203810))))

(assert (=> d!1726032 (= lt!2203810 e!3351357)))

(declare-fun c!942339 () Bool)

(declare-fun e!3351356 () Bool)

(assert (=> d!1726032 (= c!942339 e!3351356)))

(declare-fun res!2298475 () Bool)

(assert (=> d!1726032 (=> (not res!2298475) (not e!3351356))))

(assert (=> d!1726032 (= res!2298475 (matchR!7362 lt!2203635 Nil!61708))))

(assert (=> d!1726032 (validRegex!6913 lt!2203635)))

(assert (=> d!1726032 (= (findConcatSeparation!1702 lt!2203635 (regTwo!30866 r!7292) Nil!61708 s!2326 s!2326) lt!2203810)))

(declare-fun b!5405671 () Bool)

(assert (=> b!5405671 (= e!3351354 None!15287)))

(declare-fun b!5405677 () Bool)

(declare-fun res!2298473 () Bool)

(assert (=> b!5405677 (=> (not res!2298473) (not e!3351353))))

(assert (=> b!5405677 (= res!2298473 (matchR!7362 (regTwo!30866 r!7292) (_2!35679 (get!21268 lt!2203810))))))

(declare-fun b!5405678 () Bool)

(assert (=> b!5405678 (= e!3351357 (Some!15287 (tuple2!64753 Nil!61708 s!2326)))))

(declare-fun b!5405679 () Bool)

(assert (=> b!5405679 (= e!3351356 (matchR!7362 (regTwo!30866 r!7292) s!2326))))

(assert (= (and d!1726032 res!2298475) b!5405679))

(assert (= (and d!1726032 c!942339) b!5405678))

(assert (= (and d!1726032 (not c!942339)) b!5405676))

(assert (= (and b!5405676 c!942338) b!5405671))

(assert (= (and b!5405676 (not c!942338)) b!5405672))

(assert (= (and d!1726032 res!2298472) b!5405675))

(assert (= (and b!5405675 res!2298471) b!5405677))

(assert (= (and b!5405677 res!2298473) b!5405674))

(assert (= (and d!1726032 (not res!2298474)) b!5405673))

(declare-fun m!6430034 () Bool)

(assert (=> b!5405675 m!6430034))

(declare-fun m!6430036 () Bool)

(assert (=> b!5405675 m!6430036))

(declare-fun m!6430038 () Bool)

(assert (=> b!5405673 m!6430038))

(assert (=> d!1726032 m!6430038))

(declare-fun m!6430040 () Bool)

(assert (=> d!1726032 m!6430040))

(assert (=> d!1726032 m!6429212))

(assert (=> b!5405679 m!6429704))

(assert (=> b!5405677 m!6430034))

(declare-fun m!6430042 () Bool)

(assert (=> b!5405677 m!6430042))

(assert (=> b!5405672 m!6429332))

(assert (=> b!5405672 m!6429332))

(assert (=> b!5405672 m!6429334))

(assert (=> b!5405672 m!6429336))

(assert (=> b!5405672 m!6429332))

(declare-fun m!6430044 () Bool)

(assert (=> b!5405672 m!6430044))

(assert (=> b!5405674 m!6430034))

(declare-fun m!6430046 () Bool)

(assert (=> b!5405674 m!6430046))

(assert (=> b!5404812 d!1726032))

(declare-fun d!1726040 () Bool)

(assert (=> d!1726040 (= (matchR!7362 lt!2203627 (_2!35679 lt!2203613)) (matchZipper!1421 lt!2203605 (_2!35679 lt!2203613)))))

(declare-fun lt!2203819 () Unit!154230)

(declare-fun choose!40781 ((InoxSet Context!9122) List!61831 Regex!15177 List!61832) Unit!154230)

(assert (=> d!1726040 (= lt!2203819 (choose!40781 lt!2203605 lt!2203614 lt!2203627 (_2!35679 lt!2203613)))))

(assert (=> d!1726040 (validRegex!6913 lt!2203627)))

(assert (=> d!1726040 (= (theoremZipperRegexEquiv!491 lt!2203605 lt!2203614 lt!2203627 (_2!35679 lt!2203613)) lt!2203819)))

(declare-fun bs!1248910 () Bool)

(assert (= bs!1248910 d!1726040))

(assert (=> bs!1248910 m!6429206))

(assert (=> bs!1248910 m!6429072))

(declare-fun m!6430080 () Bool)

(assert (=> bs!1248910 m!6430080))

(assert (=> bs!1248910 m!6429866))

(assert (=> b!5404812 d!1726040))

(declare-fun d!1726052 () Bool)

(assert (=> d!1726052 (= (matchR!7362 (reg!15506 (regOne!30866 r!7292)) (_1!35679 lt!2203613)) (matchZipper!1421 lt!2203626 (_1!35679 lt!2203613)))))

(declare-fun lt!2203821 () Unit!154230)

(assert (=> d!1726052 (= lt!2203821 (choose!40781 lt!2203626 lt!2203595 (reg!15506 (regOne!30866 r!7292)) (_1!35679 lt!2203613)))))

(assert (=> d!1726052 (validRegex!6913 (reg!15506 (regOne!30866 r!7292)))))

(assert (=> d!1726052 (= (theoremZipperRegexEquiv!491 lt!2203626 lt!2203595 (reg!15506 (regOne!30866 r!7292)) (_1!35679 lt!2203613)) lt!2203821)))

(declare-fun bs!1248911 () Bool)

(assert (= bs!1248911 d!1726052))

(assert (=> bs!1248911 m!6429204))

(assert (=> bs!1248911 m!6429078))

(declare-fun m!6430082 () Bool)

(assert (=> bs!1248911 m!6430082))

(assert (=> bs!1248911 m!6429898))

(assert (=> b!5404812 d!1726052))

(declare-fun d!1726054 () Bool)

(assert (=> d!1726054 (= (isDefined!11991 (findConcatSeparation!1702 lt!2203635 (regTwo!30866 r!7292) Nil!61708 s!2326 s!2326)) (not (isEmpty!33698 (findConcatSeparation!1702 lt!2203635 (regTwo!30866 r!7292) Nil!61708 s!2326 s!2326))))))

(declare-fun bs!1248912 () Bool)

(assert (= bs!1248912 d!1726054))

(assert (=> bs!1248912 m!6429190))

(declare-fun m!6430084 () Bool)

(assert (=> bs!1248912 m!6430084))

(assert (=> b!5404812 d!1726054))

(declare-fun bs!1248913 () Bool)

(declare-fun b!5405730 () Bool)

(assert (= bs!1248913 (and b!5405730 d!1725910)))

(declare-fun lambda!281796 () Int)

(assert (=> bs!1248913 (not (= lambda!281796 lambda!281751))))

(declare-fun bs!1248914 () Bool)

(assert (= bs!1248914 (and b!5405730 d!1726006)))

(assert (=> bs!1248914 (not (= lambda!281796 lambda!281790))))

(declare-fun bs!1248915 () Bool)

(assert (= bs!1248915 (and b!5405730 b!5405241)))

(assert (=> bs!1248915 (= (and (= (reg!15506 lt!2203584) (reg!15506 lt!2203620)) (= lt!2203584 lt!2203620)) (= lambda!281796 lambda!281742))))

(declare-fun bs!1248916 () Bool)

(assert (= bs!1248916 (and b!5405730 b!5405406)))

(assert (=> bs!1248916 (= (and (= (reg!15506 lt!2203584) (reg!15506 r!7292)) (= lt!2203584 r!7292)) (= lambda!281796 lambda!281767))))

(declare-fun bs!1248917 () Bool)

(assert (= bs!1248917 (and b!5405730 b!5405400)))

(assert (=> bs!1248917 (not (= lambda!281796 lambda!281768))))

(declare-fun bs!1248918 () Bool)

(assert (= bs!1248918 (and b!5405730 d!1725928)))

(assert (=> bs!1248918 (not (= lambda!281796 lambda!281765))))

(declare-fun bs!1248919 () Bool)

(assert (= bs!1248919 (and b!5405730 b!5404812)))

(assert (=> bs!1248919 (not (= lambda!281796 lambda!281717))))

(assert (=> bs!1248919 (not (= lambda!281796 lambda!281716))))

(declare-fun bs!1248920 () Bool)

(assert (= bs!1248920 (and b!5405730 d!1726012)))

(assert (=> bs!1248920 (not (= lambda!281796 lambda!281791))))

(assert (=> bs!1248914 (not (= lambda!281796 lambda!281789))))

(assert (=> bs!1248918 (not (= lambda!281796 lambda!281763))))

(declare-fun bs!1248921 () Bool)

(assert (= bs!1248921 (and b!5405730 b!5404807)))

(assert (=> bs!1248921 (not (= lambda!281796 lambda!281712))))

(declare-fun bs!1248922 () Bool)

(assert (= bs!1248922 (and b!5405730 b!5405235)))

(assert (=> bs!1248922 (not (= lambda!281796 lambda!281743))))

(assert (=> bs!1248921 (not (= lambda!281796 lambda!281711))))

(assert (=> b!5405730 true))

(assert (=> b!5405730 true))

(declare-fun bs!1248923 () Bool)

(declare-fun b!5405724 () Bool)

(assert (= bs!1248923 (and b!5405724 d!1725910)))

(declare-fun lambda!281797 () Int)

(assert (=> bs!1248923 (not (= lambda!281797 lambda!281751))))

(declare-fun bs!1248924 () Bool)

(assert (= bs!1248924 (and b!5405724 d!1726006)))

(assert (=> bs!1248924 (= (and (= (regOne!30866 lt!2203584) lt!2203635) (= (regTwo!30866 lt!2203584) (regTwo!30866 r!7292))) (= lambda!281797 lambda!281790))))

(declare-fun bs!1248925 () Bool)

(assert (= bs!1248925 (and b!5405724 b!5405241)))

(assert (=> bs!1248925 (not (= lambda!281797 lambda!281742))))

(declare-fun bs!1248926 () Bool)

(assert (= bs!1248926 (and b!5405724 b!5405406)))

(assert (=> bs!1248926 (not (= lambda!281797 lambda!281767))))

(declare-fun bs!1248927 () Bool)

(assert (= bs!1248927 (and b!5405724 b!5405400)))

(assert (=> bs!1248927 (= (and (= (regOne!30866 lt!2203584) (regOne!30866 r!7292)) (= (regTwo!30866 lt!2203584) (regTwo!30866 r!7292))) (= lambda!281797 lambda!281768))))

(declare-fun bs!1248928 () Bool)

(assert (= bs!1248928 (and b!5405724 b!5405730)))

(assert (=> bs!1248928 (not (= lambda!281797 lambda!281796))))

(declare-fun bs!1248929 () Bool)

(assert (= bs!1248929 (and b!5405724 d!1725928)))

(assert (=> bs!1248929 (= (and (= (regOne!30866 lt!2203584) (regOne!30866 r!7292)) (= (regTwo!30866 lt!2203584) (regTwo!30866 r!7292))) (= lambda!281797 lambda!281765))))

(declare-fun bs!1248930 () Bool)

(assert (= bs!1248930 (and b!5405724 b!5404812)))

(assert (=> bs!1248930 (= (and (= (regOne!30866 lt!2203584) lt!2203635) (= (regTwo!30866 lt!2203584) (regTwo!30866 r!7292))) (= lambda!281797 lambda!281717))))

(assert (=> bs!1248930 (not (= lambda!281797 lambda!281716))))

(declare-fun bs!1248931 () Bool)

(assert (= bs!1248931 (and b!5405724 d!1726012)))

(assert (=> bs!1248931 (not (= lambda!281797 lambda!281791))))

(assert (=> bs!1248924 (not (= lambda!281797 lambda!281789))))

(assert (=> bs!1248929 (not (= lambda!281797 lambda!281763))))

(declare-fun bs!1248932 () Bool)

(assert (= bs!1248932 (and b!5405724 b!5404807)))

(assert (=> bs!1248932 (= (and (= (regOne!30866 lt!2203584) (regOne!30866 r!7292)) (= (regTwo!30866 lt!2203584) (regTwo!30866 r!7292))) (= lambda!281797 lambda!281712))))

(declare-fun bs!1248933 () Bool)

(assert (= bs!1248933 (and b!5405724 b!5405235)))

(assert (=> bs!1248933 (= (and (= (regOne!30866 lt!2203584) (regOne!30866 lt!2203620)) (= (regTwo!30866 lt!2203584) (regTwo!30866 lt!2203620))) (= lambda!281797 lambda!281743))))

(assert (=> bs!1248932 (not (= lambda!281797 lambda!281711))))

(assert (=> b!5405724 true))

(assert (=> b!5405724 true))

(declare-fun d!1726056 () Bool)

(declare-fun c!942349 () Bool)

(assert (=> d!1726056 (= c!942349 ((_ is EmptyExpr!15177) lt!2203584))))

(declare-fun e!3351385 () Bool)

(assert (=> d!1726056 (= (matchRSpec!2280 lt!2203584 s!2326) e!3351385)))

(declare-fun b!5405722 () Bool)

(declare-fun e!3351382 () Bool)

(declare-fun e!3351384 () Bool)

(assert (=> b!5405722 (= e!3351382 e!3351384)))

(declare-fun c!942352 () Bool)

(assert (=> b!5405722 (= c!942352 ((_ is Star!15177) lt!2203584))))

(declare-fun b!5405723 () Bool)

(declare-fun e!3351380 () Bool)

(assert (=> b!5405723 (= e!3351382 e!3351380)))

(declare-fun res!2298502 () Bool)

(assert (=> b!5405723 (= res!2298502 (matchRSpec!2280 (regOne!30867 lt!2203584) s!2326))))

(assert (=> b!5405723 (=> res!2298502 e!3351380)))

(declare-fun call!386878 () Bool)

(assert (=> b!5405724 (= e!3351384 call!386878)))

(declare-fun b!5405725 () Bool)

(declare-fun call!386877 () Bool)

(assert (=> b!5405725 (= e!3351385 call!386877)))

(declare-fun b!5405726 () Bool)

(declare-fun res!2298501 () Bool)

(declare-fun e!3351383 () Bool)

(assert (=> b!5405726 (=> res!2298501 e!3351383)))

(assert (=> b!5405726 (= res!2298501 call!386877)))

(assert (=> b!5405726 (= e!3351384 e!3351383)))

(declare-fun bm!386872 () Bool)

(assert (=> bm!386872 (= call!386877 (isEmpty!33699 s!2326))))

(declare-fun b!5405727 () Bool)

(declare-fun e!3351381 () Bool)

(assert (=> b!5405727 (= e!3351385 e!3351381)))

(declare-fun res!2298500 () Bool)

(assert (=> b!5405727 (= res!2298500 (not ((_ is EmptyLang!15177) lt!2203584)))))

(assert (=> b!5405727 (=> (not res!2298500) (not e!3351381))))

(declare-fun b!5405728 () Bool)

(assert (=> b!5405728 (= e!3351380 (matchRSpec!2280 (regTwo!30867 lt!2203584) s!2326))))

(declare-fun b!5405729 () Bool)

(declare-fun c!942350 () Bool)

(assert (=> b!5405729 (= c!942350 ((_ is ElementMatch!15177) lt!2203584))))

(declare-fun e!3351379 () Bool)

(assert (=> b!5405729 (= e!3351381 e!3351379)))

(assert (=> b!5405730 (= e!3351383 call!386878)))

(declare-fun b!5405731 () Bool)

(declare-fun c!942351 () Bool)

(assert (=> b!5405731 (= c!942351 ((_ is Union!15177) lt!2203584))))

(assert (=> b!5405731 (= e!3351379 e!3351382)))

(declare-fun bm!386873 () Bool)

(assert (=> bm!386873 (= call!386878 (Exists!2358 (ite c!942352 lambda!281796 lambda!281797)))))

(declare-fun b!5405732 () Bool)

(assert (=> b!5405732 (= e!3351379 (= s!2326 (Cons!61708 (c!942101 lt!2203584) Nil!61708)))))

(assert (= (and d!1726056 c!942349) b!5405725))

(assert (= (and d!1726056 (not c!942349)) b!5405727))

(assert (= (and b!5405727 res!2298500) b!5405729))

(assert (= (and b!5405729 c!942350) b!5405732))

(assert (= (and b!5405729 (not c!942350)) b!5405731))

(assert (= (and b!5405731 c!942351) b!5405723))

(assert (= (and b!5405731 (not c!942351)) b!5405722))

(assert (= (and b!5405723 (not res!2298502)) b!5405728))

(assert (= (and b!5405722 c!942352) b!5405726))

(assert (= (and b!5405722 (not c!942352)) b!5405724))

(assert (= (and b!5405726 (not res!2298501)) b!5405730))

(assert (= (or b!5405730 b!5405724) bm!386873))

(assert (= (or b!5405725 b!5405726) bm!386872))

(declare-fun m!6430120 () Bool)

(assert (=> b!5405723 m!6430120))

(assert (=> bm!386872 m!6429342))

(declare-fun m!6430122 () Bool)

(assert (=> b!5405728 m!6430122))

(declare-fun m!6430124 () Bool)

(assert (=> bm!386873 m!6430124))

(assert (=> b!5404812 d!1726056))

(declare-fun e!3351402 () Bool)

(assert (=> b!5404803 (= tp!1494896 e!3351402)))

(declare-fun b!5405773 () Bool)

(declare-fun tp!1494917 () Bool)

(declare-fun tp!1494916 () Bool)

(assert (=> b!5405773 (= e!3351402 (and tp!1494917 tp!1494916))))

(declare-fun b!5405770 () Bool)

(assert (=> b!5405770 (= e!3351402 tp_is_empty!39607)))

(declare-fun b!5405771 () Bool)

(declare-fun tp!1494920 () Bool)

(declare-fun tp!1494919 () Bool)

(assert (=> b!5405771 (= e!3351402 (and tp!1494920 tp!1494919))))

(declare-fun b!5405772 () Bool)

(declare-fun tp!1494918 () Bool)

(assert (=> b!5405772 (= e!3351402 tp!1494918)))

(assert (= (and b!5404803 ((_ is ElementMatch!15177) (regOne!30867 r!7292))) b!5405770))

(assert (= (and b!5404803 ((_ is Concat!24022) (regOne!30867 r!7292))) b!5405771))

(assert (= (and b!5404803 ((_ is Star!15177) (regOne!30867 r!7292))) b!5405772))

(assert (= (and b!5404803 ((_ is Union!15177) (regOne!30867 r!7292))) b!5405773))

(declare-fun e!3351403 () Bool)

(assert (=> b!5404803 (= tp!1494904 e!3351403)))

(declare-fun b!5405777 () Bool)

(declare-fun tp!1494922 () Bool)

(declare-fun tp!1494921 () Bool)

(assert (=> b!5405777 (= e!3351403 (and tp!1494922 tp!1494921))))

(declare-fun b!5405774 () Bool)

(assert (=> b!5405774 (= e!3351403 tp_is_empty!39607)))

(declare-fun b!5405775 () Bool)

(declare-fun tp!1494925 () Bool)

(declare-fun tp!1494924 () Bool)

(assert (=> b!5405775 (= e!3351403 (and tp!1494925 tp!1494924))))

(declare-fun b!5405776 () Bool)

(declare-fun tp!1494923 () Bool)

(assert (=> b!5405776 (= e!3351403 tp!1494923)))

(assert (= (and b!5404803 ((_ is ElementMatch!15177) (regTwo!30867 r!7292))) b!5405774))

(assert (= (and b!5404803 ((_ is Concat!24022) (regTwo!30867 r!7292))) b!5405775))

(assert (= (and b!5404803 ((_ is Star!15177) (regTwo!30867 r!7292))) b!5405776))

(assert (= (and b!5404803 ((_ is Union!15177) (regTwo!30867 r!7292))) b!5405777))

(declare-fun condSetEmpty!35192 () Bool)

(assert (=> setNonEmpty!35189 (= condSetEmpty!35192 (= setRest!35189 ((as const (Array Context!9122 Bool)) false)))))

(declare-fun setRes!35192 () Bool)

(assert (=> setNonEmpty!35189 (= tp!1494899 setRes!35192)))

(declare-fun setIsEmpty!35192 () Bool)

(assert (=> setIsEmpty!35192 setRes!35192))

(declare-fun tp!1494931 () Bool)

(declare-fun setNonEmpty!35192 () Bool)

(declare-fun setElem!35192 () Context!9122)

(declare-fun e!3351414 () Bool)

(assert (=> setNonEmpty!35192 (= setRes!35192 (and tp!1494931 (inv!81189 setElem!35192) e!3351414))))

(declare-fun setRest!35192 () (InoxSet Context!9122))

(assert (=> setNonEmpty!35192 (= setRest!35189 ((_ map or) (store ((as const (Array Context!9122 Bool)) false) setElem!35192 true) setRest!35192))))

(declare-fun b!5405795 () Bool)

(declare-fun tp!1494930 () Bool)

(assert (=> b!5405795 (= e!3351414 tp!1494930)))

(assert (= (and setNonEmpty!35189 condSetEmpty!35192) setIsEmpty!35192))

(assert (= (and setNonEmpty!35189 (not condSetEmpty!35192)) setNonEmpty!35192))

(assert (= setNonEmpty!35192 b!5405795))

(declare-fun m!6430134 () Bool)

(assert (=> setNonEmpty!35192 m!6430134))

(declare-fun b!5405800 () Bool)

(declare-fun e!3351417 () Bool)

(declare-fun tp!1494934 () Bool)

(assert (=> b!5405800 (= e!3351417 (and tp_is_empty!39607 tp!1494934))))

(assert (=> b!5404808 (= tp!1494900 e!3351417)))

(assert (= (and b!5404808 ((_ is Cons!61708) (t!375055 s!2326))) b!5405800))

(declare-fun b!5405808 () Bool)

(declare-fun e!3351423 () Bool)

(declare-fun tp!1494939 () Bool)

(assert (=> b!5405808 (= e!3351423 tp!1494939)))

(declare-fun e!3351422 () Bool)

(declare-fun b!5405807 () Bool)

(declare-fun tp!1494940 () Bool)

(assert (=> b!5405807 (= e!3351422 (and (inv!81189 (h!68155 (t!375054 zl!343))) e!3351423 tp!1494940))))

(assert (=> b!5404813 (= tp!1494901 e!3351422)))

(assert (= b!5405807 b!5405808))

(assert (= (and b!5404813 ((_ is Cons!61707) (t!375054 zl!343))) b!5405807))

(declare-fun m!6430136 () Bool)

(assert (=> b!5405807 m!6430136))

(declare-fun b!5405813 () Bool)

(declare-fun e!3351426 () Bool)

(declare-fun tp!1494945 () Bool)

(declare-fun tp!1494946 () Bool)

(assert (=> b!5405813 (= e!3351426 (and tp!1494945 tp!1494946))))

(assert (=> b!5404838 (= tp!1494902 e!3351426)))

(assert (= (and b!5404838 ((_ is Cons!61706) (exprs!5061 (h!68155 zl!343)))) b!5405813))

(declare-fun b!5405814 () Bool)

(declare-fun e!3351427 () Bool)

(declare-fun tp!1494947 () Bool)

(declare-fun tp!1494948 () Bool)

(assert (=> b!5405814 (= e!3351427 (and tp!1494947 tp!1494948))))

(assert (=> b!5404827 (= tp!1494905 e!3351427)))

(assert (= (and b!5404827 ((_ is Cons!61706) (exprs!5061 setElem!35189))) b!5405814))

(declare-fun e!3351428 () Bool)

(assert (=> b!5404844 (= tp!1494898 e!3351428)))

(declare-fun b!5405818 () Bool)

(declare-fun tp!1494950 () Bool)

(declare-fun tp!1494949 () Bool)

(assert (=> b!5405818 (= e!3351428 (and tp!1494950 tp!1494949))))

(declare-fun b!5405815 () Bool)

(assert (=> b!5405815 (= e!3351428 tp_is_empty!39607)))

(declare-fun b!5405816 () Bool)

(declare-fun tp!1494953 () Bool)

(declare-fun tp!1494952 () Bool)

(assert (=> b!5405816 (= e!3351428 (and tp!1494953 tp!1494952))))

(declare-fun b!5405817 () Bool)

(declare-fun tp!1494951 () Bool)

(assert (=> b!5405817 (= e!3351428 tp!1494951)))

(assert (= (and b!5404844 ((_ is ElementMatch!15177) (reg!15506 r!7292))) b!5405815))

(assert (= (and b!5404844 ((_ is Concat!24022) (reg!15506 r!7292))) b!5405816))

(assert (= (and b!5404844 ((_ is Star!15177) (reg!15506 r!7292))) b!5405817))

(assert (= (and b!5404844 ((_ is Union!15177) (reg!15506 r!7292))) b!5405818))

(declare-fun e!3351429 () Bool)

(assert (=> b!5404833 (= tp!1494897 e!3351429)))

(declare-fun b!5405822 () Bool)

(declare-fun tp!1494955 () Bool)

(declare-fun tp!1494954 () Bool)

(assert (=> b!5405822 (= e!3351429 (and tp!1494955 tp!1494954))))

(declare-fun b!5405819 () Bool)

(assert (=> b!5405819 (= e!3351429 tp_is_empty!39607)))

(declare-fun b!5405820 () Bool)

(declare-fun tp!1494958 () Bool)

(declare-fun tp!1494957 () Bool)

(assert (=> b!5405820 (= e!3351429 (and tp!1494958 tp!1494957))))

(declare-fun b!5405821 () Bool)

(declare-fun tp!1494956 () Bool)

(assert (=> b!5405821 (= e!3351429 tp!1494956)))

(assert (= (and b!5404833 ((_ is ElementMatch!15177) (regOne!30866 r!7292))) b!5405819))

(assert (= (and b!5404833 ((_ is Concat!24022) (regOne!30866 r!7292))) b!5405820))

(assert (= (and b!5404833 ((_ is Star!15177) (regOne!30866 r!7292))) b!5405821))

(assert (= (and b!5404833 ((_ is Union!15177) (regOne!30866 r!7292))) b!5405822))

(declare-fun e!3351430 () Bool)

(assert (=> b!5404833 (= tp!1494903 e!3351430)))

(declare-fun b!5405826 () Bool)

(declare-fun tp!1494960 () Bool)

(declare-fun tp!1494959 () Bool)

(assert (=> b!5405826 (= e!3351430 (and tp!1494960 tp!1494959))))

(declare-fun b!5405823 () Bool)

(assert (=> b!5405823 (= e!3351430 tp_is_empty!39607)))

(declare-fun b!5405824 () Bool)

(declare-fun tp!1494963 () Bool)

(declare-fun tp!1494962 () Bool)

(assert (=> b!5405824 (= e!3351430 (and tp!1494963 tp!1494962))))

(declare-fun b!5405825 () Bool)

(declare-fun tp!1494961 () Bool)

(assert (=> b!5405825 (= e!3351430 tp!1494961)))

(assert (= (and b!5404833 ((_ is ElementMatch!15177) (regTwo!30866 r!7292))) b!5405823))

(assert (= (and b!5404833 ((_ is Concat!24022) (regTwo!30866 r!7292))) b!5405824))

(assert (= (and b!5404833 ((_ is Star!15177) (regTwo!30866 r!7292))) b!5405825))

(assert (= (and b!5404833 ((_ is Union!15177) (regTwo!30866 r!7292))) b!5405826))

(declare-fun b_lambda!206565 () Bool)

(assert (= b_lambda!206549 (or b!5404816 b_lambda!206565)))

(declare-fun bs!1248944 () Bool)

(declare-fun d!1726066 () Bool)

(assert (= bs!1248944 (and d!1726066 b!5404816)))

(declare-fun lt!2203829 () Unit!154230)

(assert (=> bs!1248944 (= lt!2203829 (lemmaConcatPreservesForall!202 (exprs!5061 lt!2203624) lt!2203637 lambda!281715))))

(assert (=> bs!1248944 (= (dynLambda!24313 lambda!281714 lt!2203624) (Context!9123 (++!13527 (exprs!5061 lt!2203624) lt!2203637)))))

(declare-fun m!6430138 () Bool)

(assert (=> bs!1248944 m!6430138))

(declare-fun m!6430140 () Bool)

(assert (=> bs!1248944 m!6430140))

(assert (=> d!1725774 d!1726066))

(declare-fun b_lambda!206567 () Bool)

(assert (= b_lambda!206561 (or b!5404840 b_lambda!206567)))

(declare-fun bs!1248950 () Bool)

(declare-fun d!1726068 () Bool)

(assert (= bs!1248950 (and d!1726068 b!5404840)))

(assert (=> bs!1248950 (= (dynLambda!24314 lambda!281713 lt!2203621) (derivationStepZipperUp!549 lt!2203621 (h!68156 s!2326)))))

(assert (=> bs!1248950 m!6429174))

(assert (=> d!1725950 d!1726068))

(declare-fun b_lambda!206569 () Bool)

(assert (= b_lambda!206563 (or b!5404840 b_lambda!206569)))

(declare-fun bs!1248952 () Bool)

(declare-fun d!1726070 () Bool)

(assert (= bs!1248952 (and d!1726070 b!5404840)))

(assert (=> bs!1248952 (= (dynLambda!24314 lambda!281713 lt!2203624) (derivationStepZipperUp!549 lt!2203624 (h!68156 s!2326)))))

(assert (=> bs!1248952 m!6429178))

(assert (=> d!1725954 d!1726070))

(declare-fun b_lambda!206571 () Bool)

(assert (= b_lambda!206555 (or b!5404840 b_lambda!206571)))

(declare-fun bs!1248953 () Bool)

(declare-fun d!1726072 () Bool)

(assert (= bs!1248953 (and d!1726072 b!5404840)))

(assert (=> bs!1248953 (= (dynLambda!24314 lambda!281713 lt!2203623) (derivationStepZipperUp!549 lt!2203623 (h!68156 s!2326)))))

(assert (=> bs!1248953 m!6429116))

(assert (=> d!1725864 d!1726072))

(declare-fun b_lambda!206573 () Bool)

(assert (= b_lambda!206551 (or b!5404840 b_lambda!206573)))

(declare-fun bs!1248954 () Bool)

(declare-fun d!1726074 () Bool)

(assert (= bs!1248954 (and d!1726074 b!5404840)))

(assert (=> bs!1248954 (= (dynLambda!24314 lambda!281713 (h!68155 zl!343)) (derivationStepZipperUp!549 (h!68155 zl!343) (h!68156 s!2326)))))

(assert (=> bs!1248954 m!6429136))

(assert (=> d!1725820 d!1726074))

(check-sat (not b!5405677) (not d!1725782) (not d!1725960) (not bs!1248950) (not b!5405808) (not d!1725898) (not b!5405132) (not bm!386839) (not d!1725902) (not b!5405564) (not bm!386857) (not b!5405505) (not b!5404913) (not b!5405454) (not d!1725866) (not b!5405570) (not b!5405131) (not b!5405297) (not d!1725780) (not b!5405658) (not b!5405003) (not b!5404961) (not bm!386822) (not d!1725928) (not b!5404942) (not d!1725942) (not d!1725958) (not b!5405672) (not b!5405301) (not d!1725944) (not b!5405464) (not b!5405588) (not b!5405674) (not b!5405074) (not b!5405008) (not b!5405616) (not b!5405628) (not b!5405643) (not b!5405800) (not bm!386784) (not bm!386860) (not d!1726002) (not b_lambda!206565) (not b!5405657) (not b!5405776) (not b!5405374) (not bm!386873) (not b!5405821) (not bm!386872) (not d!1725926) (not b!5405640) (not d!1725790) (not b_lambda!206567) (not b!5405379) (not b!5405826) (not bm!386866) (not d!1726010) (not b!5405416) (not b!5405818) (not b!5405422) (not b!5405771) (not d!1725888) (not b!5405001) (not b!5405079) (not bm!386847) (not b!5405077) (not b!5405404) (not b!5405615) (not b!5405019) (not d!1725964) (not b!5405775) (not b!5405664) (not b!5405563) (not d!1725774) (not bs!1248952) (not b!5404868) (not bm!386770) (not bm!386862) (not d!1725864) (not b!5405824) (not d!1725972) (not b!5405822) (not b!5405546) (not d!1726026) (not d!1725962) (not d!1725786) (not d!1725994) (not b!5405507) (not b!5405239) (not b!5405514) (not b!5405121) (not b!5405078) (not b!5405375) (not d!1725904) (not b!5405565) (not bm!386820) (not d!1725974) (not bm!386776) (not bs!1248954) (not d!1725856) (not b!5405399) (not b!5405006) (not d!1725946) (not b!5405656) (not d!1725950) (not d!1725846) (not b!5405377) (not d!1725776) (not b!5404949) (not d!1725814) (not b!5405630) (not bm!386782) (not b!5405449) (not b!5404912) (not b_lambda!206569) (not bs!1248953) (not b!5405288) (not bm!386846) (not b!5405503) (not b!5405577) (not d!1725852) (not b!5405463) (not b!5405291) (not bm!386768) (not b!5405500) (not d!1725788) (not b!5405304) (not b!5405816) (not b!5405777) (not b!5405133) (not d!1725980) (not b!5405642) (not b!5405284) (not d!1725820) (not b!5405409) (not b!5405285) (not b!5405795) (not b!5405647) (not b!5405817) (not d!1726006) (not b!5404939) (not b!5405300) (not b!5404902) (not d!1725968) (not b!5405604) (not d!1725910) (not b!5405508) (not b!5405629) (not b!5405723) (not b!5405305) (not d!1725984) (not bs!1248944) (not d!1725966) (not b!5405381) (not d!1725906) (not b!5405654) (not b!5405579) (not bm!386771) (not b!5405163) (not bm!386804) (not b!5405636) (not d!1725824) (not b!5404950) (not d!1725854) (not b!5405644) (not b!5404936) (not b!5405501) (not b!5405807) (not bm!386835) (not b!5405589) (not d!1726012) (not d!1726052) (not b!5405773) (not bm!386783) (not b!5405728) (not b!5405447) (not d!1725810) (not b!5405075) (not b!5405413) (not b!5405668) (not b!5405650) (not b!5405295) (not b!5405452) (not b!5405813) (not bm!386806) (not b!5405234) (not b!5405420) (not b!5405130) (not d!1726054) (not b_lambda!206571) (not d!1725954) (not b!5405573) (not b!5405675) (not bm!386844) (not bm!386807) (not d!1726040) (not b!5405461) (not b!5405021) (not b!5405772) (not b!5404944) (not b!5405154) (not setNonEmpty!35192) (not d!1725778) (not b!5405670) (not b!5405502) (not b!5405081) (not d!1725806) (not d!1725978) (not d!1725858) (not b!5405376) (not b!5405825) (not d!1725850) (not d!1726028) (not d!1725920) (not b!5405462) (not d!1726022) (not b!5405814) (not b!5405156) (not d!1726030) (not b!5405679) (not d!1725794) (not b!5405633) (not bm!386774) (not d!1726016) (not b!5405567) (not bm!386845) (not b_lambda!206573) tp_is_empty!39607 (not b!5405820) (not d!1725976) (not b!5405410) (not b!5405661) (not bm!386843) (not d!1725932) (not b!5404938) (not b!5405080) (not b!5404943) (not d!1725996) (not d!1725948) (not bm!386777) (not bm!386868) (not d!1725860) (not b!5405673) (not d!1726032) (not bm!386867) (not b!5404867) (not bm!386836) (not b!5405566))
(check-sat)
