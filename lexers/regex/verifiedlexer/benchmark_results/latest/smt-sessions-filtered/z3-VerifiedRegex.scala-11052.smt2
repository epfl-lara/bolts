; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572826 () Bool)

(assert start!572826)

(declare-fun b!5474956 () Bool)

(assert (=> b!5474956 true))

(assert (=> b!5474956 true))

(declare-fun lambda!291738 () Int)

(declare-fun lambda!291737 () Int)

(assert (=> b!5474956 (not (= lambda!291738 lambda!291737))))

(assert (=> b!5474956 true))

(assert (=> b!5474956 true))

(declare-fun lambda!291739 () Int)

(assert (=> b!5474956 (not (= lambda!291739 lambda!291737))))

(assert (=> b!5474956 (not (= lambda!291739 lambda!291738))))

(assert (=> b!5474956 true))

(assert (=> b!5474956 true))

(declare-fun b!5474964 () Bool)

(assert (=> b!5474964 true))

(declare-fun b!5474941 () Bool)

(declare-fun res!2333776 () Bool)

(declare-fun e!3388884 () Bool)

(assert (=> b!5474941 (=> res!2333776 e!3388884)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30972 0))(
  ( (C!30973 (val!25188 Int)) )
))
(declare-datatypes ((Regex!15351 0))(
  ( (ElementMatch!15351 (c!956459 C!30972)) (Concat!24196 (regOne!31214 Regex!15351) (regTwo!31214 Regex!15351)) (EmptyExpr!15351) (Star!15351 (reg!15680 Regex!15351)) (EmptyLang!15351) (Union!15351 (regOne!31215 Regex!15351) (regTwo!31215 Regex!15351)) )
))
(declare-datatypes ((List!62352 0))(
  ( (Nil!62228) (Cons!62228 (h!68676 Regex!15351) (t!375581 List!62352)) )
))
(declare-datatypes ((Context!9470 0))(
  ( (Context!9471 (exprs!5235 List!62352)) )
))
(declare-fun lt!2236645 () (InoxSet Context!9470))

(declare-datatypes ((List!62353 0))(
  ( (Nil!62229) (Cons!62229 (h!68677 C!30972) (t!375582 List!62353)) )
))
(declare-fun s!2326 () List!62353)

(declare-fun matchZipper!1569 ((InoxSet Context!9470) List!62353) Bool)

(declare-fun derivationStepZipper!1546 ((InoxSet Context!9470) C!30972) (InoxSet Context!9470))

(assert (=> b!5474941 (= res!2333776 (not (= (matchZipper!1569 lt!2236645 s!2326) (matchZipper!1569 (derivationStepZipper!1546 lt!2236645 (h!68677 s!2326)) (t!375582 s!2326)))))))

(declare-fun b!5474942 () Bool)

(declare-fun e!3388899 () Bool)

(declare-fun tp!1505081 () Bool)

(declare-fun tp!1505073 () Bool)

(assert (=> b!5474942 (= e!3388899 (and tp!1505081 tp!1505073))))

(declare-fun b!5474943 () Bool)

(declare-fun e!3388883 () Bool)

(declare-fun e!3388902 () Bool)

(assert (=> b!5474943 (= e!3388883 e!3388902)))

(declare-fun res!2333764 () Bool)

(assert (=> b!5474943 (=> res!2333764 e!3388902)))

(declare-datatypes ((List!62354 0))(
  ( (Nil!62230) (Cons!62230 (h!68678 Context!9470) (t!375583 List!62354)) )
))
(declare-fun lt!2236613 () List!62354)

(declare-fun r!7292 () Regex!15351)

(declare-fun unfocusZipper!1093 (List!62354) Regex!15351)

(assert (=> b!5474943 (= res!2333764 (not (= (unfocusZipper!1093 lt!2236613) (reg!15680 r!7292))))))

(declare-fun lt!2236612 () Context!9470)

(assert (=> b!5474943 (= lt!2236613 (Cons!62230 lt!2236612 Nil!62230))))

(declare-fun b!5474944 () Bool)

(declare-fun res!2333766 () Bool)

(declare-fun e!3388896 () Bool)

(assert (=> b!5474944 (=> res!2333766 e!3388896)))

(get-info :version)

(assert (=> b!5474944 (= res!2333766 (or ((_ is EmptyExpr!15351) r!7292) ((_ is EmptyLang!15351) r!7292) ((_ is ElementMatch!15351) r!7292) ((_ is Union!15351) r!7292) ((_ is Concat!24196) r!7292)))))

(declare-fun b!5474945 () Bool)

(declare-fun tp_is_empty!39955 () Bool)

(assert (=> b!5474945 (= e!3388899 tp_is_empty!39955)))

