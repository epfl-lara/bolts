; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562598 () Bool)

(assert start!562598)

(declare-fun b!5339645 () Bool)

(assert (=> b!5339645 true))

(assert (=> b!5339645 true))

(declare-fun lambda!273584 () Int)

(declare-fun lambda!273583 () Int)

(assert (=> b!5339645 (not (= lambda!273584 lambda!273583))))

(assert (=> b!5339645 true))

(assert (=> b!5339645 true))

(declare-fun b!5339644 () Bool)

(assert (=> b!5339644 true))

(declare-fun bs!1238260 () Bool)

(declare-fun b!5339668 () Bool)

(assert (= bs!1238260 (and b!5339668 b!5339645)))

(declare-datatypes ((C!30300 0))(
  ( (C!30301 (val!24852 Int)) )
))
(declare-datatypes ((Regex!15015 0))(
  ( (ElementMatch!15015 (c!929081 C!30300)) (Concat!23860 (regOne!30542 Regex!15015) (regTwo!30542 Regex!15015)) (EmptyExpr!15015) (Star!15015 (reg!15344 Regex!15015)) (EmptyLang!15015) (Union!15015 (regOne!30543 Regex!15015) (regTwo!30543 Regex!15015)) )
))
(declare-fun r!7292 () Regex!15015)

(declare-fun lambda!273586 () Int)

(declare-fun lt!2177299 () Regex!15015)

(assert (=> bs!1238260 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177299 (regTwo!30542 r!7292))) (= lambda!273586 lambda!273583))))

(assert (=> bs!1238260 (not (= lambda!273586 lambda!273584))))

(assert (=> b!5339668 true))

(assert (=> b!5339668 true))

(assert (=> b!5339668 true))

(declare-fun lambda!273587 () Int)

(assert (=> bs!1238260 (not (= lambda!273587 lambda!273583))))

(assert (=> bs!1238260 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177299 (regTwo!30542 r!7292))) (= lambda!273587 lambda!273584))))

(assert (=> b!5339668 (not (= lambda!273587 lambda!273586))))

(assert (=> b!5339668 true))

(assert (=> b!5339668 true))

(assert (=> b!5339668 true))

(declare-fun lambda!273588 () Int)

(declare-fun lt!2177284 () Regex!15015)

(assert (=> bs!1238260 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177284 (regTwo!30542 r!7292))) (= lambda!273588 lambda!273583))))

(assert (=> bs!1238260 (not (= lambda!273588 lambda!273584))))

(assert (=> b!5339668 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 (regOne!30542 r!7292))) (= lt!2177284 lt!2177299)) (= lambda!273588 lambda!273586))))

(assert (=> b!5339668 (not (= lambda!273588 lambda!273587))))

(assert (=> b!5339668 true))

(assert (=> b!5339668 true))

(assert (=> b!5339668 true))

(declare-fun lambda!273589 () Int)

(assert (=> bs!1238260 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177284 (regTwo!30542 r!7292))) (= lambda!273589 lambda!273584))))

(assert (=> b!5339668 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 (regOne!30542 r!7292))) (= lt!2177284 lt!2177299)) (= lambda!273589 lambda!273587))))

(assert (=> b!5339668 (not (= lambda!273589 lambda!273586))))

(assert (=> b!5339668 (not (= lambda!273589 lambda!273588))))

(assert (=> bs!1238260 (not (= lambda!273589 lambda!273583))))

(assert (=> b!5339668 true))

(assert (=> b!5339668 true))

(assert (=> b!5339668 true))

(declare-fun b!5339639 () Bool)

(declare-fun e!3315752 () Bool)

(declare-fun e!3315740 () Bool)

(assert (=> b!5339639 (= e!3315752 e!3315740)))

(declare-fun res!2265023 () Bool)

(assert (=> b!5339639 (=> res!2265023 e!3315740)))

(declare-datatypes ((List!61344 0))(
  ( (Nil!61220) (Cons!61220 (h!67668 Regex!15015) (t!374561 List!61344)) )
))
(declare-datatypes ((Context!8798 0))(
  ( (Context!8799 (exprs!4899 List!61344)) )
))
(declare-datatypes ((List!61345 0))(
  ( (Nil!61221) (Cons!61221 (h!67669 Context!8798) (t!374562 List!61345)) )
))
(declare-fun lt!2177297 () List!61345)

(declare-fun zl!343 () List!61345)

(declare-fun zipperDepthTotal!168 (List!61345) Int)

(assert (=> b!5339639 (= res!2265023 (>= (zipperDepthTotal!168 lt!2177297) (zipperDepthTotal!168 zl!343)))))

(declare-fun lt!2177308 () Context!8798)

(assert (=> b!5339639 (= lt!2177297 (Cons!61221 lt!2177308 Nil!61221))))

(declare-fun b!5339640 () Bool)

(declare-fun e!3315739 () Bool)

(declare-fun tp!1484865 () Bool)

(assert (=> b!5339640 (= e!3315739 tp!1484865)))

(declare-fun b!5339641 () Bool)

(declare-fun e!3315743 () Bool)

(declare-fun tp!1484861 () Bool)

(assert (=> b!5339641 (= e!3315743 tp!1484861)))

(declare-fun b!5339642 () Bool)

(declare-fun tp!1484863 () Bool)

(declare-fun tp!1484864 () Bool)

(assert (=> b!5339642 (= e!3315743 (and tp!1484863 tp!1484864))))

(declare-fun b!5339643 () Bool)

(declare-fun res!2265020 () Bool)

(declare-fun e!3315753 () Bool)

(assert (=> b!5339643 (=> res!2265020 e!3315753)))

(declare-fun validRegex!6751 (Regex!15015) Bool)

(assert (=> b!5339643 (= res!2265020 (not (validRegex!6751 (regTwo!30542 r!7292))))))

(declare-fun e!3315747 () Bool)

(declare-fun e!3315742 () Bool)

(assert (=> b!5339644 (= e!3315747 e!3315742)))

(declare-fun res!2265012 () Bool)

(assert (=> b!5339644 (=> res!2265012 e!3315742)))

(declare-datatypes ((List!61346 0))(
  ( (Nil!61222) (Cons!61222 (h!67670 C!30300) (t!374563 List!61346)) )
))
(declare-fun s!2326 () List!61346)

(get-info :version)

(assert (=> b!5339644 (= res!2265012 (or (and ((_ is ElementMatch!15015) (regOne!30542 r!7292)) (= (c!929081 (regOne!30542 r!7292)) (h!67670 s!2326))) ((_ is Union!15015) (regOne!30542 r!7292))))))

(declare-datatypes ((Unit!153578 0))(
  ( (Unit!153579) )
))
(declare-fun lt!2177282 () Unit!153578)

(declare-fun e!3315748 () Unit!153578)

(assert (=> b!5339644 (= lt!2177282 e!3315748)))

(declare-fun c!929080 () Bool)

(declare-fun nullable!5184 (Regex!15015) Bool)

