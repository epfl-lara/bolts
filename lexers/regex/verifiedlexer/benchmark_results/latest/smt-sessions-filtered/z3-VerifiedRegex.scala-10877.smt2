; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!561982 () Bool)

(assert start!561982)

(declare-fun b!5332513 () Bool)

(assert (=> b!5332513 true))

(assert (=> b!5332513 true))

(declare-fun lambda!272626 () Int)

(declare-fun lambda!272625 () Int)

(assert (=> b!5332513 (not (= lambda!272626 lambda!272625))))

(assert (=> b!5332513 true))

(assert (=> b!5332513 true))

(declare-fun b!5332524 () Bool)

(assert (=> b!5332524 true))

(declare-fun bs!1236666 () Bool)

(declare-fun b!5332514 () Bool)

(assert (= bs!1236666 (and b!5332514 b!5332513)))

(declare-datatypes ((C!30272 0))(
  ( (C!30273 (val!24838 Int)) )
))
(declare-datatypes ((Regex!15001 0))(
  ( (ElementMatch!15001 (c!927421 C!30272)) (Concat!23846 (regOne!30514 Regex!15001) (regTwo!30514 Regex!15001)) (EmptyExpr!15001) (Star!15001 (reg!15330 Regex!15001)) (EmptyLang!15001) (Union!15001 (regOne!30515 Regex!15001) (regTwo!30515 Regex!15001)) )
))
(declare-fun r!7292 () Regex!15001)

(declare-fun lambda!272628 () Int)

(declare-fun lt!2175010 () Regex!15001)

(assert (=> bs!1236666 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2175010 (regTwo!30514 r!7292))) (= lambda!272628 lambda!272625))))

(assert (=> bs!1236666 (not (= lambda!272628 lambda!272626))))

(assert (=> b!5332514 true))

(assert (=> b!5332514 true))

(assert (=> b!5332514 true))

(declare-fun lambda!272629 () Int)

(assert (=> bs!1236666 (not (= lambda!272629 lambda!272625))))

(assert (=> bs!1236666 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2175010 (regTwo!30514 r!7292))) (= lambda!272629 lambda!272626))))

(assert (=> b!5332514 (not (= lambda!272629 lambda!272628))))

(assert (=> b!5332514 true))

(assert (=> b!5332514 true))

(assert (=> b!5332514 true))

(declare-fun lambda!272630 () Int)

(declare-fun lt!2174993 () Regex!15001)

(assert (=> bs!1236666 (= (and (= (regTwo!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2174993 (regTwo!30514 r!7292))) (= lambda!272630 lambda!272625))))

(assert (=> bs!1236666 (not (= lambda!272630 lambda!272626))))

(assert (=> b!5332514 (= (and (= (regTwo!30514 (regOne!30514 r!7292)) (regOne!30514 (regOne!30514 r!7292))) (= lt!2174993 lt!2175010)) (= lambda!272630 lambda!272628))))

(assert (=> b!5332514 (not (= lambda!272630 lambda!272629))))

(assert (=> b!5332514 true))

(assert (=> b!5332514 true))

(assert (=> b!5332514 true))

(declare-fun b!5332512 () Bool)

(declare-fun e!3311938 () Bool)

(declare-fun e!3311930 () Bool)

(assert (=> b!5332512 (= e!3311938 e!3311930)))

(declare-fun res!2261857 () Bool)

(assert (=> b!5332512 (=> res!2261857 e!3311930)))

(declare-datatypes ((List!61302 0))(
  ( (Nil!61178) (Cons!61178 (h!67626 C!30272) (t!374519 List!61302)) )
))
(declare-fun s!2326 () List!61302)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61303 0))(
  ( (Nil!61179) (Cons!61179 (h!67627 Regex!15001) (t!374520 List!61303)) )
))
(declare-datatypes ((Context!8770 0))(
  ( (Context!8771 (exprs!4885 List!61303)) )
))
(declare-fun lt!2174996 () (InoxSet Context!8770))

(declare-fun lt!2175011 () Bool)

(declare-fun matchZipper!1245 ((InoxSet Context!8770) List!61302) Bool)

(assert (=> b!5332512 (= res!2261857 (not (= lt!2175011 (matchZipper!1245 lt!2174996 (t!374519 s!2326)))))))

(declare-fun lt!2175008 () (InoxSet Context!8770))

(assert (=> b!5332512 (= lt!2175011 (matchZipper!1245 lt!2175008 (t!374519 s!2326)))))

(declare-fun e!3311940 () Bool)

(declare-fun e!3311932 () Bool)

(assert (=> b!5332513 (= e!3311940 e!3311932)))

(declare-fun res!2261866 () Bool)

(assert (=> b!5332513 (=> res!2261866 e!3311932)))

(declare-fun lt!2174983 () Bool)

(declare-fun lt!2175006 () Bool)

(get-info :version)

(assert (=> b!5332513 (= res!2261866 (or (not (= lt!2174983 lt!2175006)) ((_ is Nil!61178) s!2326)))))

(declare-fun Exists!2182 (Int) Bool)

(assert (=> b!5332513 (= (Exists!2182 lambda!272625) (Exists!2182 lambda!272626))))

(declare-datatypes ((Unit!153522 0))(
  ( (Unit!153523) )
))
(declare-fun lt!2174995 () Unit!153522)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!836 (Regex!15001 Regex!15001 List!61302) Unit!153522)

(assert (=> b!5332513 (= lt!2174995 (lemmaExistCutMatchRandMatchRSpecEquivalent!836 (regOne!30514 r!7292) (regTwo!30514 r!7292) s!2326))))

(assert (=> b!5332513 (= lt!2175006 (Exists!2182 lambda!272625))))

(declare-datatypes ((tuple2!64400 0))(
  ( (tuple2!64401 (_1!35503 List!61302) (_2!35503 List!61302)) )
))
(declare-datatypes ((Option!15112 0))(
  ( (None!15111) (Some!15111 (v!51140 tuple2!64400)) )
))
(declare-fun isDefined!11815 (Option!15112) Bool)

(declare-fun findConcatSeparation!1526 (Regex!15001 Regex!15001 List!61302 List!61302 List!61302) Option!15112)

(assert (=> b!5332513 (= lt!2175006 (isDefined!11815 (findConcatSeparation!1526 (regOne!30514 r!7292) (regTwo!30514 r!7292) Nil!61178 s!2326 s!2326)))))

(declare-fun lt!2174988 () Unit!153522)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1290 (Regex!15001 Regex!15001 List!61302) Unit!153522)

(assert (=> b!5332513 (= lt!2174988 (lemmaFindConcatSeparationEquivalentToExists!1290 (regOne!30514 r!7292) (regTwo!30514 r!7292) s!2326))))

(declare-fun e!3311937 () Bool)

(declare-datatypes ((List!61304 0))(
  ( (Nil!61180) (Cons!61180 (h!67628 Context!8770) (t!374521 List!61304)) )
))
(declare-fun zl!343 () List!61304)

(declare-fun lambda!272631 () Int)

(declare-fun forall!14419 (List!61303 Int) Bool)

(assert (=> b!5332514 (= e!3311937 (forall!14419 (t!374520 (exprs!4885 (h!67628 zl!343))) lambda!272631))))

(assert (=> b!5332514 (= (isDefined!11815 (findConcatSeparation!1526 (regTwo!30514 (regOne!30514 r!7292)) lt!2174993 Nil!61178 s!2326 s!2326)) (Exists!2182 lambda!272630))))

(declare-fun lt!2175000 () Unit!153522)

(assert (=> b!5332514 (= lt!2175000 (lemmaFindConcatSeparationEquivalentToExists!1290 (regTwo!30514 (regOne!30514 r!7292)) lt!2174993 s!2326))))

(declare-fun generalisedConcat!670 (List!61303) Regex!15001)

