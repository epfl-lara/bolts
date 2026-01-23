; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!624334 () Bool)

(assert start!624334)

(declare-fun b!6280967 () Bool)

(assert (=> b!6280967 true))

(assert (=> b!6280967 true))

(declare-fun lambda!344508 () Int)

(declare-fun lambda!344507 () Int)

(assert (=> b!6280967 (not (= lambda!344508 lambda!344507))))

(assert (=> b!6280967 true))

(assert (=> b!6280967 true))

(declare-fun b!6280977 () Bool)

(assert (=> b!6280977 true))

(declare-fun bs!1568823 () Bool)

(declare-fun b!6280970 () Bool)

(assert (= bs!1568823 (and b!6280970 b!6280967)))

(declare-datatypes ((C!32676 0))(
  ( (C!32677 (val!26040 Int)) )
))
(declare-datatypes ((Regex!16203 0))(
  ( (ElementMatch!16203 (c!1138982 C!32676)) (Concat!25048 (regOne!32918 Regex!16203) (regTwo!32918 Regex!16203)) (EmptyExpr!16203) (Star!16203 (reg!16532 Regex!16203)) (EmptyLang!16203) (Union!16203 (regOne!32919 Regex!16203) (regTwo!32919 Regex!16203)) )
))
(declare-fun r!7292 () Regex!16203)

(declare-fun lambda!344510 () Int)

(declare-fun lt!2354652 () Regex!16203)

(assert (=> bs!1568823 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344510 lambda!344507))))

(assert (=> bs!1568823 (not (= lambda!344510 lambda!344508))))

(assert (=> b!6280970 true))

(assert (=> b!6280970 true))

(assert (=> b!6280970 true))

(declare-fun lambda!344511 () Int)

(assert (=> bs!1568823 (not (= lambda!344511 lambda!344507))))

(assert (=> bs!1568823 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344511 lambda!344508))))

(assert (=> b!6280970 (not (= lambda!344511 lambda!344510))))

(assert (=> b!6280970 true))

(assert (=> b!6280970 true))

(assert (=> b!6280970 true))

(declare-fun b!6280942 () Bool)

(declare-fun e!3819649 () Bool)

(declare-fun e!3819659 () Bool)

(assert (=> b!6280942 (= e!3819649 e!3819659)))

(declare-fun res!2590514 () Bool)

(assert (=> b!6280942 (=> res!2590514 e!3819659)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!64908 0))(
  ( (Nil!64784) (Cons!64784 (h!71232 Regex!16203) (t!378468 List!64908)) )
))
(declare-datatypes ((Context!11174 0))(
  ( (Context!11175 (exprs!6087 List!64908)) )
))
(declare-fun lt!2354662 () (InoxSet Context!11174))

(declare-fun lt!2354645 () (InoxSet Context!11174))

(assert (=> b!6280942 (= res!2590514 (not (= lt!2354662 lt!2354645)))))

(declare-fun lt!2354658 () (InoxSet Context!11174))

(declare-fun lt!2354648 () (InoxSet Context!11174))

(assert (=> b!6280942 (= lt!2354645 ((_ map or) lt!2354658 lt!2354648))))

(declare-datatypes ((List!64909 0))(
  ( (Nil!64785) (Cons!64785 (h!71233 C!32676) (t!378469 List!64909)) )
))
(declare-fun s!2326 () List!64909)

(declare-fun lt!2354668 () Context!11174)

(declare-fun derivationStepZipperDown!1451 (Regex!16203 Context!11174 C!32676) (InoxSet Context!11174))

(assert (=> b!6280942 (= lt!2354648 (derivationStepZipperDown!1451 (regTwo!32918 (regOne!32918 r!7292)) lt!2354668 (h!71233 s!2326)))))

(declare-fun lt!2354667 () Context!11174)

(assert (=> b!6280942 (= lt!2354658 (derivationStepZipperDown!1451 (regOne!32918 (regOne!32918 r!7292)) lt!2354667 (h!71233 s!2326)))))

(declare-fun lt!2354639 () List!64908)

(assert (=> b!6280942 (= lt!2354667 (Context!11175 lt!2354639))))

(declare-datatypes ((List!64910 0))(
  ( (Nil!64786) (Cons!64786 (h!71234 Context!11174) (t!378470 List!64910)) )
))
(declare-fun zl!343 () List!64910)

(assert (=> b!6280942 (= lt!2354639 (Cons!64784 (regTwo!32918 (regOne!32918 r!7292)) (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6280943 () Bool)

(declare-fun e!3819652 () Bool)

(declare-fun tp!1750472 () Bool)

(declare-fun tp!1750468 () Bool)

(assert (=> b!6280943 (= e!3819652 (and tp!1750472 tp!1750468))))

(declare-fun b!6280944 () Bool)

(declare-fun res!2590528 () Bool)

(declare-fun e!3819663 () Bool)

(assert (=> b!6280944 (=> res!2590528 e!3819663)))

(declare-fun isEmpty!36829 (List!64910) Bool)

(assert (=> b!6280944 (= res!2590528 (not (isEmpty!36829 (t!378470 zl!343))))))

(declare-fun b!6280945 () Bool)

(declare-fun res!2590530 () Bool)

(assert (=> b!6280945 (=> res!2590530 e!3819663)))

(get-info :version)

(assert (=> b!6280945 (= res!2590530 (or ((_ is EmptyExpr!16203) r!7292) ((_ is EmptyLang!16203) r!7292) ((_ is ElementMatch!16203) r!7292) ((_ is Union!16203) r!7292) (not ((_ is Concat!25048) r!7292))))))

(declare-fun b!6280946 () Bool)

(declare-fun e!3819651 () Bool)

(assert (=> b!6280946 (= e!3819651 (not e!3819663))))

(declare-fun res!2590515 () Bool)

(assert (=> b!6280946 (=> res!2590515 e!3819663)))

(assert (=> b!6280946 (= res!2590515 (not ((_ is Cons!64786) zl!343)))))

(declare-fun lt!2354649 () Bool)

(declare-fun matchRSpec!3304 (Regex!16203 List!64909) Bool)

(assert (=> b!6280946 (= lt!2354649 (matchRSpec!3304 r!7292 s!2326))))

(declare-fun matchR!8386 (Regex!16203 List!64909) Bool)

(assert (=> b!6280946 (= lt!2354649 (matchR!8386 r!7292 s!2326))))

(declare-datatypes ((Unit!158143 0))(
  ( (Unit!158144) )
))
(declare-fun lt!2354660 () Unit!158143)

(declare-fun mainMatchTheorem!3304 (Regex!16203 List!64909) Unit!158143)

(assert (=> b!6280946 (= lt!2354660 (mainMatchTheorem!3304 r!7292 s!2326))))

(declare-fun b!6280947 () Bool)

(declare-fun e!3819661 () Bool)

(declare-fun e!3819664 () Bool)

(assert (=> b!6280947 (= e!3819661 e!3819664)))

(declare-fun res!2590517 () Bool)

(assert (=> b!6280947 (=> res!2590517 e!3819664)))

(declare-fun e!3819653 () Bool)

(assert (=> b!6280947 (= res!2590517 e!3819653)))

(declare-fun res!2590516 () Bool)

(assert (=> b!6280947 (=> (not res!2590516) (not e!3819653))))

(declare-fun lt!2354643 () Bool)

(declare-fun lt!2354669 () (InoxSet Context!11174))

(declare-fun matchZipper!2215 ((InoxSet Context!11174) List!64909) Bool)

(assert (=> b!6280947 (= res!2590516 (not (= lt!2354643 (matchZipper!2215 lt!2354669 (t!378469 s!2326)))))))

(declare-fun lt!2354646 () (InoxSet Context!11174))

(declare-fun e!3819662 () Bool)

(assert (=> b!6280947 (= (matchZipper!2215 lt!2354646 (t!378469 s!2326)) e!3819662)))

(declare-fun res!2590510 () Bool)

(assert (=> b!6280947 (=> res!2590510 e!3819662)))

(declare-fun lt!2354642 () Bool)

(assert (=> b!6280947 (= res!2590510 lt!2354642)))

(declare-fun lt!2354664 () (InoxSet Context!11174))

(declare-fun lt!2354640 () Unit!158143)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1034 ((InoxSet Context!11174) (InoxSet Context!11174) List!64909) Unit!158143)

(assert (=> b!6280947 (= lt!2354640 (lemmaZipperConcatMatchesSameAsBothZippers!1034 lt!2354658 lt!2354664 (t!378469 s!2326)))))

(declare-fun lambda!344509 () Int)

(declare-fun lt!2354666 () (InoxSet Context!11174))

(declare-fun flatMap!1708 ((InoxSet Context!11174) Int) (InoxSet Context!11174))

(declare-fun derivationStepZipperUp!1377 (Context!11174 C!32676) (InoxSet Context!11174))

(assert (=> b!6280947 (= (flatMap!1708 lt!2354666 lambda!344509) (derivationStepZipperUp!1377 lt!2354667 (h!71233 s!2326)))))

(declare-fun lt!2354676 () Unit!158143)

(declare-fun lemmaFlatMapOnSingletonSet!1234 ((InoxSet Context!11174) Context!11174 Int) Unit!158143)

(assert (=> b!6280947 (= lt!2354676 (lemmaFlatMapOnSingletonSet!1234 lt!2354666 lt!2354667 lambda!344509))))

(declare-fun b!6280949 () Bool)

(declare-fun e!3819655 () Unit!158143)

(declare-fun Unit!158145 () Unit!158143)

(assert (=> b!6280949 (= e!3819655 Unit!158145)))

(declare-fun b!6280950 () Bool)

(declare-fun e!3819657 () Bool)

(declare-fun tp!1750467 () Bool)

(assert (=> b!6280950 (= e!3819657 tp!1750467)))

(declare-fun b!6280951 () Bool)

(declare-fun e!3819646 () Bool)

(declare-fun tp_is_empty!41659 () Bool)

(declare-fun tp!1750466 () Bool)

(assert (=> b!6280951 (= e!3819646 (and tp_is_empty!41659 tp!1750466))))

(declare-fun b!6280952 () Bool)

(declare-fun res!2590525 () Bool)

(declare-fun e!3819648 () Bool)

(assert (=> b!6280952 (=> res!2590525 e!3819648)))

(declare-fun lt!2354647 () List!64910)

(declare-fun zipperDepth!328 (List!64910) Int)

(assert (=> b!6280952 (= res!2590525 (> (zipperDepth!328 lt!2354647) (zipperDepth!328 zl!343)))))

(declare-fun b!6280953 () Bool)

(declare-fun res!2590524 () Bool)

(assert (=> b!6280953 (=> (not res!2590524) (not e!3819651))))

(declare-fun unfocusZipper!1945 (List!64910) Regex!16203)

(assert (=> b!6280953 (= res!2590524 (= r!7292 (unfocusZipper!1945 zl!343)))))

(declare-fun setNonEmpty!42740 () Bool)

(declare-fun setElem!42740 () Context!11174)

(declare-fun tp!1750473 () Bool)

(declare-fun setRes!42740 () Bool)

(declare-fun e!3819660 () Bool)

(declare-fun inv!83754 (Context!11174) Bool)

(assert (=> setNonEmpty!42740 (= setRes!42740 (and tp!1750473 (inv!83754 setElem!42740) e!3819660))))

(declare-fun z!1189 () (InoxSet Context!11174))

(declare-fun setRest!42740 () (InoxSet Context!11174))

(assert (=> setNonEmpty!42740 (= z!1189 ((_ map or) (store ((as const (Array Context!11174 Bool)) false) setElem!42740 true) setRest!42740))))

(declare-fun b!6280954 () Bool)

(declare-fun derivationStepZipper!2169 ((InoxSet Context!11174) C!32676) (InoxSet Context!11174))

(assert (=> b!6280954 (= e!3819653 (not (matchZipper!2215 (derivationStepZipper!2169 lt!2354666 (h!71233 s!2326)) (t!378469 s!2326))))))

(declare-fun b!6280955 () Bool)

(declare-fun res!2590505 () Bool)

(declare-fun e!3819645 () Bool)

(assert (=> b!6280955 (=> res!2590505 e!3819645)))

(declare-fun isEmpty!36830 (List!64908) Bool)

(assert (=> b!6280955 (= res!2590505 (isEmpty!36830 (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun e!3819656 () Bool)

(declare-fun b!6280956 () Bool)

(declare-fun tp!1750465 () Bool)

(assert (=> b!6280956 (= e!3819656 (and (inv!83754 (h!71234 zl!343)) e!3819657 tp!1750465))))

(declare-fun setIsEmpty!42740 () Bool)

(assert (=> setIsEmpty!42740 setRes!42740))

(declare-fun b!6280957 () Bool)

(assert (=> b!6280957 (= e!3819664 e!3819648)))

(declare-fun res!2590520 () Bool)

(assert (=> b!6280957 (=> res!2590520 e!3819648)))

(declare-fun zipperDepthTotal!356 (List!64910) Int)

(assert (=> b!6280957 (= res!2590520 (>= (zipperDepthTotal!356 lt!2354647) (zipperDepthTotal!356 zl!343)))))

(declare-fun lt!2354638 () Context!11174)

(assert (=> b!6280957 (= lt!2354647 (Cons!64786 lt!2354638 Nil!64786))))

(declare-fun b!6280958 () Bool)

(declare-fun e!3819654 () Bool)

(declare-fun lt!2354634 () (InoxSet Context!11174))

(assert (=> b!6280958 (= e!3819654 (matchZipper!2215 lt!2354634 (t!378469 s!2326)))))

(declare-fun b!6280948 () Bool)

(declare-fun res!2590506 () Bool)

(assert (=> b!6280948 (=> res!2590506 e!3819649)))

(declare-fun nullable!6196 (Regex!16203) Bool)

(assert (=> b!6280948 (= res!2590506 (not (nullable!6196 (regOne!32918 (regOne!32918 r!7292)))))))

(declare-fun res!2590522 () Bool)

(assert (=> start!624334 (=> (not res!2590522) (not e!3819651))))

(declare-fun validRegex!7939 (Regex!16203) Bool)

(assert (=> start!624334 (= res!2590522 (validRegex!7939 r!7292))))

(assert (=> start!624334 e!3819651))

(assert (=> start!624334 e!3819652))

(declare-fun condSetEmpty!42740 () Bool)

(assert (=> start!624334 (= condSetEmpty!42740 (= z!1189 ((as const (Array Context!11174 Bool)) false)))))

(assert (=> start!624334 setRes!42740))

(assert (=> start!624334 e!3819656))

(assert (=> start!624334 e!3819646))

(declare-fun b!6280959 () Bool)

(declare-fun tp!1750471 () Bool)

(declare-fun tp!1750470 () Bool)

(assert (=> b!6280959 (= e!3819652 (and tp!1750471 tp!1750470))))

(declare-fun b!6280960 () Bool)

(declare-fun res!2590507 () Bool)

(assert (=> b!6280960 (=> res!2590507 e!3819664)))

(declare-fun contextDepthTotal!326 (Context!11174) Int)

(assert (=> b!6280960 (= res!2590507 (>= (contextDepthTotal!326 lt!2354638) (contextDepthTotal!326 (h!71234 zl!343))))))

(declare-fun b!6280961 () Bool)

(declare-fun e!3819658 () Bool)

(assert (=> b!6280961 (= e!3819658 e!3819661)))

(declare-fun res!2590513 () Bool)

(assert (=> b!6280961 (=> res!2590513 e!3819661)))

(assert (=> b!6280961 (= res!2590513 (not (= lt!2354669 lt!2354646)))))

(assert (=> b!6280961 (= lt!2354646 ((_ map or) lt!2354658 lt!2354664))))

(assert (=> b!6280961 (= lt!2354664 (derivationStepZipperUp!1377 lt!2354667 (h!71233 s!2326)))))

(declare-fun lt!2354675 () (InoxSet Context!11174))

(assert (=> b!6280961 (= (flatMap!1708 lt!2354675 lambda!344509) (derivationStepZipperUp!1377 lt!2354638 (h!71233 s!2326)))))

(declare-fun lt!2354663 () Unit!158143)

(assert (=> b!6280961 (= lt!2354663 (lemmaFlatMapOnSingletonSet!1234 lt!2354675 lt!2354638 lambda!344509))))

(declare-fun lt!2354636 () (InoxSet Context!11174))

(assert (=> b!6280961 (= lt!2354636 (derivationStepZipperUp!1377 lt!2354638 (h!71233 s!2326)))))

(assert (=> b!6280961 (= lt!2354669 (derivationStepZipper!2169 lt!2354675 (h!71233 s!2326)))))

(assert (=> b!6280961 (= lt!2354666 (store ((as const (Array Context!11174 Bool)) false) lt!2354667 true))))

(assert (=> b!6280961 (= lt!2354675 (store ((as const (Array Context!11174 Bool)) false) lt!2354638 true))))

(declare-fun lt!2354672 () List!64908)

(assert (=> b!6280961 (= lt!2354638 (Context!11175 lt!2354672))))

(assert (=> b!6280961 (= lt!2354672 (Cons!64784 (regOne!32918 (regOne!32918 r!7292)) lt!2354639))))

(declare-fun b!6280962 () Bool)

(declare-fun res!2590526 () Bool)

(assert (=> b!6280962 (=> res!2590526 e!3819663)))

(declare-fun generalisedUnion!2047 (List!64908) Regex!16203)

(declare-fun unfocusZipperList!1624 (List!64910) List!64908)

(assert (=> b!6280962 (= res!2590526 (not (= r!7292 (generalisedUnion!2047 (unfocusZipperList!1624 zl!343)))))))

(declare-fun b!6280963 () Bool)

(declare-fun res!2590509 () Bool)

(assert (=> b!6280963 (=> res!2590509 e!3819663)))

(assert (=> b!6280963 (= res!2590509 (not ((_ is Cons!64784) (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6280964 () Bool)

(declare-fun e!3819647 () Bool)

(assert (=> b!6280964 (= e!3819647 (matchZipper!2215 lt!2354648 (t!378469 s!2326)))))

(declare-fun b!6280965 () Bool)

(declare-fun res!2590521 () Bool)

(assert (=> b!6280965 (=> (not res!2590521) (not e!3819651))))

(declare-fun toList!9987 ((InoxSet Context!11174)) List!64910)

(assert (=> b!6280965 (= res!2590521 (= (toList!9987 z!1189) zl!343))))

(declare-fun b!6280966 () Bool)

(declare-fun e!3819650 () Bool)

(assert (=> b!6280966 (= e!3819650 (not (matchZipper!2215 lt!2354648 (t!378469 s!2326))))))

(assert (=> b!6280967 (= e!3819663 e!3819645)))

(declare-fun res!2590508 () Bool)

(assert (=> b!6280967 (=> res!2590508 e!3819645)))

(declare-fun lt!2354670 () Bool)

(assert (=> b!6280967 (= res!2590508 (or (not (= lt!2354649 lt!2354670)) ((_ is Nil!64785) s!2326)))))

(declare-fun Exists!3273 (Int) Bool)

(assert (=> b!6280967 (= (Exists!3273 lambda!344507) (Exists!3273 lambda!344508))))

(declare-fun lt!2354655 () Unit!158143)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1810 (Regex!16203 Regex!16203 List!64909) Unit!158143)

(assert (=> b!6280967 (= lt!2354655 (lemmaExistCutMatchRandMatchRSpecEquivalent!1810 (regOne!32918 r!7292) (regTwo!32918 r!7292) s!2326))))

(assert (=> b!6280967 (= lt!2354670 (Exists!3273 lambda!344507))))

(declare-datatypes ((tuple2!66364 0))(
  ( (tuple2!66365 (_1!36485 List!64909) (_2!36485 List!64909)) )
))
(declare-datatypes ((Option!16094 0))(
  ( (None!16093) (Some!16093 (v!52248 tuple2!66364)) )
))
(declare-fun isDefined!12797 (Option!16094) Bool)

(declare-fun findConcatSeparation!2508 (Regex!16203 Regex!16203 List!64909 List!64909 List!64909) Option!16094)

(assert (=> b!6280967 (= lt!2354670 (isDefined!12797 (findConcatSeparation!2508 (regOne!32918 r!7292) (regTwo!32918 r!7292) Nil!64785 s!2326 s!2326)))))

(declare-fun lt!2354651 () Unit!158143)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2272 (Regex!16203 Regex!16203 List!64909) Unit!158143)

(assert (=> b!6280967 (= lt!2354651 (lemmaFindConcatSeparationEquivalentToExists!2272 (regOne!32918 r!7292) (regTwo!32918 r!7292) s!2326))))

(declare-fun b!6280968 () Bool)

(assert (=> b!6280968 (= e!3819659 e!3819658)))

(declare-fun res!2590523 () Bool)

(assert (=> b!6280968 (=> res!2590523 e!3819658)))

(assert (=> b!6280968 (= res!2590523 e!3819650)))

(declare-fun res!2590529 () Bool)

(assert (=> b!6280968 (=> (not res!2590529) (not e!3819650))))

(assert (=> b!6280968 (= res!2590529 (not (= lt!2354643 lt!2354642)))))

(assert (=> b!6280968 (= lt!2354643 (matchZipper!2215 lt!2354662 (t!378469 s!2326)))))

(assert (=> b!6280968 (= (matchZipper!2215 lt!2354645 (t!378469 s!2326)) e!3819647)))

(declare-fun res!2590512 () Bool)

(assert (=> b!6280968 (=> res!2590512 e!3819647)))

(assert (=> b!6280968 (= res!2590512 lt!2354642)))

(assert (=> b!6280968 (= lt!2354642 (matchZipper!2215 lt!2354658 (t!378469 s!2326)))))

(declare-fun lt!2354653 () Unit!158143)

(assert (=> b!6280968 (= lt!2354653 (lemmaZipperConcatMatchesSameAsBothZippers!1034 lt!2354658 lt!2354648 (t!378469 s!2326)))))

(declare-fun b!6280969 () Bool)

(declare-fun res!2590518 () Bool)

(assert (=> b!6280969 (=> res!2590518 e!3819664)))

(assert (=> b!6280969 (= res!2590518 (not (= (exprs!6087 (h!71234 zl!343)) (Cons!64784 (Concat!25048 (regOne!32918 (regOne!32918 r!7292)) (regTwo!32918 (regOne!32918 r!7292))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))))

(assert (=> b!6280970 (= e!3819648 (validRegex!7939 (regTwo!32918 (regOne!32918 r!7292))))))

(declare-fun lt!2354674 () Regex!16203)

(declare-fun generalisedConcat!1800 (List!64908) Regex!16203)

(assert (=> b!6280970 (= lt!2354674 (generalisedConcat!1800 (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun lt!2354657 () Bool)

(assert (=> b!6280970 (= lt!2354657 (matchRSpec!3304 lt!2354652 s!2326))))

(declare-fun lt!2354641 () Unit!158143)

(assert (=> b!6280970 (= lt!2354641 (mainMatchTheorem!3304 lt!2354652 s!2326))))

(assert (=> b!6280970 (= (Exists!3273 lambda!344510) (Exists!3273 lambda!344511))))

(declare-fun lt!2354654 () Unit!158143)

(assert (=> b!6280970 (= lt!2354654 (lemmaExistCutMatchRandMatchRSpecEquivalent!1810 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 s!2326))))

(assert (=> b!6280970 (= (isDefined!12797 (findConcatSeparation!2508 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 Nil!64785 s!2326 s!2326)) (Exists!3273 lambda!344510))))

(declare-fun lt!2354650 () Unit!158143)

(assert (=> b!6280970 (= lt!2354650 (lemmaFindConcatSeparationEquivalentToExists!2272 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 s!2326))))

(declare-fun lt!2354635 () Bool)

(declare-fun lt!2354656 () Regex!16203)

(assert (=> b!6280970 (= lt!2354635 (matchRSpec!3304 lt!2354656 s!2326))))

(declare-fun lt!2354673 () Unit!158143)

(assert (=> b!6280970 (= lt!2354673 (mainMatchTheorem!3304 lt!2354656 s!2326))))

(assert (=> b!6280970 (= lt!2354657 (matchZipper!2215 lt!2354666 s!2326))))

(assert (=> b!6280970 (= lt!2354657 (matchR!8386 lt!2354652 s!2326))))

(declare-fun lt!2354671 () Unit!158143)

(declare-fun theoremZipperRegexEquiv!773 ((InoxSet Context!11174) List!64910 Regex!16203 List!64909) Unit!158143)

(assert (=> b!6280970 (= lt!2354671 (theoremZipperRegexEquiv!773 lt!2354666 (Cons!64786 lt!2354667 Nil!64786) lt!2354652 s!2326))))

(assert (=> b!6280970 (= lt!2354652 (generalisedConcat!1800 lt!2354639))))

(assert (=> b!6280970 (= lt!2354635 (matchZipper!2215 lt!2354675 s!2326))))

(assert (=> b!6280970 (= lt!2354635 (matchR!8386 lt!2354656 s!2326))))

(declare-fun lt!2354659 () Unit!158143)

(assert (=> b!6280970 (= lt!2354659 (theoremZipperRegexEquiv!773 lt!2354675 lt!2354647 lt!2354656 s!2326))))

(assert (=> b!6280970 (= lt!2354656 (generalisedConcat!1800 lt!2354672))))

(declare-fun b!6280971 () Bool)

(declare-fun tp!1750469 () Bool)

(assert (=> b!6280971 (= e!3819652 tp!1750469)))

(declare-fun b!6280972 () Bool)

(declare-fun tp!1750474 () Bool)

(assert (=> b!6280972 (= e!3819660 tp!1750474)))

(declare-fun b!6280973 () Bool)

(declare-fun res!2590519 () Bool)

(assert (=> b!6280973 (=> res!2590519 e!3819663)))

(assert (=> b!6280973 (= res!2590519 (not (= r!7292 (generalisedConcat!1800 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun b!6280974 () Bool)

(assert (=> b!6280974 (= e!3819662 (matchZipper!2215 lt!2354664 (t!378469 s!2326)))))

(declare-fun b!6280975 () Bool)

(assert (=> b!6280975 (= e!3819652 tp_is_empty!41659)))

(declare-fun b!6280976 () Bool)

(declare-fun Unit!158146 () Unit!158143)

(assert (=> b!6280976 (= e!3819655 Unit!158146)))

(declare-fun lt!2354637 () Unit!158143)

(assert (=> b!6280976 (= lt!2354637 (lemmaZipperConcatMatchesSameAsBothZippers!1034 lt!2354662 lt!2354634 (t!378469 s!2326)))))

(declare-fun res!2590527 () Bool)

(assert (=> b!6280976 (= res!2590527 (matchZipper!2215 lt!2354662 (t!378469 s!2326)))))

(assert (=> b!6280976 (=> res!2590527 e!3819654)))

(assert (=> b!6280976 (= (matchZipper!2215 ((_ map or) lt!2354662 lt!2354634) (t!378469 s!2326)) e!3819654)))

(assert (=> b!6280977 (= e!3819645 e!3819649)))

(declare-fun res!2590511 () Bool)

(assert (=> b!6280977 (=> res!2590511 e!3819649)))

(assert (=> b!6280977 (= res!2590511 (or (and ((_ is ElementMatch!16203) (regOne!32918 r!7292)) (= (c!1138982 (regOne!32918 r!7292)) (h!71233 s!2326))) ((_ is Union!16203) (regOne!32918 r!7292)) (not ((_ is Concat!25048) (regOne!32918 r!7292)))))))

(declare-fun lt!2354661 () Unit!158143)

(assert (=> b!6280977 (= lt!2354661 e!3819655)))

(declare-fun c!1138981 () Bool)

(assert (=> b!6280977 (= c!1138981 (nullable!6196 (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> b!6280977 (= (flatMap!1708 z!1189 lambda!344509) (derivationStepZipperUp!1377 (h!71234 zl!343) (h!71233 s!2326)))))

(declare-fun lt!2354644 () Unit!158143)

(assert (=> b!6280977 (= lt!2354644 (lemmaFlatMapOnSingletonSet!1234 z!1189 (h!71234 zl!343) lambda!344509))))

(assert (=> b!6280977 (= lt!2354634 (derivationStepZipperUp!1377 lt!2354668 (h!71233 s!2326)))))

(assert (=> b!6280977 (= lt!2354662 (derivationStepZipperDown!1451 (h!71232 (exprs!6087 (h!71234 zl!343))) lt!2354668 (h!71233 s!2326)))))

(assert (=> b!6280977 (= lt!2354668 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun lt!2354665 () (InoxSet Context!11174))

(assert (=> b!6280977 (= lt!2354665 (derivationStepZipperUp!1377 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))) (h!71233 s!2326)))))

(assert (= (and start!624334 res!2590522) b!6280965))

(assert (= (and b!6280965 res!2590521) b!6280953))

(assert (= (and b!6280953 res!2590524) b!6280946))

(assert (= (and b!6280946 (not res!2590515)) b!6280944))

(assert (= (and b!6280944 (not res!2590528)) b!6280973))

(assert (= (and b!6280973 (not res!2590519)) b!6280963))

(assert (= (and b!6280963 (not res!2590509)) b!6280962))

(assert (= (and b!6280962 (not res!2590526)) b!6280945))

(assert (= (and b!6280945 (not res!2590530)) b!6280967))

(assert (= (and b!6280967 (not res!2590508)) b!6280955))

(assert (= (and b!6280955 (not res!2590505)) b!6280977))

(assert (= (and b!6280977 c!1138981) b!6280976))

(assert (= (and b!6280977 (not c!1138981)) b!6280949))

(assert (= (and b!6280976 (not res!2590527)) b!6280958))

(assert (= (and b!6280977 (not res!2590511)) b!6280948))

(assert (= (and b!6280948 (not res!2590506)) b!6280942))

(assert (= (and b!6280942 (not res!2590514)) b!6280968))

(assert (= (and b!6280968 (not res!2590512)) b!6280964))

(assert (= (and b!6280968 res!2590529) b!6280966))

(assert (= (and b!6280968 (not res!2590523)) b!6280961))

(assert (= (and b!6280961 (not res!2590513)) b!6280947))

(assert (= (and b!6280947 (not res!2590510)) b!6280974))

(assert (= (and b!6280947 res!2590516) b!6280954))

(assert (= (and b!6280947 (not res!2590517)) b!6280969))

(assert (= (and b!6280969 (not res!2590518)) b!6280960))

(assert (= (and b!6280960 (not res!2590507)) b!6280957))

(assert (= (and b!6280957 (not res!2590520)) b!6280952))

(assert (= (and b!6280952 (not res!2590525)) b!6280970))

(assert (= (and start!624334 ((_ is ElementMatch!16203) r!7292)) b!6280975))

(assert (= (and start!624334 ((_ is Concat!25048) r!7292)) b!6280959))

(assert (= (and start!624334 ((_ is Star!16203) r!7292)) b!6280971))

(assert (= (and start!624334 ((_ is Union!16203) r!7292)) b!6280943))

(assert (= (and start!624334 condSetEmpty!42740) setIsEmpty!42740))

(assert (= (and start!624334 (not condSetEmpty!42740)) setNonEmpty!42740))

(assert (= setNonEmpty!42740 b!6280972))

(assert (= b!6280956 b!6280950))

(assert (= (and start!624334 ((_ is Cons!64786) zl!343)) b!6280956))

(assert (= (and start!624334 ((_ is Cons!64785) s!2326)) b!6280951))

(declare-fun m!7101872 () Bool)

(assert (=> b!6280976 m!7101872))

(declare-fun m!7101874 () Bool)

(assert (=> b!6280976 m!7101874))

(declare-fun m!7101876 () Bool)

(assert (=> b!6280976 m!7101876))

(declare-fun m!7101878 () Bool)

(assert (=> start!624334 m!7101878))

(assert (=> b!6280968 m!7101874))

(declare-fun m!7101880 () Bool)

(assert (=> b!6280968 m!7101880))

(declare-fun m!7101882 () Bool)

(assert (=> b!6280968 m!7101882))

(declare-fun m!7101884 () Bool)

(assert (=> b!6280968 m!7101884))

(declare-fun m!7101886 () Bool)

(assert (=> b!6280946 m!7101886))

(declare-fun m!7101888 () Bool)

(assert (=> b!6280946 m!7101888))

(declare-fun m!7101890 () Bool)

(assert (=> b!6280946 m!7101890))

(declare-fun m!7101892 () Bool)

(assert (=> b!6280958 m!7101892))

(declare-fun m!7101894 () Bool)

(assert (=> b!6280967 m!7101894))

(declare-fun m!7101896 () Bool)

(assert (=> b!6280967 m!7101896))

(declare-fun m!7101898 () Bool)

(assert (=> b!6280967 m!7101898))

(declare-fun m!7101900 () Bool)

(assert (=> b!6280967 m!7101900))

(declare-fun m!7101902 () Bool)

(assert (=> b!6280967 m!7101902))

(assert (=> b!6280967 m!7101900))

(assert (=> b!6280967 m!7101896))

(declare-fun m!7101904 () Bool)

(assert (=> b!6280967 m!7101904))

(declare-fun m!7101906 () Bool)

(assert (=> b!6280960 m!7101906))

(declare-fun m!7101908 () Bool)

(assert (=> b!6280960 m!7101908))

(declare-fun m!7101910 () Bool)

(assert (=> b!6280973 m!7101910))

(declare-fun m!7101912 () Bool)

(assert (=> b!6280952 m!7101912))

(declare-fun m!7101914 () Bool)

(assert (=> b!6280952 m!7101914))

(declare-fun m!7101916 () Bool)

(assert (=> b!6280964 m!7101916))

(declare-fun m!7101918 () Bool)

(assert (=> b!6280961 m!7101918))

(declare-fun m!7101920 () Bool)

(assert (=> b!6280961 m!7101920))

(declare-fun m!7101922 () Bool)

(assert (=> b!6280961 m!7101922))

(declare-fun m!7101924 () Bool)

(assert (=> b!6280961 m!7101924))

(declare-fun m!7101926 () Bool)

(assert (=> b!6280961 m!7101926))

(declare-fun m!7101928 () Bool)

(assert (=> b!6280961 m!7101928))

(declare-fun m!7101930 () Bool)

(assert (=> b!6280961 m!7101930))

(declare-fun m!7101932 () Bool)

(assert (=> b!6280942 m!7101932))

(declare-fun m!7101934 () Bool)

(assert (=> b!6280942 m!7101934))

(declare-fun m!7101936 () Bool)

(assert (=> b!6280977 m!7101936))

(declare-fun m!7101938 () Bool)

(assert (=> b!6280977 m!7101938))

(declare-fun m!7101940 () Bool)

(assert (=> b!6280977 m!7101940))

(declare-fun m!7101942 () Bool)

(assert (=> b!6280977 m!7101942))

(declare-fun m!7101944 () Bool)

(assert (=> b!6280977 m!7101944))

(declare-fun m!7101946 () Bool)

(assert (=> b!6280977 m!7101946))

(declare-fun m!7101948 () Bool)

(assert (=> b!6280977 m!7101948))

(declare-fun m!7101950 () Bool)

(assert (=> b!6280957 m!7101950))

(declare-fun m!7101952 () Bool)

(assert (=> b!6280957 m!7101952))

(declare-fun m!7101954 () Bool)

(assert (=> b!6280954 m!7101954))

(assert (=> b!6280954 m!7101954))

(declare-fun m!7101956 () Bool)

(assert (=> b!6280954 m!7101956))

(declare-fun m!7101958 () Bool)

(assert (=> b!6280948 m!7101958))

(declare-fun m!7101960 () Bool)

(assert (=> b!6280962 m!7101960))

(assert (=> b!6280962 m!7101960))

(declare-fun m!7101962 () Bool)

(assert (=> b!6280962 m!7101962))

(declare-fun m!7101964 () Bool)

(assert (=> b!6280953 m!7101964))

(declare-fun m!7101966 () Bool)

(assert (=> b!6280956 m!7101966))

(declare-fun m!7101968 () Bool)

(assert (=> b!6280947 m!7101968))

(assert (=> b!6280947 m!7101920))

(declare-fun m!7101970 () Bool)

(assert (=> b!6280947 m!7101970))

(declare-fun m!7101972 () Bool)

(assert (=> b!6280947 m!7101972))

(declare-fun m!7101974 () Bool)

(assert (=> b!6280947 m!7101974))

(declare-fun m!7101976 () Bool)

(assert (=> b!6280947 m!7101976))

(declare-fun m!7101978 () Bool)

(assert (=> b!6280944 m!7101978))

(assert (=> b!6280966 m!7101916))

(declare-fun m!7101980 () Bool)

(assert (=> b!6280965 m!7101980))

(declare-fun m!7101982 () Bool)

(assert (=> b!6280955 m!7101982))

(declare-fun m!7101984 () Bool)

(assert (=> b!6280970 m!7101984))

(declare-fun m!7101986 () Bool)

(assert (=> b!6280970 m!7101986))

(declare-fun m!7101988 () Bool)

(assert (=> b!6280970 m!7101988))

(declare-fun m!7101990 () Bool)

(assert (=> b!6280970 m!7101990))

(declare-fun m!7101992 () Bool)

(assert (=> b!6280970 m!7101992))

(declare-fun m!7101994 () Bool)

(assert (=> b!6280970 m!7101994))

(declare-fun m!7101996 () Bool)

(assert (=> b!6280970 m!7101996))

(assert (=> b!6280970 m!7101994))

(declare-fun m!7101998 () Bool)

(assert (=> b!6280970 m!7101998))

(assert (=> b!6280970 m!7101990))

(declare-fun m!7102000 () Bool)

(assert (=> b!6280970 m!7102000))

(declare-fun m!7102002 () Bool)

(assert (=> b!6280970 m!7102002))

(declare-fun m!7102004 () Bool)

(assert (=> b!6280970 m!7102004))

(declare-fun m!7102006 () Bool)

(assert (=> b!6280970 m!7102006))

(declare-fun m!7102008 () Bool)

(assert (=> b!6280970 m!7102008))

(declare-fun m!7102010 () Bool)

(assert (=> b!6280970 m!7102010))

(declare-fun m!7102012 () Bool)

(assert (=> b!6280970 m!7102012))

(declare-fun m!7102014 () Bool)

(assert (=> b!6280970 m!7102014))

(declare-fun m!7102016 () Bool)

(assert (=> b!6280970 m!7102016))

(declare-fun m!7102018 () Bool)

(assert (=> b!6280970 m!7102018))

(declare-fun m!7102020 () Bool)

(assert (=> b!6280970 m!7102020))

(declare-fun m!7102022 () Bool)

(assert (=> b!6280970 m!7102022))

(declare-fun m!7102024 () Bool)

(assert (=> b!6280974 m!7102024))

(declare-fun m!7102026 () Bool)

(assert (=> setNonEmpty!42740 m!7102026))

(check-sat (not b!6280965) (not b!6280976) (not start!624334) tp_is_empty!41659 (not b!6280973) (not b!6280943) (not b!6280974) (not b!6280962) (not b!6280951) (not b!6280956) (not b!6280972) (not b!6280942) (not b!6280948) (not b!6280967) (not b!6280960) (not b!6280952) (not b!6280968) (not b!6280961) (not b!6280959) (not b!6280958) (not b!6280944) (not b!6280953) (not setNonEmpty!42740) (not b!6280966) (not b!6280971) (not b!6280970) (not b!6280954) (not b!6280955) (not b!6280950) (not b!6280964) (not b!6280947) (not b!6280957) (not b!6280977) (not b!6280946))
(check-sat)
(get-model)

(declare-fun d!1971289 () Bool)

(declare-fun choose!46643 (Int) Bool)

(assert (=> d!1971289 (= (Exists!3273 lambda!344508) (choose!46643 lambda!344508))))

(declare-fun bs!1568957 () Bool)

(assert (= bs!1568957 d!1971289))

(declare-fun m!7102492 () Bool)

(assert (=> bs!1568957 m!7102492))

(assert (=> b!6280967 d!1971289))

(declare-fun b!6281529 () Bool)

(declare-fun e!3819973 () Bool)

(assert (=> b!6281529 (= e!3819973 (matchR!8386 (regTwo!32918 r!7292) s!2326))))

(declare-fun b!6281530 () Bool)

(declare-fun e!3819974 () Bool)

(declare-fun lt!2354770 () Option!16094)

(assert (=> b!6281530 (= e!3819974 (not (isDefined!12797 lt!2354770)))))

(declare-fun b!6281531 () Bool)

(declare-fun e!3819975 () Bool)

(declare-fun ++!14276 (List!64909 List!64909) List!64909)

(declare-fun get!22393 (Option!16094) tuple2!66364)

(assert (=> b!6281531 (= e!3819975 (= (++!14276 (_1!36485 (get!22393 lt!2354770)) (_2!36485 (get!22393 lt!2354770))) s!2326))))

(declare-fun b!6281532 () Bool)

(declare-fun e!3819972 () Option!16094)

(assert (=> b!6281532 (= e!3819972 None!16093)))

(declare-fun d!1971291 () Bool)

(assert (=> d!1971291 e!3819974))

(declare-fun res!2590702 () Bool)

(assert (=> d!1971291 (=> res!2590702 e!3819974)))

(assert (=> d!1971291 (= res!2590702 e!3819975)))

(declare-fun res!2590703 () Bool)

(assert (=> d!1971291 (=> (not res!2590703) (not e!3819975))))

(assert (=> d!1971291 (= res!2590703 (isDefined!12797 lt!2354770))))

(declare-fun e!3819976 () Option!16094)

(assert (=> d!1971291 (= lt!2354770 e!3819976)))

(declare-fun c!1139152 () Bool)

(assert (=> d!1971291 (= c!1139152 e!3819973)))

(declare-fun res!2590700 () Bool)

(assert (=> d!1971291 (=> (not res!2590700) (not e!3819973))))

(assert (=> d!1971291 (= res!2590700 (matchR!8386 (regOne!32918 r!7292) Nil!64785))))

(assert (=> d!1971291 (validRegex!7939 (regOne!32918 r!7292))))

(assert (=> d!1971291 (= (findConcatSeparation!2508 (regOne!32918 r!7292) (regTwo!32918 r!7292) Nil!64785 s!2326 s!2326) lt!2354770)))

(declare-fun b!6281533 () Bool)

(assert (=> b!6281533 (= e!3819976 (Some!16093 (tuple2!66365 Nil!64785 s!2326)))))

(declare-fun b!6281534 () Bool)

(declare-fun lt!2354769 () Unit!158143)

(declare-fun lt!2354771 () Unit!158143)

(assert (=> b!6281534 (= lt!2354769 lt!2354771)))

(assert (=> b!6281534 (= (++!14276 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (t!378469 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2371 (List!64909 C!32676 List!64909 List!64909) Unit!158143)

(assert (=> b!6281534 (= lt!2354771 (lemmaMoveElementToOtherListKeepsConcatEq!2371 Nil!64785 (h!71233 s!2326) (t!378469 s!2326) s!2326))))

(assert (=> b!6281534 (= e!3819972 (findConcatSeparation!2508 (regOne!32918 r!7292) (regTwo!32918 r!7292) (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (t!378469 s!2326) s!2326))))

(declare-fun b!6281535 () Bool)

(declare-fun res!2590704 () Bool)

(assert (=> b!6281535 (=> (not res!2590704) (not e!3819975))))

(assert (=> b!6281535 (= res!2590704 (matchR!8386 (regTwo!32918 r!7292) (_2!36485 (get!22393 lt!2354770))))))

(declare-fun b!6281536 () Bool)

(assert (=> b!6281536 (= e!3819976 e!3819972)))

(declare-fun c!1139151 () Bool)

(assert (=> b!6281536 (= c!1139151 ((_ is Nil!64785) s!2326))))

(declare-fun b!6281537 () Bool)

(declare-fun res!2590701 () Bool)

(assert (=> b!6281537 (=> (not res!2590701) (not e!3819975))))

(assert (=> b!6281537 (= res!2590701 (matchR!8386 (regOne!32918 r!7292) (_1!36485 (get!22393 lt!2354770))))))

(assert (= (and d!1971291 res!2590700) b!6281529))

(assert (= (and d!1971291 c!1139152) b!6281533))

(assert (= (and d!1971291 (not c!1139152)) b!6281536))

(assert (= (and b!6281536 c!1139151) b!6281532))

(assert (= (and b!6281536 (not c!1139151)) b!6281534))

(assert (= (and d!1971291 res!2590703) b!6281537))

(assert (= (and b!6281537 res!2590701) b!6281535))

(assert (= (and b!6281535 res!2590704) b!6281531))

(assert (= (and d!1971291 (not res!2590702)) b!6281530))

(declare-fun m!7102494 () Bool)

(assert (=> d!1971291 m!7102494))

(declare-fun m!7102496 () Bool)

(assert (=> d!1971291 m!7102496))

(declare-fun m!7102498 () Bool)

(assert (=> d!1971291 m!7102498))

(declare-fun m!7102500 () Bool)

(assert (=> b!6281534 m!7102500))

(assert (=> b!6281534 m!7102500))

(declare-fun m!7102502 () Bool)

(assert (=> b!6281534 m!7102502))

(declare-fun m!7102504 () Bool)

(assert (=> b!6281534 m!7102504))

(assert (=> b!6281534 m!7102500))

(declare-fun m!7102506 () Bool)

(assert (=> b!6281534 m!7102506))

(declare-fun m!7102508 () Bool)

(assert (=> b!6281535 m!7102508))

(declare-fun m!7102510 () Bool)

(assert (=> b!6281535 m!7102510))

(assert (=> b!6281530 m!7102494))

(declare-fun m!7102512 () Bool)

(assert (=> b!6281529 m!7102512))

(assert (=> b!6281537 m!7102508))

(declare-fun m!7102514 () Bool)

(assert (=> b!6281537 m!7102514))

(assert (=> b!6281531 m!7102508))

(declare-fun m!7102516 () Bool)

(assert (=> b!6281531 m!7102516))

(assert (=> b!6280967 d!1971291))

(declare-fun d!1971293 () Bool)

(assert (=> d!1971293 (= (Exists!3273 lambda!344507) (choose!46643 lambda!344507))))

(declare-fun bs!1568958 () Bool)

(assert (= bs!1568958 d!1971293))

(declare-fun m!7102518 () Bool)

(assert (=> bs!1568958 m!7102518))

(assert (=> b!6280967 d!1971293))

(declare-fun bs!1568959 () Bool)

(declare-fun d!1971295 () Bool)

(assert (= bs!1568959 (and d!1971295 b!6280967)))

(declare-fun lambda!344568 () Int)

(assert (=> bs!1568959 (= lambda!344568 lambda!344507)))

(assert (=> bs!1568959 (not (= lambda!344568 lambda!344508))))

(declare-fun bs!1568960 () Bool)

(assert (= bs!1568960 (and d!1971295 b!6280970)))

(assert (=> bs!1568960 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344568 lambda!344510))))

(assert (=> bs!1568960 (not (= lambda!344568 lambda!344511))))

(assert (=> d!1971295 true))

(assert (=> d!1971295 true))

(assert (=> d!1971295 true))

(assert (=> d!1971295 (= (isDefined!12797 (findConcatSeparation!2508 (regOne!32918 r!7292) (regTwo!32918 r!7292) Nil!64785 s!2326 s!2326)) (Exists!3273 lambda!344568))))

(declare-fun lt!2354774 () Unit!158143)

(declare-fun choose!46644 (Regex!16203 Regex!16203 List!64909) Unit!158143)

(assert (=> d!1971295 (= lt!2354774 (choose!46644 (regOne!32918 r!7292) (regTwo!32918 r!7292) s!2326))))

(assert (=> d!1971295 (validRegex!7939 (regOne!32918 r!7292))))

(assert (=> d!1971295 (= (lemmaFindConcatSeparationEquivalentToExists!2272 (regOne!32918 r!7292) (regTwo!32918 r!7292) s!2326) lt!2354774)))

(declare-fun bs!1568961 () Bool)

(assert (= bs!1568961 d!1971295))

(assert (=> bs!1568961 m!7101896))

(assert (=> bs!1568961 m!7101898))

(declare-fun m!7102520 () Bool)

(assert (=> bs!1568961 m!7102520))

(declare-fun m!7102522 () Bool)

(assert (=> bs!1568961 m!7102522))

(assert (=> bs!1568961 m!7101896))

(assert (=> bs!1568961 m!7102498))

(assert (=> b!6280967 d!1971295))

(declare-fun bs!1568962 () Bool)

(declare-fun d!1971297 () Bool)

(assert (= bs!1568962 (and d!1971297 b!6280967)))

(declare-fun lambda!344573 () Int)

(assert (=> bs!1568962 (= lambda!344573 lambda!344507)))

(declare-fun bs!1568963 () Bool)

(assert (= bs!1568963 (and d!1971297 d!1971295)))

(assert (=> bs!1568963 (= lambda!344573 lambda!344568)))

(declare-fun bs!1568964 () Bool)

(assert (= bs!1568964 (and d!1971297 b!6280970)))

(assert (=> bs!1568964 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344573 lambda!344510))))

(assert (=> bs!1568964 (not (= lambda!344573 lambda!344511))))

(assert (=> bs!1568962 (not (= lambda!344573 lambda!344508))))

(assert (=> d!1971297 true))

(assert (=> d!1971297 true))

(assert (=> d!1971297 true))

(declare-fun lambda!344574 () Int)

(assert (=> bs!1568962 (not (= lambda!344574 lambda!344507))))

(assert (=> bs!1568963 (not (= lambda!344574 lambda!344568))))

(declare-fun bs!1568965 () Bool)

(assert (= bs!1568965 d!1971297))

(assert (=> bs!1568965 (not (= lambda!344574 lambda!344573))))

(assert (=> bs!1568964 (not (= lambda!344574 lambda!344510))))

(assert (=> bs!1568964 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344574 lambda!344511))))

(assert (=> bs!1568962 (= lambda!344574 lambda!344508)))

(assert (=> d!1971297 true))

(assert (=> d!1971297 true))

(assert (=> d!1971297 true))

(assert (=> d!1971297 (= (Exists!3273 lambda!344573) (Exists!3273 lambda!344574))))

(declare-fun lt!2354777 () Unit!158143)

(declare-fun choose!46645 (Regex!16203 Regex!16203 List!64909) Unit!158143)

(assert (=> d!1971297 (= lt!2354777 (choose!46645 (regOne!32918 r!7292) (regTwo!32918 r!7292) s!2326))))

(assert (=> d!1971297 (validRegex!7939 (regOne!32918 r!7292))))

(assert (=> d!1971297 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1810 (regOne!32918 r!7292) (regTwo!32918 r!7292) s!2326) lt!2354777)))

(declare-fun m!7102524 () Bool)

(assert (=> bs!1568965 m!7102524))

(declare-fun m!7102526 () Bool)

(assert (=> bs!1568965 m!7102526))

(declare-fun m!7102528 () Bool)

(assert (=> bs!1568965 m!7102528))

(assert (=> bs!1568965 m!7102498))

(assert (=> b!6280967 d!1971297))

(declare-fun d!1971299 () Bool)

(declare-fun isEmpty!36833 (Option!16094) Bool)

(assert (=> d!1971299 (= (isDefined!12797 (findConcatSeparation!2508 (regOne!32918 r!7292) (regTwo!32918 r!7292) Nil!64785 s!2326 s!2326)) (not (isEmpty!36833 (findConcatSeparation!2508 (regOne!32918 r!7292) (regTwo!32918 r!7292) Nil!64785 s!2326 s!2326))))))

(declare-fun bs!1568966 () Bool)

(assert (= bs!1568966 d!1971299))

(assert (=> bs!1568966 m!7101896))

(declare-fun m!7102530 () Bool)

(assert (=> bs!1568966 m!7102530))

(assert (=> b!6280967 d!1971299))

(declare-fun d!1971301 () Bool)

(declare-fun c!1139155 () Bool)

(declare-fun isEmpty!36834 (List!64909) Bool)

(assert (=> d!1971301 (= c!1139155 (isEmpty!36834 (t!378469 s!2326)))))

(declare-fun e!3819985 () Bool)

(assert (=> d!1971301 (= (matchZipper!2215 lt!2354648 (t!378469 s!2326)) e!3819985)))

(declare-fun b!6281554 () Bool)

(declare-fun nullableZipper!1973 ((InoxSet Context!11174)) Bool)

(assert (=> b!6281554 (= e!3819985 (nullableZipper!1973 lt!2354648))))

(declare-fun b!6281555 () Bool)

(declare-fun head!12906 (List!64909) C!32676)

(declare-fun tail!11991 (List!64909) List!64909)

(assert (=> b!6281555 (= e!3819985 (matchZipper!2215 (derivationStepZipper!2169 lt!2354648 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))))))

(assert (= (and d!1971301 c!1139155) b!6281554))

(assert (= (and d!1971301 (not c!1139155)) b!6281555))

(declare-fun m!7102532 () Bool)

(assert (=> d!1971301 m!7102532))

(declare-fun m!7102534 () Bool)

(assert (=> b!6281554 m!7102534))

(declare-fun m!7102536 () Bool)

(assert (=> b!6281555 m!7102536))

(assert (=> b!6281555 m!7102536))

(declare-fun m!7102538 () Bool)

(assert (=> b!6281555 m!7102538))

(declare-fun m!7102540 () Bool)

(assert (=> b!6281555 m!7102540))

(assert (=> b!6281555 m!7102538))

(assert (=> b!6281555 m!7102540))

(declare-fun m!7102542 () Bool)

(assert (=> b!6281555 m!7102542))

(assert (=> b!6280966 d!1971301))

(declare-fun d!1971303 () Bool)

(declare-fun dynLambda!25629 (Int Context!11174) (InoxSet Context!11174))

(assert (=> d!1971303 (= (flatMap!1708 lt!2354666 lambda!344509) (dynLambda!25629 lambda!344509 lt!2354667))))

(declare-fun lt!2354780 () Unit!158143)

(declare-fun choose!46646 ((InoxSet Context!11174) Context!11174 Int) Unit!158143)

(assert (=> d!1971303 (= lt!2354780 (choose!46646 lt!2354666 lt!2354667 lambda!344509))))

(assert (=> d!1971303 (= lt!2354666 (store ((as const (Array Context!11174 Bool)) false) lt!2354667 true))))

(assert (=> d!1971303 (= (lemmaFlatMapOnSingletonSet!1234 lt!2354666 lt!2354667 lambda!344509) lt!2354780)))

(declare-fun b_lambda!239113 () Bool)

(assert (=> (not b_lambda!239113) (not d!1971303)))

(declare-fun bs!1568967 () Bool)

(assert (= bs!1568967 d!1971303))

(assert (=> bs!1568967 m!7101972))

(declare-fun m!7102544 () Bool)

(assert (=> bs!1568967 m!7102544))

(declare-fun m!7102546 () Bool)

(assert (=> bs!1568967 m!7102546))

(assert (=> bs!1568967 m!7101926))

(assert (=> b!6280947 d!1971303))

(declare-fun d!1971305 () Bool)

(declare-fun c!1139156 () Bool)

(assert (=> d!1971305 (= c!1139156 (isEmpty!36834 (t!378469 s!2326)))))

(declare-fun e!3819986 () Bool)

(assert (=> d!1971305 (= (matchZipper!2215 lt!2354646 (t!378469 s!2326)) e!3819986)))

(declare-fun b!6281556 () Bool)

(assert (=> b!6281556 (= e!3819986 (nullableZipper!1973 lt!2354646))))

(declare-fun b!6281557 () Bool)

(assert (=> b!6281557 (= e!3819986 (matchZipper!2215 (derivationStepZipper!2169 lt!2354646 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))))))

(assert (= (and d!1971305 c!1139156) b!6281556))

(assert (= (and d!1971305 (not c!1139156)) b!6281557))

(assert (=> d!1971305 m!7102532))

(declare-fun m!7102548 () Bool)

(assert (=> b!6281556 m!7102548))

(assert (=> b!6281557 m!7102536))

(assert (=> b!6281557 m!7102536))

(declare-fun m!7102550 () Bool)

(assert (=> b!6281557 m!7102550))

(assert (=> b!6281557 m!7102540))

(assert (=> b!6281557 m!7102550))

(assert (=> b!6281557 m!7102540))

(declare-fun m!7102552 () Bool)

(assert (=> b!6281557 m!7102552))

(assert (=> b!6280947 d!1971305))

(declare-fun d!1971307 () Bool)

(declare-fun choose!46647 ((InoxSet Context!11174) Int) (InoxSet Context!11174))

(assert (=> d!1971307 (= (flatMap!1708 lt!2354666 lambda!344509) (choose!46647 lt!2354666 lambda!344509))))

(declare-fun bs!1568968 () Bool)

(assert (= bs!1568968 d!1971307))

(declare-fun m!7102554 () Bool)

(assert (=> bs!1568968 m!7102554))

(assert (=> b!6280947 d!1971307))

(declare-fun d!1971309 () Bool)

(declare-fun c!1139157 () Bool)

(assert (=> d!1971309 (= c!1139157 (isEmpty!36834 (t!378469 s!2326)))))

(declare-fun e!3819987 () Bool)

(assert (=> d!1971309 (= (matchZipper!2215 lt!2354669 (t!378469 s!2326)) e!3819987)))

(declare-fun b!6281558 () Bool)

(assert (=> b!6281558 (= e!3819987 (nullableZipper!1973 lt!2354669))))

(declare-fun b!6281559 () Bool)

(assert (=> b!6281559 (= e!3819987 (matchZipper!2215 (derivationStepZipper!2169 lt!2354669 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))))))

(assert (= (and d!1971309 c!1139157) b!6281558))

(assert (= (and d!1971309 (not c!1139157)) b!6281559))

(assert (=> d!1971309 m!7102532))

(declare-fun m!7102556 () Bool)

(assert (=> b!6281558 m!7102556))

(assert (=> b!6281559 m!7102536))

(assert (=> b!6281559 m!7102536))

(declare-fun m!7102558 () Bool)

(assert (=> b!6281559 m!7102558))

(assert (=> b!6281559 m!7102540))

(assert (=> b!6281559 m!7102558))

(assert (=> b!6281559 m!7102540))

(declare-fun m!7102560 () Bool)

(assert (=> b!6281559 m!7102560))

(assert (=> b!6280947 d!1971309))

(declare-fun e!3819990 () Bool)

(declare-fun d!1971311 () Bool)

(assert (=> d!1971311 (= (matchZipper!2215 ((_ map or) lt!2354658 lt!2354664) (t!378469 s!2326)) e!3819990)))

(declare-fun res!2590719 () Bool)

(assert (=> d!1971311 (=> res!2590719 e!3819990)))

(assert (=> d!1971311 (= res!2590719 (matchZipper!2215 lt!2354658 (t!378469 s!2326)))))

(declare-fun lt!2354783 () Unit!158143)

(declare-fun choose!46648 ((InoxSet Context!11174) (InoxSet Context!11174) List!64909) Unit!158143)

(assert (=> d!1971311 (= lt!2354783 (choose!46648 lt!2354658 lt!2354664 (t!378469 s!2326)))))

(assert (=> d!1971311 (= (lemmaZipperConcatMatchesSameAsBothZippers!1034 lt!2354658 lt!2354664 (t!378469 s!2326)) lt!2354783)))

(declare-fun b!6281562 () Bool)

(assert (=> b!6281562 (= e!3819990 (matchZipper!2215 lt!2354664 (t!378469 s!2326)))))

(assert (= (and d!1971311 (not res!2590719)) b!6281562))

(declare-fun m!7102562 () Bool)

(assert (=> d!1971311 m!7102562))

(assert (=> d!1971311 m!7101882))

(declare-fun m!7102564 () Bool)

(assert (=> d!1971311 m!7102564))

(assert (=> b!6281562 m!7102024))

(assert (=> b!6280947 d!1971311))

(declare-fun bm!531578 () Bool)

(declare-fun call!531583 () (InoxSet Context!11174))

(assert (=> bm!531578 (= call!531583 (derivationStepZipperDown!1451 (h!71232 (exprs!6087 lt!2354667)) (Context!11175 (t!378468 (exprs!6087 lt!2354667))) (h!71233 s!2326)))))

(declare-fun b!6281573 () Bool)

(declare-fun e!3819998 () (InoxSet Context!11174))

(assert (=> b!6281573 (= e!3819998 ((as const (Array Context!11174 Bool)) false))))

(declare-fun b!6281574 () Bool)

(declare-fun e!3819999 () (InoxSet Context!11174))

(assert (=> b!6281574 (= e!3819999 e!3819998)))

(declare-fun c!1139163 () Bool)

(assert (=> b!6281574 (= c!1139163 ((_ is Cons!64784) (exprs!6087 lt!2354667)))))

(declare-fun b!6281575 () Bool)

(assert (=> b!6281575 (= e!3819999 ((_ map or) call!531583 (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 lt!2354667))) (h!71233 s!2326))))))

(declare-fun d!1971313 () Bool)

(declare-fun c!1139162 () Bool)

(declare-fun e!3819997 () Bool)

(assert (=> d!1971313 (= c!1139162 e!3819997)))

(declare-fun res!2590722 () Bool)

(assert (=> d!1971313 (=> (not res!2590722) (not e!3819997))))

(assert (=> d!1971313 (= res!2590722 ((_ is Cons!64784) (exprs!6087 lt!2354667)))))

(assert (=> d!1971313 (= (derivationStepZipperUp!1377 lt!2354667 (h!71233 s!2326)) e!3819999)))

(declare-fun b!6281576 () Bool)

(assert (=> b!6281576 (= e!3819997 (nullable!6196 (h!71232 (exprs!6087 lt!2354667))))))

(declare-fun b!6281577 () Bool)

(assert (=> b!6281577 (= e!3819998 call!531583)))

(assert (= (and d!1971313 res!2590722) b!6281576))

(assert (= (and d!1971313 c!1139162) b!6281575))

(assert (= (and d!1971313 (not c!1139162)) b!6281574))

(assert (= (and b!6281574 c!1139163) b!6281577))

(assert (= (and b!6281574 (not c!1139163)) b!6281573))

(assert (= (or b!6281575 b!6281577) bm!531578))

(declare-fun m!7102566 () Bool)

(assert (=> bm!531578 m!7102566))

(declare-fun m!7102568 () Bool)

(assert (=> b!6281575 m!7102568))

(declare-fun m!7102570 () Bool)

(assert (=> b!6281576 m!7102570))

(assert (=> b!6280947 d!1971313))

(declare-fun d!1971315 () Bool)

(declare-fun c!1139164 () Bool)

(assert (=> d!1971315 (= c!1139164 (isEmpty!36834 (t!378469 s!2326)))))

(declare-fun e!3820000 () Bool)

(assert (=> d!1971315 (= (matchZipper!2215 lt!2354662 (t!378469 s!2326)) e!3820000)))

(declare-fun b!6281578 () Bool)

(assert (=> b!6281578 (= e!3820000 (nullableZipper!1973 lt!2354662))))

(declare-fun b!6281579 () Bool)

(assert (=> b!6281579 (= e!3820000 (matchZipper!2215 (derivationStepZipper!2169 lt!2354662 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))))))

(assert (= (and d!1971315 c!1139164) b!6281578))

(assert (= (and d!1971315 (not c!1139164)) b!6281579))

(assert (=> d!1971315 m!7102532))

(declare-fun m!7102572 () Bool)

(assert (=> b!6281578 m!7102572))

(assert (=> b!6281579 m!7102536))

(assert (=> b!6281579 m!7102536))

(declare-fun m!7102574 () Bool)

(assert (=> b!6281579 m!7102574))

(assert (=> b!6281579 m!7102540))

(assert (=> b!6281579 m!7102574))

(assert (=> b!6281579 m!7102540))

(declare-fun m!7102576 () Bool)

(assert (=> b!6281579 m!7102576))

(assert (=> b!6280968 d!1971315))

(declare-fun d!1971317 () Bool)

(declare-fun c!1139165 () Bool)

(assert (=> d!1971317 (= c!1139165 (isEmpty!36834 (t!378469 s!2326)))))

(declare-fun e!3820001 () Bool)

(assert (=> d!1971317 (= (matchZipper!2215 lt!2354645 (t!378469 s!2326)) e!3820001)))

(declare-fun b!6281580 () Bool)

(assert (=> b!6281580 (= e!3820001 (nullableZipper!1973 lt!2354645))))

(declare-fun b!6281581 () Bool)

(assert (=> b!6281581 (= e!3820001 (matchZipper!2215 (derivationStepZipper!2169 lt!2354645 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))))))

(assert (= (and d!1971317 c!1139165) b!6281580))

(assert (= (and d!1971317 (not c!1139165)) b!6281581))

(assert (=> d!1971317 m!7102532))

(declare-fun m!7102578 () Bool)

(assert (=> b!6281580 m!7102578))

(assert (=> b!6281581 m!7102536))

(assert (=> b!6281581 m!7102536))

(declare-fun m!7102580 () Bool)

(assert (=> b!6281581 m!7102580))

(assert (=> b!6281581 m!7102540))

(assert (=> b!6281581 m!7102580))

(assert (=> b!6281581 m!7102540))

(declare-fun m!7102582 () Bool)

(assert (=> b!6281581 m!7102582))

(assert (=> b!6280968 d!1971317))

(declare-fun d!1971319 () Bool)

(declare-fun c!1139166 () Bool)

(assert (=> d!1971319 (= c!1139166 (isEmpty!36834 (t!378469 s!2326)))))

(declare-fun e!3820002 () Bool)

(assert (=> d!1971319 (= (matchZipper!2215 lt!2354658 (t!378469 s!2326)) e!3820002)))

(declare-fun b!6281582 () Bool)

(assert (=> b!6281582 (= e!3820002 (nullableZipper!1973 lt!2354658))))

(declare-fun b!6281583 () Bool)

(assert (=> b!6281583 (= e!3820002 (matchZipper!2215 (derivationStepZipper!2169 lt!2354658 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))))))

(assert (= (and d!1971319 c!1139166) b!6281582))

(assert (= (and d!1971319 (not c!1139166)) b!6281583))

(assert (=> d!1971319 m!7102532))

(declare-fun m!7102584 () Bool)

(assert (=> b!6281582 m!7102584))

(assert (=> b!6281583 m!7102536))

(assert (=> b!6281583 m!7102536))

(declare-fun m!7102586 () Bool)

(assert (=> b!6281583 m!7102586))

(assert (=> b!6281583 m!7102540))

(assert (=> b!6281583 m!7102586))

(assert (=> b!6281583 m!7102540))

(declare-fun m!7102588 () Bool)

(assert (=> b!6281583 m!7102588))

(assert (=> b!6280968 d!1971319))

(declare-fun e!3820003 () Bool)

(declare-fun d!1971321 () Bool)

(assert (=> d!1971321 (= (matchZipper!2215 ((_ map or) lt!2354658 lt!2354648) (t!378469 s!2326)) e!3820003)))

(declare-fun res!2590723 () Bool)

(assert (=> d!1971321 (=> res!2590723 e!3820003)))

(assert (=> d!1971321 (= res!2590723 (matchZipper!2215 lt!2354658 (t!378469 s!2326)))))

(declare-fun lt!2354784 () Unit!158143)

(assert (=> d!1971321 (= lt!2354784 (choose!46648 lt!2354658 lt!2354648 (t!378469 s!2326)))))

(assert (=> d!1971321 (= (lemmaZipperConcatMatchesSameAsBothZippers!1034 lt!2354658 lt!2354648 (t!378469 s!2326)) lt!2354784)))

(declare-fun b!6281584 () Bool)

(assert (=> b!6281584 (= e!3820003 (matchZipper!2215 lt!2354648 (t!378469 s!2326)))))

(assert (= (and d!1971321 (not res!2590723)) b!6281584))

(declare-fun m!7102590 () Bool)

(assert (=> d!1971321 m!7102590))

(assert (=> d!1971321 m!7101882))

(declare-fun m!7102592 () Bool)

(assert (=> d!1971321 m!7102592))

(assert (=> b!6281584 m!7101916))

(assert (=> b!6280968 d!1971321))

(declare-fun d!1971323 () Bool)

(declare-fun nullableFct!2147 (Regex!16203) Bool)

(assert (=> d!1971323 (= (nullable!6196 (regOne!32918 (regOne!32918 r!7292))) (nullableFct!2147 (regOne!32918 (regOne!32918 r!7292))))))

(declare-fun bs!1568969 () Bool)

(assert (= bs!1568969 d!1971323))

(declare-fun m!7102594 () Bool)

(assert (=> bs!1568969 m!7102594))

(assert (=> b!6280948 d!1971323))

(assert (=> b!6280964 d!1971301))

(declare-fun d!1971325 () Bool)

(assert (=> d!1971325 (= (isEmpty!36829 (t!378470 zl!343)) ((_ is Nil!64786) (t!378470 zl!343)))))

(assert (=> b!6280944 d!1971325))

(declare-fun bs!1568970 () Bool)

(declare-fun b!6281627 () Bool)

(assert (= bs!1568970 (and b!6281627 d!1971297)))

(declare-fun lambda!344579 () Int)

(assert (=> bs!1568970 (not (= lambda!344579 lambda!344574))))

(declare-fun bs!1568971 () Bool)

(assert (= bs!1568971 (and b!6281627 b!6280967)))

(assert (=> bs!1568971 (not (= lambda!344579 lambda!344507))))

(declare-fun bs!1568972 () Bool)

(assert (= bs!1568972 (and b!6281627 d!1971295)))

(assert (=> bs!1568972 (not (= lambda!344579 lambda!344568))))

(assert (=> bs!1568970 (not (= lambda!344579 lambda!344573))))

(declare-fun bs!1568973 () Bool)

(assert (= bs!1568973 (and b!6281627 b!6280970)))

(assert (=> bs!1568973 (not (= lambda!344579 lambda!344510))))

(assert (=> bs!1568973 (not (= lambda!344579 lambda!344511))))

(assert (=> bs!1568971 (not (= lambda!344579 lambda!344508))))

(assert (=> b!6281627 true))

(assert (=> b!6281627 true))

(declare-fun bs!1568974 () Bool)

(declare-fun b!6281621 () Bool)

(assert (= bs!1568974 (and b!6281621 d!1971297)))

(declare-fun lambda!344580 () Int)

(assert (=> bs!1568974 (= lambda!344580 lambda!344574)))

(declare-fun bs!1568975 () Bool)

(assert (= bs!1568975 (and b!6281621 b!6281627)))

(assert (=> bs!1568975 (not (= lambda!344580 lambda!344579))))

(declare-fun bs!1568976 () Bool)

(assert (= bs!1568976 (and b!6281621 b!6280967)))

(assert (=> bs!1568976 (not (= lambda!344580 lambda!344507))))

(declare-fun bs!1568977 () Bool)

(assert (= bs!1568977 (and b!6281621 d!1971295)))

(assert (=> bs!1568977 (not (= lambda!344580 lambda!344568))))

(assert (=> bs!1568974 (not (= lambda!344580 lambda!344573))))

(declare-fun bs!1568978 () Bool)

(assert (= bs!1568978 (and b!6281621 b!6280970)))

(assert (=> bs!1568978 (not (= lambda!344580 lambda!344510))))

(assert (=> bs!1568978 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344580 lambda!344511))))

(assert (=> bs!1568976 (= lambda!344580 lambda!344508)))

(assert (=> b!6281621 true))

(assert (=> b!6281621 true))

(declare-fun b!6281617 () Bool)

(declare-fun e!3820027 () Bool)

(declare-fun e!3820022 () Bool)

(assert (=> b!6281617 (= e!3820027 e!3820022)))

(declare-fun c!1139175 () Bool)

(assert (=> b!6281617 (= c!1139175 ((_ is Star!16203) r!7292))))

(declare-fun b!6281618 () Bool)

(declare-fun e!3820026 () Bool)

(assert (=> b!6281618 (= e!3820027 e!3820026)))

(declare-fun res!2590742 () Bool)

(assert (=> b!6281618 (= res!2590742 (matchRSpec!3304 (regOne!32919 r!7292) s!2326))))

(assert (=> b!6281618 (=> res!2590742 e!3820026)))

(declare-fun b!6281619 () Bool)

(declare-fun e!3820024 () Bool)

(declare-fun call!531589 () Bool)

(assert (=> b!6281619 (= e!3820024 call!531589)))

(declare-fun d!1971327 () Bool)

(declare-fun c!1139178 () Bool)

(assert (=> d!1971327 (= c!1139178 ((_ is EmptyExpr!16203) r!7292))))

(assert (=> d!1971327 (= (matchRSpec!3304 r!7292 s!2326) e!3820024)))

(declare-fun b!6281620 () Bool)

(assert (=> b!6281620 (= e!3820026 (matchRSpec!3304 (regTwo!32919 r!7292) s!2326))))

(declare-fun call!531588 () Bool)

(assert (=> b!6281621 (= e!3820022 call!531588)))

(declare-fun b!6281622 () Bool)

(declare-fun e!3820023 () Bool)

(assert (=> b!6281622 (= e!3820023 (= s!2326 (Cons!64785 (c!1138982 r!7292) Nil!64785)))))

(declare-fun b!6281623 () Bool)

(declare-fun e!3820028 () Bool)

(assert (=> b!6281623 (= e!3820024 e!3820028)))

(declare-fun res!2590740 () Bool)

(assert (=> b!6281623 (= res!2590740 (not ((_ is EmptyLang!16203) r!7292)))))

(assert (=> b!6281623 (=> (not res!2590740) (not e!3820028))))

(declare-fun b!6281624 () Bool)

(declare-fun res!2590741 () Bool)

(declare-fun e!3820025 () Bool)

(assert (=> b!6281624 (=> res!2590741 e!3820025)))

(assert (=> b!6281624 (= res!2590741 call!531589)))

(assert (=> b!6281624 (= e!3820022 e!3820025)))

(declare-fun bm!531583 () Bool)

(assert (=> bm!531583 (= call!531589 (isEmpty!36834 s!2326))))

(declare-fun b!6281625 () Bool)

(declare-fun c!1139176 () Bool)

(assert (=> b!6281625 (= c!1139176 ((_ is Union!16203) r!7292))))

(assert (=> b!6281625 (= e!3820023 e!3820027)))

(declare-fun b!6281626 () Bool)

(declare-fun c!1139177 () Bool)

(assert (=> b!6281626 (= c!1139177 ((_ is ElementMatch!16203) r!7292))))

(assert (=> b!6281626 (= e!3820028 e!3820023)))

(assert (=> b!6281627 (= e!3820025 call!531588)))

(declare-fun bm!531584 () Bool)

(assert (=> bm!531584 (= call!531588 (Exists!3273 (ite c!1139175 lambda!344579 lambda!344580)))))

(assert (= (and d!1971327 c!1139178) b!6281619))

(assert (= (and d!1971327 (not c!1139178)) b!6281623))

(assert (= (and b!6281623 res!2590740) b!6281626))

(assert (= (and b!6281626 c!1139177) b!6281622))

(assert (= (and b!6281626 (not c!1139177)) b!6281625))

(assert (= (and b!6281625 c!1139176) b!6281618))

(assert (= (and b!6281625 (not c!1139176)) b!6281617))

(assert (= (and b!6281618 (not res!2590742)) b!6281620))

(assert (= (and b!6281617 c!1139175) b!6281624))

(assert (= (and b!6281617 (not c!1139175)) b!6281621))

(assert (= (and b!6281624 (not res!2590741)) b!6281627))

(assert (= (or b!6281627 b!6281621) bm!531584))

(assert (= (or b!6281619 b!6281624) bm!531583))

(declare-fun m!7102596 () Bool)

(assert (=> b!6281618 m!7102596))

(declare-fun m!7102598 () Bool)

(assert (=> b!6281620 m!7102598))

(declare-fun m!7102600 () Bool)

(assert (=> bm!531583 m!7102600))

(declare-fun m!7102602 () Bool)

(assert (=> bm!531584 m!7102602))

(assert (=> b!6280946 d!1971327))

(declare-fun b!6281656 () Bool)

(declare-fun e!3820046 () Bool)

(declare-fun e!3820044 () Bool)

(assert (=> b!6281656 (= e!3820046 e!3820044)))

(declare-fun res!2590761 () Bool)

(assert (=> b!6281656 (=> res!2590761 e!3820044)))

(declare-fun call!531592 () Bool)

(assert (=> b!6281656 (= res!2590761 call!531592)))

(declare-fun b!6281657 () Bool)

(declare-fun e!3820045 () Bool)

(assert (=> b!6281657 (= e!3820045 (= (head!12906 s!2326) (c!1138982 r!7292)))))

(declare-fun b!6281658 () Bool)

(declare-fun res!2590764 () Bool)

(assert (=> b!6281658 (=> res!2590764 e!3820044)))

(assert (=> b!6281658 (= res!2590764 (not (isEmpty!36834 (tail!11991 s!2326))))))

(declare-fun b!6281660 () Bool)

(assert (=> b!6281660 (= e!3820044 (not (= (head!12906 s!2326) (c!1138982 r!7292))))))

(declare-fun b!6281661 () Bool)

(declare-fun e!3820043 () Bool)

(declare-fun lt!2354787 () Bool)

(assert (=> b!6281661 (= e!3820043 (not lt!2354787))))

(declare-fun b!6281662 () Bool)

(declare-fun e!3820049 () Bool)

(assert (=> b!6281662 (= e!3820049 e!3820043)))

(declare-fun c!1139185 () Bool)

(assert (=> b!6281662 (= c!1139185 ((_ is EmptyLang!16203) r!7292))))

(declare-fun bm!531587 () Bool)

(assert (=> bm!531587 (= call!531592 (isEmpty!36834 s!2326))))

(declare-fun b!6281663 () Bool)

(declare-fun res!2590766 () Bool)

(assert (=> b!6281663 (=> (not res!2590766) (not e!3820045))))

(assert (=> b!6281663 (= res!2590766 (not call!531592))))

(declare-fun b!6281664 () Bool)

(declare-fun e!3820048 () Bool)

(declare-fun derivativeStep!4912 (Regex!16203 C!32676) Regex!16203)

(assert (=> b!6281664 (= e!3820048 (matchR!8386 (derivativeStep!4912 r!7292 (head!12906 s!2326)) (tail!11991 s!2326)))))

(declare-fun b!6281665 () Bool)

(declare-fun e!3820047 () Bool)

(assert (=> b!6281665 (= e!3820047 e!3820046)))

(declare-fun res!2590763 () Bool)

(assert (=> b!6281665 (=> (not res!2590763) (not e!3820046))))

(assert (=> b!6281665 (= res!2590763 (not lt!2354787))))

(declare-fun b!6281659 () Bool)

(declare-fun res!2590762 () Bool)

(assert (=> b!6281659 (=> (not res!2590762) (not e!3820045))))

(assert (=> b!6281659 (= res!2590762 (isEmpty!36834 (tail!11991 s!2326)))))

(declare-fun d!1971329 () Bool)

(assert (=> d!1971329 e!3820049))

(declare-fun c!1139186 () Bool)

(assert (=> d!1971329 (= c!1139186 ((_ is EmptyExpr!16203) r!7292))))

(assert (=> d!1971329 (= lt!2354787 e!3820048)))

(declare-fun c!1139187 () Bool)

(assert (=> d!1971329 (= c!1139187 (isEmpty!36834 s!2326))))

(assert (=> d!1971329 (validRegex!7939 r!7292)))

(assert (=> d!1971329 (= (matchR!8386 r!7292 s!2326) lt!2354787)))

(declare-fun b!6281666 () Bool)

(declare-fun res!2590760 () Bool)

(assert (=> b!6281666 (=> res!2590760 e!3820047)))

(assert (=> b!6281666 (= res!2590760 (not ((_ is ElementMatch!16203) r!7292)))))

(assert (=> b!6281666 (= e!3820043 e!3820047)))

(declare-fun b!6281667 () Bool)

(assert (=> b!6281667 (= e!3820049 (= lt!2354787 call!531592))))

(declare-fun b!6281668 () Bool)

(assert (=> b!6281668 (= e!3820048 (nullable!6196 r!7292))))

(declare-fun b!6281669 () Bool)

(declare-fun res!2590765 () Bool)

(assert (=> b!6281669 (=> res!2590765 e!3820047)))

(assert (=> b!6281669 (= res!2590765 e!3820045)))

(declare-fun res!2590759 () Bool)

(assert (=> b!6281669 (=> (not res!2590759) (not e!3820045))))

(assert (=> b!6281669 (= res!2590759 lt!2354787)))

(assert (= (and d!1971329 c!1139187) b!6281668))

(assert (= (and d!1971329 (not c!1139187)) b!6281664))

(assert (= (and d!1971329 c!1139186) b!6281667))

(assert (= (and d!1971329 (not c!1139186)) b!6281662))

(assert (= (and b!6281662 c!1139185) b!6281661))

(assert (= (and b!6281662 (not c!1139185)) b!6281666))

(assert (= (and b!6281666 (not res!2590760)) b!6281669))

(assert (= (and b!6281669 res!2590759) b!6281663))

(assert (= (and b!6281663 res!2590766) b!6281659))

(assert (= (and b!6281659 res!2590762) b!6281657))

(assert (= (and b!6281669 (not res!2590765)) b!6281665))

(assert (= (and b!6281665 res!2590763) b!6281656))

(assert (= (and b!6281656 (not res!2590761)) b!6281658))

(assert (= (and b!6281658 (not res!2590764)) b!6281660))

(assert (= (or b!6281667 b!6281656 b!6281663) bm!531587))

(assert (=> bm!531587 m!7102600))

(declare-fun m!7102604 () Bool)

(assert (=> b!6281660 m!7102604))

(assert (=> d!1971329 m!7102600))

(assert (=> d!1971329 m!7101878))

(declare-fun m!7102606 () Bool)

(assert (=> b!6281658 m!7102606))

(assert (=> b!6281658 m!7102606))

(declare-fun m!7102608 () Bool)

(assert (=> b!6281658 m!7102608))

(declare-fun m!7102610 () Bool)

(assert (=> b!6281668 m!7102610))

(assert (=> b!6281657 m!7102604))

(assert (=> b!6281664 m!7102604))

(assert (=> b!6281664 m!7102604))

(declare-fun m!7102612 () Bool)

(assert (=> b!6281664 m!7102612))

(assert (=> b!6281664 m!7102606))

(assert (=> b!6281664 m!7102612))

(assert (=> b!6281664 m!7102606))

(declare-fun m!7102614 () Bool)

(assert (=> b!6281664 m!7102614))

(assert (=> b!6281659 m!7102606))

(assert (=> b!6281659 m!7102606))

(assert (=> b!6281659 m!7102608))

(assert (=> b!6280946 d!1971329))

(declare-fun d!1971331 () Bool)

(assert (=> d!1971331 (= (matchR!8386 r!7292 s!2326) (matchRSpec!3304 r!7292 s!2326))))

(declare-fun lt!2354790 () Unit!158143)

(declare-fun choose!46649 (Regex!16203 List!64909) Unit!158143)

(assert (=> d!1971331 (= lt!2354790 (choose!46649 r!7292 s!2326))))

(assert (=> d!1971331 (validRegex!7939 r!7292)))

(assert (=> d!1971331 (= (mainMatchTheorem!3304 r!7292 s!2326) lt!2354790)))

(declare-fun bs!1568979 () Bool)

(assert (= bs!1568979 d!1971331))

(assert (=> bs!1568979 m!7101888))

(assert (=> bs!1568979 m!7101886))

(declare-fun m!7102616 () Bool)

(assert (=> bs!1568979 m!7102616))

(assert (=> bs!1568979 m!7101878))

(assert (=> b!6280946 d!1971331))

(declare-fun d!1971333 () Bool)

(declare-fun e!3820052 () Bool)

(assert (=> d!1971333 e!3820052))

(declare-fun res!2590769 () Bool)

(assert (=> d!1971333 (=> (not res!2590769) (not e!3820052))))

(declare-fun lt!2354793 () List!64910)

(declare-fun noDuplicate!2037 (List!64910) Bool)

(assert (=> d!1971333 (= res!2590769 (noDuplicate!2037 lt!2354793))))

(declare-fun choose!46650 ((InoxSet Context!11174)) List!64910)

(assert (=> d!1971333 (= lt!2354793 (choose!46650 z!1189))))

(assert (=> d!1971333 (= (toList!9987 z!1189) lt!2354793)))

(declare-fun b!6281672 () Bool)

(declare-fun content!12178 (List!64910) (InoxSet Context!11174))

(assert (=> b!6281672 (= e!3820052 (= (content!12178 lt!2354793) z!1189))))

(assert (= (and d!1971333 res!2590769) b!6281672))

(declare-fun m!7102618 () Bool)

(assert (=> d!1971333 m!7102618))

(declare-fun m!7102620 () Bool)

(assert (=> d!1971333 m!7102620))

(declare-fun m!7102622 () Bool)

(assert (=> b!6281672 m!7102622))

(assert (=> b!6280965 d!1971333))

(declare-fun d!1971335 () Bool)

(declare-fun lt!2354796 () Regex!16203)

(assert (=> d!1971335 (validRegex!7939 lt!2354796)))

(assert (=> d!1971335 (= lt!2354796 (generalisedUnion!2047 (unfocusZipperList!1624 zl!343)))))

(assert (=> d!1971335 (= (unfocusZipper!1945 zl!343) lt!2354796)))

(declare-fun bs!1568980 () Bool)

(assert (= bs!1568980 d!1971335))

(declare-fun m!7102624 () Bool)

(assert (=> bs!1568980 m!7102624))

(assert (=> bs!1568980 m!7101960))

(assert (=> bs!1568980 m!7101960))

(assert (=> bs!1568980 m!7101962))

(assert (=> b!6280953 d!1971335))

(declare-fun b!6281679 () Bool)

(assert (=> b!6281679 true))

(declare-fun bs!1568981 () Bool)

(declare-fun b!6281681 () Bool)

(assert (= bs!1568981 (and b!6281681 b!6281679)))

(declare-fun lt!2354807 () Int)

(declare-fun lambda!344588 () Int)

(declare-fun lt!2354808 () Int)

(declare-fun lambda!344589 () Int)

(assert (=> bs!1568981 (= (= lt!2354808 lt!2354807) (= lambda!344589 lambda!344588))))

(assert (=> b!6281681 true))

(declare-fun d!1971337 () Bool)

(declare-fun e!3820058 () Bool)

(assert (=> d!1971337 e!3820058))

(declare-fun res!2590772 () Bool)

(assert (=> d!1971337 (=> (not res!2590772) (not e!3820058))))

(assert (=> d!1971337 (= res!2590772 (>= lt!2354808 0))))

(declare-fun e!3820057 () Int)

(assert (=> d!1971337 (= lt!2354808 e!3820057)))

(declare-fun c!1139196 () Bool)

(assert (=> d!1971337 (= c!1139196 ((_ is Cons!64786) lt!2354647))))

(assert (=> d!1971337 (= (zipperDepth!328 lt!2354647) lt!2354808)))

(assert (=> b!6281679 (= e!3820057 lt!2354807)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!220 (Context!11174) Int)

(assert (=> b!6281679 (= lt!2354807 (maxBigInt!0 (contextDepth!220 (h!71234 lt!2354647)) (zipperDepth!328 (t!378470 lt!2354647))))))

(declare-fun lambda!344587 () Int)

(declare-fun lt!2354806 () Unit!158143)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!204 (List!64910 Int Int Int) Unit!158143)

(assert (=> b!6281679 (= lt!2354806 (lemmaForallContextDepthBiggerThanTransitive!204 (t!378470 lt!2354647) lt!2354807 (zipperDepth!328 (t!378470 lt!2354647)) lambda!344587))))

(declare-fun forall!15343 (List!64910 Int) Bool)

(assert (=> b!6281679 (forall!15343 (t!378470 lt!2354647) lambda!344588)))

(declare-fun lt!2354805 () Unit!158143)

(assert (=> b!6281679 (= lt!2354805 lt!2354806)))

(declare-fun b!6281680 () Bool)

(assert (=> b!6281680 (= e!3820057 0)))

(assert (=> b!6281681 (= e!3820058 (forall!15343 lt!2354647 lambda!344589))))

(assert (= (and d!1971337 c!1139196) b!6281679))

(assert (= (and d!1971337 (not c!1139196)) b!6281680))

(assert (= (and d!1971337 res!2590772) b!6281681))

(declare-fun m!7102626 () Bool)

(assert (=> b!6281679 m!7102626))

(declare-fun m!7102628 () Bool)

(assert (=> b!6281679 m!7102628))

(declare-fun m!7102630 () Bool)

(assert (=> b!6281679 m!7102630))

(assert (=> b!6281679 m!7102628))

(assert (=> b!6281679 m!7102626))

(declare-fun m!7102632 () Bool)

(assert (=> b!6281679 m!7102632))

(assert (=> b!6281679 m!7102626))

(declare-fun m!7102634 () Bool)

(assert (=> b!6281679 m!7102634))

(declare-fun m!7102636 () Bool)

(assert (=> b!6281681 m!7102636))

(assert (=> b!6280952 d!1971337))

(declare-fun bs!1568982 () Bool)

(declare-fun b!6281684 () Bool)

(assert (= bs!1568982 (and b!6281684 b!6281679)))

(declare-fun lambda!344590 () Int)

(assert (=> bs!1568982 (= lambda!344590 lambda!344587)))

(declare-fun lambda!344591 () Int)

(declare-fun lt!2354811 () Int)

(assert (=> bs!1568982 (= (= lt!2354811 lt!2354807) (= lambda!344591 lambda!344588))))

(declare-fun bs!1568983 () Bool)

(assert (= bs!1568983 (and b!6281684 b!6281681)))

(assert (=> bs!1568983 (= (= lt!2354811 lt!2354808) (= lambda!344591 lambda!344589))))

(assert (=> b!6281684 true))

(declare-fun bs!1568984 () Bool)

(declare-fun b!6281686 () Bool)

(assert (= bs!1568984 (and b!6281686 b!6281679)))

(declare-fun lt!2354812 () Int)

(declare-fun lambda!344592 () Int)

(assert (=> bs!1568984 (= (= lt!2354812 lt!2354807) (= lambda!344592 lambda!344588))))

(declare-fun bs!1568985 () Bool)

(assert (= bs!1568985 (and b!6281686 b!6281681)))

(assert (=> bs!1568985 (= (= lt!2354812 lt!2354808) (= lambda!344592 lambda!344589))))

(declare-fun bs!1568986 () Bool)

(assert (= bs!1568986 (and b!6281686 b!6281684)))

(assert (=> bs!1568986 (= (= lt!2354812 lt!2354811) (= lambda!344592 lambda!344591))))

(assert (=> b!6281686 true))

(declare-fun d!1971339 () Bool)

(declare-fun e!3820060 () Bool)

(assert (=> d!1971339 e!3820060))

(declare-fun res!2590773 () Bool)

(assert (=> d!1971339 (=> (not res!2590773) (not e!3820060))))

(assert (=> d!1971339 (= res!2590773 (>= lt!2354812 0))))

(declare-fun e!3820059 () Int)

(assert (=> d!1971339 (= lt!2354812 e!3820059)))

(declare-fun c!1139197 () Bool)

(assert (=> d!1971339 (= c!1139197 ((_ is Cons!64786) zl!343))))

(assert (=> d!1971339 (= (zipperDepth!328 zl!343) lt!2354812)))

(assert (=> b!6281684 (= e!3820059 lt!2354811)))

(assert (=> b!6281684 (= lt!2354811 (maxBigInt!0 (contextDepth!220 (h!71234 zl!343)) (zipperDepth!328 (t!378470 zl!343))))))

(declare-fun lt!2354810 () Unit!158143)

(assert (=> b!6281684 (= lt!2354810 (lemmaForallContextDepthBiggerThanTransitive!204 (t!378470 zl!343) lt!2354811 (zipperDepth!328 (t!378470 zl!343)) lambda!344590))))

(assert (=> b!6281684 (forall!15343 (t!378470 zl!343) lambda!344591)))

(declare-fun lt!2354809 () Unit!158143)

(assert (=> b!6281684 (= lt!2354809 lt!2354810)))

(declare-fun b!6281685 () Bool)

(assert (=> b!6281685 (= e!3820059 0)))

(assert (=> b!6281686 (= e!3820060 (forall!15343 zl!343 lambda!344592))))

(assert (= (and d!1971339 c!1139197) b!6281684))

(assert (= (and d!1971339 (not c!1139197)) b!6281685))

(assert (= (and d!1971339 res!2590773) b!6281686))

(declare-fun m!7102638 () Bool)

(assert (=> b!6281684 m!7102638))

(declare-fun m!7102640 () Bool)

(assert (=> b!6281684 m!7102640))

(declare-fun m!7102642 () Bool)

(assert (=> b!6281684 m!7102642))

(assert (=> b!6281684 m!7102640))

(assert (=> b!6281684 m!7102638))

(declare-fun m!7102644 () Bool)

(assert (=> b!6281684 m!7102644))

(assert (=> b!6281684 m!7102638))

(declare-fun m!7102646 () Bool)

(assert (=> b!6281684 m!7102646))

(declare-fun m!7102648 () Bool)

(assert (=> b!6281686 m!7102648))

(assert (=> b!6280952 d!1971339))

(declare-fun d!1971341 () Bool)

(declare-fun lambda!344595 () Int)

(declare-fun forall!15344 (List!64908 Int) Bool)

(assert (=> d!1971341 (= (inv!83754 setElem!42740) (forall!15344 (exprs!6087 setElem!42740) lambda!344595))))

(declare-fun bs!1568987 () Bool)

(assert (= bs!1568987 d!1971341))

(declare-fun m!7102650 () Bool)

(assert (=> bs!1568987 m!7102650))

(assert (=> setNonEmpty!42740 d!1971341))

(declare-fun bs!1568988 () Bool)

(declare-fun d!1971343 () Bool)

(assert (= bs!1568988 (and d!1971343 d!1971341)))

(declare-fun lambda!344598 () Int)

(assert (=> bs!1568988 (= lambda!344598 lambda!344595)))

(declare-fun b!6281707 () Bool)

(declare-fun e!3820076 () Regex!16203)

(assert (=> b!6281707 (= e!3820076 EmptyExpr!16203)))

(declare-fun b!6281708 () Bool)

(declare-fun e!3820077 () Regex!16203)

(assert (=> b!6281708 (= e!3820077 (h!71232 (exprs!6087 (h!71234 zl!343))))))

(declare-fun e!3820074 () Bool)

(assert (=> d!1971343 e!3820074))

(declare-fun res!2590779 () Bool)

(assert (=> d!1971343 (=> (not res!2590779) (not e!3820074))))

(declare-fun lt!2354815 () Regex!16203)

(assert (=> d!1971343 (= res!2590779 (validRegex!7939 lt!2354815))))

(assert (=> d!1971343 (= lt!2354815 e!3820077)))

(declare-fun c!1139209 () Bool)

(declare-fun e!3820075 () Bool)

(assert (=> d!1971343 (= c!1139209 e!3820075)))

(declare-fun res!2590778 () Bool)

(assert (=> d!1971343 (=> (not res!2590778) (not e!3820075))))

(assert (=> d!1971343 (= res!2590778 ((_ is Cons!64784) (exprs!6087 (h!71234 zl!343))))))

(assert (=> d!1971343 (forall!15344 (exprs!6087 (h!71234 zl!343)) lambda!344598)))

(assert (=> d!1971343 (= (generalisedConcat!1800 (exprs!6087 (h!71234 zl!343))) lt!2354815)))

(declare-fun b!6281709 () Bool)

(assert (=> b!6281709 (= e!3820077 e!3820076)))

(declare-fun c!1139207 () Bool)

(assert (=> b!6281709 (= c!1139207 ((_ is Cons!64784) (exprs!6087 (h!71234 zl!343))))))

(declare-fun b!6281710 () Bool)

(declare-fun e!3820078 () Bool)

(declare-fun isConcat!1132 (Regex!16203) Bool)

(assert (=> b!6281710 (= e!3820078 (isConcat!1132 lt!2354815))))

(declare-fun b!6281711 () Bool)

(assert (=> b!6281711 (= e!3820076 (Concat!25048 (h!71232 (exprs!6087 (h!71234 zl!343))) (generalisedConcat!1800 (t!378468 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun b!6281712 () Bool)

(declare-fun head!12907 (List!64908) Regex!16203)

(assert (=> b!6281712 (= e!3820078 (= lt!2354815 (head!12907 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6281713 () Bool)

(declare-fun e!3820073 () Bool)

(assert (=> b!6281713 (= e!3820074 e!3820073)))

(declare-fun c!1139208 () Bool)

(assert (=> b!6281713 (= c!1139208 (isEmpty!36830 (exprs!6087 (h!71234 zl!343))))))

(declare-fun b!6281714 () Bool)

(assert (=> b!6281714 (= e!3820073 e!3820078)))

(declare-fun c!1139206 () Bool)

(declare-fun tail!11992 (List!64908) List!64908)

(assert (=> b!6281714 (= c!1139206 (isEmpty!36830 (tail!11992 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6281715 () Bool)

(declare-fun isEmptyExpr!1609 (Regex!16203) Bool)

(assert (=> b!6281715 (= e!3820073 (isEmptyExpr!1609 lt!2354815))))

(declare-fun b!6281716 () Bool)

(assert (=> b!6281716 (= e!3820075 (isEmpty!36830 (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(assert (= (and d!1971343 res!2590778) b!6281716))

(assert (= (and d!1971343 c!1139209) b!6281708))

(assert (= (and d!1971343 (not c!1139209)) b!6281709))

(assert (= (and b!6281709 c!1139207) b!6281711))

(assert (= (and b!6281709 (not c!1139207)) b!6281707))

(assert (= (and d!1971343 res!2590779) b!6281713))

(assert (= (and b!6281713 c!1139208) b!6281715))

(assert (= (and b!6281713 (not c!1139208)) b!6281714))

(assert (= (and b!6281714 c!1139206) b!6281712))

(assert (= (and b!6281714 (not c!1139206)) b!6281710))

(declare-fun m!7102652 () Bool)

(assert (=> b!6281715 m!7102652))

(assert (=> b!6281711 m!7102018))

(declare-fun m!7102654 () Bool)

(assert (=> b!6281714 m!7102654))

(assert (=> b!6281714 m!7102654))

(declare-fun m!7102656 () Bool)

(assert (=> b!6281714 m!7102656))

(declare-fun m!7102658 () Bool)

(assert (=> b!6281712 m!7102658))

(declare-fun m!7102660 () Bool)

(assert (=> d!1971343 m!7102660))

(declare-fun m!7102662 () Bool)

(assert (=> d!1971343 m!7102662))

(assert (=> b!6281716 m!7101982))

(declare-fun m!7102664 () Bool)

(assert (=> b!6281710 m!7102664))

(declare-fun m!7102666 () Bool)

(assert (=> b!6281713 m!7102666))

(assert (=> b!6280973 d!1971343))

(declare-fun bs!1568989 () Bool)

(declare-fun b!6281727 () Bool)

(assert (= bs!1568989 (and b!6281727 d!1971297)))

(declare-fun lambda!344599 () Int)

(assert (=> bs!1568989 (not (= lambda!344599 lambda!344574))))

(declare-fun bs!1568990 () Bool)

(assert (= bs!1568990 (and b!6281727 b!6281627)))

(assert (=> bs!1568990 (= (and (= (reg!16532 lt!2354656) (reg!16532 r!7292)) (= lt!2354656 r!7292)) (= lambda!344599 lambda!344579))))

(declare-fun bs!1568991 () Bool)

(assert (= bs!1568991 (and b!6281727 b!6280967)))

(assert (=> bs!1568991 (not (= lambda!344599 lambda!344507))))

(declare-fun bs!1568992 () Bool)

(assert (= bs!1568992 (and b!6281727 d!1971295)))

(assert (=> bs!1568992 (not (= lambda!344599 lambda!344568))))

(assert (=> bs!1568989 (not (= lambda!344599 lambda!344573))))

(declare-fun bs!1568993 () Bool)

(assert (= bs!1568993 (and b!6281727 b!6281621)))

(assert (=> bs!1568993 (not (= lambda!344599 lambda!344580))))

(declare-fun bs!1568994 () Bool)

(assert (= bs!1568994 (and b!6281727 b!6280970)))

(assert (=> bs!1568994 (not (= lambda!344599 lambda!344510))))

(assert (=> bs!1568994 (not (= lambda!344599 lambda!344511))))

(assert (=> bs!1568991 (not (= lambda!344599 lambda!344508))))

(assert (=> b!6281727 true))

(assert (=> b!6281727 true))

(declare-fun bs!1568995 () Bool)

(declare-fun b!6281721 () Bool)

(assert (= bs!1568995 (and b!6281721 d!1971297)))

(declare-fun lambda!344600 () Int)

(assert (=> bs!1568995 (= (and (= (regOne!32918 lt!2354656) (regOne!32918 r!7292)) (= (regTwo!32918 lt!2354656) (regTwo!32918 r!7292))) (= lambda!344600 lambda!344574))))

(declare-fun bs!1568996 () Bool)

(assert (= bs!1568996 (and b!6281721 b!6281727)))

(assert (=> bs!1568996 (not (= lambda!344600 lambda!344599))))

(declare-fun bs!1568997 () Bool)

(assert (= bs!1568997 (and b!6281721 b!6281627)))

(assert (=> bs!1568997 (not (= lambda!344600 lambda!344579))))

(declare-fun bs!1568998 () Bool)

(assert (= bs!1568998 (and b!6281721 b!6280967)))

(assert (=> bs!1568998 (not (= lambda!344600 lambda!344507))))

(declare-fun bs!1568999 () Bool)

(assert (= bs!1568999 (and b!6281721 d!1971295)))

(assert (=> bs!1568999 (not (= lambda!344600 lambda!344568))))

(assert (=> bs!1568995 (not (= lambda!344600 lambda!344573))))

(declare-fun bs!1569000 () Bool)

(assert (= bs!1569000 (and b!6281721 b!6281621)))

(assert (=> bs!1569000 (= (and (= (regOne!32918 lt!2354656) (regOne!32918 r!7292)) (= (regTwo!32918 lt!2354656) (regTwo!32918 r!7292))) (= lambda!344600 lambda!344580))))

(declare-fun bs!1569001 () Bool)

(assert (= bs!1569001 (and b!6281721 b!6280970)))

(assert (=> bs!1569001 (not (= lambda!344600 lambda!344510))))

(assert (=> bs!1569001 (= (and (= (regOne!32918 lt!2354656) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 lt!2354656) lt!2354652)) (= lambda!344600 lambda!344511))))

(assert (=> bs!1568998 (= (and (= (regOne!32918 lt!2354656) (regOne!32918 r!7292)) (= (regTwo!32918 lt!2354656) (regTwo!32918 r!7292))) (= lambda!344600 lambda!344508))))

(assert (=> b!6281721 true))

(assert (=> b!6281721 true))

(declare-fun b!6281717 () Bool)

(declare-fun e!3820084 () Bool)

(declare-fun e!3820079 () Bool)

(assert (=> b!6281717 (= e!3820084 e!3820079)))

(declare-fun c!1139210 () Bool)

(assert (=> b!6281717 (= c!1139210 ((_ is Star!16203) lt!2354656))))

(declare-fun b!6281718 () Bool)

(declare-fun e!3820083 () Bool)

(assert (=> b!6281718 (= e!3820084 e!3820083)))

(declare-fun res!2590782 () Bool)

(assert (=> b!6281718 (= res!2590782 (matchRSpec!3304 (regOne!32919 lt!2354656) s!2326))))

(assert (=> b!6281718 (=> res!2590782 e!3820083)))

(declare-fun b!6281719 () Bool)

(declare-fun e!3820081 () Bool)

(declare-fun call!531594 () Bool)

(assert (=> b!6281719 (= e!3820081 call!531594)))

(declare-fun d!1971345 () Bool)

(declare-fun c!1139213 () Bool)

(assert (=> d!1971345 (= c!1139213 ((_ is EmptyExpr!16203) lt!2354656))))

(assert (=> d!1971345 (= (matchRSpec!3304 lt!2354656 s!2326) e!3820081)))

(declare-fun b!6281720 () Bool)

(assert (=> b!6281720 (= e!3820083 (matchRSpec!3304 (regTwo!32919 lt!2354656) s!2326))))

(declare-fun call!531593 () Bool)

(assert (=> b!6281721 (= e!3820079 call!531593)))

(declare-fun b!6281722 () Bool)

(declare-fun e!3820080 () Bool)

(assert (=> b!6281722 (= e!3820080 (= s!2326 (Cons!64785 (c!1138982 lt!2354656) Nil!64785)))))

(declare-fun b!6281723 () Bool)

(declare-fun e!3820085 () Bool)

(assert (=> b!6281723 (= e!3820081 e!3820085)))

(declare-fun res!2590780 () Bool)

(assert (=> b!6281723 (= res!2590780 (not ((_ is EmptyLang!16203) lt!2354656)))))

(assert (=> b!6281723 (=> (not res!2590780) (not e!3820085))))

(declare-fun b!6281724 () Bool)

(declare-fun res!2590781 () Bool)

(declare-fun e!3820082 () Bool)

(assert (=> b!6281724 (=> res!2590781 e!3820082)))

(assert (=> b!6281724 (= res!2590781 call!531594)))

(assert (=> b!6281724 (= e!3820079 e!3820082)))

(declare-fun bm!531588 () Bool)

(assert (=> bm!531588 (= call!531594 (isEmpty!36834 s!2326))))

(declare-fun b!6281725 () Bool)

(declare-fun c!1139211 () Bool)

(assert (=> b!6281725 (= c!1139211 ((_ is Union!16203) lt!2354656))))

(assert (=> b!6281725 (= e!3820080 e!3820084)))

(declare-fun b!6281726 () Bool)

(declare-fun c!1139212 () Bool)

(assert (=> b!6281726 (= c!1139212 ((_ is ElementMatch!16203) lt!2354656))))

(assert (=> b!6281726 (= e!3820085 e!3820080)))

(assert (=> b!6281727 (= e!3820082 call!531593)))

(declare-fun bm!531589 () Bool)

(assert (=> bm!531589 (= call!531593 (Exists!3273 (ite c!1139210 lambda!344599 lambda!344600)))))

(assert (= (and d!1971345 c!1139213) b!6281719))

(assert (= (and d!1971345 (not c!1139213)) b!6281723))

(assert (= (and b!6281723 res!2590780) b!6281726))

(assert (= (and b!6281726 c!1139212) b!6281722))

(assert (= (and b!6281726 (not c!1139212)) b!6281725))

(assert (= (and b!6281725 c!1139211) b!6281718))

(assert (= (and b!6281725 (not c!1139211)) b!6281717))

(assert (= (and b!6281718 (not res!2590782)) b!6281720))

(assert (= (and b!6281717 c!1139210) b!6281724))

(assert (= (and b!6281717 (not c!1139210)) b!6281721))

(assert (= (and b!6281724 (not res!2590781)) b!6281727))

(assert (= (or b!6281727 b!6281721) bm!531589))

(assert (= (or b!6281719 b!6281724) bm!531588))

(declare-fun m!7102668 () Bool)

(assert (=> b!6281718 m!7102668))

(declare-fun m!7102670 () Bool)

(assert (=> b!6281720 m!7102670))

(assert (=> bm!531588 m!7102600))

(declare-fun m!7102672 () Bool)

(assert (=> bm!531589 m!7102672))

(assert (=> b!6280970 d!1971345))

(declare-fun b!6281728 () Bool)

(declare-fun e!3820087 () Bool)

(assert (=> b!6281728 (= e!3820087 (matchR!8386 lt!2354652 s!2326))))

(declare-fun b!6281729 () Bool)

(declare-fun e!3820088 () Bool)

(declare-fun lt!2354817 () Option!16094)

(assert (=> b!6281729 (= e!3820088 (not (isDefined!12797 lt!2354817)))))

(declare-fun b!6281730 () Bool)

(declare-fun e!3820089 () Bool)

(assert (=> b!6281730 (= e!3820089 (= (++!14276 (_1!36485 (get!22393 lt!2354817)) (_2!36485 (get!22393 lt!2354817))) s!2326))))

(declare-fun b!6281731 () Bool)

(declare-fun e!3820086 () Option!16094)

(assert (=> b!6281731 (= e!3820086 None!16093)))

(declare-fun d!1971347 () Bool)

(assert (=> d!1971347 e!3820088))

(declare-fun res!2590785 () Bool)

(assert (=> d!1971347 (=> res!2590785 e!3820088)))

(assert (=> d!1971347 (= res!2590785 e!3820089)))

(declare-fun res!2590786 () Bool)

(assert (=> d!1971347 (=> (not res!2590786) (not e!3820089))))

(assert (=> d!1971347 (= res!2590786 (isDefined!12797 lt!2354817))))

(declare-fun e!3820090 () Option!16094)

(assert (=> d!1971347 (= lt!2354817 e!3820090)))

(declare-fun c!1139215 () Bool)

(assert (=> d!1971347 (= c!1139215 e!3820087)))

(declare-fun res!2590783 () Bool)

(assert (=> d!1971347 (=> (not res!2590783) (not e!3820087))))

(assert (=> d!1971347 (= res!2590783 (matchR!8386 (regOne!32918 (regOne!32918 r!7292)) Nil!64785))))

(assert (=> d!1971347 (validRegex!7939 (regOne!32918 (regOne!32918 r!7292)))))

(assert (=> d!1971347 (= (findConcatSeparation!2508 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 Nil!64785 s!2326 s!2326) lt!2354817)))

(declare-fun b!6281732 () Bool)

(assert (=> b!6281732 (= e!3820090 (Some!16093 (tuple2!66365 Nil!64785 s!2326)))))

(declare-fun b!6281733 () Bool)

(declare-fun lt!2354816 () Unit!158143)

(declare-fun lt!2354818 () Unit!158143)

(assert (=> b!6281733 (= lt!2354816 lt!2354818)))

(assert (=> b!6281733 (= (++!14276 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (t!378469 s!2326)) s!2326)))

(assert (=> b!6281733 (= lt!2354818 (lemmaMoveElementToOtherListKeepsConcatEq!2371 Nil!64785 (h!71233 s!2326) (t!378469 s!2326) s!2326))))

(assert (=> b!6281733 (= e!3820086 (findConcatSeparation!2508 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (t!378469 s!2326) s!2326))))

(declare-fun b!6281734 () Bool)

(declare-fun res!2590787 () Bool)

(assert (=> b!6281734 (=> (not res!2590787) (not e!3820089))))

(assert (=> b!6281734 (= res!2590787 (matchR!8386 lt!2354652 (_2!36485 (get!22393 lt!2354817))))))

(declare-fun b!6281735 () Bool)

(assert (=> b!6281735 (= e!3820090 e!3820086)))

(declare-fun c!1139214 () Bool)

(assert (=> b!6281735 (= c!1139214 ((_ is Nil!64785) s!2326))))

(declare-fun b!6281736 () Bool)

(declare-fun res!2590784 () Bool)

(assert (=> b!6281736 (=> (not res!2590784) (not e!3820089))))

(assert (=> b!6281736 (= res!2590784 (matchR!8386 (regOne!32918 (regOne!32918 r!7292)) (_1!36485 (get!22393 lt!2354817))))))

(assert (= (and d!1971347 res!2590783) b!6281728))

(assert (= (and d!1971347 c!1139215) b!6281732))

(assert (= (and d!1971347 (not c!1139215)) b!6281735))

(assert (= (and b!6281735 c!1139214) b!6281731))

(assert (= (and b!6281735 (not c!1139214)) b!6281733))

(assert (= (and d!1971347 res!2590786) b!6281736))

(assert (= (and b!6281736 res!2590784) b!6281734))

(assert (= (and b!6281734 res!2590787) b!6281730))

(assert (= (and d!1971347 (not res!2590785)) b!6281729))

(declare-fun m!7102674 () Bool)

(assert (=> d!1971347 m!7102674))

(declare-fun m!7102676 () Bool)

(assert (=> d!1971347 m!7102676))

(declare-fun m!7102678 () Bool)

(assert (=> d!1971347 m!7102678))

(assert (=> b!6281733 m!7102500))

(assert (=> b!6281733 m!7102500))

(assert (=> b!6281733 m!7102502))

(assert (=> b!6281733 m!7102504))

(assert (=> b!6281733 m!7102500))

(declare-fun m!7102680 () Bool)

(assert (=> b!6281733 m!7102680))

(declare-fun m!7102682 () Bool)

(assert (=> b!6281734 m!7102682))

(declare-fun m!7102684 () Bool)

(assert (=> b!6281734 m!7102684))

(assert (=> b!6281729 m!7102674))

(assert (=> b!6281728 m!7102016))

(assert (=> b!6281736 m!7102682))

(declare-fun m!7102686 () Bool)

(assert (=> b!6281736 m!7102686))

(assert (=> b!6281730 m!7102682))

(declare-fun m!7102688 () Bool)

(assert (=> b!6281730 m!7102688))

(assert (=> b!6280970 d!1971347))

(declare-fun b!6281737 () Bool)

(declare-fun e!3820094 () Bool)

(declare-fun e!3820092 () Bool)

(assert (=> b!6281737 (= e!3820094 e!3820092)))

(declare-fun res!2590790 () Bool)

(assert (=> b!6281737 (=> res!2590790 e!3820092)))

(declare-fun call!531595 () Bool)

(assert (=> b!6281737 (= res!2590790 call!531595)))

(declare-fun b!6281738 () Bool)

(declare-fun e!3820093 () Bool)

(assert (=> b!6281738 (= e!3820093 (= (head!12906 s!2326) (c!1138982 lt!2354656)))))

(declare-fun b!6281739 () Bool)

(declare-fun res!2590793 () Bool)

(assert (=> b!6281739 (=> res!2590793 e!3820092)))

(assert (=> b!6281739 (= res!2590793 (not (isEmpty!36834 (tail!11991 s!2326))))))

(declare-fun b!6281741 () Bool)

(assert (=> b!6281741 (= e!3820092 (not (= (head!12906 s!2326) (c!1138982 lt!2354656))))))

(declare-fun b!6281742 () Bool)

(declare-fun e!3820091 () Bool)

(declare-fun lt!2354819 () Bool)

(assert (=> b!6281742 (= e!3820091 (not lt!2354819))))

(declare-fun b!6281743 () Bool)

(declare-fun e!3820097 () Bool)

(assert (=> b!6281743 (= e!3820097 e!3820091)))

(declare-fun c!1139216 () Bool)

(assert (=> b!6281743 (= c!1139216 ((_ is EmptyLang!16203) lt!2354656))))

(declare-fun bm!531590 () Bool)

(assert (=> bm!531590 (= call!531595 (isEmpty!36834 s!2326))))

(declare-fun b!6281744 () Bool)

(declare-fun res!2590795 () Bool)

(assert (=> b!6281744 (=> (not res!2590795) (not e!3820093))))

(assert (=> b!6281744 (= res!2590795 (not call!531595))))

(declare-fun b!6281745 () Bool)

(declare-fun e!3820096 () Bool)

(assert (=> b!6281745 (= e!3820096 (matchR!8386 (derivativeStep!4912 lt!2354656 (head!12906 s!2326)) (tail!11991 s!2326)))))

(declare-fun b!6281746 () Bool)

(declare-fun e!3820095 () Bool)

(assert (=> b!6281746 (= e!3820095 e!3820094)))

(declare-fun res!2590792 () Bool)

(assert (=> b!6281746 (=> (not res!2590792) (not e!3820094))))

(assert (=> b!6281746 (= res!2590792 (not lt!2354819))))

(declare-fun b!6281740 () Bool)

(declare-fun res!2590791 () Bool)

(assert (=> b!6281740 (=> (not res!2590791) (not e!3820093))))

(assert (=> b!6281740 (= res!2590791 (isEmpty!36834 (tail!11991 s!2326)))))

(declare-fun d!1971349 () Bool)

(assert (=> d!1971349 e!3820097))

(declare-fun c!1139217 () Bool)

(assert (=> d!1971349 (= c!1139217 ((_ is EmptyExpr!16203) lt!2354656))))

(assert (=> d!1971349 (= lt!2354819 e!3820096)))

(declare-fun c!1139218 () Bool)

(assert (=> d!1971349 (= c!1139218 (isEmpty!36834 s!2326))))

(assert (=> d!1971349 (validRegex!7939 lt!2354656)))

(assert (=> d!1971349 (= (matchR!8386 lt!2354656 s!2326) lt!2354819)))

(declare-fun b!6281747 () Bool)

(declare-fun res!2590789 () Bool)

(assert (=> b!6281747 (=> res!2590789 e!3820095)))

(assert (=> b!6281747 (= res!2590789 (not ((_ is ElementMatch!16203) lt!2354656)))))

(assert (=> b!6281747 (= e!3820091 e!3820095)))

(declare-fun b!6281748 () Bool)

(assert (=> b!6281748 (= e!3820097 (= lt!2354819 call!531595))))

(declare-fun b!6281749 () Bool)

(assert (=> b!6281749 (= e!3820096 (nullable!6196 lt!2354656))))

(declare-fun b!6281750 () Bool)

(declare-fun res!2590794 () Bool)

(assert (=> b!6281750 (=> res!2590794 e!3820095)))

(assert (=> b!6281750 (= res!2590794 e!3820093)))

(declare-fun res!2590788 () Bool)

(assert (=> b!6281750 (=> (not res!2590788) (not e!3820093))))

(assert (=> b!6281750 (= res!2590788 lt!2354819)))

(assert (= (and d!1971349 c!1139218) b!6281749))

(assert (= (and d!1971349 (not c!1139218)) b!6281745))

(assert (= (and d!1971349 c!1139217) b!6281748))

(assert (= (and d!1971349 (not c!1139217)) b!6281743))

(assert (= (and b!6281743 c!1139216) b!6281742))

(assert (= (and b!6281743 (not c!1139216)) b!6281747))

(assert (= (and b!6281747 (not res!2590789)) b!6281750))

(assert (= (and b!6281750 res!2590788) b!6281744))

(assert (= (and b!6281744 res!2590795) b!6281740))

(assert (= (and b!6281740 res!2590791) b!6281738))

(assert (= (and b!6281750 (not res!2590794)) b!6281746))

(assert (= (and b!6281746 res!2590792) b!6281737))

(assert (= (and b!6281737 (not res!2590790)) b!6281739))

(assert (= (and b!6281739 (not res!2590793)) b!6281741))

(assert (= (or b!6281748 b!6281737 b!6281744) bm!531590))

(assert (=> bm!531590 m!7102600))

(assert (=> b!6281741 m!7102604))

(assert (=> d!1971349 m!7102600))

(declare-fun m!7102690 () Bool)

(assert (=> d!1971349 m!7102690))

(assert (=> b!6281739 m!7102606))

(assert (=> b!6281739 m!7102606))

(assert (=> b!6281739 m!7102608))

(declare-fun m!7102692 () Bool)

(assert (=> b!6281749 m!7102692))

(assert (=> b!6281738 m!7102604))

(assert (=> b!6281745 m!7102604))

(assert (=> b!6281745 m!7102604))

(declare-fun m!7102694 () Bool)

(assert (=> b!6281745 m!7102694))

(assert (=> b!6281745 m!7102606))

(assert (=> b!6281745 m!7102694))

(assert (=> b!6281745 m!7102606))

(declare-fun m!7102696 () Bool)

(assert (=> b!6281745 m!7102696))

(assert (=> b!6281740 m!7102606))

(assert (=> b!6281740 m!7102606))

(assert (=> b!6281740 m!7102608))

(assert (=> b!6280970 d!1971349))

(declare-fun bs!1569002 () Bool)

(declare-fun d!1971351 () Bool)

(assert (= bs!1569002 (and d!1971351 d!1971341)))

(declare-fun lambda!344601 () Int)

(assert (=> bs!1569002 (= lambda!344601 lambda!344595)))

(declare-fun bs!1569003 () Bool)

(assert (= bs!1569003 (and d!1971351 d!1971343)))

(assert (=> bs!1569003 (= lambda!344601 lambda!344598)))

(declare-fun b!6281751 () Bool)

(declare-fun e!3820101 () Regex!16203)

(assert (=> b!6281751 (= e!3820101 EmptyExpr!16203)))

(declare-fun b!6281752 () Bool)

(declare-fun e!3820102 () Regex!16203)

(assert (=> b!6281752 (= e!3820102 (h!71232 lt!2354672))))

(declare-fun e!3820099 () Bool)

(assert (=> d!1971351 e!3820099))

(declare-fun res!2590797 () Bool)

(assert (=> d!1971351 (=> (not res!2590797) (not e!3820099))))

(declare-fun lt!2354820 () Regex!16203)

(assert (=> d!1971351 (= res!2590797 (validRegex!7939 lt!2354820))))

(assert (=> d!1971351 (= lt!2354820 e!3820102)))

(declare-fun c!1139222 () Bool)

(declare-fun e!3820100 () Bool)

(assert (=> d!1971351 (= c!1139222 e!3820100)))

(declare-fun res!2590796 () Bool)

(assert (=> d!1971351 (=> (not res!2590796) (not e!3820100))))

(assert (=> d!1971351 (= res!2590796 ((_ is Cons!64784) lt!2354672))))

(assert (=> d!1971351 (forall!15344 lt!2354672 lambda!344601)))

(assert (=> d!1971351 (= (generalisedConcat!1800 lt!2354672) lt!2354820)))

(declare-fun b!6281753 () Bool)

(assert (=> b!6281753 (= e!3820102 e!3820101)))

(declare-fun c!1139220 () Bool)

(assert (=> b!6281753 (= c!1139220 ((_ is Cons!64784) lt!2354672))))

(declare-fun b!6281754 () Bool)

(declare-fun e!3820103 () Bool)

(assert (=> b!6281754 (= e!3820103 (isConcat!1132 lt!2354820))))

(declare-fun b!6281755 () Bool)

(assert (=> b!6281755 (= e!3820101 (Concat!25048 (h!71232 lt!2354672) (generalisedConcat!1800 (t!378468 lt!2354672))))))

(declare-fun b!6281756 () Bool)

(assert (=> b!6281756 (= e!3820103 (= lt!2354820 (head!12907 lt!2354672)))))

(declare-fun b!6281757 () Bool)

(declare-fun e!3820098 () Bool)

(assert (=> b!6281757 (= e!3820099 e!3820098)))

(declare-fun c!1139221 () Bool)

(assert (=> b!6281757 (= c!1139221 (isEmpty!36830 lt!2354672))))

(declare-fun b!6281758 () Bool)

(assert (=> b!6281758 (= e!3820098 e!3820103)))

(declare-fun c!1139219 () Bool)

(assert (=> b!6281758 (= c!1139219 (isEmpty!36830 (tail!11992 lt!2354672)))))

(declare-fun b!6281759 () Bool)

(assert (=> b!6281759 (= e!3820098 (isEmptyExpr!1609 lt!2354820))))

(declare-fun b!6281760 () Bool)

(assert (=> b!6281760 (= e!3820100 (isEmpty!36830 (t!378468 lt!2354672)))))

(assert (= (and d!1971351 res!2590796) b!6281760))

(assert (= (and d!1971351 c!1139222) b!6281752))

(assert (= (and d!1971351 (not c!1139222)) b!6281753))

(assert (= (and b!6281753 c!1139220) b!6281755))

(assert (= (and b!6281753 (not c!1139220)) b!6281751))

(assert (= (and d!1971351 res!2590797) b!6281757))

(assert (= (and b!6281757 c!1139221) b!6281759))

(assert (= (and b!6281757 (not c!1139221)) b!6281758))

(assert (= (and b!6281758 c!1139219) b!6281756))

(assert (= (and b!6281758 (not c!1139219)) b!6281754))

(declare-fun m!7102698 () Bool)

(assert (=> b!6281759 m!7102698))

(declare-fun m!7102700 () Bool)

(assert (=> b!6281755 m!7102700))

(declare-fun m!7102702 () Bool)

(assert (=> b!6281758 m!7102702))

(assert (=> b!6281758 m!7102702))

(declare-fun m!7102704 () Bool)

(assert (=> b!6281758 m!7102704))

(declare-fun m!7102706 () Bool)

(assert (=> b!6281756 m!7102706))

(declare-fun m!7102708 () Bool)

(assert (=> d!1971351 m!7102708))

(declare-fun m!7102710 () Bool)

(assert (=> d!1971351 m!7102710))

(declare-fun m!7102712 () Bool)

(assert (=> b!6281760 m!7102712))

(declare-fun m!7102714 () Bool)

(assert (=> b!6281754 m!7102714))

(declare-fun m!7102716 () Bool)

(assert (=> b!6281757 m!7102716))

(assert (=> b!6280970 d!1971351))

(declare-fun d!1971353 () Bool)

(assert (=> d!1971353 (= (Exists!3273 lambda!344510) (choose!46643 lambda!344510))))

(declare-fun bs!1569004 () Bool)

(assert (= bs!1569004 d!1971353))

(declare-fun m!7102718 () Bool)

(assert (=> bs!1569004 m!7102718))

(assert (=> b!6280970 d!1971353))

(declare-fun bm!531597 () Bool)

(declare-fun call!531603 () Bool)

(declare-fun call!531604 () Bool)

(assert (=> bm!531597 (= call!531603 call!531604)))

(declare-fun b!6281779 () Bool)

(declare-fun res!2590811 () Bool)

(declare-fun e!3820120 () Bool)

(assert (=> b!6281779 (=> res!2590811 e!3820120)))

(assert (=> b!6281779 (= res!2590811 (not ((_ is Concat!25048) (regTwo!32918 (regOne!32918 r!7292)))))))

(declare-fun e!3820124 () Bool)

(assert (=> b!6281779 (= e!3820124 e!3820120)))

(declare-fun b!6281780 () Bool)

(declare-fun res!2590808 () Bool)

(declare-fun e!3820119 () Bool)

(assert (=> b!6281780 (=> (not res!2590808) (not e!3820119))))

(declare-fun call!531602 () Bool)

(assert (=> b!6281780 (= res!2590808 call!531602)))

(assert (=> b!6281780 (= e!3820124 e!3820119)))

(declare-fun b!6281781 () Bool)

(declare-fun e!3820121 () Bool)

(assert (=> b!6281781 (= e!3820121 call!531604)))

(declare-fun b!6281782 () Bool)

(assert (=> b!6281782 (= e!3820119 call!531603)))

(declare-fun b!6281783 () Bool)

(declare-fun e!3820122 () Bool)

(declare-fun e!3820123 () Bool)

(assert (=> b!6281783 (= e!3820122 e!3820123)))

(declare-fun c!1139228 () Bool)

(assert (=> b!6281783 (= c!1139228 ((_ is Star!16203) (regTwo!32918 (regOne!32918 r!7292))))))

(declare-fun b!6281784 () Bool)

(assert (=> b!6281784 (= e!3820123 e!3820124)))

(declare-fun c!1139227 () Bool)

(assert (=> b!6281784 (= c!1139227 ((_ is Union!16203) (regTwo!32918 (regOne!32918 r!7292))))))

(declare-fun bm!531598 () Bool)

(assert (=> bm!531598 (= call!531602 (validRegex!7939 (ite c!1139227 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))))))

(declare-fun b!6281786 () Bool)

(assert (=> b!6281786 (= e!3820123 e!3820121)))

(declare-fun res!2590809 () Bool)

(assert (=> b!6281786 (= res!2590809 (not (nullable!6196 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))))))))

(assert (=> b!6281786 (=> (not res!2590809) (not e!3820121))))

(declare-fun b!6281785 () Bool)

(declare-fun e!3820118 () Bool)

(assert (=> b!6281785 (= e!3820118 call!531603)))

(declare-fun d!1971355 () Bool)

(declare-fun res!2590812 () Bool)

(assert (=> d!1971355 (=> res!2590812 e!3820122)))

(assert (=> d!1971355 (= res!2590812 ((_ is ElementMatch!16203) (regTwo!32918 (regOne!32918 r!7292))))))

(assert (=> d!1971355 (= (validRegex!7939 (regTwo!32918 (regOne!32918 r!7292))) e!3820122)))

(declare-fun bm!531599 () Bool)

(assert (=> bm!531599 (= call!531604 (validRegex!7939 (ite c!1139228 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139227 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292)))))))))

(declare-fun b!6281787 () Bool)

(assert (=> b!6281787 (= e!3820120 e!3820118)))

(declare-fun res!2590810 () Bool)

(assert (=> b!6281787 (=> (not res!2590810) (not e!3820118))))

(assert (=> b!6281787 (= res!2590810 call!531602)))

(assert (= (and d!1971355 (not res!2590812)) b!6281783))

(assert (= (and b!6281783 c!1139228) b!6281786))

(assert (= (and b!6281783 (not c!1139228)) b!6281784))

(assert (= (and b!6281786 res!2590809) b!6281781))

(assert (= (and b!6281784 c!1139227) b!6281780))

(assert (= (and b!6281784 (not c!1139227)) b!6281779))

(assert (= (and b!6281780 res!2590808) b!6281782))

(assert (= (and b!6281779 (not res!2590811)) b!6281787))

(assert (= (and b!6281787 res!2590810) b!6281785))

(assert (= (or b!6281782 b!6281785) bm!531597))

(assert (= (or b!6281780 b!6281787) bm!531598))

(assert (= (or b!6281781 bm!531597) bm!531599))

(declare-fun m!7102720 () Bool)

(assert (=> bm!531598 m!7102720))

(declare-fun m!7102722 () Bool)

(assert (=> b!6281786 m!7102722))

(declare-fun m!7102724 () Bool)

(assert (=> bm!531599 m!7102724))

(assert (=> b!6280970 d!1971355))

(declare-fun d!1971357 () Bool)

(assert (=> d!1971357 (= (matchR!8386 lt!2354656 s!2326) (matchZipper!2215 lt!2354675 s!2326))))

(declare-fun lt!2354823 () Unit!158143)

(declare-fun choose!46651 ((InoxSet Context!11174) List!64910 Regex!16203 List!64909) Unit!158143)

(assert (=> d!1971357 (= lt!2354823 (choose!46651 lt!2354675 lt!2354647 lt!2354656 s!2326))))

(assert (=> d!1971357 (validRegex!7939 lt!2354656)))

(assert (=> d!1971357 (= (theoremZipperRegexEquiv!773 lt!2354675 lt!2354647 lt!2354656 s!2326) lt!2354823)))

(declare-fun bs!1569005 () Bool)

(assert (= bs!1569005 d!1971357))

(assert (=> bs!1569005 m!7102014))

(assert (=> bs!1569005 m!7102012))

(declare-fun m!7102726 () Bool)

(assert (=> bs!1569005 m!7102726))

(assert (=> bs!1569005 m!7102690))

(assert (=> b!6280970 d!1971357))

(declare-fun d!1971359 () Bool)

(assert (=> d!1971359 (= (matchR!8386 lt!2354656 s!2326) (matchRSpec!3304 lt!2354656 s!2326))))

(declare-fun lt!2354824 () Unit!158143)

(assert (=> d!1971359 (= lt!2354824 (choose!46649 lt!2354656 s!2326))))

(assert (=> d!1971359 (validRegex!7939 lt!2354656)))

(assert (=> d!1971359 (= (mainMatchTheorem!3304 lt!2354656 s!2326) lt!2354824)))

(declare-fun bs!1569006 () Bool)

(assert (= bs!1569006 d!1971359))

(assert (=> bs!1569006 m!7102014))

(assert (=> bs!1569006 m!7101986))

(declare-fun m!7102728 () Bool)

(assert (=> bs!1569006 m!7102728))

(assert (=> bs!1569006 m!7102690))

(assert (=> b!6280970 d!1971359))

(declare-fun d!1971361 () Bool)

(assert (=> d!1971361 (= (Exists!3273 lambda!344511) (choose!46643 lambda!344511))))

(declare-fun bs!1569007 () Bool)

(assert (= bs!1569007 d!1971361))

(declare-fun m!7102730 () Bool)

(assert (=> bs!1569007 m!7102730))

(assert (=> b!6280970 d!1971361))

(declare-fun bs!1569008 () Bool)

(declare-fun d!1971363 () Bool)

(assert (= bs!1569008 (and d!1971363 d!1971341)))

(declare-fun lambda!344602 () Int)

(assert (=> bs!1569008 (= lambda!344602 lambda!344595)))

(declare-fun bs!1569009 () Bool)

(assert (= bs!1569009 (and d!1971363 d!1971343)))

(assert (=> bs!1569009 (= lambda!344602 lambda!344598)))

(declare-fun bs!1569010 () Bool)

(assert (= bs!1569010 (and d!1971363 d!1971351)))

(assert (=> bs!1569010 (= lambda!344602 lambda!344601)))

(declare-fun b!6281788 () Bool)

(declare-fun e!3820128 () Regex!16203)

(assert (=> b!6281788 (= e!3820128 EmptyExpr!16203)))

(declare-fun b!6281789 () Bool)

(declare-fun e!3820129 () Regex!16203)

(assert (=> b!6281789 (= e!3820129 (h!71232 lt!2354639))))

(declare-fun e!3820126 () Bool)

(assert (=> d!1971363 e!3820126))

(declare-fun res!2590814 () Bool)

(assert (=> d!1971363 (=> (not res!2590814) (not e!3820126))))

(declare-fun lt!2354825 () Regex!16203)

(assert (=> d!1971363 (= res!2590814 (validRegex!7939 lt!2354825))))

(assert (=> d!1971363 (= lt!2354825 e!3820129)))

(declare-fun c!1139232 () Bool)

(declare-fun e!3820127 () Bool)

(assert (=> d!1971363 (= c!1139232 e!3820127)))

(declare-fun res!2590813 () Bool)

(assert (=> d!1971363 (=> (not res!2590813) (not e!3820127))))

(assert (=> d!1971363 (= res!2590813 ((_ is Cons!64784) lt!2354639))))

(assert (=> d!1971363 (forall!15344 lt!2354639 lambda!344602)))

(assert (=> d!1971363 (= (generalisedConcat!1800 lt!2354639) lt!2354825)))

(declare-fun b!6281790 () Bool)

(assert (=> b!6281790 (= e!3820129 e!3820128)))

(declare-fun c!1139230 () Bool)

(assert (=> b!6281790 (= c!1139230 ((_ is Cons!64784) lt!2354639))))

(declare-fun b!6281791 () Bool)

(declare-fun e!3820130 () Bool)

(assert (=> b!6281791 (= e!3820130 (isConcat!1132 lt!2354825))))

(declare-fun b!6281792 () Bool)

(assert (=> b!6281792 (= e!3820128 (Concat!25048 (h!71232 lt!2354639) (generalisedConcat!1800 (t!378468 lt!2354639))))))

(declare-fun b!6281793 () Bool)

(assert (=> b!6281793 (= e!3820130 (= lt!2354825 (head!12907 lt!2354639)))))

(declare-fun b!6281794 () Bool)

(declare-fun e!3820125 () Bool)

(assert (=> b!6281794 (= e!3820126 e!3820125)))

(declare-fun c!1139231 () Bool)

(assert (=> b!6281794 (= c!1139231 (isEmpty!36830 lt!2354639))))

(declare-fun b!6281795 () Bool)

(assert (=> b!6281795 (= e!3820125 e!3820130)))

(declare-fun c!1139229 () Bool)

(assert (=> b!6281795 (= c!1139229 (isEmpty!36830 (tail!11992 lt!2354639)))))

(declare-fun b!6281796 () Bool)

(assert (=> b!6281796 (= e!3820125 (isEmptyExpr!1609 lt!2354825))))

(declare-fun b!6281797 () Bool)

(assert (=> b!6281797 (= e!3820127 (isEmpty!36830 (t!378468 lt!2354639)))))

(assert (= (and d!1971363 res!2590813) b!6281797))

(assert (= (and d!1971363 c!1139232) b!6281789))

(assert (= (and d!1971363 (not c!1139232)) b!6281790))

(assert (= (and b!6281790 c!1139230) b!6281792))

(assert (= (and b!6281790 (not c!1139230)) b!6281788))

(assert (= (and d!1971363 res!2590814) b!6281794))

(assert (= (and b!6281794 c!1139231) b!6281796))

(assert (= (and b!6281794 (not c!1139231)) b!6281795))

(assert (= (and b!6281795 c!1139229) b!6281793))

(assert (= (and b!6281795 (not c!1139229)) b!6281791))

(declare-fun m!7102732 () Bool)

(assert (=> b!6281796 m!7102732))

(declare-fun m!7102734 () Bool)

(assert (=> b!6281792 m!7102734))

(declare-fun m!7102736 () Bool)

(assert (=> b!6281795 m!7102736))

(assert (=> b!6281795 m!7102736))

(declare-fun m!7102738 () Bool)

(assert (=> b!6281795 m!7102738))

(declare-fun m!7102740 () Bool)

(assert (=> b!6281793 m!7102740))

(declare-fun m!7102742 () Bool)

(assert (=> d!1971363 m!7102742))

(declare-fun m!7102744 () Bool)

(assert (=> d!1971363 m!7102744))

(declare-fun m!7102746 () Bool)

(assert (=> b!6281797 m!7102746))

(declare-fun m!7102748 () Bool)

(assert (=> b!6281791 m!7102748))

(declare-fun m!7102750 () Bool)

(assert (=> b!6281794 m!7102750))

(assert (=> b!6280970 d!1971363))

(declare-fun bs!1569011 () Bool)

(declare-fun d!1971365 () Bool)

(assert (= bs!1569011 (and d!1971365 d!1971297)))

(declare-fun lambda!344603 () Int)

(assert (=> bs!1569011 (not (= lambda!344603 lambda!344574))))

(declare-fun bs!1569012 () Bool)

(assert (= bs!1569012 (and d!1971365 b!6281727)))

(assert (=> bs!1569012 (not (= lambda!344603 lambda!344599))))

(declare-fun bs!1569013 () Bool)

(assert (= bs!1569013 (and d!1971365 b!6280967)))

(assert (=> bs!1569013 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344603 lambda!344507))))

(declare-fun bs!1569014 () Bool)

(assert (= bs!1569014 (and d!1971365 d!1971295)))

(assert (=> bs!1569014 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344603 lambda!344568))))

(assert (=> bs!1569011 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344603 lambda!344573))))

(declare-fun bs!1569015 () Bool)

(assert (= bs!1569015 (and d!1971365 b!6281621)))

(assert (=> bs!1569015 (not (= lambda!344603 lambda!344580))))

(declare-fun bs!1569016 () Bool)

(assert (= bs!1569016 (and d!1971365 b!6280970)))

(assert (=> bs!1569016 (= lambda!344603 lambda!344510)))

(assert (=> bs!1569016 (not (= lambda!344603 lambda!344511))))

(assert (=> bs!1569013 (not (= lambda!344603 lambda!344508))))

(declare-fun bs!1569017 () Bool)

(assert (= bs!1569017 (and d!1971365 b!6281721)))

(assert (=> bs!1569017 (not (= lambda!344603 lambda!344600))))

(declare-fun bs!1569018 () Bool)

(assert (= bs!1569018 (and d!1971365 b!6281627)))

(assert (=> bs!1569018 (not (= lambda!344603 lambda!344579))))

(assert (=> d!1971365 true))

(assert (=> d!1971365 true))

(assert (=> d!1971365 true))

(assert (=> d!1971365 (= (isDefined!12797 (findConcatSeparation!2508 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 Nil!64785 s!2326 s!2326)) (Exists!3273 lambda!344603))))

(declare-fun lt!2354826 () Unit!158143)

(assert (=> d!1971365 (= lt!2354826 (choose!46644 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 s!2326))))

(assert (=> d!1971365 (validRegex!7939 (regOne!32918 (regOne!32918 r!7292)))))

(assert (=> d!1971365 (= (lemmaFindConcatSeparationEquivalentToExists!2272 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 s!2326) lt!2354826)))

(declare-fun bs!1569019 () Bool)

(assert (= bs!1569019 d!1971365))

(assert (=> bs!1569019 m!7101990))

(assert (=> bs!1569019 m!7101992))

(declare-fun m!7102752 () Bool)

(assert (=> bs!1569019 m!7102752))

(declare-fun m!7102754 () Bool)

(assert (=> bs!1569019 m!7102754))

(assert (=> bs!1569019 m!7101990))

(assert (=> bs!1569019 m!7102678))

(assert (=> b!6280970 d!1971365))

(declare-fun bs!1569020 () Bool)

(declare-fun d!1971367 () Bool)

(assert (= bs!1569020 (and d!1971367 d!1971341)))

(declare-fun lambda!344604 () Int)

(assert (=> bs!1569020 (= lambda!344604 lambda!344595)))

(declare-fun bs!1569021 () Bool)

(assert (= bs!1569021 (and d!1971367 d!1971343)))

(assert (=> bs!1569021 (= lambda!344604 lambda!344598)))

(declare-fun bs!1569022 () Bool)

(assert (= bs!1569022 (and d!1971367 d!1971351)))

(assert (=> bs!1569022 (= lambda!344604 lambda!344601)))

(declare-fun bs!1569023 () Bool)

(assert (= bs!1569023 (and d!1971367 d!1971363)))

(assert (=> bs!1569023 (= lambda!344604 lambda!344602)))

(declare-fun b!6281798 () Bool)

(declare-fun e!3820134 () Regex!16203)

(assert (=> b!6281798 (= e!3820134 EmptyExpr!16203)))

(declare-fun b!6281799 () Bool)

(declare-fun e!3820135 () Regex!16203)

(assert (=> b!6281799 (= e!3820135 (h!71232 (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun e!3820132 () Bool)

(assert (=> d!1971367 e!3820132))

(declare-fun res!2590816 () Bool)

(assert (=> d!1971367 (=> (not res!2590816) (not e!3820132))))

(declare-fun lt!2354827 () Regex!16203)

(assert (=> d!1971367 (= res!2590816 (validRegex!7939 lt!2354827))))

(assert (=> d!1971367 (= lt!2354827 e!3820135)))

(declare-fun c!1139236 () Bool)

(declare-fun e!3820133 () Bool)

(assert (=> d!1971367 (= c!1139236 e!3820133)))

(declare-fun res!2590815 () Bool)

(assert (=> d!1971367 (=> (not res!2590815) (not e!3820133))))

(assert (=> d!1971367 (= res!2590815 ((_ is Cons!64784) (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> d!1971367 (forall!15344 (t!378468 (exprs!6087 (h!71234 zl!343))) lambda!344604)))

(assert (=> d!1971367 (= (generalisedConcat!1800 (t!378468 (exprs!6087 (h!71234 zl!343)))) lt!2354827)))

(declare-fun b!6281800 () Bool)

(assert (=> b!6281800 (= e!3820135 e!3820134)))

(declare-fun c!1139234 () Bool)

(assert (=> b!6281800 (= c!1139234 ((_ is Cons!64784) (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6281801 () Bool)

(declare-fun e!3820136 () Bool)

(assert (=> b!6281801 (= e!3820136 (isConcat!1132 lt!2354827))))

(declare-fun b!6281802 () Bool)

(assert (=> b!6281802 (= e!3820134 (Concat!25048 (h!71232 (t!378468 (exprs!6087 (h!71234 zl!343)))) (generalisedConcat!1800 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343)))))))))

(declare-fun b!6281803 () Bool)

(assert (=> b!6281803 (= e!3820136 (= lt!2354827 (head!12907 (t!378468 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun b!6281804 () Bool)

(declare-fun e!3820131 () Bool)

(assert (=> b!6281804 (= e!3820132 e!3820131)))

(declare-fun c!1139235 () Bool)

(assert (=> b!6281804 (= c!1139235 (isEmpty!36830 (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6281805 () Bool)

(assert (=> b!6281805 (= e!3820131 e!3820136)))

(declare-fun c!1139233 () Bool)

(assert (=> b!6281805 (= c!1139233 (isEmpty!36830 (tail!11992 (t!378468 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun b!6281806 () Bool)

(assert (=> b!6281806 (= e!3820131 (isEmptyExpr!1609 lt!2354827))))

(declare-fun b!6281807 () Bool)

(assert (=> b!6281807 (= e!3820133 (isEmpty!36830 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343))))))))

(assert (= (and d!1971367 res!2590815) b!6281807))

(assert (= (and d!1971367 c!1139236) b!6281799))

(assert (= (and d!1971367 (not c!1139236)) b!6281800))

(assert (= (and b!6281800 c!1139234) b!6281802))

(assert (= (and b!6281800 (not c!1139234)) b!6281798))

(assert (= (and d!1971367 res!2590816) b!6281804))

(assert (= (and b!6281804 c!1139235) b!6281806))

(assert (= (and b!6281804 (not c!1139235)) b!6281805))

(assert (= (and b!6281805 c!1139233) b!6281803))

(assert (= (and b!6281805 (not c!1139233)) b!6281801))

(declare-fun m!7102756 () Bool)

(assert (=> b!6281806 m!7102756))

(declare-fun m!7102758 () Bool)

(assert (=> b!6281802 m!7102758))

(declare-fun m!7102760 () Bool)

(assert (=> b!6281805 m!7102760))

(assert (=> b!6281805 m!7102760))

(declare-fun m!7102762 () Bool)

(assert (=> b!6281805 m!7102762))

(declare-fun m!7102764 () Bool)

(assert (=> b!6281803 m!7102764))

(declare-fun m!7102766 () Bool)

(assert (=> d!1971367 m!7102766))

(declare-fun m!7102768 () Bool)

(assert (=> d!1971367 m!7102768))

(declare-fun m!7102770 () Bool)

(assert (=> b!6281807 m!7102770))

(declare-fun m!7102772 () Bool)

(assert (=> b!6281801 m!7102772))

(assert (=> b!6281804 m!7101982))

(assert (=> b!6280970 d!1971367))

(declare-fun d!1971369 () Bool)

(assert (=> d!1971369 (= (matchR!8386 lt!2354652 s!2326) (matchZipper!2215 lt!2354666 s!2326))))

(declare-fun lt!2354828 () Unit!158143)

(assert (=> d!1971369 (= lt!2354828 (choose!46651 lt!2354666 (Cons!64786 lt!2354667 Nil!64786) lt!2354652 s!2326))))

(assert (=> d!1971369 (validRegex!7939 lt!2354652)))

(assert (=> d!1971369 (= (theoremZipperRegexEquiv!773 lt!2354666 (Cons!64786 lt!2354667 Nil!64786) lt!2354652 s!2326) lt!2354828)))

(declare-fun bs!1569024 () Bool)

(assert (= bs!1569024 d!1971369))

(assert (=> bs!1569024 m!7102016))

(assert (=> bs!1569024 m!7101988))

(declare-fun m!7102774 () Bool)

(assert (=> bs!1569024 m!7102774))

(declare-fun m!7102776 () Bool)

(assert (=> bs!1569024 m!7102776))

(assert (=> b!6280970 d!1971369))

(declare-fun b!6281808 () Bool)

(declare-fun e!3820140 () Bool)

(declare-fun e!3820138 () Bool)

(assert (=> b!6281808 (= e!3820140 e!3820138)))

(declare-fun res!2590819 () Bool)

(assert (=> b!6281808 (=> res!2590819 e!3820138)))

(declare-fun call!531605 () Bool)

(assert (=> b!6281808 (= res!2590819 call!531605)))

(declare-fun b!6281809 () Bool)

(declare-fun e!3820139 () Bool)

(assert (=> b!6281809 (= e!3820139 (= (head!12906 s!2326) (c!1138982 lt!2354652)))))

(declare-fun b!6281810 () Bool)

(declare-fun res!2590822 () Bool)

(assert (=> b!6281810 (=> res!2590822 e!3820138)))

(assert (=> b!6281810 (= res!2590822 (not (isEmpty!36834 (tail!11991 s!2326))))))

(declare-fun b!6281812 () Bool)

(assert (=> b!6281812 (= e!3820138 (not (= (head!12906 s!2326) (c!1138982 lt!2354652))))))

(declare-fun b!6281813 () Bool)

(declare-fun e!3820137 () Bool)

(declare-fun lt!2354829 () Bool)

(assert (=> b!6281813 (= e!3820137 (not lt!2354829))))

(declare-fun b!6281814 () Bool)

(declare-fun e!3820143 () Bool)

(assert (=> b!6281814 (= e!3820143 e!3820137)))

(declare-fun c!1139237 () Bool)

(assert (=> b!6281814 (= c!1139237 ((_ is EmptyLang!16203) lt!2354652))))

(declare-fun bm!531600 () Bool)

(assert (=> bm!531600 (= call!531605 (isEmpty!36834 s!2326))))

(declare-fun b!6281815 () Bool)

(declare-fun res!2590824 () Bool)

(assert (=> b!6281815 (=> (not res!2590824) (not e!3820139))))

(assert (=> b!6281815 (= res!2590824 (not call!531605))))

(declare-fun b!6281816 () Bool)

(declare-fun e!3820142 () Bool)

(assert (=> b!6281816 (= e!3820142 (matchR!8386 (derivativeStep!4912 lt!2354652 (head!12906 s!2326)) (tail!11991 s!2326)))))

(declare-fun b!6281817 () Bool)

(declare-fun e!3820141 () Bool)

(assert (=> b!6281817 (= e!3820141 e!3820140)))

(declare-fun res!2590821 () Bool)

(assert (=> b!6281817 (=> (not res!2590821) (not e!3820140))))

(assert (=> b!6281817 (= res!2590821 (not lt!2354829))))

(declare-fun b!6281811 () Bool)

(declare-fun res!2590820 () Bool)

(assert (=> b!6281811 (=> (not res!2590820) (not e!3820139))))

(assert (=> b!6281811 (= res!2590820 (isEmpty!36834 (tail!11991 s!2326)))))

(declare-fun d!1971371 () Bool)

(assert (=> d!1971371 e!3820143))

(declare-fun c!1139238 () Bool)

(assert (=> d!1971371 (= c!1139238 ((_ is EmptyExpr!16203) lt!2354652))))

(assert (=> d!1971371 (= lt!2354829 e!3820142)))

(declare-fun c!1139239 () Bool)

(assert (=> d!1971371 (= c!1139239 (isEmpty!36834 s!2326))))

(assert (=> d!1971371 (validRegex!7939 lt!2354652)))

(assert (=> d!1971371 (= (matchR!8386 lt!2354652 s!2326) lt!2354829)))

(declare-fun b!6281818 () Bool)

(declare-fun res!2590818 () Bool)

(assert (=> b!6281818 (=> res!2590818 e!3820141)))

(assert (=> b!6281818 (= res!2590818 (not ((_ is ElementMatch!16203) lt!2354652)))))

(assert (=> b!6281818 (= e!3820137 e!3820141)))

(declare-fun b!6281819 () Bool)

(assert (=> b!6281819 (= e!3820143 (= lt!2354829 call!531605))))

(declare-fun b!6281820 () Bool)

(assert (=> b!6281820 (= e!3820142 (nullable!6196 lt!2354652))))

(declare-fun b!6281821 () Bool)

(declare-fun res!2590823 () Bool)

(assert (=> b!6281821 (=> res!2590823 e!3820141)))

(assert (=> b!6281821 (= res!2590823 e!3820139)))

(declare-fun res!2590817 () Bool)

(assert (=> b!6281821 (=> (not res!2590817) (not e!3820139))))

(assert (=> b!6281821 (= res!2590817 lt!2354829)))

(assert (= (and d!1971371 c!1139239) b!6281820))

(assert (= (and d!1971371 (not c!1139239)) b!6281816))

(assert (= (and d!1971371 c!1139238) b!6281819))

(assert (= (and d!1971371 (not c!1139238)) b!6281814))

(assert (= (and b!6281814 c!1139237) b!6281813))

(assert (= (and b!6281814 (not c!1139237)) b!6281818))

(assert (= (and b!6281818 (not res!2590818)) b!6281821))

(assert (= (and b!6281821 res!2590817) b!6281815))

(assert (= (and b!6281815 res!2590824) b!6281811))

(assert (= (and b!6281811 res!2590820) b!6281809))

(assert (= (and b!6281821 (not res!2590823)) b!6281817))

(assert (= (and b!6281817 res!2590821) b!6281808))

(assert (= (and b!6281808 (not res!2590819)) b!6281810))

(assert (= (and b!6281810 (not res!2590822)) b!6281812))

(assert (= (or b!6281819 b!6281808 b!6281815) bm!531600))

(assert (=> bm!531600 m!7102600))

(assert (=> b!6281812 m!7102604))

(assert (=> d!1971371 m!7102600))

(assert (=> d!1971371 m!7102776))

(assert (=> b!6281810 m!7102606))

(assert (=> b!6281810 m!7102606))

(assert (=> b!6281810 m!7102608))

(declare-fun m!7102778 () Bool)

(assert (=> b!6281820 m!7102778))

(assert (=> b!6281809 m!7102604))

(assert (=> b!6281816 m!7102604))

(assert (=> b!6281816 m!7102604))

(declare-fun m!7102780 () Bool)

(assert (=> b!6281816 m!7102780))

(assert (=> b!6281816 m!7102606))

(assert (=> b!6281816 m!7102780))

(assert (=> b!6281816 m!7102606))

(declare-fun m!7102782 () Bool)

(assert (=> b!6281816 m!7102782))

(assert (=> b!6281811 m!7102606))

(assert (=> b!6281811 m!7102606))

(assert (=> b!6281811 m!7102608))

(assert (=> b!6280970 d!1971371))

(declare-fun d!1971373 () Bool)

(assert (=> d!1971373 (= (isDefined!12797 (findConcatSeparation!2508 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 Nil!64785 s!2326 s!2326)) (not (isEmpty!36833 (findConcatSeparation!2508 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 Nil!64785 s!2326 s!2326))))))

(declare-fun bs!1569025 () Bool)

(assert (= bs!1569025 d!1971373))

(assert (=> bs!1569025 m!7101990))

(declare-fun m!7102784 () Bool)

(assert (=> bs!1569025 m!7102784))

(assert (=> b!6280970 d!1971373))

(declare-fun bs!1569026 () Bool)

(declare-fun d!1971375 () Bool)

(assert (= bs!1569026 (and d!1971375 d!1971297)))

(declare-fun lambda!344605 () Int)

(assert (=> bs!1569026 (not (= lambda!344605 lambda!344574))))

(declare-fun bs!1569027 () Bool)

(assert (= bs!1569027 (and d!1971375 b!6281727)))

(assert (=> bs!1569027 (not (= lambda!344605 lambda!344599))))

(declare-fun bs!1569028 () Bool)

(assert (= bs!1569028 (and d!1971375 b!6280967)))

(assert (=> bs!1569028 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344605 lambda!344507))))

(declare-fun bs!1569029 () Bool)

(assert (= bs!1569029 (and d!1971375 d!1971295)))

(assert (=> bs!1569029 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344605 lambda!344568))))

(assert (=> bs!1569026 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344605 lambda!344573))))

(declare-fun bs!1569030 () Bool)

(assert (= bs!1569030 (and d!1971375 d!1971365)))

(assert (=> bs!1569030 (= lambda!344605 lambda!344603)))

(declare-fun bs!1569031 () Bool)

(assert (= bs!1569031 (and d!1971375 b!6281621)))

(assert (=> bs!1569031 (not (= lambda!344605 lambda!344580))))

(declare-fun bs!1569032 () Bool)

(assert (= bs!1569032 (and d!1971375 b!6280970)))

(assert (=> bs!1569032 (= lambda!344605 lambda!344510)))

(assert (=> bs!1569032 (not (= lambda!344605 lambda!344511))))

(assert (=> bs!1569028 (not (= lambda!344605 lambda!344508))))

(declare-fun bs!1569033 () Bool)

(assert (= bs!1569033 (and d!1971375 b!6281721)))

(assert (=> bs!1569033 (not (= lambda!344605 lambda!344600))))

(declare-fun bs!1569034 () Bool)

(assert (= bs!1569034 (and d!1971375 b!6281627)))

(assert (=> bs!1569034 (not (= lambda!344605 lambda!344579))))

(assert (=> d!1971375 true))

(assert (=> d!1971375 true))

(assert (=> d!1971375 true))

(declare-fun bs!1569035 () Bool)

(assert (= bs!1569035 d!1971375))

(declare-fun lambda!344606 () Int)

(assert (=> bs!1569035 (not (= lambda!344606 lambda!344605))))

(assert (=> bs!1569026 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344606 lambda!344574))))

(assert (=> bs!1569027 (not (= lambda!344606 lambda!344599))))

(assert (=> bs!1569028 (not (= lambda!344606 lambda!344507))))

(assert (=> bs!1569029 (not (= lambda!344606 lambda!344568))))

(assert (=> bs!1569026 (not (= lambda!344606 lambda!344573))))

(assert (=> bs!1569030 (not (= lambda!344606 lambda!344603))))

(assert (=> bs!1569031 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344606 lambda!344580))))

(assert (=> bs!1569032 (not (= lambda!344606 lambda!344510))))

(assert (=> bs!1569032 (= lambda!344606 lambda!344511)))

(assert (=> bs!1569028 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344606 lambda!344508))))

(assert (=> bs!1569033 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 lt!2354656)) (= lt!2354652 (regTwo!32918 lt!2354656))) (= lambda!344606 lambda!344600))))

(assert (=> bs!1569034 (not (= lambda!344606 lambda!344579))))

(assert (=> d!1971375 true))

(assert (=> d!1971375 true))

(assert (=> d!1971375 true))

(assert (=> d!1971375 (= (Exists!3273 lambda!344605) (Exists!3273 lambda!344606))))

(declare-fun lt!2354830 () Unit!158143)

(assert (=> d!1971375 (= lt!2354830 (choose!46645 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 s!2326))))

(assert (=> d!1971375 (validRegex!7939 (regOne!32918 (regOne!32918 r!7292)))))

(assert (=> d!1971375 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1810 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 s!2326) lt!2354830)))

(declare-fun m!7102786 () Bool)

(assert (=> bs!1569035 m!7102786))

(declare-fun m!7102788 () Bool)

(assert (=> bs!1569035 m!7102788))

(declare-fun m!7102790 () Bool)

(assert (=> bs!1569035 m!7102790))

(assert (=> bs!1569035 m!7102678))

(assert (=> b!6280970 d!1971375))

(declare-fun bs!1569036 () Bool)

(declare-fun b!6281832 () Bool)

(assert (= bs!1569036 (and b!6281832 d!1971375)))

(declare-fun lambda!344607 () Int)

(assert (=> bs!1569036 (not (= lambda!344607 lambda!344605))))

(declare-fun bs!1569037 () Bool)

(assert (= bs!1569037 (and b!6281832 d!1971297)))

(assert (=> bs!1569037 (not (= lambda!344607 lambda!344574))))

(declare-fun bs!1569038 () Bool)

(assert (= bs!1569038 (and b!6281832 b!6281727)))

(assert (=> bs!1569038 (= (and (= (reg!16532 lt!2354652) (reg!16532 lt!2354656)) (= lt!2354652 lt!2354656)) (= lambda!344607 lambda!344599))))

(assert (=> bs!1569036 (not (= lambda!344607 lambda!344606))))

(declare-fun bs!1569039 () Bool)

(assert (= bs!1569039 (and b!6281832 b!6280967)))

(assert (=> bs!1569039 (not (= lambda!344607 lambda!344507))))

(declare-fun bs!1569040 () Bool)

(assert (= bs!1569040 (and b!6281832 d!1971295)))

(assert (=> bs!1569040 (not (= lambda!344607 lambda!344568))))

(assert (=> bs!1569037 (not (= lambda!344607 lambda!344573))))

(declare-fun bs!1569041 () Bool)

(assert (= bs!1569041 (and b!6281832 d!1971365)))

(assert (=> bs!1569041 (not (= lambda!344607 lambda!344603))))

(declare-fun bs!1569042 () Bool)

(assert (= bs!1569042 (and b!6281832 b!6281621)))

(assert (=> bs!1569042 (not (= lambda!344607 lambda!344580))))

(declare-fun bs!1569043 () Bool)

(assert (= bs!1569043 (and b!6281832 b!6280970)))

(assert (=> bs!1569043 (not (= lambda!344607 lambda!344510))))

(assert (=> bs!1569043 (not (= lambda!344607 lambda!344511))))

(assert (=> bs!1569039 (not (= lambda!344607 lambda!344508))))

(declare-fun bs!1569044 () Bool)

(assert (= bs!1569044 (and b!6281832 b!6281721)))

(assert (=> bs!1569044 (not (= lambda!344607 lambda!344600))))

(declare-fun bs!1569045 () Bool)

(assert (= bs!1569045 (and b!6281832 b!6281627)))

(assert (=> bs!1569045 (= (and (= (reg!16532 lt!2354652) (reg!16532 r!7292)) (= lt!2354652 r!7292)) (= lambda!344607 lambda!344579))))

(assert (=> b!6281832 true))

(assert (=> b!6281832 true))

(declare-fun bs!1569046 () Bool)

(declare-fun b!6281826 () Bool)

(assert (= bs!1569046 (and b!6281826 d!1971375)))

(declare-fun lambda!344608 () Int)

(assert (=> bs!1569046 (not (= lambda!344608 lambda!344605))))

(declare-fun bs!1569047 () Bool)

(assert (= bs!1569047 (and b!6281826 d!1971297)))

(assert (=> bs!1569047 (= (and (= (regOne!32918 lt!2354652) (regOne!32918 r!7292)) (= (regTwo!32918 lt!2354652) (regTwo!32918 r!7292))) (= lambda!344608 lambda!344574))))

(declare-fun bs!1569048 () Bool)

(assert (= bs!1569048 (and b!6281826 b!6281727)))

(assert (=> bs!1569048 (not (= lambda!344608 lambda!344599))))

(assert (=> bs!1569046 (= (and (= (regOne!32918 lt!2354652) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 lt!2354652) lt!2354652)) (= lambda!344608 lambda!344606))))

(declare-fun bs!1569049 () Bool)

(assert (= bs!1569049 (and b!6281826 b!6280967)))

(assert (=> bs!1569049 (not (= lambda!344608 lambda!344507))))

(declare-fun bs!1569050 () Bool)

(assert (= bs!1569050 (and b!6281826 d!1971295)))

(assert (=> bs!1569050 (not (= lambda!344608 lambda!344568))))

(assert (=> bs!1569047 (not (= lambda!344608 lambda!344573))))

(declare-fun bs!1569051 () Bool)

(assert (= bs!1569051 (and b!6281826 d!1971365)))

(assert (=> bs!1569051 (not (= lambda!344608 lambda!344603))))

(declare-fun bs!1569052 () Bool)

(assert (= bs!1569052 (and b!6281826 b!6281621)))

(assert (=> bs!1569052 (= (and (= (regOne!32918 lt!2354652) (regOne!32918 r!7292)) (= (regTwo!32918 lt!2354652) (regTwo!32918 r!7292))) (= lambda!344608 lambda!344580))))

(declare-fun bs!1569053 () Bool)

(assert (= bs!1569053 (and b!6281826 b!6280970)))

(assert (=> bs!1569053 (not (= lambda!344608 lambda!344510))))

(declare-fun bs!1569054 () Bool)

(assert (= bs!1569054 (and b!6281826 b!6281832)))

(assert (=> bs!1569054 (not (= lambda!344608 lambda!344607))))

(assert (=> bs!1569053 (= (and (= (regOne!32918 lt!2354652) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 lt!2354652) lt!2354652)) (= lambda!344608 lambda!344511))))

(assert (=> bs!1569049 (= (and (= (regOne!32918 lt!2354652) (regOne!32918 r!7292)) (= (regTwo!32918 lt!2354652) (regTwo!32918 r!7292))) (= lambda!344608 lambda!344508))))

(declare-fun bs!1569055 () Bool)

(assert (= bs!1569055 (and b!6281826 b!6281721)))

(assert (=> bs!1569055 (= (and (= (regOne!32918 lt!2354652) (regOne!32918 lt!2354656)) (= (regTwo!32918 lt!2354652) (regTwo!32918 lt!2354656))) (= lambda!344608 lambda!344600))))

(declare-fun bs!1569056 () Bool)

(assert (= bs!1569056 (and b!6281826 b!6281627)))

(assert (=> bs!1569056 (not (= lambda!344608 lambda!344579))))

(assert (=> b!6281826 true))

(assert (=> b!6281826 true))

(declare-fun b!6281822 () Bool)

(declare-fun e!3820149 () Bool)

(declare-fun e!3820144 () Bool)

(assert (=> b!6281822 (= e!3820149 e!3820144)))

(declare-fun c!1139240 () Bool)

(assert (=> b!6281822 (= c!1139240 ((_ is Star!16203) lt!2354652))))

(declare-fun b!6281823 () Bool)

(declare-fun e!3820148 () Bool)

(assert (=> b!6281823 (= e!3820149 e!3820148)))

(declare-fun res!2590827 () Bool)

(assert (=> b!6281823 (= res!2590827 (matchRSpec!3304 (regOne!32919 lt!2354652) s!2326))))

(assert (=> b!6281823 (=> res!2590827 e!3820148)))

(declare-fun b!6281824 () Bool)

(declare-fun e!3820146 () Bool)

(declare-fun call!531607 () Bool)

(assert (=> b!6281824 (= e!3820146 call!531607)))

(declare-fun d!1971377 () Bool)

(declare-fun c!1139243 () Bool)

(assert (=> d!1971377 (= c!1139243 ((_ is EmptyExpr!16203) lt!2354652))))

(assert (=> d!1971377 (= (matchRSpec!3304 lt!2354652 s!2326) e!3820146)))

(declare-fun b!6281825 () Bool)

(assert (=> b!6281825 (= e!3820148 (matchRSpec!3304 (regTwo!32919 lt!2354652) s!2326))))

(declare-fun call!531606 () Bool)

(assert (=> b!6281826 (= e!3820144 call!531606)))

(declare-fun b!6281827 () Bool)

(declare-fun e!3820145 () Bool)

(assert (=> b!6281827 (= e!3820145 (= s!2326 (Cons!64785 (c!1138982 lt!2354652) Nil!64785)))))

(declare-fun b!6281828 () Bool)

(declare-fun e!3820150 () Bool)

(assert (=> b!6281828 (= e!3820146 e!3820150)))

(declare-fun res!2590825 () Bool)

(assert (=> b!6281828 (= res!2590825 (not ((_ is EmptyLang!16203) lt!2354652)))))

(assert (=> b!6281828 (=> (not res!2590825) (not e!3820150))))

(declare-fun b!6281829 () Bool)

(declare-fun res!2590826 () Bool)

(declare-fun e!3820147 () Bool)

(assert (=> b!6281829 (=> res!2590826 e!3820147)))

(assert (=> b!6281829 (= res!2590826 call!531607)))

(assert (=> b!6281829 (= e!3820144 e!3820147)))

(declare-fun bm!531601 () Bool)

(assert (=> bm!531601 (= call!531607 (isEmpty!36834 s!2326))))

(declare-fun b!6281830 () Bool)

(declare-fun c!1139241 () Bool)

(assert (=> b!6281830 (= c!1139241 ((_ is Union!16203) lt!2354652))))

(assert (=> b!6281830 (= e!3820145 e!3820149)))

(declare-fun b!6281831 () Bool)

(declare-fun c!1139242 () Bool)

(assert (=> b!6281831 (= c!1139242 ((_ is ElementMatch!16203) lt!2354652))))

(assert (=> b!6281831 (= e!3820150 e!3820145)))

(assert (=> b!6281832 (= e!3820147 call!531606)))

(declare-fun bm!531602 () Bool)

(assert (=> bm!531602 (= call!531606 (Exists!3273 (ite c!1139240 lambda!344607 lambda!344608)))))

(assert (= (and d!1971377 c!1139243) b!6281824))

(assert (= (and d!1971377 (not c!1139243)) b!6281828))

(assert (= (and b!6281828 res!2590825) b!6281831))

(assert (= (and b!6281831 c!1139242) b!6281827))

(assert (= (and b!6281831 (not c!1139242)) b!6281830))

(assert (= (and b!6281830 c!1139241) b!6281823))

(assert (= (and b!6281830 (not c!1139241)) b!6281822))

(assert (= (and b!6281823 (not res!2590827)) b!6281825))

(assert (= (and b!6281822 c!1139240) b!6281829))

(assert (= (and b!6281822 (not c!1139240)) b!6281826))

(assert (= (and b!6281829 (not res!2590826)) b!6281832))

(assert (= (or b!6281832 b!6281826) bm!531602))

(assert (= (or b!6281824 b!6281829) bm!531601))

(declare-fun m!7102792 () Bool)

(assert (=> b!6281823 m!7102792))

(declare-fun m!7102794 () Bool)

(assert (=> b!6281825 m!7102794))

(assert (=> bm!531601 m!7102600))

(declare-fun m!7102796 () Bool)

(assert (=> bm!531602 m!7102796))

(assert (=> b!6280970 d!1971377))

(declare-fun d!1971379 () Bool)

(assert (=> d!1971379 (= (matchR!8386 lt!2354652 s!2326) (matchRSpec!3304 lt!2354652 s!2326))))

(declare-fun lt!2354831 () Unit!158143)

(assert (=> d!1971379 (= lt!2354831 (choose!46649 lt!2354652 s!2326))))

(assert (=> d!1971379 (validRegex!7939 lt!2354652)))

(assert (=> d!1971379 (= (mainMatchTheorem!3304 lt!2354652 s!2326) lt!2354831)))

(declare-fun bs!1569057 () Bool)

(assert (= bs!1569057 d!1971379))

(assert (=> bs!1569057 m!7102016))

(assert (=> bs!1569057 m!7102022))

(declare-fun m!7102798 () Bool)

(assert (=> bs!1569057 m!7102798))

(assert (=> bs!1569057 m!7102776))

(assert (=> b!6280970 d!1971379))

(declare-fun d!1971381 () Bool)

(declare-fun c!1139244 () Bool)

(assert (=> d!1971381 (= c!1139244 (isEmpty!36834 s!2326))))

(declare-fun e!3820151 () Bool)

(assert (=> d!1971381 (= (matchZipper!2215 lt!2354666 s!2326) e!3820151)))

(declare-fun b!6281833 () Bool)

(assert (=> b!6281833 (= e!3820151 (nullableZipper!1973 lt!2354666))))

(declare-fun b!6281834 () Bool)

(assert (=> b!6281834 (= e!3820151 (matchZipper!2215 (derivationStepZipper!2169 lt!2354666 (head!12906 s!2326)) (tail!11991 s!2326)))))

(assert (= (and d!1971381 c!1139244) b!6281833))

(assert (= (and d!1971381 (not c!1139244)) b!6281834))

(assert (=> d!1971381 m!7102600))

(declare-fun m!7102800 () Bool)

(assert (=> b!6281833 m!7102800))

(assert (=> b!6281834 m!7102604))

(assert (=> b!6281834 m!7102604))

(declare-fun m!7102802 () Bool)

(assert (=> b!6281834 m!7102802))

(assert (=> b!6281834 m!7102606))

(assert (=> b!6281834 m!7102802))

(assert (=> b!6281834 m!7102606))

(declare-fun m!7102804 () Bool)

(assert (=> b!6281834 m!7102804))

(assert (=> b!6280970 d!1971381))

(declare-fun d!1971383 () Bool)

(declare-fun c!1139245 () Bool)

(assert (=> d!1971383 (= c!1139245 (isEmpty!36834 s!2326))))

(declare-fun e!3820152 () Bool)

(assert (=> d!1971383 (= (matchZipper!2215 lt!2354675 s!2326) e!3820152)))

(declare-fun b!6281835 () Bool)

(assert (=> b!6281835 (= e!3820152 (nullableZipper!1973 lt!2354675))))

(declare-fun b!6281836 () Bool)

(assert (=> b!6281836 (= e!3820152 (matchZipper!2215 (derivationStepZipper!2169 lt!2354675 (head!12906 s!2326)) (tail!11991 s!2326)))))

(assert (= (and d!1971383 c!1139245) b!6281835))

(assert (= (and d!1971383 (not c!1139245)) b!6281836))

(assert (=> d!1971383 m!7102600))

(declare-fun m!7102806 () Bool)

(assert (=> b!6281835 m!7102806))

(assert (=> b!6281836 m!7102604))

(assert (=> b!6281836 m!7102604))

(declare-fun m!7102808 () Bool)

(assert (=> b!6281836 m!7102808))

(assert (=> b!6281836 m!7102606))

(assert (=> b!6281836 m!7102808))

(assert (=> b!6281836 m!7102606))

(declare-fun m!7102810 () Bool)

(assert (=> b!6281836 m!7102810))

(assert (=> b!6280970 d!1971383))

(declare-fun bm!531603 () Bool)

(declare-fun call!531609 () Bool)

(declare-fun call!531610 () Bool)

(assert (=> bm!531603 (= call!531609 call!531610)))

(declare-fun b!6281837 () Bool)

(declare-fun res!2590831 () Bool)

(declare-fun e!3820155 () Bool)

(assert (=> b!6281837 (=> res!2590831 e!3820155)))

(assert (=> b!6281837 (= res!2590831 (not ((_ is Concat!25048) r!7292)))))

(declare-fun e!3820159 () Bool)

(assert (=> b!6281837 (= e!3820159 e!3820155)))

(declare-fun b!6281838 () Bool)

(declare-fun res!2590828 () Bool)

(declare-fun e!3820154 () Bool)

(assert (=> b!6281838 (=> (not res!2590828) (not e!3820154))))

(declare-fun call!531608 () Bool)

(assert (=> b!6281838 (= res!2590828 call!531608)))

(assert (=> b!6281838 (= e!3820159 e!3820154)))

(declare-fun b!6281839 () Bool)

(declare-fun e!3820156 () Bool)

(assert (=> b!6281839 (= e!3820156 call!531610)))

(declare-fun b!6281840 () Bool)

(assert (=> b!6281840 (= e!3820154 call!531609)))

(declare-fun b!6281841 () Bool)

(declare-fun e!3820157 () Bool)

(declare-fun e!3820158 () Bool)

(assert (=> b!6281841 (= e!3820157 e!3820158)))

(declare-fun c!1139247 () Bool)

(assert (=> b!6281841 (= c!1139247 ((_ is Star!16203) r!7292))))

(declare-fun b!6281842 () Bool)

(assert (=> b!6281842 (= e!3820158 e!3820159)))

(declare-fun c!1139246 () Bool)

(assert (=> b!6281842 (= c!1139246 ((_ is Union!16203) r!7292))))

(declare-fun bm!531604 () Bool)

(assert (=> bm!531604 (= call!531608 (validRegex!7939 (ite c!1139246 (regOne!32919 r!7292) (regOne!32918 r!7292))))))

(declare-fun b!6281844 () Bool)

(assert (=> b!6281844 (= e!3820158 e!3820156)))

(declare-fun res!2590829 () Bool)

(assert (=> b!6281844 (= res!2590829 (not (nullable!6196 (reg!16532 r!7292))))))

(assert (=> b!6281844 (=> (not res!2590829) (not e!3820156))))

(declare-fun b!6281843 () Bool)

(declare-fun e!3820153 () Bool)

(assert (=> b!6281843 (= e!3820153 call!531609)))

(declare-fun d!1971385 () Bool)

(declare-fun res!2590832 () Bool)

(assert (=> d!1971385 (=> res!2590832 e!3820157)))

(assert (=> d!1971385 (= res!2590832 ((_ is ElementMatch!16203) r!7292))))

(assert (=> d!1971385 (= (validRegex!7939 r!7292) e!3820157)))

(declare-fun bm!531605 () Bool)

(assert (=> bm!531605 (= call!531610 (validRegex!7939 (ite c!1139247 (reg!16532 r!7292) (ite c!1139246 (regTwo!32919 r!7292) (regTwo!32918 r!7292)))))))

(declare-fun b!6281845 () Bool)

(assert (=> b!6281845 (= e!3820155 e!3820153)))

(declare-fun res!2590830 () Bool)

(assert (=> b!6281845 (=> (not res!2590830) (not e!3820153))))

(assert (=> b!6281845 (= res!2590830 call!531608)))

(assert (= (and d!1971385 (not res!2590832)) b!6281841))

(assert (= (and b!6281841 c!1139247) b!6281844))

(assert (= (and b!6281841 (not c!1139247)) b!6281842))

(assert (= (and b!6281844 res!2590829) b!6281839))

(assert (= (and b!6281842 c!1139246) b!6281838))

(assert (= (and b!6281842 (not c!1139246)) b!6281837))

(assert (= (and b!6281838 res!2590828) b!6281840))

(assert (= (and b!6281837 (not res!2590831)) b!6281845))

(assert (= (and b!6281845 res!2590830) b!6281843))

(assert (= (or b!6281840 b!6281843) bm!531603))

(assert (= (or b!6281838 b!6281845) bm!531604))

(assert (= (or b!6281839 bm!531603) bm!531605))

(declare-fun m!7102812 () Bool)

(assert (=> bm!531604 m!7102812))

(declare-fun m!7102814 () Bool)

(assert (=> b!6281844 m!7102814))

(declare-fun m!7102816 () Bool)

(assert (=> bm!531605 m!7102816))

(assert (=> start!624334 d!1971385))

(declare-fun bm!531618 () Bool)

(declare-fun call!531624 () (InoxSet Context!11174))

(declare-fun call!531626 () (InoxSet Context!11174))

(assert (=> bm!531618 (= call!531624 call!531626)))

(declare-fun b!6281868 () Bool)

(declare-fun e!3820174 () Bool)

(assert (=> b!6281868 (= e!3820174 (nullable!6196 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun b!6281869 () Bool)

(declare-fun e!3820172 () (InoxSet Context!11174))

(assert (=> b!6281869 (= e!3820172 call!531624)))

(declare-fun b!6281870 () Bool)

(declare-fun e!3820173 () (InoxSet Context!11174))

(assert (=> b!6281870 (= e!3820173 call!531624)))

(declare-fun b!6281871 () Bool)

(declare-fun c!1139262 () Bool)

(assert (=> b!6281871 (= c!1139262 ((_ is Star!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> b!6281871 (= e!3820173 e!3820172)))

(declare-fun bm!531619 () Bool)

(declare-fun call!531627 () List!64908)

(declare-fun call!531625 () List!64908)

(assert (=> bm!531619 (= call!531627 call!531625)))

(declare-fun b!6281872 () Bool)

(declare-fun e!3820175 () (InoxSet Context!11174))

(declare-fun call!531623 () (InoxSet Context!11174))

(assert (=> b!6281872 (= e!3820175 ((_ map or) call!531623 call!531626))))

(declare-fun b!6281873 () Bool)

(declare-fun e!3820176 () (InoxSet Context!11174))

(declare-fun call!531628 () (InoxSet Context!11174))

(assert (=> b!6281873 (= e!3820176 ((_ map or) call!531623 call!531628))))

(declare-fun bm!531620 () Bool)

(declare-fun c!1139260 () Bool)

(declare-fun c!1139261 () Bool)

(declare-fun $colon$colon!2068 (List!64908 Regex!16203) List!64908)

(assert (=> bm!531620 (= call!531625 ($colon$colon!2068 (exprs!6087 lt!2354668) (ite (or c!1139261 c!1139260) (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (h!71232 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun b!6281874 () Bool)

(assert (=> b!6281874 (= c!1139261 e!3820174)))

(declare-fun res!2590835 () Bool)

(assert (=> b!6281874 (=> (not res!2590835) (not e!3820174))))

(assert (=> b!6281874 (= res!2590835 ((_ is Concat!25048) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> b!6281874 (= e!3820176 e!3820175)))

(declare-fun b!6281875 () Bool)

(declare-fun e!3820177 () (InoxSet Context!11174))

(assert (=> b!6281875 (= e!3820177 e!3820176)))

(declare-fun c!1139259 () Bool)

(assert (=> b!6281875 (= c!1139259 ((_ is Union!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun bm!531621 () Bool)

(assert (=> bm!531621 (= call!531628 (derivationStepZipperDown!1451 (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343))))))) (ite (or c!1139259 c!1139261) lt!2354668 (Context!11175 call!531627)) (h!71233 s!2326)))))

(declare-fun bm!531622 () Bool)

(assert (=> bm!531622 (= call!531623 (derivationStepZipperDown!1451 (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343))))) (ite c!1139259 lt!2354668 (Context!11175 call!531625)) (h!71233 s!2326)))))

(declare-fun d!1971387 () Bool)

(declare-fun c!1139258 () Bool)

(assert (=> d!1971387 (= c!1139258 (and ((_ is ElementMatch!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))) (= (c!1138982 (h!71232 (exprs!6087 (h!71234 zl!343)))) (h!71233 s!2326))))))

(assert (=> d!1971387 (= (derivationStepZipperDown!1451 (h!71232 (exprs!6087 (h!71234 zl!343))) lt!2354668 (h!71233 s!2326)) e!3820177)))

(declare-fun b!6281876 () Bool)

(assert (=> b!6281876 (= e!3820175 e!3820173)))

(assert (=> b!6281876 (= c!1139260 ((_ is Concat!25048) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6281877 () Bool)

(assert (=> b!6281877 (= e!3820172 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531623 () Bool)

(assert (=> bm!531623 (= call!531626 call!531628)))

(declare-fun b!6281878 () Bool)

(assert (=> b!6281878 (= e!3820177 (store ((as const (Array Context!11174 Bool)) false) lt!2354668 true))))

(assert (= (and d!1971387 c!1139258) b!6281878))

(assert (= (and d!1971387 (not c!1139258)) b!6281875))

(assert (= (and b!6281875 c!1139259) b!6281873))

(assert (= (and b!6281875 (not c!1139259)) b!6281874))

(assert (= (and b!6281874 res!2590835) b!6281868))

(assert (= (and b!6281874 c!1139261) b!6281872))

(assert (= (and b!6281874 (not c!1139261)) b!6281876))

(assert (= (and b!6281876 c!1139260) b!6281870))

(assert (= (and b!6281876 (not c!1139260)) b!6281871))

(assert (= (and b!6281871 c!1139262) b!6281869))

(assert (= (and b!6281871 (not c!1139262)) b!6281877))

(assert (= (or b!6281870 b!6281869) bm!531619))

(assert (= (or b!6281870 b!6281869) bm!531618))

(assert (= (or b!6281872 bm!531619) bm!531620))

(assert (= (or b!6281872 bm!531618) bm!531623))

(assert (= (or b!6281873 bm!531623) bm!531621))

(assert (= (or b!6281873 b!6281872) bm!531622))

(declare-fun m!7102818 () Bool)

(assert (=> b!6281868 m!7102818))

(declare-fun m!7102820 () Bool)

(assert (=> bm!531622 m!7102820))

(declare-fun m!7102822 () Bool)

(assert (=> b!6281878 m!7102822))

(declare-fun m!7102824 () Bool)

(assert (=> bm!531621 m!7102824))

(declare-fun m!7102826 () Bool)

(assert (=> bm!531620 m!7102826))

(assert (=> b!6280977 d!1971387))

(declare-fun d!1971389 () Bool)

(assert (=> d!1971389 (= (flatMap!1708 z!1189 lambda!344509) (dynLambda!25629 lambda!344509 (h!71234 zl!343)))))

(declare-fun lt!2354832 () Unit!158143)

(assert (=> d!1971389 (= lt!2354832 (choose!46646 z!1189 (h!71234 zl!343) lambda!344509))))

(assert (=> d!1971389 (= z!1189 (store ((as const (Array Context!11174 Bool)) false) (h!71234 zl!343) true))))

(assert (=> d!1971389 (= (lemmaFlatMapOnSingletonSet!1234 z!1189 (h!71234 zl!343) lambda!344509) lt!2354832)))

(declare-fun b_lambda!239115 () Bool)

(assert (=> (not b_lambda!239115) (not d!1971389)))

(declare-fun bs!1569058 () Bool)

(assert (= bs!1569058 d!1971389))

(assert (=> bs!1569058 m!7101938))

(declare-fun m!7102828 () Bool)

(assert (=> bs!1569058 m!7102828))

(declare-fun m!7102830 () Bool)

(assert (=> bs!1569058 m!7102830))

(declare-fun m!7102832 () Bool)

(assert (=> bs!1569058 m!7102832))

(assert (=> b!6280977 d!1971389))

(declare-fun bm!531624 () Bool)

(declare-fun call!531629 () (InoxSet Context!11174))

(assert (=> bm!531624 (= call!531629 (derivationStepZipperDown!1451 (h!71232 (exprs!6087 lt!2354668)) (Context!11175 (t!378468 (exprs!6087 lt!2354668))) (h!71233 s!2326)))))

(declare-fun b!6281879 () Bool)

(declare-fun e!3820179 () (InoxSet Context!11174))

(assert (=> b!6281879 (= e!3820179 ((as const (Array Context!11174 Bool)) false))))

(declare-fun b!6281880 () Bool)

(declare-fun e!3820180 () (InoxSet Context!11174))

(assert (=> b!6281880 (= e!3820180 e!3820179)))

(declare-fun c!1139264 () Bool)

(assert (=> b!6281880 (= c!1139264 ((_ is Cons!64784) (exprs!6087 lt!2354668)))))

(declare-fun b!6281881 () Bool)

(assert (=> b!6281881 (= e!3820180 ((_ map or) call!531629 (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 lt!2354668))) (h!71233 s!2326))))))

(declare-fun d!1971391 () Bool)

(declare-fun c!1139263 () Bool)

(declare-fun e!3820178 () Bool)

(assert (=> d!1971391 (= c!1139263 e!3820178)))

(declare-fun res!2590836 () Bool)

(assert (=> d!1971391 (=> (not res!2590836) (not e!3820178))))

(assert (=> d!1971391 (= res!2590836 ((_ is Cons!64784) (exprs!6087 lt!2354668)))))

(assert (=> d!1971391 (= (derivationStepZipperUp!1377 lt!2354668 (h!71233 s!2326)) e!3820180)))

(declare-fun b!6281882 () Bool)

(assert (=> b!6281882 (= e!3820178 (nullable!6196 (h!71232 (exprs!6087 lt!2354668))))))

(declare-fun b!6281883 () Bool)

(assert (=> b!6281883 (= e!3820179 call!531629)))

(assert (= (and d!1971391 res!2590836) b!6281882))

(assert (= (and d!1971391 c!1139263) b!6281881))

(assert (= (and d!1971391 (not c!1139263)) b!6281880))

(assert (= (and b!6281880 c!1139264) b!6281883))

(assert (= (and b!6281880 (not c!1139264)) b!6281879))

(assert (= (or b!6281881 b!6281883) bm!531624))

(declare-fun m!7102834 () Bool)

(assert (=> bm!531624 m!7102834))

(declare-fun m!7102836 () Bool)

(assert (=> b!6281881 m!7102836))

(declare-fun m!7102838 () Bool)

(assert (=> b!6281882 m!7102838))

(assert (=> b!6280977 d!1971391))

(declare-fun d!1971393 () Bool)

(assert (=> d!1971393 (= (nullable!6196 (h!71232 (exprs!6087 (h!71234 zl!343)))) (nullableFct!2147 (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun bs!1569059 () Bool)

(assert (= bs!1569059 d!1971393))

(declare-fun m!7102840 () Bool)

(assert (=> bs!1569059 m!7102840))

(assert (=> b!6280977 d!1971393))

(declare-fun bm!531625 () Bool)

(declare-fun call!531630 () (InoxSet Context!11174))

(assert (=> bm!531625 (= call!531630 (derivationStepZipperDown!1451 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))) (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (h!71233 s!2326)))))

(declare-fun b!6281884 () Bool)

(declare-fun e!3820182 () (InoxSet Context!11174))

(assert (=> b!6281884 (= e!3820182 ((as const (Array Context!11174 Bool)) false))))

(declare-fun b!6281885 () Bool)

(declare-fun e!3820183 () (InoxSet Context!11174))

(assert (=> b!6281885 (= e!3820183 e!3820182)))

(declare-fun c!1139266 () Bool)

(assert (=> b!6281885 (= c!1139266 ((_ is Cons!64784) (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))))))

(declare-fun b!6281886 () Bool)

(assert (=> b!6281886 (= e!3820183 ((_ map or) call!531630 (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (h!71233 s!2326))))))

(declare-fun d!1971395 () Bool)

(declare-fun c!1139265 () Bool)

(declare-fun e!3820181 () Bool)

(assert (=> d!1971395 (= c!1139265 e!3820181)))

(declare-fun res!2590837 () Bool)

(assert (=> d!1971395 (=> (not res!2590837) (not e!3820181))))

(assert (=> d!1971395 (= res!2590837 ((_ is Cons!64784) (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))))))

(assert (=> d!1971395 (= (derivationStepZipperUp!1377 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))) (h!71233 s!2326)) e!3820183)))

(declare-fun b!6281887 () Bool)

(assert (=> b!6281887 (= e!3820181 (nullable!6196 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))))))

(declare-fun b!6281888 () Bool)

(assert (=> b!6281888 (= e!3820182 call!531630)))

(assert (= (and d!1971395 res!2590837) b!6281887))

(assert (= (and d!1971395 c!1139265) b!6281886))

(assert (= (and d!1971395 (not c!1139265)) b!6281885))

(assert (= (and b!6281885 c!1139266) b!6281888))

(assert (= (and b!6281885 (not c!1139266)) b!6281884))

(assert (= (or b!6281886 b!6281888) bm!531625))

(declare-fun m!7102842 () Bool)

(assert (=> bm!531625 m!7102842))

(declare-fun m!7102844 () Bool)

(assert (=> b!6281886 m!7102844))

(declare-fun m!7102846 () Bool)

(assert (=> b!6281887 m!7102846))

(assert (=> b!6280977 d!1971395))

(declare-fun d!1971397 () Bool)

(assert (=> d!1971397 (= (flatMap!1708 z!1189 lambda!344509) (choose!46647 z!1189 lambda!344509))))

(declare-fun bs!1569060 () Bool)

(assert (= bs!1569060 d!1971397))

(declare-fun m!7102848 () Bool)

(assert (=> bs!1569060 m!7102848))

(assert (=> b!6280977 d!1971397))

(declare-fun bm!531626 () Bool)

(declare-fun call!531631 () (InoxSet Context!11174))

(assert (=> bm!531626 (= call!531631 (derivationStepZipperDown!1451 (h!71232 (exprs!6087 (h!71234 zl!343))) (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))) (h!71233 s!2326)))))

(declare-fun b!6281889 () Bool)

(declare-fun e!3820185 () (InoxSet Context!11174))

(assert (=> b!6281889 (= e!3820185 ((as const (Array Context!11174 Bool)) false))))

(declare-fun b!6281890 () Bool)

(declare-fun e!3820186 () (InoxSet Context!11174))

(assert (=> b!6281890 (= e!3820186 e!3820185)))

(declare-fun c!1139268 () Bool)

(assert (=> b!6281890 (= c!1139268 ((_ is Cons!64784) (exprs!6087 (h!71234 zl!343))))))

(declare-fun b!6281891 () Bool)

(assert (=> b!6281891 (= e!3820186 ((_ map or) call!531631 (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))) (h!71233 s!2326))))))

(declare-fun d!1971399 () Bool)

(declare-fun c!1139267 () Bool)

(declare-fun e!3820184 () Bool)

(assert (=> d!1971399 (= c!1139267 e!3820184)))

(declare-fun res!2590838 () Bool)

(assert (=> d!1971399 (=> (not res!2590838) (not e!3820184))))

(assert (=> d!1971399 (= res!2590838 ((_ is Cons!64784) (exprs!6087 (h!71234 zl!343))))))

(assert (=> d!1971399 (= (derivationStepZipperUp!1377 (h!71234 zl!343) (h!71233 s!2326)) e!3820186)))

(declare-fun b!6281892 () Bool)

(assert (=> b!6281892 (= e!3820184 (nullable!6196 (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6281893 () Bool)

(assert (=> b!6281893 (= e!3820185 call!531631)))

(assert (= (and d!1971399 res!2590838) b!6281892))

(assert (= (and d!1971399 c!1139267) b!6281891))

(assert (= (and d!1971399 (not c!1139267)) b!6281890))

(assert (= (and b!6281890 c!1139268) b!6281893))

(assert (= (and b!6281890 (not c!1139268)) b!6281889))

(assert (= (or b!6281891 b!6281893) bm!531626))

(declare-fun m!7102850 () Bool)

(assert (=> bm!531626 m!7102850))

(declare-fun m!7102852 () Bool)

(assert (=> b!6281891 m!7102852))

(assert (=> b!6281892 m!7101944))

(assert (=> b!6280977 d!1971399))

(declare-fun d!1971401 () Bool)

(declare-fun lt!2354835 () Int)

(assert (=> d!1971401 (>= lt!2354835 0)))

(declare-fun e!3820189 () Int)

(assert (=> d!1971401 (= lt!2354835 e!3820189)))

(declare-fun c!1139271 () Bool)

(assert (=> d!1971401 (= c!1139271 ((_ is Cons!64786) lt!2354647))))

(assert (=> d!1971401 (= (zipperDepthTotal!356 lt!2354647) lt!2354835)))

(declare-fun b!6281898 () Bool)

(assert (=> b!6281898 (= e!3820189 (+ (contextDepthTotal!326 (h!71234 lt!2354647)) (zipperDepthTotal!356 (t!378470 lt!2354647))))))

(declare-fun b!6281899 () Bool)

(assert (=> b!6281899 (= e!3820189 0)))

(assert (= (and d!1971401 c!1139271) b!6281898))

(assert (= (and d!1971401 (not c!1139271)) b!6281899))

(declare-fun m!7102854 () Bool)

(assert (=> b!6281898 m!7102854))

(declare-fun m!7102856 () Bool)

(assert (=> b!6281898 m!7102856))

(assert (=> b!6280957 d!1971401))

(declare-fun d!1971403 () Bool)

(declare-fun lt!2354836 () Int)

(assert (=> d!1971403 (>= lt!2354836 0)))

(declare-fun e!3820190 () Int)

(assert (=> d!1971403 (= lt!2354836 e!3820190)))

(declare-fun c!1139272 () Bool)

(assert (=> d!1971403 (= c!1139272 ((_ is Cons!64786) zl!343))))

(assert (=> d!1971403 (= (zipperDepthTotal!356 zl!343) lt!2354836)))

(declare-fun b!6281900 () Bool)

(assert (=> b!6281900 (= e!3820190 (+ (contextDepthTotal!326 (h!71234 zl!343)) (zipperDepthTotal!356 (t!378470 zl!343))))))

(declare-fun b!6281901 () Bool)

(assert (=> b!6281901 (= e!3820190 0)))

(assert (= (and d!1971403 c!1139272) b!6281900))

(assert (= (and d!1971403 (not c!1139272)) b!6281901))

(assert (=> b!6281900 m!7101908))

(declare-fun m!7102858 () Bool)

(assert (=> b!6281900 m!7102858))

(assert (=> b!6280957 d!1971403))

(declare-fun d!1971405 () Bool)

(declare-fun c!1139273 () Bool)

(assert (=> d!1971405 (= c!1139273 (isEmpty!36834 (t!378469 s!2326)))))

(declare-fun e!3820191 () Bool)

(assert (=> d!1971405 (= (matchZipper!2215 lt!2354664 (t!378469 s!2326)) e!3820191)))

(declare-fun b!6281902 () Bool)

(assert (=> b!6281902 (= e!3820191 (nullableZipper!1973 lt!2354664))))

(declare-fun b!6281903 () Bool)

(assert (=> b!6281903 (= e!3820191 (matchZipper!2215 (derivationStepZipper!2169 lt!2354664 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))))))

(assert (= (and d!1971405 c!1139273) b!6281902))

(assert (= (and d!1971405 (not c!1139273)) b!6281903))

(assert (=> d!1971405 m!7102532))

(declare-fun m!7102860 () Bool)

(assert (=> b!6281902 m!7102860))

(assert (=> b!6281903 m!7102536))

(assert (=> b!6281903 m!7102536))

(declare-fun m!7102862 () Bool)

(assert (=> b!6281903 m!7102862))

(assert (=> b!6281903 m!7102540))

(assert (=> b!6281903 m!7102862))

(assert (=> b!6281903 m!7102540))

(declare-fun m!7102864 () Bool)

(assert (=> b!6281903 m!7102864))

(assert (=> b!6280974 d!1971405))

(declare-fun d!1971407 () Bool)

(declare-fun c!1139274 () Bool)

(assert (=> d!1971407 (= c!1139274 (isEmpty!36834 (t!378469 s!2326)))))

(declare-fun e!3820192 () Bool)

(assert (=> d!1971407 (= (matchZipper!2215 (derivationStepZipper!2169 lt!2354666 (h!71233 s!2326)) (t!378469 s!2326)) e!3820192)))

(declare-fun b!6281904 () Bool)

(assert (=> b!6281904 (= e!3820192 (nullableZipper!1973 (derivationStepZipper!2169 lt!2354666 (h!71233 s!2326))))))

(declare-fun b!6281905 () Bool)

(assert (=> b!6281905 (= e!3820192 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354666 (h!71233 s!2326)) (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))))))

(assert (= (and d!1971407 c!1139274) b!6281904))

(assert (= (and d!1971407 (not c!1139274)) b!6281905))

(assert (=> d!1971407 m!7102532))

(assert (=> b!6281904 m!7101954))

(declare-fun m!7102866 () Bool)

(assert (=> b!6281904 m!7102866))

(assert (=> b!6281905 m!7102536))

(assert (=> b!6281905 m!7101954))

(assert (=> b!6281905 m!7102536))

(declare-fun m!7102868 () Bool)

(assert (=> b!6281905 m!7102868))

(assert (=> b!6281905 m!7102540))

(assert (=> b!6281905 m!7102868))

(assert (=> b!6281905 m!7102540))

(declare-fun m!7102870 () Bool)

(assert (=> b!6281905 m!7102870))

(assert (=> b!6280954 d!1971407))

(declare-fun bs!1569061 () Bool)

(declare-fun d!1971409 () Bool)

(assert (= bs!1569061 (and d!1971409 b!6280977)))

(declare-fun lambda!344611 () Int)

(assert (=> bs!1569061 (= lambda!344611 lambda!344509)))

(assert (=> d!1971409 true))

(assert (=> d!1971409 (= (derivationStepZipper!2169 lt!2354666 (h!71233 s!2326)) (flatMap!1708 lt!2354666 lambda!344611))))

(declare-fun bs!1569062 () Bool)

(assert (= bs!1569062 d!1971409))

(declare-fun m!7102872 () Bool)

(assert (=> bs!1569062 m!7102872))

(assert (=> b!6280954 d!1971409))

(declare-fun d!1971411 () Bool)

(declare-fun e!3820193 () Bool)

(assert (=> d!1971411 (= (matchZipper!2215 ((_ map or) lt!2354662 lt!2354634) (t!378469 s!2326)) e!3820193)))

(declare-fun res!2590839 () Bool)

(assert (=> d!1971411 (=> res!2590839 e!3820193)))

(assert (=> d!1971411 (= res!2590839 (matchZipper!2215 lt!2354662 (t!378469 s!2326)))))

(declare-fun lt!2354837 () Unit!158143)

(assert (=> d!1971411 (= lt!2354837 (choose!46648 lt!2354662 lt!2354634 (t!378469 s!2326)))))

(assert (=> d!1971411 (= (lemmaZipperConcatMatchesSameAsBothZippers!1034 lt!2354662 lt!2354634 (t!378469 s!2326)) lt!2354837)))

(declare-fun b!6281908 () Bool)

(assert (=> b!6281908 (= e!3820193 (matchZipper!2215 lt!2354634 (t!378469 s!2326)))))

(assert (= (and d!1971411 (not res!2590839)) b!6281908))

(assert (=> d!1971411 m!7101876))

(assert (=> d!1971411 m!7101874))

(declare-fun m!7102874 () Bool)

(assert (=> d!1971411 m!7102874))

(assert (=> b!6281908 m!7101892))

(assert (=> b!6280976 d!1971411))

(assert (=> b!6280976 d!1971315))

(declare-fun d!1971413 () Bool)

(declare-fun c!1139277 () Bool)

(assert (=> d!1971413 (= c!1139277 (isEmpty!36834 (t!378469 s!2326)))))

(declare-fun e!3820194 () Bool)

(assert (=> d!1971413 (= (matchZipper!2215 ((_ map or) lt!2354662 lt!2354634) (t!378469 s!2326)) e!3820194)))

(declare-fun b!6281909 () Bool)

(assert (=> b!6281909 (= e!3820194 (nullableZipper!1973 ((_ map or) lt!2354662 lt!2354634)))))

(declare-fun b!6281910 () Bool)

(assert (=> b!6281910 (= e!3820194 (matchZipper!2215 (derivationStepZipper!2169 ((_ map or) lt!2354662 lt!2354634) (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))))))

(assert (= (and d!1971413 c!1139277) b!6281909))

(assert (= (and d!1971413 (not c!1139277)) b!6281910))

(assert (=> d!1971413 m!7102532))

(declare-fun m!7102876 () Bool)

(assert (=> b!6281909 m!7102876))

(assert (=> b!6281910 m!7102536))

(assert (=> b!6281910 m!7102536))

(declare-fun m!7102878 () Bool)

(assert (=> b!6281910 m!7102878))

(assert (=> b!6281910 m!7102540))

(assert (=> b!6281910 m!7102878))

(assert (=> b!6281910 m!7102540))

(declare-fun m!7102880 () Bool)

(assert (=> b!6281910 m!7102880))

(assert (=> b!6280976 d!1971413))

(declare-fun bs!1569063 () Bool)

(declare-fun d!1971415 () Bool)

(assert (= bs!1569063 (and d!1971415 d!1971363)))

(declare-fun lambda!344612 () Int)

(assert (=> bs!1569063 (= lambda!344612 lambda!344602)))

(declare-fun bs!1569064 () Bool)

(assert (= bs!1569064 (and d!1971415 d!1971341)))

(assert (=> bs!1569064 (= lambda!344612 lambda!344595)))

(declare-fun bs!1569065 () Bool)

(assert (= bs!1569065 (and d!1971415 d!1971351)))

(assert (=> bs!1569065 (= lambda!344612 lambda!344601)))

(declare-fun bs!1569066 () Bool)

(assert (= bs!1569066 (and d!1971415 d!1971343)))

(assert (=> bs!1569066 (= lambda!344612 lambda!344598)))

(declare-fun bs!1569067 () Bool)

(assert (= bs!1569067 (and d!1971415 d!1971367)))

(assert (=> bs!1569067 (= lambda!344612 lambda!344604)))

(assert (=> d!1971415 (= (inv!83754 (h!71234 zl!343)) (forall!15344 (exprs!6087 (h!71234 zl!343)) lambda!344612))))

(declare-fun bs!1569068 () Bool)

(assert (= bs!1569068 d!1971415))

(declare-fun m!7102882 () Bool)

(assert (=> bs!1569068 m!7102882))

(assert (=> b!6280956 d!1971415))

(declare-fun d!1971417 () Bool)

(assert (=> d!1971417 (= (isEmpty!36830 (t!378468 (exprs!6087 (h!71234 zl!343)))) ((_ is Nil!64784) (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> b!6280955 d!1971417))

(declare-fun bm!531627 () Bool)

(declare-fun call!531633 () (InoxSet Context!11174))

(declare-fun call!531635 () (InoxSet Context!11174))

(assert (=> bm!531627 (= call!531633 call!531635)))

(declare-fun b!6281911 () Bool)

(declare-fun e!3820197 () Bool)

(assert (=> b!6281911 (= e!3820197 (nullable!6196 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292)))))))

(declare-fun b!6281912 () Bool)

(declare-fun e!3820195 () (InoxSet Context!11174))

(assert (=> b!6281912 (= e!3820195 call!531633)))

(declare-fun b!6281913 () Bool)

(declare-fun e!3820196 () (InoxSet Context!11174))

(assert (=> b!6281913 (= e!3820196 call!531633)))

(declare-fun b!6281914 () Bool)

(declare-fun c!1139282 () Bool)

(assert (=> b!6281914 (= c!1139282 ((_ is Star!16203) (regTwo!32918 (regOne!32918 r!7292))))))

(assert (=> b!6281914 (= e!3820196 e!3820195)))

(declare-fun bm!531628 () Bool)

(declare-fun call!531636 () List!64908)

(declare-fun call!531634 () List!64908)

(assert (=> bm!531628 (= call!531636 call!531634)))

(declare-fun b!6281915 () Bool)

(declare-fun e!3820198 () (InoxSet Context!11174))

(declare-fun call!531632 () (InoxSet Context!11174))

(assert (=> b!6281915 (= e!3820198 ((_ map or) call!531632 call!531635))))

(declare-fun b!6281916 () Bool)

(declare-fun e!3820199 () (InoxSet Context!11174))

(declare-fun call!531637 () (InoxSet Context!11174))

(assert (=> b!6281916 (= e!3820199 ((_ map or) call!531632 call!531637))))

(declare-fun bm!531629 () Bool)

(declare-fun c!1139280 () Bool)

(declare-fun c!1139281 () Bool)

(assert (=> bm!531629 (= call!531634 ($colon$colon!2068 (exprs!6087 lt!2354668) (ite (or c!1139281 c!1139280) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regOne!32918 r!7292)))))))

(declare-fun b!6281917 () Bool)

(assert (=> b!6281917 (= c!1139281 e!3820197)))

(declare-fun res!2590840 () Bool)

(assert (=> b!6281917 (=> (not res!2590840) (not e!3820197))))

(assert (=> b!6281917 (= res!2590840 ((_ is Concat!25048) (regTwo!32918 (regOne!32918 r!7292))))))

(assert (=> b!6281917 (= e!3820199 e!3820198)))

(declare-fun b!6281918 () Bool)

(declare-fun e!3820200 () (InoxSet Context!11174))

(assert (=> b!6281918 (= e!3820200 e!3820199)))

(declare-fun c!1139279 () Bool)

(assert (=> b!6281918 (= c!1139279 ((_ is Union!16203) (regTwo!32918 (regOne!32918 r!7292))))))

(declare-fun bm!531630 () Bool)

(assert (=> bm!531630 (= call!531637 (derivationStepZipperDown!1451 (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292)))))) (ite (or c!1139279 c!1139281) lt!2354668 (Context!11175 call!531636)) (h!71233 s!2326)))))

(declare-fun bm!531631 () Bool)

(assert (=> bm!531631 (= call!531632 (derivationStepZipperDown!1451 (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292)))) (ite c!1139279 lt!2354668 (Context!11175 call!531634)) (h!71233 s!2326)))))

(declare-fun d!1971419 () Bool)

(declare-fun c!1139278 () Bool)

(assert (=> d!1971419 (= c!1139278 (and ((_ is ElementMatch!16203) (regTwo!32918 (regOne!32918 r!7292))) (= (c!1138982 (regTwo!32918 (regOne!32918 r!7292))) (h!71233 s!2326))))))

(assert (=> d!1971419 (= (derivationStepZipperDown!1451 (regTwo!32918 (regOne!32918 r!7292)) lt!2354668 (h!71233 s!2326)) e!3820200)))

(declare-fun b!6281919 () Bool)

(assert (=> b!6281919 (= e!3820198 e!3820196)))

(assert (=> b!6281919 (= c!1139280 ((_ is Concat!25048) (regTwo!32918 (regOne!32918 r!7292))))))

(declare-fun b!6281920 () Bool)

(assert (=> b!6281920 (= e!3820195 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531632 () Bool)

(assert (=> bm!531632 (= call!531635 call!531637)))

(declare-fun b!6281921 () Bool)

(assert (=> b!6281921 (= e!3820200 (store ((as const (Array Context!11174 Bool)) false) lt!2354668 true))))

(assert (= (and d!1971419 c!1139278) b!6281921))

(assert (= (and d!1971419 (not c!1139278)) b!6281918))

(assert (= (and b!6281918 c!1139279) b!6281916))

(assert (= (and b!6281918 (not c!1139279)) b!6281917))

(assert (= (and b!6281917 res!2590840) b!6281911))

(assert (= (and b!6281917 c!1139281) b!6281915))

(assert (= (and b!6281917 (not c!1139281)) b!6281919))

(assert (= (and b!6281919 c!1139280) b!6281913))

(assert (= (and b!6281919 (not c!1139280)) b!6281914))

(assert (= (and b!6281914 c!1139282) b!6281912))

(assert (= (and b!6281914 (not c!1139282)) b!6281920))

(assert (= (or b!6281913 b!6281912) bm!531628))

(assert (= (or b!6281913 b!6281912) bm!531627))

(assert (= (or b!6281915 bm!531628) bm!531629))

(assert (= (or b!6281915 bm!531627) bm!531632))

(assert (= (or b!6281916 bm!531632) bm!531630))

(assert (= (or b!6281916 b!6281915) bm!531631))

(declare-fun m!7102884 () Bool)

(assert (=> b!6281911 m!7102884))

(declare-fun m!7102886 () Bool)

(assert (=> bm!531631 m!7102886))

(assert (=> b!6281921 m!7102822))

(declare-fun m!7102888 () Bool)

(assert (=> bm!531630 m!7102888))

(declare-fun m!7102890 () Bool)

(assert (=> bm!531629 m!7102890))

(assert (=> b!6280942 d!1971419))

(declare-fun bm!531633 () Bool)

(declare-fun call!531639 () (InoxSet Context!11174))

(declare-fun call!531641 () (InoxSet Context!11174))

(assert (=> bm!531633 (= call!531639 call!531641)))

(declare-fun b!6281922 () Bool)

(declare-fun e!3820203 () Bool)

(assert (=> b!6281922 (= e!3820203 (nullable!6196 (regOne!32918 (regOne!32918 (regOne!32918 r!7292)))))))

(declare-fun b!6281923 () Bool)

(declare-fun e!3820201 () (InoxSet Context!11174))

(assert (=> b!6281923 (= e!3820201 call!531639)))

(declare-fun b!6281924 () Bool)

(declare-fun e!3820202 () (InoxSet Context!11174))

(assert (=> b!6281924 (= e!3820202 call!531639)))

(declare-fun b!6281925 () Bool)

(declare-fun c!1139287 () Bool)

(assert (=> b!6281925 (= c!1139287 ((_ is Star!16203) (regOne!32918 (regOne!32918 r!7292))))))

(assert (=> b!6281925 (= e!3820202 e!3820201)))

(declare-fun bm!531634 () Bool)

(declare-fun call!531642 () List!64908)

(declare-fun call!531640 () List!64908)

(assert (=> bm!531634 (= call!531642 call!531640)))

(declare-fun b!6281926 () Bool)

(declare-fun e!3820204 () (InoxSet Context!11174))

(declare-fun call!531638 () (InoxSet Context!11174))

(assert (=> b!6281926 (= e!3820204 ((_ map or) call!531638 call!531641))))

(declare-fun b!6281927 () Bool)

(declare-fun e!3820205 () (InoxSet Context!11174))

(declare-fun call!531643 () (InoxSet Context!11174))

(assert (=> b!6281927 (= e!3820205 ((_ map or) call!531638 call!531643))))

(declare-fun c!1139286 () Bool)

(declare-fun bm!531635 () Bool)

(declare-fun c!1139285 () Bool)

(assert (=> bm!531635 (= call!531640 ($colon$colon!2068 (exprs!6087 lt!2354667) (ite (or c!1139286 c!1139285) (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 r!7292)))))))

(declare-fun b!6281928 () Bool)

(assert (=> b!6281928 (= c!1139286 e!3820203)))

(declare-fun res!2590841 () Bool)

(assert (=> b!6281928 (=> (not res!2590841) (not e!3820203))))

(assert (=> b!6281928 (= res!2590841 ((_ is Concat!25048) (regOne!32918 (regOne!32918 r!7292))))))

(assert (=> b!6281928 (= e!3820205 e!3820204)))

(declare-fun b!6281929 () Bool)

(declare-fun e!3820206 () (InoxSet Context!11174))

(assert (=> b!6281929 (= e!3820206 e!3820205)))

(declare-fun c!1139284 () Bool)

(assert (=> b!6281929 (= c!1139284 ((_ is Union!16203) (regOne!32918 (regOne!32918 r!7292))))))

(declare-fun bm!531636 () Bool)

(assert (=> bm!531636 (= call!531643 (derivationStepZipperDown!1451 (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292)))))) (ite (or c!1139284 c!1139286) lt!2354667 (Context!11175 call!531642)) (h!71233 s!2326)))))

(declare-fun bm!531637 () Bool)

(assert (=> bm!531637 (= call!531638 (derivationStepZipperDown!1451 (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292)))) (ite c!1139284 lt!2354667 (Context!11175 call!531640)) (h!71233 s!2326)))))

(declare-fun d!1971421 () Bool)

(declare-fun c!1139283 () Bool)

(assert (=> d!1971421 (= c!1139283 (and ((_ is ElementMatch!16203) (regOne!32918 (regOne!32918 r!7292))) (= (c!1138982 (regOne!32918 (regOne!32918 r!7292))) (h!71233 s!2326))))))

(assert (=> d!1971421 (= (derivationStepZipperDown!1451 (regOne!32918 (regOne!32918 r!7292)) lt!2354667 (h!71233 s!2326)) e!3820206)))

(declare-fun b!6281930 () Bool)

(assert (=> b!6281930 (= e!3820204 e!3820202)))

(assert (=> b!6281930 (= c!1139285 ((_ is Concat!25048) (regOne!32918 (regOne!32918 r!7292))))))

(declare-fun b!6281931 () Bool)

(assert (=> b!6281931 (= e!3820201 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531638 () Bool)

(assert (=> bm!531638 (= call!531641 call!531643)))

(declare-fun b!6281932 () Bool)

(assert (=> b!6281932 (= e!3820206 (store ((as const (Array Context!11174 Bool)) false) lt!2354667 true))))

(assert (= (and d!1971421 c!1139283) b!6281932))

(assert (= (and d!1971421 (not c!1139283)) b!6281929))

(assert (= (and b!6281929 c!1139284) b!6281927))

(assert (= (and b!6281929 (not c!1139284)) b!6281928))

(assert (= (and b!6281928 res!2590841) b!6281922))

(assert (= (and b!6281928 c!1139286) b!6281926))

(assert (= (and b!6281928 (not c!1139286)) b!6281930))

(assert (= (and b!6281930 c!1139285) b!6281924))

(assert (= (and b!6281930 (not c!1139285)) b!6281925))

(assert (= (and b!6281925 c!1139287) b!6281923))

(assert (= (and b!6281925 (not c!1139287)) b!6281931))

(assert (= (or b!6281924 b!6281923) bm!531634))

(assert (= (or b!6281924 b!6281923) bm!531633))

(assert (= (or b!6281926 bm!531634) bm!531635))

(assert (= (or b!6281926 bm!531633) bm!531638))

(assert (= (or b!6281927 bm!531638) bm!531636))

(assert (= (or b!6281927 b!6281926) bm!531637))

(declare-fun m!7102892 () Bool)

(assert (=> b!6281922 m!7102892))

(declare-fun m!7102894 () Bool)

(assert (=> bm!531637 m!7102894))

(assert (=> b!6281932 m!7101926))

(declare-fun m!7102896 () Bool)

(assert (=> bm!531636 m!7102896))

(declare-fun m!7102898 () Bool)

(assert (=> bm!531635 m!7102898))

(assert (=> b!6280942 d!1971421))

(declare-fun d!1971423 () Bool)

(assert (=> d!1971423 (= (flatMap!1708 lt!2354675 lambda!344509) (choose!46647 lt!2354675 lambda!344509))))

(declare-fun bs!1569069 () Bool)

(assert (= bs!1569069 d!1971423))

(declare-fun m!7102900 () Bool)

(assert (=> bs!1569069 m!7102900))

(assert (=> b!6280961 d!1971423))

(declare-fun bm!531639 () Bool)

(declare-fun call!531644 () (InoxSet Context!11174))

(assert (=> bm!531639 (= call!531644 (derivationStepZipperDown!1451 (h!71232 (exprs!6087 lt!2354638)) (Context!11175 (t!378468 (exprs!6087 lt!2354638))) (h!71233 s!2326)))))

(declare-fun b!6281933 () Bool)

(declare-fun e!3820208 () (InoxSet Context!11174))

(assert (=> b!6281933 (= e!3820208 ((as const (Array Context!11174 Bool)) false))))

(declare-fun b!6281934 () Bool)

(declare-fun e!3820209 () (InoxSet Context!11174))

(assert (=> b!6281934 (= e!3820209 e!3820208)))

(declare-fun c!1139289 () Bool)

(assert (=> b!6281934 (= c!1139289 ((_ is Cons!64784) (exprs!6087 lt!2354638)))))

(declare-fun b!6281935 () Bool)

(assert (=> b!6281935 (= e!3820209 ((_ map or) call!531644 (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 lt!2354638))) (h!71233 s!2326))))))

(declare-fun d!1971425 () Bool)

(declare-fun c!1139288 () Bool)

(declare-fun e!3820207 () Bool)

(assert (=> d!1971425 (= c!1139288 e!3820207)))

(declare-fun res!2590842 () Bool)

(assert (=> d!1971425 (=> (not res!2590842) (not e!3820207))))

(assert (=> d!1971425 (= res!2590842 ((_ is Cons!64784) (exprs!6087 lt!2354638)))))

(assert (=> d!1971425 (= (derivationStepZipperUp!1377 lt!2354638 (h!71233 s!2326)) e!3820209)))

(declare-fun b!6281936 () Bool)

(assert (=> b!6281936 (= e!3820207 (nullable!6196 (h!71232 (exprs!6087 lt!2354638))))))

(declare-fun b!6281937 () Bool)

(assert (=> b!6281937 (= e!3820208 call!531644)))

(assert (= (and d!1971425 res!2590842) b!6281936))

(assert (= (and d!1971425 c!1139288) b!6281935))

(assert (= (and d!1971425 (not c!1139288)) b!6281934))

(assert (= (and b!6281934 c!1139289) b!6281937))

(assert (= (and b!6281934 (not c!1139289)) b!6281933))

(assert (= (or b!6281935 b!6281937) bm!531639))

(declare-fun m!7102902 () Bool)

(assert (=> bm!531639 m!7102902))

(declare-fun m!7102904 () Bool)

(assert (=> b!6281935 m!7102904))

(declare-fun m!7102906 () Bool)

(assert (=> b!6281936 m!7102906))

(assert (=> b!6280961 d!1971425))

(declare-fun d!1971427 () Bool)

(assert (=> d!1971427 (= (flatMap!1708 lt!2354675 lambda!344509) (dynLambda!25629 lambda!344509 lt!2354638))))

(declare-fun lt!2354838 () Unit!158143)

(assert (=> d!1971427 (= lt!2354838 (choose!46646 lt!2354675 lt!2354638 lambda!344509))))

(assert (=> d!1971427 (= lt!2354675 (store ((as const (Array Context!11174 Bool)) false) lt!2354638 true))))

(assert (=> d!1971427 (= (lemmaFlatMapOnSingletonSet!1234 lt!2354675 lt!2354638 lambda!344509) lt!2354838)))

(declare-fun b_lambda!239117 () Bool)

(assert (=> (not b_lambda!239117) (not d!1971427)))

(declare-fun bs!1569070 () Bool)

(assert (= bs!1569070 d!1971427))

(assert (=> bs!1569070 m!7101918))

(declare-fun m!7102908 () Bool)

(assert (=> bs!1569070 m!7102908))

(declare-fun m!7102910 () Bool)

(assert (=> bs!1569070 m!7102910))

(assert (=> bs!1569070 m!7101928))

(assert (=> b!6280961 d!1971427))

(assert (=> b!6280961 d!1971313))

(declare-fun bs!1569071 () Bool)

(declare-fun d!1971429 () Bool)

(assert (= bs!1569071 (and d!1971429 b!6280977)))

(declare-fun lambda!344613 () Int)

(assert (=> bs!1569071 (= lambda!344613 lambda!344509)))

(declare-fun bs!1569072 () Bool)

(assert (= bs!1569072 (and d!1971429 d!1971409)))

(assert (=> bs!1569072 (= lambda!344613 lambda!344611)))

(assert (=> d!1971429 true))

(assert (=> d!1971429 (= (derivationStepZipper!2169 lt!2354675 (h!71233 s!2326)) (flatMap!1708 lt!2354675 lambda!344613))))

(declare-fun bs!1569073 () Bool)

(assert (= bs!1569073 d!1971429))

(declare-fun m!7102912 () Bool)

(assert (=> bs!1569073 m!7102912))

(assert (=> b!6280961 d!1971429))

(declare-fun bs!1569074 () Bool)

(declare-fun d!1971431 () Bool)

(assert (= bs!1569074 (and d!1971431 d!1971363)))

(declare-fun lambda!344616 () Int)

(assert (=> bs!1569074 (= lambda!344616 lambda!344602)))

(declare-fun bs!1569075 () Bool)

(assert (= bs!1569075 (and d!1971431 d!1971341)))

(assert (=> bs!1569075 (= lambda!344616 lambda!344595)))

(declare-fun bs!1569076 () Bool)

(assert (= bs!1569076 (and d!1971431 d!1971351)))

(assert (=> bs!1569076 (= lambda!344616 lambda!344601)))

(declare-fun bs!1569077 () Bool)

(assert (= bs!1569077 (and d!1971431 d!1971415)))

(assert (=> bs!1569077 (= lambda!344616 lambda!344612)))

(declare-fun bs!1569078 () Bool)

(assert (= bs!1569078 (and d!1971431 d!1971343)))

(assert (=> bs!1569078 (= lambda!344616 lambda!344598)))

(declare-fun bs!1569079 () Bool)

(assert (= bs!1569079 (and d!1971431 d!1971367)))

(assert (=> bs!1569079 (= lambda!344616 lambda!344604)))

(declare-fun b!6281958 () Bool)

(declare-fun e!3820225 () Regex!16203)

(declare-fun e!3820223 () Regex!16203)

(assert (=> b!6281958 (= e!3820225 e!3820223)))

(declare-fun c!1139298 () Bool)

(assert (=> b!6281958 (= c!1139298 ((_ is Cons!64784) (unfocusZipperList!1624 zl!343)))))

(declare-fun b!6281959 () Bool)

(assert (=> b!6281959 (= e!3820223 EmptyLang!16203)))

(declare-fun b!6281960 () Bool)

(declare-fun e!3820222 () Bool)

(assert (=> b!6281960 (= e!3820222 (isEmpty!36830 (t!378468 (unfocusZipperList!1624 zl!343))))))

(declare-fun b!6281961 () Bool)

(declare-fun e!3820224 () Bool)

(declare-fun lt!2354841 () Regex!16203)

(assert (=> b!6281961 (= e!3820224 (= lt!2354841 (head!12907 (unfocusZipperList!1624 zl!343))))))

(declare-fun e!3820226 () Bool)

(assert (=> d!1971431 e!3820226))

(declare-fun res!2590847 () Bool)

(assert (=> d!1971431 (=> (not res!2590847) (not e!3820226))))

(assert (=> d!1971431 (= res!2590847 (validRegex!7939 lt!2354841))))

(assert (=> d!1971431 (= lt!2354841 e!3820225)))

(declare-fun c!1139299 () Bool)

(assert (=> d!1971431 (= c!1139299 e!3820222)))

(declare-fun res!2590848 () Bool)

(assert (=> d!1971431 (=> (not res!2590848) (not e!3820222))))

(assert (=> d!1971431 (= res!2590848 ((_ is Cons!64784) (unfocusZipperList!1624 zl!343)))))

(assert (=> d!1971431 (forall!15344 (unfocusZipperList!1624 zl!343) lambda!344616)))

(assert (=> d!1971431 (= (generalisedUnion!2047 (unfocusZipperList!1624 zl!343)) lt!2354841)))

(declare-fun b!6281962 () Bool)

(declare-fun e!3820227 () Bool)

(assert (=> b!6281962 (= e!3820226 e!3820227)))

(declare-fun c!1139300 () Bool)

(assert (=> b!6281962 (= c!1139300 (isEmpty!36830 (unfocusZipperList!1624 zl!343)))))

(declare-fun b!6281963 () Bool)

(assert (=> b!6281963 (= e!3820223 (Union!16203 (h!71232 (unfocusZipperList!1624 zl!343)) (generalisedUnion!2047 (t!378468 (unfocusZipperList!1624 zl!343)))))))

(declare-fun b!6281964 () Bool)

(assert (=> b!6281964 (= e!3820225 (h!71232 (unfocusZipperList!1624 zl!343)))))

(declare-fun b!6281965 () Bool)

(assert (=> b!6281965 (= e!3820227 e!3820224)))

(declare-fun c!1139301 () Bool)

(assert (=> b!6281965 (= c!1139301 (isEmpty!36830 (tail!11992 (unfocusZipperList!1624 zl!343))))))

(declare-fun b!6281966 () Bool)

(declare-fun isEmptyLang!1616 (Regex!16203) Bool)

(assert (=> b!6281966 (= e!3820227 (isEmptyLang!1616 lt!2354841))))

(declare-fun b!6281967 () Bool)

(declare-fun isUnion!1046 (Regex!16203) Bool)

(assert (=> b!6281967 (= e!3820224 (isUnion!1046 lt!2354841))))

(assert (= (and d!1971431 res!2590848) b!6281960))

(assert (= (and d!1971431 c!1139299) b!6281964))

(assert (= (and d!1971431 (not c!1139299)) b!6281958))

(assert (= (and b!6281958 c!1139298) b!6281963))

(assert (= (and b!6281958 (not c!1139298)) b!6281959))

(assert (= (and d!1971431 res!2590847) b!6281962))

(assert (= (and b!6281962 c!1139300) b!6281966))

(assert (= (and b!6281962 (not c!1139300)) b!6281965))

(assert (= (and b!6281965 c!1139301) b!6281961))

(assert (= (and b!6281965 (not c!1139301)) b!6281967))

(declare-fun m!7102914 () Bool)

(assert (=> b!6281967 m!7102914))

(declare-fun m!7102916 () Bool)

(assert (=> b!6281966 m!7102916))

(assert (=> b!6281961 m!7101960))

(declare-fun m!7102918 () Bool)

(assert (=> b!6281961 m!7102918))

(assert (=> b!6281962 m!7101960))

(declare-fun m!7102920 () Bool)

(assert (=> b!6281962 m!7102920))

(assert (=> b!6281965 m!7101960))

(declare-fun m!7102922 () Bool)

(assert (=> b!6281965 m!7102922))

(assert (=> b!6281965 m!7102922))

(declare-fun m!7102924 () Bool)

(assert (=> b!6281965 m!7102924))

(declare-fun m!7102926 () Bool)

(assert (=> b!6281960 m!7102926))

(declare-fun m!7102928 () Bool)

(assert (=> d!1971431 m!7102928))

(assert (=> d!1971431 m!7101960))

(declare-fun m!7102930 () Bool)

(assert (=> d!1971431 m!7102930))

(declare-fun m!7102932 () Bool)

(assert (=> b!6281963 m!7102932))

(assert (=> b!6280962 d!1971431))

(declare-fun bs!1569080 () Bool)

(declare-fun d!1971433 () Bool)

(assert (= bs!1569080 (and d!1971433 d!1971363)))

(declare-fun lambda!344619 () Int)

(assert (=> bs!1569080 (= lambda!344619 lambda!344602)))

(declare-fun bs!1569081 () Bool)

(assert (= bs!1569081 (and d!1971433 d!1971341)))

(assert (=> bs!1569081 (= lambda!344619 lambda!344595)))

(declare-fun bs!1569082 () Bool)

(assert (= bs!1569082 (and d!1971433 d!1971351)))

(assert (=> bs!1569082 (= lambda!344619 lambda!344601)))

(declare-fun bs!1569083 () Bool)

(assert (= bs!1569083 (and d!1971433 d!1971431)))

(assert (=> bs!1569083 (= lambda!344619 lambda!344616)))

(declare-fun bs!1569084 () Bool)

(assert (= bs!1569084 (and d!1971433 d!1971415)))

(assert (=> bs!1569084 (= lambda!344619 lambda!344612)))

(declare-fun bs!1569085 () Bool)

(assert (= bs!1569085 (and d!1971433 d!1971343)))

(assert (=> bs!1569085 (= lambda!344619 lambda!344598)))

(declare-fun bs!1569086 () Bool)

(assert (= bs!1569086 (and d!1971433 d!1971367)))

(assert (=> bs!1569086 (= lambda!344619 lambda!344604)))

(declare-fun lt!2354844 () List!64908)

(assert (=> d!1971433 (forall!15344 lt!2354844 lambda!344619)))

(declare-fun e!3820230 () List!64908)

(assert (=> d!1971433 (= lt!2354844 e!3820230)))

(declare-fun c!1139304 () Bool)

(assert (=> d!1971433 (= c!1139304 ((_ is Cons!64786) zl!343))))

(assert (=> d!1971433 (= (unfocusZipperList!1624 zl!343) lt!2354844)))

(declare-fun b!6281972 () Bool)

(assert (=> b!6281972 (= e!3820230 (Cons!64784 (generalisedConcat!1800 (exprs!6087 (h!71234 zl!343))) (unfocusZipperList!1624 (t!378470 zl!343))))))

(declare-fun b!6281973 () Bool)

(assert (=> b!6281973 (= e!3820230 Nil!64784)))

(assert (= (and d!1971433 c!1139304) b!6281972))

(assert (= (and d!1971433 (not c!1139304)) b!6281973))

(declare-fun m!7102934 () Bool)

(assert (=> d!1971433 m!7102934))

(assert (=> b!6281972 m!7101910))

(declare-fun m!7102936 () Bool)

(assert (=> b!6281972 m!7102936))

(assert (=> b!6280962 d!1971433))

(declare-fun d!1971435 () Bool)

(declare-fun c!1139305 () Bool)

(assert (=> d!1971435 (= c!1139305 (isEmpty!36834 (t!378469 s!2326)))))

(declare-fun e!3820231 () Bool)

(assert (=> d!1971435 (= (matchZipper!2215 lt!2354634 (t!378469 s!2326)) e!3820231)))

(declare-fun b!6281974 () Bool)

(assert (=> b!6281974 (= e!3820231 (nullableZipper!1973 lt!2354634))))

(declare-fun b!6281975 () Bool)

(assert (=> b!6281975 (= e!3820231 (matchZipper!2215 (derivationStepZipper!2169 lt!2354634 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))))))

(assert (= (and d!1971435 c!1139305) b!6281974))

(assert (= (and d!1971435 (not c!1139305)) b!6281975))

(assert (=> d!1971435 m!7102532))

(declare-fun m!7102938 () Bool)

(assert (=> b!6281974 m!7102938))

(assert (=> b!6281975 m!7102536))

(assert (=> b!6281975 m!7102536))

(declare-fun m!7102940 () Bool)

(assert (=> b!6281975 m!7102940))

(assert (=> b!6281975 m!7102540))

(assert (=> b!6281975 m!7102940))

(assert (=> b!6281975 m!7102540))

(declare-fun m!7102942 () Bool)

(assert (=> b!6281975 m!7102942))

(assert (=> b!6280958 d!1971435))

(declare-fun d!1971437 () Bool)

(declare-fun lt!2354847 () Int)

(assert (=> d!1971437 (>= lt!2354847 0)))

(declare-fun e!3820234 () Int)

(assert (=> d!1971437 (= lt!2354847 e!3820234)))

(declare-fun c!1139309 () Bool)

(assert (=> d!1971437 (= c!1139309 ((_ is Cons!64784) (exprs!6087 lt!2354638)))))

(assert (=> d!1971437 (= (contextDepthTotal!326 lt!2354638) lt!2354847)))

(declare-fun b!6281980 () Bool)

(declare-fun regexDepthTotal!178 (Regex!16203) Int)

(assert (=> b!6281980 (= e!3820234 (+ (regexDepthTotal!178 (h!71232 (exprs!6087 lt!2354638))) (contextDepthTotal!326 (Context!11175 (t!378468 (exprs!6087 lt!2354638))))))))

(declare-fun b!6281981 () Bool)

(assert (=> b!6281981 (= e!3820234 1)))

(assert (= (and d!1971437 c!1139309) b!6281980))

(assert (= (and d!1971437 (not c!1139309)) b!6281981))

(declare-fun m!7102944 () Bool)

(assert (=> b!6281980 m!7102944))

(declare-fun m!7102946 () Bool)

(assert (=> b!6281980 m!7102946))

(assert (=> b!6280960 d!1971437))

(declare-fun d!1971439 () Bool)

(declare-fun lt!2354848 () Int)

(assert (=> d!1971439 (>= lt!2354848 0)))

(declare-fun e!3820235 () Int)

(assert (=> d!1971439 (= lt!2354848 e!3820235)))

(declare-fun c!1139310 () Bool)

(assert (=> d!1971439 (= c!1139310 ((_ is Cons!64784) (exprs!6087 (h!71234 zl!343))))))

(assert (=> d!1971439 (= (contextDepthTotal!326 (h!71234 zl!343)) lt!2354848)))

(declare-fun b!6281982 () Bool)

(assert (=> b!6281982 (= e!3820235 (+ (regexDepthTotal!178 (h!71232 (exprs!6087 (h!71234 zl!343)))) (contextDepthTotal!326 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))))))))

(declare-fun b!6281983 () Bool)

(assert (=> b!6281983 (= e!3820235 1)))

(assert (= (and d!1971439 c!1139310) b!6281982))

(assert (= (and d!1971439 (not c!1139310)) b!6281983))

(declare-fun m!7102948 () Bool)

(assert (=> b!6281982 m!7102948))

(declare-fun m!7102950 () Bool)

(assert (=> b!6281982 m!7102950))

(assert (=> b!6280960 d!1971439))

(declare-fun b!6281988 () Bool)

(declare-fun e!3820238 () Bool)

(declare-fun tp!1750537 () Bool)

(declare-fun tp!1750538 () Bool)

(assert (=> b!6281988 (= e!3820238 (and tp!1750537 tp!1750538))))

(assert (=> b!6280972 (= tp!1750474 e!3820238)))

(assert (= (and b!6280972 ((_ is Cons!64784) (exprs!6087 setElem!42740))) b!6281988))

(declare-fun condSetEmpty!42746 () Bool)

(assert (=> setNonEmpty!42740 (= condSetEmpty!42746 (= setRest!42740 ((as const (Array Context!11174 Bool)) false)))))

(declare-fun setRes!42746 () Bool)

(assert (=> setNonEmpty!42740 (= tp!1750473 setRes!42746)))

(declare-fun setIsEmpty!42746 () Bool)

(assert (=> setIsEmpty!42746 setRes!42746))

(declare-fun e!3820241 () Bool)

(declare-fun tp!1750544 () Bool)

(declare-fun setElem!42746 () Context!11174)

(declare-fun setNonEmpty!42746 () Bool)

(assert (=> setNonEmpty!42746 (= setRes!42746 (and tp!1750544 (inv!83754 setElem!42746) e!3820241))))

(declare-fun setRest!42746 () (InoxSet Context!11174))

(assert (=> setNonEmpty!42746 (= setRest!42740 ((_ map or) (store ((as const (Array Context!11174 Bool)) false) setElem!42746 true) setRest!42746))))

(declare-fun b!6281993 () Bool)

(declare-fun tp!1750543 () Bool)

(assert (=> b!6281993 (= e!3820241 tp!1750543)))

(assert (= (and setNonEmpty!42740 condSetEmpty!42746) setIsEmpty!42746))

(assert (= (and setNonEmpty!42740 (not condSetEmpty!42746)) setNonEmpty!42746))

(assert (= setNonEmpty!42746 b!6281993))

(declare-fun m!7102952 () Bool)

(assert (=> setNonEmpty!42746 m!7102952))

(declare-fun b!6282004 () Bool)

(declare-fun e!3820244 () Bool)

(assert (=> b!6282004 (= e!3820244 tp_is_empty!41659)))

(declare-fun b!6282005 () Bool)

(declare-fun tp!1750558 () Bool)

(declare-fun tp!1750555 () Bool)

(assert (=> b!6282005 (= e!3820244 (and tp!1750558 tp!1750555))))

(assert (=> b!6280943 (= tp!1750472 e!3820244)))

(declare-fun b!6282006 () Bool)

(declare-fun tp!1750556 () Bool)

(assert (=> b!6282006 (= e!3820244 tp!1750556)))

(declare-fun b!6282007 () Bool)

(declare-fun tp!1750557 () Bool)

(declare-fun tp!1750559 () Bool)

(assert (=> b!6282007 (= e!3820244 (and tp!1750557 tp!1750559))))

(assert (= (and b!6280943 ((_ is ElementMatch!16203) (regOne!32919 r!7292))) b!6282004))

(assert (= (and b!6280943 ((_ is Concat!25048) (regOne!32919 r!7292))) b!6282005))

(assert (= (and b!6280943 ((_ is Star!16203) (regOne!32919 r!7292))) b!6282006))

(assert (= (and b!6280943 ((_ is Union!16203) (regOne!32919 r!7292))) b!6282007))

(declare-fun b!6282008 () Bool)

(declare-fun e!3820245 () Bool)

(assert (=> b!6282008 (= e!3820245 tp_is_empty!41659)))

(declare-fun b!6282009 () Bool)

(declare-fun tp!1750563 () Bool)

(declare-fun tp!1750560 () Bool)

(assert (=> b!6282009 (= e!3820245 (and tp!1750563 tp!1750560))))

(assert (=> b!6280943 (= tp!1750468 e!3820245)))

(declare-fun b!6282010 () Bool)

(declare-fun tp!1750561 () Bool)

(assert (=> b!6282010 (= e!3820245 tp!1750561)))

(declare-fun b!6282011 () Bool)

(declare-fun tp!1750562 () Bool)

(declare-fun tp!1750564 () Bool)

(assert (=> b!6282011 (= e!3820245 (and tp!1750562 tp!1750564))))

(assert (= (and b!6280943 ((_ is ElementMatch!16203) (regTwo!32919 r!7292))) b!6282008))

(assert (= (and b!6280943 ((_ is Concat!25048) (regTwo!32919 r!7292))) b!6282009))

(assert (= (and b!6280943 ((_ is Star!16203) (regTwo!32919 r!7292))) b!6282010))

(assert (= (and b!6280943 ((_ is Union!16203) (regTwo!32919 r!7292))) b!6282011))

(declare-fun b!6282012 () Bool)

(declare-fun e!3820246 () Bool)

(declare-fun tp!1750565 () Bool)

(declare-fun tp!1750566 () Bool)

(assert (=> b!6282012 (= e!3820246 (and tp!1750565 tp!1750566))))

(assert (=> b!6280950 (= tp!1750467 e!3820246)))

(assert (= (and b!6280950 ((_ is Cons!64784) (exprs!6087 (h!71234 zl!343)))) b!6282012))

(declare-fun b!6282013 () Bool)

(declare-fun e!3820247 () Bool)

(assert (=> b!6282013 (= e!3820247 tp_is_empty!41659)))

(declare-fun b!6282014 () Bool)

(declare-fun tp!1750570 () Bool)

(declare-fun tp!1750567 () Bool)

(assert (=> b!6282014 (= e!3820247 (and tp!1750570 tp!1750567))))

(assert (=> b!6280959 (= tp!1750471 e!3820247)))

(declare-fun b!6282015 () Bool)

(declare-fun tp!1750568 () Bool)

(assert (=> b!6282015 (= e!3820247 tp!1750568)))

(declare-fun b!6282016 () Bool)

(declare-fun tp!1750569 () Bool)

(declare-fun tp!1750571 () Bool)

(assert (=> b!6282016 (= e!3820247 (and tp!1750569 tp!1750571))))

(assert (= (and b!6280959 ((_ is ElementMatch!16203) (regOne!32918 r!7292))) b!6282013))

(assert (= (and b!6280959 ((_ is Concat!25048) (regOne!32918 r!7292))) b!6282014))

(assert (= (and b!6280959 ((_ is Star!16203) (regOne!32918 r!7292))) b!6282015))

(assert (= (and b!6280959 ((_ is Union!16203) (regOne!32918 r!7292))) b!6282016))

(declare-fun b!6282017 () Bool)

(declare-fun e!3820248 () Bool)

(assert (=> b!6282017 (= e!3820248 tp_is_empty!41659)))

(declare-fun b!6282018 () Bool)

(declare-fun tp!1750575 () Bool)

(declare-fun tp!1750572 () Bool)

(assert (=> b!6282018 (= e!3820248 (and tp!1750575 tp!1750572))))

(assert (=> b!6280959 (= tp!1750470 e!3820248)))

(declare-fun b!6282019 () Bool)

(declare-fun tp!1750573 () Bool)

(assert (=> b!6282019 (= e!3820248 tp!1750573)))

(declare-fun b!6282020 () Bool)

(declare-fun tp!1750574 () Bool)

(declare-fun tp!1750576 () Bool)

(assert (=> b!6282020 (= e!3820248 (and tp!1750574 tp!1750576))))

(assert (= (and b!6280959 ((_ is ElementMatch!16203) (regTwo!32918 r!7292))) b!6282017))

(assert (= (and b!6280959 ((_ is Concat!25048) (regTwo!32918 r!7292))) b!6282018))

(assert (= (and b!6280959 ((_ is Star!16203) (regTwo!32918 r!7292))) b!6282019))

(assert (= (and b!6280959 ((_ is Union!16203) (regTwo!32918 r!7292))) b!6282020))

(declare-fun b!6282021 () Bool)

(declare-fun e!3820249 () Bool)

(assert (=> b!6282021 (= e!3820249 tp_is_empty!41659)))

(declare-fun b!6282022 () Bool)

(declare-fun tp!1750580 () Bool)

(declare-fun tp!1750577 () Bool)

(assert (=> b!6282022 (= e!3820249 (and tp!1750580 tp!1750577))))

(assert (=> b!6280971 (= tp!1750469 e!3820249)))

(declare-fun b!6282023 () Bool)

(declare-fun tp!1750578 () Bool)

(assert (=> b!6282023 (= e!3820249 tp!1750578)))

(declare-fun b!6282024 () Bool)

(declare-fun tp!1750579 () Bool)

(declare-fun tp!1750581 () Bool)

(assert (=> b!6282024 (= e!3820249 (and tp!1750579 tp!1750581))))

(assert (= (and b!6280971 ((_ is ElementMatch!16203) (reg!16532 r!7292))) b!6282021))

(assert (= (and b!6280971 ((_ is Concat!25048) (reg!16532 r!7292))) b!6282022))

(assert (= (and b!6280971 ((_ is Star!16203) (reg!16532 r!7292))) b!6282023))

(assert (= (and b!6280971 ((_ is Union!16203) (reg!16532 r!7292))) b!6282024))

(declare-fun b!6282032 () Bool)

(declare-fun e!3820255 () Bool)

(declare-fun tp!1750586 () Bool)

(assert (=> b!6282032 (= e!3820255 tp!1750586)))

(declare-fun b!6282031 () Bool)

(declare-fun tp!1750587 () Bool)

(declare-fun e!3820254 () Bool)

(assert (=> b!6282031 (= e!3820254 (and (inv!83754 (h!71234 (t!378470 zl!343))) e!3820255 tp!1750587))))

(assert (=> b!6280956 (= tp!1750465 e!3820254)))

(assert (= b!6282031 b!6282032))

(assert (= (and b!6280956 ((_ is Cons!64786) (t!378470 zl!343))) b!6282031))

(declare-fun m!7102954 () Bool)

(assert (=> b!6282031 m!7102954))

(declare-fun b!6282037 () Bool)

(declare-fun e!3820258 () Bool)

(declare-fun tp!1750590 () Bool)

(assert (=> b!6282037 (= e!3820258 (and tp_is_empty!41659 tp!1750590))))

(assert (=> b!6280951 (= tp!1750466 e!3820258)))

(assert (= (and b!6280951 ((_ is Cons!64785) (t!378469 s!2326))) b!6282037))

(declare-fun b_lambda!239119 () Bool)

(assert (= b_lambda!239113 (or b!6280977 b_lambda!239119)))

(declare-fun bs!1569087 () Bool)

(declare-fun d!1971441 () Bool)

(assert (= bs!1569087 (and d!1971441 b!6280977)))

(assert (=> bs!1569087 (= (dynLambda!25629 lambda!344509 lt!2354667) (derivationStepZipperUp!1377 lt!2354667 (h!71233 s!2326)))))

(assert (=> bs!1569087 m!7101920))

(assert (=> d!1971303 d!1971441))

(declare-fun b_lambda!239121 () Bool)

(assert (= b_lambda!239117 (or b!6280977 b_lambda!239121)))

(declare-fun bs!1569088 () Bool)

(declare-fun d!1971443 () Bool)

(assert (= bs!1569088 (and d!1971443 b!6280977)))

(assert (=> bs!1569088 (= (dynLambda!25629 lambda!344509 lt!2354638) (derivationStepZipperUp!1377 lt!2354638 (h!71233 s!2326)))))

(assert (=> bs!1569088 m!7101930))

(assert (=> d!1971427 d!1971443))

(declare-fun b_lambda!239123 () Bool)

(assert (= b_lambda!239115 (or b!6280977 b_lambda!239123)))

(declare-fun bs!1569089 () Bool)

(declare-fun d!1971445 () Bool)

(assert (= bs!1569089 (and d!1971445 b!6280977)))

(assert (=> bs!1569089 (= (dynLambda!25629 lambda!344509 (h!71234 zl!343)) (derivationStepZipperUp!1377 (h!71234 zl!343) (h!71233 s!2326)))))

(assert (=> bs!1569089 m!7101942))

(assert (=> d!1971389 d!1971445))

(check-sat (not d!1971319) (not b!6281658) (not bm!531625) (not b!6281823) (not b!6282007) (not bm!531631) (not d!1971369) (not d!1971433) (not b!6281559) (not b!6281892) (not b!6281882) (not b!6281715) (not b!6281757) (not b!6281936) (not d!1971423) (not b!6281887) (not b!6281844) (not d!1971431) (not b!6281713) (not b_lambda!239119) (not b!6281980) (not bm!531624) (not d!1971303) (not d!1971299) (not d!1971381) (not d!1971353) (not bs!1569087) (not d!1971413) (not d!1971357) (not b!6281718) (not d!1971347) (not b!6281960) (not d!1971361) (not d!1971379) (not setNonEmpty!42746) (not b!6281811) (not d!1971309) (not bm!531621) (not d!1971331) (not b!6281922) (not bm!531583) (not d!1971367) (not b!6281679) (not b!6281812) (not d!1971365) (not b!6282012) (not bm!531590) (not b!6282019) (not b!6281758) (not b!6281562) tp_is_empty!41659 (not b!6281710) (not b!6281728) (not b!6281557) (not d!1971411) (not d!1971349) (not b!6282018) (not d!1971307) (not bm!531639) (not b!6281810) (not b!6281760) (not b!6281794) (not b!6281740) (not b!6281801) (not d!1971305) (not b!6281903) (not b!6281786) (not b!6281835) (not b!6281531) (not d!1971311) (not b!6281733) (not bm!531604) (not b!6281793) (not b!6281966) (not bm!531630) (not b!6281807) (not b!6281714) (not b!6281576) (not d!1971341) (not b!6281659) (not b!6282015) (not b!6281618) (not d!1971363) (not b!6281686) (not b!6281836) (not b!6281962) (not b!6281582) (not b!6281739) (not b!6281972) (not b!6281734) (not d!1971389) (not b!6281805) (not b!6282005) (not b!6281900) (not d!1971351) (not b!6281668) (not b!6281534) (not b!6281904) (not bm!531602) (not b!6281741) (not b!6281809) (not b!6281755) (not b!6281537) (not d!1971301) (not bm!531605) (not b!6281967) (not b!6281833) (not b!6281754) (not b!6281681) (not b!6282037) (not b!6281891) (not bs!1569088) (not bm!531601) (not d!1971323) (not b!6281535) (not b!6281529) (not b!6281620) (not b!6282011) (not b!6282032) (not d!1971415) (not b!6281902) (not b!6282010) (not b!6282016) (not d!1971393) (not d!1971359) (not b!6281804) (not d!1971317) (not d!1971375) (not b!6281993) (not b!6281530) (not bm!531637) (not d!1971407) (not b_lambda!239123) (not d!1971343) (not b!6282031) (not b!6281581) (not b!6281868) (not b!6282009) (not b!6281898) (not bm!531587) (not b!6281963) (not bm!531589) (not bm!531588) (not d!1971335) (not b!6281935) (not bm!531584) (not b!6281745) (not b!6281965) (not b!6282020) (not b!6281974) (not b!6281834) (not bm!531629) (not d!1971373) (not b!6282006) (not bs!1569089) (not b!6281729) (not b!6281803) (not bm!531600) (not b!6281712) (not b!6281759) (not b!6281796) (not d!1971291) (not d!1971371) (not bm!531622) (not b!6281910) (not b!6281802) (not d!1971429) (not b!6281908) (not b!6281660) (not b!6281657) (not bm!531620) (not d!1971315) (not b!6281575) (not b!6281716) (not b!6281905) (not b!6281806) (not b!6281961) (not b!6281580) (not bm!531598) (not b!6281982) (not b!6281738) (not b!6281584) (not b!6281820) (not d!1971321) (not b!6281881) (not d!1971383) (not b!6282024) (not b!6281684) (not d!1971333) (not b!6281578) (not bm!531578) (not b!6282014) (not d!1971297) (not b!6281583) (not b!6281756) (not d!1971295) (not b!6281664) (not b!6281711) (not b!6281792) (not b!6281730) (not b!6281816) (not d!1971293) (not d!1971427) (not b!6282022) (not b!6281911) (not b!6281975) (not b_lambda!239121) (not bm!531636) (not b!6282023) (not d!1971329) (not d!1971435) (not d!1971409) (not b!6281825) (not b!6281749) (not b!6281736) (not d!1971289) (not b!6281672) (not b!6281720) (not bm!531599) (not d!1971405) (not b!6281886) (not d!1971397) (not b!6281558) (not b!6281909) (not bm!531626) (not b!6281795) (not b!6281556) (not b!6281579) (not b!6281554) (not b!6281555) (not b!6281797) (not bm!531635) (not b!6281988) (not b!6281791))
(check-sat)
(get-model)

(declare-fun d!1971925 () Bool)

(assert (=> d!1971925 (= (isDefined!12797 lt!2354817) (not (isEmpty!36833 lt!2354817)))))

(declare-fun bs!1569950 () Bool)

(assert (= bs!1569950 d!1971925))

(declare-fun m!7103898 () Bool)

(assert (=> bs!1569950 m!7103898))

(assert (=> d!1971347 d!1971925))

(declare-fun b!6282963 () Bool)

(declare-fun e!3820797 () Bool)

(declare-fun e!3820795 () Bool)

(assert (=> b!6282963 (= e!3820797 e!3820795)))

(declare-fun res!2591163 () Bool)

(assert (=> b!6282963 (=> res!2591163 e!3820795)))

(declare-fun call!531820 () Bool)

(assert (=> b!6282963 (= res!2591163 call!531820)))

(declare-fun b!6282964 () Bool)

(declare-fun e!3820796 () Bool)

(assert (=> b!6282964 (= e!3820796 (= (head!12906 Nil!64785) (c!1138982 (regOne!32918 (regOne!32918 r!7292)))))))

(declare-fun b!6282965 () Bool)

(declare-fun res!2591166 () Bool)

(assert (=> b!6282965 (=> res!2591166 e!3820795)))

(assert (=> b!6282965 (= res!2591166 (not (isEmpty!36834 (tail!11991 Nil!64785))))))

(declare-fun b!6282967 () Bool)

(assert (=> b!6282967 (= e!3820795 (not (= (head!12906 Nil!64785) (c!1138982 (regOne!32918 (regOne!32918 r!7292))))))))

(declare-fun b!6282968 () Bool)

(declare-fun e!3820794 () Bool)

(declare-fun lt!2354921 () Bool)

(assert (=> b!6282968 (= e!3820794 (not lt!2354921))))

(declare-fun b!6282969 () Bool)

(declare-fun e!3820800 () Bool)

(assert (=> b!6282969 (= e!3820800 e!3820794)))

(declare-fun c!1139563 () Bool)

(assert (=> b!6282969 (= c!1139563 ((_ is EmptyLang!16203) (regOne!32918 (regOne!32918 r!7292))))))

(declare-fun bm!531815 () Bool)

(assert (=> bm!531815 (= call!531820 (isEmpty!36834 Nil!64785))))

(declare-fun b!6282970 () Bool)

(declare-fun res!2591168 () Bool)

(assert (=> b!6282970 (=> (not res!2591168) (not e!3820796))))

(assert (=> b!6282970 (= res!2591168 (not call!531820))))

(declare-fun b!6282971 () Bool)

(declare-fun e!3820799 () Bool)

(assert (=> b!6282971 (= e!3820799 (matchR!8386 (derivativeStep!4912 (regOne!32918 (regOne!32918 r!7292)) (head!12906 Nil!64785)) (tail!11991 Nil!64785)))))

(declare-fun b!6282972 () Bool)

(declare-fun e!3820798 () Bool)

(assert (=> b!6282972 (= e!3820798 e!3820797)))

(declare-fun res!2591165 () Bool)

(assert (=> b!6282972 (=> (not res!2591165) (not e!3820797))))

(assert (=> b!6282972 (= res!2591165 (not lt!2354921))))

(declare-fun b!6282966 () Bool)

(declare-fun res!2591164 () Bool)

(assert (=> b!6282966 (=> (not res!2591164) (not e!3820796))))

(assert (=> b!6282966 (= res!2591164 (isEmpty!36834 (tail!11991 Nil!64785)))))

(declare-fun d!1971927 () Bool)

(assert (=> d!1971927 e!3820800))

(declare-fun c!1139564 () Bool)

(assert (=> d!1971927 (= c!1139564 ((_ is EmptyExpr!16203) (regOne!32918 (regOne!32918 r!7292))))))

(assert (=> d!1971927 (= lt!2354921 e!3820799)))

(declare-fun c!1139565 () Bool)

(assert (=> d!1971927 (= c!1139565 (isEmpty!36834 Nil!64785))))

(assert (=> d!1971927 (validRegex!7939 (regOne!32918 (regOne!32918 r!7292)))))

(assert (=> d!1971927 (= (matchR!8386 (regOne!32918 (regOne!32918 r!7292)) Nil!64785) lt!2354921)))

(declare-fun b!6282973 () Bool)

(declare-fun res!2591162 () Bool)

(assert (=> b!6282973 (=> res!2591162 e!3820798)))

(assert (=> b!6282973 (= res!2591162 (not ((_ is ElementMatch!16203) (regOne!32918 (regOne!32918 r!7292)))))))

(assert (=> b!6282973 (= e!3820794 e!3820798)))

(declare-fun b!6282974 () Bool)

(assert (=> b!6282974 (= e!3820800 (= lt!2354921 call!531820))))

(declare-fun b!6282975 () Bool)

(assert (=> b!6282975 (= e!3820799 (nullable!6196 (regOne!32918 (regOne!32918 r!7292))))))

(declare-fun b!6282976 () Bool)

(declare-fun res!2591167 () Bool)

(assert (=> b!6282976 (=> res!2591167 e!3820798)))

(assert (=> b!6282976 (= res!2591167 e!3820796)))

(declare-fun res!2591161 () Bool)

(assert (=> b!6282976 (=> (not res!2591161) (not e!3820796))))

(assert (=> b!6282976 (= res!2591161 lt!2354921)))

(assert (= (and d!1971927 c!1139565) b!6282975))

(assert (= (and d!1971927 (not c!1139565)) b!6282971))

(assert (= (and d!1971927 c!1139564) b!6282974))

(assert (= (and d!1971927 (not c!1139564)) b!6282969))

(assert (= (and b!6282969 c!1139563) b!6282968))

(assert (= (and b!6282969 (not c!1139563)) b!6282973))

(assert (= (and b!6282973 (not res!2591162)) b!6282976))

(assert (= (and b!6282976 res!2591161) b!6282970))

(assert (= (and b!6282970 res!2591168) b!6282966))

(assert (= (and b!6282966 res!2591164) b!6282964))

(assert (= (and b!6282976 (not res!2591167)) b!6282972))

(assert (= (and b!6282972 res!2591165) b!6282963))

(assert (= (and b!6282963 (not res!2591163)) b!6282965))

(assert (= (and b!6282965 (not res!2591166)) b!6282967))

(assert (= (or b!6282974 b!6282963 b!6282970) bm!531815))

(declare-fun m!7103900 () Bool)

(assert (=> bm!531815 m!7103900))

(declare-fun m!7103902 () Bool)

(assert (=> b!6282967 m!7103902))

(assert (=> d!1971927 m!7103900))

(assert (=> d!1971927 m!7102678))

(declare-fun m!7103904 () Bool)

(assert (=> b!6282965 m!7103904))

(assert (=> b!6282965 m!7103904))

(declare-fun m!7103906 () Bool)

(assert (=> b!6282965 m!7103906))

(assert (=> b!6282975 m!7101958))

(assert (=> b!6282964 m!7103902))

(assert (=> b!6282971 m!7103902))

(assert (=> b!6282971 m!7103902))

(declare-fun m!7103908 () Bool)

(assert (=> b!6282971 m!7103908))

(assert (=> b!6282971 m!7103904))

(assert (=> b!6282971 m!7103908))

(assert (=> b!6282971 m!7103904))

(declare-fun m!7103910 () Bool)

(assert (=> b!6282971 m!7103910))

(assert (=> b!6282966 m!7103904))

(assert (=> b!6282966 m!7103904))

(assert (=> b!6282966 m!7103906))

(assert (=> d!1971347 d!1971927))

(declare-fun bm!531816 () Bool)

(declare-fun call!531822 () Bool)

(declare-fun call!531823 () Bool)

(assert (=> bm!531816 (= call!531822 call!531823)))

(declare-fun b!6282977 () Bool)

(declare-fun res!2591172 () Bool)

(declare-fun e!3820803 () Bool)

(assert (=> b!6282977 (=> res!2591172 e!3820803)))

(assert (=> b!6282977 (= res!2591172 (not ((_ is Concat!25048) (regOne!32918 (regOne!32918 r!7292)))))))

(declare-fun e!3820807 () Bool)

(assert (=> b!6282977 (= e!3820807 e!3820803)))

(declare-fun b!6282978 () Bool)

(declare-fun res!2591169 () Bool)

(declare-fun e!3820802 () Bool)

(assert (=> b!6282978 (=> (not res!2591169) (not e!3820802))))

(declare-fun call!531821 () Bool)

(assert (=> b!6282978 (= res!2591169 call!531821)))

(assert (=> b!6282978 (= e!3820807 e!3820802)))

(declare-fun b!6282979 () Bool)

(declare-fun e!3820804 () Bool)

(assert (=> b!6282979 (= e!3820804 call!531823)))

(declare-fun b!6282980 () Bool)

(assert (=> b!6282980 (= e!3820802 call!531822)))

(declare-fun b!6282981 () Bool)

(declare-fun e!3820805 () Bool)

(declare-fun e!3820806 () Bool)

(assert (=> b!6282981 (= e!3820805 e!3820806)))

(declare-fun c!1139567 () Bool)

(assert (=> b!6282981 (= c!1139567 ((_ is Star!16203) (regOne!32918 (regOne!32918 r!7292))))))

(declare-fun b!6282982 () Bool)

(assert (=> b!6282982 (= e!3820806 e!3820807)))

(declare-fun c!1139566 () Bool)

(assert (=> b!6282982 (= c!1139566 ((_ is Union!16203) (regOne!32918 (regOne!32918 r!7292))))))

(declare-fun bm!531817 () Bool)

(assert (=> bm!531817 (= call!531821 (validRegex!7939 (ite c!1139566 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))))))

(declare-fun b!6282984 () Bool)

(assert (=> b!6282984 (= e!3820806 e!3820804)))

(declare-fun res!2591170 () Bool)

(assert (=> b!6282984 (= res!2591170 (not (nullable!6196 (reg!16532 (regOne!32918 (regOne!32918 r!7292))))))))

(assert (=> b!6282984 (=> (not res!2591170) (not e!3820804))))

(declare-fun b!6282983 () Bool)

(declare-fun e!3820801 () Bool)

(assert (=> b!6282983 (= e!3820801 call!531822)))

(declare-fun d!1971929 () Bool)

(declare-fun res!2591173 () Bool)

(assert (=> d!1971929 (=> res!2591173 e!3820805)))

(assert (=> d!1971929 (= res!2591173 ((_ is ElementMatch!16203) (regOne!32918 (regOne!32918 r!7292))))))

(assert (=> d!1971929 (= (validRegex!7939 (regOne!32918 (regOne!32918 r!7292))) e!3820805)))

(declare-fun bm!531818 () Bool)

(assert (=> bm!531818 (= call!531823 (validRegex!7939 (ite c!1139567 (reg!16532 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139566 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (regTwo!32918 (regOne!32918 (regOne!32918 r!7292)))))))))

(declare-fun b!6282985 () Bool)

(assert (=> b!6282985 (= e!3820803 e!3820801)))

(declare-fun res!2591171 () Bool)

(assert (=> b!6282985 (=> (not res!2591171) (not e!3820801))))

(assert (=> b!6282985 (= res!2591171 call!531821)))

(assert (= (and d!1971929 (not res!2591173)) b!6282981))

(assert (= (and b!6282981 c!1139567) b!6282984))

(assert (= (and b!6282981 (not c!1139567)) b!6282982))

(assert (= (and b!6282984 res!2591170) b!6282979))

(assert (= (and b!6282982 c!1139566) b!6282978))

(assert (= (and b!6282982 (not c!1139566)) b!6282977))

(assert (= (and b!6282978 res!2591169) b!6282980))

(assert (= (and b!6282977 (not res!2591172)) b!6282985))

(assert (= (and b!6282985 res!2591171) b!6282983))

(assert (= (or b!6282980 b!6282983) bm!531816))

(assert (= (or b!6282978 b!6282985) bm!531817))

(assert (= (or b!6282979 bm!531816) bm!531818))

(declare-fun m!7103912 () Bool)

(assert (=> bm!531817 m!7103912))

(declare-fun m!7103914 () Bool)

(assert (=> b!6282984 m!7103914))

(declare-fun m!7103916 () Bool)

(assert (=> bm!531818 m!7103916))

(assert (=> d!1971347 d!1971929))

(declare-fun d!1971931 () Bool)

(assert (=> d!1971931 (= (isEmpty!36834 s!2326) ((_ is Nil!64785) s!2326))))

(assert (=> d!1971349 d!1971931))

(declare-fun bm!531819 () Bool)

(declare-fun call!531825 () Bool)

(declare-fun call!531826 () Bool)

(assert (=> bm!531819 (= call!531825 call!531826)))

(declare-fun b!6282986 () Bool)

(declare-fun res!2591177 () Bool)

(declare-fun e!3820810 () Bool)

(assert (=> b!6282986 (=> res!2591177 e!3820810)))

(assert (=> b!6282986 (= res!2591177 (not ((_ is Concat!25048) lt!2354656)))))

(declare-fun e!3820814 () Bool)

(assert (=> b!6282986 (= e!3820814 e!3820810)))

(declare-fun b!6282987 () Bool)

(declare-fun res!2591174 () Bool)

(declare-fun e!3820809 () Bool)

(assert (=> b!6282987 (=> (not res!2591174) (not e!3820809))))

(declare-fun call!531824 () Bool)

(assert (=> b!6282987 (= res!2591174 call!531824)))

(assert (=> b!6282987 (= e!3820814 e!3820809)))

(declare-fun b!6282988 () Bool)

(declare-fun e!3820811 () Bool)

(assert (=> b!6282988 (= e!3820811 call!531826)))

(declare-fun b!6282989 () Bool)

(assert (=> b!6282989 (= e!3820809 call!531825)))

(declare-fun b!6282990 () Bool)

(declare-fun e!3820812 () Bool)

(declare-fun e!3820813 () Bool)

(assert (=> b!6282990 (= e!3820812 e!3820813)))

(declare-fun c!1139569 () Bool)

(assert (=> b!6282990 (= c!1139569 ((_ is Star!16203) lt!2354656))))

(declare-fun b!6282991 () Bool)

(assert (=> b!6282991 (= e!3820813 e!3820814)))

(declare-fun c!1139568 () Bool)

(assert (=> b!6282991 (= c!1139568 ((_ is Union!16203) lt!2354656))))

(declare-fun bm!531820 () Bool)

(assert (=> bm!531820 (= call!531824 (validRegex!7939 (ite c!1139568 (regOne!32919 lt!2354656) (regOne!32918 lt!2354656))))))

(declare-fun b!6282993 () Bool)

(assert (=> b!6282993 (= e!3820813 e!3820811)))

(declare-fun res!2591175 () Bool)

(assert (=> b!6282993 (= res!2591175 (not (nullable!6196 (reg!16532 lt!2354656))))))

(assert (=> b!6282993 (=> (not res!2591175) (not e!3820811))))

(declare-fun b!6282992 () Bool)

(declare-fun e!3820808 () Bool)

(assert (=> b!6282992 (= e!3820808 call!531825)))

(declare-fun d!1971933 () Bool)

(declare-fun res!2591178 () Bool)

(assert (=> d!1971933 (=> res!2591178 e!3820812)))

(assert (=> d!1971933 (= res!2591178 ((_ is ElementMatch!16203) lt!2354656))))

(assert (=> d!1971933 (= (validRegex!7939 lt!2354656) e!3820812)))

(declare-fun bm!531821 () Bool)

(assert (=> bm!531821 (= call!531826 (validRegex!7939 (ite c!1139569 (reg!16532 lt!2354656) (ite c!1139568 (regTwo!32919 lt!2354656) (regTwo!32918 lt!2354656)))))))

(declare-fun b!6282994 () Bool)

(assert (=> b!6282994 (= e!3820810 e!3820808)))

(declare-fun res!2591176 () Bool)

(assert (=> b!6282994 (=> (not res!2591176) (not e!3820808))))

(assert (=> b!6282994 (= res!2591176 call!531824)))

(assert (= (and d!1971933 (not res!2591178)) b!6282990))

(assert (= (and b!6282990 c!1139569) b!6282993))

(assert (= (and b!6282990 (not c!1139569)) b!6282991))

(assert (= (and b!6282993 res!2591175) b!6282988))

(assert (= (and b!6282991 c!1139568) b!6282987))

(assert (= (and b!6282991 (not c!1139568)) b!6282986))

(assert (= (and b!6282987 res!2591174) b!6282989))

(assert (= (and b!6282986 (not res!2591177)) b!6282994))

(assert (= (and b!6282994 res!2591176) b!6282992))

(assert (= (or b!6282989 b!6282992) bm!531819))

(assert (= (or b!6282987 b!6282994) bm!531820))

(assert (= (or b!6282988 bm!531819) bm!531821))

(declare-fun m!7103918 () Bool)

(assert (=> bm!531820 m!7103918))

(declare-fun m!7103920 () Bool)

(assert (=> b!6282993 m!7103920))

(declare-fun m!7103922 () Bool)

(assert (=> bm!531821 m!7103922))

(assert (=> d!1971349 d!1971933))

(declare-fun b!6282995 () Bool)

(declare-fun e!3820818 () Bool)

(declare-fun e!3820816 () Bool)

(assert (=> b!6282995 (= e!3820818 e!3820816)))

(declare-fun res!2591181 () Bool)

(assert (=> b!6282995 (=> res!2591181 e!3820816)))

(declare-fun call!531827 () Bool)

(assert (=> b!6282995 (= res!2591181 call!531827)))

(declare-fun b!6282996 () Bool)

(declare-fun e!3820817 () Bool)

(assert (=> b!6282996 (= e!3820817 (= (head!12906 s!2326) (c!1138982 (regTwo!32918 r!7292))))))

(declare-fun b!6282997 () Bool)

(declare-fun res!2591184 () Bool)

(assert (=> b!6282997 (=> res!2591184 e!3820816)))

(assert (=> b!6282997 (= res!2591184 (not (isEmpty!36834 (tail!11991 s!2326))))))

(declare-fun b!6282999 () Bool)

(assert (=> b!6282999 (= e!3820816 (not (= (head!12906 s!2326) (c!1138982 (regTwo!32918 r!7292)))))))

(declare-fun b!6283000 () Bool)

(declare-fun e!3820815 () Bool)

(declare-fun lt!2354922 () Bool)

(assert (=> b!6283000 (= e!3820815 (not lt!2354922))))

(declare-fun b!6283001 () Bool)

(declare-fun e!3820821 () Bool)

(assert (=> b!6283001 (= e!3820821 e!3820815)))

(declare-fun c!1139570 () Bool)

(assert (=> b!6283001 (= c!1139570 ((_ is EmptyLang!16203) (regTwo!32918 r!7292)))))

(declare-fun bm!531822 () Bool)

(assert (=> bm!531822 (= call!531827 (isEmpty!36834 s!2326))))

(declare-fun b!6283002 () Bool)

(declare-fun res!2591186 () Bool)

(assert (=> b!6283002 (=> (not res!2591186) (not e!3820817))))

(assert (=> b!6283002 (= res!2591186 (not call!531827))))

(declare-fun b!6283003 () Bool)

(declare-fun e!3820820 () Bool)

(assert (=> b!6283003 (= e!3820820 (matchR!8386 (derivativeStep!4912 (regTwo!32918 r!7292) (head!12906 s!2326)) (tail!11991 s!2326)))))

(declare-fun b!6283004 () Bool)

(declare-fun e!3820819 () Bool)

(assert (=> b!6283004 (= e!3820819 e!3820818)))

(declare-fun res!2591183 () Bool)

(assert (=> b!6283004 (=> (not res!2591183) (not e!3820818))))

(assert (=> b!6283004 (= res!2591183 (not lt!2354922))))

(declare-fun b!6282998 () Bool)

(declare-fun res!2591182 () Bool)

(assert (=> b!6282998 (=> (not res!2591182) (not e!3820817))))

(assert (=> b!6282998 (= res!2591182 (isEmpty!36834 (tail!11991 s!2326)))))

(declare-fun d!1971935 () Bool)

(assert (=> d!1971935 e!3820821))

(declare-fun c!1139571 () Bool)

(assert (=> d!1971935 (= c!1139571 ((_ is EmptyExpr!16203) (regTwo!32918 r!7292)))))

(assert (=> d!1971935 (= lt!2354922 e!3820820)))

(declare-fun c!1139572 () Bool)

(assert (=> d!1971935 (= c!1139572 (isEmpty!36834 s!2326))))

(assert (=> d!1971935 (validRegex!7939 (regTwo!32918 r!7292))))

(assert (=> d!1971935 (= (matchR!8386 (regTwo!32918 r!7292) s!2326) lt!2354922)))

(declare-fun b!6283005 () Bool)

(declare-fun res!2591180 () Bool)

(assert (=> b!6283005 (=> res!2591180 e!3820819)))

(assert (=> b!6283005 (= res!2591180 (not ((_ is ElementMatch!16203) (regTwo!32918 r!7292))))))

(assert (=> b!6283005 (= e!3820815 e!3820819)))

(declare-fun b!6283006 () Bool)

(assert (=> b!6283006 (= e!3820821 (= lt!2354922 call!531827))))

(declare-fun b!6283007 () Bool)

(assert (=> b!6283007 (= e!3820820 (nullable!6196 (regTwo!32918 r!7292)))))

(declare-fun b!6283008 () Bool)

(declare-fun res!2591185 () Bool)

(assert (=> b!6283008 (=> res!2591185 e!3820819)))

(assert (=> b!6283008 (= res!2591185 e!3820817)))

(declare-fun res!2591179 () Bool)

(assert (=> b!6283008 (=> (not res!2591179) (not e!3820817))))

(assert (=> b!6283008 (= res!2591179 lt!2354922)))

(assert (= (and d!1971935 c!1139572) b!6283007))

(assert (= (and d!1971935 (not c!1139572)) b!6283003))

(assert (= (and d!1971935 c!1139571) b!6283006))

(assert (= (and d!1971935 (not c!1139571)) b!6283001))

(assert (= (and b!6283001 c!1139570) b!6283000))

(assert (= (and b!6283001 (not c!1139570)) b!6283005))

(assert (= (and b!6283005 (not res!2591180)) b!6283008))

(assert (= (and b!6283008 res!2591179) b!6283002))

(assert (= (and b!6283002 res!2591186) b!6282998))

(assert (= (and b!6282998 res!2591182) b!6282996))

(assert (= (and b!6283008 (not res!2591185)) b!6283004))

(assert (= (and b!6283004 res!2591183) b!6282995))

(assert (= (and b!6282995 (not res!2591181)) b!6282997))

(assert (= (and b!6282997 (not res!2591184)) b!6282999))

(assert (= (or b!6283006 b!6282995 b!6283002) bm!531822))

(assert (=> bm!531822 m!7102600))

(assert (=> b!6282999 m!7102604))

(assert (=> d!1971935 m!7102600))

(declare-fun m!7103924 () Bool)

(assert (=> d!1971935 m!7103924))

(assert (=> b!6282997 m!7102606))

(assert (=> b!6282997 m!7102606))

(assert (=> b!6282997 m!7102608))

(declare-fun m!7103926 () Bool)

(assert (=> b!6283007 m!7103926))

(assert (=> b!6282996 m!7102604))

(assert (=> b!6283003 m!7102604))

(assert (=> b!6283003 m!7102604))

(declare-fun m!7103928 () Bool)

(assert (=> b!6283003 m!7103928))

(assert (=> b!6283003 m!7102606))

(assert (=> b!6283003 m!7103928))

(assert (=> b!6283003 m!7102606))

(declare-fun m!7103930 () Bool)

(assert (=> b!6283003 m!7103930))

(assert (=> b!6282998 m!7102606))

(assert (=> b!6282998 m!7102606))

(assert (=> b!6282998 m!7102608))

(assert (=> b!6281529 d!1971935))

(declare-fun d!1971937 () Bool)

(assert (=> d!1971937 (= (head!12907 (unfocusZipperList!1624 zl!343)) (h!71232 (unfocusZipperList!1624 zl!343)))))

(assert (=> b!6281961 d!1971937))

(declare-fun d!1971939 () Bool)

(assert (=> d!1971939 (= (head!12906 s!2326) (h!71233 s!2326))))

(assert (=> b!6281741 d!1971939))

(declare-fun d!1971941 () Bool)

(assert (=> d!1971941 (= (isEmptyExpr!1609 lt!2354820) ((_ is EmptyExpr!16203) lt!2354820))))

(assert (=> b!6281759 d!1971941))

(declare-fun d!1971943 () Bool)

(assert (=> d!1971943 (= (isEmpty!36834 (t!378469 s!2326)) ((_ is Nil!64785) (t!378469 s!2326)))))

(assert (=> d!1971319 d!1971943))

(assert (=> d!1971389 d!1971397))

(declare-fun d!1971945 () Bool)

(assert (=> d!1971945 (= (flatMap!1708 z!1189 lambda!344509) (dynLambda!25629 lambda!344509 (h!71234 zl!343)))))

(assert (=> d!1971945 true))

(declare-fun _$13!3400 () Unit!158143)

(assert (=> d!1971945 (= (choose!46646 z!1189 (h!71234 zl!343) lambda!344509) _$13!3400)))

(declare-fun b_lambda!239185 () Bool)

(assert (=> (not b_lambda!239185) (not d!1971945)))

(declare-fun bs!1569951 () Bool)

(assert (= bs!1569951 d!1971945))

(assert (=> bs!1569951 m!7101938))

(assert (=> bs!1569951 m!7102828))

(assert (=> d!1971389 d!1971945))

(assert (=> bs!1569087 d!1971313))

(declare-fun d!1971947 () Bool)

(assert (=> d!1971947 (= (isEmpty!36833 (findConcatSeparation!2508 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 Nil!64785 s!2326 s!2326)) (not ((_ is Some!16093) (findConcatSeparation!2508 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 Nil!64785 s!2326 s!2326))))))

(assert (=> d!1971373 d!1971947))

(declare-fun d!1971949 () Bool)

(assert (=> d!1971949 (= (nullable!6196 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292)))) (nullableFct!2147 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292)))))))

(declare-fun bs!1569952 () Bool)

(assert (= bs!1569952 d!1971949))

(declare-fun m!7103932 () Bool)

(assert (=> bs!1569952 m!7103932))

(assert (=> b!6281911 d!1971949))

(declare-fun bm!531823 () Bool)

(declare-fun call!531829 () (InoxSet Context!11174))

(declare-fun call!531831 () (InoxSet Context!11174))

(assert (=> bm!531823 (= call!531829 call!531831)))

(declare-fun b!6283009 () Bool)

(declare-fun e!3820824 () Bool)

(assert (=> b!6283009 (= e!3820824 (nullable!6196 (regOne!32918 (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343))))))))))

(declare-fun b!6283010 () Bool)

(declare-fun e!3820822 () (InoxSet Context!11174))

(assert (=> b!6283010 (= e!3820822 call!531829)))

(declare-fun b!6283011 () Bool)

(declare-fun e!3820823 () (InoxSet Context!11174))

(assert (=> b!6283011 (= e!3820823 call!531829)))

(declare-fun b!6283012 () Bool)

(declare-fun c!1139577 () Bool)

(assert (=> b!6283012 (= c!1139577 ((_ is Star!16203) (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))))))

(assert (=> b!6283012 (= e!3820823 e!3820822)))

(declare-fun bm!531824 () Bool)

(declare-fun call!531832 () List!64908)

(declare-fun call!531830 () List!64908)

(assert (=> bm!531824 (= call!531832 call!531830)))

(declare-fun b!6283013 () Bool)

(declare-fun e!3820825 () (InoxSet Context!11174))

(declare-fun call!531828 () (InoxSet Context!11174))

(assert (=> b!6283013 (= e!3820825 ((_ map or) call!531828 call!531831))))

(declare-fun b!6283014 () Bool)

(declare-fun e!3820826 () (InoxSet Context!11174))

(declare-fun call!531833 () (InoxSet Context!11174))

(assert (=> b!6283014 (= e!3820826 ((_ map or) call!531828 call!531833))))

(declare-fun c!1139575 () Bool)

(declare-fun c!1139576 () Bool)

(declare-fun bm!531825 () Bool)

(assert (=> bm!531825 (= call!531830 ($colon$colon!2068 (exprs!6087 (ite c!1139259 lt!2354668 (Context!11175 call!531625))) (ite (or c!1139576 c!1139575) (regTwo!32918 (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))) (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343))))))))))

(declare-fun b!6283015 () Bool)

(assert (=> b!6283015 (= c!1139576 e!3820824)))

(declare-fun res!2591187 () Bool)

(assert (=> b!6283015 (=> (not res!2591187) (not e!3820824))))

(assert (=> b!6283015 (= res!2591187 ((_ is Concat!25048) (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))))))

(assert (=> b!6283015 (= e!3820826 e!3820825)))

(declare-fun b!6283016 () Bool)

(declare-fun e!3820827 () (InoxSet Context!11174))

(assert (=> b!6283016 (= e!3820827 e!3820826)))

(declare-fun c!1139574 () Bool)

(assert (=> b!6283016 (= c!1139574 ((_ is Union!16203) (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))))))

(declare-fun bm!531826 () Bool)

(assert (=> bm!531826 (= call!531833 (derivationStepZipperDown!1451 (ite c!1139574 (regTwo!32919 (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))) (ite c!1139576 (regTwo!32918 (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))) (ite c!1139575 (regOne!32918 (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))) (reg!16532 (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343))))))))) (ite (or c!1139574 c!1139576) (ite c!1139259 lt!2354668 (Context!11175 call!531625)) (Context!11175 call!531832)) (h!71233 s!2326)))))

(declare-fun bm!531827 () Bool)

(assert (=> bm!531827 (= call!531828 (derivationStepZipperDown!1451 (ite c!1139574 (regOne!32919 (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))) (regOne!32918 (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343))))))) (ite c!1139574 (ite c!1139259 lt!2354668 (Context!11175 call!531625)) (Context!11175 call!531830)) (h!71233 s!2326)))))

(declare-fun d!1971951 () Bool)

(declare-fun c!1139573 () Bool)

(assert (=> d!1971951 (= c!1139573 (and ((_ is ElementMatch!16203) (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))) (= (c!1138982 (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))) (h!71233 s!2326))))))

(assert (=> d!1971951 (= (derivationStepZipperDown!1451 (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343))))) (ite c!1139259 lt!2354668 (Context!11175 call!531625)) (h!71233 s!2326)) e!3820827)))

(declare-fun b!6283017 () Bool)

(assert (=> b!6283017 (= e!3820825 e!3820823)))

(assert (=> b!6283017 (= c!1139575 ((_ is Concat!25048) (ite c!1139259 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))))))

(declare-fun b!6283018 () Bool)

(assert (=> b!6283018 (= e!3820822 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531828 () Bool)

(assert (=> bm!531828 (= call!531831 call!531833)))

(declare-fun b!6283019 () Bool)

(assert (=> b!6283019 (= e!3820827 (store ((as const (Array Context!11174 Bool)) false) (ite c!1139259 lt!2354668 (Context!11175 call!531625)) true))))

(assert (= (and d!1971951 c!1139573) b!6283019))

(assert (= (and d!1971951 (not c!1139573)) b!6283016))

(assert (= (and b!6283016 c!1139574) b!6283014))

(assert (= (and b!6283016 (not c!1139574)) b!6283015))

(assert (= (and b!6283015 res!2591187) b!6283009))

(assert (= (and b!6283015 c!1139576) b!6283013))

(assert (= (and b!6283015 (not c!1139576)) b!6283017))

(assert (= (and b!6283017 c!1139575) b!6283011))

(assert (= (and b!6283017 (not c!1139575)) b!6283012))

(assert (= (and b!6283012 c!1139577) b!6283010))

(assert (= (and b!6283012 (not c!1139577)) b!6283018))

(assert (= (or b!6283011 b!6283010) bm!531824))

(assert (= (or b!6283011 b!6283010) bm!531823))

(assert (= (or b!6283013 bm!531824) bm!531825))

(assert (= (or b!6283013 bm!531823) bm!531828))

(assert (= (or b!6283014 bm!531828) bm!531826))

(assert (= (or b!6283014 b!6283013) bm!531827))

(declare-fun m!7103934 () Bool)

(assert (=> b!6283009 m!7103934))

(declare-fun m!7103936 () Bool)

(assert (=> bm!531827 m!7103936))

(declare-fun m!7103938 () Bool)

(assert (=> b!6283019 m!7103938))

(declare-fun m!7103940 () Bool)

(assert (=> bm!531826 m!7103940))

(declare-fun m!7103942 () Bool)

(assert (=> bm!531825 m!7103942))

(assert (=> bm!531622 d!1971951))

(declare-fun bs!1569953 () Bool)

(declare-fun b!6283030 () Bool)

(assert (= bs!1569953 (and b!6283030 d!1971375)))

(declare-fun lambda!344695 () Int)

(assert (=> bs!1569953 (not (= lambda!344695 lambda!344605))))

(declare-fun bs!1569954 () Bool)

(assert (= bs!1569954 (and b!6283030 d!1971297)))

(assert (=> bs!1569954 (not (= lambda!344695 lambda!344574))))

(declare-fun bs!1569955 () Bool)

(assert (= bs!1569955 (and b!6283030 b!6281727)))

(assert (=> bs!1569955 (= (and (= (reg!16532 (regOne!32919 lt!2354656)) (reg!16532 lt!2354656)) (= (regOne!32919 lt!2354656) lt!2354656)) (= lambda!344695 lambda!344599))))

(declare-fun bs!1569956 () Bool)

(assert (= bs!1569956 (and b!6283030 b!6280967)))

(assert (=> bs!1569956 (not (= lambda!344695 lambda!344507))))

(declare-fun bs!1569957 () Bool)

(assert (= bs!1569957 (and b!6283030 d!1971295)))

(assert (=> bs!1569957 (not (= lambda!344695 lambda!344568))))

(assert (=> bs!1569954 (not (= lambda!344695 lambda!344573))))

(declare-fun bs!1569958 () Bool)

(assert (= bs!1569958 (and b!6283030 d!1971365)))

(assert (=> bs!1569958 (not (= lambda!344695 lambda!344603))))

(declare-fun bs!1569959 () Bool)

(assert (= bs!1569959 (and b!6283030 b!6281621)))

(assert (=> bs!1569959 (not (= lambda!344695 lambda!344580))))

(declare-fun bs!1569960 () Bool)

(assert (= bs!1569960 (and b!6283030 b!6280970)))

(assert (=> bs!1569960 (not (= lambda!344695 lambda!344510))))

(declare-fun bs!1569961 () Bool)

(assert (= bs!1569961 (and b!6283030 b!6281832)))

(assert (=> bs!1569961 (= (and (= (reg!16532 (regOne!32919 lt!2354656)) (reg!16532 lt!2354652)) (= (regOne!32919 lt!2354656) lt!2354652)) (= lambda!344695 lambda!344607))))

(assert (=> bs!1569960 (not (= lambda!344695 lambda!344511))))

(assert (=> bs!1569956 (not (= lambda!344695 lambda!344508))))

(declare-fun bs!1569962 () Bool)

(assert (= bs!1569962 (and b!6283030 b!6281826)))

(assert (=> bs!1569962 (not (= lambda!344695 lambda!344608))))

(assert (=> bs!1569953 (not (= lambda!344695 lambda!344606))))

(declare-fun bs!1569963 () Bool)

(assert (= bs!1569963 (and b!6283030 b!6281721)))

(assert (=> bs!1569963 (not (= lambda!344695 lambda!344600))))

(declare-fun bs!1569964 () Bool)

(assert (= bs!1569964 (and b!6283030 b!6281627)))

(assert (=> bs!1569964 (= (and (= (reg!16532 (regOne!32919 lt!2354656)) (reg!16532 r!7292)) (= (regOne!32919 lt!2354656) r!7292)) (= lambda!344695 lambda!344579))))

(assert (=> b!6283030 true))

(assert (=> b!6283030 true))

(declare-fun bs!1569965 () Bool)

(declare-fun b!6283024 () Bool)

(assert (= bs!1569965 (and b!6283024 d!1971375)))

(declare-fun lambda!344696 () Int)

(assert (=> bs!1569965 (not (= lambda!344696 lambda!344605))))

(declare-fun bs!1569966 () Bool)

(assert (= bs!1569966 (and b!6283024 d!1971297)))

(assert (=> bs!1569966 (= (and (= (regOne!32918 (regOne!32919 lt!2354656)) (regOne!32918 r!7292)) (= (regTwo!32918 (regOne!32919 lt!2354656)) (regTwo!32918 r!7292))) (= lambda!344696 lambda!344574))))

(declare-fun bs!1569967 () Bool)

(assert (= bs!1569967 (and b!6283024 b!6281727)))

(assert (=> bs!1569967 (not (= lambda!344696 lambda!344599))))

(declare-fun bs!1569968 () Bool)

(assert (= bs!1569968 (and b!6283024 b!6280967)))

(assert (=> bs!1569968 (not (= lambda!344696 lambda!344507))))

(declare-fun bs!1569969 () Bool)

(assert (= bs!1569969 (and b!6283024 d!1971295)))

(assert (=> bs!1569969 (not (= lambda!344696 lambda!344568))))

(assert (=> bs!1569966 (not (= lambda!344696 lambda!344573))))

(declare-fun bs!1569970 () Bool)

(assert (= bs!1569970 (and b!6283024 d!1971365)))

(assert (=> bs!1569970 (not (= lambda!344696 lambda!344603))))

(declare-fun bs!1569971 () Bool)

(assert (= bs!1569971 (and b!6283024 b!6281621)))

(assert (=> bs!1569971 (= (and (= (regOne!32918 (regOne!32919 lt!2354656)) (regOne!32918 r!7292)) (= (regTwo!32918 (regOne!32919 lt!2354656)) (regTwo!32918 r!7292))) (= lambda!344696 lambda!344580))))

(declare-fun bs!1569972 () Bool)

(assert (= bs!1569972 (and b!6283024 b!6280970)))

(assert (=> bs!1569972 (not (= lambda!344696 lambda!344510))))

(declare-fun bs!1569973 () Bool)

(assert (= bs!1569973 (and b!6283024 b!6281832)))

(assert (=> bs!1569973 (not (= lambda!344696 lambda!344607))))

(assert (=> bs!1569972 (= (and (= (regOne!32918 (regOne!32919 lt!2354656)) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 (regOne!32919 lt!2354656)) lt!2354652)) (= lambda!344696 lambda!344511))))

(assert (=> bs!1569968 (= (and (= (regOne!32918 (regOne!32919 lt!2354656)) (regOne!32918 r!7292)) (= (regTwo!32918 (regOne!32919 lt!2354656)) (regTwo!32918 r!7292))) (= lambda!344696 lambda!344508))))

(declare-fun bs!1569974 () Bool)

(assert (= bs!1569974 (and b!6283024 b!6281826)))

(assert (=> bs!1569974 (= (and (= (regOne!32918 (regOne!32919 lt!2354656)) (regOne!32918 lt!2354652)) (= (regTwo!32918 (regOne!32919 lt!2354656)) (regTwo!32918 lt!2354652))) (= lambda!344696 lambda!344608))))

(assert (=> bs!1569965 (= (and (= (regOne!32918 (regOne!32919 lt!2354656)) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 (regOne!32919 lt!2354656)) lt!2354652)) (= lambda!344696 lambda!344606))))

(declare-fun bs!1569975 () Bool)

(assert (= bs!1569975 (and b!6283024 b!6281721)))

(assert (=> bs!1569975 (= (and (= (regOne!32918 (regOne!32919 lt!2354656)) (regOne!32918 lt!2354656)) (= (regTwo!32918 (regOne!32919 lt!2354656)) (regTwo!32918 lt!2354656))) (= lambda!344696 lambda!344600))))

(declare-fun bs!1569976 () Bool)

(assert (= bs!1569976 (and b!6283024 b!6283030)))

(assert (=> bs!1569976 (not (= lambda!344696 lambda!344695))))

(declare-fun bs!1569977 () Bool)

(assert (= bs!1569977 (and b!6283024 b!6281627)))

(assert (=> bs!1569977 (not (= lambda!344696 lambda!344579))))

(assert (=> b!6283024 true))

(assert (=> b!6283024 true))

(declare-fun b!6283020 () Bool)

(declare-fun e!3820833 () Bool)

(declare-fun e!3820828 () Bool)

(assert (=> b!6283020 (= e!3820833 e!3820828)))

(declare-fun c!1139578 () Bool)

(assert (=> b!6283020 (= c!1139578 ((_ is Star!16203) (regOne!32919 lt!2354656)))))

(declare-fun b!6283021 () Bool)

(declare-fun e!3820832 () Bool)

(assert (=> b!6283021 (= e!3820833 e!3820832)))

(declare-fun res!2591190 () Bool)

(assert (=> b!6283021 (= res!2591190 (matchRSpec!3304 (regOne!32919 (regOne!32919 lt!2354656)) s!2326))))

(assert (=> b!6283021 (=> res!2591190 e!3820832)))

(declare-fun b!6283022 () Bool)

(declare-fun e!3820830 () Bool)

(declare-fun call!531835 () Bool)

(assert (=> b!6283022 (= e!3820830 call!531835)))

(declare-fun d!1971953 () Bool)

(declare-fun c!1139581 () Bool)

(assert (=> d!1971953 (= c!1139581 ((_ is EmptyExpr!16203) (regOne!32919 lt!2354656)))))

(assert (=> d!1971953 (= (matchRSpec!3304 (regOne!32919 lt!2354656) s!2326) e!3820830)))

(declare-fun b!6283023 () Bool)

(assert (=> b!6283023 (= e!3820832 (matchRSpec!3304 (regTwo!32919 (regOne!32919 lt!2354656)) s!2326))))

(declare-fun call!531834 () Bool)

(assert (=> b!6283024 (= e!3820828 call!531834)))

(declare-fun b!6283025 () Bool)

(declare-fun e!3820829 () Bool)

(assert (=> b!6283025 (= e!3820829 (= s!2326 (Cons!64785 (c!1138982 (regOne!32919 lt!2354656)) Nil!64785)))))

(declare-fun b!6283026 () Bool)

(declare-fun e!3820834 () Bool)

(assert (=> b!6283026 (= e!3820830 e!3820834)))

(declare-fun res!2591188 () Bool)

(assert (=> b!6283026 (= res!2591188 (not ((_ is EmptyLang!16203) (regOne!32919 lt!2354656))))))

(assert (=> b!6283026 (=> (not res!2591188) (not e!3820834))))

(declare-fun b!6283027 () Bool)

(declare-fun res!2591189 () Bool)

(declare-fun e!3820831 () Bool)

(assert (=> b!6283027 (=> res!2591189 e!3820831)))

(assert (=> b!6283027 (= res!2591189 call!531835)))

(assert (=> b!6283027 (= e!3820828 e!3820831)))

(declare-fun bm!531829 () Bool)

(assert (=> bm!531829 (= call!531835 (isEmpty!36834 s!2326))))

(declare-fun b!6283028 () Bool)

(declare-fun c!1139579 () Bool)

(assert (=> b!6283028 (= c!1139579 ((_ is Union!16203) (regOne!32919 lt!2354656)))))

(assert (=> b!6283028 (= e!3820829 e!3820833)))

(declare-fun b!6283029 () Bool)

(declare-fun c!1139580 () Bool)

(assert (=> b!6283029 (= c!1139580 ((_ is ElementMatch!16203) (regOne!32919 lt!2354656)))))

(assert (=> b!6283029 (= e!3820834 e!3820829)))

(assert (=> b!6283030 (= e!3820831 call!531834)))

(declare-fun bm!531830 () Bool)

(assert (=> bm!531830 (= call!531834 (Exists!3273 (ite c!1139578 lambda!344695 lambda!344696)))))

(assert (= (and d!1971953 c!1139581) b!6283022))

(assert (= (and d!1971953 (not c!1139581)) b!6283026))

(assert (= (and b!6283026 res!2591188) b!6283029))

(assert (= (and b!6283029 c!1139580) b!6283025))

(assert (= (and b!6283029 (not c!1139580)) b!6283028))

(assert (= (and b!6283028 c!1139579) b!6283021))

(assert (= (and b!6283028 (not c!1139579)) b!6283020))

(assert (= (and b!6283021 (not res!2591190)) b!6283023))

(assert (= (and b!6283020 c!1139578) b!6283027))

(assert (= (and b!6283020 (not c!1139578)) b!6283024))

(assert (= (and b!6283027 (not res!2591189)) b!6283030))

(assert (= (or b!6283030 b!6283024) bm!531830))

(assert (= (or b!6283022 b!6283027) bm!531829))

(declare-fun m!7103944 () Bool)

(assert (=> b!6283021 m!7103944))

(declare-fun m!7103946 () Bool)

(assert (=> b!6283023 m!7103946))

(assert (=> bm!531829 m!7102600))

(declare-fun m!7103948 () Bool)

(assert (=> bm!531830 m!7103948))

(assert (=> b!6281718 d!1971953))

(declare-fun d!1971955 () Bool)

(assert (=> d!1971955 (= (nullable!6196 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (nullableFct!2147 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))))))

(declare-fun bs!1569978 () Bool)

(assert (= bs!1569978 d!1971955))

(declare-fun m!7103950 () Bool)

(assert (=> bs!1569978 m!7103950))

(assert (=> b!6281887 d!1971955))

(declare-fun d!1971957 () Bool)

(assert (=> d!1971957 (= (isEmptyExpr!1609 lt!2354825) ((_ is EmptyExpr!16203) lt!2354825))))

(assert (=> b!6281796 d!1971957))

(assert (=> d!1971381 d!1971931))

(declare-fun bm!531831 () Bool)

(declare-fun call!531836 () (InoxSet Context!11174))

(assert (=> bm!531831 (= call!531836 (derivationStepZipperDown!1451 (h!71232 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354667))))) (Context!11175 (t!378468 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354667)))))) (h!71233 s!2326)))))

(declare-fun b!6283031 () Bool)

(declare-fun e!3820836 () (InoxSet Context!11174))

(assert (=> b!6283031 (= e!3820836 ((as const (Array Context!11174 Bool)) false))))

(declare-fun b!6283032 () Bool)

(declare-fun e!3820837 () (InoxSet Context!11174))

(assert (=> b!6283032 (= e!3820837 e!3820836)))

(declare-fun c!1139583 () Bool)

(assert (=> b!6283032 (= c!1139583 ((_ is Cons!64784) (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354667))))))))

(declare-fun b!6283033 () Bool)

(assert (=> b!6283033 (= e!3820837 ((_ map or) call!531836 (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354667)))))) (h!71233 s!2326))))))

(declare-fun d!1971959 () Bool)

(declare-fun c!1139582 () Bool)

(declare-fun e!3820835 () Bool)

(assert (=> d!1971959 (= c!1139582 e!3820835)))

(declare-fun res!2591191 () Bool)

(assert (=> d!1971959 (=> (not res!2591191) (not e!3820835))))

(assert (=> d!1971959 (= res!2591191 ((_ is Cons!64784) (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354667))))))))

(assert (=> d!1971959 (= (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 lt!2354667))) (h!71233 s!2326)) e!3820837)))

(declare-fun b!6283034 () Bool)

(assert (=> b!6283034 (= e!3820835 (nullable!6196 (h!71232 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354667)))))))))

(declare-fun b!6283035 () Bool)

(assert (=> b!6283035 (= e!3820836 call!531836)))

(assert (= (and d!1971959 res!2591191) b!6283034))

(assert (= (and d!1971959 c!1139582) b!6283033))

(assert (= (and d!1971959 (not c!1139582)) b!6283032))

(assert (= (and b!6283032 c!1139583) b!6283035))

(assert (= (and b!6283032 (not c!1139583)) b!6283031))

(assert (= (or b!6283033 b!6283035) bm!531831))

(declare-fun m!7103952 () Bool)

(assert (=> bm!531831 m!7103952))

(declare-fun m!7103954 () Bool)

(assert (=> b!6283033 m!7103954))

(declare-fun m!7103956 () Bool)

(assert (=> b!6283034 m!7103956))

(assert (=> b!6281575 d!1971959))

(declare-fun d!1971961 () Bool)

(assert (=> d!1971961 (= (isEmpty!36830 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343))))) ((_ is Nil!64784) (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343))))))))

(assert (=> b!6281807 d!1971961))

(declare-fun d!1971963 () Bool)

(declare-fun c!1139584 () Bool)

(assert (=> d!1971963 (= c!1139584 (isEmpty!36834 (tail!11991 (t!378469 s!2326))))))

(declare-fun e!3820838 () Bool)

(assert (=> d!1971963 (= (matchZipper!2215 (derivationStepZipper!2169 lt!2354634 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))) e!3820838)))

(declare-fun b!6283036 () Bool)

(assert (=> b!6283036 (= e!3820838 (nullableZipper!1973 (derivationStepZipper!2169 lt!2354634 (head!12906 (t!378469 s!2326)))))))

(declare-fun b!6283037 () Bool)

(assert (=> b!6283037 (= e!3820838 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354634 (head!12906 (t!378469 s!2326))) (head!12906 (tail!11991 (t!378469 s!2326)))) (tail!11991 (tail!11991 (t!378469 s!2326)))))))

(assert (= (and d!1971963 c!1139584) b!6283036))

(assert (= (and d!1971963 (not c!1139584)) b!6283037))

(assert (=> d!1971963 m!7102540))

(declare-fun m!7103958 () Bool)

(assert (=> d!1971963 m!7103958))

(assert (=> b!6283036 m!7102940))

(declare-fun m!7103960 () Bool)

(assert (=> b!6283036 m!7103960))

(assert (=> b!6283037 m!7102540))

(declare-fun m!7103962 () Bool)

(assert (=> b!6283037 m!7103962))

(assert (=> b!6283037 m!7102940))

(assert (=> b!6283037 m!7103962))

(declare-fun m!7103964 () Bool)

(assert (=> b!6283037 m!7103964))

(assert (=> b!6283037 m!7102540))

(declare-fun m!7103966 () Bool)

(assert (=> b!6283037 m!7103966))

(assert (=> b!6283037 m!7103964))

(assert (=> b!6283037 m!7103966))

(declare-fun m!7103968 () Bool)

(assert (=> b!6283037 m!7103968))

(assert (=> b!6281975 d!1971963))

(declare-fun bs!1569979 () Bool)

(declare-fun d!1971965 () Bool)

(assert (= bs!1569979 (and d!1971965 b!6280977)))

(declare-fun lambda!344697 () Int)

(assert (=> bs!1569979 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344697 lambda!344509))))

(declare-fun bs!1569980 () Bool)

(assert (= bs!1569980 (and d!1971965 d!1971409)))

(assert (=> bs!1569980 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344697 lambda!344611))))

(declare-fun bs!1569981 () Bool)

(assert (= bs!1569981 (and d!1971965 d!1971429)))

(assert (=> bs!1569981 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344697 lambda!344613))))

(assert (=> d!1971965 true))

(assert (=> d!1971965 (= (derivationStepZipper!2169 lt!2354634 (head!12906 (t!378469 s!2326))) (flatMap!1708 lt!2354634 lambda!344697))))

(declare-fun bs!1569982 () Bool)

(assert (= bs!1569982 d!1971965))

(declare-fun m!7103970 () Bool)

(assert (=> bs!1569982 m!7103970))

(assert (=> b!6281975 d!1971965))

(declare-fun d!1971967 () Bool)

(assert (=> d!1971967 (= (head!12906 (t!378469 s!2326)) (h!71233 (t!378469 s!2326)))))

(assert (=> b!6281975 d!1971967))

(declare-fun d!1971969 () Bool)

(assert (=> d!1971969 (= (tail!11991 (t!378469 s!2326)) (t!378469 (t!378469 s!2326)))))

(assert (=> b!6281975 d!1971969))

(assert (=> b!6281657 d!1971939))

(declare-fun d!1971971 () Bool)

(assert (=> d!1971971 (= (head!12907 (exprs!6087 (h!71234 zl!343))) (h!71232 (exprs!6087 (h!71234 zl!343))))))

(assert (=> b!6281712 d!1971971))

(declare-fun d!1971973 () Bool)

(assert (=> d!1971973 (= (nullable!6196 lt!2354652) (nullableFct!2147 lt!2354652))))

(declare-fun bs!1569983 () Bool)

(assert (= bs!1569983 d!1971973))

(declare-fun m!7103972 () Bool)

(assert (=> bs!1569983 m!7103972))

(assert (=> b!6281820 d!1971973))

(declare-fun d!1971975 () Bool)

(declare-fun lt!2354925 () Int)

(assert (=> d!1971975 (> lt!2354925 0)))

(declare-fun e!3820849 () Int)

(assert (=> d!1971975 (= lt!2354925 e!3820849)))

(declare-fun c!1139594 () Bool)

(assert (=> d!1971975 (= c!1139594 ((_ is ElementMatch!16203) (h!71232 (exprs!6087 lt!2354638))))))

(assert (=> d!1971975 (= (regexDepthTotal!178 (h!71232 (exprs!6087 lt!2354638))) lt!2354925)))

(declare-fun b!6283054 () Bool)

(declare-fun e!3820847 () Int)

(declare-fun call!531845 () Int)

(declare-fun call!531843 () Int)

(assert (=> b!6283054 (= e!3820847 (+ 1 call!531845 call!531843))))

(declare-fun b!6283055 () Bool)

(declare-fun e!3820848 () Int)

(assert (=> b!6283055 (= e!3820848 e!3820847)))

(declare-fun c!1139593 () Bool)

(assert (=> b!6283055 (= c!1139593 ((_ is Concat!25048) (h!71232 (exprs!6087 lt!2354638))))))

(declare-fun b!6283056 () Bool)

(declare-fun e!3820850 () Int)

(declare-fun call!531844 () Int)

(assert (=> b!6283056 (= e!3820850 (+ 1 call!531844))))

(declare-fun bm!531838 () Bool)

(assert (=> bm!531838 (= call!531845 call!531844)))

(declare-fun b!6283057 () Bool)

(assert (=> b!6283057 (= e!3820849 e!3820850)))

(declare-fun c!1139595 () Bool)

(assert (=> b!6283057 (= c!1139595 ((_ is Star!16203) (h!71232 (exprs!6087 lt!2354638))))))

(declare-fun c!1139596 () Bool)

(declare-fun bm!531839 () Bool)

(assert (=> bm!531839 (= call!531844 (regexDepthTotal!178 (ite c!1139595 (reg!16532 (h!71232 (exprs!6087 lt!2354638))) (ite c!1139596 (regOne!32919 (h!71232 (exprs!6087 lt!2354638))) (regOne!32918 (h!71232 (exprs!6087 lt!2354638)))))))))

(declare-fun b!6283058 () Bool)

(assert (=> b!6283058 (= e!3820849 1)))

(declare-fun bm!531840 () Bool)

(assert (=> bm!531840 (= call!531843 (regexDepthTotal!178 (ite c!1139596 (regTwo!32919 (h!71232 (exprs!6087 lt!2354638))) (regTwo!32918 (h!71232 (exprs!6087 lt!2354638))))))))

(declare-fun b!6283059 () Bool)

(assert (=> b!6283059 (= e!3820848 (+ 1 call!531845 call!531843))))

(declare-fun b!6283060 () Bool)

(assert (=> b!6283060 (= c!1139596 ((_ is Union!16203) (h!71232 (exprs!6087 lt!2354638))))))

(assert (=> b!6283060 (= e!3820850 e!3820848)))

(declare-fun b!6283061 () Bool)

(assert (=> b!6283061 (= e!3820847 1)))

(assert (= (and d!1971975 c!1139594) b!6283058))

(assert (= (and d!1971975 (not c!1139594)) b!6283057))

(assert (= (and b!6283057 c!1139595) b!6283056))

(assert (= (and b!6283057 (not c!1139595)) b!6283060))

(assert (= (and b!6283060 c!1139596) b!6283059))

(assert (= (and b!6283060 (not c!1139596)) b!6283055))

(assert (= (and b!6283055 c!1139593) b!6283054))

(assert (= (and b!6283055 (not c!1139593)) b!6283061))

(assert (= (or b!6283059 b!6283054) bm!531840))

(assert (= (or b!6283059 b!6283054) bm!531838))

(assert (= (or b!6283056 bm!531838) bm!531839))

(declare-fun m!7103974 () Bool)

(assert (=> bm!531839 m!7103974))

(declare-fun m!7103976 () Bool)

(assert (=> bm!531840 m!7103976))

(assert (=> b!6281980 d!1971975))

(declare-fun d!1971977 () Bool)

(declare-fun lt!2354926 () Int)

(assert (=> d!1971977 (>= lt!2354926 0)))

(declare-fun e!3820851 () Int)

(assert (=> d!1971977 (= lt!2354926 e!3820851)))

(declare-fun c!1139597 () Bool)

(assert (=> d!1971977 (= c!1139597 ((_ is Cons!64784) (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354638))))))))

(assert (=> d!1971977 (= (contextDepthTotal!326 (Context!11175 (t!378468 (exprs!6087 lt!2354638)))) lt!2354926)))

(declare-fun b!6283062 () Bool)

(assert (=> b!6283062 (= e!3820851 (+ (regexDepthTotal!178 (h!71232 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354638)))))) (contextDepthTotal!326 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354638)))))))))))

(declare-fun b!6283063 () Bool)

(assert (=> b!6283063 (= e!3820851 1)))

(assert (= (and d!1971977 c!1139597) b!6283062))

(assert (= (and d!1971977 (not c!1139597)) b!6283063))

(declare-fun m!7103978 () Bool)

(assert (=> b!6283062 m!7103978))

(declare-fun m!7103980 () Bool)

(assert (=> b!6283062 m!7103980))

(assert (=> b!6281980 d!1971977))

(declare-fun b!6283078 () Bool)

(declare-fun e!3820866 () Bool)

(declare-fun call!531850 () Bool)

(assert (=> b!6283078 (= e!3820866 call!531850)))

(declare-fun b!6283079 () Bool)

(declare-fun e!3820869 () Bool)

(declare-fun e!3820865 () Bool)

(assert (=> b!6283079 (= e!3820869 e!3820865)))

(declare-fun res!2591203 () Bool)

(assert (=> b!6283079 (=> (not res!2591203) (not e!3820865))))

(assert (=> b!6283079 (= res!2591203 (and (not ((_ is EmptyLang!16203) (h!71232 (exprs!6087 (h!71234 zl!343))))) (not ((_ is ElementMatch!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))))))))

(declare-fun b!6283080 () Bool)

(declare-fun e!3820864 () Bool)

(assert (=> b!6283080 (= e!3820864 e!3820866)))

(declare-fun res!2591206 () Bool)

(declare-fun call!531851 () Bool)

(assert (=> b!6283080 (= res!2591206 call!531851)))

(assert (=> b!6283080 (=> res!2591206 e!3820866)))

(declare-fun b!6283081 () Bool)

(declare-fun e!3820868 () Bool)

(assert (=> b!6283081 (= e!3820864 e!3820868)))

(declare-fun res!2591204 () Bool)

(assert (=> b!6283081 (= res!2591204 call!531851)))

(assert (=> b!6283081 (=> (not res!2591204) (not e!3820868))))

(declare-fun d!1971979 () Bool)

(declare-fun res!2591202 () Bool)

(assert (=> d!1971979 (=> res!2591202 e!3820869)))

(assert (=> d!1971979 (= res!2591202 ((_ is EmptyExpr!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> d!1971979 (= (nullableFct!2147 (h!71232 (exprs!6087 (h!71234 zl!343)))) e!3820869)))

(declare-fun b!6283082 () Bool)

(declare-fun e!3820867 () Bool)

(assert (=> b!6283082 (= e!3820865 e!3820867)))

(declare-fun res!2591205 () Bool)

(assert (=> b!6283082 (=> res!2591205 e!3820867)))

(assert (=> b!6283082 (= res!2591205 ((_ is Star!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6283083 () Bool)

(assert (=> b!6283083 (= e!3820867 e!3820864)))

(declare-fun c!1139600 () Bool)

(assert (=> b!6283083 (= c!1139600 ((_ is Union!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun bm!531845 () Bool)

(assert (=> bm!531845 (= call!531851 (nullable!6196 (ite c!1139600 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))))))

(declare-fun b!6283084 () Bool)

(assert (=> b!6283084 (= e!3820868 call!531850)))

(declare-fun bm!531846 () Bool)

(assert (=> bm!531846 (= call!531850 (nullable!6196 (ite c!1139600 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))))))

(assert (= (and d!1971979 (not res!2591202)) b!6283079))

(assert (= (and b!6283079 res!2591203) b!6283082))

(assert (= (and b!6283082 (not res!2591205)) b!6283083))

(assert (= (and b!6283083 c!1139600) b!6283080))

(assert (= (and b!6283083 (not c!1139600)) b!6283081))

(assert (= (and b!6283080 (not res!2591206)) b!6283078))

(assert (= (and b!6283081 res!2591204) b!6283084))

(assert (= (or b!6283078 b!6283084) bm!531846))

(assert (= (or b!6283080 b!6283081) bm!531845))

(declare-fun m!7103982 () Bool)

(assert (=> bm!531845 m!7103982))

(declare-fun m!7103984 () Bool)

(assert (=> bm!531846 m!7103984))

(assert (=> d!1971393 d!1971979))

(declare-fun b!6283085 () Bool)

(declare-fun e!3820873 () Bool)

(declare-fun e!3820871 () Bool)

(assert (=> b!6283085 (= e!3820873 e!3820871)))

(declare-fun res!2591209 () Bool)

(assert (=> b!6283085 (=> res!2591209 e!3820871)))

(declare-fun call!531852 () Bool)

(assert (=> b!6283085 (= res!2591209 call!531852)))

(declare-fun b!6283086 () Bool)

(declare-fun e!3820872 () Bool)

(assert (=> b!6283086 (= e!3820872 (= (head!12906 (_1!36485 (get!22393 lt!2354770))) (c!1138982 (regOne!32918 r!7292))))))

(declare-fun b!6283087 () Bool)

(declare-fun res!2591212 () Bool)

(assert (=> b!6283087 (=> res!2591212 e!3820871)))

(assert (=> b!6283087 (= res!2591212 (not (isEmpty!36834 (tail!11991 (_1!36485 (get!22393 lt!2354770))))))))

(declare-fun b!6283089 () Bool)

(assert (=> b!6283089 (= e!3820871 (not (= (head!12906 (_1!36485 (get!22393 lt!2354770))) (c!1138982 (regOne!32918 r!7292)))))))

(declare-fun b!6283090 () Bool)

(declare-fun e!3820870 () Bool)

(declare-fun lt!2354927 () Bool)

(assert (=> b!6283090 (= e!3820870 (not lt!2354927))))

(declare-fun b!6283091 () Bool)

(declare-fun e!3820876 () Bool)

(assert (=> b!6283091 (= e!3820876 e!3820870)))

(declare-fun c!1139601 () Bool)

(assert (=> b!6283091 (= c!1139601 ((_ is EmptyLang!16203) (regOne!32918 r!7292)))))

(declare-fun bm!531847 () Bool)

(assert (=> bm!531847 (= call!531852 (isEmpty!36834 (_1!36485 (get!22393 lt!2354770))))))

(declare-fun b!6283092 () Bool)

(declare-fun res!2591214 () Bool)

(assert (=> b!6283092 (=> (not res!2591214) (not e!3820872))))

(assert (=> b!6283092 (= res!2591214 (not call!531852))))

(declare-fun b!6283093 () Bool)

(declare-fun e!3820875 () Bool)

(assert (=> b!6283093 (= e!3820875 (matchR!8386 (derivativeStep!4912 (regOne!32918 r!7292) (head!12906 (_1!36485 (get!22393 lt!2354770)))) (tail!11991 (_1!36485 (get!22393 lt!2354770)))))))

(declare-fun b!6283094 () Bool)

(declare-fun e!3820874 () Bool)

(assert (=> b!6283094 (= e!3820874 e!3820873)))

(declare-fun res!2591211 () Bool)

(assert (=> b!6283094 (=> (not res!2591211) (not e!3820873))))

(assert (=> b!6283094 (= res!2591211 (not lt!2354927))))

(declare-fun b!6283088 () Bool)

(declare-fun res!2591210 () Bool)

(assert (=> b!6283088 (=> (not res!2591210) (not e!3820872))))

(assert (=> b!6283088 (= res!2591210 (isEmpty!36834 (tail!11991 (_1!36485 (get!22393 lt!2354770)))))))

(declare-fun d!1971981 () Bool)

(assert (=> d!1971981 e!3820876))

(declare-fun c!1139602 () Bool)

(assert (=> d!1971981 (= c!1139602 ((_ is EmptyExpr!16203) (regOne!32918 r!7292)))))

(assert (=> d!1971981 (= lt!2354927 e!3820875)))

(declare-fun c!1139603 () Bool)

(assert (=> d!1971981 (= c!1139603 (isEmpty!36834 (_1!36485 (get!22393 lt!2354770))))))

(assert (=> d!1971981 (validRegex!7939 (regOne!32918 r!7292))))

(assert (=> d!1971981 (= (matchR!8386 (regOne!32918 r!7292) (_1!36485 (get!22393 lt!2354770))) lt!2354927)))

(declare-fun b!6283095 () Bool)

(declare-fun res!2591208 () Bool)

(assert (=> b!6283095 (=> res!2591208 e!3820874)))

(assert (=> b!6283095 (= res!2591208 (not ((_ is ElementMatch!16203) (regOne!32918 r!7292))))))

(assert (=> b!6283095 (= e!3820870 e!3820874)))

(declare-fun b!6283096 () Bool)

(assert (=> b!6283096 (= e!3820876 (= lt!2354927 call!531852))))

(declare-fun b!6283097 () Bool)

(assert (=> b!6283097 (= e!3820875 (nullable!6196 (regOne!32918 r!7292)))))

(declare-fun b!6283098 () Bool)

(declare-fun res!2591213 () Bool)

(assert (=> b!6283098 (=> res!2591213 e!3820874)))

(assert (=> b!6283098 (= res!2591213 e!3820872)))

(declare-fun res!2591207 () Bool)

(assert (=> b!6283098 (=> (not res!2591207) (not e!3820872))))

(assert (=> b!6283098 (= res!2591207 lt!2354927)))

(assert (= (and d!1971981 c!1139603) b!6283097))

(assert (= (and d!1971981 (not c!1139603)) b!6283093))

(assert (= (and d!1971981 c!1139602) b!6283096))

(assert (= (and d!1971981 (not c!1139602)) b!6283091))

(assert (= (and b!6283091 c!1139601) b!6283090))

(assert (= (and b!6283091 (not c!1139601)) b!6283095))

(assert (= (and b!6283095 (not res!2591208)) b!6283098))

(assert (= (and b!6283098 res!2591207) b!6283092))

(assert (= (and b!6283092 res!2591214) b!6283088))

(assert (= (and b!6283088 res!2591210) b!6283086))

(assert (= (and b!6283098 (not res!2591213)) b!6283094))

(assert (= (and b!6283094 res!2591211) b!6283085))

(assert (= (and b!6283085 (not res!2591209)) b!6283087))

(assert (= (and b!6283087 (not res!2591212)) b!6283089))

(assert (= (or b!6283096 b!6283085 b!6283092) bm!531847))

(declare-fun m!7103986 () Bool)

(assert (=> bm!531847 m!7103986))

(declare-fun m!7103988 () Bool)

(assert (=> b!6283089 m!7103988))

(assert (=> d!1971981 m!7103986))

(assert (=> d!1971981 m!7102498))

(declare-fun m!7103990 () Bool)

(assert (=> b!6283087 m!7103990))

(assert (=> b!6283087 m!7103990))

(declare-fun m!7103992 () Bool)

(assert (=> b!6283087 m!7103992))

(declare-fun m!7103994 () Bool)

(assert (=> b!6283097 m!7103994))

(assert (=> b!6283086 m!7103988))

(assert (=> b!6283093 m!7103988))

(assert (=> b!6283093 m!7103988))

(declare-fun m!7103996 () Bool)

(assert (=> b!6283093 m!7103996))

(assert (=> b!6283093 m!7103990))

(assert (=> b!6283093 m!7103996))

(assert (=> b!6283093 m!7103990))

(declare-fun m!7103998 () Bool)

(assert (=> b!6283093 m!7103998))

(assert (=> b!6283088 m!7103990))

(assert (=> b!6283088 m!7103990))

(assert (=> b!6283088 m!7103992))

(assert (=> b!6281537 d!1971981))

(declare-fun d!1971983 () Bool)

(assert (=> d!1971983 (= (get!22393 lt!2354770) (v!52248 lt!2354770))))

(assert (=> b!6281537 d!1971983))

(declare-fun bm!531848 () Bool)

(declare-fun call!531853 () (InoxSet Context!11174))

(assert (=> bm!531848 (= call!531853 (derivationStepZipperDown!1451 (h!71232 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))))) (Context!11175 (t!378468 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343))))))) (h!71233 s!2326)))))

(declare-fun b!6283099 () Bool)

(declare-fun e!3820878 () (InoxSet Context!11174))

(assert (=> b!6283099 (= e!3820878 ((as const (Array Context!11174 Bool)) false))))

(declare-fun b!6283100 () Bool)

(declare-fun e!3820879 () (InoxSet Context!11174))

(assert (=> b!6283100 (= e!3820879 e!3820878)))

(declare-fun c!1139605 () Bool)

(assert (=> b!6283100 (= c!1139605 ((_ is Cons!64784) (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))))))))

(declare-fun b!6283101 () Bool)

(assert (=> b!6283101 (= e!3820879 ((_ map or) call!531853 (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343))))))) (h!71233 s!2326))))))

(declare-fun d!1971985 () Bool)

(declare-fun c!1139604 () Bool)

(declare-fun e!3820877 () Bool)

(assert (=> d!1971985 (= c!1139604 e!3820877)))

(declare-fun res!2591215 () Bool)

(assert (=> d!1971985 (=> (not res!2591215) (not e!3820877))))

(assert (=> d!1971985 (= res!2591215 ((_ is Cons!64784) (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))))))))

(assert (=> d!1971985 (= (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))) (h!71233 s!2326)) e!3820879)))

(declare-fun b!6283102 () Bool)

(assert (=> b!6283102 (= e!3820877 (nullable!6196 (h!71232 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343))))))))))

(declare-fun b!6283103 () Bool)

(assert (=> b!6283103 (= e!3820878 call!531853)))

(assert (= (and d!1971985 res!2591215) b!6283102))

(assert (= (and d!1971985 c!1139604) b!6283101))

(assert (= (and d!1971985 (not c!1139604)) b!6283100))

(assert (= (and b!6283100 c!1139605) b!6283103))

(assert (= (and b!6283100 (not c!1139605)) b!6283099))

(assert (= (or b!6283101 b!6283103) bm!531848))

(declare-fun m!7104000 () Bool)

(assert (=> bm!531848 m!7104000))

(declare-fun m!7104002 () Bool)

(assert (=> b!6283101 m!7104002))

(declare-fun m!7104004 () Bool)

(assert (=> b!6283102 m!7104004))

(assert (=> b!6281891 d!1971985))

(assert (=> b!6281728 d!1971371))

(declare-fun d!1971987 () Bool)

(declare-fun lt!2354928 () Int)

(assert (=> d!1971987 (>= lt!2354928 0)))

(declare-fun e!3820880 () Int)

(assert (=> d!1971987 (= lt!2354928 e!3820880)))

(declare-fun c!1139606 () Bool)

(assert (=> d!1971987 (= c!1139606 ((_ is Cons!64784) (exprs!6087 (h!71234 lt!2354647))))))

(assert (=> d!1971987 (= (contextDepthTotal!326 (h!71234 lt!2354647)) lt!2354928)))

(declare-fun b!6283104 () Bool)

(assert (=> b!6283104 (= e!3820880 (+ (regexDepthTotal!178 (h!71232 (exprs!6087 (h!71234 lt!2354647)))) (contextDepthTotal!326 (Context!11175 (t!378468 (exprs!6087 (h!71234 lt!2354647)))))))))

(declare-fun b!6283105 () Bool)

(assert (=> b!6283105 (= e!3820880 1)))

(assert (= (and d!1971987 c!1139606) b!6283104))

(assert (= (and d!1971987 (not c!1139606)) b!6283105))

(declare-fun m!7104006 () Bool)

(assert (=> b!6283104 m!7104006))

(declare-fun m!7104008 () Bool)

(assert (=> b!6283104 m!7104008))

(assert (=> b!6281898 d!1971987))

(declare-fun d!1971989 () Bool)

(declare-fun lt!2354929 () Int)

(assert (=> d!1971989 (>= lt!2354929 0)))

(declare-fun e!3820881 () Int)

(assert (=> d!1971989 (= lt!2354929 e!3820881)))

(declare-fun c!1139607 () Bool)

(assert (=> d!1971989 (= c!1139607 ((_ is Cons!64786) (t!378470 lt!2354647)))))

(assert (=> d!1971989 (= (zipperDepthTotal!356 (t!378470 lt!2354647)) lt!2354929)))

(declare-fun b!6283106 () Bool)

(assert (=> b!6283106 (= e!3820881 (+ (contextDepthTotal!326 (h!71234 (t!378470 lt!2354647))) (zipperDepthTotal!356 (t!378470 (t!378470 lt!2354647)))))))

(declare-fun b!6283107 () Bool)

(assert (=> b!6283107 (= e!3820881 0)))

(assert (= (and d!1971989 c!1139607) b!6283106))

(assert (= (and d!1971989 (not c!1139607)) b!6283107))

(declare-fun m!7104010 () Bool)

(assert (=> b!6283106 m!7104010))

(declare-fun m!7104012 () Bool)

(assert (=> b!6283106 m!7104012))

(assert (=> b!6281898 d!1971989))

(declare-fun bm!531849 () Bool)

(declare-fun call!531855 () Bool)

(declare-fun call!531856 () Bool)

(assert (=> bm!531849 (= call!531855 call!531856)))

(declare-fun b!6283108 () Bool)

(declare-fun res!2591219 () Bool)

(declare-fun e!3820884 () Bool)

(assert (=> b!6283108 (=> res!2591219 e!3820884)))

(assert (=> b!6283108 (= res!2591219 (not ((_ is Concat!25048) (ite c!1139246 (regOne!32919 r!7292) (regOne!32918 r!7292)))))))

(declare-fun e!3820888 () Bool)

(assert (=> b!6283108 (= e!3820888 e!3820884)))

(declare-fun b!6283109 () Bool)

(declare-fun res!2591216 () Bool)

(declare-fun e!3820883 () Bool)

(assert (=> b!6283109 (=> (not res!2591216) (not e!3820883))))

(declare-fun call!531854 () Bool)

(assert (=> b!6283109 (= res!2591216 call!531854)))

(assert (=> b!6283109 (= e!3820888 e!3820883)))

(declare-fun b!6283110 () Bool)

(declare-fun e!3820885 () Bool)

(assert (=> b!6283110 (= e!3820885 call!531856)))

(declare-fun b!6283111 () Bool)

(assert (=> b!6283111 (= e!3820883 call!531855)))

(declare-fun b!6283112 () Bool)

(declare-fun e!3820886 () Bool)

(declare-fun e!3820887 () Bool)

(assert (=> b!6283112 (= e!3820886 e!3820887)))

(declare-fun c!1139609 () Bool)

(assert (=> b!6283112 (= c!1139609 ((_ is Star!16203) (ite c!1139246 (regOne!32919 r!7292) (regOne!32918 r!7292))))))

(declare-fun b!6283113 () Bool)

(assert (=> b!6283113 (= e!3820887 e!3820888)))

(declare-fun c!1139608 () Bool)

(assert (=> b!6283113 (= c!1139608 ((_ is Union!16203) (ite c!1139246 (regOne!32919 r!7292) (regOne!32918 r!7292))))))

(declare-fun bm!531850 () Bool)

(assert (=> bm!531850 (= call!531854 (validRegex!7939 (ite c!1139608 (regOne!32919 (ite c!1139246 (regOne!32919 r!7292) (regOne!32918 r!7292))) (regOne!32918 (ite c!1139246 (regOne!32919 r!7292) (regOne!32918 r!7292))))))))

(declare-fun b!6283115 () Bool)

(assert (=> b!6283115 (= e!3820887 e!3820885)))

(declare-fun res!2591217 () Bool)

(assert (=> b!6283115 (= res!2591217 (not (nullable!6196 (reg!16532 (ite c!1139246 (regOne!32919 r!7292) (regOne!32918 r!7292))))))))

(assert (=> b!6283115 (=> (not res!2591217) (not e!3820885))))

(declare-fun b!6283114 () Bool)

(declare-fun e!3820882 () Bool)

(assert (=> b!6283114 (= e!3820882 call!531855)))

(declare-fun d!1971991 () Bool)

(declare-fun res!2591220 () Bool)

(assert (=> d!1971991 (=> res!2591220 e!3820886)))

(assert (=> d!1971991 (= res!2591220 ((_ is ElementMatch!16203) (ite c!1139246 (regOne!32919 r!7292) (regOne!32918 r!7292))))))

(assert (=> d!1971991 (= (validRegex!7939 (ite c!1139246 (regOne!32919 r!7292) (regOne!32918 r!7292))) e!3820886)))

(declare-fun bm!531851 () Bool)

(assert (=> bm!531851 (= call!531856 (validRegex!7939 (ite c!1139609 (reg!16532 (ite c!1139246 (regOne!32919 r!7292) (regOne!32918 r!7292))) (ite c!1139608 (regTwo!32919 (ite c!1139246 (regOne!32919 r!7292) (regOne!32918 r!7292))) (regTwo!32918 (ite c!1139246 (regOne!32919 r!7292) (regOne!32918 r!7292)))))))))

(declare-fun b!6283116 () Bool)

(assert (=> b!6283116 (= e!3820884 e!3820882)))

(declare-fun res!2591218 () Bool)

(assert (=> b!6283116 (=> (not res!2591218) (not e!3820882))))

(assert (=> b!6283116 (= res!2591218 call!531854)))

(assert (= (and d!1971991 (not res!2591220)) b!6283112))

(assert (= (and b!6283112 c!1139609) b!6283115))

(assert (= (and b!6283112 (not c!1139609)) b!6283113))

(assert (= (and b!6283115 res!2591217) b!6283110))

(assert (= (and b!6283113 c!1139608) b!6283109))

(assert (= (and b!6283113 (not c!1139608)) b!6283108))

(assert (= (and b!6283109 res!2591216) b!6283111))

(assert (= (and b!6283108 (not res!2591219)) b!6283116))

(assert (= (and b!6283116 res!2591218) b!6283114))

(assert (= (or b!6283111 b!6283114) bm!531849))

(assert (= (or b!6283109 b!6283116) bm!531850))

(assert (= (or b!6283110 bm!531849) bm!531851))

(declare-fun m!7104014 () Bool)

(assert (=> bm!531850 m!7104014))

(declare-fun m!7104016 () Bool)

(assert (=> b!6283115 m!7104016))

(declare-fun m!7104018 () Bool)

(assert (=> bm!531851 m!7104018))

(assert (=> bm!531604 d!1971991))

(assert (=> d!1971369 d!1971371))

(assert (=> d!1971369 d!1971381))

(declare-fun d!1971993 () Bool)

(assert (=> d!1971993 (= (matchR!8386 lt!2354652 s!2326) (matchZipper!2215 lt!2354666 s!2326))))

(assert (=> d!1971993 true))

(declare-fun _$44!1615 () Unit!158143)

(assert (=> d!1971993 (= (choose!46651 lt!2354666 (Cons!64786 lt!2354667 Nil!64786) lt!2354652 s!2326) _$44!1615)))

(declare-fun bs!1569984 () Bool)

(assert (= bs!1569984 d!1971993))

(assert (=> bs!1569984 m!7102016))

(assert (=> bs!1569984 m!7101988))

(assert (=> d!1971369 d!1971993))

(declare-fun bm!531852 () Bool)

(declare-fun call!531858 () Bool)

(declare-fun call!531859 () Bool)

(assert (=> bm!531852 (= call!531858 call!531859)))

(declare-fun b!6283117 () Bool)

(declare-fun res!2591224 () Bool)

(declare-fun e!3820891 () Bool)

(assert (=> b!6283117 (=> res!2591224 e!3820891)))

(assert (=> b!6283117 (= res!2591224 (not ((_ is Concat!25048) lt!2354652)))))

(declare-fun e!3820895 () Bool)

(assert (=> b!6283117 (= e!3820895 e!3820891)))

(declare-fun b!6283118 () Bool)

(declare-fun res!2591221 () Bool)

(declare-fun e!3820890 () Bool)

(assert (=> b!6283118 (=> (not res!2591221) (not e!3820890))))

(declare-fun call!531857 () Bool)

(assert (=> b!6283118 (= res!2591221 call!531857)))

(assert (=> b!6283118 (= e!3820895 e!3820890)))

(declare-fun b!6283119 () Bool)

(declare-fun e!3820892 () Bool)

(assert (=> b!6283119 (= e!3820892 call!531859)))

(declare-fun b!6283120 () Bool)

(assert (=> b!6283120 (= e!3820890 call!531858)))

(declare-fun b!6283121 () Bool)

(declare-fun e!3820893 () Bool)

(declare-fun e!3820894 () Bool)

(assert (=> b!6283121 (= e!3820893 e!3820894)))

(declare-fun c!1139611 () Bool)

(assert (=> b!6283121 (= c!1139611 ((_ is Star!16203) lt!2354652))))

(declare-fun b!6283122 () Bool)

(assert (=> b!6283122 (= e!3820894 e!3820895)))

(declare-fun c!1139610 () Bool)

(assert (=> b!6283122 (= c!1139610 ((_ is Union!16203) lt!2354652))))

(declare-fun bm!531853 () Bool)

(assert (=> bm!531853 (= call!531857 (validRegex!7939 (ite c!1139610 (regOne!32919 lt!2354652) (regOne!32918 lt!2354652))))))

(declare-fun b!6283124 () Bool)

(assert (=> b!6283124 (= e!3820894 e!3820892)))

(declare-fun res!2591222 () Bool)

(assert (=> b!6283124 (= res!2591222 (not (nullable!6196 (reg!16532 lt!2354652))))))

(assert (=> b!6283124 (=> (not res!2591222) (not e!3820892))))

(declare-fun b!6283123 () Bool)

(declare-fun e!3820889 () Bool)

(assert (=> b!6283123 (= e!3820889 call!531858)))

(declare-fun d!1971995 () Bool)

(declare-fun res!2591225 () Bool)

(assert (=> d!1971995 (=> res!2591225 e!3820893)))

(assert (=> d!1971995 (= res!2591225 ((_ is ElementMatch!16203) lt!2354652))))

(assert (=> d!1971995 (= (validRegex!7939 lt!2354652) e!3820893)))

(declare-fun bm!531854 () Bool)

(assert (=> bm!531854 (= call!531859 (validRegex!7939 (ite c!1139611 (reg!16532 lt!2354652) (ite c!1139610 (regTwo!32919 lt!2354652) (regTwo!32918 lt!2354652)))))))

(declare-fun b!6283125 () Bool)

(assert (=> b!6283125 (= e!3820891 e!3820889)))

(declare-fun res!2591223 () Bool)

(assert (=> b!6283125 (=> (not res!2591223) (not e!3820889))))

(assert (=> b!6283125 (= res!2591223 call!531857)))

(assert (= (and d!1971995 (not res!2591225)) b!6283121))

(assert (= (and b!6283121 c!1139611) b!6283124))

(assert (= (and b!6283121 (not c!1139611)) b!6283122))

(assert (= (and b!6283124 res!2591222) b!6283119))

(assert (= (and b!6283122 c!1139610) b!6283118))

(assert (= (and b!6283122 (not c!1139610)) b!6283117))

(assert (= (and b!6283118 res!2591221) b!6283120))

(assert (= (and b!6283117 (not res!2591224)) b!6283125))

(assert (= (and b!6283125 res!2591223) b!6283123))

(assert (= (or b!6283120 b!6283123) bm!531852))

(assert (= (or b!6283118 b!6283125) bm!531853))

(assert (= (or b!6283119 bm!531852) bm!531854))

(declare-fun m!7104020 () Bool)

(assert (=> bm!531853 m!7104020))

(declare-fun m!7104022 () Bool)

(assert (=> b!6283124 m!7104022))

(declare-fun m!7104024 () Bool)

(assert (=> bm!531854 m!7104024))

(assert (=> d!1971369 d!1971995))

(declare-fun bs!1569985 () Bool)

(declare-fun d!1971997 () Bool)

(assert (= bs!1569985 (and d!1971997 b!6281679)))

(declare-fun lambda!344700 () Int)

(assert (=> bs!1569985 (not (= lambda!344700 lambda!344588))))

(declare-fun bs!1569986 () Bool)

(assert (= bs!1569986 (and d!1971997 b!6281681)))

(assert (=> bs!1569986 (not (= lambda!344700 lambda!344589))))

(declare-fun bs!1569987 () Bool)

(assert (= bs!1569987 (and d!1971997 b!6281684)))

(assert (=> bs!1569987 (not (= lambda!344700 lambda!344591))))

(declare-fun bs!1569988 () Bool)

(assert (= bs!1569988 (and d!1971997 b!6281686)))

(assert (=> bs!1569988 (not (= lambda!344700 lambda!344592))))

(declare-fun exists!2527 ((InoxSet Context!11174) Int) Bool)

(assert (=> d!1971997 (= (nullableZipper!1973 lt!2354645) (exists!2527 lt!2354645 lambda!344700))))

(declare-fun bs!1569989 () Bool)

(assert (= bs!1569989 d!1971997))

(declare-fun m!7104026 () Bool)

(assert (=> bs!1569989 m!7104026))

(assert (=> b!6281580 d!1971997))

(declare-fun d!1971999 () Bool)

(assert (=> d!1971999 (= (isEmpty!36830 (t!378468 (unfocusZipperList!1624 zl!343))) ((_ is Nil!64784) (t!378468 (unfocusZipperList!1624 zl!343))))))

(assert (=> b!6281960 d!1971999))

(assert (=> b!6281584 d!1971301))

(declare-fun b!6283126 () Bool)

(declare-fun e!3820899 () Bool)

(declare-fun e!3820897 () Bool)

(assert (=> b!6283126 (= e!3820899 e!3820897)))

(declare-fun res!2591228 () Bool)

(assert (=> b!6283126 (=> res!2591228 e!3820897)))

(declare-fun call!531860 () Bool)

(assert (=> b!6283126 (= res!2591228 call!531860)))

(declare-fun b!6283127 () Bool)

(declare-fun e!3820898 () Bool)

(assert (=> b!6283127 (= e!3820898 (= (head!12906 (tail!11991 s!2326)) (c!1138982 (derivativeStep!4912 r!7292 (head!12906 s!2326)))))))

(declare-fun b!6283128 () Bool)

(declare-fun res!2591231 () Bool)

(assert (=> b!6283128 (=> res!2591231 e!3820897)))

(assert (=> b!6283128 (= res!2591231 (not (isEmpty!36834 (tail!11991 (tail!11991 s!2326)))))))

(declare-fun b!6283130 () Bool)

(assert (=> b!6283130 (= e!3820897 (not (= (head!12906 (tail!11991 s!2326)) (c!1138982 (derivativeStep!4912 r!7292 (head!12906 s!2326))))))))

(declare-fun b!6283131 () Bool)

(declare-fun e!3820896 () Bool)

(declare-fun lt!2354930 () Bool)

(assert (=> b!6283131 (= e!3820896 (not lt!2354930))))

(declare-fun b!6283132 () Bool)

(declare-fun e!3820902 () Bool)

(assert (=> b!6283132 (= e!3820902 e!3820896)))

(declare-fun c!1139614 () Bool)

(assert (=> b!6283132 (= c!1139614 ((_ is EmptyLang!16203) (derivativeStep!4912 r!7292 (head!12906 s!2326))))))

(declare-fun bm!531855 () Bool)

(assert (=> bm!531855 (= call!531860 (isEmpty!36834 (tail!11991 s!2326)))))

(declare-fun b!6283133 () Bool)

(declare-fun res!2591233 () Bool)

(assert (=> b!6283133 (=> (not res!2591233) (not e!3820898))))

(assert (=> b!6283133 (= res!2591233 (not call!531860))))

(declare-fun b!6283134 () Bool)

(declare-fun e!3820901 () Bool)

(assert (=> b!6283134 (= e!3820901 (matchR!8386 (derivativeStep!4912 (derivativeStep!4912 r!7292 (head!12906 s!2326)) (head!12906 (tail!11991 s!2326))) (tail!11991 (tail!11991 s!2326))))))

(declare-fun b!6283135 () Bool)

(declare-fun e!3820900 () Bool)

(assert (=> b!6283135 (= e!3820900 e!3820899)))

(declare-fun res!2591230 () Bool)

(assert (=> b!6283135 (=> (not res!2591230) (not e!3820899))))

(assert (=> b!6283135 (= res!2591230 (not lt!2354930))))

(declare-fun b!6283129 () Bool)

(declare-fun res!2591229 () Bool)

(assert (=> b!6283129 (=> (not res!2591229) (not e!3820898))))

(assert (=> b!6283129 (= res!2591229 (isEmpty!36834 (tail!11991 (tail!11991 s!2326))))))

(declare-fun d!1972001 () Bool)

(assert (=> d!1972001 e!3820902))

(declare-fun c!1139615 () Bool)

(assert (=> d!1972001 (= c!1139615 ((_ is EmptyExpr!16203) (derivativeStep!4912 r!7292 (head!12906 s!2326))))))

(assert (=> d!1972001 (= lt!2354930 e!3820901)))

(declare-fun c!1139616 () Bool)

(assert (=> d!1972001 (= c!1139616 (isEmpty!36834 (tail!11991 s!2326)))))

(assert (=> d!1972001 (validRegex!7939 (derivativeStep!4912 r!7292 (head!12906 s!2326)))))

(assert (=> d!1972001 (= (matchR!8386 (derivativeStep!4912 r!7292 (head!12906 s!2326)) (tail!11991 s!2326)) lt!2354930)))

(declare-fun b!6283136 () Bool)

(declare-fun res!2591227 () Bool)

(assert (=> b!6283136 (=> res!2591227 e!3820900)))

(assert (=> b!6283136 (= res!2591227 (not ((_ is ElementMatch!16203) (derivativeStep!4912 r!7292 (head!12906 s!2326)))))))

(assert (=> b!6283136 (= e!3820896 e!3820900)))

(declare-fun b!6283137 () Bool)

(assert (=> b!6283137 (= e!3820902 (= lt!2354930 call!531860))))

(declare-fun b!6283138 () Bool)

(assert (=> b!6283138 (= e!3820901 (nullable!6196 (derivativeStep!4912 r!7292 (head!12906 s!2326))))))

(declare-fun b!6283139 () Bool)

(declare-fun res!2591232 () Bool)

(assert (=> b!6283139 (=> res!2591232 e!3820900)))

(assert (=> b!6283139 (= res!2591232 e!3820898)))

(declare-fun res!2591226 () Bool)

(assert (=> b!6283139 (=> (not res!2591226) (not e!3820898))))

(assert (=> b!6283139 (= res!2591226 lt!2354930)))

(assert (= (and d!1972001 c!1139616) b!6283138))

(assert (= (and d!1972001 (not c!1139616)) b!6283134))

(assert (= (and d!1972001 c!1139615) b!6283137))

(assert (= (and d!1972001 (not c!1139615)) b!6283132))

(assert (= (and b!6283132 c!1139614) b!6283131))

(assert (= (and b!6283132 (not c!1139614)) b!6283136))

(assert (= (and b!6283136 (not res!2591227)) b!6283139))

(assert (= (and b!6283139 res!2591226) b!6283133))

(assert (= (and b!6283133 res!2591233) b!6283129))

(assert (= (and b!6283129 res!2591229) b!6283127))

(assert (= (and b!6283139 (not res!2591232)) b!6283135))

(assert (= (and b!6283135 res!2591230) b!6283126))

(assert (= (and b!6283126 (not res!2591228)) b!6283128))

(assert (= (and b!6283128 (not res!2591231)) b!6283130))

(assert (= (or b!6283137 b!6283126 b!6283133) bm!531855))

(assert (=> bm!531855 m!7102606))

(assert (=> bm!531855 m!7102608))

(assert (=> b!6283130 m!7102606))

(declare-fun m!7104028 () Bool)

(assert (=> b!6283130 m!7104028))

(assert (=> d!1972001 m!7102606))

(assert (=> d!1972001 m!7102608))

(assert (=> d!1972001 m!7102612))

(declare-fun m!7104030 () Bool)

(assert (=> d!1972001 m!7104030))

(assert (=> b!6283128 m!7102606))

(declare-fun m!7104032 () Bool)

(assert (=> b!6283128 m!7104032))

(assert (=> b!6283128 m!7104032))

(declare-fun m!7104034 () Bool)

(assert (=> b!6283128 m!7104034))

(assert (=> b!6283138 m!7102612))

(declare-fun m!7104036 () Bool)

(assert (=> b!6283138 m!7104036))

(assert (=> b!6283127 m!7102606))

(assert (=> b!6283127 m!7104028))

(assert (=> b!6283134 m!7102606))

(assert (=> b!6283134 m!7104028))

(assert (=> b!6283134 m!7102612))

(assert (=> b!6283134 m!7104028))

(declare-fun m!7104038 () Bool)

(assert (=> b!6283134 m!7104038))

(assert (=> b!6283134 m!7102606))

(assert (=> b!6283134 m!7104032))

(assert (=> b!6283134 m!7104038))

(assert (=> b!6283134 m!7104032))

(declare-fun m!7104040 () Bool)

(assert (=> b!6283134 m!7104040))

(assert (=> b!6283129 m!7102606))

(assert (=> b!6283129 m!7104032))

(assert (=> b!6283129 m!7104032))

(assert (=> b!6283129 m!7104034))

(assert (=> b!6281664 d!1972001))

(declare-fun b!6283160 () Bool)

(declare-fun c!1139627 () Bool)

(assert (=> b!6283160 (= c!1139627 (nullable!6196 (regOne!32918 r!7292)))))

(declare-fun e!3820916 () Regex!16203)

(declare-fun e!3820913 () Regex!16203)

(assert (=> b!6283160 (= e!3820916 e!3820913)))

(declare-fun c!1139631 () Bool)

(declare-fun bm!531864 () Bool)

(declare-fun call!531870 () Regex!16203)

(assert (=> bm!531864 (= call!531870 (derivativeStep!4912 (ite c!1139631 (regTwo!32919 r!7292) (regOne!32918 r!7292)) (head!12906 s!2326)))))

(declare-fun b!6283161 () Bool)

(assert (=> b!6283161 (= c!1139631 ((_ is Union!16203) r!7292))))

(declare-fun e!3820914 () Regex!16203)

(declare-fun e!3820917 () Regex!16203)

(assert (=> b!6283161 (= e!3820914 e!3820917)))

(declare-fun d!1972003 () Bool)

(declare-fun lt!2354933 () Regex!16203)

(assert (=> d!1972003 (validRegex!7939 lt!2354933)))

(declare-fun e!3820915 () Regex!16203)

(assert (=> d!1972003 (= lt!2354933 e!3820915)))

(declare-fun c!1139630 () Bool)

(assert (=> d!1972003 (= c!1139630 (or ((_ is EmptyExpr!16203) r!7292) ((_ is EmptyLang!16203) r!7292)))))

(assert (=> d!1972003 (validRegex!7939 r!7292)))

(assert (=> d!1972003 (= (derivativeStep!4912 r!7292 (head!12906 s!2326)) lt!2354933)))

(declare-fun b!6283162 () Bool)

(declare-fun call!531869 () Regex!16203)

(assert (=> b!6283162 (= e!3820916 (Concat!25048 call!531869 r!7292))))

(declare-fun bm!531865 () Bool)

(declare-fun call!531871 () Regex!16203)

(assert (=> bm!531865 (= call!531869 call!531871)))

(declare-fun b!6283163 () Bool)

(assert (=> b!6283163 (= e!3820917 e!3820916)))

(declare-fun c!1139628 () Bool)

(assert (=> b!6283163 (= c!1139628 ((_ is Star!16203) r!7292))))

(declare-fun bm!531866 () Bool)

(declare-fun call!531872 () Regex!16203)

(assert (=> bm!531866 (= call!531872 call!531869)))

(declare-fun b!6283164 () Bool)

(assert (=> b!6283164 (= e!3820917 (Union!16203 call!531871 call!531870))))

(declare-fun bm!531867 () Bool)

(assert (=> bm!531867 (= call!531871 (derivativeStep!4912 (ite c!1139631 (regOne!32919 r!7292) (ite c!1139628 (reg!16532 r!7292) (ite c!1139627 (regTwo!32918 r!7292) (regOne!32918 r!7292)))) (head!12906 s!2326)))))

(declare-fun b!6283165 () Bool)

(assert (=> b!6283165 (= e!3820913 (Union!16203 (Concat!25048 call!531870 (regTwo!32918 r!7292)) call!531872))))

(declare-fun b!6283166 () Bool)

(assert (=> b!6283166 (= e!3820914 (ite (= (head!12906 s!2326) (c!1138982 r!7292)) EmptyExpr!16203 EmptyLang!16203))))

(declare-fun b!6283167 () Bool)

(assert (=> b!6283167 (= e!3820915 EmptyLang!16203)))

(declare-fun b!6283168 () Bool)

(assert (=> b!6283168 (= e!3820915 e!3820914)))

(declare-fun c!1139629 () Bool)

(assert (=> b!6283168 (= c!1139629 ((_ is ElementMatch!16203) r!7292))))

(declare-fun b!6283169 () Bool)

(assert (=> b!6283169 (= e!3820913 (Union!16203 (Concat!25048 call!531872 (regTwo!32918 r!7292)) EmptyLang!16203))))

(assert (= (and d!1972003 c!1139630) b!6283167))

(assert (= (and d!1972003 (not c!1139630)) b!6283168))

(assert (= (and b!6283168 c!1139629) b!6283166))

(assert (= (and b!6283168 (not c!1139629)) b!6283161))

(assert (= (and b!6283161 c!1139631) b!6283164))

(assert (= (and b!6283161 (not c!1139631)) b!6283163))

(assert (= (and b!6283163 c!1139628) b!6283162))

(assert (= (and b!6283163 (not c!1139628)) b!6283160))

(assert (= (and b!6283160 c!1139627) b!6283165))

(assert (= (and b!6283160 (not c!1139627)) b!6283169))

(assert (= (or b!6283165 b!6283169) bm!531866))

(assert (= (or b!6283162 bm!531866) bm!531865))

(assert (= (or b!6283164 b!6283165) bm!531864))

(assert (= (or b!6283164 bm!531865) bm!531867))

(assert (=> b!6283160 m!7103994))

(assert (=> bm!531864 m!7102604))

(declare-fun m!7104042 () Bool)

(assert (=> bm!531864 m!7104042))

(declare-fun m!7104044 () Bool)

(assert (=> d!1972003 m!7104044))

(assert (=> d!1972003 m!7101878))

(assert (=> bm!531867 m!7102604))

(declare-fun m!7104046 () Bool)

(assert (=> bm!531867 m!7104046))

(assert (=> b!6281664 d!1972003))

(assert (=> b!6281664 d!1971939))

(declare-fun d!1972005 () Bool)

(assert (=> d!1972005 (= (tail!11991 s!2326) (t!378469 s!2326))))

(assert (=> b!6281664 d!1972005))

(assert (=> d!1971309 d!1971943))

(declare-fun d!1972007 () Bool)

(assert (=> d!1972007 (= (Exists!3273 (ite c!1139175 lambda!344579 lambda!344580)) (choose!46643 (ite c!1139175 lambda!344579 lambda!344580)))))

(declare-fun bs!1569990 () Bool)

(assert (= bs!1569990 d!1972007))

(declare-fun m!7104048 () Bool)

(assert (=> bs!1569990 m!7104048))

(assert (=> bm!531584 d!1972007))

(declare-fun d!1972009 () Bool)

(declare-fun c!1139632 () Bool)

(assert (=> d!1972009 (= c!1139632 (isEmpty!36834 (tail!11991 (t!378469 s!2326))))))

(declare-fun e!3820918 () Bool)

(assert (=> d!1972009 (= (matchZipper!2215 (derivationStepZipper!2169 lt!2354646 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))) e!3820918)))

(declare-fun b!6283170 () Bool)

(assert (=> b!6283170 (= e!3820918 (nullableZipper!1973 (derivationStepZipper!2169 lt!2354646 (head!12906 (t!378469 s!2326)))))))

(declare-fun b!6283171 () Bool)

(assert (=> b!6283171 (= e!3820918 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354646 (head!12906 (t!378469 s!2326))) (head!12906 (tail!11991 (t!378469 s!2326)))) (tail!11991 (tail!11991 (t!378469 s!2326)))))))

(assert (= (and d!1972009 c!1139632) b!6283170))

(assert (= (and d!1972009 (not c!1139632)) b!6283171))

(assert (=> d!1972009 m!7102540))

(assert (=> d!1972009 m!7103958))

(assert (=> b!6283170 m!7102550))

(declare-fun m!7104050 () Bool)

(assert (=> b!6283170 m!7104050))

(assert (=> b!6283171 m!7102540))

(assert (=> b!6283171 m!7103962))

(assert (=> b!6283171 m!7102550))

(assert (=> b!6283171 m!7103962))

(declare-fun m!7104052 () Bool)

(assert (=> b!6283171 m!7104052))

(assert (=> b!6283171 m!7102540))

(assert (=> b!6283171 m!7103966))

(assert (=> b!6283171 m!7104052))

(assert (=> b!6283171 m!7103966))

(declare-fun m!7104054 () Bool)

(assert (=> b!6283171 m!7104054))

(assert (=> b!6281557 d!1972009))

(declare-fun bs!1569991 () Bool)

(declare-fun d!1972011 () Bool)

(assert (= bs!1569991 (and d!1972011 b!6280977)))

(declare-fun lambda!344701 () Int)

(assert (=> bs!1569991 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344701 lambda!344509))))

(declare-fun bs!1569992 () Bool)

(assert (= bs!1569992 (and d!1972011 d!1971409)))

(assert (=> bs!1569992 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344701 lambda!344611))))

(declare-fun bs!1569993 () Bool)

(assert (= bs!1569993 (and d!1972011 d!1971429)))

(assert (=> bs!1569993 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344701 lambda!344613))))

(declare-fun bs!1569994 () Bool)

(assert (= bs!1569994 (and d!1972011 d!1971965)))

(assert (=> bs!1569994 (= lambda!344701 lambda!344697)))

(assert (=> d!1972011 true))

(assert (=> d!1972011 (= (derivationStepZipper!2169 lt!2354646 (head!12906 (t!378469 s!2326))) (flatMap!1708 lt!2354646 lambda!344701))))

(declare-fun bs!1569995 () Bool)

(assert (= bs!1569995 d!1972011))

(declare-fun m!7104056 () Bool)

(assert (=> bs!1569995 m!7104056))

(assert (=> b!6281557 d!1972011))

(assert (=> b!6281557 d!1971967))

(assert (=> b!6281557 d!1971969))

(declare-fun bm!531868 () Bool)

(declare-fun call!531874 () (InoxSet Context!11174))

(declare-fun call!531876 () (InoxSet Context!11174))

(assert (=> bm!531868 (= call!531874 call!531876)))

(declare-fun b!6283172 () Bool)

(declare-fun e!3820921 () Bool)

(assert (=> b!6283172 (= e!3820921 (nullable!6196 (regOne!32918 (h!71232 (exprs!6087 lt!2354638)))))))

(declare-fun b!6283173 () Bool)

(declare-fun e!3820919 () (InoxSet Context!11174))

(assert (=> b!6283173 (= e!3820919 call!531874)))

(declare-fun b!6283174 () Bool)

(declare-fun e!3820920 () (InoxSet Context!11174))

(assert (=> b!6283174 (= e!3820920 call!531874)))

(declare-fun b!6283175 () Bool)

(declare-fun c!1139637 () Bool)

(assert (=> b!6283175 (= c!1139637 ((_ is Star!16203) (h!71232 (exprs!6087 lt!2354638))))))

(assert (=> b!6283175 (= e!3820920 e!3820919)))

(declare-fun bm!531869 () Bool)

(declare-fun call!531877 () List!64908)

(declare-fun call!531875 () List!64908)

(assert (=> bm!531869 (= call!531877 call!531875)))

(declare-fun b!6283176 () Bool)

(declare-fun e!3820922 () (InoxSet Context!11174))

(declare-fun call!531873 () (InoxSet Context!11174))

(assert (=> b!6283176 (= e!3820922 ((_ map or) call!531873 call!531876))))

(declare-fun b!6283177 () Bool)

(declare-fun e!3820923 () (InoxSet Context!11174))

(declare-fun call!531878 () (InoxSet Context!11174))

(assert (=> b!6283177 (= e!3820923 ((_ map or) call!531873 call!531878))))

(declare-fun bm!531870 () Bool)

(declare-fun c!1139635 () Bool)

(declare-fun c!1139636 () Bool)

(assert (=> bm!531870 (= call!531875 ($colon$colon!2068 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354638)))) (ite (or c!1139636 c!1139635) (regTwo!32918 (h!71232 (exprs!6087 lt!2354638))) (h!71232 (exprs!6087 lt!2354638)))))))

(declare-fun b!6283178 () Bool)

(assert (=> b!6283178 (= c!1139636 e!3820921)))

(declare-fun res!2591234 () Bool)

(assert (=> b!6283178 (=> (not res!2591234) (not e!3820921))))

(assert (=> b!6283178 (= res!2591234 ((_ is Concat!25048) (h!71232 (exprs!6087 lt!2354638))))))

(assert (=> b!6283178 (= e!3820923 e!3820922)))

(declare-fun b!6283179 () Bool)

(declare-fun e!3820924 () (InoxSet Context!11174))

(assert (=> b!6283179 (= e!3820924 e!3820923)))

(declare-fun c!1139634 () Bool)

(assert (=> b!6283179 (= c!1139634 ((_ is Union!16203) (h!71232 (exprs!6087 lt!2354638))))))

(declare-fun bm!531871 () Bool)

(assert (=> bm!531871 (= call!531878 (derivationStepZipperDown!1451 (ite c!1139634 (regTwo!32919 (h!71232 (exprs!6087 lt!2354638))) (ite c!1139636 (regTwo!32918 (h!71232 (exprs!6087 lt!2354638))) (ite c!1139635 (regOne!32918 (h!71232 (exprs!6087 lt!2354638))) (reg!16532 (h!71232 (exprs!6087 lt!2354638)))))) (ite (or c!1139634 c!1139636) (Context!11175 (t!378468 (exprs!6087 lt!2354638))) (Context!11175 call!531877)) (h!71233 s!2326)))))

(declare-fun bm!531872 () Bool)

(assert (=> bm!531872 (= call!531873 (derivationStepZipperDown!1451 (ite c!1139634 (regOne!32919 (h!71232 (exprs!6087 lt!2354638))) (regOne!32918 (h!71232 (exprs!6087 lt!2354638)))) (ite c!1139634 (Context!11175 (t!378468 (exprs!6087 lt!2354638))) (Context!11175 call!531875)) (h!71233 s!2326)))))

(declare-fun d!1972013 () Bool)

(declare-fun c!1139633 () Bool)

(assert (=> d!1972013 (= c!1139633 (and ((_ is ElementMatch!16203) (h!71232 (exprs!6087 lt!2354638))) (= (c!1138982 (h!71232 (exprs!6087 lt!2354638))) (h!71233 s!2326))))))

(assert (=> d!1972013 (= (derivationStepZipperDown!1451 (h!71232 (exprs!6087 lt!2354638)) (Context!11175 (t!378468 (exprs!6087 lt!2354638))) (h!71233 s!2326)) e!3820924)))

(declare-fun b!6283180 () Bool)

(assert (=> b!6283180 (= e!3820922 e!3820920)))

(assert (=> b!6283180 (= c!1139635 ((_ is Concat!25048) (h!71232 (exprs!6087 lt!2354638))))))

(declare-fun b!6283181 () Bool)

(assert (=> b!6283181 (= e!3820919 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531873 () Bool)

(assert (=> bm!531873 (= call!531876 call!531878)))

(declare-fun b!6283182 () Bool)

(assert (=> b!6283182 (= e!3820924 (store ((as const (Array Context!11174 Bool)) false) (Context!11175 (t!378468 (exprs!6087 lt!2354638))) true))))

(assert (= (and d!1972013 c!1139633) b!6283182))

(assert (= (and d!1972013 (not c!1139633)) b!6283179))

(assert (= (and b!6283179 c!1139634) b!6283177))

(assert (= (and b!6283179 (not c!1139634)) b!6283178))

(assert (= (and b!6283178 res!2591234) b!6283172))

(assert (= (and b!6283178 c!1139636) b!6283176))

(assert (= (and b!6283178 (not c!1139636)) b!6283180))

(assert (= (and b!6283180 c!1139635) b!6283174))

(assert (= (and b!6283180 (not c!1139635)) b!6283175))

(assert (= (and b!6283175 c!1139637) b!6283173))

(assert (= (and b!6283175 (not c!1139637)) b!6283181))

(assert (= (or b!6283174 b!6283173) bm!531869))

(assert (= (or b!6283174 b!6283173) bm!531868))

(assert (= (or b!6283176 bm!531869) bm!531870))

(assert (= (or b!6283176 bm!531868) bm!531873))

(assert (= (or b!6283177 bm!531873) bm!531871))

(assert (= (or b!6283177 b!6283176) bm!531872))

(declare-fun m!7104058 () Bool)

(assert (=> b!6283172 m!7104058))

(declare-fun m!7104060 () Bool)

(assert (=> bm!531872 m!7104060))

(declare-fun m!7104062 () Bool)

(assert (=> b!6283182 m!7104062))

(declare-fun m!7104064 () Bool)

(assert (=> bm!531871 m!7104064))

(declare-fun m!7104066 () Bool)

(assert (=> bm!531870 m!7104066))

(assert (=> bm!531639 d!1972013))

(declare-fun b!6283183 () Bool)

(declare-fun e!3820928 () Bool)

(declare-fun e!3820926 () Bool)

(assert (=> b!6283183 (= e!3820928 e!3820926)))

(declare-fun res!2591237 () Bool)

(assert (=> b!6283183 (=> res!2591237 e!3820926)))

(declare-fun call!531879 () Bool)

(assert (=> b!6283183 (= res!2591237 call!531879)))

(declare-fun b!6283184 () Bool)

(declare-fun e!3820927 () Bool)

(assert (=> b!6283184 (= e!3820927 (= (head!12906 (_1!36485 (get!22393 lt!2354817))) (c!1138982 (regOne!32918 (regOne!32918 r!7292)))))))

(declare-fun b!6283185 () Bool)

(declare-fun res!2591240 () Bool)

(assert (=> b!6283185 (=> res!2591240 e!3820926)))

(assert (=> b!6283185 (= res!2591240 (not (isEmpty!36834 (tail!11991 (_1!36485 (get!22393 lt!2354817))))))))

(declare-fun b!6283187 () Bool)

(assert (=> b!6283187 (= e!3820926 (not (= (head!12906 (_1!36485 (get!22393 lt!2354817))) (c!1138982 (regOne!32918 (regOne!32918 r!7292))))))))

(declare-fun b!6283188 () Bool)

(declare-fun e!3820925 () Bool)

(declare-fun lt!2354934 () Bool)

(assert (=> b!6283188 (= e!3820925 (not lt!2354934))))

(declare-fun b!6283189 () Bool)

(declare-fun e!3820931 () Bool)

(assert (=> b!6283189 (= e!3820931 e!3820925)))

(declare-fun c!1139638 () Bool)

(assert (=> b!6283189 (= c!1139638 ((_ is EmptyLang!16203) (regOne!32918 (regOne!32918 r!7292))))))

(declare-fun bm!531874 () Bool)

(assert (=> bm!531874 (= call!531879 (isEmpty!36834 (_1!36485 (get!22393 lt!2354817))))))

(declare-fun b!6283190 () Bool)

(declare-fun res!2591242 () Bool)

(assert (=> b!6283190 (=> (not res!2591242) (not e!3820927))))

(assert (=> b!6283190 (= res!2591242 (not call!531879))))

(declare-fun b!6283191 () Bool)

(declare-fun e!3820930 () Bool)

(assert (=> b!6283191 (= e!3820930 (matchR!8386 (derivativeStep!4912 (regOne!32918 (regOne!32918 r!7292)) (head!12906 (_1!36485 (get!22393 lt!2354817)))) (tail!11991 (_1!36485 (get!22393 lt!2354817)))))))

(declare-fun b!6283192 () Bool)

(declare-fun e!3820929 () Bool)

(assert (=> b!6283192 (= e!3820929 e!3820928)))

(declare-fun res!2591239 () Bool)

(assert (=> b!6283192 (=> (not res!2591239) (not e!3820928))))

(assert (=> b!6283192 (= res!2591239 (not lt!2354934))))

(declare-fun b!6283186 () Bool)

(declare-fun res!2591238 () Bool)

(assert (=> b!6283186 (=> (not res!2591238) (not e!3820927))))

(assert (=> b!6283186 (= res!2591238 (isEmpty!36834 (tail!11991 (_1!36485 (get!22393 lt!2354817)))))))

(declare-fun d!1972015 () Bool)

(assert (=> d!1972015 e!3820931))

(declare-fun c!1139639 () Bool)

(assert (=> d!1972015 (= c!1139639 ((_ is EmptyExpr!16203) (regOne!32918 (regOne!32918 r!7292))))))

(assert (=> d!1972015 (= lt!2354934 e!3820930)))

(declare-fun c!1139640 () Bool)

(assert (=> d!1972015 (= c!1139640 (isEmpty!36834 (_1!36485 (get!22393 lt!2354817))))))

(assert (=> d!1972015 (validRegex!7939 (regOne!32918 (regOne!32918 r!7292)))))

(assert (=> d!1972015 (= (matchR!8386 (regOne!32918 (regOne!32918 r!7292)) (_1!36485 (get!22393 lt!2354817))) lt!2354934)))

(declare-fun b!6283193 () Bool)

(declare-fun res!2591236 () Bool)

(assert (=> b!6283193 (=> res!2591236 e!3820929)))

(assert (=> b!6283193 (= res!2591236 (not ((_ is ElementMatch!16203) (regOne!32918 (regOne!32918 r!7292)))))))

(assert (=> b!6283193 (= e!3820925 e!3820929)))

(declare-fun b!6283194 () Bool)

(assert (=> b!6283194 (= e!3820931 (= lt!2354934 call!531879))))

(declare-fun b!6283195 () Bool)

(assert (=> b!6283195 (= e!3820930 (nullable!6196 (regOne!32918 (regOne!32918 r!7292))))))

(declare-fun b!6283196 () Bool)

(declare-fun res!2591241 () Bool)

(assert (=> b!6283196 (=> res!2591241 e!3820929)))

(assert (=> b!6283196 (= res!2591241 e!3820927)))

(declare-fun res!2591235 () Bool)

(assert (=> b!6283196 (=> (not res!2591235) (not e!3820927))))

(assert (=> b!6283196 (= res!2591235 lt!2354934)))

(assert (= (and d!1972015 c!1139640) b!6283195))

(assert (= (and d!1972015 (not c!1139640)) b!6283191))

(assert (= (and d!1972015 c!1139639) b!6283194))

(assert (= (and d!1972015 (not c!1139639)) b!6283189))

(assert (= (and b!6283189 c!1139638) b!6283188))

(assert (= (and b!6283189 (not c!1139638)) b!6283193))

(assert (= (and b!6283193 (not res!2591236)) b!6283196))

(assert (= (and b!6283196 res!2591235) b!6283190))

(assert (= (and b!6283190 res!2591242) b!6283186))

(assert (= (and b!6283186 res!2591238) b!6283184))

(assert (= (and b!6283196 (not res!2591241)) b!6283192))

(assert (= (and b!6283192 res!2591239) b!6283183))

(assert (= (and b!6283183 (not res!2591237)) b!6283185))

(assert (= (and b!6283185 (not res!2591240)) b!6283187))

(assert (= (or b!6283194 b!6283183 b!6283190) bm!531874))

(declare-fun m!7104068 () Bool)

(assert (=> bm!531874 m!7104068))

(declare-fun m!7104070 () Bool)

(assert (=> b!6283187 m!7104070))

(assert (=> d!1972015 m!7104068))

(assert (=> d!1972015 m!7102678))

(declare-fun m!7104072 () Bool)

(assert (=> b!6283185 m!7104072))

(assert (=> b!6283185 m!7104072))

(declare-fun m!7104074 () Bool)

(assert (=> b!6283185 m!7104074))

(assert (=> b!6283195 m!7101958))

(assert (=> b!6283184 m!7104070))

(assert (=> b!6283191 m!7104070))

(assert (=> b!6283191 m!7104070))

(declare-fun m!7104076 () Bool)

(assert (=> b!6283191 m!7104076))

(assert (=> b!6283191 m!7104072))

(assert (=> b!6283191 m!7104076))

(assert (=> b!6283191 m!7104072))

(declare-fun m!7104078 () Bool)

(assert (=> b!6283191 m!7104078))

(assert (=> b!6283186 m!7104072))

(assert (=> b!6283186 m!7104072))

(assert (=> b!6283186 m!7104074))

(assert (=> b!6281736 d!1972015))

(declare-fun d!1972017 () Bool)

(assert (=> d!1972017 (= (get!22393 lt!2354817) (v!52248 lt!2354817))))

(assert (=> b!6281736 d!1972017))

(declare-fun d!1972019 () Bool)

(declare-fun c!1139641 () Bool)

(assert (=> d!1972019 (= c!1139641 (isEmpty!36834 (tail!11991 s!2326)))))

(declare-fun e!3820932 () Bool)

(assert (=> d!1972019 (= (matchZipper!2215 (derivationStepZipper!2169 lt!2354675 (head!12906 s!2326)) (tail!11991 s!2326)) e!3820932)))

(declare-fun b!6283197 () Bool)

(assert (=> b!6283197 (= e!3820932 (nullableZipper!1973 (derivationStepZipper!2169 lt!2354675 (head!12906 s!2326))))))

(declare-fun b!6283198 () Bool)

(assert (=> b!6283198 (= e!3820932 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354675 (head!12906 s!2326)) (head!12906 (tail!11991 s!2326))) (tail!11991 (tail!11991 s!2326))))))

(assert (= (and d!1972019 c!1139641) b!6283197))

(assert (= (and d!1972019 (not c!1139641)) b!6283198))

(assert (=> d!1972019 m!7102606))

(assert (=> d!1972019 m!7102608))

(assert (=> b!6283197 m!7102808))

(declare-fun m!7104080 () Bool)

(assert (=> b!6283197 m!7104080))

(assert (=> b!6283198 m!7102606))

(assert (=> b!6283198 m!7104028))

(assert (=> b!6283198 m!7102808))

(assert (=> b!6283198 m!7104028))

(declare-fun m!7104082 () Bool)

(assert (=> b!6283198 m!7104082))

(assert (=> b!6283198 m!7102606))

(assert (=> b!6283198 m!7104032))

(assert (=> b!6283198 m!7104082))

(assert (=> b!6283198 m!7104032))

(declare-fun m!7104084 () Bool)

(assert (=> b!6283198 m!7104084))

(assert (=> b!6281836 d!1972019))

(declare-fun bs!1569996 () Bool)

(declare-fun d!1972021 () Bool)

(assert (= bs!1569996 (and d!1972021 d!1971429)))

(declare-fun lambda!344702 () Int)

(assert (=> bs!1569996 (= (= (head!12906 s!2326) (h!71233 s!2326)) (= lambda!344702 lambda!344613))))

(declare-fun bs!1569997 () Bool)

(assert (= bs!1569997 (and d!1972021 d!1971965)))

(assert (=> bs!1569997 (= (= (head!12906 s!2326) (head!12906 (t!378469 s!2326))) (= lambda!344702 lambda!344697))))

(declare-fun bs!1569998 () Bool)

(assert (= bs!1569998 (and d!1972021 b!6280977)))

(assert (=> bs!1569998 (= (= (head!12906 s!2326) (h!71233 s!2326)) (= lambda!344702 lambda!344509))))

(declare-fun bs!1569999 () Bool)

(assert (= bs!1569999 (and d!1972021 d!1971409)))

(assert (=> bs!1569999 (= (= (head!12906 s!2326) (h!71233 s!2326)) (= lambda!344702 lambda!344611))))

(declare-fun bs!1570000 () Bool)

(assert (= bs!1570000 (and d!1972021 d!1972011)))

(assert (=> bs!1570000 (= (= (head!12906 s!2326) (head!12906 (t!378469 s!2326))) (= lambda!344702 lambda!344701))))

(assert (=> d!1972021 true))

(assert (=> d!1972021 (= (derivationStepZipper!2169 lt!2354675 (head!12906 s!2326)) (flatMap!1708 lt!2354675 lambda!344702))))

(declare-fun bs!1570001 () Bool)

(assert (= bs!1570001 d!1972021))

(declare-fun m!7104086 () Bool)

(assert (=> bs!1570001 m!7104086))

(assert (=> b!6281836 d!1972021))

(assert (=> b!6281836 d!1971939))

(assert (=> b!6281836 d!1972005))

(declare-fun d!1972023 () Bool)

(assert (=> d!1972023 (= (isEmpty!36834 (tail!11991 s!2326)) ((_ is Nil!64785) (tail!11991 s!2326)))))

(assert (=> b!6281740 d!1972023))

(assert (=> b!6281740 d!1972005))

(declare-fun d!1972025 () Bool)

(assert (=> d!1972025 (= (isEmpty!36830 (tail!11992 lt!2354672)) ((_ is Nil!64784) (tail!11992 lt!2354672)))))

(assert (=> b!6281758 d!1972025))

(declare-fun d!1972027 () Bool)

(assert (=> d!1972027 (= (tail!11992 lt!2354672) (t!378468 lt!2354672))))

(assert (=> b!6281758 d!1972027))

(assert (=> d!1971371 d!1971931))

(assert (=> d!1971371 d!1971995))

(declare-fun bm!531875 () Bool)

(declare-fun call!531881 () (InoxSet Context!11174))

(declare-fun call!531883 () (InoxSet Context!11174))

(assert (=> bm!531875 (= call!531881 call!531883)))

(declare-fun b!6283199 () Bool)

(declare-fun e!3820935 () Bool)

(assert (=> b!6283199 (= e!3820935 (nullable!6196 (regOne!32918 (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343))))))))))))

(declare-fun b!6283200 () Bool)

(declare-fun e!3820933 () (InoxSet Context!11174))

(assert (=> b!6283200 (= e!3820933 call!531881)))

(declare-fun b!6283201 () Bool)

(declare-fun e!3820934 () (InoxSet Context!11174))

(assert (=> b!6283201 (= e!3820934 call!531881)))

(declare-fun c!1139646 () Bool)

(declare-fun b!6283202 () Bool)

(assert (=> b!6283202 (= c!1139646 ((_ is Star!16203) (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343)))))))))))

(assert (=> b!6283202 (= e!3820934 e!3820933)))

(declare-fun bm!531876 () Bool)

(declare-fun call!531884 () List!64908)

(declare-fun call!531882 () List!64908)

(assert (=> bm!531876 (= call!531884 call!531882)))

(declare-fun b!6283203 () Bool)

(declare-fun e!3820936 () (InoxSet Context!11174))

(declare-fun call!531880 () (InoxSet Context!11174))

(assert (=> b!6283203 (= e!3820936 ((_ map or) call!531880 call!531883))))

(declare-fun b!6283204 () Bool)

(declare-fun e!3820937 () (InoxSet Context!11174))

(declare-fun call!531885 () (InoxSet Context!11174))

(assert (=> b!6283204 (= e!3820937 ((_ map or) call!531880 call!531885))))

(declare-fun c!1139645 () Bool)

(declare-fun bm!531877 () Bool)

(declare-fun c!1139644 () Bool)

(assert (=> bm!531877 (= call!531882 ($colon$colon!2068 (exprs!6087 (ite (or c!1139259 c!1139261) lt!2354668 (Context!11175 call!531627))) (ite (or c!1139645 c!1139644) (regTwo!32918 (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343)))))))) (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343))))))))))))

(declare-fun b!6283205 () Bool)

(assert (=> b!6283205 (= c!1139645 e!3820935)))

(declare-fun res!2591243 () Bool)

(assert (=> b!6283205 (=> (not res!2591243) (not e!3820935))))

(assert (=> b!6283205 (= res!2591243 ((_ is Concat!25048) (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343)))))))))))

(assert (=> b!6283205 (= e!3820937 e!3820936)))

(declare-fun b!6283206 () Bool)

(declare-fun e!3820938 () (InoxSet Context!11174))

(assert (=> b!6283206 (= e!3820938 e!3820937)))

(declare-fun c!1139643 () Bool)

(assert (=> b!6283206 (= c!1139643 ((_ is Union!16203) (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343)))))))))))

(declare-fun bm!531878 () Bool)

(assert (=> bm!531878 (= call!531885 (derivationStepZipperDown!1451 (ite c!1139643 (regTwo!32919 (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343)))))))) (ite c!1139645 (regTwo!32918 (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343)))))))) (ite c!1139644 (regOne!32918 (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343)))))))) (reg!16532 (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343))))))))))) (ite (or c!1139643 c!1139645) (ite (or c!1139259 c!1139261) lt!2354668 (Context!11175 call!531627)) (Context!11175 call!531884)) (h!71233 s!2326)))))

(declare-fun bm!531879 () Bool)

(assert (=> bm!531879 (= call!531880 (derivationStepZipperDown!1451 (ite c!1139643 (regOne!32919 (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343)))))))) (regOne!32918 (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343))))))))) (ite c!1139643 (ite (or c!1139259 c!1139261) lt!2354668 (Context!11175 call!531627)) (Context!11175 call!531882)) (h!71233 s!2326)))))

(declare-fun d!1972029 () Bool)

(declare-fun c!1139642 () Bool)

(assert (=> d!1972029 (= c!1139642 (and ((_ is ElementMatch!16203) (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343)))))))) (= (c!1138982 (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343)))))))) (h!71233 s!2326))))))

(assert (=> d!1972029 (= (derivationStepZipperDown!1451 (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343))))))) (ite (or c!1139259 c!1139261) lt!2354668 (Context!11175 call!531627)) (h!71233 s!2326)) e!3820938)))

(declare-fun b!6283207 () Bool)

(assert (=> b!6283207 (= e!3820936 e!3820934)))

(assert (=> b!6283207 (= c!1139644 ((_ is Concat!25048) (ite c!1139259 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139261 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139260 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343)))))))))))

(declare-fun b!6283208 () Bool)

(assert (=> b!6283208 (= e!3820933 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531880 () Bool)

(assert (=> bm!531880 (= call!531883 call!531885)))

(declare-fun b!6283209 () Bool)

(assert (=> b!6283209 (= e!3820938 (store ((as const (Array Context!11174 Bool)) false) (ite (or c!1139259 c!1139261) lt!2354668 (Context!11175 call!531627)) true))))

(assert (= (and d!1972029 c!1139642) b!6283209))

(assert (= (and d!1972029 (not c!1139642)) b!6283206))

(assert (= (and b!6283206 c!1139643) b!6283204))

(assert (= (and b!6283206 (not c!1139643)) b!6283205))

(assert (= (and b!6283205 res!2591243) b!6283199))

(assert (= (and b!6283205 c!1139645) b!6283203))

(assert (= (and b!6283205 (not c!1139645)) b!6283207))

(assert (= (and b!6283207 c!1139644) b!6283201))

(assert (= (and b!6283207 (not c!1139644)) b!6283202))

(assert (= (and b!6283202 c!1139646) b!6283200))

(assert (= (and b!6283202 (not c!1139646)) b!6283208))

(assert (= (or b!6283201 b!6283200) bm!531876))

(assert (= (or b!6283201 b!6283200) bm!531875))

(assert (= (or b!6283203 bm!531876) bm!531877))

(assert (= (or b!6283203 bm!531875) bm!531880))

(assert (= (or b!6283204 bm!531880) bm!531878))

(assert (= (or b!6283204 b!6283203) bm!531879))

(declare-fun m!7104088 () Bool)

(assert (=> b!6283199 m!7104088))

(declare-fun m!7104090 () Bool)

(assert (=> bm!531879 m!7104090))

(declare-fun m!7104092 () Bool)

(assert (=> b!6283209 m!7104092))

(declare-fun m!7104094 () Bool)

(assert (=> bm!531878 m!7104094))

(declare-fun m!7104096 () Bool)

(assert (=> bm!531877 m!7104096))

(assert (=> bm!531621 d!1972029))

(assert (=> b!6281812 d!1971939))

(declare-fun d!1972031 () Bool)

(assert (=> d!1972031 (= (nullable!6196 (h!71232 (exprs!6087 lt!2354668))) (nullableFct!2147 (h!71232 (exprs!6087 lt!2354668))))))

(declare-fun bs!1570002 () Bool)

(assert (= bs!1570002 d!1972031))

(declare-fun m!7104098 () Bool)

(assert (=> bs!1570002 m!7104098))

(assert (=> b!6281882 d!1972031))

(assert (=> b!6281711 d!1971367))

(declare-fun bs!1570003 () Bool)

(declare-fun d!1972033 () Bool)

(assert (= bs!1570003 (and d!1972033 b!6281686)))

(declare-fun lambda!344703 () Int)

(assert (=> bs!1570003 (not (= lambda!344703 lambda!344592))))

(declare-fun bs!1570004 () Bool)

(assert (= bs!1570004 (and d!1972033 b!6281684)))

(assert (=> bs!1570004 (not (= lambda!344703 lambda!344591))))

(declare-fun bs!1570005 () Bool)

(assert (= bs!1570005 (and d!1972033 b!6281681)))

(assert (=> bs!1570005 (not (= lambda!344703 lambda!344589))))

(declare-fun bs!1570006 () Bool)

(assert (= bs!1570006 (and d!1972033 d!1971997)))

(assert (=> bs!1570006 (= lambda!344703 lambda!344700)))

(declare-fun bs!1570007 () Bool)

(assert (= bs!1570007 (and d!1972033 b!6281679)))

(assert (=> bs!1570007 (not (= lambda!344703 lambda!344588))))

(assert (=> d!1972033 (= (nullableZipper!1973 lt!2354634) (exists!2527 lt!2354634 lambda!344703))))

(declare-fun bs!1570008 () Bool)

(assert (= bs!1570008 d!1972033))

(declare-fun m!7104100 () Bool)

(assert (=> bs!1570008 m!7104100))

(assert (=> b!6281974 d!1972033))

(declare-fun d!1972035 () Bool)

(assert (=> d!1972035 (= (isEmpty!36833 (findConcatSeparation!2508 (regOne!32918 r!7292) (regTwo!32918 r!7292) Nil!64785 s!2326 s!2326)) (not ((_ is Some!16093) (findConcatSeparation!2508 (regOne!32918 r!7292) (regTwo!32918 r!7292) Nil!64785 s!2326 s!2326))))))

(assert (=> d!1971299 d!1972035))

(declare-fun bm!531881 () Bool)

(declare-fun call!531886 () (InoxSet Context!11174))

(assert (=> bm!531881 (= call!531886 (derivationStepZipperDown!1451 (h!71232 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))))) (Context!11175 (t!378468 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))))))) (h!71233 s!2326)))))

(declare-fun b!6283210 () Bool)

(declare-fun e!3820940 () (InoxSet Context!11174))

(assert (=> b!6283210 (= e!3820940 ((as const (Array Context!11174 Bool)) false))))

(declare-fun b!6283211 () Bool)

(declare-fun e!3820941 () (InoxSet Context!11174))

(assert (=> b!6283211 (= e!3820941 e!3820940)))

(declare-fun c!1139648 () Bool)

(assert (=> b!6283211 (= c!1139648 ((_ is Cons!64784) (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))))))))

(declare-fun b!6283212 () Bool)

(assert (=> b!6283212 (= e!3820941 ((_ map or) call!531886 (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))))))) (h!71233 s!2326))))))

(declare-fun d!1972037 () Bool)

(declare-fun c!1139647 () Bool)

(declare-fun e!3820939 () Bool)

(assert (=> d!1972037 (= c!1139647 e!3820939)))

(declare-fun res!2591244 () Bool)

(assert (=> d!1972037 (=> (not res!2591244) (not e!3820939))))

(assert (=> d!1972037 (= res!2591244 ((_ is Cons!64784) (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))))))))

(assert (=> d!1972037 (= (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (h!71233 s!2326)) e!3820941)))

(declare-fun b!6283213 () Bool)

(assert (=> b!6283213 (= e!3820939 (nullable!6196 (h!71232 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))))))))))

(declare-fun b!6283214 () Bool)

(assert (=> b!6283214 (= e!3820940 call!531886)))

(assert (= (and d!1972037 res!2591244) b!6283213))

(assert (= (and d!1972037 c!1139647) b!6283212))

(assert (= (and d!1972037 (not c!1139647)) b!6283211))

(assert (= (and b!6283211 c!1139648) b!6283214))

(assert (= (and b!6283211 (not c!1139648)) b!6283210))

(assert (= (or b!6283212 b!6283214) bm!531881))

(declare-fun m!7104102 () Bool)

(assert (=> bm!531881 m!7104102))

(declare-fun m!7104104 () Bool)

(assert (=> b!6283212 m!7104104))

(declare-fun m!7104106 () Bool)

(assert (=> b!6283213 m!7104106))

(assert (=> b!6281886 d!1972037))

(declare-fun d!1972039 () Bool)

(assert (=> d!1972039 (= (isEmpty!36830 (tail!11992 lt!2354639)) ((_ is Nil!64784) (tail!11992 lt!2354639)))))

(assert (=> b!6281795 d!1972039))

(declare-fun d!1972041 () Bool)

(assert (=> d!1972041 (= (tail!11992 lt!2354639) (t!378468 lt!2354639))))

(assert (=> b!6281795 d!1972041))

(declare-fun d!1972043 () Bool)

(assert (=> d!1972043 true))

(declare-fun setRes!42755 () Bool)

(assert (=> d!1972043 setRes!42755))

(declare-fun condSetEmpty!42755 () Bool)

(declare-fun res!2591247 () (InoxSet Context!11174))

(assert (=> d!1972043 (= condSetEmpty!42755 (= res!2591247 ((as const (Array Context!11174 Bool)) false)))))

(assert (=> d!1972043 (= (choose!46647 lt!2354666 lambda!344509) res!2591247)))

(declare-fun setIsEmpty!42755 () Bool)

(assert (=> setIsEmpty!42755 setRes!42755))

(declare-fun setElem!42755 () Context!11174)

(declare-fun tp!1750759 () Bool)

(declare-fun e!3820944 () Bool)

(declare-fun setNonEmpty!42755 () Bool)

(assert (=> setNonEmpty!42755 (= setRes!42755 (and tp!1750759 (inv!83754 setElem!42755) e!3820944))))

(declare-fun setRest!42755 () (InoxSet Context!11174))

(assert (=> setNonEmpty!42755 (= res!2591247 ((_ map or) (store ((as const (Array Context!11174 Bool)) false) setElem!42755 true) setRest!42755))))

(declare-fun b!6283217 () Bool)

(declare-fun tp!1750760 () Bool)

(assert (=> b!6283217 (= e!3820944 tp!1750760)))

(assert (= (and d!1972043 condSetEmpty!42755) setIsEmpty!42755))

(assert (= (and d!1972043 (not condSetEmpty!42755)) setNonEmpty!42755))

(assert (= setNonEmpty!42755 b!6283217))

(declare-fun m!7104108 () Bool)

(assert (=> setNonEmpty!42755 m!7104108))

(assert (=> d!1971307 d!1972043))

(declare-fun bs!1570009 () Bool)

(declare-fun b!6283228 () Bool)

(assert (= bs!1570009 (and b!6283228 d!1971375)))

(declare-fun lambda!344704 () Int)

(assert (=> bs!1570009 (not (= lambda!344704 lambda!344605))))

(declare-fun bs!1570010 () Bool)

(assert (= bs!1570010 (and b!6283228 d!1971297)))

(assert (=> bs!1570010 (not (= lambda!344704 lambda!344574))))

(declare-fun bs!1570011 () Bool)

(assert (= bs!1570011 (and b!6283228 b!6281727)))

(assert (=> bs!1570011 (= (and (= (reg!16532 (regTwo!32919 r!7292)) (reg!16532 lt!2354656)) (= (regTwo!32919 r!7292) lt!2354656)) (= lambda!344704 lambda!344599))))

(declare-fun bs!1570012 () Bool)

(assert (= bs!1570012 (and b!6283228 b!6283024)))

(assert (=> bs!1570012 (not (= lambda!344704 lambda!344696))))

(declare-fun bs!1570013 () Bool)

(assert (= bs!1570013 (and b!6283228 b!6280967)))

(assert (=> bs!1570013 (not (= lambda!344704 lambda!344507))))

(declare-fun bs!1570014 () Bool)

(assert (= bs!1570014 (and b!6283228 d!1971295)))

(assert (=> bs!1570014 (not (= lambda!344704 lambda!344568))))

(assert (=> bs!1570010 (not (= lambda!344704 lambda!344573))))

(declare-fun bs!1570015 () Bool)

(assert (= bs!1570015 (and b!6283228 d!1971365)))

(assert (=> bs!1570015 (not (= lambda!344704 lambda!344603))))

(declare-fun bs!1570016 () Bool)

(assert (= bs!1570016 (and b!6283228 b!6281621)))

(assert (=> bs!1570016 (not (= lambda!344704 lambda!344580))))

(declare-fun bs!1570017 () Bool)

(assert (= bs!1570017 (and b!6283228 b!6280970)))

(assert (=> bs!1570017 (not (= lambda!344704 lambda!344510))))

(declare-fun bs!1570018 () Bool)

(assert (= bs!1570018 (and b!6283228 b!6281832)))

(assert (=> bs!1570018 (= (and (= (reg!16532 (regTwo!32919 r!7292)) (reg!16532 lt!2354652)) (= (regTwo!32919 r!7292) lt!2354652)) (= lambda!344704 lambda!344607))))

(assert (=> bs!1570017 (not (= lambda!344704 lambda!344511))))

(assert (=> bs!1570013 (not (= lambda!344704 lambda!344508))))

(declare-fun bs!1570019 () Bool)

(assert (= bs!1570019 (and b!6283228 b!6281826)))

(assert (=> bs!1570019 (not (= lambda!344704 lambda!344608))))

(assert (=> bs!1570009 (not (= lambda!344704 lambda!344606))))

(declare-fun bs!1570020 () Bool)

(assert (= bs!1570020 (and b!6283228 b!6281721)))

(assert (=> bs!1570020 (not (= lambda!344704 lambda!344600))))

(declare-fun bs!1570021 () Bool)

(assert (= bs!1570021 (and b!6283228 b!6283030)))

(assert (=> bs!1570021 (= (and (= (reg!16532 (regTwo!32919 r!7292)) (reg!16532 (regOne!32919 lt!2354656))) (= (regTwo!32919 r!7292) (regOne!32919 lt!2354656))) (= lambda!344704 lambda!344695))))

(declare-fun bs!1570022 () Bool)

(assert (= bs!1570022 (and b!6283228 b!6281627)))

(assert (=> bs!1570022 (= (and (= (reg!16532 (regTwo!32919 r!7292)) (reg!16532 r!7292)) (= (regTwo!32919 r!7292) r!7292)) (= lambda!344704 lambda!344579))))

(assert (=> b!6283228 true))

(assert (=> b!6283228 true))

(declare-fun bs!1570023 () Bool)

(declare-fun b!6283222 () Bool)

(assert (= bs!1570023 (and b!6283222 d!1971375)))

(declare-fun lambda!344705 () Int)

(assert (=> bs!1570023 (not (= lambda!344705 lambda!344605))))

(declare-fun bs!1570024 () Bool)

(assert (= bs!1570024 (and b!6283222 d!1971297)))

(assert (=> bs!1570024 (= (and (= (regOne!32918 (regTwo!32919 r!7292)) (regOne!32918 r!7292)) (= (regTwo!32918 (regTwo!32919 r!7292)) (regTwo!32918 r!7292))) (= lambda!344705 lambda!344574))))

(declare-fun bs!1570025 () Bool)

(assert (= bs!1570025 (and b!6283222 b!6281727)))

(assert (=> bs!1570025 (not (= lambda!344705 lambda!344599))))

(declare-fun bs!1570026 () Bool)

(assert (= bs!1570026 (and b!6283222 b!6283024)))

(assert (=> bs!1570026 (= (and (= (regOne!32918 (regTwo!32919 r!7292)) (regOne!32918 (regOne!32919 lt!2354656))) (= (regTwo!32918 (regTwo!32919 r!7292)) (regTwo!32918 (regOne!32919 lt!2354656)))) (= lambda!344705 lambda!344696))))

(declare-fun bs!1570027 () Bool)

(assert (= bs!1570027 (and b!6283222 b!6280967)))

(assert (=> bs!1570027 (not (= lambda!344705 lambda!344507))))

(declare-fun bs!1570028 () Bool)

(assert (= bs!1570028 (and b!6283222 d!1971295)))

(assert (=> bs!1570028 (not (= lambda!344705 lambda!344568))))

(assert (=> bs!1570024 (not (= lambda!344705 lambda!344573))))

(declare-fun bs!1570029 () Bool)

(assert (= bs!1570029 (and b!6283222 d!1971365)))

(assert (=> bs!1570029 (not (= lambda!344705 lambda!344603))))

(declare-fun bs!1570030 () Bool)

(assert (= bs!1570030 (and b!6283222 b!6281621)))

(assert (=> bs!1570030 (= (and (= (regOne!32918 (regTwo!32919 r!7292)) (regOne!32918 r!7292)) (= (regTwo!32918 (regTwo!32919 r!7292)) (regTwo!32918 r!7292))) (= lambda!344705 lambda!344580))))

(declare-fun bs!1570031 () Bool)

(assert (= bs!1570031 (and b!6283222 b!6280970)))

(assert (=> bs!1570031 (not (= lambda!344705 lambda!344510))))

(declare-fun bs!1570032 () Bool)

(assert (= bs!1570032 (and b!6283222 b!6281832)))

(assert (=> bs!1570032 (not (= lambda!344705 lambda!344607))))

(assert (=> bs!1570031 (= (and (= (regOne!32918 (regTwo!32919 r!7292)) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 (regTwo!32919 r!7292)) lt!2354652)) (= lambda!344705 lambda!344511))))

(assert (=> bs!1570027 (= (and (= (regOne!32918 (regTwo!32919 r!7292)) (regOne!32918 r!7292)) (= (regTwo!32918 (regTwo!32919 r!7292)) (regTwo!32918 r!7292))) (= lambda!344705 lambda!344508))))

(assert (=> bs!1570023 (= (and (= (regOne!32918 (regTwo!32919 r!7292)) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 (regTwo!32919 r!7292)) lt!2354652)) (= lambda!344705 lambda!344606))))

(declare-fun bs!1570033 () Bool)

(assert (= bs!1570033 (and b!6283222 b!6283228)))

(assert (=> bs!1570033 (not (= lambda!344705 lambda!344704))))

(declare-fun bs!1570034 () Bool)

(assert (= bs!1570034 (and b!6283222 b!6281826)))

(assert (=> bs!1570034 (= (and (= (regOne!32918 (regTwo!32919 r!7292)) (regOne!32918 lt!2354652)) (= (regTwo!32918 (regTwo!32919 r!7292)) (regTwo!32918 lt!2354652))) (= lambda!344705 lambda!344608))))

(declare-fun bs!1570035 () Bool)

(assert (= bs!1570035 (and b!6283222 b!6281721)))

(assert (=> bs!1570035 (= (and (= (regOne!32918 (regTwo!32919 r!7292)) (regOne!32918 lt!2354656)) (= (regTwo!32918 (regTwo!32919 r!7292)) (regTwo!32918 lt!2354656))) (= lambda!344705 lambda!344600))))

(declare-fun bs!1570036 () Bool)

(assert (= bs!1570036 (and b!6283222 b!6283030)))

(assert (=> bs!1570036 (not (= lambda!344705 lambda!344695))))

(declare-fun bs!1570037 () Bool)

(assert (= bs!1570037 (and b!6283222 b!6281627)))

(assert (=> bs!1570037 (not (= lambda!344705 lambda!344579))))

(assert (=> b!6283222 true))

(assert (=> b!6283222 true))

(declare-fun b!6283218 () Bool)

(declare-fun e!3820950 () Bool)

(declare-fun e!3820945 () Bool)

(assert (=> b!6283218 (= e!3820950 e!3820945)))

(declare-fun c!1139649 () Bool)

(assert (=> b!6283218 (= c!1139649 ((_ is Star!16203) (regTwo!32919 r!7292)))))

(declare-fun b!6283219 () Bool)

(declare-fun e!3820949 () Bool)

(assert (=> b!6283219 (= e!3820950 e!3820949)))

(declare-fun res!2591250 () Bool)

(assert (=> b!6283219 (= res!2591250 (matchRSpec!3304 (regOne!32919 (regTwo!32919 r!7292)) s!2326))))

(assert (=> b!6283219 (=> res!2591250 e!3820949)))

(declare-fun b!6283220 () Bool)

(declare-fun e!3820947 () Bool)

(declare-fun call!531888 () Bool)

(assert (=> b!6283220 (= e!3820947 call!531888)))

(declare-fun d!1972045 () Bool)

(declare-fun c!1139652 () Bool)

(assert (=> d!1972045 (= c!1139652 ((_ is EmptyExpr!16203) (regTwo!32919 r!7292)))))

(assert (=> d!1972045 (= (matchRSpec!3304 (regTwo!32919 r!7292) s!2326) e!3820947)))

(declare-fun b!6283221 () Bool)

(assert (=> b!6283221 (= e!3820949 (matchRSpec!3304 (regTwo!32919 (regTwo!32919 r!7292)) s!2326))))

(declare-fun call!531887 () Bool)

(assert (=> b!6283222 (= e!3820945 call!531887)))

(declare-fun b!6283223 () Bool)

(declare-fun e!3820946 () Bool)

(assert (=> b!6283223 (= e!3820946 (= s!2326 (Cons!64785 (c!1138982 (regTwo!32919 r!7292)) Nil!64785)))))

(declare-fun b!6283224 () Bool)

(declare-fun e!3820951 () Bool)

(assert (=> b!6283224 (= e!3820947 e!3820951)))

(declare-fun res!2591248 () Bool)

(assert (=> b!6283224 (= res!2591248 (not ((_ is EmptyLang!16203) (regTwo!32919 r!7292))))))

(assert (=> b!6283224 (=> (not res!2591248) (not e!3820951))))

(declare-fun b!6283225 () Bool)

(declare-fun res!2591249 () Bool)

(declare-fun e!3820948 () Bool)

(assert (=> b!6283225 (=> res!2591249 e!3820948)))

(assert (=> b!6283225 (= res!2591249 call!531888)))

(assert (=> b!6283225 (= e!3820945 e!3820948)))

(declare-fun bm!531882 () Bool)

(assert (=> bm!531882 (= call!531888 (isEmpty!36834 s!2326))))

(declare-fun b!6283226 () Bool)

(declare-fun c!1139650 () Bool)

(assert (=> b!6283226 (= c!1139650 ((_ is Union!16203) (regTwo!32919 r!7292)))))

(assert (=> b!6283226 (= e!3820946 e!3820950)))

(declare-fun b!6283227 () Bool)

(declare-fun c!1139651 () Bool)

(assert (=> b!6283227 (= c!1139651 ((_ is ElementMatch!16203) (regTwo!32919 r!7292)))))

(assert (=> b!6283227 (= e!3820951 e!3820946)))

(assert (=> b!6283228 (= e!3820948 call!531887)))

(declare-fun bm!531883 () Bool)

(assert (=> bm!531883 (= call!531887 (Exists!3273 (ite c!1139649 lambda!344704 lambda!344705)))))

(assert (= (and d!1972045 c!1139652) b!6283220))

(assert (= (and d!1972045 (not c!1139652)) b!6283224))

(assert (= (and b!6283224 res!2591248) b!6283227))

(assert (= (and b!6283227 c!1139651) b!6283223))

(assert (= (and b!6283227 (not c!1139651)) b!6283226))

(assert (= (and b!6283226 c!1139650) b!6283219))

(assert (= (and b!6283226 (not c!1139650)) b!6283218))

(assert (= (and b!6283219 (not res!2591250)) b!6283221))

(assert (= (and b!6283218 c!1139649) b!6283225))

(assert (= (and b!6283218 (not c!1139649)) b!6283222))

(assert (= (and b!6283225 (not res!2591249)) b!6283228))

(assert (= (or b!6283228 b!6283222) bm!531883))

(assert (= (or b!6283220 b!6283225) bm!531882))

(declare-fun m!7104110 () Bool)

(assert (=> b!6283219 m!7104110))

(declare-fun m!7104112 () Bool)

(assert (=> b!6283221 m!7104112))

(assert (=> bm!531882 m!7102600))

(declare-fun m!7104114 () Bool)

(assert (=> bm!531883 m!7104114))

(assert (=> b!6281620 d!1972045))

(assert (=> d!1971405 d!1971943))

(declare-fun d!1972047 () Bool)

(assert (=> d!1972047 (= (Exists!3273 lambda!344573) (choose!46643 lambda!344573))))

(declare-fun bs!1570038 () Bool)

(assert (= bs!1570038 d!1972047))

(declare-fun m!7104116 () Bool)

(assert (=> bs!1570038 m!7104116))

(assert (=> d!1971297 d!1972047))

(declare-fun d!1972049 () Bool)

(assert (=> d!1972049 (= (Exists!3273 lambda!344574) (choose!46643 lambda!344574))))

(declare-fun bs!1570039 () Bool)

(assert (= bs!1570039 d!1972049))

(declare-fun m!7104118 () Bool)

(assert (=> bs!1570039 m!7104118))

(assert (=> d!1971297 d!1972049))

(declare-fun bs!1570040 () Bool)

(declare-fun d!1972051 () Bool)

(assert (= bs!1570040 (and d!1972051 d!1971375)))

(declare-fun lambda!344710 () Int)

(assert (=> bs!1570040 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344710 lambda!344605))))

(declare-fun bs!1570041 () Bool)

(assert (= bs!1570041 (and d!1972051 d!1971297)))

(assert (=> bs!1570041 (not (= lambda!344710 lambda!344574))))

(declare-fun bs!1570042 () Bool)

(assert (= bs!1570042 (and d!1972051 b!6281727)))

(assert (=> bs!1570042 (not (= lambda!344710 lambda!344599))))

(declare-fun bs!1570043 () Bool)

(assert (= bs!1570043 (and d!1972051 b!6283024)))

(assert (=> bs!1570043 (not (= lambda!344710 lambda!344696))))

(declare-fun bs!1570044 () Bool)

(assert (= bs!1570044 (and d!1972051 b!6280967)))

(assert (=> bs!1570044 (= lambda!344710 lambda!344507)))

(declare-fun bs!1570045 () Bool)

(assert (= bs!1570045 (and d!1972051 d!1971295)))

(assert (=> bs!1570045 (= lambda!344710 lambda!344568)))

(assert (=> bs!1570041 (= lambda!344710 lambda!344573)))

(declare-fun bs!1570046 () Bool)

(assert (= bs!1570046 (and d!1972051 d!1971365)))

(assert (=> bs!1570046 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344710 lambda!344603))))

(declare-fun bs!1570047 () Bool)

(assert (= bs!1570047 (and d!1972051 b!6281621)))

(assert (=> bs!1570047 (not (= lambda!344710 lambda!344580))))

(declare-fun bs!1570048 () Bool)

(assert (= bs!1570048 (and d!1972051 b!6280970)))

(assert (=> bs!1570048 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344710 lambda!344510))))

(assert (=> bs!1570048 (not (= lambda!344710 lambda!344511))))

(assert (=> bs!1570044 (not (= lambda!344710 lambda!344508))))

(assert (=> bs!1570040 (not (= lambda!344710 lambda!344606))))

(declare-fun bs!1570049 () Bool)

(assert (= bs!1570049 (and d!1972051 b!6283228)))

(assert (=> bs!1570049 (not (= lambda!344710 lambda!344704))))

(declare-fun bs!1570050 () Bool)

(assert (= bs!1570050 (and d!1972051 b!6281826)))

(assert (=> bs!1570050 (not (= lambda!344710 lambda!344608))))

(declare-fun bs!1570051 () Bool)

(assert (= bs!1570051 (and d!1972051 b!6281721)))

(assert (=> bs!1570051 (not (= lambda!344710 lambda!344600))))

(declare-fun bs!1570052 () Bool)

(assert (= bs!1570052 (and d!1972051 b!6283030)))

(assert (=> bs!1570052 (not (= lambda!344710 lambda!344695))))

(declare-fun bs!1570053 () Bool)

(assert (= bs!1570053 (and d!1972051 b!6281627)))

(assert (=> bs!1570053 (not (= lambda!344710 lambda!344579))))

(declare-fun bs!1570054 () Bool)

(assert (= bs!1570054 (and d!1972051 b!6281832)))

(assert (=> bs!1570054 (not (= lambda!344710 lambda!344607))))

(declare-fun bs!1570055 () Bool)

(assert (= bs!1570055 (and d!1972051 b!6283222)))

(assert (=> bs!1570055 (not (= lambda!344710 lambda!344705))))

(assert (=> d!1972051 true))

(assert (=> d!1972051 true))

(assert (=> d!1972051 true))

(declare-fun lambda!344711 () Int)

(assert (=> bs!1570040 (not (= lambda!344711 lambda!344605))))

(assert (=> bs!1570041 (= lambda!344711 lambda!344574)))

(assert (=> bs!1570042 (not (= lambda!344711 lambda!344599))))

(assert (=> bs!1570043 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32919 lt!2354656))) (= (regTwo!32918 r!7292) (regTwo!32918 (regOne!32919 lt!2354656)))) (= lambda!344711 lambda!344696))))

(assert (=> bs!1570044 (not (= lambda!344711 lambda!344507))))

(assert (=> bs!1570045 (not (= lambda!344711 lambda!344568))))

(assert (=> bs!1570041 (not (= lambda!344711 lambda!344573))))

(assert (=> bs!1570046 (not (= lambda!344711 lambda!344603))))

(assert (=> bs!1570047 (= lambda!344711 lambda!344580)))

(assert (=> bs!1570048 (not (= lambda!344711 lambda!344510))))

(assert (=> bs!1570048 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344711 lambda!344511))))

(declare-fun bs!1570056 () Bool)

(assert (= bs!1570056 d!1972051))

(assert (=> bs!1570056 (not (= lambda!344711 lambda!344710))))

(assert (=> bs!1570044 (= lambda!344711 lambda!344508)))

(assert (=> bs!1570040 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344711 lambda!344606))))

(assert (=> bs!1570049 (not (= lambda!344711 lambda!344704))))

(assert (=> bs!1570050 (= (and (= (regOne!32918 r!7292) (regOne!32918 lt!2354652)) (= (regTwo!32918 r!7292) (regTwo!32918 lt!2354652))) (= lambda!344711 lambda!344608))))

(assert (=> bs!1570051 (= (and (= (regOne!32918 r!7292) (regOne!32918 lt!2354656)) (= (regTwo!32918 r!7292) (regTwo!32918 lt!2354656))) (= lambda!344711 lambda!344600))))

(assert (=> bs!1570052 (not (= lambda!344711 lambda!344695))))

(assert (=> bs!1570053 (not (= lambda!344711 lambda!344579))))

(assert (=> bs!1570054 (not (= lambda!344711 lambda!344607))))

(assert (=> bs!1570055 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regTwo!32919 r!7292))) (= (regTwo!32918 r!7292) (regTwo!32918 (regTwo!32919 r!7292)))) (= lambda!344711 lambda!344705))))

(assert (=> d!1972051 true))

(assert (=> d!1972051 true))

(assert (=> d!1972051 true))

(assert (=> d!1972051 (= (Exists!3273 lambda!344710) (Exists!3273 lambda!344711))))

(assert (=> d!1972051 true))

(declare-fun _$90!2104 () Unit!158143)

(assert (=> d!1972051 (= (choose!46645 (regOne!32918 r!7292) (regTwo!32918 r!7292) s!2326) _$90!2104)))

(declare-fun m!7104120 () Bool)

(assert (=> bs!1570056 m!7104120))

(declare-fun m!7104122 () Bool)

(assert (=> bs!1570056 m!7104122))

(assert (=> d!1971297 d!1972051))

(declare-fun bm!531884 () Bool)

(declare-fun call!531890 () Bool)

(declare-fun call!531891 () Bool)

(assert (=> bm!531884 (= call!531890 call!531891)))

(declare-fun b!6283237 () Bool)

(declare-fun res!2591262 () Bool)

(declare-fun e!3820958 () Bool)

(assert (=> b!6283237 (=> res!2591262 e!3820958)))

(assert (=> b!6283237 (= res!2591262 (not ((_ is Concat!25048) (regOne!32918 r!7292))))))

(declare-fun e!3820962 () Bool)

(assert (=> b!6283237 (= e!3820962 e!3820958)))

(declare-fun b!6283238 () Bool)

(declare-fun res!2591259 () Bool)

(declare-fun e!3820957 () Bool)

(assert (=> b!6283238 (=> (not res!2591259) (not e!3820957))))

(declare-fun call!531889 () Bool)

(assert (=> b!6283238 (= res!2591259 call!531889)))

(assert (=> b!6283238 (= e!3820962 e!3820957)))

(declare-fun b!6283239 () Bool)

(declare-fun e!3820959 () Bool)

(assert (=> b!6283239 (= e!3820959 call!531891)))

(declare-fun b!6283240 () Bool)

(assert (=> b!6283240 (= e!3820957 call!531890)))

(declare-fun b!6283241 () Bool)

(declare-fun e!3820960 () Bool)

(declare-fun e!3820961 () Bool)

(assert (=> b!6283241 (= e!3820960 e!3820961)))

(declare-fun c!1139654 () Bool)

(assert (=> b!6283241 (= c!1139654 ((_ is Star!16203) (regOne!32918 r!7292)))))

(declare-fun b!6283242 () Bool)

(assert (=> b!6283242 (= e!3820961 e!3820962)))

(declare-fun c!1139653 () Bool)

(assert (=> b!6283242 (= c!1139653 ((_ is Union!16203) (regOne!32918 r!7292)))))

(declare-fun bm!531885 () Bool)

(assert (=> bm!531885 (= call!531889 (validRegex!7939 (ite c!1139653 (regOne!32919 (regOne!32918 r!7292)) (regOne!32918 (regOne!32918 r!7292)))))))

(declare-fun b!6283244 () Bool)

(assert (=> b!6283244 (= e!3820961 e!3820959)))

(declare-fun res!2591260 () Bool)

(assert (=> b!6283244 (= res!2591260 (not (nullable!6196 (reg!16532 (regOne!32918 r!7292)))))))

(assert (=> b!6283244 (=> (not res!2591260) (not e!3820959))))

(declare-fun b!6283243 () Bool)

(declare-fun e!3820956 () Bool)

(assert (=> b!6283243 (= e!3820956 call!531890)))

(declare-fun d!1972053 () Bool)

(declare-fun res!2591263 () Bool)

(assert (=> d!1972053 (=> res!2591263 e!3820960)))

(assert (=> d!1972053 (= res!2591263 ((_ is ElementMatch!16203) (regOne!32918 r!7292)))))

(assert (=> d!1972053 (= (validRegex!7939 (regOne!32918 r!7292)) e!3820960)))

(declare-fun bm!531886 () Bool)

(assert (=> bm!531886 (= call!531891 (validRegex!7939 (ite c!1139654 (reg!16532 (regOne!32918 r!7292)) (ite c!1139653 (regTwo!32919 (regOne!32918 r!7292)) (regTwo!32918 (regOne!32918 r!7292))))))))

(declare-fun b!6283245 () Bool)

(assert (=> b!6283245 (= e!3820958 e!3820956)))

(declare-fun res!2591261 () Bool)

(assert (=> b!6283245 (=> (not res!2591261) (not e!3820956))))

(assert (=> b!6283245 (= res!2591261 call!531889)))

(assert (= (and d!1972053 (not res!2591263)) b!6283241))

(assert (= (and b!6283241 c!1139654) b!6283244))

(assert (= (and b!6283241 (not c!1139654)) b!6283242))

(assert (= (and b!6283244 res!2591260) b!6283239))

(assert (= (and b!6283242 c!1139653) b!6283238))

(assert (= (and b!6283242 (not c!1139653)) b!6283237))

(assert (= (and b!6283238 res!2591259) b!6283240))

(assert (= (and b!6283237 (not res!2591262)) b!6283245))

(assert (= (and b!6283245 res!2591261) b!6283243))

(assert (= (or b!6283240 b!6283243) bm!531884))

(assert (= (or b!6283238 b!6283245) bm!531885))

(assert (= (or b!6283239 bm!531884) bm!531886))

(declare-fun m!7104124 () Bool)

(assert (=> bm!531885 m!7104124))

(declare-fun m!7104126 () Bool)

(assert (=> b!6283244 m!7104126))

(declare-fun m!7104128 () Bool)

(assert (=> bm!531886 m!7104128))

(assert (=> d!1971297 d!1972053))

(declare-fun d!1972055 () Bool)

(assert (=> d!1972055 (= (isEmptyExpr!1609 lt!2354827) ((_ is EmptyExpr!16203) lt!2354827))))

(assert (=> b!6281806 d!1972055))

(declare-fun d!1972057 () Bool)

(assert (=> d!1972057 (= ($colon$colon!2068 (exprs!6087 lt!2354668) (ite (or c!1139281 c!1139280) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regOne!32918 r!7292)))) (Cons!64784 (ite (or c!1139281 c!1139280) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regOne!32918 r!7292))) (exprs!6087 lt!2354668)))))

(assert (=> bm!531629 d!1972057))

(assert (=> d!1971301 d!1971943))

(assert (=> bm!531588 d!1971931))

(assert (=> b!6281908 d!1971435))

(declare-fun bs!1570057 () Bool)

(declare-fun d!1972059 () Bool)

(assert (= bs!1570057 (and d!1972059 d!1971363)))

(declare-fun lambda!344712 () Int)

(assert (=> bs!1570057 (= lambda!344712 lambda!344602)))

(declare-fun bs!1570058 () Bool)

(assert (= bs!1570058 (and d!1972059 d!1971341)))

(assert (=> bs!1570058 (= lambda!344712 lambda!344595)))

(declare-fun bs!1570059 () Bool)

(assert (= bs!1570059 (and d!1972059 d!1971351)))

(assert (=> bs!1570059 (= lambda!344712 lambda!344601)))

(declare-fun bs!1570060 () Bool)

(assert (= bs!1570060 (and d!1972059 d!1971431)))

(assert (=> bs!1570060 (= lambda!344712 lambda!344616)))

(declare-fun bs!1570061 () Bool)

(assert (= bs!1570061 (and d!1972059 d!1971415)))

(assert (=> bs!1570061 (= lambda!344712 lambda!344612)))

(declare-fun bs!1570062 () Bool)

(assert (= bs!1570062 (and d!1972059 d!1971343)))

(assert (=> bs!1570062 (= lambda!344712 lambda!344598)))

(declare-fun bs!1570063 () Bool)

(assert (= bs!1570063 (and d!1972059 d!1971367)))

(assert (=> bs!1570063 (= lambda!344712 lambda!344604)))

(declare-fun bs!1570064 () Bool)

(assert (= bs!1570064 (and d!1972059 d!1971433)))

(assert (=> bs!1570064 (= lambda!344712 lambda!344619)))

(assert (=> d!1972059 (= (inv!83754 (h!71234 (t!378470 zl!343))) (forall!15344 (exprs!6087 (h!71234 (t!378470 zl!343))) lambda!344712))))

(declare-fun bs!1570065 () Bool)

(assert (= bs!1570065 d!1972059))

(declare-fun m!7104130 () Bool)

(assert (=> bs!1570065 m!7104130))

(assert (=> b!6282031 d!1972059))

(assert (=> d!1971413 d!1971943))

(declare-fun bs!1570066 () Bool)

(declare-fun d!1972061 () Bool)

(assert (= bs!1570066 (and d!1972061 d!1971363)))

(declare-fun lambda!344713 () Int)

(assert (=> bs!1570066 (= lambda!344713 lambda!344602)))

(declare-fun bs!1570067 () Bool)

(assert (= bs!1570067 (and d!1972061 d!1971341)))

(assert (=> bs!1570067 (= lambda!344713 lambda!344595)))

(declare-fun bs!1570068 () Bool)

(assert (= bs!1570068 (and d!1972061 d!1971351)))

(assert (=> bs!1570068 (= lambda!344713 lambda!344601)))

(declare-fun bs!1570069 () Bool)

(assert (= bs!1570069 (and d!1972061 d!1972059)))

(assert (=> bs!1570069 (= lambda!344713 lambda!344712)))

(declare-fun bs!1570070 () Bool)

(assert (= bs!1570070 (and d!1972061 d!1971431)))

(assert (=> bs!1570070 (= lambda!344713 lambda!344616)))

(declare-fun bs!1570071 () Bool)

(assert (= bs!1570071 (and d!1972061 d!1971415)))

(assert (=> bs!1570071 (= lambda!344713 lambda!344612)))

(declare-fun bs!1570072 () Bool)

(assert (= bs!1570072 (and d!1972061 d!1971343)))

(assert (=> bs!1570072 (= lambda!344713 lambda!344598)))

(declare-fun bs!1570073 () Bool)

(assert (= bs!1570073 (and d!1972061 d!1971367)))

(assert (=> bs!1570073 (= lambda!344713 lambda!344604)))

(declare-fun bs!1570074 () Bool)

(assert (= bs!1570074 (and d!1972061 d!1971433)))

(assert (=> bs!1570074 (= lambda!344713 lambda!344619)))

(declare-fun b!6283246 () Bool)

(declare-fun e!3820966 () Regex!16203)

(declare-fun e!3820964 () Regex!16203)

(assert (=> b!6283246 (= e!3820966 e!3820964)))

(declare-fun c!1139655 () Bool)

(assert (=> b!6283246 (= c!1139655 ((_ is Cons!64784) (t!378468 (unfocusZipperList!1624 zl!343))))))

(declare-fun b!6283247 () Bool)

(assert (=> b!6283247 (= e!3820964 EmptyLang!16203)))

(declare-fun b!6283248 () Bool)

(declare-fun e!3820963 () Bool)

(assert (=> b!6283248 (= e!3820963 (isEmpty!36830 (t!378468 (t!378468 (unfocusZipperList!1624 zl!343)))))))

(declare-fun b!6283249 () Bool)

(declare-fun e!3820965 () Bool)

(declare-fun lt!2354935 () Regex!16203)

(assert (=> b!6283249 (= e!3820965 (= lt!2354935 (head!12907 (t!378468 (unfocusZipperList!1624 zl!343)))))))

(declare-fun e!3820967 () Bool)

(assert (=> d!1972061 e!3820967))

(declare-fun res!2591264 () Bool)

(assert (=> d!1972061 (=> (not res!2591264) (not e!3820967))))

(assert (=> d!1972061 (= res!2591264 (validRegex!7939 lt!2354935))))

(assert (=> d!1972061 (= lt!2354935 e!3820966)))

(declare-fun c!1139656 () Bool)

(assert (=> d!1972061 (= c!1139656 e!3820963)))

(declare-fun res!2591265 () Bool)

(assert (=> d!1972061 (=> (not res!2591265) (not e!3820963))))

(assert (=> d!1972061 (= res!2591265 ((_ is Cons!64784) (t!378468 (unfocusZipperList!1624 zl!343))))))

(assert (=> d!1972061 (forall!15344 (t!378468 (unfocusZipperList!1624 zl!343)) lambda!344713)))

(assert (=> d!1972061 (= (generalisedUnion!2047 (t!378468 (unfocusZipperList!1624 zl!343))) lt!2354935)))

(declare-fun b!6283250 () Bool)

(declare-fun e!3820968 () Bool)

(assert (=> b!6283250 (= e!3820967 e!3820968)))

(declare-fun c!1139657 () Bool)

(assert (=> b!6283250 (= c!1139657 (isEmpty!36830 (t!378468 (unfocusZipperList!1624 zl!343))))))

(declare-fun b!6283251 () Bool)

(assert (=> b!6283251 (= e!3820964 (Union!16203 (h!71232 (t!378468 (unfocusZipperList!1624 zl!343))) (generalisedUnion!2047 (t!378468 (t!378468 (unfocusZipperList!1624 zl!343))))))))

(declare-fun b!6283252 () Bool)

(assert (=> b!6283252 (= e!3820966 (h!71232 (t!378468 (unfocusZipperList!1624 zl!343))))))

(declare-fun b!6283253 () Bool)

(assert (=> b!6283253 (= e!3820968 e!3820965)))

(declare-fun c!1139658 () Bool)

(assert (=> b!6283253 (= c!1139658 (isEmpty!36830 (tail!11992 (t!378468 (unfocusZipperList!1624 zl!343)))))))

(declare-fun b!6283254 () Bool)

(assert (=> b!6283254 (= e!3820968 (isEmptyLang!1616 lt!2354935))))

(declare-fun b!6283255 () Bool)

(assert (=> b!6283255 (= e!3820965 (isUnion!1046 lt!2354935))))

(assert (= (and d!1972061 res!2591265) b!6283248))

(assert (= (and d!1972061 c!1139656) b!6283252))

(assert (= (and d!1972061 (not c!1139656)) b!6283246))

(assert (= (and b!6283246 c!1139655) b!6283251))

(assert (= (and b!6283246 (not c!1139655)) b!6283247))

(assert (= (and d!1972061 res!2591264) b!6283250))

(assert (= (and b!6283250 c!1139657) b!6283254))

(assert (= (and b!6283250 (not c!1139657)) b!6283253))

(assert (= (and b!6283253 c!1139658) b!6283249))

(assert (= (and b!6283253 (not c!1139658)) b!6283255))

(declare-fun m!7104132 () Bool)

(assert (=> b!6283255 m!7104132))

(declare-fun m!7104134 () Bool)

(assert (=> b!6283254 m!7104134))

(declare-fun m!7104136 () Bool)

(assert (=> b!6283249 m!7104136))

(assert (=> b!6283250 m!7102926))

(declare-fun m!7104138 () Bool)

(assert (=> b!6283253 m!7104138))

(assert (=> b!6283253 m!7104138))

(declare-fun m!7104140 () Bool)

(assert (=> b!6283253 m!7104140))

(declare-fun m!7104142 () Bool)

(assert (=> b!6283248 m!7104142))

(declare-fun m!7104144 () Bool)

(assert (=> d!1972061 m!7104144))

(declare-fun m!7104146 () Bool)

(assert (=> d!1972061 m!7104146))

(declare-fun m!7104148 () Bool)

(assert (=> b!6283251 m!7104148))

(assert (=> b!6281963 d!1972061))

(declare-fun d!1972063 () Bool)

(assert (=> d!1972063 (= (Exists!3273 (ite c!1139210 lambda!344599 lambda!344600)) (choose!46643 (ite c!1139210 lambda!344599 lambda!344600)))))

(declare-fun bs!1570075 () Bool)

(assert (= bs!1570075 d!1972063))

(declare-fun m!7104150 () Bool)

(assert (=> bs!1570075 m!7104150))

(assert (=> bm!531589 d!1972063))

(declare-fun d!1972065 () Bool)

(declare-fun lt!2354936 () Int)

(assert (=> d!1972065 (> lt!2354936 0)))

(declare-fun e!3820971 () Int)

(assert (=> d!1972065 (= lt!2354936 e!3820971)))

(declare-fun c!1139660 () Bool)

(assert (=> d!1972065 (= c!1139660 ((_ is ElementMatch!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> d!1972065 (= (regexDepthTotal!178 (h!71232 (exprs!6087 (h!71234 zl!343)))) lt!2354936)))

(declare-fun b!6283256 () Bool)

(declare-fun e!3820969 () Int)

(declare-fun call!531894 () Int)

(declare-fun call!531892 () Int)

(assert (=> b!6283256 (= e!3820969 (+ 1 call!531894 call!531892))))

(declare-fun b!6283257 () Bool)

(declare-fun e!3820970 () Int)

(assert (=> b!6283257 (= e!3820970 e!3820969)))

(declare-fun c!1139659 () Bool)

(assert (=> b!6283257 (= c!1139659 ((_ is Concat!25048) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6283258 () Bool)

(declare-fun e!3820972 () Int)

(declare-fun call!531893 () Int)

(assert (=> b!6283258 (= e!3820972 (+ 1 call!531893))))

(declare-fun bm!531887 () Bool)

(assert (=> bm!531887 (= call!531894 call!531893)))

(declare-fun b!6283259 () Bool)

(assert (=> b!6283259 (= e!3820971 e!3820972)))

(declare-fun c!1139661 () Bool)

(assert (=> b!6283259 (= c!1139661 ((_ is Star!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun c!1139662 () Bool)

(declare-fun bm!531888 () Bool)

(assert (=> bm!531888 (= call!531893 (regexDepthTotal!178 (ite c!1139661 (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139662 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343))))))))))

(declare-fun b!6283260 () Bool)

(assert (=> b!6283260 (= e!3820971 1)))

(declare-fun bm!531889 () Bool)

(assert (=> bm!531889 (= call!531892 (regexDepthTotal!178 (ite c!1139662 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))))))))

(declare-fun b!6283261 () Bool)

(assert (=> b!6283261 (= e!3820970 (+ 1 call!531894 call!531892))))

(declare-fun b!6283262 () Bool)

(assert (=> b!6283262 (= c!1139662 ((_ is Union!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> b!6283262 (= e!3820972 e!3820970)))

(declare-fun b!6283263 () Bool)

(assert (=> b!6283263 (= e!3820969 1)))

(assert (= (and d!1972065 c!1139660) b!6283260))

(assert (= (and d!1972065 (not c!1139660)) b!6283259))

(assert (= (and b!6283259 c!1139661) b!6283258))

(assert (= (and b!6283259 (not c!1139661)) b!6283262))

(assert (= (and b!6283262 c!1139662) b!6283261))

(assert (= (and b!6283262 (not c!1139662)) b!6283257))

(assert (= (and b!6283257 c!1139659) b!6283256))

(assert (= (and b!6283257 (not c!1139659)) b!6283263))

(assert (= (or b!6283261 b!6283256) bm!531889))

(assert (= (or b!6283261 b!6283256) bm!531887))

(assert (= (or b!6283258 bm!531887) bm!531888))

(declare-fun m!7104152 () Bool)

(assert (=> bm!531888 m!7104152))

(declare-fun m!7104154 () Bool)

(assert (=> bm!531889 m!7104154))

(assert (=> b!6281982 d!1972065))

(declare-fun d!1972067 () Bool)

(declare-fun lt!2354937 () Int)

(assert (=> d!1972067 (>= lt!2354937 0)))

(declare-fun e!3820973 () Int)

(assert (=> d!1972067 (= lt!2354937 e!3820973)))

(declare-fun c!1139663 () Bool)

(assert (=> d!1972067 (= c!1139663 ((_ is Cons!64784) (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))))))))

(assert (=> d!1972067 (= (contextDepthTotal!326 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343))))) lt!2354937)))

(declare-fun b!6283264 () Bool)

(assert (=> b!6283264 (= e!3820973 (+ (regexDepthTotal!178 (h!71232 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343))))))) (contextDepthTotal!326 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343))))))))))))

(declare-fun b!6283265 () Bool)

(assert (=> b!6283265 (= e!3820973 1)))

(assert (= (and d!1972067 c!1139663) b!6283264))

(assert (= (and d!1972067 (not c!1139663)) b!6283265))

(declare-fun m!7104156 () Bool)

(assert (=> b!6283264 m!7104156))

(declare-fun m!7104158 () Bool)

(assert (=> b!6283264 m!7104158))

(assert (=> b!6281982 d!1972067))

(declare-fun bs!1570076 () Bool)

(declare-fun b!6283276 () Bool)

(assert (= bs!1570076 (and b!6283276 d!1971375)))

(declare-fun lambda!344714 () Int)

(assert (=> bs!1570076 (not (= lambda!344714 lambda!344605))))

(declare-fun bs!1570077 () Bool)

(assert (= bs!1570077 (and b!6283276 d!1971297)))

(assert (=> bs!1570077 (not (= lambda!344714 lambda!344574))))

(declare-fun bs!1570078 () Bool)

(assert (= bs!1570078 (and b!6283276 b!6281727)))

(assert (=> bs!1570078 (= (and (= (reg!16532 (regOne!32919 lt!2354652)) (reg!16532 lt!2354656)) (= (regOne!32919 lt!2354652) lt!2354656)) (= lambda!344714 lambda!344599))))

(declare-fun bs!1570079 () Bool)

(assert (= bs!1570079 (and b!6283276 b!6283024)))

(assert (=> bs!1570079 (not (= lambda!344714 lambda!344696))))

(declare-fun bs!1570080 () Bool)

(assert (= bs!1570080 (and b!6283276 d!1971295)))

(assert (=> bs!1570080 (not (= lambda!344714 lambda!344568))))

(assert (=> bs!1570077 (not (= lambda!344714 lambda!344573))))

(declare-fun bs!1570081 () Bool)

(assert (= bs!1570081 (and b!6283276 d!1971365)))

(assert (=> bs!1570081 (not (= lambda!344714 lambda!344603))))

(declare-fun bs!1570082 () Bool)

(assert (= bs!1570082 (and b!6283276 b!6281621)))

(assert (=> bs!1570082 (not (= lambda!344714 lambda!344580))))

(declare-fun bs!1570083 () Bool)

(assert (= bs!1570083 (and b!6283276 b!6280970)))

(assert (=> bs!1570083 (not (= lambda!344714 lambda!344510))))

(assert (=> bs!1570083 (not (= lambda!344714 lambda!344511))))

(declare-fun bs!1570084 () Bool)

(assert (= bs!1570084 (and b!6283276 d!1972051)))

(assert (=> bs!1570084 (not (= lambda!344714 lambda!344710))))

(declare-fun bs!1570085 () Bool)

(assert (= bs!1570085 (and b!6283276 b!6280967)))

(assert (=> bs!1570085 (not (= lambda!344714 lambda!344508))))

(assert (=> bs!1570076 (not (= lambda!344714 lambda!344606))))

(declare-fun bs!1570086 () Bool)

(assert (= bs!1570086 (and b!6283276 b!6283228)))

(assert (=> bs!1570086 (= (and (= (reg!16532 (regOne!32919 lt!2354652)) (reg!16532 (regTwo!32919 r!7292))) (= (regOne!32919 lt!2354652) (regTwo!32919 r!7292))) (= lambda!344714 lambda!344704))))

(declare-fun bs!1570087 () Bool)

(assert (= bs!1570087 (and b!6283276 b!6281826)))

(assert (=> bs!1570087 (not (= lambda!344714 lambda!344608))))

(declare-fun bs!1570088 () Bool)

(assert (= bs!1570088 (and b!6283276 b!6281721)))

(assert (=> bs!1570088 (not (= lambda!344714 lambda!344600))))

(declare-fun bs!1570089 () Bool)

(assert (= bs!1570089 (and b!6283276 b!6283030)))

(assert (=> bs!1570089 (= (and (= (reg!16532 (regOne!32919 lt!2354652)) (reg!16532 (regOne!32919 lt!2354656))) (= (regOne!32919 lt!2354652) (regOne!32919 lt!2354656))) (= lambda!344714 lambda!344695))))

(declare-fun bs!1570090 () Bool)

(assert (= bs!1570090 (and b!6283276 b!6281627)))

(assert (=> bs!1570090 (= (and (= (reg!16532 (regOne!32919 lt!2354652)) (reg!16532 r!7292)) (= (regOne!32919 lt!2354652) r!7292)) (= lambda!344714 lambda!344579))))

(assert (=> bs!1570085 (not (= lambda!344714 lambda!344507))))

(assert (=> bs!1570084 (not (= lambda!344714 lambda!344711))))

(declare-fun bs!1570091 () Bool)

(assert (= bs!1570091 (and b!6283276 b!6281832)))

(assert (=> bs!1570091 (= (and (= (reg!16532 (regOne!32919 lt!2354652)) (reg!16532 lt!2354652)) (= (regOne!32919 lt!2354652) lt!2354652)) (= lambda!344714 lambda!344607))))

(declare-fun bs!1570092 () Bool)

(assert (= bs!1570092 (and b!6283276 b!6283222)))

(assert (=> bs!1570092 (not (= lambda!344714 lambda!344705))))

(assert (=> b!6283276 true))

(assert (=> b!6283276 true))

(declare-fun bs!1570093 () Bool)

(declare-fun b!6283270 () Bool)

(assert (= bs!1570093 (and b!6283270 d!1971375)))

(declare-fun lambda!344715 () Int)

(assert (=> bs!1570093 (not (= lambda!344715 lambda!344605))))

(declare-fun bs!1570094 () Bool)

(assert (= bs!1570094 (and b!6283270 d!1971297)))

(assert (=> bs!1570094 (= (and (= (regOne!32918 (regOne!32919 lt!2354652)) (regOne!32918 r!7292)) (= (regTwo!32918 (regOne!32919 lt!2354652)) (regTwo!32918 r!7292))) (= lambda!344715 lambda!344574))))

(declare-fun bs!1570095 () Bool)

(assert (= bs!1570095 (and b!6283270 b!6281727)))

(assert (=> bs!1570095 (not (= lambda!344715 lambda!344599))))

(declare-fun bs!1570096 () Bool)

(assert (= bs!1570096 (and b!6283270 b!6283024)))

(assert (=> bs!1570096 (= (and (= (regOne!32918 (regOne!32919 lt!2354652)) (regOne!32918 (regOne!32919 lt!2354656))) (= (regTwo!32918 (regOne!32919 lt!2354652)) (regTwo!32918 (regOne!32919 lt!2354656)))) (= lambda!344715 lambda!344696))))

(declare-fun bs!1570097 () Bool)

(assert (= bs!1570097 (and b!6283270 d!1971295)))

(assert (=> bs!1570097 (not (= lambda!344715 lambda!344568))))

(assert (=> bs!1570094 (not (= lambda!344715 lambda!344573))))

(declare-fun bs!1570098 () Bool)

(assert (= bs!1570098 (and b!6283270 d!1971365)))

(assert (=> bs!1570098 (not (= lambda!344715 lambda!344603))))

(declare-fun bs!1570099 () Bool)

(assert (= bs!1570099 (and b!6283270 b!6281621)))

(assert (=> bs!1570099 (= (and (= (regOne!32918 (regOne!32919 lt!2354652)) (regOne!32918 r!7292)) (= (regTwo!32918 (regOne!32919 lt!2354652)) (regTwo!32918 r!7292))) (= lambda!344715 lambda!344580))))

(declare-fun bs!1570100 () Bool)

(assert (= bs!1570100 (and b!6283270 b!6280970)))

(assert (=> bs!1570100 (not (= lambda!344715 lambda!344510))))

(assert (=> bs!1570100 (= (and (= (regOne!32918 (regOne!32919 lt!2354652)) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 (regOne!32919 lt!2354652)) lt!2354652)) (= lambda!344715 lambda!344511))))

(declare-fun bs!1570101 () Bool)

(assert (= bs!1570101 (and b!6283270 d!1972051)))

(assert (=> bs!1570101 (not (= lambda!344715 lambda!344710))))

(declare-fun bs!1570102 () Bool)

(assert (= bs!1570102 (and b!6283270 b!6280967)))

(assert (=> bs!1570102 (= (and (= (regOne!32918 (regOne!32919 lt!2354652)) (regOne!32918 r!7292)) (= (regTwo!32918 (regOne!32919 lt!2354652)) (regTwo!32918 r!7292))) (= lambda!344715 lambda!344508))))

(declare-fun bs!1570103 () Bool)

(assert (= bs!1570103 (and b!6283270 b!6283276)))

(assert (=> bs!1570103 (not (= lambda!344715 lambda!344714))))

(assert (=> bs!1570093 (= (and (= (regOne!32918 (regOne!32919 lt!2354652)) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 (regOne!32919 lt!2354652)) lt!2354652)) (= lambda!344715 lambda!344606))))

(declare-fun bs!1570104 () Bool)

(assert (= bs!1570104 (and b!6283270 b!6283228)))

(assert (=> bs!1570104 (not (= lambda!344715 lambda!344704))))

(declare-fun bs!1570105 () Bool)

(assert (= bs!1570105 (and b!6283270 b!6281826)))

(assert (=> bs!1570105 (= (and (= (regOne!32918 (regOne!32919 lt!2354652)) (regOne!32918 lt!2354652)) (= (regTwo!32918 (regOne!32919 lt!2354652)) (regTwo!32918 lt!2354652))) (= lambda!344715 lambda!344608))))

(declare-fun bs!1570106 () Bool)

(assert (= bs!1570106 (and b!6283270 b!6281721)))

(assert (=> bs!1570106 (= (and (= (regOne!32918 (regOne!32919 lt!2354652)) (regOne!32918 lt!2354656)) (= (regTwo!32918 (regOne!32919 lt!2354652)) (regTwo!32918 lt!2354656))) (= lambda!344715 lambda!344600))))

(declare-fun bs!1570107 () Bool)

(assert (= bs!1570107 (and b!6283270 b!6283030)))

(assert (=> bs!1570107 (not (= lambda!344715 lambda!344695))))

(declare-fun bs!1570108 () Bool)

(assert (= bs!1570108 (and b!6283270 b!6281627)))

(assert (=> bs!1570108 (not (= lambda!344715 lambda!344579))))

(assert (=> bs!1570102 (not (= lambda!344715 lambda!344507))))

(assert (=> bs!1570101 (= (and (= (regOne!32918 (regOne!32919 lt!2354652)) (regOne!32918 r!7292)) (= (regTwo!32918 (regOne!32919 lt!2354652)) (regTwo!32918 r!7292))) (= lambda!344715 lambda!344711))))

(declare-fun bs!1570109 () Bool)

(assert (= bs!1570109 (and b!6283270 b!6281832)))

(assert (=> bs!1570109 (not (= lambda!344715 lambda!344607))))

(declare-fun bs!1570110 () Bool)

(assert (= bs!1570110 (and b!6283270 b!6283222)))

(assert (=> bs!1570110 (= (and (= (regOne!32918 (regOne!32919 lt!2354652)) (regOne!32918 (regTwo!32919 r!7292))) (= (regTwo!32918 (regOne!32919 lt!2354652)) (regTwo!32918 (regTwo!32919 r!7292)))) (= lambda!344715 lambda!344705))))

(assert (=> b!6283270 true))

(assert (=> b!6283270 true))

(declare-fun b!6283266 () Bool)

(declare-fun e!3820979 () Bool)

(declare-fun e!3820974 () Bool)

(assert (=> b!6283266 (= e!3820979 e!3820974)))

(declare-fun c!1139664 () Bool)

(assert (=> b!6283266 (= c!1139664 ((_ is Star!16203) (regOne!32919 lt!2354652)))))

(declare-fun b!6283267 () Bool)

(declare-fun e!3820978 () Bool)

(assert (=> b!6283267 (= e!3820979 e!3820978)))

(declare-fun res!2591268 () Bool)

(assert (=> b!6283267 (= res!2591268 (matchRSpec!3304 (regOne!32919 (regOne!32919 lt!2354652)) s!2326))))

(assert (=> b!6283267 (=> res!2591268 e!3820978)))

(declare-fun b!6283268 () Bool)

(declare-fun e!3820976 () Bool)

(declare-fun call!531896 () Bool)

(assert (=> b!6283268 (= e!3820976 call!531896)))

(declare-fun d!1972069 () Bool)

(declare-fun c!1139667 () Bool)

(assert (=> d!1972069 (= c!1139667 ((_ is EmptyExpr!16203) (regOne!32919 lt!2354652)))))

(assert (=> d!1972069 (= (matchRSpec!3304 (regOne!32919 lt!2354652) s!2326) e!3820976)))

(declare-fun b!6283269 () Bool)

(assert (=> b!6283269 (= e!3820978 (matchRSpec!3304 (regTwo!32919 (regOne!32919 lt!2354652)) s!2326))))

(declare-fun call!531895 () Bool)

(assert (=> b!6283270 (= e!3820974 call!531895)))

(declare-fun b!6283271 () Bool)

(declare-fun e!3820975 () Bool)

(assert (=> b!6283271 (= e!3820975 (= s!2326 (Cons!64785 (c!1138982 (regOne!32919 lt!2354652)) Nil!64785)))))

(declare-fun b!6283272 () Bool)

(declare-fun e!3820980 () Bool)

(assert (=> b!6283272 (= e!3820976 e!3820980)))

(declare-fun res!2591266 () Bool)

(assert (=> b!6283272 (= res!2591266 (not ((_ is EmptyLang!16203) (regOne!32919 lt!2354652))))))

(assert (=> b!6283272 (=> (not res!2591266) (not e!3820980))))

(declare-fun b!6283273 () Bool)

(declare-fun res!2591267 () Bool)

(declare-fun e!3820977 () Bool)

(assert (=> b!6283273 (=> res!2591267 e!3820977)))

(assert (=> b!6283273 (= res!2591267 call!531896)))

(assert (=> b!6283273 (= e!3820974 e!3820977)))

(declare-fun bm!531890 () Bool)

(assert (=> bm!531890 (= call!531896 (isEmpty!36834 s!2326))))

(declare-fun b!6283274 () Bool)

(declare-fun c!1139665 () Bool)

(assert (=> b!6283274 (= c!1139665 ((_ is Union!16203) (regOne!32919 lt!2354652)))))

(assert (=> b!6283274 (= e!3820975 e!3820979)))

(declare-fun b!6283275 () Bool)

(declare-fun c!1139666 () Bool)

(assert (=> b!6283275 (= c!1139666 ((_ is ElementMatch!16203) (regOne!32919 lt!2354652)))))

(assert (=> b!6283275 (= e!3820980 e!3820975)))

(assert (=> b!6283276 (= e!3820977 call!531895)))

(declare-fun bm!531891 () Bool)

(assert (=> bm!531891 (= call!531895 (Exists!3273 (ite c!1139664 lambda!344714 lambda!344715)))))

(assert (= (and d!1972069 c!1139667) b!6283268))

(assert (= (and d!1972069 (not c!1139667)) b!6283272))

(assert (= (and b!6283272 res!2591266) b!6283275))

(assert (= (and b!6283275 c!1139666) b!6283271))

(assert (= (and b!6283275 (not c!1139666)) b!6283274))

(assert (= (and b!6283274 c!1139665) b!6283267))

(assert (= (and b!6283274 (not c!1139665)) b!6283266))

(assert (= (and b!6283267 (not res!2591268)) b!6283269))

(assert (= (and b!6283266 c!1139664) b!6283273))

(assert (= (and b!6283266 (not c!1139664)) b!6283270))

(assert (= (and b!6283273 (not res!2591267)) b!6283276))

(assert (= (or b!6283276 b!6283270) bm!531891))

(assert (= (or b!6283268 b!6283273) bm!531890))

(declare-fun m!7104160 () Bool)

(assert (=> b!6283267 m!7104160))

(declare-fun m!7104162 () Bool)

(assert (=> b!6283269 m!7104162))

(assert (=> bm!531890 m!7102600))

(declare-fun m!7104164 () Bool)

(assert (=> bm!531891 m!7104164))

(assert (=> b!6281823 d!1972069))

(declare-fun bs!1570111 () Bool)

(declare-fun d!1972071 () Bool)

(assert (= bs!1570111 (and d!1972071 d!1972033)))

(declare-fun lambda!344716 () Int)

(assert (=> bs!1570111 (= lambda!344716 lambda!344703)))

(declare-fun bs!1570112 () Bool)

(assert (= bs!1570112 (and d!1972071 b!6281686)))

(assert (=> bs!1570112 (not (= lambda!344716 lambda!344592))))

(declare-fun bs!1570113 () Bool)

(assert (= bs!1570113 (and d!1972071 b!6281684)))

(assert (=> bs!1570113 (not (= lambda!344716 lambda!344591))))

(declare-fun bs!1570114 () Bool)

(assert (= bs!1570114 (and d!1972071 b!6281681)))

(assert (=> bs!1570114 (not (= lambda!344716 lambda!344589))))

(declare-fun bs!1570115 () Bool)

(assert (= bs!1570115 (and d!1972071 d!1971997)))

(assert (=> bs!1570115 (= lambda!344716 lambda!344700)))

(declare-fun bs!1570116 () Bool)

(assert (= bs!1570116 (and d!1972071 b!6281679)))

(assert (=> bs!1570116 (not (= lambda!344716 lambda!344588))))

(assert (=> d!1972071 (= (nullableZipper!1973 lt!2354669) (exists!2527 lt!2354669 lambda!344716))))

(declare-fun bs!1570117 () Bool)

(assert (= bs!1570117 d!1972071))

(declare-fun m!7104166 () Bool)

(assert (=> bs!1570117 m!7104166))

(assert (=> b!6281558 d!1972071))

(assert (=> d!1971379 d!1971371))

(assert (=> d!1971379 d!1971377))

(declare-fun d!1972073 () Bool)

(assert (=> d!1972073 (= (matchR!8386 lt!2354652 s!2326) (matchRSpec!3304 lt!2354652 s!2326))))

(assert (=> d!1972073 true))

(declare-fun _$88!4929 () Unit!158143)

(assert (=> d!1972073 (= (choose!46649 lt!2354652 s!2326) _$88!4929)))

(declare-fun bs!1570118 () Bool)

(assert (= bs!1570118 d!1972073))

(assert (=> bs!1570118 m!7102016))

(assert (=> bs!1570118 m!7102022))

(assert (=> d!1971379 d!1972073))

(assert (=> d!1971379 d!1971995))

(assert (=> d!1971407 d!1971943))

(assert (=> b!6281900 d!1971439))

(declare-fun d!1972075 () Bool)

(declare-fun lt!2354938 () Int)

(assert (=> d!1972075 (>= lt!2354938 0)))

(declare-fun e!3820981 () Int)

(assert (=> d!1972075 (= lt!2354938 e!3820981)))

(declare-fun c!1139668 () Bool)

(assert (=> d!1972075 (= c!1139668 ((_ is Cons!64786) (t!378470 zl!343)))))

(assert (=> d!1972075 (= (zipperDepthTotal!356 (t!378470 zl!343)) lt!2354938)))

(declare-fun b!6283277 () Bool)

(assert (=> b!6283277 (= e!3820981 (+ (contextDepthTotal!326 (h!71234 (t!378470 zl!343))) (zipperDepthTotal!356 (t!378470 (t!378470 zl!343)))))))

(declare-fun b!6283278 () Bool)

(assert (=> b!6283278 (= e!3820981 0)))

(assert (= (and d!1972075 c!1139668) b!6283277))

(assert (= (and d!1972075 (not c!1139668)) b!6283278))

(declare-fun m!7104168 () Bool)

(assert (=> b!6283277 m!7104168))

(declare-fun m!7104170 () Bool)

(assert (=> b!6283277 m!7104170))

(assert (=> b!6281900 d!1972075))

(declare-fun d!1972077 () Bool)

(assert (=> d!1972077 (= (isConcat!1132 lt!2354827) ((_ is Concat!25048) lt!2354827))))

(assert (=> b!6281801 d!1972077))

(assert (=> bm!531600 d!1971931))

(declare-fun b!6283288 () Bool)

(declare-fun e!3820986 () List!64909)

(assert (=> b!6283288 (= e!3820986 (Cons!64785 (h!71233 (_1!36485 (get!22393 lt!2354770))) (++!14276 (t!378469 (_1!36485 (get!22393 lt!2354770))) (_2!36485 (get!22393 lt!2354770)))))))

(declare-fun d!1972079 () Bool)

(declare-fun e!3820987 () Bool)

(assert (=> d!1972079 e!3820987))

(declare-fun res!2591273 () Bool)

(assert (=> d!1972079 (=> (not res!2591273) (not e!3820987))))

(declare-fun lt!2354941 () List!64909)

(declare-fun content!12180 (List!64909) (InoxSet C!32676))

(assert (=> d!1972079 (= res!2591273 (= (content!12180 lt!2354941) ((_ map or) (content!12180 (_1!36485 (get!22393 lt!2354770))) (content!12180 (_2!36485 (get!22393 lt!2354770))))))))

(assert (=> d!1972079 (= lt!2354941 e!3820986)))

(declare-fun c!1139671 () Bool)

(assert (=> d!1972079 (= c!1139671 ((_ is Nil!64785) (_1!36485 (get!22393 lt!2354770))))))

(assert (=> d!1972079 (= (++!14276 (_1!36485 (get!22393 lt!2354770)) (_2!36485 (get!22393 lt!2354770))) lt!2354941)))

(declare-fun b!6283289 () Bool)

(declare-fun res!2591274 () Bool)

(assert (=> b!6283289 (=> (not res!2591274) (not e!3820987))))

(declare-fun size!40314 (List!64909) Int)

(assert (=> b!6283289 (= res!2591274 (= (size!40314 lt!2354941) (+ (size!40314 (_1!36485 (get!22393 lt!2354770))) (size!40314 (_2!36485 (get!22393 lt!2354770))))))))

(declare-fun b!6283290 () Bool)

(assert (=> b!6283290 (= e!3820987 (or (not (= (_2!36485 (get!22393 lt!2354770)) Nil!64785)) (= lt!2354941 (_1!36485 (get!22393 lt!2354770)))))))

(declare-fun b!6283287 () Bool)

(assert (=> b!6283287 (= e!3820986 (_2!36485 (get!22393 lt!2354770)))))

(assert (= (and d!1972079 c!1139671) b!6283287))

(assert (= (and d!1972079 (not c!1139671)) b!6283288))

(assert (= (and d!1972079 res!2591273) b!6283289))

(assert (= (and b!6283289 res!2591274) b!6283290))

(declare-fun m!7104172 () Bool)

(assert (=> b!6283288 m!7104172))

(declare-fun m!7104174 () Bool)

(assert (=> d!1972079 m!7104174))

(declare-fun m!7104176 () Bool)

(assert (=> d!1972079 m!7104176))

(declare-fun m!7104178 () Bool)

(assert (=> d!1972079 m!7104178))

(declare-fun m!7104180 () Bool)

(assert (=> b!6283289 m!7104180))

(declare-fun m!7104182 () Bool)

(assert (=> b!6283289 m!7104182))

(declare-fun m!7104184 () Bool)

(assert (=> b!6283289 m!7104184))

(assert (=> b!6281531 d!1972079))

(assert (=> b!6281531 d!1971983))

(declare-fun bm!531892 () Bool)

(declare-fun call!531897 () (InoxSet Context!11174))

(assert (=> bm!531892 (= call!531897 (derivationStepZipperDown!1451 (h!71232 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354638))))) (Context!11175 (t!378468 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354638)))))) (h!71233 s!2326)))))

(declare-fun b!6283291 () Bool)

(declare-fun e!3820989 () (InoxSet Context!11174))

(assert (=> b!6283291 (= e!3820989 ((as const (Array Context!11174 Bool)) false))))

(declare-fun b!6283292 () Bool)

(declare-fun e!3820990 () (InoxSet Context!11174))

(assert (=> b!6283292 (= e!3820990 e!3820989)))

(declare-fun c!1139673 () Bool)

(assert (=> b!6283292 (= c!1139673 ((_ is Cons!64784) (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354638))))))))

(declare-fun b!6283293 () Bool)

(assert (=> b!6283293 (= e!3820990 ((_ map or) call!531897 (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354638)))))) (h!71233 s!2326))))))

(declare-fun d!1972081 () Bool)

(declare-fun c!1139672 () Bool)

(declare-fun e!3820988 () Bool)

(assert (=> d!1972081 (= c!1139672 e!3820988)))

(declare-fun res!2591275 () Bool)

(assert (=> d!1972081 (=> (not res!2591275) (not e!3820988))))

(assert (=> d!1972081 (= res!2591275 ((_ is Cons!64784) (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354638))))))))

(assert (=> d!1972081 (= (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 lt!2354638))) (h!71233 s!2326)) e!3820990)))

(declare-fun b!6283294 () Bool)

(assert (=> b!6283294 (= e!3820988 (nullable!6196 (h!71232 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354638)))))))))

(declare-fun b!6283295 () Bool)

(assert (=> b!6283295 (= e!3820989 call!531897)))

(assert (= (and d!1972081 res!2591275) b!6283294))

(assert (= (and d!1972081 c!1139672) b!6283293))

(assert (= (and d!1972081 (not c!1139672)) b!6283292))

(assert (= (and b!6283292 c!1139673) b!6283295))

(assert (= (and b!6283292 (not c!1139673)) b!6283291))

(assert (= (or b!6283293 b!6283295) bm!531892))

(declare-fun m!7104186 () Bool)

(assert (=> bm!531892 m!7104186))

(declare-fun m!7104188 () Bool)

(assert (=> b!6283293 m!7104188))

(declare-fun m!7104190 () Bool)

(assert (=> b!6283294 m!7104190))

(assert (=> b!6281935 d!1972081))

(declare-fun d!1972083 () Bool)

(assert (=> d!1972083 (= (isEmpty!36830 (tail!11992 (exprs!6087 (h!71234 zl!343)))) ((_ is Nil!64784) (tail!11992 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> b!6281714 d!1972083))

(declare-fun d!1972085 () Bool)

(assert (=> d!1972085 (= (tail!11992 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))

(assert (=> b!6281714 d!1972085))

(declare-fun bs!1570119 () Bool)

(declare-fun b!6283306 () Bool)

(assert (= bs!1570119 (and b!6283306 d!1971375)))

(declare-fun lambda!344717 () Int)

(assert (=> bs!1570119 (not (= lambda!344717 lambda!344605))))

(declare-fun bs!1570120 () Bool)

(assert (= bs!1570120 (and b!6283306 d!1971297)))

(assert (=> bs!1570120 (not (= lambda!344717 lambda!344574))))

(declare-fun bs!1570121 () Bool)

(assert (= bs!1570121 (and b!6283306 b!6281727)))

(assert (=> bs!1570121 (= (and (= (reg!16532 (regTwo!32919 lt!2354656)) (reg!16532 lt!2354656)) (= (regTwo!32919 lt!2354656) lt!2354656)) (= lambda!344717 lambda!344599))))

(declare-fun bs!1570122 () Bool)

(assert (= bs!1570122 (and b!6283306 b!6283024)))

(assert (=> bs!1570122 (not (= lambda!344717 lambda!344696))))

(declare-fun bs!1570123 () Bool)

(assert (= bs!1570123 (and b!6283306 d!1971295)))

(assert (=> bs!1570123 (not (= lambda!344717 lambda!344568))))

(assert (=> bs!1570120 (not (= lambda!344717 lambda!344573))))

(declare-fun bs!1570124 () Bool)

(assert (= bs!1570124 (and b!6283306 d!1971365)))

(assert (=> bs!1570124 (not (= lambda!344717 lambda!344603))))

(declare-fun bs!1570125 () Bool)

(assert (= bs!1570125 (and b!6283306 b!6281621)))

(assert (=> bs!1570125 (not (= lambda!344717 lambda!344580))))

(declare-fun bs!1570126 () Bool)

(assert (= bs!1570126 (and b!6283306 b!6280970)))

(assert (=> bs!1570126 (not (= lambda!344717 lambda!344510))))

(assert (=> bs!1570126 (not (= lambda!344717 lambda!344511))))

(declare-fun bs!1570127 () Bool)

(assert (= bs!1570127 (and b!6283306 d!1972051)))

(assert (=> bs!1570127 (not (= lambda!344717 lambda!344710))))

(declare-fun bs!1570128 () Bool)

(assert (= bs!1570128 (and b!6283306 b!6283270)))

(assert (=> bs!1570128 (not (= lambda!344717 lambda!344715))))

(declare-fun bs!1570129 () Bool)

(assert (= bs!1570129 (and b!6283306 b!6280967)))

(assert (=> bs!1570129 (not (= lambda!344717 lambda!344508))))

(declare-fun bs!1570130 () Bool)

(assert (= bs!1570130 (and b!6283306 b!6283276)))

(assert (=> bs!1570130 (= (and (= (reg!16532 (regTwo!32919 lt!2354656)) (reg!16532 (regOne!32919 lt!2354652))) (= (regTwo!32919 lt!2354656) (regOne!32919 lt!2354652))) (= lambda!344717 lambda!344714))))

(assert (=> bs!1570119 (not (= lambda!344717 lambda!344606))))

(declare-fun bs!1570131 () Bool)

(assert (= bs!1570131 (and b!6283306 b!6283228)))

(assert (=> bs!1570131 (= (and (= (reg!16532 (regTwo!32919 lt!2354656)) (reg!16532 (regTwo!32919 r!7292))) (= (regTwo!32919 lt!2354656) (regTwo!32919 r!7292))) (= lambda!344717 lambda!344704))))

(declare-fun bs!1570132 () Bool)

(assert (= bs!1570132 (and b!6283306 b!6281826)))

(assert (=> bs!1570132 (not (= lambda!344717 lambda!344608))))

(declare-fun bs!1570133 () Bool)

(assert (= bs!1570133 (and b!6283306 b!6281721)))

(assert (=> bs!1570133 (not (= lambda!344717 lambda!344600))))

(declare-fun bs!1570134 () Bool)

(assert (= bs!1570134 (and b!6283306 b!6283030)))

(assert (=> bs!1570134 (= (and (= (reg!16532 (regTwo!32919 lt!2354656)) (reg!16532 (regOne!32919 lt!2354656))) (= (regTwo!32919 lt!2354656) (regOne!32919 lt!2354656))) (= lambda!344717 lambda!344695))))

(declare-fun bs!1570135 () Bool)

(assert (= bs!1570135 (and b!6283306 b!6281627)))

(assert (=> bs!1570135 (= (and (= (reg!16532 (regTwo!32919 lt!2354656)) (reg!16532 r!7292)) (= (regTwo!32919 lt!2354656) r!7292)) (= lambda!344717 lambda!344579))))

(assert (=> bs!1570129 (not (= lambda!344717 lambda!344507))))

(assert (=> bs!1570127 (not (= lambda!344717 lambda!344711))))

(declare-fun bs!1570136 () Bool)

(assert (= bs!1570136 (and b!6283306 b!6281832)))

(assert (=> bs!1570136 (= (and (= (reg!16532 (regTwo!32919 lt!2354656)) (reg!16532 lt!2354652)) (= (regTwo!32919 lt!2354656) lt!2354652)) (= lambda!344717 lambda!344607))))

(declare-fun bs!1570137 () Bool)

(assert (= bs!1570137 (and b!6283306 b!6283222)))

(assert (=> bs!1570137 (not (= lambda!344717 lambda!344705))))

(assert (=> b!6283306 true))

(assert (=> b!6283306 true))

(declare-fun bs!1570138 () Bool)

(declare-fun b!6283300 () Bool)

(assert (= bs!1570138 (and b!6283300 d!1971375)))

(declare-fun lambda!344718 () Int)

(assert (=> bs!1570138 (not (= lambda!344718 lambda!344605))))

(declare-fun bs!1570139 () Bool)

(assert (= bs!1570139 (and b!6283300 d!1971297)))

(assert (=> bs!1570139 (= (and (= (regOne!32918 (regTwo!32919 lt!2354656)) (regOne!32918 r!7292)) (= (regTwo!32918 (regTwo!32919 lt!2354656)) (regTwo!32918 r!7292))) (= lambda!344718 lambda!344574))))

(declare-fun bs!1570140 () Bool)

(assert (= bs!1570140 (and b!6283300 b!6281727)))

(assert (=> bs!1570140 (not (= lambda!344718 lambda!344599))))

(declare-fun bs!1570141 () Bool)

(assert (= bs!1570141 (and b!6283300 b!6283306)))

(assert (=> bs!1570141 (not (= lambda!344718 lambda!344717))))

(declare-fun bs!1570142 () Bool)

(assert (= bs!1570142 (and b!6283300 b!6283024)))

(assert (=> bs!1570142 (= (and (= (regOne!32918 (regTwo!32919 lt!2354656)) (regOne!32918 (regOne!32919 lt!2354656))) (= (regTwo!32918 (regTwo!32919 lt!2354656)) (regTwo!32918 (regOne!32919 lt!2354656)))) (= lambda!344718 lambda!344696))))

(declare-fun bs!1570143 () Bool)

(assert (= bs!1570143 (and b!6283300 d!1971295)))

(assert (=> bs!1570143 (not (= lambda!344718 lambda!344568))))

(assert (=> bs!1570139 (not (= lambda!344718 lambda!344573))))

(declare-fun bs!1570144 () Bool)

(assert (= bs!1570144 (and b!6283300 d!1971365)))

(assert (=> bs!1570144 (not (= lambda!344718 lambda!344603))))

(declare-fun bs!1570145 () Bool)

(assert (= bs!1570145 (and b!6283300 b!6281621)))

(assert (=> bs!1570145 (= (and (= (regOne!32918 (regTwo!32919 lt!2354656)) (regOne!32918 r!7292)) (= (regTwo!32918 (regTwo!32919 lt!2354656)) (regTwo!32918 r!7292))) (= lambda!344718 lambda!344580))))

(declare-fun bs!1570146 () Bool)

(assert (= bs!1570146 (and b!6283300 b!6280970)))

(assert (=> bs!1570146 (not (= lambda!344718 lambda!344510))))

(assert (=> bs!1570146 (= (and (= (regOne!32918 (regTwo!32919 lt!2354656)) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 (regTwo!32919 lt!2354656)) lt!2354652)) (= lambda!344718 lambda!344511))))

(declare-fun bs!1570147 () Bool)

(assert (= bs!1570147 (and b!6283300 d!1972051)))

(assert (=> bs!1570147 (not (= lambda!344718 lambda!344710))))

(declare-fun bs!1570148 () Bool)

(assert (= bs!1570148 (and b!6283300 b!6283270)))

(assert (=> bs!1570148 (= (and (= (regOne!32918 (regTwo!32919 lt!2354656)) (regOne!32918 (regOne!32919 lt!2354652))) (= (regTwo!32918 (regTwo!32919 lt!2354656)) (regTwo!32918 (regOne!32919 lt!2354652)))) (= lambda!344718 lambda!344715))))

(declare-fun bs!1570149 () Bool)

(assert (= bs!1570149 (and b!6283300 b!6280967)))

(assert (=> bs!1570149 (= (and (= (regOne!32918 (regTwo!32919 lt!2354656)) (regOne!32918 r!7292)) (= (regTwo!32918 (regTwo!32919 lt!2354656)) (regTwo!32918 r!7292))) (= lambda!344718 lambda!344508))))

(declare-fun bs!1570150 () Bool)

(assert (= bs!1570150 (and b!6283300 b!6283276)))

(assert (=> bs!1570150 (not (= lambda!344718 lambda!344714))))

(assert (=> bs!1570138 (= (and (= (regOne!32918 (regTwo!32919 lt!2354656)) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 (regTwo!32919 lt!2354656)) lt!2354652)) (= lambda!344718 lambda!344606))))

(declare-fun bs!1570151 () Bool)

(assert (= bs!1570151 (and b!6283300 b!6283228)))

(assert (=> bs!1570151 (not (= lambda!344718 lambda!344704))))

(declare-fun bs!1570152 () Bool)

(assert (= bs!1570152 (and b!6283300 b!6281826)))

(assert (=> bs!1570152 (= (and (= (regOne!32918 (regTwo!32919 lt!2354656)) (regOne!32918 lt!2354652)) (= (regTwo!32918 (regTwo!32919 lt!2354656)) (regTwo!32918 lt!2354652))) (= lambda!344718 lambda!344608))))

(declare-fun bs!1570153 () Bool)

(assert (= bs!1570153 (and b!6283300 b!6281721)))

(assert (=> bs!1570153 (= (and (= (regOne!32918 (regTwo!32919 lt!2354656)) (regOne!32918 lt!2354656)) (= (regTwo!32918 (regTwo!32919 lt!2354656)) (regTwo!32918 lt!2354656))) (= lambda!344718 lambda!344600))))

(declare-fun bs!1570154 () Bool)

(assert (= bs!1570154 (and b!6283300 b!6283030)))

(assert (=> bs!1570154 (not (= lambda!344718 lambda!344695))))

(declare-fun bs!1570155 () Bool)

(assert (= bs!1570155 (and b!6283300 b!6281627)))

(assert (=> bs!1570155 (not (= lambda!344718 lambda!344579))))

(assert (=> bs!1570149 (not (= lambda!344718 lambda!344507))))

(assert (=> bs!1570147 (= (and (= (regOne!32918 (regTwo!32919 lt!2354656)) (regOne!32918 r!7292)) (= (regTwo!32918 (regTwo!32919 lt!2354656)) (regTwo!32918 r!7292))) (= lambda!344718 lambda!344711))))

(declare-fun bs!1570156 () Bool)

(assert (= bs!1570156 (and b!6283300 b!6281832)))

(assert (=> bs!1570156 (not (= lambda!344718 lambda!344607))))

(declare-fun bs!1570157 () Bool)

(assert (= bs!1570157 (and b!6283300 b!6283222)))

(assert (=> bs!1570157 (= (and (= (regOne!32918 (regTwo!32919 lt!2354656)) (regOne!32918 (regTwo!32919 r!7292))) (= (regTwo!32918 (regTwo!32919 lt!2354656)) (regTwo!32918 (regTwo!32919 r!7292)))) (= lambda!344718 lambda!344705))))

(assert (=> b!6283300 true))

(assert (=> b!6283300 true))

(declare-fun b!6283296 () Bool)

(declare-fun e!3820996 () Bool)

(declare-fun e!3820991 () Bool)

(assert (=> b!6283296 (= e!3820996 e!3820991)))

(declare-fun c!1139674 () Bool)

(assert (=> b!6283296 (= c!1139674 ((_ is Star!16203) (regTwo!32919 lt!2354656)))))

(declare-fun b!6283297 () Bool)

(declare-fun e!3820995 () Bool)

(assert (=> b!6283297 (= e!3820996 e!3820995)))

(declare-fun res!2591278 () Bool)

(assert (=> b!6283297 (= res!2591278 (matchRSpec!3304 (regOne!32919 (regTwo!32919 lt!2354656)) s!2326))))

(assert (=> b!6283297 (=> res!2591278 e!3820995)))

(declare-fun b!6283298 () Bool)

(declare-fun e!3820993 () Bool)

(declare-fun call!531899 () Bool)

(assert (=> b!6283298 (= e!3820993 call!531899)))

(declare-fun d!1972087 () Bool)

(declare-fun c!1139677 () Bool)

(assert (=> d!1972087 (= c!1139677 ((_ is EmptyExpr!16203) (regTwo!32919 lt!2354656)))))

(assert (=> d!1972087 (= (matchRSpec!3304 (regTwo!32919 lt!2354656) s!2326) e!3820993)))

(declare-fun b!6283299 () Bool)

(assert (=> b!6283299 (= e!3820995 (matchRSpec!3304 (regTwo!32919 (regTwo!32919 lt!2354656)) s!2326))))

(declare-fun call!531898 () Bool)

(assert (=> b!6283300 (= e!3820991 call!531898)))

(declare-fun b!6283301 () Bool)

(declare-fun e!3820992 () Bool)

(assert (=> b!6283301 (= e!3820992 (= s!2326 (Cons!64785 (c!1138982 (regTwo!32919 lt!2354656)) Nil!64785)))))

(declare-fun b!6283302 () Bool)

(declare-fun e!3820997 () Bool)

(assert (=> b!6283302 (= e!3820993 e!3820997)))

(declare-fun res!2591276 () Bool)

(assert (=> b!6283302 (= res!2591276 (not ((_ is EmptyLang!16203) (regTwo!32919 lt!2354656))))))

(assert (=> b!6283302 (=> (not res!2591276) (not e!3820997))))

(declare-fun b!6283303 () Bool)

(declare-fun res!2591277 () Bool)

(declare-fun e!3820994 () Bool)

(assert (=> b!6283303 (=> res!2591277 e!3820994)))

(assert (=> b!6283303 (= res!2591277 call!531899)))

(assert (=> b!6283303 (= e!3820991 e!3820994)))

(declare-fun bm!531893 () Bool)

(assert (=> bm!531893 (= call!531899 (isEmpty!36834 s!2326))))

(declare-fun b!6283304 () Bool)

(declare-fun c!1139675 () Bool)

(assert (=> b!6283304 (= c!1139675 ((_ is Union!16203) (regTwo!32919 lt!2354656)))))

(assert (=> b!6283304 (= e!3820992 e!3820996)))

(declare-fun b!6283305 () Bool)

(declare-fun c!1139676 () Bool)

(assert (=> b!6283305 (= c!1139676 ((_ is ElementMatch!16203) (regTwo!32919 lt!2354656)))))

(assert (=> b!6283305 (= e!3820997 e!3820992)))

(assert (=> b!6283306 (= e!3820994 call!531898)))

(declare-fun bm!531894 () Bool)

(assert (=> bm!531894 (= call!531898 (Exists!3273 (ite c!1139674 lambda!344717 lambda!344718)))))

(assert (= (and d!1972087 c!1139677) b!6283298))

(assert (= (and d!1972087 (not c!1139677)) b!6283302))

(assert (= (and b!6283302 res!2591276) b!6283305))

(assert (= (and b!6283305 c!1139676) b!6283301))

(assert (= (and b!6283305 (not c!1139676)) b!6283304))

(assert (= (and b!6283304 c!1139675) b!6283297))

(assert (= (and b!6283304 (not c!1139675)) b!6283296))

(assert (= (and b!6283297 (not res!2591278)) b!6283299))

(assert (= (and b!6283296 c!1139674) b!6283303))

(assert (= (and b!6283296 (not c!1139674)) b!6283300))

(assert (= (and b!6283303 (not res!2591277)) b!6283306))

(assert (= (or b!6283306 b!6283300) bm!531894))

(assert (= (or b!6283298 b!6283303) bm!531893))

(declare-fun m!7104192 () Bool)

(assert (=> b!6283297 m!7104192))

(declare-fun m!7104194 () Bool)

(assert (=> b!6283299 m!7104194))

(assert (=> bm!531893 m!7102600))

(declare-fun m!7104196 () Bool)

(assert (=> bm!531894 m!7104196))

(assert (=> b!6281720 d!1972087))

(declare-fun bm!531895 () Bool)

(declare-fun call!531901 () Bool)

(declare-fun call!531902 () Bool)

(assert (=> bm!531895 (= call!531901 call!531902)))

(declare-fun b!6283307 () Bool)

(declare-fun res!2591282 () Bool)

(declare-fun e!3821000 () Bool)

(assert (=> b!6283307 (=> res!2591282 e!3821000)))

(assert (=> b!6283307 (= res!2591282 (not ((_ is Concat!25048) lt!2354827)))))

(declare-fun e!3821004 () Bool)

(assert (=> b!6283307 (= e!3821004 e!3821000)))

(declare-fun b!6283308 () Bool)

(declare-fun res!2591279 () Bool)

(declare-fun e!3820999 () Bool)

(assert (=> b!6283308 (=> (not res!2591279) (not e!3820999))))

(declare-fun call!531900 () Bool)

(assert (=> b!6283308 (= res!2591279 call!531900)))

(assert (=> b!6283308 (= e!3821004 e!3820999)))

(declare-fun b!6283309 () Bool)

(declare-fun e!3821001 () Bool)

(assert (=> b!6283309 (= e!3821001 call!531902)))

(declare-fun b!6283310 () Bool)

(assert (=> b!6283310 (= e!3820999 call!531901)))

(declare-fun b!6283311 () Bool)

(declare-fun e!3821002 () Bool)

(declare-fun e!3821003 () Bool)

(assert (=> b!6283311 (= e!3821002 e!3821003)))

(declare-fun c!1139679 () Bool)

(assert (=> b!6283311 (= c!1139679 ((_ is Star!16203) lt!2354827))))

(declare-fun b!6283312 () Bool)

(assert (=> b!6283312 (= e!3821003 e!3821004)))

(declare-fun c!1139678 () Bool)

(assert (=> b!6283312 (= c!1139678 ((_ is Union!16203) lt!2354827))))

(declare-fun bm!531896 () Bool)

(assert (=> bm!531896 (= call!531900 (validRegex!7939 (ite c!1139678 (regOne!32919 lt!2354827) (regOne!32918 lt!2354827))))))

(declare-fun b!6283314 () Bool)

(assert (=> b!6283314 (= e!3821003 e!3821001)))

(declare-fun res!2591280 () Bool)

(assert (=> b!6283314 (= res!2591280 (not (nullable!6196 (reg!16532 lt!2354827))))))

(assert (=> b!6283314 (=> (not res!2591280) (not e!3821001))))

(declare-fun b!6283313 () Bool)

(declare-fun e!3820998 () Bool)

(assert (=> b!6283313 (= e!3820998 call!531901)))

(declare-fun d!1972089 () Bool)

(declare-fun res!2591283 () Bool)

(assert (=> d!1972089 (=> res!2591283 e!3821002)))

(assert (=> d!1972089 (= res!2591283 ((_ is ElementMatch!16203) lt!2354827))))

(assert (=> d!1972089 (= (validRegex!7939 lt!2354827) e!3821002)))

(declare-fun bm!531897 () Bool)

(assert (=> bm!531897 (= call!531902 (validRegex!7939 (ite c!1139679 (reg!16532 lt!2354827) (ite c!1139678 (regTwo!32919 lt!2354827) (regTwo!32918 lt!2354827)))))))

(declare-fun b!6283315 () Bool)

(assert (=> b!6283315 (= e!3821000 e!3820998)))

(declare-fun res!2591281 () Bool)

(assert (=> b!6283315 (=> (not res!2591281) (not e!3820998))))

(assert (=> b!6283315 (= res!2591281 call!531900)))

(assert (= (and d!1972089 (not res!2591283)) b!6283311))

(assert (= (and b!6283311 c!1139679) b!6283314))

(assert (= (and b!6283311 (not c!1139679)) b!6283312))

(assert (= (and b!6283314 res!2591280) b!6283309))

(assert (= (and b!6283312 c!1139678) b!6283308))

(assert (= (and b!6283312 (not c!1139678)) b!6283307))

(assert (= (and b!6283308 res!2591279) b!6283310))

(assert (= (and b!6283307 (not res!2591282)) b!6283315))

(assert (= (and b!6283315 res!2591281) b!6283313))

(assert (= (or b!6283310 b!6283313) bm!531895))

(assert (= (or b!6283308 b!6283315) bm!531896))

(assert (= (or b!6283309 bm!531895) bm!531897))

(declare-fun m!7104198 () Bool)

(assert (=> bm!531896 m!7104198))

(declare-fun m!7104200 () Bool)

(assert (=> b!6283314 m!7104200))

(declare-fun m!7104202 () Bool)

(assert (=> bm!531897 m!7104202))

(assert (=> d!1971367 d!1972089))

(declare-fun d!1972091 () Bool)

(declare-fun res!2591288 () Bool)

(declare-fun e!3821009 () Bool)

(assert (=> d!1972091 (=> res!2591288 e!3821009)))

(assert (=> d!1972091 (= res!2591288 ((_ is Nil!64784) (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> d!1972091 (= (forall!15344 (t!378468 (exprs!6087 (h!71234 zl!343))) lambda!344604) e!3821009)))

(declare-fun b!6283320 () Bool)

(declare-fun e!3821010 () Bool)

(assert (=> b!6283320 (= e!3821009 e!3821010)))

(declare-fun res!2591289 () Bool)

(assert (=> b!6283320 (=> (not res!2591289) (not e!3821010))))

(declare-fun dynLambda!25634 (Int Regex!16203) Bool)

(assert (=> b!6283320 (= res!2591289 (dynLambda!25634 lambda!344604 (h!71232 (t!378468 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun b!6283321 () Bool)

(assert (=> b!6283321 (= e!3821010 (forall!15344 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343)))) lambda!344604))))

(assert (= (and d!1972091 (not res!2591288)) b!6283320))

(assert (= (and b!6283320 res!2591289) b!6283321))

(declare-fun b_lambda!239187 () Bool)

(assert (=> (not b_lambda!239187) (not b!6283320)))

(declare-fun m!7104204 () Bool)

(assert (=> b!6283320 m!7104204))

(declare-fun m!7104206 () Bool)

(assert (=> b!6283321 m!7104206))

(assert (=> d!1971367 d!1972091))

(assert (=> d!1971365 d!1971347))

(assert (=> d!1971365 d!1971373))

(assert (=> d!1971365 d!1971929))

(declare-fun d!1972093 () Bool)

(assert (=> d!1972093 (= (Exists!3273 lambda!344603) (choose!46643 lambda!344603))))

(declare-fun bs!1570158 () Bool)

(assert (= bs!1570158 d!1972093))

(declare-fun m!7104208 () Bool)

(assert (=> bs!1570158 m!7104208))

(assert (=> d!1971365 d!1972093))

(declare-fun bs!1570159 () Bool)

(declare-fun d!1972095 () Bool)

(assert (= bs!1570159 (and d!1972095 d!1971375)))

(declare-fun lambda!344721 () Int)

(assert (=> bs!1570159 (= lambda!344721 lambda!344605)))

(declare-fun bs!1570160 () Bool)

(assert (= bs!1570160 (and d!1972095 d!1971297)))

(assert (=> bs!1570160 (not (= lambda!344721 lambda!344574))))

(declare-fun bs!1570161 () Bool)

(assert (= bs!1570161 (and d!1972095 b!6281727)))

(assert (=> bs!1570161 (not (= lambda!344721 lambda!344599))))

(declare-fun bs!1570162 () Bool)

(assert (= bs!1570162 (and d!1972095 b!6283024)))

(assert (=> bs!1570162 (not (= lambda!344721 lambda!344696))))

(declare-fun bs!1570163 () Bool)

(assert (= bs!1570163 (and d!1972095 d!1971295)))

(assert (=> bs!1570163 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344721 lambda!344568))))

(assert (=> bs!1570160 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344721 lambda!344573))))

(declare-fun bs!1570164 () Bool)

(assert (= bs!1570164 (and d!1972095 d!1971365)))

(assert (=> bs!1570164 (= lambda!344721 lambda!344603)))

(declare-fun bs!1570165 () Bool)

(assert (= bs!1570165 (and d!1972095 b!6281621)))

(assert (=> bs!1570165 (not (= lambda!344721 lambda!344580))))

(declare-fun bs!1570166 () Bool)

(assert (= bs!1570166 (and d!1972095 b!6280970)))

(assert (=> bs!1570166 (= lambda!344721 lambda!344510)))

(assert (=> bs!1570166 (not (= lambda!344721 lambda!344511))))

(declare-fun bs!1570167 () Bool)

(assert (= bs!1570167 (and d!1972095 d!1972051)))

(assert (=> bs!1570167 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344721 lambda!344710))))

(declare-fun bs!1570168 () Bool)

(assert (= bs!1570168 (and d!1972095 b!6283270)))

(assert (=> bs!1570168 (not (= lambda!344721 lambda!344715))))

(declare-fun bs!1570169 () Bool)

(assert (= bs!1570169 (and d!1972095 b!6280967)))

(assert (=> bs!1570169 (not (= lambda!344721 lambda!344508))))

(declare-fun bs!1570170 () Bool)

(assert (= bs!1570170 (and d!1972095 b!6283276)))

(assert (=> bs!1570170 (not (= lambda!344721 lambda!344714))))

(declare-fun bs!1570171 () Bool)

(assert (= bs!1570171 (and d!1972095 b!6283300)))

(assert (=> bs!1570171 (not (= lambda!344721 lambda!344718))))

(declare-fun bs!1570172 () Bool)

(assert (= bs!1570172 (and d!1972095 b!6283306)))

(assert (=> bs!1570172 (not (= lambda!344721 lambda!344717))))

(assert (=> bs!1570159 (not (= lambda!344721 lambda!344606))))

(declare-fun bs!1570173 () Bool)

(assert (= bs!1570173 (and d!1972095 b!6283228)))

(assert (=> bs!1570173 (not (= lambda!344721 lambda!344704))))

(declare-fun bs!1570174 () Bool)

(assert (= bs!1570174 (and d!1972095 b!6281826)))

(assert (=> bs!1570174 (not (= lambda!344721 lambda!344608))))

(declare-fun bs!1570175 () Bool)

(assert (= bs!1570175 (and d!1972095 b!6281721)))

(assert (=> bs!1570175 (not (= lambda!344721 lambda!344600))))

(declare-fun bs!1570176 () Bool)

(assert (= bs!1570176 (and d!1972095 b!6283030)))

(assert (=> bs!1570176 (not (= lambda!344721 lambda!344695))))

(declare-fun bs!1570177 () Bool)

(assert (= bs!1570177 (and d!1972095 b!6281627)))

(assert (=> bs!1570177 (not (= lambda!344721 lambda!344579))))

(assert (=> bs!1570169 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344721 lambda!344507))))

(assert (=> bs!1570167 (not (= lambda!344721 lambda!344711))))

(declare-fun bs!1570178 () Bool)

(assert (= bs!1570178 (and d!1972095 b!6281832)))

(assert (=> bs!1570178 (not (= lambda!344721 lambda!344607))))

(declare-fun bs!1570179 () Bool)

(assert (= bs!1570179 (and d!1972095 b!6283222)))

(assert (=> bs!1570179 (not (= lambda!344721 lambda!344705))))

(assert (=> d!1972095 true))

(assert (=> d!1972095 true))

(assert (=> d!1972095 true))

(assert (=> d!1972095 (= (isDefined!12797 (findConcatSeparation!2508 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 Nil!64785 s!2326 s!2326)) (Exists!3273 lambda!344721))))

(assert (=> d!1972095 true))

(declare-fun _$89!2480 () Unit!158143)

(assert (=> d!1972095 (= (choose!46644 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 s!2326) _$89!2480)))

(declare-fun bs!1570180 () Bool)

(assert (= bs!1570180 d!1972095))

(assert (=> bs!1570180 m!7101990))

(assert (=> bs!1570180 m!7101990))

(assert (=> bs!1570180 m!7101992))

(declare-fun m!7104210 () Bool)

(assert (=> bs!1570180 m!7104210))

(assert (=> d!1971365 d!1972095))

(declare-fun bs!1570181 () Bool)

(declare-fun d!1972097 () Bool)

(assert (= bs!1570181 (and d!1972097 d!1972033)))

(declare-fun lambda!344722 () Int)

(assert (=> bs!1570181 (= lambda!344722 lambda!344703)))

(declare-fun bs!1570182 () Bool)

(assert (= bs!1570182 (and d!1972097 b!6281686)))

(assert (=> bs!1570182 (not (= lambda!344722 lambda!344592))))

(declare-fun bs!1570183 () Bool)

(assert (= bs!1570183 (and d!1972097 b!6281684)))

(assert (=> bs!1570183 (not (= lambda!344722 lambda!344591))))

(declare-fun bs!1570184 () Bool)

(assert (= bs!1570184 (and d!1972097 b!6281681)))

(assert (=> bs!1570184 (not (= lambda!344722 lambda!344589))))

(declare-fun bs!1570185 () Bool)

(assert (= bs!1570185 (and d!1972097 d!1971997)))

(assert (=> bs!1570185 (= lambda!344722 lambda!344700)))

(declare-fun bs!1570186 () Bool)

(assert (= bs!1570186 (and d!1972097 b!6281679)))

(assert (=> bs!1570186 (not (= lambda!344722 lambda!344588))))

(declare-fun bs!1570187 () Bool)

(assert (= bs!1570187 (and d!1972097 d!1972071)))

(assert (=> bs!1570187 (= lambda!344722 lambda!344716)))

(assert (=> d!1972097 (= (nullableZipper!1973 lt!2354664) (exists!2527 lt!2354664 lambda!344722))))

(declare-fun bs!1570188 () Bool)

(assert (= bs!1570188 d!1972097))

(declare-fun m!7104212 () Bool)

(assert (=> bs!1570188 m!7104212))

(assert (=> b!6281902 d!1972097))

(declare-fun d!1972099 () Bool)

(declare-fun res!2591294 () Bool)

(declare-fun e!3821013 () Bool)

(assert (=> d!1972099 (=> res!2591294 e!3821013)))

(assert (=> d!1972099 (= res!2591294 ((_ is Nil!64784) lt!2354844))))

(assert (=> d!1972099 (= (forall!15344 lt!2354844 lambda!344619) e!3821013)))

(declare-fun b!6283326 () Bool)

(declare-fun e!3821014 () Bool)

(assert (=> b!6283326 (= e!3821013 e!3821014)))

(declare-fun res!2591295 () Bool)

(assert (=> b!6283326 (=> (not res!2591295) (not e!3821014))))

(assert (=> b!6283326 (= res!2591295 (dynLambda!25634 lambda!344619 (h!71232 lt!2354844)))))

(declare-fun b!6283327 () Bool)

(assert (=> b!6283327 (= e!3821014 (forall!15344 (t!378468 lt!2354844) lambda!344619))))

(assert (= (and d!1972099 (not res!2591294)) b!6283326))

(assert (= (and b!6283326 res!2591295) b!6283327))

(declare-fun b_lambda!239189 () Bool)

(assert (=> (not b_lambda!239189) (not b!6283326)))

(declare-fun m!7104214 () Bool)

(assert (=> b!6283326 m!7104214))

(declare-fun m!7104216 () Bool)

(assert (=> b!6283327 m!7104216))

(assert (=> d!1971433 d!1972099))

(assert (=> b!6281659 d!1972023))

(assert (=> b!6281659 d!1972005))

(declare-fun bm!531898 () Bool)

(declare-fun call!531904 () (InoxSet Context!11174))

(declare-fun call!531906 () (InoxSet Context!11174))

(assert (=> bm!531898 (= call!531904 call!531906)))

(declare-fun e!3821017 () Bool)

(declare-fun b!6283328 () Bool)

(assert (=> b!6283328 (= e!3821017 (nullable!6196 (regOne!32918 (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292)))))))))))

(declare-fun b!6283329 () Bool)

(declare-fun e!3821015 () (InoxSet Context!11174))

(assert (=> b!6283329 (= e!3821015 call!531904)))

(declare-fun b!6283330 () Bool)

(declare-fun e!3821016 () (InoxSet Context!11174))

(assert (=> b!6283330 (= e!3821016 call!531904)))

(declare-fun c!1139684 () Bool)

(declare-fun b!6283331 () Bool)

(assert (=> b!6283331 (= c!1139684 ((_ is Star!16203) (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292))))))))))

(assert (=> b!6283331 (= e!3821016 e!3821015)))

(declare-fun bm!531899 () Bool)

(declare-fun call!531907 () List!64908)

(declare-fun call!531905 () List!64908)

(assert (=> bm!531899 (= call!531907 call!531905)))

(declare-fun b!6283332 () Bool)

(declare-fun e!3821018 () (InoxSet Context!11174))

(declare-fun call!531903 () (InoxSet Context!11174))

(assert (=> b!6283332 (= e!3821018 ((_ map or) call!531903 call!531906))))

(declare-fun b!6283333 () Bool)

(declare-fun e!3821019 () (InoxSet Context!11174))

(declare-fun call!531908 () (InoxSet Context!11174))

(assert (=> b!6283333 (= e!3821019 ((_ map or) call!531903 call!531908))))

(declare-fun bm!531900 () Bool)

(declare-fun c!1139683 () Bool)

(declare-fun c!1139682 () Bool)

(assert (=> bm!531900 (= call!531905 ($colon$colon!2068 (exprs!6087 (ite (or c!1139279 c!1139281) lt!2354668 (Context!11175 call!531636))) (ite (or c!1139683 c!1139682) (regTwo!32918 (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292))))))) (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292)))))))))))

(declare-fun b!6283334 () Bool)

(assert (=> b!6283334 (= c!1139683 e!3821017)))

(declare-fun res!2591296 () Bool)

(assert (=> b!6283334 (=> (not res!2591296) (not e!3821017))))

(assert (=> b!6283334 (= res!2591296 ((_ is Concat!25048) (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292))))))))))

(assert (=> b!6283334 (= e!3821019 e!3821018)))

(declare-fun b!6283335 () Bool)

(declare-fun e!3821020 () (InoxSet Context!11174))

(assert (=> b!6283335 (= e!3821020 e!3821019)))

(declare-fun c!1139681 () Bool)

(assert (=> b!6283335 (= c!1139681 ((_ is Union!16203) (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292))))))))))

(declare-fun bm!531901 () Bool)

(assert (=> bm!531901 (= call!531908 (derivationStepZipperDown!1451 (ite c!1139681 (regTwo!32919 (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292))))))) (ite c!1139683 (regTwo!32918 (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292))))))) (ite c!1139682 (regOne!32918 (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292))))))) (reg!16532 (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292)))))))))) (ite (or c!1139681 c!1139683) (ite (or c!1139279 c!1139281) lt!2354668 (Context!11175 call!531636)) (Context!11175 call!531907)) (h!71233 s!2326)))))

(declare-fun bm!531902 () Bool)

(assert (=> bm!531902 (= call!531903 (derivationStepZipperDown!1451 (ite c!1139681 (regOne!32919 (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292))))))) (regOne!32918 (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292)))))))) (ite c!1139681 (ite (or c!1139279 c!1139281) lt!2354668 (Context!11175 call!531636)) (Context!11175 call!531905)) (h!71233 s!2326)))))

(declare-fun d!1972101 () Bool)

(declare-fun c!1139680 () Bool)

(assert (=> d!1972101 (= c!1139680 (and ((_ is ElementMatch!16203) (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292))))))) (= (c!1138982 (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292))))))) (h!71233 s!2326))))))

(assert (=> d!1972101 (= (derivationStepZipperDown!1451 (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292)))))) (ite (or c!1139279 c!1139281) lt!2354668 (Context!11175 call!531636)) (h!71233 s!2326)) e!3821020)))

(declare-fun b!6283336 () Bool)

(assert (=> b!6283336 (= e!3821018 e!3821016)))

(assert (=> b!6283336 (= c!1139682 ((_ is Concat!25048) (ite c!1139279 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139281 (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139280 (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))) (reg!16532 (regTwo!32918 (regOne!32918 r!7292))))))))))

(declare-fun b!6283337 () Bool)

(assert (=> b!6283337 (= e!3821015 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531903 () Bool)

(assert (=> bm!531903 (= call!531906 call!531908)))

(declare-fun b!6283338 () Bool)

(assert (=> b!6283338 (= e!3821020 (store ((as const (Array Context!11174 Bool)) false) (ite (or c!1139279 c!1139281) lt!2354668 (Context!11175 call!531636)) true))))

(assert (= (and d!1972101 c!1139680) b!6283338))

(assert (= (and d!1972101 (not c!1139680)) b!6283335))

(assert (= (and b!6283335 c!1139681) b!6283333))

(assert (= (and b!6283335 (not c!1139681)) b!6283334))

(assert (= (and b!6283334 res!2591296) b!6283328))

(assert (= (and b!6283334 c!1139683) b!6283332))

(assert (= (and b!6283334 (not c!1139683)) b!6283336))

(assert (= (and b!6283336 c!1139682) b!6283330))

(assert (= (and b!6283336 (not c!1139682)) b!6283331))

(assert (= (and b!6283331 c!1139684) b!6283329))

(assert (= (and b!6283331 (not c!1139684)) b!6283337))

(assert (= (or b!6283330 b!6283329) bm!531899))

(assert (= (or b!6283330 b!6283329) bm!531898))

(assert (= (or b!6283332 bm!531899) bm!531900))

(assert (= (or b!6283332 bm!531898) bm!531903))

(assert (= (or b!6283333 bm!531903) bm!531901))

(assert (= (or b!6283333 b!6283332) bm!531902))

(declare-fun m!7104218 () Bool)

(assert (=> b!6283328 m!7104218))

(declare-fun m!7104220 () Bool)

(assert (=> bm!531902 m!7104220))

(declare-fun m!7104222 () Bool)

(assert (=> b!6283338 m!7104222))

(declare-fun m!7104224 () Bool)

(assert (=> bm!531901 m!7104224))

(declare-fun m!7104226 () Bool)

(assert (=> bm!531900 m!7104226))

(assert (=> bm!531630 d!1972101))

(assert (=> d!1971331 d!1971329))

(assert (=> d!1971331 d!1971327))

(declare-fun d!1972103 () Bool)

(assert (=> d!1972103 (= (matchR!8386 r!7292 s!2326) (matchRSpec!3304 r!7292 s!2326))))

(assert (=> d!1972103 true))

(declare-fun _$88!4930 () Unit!158143)

(assert (=> d!1972103 (= (choose!46649 r!7292 s!2326) _$88!4930)))

(declare-fun bs!1570189 () Bool)

(assert (= bs!1570189 d!1972103))

(assert (=> bs!1570189 m!7101888))

(assert (=> bs!1570189 m!7101886))

(assert (=> d!1971331 d!1972103))

(assert (=> d!1971331 d!1971385))

(declare-fun d!1972105 () Bool)

(assert (=> d!1972105 (= ($colon$colon!2068 (exprs!6087 lt!2354667) (ite (or c!1139286 c!1139285) (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 r!7292)))) (Cons!64784 (ite (or c!1139286 c!1139285) (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 r!7292))) (exprs!6087 lt!2354667)))))

(assert (=> bm!531635 d!1972105))

(declare-fun d!1972107 () Bool)

(assert (=> d!1972107 (= (nullable!6196 (reg!16532 (regTwo!32918 (regOne!32918 r!7292)))) (nullableFct!2147 (reg!16532 (regTwo!32918 (regOne!32918 r!7292)))))))

(declare-fun bs!1570190 () Bool)

(assert (= bs!1570190 d!1972107))

(declare-fun m!7104228 () Bool)

(assert (=> bs!1570190 m!7104228))

(assert (=> b!6281786 d!1972107))

(declare-fun d!1972109 () Bool)

(assert (=> d!1972109 (= (isDefined!12797 lt!2354770) (not (isEmpty!36833 lt!2354770)))))

(declare-fun bs!1570191 () Bool)

(assert (= bs!1570191 d!1972109))

(declare-fun m!7104230 () Bool)

(assert (=> bs!1570191 m!7104230))

(assert (=> d!1971291 d!1972109))

(declare-fun b!6283339 () Bool)

(declare-fun e!3821024 () Bool)

(declare-fun e!3821022 () Bool)

(assert (=> b!6283339 (= e!3821024 e!3821022)))

(declare-fun res!2591299 () Bool)

(assert (=> b!6283339 (=> res!2591299 e!3821022)))

(declare-fun call!531909 () Bool)

(assert (=> b!6283339 (= res!2591299 call!531909)))

(declare-fun b!6283340 () Bool)

(declare-fun e!3821023 () Bool)

(assert (=> b!6283340 (= e!3821023 (= (head!12906 Nil!64785) (c!1138982 (regOne!32918 r!7292))))))

(declare-fun b!6283341 () Bool)

(declare-fun res!2591302 () Bool)

(assert (=> b!6283341 (=> res!2591302 e!3821022)))

(assert (=> b!6283341 (= res!2591302 (not (isEmpty!36834 (tail!11991 Nil!64785))))))

(declare-fun b!6283343 () Bool)

(assert (=> b!6283343 (= e!3821022 (not (= (head!12906 Nil!64785) (c!1138982 (regOne!32918 r!7292)))))))

(declare-fun b!6283344 () Bool)

(declare-fun e!3821021 () Bool)

(declare-fun lt!2354942 () Bool)

(assert (=> b!6283344 (= e!3821021 (not lt!2354942))))

(declare-fun b!6283345 () Bool)

(declare-fun e!3821027 () Bool)

(assert (=> b!6283345 (= e!3821027 e!3821021)))

(declare-fun c!1139685 () Bool)

(assert (=> b!6283345 (= c!1139685 ((_ is EmptyLang!16203) (regOne!32918 r!7292)))))

(declare-fun bm!531904 () Bool)

(assert (=> bm!531904 (= call!531909 (isEmpty!36834 Nil!64785))))

(declare-fun b!6283346 () Bool)

(declare-fun res!2591304 () Bool)

(assert (=> b!6283346 (=> (not res!2591304) (not e!3821023))))

(assert (=> b!6283346 (= res!2591304 (not call!531909))))

(declare-fun b!6283347 () Bool)

(declare-fun e!3821026 () Bool)

(assert (=> b!6283347 (= e!3821026 (matchR!8386 (derivativeStep!4912 (regOne!32918 r!7292) (head!12906 Nil!64785)) (tail!11991 Nil!64785)))))

(declare-fun b!6283348 () Bool)

(declare-fun e!3821025 () Bool)

(assert (=> b!6283348 (= e!3821025 e!3821024)))

(declare-fun res!2591301 () Bool)

(assert (=> b!6283348 (=> (not res!2591301) (not e!3821024))))

(assert (=> b!6283348 (= res!2591301 (not lt!2354942))))

(declare-fun b!6283342 () Bool)

(declare-fun res!2591300 () Bool)

(assert (=> b!6283342 (=> (not res!2591300) (not e!3821023))))

(assert (=> b!6283342 (= res!2591300 (isEmpty!36834 (tail!11991 Nil!64785)))))

(declare-fun d!1972111 () Bool)

(assert (=> d!1972111 e!3821027))

(declare-fun c!1139686 () Bool)

(assert (=> d!1972111 (= c!1139686 ((_ is EmptyExpr!16203) (regOne!32918 r!7292)))))

(assert (=> d!1972111 (= lt!2354942 e!3821026)))

(declare-fun c!1139687 () Bool)

(assert (=> d!1972111 (= c!1139687 (isEmpty!36834 Nil!64785))))

(assert (=> d!1972111 (validRegex!7939 (regOne!32918 r!7292))))

(assert (=> d!1972111 (= (matchR!8386 (regOne!32918 r!7292) Nil!64785) lt!2354942)))

(declare-fun b!6283349 () Bool)

(declare-fun res!2591298 () Bool)

(assert (=> b!6283349 (=> res!2591298 e!3821025)))

(assert (=> b!6283349 (= res!2591298 (not ((_ is ElementMatch!16203) (regOne!32918 r!7292))))))

(assert (=> b!6283349 (= e!3821021 e!3821025)))

(declare-fun b!6283350 () Bool)

(assert (=> b!6283350 (= e!3821027 (= lt!2354942 call!531909))))

(declare-fun b!6283351 () Bool)

(assert (=> b!6283351 (= e!3821026 (nullable!6196 (regOne!32918 r!7292)))))

(declare-fun b!6283352 () Bool)

(declare-fun res!2591303 () Bool)

(assert (=> b!6283352 (=> res!2591303 e!3821025)))

(assert (=> b!6283352 (= res!2591303 e!3821023)))

(declare-fun res!2591297 () Bool)

(assert (=> b!6283352 (=> (not res!2591297) (not e!3821023))))

(assert (=> b!6283352 (= res!2591297 lt!2354942)))

(assert (= (and d!1972111 c!1139687) b!6283351))

(assert (= (and d!1972111 (not c!1139687)) b!6283347))

(assert (= (and d!1972111 c!1139686) b!6283350))

(assert (= (and d!1972111 (not c!1139686)) b!6283345))

(assert (= (and b!6283345 c!1139685) b!6283344))

(assert (= (and b!6283345 (not c!1139685)) b!6283349))

(assert (= (and b!6283349 (not res!2591298)) b!6283352))

(assert (= (and b!6283352 res!2591297) b!6283346))

(assert (= (and b!6283346 res!2591304) b!6283342))

(assert (= (and b!6283342 res!2591300) b!6283340))

(assert (= (and b!6283352 (not res!2591303)) b!6283348))

(assert (= (and b!6283348 res!2591301) b!6283339))

(assert (= (and b!6283339 (not res!2591299)) b!6283341))

(assert (= (and b!6283341 (not res!2591302)) b!6283343))

(assert (= (or b!6283350 b!6283339 b!6283346) bm!531904))

(assert (=> bm!531904 m!7103900))

(assert (=> b!6283343 m!7103902))

(assert (=> d!1972111 m!7103900))

(assert (=> d!1972111 m!7102498))

(assert (=> b!6283341 m!7103904))

(assert (=> b!6283341 m!7103904))

(assert (=> b!6283341 m!7103906))

(assert (=> b!6283351 m!7103994))

(assert (=> b!6283340 m!7103902))

(assert (=> b!6283347 m!7103902))

(assert (=> b!6283347 m!7103902))

(declare-fun m!7104232 () Bool)

(assert (=> b!6283347 m!7104232))

(assert (=> b!6283347 m!7103904))

(assert (=> b!6283347 m!7104232))

(assert (=> b!6283347 m!7103904))

(declare-fun m!7104234 () Bool)

(assert (=> b!6283347 m!7104234))

(assert (=> b!6283342 m!7103904))

(assert (=> b!6283342 m!7103904))

(assert (=> b!6283342 m!7103906))

(assert (=> d!1971291 d!1972111))

(assert (=> d!1971291 d!1972053))

(declare-fun bs!1570192 () Bool)

(declare-fun d!1972113 () Bool)

(assert (= bs!1570192 (and d!1972113 d!1971363)))

(declare-fun lambda!344723 () Int)

(assert (=> bs!1570192 (= lambda!344723 lambda!344602)))

(declare-fun bs!1570193 () Bool)

(assert (= bs!1570193 (and d!1972113 d!1971341)))

(assert (=> bs!1570193 (= lambda!344723 lambda!344595)))

(declare-fun bs!1570194 () Bool)

(assert (= bs!1570194 (and d!1972113 d!1971351)))

(assert (=> bs!1570194 (= lambda!344723 lambda!344601)))

(declare-fun bs!1570195 () Bool)

(assert (= bs!1570195 (and d!1972113 d!1972059)))

(assert (=> bs!1570195 (= lambda!344723 lambda!344712)))

(declare-fun bs!1570196 () Bool)

(assert (= bs!1570196 (and d!1972113 d!1971431)))

(assert (=> bs!1570196 (= lambda!344723 lambda!344616)))

(declare-fun bs!1570197 () Bool)

(assert (= bs!1570197 (and d!1972113 d!1971415)))

(assert (=> bs!1570197 (= lambda!344723 lambda!344612)))

(declare-fun bs!1570198 () Bool)

(assert (= bs!1570198 (and d!1972113 d!1971343)))

(assert (=> bs!1570198 (= lambda!344723 lambda!344598)))

(declare-fun bs!1570199 () Bool)

(assert (= bs!1570199 (and d!1972113 d!1972061)))

(assert (=> bs!1570199 (= lambda!344723 lambda!344713)))

(declare-fun bs!1570200 () Bool)

(assert (= bs!1570200 (and d!1972113 d!1971367)))

(assert (=> bs!1570200 (= lambda!344723 lambda!344604)))

(declare-fun bs!1570201 () Bool)

(assert (= bs!1570201 (and d!1972113 d!1971433)))

(assert (=> bs!1570201 (= lambda!344723 lambda!344619)))

(assert (=> d!1972113 (= (inv!83754 setElem!42746) (forall!15344 (exprs!6087 setElem!42746) lambda!344723))))

(declare-fun bs!1570202 () Bool)

(assert (= bs!1570202 d!1972113))

(declare-fun m!7104236 () Bool)

(assert (=> bs!1570202 m!7104236))

(assert (=> setNonEmpty!42746 d!1972113))

(declare-fun b!6283354 () Bool)

(declare-fun e!3821028 () List!64909)

(assert (=> b!6283354 (= e!3821028 (Cons!64785 (h!71233 (_1!36485 (get!22393 lt!2354817))) (++!14276 (t!378469 (_1!36485 (get!22393 lt!2354817))) (_2!36485 (get!22393 lt!2354817)))))))

(declare-fun d!1972115 () Bool)

(declare-fun e!3821029 () Bool)

(assert (=> d!1972115 e!3821029))

(declare-fun res!2591305 () Bool)

(assert (=> d!1972115 (=> (not res!2591305) (not e!3821029))))

(declare-fun lt!2354943 () List!64909)

(assert (=> d!1972115 (= res!2591305 (= (content!12180 lt!2354943) ((_ map or) (content!12180 (_1!36485 (get!22393 lt!2354817))) (content!12180 (_2!36485 (get!22393 lt!2354817))))))))

(assert (=> d!1972115 (= lt!2354943 e!3821028)))

(declare-fun c!1139688 () Bool)

(assert (=> d!1972115 (= c!1139688 ((_ is Nil!64785) (_1!36485 (get!22393 lt!2354817))))))

(assert (=> d!1972115 (= (++!14276 (_1!36485 (get!22393 lt!2354817)) (_2!36485 (get!22393 lt!2354817))) lt!2354943)))

(declare-fun b!6283355 () Bool)

(declare-fun res!2591306 () Bool)

(assert (=> b!6283355 (=> (not res!2591306) (not e!3821029))))

(assert (=> b!6283355 (= res!2591306 (= (size!40314 lt!2354943) (+ (size!40314 (_1!36485 (get!22393 lt!2354817))) (size!40314 (_2!36485 (get!22393 lt!2354817))))))))

(declare-fun b!6283356 () Bool)

(assert (=> b!6283356 (= e!3821029 (or (not (= (_2!36485 (get!22393 lt!2354817)) Nil!64785)) (= lt!2354943 (_1!36485 (get!22393 lt!2354817)))))))

(declare-fun b!6283353 () Bool)

(assert (=> b!6283353 (= e!3821028 (_2!36485 (get!22393 lt!2354817)))))

(assert (= (and d!1972115 c!1139688) b!6283353))

(assert (= (and d!1972115 (not c!1139688)) b!6283354))

(assert (= (and d!1972115 res!2591305) b!6283355))

(assert (= (and b!6283355 res!2591306) b!6283356))

(declare-fun m!7104238 () Bool)

(assert (=> b!6283354 m!7104238))

(declare-fun m!7104240 () Bool)

(assert (=> d!1972115 m!7104240))

(declare-fun m!7104242 () Bool)

(assert (=> d!1972115 m!7104242))

(declare-fun m!7104244 () Bool)

(assert (=> d!1972115 m!7104244))

(declare-fun m!7104246 () Bool)

(assert (=> b!6283355 m!7104246))

(declare-fun m!7104248 () Bool)

(assert (=> b!6283355 m!7104248))

(declare-fun m!7104250 () Bool)

(assert (=> b!6283355 m!7104250))

(assert (=> b!6281730 d!1972115))

(assert (=> b!6281730 d!1972017))

(declare-fun bm!531905 () Bool)

(declare-fun call!531911 () Bool)

(declare-fun call!531912 () Bool)

(assert (=> bm!531905 (= call!531911 call!531912)))

(declare-fun b!6283357 () Bool)

(declare-fun res!2591310 () Bool)

(declare-fun e!3821032 () Bool)

(assert (=> b!6283357 (=> res!2591310 e!3821032)))

(assert (=> b!6283357 (= res!2591310 (not ((_ is Concat!25048) (ite c!1139247 (reg!16532 r!7292) (ite c!1139246 (regTwo!32919 r!7292) (regTwo!32918 r!7292))))))))

(declare-fun e!3821036 () Bool)

(assert (=> b!6283357 (= e!3821036 e!3821032)))

(declare-fun b!6283358 () Bool)

(declare-fun res!2591307 () Bool)

(declare-fun e!3821031 () Bool)

(assert (=> b!6283358 (=> (not res!2591307) (not e!3821031))))

(declare-fun call!531910 () Bool)

(assert (=> b!6283358 (= res!2591307 call!531910)))

(assert (=> b!6283358 (= e!3821036 e!3821031)))

(declare-fun b!6283359 () Bool)

(declare-fun e!3821033 () Bool)

(assert (=> b!6283359 (= e!3821033 call!531912)))

(declare-fun b!6283360 () Bool)

(assert (=> b!6283360 (= e!3821031 call!531911)))

(declare-fun b!6283361 () Bool)

(declare-fun e!3821034 () Bool)

(declare-fun e!3821035 () Bool)

(assert (=> b!6283361 (= e!3821034 e!3821035)))

(declare-fun c!1139690 () Bool)

(assert (=> b!6283361 (= c!1139690 ((_ is Star!16203) (ite c!1139247 (reg!16532 r!7292) (ite c!1139246 (regTwo!32919 r!7292) (regTwo!32918 r!7292)))))))

(declare-fun b!6283362 () Bool)

(assert (=> b!6283362 (= e!3821035 e!3821036)))

(declare-fun c!1139689 () Bool)

(assert (=> b!6283362 (= c!1139689 ((_ is Union!16203) (ite c!1139247 (reg!16532 r!7292) (ite c!1139246 (regTwo!32919 r!7292) (regTwo!32918 r!7292)))))))

(declare-fun bm!531906 () Bool)

(assert (=> bm!531906 (= call!531910 (validRegex!7939 (ite c!1139689 (regOne!32919 (ite c!1139247 (reg!16532 r!7292) (ite c!1139246 (regTwo!32919 r!7292) (regTwo!32918 r!7292)))) (regOne!32918 (ite c!1139247 (reg!16532 r!7292) (ite c!1139246 (regTwo!32919 r!7292) (regTwo!32918 r!7292)))))))))

(declare-fun b!6283364 () Bool)

(assert (=> b!6283364 (= e!3821035 e!3821033)))

(declare-fun res!2591308 () Bool)

(assert (=> b!6283364 (= res!2591308 (not (nullable!6196 (reg!16532 (ite c!1139247 (reg!16532 r!7292) (ite c!1139246 (regTwo!32919 r!7292) (regTwo!32918 r!7292)))))))))

(assert (=> b!6283364 (=> (not res!2591308) (not e!3821033))))

(declare-fun b!6283363 () Bool)

(declare-fun e!3821030 () Bool)

(assert (=> b!6283363 (= e!3821030 call!531911)))

(declare-fun d!1972117 () Bool)

(declare-fun res!2591311 () Bool)

(assert (=> d!1972117 (=> res!2591311 e!3821034)))

(assert (=> d!1972117 (= res!2591311 ((_ is ElementMatch!16203) (ite c!1139247 (reg!16532 r!7292) (ite c!1139246 (regTwo!32919 r!7292) (regTwo!32918 r!7292)))))))

(assert (=> d!1972117 (= (validRegex!7939 (ite c!1139247 (reg!16532 r!7292) (ite c!1139246 (regTwo!32919 r!7292) (regTwo!32918 r!7292)))) e!3821034)))

(declare-fun bm!531907 () Bool)

(assert (=> bm!531907 (= call!531912 (validRegex!7939 (ite c!1139690 (reg!16532 (ite c!1139247 (reg!16532 r!7292) (ite c!1139246 (regTwo!32919 r!7292) (regTwo!32918 r!7292)))) (ite c!1139689 (regTwo!32919 (ite c!1139247 (reg!16532 r!7292) (ite c!1139246 (regTwo!32919 r!7292) (regTwo!32918 r!7292)))) (regTwo!32918 (ite c!1139247 (reg!16532 r!7292) (ite c!1139246 (regTwo!32919 r!7292) (regTwo!32918 r!7292))))))))))

(declare-fun b!6283365 () Bool)

(assert (=> b!6283365 (= e!3821032 e!3821030)))

(declare-fun res!2591309 () Bool)

(assert (=> b!6283365 (=> (not res!2591309) (not e!3821030))))

(assert (=> b!6283365 (= res!2591309 call!531910)))

(assert (= (and d!1972117 (not res!2591311)) b!6283361))

(assert (= (and b!6283361 c!1139690) b!6283364))

(assert (= (and b!6283361 (not c!1139690)) b!6283362))

(assert (= (and b!6283364 res!2591308) b!6283359))

(assert (= (and b!6283362 c!1139689) b!6283358))

(assert (= (and b!6283362 (not c!1139689)) b!6283357))

(assert (= (and b!6283358 res!2591307) b!6283360))

(assert (= (and b!6283357 (not res!2591310)) b!6283365))

(assert (= (and b!6283365 res!2591309) b!6283363))

(assert (= (or b!6283360 b!6283363) bm!531905))

(assert (= (or b!6283358 b!6283365) bm!531906))

(assert (= (or b!6283359 bm!531905) bm!531907))

(declare-fun m!7104252 () Bool)

(assert (=> bm!531906 m!7104252))

(declare-fun m!7104254 () Bool)

(assert (=> b!6283364 m!7104254))

(declare-fun m!7104256 () Bool)

(assert (=> bm!531907 m!7104256))

(assert (=> bm!531605 d!1972117))

(declare-fun d!1972119 () Bool)

(assert (=> d!1972119 (= (isEmpty!36830 (unfocusZipperList!1624 zl!343)) ((_ is Nil!64784) (unfocusZipperList!1624 zl!343)))))

(assert (=> b!6281962 d!1972119))

(assert (=> d!1971315 d!1971943))

(declare-fun d!1972121 () Bool)

(assert (=> d!1972121 (= (isEmpty!36830 (t!378468 lt!2354672)) ((_ is Nil!64784) (t!378468 lt!2354672)))))

(assert (=> b!6281760 d!1972121))

(assert (=> b!6281530 d!1972109))

(declare-fun d!1972123 () Bool)

(assert (=> d!1972123 (= (isEmpty!36830 (t!378468 lt!2354639)) ((_ is Nil!64784) (t!378468 lt!2354639)))))

(assert (=> b!6281797 d!1972123))

(declare-fun d!1972125 () Bool)

(assert (=> d!1972125 true))

(assert (=> d!1972125 true))

(declare-fun res!2591314 () Bool)

(assert (=> d!1972125 (= (choose!46643 lambda!344508) res!2591314)))

(assert (=> d!1971289 d!1972125))

(declare-fun d!1972127 () Bool)

(assert (=> d!1972127 true))

(assert (=> d!1972127 true))

(declare-fun res!2591315 () Bool)

(assert (=> d!1972127 (= (choose!46643 lambda!344510) res!2591315)))

(assert (=> d!1971353 d!1972127))

(assert (=> b!6281658 d!1972023))

(assert (=> b!6281658 d!1972005))

(declare-fun d!1972129 () Bool)

(assert (=> d!1972129 (= (isEmpty!36830 (exprs!6087 (h!71234 zl!343))) ((_ is Nil!64784) (exprs!6087 (h!71234 zl!343))))))

(assert (=> b!6281713 d!1972129))

(assert (=> bm!531601 d!1971931))

(declare-fun bm!531908 () Bool)

(declare-fun call!531914 () Bool)

(declare-fun call!531915 () Bool)

(assert (=> bm!531908 (= call!531914 call!531915)))

(declare-fun b!6283366 () Bool)

(declare-fun res!2591319 () Bool)

(declare-fun e!3821039 () Bool)

(assert (=> b!6283366 (=> res!2591319 e!3821039)))

(assert (=> b!6283366 (= res!2591319 (not ((_ is Concat!25048) (ite c!1139227 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292)))))))))

(declare-fun e!3821043 () Bool)

(assert (=> b!6283366 (= e!3821043 e!3821039)))

(declare-fun b!6283367 () Bool)

(declare-fun res!2591316 () Bool)

(declare-fun e!3821038 () Bool)

(assert (=> b!6283367 (=> (not res!2591316) (not e!3821038))))

(declare-fun call!531913 () Bool)

(assert (=> b!6283367 (= res!2591316 call!531913)))

(assert (=> b!6283367 (= e!3821043 e!3821038)))

(declare-fun b!6283368 () Bool)

(declare-fun e!3821040 () Bool)

(assert (=> b!6283368 (= e!3821040 call!531915)))

(declare-fun b!6283369 () Bool)

(assert (=> b!6283369 (= e!3821038 call!531914)))

(declare-fun b!6283370 () Bool)

(declare-fun e!3821041 () Bool)

(declare-fun e!3821042 () Bool)

(assert (=> b!6283370 (= e!3821041 e!3821042)))

(declare-fun c!1139692 () Bool)

(assert (=> b!6283370 (= c!1139692 ((_ is Star!16203) (ite c!1139227 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))))))

(declare-fun b!6283371 () Bool)

(assert (=> b!6283371 (= e!3821042 e!3821043)))

(declare-fun c!1139691 () Bool)

(assert (=> b!6283371 (= c!1139691 ((_ is Union!16203) (ite c!1139227 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))))))

(declare-fun bm!531909 () Bool)

(assert (=> bm!531909 (= call!531913 (validRegex!7939 (ite c!1139691 (regOne!32919 (ite c!1139227 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))) (regOne!32918 (ite c!1139227 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))))))))

(declare-fun b!6283373 () Bool)

(assert (=> b!6283373 (= e!3821042 e!3821040)))

(declare-fun res!2591317 () Bool)

(assert (=> b!6283373 (= res!2591317 (not (nullable!6196 (reg!16532 (ite c!1139227 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))))))))

(assert (=> b!6283373 (=> (not res!2591317) (not e!3821040))))

(declare-fun b!6283372 () Bool)

(declare-fun e!3821037 () Bool)

(assert (=> b!6283372 (= e!3821037 call!531914)))

(declare-fun d!1972131 () Bool)

(declare-fun res!2591320 () Bool)

(assert (=> d!1972131 (=> res!2591320 e!3821041)))

(assert (=> d!1972131 (= res!2591320 ((_ is ElementMatch!16203) (ite c!1139227 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))))))

(assert (=> d!1972131 (= (validRegex!7939 (ite c!1139227 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))) e!3821041)))

(declare-fun bm!531910 () Bool)

(assert (=> bm!531910 (= call!531915 (validRegex!7939 (ite c!1139692 (reg!16532 (ite c!1139227 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))) (ite c!1139691 (regTwo!32919 (ite c!1139227 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))) (regTwo!32918 (ite c!1139227 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292)))))))))))

(declare-fun b!6283374 () Bool)

(assert (=> b!6283374 (= e!3821039 e!3821037)))

(declare-fun res!2591318 () Bool)

(assert (=> b!6283374 (=> (not res!2591318) (not e!3821037))))

(assert (=> b!6283374 (= res!2591318 call!531913)))

(assert (= (and d!1972131 (not res!2591320)) b!6283370))

(assert (= (and b!6283370 c!1139692) b!6283373))

(assert (= (and b!6283370 (not c!1139692)) b!6283371))

(assert (= (and b!6283373 res!2591317) b!6283368))

(assert (= (and b!6283371 c!1139691) b!6283367))

(assert (= (and b!6283371 (not c!1139691)) b!6283366))

(assert (= (and b!6283367 res!2591316) b!6283369))

(assert (= (and b!6283366 (not res!2591319)) b!6283374))

(assert (= (and b!6283374 res!2591318) b!6283372))

(assert (= (or b!6283369 b!6283372) bm!531908))

(assert (= (or b!6283367 b!6283374) bm!531909))

(assert (= (or b!6283368 bm!531908) bm!531910))

(declare-fun m!7104258 () Bool)

(assert (=> bm!531909 m!7104258))

(declare-fun m!7104260 () Bool)

(assert (=> b!6283373 m!7104260))

(declare-fun m!7104262 () Bool)

(assert (=> bm!531910 m!7104262))

(assert (=> bm!531598 d!1972131))

(assert (=> b!6281892 d!1971393))

(declare-fun d!1972133 () Bool)

(assert (=> d!1972133 (= (nullable!6196 lt!2354656) (nullableFct!2147 lt!2354656))))

(declare-fun bs!1570203 () Bool)

(assert (= bs!1570203 d!1972133))

(declare-fun m!7104264 () Bool)

(assert (=> bs!1570203 m!7104264))

(assert (=> b!6281749 d!1972133))

(declare-fun d!1972135 () Bool)

(assert (=> d!1972135 (= (nullable!6196 (h!71232 (exprs!6087 lt!2354667))) (nullableFct!2147 (h!71232 (exprs!6087 lt!2354667))))))

(declare-fun bs!1570204 () Bool)

(assert (= bs!1570204 d!1972135))

(declare-fun m!7104266 () Bool)

(assert (=> bs!1570204 m!7104266))

(assert (=> b!6281576 d!1972135))

(declare-fun d!1972137 () Bool)

(assert (=> d!1972137 (= (nullable!6196 (reg!16532 r!7292)) (nullableFct!2147 (reg!16532 r!7292)))))

(declare-fun bs!1570205 () Bool)

(assert (= bs!1570205 d!1972137))

(declare-fun m!7104268 () Bool)

(assert (=> bs!1570205 m!7104268))

(assert (=> b!6281844 d!1972137))

(declare-fun d!1972139 () Bool)

(declare-fun c!1139693 () Bool)

(assert (=> d!1972139 (= c!1139693 (isEmpty!36834 (tail!11991 (t!378469 s!2326))))))

(declare-fun e!3821044 () Bool)

(assert (=> d!1972139 (= (matchZipper!2215 (derivationStepZipper!2169 lt!2354645 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))) e!3821044)))

(declare-fun b!6283375 () Bool)

(assert (=> b!6283375 (= e!3821044 (nullableZipper!1973 (derivationStepZipper!2169 lt!2354645 (head!12906 (t!378469 s!2326)))))))

(declare-fun b!6283376 () Bool)

(assert (=> b!6283376 (= e!3821044 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354645 (head!12906 (t!378469 s!2326))) (head!12906 (tail!11991 (t!378469 s!2326)))) (tail!11991 (tail!11991 (t!378469 s!2326)))))))

(assert (= (and d!1972139 c!1139693) b!6283375))

(assert (= (and d!1972139 (not c!1139693)) b!6283376))

(assert (=> d!1972139 m!7102540))

(assert (=> d!1972139 m!7103958))

(assert (=> b!6283375 m!7102580))

(declare-fun m!7104270 () Bool)

(assert (=> b!6283375 m!7104270))

(assert (=> b!6283376 m!7102540))

(assert (=> b!6283376 m!7103962))

(assert (=> b!6283376 m!7102580))

(assert (=> b!6283376 m!7103962))

(declare-fun m!7104272 () Bool)

(assert (=> b!6283376 m!7104272))

(assert (=> b!6283376 m!7102540))

(assert (=> b!6283376 m!7103966))

(assert (=> b!6283376 m!7104272))

(assert (=> b!6283376 m!7103966))

(declare-fun m!7104274 () Bool)

(assert (=> b!6283376 m!7104274))

(assert (=> b!6281581 d!1972139))

(declare-fun bs!1570206 () Bool)

(declare-fun d!1972141 () Bool)

(assert (= bs!1570206 (and d!1972141 d!1971429)))

(declare-fun lambda!344724 () Int)

(assert (=> bs!1570206 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344724 lambda!344613))))

(declare-fun bs!1570207 () Bool)

(assert (= bs!1570207 (and d!1972141 d!1971965)))

(assert (=> bs!1570207 (= lambda!344724 lambda!344697)))

(declare-fun bs!1570208 () Bool)

(assert (= bs!1570208 (and d!1972141 b!6280977)))

(assert (=> bs!1570208 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344724 lambda!344509))))

(declare-fun bs!1570209 () Bool)

(assert (= bs!1570209 (and d!1972141 d!1971409)))

(assert (=> bs!1570209 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344724 lambda!344611))))

(declare-fun bs!1570210 () Bool)

(assert (= bs!1570210 (and d!1972141 d!1972021)))

(assert (=> bs!1570210 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344724 lambda!344702))))

(declare-fun bs!1570211 () Bool)

(assert (= bs!1570211 (and d!1972141 d!1972011)))

(assert (=> bs!1570211 (= lambda!344724 lambda!344701)))

(assert (=> d!1972141 true))

(assert (=> d!1972141 (= (derivationStepZipper!2169 lt!2354645 (head!12906 (t!378469 s!2326))) (flatMap!1708 lt!2354645 lambda!344724))))

(declare-fun bs!1570212 () Bool)

(assert (= bs!1570212 d!1972141))

(declare-fun m!7104276 () Bool)

(assert (=> bs!1570212 m!7104276))

(assert (=> b!6281581 d!1972141))

(assert (=> b!6281581 d!1971967))

(assert (=> b!6281581 d!1971969))

(declare-fun d!1972143 () Bool)

(assert (=> d!1972143 true))

(assert (=> d!1972143 true))

(declare-fun res!2591321 () Bool)

(assert (=> d!1972143 (= (choose!46643 lambda!344507) res!2591321)))

(assert (=> d!1971293 d!1972143))

(assert (=> b!6281729 d!1971925))

(declare-fun d!1972145 () Bool)

(assert (=> d!1972145 true))

(declare-fun setRes!42756 () Bool)

(assert (=> d!1972145 setRes!42756))

(declare-fun condSetEmpty!42756 () Bool)

(declare-fun res!2591322 () (InoxSet Context!11174))

(assert (=> d!1972145 (= condSetEmpty!42756 (= res!2591322 ((as const (Array Context!11174 Bool)) false)))))

(assert (=> d!1972145 (= (choose!46647 z!1189 lambda!344509) res!2591322)))

(declare-fun setIsEmpty!42756 () Bool)

(assert (=> setIsEmpty!42756 setRes!42756))

(declare-fun setElem!42756 () Context!11174)

(declare-fun e!3821045 () Bool)

(declare-fun tp!1750761 () Bool)

(declare-fun setNonEmpty!42756 () Bool)

(assert (=> setNonEmpty!42756 (= setRes!42756 (and tp!1750761 (inv!83754 setElem!42756) e!3821045))))

(declare-fun setRest!42756 () (InoxSet Context!11174))

(assert (=> setNonEmpty!42756 (= res!2591322 ((_ map or) (store ((as const (Array Context!11174 Bool)) false) setElem!42756 true) setRest!42756))))

(declare-fun b!6283377 () Bool)

(declare-fun tp!1750762 () Bool)

(assert (=> b!6283377 (= e!3821045 tp!1750762)))

(assert (= (and d!1972145 condSetEmpty!42756) setIsEmpty!42756))

(assert (= (and d!1972145 (not condSetEmpty!42756)) setNonEmpty!42756))

(assert (= setNonEmpty!42756 b!6283377))

(declare-fun m!7104278 () Bool)

(assert (=> setNonEmpty!42756 m!7104278))

(assert (=> d!1971397 d!1972145))

(assert (=> d!1971359 d!1971349))

(assert (=> d!1971359 d!1971345))

(declare-fun d!1972147 () Bool)

(assert (=> d!1972147 (= (matchR!8386 lt!2354656 s!2326) (matchRSpec!3304 lt!2354656 s!2326))))

(assert (=> d!1972147 true))

(declare-fun _$88!4931 () Unit!158143)

(assert (=> d!1972147 (= (choose!46649 lt!2354656 s!2326) _$88!4931)))

(declare-fun bs!1570213 () Bool)

(assert (= bs!1570213 d!1972147))

(assert (=> bs!1570213 m!7102014))

(assert (=> bs!1570213 m!7101986))

(assert (=> d!1971359 d!1972147))

(assert (=> d!1971359 d!1971933))

(declare-fun b!6283379 () Bool)

(declare-fun e!3821046 () List!64909)

(assert (=> b!6283379 (= e!3821046 (Cons!64785 (h!71233 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785))) (++!14276 (t!378469 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785))) (t!378469 s!2326))))))

(declare-fun d!1972149 () Bool)

(declare-fun e!3821047 () Bool)

(assert (=> d!1972149 e!3821047))

(declare-fun res!2591323 () Bool)

(assert (=> d!1972149 (=> (not res!2591323) (not e!3821047))))

(declare-fun lt!2354944 () List!64909)

(assert (=> d!1972149 (= res!2591323 (= (content!12180 lt!2354944) ((_ map or) (content!12180 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785))) (content!12180 (t!378469 s!2326)))))))

(assert (=> d!1972149 (= lt!2354944 e!3821046)))

(declare-fun c!1139694 () Bool)

(assert (=> d!1972149 (= c!1139694 ((_ is Nil!64785) (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785))))))

(assert (=> d!1972149 (= (++!14276 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (t!378469 s!2326)) lt!2354944)))

(declare-fun b!6283380 () Bool)

(declare-fun res!2591324 () Bool)

(assert (=> b!6283380 (=> (not res!2591324) (not e!3821047))))

(assert (=> b!6283380 (= res!2591324 (= (size!40314 lt!2354944) (+ (size!40314 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785))) (size!40314 (t!378469 s!2326)))))))

(declare-fun b!6283381 () Bool)

(assert (=> b!6283381 (= e!3821047 (or (not (= (t!378469 s!2326) Nil!64785)) (= lt!2354944 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)))))))

(declare-fun b!6283378 () Bool)

(assert (=> b!6283378 (= e!3821046 (t!378469 s!2326))))

(assert (= (and d!1972149 c!1139694) b!6283378))

(assert (= (and d!1972149 (not c!1139694)) b!6283379))

(assert (= (and d!1972149 res!2591323) b!6283380))

(assert (= (and b!6283380 res!2591324) b!6283381))

(declare-fun m!7104280 () Bool)

(assert (=> b!6283379 m!7104280))

(declare-fun m!7104282 () Bool)

(assert (=> d!1972149 m!7104282))

(assert (=> d!1972149 m!7102500))

(declare-fun m!7104284 () Bool)

(assert (=> d!1972149 m!7104284))

(declare-fun m!7104286 () Bool)

(assert (=> d!1972149 m!7104286))

(declare-fun m!7104288 () Bool)

(assert (=> b!6283380 m!7104288))

(assert (=> b!6283380 m!7102500))

(declare-fun m!7104290 () Bool)

(assert (=> b!6283380 m!7104290))

(declare-fun m!7104292 () Bool)

(assert (=> b!6283380 m!7104292))

(assert (=> b!6281733 d!1972149))

(declare-fun b!6283383 () Bool)

(declare-fun e!3821048 () List!64909)

(assert (=> b!6283383 (= e!3821048 (Cons!64785 (h!71233 Nil!64785) (++!14276 (t!378469 Nil!64785) (Cons!64785 (h!71233 s!2326) Nil!64785))))))

(declare-fun d!1972151 () Bool)

(declare-fun e!3821049 () Bool)

(assert (=> d!1972151 e!3821049))

(declare-fun res!2591325 () Bool)

(assert (=> d!1972151 (=> (not res!2591325) (not e!3821049))))

(declare-fun lt!2354945 () List!64909)

(assert (=> d!1972151 (= res!2591325 (= (content!12180 lt!2354945) ((_ map or) (content!12180 Nil!64785) (content!12180 (Cons!64785 (h!71233 s!2326) Nil!64785)))))))

(assert (=> d!1972151 (= lt!2354945 e!3821048)))

(declare-fun c!1139695 () Bool)

(assert (=> d!1972151 (= c!1139695 ((_ is Nil!64785) Nil!64785))))

(assert (=> d!1972151 (= (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) lt!2354945)))

(declare-fun b!6283384 () Bool)

(declare-fun res!2591326 () Bool)

(assert (=> b!6283384 (=> (not res!2591326) (not e!3821049))))

(assert (=> b!6283384 (= res!2591326 (= (size!40314 lt!2354945) (+ (size!40314 Nil!64785) (size!40314 (Cons!64785 (h!71233 s!2326) Nil!64785)))))))

(declare-fun b!6283385 () Bool)

(assert (=> b!6283385 (= e!3821049 (or (not (= (Cons!64785 (h!71233 s!2326) Nil!64785) Nil!64785)) (= lt!2354945 Nil!64785)))))

(declare-fun b!6283382 () Bool)

(assert (=> b!6283382 (= e!3821048 (Cons!64785 (h!71233 s!2326) Nil!64785))))

(assert (= (and d!1972151 c!1139695) b!6283382))

(assert (= (and d!1972151 (not c!1139695)) b!6283383))

(assert (= (and d!1972151 res!2591325) b!6283384))

(assert (= (and b!6283384 res!2591326) b!6283385))

(declare-fun m!7104294 () Bool)

(assert (=> b!6283383 m!7104294))

(declare-fun m!7104296 () Bool)

(assert (=> d!1972151 m!7104296))

(declare-fun m!7104298 () Bool)

(assert (=> d!1972151 m!7104298))

(declare-fun m!7104300 () Bool)

(assert (=> d!1972151 m!7104300))

(declare-fun m!7104302 () Bool)

(assert (=> b!6283384 m!7104302))

(declare-fun m!7104304 () Bool)

(assert (=> b!6283384 m!7104304))

(declare-fun m!7104306 () Bool)

(assert (=> b!6283384 m!7104306))

(assert (=> b!6281733 d!1972151))

(declare-fun d!1972153 () Bool)

(assert (=> d!1972153 (= (++!14276 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (t!378469 s!2326)) s!2326)))

(declare-fun lt!2354948 () Unit!158143)

(declare-fun choose!46654 (List!64909 C!32676 List!64909 List!64909) Unit!158143)

(assert (=> d!1972153 (= lt!2354948 (choose!46654 Nil!64785 (h!71233 s!2326) (t!378469 s!2326) s!2326))))

(assert (=> d!1972153 (= (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) (t!378469 s!2326))) s!2326)))

(assert (=> d!1972153 (= (lemmaMoveElementToOtherListKeepsConcatEq!2371 Nil!64785 (h!71233 s!2326) (t!378469 s!2326) s!2326) lt!2354948)))

(declare-fun bs!1570214 () Bool)

(assert (= bs!1570214 d!1972153))

(assert (=> bs!1570214 m!7102500))

(assert (=> bs!1570214 m!7102500))

(assert (=> bs!1570214 m!7102502))

(declare-fun m!7104308 () Bool)

(assert (=> bs!1570214 m!7104308))

(declare-fun m!7104310 () Bool)

(assert (=> bs!1570214 m!7104310))

(assert (=> b!6281733 d!1972153))

(declare-fun b!6283386 () Bool)

(declare-fun e!3821051 () Bool)

(assert (=> b!6283386 (= e!3821051 (matchR!8386 lt!2354652 (t!378469 s!2326)))))

(declare-fun b!6283387 () Bool)

(declare-fun e!3821052 () Bool)

(declare-fun lt!2354950 () Option!16094)

(assert (=> b!6283387 (= e!3821052 (not (isDefined!12797 lt!2354950)))))

(declare-fun b!6283388 () Bool)

(declare-fun e!3821053 () Bool)

(assert (=> b!6283388 (= e!3821053 (= (++!14276 (_1!36485 (get!22393 lt!2354950)) (_2!36485 (get!22393 lt!2354950))) s!2326))))

(declare-fun b!6283389 () Bool)

(declare-fun e!3821050 () Option!16094)

(assert (=> b!6283389 (= e!3821050 None!16093)))

(declare-fun d!1972155 () Bool)

(assert (=> d!1972155 e!3821052))

(declare-fun res!2591329 () Bool)

(assert (=> d!1972155 (=> res!2591329 e!3821052)))

(assert (=> d!1972155 (= res!2591329 e!3821053)))

(declare-fun res!2591330 () Bool)

(assert (=> d!1972155 (=> (not res!2591330) (not e!3821053))))

(assert (=> d!1972155 (= res!2591330 (isDefined!12797 lt!2354950))))

(declare-fun e!3821054 () Option!16094)

(assert (=> d!1972155 (= lt!2354950 e!3821054)))

(declare-fun c!1139697 () Bool)

(assert (=> d!1972155 (= c!1139697 e!3821051)))

(declare-fun res!2591327 () Bool)

(assert (=> d!1972155 (=> (not res!2591327) (not e!3821051))))

(assert (=> d!1972155 (= res!2591327 (matchR!8386 (regOne!32918 (regOne!32918 r!7292)) (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785))))))

(assert (=> d!1972155 (validRegex!7939 (regOne!32918 (regOne!32918 r!7292)))))

(assert (=> d!1972155 (= (findConcatSeparation!2508 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (t!378469 s!2326) s!2326) lt!2354950)))

(declare-fun b!6283390 () Bool)

(assert (=> b!6283390 (= e!3821054 (Some!16093 (tuple2!66365 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (t!378469 s!2326))))))

(declare-fun b!6283391 () Bool)

(declare-fun lt!2354949 () Unit!158143)

(declare-fun lt!2354951 () Unit!158143)

(assert (=> b!6283391 (= lt!2354949 lt!2354951)))

(assert (=> b!6283391 (= (++!14276 (++!14276 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (Cons!64785 (h!71233 (t!378469 s!2326)) Nil!64785)) (t!378469 (t!378469 s!2326))) s!2326)))

(assert (=> b!6283391 (= lt!2354951 (lemmaMoveElementToOtherListKeepsConcatEq!2371 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (h!71233 (t!378469 s!2326)) (t!378469 (t!378469 s!2326)) s!2326))))

(assert (=> b!6283391 (= e!3821050 (findConcatSeparation!2508 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 (++!14276 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (Cons!64785 (h!71233 (t!378469 s!2326)) Nil!64785)) (t!378469 (t!378469 s!2326)) s!2326))))

(declare-fun b!6283392 () Bool)

(declare-fun res!2591331 () Bool)

(assert (=> b!6283392 (=> (not res!2591331) (not e!3821053))))

(assert (=> b!6283392 (= res!2591331 (matchR!8386 lt!2354652 (_2!36485 (get!22393 lt!2354950))))))

(declare-fun b!6283393 () Bool)

(assert (=> b!6283393 (= e!3821054 e!3821050)))

(declare-fun c!1139696 () Bool)

(assert (=> b!6283393 (= c!1139696 ((_ is Nil!64785) (t!378469 s!2326)))))

(declare-fun b!6283394 () Bool)

(declare-fun res!2591328 () Bool)

(assert (=> b!6283394 (=> (not res!2591328) (not e!3821053))))

(assert (=> b!6283394 (= res!2591328 (matchR!8386 (regOne!32918 (regOne!32918 r!7292)) (_1!36485 (get!22393 lt!2354950))))))

(assert (= (and d!1972155 res!2591327) b!6283386))

(assert (= (and d!1972155 c!1139697) b!6283390))

(assert (= (and d!1972155 (not c!1139697)) b!6283393))

(assert (= (and b!6283393 c!1139696) b!6283389))

(assert (= (and b!6283393 (not c!1139696)) b!6283391))

(assert (= (and d!1972155 res!2591330) b!6283394))

(assert (= (and b!6283394 res!2591328) b!6283392))

(assert (= (and b!6283392 res!2591331) b!6283388))

(assert (= (and d!1972155 (not res!2591329)) b!6283387))

(declare-fun m!7104312 () Bool)

(assert (=> d!1972155 m!7104312))

(assert (=> d!1972155 m!7102500))

(declare-fun m!7104314 () Bool)

(assert (=> d!1972155 m!7104314))

(assert (=> d!1972155 m!7102678))

(assert (=> b!6283391 m!7102500))

(declare-fun m!7104316 () Bool)

(assert (=> b!6283391 m!7104316))

(assert (=> b!6283391 m!7104316))

(declare-fun m!7104318 () Bool)

(assert (=> b!6283391 m!7104318))

(assert (=> b!6283391 m!7102500))

(declare-fun m!7104320 () Bool)

(assert (=> b!6283391 m!7104320))

(assert (=> b!6283391 m!7104316))

(declare-fun m!7104322 () Bool)

(assert (=> b!6283391 m!7104322))

(declare-fun m!7104324 () Bool)

(assert (=> b!6283392 m!7104324))

(declare-fun m!7104326 () Bool)

(assert (=> b!6283392 m!7104326))

(assert (=> b!6283387 m!7104312))

(declare-fun m!7104328 () Bool)

(assert (=> b!6283386 m!7104328))

(assert (=> b!6283394 m!7104324))

(declare-fun m!7104330 () Bool)

(assert (=> b!6283394 m!7104330))

(assert (=> b!6283388 m!7104324))

(declare-fun m!7104332 () Bool)

(assert (=> b!6283388 m!7104332))

(assert (=> b!6281733 d!1972155))

(declare-fun bs!1570215 () Bool)

(declare-fun d!1972157 () Bool)

(assert (= bs!1570215 (and d!1972157 d!1971363)))

(declare-fun lambda!344725 () Int)

(assert (=> bs!1570215 (= lambda!344725 lambda!344602)))

(declare-fun bs!1570216 () Bool)

(assert (= bs!1570216 (and d!1972157 d!1971341)))

(assert (=> bs!1570216 (= lambda!344725 lambda!344595)))

(declare-fun bs!1570217 () Bool)

(assert (= bs!1570217 (and d!1972157 d!1971351)))

(assert (=> bs!1570217 (= lambda!344725 lambda!344601)))

(declare-fun bs!1570218 () Bool)

(assert (= bs!1570218 (and d!1972157 d!1972059)))

(assert (=> bs!1570218 (= lambda!344725 lambda!344712)))

(declare-fun bs!1570219 () Bool)

(assert (= bs!1570219 (and d!1972157 d!1971431)))

(assert (=> bs!1570219 (= lambda!344725 lambda!344616)))

(declare-fun bs!1570220 () Bool)

(assert (= bs!1570220 (and d!1972157 d!1972113)))

(assert (=> bs!1570220 (= lambda!344725 lambda!344723)))

(declare-fun bs!1570221 () Bool)

(assert (= bs!1570221 (and d!1972157 d!1971415)))

(assert (=> bs!1570221 (= lambda!344725 lambda!344612)))

(declare-fun bs!1570222 () Bool)

(assert (= bs!1570222 (and d!1972157 d!1971343)))

(assert (=> bs!1570222 (= lambda!344725 lambda!344598)))

(declare-fun bs!1570223 () Bool)

(assert (= bs!1570223 (and d!1972157 d!1972061)))

(assert (=> bs!1570223 (= lambda!344725 lambda!344713)))

(declare-fun bs!1570224 () Bool)

(assert (= bs!1570224 (and d!1972157 d!1971367)))

(assert (=> bs!1570224 (= lambda!344725 lambda!344604)))

(declare-fun bs!1570225 () Bool)

(assert (= bs!1570225 (and d!1972157 d!1971433)))

(assert (=> bs!1570225 (= lambda!344725 lambda!344619)))

(declare-fun b!6283395 () Bool)

(declare-fun e!3821058 () Regex!16203)

(assert (=> b!6283395 (= e!3821058 EmptyExpr!16203)))

(declare-fun b!6283396 () Bool)

(declare-fun e!3821059 () Regex!16203)

(assert (=> b!6283396 (= e!3821059 (h!71232 (t!378468 lt!2354672)))))

(declare-fun e!3821056 () Bool)

(assert (=> d!1972157 e!3821056))

(declare-fun res!2591333 () Bool)

(assert (=> d!1972157 (=> (not res!2591333) (not e!3821056))))

(declare-fun lt!2354952 () Regex!16203)

(assert (=> d!1972157 (= res!2591333 (validRegex!7939 lt!2354952))))

(assert (=> d!1972157 (= lt!2354952 e!3821059)))

(declare-fun c!1139701 () Bool)

(declare-fun e!3821057 () Bool)

(assert (=> d!1972157 (= c!1139701 e!3821057)))

(declare-fun res!2591332 () Bool)

(assert (=> d!1972157 (=> (not res!2591332) (not e!3821057))))

(assert (=> d!1972157 (= res!2591332 ((_ is Cons!64784) (t!378468 lt!2354672)))))

(assert (=> d!1972157 (forall!15344 (t!378468 lt!2354672) lambda!344725)))

(assert (=> d!1972157 (= (generalisedConcat!1800 (t!378468 lt!2354672)) lt!2354952)))

(declare-fun b!6283397 () Bool)

(assert (=> b!6283397 (= e!3821059 e!3821058)))

(declare-fun c!1139699 () Bool)

(assert (=> b!6283397 (= c!1139699 ((_ is Cons!64784) (t!378468 lt!2354672)))))

(declare-fun b!6283398 () Bool)

(declare-fun e!3821060 () Bool)

(assert (=> b!6283398 (= e!3821060 (isConcat!1132 lt!2354952))))

(declare-fun b!6283399 () Bool)

(assert (=> b!6283399 (= e!3821058 (Concat!25048 (h!71232 (t!378468 lt!2354672)) (generalisedConcat!1800 (t!378468 (t!378468 lt!2354672)))))))

(declare-fun b!6283400 () Bool)

(assert (=> b!6283400 (= e!3821060 (= lt!2354952 (head!12907 (t!378468 lt!2354672))))))

(declare-fun b!6283401 () Bool)

(declare-fun e!3821055 () Bool)

(assert (=> b!6283401 (= e!3821056 e!3821055)))

(declare-fun c!1139700 () Bool)

(assert (=> b!6283401 (= c!1139700 (isEmpty!36830 (t!378468 lt!2354672)))))

(declare-fun b!6283402 () Bool)

(assert (=> b!6283402 (= e!3821055 e!3821060)))

(declare-fun c!1139698 () Bool)

(assert (=> b!6283402 (= c!1139698 (isEmpty!36830 (tail!11992 (t!378468 lt!2354672))))))

(declare-fun b!6283403 () Bool)

(assert (=> b!6283403 (= e!3821055 (isEmptyExpr!1609 lt!2354952))))

(declare-fun b!6283404 () Bool)

(assert (=> b!6283404 (= e!3821057 (isEmpty!36830 (t!378468 (t!378468 lt!2354672))))))

(assert (= (and d!1972157 res!2591332) b!6283404))

(assert (= (and d!1972157 c!1139701) b!6283396))

(assert (= (and d!1972157 (not c!1139701)) b!6283397))

(assert (= (and b!6283397 c!1139699) b!6283399))

(assert (= (and b!6283397 (not c!1139699)) b!6283395))

(assert (= (and d!1972157 res!2591333) b!6283401))

(assert (= (and b!6283401 c!1139700) b!6283403))

(assert (= (and b!6283401 (not c!1139700)) b!6283402))

(assert (= (and b!6283402 c!1139698) b!6283400))

(assert (= (and b!6283402 (not c!1139698)) b!6283398))

(declare-fun m!7104334 () Bool)

(assert (=> b!6283403 m!7104334))

(declare-fun m!7104336 () Bool)

(assert (=> b!6283399 m!7104336))

(declare-fun m!7104338 () Bool)

(assert (=> b!6283402 m!7104338))

(assert (=> b!6283402 m!7104338))

(declare-fun m!7104340 () Bool)

(assert (=> b!6283402 m!7104340))

(declare-fun m!7104342 () Bool)

(assert (=> b!6283400 m!7104342))

(declare-fun m!7104344 () Bool)

(assert (=> d!1972157 m!7104344))

(declare-fun m!7104346 () Bool)

(assert (=> d!1972157 m!7104346))

(declare-fun m!7104348 () Bool)

(assert (=> b!6283404 m!7104348))

(declare-fun m!7104350 () Bool)

(assert (=> b!6283398 m!7104350))

(assert (=> b!6283401 m!7102712))

(assert (=> b!6281755 d!1972157))

(declare-fun bs!1570226 () Bool)

(declare-fun b!6283411 () Bool)

(assert (= bs!1570226 (and b!6283411 d!1971363)))

(declare-fun lambda!344730 () Int)

(assert (=> bs!1570226 (not (= lambda!344730 lambda!344602))))

(declare-fun bs!1570227 () Bool)

(assert (= bs!1570227 (and b!6283411 d!1971341)))

(assert (=> bs!1570227 (not (= lambda!344730 lambda!344595))))

(declare-fun bs!1570228 () Bool)

(assert (= bs!1570228 (and b!6283411 d!1971351)))

(assert (=> bs!1570228 (not (= lambda!344730 lambda!344601))))

(declare-fun bs!1570229 () Bool)

(assert (= bs!1570229 (and b!6283411 d!1972059)))

(assert (=> bs!1570229 (not (= lambda!344730 lambda!344712))))

(declare-fun bs!1570230 () Bool)

(assert (= bs!1570230 (and b!6283411 d!1971431)))

(assert (=> bs!1570230 (not (= lambda!344730 lambda!344616))))

(declare-fun bs!1570231 () Bool)

(assert (= bs!1570231 (and b!6283411 d!1972113)))

(assert (=> bs!1570231 (not (= lambda!344730 lambda!344723))))

(declare-fun bs!1570232 () Bool)

(assert (= bs!1570232 (and b!6283411 d!1971415)))

(assert (=> bs!1570232 (not (= lambda!344730 lambda!344612))))

(declare-fun bs!1570233 () Bool)

(assert (= bs!1570233 (and b!6283411 d!1972157)))

(assert (=> bs!1570233 (not (= lambda!344730 lambda!344725))))

(declare-fun bs!1570234 () Bool)

(assert (= bs!1570234 (and b!6283411 d!1971343)))

(assert (=> bs!1570234 (not (= lambda!344730 lambda!344598))))

(declare-fun bs!1570235 () Bool)

(assert (= bs!1570235 (and b!6283411 d!1972061)))

(assert (=> bs!1570235 (not (= lambda!344730 lambda!344713))))

(declare-fun bs!1570236 () Bool)

(assert (= bs!1570236 (and b!6283411 d!1971367)))

(assert (=> bs!1570236 (not (= lambda!344730 lambda!344604))))

(declare-fun bs!1570237 () Bool)

(assert (= bs!1570237 (and b!6283411 d!1971433)))

(assert (=> bs!1570237 (not (= lambda!344730 lambda!344619))))

(assert (=> b!6283411 true))

(declare-fun bs!1570238 () Bool)

(declare-fun b!6283413 () Bool)

(assert (= bs!1570238 (and b!6283413 d!1971363)))

(declare-fun lambda!344731 () Int)

(assert (=> bs!1570238 (not (= lambda!344731 lambda!344602))))

(declare-fun bs!1570239 () Bool)

(assert (= bs!1570239 (and b!6283413 d!1971341)))

(assert (=> bs!1570239 (not (= lambda!344731 lambda!344595))))

(declare-fun bs!1570240 () Bool)

(assert (= bs!1570240 (and b!6283413 d!1971351)))

(assert (=> bs!1570240 (not (= lambda!344731 lambda!344601))))

(declare-fun bs!1570241 () Bool)

(assert (= bs!1570241 (and b!6283413 d!1972059)))

(assert (=> bs!1570241 (not (= lambda!344731 lambda!344712))))

(declare-fun bs!1570242 () Bool)

(assert (= bs!1570242 (and b!6283413 b!6283411)))

(declare-fun lt!2354962 () Int)

(declare-fun lt!2354961 () Int)

(assert (=> bs!1570242 (= (= lt!2354961 lt!2354962) (= lambda!344731 lambda!344730))))

(declare-fun bs!1570243 () Bool)

(assert (= bs!1570243 (and b!6283413 d!1971431)))

(assert (=> bs!1570243 (not (= lambda!344731 lambda!344616))))

(declare-fun bs!1570244 () Bool)

(assert (= bs!1570244 (and b!6283413 d!1972113)))

(assert (=> bs!1570244 (not (= lambda!344731 lambda!344723))))

(declare-fun bs!1570245 () Bool)

(assert (= bs!1570245 (and b!6283413 d!1971415)))

(assert (=> bs!1570245 (not (= lambda!344731 lambda!344612))))

(declare-fun bs!1570246 () Bool)

(assert (= bs!1570246 (and b!6283413 d!1972157)))

(assert (=> bs!1570246 (not (= lambda!344731 lambda!344725))))

(declare-fun bs!1570247 () Bool)

(assert (= bs!1570247 (and b!6283413 d!1971343)))

(assert (=> bs!1570247 (not (= lambda!344731 lambda!344598))))

(declare-fun bs!1570248 () Bool)

(assert (= bs!1570248 (and b!6283413 d!1972061)))

(assert (=> bs!1570248 (not (= lambda!344731 lambda!344713))))

(declare-fun bs!1570249 () Bool)

(assert (= bs!1570249 (and b!6283413 d!1971367)))

(assert (=> bs!1570249 (not (= lambda!344731 lambda!344604))))

(declare-fun bs!1570250 () Bool)

(assert (= bs!1570250 (and b!6283413 d!1971433)))

(assert (=> bs!1570250 (not (= lambda!344731 lambda!344619))))

(assert (=> b!6283413 true))

(declare-fun d!1972159 () Bool)

(declare-fun e!3821066 () Bool)

(assert (=> d!1972159 e!3821066))

(declare-fun res!2591336 () Bool)

(assert (=> d!1972159 (=> (not res!2591336) (not e!3821066))))

(assert (=> d!1972159 (= res!2591336 (>= lt!2354961 0))))

(declare-fun e!3821065 () Int)

(assert (=> d!1972159 (= lt!2354961 e!3821065)))

(declare-fun c!1139705 () Bool)

(assert (=> d!1972159 (= c!1139705 ((_ is Cons!64784) (exprs!6087 (h!71234 zl!343))))))

(assert (=> d!1972159 (= (contextDepth!220 (h!71234 zl!343)) lt!2354961)))

(assert (=> b!6283411 (= e!3821065 lt!2354962)))

(declare-fun regexDepth!314 (Regex!16203) Int)

(assert (=> b!6283411 (= lt!2354962 (maxBigInt!0 (regexDepth!314 (h!71232 (exprs!6087 (h!71234 zl!343)))) (contextDepth!220 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))))))))

(declare-fun lt!2354964 () Unit!158143)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!104 (List!64908 Int Int) Unit!158143)

(assert (=> b!6283411 (= lt!2354964 (lemmaForallRegexDepthBiggerThanTransitive!104 (t!378468 (exprs!6087 (h!71234 zl!343))) lt!2354962 (contextDepth!220 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))))))))

(assert (=> b!6283411 (forall!15344 (t!378468 (exprs!6087 (h!71234 zl!343))) lambda!344730)))

(declare-fun lt!2354963 () Unit!158143)

(assert (=> b!6283411 (= lt!2354963 lt!2354964)))

(declare-fun b!6283412 () Bool)

(assert (=> b!6283412 (= e!3821065 0)))

(assert (=> b!6283413 (= e!3821066 (forall!15344 (exprs!6087 (h!71234 zl!343)) lambda!344731))))

(assert (= (and d!1972159 c!1139705) b!6283411))

(assert (= (and d!1972159 (not c!1139705)) b!6283412))

(assert (= (and d!1972159 res!2591336) b!6283413))

(declare-fun m!7104352 () Bool)

(assert (=> b!6283411 m!7104352))

(declare-fun m!7104354 () Bool)

(assert (=> b!6283411 m!7104354))

(declare-fun m!7104356 () Bool)

(assert (=> b!6283411 m!7104356))

(assert (=> b!6283411 m!7104352))

(declare-fun m!7104358 () Bool)

(assert (=> b!6283411 m!7104358))

(declare-fun m!7104360 () Bool)

(assert (=> b!6283411 m!7104360))

(assert (=> b!6283411 m!7104356))

(assert (=> b!6283411 m!7104352))

(declare-fun m!7104362 () Bool)

(assert (=> b!6283413 m!7104362))

(assert (=> b!6281684 d!1972159))

(declare-fun bs!1570251 () Bool)

(declare-fun b!6283416 () Bool)

(assert (= bs!1570251 (and b!6283416 b!6281679)))

(declare-fun lambda!344732 () Int)

(assert (=> bs!1570251 (= lambda!344732 lambda!344587)))

(declare-fun bs!1570252 () Bool)

(assert (= bs!1570252 (and b!6283416 b!6281684)))

(assert (=> bs!1570252 (= lambda!344732 lambda!344590)))

(declare-fun bs!1570253 () Bool)

(assert (= bs!1570253 (and b!6283416 d!1972033)))

(declare-fun lambda!344733 () Int)

(assert (=> bs!1570253 (not (= lambda!344733 lambda!344703))))

(declare-fun bs!1570254 () Bool)

(assert (= bs!1570254 (and b!6283416 b!6281686)))

(declare-fun lt!2354967 () Int)

(assert (=> bs!1570254 (= (= lt!2354967 lt!2354812) (= lambda!344733 lambda!344592))))

(assert (=> bs!1570252 (= (= lt!2354967 lt!2354811) (= lambda!344733 lambda!344591))))

(declare-fun bs!1570255 () Bool)

(assert (= bs!1570255 (and b!6283416 d!1972097)))

(assert (=> bs!1570255 (not (= lambda!344733 lambda!344722))))

(declare-fun bs!1570256 () Bool)

(assert (= bs!1570256 (and b!6283416 b!6281681)))

(assert (=> bs!1570256 (= (= lt!2354967 lt!2354808) (= lambda!344733 lambda!344589))))

(declare-fun bs!1570257 () Bool)

(assert (= bs!1570257 (and b!6283416 d!1971997)))

(assert (=> bs!1570257 (not (= lambda!344733 lambda!344700))))

(assert (=> bs!1570251 (= (= lt!2354967 lt!2354807) (= lambda!344733 lambda!344588))))

(declare-fun bs!1570258 () Bool)

(assert (= bs!1570258 (and b!6283416 d!1972071)))

(assert (=> bs!1570258 (not (= lambda!344733 lambda!344716))))

(assert (=> b!6283416 true))

(declare-fun bs!1570259 () Bool)

(declare-fun b!6283418 () Bool)

(assert (= bs!1570259 (and b!6283418 d!1972033)))

(declare-fun lambda!344734 () Int)

(assert (=> bs!1570259 (not (= lambda!344734 lambda!344703))))

(declare-fun bs!1570260 () Bool)

(assert (= bs!1570260 (and b!6283418 b!6281686)))

(declare-fun lt!2354968 () Int)

(assert (=> bs!1570260 (= (= lt!2354968 lt!2354812) (= lambda!344734 lambda!344592))))

(declare-fun bs!1570261 () Bool)

(assert (= bs!1570261 (and b!6283418 b!6281684)))

(assert (=> bs!1570261 (= (= lt!2354968 lt!2354811) (= lambda!344734 lambda!344591))))

(declare-fun bs!1570262 () Bool)

(assert (= bs!1570262 (and b!6283418 d!1972097)))

(assert (=> bs!1570262 (not (= lambda!344734 lambda!344722))))

(declare-fun bs!1570263 () Bool)

(assert (= bs!1570263 (and b!6283418 b!6281681)))

(assert (=> bs!1570263 (= (= lt!2354968 lt!2354808) (= lambda!344734 lambda!344589))))

(declare-fun bs!1570264 () Bool)

(assert (= bs!1570264 (and b!6283418 d!1971997)))

(assert (=> bs!1570264 (not (= lambda!344734 lambda!344700))))

(declare-fun bs!1570265 () Bool)

(assert (= bs!1570265 (and b!6283418 d!1972071)))

(assert (=> bs!1570265 (not (= lambda!344734 lambda!344716))))

(declare-fun bs!1570266 () Bool)

(assert (= bs!1570266 (and b!6283418 b!6283416)))

(assert (=> bs!1570266 (= (= lt!2354968 lt!2354967) (= lambda!344734 lambda!344733))))

(declare-fun bs!1570267 () Bool)

(assert (= bs!1570267 (and b!6283418 b!6281679)))

(assert (=> bs!1570267 (= (= lt!2354968 lt!2354807) (= lambda!344734 lambda!344588))))

(assert (=> b!6283418 true))

(declare-fun d!1972161 () Bool)

(declare-fun e!3821068 () Bool)

(assert (=> d!1972161 e!3821068))

(declare-fun res!2591337 () Bool)

(assert (=> d!1972161 (=> (not res!2591337) (not e!3821068))))

(assert (=> d!1972161 (= res!2591337 (>= lt!2354968 0))))

(declare-fun e!3821067 () Int)

(assert (=> d!1972161 (= lt!2354968 e!3821067)))

(declare-fun c!1139706 () Bool)

(assert (=> d!1972161 (= c!1139706 ((_ is Cons!64786) (t!378470 zl!343)))))

(assert (=> d!1972161 (= (zipperDepth!328 (t!378470 zl!343)) lt!2354968)))

(assert (=> b!6283416 (= e!3821067 lt!2354967)))

(assert (=> b!6283416 (= lt!2354967 (maxBigInt!0 (contextDepth!220 (h!71234 (t!378470 zl!343))) (zipperDepth!328 (t!378470 (t!378470 zl!343)))))))

(declare-fun lt!2354966 () Unit!158143)

(assert (=> b!6283416 (= lt!2354966 (lemmaForallContextDepthBiggerThanTransitive!204 (t!378470 (t!378470 zl!343)) lt!2354967 (zipperDepth!328 (t!378470 (t!378470 zl!343))) lambda!344732))))

(assert (=> b!6283416 (forall!15343 (t!378470 (t!378470 zl!343)) lambda!344733)))

(declare-fun lt!2354965 () Unit!158143)

(assert (=> b!6283416 (= lt!2354965 lt!2354966)))

(declare-fun b!6283417 () Bool)

(assert (=> b!6283417 (= e!3821067 0)))

(assert (=> b!6283418 (= e!3821068 (forall!15343 (t!378470 zl!343) lambda!344734))))

(assert (= (and d!1972161 c!1139706) b!6283416))

(assert (= (and d!1972161 (not c!1139706)) b!6283417))

(assert (= (and d!1972161 res!2591337) b!6283418))

(declare-fun m!7104364 () Bool)

(assert (=> b!6283416 m!7104364))

(declare-fun m!7104366 () Bool)

(assert (=> b!6283416 m!7104366))

(declare-fun m!7104368 () Bool)

(assert (=> b!6283416 m!7104368))

(assert (=> b!6283416 m!7104366))

(assert (=> b!6283416 m!7104364))

(declare-fun m!7104370 () Bool)

(assert (=> b!6283416 m!7104370))

(assert (=> b!6283416 m!7104364))

(declare-fun m!7104372 () Bool)

(assert (=> b!6283416 m!7104372))

(declare-fun m!7104374 () Bool)

(assert (=> b!6283418 m!7104374))

(assert (=> b!6281684 d!1972161))

(declare-fun d!1972163 () Bool)

(assert (=> d!1972163 (= (maxBigInt!0 (contextDepth!220 (h!71234 zl!343)) (zipperDepth!328 (t!378470 zl!343))) (ite (>= (contextDepth!220 (h!71234 zl!343)) (zipperDepth!328 (t!378470 zl!343))) (contextDepth!220 (h!71234 zl!343)) (zipperDepth!328 (t!378470 zl!343))))))

(assert (=> b!6281684 d!1972163))

(declare-fun bs!1570268 () Bool)

(declare-fun d!1972165 () Bool)

(assert (= bs!1570268 (and d!1972165 d!1972033)))

(declare-fun lambda!344737 () Int)

(assert (=> bs!1570268 (not (= lambda!344737 lambda!344703))))

(declare-fun bs!1570269 () Bool)

(assert (= bs!1570269 (and d!1972165 b!6281684)))

(assert (=> bs!1570269 (not (= lambda!344737 lambda!344591))))

(declare-fun bs!1570270 () Bool)

(assert (= bs!1570270 (and d!1972165 d!1972097)))

(assert (=> bs!1570270 (not (= lambda!344737 lambda!344722))))

(declare-fun bs!1570271 () Bool)

(assert (= bs!1570271 (and d!1972165 b!6281681)))

(assert (=> bs!1570271 (not (= lambda!344737 lambda!344589))))

(declare-fun bs!1570272 () Bool)

(assert (= bs!1570272 (and d!1972165 d!1971997)))

(assert (=> bs!1570272 (not (= lambda!344737 lambda!344700))))

(declare-fun bs!1570273 () Bool)

(assert (= bs!1570273 (and d!1972165 d!1972071)))

(assert (=> bs!1570273 (not (= lambda!344737 lambda!344716))))

(declare-fun bs!1570274 () Bool)

(assert (= bs!1570274 (and d!1972165 b!6281686)))

(assert (=> bs!1570274 (not (= lambda!344737 lambda!344592))))

(declare-fun bs!1570275 () Bool)

(assert (= bs!1570275 (and d!1972165 b!6283418)))

(assert (=> bs!1570275 (not (= lambda!344737 lambda!344734))))

(declare-fun bs!1570276 () Bool)

(assert (= bs!1570276 (and d!1972165 b!6283416)))

(assert (=> bs!1570276 (not (= lambda!344737 lambda!344733))))

(declare-fun bs!1570277 () Bool)

(assert (= bs!1570277 (and d!1972165 b!6281679)))

(assert (=> bs!1570277 (not (= lambda!344737 lambda!344588))))

(assert (=> d!1972165 true))

(assert (=> d!1972165 true))

(declare-fun order!27473 () Int)

(declare-fun order!27475 () Int)

(declare-fun dynLambda!25635 (Int Int) Int)

(declare-fun dynLambda!25636 (Int Int) Int)

(assert (=> d!1972165 (< (dynLambda!25635 order!27473 lambda!344590) (dynLambda!25636 order!27475 lambda!344737))))

(assert (=> d!1972165 (forall!15343 (t!378470 zl!343) lambda!344737)))

(declare-fun lt!2354971 () Unit!158143)

(declare-fun choose!46655 (List!64910 Int Int Int) Unit!158143)

(assert (=> d!1972165 (= lt!2354971 (choose!46655 (t!378470 zl!343) lt!2354811 (zipperDepth!328 (t!378470 zl!343)) lambda!344590))))

(assert (=> d!1972165 (>= lt!2354811 (zipperDepth!328 (t!378470 zl!343)))))

(assert (=> d!1972165 (= (lemmaForallContextDepthBiggerThanTransitive!204 (t!378470 zl!343) lt!2354811 (zipperDepth!328 (t!378470 zl!343)) lambda!344590) lt!2354971)))

(declare-fun bs!1570278 () Bool)

(assert (= bs!1570278 d!1972165))

(declare-fun m!7104376 () Bool)

(assert (=> bs!1570278 m!7104376))

(assert (=> bs!1570278 m!7102638))

(declare-fun m!7104378 () Bool)

(assert (=> bs!1570278 m!7104378))

(assert (=> b!6281684 d!1972165))

(declare-fun d!1972167 () Bool)

(declare-fun res!2591342 () Bool)

(declare-fun e!3821073 () Bool)

(assert (=> d!1972167 (=> res!2591342 e!3821073)))

(assert (=> d!1972167 (= res!2591342 ((_ is Nil!64786) (t!378470 zl!343)))))

(assert (=> d!1972167 (= (forall!15343 (t!378470 zl!343) lambda!344591) e!3821073)))

(declare-fun b!6283427 () Bool)

(declare-fun e!3821074 () Bool)

(assert (=> b!6283427 (= e!3821073 e!3821074)))

(declare-fun res!2591343 () Bool)

(assert (=> b!6283427 (=> (not res!2591343) (not e!3821074))))

(declare-fun dynLambda!25637 (Int Context!11174) Bool)

(assert (=> b!6283427 (= res!2591343 (dynLambda!25637 lambda!344591 (h!71234 (t!378470 zl!343))))))

(declare-fun b!6283428 () Bool)

(assert (=> b!6283428 (= e!3821074 (forall!15343 (t!378470 (t!378470 zl!343)) lambda!344591))))

(assert (= (and d!1972167 (not res!2591342)) b!6283427))

(assert (= (and b!6283427 res!2591343) b!6283428))

(declare-fun b_lambda!239191 () Bool)

(assert (=> (not b_lambda!239191) (not b!6283427)))

(declare-fun m!7104380 () Bool)

(assert (=> b!6283427 m!7104380))

(declare-fun m!7104382 () Bool)

(assert (=> b!6283428 m!7104382))

(assert (=> b!6281684 d!1972167))

(declare-fun bs!1570279 () Bool)

(declare-fun d!1972169 () Bool)

(assert (= bs!1570279 (and d!1972169 d!1972033)))

(declare-fun lambda!344738 () Int)

(assert (=> bs!1570279 (= lambda!344738 lambda!344703)))

(declare-fun bs!1570280 () Bool)

(assert (= bs!1570280 (and d!1972169 b!6281684)))

(assert (=> bs!1570280 (not (= lambda!344738 lambda!344591))))

(declare-fun bs!1570281 () Bool)

(assert (= bs!1570281 (and d!1972169 d!1972165)))

(assert (=> bs!1570281 (not (= lambda!344738 lambda!344737))))

(declare-fun bs!1570282 () Bool)

(assert (= bs!1570282 (and d!1972169 d!1972097)))

(assert (=> bs!1570282 (= lambda!344738 lambda!344722)))

(declare-fun bs!1570283 () Bool)

(assert (= bs!1570283 (and d!1972169 b!6281681)))

(assert (=> bs!1570283 (not (= lambda!344738 lambda!344589))))

(declare-fun bs!1570284 () Bool)

(assert (= bs!1570284 (and d!1972169 d!1971997)))

(assert (=> bs!1570284 (= lambda!344738 lambda!344700)))

(declare-fun bs!1570285 () Bool)

(assert (= bs!1570285 (and d!1972169 d!1972071)))

(assert (=> bs!1570285 (= lambda!344738 lambda!344716)))

(declare-fun bs!1570286 () Bool)

(assert (= bs!1570286 (and d!1972169 b!6281686)))

(assert (=> bs!1570286 (not (= lambda!344738 lambda!344592))))

(declare-fun bs!1570287 () Bool)

(assert (= bs!1570287 (and d!1972169 b!6283418)))

(assert (=> bs!1570287 (not (= lambda!344738 lambda!344734))))

(declare-fun bs!1570288 () Bool)

(assert (= bs!1570288 (and d!1972169 b!6283416)))

(assert (=> bs!1570288 (not (= lambda!344738 lambda!344733))))

(declare-fun bs!1570289 () Bool)

(assert (= bs!1570289 (and d!1972169 b!6281679)))

(assert (=> bs!1570289 (not (= lambda!344738 lambda!344588))))

(assert (=> d!1972169 (= (nullableZipper!1973 lt!2354662) (exists!2527 lt!2354662 lambda!344738))))

(declare-fun bs!1570290 () Bool)

(assert (= bs!1570290 d!1972169))

(declare-fun m!7104384 () Bool)

(assert (=> bs!1570290 m!7104384))

(assert (=> b!6281578 d!1972169))

(declare-fun d!1972171 () Bool)

(assert (=> d!1972171 (= (isEmpty!36830 (tail!11992 (unfocusZipperList!1624 zl!343))) ((_ is Nil!64784) (tail!11992 (unfocusZipperList!1624 zl!343))))))

(assert (=> b!6281965 d!1972171))

(declare-fun d!1972173 () Bool)

(assert (=> d!1972173 (= (tail!11992 (unfocusZipperList!1624 zl!343)) (t!378468 (unfocusZipperList!1624 zl!343)))))

(assert (=> b!6281965 d!1972173))

(assert (=> b!6281809 d!1971939))

(declare-fun d!1972175 () Bool)

(assert (=> d!1972175 (= ($colon$colon!2068 (exprs!6087 lt!2354668) (ite (or c!1139261 c!1139260) (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (h!71232 (exprs!6087 (h!71234 zl!343))))) (Cons!64784 (ite (or c!1139261 c!1139260) (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (h!71232 (exprs!6087 (h!71234 zl!343)))) (exprs!6087 lt!2354668)))))

(assert (=> bm!531620 d!1972175))

(declare-fun d!1972177 () Bool)

(declare-fun c!1139709 () Bool)

(assert (=> d!1972177 (= c!1139709 (isEmpty!36834 (tail!11991 (t!378469 s!2326))))))

(declare-fun e!3821075 () Bool)

(assert (=> d!1972177 (= (matchZipper!2215 (derivationStepZipper!2169 lt!2354658 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))) e!3821075)))

(declare-fun b!6283429 () Bool)

(assert (=> b!6283429 (= e!3821075 (nullableZipper!1973 (derivationStepZipper!2169 lt!2354658 (head!12906 (t!378469 s!2326)))))))

(declare-fun b!6283430 () Bool)

(assert (=> b!6283430 (= e!3821075 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354658 (head!12906 (t!378469 s!2326))) (head!12906 (tail!11991 (t!378469 s!2326)))) (tail!11991 (tail!11991 (t!378469 s!2326)))))))

(assert (= (and d!1972177 c!1139709) b!6283429))

(assert (= (and d!1972177 (not c!1139709)) b!6283430))

(assert (=> d!1972177 m!7102540))

(assert (=> d!1972177 m!7103958))

(assert (=> b!6283429 m!7102586))

(declare-fun m!7104386 () Bool)

(assert (=> b!6283429 m!7104386))

(assert (=> b!6283430 m!7102540))

(assert (=> b!6283430 m!7103962))

(assert (=> b!6283430 m!7102586))

(assert (=> b!6283430 m!7103962))

(declare-fun m!7104388 () Bool)

(assert (=> b!6283430 m!7104388))

(assert (=> b!6283430 m!7102540))

(assert (=> b!6283430 m!7103966))

(assert (=> b!6283430 m!7104388))

(assert (=> b!6283430 m!7103966))

(declare-fun m!7104390 () Bool)

(assert (=> b!6283430 m!7104390))

(assert (=> b!6281583 d!1972177))

(declare-fun bs!1570291 () Bool)

(declare-fun d!1972179 () Bool)

(assert (= bs!1570291 (and d!1972179 d!1971429)))

(declare-fun lambda!344739 () Int)

(assert (=> bs!1570291 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344739 lambda!344613))))

(declare-fun bs!1570292 () Bool)

(assert (= bs!1570292 (and d!1972179 d!1971965)))

(assert (=> bs!1570292 (= lambda!344739 lambda!344697)))

(declare-fun bs!1570293 () Bool)

(assert (= bs!1570293 (and d!1972179 b!6280977)))

(assert (=> bs!1570293 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344739 lambda!344509))))

(declare-fun bs!1570294 () Bool)

(assert (= bs!1570294 (and d!1972179 d!1972141)))

(assert (=> bs!1570294 (= lambda!344739 lambda!344724)))

(declare-fun bs!1570295 () Bool)

(assert (= bs!1570295 (and d!1972179 d!1971409)))

(assert (=> bs!1570295 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344739 lambda!344611))))

(declare-fun bs!1570296 () Bool)

(assert (= bs!1570296 (and d!1972179 d!1972021)))

(assert (=> bs!1570296 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344739 lambda!344702))))

(declare-fun bs!1570297 () Bool)

(assert (= bs!1570297 (and d!1972179 d!1972011)))

(assert (=> bs!1570297 (= lambda!344739 lambda!344701)))

(assert (=> d!1972179 true))

(assert (=> d!1972179 (= (derivationStepZipper!2169 lt!2354658 (head!12906 (t!378469 s!2326))) (flatMap!1708 lt!2354658 lambda!344739))))

(declare-fun bs!1570298 () Bool)

(assert (= bs!1570298 d!1972179))

(declare-fun m!7104392 () Bool)

(assert (=> bs!1570298 m!7104392))

(assert (=> b!6281583 d!1972179))

(assert (=> b!6281583 d!1971967))

(assert (=> b!6281583 d!1971969))

(assert (=> d!1971435 d!1971943))

(declare-fun bm!531911 () Bool)

(declare-fun call!531917 () (InoxSet Context!11174))

(declare-fun call!531919 () (InoxSet Context!11174))

(assert (=> bm!531911 (= call!531917 call!531919)))

(declare-fun b!6283431 () Bool)

(declare-fun e!3821078 () Bool)

(assert (=> b!6283431 (= e!3821078 (nullable!6196 (regOne!32918 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))))))))

(declare-fun b!6283432 () Bool)

(declare-fun e!3821076 () (InoxSet Context!11174))

(assert (=> b!6283432 (= e!3821076 call!531917)))

(declare-fun b!6283433 () Bool)

(declare-fun e!3821077 () (InoxSet Context!11174))

(assert (=> b!6283433 (= e!3821077 call!531917)))

(declare-fun b!6283434 () Bool)

(declare-fun c!1139714 () Bool)

(assert (=> b!6283434 (= c!1139714 ((_ is Star!16203) (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))))))

(assert (=> b!6283434 (= e!3821077 e!3821076)))

(declare-fun bm!531912 () Bool)

(declare-fun call!531920 () List!64908)

(declare-fun call!531918 () List!64908)

(assert (=> bm!531912 (= call!531920 call!531918)))

(declare-fun b!6283435 () Bool)

(declare-fun e!3821079 () (InoxSet Context!11174))

(declare-fun call!531916 () (InoxSet Context!11174))

(assert (=> b!6283435 (= e!3821079 ((_ map or) call!531916 call!531919))))

(declare-fun b!6283436 () Bool)

(declare-fun e!3821080 () (InoxSet Context!11174))

(declare-fun call!531921 () (InoxSet Context!11174))

(assert (=> b!6283436 (= e!3821080 ((_ map or) call!531916 call!531921))))

(declare-fun c!1139713 () Bool)

(declare-fun bm!531913 () Bool)

(declare-fun c!1139712 () Bool)

(assert (=> bm!531913 (= call!531918 ($colon$colon!2068 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))))) (ite (or c!1139713 c!1139712) (regTwo!32918 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))))))))

(declare-fun b!6283437 () Bool)

(assert (=> b!6283437 (= c!1139713 e!3821078)))

(declare-fun res!2591344 () Bool)

(assert (=> b!6283437 (=> (not res!2591344) (not e!3821078))))

(assert (=> b!6283437 (= res!2591344 ((_ is Concat!25048) (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))))))

(assert (=> b!6283437 (= e!3821080 e!3821079)))

(declare-fun b!6283438 () Bool)

(declare-fun e!3821081 () (InoxSet Context!11174))

(assert (=> b!6283438 (= e!3821081 e!3821080)))

(declare-fun c!1139711 () Bool)

(assert (=> b!6283438 (= c!1139711 ((_ is Union!16203) (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))))))

(declare-fun bm!531914 () Bool)

(assert (=> bm!531914 (= call!531921 (derivationStepZipperDown!1451 (ite c!1139711 (regTwo!32919 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (ite c!1139713 (regTwo!32918 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (ite c!1139712 (regOne!32918 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (reg!16532 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))))))) (ite (or c!1139711 c!1139713) (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (Context!11175 call!531920)) (h!71233 s!2326)))))

(declare-fun bm!531915 () Bool)

(assert (=> bm!531915 (= call!531916 (derivationStepZipperDown!1451 (ite c!1139711 (regOne!32919 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (regOne!32918 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))))) (ite c!1139711 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (Context!11175 call!531918)) (h!71233 s!2326)))))

(declare-fun d!1972181 () Bool)

(declare-fun c!1139710 () Bool)

(assert (=> d!1972181 (= c!1139710 (and ((_ is ElementMatch!16203) (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (= (c!1138982 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (h!71233 s!2326))))))

(assert (=> d!1972181 (= (derivationStepZipperDown!1451 (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343))))))) (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) (h!71233 s!2326)) e!3821081)))

(declare-fun b!6283439 () Bool)

(assert (=> b!6283439 (= e!3821079 e!3821077)))

(assert (=> b!6283439 (= c!1139712 ((_ is Concat!25048) (h!71232 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))))))

(declare-fun b!6283440 () Bool)

(assert (=> b!6283440 (= e!3821076 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531916 () Bool)

(assert (=> bm!531916 (= call!531919 call!531921)))

(declare-fun b!6283441 () Bool)

(assert (=> b!6283441 (= e!3821081 (store ((as const (Array Context!11174 Bool)) false) (Context!11175 (t!378468 (exprs!6087 (Context!11175 (Cons!64784 (h!71232 (exprs!6087 (h!71234 zl!343))) (t!378468 (exprs!6087 (h!71234 zl!343)))))))) true))))

(assert (= (and d!1972181 c!1139710) b!6283441))

(assert (= (and d!1972181 (not c!1139710)) b!6283438))

(assert (= (and b!6283438 c!1139711) b!6283436))

(assert (= (and b!6283438 (not c!1139711)) b!6283437))

(assert (= (and b!6283437 res!2591344) b!6283431))

(assert (= (and b!6283437 c!1139713) b!6283435))

(assert (= (and b!6283437 (not c!1139713)) b!6283439))

(assert (= (and b!6283439 c!1139712) b!6283433))

(assert (= (and b!6283439 (not c!1139712)) b!6283434))

(assert (= (and b!6283434 c!1139714) b!6283432))

(assert (= (and b!6283434 (not c!1139714)) b!6283440))

(assert (= (or b!6283433 b!6283432) bm!531912))

(assert (= (or b!6283433 b!6283432) bm!531911))

(assert (= (or b!6283435 bm!531912) bm!531913))

(assert (= (or b!6283435 bm!531911) bm!531916))

(assert (= (or b!6283436 bm!531916) bm!531914))

(assert (= (or b!6283436 b!6283435) bm!531915))

(declare-fun m!7104394 () Bool)

(assert (=> b!6283431 m!7104394))

(declare-fun m!7104396 () Bool)

(assert (=> bm!531915 m!7104396))

(declare-fun m!7104398 () Bool)

(assert (=> b!6283441 m!7104398))

(declare-fun m!7104400 () Bool)

(assert (=> bm!531914 m!7104400))

(declare-fun m!7104402 () Bool)

(assert (=> bm!531913 m!7104402))

(assert (=> bm!531625 d!1972181))

(declare-fun bs!1570299 () Bool)

(declare-fun b!6283452 () Bool)

(assert (= bs!1570299 (and b!6283452 d!1971375)))

(declare-fun lambda!344740 () Int)

(assert (=> bs!1570299 (not (= lambda!344740 lambda!344605))))

(declare-fun bs!1570300 () Bool)

(assert (= bs!1570300 (and b!6283452 d!1971297)))

(assert (=> bs!1570300 (not (= lambda!344740 lambda!344574))))

(declare-fun bs!1570301 () Bool)

(assert (= bs!1570301 (and b!6283452 b!6281727)))

(assert (=> bs!1570301 (= (and (= (reg!16532 (regTwo!32919 lt!2354652)) (reg!16532 lt!2354656)) (= (regTwo!32919 lt!2354652) lt!2354656)) (= lambda!344740 lambda!344599))))

(declare-fun bs!1570302 () Bool)

(assert (= bs!1570302 (and b!6283452 b!6283024)))

(assert (=> bs!1570302 (not (= lambda!344740 lambda!344696))))

(declare-fun bs!1570303 () Bool)

(assert (= bs!1570303 (and b!6283452 d!1971295)))

(assert (=> bs!1570303 (not (= lambda!344740 lambda!344568))))

(assert (=> bs!1570300 (not (= lambda!344740 lambda!344573))))

(declare-fun bs!1570304 () Bool)

(assert (= bs!1570304 (and b!6283452 d!1971365)))

(assert (=> bs!1570304 (not (= lambda!344740 lambda!344603))))

(declare-fun bs!1570305 () Bool)

(assert (= bs!1570305 (and b!6283452 b!6281621)))

(assert (=> bs!1570305 (not (= lambda!344740 lambda!344580))))

(declare-fun bs!1570306 () Bool)

(assert (= bs!1570306 (and b!6283452 b!6280970)))

(assert (=> bs!1570306 (not (= lambda!344740 lambda!344510))))

(assert (=> bs!1570306 (not (= lambda!344740 lambda!344511))))

(declare-fun bs!1570307 () Bool)

(assert (= bs!1570307 (and b!6283452 d!1972051)))

(assert (=> bs!1570307 (not (= lambda!344740 lambda!344710))))

(declare-fun bs!1570308 () Bool)

(assert (= bs!1570308 (and b!6283452 b!6283270)))

(assert (=> bs!1570308 (not (= lambda!344740 lambda!344715))))

(declare-fun bs!1570309 () Bool)

(assert (= bs!1570309 (and b!6283452 b!6280967)))

(assert (=> bs!1570309 (not (= lambda!344740 lambda!344508))))

(declare-fun bs!1570310 () Bool)

(assert (= bs!1570310 (and b!6283452 b!6283300)))

(assert (=> bs!1570310 (not (= lambda!344740 lambda!344718))))

(declare-fun bs!1570311 () Bool)

(assert (= bs!1570311 (and b!6283452 b!6283306)))

(assert (=> bs!1570311 (= (and (= (reg!16532 (regTwo!32919 lt!2354652)) (reg!16532 (regTwo!32919 lt!2354656))) (= (regTwo!32919 lt!2354652) (regTwo!32919 lt!2354656))) (= lambda!344740 lambda!344717))))

(assert (=> bs!1570299 (not (= lambda!344740 lambda!344606))))

(declare-fun bs!1570312 () Bool)

(assert (= bs!1570312 (and b!6283452 b!6283228)))

(assert (=> bs!1570312 (= (and (= (reg!16532 (regTwo!32919 lt!2354652)) (reg!16532 (regTwo!32919 r!7292))) (= (regTwo!32919 lt!2354652) (regTwo!32919 r!7292))) (= lambda!344740 lambda!344704))))

(declare-fun bs!1570313 () Bool)

(assert (= bs!1570313 (and b!6283452 b!6281826)))

(assert (=> bs!1570313 (not (= lambda!344740 lambda!344608))))

(declare-fun bs!1570314 () Bool)

(assert (= bs!1570314 (and b!6283452 b!6281721)))

(assert (=> bs!1570314 (not (= lambda!344740 lambda!344600))))

(declare-fun bs!1570315 () Bool)

(assert (= bs!1570315 (and b!6283452 b!6283030)))

(assert (=> bs!1570315 (= (and (= (reg!16532 (regTwo!32919 lt!2354652)) (reg!16532 (regOne!32919 lt!2354656))) (= (regTwo!32919 lt!2354652) (regOne!32919 lt!2354656))) (= lambda!344740 lambda!344695))))

(declare-fun bs!1570316 () Bool)

(assert (= bs!1570316 (and b!6283452 b!6281627)))

(assert (=> bs!1570316 (= (and (= (reg!16532 (regTwo!32919 lt!2354652)) (reg!16532 r!7292)) (= (regTwo!32919 lt!2354652) r!7292)) (= lambda!344740 lambda!344579))))

(assert (=> bs!1570309 (not (= lambda!344740 lambda!344507))))

(assert (=> bs!1570307 (not (= lambda!344740 lambda!344711))))

(declare-fun bs!1570317 () Bool)

(assert (= bs!1570317 (and b!6283452 b!6281832)))

(assert (=> bs!1570317 (= (and (= (reg!16532 (regTwo!32919 lt!2354652)) (reg!16532 lt!2354652)) (= (regTwo!32919 lt!2354652) lt!2354652)) (= lambda!344740 lambda!344607))))

(declare-fun bs!1570318 () Bool)

(assert (= bs!1570318 (and b!6283452 b!6283222)))

(assert (=> bs!1570318 (not (= lambda!344740 lambda!344705))))

(declare-fun bs!1570319 () Bool)

(assert (= bs!1570319 (and b!6283452 d!1972095)))

(assert (=> bs!1570319 (not (= lambda!344740 lambda!344721))))

(declare-fun bs!1570320 () Bool)

(assert (= bs!1570320 (and b!6283452 b!6283276)))

(assert (=> bs!1570320 (= (and (= (reg!16532 (regTwo!32919 lt!2354652)) (reg!16532 (regOne!32919 lt!2354652))) (= (regTwo!32919 lt!2354652) (regOne!32919 lt!2354652))) (= lambda!344740 lambda!344714))))

(assert (=> b!6283452 true))

(assert (=> b!6283452 true))

(declare-fun bs!1570321 () Bool)

(declare-fun b!6283446 () Bool)

(assert (= bs!1570321 (and b!6283446 d!1971375)))

(declare-fun lambda!344741 () Int)

(assert (=> bs!1570321 (not (= lambda!344741 lambda!344605))))

(declare-fun bs!1570322 () Bool)

(assert (= bs!1570322 (and b!6283446 d!1971297)))

(assert (=> bs!1570322 (= (and (= (regOne!32918 (regTwo!32919 lt!2354652)) (regOne!32918 r!7292)) (= (regTwo!32918 (regTwo!32919 lt!2354652)) (regTwo!32918 r!7292))) (= lambda!344741 lambda!344574))))

(declare-fun bs!1570323 () Bool)

(assert (= bs!1570323 (and b!6283446 b!6281727)))

(assert (=> bs!1570323 (not (= lambda!344741 lambda!344599))))

(declare-fun bs!1570324 () Bool)

(assert (= bs!1570324 (and b!6283446 b!6283024)))

(assert (=> bs!1570324 (= (and (= (regOne!32918 (regTwo!32919 lt!2354652)) (regOne!32918 (regOne!32919 lt!2354656))) (= (regTwo!32918 (regTwo!32919 lt!2354652)) (regTwo!32918 (regOne!32919 lt!2354656)))) (= lambda!344741 lambda!344696))))

(declare-fun bs!1570325 () Bool)

(assert (= bs!1570325 (and b!6283446 d!1971295)))

(assert (=> bs!1570325 (not (= lambda!344741 lambda!344568))))

(assert (=> bs!1570322 (not (= lambda!344741 lambda!344573))))

(declare-fun bs!1570326 () Bool)

(assert (= bs!1570326 (and b!6283446 d!1971365)))

(assert (=> bs!1570326 (not (= lambda!344741 lambda!344603))))

(declare-fun bs!1570327 () Bool)

(assert (= bs!1570327 (and b!6283446 b!6281621)))

(assert (=> bs!1570327 (= (and (= (regOne!32918 (regTwo!32919 lt!2354652)) (regOne!32918 r!7292)) (= (regTwo!32918 (regTwo!32919 lt!2354652)) (regTwo!32918 r!7292))) (= lambda!344741 lambda!344580))))

(declare-fun bs!1570328 () Bool)

(assert (= bs!1570328 (and b!6283446 b!6280970)))

(assert (=> bs!1570328 (not (= lambda!344741 lambda!344510))))

(assert (=> bs!1570328 (= (and (= (regOne!32918 (regTwo!32919 lt!2354652)) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 (regTwo!32919 lt!2354652)) lt!2354652)) (= lambda!344741 lambda!344511))))

(declare-fun bs!1570329 () Bool)

(assert (= bs!1570329 (and b!6283446 d!1972051)))

(assert (=> bs!1570329 (not (= lambda!344741 lambda!344710))))

(declare-fun bs!1570330 () Bool)

(assert (= bs!1570330 (and b!6283446 b!6283270)))

(assert (=> bs!1570330 (= (and (= (regOne!32918 (regTwo!32919 lt!2354652)) (regOne!32918 (regOne!32919 lt!2354652))) (= (regTwo!32918 (regTwo!32919 lt!2354652)) (regTwo!32918 (regOne!32919 lt!2354652)))) (= lambda!344741 lambda!344715))))

(declare-fun bs!1570331 () Bool)

(assert (= bs!1570331 (and b!6283446 b!6280967)))

(assert (=> bs!1570331 (= (and (= (regOne!32918 (regTwo!32919 lt!2354652)) (regOne!32918 r!7292)) (= (regTwo!32918 (regTwo!32919 lt!2354652)) (regTwo!32918 r!7292))) (= lambda!344741 lambda!344508))))

(declare-fun bs!1570332 () Bool)

(assert (= bs!1570332 (and b!6283446 b!6283452)))

(assert (=> bs!1570332 (not (= lambda!344741 lambda!344740))))

(declare-fun bs!1570333 () Bool)

(assert (= bs!1570333 (and b!6283446 b!6283300)))

(assert (=> bs!1570333 (= (and (= (regOne!32918 (regTwo!32919 lt!2354652)) (regOne!32918 (regTwo!32919 lt!2354656))) (= (regTwo!32918 (regTwo!32919 lt!2354652)) (regTwo!32918 (regTwo!32919 lt!2354656)))) (= lambda!344741 lambda!344718))))

(declare-fun bs!1570334 () Bool)

(assert (= bs!1570334 (and b!6283446 b!6283306)))

(assert (=> bs!1570334 (not (= lambda!344741 lambda!344717))))

(assert (=> bs!1570321 (= (and (= (regOne!32918 (regTwo!32919 lt!2354652)) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 (regTwo!32919 lt!2354652)) lt!2354652)) (= lambda!344741 lambda!344606))))

(declare-fun bs!1570335 () Bool)

(assert (= bs!1570335 (and b!6283446 b!6283228)))

(assert (=> bs!1570335 (not (= lambda!344741 lambda!344704))))

(declare-fun bs!1570336 () Bool)

(assert (= bs!1570336 (and b!6283446 b!6281826)))

(assert (=> bs!1570336 (= (and (= (regOne!32918 (regTwo!32919 lt!2354652)) (regOne!32918 lt!2354652)) (= (regTwo!32918 (regTwo!32919 lt!2354652)) (regTwo!32918 lt!2354652))) (= lambda!344741 lambda!344608))))

(declare-fun bs!1570337 () Bool)

(assert (= bs!1570337 (and b!6283446 b!6281721)))

(assert (=> bs!1570337 (= (and (= (regOne!32918 (regTwo!32919 lt!2354652)) (regOne!32918 lt!2354656)) (= (regTwo!32918 (regTwo!32919 lt!2354652)) (regTwo!32918 lt!2354656))) (= lambda!344741 lambda!344600))))

(declare-fun bs!1570338 () Bool)

(assert (= bs!1570338 (and b!6283446 b!6283030)))

(assert (=> bs!1570338 (not (= lambda!344741 lambda!344695))))

(declare-fun bs!1570339 () Bool)

(assert (= bs!1570339 (and b!6283446 b!6281627)))

(assert (=> bs!1570339 (not (= lambda!344741 lambda!344579))))

(assert (=> bs!1570331 (not (= lambda!344741 lambda!344507))))

(assert (=> bs!1570329 (= (and (= (regOne!32918 (regTwo!32919 lt!2354652)) (regOne!32918 r!7292)) (= (regTwo!32918 (regTwo!32919 lt!2354652)) (regTwo!32918 r!7292))) (= lambda!344741 lambda!344711))))

(declare-fun bs!1570340 () Bool)

(assert (= bs!1570340 (and b!6283446 b!6281832)))

(assert (=> bs!1570340 (not (= lambda!344741 lambda!344607))))

(declare-fun bs!1570341 () Bool)

(assert (= bs!1570341 (and b!6283446 b!6283222)))

(assert (=> bs!1570341 (= (and (= (regOne!32918 (regTwo!32919 lt!2354652)) (regOne!32918 (regTwo!32919 r!7292))) (= (regTwo!32918 (regTwo!32919 lt!2354652)) (regTwo!32918 (regTwo!32919 r!7292)))) (= lambda!344741 lambda!344705))))

(declare-fun bs!1570342 () Bool)

(assert (= bs!1570342 (and b!6283446 d!1972095)))

(assert (=> bs!1570342 (not (= lambda!344741 lambda!344721))))

(declare-fun bs!1570343 () Bool)

(assert (= bs!1570343 (and b!6283446 b!6283276)))

(assert (=> bs!1570343 (not (= lambda!344741 lambda!344714))))

(assert (=> b!6283446 true))

(assert (=> b!6283446 true))

(declare-fun b!6283442 () Bool)

(declare-fun e!3821087 () Bool)

(declare-fun e!3821082 () Bool)

(assert (=> b!6283442 (= e!3821087 e!3821082)))

(declare-fun c!1139715 () Bool)

(assert (=> b!6283442 (= c!1139715 ((_ is Star!16203) (regTwo!32919 lt!2354652)))))

(declare-fun b!6283443 () Bool)

(declare-fun e!3821086 () Bool)

(assert (=> b!6283443 (= e!3821087 e!3821086)))

(declare-fun res!2591347 () Bool)

(assert (=> b!6283443 (= res!2591347 (matchRSpec!3304 (regOne!32919 (regTwo!32919 lt!2354652)) s!2326))))

(assert (=> b!6283443 (=> res!2591347 e!3821086)))

(declare-fun b!6283444 () Bool)

(declare-fun e!3821084 () Bool)

(declare-fun call!531923 () Bool)

(assert (=> b!6283444 (= e!3821084 call!531923)))

(declare-fun d!1972183 () Bool)

(declare-fun c!1139718 () Bool)

(assert (=> d!1972183 (= c!1139718 ((_ is EmptyExpr!16203) (regTwo!32919 lt!2354652)))))

(assert (=> d!1972183 (= (matchRSpec!3304 (regTwo!32919 lt!2354652) s!2326) e!3821084)))

(declare-fun b!6283445 () Bool)

(assert (=> b!6283445 (= e!3821086 (matchRSpec!3304 (regTwo!32919 (regTwo!32919 lt!2354652)) s!2326))))

(declare-fun call!531922 () Bool)

(assert (=> b!6283446 (= e!3821082 call!531922)))

(declare-fun b!6283447 () Bool)

(declare-fun e!3821083 () Bool)

(assert (=> b!6283447 (= e!3821083 (= s!2326 (Cons!64785 (c!1138982 (regTwo!32919 lt!2354652)) Nil!64785)))))

(declare-fun b!6283448 () Bool)

(declare-fun e!3821088 () Bool)

(assert (=> b!6283448 (= e!3821084 e!3821088)))

(declare-fun res!2591345 () Bool)

(assert (=> b!6283448 (= res!2591345 (not ((_ is EmptyLang!16203) (regTwo!32919 lt!2354652))))))

(assert (=> b!6283448 (=> (not res!2591345) (not e!3821088))))

(declare-fun b!6283449 () Bool)

(declare-fun res!2591346 () Bool)

(declare-fun e!3821085 () Bool)

(assert (=> b!6283449 (=> res!2591346 e!3821085)))

(assert (=> b!6283449 (= res!2591346 call!531923)))

(assert (=> b!6283449 (= e!3821082 e!3821085)))

(declare-fun bm!531917 () Bool)

(assert (=> bm!531917 (= call!531923 (isEmpty!36834 s!2326))))

(declare-fun b!6283450 () Bool)

(declare-fun c!1139716 () Bool)

(assert (=> b!6283450 (= c!1139716 ((_ is Union!16203) (regTwo!32919 lt!2354652)))))

(assert (=> b!6283450 (= e!3821083 e!3821087)))

(declare-fun b!6283451 () Bool)

(declare-fun c!1139717 () Bool)

(assert (=> b!6283451 (= c!1139717 ((_ is ElementMatch!16203) (regTwo!32919 lt!2354652)))))

(assert (=> b!6283451 (= e!3821088 e!3821083)))

(assert (=> b!6283452 (= e!3821085 call!531922)))

(declare-fun bm!531918 () Bool)

(assert (=> bm!531918 (= call!531922 (Exists!3273 (ite c!1139715 lambda!344740 lambda!344741)))))

(assert (= (and d!1972183 c!1139718) b!6283444))

(assert (= (and d!1972183 (not c!1139718)) b!6283448))

(assert (= (and b!6283448 res!2591345) b!6283451))

(assert (= (and b!6283451 c!1139717) b!6283447))

(assert (= (and b!6283451 (not c!1139717)) b!6283450))

(assert (= (and b!6283450 c!1139716) b!6283443))

(assert (= (and b!6283450 (not c!1139716)) b!6283442))

(assert (= (and b!6283443 (not res!2591347)) b!6283445))

(assert (= (and b!6283442 c!1139715) b!6283449))

(assert (= (and b!6283442 (not c!1139715)) b!6283446))

(assert (= (and b!6283449 (not res!2591346)) b!6283452))

(assert (= (or b!6283452 b!6283446) bm!531918))

(assert (= (or b!6283444 b!6283449) bm!531917))

(declare-fun m!7104404 () Bool)

(assert (=> b!6283443 m!7104404))

(declare-fun m!7104406 () Bool)

(assert (=> b!6283445 m!7104406))

(assert (=> bm!531917 m!7102600))

(declare-fun m!7104408 () Bool)

(assert (=> bm!531918 m!7104408))

(assert (=> b!6281825 d!1972183))

(declare-fun bs!1570344 () Bool)

(declare-fun d!1972185 () Bool)

(assert (= bs!1570344 (and d!1972185 d!1971363)))

(declare-fun lambda!344742 () Int)

(assert (=> bs!1570344 (= lambda!344742 lambda!344602)))

(declare-fun bs!1570345 () Bool)

(assert (= bs!1570345 (and d!1972185 d!1971341)))

(assert (=> bs!1570345 (= lambda!344742 lambda!344595)))

(declare-fun bs!1570346 () Bool)

(assert (= bs!1570346 (and d!1972185 d!1971351)))

(assert (=> bs!1570346 (= lambda!344742 lambda!344601)))

(declare-fun bs!1570347 () Bool)

(assert (= bs!1570347 (and d!1972185 d!1972059)))

(assert (=> bs!1570347 (= lambda!344742 lambda!344712)))

(declare-fun bs!1570348 () Bool)

(assert (= bs!1570348 (and d!1972185 b!6283411)))

(assert (=> bs!1570348 (not (= lambda!344742 lambda!344730))))

(declare-fun bs!1570349 () Bool)

(assert (= bs!1570349 (and d!1972185 d!1971431)))

(assert (=> bs!1570349 (= lambda!344742 lambda!344616)))

(declare-fun bs!1570350 () Bool)

(assert (= bs!1570350 (and d!1972185 d!1972113)))

(assert (=> bs!1570350 (= lambda!344742 lambda!344723)))

(declare-fun bs!1570351 () Bool)

(assert (= bs!1570351 (and d!1972185 d!1971415)))

(assert (=> bs!1570351 (= lambda!344742 lambda!344612)))

(declare-fun bs!1570352 () Bool)

(assert (= bs!1570352 (and d!1972185 d!1972157)))

(assert (=> bs!1570352 (= lambda!344742 lambda!344725)))

(declare-fun bs!1570353 () Bool)

(assert (= bs!1570353 (and d!1972185 d!1971343)))

(assert (=> bs!1570353 (= lambda!344742 lambda!344598)))

(declare-fun bs!1570354 () Bool)

(assert (= bs!1570354 (and d!1972185 d!1972061)))

(assert (=> bs!1570354 (= lambda!344742 lambda!344713)))

(declare-fun bs!1570355 () Bool)

(assert (= bs!1570355 (and d!1972185 d!1971367)))

(assert (=> bs!1570355 (= lambda!344742 lambda!344604)))

(declare-fun bs!1570356 () Bool)

(assert (= bs!1570356 (and d!1972185 b!6283413)))

(assert (=> bs!1570356 (not (= lambda!344742 lambda!344731))))

(declare-fun bs!1570357 () Bool)

(assert (= bs!1570357 (and d!1972185 d!1971433)))

(assert (=> bs!1570357 (= lambda!344742 lambda!344619)))

(declare-fun b!6283453 () Bool)

(declare-fun e!3821092 () Regex!16203)

(assert (=> b!6283453 (= e!3821092 EmptyExpr!16203)))

(declare-fun b!6283454 () Bool)

(declare-fun e!3821093 () Regex!16203)

(assert (=> b!6283454 (= e!3821093 (h!71232 (t!378468 lt!2354639)))))

(declare-fun e!3821090 () Bool)

(assert (=> d!1972185 e!3821090))

(declare-fun res!2591349 () Bool)

(assert (=> d!1972185 (=> (not res!2591349) (not e!3821090))))

(declare-fun lt!2354972 () Regex!16203)

(assert (=> d!1972185 (= res!2591349 (validRegex!7939 lt!2354972))))

(assert (=> d!1972185 (= lt!2354972 e!3821093)))

(declare-fun c!1139722 () Bool)

(declare-fun e!3821091 () Bool)

(assert (=> d!1972185 (= c!1139722 e!3821091)))

(declare-fun res!2591348 () Bool)

(assert (=> d!1972185 (=> (not res!2591348) (not e!3821091))))

(assert (=> d!1972185 (= res!2591348 ((_ is Cons!64784) (t!378468 lt!2354639)))))

(assert (=> d!1972185 (forall!15344 (t!378468 lt!2354639) lambda!344742)))

(assert (=> d!1972185 (= (generalisedConcat!1800 (t!378468 lt!2354639)) lt!2354972)))

(declare-fun b!6283455 () Bool)

(assert (=> b!6283455 (= e!3821093 e!3821092)))

(declare-fun c!1139720 () Bool)

(assert (=> b!6283455 (= c!1139720 ((_ is Cons!64784) (t!378468 lt!2354639)))))

(declare-fun b!6283456 () Bool)

(declare-fun e!3821094 () Bool)

(assert (=> b!6283456 (= e!3821094 (isConcat!1132 lt!2354972))))

(declare-fun b!6283457 () Bool)

(assert (=> b!6283457 (= e!3821092 (Concat!25048 (h!71232 (t!378468 lt!2354639)) (generalisedConcat!1800 (t!378468 (t!378468 lt!2354639)))))))

(declare-fun b!6283458 () Bool)

(assert (=> b!6283458 (= e!3821094 (= lt!2354972 (head!12907 (t!378468 lt!2354639))))))

(declare-fun b!6283459 () Bool)

(declare-fun e!3821089 () Bool)

(assert (=> b!6283459 (= e!3821090 e!3821089)))

(declare-fun c!1139721 () Bool)

(assert (=> b!6283459 (= c!1139721 (isEmpty!36830 (t!378468 lt!2354639)))))

(declare-fun b!6283460 () Bool)

(assert (=> b!6283460 (= e!3821089 e!3821094)))

(declare-fun c!1139719 () Bool)

(assert (=> b!6283460 (= c!1139719 (isEmpty!36830 (tail!11992 (t!378468 lt!2354639))))))

(declare-fun b!6283461 () Bool)

(assert (=> b!6283461 (= e!3821089 (isEmptyExpr!1609 lt!2354972))))

(declare-fun b!6283462 () Bool)

(assert (=> b!6283462 (= e!3821091 (isEmpty!36830 (t!378468 (t!378468 lt!2354639))))))

(assert (= (and d!1972185 res!2591348) b!6283462))

(assert (= (and d!1972185 c!1139722) b!6283454))

(assert (= (and d!1972185 (not c!1139722)) b!6283455))

(assert (= (and b!6283455 c!1139720) b!6283457))

(assert (= (and b!6283455 (not c!1139720)) b!6283453))

(assert (= (and d!1972185 res!2591349) b!6283459))

(assert (= (and b!6283459 c!1139721) b!6283461))

(assert (= (and b!6283459 (not c!1139721)) b!6283460))

(assert (= (and b!6283460 c!1139719) b!6283458))

(assert (= (and b!6283460 (not c!1139719)) b!6283456))

(declare-fun m!7104410 () Bool)

(assert (=> b!6283461 m!7104410))

(declare-fun m!7104412 () Bool)

(assert (=> b!6283457 m!7104412))

(declare-fun m!7104414 () Bool)

(assert (=> b!6283460 m!7104414))

(assert (=> b!6283460 m!7104414))

(declare-fun m!7104416 () Bool)

(assert (=> b!6283460 m!7104416))

(declare-fun m!7104418 () Bool)

(assert (=> b!6283458 m!7104418))

(declare-fun m!7104420 () Bool)

(assert (=> d!1972185 m!7104420))

(declare-fun m!7104422 () Bool)

(assert (=> d!1972185 m!7104422))

(declare-fun m!7104424 () Bool)

(assert (=> b!6283462 m!7104424))

(declare-fun m!7104426 () Bool)

(assert (=> b!6283456 m!7104426))

(assert (=> b!6283459 m!7102746))

(assert (=> b!6281792 d!1972185))

(declare-fun d!1972187 () Bool)

(assert (=> d!1972187 (= (head!12907 (t!378468 (exprs!6087 (h!71234 zl!343)))) (h!71232 (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> b!6281803 d!1972187))

(declare-fun b!6283463 () Bool)

(declare-fun e!3821098 () Bool)

(declare-fun e!3821096 () Bool)

(assert (=> b!6283463 (= e!3821098 e!3821096)))

(declare-fun res!2591352 () Bool)

(assert (=> b!6283463 (=> res!2591352 e!3821096)))

(declare-fun call!531924 () Bool)

(assert (=> b!6283463 (= res!2591352 call!531924)))

(declare-fun b!6283464 () Bool)

(declare-fun e!3821097 () Bool)

(assert (=> b!6283464 (= e!3821097 (= (head!12906 (tail!11991 s!2326)) (c!1138982 (derivativeStep!4912 lt!2354652 (head!12906 s!2326)))))))

(declare-fun b!6283465 () Bool)

(declare-fun res!2591355 () Bool)

(assert (=> b!6283465 (=> res!2591355 e!3821096)))

(assert (=> b!6283465 (= res!2591355 (not (isEmpty!36834 (tail!11991 (tail!11991 s!2326)))))))

(declare-fun b!6283467 () Bool)

(assert (=> b!6283467 (= e!3821096 (not (= (head!12906 (tail!11991 s!2326)) (c!1138982 (derivativeStep!4912 lt!2354652 (head!12906 s!2326))))))))

(declare-fun b!6283468 () Bool)

(declare-fun e!3821095 () Bool)

(declare-fun lt!2354973 () Bool)

(assert (=> b!6283468 (= e!3821095 (not lt!2354973))))

(declare-fun b!6283469 () Bool)

(declare-fun e!3821101 () Bool)

(assert (=> b!6283469 (= e!3821101 e!3821095)))

(declare-fun c!1139723 () Bool)

(assert (=> b!6283469 (= c!1139723 ((_ is EmptyLang!16203) (derivativeStep!4912 lt!2354652 (head!12906 s!2326))))))

(declare-fun bm!531919 () Bool)

(assert (=> bm!531919 (= call!531924 (isEmpty!36834 (tail!11991 s!2326)))))

(declare-fun b!6283470 () Bool)

(declare-fun res!2591357 () Bool)

(assert (=> b!6283470 (=> (not res!2591357) (not e!3821097))))

(assert (=> b!6283470 (= res!2591357 (not call!531924))))

(declare-fun b!6283471 () Bool)

(declare-fun e!3821100 () Bool)

(assert (=> b!6283471 (= e!3821100 (matchR!8386 (derivativeStep!4912 (derivativeStep!4912 lt!2354652 (head!12906 s!2326)) (head!12906 (tail!11991 s!2326))) (tail!11991 (tail!11991 s!2326))))))

(declare-fun b!6283472 () Bool)

(declare-fun e!3821099 () Bool)

(assert (=> b!6283472 (= e!3821099 e!3821098)))

(declare-fun res!2591354 () Bool)

(assert (=> b!6283472 (=> (not res!2591354) (not e!3821098))))

(assert (=> b!6283472 (= res!2591354 (not lt!2354973))))

(declare-fun b!6283466 () Bool)

(declare-fun res!2591353 () Bool)

(assert (=> b!6283466 (=> (not res!2591353) (not e!3821097))))

(assert (=> b!6283466 (= res!2591353 (isEmpty!36834 (tail!11991 (tail!11991 s!2326))))))

(declare-fun d!1972189 () Bool)

(assert (=> d!1972189 e!3821101))

(declare-fun c!1139724 () Bool)

(assert (=> d!1972189 (= c!1139724 ((_ is EmptyExpr!16203) (derivativeStep!4912 lt!2354652 (head!12906 s!2326))))))

(assert (=> d!1972189 (= lt!2354973 e!3821100)))

(declare-fun c!1139725 () Bool)

(assert (=> d!1972189 (= c!1139725 (isEmpty!36834 (tail!11991 s!2326)))))

(assert (=> d!1972189 (validRegex!7939 (derivativeStep!4912 lt!2354652 (head!12906 s!2326)))))

(assert (=> d!1972189 (= (matchR!8386 (derivativeStep!4912 lt!2354652 (head!12906 s!2326)) (tail!11991 s!2326)) lt!2354973)))

(declare-fun b!6283473 () Bool)

(declare-fun res!2591351 () Bool)

(assert (=> b!6283473 (=> res!2591351 e!3821099)))

(assert (=> b!6283473 (= res!2591351 (not ((_ is ElementMatch!16203) (derivativeStep!4912 lt!2354652 (head!12906 s!2326)))))))

(assert (=> b!6283473 (= e!3821095 e!3821099)))

(declare-fun b!6283474 () Bool)

(assert (=> b!6283474 (= e!3821101 (= lt!2354973 call!531924))))

(declare-fun b!6283475 () Bool)

(assert (=> b!6283475 (= e!3821100 (nullable!6196 (derivativeStep!4912 lt!2354652 (head!12906 s!2326))))))

(declare-fun b!6283476 () Bool)

(declare-fun res!2591356 () Bool)

(assert (=> b!6283476 (=> res!2591356 e!3821099)))

(assert (=> b!6283476 (= res!2591356 e!3821097)))

(declare-fun res!2591350 () Bool)

(assert (=> b!6283476 (=> (not res!2591350) (not e!3821097))))

(assert (=> b!6283476 (= res!2591350 lt!2354973)))

(assert (= (and d!1972189 c!1139725) b!6283475))

(assert (= (and d!1972189 (not c!1139725)) b!6283471))

(assert (= (and d!1972189 c!1139724) b!6283474))

(assert (= (and d!1972189 (not c!1139724)) b!6283469))

(assert (= (and b!6283469 c!1139723) b!6283468))

(assert (= (and b!6283469 (not c!1139723)) b!6283473))

(assert (= (and b!6283473 (not res!2591351)) b!6283476))

(assert (= (and b!6283476 res!2591350) b!6283470))

(assert (= (and b!6283470 res!2591357) b!6283466))

(assert (= (and b!6283466 res!2591353) b!6283464))

(assert (= (and b!6283476 (not res!2591356)) b!6283472))

(assert (= (and b!6283472 res!2591354) b!6283463))

(assert (= (and b!6283463 (not res!2591352)) b!6283465))

(assert (= (and b!6283465 (not res!2591355)) b!6283467))

(assert (= (or b!6283474 b!6283463 b!6283470) bm!531919))

(assert (=> bm!531919 m!7102606))

(assert (=> bm!531919 m!7102608))

(assert (=> b!6283467 m!7102606))

(assert (=> b!6283467 m!7104028))

(assert (=> d!1972189 m!7102606))

(assert (=> d!1972189 m!7102608))

(assert (=> d!1972189 m!7102780))

(declare-fun m!7104428 () Bool)

(assert (=> d!1972189 m!7104428))

(assert (=> b!6283465 m!7102606))

(assert (=> b!6283465 m!7104032))

(assert (=> b!6283465 m!7104032))

(assert (=> b!6283465 m!7104034))

(assert (=> b!6283475 m!7102780))

(declare-fun m!7104430 () Bool)

(assert (=> b!6283475 m!7104430))

(assert (=> b!6283464 m!7102606))

(assert (=> b!6283464 m!7104028))

(assert (=> b!6283471 m!7102606))

(assert (=> b!6283471 m!7104028))

(assert (=> b!6283471 m!7102780))

(assert (=> b!6283471 m!7104028))

(declare-fun m!7104432 () Bool)

(assert (=> b!6283471 m!7104432))

(assert (=> b!6283471 m!7102606))

(assert (=> b!6283471 m!7104032))

(assert (=> b!6283471 m!7104432))

(assert (=> b!6283471 m!7104032))

(declare-fun m!7104434 () Bool)

(assert (=> b!6283471 m!7104434))

(assert (=> b!6283466 m!7102606))

(assert (=> b!6283466 m!7104032))

(assert (=> b!6283466 m!7104032))

(assert (=> b!6283466 m!7104034))

(assert (=> b!6281816 d!1972189))

(declare-fun b!6283477 () Bool)

(declare-fun c!1139726 () Bool)

(assert (=> b!6283477 (= c!1139726 (nullable!6196 (regOne!32918 lt!2354652)))))

(declare-fun e!3821105 () Regex!16203)

(declare-fun e!3821102 () Regex!16203)

(assert (=> b!6283477 (= e!3821105 e!3821102)))

(declare-fun c!1139730 () Bool)

(declare-fun bm!531920 () Bool)

(declare-fun call!531926 () Regex!16203)

(assert (=> bm!531920 (= call!531926 (derivativeStep!4912 (ite c!1139730 (regTwo!32919 lt!2354652) (regOne!32918 lt!2354652)) (head!12906 s!2326)))))

(declare-fun b!6283478 () Bool)

(assert (=> b!6283478 (= c!1139730 ((_ is Union!16203) lt!2354652))))

(declare-fun e!3821103 () Regex!16203)

(declare-fun e!3821106 () Regex!16203)

(assert (=> b!6283478 (= e!3821103 e!3821106)))

(declare-fun d!1972191 () Bool)

(declare-fun lt!2354974 () Regex!16203)

(assert (=> d!1972191 (validRegex!7939 lt!2354974)))

(declare-fun e!3821104 () Regex!16203)

(assert (=> d!1972191 (= lt!2354974 e!3821104)))

(declare-fun c!1139729 () Bool)

(assert (=> d!1972191 (= c!1139729 (or ((_ is EmptyExpr!16203) lt!2354652) ((_ is EmptyLang!16203) lt!2354652)))))

(assert (=> d!1972191 (validRegex!7939 lt!2354652)))

(assert (=> d!1972191 (= (derivativeStep!4912 lt!2354652 (head!12906 s!2326)) lt!2354974)))

(declare-fun b!6283479 () Bool)

(declare-fun call!531925 () Regex!16203)

(assert (=> b!6283479 (= e!3821105 (Concat!25048 call!531925 lt!2354652))))

(declare-fun bm!531921 () Bool)

(declare-fun call!531927 () Regex!16203)

(assert (=> bm!531921 (= call!531925 call!531927)))

(declare-fun b!6283480 () Bool)

(assert (=> b!6283480 (= e!3821106 e!3821105)))

(declare-fun c!1139727 () Bool)

(assert (=> b!6283480 (= c!1139727 ((_ is Star!16203) lt!2354652))))

(declare-fun bm!531922 () Bool)

(declare-fun call!531928 () Regex!16203)

(assert (=> bm!531922 (= call!531928 call!531925)))

(declare-fun b!6283481 () Bool)

(assert (=> b!6283481 (= e!3821106 (Union!16203 call!531927 call!531926))))

(declare-fun bm!531923 () Bool)

(assert (=> bm!531923 (= call!531927 (derivativeStep!4912 (ite c!1139730 (regOne!32919 lt!2354652) (ite c!1139727 (reg!16532 lt!2354652) (ite c!1139726 (regTwo!32918 lt!2354652) (regOne!32918 lt!2354652)))) (head!12906 s!2326)))))

(declare-fun b!6283482 () Bool)

(assert (=> b!6283482 (= e!3821102 (Union!16203 (Concat!25048 call!531926 (regTwo!32918 lt!2354652)) call!531928))))

(declare-fun b!6283483 () Bool)

(assert (=> b!6283483 (= e!3821103 (ite (= (head!12906 s!2326) (c!1138982 lt!2354652)) EmptyExpr!16203 EmptyLang!16203))))

(declare-fun b!6283484 () Bool)

(assert (=> b!6283484 (= e!3821104 EmptyLang!16203)))

(declare-fun b!6283485 () Bool)

(assert (=> b!6283485 (= e!3821104 e!3821103)))

(declare-fun c!1139728 () Bool)

(assert (=> b!6283485 (= c!1139728 ((_ is ElementMatch!16203) lt!2354652))))

(declare-fun b!6283486 () Bool)

(assert (=> b!6283486 (= e!3821102 (Union!16203 (Concat!25048 call!531928 (regTwo!32918 lt!2354652)) EmptyLang!16203))))

(assert (= (and d!1972191 c!1139729) b!6283484))

(assert (= (and d!1972191 (not c!1139729)) b!6283485))

(assert (= (and b!6283485 c!1139728) b!6283483))

(assert (= (and b!6283485 (not c!1139728)) b!6283478))

(assert (= (and b!6283478 c!1139730) b!6283481))

(assert (= (and b!6283478 (not c!1139730)) b!6283480))

(assert (= (and b!6283480 c!1139727) b!6283479))

(assert (= (and b!6283480 (not c!1139727)) b!6283477))

(assert (= (and b!6283477 c!1139726) b!6283482))

(assert (= (and b!6283477 (not c!1139726)) b!6283486))

(assert (= (or b!6283482 b!6283486) bm!531922))

(assert (= (or b!6283479 bm!531922) bm!531921))

(assert (= (or b!6283481 b!6283482) bm!531920))

(assert (= (or b!6283481 bm!531921) bm!531923))

(declare-fun m!7104436 () Bool)

(assert (=> b!6283477 m!7104436))

(assert (=> bm!531920 m!7102604))

(declare-fun m!7104438 () Bool)

(assert (=> bm!531920 m!7104438))

(declare-fun m!7104440 () Bool)

(assert (=> d!1972191 m!7104440))

(assert (=> d!1972191 m!7102776))

(assert (=> bm!531923 m!7102604))

(declare-fun m!7104442 () Bool)

(assert (=> bm!531923 m!7104442))

(assert (=> b!6281816 d!1972191))

(assert (=> b!6281816 d!1971939))

(assert (=> b!6281816 d!1972005))

(declare-fun d!1972193 () Bool)

(declare-fun c!1139731 () Bool)

(assert (=> d!1972193 (= c!1139731 (isEmpty!36834 (t!378469 s!2326)))))

(declare-fun e!3821107 () Bool)

(assert (=> d!1972193 (= (matchZipper!2215 ((_ map or) lt!2354658 lt!2354648) (t!378469 s!2326)) e!3821107)))

(declare-fun b!6283487 () Bool)

(assert (=> b!6283487 (= e!3821107 (nullableZipper!1973 ((_ map or) lt!2354658 lt!2354648)))))

(declare-fun b!6283488 () Bool)

(assert (=> b!6283488 (= e!3821107 (matchZipper!2215 (derivationStepZipper!2169 ((_ map or) lt!2354658 lt!2354648) (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))))))

(assert (= (and d!1972193 c!1139731) b!6283487))

(assert (= (and d!1972193 (not c!1139731)) b!6283488))

(assert (=> d!1972193 m!7102532))

(declare-fun m!7104444 () Bool)

(assert (=> b!6283487 m!7104444))

(assert (=> b!6283488 m!7102536))

(assert (=> b!6283488 m!7102536))

(declare-fun m!7104446 () Bool)

(assert (=> b!6283488 m!7104446))

(assert (=> b!6283488 m!7102540))

(assert (=> b!6283488 m!7104446))

(assert (=> b!6283488 m!7102540))

(declare-fun m!7104448 () Bool)

(assert (=> b!6283488 m!7104448))

(assert (=> d!1971321 d!1972193))

(assert (=> d!1971321 d!1971319))

(declare-fun d!1972195 () Bool)

(declare-fun e!3821110 () Bool)

(assert (=> d!1972195 (= (matchZipper!2215 ((_ map or) lt!2354658 lt!2354648) (t!378469 s!2326)) e!3821110)))

(declare-fun res!2591360 () Bool)

(assert (=> d!1972195 (=> res!2591360 e!3821110)))

(assert (=> d!1972195 (= res!2591360 (matchZipper!2215 lt!2354658 (t!378469 s!2326)))))

(assert (=> d!1972195 true))

(declare-fun _$48!2042 () Unit!158143)

(assert (=> d!1972195 (= (choose!46648 lt!2354658 lt!2354648 (t!378469 s!2326)) _$48!2042)))

(declare-fun b!6283491 () Bool)

(assert (=> b!6283491 (= e!3821110 (matchZipper!2215 lt!2354648 (t!378469 s!2326)))))

(assert (= (and d!1972195 (not res!2591360)) b!6283491))

(assert (=> d!1972195 m!7102590))

(assert (=> d!1972195 m!7101882))

(assert (=> b!6283491 m!7101916))

(assert (=> d!1971321 d!1972195))

(assert (=> b!6281716 d!1971417))

(declare-fun d!1972197 () Bool)

(declare-fun c!1139732 () Bool)

(assert (=> d!1972197 (= c!1139732 (isEmpty!36834 (tail!11991 s!2326)))))

(declare-fun e!3821111 () Bool)

(assert (=> d!1972197 (= (matchZipper!2215 (derivationStepZipper!2169 lt!2354666 (head!12906 s!2326)) (tail!11991 s!2326)) e!3821111)))

(declare-fun b!6283492 () Bool)

(assert (=> b!6283492 (= e!3821111 (nullableZipper!1973 (derivationStepZipper!2169 lt!2354666 (head!12906 s!2326))))))

(declare-fun b!6283493 () Bool)

(assert (=> b!6283493 (= e!3821111 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354666 (head!12906 s!2326)) (head!12906 (tail!11991 s!2326))) (tail!11991 (tail!11991 s!2326))))))

(assert (= (and d!1972197 c!1139732) b!6283492))

(assert (= (and d!1972197 (not c!1139732)) b!6283493))

(assert (=> d!1972197 m!7102606))

(assert (=> d!1972197 m!7102608))

(assert (=> b!6283492 m!7102802))

(declare-fun m!7104450 () Bool)

(assert (=> b!6283492 m!7104450))

(assert (=> b!6283493 m!7102606))

(assert (=> b!6283493 m!7104028))

(assert (=> b!6283493 m!7102802))

(assert (=> b!6283493 m!7104028))

(declare-fun m!7104452 () Bool)

(assert (=> b!6283493 m!7104452))

(assert (=> b!6283493 m!7102606))

(assert (=> b!6283493 m!7104032))

(assert (=> b!6283493 m!7104452))

(assert (=> b!6283493 m!7104032))

(declare-fun m!7104454 () Bool)

(assert (=> b!6283493 m!7104454))

(assert (=> b!6281834 d!1972197))

(declare-fun bs!1570358 () Bool)

(declare-fun d!1972199 () Bool)

(assert (= bs!1570358 (and d!1972199 d!1971429)))

(declare-fun lambda!344743 () Int)

(assert (=> bs!1570358 (= (= (head!12906 s!2326) (h!71233 s!2326)) (= lambda!344743 lambda!344613))))

(declare-fun bs!1570359 () Bool)

(assert (= bs!1570359 (and d!1972199 d!1971965)))

(assert (=> bs!1570359 (= (= (head!12906 s!2326) (head!12906 (t!378469 s!2326))) (= lambda!344743 lambda!344697))))

(declare-fun bs!1570360 () Bool)

(assert (= bs!1570360 (and d!1972199 b!6280977)))

(assert (=> bs!1570360 (= (= (head!12906 s!2326) (h!71233 s!2326)) (= lambda!344743 lambda!344509))))

(declare-fun bs!1570361 () Bool)

(assert (= bs!1570361 (and d!1972199 d!1972141)))

(assert (=> bs!1570361 (= (= (head!12906 s!2326) (head!12906 (t!378469 s!2326))) (= lambda!344743 lambda!344724))))

(declare-fun bs!1570362 () Bool)

(assert (= bs!1570362 (and d!1972199 d!1971409)))

(assert (=> bs!1570362 (= (= (head!12906 s!2326) (h!71233 s!2326)) (= lambda!344743 lambda!344611))))

(declare-fun bs!1570363 () Bool)

(assert (= bs!1570363 (and d!1972199 d!1972021)))

(assert (=> bs!1570363 (= lambda!344743 lambda!344702)))

(declare-fun bs!1570364 () Bool)

(assert (= bs!1570364 (and d!1972199 d!1972011)))

(assert (=> bs!1570364 (= (= (head!12906 s!2326) (head!12906 (t!378469 s!2326))) (= lambda!344743 lambda!344701))))

(declare-fun bs!1570365 () Bool)

(assert (= bs!1570365 (and d!1972199 d!1972179)))

(assert (=> bs!1570365 (= (= (head!12906 s!2326) (head!12906 (t!378469 s!2326))) (= lambda!344743 lambda!344739))))

(assert (=> d!1972199 true))

(assert (=> d!1972199 (= (derivationStepZipper!2169 lt!2354666 (head!12906 s!2326)) (flatMap!1708 lt!2354666 lambda!344743))))

(declare-fun bs!1570366 () Bool)

(assert (= bs!1570366 d!1972199))

(declare-fun m!7104456 () Bool)

(assert (=> bs!1570366 m!7104456))

(assert (=> b!6281834 d!1972199))

(assert (=> b!6281834 d!1971939))

(assert (=> b!6281834 d!1972005))

(assert (=> d!1971427 d!1971423))

(declare-fun d!1972201 () Bool)

(assert (=> d!1972201 (= (flatMap!1708 lt!2354675 lambda!344509) (dynLambda!25629 lambda!344509 lt!2354638))))

(assert (=> d!1972201 true))

(declare-fun _$13!3401 () Unit!158143)

(assert (=> d!1972201 (= (choose!46646 lt!2354675 lt!2354638 lambda!344509) _$13!3401)))

(declare-fun b_lambda!239193 () Bool)

(assert (=> (not b_lambda!239193) (not d!1972201)))

(declare-fun bs!1570367 () Bool)

(assert (= bs!1570367 d!1972201))

(assert (=> bs!1570367 m!7101918))

(assert (=> bs!1570367 m!7102908))

(assert (=> d!1971427 d!1972201))

(assert (=> bm!531583 d!1971931))

(assert (=> d!1971329 d!1971931))

(assert (=> d!1971329 d!1971385))

(declare-fun d!1972203 () Bool)

(assert (=> d!1972203 (= (isConcat!1132 lt!2354820) ((_ is Concat!25048) lt!2354820))))

(assert (=> b!6281754 d!1972203))

(declare-fun d!1972205 () Bool)

(assert (=> d!1972205 (= (nullable!6196 r!7292) (nullableFct!2147 r!7292))))

(declare-fun bs!1570368 () Bool)

(assert (= bs!1570368 d!1972205))

(declare-fun m!7104458 () Bool)

(assert (=> bs!1570368 m!7104458))

(assert (=> b!6281668 d!1972205))

(declare-fun bm!531924 () Bool)

(declare-fun call!531930 () (InoxSet Context!11174))

(declare-fun call!531932 () (InoxSet Context!11174))

(assert (=> bm!531924 (= call!531930 call!531932)))

(declare-fun b!6283494 () Bool)

(declare-fun e!3821114 () Bool)

(assert (=> b!6283494 (= e!3821114 (nullable!6196 (regOne!32918 (h!71232 (exprs!6087 lt!2354668)))))))

(declare-fun b!6283495 () Bool)

(declare-fun e!3821112 () (InoxSet Context!11174))

(assert (=> b!6283495 (= e!3821112 call!531930)))

(declare-fun b!6283496 () Bool)

(declare-fun e!3821113 () (InoxSet Context!11174))

(assert (=> b!6283496 (= e!3821113 call!531930)))

(declare-fun b!6283497 () Bool)

(declare-fun c!1139737 () Bool)

(assert (=> b!6283497 (= c!1139737 ((_ is Star!16203) (h!71232 (exprs!6087 lt!2354668))))))

(assert (=> b!6283497 (= e!3821113 e!3821112)))

(declare-fun bm!531925 () Bool)

(declare-fun call!531933 () List!64908)

(declare-fun call!531931 () List!64908)

(assert (=> bm!531925 (= call!531933 call!531931)))

(declare-fun b!6283498 () Bool)

(declare-fun e!3821115 () (InoxSet Context!11174))

(declare-fun call!531929 () (InoxSet Context!11174))

(assert (=> b!6283498 (= e!3821115 ((_ map or) call!531929 call!531932))))

(declare-fun b!6283499 () Bool)

(declare-fun e!3821116 () (InoxSet Context!11174))

(declare-fun call!531934 () (InoxSet Context!11174))

(assert (=> b!6283499 (= e!3821116 ((_ map or) call!531929 call!531934))))

(declare-fun bm!531926 () Bool)

(declare-fun c!1139736 () Bool)

(declare-fun c!1139735 () Bool)

(assert (=> bm!531926 (= call!531931 ($colon$colon!2068 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354668)))) (ite (or c!1139736 c!1139735) (regTwo!32918 (h!71232 (exprs!6087 lt!2354668))) (h!71232 (exprs!6087 lt!2354668)))))))

(declare-fun b!6283500 () Bool)

(assert (=> b!6283500 (= c!1139736 e!3821114)))

(declare-fun res!2591361 () Bool)

(assert (=> b!6283500 (=> (not res!2591361) (not e!3821114))))

(assert (=> b!6283500 (= res!2591361 ((_ is Concat!25048) (h!71232 (exprs!6087 lt!2354668))))))

(assert (=> b!6283500 (= e!3821116 e!3821115)))

(declare-fun b!6283501 () Bool)

(declare-fun e!3821117 () (InoxSet Context!11174))

(assert (=> b!6283501 (= e!3821117 e!3821116)))

(declare-fun c!1139734 () Bool)

(assert (=> b!6283501 (= c!1139734 ((_ is Union!16203) (h!71232 (exprs!6087 lt!2354668))))))

(declare-fun bm!531927 () Bool)

(assert (=> bm!531927 (= call!531934 (derivationStepZipperDown!1451 (ite c!1139734 (regTwo!32919 (h!71232 (exprs!6087 lt!2354668))) (ite c!1139736 (regTwo!32918 (h!71232 (exprs!6087 lt!2354668))) (ite c!1139735 (regOne!32918 (h!71232 (exprs!6087 lt!2354668))) (reg!16532 (h!71232 (exprs!6087 lt!2354668)))))) (ite (or c!1139734 c!1139736) (Context!11175 (t!378468 (exprs!6087 lt!2354668))) (Context!11175 call!531933)) (h!71233 s!2326)))))

(declare-fun bm!531928 () Bool)

(assert (=> bm!531928 (= call!531929 (derivationStepZipperDown!1451 (ite c!1139734 (regOne!32919 (h!71232 (exprs!6087 lt!2354668))) (regOne!32918 (h!71232 (exprs!6087 lt!2354668)))) (ite c!1139734 (Context!11175 (t!378468 (exprs!6087 lt!2354668))) (Context!11175 call!531931)) (h!71233 s!2326)))))

(declare-fun d!1972207 () Bool)

(declare-fun c!1139733 () Bool)

(assert (=> d!1972207 (= c!1139733 (and ((_ is ElementMatch!16203) (h!71232 (exprs!6087 lt!2354668))) (= (c!1138982 (h!71232 (exprs!6087 lt!2354668))) (h!71233 s!2326))))))

(assert (=> d!1972207 (= (derivationStepZipperDown!1451 (h!71232 (exprs!6087 lt!2354668)) (Context!11175 (t!378468 (exprs!6087 lt!2354668))) (h!71233 s!2326)) e!3821117)))

(declare-fun b!6283502 () Bool)

(assert (=> b!6283502 (= e!3821115 e!3821113)))

(assert (=> b!6283502 (= c!1139735 ((_ is Concat!25048) (h!71232 (exprs!6087 lt!2354668))))))

(declare-fun b!6283503 () Bool)

(assert (=> b!6283503 (= e!3821112 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531929 () Bool)

(assert (=> bm!531929 (= call!531932 call!531934)))

(declare-fun b!6283504 () Bool)

(assert (=> b!6283504 (= e!3821117 (store ((as const (Array Context!11174 Bool)) false) (Context!11175 (t!378468 (exprs!6087 lt!2354668))) true))))

(assert (= (and d!1972207 c!1139733) b!6283504))

(assert (= (and d!1972207 (not c!1139733)) b!6283501))

(assert (= (and b!6283501 c!1139734) b!6283499))

(assert (= (and b!6283501 (not c!1139734)) b!6283500))

(assert (= (and b!6283500 res!2591361) b!6283494))

(assert (= (and b!6283500 c!1139736) b!6283498))

(assert (= (and b!6283500 (not c!1139736)) b!6283502))

(assert (= (and b!6283502 c!1139735) b!6283496))

(assert (= (and b!6283502 (not c!1139735)) b!6283497))

(assert (= (and b!6283497 c!1139737) b!6283495))

(assert (= (and b!6283497 (not c!1139737)) b!6283503))

(assert (= (or b!6283496 b!6283495) bm!531925))

(assert (= (or b!6283496 b!6283495) bm!531924))

(assert (= (or b!6283498 bm!531925) bm!531926))

(assert (= (or b!6283498 bm!531924) bm!531929))

(assert (= (or b!6283499 bm!531929) bm!531927))

(assert (= (or b!6283499 b!6283498) bm!531928))

(declare-fun m!7104460 () Bool)

(assert (=> b!6283494 m!7104460))

(declare-fun m!7104462 () Bool)

(assert (=> bm!531928 m!7104462))

(declare-fun m!7104464 () Bool)

(assert (=> b!6283504 m!7104464))

(declare-fun m!7104466 () Bool)

(assert (=> bm!531927 m!7104466))

(declare-fun m!7104468 () Bool)

(assert (=> bm!531926 m!7104468))

(assert (=> bm!531624 d!1972207))

(declare-fun d!1972209 () Bool)

(declare-fun c!1139740 () Bool)

(assert (=> d!1972209 (= c!1139740 ((_ is Nil!64786) lt!2354793))))

(declare-fun e!3821120 () (InoxSet Context!11174))

(assert (=> d!1972209 (= (content!12178 lt!2354793) e!3821120)))

(declare-fun b!6283509 () Bool)

(assert (=> b!6283509 (= e!3821120 ((as const (Array Context!11174 Bool)) false))))

(declare-fun b!6283510 () Bool)

(assert (=> b!6283510 (= e!3821120 ((_ map or) (store ((as const (Array Context!11174 Bool)) false) (h!71234 lt!2354793) true) (content!12178 (t!378470 lt!2354793))))))

(assert (= (and d!1972209 c!1139740) b!6283509))

(assert (= (and d!1972209 (not c!1139740)) b!6283510))

(declare-fun m!7104470 () Bool)

(assert (=> b!6283510 m!7104470))

(declare-fun m!7104472 () Bool)

(assert (=> b!6283510 m!7104472))

(assert (=> b!6281672 d!1972209))

(assert (=> d!1971305 d!1971943))

(assert (=> d!1971383 d!1971931))

(assert (=> d!1971303 d!1971307))

(declare-fun d!1972211 () Bool)

(assert (=> d!1972211 (= (flatMap!1708 lt!2354666 lambda!344509) (dynLambda!25629 lambda!344509 lt!2354667))))

(assert (=> d!1972211 true))

(declare-fun _$13!3402 () Unit!158143)

(assert (=> d!1972211 (= (choose!46646 lt!2354666 lt!2354667 lambda!344509) _$13!3402)))

(declare-fun b_lambda!239195 () Bool)

(assert (=> (not b_lambda!239195) (not d!1972211)))

(declare-fun bs!1570369 () Bool)

(assert (= bs!1570369 d!1972211))

(assert (=> bs!1570369 m!7101972))

(assert (=> bs!1570369 m!7102544))

(assert (=> d!1971303 d!1972211))

(assert (=> d!1971357 d!1971349))

(assert (=> d!1971357 d!1971383))

(declare-fun d!1972213 () Bool)

(assert (=> d!1972213 (= (matchR!8386 lt!2354656 s!2326) (matchZipper!2215 lt!2354675 s!2326))))

(assert (=> d!1972213 true))

(declare-fun _$44!1616 () Unit!158143)

(assert (=> d!1972213 (= (choose!46651 lt!2354675 lt!2354647 lt!2354656 s!2326) _$44!1616)))

(declare-fun bs!1570370 () Bool)

(assert (= bs!1570370 d!1972213))

(assert (=> bs!1570370 m!7102014))

(assert (=> bs!1570370 m!7102012))

(assert (=> d!1971357 d!1972213))

(assert (=> d!1971357 d!1971933))

(declare-fun d!1972215 () Bool)

(declare-fun c!1139741 () Bool)

(assert (=> d!1972215 (= c!1139741 (isEmpty!36834 (tail!11991 (t!378469 s!2326))))))

(declare-fun e!3821121 () Bool)

(assert (=> d!1972215 (= (matchZipper!2215 (derivationStepZipper!2169 lt!2354669 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))) e!3821121)))

(declare-fun b!6283511 () Bool)

(assert (=> b!6283511 (= e!3821121 (nullableZipper!1973 (derivationStepZipper!2169 lt!2354669 (head!12906 (t!378469 s!2326)))))))

(declare-fun b!6283512 () Bool)

(assert (=> b!6283512 (= e!3821121 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354669 (head!12906 (t!378469 s!2326))) (head!12906 (tail!11991 (t!378469 s!2326)))) (tail!11991 (tail!11991 (t!378469 s!2326)))))))

(assert (= (and d!1972215 c!1139741) b!6283511))

(assert (= (and d!1972215 (not c!1139741)) b!6283512))

(assert (=> d!1972215 m!7102540))

(assert (=> d!1972215 m!7103958))

(assert (=> b!6283511 m!7102558))

(declare-fun m!7104474 () Bool)

(assert (=> b!6283511 m!7104474))

(assert (=> b!6283512 m!7102540))

(assert (=> b!6283512 m!7103962))

(assert (=> b!6283512 m!7102558))

(assert (=> b!6283512 m!7103962))

(declare-fun m!7104476 () Bool)

(assert (=> b!6283512 m!7104476))

(assert (=> b!6283512 m!7102540))

(assert (=> b!6283512 m!7103966))

(assert (=> b!6283512 m!7104476))

(assert (=> b!6283512 m!7103966))

(declare-fun m!7104478 () Bool)

(assert (=> b!6283512 m!7104478))

(assert (=> b!6281559 d!1972215))

(declare-fun bs!1570371 () Bool)

(declare-fun d!1972217 () Bool)

(assert (= bs!1570371 (and d!1972217 d!1971429)))

(declare-fun lambda!344744 () Int)

(assert (=> bs!1570371 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344744 lambda!344613))))

(declare-fun bs!1570372 () Bool)

(assert (= bs!1570372 (and d!1972217 b!6280977)))

(assert (=> bs!1570372 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344744 lambda!344509))))

(declare-fun bs!1570373 () Bool)

(assert (= bs!1570373 (and d!1972217 d!1972141)))

(assert (=> bs!1570373 (= lambda!344744 lambda!344724)))

(declare-fun bs!1570374 () Bool)

(assert (= bs!1570374 (and d!1972217 d!1971409)))

(assert (=> bs!1570374 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344744 lambda!344611))))

(declare-fun bs!1570375 () Bool)

(assert (= bs!1570375 (and d!1972217 d!1972021)))

(assert (=> bs!1570375 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344744 lambda!344702))))

(declare-fun bs!1570376 () Bool)

(assert (= bs!1570376 (and d!1972217 d!1972011)))

(assert (=> bs!1570376 (= lambda!344744 lambda!344701)))

(declare-fun bs!1570377 () Bool)

(assert (= bs!1570377 (and d!1972217 d!1972179)))

(assert (=> bs!1570377 (= lambda!344744 lambda!344739)))

(declare-fun bs!1570378 () Bool)

(assert (= bs!1570378 (and d!1972217 d!1972199)))

(assert (=> bs!1570378 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344744 lambda!344743))))

(declare-fun bs!1570379 () Bool)

(assert (= bs!1570379 (and d!1972217 d!1971965)))

(assert (=> bs!1570379 (= lambda!344744 lambda!344697)))

(assert (=> d!1972217 true))

(assert (=> d!1972217 (= (derivationStepZipper!2169 lt!2354669 (head!12906 (t!378469 s!2326))) (flatMap!1708 lt!2354669 lambda!344744))))

(declare-fun bs!1570380 () Bool)

(assert (= bs!1570380 d!1972217))

(declare-fun m!7104480 () Bool)

(assert (=> bs!1570380 m!7104480))

(assert (=> b!6281559 d!1972217))

(assert (=> b!6281559 d!1971967))

(assert (=> b!6281559 d!1971969))

(declare-fun d!1972219 () Bool)

(assert (=> d!1972219 (= (isConcat!1132 lt!2354825) ((_ is Concat!25048) lt!2354825))))

(assert (=> b!6281791 d!1972219))

(declare-fun bm!531930 () Bool)

(declare-fun call!531936 () Bool)

(declare-fun call!531937 () Bool)

(assert (=> bm!531930 (= call!531936 call!531937)))

(declare-fun b!6283513 () Bool)

(declare-fun res!2591365 () Bool)

(declare-fun e!3821124 () Bool)

(assert (=> b!6283513 (=> res!2591365 e!3821124)))

(assert (=> b!6283513 (= res!2591365 (not ((_ is Concat!25048) lt!2354820)))))

(declare-fun e!3821128 () Bool)

(assert (=> b!6283513 (= e!3821128 e!3821124)))

(declare-fun b!6283514 () Bool)

(declare-fun res!2591362 () Bool)

(declare-fun e!3821123 () Bool)

(assert (=> b!6283514 (=> (not res!2591362) (not e!3821123))))

(declare-fun call!531935 () Bool)

(assert (=> b!6283514 (= res!2591362 call!531935)))

(assert (=> b!6283514 (= e!3821128 e!3821123)))

(declare-fun b!6283515 () Bool)

(declare-fun e!3821125 () Bool)

(assert (=> b!6283515 (= e!3821125 call!531937)))

(declare-fun b!6283516 () Bool)

(assert (=> b!6283516 (= e!3821123 call!531936)))

(declare-fun b!6283517 () Bool)

(declare-fun e!3821126 () Bool)

(declare-fun e!3821127 () Bool)

(assert (=> b!6283517 (= e!3821126 e!3821127)))

(declare-fun c!1139743 () Bool)

(assert (=> b!6283517 (= c!1139743 ((_ is Star!16203) lt!2354820))))

(declare-fun b!6283518 () Bool)

(assert (=> b!6283518 (= e!3821127 e!3821128)))

(declare-fun c!1139742 () Bool)

(assert (=> b!6283518 (= c!1139742 ((_ is Union!16203) lt!2354820))))

(declare-fun bm!531931 () Bool)

(assert (=> bm!531931 (= call!531935 (validRegex!7939 (ite c!1139742 (regOne!32919 lt!2354820) (regOne!32918 lt!2354820))))))

(declare-fun b!6283520 () Bool)

(assert (=> b!6283520 (= e!3821127 e!3821125)))

(declare-fun res!2591363 () Bool)

(assert (=> b!6283520 (= res!2591363 (not (nullable!6196 (reg!16532 lt!2354820))))))

(assert (=> b!6283520 (=> (not res!2591363) (not e!3821125))))

(declare-fun b!6283519 () Bool)

(declare-fun e!3821122 () Bool)

(assert (=> b!6283519 (= e!3821122 call!531936)))

(declare-fun d!1972221 () Bool)

(declare-fun res!2591366 () Bool)

(assert (=> d!1972221 (=> res!2591366 e!3821126)))

(assert (=> d!1972221 (= res!2591366 ((_ is ElementMatch!16203) lt!2354820))))

(assert (=> d!1972221 (= (validRegex!7939 lt!2354820) e!3821126)))

(declare-fun bm!531932 () Bool)

(assert (=> bm!531932 (= call!531937 (validRegex!7939 (ite c!1139743 (reg!16532 lt!2354820) (ite c!1139742 (regTwo!32919 lt!2354820) (regTwo!32918 lt!2354820)))))))

(declare-fun b!6283521 () Bool)

(assert (=> b!6283521 (= e!3821124 e!3821122)))

(declare-fun res!2591364 () Bool)

(assert (=> b!6283521 (=> (not res!2591364) (not e!3821122))))

(assert (=> b!6283521 (= res!2591364 call!531935)))

(assert (= (and d!1972221 (not res!2591366)) b!6283517))

(assert (= (and b!6283517 c!1139743) b!6283520))

(assert (= (and b!6283517 (not c!1139743)) b!6283518))

(assert (= (and b!6283520 res!2591363) b!6283515))

(assert (= (and b!6283518 c!1139742) b!6283514))

(assert (= (and b!6283518 (not c!1139742)) b!6283513))

(assert (= (and b!6283514 res!2591362) b!6283516))

(assert (= (and b!6283513 (not res!2591365)) b!6283521))

(assert (= (and b!6283521 res!2591364) b!6283519))

(assert (= (or b!6283516 b!6283519) bm!531930))

(assert (= (or b!6283514 b!6283521) bm!531931))

(assert (= (or b!6283515 bm!531930) bm!531932))

(declare-fun m!7104482 () Bool)

(assert (=> bm!531931 m!7104482))

(declare-fun m!7104484 () Bool)

(assert (=> b!6283520 m!7104484))

(declare-fun m!7104486 () Bool)

(assert (=> bm!531932 m!7104486))

(assert (=> d!1971351 d!1972221))

(declare-fun d!1972223 () Bool)

(declare-fun res!2591367 () Bool)

(declare-fun e!3821129 () Bool)

(assert (=> d!1972223 (=> res!2591367 e!3821129)))

(assert (=> d!1972223 (= res!2591367 ((_ is Nil!64784) lt!2354672))))

(assert (=> d!1972223 (= (forall!15344 lt!2354672 lambda!344601) e!3821129)))

(declare-fun b!6283522 () Bool)

(declare-fun e!3821130 () Bool)

(assert (=> b!6283522 (= e!3821129 e!3821130)))

(declare-fun res!2591368 () Bool)

(assert (=> b!6283522 (=> (not res!2591368) (not e!3821130))))

(assert (=> b!6283522 (= res!2591368 (dynLambda!25634 lambda!344601 (h!71232 lt!2354672)))))

(declare-fun b!6283523 () Bool)

(assert (=> b!6283523 (= e!3821130 (forall!15344 (t!378468 lt!2354672) lambda!344601))))

(assert (= (and d!1972223 (not res!2591367)) b!6283522))

(assert (= (and b!6283522 res!2591368) b!6283523))

(declare-fun b_lambda!239197 () Bool)

(assert (=> (not b_lambda!239197) (not b!6283522)))

(declare-fun m!7104488 () Bool)

(assert (=> b!6283522 m!7104488))

(declare-fun m!7104490 () Bool)

(assert (=> b!6283523 m!7104490))

(assert (=> d!1971351 d!1972223))

(declare-fun bm!531933 () Bool)

(declare-fun call!531939 () Bool)

(declare-fun call!531940 () Bool)

(assert (=> bm!531933 (= call!531939 call!531940)))

(declare-fun b!6283524 () Bool)

(declare-fun res!2591372 () Bool)

(declare-fun e!3821133 () Bool)

(assert (=> b!6283524 (=> res!2591372 e!3821133)))

(assert (=> b!6283524 (= res!2591372 (not ((_ is Concat!25048) lt!2354815)))))

(declare-fun e!3821137 () Bool)

(assert (=> b!6283524 (= e!3821137 e!3821133)))

(declare-fun b!6283525 () Bool)

(declare-fun res!2591369 () Bool)

(declare-fun e!3821132 () Bool)

(assert (=> b!6283525 (=> (not res!2591369) (not e!3821132))))

(declare-fun call!531938 () Bool)

(assert (=> b!6283525 (= res!2591369 call!531938)))

(assert (=> b!6283525 (= e!3821137 e!3821132)))

(declare-fun b!6283526 () Bool)

(declare-fun e!3821134 () Bool)

(assert (=> b!6283526 (= e!3821134 call!531940)))

(declare-fun b!6283527 () Bool)

(assert (=> b!6283527 (= e!3821132 call!531939)))

(declare-fun b!6283528 () Bool)

(declare-fun e!3821135 () Bool)

(declare-fun e!3821136 () Bool)

(assert (=> b!6283528 (= e!3821135 e!3821136)))

(declare-fun c!1139745 () Bool)

(assert (=> b!6283528 (= c!1139745 ((_ is Star!16203) lt!2354815))))

(declare-fun b!6283529 () Bool)

(assert (=> b!6283529 (= e!3821136 e!3821137)))

(declare-fun c!1139744 () Bool)

(assert (=> b!6283529 (= c!1139744 ((_ is Union!16203) lt!2354815))))

(declare-fun bm!531934 () Bool)

(assert (=> bm!531934 (= call!531938 (validRegex!7939 (ite c!1139744 (regOne!32919 lt!2354815) (regOne!32918 lt!2354815))))))

(declare-fun b!6283531 () Bool)

(assert (=> b!6283531 (= e!3821136 e!3821134)))

(declare-fun res!2591370 () Bool)

(assert (=> b!6283531 (= res!2591370 (not (nullable!6196 (reg!16532 lt!2354815))))))

(assert (=> b!6283531 (=> (not res!2591370) (not e!3821134))))

(declare-fun b!6283530 () Bool)

(declare-fun e!3821131 () Bool)

(assert (=> b!6283530 (= e!3821131 call!531939)))

(declare-fun d!1972225 () Bool)

(declare-fun res!2591373 () Bool)

(assert (=> d!1972225 (=> res!2591373 e!3821135)))

(assert (=> d!1972225 (= res!2591373 ((_ is ElementMatch!16203) lt!2354815))))

(assert (=> d!1972225 (= (validRegex!7939 lt!2354815) e!3821135)))

(declare-fun bm!531935 () Bool)

(assert (=> bm!531935 (= call!531940 (validRegex!7939 (ite c!1139745 (reg!16532 lt!2354815) (ite c!1139744 (regTwo!32919 lt!2354815) (regTwo!32918 lt!2354815)))))))

(declare-fun b!6283532 () Bool)

(assert (=> b!6283532 (= e!3821133 e!3821131)))

(declare-fun res!2591371 () Bool)

(assert (=> b!6283532 (=> (not res!2591371) (not e!3821131))))

(assert (=> b!6283532 (= res!2591371 call!531938)))

(assert (= (and d!1972225 (not res!2591373)) b!6283528))

(assert (= (and b!6283528 c!1139745) b!6283531))

(assert (= (and b!6283528 (not c!1139745)) b!6283529))

(assert (= (and b!6283531 res!2591370) b!6283526))

(assert (= (and b!6283529 c!1139744) b!6283525))

(assert (= (and b!6283529 (not c!1139744)) b!6283524))

(assert (= (and b!6283525 res!2591369) b!6283527))

(assert (= (and b!6283524 (not res!2591372)) b!6283532))

(assert (= (and b!6283532 res!2591371) b!6283530))

(assert (= (or b!6283527 b!6283530) bm!531933))

(assert (= (or b!6283525 b!6283532) bm!531934))

(assert (= (or b!6283526 bm!531933) bm!531935))

(declare-fun m!7104492 () Bool)

(assert (=> bm!531934 m!7104492))

(declare-fun m!7104494 () Bool)

(assert (=> b!6283531 m!7104494))

(declare-fun m!7104496 () Bool)

(assert (=> bm!531935 m!7104496))

(assert (=> d!1971343 d!1972225))

(declare-fun d!1972227 () Bool)

(declare-fun res!2591374 () Bool)

(declare-fun e!3821138 () Bool)

(assert (=> d!1972227 (=> res!2591374 e!3821138)))

(assert (=> d!1972227 (= res!2591374 ((_ is Nil!64784) (exprs!6087 (h!71234 zl!343))))))

(assert (=> d!1972227 (= (forall!15344 (exprs!6087 (h!71234 zl!343)) lambda!344598) e!3821138)))

(declare-fun b!6283533 () Bool)

(declare-fun e!3821139 () Bool)

(assert (=> b!6283533 (= e!3821138 e!3821139)))

(declare-fun res!2591375 () Bool)

(assert (=> b!6283533 (=> (not res!2591375) (not e!3821139))))

(assert (=> b!6283533 (= res!2591375 (dynLambda!25634 lambda!344598 (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6283534 () Bool)

(assert (=> b!6283534 (= e!3821139 (forall!15344 (t!378468 (exprs!6087 (h!71234 zl!343))) lambda!344598))))

(assert (= (and d!1972227 (not res!2591374)) b!6283533))

(assert (= (and b!6283533 res!2591375) b!6283534))

(declare-fun b_lambda!239199 () Bool)

(assert (=> (not b_lambda!239199) (not b!6283533)))

(declare-fun m!7104498 () Bool)

(assert (=> b!6283533 m!7104498))

(declare-fun m!7104500 () Bool)

(assert (=> b!6283534 m!7104500))

(assert (=> d!1971343 d!1972227))

(assert (=> bm!531590 d!1971931))

(declare-fun bs!1570381 () Bool)

(declare-fun d!1972229 () Bool)

(assert (= bs!1570381 (and d!1972229 d!1971363)))

(declare-fun lambda!344745 () Int)

(assert (=> bs!1570381 (= lambda!344745 lambda!344602)))

(declare-fun bs!1570382 () Bool)

(assert (= bs!1570382 (and d!1972229 d!1971341)))

(assert (=> bs!1570382 (= lambda!344745 lambda!344595)))

(declare-fun bs!1570383 () Bool)

(assert (= bs!1570383 (and d!1972229 d!1971351)))

(assert (=> bs!1570383 (= lambda!344745 lambda!344601)))

(declare-fun bs!1570384 () Bool)

(assert (= bs!1570384 (and d!1972229 d!1972185)))

(assert (=> bs!1570384 (= lambda!344745 lambda!344742)))

(declare-fun bs!1570385 () Bool)

(assert (= bs!1570385 (and d!1972229 d!1972059)))

(assert (=> bs!1570385 (= lambda!344745 lambda!344712)))

(declare-fun bs!1570386 () Bool)

(assert (= bs!1570386 (and d!1972229 b!6283411)))

(assert (=> bs!1570386 (not (= lambda!344745 lambda!344730))))

(declare-fun bs!1570387 () Bool)

(assert (= bs!1570387 (and d!1972229 d!1971431)))

(assert (=> bs!1570387 (= lambda!344745 lambda!344616)))

(declare-fun bs!1570388 () Bool)

(assert (= bs!1570388 (and d!1972229 d!1972113)))

(assert (=> bs!1570388 (= lambda!344745 lambda!344723)))

(declare-fun bs!1570389 () Bool)

(assert (= bs!1570389 (and d!1972229 d!1971415)))

(assert (=> bs!1570389 (= lambda!344745 lambda!344612)))

(declare-fun bs!1570390 () Bool)

(assert (= bs!1570390 (and d!1972229 d!1972157)))

(assert (=> bs!1570390 (= lambda!344745 lambda!344725)))

(declare-fun bs!1570391 () Bool)

(assert (= bs!1570391 (and d!1972229 d!1971343)))

(assert (=> bs!1570391 (= lambda!344745 lambda!344598)))

(declare-fun bs!1570392 () Bool)

(assert (= bs!1570392 (and d!1972229 d!1972061)))

(assert (=> bs!1570392 (= lambda!344745 lambda!344713)))

(declare-fun bs!1570393 () Bool)

(assert (= bs!1570393 (and d!1972229 d!1971367)))

(assert (=> bs!1570393 (= lambda!344745 lambda!344604)))

(declare-fun bs!1570394 () Bool)

(assert (= bs!1570394 (and d!1972229 b!6283413)))

(assert (=> bs!1570394 (not (= lambda!344745 lambda!344731))))

(declare-fun bs!1570395 () Bool)

(assert (= bs!1570395 (and d!1972229 d!1971433)))

(assert (=> bs!1570395 (= lambda!344745 lambda!344619)))

(declare-fun b!6283535 () Bool)

(declare-fun e!3821143 () Regex!16203)

(assert (=> b!6283535 (= e!3821143 EmptyExpr!16203)))

(declare-fun b!6283536 () Bool)

(declare-fun e!3821144 () Regex!16203)

(assert (=> b!6283536 (= e!3821144 (h!71232 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun e!3821141 () Bool)

(assert (=> d!1972229 e!3821141))

(declare-fun res!2591377 () Bool)

(assert (=> d!1972229 (=> (not res!2591377) (not e!3821141))))

(declare-fun lt!2354975 () Regex!16203)

(assert (=> d!1972229 (= res!2591377 (validRegex!7939 lt!2354975))))

(assert (=> d!1972229 (= lt!2354975 e!3821144)))

(declare-fun c!1139749 () Bool)

(declare-fun e!3821142 () Bool)

(assert (=> d!1972229 (= c!1139749 e!3821142)))

(declare-fun res!2591376 () Bool)

(assert (=> d!1972229 (=> (not res!2591376) (not e!3821142))))

(assert (=> d!1972229 (= res!2591376 ((_ is Cons!64784) (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343))))))))

(assert (=> d!1972229 (forall!15344 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343)))) lambda!344745)))

(assert (=> d!1972229 (= (generalisedConcat!1800 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343))))) lt!2354975)))

(declare-fun b!6283537 () Bool)

(assert (=> b!6283537 (= e!3821144 e!3821143)))

(declare-fun c!1139747 () Bool)

(assert (=> b!6283537 (= c!1139747 ((_ is Cons!64784) (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun b!6283538 () Bool)

(declare-fun e!3821145 () Bool)

(assert (=> b!6283538 (= e!3821145 (isConcat!1132 lt!2354975))))

(declare-fun b!6283539 () Bool)

(assert (=> b!6283539 (= e!3821143 (Concat!25048 (h!71232 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343))))) (generalisedConcat!1800 (t!378468 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343))))))))))

(declare-fun b!6283540 () Bool)

(assert (=> b!6283540 (= e!3821145 (= lt!2354975 (head!12907 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343)))))))))

(declare-fun b!6283541 () Bool)

(declare-fun e!3821140 () Bool)

(assert (=> b!6283541 (= e!3821141 e!3821140)))

(declare-fun c!1139748 () Bool)

(assert (=> b!6283541 (= c!1139748 (isEmpty!36830 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun b!6283542 () Bool)

(assert (=> b!6283542 (= e!3821140 e!3821145)))

(declare-fun c!1139746 () Bool)

(assert (=> b!6283542 (= c!1139746 (isEmpty!36830 (tail!11992 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343)))))))))

(declare-fun b!6283543 () Bool)

(assert (=> b!6283543 (= e!3821140 (isEmptyExpr!1609 lt!2354975))))

(declare-fun b!6283544 () Bool)

(assert (=> b!6283544 (= e!3821142 (isEmpty!36830 (t!378468 (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343)))))))))

(assert (= (and d!1972229 res!2591376) b!6283544))

(assert (= (and d!1972229 c!1139749) b!6283536))

(assert (= (and d!1972229 (not c!1139749)) b!6283537))

(assert (= (and b!6283537 c!1139747) b!6283539))

(assert (= (and b!6283537 (not c!1139747)) b!6283535))

(assert (= (and d!1972229 res!2591377) b!6283541))

(assert (= (and b!6283541 c!1139748) b!6283543))

(assert (= (and b!6283541 (not c!1139748)) b!6283542))

(assert (= (and b!6283542 c!1139746) b!6283540))

(assert (= (and b!6283542 (not c!1139746)) b!6283538))

(declare-fun m!7104502 () Bool)

(assert (=> b!6283543 m!7104502))

(declare-fun m!7104504 () Bool)

(assert (=> b!6283539 m!7104504))

(declare-fun m!7104506 () Bool)

(assert (=> b!6283542 m!7104506))

(assert (=> b!6283542 m!7104506))

(declare-fun m!7104508 () Bool)

(assert (=> b!6283542 m!7104508))

(declare-fun m!7104510 () Bool)

(assert (=> b!6283540 m!7104510))

(declare-fun m!7104512 () Bool)

(assert (=> d!1972229 m!7104512))

(declare-fun m!7104514 () Bool)

(assert (=> d!1972229 m!7104514))

(declare-fun m!7104516 () Bool)

(assert (=> b!6283544 m!7104516))

(declare-fun m!7104518 () Bool)

(assert (=> b!6283538 m!7104518))

(assert (=> b!6283541 m!7102770))

(assert (=> b!6281802 d!1972229))

(declare-fun d!1972231 () Bool)

(declare-fun res!2591378 () Bool)

(declare-fun e!3821146 () Bool)

(assert (=> d!1972231 (=> res!2591378 e!3821146)))

(assert (=> d!1972231 (= res!2591378 ((_ is Nil!64784) (exprs!6087 setElem!42740)))))

(assert (=> d!1972231 (= (forall!15344 (exprs!6087 setElem!42740) lambda!344595) e!3821146)))

(declare-fun b!6283545 () Bool)

(declare-fun e!3821147 () Bool)

(assert (=> b!6283545 (= e!3821146 e!3821147)))

(declare-fun res!2591379 () Bool)

(assert (=> b!6283545 (=> (not res!2591379) (not e!3821147))))

(assert (=> b!6283545 (= res!2591379 (dynLambda!25634 lambda!344595 (h!71232 (exprs!6087 setElem!42740))))))

(declare-fun b!6283546 () Bool)

(assert (=> b!6283546 (= e!3821147 (forall!15344 (t!378468 (exprs!6087 setElem!42740)) lambda!344595))))

(assert (= (and d!1972231 (not res!2591378)) b!6283545))

(assert (= (and b!6283545 res!2591379) b!6283546))

(declare-fun b_lambda!239201 () Bool)

(assert (=> (not b_lambda!239201) (not b!6283545)))

(declare-fun m!7104520 () Bool)

(assert (=> b!6283545 m!7104520))

(declare-fun m!7104522 () Bool)

(assert (=> b!6283546 m!7104522))

(assert (=> d!1971341 d!1972231))

(assert (=> bs!1569088 d!1971425))

(declare-fun bs!1570396 () Bool)

(declare-fun d!1972233 () Bool)

(assert (= bs!1570396 (and d!1972233 d!1972033)))

(declare-fun lambda!344746 () Int)

(assert (=> bs!1570396 (= lambda!344746 lambda!344703)))

(declare-fun bs!1570397 () Bool)

(assert (= bs!1570397 (and d!1972233 b!6281684)))

(assert (=> bs!1570397 (not (= lambda!344746 lambda!344591))))

(declare-fun bs!1570398 () Bool)

(assert (= bs!1570398 (and d!1972233 d!1972165)))

(assert (=> bs!1570398 (not (= lambda!344746 lambda!344737))))

(declare-fun bs!1570399 () Bool)

(assert (= bs!1570399 (and d!1972233 d!1972097)))

(assert (=> bs!1570399 (= lambda!344746 lambda!344722)))

(declare-fun bs!1570400 () Bool)

(assert (= bs!1570400 (and d!1972233 b!6281681)))

(assert (=> bs!1570400 (not (= lambda!344746 lambda!344589))))

(declare-fun bs!1570401 () Bool)

(assert (= bs!1570401 (and d!1972233 d!1971997)))

(assert (=> bs!1570401 (= lambda!344746 lambda!344700)))

(declare-fun bs!1570402 () Bool)

(assert (= bs!1570402 (and d!1972233 b!6281686)))

(assert (=> bs!1570402 (not (= lambda!344746 lambda!344592))))

(declare-fun bs!1570403 () Bool)

(assert (= bs!1570403 (and d!1972233 b!6283418)))

(assert (=> bs!1570403 (not (= lambda!344746 lambda!344734))))

(declare-fun bs!1570404 () Bool)

(assert (= bs!1570404 (and d!1972233 b!6283416)))

(assert (=> bs!1570404 (not (= lambda!344746 lambda!344733))))

(declare-fun bs!1570405 () Bool)

(assert (= bs!1570405 (and d!1972233 b!6281679)))

(assert (=> bs!1570405 (not (= lambda!344746 lambda!344588))))

(declare-fun bs!1570406 () Bool)

(assert (= bs!1570406 (and d!1972233 d!1972071)))

(assert (=> bs!1570406 (= lambda!344746 lambda!344716)))

(declare-fun bs!1570407 () Bool)

(assert (= bs!1570407 (and d!1972233 d!1972169)))

(assert (=> bs!1570407 (= lambda!344746 lambda!344738)))

(assert (=> d!1972233 (= (nullableZipper!1973 lt!2354658) (exists!2527 lt!2354658 lambda!344746))))

(declare-fun bs!1570408 () Bool)

(assert (= bs!1570408 d!1972233))

(declare-fun m!7104524 () Bool)

(assert (=> bs!1570408 m!7104524))

(assert (=> b!6281582 d!1972233))

(declare-fun bm!531936 () Bool)

(declare-fun call!531942 () Bool)

(declare-fun call!531943 () Bool)

(assert (=> bm!531936 (= call!531942 call!531943)))

(declare-fun b!6283547 () Bool)

(declare-fun res!2591383 () Bool)

(declare-fun e!3821150 () Bool)

(assert (=> b!6283547 (=> res!2591383 e!3821150)))

(assert (=> b!6283547 (= res!2591383 (not ((_ is Concat!25048) lt!2354796)))))

(declare-fun e!3821154 () Bool)

(assert (=> b!6283547 (= e!3821154 e!3821150)))

(declare-fun b!6283548 () Bool)

(declare-fun res!2591380 () Bool)

(declare-fun e!3821149 () Bool)

(assert (=> b!6283548 (=> (not res!2591380) (not e!3821149))))

(declare-fun call!531941 () Bool)

(assert (=> b!6283548 (= res!2591380 call!531941)))

(assert (=> b!6283548 (= e!3821154 e!3821149)))

(declare-fun b!6283549 () Bool)

(declare-fun e!3821151 () Bool)

(assert (=> b!6283549 (= e!3821151 call!531943)))

(declare-fun b!6283550 () Bool)

(assert (=> b!6283550 (= e!3821149 call!531942)))

(declare-fun b!6283551 () Bool)

(declare-fun e!3821152 () Bool)

(declare-fun e!3821153 () Bool)

(assert (=> b!6283551 (= e!3821152 e!3821153)))

(declare-fun c!1139751 () Bool)

(assert (=> b!6283551 (= c!1139751 ((_ is Star!16203) lt!2354796))))

(declare-fun b!6283552 () Bool)

(assert (=> b!6283552 (= e!3821153 e!3821154)))

(declare-fun c!1139750 () Bool)

(assert (=> b!6283552 (= c!1139750 ((_ is Union!16203) lt!2354796))))

(declare-fun bm!531937 () Bool)

(assert (=> bm!531937 (= call!531941 (validRegex!7939 (ite c!1139750 (regOne!32919 lt!2354796) (regOne!32918 lt!2354796))))))

(declare-fun b!6283554 () Bool)

(assert (=> b!6283554 (= e!3821153 e!3821151)))

(declare-fun res!2591381 () Bool)

(assert (=> b!6283554 (= res!2591381 (not (nullable!6196 (reg!16532 lt!2354796))))))

(assert (=> b!6283554 (=> (not res!2591381) (not e!3821151))))

(declare-fun b!6283553 () Bool)

(declare-fun e!3821148 () Bool)

(assert (=> b!6283553 (= e!3821148 call!531942)))

(declare-fun d!1972235 () Bool)

(declare-fun res!2591384 () Bool)

(assert (=> d!1972235 (=> res!2591384 e!3821152)))

(assert (=> d!1972235 (= res!2591384 ((_ is ElementMatch!16203) lt!2354796))))

(assert (=> d!1972235 (= (validRegex!7939 lt!2354796) e!3821152)))

(declare-fun bm!531938 () Bool)

(assert (=> bm!531938 (= call!531943 (validRegex!7939 (ite c!1139751 (reg!16532 lt!2354796) (ite c!1139750 (regTwo!32919 lt!2354796) (regTwo!32918 lt!2354796)))))))

(declare-fun b!6283555 () Bool)

(assert (=> b!6283555 (= e!3821150 e!3821148)))

(declare-fun res!2591382 () Bool)

(assert (=> b!6283555 (=> (not res!2591382) (not e!3821148))))

(assert (=> b!6283555 (= res!2591382 call!531941)))

(assert (= (and d!1972235 (not res!2591384)) b!6283551))

(assert (= (and b!6283551 c!1139751) b!6283554))

(assert (= (and b!6283551 (not c!1139751)) b!6283552))

(assert (= (and b!6283554 res!2591381) b!6283549))

(assert (= (and b!6283552 c!1139750) b!6283548))

(assert (= (and b!6283552 (not c!1139750)) b!6283547))

(assert (= (and b!6283548 res!2591380) b!6283550))

(assert (= (and b!6283547 (not res!2591383)) b!6283555))

(assert (= (and b!6283555 res!2591382) b!6283553))

(assert (= (or b!6283550 b!6283553) bm!531936))

(assert (= (or b!6283548 b!6283555) bm!531937))

(assert (= (or b!6283549 bm!531936) bm!531938))

(declare-fun m!7104526 () Bool)

(assert (=> bm!531937 m!7104526))

(declare-fun m!7104528 () Bool)

(assert (=> b!6283554 m!7104528))

(declare-fun m!7104530 () Bool)

(assert (=> bm!531938 m!7104530))

(assert (=> d!1971335 d!1972235))

(assert (=> d!1971335 d!1971431))

(assert (=> d!1971335 d!1971433))

(declare-fun d!1972237 () Bool)

(assert (=> d!1972237 (= (nullable!6196 (regOne!32918 (regOne!32918 (regOne!32918 r!7292)))) (nullableFct!2147 (regOne!32918 (regOne!32918 (regOne!32918 r!7292)))))))

(declare-fun bs!1570409 () Bool)

(assert (= bs!1570409 d!1972237))

(declare-fun m!7104532 () Bool)

(assert (=> bs!1570409 m!7104532))

(assert (=> b!6281922 d!1972237))

(declare-fun bm!531939 () Bool)

(declare-fun call!531945 () Bool)

(declare-fun call!531946 () Bool)

(assert (=> bm!531939 (= call!531945 call!531946)))

(declare-fun b!6283556 () Bool)

(declare-fun res!2591388 () Bool)

(declare-fun e!3821157 () Bool)

(assert (=> b!6283556 (=> res!2591388 e!3821157)))

(assert (=> b!6283556 (= res!2591388 (not ((_ is Concat!25048) lt!2354825)))))

(declare-fun e!3821161 () Bool)

(assert (=> b!6283556 (= e!3821161 e!3821157)))

(declare-fun b!6283557 () Bool)

(declare-fun res!2591385 () Bool)

(declare-fun e!3821156 () Bool)

(assert (=> b!6283557 (=> (not res!2591385) (not e!3821156))))

(declare-fun call!531944 () Bool)

(assert (=> b!6283557 (= res!2591385 call!531944)))

(assert (=> b!6283557 (= e!3821161 e!3821156)))

(declare-fun b!6283558 () Bool)

(declare-fun e!3821158 () Bool)

(assert (=> b!6283558 (= e!3821158 call!531946)))

(declare-fun b!6283559 () Bool)

(assert (=> b!6283559 (= e!3821156 call!531945)))

(declare-fun b!6283560 () Bool)

(declare-fun e!3821159 () Bool)

(declare-fun e!3821160 () Bool)

(assert (=> b!6283560 (= e!3821159 e!3821160)))

(declare-fun c!1139753 () Bool)

(assert (=> b!6283560 (= c!1139753 ((_ is Star!16203) lt!2354825))))

(declare-fun b!6283561 () Bool)

(assert (=> b!6283561 (= e!3821160 e!3821161)))

(declare-fun c!1139752 () Bool)

(assert (=> b!6283561 (= c!1139752 ((_ is Union!16203) lt!2354825))))

(declare-fun bm!531940 () Bool)

(assert (=> bm!531940 (= call!531944 (validRegex!7939 (ite c!1139752 (regOne!32919 lt!2354825) (regOne!32918 lt!2354825))))))

(declare-fun b!6283563 () Bool)

(assert (=> b!6283563 (= e!3821160 e!3821158)))

(declare-fun res!2591386 () Bool)

(assert (=> b!6283563 (= res!2591386 (not (nullable!6196 (reg!16532 lt!2354825))))))

(assert (=> b!6283563 (=> (not res!2591386) (not e!3821158))))

(declare-fun b!6283562 () Bool)

(declare-fun e!3821155 () Bool)

(assert (=> b!6283562 (= e!3821155 call!531945)))

(declare-fun d!1972239 () Bool)

(declare-fun res!2591389 () Bool)

(assert (=> d!1972239 (=> res!2591389 e!3821159)))

(assert (=> d!1972239 (= res!2591389 ((_ is ElementMatch!16203) lt!2354825))))

(assert (=> d!1972239 (= (validRegex!7939 lt!2354825) e!3821159)))

(declare-fun bm!531941 () Bool)

(assert (=> bm!531941 (= call!531946 (validRegex!7939 (ite c!1139753 (reg!16532 lt!2354825) (ite c!1139752 (regTwo!32919 lt!2354825) (regTwo!32918 lt!2354825)))))))

(declare-fun b!6283564 () Bool)

(assert (=> b!6283564 (= e!3821157 e!3821155)))

(declare-fun res!2591387 () Bool)

(assert (=> b!6283564 (=> (not res!2591387) (not e!3821155))))

(assert (=> b!6283564 (= res!2591387 call!531944)))

(assert (= (and d!1972239 (not res!2591389)) b!6283560))

(assert (= (and b!6283560 c!1139753) b!6283563))

(assert (= (and b!6283560 (not c!1139753)) b!6283561))

(assert (= (and b!6283563 res!2591386) b!6283558))

(assert (= (and b!6283561 c!1139752) b!6283557))

(assert (= (and b!6283561 (not c!1139752)) b!6283556))

(assert (= (and b!6283557 res!2591385) b!6283559))

(assert (= (and b!6283556 (not res!2591388)) b!6283564))

(assert (= (and b!6283564 res!2591387) b!6283562))

(assert (= (or b!6283559 b!6283562) bm!531939))

(assert (= (or b!6283557 b!6283564) bm!531940))

(assert (= (or b!6283558 bm!531939) bm!531941))

(declare-fun m!7104534 () Bool)

(assert (=> bm!531940 m!7104534))

(declare-fun m!7104536 () Bool)

(assert (=> b!6283563 m!7104536))

(declare-fun m!7104538 () Bool)

(assert (=> bm!531941 m!7104538))

(assert (=> d!1971363 d!1972239))

(declare-fun d!1972241 () Bool)

(declare-fun res!2591390 () Bool)

(declare-fun e!3821162 () Bool)

(assert (=> d!1972241 (=> res!2591390 e!3821162)))

(assert (=> d!1972241 (= res!2591390 ((_ is Nil!64784) lt!2354639))))

(assert (=> d!1972241 (= (forall!15344 lt!2354639 lambda!344602) e!3821162)))

(declare-fun b!6283565 () Bool)

(declare-fun e!3821163 () Bool)

(assert (=> b!6283565 (= e!3821162 e!3821163)))

(declare-fun res!2591391 () Bool)

(assert (=> b!6283565 (=> (not res!2591391) (not e!3821163))))

(assert (=> b!6283565 (= res!2591391 (dynLambda!25634 lambda!344602 (h!71232 lt!2354639)))))

(declare-fun b!6283566 () Bool)

(assert (=> b!6283566 (= e!3821163 (forall!15344 (t!378468 lt!2354639) lambda!344602))))

(assert (= (and d!1972241 (not res!2591390)) b!6283565))

(assert (= (and b!6283565 res!2591391) b!6283566))

(declare-fun b_lambda!239203 () Bool)

(assert (=> (not b_lambda!239203) (not b!6283565)))

(declare-fun m!7104540 () Bool)

(assert (=> b!6283565 m!7104540))

(declare-fun m!7104542 () Bool)

(assert (=> b!6283566 m!7104542))

(assert (=> d!1971363 d!1972241))

(declare-fun d!1972243 () Bool)

(assert (=> d!1972243 (= (nullable!6196 (h!71232 (exprs!6087 lt!2354638))) (nullableFct!2147 (h!71232 (exprs!6087 lt!2354638))))))

(declare-fun bs!1570410 () Bool)

(assert (= bs!1570410 d!1972243))

(declare-fun m!7104544 () Bool)

(assert (=> bs!1570410 m!7104544))

(assert (=> b!6281936 d!1972243))

(assert (=> b!6281562 d!1971405))

(declare-fun bs!1570411 () Bool)

(declare-fun d!1972245 () Bool)

(assert (= bs!1570411 (and d!1972245 d!1972033)))

(declare-fun lambda!344747 () Int)

(assert (=> bs!1570411 (= lambda!344747 lambda!344703)))

(declare-fun bs!1570412 () Bool)

(assert (= bs!1570412 (and d!1972245 b!6281684)))

(assert (=> bs!1570412 (not (= lambda!344747 lambda!344591))))

(declare-fun bs!1570413 () Bool)

(assert (= bs!1570413 (and d!1972245 d!1972165)))

(assert (=> bs!1570413 (not (= lambda!344747 lambda!344737))))

(declare-fun bs!1570414 () Bool)

(assert (= bs!1570414 (and d!1972245 d!1972097)))

(assert (=> bs!1570414 (= lambda!344747 lambda!344722)))

(declare-fun bs!1570415 () Bool)

(assert (= bs!1570415 (and d!1972245 d!1972233)))

(assert (=> bs!1570415 (= lambda!344747 lambda!344746)))

(declare-fun bs!1570416 () Bool)

(assert (= bs!1570416 (and d!1972245 b!6281681)))

(assert (=> bs!1570416 (not (= lambda!344747 lambda!344589))))

(declare-fun bs!1570417 () Bool)

(assert (= bs!1570417 (and d!1972245 d!1971997)))

(assert (=> bs!1570417 (= lambda!344747 lambda!344700)))

(declare-fun bs!1570418 () Bool)

(assert (= bs!1570418 (and d!1972245 b!6281686)))

(assert (=> bs!1570418 (not (= lambda!344747 lambda!344592))))

(declare-fun bs!1570419 () Bool)

(assert (= bs!1570419 (and d!1972245 b!6283418)))

(assert (=> bs!1570419 (not (= lambda!344747 lambda!344734))))

(declare-fun bs!1570420 () Bool)

(assert (= bs!1570420 (and d!1972245 b!6283416)))

(assert (=> bs!1570420 (not (= lambda!344747 lambda!344733))))

(declare-fun bs!1570421 () Bool)

(assert (= bs!1570421 (and d!1972245 b!6281679)))

(assert (=> bs!1570421 (not (= lambda!344747 lambda!344588))))

(declare-fun bs!1570422 () Bool)

(assert (= bs!1570422 (and d!1972245 d!1972071)))

(assert (=> bs!1570422 (= lambda!344747 lambda!344716)))

(declare-fun bs!1570423 () Bool)

(assert (= bs!1570423 (and d!1972245 d!1972169)))

(assert (=> bs!1570423 (= lambda!344747 lambda!344738)))

(assert (=> d!1972245 (= (nullableZipper!1973 lt!2354666) (exists!2527 lt!2354666 lambda!344747))))

(declare-fun bs!1570424 () Bool)

(assert (= bs!1570424 d!1972245))

(declare-fun m!7104546 () Bool)

(assert (=> bs!1570424 m!7104546))

(assert (=> b!6281833 d!1972245))

(declare-fun d!1972247 () Bool)

(declare-fun c!1139754 () Bool)

(assert (=> d!1972247 (= c!1139754 (isEmpty!36834 (t!378469 s!2326)))))

(declare-fun e!3821164 () Bool)

(assert (=> d!1972247 (= (matchZipper!2215 ((_ map or) lt!2354658 lt!2354664) (t!378469 s!2326)) e!3821164)))

(declare-fun b!6283567 () Bool)

(assert (=> b!6283567 (= e!3821164 (nullableZipper!1973 ((_ map or) lt!2354658 lt!2354664)))))

(declare-fun b!6283568 () Bool)

(assert (=> b!6283568 (= e!3821164 (matchZipper!2215 (derivationStepZipper!2169 ((_ map or) lt!2354658 lt!2354664) (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))))))

(assert (= (and d!1972247 c!1139754) b!6283567))

(assert (= (and d!1972247 (not c!1139754)) b!6283568))

(assert (=> d!1972247 m!7102532))

(declare-fun m!7104548 () Bool)

(assert (=> b!6283567 m!7104548))

(assert (=> b!6283568 m!7102536))

(assert (=> b!6283568 m!7102536))

(declare-fun m!7104550 () Bool)

(assert (=> b!6283568 m!7104550))

(assert (=> b!6283568 m!7102540))

(assert (=> b!6283568 m!7104550))

(assert (=> b!6283568 m!7102540))

(declare-fun m!7104552 () Bool)

(assert (=> b!6283568 m!7104552))

(assert (=> d!1971311 d!1972247))

(assert (=> d!1971311 d!1971319))

(declare-fun e!3821165 () Bool)

(declare-fun d!1972249 () Bool)

(assert (=> d!1972249 (= (matchZipper!2215 ((_ map or) lt!2354658 lt!2354664) (t!378469 s!2326)) e!3821165)))

(declare-fun res!2591392 () Bool)

(assert (=> d!1972249 (=> res!2591392 e!3821165)))

(assert (=> d!1972249 (= res!2591392 (matchZipper!2215 lt!2354658 (t!378469 s!2326)))))

(assert (=> d!1972249 true))

(declare-fun _$48!2043 () Unit!158143)

(assert (=> d!1972249 (= (choose!46648 lt!2354658 lt!2354664 (t!378469 s!2326)) _$48!2043)))

(declare-fun b!6283569 () Bool)

(assert (=> b!6283569 (= e!3821165 (matchZipper!2215 lt!2354664 (t!378469 s!2326)))))

(assert (= (and d!1972249 (not res!2591392)) b!6283569))

(assert (=> d!1972249 m!7102562))

(assert (=> d!1972249 m!7101882))

(assert (=> b!6283569 m!7102024))

(assert (=> d!1971311 d!1972249))

(declare-fun d!1972251 () Bool)

(declare-fun res!2591393 () Bool)

(declare-fun e!3821166 () Bool)

(assert (=> d!1972251 (=> res!2591393 e!3821166)))

(assert (=> d!1972251 (= res!2591393 ((_ is Nil!64786) (t!378470 lt!2354647)))))

(assert (=> d!1972251 (= (forall!15343 (t!378470 lt!2354647) lambda!344588) e!3821166)))

(declare-fun b!6283570 () Bool)

(declare-fun e!3821167 () Bool)

(assert (=> b!6283570 (= e!3821166 e!3821167)))

(declare-fun res!2591394 () Bool)

(assert (=> b!6283570 (=> (not res!2591394) (not e!3821167))))

(assert (=> b!6283570 (= res!2591394 (dynLambda!25637 lambda!344588 (h!71234 (t!378470 lt!2354647))))))

(declare-fun b!6283571 () Bool)

(assert (=> b!6283571 (= e!3821167 (forall!15343 (t!378470 (t!378470 lt!2354647)) lambda!344588))))

(assert (= (and d!1972251 (not res!2591393)) b!6283570))

(assert (= (and b!6283570 res!2591394) b!6283571))

(declare-fun b_lambda!239205 () Bool)

(assert (=> (not b_lambda!239205) (not b!6283570)))

(declare-fun m!7104554 () Bool)

(assert (=> b!6283570 m!7104554))

(declare-fun m!7104556 () Bool)

(assert (=> b!6283571 m!7104556))

(assert (=> b!6281679 d!1972251))

(declare-fun d!1972253 () Bool)

(assert (=> d!1972253 (= (maxBigInt!0 (contextDepth!220 (h!71234 lt!2354647)) (zipperDepth!328 (t!378470 lt!2354647))) (ite (>= (contextDepth!220 (h!71234 lt!2354647)) (zipperDepth!328 (t!378470 lt!2354647))) (contextDepth!220 (h!71234 lt!2354647)) (zipperDepth!328 (t!378470 lt!2354647))))))

(assert (=> b!6281679 d!1972253))

(declare-fun bs!1570425 () Bool)

(declare-fun b!6283572 () Bool)

(assert (= bs!1570425 (and b!6283572 d!1971363)))

(declare-fun lambda!344748 () Int)

(assert (=> bs!1570425 (not (= lambda!344748 lambda!344602))))

(declare-fun bs!1570426 () Bool)

(assert (= bs!1570426 (and b!6283572 d!1971341)))

(assert (=> bs!1570426 (not (= lambda!344748 lambda!344595))))

(declare-fun bs!1570427 () Bool)

(assert (= bs!1570427 (and b!6283572 d!1971351)))

(assert (=> bs!1570427 (not (= lambda!344748 lambda!344601))))

(declare-fun bs!1570428 () Bool)

(assert (= bs!1570428 (and b!6283572 d!1972185)))

(assert (=> bs!1570428 (not (= lambda!344748 lambda!344742))))

(declare-fun bs!1570429 () Bool)

(assert (= bs!1570429 (and b!6283572 d!1972229)))

(assert (=> bs!1570429 (not (= lambda!344748 lambda!344745))))

(declare-fun bs!1570430 () Bool)

(assert (= bs!1570430 (and b!6283572 d!1972059)))

(assert (=> bs!1570430 (not (= lambda!344748 lambda!344712))))

(declare-fun bs!1570431 () Bool)

(assert (= bs!1570431 (and b!6283572 b!6283411)))

(declare-fun lt!2354977 () Int)

(assert (=> bs!1570431 (= (= lt!2354977 lt!2354962) (= lambda!344748 lambda!344730))))

(declare-fun bs!1570432 () Bool)

(assert (= bs!1570432 (and b!6283572 d!1971431)))

(assert (=> bs!1570432 (not (= lambda!344748 lambda!344616))))

(declare-fun bs!1570433 () Bool)

(assert (= bs!1570433 (and b!6283572 d!1972113)))

(assert (=> bs!1570433 (not (= lambda!344748 lambda!344723))))

(declare-fun bs!1570434 () Bool)

(assert (= bs!1570434 (and b!6283572 d!1971415)))

(assert (=> bs!1570434 (not (= lambda!344748 lambda!344612))))

(declare-fun bs!1570435 () Bool)

(assert (= bs!1570435 (and b!6283572 d!1972157)))

(assert (=> bs!1570435 (not (= lambda!344748 lambda!344725))))

(declare-fun bs!1570436 () Bool)

(assert (= bs!1570436 (and b!6283572 d!1971343)))

(assert (=> bs!1570436 (not (= lambda!344748 lambda!344598))))

(declare-fun bs!1570437 () Bool)

(assert (= bs!1570437 (and b!6283572 d!1972061)))

(assert (=> bs!1570437 (not (= lambda!344748 lambda!344713))))

(declare-fun bs!1570438 () Bool)

(assert (= bs!1570438 (and b!6283572 d!1971367)))

(assert (=> bs!1570438 (not (= lambda!344748 lambda!344604))))

(declare-fun bs!1570439 () Bool)

(assert (= bs!1570439 (and b!6283572 b!6283413)))

(assert (=> bs!1570439 (= (= lt!2354977 lt!2354961) (= lambda!344748 lambda!344731))))

(declare-fun bs!1570440 () Bool)

(assert (= bs!1570440 (and b!6283572 d!1971433)))

(assert (=> bs!1570440 (not (= lambda!344748 lambda!344619))))

(assert (=> b!6283572 true))

(declare-fun bs!1570441 () Bool)

(declare-fun b!6283574 () Bool)

(assert (= bs!1570441 (and b!6283574 b!6283572)))

(declare-fun lt!2354976 () Int)

(declare-fun lambda!344749 () Int)

(assert (=> bs!1570441 (= (= lt!2354976 lt!2354977) (= lambda!344749 lambda!344748))))

(declare-fun bs!1570442 () Bool)

(assert (= bs!1570442 (and b!6283574 d!1971363)))

(assert (=> bs!1570442 (not (= lambda!344749 lambda!344602))))

(declare-fun bs!1570443 () Bool)

(assert (= bs!1570443 (and b!6283574 d!1971341)))

(assert (=> bs!1570443 (not (= lambda!344749 lambda!344595))))

(declare-fun bs!1570444 () Bool)

(assert (= bs!1570444 (and b!6283574 d!1971351)))

(assert (=> bs!1570444 (not (= lambda!344749 lambda!344601))))

(declare-fun bs!1570445 () Bool)

(assert (= bs!1570445 (and b!6283574 d!1972185)))

(assert (=> bs!1570445 (not (= lambda!344749 lambda!344742))))

(declare-fun bs!1570446 () Bool)

(assert (= bs!1570446 (and b!6283574 d!1972229)))

(assert (=> bs!1570446 (not (= lambda!344749 lambda!344745))))

(declare-fun bs!1570447 () Bool)

(assert (= bs!1570447 (and b!6283574 d!1972059)))

(assert (=> bs!1570447 (not (= lambda!344749 lambda!344712))))

(declare-fun bs!1570448 () Bool)

(assert (= bs!1570448 (and b!6283574 b!6283411)))

(assert (=> bs!1570448 (= (= lt!2354976 lt!2354962) (= lambda!344749 lambda!344730))))

(declare-fun bs!1570449 () Bool)

(assert (= bs!1570449 (and b!6283574 d!1971431)))

(assert (=> bs!1570449 (not (= lambda!344749 lambda!344616))))

(declare-fun bs!1570450 () Bool)

(assert (= bs!1570450 (and b!6283574 d!1972113)))

(assert (=> bs!1570450 (not (= lambda!344749 lambda!344723))))

(declare-fun bs!1570451 () Bool)

(assert (= bs!1570451 (and b!6283574 d!1971415)))

(assert (=> bs!1570451 (not (= lambda!344749 lambda!344612))))

(declare-fun bs!1570452 () Bool)

(assert (= bs!1570452 (and b!6283574 d!1972157)))

(assert (=> bs!1570452 (not (= lambda!344749 lambda!344725))))

(declare-fun bs!1570453 () Bool)

(assert (= bs!1570453 (and b!6283574 d!1971343)))

(assert (=> bs!1570453 (not (= lambda!344749 lambda!344598))))

(declare-fun bs!1570454 () Bool)

(assert (= bs!1570454 (and b!6283574 d!1972061)))

(assert (=> bs!1570454 (not (= lambda!344749 lambda!344713))))

(declare-fun bs!1570455 () Bool)

(assert (= bs!1570455 (and b!6283574 d!1971367)))

(assert (=> bs!1570455 (not (= lambda!344749 lambda!344604))))

(declare-fun bs!1570456 () Bool)

(assert (= bs!1570456 (and b!6283574 b!6283413)))

(assert (=> bs!1570456 (= (= lt!2354976 lt!2354961) (= lambda!344749 lambda!344731))))

(declare-fun bs!1570457 () Bool)

(assert (= bs!1570457 (and b!6283574 d!1971433)))

(assert (=> bs!1570457 (not (= lambda!344749 lambda!344619))))

(assert (=> b!6283574 true))

(declare-fun d!1972255 () Bool)

(declare-fun e!3821169 () Bool)

(assert (=> d!1972255 e!3821169))

(declare-fun res!2591395 () Bool)

(assert (=> d!1972255 (=> (not res!2591395) (not e!3821169))))

(assert (=> d!1972255 (= res!2591395 (>= lt!2354976 0))))

(declare-fun e!3821168 () Int)

(assert (=> d!1972255 (= lt!2354976 e!3821168)))

(declare-fun c!1139755 () Bool)

(assert (=> d!1972255 (= c!1139755 ((_ is Cons!64784) (exprs!6087 (h!71234 lt!2354647))))))

(assert (=> d!1972255 (= (contextDepth!220 (h!71234 lt!2354647)) lt!2354976)))

(assert (=> b!6283572 (= e!3821168 lt!2354977)))

(assert (=> b!6283572 (= lt!2354977 (maxBigInt!0 (regexDepth!314 (h!71232 (exprs!6087 (h!71234 lt!2354647)))) (contextDepth!220 (Context!11175 (t!378468 (exprs!6087 (h!71234 lt!2354647)))))))))

(declare-fun lt!2354979 () Unit!158143)

(assert (=> b!6283572 (= lt!2354979 (lemmaForallRegexDepthBiggerThanTransitive!104 (t!378468 (exprs!6087 (h!71234 lt!2354647))) lt!2354977 (contextDepth!220 (Context!11175 (t!378468 (exprs!6087 (h!71234 lt!2354647)))))))))

(assert (=> b!6283572 (forall!15344 (t!378468 (exprs!6087 (h!71234 lt!2354647))) lambda!344748)))

(declare-fun lt!2354978 () Unit!158143)

(assert (=> b!6283572 (= lt!2354978 lt!2354979)))

(declare-fun b!6283573 () Bool)

(assert (=> b!6283573 (= e!3821168 0)))

(assert (=> b!6283574 (= e!3821169 (forall!15344 (exprs!6087 (h!71234 lt!2354647)) lambda!344749))))

(assert (= (and d!1972255 c!1139755) b!6283572))

(assert (= (and d!1972255 (not c!1139755)) b!6283573))

(assert (= (and d!1972255 res!2591395) b!6283574))

(declare-fun m!7104558 () Bool)

(assert (=> b!6283572 m!7104558))

(declare-fun m!7104560 () Bool)

(assert (=> b!6283572 m!7104560))

(declare-fun m!7104562 () Bool)

(assert (=> b!6283572 m!7104562))

(assert (=> b!6283572 m!7104558))

(declare-fun m!7104564 () Bool)

(assert (=> b!6283572 m!7104564))

(declare-fun m!7104566 () Bool)

(assert (=> b!6283572 m!7104566))

(assert (=> b!6283572 m!7104562))

(assert (=> b!6283572 m!7104558))

(declare-fun m!7104568 () Bool)

(assert (=> b!6283574 m!7104568))

(assert (=> b!6281679 d!1972255))

(declare-fun bs!1570458 () Bool)

(declare-fun d!1972257 () Bool)

(assert (= bs!1570458 (and d!1972257 d!1972033)))

(declare-fun lambda!344750 () Int)

(assert (=> bs!1570458 (not (= lambda!344750 lambda!344703))))

(declare-fun bs!1570459 () Bool)

(assert (= bs!1570459 (and d!1972257 b!6281684)))

(assert (=> bs!1570459 (not (= lambda!344750 lambda!344591))))

(declare-fun bs!1570460 () Bool)

(assert (= bs!1570460 (and d!1972257 d!1972165)))

(assert (=> bs!1570460 (= (and (= lt!2354807 lt!2354811) (= lambda!344587 lambda!344590)) (= lambda!344750 lambda!344737))))

(declare-fun bs!1570461 () Bool)

(assert (= bs!1570461 (and d!1972257 d!1972245)))

(assert (=> bs!1570461 (not (= lambda!344750 lambda!344747))))

(declare-fun bs!1570462 () Bool)

(assert (= bs!1570462 (and d!1972257 d!1972097)))

(assert (=> bs!1570462 (not (= lambda!344750 lambda!344722))))

(declare-fun bs!1570463 () Bool)

(assert (= bs!1570463 (and d!1972257 d!1972233)))

(assert (=> bs!1570463 (not (= lambda!344750 lambda!344746))))

(declare-fun bs!1570464 () Bool)

(assert (= bs!1570464 (and d!1972257 b!6281681)))

(assert (=> bs!1570464 (not (= lambda!344750 lambda!344589))))

(declare-fun bs!1570465 () Bool)

(assert (= bs!1570465 (and d!1972257 d!1971997)))

(assert (=> bs!1570465 (not (= lambda!344750 lambda!344700))))

(declare-fun bs!1570466 () Bool)

(assert (= bs!1570466 (and d!1972257 b!6281686)))

(assert (=> bs!1570466 (not (= lambda!344750 lambda!344592))))

(declare-fun bs!1570467 () Bool)

(assert (= bs!1570467 (and d!1972257 b!6283418)))

(assert (=> bs!1570467 (not (= lambda!344750 lambda!344734))))

(declare-fun bs!1570468 () Bool)

(assert (= bs!1570468 (and d!1972257 b!6283416)))

(assert (=> bs!1570468 (not (= lambda!344750 lambda!344733))))

(declare-fun bs!1570469 () Bool)

(assert (= bs!1570469 (and d!1972257 b!6281679)))

(assert (=> bs!1570469 (not (= lambda!344750 lambda!344588))))

(declare-fun bs!1570470 () Bool)

(assert (= bs!1570470 (and d!1972257 d!1972071)))

(assert (=> bs!1570470 (not (= lambda!344750 lambda!344716))))

(declare-fun bs!1570471 () Bool)

(assert (= bs!1570471 (and d!1972257 d!1972169)))

(assert (=> bs!1570471 (not (= lambda!344750 lambda!344738))))

(assert (=> d!1972257 true))

(assert (=> d!1972257 true))

(assert (=> d!1972257 (< (dynLambda!25635 order!27473 lambda!344587) (dynLambda!25636 order!27475 lambda!344750))))

(assert (=> d!1972257 (forall!15343 (t!378470 lt!2354647) lambda!344750)))

(declare-fun lt!2354980 () Unit!158143)

(assert (=> d!1972257 (= lt!2354980 (choose!46655 (t!378470 lt!2354647) lt!2354807 (zipperDepth!328 (t!378470 lt!2354647)) lambda!344587))))

(assert (=> d!1972257 (>= lt!2354807 (zipperDepth!328 (t!378470 lt!2354647)))))

(assert (=> d!1972257 (= (lemmaForallContextDepthBiggerThanTransitive!204 (t!378470 lt!2354647) lt!2354807 (zipperDepth!328 (t!378470 lt!2354647)) lambda!344587) lt!2354980)))

(declare-fun bs!1570472 () Bool)

(assert (= bs!1570472 d!1972257))

(declare-fun m!7104570 () Bool)

(assert (=> bs!1570472 m!7104570))

(assert (=> bs!1570472 m!7102626))

(declare-fun m!7104572 () Bool)

(assert (=> bs!1570472 m!7104572))

(assert (=> b!6281679 d!1972257))

(declare-fun bs!1570473 () Bool)

(declare-fun b!6283575 () Bool)

(assert (= bs!1570473 (and b!6283575 b!6281679)))

(declare-fun lambda!344751 () Int)

(assert (=> bs!1570473 (= lambda!344751 lambda!344587)))

(declare-fun bs!1570474 () Bool)

(assert (= bs!1570474 (and b!6283575 b!6281684)))

(assert (=> bs!1570474 (= lambda!344751 lambda!344590)))

(declare-fun bs!1570475 () Bool)

(assert (= bs!1570475 (and b!6283575 b!6283416)))

(assert (=> bs!1570475 (= lambda!344751 lambda!344732)))

(declare-fun bs!1570476 () Bool)

(assert (= bs!1570476 (and b!6283575 d!1972033)))

(declare-fun lambda!344752 () Int)

(assert (=> bs!1570476 (not (= lambda!344752 lambda!344703))))

(declare-fun lt!2354983 () Int)

(assert (=> bs!1570474 (= (= lt!2354983 lt!2354811) (= lambda!344752 lambda!344591))))

(declare-fun bs!1570477 () Bool)

(assert (= bs!1570477 (and b!6283575 d!1972165)))

(assert (=> bs!1570477 (not (= lambda!344752 lambda!344737))))

(declare-fun bs!1570478 () Bool)

(assert (= bs!1570478 (and b!6283575 d!1972245)))

(assert (=> bs!1570478 (not (= lambda!344752 lambda!344747))))

(declare-fun bs!1570479 () Bool)

(assert (= bs!1570479 (and b!6283575 d!1972097)))

(assert (=> bs!1570479 (not (= lambda!344752 lambda!344722))))

(declare-fun bs!1570480 () Bool)

(assert (= bs!1570480 (and b!6283575 b!6281681)))

(assert (=> bs!1570480 (= (= lt!2354983 lt!2354808) (= lambda!344752 lambda!344589))))

(declare-fun bs!1570481 () Bool)

(assert (= bs!1570481 (and b!6283575 d!1971997)))

(assert (=> bs!1570481 (not (= lambda!344752 lambda!344700))))

(declare-fun bs!1570482 () Bool)

(assert (= bs!1570482 (and b!6283575 b!6281686)))

(assert (=> bs!1570482 (= (= lt!2354983 lt!2354812) (= lambda!344752 lambda!344592))))

(declare-fun bs!1570483 () Bool)

(assert (= bs!1570483 (and b!6283575 b!6283418)))

(assert (=> bs!1570483 (= (= lt!2354983 lt!2354968) (= lambda!344752 lambda!344734))))

(declare-fun bs!1570484 () Bool)

(assert (= bs!1570484 (and b!6283575 d!1972257)))

(assert (=> bs!1570484 (not (= lambda!344752 lambda!344750))))

(declare-fun bs!1570485 () Bool)

(assert (= bs!1570485 (and b!6283575 d!1972233)))

(assert (=> bs!1570485 (not (= lambda!344752 lambda!344746))))

(assert (=> bs!1570475 (= (= lt!2354983 lt!2354967) (= lambda!344752 lambda!344733))))

(assert (=> bs!1570473 (= (= lt!2354983 lt!2354807) (= lambda!344752 lambda!344588))))

(declare-fun bs!1570486 () Bool)

(assert (= bs!1570486 (and b!6283575 d!1972071)))

(assert (=> bs!1570486 (not (= lambda!344752 lambda!344716))))

(declare-fun bs!1570487 () Bool)

(assert (= bs!1570487 (and b!6283575 d!1972169)))

(assert (=> bs!1570487 (not (= lambda!344752 lambda!344738))))

(assert (=> b!6283575 true))

(declare-fun bs!1570488 () Bool)

(declare-fun b!6283577 () Bool)

(assert (= bs!1570488 (and b!6283577 d!1972033)))

(declare-fun lambda!344753 () Int)

(assert (=> bs!1570488 (not (= lambda!344753 lambda!344703))))

(declare-fun bs!1570489 () Bool)

(assert (= bs!1570489 (and b!6283577 b!6281684)))

(declare-fun lt!2354984 () Int)

(assert (=> bs!1570489 (= (= lt!2354984 lt!2354811) (= lambda!344753 lambda!344591))))

(declare-fun bs!1570490 () Bool)

(assert (= bs!1570490 (and b!6283577 d!1972165)))

(assert (=> bs!1570490 (not (= lambda!344753 lambda!344737))))

(declare-fun bs!1570491 () Bool)

(assert (= bs!1570491 (and b!6283577 d!1972245)))

(assert (=> bs!1570491 (not (= lambda!344753 lambda!344747))))

(declare-fun bs!1570492 () Bool)

(assert (= bs!1570492 (and b!6283577 d!1972097)))

(assert (=> bs!1570492 (not (= lambda!344753 lambda!344722))))

(declare-fun bs!1570493 () Bool)

(assert (= bs!1570493 (and b!6283577 b!6281681)))

(assert (=> bs!1570493 (= (= lt!2354984 lt!2354808) (= lambda!344753 lambda!344589))))

(declare-fun bs!1570494 () Bool)

(assert (= bs!1570494 (and b!6283577 b!6283575)))

(assert (=> bs!1570494 (= (= lt!2354984 lt!2354983) (= lambda!344753 lambda!344752))))

(declare-fun bs!1570495 () Bool)

(assert (= bs!1570495 (and b!6283577 d!1971997)))

(assert (=> bs!1570495 (not (= lambda!344753 lambda!344700))))

(declare-fun bs!1570496 () Bool)

(assert (= bs!1570496 (and b!6283577 b!6281686)))

(assert (=> bs!1570496 (= (= lt!2354984 lt!2354812) (= lambda!344753 lambda!344592))))

(declare-fun bs!1570497 () Bool)

(assert (= bs!1570497 (and b!6283577 b!6283418)))

(assert (=> bs!1570497 (= (= lt!2354984 lt!2354968) (= lambda!344753 lambda!344734))))

(declare-fun bs!1570498 () Bool)

(assert (= bs!1570498 (and b!6283577 d!1972257)))

(assert (=> bs!1570498 (not (= lambda!344753 lambda!344750))))

(declare-fun bs!1570499 () Bool)

(assert (= bs!1570499 (and b!6283577 d!1972233)))

(assert (=> bs!1570499 (not (= lambda!344753 lambda!344746))))

(declare-fun bs!1570500 () Bool)

(assert (= bs!1570500 (and b!6283577 b!6283416)))

(assert (=> bs!1570500 (= (= lt!2354984 lt!2354967) (= lambda!344753 lambda!344733))))

(declare-fun bs!1570501 () Bool)

(assert (= bs!1570501 (and b!6283577 b!6281679)))

(assert (=> bs!1570501 (= (= lt!2354984 lt!2354807) (= lambda!344753 lambda!344588))))

(declare-fun bs!1570502 () Bool)

(assert (= bs!1570502 (and b!6283577 d!1972071)))

(assert (=> bs!1570502 (not (= lambda!344753 lambda!344716))))

(declare-fun bs!1570503 () Bool)

(assert (= bs!1570503 (and b!6283577 d!1972169)))

(assert (=> bs!1570503 (not (= lambda!344753 lambda!344738))))

(assert (=> b!6283577 true))

(declare-fun d!1972259 () Bool)

(declare-fun e!3821171 () Bool)

(assert (=> d!1972259 e!3821171))

(declare-fun res!2591396 () Bool)

(assert (=> d!1972259 (=> (not res!2591396) (not e!3821171))))

(assert (=> d!1972259 (= res!2591396 (>= lt!2354984 0))))

(declare-fun e!3821170 () Int)

(assert (=> d!1972259 (= lt!2354984 e!3821170)))

(declare-fun c!1139756 () Bool)

(assert (=> d!1972259 (= c!1139756 ((_ is Cons!64786) (t!378470 lt!2354647)))))

(assert (=> d!1972259 (= (zipperDepth!328 (t!378470 lt!2354647)) lt!2354984)))

(assert (=> b!6283575 (= e!3821170 lt!2354983)))

(assert (=> b!6283575 (= lt!2354983 (maxBigInt!0 (contextDepth!220 (h!71234 (t!378470 lt!2354647))) (zipperDepth!328 (t!378470 (t!378470 lt!2354647)))))))

(declare-fun lt!2354982 () Unit!158143)

(assert (=> b!6283575 (= lt!2354982 (lemmaForallContextDepthBiggerThanTransitive!204 (t!378470 (t!378470 lt!2354647)) lt!2354983 (zipperDepth!328 (t!378470 (t!378470 lt!2354647))) lambda!344751))))

(assert (=> b!6283575 (forall!15343 (t!378470 (t!378470 lt!2354647)) lambda!344752)))

(declare-fun lt!2354981 () Unit!158143)

(assert (=> b!6283575 (= lt!2354981 lt!2354982)))

(declare-fun b!6283576 () Bool)

(assert (=> b!6283576 (= e!3821170 0)))

(assert (=> b!6283577 (= e!3821171 (forall!15343 (t!378470 lt!2354647) lambda!344753))))

(assert (= (and d!1972259 c!1139756) b!6283575))

(assert (= (and d!1972259 (not c!1139756)) b!6283576))

(assert (= (and d!1972259 res!2591396) b!6283577))

(declare-fun m!7104574 () Bool)

(assert (=> b!6283575 m!7104574))

(declare-fun m!7104576 () Bool)

(assert (=> b!6283575 m!7104576))

(declare-fun m!7104578 () Bool)

(assert (=> b!6283575 m!7104578))

(assert (=> b!6283575 m!7104576))

(assert (=> b!6283575 m!7104574))

(declare-fun m!7104580 () Bool)

(assert (=> b!6283575 m!7104580))

(assert (=> b!6283575 m!7104574))

(declare-fun m!7104582 () Bool)

(assert (=> b!6283575 m!7104582))

(declare-fun m!7104584 () Bool)

(assert (=> b!6283577 m!7104584))

(assert (=> b!6281679 d!1972259))

(assert (=> d!1971411 d!1971413))

(assert (=> d!1971411 d!1971315))

(declare-fun e!3821172 () Bool)

(declare-fun d!1972261 () Bool)

(assert (=> d!1972261 (= (matchZipper!2215 ((_ map or) lt!2354662 lt!2354634) (t!378469 s!2326)) e!3821172)))

(declare-fun res!2591397 () Bool)

(assert (=> d!1972261 (=> res!2591397 e!3821172)))

(assert (=> d!1972261 (= res!2591397 (matchZipper!2215 lt!2354662 (t!378469 s!2326)))))

(assert (=> d!1972261 true))

(declare-fun _$48!2044 () Unit!158143)

(assert (=> d!1972261 (= (choose!46648 lt!2354662 lt!2354634 (t!378469 s!2326)) _$48!2044)))

(declare-fun b!6283578 () Bool)

(assert (=> b!6283578 (= e!3821172 (matchZipper!2215 lt!2354634 (t!378469 s!2326)))))

(assert (= (and d!1972261 (not res!2591397)) b!6283578))

(assert (=> d!1972261 m!7101876))

(assert (=> d!1972261 m!7101874))

(assert (=> b!6283578 m!7101892))

(assert (=> d!1971411 d!1972261))

(assert (=> b!6281660 d!1971939))

(declare-fun d!1972263 () Bool)

(assert (=> d!1972263 (= (isEmptyExpr!1609 lt!2354815) ((_ is EmptyExpr!16203) lt!2354815))))

(assert (=> b!6281715 d!1972263))

(declare-fun d!1972265 () Bool)

(assert (=> d!1972265 true))

(declare-fun setRes!42757 () Bool)

(assert (=> d!1972265 setRes!42757))

(declare-fun condSetEmpty!42757 () Bool)

(declare-fun res!2591398 () (InoxSet Context!11174))

(assert (=> d!1972265 (= condSetEmpty!42757 (= res!2591398 ((as const (Array Context!11174 Bool)) false)))))

(assert (=> d!1972265 (= (choose!46647 lt!2354675 lambda!344509) res!2591398)))

(declare-fun setIsEmpty!42757 () Bool)

(assert (=> setIsEmpty!42757 setRes!42757))

(declare-fun setElem!42757 () Context!11174)

(declare-fun setNonEmpty!42757 () Bool)

(declare-fun e!3821173 () Bool)

(declare-fun tp!1750763 () Bool)

(assert (=> setNonEmpty!42757 (= setRes!42757 (and tp!1750763 (inv!83754 setElem!42757) e!3821173))))

(declare-fun setRest!42757 () (InoxSet Context!11174))

(assert (=> setNonEmpty!42757 (= res!2591398 ((_ map or) (store ((as const (Array Context!11174 Bool)) false) setElem!42757 true) setRest!42757))))

(declare-fun b!6283579 () Bool)

(declare-fun tp!1750764 () Bool)

(assert (=> b!6283579 (= e!3821173 tp!1750764)))

(assert (= (and d!1972265 condSetEmpty!42757) setIsEmpty!42757))

(assert (= (and d!1972265 (not condSetEmpty!42757)) setNonEmpty!42757))

(assert (= setNonEmpty!42757 b!6283579))

(declare-fun m!7104586 () Bool)

(assert (=> setNonEmpty!42757 m!7104586))

(assert (=> d!1971423 d!1972265))

(declare-fun bm!531942 () Bool)

(declare-fun call!531948 () (InoxSet Context!11174))

(declare-fun call!531950 () (InoxSet Context!11174))

(assert (=> bm!531942 (= call!531948 call!531950)))

(declare-fun b!6283580 () Bool)

(declare-fun e!3821176 () Bool)

(assert (=> b!6283580 (= e!3821176 (nullable!6196 (regOne!32918 (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292)))))))))

(declare-fun b!6283581 () Bool)

(declare-fun e!3821174 () (InoxSet Context!11174))

(assert (=> b!6283581 (= e!3821174 call!531948)))

(declare-fun b!6283582 () Bool)

(declare-fun e!3821175 () (InoxSet Context!11174))

(assert (=> b!6283582 (= e!3821175 call!531948)))

(declare-fun b!6283583 () Bool)

(declare-fun c!1139761 () Bool)

(assert (=> b!6283583 (= c!1139761 ((_ is Star!16203) (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))))))

(assert (=> b!6283583 (= e!3821175 e!3821174)))

(declare-fun bm!531943 () Bool)

(declare-fun call!531951 () List!64908)

(declare-fun call!531949 () List!64908)

(assert (=> bm!531943 (= call!531951 call!531949)))

(declare-fun b!6283584 () Bool)

(declare-fun e!3821177 () (InoxSet Context!11174))

(declare-fun call!531947 () (InoxSet Context!11174))

(assert (=> b!6283584 (= e!3821177 ((_ map or) call!531947 call!531950))))

(declare-fun b!6283585 () Bool)

(declare-fun e!3821178 () (InoxSet Context!11174))

(declare-fun call!531952 () (InoxSet Context!11174))

(assert (=> b!6283585 (= e!3821178 ((_ map or) call!531947 call!531952))))

(declare-fun bm!531944 () Bool)

(declare-fun c!1139760 () Bool)

(declare-fun c!1139759 () Bool)

(assert (=> bm!531944 (= call!531949 ($colon$colon!2068 (exprs!6087 (ite c!1139279 lt!2354668 (Context!11175 call!531634))) (ite (or c!1139760 c!1139759) (regTwo!32918 (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))) (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292)))))))))

(declare-fun b!6283586 () Bool)

(assert (=> b!6283586 (= c!1139760 e!3821176)))

(declare-fun res!2591399 () Bool)

(assert (=> b!6283586 (=> (not res!2591399) (not e!3821176))))

(assert (=> b!6283586 (= res!2591399 ((_ is Concat!25048) (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))))))

(assert (=> b!6283586 (= e!3821178 e!3821177)))

(declare-fun b!6283587 () Bool)

(declare-fun e!3821179 () (InoxSet Context!11174))

(assert (=> b!6283587 (= e!3821179 e!3821178)))

(declare-fun c!1139758 () Bool)

(assert (=> b!6283587 (= c!1139758 ((_ is Union!16203) (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))))))

(declare-fun bm!531945 () Bool)

(assert (=> bm!531945 (= call!531952 (derivationStepZipperDown!1451 (ite c!1139758 (regTwo!32919 (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))) (ite c!1139760 (regTwo!32918 (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))) (ite c!1139759 (regOne!32918 (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))) (reg!16532 (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292)))))))) (ite (or c!1139758 c!1139760) (ite c!1139279 lt!2354668 (Context!11175 call!531634)) (Context!11175 call!531951)) (h!71233 s!2326)))))

(declare-fun bm!531946 () Bool)

(assert (=> bm!531946 (= call!531947 (derivationStepZipperDown!1451 (ite c!1139758 (regOne!32919 (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))) (regOne!32918 (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292)))))) (ite c!1139758 (ite c!1139279 lt!2354668 (Context!11175 call!531634)) (Context!11175 call!531949)) (h!71233 s!2326)))))

(declare-fun d!1972267 () Bool)

(declare-fun c!1139757 () Bool)

(assert (=> d!1972267 (= c!1139757 (and ((_ is ElementMatch!16203) (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))) (= (c!1138982 (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))) (h!71233 s!2326))))))

(assert (=> d!1972267 (= (derivationStepZipperDown!1451 (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292)))) (ite c!1139279 lt!2354668 (Context!11175 call!531634)) (h!71233 s!2326)) e!3821179)))

(declare-fun b!6283588 () Bool)

(assert (=> b!6283588 (= e!3821177 e!3821175)))

(assert (=> b!6283588 (= c!1139759 ((_ is Concat!25048) (ite c!1139279 (regOne!32919 (regTwo!32918 (regOne!32918 r!7292))) (regOne!32918 (regTwo!32918 (regOne!32918 r!7292))))))))

(declare-fun b!6283589 () Bool)

(assert (=> b!6283589 (= e!3821174 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531947 () Bool)

(assert (=> bm!531947 (= call!531950 call!531952)))

(declare-fun b!6283590 () Bool)

(assert (=> b!6283590 (= e!3821179 (store ((as const (Array Context!11174 Bool)) false) (ite c!1139279 lt!2354668 (Context!11175 call!531634)) true))))

(assert (= (and d!1972267 c!1139757) b!6283590))

(assert (= (and d!1972267 (not c!1139757)) b!6283587))

(assert (= (and b!6283587 c!1139758) b!6283585))

(assert (= (and b!6283587 (not c!1139758)) b!6283586))

(assert (= (and b!6283586 res!2591399) b!6283580))

(assert (= (and b!6283586 c!1139760) b!6283584))

(assert (= (and b!6283586 (not c!1139760)) b!6283588))

(assert (= (and b!6283588 c!1139759) b!6283582))

(assert (= (and b!6283588 (not c!1139759)) b!6283583))

(assert (= (and b!6283583 c!1139761) b!6283581))

(assert (= (and b!6283583 (not c!1139761)) b!6283589))

(assert (= (or b!6283582 b!6283581) bm!531943))

(assert (= (or b!6283582 b!6283581) bm!531942))

(assert (= (or b!6283584 bm!531943) bm!531944))

(assert (= (or b!6283584 bm!531942) bm!531947))

(assert (= (or b!6283585 bm!531947) bm!531945))

(assert (= (or b!6283585 b!6283584) bm!531946))

(declare-fun m!7104588 () Bool)

(assert (=> b!6283580 m!7104588))

(declare-fun m!7104590 () Bool)

(assert (=> bm!531946 m!7104590))

(declare-fun m!7104592 () Bool)

(assert (=> b!6283590 m!7104592))

(declare-fun m!7104594 () Bool)

(assert (=> bm!531945 m!7104594))

(declare-fun m!7104596 () Bool)

(assert (=> bm!531944 m!7104596))

(assert (=> bm!531631 d!1972267))

(declare-fun bm!531948 () Bool)

(declare-fun call!531954 () Bool)

(declare-fun call!531955 () Bool)

(assert (=> bm!531948 (= call!531954 call!531955)))

(declare-fun b!6283591 () Bool)

(declare-fun res!2591403 () Bool)

(declare-fun e!3821182 () Bool)

(assert (=> b!6283591 (=> res!2591403 e!3821182)))

(assert (=> b!6283591 (= res!2591403 (not ((_ is Concat!25048) (ite c!1139228 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139227 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))))))))))

(declare-fun e!3821186 () Bool)

(assert (=> b!6283591 (= e!3821186 e!3821182)))

(declare-fun b!6283592 () Bool)

(declare-fun res!2591400 () Bool)

(declare-fun e!3821181 () Bool)

(assert (=> b!6283592 (=> (not res!2591400) (not e!3821181))))

(declare-fun call!531953 () Bool)

(assert (=> b!6283592 (= res!2591400 call!531953)))

(assert (=> b!6283592 (= e!3821186 e!3821181)))

(declare-fun b!6283593 () Bool)

(declare-fun e!3821183 () Bool)

(assert (=> b!6283593 (= e!3821183 call!531955)))

(declare-fun b!6283594 () Bool)

(assert (=> b!6283594 (= e!3821181 call!531954)))

(declare-fun b!6283595 () Bool)

(declare-fun e!3821184 () Bool)

(declare-fun e!3821185 () Bool)

(assert (=> b!6283595 (= e!3821184 e!3821185)))

(declare-fun c!1139763 () Bool)

(assert (=> b!6283595 (= c!1139763 ((_ is Star!16203) (ite c!1139228 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139227 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292)))))))))

(declare-fun b!6283596 () Bool)

(assert (=> b!6283596 (= e!3821185 e!3821186)))

(declare-fun c!1139762 () Bool)

(assert (=> b!6283596 (= c!1139762 ((_ is Union!16203) (ite c!1139228 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139227 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292)))))))))

(declare-fun bm!531949 () Bool)

(assert (=> bm!531949 (= call!531953 (validRegex!7939 (ite c!1139762 (regOne!32919 (ite c!1139228 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139227 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292)))))) (regOne!32918 (ite c!1139228 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139227 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292)))))))))))

(declare-fun b!6283598 () Bool)

(assert (=> b!6283598 (= e!3821185 e!3821183)))

(declare-fun res!2591401 () Bool)

(assert (=> b!6283598 (= res!2591401 (not (nullable!6196 (reg!16532 (ite c!1139228 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139227 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292)))))))))))

(assert (=> b!6283598 (=> (not res!2591401) (not e!3821183))))

(declare-fun b!6283597 () Bool)

(declare-fun e!3821180 () Bool)

(assert (=> b!6283597 (= e!3821180 call!531954)))

(declare-fun d!1972269 () Bool)

(declare-fun res!2591404 () Bool)

(assert (=> d!1972269 (=> res!2591404 e!3821184)))

(assert (=> d!1972269 (= res!2591404 ((_ is ElementMatch!16203) (ite c!1139228 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139227 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292)))))))))

(assert (=> d!1972269 (= (validRegex!7939 (ite c!1139228 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139227 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292)))))) e!3821184)))

(declare-fun bm!531950 () Bool)

(assert (=> bm!531950 (= call!531955 (validRegex!7939 (ite c!1139763 (reg!16532 (ite c!1139228 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139227 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292)))))) (ite c!1139762 (regTwo!32919 (ite c!1139228 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139227 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292)))))) (regTwo!32918 (ite c!1139228 (reg!16532 (regTwo!32918 (regOne!32918 r!7292))) (ite c!1139227 (regTwo!32919 (regTwo!32918 (regOne!32918 r!7292))) (regTwo!32918 (regTwo!32918 (regOne!32918 r!7292))))))))))))

(declare-fun b!6283599 () Bool)

(assert (=> b!6283599 (= e!3821182 e!3821180)))

(declare-fun res!2591402 () Bool)

(assert (=> b!6283599 (=> (not res!2591402) (not e!3821180))))

(assert (=> b!6283599 (= res!2591402 call!531953)))

(assert (= (and d!1972269 (not res!2591404)) b!6283595))

(assert (= (and b!6283595 c!1139763) b!6283598))

(assert (= (and b!6283595 (not c!1139763)) b!6283596))

(assert (= (and b!6283598 res!2591401) b!6283593))

(assert (= (and b!6283596 c!1139762) b!6283592))

(assert (= (and b!6283596 (not c!1139762)) b!6283591))

(assert (= (and b!6283592 res!2591400) b!6283594))

(assert (= (and b!6283591 (not res!2591403)) b!6283599))

(assert (= (and b!6283599 res!2591402) b!6283597))

(assert (= (or b!6283594 b!6283597) bm!531948))

(assert (= (or b!6283592 b!6283599) bm!531949))

(assert (= (or b!6283593 bm!531948) bm!531950))

(declare-fun m!7104598 () Bool)

(assert (=> bm!531949 m!7104598))

(declare-fun m!7104600 () Bool)

(assert (=> b!6283598 m!7104600))

(declare-fun m!7104602 () Bool)

(assert (=> bm!531950 m!7104602))

(assert (=> bm!531599 d!1972269))

(declare-fun d!1972271 () Bool)

(declare-fun c!1139764 () Bool)

(assert (=> d!1972271 (= c!1139764 (isEmpty!36834 (tail!11991 (t!378469 s!2326))))))

(declare-fun e!3821187 () Bool)

(assert (=> d!1972271 (= (matchZipper!2215 (derivationStepZipper!2169 lt!2354664 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))) e!3821187)))

(declare-fun b!6283600 () Bool)

(assert (=> b!6283600 (= e!3821187 (nullableZipper!1973 (derivationStepZipper!2169 lt!2354664 (head!12906 (t!378469 s!2326)))))))

(declare-fun b!6283601 () Bool)

(assert (=> b!6283601 (= e!3821187 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354664 (head!12906 (t!378469 s!2326))) (head!12906 (tail!11991 (t!378469 s!2326)))) (tail!11991 (tail!11991 (t!378469 s!2326)))))))

(assert (= (and d!1972271 c!1139764) b!6283600))

(assert (= (and d!1972271 (not c!1139764)) b!6283601))

(assert (=> d!1972271 m!7102540))

(assert (=> d!1972271 m!7103958))

(assert (=> b!6283600 m!7102862))

(declare-fun m!7104604 () Bool)

(assert (=> b!6283600 m!7104604))

(assert (=> b!6283601 m!7102540))

(assert (=> b!6283601 m!7103962))

(assert (=> b!6283601 m!7102862))

(assert (=> b!6283601 m!7103962))

(declare-fun m!7104606 () Bool)

(assert (=> b!6283601 m!7104606))

(assert (=> b!6283601 m!7102540))

(assert (=> b!6283601 m!7103966))

(assert (=> b!6283601 m!7104606))

(assert (=> b!6283601 m!7103966))

(declare-fun m!7104608 () Bool)

(assert (=> b!6283601 m!7104608))

(assert (=> b!6281903 d!1972271))

(declare-fun bs!1570504 () Bool)

(declare-fun d!1972273 () Bool)

(assert (= bs!1570504 (and d!1972273 d!1971429)))

(declare-fun lambda!344754 () Int)

(assert (=> bs!1570504 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344754 lambda!344613))))

(declare-fun bs!1570505 () Bool)

(assert (= bs!1570505 (and d!1972273 b!6280977)))

(assert (=> bs!1570505 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344754 lambda!344509))))

(declare-fun bs!1570506 () Bool)

(assert (= bs!1570506 (and d!1972273 d!1972141)))

(assert (=> bs!1570506 (= lambda!344754 lambda!344724)))

(declare-fun bs!1570507 () Bool)

(assert (= bs!1570507 (and d!1972273 d!1971409)))

(assert (=> bs!1570507 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344754 lambda!344611))))

(declare-fun bs!1570508 () Bool)

(assert (= bs!1570508 (and d!1972273 d!1972021)))

(assert (=> bs!1570508 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344754 lambda!344702))))

(declare-fun bs!1570509 () Bool)

(assert (= bs!1570509 (and d!1972273 d!1972011)))

(assert (=> bs!1570509 (= lambda!344754 lambda!344701)))

(declare-fun bs!1570510 () Bool)

(assert (= bs!1570510 (and d!1972273 d!1972217)))

(assert (=> bs!1570510 (= lambda!344754 lambda!344744)))

(declare-fun bs!1570511 () Bool)

(assert (= bs!1570511 (and d!1972273 d!1972179)))

(assert (=> bs!1570511 (= lambda!344754 lambda!344739)))

(declare-fun bs!1570512 () Bool)

(assert (= bs!1570512 (and d!1972273 d!1972199)))

(assert (=> bs!1570512 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344754 lambda!344743))))

(declare-fun bs!1570513 () Bool)

(assert (= bs!1570513 (and d!1972273 d!1971965)))

(assert (=> bs!1570513 (= lambda!344754 lambda!344697)))

(assert (=> d!1972273 true))

(assert (=> d!1972273 (= (derivationStepZipper!2169 lt!2354664 (head!12906 (t!378469 s!2326))) (flatMap!1708 lt!2354664 lambda!344754))))

(declare-fun bs!1570514 () Bool)

(assert (= bs!1570514 d!1972273))

(declare-fun m!7104610 () Bool)

(assert (=> bs!1570514 m!7104610))

(assert (=> b!6281903 d!1972273))

(assert (=> b!6281903 d!1971967))

(assert (=> b!6281903 d!1971969))

(declare-fun d!1972275 () Bool)

(assert (=> d!1972275 (= (isEmpty!36830 lt!2354672) ((_ is Nil!64784) lt!2354672))))

(assert (=> b!6281757 d!1972275))

(declare-fun bm!531951 () Bool)

(declare-fun call!531956 () (InoxSet Context!11174))

(assert (=> bm!531951 (= call!531956 (derivationStepZipperDown!1451 (h!71232 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354668))))) (Context!11175 (t!378468 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354668)))))) (h!71233 s!2326)))))

(declare-fun b!6283602 () Bool)

(declare-fun e!3821189 () (InoxSet Context!11174))

(assert (=> b!6283602 (= e!3821189 ((as const (Array Context!11174 Bool)) false))))

(declare-fun b!6283603 () Bool)

(declare-fun e!3821190 () (InoxSet Context!11174))

(assert (=> b!6283603 (= e!3821190 e!3821189)))

(declare-fun c!1139766 () Bool)

(assert (=> b!6283603 (= c!1139766 ((_ is Cons!64784) (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354668))))))))

(declare-fun b!6283604 () Bool)

(assert (=> b!6283604 (= e!3821190 ((_ map or) call!531956 (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354668)))))) (h!71233 s!2326))))))

(declare-fun d!1972277 () Bool)

(declare-fun c!1139765 () Bool)

(declare-fun e!3821188 () Bool)

(assert (=> d!1972277 (= c!1139765 e!3821188)))

(declare-fun res!2591405 () Bool)

(assert (=> d!1972277 (=> (not res!2591405) (not e!3821188))))

(assert (=> d!1972277 (= res!2591405 ((_ is Cons!64784) (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354668))))))))

(assert (=> d!1972277 (= (derivationStepZipperUp!1377 (Context!11175 (t!378468 (exprs!6087 lt!2354668))) (h!71233 s!2326)) e!3821190)))

(declare-fun b!6283605 () Bool)

(assert (=> b!6283605 (= e!3821188 (nullable!6196 (h!71232 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354668)))))))))

(declare-fun b!6283606 () Bool)

(assert (=> b!6283606 (= e!3821189 call!531956)))

(assert (= (and d!1972277 res!2591405) b!6283605))

(assert (= (and d!1972277 c!1139765) b!6283604))

(assert (= (and d!1972277 (not c!1139765)) b!6283603))

(assert (= (and b!6283603 c!1139766) b!6283606))

(assert (= (and b!6283603 (not c!1139766)) b!6283602))

(assert (= (or b!6283604 b!6283606) bm!531951))

(declare-fun m!7104612 () Bool)

(assert (=> bm!531951 m!7104612))

(declare-fun m!7104614 () Bool)

(assert (=> b!6283604 m!7104614))

(declare-fun m!7104616 () Bool)

(assert (=> b!6283605 m!7104616))

(assert (=> b!6281881 d!1972277))

(declare-fun bs!1570515 () Bool)

(declare-fun d!1972279 () Bool)

(assert (= bs!1570515 (and d!1972279 d!1972033)))

(declare-fun lambda!344755 () Int)

(assert (=> bs!1570515 (= lambda!344755 lambda!344703)))

(declare-fun bs!1570516 () Bool)

(assert (= bs!1570516 (and d!1972279 b!6281684)))

(assert (=> bs!1570516 (not (= lambda!344755 lambda!344591))))

(declare-fun bs!1570517 () Bool)

(assert (= bs!1570517 (and d!1972279 d!1972165)))

(assert (=> bs!1570517 (not (= lambda!344755 lambda!344737))))

(declare-fun bs!1570518 () Bool)

(assert (= bs!1570518 (and d!1972279 d!1972245)))

(assert (=> bs!1570518 (= lambda!344755 lambda!344747)))

(declare-fun bs!1570519 () Bool)

(assert (= bs!1570519 (and d!1972279 b!6281681)))

(assert (=> bs!1570519 (not (= lambda!344755 lambda!344589))))

(declare-fun bs!1570520 () Bool)

(assert (= bs!1570520 (and d!1972279 b!6283575)))

(assert (=> bs!1570520 (not (= lambda!344755 lambda!344752))))

(declare-fun bs!1570521 () Bool)

(assert (= bs!1570521 (and d!1972279 d!1971997)))

(assert (=> bs!1570521 (= lambda!344755 lambda!344700)))

(declare-fun bs!1570522 () Bool)

(assert (= bs!1570522 (and d!1972279 b!6281686)))

(assert (=> bs!1570522 (not (= lambda!344755 lambda!344592))))

(declare-fun bs!1570523 () Bool)

(assert (= bs!1570523 (and d!1972279 b!6283418)))

(assert (=> bs!1570523 (not (= lambda!344755 lambda!344734))))

(declare-fun bs!1570524 () Bool)

(assert (= bs!1570524 (and d!1972279 b!6283577)))

(assert (=> bs!1570524 (not (= lambda!344755 lambda!344753))))

(declare-fun bs!1570525 () Bool)

(assert (= bs!1570525 (and d!1972279 d!1972097)))

(assert (=> bs!1570525 (= lambda!344755 lambda!344722)))

(declare-fun bs!1570526 () Bool)

(assert (= bs!1570526 (and d!1972279 d!1972257)))

(assert (=> bs!1570526 (not (= lambda!344755 lambda!344750))))

(declare-fun bs!1570527 () Bool)

(assert (= bs!1570527 (and d!1972279 d!1972233)))

(assert (=> bs!1570527 (= lambda!344755 lambda!344746)))

(declare-fun bs!1570528 () Bool)

(assert (= bs!1570528 (and d!1972279 b!6283416)))

(assert (=> bs!1570528 (not (= lambda!344755 lambda!344733))))

(declare-fun bs!1570529 () Bool)

(assert (= bs!1570529 (and d!1972279 b!6281679)))

(assert (=> bs!1570529 (not (= lambda!344755 lambda!344588))))

(declare-fun bs!1570530 () Bool)

(assert (= bs!1570530 (and d!1972279 d!1972071)))

(assert (=> bs!1570530 (= lambda!344755 lambda!344716)))

(declare-fun bs!1570531 () Bool)

(assert (= bs!1570531 (and d!1972279 d!1972169)))

(assert (=> bs!1570531 (= lambda!344755 lambda!344738)))

(assert (=> d!1972279 (= (nullableZipper!1973 lt!2354646) (exists!2527 lt!2354646 lambda!344755))))

(declare-fun bs!1570532 () Bool)

(assert (= bs!1570532 d!1972279))

(declare-fun m!7104618 () Bool)

(assert (=> bs!1570532 m!7104618))

(assert (=> b!6281556 d!1972279))

(declare-fun bs!1570533 () Bool)

(declare-fun d!1972281 () Bool)

(assert (= bs!1570533 (and d!1972281 d!1972033)))

(declare-fun lambda!344756 () Int)

(assert (=> bs!1570533 (= lambda!344756 lambda!344703)))

(declare-fun bs!1570534 () Bool)

(assert (= bs!1570534 (and d!1972281 b!6281684)))

(assert (=> bs!1570534 (not (= lambda!344756 lambda!344591))))

(declare-fun bs!1570535 () Bool)

(assert (= bs!1570535 (and d!1972281 d!1972165)))

(assert (=> bs!1570535 (not (= lambda!344756 lambda!344737))))

(declare-fun bs!1570536 () Bool)

(assert (= bs!1570536 (and d!1972281 d!1972245)))

(assert (=> bs!1570536 (= lambda!344756 lambda!344747)))

(declare-fun bs!1570537 () Bool)

(assert (= bs!1570537 (and d!1972281 d!1972279)))

(assert (=> bs!1570537 (= lambda!344756 lambda!344755)))

(declare-fun bs!1570538 () Bool)

(assert (= bs!1570538 (and d!1972281 b!6281681)))

(assert (=> bs!1570538 (not (= lambda!344756 lambda!344589))))

(declare-fun bs!1570539 () Bool)

(assert (= bs!1570539 (and d!1972281 b!6283575)))

(assert (=> bs!1570539 (not (= lambda!344756 lambda!344752))))

(declare-fun bs!1570540 () Bool)

(assert (= bs!1570540 (and d!1972281 d!1971997)))

(assert (=> bs!1570540 (= lambda!344756 lambda!344700)))

(declare-fun bs!1570541 () Bool)

(assert (= bs!1570541 (and d!1972281 b!6281686)))

(assert (=> bs!1570541 (not (= lambda!344756 lambda!344592))))

(declare-fun bs!1570542 () Bool)

(assert (= bs!1570542 (and d!1972281 b!6283418)))

(assert (=> bs!1570542 (not (= lambda!344756 lambda!344734))))

(declare-fun bs!1570543 () Bool)

(assert (= bs!1570543 (and d!1972281 b!6283577)))

(assert (=> bs!1570543 (not (= lambda!344756 lambda!344753))))

(declare-fun bs!1570544 () Bool)

(assert (= bs!1570544 (and d!1972281 d!1972097)))

(assert (=> bs!1570544 (= lambda!344756 lambda!344722)))

(declare-fun bs!1570545 () Bool)

(assert (= bs!1570545 (and d!1972281 d!1972257)))

(assert (=> bs!1570545 (not (= lambda!344756 lambda!344750))))

(declare-fun bs!1570546 () Bool)

(assert (= bs!1570546 (and d!1972281 d!1972233)))

(assert (=> bs!1570546 (= lambda!344756 lambda!344746)))

(declare-fun bs!1570547 () Bool)

(assert (= bs!1570547 (and d!1972281 b!6283416)))

(assert (=> bs!1570547 (not (= lambda!344756 lambda!344733))))

(declare-fun bs!1570548 () Bool)

(assert (= bs!1570548 (and d!1972281 b!6281679)))

(assert (=> bs!1570548 (not (= lambda!344756 lambda!344588))))

(declare-fun bs!1570549 () Bool)

(assert (= bs!1570549 (and d!1972281 d!1972071)))

(assert (=> bs!1570549 (= lambda!344756 lambda!344716)))

(declare-fun bs!1570550 () Bool)

(assert (= bs!1570550 (and d!1972281 d!1972169)))

(assert (=> bs!1570550 (= lambda!344756 lambda!344738)))

(assert (=> d!1972281 (= (nullableZipper!1973 lt!2354675) (exists!2527 lt!2354675 lambda!344756))))

(declare-fun bs!1570551 () Bool)

(assert (= bs!1570551 d!1972281))

(declare-fun m!7104620 () Bool)

(assert (=> bs!1570551 m!7104620))

(assert (=> b!6281835 d!1972281))

(declare-fun d!1972283 () Bool)

(assert (=> d!1972283 true))

(assert (=> d!1972283 true))

(declare-fun res!2591406 () Bool)

(assert (=> d!1972283 (= (choose!46643 lambda!344511) res!2591406)))

(assert (=> d!1971361 d!1972283))

(assert (=> b!6281739 d!1972023))

(assert (=> b!6281739 d!1972005))

(declare-fun d!1972285 () Bool)

(assert (=> d!1972285 (= (isEmpty!36830 lt!2354639) ((_ is Nil!64784) lt!2354639))))

(assert (=> b!6281794 d!1972285))

(declare-fun d!1972287 () Bool)

(declare-fun c!1139767 () Bool)

(assert (=> d!1972287 (= c!1139767 (isEmpty!36834 (tail!11991 (t!378469 s!2326))))))

(declare-fun e!3821191 () Bool)

(assert (=> d!1972287 (= (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354666 (h!71233 s!2326)) (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))) e!3821191)))

(declare-fun b!6283607 () Bool)

(assert (=> b!6283607 (= e!3821191 (nullableZipper!1973 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354666 (h!71233 s!2326)) (head!12906 (t!378469 s!2326)))))))

(declare-fun b!6283608 () Bool)

(assert (=> b!6283608 (= e!3821191 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354666 (h!71233 s!2326)) (head!12906 (t!378469 s!2326))) (head!12906 (tail!11991 (t!378469 s!2326)))) (tail!11991 (tail!11991 (t!378469 s!2326)))))))

(assert (= (and d!1972287 c!1139767) b!6283607))

(assert (= (and d!1972287 (not c!1139767)) b!6283608))

(assert (=> d!1972287 m!7102540))

(assert (=> d!1972287 m!7103958))

(assert (=> b!6283607 m!7102868))

(declare-fun m!7104622 () Bool)

(assert (=> b!6283607 m!7104622))

(assert (=> b!6283608 m!7102540))

(assert (=> b!6283608 m!7103962))

(assert (=> b!6283608 m!7102868))

(assert (=> b!6283608 m!7103962))

(declare-fun m!7104624 () Bool)

(assert (=> b!6283608 m!7104624))

(assert (=> b!6283608 m!7102540))

(assert (=> b!6283608 m!7103966))

(assert (=> b!6283608 m!7104624))

(assert (=> b!6283608 m!7103966))

(declare-fun m!7104626 () Bool)

(assert (=> b!6283608 m!7104626))

(assert (=> b!6281905 d!1972287))

(declare-fun bs!1570552 () Bool)

(declare-fun d!1972289 () Bool)

(assert (= bs!1570552 (and d!1972289 d!1971429)))

(declare-fun lambda!344757 () Int)

(assert (=> bs!1570552 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344757 lambda!344613))))

(declare-fun bs!1570553 () Bool)

(assert (= bs!1570553 (and d!1972289 b!6280977)))

(assert (=> bs!1570553 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344757 lambda!344509))))

(declare-fun bs!1570554 () Bool)

(assert (= bs!1570554 (and d!1972289 d!1972141)))

(assert (=> bs!1570554 (= lambda!344757 lambda!344724)))

(declare-fun bs!1570555 () Bool)

(assert (= bs!1570555 (and d!1972289 d!1971409)))

(assert (=> bs!1570555 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344757 lambda!344611))))

(declare-fun bs!1570556 () Bool)

(assert (= bs!1570556 (and d!1972289 d!1972021)))

(assert (=> bs!1570556 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344757 lambda!344702))))

(declare-fun bs!1570557 () Bool)

(assert (= bs!1570557 (and d!1972289 d!1972273)))

(assert (=> bs!1570557 (= lambda!344757 lambda!344754)))

(declare-fun bs!1570558 () Bool)

(assert (= bs!1570558 (and d!1972289 d!1972011)))

(assert (=> bs!1570558 (= lambda!344757 lambda!344701)))

(declare-fun bs!1570559 () Bool)

(assert (= bs!1570559 (and d!1972289 d!1972217)))

(assert (=> bs!1570559 (= lambda!344757 lambda!344744)))

(declare-fun bs!1570560 () Bool)

(assert (= bs!1570560 (and d!1972289 d!1972179)))

(assert (=> bs!1570560 (= lambda!344757 lambda!344739)))

(declare-fun bs!1570561 () Bool)

(assert (= bs!1570561 (and d!1972289 d!1972199)))

(assert (=> bs!1570561 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344757 lambda!344743))))

(declare-fun bs!1570562 () Bool)

(assert (= bs!1570562 (and d!1972289 d!1971965)))

(assert (=> bs!1570562 (= lambda!344757 lambda!344697)))

(assert (=> d!1972289 true))

(assert (=> d!1972289 (= (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354666 (h!71233 s!2326)) (head!12906 (t!378469 s!2326))) (flatMap!1708 (derivationStepZipper!2169 lt!2354666 (h!71233 s!2326)) lambda!344757))))

(declare-fun bs!1570563 () Bool)

(assert (= bs!1570563 d!1972289))

(assert (=> bs!1570563 m!7101954))

(declare-fun m!7104628 () Bool)

(assert (=> bs!1570563 m!7104628))

(assert (=> b!6281905 d!1972289))

(assert (=> b!6281905 d!1971967))

(assert (=> b!6281905 d!1971969))

(declare-fun d!1972291 () Bool)

(declare-fun res!2591407 () Bool)

(declare-fun e!3821192 () Bool)

(assert (=> d!1972291 (=> res!2591407 e!3821192)))

(assert (=> d!1972291 (= res!2591407 ((_ is Nil!64786) zl!343))))

(assert (=> d!1972291 (= (forall!15343 zl!343 lambda!344592) e!3821192)))

(declare-fun b!6283609 () Bool)

(declare-fun e!3821193 () Bool)

(assert (=> b!6283609 (= e!3821192 e!3821193)))

(declare-fun res!2591408 () Bool)

(assert (=> b!6283609 (=> (not res!2591408) (not e!3821193))))

(assert (=> b!6283609 (= res!2591408 (dynLambda!25637 lambda!344592 (h!71234 zl!343)))))

(declare-fun b!6283610 () Bool)

(assert (=> b!6283610 (= e!3821193 (forall!15343 (t!378470 zl!343) lambda!344592))))

(assert (= (and d!1972291 (not res!2591407)) b!6283609))

(assert (= (and b!6283609 res!2591408) b!6283610))

(declare-fun b_lambda!239207 () Bool)

(assert (=> (not b_lambda!239207) (not b!6283609)))

(declare-fun m!7104630 () Bool)

(assert (=> b!6283609 m!7104630))

(declare-fun m!7104632 () Bool)

(assert (=> b!6283610 m!7104632))

(assert (=> b!6281686 d!1972291))

(declare-fun d!1972293 () Bool)

(declare-fun c!1139768 () Bool)

(assert (=> d!1972293 (= c!1139768 (isEmpty!36834 (tail!11991 (t!378469 s!2326))))))

(declare-fun e!3821194 () Bool)

(assert (=> d!1972293 (= (matchZipper!2215 (derivationStepZipper!2169 ((_ map or) lt!2354662 lt!2354634) (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))) e!3821194)))

(declare-fun b!6283611 () Bool)

(assert (=> b!6283611 (= e!3821194 (nullableZipper!1973 (derivationStepZipper!2169 ((_ map or) lt!2354662 lt!2354634) (head!12906 (t!378469 s!2326)))))))

(declare-fun b!6283612 () Bool)

(assert (=> b!6283612 (= e!3821194 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 ((_ map or) lt!2354662 lt!2354634) (head!12906 (t!378469 s!2326))) (head!12906 (tail!11991 (t!378469 s!2326)))) (tail!11991 (tail!11991 (t!378469 s!2326)))))))

(assert (= (and d!1972293 c!1139768) b!6283611))

(assert (= (and d!1972293 (not c!1139768)) b!6283612))

(assert (=> d!1972293 m!7102540))

(assert (=> d!1972293 m!7103958))

(assert (=> b!6283611 m!7102878))

(declare-fun m!7104634 () Bool)

(assert (=> b!6283611 m!7104634))

(assert (=> b!6283612 m!7102540))

(assert (=> b!6283612 m!7103962))

(assert (=> b!6283612 m!7102878))

(assert (=> b!6283612 m!7103962))

(declare-fun m!7104636 () Bool)

(assert (=> b!6283612 m!7104636))

(assert (=> b!6283612 m!7102540))

(assert (=> b!6283612 m!7103966))

(assert (=> b!6283612 m!7104636))

(assert (=> b!6283612 m!7103966))

(declare-fun m!7104638 () Bool)

(assert (=> b!6283612 m!7104638))

(assert (=> b!6281910 d!1972293))

(declare-fun bs!1570564 () Bool)

(declare-fun d!1972295 () Bool)

(assert (= bs!1570564 (and d!1972295 d!1971429)))

(declare-fun lambda!344758 () Int)

(assert (=> bs!1570564 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344758 lambda!344613))))

(declare-fun bs!1570565 () Bool)

(assert (= bs!1570565 (and d!1972295 b!6280977)))

(assert (=> bs!1570565 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344758 lambda!344509))))

(declare-fun bs!1570566 () Bool)

(assert (= bs!1570566 (and d!1972295 d!1971409)))

(assert (=> bs!1570566 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344758 lambda!344611))))

(declare-fun bs!1570567 () Bool)

(assert (= bs!1570567 (and d!1972295 d!1972021)))

(assert (=> bs!1570567 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344758 lambda!344702))))

(declare-fun bs!1570568 () Bool)

(assert (= bs!1570568 (and d!1972295 d!1972273)))

(assert (=> bs!1570568 (= lambda!344758 lambda!344754)))

(declare-fun bs!1570569 () Bool)

(assert (= bs!1570569 (and d!1972295 d!1972011)))

(assert (=> bs!1570569 (= lambda!344758 lambda!344701)))

(declare-fun bs!1570570 () Bool)

(assert (= bs!1570570 (and d!1972295 d!1972217)))

(assert (=> bs!1570570 (= lambda!344758 lambda!344744)))

(declare-fun bs!1570571 () Bool)

(assert (= bs!1570571 (and d!1972295 d!1972179)))

(assert (=> bs!1570571 (= lambda!344758 lambda!344739)))

(declare-fun bs!1570572 () Bool)

(assert (= bs!1570572 (and d!1972295 d!1972199)))

(assert (=> bs!1570572 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344758 lambda!344743))))

(declare-fun bs!1570573 () Bool)

(assert (= bs!1570573 (and d!1972295 d!1971965)))

(assert (=> bs!1570573 (= lambda!344758 lambda!344697)))

(declare-fun bs!1570574 () Bool)

(assert (= bs!1570574 (and d!1972295 d!1972289)))

(assert (=> bs!1570574 (= lambda!344758 lambda!344757)))

(declare-fun bs!1570575 () Bool)

(assert (= bs!1570575 (and d!1972295 d!1972141)))

(assert (=> bs!1570575 (= lambda!344758 lambda!344724)))

(assert (=> d!1972295 true))

(assert (=> d!1972295 (= (derivationStepZipper!2169 ((_ map or) lt!2354662 lt!2354634) (head!12906 (t!378469 s!2326))) (flatMap!1708 ((_ map or) lt!2354662 lt!2354634) lambda!344758))))

(declare-fun bs!1570576 () Bool)

(assert (= bs!1570576 d!1972295))

(declare-fun m!7104640 () Bool)

(assert (=> bs!1570576 m!7104640))

(assert (=> b!6281910 d!1972295))

(assert (=> b!6281910 d!1971967))

(assert (=> b!6281910 d!1971969))

(declare-fun d!1972297 () Bool)

(assert (=> d!1972297 (= (isUnion!1046 lt!2354841) ((_ is Union!16203) lt!2354841))))

(assert (=> b!6281967 d!1972297))

(assert (=> b!6281811 d!1972023))

(assert (=> b!6281811 d!1972005))

(assert (=> bs!1569089 d!1971399))

(declare-fun d!1972299 () Bool)

(assert (=> d!1972299 (= (isEmpty!36830 (tail!11992 (t!378468 (exprs!6087 (h!71234 zl!343))))) ((_ is Nil!64784) (tail!11992 (t!378468 (exprs!6087 (h!71234 zl!343))))))))

(assert (=> b!6281805 d!1972299))

(declare-fun d!1972301 () Bool)

(assert (=> d!1972301 (= (tail!11992 (t!378468 (exprs!6087 (h!71234 zl!343)))) (t!378468 (t!378468 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> b!6281805 d!1972301))

(declare-fun d!1972303 () Bool)

(assert (=> d!1972303 (= (isConcat!1132 lt!2354815) ((_ is Concat!25048) lt!2354815))))

(assert (=> b!6281710 d!1972303))

(declare-fun d!1972305 () Bool)

(declare-fun c!1139769 () Bool)

(assert (=> d!1972305 (= c!1139769 (isEmpty!36834 (tail!11991 (t!378469 s!2326))))))

(declare-fun e!3821195 () Bool)

(assert (=> d!1972305 (= (matchZipper!2215 (derivationStepZipper!2169 lt!2354648 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))) e!3821195)))

(declare-fun b!6283613 () Bool)

(assert (=> b!6283613 (= e!3821195 (nullableZipper!1973 (derivationStepZipper!2169 lt!2354648 (head!12906 (t!378469 s!2326)))))))

(declare-fun b!6283614 () Bool)

(assert (=> b!6283614 (= e!3821195 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354648 (head!12906 (t!378469 s!2326))) (head!12906 (tail!11991 (t!378469 s!2326)))) (tail!11991 (tail!11991 (t!378469 s!2326)))))))

(assert (= (and d!1972305 c!1139769) b!6283613))

(assert (= (and d!1972305 (not c!1139769)) b!6283614))

(assert (=> d!1972305 m!7102540))

(assert (=> d!1972305 m!7103958))

(assert (=> b!6283613 m!7102538))

(declare-fun m!7104642 () Bool)

(assert (=> b!6283613 m!7104642))

(assert (=> b!6283614 m!7102540))

(assert (=> b!6283614 m!7103962))

(assert (=> b!6283614 m!7102538))

(assert (=> b!6283614 m!7103962))

(declare-fun m!7104644 () Bool)

(assert (=> b!6283614 m!7104644))

(assert (=> b!6283614 m!7102540))

(assert (=> b!6283614 m!7103966))

(assert (=> b!6283614 m!7104644))

(assert (=> b!6283614 m!7103966))

(declare-fun m!7104646 () Bool)

(assert (=> b!6283614 m!7104646))

(assert (=> b!6281555 d!1972305))

(declare-fun bs!1570577 () Bool)

(declare-fun d!1972307 () Bool)

(assert (= bs!1570577 (and d!1972307 d!1971429)))

(declare-fun lambda!344759 () Int)

(assert (=> bs!1570577 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344759 lambda!344613))))

(declare-fun bs!1570578 () Bool)

(assert (= bs!1570578 (and d!1972307 b!6280977)))

(assert (=> bs!1570578 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344759 lambda!344509))))

(declare-fun bs!1570579 () Bool)

(assert (= bs!1570579 (and d!1972307 d!1972021)))

(assert (=> bs!1570579 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344759 lambda!344702))))

(declare-fun bs!1570580 () Bool)

(assert (= bs!1570580 (and d!1972307 d!1972273)))

(assert (=> bs!1570580 (= lambda!344759 lambda!344754)))

(declare-fun bs!1570581 () Bool)

(assert (= bs!1570581 (and d!1972307 d!1972011)))

(assert (=> bs!1570581 (= lambda!344759 lambda!344701)))

(declare-fun bs!1570582 () Bool)

(assert (= bs!1570582 (and d!1972307 d!1972217)))

(assert (=> bs!1570582 (= lambda!344759 lambda!344744)))

(declare-fun bs!1570583 () Bool)

(assert (= bs!1570583 (and d!1972307 d!1972179)))

(assert (=> bs!1570583 (= lambda!344759 lambda!344739)))

(declare-fun bs!1570584 () Bool)

(assert (= bs!1570584 (and d!1972307 d!1972199)))

(assert (=> bs!1570584 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344759 lambda!344743))))

(declare-fun bs!1570585 () Bool)

(assert (= bs!1570585 (and d!1972307 d!1971965)))

(assert (=> bs!1570585 (= lambda!344759 lambda!344697)))

(declare-fun bs!1570586 () Bool)

(assert (= bs!1570586 (and d!1972307 d!1972289)))

(assert (=> bs!1570586 (= lambda!344759 lambda!344757)))

(declare-fun bs!1570587 () Bool)

(assert (= bs!1570587 (and d!1972307 d!1972141)))

(assert (=> bs!1570587 (= lambda!344759 lambda!344724)))

(declare-fun bs!1570588 () Bool)

(assert (= bs!1570588 (and d!1972307 d!1971409)))

(assert (=> bs!1570588 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344759 lambda!344611))))

(declare-fun bs!1570589 () Bool)

(assert (= bs!1570589 (and d!1972307 d!1972295)))

(assert (=> bs!1570589 (= lambda!344759 lambda!344758)))

(assert (=> d!1972307 true))

(assert (=> d!1972307 (= (derivationStepZipper!2169 lt!2354648 (head!12906 (t!378469 s!2326))) (flatMap!1708 lt!2354648 lambda!344759))))

(declare-fun bs!1570590 () Bool)

(assert (= bs!1570590 d!1972307))

(declare-fun m!7104648 () Bool)

(assert (=> bs!1570590 m!7104648))

(assert (=> b!6281555 d!1972307))

(assert (=> b!6281555 d!1971967))

(assert (=> b!6281555 d!1971969))

(declare-fun b!6283615 () Bool)

(declare-fun e!3821199 () Bool)

(declare-fun e!3821197 () Bool)

(assert (=> b!6283615 (= e!3821199 e!3821197)))

(declare-fun res!2591411 () Bool)

(assert (=> b!6283615 (=> res!2591411 e!3821197)))

(declare-fun call!531957 () Bool)

(assert (=> b!6283615 (= res!2591411 call!531957)))

(declare-fun b!6283616 () Bool)

(declare-fun e!3821198 () Bool)

(assert (=> b!6283616 (= e!3821198 (= (head!12906 (_2!36485 (get!22393 lt!2354770))) (c!1138982 (regTwo!32918 r!7292))))))

(declare-fun b!6283617 () Bool)

(declare-fun res!2591414 () Bool)

(assert (=> b!6283617 (=> res!2591414 e!3821197)))

(assert (=> b!6283617 (= res!2591414 (not (isEmpty!36834 (tail!11991 (_2!36485 (get!22393 lt!2354770))))))))

(declare-fun b!6283619 () Bool)

(assert (=> b!6283619 (= e!3821197 (not (= (head!12906 (_2!36485 (get!22393 lt!2354770))) (c!1138982 (regTwo!32918 r!7292)))))))

(declare-fun b!6283620 () Bool)

(declare-fun e!3821196 () Bool)

(declare-fun lt!2354985 () Bool)

(assert (=> b!6283620 (= e!3821196 (not lt!2354985))))

(declare-fun b!6283621 () Bool)

(declare-fun e!3821202 () Bool)

(assert (=> b!6283621 (= e!3821202 e!3821196)))

(declare-fun c!1139770 () Bool)

(assert (=> b!6283621 (= c!1139770 ((_ is EmptyLang!16203) (regTwo!32918 r!7292)))))

(declare-fun bm!531952 () Bool)

(assert (=> bm!531952 (= call!531957 (isEmpty!36834 (_2!36485 (get!22393 lt!2354770))))))

(declare-fun b!6283622 () Bool)

(declare-fun res!2591416 () Bool)

(assert (=> b!6283622 (=> (not res!2591416) (not e!3821198))))

(assert (=> b!6283622 (= res!2591416 (not call!531957))))

(declare-fun b!6283623 () Bool)

(declare-fun e!3821201 () Bool)

(assert (=> b!6283623 (= e!3821201 (matchR!8386 (derivativeStep!4912 (regTwo!32918 r!7292) (head!12906 (_2!36485 (get!22393 lt!2354770)))) (tail!11991 (_2!36485 (get!22393 lt!2354770)))))))

(declare-fun b!6283624 () Bool)

(declare-fun e!3821200 () Bool)

(assert (=> b!6283624 (= e!3821200 e!3821199)))

(declare-fun res!2591413 () Bool)

(assert (=> b!6283624 (=> (not res!2591413) (not e!3821199))))

(assert (=> b!6283624 (= res!2591413 (not lt!2354985))))

(declare-fun b!6283618 () Bool)

(declare-fun res!2591412 () Bool)

(assert (=> b!6283618 (=> (not res!2591412) (not e!3821198))))

(assert (=> b!6283618 (= res!2591412 (isEmpty!36834 (tail!11991 (_2!36485 (get!22393 lt!2354770)))))))

(declare-fun d!1972309 () Bool)

(assert (=> d!1972309 e!3821202))

(declare-fun c!1139771 () Bool)

(assert (=> d!1972309 (= c!1139771 ((_ is EmptyExpr!16203) (regTwo!32918 r!7292)))))

(assert (=> d!1972309 (= lt!2354985 e!3821201)))

(declare-fun c!1139772 () Bool)

(assert (=> d!1972309 (= c!1139772 (isEmpty!36834 (_2!36485 (get!22393 lt!2354770))))))

(assert (=> d!1972309 (validRegex!7939 (regTwo!32918 r!7292))))

(assert (=> d!1972309 (= (matchR!8386 (regTwo!32918 r!7292) (_2!36485 (get!22393 lt!2354770))) lt!2354985)))

(declare-fun b!6283625 () Bool)

(declare-fun res!2591410 () Bool)

(assert (=> b!6283625 (=> res!2591410 e!3821200)))

(assert (=> b!6283625 (= res!2591410 (not ((_ is ElementMatch!16203) (regTwo!32918 r!7292))))))

(assert (=> b!6283625 (= e!3821196 e!3821200)))

(declare-fun b!6283626 () Bool)

(assert (=> b!6283626 (= e!3821202 (= lt!2354985 call!531957))))

(declare-fun b!6283627 () Bool)

(assert (=> b!6283627 (= e!3821201 (nullable!6196 (regTwo!32918 r!7292)))))

(declare-fun b!6283628 () Bool)

(declare-fun res!2591415 () Bool)

(assert (=> b!6283628 (=> res!2591415 e!3821200)))

(assert (=> b!6283628 (= res!2591415 e!3821198)))

(declare-fun res!2591409 () Bool)

(assert (=> b!6283628 (=> (not res!2591409) (not e!3821198))))

(assert (=> b!6283628 (= res!2591409 lt!2354985)))

(assert (= (and d!1972309 c!1139772) b!6283627))

(assert (= (and d!1972309 (not c!1139772)) b!6283623))

(assert (= (and d!1972309 c!1139771) b!6283626))

(assert (= (and d!1972309 (not c!1139771)) b!6283621))

(assert (= (and b!6283621 c!1139770) b!6283620))

(assert (= (and b!6283621 (not c!1139770)) b!6283625))

(assert (= (and b!6283625 (not res!2591410)) b!6283628))

(assert (= (and b!6283628 res!2591409) b!6283622))

(assert (= (and b!6283622 res!2591416) b!6283618))

(assert (= (and b!6283618 res!2591412) b!6283616))

(assert (= (and b!6283628 (not res!2591415)) b!6283624))

(assert (= (and b!6283624 res!2591413) b!6283615))

(assert (= (and b!6283615 (not res!2591411)) b!6283617))

(assert (= (and b!6283617 (not res!2591414)) b!6283619))

(assert (= (or b!6283626 b!6283615 b!6283622) bm!531952))

(declare-fun m!7104650 () Bool)

(assert (=> bm!531952 m!7104650))

(declare-fun m!7104652 () Bool)

(assert (=> b!6283619 m!7104652))

(assert (=> d!1972309 m!7104650))

(assert (=> d!1972309 m!7103924))

(declare-fun m!7104654 () Bool)

(assert (=> b!6283617 m!7104654))

(assert (=> b!6283617 m!7104654))

(declare-fun m!7104656 () Bool)

(assert (=> b!6283617 m!7104656))

(assert (=> b!6283627 m!7103926))

(assert (=> b!6283616 m!7104652))

(assert (=> b!6283623 m!7104652))

(assert (=> b!6283623 m!7104652))

(declare-fun m!7104658 () Bool)

(assert (=> b!6283623 m!7104658))

(assert (=> b!6283623 m!7104654))

(assert (=> b!6283623 m!7104658))

(assert (=> b!6283623 m!7104654))

(declare-fun m!7104660 () Bool)

(assert (=> b!6283623 m!7104660))

(assert (=> b!6283618 m!7104654))

(assert (=> b!6283618 m!7104654))

(assert (=> b!6283618 m!7104656))

(assert (=> b!6281535 d!1972309))

(assert (=> b!6281535 d!1971983))

(declare-fun d!1972311 () Bool)

(assert (=> d!1972311 (= (flatMap!1708 lt!2354666 lambda!344611) (choose!46647 lt!2354666 lambda!344611))))

(declare-fun bs!1570591 () Bool)

(assert (= bs!1570591 d!1972311))

(declare-fun m!7104662 () Bool)

(assert (=> bs!1570591 m!7104662))

(assert (=> d!1971409 d!1972311))

(declare-fun d!1972313 () Bool)

(declare-fun res!2591417 () Bool)

(declare-fun e!3821203 () Bool)

(assert (=> d!1972313 (=> res!2591417 e!3821203)))

(assert (=> d!1972313 (= res!2591417 ((_ is Nil!64784) (exprs!6087 (h!71234 zl!343))))))

(assert (=> d!1972313 (= (forall!15344 (exprs!6087 (h!71234 zl!343)) lambda!344612) e!3821203)))

(declare-fun b!6283629 () Bool)

(declare-fun e!3821204 () Bool)

(assert (=> b!6283629 (= e!3821203 e!3821204)))

(declare-fun res!2591418 () Bool)

(assert (=> b!6283629 (=> (not res!2591418) (not e!3821204))))

(assert (=> b!6283629 (= res!2591418 (dynLambda!25634 lambda!344612 (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6283630 () Bool)

(assert (=> b!6283630 (= e!3821204 (forall!15344 (t!378468 (exprs!6087 (h!71234 zl!343))) lambda!344612))))

(assert (= (and d!1972313 (not res!2591417)) b!6283629))

(assert (= (and b!6283629 res!2591418) b!6283630))

(declare-fun b_lambda!239209 () Bool)

(assert (=> (not b_lambda!239209) (not b!6283629)))

(declare-fun m!7104664 () Bool)

(assert (=> b!6283629 m!7104664))

(declare-fun m!7104666 () Bool)

(assert (=> b!6283630 m!7104666))

(assert (=> d!1971415 d!1972313))

(assert (=> b!6281972 d!1971343))

(declare-fun bs!1570592 () Bool)

(declare-fun d!1972315 () Bool)

(assert (= bs!1570592 (and d!1972315 b!6283572)))

(declare-fun lambda!344760 () Int)

(assert (=> bs!1570592 (not (= lambda!344760 lambda!344748))))

(declare-fun bs!1570593 () Bool)

(assert (= bs!1570593 (and d!1972315 d!1971363)))

(assert (=> bs!1570593 (= lambda!344760 lambda!344602)))

(declare-fun bs!1570594 () Bool)

(assert (= bs!1570594 (and d!1972315 d!1971341)))

(assert (=> bs!1570594 (= lambda!344760 lambda!344595)))

(declare-fun bs!1570595 () Bool)

(assert (= bs!1570595 (and d!1972315 d!1971351)))

(assert (=> bs!1570595 (= lambda!344760 lambda!344601)))

(declare-fun bs!1570596 () Bool)

(assert (= bs!1570596 (and d!1972315 d!1972185)))

(assert (=> bs!1570596 (= lambda!344760 lambda!344742)))

(declare-fun bs!1570597 () Bool)

(assert (= bs!1570597 (and d!1972315 d!1972229)))

(assert (=> bs!1570597 (= lambda!344760 lambda!344745)))

(declare-fun bs!1570598 () Bool)

(assert (= bs!1570598 (and d!1972315 d!1972059)))

(assert (=> bs!1570598 (= lambda!344760 lambda!344712)))

(declare-fun bs!1570599 () Bool)

(assert (= bs!1570599 (and d!1972315 b!6283411)))

(assert (=> bs!1570599 (not (= lambda!344760 lambda!344730))))

(declare-fun bs!1570600 () Bool)

(assert (= bs!1570600 (and d!1972315 d!1971431)))

(assert (=> bs!1570600 (= lambda!344760 lambda!344616)))

(declare-fun bs!1570601 () Bool)

(assert (= bs!1570601 (and d!1972315 d!1972113)))

(assert (=> bs!1570601 (= lambda!344760 lambda!344723)))

(declare-fun bs!1570602 () Bool)

(assert (= bs!1570602 (and d!1972315 d!1971415)))

(assert (=> bs!1570602 (= lambda!344760 lambda!344612)))

(declare-fun bs!1570603 () Bool)

(assert (= bs!1570603 (and d!1972315 d!1971343)))

(assert (=> bs!1570603 (= lambda!344760 lambda!344598)))

(declare-fun bs!1570604 () Bool)

(assert (= bs!1570604 (and d!1972315 d!1972061)))

(assert (=> bs!1570604 (= lambda!344760 lambda!344713)))

(declare-fun bs!1570605 () Bool)

(assert (= bs!1570605 (and d!1972315 d!1971367)))

(assert (=> bs!1570605 (= lambda!344760 lambda!344604)))

(declare-fun bs!1570606 () Bool)

(assert (= bs!1570606 (and d!1972315 d!1972157)))

(assert (=> bs!1570606 (= lambda!344760 lambda!344725)))

(declare-fun bs!1570607 () Bool)

(assert (= bs!1570607 (and d!1972315 b!6283574)))

(assert (=> bs!1570607 (not (= lambda!344760 lambda!344749))))

(declare-fun bs!1570608 () Bool)

(assert (= bs!1570608 (and d!1972315 b!6283413)))

(assert (=> bs!1570608 (not (= lambda!344760 lambda!344731))))

(declare-fun bs!1570609 () Bool)

(assert (= bs!1570609 (and d!1972315 d!1971433)))

(assert (=> bs!1570609 (= lambda!344760 lambda!344619)))

(declare-fun lt!2354986 () List!64908)

(assert (=> d!1972315 (forall!15344 lt!2354986 lambda!344760)))

(declare-fun e!3821205 () List!64908)

(assert (=> d!1972315 (= lt!2354986 e!3821205)))

(declare-fun c!1139773 () Bool)

(assert (=> d!1972315 (= c!1139773 ((_ is Cons!64786) (t!378470 zl!343)))))

(assert (=> d!1972315 (= (unfocusZipperList!1624 (t!378470 zl!343)) lt!2354986)))

(declare-fun b!6283631 () Bool)

(assert (=> b!6283631 (= e!3821205 (Cons!64784 (generalisedConcat!1800 (exprs!6087 (h!71234 (t!378470 zl!343)))) (unfocusZipperList!1624 (t!378470 (t!378470 zl!343)))))))

(declare-fun b!6283632 () Bool)

(assert (=> b!6283632 (= e!3821205 Nil!64784)))

(assert (= (and d!1972315 c!1139773) b!6283631))

(assert (= (and d!1972315 (not c!1139773)) b!6283632))

(declare-fun m!7104668 () Bool)

(assert (=> d!1972315 m!7104668))

(declare-fun m!7104670 () Bool)

(assert (=> b!6283631 m!7104670))

(declare-fun m!7104672 () Bool)

(assert (=> b!6283631 m!7104672))

(assert (=> b!6281972 d!1972315))

(declare-fun d!1972317 () Bool)

(assert (=> d!1972317 (= (nullable!6196 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343))))) (nullableFct!2147 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun bs!1570610 () Bool)

(assert (= bs!1570610 d!1972317))

(declare-fun m!7104674 () Bool)

(assert (=> bs!1570610 m!7104674))

(assert (=> b!6281868 d!1972317))

(assert (=> bm!531587 d!1971931))

(declare-fun bm!531953 () Bool)

(declare-fun call!531959 () (InoxSet Context!11174))

(declare-fun call!531961 () (InoxSet Context!11174))

(assert (=> bm!531953 (= call!531959 call!531961)))

(declare-fun b!6283633 () Bool)

(declare-fun e!3821208 () Bool)

(assert (=> b!6283633 (= e!3821208 (nullable!6196 (regOne!32918 (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292)))))))))

(declare-fun b!6283634 () Bool)

(declare-fun e!3821206 () (InoxSet Context!11174))

(assert (=> b!6283634 (= e!3821206 call!531959)))

(declare-fun b!6283635 () Bool)

(declare-fun e!3821207 () (InoxSet Context!11174))

(assert (=> b!6283635 (= e!3821207 call!531959)))

(declare-fun b!6283636 () Bool)

(declare-fun c!1139778 () Bool)

(assert (=> b!6283636 (= c!1139778 ((_ is Star!16203) (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))))))

(assert (=> b!6283636 (= e!3821207 e!3821206)))

(declare-fun bm!531954 () Bool)

(declare-fun call!531962 () List!64908)

(declare-fun call!531960 () List!64908)

(assert (=> bm!531954 (= call!531962 call!531960)))

(declare-fun b!6283637 () Bool)

(declare-fun e!3821209 () (InoxSet Context!11174))

(declare-fun call!531958 () (InoxSet Context!11174))

(assert (=> b!6283637 (= e!3821209 ((_ map or) call!531958 call!531961))))

(declare-fun b!6283638 () Bool)

(declare-fun e!3821210 () (InoxSet Context!11174))

(declare-fun call!531963 () (InoxSet Context!11174))

(assert (=> b!6283638 (= e!3821210 ((_ map or) call!531958 call!531963))))

(declare-fun c!1139776 () Bool)

(declare-fun bm!531955 () Bool)

(declare-fun c!1139777 () Bool)

(assert (=> bm!531955 (= call!531960 ($colon$colon!2068 (exprs!6087 (ite c!1139284 lt!2354667 (Context!11175 call!531640))) (ite (or c!1139777 c!1139776) (regTwo!32918 (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))) (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292)))))))))

(declare-fun b!6283639 () Bool)

(assert (=> b!6283639 (= c!1139777 e!3821208)))

(declare-fun res!2591419 () Bool)

(assert (=> b!6283639 (=> (not res!2591419) (not e!3821208))))

(assert (=> b!6283639 (= res!2591419 ((_ is Concat!25048) (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))))))

(assert (=> b!6283639 (= e!3821210 e!3821209)))

(declare-fun b!6283640 () Bool)

(declare-fun e!3821211 () (InoxSet Context!11174))

(assert (=> b!6283640 (= e!3821211 e!3821210)))

(declare-fun c!1139775 () Bool)

(assert (=> b!6283640 (= c!1139775 ((_ is Union!16203) (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))))))

(declare-fun bm!531956 () Bool)

(assert (=> bm!531956 (= call!531963 (derivationStepZipperDown!1451 (ite c!1139775 (regTwo!32919 (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))) (ite c!1139777 (regTwo!32918 (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))) (ite c!1139776 (regOne!32918 (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))) (reg!16532 (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292)))))))) (ite (or c!1139775 c!1139777) (ite c!1139284 lt!2354667 (Context!11175 call!531640)) (Context!11175 call!531962)) (h!71233 s!2326)))))

(declare-fun bm!531957 () Bool)

(assert (=> bm!531957 (= call!531958 (derivationStepZipperDown!1451 (ite c!1139775 (regOne!32919 (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))) (regOne!32918 (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292)))))) (ite c!1139775 (ite c!1139284 lt!2354667 (Context!11175 call!531640)) (Context!11175 call!531960)) (h!71233 s!2326)))))

(declare-fun c!1139774 () Bool)

(declare-fun d!1972319 () Bool)

(assert (=> d!1972319 (= c!1139774 (and ((_ is ElementMatch!16203) (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))) (= (c!1138982 (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))) (h!71233 s!2326))))))

(assert (=> d!1972319 (= (derivationStepZipperDown!1451 (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292)))) (ite c!1139284 lt!2354667 (Context!11175 call!531640)) (h!71233 s!2326)) e!3821211)))

(declare-fun b!6283641 () Bool)

(assert (=> b!6283641 (= e!3821209 e!3821207)))

(assert (=> b!6283641 (= c!1139776 ((_ is Concat!25048) (ite c!1139284 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))))))

(declare-fun b!6283642 () Bool)

(assert (=> b!6283642 (= e!3821206 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531958 () Bool)

(assert (=> bm!531958 (= call!531961 call!531963)))

(declare-fun b!6283643 () Bool)

(assert (=> b!6283643 (= e!3821211 (store ((as const (Array Context!11174 Bool)) false) (ite c!1139284 lt!2354667 (Context!11175 call!531640)) true))))

(assert (= (and d!1972319 c!1139774) b!6283643))

(assert (= (and d!1972319 (not c!1139774)) b!6283640))

(assert (= (and b!6283640 c!1139775) b!6283638))

(assert (= (and b!6283640 (not c!1139775)) b!6283639))

(assert (= (and b!6283639 res!2591419) b!6283633))

(assert (= (and b!6283639 c!1139777) b!6283637))

(assert (= (and b!6283639 (not c!1139777)) b!6283641))

(assert (= (and b!6283641 c!1139776) b!6283635))

(assert (= (and b!6283641 (not c!1139776)) b!6283636))

(assert (= (and b!6283636 c!1139778) b!6283634))

(assert (= (and b!6283636 (not c!1139778)) b!6283642))

(assert (= (or b!6283635 b!6283634) bm!531954))

(assert (= (or b!6283635 b!6283634) bm!531953))

(assert (= (or b!6283637 bm!531954) bm!531955))

(assert (= (or b!6283637 bm!531953) bm!531958))

(assert (= (or b!6283638 bm!531958) bm!531956))

(assert (= (or b!6283638 b!6283637) bm!531957))

(declare-fun m!7104676 () Bool)

(assert (=> b!6283633 m!7104676))

(declare-fun m!7104678 () Bool)

(assert (=> bm!531957 m!7104678))

(declare-fun m!7104680 () Bool)

(assert (=> b!6283643 m!7104680))

(declare-fun m!7104682 () Bool)

(assert (=> bm!531956 m!7104682))

(declare-fun m!7104684 () Bool)

(assert (=> bm!531955 m!7104684))

(assert (=> bm!531637 d!1972319))

(declare-fun b!6283644 () Bool)

(declare-fun e!3821215 () Bool)

(declare-fun e!3821213 () Bool)

(assert (=> b!6283644 (= e!3821215 e!3821213)))

(declare-fun res!2591422 () Bool)

(assert (=> b!6283644 (=> res!2591422 e!3821213)))

(declare-fun call!531964 () Bool)

(assert (=> b!6283644 (= res!2591422 call!531964)))

(declare-fun b!6283645 () Bool)

(declare-fun e!3821214 () Bool)

(assert (=> b!6283645 (= e!3821214 (= (head!12906 (_2!36485 (get!22393 lt!2354817))) (c!1138982 lt!2354652)))))

(declare-fun b!6283646 () Bool)

(declare-fun res!2591425 () Bool)

(assert (=> b!6283646 (=> res!2591425 e!3821213)))

(assert (=> b!6283646 (= res!2591425 (not (isEmpty!36834 (tail!11991 (_2!36485 (get!22393 lt!2354817))))))))

(declare-fun b!6283648 () Bool)

(assert (=> b!6283648 (= e!3821213 (not (= (head!12906 (_2!36485 (get!22393 lt!2354817))) (c!1138982 lt!2354652))))))

(declare-fun b!6283649 () Bool)

(declare-fun e!3821212 () Bool)

(declare-fun lt!2354987 () Bool)

(assert (=> b!6283649 (= e!3821212 (not lt!2354987))))

(declare-fun b!6283650 () Bool)

(declare-fun e!3821218 () Bool)

(assert (=> b!6283650 (= e!3821218 e!3821212)))

(declare-fun c!1139779 () Bool)

(assert (=> b!6283650 (= c!1139779 ((_ is EmptyLang!16203) lt!2354652))))

(declare-fun bm!531959 () Bool)

(assert (=> bm!531959 (= call!531964 (isEmpty!36834 (_2!36485 (get!22393 lt!2354817))))))

(declare-fun b!6283651 () Bool)

(declare-fun res!2591427 () Bool)

(assert (=> b!6283651 (=> (not res!2591427) (not e!3821214))))

(assert (=> b!6283651 (= res!2591427 (not call!531964))))

(declare-fun b!6283652 () Bool)

(declare-fun e!3821217 () Bool)

(assert (=> b!6283652 (= e!3821217 (matchR!8386 (derivativeStep!4912 lt!2354652 (head!12906 (_2!36485 (get!22393 lt!2354817)))) (tail!11991 (_2!36485 (get!22393 lt!2354817)))))))

(declare-fun b!6283653 () Bool)

(declare-fun e!3821216 () Bool)

(assert (=> b!6283653 (= e!3821216 e!3821215)))

(declare-fun res!2591424 () Bool)

(assert (=> b!6283653 (=> (not res!2591424) (not e!3821215))))

(assert (=> b!6283653 (= res!2591424 (not lt!2354987))))

(declare-fun b!6283647 () Bool)

(declare-fun res!2591423 () Bool)

(assert (=> b!6283647 (=> (not res!2591423) (not e!3821214))))

(assert (=> b!6283647 (= res!2591423 (isEmpty!36834 (tail!11991 (_2!36485 (get!22393 lt!2354817)))))))

(declare-fun d!1972321 () Bool)

(assert (=> d!1972321 e!3821218))

(declare-fun c!1139780 () Bool)

(assert (=> d!1972321 (= c!1139780 ((_ is EmptyExpr!16203) lt!2354652))))

(assert (=> d!1972321 (= lt!2354987 e!3821217)))

(declare-fun c!1139781 () Bool)

(assert (=> d!1972321 (= c!1139781 (isEmpty!36834 (_2!36485 (get!22393 lt!2354817))))))

(assert (=> d!1972321 (validRegex!7939 lt!2354652)))

(assert (=> d!1972321 (= (matchR!8386 lt!2354652 (_2!36485 (get!22393 lt!2354817))) lt!2354987)))

(declare-fun b!6283654 () Bool)

(declare-fun res!2591421 () Bool)

(assert (=> b!6283654 (=> res!2591421 e!3821216)))

(assert (=> b!6283654 (= res!2591421 (not ((_ is ElementMatch!16203) lt!2354652)))))

(assert (=> b!6283654 (= e!3821212 e!3821216)))

(declare-fun b!6283655 () Bool)

(assert (=> b!6283655 (= e!3821218 (= lt!2354987 call!531964))))

(declare-fun b!6283656 () Bool)

(assert (=> b!6283656 (= e!3821217 (nullable!6196 lt!2354652))))

(declare-fun b!6283657 () Bool)

(declare-fun res!2591426 () Bool)

(assert (=> b!6283657 (=> res!2591426 e!3821216)))

(assert (=> b!6283657 (= res!2591426 e!3821214)))

(declare-fun res!2591420 () Bool)

(assert (=> b!6283657 (=> (not res!2591420) (not e!3821214))))

(assert (=> b!6283657 (= res!2591420 lt!2354987)))

(assert (= (and d!1972321 c!1139781) b!6283656))

(assert (= (and d!1972321 (not c!1139781)) b!6283652))

(assert (= (and d!1972321 c!1139780) b!6283655))

(assert (= (and d!1972321 (not c!1139780)) b!6283650))

(assert (= (and b!6283650 c!1139779) b!6283649))

(assert (= (and b!6283650 (not c!1139779)) b!6283654))

(assert (= (and b!6283654 (not res!2591421)) b!6283657))

(assert (= (and b!6283657 res!2591420) b!6283651))

(assert (= (and b!6283651 res!2591427) b!6283647))

(assert (= (and b!6283647 res!2591423) b!6283645))

(assert (= (and b!6283657 (not res!2591426)) b!6283653))

(assert (= (and b!6283653 res!2591424) b!6283644))

(assert (= (and b!6283644 (not res!2591422)) b!6283646))

(assert (= (and b!6283646 (not res!2591425)) b!6283648))

(assert (= (or b!6283655 b!6283644 b!6283651) bm!531959))

(declare-fun m!7104686 () Bool)

(assert (=> bm!531959 m!7104686))

(declare-fun m!7104688 () Bool)

(assert (=> b!6283648 m!7104688))

(assert (=> d!1972321 m!7104686))

(assert (=> d!1972321 m!7102776))

(declare-fun m!7104690 () Bool)

(assert (=> b!6283646 m!7104690))

(assert (=> b!6283646 m!7104690))

(declare-fun m!7104692 () Bool)

(assert (=> b!6283646 m!7104692))

(assert (=> b!6283656 m!7102778))

(assert (=> b!6283645 m!7104688))

(assert (=> b!6283652 m!7104688))

(assert (=> b!6283652 m!7104688))

(declare-fun m!7104694 () Bool)

(assert (=> b!6283652 m!7104694))

(assert (=> b!6283652 m!7104690))

(assert (=> b!6283652 m!7104694))

(assert (=> b!6283652 m!7104690))

(declare-fun m!7104696 () Bool)

(assert (=> b!6283652 m!7104696))

(assert (=> b!6283647 m!7104690))

(assert (=> b!6283647 m!7104690))

(assert (=> b!6283647 m!7104692))

(assert (=> b!6281734 d!1972321))

(assert (=> b!6281734 d!1972017))

(assert (=> b!6281738 d!1971939))

(declare-fun d!1972323 () Bool)

(assert (=> d!1972323 (= (head!12907 lt!2354672) (h!71232 lt!2354672))))

(assert (=> b!6281756 d!1972323))

(declare-fun d!1972325 () Bool)

(declare-fun c!1139782 () Bool)

(assert (=> d!1972325 (= c!1139782 (isEmpty!36834 (tail!11991 (t!378469 s!2326))))))

(declare-fun e!3821219 () Bool)

(assert (=> d!1972325 (= (matchZipper!2215 (derivationStepZipper!2169 lt!2354662 (head!12906 (t!378469 s!2326))) (tail!11991 (t!378469 s!2326))) e!3821219)))

(declare-fun b!6283658 () Bool)

(assert (=> b!6283658 (= e!3821219 (nullableZipper!1973 (derivationStepZipper!2169 lt!2354662 (head!12906 (t!378469 s!2326)))))))

(declare-fun b!6283659 () Bool)

(assert (=> b!6283659 (= e!3821219 (matchZipper!2215 (derivationStepZipper!2169 (derivationStepZipper!2169 lt!2354662 (head!12906 (t!378469 s!2326))) (head!12906 (tail!11991 (t!378469 s!2326)))) (tail!11991 (tail!11991 (t!378469 s!2326)))))))

(assert (= (and d!1972325 c!1139782) b!6283658))

(assert (= (and d!1972325 (not c!1139782)) b!6283659))

(assert (=> d!1972325 m!7102540))

(assert (=> d!1972325 m!7103958))

(assert (=> b!6283658 m!7102574))

(declare-fun m!7104698 () Bool)

(assert (=> b!6283658 m!7104698))

(assert (=> b!6283659 m!7102540))

(assert (=> b!6283659 m!7103962))

(assert (=> b!6283659 m!7102574))

(assert (=> b!6283659 m!7103962))

(declare-fun m!7104700 () Bool)

(assert (=> b!6283659 m!7104700))

(assert (=> b!6283659 m!7102540))

(assert (=> b!6283659 m!7103966))

(assert (=> b!6283659 m!7104700))

(assert (=> b!6283659 m!7103966))

(declare-fun m!7104702 () Bool)

(assert (=> b!6283659 m!7104702))

(assert (=> b!6281579 d!1972325))

(declare-fun bs!1570611 () Bool)

(declare-fun d!1972327 () Bool)

(assert (= bs!1570611 (and d!1972327 d!1971429)))

(declare-fun lambda!344761 () Int)

(assert (=> bs!1570611 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344761 lambda!344613))))

(declare-fun bs!1570612 () Bool)

(assert (= bs!1570612 (and d!1972327 d!1972307)))

(assert (=> bs!1570612 (= lambda!344761 lambda!344759)))

(declare-fun bs!1570613 () Bool)

(assert (= bs!1570613 (and d!1972327 b!6280977)))

(assert (=> bs!1570613 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344761 lambda!344509))))

(declare-fun bs!1570614 () Bool)

(assert (= bs!1570614 (and d!1972327 d!1972021)))

(assert (=> bs!1570614 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344761 lambda!344702))))

(declare-fun bs!1570615 () Bool)

(assert (= bs!1570615 (and d!1972327 d!1972273)))

(assert (=> bs!1570615 (= lambda!344761 lambda!344754)))

(declare-fun bs!1570616 () Bool)

(assert (= bs!1570616 (and d!1972327 d!1972011)))

(assert (=> bs!1570616 (= lambda!344761 lambda!344701)))

(declare-fun bs!1570617 () Bool)

(assert (= bs!1570617 (and d!1972327 d!1972217)))

(assert (=> bs!1570617 (= lambda!344761 lambda!344744)))

(declare-fun bs!1570618 () Bool)

(assert (= bs!1570618 (and d!1972327 d!1972179)))

(assert (=> bs!1570618 (= lambda!344761 lambda!344739)))

(declare-fun bs!1570619 () Bool)

(assert (= bs!1570619 (and d!1972327 d!1972199)))

(assert (=> bs!1570619 (= (= (head!12906 (t!378469 s!2326)) (head!12906 s!2326)) (= lambda!344761 lambda!344743))))

(declare-fun bs!1570620 () Bool)

(assert (= bs!1570620 (and d!1972327 d!1971965)))

(assert (=> bs!1570620 (= lambda!344761 lambda!344697)))

(declare-fun bs!1570621 () Bool)

(assert (= bs!1570621 (and d!1972327 d!1972289)))

(assert (=> bs!1570621 (= lambda!344761 lambda!344757)))

(declare-fun bs!1570622 () Bool)

(assert (= bs!1570622 (and d!1972327 d!1972141)))

(assert (=> bs!1570622 (= lambda!344761 lambda!344724)))

(declare-fun bs!1570623 () Bool)

(assert (= bs!1570623 (and d!1972327 d!1971409)))

(assert (=> bs!1570623 (= (= (head!12906 (t!378469 s!2326)) (h!71233 s!2326)) (= lambda!344761 lambda!344611))))

(declare-fun bs!1570624 () Bool)

(assert (= bs!1570624 (and d!1972327 d!1972295)))

(assert (=> bs!1570624 (= lambda!344761 lambda!344758)))

(assert (=> d!1972327 true))

(assert (=> d!1972327 (= (derivationStepZipper!2169 lt!2354662 (head!12906 (t!378469 s!2326))) (flatMap!1708 lt!2354662 lambda!344761))))

(declare-fun bs!1570625 () Bool)

(assert (= bs!1570625 d!1972327))

(declare-fun m!7104704 () Bool)

(assert (=> bs!1570625 m!7104704))

(assert (=> b!6281579 d!1972327))

(assert (=> b!6281579 d!1971967))

(assert (=> b!6281579 d!1971969))

(declare-fun bs!1570626 () Bool)

(declare-fun d!1972329 () Bool)

(assert (= bs!1570626 (and d!1972329 d!1972033)))

(declare-fun lambda!344762 () Int)

(assert (=> bs!1570626 (= lambda!344762 lambda!344703)))

(declare-fun bs!1570627 () Bool)

(assert (= bs!1570627 (and d!1972329 b!6281684)))

(assert (=> bs!1570627 (not (= lambda!344762 lambda!344591))))

(declare-fun bs!1570628 () Bool)

(assert (= bs!1570628 (and d!1972329 d!1972165)))

(assert (=> bs!1570628 (not (= lambda!344762 lambda!344737))))

(declare-fun bs!1570629 () Bool)

(assert (= bs!1570629 (and d!1972329 d!1972245)))

(assert (=> bs!1570629 (= lambda!344762 lambda!344747)))

(declare-fun bs!1570630 () Bool)

(assert (= bs!1570630 (and d!1972329 d!1972279)))

(assert (=> bs!1570630 (= lambda!344762 lambda!344755)))

(declare-fun bs!1570631 () Bool)

(assert (= bs!1570631 (and d!1972329 b!6281681)))

(assert (=> bs!1570631 (not (= lambda!344762 lambda!344589))))

(declare-fun bs!1570632 () Bool)

(assert (= bs!1570632 (and d!1972329 b!6283575)))

(assert (=> bs!1570632 (not (= lambda!344762 lambda!344752))))

(declare-fun bs!1570633 () Bool)

(assert (= bs!1570633 (and d!1972329 d!1972281)))

(assert (=> bs!1570633 (= lambda!344762 lambda!344756)))

(declare-fun bs!1570634 () Bool)

(assert (= bs!1570634 (and d!1972329 d!1971997)))

(assert (=> bs!1570634 (= lambda!344762 lambda!344700)))

(declare-fun bs!1570635 () Bool)

(assert (= bs!1570635 (and d!1972329 b!6281686)))

(assert (=> bs!1570635 (not (= lambda!344762 lambda!344592))))

(declare-fun bs!1570636 () Bool)

(assert (= bs!1570636 (and d!1972329 b!6283418)))

(assert (=> bs!1570636 (not (= lambda!344762 lambda!344734))))

(declare-fun bs!1570637 () Bool)

(assert (= bs!1570637 (and d!1972329 b!6283577)))

(assert (=> bs!1570637 (not (= lambda!344762 lambda!344753))))

(declare-fun bs!1570638 () Bool)

(assert (= bs!1570638 (and d!1972329 d!1972097)))

(assert (=> bs!1570638 (= lambda!344762 lambda!344722)))

(declare-fun bs!1570639 () Bool)

(assert (= bs!1570639 (and d!1972329 d!1972257)))

(assert (=> bs!1570639 (not (= lambda!344762 lambda!344750))))

(declare-fun bs!1570640 () Bool)

(assert (= bs!1570640 (and d!1972329 d!1972233)))

(assert (=> bs!1570640 (= lambda!344762 lambda!344746)))

(declare-fun bs!1570641 () Bool)

(assert (= bs!1570641 (and d!1972329 b!6283416)))

(assert (=> bs!1570641 (not (= lambda!344762 lambda!344733))))

(declare-fun bs!1570642 () Bool)

(assert (= bs!1570642 (and d!1972329 b!6281679)))

(assert (=> bs!1570642 (not (= lambda!344762 lambda!344588))))

(declare-fun bs!1570643 () Bool)

(assert (= bs!1570643 (and d!1972329 d!1972071)))

(assert (=> bs!1570643 (= lambda!344762 lambda!344716)))

(declare-fun bs!1570644 () Bool)

(assert (= bs!1570644 (and d!1972329 d!1972169)))

(assert (=> bs!1570644 (= lambda!344762 lambda!344738)))

(assert (=> d!1972329 (= (nullableZipper!1973 ((_ map or) lt!2354662 lt!2354634)) (exists!2527 ((_ map or) lt!2354662 lt!2354634) lambda!344762))))

(declare-fun bs!1570645 () Bool)

(assert (= bs!1570645 d!1972329))

(declare-fun m!7104706 () Bool)

(assert (=> bs!1570645 m!7104706))

(assert (=> b!6281909 d!1972329))

(declare-fun b!6283660 () Bool)

(declare-fun e!3821222 () Bool)

(declare-fun call!531965 () Bool)

(assert (=> b!6283660 (= e!3821222 call!531965)))

(declare-fun b!6283661 () Bool)

(declare-fun e!3821225 () Bool)

(declare-fun e!3821221 () Bool)

(assert (=> b!6283661 (= e!3821225 e!3821221)))

(declare-fun res!2591429 () Bool)

(assert (=> b!6283661 (=> (not res!2591429) (not e!3821221))))

(assert (=> b!6283661 (= res!2591429 (and (not ((_ is EmptyLang!16203) (regOne!32918 (regOne!32918 r!7292)))) (not ((_ is ElementMatch!16203) (regOne!32918 (regOne!32918 r!7292))))))))

(declare-fun b!6283662 () Bool)

(declare-fun e!3821220 () Bool)

(assert (=> b!6283662 (= e!3821220 e!3821222)))

(declare-fun res!2591432 () Bool)

(declare-fun call!531966 () Bool)

(assert (=> b!6283662 (= res!2591432 call!531966)))

(assert (=> b!6283662 (=> res!2591432 e!3821222)))

(declare-fun b!6283663 () Bool)

(declare-fun e!3821224 () Bool)

(assert (=> b!6283663 (= e!3821220 e!3821224)))

(declare-fun res!2591430 () Bool)

(assert (=> b!6283663 (= res!2591430 call!531966)))

(assert (=> b!6283663 (=> (not res!2591430) (not e!3821224))))

(declare-fun d!1972331 () Bool)

(declare-fun res!2591428 () Bool)

(assert (=> d!1972331 (=> res!2591428 e!3821225)))

(assert (=> d!1972331 (= res!2591428 ((_ is EmptyExpr!16203) (regOne!32918 (regOne!32918 r!7292))))))

(assert (=> d!1972331 (= (nullableFct!2147 (regOne!32918 (regOne!32918 r!7292))) e!3821225)))

(declare-fun b!6283664 () Bool)

(declare-fun e!3821223 () Bool)

(assert (=> b!6283664 (= e!3821221 e!3821223)))

(declare-fun res!2591431 () Bool)

(assert (=> b!6283664 (=> res!2591431 e!3821223)))

(assert (=> b!6283664 (= res!2591431 ((_ is Star!16203) (regOne!32918 (regOne!32918 r!7292))))))

(declare-fun b!6283665 () Bool)

(assert (=> b!6283665 (= e!3821223 e!3821220)))

(declare-fun c!1139783 () Bool)

(assert (=> b!6283665 (= c!1139783 ((_ is Union!16203) (regOne!32918 (regOne!32918 r!7292))))))

(declare-fun bm!531960 () Bool)

(assert (=> bm!531960 (= call!531966 (nullable!6196 (ite c!1139783 (regOne!32919 (regOne!32918 (regOne!32918 r!7292))) (regOne!32918 (regOne!32918 (regOne!32918 r!7292))))))))

(declare-fun b!6283666 () Bool)

(assert (=> b!6283666 (= e!3821224 call!531965)))

(declare-fun bm!531961 () Bool)

(assert (=> bm!531961 (= call!531965 (nullable!6196 (ite c!1139783 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))))))))

(assert (= (and d!1972331 (not res!2591428)) b!6283661))

(assert (= (and b!6283661 res!2591429) b!6283664))

(assert (= (and b!6283664 (not res!2591431)) b!6283665))

(assert (= (and b!6283665 c!1139783) b!6283662))

(assert (= (and b!6283665 (not c!1139783)) b!6283663))

(assert (= (and b!6283662 (not res!2591432)) b!6283660))

(assert (= (and b!6283663 res!2591430) b!6283666))

(assert (= (or b!6283660 b!6283666) bm!531961))

(assert (= (or b!6283662 b!6283663) bm!531960))

(declare-fun m!7104708 () Bool)

(assert (=> bm!531960 m!7104708))

(declare-fun m!7104710 () Bool)

(assert (=> bm!531961 m!7104710))

(assert (=> d!1971323 d!1972331))

(assert (=> d!1971295 d!1971291))

(declare-fun d!1972333 () Bool)

(assert (=> d!1972333 (= (Exists!3273 lambda!344568) (choose!46643 lambda!344568))))

(declare-fun bs!1570646 () Bool)

(assert (= bs!1570646 d!1972333))

(declare-fun m!7104712 () Bool)

(assert (=> bs!1570646 m!7104712))

(assert (=> d!1971295 d!1972333))

(assert (=> d!1971295 d!1972053))

(assert (=> d!1971295 d!1971299))

(declare-fun bs!1570647 () Bool)

(declare-fun d!1972335 () Bool)

(assert (= bs!1570647 (and d!1972335 d!1971375)))

(declare-fun lambda!344763 () Int)

(assert (=> bs!1570647 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344763 lambda!344605))))

(declare-fun bs!1570648 () Bool)

(assert (= bs!1570648 (and d!1972335 d!1971297)))

(assert (=> bs!1570648 (not (= lambda!344763 lambda!344574))))

(declare-fun bs!1570649 () Bool)

(assert (= bs!1570649 (and d!1972335 b!6281727)))

(assert (=> bs!1570649 (not (= lambda!344763 lambda!344599))))

(declare-fun bs!1570650 () Bool)

(assert (= bs!1570650 (and d!1972335 b!6283024)))

(assert (=> bs!1570650 (not (= lambda!344763 lambda!344696))))

(declare-fun bs!1570651 () Bool)

(assert (= bs!1570651 (and d!1972335 d!1971295)))

(assert (=> bs!1570651 (= lambda!344763 lambda!344568)))

(assert (=> bs!1570648 (= lambda!344763 lambda!344573)))

(declare-fun bs!1570652 () Bool)

(assert (= bs!1570652 (and d!1972335 d!1971365)))

(assert (=> bs!1570652 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344763 lambda!344603))))

(declare-fun bs!1570653 () Bool)

(assert (= bs!1570653 (and d!1972335 b!6281621)))

(assert (=> bs!1570653 (not (= lambda!344763 lambda!344580))))

(declare-fun bs!1570654 () Bool)

(assert (= bs!1570654 (and d!1972335 b!6280970)))

(assert (=> bs!1570654 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344763 lambda!344510))))

(assert (=> bs!1570654 (not (= lambda!344763 lambda!344511))))

(declare-fun bs!1570655 () Bool)

(assert (= bs!1570655 (and d!1972335 d!1972051)))

(assert (=> bs!1570655 (= lambda!344763 lambda!344710)))

(declare-fun bs!1570656 () Bool)

(assert (= bs!1570656 (and d!1972335 b!6283270)))

(assert (=> bs!1570656 (not (= lambda!344763 lambda!344715))))

(declare-fun bs!1570657 () Bool)

(assert (= bs!1570657 (and d!1972335 b!6280967)))

(assert (=> bs!1570657 (not (= lambda!344763 lambda!344508))))

(declare-fun bs!1570658 () Bool)

(assert (= bs!1570658 (and d!1972335 b!6283300)))

(assert (=> bs!1570658 (not (= lambda!344763 lambda!344718))))

(declare-fun bs!1570659 () Bool)

(assert (= bs!1570659 (and d!1972335 b!6283306)))

(assert (=> bs!1570659 (not (= lambda!344763 lambda!344717))))

(assert (=> bs!1570647 (not (= lambda!344763 lambda!344606))))

(declare-fun bs!1570660 () Bool)

(assert (= bs!1570660 (and d!1972335 b!6283228)))

(assert (=> bs!1570660 (not (= lambda!344763 lambda!344704))))

(declare-fun bs!1570661 () Bool)

(assert (= bs!1570661 (and d!1972335 b!6281826)))

(assert (=> bs!1570661 (not (= lambda!344763 lambda!344608))))

(declare-fun bs!1570662 () Bool)

(assert (= bs!1570662 (and d!1972335 b!6281721)))

(assert (=> bs!1570662 (not (= lambda!344763 lambda!344600))))

(declare-fun bs!1570663 () Bool)

(assert (= bs!1570663 (and d!1972335 b!6283030)))

(assert (=> bs!1570663 (not (= lambda!344763 lambda!344695))))

(declare-fun bs!1570664 () Bool)

(assert (= bs!1570664 (and d!1972335 b!6281627)))

(assert (=> bs!1570664 (not (= lambda!344763 lambda!344579))))

(assert (=> bs!1570657 (= lambda!344763 lambda!344507)))

(assert (=> bs!1570655 (not (= lambda!344763 lambda!344711))))

(declare-fun bs!1570665 () Bool)

(assert (= bs!1570665 (and d!1972335 b!6281832)))

(assert (=> bs!1570665 (not (= lambda!344763 lambda!344607))))

(declare-fun bs!1570666 () Bool)

(assert (= bs!1570666 (and d!1972335 b!6283222)))

(assert (=> bs!1570666 (not (= lambda!344763 lambda!344705))))

(declare-fun bs!1570667 () Bool)

(assert (= bs!1570667 (and d!1972335 d!1972095)))

(assert (=> bs!1570667 (= (and (= (regOne!32918 r!7292) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 r!7292) lt!2354652)) (= lambda!344763 lambda!344721))))

(declare-fun bs!1570668 () Bool)

(assert (= bs!1570668 (and d!1972335 b!6283276)))

(assert (=> bs!1570668 (not (= lambda!344763 lambda!344714))))

(declare-fun bs!1570669 () Bool)

(assert (= bs!1570669 (and d!1972335 b!6283446)))

(assert (=> bs!1570669 (not (= lambda!344763 lambda!344741))))

(declare-fun bs!1570670 () Bool)

(assert (= bs!1570670 (and d!1972335 b!6283452)))

(assert (=> bs!1570670 (not (= lambda!344763 lambda!344740))))

(assert (=> d!1972335 true))

(assert (=> d!1972335 true))

(assert (=> d!1972335 true))

(assert (=> d!1972335 (= (isDefined!12797 (findConcatSeparation!2508 (regOne!32918 r!7292) (regTwo!32918 r!7292) Nil!64785 s!2326 s!2326)) (Exists!3273 lambda!344763))))

(assert (=> d!1972335 true))

(declare-fun _$89!2481 () Unit!158143)

(assert (=> d!1972335 (= (choose!46644 (regOne!32918 r!7292) (regTwo!32918 r!7292) s!2326) _$89!2481)))

(declare-fun bs!1570671 () Bool)

(assert (= bs!1570671 d!1972335))

(assert (=> bs!1570671 m!7101896))

(assert (=> bs!1570671 m!7101896))

(assert (=> bs!1570671 m!7101898))

(declare-fun m!7104714 () Bool)

(assert (=> bs!1570671 m!7104714))

(assert (=> d!1971295 d!1972335))

(assert (=> b!6281810 d!1972023))

(assert (=> b!6281810 d!1972005))

(declare-fun d!1972337 () Bool)

(declare-fun res!2591437 () Bool)

(declare-fun e!3821230 () Bool)

(assert (=> d!1972337 (=> res!2591437 e!3821230)))

(assert (=> d!1972337 (= res!2591437 ((_ is Nil!64786) lt!2354793))))

(assert (=> d!1972337 (= (noDuplicate!2037 lt!2354793) e!3821230)))

(declare-fun b!6283671 () Bool)

(declare-fun e!3821231 () Bool)

(assert (=> b!6283671 (= e!3821230 e!3821231)))

(declare-fun res!2591438 () Bool)

(assert (=> b!6283671 (=> (not res!2591438) (not e!3821231))))

(declare-fun contains!20125 (List!64910 Context!11174) Bool)

(assert (=> b!6283671 (= res!2591438 (not (contains!20125 (t!378470 lt!2354793) (h!71234 lt!2354793))))))

(declare-fun b!6283672 () Bool)

(assert (=> b!6283672 (= e!3821231 (noDuplicate!2037 (t!378470 lt!2354793)))))

(assert (= (and d!1972337 (not res!2591437)) b!6283671))

(assert (= (and b!6283671 res!2591438) b!6283672))

(declare-fun m!7104716 () Bool)

(assert (=> b!6283671 m!7104716))

(declare-fun m!7104718 () Bool)

(assert (=> b!6283672 m!7104718))

(assert (=> d!1971333 d!1972337))

(declare-fun d!1972339 () Bool)

(declare-fun e!3821238 () Bool)

(assert (=> d!1972339 e!3821238))

(declare-fun res!2591443 () Bool)

(assert (=> d!1972339 (=> (not res!2591443) (not e!3821238))))

(declare-fun res!2591444 () List!64910)

(assert (=> d!1972339 (= res!2591443 (noDuplicate!2037 res!2591444))))

(declare-fun e!3821239 () Bool)

(assert (=> d!1972339 e!3821239))

(assert (=> d!1972339 (= (choose!46650 z!1189) res!2591444)))

(declare-fun b!6283680 () Bool)

(declare-fun e!3821240 () Bool)

(declare-fun tp!1750770 () Bool)

(assert (=> b!6283680 (= e!3821240 tp!1750770)))

(declare-fun b!6283679 () Bool)

(declare-fun tp!1750769 () Bool)

(assert (=> b!6283679 (= e!3821239 (and (inv!83754 (h!71234 res!2591444)) e!3821240 tp!1750769))))

(declare-fun b!6283681 () Bool)

(assert (=> b!6283681 (= e!3821238 (= (content!12178 res!2591444) z!1189))))

(assert (= b!6283679 b!6283680))

(assert (= (and d!1972339 ((_ is Cons!64786) res!2591444)) b!6283679))

(assert (= (and d!1972339 res!2591443) b!6283681))

(declare-fun m!7104720 () Bool)

(assert (=> d!1972339 m!7104720))

(declare-fun m!7104722 () Bool)

(assert (=> b!6283679 m!7104722))

(declare-fun m!7104724 () Bool)

(assert (=> b!6283681 m!7104724))

(assert (=> d!1971333 d!1972339))

(declare-fun d!1972341 () Bool)

(assert (=> d!1972341 (= (flatMap!1708 lt!2354675 lambda!344613) (choose!46647 lt!2354675 lambda!344613))))

(declare-fun bs!1570672 () Bool)

(assert (= bs!1570672 d!1972341))

(declare-fun m!7104726 () Bool)

(assert (=> bs!1570672 m!7104726))

(assert (=> d!1971429 d!1972341))

(assert (=> b!6281534 d!1972149))

(assert (=> b!6281534 d!1972151))

(assert (=> b!6281534 d!1972153))

(declare-fun b!6283682 () Bool)

(declare-fun e!3821242 () Bool)

(assert (=> b!6283682 (= e!3821242 (matchR!8386 (regTwo!32918 r!7292) (t!378469 s!2326)))))

(declare-fun b!6283683 () Bool)

(declare-fun e!3821243 () Bool)

(declare-fun lt!2354989 () Option!16094)

(assert (=> b!6283683 (= e!3821243 (not (isDefined!12797 lt!2354989)))))

(declare-fun b!6283684 () Bool)

(declare-fun e!3821244 () Bool)

(assert (=> b!6283684 (= e!3821244 (= (++!14276 (_1!36485 (get!22393 lt!2354989)) (_2!36485 (get!22393 lt!2354989))) s!2326))))

(declare-fun b!6283685 () Bool)

(declare-fun e!3821241 () Option!16094)

(assert (=> b!6283685 (= e!3821241 None!16093)))

(declare-fun d!1972343 () Bool)

(assert (=> d!1972343 e!3821243))

(declare-fun res!2591447 () Bool)

(assert (=> d!1972343 (=> res!2591447 e!3821243)))

(assert (=> d!1972343 (= res!2591447 e!3821244)))

(declare-fun res!2591448 () Bool)

(assert (=> d!1972343 (=> (not res!2591448) (not e!3821244))))

(assert (=> d!1972343 (= res!2591448 (isDefined!12797 lt!2354989))))

(declare-fun e!3821245 () Option!16094)

(assert (=> d!1972343 (= lt!2354989 e!3821245)))

(declare-fun c!1139785 () Bool)

(assert (=> d!1972343 (= c!1139785 e!3821242)))

(declare-fun res!2591445 () Bool)

(assert (=> d!1972343 (=> (not res!2591445) (not e!3821242))))

(assert (=> d!1972343 (= res!2591445 (matchR!8386 (regOne!32918 r!7292) (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785))))))

(assert (=> d!1972343 (validRegex!7939 (regOne!32918 r!7292))))

(assert (=> d!1972343 (= (findConcatSeparation!2508 (regOne!32918 r!7292) (regTwo!32918 r!7292) (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (t!378469 s!2326) s!2326) lt!2354989)))

(declare-fun b!6283686 () Bool)

(assert (=> b!6283686 (= e!3821245 (Some!16093 (tuple2!66365 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (t!378469 s!2326))))))

(declare-fun b!6283687 () Bool)

(declare-fun lt!2354988 () Unit!158143)

(declare-fun lt!2354990 () Unit!158143)

(assert (=> b!6283687 (= lt!2354988 lt!2354990)))

(assert (=> b!6283687 (= (++!14276 (++!14276 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (Cons!64785 (h!71233 (t!378469 s!2326)) Nil!64785)) (t!378469 (t!378469 s!2326))) s!2326)))

(assert (=> b!6283687 (= lt!2354990 (lemmaMoveElementToOtherListKeepsConcatEq!2371 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (h!71233 (t!378469 s!2326)) (t!378469 (t!378469 s!2326)) s!2326))))

(assert (=> b!6283687 (= e!3821241 (findConcatSeparation!2508 (regOne!32918 r!7292) (regTwo!32918 r!7292) (++!14276 (++!14276 Nil!64785 (Cons!64785 (h!71233 s!2326) Nil!64785)) (Cons!64785 (h!71233 (t!378469 s!2326)) Nil!64785)) (t!378469 (t!378469 s!2326)) s!2326))))

(declare-fun b!6283688 () Bool)

(declare-fun res!2591449 () Bool)

(assert (=> b!6283688 (=> (not res!2591449) (not e!3821244))))

(assert (=> b!6283688 (= res!2591449 (matchR!8386 (regTwo!32918 r!7292) (_2!36485 (get!22393 lt!2354989))))))

(declare-fun b!6283689 () Bool)

(assert (=> b!6283689 (= e!3821245 e!3821241)))

(declare-fun c!1139784 () Bool)

(assert (=> b!6283689 (= c!1139784 ((_ is Nil!64785) (t!378469 s!2326)))))

(declare-fun b!6283690 () Bool)

(declare-fun res!2591446 () Bool)

(assert (=> b!6283690 (=> (not res!2591446) (not e!3821244))))

(assert (=> b!6283690 (= res!2591446 (matchR!8386 (regOne!32918 r!7292) (_1!36485 (get!22393 lt!2354989))))))

(assert (= (and d!1972343 res!2591445) b!6283682))

(assert (= (and d!1972343 c!1139785) b!6283686))

(assert (= (and d!1972343 (not c!1139785)) b!6283689))

(assert (= (and b!6283689 c!1139784) b!6283685))

(assert (= (and b!6283689 (not c!1139784)) b!6283687))

(assert (= (and d!1972343 res!2591448) b!6283690))

(assert (= (and b!6283690 res!2591446) b!6283688))

(assert (= (and b!6283688 res!2591449) b!6283684))

(assert (= (and d!1972343 (not res!2591447)) b!6283683))

(declare-fun m!7104728 () Bool)

(assert (=> d!1972343 m!7104728))

(assert (=> d!1972343 m!7102500))

(declare-fun m!7104730 () Bool)

(assert (=> d!1972343 m!7104730))

(assert (=> d!1972343 m!7102498))

(assert (=> b!6283687 m!7102500))

(assert (=> b!6283687 m!7104316))

(assert (=> b!6283687 m!7104316))

(assert (=> b!6283687 m!7104318))

(assert (=> b!6283687 m!7102500))

(assert (=> b!6283687 m!7104320))

(assert (=> b!6283687 m!7104316))

(declare-fun m!7104732 () Bool)

(assert (=> b!6283687 m!7104732))

(declare-fun m!7104734 () Bool)

(assert (=> b!6283688 m!7104734))

(declare-fun m!7104736 () Bool)

(assert (=> b!6283688 m!7104736))

(assert (=> b!6283683 m!7104728))

(declare-fun m!7104738 () Bool)

(assert (=> b!6283682 m!7104738))

(assert (=> b!6283690 m!7104734))

(declare-fun m!7104740 () Bool)

(assert (=> b!6283690 m!7104740))

(assert (=> b!6283684 m!7104734))

(declare-fun m!7104742 () Bool)

(assert (=> b!6283684 m!7104742))

(assert (=> b!6281534 d!1972343))

(declare-fun d!1972345 () Bool)

(assert (=> d!1972345 (= (head!12907 lt!2354639) (h!71232 lt!2354639))))

(assert (=> b!6281793 d!1972345))

(declare-fun d!1972347 () Bool)

(assert (=> d!1972347 (= (isEmptyLang!1616 lt!2354841) ((_ is EmptyLang!16203) lt!2354841))))

(assert (=> b!6281966 d!1972347))

(declare-fun bs!1570673 () Bool)

(declare-fun d!1972349 () Bool)

(assert (= bs!1570673 (and d!1972349 d!1972033)))

(declare-fun lambda!344764 () Int)

(assert (=> bs!1570673 (= lambda!344764 lambda!344703)))

(declare-fun bs!1570674 () Bool)

(assert (= bs!1570674 (and d!1972349 b!6281684)))

(assert (=> bs!1570674 (not (= lambda!344764 lambda!344591))))

(declare-fun bs!1570675 () Bool)

(assert (= bs!1570675 (and d!1972349 d!1972165)))

(assert (=> bs!1570675 (not (= lambda!344764 lambda!344737))))

(declare-fun bs!1570676 () Bool)

(assert (= bs!1570676 (and d!1972349 d!1972245)))

(assert (=> bs!1570676 (= lambda!344764 lambda!344747)))

(declare-fun bs!1570677 () Bool)

(assert (= bs!1570677 (and d!1972349 d!1972279)))

(assert (=> bs!1570677 (= lambda!344764 lambda!344755)))

(declare-fun bs!1570678 () Bool)

(assert (= bs!1570678 (and d!1972349 b!6281681)))

(assert (=> bs!1570678 (not (= lambda!344764 lambda!344589))))

(declare-fun bs!1570679 () Bool)

(assert (= bs!1570679 (and d!1972349 d!1972329)))

(assert (=> bs!1570679 (= lambda!344764 lambda!344762)))

(declare-fun bs!1570680 () Bool)

(assert (= bs!1570680 (and d!1972349 b!6283575)))

(assert (=> bs!1570680 (not (= lambda!344764 lambda!344752))))

(declare-fun bs!1570681 () Bool)

(assert (= bs!1570681 (and d!1972349 d!1972281)))

(assert (=> bs!1570681 (= lambda!344764 lambda!344756)))

(declare-fun bs!1570682 () Bool)

(assert (= bs!1570682 (and d!1972349 d!1971997)))

(assert (=> bs!1570682 (= lambda!344764 lambda!344700)))

(declare-fun bs!1570683 () Bool)

(assert (= bs!1570683 (and d!1972349 b!6281686)))

(assert (=> bs!1570683 (not (= lambda!344764 lambda!344592))))

(declare-fun bs!1570684 () Bool)

(assert (= bs!1570684 (and d!1972349 b!6283418)))

(assert (=> bs!1570684 (not (= lambda!344764 lambda!344734))))

(declare-fun bs!1570685 () Bool)

(assert (= bs!1570685 (and d!1972349 b!6283577)))

(assert (=> bs!1570685 (not (= lambda!344764 lambda!344753))))

(declare-fun bs!1570686 () Bool)

(assert (= bs!1570686 (and d!1972349 d!1972097)))

(assert (=> bs!1570686 (= lambda!344764 lambda!344722)))

(declare-fun bs!1570687 () Bool)

(assert (= bs!1570687 (and d!1972349 d!1972257)))

(assert (=> bs!1570687 (not (= lambda!344764 lambda!344750))))

(declare-fun bs!1570688 () Bool)

(assert (= bs!1570688 (and d!1972349 d!1972233)))

(assert (=> bs!1570688 (= lambda!344764 lambda!344746)))

(declare-fun bs!1570689 () Bool)

(assert (= bs!1570689 (and d!1972349 b!6283416)))

(assert (=> bs!1570689 (not (= lambda!344764 lambda!344733))))

(declare-fun bs!1570690 () Bool)

(assert (= bs!1570690 (and d!1972349 b!6281679)))

(assert (=> bs!1570690 (not (= lambda!344764 lambda!344588))))

(declare-fun bs!1570691 () Bool)

(assert (= bs!1570691 (and d!1972349 d!1972071)))

(assert (=> bs!1570691 (= lambda!344764 lambda!344716)))

(declare-fun bs!1570692 () Bool)

(assert (= bs!1570692 (and d!1972349 d!1972169)))

(assert (=> bs!1570692 (= lambda!344764 lambda!344738)))

(assert (=> d!1972349 (= (nullableZipper!1973 (derivationStepZipper!2169 lt!2354666 (h!71233 s!2326))) (exists!2527 (derivationStepZipper!2169 lt!2354666 (h!71233 s!2326)) lambda!344764))))

(declare-fun bs!1570693 () Bool)

(assert (= bs!1570693 d!1972349))

(assert (=> bs!1570693 m!7101954))

(declare-fun m!7104744 () Bool)

(assert (=> bs!1570693 m!7104744))

(assert (=> b!6281904 d!1972349))

(declare-fun bs!1570694 () Bool)

(declare-fun b!6283701 () Bool)

(assert (= bs!1570694 (and b!6283701 d!1971375)))

(declare-fun lambda!344765 () Int)

(assert (=> bs!1570694 (not (= lambda!344765 lambda!344605))))

(declare-fun bs!1570695 () Bool)

(assert (= bs!1570695 (and b!6283701 d!1971297)))

(assert (=> bs!1570695 (not (= lambda!344765 lambda!344574))))

(declare-fun bs!1570696 () Bool)

(assert (= bs!1570696 (and b!6283701 b!6281727)))

(assert (=> bs!1570696 (= (and (= (reg!16532 (regOne!32919 r!7292)) (reg!16532 lt!2354656)) (= (regOne!32919 r!7292) lt!2354656)) (= lambda!344765 lambda!344599))))

(declare-fun bs!1570697 () Bool)

(assert (= bs!1570697 (and b!6283701 b!6283024)))

(assert (=> bs!1570697 (not (= lambda!344765 lambda!344696))))

(declare-fun bs!1570698 () Bool)

(assert (= bs!1570698 (and b!6283701 d!1971295)))

(assert (=> bs!1570698 (not (= lambda!344765 lambda!344568))))

(assert (=> bs!1570695 (not (= lambda!344765 lambda!344573))))

(declare-fun bs!1570699 () Bool)

(assert (= bs!1570699 (and b!6283701 d!1971365)))

(assert (=> bs!1570699 (not (= lambda!344765 lambda!344603))))

(declare-fun bs!1570700 () Bool)

(assert (= bs!1570700 (and b!6283701 b!6281621)))

(assert (=> bs!1570700 (not (= lambda!344765 lambda!344580))))

(declare-fun bs!1570701 () Bool)

(assert (= bs!1570701 (and b!6283701 b!6280970)))

(assert (=> bs!1570701 (not (= lambda!344765 lambda!344510))))

(assert (=> bs!1570701 (not (= lambda!344765 lambda!344511))))

(declare-fun bs!1570702 () Bool)

(assert (= bs!1570702 (and b!6283701 d!1972051)))

(assert (=> bs!1570702 (not (= lambda!344765 lambda!344710))))

(declare-fun bs!1570703 () Bool)

(assert (= bs!1570703 (and b!6283701 b!6283270)))

(assert (=> bs!1570703 (not (= lambda!344765 lambda!344715))))

(declare-fun bs!1570704 () Bool)

(assert (= bs!1570704 (and b!6283701 b!6280967)))

(assert (=> bs!1570704 (not (= lambda!344765 lambda!344508))))

(declare-fun bs!1570705 () Bool)

(assert (= bs!1570705 (and b!6283701 b!6283300)))

(assert (=> bs!1570705 (not (= lambda!344765 lambda!344718))))

(declare-fun bs!1570706 () Bool)

(assert (= bs!1570706 (and b!6283701 b!6283306)))

(assert (=> bs!1570706 (= (and (= (reg!16532 (regOne!32919 r!7292)) (reg!16532 (regTwo!32919 lt!2354656))) (= (regOne!32919 r!7292) (regTwo!32919 lt!2354656))) (= lambda!344765 lambda!344717))))

(assert (=> bs!1570694 (not (= lambda!344765 lambda!344606))))

(declare-fun bs!1570707 () Bool)

(assert (= bs!1570707 (and b!6283701 b!6283228)))

(assert (=> bs!1570707 (= (and (= (reg!16532 (regOne!32919 r!7292)) (reg!16532 (regTwo!32919 r!7292))) (= (regOne!32919 r!7292) (regTwo!32919 r!7292))) (= lambda!344765 lambda!344704))))

(declare-fun bs!1570708 () Bool)

(assert (= bs!1570708 (and b!6283701 b!6281826)))

(assert (=> bs!1570708 (not (= lambda!344765 lambda!344608))))

(declare-fun bs!1570709 () Bool)

(assert (= bs!1570709 (and b!6283701 b!6281721)))

(assert (=> bs!1570709 (not (= lambda!344765 lambda!344600))))

(declare-fun bs!1570710 () Bool)

(assert (= bs!1570710 (and b!6283701 b!6283030)))

(assert (=> bs!1570710 (= (and (= (reg!16532 (regOne!32919 r!7292)) (reg!16532 (regOne!32919 lt!2354656))) (= (regOne!32919 r!7292) (regOne!32919 lt!2354656))) (= lambda!344765 lambda!344695))))

(declare-fun bs!1570711 () Bool)

(assert (= bs!1570711 (and b!6283701 b!6281627)))

(assert (=> bs!1570711 (= (and (= (reg!16532 (regOne!32919 r!7292)) (reg!16532 r!7292)) (= (regOne!32919 r!7292) r!7292)) (= lambda!344765 lambda!344579))))

(assert (=> bs!1570704 (not (= lambda!344765 lambda!344507))))

(assert (=> bs!1570702 (not (= lambda!344765 lambda!344711))))

(declare-fun bs!1570712 () Bool)

(assert (= bs!1570712 (and b!6283701 b!6281832)))

(assert (=> bs!1570712 (= (and (= (reg!16532 (regOne!32919 r!7292)) (reg!16532 lt!2354652)) (= (regOne!32919 r!7292) lt!2354652)) (= lambda!344765 lambda!344607))))

(declare-fun bs!1570713 () Bool)

(assert (= bs!1570713 (and b!6283701 b!6283222)))

(assert (=> bs!1570713 (not (= lambda!344765 lambda!344705))))

(declare-fun bs!1570714 () Bool)

(assert (= bs!1570714 (and b!6283701 d!1972095)))

(assert (=> bs!1570714 (not (= lambda!344765 lambda!344721))))

(declare-fun bs!1570715 () Bool)

(assert (= bs!1570715 (and b!6283701 b!6283276)))

(assert (=> bs!1570715 (= (and (= (reg!16532 (regOne!32919 r!7292)) (reg!16532 (regOne!32919 lt!2354652))) (= (regOne!32919 r!7292) (regOne!32919 lt!2354652))) (= lambda!344765 lambda!344714))))

(declare-fun bs!1570716 () Bool)

(assert (= bs!1570716 (and b!6283701 b!6283446)))

(assert (=> bs!1570716 (not (= lambda!344765 lambda!344741))))

(declare-fun bs!1570717 () Bool)

(assert (= bs!1570717 (and b!6283701 d!1972335)))

(assert (=> bs!1570717 (not (= lambda!344765 lambda!344763))))

(declare-fun bs!1570718 () Bool)

(assert (= bs!1570718 (and b!6283701 b!6283452)))

(assert (=> bs!1570718 (= (and (= (reg!16532 (regOne!32919 r!7292)) (reg!16532 (regTwo!32919 lt!2354652))) (= (regOne!32919 r!7292) (regTwo!32919 lt!2354652))) (= lambda!344765 lambda!344740))))

(assert (=> b!6283701 true))

(assert (=> b!6283701 true))

(declare-fun bs!1570719 () Bool)

(declare-fun b!6283695 () Bool)

(assert (= bs!1570719 (and b!6283695 d!1971375)))

(declare-fun lambda!344766 () Int)

(assert (=> bs!1570719 (not (= lambda!344766 lambda!344605))))

(declare-fun bs!1570720 () Bool)

(assert (= bs!1570720 (and b!6283695 d!1971297)))

(assert (=> bs!1570720 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 r!7292)) (= (regTwo!32918 (regOne!32919 r!7292)) (regTwo!32918 r!7292))) (= lambda!344766 lambda!344574))))

(declare-fun bs!1570721 () Bool)

(assert (= bs!1570721 (and b!6283695 b!6281727)))

(assert (=> bs!1570721 (not (= lambda!344766 lambda!344599))))

(declare-fun bs!1570722 () Bool)

(assert (= bs!1570722 (and b!6283695 b!6283024)))

(assert (=> bs!1570722 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 (regOne!32919 lt!2354656))) (= (regTwo!32918 (regOne!32919 r!7292)) (regTwo!32918 (regOne!32919 lt!2354656)))) (= lambda!344766 lambda!344696))))

(declare-fun bs!1570723 () Bool)

(assert (= bs!1570723 (and b!6283695 d!1971295)))

(assert (=> bs!1570723 (not (= lambda!344766 lambda!344568))))

(assert (=> bs!1570720 (not (= lambda!344766 lambda!344573))))

(declare-fun bs!1570724 () Bool)

(assert (= bs!1570724 (and b!6283695 d!1971365)))

(assert (=> bs!1570724 (not (= lambda!344766 lambda!344603))))

(declare-fun bs!1570725 () Bool)

(assert (= bs!1570725 (and b!6283695 b!6281621)))

(assert (=> bs!1570725 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 r!7292)) (= (regTwo!32918 (regOne!32919 r!7292)) (regTwo!32918 r!7292))) (= lambda!344766 lambda!344580))))

(declare-fun bs!1570726 () Bool)

(assert (= bs!1570726 (and b!6283695 b!6280970)))

(assert (=> bs!1570726 (not (= lambda!344766 lambda!344510))))

(assert (=> bs!1570726 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 (regOne!32919 r!7292)) lt!2354652)) (= lambda!344766 lambda!344511))))

(declare-fun bs!1570727 () Bool)

(assert (= bs!1570727 (and b!6283695 d!1972051)))

(assert (=> bs!1570727 (not (= lambda!344766 lambda!344710))))

(declare-fun bs!1570728 () Bool)

(assert (= bs!1570728 (and b!6283695 b!6283270)))

(assert (=> bs!1570728 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 (regOne!32919 lt!2354652))) (= (regTwo!32918 (regOne!32919 r!7292)) (regTwo!32918 (regOne!32919 lt!2354652)))) (= lambda!344766 lambda!344715))))

(declare-fun bs!1570729 () Bool)

(assert (= bs!1570729 (and b!6283695 b!6283701)))

(assert (=> bs!1570729 (not (= lambda!344766 lambda!344765))))

(declare-fun bs!1570730 () Bool)

(assert (= bs!1570730 (and b!6283695 b!6280967)))

(assert (=> bs!1570730 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 r!7292)) (= (regTwo!32918 (regOne!32919 r!7292)) (regTwo!32918 r!7292))) (= lambda!344766 lambda!344508))))

(declare-fun bs!1570731 () Bool)

(assert (= bs!1570731 (and b!6283695 b!6283300)))

(assert (=> bs!1570731 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 (regTwo!32919 lt!2354656))) (= (regTwo!32918 (regOne!32919 r!7292)) (regTwo!32918 (regTwo!32919 lt!2354656)))) (= lambda!344766 lambda!344718))))

(declare-fun bs!1570732 () Bool)

(assert (= bs!1570732 (and b!6283695 b!6283306)))

(assert (=> bs!1570732 (not (= lambda!344766 lambda!344717))))

(assert (=> bs!1570719 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 (regOne!32918 r!7292))) (= (regTwo!32918 (regOne!32919 r!7292)) lt!2354652)) (= lambda!344766 lambda!344606))))

(declare-fun bs!1570733 () Bool)

(assert (= bs!1570733 (and b!6283695 b!6283228)))

(assert (=> bs!1570733 (not (= lambda!344766 lambda!344704))))

(declare-fun bs!1570734 () Bool)

(assert (= bs!1570734 (and b!6283695 b!6281826)))

(assert (=> bs!1570734 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 lt!2354652)) (= (regTwo!32918 (regOne!32919 r!7292)) (regTwo!32918 lt!2354652))) (= lambda!344766 lambda!344608))))

(declare-fun bs!1570735 () Bool)

(assert (= bs!1570735 (and b!6283695 b!6281721)))

(assert (=> bs!1570735 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 lt!2354656)) (= (regTwo!32918 (regOne!32919 r!7292)) (regTwo!32918 lt!2354656))) (= lambda!344766 lambda!344600))))

(declare-fun bs!1570736 () Bool)

(assert (= bs!1570736 (and b!6283695 b!6283030)))

(assert (=> bs!1570736 (not (= lambda!344766 lambda!344695))))

(declare-fun bs!1570737 () Bool)

(assert (= bs!1570737 (and b!6283695 b!6281627)))

(assert (=> bs!1570737 (not (= lambda!344766 lambda!344579))))

(assert (=> bs!1570730 (not (= lambda!344766 lambda!344507))))

(assert (=> bs!1570727 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 r!7292)) (= (regTwo!32918 (regOne!32919 r!7292)) (regTwo!32918 r!7292))) (= lambda!344766 lambda!344711))))

(declare-fun bs!1570738 () Bool)

(assert (= bs!1570738 (and b!6283695 b!6281832)))

(assert (=> bs!1570738 (not (= lambda!344766 lambda!344607))))

(declare-fun bs!1570739 () Bool)

(assert (= bs!1570739 (and b!6283695 b!6283222)))

(assert (=> bs!1570739 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 (regTwo!32919 r!7292))) (= (regTwo!32918 (regOne!32919 r!7292)) (regTwo!32918 (regTwo!32919 r!7292)))) (= lambda!344766 lambda!344705))))

(declare-fun bs!1570740 () Bool)

(assert (= bs!1570740 (and b!6283695 d!1972095)))

(assert (=> bs!1570740 (not (= lambda!344766 lambda!344721))))

(declare-fun bs!1570741 () Bool)

(assert (= bs!1570741 (and b!6283695 b!6283276)))

(assert (=> bs!1570741 (not (= lambda!344766 lambda!344714))))

(declare-fun bs!1570742 () Bool)

(assert (= bs!1570742 (and b!6283695 b!6283446)))

(assert (=> bs!1570742 (= (and (= (regOne!32918 (regOne!32919 r!7292)) (regOne!32918 (regTwo!32919 lt!2354652))) (= (regTwo!32918 (regOne!32919 r!7292)) (regTwo!32918 (regTwo!32919 lt!2354652)))) (= lambda!344766 lambda!344741))))

(declare-fun bs!1570743 () Bool)

(assert (= bs!1570743 (and b!6283695 d!1972335)))

(assert (=> bs!1570743 (not (= lambda!344766 lambda!344763))))

(declare-fun bs!1570744 () Bool)

(assert (= bs!1570744 (and b!6283695 b!6283452)))

(assert (=> bs!1570744 (not (= lambda!344766 lambda!344740))))

(assert (=> b!6283695 true))

(assert (=> b!6283695 true))

(declare-fun b!6283691 () Bool)

(declare-fun e!3821251 () Bool)

(declare-fun e!3821246 () Bool)

(assert (=> b!6283691 (= e!3821251 e!3821246)))

(declare-fun c!1139786 () Bool)

(assert (=> b!6283691 (= c!1139786 ((_ is Star!16203) (regOne!32919 r!7292)))))

(declare-fun b!6283692 () Bool)

(declare-fun e!3821250 () Bool)

(assert (=> b!6283692 (= e!3821251 e!3821250)))

(declare-fun res!2591452 () Bool)

(assert (=> b!6283692 (= res!2591452 (matchRSpec!3304 (regOne!32919 (regOne!32919 r!7292)) s!2326))))

(assert (=> b!6283692 (=> res!2591452 e!3821250)))

(declare-fun b!6283693 () Bool)

(declare-fun e!3821248 () Bool)

(declare-fun call!531968 () Bool)

(assert (=> b!6283693 (= e!3821248 call!531968)))

(declare-fun d!1972351 () Bool)

(declare-fun c!1139789 () Bool)

(assert (=> d!1972351 (= c!1139789 ((_ is EmptyExpr!16203) (regOne!32919 r!7292)))))

(assert (=> d!1972351 (= (matchRSpec!3304 (regOne!32919 r!7292) s!2326) e!3821248)))

(declare-fun b!6283694 () Bool)

(assert (=> b!6283694 (= e!3821250 (matchRSpec!3304 (regTwo!32919 (regOne!32919 r!7292)) s!2326))))

(declare-fun call!531967 () Bool)

(assert (=> b!6283695 (= e!3821246 call!531967)))

(declare-fun b!6283696 () Bool)

(declare-fun e!3821247 () Bool)

(assert (=> b!6283696 (= e!3821247 (= s!2326 (Cons!64785 (c!1138982 (regOne!32919 r!7292)) Nil!64785)))))

(declare-fun b!6283697 () Bool)

(declare-fun e!3821252 () Bool)

(assert (=> b!6283697 (= e!3821248 e!3821252)))

(declare-fun res!2591450 () Bool)

(assert (=> b!6283697 (= res!2591450 (not ((_ is EmptyLang!16203) (regOne!32919 r!7292))))))

(assert (=> b!6283697 (=> (not res!2591450) (not e!3821252))))

(declare-fun b!6283698 () Bool)

(declare-fun res!2591451 () Bool)

(declare-fun e!3821249 () Bool)

(assert (=> b!6283698 (=> res!2591451 e!3821249)))

(assert (=> b!6283698 (= res!2591451 call!531968)))

(assert (=> b!6283698 (= e!3821246 e!3821249)))

(declare-fun bm!531962 () Bool)

(assert (=> bm!531962 (= call!531968 (isEmpty!36834 s!2326))))

(declare-fun b!6283699 () Bool)

(declare-fun c!1139787 () Bool)

(assert (=> b!6283699 (= c!1139787 ((_ is Union!16203) (regOne!32919 r!7292)))))

(assert (=> b!6283699 (= e!3821247 e!3821251)))

(declare-fun b!6283700 () Bool)

(declare-fun c!1139788 () Bool)

(assert (=> b!6283700 (= c!1139788 ((_ is ElementMatch!16203) (regOne!32919 r!7292)))))

(assert (=> b!6283700 (= e!3821252 e!3821247)))

(assert (=> b!6283701 (= e!3821249 call!531967)))

(declare-fun bm!531963 () Bool)

(assert (=> bm!531963 (= call!531967 (Exists!3273 (ite c!1139786 lambda!344765 lambda!344766)))))

(assert (= (and d!1972351 c!1139789) b!6283693))

(assert (= (and d!1972351 (not c!1139789)) b!6283697))

(assert (= (and b!6283697 res!2591450) b!6283700))

(assert (= (and b!6283700 c!1139788) b!6283696))

(assert (= (and b!6283700 (not c!1139788)) b!6283699))

(assert (= (and b!6283699 c!1139787) b!6283692))

(assert (= (and b!6283699 (not c!1139787)) b!6283691))

(assert (= (and b!6283692 (not res!2591452)) b!6283694))

(assert (= (and b!6283691 c!1139786) b!6283698))

(assert (= (and b!6283691 (not c!1139786)) b!6283695))

(assert (= (and b!6283698 (not res!2591451)) b!6283701))

(assert (= (or b!6283701 b!6283695) bm!531963))

(assert (= (or b!6283693 b!6283698) bm!531962))

(declare-fun m!7104746 () Bool)

(assert (=> b!6283692 m!7104746))

(declare-fun m!7104748 () Bool)

(assert (=> b!6283694 m!7104748))

(assert (=> bm!531962 m!7102600))

(declare-fun m!7104750 () Bool)

(assert (=> bm!531963 m!7104750))

(assert (=> b!6281618 d!1972351))

(declare-fun b!6283702 () Bool)

(declare-fun e!3821256 () Bool)

(declare-fun e!3821254 () Bool)

(assert (=> b!6283702 (= e!3821256 e!3821254)))

(declare-fun res!2591455 () Bool)

(assert (=> b!6283702 (=> res!2591455 e!3821254)))

(declare-fun call!531969 () Bool)

(assert (=> b!6283702 (= res!2591455 call!531969)))

(declare-fun b!6283703 () Bool)

(declare-fun e!3821255 () Bool)

(assert (=> b!6283703 (= e!3821255 (= (head!12906 (tail!11991 s!2326)) (c!1138982 (derivativeStep!4912 lt!2354656 (head!12906 s!2326)))))))

(declare-fun b!6283704 () Bool)

(declare-fun res!2591458 () Bool)

(assert (=> b!6283704 (=> res!2591458 e!3821254)))

(assert (=> b!6283704 (= res!2591458 (not (isEmpty!36834 (tail!11991 (tail!11991 s!2326)))))))

(declare-fun b!6283706 () Bool)

(assert (=> b!6283706 (= e!3821254 (not (= (head!12906 (tail!11991 s!2326)) (c!1138982 (derivativeStep!4912 lt!2354656 (head!12906 s!2326))))))))

(declare-fun b!6283707 () Bool)

(declare-fun e!3821253 () Bool)

(declare-fun lt!2354991 () Bool)

(assert (=> b!6283707 (= e!3821253 (not lt!2354991))))

(declare-fun b!6283708 () Bool)

(declare-fun e!3821259 () Bool)

(assert (=> b!6283708 (= e!3821259 e!3821253)))

(declare-fun c!1139790 () Bool)

(assert (=> b!6283708 (= c!1139790 ((_ is EmptyLang!16203) (derivativeStep!4912 lt!2354656 (head!12906 s!2326))))))

(declare-fun bm!531964 () Bool)

(assert (=> bm!531964 (= call!531969 (isEmpty!36834 (tail!11991 s!2326)))))

(declare-fun b!6283709 () Bool)

(declare-fun res!2591460 () Bool)

(assert (=> b!6283709 (=> (not res!2591460) (not e!3821255))))

(assert (=> b!6283709 (= res!2591460 (not call!531969))))

(declare-fun b!6283710 () Bool)

(declare-fun e!3821258 () Bool)

(assert (=> b!6283710 (= e!3821258 (matchR!8386 (derivativeStep!4912 (derivativeStep!4912 lt!2354656 (head!12906 s!2326)) (head!12906 (tail!11991 s!2326))) (tail!11991 (tail!11991 s!2326))))))

(declare-fun b!6283711 () Bool)

(declare-fun e!3821257 () Bool)

(assert (=> b!6283711 (= e!3821257 e!3821256)))

(declare-fun res!2591457 () Bool)

(assert (=> b!6283711 (=> (not res!2591457) (not e!3821256))))

(assert (=> b!6283711 (= res!2591457 (not lt!2354991))))

(declare-fun b!6283705 () Bool)

(declare-fun res!2591456 () Bool)

(assert (=> b!6283705 (=> (not res!2591456) (not e!3821255))))

(assert (=> b!6283705 (= res!2591456 (isEmpty!36834 (tail!11991 (tail!11991 s!2326))))))

(declare-fun d!1972353 () Bool)

(assert (=> d!1972353 e!3821259))

(declare-fun c!1139791 () Bool)

(assert (=> d!1972353 (= c!1139791 ((_ is EmptyExpr!16203) (derivativeStep!4912 lt!2354656 (head!12906 s!2326))))))

(assert (=> d!1972353 (= lt!2354991 e!3821258)))

(declare-fun c!1139792 () Bool)

(assert (=> d!1972353 (= c!1139792 (isEmpty!36834 (tail!11991 s!2326)))))

(assert (=> d!1972353 (validRegex!7939 (derivativeStep!4912 lt!2354656 (head!12906 s!2326)))))

(assert (=> d!1972353 (= (matchR!8386 (derivativeStep!4912 lt!2354656 (head!12906 s!2326)) (tail!11991 s!2326)) lt!2354991)))

(declare-fun b!6283712 () Bool)

(declare-fun res!2591454 () Bool)

(assert (=> b!6283712 (=> res!2591454 e!3821257)))

(assert (=> b!6283712 (= res!2591454 (not ((_ is ElementMatch!16203) (derivativeStep!4912 lt!2354656 (head!12906 s!2326)))))))

(assert (=> b!6283712 (= e!3821253 e!3821257)))

(declare-fun b!6283713 () Bool)

(assert (=> b!6283713 (= e!3821259 (= lt!2354991 call!531969))))

(declare-fun b!6283714 () Bool)

(assert (=> b!6283714 (= e!3821258 (nullable!6196 (derivativeStep!4912 lt!2354656 (head!12906 s!2326))))))

(declare-fun b!6283715 () Bool)

(declare-fun res!2591459 () Bool)

(assert (=> b!6283715 (=> res!2591459 e!3821257)))

(assert (=> b!6283715 (= res!2591459 e!3821255)))

(declare-fun res!2591453 () Bool)

(assert (=> b!6283715 (=> (not res!2591453) (not e!3821255))))

(assert (=> b!6283715 (= res!2591453 lt!2354991)))

(assert (= (and d!1972353 c!1139792) b!6283714))

(assert (= (and d!1972353 (not c!1139792)) b!6283710))

(assert (= (and d!1972353 c!1139791) b!6283713))

(assert (= (and d!1972353 (not c!1139791)) b!6283708))

(assert (= (and b!6283708 c!1139790) b!6283707))

(assert (= (and b!6283708 (not c!1139790)) b!6283712))

(assert (= (and b!6283712 (not res!2591454)) b!6283715))

(assert (= (and b!6283715 res!2591453) b!6283709))

(assert (= (and b!6283709 res!2591460) b!6283705))

(assert (= (and b!6283705 res!2591456) b!6283703))

(assert (= (and b!6283715 (not res!2591459)) b!6283711))

(assert (= (and b!6283711 res!2591457) b!6283702))

(assert (= (and b!6283702 (not res!2591455)) b!6283704))

(assert (= (and b!6283704 (not res!2591458)) b!6283706))

(assert (= (or b!6283713 b!6283702 b!6283709) bm!531964))

(assert (=> bm!531964 m!7102606))

(assert (=> bm!531964 m!7102608))

(assert (=> b!6283706 m!7102606))

(assert (=> b!6283706 m!7104028))

(assert (=> d!1972353 m!7102606))

(assert (=> d!1972353 m!7102608))

(assert (=> d!1972353 m!7102694))

(declare-fun m!7104752 () Bool)

(assert (=> d!1972353 m!7104752))

(assert (=> b!6283704 m!7102606))

(assert (=> b!6283704 m!7104032))

(assert (=> b!6283704 m!7104032))

(assert (=> b!6283704 m!7104034))

(assert (=> b!6283714 m!7102694))

(declare-fun m!7104754 () Bool)

(assert (=> b!6283714 m!7104754))

(assert (=> b!6283703 m!7102606))

(assert (=> b!6283703 m!7104028))

(assert (=> b!6283710 m!7102606))

(assert (=> b!6283710 m!7104028))

(assert (=> b!6283710 m!7102694))

(assert (=> b!6283710 m!7104028))

(declare-fun m!7104756 () Bool)

(assert (=> b!6283710 m!7104756))

(assert (=> b!6283710 m!7102606))

(assert (=> b!6283710 m!7104032))

(assert (=> b!6283710 m!7104756))

(assert (=> b!6283710 m!7104032))

(declare-fun m!7104758 () Bool)

(assert (=> b!6283710 m!7104758))

(assert (=> b!6283705 m!7102606))

(assert (=> b!6283705 m!7104032))

(assert (=> b!6283705 m!7104032))

(assert (=> b!6283705 m!7104034))

(assert (=> b!6281745 d!1972353))

(declare-fun b!6283716 () Bool)

(declare-fun c!1139793 () Bool)

(assert (=> b!6283716 (= c!1139793 (nullable!6196 (regOne!32918 lt!2354656)))))

(declare-fun e!3821263 () Regex!16203)

(declare-fun e!3821260 () Regex!16203)

(assert (=> b!6283716 (= e!3821263 e!3821260)))

(declare-fun bm!531965 () Bool)

(declare-fun c!1139797 () Bool)

(declare-fun call!531971 () Regex!16203)

(assert (=> bm!531965 (= call!531971 (derivativeStep!4912 (ite c!1139797 (regTwo!32919 lt!2354656) (regOne!32918 lt!2354656)) (head!12906 s!2326)))))

(declare-fun b!6283717 () Bool)

(assert (=> b!6283717 (= c!1139797 ((_ is Union!16203) lt!2354656))))

(declare-fun e!3821261 () Regex!16203)

(declare-fun e!3821264 () Regex!16203)

(assert (=> b!6283717 (= e!3821261 e!3821264)))

(declare-fun d!1972355 () Bool)

(declare-fun lt!2354992 () Regex!16203)

(assert (=> d!1972355 (validRegex!7939 lt!2354992)))

(declare-fun e!3821262 () Regex!16203)

(assert (=> d!1972355 (= lt!2354992 e!3821262)))

(declare-fun c!1139796 () Bool)

(assert (=> d!1972355 (= c!1139796 (or ((_ is EmptyExpr!16203) lt!2354656) ((_ is EmptyLang!16203) lt!2354656)))))

(assert (=> d!1972355 (validRegex!7939 lt!2354656)))

(assert (=> d!1972355 (= (derivativeStep!4912 lt!2354656 (head!12906 s!2326)) lt!2354992)))

(declare-fun b!6283718 () Bool)

(declare-fun call!531970 () Regex!16203)

(assert (=> b!6283718 (= e!3821263 (Concat!25048 call!531970 lt!2354656))))

(declare-fun bm!531966 () Bool)

(declare-fun call!531972 () Regex!16203)

(assert (=> bm!531966 (= call!531970 call!531972)))

(declare-fun b!6283719 () Bool)

(assert (=> b!6283719 (= e!3821264 e!3821263)))

(declare-fun c!1139794 () Bool)

(assert (=> b!6283719 (= c!1139794 ((_ is Star!16203) lt!2354656))))

(declare-fun bm!531967 () Bool)

(declare-fun call!531973 () Regex!16203)

(assert (=> bm!531967 (= call!531973 call!531970)))

(declare-fun b!6283720 () Bool)

(assert (=> b!6283720 (= e!3821264 (Union!16203 call!531972 call!531971))))

(declare-fun bm!531968 () Bool)

(assert (=> bm!531968 (= call!531972 (derivativeStep!4912 (ite c!1139797 (regOne!32919 lt!2354656) (ite c!1139794 (reg!16532 lt!2354656) (ite c!1139793 (regTwo!32918 lt!2354656) (regOne!32918 lt!2354656)))) (head!12906 s!2326)))))

(declare-fun b!6283721 () Bool)

(assert (=> b!6283721 (= e!3821260 (Union!16203 (Concat!25048 call!531971 (regTwo!32918 lt!2354656)) call!531973))))

(declare-fun b!6283722 () Bool)

(assert (=> b!6283722 (= e!3821261 (ite (= (head!12906 s!2326) (c!1138982 lt!2354656)) EmptyExpr!16203 EmptyLang!16203))))

(declare-fun b!6283723 () Bool)

(assert (=> b!6283723 (= e!3821262 EmptyLang!16203)))

(declare-fun b!6283724 () Bool)

(assert (=> b!6283724 (= e!3821262 e!3821261)))

(declare-fun c!1139795 () Bool)

(assert (=> b!6283724 (= c!1139795 ((_ is ElementMatch!16203) lt!2354656))))

(declare-fun b!6283725 () Bool)

(assert (=> b!6283725 (= e!3821260 (Union!16203 (Concat!25048 call!531973 (regTwo!32918 lt!2354656)) EmptyLang!16203))))

(assert (= (and d!1972355 c!1139796) b!6283723))

(assert (= (and d!1972355 (not c!1139796)) b!6283724))

(assert (= (and b!6283724 c!1139795) b!6283722))

(assert (= (and b!6283724 (not c!1139795)) b!6283717))

(assert (= (and b!6283717 c!1139797) b!6283720))

(assert (= (and b!6283717 (not c!1139797)) b!6283719))

(assert (= (and b!6283719 c!1139794) b!6283718))

(assert (= (and b!6283719 (not c!1139794)) b!6283716))

(assert (= (and b!6283716 c!1139793) b!6283721))

(assert (= (and b!6283716 (not c!1139793)) b!6283725))

(assert (= (or b!6283721 b!6283725) bm!531967))

(assert (= (or b!6283718 bm!531967) bm!531966))

(assert (= (or b!6283720 b!6283721) bm!531965))

(assert (= (or b!6283720 bm!531966) bm!531968))

(declare-fun m!7104760 () Bool)

(assert (=> b!6283716 m!7104760))

(assert (=> bm!531965 m!7102604))

(declare-fun m!7104762 () Bool)

(assert (=> bm!531965 m!7104762))

(declare-fun m!7104764 () Bool)

(assert (=> d!1972355 m!7104764))

(assert (=> d!1972355 m!7102690))

(assert (=> bm!531968 m!7102604))

(declare-fun m!7104766 () Bool)

(assert (=> bm!531968 m!7104766))

(assert (=> b!6281745 d!1972355))

(assert (=> b!6281745 d!1971939))

(assert (=> b!6281745 d!1972005))

(assert (=> b!6281804 d!1971417))

(declare-fun bm!531969 () Bool)

(declare-fun call!531975 () (InoxSet Context!11174))

(declare-fun call!531977 () (InoxSet Context!11174))

(assert (=> bm!531969 (= call!531975 call!531977)))

(declare-fun b!6283726 () Bool)

(declare-fun e!3821267 () Bool)

(assert (=> b!6283726 (= e!3821267 (nullable!6196 (regOne!32918 (h!71232 (exprs!6087 lt!2354667)))))))

(declare-fun b!6283727 () Bool)

(declare-fun e!3821265 () (InoxSet Context!11174))

(assert (=> b!6283727 (= e!3821265 call!531975)))

(declare-fun b!6283728 () Bool)

(declare-fun e!3821266 () (InoxSet Context!11174))

(assert (=> b!6283728 (= e!3821266 call!531975)))

(declare-fun b!6283729 () Bool)

(declare-fun c!1139802 () Bool)

(assert (=> b!6283729 (= c!1139802 ((_ is Star!16203) (h!71232 (exprs!6087 lt!2354667))))))

(assert (=> b!6283729 (= e!3821266 e!3821265)))

(declare-fun bm!531970 () Bool)

(declare-fun call!531978 () List!64908)

(declare-fun call!531976 () List!64908)

(assert (=> bm!531970 (= call!531978 call!531976)))

(declare-fun b!6283730 () Bool)

(declare-fun e!3821268 () (InoxSet Context!11174))

(declare-fun call!531974 () (InoxSet Context!11174))

(assert (=> b!6283730 (= e!3821268 ((_ map or) call!531974 call!531977))))

(declare-fun b!6283731 () Bool)

(declare-fun e!3821269 () (InoxSet Context!11174))

(declare-fun call!531979 () (InoxSet Context!11174))

(assert (=> b!6283731 (= e!3821269 ((_ map or) call!531974 call!531979))))

(declare-fun bm!531971 () Bool)

(declare-fun c!1139801 () Bool)

(declare-fun c!1139800 () Bool)

(assert (=> bm!531971 (= call!531976 ($colon$colon!2068 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 lt!2354667)))) (ite (or c!1139801 c!1139800) (regTwo!32918 (h!71232 (exprs!6087 lt!2354667))) (h!71232 (exprs!6087 lt!2354667)))))))

(declare-fun b!6283732 () Bool)

(assert (=> b!6283732 (= c!1139801 e!3821267)))

(declare-fun res!2591461 () Bool)

(assert (=> b!6283732 (=> (not res!2591461) (not e!3821267))))

(assert (=> b!6283732 (= res!2591461 ((_ is Concat!25048) (h!71232 (exprs!6087 lt!2354667))))))

(assert (=> b!6283732 (= e!3821269 e!3821268)))

(declare-fun b!6283733 () Bool)

(declare-fun e!3821270 () (InoxSet Context!11174))

(assert (=> b!6283733 (= e!3821270 e!3821269)))

(declare-fun c!1139799 () Bool)

(assert (=> b!6283733 (= c!1139799 ((_ is Union!16203) (h!71232 (exprs!6087 lt!2354667))))))

(declare-fun bm!531972 () Bool)

(assert (=> bm!531972 (= call!531979 (derivationStepZipperDown!1451 (ite c!1139799 (regTwo!32919 (h!71232 (exprs!6087 lt!2354667))) (ite c!1139801 (regTwo!32918 (h!71232 (exprs!6087 lt!2354667))) (ite c!1139800 (regOne!32918 (h!71232 (exprs!6087 lt!2354667))) (reg!16532 (h!71232 (exprs!6087 lt!2354667)))))) (ite (or c!1139799 c!1139801) (Context!11175 (t!378468 (exprs!6087 lt!2354667))) (Context!11175 call!531978)) (h!71233 s!2326)))))

(declare-fun bm!531973 () Bool)

(assert (=> bm!531973 (= call!531974 (derivationStepZipperDown!1451 (ite c!1139799 (regOne!32919 (h!71232 (exprs!6087 lt!2354667))) (regOne!32918 (h!71232 (exprs!6087 lt!2354667)))) (ite c!1139799 (Context!11175 (t!378468 (exprs!6087 lt!2354667))) (Context!11175 call!531976)) (h!71233 s!2326)))))

(declare-fun d!1972357 () Bool)

(declare-fun c!1139798 () Bool)

(assert (=> d!1972357 (= c!1139798 (and ((_ is ElementMatch!16203) (h!71232 (exprs!6087 lt!2354667))) (= (c!1138982 (h!71232 (exprs!6087 lt!2354667))) (h!71233 s!2326))))))

(assert (=> d!1972357 (= (derivationStepZipperDown!1451 (h!71232 (exprs!6087 lt!2354667)) (Context!11175 (t!378468 (exprs!6087 lt!2354667))) (h!71233 s!2326)) e!3821270)))

(declare-fun b!6283734 () Bool)

(assert (=> b!6283734 (= e!3821268 e!3821266)))

(assert (=> b!6283734 (= c!1139800 ((_ is Concat!25048) (h!71232 (exprs!6087 lt!2354667))))))

(declare-fun b!6283735 () Bool)

(assert (=> b!6283735 (= e!3821265 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531974 () Bool)

(assert (=> bm!531974 (= call!531977 call!531979)))

(declare-fun b!6283736 () Bool)

(assert (=> b!6283736 (= e!3821270 (store ((as const (Array Context!11174 Bool)) false) (Context!11175 (t!378468 (exprs!6087 lt!2354667))) true))))

(assert (= (and d!1972357 c!1139798) b!6283736))

(assert (= (and d!1972357 (not c!1139798)) b!6283733))

(assert (= (and b!6283733 c!1139799) b!6283731))

(assert (= (and b!6283733 (not c!1139799)) b!6283732))

(assert (= (and b!6283732 res!2591461) b!6283726))

(assert (= (and b!6283732 c!1139801) b!6283730))

(assert (= (and b!6283732 (not c!1139801)) b!6283734))

(assert (= (and b!6283734 c!1139800) b!6283728))

(assert (= (and b!6283734 (not c!1139800)) b!6283729))

(assert (= (and b!6283729 c!1139802) b!6283727))

(assert (= (and b!6283729 (not c!1139802)) b!6283735))

(assert (= (or b!6283728 b!6283727) bm!531970))

(assert (= (or b!6283728 b!6283727) bm!531969))

(assert (= (or b!6283730 bm!531970) bm!531971))

(assert (= (or b!6283730 bm!531969) bm!531974))

(assert (= (or b!6283731 bm!531974) bm!531972))

(assert (= (or b!6283731 b!6283730) bm!531973))

(declare-fun m!7104768 () Bool)

(assert (=> b!6283726 m!7104768))

(declare-fun m!7104770 () Bool)

(assert (=> bm!531973 m!7104770))

(declare-fun m!7104772 () Bool)

(assert (=> b!6283736 m!7104772))

(declare-fun m!7104774 () Bool)

(assert (=> bm!531972 m!7104774))

(declare-fun m!7104776 () Bool)

(assert (=> bm!531971 m!7104776))

(assert (=> bm!531578 d!1972357))

(declare-fun d!1972359 () Bool)

(assert (=> d!1972359 (= (Exists!3273 lambda!344605) (choose!46643 lambda!344605))))

(declare-fun bs!1570745 () Bool)

(assert (= bs!1570745 d!1972359))

(declare-fun m!7104778 () Bool)

(assert (=> bs!1570745 m!7104778))

(assert (=> d!1971375 d!1972359))

(declare-fun d!1972361 () Bool)

(assert (=> d!1972361 (= (Exists!3273 lambda!344606) (choose!46643 lambda!344606))))

(declare-fun bs!1570746 () Bool)

(assert (= bs!1570746 d!1972361))

(declare-fun m!7104780 () Bool)

(assert (=> bs!1570746 m!7104780))

(assert (=> d!1971375 d!1972361))

(declare-fun bs!1570747 () Bool)

(declare-fun d!1972363 () Bool)

(assert (= bs!1570747 (and d!1972363 d!1971375)))

(declare-fun lambda!344767 () Int)

(assert (=> bs!1570747 (= lambda!344767 lambda!344605)))

(declare-fun bs!1570748 () Bool)

(assert (= bs!1570748 (and d!1972363 d!1971297)))

(assert (=> bs!1570748 (not (= lambda!344767 lambda!344574))))

(declare-fun bs!1570749 () Bool)

(assert (= bs!1570749 (and d!1972363 b!6281727)))

(assert (=> bs!1570749 (not (= lambda!344767 lambda!344599))))

(declare-fun bs!1570750 () Bool)

(assert (= bs!1570750 (and d!1972363 b!6283024)))

(assert (=> bs!1570750 (not (= lambda!344767 lambda!344696))))

(declare-fun bs!1570751 () Bool)

(assert (= bs!1570751 (and d!1972363 d!1971295)))

(assert (=> bs!1570751 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344767 lambda!344568))))

(declare-fun bs!1570752 () Bool)

(assert (= bs!1570752 (and d!1972363 d!1971365)))

(assert (=> bs!1570752 (= lambda!344767 lambda!344603)))

(declare-fun bs!1570753 () Bool)

(assert (= bs!1570753 (and d!1972363 b!6281621)))

(assert (=> bs!1570753 (not (= lambda!344767 lambda!344580))))

(declare-fun bs!1570754 () Bool)

(assert (= bs!1570754 (and d!1972363 b!6280970)))

(assert (=> bs!1570754 (= lambda!344767 lambda!344510)))

(assert (=> bs!1570754 (not (= lambda!344767 lambda!344511))))

(declare-fun bs!1570755 () Bool)

(assert (= bs!1570755 (and d!1972363 d!1972051)))

(assert (=> bs!1570755 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344767 lambda!344710))))

(declare-fun bs!1570756 () Bool)

(assert (= bs!1570756 (and d!1972363 b!6283270)))

(assert (=> bs!1570756 (not (= lambda!344767 lambda!344715))))

(declare-fun bs!1570757 () Bool)

(assert (= bs!1570757 (and d!1972363 b!6283701)))

(assert (=> bs!1570757 (not (= lambda!344767 lambda!344765))))

(declare-fun bs!1570758 () Bool)

(assert (= bs!1570758 (and d!1972363 b!6280967)))

(assert (=> bs!1570758 (not (= lambda!344767 lambda!344508))))

(declare-fun bs!1570759 () Bool)

(assert (= bs!1570759 (and d!1972363 b!6283300)))

(assert (=> bs!1570759 (not (= lambda!344767 lambda!344718))))

(declare-fun bs!1570760 () Bool)

(assert (= bs!1570760 (and d!1972363 b!6283306)))

(assert (=> bs!1570760 (not (= lambda!344767 lambda!344717))))

(assert (=> bs!1570747 (not (= lambda!344767 lambda!344606))))

(declare-fun bs!1570761 () Bool)

(assert (= bs!1570761 (and d!1972363 b!6283228)))

(assert (=> bs!1570761 (not (= lambda!344767 lambda!344704))))

(declare-fun bs!1570762 () Bool)

(assert (= bs!1570762 (and d!1972363 b!6281826)))

(assert (=> bs!1570762 (not (= lambda!344767 lambda!344608))))

(declare-fun bs!1570763 () Bool)

(assert (= bs!1570763 (and d!1972363 b!6281721)))

(assert (=> bs!1570763 (not (= lambda!344767 lambda!344600))))

(declare-fun bs!1570764 () Bool)

(assert (= bs!1570764 (and d!1972363 b!6283030)))

(assert (=> bs!1570764 (not (= lambda!344767 lambda!344695))))

(declare-fun bs!1570765 () Bool)

(assert (= bs!1570765 (and d!1972363 b!6281627)))

(assert (=> bs!1570765 (not (= lambda!344767 lambda!344579))))

(assert (=> bs!1570758 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344767 lambda!344507))))

(assert (=> bs!1570755 (not (= lambda!344767 lambda!344711))))

(declare-fun bs!1570766 () Bool)

(assert (= bs!1570766 (and d!1972363 b!6283695)))

(assert (=> bs!1570766 (not (= lambda!344767 lambda!344766))))

(assert (=> bs!1570748 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344767 lambda!344573))))

(declare-fun bs!1570767 () Bool)

(assert (= bs!1570767 (and d!1972363 b!6281832)))

(assert (=> bs!1570767 (not (= lambda!344767 lambda!344607))))

(declare-fun bs!1570768 () Bool)

(assert (= bs!1570768 (and d!1972363 b!6283222)))

(assert (=> bs!1570768 (not (= lambda!344767 lambda!344705))))

(declare-fun bs!1570769 () Bool)

(assert (= bs!1570769 (and d!1972363 d!1972095)))

(assert (=> bs!1570769 (= lambda!344767 lambda!344721)))

(declare-fun bs!1570770 () Bool)

(assert (= bs!1570770 (and d!1972363 b!6283276)))

(assert (=> bs!1570770 (not (= lambda!344767 lambda!344714))))

(declare-fun bs!1570771 () Bool)

(assert (= bs!1570771 (and d!1972363 b!6283446)))

(assert (=> bs!1570771 (not (= lambda!344767 lambda!344741))))

(declare-fun bs!1570772 () Bool)

(assert (= bs!1570772 (and d!1972363 d!1972335)))

(assert (=> bs!1570772 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344767 lambda!344763))))

(declare-fun bs!1570773 () Bool)

(assert (= bs!1570773 (and d!1972363 b!6283452)))

(assert (=> bs!1570773 (not (= lambda!344767 lambda!344740))))

(assert (=> d!1972363 true))

(assert (=> d!1972363 true))

(assert (=> d!1972363 true))

(declare-fun lambda!344768 () Int)

(assert (=> bs!1570747 (not (= lambda!344768 lambda!344605))))

(assert (=> bs!1570748 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344768 lambda!344574))))

(assert (=> bs!1570749 (not (= lambda!344768 lambda!344599))))

(assert (=> bs!1570750 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 (regOne!32919 lt!2354656))) (= lt!2354652 (regTwo!32918 (regOne!32919 lt!2354656)))) (= lambda!344768 lambda!344696))))

(assert (=> bs!1570751 (not (= lambda!344768 lambda!344568))))

(assert (=> bs!1570752 (not (= lambda!344768 lambda!344603))))

(assert (=> bs!1570753 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344768 lambda!344580))))

(assert (=> bs!1570754 (not (= lambda!344768 lambda!344510))))

(declare-fun bs!1570774 () Bool)

(assert (= bs!1570774 d!1972363))

(assert (=> bs!1570774 (not (= lambda!344768 lambda!344767))))

(assert (=> bs!1570754 (= lambda!344768 lambda!344511)))

(assert (=> bs!1570755 (not (= lambda!344768 lambda!344710))))

(assert (=> bs!1570756 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 (regOne!32919 lt!2354652))) (= lt!2354652 (regTwo!32918 (regOne!32919 lt!2354652)))) (= lambda!344768 lambda!344715))))

(assert (=> bs!1570757 (not (= lambda!344768 lambda!344765))))

(assert (=> bs!1570758 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344768 lambda!344508))))

(assert (=> bs!1570759 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 (regTwo!32919 lt!2354656))) (= lt!2354652 (regTwo!32918 (regTwo!32919 lt!2354656)))) (= lambda!344768 lambda!344718))))

(assert (=> bs!1570760 (not (= lambda!344768 lambda!344717))))

(assert (=> bs!1570747 (= lambda!344768 lambda!344606)))

(assert (=> bs!1570761 (not (= lambda!344768 lambda!344704))))

(assert (=> bs!1570762 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 lt!2354652)) (= lt!2354652 (regTwo!32918 lt!2354652))) (= lambda!344768 lambda!344608))))

(assert (=> bs!1570763 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 lt!2354656)) (= lt!2354652 (regTwo!32918 lt!2354656))) (= lambda!344768 lambda!344600))))

(assert (=> bs!1570764 (not (= lambda!344768 lambda!344695))))

(assert (=> bs!1570765 (not (= lambda!344768 lambda!344579))))

(assert (=> bs!1570758 (not (= lambda!344768 lambda!344507))))

(assert (=> bs!1570755 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 r!7292)) (= lt!2354652 (regTwo!32918 r!7292))) (= lambda!344768 lambda!344711))))

(assert (=> bs!1570766 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 (regOne!32919 r!7292))) (= lt!2354652 (regTwo!32918 (regOne!32919 r!7292)))) (= lambda!344768 lambda!344766))))

(assert (=> bs!1570748 (not (= lambda!344768 lambda!344573))))

(assert (=> bs!1570767 (not (= lambda!344768 lambda!344607))))

(assert (=> bs!1570768 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 (regTwo!32919 r!7292))) (= lt!2354652 (regTwo!32918 (regTwo!32919 r!7292)))) (= lambda!344768 lambda!344705))))

(assert (=> bs!1570769 (not (= lambda!344768 lambda!344721))))

(assert (=> bs!1570770 (not (= lambda!344768 lambda!344714))))

(assert (=> bs!1570771 (= (and (= (regOne!32918 (regOne!32918 r!7292)) (regOne!32918 (regTwo!32919 lt!2354652))) (= lt!2354652 (regTwo!32918 (regTwo!32919 lt!2354652)))) (= lambda!344768 lambda!344741))))

(assert (=> bs!1570772 (not (= lambda!344768 lambda!344763))))

(assert (=> bs!1570773 (not (= lambda!344768 lambda!344740))))

(assert (=> d!1972363 true))

(assert (=> d!1972363 true))

(assert (=> d!1972363 true))

(assert (=> d!1972363 (= (Exists!3273 lambda!344767) (Exists!3273 lambda!344768))))

(assert (=> d!1972363 true))

(declare-fun _$90!2105 () Unit!158143)

(assert (=> d!1972363 (= (choose!46645 (regOne!32918 (regOne!32918 r!7292)) lt!2354652 s!2326) _$90!2105)))

(declare-fun m!7104782 () Bool)

(assert (=> bs!1570774 m!7104782))

(declare-fun m!7104784 () Bool)

(assert (=> bs!1570774 m!7104784))

(assert (=> d!1971375 d!1972363))

(assert (=> d!1971375 d!1971929))

(assert (=> d!1971317 d!1971943))

(declare-fun bs!1570775 () Bool)

(declare-fun d!1972365 () Bool)

(assert (= bs!1570775 (and d!1972365 d!1972349)))

(declare-fun lambda!344769 () Int)

(assert (=> bs!1570775 (= lambda!344769 lambda!344764)))

(declare-fun bs!1570776 () Bool)

(assert (= bs!1570776 (and d!1972365 d!1972033)))

(assert (=> bs!1570776 (= lambda!344769 lambda!344703)))

(declare-fun bs!1570777 () Bool)

(assert (= bs!1570777 (and d!1972365 b!6281684)))

(assert (=> bs!1570777 (not (= lambda!344769 lambda!344591))))

(declare-fun bs!1570778 () Bool)

(assert (= bs!1570778 (and d!1972365 d!1972165)))

(assert (=> bs!1570778 (not (= lambda!344769 lambda!344737))))

(declare-fun bs!1570779 () Bool)

(assert (= bs!1570779 (and d!1972365 d!1972245)))

(assert (=> bs!1570779 (= lambda!344769 lambda!344747)))

(declare-fun bs!1570780 () Bool)

(assert (= bs!1570780 (and d!1972365 d!1972279)))

(assert (=> bs!1570780 (= lambda!344769 lambda!344755)))

(declare-fun bs!1570781 () Bool)

(assert (= bs!1570781 (and d!1972365 b!6281681)))

(assert (=> bs!1570781 (not (= lambda!344769 lambda!344589))))

(declare-fun bs!1570782 () Bool)

(assert (= bs!1570782 (and d!1972365 d!1972329)))

(assert (=> bs!1570782 (= lambda!344769 lambda!344762)))

(declare-fun bs!1570783 () Bool)

(assert (= bs!1570783 (and d!1972365 b!6283575)))

(assert (=> bs!1570783 (not (= lambda!344769 lambda!344752))))

(declare-fun bs!1570784 () Bool)

(assert (= bs!1570784 (and d!1972365 d!1972281)))

(assert (=> bs!1570784 (= lambda!344769 lambda!344756)))

(declare-fun bs!1570785 () Bool)

(assert (= bs!1570785 (and d!1972365 d!1971997)))

(assert (=> bs!1570785 (= lambda!344769 lambda!344700)))

(declare-fun bs!1570786 () Bool)

(assert (= bs!1570786 (and d!1972365 b!6281686)))

(assert (=> bs!1570786 (not (= lambda!344769 lambda!344592))))

(declare-fun bs!1570787 () Bool)

(assert (= bs!1570787 (and d!1972365 b!6283418)))

(assert (=> bs!1570787 (not (= lambda!344769 lambda!344734))))

(declare-fun bs!1570788 () Bool)

(assert (= bs!1570788 (and d!1972365 b!6283577)))

(assert (=> bs!1570788 (not (= lambda!344769 lambda!344753))))

(declare-fun bs!1570789 () Bool)

(assert (= bs!1570789 (and d!1972365 d!1972097)))

(assert (=> bs!1570789 (= lambda!344769 lambda!344722)))

(declare-fun bs!1570790 () Bool)

(assert (= bs!1570790 (and d!1972365 d!1972257)))

(assert (=> bs!1570790 (not (= lambda!344769 lambda!344750))))

(declare-fun bs!1570791 () Bool)

(assert (= bs!1570791 (and d!1972365 d!1972233)))

(assert (=> bs!1570791 (= lambda!344769 lambda!344746)))

(declare-fun bs!1570792 () Bool)

(assert (= bs!1570792 (and d!1972365 b!6283416)))

(assert (=> bs!1570792 (not (= lambda!344769 lambda!344733))))

(declare-fun bs!1570793 () Bool)

(assert (= bs!1570793 (and d!1972365 b!6281679)))

(assert (=> bs!1570793 (not (= lambda!344769 lambda!344588))))

(declare-fun bs!1570794 () Bool)

(assert (= bs!1570794 (and d!1972365 d!1972071)))

(assert (=> bs!1570794 (= lambda!344769 lambda!344716)))

(declare-fun bs!1570795 () Bool)

(assert (= bs!1570795 (and d!1972365 d!1972169)))

(assert (=> bs!1570795 (= lambda!344769 lambda!344738)))

(assert (=> d!1972365 (= (nullableZipper!1973 lt!2354648) (exists!2527 lt!2354648 lambda!344769))))

(declare-fun bs!1570796 () Bool)

(assert (= bs!1570796 d!1972365))

(declare-fun m!7104786 () Bool)

(assert (=> bs!1570796 m!7104786))

(assert (=> b!6281554 d!1972365))

(declare-fun bm!531975 () Bool)

(declare-fun call!531981 () (InoxSet Context!11174))

(declare-fun call!531983 () (InoxSet Context!11174))

(assert (=> bm!531975 (= call!531981 call!531983)))

(declare-fun b!6283737 () Bool)

(declare-fun e!3821273 () Bool)

(assert (=> b!6283737 (= e!3821273 (nullable!6196 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun b!6283738 () Bool)

(declare-fun e!3821271 () (InoxSet Context!11174))

(assert (=> b!6283738 (= e!3821271 call!531981)))

(declare-fun b!6283739 () Bool)

(declare-fun e!3821272 () (InoxSet Context!11174))

(assert (=> b!6283739 (= e!3821272 call!531981)))

(declare-fun b!6283740 () Bool)

(declare-fun c!1139807 () Bool)

(assert (=> b!6283740 (= c!1139807 ((_ is Star!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> b!6283740 (= e!3821272 e!3821271)))

(declare-fun bm!531976 () Bool)

(declare-fun call!531984 () List!64908)

(declare-fun call!531982 () List!64908)

(assert (=> bm!531976 (= call!531984 call!531982)))

(declare-fun b!6283741 () Bool)

(declare-fun e!3821274 () (InoxSet Context!11174))

(declare-fun call!531980 () (InoxSet Context!11174))

(assert (=> b!6283741 (= e!3821274 ((_ map or) call!531980 call!531983))))

(declare-fun b!6283742 () Bool)

(declare-fun e!3821275 () (InoxSet Context!11174))

(declare-fun call!531985 () (InoxSet Context!11174))

(assert (=> b!6283742 (= e!3821275 ((_ map or) call!531980 call!531985))))

(declare-fun bm!531977 () Bool)

(declare-fun c!1139805 () Bool)

(declare-fun c!1139806 () Bool)

(assert (=> bm!531977 (= call!531982 ($colon$colon!2068 (exprs!6087 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343))))) (ite (or c!1139806 c!1139805) (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (h!71232 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun b!6283743 () Bool)

(assert (=> b!6283743 (= c!1139806 e!3821273)))

(declare-fun res!2591462 () Bool)

(assert (=> b!6283743 (=> (not res!2591462) (not e!3821273))))

(assert (=> b!6283743 (= res!2591462 ((_ is Concat!25048) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> b!6283743 (= e!3821275 e!3821274)))

(declare-fun b!6283744 () Bool)

(declare-fun e!3821276 () (InoxSet Context!11174))

(assert (=> b!6283744 (= e!3821276 e!3821275)))

(declare-fun c!1139804 () Bool)

(assert (=> b!6283744 (= c!1139804 ((_ is Union!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun bm!531978 () Bool)

(assert (=> bm!531978 (= call!531985 (derivationStepZipperDown!1451 (ite c!1139804 (regTwo!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139806 (regTwo!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (ite c!1139805 (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343)))) (reg!16532 (h!71232 (exprs!6087 (h!71234 zl!343))))))) (ite (or c!1139804 c!1139806) (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))) (Context!11175 call!531984)) (h!71233 s!2326)))))

(declare-fun bm!531979 () Bool)

(assert (=> bm!531979 (= call!531980 (derivationStepZipperDown!1451 (ite c!1139804 (regOne!32919 (h!71232 (exprs!6087 (h!71234 zl!343)))) (regOne!32918 (h!71232 (exprs!6087 (h!71234 zl!343))))) (ite c!1139804 (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))) (Context!11175 call!531982)) (h!71233 s!2326)))))

(declare-fun d!1972367 () Bool)

(declare-fun c!1139803 () Bool)

(assert (=> d!1972367 (= c!1139803 (and ((_ is ElementMatch!16203) (h!71232 (exprs!6087 (h!71234 zl!343)))) (= (c!1138982 (h!71232 (exprs!6087 (h!71234 zl!343)))) (h!71233 s!2326))))))

(assert (=> d!1972367 (= (derivationStepZipperDown!1451 (h!71232 (exprs!6087 (h!71234 zl!343))) (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))) (h!71233 s!2326)) e!3821276)))

(declare-fun b!6283745 () Bool)

(assert (=> b!6283745 (= e!3821274 e!3821272)))

(assert (=> b!6283745 (= c!1139805 ((_ is Concat!25048) (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun b!6283746 () Bool)

(assert (=> b!6283746 (= e!3821271 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531980 () Bool)

(assert (=> bm!531980 (= call!531983 call!531985)))

(declare-fun b!6283747 () Bool)

(assert (=> b!6283747 (= e!3821276 (store ((as const (Array Context!11174 Bool)) false) (Context!11175 (t!378468 (exprs!6087 (h!71234 zl!343)))) true))))

(assert (= (and d!1972367 c!1139803) b!6283747))

(assert (= (and d!1972367 (not c!1139803)) b!6283744))

(assert (= (and b!6283744 c!1139804) b!6283742))

(assert (= (and b!6283744 (not c!1139804)) b!6283743))

(assert (= (and b!6283743 res!2591462) b!6283737))

(assert (= (and b!6283743 c!1139806) b!6283741))

(assert (= (and b!6283743 (not c!1139806)) b!6283745))

(assert (= (and b!6283745 c!1139805) b!6283739))

(assert (= (and b!6283745 (not c!1139805)) b!6283740))

(assert (= (and b!6283740 c!1139807) b!6283738))

(assert (= (and b!6283740 (not c!1139807)) b!6283746))

(assert (= (or b!6283739 b!6283738) bm!531976))

(assert (= (or b!6283739 b!6283738) bm!531975))

(assert (= (or b!6283741 bm!531976) bm!531977))

(assert (= (or b!6283741 bm!531975) bm!531980))

(assert (= (or b!6283742 bm!531980) bm!531978))

(assert (= (or b!6283742 b!6283741) bm!531979))

(assert (=> b!6283737 m!7102818))

(declare-fun m!7104788 () Bool)

(assert (=> bm!531979 m!7104788))

(declare-fun m!7104790 () Bool)

(assert (=> b!6283747 m!7104790))

(declare-fun m!7104792 () Bool)

(assert (=> bm!531978 m!7104792))

(declare-fun m!7104794 () Bool)

(assert (=> bm!531977 m!7104794))

(assert (=> bm!531626 d!1972367))

(declare-fun d!1972369 () Bool)

(assert (=> d!1972369 (= (Exists!3273 (ite c!1139240 lambda!344607 lambda!344608)) (choose!46643 (ite c!1139240 lambda!344607 lambda!344608)))))

(declare-fun bs!1570797 () Bool)

(assert (= bs!1570797 d!1972369))

(declare-fun m!7104796 () Bool)

(assert (=> bs!1570797 m!7104796))

(assert (=> bm!531602 d!1972369))

(declare-fun bm!531981 () Bool)

(declare-fun call!531987 () Bool)

(declare-fun call!531988 () Bool)

(assert (=> bm!531981 (= call!531987 call!531988)))

(declare-fun b!6283748 () Bool)

(declare-fun res!2591466 () Bool)

(declare-fun e!3821279 () Bool)

(assert (=> b!6283748 (=> res!2591466 e!3821279)))

(assert (=> b!6283748 (= res!2591466 (not ((_ is Concat!25048) lt!2354841)))))

(declare-fun e!3821283 () Bool)

(assert (=> b!6283748 (= e!3821283 e!3821279)))

(declare-fun b!6283749 () Bool)

(declare-fun res!2591463 () Bool)

(declare-fun e!3821278 () Bool)

(assert (=> b!6283749 (=> (not res!2591463) (not e!3821278))))

(declare-fun call!531986 () Bool)

(assert (=> b!6283749 (= res!2591463 call!531986)))

(assert (=> b!6283749 (= e!3821283 e!3821278)))

(declare-fun b!6283750 () Bool)

(declare-fun e!3821280 () Bool)

(assert (=> b!6283750 (= e!3821280 call!531988)))

(declare-fun b!6283751 () Bool)

(assert (=> b!6283751 (= e!3821278 call!531987)))

(declare-fun b!6283752 () Bool)

(declare-fun e!3821281 () Bool)

(declare-fun e!3821282 () Bool)

(assert (=> b!6283752 (= e!3821281 e!3821282)))

(declare-fun c!1139809 () Bool)

(assert (=> b!6283752 (= c!1139809 ((_ is Star!16203) lt!2354841))))

(declare-fun b!6283753 () Bool)

(assert (=> b!6283753 (= e!3821282 e!3821283)))

(declare-fun c!1139808 () Bool)

(assert (=> b!6283753 (= c!1139808 ((_ is Union!16203) lt!2354841))))

(declare-fun bm!531982 () Bool)

(assert (=> bm!531982 (= call!531986 (validRegex!7939 (ite c!1139808 (regOne!32919 lt!2354841) (regOne!32918 lt!2354841))))))

(declare-fun b!6283755 () Bool)

(assert (=> b!6283755 (= e!3821282 e!3821280)))

(declare-fun res!2591464 () Bool)

(assert (=> b!6283755 (= res!2591464 (not (nullable!6196 (reg!16532 lt!2354841))))))

(assert (=> b!6283755 (=> (not res!2591464) (not e!3821280))))

(declare-fun b!6283754 () Bool)

(declare-fun e!3821277 () Bool)

(assert (=> b!6283754 (= e!3821277 call!531987)))

(declare-fun d!1972371 () Bool)

(declare-fun res!2591467 () Bool)

(assert (=> d!1972371 (=> res!2591467 e!3821281)))

(assert (=> d!1972371 (= res!2591467 ((_ is ElementMatch!16203) lt!2354841))))

(assert (=> d!1972371 (= (validRegex!7939 lt!2354841) e!3821281)))

(declare-fun bm!531983 () Bool)

(assert (=> bm!531983 (= call!531988 (validRegex!7939 (ite c!1139809 (reg!16532 lt!2354841) (ite c!1139808 (regTwo!32919 lt!2354841) (regTwo!32918 lt!2354841)))))))

(declare-fun b!6283756 () Bool)

(assert (=> b!6283756 (= e!3821279 e!3821277)))

(declare-fun res!2591465 () Bool)

(assert (=> b!6283756 (=> (not res!2591465) (not e!3821277))))

(assert (=> b!6283756 (= res!2591465 call!531986)))

(assert (= (and d!1972371 (not res!2591467)) b!6283752))

(assert (= (and b!6283752 c!1139809) b!6283755))

(assert (= (and b!6283752 (not c!1139809)) b!6283753))

(assert (= (and b!6283755 res!2591464) b!6283750))

(assert (= (and b!6283753 c!1139808) b!6283749))

(assert (= (and b!6283753 (not c!1139808)) b!6283748))

(assert (= (and b!6283749 res!2591463) b!6283751))

(assert (= (and b!6283748 (not res!2591466)) b!6283756))

(assert (= (and b!6283756 res!2591465) b!6283754))

(assert (= (or b!6283751 b!6283754) bm!531981))

(assert (= (or b!6283749 b!6283756) bm!531982))

(assert (= (or b!6283750 bm!531981) bm!531983))

(declare-fun m!7104798 () Bool)

(assert (=> bm!531982 m!7104798))

(declare-fun m!7104800 () Bool)

(assert (=> b!6283755 m!7104800))

(declare-fun m!7104802 () Bool)

(assert (=> bm!531983 m!7104802))

(assert (=> d!1971431 d!1972371))

(declare-fun d!1972373 () Bool)

(declare-fun res!2591468 () Bool)

(declare-fun e!3821284 () Bool)

(assert (=> d!1972373 (=> res!2591468 e!3821284)))

(assert (=> d!1972373 (= res!2591468 ((_ is Nil!64784) (unfocusZipperList!1624 zl!343)))))

(assert (=> d!1972373 (= (forall!15344 (unfocusZipperList!1624 zl!343) lambda!344616) e!3821284)))

(declare-fun b!6283757 () Bool)

(declare-fun e!3821285 () Bool)

(assert (=> b!6283757 (= e!3821284 e!3821285)))

(declare-fun res!2591469 () Bool)

(assert (=> b!6283757 (=> (not res!2591469) (not e!3821285))))

(assert (=> b!6283757 (= res!2591469 (dynLambda!25634 lambda!344616 (h!71232 (unfocusZipperList!1624 zl!343))))))

(declare-fun b!6283758 () Bool)

(assert (=> b!6283758 (= e!3821285 (forall!15344 (t!378468 (unfocusZipperList!1624 zl!343)) lambda!344616))))

(assert (= (and d!1972373 (not res!2591468)) b!6283757))

(assert (= (and b!6283757 res!2591469) b!6283758))

(declare-fun b_lambda!239211 () Bool)

(assert (=> (not b_lambda!239211) (not b!6283757)))

(declare-fun m!7104804 () Bool)

(assert (=> b!6283757 m!7104804))

(declare-fun m!7104806 () Bool)

(assert (=> b!6283758 m!7104806))

(assert (=> d!1971431 d!1972373))

(declare-fun d!1972375 () Bool)

(declare-fun res!2591470 () Bool)

(declare-fun e!3821286 () Bool)

(assert (=> d!1972375 (=> res!2591470 e!3821286)))

(assert (=> d!1972375 (= res!2591470 ((_ is Nil!64786) lt!2354647))))

(assert (=> d!1972375 (= (forall!15343 lt!2354647 lambda!344589) e!3821286)))

(declare-fun b!6283759 () Bool)

(declare-fun e!3821287 () Bool)

(assert (=> b!6283759 (= e!3821286 e!3821287)))

(declare-fun res!2591471 () Bool)

(assert (=> b!6283759 (=> (not res!2591471) (not e!3821287))))

(assert (=> b!6283759 (= res!2591471 (dynLambda!25637 lambda!344589 (h!71234 lt!2354647)))))

(declare-fun b!6283760 () Bool)

(assert (=> b!6283760 (= e!3821287 (forall!15343 (t!378470 lt!2354647) lambda!344589))))

(assert (= (and d!1972375 (not res!2591470)) b!6283759))

(assert (= (and b!6283759 res!2591471) b!6283760))

(declare-fun b_lambda!239213 () Bool)

(assert (=> (not b_lambda!239213) (not b!6283759)))

(declare-fun m!7104808 () Bool)

(assert (=> b!6283759 m!7104808))

(declare-fun m!7104810 () Bool)

(assert (=> b!6283760 m!7104810))

(assert (=> b!6281681 d!1972375))

(declare-fun bm!531984 () Bool)

(declare-fun call!531990 () (InoxSet Context!11174))

(declare-fun call!531992 () (InoxSet Context!11174))

(assert (=> bm!531984 (= call!531990 call!531992)))

(declare-fun b!6283761 () Bool)

(declare-fun e!3821290 () Bool)

(assert (=> b!6283761 (= e!3821290 (nullable!6196 (regOne!32918 (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292)))))))))))

(declare-fun b!6283762 () Bool)

(declare-fun e!3821288 () (InoxSet Context!11174))

(assert (=> b!6283762 (= e!3821288 call!531990)))

(declare-fun b!6283763 () Bool)

(declare-fun e!3821289 () (InoxSet Context!11174))

(assert (=> b!6283763 (= e!3821289 call!531990)))

(declare-fun b!6283764 () Bool)

(declare-fun c!1139814 () Bool)

(assert (=> b!6283764 (= c!1139814 ((_ is Star!16203) (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292))))))))))

(assert (=> b!6283764 (= e!3821289 e!3821288)))

(declare-fun bm!531985 () Bool)

(declare-fun call!531993 () List!64908)

(declare-fun call!531991 () List!64908)

(assert (=> bm!531985 (= call!531993 call!531991)))

(declare-fun b!6283765 () Bool)

(declare-fun e!3821291 () (InoxSet Context!11174))

(declare-fun call!531989 () (InoxSet Context!11174))

(assert (=> b!6283765 (= e!3821291 ((_ map or) call!531989 call!531992))))

(declare-fun b!6283766 () Bool)

(declare-fun e!3821292 () (InoxSet Context!11174))

(declare-fun call!531994 () (InoxSet Context!11174))

(assert (=> b!6283766 (= e!3821292 ((_ map or) call!531989 call!531994))))

(declare-fun c!1139812 () Bool)

(declare-fun bm!531986 () Bool)

(declare-fun c!1139813 () Bool)

(assert (=> bm!531986 (= call!531991 ($colon$colon!2068 (exprs!6087 (ite (or c!1139284 c!1139286) lt!2354667 (Context!11175 call!531642))) (ite (or c!1139813 c!1139812) (regTwo!32918 (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292))))))) (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292)))))))))))

(declare-fun b!6283767 () Bool)

(assert (=> b!6283767 (= c!1139813 e!3821290)))

(declare-fun res!2591472 () Bool)

(assert (=> b!6283767 (=> (not res!2591472) (not e!3821290))))

(assert (=> b!6283767 (= res!2591472 ((_ is Concat!25048) (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292))))))))))

(assert (=> b!6283767 (= e!3821292 e!3821291)))

(declare-fun b!6283768 () Bool)

(declare-fun e!3821293 () (InoxSet Context!11174))

(assert (=> b!6283768 (= e!3821293 e!3821292)))

(declare-fun c!1139811 () Bool)

(assert (=> b!6283768 (= c!1139811 ((_ is Union!16203) (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292))))))))))

(declare-fun bm!531987 () Bool)

(assert (=> bm!531987 (= call!531994 (derivationStepZipperDown!1451 (ite c!1139811 (regTwo!32919 (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292))))))) (ite c!1139813 (regTwo!32918 (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292))))))) (ite c!1139812 (regOne!32918 (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292))))))) (reg!16532 (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292)))))))))) (ite (or c!1139811 c!1139813) (ite (or c!1139284 c!1139286) lt!2354667 (Context!11175 call!531642)) (Context!11175 call!531993)) (h!71233 s!2326)))))

(declare-fun bm!531988 () Bool)

(assert (=> bm!531988 (= call!531989 (derivationStepZipperDown!1451 (ite c!1139811 (regOne!32919 (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292))))))) (regOne!32918 (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292)))))))) (ite c!1139811 (ite (or c!1139284 c!1139286) lt!2354667 (Context!11175 call!531642)) (Context!11175 call!531991)) (h!71233 s!2326)))))

(declare-fun d!1972377 () Bool)

(declare-fun c!1139810 () Bool)

(assert (=> d!1972377 (= c!1139810 (and ((_ is ElementMatch!16203) (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292))))))) (= (c!1138982 (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292))))))) (h!71233 s!2326))))))

(assert (=> d!1972377 (= (derivationStepZipperDown!1451 (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292)))))) (ite (or c!1139284 c!1139286) lt!2354667 (Context!11175 call!531642)) (h!71233 s!2326)) e!3821293)))

(declare-fun b!6283769 () Bool)

(assert (=> b!6283769 (= e!3821291 e!3821289)))

(assert (=> b!6283769 (= c!1139812 ((_ is Concat!25048) (ite c!1139284 (regTwo!32919 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139286 (regTwo!32918 (regOne!32918 (regOne!32918 r!7292))) (ite c!1139285 (regOne!32918 (regOne!32918 (regOne!32918 r!7292))) (reg!16532 (regOne!32918 (regOne!32918 r!7292))))))))))

(declare-fun b!6283770 () Bool)

(assert (=> b!6283770 (= e!3821288 ((as const (Array Context!11174 Bool)) false))))

(declare-fun bm!531989 () Bool)

(assert (=> bm!531989 (= call!531992 call!531994)))

(declare-fun b!6283771 () Bool)

(assert (=> b!6283771 (= e!3821293 (store ((as const (Array Context!11174 Bool)) false) (ite (or c!1139284 c!1139286) lt!2354667 (Context!11175 call!531642)) true))))

(assert (= (and d!1972377 c!1139810) b!6283771))

(assert (= (and d!1972377 (not c!1139810)) b!6283768))

(assert (= (and b!6283768 c!1139811) b!6283766))

(assert (= (and b!6283768 (not c!1139811)) b!6283767))

(assert (= (and b!6283767 res!2591472) b!6283761))

(assert (= (and b!6283767 c!1139813) b!6283765))

(assert (= (and b!6283767 (not c!1139813)) b!6283769))

(assert (= (and b!6283769 c!1139812) b!6283763))

(assert (= (and b!6283769 (not c!1139812)) b!6283764))

(assert (= (and b!6283764 c!1139814) b!6283762))

(assert (= (and b!6283764 (not c!1139814)) b!6283770))

(assert (= (or b!6283763 b!6283762) bm!531985))

(assert (= (or b!6283763 b!6283762) bm!531984))

(assert (= (or b!6283765 bm!531985) bm!531986))

(assert (= (or b!6283765 bm!531984) bm!531989))

(assert (= (or b!6283766 bm!531989) bm!531987))

(assert (= (or b!6283766 b!6283765) bm!531988))

(declare-fun m!7104812 () Bool)

(assert (=> b!6283761 m!7104812))

(declare-fun m!7104814 () Bool)

(assert (=> bm!531988 m!7104814))

(declare-fun m!7104816 () Bool)

(assert (=> b!6283771 m!7104816))

(declare-fun m!7104818 () Bool)

(assert (=> bm!531987 m!7104818))

(declare-fun m!7104820 () Bool)

(assert (=> bm!531986 m!7104820))

(assert (=> bm!531636 d!1972377))

(declare-fun b!6283772 () Bool)

(declare-fun e!3821294 () Bool)

(assert (=> b!6283772 (= e!3821294 tp_is_empty!41659)))

(declare-fun b!6283773 () Bool)

(declare-fun tp!1750774 () Bool)

(declare-fun tp!1750771 () Bool)

(assert (=> b!6283773 (= e!3821294 (and tp!1750774 tp!1750771))))

(assert (=> b!6282010 (= tp!1750561 e!3821294)))

(declare-fun b!6283774 () Bool)

(declare-fun tp!1750772 () Bool)

(assert (=> b!6283774 (= e!3821294 tp!1750772)))

(declare-fun b!6283775 () Bool)

(declare-fun tp!1750773 () Bool)

(declare-fun tp!1750775 () Bool)

(assert (=> b!6283775 (= e!3821294 (and tp!1750773 tp!1750775))))

(assert (= (and b!6282010 ((_ is ElementMatch!16203) (reg!16532 (regTwo!32919 r!7292)))) b!6283772))

(assert (= (and b!6282010 ((_ is Concat!25048) (reg!16532 (regTwo!32919 r!7292)))) b!6283773))

(assert (= (and b!6282010 ((_ is Star!16203) (reg!16532 (regTwo!32919 r!7292)))) b!6283774))

(assert (= (and b!6282010 ((_ is Union!16203) (reg!16532 (regTwo!32919 r!7292)))) b!6283775))

(declare-fun b!6283776 () Bool)

(declare-fun e!3821295 () Bool)

(assert (=> b!6283776 (= e!3821295 tp_is_empty!41659)))

(declare-fun b!6283777 () Bool)

(declare-fun tp!1750779 () Bool)

(declare-fun tp!1750776 () Bool)

(assert (=> b!6283777 (= e!3821295 (and tp!1750779 tp!1750776))))

(assert (=> b!6282011 (= tp!1750562 e!3821295)))

(declare-fun b!6283778 () Bool)

(declare-fun tp!1750777 () Bool)

(assert (=> b!6283778 (= e!3821295 tp!1750777)))

(declare-fun b!6283779 () Bool)

(declare-fun tp!1750778 () Bool)

(declare-fun tp!1750780 () Bool)

(assert (=> b!6283779 (= e!3821295 (and tp!1750778 tp!1750780))))

(assert (= (and b!6282011 ((_ is ElementMatch!16203) (regOne!32919 (regTwo!32919 r!7292)))) b!6283776))

(assert (= (and b!6282011 ((_ is Concat!25048) (regOne!32919 (regTwo!32919 r!7292)))) b!6283777))

(assert (= (and b!6282011 ((_ is Star!16203) (regOne!32919 (regTwo!32919 r!7292)))) b!6283778))

(assert (= (and b!6282011 ((_ is Union!16203) (regOne!32919 (regTwo!32919 r!7292)))) b!6283779))

(declare-fun b!6283780 () Bool)

(declare-fun e!3821296 () Bool)

(assert (=> b!6283780 (= e!3821296 tp_is_empty!41659)))

(declare-fun b!6283781 () Bool)

(declare-fun tp!1750784 () Bool)

(declare-fun tp!1750781 () Bool)

(assert (=> b!6283781 (= e!3821296 (and tp!1750784 tp!1750781))))

(assert (=> b!6282011 (= tp!1750564 e!3821296)))

(declare-fun b!6283782 () Bool)

(declare-fun tp!1750782 () Bool)

(assert (=> b!6283782 (= e!3821296 tp!1750782)))

(declare-fun b!6283783 () Bool)

(declare-fun tp!1750783 () Bool)

(declare-fun tp!1750785 () Bool)

(assert (=> b!6283783 (= e!3821296 (and tp!1750783 tp!1750785))))

(assert (= (and b!6282011 ((_ is ElementMatch!16203) (regTwo!32919 (regTwo!32919 r!7292)))) b!6283780))

(assert (= (and b!6282011 ((_ is Concat!25048) (regTwo!32919 (regTwo!32919 r!7292)))) b!6283781))

(assert (= (and b!6282011 ((_ is Star!16203) (regTwo!32919 (regTwo!32919 r!7292)))) b!6283782))

(assert (= (and b!6282011 ((_ is Union!16203) (regTwo!32919 (regTwo!32919 r!7292)))) b!6283783))

(declare-fun b!6283784 () Bool)

(declare-fun e!3821297 () Bool)

(assert (=> b!6283784 (= e!3821297 tp_is_empty!41659)))

(declare-fun b!6283785 () Bool)

(declare-fun tp!1750789 () Bool)

(declare-fun tp!1750786 () Bool)

(assert (=> b!6283785 (= e!3821297 (and tp!1750789 tp!1750786))))

(assert (=> b!6282009 (= tp!1750563 e!3821297)))

(declare-fun b!6283786 () Bool)

(declare-fun tp!1750787 () Bool)

(assert (=> b!6283786 (= e!3821297 tp!1750787)))

(declare-fun b!6283787 () Bool)

(declare-fun tp!1750788 () Bool)

(declare-fun tp!1750790 () Bool)

(assert (=> b!6283787 (= e!3821297 (and tp!1750788 tp!1750790))))

(assert (= (and b!6282009 ((_ is ElementMatch!16203) (regOne!32918 (regTwo!32919 r!7292)))) b!6283784))

(assert (= (and b!6282009 ((_ is Concat!25048) (regOne!32918 (regTwo!32919 r!7292)))) b!6283785))

(assert (= (and b!6282009 ((_ is Star!16203) (regOne!32918 (regTwo!32919 r!7292)))) b!6283786))

(assert (= (and b!6282009 ((_ is Union!16203) (regOne!32918 (regTwo!32919 r!7292)))) b!6283787))

(declare-fun b!6283788 () Bool)

(declare-fun e!3821298 () Bool)

(assert (=> b!6283788 (= e!3821298 tp_is_empty!41659)))

(declare-fun b!6283789 () Bool)

(declare-fun tp!1750794 () Bool)

(declare-fun tp!1750791 () Bool)

(assert (=> b!6283789 (= e!3821298 (and tp!1750794 tp!1750791))))

(assert (=> b!6282009 (= tp!1750560 e!3821298)))

(declare-fun b!6283790 () Bool)

(declare-fun tp!1750792 () Bool)

(assert (=> b!6283790 (= e!3821298 tp!1750792)))

(declare-fun b!6283791 () Bool)

(declare-fun tp!1750793 () Bool)

(declare-fun tp!1750795 () Bool)

(assert (=> b!6283791 (= e!3821298 (and tp!1750793 tp!1750795))))

(assert (= (and b!6282009 ((_ is ElementMatch!16203) (regTwo!32918 (regTwo!32919 r!7292)))) b!6283788))

(assert (= (and b!6282009 ((_ is Concat!25048) (regTwo!32918 (regTwo!32919 r!7292)))) b!6283789))

(assert (= (and b!6282009 ((_ is Star!16203) (regTwo!32918 (regTwo!32919 r!7292)))) b!6283790))

(assert (= (and b!6282009 ((_ is Union!16203) (regTwo!32918 (regTwo!32919 r!7292)))) b!6283791))

(declare-fun b!6283792 () Bool)

(declare-fun e!3821299 () Bool)

(assert (=> b!6283792 (= e!3821299 tp_is_empty!41659)))

(declare-fun b!6283793 () Bool)

(declare-fun tp!1750799 () Bool)

(declare-fun tp!1750796 () Bool)

(assert (=> b!6283793 (= e!3821299 (and tp!1750799 tp!1750796))))

(assert (=> b!6282019 (= tp!1750573 e!3821299)))

(declare-fun b!6283794 () Bool)

(declare-fun tp!1750797 () Bool)

(assert (=> b!6283794 (= e!3821299 tp!1750797)))

(declare-fun b!6283795 () Bool)

(declare-fun tp!1750798 () Bool)

(declare-fun tp!1750800 () Bool)

(assert (=> b!6283795 (= e!3821299 (and tp!1750798 tp!1750800))))

(assert (= (and b!6282019 ((_ is ElementMatch!16203) (reg!16532 (regTwo!32918 r!7292)))) b!6283792))

(assert (= (and b!6282019 ((_ is Concat!25048) (reg!16532 (regTwo!32918 r!7292)))) b!6283793))

(assert (= (and b!6282019 ((_ is Star!16203) (reg!16532 (regTwo!32918 r!7292)))) b!6283794))

(assert (= (and b!6282019 ((_ is Union!16203) (reg!16532 (regTwo!32918 r!7292)))) b!6283795))

(declare-fun b!6283796 () Bool)

(declare-fun e!3821300 () Bool)

(assert (=> b!6283796 (= e!3821300 tp_is_empty!41659)))

(declare-fun b!6283797 () Bool)

(declare-fun tp!1750804 () Bool)

(declare-fun tp!1750801 () Bool)

(assert (=> b!6283797 (= e!3821300 (and tp!1750804 tp!1750801))))

(assert (=> b!6282020 (= tp!1750574 e!3821300)))

(declare-fun b!6283798 () Bool)

(declare-fun tp!1750802 () Bool)

(assert (=> b!6283798 (= e!3821300 tp!1750802)))

(declare-fun b!6283799 () Bool)

(declare-fun tp!1750803 () Bool)

(declare-fun tp!1750805 () Bool)

(assert (=> b!6283799 (= e!3821300 (and tp!1750803 tp!1750805))))

(assert (= (and b!6282020 ((_ is ElementMatch!16203) (regOne!32919 (regTwo!32918 r!7292)))) b!6283796))

(assert (= (and b!6282020 ((_ is Concat!25048) (regOne!32919 (regTwo!32918 r!7292)))) b!6283797))

(assert (= (and b!6282020 ((_ is Star!16203) (regOne!32919 (regTwo!32918 r!7292)))) b!6283798))

(assert (= (and b!6282020 ((_ is Union!16203) (regOne!32919 (regTwo!32918 r!7292)))) b!6283799))

(declare-fun b!6283800 () Bool)

(declare-fun e!3821301 () Bool)

(assert (=> b!6283800 (= e!3821301 tp_is_empty!41659)))

(declare-fun b!6283801 () Bool)

(declare-fun tp!1750809 () Bool)

(declare-fun tp!1750806 () Bool)

(assert (=> b!6283801 (= e!3821301 (and tp!1750809 tp!1750806))))

(assert (=> b!6282020 (= tp!1750576 e!3821301)))

(declare-fun b!6283802 () Bool)

(declare-fun tp!1750807 () Bool)

(assert (=> b!6283802 (= e!3821301 tp!1750807)))

(declare-fun b!6283803 () Bool)

(declare-fun tp!1750808 () Bool)

(declare-fun tp!1750810 () Bool)

(assert (=> b!6283803 (= e!3821301 (and tp!1750808 tp!1750810))))

(assert (= (and b!6282020 ((_ is ElementMatch!16203) (regTwo!32919 (regTwo!32918 r!7292)))) b!6283800))

(assert (= (and b!6282020 ((_ is Concat!25048) (regTwo!32919 (regTwo!32918 r!7292)))) b!6283801))

(assert (= (and b!6282020 ((_ is Star!16203) (regTwo!32919 (regTwo!32918 r!7292)))) b!6283802))

(assert (= (and b!6282020 ((_ is Union!16203) (regTwo!32919 (regTwo!32918 r!7292)))) b!6283803))

(declare-fun b!6283804 () Bool)

(declare-fun e!3821302 () Bool)

(assert (=> b!6283804 (= e!3821302 tp_is_empty!41659)))

(declare-fun b!6283805 () Bool)

(declare-fun tp!1750814 () Bool)

(declare-fun tp!1750811 () Bool)

(assert (=> b!6283805 (= e!3821302 (and tp!1750814 tp!1750811))))

(assert (=> b!6282018 (= tp!1750575 e!3821302)))

(declare-fun b!6283806 () Bool)

(declare-fun tp!1750812 () Bool)

(assert (=> b!6283806 (= e!3821302 tp!1750812)))

(declare-fun b!6283807 () Bool)

(declare-fun tp!1750813 () Bool)

(declare-fun tp!1750815 () Bool)

(assert (=> b!6283807 (= e!3821302 (and tp!1750813 tp!1750815))))

(assert (= (and b!6282018 ((_ is ElementMatch!16203) (regOne!32918 (regTwo!32918 r!7292)))) b!6283804))

(assert (= (and b!6282018 ((_ is Concat!25048) (regOne!32918 (regTwo!32918 r!7292)))) b!6283805))

(assert (= (and b!6282018 ((_ is Star!16203) (regOne!32918 (regTwo!32918 r!7292)))) b!6283806))

(assert (= (and b!6282018 ((_ is Union!16203) (regOne!32918 (regTwo!32918 r!7292)))) b!6283807))

(declare-fun b!6283808 () Bool)

(declare-fun e!3821303 () Bool)

(assert (=> b!6283808 (= e!3821303 tp_is_empty!41659)))

(declare-fun b!6283809 () Bool)

(declare-fun tp!1750819 () Bool)

(declare-fun tp!1750816 () Bool)

(assert (=> b!6283809 (= e!3821303 (and tp!1750819 tp!1750816))))

(assert (=> b!6282018 (= tp!1750572 e!3821303)))

(declare-fun b!6283810 () Bool)

(declare-fun tp!1750817 () Bool)

(assert (=> b!6283810 (= e!3821303 tp!1750817)))

(declare-fun b!6283811 () Bool)

(declare-fun tp!1750818 () Bool)

(declare-fun tp!1750820 () Bool)

(assert (=> b!6283811 (= e!3821303 (and tp!1750818 tp!1750820))))

(assert (= (and b!6282018 ((_ is ElementMatch!16203) (regTwo!32918 (regTwo!32918 r!7292)))) b!6283808))

(assert (= (and b!6282018 ((_ is Concat!25048) (regTwo!32918 (regTwo!32918 r!7292)))) b!6283809))

(assert (= (and b!6282018 ((_ is Star!16203) (regTwo!32918 (regTwo!32918 r!7292)))) b!6283810))

(assert (= (and b!6282018 ((_ is Union!16203) (regTwo!32918 (regTwo!32918 r!7292)))) b!6283811))

(declare-fun b!6283812 () Bool)

(declare-fun e!3821304 () Bool)

(assert (=> b!6283812 (= e!3821304 tp_is_empty!41659)))

(declare-fun b!6283813 () Bool)

(declare-fun tp!1750824 () Bool)

(declare-fun tp!1750821 () Bool)

(assert (=> b!6283813 (= e!3821304 (and tp!1750824 tp!1750821))))

(assert (=> b!6281988 (= tp!1750537 e!3821304)))

(declare-fun b!6283814 () Bool)

(declare-fun tp!1750822 () Bool)

(assert (=> b!6283814 (= e!3821304 tp!1750822)))

(declare-fun b!6283815 () Bool)

(declare-fun tp!1750823 () Bool)

(declare-fun tp!1750825 () Bool)

(assert (=> b!6283815 (= e!3821304 (and tp!1750823 tp!1750825))))

(assert (= (and b!6281988 ((_ is ElementMatch!16203) (h!71232 (exprs!6087 setElem!42740)))) b!6283812))

(assert (= (and b!6281988 ((_ is Concat!25048) (h!71232 (exprs!6087 setElem!42740)))) b!6283813))

(assert (= (and b!6281988 ((_ is Star!16203) (h!71232 (exprs!6087 setElem!42740)))) b!6283814))

(assert (= (and b!6281988 ((_ is Union!16203) (h!71232 (exprs!6087 setElem!42740)))) b!6283815))

(declare-fun b!6283816 () Bool)

(declare-fun e!3821305 () Bool)

(declare-fun tp!1750826 () Bool)

(declare-fun tp!1750827 () Bool)

(assert (=> b!6283816 (= e!3821305 (and tp!1750826 tp!1750827))))

(assert (=> b!6281988 (= tp!1750538 e!3821305)))

(assert (= (and b!6281988 ((_ is Cons!64784) (t!378468 (exprs!6087 setElem!42740)))) b!6283816))

(declare-fun b!6283817 () Bool)

(declare-fun e!3821306 () Bool)

(assert (=> b!6283817 (= e!3821306 tp_is_empty!41659)))

(declare-fun b!6283818 () Bool)

(declare-fun tp!1750831 () Bool)

(declare-fun tp!1750828 () Bool)

(assert (=> b!6283818 (= e!3821306 (and tp!1750831 tp!1750828))))

(assert (=> b!6282012 (= tp!1750565 e!3821306)))

(declare-fun b!6283819 () Bool)

(declare-fun tp!1750829 () Bool)

(assert (=> b!6283819 (= e!3821306 tp!1750829)))

(declare-fun b!6283820 () Bool)

(declare-fun tp!1750830 () Bool)

(declare-fun tp!1750832 () Bool)

(assert (=> b!6283820 (= e!3821306 (and tp!1750830 tp!1750832))))

(assert (= (and b!6282012 ((_ is ElementMatch!16203) (h!71232 (exprs!6087 (h!71234 zl!343))))) b!6283817))

(assert (= (and b!6282012 ((_ is Concat!25048) (h!71232 (exprs!6087 (h!71234 zl!343))))) b!6283818))

(assert (= (and b!6282012 ((_ is Star!16203) (h!71232 (exprs!6087 (h!71234 zl!343))))) b!6283819))

(assert (= (and b!6282012 ((_ is Union!16203) (h!71232 (exprs!6087 (h!71234 zl!343))))) b!6283820))

(declare-fun b!6283821 () Bool)

(declare-fun e!3821307 () Bool)

(declare-fun tp!1750833 () Bool)

(declare-fun tp!1750834 () Bool)

(assert (=> b!6283821 (= e!3821307 (and tp!1750833 tp!1750834))))

(assert (=> b!6282012 (= tp!1750566 e!3821307)))

(assert (= (and b!6282012 ((_ is Cons!64784) (t!378468 (exprs!6087 (h!71234 zl!343))))) b!6283821))

(declare-fun b!6283822 () Bool)

(declare-fun e!3821308 () Bool)

(assert (=> b!6283822 (= e!3821308 tp_is_empty!41659)))

(declare-fun b!6283823 () Bool)

(declare-fun tp!1750838 () Bool)

(declare-fun tp!1750835 () Bool)

(assert (=> b!6283823 (= e!3821308 (and tp!1750838 tp!1750835))))

(assert (=> b!6282006 (= tp!1750556 e!3821308)))

(declare-fun b!6283824 () Bool)

(declare-fun tp!1750836 () Bool)

(assert (=> b!6283824 (= e!3821308 tp!1750836)))

(declare-fun b!6283825 () Bool)

(declare-fun tp!1750837 () Bool)

(declare-fun tp!1750839 () Bool)

(assert (=> b!6283825 (= e!3821308 (and tp!1750837 tp!1750839))))

(assert (= (and b!6282006 ((_ is ElementMatch!16203) (reg!16532 (regOne!32919 r!7292)))) b!6283822))

(assert (= (and b!6282006 ((_ is Concat!25048) (reg!16532 (regOne!32919 r!7292)))) b!6283823))

(assert (= (and b!6282006 ((_ is Star!16203) (reg!16532 (regOne!32919 r!7292)))) b!6283824))

(assert (= (and b!6282006 ((_ is Union!16203) (reg!16532 (regOne!32919 r!7292)))) b!6283825))

(declare-fun b!6283826 () Bool)

(declare-fun e!3821309 () Bool)

(assert (=> b!6283826 (= e!3821309 tp_is_empty!41659)))

(declare-fun b!6283827 () Bool)

(declare-fun tp!1750843 () Bool)

(declare-fun tp!1750840 () Bool)

(assert (=> b!6283827 (= e!3821309 (and tp!1750843 tp!1750840))))

(assert (=> b!6282022 (= tp!1750580 e!3821309)))

(declare-fun b!6283828 () Bool)

(declare-fun tp!1750841 () Bool)

(assert (=> b!6283828 (= e!3821309 tp!1750841)))

(declare-fun b!6283829 () Bool)

(declare-fun tp!1750842 () Bool)

(declare-fun tp!1750844 () Bool)

(assert (=> b!6283829 (= e!3821309 (and tp!1750842 tp!1750844))))

(assert (= (and b!6282022 ((_ is ElementMatch!16203) (regOne!32918 (reg!16532 r!7292)))) b!6283826))

(assert (= (and b!6282022 ((_ is Concat!25048) (regOne!32918 (reg!16532 r!7292)))) b!6283827))

(assert (= (and b!6282022 ((_ is Star!16203) (regOne!32918 (reg!16532 r!7292)))) b!6283828))

(assert (= (and b!6282022 ((_ is Union!16203) (regOne!32918 (reg!16532 r!7292)))) b!6283829))

(declare-fun b!6283830 () Bool)

(declare-fun e!3821310 () Bool)

(assert (=> b!6283830 (= e!3821310 tp_is_empty!41659)))

(declare-fun b!6283831 () Bool)

(declare-fun tp!1750848 () Bool)

(declare-fun tp!1750845 () Bool)

(assert (=> b!6283831 (= e!3821310 (and tp!1750848 tp!1750845))))

(assert (=> b!6282022 (= tp!1750577 e!3821310)))

(declare-fun b!6283832 () Bool)

(declare-fun tp!1750846 () Bool)

(assert (=> b!6283832 (= e!3821310 tp!1750846)))

(declare-fun b!6283833 () Bool)

(declare-fun tp!1750847 () Bool)

(declare-fun tp!1750849 () Bool)

(assert (=> b!6283833 (= e!3821310 (and tp!1750847 tp!1750849))))

(assert (= (and b!6282022 ((_ is ElementMatch!16203) (regTwo!32918 (reg!16532 r!7292)))) b!6283830))

(assert (= (and b!6282022 ((_ is Concat!25048) (regTwo!32918 (reg!16532 r!7292)))) b!6283831))

(assert (= (and b!6282022 ((_ is Star!16203) (regTwo!32918 (reg!16532 r!7292)))) b!6283832))

(assert (= (and b!6282022 ((_ is Union!16203) (regTwo!32918 (reg!16532 r!7292)))) b!6283833))

(declare-fun b!6283834 () Bool)

(declare-fun e!3821311 () Bool)

(assert (=> b!6283834 (= e!3821311 tp_is_empty!41659)))

(declare-fun b!6283835 () Bool)

(declare-fun tp!1750853 () Bool)

(declare-fun tp!1750850 () Bool)

(assert (=> b!6283835 (= e!3821311 (and tp!1750853 tp!1750850))))

(assert (=> b!6282005 (= tp!1750558 e!3821311)))

(declare-fun b!6283836 () Bool)

(declare-fun tp!1750851 () Bool)

(assert (=> b!6283836 (= e!3821311 tp!1750851)))

(declare-fun b!6283837 () Bool)

(declare-fun tp!1750852 () Bool)

(declare-fun tp!1750854 () Bool)

(assert (=> b!6283837 (= e!3821311 (and tp!1750852 tp!1750854))))

(assert (= (and b!6282005 ((_ is ElementMatch!16203) (regOne!32918 (regOne!32919 r!7292)))) b!6283834))

(assert (= (and b!6282005 ((_ is Concat!25048) (regOne!32918 (regOne!32919 r!7292)))) b!6283835))

(assert (= (and b!6282005 ((_ is Star!16203) (regOne!32918 (regOne!32919 r!7292)))) b!6283836))

(assert (= (and b!6282005 ((_ is Union!16203) (regOne!32918 (regOne!32919 r!7292)))) b!6283837))

(declare-fun b!6283838 () Bool)

(declare-fun e!3821312 () Bool)

(assert (=> b!6283838 (= e!3821312 tp_is_empty!41659)))

(declare-fun b!6283839 () Bool)

(declare-fun tp!1750858 () Bool)

(declare-fun tp!1750855 () Bool)

(assert (=> b!6283839 (= e!3821312 (and tp!1750858 tp!1750855))))

(assert (=> b!6282005 (= tp!1750555 e!3821312)))

(declare-fun b!6283840 () Bool)

(declare-fun tp!1750856 () Bool)

(assert (=> b!6283840 (= e!3821312 tp!1750856)))

(declare-fun b!6283841 () Bool)

(declare-fun tp!1750857 () Bool)

(declare-fun tp!1750859 () Bool)

(assert (=> b!6283841 (= e!3821312 (and tp!1750857 tp!1750859))))

(assert (= (and b!6282005 ((_ is ElementMatch!16203) (regTwo!32918 (regOne!32919 r!7292)))) b!6283838))

(assert (= (and b!6282005 ((_ is Concat!25048) (regTwo!32918 (regOne!32919 r!7292)))) b!6283839))

(assert (= (and b!6282005 ((_ is Star!16203) (regTwo!32918 (regOne!32919 r!7292)))) b!6283840))

(assert (= (and b!6282005 ((_ is Union!16203) (regTwo!32918 (regOne!32919 r!7292)))) b!6283841))

(declare-fun b!6283842 () Bool)

(declare-fun e!3821313 () Bool)

(assert (=> b!6283842 (= e!3821313 tp_is_empty!41659)))

(declare-fun b!6283843 () Bool)

(declare-fun tp!1750863 () Bool)

(declare-fun tp!1750860 () Bool)

(assert (=> b!6283843 (= e!3821313 (and tp!1750863 tp!1750860))))

(assert (=> b!6282024 (= tp!1750579 e!3821313)))

(declare-fun b!6283844 () Bool)

(declare-fun tp!1750861 () Bool)

(assert (=> b!6283844 (= e!3821313 tp!1750861)))

(declare-fun b!6283845 () Bool)

(declare-fun tp!1750862 () Bool)

(declare-fun tp!1750864 () Bool)

(assert (=> b!6283845 (= e!3821313 (and tp!1750862 tp!1750864))))

(assert (= (and b!6282024 ((_ is ElementMatch!16203) (regOne!32919 (reg!16532 r!7292)))) b!6283842))

(assert (= (and b!6282024 ((_ is Concat!25048) (regOne!32919 (reg!16532 r!7292)))) b!6283843))

(assert (= (and b!6282024 ((_ is Star!16203) (regOne!32919 (reg!16532 r!7292)))) b!6283844))

(assert (= (and b!6282024 ((_ is Union!16203) (regOne!32919 (reg!16532 r!7292)))) b!6283845))

(declare-fun b!6283846 () Bool)

(declare-fun e!3821314 () Bool)

(assert (=> b!6283846 (= e!3821314 tp_is_empty!41659)))

(declare-fun b!6283847 () Bool)

(declare-fun tp!1750868 () Bool)

(declare-fun tp!1750865 () Bool)

(assert (=> b!6283847 (= e!3821314 (and tp!1750868 tp!1750865))))

(assert (=> b!6282024 (= tp!1750581 e!3821314)))

(declare-fun b!6283848 () Bool)

(declare-fun tp!1750866 () Bool)

(assert (=> b!6283848 (= e!3821314 tp!1750866)))

(declare-fun b!6283849 () Bool)

(declare-fun tp!1750867 () Bool)

(declare-fun tp!1750869 () Bool)

(assert (=> b!6283849 (= e!3821314 (and tp!1750867 tp!1750869))))

(assert (= (and b!6282024 ((_ is ElementMatch!16203) (regTwo!32919 (reg!16532 r!7292)))) b!6283846))

(assert (= (and b!6282024 ((_ is Concat!25048) (regTwo!32919 (reg!16532 r!7292)))) b!6283847))

(assert (= (and b!6282024 ((_ is Star!16203) (regTwo!32919 (reg!16532 r!7292)))) b!6283848))

(assert (= (and b!6282024 ((_ is Union!16203) (regTwo!32919 (reg!16532 r!7292)))) b!6283849))

(declare-fun b!6283850 () Bool)

(declare-fun e!3821315 () Bool)

(assert (=> b!6283850 (= e!3821315 tp_is_empty!41659)))

(declare-fun b!6283851 () Bool)

(declare-fun tp!1750873 () Bool)

(declare-fun tp!1750870 () Bool)

(assert (=> b!6283851 (= e!3821315 (and tp!1750873 tp!1750870))))

(assert (=> b!6282015 (= tp!1750568 e!3821315)))

(declare-fun b!6283852 () Bool)

(declare-fun tp!1750871 () Bool)

(assert (=> b!6283852 (= e!3821315 tp!1750871)))

(declare-fun b!6283853 () Bool)

(declare-fun tp!1750872 () Bool)

(declare-fun tp!1750874 () Bool)

(assert (=> b!6283853 (= e!3821315 (and tp!1750872 tp!1750874))))

(assert (= (and b!6282015 ((_ is ElementMatch!16203) (reg!16532 (regOne!32918 r!7292)))) b!6283850))

(assert (= (and b!6282015 ((_ is Concat!25048) (reg!16532 (regOne!32918 r!7292)))) b!6283851))

(assert (= (and b!6282015 ((_ is Star!16203) (reg!16532 (regOne!32918 r!7292)))) b!6283852))

(assert (= (and b!6282015 ((_ is Union!16203) (reg!16532 (regOne!32918 r!7292)))) b!6283853))

(declare-fun b!6283854 () Bool)

(declare-fun e!3821316 () Bool)

(declare-fun tp!1750875 () Bool)

(assert (=> b!6283854 (= e!3821316 (and tp_is_empty!41659 tp!1750875))))

(assert (=> b!6282037 (= tp!1750590 e!3821316)))

(assert (= (and b!6282037 ((_ is Cons!64785) (t!378469 (t!378469 s!2326)))) b!6283854))

(declare-fun b!6283855 () Bool)

(declare-fun e!3821317 () Bool)

(assert (=> b!6283855 (= e!3821317 tp_is_empty!41659)))

(declare-fun b!6283856 () Bool)

(declare-fun tp!1750879 () Bool)

(declare-fun tp!1750876 () Bool)

(assert (=> b!6283856 (= e!3821317 (and tp!1750879 tp!1750876))))

(assert (=> b!6282014 (= tp!1750570 e!3821317)))

(declare-fun b!6283857 () Bool)

(declare-fun tp!1750877 () Bool)

(assert (=> b!6283857 (= e!3821317 tp!1750877)))

(declare-fun b!6283858 () Bool)

(declare-fun tp!1750878 () Bool)

(declare-fun tp!1750880 () Bool)

(assert (=> b!6283858 (= e!3821317 (and tp!1750878 tp!1750880))))

(assert (= (and b!6282014 ((_ is ElementMatch!16203) (regOne!32918 (regOne!32918 r!7292)))) b!6283855))

(assert (= (and b!6282014 ((_ is Concat!25048) (regOne!32918 (regOne!32918 r!7292)))) b!6283856))

(assert (= (and b!6282014 ((_ is Star!16203) (regOne!32918 (regOne!32918 r!7292)))) b!6283857))

(assert (= (and b!6282014 ((_ is Union!16203) (regOne!32918 (regOne!32918 r!7292)))) b!6283858))

(declare-fun b!6283859 () Bool)

(declare-fun e!3821318 () Bool)

(assert (=> b!6283859 (= e!3821318 tp_is_empty!41659)))

(declare-fun b!6283860 () Bool)

(declare-fun tp!1750884 () Bool)

(declare-fun tp!1750881 () Bool)

(assert (=> b!6283860 (= e!3821318 (and tp!1750884 tp!1750881))))

(assert (=> b!6282014 (= tp!1750567 e!3821318)))

(declare-fun b!6283861 () Bool)

(declare-fun tp!1750882 () Bool)

(assert (=> b!6283861 (= e!3821318 tp!1750882)))

(declare-fun b!6283862 () Bool)

(declare-fun tp!1750883 () Bool)

(declare-fun tp!1750885 () Bool)

(assert (=> b!6283862 (= e!3821318 (and tp!1750883 tp!1750885))))

(assert (= (and b!6282014 ((_ is ElementMatch!16203) (regTwo!32918 (regOne!32918 r!7292)))) b!6283859))

(assert (= (and b!6282014 ((_ is Concat!25048) (regTwo!32918 (regOne!32918 r!7292)))) b!6283860))

(assert (= (and b!6282014 ((_ is Star!16203) (regTwo!32918 (regOne!32918 r!7292)))) b!6283861))

(assert (= (and b!6282014 ((_ is Union!16203) (regTwo!32918 (regOne!32918 r!7292)))) b!6283862))

(declare-fun b!6283863 () Bool)

(declare-fun e!3821319 () Bool)

(assert (=> b!6283863 (= e!3821319 tp_is_empty!41659)))

(declare-fun b!6283864 () Bool)

(declare-fun tp!1750889 () Bool)

(declare-fun tp!1750886 () Bool)

(assert (=> b!6283864 (= e!3821319 (and tp!1750889 tp!1750886))))

(assert (=> b!6282007 (= tp!1750557 e!3821319)))

(declare-fun b!6283865 () Bool)

(declare-fun tp!1750887 () Bool)

(assert (=> b!6283865 (= e!3821319 tp!1750887)))

(declare-fun b!6283866 () Bool)

(declare-fun tp!1750888 () Bool)

(declare-fun tp!1750890 () Bool)

(assert (=> b!6283866 (= e!3821319 (and tp!1750888 tp!1750890))))

(assert (= (and b!6282007 ((_ is ElementMatch!16203) (regOne!32919 (regOne!32919 r!7292)))) b!6283863))

(assert (= (and b!6282007 ((_ is Concat!25048) (regOne!32919 (regOne!32919 r!7292)))) b!6283864))

(assert (= (and b!6282007 ((_ is Star!16203) (regOne!32919 (regOne!32919 r!7292)))) b!6283865))

(assert (= (and b!6282007 ((_ is Union!16203) (regOne!32919 (regOne!32919 r!7292)))) b!6283866))

(declare-fun b!6283867 () Bool)

(declare-fun e!3821320 () Bool)

(assert (=> b!6283867 (= e!3821320 tp_is_empty!41659)))

(declare-fun b!6283868 () Bool)

(declare-fun tp!1750894 () Bool)

(declare-fun tp!1750891 () Bool)

(assert (=> b!6283868 (= e!3821320 (and tp!1750894 tp!1750891))))

(assert (=> b!6282007 (= tp!1750559 e!3821320)))

(declare-fun b!6283869 () Bool)

(declare-fun tp!1750892 () Bool)

(assert (=> b!6283869 (= e!3821320 tp!1750892)))

(declare-fun b!6283870 () Bool)

(declare-fun tp!1750893 () Bool)

(declare-fun tp!1750895 () Bool)

(assert (=> b!6283870 (= e!3821320 (and tp!1750893 tp!1750895))))

(assert (= (and b!6282007 ((_ is ElementMatch!16203) (regTwo!32919 (regOne!32919 r!7292)))) b!6283867))

(assert (= (and b!6282007 ((_ is Concat!25048) (regTwo!32919 (regOne!32919 r!7292)))) b!6283868))

(assert (= (and b!6282007 ((_ is Star!16203) (regTwo!32919 (regOne!32919 r!7292)))) b!6283869))

(assert (= (and b!6282007 ((_ is Union!16203) (regTwo!32919 (regOne!32919 r!7292)))) b!6283870))

(declare-fun b!6283871 () Bool)

(declare-fun e!3821321 () Bool)

(assert (=> b!6283871 (= e!3821321 tp_is_empty!41659)))

(declare-fun b!6283872 () Bool)

(declare-fun tp!1750899 () Bool)

(declare-fun tp!1750896 () Bool)

(assert (=> b!6283872 (= e!3821321 (and tp!1750899 tp!1750896))))

(assert (=> b!6282023 (= tp!1750578 e!3821321)))

(declare-fun b!6283873 () Bool)

(declare-fun tp!1750897 () Bool)

(assert (=> b!6283873 (= e!3821321 tp!1750897)))

(declare-fun b!6283874 () Bool)

(declare-fun tp!1750898 () Bool)

(declare-fun tp!1750900 () Bool)

(assert (=> b!6283874 (= e!3821321 (and tp!1750898 tp!1750900))))

(assert (= (and b!6282023 ((_ is ElementMatch!16203) (reg!16532 (reg!16532 r!7292)))) b!6283871))

(assert (= (and b!6282023 ((_ is Concat!25048) (reg!16532 (reg!16532 r!7292)))) b!6283872))

(assert (= (and b!6282023 ((_ is Star!16203) (reg!16532 (reg!16532 r!7292)))) b!6283873))

(assert (= (and b!6282023 ((_ is Union!16203) (reg!16532 (reg!16532 r!7292)))) b!6283874))

(declare-fun b!6283875 () Bool)

(declare-fun e!3821322 () Bool)

(declare-fun tp!1750901 () Bool)

(declare-fun tp!1750902 () Bool)

(assert (=> b!6283875 (= e!3821322 (and tp!1750901 tp!1750902))))

(assert (=> b!6282032 (= tp!1750586 e!3821322)))

(assert (= (and b!6282032 ((_ is Cons!64784) (exprs!6087 (h!71234 (t!378470 zl!343))))) b!6283875))

(declare-fun b!6283876 () Bool)

(declare-fun e!3821323 () Bool)

(declare-fun tp!1750903 () Bool)

(declare-fun tp!1750904 () Bool)

(assert (=> b!6283876 (= e!3821323 (and tp!1750903 tp!1750904))))

(assert (=> b!6281993 (= tp!1750543 e!3821323)))

(assert (= (and b!6281993 ((_ is Cons!64784) (exprs!6087 setElem!42746))) b!6283876))

(declare-fun condSetEmpty!42758 () Bool)

(assert (=> setNonEmpty!42746 (= condSetEmpty!42758 (= setRest!42746 ((as const (Array Context!11174 Bool)) false)))))

(declare-fun setRes!42758 () Bool)

(assert (=> setNonEmpty!42746 (= tp!1750544 setRes!42758)))

(declare-fun setIsEmpty!42758 () Bool)

(assert (=> setIsEmpty!42758 setRes!42758))

(declare-fun setNonEmpty!42758 () Bool)

(declare-fun tp!1750906 () Bool)

(declare-fun e!3821324 () Bool)

(declare-fun setElem!42758 () Context!11174)

(assert (=> setNonEmpty!42758 (= setRes!42758 (and tp!1750906 (inv!83754 setElem!42758) e!3821324))))

(declare-fun setRest!42758 () (InoxSet Context!11174))

(assert (=> setNonEmpty!42758 (= setRest!42746 ((_ map or) (store ((as const (Array Context!11174 Bool)) false) setElem!42758 true) setRest!42758))))

(declare-fun b!6283877 () Bool)

(declare-fun tp!1750905 () Bool)

(assert (=> b!6283877 (= e!3821324 tp!1750905)))

(assert (= (and setNonEmpty!42746 condSetEmpty!42758) setIsEmpty!42758))

(assert (= (and setNonEmpty!42746 (not condSetEmpty!42758)) setNonEmpty!42758))

(assert (= setNonEmpty!42758 b!6283877))

(declare-fun m!7104822 () Bool)

(assert (=> setNonEmpty!42758 m!7104822))

(declare-fun b!6283878 () Bool)

(declare-fun e!3821325 () Bool)

(assert (=> b!6283878 (= e!3821325 tp_is_empty!41659)))

(declare-fun b!6283879 () Bool)

(declare-fun tp!1750910 () Bool)

(declare-fun tp!1750907 () Bool)

(assert (=> b!6283879 (= e!3821325 (and tp!1750910 tp!1750907))))

(assert (=> b!6282016 (= tp!1750569 e!3821325)))

(declare-fun b!6283880 () Bool)

(declare-fun tp!1750908 () Bool)

(assert (=> b!6283880 (= e!3821325 tp!1750908)))

(declare-fun b!6283881 () Bool)

(declare-fun tp!1750909 () Bool)

(declare-fun tp!1750911 () Bool)

(assert (=> b!6283881 (= e!3821325 (and tp!1750909 tp!1750911))))

(assert (= (and b!6282016 ((_ is ElementMatch!16203) (regOne!32919 (regOne!32918 r!7292)))) b!6283878))

(assert (= (and b!6282016 ((_ is Concat!25048) (regOne!32919 (regOne!32918 r!7292)))) b!6283879))

(assert (= (and b!6282016 ((_ is Star!16203) (regOne!32919 (regOne!32918 r!7292)))) b!6283880))

(assert (= (and b!6282016 ((_ is Union!16203) (regOne!32919 (regOne!32918 r!7292)))) b!6283881))

(declare-fun b!6283882 () Bool)

(declare-fun e!3821326 () Bool)

(assert (=> b!6283882 (= e!3821326 tp_is_empty!41659)))

(declare-fun b!6283883 () Bool)

(declare-fun tp!1750915 () Bool)

(declare-fun tp!1750912 () Bool)

(assert (=> b!6283883 (= e!3821326 (and tp!1750915 tp!1750912))))

(assert (=> b!6282016 (= tp!1750571 e!3821326)))

(declare-fun b!6283884 () Bool)

(declare-fun tp!1750913 () Bool)

(assert (=> b!6283884 (= e!3821326 tp!1750913)))

(declare-fun b!6283885 () Bool)

(declare-fun tp!1750914 () Bool)

(declare-fun tp!1750916 () Bool)

(assert (=> b!6283885 (= e!3821326 (and tp!1750914 tp!1750916))))

(assert (= (and b!6282016 ((_ is ElementMatch!16203) (regTwo!32919 (regOne!32918 r!7292)))) b!6283882))

(assert (= (and b!6282016 ((_ is Concat!25048) (regTwo!32919 (regOne!32918 r!7292)))) b!6283883))

(assert (= (and b!6282016 ((_ is Star!16203) (regTwo!32919 (regOne!32918 r!7292)))) b!6283884))

(assert (= (and b!6282016 ((_ is Union!16203) (regTwo!32919 (regOne!32918 r!7292)))) b!6283885))

(declare-fun b!6283887 () Bool)

(declare-fun e!3821328 () Bool)

(declare-fun tp!1750917 () Bool)

(assert (=> b!6283887 (= e!3821328 tp!1750917)))

(declare-fun b!6283886 () Bool)

(declare-fun tp!1750918 () Bool)

(declare-fun e!3821327 () Bool)

(assert (=> b!6283886 (= e!3821327 (and (inv!83754 (h!71234 (t!378470 (t!378470 zl!343)))) e!3821328 tp!1750918))))

(assert (=> b!6282031 (= tp!1750587 e!3821327)))

(assert (= b!6283886 b!6283887))

(assert (= (and b!6282031 ((_ is Cons!64786) (t!378470 (t!378470 zl!343)))) b!6283886))

(declare-fun m!7104824 () Bool)

(assert (=> b!6283886 m!7104824))

(declare-fun b_lambda!239215 () Bool)

(assert (= b_lambda!239205 (or b!6281679 b_lambda!239215)))

(declare-fun bs!1570798 () Bool)

(declare-fun d!1972379 () Bool)

(assert (= bs!1570798 (and d!1972379 b!6281679)))

(assert (=> bs!1570798 (= (dynLambda!25637 lambda!344588 (h!71234 (t!378470 lt!2354647))) (>= lt!2354807 (contextDepth!220 (h!71234 (t!378470 lt!2354647)))))))

(assert (=> bs!1570798 m!7104576))

(assert (=> b!6283570 d!1972379))

(declare-fun b_lambda!239217 () Bool)

(assert (= b_lambda!239213 (or b!6281681 b_lambda!239217)))

(declare-fun bs!1570799 () Bool)

(declare-fun d!1972381 () Bool)

(assert (= bs!1570799 (and d!1972381 b!6281681)))

(assert (=> bs!1570799 (= (dynLambda!25637 lambda!344589 (h!71234 lt!2354647)) (>= lt!2354808 (contextDepth!220 (h!71234 lt!2354647))))))

(assert (=> bs!1570799 m!7102628))

(assert (=> b!6283759 d!1972381))

(declare-fun b_lambda!239219 () Bool)

(assert (= b_lambda!239199 (or d!1971343 b_lambda!239219)))

(declare-fun bs!1570800 () Bool)

(declare-fun d!1972383 () Bool)

(assert (= bs!1570800 (and d!1972383 d!1971343)))

(assert (=> bs!1570800 (= (dynLambda!25634 lambda!344598 (h!71232 (exprs!6087 (h!71234 zl!343)))) (validRegex!7939 (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(declare-fun m!7104826 () Bool)

(assert (=> bs!1570800 m!7104826))

(assert (=> b!6283533 d!1972383))

(declare-fun b_lambda!239221 () Bool)

(assert (= b_lambda!239193 (or b!6280977 b_lambda!239221)))

(assert (=> d!1972201 d!1971443))

(declare-fun b_lambda!239223 () Bool)

(assert (= b_lambda!239209 (or d!1971415 b_lambda!239223)))

(declare-fun bs!1570801 () Bool)

(declare-fun d!1972385 () Bool)

(assert (= bs!1570801 (and d!1972385 d!1971415)))

(assert (=> bs!1570801 (= (dynLambda!25634 lambda!344612 (h!71232 (exprs!6087 (h!71234 zl!343)))) (validRegex!7939 (h!71232 (exprs!6087 (h!71234 zl!343)))))))

(assert (=> bs!1570801 m!7104826))

(assert (=> b!6283629 d!1972385))

(declare-fun b_lambda!239225 () Bool)

(assert (= b_lambda!239187 (or d!1971367 b_lambda!239225)))

(declare-fun bs!1570802 () Bool)

(declare-fun d!1972387 () Bool)

(assert (= bs!1570802 (and d!1972387 d!1971367)))

(assert (=> bs!1570802 (= (dynLambda!25634 lambda!344604 (h!71232 (t!378468 (exprs!6087 (h!71234 zl!343))))) (validRegex!7939 (h!71232 (t!378468 (exprs!6087 (h!71234 zl!343))))))))

(declare-fun m!7104828 () Bool)

(assert (=> bs!1570802 m!7104828))

(assert (=> b!6283320 d!1972387))

(declare-fun b_lambda!239227 () Bool)

(assert (= b_lambda!239207 (or b!6281686 b_lambda!239227)))

(declare-fun bs!1570803 () Bool)

(declare-fun d!1972389 () Bool)

(assert (= bs!1570803 (and d!1972389 b!6281686)))

(assert (=> bs!1570803 (= (dynLambda!25637 lambda!344592 (h!71234 zl!343)) (>= lt!2354812 (contextDepth!220 (h!71234 zl!343))))))

(assert (=> bs!1570803 m!7102640))

(assert (=> b!6283609 d!1972389))

(declare-fun b_lambda!239229 () Bool)

(assert (= b_lambda!239185 (or b!6280977 b_lambda!239229)))

(assert (=> d!1971945 d!1971445))

(declare-fun b_lambda!239231 () Bool)

(assert (= b_lambda!239201 (or d!1971341 b_lambda!239231)))

(declare-fun bs!1570804 () Bool)

(declare-fun d!1972391 () Bool)

(assert (= bs!1570804 (and d!1972391 d!1971341)))

(assert (=> bs!1570804 (= (dynLambda!25634 lambda!344595 (h!71232 (exprs!6087 setElem!42740))) (validRegex!7939 (h!71232 (exprs!6087 setElem!42740))))))

(declare-fun m!7104830 () Bool)

(assert (=> bs!1570804 m!7104830))

(assert (=> b!6283545 d!1972391))

(declare-fun b_lambda!239233 () Bool)

(assert (= b_lambda!239191 (or b!6281684 b_lambda!239233)))

(declare-fun bs!1570805 () Bool)

(declare-fun d!1972393 () Bool)

(assert (= bs!1570805 (and d!1972393 b!6281684)))

(assert (=> bs!1570805 (= (dynLambda!25637 lambda!344591 (h!71234 (t!378470 zl!343))) (>= lt!2354811 (contextDepth!220 (h!71234 (t!378470 zl!343)))))))

(assert (=> bs!1570805 m!7104366))

(assert (=> b!6283427 d!1972393))

(declare-fun b_lambda!239235 () Bool)

(assert (= b_lambda!239195 (or b!6280977 b_lambda!239235)))

(assert (=> d!1972211 d!1971441))

(declare-fun b_lambda!239237 () Bool)

(assert (= b_lambda!239197 (or d!1971351 b_lambda!239237)))

(declare-fun bs!1570806 () Bool)

(declare-fun d!1972395 () Bool)

(assert (= bs!1570806 (and d!1972395 d!1971351)))

(assert (=> bs!1570806 (= (dynLambda!25634 lambda!344601 (h!71232 lt!2354672)) (validRegex!7939 (h!71232 lt!2354672)))))

(declare-fun m!7104832 () Bool)

(assert (=> bs!1570806 m!7104832))

(assert (=> b!6283522 d!1972395))

(declare-fun b_lambda!239239 () Bool)

(assert (= b_lambda!239211 (or d!1971431 b_lambda!239239)))

(declare-fun bs!1570807 () Bool)

(declare-fun d!1972397 () Bool)

(assert (= bs!1570807 (and d!1972397 d!1971431)))

(assert (=> bs!1570807 (= (dynLambda!25634 lambda!344616 (h!71232 (unfocusZipperList!1624 zl!343))) (validRegex!7939 (h!71232 (unfocusZipperList!1624 zl!343))))))

(declare-fun m!7104834 () Bool)

(assert (=> bs!1570807 m!7104834))

(assert (=> b!6283757 d!1972397))

(declare-fun b_lambda!239241 () Bool)

(assert (= b_lambda!239203 (or d!1971363 b_lambda!239241)))

(declare-fun bs!1570808 () Bool)

(declare-fun d!1972399 () Bool)

(assert (= bs!1570808 (and d!1972399 d!1971363)))

(assert (=> bs!1570808 (= (dynLambda!25634 lambda!344602 (h!71232 lt!2354639)) (validRegex!7939 (h!71232 lt!2354639)))))

(declare-fun m!7104836 () Bool)

(assert (=> bs!1570808 m!7104836))

(assert (=> b!6283565 d!1972399))

(declare-fun b_lambda!239243 () Bool)

(assert (= b_lambda!239189 (or d!1971433 b_lambda!239243)))

(declare-fun bs!1570809 () Bool)

(declare-fun d!1972401 () Bool)

(assert (= bs!1570809 (and d!1972401 d!1971433)))

(assert (=> bs!1570809 (= (dynLambda!25634 lambda!344619 (h!71232 lt!2354844)) (validRegex!7939 (h!71232 lt!2354844)))))

(declare-fun m!7104838 () Bool)

(assert (=> bs!1570809 m!7104838))

(assert (=> b!6283326 d!1972401))

(check-sat (not d!1972007) (not b!6283037) (not b!6283802) (not d!1971965) (not d!1972311) (not b!6283827) (not b!6283554) (not b!6283379) (not b!6283567) (not d!1971935) (not b!6283843) (not b!6283853) (not bm!531906) (not b!6283430) (not b_lambda!239215) (not b!6283623) (not b!6283429) (not b!6283630) (not bm!531848) (not b!6283388) (not b!6283786) (not b!6283773) (not d!1972365) (not d!1972109) (not bm!531973) (not bs!1570806) (not b!6283199) (not b!6283619) (not bm!531867) (not b!6283343) (not b!6283172) (not bm!531940) (not b!6283726) (not b!6283706) (not b!6283760) (not b_lambda!239225) (not b_lambda!239239) (not d!1972149) (not b!6282984) (not b!6283618) (not b!6283134) (not b!6283861) (not d!1971945) (not b_lambda!239119) (not b!6283394) (not b!6283694) (not b!6283277) (not bm!531847) (not bs!1570802) (not d!1972321) (not bm!531949) (not b!6282975) (not b!6283710) (not b!6283088) (not b!6283124) (not b!6283774) (not d!1972343) (not d!1972031) (not b!6283544) (not b_lambda!239219) (not d!1972295) (not d!1972307) (not d!1972189) (not b!6283431) (not setNonEmpty!42756) (not b!6283865) (not d!1972185) (not d!1972061) (not b!6283600) (not b!6283690) (not b!6283571) (not b!6283839) (not b!6283293) (not b!6283816) (not b!6283354) (not bm!531904) (not d!1972073) (not d!1972271) (not b_lambda!239241) (not b!6283342) (not bm!531829) (not bs!1570803) (not b!6283577) (not b!6283683) (not d!1971925) (not b!6283036) (not b!6283647) (not b!6283829) (not b!6283648) (not b!6283251) (not d!1971993) (not bm!531955) (not d!1972361) (not b!6283810) (not bm!531918) (not d!1972103) (not bs!1570801) (not b!6283186) (not d!1972327) tp_is_empty!41659 (not b!6283841) (not b!6283798) (not b!6283704) (not b_lambda!239223) (not b!6283546) (not bm!531982) (not bm!531850) (not d!1972147) (not bm!531963) (not bm!531846) (not b!6283775) (not bm!531878) (not b!6283340) (not b!6283399) (not bm!531932) (not b!6283160) (not d!1972329) (not b!6283809) (not b!6283217) (not d!1972349) (not b!6283860) (not bm!531972) (not b!6283491) (not b!6283466) (not d!1972279) (not b!6283688) (not d!1972273) (not bs!1570807) (not b!6283866) (not b!6283578) (not b!6283254) (not d!1972113) (not b!6283870) (not d!1972261) (not bm!531959) (not b!6283184) (not bm!531944) (not b!6283249) (not b!6283737) (not b!6283857) (not d!1972247) (not bm!531917) (not b!6283579) (not b!6283852) (not b!6282964) (not bm!531960) (not d!1972141) (not d!1972317) (not b_lambda!239221) (not b_lambda!239231) (not bm!531941) (not bm!531977) (not b!6283127) (not b!6283601) (not b!6283541) (not d!1972059) (not b!6283493) (not b!6283705) (not bm!531900) (not d!1972243) (not b!6283856) (not b!6283807) (not d!1972009) (not b!6283814) (not b!6283097) (not bm!531815) (not d!1972339) (not bm!531853) (not b!6283289) (not b!6283575) (not b!6283845) (not b!6283376) (not b!6283400) (not b!6283185) (not b!6283844) (not b!6283321) (not b!6283779) (not b!6283801) (not b!6283347) (not d!1972195) (not d!1972111) (not b!6283825) (not setNonEmpty!42758) (not b!6283598) (not b!6283876) (not b!6283659) (not d!1972169) (not d!1972153) (not b!6283130) (not bs!1570805) (not b!6283613) (not b!6283104) (not b!6283672) (not b!6283542) (not b!6283021) (not b!6283328) (not bm!531913) (not b!6283847) (not b!6283681) (not d!1972063) (not b_lambda!239227) (not b!6283364) (not bm!531872) (not b!6283881) (not bm!531886) (not b!6283534) (not b!6283543) (not b!6283813) (not bm!531923) (not bm!531871) (not bm!531889) (not bm!531864) (not b_lambda!239217) (not b!6283819) (not bm!531951) (not b!6283569) (not d!1972257) (not b!6283477) (not b!6283264) (not b!6283645) (not b!6283023) (not d!1972199) (not b!6283823) (not b!6283671) (not d!1972047) (not b!6283574) (not b!6283782) (not b!6283198) (not d!1971997) (not b!6283033) (not b!6283836) (not d!1972001) (not b!6283129) (not b!6283523) (not b!6283833) (not b!6283460) (not b!6283877) (not d!1972293) (not b!6283806) (not b!6283616) (not b!6283820) (not d!1972107) (not b!6283869) (not b!6283191) (not d!1972281) (not d!1972033) (not b_lambda!239229) (not b!6283758) (not b!6283253) (not d!1972197) (not bm!531896) (not b!6283102) (not d!1972359) (not bm!531840) (not d!1971981) (not d!1972179) (not b!6283849) (not b!6283269) (not b!6283299) (not bs!1570804) (not b!6283580) (not b!6283386) (not bm!531983) (not b!6283612) (not d!1972049) (not setNonEmpty!42757) (not bm!531935) (not b!6283402) (not bm!531915) (not bm!531845) (not d!1971949) (not b!6283101) (not bm!531964) (not bm!531952) (not d!1971927) (not bm!531831) (not bm!531885) (not b!6283572) (not b!6283219) (not setNonEmpty!42755) (not b!6283886) (not b!6283611) (not bm!531968) (not d!1972355) (not bm!531965) (not d!1972165) (not b!6283255) (not bm!531986) (not b!6283818) (not b!6283832) (not bm!531881) (not b_lambda!239123) (not b!6283835) (not b!6283294) (not d!1972021) (not b!6283799) (not bm!531818) (not b!6283831) (not b!6283380) (not b!6283604) (not b!6283868) (not b!6283128) (not b!6283795) (not d!1972003) (not bm!531879) (not bm!531870) (not bm!531827) (not b!6283797) (not b!6282993) (not b!6283488) (not b!6283003) (not d!1972289) (not d!1972137) (not bm!531950) (not bs!1570798) (not bm!531962) (not b!6283373) (not bm!531820) (not b!6283875) (not b!6283883) (not bs!1570799) (not b!6282999) (not b!6283785) (not b!6283864) (not d!1972217) (not b!6283656) (not b!6283170) (not d!1972015) (not b!6283703) (not b!6283459) (not b!6283821) (not b!6283106) (not b!6283538) (not b!6283679) (not bm!531971) (not b!6283791) (not bm!531854) (not bm!531892) (not bm!531902) (not b!6283288) (not bm!531851) (not d!1972315) (not bm!531817) (not b!6283605) (not bm!531883) (not b!6283793) (not bm!531909) (not b!6283387) (not bm!531830) (not b!6283824) (not b_lambda!239243) (not b!6283351) (not d!1972139) (not d!1972205) (not bm!531890) (not b!6283880) (not d!1971955) (not b!6283404) (not bm!531914) (not b!6283610) (not b!6283418) (not d!1972333) (not b!6283197) (not b!6283244) (not bs!1570800) (not b!6283171) (not bm!531919) (not bm!531920) (not b!6283815) (not d!1972193) (not bm!531988) (not b!6283195) (not d!1972071) (not b!6283652) (not b!6283471) (not bm!531937) (not b!6283475) (not d!1972213) (not b!6283848) (not b!6282967) (not b!6283086) (not bm!531891) (not b!6283716) (not b!6283138) (not d!1972341) (not bm!531926) (not b!6283413) (not b!6283879) (not bm!531979) (not d!1972309) (not b!6283837) (not b!6283383) (not bm!531822) (not bm!531934) (not d!1972115) (not b!6283212) (not b!6283297) (not b!6283458) (not b!6283789) (not b!6282998) (not b!6283314) (not bm!531957) (not d!1972335) (not b!6283646) (not bm!531894) (not b!6282996) (not b!6283007) (not b!6283009) (not b!6283781) (not b!6283862) (not d!1972211) (not bm!531888) (not b!6283540) (not bm!531825) (not b!6283494) (not bm!531877) (not b!6283267) (not d!1972325) (not b!6282971) (not b!6283858) (not bm!531821) (not bm!531938) (not b!6283885) (not b!6283803) (not d!1972093) (not b!6283887) (not bm!531839) (not b!6283355) (not b!6282997) (not bm!531927) (not d!1972133) (not bm!531931) (not b!6283443) (not b!6283401) (not b!6283411) (not d!1972157) (not d!1971963) (not d!1971973) (not b!6283087) (not b!6283828) (not b!6283614) (not b!6283687) (not b!6283377) (not b!6283794) (not b!6283464) (not b!6283680) (not b!6283327) (not bm!531946) (not d!1972353) (not b!6283777) (not b!6283392) (not b!6283851) (not d!1972135) (not b!6283631) (not b!6283607) (not b_lambda!239233) (not b_lambda!239235) (not bm!531978) (not b!6283457) (not b!6283492) (not d!1972201) (not d!1972095) (not b!6283682) (not b!6283248) (not b!6283539) (not d!1972233) (not b!6283627) (not bm!531956) (not b!6283391) (not d!1972229) (not b!6283692) (not d!1972177) (not b!6283221) (not b_lambda!239237) (not bm!531855) (not b!6283783) (not d!1972369) (not d!1972011) (not b!6283874) (not b!6283563) (not b!6283089) (not b!6283465) (not d!1972191) (not bm!531945) (not bm!531901) (not bs!1570809) (not b!6283854) (not b!6283811) (not b!6283568) (not b!6283445) (not b_lambda!239121) (not b!6283213) (not b!6283658) (not b!6283462) (not b!6283714) (not b!6283633) (not bm!531907) (not d!1972051) (not b!6283520) (not b!6283884) (not b!6283617) (not b!6282965) (not b!6283805) (not b!6283790) (not d!1972079) (not b!6282966) (not d!1972215) (not d!1972097) (not d!1972155) (not d!1972237) (not b!6283034) (not d!1972151) (not b!6283467) (not b!6283531) (not b!6283115) (not bm!531893) (not bm!531910) (not bm!531897) (not bs!1570808) (not b!6283684) (not d!1972019) (not bm!531987) (not b!6283250) (not b!6283403) (not b!6283761) (not b!6283461) (not b!6283428) (not b!6283487) (not d!1972305) (not b!6283187) (not b!6283873) (not b!6283456) (not b!6283384) (not bm!531826) (not b!6283093) (not bm!531961) (not b!6283566) (not b!6283510) (not b!6283511) (not b!6283341) (not bm!531928) (not b!6283840) (not b!6283398) (not b!6283608) (not d!1972245) (not d!1972287) (not bm!531882) (not b!6283778) (not b!6283062) (not bm!531874) (not b!6283512) (not b!6283755) (not d!1972363) (not b!6283375) (not b!6283787) (not d!1972249) (not b!6283416) (not b!6283872))
(check-sat)