(assert (=> b!5339644 (= c!929080 (nullable!5184 (h!67668 (exprs!4899 (h!67669 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8798))

(declare-fun lambda!273585 () Int)

(declare-fun flatMap!742 ((InoxSet Context!8798) Int) (InoxSet Context!8798))

(declare-fun derivationStepZipperUp!387 (Context!8798 C!30300) (InoxSet Context!8798))

(assert (=> b!5339644 (= (flatMap!742 z!1189 lambda!273585) (derivationStepZipperUp!387 (h!67669 zl!343) (h!67670 s!2326)))))

(declare-fun lt!2177285 () Unit!153578)

(declare-fun lemmaFlatMapOnSingletonSet!274 ((InoxSet Context!8798) Context!8798 Int) Unit!153578)

(assert (=> b!5339644 (= lt!2177285 (lemmaFlatMapOnSingletonSet!274 z!1189 (h!67669 zl!343) lambda!273585))))

(declare-fun lt!2177295 () (InoxSet Context!8798))

(declare-fun lt!2177306 () Context!8798)

(assert (=> b!5339644 (= lt!2177295 (derivationStepZipperUp!387 lt!2177306 (h!67670 s!2326)))))

(declare-fun lt!2177283 () (InoxSet Context!8798))

(declare-fun derivationStepZipperDown!463 (Regex!15015 Context!8798 C!30300) (InoxSet Context!8798))

(assert (=> b!5339644 (= lt!2177283 (derivationStepZipperDown!463 (h!67668 (exprs!4899 (h!67669 zl!343))) lt!2177306 (h!67670 s!2326)))))

(assert (=> b!5339644 (= lt!2177306 (Context!8799 (t!374561 (exprs!4899 (h!67669 zl!343)))))))

(declare-fun lt!2177286 () (InoxSet Context!8798))

(assert (=> b!5339644 (= lt!2177286 (derivationStepZipperUp!387 (Context!8799 (Cons!61220 (h!67668 (exprs!4899 (h!67669 zl!343))) (t!374561 (exprs!4899 (h!67669 zl!343))))) (h!67670 s!2326)))))

(declare-fun b!5339646 () Bool)

(declare-fun res!2265021 () Bool)

(declare-fun e!3315741 () Bool)

(assert (=> b!5339646 (=> (not res!2265021) (not e!3315741))))

(declare-fun toList!8799 ((InoxSet Context!8798)) List!61345)

(assert (=> b!5339646 (= res!2265021 (= (toList!8799 z!1189) zl!343))))

(declare-fun b!5339647 () Bool)

(declare-fun res!2265001 () Bool)

(assert (=> b!5339647 (=> res!2265001 e!3315740)))

(declare-fun zipperDepth!124 (List!61345) Int)

(assert (=> b!5339647 (= res!2265001 (> (zipperDepth!124 lt!2177297) (zipperDepth!124 zl!343)))))

(declare-fun setIsEmpty!34453 () Bool)

(declare-fun setRes!34453 () Bool)

(assert (=> setIsEmpty!34453 setRes!34453))

(declare-fun b!5339648 () Bool)

(declare-fun res!2265025 () Bool)

(assert (=> b!5339648 (=> res!2265025 e!3315753)))

(assert (=> b!5339648 (= res!2265025 (not (validRegex!6751 (regOne!30542 r!7292))))))

(declare-fun b!5339649 () Bool)

(declare-fun res!2265000 () Bool)

(assert (=> b!5339649 (=> res!2265000 e!3315752)))

(declare-fun lt!2177301 () (InoxSet Context!8798))

(declare-fun lt!2177303 () Bool)

(declare-fun matchZipper!1259 ((InoxSet Context!8798) List!61346) Bool)

(assert (=> b!5339649 (= res!2265000 (not (= lt!2177303 (matchZipper!1259 lt!2177301 (t!374563 s!2326)))))))

(declare-fun b!5339650 () Bool)

(declare-fun e!3315746 () Bool)

(assert (=> b!5339650 (= e!3315741 (not e!3315746))))

(declare-fun res!2265006 () Bool)

(assert (=> b!5339650 (=> res!2265006 e!3315746)))

(assert (=> b!5339650 (= res!2265006 (not ((_ is Cons!61221) zl!343)))))

(declare-fun lt!2177288 () Bool)

(declare-fun matchRSpec!2118 (Regex!15015 List!61346) Bool)

(assert (=> b!5339650 (= lt!2177288 (matchRSpec!2118 r!7292 s!2326))))

(declare-fun matchR!7200 (Regex!15015 List!61346) Bool)

(assert (=> b!5339650 (= lt!2177288 (matchR!7200 r!7292 s!2326))))

(declare-fun lt!2177315 () Unit!153578)

(declare-fun mainMatchTheorem!2118 (Regex!15015 List!61346) Unit!153578)

(assert (=> b!5339650 (= lt!2177315 (mainMatchTheorem!2118 r!7292 s!2326))))

(declare-fun b!5339651 () Bool)

(declare-fun Unit!153580 () Unit!153578)

(assert (=> b!5339651 (= e!3315748 Unit!153580)))

(declare-fun lt!2177298 () Unit!153578)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!252 ((InoxSet Context!8798) (InoxSet Context!8798) List!61346) Unit!153578)

(assert (=> b!5339651 (= lt!2177298 (lemmaZipperConcatMatchesSameAsBothZippers!252 lt!2177283 lt!2177295 (t!374563 s!2326)))))

(declare-fun res!2265011 () Bool)

(assert (=> b!5339651 (= res!2265011 (matchZipper!1259 lt!2177283 (t!374563 s!2326)))))

(declare-fun e!3315751 () Bool)

(assert (=> b!5339651 (=> res!2265011 e!3315751)))

(assert (=> b!5339651 (= (matchZipper!1259 ((_ map or) lt!2177283 lt!2177295) (t!374563 s!2326)) e!3315751)))

(declare-fun b!5339652 () Bool)

(declare-fun e!3315738 () Bool)

(declare-fun tp!1484867 () Bool)

(assert (=> b!5339652 (= e!3315738 tp!1484867)))

(declare-fun b!5339653 () Bool)

(declare-fun res!2265007 () Bool)

(assert (=> b!5339653 (=> res!2265007 e!3315742)))

(declare-fun e!3315749 () Bool)

(assert (=> b!5339653 (= res!2265007 e!3315749)))

(declare-fun res!2265009 () Bool)

(assert (=> b!5339653 (=> (not res!2265009) (not e!3315749))))

(assert (=> b!5339653 (= res!2265009 ((_ is Concat!23860) (regOne!30542 r!7292)))))

(declare-fun b!5339654 () Bool)

(declare-fun e!3315744 () Bool)

(assert (=> b!5339654 (= e!3315742 e!3315744)))

(declare-fun res!2265016 () Bool)

(assert (=> b!5339654 (=> res!2265016 e!3315744)))

(declare-fun lt!2177296 () (InoxSet Context!8798))

(assert (=> b!5339654 (= res!2265016 (not (= lt!2177283 lt!2177296)))))

(declare-fun lt!2177287 () List!61344)

(assert (=> b!5339654 (= lt!2177296 (derivationStepZipperDown!463 (regOne!30542 (regOne!30542 r!7292)) (Context!8799 lt!2177287) (h!67670 s!2326)))))

(assert (=> b!5339654 (= lt!2177287 (Cons!61220 (regTwo!30542 (regOne!30542 r!7292)) (t!374561 (exprs!4899 (h!67669 zl!343)))))))

(declare-fun b!5339655 () Bool)

(declare-fun res!2265022 () Bool)

(assert (=> b!5339655 (=> (not res!2265022) (not e!3315741))))

(declare-fun unfocusZipper!757 (List!61345) Regex!15015)

(assert (=> b!5339655 (= res!2265022 (= r!7292 (unfocusZipper!757 zl!343)))))

(declare-fun b!5339656 () Bool)

(declare-fun res!2265019 () Bool)

(assert (=> b!5339656 (=> res!2265019 e!3315747)))

(declare-fun isEmpty!33195 (List!61344) Bool)

(assert (=> b!5339656 (= res!2265019 (isEmpty!33195 (t!374561 (exprs!4899 (h!67669 zl!343)))))))

(declare-fun b!5339657 () Bool)

(declare-fun res!2265015 () Bool)

(assert (=> b!5339657 (=> res!2265015 e!3315746)))

(declare-fun generalisedUnion!944 (List!61344) Regex!15015)

(declare-fun unfocusZipperList!457 (List!61345) List!61344)

(assert (=> b!5339657 (= res!2265015 (not (= r!7292 (generalisedUnion!944 (unfocusZipperList!457 zl!343)))))))

(declare-fun setNonEmpty!34453 () Bool)

(declare-fun setElem!34453 () Context!8798)

(declare-fun tp!1484862 () Bool)

(declare-fun inv!80784 (Context!8798) Bool)

(assert (=> setNonEmpty!34453 (= setRes!34453 (and tp!1484862 (inv!80784 setElem!34453) e!3315738))))

(declare-fun setRest!34453 () (InoxSet Context!8798))

(assert (=> setNonEmpty!34453 (= z!1189 ((_ map or) (store ((as const (Array Context!8798 Bool)) false) setElem!34453 true) setRest!34453))))

(declare-fun b!5339658 () Bool)

(declare-fun ++!13346 (List!61346 List!61346) List!61346)

(assert (=> b!5339658 (= e!3315753 (= (++!13346 Nil!61222 s!2326) s!2326))))

(declare-fun b!5339659 () Bool)

(declare-fun Unit!153581 () Unit!153578)

(assert (=> b!5339659 (= e!3315748 Unit!153581)))

(declare-fun b!5339660 () Bool)

(declare-fun res!2265005 () Bool)

(assert (=> b!5339660 (=> res!2265005 e!3315746)))

(declare-fun isEmpty!33196 (List!61345) Bool)

(assert (=> b!5339660 (= res!2265005 (not (isEmpty!33196 (t!374562 zl!343))))))

(declare-fun b!5339661 () Bool)

(declare-fun res!2265003 () Bool)

(assert (=> b!5339661 (=> res!2265003 e!3315746)))

(declare-fun generalisedConcat!684 (List!61344) Regex!15015)

(assert (=> b!5339661 (= res!2265003 (not (= r!7292 (generalisedConcat!684 (exprs!4899 (h!67669 zl!343))))))))

(declare-fun b!5339662 () Bool)

(declare-fun res!2265008 () Bool)

(assert (=> b!5339662 (=> res!2265008 e!3315746)))

(assert (=> b!5339662 (= res!2265008 (or ((_ is EmptyExpr!15015) r!7292) ((_ is EmptyLang!15015) r!7292) ((_ is ElementMatch!15015) r!7292) ((_ is Union!15015) r!7292) (not ((_ is Concat!23860) r!7292))))))

(declare-fun b!5339663 () Bool)

(declare-fun res!2265004 () Bool)

(assert (=> b!5339663 (=> res!2265004 e!3315752)))

(assert (=> b!5339663 (= res!2265004 (not (= (exprs!4899 (h!67669 zl!343)) (Cons!61220 (Concat!23860 (regOne!30542 (regOne!30542 r!7292)) (regTwo!30542 (regOne!30542 r!7292))) (t!374561 (exprs!4899 (h!67669 zl!343)))))))))

(declare-fun b!5339664 () Bool)

(declare-fun res!2265017 () Bool)

(assert (=> b!5339664 (=> res!2265017 e!3315742)))

(assert (=> b!5339664 (= res!2265017 (not ((_ is Concat!23860) (regOne!30542 r!7292))))))

(declare-fun b!5339665 () Bool)

(declare-fun e!3315754 () Bool)

(assert (=> b!5339665 (= e!3315754 e!3315752)))

(declare-fun res!2265010 () Bool)

(assert (=> b!5339665 (=> res!2265010 e!3315752)))

(assert (=> b!5339665 (= res!2265010 (not (= lt!2177301 lt!2177296)))))

(declare-fun lt!2177311 () (InoxSet Context!8798))

(assert (=> b!5339665 (= (flatMap!742 lt!2177311 lambda!273585) (derivationStepZipperUp!387 lt!2177308 (h!67670 s!2326)))))

(declare-fun lt!2177313 () Unit!153578)

(assert (=> b!5339665 (= lt!2177313 (lemmaFlatMapOnSingletonSet!274 lt!2177311 lt!2177308 lambda!273585))))

(declare-fun lt!2177292 () (InoxSet Context!8798))

(assert (=> b!5339665 (= lt!2177292 (derivationStepZipperUp!387 lt!2177308 (h!67670 s!2326)))))

(declare-fun derivationStepZipper!1256 ((InoxSet Context!8798) C!30300) (InoxSet Context!8798))

(assert (=> b!5339665 (= lt!2177301 (derivationStepZipper!1256 lt!2177311 (h!67670 s!2326)))))

(assert (=> b!5339665 (= lt!2177311 (store ((as const (Array Context!8798 Bool)) false) lt!2177308 true))))

(declare-fun lt!2177312 () List!61344)

(assert (=> b!5339665 (= lt!2177308 (Context!8799 lt!2177312))))

(assert (=> b!5339665 (= lt!2177312 (Cons!61220 (regOne!30542 (regOne!30542 r!7292)) lt!2177287))))

(declare-fun b!5339666 () Bool)

(declare-fun res!2265018 () Bool)

(assert (=> b!5339666 (=> res!2265018 e!3315746)))

(assert (=> b!5339666 (= res!2265018 (not ((_ is Cons!61220) (exprs!4899 (h!67669 zl!343)))))))

(declare-fun b!5339667 () Bool)

(declare-fun e!3315745 () Bool)

(declare-fun tp_is_empty!39283 () Bool)

(declare-fun tp!1484868 () Bool)

(assert (=> b!5339667 (= e!3315745 (and tp_is_empty!39283 tp!1484868))))

(assert (=> b!5339668 (= e!3315740 e!3315753)))

(declare-fun res!2264999 () Bool)

(assert (=> b!5339668 (=> res!2264999 e!3315753)))

(declare-fun lt!2177304 () Bool)

(declare-fun lt!2177307 () Bool)

(declare-fun lt!2177302 () Bool)

(assert (=> b!5339668 (= res!2264999 (or (not (= lt!2177307 lt!2177302)) (not (= lt!2177307 lt!2177304))))))

(assert (=> b!5339668 (= lt!2177307 (matchZipper!1259 z!1189 s!2326))))

(declare-fun Exists!2196 (Int) Bool)

(assert (=> b!5339668 (= (Exists!2196 lambda!273588) (Exists!2196 lambda!273589))))

(declare-fun lt!2177316 () Unit!153578)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!850 (Regex!15015 Regex!15015 List!61346) Unit!153578)

(assert (=> b!5339668 (= lt!2177316 (lemmaExistCutMatchRandMatchRSpecEquivalent!850 (regTwo!30542 (regOne!30542 r!7292)) lt!2177284 s!2326))))

(declare-datatypes ((tuple2!64428 0))(
  ( (tuple2!64429 (_1!35517 List!61346) (_2!35517 List!61346)) )
))
(declare-datatypes ((Option!15126 0))(
  ( (None!15125) (Some!15125 (v!51154 tuple2!64428)) )
))
(declare-fun isDefined!11829 (Option!15126) Bool)

(declare-fun findConcatSeparation!1540 (Regex!15015 Regex!15015 List!61346 List!61346 List!61346) Option!15126)

(assert (=> b!5339668 (= (isDefined!11829 (findConcatSeparation!1540 (regTwo!30542 (regOne!30542 r!7292)) lt!2177284 Nil!61222 s!2326 s!2326)) (Exists!2196 lambda!273588))))

(declare-fun lt!2177310 () Unit!153578)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1304 (Regex!15015 Regex!15015 List!61346) Unit!153578)

(assert (=> b!5339668 (= lt!2177310 (lemmaFindConcatSeparationEquivalentToExists!1304 (regTwo!30542 (regOne!30542 r!7292)) lt!2177284 s!2326))))

(assert (=> b!5339668 (= lt!2177284 (generalisedConcat!684 (t!374561 (exprs!4899 (h!67669 zl!343)))))))

(assert (=> b!5339668 (= (matchR!7200 lt!2177299 s!2326) (matchRSpec!2118 lt!2177299 s!2326))))

(declare-fun lt!2177305 () Unit!153578)

(assert (=> b!5339668 (= lt!2177305 (mainMatchTheorem!2118 lt!2177299 s!2326))))

(assert (=> b!5339668 (= (Exists!2196 lambda!273586) (Exists!2196 lambda!273587))))

(declare-fun lt!2177294 () Unit!153578)

(assert (=> b!5339668 (= lt!2177294 (lemmaExistCutMatchRandMatchRSpecEquivalent!850 (regOne!30542 (regOne!30542 r!7292)) lt!2177299 s!2326))))

(assert (=> b!5339668 (= (isDefined!11829 (findConcatSeparation!1540 (regOne!30542 (regOne!30542 r!7292)) lt!2177299 Nil!61222 s!2326 s!2326)) (Exists!2196 lambda!273586))))

(declare-fun lt!2177293 () Unit!153578)

(assert (=> b!5339668 (= lt!2177293 (lemmaFindConcatSeparationEquivalentToExists!1304 (regOne!30542 (regOne!30542 r!7292)) lt!2177299 s!2326))))

(assert (=> b!5339668 (= lt!2177299 (generalisedConcat!684 lt!2177287))))

(declare-fun lt!2177300 () Regex!15015)

(assert (=> b!5339668 (= lt!2177304 (matchRSpec!2118 lt!2177300 s!2326))))

(declare-fun lt!2177289 () Unit!153578)

(assert (=> b!5339668 (= lt!2177289 (mainMatchTheorem!2118 lt!2177300 s!2326))))

(assert (=> b!5339668 (= lt!2177304 lt!2177302)))

(assert (=> b!5339668 (= lt!2177302 (matchZipper!1259 lt!2177311 s!2326))))

(assert (=> b!5339668 (= lt!2177304 (matchR!7200 lt!2177300 s!2326))))

(declare-fun lt!2177309 () Unit!153578)

(declare-fun theoremZipperRegexEquiv!413 ((InoxSet Context!8798) List!61345 Regex!15015 List!61346) Unit!153578)

(assert (=> b!5339668 (= lt!2177309 (theoremZipperRegexEquiv!413 lt!2177311 lt!2177297 lt!2177300 s!2326))))

(assert (=> b!5339668 (= lt!2177300 (generalisedConcat!684 lt!2177312))))

(declare-fun b!5339669 () Bool)

(assert (=> b!5339669 (= e!3315743 tp_is_empty!39283)))

(assert (=> b!5339645 (= e!3315746 e!3315747)))

(declare-fun res!2265014 () Bool)

(assert (=> b!5339645 (=> res!2265014 e!3315747)))

(declare-fun lt!2177291 () Bool)

(assert (=> b!5339645 (= res!2265014 (or (not (= lt!2177288 lt!2177291)) ((_ is Nil!61222) s!2326)))))

(assert (=> b!5339645 (= (Exists!2196 lambda!273583) (Exists!2196 lambda!273584))))

(declare-fun lt!2177314 () Unit!153578)

(assert (=> b!5339645 (= lt!2177314 (lemmaExistCutMatchRandMatchRSpecEquivalent!850 (regOne!30542 r!7292) (regTwo!30542 r!7292) s!2326))))

(assert (=> b!5339645 (= lt!2177291 (Exists!2196 lambda!273583))))

(assert (=> b!5339645 (= lt!2177291 (isDefined!11829 (findConcatSeparation!1540 (regOne!30542 r!7292) (regTwo!30542 r!7292) Nil!61222 s!2326 s!2326)))))

(declare-fun lt!2177290 () Unit!153578)

(assert (=> b!5339645 (= lt!2177290 (lemmaFindConcatSeparationEquivalentToExists!1304 (regOne!30542 r!7292) (regTwo!30542 r!7292) s!2326))))

(declare-fun res!2265024 () Bool)

(assert (=> start!562598 (=> (not res!2265024) (not e!3315741))))

(assert (=> start!562598 (= res!2265024 (validRegex!6751 r!7292))))

(assert (=> start!562598 e!3315741))

(assert (=> start!562598 e!3315743))

(declare-fun condSetEmpty!34453 () Bool)

(assert (=> start!562598 (= condSetEmpty!34453 (= z!1189 ((as const (Array Context!8798 Bool)) false)))))

(assert (=> start!562598 setRes!34453))

(declare-fun e!3315750 () Bool)

(assert (=> start!562598 e!3315750))

(assert (=> start!562598 e!3315745))

(declare-fun b!5339670 () Bool)

(declare-fun tp!1484866 () Bool)

(declare-fun tp!1484869 () Bool)

(assert (=> b!5339670 (= e!3315743 (and tp!1484866 tp!1484869))))

(declare-fun b!5339671 () Bool)

(assert (=> b!5339671 (= e!3315744 e!3315754)))

(declare-fun res!2265013 () Bool)

(assert (=> b!5339671 (=> res!2265013 e!3315754)))

(assert (=> b!5339671 (= res!2265013 (not (= lt!2177303 (matchZipper!1259 lt!2177296 (t!374563 s!2326)))))))

(assert (=> b!5339671 (= lt!2177303 (matchZipper!1259 lt!2177283 (t!374563 s!2326)))))

(declare-fun b!5339672 () Bool)

(assert (=> b!5339672 (= e!3315751 (matchZipper!1259 lt!2177295 (t!374563 s!2326)))))

(declare-fun b!5339673 () Bool)

(declare-fun res!2265002 () Bool)

(assert (=> b!5339673 (=> res!2265002 e!3315752)))

(declare-fun contextDepthTotal!148 (Context!8798) Int)

(assert (=> b!5339673 (= res!2265002 (>= (contextDepthTotal!148 lt!2177308) (contextDepthTotal!148 (h!67669 zl!343))))))

(declare-fun tp!1484860 () Bool)

(declare-fun b!5339674 () Bool)

(assert (=> b!5339674 (= e!3315750 (and (inv!80784 (h!67669 zl!343)) e!3315739 tp!1484860))))

(declare-fun b!5339675 () Bool)

(assert (=> b!5339675 (= e!3315749 (nullable!5184 (regOne!30542 (regOne!30542 r!7292))))))

(assert (= (and start!562598 res!2265024) b!5339646))

(assert (= (and b!5339646 res!2265021) b!5339655))

(assert (= (and b!5339655 res!2265022) b!5339650))

(assert (= (and b!5339650 (not res!2265006)) b!5339660))

(assert (= (and b!5339660 (not res!2265005)) b!5339661))

(assert (= (and b!5339661 (not res!2265003)) b!5339666))

(assert (= (and b!5339666 (not res!2265018)) b!5339657))

(assert (= (and b!5339657 (not res!2265015)) b!5339662))

(assert (= (and b!5339662 (not res!2265008)) b!5339645))

(assert (= (and b!5339645 (not res!2265014)) b!5339656))

(assert (= (and b!5339656 (not res!2265019)) b!5339644))

(assert (= (and b!5339644 c!929080) b!5339651))

(assert (= (and b!5339644 (not c!929080)) b!5339659))

(assert (= (and b!5339651 (not res!2265011)) b!5339672))

(assert (= (and b!5339644 (not res!2265012)) b!5339653))

(assert (= (and b!5339653 res!2265009) b!5339675))

(assert (= (and b!5339653 (not res!2265007)) b!5339664))

(assert (= (and b!5339664 (not res!2265017)) b!5339654))

(assert (= (and b!5339654 (not res!2265016)) b!5339671))

(assert (= (and b!5339671 (not res!2265013)) b!5339665))

(assert (= (and b!5339665 (not res!2265010)) b!5339649))

(assert (= (and b!5339649 (not res!2265000)) b!5339663))

(assert (= (and b!5339663 (not res!2265004)) b!5339673))

(assert (= (and b!5339673 (not res!2265002)) b!5339639))

(assert (= (and b!5339639 (not res!2265023)) b!5339647))

(assert (= (and b!5339647 (not res!2265001)) b!5339668))

(assert (= (and b!5339668 (not res!2264999)) b!5339648))

(assert (= (and b!5339648 (not res!2265025)) b!5339643))

(assert (= (and b!5339643 (not res!2265020)) b!5339658))

(assert (= (and start!562598 ((_ is ElementMatch!15015) r!7292)) b!5339669))

(assert (= (and start!562598 ((_ is Concat!23860) r!7292)) b!5339642))

(assert (= (and start!562598 ((_ is Star!15015) r!7292)) b!5339641))

(assert (= (and start!562598 ((_ is Union!15015) r!7292)) b!5339670))

(assert (= (and start!562598 condSetEmpty!34453) setIsEmpty!34453))

(assert (= (and start!562598 (not condSetEmpty!34453)) setNonEmpty!34453))

(assert (= setNonEmpty!34453 b!5339652))

(assert (= b!5339674 b!5339640))

(assert (= (and start!562598 ((_ is Cons!61221) zl!343)) b!5339674))

(assert (= (and start!562598 ((_ is Cons!61222) s!2326)) b!5339667))

(declare-fun m!6372064 () Bool)

(assert (=> b!5339657 m!6372064))

(assert (=> b!5339657 m!6372064))

(declare-fun m!6372066 () Bool)

(assert (=> b!5339657 m!6372066))

(declare-fun m!6372068 () Bool)

(assert (=> b!5339665 m!6372068))

(declare-fun m!6372070 () Bool)

(assert (=> b!5339665 m!6372070))

(declare-fun m!6372072 () Bool)

(assert (=> b!5339665 m!6372072))

(declare-fun m!6372074 () Bool)

(assert (=> b!5339665 m!6372074))

(declare-fun m!6372076 () Bool)

(assert (=> b!5339665 m!6372076))

(declare-fun m!6372078 () Bool)

(assert (=> b!5339672 m!6372078))

(declare-fun m!6372080 () Bool)

(assert (=> b!5339671 m!6372080))

(declare-fun m!6372082 () Bool)

(assert (=> b!5339671 m!6372082))

(declare-fun m!6372084 () Bool)

(assert (=> b!5339673 m!6372084))

(declare-fun m!6372086 () Bool)

(assert (=> b!5339673 m!6372086))

(declare-fun m!6372088 () Bool)

(assert (=> b!5339656 m!6372088))

(declare-fun m!6372090 () Bool)

(assert (=> b!5339650 m!6372090))

(declare-fun m!6372092 () Bool)

(assert (=> b!5339650 m!6372092))

(declare-fun m!6372094 () Bool)

(assert (=> b!5339650 m!6372094))

(declare-fun m!6372096 () Bool)

(assert (=> b!5339661 m!6372096))

(declare-fun m!6372098 () Bool)

(assert (=> b!5339660 m!6372098))

(declare-fun m!6372100 () Bool)

(assert (=> b!5339655 m!6372100))

(declare-fun m!6372102 () Bool)

(assert (=> b!5339646 m!6372102))

(declare-fun m!6372104 () Bool)

(assert (=> b!5339654 m!6372104))

(declare-fun m!6372106 () Bool)

(assert (=> b!5339649 m!6372106))

(declare-fun m!6372108 () Bool)

(assert (=> start!562598 m!6372108))

(declare-fun m!6372110 () Bool)

(assert (=> b!5339643 m!6372110))

(declare-fun m!6372112 () Bool)

(assert (=> b!5339644 m!6372112))

(declare-fun m!6372114 () Bool)

(assert (=> b!5339644 m!6372114))

(declare-fun m!6372116 () Bool)

(assert (=> b!5339644 m!6372116))

(declare-fun m!6372118 () Bool)

(assert (=> b!5339644 m!6372118))

(declare-fun m!6372120 () Bool)

(assert (=> b!5339644 m!6372120))

(declare-fun m!6372122 () Bool)

(assert (=> b!5339644 m!6372122))

(declare-fun m!6372124 () Bool)

(assert (=> b!5339644 m!6372124))

(declare-fun m!6372126 () Bool)

(assert (=> b!5339648 m!6372126))

(declare-fun m!6372128 () Bool)

(assert (=> b!5339658 m!6372128))

(declare-fun m!6372130 () Bool)

(assert (=> b!5339639 m!6372130))

(declare-fun m!6372132 () Bool)

(assert (=> b!5339639 m!6372132))

(declare-fun m!6372134 () Bool)

(assert (=> b!5339647 m!6372134))

(declare-fun m!6372136 () Bool)

(assert (=> b!5339647 m!6372136))

(declare-fun m!6372138 () Bool)

(assert (=> b!5339645 m!6372138))

(declare-fun m!6372140 () Bool)

(assert (=> b!5339645 m!6372140))

(declare-fun m!6372142 () Bool)

(assert (=> b!5339645 m!6372142))

(declare-fun m!6372144 () Bool)

(assert (=> b!5339645 m!6372144))

(assert (=> b!5339645 m!6372142))

(declare-fun m!6372146 () Bool)

(assert (=> b!5339645 m!6372146))

(assert (=> b!5339645 m!6372138))

(declare-fun m!6372148 () Bool)

(assert (=> b!5339645 m!6372148))

(declare-fun m!6372150 () Bool)

(assert (=> b!5339668 m!6372150))

(declare-fun m!6372152 () Bool)

(assert (=> b!5339668 m!6372152))

(declare-fun m!6372154 () Bool)

(assert (=> b!5339668 m!6372154))

(declare-fun m!6372156 () Bool)

(assert (=> b!5339668 m!6372156))

(declare-fun m!6372158 () Bool)

(assert (=> b!5339668 m!6372158))

(declare-fun m!6372160 () Bool)

(assert (=> b!5339668 m!6372160))

(declare-fun m!6372162 () Bool)

(assert (=> b!5339668 m!6372162))

(declare-fun m!6372164 () Bool)

(assert (=> b!5339668 m!6372164))

(declare-fun m!6372166 () Bool)

(assert (=> b!5339668 m!6372166))

(declare-fun m!6372168 () Bool)

(assert (=> b!5339668 m!6372168))

(declare-fun m!6372170 () Bool)

(assert (=> b!5339668 m!6372170))

(assert (=> b!5339668 m!6372158))

(declare-fun m!6372172 () Bool)

(assert (=> b!5339668 m!6372172))

(declare-fun m!6372174 () Bool)

(assert (=> b!5339668 m!6372174))

(declare-fun m!6372176 () Bool)

(assert (=> b!5339668 m!6372176))

(assert (=> b!5339668 m!6372150))

(declare-fun m!6372178 () Bool)

(assert (=> b!5339668 m!6372178))

(declare-fun m!6372180 () Bool)

(assert (=> b!5339668 m!6372180))

(declare-fun m!6372182 () Bool)

(assert (=> b!5339668 m!6372182))

(assert (=> b!5339668 m!6372174))

(declare-fun m!6372184 () Bool)

(assert (=> b!5339668 m!6372184))

(declare-fun m!6372186 () Bool)

(assert (=> b!5339668 m!6372186))

(declare-fun m!6372188 () Bool)

(assert (=> b!5339668 m!6372188))

(declare-fun m!6372190 () Bool)

(assert (=> b!5339668 m!6372190))

(declare-fun m!6372192 () Bool)

(assert (=> b!5339668 m!6372192))

(declare-fun m!6372194 () Bool)

(assert (=> b!5339668 m!6372194))

(assert (=> b!5339668 m!6372180))

(declare-fun m!6372196 () Bool)

(assert (=> b!5339668 m!6372196))

(declare-fun m!6372198 () Bool)

(assert (=> setNonEmpty!34453 m!6372198))

(declare-fun m!6372200 () Bool)

(assert (=> b!5339674 m!6372200))

(declare-fun m!6372202 () Bool)

(assert (=> b!5339675 m!6372202))

(declare-fun m!6372204 () Bool)

(assert (=> b!5339651 m!6372204))

(assert (=> b!5339651 m!6372082))

(declare-fun m!6372206 () Bool)

(assert (=> b!5339651 m!6372206))

(check-sat (not b!5339643) (not b!5339654) (not b!5339645) (not b!5339642) (not b!5339651) (not b!5339655) (not b!5339640) (not b!5339672) (not b!5339648) (not b!5339671) (not b!5339668) tp_is_empty!39283 (not b!5339675) (not b!5339667) (not b!5339674) (not b!5339647) (not b!5339658) (not b!5339641) (not b!5339670) (not b!5339639) (not setNonEmpty!34453) (not b!5339665) (not start!562598) (not b!5339650) (not b!5339644) (not b!5339649) (not b!5339652) (not b!5339657) (not b!5339646) (not b!5339673) (not b!5339660) (not b!5339656) (not b!5339661))
(check-sat)
(get-model)

(declare-fun d!1713615 () Bool)

(declare-fun nullableFct!1517 (Regex!15015) Bool)

(assert (=> d!1713615 (= (nullable!5184 (regOne!30542 (regOne!30542 r!7292))) (nullableFct!1517 (regOne!30542 (regOne!30542 r!7292))))))

(declare-fun bs!1238261 () Bool)

(assert (= bs!1238261 d!1713615))

(declare-fun m!6372208 () Bool)

(assert (=> bs!1238261 m!6372208))

(assert (=> b!5339675 d!1713615))

(declare-fun b!5339738 () Bool)

(declare-fun e!3315787 () (InoxSet Context!8798))

(declare-fun e!3315791 () (InoxSet Context!8798))

(assert (=> b!5339738 (= e!3315787 e!3315791)))

(declare-fun c!929113 () Bool)

(assert (=> b!5339738 (= c!929113 ((_ is Union!15015) (regOne!30542 (regOne!30542 r!7292))))))

(declare-fun bm!381702 () Bool)

(declare-fun call!381707 () List!61344)

(declare-fun call!381709 () List!61344)

(assert (=> bm!381702 (= call!381707 call!381709)))

(declare-fun b!5339739 () Bool)

(declare-fun e!3315792 () (InoxSet Context!8798))

(declare-fun call!381708 () (InoxSet Context!8798))

(assert (=> b!5339739 (= e!3315792 call!381708)))

(declare-fun c!929110 () Bool)

(declare-fun c!929114 () Bool)

(declare-fun bm!381703 () Bool)

(declare-fun $colon$colon!1416 (List!61344 Regex!15015) List!61344)

(assert (=> bm!381703 (= call!381709 ($colon$colon!1416 (exprs!4899 (Context!8799 lt!2177287)) (ite (or c!929110 c!929114) (regTwo!30542 (regOne!30542 (regOne!30542 r!7292))) (regOne!30542 (regOne!30542 r!7292)))))))

(declare-fun bm!381704 () Bool)

(declare-fun call!381711 () (InoxSet Context!8798))

(assert (=> bm!381704 (= call!381708 call!381711)))

(declare-fun b!5339740 () Bool)

(assert (=> b!5339740 (= e!3315792 ((as const (Array Context!8798 Bool)) false))))

(declare-fun b!5339741 () Bool)

(declare-fun e!3315788 () (InoxSet Context!8798))

(declare-fun call!381712 () (InoxSet Context!8798))

(assert (=> b!5339741 (= e!3315788 ((_ map or) call!381712 call!381711))))

(declare-fun d!1713617 () Bool)

(declare-fun c!929112 () Bool)

(assert (=> d!1713617 (= c!929112 (and ((_ is ElementMatch!15015) (regOne!30542 (regOne!30542 r!7292))) (= (c!929081 (regOne!30542 (regOne!30542 r!7292))) (h!67670 s!2326))))))

(assert (=> d!1713617 (= (derivationStepZipperDown!463 (regOne!30542 (regOne!30542 r!7292)) (Context!8799 lt!2177287) (h!67670 s!2326)) e!3315787)))

(declare-fun b!5339742 () Bool)

(declare-fun e!3315789 () Bool)

(assert (=> b!5339742 (= e!3315789 (nullable!5184 (regOne!30542 (regOne!30542 (regOne!30542 r!7292)))))))

(declare-fun b!5339743 () Bool)

(assert (=> b!5339743 (= c!929110 e!3315789)))

(declare-fun res!2265034 () Bool)

(assert (=> b!5339743 (=> (not res!2265034) (not e!3315789))))

(assert (=> b!5339743 (= res!2265034 ((_ is Concat!23860) (regOne!30542 (regOne!30542 r!7292))))))

(assert (=> b!5339743 (= e!3315791 e!3315788)))

(declare-fun b!5339744 () Bool)

(assert (=> b!5339744 (= e!3315787 (store ((as const (Array Context!8798 Bool)) false) (Context!8799 lt!2177287) true))))

(declare-fun b!5339745 () Bool)

(declare-fun call!381710 () (InoxSet Context!8798))

(assert (=> b!5339745 (= e!3315791 ((_ map or) call!381710 call!381712))))

(declare-fun b!5339746 () Bool)

(declare-fun e!3315790 () (InoxSet Context!8798))

(assert (=> b!5339746 (= e!3315790 call!381708)))

(declare-fun bm!381705 () Bool)

(assert (=> bm!381705 (= call!381711 call!381710)))

(declare-fun b!5339747 () Bool)

(assert (=> b!5339747 (= e!3315788 e!3315790)))

(assert (=> b!5339747 (= c!929114 ((_ is Concat!23860) (regOne!30542 (regOne!30542 r!7292))))))

(declare-fun bm!381706 () Bool)

(assert (=> bm!381706 (= call!381712 (derivationStepZipperDown!463 (ite c!929113 (regTwo!30543 (regOne!30542 (regOne!30542 r!7292))) (regOne!30542 (regOne!30542 (regOne!30542 r!7292)))) (ite c!929113 (Context!8799 lt!2177287) (Context!8799 call!381709)) (h!67670 s!2326)))))

(declare-fun b!5339748 () Bool)

(declare-fun c!929111 () Bool)

(assert (=> b!5339748 (= c!929111 ((_ is Star!15015) (regOne!30542 (regOne!30542 r!7292))))))

(assert (=> b!5339748 (= e!3315790 e!3315792)))

(declare-fun bm!381707 () Bool)

(assert (=> bm!381707 (= call!381710 (derivationStepZipperDown!463 (ite c!929113 (regOne!30543 (regOne!30542 (regOne!30542 r!7292))) (ite c!929110 (regTwo!30542 (regOne!30542 (regOne!30542 r!7292))) (ite c!929114 (regOne!30542 (regOne!30542 (regOne!30542 r!7292))) (reg!15344 (regOne!30542 (regOne!30542 r!7292)))))) (ite (or c!929113 c!929110) (Context!8799 lt!2177287) (Context!8799 call!381707)) (h!67670 s!2326)))))

(assert (= (and d!1713617 c!929112) b!5339744))

(assert (= (and d!1713617 (not c!929112)) b!5339738))

(assert (= (and b!5339738 c!929113) b!5339745))

(assert (= (and b!5339738 (not c!929113)) b!5339743))

(assert (= (and b!5339743 res!2265034) b!5339742))

(assert (= (and b!5339743 c!929110) b!5339741))

(assert (= (and b!5339743 (not c!929110)) b!5339747))

(assert (= (and b!5339747 c!929114) b!5339746))

(assert (= (and b!5339747 (not c!929114)) b!5339748))

(assert (= (and b!5339748 c!929111) b!5339739))

(assert (= (and b!5339748 (not c!929111)) b!5339740))

(assert (= (or b!5339746 b!5339739) bm!381702))

(assert (= (or b!5339746 b!5339739) bm!381704))

(assert (= (or b!5339741 bm!381702) bm!381703))

(assert (= (or b!5339741 bm!381704) bm!381705))

(assert (= (or b!5339745 b!5339741) bm!381706))

(assert (= (or b!5339745 bm!381705) bm!381707))

(declare-fun m!6372226 () Bool)

(assert (=> bm!381706 m!6372226))

(declare-fun m!6372228 () Bool)

(assert (=> b!5339744 m!6372228))

(declare-fun m!6372230 () Bool)

(assert (=> bm!381707 m!6372230))

(declare-fun m!6372232 () Bool)

(assert (=> b!5339742 m!6372232))

(declare-fun m!6372234 () Bool)

(assert (=> bm!381703 m!6372234))

(assert (=> b!5339654 d!1713617))

(declare-fun d!1713623 () Bool)

(declare-fun lambda!273607 () Int)

(declare-fun forall!14440 (List!61344 Int) Bool)

(assert (=> d!1713623 (= (inv!80784 (h!67669 zl!343)) (forall!14440 (exprs!4899 (h!67669 zl!343)) lambda!273607))))

(declare-fun bs!1238268 () Bool)

(assert (= bs!1238268 d!1713623))

(declare-fun m!6372260 () Bool)

(assert (=> bs!1238268 m!6372260))

(assert (=> b!5339674 d!1713623))

(declare-fun d!1713629 () Bool)

(assert (=> d!1713629 (= (isEmpty!33195 (t!374561 (exprs!4899 (h!67669 zl!343)))) ((_ is Nil!61220) (t!374561 (exprs!4899 (h!67669 zl!343)))))))

(assert (=> b!5339656 d!1713629))

(declare-fun d!1713631 () Bool)

(declare-fun lt!2177346 () Regex!15015)

(assert (=> d!1713631 (validRegex!6751 lt!2177346)))

(assert (=> d!1713631 (= lt!2177346 (generalisedUnion!944 (unfocusZipperList!457 zl!343)))))

(assert (=> d!1713631 (= (unfocusZipper!757 zl!343) lt!2177346)))

(declare-fun bs!1238269 () Bool)

(assert (= bs!1238269 d!1713631))

(declare-fun m!6372276 () Bool)

(assert (=> bs!1238269 m!6372276))

(assert (=> bs!1238269 m!6372064))

(assert (=> bs!1238269 m!6372064))

(assert (=> bs!1238269 m!6372066))

(assert (=> b!5339655 d!1713631))

(declare-fun bs!1238272 () Bool)

(declare-fun d!1713643 () Bool)

(assert (= bs!1238272 (and d!1713643 d!1713623)))

(declare-fun lambda!273611 () Int)

(assert (=> bs!1238272 (= lambda!273611 lambda!273607)))

(declare-fun b!5339844 () Bool)

(declare-fun e!3315846 () Regex!15015)

(assert (=> b!5339844 (= e!3315846 (h!67668 (unfocusZipperList!457 zl!343)))))

(declare-fun b!5339845 () Bool)

(declare-fun e!3315847 () Regex!15015)

(assert (=> b!5339845 (= e!3315847 (Union!15015 (h!67668 (unfocusZipperList!457 zl!343)) (generalisedUnion!944 (t!374561 (unfocusZipperList!457 zl!343)))))))

(declare-fun b!5339846 () Bool)

(assert (=> b!5339846 (= e!3315847 EmptyLang!15015)))

(declare-fun e!3315850 () Bool)

(assert (=> d!1713643 e!3315850))

(declare-fun res!2265048 () Bool)

(assert (=> d!1713643 (=> (not res!2265048) (not e!3315850))))

(declare-fun lt!2177353 () Regex!15015)

(assert (=> d!1713643 (= res!2265048 (validRegex!6751 lt!2177353))))

(assert (=> d!1713643 (= lt!2177353 e!3315846)))

(declare-fun c!929158 () Bool)

(declare-fun e!3315849 () Bool)

(assert (=> d!1713643 (= c!929158 e!3315849)))

(declare-fun res!2265049 () Bool)

(assert (=> d!1713643 (=> (not res!2265049) (not e!3315849))))

(assert (=> d!1713643 (= res!2265049 ((_ is Cons!61220) (unfocusZipperList!457 zl!343)))))

(assert (=> d!1713643 (forall!14440 (unfocusZipperList!457 zl!343) lambda!273611)))

(assert (=> d!1713643 (= (generalisedUnion!944 (unfocusZipperList!457 zl!343)) lt!2177353)))

(declare-fun b!5339847 () Bool)

(assert (=> b!5339847 (= e!3315846 e!3315847)))

(declare-fun c!929160 () Bool)

(assert (=> b!5339847 (= c!929160 ((_ is Cons!61220) (unfocusZipperList!457 zl!343)))))

(declare-fun b!5339848 () Bool)

(assert (=> b!5339848 (= e!3315849 (isEmpty!33195 (t!374561 (unfocusZipperList!457 zl!343))))))

(declare-fun b!5339849 () Bool)

(declare-fun e!3315848 () Bool)

(declare-fun isUnion!340 (Regex!15015) Bool)

(assert (=> b!5339849 (= e!3315848 (isUnion!340 lt!2177353))))

(declare-fun b!5339850 () Bool)

(declare-fun e!3315851 () Bool)

(declare-fun isEmptyLang!908 (Regex!15015) Bool)

(assert (=> b!5339850 (= e!3315851 (isEmptyLang!908 lt!2177353))))

(declare-fun b!5339851 () Bool)

(assert (=> b!5339851 (= e!3315851 e!3315848)))

(declare-fun c!929161 () Bool)

(declare-fun tail!10547 (List!61344) List!61344)

(assert (=> b!5339851 (= c!929161 (isEmpty!33195 (tail!10547 (unfocusZipperList!457 zl!343))))))

(declare-fun b!5339852 () Bool)

(declare-fun head!11450 (List!61344) Regex!15015)

(assert (=> b!5339852 (= e!3315848 (= lt!2177353 (head!11450 (unfocusZipperList!457 zl!343))))))

(declare-fun b!5339853 () Bool)

(assert (=> b!5339853 (= e!3315850 e!3315851)))

(declare-fun c!929159 () Bool)

(assert (=> b!5339853 (= c!929159 (isEmpty!33195 (unfocusZipperList!457 zl!343)))))

(assert (= (and d!1713643 res!2265049) b!5339848))

(assert (= (and d!1713643 c!929158) b!5339844))

(assert (= (and d!1713643 (not c!929158)) b!5339847))

(assert (= (and b!5339847 c!929160) b!5339845))

(assert (= (and b!5339847 (not c!929160)) b!5339846))

(assert (= (and d!1713643 res!2265048) b!5339853))

(assert (= (and b!5339853 c!929159) b!5339850))

(assert (= (and b!5339853 (not c!929159)) b!5339851))

(assert (= (and b!5339851 c!929161) b!5339852))

(assert (= (and b!5339851 (not c!929161)) b!5339849))

(assert (=> b!5339853 m!6372064))

(declare-fun m!6372322 () Bool)

(assert (=> b!5339853 m!6372322))

(declare-fun m!6372324 () Bool)

(assert (=> b!5339849 m!6372324))

(declare-fun m!6372326 () Bool)

(assert (=> d!1713643 m!6372326))

(assert (=> d!1713643 m!6372064))

(declare-fun m!6372328 () Bool)

(assert (=> d!1713643 m!6372328))

(declare-fun m!6372330 () Bool)

(assert (=> b!5339845 m!6372330))

(assert (=> b!5339851 m!6372064))

(declare-fun m!6372332 () Bool)

(assert (=> b!5339851 m!6372332))

(assert (=> b!5339851 m!6372332))

(declare-fun m!6372334 () Bool)

(assert (=> b!5339851 m!6372334))

(declare-fun m!6372336 () Bool)

(assert (=> b!5339848 m!6372336))

(assert (=> b!5339852 m!6372064))

(declare-fun m!6372338 () Bool)

(assert (=> b!5339852 m!6372338))

(declare-fun m!6372340 () Bool)

(assert (=> b!5339850 m!6372340))

(assert (=> b!5339657 d!1713643))

(declare-fun bs!1238278 () Bool)

(declare-fun d!1713655 () Bool)

(assert (= bs!1238278 (and d!1713655 d!1713623)))

(declare-fun lambda!273618 () Int)

(assert (=> bs!1238278 (= lambda!273618 lambda!273607)))

(declare-fun bs!1238279 () Bool)

(assert (= bs!1238279 (and d!1713655 d!1713643)))

(assert (=> bs!1238279 (= lambda!273618 lambda!273611)))

(declare-fun lt!2177360 () List!61344)

(assert (=> d!1713655 (forall!14440 lt!2177360 lambda!273618)))

(declare-fun e!3315862 () List!61344)

(assert (=> d!1713655 (= lt!2177360 e!3315862)))

(declare-fun c!929168 () Bool)

(assert (=> d!1713655 (= c!929168 ((_ is Cons!61221) zl!343))))

(assert (=> d!1713655 (= (unfocusZipperList!457 zl!343) lt!2177360)))

(declare-fun b!5339872 () Bool)

(assert (=> b!5339872 (= e!3315862 (Cons!61220 (generalisedConcat!684 (exprs!4899 (h!67669 zl!343))) (unfocusZipperList!457 (t!374562 zl!343))))))

(declare-fun b!5339873 () Bool)

(assert (=> b!5339873 (= e!3315862 Nil!61220)))

(assert (= (and d!1713655 c!929168) b!5339872))

(assert (= (and d!1713655 (not c!929168)) b!5339873))

(declare-fun m!6372378 () Bool)

(assert (=> d!1713655 m!6372378))

(assert (=> b!5339872 m!6372096))

(declare-fun m!6372380 () Bool)

(assert (=> b!5339872 m!6372380))

(assert (=> b!5339657 d!1713655))

(declare-fun bs!1238280 () Bool)

(declare-fun d!1713663 () Bool)

(assert (= bs!1238280 (and d!1713663 d!1713623)))

(declare-fun lambda!273619 () Int)

(assert (=> bs!1238280 (= lambda!273619 lambda!273607)))

(declare-fun bs!1238281 () Bool)

(assert (= bs!1238281 (and d!1713663 d!1713643)))

(assert (=> bs!1238281 (= lambda!273619 lambda!273611)))

(declare-fun bs!1238282 () Bool)

(assert (= bs!1238282 (and d!1713663 d!1713655)))

(assert (=> bs!1238282 (= lambda!273619 lambda!273618)))

(assert (=> d!1713663 (= (inv!80784 setElem!34453) (forall!14440 (exprs!4899 setElem!34453) lambda!273619))))

(declare-fun bs!1238284 () Bool)

(assert (= bs!1238284 d!1713663))

(declare-fun m!6372390 () Bool)

(assert (=> bs!1238284 m!6372390))

(assert (=> setNonEmpty!34453 d!1713663))

(declare-fun b!5339900 () Bool)

(declare-fun e!3315885 () Bool)

(declare-fun e!3315886 () Bool)

(assert (=> b!5339900 (= e!3315885 e!3315886)))

(declare-fun c!929176 () Bool)

(assert (=> b!5339900 (= c!929176 ((_ is Star!15015) r!7292))))

(declare-fun b!5339901 () Bool)

(declare-fun e!3315881 () Bool)

(assert (=> b!5339901 (= e!3315886 e!3315881)))

(declare-fun c!929175 () Bool)

(assert (=> b!5339901 (= c!929175 ((_ is Union!15015) r!7292))))

(declare-fun b!5339902 () Bool)

(declare-fun e!3315883 () Bool)

(declare-fun call!381738 () Bool)

(assert (=> b!5339902 (= e!3315883 call!381738)))

(declare-fun bm!381732 () Bool)

(declare-fun call!381739 () Bool)

(declare-fun call!381737 () Bool)

(assert (=> bm!381732 (= call!381739 call!381737)))

(declare-fun b!5339903 () Bool)

(declare-fun e!3315882 () Bool)

(assert (=> b!5339903 (= e!3315882 call!381738)))

(declare-fun bm!381733 () Bool)

(assert (=> bm!381733 (= call!381738 (validRegex!6751 (ite c!929175 (regTwo!30543 r!7292) (regTwo!30542 r!7292))))))

(declare-fun b!5339904 () Bool)

(declare-fun e!3315884 () Bool)

(assert (=> b!5339904 (= e!3315884 call!381737)))

(declare-fun bm!381734 () Bool)

(assert (=> bm!381734 (= call!381737 (validRegex!6751 (ite c!929176 (reg!15344 r!7292) (ite c!929175 (regOne!30543 r!7292) (regOne!30542 r!7292)))))))

(declare-fun b!5339905 () Bool)

(declare-fun e!3315887 () Bool)

(assert (=> b!5339905 (= e!3315887 e!3315882)))

(declare-fun res!2265072 () Bool)

(assert (=> b!5339905 (=> (not res!2265072) (not e!3315882))))

(assert (=> b!5339905 (= res!2265072 call!381739)))

(declare-fun b!5339906 () Bool)

(assert (=> b!5339906 (= e!3315886 e!3315884)))

(declare-fun res!2265073 () Bool)

(assert (=> b!5339906 (= res!2265073 (not (nullable!5184 (reg!15344 r!7292))))))

(assert (=> b!5339906 (=> (not res!2265073) (not e!3315884))))

(declare-fun d!1713669 () Bool)

(declare-fun res!2265071 () Bool)

(assert (=> d!1713669 (=> res!2265071 e!3315885)))

(assert (=> d!1713669 (= res!2265071 ((_ is ElementMatch!15015) r!7292))))

(assert (=> d!1713669 (= (validRegex!6751 r!7292) e!3315885)))

(declare-fun b!5339907 () Bool)

(declare-fun res!2265070 () Bool)

(assert (=> b!5339907 (=> res!2265070 e!3315887)))

(assert (=> b!5339907 (= res!2265070 (not ((_ is Concat!23860) r!7292)))))

(assert (=> b!5339907 (= e!3315881 e!3315887)))

(declare-fun b!5339908 () Bool)

(declare-fun res!2265074 () Bool)

(assert (=> b!5339908 (=> (not res!2265074) (not e!3315883))))

(assert (=> b!5339908 (= res!2265074 call!381739)))

(assert (=> b!5339908 (= e!3315881 e!3315883)))

(assert (= (and d!1713669 (not res!2265071)) b!5339900))

(assert (= (and b!5339900 c!929176) b!5339906))

(assert (= (and b!5339900 (not c!929176)) b!5339901))

(assert (= (and b!5339906 res!2265073) b!5339904))

(assert (= (and b!5339901 c!929175) b!5339908))

(assert (= (and b!5339901 (not c!929175)) b!5339907))

(assert (= (and b!5339908 res!2265074) b!5339902))

(assert (= (and b!5339907 (not res!2265070)) b!5339905))

(assert (= (and b!5339905 res!2265072) b!5339903))

(assert (= (or b!5339902 b!5339903) bm!381733))

(assert (= (or b!5339908 b!5339905) bm!381732))

(assert (= (or b!5339904 bm!381732) bm!381734))

(declare-fun m!6372396 () Bool)

(assert (=> bm!381733 m!6372396))

(declare-fun m!6372398 () Bool)

(assert (=> bm!381734 m!6372398))

(declare-fun m!6372400 () Bool)

(assert (=> b!5339906 m!6372400))

(assert (=> start!562598 d!1713669))

(declare-fun d!1713673 () Bool)

(declare-fun lt!2177370 () Int)

(assert (=> d!1713673 (>= lt!2177370 0)))

(declare-fun e!3315892 () Int)

(assert (=> d!1713673 (= lt!2177370 e!3315892)))

(declare-fun c!929179 () Bool)

(assert (=> d!1713673 (= c!929179 ((_ is Cons!61221) lt!2177297))))

(assert (=> d!1713673 (= (zipperDepthTotal!168 lt!2177297) lt!2177370)))

(declare-fun b!5339917 () Bool)

(assert (=> b!5339917 (= e!3315892 (+ (contextDepthTotal!148 (h!67669 lt!2177297)) (zipperDepthTotal!168 (t!374562 lt!2177297))))))

(declare-fun b!5339918 () Bool)

(assert (=> b!5339918 (= e!3315892 0)))

(assert (= (and d!1713673 c!929179) b!5339917))

(assert (= (and d!1713673 (not c!929179)) b!5339918))

(declare-fun m!6372410 () Bool)

(assert (=> b!5339917 m!6372410))

(declare-fun m!6372412 () Bool)

(assert (=> b!5339917 m!6372412))

(assert (=> b!5339639 d!1713673))

(declare-fun d!1713677 () Bool)

(declare-fun lt!2177371 () Int)

(assert (=> d!1713677 (>= lt!2177371 0)))

(declare-fun e!3315893 () Int)

(assert (=> d!1713677 (= lt!2177371 e!3315893)))

(declare-fun c!929180 () Bool)

(assert (=> d!1713677 (= c!929180 ((_ is Cons!61221) zl!343))))

(assert (=> d!1713677 (= (zipperDepthTotal!168 zl!343) lt!2177371)))

(declare-fun b!5339919 () Bool)

(assert (=> b!5339919 (= e!3315893 (+ (contextDepthTotal!148 (h!67669 zl!343)) (zipperDepthTotal!168 (t!374562 zl!343))))))

(declare-fun b!5339920 () Bool)

(assert (=> b!5339920 (= e!3315893 0)))

(assert (= (and d!1713677 c!929180) b!5339919))

(assert (= (and d!1713677 (not c!929180)) b!5339920))

(assert (=> b!5339919 m!6372086))

(declare-fun m!6372414 () Bool)

(assert (=> b!5339919 m!6372414))

(assert (=> b!5339639 d!1713677))

(declare-fun b!5339941 () Bool)

(declare-fun res!2265086 () Bool)

(declare-fun e!3315904 () Bool)

(assert (=> b!5339941 (=> (not res!2265086) (not e!3315904))))

(declare-fun lt!2177375 () List!61346)

(declare-fun size!39772 (List!61346) Int)

(assert (=> b!5339941 (= res!2265086 (= (size!39772 lt!2177375) (+ (size!39772 Nil!61222) (size!39772 s!2326))))))

(declare-fun b!5339940 () Bool)

(declare-fun e!3315905 () List!61346)

(assert (=> b!5339940 (= e!3315905 (Cons!61222 (h!67670 Nil!61222) (++!13346 (t!374563 Nil!61222) s!2326)))))

(declare-fun b!5339942 () Bool)

(assert (=> b!5339942 (= e!3315904 (or (not (= s!2326 Nil!61222)) (= lt!2177375 Nil!61222)))))

(declare-fun b!5339939 () Bool)

(assert (=> b!5339939 (= e!3315905 s!2326)))

(declare-fun d!1713679 () Bool)

(assert (=> d!1713679 e!3315904))

(declare-fun res!2265085 () Bool)

(assert (=> d!1713679 (=> (not res!2265085) (not e!3315904))))

(declare-fun content!10922 (List!61346) (InoxSet C!30300))

(assert (=> d!1713679 (= res!2265085 (= (content!10922 lt!2177375) ((_ map or) (content!10922 Nil!61222) (content!10922 s!2326))))))

(assert (=> d!1713679 (= lt!2177375 e!3315905)))

(declare-fun c!929187 () Bool)

(assert (=> d!1713679 (= c!929187 ((_ is Nil!61222) Nil!61222))))

(assert (=> d!1713679 (= (++!13346 Nil!61222 s!2326) lt!2177375)))

(assert (= (and d!1713679 c!929187) b!5339939))

(assert (= (and d!1713679 (not c!929187)) b!5339940))

(assert (= (and d!1713679 res!2265085) b!5339941))

(assert (= (and b!5339941 res!2265086) b!5339942))

(declare-fun m!6372442 () Bool)

(assert (=> b!5339941 m!6372442))

(declare-fun m!6372444 () Bool)

(assert (=> b!5339941 m!6372444))

(declare-fun m!6372446 () Bool)

(assert (=> b!5339941 m!6372446))

(declare-fun m!6372448 () Bool)

(assert (=> b!5339940 m!6372448))

(declare-fun m!6372450 () Bool)

(assert (=> d!1713679 m!6372450))

(declare-fun m!6372452 () Bool)

(assert (=> d!1713679 m!6372452))

(declare-fun m!6372454 () Bool)

(assert (=> d!1713679 m!6372454))

(assert (=> b!5339658 d!1713679))

(declare-fun d!1713687 () Bool)

(assert (=> d!1713687 (= (isEmpty!33196 (t!374562 zl!343)) ((_ is Nil!61221) (t!374562 zl!343)))))

(assert (=> b!5339660 d!1713687))

(declare-fun bs!1238300 () Bool)

(declare-fun d!1713689 () Bool)

(assert (= bs!1238300 (and d!1713689 d!1713623)))

(declare-fun lambda!273630 () Int)

(assert (=> bs!1238300 (= lambda!273630 lambda!273607)))

(declare-fun bs!1238301 () Bool)

(assert (= bs!1238301 (and d!1713689 d!1713643)))

(assert (=> bs!1238301 (= lambda!273630 lambda!273611)))

(declare-fun bs!1238302 () Bool)

(assert (= bs!1238302 (and d!1713689 d!1713655)))

(assert (=> bs!1238302 (= lambda!273630 lambda!273618)))

(declare-fun bs!1238303 () Bool)

(assert (= bs!1238303 (and d!1713689 d!1713663)))

(assert (=> bs!1238303 (= lambda!273630 lambda!273619)))

(declare-fun e!3315938 () Bool)

(assert (=> d!1713689 e!3315938))

(declare-fun res!2265106 () Bool)

(assert (=> d!1713689 (=> (not res!2265106) (not e!3315938))))

(declare-fun lt!2177390 () Regex!15015)

(assert (=> d!1713689 (= res!2265106 (validRegex!6751 lt!2177390))))

(declare-fun e!3315935 () Regex!15015)

(assert (=> d!1713689 (= lt!2177390 e!3315935)))

(declare-fun c!929203 () Bool)

(declare-fun e!3315937 () Bool)

(assert (=> d!1713689 (= c!929203 e!3315937)))

(declare-fun res!2265107 () Bool)

(assert (=> d!1713689 (=> (not res!2265107) (not e!3315937))))

(assert (=> d!1713689 (= res!2265107 ((_ is Cons!61220) (exprs!4899 (h!67669 zl!343))))))

(assert (=> d!1713689 (forall!14440 (exprs!4899 (h!67669 zl!343)) lambda!273630)))

(assert (=> d!1713689 (= (generalisedConcat!684 (exprs!4899 (h!67669 zl!343))) lt!2177390)))

(declare-fun b!5339990 () Bool)

(assert (=> b!5339990 (= e!3315935 (h!67668 (exprs!4899 (h!67669 zl!343))))))

(declare-fun b!5339991 () Bool)

(declare-fun e!3315936 () Regex!15015)

(assert (=> b!5339991 (= e!3315935 e!3315936)))

(declare-fun c!929204 () Bool)

(assert (=> b!5339991 (= c!929204 ((_ is Cons!61220) (exprs!4899 (h!67669 zl!343))))))

(declare-fun b!5339992 () Bool)

(declare-fun e!3315933 () Bool)

(declare-fun isEmptyExpr!901 (Regex!15015) Bool)

(assert (=> b!5339992 (= e!3315933 (isEmptyExpr!901 lt!2177390))))

(declare-fun b!5339993 () Bool)

(assert (=> b!5339993 (= e!3315936 (Concat!23860 (h!67668 (exprs!4899 (h!67669 zl!343))) (generalisedConcat!684 (t!374561 (exprs!4899 (h!67669 zl!343))))))))

(declare-fun b!5339994 () Bool)

(assert (=> b!5339994 (= e!3315938 e!3315933)))

(declare-fun c!929205 () Bool)

(assert (=> b!5339994 (= c!929205 (isEmpty!33195 (exprs!4899 (h!67669 zl!343))))))

(declare-fun b!5339995 () Bool)

(declare-fun e!3315934 () Bool)

(declare-fun isConcat!424 (Regex!15015) Bool)

(assert (=> b!5339995 (= e!3315934 (isConcat!424 lt!2177390))))

(declare-fun b!5339996 () Bool)

(assert (=> b!5339996 (= e!3315937 (isEmpty!33195 (t!374561 (exprs!4899 (h!67669 zl!343)))))))

(declare-fun b!5339997 () Bool)

(assert (=> b!5339997 (= e!3315933 e!3315934)))

(declare-fun c!929202 () Bool)

(assert (=> b!5339997 (= c!929202 (isEmpty!33195 (tail!10547 (exprs!4899 (h!67669 zl!343)))))))

(declare-fun b!5339998 () Bool)

(assert (=> b!5339998 (= e!3315936 EmptyExpr!15015)))

(declare-fun b!5339999 () Bool)

(assert (=> b!5339999 (= e!3315934 (= lt!2177390 (head!11450 (exprs!4899 (h!67669 zl!343)))))))

(assert (= (and d!1713689 res!2265107) b!5339996))

(assert (= (and d!1713689 c!929203) b!5339990))

(assert (= (and d!1713689 (not c!929203)) b!5339991))

(assert (= (and b!5339991 c!929204) b!5339993))

(assert (= (and b!5339991 (not c!929204)) b!5339998))

(assert (= (and d!1713689 res!2265106) b!5339994))

(assert (= (and b!5339994 c!929205) b!5339992))

(assert (= (and b!5339994 (not c!929205)) b!5339997))

(assert (= (and b!5339997 c!929202) b!5339999))

(assert (= (and b!5339997 (not c!929202)) b!5339995))

(declare-fun m!6372480 () Bool)

(assert (=> d!1713689 m!6372480))

(declare-fun m!6372482 () Bool)

(assert (=> d!1713689 m!6372482))

(declare-fun m!6372484 () Bool)

(assert (=> b!5339999 m!6372484))

(assert (=> b!5339996 m!6372088))

(declare-fun m!6372486 () Bool)

(assert (=> b!5339995 m!6372486))

(declare-fun m!6372488 () Bool)

(assert (=> b!5339997 m!6372488))

(assert (=> b!5339997 m!6372488))

(declare-fun m!6372490 () Bool)

(assert (=> b!5339997 m!6372490))

(declare-fun m!6372492 () Bool)

(assert (=> b!5339994 m!6372492))

(declare-fun m!6372494 () Bool)

(assert (=> b!5339992 m!6372494))

(assert (=> b!5339993 m!6372162))

(assert (=> b!5339661 d!1713689))

(declare-fun b!5340000 () Bool)

(declare-fun e!3315943 () Bool)

(declare-fun e!3315944 () Bool)

(assert (=> b!5340000 (= e!3315943 e!3315944)))

(declare-fun c!929207 () Bool)

(assert (=> b!5340000 (= c!929207 ((_ is Star!15015) (regTwo!30542 r!7292)))))

(declare-fun b!5340001 () Bool)

(declare-fun e!3315939 () Bool)

(assert (=> b!5340001 (= e!3315944 e!3315939)))

(declare-fun c!929206 () Bool)

(assert (=> b!5340001 (= c!929206 ((_ is Union!15015) (regTwo!30542 r!7292)))))

(declare-fun b!5340002 () Bool)

(declare-fun e!3315941 () Bool)

(declare-fun call!381741 () Bool)

(assert (=> b!5340002 (= e!3315941 call!381741)))

(declare-fun bm!381735 () Bool)

(declare-fun call!381742 () Bool)

(declare-fun call!381740 () Bool)

(assert (=> bm!381735 (= call!381742 call!381740)))

(declare-fun b!5340003 () Bool)

(declare-fun e!3315940 () Bool)

(assert (=> b!5340003 (= e!3315940 call!381741)))

(declare-fun bm!381736 () Bool)

(assert (=> bm!381736 (= call!381741 (validRegex!6751 (ite c!929206 (regTwo!30543 (regTwo!30542 r!7292)) (regTwo!30542 (regTwo!30542 r!7292)))))))

(declare-fun b!5340004 () Bool)

(declare-fun e!3315942 () Bool)

(assert (=> b!5340004 (= e!3315942 call!381740)))

(declare-fun bm!381737 () Bool)

(assert (=> bm!381737 (= call!381740 (validRegex!6751 (ite c!929207 (reg!15344 (regTwo!30542 r!7292)) (ite c!929206 (regOne!30543 (regTwo!30542 r!7292)) (regOne!30542 (regTwo!30542 r!7292))))))))

(declare-fun b!5340005 () Bool)

(declare-fun e!3315945 () Bool)

(assert (=> b!5340005 (= e!3315945 e!3315940)))

(declare-fun res!2265110 () Bool)

(assert (=> b!5340005 (=> (not res!2265110) (not e!3315940))))

(assert (=> b!5340005 (= res!2265110 call!381742)))

(declare-fun b!5340006 () Bool)

(assert (=> b!5340006 (= e!3315944 e!3315942)))

(declare-fun res!2265111 () Bool)

(assert (=> b!5340006 (= res!2265111 (not (nullable!5184 (reg!15344 (regTwo!30542 r!7292)))))))

(assert (=> b!5340006 (=> (not res!2265111) (not e!3315942))))

(declare-fun d!1713695 () Bool)

(declare-fun res!2265109 () Bool)

(assert (=> d!1713695 (=> res!2265109 e!3315943)))

(assert (=> d!1713695 (= res!2265109 ((_ is ElementMatch!15015) (regTwo!30542 r!7292)))))

(assert (=> d!1713695 (= (validRegex!6751 (regTwo!30542 r!7292)) e!3315943)))

(declare-fun b!5340007 () Bool)

(declare-fun res!2265108 () Bool)

(assert (=> b!5340007 (=> res!2265108 e!3315945)))

(assert (=> b!5340007 (= res!2265108 (not ((_ is Concat!23860) (regTwo!30542 r!7292))))))

(assert (=> b!5340007 (= e!3315939 e!3315945)))

(declare-fun b!5340008 () Bool)

(declare-fun res!2265112 () Bool)

(assert (=> b!5340008 (=> (not res!2265112) (not e!3315941))))

(assert (=> b!5340008 (= res!2265112 call!381742)))

(assert (=> b!5340008 (= e!3315939 e!3315941)))

(assert (= (and d!1713695 (not res!2265109)) b!5340000))

(assert (= (and b!5340000 c!929207) b!5340006))

(assert (= (and b!5340000 (not c!929207)) b!5340001))

(assert (= (and b!5340006 res!2265111) b!5340004))

(assert (= (and b!5340001 c!929206) b!5340008))

(assert (= (and b!5340001 (not c!929206)) b!5340007))

(assert (= (and b!5340008 res!2265112) b!5340002))

(assert (= (and b!5340007 (not res!2265108)) b!5340005))

(assert (= (and b!5340005 res!2265110) b!5340003))

(assert (= (or b!5340002 b!5340003) bm!381736))

(assert (= (or b!5340008 b!5340005) bm!381735))

(assert (= (or b!5340004 bm!381735) bm!381737))

(declare-fun m!6372496 () Bool)

(assert (=> bm!381736 m!6372496))

(declare-fun m!6372498 () Bool)

(assert (=> bm!381737 m!6372498))

(declare-fun m!6372500 () Bool)

(assert (=> b!5340006 m!6372500))

(assert (=> b!5339643 d!1713695))

(declare-fun b!5340112 () Bool)

(declare-fun res!2265168 () Bool)

(declare-fun e!3316003 () Bool)

(assert (=> b!5340112 (=> (not res!2265168) (not e!3316003))))

(declare-fun lt!2177402 () Option!15126)

(declare-fun get!21059 (Option!15126) tuple2!64428)

(assert (=> b!5340112 (= res!2265168 (matchR!7200 (regTwo!30542 r!7292) (_2!35517 (get!21059 lt!2177402))))))

(declare-fun b!5340113 () Bool)

(declare-fun e!3316005 () Bool)

(assert (=> b!5340113 (= e!3316005 (not (isDefined!11829 lt!2177402)))))

(declare-fun b!5340114 () Bool)

(declare-fun e!3316004 () Option!15126)

(assert (=> b!5340114 (= e!3316004 (Some!15125 (tuple2!64429 Nil!61222 s!2326)))))

(declare-fun d!1713697 () Bool)

(assert (=> d!1713697 e!3316005))

(declare-fun res!2265167 () Bool)

(assert (=> d!1713697 (=> res!2265167 e!3316005)))

(assert (=> d!1713697 (= res!2265167 e!3316003)))

(declare-fun res!2265170 () Bool)

(assert (=> d!1713697 (=> (not res!2265170) (not e!3316003))))

(assert (=> d!1713697 (= res!2265170 (isDefined!11829 lt!2177402))))

(assert (=> d!1713697 (= lt!2177402 e!3316004)))

(declare-fun c!929234 () Bool)

(declare-fun e!3316006 () Bool)

(assert (=> d!1713697 (= c!929234 e!3316006)))

(declare-fun res!2265169 () Bool)

(assert (=> d!1713697 (=> (not res!2265169) (not e!3316006))))

(assert (=> d!1713697 (= res!2265169 (matchR!7200 (regOne!30542 r!7292) Nil!61222))))

(assert (=> d!1713697 (validRegex!6751 (regOne!30542 r!7292))))

(assert (=> d!1713697 (= (findConcatSeparation!1540 (regOne!30542 r!7292) (regTwo!30542 r!7292) Nil!61222 s!2326 s!2326) lt!2177402)))

(declare-fun b!5340115 () Bool)

(declare-fun lt!2177401 () Unit!153578)

(declare-fun lt!2177400 () Unit!153578)

(assert (=> b!5340115 (= lt!2177401 lt!2177400)))

(assert (=> b!5340115 (= (++!13346 (++!13346 Nil!61222 (Cons!61222 (h!67670 s!2326) Nil!61222)) (t!374563 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1761 (List!61346 C!30300 List!61346 List!61346) Unit!153578)

(assert (=> b!5340115 (= lt!2177400 (lemmaMoveElementToOtherListKeepsConcatEq!1761 Nil!61222 (h!67670 s!2326) (t!374563 s!2326) s!2326))))

(declare-fun e!3316002 () Option!15126)

(assert (=> b!5340115 (= e!3316002 (findConcatSeparation!1540 (regOne!30542 r!7292) (regTwo!30542 r!7292) (++!13346 Nil!61222 (Cons!61222 (h!67670 s!2326) Nil!61222)) (t!374563 s!2326) s!2326))))

(declare-fun b!5340116 () Bool)

(assert (=> b!5340116 (= e!3316003 (= (++!13346 (_1!35517 (get!21059 lt!2177402)) (_2!35517 (get!21059 lt!2177402))) s!2326))))

(declare-fun b!5340117 () Bool)

(declare-fun res!2265166 () Bool)

(assert (=> b!5340117 (=> (not res!2265166) (not e!3316003))))

(assert (=> b!5340117 (= res!2265166 (matchR!7200 (regOne!30542 r!7292) (_1!35517 (get!21059 lt!2177402))))))

(declare-fun b!5340118 () Bool)

(assert (=> b!5340118 (= e!3316006 (matchR!7200 (regTwo!30542 r!7292) s!2326))))

(declare-fun b!5340119 () Bool)

(assert (=> b!5340119 (= e!3316002 None!15125)))

(declare-fun b!5340120 () Bool)

(assert (=> b!5340120 (= e!3316004 e!3316002)))

(declare-fun c!929233 () Bool)

(assert (=> b!5340120 (= c!929233 ((_ is Nil!61222) s!2326))))

(assert (= (and d!1713697 res!2265169) b!5340118))

(assert (= (and d!1713697 c!929234) b!5340114))

(assert (= (and d!1713697 (not c!929234)) b!5340120))

(assert (= (and b!5340120 c!929233) b!5340119))

(assert (= (and b!5340120 (not c!929233)) b!5340115))

(assert (= (and d!1713697 res!2265170) b!5340117))

(assert (= (and b!5340117 res!2265166) b!5340112))

(assert (= (and b!5340112 res!2265168) b!5340116))

(assert (= (and d!1713697 (not res!2265167)) b!5340113))

(declare-fun m!6372512 () Bool)

(assert (=> b!5340118 m!6372512))

(declare-fun m!6372514 () Bool)

(assert (=> d!1713697 m!6372514))

(declare-fun m!6372516 () Bool)

(assert (=> d!1713697 m!6372516))

(assert (=> d!1713697 m!6372126))

(declare-fun m!6372518 () Bool)

(assert (=> b!5340115 m!6372518))

(assert (=> b!5340115 m!6372518))

(declare-fun m!6372520 () Bool)

(assert (=> b!5340115 m!6372520))

(declare-fun m!6372522 () Bool)

(assert (=> b!5340115 m!6372522))

(assert (=> b!5340115 m!6372518))

(declare-fun m!6372524 () Bool)

(assert (=> b!5340115 m!6372524))

(declare-fun m!6372526 () Bool)

(assert (=> b!5340116 m!6372526))

(declare-fun m!6372528 () Bool)

(assert (=> b!5340116 m!6372528))

(assert (=> b!5340113 m!6372514))

(assert (=> b!5340117 m!6372526))

(declare-fun m!6372530 () Bool)

(assert (=> b!5340117 m!6372530))

(assert (=> b!5340112 m!6372526))

(declare-fun m!6372532 () Bool)

(assert (=> b!5340112 m!6372532))

(assert (=> b!5339645 d!1713697))

(declare-fun d!1713701 () Bool)

(declare-fun choose!40025 (Int) Bool)

(assert (=> d!1713701 (= (Exists!2196 lambda!273583) (choose!40025 lambda!273583))))

(declare-fun bs!1238315 () Bool)

(assert (= bs!1238315 d!1713701))

(declare-fun m!6372534 () Bool)

(assert (=> bs!1238315 m!6372534))

(assert (=> b!5339645 d!1713701))

(declare-fun d!1713703 () Bool)

(assert (=> d!1713703 (= (Exists!2196 lambda!273584) (choose!40025 lambda!273584))))

(declare-fun bs!1238316 () Bool)

(assert (= bs!1238316 d!1713703))

(declare-fun m!6372536 () Bool)

(assert (=> bs!1238316 m!6372536))

(assert (=> b!5339645 d!1713703))

(declare-fun bs!1238334 () Bool)

(declare-fun d!1713705 () Bool)

(assert (= bs!1238334 (and d!1713705 b!5339645)))

(declare-fun lambda!273641 () Int)

(assert (=> bs!1238334 (not (= lambda!273641 lambda!273584))))

(declare-fun bs!1238335 () Bool)

(assert (= bs!1238335 (and d!1713705 b!5339668)))

(assert (=> bs!1238335 (not (= lambda!273641 lambda!273587))))

(assert (=> bs!1238335 (= (and (= (regOne!30542 r!7292) (regTwo!30542 (regOne!30542 r!7292))) (= (regTwo!30542 r!7292) lt!2177284)) (= lambda!273641 lambda!273588))))

(assert (=> bs!1238334 (= lambda!273641 lambda!273583)))

(assert (=> bs!1238335 (not (= lambda!273641 lambda!273589))))

(assert (=> bs!1238335 (= (and (= (regOne!30542 r!7292) (regOne!30542 (regOne!30542 r!7292))) (= (regTwo!30542 r!7292) lt!2177299)) (= lambda!273641 lambda!273586))))

(assert (=> d!1713705 true))

(assert (=> d!1713705 true))

(assert (=> d!1713705 true))

(assert (=> d!1713705 (= (isDefined!11829 (findConcatSeparation!1540 (regOne!30542 r!7292) (regTwo!30542 r!7292) Nil!61222 s!2326 s!2326)) (Exists!2196 lambda!273641))))

(declare-fun lt!2177408 () Unit!153578)

(declare-fun choose!40026 (Regex!15015 Regex!15015 List!61346) Unit!153578)

(assert (=> d!1713705 (= lt!2177408 (choose!40026 (regOne!30542 r!7292) (regTwo!30542 r!7292) s!2326))))

(assert (=> d!1713705 (validRegex!6751 (regOne!30542 r!7292))))

(assert (=> d!1713705 (= (lemmaFindConcatSeparationEquivalentToExists!1304 (regOne!30542 r!7292) (regTwo!30542 r!7292) s!2326) lt!2177408)))

(declare-fun bs!1238338 () Bool)

(assert (= bs!1238338 d!1713705))

(declare-fun m!6372572 () Bool)

(assert (=> bs!1238338 m!6372572))

(declare-fun m!6372574 () Bool)

(assert (=> bs!1238338 m!6372574))

(assert (=> bs!1238338 m!6372138))

(assert (=> bs!1238338 m!6372140))

(assert (=> bs!1238338 m!6372138))

(assert (=> bs!1238338 m!6372126))

(assert (=> b!5339645 d!1713705))

(declare-fun bs!1238350 () Bool)

(declare-fun d!1713721 () Bool)

(assert (= bs!1238350 (and d!1713721 b!5339645)))

(declare-fun lambda!273648 () Int)

(assert (=> bs!1238350 (not (= lambda!273648 lambda!273584))))

(declare-fun bs!1238351 () Bool)

(assert (= bs!1238351 (and d!1713721 b!5339668)))

(assert (=> bs!1238351 (not (= lambda!273648 lambda!273587))))

(assert (=> bs!1238351 (= (and (= (regOne!30542 r!7292) (regTwo!30542 (regOne!30542 r!7292))) (= (regTwo!30542 r!7292) lt!2177284)) (= lambda!273648 lambda!273588))))

(assert (=> bs!1238351 (not (= lambda!273648 lambda!273589))))

(assert (=> bs!1238351 (= (and (= (regOne!30542 r!7292) (regOne!30542 (regOne!30542 r!7292))) (= (regTwo!30542 r!7292) lt!2177299)) (= lambda!273648 lambda!273586))))

(assert (=> bs!1238350 (= lambda!273648 lambda!273583)))

(declare-fun bs!1238352 () Bool)

(assert (= bs!1238352 (and d!1713721 d!1713705)))

(assert (=> bs!1238352 (= lambda!273648 lambda!273641)))

(assert (=> d!1713721 true))

(assert (=> d!1713721 true))

(assert (=> d!1713721 true))

(declare-fun lambda!273649 () Int)

(assert (=> bs!1238350 (= lambda!273649 lambda!273584)))

(assert (=> bs!1238351 (= (and (= (regOne!30542 r!7292) (regOne!30542 (regOne!30542 r!7292))) (= (regTwo!30542 r!7292) lt!2177299)) (= lambda!273649 lambda!273587))))

(declare-fun bs!1238353 () Bool)

(assert (= bs!1238353 d!1713721))

(assert (=> bs!1238353 (not (= lambda!273649 lambda!273648))))

(assert (=> bs!1238351 (not (= lambda!273649 lambda!273588))))

(assert (=> bs!1238351 (= (and (= (regOne!30542 r!7292) (regTwo!30542 (regOne!30542 r!7292))) (= (regTwo!30542 r!7292) lt!2177284)) (= lambda!273649 lambda!273589))))

(assert (=> bs!1238351 (not (= lambda!273649 lambda!273586))))

(assert (=> bs!1238350 (not (= lambda!273649 lambda!273583))))

(assert (=> bs!1238352 (not (= lambda!273649 lambda!273641))))

(assert (=> d!1713721 true))

(assert (=> d!1713721 true))

(assert (=> d!1713721 true))

(assert (=> d!1713721 (= (Exists!2196 lambda!273648) (Exists!2196 lambda!273649))))

(declare-fun lt!2177416 () Unit!153578)

(declare-fun choose!40027 (Regex!15015 Regex!15015 List!61346) Unit!153578)

(assert (=> d!1713721 (= lt!2177416 (choose!40027 (regOne!30542 r!7292) (regTwo!30542 r!7292) s!2326))))

(assert (=> d!1713721 (validRegex!6751 (regOne!30542 r!7292))))

(assert (=> d!1713721 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!850 (regOne!30542 r!7292) (regTwo!30542 r!7292) s!2326) lt!2177416)))

(declare-fun m!6372620 () Bool)

(assert (=> bs!1238353 m!6372620))

(declare-fun m!6372622 () Bool)

(assert (=> bs!1238353 m!6372622))

(declare-fun m!6372624 () Bool)

(assert (=> bs!1238353 m!6372624))

(assert (=> bs!1238353 m!6372126))

(assert (=> b!5339645 d!1713721))

(declare-fun d!1713735 () Bool)

(declare-fun isEmpty!33198 (Option!15126) Bool)

(assert (=> d!1713735 (= (isDefined!11829 (findConcatSeparation!1540 (regOne!30542 r!7292) (regTwo!30542 r!7292) Nil!61222 s!2326 s!2326)) (not (isEmpty!33198 (findConcatSeparation!1540 (regOne!30542 r!7292) (regTwo!30542 r!7292) Nil!61222 s!2326 s!2326))))))

(declare-fun bs!1238354 () Bool)

(assert (= bs!1238354 d!1713735))

(assert (=> bs!1238354 m!6372138))

(declare-fun m!6372626 () Bool)

(assert (=> bs!1238354 m!6372626))

(assert (=> b!5339645 d!1713735))

(declare-fun b!5340217 () Bool)

(declare-fun e!3316062 () (InoxSet Context!8798))

(declare-fun call!381766 () (InoxSet Context!8798))

(assert (=> b!5340217 (= e!3316062 call!381766)))

(declare-fun b!5340218 () Bool)

(declare-fun e!3316061 () (InoxSet Context!8798))

(assert (=> b!5340218 (= e!3316061 e!3316062)))

(declare-fun c!929263 () Bool)

(assert (=> b!5340218 (= c!929263 ((_ is Cons!61220) (exprs!4899 lt!2177306)))))

(declare-fun d!1713737 () Bool)

(declare-fun c!929264 () Bool)

(declare-fun e!3316060 () Bool)

(assert (=> d!1713737 (= c!929264 e!3316060)))

(declare-fun res!2265211 () Bool)

(assert (=> d!1713737 (=> (not res!2265211) (not e!3316060))))

(assert (=> d!1713737 (= res!2265211 ((_ is Cons!61220) (exprs!4899 lt!2177306)))))

(assert (=> d!1713737 (= (derivationStepZipperUp!387 lt!2177306 (h!67670 s!2326)) e!3316061)))

(declare-fun bm!381761 () Bool)

(assert (=> bm!381761 (= call!381766 (derivationStepZipperDown!463 (h!67668 (exprs!4899 lt!2177306)) (Context!8799 (t!374561 (exprs!4899 lt!2177306))) (h!67670 s!2326)))))

(declare-fun b!5340219 () Bool)

(assert (=> b!5340219 (= e!3316062 ((as const (Array Context!8798 Bool)) false))))

(declare-fun b!5340220 () Bool)

(assert (=> b!5340220 (= e!3316061 ((_ map or) call!381766 (derivationStepZipperUp!387 (Context!8799 (t!374561 (exprs!4899 lt!2177306))) (h!67670 s!2326))))))

(declare-fun b!5340221 () Bool)

(assert (=> b!5340221 (= e!3316060 (nullable!5184 (h!67668 (exprs!4899 lt!2177306))))))

(assert (= (and d!1713737 res!2265211) b!5340221))

(assert (= (and d!1713737 c!929264) b!5340220))

(assert (= (and d!1713737 (not c!929264)) b!5340218))

(assert (= (and b!5340218 c!929263) b!5340217))

(assert (= (and b!5340218 (not c!929263)) b!5340219))

(assert (= (or b!5340220 b!5340217) bm!381761))

(declare-fun m!6372636 () Bool)

(assert (=> bm!381761 m!6372636))

(declare-fun m!6372638 () Bool)

(assert (=> b!5340220 m!6372638))

(declare-fun m!6372640 () Bool)

(assert (=> b!5340221 m!6372640))

(assert (=> b!5339644 d!1713737))

(declare-fun d!1713743 () Bool)

(assert (=> d!1713743 (= (nullable!5184 (h!67668 (exprs!4899 (h!67669 zl!343)))) (nullableFct!1517 (h!67668 (exprs!4899 (h!67669 zl!343)))))))

(declare-fun bs!1238356 () Bool)

(assert (= bs!1238356 d!1713743))

(declare-fun m!6372642 () Bool)

(assert (=> bs!1238356 m!6372642))

(assert (=> b!5339644 d!1713743))

(declare-fun b!5340227 () Bool)

(declare-fun e!3316068 () (InoxSet Context!8798))

(declare-fun call!381768 () (InoxSet Context!8798))

(assert (=> b!5340227 (= e!3316068 call!381768)))

(declare-fun b!5340228 () Bool)

(declare-fun e!3316067 () (InoxSet Context!8798))

(assert (=> b!5340228 (= e!3316067 e!3316068)))

(declare-fun c!929267 () Bool)

(assert (=> b!5340228 (= c!929267 ((_ is Cons!61220) (exprs!4899 (Context!8799 (Cons!61220 (h!67668 (exprs!4899 (h!67669 zl!343))) (t!374561 (exprs!4899 (h!67669 zl!343))))))))))

(declare-fun d!1713745 () Bool)

(declare-fun c!929268 () Bool)

(declare-fun e!3316066 () Bool)

(assert (=> d!1713745 (= c!929268 e!3316066)))

(declare-fun res!2265213 () Bool)

(assert (=> d!1713745 (=> (not res!2265213) (not e!3316066))))

(assert (=> d!1713745 (= res!2265213 ((_ is Cons!61220) (exprs!4899 (Context!8799 (Cons!61220 (h!67668 (exprs!4899 (h!67669 zl!343))) (t!374561 (exprs!4899 (h!67669 zl!343))))))))))

(assert (=> d!1713745 (= (derivationStepZipperUp!387 (Context!8799 (Cons!61220 (h!67668 (exprs!4899 (h!67669 zl!343))) (t!374561 (exprs!4899 (h!67669 zl!343))))) (h!67670 s!2326)) e!3316067)))

(declare-fun bm!381763 () Bool)

(assert (=> bm!381763 (= call!381768 (derivationStepZipperDown!463 (h!67668 (exprs!4899 (Context!8799 (Cons!61220 (h!67668 (exprs!4899 (h!67669 zl!343))) (t!374561 (exprs!4899 (h!67669 zl!343))))))) (Context!8799 (t!374561 (exprs!4899 (Context!8799 (Cons!61220 (h!67668 (exprs!4899 (h!67669 zl!343))) (t!374561 (exprs!4899 (h!67669 zl!343)))))))) (h!67670 s!2326)))))

(declare-fun b!5340229 () Bool)

(assert (=> b!5340229 (= e!3316068 ((as const (Array Context!8798 Bool)) false))))

(declare-fun b!5340230 () Bool)

(assert (=> b!5340230 (= e!3316067 ((_ map or) call!381768 (derivationStepZipperUp!387 (Context!8799 (t!374561 (exprs!4899 (Context!8799 (Cons!61220 (h!67668 (exprs!4899 (h!67669 zl!343))) (t!374561 (exprs!4899 (h!67669 zl!343)))))))) (h!67670 s!2326))))))

(declare-fun b!5340231 () Bool)

(assert (=> b!5340231 (= e!3316066 (nullable!5184 (h!67668 (exprs!4899 (Context!8799 (Cons!61220 (h!67668 (exprs!4899 (h!67669 zl!343))) (t!374561 (exprs!4899 (h!67669 zl!343)))))))))))

(assert (= (and d!1713745 res!2265213) b!5340231))

(assert (= (and d!1713745 c!929268) b!5340230))

(assert (= (and d!1713745 (not c!929268)) b!5340228))

(assert (= (and b!5340228 c!929267) b!5340227))

(assert (= (and b!5340228 (not c!929267)) b!5340229))

(assert (= (or b!5340230 b!5340227) bm!381763))

(declare-fun m!6372648 () Bool)

(assert (=> bm!381763 m!6372648))

(declare-fun m!6372650 () Bool)

(assert (=> b!5340230 m!6372650))

(declare-fun m!6372652 () Bool)

(assert (=> b!5340231 m!6372652))

(assert (=> b!5339644 d!1713745))

(declare-fun d!1713749 () Bool)

(declare-fun choose!40028 ((InoxSet Context!8798) Int) (InoxSet Context!8798))

(assert (=> d!1713749 (= (flatMap!742 z!1189 lambda!273585) (choose!40028 z!1189 lambda!273585))))

(declare-fun bs!1238357 () Bool)

(assert (= bs!1238357 d!1713749))

(declare-fun m!6372654 () Bool)

(assert (=> bs!1238357 m!6372654))

(assert (=> b!5339644 d!1713749))

(declare-fun b!5340232 () Bool)

(declare-fun e!3316069 () (InoxSet Context!8798))

(declare-fun e!3316073 () (InoxSet Context!8798))

(assert (=> b!5340232 (= e!3316069 e!3316073)))

(declare-fun c!929272 () Bool)

(assert (=> b!5340232 (= c!929272 ((_ is Union!15015) (h!67668 (exprs!4899 (h!67669 zl!343)))))))

(declare-fun bm!381764 () Bool)

(declare-fun call!381769 () List!61344)

(declare-fun call!381771 () List!61344)

(assert (=> bm!381764 (= call!381769 call!381771)))

(declare-fun b!5340233 () Bool)

(declare-fun e!3316074 () (InoxSet Context!8798))

(declare-fun call!381770 () (InoxSet Context!8798))

(assert (=> b!5340233 (= e!3316074 call!381770)))

(declare-fun c!929269 () Bool)

(declare-fun c!929273 () Bool)

(declare-fun bm!381765 () Bool)

(assert (=> bm!381765 (= call!381771 ($colon$colon!1416 (exprs!4899 lt!2177306) (ite (or c!929269 c!929273) (regTwo!30542 (h!67668 (exprs!4899 (h!67669 zl!343)))) (h!67668 (exprs!4899 (h!67669 zl!343))))))))

(declare-fun bm!381766 () Bool)

(declare-fun call!381773 () (InoxSet Context!8798))

(assert (=> bm!381766 (= call!381770 call!381773)))

(declare-fun b!5340234 () Bool)

(assert (=> b!5340234 (= e!3316074 ((as const (Array Context!8798 Bool)) false))))

(declare-fun b!5340235 () Bool)

(declare-fun e!3316070 () (InoxSet Context!8798))

(declare-fun call!381774 () (InoxSet Context!8798))

(assert (=> b!5340235 (= e!3316070 ((_ map or) call!381774 call!381773))))

(declare-fun d!1713751 () Bool)

(declare-fun c!929271 () Bool)

(assert (=> d!1713751 (= c!929271 (and ((_ is ElementMatch!15015) (h!67668 (exprs!4899 (h!67669 zl!343)))) (= (c!929081 (h!67668 (exprs!4899 (h!67669 zl!343)))) (h!67670 s!2326))))))

(assert (=> d!1713751 (= (derivationStepZipperDown!463 (h!67668 (exprs!4899 (h!67669 zl!343))) lt!2177306 (h!67670 s!2326)) e!3316069)))

(declare-fun b!5340236 () Bool)

(declare-fun e!3316071 () Bool)

(assert (=> b!5340236 (= e!3316071 (nullable!5184 (regOne!30542 (h!67668 (exprs!4899 (h!67669 zl!343))))))))

(declare-fun b!5340237 () Bool)

(assert (=> b!5340237 (= c!929269 e!3316071)))

(declare-fun res!2265214 () Bool)

(assert (=> b!5340237 (=> (not res!2265214) (not e!3316071))))

(assert (=> b!5340237 (= res!2265214 ((_ is Concat!23860) (h!67668 (exprs!4899 (h!67669 zl!343)))))))

(assert (=> b!5340237 (= e!3316073 e!3316070)))

(declare-fun b!5340238 () Bool)

(assert (=> b!5340238 (= e!3316069 (store ((as const (Array Context!8798 Bool)) false) lt!2177306 true))))

(declare-fun b!5340239 () Bool)

(declare-fun call!381772 () (InoxSet Context!8798))

(assert (=> b!5340239 (= e!3316073 ((_ map or) call!381772 call!381774))))

(declare-fun b!5340240 () Bool)

(declare-fun e!3316072 () (InoxSet Context!8798))

(assert (=> b!5340240 (= e!3316072 call!381770)))

(declare-fun bm!381767 () Bool)

(assert (=> bm!381767 (= call!381773 call!381772)))

(declare-fun b!5340241 () Bool)

(assert (=> b!5340241 (= e!3316070 e!3316072)))

(assert (=> b!5340241 (= c!929273 ((_ is Concat!23860) (h!67668 (exprs!4899 (h!67669 zl!343)))))))

(declare-fun bm!381768 () Bool)

(assert (=> bm!381768 (= call!381774 (derivationStepZipperDown!463 (ite c!929272 (regTwo!30543 (h!67668 (exprs!4899 (h!67669 zl!343)))) (regOne!30542 (h!67668 (exprs!4899 (h!67669 zl!343))))) (ite c!929272 lt!2177306 (Context!8799 call!381771)) (h!67670 s!2326)))))

(declare-fun b!5340242 () Bool)

(declare-fun c!929270 () Bool)

(assert (=> b!5340242 (= c!929270 ((_ is Star!15015) (h!67668 (exprs!4899 (h!67669 zl!343)))))))

(assert (=> b!5340242 (= e!3316072 e!3316074)))

(declare-fun bm!381769 () Bool)

(assert (=> bm!381769 (= call!381772 (derivationStepZipperDown!463 (ite c!929272 (regOne!30543 (h!67668 (exprs!4899 (h!67669 zl!343)))) (ite c!929269 (regTwo!30542 (h!67668 (exprs!4899 (h!67669 zl!343)))) (ite c!929273 (regOne!30542 (h!67668 (exprs!4899 (h!67669 zl!343)))) (reg!15344 (h!67668 (exprs!4899 (h!67669 zl!343))))))) (ite (or c!929272 c!929269) lt!2177306 (Context!8799 call!381769)) (h!67670 s!2326)))))

(assert (= (and d!1713751 c!929271) b!5340238))

(assert (= (and d!1713751 (not c!929271)) b!5340232))

(assert (= (and b!5340232 c!929272) b!5340239))

(assert (= (and b!5340232 (not c!929272)) b!5340237))

(assert (= (and b!5340237 res!2265214) b!5340236))

(assert (= (and b!5340237 c!929269) b!5340235))

(assert (= (and b!5340237 (not c!929269)) b!5340241))

(assert (= (and b!5340241 c!929273) b!5340240))

(assert (= (and b!5340241 (not c!929273)) b!5340242))

(assert (= (and b!5340242 c!929270) b!5340233))

(assert (= (and b!5340242 (not c!929270)) b!5340234))

(assert (= (or b!5340240 b!5340233) bm!381764))

(assert (= (or b!5340240 b!5340233) bm!381766))

(assert (= (or b!5340235 bm!381764) bm!381765))

(assert (= (or b!5340235 bm!381766) bm!381767))

(assert (= (or b!5340239 b!5340235) bm!381768))

(assert (= (or b!5340239 bm!381767) bm!381769))

(declare-fun m!6372656 () Bool)

(assert (=> bm!381768 m!6372656))

(declare-fun m!6372658 () Bool)

(assert (=> b!5340238 m!6372658))

(declare-fun m!6372666 () Bool)

(assert (=> bm!381769 m!6372666))

(declare-fun m!6372668 () Bool)

(assert (=> b!5340236 m!6372668))

(declare-fun m!6372670 () Bool)

(assert (=> bm!381765 m!6372670))

(assert (=> b!5339644 d!1713751))

(declare-fun b!5340243 () Bool)

(declare-fun e!3316077 () (InoxSet Context!8798))

(declare-fun call!381775 () (InoxSet Context!8798))

(assert (=> b!5340243 (= e!3316077 call!381775)))

(declare-fun b!5340244 () Bool)

(declare-fun e!3316076 () (InoxSet Context!8798))

(assert (=> b!5340244 (= e!3316076 e!3316077)))

(declare-fun c!929274 () Bool)

(assert (=> b!5340244 (= c!929274 ((_ is Cons!61220) (exprs!4899 (h!67669 zl!343))))))

(declare-fun d!1713755 () Bool)

(declare-fun c!929275 () Bool)

(declare-fun e!3316075 () Bool)

(assert (=> d!1713755 (= c!929275 e!3316075)))

(declare-fun res!2265215 () Bool)

(assert (=> d!1713755 (=> (not res!2265215) (not e!3316075))))

(assert (=> d!1713755 (= res!2265215 ((_ is Cons!61220) (exprs!4899 (h!67669 zl!343))))))

(assert (=> d!1713755 (= (derivationStepZipperUp!387 (h!67669 zl!343) (h!67670 s!2326)) e!3316076)))

(declare-fun bm!381770 () Bool)

(assert (=> bm!381770 (= call!381775 (derivationStepZipperDown!463 (h!67668 (exprs!4899 (h!67669 zl!343))) (Context!8799 (t!374561 (exprs!4899 (h!67669 zl!343)))) (h!67670 s!2326)))))

(declare-fun b!5340245 () Bool)

(assert (=> b!5340245 (= e!3316077 ((as const (Array Context!8798 Bool)) false))))

(declare-fun b!5340246 () Bool)

(assert (=> b!5340246 (= e!3316076 ((_ map or) call!381775 (derivationStepZipperUp!387 (Context!8799 (t!374561 (exprs!4899 (h!67669 zl!343)))) (h!67670 s!2326))))))

(declare-fun b!5340247 () Bool)

(assert (=> b!5340247 (= e!3316075 (nullable!5184 (h!67668 (exprs!4899 (h!67669 zl!343)))))))

(assert (= (and d!1713755 res!2265215) b!5340247))

(assert (= (and d!1713755 c!929275) b!5340246))

(assert (= (and d!1713755 (not c!929275)) b!5340244))

(assert (= (and b!5340244 c!929274) b!5340243))

(assert (= (and b!5340244 (not c!929274)) b!5340245))

(assert (= (or b!5340246 b!5340243) bm!381770))

(declare-fun m!6372672 () Bool)

(assert (=> bm!381770 m!6372672))

(declare-fun m!6372674 () Bool)

(assert (=> b!5340246 m!6372674))

(assert (=> b!5340247 m!6372122))

(assert (=> b!5339644 d!1713755))

(declare-fun d!1713757 () Bool)

(declare-fun dynLambda!24208 (Int Context!8798) (InoxSet Context!8798))

(assert (=> d!1713757 (= (flatMap!742 z!1189 lambda!273585) (dynLambda!24208 lambda!273585 (h!67669 zl!343)))))

(declare-fun lt!2177423 () Unit!153578)

(declare-fun choose!40029 ((InoxSet Context!8798) Context!8798 Int) Unit!153578)

(assert (=> d!1713757 (= lt!2177423 (choose!40029 z!1189 (h!67669 zl!343) lambda!273585))))

(assert (=> d!1713757 (= z!1189 (store ((as const (Array Context!8798 Bool)) false) (h!67669 zl!343) true))))

(assert (=> d!1713757 (= (lemmaFlatMapOnSingletonSet!274 z!1189 (h!67669 zl!343) lambda!273585) lt!2177423)))

(declare-fun b_lambda!205191 () Bool)

(assert (=> (not b_lambda!205191) (not d!1713757)))

(declare-fun bs!1238361 () Bool)

(assert (= bs!1238361 d!1713757))

(assert (=> bs!1238361 m!6372114))

(declare-fun m!6372686 () Bool)

(assert (=> bs!1238361 m!6372686))

(declare-fun m!6372688 () Bool)

(assert (=> bs!1238361 m!6372688))

(declare-fun m!6372690 () Bool)

(assert (=> bs!1238361 m!6372690))

(assert (=> b!5339644 d!1713757))

(declare-fun d!1713765 () Bool)

(declare-fun e!3316097 () Bool)

(assert (=> d!1713765 e!3316097))

(declare-fun res!2265229 () Bool)

(assert (=> d!1713765 (=> (not res!2265229) (not e!3316097))))

(declare-fun lt!2177426 () List!61345)

(declare-fun noDuplicate!1320 (List!61345) Bool)

(assert (=> d!1713765 (= res!2265229 (noDuplicate!1320 lt!2177426))))

(declare-fun choose!40030 ((InoxSet Context!8798)) List!61345)

(assert (=> d!1713765 (= lt!2177426 (choose!40030 z!1189))))

(assert (=> d!1713765 (= (toList!8799 z!1189) lt!2177426)))

(declare-fun b!5340273 () Bool)

(declare-fun content!10923 (List!61345) (InoxSet Context!8798))

(assert (=> b!5340273 (= e!3316097 (= (content!10923 lt!2177426) z!1189))))

(assert (= (and d!1713765 res!2265229) b!5340273))

(declare-fun m!6372692 () Bool)

(assert (=> d!1713765 m!6372692))

(declare-fun m!6372694 () Bool)

(assert (=> d!1713765 m!6372694))

(declare-fun m!6372696 () Bool)

(assert (=> b!5340273 m!6372696))

(assert (=> b!5339646 d!1713765))

(declare-fun d!1713767 () Bool)

(assert (=> d!1713767 (= (flatMap!742 lt!2177311 lambda!273585) (choose!40028 lt!2177311 lambda!273585))))

(declare-fun bs!1238362 () Bool)

(assert (= bs!1238362 d!1713767))

(declare-fun m!6372698 () Bool)

(assert (=> bs!1238362 m!6372698))

(assert (=> b!5339665 d!1713767))

(declare-fun b!5340274 () Bool)

(declare-fun e!3316100 () (InoxSet Context!8798))

(declare-fun call!381783 () (InoxSet Context!8798))

(assert (=> b!5340274 (= e!3316100 call!381783)))

(declare-fun b!5340275 () Bool)

(declare-fun e!3316099 () (InoxSet Context!8798))

(assert (=> b!5340275 (= e!3316099 e!3316100)))

(declare-fun c!929282 () Bool)

(assert (=> b!5340275 (= c!929282 ((_ is Cons!61220) (exprs!4899 lt!2177308)))))

(declare-fun d!1713769 () Bool)

(declare-fun c!929283 () Bool)

(declare-fun e!3316098 () Bool)

(assert (=> d!1713769 (= c!929283 e!3316098)))

(declare-fun res!2265230 () Bool)

(assert (=> d!1713769 (=> (not res!2265230) (not e!3316098))))

(assert (=> d!1713769 (= res!2265230 ((_ is Cons!61220) (exprs!4899 lt!2177308)))))

(assert (=> d!1713769 (= (derivationStepZipperUp!387 lt!2177308 (h!67670 s!2326)) e!3316099)))

(declare-fun bm!381778 () Bool)

(assert (=> bm!381778 (= call!381783 (derivationStepZipperDown!463 (h!67668 (exprs!4899 lt!2177308)) (Context!8799 (t!374561 (exprs!4899 lt!2177308))) (h!67670 s!2326)))))

(declare-fun b!5340276 () Bool)

(assert (=> b!5340276 (= e!3316100 ((as const (Array Context!8798 Bool)) false))))

(declare-fun b!5340277 () Bool)

(assert (=> b!5340277 (= e!3316099 ((_ map or) call!381783 (derivationStepZipperUp!387 (Context!8799 (t!374561 (exprs!4899 lt!2177308))) (h!67670 s!2326))))))

(declare-fun b!5340278 () Bool)

(assert (=> b!5340278 (= e!3316098 (nullable!5184 (h!67668 (exprs!4899 lt!2177308))))))

(assert (= (and d!1713769 res!2265230) b!5340278))

(assert (= (and d!1713769 c!929283) b!5340277))

(assert (= (and d!1713769 (not c!929283)) b!5340275))

(assert (= (and b!5340275 c!929282) b!5340274))

(assert (= (and b!5340275 (not c!929282)) b!5340276))

(assert (= (or b!5340277 b!5340274) bm!381778))

(declare-fun m!6372700 () Bool)

(assert (=> bm!381778 m!6372700))

(declare-fun m!6372702 () Bool)

(assert (=> b!5340277 m!6372702))

(declare-fun m!6372704 () Bool)

(assert (=> b!5340278 m!6372704))

(assert (=> b!5339665 d!1713769))

(declare-fun d!1713771 () Bool)

(assert (=> d!1713771 (= (flatMap!742 lt!2177311 lambda!273585) (dynLambda!24208 lambda!273585 lt!2177308))))

(declare-fun lt!2177427 () Unit!153578)

(assert (=> d!1713771 (= lt!2177427 (choose!40029 lt!2177311 lt!2177308 lambda!273585))))

(assert (=> d!1713771 (= lt!2177311 (store ((as const (Array Context!8798 Bool)) false) lt!2177308 true))))

(assert (=> d!1713771 (= (lemmaFlatMapOnSingletonSet!274 lt!2177311 lt!2177308 lambda!273585) lt!2177427)))

(declare-fun b_lambda!205193 () Bool)

(assert (=> (not b_lambda!205193) (not d!1713771)))

(declare-fun bs!1238363 () Bool)

(assert (= bs!1238363 d!1713771))

(assert (=> bs!1238363 m!6372070))

(declare-fun m!6372706 () Bool)

(assert (=> bs!1238363 m!6372706))

(declare-fun m!6372708 () Bool)

(assert (=> bs!1238363 m!6372708))

(assert (=> bs!1238363 m!6372076))

(assert (=> b!5339665 d!1713771))

(declare-fun bs!1238364 () Bool)

(declare-fun d!1713773 () Bool)

(assert (= bs!1238364 (and d!1713773 b!5339644)))

(declare-fun lambda!273652 () Int)

(assert (=> bs!1238364 (= lambda!273652 lambda!273585)))

(assert (=> d!1713773 true))

(assert (=> d!1713773 (= (derivationStepZipper!1256 lt!2177311 (h!67670 s!2326)) (flatMap!742 lt!2177311 lambda!273652))))

(declare-fun bs!1238365 () Bool)

(assert (= bs!1238365 d!1713773))

(declare-fun m!6372716 () Bool)

(assert (=> bs!1238365 m!6372716))

(assert (=> b!5339665 d!1713773))

(declare-fun b!5340315 () Bool)

(assert (=> b!5340315 true))

(declare-fun bs!1238385 () Bool)

(declare-fun b!5340317 () Bool)

(assert (= bs!1238385 (and b!5340317 b!5340315)))

(declare-fun lt!2177446 () Int)

(declare-fun lambda!273666 () Int)

(declare-fun lt!2177445 () Int)

(declare-fun lambda!273665 () Int)

(assert (=> bs!1238385 (= (= lt!2177446 lt!2177445) (= lambda!273666 lambda!273665))))

(assert (=> b!5340317 true))

(declare-fun d!1713777 () Bool)

(declare-fun e!3316124 () Bool)

(assert (=> d!1713777 e!3316124))

(declare-fun res!2265247 () Bool)

(assert (=> d!1713777 (=> (not res!2265247) (not e!3316124))))

(assert (=> d!1713777 (= res!2265247 (>= lt!2177446 0))))

(declare-fun e!3316123 () Int)

(assert (=> d!1713777 (= lt!2177446 e!3316123)))

(declare-fun c!929302 () Bool)

(assert (=> d!1713777 (= c!929302 ((_ is Cons!61221) lt!2177297))))

(assert (=> d!1713777 (= (zipperDepth!124 lt!2177297) lt!2177446)))

(assert (=> b!5340315 (= e!3316123 lt!2177445)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!72 (Context!8798) Int)

(assert (=> b!5340315 (= lt!2177445 (maxBigInt!0 (contextDepth!72 (h!67669 lt!2177297)) (zipperDepth!124 (t!374562 lt!2177297))))))

(declare-fun lambda!273663 () Int)

(declare-fun lt!2177447 () Unit!153578)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!66 (List!61345 Int Int Int) Unit!153578)

(assert (=> b!5340315 (= lt!2177447 (lemmaForallContextDepthBiggerThanTransitive!66 (t!374562 lt!2177297) lt!2177445 (zipperDepth!124 (t!374562 lt!2177297)) lambda!273663))))

(declare-fun forall!14441 (List!61345 Int) Bool)

(assert (=> b!5340315 (forall!14441 (t!374562 lt!2177297) lambda!273665)))

(declare-fun lt!2177448 () Unit!153578)

(assert (=> b!5340315 (= lt!2177448 lt!2177447)))

(declare-fun b!5340316 () Bool)

(assert (=> b!5340316 (= e!3316123 0)))

(assert (=> b!5340317 (= e!3316124 (forall!14441 lt!2177297 lambda!273666))))

(assert (= (and d!1713777 c!929302) b!5340315))

(assert (= (and d!1713777 (not c!929302)) b!5340316))

(assert (= (and d!1713777 res!2265247) b!5340317))

(declare-fun m!6372762 () Bool)

(assert (=> b!5340315 m!6372762))

(declare-fun m!6372764 () Bool)

(assert (=> b!5340315 m!6372764))

(declare-fun m!6372766 () Bool)

(assert (=> b!5340315 m!6372766))

(assert (=> b!5340315 m!6372762))

(assert (=> b!5340315 m!6372764))

(declare-fun m!6372768 () Bool)

(assert (=> b!5340315 m!6372768))

(declare-fun m!6372770 () Bool)

(assert (=> b!5340315 m!6372770))

(assert (=> b!5340315 m!6372764))

(declare-fun m!6372772 () Bool)

(assert (=> b!5340317 m!6372772))

(assert (=> b!5339647 d!1713777))

(declare-fun bs!1238393 () Bool)

(declare-fun b!5340320 () Bool)

(assert (= bs!1238393 (and b!5340320 b!5340315)))

(declare-fun lambda!273667 () Int)

(assert (=> bs!1238393 (= lambda!273667 lambda!273663)))

(declare-fun lambda!273668 () Int)

(declare-fun lt!2177449 () Int)

(assert (=> bs!1238393 (= (= lt!2177449 lt!2177445) (= lambda!273668 lambda!273665))))

(declare-fun bs!1238396 () Bool)

(assert (= bs!1238396 (and b!5340320 b!5340317)))

(assert (=> bs!1238396 (= (= lt!2177449 lt!2177446) (= lambda!273668 lambda!273666))))

(assert (=> b!5340320 true))

(declare-fun bs!1238397 () Bool)

(declare-fun b!5340322 () Bool)

(assert (= bs!1238397 (and b!5340322 b!5340315)))

(declare-fun lambda!273669 () Int)

(declare-fun lt!2177450 () Int)

(assert (=> bs!1238397 (= (= lt!2177450 lt!2177445) (= lambda!273669 lambda!273665))))

(declare-fun bs!1238398 () Bool)

(assert (= bs!1238398 (and b!5340322 b!5340317)))

(assert (=> bs!1238398 (= (= lt!2177450 lt!2177446) (= lambda!273669 lambda!273666))))

(declare-fun bs!1238399 () Bool)

(assert (= bs!1238399 (and b!5340322 b!5340320)))

(assert (=> bs!1238399 (= (= lt!2177450 lt!2177449) (= lambda!273669 lambda!273668))))

(assert (=> b!5340322 true))

(declare-fun d!1713797 () Bool)

(declare-fun e!3316126 () Bool)

(assert (=> d!1713797 e!3316126))

(declare-fun res!2265248 () Bool)

(assert (=> d!1713797 (=> (not res!2265248) (not e!3316126))))

(assert (=> d!1713797 (= res!2265248 (>= lt!2177450 0))))

(declare-fun e!3316125 () Int)

(assert (=> d!1713797 (= lt!2177450 e!3316125)))

(declare-fun c!929303 () Bool)

(assert (=> d!1713797 (= c!929303 ((_ is Cons!61221) zl!343))))

(assert (=> d!1713797 (= (zipperDepth!124 zl!343) lt!2177450)))

(assert (=> b!5340320 (= e!3316125 lt!2177449)))

(assert (=> b!5340320 (= lt!2177449 (maxBigInt!0 (contextDepth!72 (h!67669 zl!343)) (zipperDepth!124 (t!374562 zl!343))))))

(declare-fun lt!2177451 () Unit!153578)

(assert (=> b!5340320 (= lt!2177451 (lemmaForallContextDepthBiggerThanTransitive!66 (t!374562 zl!343) lt!2177449 (zipperDepth!124 (t!374562 zl!343)) lambda!273667))))

(assert (=> b!5340320 (forall!14441 (t!374562 zl!343) lambda!273668)))

(declare-fun lt!2177452 () Unit!153578)

(assert (=> b!5340320 (= lt!2177452 lt!2177451)))

(declare-fun b!5340321 () Bool)

(assert (=> b!5340321 (= e!3316125 0)))

(assert (=> b!5340322 (= e!3316126 (forall!14441 zl!343 lambda!273669))))

(assert (= (and d!1713797 c!929303) b!5340320))

(assert (= (and d!1713797 (not c!929303)) b!5340321))

(assert (= (and d!1713797 res!2265248) b!5340322))

(declare-fun m!6372774 () Bool)

(assert (=> b!5340320 m!6372774))

(declare-fun m!6372776 () Bool)

(assert (=> b!5340320 m!6372776))

(declare-fun m!6372778 () Bool)

(assert (=> b!5340320 m!6372778))

(assert (=> b!5340320 m!6372774))

(assert (=> b!5340320 m!6372776))

(declare-fun m!6372780 () Bool)

(assert (=> b!5340320 m!6372780))

(declare-fun m!6372782 () Bool)

(assert (=> b!5340320 m!6372782))

(assert (=> b!5340320 m!6372776))

(declare-fun m!6372784 () Bool)

(assert (=> b!5340322 m!6372784))

(assert (=> b!5339647 d!1713797))

(declare-fun b!5340323 () Bool)

(declare-fun e!3316131 () Bool)

(declare-fun e!3316132 () Bool)

(assert (=> b!5340323 (= e!3316131 e!3316132)))

(declare-fun c!929305 () Bool)

(assert (=> b!5340323 (= c!929305 ((_ is Star!15015) (regOne!30542 r!7292)))))

(declare-fun b!5340324 () Bool)

(declare-fun e!3316127 () Bool)

(assert (=> b!5340324 (= e!3316132 e!3316127)))

(declare-fun c!929304 () Bool)

(assert (=> b!5340324 (= c!929304 ((_ is Union!15015) (regOne!30542 r!7292)))))

(declare-fun b!5340325 () Bool)

(declare-fun e!3316129 () Bool)

(declare-fun call!381789 () Bool)

(assert (=> b!5340325 (= e!3316129 call!381789)))

(declare-fun bm!381783 () Bool)

(declare-fun call!381790 () Bool)

(declare-fun call!381788 () Bool)

(assert (=> bm!381783 (= call!381790 call!381788)))

(declare-fun b!5340326 () Bool)

(declare-fun e!3316128 () Bool)

(assert (=> b!5340326 (= e!3316128 call!381789)))

(declare-fun bm!381784 () Bool)

(assert (=> bm!381784 (= call!381789 (validRegex!6751 (ite c!929304 (regTwo!30543 (regOne!30542 r!7292)) (regTwo!30542 (regOne!30542 r!7292)))))))

(declare-fun b!5340327 () Bool)

(declare-fun e!3316130 () Bool)

(assert (=> b!5340327 (= e!3316130 call!381788)))

(declare-fun bm!381785 () Bool)

(assert (=> bm!381785 (= call!381788 (validRegex!6751 (ite c!929305 (reg!15344 (regOne!30542 r!7292)) (ite c!929304 (regOne!30543 (regOne!30542 r!7292)) (regOne!30542 (regOne!30542 r!7292))))))))

(declare-fun b!5340328 () Bool)

(declare-fun e!3316133 () Bool)

(assert (=> b!5340328 (= e!3316133 e!3316128)))

(declare-fun res!2265251 () Bool)

(assert (=> b!5340328 (=> (not res!2265251) (not e!3316128))))

(assert (=> b!5340328 (= res!2265251 call!381790)))

(declare-fun b!5340329 () Bool)

(assert (=> b!5340329 (= e!3316132 e!3316130)))

(declare-fun res!2265252 () Bool)

(assert (=> b!5340329 (= res!2265252 (not (nullable!5184 (reg!15344 (regOne!30542 r!7292)))))))

(assert (=> b!5340329 (=> (not res!2265252) (not e!3316130))))

(declare-fun d!1713799 () Bool)

(declare-fun res!2265250 () Bool)

(assert (=> d!1713799 (=> res!2265250 e!3316131)))

(assert (=> d!1713799 (= res!2265250 ((_ is ElementMatch!15015) (regOne!30542 r!7292)))))

(assert (=> d!1713799 (= (validRegex!6751 (regOne!30542 r!7292)) e!3316131)))

(declare-fun b!5340330 () Bool)

(declare-fun res!2265249 () Bool)

(assert (=> b!5340330 (=> res!2265249 e!3316133)))

(assert (=> b!5340330 (= res!2265249 (not ((_ is Concat!23860) (regOne!30542 r!7292))))))

(assert (=> b!5340330 (= e!3316127 e!3316133)))

(declare-fun b!5340331 () Bool)

(declare-fun res!2265253 () Bool)

(assert (=> b!5340331 (=> (not res!2265253) (not e!3316129))))

(assert (=> b!5340331 (= res!2265253 call!381790)))

(assert (=> b!5340331 (= e!3316127 e!3316129)))

(assert (= (and d!1713799 (not res!2265250)) b!5340323))

(assert (= (and b!5340323 c!929305) b!5340329))

(assert (= (and b!5340323 (not c!929305)) b!5340324))

(assert (= (and b!5340329 res!2265252) b!5340327))

(assert (= (and b!5340324 c!929304) b!5340331))

(assert (= (and b!5340324 (not c!929304)) b!5340330))

(assert (= (and b!5340331 res!2265253) b!5340325))

(assert (= (and b!5340330 (not res!2265249)) b!5340328))

(assert (= (and b!5340328 res!2265251) b!5340326))

(assert (= (or b!5340325 b!5340326) bm!381784))

(assert (= (or b!5340331 b!5340328) bm!381783))

(assert (= (or b!5340327 bm!381783) bm!381785))

(declare-fun m!6372786 () Bool)

(assert (=> bm!381784 m!6372786))

(declare-fun m!6372788 () Bool)

(assert (=> bm!381785 m!6372788))

(declare-fun m!6372790 () Bool)

(assert (=> b!5340329 m!6372790))

(assert (=> b!5339648 d!1713799))

(declare-fun bs!1238400 () Bool)

(declare-fun d!1713801 () Bool)

(assert (= bs!1238400 (and d!1713801 b!5339645)))

(declare-fun lambda!273671 () Int)

(assert (=> bs!1238400 (not (= lambda!273671 lambda!273584))))

(declare-fun bs!1238401 () Bool)

(assert (= bs!1238401 (and d!1713801 b!5339668)))

(assert (=> bs!1238401 (not (= lambda!273671 lambda!273587))))

(declare-fun bs!1238402 () Bool)

(assert (= bs!1238402 (and d!1713801 d!1713721)))

(assert (=> bs!1238402 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177284 (regTwo!30542 r!7292))) (= lambda!273671 lambda!273648))))

(assert (=> bs!1238401 (= lambda!273671 lambda!273588)))

(assert (=> bs!1238402 (not (= lambda!273671 lambda!273649))))

(assert (=> bs!1238401 (not (= lambda!273671 lambda!273589))))

(assert (=> bs!1238401 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 (regOne!30542 r!7292))) (= lt!2177284 lt!2177299)) (= lambda!273671 lambda!273586))))