(assert (=> b!5332514 (= lt!2174993 (generalisedConcat!670 (t!374520 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun matchR!7186 (Regex!15001 List!61302) Bool)

(declare-fun matchRSpec!2104 (Regex!15001 List!61302) Bool)

(assert (=> b!5332514 (= (matchR!7186 lt!2175010 s!2326) (matchRSpec!2104 lt!2175010 s!2326))))

(declare-fun lt!2175012 () Unit!153522)

(declare-fun mainMatchTheorem!2104 (Regex!15001 List!61302) Unit!153522)

(assert (=> b!5332514 (= lt!2175012 (mainMatchTheorem!2104 lt!2175010 s!2326))))

(assert (=> b!5332514 (= (Exists!2182 lambda!272628) (Exists!2182 lambda!272629))))

(declare-fun lt!2174987 () Unit!153522)

(assert (=> b!5332514 (= lt!2174987 (lemmaExistCutMatchRandMatchRSpecEquivalent!836 (regOne!30514 (regOne!30514 r!7292)) lt!2175010 s!2326))))

(assert (=> b!5332514 (= (isDefined!11815 (findConcatSeparation!1526 (regOne!30514 (regOne!30514 r!7292)) lt!2175010 Nil!61178 s!2326 s!2326)) (Exists!2182 lambda!272628))))

(declare-fun lt!2174985 () Unit!153522)

(assert (=> b!5332514 (= lt!2174985 (lemmaFindConcatSeparationEquivalentToExists!1290 (regOne!30514 (regOne!30514 r!7292)) lt!2175010 s!2326))))

(declare-fun lt!2174990 () List!61303)

(assert (=> b!5332514 (= lt!2175010 (generalisedConcat!670 lt!2174990))))

(declare-fun lt!2174998 () Bool)

(declare-fun lt!2175013 () Regex!15001)

(assert (=> b!5332514 (= lt!2174998 (matchRSpec!2104 lt!2175013 s!2326))))

(declare-fun lt!2174997 () Unit!153522)

(assert (=> b!5332514 (= lt!2174997 (mainMatchTheorem!2104 lt!2175013 s!2326))))

(declare-fun lt!2174992 () (InoxSet Context!8770))

(assert (=> b!5332514 (= lt!2174998 (matchZipper!1245 lt!2174992 s!2326))))

(assert (=> b!5332514 (= lt!2174998 (matchR!7186 lt!2175013 s!2326))))

(declare-fun lt!2175014 () List!61304)

(declare-fun lt!2175003 () Unit!153522)

(declare-fun theoremZipperRegexEquiv!399 ((InoxSet Context!8770) List!61304 Regex!15001 List!61302) Unit!153522)

(assert (=> b!5332514 (= lt!2175003 (theoremZipperRegexEquiv!399 lt!2174992 lt!2175014 lt!2175013 s!2326))))

(declare-fun lt!2175004 () List!61303)

(assert (=> b!5332514 (= lt!2175013 (generalisedConcat!670 lt!2175004))))

(declare-fun b!5332515 () Bool)

(declare-fun res!2261855 () Bool)

(assert (=> b!5332515 (=> res!2261855 e!3311940)))

(assert (=> b!5332515 (= res!2261855 (not (= r!7292 (generalisedConcat!670 (exprs!4885 (h!67628 zl!343))))))))

(declare-fun setRes!34381 () Bool)

(declare-fun setElem!34381 () Context!8770)

(declare-fun e!3311939 () Bool)

(declare-fun setNonEmpty!34381 () Bool)

(declare-fun tp!1483862 () Bool)

(declare-fun inv!80749 (Context!8770) Bool)

(assert (=> setNonEmpty!34381 (= setRes!34381 (and tp!1483862 (inv!80749 setElem!34381) e!3311939))))

(declare-fun z!1189 () (InoxSet Context!8770))

(declare-fun setRest!34381 () (InoxSet Context!8770))

(assert (=> setNonEmpty!34381 (= z!1189 ((_ map or) (store ((as const (Array Context!8770 Bool)) false) setElem!34381 true) setRest!34381))))

(declare-fun b!5332516 () Bool)

(declare-fun res!2261864 () Bool)

(assert (=> b!5332516 (=> res!2261864 e!3311940)))

(declare-fun isEmpty!33147 (List!61304) Bool)

(assert (=> b!5332516 (= res!2261864 (not (isEmpty!33147 (t!374521 zl!343))))))

(declare-fun b!5332517 () Bool)

(declare-fun res!2261851 () Bool)

(declare-fun e!3311927 () Bool)

(assert (=> b!5332517 (=> (not res!2261851) (not e!3311927))))

(declare-fun toList!8785 ((InoxSet Context!8770)) List!61304)

(assert (=> b!5332517 (= res!2261851 (= (toList!8785 z!1189) zl!343))))

(declare-fun b!5332518 () Bool)

(declare-fun e!3311926 () Unit!153522)

(declare-fun Unit!153524 () Unit!153522)

(assert (=> b!5332518 (= e!3311926 Unit!153524)))

(declare-fun b!5332519 () Bool)

(declare-fun res!2261844 () Bool)

(assert (=> b!5332519 (=> res!2261844 e!3311940)))

(assert (=> b!5332519 (= res!2261844 (not ((_ is Cons!61179) (exprs!4885 (h!67628 zl!343)))))))

(declare-fun b!5332520 () Bool)

(declare-fun e!3311928 () Bool)

(declare-fun tp_is_empty!39255 () Bool)

(declare-fun tp!1483868 () Bool)

(assert (=> b!5332520 (= e!3311928 (and tp_is_empty!39255 tp!1483868))))

(declare-fun b!5332521 () Bool)

(declare-fun res!2261854 () Bool)

(assert (=> b!5332521 (=> res!2261854 e!3311940)))

(assert (=> b!5332521 (= res!2261854 (or ((_ is EmptyExpr!15001) r!7292) ((_ is EmptyLang!15001) r!7292) ((_ is ElementMatch!15001) r!7292) ((_ is Union!15001) r!7292) (not ((_ is Concat!23846) r!7292))))))

(declare-fun b!5332522 () Bool)

(declare-fun e!3311935 () Bool)

(declare-fun lt!2174984 () (InoxSet Context!8770))

(assert (=> b!5332522 (= e!3311935 (matchZipper!1245 lt!2174984 (t!374519 s!2326)))))

(declare-fun b!5332523 () Bool)

(declare-fun tp!1483860 () Bool)

(declare-fun e!3311929 () Bool)

(declare-fun e!3311925 () Bool)

(assert (=> b!5332523 (= e!3311925 (and (inv!80749 (h!67628 zl!343)) e!3311929 tp!1483860))))

(declare-fun e!3311931 () Bool)

(assert (=> b!5332524 (= e!3311932 e!3311931)))

(declare-fun res!2261865 () Bool)

(assert (=> b!5332524 (=> res!2261865 e!3311931)))

(assert (=> b!5332524 (= res!2261865 (or (and ((_ is ElementMatch!15001) (regOne!30514 r!7292)) (= (c!927421 (regOne!30514 r!7292)) (h!67626 s!2326))) ((_ is Union!15001) (regOne!30514 r!7292))))))

(declare-fun lt!2175001 () Unit!153522)

(assert (=> b!5332524 (= lt!2175001 e!3311926)))

(declare-fun c!927420 () Bool)

(declare-fun nullable!5170 (Regex!15001) Bool)

(assert (=> b!5332524 (= c!927420 (nullable!5170 (h!67627 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun lambda!272627 () Int)

(declare-fun flatMap!728 ((InoxSet Context!8770) Int) (InoxSet Context!8770))

(declare-fun derivationStepZipperUp!373 (Context!8770 C!30272) (InoxSet Context!8770))

(assert (=> b!5332524 (= (flatMap!728 z!1189 lambda!272627) (derivationStepZipperUp!373 (h!67628 zl!343) (h!67626 s!2326)))))

(declare-fun lt!2174994 () Unit!153522)

(declare-fun lemmaFlatMapOnSingletonSet!260 ((InoxSet Context!8770) Context!8770 Int) Unit!153522)

(assert (=> b!5332524 (= lt!2174994 (lemmaFlatMapOnSingletonSet!260 z!1189 (h!67628 zl!343) lambda!272627))))

(declare-fun lt!2174991 () Context!8770)

(assert (=> b!5332524 (= lt!2174984 (derivationStepZipperUp!373 lt!2174991 (h!67626 s!2326)))))

(declare-fun derivationStepZipperDown!449 (Regex!15001 Context!8770 C!30272) (InoxSet Context!8770))

(assert (=> b!5332524 (= lt!2175008 (derivationStepZipperDown!449 (h!67627 (exprs!4885 (h!67628 zl!343))) lt!2174991 (h!67626 s!2326)))))

(assert (=> b!5332524 (= lt!2174991 (Context!8771 (t!374520 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun lt!2174999 () (InoxSet Context!8770))

(assert (=> b!5332524 (= lt!2174999 (derivationStepZipperUp!373 (Context!8771 (Cons!61179 (h!67627 (exprs!4885 (h!67628 zl!343))) (t!374520 (exprs!4885 (h!67628 zl!343))))) (h!67626 s!2326)))))

(declare-fun b!5332525 () Bool)

(declare-fun res!2261847 () Bool)

(assert (=> b!5332525 (=> res!2261847 e!3311931)))

(assert (=> b!5332525 (= res!2261847 (not ((_ is Concat!23846) (regOne!30514 r!7292))))))

(declare-fun b!5332526 () Bool)

(declare-fun res!2261861 () Bool)

(declare-fun e!3311934 () Bool)

(assert (=> b!5332526 (=> res!2261861 e!3311934)))

(declare-fun lt!2175005 () (InoxSet Context!8770))

(assert (=> b!5332526 (= res!2261861 (not (= lt!2175011 (matchZipper!1245 lt!2175005 (t!374519 s!2326)))))))

(declare-fun b!5332527 () Bool)

(declare-fun res!2261863 () Bool)

(assert (=> b!5332527 (=> res!2261863 e!3311937)))

(declare-fun zipperDepth!110 (List!61304) Int)

(assert (=> b!5332527 (= res!2261863 (> (zipperDepth!110 lt!2175014) (zipperDepth!110 zl!343)))))

(declare-fun b!5332528 () Bool)

(declare-fun res!2261862 () Bool)

(assert (=> b!5332528 (=> res!2261862 e!3311932)))

(declare-fun isEmpty!33148 (List!61303) Bool)

(assert (=> b!5332528 (= res!2261862 (isEmpty!33148 (t!374520 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun b!5332529 () Bool)

(declare-fun res!2261846 () Bool)

(assert (=> b!5332529 (=> (not res!2261846) (not e!3311927))))

(declare-fun unfocusZipper!743 (List!61304) Regex!15001)

(assert (=> b!5332529 (= res!2261846 (= r!7292 (unfocusZipper!743 zl!343)))))

(declare-fun b!5332530 () Bool)

(declare-fun res!2261848 () Bool)

(assert (=> b!5332530 (=> res!2261848 e!3311940)))

(declare-fun generalisedUnion!930 (List!61303) Regex!15001)

(declare-fun unfocusZipperList!443 (List!61304) List!61303)

(assert (=> b!5332530 (= res!2261848 (not (= r!7292 (generalisedUnion!930 (unfocusZipperList!443 zl!343)))))))

(declare-fun b!5332531 () Bool)

(declare-fun e!3311936 () Bool)

(declare-fun tp!1483866 () Bool)

(declare-fun tp!1483869 () Bool)

(assert (=> b!5332531 (= e!3311936 (and tp!1483866 tp!1483869))))

(declare-fun b!5332532 () Bool)

(declare-fun res!2261859 () Bool)

(assert (=> b!5332532 (=> res!2261859 e!3311934)))

(assert (=> b!5332532 (= res!2261859 (not (= (exprs!4885 (h!67628 zl!343)) (Cons!61179 (Concat!23846 (regOne!30514 (regOne!30514 r!7292)) (regTwo!30514 (regOne!30514 r!7292))) (t!374520 (exprs!4885 (h!67628 zl!343)))))))))

(declare-fun b!5332533 () Bool)

(assert (=> b!5332533 (= e!3311931 e!3311938)))

(declare-fun res!2261845 () Bool)

(assert (=> b!5332533 (=> res!2261845 e!3311938)))

(assert (=> b!5332533 (= res!2261845 (not (= lt!2175008 lt!2174996)))))

(assert (=> b!5332533 (= lt!2174996 (derivationStepZipperDown!449 (regOne!30514 (regOne!30514 r!7292)) (Context!8771 lt!2174990) (h!67626 s!2326)))))

(assert (=> b!5332533 (= lt!2174990 (Cons!61179 (regTwo!30514 (regOne!30514 r!7292)) (t!374520 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun b!5332534 () Bool)

(assert (=> b!5332534 (= e!3311927 (not e!3311940))))

(declare-fun res!2261850 () Bool)

(assert (=> b!5332534 (=> res!2261850 e!3311940)))

(assert (=> b!5332534 (= res!2261850 (not ((_ is Cons!61180) zl!343)))))

(assert (=> b!5332534 (= lt!2174983 (matchRSpec!2104 r!7292 s!2326))))

(assert (=> b!5332534 (= lt!2174983 (matchR!7186 r!7292 s!2326))))

(declare-fun lt!2174986 () Unit!153522)

(assert (=> b!5332534 (= lt!2174986 (mainMatchTheorem!2104 r!7292 s!2326))))

(declare-fun b!5332535 () Bool)

(declare-fun res!2261853 () Bool)

(assert (=> b!5332535 (=> res!2261853 e!3311934)))

(declare-fun lt!2175007 () Context!8770)

(declare-fun contextDepthTotal!134 (Context!8770) Int)

(assert (=> b!5332535 (= res!2261853 (>= (contextDepthTotal!134 lt!2175007) (contextDepthTotal!134 (h!67628 zl!343))))))

(declare-fun setIsEmpty!34381 () Bool)

(assert (=> setIsEmpty!34381 setRes!34381))

(declare-fun res!2261867 () Bool)

(assert (=> start!561982 (=> (not res!2261867) (not e!3311927))))

(declare-fun validRegex!6737 (Regex!15001) Bool)

(assert (=> start!561982 (= res!2261867 (validRegex!6737 r!7292))))

(assert (=> start!561982 e!3311927))

(assert (=> start!561982 e!3311936))

(declare-fun condSetEmpty!34381 () Bool)

(assert (=> start!561982 (= condSetEmpty!34381 (= z!1189 ((as const (Array Context!8770 Bool)) false)))))

(assert (=> start!561982 setRes!34381))

(assert (=> start!561982 e!3311925))

(assert (=> start!561982 e!3311928))

(declare-fun b!5332536 () Bool)

(declare-fun tp!1483861 () Bool)

(assert (=> b!5332536 (= e!3311936 tp!1483861)))

(declare-fun b!5332537 () Bool)

(declare-fun Unit!153525 () Unit!153522)

(assert (=> b!5332537 (= e!3311926 Unit!153525)))

(declare-fun lt!2175009 () Unit!153522)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!238 ((InoxSet Context!8770) (InoxSet Context!8770) List!61302) Unit!153522)

(assert (=> b!5332537 (= lt!2175009 (lemmaZipperConcatMatchesSameAsBothZippers!238 lt!2175008 lt!2174984 (t!374519 s!2326)))))

(declare-fun res!2261849 () Bool)

(assert (=> b!5332537 (= res!2261849 (matchZipper!1245 lt!2175008 (t!374519 s!2326)))))

(assert (=> b!5332537 (=> res!2261849 e!3311935)))

(assert (=> b!5332537 (= (matchZipper!1245 ((_ map or) lt!2175008 lt!2174984) (t!374519 s!2326)) e!3311935)))

(declare-fun b!5332538 () Bool)

(declare-fun e!3311933 () Bool)

(assert (=> b!5332538 (= e!3311933 (nullable!5170 (regOne!30514 (regOne!30514 r!7292))))))

(declare-fun b!5332539 () Bool)

(assert (=> b!5332539 (= e!3311930 e!3311934)))

(declare-fun res!2261860 () Bool)

(assert (=> b!5332539 (=> res!2261860 e!3311934)))

(assert (=> b!5332539 (= res!2261860 (not (= lt!2175005 lt!2174996)))))

(assert (=> b!5332539 (= (flatMap!728 lt!2174992 lambda!272627) (derivationStepZipperUp!373 lt!2175007 (h!67626 s!2326)))))

(declare-fun lt!2175002 () Unit!153522)

(assert (=> b!5332539 (= lt!2175002 (lemmaFlatMapOnSingletonSet!260 lt!2174992 lt!2175007 lambda!272627))))

(declare-fun lt!2174989 () (InoxSet Context!8770))

(assert (=> b!5332539 (= lt!2174989 (derivationStepZipperUp!373 lt!2175007 (h!67626 s!2326)))))

(declare-fun derivationStepZipper!1242 ((InoxSet Context!8770) C!30272) (InoxSet Context!8770))

(assert (=> b!5332539 (= lt!2175005 (derivationStepZipper!1242 lt!2174992 (h!67626 s!2326)))))

(assert (=> b!5332539 (= lt!2174992 (store ((as const (Array Context!8770 Bool)) false) lt!2175007 true))))

(assert (=> b!5332539 (= lt!2175007 (Context!8771 lt!2175004))))

(assert (=> b!5332539 (= lt!2175004 (Cons!61179 (regOne!30514 (regOne!30514 r!7292)) lt!2174990))))

(declare-fun b!5332540 () Bool)

(assert (=> b!5332540 (= e!3311934 e!3311937)))

(declare-fun res!2261856 () Bool)

(assert (=> b!5332540 (=> res!2261856 e!3311937)))

(declare-fun zipperDepthTotal!154 (List!61304) Int)

(assert (=> b!5332540 (= res!2261856 (>= (zipperDepthTotal!154 lt!2175014) (zipperDepthTotal!154 zl!343)))))

(assert (=> b!5332540 (= lt!2175014 (Cons!61180 lt!2175007 Nil!61180))))

(declare-fun b!5332541 () Bool)

(declare-fun tp!1483863 () Bool)

(assert (=> b!5332541 (= e!3311929 tp!1483863)))

(declare-fun b!5332542 () Bool)

(declare-fun tp!1483867 () Bool)

(declare-fun tp!1483864 () Bool)

(assert (=> b!5332542 (= e!3311936 (and tp!1483867 tp!1483864))))

(declare-fun b!5332543 () Bool)

(declare-fun res!2261852 () Bool)

(assert (=> b!5332543 (=> res!2261852 e!3311931)))

(assert (=> b!5332543 (= res!2261852 e!3311933)))

(declare-fun res!2261858 () Bool)

(assert (=> b!5332543 (=> (not res!2261858) (not e!3311933))))

(assert (=> b!5332543 (= res!2261858 ((_ is Concat!23846) (regOne!30514 r!7292)))))

(declare-fun b!5332544 () Bool)

(declare-fun tp!1483865 () Bool)

(assert (=> b!5332544 (= e!3311939 tp!1483865)))

(declare-fun b!5332545 () Bool)

(assert (=> b!5332545 (= e!3311936 tp_is_empty!39255)))

(assert (= (and start!561982 res!2261867) b!5332517))

(assert (= (and b!5332517 res!2261851) b!5332529))

(assert (= (and b!5332529 res!2261846) b!5332534))

(assert (= (and b!5332534 (not res!2261850)) b!5332516))

(assert (= (and b!5332516 (not res!2261864)) b!5332515))

(assert (= (and b!5332515 (not res!2261855)) b!5332519))

(assert (= (and b!5332519 (not res!2261844)) b!5332530))

(assert (= (and b!5332530 (not res!2261848)) b!5332521))

(assert (= (and b!5332521 (not res!2261854)) b!5332513))

(assert (= (and b!5332513 (not res!2261866)) b!5332528))

(assert (= (and b!5332528 (not res!2261862)) b!5332524))

(assert (= (and b!5332524 c!927420) b!5332537))

(assert (= (and b!5332524 (not c!927420)) b!5332518))

(assert (= (and b!5332537 (not res!2261849)) b!5332522))

(assert (= (and b!5332524 (not res!2261865)) b!5332543))

(assert (= (and b!5332543 res!2261858) b!5332538))

(assert (= (and b!5332543 (not res!2261852)) b!5332525))

(assert (= (and b!5332525 (not res!2261847)) b!5332533))

(assert (= (and b!5332533 (not res!2261845)) b!5332512))

(assert (= (and b!5332512 (not res!2261857)) b!5332539))

(assert (= (and b!5332539 (not res!2261860)) b!5332526))

(assert (= (and b!5332526 (not res!2261861)) b!5332532))

(assert (= (and b!5332532 (not res!2261859)) b!5332535))

(assert (= (and b!5332535 (not res!2261853)) b!5332540))

(assert (= (and b!5332540 (not res!2261856)) b!5332527))

(assert (= (and b!5332527 (not res!2261863)) b!5332514))

(assert (= (and start!561982 ((_ is ElementMatch!15001) r!7292)) b!5332545))

(assert (= (and start!561982 ((_ is Concat!23846) r!7292)) b!5332531))

(assert (= (and start!561982 ((_ is Star!15001) r!7292)) b!5332536))

(assert (= (and start!561982 ((_ is Union!15001) r!7292)) b!5332542))

(assert (= (and start!561982 condSetEmpty!34381) setIsEmpty!34381))

(assert (= (and start!561982 (not condSetEmpty!34381)) setNonEmpty!34381))

(assert (= setNonEmpty!34381 b!5332544))

(assert (= b!5332523 b!5332541))

(assert (= (and start!561982 ((_ is Cons!61180) zl!343)) b!5332523))

(assert (= (and start!561982 ((_ is Cons!61178) s!2326)) b!5332520))

(declare-fun m!6365770 () Bool)

(assert (=> b!5332537 m!6365770))

(declare-fun m!6365772 () Bool)

(assert (=> b!5332537 m!6365772))

(declare-fun m!6365774 () Bool)

(assert (=> b!5332537 m!6365774))

(declare-fun m!6365776 () Bool)

(assert (=> b!5332527 m!6365776))

(declare-fun m!6365778 () Bool)

(assert (=> b!5332527 m!6365778))

(declare-fun m!6365780 () Bool)

(assert (=> b!5332538 m!6365780))

(declare-fun m!6365782 () Bool)

(assert (=> b!5332513 m!6365782))

(declare-fun m!6365784 () Bool)

(assert (=> b!5332513 m!6365784))

(declare-fun m!6365786 () Bool)

(assert (=> b!5332513 m!6365786))

(assert (=> b!5332513 m!6365782))

(declare-fun m!6365788 () Bool)

(assert (=> b!5332513 m!6365788))

(declare-fun m!6365790 () Bool)

(assert (=> b!5332513 m!6365790))

(assert (=> b!5332513 m!6365784))

(declare-fun m!6365792 () Bool)

(assert (=> b!5332513 m!6365792))

(declare-fun m!6365794 () Bool)

(assert (=> b!5332522 m!6365794))

(declare-fun m!6365796 () Bool)

(assert (=> start!561982 m!6365796))

(declare-fun m!6365798 () Bool)

(assert (=> b!5332514 m!6365798))

(declare-fun m!6365800 () Bool)

(assert (=> b!5332514 m!6365800))

(declare-fun m!6365802 () Bool)

(assert (=> b!5332514 m!6365802))

(declare-fun m!6365804 () Bool)

(assert (=> b!5332514 m!6365804))

(declare-fun m!6365806 () Bool)

(assert (=> b!5332514 m!6365806))

(declare-fun m!6365808 () Bool)

(assert (=> b!5332514 m!6365808))

(declare-fun m!6365810 () Bool)

(assert (=> b!5332514 m!6365810))

(declare-fun m!6365812 () Bool)

(assert (=> b!5332514 m!6365812))

(declare-fun m!6365814 () Bool)

(assert (=> b!5332514 m!6365814))

(declare-fun m!6365816 () Bool)

(assert (=> b!5332514 m!6365816))

(declare-fun m!6365818 () Bool)

(assert (=> b!5332514 m!6365818))

(declare-fun m!6365820 () Bool)

(assert (=> b!5332514 m!6365820))

(declare-fun m!6365822 () Bool)

(assert (=> b!5332514 m!6365822))

(declare-fun m!6365824 () Bool)

(assert (=> b!5332514 m!6365824))

(assert (=> b!5332514 m!6365800))

(declare-fun m!6365826 () Bool)

(assert (=> b!5332514 m!6365826))

(declare-fun m!6365828 () Bool)

(assert (=> b!5332514 m!6365828))

(declare-fun m!6365830 () Bool)

(assert (=> b!5332514 m!6365830))

(declare-fun m!6365832 () Bool)

(assert (=> b!5332514 m!6365832))

(declare-fun m!6365834 () Bool)

(assert (=> b!5332514 m!6365834))

(assert (=> b!5332514 m!6365822))

(declare-fun m!6365836 () Bool)

(assert (=> b!5332514 m!6365836))

(assert (=> b!5332514 m!6365814))

(declare-fun m!6365838 () Bool)

(assert (=> b!5332514 m!6365838))

(declare-fun m!6365840 () Bool)

(assert (=> b!5332514 m!6365840))

(declare-fun m!6365842 () Bool)

(assert (=> b!5332517 m!6365842))

(declare-fun m!6365844 () Bool)

(assert (=> b!5332512 m!6365844))

(assert (=> b!5332512 m!6365772))

(declare-fun m!6365846 () Bool)

(assert (=> b!5332526 m!6365846))

(declare-fun m!6365848 () Bool)

(assert (=> setNonEmpty!34381 m!6365848))

(declare-fun m!6365850 () Bool)

(assert (=> b!5332539 m!6365850))

(declare-fun m!6365852 () Bool)

(assert (=> b!5332539 m!6365852))

(declare-fun m!6365854 () Bool)

(assert (=> b!5332539 m!6365854))

(declare-fun m!6365856 () Bool)

(assert (=> b!5332539 m!6365856))

(declare-fun m!6365858 () Bool)

(assert (=> b!5332539 m!6365858))

(declare-fun m!6365860 () Bool)

(assert (=> b!5332533 m!6365860))

(declare-fun m!6365862 () Bool)

(assert (=> b!5332516 m!6365862))

(declare-fun m!6365864 () Bool)

(assert (=> b!5332528 m!6365864))

(declare-fun m!6365866 () Bool)

(assert (=> b!5332515 m!6365866))

(declare-fun m!6365868 () Bool)

(assert (=> b!5332529 m!6365868))

(declare-fun m!6365870 () Bool)

(assert (=> b!5332534 m!6365870))

(declare-fun m!6365872 () Bool)

(assert (=> b!5332534 m!6365872))

(declare-fun m!6365874 () Bool)

(assert (=> b!5332534 m!6365874))

(declare-fun m!6365876 () Bool)

(assert (=> b!5332535 m!6365876))

(declare-fun m!6365878 () Bool)

(assert (=> b!5332535 m!6365878))

(declare-fun m!6365880 () Bool)

(assert (=> b!5332540 m!6365880))

(declare-fun m!6365882 () Bool)

(assert (=> b!5332540 m!6365882))

(declare-fun m!6365884 () Bool)

(assert (=> b!5332530 m!6365884))

(assert (=> b!5332530 m!6365884))

(declare-fun m!6365886 () Bool)

(assert (=> b!5332530 m!6365886))

(declare-fun m!6365888 () Bool)

(assert (=> b!5332524 m!6365888))

(declare-fun m!6365890 () Bool)

(assert (=> b!5332524 m!6365890))

(declare-fun m!6365892 () Bool)

(assert (=> b!5332524 m!6365892))

(declare-fun m!6365894 () Bool)

(assert (=> b!5332524 m!6365894))

(declare-fun m!6365896 () Bool)

(assert (=> b!5332524 m!6365896))

(declare-fun m!6365898 () Bool)

(assert (=> b!5332524 m!6365898))

(declare-fun m!6365900 () Bool)

(assert (=> b!5332524 m!6365900))

(declare-fun m!6365902 () Bool)

(assert (=> b!5332523 m!6365902))

(check-sat (not b!5332512) (not b!5332539) (not b!5332537) (not b!5332536) (not b!5332538) (not b!5332541) (not b!5332514) (not b!5332513) (not b!5332531) (not b!5332522) (not start!561982) (not b!5332535) (not b!5332528) (not b!5332516) (not b!5332517) (not b!5332540) (not setNonEmpty!34381) (not b!5332527) (not b!5332542) (not b!5332523) (not b!5332530) (not b!5332520) tp_is_empty!39255 (not b!5332526) (not b!5332534) (not b!5332515) (not b!5332524) (not b!5332544) (not b!5332529) (not b!5332533))
(check-sat)
(get-model)

(declare-fun d!1712254 () Bool)

(declare-fun choose!39934 ((InoxSet Context!8770) Int) (InoxSet Context!8770))

(assert (=> d!1712254 (= (flatMap!728 lt!2174992 lambda!272627) (choose!39934 lt!2174992 lambda!272627))))

(declare-fun bs!1236692 () Bool)

(assert (= bs!1236692 d!1712254))

(declare-fun m!6366090 () Bool)

(assert (=> bs!1236692 m!6366090))

(assert (=> b!5332539 d!1712254))

(declare-fun bm!381164 () Bool)

(declare-fun call!381169 () (InoxSet Context!8770))

(assert (=> bm!381164 (= call!381169 (derivationStepZipperDown!449 (h!67627 (exprs!4885 lt!2175007)) (Context!8771 (t!374520 (exprs!4885 lt!2175007))) (h!67626 s!2326)))))

(declare-fun b!5332797 () Bool)

(declare-fun e!3312083 () (InoxSet Context!8770))

(assert (=> b!5332797 (= e!3312083 ((as const (Array Context!8770 Bool)) false))))

(declare-fun e!3312084 () (InoxSet Context!8770))

(declare-fun b!5332798 () Bool)

(assert (=> b!5332798 (= e!3312084 ((_ map or) call!381169 (derivationStepZipperUp!373 (Context!8771 (t!374520 (exprs!4885 lt!2175007))) (h!67626 s!2326))))))

(declare-fun b!5332800 () Bool)

(assert (=> b!5332800 (= e!3312083 call!381169)))

(declare-fun b!5332801 () Bool)

(assert (=> b!5332801 (= e!3312084 e!3312083)))

(declare-fun c!927526 () Bool)

(assert (=> b!5332801 (= c!927526 ((_ is Cons!61179) (exprs!4885 lt!2175007)))))

(declare-fun b!5332799 () Bool)

(declare-fun e!3312082 () Bool)

(assert (=> b!5332799 (= e!3312082 (nullable!5170 (h!67627 (exprs!4885 lt!2175007))))))

(declare-fun d!1712256 () Bool)

(declare-fun c!927525 () Bool)

(assert (=> d!1712256 (= c!927525 e!3312082)))

(declare-fun res!2261921 () Bool)

(assert (=> d!1712256 (=> (not res!2261921) (not e!3312082))))

(assert (=> d!1712256 (= res!2261921 ((_ is Cons!61179) (exprs!4885 lt!2175007)))))

(assert (=> d!1712256 (= (derivationStepZipperUp!373 lt!2175007 (h!67626 s!2326)) e!3312084)))

(assert (= (and d!1712256 res!2261921) b!5332799))

(assert (= (and d!1712256 c!927525) b!5332798))

(assert (= (and d!1712256 (not c!927525)) b!5332801))

(assert (= (and b!5332801 c!927526) b!5332800))

(assert (= (and b!5332801 (not c!927526)) b!5332797))

(assert (= (or b!5332798 b!5332800) bm!381164))

(declare-fun m!6366100 () Bool)

(assert (=> bm!381164 m!6366100))

(declare-fun m!6366102 () Bool)

(assert (=> b!5332798 m!6366102))

(declare-fun m!6366104 () Bool)

(assert (=> b!5332799 m!6366104))

(assert (=> b!5332539 d!1712256))

(declare-fun d!1712260 () Bool)

(declare-fun dynLambda!24195 (Int Context!8770) (InoxSet Context!8770))

(assert (=> d!1712260 (= (flatMap!728 lt!2174992 lambda!272627) (dynLambda!24195 lambda!272627 lt!2175007))))

(declare-fun lt!2175060 () Unit!153522)

(declare-fun choose!39935 ((InoxSet Context!8770) Context!8770 Int) Unit!153522)

(assert (=> d!1712260 (= lt!2175060 (choose!39935 lt!2174992 lt!2175007 lambda!272627))))

(assert (=> d!1712260 (= lt!2174992 (store ((as const (Array Context!8770 Bool)) false) lt!2175007 true))))

(assert (=> d!1712260 (= (lemmaFlatMapOnSingletonSet!260 lt!2174992 lt!2175007 lambda!272627) lt!2175060)))

(declare-fun b_lambda!205097 () Bool)

(assert (=> (not b_lambda!205097) (not d!1712260)))

(declare-fun bs!1236698 () Bool)

(assert (= bs!1236698 d!1712260))

(assert (=> bs!1236698 m!6365852))

(declare-fun m!6366106 () Bool)

(assert (=> bs!1236698 m!6366106))

(declare-fun m!6366108 () Bool)

(assert (=> bs!1236698 m!6366108))

(assert (=> bs!1236698 m!6365854))

(assert (=> b!5332539 d!1712260))

(declare-fun bs!1236699 () Bool)

(declare-fun d!1712262 () Bool)

(assert (= bs!1236699 (and d!1712262 b!5332524)))

(declare-fun lambda!272667 () Int)

(assert (=> bs!1236699 (= lambda!272667 lambda!272627)))

(assert (=> d!1712262 true))

(assert (=> d!1712262 (= (derivationStepZipper!1242 lt!2174992 (h!67626 s!2326)) (flatMap!728 lt!2174992 lambda!272667))))

(declare-fun bs!1236700 () Bool)

(assert (= bs!1236700 d!1712262))

(declare-fun m!6366110 () Bool)

(assert (=> bs!1236700 m!6366110))

(assert (=> b!5332539 d!1712262))

(declare-fun b!5332864 () Bool)

(declare-fun e!3312121 () Bool)

(declare-fun e!3312122 () Bool)

(assert (=> b!5332864 (= e!3312121 e!3312122)))

(declare-fun res!2261956 () Bool)

(assert (=> b!5332864 (= res!2261956 (not (nullable!5170 (reg!15330 r!7292))))))

(assert (=> b!5332864 (=> (not res!2261956) (not e!3312122))))

(declare-fun b!5332865 () Bool)

(declare-fun e!3312126 () Bool)

(declare-fun call!381180 () Bool)

(assert (=> b!5332865 (= e!3312126 call!381180)))

(declare-fun bm!381174 () Bool)

(declare-fun call!381179 () Bool)

(assert (=> bm!381174 (= call!381180 call!381179)))

(declare-fun b!5332866 () Bool)

(declare-fun e!3312123 () Bool)

(assert (=> b!5332866 (= e!3312123 call!381180)))

(declare-fun b!5332867 () Bool)

(assert (=> b!5332867 (= e!3312122 call!381179)))

(declare-fun d!1712264 () Bool)

(declare-fun res!2261960 () Bool)

(declare-fun e!3312120 () Bool)

(assert (=> d!1712264 (=> res!2261960 e!3312120)))

(assert (=> d!1712264 (= res!2261960 ((_ is ElementMatch!15001) r!7292))))

(assert (=> d!1712264 (= (validRegex!6737 r!7292) e!3312120)))

(declare-fun b!5332868 () Bool)

(declare-fun res!2261959 () Bool)

(assert (=> b!5332868 (=> (not res!2261959) (not e!3312126))))

(declare-fun call!381181 () Bool)

(assert (=> b!5332868 (= res!2261959 call!381181)))

(declare-fun e!3312124 () Bool)

(assert (=> b!5332868 (= e!3312124 e!3312126)))

(declare-fun b!5332869 () Bool)

(assert (=> b!5332869 (= e!3312120 e!3312121)))

(declare-fun c!927542 () Bool)

(assert (=> b!5332869 (= c!927542 ((_ is Star!15001) r!7292))))

(declare-fun bm!381175 () Bool)

(declare-fun c!927543 () Bool)

(assert (=> bm!381175 (= call!381181 (validRegex!6737 (ite c!927543 (regOne!30515 r!7292) (regOne!30514 r!7292))))))

(declare-fun bm!381176 () Bool)

(assert (=> bm!381176 (= call!381179 (validRegex!6737 (ite c!927542 (reg!15330 r!7292) (ite c!927543 (regTwo!30515 r!7292) (regTwo!30514 r!7292)))))))

(declare-fun b!5332870 () Bool)

(declare-fun e!3312125 () Bool)

(assert (=> b!5332870 (= e!3312125 e!3312123)))

(declare-fun res!2261957 () Bool)

(assert (=> b!5332870 (=> (not res!2261957) (not e!3312123))))

(assert (=> b!5332870 (= res!2261957 call!381181)))

(declare-fun b!5332871 () Bool)

(assert (=> b!5332871 (= e!3312121 e!3312124)))

(assert (=> b!5332871 (= c!927543 ((_ is Union!15001) r!7292))))

(declare-fun b!5332872 () Bool)

(declare-fun res!2261958 () Bool)

(assert (=> b!5332872 (=> res!2261958 e!3312125)))

(assert (=> b!5332872 (= res!2261958 (not ((_ is Concat!23846) r!7292)))))

(assert (=> b!5332872 (= e!3312124 e!3312125)))

(assert (= (and d!1712264 (not res!2261960)) b!5332869))

(assert (= (and b!5332869 c!927542) b!5332864))

(assert (= (and b!5332869 (not c!927542)) b!5332871))

(assert (= (and b!5332864 res!2261956) b!5332867))

(assert (= (and b!5332871 c!927543) b!5332868))

(assert (= (and b!5332871 (not c!927543)) b!5332872))

(assert (= (and b!5332868 res!2261959) b!5332865))

(assert (= (and b!5332872 (not res!2261958)) b!5332870))

(assert (= (and b!5332870 res!2261957) b!5332866))

(assert (= (or b!5332865 b!5332866) bm!381174))

(assert (= (or b!5332868 b!5332870) bm!381175))

(assert (= (or b!5332867 bm!381174) bm!381176))

(declare-fun m!6366126 () Bool)

(assert (=> b!5332864 m!6366126))

(declare-fun m!6366128 () Bool)

(assert (=> bm!381175 m!6366128))

(declare-fun m!6366130 () Bool)

(assert (=> bm!381176 m!6366130))

(assert (=> start!561982 d!1712264))

(declare-fun d!1712270 () Bool)

(declare-fun lt!2175075 () Int)

(assert (=> d!1712270 (>= lt!2175075 0)))

(declare-fun e!3312135 () Int)

(assert (=> d!1712270 (= lt!2175075 e!3312135)))

(declare-fun c!927550 () Bool)

(assert (=> d!1712270 (= c!927550 ((_ is Cons!61180) lt!2175014))))

(assert (=> d!1712270 (= (zipperDepthTotal!154 lt!2175014) lt!2175075)))

(declare-fun b!5332887 () Bool)

(assert (=> b!5332887 (= e!3312135 (+ (contextDepthTotal!134 (h!67628 lt!2175014)) (zipperDepthTotal!154 (t!374521 lt!2175014))))))

(declare-fun b!5332888 () Bool)

(assert (=> b!5332888 (= e!3312135 0)))

(assert (= (and d!1712270 c!927550) b!5332887))

(assert (= (and d!1712270 (not c!927550)) b!5332888))

(declare-fun m!6366132 () Bool)

(assert (=> b!5332887 m!6366132))

(declare-fun m!6366134 () Bool)

(assert (=> b!5332887 m!6366134))

(assert (=> b!5332540 d!1712270))

(declare-fun d!1712272 () Bool)

(declare-fun lt!2175076 () Int)

(assert (=> d!1712272 (>= lt!2175076 0)))

(declare-fun e!3312140 () Int)

(assert (=> d!1712272 (= lt!2175076 e!3312140)))

(declare-fun c!927551 () Bool)

(assert (=> d!1712272 (= c!927551 ((_ is Cons!61180) zl!343))))

(assert (=> d!1712272 (= (zipperDepthTotal!154 zl!343) lt!2175076)))

(declare-fun b!5332897 () Bool)

(assert (=> b!5332897 (= e!3312140 (+ (contextDepthTotal!134 (h!67628 zl!343)) (zipperDepthTotal!154 (t!374521 zl!343))))))

(declare-fun b!5332898 () Bool)

(assert (=> b!5332898 (= e!3312140 0)))

(assert (= (and d!1712272 c!927551) b!5332897))

(assert (= (and d!1712272 (not c!927551)) b!5332898))

(assert (=> b!5332897 m!6365878))

(declare-fun m!6366136 () Bool)

(assert (=> b!5332897 m!6366136))

(assert (=> b!5332540 d!1712272))

(declare-fun bs!1236702 () Bool)

(declare-fun d!1712274 () Bool)

(assert (= bs!1236702 (and d!1712274 b!5332514)))

(declare-fun lambda!272670 () Int)

(assert (=> bs!1236702 (= lambda!272670 lambda!272631)))

(assert (=> d!1712274 (= (inv!80749 (h!67628 zl!343)) (forall!14419 (exprs!4885 (h!67628 zl!343)) lambda!272670))))

(declare-fun bs!1236703 () Bool)

(assert (= bs!1236703 d!1712274))

(declare-fun m!6366138 () Bool)

(assert (=> bs!1236703 m!6366138))

(assert (=> b!5332523 d!1712274))

(declare-fun d!1712276 () Bool)

(declare-fun c!927556 () Bool)

(declare-fun isEmpty!33150 (List!61302) Bool)

(assert (=> d!1712276 (= c!927556 (isEmpty!33150 (t!374519 s!2326)))))

(declare-fun e!3312148 () Bool)

(assert (=> d!1712276 (= (matchZipper!1245 lt!2174984 (t!374519 s!2326)) e!3312148)))

(declare-fun b!5332912 () Bool)

(declare-fun nullableZipper!1356 ((InoxSet Context!8770)) Bool)

(assert (=> b!5332912 (= e!3312148 (nullableZipper!1356 lt!2174984))))

(declare-fun b!5332913 () Bool)

(declare-fun head!11430 (List!61302) C!30272)

(declare-fun tail!10527 (List!61302) List!61302)

(assert (=> b!5332913 (= e!3312148 (matchZipper!1245 (derivationStepZipper!1242 lt!2174984 (head!11430 (t!374519 s!2326))) (tail!10527 (t!374519 s!2326))))))

(assert (= (and d!1712276 c!927556) b!5332912))

(assert (= (and d!1712276 (not c!927556)) b!5332913))

(declare-fun m!6366168 () Bool)

(assert (=> d!1712276 m!6366168))

(declare-fun m!6366170 () Bool)

(assert (=> b!5332912 m!6366170))

(declare-fun m!6366172 () Bool)

(assert (=> b!5332913 m!6366172))

(assert (=> b!5332913 m!6366172))

(declare-fun m!6366174 () Bool)

(assert (=> b!5332913 m!6366174))

(declare-fun m!6366176 () Bool)

(assert (=> b!5332913 m!6366176))

(assert (=> b!5332913 m!6366174))

(assert (=> b!5332913 m!6366176))

(declare-fun m!6366178 () Bool)

(assert (=> b!5332913 m!6366178))

(assert (=> b!5332522 d!1712276))

(declare-fun d!1712284 () Bool)

(declare-fun c!927557 () Bool)

(assert (=> d!1712284 (= c!927557 (isEmpty!33150 (t!374519 s!2326)))))

(declare-fun e!3312149 () Bool)

(assert (=> d!1712284 (= (matchZipper!1245 lt!2175005 (t!374519 s!2326)) e!3312149)))

(declare-fun b!5332914 () Bool)

(assert (=> b!5332914 (= e!3312149 (nullableZipper!1356 lt!2175005))))

(declare-fun b!5332915 () Bool)

(assert (=> b!5332915 (= e!3312149 (matchZipper!1245 (derivationStepZipper!1242 lt!2175005 (head!11430 (t!374519 s!2326))) (tail!10527 (t!374519 s!2326))))))

(assert (= (and d!1712284 c!927557) b!5332914))

(assert (= (and d!1712284 (not c!927557)) b!5332915))

(assert (=> d!1712284 m!6366168))

(declare-fun m!6366180 () Bool)

(assert (=> b!5332914 m!6366180))

(assert (=> b!5332915 m!6366172))

(assert (=> b!5332915 m!6366172))

(declare-fun m!6366182 () Bool)

(assert (=> b!5332915 m!6366182))

(assert (=> b!5332915 m!6366176))

(assert (=> b!5332915 m!6366182))

(assert (=> b!5332915 m!6366176))

(declare-fun m!6366184 () Bool)

(assert (=> b!5332915 m!6366184))

(assert (=> b!5332526 d!1712284))

(declare-fun bm!381177 () Bool)

(declare-fun call!381182 () (InoxSet Context!8770))

(assert (=> bm!381177 (= call!381182 (derivationStepZipperDown!449 (h!67627 (exprs!4885 lt!2174991)) (Context!8771 (t!374520 (exprs!4885 lt!2174991))) (h!67626 s!2326)))))

(declare-fun b!5332920 () Bool)

(declare-fun e!3312153 () (InoxSet Context!8770))

(assert (=> b!5332920 (= e!3312153 ((as const (Array Context!8770 Bool)) false))))

(declare-fun e!3312154 () (InoxSet Context!8770))

(declare-fun b!5332921 () Bool)

(assert (=> b!5332921 (= e!3312154 ((_ map or) call!381182 (derivationStepZipperUp!373 (Context!8771 (t!374520 (exprs!4885 lt!2174991))) (h!67626 s!2326))))))

(declare-fun b!5332923 () Bool)

(assert (=> b!5332923 (= e!3312153 call!381182)))

(declare-fun b!5332924 () Bool)

(assert (=> b!5332924 (= e!3312154 e!3312153)))

(declare-fun c!927559 () Bool)

(assert (=> b!5332924 (= c!927559 ((_ is Cons!61179) (exprs!4885 lt!2174991)))))

(declare-fun b!5332922 () Bool)

(declare-fun e!3312152 () Bool)

(assert (=> b!5332922 (= e!3312152 (nullable!5170 (h!67627 (exprs!4885 lt!2174991))))))

(declare-fun d!1712286 () Bool)

(declare-fun c!927558 () Bool)

(assert (=> d!1712286 (= c!927558 e!3312152)))

(declare-fun res!2261980 () Bool)

(assert (=> d!1712286 (=> (not res!2261980) (not e!3312152))))

(assert (=> d!1712286 (= res!2261980 ((_ is Cons!61179) (exprs!4885 lt!2174991)))))

(assert (=> d!1712286 (= (derivationStepZipperUp!373 lt!2174991 (h!67626 s!2326)) e!3312154)))

(assert (= (and d!1712286 res!2261980) b!5332922))

(assert (= (and d!1712286 c!927558) b!5332921))

(assert (= (and d!1712286 (not c!927558)) b!5332924))

(assert (= (and b!5332924 c!927559) b!5332923))

(assert (= (and b!5332924 (not c!927559)) b!5332920))

(assert (= (or b!5332921 b!5332923) bm!381177))

(declare-fun m!6366186 () Bool)

(assert (=> bm!381177 m!6366186))

(declare-fun m!6366188 () Bool)

(assert (=> b!5332921 m!6366188))

(declare-fun m!6366190 () Bool)

(assert (=> b!5332922 m!6366190))

(assert (=> b!5332524 d!1712286))

(declare-fun d!1712288 () Bool)

(declare-fun nullableFct!1508 (Regex!15001) Bool)

(assert (=> d!1712288 (= (nullable!5170 (h!67627 (exprs!4885 (h!67628 zl!343)))) (nullableFct!1508 (h!67627 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun bs!1236706 () Bool)

(assert (= bs!1236706 d!1712288))

(declare-fun m!6366192 () Bool)

(assert (=> bs!1236706 m!6366192))

(assert (=> b!5332524 d!1712288))

(declare-fun b!5332964 () Bool)

(declare-fun e!3312177 () (InoxSet Context!8770))

(declare-fun call!381199 () (InoxSet Context!8770))

(declare-fun call!381197 () (InoxSet Context!8770))

(assert (=> b!5332964 (= e!3312177 ((_ map or) call!381199 call!381197))))

(declare-fun d!1712290 () Bool)

(declare-fun c!927575 () Bool)

(assert (=> d!1712290 (= c!927575 (and ((_ is ElementMatch!15001) (h!67627 (exprs!4885 (h!67628 zl!343)))) (= (c!927421 (h!67627 (exprs!4885 (h!67628 zl!343)))) (h!67626 s!2326))))))

(declare-fun e!3312178 () (InoxSet Context!8770))

(assert (=> d!1712290 (= (derivationStepZipperDown!449 (h!67627 (exprs!4885 (h!67628 zl!343))) lt!2174991 (h!67626 s!2326)) e!3312178)))

(declare-fun b!5332965 () Bool)

(declare-fun c!927572 () Bool)

(declare-fun e!3312181 () Bool)

(assert (=> b!5332965 (= c!927572 e!3312181)))

(declare-fun res!2261996 () Bool)

(assert (=> b!5332965 (=> (not res!2261996) (not e!3312181))))

(assert (=> b!5332965 (= res!2261996 ((_ is Concat!23846) (h!67627 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun e!3312179 () (InoxSet Context!8770))

(assert (=> b!5332965 (= e!3312177 e!3312179)))

(declare-fun b!5332966 () Bool)

(declare-fun e!3312176 () (InoxSet Context!8770))

(declare-fun call!381195 () (InoxSet Context!8770))

(assert (=> b!5332966 (= e!3312176 call!381195)))

(declare-fun b!5332967 () Bool)

(declare-fun call!381198 () (InoxSet Context!8770))

(assert (=> b!5332967 (= e!3312179 ((_ map or) call!381199 call!381198))))

(declare-fun b!5332968 () Bool)

(assert (=> b!5332968 (= e!3312178 (store ((as const (Array Context!8770 Bool)) false) lt!2174991 true))))

(declare-fun bm!381190 () Bool)

(declare-fun c!927574 () Bool)

(declare-fun call!381196 () List!61303)

(declare-fun $colon$colon!1406 (List!61303 Regex!15001) List!61303)

(assert (=> bm!381190 (= call!381196 ($colon$colon!1406 (exprs!4885 lt!2174991) (ite (or c!927572 c!927574) (regTwo!30514 (h!67627 (exprs!4885 (h!67628 zl!343)))) (h!67627 (exprs!4885 (h!67628 zl!343))))))))

(declare-fun bm!381191 () Bool)

(assert (=> bm!381191 (= call!381198 call!381197)))

(declare-fun bm!381192 () Bool)

(declare-fun c!927573 () Bool)

(assert (=> bm!381192 (= call!381199 (derivationStepZipperDown!449 (ite c!927573 (regOne!30515 (h!67627 (exprs!4885 (h!67628 zl!343)))) (regOne!30514 (h!67627 (exprs!4885 (h!67628 zl!343))))) (ite c!927573 lt!2174991 (Context!8771 call!381196)) (h!67626 s!2326)))))

(declare-fun b!5332969 () Bool)

(assert (=> b!5332969 (= e!3312176 ((as const (Array Context!8770 Bool)) false))))

(declare-fun bm!381193 () Bool)

(declare-fun call!381200 () List!61303)

(assert (=> bm!381193 (= call!381200 call!381196)))

(declare-fun bm!381194 () Bool)

(assert (=> bm!381194 (= call!381195 call!381198)))

(declare-fun b!5332970 () Bool)

(declare-fun c!927576 () Bool)

(assert (=> b!5332970 (= c!927576 ((_ is Star!15001) (h!67627 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun e!3312180 () (InoxSet Context!8770))

(assert (=> b!5332970 (= e!3312180 e!3312176)))

(declare-fun b!5332971 () Bool)

(assert (=> b!5332971 (= e!3312181 (nullable!5170 (regOne!30514 (h!67627 (exprs!4885 (h!67628 zl!343))))))))

(declare-fun b!5332972 () Bool)

(assert (=> b!5332972 (= e!3312178 e!3312177)))

(assert (=> b!5332972 (= c!927573 ((_ is Union!15001) (h!67627 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun b!5332973 () Bool)

(assert (=> b!5332973 (= e!3312179 e!3312180)))

(assert (=> b!5332973 (= c!927574 ((_ is Concat!23846) (h!67627 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun b!5332974 () Bool)

(assert (=> b!5332974 (= e!3312180 call!381195)))

(declare-fun bm!381195 () Bool)

(assert (=> bm!381195 (= call!381197 (derivationStepZipperDown!449 (ite c!927573 (regTwo!30515 (h!67627 (exprs!4885 (h!67628 zl!343)))) (ite c!927572 (regTwo!30514 (h!67627 (exprs!4885 (h!67628 zl!343)))) (ite c!927574 (regOne!30514 (h!67627 (exprs!4885 (h!67628 zl!343)))) (reg!15330 (h!67627 (exprs!4885 (h!67628 zl!343))))))) (ite (or c!927573 c!927572) lt!2174991 (Context!8771 call!381200)) (h!67626 s!2326)))))

(assert (= (and d!1712290 c!927575) b!5332968))

(assert (= (and d!1712290 (not c!927575)) b!5332972))

(assert (= (and b!5332972 c!927573) b!5332964))

(assert (= (and b!5332972 (not c!927573)) b!5332965))

(assert (= (and b!5332965 res!2261996) b!5332971))

(assert (= (and b!5332965 c!927572) b!5332967))

(assert (= (and b!5332965 (not c!927572)) b!5332973))

(assert (= (and b!5332973 c!927574) b!5332974))

(assert (= (and b!5332973 (not c!927574)) b!5332970))

(assert (= (and b!5332970 c!927576) b!5332966))

(assert (= (and b!5332970 (not c!927576)) b!5332969))

(assert (= (or b!5332974 b!5332966) bm!381193))

(assert (= (or b!5332974 b!5332966) bm!381194))

(assert (= (or b!5332967 bm!381193) bm!381190))

(assert (= (or b!5332967 bm!381194) bm!381191))

(assert (= (or b!5332964 bm!381191) bm!381195))

(assert (= (or b!5332964 b!5332967) bm!381192))

(declare-fun m!6366228 () Bool)

(assert (=> b!5332971 m!6366228))

(declare-fun m!6366230 () Bool)

(assert (=> bm!381190 m!6366230))

(declare-fun m!6366232 () Bool)

(assert (=> b!5332968 m!6366232))

(declare-fun m!6366234 () Bool)

(assert (=> bm!381192 m!6366234))

(declare-fun m!6366236 () Bool)

(assert (=> bm!381195 m!6366236))

(assert (=> b!5332524 d!1712290))

(declare-fun d!1712304 () Bool)

(assert (=> d!1712304 (= (flatMap!728 z!1189 lambda!272627) (choose!39934 z!1189 lambda!272627))))

(declare-fun bs!1236726 () Bool)

(assert (= bs!1236726 d!1712304))

(declare-fun m!6366238 () Bool)

(assert (=> bs!1236726 m!6366238))

(assert (=> b!5332524 d!1712304))

(declare-fun bm!381196 () Bool)

(declare-fun call!381201 () (InoxSet Context!8770))

(assert (=> bm!381196 (= call!381201 (derivationStepZipperDown!449 (h!67627 (exprs!4885 (h!67628 zl!343))) (Context!8771 (t!374520 (exprs!4885 (h!67628 zl!343)))) (h!67626 s!2326)))))

(declare-fun b!5332985 () Bool)

(declare-fun e!3312189 () (InoxSet Context!8770))

(assert (=> b!5332985 (= e!3312189 ((as const (Array Context!8770 Bool)) false))))

(declare-fun e!3312190 () (InoxSet Context!8770))

(declare-fun b!5332986 () Bool)

(assert (=> b!5332986 (= e!3312190 ((_ map or) call!381201 (derivationStepZipperUp!373 (Context!8771 (t!374520 (exprs!4885 (h!67628 zl!343)))) (h!67626 s!2326))))))

(declare-fun b!5332988 () Bool)

(assert (=> b!5332988 (= e!3312189 call!381201)))

(declare-fun b!5332989 () Bool)

(assert (=> b!5332989 (= e!3312190 e!3312189)))

(declare-fun c!927582 () Bool)

(assert (=> b!5332989 (= c!927582 ((_ is Cons!61179) (exprs!4885 (h!67628 zl!343))))))

(declare-fun b!5332987 () Bool)

(declare-fun e!3312188 () Bool)

(assert (=> b!5332987 (= e!3312188 (nullable!5170 (h!67627 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun d!1712306 () Bool)

(declare-fun c!927581 () Bool)

(assert (=> d!1712306 (= c!927581 e!3312188)))

(declare-fun res!2261999 () Bool)

(assert (=> d!1712306 (=> (not res!2261999) (not e!3312188))))

(assert (=> d!1712306 (= res!2261999 ((_ is Cons!61179) (exprs!4885 (h!67628 zl!343))))))

(assert (=> d!1712306 (= (derivationStepZipperUp!373 (h!67628 zl!343) (h!67626 s!2326)) e!3312190)))

(assert (= (and d!1712306 res!2261999) b!5332987))

(assert (= (and d!1712306 c!927581) b!5332986))

(assert (= (and d!1712306 (not c!927581)) b!5332989))

(assert (= (and b!5332989 c!927582) b!5332988))

(assert (= (and b!5332989 (not c!927582)) b!5332985))

(assert (= (or b!5332986 b!5332988) bm!381196))

(declare-fun m!6366258 () Bool)

(assert (=> bm!381196 m!6366258))

(declare-fun m!6366260 () Bool)

(assert (=> b!5332986 m!6366260))

(assert (=> b!5332987 m!6365896))

(assert (=> b!5332524 d!1712306))

(declare-fun d!1712310 () Bool)

(assert (=> d!1712310 (= (flatMap!728 z!1189 lambda!272627) (dynLambda!24195 lambda!272627 (h!67628 zl!343)))))

(declare-fun lt!2175096 () Unit!153522)

(assert (=> d!1712310 (= lt!2175096 (choose!39935 z!1189 (h!67628 zl!343) lambda!272627))))

(assert (=> d!1712310 (= z!1189 (store ((as const (Array Context!8770 Bool)) false) (h!67628 zl!343) true))))

(assert (=> d!1712310 (= (lemmaFlatMapOnSingletonSet!260 z!1189 (h!67628 zl!343) lambda!272627) lt!2175096)))

(declare-fun b_lambda!205099 () Bool)

(assert (=> (not b_lambda!205099) (not d!1712310)))

(declare-fun bs!1236727 () Bool)

(assert (= bs!1236727 d!1712310))

(assert (=> bs!1236727 m!6365898))

(declare-fun m!6366268 () Bool)

(assert (=> bs!1236727 m!6366268))

(declare-fun m!6366270 () Bool)

(assert (=> bs!1236727 m!6366270))

(declare-fun m!6366274 () Bool)

(assert (=> bs!1236727 m!6366274))

(assert (=> b!5332524 d!1712310))

(declare-fun bm!381197 () Bool)

(declare-fun call!381202 () (InoxSet Context!8770))

(assert (=> bm!381197 (= call!381202 (derivationStepZipperDown!449 (h!67627 (exprs!4885 (Context!8771 (Cons!61179 (h!67627 (exprs!4885 (h!67628 zl!343))) (t!374520 (exprs!4885 (h!67628 zl!343))))))) (Context!8771 (t!374520 (exprs!4885 (Context!8771 (Cons!61179 (h!67627 (exprs!4885 (h!67628 zl!343))) (t!374520 (exprs!4885 (h!67628 zl!343)))))))) (h!67626 s!2326)))))

(declare-fun b!5332999 () Bool)

(declare-fun e!3312197 () (InoxSet Context!8770))

(assert (=> b!5332999 (= e!3312197 ((as const (Array Context!8770 Bool)) false))))

(declare-fun b!5333000 () Bool)

(declare-fun e!3312198 () (InoxSet Context!8770))

(assert (=> b!5333000 (= e!3312198 ((_ map or) call!381202 (derivationStepZipperUp!373 (Context!8771 (t!374520 (exprs!4885 (Context!8771 (Cons!61179 (h!67627 (exprs!4885 (h!67628 zl!343))) (t!374520 (exprs!4885 (h!67628 zl!343)))))))) (h!67626 s!2326))))))

(declare-fun b!5333002 () Bool)

(assert (=> b!5333002 (= e!3312197 call!381202)))

(declare-fun b!5333003 () Bool)

(assert (=> b!5333003 (= e!3312198 e!3312197)))

(declare-fun c!927586 () Bool)

(assert (=> b!5333003 (= c!927586 ((_ is Cons!61179) (exprs!4885 (Context!8771 (Cons!61179 (h!67627 (exprs!4885 (h!67628 zl!343))) (t!374520 (exprs!4885 (h!67628 zl!343))))))))))

(declare-fun b!5333001 () Bool)

(declare-fun e!3312196 () Bool)

(assert (=> b!5333001 (= e!3312196 (nullable!5170 (h!67627 (exprs!4885 (Context!8771 (Cons!61179 (h!67627 (exprs!4885 (h!67628 zl!343))) (t!374520 (exprs!4885 (h!67628 zl!343)))))))))))

(declare-fun d!1712312 () Bool)

(declare-fun c!927585 () Bool)

(assert (=> d!1712312 (= c!927585 e!3312196)))

(declare-fun res!2262005 () Bool)

(assert (=> d!1712312 (=> (not res!2262005) (not e!3312196))))

(assert (=> d!1712312 (= res!2262005 ((_ is Cons!61179) (exprs!4885 (Context!8771 (Cons!61179 (h!67627 (exprs!4885 (h!67628 zl!343))) (t!374520 (exprs!4885 (h!67628 zl!343))))))))))

(assert (=> d!1712312 (= (derivationStepZipperUp!373 (Context!8771 (Cons!61179 (h!67627 (exprs!4885 (h!67628 zl!343))) (t!374520 (exprs!4885 (h!67628 zl!343))))) (h!67626 s!2326)) e!3312198)))

(assert (= (and d!1712312 res!2262005) b!5333001))

(assert (= (and d!1712312 c!927585) b!5333000))

(assert (= (and d!1712312 (not c!927585)) b!5333003))

(assert (= (and b!5333003 c!927586) b!5333002))

(assert (= (and b!5333003 (not c!927586)) b!5332999))

(assert (= (or b!5333000 b!5333002) bm!381197))

(declare-fun m!6366286 () Bool)

(assert (=> bm!381197 m!6366286))

(declare-fun m!6366288 () Bool)

(assert (=> b!5333000 m!6366288))

(declare-fun m!6366290 () Bool)

(assert (=> b!5333001 m!6366290))

(assert (=> b!5332524 d!1712312))

(declare-fun d!1712316 () Bool)

(assert (=> d!1712316 (= (isEmpty!33148 (t!374520 (exprs!4885 (h!67628 zl!343)))) ((_ is Nil!61179) (t!374520 (exprs!4885 (h!67628 zl!343)))))))

(assert (=> b!5332528 d!1712316))

(declare-fun d!1712322 () Bool)

(declare-fun lt!2175102 () Regex!15001)

(assert (=> d!1712322 (validRegex!6737 lt!2175102)))

(assert (=> d!1712322 (= lt!2175102 (generalisedUnion!930 (unfocusZipperList!443 zl!343)))))

(assert (=> d!1712322 (= (unfocusZipper!743 zl!343) lt!2175102)))

(declare-fun bs!1236741 () Bool)

(assert (= bs!1236741 d!1712322))

(declare-fun m!6366330 () Bool)

(assert (=> bs!1236741 m!6366330))

(assert (=> bs!1236741 m!6365884))

(assert (=> bs!1236741 m!6365884))

(assert (=> bs!1236741 m!6365886))

(assert (=> b!5332529 d!1712322))

(declare-fun b!5333078 () Bool)

(assert (=> b!5333078 true))

(declare-fun bs!1236786 () Bool)

(declare-fun b!5333080 () Bool)

(assert (= bs!1236786 (and b!5333080 b!5333078)))

(declare-fun lambda!272695 () Int)

(declare-fun lambda!272696 () Int)

(declare-fun lt!2175118 () Int)

(declare-fun lt!2175117 () Int)

(assert (=> bs!1236786 (= (= lt!2175117 lt!2175118) (= lambda!272696 lambda!272695))))

(assert (=> b!5333080 true))

(declare-fun d!1712328 () Bool)

(declare-fun e!3312244 () Bool)

(assert (=> d!1712328 e!3312244))

(declare-fun res!2262038 () Bool)

(assert (=> d!1712328 (=> (not res!2262038) (not e!3312244))))

(assert (=> d!1712328 (= res!2262038 (>= lt!2175117 0))))

(declare-fun e!3312245 () Int)

(assert (=> d!1712328 (= lt!2175117 e!3312245)))

(declare-fun c!927614 () Bool)

(assert (=> d!1712328 (= c!927614 ((_ is Cons!61180) lt!2175014))))

(assert (=> d!1712328 (= (zipperDepth!110 lt!2175014) lt!2175117)))

(assert (=> b!5333078 (= e!3312245 lt!2175118)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!62 (Context!8770) Int)

(assert (=> b!5333078 (= lt!2175118 (maxBigInt!0 (contextDepth!62 (h!67628 lt!2175014)) (zipperDepth!110 (t!374521 lt!2175014))))))

(declare-fun lambda!272694 () Int)

(declare-fun lt!2175115 () Unit!153522)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!56 (List!61304 Int Int Int) Unit!153522)

(assert (=> b!5333078 (= lt!2175115 (lemmaForallContextDepthBiggerThanTransitive!56 (t!374521 lt!2175014) lt!2175118 (zipperDepth!110 (t!374521 lt!2175014)) lambda!272694))))

(declare-fun forall!14421 (List!61304 Int) Bool)

(assert (=> b!5333078 (forall!14421 (t!374521 lt!2175014) lambda!272695)))

(declare-fun lt!2175116 () Unit!153522)

(assert (=> b!5333078 (= lt!2175116 lt!2175115)))

(declare-fun b!5333079 () Bool)

(assert (=> b!5333079 (= e!3312245 0)))

(assert (=> b!5333080 (= e!3312244 (forall!14421 lt!2175014 lambda!272696))))

(assert (= (and d!1712328 c!927614) b!5333078))

(assert (= (and d!1712328 (not c!927614)) b!5333079))

(assert (= (and d!1712328 res!2262038) b!5333080))

(declare-fun m!6366362 () Bool)

(assert (=> b!5333078 m!6366362))

(declare-fun m!6366364 () Bool)

(assert (=> b!5333078 m!6366364))

(declare-fun m!6366366 () Bool)

(assert (=> b!5333078 m!6366366))

(assert (=> b!5333078 m!6366362))

(assert (=> b!5333078 m!6366364))

(declare-fun m!6366368 () Bool)

(assert (=> b!5333078 m!6366368))

(assert (=> b!5333078 m!6366364))

(declare-fun m!6366370 () Bool)

(assert (=> b!5333078 m!6366370))

(declare-fun m!6366372 () Bool)

(assert (=> b!5333080 m!6366372))

(assert (=> b!5332527 d!1712328))

(declare-fun bs!1236792 () Bool)

(declare-fun b!5333083 () Bool)

(assert (= bs!1236792 (and b!5333083 b!5333078)))

(declare-fun lambda!272697 () Int)

(assert (=> bs!1236792 (= lambda!272697 lambda!272694)))

(declare-fun lt!2175122 () Int)

(declare-fun lambda!272698 () Int)

(assert (=> bs!1236792 (= (= lt!2175122 lt!2175118) (= lambda!272698 lambda!272695))))

(declare-fun bs!1236793 () Bool)

(assert (= bs!1236793 (and b!5333083 b!5333080)))

(assert (=> bs!1236793 (= (= lt!2175122 lt!2175117) (= lambda!272698 lambda!272696))))

(assert (=> b!5333083 true))

(declare-fun bs!1236794 () Bool)

(declare-fun b!5333085 () Bool)

(assert (= bs!1236794 (and b!5333085 b!5333078)))

(declare-fun lt!2175121 () Int)

(declare-fun lambda!272700 () Int)

(assert (=> bs!1236794 (= (= lt!2175121 lt!2175118) (= lambda!272700 lambda!272695))))

(declare-fun bs!1236795 () Bool)

(assert (= bs!1236795 (and b!5333085 b!5333080)))

(assert (=> bs!1236795 (= (= lt!2175121 lt!2175117) (= lambda!272700 lambda!272696))))

(declare-fun bs!1236796 () Bool)

(assert (= bs!1236796 (and b!5333085 b!5333083)))

(assert (=> bs!1236796 (= (= lt!2175121 lt!2175122) (= lambda!272700 lambda!272698))))

(assert (=> b!5333085 true))

(declare-fun d!1712346 () Bool)

(declare-fun e!3312246 () Bool)

(assert (=> d!1712346 e!3312246))

(declare-fun res!2262039 () Bool)

(assert (=> d!1712346 (=> (not res!2262039) (not e!3312246))))

(assert (=> d!1712346 (= res!2262039 (>= lt!2175121 0))))

(declare-fun e!3312247 () Int)

(assert (=> d!1712346 (= lt!2175121 e!3312247)))

(declare-fun c!927615 () Bool)

(assert (=> d!1712346 (= c!927615 ((_ is Cons!61180) zl!343))))

(assert (=> d!1712346 (= (zipperDepth!110 zl!343) lt!2175121)))

(assert (=> b!5333083 (= e!3312247 lt!2175122)))

(assert (=> b!5333083 (= lt!2175122 (maxBigInt!0 (contextDepth!62 (h!67628 zl!343)) (zipperDepth!110 (t!374521 zl!343))))))

(declare-fun lt!2175119 () Unit!153522)

(assert (=> b!5333083 (= lt!2175119 (lemmaForallContextDepthBiggerThanTransitive!56 (t!374521 zl!343) lt!2175122 (zipperDepth!110 (t!374521 zl!343)) lambda!272697))))

(assert (=> b!5333083 (forall!14421 (t!374521 zl!343) lambda!272698)))

(declare-fun lt!2175120 () Unit!153522)

(assert (=> b!5333083 (= lt!2175120 lt!2175119)))

(declare-fun b!5333084 () Bool)

(assert (=> b!5333084 (= e!3312247 0)))

(assert (=> b!5333085 (= e!3312246 (forall!14421 zl!343 lambda!272700))))

(assert (= (and d!1712346 c!927615) b!5333083))

(assert (= (and d!1712346 (not c!927615)) b!5333084))

(assert (= (and d!1712346 res!2262039) b!5333085))

(declare-fun m!6366374 () Bool)

(assert (=> b!5333083 m!6366374))

(declare-fun m!6366376 () Bool)

(assert (=> b!5333083 m!6366376))

(declare-fun m!6366378 () Bool)

(assert (=> b!5333083 m!6366378))

(assert (=> b!5333083 m!6366374))

(assert (=> b!5333083 m!6366376))

(declare-fun m!6366380 () Bool)

(assert (=> b!5333083 m!6366380))

(assert (=> b!5333083 m!6366376))

(declare-fun m!6366382 () Bool)

(assert (=> b!5333083 m!6366382))

(declare-fun m!6366384 () Bool)

(assert (=> b!5333085 m!6366384))

(assert (=> b!5332527 d!1712346))

(declare-fun bs!1236820 () Bool)

(declare-fun d!1712348 () Bool)

(assert (= bs!1236820 (and d!1712348 b!5332514)))

(declare-fun lambda!272705 () Int)

(assert (=> bs!1236820 (= lambda!272705 lambda!272631)))

(declare-fun bs!1236821 () Bool)

(assert (= bs!1236821 (and d!1712348 d!1712274)))

(assert (=> bs!1236821 (= lambda!272705 lambda!272670)))

(declare-fun b!5333116 () Bool)

(declare-fun e!3312268 () Regex!15001)

(assert (=> b!5333116 (= e!3312268 EmptyLang!15001)))

(declare-fun b!5333117 () Bool)

(declare-fun e!3312267 () Regex!15001)

(assert (=> b!5333117 (= e!3312267 (h!67627 (unfocusZipperList!443 zl!343)))))

(declare-fun b!5333118 () Bool)

(declare-fun e!3312269 () Bool)

(declare-fun lt!2175127 () Regex!15001)

(declare-fun isUnion!331 (Regex!15001) Bool)

(assert (=> b!5333118 (= e!3312269 (isUnion!331 lt!2175127))))

(declare-fun b!5333119 () Bool)

(assert (=> b!5333119 (= e!3312267 e!3312268)))

(declare-fun c!927630 () Bool)

(assert (=> b!5333119 (= c!927630 ((_ is Cons!61179) (unfocusZipperList!443 zl!343)))))

(declare-fun b!5333120 () Bool)

(assert (=> b!5333120 (= e!3312268 (Union!15001 (h!67627 (unfocusZipperList!443 zl!343)) (generalisedUnion!930 (t!374520 (unfocusZipperList!443 zl!343)))))))

(declare-fun b!5333121 () Bool)

(declare-fun e!3312271 () Bool)

(assert (=> b!5333121 (= e!3312271 e!3312269)))

(declare-fun c!927631 () Bool)

(declare-fun tail!10528 (List!61303) List!61303)

(assert (=> b!5333121 (= c!927631 (isEmpty!33148 (tail!10528 (unfocusZipperList!443 zl!343))))))

(declare-fun b!5333122 () Bool)

(declare-fun e!3312270 () Bool)

(assert (=> b!5333122 (= e!3312270 e!3312271)))

(declare-fun c!927628 () Bool)

(assert (=> b!5333122 (= c!927628 (isEmpty!33148 (unfocusZipperList!443 zl!343)))))

(assert (=> d!1712348 e!3312270))

(declare-fun res!2262047 () Bool)

(assert (=> d!1712348 (=> (not res!2262047) (not e!3312270))))

(assert (=> d!1712348 (= res!2262047 (validRegex!6737 lt!2175127))))

(assert (=> d!1712348 (= lt!2175127 e!3312267)))

(declare-fun c!927629 () Bool)

(declare-fun e!3312266 () Bool)

(assert (=> d!1712348 (= c!927629 e!3312266)))

(declare-fun res!2262046 () Bool)

(assert (=> d!1712348 (=> (not res!2262046) (not e!3312266))))

(assert (=> d!1712348 (= res!2262046 ((_ is Cons!61179) (unfocusZipperList!443 zl!343)))))

(assert (=> d!1712348 (forall!14419 (unfocusZipperList!443 zl!343) lambda!272705)))

(assert (=> d!1712348 (= (generalisedUnion!930 (unfocusZipperList!443 zl!343)) lt!2175127)))

(declare-fun b!5333123 () Bool)

(declare-fun head!11431 (List!61303) Regex!15001)

(assert (=> b!5333123 (= e!3312269 (= lt!2175127 (head!11431 (unfocusZipperList!443 zl!343))))))

(declare-fun b!5333124 () Bool)

(assert (=> b!5333124 (= e!3312266 (isEmpty!33148 (t!374520 (unfocusZipperList!443 zl!343))))))

(declare-fun b!5333125 () Bool)

(declare-fun isEmptyLang!899 (Regex!15001) Bool)

(assert (=> b!5333125 (= e!3312271 (isEmptyLang!899 lt!2175127))))

(assert (= (and d!1712348 res!2262046) b!5333124))

(assert (= (and d!1712348 c!927629) b!5333117))

(assert (= (and d!1712348 (not c!927629)) b!5333119))

(assert (= (and b!5333119 c!927630) b!5333120))

(assert (= (and b!5333119 (not c!927630)) b!5333116))

(assert (= (and d!1712348 res!2262047) b!5333122))

(assert (= (and b!5333122 c!927628) b!5333125))

(assert (= (and b!5333122 (not c!927628)) b!5333121))

(assert (= (and b!5333121 c!927631) b!5333123))

(assert (= (and b!5333121 (not c!927631)) b!5333118))

(assert (=> b!5333122 m!6365884))

(declare-fun m!6366420 () Bool)

(assert (=> b!5333122 m!6366420))

(declare-fun m!6366422 () Bool)

(assert (=> b!5333125 m!6366422))

(declare-fun m!6366424 () Bool)

(assert (=> b!5333118 m!6366424))

(declare-fun m!6366426 () Bool)

(assert (=> d!1712348 m!6366426))

(assert (=> d!1712348 m!6365884))

(declare-fun m!6366428 () Bool)

(assert (=> d!1712348 m!6366428))

(assert (=> b!5333121 m!6365884))

(declare-fun m!6366430 () Bool)

(assert (=> b!5333121 m!6366430))

(assert (=> b!5333121 m!6366430))

(declare-fun m!6366432 () Bool)

(assert (=> b!5333121 m!6366432))

(declare-fun m!6366434 () Bool)

(assert (=> b!5333124 m!6366434))

(declare-fun m!6366436 () Bool)

(assert (=> b!5333120 m!6366436))

(assert (=> b!5333123 m!6365884))

(declare-fun m!6366438 () Bool)

(assert (=> b!5333123 m!6366438))

(assert (=> b!5332530 d!1712348))

(declare-fun bs!1236822 () Bool)

(declare-fun d!1712360 () Bool)

(assert (= bs!1236822 (and d!1712360 b!5332514)))

(declare-fun lambda!272708 () Int)

(assert (=> bs!1236822 (= lambda!272708 lambda!272631)))

(declare-fun bs!1236823 () Bool)

(assert (= bs!1236823 (and d!1712360 d!1712274)))

(assert (=> bs!1236823 (= lambda!272708 lambda!272670)))

(declare-fun bs!1236824 () Bool)

(assert (= bs!1236824 (and d!1712360 d!1712348)))

(assert (=> bs!1236824 (= lambda!272708 lambda!272705)))

(declare-fun lt!2175130 () List!61303)

(assert (=> d!1712360 (forall!14419 lt!2175130 lambda!272708)))

(declare-fun e!3312295 () List!61303)

(assert (=> d!1712360 (= lt!2175130 e!3312295)))

(declare-fun c!927640 () Bool)

(assert (=> d!1712360 (= c!927640 ((_ is Cons!61180) zl!343))))

(assert (=> d!1712360 (= (unfocusZipperList!443 zl!343) lt!2175130)))

(declare-fun b!5333157 () Bool)

(assert (=> b!5333157 (= e!3312295 (Cons!61179 (generalisedConcat!670 (exprs!4885 (h!67628 zl!343))) (unfocusZipperList!443 (t!374521 zl!343))))))

(declare-fun b!5333158 () Bool)

(assert (=> b!5333158 (= e!3312295 Nil!61179)))

(assert (= (and d!1712360 c!927640) b!5333157))

(assert (= (and d!1712360 (not c!927640)) b!5333158))

(declare-fun m!6366446 () Bool)

(assert (=> d!1712360 m!6366446))

(assert (=> b!5333157 m!6365866))

(declare-fun m!6366448 () Bool)

(assert (=> b!5333157 m!6366448))

(assert (=> b!5332530 d!1712360))

(declare-fun d!1712364 () Bool)

(declare-fun e!3312333 () Bool)

(assert (=> d!1712364 e!3312333))

(declare-fun res!2262077 () Bool)

(assert (=> d!1712364 (=> res!2262077 e!3312333)))

(declare-fun e!3312331 () Bool)

(assert (=> d!1712364 (= res!2262077 e!3312331)))

(declare-fun res!2262075 () Bool)

(assert (=> d!1712364 (=> (not res!2262075) (not e!3312331))))

(declare-fun lt!2175141 () Option!15112)

(assert (=> d!1712364 (= res!2262075 (isDefined!11815 lt!2175141))))

(declare-fun e!3312329 () Option!15112)

(assert (=> d!1712364 (= lt!2175141 e!3312329)))

(declare-fun c!927646 () Bool)

(declare-fun e!3312332 () Bool)

(assert (=> d!1712364 (= c!927646 e!3312332)))

(declare-fun res!2262073 () Bool)

(assert (=> d!1712364 (=> (not res!2262073) (not e!3312332))))

(assert (=> d!1712364 (= res!2262073 (matchR!7186 (regOne!30514 r!7292) Nil!61178))))

(assert (=> d!1712364 (validRegex!6737 (regOne!30514 r!7292))))

(assert (=> d!1712364 (= (findConcatSeparation!1526 (regOne!30514 r!7292) (regTwo!30514 r!7292) Nil!61178 s!2326 s!2326) lt!2175141)))

(declare-fun b!5333231 () Bool)

(declare-fun ++!13336 (List!61302 List!61302) List!61302)

(declare-fun get!21042 (Option!15112) tuple2!64400)

(assert (=> b!5333231 (= e!3312331 (= (++!13336 (_1!35503 (get!21042 lt!2175141)) (_2!35503 (get!21042 lt!2175141))) s!2326))))

(declare-fun b!5333232 () Bool)

(declare-fun lt!2175142 () Unit!153522)

(declare-fun lt!2175140 () Unit!153522)

(assert (=> b!5333232 (= lt!2175142 lt!2175140)))

(assert (=> b!5333232 (= (++!13336 (++!13336 Nil!61178 (Cons!61178 (h!67626 s!2326) Nil!61178)) (t!374519 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1751 (List!61302 C!30272 List!61302 List!61302) Unit!153522)

(assert (=> b!5333232 (= lt!2175140 (lemmaMoveElementToOtherListKeepsConcatEq!1751 Nil!61178 (h!67626 s!2326) (t!374519 s!2326) s!2326))))

(declare-fun e!3312330 () Option!15112)

(assert (=> b!5333232 (= e!3312330 (findConcatSeparation!1526 (regOne!30514 r!7292) (regTwo!30514 r!7292) (++!13336 Nil!61178 (Cons!61178 (h!67626 s!2326) Nil!61178)) (t!374519 s!2326) s!2326))))

(declare-fun b!5333233 () Bool)

(assert (=> b!5333233 (= e!3312329 e!3312330)))

(declare-fun c!927645 () Bool)

(assert (=> b!5333233 (= c!927645 ((_ is Nil!61178) s!2326))))

(declare-fun b!5333234 () Bool)

(assert (=> b!5333234 (= e!3312329 (Some!15111 (tuple2!64401 Nil!61178 s!2326)))))

(declare-fun b!5333235 () Bool)

(declare-fun res!2262074 () Bool)

(assert (=> b!5333235 (=> (not res!2262074) (not e!3312331))))

(assert (=> b!5333235 (= res!2262074 (matchR!7186 (regTwo!30514 r!7292) (_2!35503 (get!21042 lt!2175141))))))

(declare-fun b!5333236 () Bool)

(assert (=> b!5333236 (= e!3312330 None!15111)))

(declare-fun b!5333237 () Bool)

(assert (=> b!5333237 (= e!3312333 (not (isDefined!11815 lt!2175141)))))

(declare-fun b!5333238 () Bool)

(declare-fun res!2262076 () Bool)

(assert (=> b!5333238 (=> (not res!2262076) (not e!3312331))))

(assert (=> b!5333238 (= res!2262076 (matchR!7186 (regOne!30514 r!7292) (_1!35503 (get!21042 lt!2175141))))))

(declare-fun b!5333239 () Bool)

(assert (=> b!5333239 (= e!3312332 (matchR!7186 (regTwo!30514 r!7292) s!2326))))

(assert (= (and d!1712364 res!2262073) b!5333239))

(assert (= (and d!1712364 c!927646) b!5333234))

(assert (= (and d!1712364 (not c!927646)) b!5333233))

(assert (= (and b!5333233 c!927645) b!5333236))

(assert (= (and b!5333233 (not c!927645)) b!5333232))

(assert (= (and d!1712364 res!2262075) b!5333238))

(assert (= (and b!5333238 res!2262076) b!5333235))

(assert (= (and b!5333235 res!2262074) b!5333231))

(assert (= (and d!1712364 (not res!2262077)) b!5333237))

(declare-fun m!6366460 () Bool)

(assert (=> b!5333239 m!6366460))

(declare-fun m!6366462 () Bool)

(assert (=> b!5333238 m!6366462))

(declare-fun m!6366464 () Bool)

(assert (=> b!5333238 m!6366464))

(declare-fun m!6366466 () Bool)

(assert (=> b!5333232 m!6366466))

(assert (=> b!5333232 m!6366466))

(declare-fun m!6366468 () Bool)

(assert (=> b!5333232 m!6366468))

(declare-fun m!6366470 () Bool)

(assert (=> b!5333232 m!6366470))

(assert (=> b!5333232 m!6366466))

(declare-fun m!6366472 () Bool)

(assert (=> b!5333232 m!6366472))

(assert (=> b!5333235 m!6366462))

(declare-fun m!6366474 () Bool)

(assert (=> b!5333235 m!6366474))

(declare-fun m!6366476 () Bool)

(assert (=> b!5333237 m!6366476))

(assert (=> d!1712364 m!6366476))

(declare-fun m!6366478 () Bool)

(assert (=> d!1712364 m!6366478))

(declare-fun m!6366480 () Bool)

(assert (=> d!1712364 m!6366480))

(assert (=> b!5333231 m!6366462))

(declare-fun m!6366482 () Bool)

(assert (=> b!5333231 m!6366482))

(assert (=> b!5332513 d!1712364))

(declare-fun d!1712374 () Bool)

(declare-fun choose!39940 (Int) Bool)

(assert (=> d!1712374 (= (Exists!2182 lambda!272625) (choose!39940 lambda!272625))))

(declare-fun bs!1236838 () Bool)

(assert (= bs!1236838 d!1712374))

(declare-fun m!6366484 () Bool)

(assert (=> bs!1236838 m!6366484))

(assert (=> b!5332513 d!1712374))

(declare-fun d!1712376 () Bool)

(assert (=> d!1712376 (= (Exists!2182 lambda!272626) (choose!39940 lambda!272626))))

(declare-fun bs!1236839 () Bool)

(assert (= bs!1236839 d!1712376))

(declare-fun m!6366486 () Bool)

(assert (=> bs!1236839 m!6366486))

(assert (=> b!5332513 d!1712376))

(declare-fun bs!1236840 () Bool)

(declare-fun d!1712378 () Bool)

(assert (= bs!1236840 (and d!1712378 b!5332513)))

(declare-fun lambda!272712 () Int)

(assert (=> bs!1236840 (= lambda!272712 lambda!272625)))

(assert (=> bs!1236840 (not (= lambda!272712 lambda!272626))))

(declare-fun bs!1236841 () Bool)

(assert (= bs!1236841 (and d!1712378 b!5332514)))

(assert (=> bs!1236841 (not (= lambda!272712 lambda!272629))))

(assert (=> bs!1236841 (= (and (= (regOne!30514 r!7292) (regTwo!30514 (regOne!30514 r!7292))) (= (regTwo!30514 r!7292) lt!2174993)) (= lambda!272712 lambda!272630))))

(assert (=> bs!1236841 (= (and (= (regOne!30514 r!7292) (regOne!30514 (regOne!30514 r!7292))) (= (regTwo!30514 r!7292) lt!2175010)) (= lambda!272712 lambda!272628))))

(assert (=> d!1712378 true))

(assert (=> d!1712378 true))

(assert (=> d!1712378 true))

(assert (=> d!1712378 (= (isDefined!11815 (findConcatSeparation!1526 (regOne!30514 r!7292) (regTwo!30514 r!7292) Nil!61178 s!2326 s!2326)) (Exists!2182 lambda!272712))))

(declare-fun lt!2175145 () Unit!153522)

(declare-fun choose!39942 (Regex!15001 Regex!15001 List!61302) Unit!153522)

(assert (=> d!1712378 (= lt!2175145 (choose!39942 (regOne!30514 r!7292) (regTwo!30514 r!7292) s!2326))))

(assert (=> d!1712378 (validRegex!6737 (regOne!30514 r!7292))))

(assert (=> d!1712378 (= (lemmaFindConcatSeparationEquivalentToExists!1290 (regOne!30514 r!7292) (regTwo!30514 r!7292) s!2326) lt!2175145)))

(declare-fun bs!1236842 () Bool)

(assert (= bs!1236842 d!1712378))

(assert (=> bs!1236842 m!6365784))

(assert (=> bs!1236842 m!6365784))

(assert (=> bs!1236842 m!6365786))

(declare-fun m!6366488 () Bool)

(assert (=> bs!1236842 m!6366488))

(declare-fun m!6366490 () Bool)

(assert (=> bs!1236842 m!6366490))

(assert (=> bs!1236842 m!6366480))

(assert (=> b!5332513 d!1712378))

(declare-fun bs!1236843 () Bool)

(declare-fun d!1712380 () Bool)

(assert (= bs!1236843 (and d!1712380 b!5332513)))

(declare-fun lambda!272717 () Int)

(assert (=> bs!1236843 (= lambda!272717 lambda!272625)))

(declare-fun bs!1236844 () Bool)

(assert (= bs!1236844 (and d!1712380 d!1712378)))

(assert (=> bs!1236844 (= lambda!272717 lambda!272712)))

(assert (=> bs!1236843 (not (= lambda!272717 lambda!272626))))

(declare-fun bs!1236845 () Bool)

(assert (= bs!1236845 (and d!1712380 b!5332514)))

(assert (=> bs!1236845 (not (= lambda!272717 lambda!272629))))

(assert (=> bs!1236845 (= (and (= (regOne!30514 r!7292) (regTwo!30514 (regOne!30514 r!7292))) (= (regTwo!30514 r!7292) lt!2174993)) (= lambda!272717 lambda!272630))))

(assert (=> bs!1236845 (= (and (= (regOne!30514 r!7292) (regOne!30514 (regOne!30514 r!7292))) (= (regTwo!30514 r!7292) lt!2175010)) (= lambda!272717 lambda!272628))))

(assert (=> d!1712380 true))

(assert (=> d!1712380 true))

(assert (=> d!1712380 true))

(declare-fun bs!1236846 () Bool)

(assert (= bs!1236846 d!1712380))

(declare-fun lambda!272718 () Int)

(assert (=> bs!1236846 (not (= lambda!272718 lambda!272717))))

(assert (=> bs!1236843 (not (= lambda!272718 lambda!272625))))

(assert (=> bs!1236844 (not (= lambda!272718 lambda!272712))))

(assert (=> bs!1236843 (= lambda!272718 lambda!272626)))

(assert (=> bs!1236845 (= (and (= (regOne!30514 r!7292) (regOne!30514 (regOne!30514 r!7292))) (= (regTwo!30514 r!7292) lt!2175010)) (= lambda!272718 lambda!272629))))

(assert (=> bs!1236845 (not (= lambda!272718 lambda!272630))))

(assert (=> bs!1236845 (not (= lambda!272718 lambda!272628))))

(assert (=> d!1712380 true))

(assert (=> d!1712380 true))

(assert (=> d!1712380 true))

(assert (=> d!1712380 (= (Exists!2182 lambda!272717) (Exists!2182 lambda!272718))))

(declare-fun lt!2175148 () Unit!153522)

(declare-fun choose!39943 (Regex!15001 Regex!15001 List!61302) Unit!153522)

(assert (=> d!1712380 (= lt!2175148 (choose!39943 (regOne!30514 r!7292) (regTwo!30514 r!7292) s!2326))))

(assert (=> d!1712380 (validRegex!6737 (regOne!30514 r!7292))))

(assert (=> d!1712380 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!836 (regOne!30514 r!7292) (regTwo!30514 r!7292) s!2326) lt!2175148)))

(declare-fun m!6366492 () Bool)

(assert (=> bs!1236846 m!6366492))

(declare-fun m!6366494 () Bool)

(assert (=> bs!1236846 m!6366494))

(declare-fun m!6366496 () Bool)

(assert (=> bs!1236846 m!6366496))

(assert (=> bs!1236846 m!6366480))

(assert (=> b!5332513 d!1712380))

(declare-fun d!1712382 () Bool)

(declare-fun isEmpty!33152 (Option!15112) Bool)

(assert (=> d!1712382 (= (isDefined!11815 (findConcatSeparation!1526 (regOne!30514 r!7292) (regTwo!30514 r!7292) Nil!61178 s!2326 s!2326)) (not (isEmpty!33152 (findConcatSeparation!1526 (regOne!30514 r!7292) (regTwo!30514 r!7292) Nil!61178 s!2326 s!2326))))))

(declare-fun bs!1236847 () Bool)

(assert (= bs!1236847 d!1712382))

(assert (=> bs!1236847 m!6365784))

(declare-fun m!6366498 () Bool)

(assert (=> bs!1236847 m!6366498))

(assert (=> b!5332513 d!1712382))

(declare-fun bs!1236848 () Bool)

(declare-fun b!5333288 () Bool)

(assert (= bs!1236848 (and b!5333288 d!1712380)))

(declare-fun lambda!272723 () Int)

(assert (=> bs!1236848 (not (= lambda!272723 lambda!272717))))

(declare-fun bs!1236849 () Bool)

(assert (= bs!1236849 (and b!5333288 b!5332513)))

(assert (=> bs!1236849 (not (= lambda!272723 lambda!272625))))

(declare-fun bs!1236850 () Bool)

(assert (= bs!1236850 (and b!5333288 d!1712378)))

(assert (=> bs!1236850 (not (= lambda!272723 lambda!272712))))

(assert (=> bs!1236849 (not (= lambda!272723 lambda!272626))))

(assert (=> bs!1236848 (not (= lambda!272723 lambda!272718))))

(declare-fun bs!1236851 () Bool)

(assert (= bs!1236851 (and b!5333288 b!5332514)))

(assert (=> bs!1236851 (not (= lambda!272723 lambda!272629))))

(assert (=> bs!1236851 (not (= lambda!272723 lambda!272630))))

(assert (=> bs!1236851 (not (= lambda!272723 lambda!272628))))

(assert (=> b!5333288 true))

(assert (=> b!5333288 true))

(declare-fun bs!1236852 () Bool)

(declare-fun b!5333293 () Bool)

(assert (= bs!1236852 (and b!5333293 b!5333288)))

(declare-fun lambda!272724 () Int)

(assert (=> bs!1236852 (not (= lambda!272724 lambda!272723))))

(declare-fun bs!1236853 () Bool)

(assert (= bs!1236853 (and b!5333293 d!1712380)))

(assert (=> bs!1236853 (not (= lambda!272724 lambda!272717))))

(declare-fun bs!1236854 () Bool)

(assert (= bs!1236854 (and b!5333293 b!5332513)))

(assert (=> bs!1236854 (not (= lambda!272724 lambda!272625))))

(declare-fun bs!1236855 () Bool)

(assert (= bs!1236855 (and b!5333293 d!1712378)))

(assert (=> bs!1236855 (not (= lambda!272724 lambda!272712))))

(assert (=> bs!1236854 (= (and (= (regOne!30514 lt!2175010) (regOne!30514 r!7292)) (= (regTwo!30514 lt!2175010) (regTwo!30514 r!7292))) (= lambda!272724 lambda!272626))))

(assert (=> bs!1236853 (= (and (= (regOne!30514 lt!2175010) (regOne!30514 r!7292)) (= (regTwo!30514 lt!2175010) (regTwo!30514 r!7292))) (= lambda!272724 lambda!272718))))

(declare-fun bs!1236856 () Bool)

(assert (= bs!1236856 (and b!5333293 b!5332514)))

(assert (=> bs!1236856 (= (and (= (regOne!30514 lt!2175010) (regOne!30514 (regOne!30514 r!7292))) (= (regTwo!30514 lt!2175010) lt!2175010)) (= lambda!272724 lambda!272629))))

(assert (=> bs!1236856 (not (= lambda!272724 lambda!272630))))

(assert (=> bs!1236856 (not (= lambda!272724 lambda!272628))))

(assert (=> b!5333293 true))

(assert (=> b!5333293 true))

(declare-fun b!5333284 () Bool)

(declare-fun c!927656 () Bool)

(assert (=> b!5333284 (= c!927656 ((_ is ElementMatch!15001) lt!2175010))))

(declare-fun e!3312364 () Bool)

(declare-fun e!3312361 () Bool)

(assert (=> b!5333284 (= e!3312364 e!3312361)))

(declare-fun b!5333285 () Bool)

(declare-fun e!3312362 () Bool)

(assert (=> b!5333285 (= e!3312362 e!3312364)))

(declare-fun res!2262108 () Bool)

(assert (=> b!5333285 (= res!2262108 (not ((_ is EmptyLang!15001) lt!2175010)))))

(assert (=> b!5333285 (=> (not res!2262108) (not e!3312364))))

(declare-fun b!5333286 () Bool)

(declare-fun c!927655 () Bool)

(assert (=> b!5333286 (= c!927655 ((_ is Union!15001) lt!2175010))))

(declare-fun e!3312363 () Bool)

(assert (=> b!5333286 (= e!3312361 e!3312363)))

(declare-fun b!5333287 () Bool)

(declare-fun e!3312358 () Bool)

(assert (=> b!5333287 (= e!3312363 e!3312358)))

(declare-fun c!927657 () Bool)

(assert (=> b!5333287 (= c!927657 ((_ is Star!15001) lt!2175010))))

(declare-fun e!3312360 () Bool)

(declare-fun call!381223 () Bool)

(assert (=> b!5333288 (= e!3312360 call!381223)))

(declare-fun b!5333289 () Bool)

(declare-fun e!3312359 () Bool)

(assert (=> b!5333289 (= e!3312363 e!3312359)))

(declare-fun res!2262107 () Bool)

(assert (=> b!5333289 (= res!2262107 (matchRSpec!2104 (regOne!30515 lt!2175010) s!2326))))

(assert (=> b!5333289 (=> res!2262107 e!3312359)))

(declare-fun b!5333290 () Bool)

(assert (=> b!5333290 (= e!3312359 (matchRSpec!2104 (regTwo!30515 lt!2175010) s!2326))))

(declare-fun bm!381217 () Bool)

(declare-fun call!381222 () Bool)

(assert (=> bm!381217 (= call!381222 (isEmpty!33150 s!2326))))

(declare-fun b!5333291 () Bool)

(assert (=> b!5333291 (= e!3312362 call!381222)))

(declare-fun d!1712384 () Bool)

(declare-fun c!927658 () Bool)

(assert (=> d!1712384 (= c!927658 ((_ is EmptyExpr!15001) lt!2175010))))

(assert (=> d!1712384 (= (matchRSpec!2104 lt!2175010 s!2326) e!3312362)))

(declare-fun b!5333292 () Bool)

(declare-fun res!2262106 () Bool)

(assert (=> b!5333292 (=> res!2262106 e!3312360)))

(assert (=> b!5333292 (= res!2262106 call!381222)))

(assert (=> b!5333292 (= e!3312358 e!3312360)))

(assert (=> b!5333293 (= e!3312358 call!381223)))

(declare-fun bm!381218 () Bool)

(assert (=> bm!381218 (= call!381223 (Exists!2182 (ite c!927657 lambda!272723 lambda!272724)))))

(declare-fun b!5333294 () Bool)

(assert (=> b!5333294 (= e!3312361 (= s!2326 (Cons!61178 (c!927421 lt!2175010) Nil!61178)))))

(assert (= (and d!1712384 c!927658) b!5333291))

(assert (= (and d!1712384 (not c!927658)) b!5333285))

(assert (= (and b!5333285 res!2262108) b!5333284))

(assert (= (and b!5333284 c!927656) b!5333294))

(assert (= (and b!5333284 (not c!927656)) b!5333286))

(assert (= (and b!5333286 c!927655) b!5333289))

(assert (= (and b!5333286 (not c!927655)) b!5333287))

(assert (= (and b!5333289 (not res!2262107)) b!5333290))

(assert (= (and b!5333287 c!927657) b!5333292))

(assert (= (and b!5333287 (not c!927657)) b!5333293))

(assert (= (and b!5333292 (not res!2262106)) b!5333288))

(assert (= (or b!5333288 b!5333293) bm!381218))

(assert (= (or b!5333291 b!5333292) bm!381217))

(declare-fun m!6366500 () Bool)

(assert (=> b!5333289 m!6366500))

(declare-fun m!6366502 () Bool)

(assert (=> b!5333290 m!6366502))

(declare-fun m!6366504 () Bool)

(assert (=> bm!381217 m!6366504))

(declare-fun m!6366506 () Bool)

(assert (=> bm!381218 m!6366506))

(assert (=> b!5332514 d!1712384))

(declare-fun bs!1236857 () Bool)

(declare-fun d!1712386 () Bool)

(assert (= bs!1236857 (and d!1712386 b!5333288)))

(declare-fun lambda!272725 () Int)

(assert (=> bs!1236857 (not (= lambda!272725 lambda!272723))))

(declare-fun bs!1236858 () Bool)

(assert (= bs!1236858 (and d!1712386 d!1712380)))

(assert (=> bs!1236858 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2175010 (regTwo!30514 r!7292))) (= lambda!272725 lambda!272717))))

(declare-fun bs!1236859 () Bool)

(assert (= bs!1236859 (and d!1712386 b!5332513)))

(assert (=> bs!1236859 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2175010 (regTwo!30514 r!7292))) (= lambda!272725 lambda!272625))))

(assert (=> bs!1236859 (not (= lambda!272725 lambda!272626))))

(assert (=> bs!1236858 (not (= lambda!272725 lambda!272718))))

(declare-fun bs!1236860 () Bool)

(assert (= bs!1236860 (and d!1712386 b!5332514)))

(assert (=> bs!1236860 (not (= lambda!272725 lambda!272629))))

(declare-fun bs!1236861 () Bool)

(assert (= bs!1236861 (and d!1712386 b!5333293)))

(assert (=> bs!1236861 (not (= lambda!272725 lambda!272724))))

(declare-fun bs!1236862 () Bool)

(assert (= bs!1236862 (and d!1712386 d!1712378)))

(assert (=> bs!1236862 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2175010 (regTwo!30514 r!7292))) (= lambda!272725 lambda!272712))))

(assert (=> bs!1236860 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regTwo!30514 (regOne!30514 r!7292))) (= lt!2175010 lt!2174993)) (= lambda!272725 lambda!272630))))

(assert (=> bs!1236860 (= lambda!272725 lambda!272628)))

(assert (=> d!1712386 true))

(assert (=> d!1712386 true))

(assert (=> d!1712386 true))

(declare-fun lambda!272726 () Int)

(assert (=> bs!1236857 (not (= lambda!272726 lambda!272723))))

(assert (=> bs!1236858 (not (= lambda!272726 lambda!272717))))

(assert (=> bs!1236859 (not (= lambda!272726 lambda!272625))))

(assert (=> bs!1236859 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2175010 (regTwo!30514 r!7292))) (= lambda!272726 lambda!272626))))

(assert (=> bs!1236858 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2175010 (regTwo!30514 r!7292))) (= lambda!272726 lambda!272718))))

(assert (=> bs!1236861 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regOne!30514 lt!2175010)) (= lt!2175010 (regTwo!30514 lt!2175010))) (= lambda!272726 lambda!272724))))

(assert (=> bs!1236862 (not (= lambda!272726 lambda!272712))))

(assert (=> bs!1236860 (not (= lambda!272726 lambda!272630))))

(assert (=> bs!1236860 (not (= lambda!272726 lambda!272628))))

(assert (=> bs!1236860 (= lambda!272726 lambda!272629)))

(declare-fun bs!1236863 () Bool)

(assert (= bs!1236863 d!1712386))

(assert (=> bs!1236863 (not (= lambda!272726 lambda!272725))))

(assert (=> d!1712386 true))

(assert (=> d!1712386 true))

(assert (=> d!1712386 true))

(assert (=> d!1712386 (= (Exists!2182 lambda!272725) (Exists!2182 lambda!272726))))

(declare-fun lt!2175149 () Unit!153522)

(assert (=> d!1712386 (= lt!2175149 (choose!39943 (regOne!30514 (regOne!30514 r!7292)) lt!2175010 s!2326))))

(assert (=> d!1712386 (validRegex!6737 (regOne!30514 (regOne!30514 r!7292)))))

(assert (=> d!1712386 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!836 (regOne!30514 (regOne!30514 r!7292)) lt!2175010 s!2326) lt!2175149)))

(declare-fun m!6366508 () Bool)

(assert (=> bs!1236863 m!6366508))

(declare-fun m!6366510 () Bool)

(assert (=> bs!1236863 m!6366510))

(declare-fun m!6366512 () Bool)

(assert (=> bs!1236863 m!6366512))

(declare-fun m!6366514 () Bool)

(assert (=> bs!1236863 m!6366514))

(assert (=> b!5332514 d!1712386))

(declare-fun bs!1236864 () Bool)

(declare-fun d!1712388 () Bool)

(assert (= bs!1236864 (and d!1712388 b!5332514)))

(declare-fun lambda!272729 () Int)

(assert (=> bs!1236864 (= lambda!272729 lambda!272631)))

(declare-fun bs!1236865 () Bool)

(assert (= bs!1236865 (and d!1712388 d!1712274)))

(assert (=> bs!1236865 (= lambda!272729 lambda!272670)))

(declare-fun bs!1236866 () Bool)

(assert (= bs!1236866 (and d!1712388 d!1712348)))

(assert (=> bs!1236866 (= lambda!272729 lambda!272705)))

(declare-fun bs!1236867 () Bool)

(assert (= bs!1236867 (and d!1712388 d!1712360)))

(assert (=> bs!1236867 (= lambda!272729 lambda!272708)))

(declare-fun b!5333315 () Bool)

(declare-fun e!3312378 () Bool)

(assert (=> b!5333315 (= e!3312378 (isEmpty!33148 (t!374520 (t!374520 (exprs!4885 (h!67628 zl!343))))))))

(declare-fun b!5333316 () Bool)

(declare-fun e!3312379 () Bool)

(declare-fun lt!2175152 () Regex!15001)

(assert (=> b!5333316 (= e!3312379 (= lt!2175152 (head!11431 (t!374520 (exprs!4885 (h!67628 zl!343))))))))

(declare-fun e!3312382 () Bool)

(assert (=> d!1712388 e!3312382))

(declare-fun res!2262113 () Bool)

(assert (=> d!1712388 (=> (not res!2262113) (not e!3312382))))

(assert (=> d!1712388 (= res!2262113 (validRegex!6737 lt!2175152))))

(declare-fun e!3312380 () Regex!15001)

(assert (=> d!1712388 (= lt!2175152 e!3312380)))

(declare-fun c!927668 () Bool)

(assert (=> d!1712388 (= c!927668 e!3312378)))

(declare-fun res!2262114 () Bool)

(assert (=> d!1712388 (=> (not res!2262114) (not e!3312378))))

(assert (=> d!1712388 (= res!2262114 ((_ is Cons!61179) (t!374520 (exprs!4885 (h!67628 zl!343)))))))

(assert (=> d!1712388 (forall!14419 (t!374520 (exprs!4885 (h!67628 zl!343))) lambda!272729)))

(assert (=> d!1712388 (= (generalisedConcat!670 (t!374520 (exprs!4885 (h!67628 zl!343)))) lt!2175152)))

(declare-fun b!5333317 () Bool)

(assert (=> b!5333317 (= e!3312380 (h!67627 (t!374520 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun b!5333318 () Bool)

(declare-fun e!3312377 () Regex!15001)

(assert (=> b!5333318 (= e!3312377 (Concat!23846 (h!67627 (t!374520 (exprs!4885 (h!67628 zl!343)))) (generalisedConcat!670 (t!374520 (t!374520 (exprs!4885 (h!67628 zl!343)))))))))

(declare-fun b!5333319 () Bool)

(assert (=> b!5333319 (= e!3312380 e!3312377)))

(declare-fun c!927669 () Bool)

(assert (=> b!5333319 (= c!927669 ((_ is Cons!61179) (t!374520 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun b!5333320 () Bool)

(assert (=> b!5333320 (= e!3312377 EmptyExpr!15001)))

(declare-fun b!5333321 () Bool)

(declare-fun isConcat!414 (Regex!15001) Bool)

(assert (=> b!5333321 (= e!3312379 (isConcat!414 lt!2175152))))

(declare-fun b!5333322 () Bool)

(declare-fun e!3312381 () Bool)

(declare-fun isEmptyExpr!891 (Regex!15001) Bool)

(assert (=> b!5333322 (= e!3312381 (isEmptyExpr!891 lt!2175152))))

(declare-fun b!5333323 () Bool)

(assert (=> b!5333323 (= e!3312382 e!3312381)))

(declare-fun c!927670 () Bool)

(assert (=> b!5333323 (= c!927670 (isEmpty!33148 (t!374520 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun b!5333324 () Bool)

(assert (=> b!5333324 (= e!3312381 e!3312379)))

(declare-fun c!927667 () Bool)

(assert (=> b!5333324 (= c!927667 (isEmpty!33148 (tail!10528 (t!374520 (exprs!4885 (h!67628 zl!343))))))))

(assert (= (and d!1712388 res!2262114) b!5333315))

(assert (= (and d!1712388 c!927668) b!5333317))

(assert (= (and d!1712388 (not c!927668)) b!5333319))

(assert (= (and b!5333319 c!927669) b!5333318))

(assert (= (and b!5333319 (not c!927669)) b!5333320))

(assert (= (and d!1712388 res!2262113) b!5333323))

(assert (= (and b!5333323 c!927670) b!5333322))

(assert (= (and b!5333323 (not c!927670)) b!5333324))

(assert (= (and b!5333324 c!927667) b!5333316))

(assert (= (and b!5333324 (not c!927667)) b!5333321))

(assert (=> b!5333323 m!6365864))

(declare-fun m!6366516 () Bool)

(assert (=> b!5333324 m!6366516))

(assert (=> b!5333324 m!6366516))

(declare-fun m!6366518 () Bool)

(assert (=> b!5333324 m!6366518))

(declare-fun m!6366520 () Bool)

(assert (=> b!5333316 m!6366520))

(declare-fun m!6366522 () Bool)

(assert (=> d!1712388 m!6366522))

(declare-fun m!6366524 () Bool)

(assert (=> d!1712388 m!6366524))

(declare-fun m!6366526 () Bool)

(assert (=> b!5333318 m!6366526))

(declare-fun m!6366528 () Bool)

(assert (=> b!5333315 m!6366528))

(declare-fun m!6366530 () Bool)

(assert (=> b!5333322 m!6366530))

(declare-fun m!6366532 () Bool)

(assert (=> b!5333321 m!6366532))

(assert (=> b!5332514 d!1712388))

(declare-fun d!1712390 () Bool)

(declare-fun c!927671 () Bool)

(assert (=> d!1712390 (= c!927671 (isEmpty!33150 s!2326))))

(declare-fun e!3312383 () Bool)

(assert (=> d!1712390 (= (matchZipper!1245 lt!2174992 s!2326) e!3312383)))

(declare-fun b!5333325 () Bool)

(assert (=> b!5333325 (= e!3312383 (nullableZipper!1356 lt!2174992))))

(declare-fun b!5333326 () Bool)

(assert (=> b!5333326 (= e!3312383 (matchZipper!1245 (derivationStepZipper!1242 lt!2174992 (head!11430 s!2326)) (tail!10527 s!2326)))))

(assert (= (and d!1712390 c!927671) b!5333325))

(assert (= (and d!1712390 (not c!927671)) b!5333326))

(assert (=> d!1712390 m!6366504))

(declare-fun m!6366534 () Bool)

(assert (=> b!5333325 m!6366534))

(declare-fun m!6366536 () Bool)

(assert (=> b!5333326 m!6366536))

(assert (=> b!5333326 m!6366536))

(declare-fun m!6366538 () Bool)

(assert (=> b!5333326 m!6366538))

(declare-fun m!6366540 () Bool)

(assert (=> b!5333326 m!6366540))

(assert (=> b!5333326 m!6366538))

(assert (=> b!5333326 m!6366540))

(declare-fun m!6366542 () Bool)

(assert (=> b!5333326 m!6366542))

(assert (=> b!5332514 d!1712390))

(declare-fun d!1712392 () Bool)

(declare-fun e!3312388 () Bool)

(assert (=> d!1712392 e!3312388))

(declare-fun res!2262119 () Bool)

(assert (=> d!1712392 (=> res!2262119 e!3312388)))

(declare-fun e!3312386 () Bool)

(assert (=> d!1712392 (= res!2262119 e!3312386)))

(declare-fun res!2262117 () Bool)

(assert (=> d!1712392 (=> (not res!2262117) (not e!3312386))))

(declare-fun lt!2175154 () Option!15112)

(assert (=> d!1712392 (= res!2262117 (isDefined!11815 lt!2175154))))

(declare-fun e!3312384 () Option!15112)

(assert (=> d!1712392 (= lt!2175154 e!3312384)))

(declare-fun c!927673 () Bool)

(declare-fun e!3312387 () Bool)

(assert (=> d!1712392 (= c!927673 e!3312387)))

(declare-fun res!2262115 () Bool)

(assert (=> d!1712392 (=> (not res!2262115) (not e!3312387))))

(assert (=> d!1712392 (= res!2262115 (matchR!7186 (regTwo!30514 (regOne!30514 r!7292)) Nil!61178))))

(assert (=> d!1712392 (validRegex!6737 (regTwo!30514 (regOne!30514 r!7292)))))

(assert (=> d!1712392 (= (findConcatSeparation!1526 (regTwo!30514 (regOne!30514 r!7292)) lt!2174993 Nil!61178 s!2326 s!2326) lt!2175154)))

(declare-fun b!5333327 () Bool)

(assert (=> b!5333327 (= e!3312386 (= (++!13336 (_1!35503 (get!21042 lt!2175154)) (_2!35503 (get!21042 lt!2175154))) s!2326))))

(declare-fun b!5333328 () Bool)

(declare-fun lt!2175155 () Unit!153522)

(declare-fun lt!2175153 () Unit!153522)

(assert (=> b!5333328 (= lt!2175155 lt!2175153)))

(assert (=> b!5333328 (= (++!13336 (++!13336 Nil!61178 (Cons!61178 (h!67626 s!2326) Nil!61178)) (t!374519 s!2326)) s!2326)))

(assert (=> b!5333328 (= lt!2175153 (lemmaMoveElementToOtherListKeepsConcatEq!1751 Nil!61178 (h!67626 s!2326) (t!374519 s!2326) s!2326))))

(declare-fun e!3312385 () Option!15112)

(assert (=> b!5333328 (= e!3312385 (findConcatSeparation!1526 (regTwo!30514 (regOne!30514 r!7292)) lt!2174993 (++!13336 Nil!61178 (Cons!61178 (h!67626 s!2326) Nil!61178)) (t!374519 s!2326) s!2326))))

(declare-fun b!5333329 () Bool)

(assert (=> b!5333329 (= e!3312384 e!3312385)))

(declare-fun c!927672 () Bool)

(assert (=> b!5333329 (= c!927672 ((_ is Nil!61178) s!2326))))

(declare-fun b!5333330 () Bool)

(assert (=> b!5333330 (= e!3312384 (Some!15111 (tuple2!64401 Nil!61178 s!2326)))))

(declare-fun b!5333331 () Bool)

(declare-fun res!2262116 () Bool)

(assert (=> b!5333331 (=> (not res!2262116) (not e!3312386))))

(assert (=> b!5333331 (= res!2262116 (matchR!7186 lt!2174993 (_2!35503 (get!21042 lt!2175154))))))

(declare-fun b!5333332 () Bool)

(assert (=> b!5333332 (= e!3312385 None!15111)))

(declare-fun b!5333333 () Bool)

(assert (=> b!5333333 (= e!3312388 (not (isDefined!11815 lt!2175154)))))

(declare-fun b!5333334 () Bool)

(declare-fun res!2262118 () Bool)

(assert (=> b!5333334 (=> (not res!2262118) (not e!3312386))))

(assert (=> b!5333334 (= res!2262118 (matchR!7186 (regTwo!30514 (regOne!30514 r!7292)) (_1!35503 (get!21042 lt!2175154))))))

(declare-fun b!5333335 () Bool)

(assert (=> b!5333335 (= e!3312387 (matchR!7186 lt!2174993 s!2326))))

(assert (= (and d!1712392 res!2262115) b!5333335))

(assert (= (and d!1712392 c!927673) b!5333330))

(assert (= (and d!1712392 (not c!927673)) b!5333329))

(assert (= (and b!5333329 c!927672) b!5333332))

(assert (= (and b!5333329 (not c!927672)) b!5333328))

(assert (= (and d!1712392 res!2262117) b!5333334))

(assert (= (and b!5333334 res!2262118) b!5333331))

(assert (= (and b!5333331 res!2262116) b!5333327))

(assert (= (and d!1712392 (not res!2262119)) b!5333333))

(declare-fun m!6366544 () Bool)

(assert (=> b!5333335 m!6366544))

(declare-fun m!6366546 () Bool)

(assert (=> b!5333334 m!6366546))

(declare-fun m!6366548 () Bool)

(assert (=> b!5333334 m!6366548))

(assert (=> b!5333328 m!6366466))

(assert (=> b!5333328 m!6366466))

(assert (=> b!5333328 m!6366468))

(assert (=> b!5333328 m!6366470))

(assert (=> b!5333328 m!6366466))

(declare-fun m!6366550 () Bool)

(assert (=> b!5333328 m!6366550))

(assert (=> b!5333331 m!6366546))

(declare-fun m!6366552 () Bool)

(assert (=> b!5333331 m!6366552))

(declare-fun m!6366554 () Bool)

(assert (=> b!5333333 m!6366554))

(assert (=> d!1712392 m!6366554))

(declare-fun m!6366556 () Bool)

(assert (=> d!1712392 m!6366556))

(declare-fun m!6366558 () Bool)

(assert (=> d!1712392 m!6366558))

(assert (=> b!5333327 m!6366546))

(declare-fun m!6366560 () Bool)

(assert (=> b!5333327 m!6366560))

(assert (=> b!5332514 d!1712392))

(declare-fun d!1712394 () Bool)

(assert (=> d!1712394 (= (matchR!7186 lt!2175010 s!2326) (matchRSpec!2104 lt!2175010 s!2326))))

(declare-fun lt!2175158 () Unit!153522)

(declare-fun choose!39944 (Regex!15001 List!61302) Unit!153522)

(assert (=> d!1712394 (= lt!2175158 (choose!39944 lt!2175010 s!2326))))

(assert (=> d!1712394 (validRegex!6737 lt!2175010)))

(assert (=> d!1712394 (= (mainMatchTheorem!2104 lt!2175010 s!2326) lt!2175158)))

(declare-fun bs!1236868 () Bool)

(assert (= bs!1236868 d!1712394))

(assert (=> bs!1236868 m!6365810))

(assert (=> bs!1236868 m!6365836))

(declare-fun m!6366562 () Bool)

(assert (=> bs!1236868 m!6366562))

(declare-fun m!6366564 () Bool)

(assert (=> bs!1236868 m!6366564))

(assert (=> b!5332514 d!1712394))

(declare-fun bs!1236869 () Bool)

(declare-fun d!1712396 () Bool)

(assert (= bs!1236869 (and d!1712396 d!1712360)))

(declare-fun lambda!272730 () Int)

(assert (=> bs!1236869 (= lambda!272730 lambda!272708)))

(declare-fun bs!1236870 () Bool)

(assert (= bs!1236870 (and d!1712396 d!1712388)))

(assert (=> bs!1236870 (= lambda!272730 lambda!272729)))

(declare-fun bs!1236871 () Bool)

(assert (= bs!1236871 (and d!1712396 d!1712274)))

(assert (=> bs!1236871 (= lambda!272730 lambda!272670)))

(declare-fun bs!1236872 () Bool)

(assert (= bs!1236872 (and d!1712396 d!1712348)))

(assert (=> bs!1236872 (= lambda!272730 lambda!272705)))

(declare-fun bs!1236873 () Bool)

(assert (= bs!1236873 (and d!1712396 b!5332514)))

(assert (=> bs!1236873 (= lambda!272730 lambda!272631)))

(declare-fun b!5333336 () Bool)

(declare-fun e!3312390 () Bool)

(assert (=> b!5333336 (= e!3312390 (isEmpty!33148 (t!374520 lt!2174990)))))

(declare-fun b!5333337 () Bool)

(declare-fun e!3312391 () Bool)

(declare-fun lt!2175159 () Regex!15001)

(assert (=> b!5333337 (= e!3312391 (= lt!2175159 (head!11431 lt!2174990)))))

(declare-fun e!3312394 () Bool)

(assert (=> d!1712396 e!3312394))

(declare-fun res!2262120 () Bool)

(assert (=> d!1712396 (=> (not res!2262120) (not e!3312394))))

(assert (=> d!1712396 (= res!2262120 (validRegex!6737 lt!2175159))))

(declare-fun e!3312392 () Regex!15001)

(assert (=> d!1712396 (= lt!2175159 e!3312392)))

(declare-fun c!927675 () Bool)

(assert (=> d!1712396 (= c!927675 e!3312390)))

(declare-fun res!2262121 () Bool)

(assert (=> d!1712396 (=> (not res!2262121) (not e!3312390))))

(assert (=> d!1712396 (= res!2262121 ((_ is Cons!61179) lt!2174990))))

(assert (=> d!1712396 (forall!14419 lt!2174990 lambda!272730)))

(assert (=> d!1712396 (= (generalisedConcat!670 lt!2174990) lt!2175159)))

(declare-fun b!5333338 () Bool)

(assert (=> b!5333338 (= e!3312392 (h!67627 lt!2174990))))

(declare-fun b!5333339 () Bool)

(declare-fun e!3312389 () Regex!15001)

(assert (=> b!5333339 (= e!3312389 (Concat!23846 (h!67627 lt!2174990) (generalisedConcat!670 (t!374520 lt!2174990))))))

(declare-fun b!5333340 () Bool)

(assert (=> b!5333340 (= e!3312392 e!3312389)))

(declare-fun c!927676 () Bool)

(assert (=> b!5333340 (= c!927676 ((_ is Cons!61179) lt!2174990))))

(declare-fun b!5333341 () Bool)

(assert (=> b!5333341 (= e!3312389 EmptyExpr!15001)))

(declare-fun b!5333342 () Bool)

(assert (=> b!5333342 (= e!3312391 (isConcat!414 lt!2175159))))

(declare-fun b!5333343 () Bool)

(declare-fun e!3312393 () Bool)

(assert (=> b!5333343 (= e!3312393 (isEmptyExpr!891 lt!2175159))))

(declare-fun b!5333344 () Bool)

(assert (=> b!5333344 (= e!3312394 e!3312393)))

(declare-fun c!927677 () Bool)

(assert (=> b!5333344 (= c!927677 (isEmpty!33148 lt!2174990))))

(declare-fun b!5333345 () Bool)

(assert (=> b!5333345 (= e!3312393 e!3312391)))

(declare-fun c!927674 () Bool)

(assert (=> b!5333345 (= c!927674 (isEmpty!33148 (tail!10528 lt!2174990)))))

(assert (= (and d!1712396 res!2262121) b!5333336))

(assert (= (and d!1712396 c!927675) b!5333338))

(assert (= (and d!1712396 (not c!927675)) b!5333340))

(assert (= (and b!5333340 c!927676) b!5333339))

(assert (= (and b!5333340 (not c!927676)) b!5333341))

(assert (= (and d!1712396 res!2262120) b!5333344))

(assert (= (and b!5333344 c!927677) b!5333343))

(assert (= (and b!5333344 (not c!927677)) b!5333345))

(assert (= (and b!5333345 c!927674) b!5333337))

(assert (= (and b!5333345 (not c!927674)) b!5333342))

(declare-fun m!6366566 () Bool)

(assert (=> b!5333344 m!6366566))

(declare-fun m!6366568 () Bool)

(assert (=> b!5333345 m!6366568))

(assert (=> b!5333345 m!6366568))

(declare-fun m!6366570 () Bool)

(assert (=> b!5333345 m!6366570))

(declare-fun m!6366572 () Bool)

(assert (=> b!5333337 m!6366572))

(declare-fun m!6366574 () Bool)

(assert (=> d!1712396 m!6366574))

(declare-fun m!6366576 () Bool)

(assert (=> d!1712396 m!6366576))

(declare-fun m!6366578 () Bool)

(assert (=> b!5333339 m!6366578))

(declare-fun m!6366580 () Bool)

(assert (=> b!5333336 m!6366580))

(declare-fun m!6366582 () Bool)

(assert (=> b!5333343 m!6366582))

(declare-fun m!6366584 () Bool)

(assert (=> b!5333342 m!6366584))

(assert (=> b!5332514 d!1712396))

(declare-fun bs!1236874 () Bool)

(declare-fun d!1712398 () Bool)

(assert (= bs!1236874 (and d!1712398 d!1712360)))

(declare-fun lambda!272731 () Int)

(assert (=> bs!1236874 (= lambda!272731 lambda!272708)))

(declare-fun bs!1236875 () Bool)

(assert (= bs!1236875 (and d!1712398 d!1712388)))

(assert (=> bs!1236875 (= lambda!272731 lambda!272729)))

(declare-fun bs!1236876 () Bool)

(assert (= bs!1236876 (and d!1712398 d!1712274)))

(assert (=> bs!1236876 (= lambda!272731 lambda!272670)))

(declare-fun bs!1236877 () Bool)

(assert (= bs!1236877 (and d!1712398 d!1712348)))

(assert (=> bs!1236877 (= lambda!272731 lambda!272705)))

(declare-fun bs!1236878 () Bool)

(assert (= bs!1236878 (and d!1712398 d!1712396)))

(assert (=> bs!1236878 (= lambda!272731 lambda!272730)))

(declare-fun bs!1236879 () Bool)

(assert (= bs!1236879 (and d!1712398 b!5332514)))

(assert (=> bs!1236879 (= lambda!272731 lambda!272631)))

(declare-fun b!5333346 () Bool)

(declare-fun e!3312396 () Bool)

(assert (=> b!5333346 (= e!3312396 (isEmpty!33148 (t!374520 lt!2175004)))))

(declare-fun b!5333347 () Bool)

(declare-fun e!3312397 () Bool)

(declare-fun lt!2175160 () Regex!15001)

(assert (=> b!5333347 (= e!3312397 (= lt!2175160 (head!11431 lt!2175004)))))

(declare-fun e!3312400 () Bool)

(assert (=> d!1712398 e!3312400))

(declare-fun res!2262122 () Bool)

(assert (=> d!1712398 (=> (not res!2262122) (not e!3312400))))

(assert (=> d!1712398 (= res!2262122 (validRegex!6737 lt!2175160))))

(declare-fun e!3312398 () Regex!15001)

(assert (=> d!1712398 (= lt!2175160 e!3312398)))

(declare-fun c!927679 () Bool)

(assert (=> d!1712398 (= c!927679 e!3312396)))

(declare-fun res!2262123 () Bool)

(assert (=> d!1712398 (=> (not res!2262123) (not e!3312396))))

(assert (=> d!1712398 (= res!2262123 ((_ is Cons!61179) lt!2175004))))

(assert (=> d!1712398 (forall!14419 lt!2175004 lambda!272731)))

(assert (=> d!1712398 (= (generalisedConcat!670 lt!2175004) lt!2175160)))

(declare-fun b!5333348 () Bool)

(assert (=> b!5333348 (= e!3312398 (h!67627 lt!2175004))))

(declare-fun b!5333349 () Bool)

(declare-fun e!3312395 () Regex!15001)

(assert (=> b!5333349 (= e!3312395 (Concat!23846 (h!67627 lt!2175004) (generalisedConcat!670 (t!374520 lt!2175004))))))

(declare-fun b!5333350 () Bool)

(assert (=> b!5333350 (= e!3312398 e!3312395)))

(declare-fun c!927680 () Bool)

(assert (=> b!5333350 (= c!927680 ((_ is Cons!61179) lt!2175004))))

(declare-fun b!5333351 () Bool)

(assert (=> b!5333351 (= e!3312395 EmptyExpr!15001)))

(declare-fun b!5333352 () Bool)

(assert (=> b!5333352 (= e!3312397 (isConcat!414 lt!2175160))))

(declare-fun b!5333353 () Bool)

(declare-fun e!3312399 () Bool)

(assert (=> b!5333353 (= e!3312399 (isEmptyExpr!891 lt!2175160))))

(declare-fun b!5333354 () Bool)

(assert (=> b!5333354 (= e!3312400 e!3312399)))

(declare-fun c!927681 () Bool)

(assert (=> b!5333354 (= c!927681 (isEmpty!33148 lt!2175004))))

(declare-fun b!5333355 () Bool)

(assert (=> b!5333355 (= e!3312399 e!3312397)))

(declare-fun c!927678 () Bool)

(assert (=> b!5333355 (= c!927678 (isEmpty!33148 (tail!10528 lt!2175004)))))

(assert (= (and d!1712398 res!2262123) b!5333346))

(assert (= (and d!1712398 c!927679) b!5333348))

(assert (= (and d!1712398 (not c!927679)) b!5333350))

(assert (= (and b!5333350 c!927680) b!5333349))

(assert (= (and b!5333350 (not c!927680)) b!5333351))

(assert (= (and d!1712398 res!2262122) b!5333354))

(assert (= (and b!5333354 c!927681) b!5333353))

(assert (= (and b!5333354 (not c!927681)) b!5333355))

(assert (= (and b!5333355 c!927678) b!5333347))

(assert (= (and b!5333355 (not c!927678)) b!5333352))

(declare-fun m!6366586 () Bool)

(assert (=> b!5333354 m!6366586))

(declare-fun m!6366588 () Bool)

(assert (=> b!5333355 m!6366588))

(assert (=> b!5333355 m!6366588))

(declare-fun m!6366590 () Bool)

(assert (=> b!5333355 m!6366590))

(declare-fun m!6366592 () Bool)

(assert (=> b!5333347 m!6366592))

(declare-fun m!6366594 () Bool)

(assert (=> d!1712398 m!6366594))

(declare-fun m!6366596 () Bool)

(assert (=> d!1712398 m!6366596))

(declare-fun m!6366598 () Bool)

(assert (=> b!5333349 m!6366598))

(declare-fun m!6366600 () Bool)

(assert (=> b!5333346 m!6366600))

(declare-fun m!6366602 () Bool)

(assert (=> b!5333353 m!6366602))

(declare-fun m!6366604 () Bool)

(assert (=> b!5333352 m!6366604))

(assert (=> b!5332514 d!1712398))

(declare-fun d!1712400 () Bool)

(declare-fun e!3312405 () Bool)

(assert (=> d!1712400 e!3312405))

(declare-fun res!2262128 () Bool)

(assert (=> d!1712400 (=> res!2262128 e!3312405)))

(declare-fun e!3312403 () Bool)

(assert (=> d!1712400 (= res!2262128 e!3312403)))

(declare-fun res!2262126 () Bool)

(assert (=> d!1712400 (=> (not res!2262126) (not e!3312403))))

(declare-fun lt!2175162 () Option!15112)

(assert (=> d!1712400 (= res!2262126 (isDefined!11815 lt!2175162))))

(declare-fun e!3312401 () Option!15112)

(assert (=> d!1712400 (= lt!2175162 e!3312401)))

(declare-fun c!927683 () Bool)

(declare-fun e!3312404 () Bool)

(assert (=> d!1712400 (= c!927683 e!3312404)))

(declare-fun res!2262124 () Bool)

(assert (=> d!1712400 (=> (not res!2262124) (not e!3312404))))

(assert (=> d!1712400 (= res!2262124 (matchR!7186 (regOne!30514 (regOne!30514 r!7292)) Nil!61178))))

(assert (=> d!1712400 (validRegex!6737 (regOne!30514 (regOne!30514 r!7292)))))

(assert (=> d!1712400 (= (findConcatSeparation!1526 (regOne!30514 (regOne!30514 r!7292)) lt!2175010 Nil!61178 s!2326 s!2326) lt!2175162)))

(declare-fun b!5333356 () Bool)

(assert (=> b!5333356 (= e!3312403 (= (++!13336 (_1!35503 (get!21042 lt!2175162)) (_2!35503 (get!21042 lt!2175162))) s!2326))))

(declare-fun b!5333357 () Bool)

(declare-fun lt!2175163 () Unit!153522)

(declare-fun lt!2175161 () Unit!153522)

(assert (=> b!5333357 (= lt!2175163 lt!2175161)))

(assert (=> b!5333357 (= (++!13336 (++!13336 Nil!61178 (Cons!61178 (h!67626 s!2326) Nil!61178)) (t!374519 s!2326)) s!2326)))

(assert (=> b!5333357 (= lt!2175161 (lemmaMoveElementToOtherListKeepsConcatEq!1751 Nil!61178 (h!67626 s!2326) (t!374519 s!2326) s!2326))))

(declare-fun e!3312402 () Option!15112)

(assert (=> b!5333357 (= e!3312402 (findConcatSeparation!1526 (regOne!30514 (regOne!30514 r!7292)) lt!2175010 (++!13336 Nil!61178 (Cons!61178 (h!67626 s!2326) Nil!61178)) (t!374519 s!2326) s!2326))))

(declare-fun b!5333358 () Bool)

(assert (=> b!5333358 (= e!3312401 e!3312402)))

(declare-fun c!927682 () Bool)

(assert (=> b!5333358 (= c!927682 ((_ is Nil!61178) s!2326))))

(declare-fun b!5333359 () Bool)

(assert (=> b!5333359 (= e!3312401 (Some!15111 (tuple2!64401 Nil!61178 s!2326)))))

(declare-fun b!5333360 () Bool)

(declare-fun res!2262125 () Bool)

(assert (=> b!5333360 (=> (not res!2262125) (not e!3312403))))

(assert (=> b!5333360 (= res!2262125 (matchR!7186 lt!2175010 (_2!35503 (get!21042 lt!2175162))))))

(declare-fun b!5333361 () Bool)

(assert (=> b!5333361 (= e!3312402 None!15111)))

(declare-fun b!5333362 () Bool)

(assert (=> b!5333362 (= e!3312405 (not (isDefined!11815 lt!2175162)))))

(declare-fun b!5333363 () Bool)

(declare-fun res!2262127 () Bool)

(assert (=> b!5333363 (=> (not res!2262127) (not e!3312403))))

(assert (=> b!5333363 (= res!2262127 (matchR!7186 (regOne!30514 (regOne!30514 r!7292)) (_1!35503 (get!21042 lt!2175162))))))

(declare-fun b!5333364 () Bool)

(assert (=> b!5333364 (= e!3312404 (matchR!7186 lt!2175010 s!2326))))

(assert (= (and d!1712400 res!2262124) b!5333364))

(assert (= (and d!1712400 c!927683) b!5333359))

(assert (= (and d!1712400 (not c!927683)) b!5333358))

(assert (= (and b!5333358 c!927682) b!5333361))

(assert (= (and b!5333358 (not c!927682)) b!5333357))

(assert (= (and d!1712400 res!2262126) b!5333363))

(assert (= (and b!5333363 res!2262127) b!5333360))

(assert (= (and b!5333360 res!2262125) b!5333356))

(assert (= (and d!1712400 (not res!2262128)) b!5333362))

(assert (=> b!5333364 m!6365810))

(declare-fun m!6366606 () Bool)

(assert (=> b!5333363 m!6366606))

(declare-fun m!6366608 () Bool)

(assert (=> b!5333363 m!6366608))

(assert (=> b!5333357 m!6366466))

(assert (=> b!5333357 m!6366466))

(assert (=> b!5333357 m!6366468))

(assert (=> b!5333357 m!6366470))

(assert (=> b!5333357 m!6366466))

(declare-fun m!6366610 () Bool)

(assert (=> b!5333357 m!6366610))

(assert (=> b!5333360 m!6366606))

(declare-fun m!6366612 () Bool)

(assert (=> b!5333360 m!6366612))

(declare-fun m!6366614 () Bool)

(assert (=> b!5333362 m!6366614))

(assert (=> d!1712400 m!6366614))

(declare-fun m!6366616 () Bool)

(assert (=> d!1712400 m!6366616))

(assert (=> d!1712400 m!6366514))

(assert (=> b!5333356 m!6366606))

(declare-fun m!6366618 () Bool)

(assert (=> b!5333356 m!6366618))

(assert (=> b!5332514 d!1712400))

(declare-fun d!1712402 () Bool)

(assert (=> d!1712402 (= (matchR!7186 lt!2175013 s!2326) (matchZipper!1245 lt!2174992 s!2326))))

(declare-fun lt!2175166 () Unit!153522)

(declare-fun choose!39945 ((InoxSet Context!8770) List!61304 Regex!15001 List!61302) Unit!153522)

(assert (=> d!1712402 (= lt!2175166 (choose!39945 lt!2174992 lt!2175014 lt!2175013 s!2326))))

(assert (=> d!1712402 (validRegex!6737 lt!2175013)))

(assert (=> d!1712402 (= (theoremZipperRegexEquiv!399 lt!2174992 lt!2175014 lt!2175013 s!2326) lt!2175166)))

(declare-fun bs!1236880 () Bool)

(assert (= bs!1236880 d!1712402))

(assert (=> bs!1236880 m!6365840))

(assert (=> bs!1236880 m!6365812))

(declare-fun m!6366620 () Bool)

(assert (=> bs!1236880 m!6366620))

(declare-fun m!6366622 () Bool)

(assert (=> bs!1236880 m!6366622))

(assert (=> b!5332514 d!1712402))

(declare-fun bs!1236881 () Bool)

(declare-fun d!1712404 () Bool)

(assert (= bs!1236881 (and d!1712404 b!5333288)))

(declare-fun lambda!272732 () Int)

(assert (=> bs!1236881 (not (= lambda!272732 lambda!272723))))

(declare-fun bs!1236882 () Bool)

(assert (= bs!1236882 (and d!1712404 d!1712380)))

(assert (=> bs!1236882 (= (and (= (regTwo!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2174993 (regTwo!30514 r!7292))) (= lambda!272732 lambda!272717))))

(declare-fun bs!1236883 () Bool)

(assert (= bs!1236883 (and d!1712404 b!5332513)))

(assert (=> bs!1236883 (= (and (= (regTwo!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2174993 (regTwo!30514 r!7292))) (= lambda!272732 lambda!272625))))

(assert (=> bs!1236883 (not (= lambda!272732 lambda!272626))))

(assert (=> bs!1236882 (not (= lambda!272732 lambda!272718))))

(declare-fun bs!1236884 () Bool)

(assert (= bs!1236884 (and d!1712404 d!1712386)))

(assert (=> bs!1236884 (not (= lambda!272732 lambda!272726))))

(declare-fun bs!1236885 () Bool)

(assert (= bs!1236885 (and d!1712404 b!5333293)))

(assert (=> bs!1236885 (not (= lambda!272732 lambda!272724))))

(declare-fun bs!1236886 () Bool)

(assert (= bs!1236886 (and d!1712404 d!1712378)))

(assert (=> bs!1236886 (= (and (= (regTwo!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2174993 (regTwo!30514 r!7292))) (= lambda!272732 lambda!272712))))

(declare-fun bs!1236887 () Bool)

(assert (= bs!1236887 (and d!1712404 b!5332514)))

(assert (=> bs!1236887 (= lambda!272732 lambda!272630)))

(assert (=> bs!1236887 (= (and (= (regTwo!30514 (regOne!30514 r!7292)) (regOne!30514 (regOne!30514 r!7292))) (= lt!2174993 lt!2175010)) (= lambda!272732 lambda!272628))))

(assert (=> bs!1236887 (not (= lambda!272732 lambda!272629))))

(assert (=> bs!1236884 (= (and (= (regTwo!30514 (regOne!30514 r!7292)) (regOne!30514 (regOne!30514 r!7292))) (= lt!2174993 lt!2175010)) (= lambda!272732 lambda!272725))))

(assert (=> d!1712404 true))

(assert (=> d!1712404 true))

(assert (=> d!1712404 true))

(assert (=> d!1712404 (= (isDefined!11815 (findConcatSeparation!1526 (regTwo!30514 (regOne!30514 r!7292)) lt!2174993 Nil!61178 s!2326 s!2326)) (Exists!2182 lambda!272732))))

(declare-fun lt!2175167 () Unit!153522)

(assert (=> d!1712404 (= lt!2175167 (choose!39942 (regTwo!30514 (regOne!30514 r!7292)) lt!2174993 s!2326))))

(assert (=> d!1712404 (validRegex!6737 (regTwo!30514 (regOne!30514 r!7292)))))

(assert (=> d!1712404 (= (lemmaFindConcatSeparationEquivalentToExists!1290 (regTwo!30514 (regOne!30514 r!7292)) lt!2174993 s!2326) lt!2175167)))

(declare-fun bs!1236888 () Bool)

(assert (= bs!1236888 d!1712404))

(assert (=> bs!1236888 m!6365822))

(assert (=> bs!1236888 m!6365822))

(assert (=> bs!1236888 m!6365824))

(declare-fun m!6366624 () Bool)

(assert (=> bs!1236888 m!6366624))

(declare-fun m!6366626 () Bool)

(assert (=> bs!1236888 m!6366626))

(assert (=> bs!1236888 m!6366558))

(assert (=> b!5332514 d!1712404))

(declare-fun bs!1236889 () Bool)

(declare-fun b!5333369 () Bool)

(assert (= bs!1236889 (and b!5333369 d!1712404)))

(declare-fun lambda!272733 () Int)

(assert (=> bs!1236889 (not (= lambda!272733 lambda!272732))))

(declare-fun bs!1236890 () Bool)

(assert (= bs!1236890 (and b!5333369 b!5333288)))

(assert (=> bs!1236890 (= (and (= (reg!15330 lt!2175013) (reg!15330 lt!2175010)) (= lt!2175013 lt!2175010)) (= lambda!272733 lambda!272723))))

(declare-fun bs!1236891 () Bool)

(assert (= bs!1236891 (and b!5333369 d!1712380)))

(assert (=> bs!1236891 (not (= lambda!272733 lambda!272717))))

(declare-fun bs!1236892 () Bool)

(assert (= bs!1236892 (and b!5333369 b!5332513)))

(assert (=> bs!1236892 (not (= lambda!272733 lambda!272625))))

(assert (=> bs!1236892 (not (= lambda!272733 lambda!272626))))

(assert (=> bs!1236891 (not (= lambda!272733 lambda!272718))))

(declare-fun bs!1236893 () Bool)

(assert (= bs!1236893 (and b!5333369 d!1712386)))

(assert (=> bs!1236893 (not (= lambda!272733 lambda!272726))))

(declare-fun bs!1236894 () Bool)

(assert (= bs!1236894 (and b!5333369 b!5333293)))

(assert (=> bs!1236894 (not (= lambda!272733 lambda!272724))))

(declare-fun bs!1236895 () Bool)

(assert (= bs!1236895 (and b!5333369 d!1712378)))

(assert (=> bs!1236895 (not (= lambda!272733 lambda!272712))))

(declare-fun bs!1236896 () Bool)

(assert (= bs!1236896 (and b!5333369 b!5332514)))

(assert (=> bs!1236896 (not (= lambda!272733 lambda!272630))))

(assert (=> bs!1236896 (not (= lambda!272733 lambda!272628))))

(assert (=> bs!1236896 (not (= lambda!272733 lambda!272629))))

(assert (=> bs!1236893 (not (= lambda!272733 lambda!272725))))

(assert (=> b!5333369 true))

(assert (=> b!5333369 true))

(declare-fun bs!1236897 () Bool)

(declare-fun b!5333374 () Bool)

(assert (= bs!1236897 (and b!5333374 d!1712404)))

(declare-fun lambda!272734 () Int)

(assert (=> bs!1236897 (not (= lambda!272734 lambda!272732))))

(declare-fun bs!1236898 () Bool)

(assert (= bs!1236898 (and b!5333374 b!5333288)))

(assert (=> bs!1236898 (not (= lambda!272734 lambda!272723))))

(declare-fun bs!1236899 () Bool)

(assert (= bs!1236899 (and b!5333374 d!1712380)))

(assert (=> bs!1236899 (not (= lambda!272734 lambda!272717))))

(declare-fun bs!1236900 () Bool)

(assert (= bs!1236900 (and b!5333374 b!5332513)))

(assert (=> bs!1236900 (not (= lambda!272734 lambda!272625))))

(assert (=> bs!1236900 (= (and (= (regOne!30514 lt!2175013) (regOne!30514 r!7292)) (= (regTwo!30514 lt!2175013) (regTwo!30514 r!7292))) (= lambda!272734 lambda!272626))))

(assert (=> bs!1236899 (= (and (= (regOne!30514 lt!2175013) (regOne!30514 r!7292)) (= (regTwo!30514 lt!2175013) (regTwo!30514 r!7292))) (= lambda!272734 lambda!272718))))

(declare-fun bs!1236901 () Bool)

(assert (= bs!1236901 (and b!5333374 b!5333369)))

(assert (=> bs!1236901 (not (= lambda!272734 lambda!272733))))

(declare-fun bs!1236902 () Bool)

(assert (= bs!1236902 (and b!5333374 d!1712386)))

(assert (=> bs!1236902 (= (and (= (regOne!30514 lt!2175013) (regOne!30514 (regOne!30514 r!7292))) (= (regTwo!30514 lt!2175013) lt!2175010)) (= lambda!272734 lambda!272726))))

(declare-fun bs!1236903 () Bool)

(assert (= bs!1236903 (and b!5333374 b!5333293)))

(assert (=> bs!1236903 (= (and (= (regOne!30514 lt!2175013) (regOne!30514 lt!2175010)) (= (regTwo!30514 lt!2175013) (regTwo!30514 lt!2175010))) (= lambda!272734 lambda!272724))))

(declare-fun bs!1236904 () Bool)

(assert (= bs!1236904 (and b!5333374 d!1712378)))

(assert (=> bs!1236904 (not (= lambda!272734 lambda!272712))))

(declare-fun bs!1236905 () Bool)

(assert (= bs!1236905 (and b!5333374 b!5332514)))

(assert (=> bs!1236905 (not (= lambda!272734 lambda!272630))))

(assert (=> bs!1236905 (not (= lambda!272734 lambda!272628))))

(assert (=> bs!1236905 (= (and (= (regOne!30514 lt!2175013) (regOne!30514 (regOne!30514 r!7292))) (= (regTwo!30514 lt!2175013) lt!2175010)) (= lambda!272734 lambda!272629))))

(assert (=> bs!1236902 (not (= lambda!272734 lambda!272725))))

(assert (=> b!5333374 true))

(assert (=> b!5333374 true))

(declare-fun b!5333365 () Bool)

(declare-fun c!927685 () Bool)

(assert (=> b!5333365 (= c!927685 ((_ is ElementMatch!15001) lt!2175013))))

(declare-fun e!3312412 () Bool)

(declare-fun e!3312409 () Bool)

(assert (=> b!5333365 (= e!3312412 e!3312409)))

(declare-fun b!5333366 () Bool)

(declare-fun e!3312410 () Bool)

(assert (=> b!5333366 (= e!3312410 e!3312412)))

(declare-fun res!2262131 () Bool)

(assert (=> b!5333366 (= res!2262131 (not ((_ is EmptyLang!15001) lt!2175013)))))

(assert (=> b!5333366 (=> (not res!2262131) (not e!3312412))))

(declare-fun b!5333367 () Bool)

(declare-fun c!927684 () Bool)

(assert (=> b!5333367 (= c!927684 ((_ is Union!15001) lt!2175013))))

(declare-fun e!3312411 () Bool)

(assert (=> b!5333367 (= e!3312409 e!3312411)))

(declare-fun b!5333368 () Bool)

(declare-fun e!3312406 () Bool)

(assert (=> b!5333368 (= e!3312411 e!3312406)))

(declare-fun c!927686 () Bool)

(assert (=> b!5333368 (= c!927686 ((_ is Star!15001) lt!2175013))))

(declare-fun e!3312408 () Bool)

(declare-fun call!381225 () Bool)

(assert (=> b!5333369 (= e!3312408 call!381225)))

(declare-fun b!5333370 () Bool)

(declare-fun e!3312407 () Bool)

(assert (=> b!5333370 (= e!3312411 e!3312407)))

(declare-fun res!2262130 () Bool)

(assert (=> b!5333370 (= res!2262130 (matchRSpec!2104 (regOne!30515 lt!2175013) s!2326))))

(assert (=> b!5333370 (=> res!2262130 e!3312407)))

(declare-fun b!5333371 () Bool)

(assert (=> b!5333371 (= e!3312407 (matchRSpec!2104 (regTwo!30515 lt!2175013) s!2326))))

(declare-fun bm!381219 () Bool)

(declare-fun call!381224 () Bool)

(assert (=> bm!381219 (= call!381224 (isEmpty!33150 s!2326))))

(declare-fun b!5333372 () Bool)

(assert (=> b!5333372 (= e!3312410 call!381224)))

(declare-fun d!1712406 () Bool)

(declare-fun c!927687 () Bool)

(assert (=> d!1712406 (= c!927687 ((_ is EmptyExpr!15001) lt!2175013))))

(assert (=> d!1712406 (= (matchRSpec!2104 lt!2175013 s!2326) e!3312410)))

(declare-fun b!5333373 () Bool)

(declare-fun res!2262129 () Bool)

(assert (=> b!5333373 (=> res!2262129 e!3312408)))

(assert (=> b!5333373 (= res!2262129 call!381224)))

(assert (=> b!5333373 (= e!3312406 e!3312408)))

(assert (=> b!5333374 (= e!3312406 call!381225)))

(declare-fun bm!381220 () Bool)

(assert (=> bm!381220 (= call!381225 (Exists!2182 (ite c!927686 lambda!272733 lambda!272734)))))

(declare-fun b!5333375 () Bool)

(assert (=> b!5333375 (= e!3312409 (= s!2326 (Cons!61178 (c!927421 lt!2175013) Nil!61178)))))

(assert (= (and d!1712406 c!927687) b!5333372))

(assert (= (and d!1712406 (not c!927687)) b!5333366))

(assert (= (and b!5333366 res!2262131) b!5333365))

(assert (= (and b!5333365 c!927685) b!5333375))

(assert (= (and b!5333365 (not c!927685)) b!5333367))

(assert (= (and b!5333367 c!927684) b!5333370))

(assert (= (and b!5333367 (not c!927684)) b!5333368))

(assert (= (and b!5333370 (not res!2262130)) b!5333371))

(assert (= (and b!5333368 c!927686) b!5333373))

(assert (= (and b!5333368 (not c!927686)) b!5333374))

(assert (= (and b!5333373 (not res!2262129)) b!5333369))

(assert (= (or b!5333369 b!5333374) bm!381220))

(assert (= (or b!5333372 b!5333373) bm!381219))

(declare-fun m!6366628 () Bool)

(assert (=> b!5333370 m!6366628))

(declare-fun m!6366630 () Bool)

(assert (=> b!5333371 m!6366630))

(assert (=> bm!381219 m!6366504))

(declare-fun m!6366632 () Bool)

(assert (=> bm!381220 m!6366632))

(assert (=> b!5332514 d!1712406))

(declare-fun d!1712408 () Bool)

(declare-fun e!3312429 () Bool)

(assert (=> d!1712408 e!3312429))

(declare-fun c!927694 () Bool)

(assert (=> d!1712408 (= c!927694 ((_ is EmptyExpr!15001) lt!2175013))))

(declare-fun lt!2175170 () Bool)

(declare-fun e!3312430 () Bool)

(assert (=> d!1712408 (= lt!2175170 e!3312430)))

(declare-fun c!927695 () Bool)

(assert (=> d!1712408 (= c!927695 (isEmpty!33150 s!2326))))

(assert (=> d!1712408 (validRegex!6737 lt!2175013)))

(assert (=> d!1712408 (= (matchR!7186 lt!2175013 s!2326) lt!2175170)))

(declare-fun b!5333404 () Bool)

(assert (=> b!5333404 (= e!3312430 (nullable!5170 lt!2175013))))

(declare-fun b!5333405 () Bool)

(declare-fun res!2262151 () Bool)

(declare-fun e!3312432 () Bool)

(assert (=> b!5333405 (=> (not res!2262151) (not e!3312432))))

(assert (=> b!5333405 (= res!2262151 (isEmpty!33150 (tail!10527 s!2326)))))

(declare-fun bm!381223 () Bool)

(declare-fun call!381228 () Bool)

(assert (=> bm!381223 (= call!381228 (isEmpty!33150 s!2326))))

(declare-fun b!5333406 () Bool)

(declare-fun e!3312431 () Bool)

(assert (=> b!5333406 (= e!3312431 (not (= (head!11430 s!2326) (c!927421 lt!2175013))))))

(declare-fun b!5333407 () Bool)

(declare-fun res!2262153 () Bool)

(assert (=> b!5333407 (=> res!2262153 e!3312431)))

(assert (=> b!5333407 (= res!2262153 (not (isEmpty!33150 (tail!10527 s!2326))))))

(declare-fun b!5333408 () Bool)

(declare-fun res!2262155 () Bool)

(declare-fun e!3312427 () Bool)

(assert (=> b!5333408 (=> res!2262155 e!3312427)))

(assert (=> b!5333408 (= res!2262155 e!3312432)))

(declare-fun res!2262150 () Bool)

(assert (=> b!5333408 (=> (not res!2262150) (not e!3312432))))

(assert (=> b!5333408 (= res!2262150 lt!2175170)))

(declare-fun b!5333409 () Bool)

(declare-fun e!3312428 () Bool)

(assert (=> b!5333409 (= e!3312428 e!3312431)))

(declare-fun res!2262148 () Bool)

(assert (=> b!5333409 (=> res!2262148 e!3312431)))

(assert (=> b!5333409 (= res!2262148 call!381228)))

(declare-fun b!5333410 () Bool)

(declare-fun res!2262154 () Bool)

(assert (=> b!5333410 (=> res!2262154 e!3312427)))

(assert (=> b!5333410 (= res!2262154 (not ((_ is ElementMatch!15001) lt!2175013)))))

(declare-fun e!3312433 () Bool)

(assert (=> b!5333410 (= e!3312433 e!3312427)))

(declare-fun b!5333411 () Bool)

(assert (=> b!5333411 (= e!3312433 (not lt!2175170))))

(declare-fun b!5333412 () Bool)

(declare-fun derivativeStep!4177 (Regex!15001 C!30272) Regex!15001)

(assert (=> b!5333412 (= e!3312430 (matchR!7186 (derivativeStep!4177 lt!2175013 (head!11430 s!2326)) (tail!10527 s!2326)))))

(declare-fun b!5333413 () Bool)

(declare-fun res!2262152 () Bool)

(assert (=> b!5333413 (=> (not res!2262152) (not e!3312432))))

(assert (=> b!5333413 (= res!2262152 (not call!381228))))

(declare-fun b!5333414 () Bool)

(assert (=> b!5333414 (= e!3312427 e!3312428)))

(declare-fun res!2262149 () Bool)

(assert (=> b!5333414 (=> (not res!2262149) (not e!3312428))))

(assert (=> b!5333414 (= res!2262149 (not lt!2175170))))

(declare-fun b!5333415 () Bool)

(assert (=> b!5333415 (= e!3312432 (= (head!11430 s!2326) (c!927421 lt!2175013)))))

(declare-fun b!5333416 () Bool)

(assert (=> b!5333416 (= e!3312429 e!3312433)))

(declare-fun c!927696 () Bool)

(assert (=> b!5333416 (= c!927696 ((_ is EmptyLang!15001) lt!2175013))))

(declare-fun b!5333417 () Bool)

(assert (=> b!5333417 (= e!3312429 (= lt!2175170 call!381228))))

(assert (= (and d!1712408 c!927695) b!5333404))

(assert (= (and d!1712408 (not c!927695)) b!5333412))

(assert (= (and d!1712408 c!927694) b!5333417))

(assert (= (and d!1712408 (not c!927694)) b!5333416))

(assert (= (and b!5333416 c!927696) b!5333411))

(assert (= (and b!5333416 (not c!927696)) b!5333410))

(assert (= (and b!5333410 (not res!2262154)) b!5333408))

(assert (= (and b!5333408 res!2262150) b!5333413))

(assert (= (and b!5333413 res!2262152) b!5333405))

(assert (= (and b!5333405 res!2262151) b!5333415))

(assert (= (and b!5333408 (not res!2262155)) b!5333414))

(assert (= (and b!5333414 res!2262149) b!5333409))

(assert (= (and b!5333409 (not res!2262148)) b!5333407))

(assert (= (and b!5333407 (not res!2262153)) b!5333406))

(assert (= (or b!5333417 b!5333409 b!5333413) bm!381223))

(assert (=> b!5333405 m!6366540))

(assert (=> b!5333405 m!6366540))

(declare-fun m!6366634 () Bool)

(assert (=> b!5333405 m!6366634))

(assert (=> b!5333415 m!6366536))

(assert (=> b!5333407 m!6366540))

(assert (=> b!5333407 m!6366540))

(assert (=> b!5333407 m!6366634))

(assert (=> b!5333406 m!6366536))

(assert (=> bm!381223 m!6366504))

(declare-fun m!6366636 () Bool)

(assert (=> b!5333404 m!6366636))

(assert (=> d!1712408 m!6366504))

(assert (=> d!1712408 m!6366622))

(assert (=> b!5333412 m!6366536))

(assert (=> b!5333412 m!6366536))

(declare-fun m!6366638 () Bool)

(assert (=> b!5333412 m!6366638))

(assert (=> b!5333412 m!6366540))

(assert (=> b!5333412 m!6366638))

(assert (=> b!5333412 m!6366540))

(declare-fun m!6366640 () Bool)

(assert (=> b!5333412 m!6366640))

(assert (=> b!5332514 d!1712408))

(declare-fun d!1712410 () Bool)

(assert (=> d!1712410 (= (Exists!2182 lambda!272630) (choose!39940 lambda!272630))))

(declare-fun bs!1236906 () Bool)

(assert (= bs!1236906 d!1712410))

(declare-fun m!6366642 () Bool)

(assert (=> bs!1236906 m!6366642))

(assert (=> b!5332514 d!1712410))

(declare-fun d!1712412 () Bool)

(assert (=> d!1712412 (= (Exists!2182 lambda!272629) (choose!39940 lambda!272629))))

(declare-fun bs!1236907 () Bool)

(assert (= bs!1236907 d!1712412))

(declare-fun m!6366644 () Bool)

(assert (=> bs!1236907 m!6366644))

(assert (=> b!5332514 d!1712412))

(declare-fun bs!1236908 () Bool)

(declare-fun d!1712414 () Bool)

(assert (= bs!1236908 (and d!1712414 d!1712404)))

(declare-fun lambda!272735 () Int)

(assert (=> bs!1236908 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regTwo!30514 (regOne!30514 r!7292))) (= lt!2175010 lt!2174993)) (= lambda!272735 lambda!272732))))

(declare-fun bs!1236909 () Bool)

(assert (= bs!1236909 (and d!1712414 b!5333288)))

(assert (=> bs!1236909 (not (= lambda!272735 lambda!272723))))

(declare-fun bs!1236910 () Bool)

(assert (= bs!1236910 (and d!1712414 d!1712380)))

(assert (=> bs!1236910 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2175010 (regTwo!30514 r!7292))) (= lambda!272735 lambda!272717))))

(declare-fun bs!1236911 () Bool)

(assert (= bs!1236911 (and d!1712414 b!5333374)))

(assert (=> bs!1236911 (not (= lambda!272735 lambda!272734))))

(declare-fun bs!1236912 () Bool)

(assert (= bs!1236912 (and d!1712414 b!5332513)))

(assert (=> bs!1236912 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2175010 (regTwo!30514 r!7292))) (= lambda!272735 lambda!272625))))

(assert (=> bs!1236912 (not (= lambda!272735 lambda!272626))))

(assert (=> bs!1236910 (not (= lambda!272735 lambda!272718))))

(declare-fun bs!1236913 () Bool)

(assert (= bs!1236913 (and d!1712414 b!5333369)))

(assert (=> bs!1236913 (not (= lambda!272735 lambda!272733))))

(declare-fun bs!1236914 () Bool)

(assert (= bs!1236914 (and d!1712414 d!1712386)))

(assert (=> bs!1236914 (not (= lambda!272735 lambda!272726))))

(declare-fun bs!1236915 () Bool)

(assert (= bs!1236915 (and d!1712414 b!5333293)))

(assert (=> bs!1236915 (not (= lambda!272735 lambda!272724))))

(declare-fun bs!1236916 () Bool)

(assert (= bs!1236916 (and d!1712414 d!1712378)))

(assert (=> bs!1236916 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regOne!30514 r!7292)) (= lt!2175010 (regTwo!30514 r!7292))) (= lambda!272735 lambda!272712))))

(declare-fun bs!1236917 () Bool)

(assert (= bs!1236917 (and d!1712414 b!5332514)))

(assert (=> bs!1236917 (= (and (= (regOne!30514 (regOne!30514 r!7292)) (regTwo!30514 (regOne!30514 r!7292))) (= lt!2175010 lt!2174993)) (= lambda!272735 lambda!272630))))

(assert (=> bs!1236917 (= lambda!272735 lambda!272628)))

(assert (=> bs!1236917 (not (= lambda!272735 lambda!272629))))

(assert (=> bs!1236914 (= lambda!272735 lambda!272725)))

(assert (=> d!1712414 true))

(assert (=> d!1712414 true))

(assert (=> d!1712414 true))

(assert (=> d!1712414 (= (isDefined!11815 (findConcatSeparation!1526 (regOne!30514 (regOne!30514 r!7292)) lt!2175010 Nil!61178 s!2326 s!2326)) (Exists!2182 lambda!272735))))

(declare-fun lt!2175171 () Unit!153522)

(assert (=> d!1712414 (= lt!2175171 (choose!39942 (regOne!30514 (regOne!30514 r!7292)) lt!2175010 s!2326))))

(assert (=> d!1712414 (validRegex!6737 (regOne!30514 (regOne!30514 r!7292)))))

(assert (=> d!1712414 (= (lemmaFindConcatSeparationEquivalentToExists!1290 (regOne!30514 (regOne!30514 r!7292)) lt!2175010 s!2326) lt!2175171)))

(declare-fun bs!1236918 () Bool)

(assert (= bs!1236918 d!1712414))

(assert (=> bs!1236918 m!6365800))

(assert (=> bs!1236918 m!6365800))

(assert (=> bs!1236918 m!6365802))

(declare-fun m!6366646 () Bool)

(assert (=> bs!1236918 m!6366646))

(declare-fun m!6366648 () Bool)

(assert (=> bs!1236918 m!6366648))

(assert (=> bs!1236918 m!6366514))

(assert (=> b!5332514 d!1712414))

(declare-fun d!1712416 () Bool)

(assert (=> d!1712416 (= (isDefined!11815 (findConcatSeparation!1526 (regOne!30514 (regOne!30514 r!7292)) lt!2175010 Nil!61178 s!2326 s!2326)) (not (isEmpty!33152 (findConcatSeparation!1526 (regOne!30514 (regOne!30514 r!7292)) lt!2175010 Nil!61178 s!2326 s!2326))))))

(declare-fun bs!1236919 () Bool)

(assert (= bs!1236919 d!1712416))

(assert (=> bs!1236919 m!6365800))

(declare-fun m!6366650 () Bool)

(assert (=> bs!1236919 m!6366650))

(assert (=> b!5332514 d!1712416))

(declare-fun d!1712418 () Bool)

(declare-fun e!3312436 () Bool)

(assert (=> d!1712418 e!3312436))

(declare-fun c!927697 () Bool)

(assert (=> d!1712418 (= c!927697 ((_ is EmptyExpr!15001) lt!2175010))))

(declare-fun lt!2175172 () Bool)

(declare-fun e!3312437 () Bool)

(assert (=> d!1712418 (= lt!2175172 e!3312437)))

(declare-fun c!927698 () Bool)

(assert (=> d!1712418 (= c!927698 (isEmpty!33150 s!2326))))

(assert (=> d!1712418 (validRegex!6737 lt!2175010)))

(assert (=> d!1712418 (= (matchR!7186 lt!2175010 s!2326) lt!2175172)))

(declare-fun b!5333418 () Bool)

(assert (=> b!5333418 (= e!3312437 (nullable!5170 lt!2175010))))

(declare-fun b!5333419 () Bool)

(declare-fun res!2262159 () Bool)

(declare-fun e!3312439 () Bool)

(assert (=> b!5333419 (=> (not res!2262159) (not e!3312439))))

(assert (=> b!5333419 (= res!2262159 (isEmpty!33150 (tail!10527 s!2326)))))

(declare-fun bm!381224 () Bool)

(declare-fun call!381229 () Bool)

(assert (=> bm!381224 (= call!381229 (isEmpty!33150 s!2326))))

(declare-fun b!5333420 () Bool)

(declare-fun e!3312438 () Bool)

(assert (=> b!5333420 (= e!3312438 (not (= (head!11430 s!2326) (c!927421 lt!2175010))))))

(declare-fun b!5333421 () Bool)

(declare-fun res!2262161 () Bool)

(assert (=> b!5333421 (=> res!2262161 e!3312438)))

(assert (=> b!5333421 (= res!2262161 (not (isEmpty!33150 (tail!10527 s!2326))))))

(declare-fun b!5333422 () Bool)

(declare-fun res!2262163 () Bool)

(declare-fun e!3312434 () Bool)

(assert (=> b!5333422 (=> res!2262163 e!3312434)))

(assert (=> b!5333422 (= res!2262163 e!3312439)))

(declare-fun res!2262158 () Bool)

(assert (=> b!5333422 (=> (not res!2262158) (not e!3312439))))

(assert (=> b!5333422 (= res!2262158 lt!2175172)))

(declare-fun b!5333423 () Bool)

(declare-fun e!3312435 () Bool)

(assert (=> b!5333423 (= e!3312435 e!3312438)))

(declare-fun res!2262156 () Bool)

(assert (=> b!5333423 (=> res!2262156 e!3312438)))

(assert (=> b!5333423 (= res!2262156 call!381229)))

(declare-fun b!5333424 () Bool)

(declare-fun res!2262162 () Bool)

(assert (=> b!5333424 (=> res!2262162 e!3312434)))

(assert (=> b!5333424 (= res!2262162 (not ((_ is ElementMatch!15001) lt!2175010)))))

(declare-fun e!3312440 () Bool)

(assert (=> b!5333424 (= e!3312440 e!3312434)))

(declare-fun b!5333425 () Bool)

(assert (=> b!5333425 (= e!3312440 (not lt!2175172))))

(declare-fun b!5333426 () Bool)

(assert (=> b!5333426 (= e!3312437 (matchR!7186 (derivativeStep!4177 lt!2175010 (head!11430 s!2326)) (tail!10527 s!2326)))))

(declare-fun b!5333427 () Bool)

(declare-fun res!2262160 () Bool)

(assert (=> b!5333427 (=> (not res!2262160) (not e!3312439))))

(assert (=> b!5333427 (= res!2262160 (not call!381229))))

(declare-fun b!5333428 () Bool)

(assert (=> b!5333428 (= e!3312434 e!3312435)))

(declare-fun res!2262157 () Bool)

(assert (=> b!5333428 (=> (not res!2262157) (not e!3312435))))

(assert (=> b!5333428 (= res!2262157 (not lt!2175172))))

(declare-fun b!5333429 () Bool)

(assert (=> b!5333429 (= e!3312439 (= (head!11430 s!2326) (c!927421 lt!2175010)))))

(declare-fun b!5333430 () Bool)

(assert (=> b!5333430 (= e!3312436 e!3312440)))

(declare-fun c!927699 () Bool)

(assert (=> b!5333430 (= c!927699 ((_ is EmptyLang!15001) lt!2175010))))

(declare-fun b!5333431 () Bool)

(assert (=> b!5333431 (= e!3312436 (= lt!2175172 call!381229))))

(assert (= (and d!1712418 c!927698) b!5333418))

(assert (= (and d!1712418 (not c!927698)) b!5333426))

(assert (= (and d!1712418 c!927697) b!5333431))

(assert (= (and d!1712418 (not c!927697)) b!5333430))

(assert (= (and b!5333430 c!927699) b!5333425))

(assert (= (and b!5333430 (not c!927699)) b!5333424))

(assert (= (and b!5333424 (not res!2262162)) b!5333422))

(assert (= (and b!5333422 res!2262158) b!5333427))

(assert (= (and b!5333427 res!2262160) b!5333419))

(assert (= (and b!5333419 res!2262159) b!5333429))

(assert (= (and b!5333422 (not res!2262163)) b!5333428))

(assert (= (and b!5333428 res!2262157) b!5333423))

(assert (= (and b!5333423 (not res!2262156)) b!5333421))

(assert (= (and b!5333421 (not res!2262161)) b!5333420))

(assert (= (or b!5333431 b!5333423 b!5333427) bm!381224))

(assert (=> b!5333419 m!6366540))

(assert (=> b!5333419 m!6366540))

(assert (=> b!5333419 m!6366634))

(assert (=> b!5333429 m!6366536))

(assert (=> b!5333421 m!6366540))

(assert (=> b!5333421 m!6366540))

(assert (=> b!5333421 m!6366634))

(assert (=> b!5333420 m!6366536))

(assert (=> bm!381224 m!6366504))

(declare-fun m!6366652 () Bool)

(assert (=> b!5333418 m!6366652))

(assert (=> d!1712418 m!6366504))

(assert (=> d!1712418 m!6366564))

(assert (=> b!5333426 m!6366536))

(assert (=> b!5333426 m!6366536))

(declare-fun m!6366654 () Bool)

(assert (=> b!5333426 m!6366654))

(assert (=> b!5333426 m!6366540))

(assert (=> b!5333426 m!6366654))

(assert (=> b!5333426 m!6366540))

(declare-fun m!6366656 () Bool)

(assert (=> b!5333426 m!6366656))

(assert (=> b!5332514 d!1712418))

(declare-fun d!1712420 () Bool)

(assert (=> d!1712420 (= (Exists!2182 lambda!272628) (choose!39940 lambda!272628))))

(declare-fun bs!1236920 () Bool)

(assert (= bs!1236920 d!1712420))

(declare-fun m!6366658 () Bool)

(assert (=> bs!1236920 m!6366658))

(assert (=> b!5332514 d!1712420))

(declare-fun d!1712422 () Bool)

(assert (=> d!1712422 (= (isDefined!11815 (findConcatSeparation!1526 (regTwo!30514 (regOne!30514 r!7292)) lt!2174993 Nil!61178 s!2326 s!2326)) (not (isEmpty!33152 (findConcatSeparation!1526 (regTwo!30514 (regOne!30514 r!7292)) lt!2174993 Nil!61178 s!2326 s!2326))))))

(declare-fun bs!1236921 () Bool)

(assert (= bs!1236921 d!1712422))

(assert (=> bs!1236921 m!6365822))

(declare-fun m!6366660 () Bool)

(assert (=> bs!1236921 m!6366660))

(assert (=> b!5332514 d!1712422))

(declare-fun d!1712424 () Bool)

(declare-fun res!2262168 () Bool)

(declare-fun e!3312445 () Bool)

(assert (=> d!1712424 (=> res!2262168 e!3312445)))

(assert (=> d!1712424 (= res!2262168 ((_ is Nil!61179) (t!374520 (exprs!4885 (h!67628 zl!343)))))))

(assert (=> d!1712424 (= (forall!14419 (t!374520 (exprs!4885 (h!67628 zl!343))) lambda!272631) e!3312445)))

(declare-fun b!5333436 () Bool)

(declare-fun e!3312446 () Bool)

(assert (=> b!5333436 (= e!3312445 e!3312446)))

(declare-fun res!2262169 () Bool)

(assert (=> b!5333436 (=> (not res!2262169) (not e!3312446))))

(declare-fun dynLambda!24197 (Int Regex!15001) Bool)

(assert (=> b!5333436 (= res!2262169 (dynLambda!24197 lambda!272631 (h!67627 (t!374520 (exprs!4885 (h!67628 zl!343))))))))

(declare-fun b!5333437 () Bool)

(assert (=> b!5333437 (= e!3312446 (forall!14419 (t!374520 (t!374520 (exprs!4885 (h!67628 zl!343)))) lambda!272631))))

(assert (= (and d!1712424 (not res!2262168)) b!5333436))

(assert (= (and b!5333436 res!2262169) b!5333437))

(declare-fun b_lambda!205109 () Bool)

(assert (=> (not b_lambda!205109) (not b!5333436)))

(declare-fun m!6366662 () Bool)

(assert (=> b!5333436 m!6366662))

(declare-fun m!6366664 () Bool)

(assert (=> b!5333437 m!6366664))

(assert (=> b!5332514 d!1712424))

(declare-fun d!1712426 () Bool)

(assert (=> d!1712426 (= (matchR!7186 lt!2175013 s!2326) (matchRSpec!2104 lt!2175013 s!2326))))

(declare-fun lt!2175173 () Unit!153522)

(assert (=> d!1712426 (= lt!2175173 (choose!39944 lt!2175013 s!2326))))

(assert (=> d!1712426 (validRegex!6737 lt!2175013)))

(assert (=> d!1712426 (= (mainMatchTheorem!2104 lt!2175013 s!2326) lt!2175173)))

(declare-fun bs!1236922 () Bool)

(assert (= bs!1236922 d!1712426))

(assert (=> bs!1236922 m!6365840))

(assert (=> bs!1236922 m!6365838))

(declare-fun m!6366666 () Bool)

(assert (=> bs!1236922 m!6366666))

(assert (=> bs!1236922 m!6366622))

(assert (=> b!5332514 d!1712426))

(declare-fun bs!1236923 () Bool)

(declare-fun b!5333442 () Bool)

(assert (= bs!1236923 (and b!5333442 d!1712404)))

(declare-fun lambda!272736 () Int)

(assert (=> bs!1236923 (not (= lambda!272736 lambda!272732))))

(declare-fun bs!1236924 () Bool)

(assert (= bs!1236924 (and b!5333442 b!5333288)))

(assert (=> bs!1236924 (= (and (= (reg!15330 r!7292) (reg!15330 lt!2175010)) (= r!7292 lt!2175010)) (= lambda!272736 lambda!272723))))

(declare-fun bs!1236925 () Bool)

(assert (= bs!1236925 (and b!5333442 d!1712380)))

(assert (=> bs!1236925 (not (= lambda!272736 lambda!272717))))

(declare-fun bs!1236926 () Bool)

(assert (= bs!1236926 (and b!5333442 b!5333374)))

(assert (=> bs!1236926 (not (= lambda!272736 lambda!272734))))

(declare-fun bs!1236927 () Bool)

(assert (= bs!1236927 (and b!5333442 b!5332513)))

(assert (=> bs!1236927 (not (= lambda!272736 lambda!272625))))

(assert (=> bs!1236927 (not (= lambda!272736 lambda!272626))))

(assert (=> bs!1236925 (not (= lambda!272736 lambda!272718))))

(declare-fun bs!1236928 () Bool)

(assert (= bs!1236928 (and b!5333442 b!5333369)))

(assert (=> bs!1236928 (= (and (= (reg!15330 r!7292) (reg!15330 lt!2175013)) (= r!7292 lt!2175013)) (= lambda!272736 lambda!272733))))

(declare-fun bs!1236929 () Bool)

(assert (= bs!1236929 (and b!5333442 d!1712386)))

(assert (=> bs!1236929 (not (= lambda!272736 lambda!272726))))

(declare-fun bs!1236930 () Bool)

(assert (= bs!1236930 (and b!5333442 b!5333293)))

(assert (=> bs!1236930 (not (= lambda!272736 lambda!272724))))

(declare-fun bs!1236931 () Bool)

(assert (= bs!1236931 (and b!5333442 d!1712378)))

(assert (=> bs!1236931 (not (= lambda!272736 lambda!272712))))

(declare-fun bs!1236932 () Bool)

(assert (= bs!1236932 (and b!5333442 b!5332514)))

(assert (=> bs!1236932 (not (= lambda!272736 lambda!272630))))

(assert (=> bs!1236932 (not (= lambda!272736 lambda!272628))))

(assert (=> bs!1236932 (not (= lambda!272736 lambda!272629))))

(declare-fun bs!1236933 () Bool)

(assert (= bs!1236933 (and b!5333442 d!1712414)))

(assert (=> bs!1236933 (not (= lambda!272736 lambda!272735))))

(assert (=> bs!1236929 (not (= lambda!272736 lambda!272725))))

(assert (=> b!5333442 true))

(assert (=> b!5333442 true))

(declare-fun bs!1236934 () Bool)

(declare-fun b!5333447 () Bool)

(assert (= bs!1236934 (and b!5333447 d!1712404)))

(declare-fun lambda!272737 () Int)

(assert (=> bs!1236934 (not (= lambda!272737 lambda!272732))))

(declare-fun bs!1236935 () Bool)

(assert (= bs!1236935 (and b!5333447 b!5333288)))

(assert (=> bs!1236935 (not (= lambda!272737 lambda!272723))))

(declare-fun bs!1236936 () Bool)

(assert (= bs!1236936 (and b!5333447 d!1712380)))

(assert (=> bs!1236936 (not (= lambda!272737 lambda!272717))))

(declare-fun bs!1236937 () Bool)

(assert (= bs!1236937 (and b!5333447 b!5333374)))

(assert (=> bs!1236937 (= (and (= (regOne!30514 r!7292) (regOne!30514 lt!2175013)) (= (regTwo!30514 r!7292) (regTwo!30514 lt!2175013))) (= lambda!272737 lambda!272734))))

(declare-fun bs!1236938 () Bool)

(assert (= bs!1236938 (and b!5333447 b!5332513)))

(assert (=> bs!1236938 (not (= lambda!272737 lambda!272625))))

(assert (=> bs!1236938 (= lambda!272737 lambda!272626)))

(assert (=> bs!1236936 (= lambda!272737 lambda!272718)))

(declare-fun bs!1236939 () Bool)

(assert (= bs!1236939 (and b!5333447 b!5333369)))

(assert (=> bs!1236939 (not (= lambda!272737 lambda!272733))))

(declare-fun bs!1236940 () Bool)

(assert (= bs!1236940 (and b!5333447 b!5333442)))

(assert (=> bs!1236940 (not (= lambda!272737 lambda!272736))))

(declare-fun bs!1236941 () Bool)

(assert (= bs!1236941 (and b!5333447 d!1712386)))

(assert (=> bs!1236941 (= (and (= (regOne!30514 r!7292) (regOne!30514 (regOne!30514 r!7292))) (= (regTwo!30514 r!7292) lt!2175010)) (= lambda!272737 lambda!272726))))

(declare-fun bs!1236942 () Bool)

(assert (= bs!1236942 (and b!5333447 b!5333293)))

(assert (=> bs!1236942 (= (and (= (regOne!30514 r!7292) (regOne!30514 lt!2175010)) (= (regTwo!30514 r!7292) (regTwo!30514 lt!2175010))) (= lambda!272737 lambda!272724))))

(declare-fun bs!1236943 () Bool)

(assert (= bs!1236943 (and b!5333447 d!1712378)))

(assert (=> bs!1236943 (not (= lambda!272737 lambda!272712))))

(declare-fun bs!1236944 () Bool)

(assert (= bs!1236944 (and b!5333447 b!5332514)))

(assert (=> bs!1236944 (not (= lambda!272737 lambda!272630))))

(assert (=> bs!1236944 (not (= lambda!272737 lambda!272628))))

(assert (=> bs!1236944 (= (and (= (regOne!30514 r!7292) (regOne!30514 (regOne!30514 r!7292))) (= (regTwo!30514 r!7292) lt!2175010)) (= lambda!272737 lambda!272629))))

(declare-fun bs!1236945 () Bool)

(assert (= bs!1236945 (and b!5333447 d!1712414)))

(assert (=> bs!1236945 (not (= lambda!272737 lambda!272735))))

(assert (=> bs!1236941 (not (= lambda!272737 lambda!272725))))

(assert (=> b!5333447 true))

(assert (=> b!5333447 true))

(declare-fun b!5333438 () Bool)

(declare-fun c!927701 () Bool)

(assert (=> b!5333438 (= c!927701 ((_ is ElementMatch!15001) r!7292))))

(declare-fun e!3312453 () Bool)

(declare-fun e!3312450 () Bool)

(assert (=> b!5333438 (= e!3312453 e!3312450)))

(declare-fun b!5333439 () Bool)

(declare-fun e!3312451 () Bool)

(assert (=> b!5333439 (= e!3312451 e!3312453)))

(declare-fun res!2262172 () Bool)

(assert (=> b!5333439 (= res!2262172 (not ((_ is EmptyLang!15001) r!7292)))))

(assert (=> b!5333439 (=> (not res!2262172) (not e!3312453))))

(declare-fun b!5333440 () Bool)

(declare-fun c!927700 () Bool)

(assert (=> b!5333440 (= c!927700 ((_ is Union!15001) r!7292))))

(declare-fun e!3312452 () Bool)

(assert (=> b!5333440 (= e!3312450 e!3312452)))

(declare-fun b!5333441 () Bool)

(declare-fun e!3312447 () Bool)

(assert (=> b!5333441 (= e!3312452 e!3312447)))

(declare-fun c!927702 () Bool)

(assert (=> b!5333441 (= c!927702 ((_ is Star!15001) r!7292))))

(declare-fun e!3312449 () Bool)

(declare-fun call!381231 () Bool)

(assert (=> b!5333442 (= e!3312449 call!381231)))

(declare-fun b!5333443 () Bool)

(declare-fun e!3312448 () Bool)

(assert (=> b!5333443 (= e!3312452 e!3312448)))

(declare-fun res!2262171 () Bool)

(assert (=> b!5333443 (= res!2262171 (matchRSpec!2104 (regOne!30515 r!7292) s!2326))))

(assert (=> b!5333443 (=> res!2262171 e!3312448)))

(declare-fun b!5333444 () Bool)

(assert (=> b!5333444 (= e!3312448 (matchRSpec!2104 (regTwo!30515 r!7292) s!2326))))

(declare-fun bm!381225 () Bool)

(declare-fun call!381230 () Bool)

(assert (=> bm!381225 (= call!381230 (isEmpty!33150 s!2326))))

(declare-fun b!5333445 () Bool)

(assert (=> b!5333445 (= e!3312451 call!381230)))

(declare-fun d!1712428 () Bool)

(declare-fun c!927703 () Bool)

(assert (=> d!1712428 (= c!927703 ((_ is EmptyExpr!15001) r!7292))))

(assert (=> d!1712428 (= (matchRSpec!2104 r!7292 s!2326) e!3312451)))

(declare-fun b!5333446 () Bool)

(declare-fun res!2262170 () Bool)

(assert (=> b!5333446 (=> res!2262170 e!3312449)))

(assert (=> b!5333446 (= res!2262170 call!381230)))

(assert (=> b!5333446 (= e!3312447 e!3312449)))

(assert (=> b!5333447 (= e!3312447 call!381231)))

(declare-fun bm!381226 () Bool)

(assert (=> bm!381226 (= call!381231 (Exists!2182 (ite c!927702 lambda!272736 lambda!272737)))))

(declare-fun b!5333448 () Bool)

(assert (=> b!5333448 (= e!3312450 (= s!2326 (Cons!61178 (c!927421 r!7292) Nil!61178)))))

(assert (= (and d!1712428 c!927703) b!5333445))

(assert (= (and d!1712428 (not c!927703)) b!5333439))

(assert (= (and b!5333439 res!2262172) b!5333438))

(assert (= (and b!5333438 c!927701) b!5333448))

(assert (= (and b!5333438 (not c!927701)) b!5333440))

(assert (= (and b!5333440 c!927700) b!5333443))

(assert (= (and b!5333440 (not c!927700)) b!5333441))

(assert (= (and b!5333443 (not res!2262171)) b!5333444))

(assert (= (and b!5333441 c!927702) b!5333446))

(assert (= (and b!5333441 (not c!927702)) b!5333447))

(assert (= (and b!5333446 (not res!2262170)) b!5333442))

(assert (= (or b!5333442 b!5333447) bm!381226))

(assert (= (or b!5333445 b!5333446) bm!381225))

(declare-fun m!6366668 () Bool)

(assert (=> b!5333443 m!6366668))

(declare-fun m!6366670 () Bool)

(assert (=> b!5333444 m!6366670))

(assert (=> bm!381225 m!6366504))

(declare-fun m!6366672 () Bool)

(assert (=> bm!381226 m!6366672))

(assert (=> b!5332534 d!1712428))

(declare-fun d!1712430 () Bool)

(declare-fun e!3312456 () Bool)

(assert (=> d!1712430 e!3312456))

(declare-fun c!927704 () Bool)

(assert (=> d!1712430 (= c!927704 ((_ is EmptyExpr!15001) r!7292))))

(declare-fun lt!2175174 () Bool)

(declare-fun e!3312457 () Bool)

(assert (=> d!1712430 (= lt!2175174 e!3312457)))

(declare-fun c!927705 () Bool)

(assert (=> d!1712430 (= c!927705 (isEmpty!33150 s!2326))))

(assert (=> d!1712430 (validRegex!6737 r!7292)))

(assert (=> d!1712430 (= (matchR!7186 r!7292 s!2326) lt!2175174)))

(declare-fun b!5333449 () Bool)

(assert (=> b!5333449 (= e!3312457 (nullable!5170 r!7292))))

(declare-fun b!5333450 () Bool)

(declare-fun res!2262176 () Bool)

(declare-fun e!3312459 () Bool)

(assert (=> b!5333450 (=> (not res!2262176) (not e!3312459))))

(assert (=> b!5333450 (= res!2262176 (isEmpty!33150 (tail!10527 s!2326)))))

(declare-fun bm!381227 () Bool)

(declare-fun call!381232 () Bool)

(assert (=> bm!381227 (= call!381232 (isEmpty!33150 s!2326))))

(declare-fun b!5333451 () Bool)

(declare-fun e!3312458 () Bool)

(assert (=> b!5333451 (= e!3312458 (not (= (head!11430 s!2326) (c!927421 r!7292))))))

(declare-fun b!5333452 () Bool)

(declare-fun res!2262178 () Bool)

(assert (=> b!5333452 (=> res!2262178 e!3312458)))

(assert (=> b!5333452 (= res!2262178 (not (isEmpty!33150 (tail!10527 s!2326))))))

(declare-fun b!5333453 () Bool)

(declare-fun res!2262180 () Bool)

(declare-fun e!3312454 () Bool)

(assert (=> b!5333453 (=> res!2262180 e!3312454)))

(assert (=> b!5333453 (= res!2262180 e!3312459)))

(declare-fun res!2262175 () Bool)

(assert (=> b!5333453 (=> (not res!2262175) (not e!3312459))))

(assert (=> b!5333453 (= res!2262175 lt!2175174)))

(declare-fun b!5333454 () Bool)

(declare-fun e!3312455 () Bool)

(assert (=> b!5333454 (= e!3312455 e!3312458)))

(declare-fun res!2262173 () Bool)

(assert (=> b!5333454 (=> res!2262173 e!3312458)))

(assert (=> b!5333454 (= res!2262173 call!381232)))

(declare-fun b!5333455 () Bool)

(declare-fun res!2262179 () Bool)

(assert (=> b!5333455 (=> res!2262179 e!3312454)))

(assert (=> b!5333455 (= res!2262179 (not ((_ is ElementMatch!15001) r!7292)))))

(declare-fun e!3312460 () Bool)

(assert (=> b!5333455 (= e!3312460 e!3312454)))

(declare-fun b!5333456 () Bool)

(assert (=> b!5333456 (= e!3312460 (not lt!2175174))))

(declare-fun b!5333457 () Bool)

(assert (=> b!5333457 (= e!3312457 (matchR!7186 (derivativeStep!4177 r!7292 (head!11430 s!2326)) (tail!10527 s!2326)))))

(declare-fun b!5333458 () Bool)

(declare-fun res!2262177 () Bool)

(assert (=> b!5333458 (=> (not res!2262177) (not e!3312459))))

(assert (=> b!5333458 (= res!2262177 (not call!381232))))

(declare-fun b!5333459 () Bool)

(assert (=> b!5333459 (= e!3312454 e!3312455)))

(declare-fun res!2262174 () Bool)

(assert (=> b!5333459 (=> (not res!2262174) (not e!3312455))))

(assert (=> b!5333459 (= res!2262174 (not lt!2175174))))

(declare-fun b!5333460 () Bool)

(assert (=> b!5333460 (= e!3312459 (= (head!11430 s!2326) (c!927421 r!7292)))))

(declare-fun b!5333461 () Bool)

(assert (=> b!5333461 (= e!3312456 e!3312460)))

(declare-fun c!927706 () Bool)

(assert (=> b!5333461 (= c!927706 ((_ is EmptyLang!15001) r!7292))))

(declare-fun b!5333462 () Bool)

(assert (=> b!5333462 (= e!3312456 (= lt!2175174 call!381232))))

(assert (= (and d!1712430 c!927705) b!5333449))

(assert (= (and d!1712430 (not c!927705)) b!5333457))

(assert (= (and d!1712430 c!927704) b!5333462))

(assert (= (and d!1712430 (not c!927704)) b!5333461))

(assert (= (and b!5333461 c!927706) b!5333456))

(assert (= (and b!5333461 (not c!927706)) b!5333455))

(assert (= (and b!5333455 (not res!2262179)) b!5333453))

(assert (= (and b!5333453 res!2262175) b!5333458))

(assert (= (and b!5333458 res!2262177) b!5333450))

(assert (= (and b!5333450 res!2262176) b!5333460))

(assert (= (and b!5333453 (not res!2262180)) b!5333459))

(assert (= (and b!5333459 res!2262174) b!5333454))

(assert (= (and b!5333454 (not res!2262173)) b!5333452))

(assert (= (and b!5333452 (not res!2262178)) b!5333451))

(assert (= (or b!5333462 b!5333454 b!5333458) bm!381227))

(assert (=> b!5333450 m!6366540))

(assert (=> b!5333450 m!6366540))

(assert (=> b!5333450 m!6366634))

(assert (=> b!5333460 m!6366536))

(assert (=> b!5333452 m!6366540))

(assert (=> b!5333452 m!6366540))

(assert (=> b!5333452 m!6366634))

(assert (=> b!5333451 m!6366536))

(assert (=> bm!381227 m!6366504))

(declare-fun m!6366674 () Bool)

(assert (=> b!5333449 m!6366674))

(assert (=> d!1712430 m!6366504))

(assert (=> d!1712430 m!6365796))

(assert (=> b!5333457 m!6366536))

(assert (=> b!5333457 m!6366536))

(declare-fun m!6366676 () Bool)

(assert (=> b!5333457 m!6366676))

(assert (=> b!5333457 m!6366540))

(assert (=> b!5333457 m!6366676))

(assert (=> b!5333457 m!6366540))

(declare-fun m!6366678 () Bool)

(assert (=> b!5333457 m!6366678))

(assert (=> b!5332534 d!1712430))

(declare-fun d!1712432 () Bool)

(assert (=> d!1712432 (= (matchR!7186 r!7292 s!2326) (matchRSpec!2104 r!7292 s!2326))))

(declare-fun lt!2175175 () Unit!153522)

(assert (=> d!1712432 (= lt!2175175 (choose!39944 r!7292 s!2326))))

(assert (=> d!1712432 (validRegex!6737 r!7292)))

(assert (=> d!1712432 (= (mainMatchTheorem!2104 r!7292 s!2326) lt!2175175)))

(declare-fun bs!1236946 () Bool)

(assert (= bs!1236946 d!1712432))

(assert (=> bs!1236946 m!6365872))

(assert (=> bs!1236946 m!6365870))

(declare-fun m!6366680 () Bool)

(assert (=> bs!1236946 m!6366680))

(assert (=> bs!1236946 m!6365796))

(assert (=> b!5332534 d!1712432))

(declare-fun d!1712434 () Bool)

(declare-fun c!927707 () Bool)

(assert (=> d!1712434 (= c!927707 (isEmpty!33150 (t!374519 s!2326)))))

(declare-fun e!3312461 () Bool)

(assert (=> d!1712434 (= (matchZipper!1245 lt!2174996 (t!374519 s!2326)) e!3312461)))

(declare-fun b!5333463 () Bool)

(assert (=> b!5333463 (= e!3312461 (nullableZipper!1356 lt!2174996))))

(declare-fun b!5333464 () Bool)

(assert (=> b!5333464 (= e!3312461 (matchZipper!1245 (derivationStepZipper!1242 lt!2174996 (head!11430 (t!374519 s!2326))) (tail!10527 (t!374519 s!2326))))))

(assert (= (and d!1712434 c!927707) b!5333463))

(assert (= (and d!1712434 (not c!927707)) b!5333464))

(assert (=> d!1712434 m!6366168))

(declare-fun m!6366682 () Bool)

(assert (=> b!5333463 m!6366682))

(assert (=> b!5333464 m!6366172))

(assert (=> b!5333464 m!6366172))

(declare-fun m!6366684 () Bool)

(assert (=> b!5333464 m!6366684))

(assert (=> b!5333464 m!6366176))

(assert (=> b!5333464 m!6366684))

(assert (=> b!5333464 m!6366176))

(declare-fun m!6366686 () Bool)

(assert (=> b!5333464 m!6366686))

(assert (=> b!5332512 d!1712434))

(declare-fun d!1712436 () Bool)

(declare-fun c!927708 () Bool)

(assert (=> d!1712436 (= c!927708 (isEmpty!33150 (t!374519 s!2326)))))

(declare-fun e!3312462 () Bool)

(assert (=> d!1712436 (= (matchZipper!1245 lt!2175008 (t!374519 s!2326)) e!3312462)))

(declare-fun b!5333465 () Bool)

(assert (=> b!5333465 (= e!3312462 (nullableZipper!1356 lt!2175008))))

(declare-fun b!5333466 () Bool)

(assert (=> b!5333466 (= e!3312462 (matchZipper!1245 (derivationStepZipper!1242 lt!2175008 (head!11430 (t!374519 s!2326))) (tail!10527 (t!374519 s!2326))))))

(assert (= (and d!1712436 c!927708) b!5333465))

(assert (= (and d!1712436 (not c!927708)) b!5333466))

(assert (=> d!1712436 m!6366168))

(declare-fun m!6366688 () Bool)

(assert (=> b!5333465 m!6366688))

(assert (=> b!5333466 m!6366172))

(assert (=> b!5333466 m!6366172))

(declare-fun m!6366690 () Bool)

(assert (=> b!5333466 m!6366690))

(assert (=> b!5333466 m!6366176))

(assert (=> b!5333466 m!6366690))

(assert (=> b!5333466 m!6366176))

(declare-fun m!6366692 () Bool)

(assert (=> b!5333466 m!6366692))

(assert (=> b!5332512 d!1712436))

(declare-fun b!5333467 () Bool)

(declare-fun e!3312464 () (InoxSet Context!8770))

(declare-fun call!381237 () (InoxSet Context!8770))

(declare-fun call!381235 () (InoxSet Context!8770))

(assert (=> b!5333467 (= e!3312464 ((_ map or) call!381237 call!381235))))

(declare-fun d!1712438 () Bool)

(declare-fun c!927712 () Bool)

(assert (=> d!1712438 (= c!927712 (and ((_ is ElementMatch!15001) (regOne!30514 (regOne!30514 r!7292))) (= (c!927421 (regOne!30514 (regOne!30514 r!7292))) (h!67626 s!2326))))))

(declare-fun e!3312465 () (InoxSet Context!8770))

(assert (=> d!1712438 (= (derivationStepZipperDown!449 (regOne!30514 (regOne!30514 r!7292)) (Context!8771 lt!2174990) (h!67626 s!2326)) e!3312465)))

(declare-fun b!5333468 () Bool)

(declare-fun c!927709 () Bool)

(declare-fun e!3312468 () Bool)

(assert (=> b!5333468 (= c!927709 e!3312468)))

(declare-fun res!2262181 () Bool)

(assert (=> b!5333468 (=> (not res!2262181) (not e!3312468))))

(assert (=> b!5333468 (= res!2262181 ((_ is Concat!23846) (regOne!30514 (regOne!30514 r!7292))))))

(declare-fun e!3312466 () (InoxSet Context!8770))

(assert (=> b!5333468 (= e!3312464 e!3312466)))

(declare-fun b!5333469 () Bool)

(declare-fun e!3312463 () (InoxSet Context!8770))

(declare-fun call!381233 () (InoxSet Context!8770))

(assert (=> b!5333469 (= e!3312463 call!381233)))

(declare-fun b!5333470 () Bool)

(declare-fun call!381236 () (InoxSet Context!8770))

(assert (=> b!5333470 (= e!3312466 ((_ map or) call!381237 call!381236))))

(declare-fun b!5333471 () Bool)

(assert (=> b!5333471 (= e!3312465 (store ((as const (Array Context!8770 Bool)) false) (Context!8771 lt!2174990) true))))

(declare-fun call!381234 () List!61303)

(declare-fun c!927711 () Bool)

(declare-fun bm!381228 () Bool)

(assert (=> bm!381228 (= call!381234 ($colon$colon!1406 (exprs!4885 (Context!8771 lt!2174990)) (ite (or c!927709 c!927711) (regTwo!30514 (regOne!30514 (regOne!30514 r!7292))) (regOne!30514 (regOne!30514 r!7292)))))))

(declare-fun bm!381229 () Bool)

(assert (=> bm!381229 (= call!381236 call!381235)))

(declare-fun bm!381230 () Bool)

(declare-fun c!927710 () Bool)

(assert (=> bm!381230 (= call!381237 (derivationStepZipperDown!449 (ite c!927710 (regOne!30515 (regOne!30514 (regOne!30514 r!7292))) (regOne!30514 (regOne!30514 (regOne!30514 r!7292)))) (ite c!927710 (Context!8771 lt!2174990) (Context!8771 call!381234)) (h!67626 s!2326)))))

(declare-fun b!5333472 () Bool)

(assert (=> b!5333472 (= e!3312463 ((as const (Array Context!8770 Bool)) false))))

(declare-fun bm!381231 () Bool)

(declare-fun call!381238 () List!61303)

(assert (=> bm!381231 (= call!381238 call!381234)))

(declare-fun bm!381232 () Bool)

(assert (=> bm!381232 (= call!381233 call!381236)))

(declare-fun b!5333473 () Bool)

(declare-fun c!927713 () Bool)

(assert (=> b!5333473 (= c!927713 ((_ is Star!15001) (regOne!30514 (regOne!30514 r!7292))))))

(declare-fun e!3312467 () (InoxSet Context!8770))

(assert (=> b!5333473 (= e!3312467 e!3312463)))

(declare-fun b!5333474 () Bool)

(assert (=> b!5333474 (= e!3312468 (nullable!5170 (regOne!30514 (regOne!30514 (regOne!30514 r!7292)))))))

(declare-fun b!5333475 () Bool)

(assert (=> b!5333475 (= e!3312465 e!3312464)))

(assert (=> b!5333475 (= c!927710 ((_ is Union!15001) (regOne!30514 (regOne!30514 r!7292))))))

(declare-fun b!5333476 () Bool)

(assert (=> b!5333476 (= e!3312466 e!3312467)))

(assert (=> b!5333476 (= c!927711 ((_ is Concat!23846) (regOne!30514 (regOne!30514 r!7292))))))

(declare-fun b!5333477 () Bool)

(assert (=> b!5333477 (= e!3312467 call!381233)))

(declare-fun bm!381233 () Bool)

(assert (=> bm!381233 (= call!381235 (derivationStepZipperDown!449 (ite c!927710 (regTwo!30515 (regOne!30514 (regOne!30514 r!7292))) (ite c!927709 (regTwo!30514 (regOne!30514 (regOne!30514 r!7292))) (ite c!927711 (regOne!30514 (regOne!30514 (regOne!30514 r!7292))) (reg!15330 (regOne!30514 (regOne!30514 r!7292)))))) (ite (or c!927710 c!927709) (Context!8771 lt!2174990) (Context!8771 call!381238)) (h!67626 s!2326)))))

(assert (= (and d!1712438 c!927712) b!5333471))

(assert (= (and d!1712438 (not c!927712)) b!5333475))

(assert (= (and b!5333475 c!927710) b!5333467))

(assert (= (and b!5333475 (not c!927710)) b!5333468))

(assert (= (and b!5333468 res!2262181) b!5333474))

(assert (= (and b!5333468 c!927709) b!5333470))

(assert (= (and b!5333468 (not c!927709)) b!5333476))

(assert (= (and b!5333476 c!927711) b!5333477))

(assert (= (and b!5333476 (not c!927711)) b!5333473))

(assert (= (and b!5333473 c!927713) b!5333469))

(assert (= (and b!5333473 (not c!927713)) b!5333472))

(assert (= (or b!5333477 b!5333469) bm!381231))

(assert (= (or b!5333477 b!5333469) bm!381232))

(assert (= (or b!5333470 bm!381231) bm!381228))

(assert (= (or b!5333470 bm!381232) bm!381229))

(assert (= (or b!5333467 bm!381229) bm!381233))

(assert (= (or b!5333467 b!5333470) bm!381230))

(declare-fun m!6366694 () Bool)

(assert (=> b!5333474 m!6366694))

(declare-fun m!6366696 () Bool)

(assert (=> bm!381228 m!6366696))

(declare-fun m!6366698 () Bool)

(assert (=> b!5333471 m!6366698))

(declare-fun m!6366700 () Bool)

(assert (=> bm!381230 m!6366700))

(declare-fun m!6366702 () Bool)

(assert (=> bm!381233 m!6366702))

(assert (=> b!5332533 d!1712438))

(declare-fun bs!1236947 () Bool)

(declare-fun d!1712440 () Bool)

(assert (= bs!1236947 (and d!1712440 d!1712360)))

(declare-fun lambda!272738 () Int)

(assert (=> bs!1236947 (= lambda!272738 lambda!272708)))

(declare-fun bs!1236948 () Bool)

(assert (= bs!1236948 (and d!1712440 d!1712388)))

(assert (=> bs!1236948 (= lambda!272738 lambda!272729)))

(declare-fun bs!1236949 () Bool)

(assert (= bs!1236949 (and d!1712440 d!1712274)))

(assert (=> bs!1236949 (= lambda!272738 lambda!272670)))

(declare-fun bs!1236950 () Bool)

(assert (= bs!1236950 (and d!1712440 d!1712348)))

(assert (=> bs!1236950 (= lambda!272738 lambda!272705)))

(declare-fun bs!1236951 () Bool)

(assert (= bs!1236951 (and d!1712440 d!1712396)))

(assert (=> bs!1236951 (= lambda!272738 lambda!272730)))

(declare-fun bs!1236952 () Bool)

(assert (= bs!1236952 (and d!1712440 d!1712398)))

(assert (=> bs!1236952 (= lambda!272738 lambda!272731)))

(declare-fun bs!1236953 () Bool)

(assert (= bs!1236953 (and d!1712440 b!5332514)))

(assert (=> bs!1236953 (= lambda!272738 lambda!272631)))

(assert (=> d!1712440 (= (inv!80749 setElem!34381) (forall!14419 (exprs!4885 setElem!34381) lambda!272738))))

(declare-fun bs!1236954 () Bool)

(assert (= bs!1236954 d!1712440))

(declare-fun m!6366704 () Bool)

(assert (=> bs!1236954 m!6366704))

(assert (=> setNonEmpty!34381 d!1712440))

(declare-fun d!1712442 () Bool)

(declare-fun lt!2175178 () Int)

(assert (=> d!1712442 (>= lt!2175178 0)))

(declare-fun e!3312471 () Int)

(assert (=> d!1712442 (= lt!2175178 e!3312471)))

(declare-fun c!927717 () Bool)

(assert (=> d!1712442 (= c!927717 ((_ is Cons!61179) (exprs!4885 lt!2175007)))))

(assert (=> d!1712442 (= (contextDepthTotal!134 lt!2175007) lt!2175178)))

(declare-fun b!5333482 () Bool)

(declare-fun regexDepthTotal!61 (Regex!15001) Int)

(assert (=> b!5333482 (= e!3312471 (+ (regexDepthTotal!61 (h!67627 (exprs!4885 lt!2175007))) (contextDepthTotal!134 (Context!8771 (t!374520 (exprs!4885 lt!2175007))))))))

(declare-fun b!5333483 () Bool)

(assert (=> b!5333483 (= e!3312471 1)))

(assert (= (and d!1712442 c!927717) b!5333482))

(assert (= (and d!1712442 (not c!927717)) b!5333483))

(declare-fun m!6366706 () Bool)

(assert (=> b!5333482 m!6366706))

(declare-fun m!6366708 () Bool)

(assert (=> b!5333482 m!6366708))

(assert (=> b!5332535 d!1712442))

(declare-fun d!1712444 () Bool)

(declare-fun lt!2175179 () Int)

(assert (=> d!1712444 (>= lt!2175179 0)))

(declare-fun e!3312472 () Int)

(assert (=> d!1712444 (= lt!2175179 e!3312472)))

(declare-fun c!927718 () Bool)

(assert (=> d!1712444 (= c!927718 ((_ is Cons!61179) (exprs!4885 (h!67628 zl!343))))))

(assert (=> d!1712444 (= (contextDepthTotal!134 (h!67628 zl!343)) lt!2175179)))

(declare-fun b!5333484 () Bool)

(assert (=> b!5333484 (= e!3312472 (+ (regexDepthTotal!61 (h!67627 (exprs!4885 (h!67628 zl!343)))) (contextDepthTotal!134 (Context!8771 (t!374520 (exprs!4885 (h!67628 zl!343)))))))))

(declare-fun b!5333485 () Bool)

(assert (=> b!5333485 (= e!3312472 1)))

(assert (= (and d!1712444 c!927718) b!5333484))

(assert (= (and d!1712444 (not c!927718)) b!5333485))

(declare-fun m!6366710 () Bool)

(assert (=> b!5333484 m!6366710))

(declare-fun m!6366712 () Bool)

(assert (=> b!5333484 m!6366712))

(assert (=> b!5332535 d!1712444))

(declare-fun bs!1236955 () Bool)

(declare-fun d!1712446 () Bool)

(assert (= bs!1236955 (and d!1712446 d!1712360)))

(declare-fun lambda!272739 () Int)

(assert (=> bs!1236955 (= lambda!272739 lambda!272708)))

(declare-fun bs!1236956 () Bool)

(assert (= bs!1236956 (and d!1712446 d!1712440)))

(assert (=> bs!1236956 (= lambda!272739 lambda!272738)))

(declare-fun bs!1236957 () Bool)

(assert (= bs!1236957 (and d!1712446 d!1712388)))

(assert (=> bs!1236957 (= lambda!272739 lambda!272729)))

(declare-fun bs!1236958 () Bool)

(assert (= bs!1236958 (and d!1712446 d!1712274)))

(assert (=> bs!1236958 (= lambda!272739 lambda!272670)))

(declare-fun bs!1236959 () Bool)

(assert (= bs!1236959 (and d!1712446 d!1712348)))

(assert (=> bs!1236959 (= lambda!272739 lambda!272705)))

(declare-fun bs!1236960 () Bool)

(assert (= bs!1236960 (and d!1712446 d!1712396)))

(assert (=> bs!1236960 (= lambda!272739 lambda!272730)))

(declare-fun bs!1236961 () Bool)

(assert (= bs!1236961 (and d!1712446 d!1712398)))

(assert (=> bs!1236961 (= lambda!272739 lambda!272731)))

(declare-fun bs!1236962 () Bool)

(assert (= bs!1236962 (and d!1712446 b!5332514)))

(assert (=> bs!1236962 (= lambda!272739 lambda!272631)))

(declare-fun b!5333486 () Bool)

(declare-fun e!3312474 () Bool)

(assert (=> b!5333486 (= e!3312474 (isEmpty!33148 (t!374520 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun b!5333487 () Bool)

(declare-fun e!3312475 () Bool)

(declare-fun lt!2175180 () Regex!15001)

(assert (=> b!5333487 (= e!3312475 (= lt!2175180 (head!11431 (exprs!4885 (h!67628 zl!343)))))))

(declare-fun e!3312478 () Bool)

(assert (=> d!1712446 e!3312478))

(declare-fun res!2262182 () Bool)

(assert (=> d!1712446 (=> (not res!2262182) (not e!3312478))))

(assert (=> d!1712446 (= res!2262182 (validRegex!6737 lt!2175180))))

(declare-fun e!3312476 () Regex!15001)

(assert (=> d!1712446 (= lt!2175180 e!3312476)))

(declare-fun c!927720 () Bool)

(assert (=> d!1712446 (= c!927720 e!3312474)))

(declare-fun res!2262183 () Bool)

(assert (=> d!1712446 (=> (not res!2262183) (not e!3312474))))

(assert (=> d!1712446 (= res!2262183 ((_ is Cons!61179) (exprs!4885 (h!67628 zl!343))))))

(assert (=> d!1712446 (forall!14419 (exprs!4885 (h!67628 zl!343)) lambda!272739)))

(assert (=> d!1712446 (= (generalisedConcat!670 (exprs!4885 (h!67628 zl!343))) lt!2175180)))

(declare-fun b!5333488 () Bool)

(assert (=> b!5333488 (= e!3312476 (h!67627 (exprs!4885 (h!67628 zl!343))))))

(declare-fun b!5333489 () Bool)

(declare-fun e!3312473 () Regex!15001)

(assert (=> b!5333489 (= e!3312473 (Concat!23846 (h!67627 (exprs!4885 (h!67628 zl!343))) (generalisedConcat!670 (t!374520 (exprs!4885 (h!67628 zl!343))))))))

(declare-fun b!5333490 () Bool)

(assert (=> b!5333490 (= e!3312476 e!3312473)))

(declare-fun c!927721 () Bool)

(assert (=> b!5333490 (= c!927721 ((_ is Cons!61179) (exprs!4885 (h!67628 zl!343))))))

(declare-fun b!5333491 () Bool)

(assert (=> b!5333491 (= e!3312473 EmptyExpr!15001)))

(declare-fun b!5333492 () Bool)

(assert (=> b!5333492 (= e!3312475 (isConcat!414 lt!2175180))))

(declare-fun b!5333493 () Bool)

(declare-fun e!3312477 () Bool)

(assert (=> b!5333493 (= e!3312477 (isEmptyExpr!891 lt!2175180))))

(declare-fun b!5333494 () Bool)

(assert (=> b!5333494 (= e!3312478 e!3312477)))

(declare-fun c!927722 () Bool)

(assert (=> b!5333494 (= c!927722 (isEmpty!33148 (exprs!4885 (h!67628 zl!343))))))

(declare-fun b!5333495 () Bool)

(assert (=> b!5333495 (= e!3312477 e!3312475)))

(declare-fun c!927719 () Bool)

(assert (=> b!5333495 (= c!927719 (isEmpty!33148 (tail!10528 (exprs!4885 (h!67628 zl!343)))))))

(assert (= (and d!1712446 res!2262183) b!5333486))

(assert (= (and d!1712446 c!927720) b!5333488))

(assert (= (and d!1712446 (not c!927720)) b!5333490))

(assert (= (and b!5333490 c!927721) b!5333489))

(assert (= (and b!5333490 (not c!927721)) b!5333491))

(assert (= (and d!1712446 res!2262182) b!5333494))

(assert (= (and b!5333494 c!927722) b!5333493))

(assert (= (and b!5333494 (not c!927722)) b!5333495))

(assert (= (and b!5333495 c!927719) b!5333487))

(assert (= (and b!5333495 (not c!927719)) b!5333492))

(declare-fun m!6366714 () Bool)

(assert (=> b!5333494 m!6366714))

(declare-fun m!6366716 () Bool)

(assert (=> b!5333495 m!6366716))

(assert (=> b!5333495 m!6366716))

(declare-fun m!6366718 () Bool)

(assert (=> b!5333495 m!6366718))

(declare-fun m!6366720 () Bool)

(assert (=> b!5333487 m!6366720))

(declare-fun m!6366722 () Bool)

(assert (=> d!1712446 m!6366722))

(declare-fun m!6366724 () Bool)

(assert (=> d!1712446 m!6366724))

(assert (=> b!5333489 m!6365834))

(assert (=> b!5333486 m!6365864))

(declare-fun m!6366726 () Bool)

(assert (=> b!5333493 m!6366726))

(declare-fun m!6366728 () Bool)

(assert (=> b!5333492 m!6366728))

(assert (=> b!5332515 d!1712446))

(declare-fun d!1712448 () Bool)

(assert (=> d!1712448 (= (nullable!5170 (regOne!30514 (regOne!30514 r!7292))) (nullableFct!1508 (regOne!30514 (regOne!30514 r!7292))))))

(declare-fun bs!1236963 () Bool)

(assert (= bs!1236963 d!1712448))

(declare-fun m!6366730 () Bool)

(assert (=> bs!1236963 m!6366730))

(assert (=> b!5332538 d!1712448))

(declare-fun d!1712450 () Bool)

(assert (=> d!1712450 (= (isEmpty!33147 (t!374521 zl!343)) ((_ is Nil!61180) (t!374521 zl!343)))))

(assert (=> b!5332516 d!1712450))

(declare-fun d!1712452 () Bool)

(declare-fun e!3312481 () Bool)

(assert (=> d!1712452 e!3312481))

(declare-fun res!2262186 () Bool)

(assert (=> d!1712452 (=> (not res!2262186) (not e!3312481))))

(declare-fun lt!2175183 () List!61304)

(declare-fun noDuplicate!1311 (List!61304) Bool)

(assert (=> d!1712452 (= res!2262186 (noDuplicate!1311 lt!2175183))))

(declare-fun choose!39946 ((InoxSet Context!8770)) List!61304)

(assert (=> d!1712452 (= lt!2175183 (choose!39946 z!1189))))

(assert (=> d!1712452 (= (toList!8785 z!1189) lt!2175183)))

(declare-fun b!5333498 () Bool)

(declare-fun content!10913 (List!61304) (InoxSet Context!8770))

(assert (=> b!5333498 (= e!3312481 (= (content!10913 lt!2175183) z!1189))))

(assert (= (and d!1712452 res!2262186) b!5333498))

(declare-fun m!6366732 () Bool)

(assert (=> d!1712452 m!6366732))

(declare-fun m!6366734 () Bool)

(assert (=> d!1712452 m!6366734))

(declare-fun m!6366736 () Bool)

(assert (=> b!5333498 m!6366736))

(assert (=> b!5332517 d!1712452))

(declare-fun d!1712454 () Bool)

(declare-fun e!3312484 () Bool)

(assert (=> d!1712454 (= (matchZipper!1245 ((_ map or) lt!2175008 lt!2174984) (t!374519 s!2326)) e!3312484)))

(declare-fun res!2262189 () Bool)

(assert (=> d!1712454 (=> res!2262189 e!3312484)))

(assert (=> d!1712454 (= res!2262189 (matchZipper!1245 lt!2175008 (t!374519 s!2326)))))

(declare-fun lt!2175186 () Unit!153522)

(declare-fun choose!39947 ((InoxSet Context!8770) (InoxSet Context!8770) List!61302) Unit!153522)

(assert (=> d!1712454 (= lt!2175186 (choose!39947 lt!2175008 lt!2174984 (t!374519 s!2326)))))

(assert (=> d!1712454 (= (lemmaZipperConcatMatchesSameAsBothZippers!238 lt!2175008 lt!2174984 (t!374519 s!2326)) lt!2175186)))

(declare-fun b!5333501 () Bool)

(assert (=> b!5333501 (= e!3312484 (matchZipper!1245 lt!2174984 (t!374519 s!2326)))))

(assert (= (and d!1712454 (not res!2262189)) b!5333501))

(assert (=> d!1712454 m!6365774))

(assert (=> d!1712454 m!6365772))

(declare-fun m!6366738 () Bool)

(assert (=> d!1712454 m!6366738))

(assert (=> b!5333501 m!6365794))

(assert (=> b!5332537 d!1712454))

(assert (=> b!5332537 d!1712436))

(declare-fun d!1712456 () Bool)

(declare-fun c!927723 () Bool)

(assert (=> d!1712456 (= c!927723 (isEmpty!33150 (t!374519 s!2326)))))

(declare-fun e!3312485 () Bool)

(assert (=> d!1712456 (= (matchZipper!1245 ((_ map or) lt!2175008 lt!2174984) (t!374519 s!2326)) e!3312485)))

(declare-fun b!5333502 () Bool)

(assert (=> b!5333502 (= e!3312485 (nullableZipper!1356 ((_ map or) lt!2175008 lt!2174984)))))

(declare-fun b!5333503 () Bool)

(assert (=> b!5333503 (= e!3312485 (matchZipper!1245 (derivationStepZipper!1242 ((_ map or) lt!2175008 lt!2174984) (head!11430 (t!374519 s!2326))) (tail!10527 (t!374519 s!2326))))))

(assert (= (and d!1712456 c!927723) b!5333502))

(assert (= (and d!1712456 (not c!927723)) b!5333503))

(assert (=> d!1712456 m!6366168))

(declare-fun m!6366740 () Bool)

(assert (=> b!5333502 m!6366740))

(assert (=> b!5333503 m!6366172))

(assert (=> b!5333503 m!6366172))

(declare-fun m!6366742 () Bool)

(assert (=> b!5333503 m!6366742))

(assert (=> b!5333503 m!6366176))

(assert (=> b!5333503 m!6366742))

(assert (=> b!5333503 m!6366176))

(declare-fun m!6366744 () Bool)

(assert (=> b!5333503 m!6366744))

(assert (=> b!5332537 d!1712456))

(declare-fun condSetEmpty!34387 () Bool)

(assert (=> setNonEmpty!34381 (= condSetEmpty!34387 (= setRest!34381 ((as const (Array Context!8770 Bool)) false)))))

(declare-fun setRes!34387 () Bool)

(assert (=> setNonEmpty!34381 (= tp!1483862 setRes!34387)))

(declare-fun setIsEmpty!34387 () Bool)

(assert (=> setIsEmpty!34387 setRes!34387))

(declare-fun e!3312488 () Bool)

(declare-fun setElem!34387 () Context!8770)

(declare-fun tp!1483933 () Bool)

(declare-fun setNonEmpty!34387 () Bool)

(assert (=> setNonEmpty!34387 (= setRes!34387 (and tp!1483933 (inv!80749 setElem!34387) e!3312488))))

(declare-fun setRest!34387 () (InoxSet Context!8770))

(assert (=> setNonEmpty!34387 (= setRest!34381 ((_ map or) (store ((as const (Array Context!8770 Bool)) false) setElem!34387 true) setRest!34387))))

(declare-fun b!5333508 () Bool)

(declare-fun tp!1483932 () Bool)

(assert (=> b!5333508 (= e!3312488 tp!1483932)))

(assert (= (and setNonEmpty!34381 condSetEmpty!34387) setIsEmpty!34387))

(assert (= (and setNonEmpty!34381 (not condSetEmpty!34387)) setNonEmpty!34387))

(assert (= setNonEmpty!34387 b!5333508))

(declare-fun m!6366746 () Bool)

(assert (=> setNonEmpty!34387 m!6366746))

(declare-fun b!5333519 () Bool)

(declare-fun e!3312491 () Bool)

(assert (=> b!5333519 (= e!3312491 tp_is_empty!39255)))

(declare-fun b!5333520 () Bool)

(declare-fun tp!1483946 () Bool)

(declare-fun tp!1483945 () Bool)

(assert (=> b!5333520 (= e!3312491 (and tp!1483946 tp!1483945))))

(assert (=> b!5332531 (= tp!1483866 e!3312491)))

(declare-fun b!5333522 () Bool)

(declare-fun tp!1483947 () Bool)

(declare-fun tp!1483948 () Bool)

(assert (=> b!5333522 (= e!3312491 (and tp!1483947 tp!1483948))))

(declare-fun b!5333521 () Bool)

(declare-fun tp!1483944 () Bool)

(assert (=> b!5333521 (= e!3312491 tp!1483944)))

(assert (= (and b!5332531 ((_ is ElementMatch!15001) (regOne!30514 r!7292))) b!5333519))

(assert (= (and b!5332531 ((_ is Concat!23846) (regOne!30514 r!7292))) b!5333520))

(assert (= (and b!5332531 ((_ is Star!15001) (regOne!30514 r!7292))) b!5333521))

(assert (= (and b!5332531 ((_ is Union!15001) (regOne!30514 r!7292))) b!5333522))

(declare-fun b!5333523 () Bool)

(declare-fun e!3312492 () Bool)

(assert (=> b!5333523 (= e!3312492 tp_is_empty!39255)))

(declare-fun b!5333524 () Bool)

(declare-fun tp!1483951 () Bool)

(declare-fun tp!1483950 () Bool)

(assert (=> b!5333524 (= e!3312492 (and tp!1483951 tp!1483950))))

(assert (=> b!5332531 (= tp!1483869 e!3312492)))

(declare-fun b!5333526 () Bool)

(declare-fun tp!1483952 () Bool)

(declare-fun tp!1483953 () Bool)

(assert (=> b!5333526 (= e!3312492 (and tp!1483952 tp!1483953))))

(declare-fun b!5333525 () Bool)

(declare-fun tp!1483949 () Bool)

(assert (=> b!5333525 (= e!3312492 tp!1483949)))

(assert (= (and b!5332531 ((_ is ElementMatch!15001) (regTwo!30514 r!7292))) b!5333523))

(assert (= (and b!5332531 ((_ is Concat!23846) (regTwo!30514 r!7292))) b!5333524))

(assert (= (and b!5332531 ((_ is Star!15001) (regTwo!30514 r!7292))) b!5333525))

(assert (= (and b!5332531 ((_ is Union!15001) (regTwo!30514 r!7292))) b!5333526))

(declare-fun b!5333531 () Bool)

(declare-fun e!3312495 () Bool)

(declare-fun tp!1483956 () Bool)

(assert (=> b!5333531 (= e!3312495 (and tp_is_empty!39255 tp!1483956))))

(assert (=> b!5332520 (= tp!1483868 e!3312495)))

(assert (= (and b!5332520 ((_ is Cons!61178) (t!374519 s!2326))) b!5333531))

(declare-fun b!5333532 () Bool)

(declare-fun e!3312496 () Bool)

(assert (=> b!5333532 (= e!3312496 tp_is_empty!39255)))

(declare-fun b!5333533 () Bool)

(declare-fun tp!1483959 () Bool)

(declare-fun tp!1483958 () Bool)

(assert (=> b!5333533 (= e!3312496 (and tp!1483959 tp!1483958))))

(assert (=> b!5332536 (= tp!1483861 e!3312496)))

(declare-fun b!5333535 () Bool)

(declare-fun tp!1483960 () Bool)

(declare-fun tp!1483961 () Bool)

(assert (=> b!5333535 (= e!3312496 (and tp!1483960 tp!1483961))))

(declare-fun b!5333534 () Bool)

(declare-fun tp!1483957 () Bool)

(assert (=> b!5333534 (= e!3312496 tp!1483957)))

(assert (= (and b!5332536 ((_ is ElementMatch!15001) (reg!15330 r!7292))) b!5333532))

(assert (= (and b!5332536 ((_ is Concat!23846) (reg!15330 r!7292))) b!5333533))

(assert (= (and b!5332536 ((_ is Star!15001) (reg!15330 r!7292))) b!5333534))

(assert (= (and b!5332536 ((_ is Union!15001) (reg!15330 r!7292))) b!5333535))

(declare-fun b!5333540 () Bool)

(declare-fun e!3312499 () Bool)

(declare-fun tp!1483966 () Bool)

(declare-fun tp!1483967 () Bool)

(assert (=> b!5333540 (= e!3312499 (and tp!1483966 tp!1483967))))

(assert (=> b!5332541 (= tp!1483863 e!3312499)))

(assert (= (and b!5332541 ((_ is Cons!61179) (exprs!4885 (h!67628 zl!343)))) b!5333540))

(declare-fun b!5333548 () Bool)

(declare-fun e!3312505 () Bool)

(declare-fun tp!1483972 () Bool)

(assert (=> b!5333548 (= e!3312505 tp!1483972)))

(declare-fun e!3312504 () Bool)

(declare-fun tp!1483973 () Bool)

(declare-fun b!5333547 () Bool)

(assert (=> b!5333547 (= e!3312504 (and (inv!80749 (h!67628 (t!374521 zl!343))) e!3312505 tp!1483973))))

(assert (=> b!5332523 (= tp!1483860 e!3312504)))

(assert (= b!5333547 b!5333548))

(assert (= (and b!5332523 ((_ is Cons!61180) (t!374521 zl!343))) b!5333547))

(declare-fun m!6366748 () Bool)

(assert (=> b!5333547 m!6366748))

(declare-fun b!5333549 () Bool)

(declare-fun e!3312506 () Bool)

(declare-fun tp!1483974 () Bool)

(declare-fun tp!1483975 () Bool)

(assert (=> b!5333549 (= e!3312506 (and tp!1483974 tp!1483975))))

(assert (=> b!5332544 (= tp!1483865 e!3312506)))

(assert (= (and b!5332544 ((_ is Cons!61179) (exprs!4885 setElem!34381))) b!5333549))

(declare-fun b!5333550 () Bool)

(declare-fun e!3312507 () Bool)

(assert (=> b!5333550 (= e!3312507 tp_is_empty!39255)))

(declare-fun b!5333551 () Bool)

(declare-fun tp!1483978 () Bool)

(declare-fun tp!1483977 () Bool)

(assert (=> b!5333551 (= e!3312507 (and tp!1483978 tp!1483977))))

(assert (=> b!5332542 (= tp!1483867 e!3312507)))

(declare-fun b!5333553 () Bool)

(declare-fun tp!1483979 () Bool)

(declare-fun tp!1483980 () Bool)

(assert (=> b!5333553 (= e!3312507 (and tp!1483979 tp!1483980))))

(declare-fun b!5333552 () Bool)

(declare-fun tp!1483976 () Bool)

(assert (=> b!5333552 (= e!3312507 tp!1483976)))

(assert (= (and b!5332542 ((_ is ElementMatch!15001) (regOne!30515 r!7292))) b!5333550))

(assert (= (and b!5332542 ((_ is Concat!23846) (regOne!30515 r!7292))) b!5333551))

(assert (= (and b!5332542 ((_ is Star!15001) (regOne!30515 r!7292))) b!5333552))

(assert (= (and b!5332542 ((_ is Union!15001) (regOne!30515 r!7292))) b!5333553))

(declare-fun b!5333554 () Bool)

(declare-fun e!3312508 () Bool)

(assert (=> b!5333554 (= e!3312508 tp_is_empty!39255)))

(declare-fun b!5333555 () Bool)

(declare-fun tp!1483983 () Bool)

(declare-fun tp!1483982 () Bool)

(assert (=> b!5333555 (= e!3312508 (and tp!1483983 tp!1483982))))

(assert (=> b!5332542 (= tp!1483864 e!3312508)))

(declare-fun b!5333557 () Bool)

(declare-fun tp!1483984 () Bool)

(declare-fun tp!1483985 () Bool)

(assert (=> b!5333557 (= e!3312508 (and tp!1483984 tp!1483985))))

(declare-fun b!5333556 () Bool)

(declare-fun tp!1483981 () Bool)

(assert (=> b!5333556 (= e!3312508 tp!1483981)))

(assert (= (and b!5332542 ((_ is ElementMatch!15001) (regTwo!30515 r!7292))) b!5333554))

(assert (= (and b!5332542 ((_ is Concat!23846) (regTwo!30515 r!7292))) b!5333555))

(assert (= (and b!5332542 ((_ is Star!15001) (regTwo!30515 r!7292))) b!5333556))

(assert (= (and b!5332542 ((_ is Union!15001) (regTwo!30515 r!7292))) b!5333557))

(declare-fun b_lambda!205111 () Bool)

(assert (= b_lambda!205109 (or b!5332514 b_lambda!205111)))

(declare-fun bs!1236964 () Bool)

(declare-fun d!1712458 () Bool)

(assert (= bs!1236964 (and d!1712458 b!5332514)))

(assert (=> bs!1236964 (= (dynLambda!24197 lambda!272631 (h!67627 (t!374520 (exprs!4885 (h!67628 zl!343))))) (validRegex!6737 (h!67627 (t!374520 (exprs!4885 (h!67628 zl!343))))))))

(declare-fun m!6366750 () Bool)

(assert (=> bs!1236964 m!6366750))

(assert (=> b!5333436 d!1712458))

(declare-fun b_lambda!205113 () Bool)

(assert (= b_lambda!205099 (or b!5332524 b_lambda!205113)))

(declare-fun bs!1236965 () Bool)

(declare-fun d!1712460 () Bool)

(assert (= bs!1236965 (and d!1712460 b!5332524)))

(assert (=> bs!1236965 (= (dynLambda!24195 lambda!272627 (h!67628 zl!343)) (derivationStepZipperUp!373 (h!67628 zl!343) (h!67626 s!2326)))))

(assert (=> bs!1236965 m!6365900))

(assert (=> d!1712310 d!1712460))

(declare-fun b_lambda!205115 () Bool)

(assert (= b_lambda!205097 (or b!5332524 b_lambda!205115)))

(declare-fun bs!1236966 () Bool)

(declare-fun d!1712462 () Bool)

(assert (= bs!1236966 (and d!1712462 b!5332524)))

(assert (=> bs!1236966 (= (dynLambda!24195 lambda!272627 lt!2175007) (derivationStepZipperUp!373 lt!2175007 (h!67626 s!2326)))))

(assert (=> bs!1236966 m!6365858))

(assert (=> d!1712260 d!1712462))

(check-sat (not b!5333342) (not bm!381190) (not b!5333315) (not b!5333503) (not b!5333501) (not b!5333349) (not b!5333078) (not b!5333405) (not b!5333429) (not b!5333487) (not b!5333547) (not b!5333508) (not bm!381164) (not b!5333334) (not b!5333321) (not b!5333419) (not b!5332864) (not bm!381177) (not b!5333420) (not b!5333235) (not b!5332914) (not b!5332915) (not b!5333232) (not d!1712434) (not d!1712430) (not b!5333331) (not b!5333322) (not d!1712310) (not b!5333336) (not b!5333343) (not d!1712394) (not b!5333534) (not b!5332897) (not b!5333339) (not bm!381226) (not d!1712260) (not b!5333526) (not d!1712392) (not d!1712456) (not b!5333353) (not b!5333551) (not b!5333407) (not b!5333553) (not b!5333449) (not b!5333555) (not b!5333421) (not b!5333360) (not b!5332887) (not d!1712376) (not b!5333080) (not b!5333118) (not b!5333463) (not b!5333484) (not bm!381230) (not b!5332798) (not b!5333466) (not b!5333464) (not b!5333335) (not b!5333345) (not d!1712262) (not b!5333333) (not setNonEmpty!34387) (not b!5333363) (not b!5332912) (not d!1712418) (not b!5333326) (not d!1712374) (not b_lambda!205115) (not bm!381217) (not b!5333521) (not bm!381219) (not b!5333492) (not b!5333437) (not b!5333426) (not b!5333493) (not b!5332799) (not b!5333344) (not b!5333237) (not b!5333347) (not b!5333083) (not bm!381195) (not b!5332913) (not b!5333356) (not d!1712348) (not b!5333000) (not bm!381223) (not d!1712448) (not b!5333486) (not d!1712420) (not b!5333123) (not d!1712396) (not d!1712276) (not d!1712432) (not b!5333001) (not b!5333328) (not b!5333352) (not b!5333489) (not b!5332987) (not b!5333418) (not bm!381176) (not b!5332986) (not b!5333355) (not d!1712422) (not b!5333443) (not d!1712360) (not d!1712304) (not d!1712364) (not b!5333323) (not b!5333327) (not b!5333522) (not b!5333157) (not b!5333556) (not b!5333524) (not b!5333357) (not b!5333238) (not bm!381220) (not b!5333318) (not b!5333552) (not bs!1236964) (not d!1712404) (not d!1712390) (not d!1712402) (not bm!381175) (not b!5333289) (not b!5333325) (not d!1712288) (not b!5333412) (not b!5333451) (not d!1712382) (not b!5333354) (not bm!381228) (not b!5333124) (not b!5332922) (not b!5333535) (not d!1712274) (not b!5332921) (not d!1712254) (not b!5333120) (not b!5333450) (not d!1712446) (not b!5333444) (not b!5333465) (not b!5333548) (not b_lambda!205111) (not d!1712410) (not d!1712388) (not d!1712454) (not bm!381224) (not d!1712386) (not b!5333498) (not b!5333540) (not bs!1236965) (not b!5333239) (not d!1712378) (not b!5333502) (not d!1712408) (not d!1712398) (not b!5333122) (not b!5333533) (not b!5333121) (not b!5333370) tp_is_empty!39255 (not b!5333362) (not b!5333531) (not b!5332971) (not b!5333231) (not d!1712284) (not d!1712400) (not b!5333482) (not bm!381218) (not b!5333457) (not b!5333525) (not b!5333324) (not bm!381197) (not b!5333452) (not b!5333316) (not d!1712452) (not d!1712380) (not b!5333474) (not d!1712440) (not bs!1236966) (not b!5333557) (not d!1712414) (not b!5333337) (not b!5333406) (not b!5333494) (not bm!381233) (not d!1712322) (not b!5333290) (not b!5333404) (not d!1712412) (not b!5333460) (not bm!381225) (not b!5333364) (not b!5333125) (not bm!381196) (not b!5333085) (not bm!381227) (not b_lambda!205113) (not b!5333495) (not b!5333520) (not bm!381192) (not b!5333549) (not b!5333415) (not d!1712426) (not b!5333346) (not b!5333371) (not d!1712416) (not d!1712436))
(check-sat)
