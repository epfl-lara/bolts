; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!567478 () Bool)

(assert start!567478)

(declare-fun b!5402704 () Bool)

(assert (=> b!5402704 true))

(assert (=> b!5402704 true))

(declare-fun lambda!281422 () Int)

(declare-fun lambda!281421 () Int)

(assert (=> b!5402704 (not (= lambda!281422 lambda!281421))))

(assert (=> b!5402704 true))

(assert (=> b!5402704 true))

(declare-fun b!5402705 () Bool)

(assert (=> b!5402705 true))

(declare-fun b!5402718 () Bool)

(assert (=> b!5402718 true))

(declare-fun b!5402697 () Bool)

(declare-fun e!3349718 () Bool)

(declare-fun lt!2202417 () Bool)

(assert (=> b!5402697 (= e!3349718 lt!2202417)))

(declare-fun b!5402698 () Bool)

(declare-fun res!2296933 () Bool)

(declare-fun e!3349719 () Bool)

(assert (=> b!5402698 (=> res!2296933 e!3349719)))

(declare-datatypes ((C!30612 0))(
  ( (C!30613 (val!25008 Int)) )
))
(declare-datatypes ((Regex!15171 0))(
  ( (ElementMatch!15171 (c!941713 C!30612)) (Concat!24016 (regOne!30854 Regex!15171) (regTwo!30854 Regex!15171)) (EmptyExpr!15171) (Star!15171 (reg!15500 Regex!15171)) (EmptyLang!15171) (Union!15171 (regOne!30855 Regex!15171) (regTwo!30855 Regex!15171)) )
))
(declare-datatypes ((List!61812 0))(
  ( (Nil!61688) (Cons!61688 (h!68136 Regex!15171) (t!375035 List!61812)) )
))
(declare-datatypes ((Context!9110 0))(
  ( (Context!9111 (exprs!5055 List!61812)) )
))
(declare-datatypes ((List!61813 0))(
  ( (Nil!61689) (Cons!61689 (h!68137 Context!9110) (t!375036 List!61813)) )
))
(declare-fun zl!343 () List!61813)

(declare-fun isEmpty!33680 (List!61813) Bool)

(assert (=> b!5402698 (= res!2296933 (not (isEmpty!33680 (t!375036 zl!343))))))

(declare-fun b!5402699 () Bool)

(declare-fun e!3349716 () Bool)

(declare-fun r!7292 () Regex!15171)

(declare-fun nullable!5340 (Regex!15171) Bool)

(assert (=> b!5402699 (= e!3349716 (nullable!5340 (regOne!30854 (regOne!30854 r!7292))))))

(declare-fun b!5402700 () Bool)

(declare-datatypes ((Unit!154206 0))(
  ( (Unit!154207) )
))
(declare-fun e!3349723 () Unit!154206)

(declare-fun Unit!154208 () Unit!154206)

(assert (=> b!5402700 (= e!3349723 Unit!154208)))

(declare-fun b!5402701 () Bool)

(declare-fun res!2296925 () Bool)

(assert (=> b!5402701 (=> res!2296925 e!3349719)))

(declare-fun generalisedConcat!840 (List!61812) Regex!15171)

(assert (=> b!5402701 (= res!2296925 (not (= r!7292 (generalisedConcat!840 (exprs!5055 (h!68137 zl!343))))))))

(declare-fun b!5402702 () Bool)

(declare-fun res!2296907 () Bool)

(declare-fun e!3349724 () Bool)

(assert (=> b!5402702 (=> res!2296907 e!3349724)))

(declare-fun lt!2202403 () Bool)

(declare-fun lt!2202406 () Bool)

(assert (=> b!5402702 (= res!2296907 (or (not lt!2202403) (not lt!2202406)))))

(declare-fun b!5402703 () Bool)

(declare-fun e!3349707 () Bool)

(assert (=> b!5402703 (= e!3349707 true)))

(declare-fun lt!2202395 () Regex!15171)

(declare-datatypes ((List!61814 0))(
  ( (Nil!61690) (Cons!61690 (h!68138 C!30612) (t!375037 List!61814)) )
))
(declare-fun s!2326 () List!61814)

(declare-fun matchRSpec!2274 (Regex!15171 List!61814) Bool)

(assert (=> b!5402703 (matchRSpec!2274 lt!2202395 s!2326)))

(declare-fun lt!2202370 () Unit!154206)

(declare-fun mainMatchTheorem!2274 (Regex!15171 List!61814) Unit!154206)

(assert (=> b!5402703 (= lt!2202370 (mainMatchTheorem!2274 lt!2202395 s!2326))))

(declare-fun matchR!7356 (Regex!15171 List!61814) Bool)

(assert (=> b!5402703 (matchR!7356 lt!2202395 s!2326)))

(declare-fun lt!2202418 () Regex!15171)

(assert (=> b!5402703 (= lt!2202395 (Concat!24016 (Concat!24016 (reg!15500 (regOne!30854 r!7292)) lt!2202418) (regTwo!30854 r!7292)))))

(declare-fun lt!2202416 () Unit!154206)

(declare-fun lemmaConcatAssociative!24 (Regex!15171 Regex!15171 Regex!15171 List!61814) Unit!154206)

(assert (=> b!5402703 (= lt!2202416 (lemmaConcatAssociative!24 (reg!15500 (regOne!30854 r!7292)) lt!2202418 (regTwo!30854 r!7292) s!2326))))

(assert (=> b!5402703 e!3349718))

(declare-fun res!2296913 () Bool)

(assert (=> b!5402703 (=> (not res!2296913) (not e!3349718))))

(declare-fun lt!2202389 () Regex!15171)

(declare-fun lt!2202369 () List!61814)

(assert (=> b!5402703 (= res!2296913 (matchR!7356 lt!2202389 lt!2202369))))

(declare-fun lt!2202380 () Regex!15171)

(declare-fun lt!2202391 () Unit!154206)