(assert (=> bs!1238400 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177284 (regTwo!30542 r!7292))) (= lambda!273671 lambda!273583))))

(declare-fun bs!1238404 () Bool)

(assert (= bs!1238404 (and d!1713801 d!1713705)))

(assert (=> bs!1238404 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177284 (regTwo!30542 r!7292))) (= lambda!273671 lambda!273641))))

(assert (=> d!1713801 true))

(assert (=> d!1713801 true))

(assert (=> d!1713801 true))

(declare-fun lambda!273672 () Int)

(assert (=> bs!1238400 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177284 (regTwo!30542 r!7292))) (= lambda!273672 lambda!273584))))

(assert (=> bs!1238401 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 (regOne!30542 r!7292))) (= lt!2177284 lt!2177299)) (= lambda!273672 lambda!273587))))

(assert (=> bs!1238402 (not (= lambda!273672 lambda!273648))))

(assert (=> bs!1238401 (not (= lambda!273672 lambda!273588))))

(declare-fun bs!1238408 () Bool)

(assert (= bs!1238408 d!1713801))

(assert (=> bs!1238408 (not (= lambda!273672 lambda!273671))))

(assert (=> bs!1238402 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177284 (regTwo!30542 r!7292))) (= lambda!273672 lambda!273649))))

(assert (=> bs!1238401 (= lambda!273672 lambda!273589)))