(declare-fun b!5474946 () Bool)

(declare-fun res!2333785 () Bool)

(assert (=> b!5474946 (=> res!2333785 e!3388884)))

(declare-fun lt!2236622 () Regex!15351)

(assert (=> b!5474946 (= res!2333785 (or (not (= lt!2236622 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5474947 () Bool)

(declare-fun tp!1505078 () Bool)

(declare-fun tp!1505080 () Bool)

(assert (=> b!5474947 (= e!3388899 (and tp!1505078 tp!1505080))))

(declare-fun setRes!35965 () Bool)

(declare-fun setNonEmpty!35965 () Bool)

(declare-fun setElem!35965 () Context!9470)

(declare-fun e!3388900 () Bool)

(declare-fun tp!1505077 () Bool)

(declare-fun inv!81624 (Context!9470) Bool)

(assert (=> setNonEmpty!35965 (= setRes!35965 (and tp!1505077 (inv!81624 setElem!35965) e!3388900))))

(declare-fun z!1189 () (InoxSet Context!9470))

(declare-fun setRest!35965 () (InoxSet Context!9470))

(assert (=> setNonEmpty!35965 (= z!1189 ((_ map or) (store ((as const (Array Context!9470 Bool)) false) setElem!35965 true) setRest!35965))))

(declare-fun e!3388889 () Bool)

(declare-fun b!5474948 () Bool)

(declare-fun e!3388890 () Bool)

(declare-fun tp!1505074 () Bool)

(declare-fun zl!343 () List!62354)

(assert (=> b!5474948 (= e!3388890 (and (inv!81624 (h!68678 zl!343)) e!3388889 tp!1505074))))

(declare-fun b!5474949 () Bool)

(declare-fun tp!1505076 () Bool)

(assert (=> b!5474949 (= e!3388900 tp!1505076)))

(declare-fun b!5474951 () Bool)

(declare-fun e!3388885 () Bool)

(declare-fun lt!2236625 () Bool)

(assert (=> b!5474951 (= e!3388885 lt!2236625)))

(declare-fun b!5474952 () Bool)

(declare-fun tp!1505072 () Bool)

(assert (=> b!5474952 (= e!3388889 tp!1505072)))

(declare-fun b!5474953 () Bool)

(declare-fun res!2333780 () Bool)

(declare-fun e!3388894 () Bool)

(assert (=> b!5474953 (=> res!2333780 e!3388894)))

(declare-datatypes ((tuple2!65096 0))(
  ( (tuple2!65097 (_1!35851 List!62353) (_2!35851 List!62353)) )
))
(declare-fun lt!2236636 () tuple2!65096)

(declare-fun matchR!7536 (Regex!15351 List!62353) Bool)

(assert (=> b!5474953 (= res!2333780 (not (matchR!7536 r!7292 (_2!35851 lt!2236636))))))

(declare-fun b!5474954 () Bool)

(declare-fun e!3388891 () Bool)

(declare-fun e!3388893 () Bool)

(assert (=> b!5474954 (= e!3388891 e!3388893)))

(declare-fun res!2333781 () Bool)

(assert (=> b!5474954 (=> (not res!2333781) (not e!3388893))))

(assert (=> b!5474954 (= res!2333781 (= r!7292 lt!2236622))))

(assert (=> b!5474954 (= lt!2236622 (unfocusZipper!1093 zl!343))))

(declare-fun b!5474955 () Bool)

(declare-fun res!2333777 () Bool)

(declare-fun e!3388888 () Bool)

(assert (=> b!5474955 (=> res!2333777 e!3388888)))

(assert (=> b!5474955 (= res!2333777 ((_ is Nil!62229) s!2326))))

(assert (=> b!5474956 (= e!3388896 e!3388888)))

(declare-fun res!2333773 () Bool)

(assert (=> b!5474956 (=> res!2333773 e!3388888)))

(declare-fun lt!2236620 () Bool)

(assert (=> b!5474956 (= res!2333773 (not (= lt!2236620 e!3388885)))))

(declare-fun res!2333782 () Bool)

(assert (=> b!5474956 (=> res!2333782 e!3388885)))

(declare-fun isEmpty!34182 (List!62353) Bool)

(assert (=> b!5474956 (= res!2333782 (isEmpty!34182 s!2326))))

(declare-fun Exists!2530 (Int) Bool)

(assert (=> b!5474956 (= (Exists!2530 lambda!291737) (Exists!2530 lambda!291739))))

(declare-datatypes ((Unit!155152 0))(
  ( (Unit!155153) )
))
(declare-fun lt!2236630 () Unit!155152)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1180 (Regex!15351 Regex!15351 List!62353) Unit!155152)

(assert (=> b!5474956 (= lt!2236630 (lemmaExistCutMatchRandMatchRSpecEquivalent!1180 (reg!15680 r!7292) r!7292 s!2326))))

(assert (=> b!5474956 (= (Exists!2530 lambda!291737) (Exists!2530 lambda!291738))))

(declare-fun lt!2236638 () Unit!155152)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!504 (Regex!15351 List!62353) Unit!155152)

(assert (=> b!5474956 (= lt!2236638 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!504 (reg!15680 r!7292) s!2326))))

(assert (=> b!5474956 (= lt!2236625 (Exists!2530 lambda!291737))))

(declare-datatypes ((Option!15460 0))(
  ( (None!15459) (Some!15459 (v!51488 tuple2!65096)) )
))
(declare-fun lt!2236619 () Option!15460)

(declare-fun isDefined!12163 (Option!15460) Bool)

(assert (=> b!5474956 (= lt!2236625 (isDefined!12163 lt!2236619))))

(declare-fun findConcatSeparation!1874 (Regex!15351 Regex!15351 List!62353 List!62353 List!62353) Option!15460)

(assert (=> b!5474956 (= lt!2236619 (findConcatSeparation!1874 (reg!15680 r!7292) r!7292 Nil!62229 s!2326 s!2326))))

(declare-fun lt!2236631 () Unit!155152)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1638 (Regex!15351 Regex!15351 List!62353) Unit!155152)

(assert (=> b!5474956 (= lt!2236631 (lemmaFindConcatSeparationEquivalentToExists!1638 (reg!15680 r!7292) r!7292 s!2326))))

(declare-fun b!5474957 () Bool)

(declare-fun e!3388881 () Bool)

(assert (=> b!5474957 (= e!3388881 (= lt!2236625 (Exists!2530 lambda!291737)))))

(declare-fun b!5474958 () Bool)

(declare-fun e!3388892 () Bool)

(assert (=> b!5474958 (= e!3388892 e!3388894)))

(declare-fun res!2333769 () Bool)

(assert (=> b!5474958 (=> res!2333769 e!3388894)))

(declare-fun lt!2236626 () List!62353)

(assert (=> b!5474958 (= res!2333769 (not (= s!2326 lt!2236626)))))

(declare-fun ++!13689 (List!62353 List!62353) List!62353)

(assert (=> b!5474958 (= lt!2236626 (++!13689 (_1!35851 lt!2236636) (_2!35851 lt!2236636)))))

(declare-fun get!21457 (Option!15460) tuple2!65096)

(assert (=> b!5474958 (= lt!2236636 (get!21457 lt!2236619))))

(declare-fun b!5474959 () Bool)

(declare-fun res!2333790 () Bool)

(assert (=> b!5474959 (=> (not res!2333790) (not e!3388891))))

(declare-fun toList!9135 ((InoxSet Context!9470)) List!62354)

(assert (=> b!5474959 (= res!2333790 (= (toList!9135 z!1189) zl!343))))

(declare-fun b!5474960 () Bool)

(assert (=> b!5474960 (= e!3388894 true)))

(declare-fun lt!2236637 () List!62352)

(declare-fun lt!2236627 () List!62352)

(declare-fun ++!13690 (List!62352 List!62352) List!62352)

(assert (=> b!5474960 (matchZipper!1569 (store ((as const (Array Context!9470 Bool)) false) (Context!9471 (++!13690 lt!2236637 lt!2236627)) true) lt!2236626)))

(declare-fun lambda!291741 () Int)

(declare-fun lt!2236628 () Unit!155152)

(declare-fun lemmaConcatPreservesForall!260 (List!62352 List!62352 Int) Unit!155152)

(assert (=> b!5474960 (= lt!2236628 (lemmaConcatPreservesForall!260 lt!2236637 lt!2236627 lambda!291741))))

(declare-fun lt!2236618 () Unit!155152)

(declare-fun lt!2236623 () Context!9470)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!108 (Context!9470 Context!9470 List!62353 List!62353) Unit!155152)