(declare-datatypes ((tuple2!64740 0))(
  ( (tuple2!64741 (_1!35673 List!61814) (_2!35673 List!61814)) )
))
(declare-fun lt!2202393 () tuple2!64740)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!194 (Regex!15171 Regex!15171 List!61814 List!61814) Unit!154206)

(assert (=> b!5402703 (= lt!2202391 (lemmaTwoRegexMatchThenConcatMatchesConcatString!194 (reg!15500 (regOne!30854 r!7292)) lt!2202380 (_1!35673 lt!2202393) (_2!35673 lt!2202393)))))

(assert (=> b!5402703 (matchR!7356 lt!2202380 (_2!35673 lt!2202393))))

(declare-fun lt!2202379 () Unit!154206)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2202366 () (InoxSet Context!9110))

(declare-fun lt!2202376 () List!61813)

(declare-fun theoremZipperRegexEquiv!485 ((InoxSet Context!9110) List!61813 Regex!15171 List!61814) Unit!154206)

(assert (=> b!5402703 (= lt!2202379 (theoremZipperRegexEquiv!485 lt!2202366 lt!2202376 lt!2202380 (_2!35673 lt!2202393)))))

(assert (=> b!5402703 (matchR!7356 (reg!15500 (regOne!30854 r!7292)) (_1!35673 lt!2202393))))

(declare-fun lt!2202373 () Unit!154206)

(declare-fun lt!2202407 () (InoxSet Context!9110))

(declare-fun lt!2202398 () List!61813)

(assert (=> b!5402703 (= lt!2202373 (theoremZipperRegexEquiv!485 lt!2202407 lt!2202398 (reg!15500 (regOne!30854 r!7292)) (_1!35673 lt!2202393)))))

(declare-fun lt!2202399 () List!61812)

(declare-fun lt!2202384 () List!61812)

(declare-fun matchZipper!1415 ((InoxSet Context!9110) List!61814) Bool)

(declare-fun ++!13515 (List!61812 List!61812) List!61812)

(assert (=> b!5402703 (matchZipper!1415 (store ((as const (Array Context!9110 Bool)) false) (Context!9111 (++!13515 lt!2202399 lt!2202384)) true) lt!2202369)))

(declare-fun lt!2202372 () Unit!154206)

(declare-fun lambda!281425 () Int)

(declare-fun lemmaConcatPreservesForall!196 (List!61812 List!61812 Int) Unit!154206)

(assert (=> b!5402703 (= lt!2202372 (lemmaConcatPreservesForall!196 lt!2202399 lt!2202384 lambda!281425))))

(declare-fun lt!2202383 () Context!9110)

(declare-fun lt!2202414 () Unit!154206)

(declare-fun lt!2202412 () Context!9110)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!44 (Context!9110 Context!9110 List!61814 List!61814) Unit!154206)

(assert (=> b!5402703 (= lt!2202414 (lemmaConcatenateContextMatchesConcatOfStrings!44 lt!2202412 lt!2202383 (_1!35673 lt!2202393) (_2!35673 lt!2202393)))))

(declare-fun e!3349709 () Bool)

(assert (=> b!5402704 (= e!3349719 e!3349709)))

(declare-fun res!2296910 () Bool)

(assert (=> b!5402704 (=> res!2296910 e!3349709)))

(declare-fun lt!2202394 () Bool)

(declare-fun lt!2202400 () Bool)

(get-info :version)

(assert (=> b!5402704 (= res!2296910 (or (not (= lt!2202400 lt!2202394)) ((_ is Nil!61690) s!2326)))))

(declare-fun Exists!2352 (Int) Bool)

(assert (=> b!5402704 (= (Exists!2352 lambda!281421) (Exists!2352 lambda!281422))))

(declare-fun lt!2202385 () Unit!154206)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1006 (Regex!15171 Regex!15171 List!61814) Unit!154206)

(assert (=> b!5402704 (= lt!2202385 (lemmaExistCutMatchRandMatchRSpecEquivalent!1006 (regOne!30854 r!7292) (regTwo!30854 r!7292) s!2326))))

(assert (=> b!5402704 (= lt!2202394 (Exists!2352 lambda!281421))))

(declare-datatypes ((Option!15282 0))(
  ( (None!15281) (Some!15281 (v!51310 tuple2!64740)) )
))
(declare-fun isDefined!11985 (Option!15282) Bool)

(declare-fun findConcatSeparation!1696 (Regex!15171 Regex!15171 List!61814 List!61814 List!61814) Option!15282)

(assert (=> b!5402704 (= lt!2202394 (isDefined!11985 (findConcatSeparation!1696 (regOne!30854 r!7292) (regTwo!30854 r!7292) Nil!61690 s!2326 s!2326)))))

(declare-fun lt!2202368 () Unit!154206)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1460 (Regex!15171 Regex!15171 List!61814) Unit!154206)

(assert (=> b!5402704 (= lt!2202368 (lemmaFindConcatSeparationEquivalentToExists!1460 (regOne!30854 r!7292) (regTwo!30854 r!7292) s!2326))))

(declare-fun e!3349712 () Bool)

(assert (=> b!5402705 (= e!3349709 e!3349712)))

(declare-fun res!2296920 () Bool)

(assert (=> b!5402705 (=> res!2296920 e!3349712)))

(assert (=> b!5402705 (= res!2296920 (or (and ((_ is ElementMatch!15171) (regOne!30854 r!7292)) (= (c!941713 (regOne!30854 r!7292)) (h!68138 s!2326))) ((_ is Union!15171) (regOne!30854 r!7292))))))

(declare-fun lt!2202392 () Unit!154206)

(assert (=> b!5402705 (= lt!2202392 e!3349723)))

(declare-fun c!941712 () Bool)

(declare-fun lt!2202409 () Bool)

(assert (=> b!5402705 (= c!941712 lt!2202409)))