(assert (=> bs!1238401 (not (= lambda!273672 lambda!273586))))

(assert (=> bs!1238400 (not (= lambda!273672 lambda!273583))))

(assert (=> bs!1238404 (not (= lambda!273672 lambda!273641))))

(assert (=> d!1713801 true))

(assert (=> d!1713801 true))

(assert (=> d!1713801 true))

(assert (=> d!1713801 (= (Exists!2196 lambda!273671) (Exists!2196 lambda!273672))))

(declare-fun lt!2177453 () Unit!153578)

(assert (=> d!1713801 (= lt!2177453 (choose!40027 (regTwo!30542 (regOne!30542 r!7292)) lt!2177284 s!2326))))

(assert (=> d!1713801 (validRegex!6751 (regTwo!30542 (regOne!30542 r!7292)))))

(assert (=> d!1713801 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!850 (regTwo!30542 (regOne!30542 r!7292)) lt!2177284 s!2326) lt!2177453)))

(declare-fun m!6372800 () Bool)

(assert (=> bs!1238408 m!6372800))

(declare-fun m!6372802 () Bool)

(assert (=> bs!1238408 m!6372802))

(declare-fun m!6372804 () Bool)

(assert (=> bs!1238408 m!6372804))

(declare-fun m!6372806 () Bool)

(assert (=> bs!1238408 m!6372806))

(assert (=> b!5339668 d!1713801))

(declare-fun bs!1238418 () Bool)

(declare-fun d!1713807 () Bool)

(assert (= bs!1238418 (and d!1713807 d!1713655)))

(declare-fun lambda!273674 () Int)