(assert (=> b!5474960 (= lt!2236618 (lemmaConcatenateContextMatchesConcatOfStrings!108 lt!2236612 lt!2236623 (_1!35851 lt!2236636) (_2!35851 lt!2236636)))))

(declare-fun lt!2236614 () (InoxSet Context!9470))

(assert (=> b!5474960 (matchZipper!1569 lt!2236614 (_2!35851 lt!2236636))))

(declare-fun lt!2236611 () Unit!155152)

(declare-fun lt!2236635 () List!62354)

(declare-fun theoremZipperRegexEquiv!577 ((InoxSet Context!9470) List!62354 Regex!15351 List!62353) Unit!155152)

(assert (=> b!5474960 (= lt!2236611 (theoremZipperRegexEquiv!577 lt!2236614 lt!2236635 r!7292 (_2!35851 lt!2236636)))))

(declare-fun lt!2236647 () (InoxSet Context!9470))

(assert (=> b!5474960 (matchZipper!1569 lt!2236647 (_1!35851 lt!2236636))))

(declare-fun lt!2236634 () Unit!155152)

(assert (=> b!5474960 (= lt!2236634 (theoremZipperRegexEquiv!577 lt!2236647 lt!2236613 (reg!15680 r!7292) (_1!35851 lt!2236636)))))