(assert (=> b!5402705 (= lt!2202409 (nullable!5340 (h!68136 (exprs!5055 (h!68137 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!9110))

(declare-fun lambda!281423 () Int)

(declare-fun flatMap!898 ((InoxSet Context!9110) Int) (InoxSet Context!9110))

(declare-fun derivationStepZipperUp!543 (Context!9110 C!30612) (InoxSet Context!9110))

(assert (=> b!5402705 (= (flatMap!898 z!1189 lambda!281423) (derivationStepZipperUp!543 (h!68137 zl!343) (h!68138 s!2326)))))

(declare-fun lt!2202415 () Unit!154206)

(declare-fun lemmaFlatMapOnSingletonSet!430 ((InoxSet Context!9110) Context!9110 Int) Unit!154206)

(assert (=> b!5402705 (= lt!2202415 (lemmaFlatMapOnSingletonSet!430 z!1189 (h!68137 zl!343) lambda!281423))))

(declare-fun lt!2202388 () (InoxSet Context!9110))

(declare-fun lt!2202387 () Context!9110)

(assert (=> b!5402705 (= lt!2202388 (derivationStepZipperUp!543 lt!2202387 (h!68138 s!2326)))))

(declare-fun lt!2202405 () (InoxSet Context!9110))

(declare-fun derivationStepZipperDown!619 (Regex!15171 Context!9110 C!30612) (InoxSet Context!9110))

(assert (=> b!5402705 (= lt!2202405 (derivationStepZipperDown!619 (h!68136 (exprs!5055 (h!68137 zl!343))) lt!2202387 (h!68138 s!2326)))))

(assert (=> b!5402705 (= lt!2202387 (Context!9111 (t!375035 (exprs!5055 (h!68137 zl!343)))))))

(declare-fun lt!2202381 () (InoxSet Context!9110))

(assert (=> b!5402705 (= lt!2202381 (derivationStepZipperUp!543 (Context!9111 (Cons!61688 (h!68136 (exprs!5055 (h!68137 zl!343))) (t!375035 (exprs!5055 (h!68137 zl!343))))) (h!68138 s!2326)))))

(declare-fun b!5402706 () Bool)

(declare-fun res!2296940 () Bool)

(declare-fun e!3349721 () Bool)

(assert (=> b!5402706 (=> res!2296940 e!3349721)))

(declare-fun lt!2202386 () Regex!15171)

(assert (=> b!5402706 (= res!2296940 (not (= lt!2202386 r!7292)))))

(declare-fun b!5402707 () Bool)

(declare-fun e!3349705 () Bool)

(declare-fun tp_is_empty!39595 () Bool)

(declare-fun tp!1494609 () Bool)

(assert (=> b!5402707 (= e!3349705 (and tp_is_empty!39595 tp!1494609))))

(declare-fun b!5402708 () Bool)

(declare-fun res!2296928 () Bool)

(assert (=> b!5402708 (=> res!2296928 e!3349719)))

(declare-fun generalisedUnion!1100 (List!61812) Regex!15171)

(declare-fun unfocusZipperList!613 (List!61813) List!61812)

(assert (=> b!5402708 (= res!2296928 (not (= r!7292 (generalisedUnion!1100 (unfocusZipperList!613 zl!343)))))))

(declare-fun b!5402709 () Bool)

(declare-fun res!2296922 () Bool)

(assert (=> b!5402709 (=> res!2296922 e!3349712)))

(assert (=> b!5402709 (= res!2296922 e!3349716)))

(declare-fun res!2296932 () Bool)

(assert (=> b!5402709 (=> (not res!2296932) (not e!3349716))))

(assert (=> b!5402709 (= res!2296932 ((_ is Concat!24016) (regOne!30854 r!7292)))))

(declare-fun b!5402710 () Bool)

(declare-fun res!2296919 () Bool)

(declare-fun e!3349704 () Bool)

(assert (=> b!5402710 (=> res!2296919 e!3349704)))

(assert (=> b!5402710 (= res!2296919 (not lt!2202409))))

(declare-fun b!5402712 () Bool)

(declare-fun e!3349701 () Bool)

(declare-fun e!3349725 () Bool)

(assert (=> b!5402712 (= e!3349701 e!3349725)))

(declare-fun res!2296911 () Bool)

(assert (=> b!5402712 (=> (not res!2296911) (not e!3349725))))

(assert (=> b!5402712 (= res!2296911 (= r!7292 lt!2202386))))

(declare-fun unfocusZipper!913 (List!61813) Regex!15171)

(assert (=> b!5402712 (= lt!2202386 (unfocusZipper!913 zl!343))))

(declare-fun b!5402713 () Bool)

(declare-fun e!3349717 () Bool)

(declare-fun tp!1494603 () Bool)

(declare-fun tp!1494604 () Bool)

(assert (=> b!5402713 (= e!3349717 (and tp!1494603 tp!1494604))))

(declare-fun b!5402714 () Bool)

(assert (=> b!5402714 (= e!3349717 tp_is_empty!39595)))

(declare-fun b!5402715 () Bool)

(declare-fun e!3349706 () Bool)

(assert (=> b!5402715 (= e!3349706 e!3349721)))

(declare-fun res!2296921 () Bool)

(assert (=> b!5402715 (=> res!2296921 e!3349721)))

(declare-fun lt!2202390 () (InoxSet Context!9110))

(assert (=> b!5402715 (= res!2296921 (not (= lt!2202406 (matchZipper!1415 lt!2202390 (t!375037 s!2326)))))))

(declare-fun lt!2202413 () (InoxSet Context!9110))

(assert (=> b!5402715 (= lt!2202406 (matchZipper!1415 lt!2202413 s!2326))))

(declare-fun b!5402716 () Bool)

(declare-fun e!3349726 () Bool)

(assert (=> b!5402716 (= e!3349712 e!3349726)))

(declare-fun res!2296941 () Bool)

(assert (=> b!5402716 (=> res!2296941 e!3349726)))

(declare-fun lt!2202404 () (InoxSet Context!9110))

(assert (=> b!5402716 (= res!2296941 (not (= lt!2202405 lt!2202404)))))

(assert (=> b!5402716 (= lt!2202404 (derivationStepZipperDown!619 (reg!15500 (regOne!30854 r!7292)) lt!2202383 (h!68138 s!2326)))))

(assert (=> b!5402716 (= lt!2202383 (Context!9111 lt!2202384))))

(assert (=> b!5402716 (= lt!2202384 (Cons!61688 lt!2202418 (t!375035 (exprs!5055 (h!68137 zl!343)))))))

(assert (=> b!5402716 (= lt!2202418 (Star!15171 (reg!15500 (regOne!30854 r!7292))))))

(declare-fun b!5402717 () Bool)

(declare-fun e!3349714 () Bool)

(assert (=> b!5402717 (= e!3349721 e!3349714)))

(declare-fun res!2296937 () Bool)

(assert (=> b!5402717 (=> res!2296937 e!3349714)))

(assert (=> b!5402717 (= res!2296937 (not (= r!7292 lt!2202380)))))

(assert (=> b!5402717 (= lt!2202380 (Concat!24016 lt!2202418 (regTwo!30854 r!7292)))))

(declare-fun e!3349702 () Bool)

(assert (=> b!5402718 (= e!3349724 e!3349702)))

(declare-fun res!2296916 () Bool)

(assert (=> b!5402718 (=> res!2296916 e!3349702)))

(declare-fun appendTo!30 ((InoxSet Context!9110) Context!9110) (InoxSet Context!9110))

(assert (=> b!5402718 (= res!2296916 (not (= (appendTo!30 lt!2202407 lt!2202383) lt!2202413)))))

(declare-fun lambda!281424 () Int)

(declare-fun map!14141 ((InoxSet Context!9110) Int) (InoxSet Context!9110))

(assert (=> b!5402718 (= (map!14141 lt!2202407 lambda!281424) (store ((as const (Array Context!9110 Bool)) false) (Context!9111 (++!13515 lt!2202399 lt!2202384)) true))))

(declare-fun lt!2202382 () Unit!154206)

(assert (=> b!5402718 (= lt!2202382 (lemmaConcatPreservesForall!196 lt!2202399 lt!2202384 lambda!281425))))

(declare-fun lt!2202401 () Unit!154206)

(declare-fun lemmaMapOnSingletonSet!30 ((InoxSet Context!9110) Context!9110 Int) Unit!154206)

(assert (=> b!5402718 (= lt!2202401 (lemmaMapOnSingletonSet!30 lt!2202407 lt!2202412 lambda!281424))))

(declare-fun b!5402719 () Bool)

(declare-fun res!2296939 () Bool)

(assert (=> b!5402719 (=> res!2296939 e!3349712)))

(assert (=> b!5402719 (= res!2296939 (or ((_ is Concat!24016) (regOne!30854 r!7292)) (not ((_ is Star!15171) (regOne!30854 r!7292)))))))

(declare-fun b!5402720 () Bool)

(declare-fun res!2296923 () Bool)

(assert (=> b!5402720 (=> res!2296923 e!3349707)))

(assert (=> b!5402720 (= res!2296923 (not (matchZipper!1415 lt!2202407 (_1!35673 lt!2202393))))))

(declare-fun b!5402721 () Bool)

(declare-fun res!2296912 () Bool)

(assert (=> b!5402721 (=> res!2296912 e!3349704)))

(assert (=> b!5402721 (= res!2296912 (not (matchZipper!1415 z!1189 s!2326)))))

(declare-fun b!5402722 () Bool)

(declare-fun e!3349710 () Bool)

(declare-fun e!3349722 () Bool)

(assert (=> b!5402722 (= e!3349710 e!3349722)))

(declare-fun res!2296914 () Bool)

(assert (=> b!5402722 (=> res!2296914 e!3349722)))

(assert (=> b!5402722 (= res!2296914 (not (= (unfocusZipper!913 lt!2202398) (reg!15500 (regOne!30854 r!7292)))))))

(assert (=> b!5402722 (= lt!2202398 (Cons!61689 lt!2202412 Nil!61689))))

(assert (=> b!5402722 (= (flatMap!898 lt!2202366 lambda!281423) (derivationStepZipperUp!543 lt!2202383 (h!68138 s!2326)))))

(declare-fun lt!2202374 () Unit!154206)

(assert (=> b!5402722 (= lt!2202374 (lemmaFlatMapOnSingletonSet!430 lt!2202366 lt!2202383 lambda!281423))))

(assert (=> b!5402722 (= (flatMap!898 lt!2202407 lambda!281423) (derivationStepZipperUp!543 lt!2202412 (h!68138 s!2326)))))

(declare-fun lt!2202410 () Unit!154206)

(assert (=> b!5402722 (= lt!2202410 (lemmaFlatMapOnSingletonSet!430 lt!2202407 lt!2202412 lambda!281423))))

(declare-fun lt!2202411 () (InoxSet Context!9110))

(assert (=> b!5402722 (= lt!2202411 (derivationStepZipperUp!543 lt!2202383 (h!68138 s!2326)))))

(declare-fun lt!2202396 () (InoxSet Context!9110))

(assert (=> b!5402722 (= lt!2202396 (derivationStepZipperUp!543 lt!2202412 (h!68138 s!2326)))))

(assert (=> b!5402722 (= lt!2202366 (store ((as const (Array Context!9110 Bool)) false) lt!2202383 true))))

(assert (=> b!5402722 (= lt!2202407 (store ((as const (Array Context!9110 Bool)) false) lt!2202412 true))))

(assert (=> b!5402722 (= lt!2202412 (Context!9111 lt!2202399))))

(assert (=> b!5402722 (= lt!2202399 (Cons!61688 (reg!15500 (regOne!30854 r!7292)) Nil!61688))))

(declare-fun b!5402723 () Bool)

(declare-fun res!2296908 () Bool)

(assert (=> b!5402723 (=> (not res!2296908) (not e!3349701))))

(declare-fun toList!8955 ((InoxSet Context!9110)) List!61813)

(assert (=> b!5402723 (= res!2296908 (= (toList!8955 z!1189) zl!343))))

(declare-fun b!5402724 () Bool)

(declare-fun e!3349708 () Bool)

(declare-fun tp!1494602 () Bool)

(assert (=> b!5402724 (= e!3349708 tp!1494602)))

(declare-fun b!5402725 () Bool)

(declare-fun e!3349711 () Bool)

(assert (=> b!5402725 (= e!3349711 (matchZipper!1415 lt!2202388 (t!375037 s!2326)))))

(declare-fun b!5402726 () Bool)

(assert (=> b!5402726 (= e!3349704 e!3349724)))

(declare-fun res!2296929 () Bool)

(assert (=> b!5402726 (=> res!2296929 e!3349724)))

(declare-fun e!3349715 () Bool)

(assert (=> b!5402726 (= res!2296929 e!3349715)))

(declare-fun res!2296930 () Bool)

(assert (=> b!5402726 (=> (not res!2296930) (not e!3349715))))

(assert (=> b!5402726 (= res!2296930 (not lt!2202403))))

(assert (=> b!5402726 (= lt!2202403 (matchZipper!1415 lt!2202405 (t!375037 s!2326)))))

(declare-fun b!5402727 () Bool)

(declare-fun tp!1494601 () Bool)

(declare-fun tp!1494600 () Bool)

(assert (=> b!5402727 (= e!3349717 (and tp!1494601 tp!1494600))))

(declare-fun b!5402728 () Bool)

(declare-fun res!2296938 () Bool)

(assert (=> b!5402728 (=> res!2296938 e!3349719)))

(assert (=> b!5402728 (= res!2296938 (or ((_ is EmptyExpr!15171) r!7292) ((_ is EmptyLang!15171) r!7292) ((_ is ElementMatch!15171) r!7292) ((_ is Union!15171) r!7292) (not ((_ is Concat!24016) r!7292))))))

(declare-fun b!5402729 () Bool)

(declare-fun e!3349720 () Bool)

(assert (=> b!5402729 (= e!3349722 e!3349720)))

(declare-fun res!2296931 () Bool)

(assert (=> b!5402729 (=> res!2296931 e!3349720)))

(assert (=> b!5402729 (= res!2296931 (not (= (unfocusZipper!913 lt!2202376) lt!2202380)))))

(assert (=> b!5402729 (= lt!2202376 (Cons!61689 lt!2202383 Nil!61689))))

(declare-fun b!5402730 () Bool)

(assert (=> b!5402730 (= e!3349720 e!3349704)))

(declare-fun res!2296927 () Bool)

(assert (=> b!5402730 (=> res!2296927 e!3349704)))

(assert (=> b!5402730 (= res!2296927 lt!2202400)))

(assert (=> b!5402730 (= lt!2202417 (matchRSpec!2274 lt!2202389 s!2326))))

(assert (=> b!5402730 (= lt!2202417 (matchR!7356 lt!2202389 s!2326))))

(declare-fun lt!2202402 () Unit!154206)

(assert (=> b!5402730 (= lt!2202402 (mainMatchTheorem!2274 lt!2202389 s!2326))))

(declare-fun b!5402731 () Bool)

(assert (=> b!5402731 (= e!3349726 e!3349706)))

(declare-fun res!2296909 () Bool)

(assert (=> b!5402731 (=> res!2296909 e!3349706)))

(assert (=> b!5402731 (= res!2296909 (not (= lt!2202390 lt!2202404)))))

(declare-fun lt!2202367 () Context!9110)

(assert (=> b!5402731 (= (flatMap!898 lt!2202413 lambda!281423) (derivationStepZipperUp!543 lt!2202367 (h!68138 s!2326)))))

(declare-fun lt!2202408 () Unit!154206)

(assert (=> b!5402731 (= lt!2202408 (lemmaFlatMapOnSingletonSet!430 lt!2202413 lt!2202367 lambda!281423))))

(declare-fun lt!2202371 () (InoxSet Context!9110))

(assert (=> b!5402731 (= lt!2202371 (derivationStepZipperUp!543 lt!2202367 (h!68138 s!2326)))))

(declare-fun derivationStepZipper!1410 ((InoxSet Context!9110) C!30612) (InoxSet Context!9110))

(assert (=> b!5402731 (= lt!2202390 (derivationStepZipper!1410 lt!2202413 (h!68138 s!2326)))))

(assert (=> b!5402731 (= lt!2202413 (store ((as const (Array Context!9110 Bool)) false) lt!2202367 true))))

(assert (=> b!5402731 (= lt!2202367 (Context!9111 (Cons!61688 (reg!15500 (regOne!30854 r!7292)) lt!2202384)))))

(declare-fun b!5402732 () Bool)

(declare-fun res!2296934 () Bool)

(assert (=> b!5402732 (=> res!2296934 e!3349707)))

(assert (=> b!5402732 (= res!2296934 (not (matchZipper!1415 lt!2202366 (_2!35673 lt!2202393))))))

(declare-fun b!5402733 () Bool)

(assert (=> b!5402733 (= e!3349715 (not (matchZipper!1415 lt!2202388 (t!375037 s!2326))))))

(declare-fun b!5402734 () Bool)

(assert (=> b!5402734 (= e!3349714 e!3349710)))

(declare-fun res!2296924 () Bool)

(assert (=> b!5402734 (=> res!2296924 e!3349710)))

(assert (=> b!5402734 (= res!2296924 (not (= (unfocusZipper!913 (Cons!61689 lt!2202367 Nil!61689)) lt!2202389)))))

(assert (=> b!5402734 (= lt!2202389 (Concat!24016 (reg!15500 (regOne!30854 r!7292)) lt!2202380))))

(declare-fun b!5402735 () Bool)

(declare-fun res!2296915 () Bool)

(assert (=> b!5402735 (=> res!2296915 e!3349709)))

(declare-fun isEmpty!33681 (List!61812) Bool)

(assert (=> b!5402735 (= res!2296915 (isEmpty!33681 (t!375035 (exprs!5055 (h!68137 zl!343)))))))

(declare-fun b!5402736 () Bool)

(declare-fun tp!1494607 () Bool)

(assert (=> b!5402736 (= e!3349717 tp!1494607)))

(declare-fun b!5402737 () Bool)

(declare-fun e!3349713 () Bool)

(declare-fun tp!1494608 () Bool)

(assert (=> b!5402737 (= e!3349713 tp!1494608)))

(declare-fun setElem!35165 () Context!9110)

(declare-fun setNonEmpty!35165 () Bool)

(declare-fun tp!1494605 () Bool)

(declare-fun setRes!35165 () Bool)

(declare-fun inv!81174 (Context!9110) Bool)

(assert (=> setNonEmpty!35165 (= setRes!35165 (and tp!1494605 (inv!81174 setElem!35165) e!3349713))))

(declare-fun setRest!35165 () (InoxSet Context!9110))

(assert (=> setNonEmpty!35165 (= z!1189 ((_ map or) (store ((as const (Array Context!9110 Bool)) false) setElem!35165 true) setRest!35165))))

(declare-fun b!5402738 () Bool)

(declare-fun res!2296936 () Bool)

(assert (=> b!5402738 (=> res!2296936 e!3349719)))

(assert (=> b!5402738 (= res!2296936 (not ((_ is Cons!61688) (exprs!5055 (h!68137 zl!343)))))))

(declare-fun b!5402739 () Bool)

(declare-fun Unit!154209 () Unit!154206)

(assert (=> b!5402739 (= e!3349723 Unit!154209)))

(declare-fun lt!2202375 () Unit!154206)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!408 ((InoxSet Context!9110) (InoxSet Context!9110) List!61814) Unit!154206)

(assert (=> b!5402739 (= lt!2202375 (lemmaZipperConcatMatchesSameAsBothZippers!408 lt!2202405 lt!2202388 (t!375037 s!2326)))))

(declare-fun res!2296926 () Bool)

(assert (=> b!5402739 (= res!2296926 (matchZipper!1415 lt!2202405 (t!375037 s!2326)))))

(assert (=> b!5402739 (=> res!2296926 e!3349711)))

(assert (=> b!5402739 (= (matchZipper!1415 ((_ map or) lt!2202405 lt!2202388) (t!375037 s!2326)) e!3349711)))

(declare-fun setIsEmpty!35165 () Bool)

(assert (=> setIsEmpty!35165 setRes!35165))

(declare-fun b!5402740 () Bool)

(assert (=> b!5402740 (= e!3349725 (not e!3349719))))

(declare-fun res!2296917 () Bool)

(assert (=> b!5402740 (=> res!2296917 e!3349719)))

(assert (=> b!5402740 (= res!2296917 (not ((_ is Cons!61689) zl!343)))))

(assert (=> b!5402740 (= lt!2202400 (matchRSpec!2274 r!7292 s!2326))))

(assert (=> b!5402740 (= lt!2202400 (matchR!7356 r!7292 s!2326))))

(declare-fun lt!2202397 () Unit!154206)

(assert (=> b!5402740 (= lt!2202397 (mainMatchTheorem!2274 r!7292 s!2326))))

(declare-fun b!5402741 () Bool)

(assert (=> b!5402741 (= e!3349702 e!3349707)))

(declare-fun res!2296918 () Bool)

(assert (=> b!5402741 (=> res!2296918 e!3349707)))

(assert (=> b!5402741 (= res!2296918 (not (= s!2326 lt!2202369)))))

(declare-fun ++!13516 (List!61814 List!61814) List!61814)

(assert (=> b!5402741 (= lt!2202369 (++!13516 (_1!35673 lt!2202393) (_2!35673 lt!2202393)))))

(declare-fun lt!2202378 () Option!15282)

(declare-fun get!21259 (Option!15282) tuple2!64740)

(assert (=> b!5402741 (= lt!2202393 (get!21259 lt!2202378))))

(assert (=> b!5402741 (isDefined!11985 lt!2202378)))

(declare-fun findConcatSeparationZippers!28 ((InoxSet Context!9110) (InoxSet Context!9110) List!61814 List!61814 List!61814) Option!15282)

(assert (=> b!5402741 (= lt!2202378 (findConcatSeparationZippers!28 lt!2202407 lt!2202366 Nil!61690 s!2326 s!2326))))

(declare-fun lt!2202377 () Unit!154206)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!28 ((InoxSet Context!9110) Context!9110 List!61814) Unit!154206)

(assert (=> b!5402741 (= lt!2202377 (lemmaConcatZipperMatchesStringThenFindConcatDefined!28 lt!2202407 lt!2202383 s!2326))))

(declare-fun e!3349703 () Bool)

(declare-fun tp!1494606 () Bool)

(declare-fun b!5402711 () Bool)

(assert (=> b!5402711 (= e!3349703 (and (inv!81174 (h!68137 zl!343)) e!3349708 tp!1494606))))

(declare-fun res!2296935 () Bool)

(assert (=> start!567478 (=> (not res!2296935) (not e!3349701))))

(declare-fun validRegex!6907 (Regex!15171) Bool)

(assert (=> start!567478 (= res!2296935 (validRegex!6907 r!7292))))

(assert (=> start!567478 e!3349701))

(assert (=> start!567478 e!3349717))

(declare-fun condSetEmpty!35165 () Bool)

(assert (=> start!567478 (= condSetEmpty!35165 (= z!1189 ((as const (Array Context!9110 Bool)) false)))))

(assert (=> start!567478 setRes!35165))

(assert (=> start!567478 e!3349703))

(assert (=> start!567478 e!3349705))

(assert (= (and start!567478 res!2296935) b!5402723))

(assert (= (and b!5402723 res!2296908) b!5402712))

(assert (= (and b!5402712 res!2296911) b!5402740))

(assert (= (and b!5402740 (not res!2296917)) b!5402698))

(assert (= (and b!5402698 (not res!2296933)) b!5402701))

(assert (= (and b!5402701 (not res!2296925)) b!5402738))

(assert (= (and b!5402738 (not res!2296936)) b!5402708))

(assert (= (and b!5402708 (not res!2296928)) b!5402728))

(assert (= (and b!5402728 (not res!2296938)) b!5402704))

(assert (= (and b!5402704 (not res!2296910)) b!5402735))

(assert (= (and b!5402735 (not res!2296915)) b!5402705))

(assert (= (and b!5402705 c!941712) b!5402739))

(assert (= (and b!5402705 (not c!941712)) b!5402700))

(assert (= (and b!5402739 (not res!2296926)) b!5402725))

(assert (= (and b!5402705 (not res!2296920)) b!5402709))

(assert (= (and b!5402709 res!2296932) b!5402699))

(assert (= (and b!5402709 (not res!2296922)) b!5402719))

(assert (= (and b!5402719 (not res!2296939)) b!5402716))

(assert (= (and b!5402716 (not res!2296941)) b!5402731))

(assert (= (and b!5402731 (not res!2296909)) b!5402715))

(assert (= (and b!5402715 (not res!2296921)) b!5402706))

(assert (= (and b!5402706 (not res!2296940)) b!5402717))

(assert (= (and b!5402717 (not res!2296937)) b!5402734))

(assert (= (and b!5402734 (not res!2296924)) b!5402722))

(assert (= (and b!5402722 (not res!2296914)) b!5402729))

(assert (= (and b!5402729 (not res!2296931)) b!5402730))

(assert (= (and b!5402730 (not res!2296927)) b!5402721))

(assert (= (and b!5402721 (not res!2296912)) b!5402710))

(assert (= (and b!5402710 (not res!2296919)) b!5402726))

(assert (= (and b!5402726 res!2296930) b!5402733))

(assert (= (and b!5402726 (not res!2296929)) b!5402702))

(assert (= (and b!5402702 (not res!2296907)) b!5402718))

(assert (= (and b!5402718 (not res!2296916)) b!5402741))

(assert (= (and b!5402741 (not res!2296918)) b!5402720))

(assert (= (and b!5402720 (not res!2296923)) b!5402732))

(assert (= (and b!5402732 (not res!2296934)) b!5402703))

(assert (= (and b!5402703 res!2296913) b!5402697))

(assert (= (and start!567478 ((_ is ElementMatch!15171) r!7292)) b!5402714))

(assert (= (and start!567478 ((_ is Concat!24016) r!7292)) b!5402727))

(assert (= (and start!567478 ((_ is Star!15171) r!7292)) b!5402736))

(assert (= (and start!567478 ((_ is Union!15171) r!7292)) b!5402713))

(assert (= (and start!567478 condSetEmpty!35165) setIsEmpty!35165))

(assert (= (and start!567478 (not condSetEmpty!35165)) setNonEmpty!35165))

(assert (= setNonEmpty!35165 b!5402737))

(assert (= b!5402711 b!5402724))

(assert (= (and start!567478 ((_ is Cons!61689) zl!343)) b!5402711))

(assert (= (and start!567478 ((_ is Cons!61690) s!2326)) b!5402707))

(declare-fun m!6427042 () Bool)

(assert (=> b!5402703 m!6427042))

(declare-fun m!6427044 () Bool)

(assert (=> b!5402703 m!6427044))

(declare-fun m!6427046 () Bool)

(assert (=> b!5402703 m!6427046))

(declare-fun m!6427048 () Bool)

(assert (=> b!5402703 m!6427048))

(declare-fun m!6427050 () Bool)

(assert (=> b!5402703 m!6427050))

(declare-fun m!6427052 () Bool)

(assert (=> b!5402703 m!6427052))

(declare-fun m!6427054 () Bool)

(assert (=> b!5402703 m!6427054))

(declare-fun m!6427056 () Bool)

(assert (=> b!5402703 m!6427056))

(declare-fun m!6427058 () Bool)

(assert (=> b!5402703 m!6427058))

(declare-fun m!6427060 () Bool)

(assert (=> b!5402703 m!6427060))

(declare-fun m!6427062 () Bool)

(assert (=> b!5402703 m!6427062))

(declare-fun m!6427064 () Bool)

(assert (=> b!5402703 m!6427064))

(declare-fun m!6427066 () Bool)

(assert (=> b!5402703 m!6427066))

(assert (=> b!5402703 m!6427044))

(declare-fun m!6427068 () Bool)

(assert (=> b!5402703 m!6427068))

(declare-fun m!6427070 () Bool)

(assert (=> b!5402703 m!6427070))

(declare-fun m!6427072 () Bool)

(assert (=> b!5402733 m!6427072))

(declare-fun m!6427074 () Bool)

(assert (=> b!5402712 m!6427074))

(declare-fun m!6427076 () Bool)

(assert (=> b!5402699 m!6427076))

(assert (=> b!5402725 m!6427072))

(declare-fun m!6427078 () Bool)

(assert (=> b!5402735 m!6427078))

(declare-fun m!6427080 () Bool)

(assert (=> b!5402731 m!6427080))

(declare-fun m!6427082 () Bool)

(assert (=> b!5402731 m!6427082))

(declare-fun m!6427084 () Bool)

(assert (=> b!5402731 m!6427084))

(declare-fun m!6427086 () Bool)

(assert (=> b!5402731 m!6427086))

(declare-fun m!6427088 () Bool)

(assert (=> b!5402731 m!6427088))

(declare-fun m!6427090 () Bool)

(assert (=> b!5402734 m!6427090))

(assert (=> b!5402718 m!6427044))

(declare-fun m!6427092 () Bool)

(assert (=> b!5402718 m!6427092))

(assert (=> b!5402718 m!6427056))

(declare-fun m!6427094 () Bool)

(assert (=> b!5402718 m!6427094))

(assert (=> b!5402718 m!6427050))

(declare-fun m!6427096 () Bool)

(assert (=> b!5402718 m!6427096))

(declare-fun m!6427098 () Bool)

(assert (=> b!5402740 m!6427098))

(declare-fun m!6427100 () Bool)

(assert (=> b!5402740 m!6427100))

(declare-fun m!6427102 () Bool)

(assert (=> b!5402740 m!6427102))

(declare-fun m!6427104 () Bool)

(assert (=> b!5402729 m!6427104))

(declare-fun m!6427106 () Bool)

(assert (=> b!5402721 m!6427106))

(declare-fun m!6427108 () Bool)

(assert (=> b!5402741 m!6427108))

(declare-fun m!6427110 () Bool)

(assert (=> b!5402741 m!6427110))

(declare-fun m!6427112 () Bool)

(assert (=> b!5402741 m!6427112))

(declare-fun m!6427114 () Bool)

(assert (=> b!5402741 m!6427114))

(declare-fun m!6427116 () Bool)

(assert (=> b!5402741 m!6427116))

(declare-fun m!6427118 () Bool)

(assert (=> b!5402701 m!6427118))

(declare-fun m!6427120 () Bool)

(assert (=> b!5402711 m!6427120))

(declare-fun m!6427122 () Bool)

(assert (=> b!5402739 m!6427122))

(declare-fun m!6427124 () Bool)

(assert (=> b!5402739 m!6427124))

(declare-fun m!6427126 () Bool)

(assert (=> b!5402739 m!6427126))

(declare-fun m!6427128 () Bool)

(assert (=> b!5402722 m!6427128))

(declare-fun m!6427130 () Bool)

(assert (=> b!5402722 m!6427130))

(declare-fun m!6427132 () Bool)

(assert (=> b!5402722 m!6427132))

(declare-fun m!6427134 () Bool)

(assert (=> b!5402722 m!6427134))

(declare-fun m!6427136 () Bool)

(assert (=> b!5402722 m!6427136))

(declare-fun m!6427138 () Bool)

(assert (=> b!5402722 m!6427138))

(declare-fun m!6427140 () Bool)

(assert (=> b!5402722 m!6427140))

(declare-fun m!6427142 () Bool)

(assert (=> b!5402722 m!6427142))

(declare-fun m!6427144 () Bool)

(assert (=> b!5402722 m!6427144))

(declare-fun m!6427146 () Bool)

(assert (=> b!5402705 m!6427146))

(declare-fun m!6427148 () Bool)

(assert (=> b!5402705 m!6427148))

(declare-fun m!6427150 () Bool)

(assert (=> b!5402705 m!6427150))

(declare-fun m!6427152 () Bool)

(assert (=> b!5402705 m!6427152))

(declare-fun m!6427154 () Bool)

(assert (=> b!5402705 m!6427154))

(declare-fun m!6427156 () Bool)

(assert (=> b!5402705 m!6427156))

(declare-fun m!6427158 () Bool)

(assert (=> b!5402705 m!6427158))

(declare-fun m!6427160 () Bool)

(assert (=> b!5402720 m!6427160))

(declare-fun m!6427162 () Bool)

(assert (=> b!5402732 m!6427162))

(declare-fun m!6427164 () Bool)

(assert (=> b!5402704 m!6427164))

(declare-fun m!6427166 () Bool)

(assert (=> b!5402704 m!6427166))

(declare-fun m!6427168 () Bool)

(assert (=> b!5402704 m!6427168))

(declare-fun m!6427170 () Bool)

(assert (=> b!5402704 m!6427170))

(assert (=> b!5402704 m!6427166))

(declare-fun m!6427172 () Bool)

(assert (=> b!5402704 m!6427172))

(assert (=> b!5402704 m!6427164))

(declare-fun m!6427174 () Bool)

(assert (=> b!5402704 m!6427174))

(declare-fun m!6427176 () Bool)

(assert (=> start!567478 m!6427176))

(assert (=> b!5402726 m!6427124))

(declare-fun m!6427178 () Bool)

(assert (=> b!5402716 m!6427178))

(declare-fun m!6427180 () Bool)

(assert (=> b!5402715 m!6427180))

(declare-fun m!6427182 () Bool)

(assert (=> b!5402715 m!6427182))

(declare-fun m!6427184 () Bool)

(assert (=> b!5402730 m!6427184))

(declare-fun m!6427186 () Bool)

(assert (=> b!5402730 m!6427186))

(declare-fun m!6427188 () Bool)

(assert (=> b!5402730 m!6427188))

(declare-fun m!6427190 () Bool)

(assert (=> b!5402708 m!6427190))

(assert (=> b!5402708 m!6427190))

(declare-fun m!6427192 () Bool)

(assert (=> b!5402708 m!6427192))

(declare-fun m!6427194 () Bool)

(assert (=> setNonEmpty!35165 m!6427194))

(declare-fun m!6427196 () Bool)

(assert (=> b!5402723 m!6427196))

(declare-fun m!6427198 () Bool)

(assert (=> b!5402698 m!6427198))

(check-sat (not b!5402726) (not b!5402711) (not b!5402725) (not b!5402741) (not b!5402732) (not b!5402730) (not b!5402701) (not b!5402724) (not b!5402698) (not b!5402705) (not b!5402718) (not b!5402713) (not b!5402704) (not b!5402712) (not b!5402716) (not b!5402727) (not b!5402740) (not b!5402736) (not b!5402708) (not b!5402729) (not b!5402723) (not start!567478) (not b!5402722) (not b!5402735) (not setNonEmpty!35165) tp_is_empty!39595 (not b!5402731) (not b!5402734) (not b!5402739) (not b!5402721) (not b!5402720) (not b!5402715) (not b!5402699) (not b!5402703) (not b!5402733) (not b!5402737) (not b!5402707))
(check-sat)