(assert (=> bs!1238418 (= lambda!273674 lambda!273618)))

(declare-fun bs!1238419 () Bool)

(assert (= bs!1238419 (and d!1713807 d!1713689)))

(assert (=> bs!1238419 (= lambda!273674 lambda!273630)))

(declare-fun bs!1238420 () Bool)

(assert (= bs!1238420 (and d!1713807 d!1713663)))

(assert (=> bs!1238420 (= lambda!273674 lambda!273619)))

(declare-fun bs!1238421 () Bool)

(assert (= bs!1238421 (and d!1713807 d!1713643)))

(assert (=> bs!1238421 (= lambda!273674 lambda!273611)))

(declare-fun bs!1238422 () Bool)

(assert (= bs!1238422 (and d!1713807 d!1713623)))

(assert (=> bs!1238422 (= lambda!273674 lambda!273607)))

(declare-fun e!3316146 () Bool)

(assert (=> d!1713807 e!3316146))

(declare-fun res!2265257 () Bool)

(assert (=> d!1713807 (=> (not res!2265257) (not e!3316146))))

(declare-fun lt!2177454 () Regex!15015)

(assert (=> d!1713807 (= res!2265257 (validRegex!6751 lt!2177454))))

(declare-fun e!3316143 () Regex!15015)

(assert (=> d!1713807 (= lt!2177454 e!3316143)))

(declare-fun c!929311 () Bool)

(declare-fun e!3316145 () Bool)

(assert (=> d!1713807 (= c!929311 e!3316145)))

(declare-fun res!2265258 () Bool)

(assert (=> d!1713807 (=> (not res!2265258) (not e!3316145))))

(assert (=> d!1713807 (= res!2265258 ((_ is Cons!61220) lt!2177312))))

(assert (=> d!1713807 (forall!14440 lt!2177312 lambda!273674)))

(assert (=> d!1713807 (= (generalisedConcat!684 lt!2177312) lt!2177454)))

(declare-fun b!5340343 () Bool)

(assert (=> b!5340343 (= e!3316143 (h!67668 lt!2177312))))

(declare-fun b!5340344 () Bool)

(declare-fun e!3316144 () Regex!15015)

(assert (=> b!5340344 (= e!3316143 e!3316144)))

(declare-fun c!929312 () Bool)

(assert (=> b!5340344 (= c!929312 ((_ is Cons!61220) lt!2177312))))

(declare-fun b!5340345 () Bool)

(declare-fun e!3316141 () Bool)

(assert (=> b!5340345 (= e!3316141 (isEmptyExpr!901 lt!2177454))))

(declare-fun b!5340346 () Bool)

(assert (=> b!5340346 (= e!3316144 (Concat!23860 (h!67668 lt!2177312) (generalisedConcat!684 (t!374561 lt!2177312))))))

(declare-fun b!5340347 () Bool)

(assert (=> b!5340347 (= e!3316146 e!3316141)))

(declare-fun c!929313 () Bool)

(assert (=> b!5340347 (= c!929313 (isEmpty!33195 lt!2177312))))

(declare-fun b!5340348 () Bool)

(declare-fun e!3316142 () Bool)

(assert (=> b!5340348 (= e!3316142 (isConcat!424 lt!2177454))))

(declare-fun b!5340349 () Bool)

(assert (=> b!5340349 (= e!3316145 (isEmpty!33195 (t!374561 lt!2177312)))))

(declare-fun b!5340350 () Bool)

(assert (=> b!5340350 (= e!3316141 e!3316142)))

(declare-fun c!929310 () Bool)

(assert (=> b!5340350 (= c!929310 (isEmpty!33195 (tail!10547 lt!2177312)))))

(declare-fun b!5340351 () Bool)

(assert (=> b!5340351 (= e!3316144 EmptyExpr!15015)))

(declare-fun b!5340352 () Bool)

(assert (=> b!5340352 (= e!3316142 (= lt!2177454 (head!11450 lt!2177312)))))

(assert (= (and d!1713807 res!2265258) b!5340349))

(assert (= (and d!1713807 c!929311) b!5340343))

(assert (= (and d!1713807 (not c!929311)) b!5340344))

(assert (= (and b!5340344 c!929312) b!5340346))

(assert (= (and b!5340344 (not c!929312)) b!5340351))

(assert (= (and d!1713807 res!2265257) b!5340347))

(assert (= (and b!5340347 c!929313) b!5340345))

(assert (= (and b!5340347 (not c!929313)) b!5340350))

(assert (= (and b!5340350 c!929310) b!5340352))

(assert (= (and b!5340350 (not c!929310)) b!5340348))

(declare-fun m!6372808 () Bool)

(assert (=> d!1713807 m!6372808))

(declare-fun m!6372810 () Bool)

(assert (=> d!1713807 m!6372810))

(declare-fun m!6372812 () Bool)

(assert (=> b!5340352 m!6372812))

(declare-fun m!6372814 () Bool)

(assert (=> b!5340349 m!6372814))

(declare-fun m!6372816 () Bool)

(assert (=> b!5340348 m!6372816))

(declare-fun m!6372818 () Bool)

(assert (=> b!5340350 m!6372818))

(assert (=> b!5340350 m!6372818))

(declare-fun m!6372820 () Bool)

(assert (=> b!5340350 m!6372820))

(declare-fun m!6372822 () Bool)

(assert (=> b!5340347 m!6372822))

(declare-fun m!6372824 () Bool)

(assert (=> b!5340345 m!6372824))

(declare-fun m!6372826 () Bool)

(assert (=> b!5340346 m!6372826))

(assert (=> b!5339668 d!1713807))

(declare-fun bs!1238427 () Bool)

(declare-fun d!1713809 () Bool)

(assert (= bs!1238427 (and d!1713809 b!5339645)))

(declare-fun lambda!273676 () Int)

(assert (=> bs!1238427 (not (= lambda!273676 lambda!273584))))

(declare-fun bs!1238429 () Bool)

(assert (= bs!1238429 (and d!1713809 b!5339668)))

(assert (=> bs!1238429 (not (= lambda!273676 lambda!273587))))

(declare-fun bs!1238431 () Bool)

(assert (= bs!1238431 (and d!1713809 d!1713721)))

(assert (=> bs!1238431 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177284 (regTwo!30542 r!7292))) (= lambda!273676 lambda!273648))))

(assert (=> bs!1238429 (= lambda!273676 lambda!273588)))

(declare-fun bs!1238434 () Bool)

(assert (= bs!1238434 (and d!1713809 d!1713801)))

(assert (=> bs!1238434 (not (= lambda!273676 lambda!273672))))

(assert (=> bs!1238434 (= lambda!273676 lambda!273671)))

(assert (=> bs!1238431 (not (= lambda!273676 lambda!273649))))

(assert (=> bs!1238429 (not (= lambda!273676 lambda!273589))))

(assert (=> bs!1238429 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 (regOne!30542 r!7292))) (= lt!2177284 lt!2177299)) (= lambda!273676 lambda!273586))))

(assert (=> bs!1238427 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177284 (regTwo!30542 r!7292))) (= lambda!273676 lambda!273583))))

(declare-fun bs!1238440 () Bool)

(assert (= bs!1238440 (and d!1713809 d!1713705)))

(assert (=> bs!1238440 (= (and (= (regTwo!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177284 (regTwo!30542 r!7292))) (= lambda!273676 lambda!273641))))

(assert (=> d!1713809 true))

(assert (=> d!1713809 true))

(assert (=> d!1713809 true))

(assert (=> d!1713809 (= (isDefined!11829 (findConcatSeparation!1540 (regTwo!30542 (regOne!30542 r!7292)) lt!2177284 Nil!61222 s!2326 s!2326)) (Exists!2196 lambda!273676))))

(declare-fun lt!2177455 () Unit!153578)

(assert (=> d!1713809 (= lt!2177455 (choose!40026 (regTwo!30542 (regOne!30542 r!7292)) lt!2177284 s!2326))))

(assert (=> d!1713809 (validRegex!6751 (regTwo!30542 (regOne!30542 r!7292)))))

(assert (=> d!1713809 (= (lemmaFindConcatSeparationEquivalentToExists!1304 (regTwo!30542 (regOne!30542 r!7292)) lt!2177284 s!2326) lt!2177455)))

(declare-fun bs!1238442 () Bool)

(assert (= bs!1238442 d!1713809))

(declare-fun m!6372828 () Bool)

(assert (=> bs!1238442 m!6372828))

(declare-fun m!6372830 () Bool)

(assert (=> bs!1238442 m!6372830))

(assert (=> bs!1238442 m!6372158))

(assert (=> bs!1238442 m!6372172))

(assert (=> bs!1238442 m!6372158))

(assert (=> bs!1238442 m!6372806))

(assert (=> b!5339668 d!1713809))

(declare-fun d!1713811 () Bool)

(assert (=> d!1713811 (= (matchR!7200 lt!2177300 s!2326) (matchRSpec!2118 lt!2177300 s!2326))))

(declare-fun lt!2177460 () Unit!153578)

(declare-fun choose!40031 (Regex!15015 List!61346) Unit!153578)

(assert (=> d!1713811 (= lt!2177460 (choose!40031 lt!2177300 s!2326))))

(assert (=> d!1713811 (validRegex!6751 lt!2177300)))

(assert (=> d!1713811 (= (mainMatchTheorem!2118 lt!2177300 s!2326) lt!2177460)))

(declare-fun bs!1238444 () Bool)

(assert (= bs!1238444 d!1713811))

(assert (=> bs!1238444 m!6372184))

(assert (=> bs!1238444 m!6372170))

(declare-fun m!6372852 () Bool)

(assert (=> bs!1238444 m!6372852))

(declare-fun m!6372854 () Bool)

(assert (=> bs!1238444 m!6372854))

(assert (=> b!5339668 d!1713811))

(declare-fun d!1713821 () Bool)

(assert (=> d!1713821 (= (matchR!7200 lt!2177300 s!2326) (matchZipper!1259 lt!2177311 s!2326))))

(declare-fun lt!2177463 () Unit!153578)

(declare-fun choose!40032 ((InoxSet Context!8798) List!61345 Regex!15015 List!61346) Unit!153578)

(assert (=> d!1713821 (= lt!2177463 (choose!40032 lt!2177311 lt!2177297 lt!2177300 s!2326))))

(assert (=> d!1713821 (validRegex!6751 lt!2177300)))

(assert (=> d!1713821 (= (theoremZipperRegexEquiv!413 lt!2177311 lt!2177297 lt!2177300 s!2326) lt!2177463)))

(declare-fun bs!1238450 () Bool)

(assert (= bs!1238450 d!1713821))

(assert (=> bs!1238450 m!6372184))

(assert (=> bs!1238450 m!6372194))

(declare-fun m!6372858 () Bool)

(assert (=> bs!1238450 m!6372858))

(assert (=> bs!1238450 m!6372854))

(assert (=> b!5339668 d!1713821))

(declare-fun bs!1238451 () Bool)

(declare-fun d!1713825 () Bool)

(assert (= bs!1238451 (and d!1713825 b!5339645)))

(declare-fun lambda!273680 () Int)

(assert (=> bs!1238451 (not (= lambda!273680 lambda!273584))))

(declare-fun bs!1238452 () Bool)

(assert (= bs!1238452 (and d!1713825 b!5339668)))

(assert (=> bs!1238452 (not (= lambda!273680 lambda!273587))))

(declare-fun bs!1238453 () Bool)

(assert (= bs!1238453 (and d!1713825 d!1713721)))

(assert (=> bs!1238453 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177299 (regTwo!30542 r!7292))) (= lambda!273680 lambda!273648))))

(assert (=> bs!1238452 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regTwo!30542 (regOne!30542 r!7292))) (= lt!2177299 lt!2177284)) (= lambda!273680 lambda!273588))))

(declare-fun bs!1238454 () Bool)

(assert (= bs!1238454 (and d!1713825 d!1713801)))

(assert (=> bs!1238454 (not (= lambda!273680 lambda!273672))))

(declare-fun bs!1238455 () Bool)

(assert (= bs!1238455 (and d!1713825 d!1713809)))

(assert (=> bs!1238455 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regTwo!30542 (regOne!30542 r!7292))) (= lt!2177299 lt!2177284)) (= lambda!273680 lambda!273676))))

(assert (=> bs!1238454 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regTwo!30542 (regOne!30542 r!7292))) (= lt!2177299 lt!2177284)) (= lambda!273680 lambda!273671))))

(assert (=> bs!1238453 (not (= lambda!273680 lambda!273649))))

(assert (=> bs!1238452 (not (= lambda!273680 lambda!273589))))

(assert (=> bs!1238452 (= lambda!273680 lambda!273586)))

(assert (=> bs!1238451 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177299 (regTwo!30542 r!7292))) (= lambda!273680 lambda!273583))))

(declare-fun bs!1238456 () Bool)

(assert (= bs!1238456 (and d!1713825 d!1713705)))

(assert (=> bs!1238456 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177299 (regTwo!30542 r!7292))) (= lambda!273680 lambda!273641))))

(assert (=> d!1713825 true))

(assert (=> d!1713825 true))

(assert (=> d!1713825 true))

(assert (=> d!1713825 (= (isDefined!11829 (findConcatSeparation!1540 (regOne!30542 (regOne!30542 r!7292)) lt!2177299 Nil!61222 s!2326 s!2326)) (Exists!2196 lambda!273680))))

(declare-fun lt!2177464 () Unit!153578)

(assert (=> d!1713825 (= lt!2177464 (choose!40026 (regOne!30542 (regOne!30542 r!7292)) lt!2177299 s!2326))))

(assert (=> d!1713825 (validRegex!6751 (regOne!30542 (regOne!30542 r!7292)))))

(assert (=> d!1713825 (= (lemmaFindConcatSeparationEquivalentToExists!1304 (regOne!30542 (regOne!30542 r!7292)) lt!2177299 s!2326) lt!2177464)))

(declare-fun bs!1238457 () Bool)

(assert (= bs!1238457 d!1713825))

(declare-fun m!6372860 () Bool)

(assert (=> bs!1238457 m!6372860))

(declare-fun m!6372862 () Bool)

(assert (=> bs!1238457 m!6372862))

(assert (=> bs!1238457 m!6372180))

(assert (=> bs!1238457 m!6372196))

(assert (=> bs!1238457 m!6372180))

(declare-fun m!6372864 () Bool)

(assert (=> bs!1238457 m!6372864))

(assert (=> b!5339668 d!1713825))

(declare-fun d!1713827 () Bool)

(assert (=> d!1713827 (= (Exists!2196 lambda!273586) (choose!40025 lambda!273586))))

(declare-fun bs!1238458 () Bool)

(assert (= bs!1238458 d!1713827))

(declare-fun m!6372866 () Bool)

(assert (=> bs!1238458 m!6372866))

(assert (=> b!5339668 d!1713827))

(declare-fun d!1713829 () Bool)

(declare-fun c!929333 () Bool)

(declare-fun isEmpty!33200 (List!61346) Bool)

(assert (=> d!1713829 (= c!929333 (isEmpty!33200 s!2326))))

(declare-fun e!3316181 () Bool)

(assert (=> d!1713829 (= (matchZipper!1259 lt!2177311 s!2326) e!3316181)))

(declare-fun b!5340410 () Bool)

(declare-fun nullableZipper!1366 ((InoxSet Context!8798)) Bool)

(assert (=> b!5340410 (= e!3316181 (nullableZipper!1366 lt!2177311))))

(declare-fun b!5340411 () Bool)

(declare-fun head!11451 (List!61346) C!30300)

(declare-fun tail!10548 (List!61346) List!61346)

(assert (=> b!5340411 (= e!3316181 (matchZipper!1259 (derivationStepZipper!1256 lt!2177311 (head!11451 s!2326)) (tail!10548 s!2326)))))

(assert (= (and d!1713829 c!929333) b!5340410))

(assert (= (and d!1713829 (not c!929333)) b!5340411))

(declare-fun m!6372884 () Bool)

(assert (=> d!1713829 m!6372884))

(declare-fun m!6372888 () Bool)

(assert (=> b!5340410 m!6372888))

(declare-fun m!6372892 () Bool)

(assert (=> b!5340411 m!6372892))

(assert (=> b!5340411 m!6372892))

(declare-fun m!6372894 () Bool)

(assert (=> b!5340411 m!6372894))

(declare-fun m!6372896 () Bool)

(assert (=> b!5340411 m!6372896))

(assert (=> b!5340411 m!6372894))

(assert (=> b!5340411 m!6372896))

(declare-fun m!6372898 () Bool)

(assert (=> b!5340411 m!6372898))

(assert (=> b!5339668 d!1713829))

(declare-fun b!5340412 () Bool)

(declare-fun res!2265280 () Bool)

(declare-fun e!3316183 () Bool)

(assert (=> b!5340412 (=> (not res!2265280) (not e!3316183))))

(declare-fun lt!2177470 () Option!15126)

(assert (=> b!5340412 (= res!2265280 (matchR!7200 lt!2177284 (_2!35517 (get!21059 lt!2177470))))))

(declare-fun b!5340413 () Bool)

(declare-fun e!3316185 () Bool)

(assert (=> b!5340413 (= e!3316185 (not (isDefined!11829 lt!2177470)))))

(declare-fun b!5340414 () Bool)

(declare-fun e!3316184 () Option!15126)

(assert (=> b!5340414 (= e!3316184 (Some!15125 (tuple2!64429 Nil!61222 s!2326)))))

(declare-fun d!1713833 () Bool)

(assert (=> d!1713833 e!3316185))

(declare-fun res!2265279 () Bool)

(assert (=> d!1713833 (=> res!2265279 e!3316185)))

(assert (=> d!1713833 (= res!2265279 e!3316183)))

(declare-fun res!2265282 () Bool)

(assert (=> d!1713833 (=> (not res!2265282) (not e!3316183))))

(assert (=> d!1713833 (= res!2265282 (isDefined!11829 lt!2177470))))

(assert (=> d!1713833 (= lt!2177470 e!3316184)))

(declare-fun c!929335 () Bool)

(declare-fun e!3316186 () Bool)

(assert (=> d!1713833 (= c!929335 e!3316186)))

(declare-fun res!2265281 () Bool)

(assert (=> d!1713833 (=> (not res!2265281) (not e!3316186))))

(assert (=> d!1713833 (= res!2265281 (matchR!7200 (regTwo!30542 (regOne!30542 r!7292)) Nil!61222))))

(assert (=> d!1713833 (validRegex!6751 (regTwo!30542 (regOne!30542 r!7292)))))

(assert (=> d!1713833 (= (findConcatSeparation!1540 (regTwo!30542 (regOne!30542 r!7292)) lt!2177284 Nil!61222 s!2326 s!2326) lt!2177470)))

(declare-fun b!5340415 () Bool)

(declare-fun lt!2177469 () Unit!153578)

(declare-fun lt!2177468 () Unit!153578)

(assert (=> b!5340415 (= lt!2177469 lt!2177468)))

(assert (=> b!5340415 (= (++!13346 (++!13346 Nil!61222 (Cons!61222 (h!67670 s!2326) Nil!61222)) (t!374563 s!2326)) s!2326)))

(assert (=> b!5340415 (= lt!2177468 (lemmaMoveElementToOtherListKeepsConcatEq!1761 Nil!61222 (h!67670 s!2326) (t!374563 s!2326) s!2326))))

(declare-fun e!3316182 () Option!15126)

(assert (=> b!5340415 (= e!3316182 (findConcatSeparation!1540 (regTwo!30542 (regOne!30542 r!7292)) lt!2177284 (++!13346 Nil!61222 (Cons!61222 (h!67670 s!2326) Nil!61222)) (t!374563 s!2326) s!2326))))

(declare-fun b!5340416 () Bool)

(assert (=> b!5340416 (= e!3316183 (= (++!13346 (_1!35517 (get!21059 lt!2177470)) (_2!35517 (get!21059 lt!2177470))) s!2326))))

(declare-fun b!5340417 () Bool)

(declare-fun res!2265278 () Bool)

(assert (=> b!5340417 (=> (not res!2265278) (not e!3316183))))

(assert (=> b!5340417 (= res!2265278 (matchR!7200 (regTwo!30542 (regOne!30542 r!7292)) (_1!35517 (get!21059 lt!2177470))))))

(declare-fun b!5340418 () Bool)

(assert (=> b!5340418 (= e!3316186 (matchR!7200 lt!2177284 s!2326))))

(declare-fun b!5340419 () Bool)

(assert (=> b!5340419 (= e!3316182 None!15125)))

(declare-fun b!5340420 () Bool)

(assert (=> b!5340420 (= e!3316184 e!3316182)))

(declare-fun c!929334 () Bool)

(assert (=> b!5340420 (= c!929334 ((_ is Nil!61222) s!2326))))

(assert (= (and d!1713833 res!2265281) b!5340418))

(assert (= (and d!1713833 c!929335) b!5340414))

(assert (= (and d!1713833 (not c!929335)) b!5340420))

(assert (= (and b!5340420 c!929334) b!5340419))

(assert (= (and b!5340420 (not c!929334)) b!5340415))

(assert (= (and d!1713833 res!2265282) b!5340417))

(assert (= (and b!5340417 res!2265278) b!5340412))

(assert (= (and b!5340412 res!2265280) b!5340416))

(assert (= (and d!1713833 (not res!2265279)) b!5340413))

(declare-fun m!6372900 () Bool)

(assert (=> b!5340418 m!6372900))

(declare-fun m!6372902 () Bool)

(assert (=> d!1713833 m!6372902))

(declare-fun m!6372904 () Bool)

(assert (=> d!1713833 m!6372904))

(assert (=> d!1713833 m!6372806))

(assert (=> b!5340415 m!6372518))

(assert (=> b!5340415 m!6372518))

(assert (=> b!5340415 m!6372520))

(assert (=> b!5340415 m!6372522))

(assert (=> b!5340415 m!6372518))

(declare-fun m!6372906 () Bool)

(assert (=> b!5340415 m!6372906))

(declare-fun m!6372908 () Bool)

(assert (=> b!5340416 m!6372908))

(declare-fun m!6372910 () Bool)

(assert (=> b!5340416 m!6372910))

(assert (=> b!5340413 m!6372902))

(assert (=> b!5340417 m!6372908))

(declare-fun m!6372912 () Bool)

(assert (=> b!5340417 m!6372912))

(assert (=> b!5340412 m!6372908))

(declare-fun m!6372914 () Bool)

(assert (=> b!5340412 m!6372914))

(assert (=> b!5339668 d!1713833))

(declare-fun b!5340483 () Bool)

(declare-fun e!3316222 () Bool)

(declare-fun e!3316223 () Bool)

(assert (=> b!5340483 (= e!3316222 e!3316223)))

(declare-fun res!2265312 () Bool)

(assert (=> b!5340483 (=> (not res!2265312) (not e!3316223))))

(declare-fun lt!2177479 () Bool)

(assert (=> b!5340483 (= res!2265312 (not lt!2177479))))

(declare-fun b!5340484 () Bool)

(declare-fun e!3316224 () Bool)

(assert (=> b!5340484 (= e!3316224 (= (head!11451 s!2326) (c!929081 lt!2177299)))))

(declare-fun b!5340485 () Bool)

(declare-fun e!3316220 () Bool)

(assert (=> b!5340485 (= e!3316220 (not (= (head!11451 s!2326) (c!929081 lt!2177299))))))

(declare-fun b!5340486 () Bool)

(assert (=> b!5340486 (= e!3316223 e!3316220)))

(declare-fun res!2265309 () Bool)

(assert (=> b!5340486 (=> res!2265309 e!3316220)))

(declare-fun call!381802 () Bool)

(assert (=> b!5340486 (= res!2265309 call!381802)))

(declare-fun d!1713835 () Bool)

(declare-fun e!3316219 () Bool)

(assert (=> d!1713835 e!3316219))

(declare-fun c!929351 () Bool)

(assert (=> d!1713835 (= c!929351 ((_ is EmptyExpr!15015) lt!2177299))))

(declare-fun e!3316225 () Bool)

(assert (=> d!1713835 (= lt!2177479 e!3316225)))

(declare-fun c!929350 () Bool)

(assert (=> d!1713835 (= c!929350 (isEmpty!33200 s!2326))))

(assert (=> d!1713835 (validRegex!6751 lt!2177299)))

(assert (=> d!1713835 (= (matchR!7200 lt!2177299 s!2326) lt!2177479)))

(declare-fun b!5340487 () Bool)

(declare-fun e!3316221 () Bool)

(assert (=> b!5340487 (= e!3316221 (not lt!2177479))))

(declare-fun b!5340488 () Bool)

(declare-fun res!2265311 () Bool)

(assert (=> b!5340488 (=> (not res!2265311) (not e!3316224))))

(assert (=> b!5340488 (= res!2265311 (not call!381802))))

(declare-fun b!5340489 () Bool)

(declare-fun res!2265314 () Bool)

(assert (=> b!5340489 (=> res!2265314 e!3316222)))

(assert (=> b!5340489 (= res!2265314 (not ((_ is ElementMatch!15015) lt!2177299)))))

(assert (=> b!5340489 (= e!3316221 e!3316222)))

(declare-fun b!5340490 () Bool)

(declare-fun res!2265308 () Bool)

(assert (=> b!5340490 (=> res!2265308 e!3316220)))

(assert (=> b!5340490 (= res!2265308 (not (isEmpty!33200 (tail!10548 s!2326))))))

(declare-fun b!5340491 () Bool)

(assert (=> b!5340491 (= e!3316225 (nullable!5184 lt!2177299))))

(declare-fun b!5340492 () Bool)

(assert (=> b!5340492 (= e!3316219 (= lt!2177479 call!381802))))

(declare-fun b!5340493 () Bool)

(declare-fun res!2265313 () Bool)

(assert (=> b!5340493 (=> res!2265313 e!3316222)))

(assert (=> b!5340493 (= res!2265313 e!3316224)))

(declare-fun res!2265310 () Bool)

(assert (=> b!5340493 (=> (not res!2265310) (not e!3316224))))

(assert (=> b!5340493 (= res!2265310 lt!2177479)))

(declare-fun bm!381797 () Bool)

(assert (=> bm!381797 (= call!381802 (isEmpty!33200 s!2326))))

(declare-fun b!5340494 () Bool)

(declare-fun res!2265307 () Bool)

(assert (=> b!5340494 (=> (not res!2265307) (not e!3316224))))

(assert (=> b!5340494 (= res!2265307 (isEmpty!33200 (tail!10548 s!2326)))))

(declare-fun b!5340495 () Bool)

(assert (=> b!5340495 (= e!3316219 e!3316221)))

(declare-fun c!929352 () Bool)

(assert (=> b!5340495 (= c!929352 ((_ is EmptyLang!15015) lt!2177299))))

(declare-fun b!5340496 () Bool)

(declare-fun derivativeStep!4187 (Regex!15015 C!30300) Regex!15015)

(assert (=> b!5340496 (= e!3316225 (matchR!7200 (derivativeStep!4187 lt!2177299 (head!11451 s!2326)) (tail!10548 s!2326)))))

(assert (= (and d!1713835 c!929350) b!5340491))

(assert (= (and d!1713835 (not c!929350)) b!5340496))

(assert (= (and d!1713835 c!929351) b!5340492))

(assert (= (and d!1713835 (not c!929351)) b!5340495))

(assert (= (and b!5340495 c!929352) b!5340487))

(assert (= (and b!5340495 (not c!929352)) b!5340489))

(assert (= (and b!5340489 (not res!2265314)) b!5340493))

(assert (= (and b!5340493 res!2265310) b!5340488))

(assert (= (and b!5340488 res!2265311) b!5340494))

(assert (= (and b!5340494 res!2265307) b!5340484))

(assert (= (and b!5340493 (not res!2265313)) b!5340483))

(assert (= (and b!5340483 res!2265312) b!5340486))

(assert (= (and b!5340486 (not res!2265309)) b!5340490))

(assert (= (and b!5340490 (not res!2265308)) b!5340485))

(assert (= (or b!5340492 b!5340486 b!5340488) bm!381797))

(assert (=> bm!381797 m!6372884))

(assert (=> b!5340484 m!6372892))

(assert (=> b!5340494 m!6372896))

(assert (=> b!5340494 m!6372896))

(declare-fun m!6372948 () Bool)

(assert (=> b!5340494 m!6372948))

(declare-fun m!6372950 () Bool)

(assert (=> b!5340491 m!6372950))

(assert (=> b!5340490 m!6372896))

(assert (=> b!5340490 m!6372896))

(assert (=> b!5340490 m!6372948))

(assert (=> d!1713835 m!6372884))

(declare-fun m!6372952 () Bool)

(assert (=> d!1713835 m!6372952))

(assert (=> b!5340485 m!6372892))

(assert (=> b!5340496 m!6372892))

(assert (=> b!5340496 m!6372892))

(declare-fun m!6372954 () Bool)

(assert (=> b!5340496 m!6372954))

(assert (=> b!5340496 m!6372896))

(assert (=> b!5340496 m!6372954))

(assert (=> b!5340496 m!6372896))

(declare-fun m!6372956 () Bool)

(assert (=> b!5340496 m!6372956))

(assert (=> b!5339668 d!1713835))

(declare-fun d!1713849 () Bool)

(assert (=> d!1713849 (= (Exists!2196 lambda!273589) (choose!40025 lambda!273589))))

(declare-fun bs!1238478 () Bool)

(assert (= bs!1238478 d!1713849))

(declare-fun m!6372958 () Bool)

(assert (=> bs!1238478 m!6372958))

(assert (=> b!5339668 d!1713849))

(declare-fun bs!1238481 () Bool)

(declare-fun b!5340579 () Bool)

(assert (= bs!1238481 (and b!5340579 b!5339645)))

(declare-fun lambda!273692 () Int)

(assert (=> bs!1238481 (not (= lambda!273692 lambda!273584))))

(declare-fun bs!1238482 () Bool)

(assert (= bs!1238482 (and b!5340579 b!5339668)))

(assert (=> bs!1238482 (not (= lambda!273692 lambda!273587))))

(declare-fun bs!1238483 () Bool)

(assert (= bs!1238483 (and b!5340579 d!1713721)))

(assert (=> bs!1238483 (not (= lambda!273692 lambda!273648))))

(declare-fun bs!1238484 () Bool)

(assert (= bs!1238484 (and b!5340579 d!1713825)))

(assert (=> bs!1238484 (not (= lambda!273692 lambda!273680))))

(assert (=> bs!1238482 (not (= lambda!273692 lambda!273588))))

(declare-fun bs!1238485 () Bool)

(assert (= bs!1238485 (and b!5340579 d!1713801)))

(assert (=> bs!1238485 (not (= lambda!273692 lambda!273672))))

(declare-fun bs!1238486 () Bool)

(assert (= bs!1238486 (and b!5340579 d!1713809)))

(assert (=> bs!1238486 (not (= lambda!273692 lambda!273676))))

(assert (=> bs!1238485 (not (= lambda!273692 lambda!273671))))

(assert (=> bs!1238483 (not (= lambda!273692 lambda!273649))))

(assert (=> bs!1238482 (not (= lambda!273692 lambda!273589))))

(assert (=> bs!1238482 (not (= lambda!273692 lambda!273586))))

(assert (=> bs!1238481 (not (= lambda!273692 lambda!273583))))

(declare-fun bs!1238487 () Bool)

(assert (= bs!1238487 (and b!5340579 d!1713705)))

(assert (=> bs!1238487 (not (= lambda!273692 lambda!273641))))

(assert (=> b!5340579 true))

(assert (=> b!5340579 true))

(declare-fun bs!1238488 () Bool)

(declare-fun b!5340575 () Bool)

(assert (= bs!1238488 (and b!5340575 b!5339645)))

(declare-fun lambda!273693 () Int)

(assert (=> bs!1238488 (= (and (= (regOne!30542 lt!2177299) (regOne!30542 r!7292)) (= (regTwo!30542 lt!2177299) (regTwo!30542 r!7292))) (= lambda!273693 lambda!273584))))

(declare-fun bs!1238489 () Bool)

(assert (= bs!1238489 (and b!5340575 b!5339668)))

(assert (=> bs!1238489 (= (and (= (regOne!30542 lt!2177299) (regOne!30542 (regOne!30542 r!7292))) (= (regTwo!30542 lt!2177299) lt!2177299)) (= lambda!273693 lambda!273587))))

(declare-fun bs!1238490 () Bool)

(assert (= bs!1238490 (and b!5340575 d!1713721)))

(assert (=> bs!1238490 (not (= lambda!273693 lambda!273648))))

(declare-fun bs!1238491 () Bool)

(assert (= bs!1238491 (and b!5340575 d!1713825)))

(assert (=> bs!1238491 (not (= lambda!273693 lambda!273680))))

(assert (=> bs!1238489 (not (= lambda!273693 lambda!273588))))

(declare-fun bs!1238492 () Bool)

(assert (= bs!1238492 (and b!5340575 d!1713801)))

(assert (=> bs!1238492 (= (and (= (regOne!30542 lt!2177299) (regTwo!30542 (regOne!30542 r!7292))) (= (regTwo!30542 lt!2177299) lt!2177284)) (= lambda!273693 lambda!273672))))