(declare-fun b!5474961 () Bool)

(declare-fun e!3388895 () Bool)

(assert (=> b!5474961 (= e!3388895 e!3388881)))

(declare-fun res!2333767 () Bool)

(assert (=> b!5474961 (=> (not res!2333767) (not e!3388881))))

(assert (=> b!5474961 (= res!2333767 (= (Exists!2530 lambda!291737) (Exists!2530 lambda!291738)))))

(declare-fun b!5474962 () Bool)

(declare-fun e!3388897 () Bool)

(assert (=> b!5474962 (= e!3388902 e!3388897)))

(declare-fun res!2333789 () Bool)

(assert (=> b!5474962 (=> res!2333789 e!3388897)))

(assert (=> b!5474962 (= res!2333789 (not (= (unfocusZipper!1093 lt!2236635) r!7292)))))

(assert (=> b!5474962 (= lt!2236635 (Cons!62230 lt!2236623 Nil!62230))))

(declare-fun b!5474963 () Bool)

(declare-fun e!3388901 () Bool)

(declare-fun tp!1505075 () Bool)

(assert (=> b!5474963 (= e!3388901 (and tp_is_empty!39955 tp!1505075))))

(declare-fun e!3388886 () Bool)

(declare-fun e!3388887 () Bool)

(assert (=> b!5474964 (= e!3388886 e!3388887)))

(declare-fun res!2333778 () Bool)

(assert (=> b!5474964 (=> res!2333778 e!3388887)))

(declare-fun lt!2236616 () (InoxSet Context!9470))

(declare-fun lt!2236624 () (InoxSet Context!9470))

(assert (=> b!5474964 (= res!2333778 (not (= lt!2236616 lt!2236624)))))

(declare-fun lambda!291740 () Int)

(declare-fun flatMap!1054 ((InoxSet Context!9470) Int) (InoxSet Context!9470))

(declare-fun derivationStepZipperUp!703 (Context!9470 C!30972) (InoxSet Context!9470))

(assert (=> b!5474964 (= (flatMap!1054 z!1189 lambda!291740) (derivationStepZipperUp!703 (h!68678 zl!343) (h!68677 s!2326)))))

(declare-fun lt!2236632 () Unit!155152)

(declare-fun lemmaFlatMapOnSingletonSet!586 ((InoxSet Context!9470) Context!9470 Int) Unit!155152)

(assert (=> b!5474964 (= lt!2236632 (lemmaFlatMapOnSingletonSet!586 z!1189 (h!68678 zl!343) lambda!291740))))

(declare-fun b!5474965 () Bool)

(assert (=> b!5474965 (= e!3388887 e!3388884)))

(declare-fun res!2333768 () Bool)

(assert (=> b!5474965 (=> res!2333768 e!3388884)))

(declare-fun derivationStepZipperDown!777 (Regex!15351 Context!9470 C!30972) (InoxSet Context!9470))

(assert (=> b!5474965 (= res!2333768 (not (= lt!2236616 (derivationStepZipperDown!777 (reg!15680 r!7292) lt!2236623 (h!68677 s!2326)))))))

(assert (=> b!5474965 (= lt!2236623 (Context!9471 lt!2236627))))

(declare-fun lt!2236640 () Context!9470)

(assert (=> b!5474965 (= (flatMap!1054 lt!2236645 lambda!291740) (derivationStepZipperUp!703 lt!2236640 (h!68677 s!2326)))))

(declare-fun lt!2236646 () Unit!155152)

(assert (=> b!5474965 (= lt!2236646 (lemmaFlatMapOnSingletonSet!586 lt!2236645 lt!2236640 lambda!291740))))

(declare-fun lt!2236633 () (InoxSet Context!9470))

(assert (=> b!5474965 (= lt!2236633 (derivationStepZipperUp!703 lt!2236640 (h!68677 s!2326)))))

(assert (=> b!5474965 (= lt!2236645 (store ((as const (Array Context!9470 Bool)) false) lt!2236640 true))))

(assert (=> b!5474965 (= lt!2236640 (Context!9471 (Cons!62228 (reg!15680 r!7292) lt!2236627)))))

(assert (=> b!5474965 (= lt!2236627 (Cons!62228 r!7292 Nil!62228))))

(declare-fun b!5474966 () Bool)

(assert (=> b!5474966 (= e!3388897 e!3388892)))

(declare-fun res!2333771 () Bool)

(assert (=> b!5474966 (=> res!2333771 e!3388892)))

(declare-fun lt!2236642 () Bool)

(assert (=> b!5474966 (= res!2333771 (not lt!2236642))))

(declare-fun e!3388882 () Bool)

(assert (=> b!5474966 e!3388882))

(declare-fun res!2333786 () Bool)

(assert (=> b!5474966 (=> (not res!2333786) (not e!3388882))))

(declare-fun lt!2236639 () Regex!15351)

(declare-fun matchRSpec!2454 (Regex!15351 List!62353) Bool)

(assert (=> b!5474966 (= res!2333786 (= lt!2236642 (matchRSpec!2454 lt!2236639 s!2326)))))

(assert (=> b!5474966 (= lt!2236642 (matchR!7536 lt!2236639 s!2326))))

(declare-fun lt!2236617 () Unit!155152)

(declare-fun mainMatchTheorem!2454 (Regex!15351 List!62353) Unit!155152)

(assert (=> b!5474966 (= lt!2236617 (mainMatchTheorem!2454 lt!2236639 s!2326))))

(declare-fun b!5474967 () Bool)

(assert (=> b!5474967 (= e!3388882 e!3388895)))

(declare-fun res!2333784 () Bool)

(assert (=> b!5474967 (=> res!2333784 e!3388895)))

(assert (=> b!5474967 (= res!2333784 (not lt!2236642))))

(declare-fun b!5474968 () Bool)

(declare-fun tp!1505079 () Bool)

(assert (=> b!5474968 (= e!3388899 tp!1505079)))

(declare-fun b!5474969 () Bool)

(assert (=> b!5474969 (= e!3388888 e!3388886)))

(declare-fun res!2333788 () Bool)

(assert (=> b!5474969 (=> res!2333788 e!3388886)))

(declare-fun lt!2236621 () (InoxSet Context!9470))

(assert (=> b!5474969 (= res!2333788 (not (= lt!2236621 lt!2236624)))))

(assert (=> b!5474969 (= lt!2236624 (derivationStepZipperDown!777 r!7292 (Context!9471 Nil!62228) (h!68677 s!2326)))))

(assert (=> b!5474969 (= lt!2236621 (derivationStepZipperUp!703 (Context!9471 (Cons!62228 r!7292 Nil!62228)) (h!68677 s!2326)))))

(assert (=> b!5474969 (= lt!2236616 (derivationStepZipper!1546 z!1189 (h!68677 s!2326)))))

(declare-fun b!5474970 () Bool)

(declare-fun res!2333787 () Bool)

(assert (=> b!5474970 (=> res!2333787 e!3388896)))

(declare-fun generalisedConcat!1020 (List!62352) Regex!15351)

(assert (=> b!5474970 (= res!2333787 (not (= r!7292 (generalisedConcat!1020 (exprs!5235 (h!68678 zl!343))))))))

(declare-fun b!5474971 () Bool)

(declare-fun e!3388898 () Bool)

(assert (=> b!5474971 (= e!3388898 e!3388883)))

(declare-fun res!2333783 () Bool)

(assert (=> b!5474971 (=> res!2333783 e!3388883)))

(assert (=> b!5474971 (= res!2333783 (not (= lt!2236616 (derivationStepZipper!1546 lt!2236614 (h!68677 s!2326)))))))

(assert (=> b!5474971 (= (flatMap!1054 lt!2236614 lambda!291740) (derivationStepZipperUp!703 lt!2236623 (h!68677 s!2326)))))

(declare-fun lt!2236643 () Unit!155152)

(assert (=> b!5474971 (= lt!2236643 (lemmaFlatMapOnSingletonSet!586 lt!2236614 lt!2236623 lambda!291740))))

(assert (=> b!5474971 (= (flatMap!1054 lt!2236647 lambda!291740) (derivationStepZipperUp!703 lt!2236612 (h!68677 s!2326)))))

(declare-fun lt!2236644 () Unit!155152)

(assert (=> b!5474971 (= lt!2236644 (lemmaFlatMapOnSingletonSet!586 lt!2236647 lt!2236612 lambda!291740))))

(declare-fun lt!2236629 () (InoxSet Context!9470))

(assert (=> b!5474971 (= lt!2236629 (derivationStepZipperUp!703 lt!2236623 (h!68677 s!2326)))))