(declare-fun bs!1238493 () Bool)

(assert (= bs!1238493 (and b!5340575 d!1713809)))

(assert (=> bs!1238493 (not (= lambda!273693 lambda!273676))))

(assert (=> bs!1238492 (not (= lambda!273693 lambda!273671))))

(assert (=> bs!1238490 (= (and (= (regOne!30542 lt!2177299) (regOne!30542 r!7292)) (= (regTwo!30542 lt!2177299) (regTwo!30542 r!7292))) (= lambda!273693 lambda!273649))))

(declare-fun bs!1238494 () Bool)

(assert (= bs!1238494 (and b!5340575 b!5340579)))

(assert (=> bs!1238494 (not (= lambda!273693 lambda!273692))))

(assert (=> bs!1238489 (= (and (= (regOne!30542 lt!2177299) (regTwo!30542 (regOne!30542 r!7292))) (= (regTwo!30542 lt!2177299) lt!2177284)) (= lambda!273693 lambda!273589))))

(assert (=> bs!1238489 (not (= lambda!273693 lambda!273586))))

(assert (=> bs!1238488 (not (= lambda!273693 lambda!273583))))

(declare-fun bs!1238495 () Bool)

(assert (= bs!1238495 (and b!5340575 d!1713705)))

(assert (=> bs!1238495 (not (= lambda!273693 lambda!273641))))

(assert (=> b!5340575 true))

(assert (=> b!5340575 true))

(declare-fun b!5340573 () Bool)

(declare-fun c!929361 () Bool)

(assert (=> b!5340573 (= c!929361 ((_ is ElementMatch!15015) lt!2177299))))

(declare-fun e!3316265 () Bool)

(declare-fun e!3316270 () Bool)

(assert (=> b!5340573 (= e!3316265 e!3316270)))

(declare-fun d!1713851 () Bool)

(declare-fun c!929364 () Bool)

(assert (=> d!1713851 (= c!929364 ((_ is EmptyExpr!15015) lt!2177299))))

(declare-fun e!3316268 () Bool)

(assert (=> d!1713851 (= (matchRSpec!2118 lt!2177299 s!2326) e!3316268)))

(declare-fun b!5340574 () Bool)

(declare-fun e!3316266 () Bool)

(declare-fun e!3316271 () Bool)

(assert (=> b!5340574 (= e!3316266 e!3316271)))

(declare-fun res!2265333 () Bool)

(assert (=> b!5340574 (= res!2265333 (matchRSpec!2118 (regOne!30543 lt!2177299) s!2326))))

(assert (=> b!5340574 (=> res!2265333 e!3316271)))

(declare-fun e!3316269 () Bool)

(declare-fun call!381808 () Bool)

(assert (=> b!5340575 (= e!3316269 call!381808)))

(declare-fun b!5340576 () Bool)

(declare-fun c!929363 () Bool)

(assert (=> b!5340576 (= c!929363 ((_ is Union!15015) lt!2177299))))

(assert (=> b!5340576 (= e!3316270 e!3316266)))

(declare-fun b!5340577 () Bool)

(assert (=> b!5340577 (= e!3316268 e!3316265)))

(declare-fun res!2265332 () Bool)

(assert (=> b!5340577 (= res!2265332 (not ((_ is EmptyLang!15015) lt!2177299)))))

(assert (=> b!5340577 (=> (not res!2265332) (not e!3316265))))

(declare-fun c!929362 () Bool)

(declare-fun bm!381802 () Bool)

(assert (=> bm!381802 (= call!381808 (Exists!2196 (ite c!929362 lambda!273692 lambda!273693)))))

(declare-fun b!5340578 () Bool)

(declare-fun call!381807 () Bool)

(assert (=> b!5340578 (= e!3316268 call!381807)))

(declare-fun e!3316267 () Bool)

(assert (=> b!5340579 (= e!3316267 call!381808)))

(declare-fun b!5340580 () Bool)

(assert (=> b!5340580 (= e!3316271 (matchRSpec!2118 (regTwo!30543 lt!2177299) s!2326))))

(declare-fun b!5340581 () Bool)

(declare-fun res!2265331 () Bool)

(assert (=> b!5340581 (=> res!2265331 e!3316267)))

(assert (=> b!5340581 (= res!2265331 call!381807)))

(assert (=> b!5340581 (= e!3316269 e!3316267)))

(declare-fun b!5340582 () Bool)

(assert (=> b!5340582 (= e!3316270 (= s!2326 (Cons!61222 (c!929081 lt!2177299) Nil!61222)))))

(declare-fun bm!381803 () Bool)

(assert (=> bm!381803 (= call!381807 (isEmpty!33200 s!2326))))

(declare-fun b!5340583 () Bool)

(assert (=> b!5340583 (= e!3316266 e!3316269)))

(assert (=> b!5340583 (= c!929362 ((_ is Star!15015) lt!2177299))))

(assert (= (and d!1713851 c!929364) b!5340578))

(assert (= (and d!1713851 (not c!929364)) b!5340577))

(assert (= (and b!5340577 res!2265332) b!5340573))

(assert (= (and b!5340573 c!929361) b!5340582))

(assert (= (and b!5340573 (not c!929361)) b!5340576))

(assert (= (and b!5340576 c!929363) b!5340574))

(assert (= (and b!5340576 (not c!929363)) b!5340583))

(assert (= (and b!5340574 (not res!2265333)) b!5340580))

(assert (= (and b!5340583 c!929362) b!5340581))

(assert (= (and b!5340583 (not c!929362)) b!5340575))

(assert (= (and b!5340581 (not res!2265331)) b!5340579))

(assert (= (or b!5340579 b!5340575) bm!381802))

(assert (= (or b!5340578 b!5340581) bm!381803))

(declare-fun m!6372964 () Bool)

(assert (=> b!5340574 m!6372964))

(declare-fun m!6372966 () Bool)

(assert (=> bm!381802 m!6372966))

(declare-fun m!6372968 () Bool)

(assert (=> b!5340580 m!6372968))

(assert (=> bm!381803 m!6372884))

(assert (=> b!5339668 d!1713851))

(declare-fun bs!1238496 () Bool)

(declare-fun b!5340590 () Bool)

(assert (= bs!1238496 (and b!5340590 b!5339645)))

(declare-fun lambda!273694 () Int)

(assert (=> bs!1238496 (not (= lambda!273694 lambda!273584))))

(declare-fun bs!1238497 () Bool)

(assert (= bs!1238497 (and b!5340590 b!5339668)))

(assert (=> bs!1238497 (not (= lambda!273694 lambda!273587))))

(declare-fun bs!1238498 () Bool)

(assert (= bs!1238498 (and b!5340590 d!1713721)))

(assert (=> bs!1238498 (not (= lambda!273694 lambda!273648))))

(declare-fun bs!1238499 () Bool)

(assert (= bs!1238499 (and b!5340590 d!1713825)))

(assert (=> bs!1238499 (not (= lambda!273694 lambda!273680))))

(assert (=> bs!1238497 (not (= lambda!273694 lambda!273588))))

(declare-fun bs!1238500 () Bool)

(assert (= bs!1238500 (and b!5340590 d!1713801)))

(assert (=> bs!1238500 (not (= lambda!273694 lambda!273672))))

(declare-fun bs!1238501 () Bool)

(assert (= bs!1238501 (and b!5340590 d!1713809)))

(assert (=> bs!1238501 (not (= lambda!273694 lambda!273676))))

(assert (=> bs!1238498 (not (= lambda!273694 lambda!273649))))

(declare-fun bs!1238502 () Bool)

(assert (= bs!1238502 (and b!5340590 b!5340579)))

(assert (=> bs!1238502 (= (and (= (reg!15344 lt!2177300) (reg!15344 lt!2177299)) (= lt!2177300 lt!2177299)) (= lambda!273694 lambda!273692))))

(assert (=> bs!1238497 (not (= lambda!273694 lambda!273589))))

(assert (=> bs!1238497 (not (= lambda!273694 lambda!273586))))

(assert (=> bs!1238496 (not (= lambda!273694 lambda!273583))))

(declare-fun bs!1238503 () Bool)

(assert (= bs!1238503 (and b!5340590 d!1713705)))

(assert (=> bs!1238503 (not (= lambda!273694 lambda!273641))))

(assert (=> bs!1238500 (not (= lambda!273694 lambda!273671))))

(declare-fun bs!1238504 () Bool)

(assert (= bs!1238504 (and b!5340590 b!5340575)))

(assert (=> bs!1238504 (not (= lambda!273694 lambda!273693))))

(assert (=> b!5340590 true))

(assert (=> b!5340590 true))

(declare-fun bs!1238505 () Bool)

(declare-fun b!5340586 () Bool)

(assert (= bs!1238505 (and b!5340586 b!5339645)))

(declare-fun lambda!273695 () Int)

(assert (=> bs!1238505 (= (and (= (regOne!30542 lt!2177300) (regOne!30542 r!7292)) (= (regTwo!30542 lt!2177300) (regTwo!30542 r!7292))) (= lambda!273695 lambda!273584))))

(declare-fun bs!1238506 () Bool)

(assert (= bs!1238506 (and b!5340586 b!5339668)))

(assert (=> bs!1238506 (= (and (= (regOne!30542 lt!2177300) (regOne!30542 (regOne!30542 r!7292))) (= (regTwo!30542 lt!2177300) lt!2177299)) (= lambda!273695 lambda!273587))))

(declare-fun bs!1238507 () Bool)

(assert (= bs!1238507 (and b!5340586 d!1713721)))

(assert (=> bs!1238507 (not (= lambda!273695 lambda!273648))))

(declare-fun bs!1238508 () Bool)

(assert (= bs!1238508 (and b!5340586 d!1713825)))

(assert (=> bs!1238508 (not (= lambda!273695 lambda!273680))))

(assert (=> bs!1238506 (not (= lambda!273695 lambda!273588))))

(declare-fun bs!1238509 () Bool)

(assert (= bs!1238509 (and b!5340586 d!1713801)))

(assert (=> bs!1238509 (= (and (= (regOne!30542 lt!2177300) (regTwo!30542 (regOne!30542 r!7292))) (= (regTwo!30542 lt!2177300) lt!2177284)) (= lambda!273695 lambda!273672))))

(declare-fun bs!1238510 () Bool)

(assert (= bs!1238510 (and b!5340586 d!1713809)))

(assert (=> bs!1238510 (not (= lambda!273695 lambda!273676))))

(assert (=> bs!1238507 (= (and (= (regOne!30542 lt!2177300) (regOne!30542 r!7292)) (= (regTwo!30542 lt!2177300) (regTwo!30542 r!7292))) (= lambda!273695 lambda!273649))))

(declare-fun bs!1238511 () Bool)

(assert (= bs!1238511 (and b!5340586 b!5340579)))

(assert (=> bs!1238511 (not (= lambda!273695 lambda!273692))))

(assert (=> bs!1238506 (= (and (= (regOne!30542 lt!2177300) (regTwo!30542 (regOne!30542 r!7292))) (= (regTwo!30542 lt!2177300) lt!2177284)) (= lambda!273695 lambda!273589))))

(assert (=> bs!1238506 (not (= lambda!273695 lambda!273586))))

(assert (=> bs!1238505 (not (= lambda!273695 lambda!273583))))

(declare-fun bs!1238512 () Bool)

(assert (= bs!1238512 (and b!5340586 d!1713705)))

(assert (=> bs!1238512 (not (= lambda!273695 lambda!273641))))

(declare-fun bs!1238513 () Bool)

(assert (= bs!1238513 (and b!5340586 b!5340590)))

(assert (=> bs!1238513 (not (= lambda!273695 lambda!273694))))

(assert (=> bs!1238509 (not (= lambda!273695 lambda!273671))))

(declare-fun bs!1238514 () Bool)

(assert (= bs!1238514 (and b!5340586 b!5340575)))

(assert (=> bs!1238514 (= (and (= (regOne!30542 lt!2177300) (regOne!30542 lt!2177299)) (= (regTwo!30542 lt!2177300) (regTwo!30542 lt!2177299))) (= lambda!273695 lambda!273693))))

(assert (=> b!5340586 true))

(assert (=> b!5340586 true))

(declare-fun b!5340584 () Bool)

(declare-fun c!929365 () Bool)

(assert (=> b!5340584 (= c!929365 ((_ is ElementMatch!15015) lt!2177300))))

(declare-fun e!3316272 () Bool)

(declare-fun e!3316277 () Bool)

(assert (=> b!5340584 (= e!3316272 e!3316277)))

(declare-fun d!1713857 () Bool)

(declare-fun c!929368 () Bool)

(assert (=> d!1713857 (= c!929368 ((_ is EmptyExpr!15015) lt!2177300))))

(declare-fun e!3316275 () Bool)

(assert (=> d!1713857 (= (matchRSpec!2118 lt!2177300 s!2326) e!3316275)))

(declare-fun b!5340585 () Bool)

(declare-fun e!3316273 () Bool)

(declare-fun e!3316278 () Bool)

(assert (=> b!5340585 (= e!3316273 e!3316278)))

(declare-fun res!2265336 () Bool)

(assert (=> b!5340585 (= res!2265336 (matchRSpec!2118 (regOne!30543 lt!2177300) s!2326))))

(assert (=> b!5340585 (=> res!2265336 e!3316278)))

(declare-fun e!3316276 () Bool)

(declare-fun call!381810 () Bool)

(assert (=> b!5340586 (= e!3316276 call!381810)))

(declare-fun b!5340587 () Bool)

(declare-fun c!929367 () Bool)

(assert (=> b!5340587 (= c!929367 ((_ is Union!15015) lt!2177300))))

(assert (=> b!5340587 (= e!3316277 e!3316273)))

(declare-fun b!5340588 () Bool)

(assert (=> b!5340588 (= e!3316275 e!3316272)))

(declare-fun res!2265335 () Bool)

(assert (=> b!5340588 (= res!2265335 (not ((_ is EmptyLang!15015) lt!2177300)))))

(assert (=> b!5340588 (=> (not res!2265335) (not e!3316272))))

(declare-fun c!929366 () Bool)

(declare-fun bm!381804 () Bool)

(assert (=> bm!381804 (= call!381810 (Exists!2196 (ite c!929366 lambda!273694 lambda!273695)))))

(declare-fun b!5340589 () Bool)

(declare-fun call!381809 () Bool)

(assert (=> b!5340589 (= e!3316275 call!381809)))

(declare-fun e!3316274 () Bool)

(assert (=> b!5340590 (= e!3316274 call!381810)))

(declare-fun b!5340591 () Bool)

(assert (=> b!5340591 (= e!3316278 (matchRSpec!2118 (regTwo!30543 lt!2177300) s!2326))))

(declare-fun b!5340592 () Bool)

(declare-fun res!2265334 () Bool)

(assert (=> b!5340592 (=> res!2265334 e!3316274)))

(assert (=> b!5340592 (= res!2265334 call!381809)))

(assert (=> b!5340592 (= e!3316276 e!3316274)))

(declare-fun b!5340593 () Bool)

(assert (=> b!5340593 (= e!3316277 (= s!2326 (Cons!61222 (c!929081 lt!2177300) Nil!61222)))))

(declare-fun bm!381805 () Bool)

(assert (=> bm!381805 (= call!381809 (isEmpty!33200 s!2326))))

(declare-fun b!5340594 () Bool)

(assert (=> b!5340594 (= e!3316273 e!3316276)))

(assert (=> b!5340594 (= c!929366 ((_ is Star!15015) lt!2177300))))

(assert (= (and d!1713857 c!929368) b!5340589))

(assert (= (and d!1713857 (not c!929368)) b!5340588))

(assert (= (and b!5340588 res!2265335) b!5340584))

(assert (= (and b!5340584 c!929365) b!5340593))

(assert (= (and b!5340584 (not c!929365)) b!5340587))

(assert (= (and b!5340587 c!929367) b!5340585))

(assert (= (and b!5340587 (not c!929367)) b!5340594))

(assert (= (and b!5340585 (not res!2265336)) b!5340591))

(assert (= (and b!5340594 c!929366) b!5340592))

(assert (= (and b!5340594 (not c!929366)) b!5340586))

(assert (= (and b!5340592 (not res!2265334)) b!5340590))

(assert (= (or b!5340590 b!5340586) bm!381804))

(assert (= (or b!5340589 b!5340592) bm!381805))

(declare-fun m!6372970 () Bool)

(assert (=> b!5340585 m!6372970))

(declare-fun m!6372972 () Bool)

(assert (=> bm!381804 m!6372972))

(declare-fun m!6372974 () Bool)

(assert (=> b!5340591 m!6372974))

(assert (=> bm!381805 m!6372884))

(assert (=> b!5339668 d!1713857))

(declare-fun bs!1238515 () Bool)

(declare-fun d!1713859 () Bool)

(assert (= bs!1238515 (and d!1713859 b!5339645)))

(declare-fun lambda!273696 () Int)

(assert (=> bs!1238515 (not (= lambda!273696 lambda!273584))))

(declare-fun bs!1238516 () Bool)

(assert (= bs!1238516 (and d!1713859 b!5339668)))

(assert (=> bs!1238516 (not (= lambda!273696 lambda!273587))))

(declare-fun bs!1238517 () Bool)

(assert (= bs!1238517 (and d!1713859 d!1713721)))

(assert (=> bs!1238517 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177299 (regTwo!30542 r!7292))) (= lambda!273696 lambda!273648))))

(declare-fun bs!1238518 () Bool)

(assert (= bs!1238518 (and d!1713859 d!1713825)))

(assert (=> bs!1238518 (= lambda!273696 lambda!273680)))

(assert (=> bs!1238516 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regTwo!30542 (regOne!30542 r!7292))) (= lt!2177299 lt!2177284)) (= lambda!273696 lambda!273588))))

(declare-fun bs!1238519 () Bool)

(assert (= bs!1238519 (and d!1713859 b!5340586)))

(assert (=> bs!1238519 (not (= lambda!273696 lambda!273695))))

(declare-fun bs!1238520 () Bool)

(assert (= bs!1238520 (and d!1713859 d!1713801)))

(assert (=> bs!1238520 (not (= lambda!273696 lambda!273672))))

(declare-fun bs!1238521 () Bool)

(assert (= bs!1238521 (and d!1713859 d!1713809)))

(assert (=> bs!1238521 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regTwo!30542 (regOne!30542 r!7292))) (= lt!2177299 lt!2177284)) (= lambda!273696 lambda!273676))))

(assert (=> bs!1238517 (not (= lambda!273696 lambda!273649))))

(declare-fun bs!1238522 () Bool)

(assert (= bs!1238522 (and d!1713859 b!5340579)))

(assert (=> bs!1238522 (not (= lambda!273696 lambda!273692))))

(assert (=> bs!1238516 (not (= lambda!273696 lambda!273589))))

(assert (=> bs!1238516 (= lambda!273696 lambda!273586)))

(assert (=> bs!1238515 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177299 (regTwo!30542 r!7292))) (= lambda!273696 lambda!273583))))

(declare-fun bs!1238523 () Bool)

(assert (= bs!1238523 (and d!1713859 d!1713705)))

(assert (=> bs!1238523 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177299 (regTwo!30542 r!7292))) (= lambda!273696 lambda!273641))))

(declare-fun bs!1238524 () Bool)

(assert (= bs!1238524 (and d!1713859 b!5340590)))

(assert (=> bs!1238524 (not (= lambda!273696 lambda!273694))))

(assert (=> bs!1238520 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regTwo!30542 (regOne!30542 r!7292))) (= lt!2177299 lt!2177284)) (= lambda!273696 lambda!273671))))

(declare-fun bs!1238525 () Bool)

(assert (= bs!1238525 (and d!1713859 b!5340575)))

(assert (=> bs!1238525 (not (= lambda!273696 lambda!273693))))

(assert (=> d!1713859 true))

(assert (=> d!1713859 true))

(assert (=> d!1713859 true))

(declare-fun lambda!273697 () Int)

(assert (=> bs!1238515 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177299 (regTwo!30542 r!7292))) (= lambda!273697 lambda!273584))))

(declare-fun bs!1238526 () Bool)

(assert (= bs!1238526 d!1713859))

(assert (=> bs!1238526 (not (= lambda!273697 lambda!273696))))

(assert (=> bs!1238516 (= lambda!273697 lambda!273587)))

(assert (=> bs!1238517 (not (= lambda!273697 lambda!273648))))

(assert (=> bs!1238518 (not (= lambda!273697 lambda!273680))))

(assert (=> bs!1238516 (not (= lambda!273697 lambda!273588))))

(assert (=> bs!1238519 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regOne!30542 lt!2177300)) (= lt!2177299 (regTwo!30542 lt!2177300))) (= lambda!273697 lambda!273695))))

(assert (=> bs!1238520 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regTwo!30542 (regOne!30542 r!7292))) (= lt!2177299 lt!2177284)) (= lambda!273697 lambda!273672))))

(assert (=> bs!1238521 (not (= lambda!273697 lambda!273676))))

(assert (=> bs!1238517 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regOne!30542 r!7292)) (= lt!2177299 (regTwo!30542 r!7292))) (= lambda!273697 lambda!273649))))

(assert (=> bs!1238522 (not (= lambda!273697 lambda!273692))))

(assert (=> bs!1238516 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regTwo!30542 (regOne!30542 r!7292))) (= lt!2177299 lt!2177284)) (= lambda!273697 lambda!273589))))

(assert (=> bs!1238516 (not (= lambda!273697 lambda!273586))))

(assert (=> bs!1238515 (not (= lambda!273697 lambda!273583))))

(assert (=> bs!1238523 (not (= lambda!273697 lambda!273641))))

(assert (=> bs!1238524 (not (= lambda!273697 lambda!273694))))

(assert (=> bs!1238520 (not (= lambda!273697 lambda!273671))))

(assert (=> bs!1238525 (= (and (= (regOne!30542 (regOne!30542 r!7292)) (regOne!30542 lt!2177299)) (= lt!2177299 (regTwo!30542 lt!2177299))) (= lambda!273697 lambda!273693))))

(assert (=> d!1713859 true))

(assert (=> d!1713859 true))

(assert (=> d!1713859 true))

(assert (=> d!1713859 (= (Exists!2196 lambda!273696) (Exists!2196 lambda!273697))))

(declare-fun lt!2177480 () Unit!153578)

(assert (=> d!1713859 (= lt!2177480 (choose!40027 (regOne!30542 (regOne!30542 r!7292)) lt!2177299 s!2326))))

(assert (=> d!1713859 (validRegex!6751 (regOne!30542 (regOne!30542 r!7292)))))

(assert (=> d!1713859 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!850 (regOne!30542 (regOne!30542 r!7292)) lt!2177299 s!2326) lt!2177480)))

(declare-fun m!6372976 () Bool)

(assert (=> bs!1238526 m!6372976))

(declare-fun m!6372978 () Bool)

(assert (=> bs!1238526 m!6372978))

(declare-fun m!6372980 () Bool)

(assert (=> bs!1238526 m!6372980))

(assert (=> bs!1238526 m!6372864))

(assert (=> b!5339668 d!1713859))

(declare-fun bs!1238527 () Bool)

(declare-fun d!1713861 () Bool)

(assert (= bs!1238527 (and d!1713861 d!1713807)))

(declare-fun lambda!273698 () Int)

(assert (=> bs!1238527 (= lambda!273698 lambda!273674)))

(declare-fun bs!1238528 () Bool)

(assert (= bs!1238528 (and d!1713861 d!1713655)))

(assert (=> bs!1238528 (= lambda!273698 lambda!273618)))

(declare-fun bs!1238529 () Bool)

(assert (= bs!1238529 (and d!1713861 d!1713689)))

(assert (=> bs!1238529 (= lambda!273698 lambda!273630)))

(declare-fun bs!1238530 () Bool)

(assert (= bs!1238530 (and d!1713861 d!1713663)))

(assert (=> bs!1238530 (= lambda!273698 lambda!273619)))

(declare-fun bs!1238531 () Bool)

(assert (= bs!1238531 (and d!1713861 d!1713643)))

(assert (=> bs!1238531 (= lambda!273698 lambda!273611)))

(declare-fun bs!1238532 () Bool)

(assert (= bs!1238532 (and d!1713861 d!1713623)))

(assert (=> bs!1238532 (= lambda!273698 lambda!273607)))

(declare-fun e!3316284 () Bool)

(assert (=> d!1713861 e!3316284))

(declare-fun res!2265337 () Bool)

(assert (=> d!1713861 (=> (not res!2265337) (not e!3316284))))

(declare-fun lt!2177481 () Regex!15015)

(assert (=> d!1713861 (= res!2265337 (validRegex!6751 lt!2177481))))

(declare-fun e!3316281 () Regex!15015)

(assert (=> d!1713861 (= lt!2177481 e!3316281)))

(declare-fun c!929370 () Bool)

(declare-fun e!3316283 () Bool)

(assert (=> d!1713861 (= c!929370 e!3316283)))

(declare-fun res!2265338 () Bool)

(assert (=> d!1713861 (=> (not res!2265338) (not e!3316283))))

(assert (=> d!1713861 (= res!2265338 ((_ is Cons!61220) (t!374561 (exprs!4899 (h!67669 zl!343)))))))

(assert (=> d!1713861 (forall!14440 (t!374561 (exprs!4899 (h!67669 zl!343))) lambda!273698)))

(assert (=> d!1713861 (= (generalisedConcat!684 (t!374561 (exprs!4899 (h!67669 zl!343)))) lt!2177481)))

(declare-fun b!5340595 () Bool)

(assert (=> b!5340595 (= e!3316281 (h!67668 (t!374561 (exprs!4899 (h!67669 zl!343)))))))

(declare-fun b!5340596 () Bool)

(declare-fun e!3316282 () Regex!15015)

(assert (=> b!5340596 (= e!3316281 e!3316282)))

(declare-fun c!929371 () Bool)

(assert (=> b!5340596 (= c!929371 ((_ is Cons!61220) (t!374561 (exprs!4899 (h!67669 zl!343)))))))

(declare-fun b!5340597 () Bool)

(declare-fun e!3316279 () Bool)

(assert (=> b!5340597 (= e!3316279 (isEmptyExpr!901 lt!2177481))))

(declare-fun b!5340598 () Bool)

(assert (=> b!5340598 (= e!3316282 (Concat!23860 (h!67668 (t!374561 (exprs!4899 (h!67669 zl!343)))) (generalisedConcat!684 (t!374561 (t!374561 (exprs!4899 (h!67669 zl!343)))))))))

(declare-fun b!5340599 () Bool)

(assert (=> b!5340599 (= e!3316284 e!3316279)))

(declare-fun c!929372 () Bool)

(assert (=> b!5340599 (= c!929372 (isEmpty!33195 (t!374561 (exprs!4899 (h!67669 zl!343)))))))

(declare-fun b!5340600 () Bool)

(declare-fun e!3316280 () Bool)

(assert (=> b!5340600 (= e!3316280 (isConcat!424 lt!2177481))))

(declare-fun b!5340601 () Bool)

(assert (=> b!5340601 (= e!3316283 (isEmpty!33195 (t!374561 (t!374561 (exprs!4899 (h!67669 zl!343))))))))

(declare-fun b!5340602 () Bool)

(assert (=> b!5340602 (= e!3316279 e!3316280)))

(declare-fun c!929369 () Bool)

(assert (=> b!5340602 (= c!929369 (isEmpty!33195 (tail!10547 (t!374561 (exprs!4899 (h!67669 zl!343))))))))

(declare-fun b!5340603 () Bool)

(assert (=> b!5340603 (= e!3316282 EmptyExpr!15015)))

(declare-fun b!5340604 () Bool)

(assert (=> b!5340604 (= e!3316280 (= lt!2177481 (head!11450 (t!374561 (exprs!4899 (h!67669 zl!343))))))))

(assert (= (and d!1713861 res!2265338) b!5340601))

(assert (= (and d!1713861 c!929370) b!5340595))

(assert (= (and d!1713861 (not c!929370)) b!5340596))

(assert (= (and b!5340596 c!929371) b!5340598))

(assert (= (and b!5340596 (not c!929371)) b!5340603))

(assert (= (and d!1713861 res!2265337) b!5340599))

(assert (= (and b!5340599 c!929372) b!5340597))

(assert (= (and b!5340599 (not c!929372)) b!5340602))

(assert (= (and b!5340602 c!929369) b!5340604))

(assert (= (and b!5340602 (not c!929369)) b!5340600))

(declare-fun m!6372982 () Bool)

(assert (=> d!1713861 m!6372982))

(declare-fun m!6372984 () Bool)

(assert (=> d!1713861 m!6372984))

(declare-fun m!6372986 () Bool)

(assert (=> b!5340604 m!6372986))

(declare-fun m!6372988 () Bool)

(assert (=> b!5340601 m!6372988))

(declare-fun m!6372990 () Bool)

(assert (=> b!5340600 m!6372990))

(declare-fun m!6372992 () Bool)

(assert (=> b!5340602 m!6372992))

(assert (=> b!5340602 m!6372992))

(declare-fun m!6372994 () Bool)

(assert (=> b!5340602 m!6372994))

(assert (=> b!5340599 m!6372088))

(declare-fun m!6372996 () Bool)

(assert (=> b!5340597 m!6372996))

(declare-fun m!6372998 () Bool)

(assert (=> b!5340598 m!6372998))

(assert (=> b!5339668 d!1713861))

(declare-fun bs!1238533 () Bool)

(declare-fun d!1713863 () Bool)

(assert (= bs!1238533 (and d!1713863 d!1713807)))

(declare-fun lambda!273699 () Int)

(assert (=> bs!1238533 (= lambda!273699 lambda!273674)))

(declare-fun bs!1238534 () Bool)

(assert (= bs!1238534 (and d!1713863 d!1713861)))

(assert (=> bs!1238534 (= lambda!273699 lambda!273698)))

(declare-fun bs!1238535 () Bool)

(assert (= bs!1238535 (and d!1713863 d!1713655)))

(assert (=> bs!1238535 (= lambda!273699 lambda!273618)))

(declare-fun bs!1238536 () Bool)

(assert (= bs!1238536 (and d!1713863 d!1713689)))

(assert (=> bs!1238536 (= lambda!273699 lambda!273630)))

(declare-fun bs!1238537 () Bool)

(assert (= bs!1238537 (and d!1713863 d!1713663)))

(assert (=> bs!1238537 (= lambda!273699 lambda!273619)))

(declare-fun bs!1238538 () Bool)

(assert (= bs!1238538 (and d!1713863 d!1713643)))

(assert (=> bs!1238538 (= lambda!273699 lambda!273611)))

(declare-fun bs!1238539 () Bool)

(assert (= bs!1238539 (and d!1713863 d!1713623)))

(assert (=> bs!1238539 (= lambda!273699 lambda!273607)))

(declare-fun e!3316290 () Bool)

(assert (=> d!1713863 e!3316290))

(declare-fun res!2265339 () Bool)

(assert (=> d!1713863 (=> (not res!2265339) (not e!3316290))))

(declare-fun lt!2177482 () Regex!15015)

(assert (=> d!1713863 (= res!2265339 (validRegex!6751 lt!2177482))))

(declare-fun e!3316287 () Regex!15015)

(assert (=> d!1713863 (= lt!2177482 e!3316287)))

(declare-fun c!929374 () Bool)

(declare-fun e!3316289 () Bool)

(assert (=> d!1713863 (= c!929374 e!3316289)))

(declare-fun res!2265340 () Bool)

(assert (=> d!1713863 (=> (not res!2265340) (not e!3316289))))

(assert (=> d!1713863 (= res!2265340 ((_ is Cons!61220) lt!2177287))))

(assert (=> d!1713863 (forall!14440 lt!2177287 lambda!273699)))

(assert (=> d!1713863 (= (generalisedConcat!684 lt!2177287) lt!2177482)))

(declare-fun b!5340605 () Bool)

(assert (=> b!5340605 (= e!3316287 (h!67668 lt!2177287))))

(declare-fun b!5340606 () Bool)

(declare-fun e!3316288 () Regex!15015)

(assert (=> b!5340606 (= e!3316287 e!3316288)))

(declare-fun c!929375 () Bool)

(assert (=> b!5340606 (= c!929375 ((_ is Cons!61220) lt!2177287))))

(declare-fun b!5340607 () Bool)

(declare-fun e!3316285 () Bool)

(assert (=> b!5340607 (= e!3316285 (isEmptyExpr!901 lt!2177482))))

(declare-fun b!5340608 () Bool)

(assert (=> b!5340608 (= e!3316288 (Concat!23860 (h!67668 lt!2177287) (generalisedConcat!684 (t!374561 lt!2177287))))))

(declare-fun b!5340609 () Bool)

(assert (=> b!5340609 (= e!3316290 e!3316285)))

(declare-fun c!929376 () Bool)

(assert (=> b!5340609 (= c!929376 (isEmpty!33195 lt!2177287))))

(declare-fun b!5340610 () Bool)

(declare-fun e!3316286 () Bool)

(assert (=> b!5340610 (= e!3316286 (isConcat!424 lt!2177482))))