(declare-fun lt!2236615 () (InoxSet Context!9470))

(assert (=> b!5474971 (= lt!2236615 (derivationStepZipperUp!703 lt!2236612 (h!68677 s!2326)))))

(assert (=> b!5474971 (= lt!2236614 (store ((as const (Array Context!9470 Bool)) false) lt!2236623 true))))

(assert (=> b!5474971 (= lt!2236647 (store ((as const (Array Context!9470 Bool)) false) lt!2236612 true))))

(assert (=> b!5474971 (= lt!2236612 (Context!9471 lt!2236637))))

(assert (=> b!5474971 (= lt!2236637 (Cons!62228 (reg!15680 r!7292) Nil!62228))))

(declare-fun setIsEmpty!35965 () Bool)

(assert (=> setIsEmpty!35965 setRes!35965))

(declare-fun b!5474972 () Bool)

(declare-fun res!2333770 () Bool)

(assert (=> b!5474972 (=> res!2333770 e!3388896)))

(declare-fun isEmpty!34183 (List!62354) Bool)

(assert (=> b!5474972 (= res!2333770 (not (isEmpty!34183 (t!375583 zl!343))))))

(declare-fun b!5474973 () Bool)

(declare-fun res!2333779 () Bool)

(assert (=> b!5474973 (=> res!2333779 e!3388894)))

(assert (=> b!5474973 (= res!2333779 (not (matchR!7536 (reg!15680 r!7292) (_1!35851 lt!2236636))))))

(declare-fun b!5474974 () Bool)

(assert (=> b!5474974 (= e!3388893 (not e!3388896))))

(declare-fun res!2333774 () Bool)

(assert (=> b!5474974 (=> res!2333774 e!3388896)))

(assert (=> b!5474974 (= res!2333774 (not ((_ is Cons!62230) zl!343)))))

(assert (=> b!5474974 (= lt!2236620 (matchRSpec!2454 r!7292 s!2326))))

(assert (=> b!5474974 (= lt!2236620 (matchR!7536 r!7292 s!2326))))

(declare-fun lt!2236641 () Unit!155152)

(assert (=> b!5474974 (= lt!2236641 (mainMatchTheorem!2454 r!7292 s!2326))))

(declare-fun b!5474975 () Bool)

(assert (=> b!5474975 (= e!3388884 e!3388898)))

(declare-fun res!2333772 () Bool)

(assert (=> b!5474975 (=> res!2333772 e!3388898)))

(assert (=> b!5474975 (= res!2333772 (not (= (unfocusZipper!1093 (Cons!62230 lt!2236640 Nil!62230)) lt!2236639)))))

(assert (=> b!5474975 (= lt!2236639 (Concat!24196 (reg!15680 r!7292) r!7292))))

(declare-fun b!5474976 () Bool)

(declare-fun res!2333765 () Bool)

(assert (=> b!5474976 (=> res!2333765 e!3388896)))

(declare-fun generalisedUnion!1280 (List!62352) Regex!15351)

(declare-fun unfocusZipperList!793 (List!62354) List!62352)

(assert (=> b!5474976 (= res!2333765 (not (= r!7292 (generalisedUnion!1280 (unfocusZipperList!793 zl!343)))))))

(declare-fun b!5474950 () Bool)

(declare-fun res!2333775 () Bool)

(assert (=> b!5474950 (=> res!2333775 e!3388896)))

(assert (=> b!5474950 (= res!2333775 (not ((_ is Cons!62228) (exprs!5235 (h!68678 zl!343)))))))

(declare-fun res!2333763 () Bool)

(assert (=> start!572826 (=> (not res!2333763) (not e!3388891))))

(declare-fun validRegex!7087 (Regex!15351) Bool)

(assert (=> start!572826 (= res!2333763 (validRegex!7087 r!7292))))

(assert (=> start!572826 e!3388891))

(assert (=> start!572826 e!3388899))

(declare-fun condSetEmpty!35965 () Bool)

(assert (=> start!572826 (= condSetEmpty!35965 (= z!1189 ((as const (Array Context!9470 Bool)) false)))))

(assert (=> start!572826 setRes!35965))

(assert (=> start!572826 e!3388890))

(assert (=> start!572826 e!3388901))

(assert (= (and start!572826 res!2333763) b!5474959))

(assert (= (and b!5474959 res!2333790) b!5474954))

(assert (= (and b!5474954 res!2333781) b!5474974))

(assert (= (and b!5474974 (not res!2333774)) b!5474972))

(assert (= (and b!5474972 (not res!2333770)) b!5474970))

(assert (= (and b!5474970 (not res!2333787)) b!5474950))