(declare-fun b!5340611 () Bool)

(assert (=> b!5340611 (= e!3316289 (isEmpty!33195 (t!374561 lt!2177287)))))

(declare-fun b!5340612 () Bool)

(assert (=> b!5340612 (= e!3316285 e!3316286)))

(declare-fun c!929373 () Bool)

(assert (=> b!5340612 (= c!929373 (isEmpty!33195 (tail!10547 lt!2177287)))))

(declare-fun b!5340613 () Bool)

(assert (=> b!5340613 (= e!3316288 EmptyExpr!15015)))

(declare-fun b!5340614 () Bool)

(assert (=> b!5340614 (= e!3316286 (= lt!2177482 (head!11450 lt!2177287)))))

(assert (= (and d!1713863 res!2265340) b!5340611))

(assert (= (and d!1713863 c!929374) b!5340605))

(assert (= (and d!1713863 (not c!929374)) b!5340606))

(assert (= (and b!5340606 c!929375) b!5340608))

(assert (= (and b!5340606 (not c!929375)) b!5340613))

(assert (= (and d!1713863 res!2265339) b!5340609))

(assert (= (and b!5340609 c!929376) b!5340607))

(assert (= (and b!5340609 (not c!929376)) b!5340612))

(assert (= (and b!5340612 c!929373) b!5340614))

(assert (= (and b!5340612 (not c!929373)) b!5340610))

(declare-fun m!6373000 () Bool)

(assert (=> d!1713863 m!6373000))

(declare-fun m!6373002 () Bool)

(assert (=> d!1713863 m!6373002))

(declare-fun m!6373004 () Bool)

(assert (=> b!5340614 m!6373004))

(declare-fun m!6373006 () Bool)

(assert (=> b!5340611 m!6373006))

(declare-fun m!6373008 () Bool)

(assert (=> b!5340610 m!6373008))

(declare-fun m!6373010 () Bool)

(assert (=> b!5340612 m!6373010))

(assert (=> b!5340612 m!6373010))

(declare-fun m!6373012 () Bool)

(assert (=> b!5340612 m!6373012))

(declare-fun m!6373014 () Bool)

(assert (=> b!5340609 m!6373014))

(declare-fun m!6373016 () Bool)

(assert (=> b!5340607 m!6373016))

(declare-fun m!6373018 () Bool)

(assert (=> b!5340608 m!6373018))

(assert (=> b!5339668 d!1713863))

(declare-fun b!5340615 () Bool)

(declare-fun e!3316294 () Bool)

(declare-fun e!3316295 () Bool)

(assert (=> b!5340615 (= e!3316294 e!3316295)))

(declare-fun res!2265346 () Bool)

(assert (=> b!5340615 (=> (not res!2265346) (not e!3316295))))

(declare-fun lt!2177483 () Bool)

(assert (=> b!5340615 (= res!2265346 (not lt!2177483))))

(declare-fun b!5340616 () Bool)

(declare-fun e!3316296 () Bool)

(assert (=> b!5340616 (= e!3316296 (= (head!11451 s!2326) (c!929081 lt!2177300)))))

(declare-fun b!5340617 () Bool)

(declare-fun e!3316292 () Bool)

(assert (=> b!5340617 (= e!3316292 (not (= (head!11451 s!2326) (c!929081 lt!2177300))))))

(declare-fun b!5340618 () Bool)

(assert (=> b!5340618 (= e!3316295 e!3316292)))

(declare-fun res!2265343 () Bool)

(assert (=> b!5340618 (=> res!2265343 e!3316292)))

(declare-fun call!381811 () Bool)

(assert (=> b!5340618 (= res!2265343 call!381811)))

(declare-fun d!1713865 () Bool)

(declare-fun e!3316291 () Bool)

(assert (=> d!1713865 e!3316291))

(declare-fun c!929378 () Bool)

(assert (=> d!1713865 (= c!929378 ((_ is EmptyExpr!15015) lt!2177300))))

(declare-fun e!3316297 () Bool)

(assert (=> d!1713865 (= lt!2177483 e!3316297)))

(declare-fun c!929377 () Bool)

(assert (=> d!1713865 (= c!929377 (isEmpty!33200 s!2326))))

(assert (=> d!1713865 (validRegex!6751 lt!2177300)))

(assert (=> d!1713865 (= (matchR!7200 lt!2177300 s!2326) lt!2177483)))

(declare-fun b!5340619 () Bool)

(declare-fun e!3316293 () Bool)

(assert (=> b!5340619 (= e!3316293 (not lt!2177483))))

(declare-fun b!5340620 () Bool)

(declare-fun res!2265345 () Bool)

(assert (=> b!5340620 (=> (not res!2265345) (not e!3316296))))

(assert (=> b!5340620 (= res!2265345 (not call!381811))))

(declare-fun b!5340621 () Bool)

(declare-fun res!2265348 () Bool)

(assert (=> b!5340621 (=> res!2265348 e!3316294)))

(assert (=> b!5340621 (= res!2265348 (not ((_ is ElementMatch!15015) lt!2177300)))))

(assert (=> b!5340621 (= e!3316293 e!3316294)))

(declare-fun b!5340622 () Bool)

(declare-fun res!2265342 () Bool)

(assert (=> b!5340622 (=> res!2265342 e!3316292)))

(assert (=> b!5340622 (= res!2265342 (not (isEmpty!33200 (tail!10548 s!2326))))))

(declare-fun b!5340623 () Bool)

(assert (=> b!5340623 (= e!3316297 (nullable!5184 lt!2177300))))

(declare-fun b!5340624 () Bool)

(assert (=> b!5340624 (= e!3316291 (= lt!2177483 call!381811))))

(declare-fun b!5340625 () Bool)

(declare-fun res!2265347 () Bool)

(assert (=> b!5340625 (=> res!2265347 e!3316294)))

(assert (=> b!5340625 (= res!2265347 e!3316296)))

(declare-fun res!2265344 () Bool)

(assert (=> b!5340625 (=> (not res!2265344) (not e!3316296))))

(assert (=> b!5340625 (= res!2265344 lt!2177483)))

(declare-fun bm!381806 () Bool)

(assert (=> bm!381806 (= call!381811 (isEmpty!33200 s!2326))))

(declare-fun b!5340626 () Bool)

(declare-fun res!2265341 () Bool)

(assert (=> b!5340626 (=> (not res!2265341) (not e!3316296))))

(assert (=> b!5340626 (= res!2265341 (isEmpty!33200 (tail!10548 s!2326)))))

(declare-fun b!5340627 () Bool)

(assert (=> b!5340627 (= e!3316291 e!3316293)))

(declare-fun c!929379 () Bool)

(assert (=> b!5340627 (= c!929379 ((_ is EmptyLang!15015) lt!2177300))))

(declare-fun b!5340628 () Bool)

(assert (=> b!5340628 (= e!3316297 (matchR!7200 (derivativeStep!4187 lt!2177300 (head!11451 s!2326)) (tail!10548 s!2326)))))

(assert (= (and d!1713865 c!929377) b!5340623))

(assert (= (and d!1713865 (not c!929377)) b!5340628))

(assert (= (and d!1713865 c!929378) b!5340624))

(assert (= (and d!1713865 (not c!929378)) b!5340627))

(assert (= (and b!5340627 c!929379) b!5340619))

(assert (= (and b!5340627 (not c!929379)) b!5340621))

(assert (= (and b!5340621 (not res!2265348)) b!5340625))

(assert (= (and b!5340625 res!2265344) b!5340620))

(assert (= (and b!5340620 res!2265345) b!5340626))

(assert (= (and b!5340626 res!2265341) b!5340616))

(assert (= (and b!5340625 (not res!2265347)) b!5340615))

(assert (= (and b!5340615 res!2265346) b!5340618))

(assert (= (and b!5340618 (not res!2265343)) b!5340622))

(assert (= (and b!5340622 (not res!2265342)) b!5340617))

(assert (= (or b!5340624 b!5340618 b!5340620) bm!381806))

(assert (=> bm!381806 m!6372884))

(assert (=> b!5340616 m!6372892))

(assert (=> b!5340626 m!6372896))

(assert (=> b!5340626 m!6372896))

(assert (=> b!5340626 m!6372948))

(declare-fun m!6373020 () Bool)

(assert (=> b!5340623 m!6373020))

(assert (=> b!5340622 m!6372896))

(assert (=> b!5340622 m!6372896))

(assert (=> b!5340622 m!6372948))

(assert (=> d!1713865 m!6372884))

(assert (=> d!1713865 m!6372854))

(assert (=> b!5340617 m!6372892))

(assert (=> b!5340628 m!6372892))

(assert (=> b!5340628 m!6372892))

(declare-fun m!6373022 () Bool)

(assert (=> b!5340628 m!6373022))

(assert (=> b!5340628 m!6372896))

(assert (=> b!5340628 m!6373022))

(assert (=> b!5340628 m!6372896))

(declare-fun m!6373024 () Bool)

(assert (=> b!5340628 m!6373024))

(assert (=> b!5339668 d!1713865))

(declare-fun d!1713867 () Bool)

(declare-fun c!929380 () Bool)

(assert (=> d!1713867 (= c!929380 (isEmpty!33200 s!2326))))

(declare-fun e!3316298 () Bool)

(assert (=> d!1713867 (= (matchZipper!1259 z!1189 s!2326) e!3316298)))

(declare-fun b!5340629 () Bool)

(assert (=> b!5340629 (= e!3316298 (nullableZipper!1366 z!1189))))

(declare-fun b!5340630 () Bool)

(assert (=> b!5340630 (= e!3316298 (matchZipper!1259 (derivationStepZipper!1256 z!1189 (head!11451 s!2326)) (tail!10548 s!2326)))))

(assert (= (and d!1713867 c!929380) b!5340629))

(assert (= (and d!1713867 (not c!929380)) b!5340630))

(assert (=> d!1713867 m!6372884))

(declare-fun m!6373026 () Bool)

(assert (=> b!5340629 m!6373026))

(assert (=> b!5340630 m!6372892))

(assert (=> b!5340630 m!6372892))

(declare-fun m!6373028 () Bool)

(assert (=> b!5340630 m!6373028))

(assert (=> b!5340630 m!6372896))

(assert (=> b!5340630 m!6373028))

(assert (=> b!5340630 m!6372896))

(declare-fun m!6373030 () Bool)

(assert (=> b!5340630 m!6373030))

(assert (=> b!5339668 d!1713867))

(declare-fun d!1713869 () Bool)

(assert (=> d!1713869 (= (matchR!7200 lt!2177299 s!2326) (matchRSpec!2118 lt!2177299 s!2326))))

(declare-fun lt!2177484 () Unit!153578)

(assert (=> d!1713869 (= lt!2177484 (choose!40031 lt!2177299 s!2326))))

(assert (=> d!1713869 (validRegex!6751 lt!2177299)))

(assert (=> d!1713869 (= (mainMatchTheorem!2118 lt!2177299 s!2326) lt!2177484)))

(declare-fun bs!1238540 () Bool)

(assert (= bs!1238540 d!1713869))

(assert (=> bs!1238540 m!6372190))

(assert (=> bs!1238540 m!6372152))

(declare-fun m!6373032 () Bool)

(assert (=> bs!1238540 m!6373032))

(assert (=> bs!1238540 m!6372952))

(assert (=> b!5339668 d!1713869))

(declare-fun d!1713871 () Bool)

(assert (=> d!1713871 (= (Exists!2196 lambda!273588) (choose!40025 lambda!273588))))

(declare-fun bs!1238541 () Bool)

(assert (= bs!1238541 d!1713871))

(declare-fun m!6373034 () Bool)

(assert (=> bs!1238541 m!6373034))

(assert (=> b!5339668 d!1713871))

(declare-fun d!1713873 () Bool)

(assert (=> d!1713873 (= (isDefined!11829 (findConcatSeparation!1540 (regOne!30542 (regOne!30542 r!7292)) lt!2177299 Nil!61222 s!2326 s!2326)) (not (isEmpty!33198 (findConcatSeparation!1540 (regOne!30542 (regOne!30542 r!7292)) lt!2177299 Nil!61222 s!2326 s!2326))))))

(declare-fun bs!1238542 () Bool)

(assert (= bs!1238542 d!1713873))

(assert (=> bs!1238542 m!6372180))

(declare-fun m!6373036 () Bool)

(assert (=> bs!1238542 m!6373036))

(assert (=> b!5339668 d!1713873))

(declare-fun d!1713875 () Bool)

(assert (=> d!1713875 (= (isDefined!11829 (findConcatSeparation!1540 (regTwo!30542 (regOne!30542 r!7292)) lt!2177284 Nil!61222 s!2326 s!2326)) (not (isEmpty!33198 (findConcatSeparation!1540 (regTwo!30542 (regOne!30542 r!7292)) lt!2177284 Nil!61222 s!2326 s!2326))))))

(declare-fun bs!1238543 () Bool)

(assert (= bs!1238543 d!1713875))

(assert (=> bs!1238543 m!6372158))

(declare-fun m!6373038 () Bool)

(assert (=> bs!1238543 m!6373038))

(assert (=> b!5339668 d!1713875))

(declare-fun b!5340631 () Bool)

(declare-fun res!2265351 () Bool)

(declare-fun e!3316300 () Bool)

(assert (=> b!5340631 (=> (not res!2265351) (not e!3316300))))

(declare-fun lt!2177487 () Option!15126)

(assert (=> b!5340631 (= res!2265351 (matchR!7200 lt!2177299 (_2!35517 (get!21059 lt!2177487))))))

(declare-fun b!5340632 () Bool)

(declare-fun e!3316302 () Bool)

(assert (=> b!5340632 (= e!3316302 (not (isDefined!11829 lt!2177487)))))

(declare-fun b!5340633 () Bool)

(declare-fun e!3316301 () Option!15126)

(assert (=> b!5340633 (= e!3316301 (Some!15125 (tuple2!64429 Nil!61222 s!2326)))))

(declare-fun d!1713877 () Bool)

(assert (=> d!1713877 e!3316302))

(declare-fun res!2265350 () Bool)

(assert (=> d!1713877 (=> res!2265350 e!3316302)))

(assert (=> d!1713877 (= res!2265350 e!3316300)))

(declare-fun res!2265353 () Bool)

(assert (=> d!1713877 (=> (not res!2265353) (not e!3316300))))

(assert (=> d!1713877 (= res!2265353 (isDefined!11829 lt!2177487))))

(assert (=> d!1713877 (= lt!2177487 e!3316301)))

(declare-fun c!929382 () Bool)

(declare-fun e!3316303 () Bool)

(assert (=> d!1713877 (= c!929382 e!3316303)))

(declare-fun res!2265352 () Bool)

(assert (=> d!1713877 (=> (not res!2265352) (not e!3316303))))

(assert (=> d!1713877 (= res!2265352 (matchR!7200 (regOne!30542 (regOne!30542 r!7292)) Nil!61222))))

(assert (=> d!1713877 (validRegex!6751 (regOne!30542 (regOne!30542 r!7292)))))

(assert (=> d!1713877 (= (findConcatSeparation!1540 (regOne!30542 (regOne!30542 r!7292)) lt!2177299 Nil!61222 s!2326 s!2326) lt!2177487)))

(declare-fun b!5340634 () Bool)

(declare-fun lt!2177486 () Unit!153578)

(declare-fun lt!2177485 () Unit!153578)

(assert (=> b!5340634 (= lt!2177486 lt!2177485)))

(assert (=> b!5340634 (= (++!13346 (++!13346 Nil!61222 (Cons!61222 (h!67670 s!2326) Nil!61222)) (t!374563 s!2326)) s!2326)))

(assert (=> b!5340634 (= lt!2177485 (lemmaMoveElementToOtherListKeepsConcatEq!1761 Nil!61222 (h!67670 s!2326) (t!374563 s!2326) s!2326))))

(declare-fun e!3316299 () Option!15126)

(assert (=> b!5340634 (= e!3316299 (findConcatSeparation!1540 (regOne!30542 (regOne!30542 r!7292)) lt!2177299 (++!13346 Nil!61222 (Cons!61222 (h!67670 s!2326) Nil!61222)) (t!374563 s!2326) s!2326))))

(declare-fun b!5340635 () Bool)

(assert (=> b!5340635 (= e!3316300 (= (++!13346 (_1!35517 (get!21059 lt!2177487)) (_2!35517 (get!21059 lt!2177487))) s!2326))))

(declare-fun b!5340636 () Bool)

(declare-fun res!2265349 () Bool)

(assert (=> b!5340636 (=> (not res!2265349) (not e!3316300))))

(assert (=> b!5340636 (= res!2265349 (matchR!7200 (regOne!30542 (regOne!30542 r!7292)) (_1!35517 (get!21059 lt!2177487))))))

(declare-fun b!5340637 () Bool)

(assert (=> b!5340637 (= e!3316303 (matchR!7200 lt!2177299 s!2326))))

(declare-fun b!5340638 () Bool)

(assert (=> b!5340638 (= e!3316299 None!15125)))

(declare-fun b!5340639 () Bool)

(assert (=> b!5340639 (= e!3316301 e!3316299)))

(declare-fun c!929381 () Bool)

(assert (=> b!5340639 (= c!929381 ((_ is Nil!61222) s!2326))))

(assert (= (and d!1713877 res!2265352) b!5340637))

(assert (= (and d!1713877 c!929382) b!5340633))

(assert (= (and d!1713877 (not c!929382)) b!5340639))

(assert (= (and b!5340639 c!929381) b!5340638))

(assert (= (and b!5340639 (not c!929381)) b!5340634))

(assert (= (and d!1713877 res!2265353) b!5340636))

(assert (= (and b!5340636 res!2265349) b!5340631))

(assert (= (and b!5340631 res!2265351) b!5340635))

(assert (= (and d!1713877 (not res!2265350)) b!5340632))

(assert (=> b!5340637 m!6372190))

(declare-fun m!6373040 () Bool)

(assert (=> d!1713877 m!6373040))

(declare-fun m!6373042 () Bool)

(assert (=> d!1713877 m!6373042))

(assert (=> d!1713877 m!6372864))

(assert (=> b!5340634 m!6372518))

(assert (=> b!5340634 m!6372518))

(assert (=> b!5340634 m!6372520))

(assert (=> b!5340634 m!6372522))

(assert (=> b!5340634 m!6372518))

(declare-fun m!6373044 () Bool)

(assert (=> b!5340634 m!6373044))

(declare-fun m!6373046 () Bool)

(assert (=> b!5340635 m!6373046))

(declare-fun m!6373048 () Bool)

(assert (=> b!5340635 m!6373048))

(assert (=> b!5340632 m!6373040))

(assert (=> b!5340636 m!6373046))

(declare-fun m!6373050 () Bool)

(assert (=> b!5340636 m!6373050))

(assert (=> b!5340631 m!6373046))

(declare-fun m!6373052 () Bool)

(assert (=> b!5340631 m!6373052))

(assert (=> b!5339668 d!1713877))

(declare-fun d!1713879 () Bool)

(assert (=> d!1713879 (= (Exists!2196 lambda!273587) (choose!40025 lambda!273587))))

(declare-fun bs!1238544 () Bool)

(assert (= bs!1238544 d!1713879))

(declare-fun m!6373054 () Bool)

(assert (=> bs!1238544 m!6373054))

(assert (=> b!5339668 d!1713879))

(declare-fun d!1713881 () Bool)

(declare-fun c!929383 () Bool)

(assert (=> d!1713881 (= c!929383 (isEmpty!33200 (t!374563 s!2326)))))

(declare-fun e!3316304 () Bool)

(assert (=> d!1713881 (= (matchZipper!1259 lt!2177301 (t!374563 s!2326)) e!3316304)))

(declare-fun b!5340640 () Bool)

(assert (=> b!5340640 (= e!3316304 (nullableZipper!1366 lt!2177301))))

(declare-fun b!5340641 () Bool)

(assert (=> b!5340641 (= e!3316304 (matchZipper!1259 (derivationStepZipper!1256 lt!2177301 (head!11451 (t!374563 s!2326))) (tail!10548 (t!374563 s!2326))))))

(assert (= (and d!1713881 c!929383) b!5340640))

(assert (= (and d!1713881 (not c!929383)) b!5340641))

(declare-fun m!6373056 () Bool)

(assert (=> d!1713881 m!6373056))

(declare-fun m!6373058 () Bool)

(assert (=> b!5340640 m!6373058))

(declare-fun m!6373060 () Bool)

(assert (=> b!5340641 m!6373060))

(assert (=> b!5340641 m!6373060))

(declare-fun m!6373062 () Bool)

(assert (=> b!5340641 m!6373062))

(declare-fun m!6373064 () Bool)

(assert (=> b!5340641 m!6373064))

(assert (=> b!5340641 m!6373062))

(assert (=> b!5340641 m!6373064))

(declare-fun m!6373066 () Bool)

(assert (=> b!5340641 m!6373066))

(assert (=> b!5339649 d!1713881))

(declare-fun d!1713883 () Bool)

(declare-fun c!929384 () Bool)

(assert (=> d!1713883 (= c!929384 (isEmpty!33200 (t!374563 s!2326)))))

(declare-fun e!3316305 () Bool)

(assert (=> d!1713883 (= (matchZipper!1259 lt!2177296 (t!374563 s!2326)) e!3316305)))

(declare-fun b!5340642 () Bool)

(assert (=> b!5340642 (= e!3316305 (nullableZipper!1366 lt!2177296))))

(declare-fun b!5340643 () Bool)

(assert (=> b!5340643 (= e!3316305 (matchZipper!1259 (derivationStepZipper!1256 lt!2177296 (head!11451 (t!374563 s!2326))) (tail!10548 (t!374563 s!2326))))))

(assert (= (and d!1713883 c!929384) b!5340642))

(assert (= (and d!1713883 (not c!929384)) b!5340643))

(assert (=> d!1713883 m!6373056))

(declare-fun m!6373068 () Bool)

(assert (=> b!5340642 m!6373068))

(assert (=> b!5340643 m!6373060))

(assert (=> b!5340643 m!6373060))

(declare-fun m!6373070 () Bool)

(assert (=> b!5340643 m!6373070))

(assert (=> b!5340643 m!6373064))

(assert (=> b!5340643 m!6373070))

(assert (=> b!5340643 m!6373064))

(declare-fun m!6373072 () Bool)

(assert (=> b!5340643 m!6373072))

(assert (=> b!5339671 d!1713883))

(declare-fun d!1713885 () Bool)

(declare-fun c!929385 () Bool)

(assert (=> d!1713885 (= c!929385 (isEmpty!33200 (t!374563 s!2326)))))

(declare-fun e!3316306 () Bool)

(assert (=> d!1713885 (= (matchZipper!1259 lt!2177283 (t!374563 s!2326)) e!3316306)))

(declare-fun b!5340644 () Bool)

(assert (=> b!5340644 (= e!3316306 (nullableZipper!1366 lt!2177283))))

(declare-fun b!5340645 () Bool)

(assert (=> b!5340645 (= e!3316306 (matchZipper!1259 (derivationStepZipper!1256 lt!2177283 (head!11451 (t!374563 s!2326))) (tail!10548 (t!374563 s!2326))))))

(assert (= (and d!1713885 c!929385) b!5340644))

(assert (= (and d!1713885 (not c!929385)) b!5340645))

(assert (=> d!1713885 m!6373056))

(declare-fun m!6373074 () Bool)

(assert (=> b!5340644 m!6373074))

(assert (=> b!5340645 m!6373060))

(assert (=> b!5340645 m!6373060))

(declare-fun m!6373076 () Bool)

(assert (=> b!5340645 m!6373076))

(assert (=> b!5340645 m!6373064))

(assert (=> b!5340645 m!6373076))

(assert (=> b!5340645 m!6373064))

(declare-fun m!6373078 () Bool)

(assert (=> b!5340645 m!6373078))

(assert (=> b!5339671 d!1713885))

(declare-fun bs!1238545 () Bool)

(declare-fun b!5340652 () Bool)

(assert (= bs!1238545 (and b!5340652 b!5339645)))

(declare-fun lambda!273700 () Int)

(assert (=> bs!1238545 (not (= lambda!273700 lambda!273584))))

(declare-fun bs!1238546 () Bool)

(assert (= bs!1238546 (and b!5340652 d!1713859)))

(assert (=> bs!1238546 (not (= lambda!273700 lambda!273696))))

(declare-fun bs!1238547 () Bool)

(assert (= bs!1238547 (and b!5340652 b!5339668)))

(assert (=> bs!1238547 (not (= lambda!273700 lambda!273587))))

(declare-fun bs!1238548 () Bool)

(assert (= bs!1238548 (and b!5340652 d!1713721)))

(assert (=> bs!1238548 (not (= lambda!273700 lambda!273648))))

(declare-fun bs!1238549 () Bool)

(assert (= bs!1238549 (and b!5340652 d!1713825)))

(assert (=> bs!1238549 (not (= lambda!273700 lambda!273680))))

(assert (=> bs!1238547 (not (= lambda!273700 lambda!273588))))

(declare-fun bs!1238550 () Bool)

(assert (= bs!1238550 (and b!5340652 b!5340586)))

(assert (=> bs!1238550 (not (= lambda!273700 lambda!273695))))

(declare-fun bs!1238551 () Bool)

(assert (= bs!1238551 (and b!5340652 d!1713801)))

(assert (=> bs!1238551 (not (= lambda!273700 lambda!273672))))

(declare-fun bs!1238552 () Bool)

(assert (= bs!1238552 (and b!5340652 d!1713809)))

(assert (=> bs!1238552 (not (= lambda!273700 lambda!273676))))

(assert (=> bs!1238546 (not (= lambda!273700 lambda!273697))))

(assert (=> bs!1238548 (not (= lambda!273700 lambda!273649))))

(declare-fun bs!1238553 () Bool)

(assert (= bs!1238553 (and b!5340652 b!5340579)))

(assert (=> bs!1238553 (= (and (= (reg!15344 r!7292) (reg!15344 lt!2177299)) (= r!7292 lt!2177299)) (= lambda!273700 lambda!273692))))

(assert (=> bs!1238547 (not (= lambda!273700 lambda!273589))))

(assert (=> bs!1238547 (not (= lambda!273700 lambda!273586))))

(assert (=> bs!1238545 (not (= lambda!273700 lambda!273583))))

(declare-fun bs!1238554 () Bool)

(assert (= bs!1238554 (and b!5340652 d!1713705)))

(assert (=> bs!1238554 (not (= lambda!273700 lambda!273641))))

(declare-fun bs!1238555 () Bool)

(assert (= bs!1238555 (and b!5340652 b!5340590)))

(assert (=> bs!1238555 (= (and (= (reg!15344 r!7292) (reg!15344 lt!2177300)) (= r!7292 lt!2177300)) (= lambda!273700 lambda!273694))))

(assert (=> bs!1238551 (not (= lambda!273700 lambda!273671))))

(declare-fun bs!1238556 () Bool)

(assert (= bs!1238556 (and b!5340652 b!5340575)))

(assert (=> bs!1238556 (not (= lambda!273700 lambda!273693))))

(assert (=> b!5340652 true))

(assert (=> b!5340652 true))

(declare-fun bs!1238557 () Bool)

(declare-fun b!5340648 () Bool)

(assert (= bs!1238557 (and b!5340648 b!5339645)))

(declare-fun lambda!273701 () Int)

(assert (=> bs!1238557 (= lambda!273701 lambda!273584)))

(declare-fun bs!1238558 () Bool)

(assert (= bs!1238558 (and b!5340648 d!1713859)))

(assert (=> bs!1238558 (not (= lambda!273701 lambda!273696))))

(declare-fun bs!1238559 () Bool)

(assert (= bs!1238559 (and b!5340648 b!5339668)))

(assert (=> bs!1238559 (= (and (= (regOne!30542 r!7292) (regOne!30542 (regOne!30542 r!7292))) (= (regTwo!30542 r!7292) lt!2177299)) (= lambda!273701 lambda!273587))))

(declare-fun bs!1238560 () Bool)

(assert (= bs!1238560 (and b!5340648 d!1713721)))

(assert (=> bs!1238560 (not (= lambda!273701 lambda!273648))))

(declare-fun bs!1238561 () Bool)

(assert (= bs!1238561 (and b!5340648 d!1713825)))

(assert (=> bs!1238561 (not (= lambda!273701 lambda!273680))))

(assert (=> bs!1238559 (not (= lambda!273701 lambda!273588))))

(declare-fun bs!1238562 () Bool)

(assert (= bs!1238562 (and b!5340648 b!5340586)))

(assert (=> bs!1238562 (= (and (= (regOne!30542 r!7292) (regOne!30542 lt!2177300)) (= (regTwo!30542 r!7292) (regTwo!30542 lt!2177300))) (= lambda!273701 lambda!273695))))

(declare-fun bs!1238563 () Bool)

(assert (= bs!1238563 (and b!5340648 d!1713801)))

(assert (=> bs!1238563 (= (and (= (regOne!30542 r!7292) (regTwo!30542 (regOne!30542 r!7292))) (= (regTwo!30542 r!7292) lt!2177284)) (= lambda!273701 lambda!273672))))

(declare-fun bs!1238564 () Bool)

(assert (= bs!1238564 (and b!5340648 d!1713809)))

(assert (=> bs!1238564 (not (= lambda!273701 lambda!273676))))

(assert (=> bs!1238558 (= (and (= (regOne!30542 r!7292) (regOne!30542 (regOne!30542 r!7292))) (= (regTwo!30542 r!7292) lt!2177299)) (= lambda!273701 lambda!273697))))

(assert (=> bs!1238560 (= lambda!273701 lambda!273649)))

(declare-fun bs!1238565 () Bool)

(assert (= bs!1238565 (and b!5340648 b!5340579)))

(assert (=> bs!1238565 (not (= lambda!273701 lambda!273692))))

(assert (=> bs!1238559 (= (and (= (regOne!30542 r!7292) (regTwo!30542 (regOne!30542 r!7292))) (= (regTwo!30542 r!7292) lt!2177284)) (= lambda!273701 lambda!273589))))

(assert (=> bs!1238559 (not (= lambda!273701 lambda!273586))))

(declare-fun bs!1238566 () Bool)

(assert (= bs!1238566 (and b!5340648 b!5340652)))

(assert (=> bs!1238566 (not (= lambda!273701 lambda!273700))))

(assert (=> bs!1238557 (not (= lambda!273701 lambda!273583))))

(declare-fun bs!1238567 () Bool)

(assert (= bs!1238567 (and b!5340648 d!1713705)))

(assert (=> bs!1238567 (not (= lambda!273701 lambda!273641))))

(declare-fun bs!1238568 () Bool)

(assert (= bs!1238568 (and b!5340648 b!5340590)))

(assert (=> bs!1238568 (not (= lambda!273701 lambda!273694))))

(assert (=> bs!1238563 (not (= lambda!273701 lambda!273671))))

(declare-fun bs!1238569 () Bool)

(assert (= bs!1238569 (and b!5340648 b!5340575)))

(assert (=> bs!1238569 (= (and (= (regOne!30542 r!7292) (regOne!30542 lt!2177299)) (= (regTwo!30542 r!7292) (regTwo!30542 lt!2177299))) (= lambda!273701 lambda!273693))))

(assert (=> b!5340648 true))

(assert (=> b!5340648 true))

(declare-fun b!5340646 () Bool)

(declare-fun c!929386 () Bool)

(assert (=> b!5340646 (= c!929386 ((_ is ElementMatch!15015) r!7292))))

(declare-fun e!3316307 () Bool)

(declare-fun e!3316312 () Bool)

(assert (=> b!5340646 (= e!3316307 e!3316312)))

(declare-fun d!1713887 () Bool)

(declare-fun c!929389 () Bool)

(assert (=> d!1713887 (= c!929389 ((_ is EmptyExpr!15015) r!7292))))

(declare-fun e!3316310 () Bool)

(assert (=> d!1713887 (= (matchRSpec!2118 r!7292 s!2326) e!3316310)))

(declare-fun b!5340647 () Bool)

(declare-fun e!3316308 () Bool)

(declare-fun e!3316313 () Bool)

(assert (=> b!5340647 (= e!3316308 e!3316313)))

(declare-fun res!2265356 () Bool)

(assert (=> b!5340647 (= res!2265356 (matchRSpec!2118 (regOne!30543 r!7292) s!2326))))

(assert (=> b!5340647 (=> res!2265356 e!3316313)))

(declare-fun e!3316311 () Bool)

(declare-fun call!381813 () Bool)

(assert (=> b!5340648 (= e!3316311 call!381813)))

(declare-fun b!5340649 () Bool)

(declare-fun c!929388 () Bool)

(assert (=> b!5340649 (= c!929388 ((_ is Union!15015) r!7292))))

(assert (=> b!5340649 (= e!3316312 e!3316308)))

(declare-fun b!5340650 () Bool)

(assert (=> b!5340650 (= e!3316310 e!3316307)))

(declare-fun res!2265355 () Bool)

(assert (=> b!5340650 (= res!2265355 (not ((_ is EmptyLang!15015) r!7292)))))

(assert (=> b!5340650 (=> (not res!2265355) (not e!3316307))))