(assert (= (and b!5474950 (not res!2333775)) b!5474976))

(assert (= (and b!5474976 (not res!2333765)) b!5474944))

(assert (= (and b!5474944 (not res!2333766)) b!5474956))

(assert (= (and b!5474956 (not res!2333782)) b!5474951))

(assert (= (and b!5474956 (not res!2333773)) b!5474955))

(assert (= (and b!5474955 (not res!2333777)) b!5474969))

(assert (= (and b!5474969 (not res!2333788)) b!5474964))

(assert (= (and b!5474964 (not res!2333778)) b!5474965))

(assert (= (and b!5474965 (not res!2333768)) b!5474941))

(assert (= (and b!5474941 (not res!2333776)) b!5474946))

(assert (= (and b!5474946 (not res!2333785)) b!5474975))

(assert (= (and b!5474975 (not res!2333772)) b!5474971))

(assert (= (and b!5474971 (not res!2333783)) b!5474943))

(assert (= (and b!5474943 (not res!2333764)) b!5474962))

(assert (= (and b!5474962 (not res!2333789)) b!5474966))

(assert (= (and b!5474966 res!2333786) b!5474967))

(assert (= (and b!5474967 (not res!2333784)) b!5474961))

(assert (= (and b!5474961 res!2333767) b!5474957))

(assert (= (and b!5474966 (not res!2333771)) b!5474958))

(assert (= (and b!5474958 (not res!2333769)) b!5474973))

(assert (= (and b!5474973 (not res!2333779)) b!5474953))

(assert (= (and b!5474953 (not res!2333780)) b!5474960))

(assert (= (and start!572826 ((_ is ElementMatch!15351) r!7292)) b!5474945))

(assert (= (and start!572826 ((_ is Concat!24196) r!7292)) b!5474947))

(assert (= (and start!572826 ((_ is Star!15351) r!7292)) b!5474968))

(assert (= (and start!572826 ((_ is Union!15351) r!7292)) b!5474942))

(assert (= (and start!572826 condSetEmpty!35965) setIsEmpty!35965))

(assert (= (and start!572826 (not condSetEmpty!35965)) setNonEmpty!35965))

(assert (= setNonEmpty!35965 b!5474949))

(assert (= b!5474948 b!5474952))

(assert (= (and start!572826 ((_ is Cons!62230) zl!343)) b!5474948))

(assert (= (and start!572826 ((_ is Cons!62229) s!2326)) b!5474963))

(declare-fun m!6491834 () Bool)

(assert (=> b!5474961 m!6491834))

(declare-fun m!6491836 () Bool)

(assert (=> b!5474961 m!6491836))

(declare-fun m!6491838 () Bool)

(assert (=> b!5474954 m!6491838))

(declare-fun m!6491840 () Bool)

(assert (=> b!5474941 m!6491840))

(declare-fun m!6491842 () Bool)

(assert (=> b!5474941 m!6491842))

(assert (=> b!5474941 m!6491842))

(declare-fun m!6491844 () Bool)

(assert (=> b!5474941 m!6491844))

(declare-fun m!6491846 () Bool)

(assert (=> b!5474943 m!6491846))

(assert (=> b!5474957 m!6491834))

(declare-fun m!6491848 () Bool)

(assert (=> b!5474975 m!6491848))

(declare-fun m!6491850 () Bool)

(assert (=> b!5474966 m!6491850))

(declare-fun m!6491852 () Bool)

(assert (=> b!5474966 m!6491852))

(declare-fun m!6491854 () Bool)

(assert (=> b!5474966 m!6491854))

(declare-fun m!6491856 () Bool)

(assert (=> b!5474959 m!6491856))

(declare-fun m!6491858 () Bool)

(assert (=> start!572826 m!6491858))

(declare-fun m!6491860 () Bool)

(assert (=> b!5474964 m!6491860))

(declare-fun m!6491862 () Bool)

(assert (=> b!5474964 m!6491862))

(declare-fun m!6491864 () Bool)

(assert (=> b!5474964 m!6491864))

(declare-fun m!6491866 () Bool)

(assert (=> b!5474948 m!6491866))

(declare-fun m!6491868 () Bool)

(assert (=> b!5474974 m!6491868))

(declare-fun m!6491870 () Bool)

(assert (=> b!5474974 m!6491870))

(declare-fun m!6491872 () Bool)

(assert (=> b!5474974 m!6491872))

(declare-fun m!6491874 () Bool)

(assert (=> b!5474973 m!6491874))

(assert (=> b!5474956 m!6491836))

(declare-fun m!6491876 () Bool)

(assert (=> b!5474956 m!6491876))

(declare-fun m!6491878 () Bool)

(assert (=> b!5474956 m!6491878))