(declare-fun c!929387 () Bool)

(declare-fun bm!381807 () Bool)

(assert (=> bm!381807 (= call!381813 (Exists!2196 (ite c!929387 lambda!273700 lambda!273701)))))

(declare-fun b!5340651 () Bool)

(declare-fun call!381812 () Bool)

(assert (=> b!5340651 (= e!3316310 call!381812)))

(declare-fun e!3316309 () Bool)

(assert (=> b!5340652 (= e!3316309 call!381813)))

(declare-fun b!5340653 () Bool)

(assert (=> b!5340653 (= e!3316313 (matchRSpec!2118 (regTwo!30543 r!7292) s!2326))))

(declare-fun b!5340654 () Bool)

(declare-fun res!2265354 () Bool)

(assert (=> b!5340654 (=> res!2265354 e!3316309)))

(assert (=> b!5340654 (= res!2265354 call!381812)))

(assert (=> b!5340654 (= e!3316311 e!3316309)))

(declare-fun b!5340655 () Bool)

(assert (=> b!5340655 (= e!3316312 (= s!2326 (Cons!61222 (c!929081 r!7292) Nil!61222)))))

(declare-fun bm!381808 () Bool)

(assert (=> bm!381808 (= call!381812 (isEmpty!33200 s!2326))))

(declare-fun b!5340656 () Bool)

(assert (=> b!5340656 (= e!3316308 e!3316311)))

(assert (=> b!5340656 (= c!929387 ((_ is Star!15015) r!7292))))

(assert (= (and d!1713887 c!929389) b!5340651))

(assert (= (and d!1713887 (not c!929389)) b!5340650))

(assert (= (and b!5340650 res!2265355) b!5340646))

(assert (= (and b!5340646 c!929386) b!5340655))

(assert (= (and b!5340646 (not c!929386)) b!5340649))

(assert (= (and b!5340649 c!929388) b!5340647))

(assert (= (and b!5340649 (not c!929388)) b!5340656))

(assert (= (and b!5340647 (not res!2265356)) b!5340653))

(assert (= (and b!5340656 c!929387) b!5340654))

(assert (= (and b!5340656 (not c!929387)) b!5340648))

(assert (= (and b!5340654 (not res!2265354)) b!5340652))

(assert (= (or b!5340652 b!5340648) bm!381807))

(assert (= (or b!5340651 b!5340654) bm!381808))

(declare-fun m!6373080 () Bool)

(assert (=> b!5340647 m!6373080))

(declare-fun m!6373082 () Bool)

(assert (=> bm!381807 m!6373082))

(declare-fun m!6373084 () Bool)

(assert (=> b!5340653 m!6373084))

(assert (=> bm!381808 m!6372884))

(assert (=> b!5339650 d!1713887))

(declare-fun b!5340657 () Bool)

(declare-fun e!3316317 () Bool)

(declare-fun e!3316318 () Bool)

(assert (=> b!5340657 (= e!3316317 e!3316318)))

(declare-fun res!2265362 () Bool)

(assert (=> b!5340657 (=> (not res!2265362) (not e!3316318))))

(declare-fun lt!2177488 () Bool)

(assert (=> b!5340657 (= res!2265362 (not lt!2177488))))

(declare-fun b!5340658 () Bool)

(declare-fun e!3316319 () Bool)

(assert (=> b!5340658 (= e!3316319 (= (head!11451 s!2326) (c!929081 r!7292)))))

(declare-fun b!5340659 () Bool)

(declare-fun e!3316315 () Bool)

(assert (=> b!5340659 (= e!3316315 (not (= (head!11451 s!2326) (c!929081 r!7292))))))

(declare-fun b!5340660 () Bool)

(assert (=> b!5340660 (= e!3316318 e!3316315)))

(declare-fun res!2265359 () Bool)

(assert (=> b!5340660 (=> res!2265359 e!3316315)))

(declare-fun call!381814 () Bool)

(assert (=> b!5340660 (= res!2265359 call!381814)))

(declare-fun d!1713889 () Bool)

(declare-fun e!3316314 () Bool)

(assert (=> d!1713889 e!3316314))

(declare-fun c!929391 () Bool)

(assert (=> d!1713889 (= c!929391 ((_ is EmptyExpr!15015) r!7292))))

(declare-fun e!3316320 () Bool)

(assert (=> d!1713889 (= lt!2177488 e!3316320)))

(declare-fun c!929390 () Bool)

(assert (=> d!1713889 (= c!929390 (isEmpty!33200 s!2326))))

(assert (=> d!1713889 (validRegex!6751 r!7292)))

(assert (=> d!1713889 (= (matchR!7200 r!7292 s!2326) lt!2177488)))

(declare-fun b!5340661 () Bool)

(declare-fun e!3316316 () Bool)

(assert (=> b!5340661 (= e!3316316 (not lt!2177488))))

(declare-fun b!5340662 () Bool)

(declare-fun res!2265361 () Bool)

(assert (=> b!5340662 (=> (not res!2265361) (not e!3316319))))

(assert (=> b!5340662 (= res!2265361 (not call!381814))))

(declare-fun b!5340663 () Bool)

(declare-fun res!2265364 () Bool)

(assert (=> b!5340663 (=> res!2265364 e!3316317)))

(assert (=> b!5340663 (= res!2265364 (not ((_ is ElementMatch!15015) r!7292)))))

(assert (=> b!5340663 (= e!3316316 e!3316317)))

(declare-fun b!5340664 () Bool)

(declare-fun res!2265358 () Bool)

(assert (=> b!5340664 (=> res!2265358 e!3316315)))

(assert (=> b!5340664 (= res!2265358 (not (isEmpty!33200 (tail!10548 s!2326))))))

(declare-fun b!5340665 () Bool)

(assert (=> b!5340665 (= e!3316320 (nullable!5184 r!7292))))

(declare-fun b!5340666 () Bool)

(assert (=> b!5340666 (= e!3316314 (= lt!2177488 call!381814))))

(declare-fun b!5340667 () Bool)

(declare-fun res!2265363 () Bool)

(assert (=> b!5340667 (=> res!2265363 e!3316317)))

(assert (=> b!5340667 (= res!2265363 e!3316319)))

(declare-fun res!2265360 () Bool)

(assert (=> b!5340667 (=> (not res!2265360) (not e!3316319))))

(assert (=> b!5340667 (= res!2265360 lt!2177488)))

(declare-fun bm!381809 () Bool)

(assert (=> bm!381809 (= call!381814 (isEmpty!33200 s!2326))))

(declare-fun b!5340668 () Bool)

(declare-fun res!2265357 () Bool)

(assert (=> b!5340668 (=> (not res!2265357) (not e!3316319))))

(assert (=> b!5340668 (= res!2265357 (isEmpty!33200 (tail!10548 s!2326)))))

(declare-fun b!5340669 () Bool)

(assert (=> b!5340669 (= e!3316314 e!3316316)))

(declare-fun c!929392 () Bool)

(assert (=> b!5340669 (= c!929392 ((_ is EmptyLang!15015) r!7292))))

(declare-fun b!5340670 () Bool)

(assert (=> b!5340670 (= e!3316320 (matchR!7200 (derivativeStep!4187 r!7292 (head!11451 s!2326)) (tail!10548 s!2326)))))

(assert (= (and d!1713889 c!929390) b!5340665))

(assert (= (and d!1713889 (not c!929390)) b!5340670))

(assert (= (and d!1713889 c!929391) b!5340666))

(assert (= (and d!1713889 (not c!929391)) b!5340669))

(assert (= (and b!5340669 c!929392) b!5340661))

(assert (= (and b!5340669 (not c!929392)) b!5340663))

(assert (= (and b!5340663 (not res!2265364)) b!5340667))

(assert (= (and b!5340667 res!2265360) b!5340662))

(assert (= (and b!5340662 res!2265361) b!5340668))

(assert (= (and b!5340668 res!2265357) b!5340658))

(assert (= (and b!5340667 (not res!2265363)) b!5340657))

(assert (= (and b!5340657 res!2265362) b!5340660))

(assert (= (and b!5340660 (not res!2265359)) b!5340664))

(assert (= (and b!5340664 (not res!2265358)) b!5340659))

(assert (= (or b!5340666 b!5340660 b!5340662) bm!381809))

(assert (=> bm!381809 m!6372884))

(assert (=> b!5340658 m!6372892))

(assert (=> b!5340668 m!6372896))

(assert (=> b!5340668 m!6372896))

(assert (=> b!5340668 m!6372948))

(declare-fun m!6373086 () Bool)

(assert (=> b!5340665 m!6373086))

(assert (=> b!5340664 m!6372896))

(assert (=> b!5340664 m!6372896))

(assert (=> b!5340664 m!6372948))

(assert (=> d!1713889 m!6372884))

(assert (=> d!1713889 m!6372108))

(assert (=> b!5340659 m!6372892))

(assert (=> b!5340670 m!6372892))

(assert (=> b!5340670 m!6372892))

(declare-fun m!6373088 () Bool)

(assert (=> b!5340670 m!6373088))

(assert (=> b!5340670 m!6372896))

(assert (=> b!5340670 m!6373088))

(assert (=> b!5340670 m!6372896))

(declare-fun m!6373090 () Bool)

(assert (=> b!5340670 m!6373090))

(assert (=> b!5339650 d!1713889))

(declare-fun d!1713891 () Bool)

(assert (=> d!1713891 (= (matchR!7200 r!7292 s!2326) (matchRSpec!2118 r!7292 s!2326))))

(declare-fun lt!2177489 () Unit!153578)

(assert (=> d!1713891 (= lt!2177489 (choose!40031 r!7292 s!2326))))

(assert (=> d!1713891 (validRegex!6751 r!7292)))

(assert (=> d!1713891 (= (mainMatchTheorem!2118 r!7292 s!2326) lt!2177489)))

(declare-fun bs!1238570 () Bool)

(assert (= bs!1238570 d!1713891))

(assert (=> bs!1238570 m!6372092))

(assert (=> bs!1238570 m!6372090))

(declare-fun m!6373092 () Bool)

(assert (=> bs!1238570 m!6373092))

(assert (=> bs!1238570 m!6372108))

(assert (=> b!5339650 d!1713891))

(declare-fun d!1713893 () Bool)

(declare-fun c!929393 () Bool)

(assert (=> d!1713893 (= c!929393 (isEmpty!33200 (t!374563 s!2326)))))

(declare-fun e!3316321 () Bool)

(assert (=> d!1713893 (= (matchZipper!1259 lt!2177295 (t!374563 s!2326)) e!3316321)))

(declare-fun b!5340671 () Bool)

(assert (=> b!5340671 (= e!3316321 (nullableZipper!1366 lt!2177295))))

(declare-fun b!5340672 () Bool)

(assert (=> b!5340672 (= e!3316321 (matchZipper!1259 (derivationStepZipper!1256 lt!2177295 (head!11451 (t!374563 s!2326))) (tail!10548 (t!374563 s!2326))))))

(assert (= (and d!1713893 c!929393) b!5340671))

(assert (= (and d!1713893 (not c!929393)) b!5340672))

(assert (=> d!1713893 m!6373056))

(declare-fun m!6373094 () Bool)

(assert (=> b!5340671 m!6373094))

(assert (=> b!5340672 m!6373060))

(assert (=> b!5340672 m!6373060))

(declare-fun m!6373096 () Bool)

(assert (=> b!5340672 m!6373096))

(assert (=> b!5340672 m!6373064))

(assert (=> b!5340672 m!6373096))

(assert (=> b!5340672 m!6373064))

(declare-fun m!6373098 () Bool)

(assert (=> b!5340672 m!6373098))

(assert (=> b!5339672 d!1713893))

(declare-fun d!1713895 () Bool)

(declare-fun e!3316324 () Bool)

(assert (=> d!1713895 (= (matchZipper!1259 ((_ map or) lt!2177283 lt!2177295) (t!374563 s!2326)) e!3316324)))

(declare-fun res!2265367 () Bool)

(assert (=> d!1713895 (=> res!2265367 e!3316324)))

(assert (=> d!1713895 (= res!2265367 (matchZipper!1259 lt!2177283 (t!374563 s!2326)))))

(declare-fun lt!2177492 () Unit!153578)

(declare-fun choose!40037 ((InoxSet Context!8798) (InoxSet Context!8798) List!61346) Unit!153578)

(assert (=> d!1713895 (= lt!2177492 (choose!40037 lt!2177283 lt!2177295 (t!374563 s!2326)))))

(assert (=> d!1713895 (= (lemmaZipperConcatMatchesSameAsBothZippers!252 lt!2177283 lt!2177295 (t!374563 s!2326)) lt!2177492)))

(declare-fun b!5340675 () Bool)

(assert (=> b!5340675 (= e!3316324 (matchZipper!1259 lt!2177295 (t!374563 s!2326)))))

(assert (= (and d!1713895 (not res!2265367)) b!5340675))

(assert (=> d!1713895 m!6372206))

(assert (=> d!1713895 m!6372082))

(declare-fun m!6373100 () Bool)

(assert (=> d!1713895 m!6373100))

(assert (=> b!5340675 m!6372078))

(assert (=> b!5339651 d!1713895))

(assert (=> b!5339651 d!1713885))

(declare-fun d!1713897 () Bool)

(declare-fun c!929394 () Bool)

(assert (=> d!1713897 (= c!929394 (isEmpty!33200 (t!374563 s!2326)))))

(declare-fun e!3316325 () Bool)

(assert (=> d!1713897 (= (matchZipper!1259 ((_ map or) lt!2177283 lt!2177295) (t!374563 s!2326)) e!3316325)))

(declare-fun b!5340676 () Bool)

(assert (=> b!5340676 (= e!3316325 (nullableZipper!1366 ((_ map or) lt!2177283 lt!2177295)))))

(declare-fun b!5340677 () Bool)

(assert (=> b!5340677 (= e!3316325 (matchZipper!1259 (derivationStepZipper!1256 ((_ map or) lt!2177283 lt!2177295) (head!11451 (t!374563 s!2326))) (tail!10548 (t!374563 s!2326))))))

(assert (= (and d!1713897 c!929394) b!5340676))

(assert (= (and d!1713897 (not c!929394)) b!5340677))

(assert (=> d!1713897 m!6373056))

(declare-fun m!6373102 () Bool)

(assert (=> b!5340676 m!6373102))

(assert (=> b!5340677 m!6373060))

(assert (=> b!5340677 m!6373060))

(declare-fun m!6373104 () Bool)

(assert (=> b!5340677 m!6373104))

(assert (=> b!5340677 m!6373064))

(assert (=> b!5340677 m!6373104))

(assert (=> b!5340677 m!6373064))

(declare-fun m!6373106 () Bool)

(assert (=> b!5340677 m!6373106))

(assert (=> b!5339651 d!1713897))

(declare-fun d!1713899 () Bool)

(declare-fun lt!2177495 () Int)

(assert (=> d!1713899 (>= lt!2177495 0)))

(declare-fun e!3316328 () Int)

(assert (=> d!1713899 (= lt!2177495 e!3316328)))

(declare-fun c!929398 () Bool)

(assert (=> d!1713899 (= c!929398 ((_ is Cons!61220) (exprs!4899 lt!2177308)))))

(assert (=> d!1713899 (= (contextDepthTotal!148 lt!2177308) lt!2177495)))

(declare-fun b!5340682 () Bool)

(declare-fun regexDepthTotal!71 (Regex!15015) Int)

(assert (=> b!5340682 (= e!3316328 (+ (regexDepthTotal!71 (h!67668 (exprs!4899 lt!2177308))) (contextDepthTotal!148 (Context!8799 (t!374561 (exprs!4899 lt!2177308))))))))

(declare-fun b!5340683 () Bool)

(assert (=> b!5340683 (= e!3316328 1)))

(assert (= (and d!1713899 c!929398) b!5340682))

(assert (= (and d!1713899 (not c!929398)) b!5340683))

(declare-fun m!6373108 () Bool)

(assert (=> b!5340682 m!6373108))

(declare-fun m!6373110 () Bool)

(assert (=> b!5340682 m!6373110))

(assert (=> b!5339673 d!1713899))

(declare-fun d!1713901 () Bool)

(declare-fun lt!2177496 () Int)

(assert (=> d!1713901 (>= lt!2177496 0)))

(declare-fun e!3316329 () Int)

(assert (=> d!1713901 (= lt!2177496 e!3316329)))

(declare-fun c!929399 () Bool)

(assert (=> d!1713901 (= c!929399 ((_ is Cons!61220) (exprs!4899 (h!67669 zl!343))))))

(assert (=> d!1713901 (= (contextDepthTotal!148 (h!67669 zl!343)) lt!2177496)))

(declare-fun b!5340684 () Bool)

(assert (=> b!5340684 (= e!3316329 (+ (regexDepthTotal!71 (h!67668 (exprs!4899 (h!67669 zl!343)))) (contextDepthTotal!148 (Context!8799 (t!374561 (exprs!4899 (h!67669 zl!343)))))))))

(declare-fun b!5340685 () Bool)

(assert (=> b!5340685 (= e!3316329 1)))

(assert (= (and d!1713901 c!929399) b!5340684))

(assert (= (and d!1713901 (not c!929399)) b!5340685))

(declare-fun m!6373112 () Bool)

(assert (=> b!5340684 m!6373112))

(declare-fun m!6373114 () Bool)

(assert (=> b!5340684 m!6373114))

(assert (=> b!5339673 d!1713901))

(declare-fun b!5340693 () Bool)

(declare-fun e!3316335 () Bool)

(declare-fun tp!1484932 () Bool)

(assert (=> b!5340693 (= e!3316335 tp!1484932)))

(declare-fun tp!1484933 () Bool)

(declare-fun e!3316334 () Bool)

(declare-fun b!5340692 () Bool)

(assert (=> b!5340692 (= e!3316334 (and (inv!80784 (h!67669 (t!374562 zl!343))) e!3316335 tp!1484933))))

(assert (=> b!5339674 (= tp!1484860 e!3316334)))

(assert (= b!5340692 b!5340693))

(assert (= (and b!5339674 ((_ is Cons!61221) (t!374562 zl!343))) b!5340692))

(declare-fun m!6373116 () Bool)

(assert (=> b!5340692 m!6373116))

(declare-fun b!5340705 () Bool)

(declare-fun e!3316338 () Bool)

(declare-fun tp!1484948 () Bool)

(declare-fun tp!1484946 () Bool)

(assert (=> b!5340705 (= e!3316338 (and tp!1484948 tp!1484946))))

(declare-fun b!5340706 () Bool)

(declare-fun tp!1484944 () Bool)

(assert (=> b!5340706 (= e!3316338 tp!1484944)))

(declare-fun b!5340704 () Bool)

(assert (=> b!5340704 (= e!3316338 tp_is_empty!39283)))

(assert (=> b!5339641 (= tp!1484861 e!3316338)))

(declare-fun b!5340707 () Bool)

(declare-fun tp!1484945 () Bool)

(declare-fun tp!1484947 () Bool)

(assert (=> b!5340707 (= e!3316338 (and tp!1484945 tp!1484947))))

(assert (= (and b!5339641 ((_ is ElementMatch!15015) (reg!15344 r!7292))) b!5340704))

(assert (= (and b!5339641 ((_ is Concat!23860) (reg!15344 r!7292))) b!5340705))

(assert (= (and b!5339641 ((_ is Star!15015) (reg!15344 r!7292))) b!5340706))

(assert (= (and b!5339641 ((_ is Union!15015) (reg!15344 r!7292))) b!5340707))

(declare-fun b!5340712 () Bool)

(declare-fun e!3316341 () Bool)

(declare-fun tp!1484953 () Bool)

(declare-fun tp!1484954 () Bool)

(assert (=> b!5340712 (= e!3316341 (and tp!1484953 tp!1484954))))

(assert (=> b!5339640 (= tp!1484865 e!3316341)))

(assert (= (and b!5339640 ((_ is Cons!61220) (exprs!4899 (h!67669 zl!343)))) b!5340712))

(declare-fun b!5340714 () Bool)

(declare-fun e!3316342 () Bool)

(declare-fun tp!1484959 () Bool)

(declare-fun tp!1484957 () Bool)

(assert (=> b!5340714 (= e!3316342 (and tp!1484959 tp!1484957))))

(declare-fun b!5340715 () Bool)

(declare-fun tp!1484955 () Bool)

(assert (=> b!5340715 (= e!3316342 tp!1484955)))

(declare-fun b!5340713 () Bool)

(assert (=> b!5340713 (= e!3316342 tp_is_empty!39283)))

(assert (=> b!5339670 (= tp!1484866 e!3316342)))

(declare-fun b!5340716 () Bool)

(declare-fun tp!1484956 () Bool)

(declare-fun tp!1484958 () Bool)

(assert (=> b!5340716 (= e!3316342 (and tp!1484956 tp!1484958))))

(assert (= (and b!5339670 ((_ is ElementMatch!15015) (regOne!30543 r!7292))) b!5340713))

(assert (= (and b!5339670 ((_ is Concat!23860) (regOne!30543 r!7292))) b!5340714))

(assert (= (and b!5339670 ((_ is Star!15015) (regOne!30543 r!7292))) b!5340715))

(assert (= (and b!5339670 ((_ is Union!15015) (regOne!30543 r!7292))) b!5340716))

(declare-fun b!5340718 () Bool)

(declare-fun e!3316343 () Bool)

(declare-fun tp!1484964 () Bool)

(declare-fun tp!1484962 () Bool)

(assert (=> b!5340718 (= e!3316343 (and tp!1484964 tp!1484962))))

(declare-fun b!5340719 () Bool)

(declare-fun tp!1484960 () Bool)

(assert (=> b!5340719 (= e!3316343 tp!1484960)))

(declare-fun b!5340717 () Bool)

(assert (=> b!5340717 (= e!3316343 tp_is_empty!39283)))

(assert (=> b!5339670 (= tp!1484869 e!3316343)))

(declare-fun b!5340720 () Bool)

(declare-fun tp!1484961 () Bool)

(declare-fun tp!1484963 () Bool)

(assert (=> b!5340720 (= e!3316343 (and tp!1484961 tp!1484963))))

(assert (= (and b!5339670 ((_ is ElementMatch!15015) (regTwo!30543 r!7292))) b!5340717))

(assert (= (and b!5339670 ((_ is Concat!23860) (regTwo!30543 r!7292))) b!5340718))

(assert (= (and b!5339670 ((_ is Star!15015) (regTwo!30543 r!7292))) b!5340719))

(assert (= (and b!5339670 ((_ is Union!15015) (regTwo!30543 r!7292))) b!5340720))

(declare-fun b!5340721 () Bool)

(declare-fun e!3316344 () Bool)

(declare-fun tp!1484965 () Bool)

(declare-fun tp!1484966 () Bool)

(assert (=> b!5340721 (= e!3316344 (and tp!1484965 tp!1484966))))

(assert (=> b!5339652 (= tp!1484867 e!3316344)))

(assert (= (and b!5339652 ((_ is Cons!61220) (exprs!4899 setElem!34453))) b!5340721))

(declare-fun b!5340726 () Bool)

(declare-fun e!3316347 () Bool)

(declare-fun tp!1484969 () Bool)

(assert (=> b!5340726 (= e!3316347 (and tp_is_empty!39283 tp!1484969))))

(assert (=> b!5339667 (= tp!1484868 e!3316347)))

(assert (= (and b!5339667 ((_ is Cons!61222) (t!374563 s!2326))) b!5340726))

(declare-fun b!5340728 () Bool)

(declare-fun e!3316348 () Bool)

(declare-fun tp!1484974 () Bool)

(declare-fun tp!1484972 () Bool)

(assert (=> b!5340728 (= e!3316348 (and tp!1484974 tp!1484972))))

(declare-fun b!5340729 () Bool)

(declare-fun tp!1484970 () Bool)

(assert (=> b!5340729 (= e!3316348 tp!1484970)))

(declare-fun b!5340727 () Bool)

(assert (=> b!5340727 (= e!3316348 tp_is_empty!39283)))

(assert (=> b!5339642 (= tp!1484863 e!3316348)))

(declare-fun b!5340730 () Bool)

(declare-fun tp!1484971 () Bool)

(declare-fun tp!1484973 () Bool)

(assert (=> b!5340730 (= e!3316348 (and tp!1484971 tp!1484973))))

(assert (= (and b!5339642 ((_ is ElementMatch!15015) (regOne!30542 r!7292))) b!5340727))

(assert (= (and b!5339642 ((_ is Concat!23860) (regOne!30542 r!7292))) b!5340728))

(assert (= (and b!5339642 ((_ is Star!15015) (regOne!30542 r!7292))) b!5340729))

(assert (= (and b!5339642 ((_ is Union!15015) (regOne!30542 r!7292))) b!5340730))

(declare-fun b!5340732 () Bool)

(declare-fun e!3316349 () Bool)

(declare-fun tp!1484979 () Bool)

(declare-fun tp!1484977 () Bool)

(assert (=> b!5340732 (= e!3316349 (and tp!1484979 tp!1484977))))

(declare-fun b!5340733 () Bool)

(declare-fun tp!1484975 () Bool)

(assert (=> b!5340733 (= e!3316349 tp!1484975)))

(declare-fun b!5340731 () Bool)

(assert (=> b!5340731 (= e!3316349 tp_is_empty!39283)))

(assert (=> b!5339642 (= tp!1484864 e!3316349)))

(declare-fun b!5340734 () Bool)

(declare-fun tp!1484976 () Bool)

(declare-fun tp!1484978 () Bool)

(assert (=> b!5340734 (= e!3316349 (and tp!1484976 tp!1484978))))

(assert (= (and b!5339642 ((_ is ElementMatch!15015) (regTwo!30542 r!7292))) b!5340731))

(assert (= (and b!5339642 ((_ is Concat!23860) (regTwo!30542 r!7292))) b!5340732))

(assert (= (and b!5339642 ((_ is Star!15015) (regTwo!30542 r!7292))) b!5340733))

(assert (= (and b!5339642 ((_ is Union!15015) (regTwo!30542 r!7292))) b!5340734))

(declare-fun condSetEmpty!34459 () Bool)

(assert (=> setNonEmpty!34453 (= condSetEmpty!34459 (= setRest!34453 ((as const (Array Context!8798 Bool)) false)))))

(declare-fun setRes!34459 () Bool)

(assert (=> setNonEmpty!34453 (= tp!1484862 setRes!34459)))

(declare-fun setIsEmpty!34459 () Bool)

(assert (=> setIsEmpty!34459 setRes!34459))

(declare-fun e!3316352 () Bool)

(declare-fun setNonEmpty!34459 () Bool)

(declare-fun setElem!34459 () Context!8798)

(declare-fun tp!1484984 () Bool)

(assert (=> setNonEmpty!34459 (= setRes!34459 (and tp!1484984 (inv!80784 setElem!34459) e!3316352))))

(declare-fun setRest!34459 () (InoxSet Context!8798))

(assert (=> setNonEmpty!34459 (= setRest!34453 ((_ map or) (store ((as const (Array Context!8798 Bool)) false) setElem!34459 true) setRest!34459))))

(declare-fun b!5340739 () Bool)

(declare-fun tp!1484985 () Bool)

(assert (=> b!5340739 (= e!3316352 tp!1484985)))

(assert (= (and setNonEmpty!34453 condSetEmpty!34459) setIsEmpty!34459))

(assert (= (and setNonEmpty!34453 (not condSetEmpty!34459)) setNonEmpty!34459))

(assert (= setNonEmpty!34459 b!5340739))

(declare-fun m!6373118 () Bool)

(assert (=> setNonEmpty!34459 m!6373118))

(declare-fun b_lambda!205201 () Bool)

(assert (= b_lambda!205191 (or b!5339644 b_lambda!205201)))

(declare-fun bs!1238571 () Bool)

(declare-fun d!1713903 () Bool)

(assert (= bs!1238571 (and d!1713903 b!5339644)))

(assert (=> bs!1238571 (= (dynLambda!24208 lambda!273585 (h!67669 zl!343)) (derivationStepZipperUp!387 (h!67669 zl!343) (h!67670 s!2326)))))

(assert (=> bs!1238571 m!6372116))

(assert (=> d!1713757 d!1713903))

(declare-fun b_lambda!205203 () Bool)

(assert (= b_lambda!205193 (or b!5339644 b_lambda!205203)))

(declare-fun bs!1238572 () Bool)

(declare-fun d!1713905 () Bool)

(assert (= bs!1238572 (and d!1713905 b!5339644)))

(assert (=> bs!1238572 (= (dynLambda!24208 lambda!273585 lt!2177308) (derivationStepZipperUp!387 lt!2177308 (h!67670 s!2326)))))

(assert (=> bs!1238572 m!6372074))

(assert (=> d!1713771 d!1713905))

(check-sat (not d!1713809) (not b!5339851) (not b!5340712) (not b!5340675) (not b!5340277) (not b!5339997) (not bm!381797) (not b!5340730) (not setNonEmpty!34459) (not d!1713869) (not b!5340574) (not b!5340600) (not b!5340591) (not b!5339906) (not bm!381763) (not b!5339941) (not b!5340607) (not d!1713615) (not bm!381778) (not b!5339919) (not b!5339996) (not b!5340610) (not b!5340410) (not b!5340320) (not b!5340677) (not d!1713767) (not b!5340645) (not d!1713701) (not d!1713863) (not b!5340705) (not b!5340647) (not d!1713631) (not d!1713897) (not b!5340719) (not b!5340682) (not b!5340676) (not b!5340236) (not b!5340416) (not b!5340317) (not b!5340614) (not d!1713705) (not b!5339992) (not b!5340611) (not b!5340115) (not b!5339940) (not b!5340112) (not b!5340247) (not b!5340411) (not d!1713655) (not d!1713735) (not d!1713623) (not d!1713807) (not d!1713811) (not b!5340726) (not b!5340599) (not b!5340352) (not b!5340739) (not d!1713743) (not b!5340628) (not bm!381734) (not b!5340664) (not b!5339849) (not b!5340612) (not d!1713879) (not b!5340653) (not d!1713893) (not d!1713865) (not b!5339852) (not b!5340659) (not b!5340597) (not b!5340490) (not b!5339993) (not bm!381765) (not b!5340494) (not b!5340640) (not bm!381706) (not b!5340729) (not b!5340580) (not d!1713885) (not bm!381803) (not b!5340417) (not bm!381784) (not d!1713679) (not b!5340716) (not b!5340617) (not b!5340116) (not b!5340329) (not b!5340349) (not b!5340684) (not b!5340721) (not b!5340732) (not bm!381770) (not b!5340714) (not d!1713849) (not b!5340728) (not b!5340629) (not b!5340644) (not b!5340670) (not d!1713859) (not b!5340598) (not b!5340113) (not b!5340118) (not bm!381809) (not d!1713867) (not d!1713765) (not bs!1238571) (not b!5339853) (not b!5340348) (not b!5340601) (not b!5340641) (not bm!381761) (not bm!381736) (not d!1713861) (not bm!381703) (not bm!381733) (not d!1713827) (not b!5339994) (not b!5340658) (not d!1713821) (not b!5340642) (not bm!381807) (not b!5339999) (not b!5339848) (not d!1713877) (not b!5340643) (not b!5340484) (not b!5340715) (not bm!381737) (not bm!381785) (not b!5340413) (not b!5339850) (not bs!1238572) (not d!1713773) (not b!5340616) (not d!1713643) (not b!5340485) (not b!5340346) (not b!5340315) (not b_lambda!205201) (not d!1713875) (not b!5340491) (not d!1713749) (not b!5340733) (not bm!381768) (not b!5340631) (not b!5340006) (not b!5340707) (not bm!381808) (not b!5339917) (not b!5340668) (not b!5340608) (not b!5340665) (not b!5340634) (not bm!381769) (not b!5340231) (not b!5340693) (not d!1713883) (not b!5339742) (not b!5340585) (not d!1713689) (not bm!381802) (not b!5340734) (not b!5340622) (not b_lambda!205203) (not b!5340626) (not b!5340632) (not b!5340630) (not b!5340609) (not b!5340220) (not b!5340672) (not b!5340604) (not bm!381806) (not b!5340718) (not b!5340278) (not b!5339845) (not d!1713825) (not b!5339872) (not d!1713829) (not d!1713873) (not d!1713881) (not d!1713801) (not d!1713889) (not d!1713895) (not d!1713871) (not b!5340636) (not bm!381805) (not b!5340602) (not b!5340623) (not b!5340117) (not b!5340345) (not d!1713833) (not b!5340246) (not b!5340350) (not b!5340412) (not b!5340720) (not b!5340635) (not b!5340418) (not d!1713663) (not d!1713703) (not b!5340347) (not b!5340706) (not b!5340230) (not d!1713697) (not b!5339995) (not b!5340322) (not d!1713721) (not b!5340637) (not b!5340496) (not d!1713757) (not bm!381804) (not b!5340692) (not d!1713835) tp_is_empty!39283 (not b!5340273) (not d!1713891) (not b!5340415) (not b!5340671) (not d!1713771) (not bm!381707) (not b!5340221))
(check-sat)