(declare-fun m!6491880 () Bool)

(assert (=> b!5474956 m!6491880))

(declare-fun m!6491882 () Bool)

(assert (=> b!5474956 m!6491882))

(declare-fun m!6491884 () Bool)

(assert (=> b!5474956 m!6491884))

(declare-fun m!6491886 () Bool)

(assert (=> b!5474956 m!6491886))

(assert (=> b!5474956 m!6491834))

(declare-fun m!6491888 () Bool)

(assert (=> b!5474956 m!6491888))

(assert (=> b!5474956 m!6491834))

(assert (=> b!5474956 m!6491834))

(declare-fun m!6491890 () Bool)

(assert (=> b!5474972 m!6491890))

(declare-fun m!6491892 () Bool)

(assert (=> b!5474970 m!6491892))

(declare-fun m!6491894 () Bool)

(assert (=> b!5474962 m!6491894))

(declare-fun m!6491896 () Bool)

(assert (=> b!5474976 m!6491896))

(assert (=> b!5474976 m!6491896))

(declare-fun m!6491898 () Bool)

(assert (=> b!5474976 m!6491898))

(declare-fun m!6491900 () Bool)

(assert (=> b!5474965 m!6491900))

(declare-fun m!6491902 () Bool)

(assert (=> b!5474965 m!6491902))

(declare-fun m!6491904 () Bool)

(assert (=> b!5474965 m!6491904))

(declare-fun m!6491906 () Bool)

(assert (=> b!5474965 m!6491906))

(declare-fun m!6491908 () Bool)

(assert (=> b!5474965 m!6491908))

(declare-fun m!6491910 () Bool)

(assert (=> b!5474969 m!6491910))

(declare-fun m!6491912 () Bool)

(assert (=> b!5474969 m!6491912))

(declare-fun m!6491914 () Bool)

(assert (=> b!5474969 m!6491914))

(declare-fun m!6491916 () Bool)

(assert (=> b!5474953 m!6491916))

(declare-fun m!6491918 () Bool)

(assert (=> b!5474960 m!6491918))

(declare-fun m!6491920 () Bool)

(assert (=> b!5474960 m!6491920))

(declare-fun m!6491922 () Bool)

(assert (=> b!5474960 m!6491922))

(assert (=> b!5474960 m!6491920))

(declare-fun m!6491924 () Bool)

(assert (=> b!5474960 m!6491924))

(declare-fun m!6491926 () Bool)

(assert (=> b!5474960 m!6491926))

(declare-fun m!6491928 () Bool)

(assert (=> b!5474960 m!6491928))

(declare-fun m!6491930 () Bool)

(assert (=> b!5474960 m!6491930))

(declare-fun m!6491932 () Bool)

(assert (=> b!5474960 m!6491932))

(declare-fun m!6491934 () Bool)

(assert (=> b!5474960 m!6491934))

(declare-fun m!6491936 () Bool)

(assert (=> b!5474971 m!6491936))

(declare-fun m!6491938 () Bool)

(assert (=> b!5474971 m!6491938))

(declare-fun m!6491940 () Bool)

(assert (=> b!5474971 m!6491940))

(declare-fun m!6491942 () Bool)

(assert (=> b!5474971 m!6491942))

(declare-fun m!6491944 () Bool)

(assert (=> b!5474971 m!6491944))

(declare-fun m!6491946 () Bool)

(assert (=> b!5474971 m!6491946))

(declare-fun m!6491948 () Bool)

(assert (=> b!5474971 m!6491948))

(declare-fun m!6491950 () Bool)

(assert (=> b!5474971 m!6491950))

(declare-fun m!6491952 () Bool)

(assert (=> b!5474971 m!6491952))

(declare-fun m!6491954 () Bool)

(assert (=> setNonEmpty!35965 m!6491954))

(declare-fun m!6491956 () Bool)

(assert (=> b!5474958 m!6491956))

(declare-fun m!6491958 () Bool)

(assert (=> b!5474958 m!6491958))

(check-sat (not b!5474969) (not b!5474954) (not b!5474963) (not b!5474958) (not b!5474943) tp_is_empty!39955 (not b!5474947) (not b!5474941) (not start!572826) (not b!5474942) (not b!5474974) (not b!5474961) (not b!5474971) (not b!5474962) (not b!5474949) (not b!5474960) (not b!5474966) (not b!5474970) (not b!5474953) (not b!5474973) (not b!5474968) (not b!5474976) (not b!5474964) (not b!5474972) (not b!5474957) (not b!5474948) (not b!5474959) (not b!5474952) (not setNonEmpty!35965) (not b!5474965) (not b!5474956) (not b!5474975))
(check-sat)
